; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!301286 () Bool)

(assert start!301286)

(declare-fun b!3209139 () Bool)

(declare-fun b_free!85401 () Bool)

(declare-fun b_next!86105 () Bool)

(assert (=> b!3209139 (= b_free!85401 (not b_next!86105))))

(declare-fun tp!1013246 () Bool)

(declare-fun b_and!213711 () Bool)

(assert (=> b!3209139 (= tp!1013246 b_and!213711)))

(declare-fun b_free!85403 () Bool)

(declare-fun b_next!86107 () Bool)

(assert (=> b!3209139 (= b_free!85403 (not b_next!86107))))

(declare-fun tp!1013245 () Bool)

(declare-fun b_and!213713 () Bool)

(assert (=> b!3209139 (= tp!1013245 b_and!213713)))

(declare-fun b!3209120 () Bool)

(declare-fun b_free!85405 () Bool)

(declare-fun b_next!86109 () Bool)

(assert (=> b!3209120 (= b_free!85405 (not b_next!86109))))

(declare-fun tp!1013247 () Bool)

(declare-fun b_and!213715 () Bool)

(assert (=> b!3209120 (= tp!1013247 b_and!213715)))

(declare-fun b_free!85407 () Bool)

(declare-fun b_next!86111 () Bool)

(assert (=> b!3209120 (= b_free!85407 (not b_next!86111))))

(declare-fun tp!1013243 () Bool)

(declare-fun b_and!213717 () Bool)

(assert (=> b!3209120 (= tp!1013243 b_and!213717)))

(declare-fun b!3209140 () Bool)

(declare-fun b_free!85409 () Bool)

(declare-fun b_next!86113 () Bool)

(assert (=> b!3209140 (= b_free!85409 (not b_next!86113))))

(declare-fun tp!1013249 () Bool)

(declare-fun b_and!213719 () Bool)

(assert (=> b!3209140 (= tp!1013249 b_and!213719)))

(declare-fun b_free!85411 () Bool)

(declare-fun b_next!86115 () Bool)

(assert (=> b!3209140 (= b_free!85411 (not b_next!86115))))

(declare-fun tp!1013240 () Bool)

(declare-fun b_and!213721 () Bool)

(assert (=> b!3209140 (= tp!1013240 b_and!213721)))

(declare-fun bs!541521 () Bool)

(declare-fun b!3209121 () Bool)

(declare-fun b!3209124 () Bool)

(assert (= bs!541521 (and b!3209121 b!3209124)))

(declare-fun lambda!117479 () Int)

(declare-fun lambda!117478 () Int)

(assert (=> bs!541521 (not (= lambda!117479 lambda!117478))))

(declare-fun b!3209168 () Bool)

(declare-fun e!2001116 () Bool)

(assert (=> b!3209168 (= e!2001116 true)))

(declare-fun b!3209167 () Bool)

(declare-fun e!2001115 () Bool)

(assert (=> b!3209167 (= e!2001115 e!2001116)))

(declare-fun b!3209166 () Bool)

(declare-fun e!2001114 () Bool)

(assert (=> b!3209166 (= e!2001114 e!2001115)))

(assert (=> b!3209121 e!2001114))

(assert (= b!3209167 b!3209168))

(assert (= b!3209166 b!3209167))

(declare-datatypes ((C!20152 0))(
  ( (C!20153 (val!12124 Int)) )
))
(declare-datatypes ((Regex!9983 0))(
  ( (ElementMatch!9983 (c!538930 C!20152)) (Concat!15437 (regOne!20478 Regex!9983) (regTwo!20478 Regex!9983)) (EmptyExpr!9983) (Star!9983 (reg!10312 Regex!9983)) (EmptyLang!9983) (Union!9983 (regOne!20479 Regex!9983) (regTwo!20479 Regex!9983)) )
))
(declare-datatypes ((List!36300 0))(
  ( (Nil!36176) (Cons!36176 (h!41596 (_ BitVec 16)) (t!238511 List!36300)) )
))
(declare-datatypes ((TokenValue!5454 0))(
  ( (FloatLiteralValue!10908 (text!38623 List!36300)) (TokenValueExt!5453 (__x!23125 Int)) (Broken!27270 (value!169318 List!36300)) (Object!5577) (End!5454) (Def!5454) (Underscore!5454) (Match!5454) (Else!5454) (Error!5454) (Case!5454) (If!5454) (Extends!5454) (Abstract!5454) (Class!5454) (Val!5454) (DelimiterValue!10908 (del!5514 List!36300)) (KeywordValue!5460 (value!169319 List!36300)) (CommentValue!10908 (value!169320 List!36300)) (WhitespaceValue!10908 (value!169321 List!36300)) (IndentationValue!5454 (value!169322 List!36300)) (String!40603) (Int32!5454) (Broken!27271 (value!169323 List!36300)) (Boolean!5455) (Unit!50641) (OperatorValue!5457 (op!5514 List!36300)) (IdentifierValue!10908 (value!169324 List!36300)) (IdentifierValue!10909 (value!169325 List!36300)) (WhitespaceValue!10909 (value!169326 List!36300)) (True!10908) (False!10908) (Broken!27272 (value!169327 List!36300)) (Broken!27273 (value!169328 List!36300)) (True!10909) (RightBrace!5454) (RightBracket!5454) (Colon!5454) (Null!5454) (Comma!5454) (LeftBracket!5454) (False!10909) (LeftBrace!5454) (ImaginaryLiteralValue!5454 (text!38624 List!36300)) (StringLiteralValue!16362 (value!169329 List!36300)) (EOFValue!5454 (value!169330 List!36300)) (IdentValue!5454 (value!169331 List!36300)) (DelimiterValue!10909 (value!169332 List!36300)) (DedentValue!5454 (value!169333 List!36300)) (NewLineValue!5454 (value!169334 List!36300)) (IntegerValue!16362 (value!169335 (_ BitVec 32)) (text!38625 List!36300)) (IntegerValue!16363 (value!169336 Int) (text!38626 List!36300)) (Times!5454) (Or!5454) (Equal!5454) (Minus!5454) (Broken!27274 (value!169337 List!36300)) (And!5454) (Div!5454) (LessEqual!5454) (Mod!5454) (Concat!15438) (Not!5454) (Plus!5454) (SpaceValue!5454 (value!169338 List!36300)) (IntegerValue!16364 (value!169339 Int) (text!38627 List!36300)) (StringLiteralValue!16363 (text!38628 List!36300)) (FloatLiteralValue!10909 (text!38629 List!36300)) (BytesLiteralValue!5454 (value!169340 List!36300)) (CommentValue!10909 (value!169341 List!36300)) (StringLiteralValue!16364 (value!169342 List!36300)) (ErrorTokenValue!5454 (msg!5515 List!36300)) )
))
(declare-datatypes ((List!36301 0))(
  ( (Nil!36177) (Cons!36177 (h!41597 C!20152) (t!238512 List!36301)) )
))
(declare-datatypes ((IArray!21651 0))(
  ( (IArray!21652 (innerList!10883 List!36301)) )
))
(declare-datatypes ((Conc!10823 0))(
  ( (Node!10823 (left!28133 Conc!10823) (right!28463 Conc!10823) (csize!21876 Int) (cheight!11034 Int)) (Leaf!17046 (xs!13941 IArray!21651) (csize!21877 Int)) (Empty!10823) )
))
(declare-datatypes ((BalanceConc!21260 0))(
  ( (BalanceConc!21261 (c!538931 Conc!10823)) )
))
(declare-datatypes ((String!40604 0))(
  ( (String!40605 (value!169343 String)) )
))
(declare-datatypes ((TokenValueInjection!10336 0))(
  ( (TokenValueInjection!10337 (toValue!7308 Int) (toChars!7167 Int)) )
))
(declare-datatypes ((Rule!10248 0))(
  ( (Rule!10249 (regex!5224 Regex!9983) (tag!5750 String!40604) (isSeparator!5224 Bool) (transformation!5224 TokenValueInjection!10336)) )
))
(declare-datatypes ((List!36302 0))(
  ( (Nil!36178) (Cons!36178 (h!41598 Rule!10248) (t!238513 List!36302)) )
))
(declare-fun rules!2135 () List!36302)

(get-info :version)

(assert (= (and b!3209121 ((_ is Cons!36178) rules!2135)) b!3209166))

(declare-fun order!18475 () Int)

(declare-fun order!18473 () Int)

(declare-fun dynLambda!14607 (Int Int) Int)

(declare-fun dynLambda!14608 (Int Int) Int)

(assert (=> b!3209168 (< (dynLambda!14607 order!18473 (toValue!7308 (transformation!5224 (h!41598 rules!2135)))) (dynLambda!14608 order!18475 lambda!117479))))

(declare-fun order!18477 () Int)

(declare-fun dynLambda!14609 (Int Int) Int)

(assert (=> b!3209168 (< (dynLambda!14609 order!18477 (toChars!7167 (transformation!5224 (h!41598 rules!2135)))) (dynLambda!14608 order!18475 lambda!117479))))

(assert (=> b!3209121 true))

(declare-fun b!3209118 () Bool)

(declare-datatypes ((Unit!50642 0))(
  ( (Unit!50643) )
))
(declare-fun e!2001090 () Unit!50642)

(declare-fun Unit!50644 () Unit!50642)

(assert (=> b!3209118 (= e!2001090 Unit!50644)))

(declare-fun b!3209119 () Bool)

(declare-fun Unit!50645 () Unit!50642)

(assert (=> b!3209119 (= e!2001090 Unit!50645)))

(declare-datatypes ((Token!9814 0))(
  ( (Token!9815 (value!169344 TokenValue!5454) (rule!7664 Rule!10248) (size!27259 Int) (originalCharacters!5938 List!36301)) )
))
(declare-fun separatorToken!241 () Token!9814)

(declare-fun lt!1084696 () List!36301)

(declare-fun lt!1084689 () Unit!50642)

(declare-fun lt!1084676 () C!20152)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!388 (Regex!9983 List!36301 C!20152) Unit!50642)

(assert (=> b!3209119 (= lt!1084689 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!388 (regex!5224 (rule!7664 separatorToken!241)) lt!1084696 lt!1084676))))

(declare-fun res!1306298 () Bool)

(declare-fun matchR!4617 (Regex!9983 List!36301) Bool)

(assert (=> b!3209119 (= res!1306298 (not (matchR!4617 (regex!5224 (rule!7664 separatorToken!241)) lt!1084696)))))

(declare-fun e!2001075 () Bool)

(assert (=> b!3209119 (=> (not res!1306298) (not e!2001075))))

(assert (=> b!3209119 e!2001075))

(declare-fun e!2001084 () Bool)

(assert (=> b!3209120 (= e!2001084 (and tp!1013247 tp!1013243))))

(declare-fun e!2001094 () Bool)

(declare-fun lt!1084664 () List!36301)

(assert (=> b!3209121 (= e!2001094 (not (= lt!1084664 Nil!36177)))))

(declare-fun lt!1084682 () List!36301)

(declare-datatypes ((List!36303 0))(
  ( (Nil!36179) (Cons!36179 (h!41599 Token!9814) (t!238514 List!36303)) )
))
(declare-fun tokens!494 () List!36303)

(declare-fun usedCharacters!540 (Regex!9983) List!36301)

(assert (=> b!3209121 (= lt!1084682 (usedCharacters!540 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))))

(declare-datatypes ((LexerInterface!4813 0))(
  ( (LexerInterfaceExt!4810 (__x!23126 Int)) (Lexer!4811) )
))
(declare-fun thiss!18206 () LexerInterface!4813)

(declare-datatypes ((tuple2!35574 0))(
  ( (tuple2!35575 (_1!20921 Token!9814) (_2!20921 List!36301)) )
))
(declare-datatypes ((Option!7147 0))(
  ( (None!7146) (Some!7146 (v!35696 tuple2!35574)) )
))
(declare-fun maxPrefixOneRule!1592 (LexerInterface!4813 Rule!10248 List!36301) Option!7147)

(declare-fun apply!8197 (TokenValueInjection!10336 BalanceConc!21260) TokenValue!5454)

(declare-fun seqFromList!3519 (List!36301) BalanceConc!21260)

(declare-fun size!27260 (List!36301) Int)

(assert (=> b!3209121 (= (maxPrefixOneRule!1592 thiss!18206 (rule!7664 (h!41599 (t!238514 tokens!494))) lt!1084664) (Some!7146 (tuple2!35575 (Token!9815 (apply!8197 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) (seqFromList!3519 lt!1084664)) (rule!7664 (h!41599 (t!238514 tokens!494))) (size!27260 lt!1084664) lt!1084664) Nil!36177)))))

(declare-fun lt!1084700 () Unit!50642)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!705 (LexerInterface!4813 List!36302 List!36301 List!36301 List!36301 Rule!10248) Unit!50642)

(assert (=> b!3209121 (= lt!1084700 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!705 thiss!18206 rules!2135 lt!1084664 lt!1084664 Nil!36177 (rule!7664 (h!41599 (t!238514 tokens!494)))))))

(declare-fun e!2001104 () Bool)

(assert (=> b!3209121 e!2001104))

(declare-fun res!1306285 () Bool)

(assert (=> b!3209121 (=> (not res!1306285) (not e!2001104))))

(declare-datatypes ((Option!7148 0))(
  ( (None!7147) (Some!7147 (v!35697 Rule!10248)) )
))
(declare-fun lt!1084671 () Option!7148)

(declare-fun isDefined!5554 (Option!7148) Bool)

(assert (=> b!3209121 (= res!1306285 (isDefined!5554 lt!1084671))))

(declare-fun getRuleFromTag!929 (LexerInterface!4813 List!36302 String!40604) Option!7148)

(assert (=> b!3209121 (= lt!1084671 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494))))))))

(declare-fun lt!1084681 () Unit!50642)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!929 (LexerInterface!4813 List!36302 List!36301 Token!9814) Unit!50642)

(assert (=> b!3209121 (= lt!1084681 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!929 thiss!18206 rules!2135 lt!1084664 (h!41599 (t!238514 tokens!494))))))

(declare-fun lt!1084697 () Bool)

(assert (=> b!3209121 lt!1084697))

(declare-fun lt!1084662 () Unit!50642)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!852 (LexerInterface!4813 List!36302 List!36303 Token!9814) Unit!50642)

(assert (=> b!3209121 (= lt!1084662 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!852 thiss!18206 rules!2135 tokens!494 (h!41599 (t!238514 tokens!494))))))

(declare-fun lt!1084686 () List!36301)

(declare-fun lt!1084663 () List!36301)

(declare-fun maxPrefix!2455 (LexerInterface!4813 List!36302 List!36301) Option!7147)

(assert (=> b!3209121 (= (maxPrefix!2455 thiss!18206 rules!2135 lt!1084663) (Some!7146 (tuple2!35575 (h!41599 tokens!494) lt!1084686)))))

(declare-fun lt!1084698 () Unit!50642)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!148 (LexerInterface!4813 List!36302 Token!9814 Rule!10248 List!36301 Rule!10248) Unit!50642)

(assert (=> b!3209121 (= lt!1084698 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!148 thiss!18206 rules!2135 (h!41599 tokens!494) (rule!7664 (h!41599 tokens!494)) lt!1084686 (rule!7664 separatorToken!241)))))

(declare-fun contains!6461 (List!36301 C!20152) Bool)

(assert (=> b!3209121 (not (contains!6461 (usedCharacters!540 (regex!5224 (rule!7664 (h!41599 tokens!494)))) lt!1084676))))

(declare-fun lt!1084693 () Unit!50642)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!148 (LexerInterface!4813 List!36302 List!36302 Rule!10248 Rule!10248 C!20152) Unit!50642)

(assert (=> b!3209121 (= lt!1084693 (lemmaNonSepRuleNotContainsCharContainedInASepRule!148 thiss!18206 rules!2135 rules!2135 (rule!7664 (h!41599 tokens!494)) (rule!7664 separatorToken!241) lt!1084676))))

(declare-fun lt!1084666 () Unit!50642)

(declare-fun forallContained!1195 (List!36303 Int Token!9814) Unit!50642)

(assert (=> b!3209121 (= lt!1084666 (forallContained!1195 tokens!494 lambda!117479 (h!41599 (t!238514 tokens!494))))))

(declare-fun lt!1084678 () Bool)

(assert (=> b!3209121 (= lt!1084697 (not lt!1084678))))

(declare-fun rulesProduceIndividualToken!2305 (LexerInterface!4813 List!36302 Token!9814) Bool)

(assert (=> b!3209121 (= lt!1084697 (rulesProduceIndividualToken!2305 thiss!18206 rules!2135 (h!41599 (t!238514 tokens!494))))))

(declare-fun e!2001081 () Bool)

(assert (=> b!3209121 (= lt!1084678 e!2001081)))

(declare-fun res!1306286 () Bool)

(assert (=> b!3209121 (=> res!1306286 e!2001081)))

(declare-datatypes ((IArray!21653 0))(
  ( (IArray!21654 (innerList!10884 List!36303)) )
))
(declare-datatypes ((Conc!10824 0))(
  ( (Node!10824 (left!28134 Conc!10824) (right!28464 Conc!10824) (csize!21878 Int) (cheight!11035 Int)) (Leaf!17047 (xs!13942 IArray!21653) (csize!21879 Int)) (Empty!10824) )
))
(declare-datatypes ((BalanceConc!21262 0))(
  ( (BalanceConc!21263 (c!538932 Conc!10824)) )
))
(declare-datatypes ((tuple2!35576 0))(
  ( (tuple2!35577 (_1!20922 BalanceConc!21262) (_2!20922 BalanceConc!21260)) )
))
(declare-fun lt!1084668 () tuple2!35576)

(declare-fun size!27261 (BalanceConc!21262) Int)

(assert (=> b!3209121 (= res!1306286 (not (= (size!27261 (_1!20922 lt!1084668)) 1)))))

(declare-fun lt!1084684 () BalanceConc!21260)

(declare-fun lex!2143 (LexerInterface!4813 List!36302 BalanceConc!21260) tuple2!35576)

(assert (=> b!3209121 (= lt!1084668 (lex!2143 thiss!18206 rules!2135 lt!1084684))))

(declare-fun lt!1084657 () BalanceConc!21262)

(declare-fun printTailRec!1310 (LexerInterface!4813 BalanceConc!21262 Int BalanceConc!21260) BalanceConc!21260)

(assert (=> b!3209121 (= lt!1084684 (printTailRec!1310 thiss!18206 lt!1084657 0 (BalanceConc!21261 Empty!10823)))))

(declare-fun print!1878 (LexerInterface!4813 BalanceConc!21262) BalanceConc!21260)

(assert (=> b!3209121 (= lt!1084684 (print!1878 thiss!18206 lt!1084657))))

(declare-fun singletonSeq!2320 (Token!9814) BalanceConc!21262)

(assert (=> b!3209121 (= lt!1084657 (singletonSeq!2320 (h!41599 (t!238514 tokens!494))))))

(declare-fun e!2001078 () Bool)

(assert (=> b!3209121 e!2001078))

(declare-fun res!1306296 () Bool)

(assert (=> b!3209121 (=> (not res!1306296) (not e!2001078))))

(declare-fun lt!1084679 () tuple2!35576)

(assert (=> b!3209121 (= res!1306296 (= (size!27261 (_1!20922 lt!1084679)) 1))))

(declare-fun lt!1084659 () BalanceConc!21260)

(assert (=> b!3209121 (= lt!1084679 (lex!2143 thiss!18206 rules!2135 lt!1084659))))

(declare-fun lt!1084669 () BalanceConc!21262)

(assert (=> b!3209121 (= lt!1084659 (printTailRec!1310 thiss!18206 lt!1084669 0 (BalanceConc!21261 Empty!10823)))))

(assert (=> b!3209121 (= lt!1084659 (print!1878 thiss!18206 lt!1084669))))

(assert (=> b!3209121 (= lt!1084669 (singletonSeq!2320 separatorToken!241))))

(declare-fun lt!1084675 () Unit!50642)

(assert (=> b!3209121 (= lt!1084675 e!2001090)))

(declare-fun c!538929 () Bool)

(assert (=> b!3209121 (= c!538929 (not (contains!6461 (usedCharacters!540 (regex!5224 (rule!7664 separatorToken!241))) lt!1084676)))))

(declare-fun head!7043 (List!36301) C!20152)

(assert (=> b!3209121 (= lt!1084676 (head!7043 lt!1084696))))

(declare-fun e!2001097 () Bool)

(assert (=> b!3209121 e!2001097))

(declare-fun res!1306290 () Bool)

(assert (=> b!3209121 (=> (not res!1306290) (not e!2001097))))

(declare-fun lt!1084691 () Option!7148)

(assert (=> b!3209121 (= res!1306290 (isDefined!5554 lt!1084691))))

(assert (=> b!3209121 (= lt!1084691 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 separatorToken!241))))))

(declare-fun lt!1084670 () Unit!50642)

(assert (=> b!3209121 (= lt!1084670 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!929 thiss!18206 rules!2135 lt!1084696 separatorToken!241))))

(declare-fun lt!1084685 () BalanceConc!21260)

(declare-fun lt!1084683 () List!36301)

(assert (=> b!3209121 (= (maxPrefixOneRule!1592 thiss!18206 (rule!7664 (h!41599 tokens!494)) lt!1084683) (Some!7146 (tuple2!35575 (Token!9815 (apply!8197 (transformation!5224 (rule!7664 (h!41599 tokens!494))) lt!1084685) (rule!7664 (h!41599 tokens!494)) (size!27260 lt!1084683) lt!1084683) Nil!36177)))))

(declare-fun lt!1084692 () Unit!50642)

(assert (=> b!3209121 (= lt!1084692 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!705 thiss!18206 rules!2135 lt!1084683 lt!1084683 Nil!36177 (rule!7664 (h!41599 tokens!494))))))

(declare-fun e!2001101 () Bool)

(assert (=> b!3209121 e!2001101))

(declare-fun res!1306281 () Bool)

(assert (=> b!3209121 (=> (not res!1306281) (not e!2001101))))

(declare-fun lt!1084688 () Option!7148)

(assert (=> b!3209121 (= res!1306281 (isDefined!5554 lt!1084688))))

(assert (=> b!3209121 (= lt!1084688 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 tokens!494)))))))

(declare-fun lt!1084699 () Unit!50642)

(assert (=> b!3209121 (= lt!1084699 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!929 thiss!18206 rules!2135 lt!1084683 (h!41599 tokens!494)))))

(declare-fun lt!1084658 () Unit!50642)

(assert (=> b!3209121 (= lt!1084658 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!852 thiss!18206 rules!2135 tokens!494 (h!41599 tokens!494)))))

(declare-fun b!3209122 () Bool)

(declare-fun res!1306302 () Bool)

(declare-fun e!2001085 () Bool)

(assert (=> b!3209122 (=> (not res!1306302) (not e!2001085))))

(assert (=> b!3209122 (= res!1306302 (rulesProduceIndividualToken!2305 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun tp!1013244 () Bool)

(declare-fun e!2001079 () Bool)

(declare-fun b!3209123 () Bool)

(declare-fun e!2001092 () Bool)

(declare-fun inv!21 (TokenValue!5454) Bool)

(assert (=> b!3209123 (= e!2001092 (and (inv!21 (value!169344 separatorToken!241)) e!2001079 tp!1013244))))

(declare-fun res!1306293 () Bool)

(assert (=> b!3209124 (=> (not res!1306293) (not e!2001085))))

(declare-fun forall!7388 (List!36303 Int) Bool)

(assert (=> b!3209124 (= res!1306293 (forall!7388 tokens!494 lambda!117478))))

(declare-fun e!2001100 () Bool)

(declare-fun b!3209125 () Bool)

(declare-fun e!2001080 () Bool)

(declare-fun tp!1013248 () Bool)

(declare-fun inv!49032 (String!40604) Bool)

(declare-fun inv!49035 (TokenValueInjection!10336) Bool)

(assert (=> b!3209125 (= e!2001080 (and tp!1013248 (inv!49032 (tag!5750 (h!41598 rules!2135))) (inv!49035 (transformation!5224 (h!41598 rules!2135))) e!2001100))))

(declare-fun res!1306289 () Bool)

(assert (=> start!301286 (=> (not res!1306289) (not e!2001085))))

(assert (=> start!301286 (= res!1306289 ((_ is Lexer!4811) thiss!18206))))

(assert (=> start!301286 e!2001085))

(assert (=> start!301286 true))

(declare-fun e!2001105 () Bool)

(assert (=> start!301286 e!2001105))

(declare-fun e!2001076 () Bool)

(assert (=> start!301286 e!2001076))

(declare-fun inv!49036 (Token!9814) Bool)

(assert (=> start!301286 (and (inv!49036 separatorToken!241) e!2001092)))

(declare-fun b!3209126 () Bool)

(declare-fun e!2001102 () Bool)

(declare-fun e!2001107 () Bool)

(assert (=> b!3209126 (= e!2001102 e!2001107)))

(declare-fun res!1306282 () Bool)

(assert (=> b!3209126 (=> res!1306282 e!2001107)))

(declare-fun lt!1084677 () List!36301)

(declare-fun lt!1084667 () List!36301)

(assert (=> b!3209126 (= res!1306282 (or (not (= lt!1084667 lt!1084683)) (not (= lt!1084677 lt!1084683))))))

(declare-fun list!12865 (BalanceConc!21260) List!36301)

(declare-fun charsOf!3240 (Token!9814) BalanceConc!21260)

(assert (=> b!3209126 (= lt!1084683 (list!12865 (charsOf!3240 (h!41599 tokens!494))))))

(declare-fun b!3209127 () Bool)

(declare-fun e!2001082 () Bool)

(declare-fun e!2001098 () Bool)

(assert (=> b!3209127 (= e!2001082 e!2001098)))

(declare-fun res!1306299 () Bool)

(assert (=> b!3209127 (=> res!1306299 e!2001098)))

(assert (=> b!3209127 (= res!1306299 (or (isSeparator!5224 (rule!7664 (h!41599 tokens!494))) (isSeparator!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))))

(declare-fun lt!1084680 () Unit!50642)

(assert (=> b!3209127 (= lt!1084680 (forallContained!1195 tokens!494 lambda!117478 (h!41599 (t!238514 tokens!494))))))

(declare-fun lt!1084687 () Unit!50642)

(assert (=> b!3209127 (= lt!1084687 (forallContained!1195 tokens!494 lambda!117478 (h!41599 tokens!494)))))

(declare-fun b!3209128 () Bool)

(declare-fun e!2001103 () Bool)

(assert (=> b!3209128 (= e!2001104 e!2001103)))

(declare-fun res!1306292 () Bool)

(assert (=> b!3209128 (=> (not res!1306292) (not e!2001103))))

(declare-fun lt!1084665 () Rule!10248)

(assert (=> b!3209128 (= res!1306292 (matchR!4617 (regex!5224 lt!1084665) lt!1084664))))

(declare-fun get!11519 (Option!7148) Rule!10248)

(assert (=> b!3209128 (= lt!1084665 (get!11519 lt!1084671))))

(declare-fun b!3209129 () Bool)

(declare-fun e!2001093 () Bool)

(assert (=> b!3209129 (= e!2001093 e!2001094)))

(declare-fun res!1306276 () Bool)

(assert (=> b!3209129 (=> res!1306276 e!2001094)))

(declare-fun lt!1084694 () List!36301)

(assert (=> b!3209129 (= res!1306276 (not (= lt!1084694 lt!1084663)))))

(declare-fun lt!1084673 () List!36301)

(assert (=> b!3209129 (= lt!1084673 lt!1084663)))

(declare-fun ++!8680 (List!36301 List!36301) List!36301)

(assert (=> b!3209129 (= lt!1084663 (++!8680 lt!1084683 lt!1084686))))

(declare-fun lt!1084672 () Unit!50642)

(declare-fun lt!1084690 () List!36301)

(declare-fun lemmaConcatAssociativity!1746 (List!36301 List!36301 List!36301) Unit!50642)

(assert (=> b!3209129 (= lt!1084672 (lemmaConcatAssociativity!1746 lt!1084683 lt!1084696 lt!1084690))))

(declare-fun b!3209130 () Bool)

(declare-fun res!1306275 () Bool)

(assert (=> b!3209130 (=> (not res!1306275) (not e!2001085))))

(declare-fun rulesProduceEachTokenIndividually!1264 (LexerInterface!4813 List!36302 BalanceConc!21262) Bool)

(declare-fun seqFromList!3520 (List!36303) BalanceConc!21262)

(assert (=> b!3209130 (= res!1306275 (rulesProduceEachTokenIndividually!1264 thiss!18206 rules!2135 (seqFromList!3520 tokens!494)))))

(declare-fun b!3209131 () Bool)

(declare-fun e!2001096 () Bool)

(declare-fun lt!1084660 () Rule!10248)

(assert (=> b!3209131 (= e!2001096 (= (rule!7664 (h!41599 tokens!494)) lt!1084660))))

(declare-fun b!3209132 () Bool)

(assert (=> b!3209132 (= e!2001107 e!2001082)))

(declare-fun res!1306291 () Bool)

(assert (=> b!3209132 (=> res!1306291 e!2001082)))

(declare-fun isEmpty!20261 (BalanceConc!21262) Bool)

(assert (=> b!3209132 (= res!1306291 (isEmpty!20261 (_1!20922 (lex!2143 thiss!18206 rules!2135 lt!1084685))))))

(assert (=> b!3209132 (= lt!1084685 (seqFromList!3519 lt!1084683))))

(declare-fun b!3209133 () Bool)

(declare-fun e!2001087 () Bool)

(assert (=> b!3209133 (= e!2001098 e!2001087)))

(declare-fun res!1306300 () Bool)

(assert (=> b!3209133 (=> res!1306300 e!2001087)))

(declare-fun printWithSeparatorTokenList!158 (LexerInterface!4813 List!36303 Token!9814) List!36301)

(assert (=> b!3209133 (= res!1306300 (not (= lt!1084690 (++!8680 (++!8680 lt!1084664 lt!1084696) (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241)))))))

(assert (=> b!3209133 (= lt!1084664 (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494)))))))

(assert (=> b!3209133 (= lt!1084686 (++!8680 lt!1084696 lt!1084690))))

(assert (=> b!3209133 (= lt!1084696 (list!12865 (charsOf!3240 separatorToken!241)))))

(assert (=> b!3209133 (= lt!1084690 (printWithSeparatorTokenList!158 thiss!18206 (t!238514 tokens!494) separatorToken!241))))

(assert (=> b!3209133 (= lt!1084694 (printWithSeparatorTokenList!158 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun e!2001095 () Bool)

(declare-fun b!3209134 () Bool)

(declare-fun tp!1013250 () Bool)

(declare-fun e!2001106 () Bool)

(assert (=> b!3209134 (= e!2001095 (and tp!1013250 (inv!49032 (tag!5750 (rule!7664 (h!41599 tokens!494)))) (inv!49035 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) e!2001106))))

(declare-fun tp!1013241 () Bool)

(declare-fun b!3209135 () Bool)

(assert (=> b!3209135 (= e!2001079 (and tp!1013241 (inv!49032 (tag!5750 (rule!7664 separatorToken!241))) (inv!49035 (transformation!5224 (rule!7664 separatorToken!241))) e!2001084))))

(declare-fun b!3209136 () Bool)

(assert (=> b!3209136 (= e!2001075 false)))

(declare-fun b!3209137 () Bool)

(declare-fun res!1306301 () Bool)

(assert (=> b!3209137 (=> (not res!1306301) (not e!2001085))))

(declare-fun isEmpty!20262 (List!36302) Bool)

(assert (=> b!3209137 (= res!1306301 (not (isEmpty!20262 rules!2135)))))

(declare-fun b!3209138 () Bool)

(declare-fun isEmpty!20263 (BalanceConc!21260) Bool)

(assert (=> b!3209138 (= e!2001078 (isEmpty!20263 (_2!20922 lt!1084679)))))

(assert (=> b!3209139 (= e!2001106 (and tp!1013246 tp!1013245))))

(assert (=> b!3209140 (= e!2001100 (and tp!1013249 tp!1013240))))

(declare-fun b!3209141 () Bool)

(assert (=> b!3209141 (= e!2001081 (not (isEmpty!20263 (_2!20922 lt!1084668))))))

(declare-fun b!3209142 () Bool)

(assert (=> b!3209142 (= e!2001085 (not e!2001102))))

(declare-fun res!1306288 () Bool)

(assert (=> b!3209142 (=> res!1306288 e!2001102)))

(assert (=> b!3209142 (= res!1306288 (not (= lt!1084677 lt!1084667)))))

(declare-fun printList!1363 (LexerInterface!4813 List!36303) List!36301)

(assert (=> b!3209142 (= lt!1084667 (printList!1363 thiss!18206 (Cons!36179 (h!41599 tokens!494) Nil!36179)))))

(declare-fun lt!1084695 () BalanceConc!21260)

(assert (=> b!3209142 (= lt!1084677 (list!12865 lt!1084695))))

(declare-fun lt!1084674 () BalanceConc!21262)

(assert (=> b!3209142 (= lt!1084695 (printTailRec!1310 thiss!18206 lt!1084674 0 (BalanceConc!21261 Empty!10823)))))

(assert (=> b!3209142 (= lt!1084695 (print!1878 thiss!18206 lt!1084674))))

(assert (=> b!3209142 (= lt!1084674 (singletonSeq!2320 (h!41599 tokens!494)))))

(declare-fun b!3209143 () Bool)

(declare-fun e!2001088 () Bool)

(declare-fun lt!1084661 () Rule!10248)

(assert (=> b!3209143 (= e!2001088 (= (rule!7664 separatorToken!241) lt!1084661))))

(declare-fun b!3209144 () Bool)

(declare-fun res!1306279 () Bool)

(assert (=> b!3209144 (=> (not res!1306279) (not e!2001078))))

(declare-fun apply!8198 (BalanceConc!21262 Int) Token!9814)

(assert (=> b!3209144 (= res!1306279 (= (apply!8198 (_1!20922 lt!1084679) 0) separatorToken!241))))

(declare-fun tp!1013251 () Bool)

(declare-fun e!2001086 () Bool)

(declare-fun b!3209145 () Bool)

(assert (=> b!3209145 (= e!2001086 (and (inv!21 (value!169344 (h!41599 tokens!494))) e!2001095 tp!1013251))))

(declare-fun b!3209146 () Bool)

(assert (=> b!3209146 (= e!2001097 e!2001088)))

(declare-fun res!1306277 () Bool)

(assert (=> b!3209146 (=> (not res!1306277) (not e!2001088))))

(assert (=> b!3209146 (= res!1306277 (matchR!4617 (regex!5224 lt!1084661) lt!1084696))))

(assert (=> b!3209146 (= lt!1084661 (get!11519 lt!1084691))))

(declare-fun b!3209147 () Bool)

(declare-fun tp!1013252 () Bool)

(assert (=> b!3209147 (= e!2001076 (and (inv!49036 (h!41599 tokens!494)) e!2001086 tp!1013252))))

(declare-fun b!3209148 () Bool)

(declare-fun res!1306278 () Bool)

(assert (=> b!3209148 (=> (not res!1306278) (not e!2001085))))

(declare-fun rulesInvariant!4210 (LexerInterface!4813 List!36302) Bool)

(assert (=> b!3209148 (= res!1306278 (rulesInvariant!4210 thiss!18206 rules!2135))))

(declare-fun b!3209149 () Bool)

(declare-fun res!1306287 () Bool)

(assert (=> b!3209149 (=> (not res!1306287) (not e!2001085))))

(declare-fun sepAndNonSepRulesDisjointChars!1418 (List!36302 List!36302) Bool)

(assert (=> b!3209149 (= res!1306287 (sepAndNonSepRulesDisjointChars!1418 rules!2135 rules!2135))))

(declare-fun b!3209150 () Bool)

(declare-fun res!1306280 () Bool)

(assert (=> b!3209150 (=> res!1306280 e!2001081)))

(assert (=> b!3209150 (= res!1306280 (not (= (apply!8198 (_1!20922 lt!1084668) 0) (h!41599 (t!238514 tokens!494)))))))

(declare-fun b!3209151 () Bool)

(declare-fun tp!1013242 () Bool)

(assert (=> b!3209151 (= e!2001105 (and e!2001080 tp!1013242))))

(declare-fun b!3209152 () Bool)

(assert (=> b!3209152 (= e!2001087 e!2001093)))

(declare-fun res!1306284 () Bool)

(assert (=> b!3209152 (=> res!1306284 e!2001093)))

(assert (=> b!3209152 (= res!1306284 (not (= lt!1084694 lt!1084673)))))

(assert (=> b!3209152 (= lt!1084673 (++!8680 (++!8680 lt!1084683 lt!1084696) lt!1084690))))

(declare-fun b!3209153 () Bool)

(declare-fun res!1306294 () Bool)

(assert (=> b!3209153 (=> (not res!1306294) (not e!2001085))))

(assert (=> b!3209153 (= res!1306294 (isSeparator!5224 (rule!7664 separatorToken!241)))))

(declare-fun b!3209154 () Bool)

(declare-fun res!1306283 () Bool)

(assert (=> b!3209154 (=> (not res!1306283) (not e!2001085))))

(assert (=> b!3209154 (= res!1306283 (and (not ((_ is Nil!36179) tokens!494)) (not ((_ is Nil!36179) (t!238514 tokens!494)))))))

(declare-fun b!3209155 () Bool)

(declare-fun res!1306295 () Bool)

(assert (=> b!3209155 (=> res!1306295 e!2001107)))

(assert (=> b!3209155 (= res!1306295 (not (rulesProduceIndividualToken!2305 thiss!18206 rules!2135 (h!41599 tokens!494))))))

(declare-fun b!3209156 () Bool)

(assert (=> b!3209156 (= e!2001103 (= (rule!7664 (h!41599 (t!238514 tokens!494))) lt!1084665))))

(declare-fun b!3209157 () Bool)

(assert (=> b!3209157 (= e!2001101 e!2001096)))

(declare-fun res!1306297 () Bool)

(assert (=> b!3209157 (=> (not res!1306297) (not e!2001096))))

(assert (=> b!3209157 (= res!1306297 (matchR!4617 (regex!5224 lt!1084660) lt!1084683))))

(assert (=> b!3209157 (= lt!1084660 (get!11519 lt!1084688))))

(assert (= (and start!301286 res!1306289) b!3209137))

(assert (= (and b!3209137 res!1306301) b!3209148))

(assert (= (and b!3209148 res!1306278) b!3209130))

(assert (= (and b!3209130 res!1306275) b!3209122))

(assert (= (and b!3209122 res!1306302) b!3209153))

(assert (= (and b!3209153 res!1306294) b!3209124))

(assert (= (and b!3209124 res!1306293) b!3209149))

(assert (= (and b!3209149 res!1306287) b!3209154))

(assert (= (and b!3209154 res!1306283) b!3209142))

(assert (= (and b!3209142 (not res!1306288)) b!3209126))

(assert (= (and b!3209126 (not res!1306282)) b!3209155))

(assert (= (and b!3209155 (not res!1306295)) b!3209132))

(assert (= (and b!3209132 (not res!1306291)) b!3209127))

(assert (= (and b!3209127 (not res!1306299)) b!3209133))

(assert (= (and b!3209133 (not res!1306300)) b!3209152))

(assert (= (and b!3209152 (not res!1306284)) b!3209129))

(assert (= (and b!3209129 (not res!1306276)) b!3209121))

(assert (= (and b!3209121 res!1306281) b!3209157))

(assert (= (and b!3209157 res!1306297) b!3209131))

(assert (= (and b!3209121 res!1306290) b!3209146))

(assert (= (and b!3209146 res!1306277) b!3209143))

(assert (= (and b!3209121 c!538929) b!3209119))

(assert (= (and b!3209121 (not c!538929)) b!3209118))

(assert (= (and b!3209119 res!1306298) b!3209136))

(assert (= (and b!3209121 res!1306296) b!3209144))

(assert (= (and b!3209144 res!1306279) b!3209138))

(assert (= (and b!3209121 (not res!1306286)) b!3209150))

(assert (= (and b!3209150 (not res!1306280)) b!3209141))

(assert (= (and b!3209121 res!1306285) b!3209128))

(assert (= (and b!3209128 res!1306292) b!3209156))

(assert (= b!3209125 b!3209140))

(assert (= b!3209151 b!3209125))

(assert (= (and start!301286 ((_ is Cons!36178) rules!2135)) b!3209151))

(assert (= b!3209134 b!3209139))

(assert (= b!3209145 b!3209134))

(assert (= b!3209147 b!3209145))

(assert (= (and start!301286 ((_ is Cons!36179) tokens!494)) b!3209147))

(assert (= b!3209135 b!3209120))

(assert (= b!3209123 b!3209135))

(assert (= start!301286 b!3209123))

(declare-fun m!3476677 () Bool)

(assert (=> b!3209146 m!3476677))

(declare-fun m!3476679 () Bool)

(assert (=> b!3209146 m!3476679))

(declare-fun m!3476681 () Bool)

(assert (=> b!3209134 m!3476681))

(declare-fun m!3476683 () Bool)

(assert (=> b!3209134 m!3476683))

(declare-fun m!3476685 () Bool)

(assert (=> b!3209125 m!3476685))

(declare-fun m!3476687 () Bool)

(assert (=> b!3209125 m!3476687))

(declare-fun m!3476689 () Bool)

(assert (=> b!3209133 m!3476689))

(declare-fun m!3476691 () Bool)

(assert (=> b!3209133 m!3476691))

(declare-fun m!3476693 () Bool)

(assert (=> b!3209133 m!3476693))

(declare-fun m!3476695 () Bool)

(assert (=> b!3209133 m!3476695))

(declare-fun m!3476697 () Bool)

(assert (=> b!3209133 m!3476697))

(declare-fun m!3476699 () Bool)

(assert (=> b!3209133 m!3476699))

(declare-fun m!3476701 () Bool)

(assert (=> b!3209133 m!3476701))

(assert (=> b!3209133 m!3476691))

(declare-fun m!3476703 () Bool)

(assert (=> b!3209133 m!3476703))

(assert (=> b!3209133 m!3476689))

(assert (=> b!3209133 m!3476699))

(declare-fun m!3476705 () Bool)

(assert (=> b!3209133 m!3476705))

(assert (=> b!3209133 m!3476693))

(declare-fun m!3476707 () Bool)

(assert (=> b!3209133 m!3476707))

(declare-fun m!3476709 () Bool)

(assert (=> b!3209128 m!3476709))

(declare-fun m!3476711 () Bool)

(assert (=> b!3209128 m!3476711))

(declare-fun m!3476713 () Bool)

(assert (=> b!3209138 m!3476713))

(declare-fun m!3476715 () Bool)

(assert (=> b!3209126 m!3476715))

(assert (=> b!3209126 m!3476715))

(declare-fun m!3476717 () Bool)

(assert (=> b!3209126 m!3476717))

(declare-fun m!3476719 () Bool)

(assert (=> b!3209129 m!3476719))

(declare-fun m!3476721 () Bool)

(assert (=> b!3209129 m!3476721))

(declare-fun m!3476723 () Bool)

(assert (=> b!3209132 m!3476723))

(declare-fun m!3476725 () Bool)

(assert (=> b!3209132 m!3476725))

(declare-fun m!3476727 () Bool)

(assert (=> b!3209132 m!3476727))

(declare-fun m!3476729 () Bool)

(assert (=> b!3209127 m!3476729))

(declare-fun m!3476731 () Bool)

(assert (=> b!3209127 m!3476731))

(declare-fun m!3476733 () Bool)

(assert (=> b!3209148 m!3476733))

(declare-fun m!3476735 () Bool)

(assert (=> b!3209157 m!3476735))

(declare-fun m!3476737 () Bool)

(assert (=> b!3209157 m!3476737))

(declare-fun m!3476739 () Bool)

(assert (=> b!3209119 m!3476739))

(declare-fun m!3476741 () Bool)

(assert (=> b!3209119 m!3476741))

(declare-fun m!3476743 () Bool)

(assert (=> b!3209155 m!3476743))

(declare-fun m!3476745 () Bool)

(assert (=> b!3209130 m!3476745))

(assert (=> b!3209130 m!3476745))

(declare-fun m!3476747 () Bool)

(assert (=> b!3209130 m!3476747))

(declare-fun m!3476749 () Bool)

(assert (=> b!3209144 m!3476749))

(declare-fun m!3476751 () Bool)

(assert (=> start!301286 m!3476751))

(declare-fun m!3476753 () Bool)

(assert (=> b!3209147 m!3476753))

(declare-fun m!3476755 () Bool)

(assert (=> b!3209150 m!3476755))

(declare-fun m!3476757 () Bool)

(assert (=> b!3209122 m!3476757))

(declare-fun m!3476759 () Bool)

(assert (=> b!3209152 m!3476759))

(assert (=> b!3209152 m!3476759))

(declare-fun m!3476761 () Bool)

(assert (=> b!3209152 m!3476761))

(declare-fun m!3476763 () Bool)

(assert (=> b!3209135 m!3476763))

(declare-fun m!3476765 () Bool)

(assert (=> b!3209135 m!3476765))

(declare-fun m!3476767 () Bool)

(assert (=> b!3209145 m!3476767))

(declare-fun m!3476769 () Bool)

(assert (=> b!3209124 m!3476769))

(declare-fun m!3476771 () Bool)

(assert (=> b!3209149 m!3476771))

(declare-fun m!3476773 () Bool)

(assert (=> b!3209121 m!3476773))

(declare-fun m!3476775 () Bool)

(assert (=> b!3209121 m!3476775))

(declare-fun m!3476777 () Bool)

(assert (=> b!3209121 m!3476777))

(declare-fun m!3476779 () Bool)

(assert (=> b!3209121 m!3476779))

(declare-fun m!3476781 () Bool)

(assert (=> b!3209121 m!3476781))

(declare-fun m!3476783 () Bool)

(assert (=> b!3209121 m!3476783))

(declare-fun m!3476785 () Bool)

(assert (=> b!3209121 m!3476785))

(declare-fun m!3476787 () Bool)

(assert (=> b!3209121 m!3476787))

(assert (=> b!3209121 m!3476777))

(declare-fun m!3476789 () Bool)

(assert (=> b!3209121 m!3476789))

(declare-fun m!3476791 () Bool)

(assert (=> b!3209121 m!3476791))

(assert (=> b!3209121 m!3476773))

(declare-fun m!3476793 () Bool)

(assert (=> b!3209121 m!3476793))

(declare-fun m!3476795 () Bool)

(assert (=> b!3209121 m!3476795))

(declare-fun m!3476797 () Bool)

(assert (=> b!3209121 m!3476797))

(declare-fun m!3476799 () Bool)

(assert (=> b!3209121 m!3476799))

(declare-fun m!3476801 () Bool)

(assert (=> b!3209121 m!3476801))

(declare-fun m!3476803 () Bool)

(assert (=> b!3209121 m!3476803))

(declare-fun m!3476805 () Bool)

(assert (=> b!3209121 m!3476805))

(declare-fun m!3476807 () Bool)

(assert (=> b!3209121 m!3476807))

(declare-fun m!3476809 () Bool)

(assert (=> b!3209121 m!3476809))

(declare-fun m!3476811 () Bool)

(assert (=> b!3209121 m!3476811))

(declare-fun m!3476813 () Bool)

(assert (=> b!3209121 m!3476813))

(declare-fun m!3476815 () Bool)

(assert (=> b!3209121 m!3476815))

(declare-fun m!3476817 () Bool)

(assert (=> b!3209121 m!3476817))

(declare-fun m!3476819 () Bool)

(assert (=> b!3209121 m!3476819))

(declare-fun m!3476821 () Bool)

(assert (=> b!3209121 m!3476821))

(declare-fun m!3476823 () Bool)

(assert (=> b!3209121 m!3476823))

(declare-fun m!3476825 () Bool)

(assert (=> b!3209121 m!3476825))

(declare-fun m!3476827 () Bool)

(assert (=> b!3209121 m!3476827))

(declare-fun m!3476829 () Bool)

(assert (=> b!3209121 m!3476829))

(declare-fun m!3476831 () Bool)

(assert (=> b!3209121 m!3476831))

(declare-fun m!3476833 () Bool)

(assert (=> b!3209121 m!3476833))

(declare-fun m!3476835 () Bool)

(assert (=> b!3209121 m!3476835))

(declare-fun m!3476837 () Bool)

(assert (=> b!3209121 m!3476837))

(declare-fun m!3476839 () Bool)

(assert (=> b!3209121 m!3476839))

(declare-fun m!3476841 () Bool)

(assert (=> b!3209121 m!3476841))

(declare-fun m!3476843 () Bool)

(assert (=> b!3209121 m!3476843))

(declare-fun m!3476845 () Bool)

(assert (=> b!3209121 m!3476845))

(declare-fun m!3476847 () Bool)

(assert (=> b!3209121 m!3476847))

(assert (=> b!3209121 m!3476795))

(declare-fun m!3476849 () Bool)

(assert (=> b!3209121 m!3476849))

(declare-fun m!3476851 () Bool)

(assert (=> b!3209121 m!3476851))

(declare-fun m!3476853 () Bool)

(assert (=> b!3209121 m!3476853))

(declare-fun m!3476855 () Bool)

(assert (=> b!3209141 m!3476855))

(declare-fun m!3476857 () Bool)

(assert (=> b!3209142 m!3476857))

(declare-fun m!3476859 () Bool)

(assert (=> b!3209142 m!3476859))

(declare-fun m!3476861 () Bool)

(assert (=> b!3209142 m!3476861))

(declare-fun m!3476863 () Bool)

(assert (=> b!3209142 m!3476863))

(declare-fun m!3476865 () Bool)

(assert (=> b!3209142 m!3476865))

(declare-fun m!3476867 () Bool)

(assert (=> b!3209123 m!3476867))

(declare-fun m!3476869 () Bool)

(assert (=> b!3209137 m!3476869))

(check-sat (not b!3209126) (not b!3209135) b_and!213711 (not b!3209137) (not b!3209130) (not b!3209147) (not b!3209146) (not b!3209133) (not b!3209150) (not b!3209129) (not b!3209121) (not b!3209152) (not b!3209125) (not start!301286) (not b!3209138) (not b_next!86105) b_and!213721 (not b_next!86113) (not b!3209132) (not b!3209144) (not b!3209119) b_and!213713 (not b!3209141) (not b!3209151) (not b_next!86111) b_and!213715 (not b_next!86115) (not b!3209127) (not b!3209148) (not b!3209149) b_and!213719 (not b!3209157) (not b!3209155) (not b_next!86107) (not b!3209166) (not b!3209128) b_and!213717 (not b!3209142) (not b!3209122) (not b!3209124) (not b!3209145) (not b_next!86109) (not b!3209123) (not b!3209134))
(check-sat b_and!213711 (not b_next!86113) b_and!213719 (not b_next!86107) b_and!213717 (not b_next!86109) (not b_next!86105) b_and!213721 b_and!213713 (not b_next!86111) b_and!213715 (not b_next!86115))
(get-model)

(declare-fun d!878925 () Bool)

(assert (=> d!878925 (not (matchR!4617 (regex!5224 (rule!7664 separatorToken!241)) lt!1084696))))

(declare-fun lt!1084709 () Unit!50642)

(declare-fun choose!18723 (Regex!9983 List!36301 C!20152) Unit!50642)

(assert (=> d!878925 (= lt!1084709 (choose!18723 (regex!5224 (rule!7664 separatorToken!241)) lt!1084696 lt!1084676))))

(declare-fun validRegex!4552 (Regex!9983) Bool)

(assert (=> d!878925 (validRegex!4552 (regex!5224 (rule!7664 separatorToken!241)))))

(assert (=> d!878925 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!388 (regex!5224 (rule!7664 separatorToken!241)) lt!1084696 lt!1084676) lt!1084709)))

(declare-fun bs!541525 () Bool)

(assert (= bs!541525 d!878925))

(assert (=> bs!541525 m!3476741))

(declare-fun m!3476893 () Bool)

(assert (=> bs!541525 m!3476893))

(declare-fun m!3476895 () Bool)

(assert (=> bs!541525 m!3476895))

(assert (=> b!3209119 d!878925))

(declare-fun b!3209225 () Bool)

(declare-fun res!1306346 () Bool)

(declare-fun e!2001153 () Bool)

(assert (=> b!3209225 (=> res!1306346 e!2001153)))

(declare-fun isEmpty!20266 (List!36301) Bool)

(declare-fun tail!5212 (List!36301) List!36301)

(assert (=> b!3209225 (= res!1306346 (not (isEmpty!20266 (tail!5212 lt!1084696))))))

(declare-fun b!3209226 () Bool)

(declare-fun res!1306342 () Bool)

(declare-fun e!2001154 () Bool)

(assert (=> b!3209226 (=> (not res!1306342) (not e!2001154))))

(assert (=> b!3209226 (= res!1306342 (isEmpty!20266 (tail!5212 lt!1084696)))))

(declare-fun b!3209227 () Bool)

(declare-fun e!2001150 () Bool)

(assert (=> b!3209227 (= e!2001150 e!2001153)))

(declare-fun res!1306347 () Bool)

(assert (=> b!3209227 (=> res!1306347 e!2001153)))

(declare-fun call!232185 () Bool)

(assert (=> b!3209227 (= res!1306347 call!232185)))

(declare-fun b!3209228 () Bool)

(declare-fun res!1306345 () Bool)

(declare-fun e!2001155 () Bool)

(assert (=> b!3209228 (=> res!1306345 e!2001155)))

(assert (=> b!3209228 (= res!1306345 (not ((_ is ElementMatch!9983) (regex!5224 (rule!7664 separatorToken!241)))))))

(declare-fun e!2001149 () Bool)

(assert (=> b!3209228 (= e!2001149 e!2001155)))

(declare-fun b!3209229 () Bool)

(declare-fun e!2001151 () Bool)

(declare-fun derivativeStep!2951 (Regex!9983 C!20152) Regex!9983)

(assert (=> b!3209229 (= e!2001151 (matchR!4617 (derivativeStep!2951 (regex!5224 (rule!7664 separatorToken!241)) (head!7043 lt!1084696)) (tail!5212 lt!1084696)))))

(declare-fun b!3209230 () Bool)

(assert (=> b!3209230 (= e!2001155 e!2001150)))

(declare-fun res!1306341 () Bool)

(assert (=> b!3209230 (=> (not res!1306341) (not e!2001150))))

(declare-fun lt!1084736 () Bool)

(assert (=> b!3209230 (= res!1306341 (not lt!1084736))))

(declare-fun b!3209231 () Bool)

(declare-fun res!1306343 () Bool)

(assert (=> b!3209231 (=> res!1306343 e!2001155)))

(assert (=> b!3209231 (= res!1306343 e!2001154)))

(declare-fun res!1306348 () Bool)

(assert (=> b!3209231 (=> (not res!1306348) (not e!2001154))))

(assert (=> b!3209231 (= res!1306348 lt!1084736)))

(declare-fun b!3209232 () Bool)

(declare-fun nullable!3398 (Regex!9983) Bool)

(assert (=> b!3209232 (= e!2001151 (nullable!3398 (regex!5224 (rule!7664 separatorToken!241))))))

(declare-fun d!878929 () Bool)

(declare-fun e!2001152 () Bool)

(assert (=> d!878929 e!2001152))

(declare-fun c!538947 () Bool)

(assert (=> d!878929 (= c!538947 ((_ is EmptyExpr!9983) (regex!5224 (rule!7664 separatorToken!241))))))

(assert (=> d!878929 (= lt!1084736 e!2001151)))

(declare-fun c!538948 () Bool)

(assert (=> d!878929 (= c!538948 (isEmpty!20266 lt!1084696))))

(assert (=> d!878929 (validRegex!4552 (regex!5224 (rule!7664 separatorToken!241)))))

(assert (=> d!878929 (= (matchR!4617 (regex!5224 (rule!7664 separatorToken!241)) lt!1084696) lt!1084736)))

(declare-fun bm!232180 () Bool)

(assert (=> bm!232180 (= call!232185 (isEmpty!20266 lt!1084696))))

(declare-fun b!3209233 () Bool)

(assert (=> b!3209233 (= e!2001153 (not (= (head!7043 lt!1084696) (c!538930 (regex!5224 (rule!7664 separatorToken!241))))))))

(declare-fun b!3209234 () Bool)

(assert (=> b!3209234 (= e!2001154 (= (head!7043 lt!1084696) (c!538930 (regex!5224 (rule!7664 separatorToken!241)))))))

(declare-fun b!3209235 () Bool)

(assert (=> b!3209235 (= e!2001149 (not lt!1084736))))

(declare-fun b!3209236 () Bool)

(assert (=> b!3209236 (= e!2001152 (= lt!1084736 call!232185))))

(declare-fun b!3209237 () Bool)

(declare-fun res!1306344 () Bool)

(assert (=> b!3209237 (=> (not res!1306344) (not e!2001154))))

(assert (=> b!3209237 (= res!1306344 (not call!232185))))

(declare-fun b!3209238 () Bool)

(assert (=> b!3209238 (= e!2001152 e!2001149)))

(declare-fun c!538946 () Bool)

(assert (=> b!3209238 (= c!538946 ((_ is EmptyLang!9983) (regex!5224 (rule!7664 separatorToken!241))))))

(assert (= (and d!878929 c!538948) b!3209232))

(assert (= (and d!878929 (not c!538948)) b!3209229))

(assert (= (and d!878929 c!538947) b!3209236))

(assert (= (and d!878929 (not c!538947)) b!3209238))

(assert (= (and b!3209238 c!538946) b!3209235))

(assert (= (and b!3209238 (not c!538946)) b!3209228))

(assert (= (and b!3209228 (not res!1306345)) b!3209231))

(assert (= (and b!3209231 res!1306348) b!3209237))

(assert (= (and b!3209237 res!1306344) b!3209226))

(assert (= (and b!3209226 res!1306342) b!3209234))

(assert (= (and b!3209231 (not res!1306343)) b!3209230))

(assert (= (and b!3209230 res!1306341) b!3209227))

(assert (= (and b!3209227 (not res!1306347)) b!3209225))

(assert (= (and b!3209225 (not res!1306346)) b!3209233))

(assert (= (or b!3209236 b!3209227 b!3209237) bm!232180))

(declare-fun m!3476945 () Bool)

(assert (=> b!3209232 m!3476945))

(assert (=> b!3209229 m!3476851))

(assert (=> b!3209229 m!3476851))

(declare-fun m!3476947 () Bool)

(assert (=> b!3209229 m!3476947))

(declare-fun m!3476949 () Bool)

(assert (=> b!3209229 m!3476949))

(assert (=> b!3209229 m!3476947))

(assert (=> b!3209229 m!3476949))

(declare-fun m!3476951 () Bool)

(assert (=> b!3209229 m!3476951))

(assert (=> b!3209233 m!3476851))

(assert (=> b!3209226 m!3476949))

(assert (=> b!3209226 m!3476949))

(declare-fun m!3476953 () Bool)

(assert (=> b!3209226 m!3476953))

(declare-fun m!3476955 () Bool)

(assert (=> d!878929 m!3476955))

(assert (=> d!878929 m!3476895))

(assert (=> bm!232180 m!3476955))

(assert (=> b!3209234 m!3476851))

(assert (=> b!3209225 m!3476949))

(assert (=> b!3209225 m!3476949))

(assert (=> b!3209225 m!3476953))

(assert (=> b!3209119 d!878929))

(declare-fun d!878937 () Bool)

(declare-fun res!1306369 () Bool)

(declare-fun e!2001172 () Bool)

(assert (=> d!878937 (=> (not res!1306369) (not e!2001172))))

(assert (=> d!878937 (= res!1306369 (not (isEmpty!20266 (originalCharacters!5938 separatorToken!241))))))

(assert (=> d!878937 (= (inv!49036 separatorToken!241) e!2001172)))

(declare-fun b!3209271 () Bool)

(declare-fun res!1306370 () Bool)

(assert (=> b!3209271 (=> (not res!1306370) (not e!2001172))))

(declare-fun dynLambda!14612 (Int TokenValue!5454) BalanceConc!21260)

(assert (=> b!3209271 (= res!1306370 (= (originalCharacters!5938 separatorToken!241) (list!12865 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (value!169344 separatorToken!241)))))))

(declare-fun b!3209272 () Bool)

(assert (=> b!3209272 (= e!2001172 (= (size!27259 separatorToken!241) (size!27260 (originalCharacters!5938 separatorToken!241))))))

(assert (= (and d!878937 res!1306369) b!3209271))

(assert (= (and b!3209271 res!1306370) b!3209272))

(declare-fun b_lambda!87877 () Bool)

(assert (=> (not b_lambda!87877) (not b!3209271)))

(declare-fun tb!157577 () Bool)

(declare-fun t!238523 () Bool)

(assert (=> (and b!3209139 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241)))) t!238523) tb!157577))

(declare-fun b!3209291 () Bool)

(declare-fun e!2001182 () Bool)

(declare-fun tp!1013258 () Bool)

(declare-fun inv!49039 (Conc!10823) Bool)

(assert (=> b!3209291 (= e!2001182 (and (inv!49039 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (value!169344 separatorToken!241)))) tp!1013258))))

(declare-fun result!199920 () Bool)

(declare-fun inv!49040 (BalanceConc!21260) Bool)

(assert (=> tb!157577 (= result!199920 (and (inv!49040 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (value!169344 separatorToken!241))) e!2001182))))

(assert (= tb!157577 b!3209291))

(declare-fun m!3476957 () Bool)

(assert (=> b!3209291 m!3476957))

(declare-fun m!3476959 () Bool)

(assert (=> tb!157577 m!3476959))

(assert (=> b!3209271 t!238523))

(declare-fun b_and!213729 () Bool)

(assert (= b_and!213713 (and (=> t!238523 result!199920) b_and!213729)))

(declare-fun t!238525 () Bool)

(declare-fun tb!157579 () Bool)

(assert (=> (and b!3209120 (= (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241)))) t!238525) tb!157579))

(declare-fun result!199924 () Bool)

(assert (= result!199924 result!199920))

(assert (=> b!3209271 t!238525))

(declare-fun b_and!213731 () Bool)

(assert (= b_and!213717 (and (=> t!238525 result!199924) b_and!213731)))

(declare-fun t!238527 () Bool)

(declare-fun tb!157581 () Bool)

(assert (=> (and b!3209140 (= (toChars!7167 (transformation!5224 (h!41598 rules!2135))) (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241)))) t!238527) tb!157581))

(declare-fun result!199926 () Bool)

(assert (= result!199926 result!199920))

(assert (=> b!3209271 t!238527))

(declare-fun b_and!213733 () Bool)

(assert (= b_and!213721 (and (=> t!238527 result!199926) b_and!213733)))

(declare-fun m!3476971 () Bool)

(assert (=> d!878937 m!3476971))

(declare-fun m!3476979 () Bool)

(assert (=> b!3209271 m!3476979))

(assert (=> b!3209271 m!3476979))

(declare-fun m!3476981 () Bool)

(assert (=> b!3209271 m!3476981))

(declare-fun m!3476983 () Bool)

(assert (=> b!3209272 m!3476983))

(assert (=> start!301286 d!878937))

(declare-fun d!878941 () Bool)

(declare-fun list!12868 (Conc!10823) List!36301)

(assert (=> d!878941 (= (list!12865 lt!1084695) (list!12868 (c!538931 lt!1084695)))))

(declare-fun bs!541526 () Bool)

(assert (= bs!541526 d!878941))

(declare-fun m!3476985 () Bool)

(assert (=> bs!541526 m!3476985))

(assert (=> b!3209142 d!878941))

(declare-fun d!878945 () Bool)

(declare-fun lt!1084756 () BalanceConc!21260)

(declare-fun printListTailRec!561 (LexerInterface!4813 List!36303 List!36301) List!36301)

(declare-fun dropList!1078 (BalanceConc!21262 Int) List!36303)

(assert (=> d!878945 (= (list!12865 lt!1084756) (printListTailRec!561 thiss!18206 (dropList!1078 lt!1084674 0) (list!12865 (BalanceConc!21261 Empty!10823))))))

(declare-fun e!2001187 () BalanceConc!21260)

(assert (=> d!878945 (= lt!1084756 e!2001187)))

(declare-fun c!538960 () Bool)

(assert (=> d!878945 (= c!538960 (>= 0 (size!27261 lt!1084674)))))

(declare-fun e!2001188 () Bool)

(assert (=> d!878945 e!2001188))

(declare-fun res!1306381 () Bool)

(assert (=> d!878945 (=> (not res!1306381) (not e!2001188))))

(assert (=> d!878945 (= res!1306381 (>= 0 0))))

(assert (=> d!878945 (= (printTailRec!1310 thiss!18206 lt!1084674 0 (BalanceConc!21261 Empty!10823)) lt!1084756)))

(declare-fun b!3209298 () Bool)

(assert (=> b!3209298 (= e!2001188 (<= 0 (size!27261 lt!1084674)))))

(declare-fun b!3209299 () Bool)

(assert (=> b!3209299 (= e!2001187 (BalanceConc!21261 Empty!10823))))

(declare-fun b!3209300 () Bool)

(declare-fun ++!8682 (BalanceConc!21260 BalanceConc!21260) BalanceConc!21260)

(assert (=> b!3209300 (= e!2001187 (printTailRec!1310 thiss!18206 lt!1084674 (+ 0 1) (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (apply!8198 lt!1084674 0)))))))

(declare-fun lt!1084758 () List!36303)

(declare-fun list!12869 (BalanceConc!21262) List!36303)

(assert (=> b!3209300 (= lt!1084758 (list!12869 lt!1084674))))

(declare-fun lt!1084757 () Unit!50642)

(declare-fun lemmaDropApply!1037 (List!36303 Int) Unit!50642)

(assert (=> b!3209300 (= lt!1084757 (lemmaDropApply!1037 lt!1084758 0))))

(declare-fun head!7045 (List!36303) Token!9814)

(declare-fun drop!1861 (List!36303 Int) List!36303)

(declare-fun apply!8200 (List!36303 Int) Token!9814)

(assert (=> b!3209300 (= (head!7045 (drop!1861 lt!1084758 0)) (apply!8200 lt!1084758 0))))

(declare-fun lt!1084755 () Unit!50642)

(assert (=> b!3209300 (= lt!1084755 lt!1084757)))

(declare-fun lt!1084759 () List!36303)

(assert (=> b!3209300 (= lt!1084759 (list!12869 lt!1084674))))

(declare-fun lt!1084760 () Unit!50642)

(declare-fun lemmaDropTail!921 (List!36303 Int) Unit!50642)

(assert (=> b!3209300 (= lt!1084760 (lemmaDropTail!921 lt!1084759 0))))

(declare-fun tail!5213 (List!36303) List!36303)

(assert (=> b!3209300 (= (tail!5213 (drop!1861 lt!1084759 0)) (drop!1861 lt!1084759 (+ 0 1)))))

(declare-fun lt!1084754 () Unit!50642)

(assert (=> b!3209300 (= lt!1084754 lt!1084760)))

(assert (= (and d!878945 res!1306381) b!3209298))

(assert (= (and d!878945 c!538960) b!3209299))

(assert (= (and d!878945 (not c!538960)) b!3209300))

(declare-fun m!3476987 () Bool)

(assert (=> d!878945 m!3476987))

(declare-fun m!3476989 () Bool)

(assert (=> d!878945 m!3476989))

(declare-fun m!3476991 () Bool)

(assert (=> d!878945 m!3476991))

(declare-fun m!3476993 () Bool)

(assert (=> d!878945 m!3476993))

(declare-fun m!3476995 () Bool)

(assert (=> d!878945 m!3476995))

(assert (=> d!878945 m!3476991))

(assert (=> d!878945 m!3476993))

(assert (=> b!3209298 m!3476987))

(declare-fun m!3476997 () Bool)

(assert (=> b!3209300 m!3476997))

(declare-fun m!3476999 () Bool)

(assert (=> b!3209300 m!3476999))

(declare-fun m!3477001 () Bool)

(assert (=> b!3209300 m!3477001))

(declare-fun m!3477003 () Bool)

(assert (=> b!3209300 m!3477003))

(declare-fun m!3477005 () Bool)

(assert (=> b!3209300 m!3477005))

(declare-fun m!3477007 () Bool)

(assert (=> b!3209300 m!3477007))

(assert (=> b!3209300 m!3477007))

(declare-fun m!3477009 () Bool)

(assert (=> b!3209300 m!3477009))

(declare-fun m!3477011 () Bool)

(assert (=> b!3209300 m!3477011))

(declare-fun m!3477013 () Bool)

(assert (=> b!3209300 m!3477013))

(declare-fun m!3477015 () Bool)

(assert (=> b!3209300 m!3477015))

(assert (=> b!3209300 m!3477015))

(declare-fun m!3477017 () Bool)

(assert (=> b!3209300 m!3477017))

(assert (=> b!3209300 m!3477003))

(declare-fun m!3477019 () Bool)

(assert (=> b!3209300 m!3477019))

(declare-fun m!3477021 () Bool)

(assert (=> b!3209300 m!3477021))

(assert (=> b!3209300 m!3477017))

(assert (=> b!3209300 m!3477019))

(assert (=> b!3209142 d!878945))

(declare-fun d!878947 () Bool)

(declare-fun lt!1084763 () BalanceConc!21260)

(assert (=> d!878947 (= (list!12865 lt!1084763) (printList!1363 thiss!18206 (list!12869 lt!1084674)))))

(assert (=> d!878947 (= lt!1084763 (printTailRec!1310 thiss!18206 lt!1084674 0 (BalanceConc!21261 Empty!10823)))))

(assert (=> d!878947 (= (print!1878 thiss!18206 lt!1084674) lt!1084763)))

(declare-fun bs!541527 () Bool)

(assert (= bs!541527 d!878947))

(declare-fun m!3477023 () Bool)

(assert (=> bs!541527 m!3477023))

(assert (=> bs!541527 m!3476999))

(assert (=> bs!541527 m!3476999))

(declare-fun m!3477025 () Bool)

(assert (=> bs!541527 m!3477025))

(assert (=> bs!541527 m!3476865))

(assert (=> b!3209142 d!878947))

(declare-fun d!878949 () Bool)

(declare-fun e!2001191 () Bool)

(assert (=> d!878949 e!2001191))

(declare-fun res!1306384 () Bool)

(assert (=> d!878949 (=> (not res!1306384) (not e!2001191))))

(declare-fun lt!1084766 () BalanceConc!21262)

(assert (=> d!878949 (= res!1306384 (= (list!12869 lt!1084766) (Cons!36179 (h!41599 tokens!494) Nil!36179)))))

(declare-fun singleton!994 (Token!9814) BalanceConc!21262)

(assert (=> d!878949 (= lt!1084766 (singleton!994 (h!41599 tokens!494)))))

(assert (=> d!878949 (= (singletonSeq!2320 (h!41599 tokens!494)) lt!1084766)))

(declare-fun b!3209303 () Bool)

(declare-fun isBalanced!3217 (Conc!10824) Bool)

(assert (=> b!3209303 (= e!2001191 (isBalanced!3217 (c!538932 lt!1084766)))))

(assert (= (and d!878949 res!1306384) b!3209303))

(declare-fun m!3477027 () Bool)

(assert (=> d!878949 m!3477027))

(declare-fun m!3477029 () Bool)

(assert (=> d!878949 m!3477029))

(declare-fun m!3477031 () Bool)

(assert (=> b!3209303 m!3477031))

(assert (=> b!3209142 d!878949))

(declare-fun d!878951 () Bool)

(declare-fun c!538963 () Bool)

(assert (=> d!878951 (= c!538963 ((_ is Cons!36179) (Cons!36179 (h!41599 tokens!494) Nil!36179)))))

(declare-fun e!2001194 () List!36301)

(assert (=> d!878951 (= (printList!1363 thiss!18206 (Cons!36179 (h!41599 tokens!494) Nil!36179)) e!2001194)))

(declare-fun b!3209308 () Bool)

(assert (=> b!3209308 (= e!2001194 (++!8680 (list!12865 (charsOf!3240 (h!41599 (Cons!36179 (h!41599 tokens!494) Nil!36179)))) (printList!1363 thiss!18206 (t!238514 (Cons!36179 (h!41599 tokens!494) Nil!36179)))))))

(declare-fun b!3209309 () Bool)

(assert (=> b!3209309 (= e!2001194 Nil!36177)))

(assert (= (and d!878951 c!538963) b!3209308))

(assert (= (and d!878951 (not c!538963)) b!3209309))

(declare-fun m!3477033 () Bool)

(assert (=> b!3209308 m!3477033))

(assert (=> b!3209308 m!3477033))

(declare-fun m!3477035 () Bool)

(assert (=> b!3209308 m!3477035))

(declare-fun m!3477037 () Bool)

(assert (=> b!3209308 m!3477037))

(assert (=> b!3209308 m!3477035))

(assert (=> b!3209308 m!3477037))

(declare-fun m!3477039 () Bool)

(assert (=> b!3209308 m!3477039))

(assert (=> b!3209142 d!878951))

(declare-fun d!878953 () Bool)

(declare-fun lt!1084769 () Bool)

(assert (=> d!878953 (= lt!1084769 (isEmpty!20266 (list!12865 (_2!20922 lt!1084668))))))

(declare-fun isEmpty!20267 (Conc!10823) Bool)

(assert (=> d!878953 (= lt!1084769 (isEmpty!20267 (c!538931 (_2!20922 lt!1084668))))))

(assert (=> d!878953 (= (isEmpty!20263 (_2!20922 lt!1084668)) lt!1084769)))

(declare-fun bs!541528 () Bool)

(assert (= bs!541528 d!878953))

(declare-fun m!3477041 () Bool)

(assert (=> bs!541528 m!3477041))

(assert (=> bs!541528 m!3477041))

(declare-fun m!3477043 () Bool)

(assert (=> bs!541528 m!3477043))

(declare-fun m!3477045 () Bool)

(assert (=> bs!541528 m!3477045))

(assert (=> b!3209141 d!878953))

(declare-fun d!878955 () Bool)

(declare-fun lt!1084770 () Bool)

(assert (=> d!878955 (= lt!1084770 (isEmpty!20266 (list!12865 (_2!20922 lt!1084679))))))

(assert (=> d!878955 (= lt!1084770 (isEmpty!20267 (c!538931 (_2!20922 lt!1084679))))))

(assert (=> d!878955 (= (isEmpty!20263 (_2!20922 lt!1084679)) lt!1084770)))

(declare-fun bs!541529 () Bool)

(assert (= bs!541529 d!878955))

(declare-fun m!3477047 () Bool)

(assert (=> bs!541529 m!3477047))

(assert (=> bs!541529 m!3477047))

(declare-fun m!3477049 () Bool)

(assert (=> bs!541529 m!3477049))

(declare-fun m!3477051 () Bool)

(assert (=> bs!541529 m!3477051))

(assert (=> b!3209138 d!878955))

(declare-fun d!878957 () Bool)

(assert (=> d!878957 (= (isEmpty!20262 rules!2135) ((_ is Nil!36178) rules!2135))))

(assert (=> b!3209137 d!878957))

(declare-fun b!3209310 () Bool)

(declare-fun res!1306390 () Bool)

(declare-fun e!2001199 () Bool)

(assert (=> b!3209310 (=> res!1306390 e!2001199)))

(assert (=> b!3209310 (= res!1306390 (not (isEmpty!20266 (tail!5212 lt!1084696))))))

(declare-fun b!3209311 () Bool)

(declare-fun res!1306386 () Bool)

(declare-fun e!2001200 () Bool)

(assert (=> b!3209311 (=> (not res!1306386) (not e!2001200))))

(assert (=> b!3209311 (= res!1306386 (isEmpty!20266 (tail!5212 lt!1084696)))))

(declare-fun b!3209312 () Bool)

(declare-fun e!2001196 () Bool)

(assert (=> b!3209312 (= e!2001196 e!2001199)))

(declare-fun res!1306391 () Bool)

(assert (=> b!3209312 (=> res!1306391 e!2001199)))

(declare-fun call!232189 () Bool)

(assert (=> b!3209312 (= res!1306391 call!232189)))

(declare-fun b!3209313 () Bool)

(declare-fun res!1306389 () Bool)

(declare-fun e!2001201 () Bool)

(assert (=> b!3209313 (=> res!1306389 e!2001201)))

(assert (=> b!3209313 (= res!1306389 (not ((_ is ElementMatch!9983) (regex!5224 lt!1084661))))))

(declare-fun e!2001195 () Bool)

(assert (=> b!3209313 (= e!2001195 e!2001201)))

(declare-fun b!3209314 () Bool)

(declare-fun e!2001197 () Bool)

(assert (=> b!3209314 (= e!2001197 (matchR!4617 (derivativeStep!2951 (regex!5224 lt!1084661) (head!7043 lt!1084696)) (tail!5212 lt!1084696)))))

(declare-fun b!3209315 () Bool)

(assert (=> b!3209315 (= e!2001201 e!2001196)))

(declare-fun res!1306385 () Bool)

(assert (=> b!3209315 (=> (not res!1306385) (not e!2001196))))

(declare-fun lt!1084771 () Bool)

(assert (=> b!3209315 (= res!1306385 (not lt!1084771))))

(declare-fun b!3209316 () Bool)

(declare-fun res!1306387 () Bool)

(assert (=> b!3209316 (=> res!1306387 e!2001201)))

(assert (=> b!3209316 (= res!1306387 e!2001200)))

(declare-fun res!1306392 () Bool)

(assert (=> b!3209316 (=> (not res!1306392) (not e!2001200))))

(assert (=> b!3209316 (= res!1306392 lt!1084771)))

(declare-fun b!3209317 () Bool)

(assert (=> b!3209317 (= e!2001197 (nullable!3398 (regex!5224 lt!1084661)))))

(declare-fun d!878959 () Bool)

(declare-fun e!2001198 () Bool)

(assert (=> d!878959 e!2001198))

(declare-fun c!538965 () Bool)

(assert (=> d!878959 (= c!538965 ((_ is EmptyExpr!9983) (regex!5224 lt!1084661)))))

(assert (=> d!878959 (= lt!1084771 e!2001197)))

(declare-fun c!538966 () Bool)

(assert (=> d!878959 (= c!538966 (isEmpty!20266 lt!1084696))))

(assert (=> d!878959 (validRegex!4552 (regex!5224 lt!1084661))))

(assert (=> d!878959 (= (matchR!4617 (regex!5224 lt!1084661) lt!1084696) lt!1084771)))

(declare-fun bm!232184 () Bool)

(assert (=> bm!232184 (= call!232189 (isEmpty!20266 lt!1084696))))

(declare-fun b!3209318 () Bool)

(assert (=> b!3209318 (= e!2001199 (not (= (head!7043 lt!1084696) (c!538930 (regex!5224 lt!1084661)))))))

(declare-fun b!3209319 () Bool)

(assert (=> b!3209319 (= e!2001200 (= (head!7043 lt!1084696) (c!538930 (regex!5224 lt!1084661))))))

(declare-fun b!3209320 () Bool)

(assert (=> b!3209320 (= e!2001195 (not lt!1084771))))

(declare-fun b!3209321 () Bool)

(assert (=> b!3209321 (= e!2001198 (= lt!1084771 call!232189))))

(declare-fun b!3209322 () Bool)

(declare-fun res!1306388 () Bool)

(assert (=> b!3209322 (=> (not res!1306388) (not e!2001200))))

(assert (=> b!3209322 (= res!1306388 (not call!232189))))

(declare-fun b!3209323 () Bool)

(assert (=> b!3209323 (= e!2001198 e!2001195)))

(declare-fun c!538964 () Bool)

(assert (=> b!3209323 (= c!538964 ((_ is EmptyLang!9983) (regex!5224 lt!1084661)))))

(assert (= (and d!878959 c!538966) b!3209317))

(assert (= (and d!878959 (not c!538966)) b!3209314))

(assert (= (and d!878959 c!538965) b!3209321))

(assert (= (and d!878959 (not c!538965)) b!3209323))

(assert (= (and b!3209323 c!538964) b!3209320))

(assert (= (and b!3209323 (not c!538964)) b!3209313))

(assert (= (and b!3209313 (not res!1306389)) b!3209316))

(assert (= (and b!3209316 res!1306392) b!3209322))

(assert (= (and b!3209322 res!1306388) b!3209311))

(assert (= (and b!3209311 res!1306386) b!3209319))

(assert (= (and b!3209316 (not res!1306387)) b!3209315))

(assert (= (and b!3209315 res!1306385) b!3209312))

(assert (= (and b!3209312 (not res!1306391)) b!3209310))

(assert (= (and b!3209310 (not res!1306390)) b!3209318))

(assert (= (or b!3209321 b!3209312 b!3209322) bm!232184))

(declare-fun m!3477053 () Bool)

(assert (=> b!3209317 m!3477053))

(assert (=> b!3209314 m!3476851))

(assert (=> b!3209314 m!3476851))

(declare-fun m!3477055 () Bool)

(assert (=> b!3209314 m!3477055))

(assert (=> b!3209314 m!3476949))

(assert (=> b!3209314 m!3477055))

(assert (=> b!3209314 m!3476949))

(declare-fun m!3477057 () Bool)

(assert (=> b!3209314 m!3477057))

(assert (=> b!3209318 m!3476851))

(assert (=> b!3209311 m!3476949))

(assert (=> b!3209311 m!3476949))

(assert (=> b!3209311 m!3476953))

(assert (=> d!878959 m!3476955))

(declare-fun m!3477059 () Bool)

(assert (=> d!878959 m!3477059))

(assert (=> bm!232184 m!3476955))

(assert (=> b!3209319 m!3476851))

(assert (=> b!3209310 m!3476949))

(assert (=> b!3209310 m!3476949))

(assert (=> b!3209310 m!3476953))

(assert (=> b!3209146 d!878959))

(declare-fun d!878961 () Bool)

(assert (=> d!878961 (= (get!11519 lt!1084691) (v!35697 lt!1084691))))

(assert (=> b!3209146 d!878961))

(declare-fun d!878963 () Bool)

(declare-fun res!1306397 () Bool)

(declare-fun e!2001206 () Bool)

(assert (=> d!878963 (=> res!1306397 e!2001206)))

(assert (=> d!878963 (= res!1306397 ((_ is Nil!36179) tokens!494))))

(assert (=> d!878963 (= (forall!7388 tokens!494 lambda!117478) e!2001206)))

(declare-fun b!3209328 () Bool)

(declare-fun e!2001207 () Bool)

(assert (=> b!3209328 (= e!2001206 e!2001207)))

(declare-fun res!1306398 () Bool)

(assert (=> b!3209328 (=> (not res!1306398) (not e!2001207))))

(declare-fun dynLambda!14613 (Int Token!9814) Bool)

(assert (=> b!3209328 (= res!1306398 (dynLambda!14613 lambda!117478 (h!41599 tokens!494)))))

(declare-fun b!3209329 () Bool)

(assert (=> b!3209329 (= e!2001207 (forall!7388 (t!238514 tokens!494) lambda!117478))))

(assert (= (and d!878963 (not res!1306397)) b!3209328))

(assert (= (and b!3209328 res!1306398) b!3209329))

(declare-fun b_lambda!87879 () Bool)

(assert (=> (not b_lambda!87879) (not b!3209328)))

(declare-fun m!3477061 () Bool)

(assert (=> b!3209328 m!3477061))

(declare-fun m!3477063 () Bool)

(assert (=> b!3209329 m!3477063))

(assert (=> b!3209124 d!878963))

(declare-fun b!3209340 () Bool)

(declare-fun e!2001216 () Bool)

(declare-fun inv!16 (TokenValue!5454) Bool)

(assert (=> b!3209340 (= e!2001216 (inv!16 (value!169344 (h!41599 tokens!494))))))

(declare-fun b!3209342 () Bool)

(declare-fun res!1306401 () Bool)

(declare-fun e!2001215 () Bool)

(assert (=> b!3209342 (=> res!1306401 e!2001215)))

(assert (=> b!3209342 (= res!1306401 (not ((_ is IntegerValue!16364) (value!169344 (h!41599 tokens!494)))))))

(declare-fun e!2001214 () Bool)

(assert (=> b!3209342 (= e!2001214 e!2001215)))

(declare-fun b!3209343 () Bool)

(declare-fun inv!15 (TokenValue!5454) Bool)

(assert (=> b!3209343 (= e!2001215 (inv!15 (value!169344 (h!41599 tokens!494))))))

(declare-fun b!3209344 () Bool)

(assert (=> b!3209344 (= e!2001216 e!2001214)))

(declare-fun c!538972 () Bool)

(assert (=> b!3209344 (= c!538972 ((_ is IntegerValue!16363) (value!169344 (h!41599 tokens!494))))))

(declare-fun b!3209341 () Bool)

(declare-fun inv!17 (TokenValue!5454) Bool)

(assert (=> b!3209341 (= e!2001214 (inv!17 (value!169344 (h!41599 tokens!494))))))

(declare-fun d!878965 () Bool)

(declare-fun c!538971 () Bool)

(assert (=> d!878965 (= c!538971 ((_ is IntegerValue!16362) (value!169344 (h!41599 tokens!494))))))

(assert (=> d!878965 (= (inv!21 (value!169344 (h!41599 tokens!494))) e!2001216)))

(assert (= (and d!878965 c!538971) b!3209340))

(assert (= (and d!878965 (not c!538971)) b!3209344))

(assert (= (and b!3209344 c!538972) b!3209341))

(assert (= (and b!3209344 (not c!538972)) b!3209342))

(assert (= (and b!3209342 (not res!1306401)) b!3209343))

(declare-fun m!3477065 () Bool)

(assert (=> b!3209340 m!3477065))

(declare-fun m!3477067 () Bool)

(assert (=> b!3209343 m!3477067))

(declare-fun m!3477069 () Bool)

(assert (=> b!3209341 m!3477069))

(assert (=> b!3209145 d!878965))

(declare-fun d!878967 () Bool)

(assert (=> d!878967 (= (list!12865 (charsOf!3240 (h!41599 tokens!494))) (list!12868 (c!538931 (charsOf!3240 (h!41599 tokens!494)))))))

(declare-fun bs!541530 () Bool)

(assert (= bs!541530 d!878967))

(declare-fun m!3477071 () Bool)

(assert (=> bs!541530 m!3477071))

(assert (=> b!3209126 d!878967))

(declare-fun d!878969 () Bool)

(declare-fun lt!1084776 () BalanceConc!21260)

(assert (=> d!878969 (= (list!12865 lt!1084776) (originalCharacters!5938 (h!41599 tokens!494)))))

(assert (=> d!878969 (= lt!1084776 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (value!169344 (h!41599 tokens!494))))))

(assert (=> d!878969 (= (charsOf!3240 (h!41599 tokens!494)) lt!1084776)))

(declare-fun b_lambda!87881 () Bool)

(assert (=> (not b_lambda!87881) (not d!878969)))

(declare-fun t!238534 () Bool)

(declare-fun tb!157583 () Bool)

(assert (=> (and b!3209139 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!238534) tb!157583))

(declare-fun b!3209345 () Bool)

(declare-fun e!2001219 () Bool)

(declare-fun tp!1013259 () Bool)

(assert (=> b!3209345 (= e!2001219 (and (inv!49039 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (value!169344 (h!41599 tokens!494))))) tp!1013259))))

(declare-fun result!199928 () Bool)

(assert (=> tb!157583 (= result!199928 (and (inv!49040 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (value!169344 (h!41599 tokens!494)))) e!2001219))))

(assert (= tb!157583 b!3209345))

(declare-fun m!3477073 () Bool)

(assert (=> b!3209345 m!3477073))

(declare-fun m!3477075 () Bool)

(assert (=> tb!157583 m!3477075))

(assert (=> d!878969 t!238534))

(declare-fun b_and!213735 () Bool)

(assert (= b_and!213729 (and (=> t!238534 result!199928) b_and!213735)))

(declare-fun t!238536 () Bool)

(declare-fun tb!157585 () Bool)

(assert (=> (and b!3209120 (= (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!238536) tb!157585))

(declare-fun result!199930 () Bool)

(assert (= result!199930 result!199928))

(assert (=> d!878969 t!238536))

(declare-fun b_and!213737 () Bool)

(assert (= b_and!213731 (and (=> t!238536 result!199930) b_and!213737)))

(declare-fun t!238538 () Bool)

(declare-fun tb!157587 () Bool)

(assert (=> (and b!3209140 (= (toChars!7167 (transformation!5224 (h!41598 rules!2135))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!238538) tb!157587))

(declare-fun result!199932 () Bool)

(assert (= result!199932 result!199928))

(assert (=> d!878969 t!238538))

(declare-fun b_and!213739 () Bool)

(assert (= b_and!213733 (and (=> t!238538 result!199932) b_and!213739)))

(declare-fun m!3477077 () Bool)

(assert (=> d!878969 m!3477077))

(declare-fun m!3477079 () Bool)

(assert (=> d!878969 m!3477079))

(assert (=> b!3209126 d!878969))

(declare-fun d!878971 () Bool)

(declare-fun res!1306404 () Bool)

(declare-fun e!2001220 () Bool)

(assert (=> d!878971 (=> (not res!1306404) (not e!2001220))))

(assert (=> d!878971 (= res!1306404 (not (isEmpty!20266 (originalCharacters!5938 (h!41599 tokens!494)))))))

(assert (=> d!878971 (= (inv!49036 (h!41599 tokens!494)) e!2001220)))

(declare-fun b!3209346 () Bool)

(declare-fun res!1306405 () Bool)

(assert (=> b!3209346 (=> (not res!1306405) (not e!2001220))))

(assert (=> b!3209346 (= res!1306405 (= (originalCharacters!5938 (h!41599 tokens!494)) (list!12865 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (value!169344 (h!41599 tokens!494))))))))

(declare-fun b!3209347 () Bool)

(assert (=> b!3209347 (= e!2001220 (= (size!27259 (h!41599 tokens!494)) (size!27260 (originalCharacters!5938 (h!41599 tokens!494)))))))

(assert (= (and d!878971 res!1306404) b!3209346))

(assert (= (and b!3209346 res!1306405) b!3209347))

(declare-fun b_lambda!87883 () Bool)

(assert (=> (not b_lambda!87883) (not b!3209346)))

(assert (=> b!3209346 t!238534))

(declare-fun b_and!213741 () Bool)

(assert (= b_and!213735 (and (=> t!238534 result!199928) b_and!213741)))

(assert (=> b!3209346 t!238536))

(declare-fun b_and!213743 () Bool)

(assert (= b_and!213737 (and (=> t!238536 result!199930) b_and!213743)))

(assert (=> b!3209346 t!238538))

(declare-fun b_and!213745 () Bool)

(assert (= b_and!213739 (and (=> t!238538 result!199932) b_and!213745)))

(declare-fun m!3477081 () Bool)

(assert (=> d!878971 m!3477081))

(assert (=> b!3209346 m!3477079))

(assert (=> b!3209346 m!3477079))

(declare-fun m!3477083 () Bool)

(assert (=> b!3209346 m!3477083))

(declare-fun m!3477085 () Bool)

(assert (=> b!3209347 m!3477085))

(assert (=> b!3209147 d!878971))

(declare-fun d!878973 () Bool)

(assert (=> d!878973 (= (inv!49032 (tag!5750 (h!41598 rules!2135))) (= (mod (str.len (value!169343 (tag!5750 (h!41598 rules!2135)))) 2) 0))))

(assert (=> b!3209125 d!878973))

(declare-fun d!878975 () Bool)

(declare-fun res!1306409 () Bool)

(declare-fun e!2001227 () Bool)

(assert (=> d!878975 (=> (not res!1306409) (not e!2001227))))

(declare-fun semiInverseModEq!2155 (Int Int) Bool)

(assert (=> d!878975 (= res!1306409 (semiInverseModEq!2155 (toChars!7167 (transformation!5224 (h!41598 rules!2135))) (toValue!7308 (transformation!5224 (h!41598 rules!2135)))))))

(assert (=> d!878975 (= (inv!49035 (transformation!5224 (h!41598 rules!2135))) e!2001227)))

(declare-fun b!3209356 () Bool)

(declare-fun equivClasses!2054 (Int Int) Bool)

(assert (=> b!3209356 (= e!2001227 (equivClasses!2054 (toChars!7167 (transformation!5224 (h!41598 rules!2135))) (toValue!7308 (transformation!5224 (h!41598 rules!2135)))))))

(assert (= (and d!878975 res!1306409) b!3209356))

(declare-fun m!3477095 () Bool)

(assert (=> d!878975 m!3477095))

(declare-fun m!3477097 () Bool)

(assert (=> b!3209356 m!3477097))

(assert (=> b!3209125 d!878975))

(declare-fun d!878979 () Bool)

(declare-fun lt!1084804 () Bool)

(declare-fun e!2001275 () Bool)

(assert (=> d!878979 (= lt!1084804 e!2001275)))

(declare-fun res!1306453 () Bool)

(assert (=> d!878979 (=> (not res!1306453) (not e!2001275))))

(assert (=> d!878979 (= res!1306453 (= (list!12869 (_1!20922 (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 separatorToken!241))))) (list!12869 (singletonSeq!2320 separatorToken!241))))))

(declare-fun e!2001274 () Bool)

(assert (=> d!878979 (= lt!1084804 e!2001274)))

(declare-fun res!1306454 () Bool)

(assert (=> d!878979 (=> (not res!1306454) (not e!2001274))))

(declare-fun lt!1084803 () tuple2!35576)

(assert (=> d!878979 (= res!1306454 (= (size!27261 (_1!20922 lt!1084803)) 1))))

(assert (=> d!878979 (= lt!1084803 (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 separatorToken!241))))))

(assert (=> d!878979 (not (isEmpty!20262 rules!2135))))

(assert (=> d!878979 (= (rulesProduceIndividualToken!2305 thiss!18206 rules!2135 separatorToken!241) lt!1084804)))

(declare-fun b!3209428 () Bool)

(declare-fun res!1306455 () Bool)

(assert (=> b!3209428 (=> (not res!1306455) (not e!2001274))))

(assert (=> b!3209428 (= res!1306455 (= (apply!8198 (_1!20922 lt!1084803) 0) separatorToken!241))))

(declare-fun b!3209429 () Bool)

(assert (=> b!3209429 (= e!2001274 (isEmpty!20263 (_2!20922 lt!1084803)))))

(declare-fun b!3209430 () Bool)

(assert (=> b!3209430 (= e!2001275 (isEmpty!20263 (_2!20922 (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 separatorToken!241))))))))

(assert (= (and d!878979 res!1306454) b!3209428))

(assert (= (and b!3209428 res!1306455) b!3209429))

(assert (= (and d!878979 res!1306453) b!3209430))

(assert (=> d!878979 m!3476815))

(declare-fun m!3477193 () Bool)

(assert (=> d!878979 m!3477193))

(assert (=> d!878979 m!3476815))

(declare-fun m!3477195 () Bool)

(assert (=> d!878979 m!3477195))

(assert (=> d!878979 m!3476815))

(declare-fun m!3477197 () Bool)

(assert (=> d!878979 m!3477197))

(assert (=> d!878979 m!3476869))

(declare-fun m!3477199 () Bool)

(assert (=> d!878979 m!3477199))

(assert (=> d!878979 m!3477195))

(declare-fun m!3477201 () Bool)

(assert (=> d!878979 m!3477201))

(declare-fun m!3477203 () Bool)

(assert (=> b!3209428 m!3477203))

(declare-fun m!3477205 () Bool)

(assert (=> b!3209429 m!3477205))

(assert (=> b!3209430 m!3476815))

(assert (=> b!3209430 m!3476815))

(assert (=> b!3209430 m!3477195))

(assert (=> b!3209430 m!3477195))

(assert (=> b!3209430 m!3477201))

(declare-fun m!3477207 () Bool)

(assert (=> b!3209430 m!3477207))

(assert (=> b!3209122 d!878979))

(declare-fun d!879013 () Bool)

(assert (=> d!879013 (= (maxPrefixOneRule!1592 thiss!18206 (rule!7664 (h!41599 (t!238514 tokens!494))) lt!1084664) (Some!7146 (tuple2!35575 (Token!9815 (apply!8197 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) (seqFromList!3519 lt!1084664)) (rule!7664 (h!41599 (t!238514 tokens!494))) (size!27260 lt!1084664) lt!1084664) Nil!36177)))))

(declare-fun lt!1084809 () Unit!50642)

(declare-fun choose!18726 (LexerInterface!4813 List!36302 List!36301 List!36301 List!36301 Rule!10248) Unit!50642)

(assert (=> d!879013 (= lt!1084809 (choose!18726 thiss!18206 rules!2135 lt!1084664 lt!1084664 Nil!36177 (rule!7664 (h!41599 (t!238514 tokens!494)))))))

(assert (=> d!879013 (not (isEmpty!20262 rules!2135))))

(assert (=> d!879013 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!705 thiss!18206 rules!2135 lt!1084664 lt!1084664 Nil!36177 (rule!7664 (h!41599 (t!238514 tokens!494)))) lt!1084809)))

(declare-fun bs!541538 () Bool)

(assert (= bs!541538 d!879013))

(declare-fun m!3477209 () Bool)

(assert (=> bs!541538 m!3477209))

(assert (=> bs!541538 m!3476869))

(assert (=> bs!541538 m!3476773))

(assert (=> bs!541538 m!3476793))

(assert (=> bs!541538 m!3476775))

(assert (=> bs!541538 m!3476773))

(assert (=> bs!541538 m!3476801))

(assert (=> b!3209121 d!879013))

(declare-fun d!879015 () Bool)

(declare-fun e!2001294 () Bool)

(assert (=> d!879015 e!2001294))

(declare-fun res!1306473 () Bool)

(assert (=> d!879015 (=> (not res!1306473) (not e!2001294))))

(declare-fun e!2001295 () Bool)

(assert (=> d!879015 (= res!1306473 e!2001295)))

(declare-fun c!538995 () Bool)

(declare-fun lt!1084813 () tuple2!35576)

(assert (=> d!879015 (= c!538995 (> (size!27261 (_1!20922 lt!1084813)) 0))))

(declare-fun lexTailRecV2!933 (LexerInterface!4813 List!36302 BalanceConc!21260 BalanceConc!21260 BalanceConc!21260 BalanceConc!21262) tuple2!35576)

(assert (=> d!879015 (= lt!1084813 (lexTailRecV2!933 thiss!18206 rules!2135 lt!1084659 (BalanceConc!21261 Empty!10823) lt!1084659 (BalanceConc!21263 Empty!10824)))))

(assert (=> d!879015 (= (lex!2143 thiss!18206 rules!2135 lt!1084659) lt!1084813)))

(declare-fun b!3209461 () Bool)

(declare-fun e!2001296 () Bool)

(assert (=> b!3209461 (= e!2001296 (not (isEmpty!20261 (_1!20922 lt!1084813))))))

(declare-fun b!3209462 () Bool)

(declare-fun res!1306474 () Bool)

(assert (=> b!3209462 (=> (not res!1306474) (not e!2001294))))

(declare-datatypes ((tuple2!35580 0))(
  ( (tuple2!35581 (_1!20924 List!36303) (_2!20924 List!36301)) )
))
(declare-fun lexList!1313 (LexerInterface!4813 List!36302 List!36301) tuple2!35580)

(assert (=> b!3209462 (= res!1306474 (= (list!12869 (_1!20922 lt!1084813)) (_1!20924 (lexList!1313 thiss!18206 rules!2135 (list!12865 lt!1084659)))))))

(declare-fun b!3209463 () Bool)

(assert (=> b!3209463 (= e!2001295 e!2001296)))

(declare-fun res!1306472 () Bool)

(declare-fun size!27263 (BalanceConc!21260) Int)

(assert (=> b!3209463 (= res!1306472 (< (size!27263 (_2!20922 lt!1084813)) (size!27263 lt!1084659)))))

(assert (=> b!3209463 (=> (not res!1306472) (not e!2001296))))

(declare-fun b!3209464 () Bool)

(assert (=> b!3209464 (= e!2001294 (= (list!12865 (_2!20922 lt!1084813)) (_2!20924 (lexList!1313 thiss!18206 rules!2135 (list!12865 lt!1084659)))))))

(declare-fun b!3209465 () Bool)

(assert (=> b!3209465 (= e!2001295 (= (_2!20922 lt!1084813) lt!1084659))))

(assert (= (and d!879015 c!538995) b!3209463))

(assert (= (and d!879015 (not c!538995)) b!3209465))

(assert (= (and b!3209463 res!1306472) b!3209461))

(assert (= (and d!879015 res!1306473) b!3209462))

(assert (= (and b!3209462 res!1306474) b!3209464))

(declare-fun m!3477237 () Bool)

(assert (=> b!3209463 m!3477237))

(declare-fun m!3477239 () Bool)

(assert (=> b!3209463 m!3477239))

(declare-fun m!3477241 () Bool)

(assert (=> b!3209461 m!3477241))

(declare-fun m!3477243 () Bool)

(assert (=> b!3209462 m!3477243))

(declare-fun m!3477245 () Bool)

(assert (=> b!3209462 m!3477245))

(assert (=> b!3209462 m!3477245))

(declare-fun m!3477247 () Bool)

(assert (=> b!3209462 m!3477247))

(declare-fun m!3477249 () Bool)

(assert (=> b!3209464 m!3477249))

(assert (=> b!3209464 m!3477245))

(assert (=> b!3209464 m!3477245))

(assert (=> b!3209464 m!3477247))

(declare-fun m!3477251 () Bool)

(assert (=> d!879015 m!3477251))

(declare-fun m!3477253 () Bool)

(assert (=> d!879015 m!3477253))

(assert (=> b!3209121 d!879015))

(declare-fun d!879023 () Bool)

(declare-fun e!2001310 () Bool)

(assert (=> d!879023 e!2001310))

(declare-fun res!1306488 () Bool)

(assert (=> d!879023 (=> res!1306488 e!2001310)))

(declare-fun lt!1084828 () Option!7148)

(declare-fun isEmpty!20270 (Option!7148) Bool)

(assert (=> d!879023 (= res!1306488 (isEmpty!20270 lt!1084828))))

(declare-fun e!2001314 () Option!7148)

(assert (=> d!879023 (= lt!1084828 e!2001314)))

(declare-fun c!539001 () Bool)

(assert (=> d!879023 (= c!539001 (and ((_ is Cons!36178) rules!2135) (= (tag!5750 (h!41598 rules!2135)) (tag!5750 (rule!7664 (h!41599 tokens!494))))))))

(assert (=> d!879023 (rulesInvariant!4210 thiss!18206 rules!2135)))

(assert (=> d!879023 (= (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 tokens!494)))) lt!1084828)))

(declare-fun b!3209487 () Bool)

(declare-fun e!2001312 () Bool)

(assert (=> b!3209487 (= e!2001312 (= (tag!5750 (get!11519 lt!1084828)) (tag!5750 (rule!7664 (h!41599 tokens!494)))))))

(declare-fun b!3209488 () Bool)

(declare-fun e!2001311 () Option!7148)

(assert (=> b!3209488 (= e!2001311 None!7147)))

(declare-fun b!3209489 () Bool)

(assert (=> b!3209489 (= e!2001314 e!2001311)))

(declare-fun c!539000 () Bool)

(assert (=> b!3209489 (= c!539000 (and ((_ is Cons!36178) rules!2135) (not (= (tag!5750 (h!41598 rules!2135)) (tag!5750 (rule!7664 (h!41599 tokens!494)))))))))

(declare-fun b!3209490 () Bool)

(assert (=> b!3209490 (= e!2001310 e!2001312)))

(declare-fun res!1306489 () Bool)

(assert (=> b!3209490 (=> (not res!1306489) (not e!2001312))))

(declare-fun contains!6462 (List!36302 Rule!10248) Bool)

(assert (=> b!3209490 (= res!1306489 (contains!6462 rules!2135 (get!11519 lt!1084828)))))

(declare-fun b!3209491 () Bool)

(assert (=> b!3209491 (= e!2001314 (Some!7147 (h!41598 rules!2135)))))

(declare-fun b!3209492 () Bool)

(declare-fun lt!1084825 () Unit!50642)

(declare-fun lt!1084824 () Unit!50642)

(assert (=> b!3209492 (= lt!1084825 lt!1084824)))

(assert (=> b!3209492 (rulesInvariant!4210 thiss!18206 (t!238513 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!349 (LexerInterface!4813 Rule!10248 List!36302) Unit!50642)

(assert (=> b!3209492 (= lt!1084824 (lemmaInvariantOnRulesThenOnTail!349 thiss!18206 (h!41598 rules!2135) (t!238513 rules!2135)))))

(assert (=> b!3209492 (= e!2001311 (getRuleFromTag!929 thiss!18206 (t!238513 rules!2135) (tag!5750 (rule!7664 (h!41599 tokens!494)))))))

(assert (= (and d!879023 c!539001) b!3209491))

(assert (= (and d!879023 (not c!539001)) b!3209489))

(assert (= (and b!3209489 c!539000) b!3209492))

(assert (= (and b!3209489 (not c!539000)) b!3209488))

(assert (= (and d!879023 (not res!1306488)) b!3209490))

(assert (= (and b!3209490 res!1306489) b!3209487))

(declare-fun m!3477255 () Bool)

(assert (=> d!879023 m!3477255))

(assert (=> d!879023 m!3476733))

(declare-fun m!3477259 () Bool)

(assert (=> b!3209487 m!3477259))

(assert (=> b!3209490 m!3477259))

(assert (=> b!3209490 m!3477259))

(declare-fun m!3477265 () Bool)

(assert (=> b!3209490 m!3477265))

(declare-fun m!3477267 () Bool)

(assert (=> b!3209492 m!3477267))

(declare-fun m!3477271 () Bool)

(assert (=> b!3209492 m!3477271))

(declare-fun m!3477273 () Bool)

(assert (=> b!3209492 m!3477273))

(assert (=> b!3209121 d!879023))

(declare-fun d!879025 () Bool)

(declare-fun e!2001315 () Bool)

(assert (=> d!879025 e!2001315))

(declare-fun res!1306490 () Bool)

(assert (=> d!879025 (=> (not res!1306490) (not e!2001315))))

(declare-fun lt!1084829 () BalanceConc!21262)

(assert (=> d!879025 (= res!1306490 (= (list!12869 lt!1084829) (Cons!36179 separatorToken!241 Nil!36179)))))

(assert (=> d!879025 (= lt!1084829 (singleton!994 separatorToken!241))))

(assert (=> d!879025 (= (singletonSeq!2320 separatorToken!241) lt!1084829)))

(declare-fun b!3209493 () Bool)

(assert (=> b!3209493 (= e!2001315 (isBalanced!3217 (c!538932 lt!1084829)))))

(assert (= (and d!879025 res!1306490) b!3209493))

(declare-fun m!3477283 () Bool)

(assert (=> d!879025 m!3477283))

(declare-fun m!3477285 () Bool)

(assert (=> d!879025 m!3477285))

(declare-fun m!3477287 () Bool)

(assert (=> b!3209493 m!3477287))

(assert (=> b!3209121 d!879025))

(declare-fun d!879029 () Bool)

(declare-fun lt!1084832 () Int)

(assert (=> d!879029 (>= lt!1084832 0)))

(declare-fun e!2001320 () Int)

(assert (=> d!879029 (= lt!1084832 e!2001320)))

(declare-fun c!539004 () Bool)

(assert (=> d!879029 (= c!539004 ((_ is Nil!36177) lt!1084683))))

(assert (=> d!879029 (= (size!27260 lt!1084683) lt!1084832)))

(declare-fun b!3209500 () Bool)

(assert (=> b!3209500 (= e!2001320 0)))

(declare-fun b!3209501 () Bool)

(assert (=> b!3209501 (= e!2001320 (+ 1 (size!27260 (t!238512 lt!1084683))))))

(assert (= (and d!879029 c!539004) b!3209500))

(assert (= (and d!879029 (not c!539004)) b!3209501))

(declare-fun m!3477289 () Bool)

(assert (=> b!3209501 m!3477289))

(assert (=> b!3209121 d!879029))

(declare-fun d!879031 () Bool)

(assert (=> d!879031 (dynLambda!14613 lambda!117479 (h!41599 (t!238514 tokens!494)))))

(declare-fun lt!1084835 () Unit!50642)

(declare-fun choose!18727 (List!36303 Int Token!9814) Unit!50642)

(assert (=> d!879031 (= lt!1084835 (choose!18727 tokens!494 lambda!117479 (h!41599 (t!238514 tokens!494))))))

(declare-fun e!2001326 () Bool)

(assert (=> d!879031 e!2001326))

(declare-fun res!1306500 () Bool)

(assert (=> d!879031 (=> (not res!1306500) (not e!2001326))))

(assert (=> d!879031 (= res!1306500 (forall!7388 tokens!494 lambda!117479))))

(assert (=> d!879031 (= (forallContained!1195 tokens!494 lambda!117479 (h!41599 (t!238514 tokens!494))) lt!1084835)))

(declare-fun b!3209509 () Bool)

(declare-fun contains!6463 (List!36303 Token!9814) Bool)

(assert (=> b!3209509 (= e!2001326 (contains!6463 tokens!494 (h!41599 (t!238514 tokens!494))))))

(assert (= (and d!879031 res!1306500) b!3209509))

(declare-fun b_lambda!87887 () Bool)

(assert (=> (not b_lambda!87887) (not d!879031)))

(declare-fun m!3477295 () Bool)

(assert (=> d!879031 m!3477295))

(declare-fun m!3477297 () Bool)

(assert (=> d!879031 m!3477297))

(declare-fun m!3477299 () Bool)

(assert (=> d!879031 m!3477299))

(declare-fun m!3477301 () Bool)

(assert (=> b!3209509 m!3477301))

(assert (=> b!3209121 d!879031))

(declare-fun d!879035 () Bool)

(declare-fun dynLambda!14614 (Int BalanceConc!21260) TokenValue!5454)

(assert (=> d!879035 (= (apply!8197 (transformation!5224 (rule!7664 (h!41599 tokens!494))) lt!1084685) (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) lt!1084685))))

(declare-fun b_lambda!87891 () Bool)

(assert (=> (not b_lambda!87891) (not d!879035)))

(declare-fun t!238542 () Bool)

(declare-fun tb!157589 () Bool)

(assert (=> (and b!3209139 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!238542) tb!157589))

(declare-fun result!199934 () Bool)

(assert (=> tb!157589 (= result!199934 (inv!21 (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) lt!1084685)))))

(declare-fun m!3477309 () Bool)

(assert (=> tb!157589 m!3477309))

(assert (=> d!879035 t!238542))

(declare-fun b_and!213753 () Bool)

(assert (= b_and!213711 (and (=> t!238542 result!199934) b_and!213753)))

(declare-fun t!238544 () Bool)

(declare-fun tb!157591 () Bool)

(assert (=> (and b!3209120 (= (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!238544) tb!157591))

(declare-fun result!199938 () Bool)

(assert (= result!199938 result!199934))

(assert (=> d!879035 t!238544))

(declare-fun b_and!213755 () Bool)

(assert (= b_and!213715 (and (=> t!238544 result!199938) b_and!213755)))

(declare-fun tb!157593 () Bool)

(declare-fun t!238546 () Bool)

(assert (=> (and b!3209140 (= (toValue!7308 (transformation!5224 (h!41598 rules!2135))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!238546) tb!157593))

(declare-fun result!199940 () Bool)

(assert (= result!199940 result!199934))

(assert (=> d!879035 t!238546))

(declare-fun b_and!213757 () Bool)

(assert (= b_and!213719 (and (=> t!238546 result!199940) b_and!213757)))

(declare-fun m!3477313 () Bool)

(assert (=> d!879035 m!3477313))

(assert (=> b!3209121 d!879035))

(declare-fun d!879039 () Bool)

(declare-fun e!2001338 () Bool)

(assert (=> d!879039 e!2001338))

(declare-fun res!1306511 () Bool)

(assert (=> d!879039 (=> (not res!1306511) (not e!2001338))))

(declare-fun lt!1084837 () BalanceConc!21262)

(assert (=> d!879039 (= res!1306511 (= (list!12869 lt!1084837) (Cons!36179 (h!41599 (t!238514 tokens!494)) Nil!36179)))))

(assert (=> d!879039 (= lt!1084837 (singleton!994 (h!41599 (t!238514 tokens!494))))))

(assert (=> d!879039 (= (singletonSeq!2320 (h!41599 (t!238514 tokens!494))) lt!1084837)))

(declare-fun b!3209528 () Bool)

(assert (=> b!3209528 (= e!2001338 (isBalanced!3217 (c!538932 lt!1084837)))))

(assert (= (and d!879039 res!1306511) b!3209528))

(declare-fun m!3477321 () Bool)

(assert (=> d!879039 m!3477321))

(declare-fun m!3477323 () Bool)

(assert (=> d!879039 m!3477323))

(declare-fun m!3477325 () Bool)

(assert (=> b!3209528 m!3477325))

(assert (=> b!3209121 d!879039))

(declare-fun d!879045 () Bool)

(declare-fun e!2001346 () Bool)

(assert (=> d!879045 e!2001346))

(declare-fun res!1306521 () Bool)

(assert (=> d!879045 (=> (not res!1306521) (not e!2001346))))

(declare-fun e!2001347 () Bool)

(assert (=> d!879045 (= res!1306521 e!2001347)))

(declare-fun c!539011 () Bool)

(declare-fun lt!1084839 () tuple2!35576)

(assert (=> d!879045 (= c!539011 (> (size!27261 (_1!20922 lt!1084839)) 0))))

(assert (=> d!879045 (= lt!1084839 (lexTailRecV2!933 thiss!18206 rules!2135 lt!1084684 (BalanceConc!21261 Empty!10823) lt!1084684 (BalanceConc!21263 Empty!10824)))))

(assert (=> d!879045 (= (lex!2143 thiss!18206 rules!2135 lt!1084684) lt!1084839)))

(declare-fun b!3209543 () Bool)

(declare-fun e!2001348 () Bool)

(assert (=> b!3209543 (= e!2001348 (not (isEmpty!20261 (_1!20922 lt!1084839))))))

(declare-fun b!3209544 () Bool)

(declare-fun res!1306522 () Bool)

(assert (=> b!3209544 (=> (not res!1306522) (not e!2001346))))

(assert (=> b!3209544 (= res!1306522 (= (list!12869 (_1!20922 lt!1084839)) (_1!20924 (lexList!1313 thiss!18206 rules!2135 (list!12865 lt!1084684)))))))

(declare-fun b!3209545 () Bool)

(assert (=> b!3209545 (= e!2001347 e!2001348)))

(declare-fun res!1306520 () Bool)

(assert (=> b!3209545 (= res!1306520 (< (size!27263 (_2!20922 lt!1084839)) (size!27263 lt!1084684)))))

(assert (=> b!3209545 (=> (not res!1306520) (not e!2001348))))

(declare-fun b!3209546 () Bool)

(assert (=> b!3209546 (= e!2001346 (= (list!12865 (_2!20922 lt!1084839)) (_2!20924 (lexList!1313 thiss!18206 rules!2135 (list!12865 lt!1084684)))))))

(declare-fun b!3209547 () Bool)

(assert (=> b!3209547 (= e!2001347 (= (_2!20922 lt!1084839) lt!1084684))))

(assert (= (and d!879045 c!539011) b!3209545))

(assert (= (and d!879045 (not c!539011)) b!3209547))

(assert (= (and b!3209545 res!1306520) b!3209543))

(assert (= (and d!879045 res!1306521) b!3209544))

(assert (= (and b!3209544 res!1306522) b!3209546))

(declare-fun m!3477327 () Bool)

(assert (=> b!3209545 m!3477327))

(declare-fun m!3477329 () Bool)

(assert (=> b!3209545 m!3477329))

(declare-fun m!3477331 () Bool)

(assert (=> b!3209543 m!3477331))

(declare-fun m!3477333 () Bool)

(assert (=> b!3209544 m!3477333))

(declare-fun m!3477337 () Bool)

(assert (=> b!3209544 m!3477337))

(assert (=> b!3209544 m!3477337))

(declare-fun m!3477343 () Bool)

(assert (=> b!3209544 m!3477343))

(declare-fun m!3477347 () Bool)

(assert (=> b!3209546 m!3477347))

(assert (=> b!3209546 m!3477337))

(assert (=> b!3209546 m!3477337))

(assert (=> b!3209546 m!3477343))

(declare-fun m!3477351 () Bool)

(assert (=> d!879045 m!3477351))

(declare-fun m!3477355 () Bool)

(assert (=> d!879045 m!3477355))

(assert (=> b!3209121 d!879045))

(declare-fun d!879047 () Bool)

(declare-fun lt!1084840 () BalanceConc!21260)

(assert (=> d!879047 (= (list!12865 lt!1084840) (printList!1363 thiss!18206 (list!12869 lt!1084669)))))

(assert (=> d!879047 (= lt!1084840 (printTailRec!1310 thiss!18206 lt!1084669 0 (BalanceConc!21261 Empty!10823)))))

(assert (=> d!879047 (= (print!1878 thiss!18206 lt!1084669) lt!1084840)))

(declare-fun bs!541540 () Bool)

(assert (= bs!541540 d!879047))

(declare-fun m!3477361 () Bool)

(assert (=> bs!541540 m!3477361))

(declare-fun m!3477363 () Bool)

(assert (=> bs!541540 m!3477363))

(assert (=> bs!541540 m!3477363))

(declare-fun m!3477365 () Bool)

(assert (=> bs!541540 m!3477365))

(assert (=> bs!541540 m!3476849))

(assert (=> b!3209121 d!879047))

(declare-fun d!879053 () Bool)

(assert (=> d!879053 (= (apply!8197 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) (seqFromList!3519 lt!1084664)) (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (seqFromList!3519 lt!1084664)))))

(declare-fun b_lambda!87893 () Bool)

(assert (=> (not b_lambda!87893) (not d!879053)))

(declare-fun t!238548 () Bool)

(declare-fun tb!157595 () Bool)

(assert (=> (and b!3209139 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!238548) tb!157595))

(declare-fun result!199942 () Bool)

(assert (=> tb!157595 (= result!199942 (inv!21 (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (seqFromList!3519 lt!1084664))))))

(declare-fun m!3477367 () Bool)

(assert (=> tb!157595 m!3477367))

(assert (=> d!879053 t!238548))

(declare-fun b_and!213759 () Bool)

(assert (= b_and!213753 (and (=> t!238548 result!199942) b_and!213759)))

(declare-fun tb!157597 () Bool)

(declare-fun t!238550 () Bool)

(assert (=> (and b!3209120 (= (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!238550) tb!157597))

(declare-fun result!199944 () Bool)

(assert (= result!199944 result!199942))

(assert (=> d!879053 t!238550))

(declare-fun b_and!213761 () Bool)

(assert (= b_and!213755 (and (=> t!238550 result!199944) b_and!213761)))

(declare-fun t!238552 () Bool)

(declare-fun tb!157599 () Bool)

(assert (=> (and b!3209140 (= (toValue!7308 (transformation!5224 (h!41598 rules!2135))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!238552) tb!157599))

(declare-fun result!199946 () Bool)

(assert (= result!199946 result!199942))

(assert (=> d!879053 t!238552))

(declare-fun b_and!213763 () Bool)

(assert (= b_and!213757 (and (=> t!238552 result!199946) b_and!213763)))

(assert (=> d!879053 m!3476773))

(declare-fun m!3477383 () Bool)

(assert (=> d!879053 m!3477383))

(assert (=> b!3209121 d!879053))

(declare-fun b!3209586 () Bool)

(declare-fun e!2001370 () List!36301)

(declare-fun call!232202 () List!36301)

(assert (=> b!3209586 (= e!2001370 call!232202)))

(declare-fun d!879055 () Bool)

(declare-fun c!539027 () Bool)

(assert (=> d!879055 (= c!539027 (or ((_ is EmptyExpr!9983) (regex!5224 (rule!7664 separatorToken!241))) ((_ is EmptyLang!9983) (regex!5224 (rule!7664 separatorToken!241)))))))

(declare-fun e!2001373 () List!36301)

(assert (=> d!879055 (= (usedCharacters!540 (regex!5224 (rule!7664 separatorToken!241))) e!2001373)))

(declare-fun bm!232196 () Bool)

(declare-fun call!232204 () List!36301)

(declare-fun call!232201 () List!36301)

(assert (=> bm!232196 (= call!232204 call!232201)))

(declare-fun b!3209587 () Bool)

(declare-fun e!2001371 () List!36301)

(assert (=> b!3209587 (= e!2001371 (Cons!36177 (c!538930 (regex!5224 (rule!7664 separatorToken!241))) Nil!36177))))

(declare-fun c!539026 () Bool)

(declare-fun call!232203 () List!36301)

(declare-fun bm!232197 () Bool)

(assert (=> bm!232197 (= call!232202 (++!8680 (ite c!539026 call!232203 call!232204) (ite c!539026 call!232204 call!232203)))))

(declare-fun b!3209588 () Bool)

(assert (=> b!3209588 (= e!2001373 e!2001371)))

(declare-fun c!539028 () Bool)

(assert (=> b!3209588 (= c!539028 ((_ is ElementMatch!9983) (regex!5224 (rule!7664 separatorToken!241))))))

(declare-fun b!3209589 () Bool)

(declare-fun c!539029 () Bool)

(assert (=> b!3209589 (= c!539029 ((_ is Star!9983) (regex!5224 (rule!7664 separatorToken!241))))))

(declare-fun e!2001372 () List!36301)

(assert (=> b!3209589 (= e!2001371 e!2001372)))

(declare-fun b!3209590 () Bool)

(assert (=> b!3209590 (= e!2001372 e!2001370)))

(assert (=> b!3209590 (= c!539026 ((_ is Union!9983) (regex!5224 (rule!7664 separatorToken!241))))))

(declare-fun b!3209591 () Bool)

(assert (=> b!3209591 (= e!2001370 call!232202)))

(declare-fun bm!232198 () Bool)

(assert (=> bm!232198 (= call!232203 (usedCharacters!540 (ite c!539026 (regOne!20479 (regex!5224 (rule!7664 separatorToken!241))) (regTwo!20478 (regex!5224 (rule!7664 separatorToken!241))))))))

(declare-fun b!3209592 () Bool)

(assert (=> b!3209592 (= e!2001372 call!232201)))

(declare-fun b!3209593 () Bool)

(assert (=> b!3209593 (= e!2001373 Nil!36177)))

(declare-fun bm!232199 () Bool)

(assert (=> bm!232199 (= call!232201 (usedCharacters!540 (ite c!539029 (reg!10312 (regex!5224 (rule!7664 separatorToken!241))) (ite c!539026 (regTwo!20479 (regex!5224 (rule!7664 separatorToken!241))) (regOne!20478 (regex!5224 (rule!7664 separatorToken!241)))))))))

(assert (= (and d!879055 c!539027) b!3209593))

(assert (= (and d!879055 (not c!539027)) b!3209588))

(assert (= (and b!3209588 c!539028) b!3209587))

(assert (= (and b!3209588 (not c!539028)) b!3209589))

(assert (= (and b!3209589 c!539029) b!3209592))

(assert (= (and b!3209589 (not c!539029)) b!3209590))

(assert (= (and b!3209590 c!539026) b!3209586))

(assert (= (and b!3209590 (not c!539026)) b!3209591))

(assert (= (or b!3209586 b!3209591) bm!232196))

(assert (= (or b!3209586 b!3209591) bm!232198))

(assert (= (or b!3209586 b!3209591) bm!232197))

(assert (= (or b!3209592 bm!232196) bm!232199))

(declare-fun m!3477429 () Bool)

(assert (=> bm!232197 m!3477429))

(declare-fun m!3477431 () Bool)

(assert (=> bm!232198 m!3477431))

(declare-fun m!3477435 () Bool)

(assert (=> bm!232199 m!3477435))

(assert (=> b!3209121 d!879055))

(declare-fun b!3209664 () Bool)

(declare-fun e!2001416 () Option!7147)

(declare-datatypes ((tuple2!35582 0))(
  ( (tuple2!35583 (_1!20925 List!36301) (_2!20925 List!36301)) )
))
(declare-fun lt!1084879 () tuple2!35582)

(assert (=> b!3209664 (= e!2001416 (Some!7146 (tuple2!35575 (Token!9815 (apply!8197 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) (seqFromList!3519 (_1!20925 lt!1084879))) (rule!7664 (h!41599 (t!238514 tokens!494))) (size!27263 (seqFromList!3519 (_1!20925 lt!1084879))) (_1!20925 lt!1084879)) (_2!20925 lt!1084879))))))

(declare-fun lt!1084881 () Unit!50642)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!803 (Regex!9983 List!36301) Unit!50642)

(assert (=> b!3209664 (= lt!1084881 (longestMatchIsAcceptedByMatchOrIsEmpty!803 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) lt!1084664))))

(declare-fun res!1306568 () Bool)

(declare-fun findLongestMatchInner!830 (Regex!9983 List!36301 Int List!36301 List!36301 Int) tuple2!35582)

(assert (=> b!3209664 (= res!1306568 (isEmpty!20266 (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) Nil!36177 (size!27260 Nil!36177) lt!1084664 lt!1084664 (size!27260 lt!1084664)))))))

(declare-fun e!2001418 () Bool)

(assert (=> b!3209664 (=> res!1306568 e!2001418)))

(assert (=> b!3209664 e!2001418))

(declare-fun lt!1084883 () Unit!50642)

(assert (=> b!3209664 (= lt!1084883 lt!1084881)))

(declare-fun lt!1084880 () Unit!50642)

(declare-fun lemmaSemiInverse!1176 (TokenValueInjection!10336 BalanceConc!21260) Unit!50642)

(assert (=> b!3209664 (= lt!1084880 (lemmaSemiInverse!1176 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) (seqFromList!3519 (_1!20925 lt!1084879))))))

(declare-fun b!3209665 () Bool)

(declare-fun res!1306565 () Bool)

(declare-fun e!2001415 () Bool)

(assert (=> b!3209665 (=> (not res!1306565) (not e!2001415))))

(declare-fun lt!1084882 () Option!7147)

(declare-fun get!11520 (Option!7147) tuple2!35574)

(assert (=> b!3209665 (= res!1306565 (< (size!27260 (_2!20921 (get!11520 lt!1084882))) (size!27260 lt!1084664)))))

(declare-fun b!3209666 () Bool)

(declare-fun e!2001417 () Bool)

(assert (=> b!3209666 (= e!2001417 e!2001415)))

(declare-fun res!1306570 () Bool)

(assert (=> b!3209666 (=> (not res!1306570) (not e!2001415))))

(assert (=> b!3209666 (= res!1306570 (matchR!4617 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084882))))))))

(declare-fun b!3209667 () Bool)

(declare-fun res!1306571 () Bool)

(assert (=> b!3209667 (=> (not res!1306571) (not e!2001415))))

(assert (=> b!3209667 (= res!1306571 (= (++!8680 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084882)))) (_2!20921 (get!11520 lt!1084882))) lt!1084664))))

(declare-fun b!3209668 () Bool)

(declare-fun res!1306567 () Bool)

(assert (=> b!3209668 (=> (not res!1306567) (not e!2001415))))

(assert (=> b!3209668 (= res!1306567 (= (rule!7664 (_1!20921 (get!11520 lt!1084882))) (rule!7664 (h!41599 (t!238514 tokens!494)))))))

(declare-fun b!3209669 () Bool)

(declare-fun res!1306569 () Bool)

(assert (=> b!3209669 (=> (not res!1306569) (not e!2001415))))

(assert (=> b!3209669 (= res!1306569 (= (value!169344 (_1!20921 (get!11520 lt!1084882))) (apply!8197 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084882)))) (seqFromList!3519 (originalCharacters!5938 (_1!20921 (get!11520 lt!1084882)))))))))

(declare-fun d!879071 () Bool)

(assert (=> d!879071 e!2001417))

(declare-fun res!1306566 () Bool)

(assert (=> d!879071 (=> res!1306566 e!2001417)))

(declare-fun isEmpty!20271 (Option!7147) Bool)

(assert (=> d!879071 (= res!1306566 (isEmpty!20271 lt!1084882))))

(assert (=> d!879071 (= lt!1084882 e!2001416)))

(declare-fun c!539047 () Bool)

(assert (=> d!879071 (= c!539047 (isEmpty!20266 (_1!20925 lt!1084879)))))

(declare-fun findLongestMatch!745 (Regex!9983 List!36301) tuple2!35582)

(assert (=> d!879071 (= lt!1084879 (findLongestMatch!745 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) lt!1084664))))

(declare-fun ruleValid!1647 (LexerInterface!4813 Rule!10248) Bool)

(assert (=> d!879071 (ruleValid!1647 thiss!18206 (rule!7664 (h!41599 (t!238514 tokens!494))))))

(assert (=> d!879071 (= (maxPrefixOneRule!1592 thiss!18206 (rule!7664 (h!41599 (t!238514 tokens!494))) lt!1084664) lt!1084882)))

(declare-fun b!3209670 () Bool)

(assert (=> b!3209670 (= e!2001418 (matchR!4617 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) Nil!36177 (size!27260 Nil!36177) lt!1084664 lt!1084664 (size!27260 lt!1084664)))))))

(declare-fun b!3209671 () Bool)

(assert (=> b!3209671 (= e!2001415 (= (size!27259 (_1!20921 (get!11520 lt!1084882))) (size!27260 (originalCharacters!5938 (_1!20921 (get!11520 lt!1084882))))))))

(declare-fun b!3209672 () Bool)

(assert (=> b!3209672 (= e!2001416 None!7146)))

(assert (= (and d!879071 c!539047) b!3209672))

(assert (= (and d!879071 (not c!539047)) b!3209664))

(assert (= (and b!3209664 (not res!1306568)) b!3209670))

(assert (= (and d!879071 (not res!1306566)) b!3209666))

(assert (= (and b!3209666 res!1306570) b!3209667))

(assert (= (and b!3209667 res!1306571) b!3209665))

(assert (= (and b!3209665 res!1306565) b!3209668))

(assert (= (and b!3209668 res!1306567) b!3209669))

(assert (= (and b!3209669 res!1306569) b!3209671))

(declare-fun m!3477559 () Bool)

(assert (=> b!3209666 m!3477559))

(declare-fun m!3477561 () Bool)

(assert (=> b!3209666 m!3477561))

(assert (=> b!3209666 m!3477561))

(declare-fun m!3477563 () Bool)

(assert (=> b!3209666 m!3477563))

(assert (=> b!3209666 m!3477563))

(declare-fun m!3477565 () Bool)

(assert (=> b!3209666 m!3477565))

(declare-fun m!3477567 () Bool)

(assert (=> b!3209664 m!3477567))

(declare-fun m!3477569 () Bool)

(assert (=> b!3209664 m!3477569))

(declare-fun m!3477571 () Bool)

(assert (=> b!3209664 m!3477571))

(declare-fun m!3477573 () Bool)

(assert (=> b!3209664 m!3477573))

(assert (=> b!3209664 m!3477569))

(assert (=> b!3209664 m!3476801))

(declare-fun m!3477575 () Bool)

(assert (=> b!3209664 m!3477575))

(assert (=> b!3209664 m!3477571))

(declare-fun m!3477577 () Bool)

(assert (=> b!3209664 m!3477577))

(declare-fun m!3477579 () Bool)

(assert (=> b!3209664 m!3477579))

(assert (=> b!3209664 m!3477571))

(declare-fun m!3477581 () Bool)

(assert (=> b!3209664 m!3477581))

(assert (=> b!3209664 m!3476801))

(assert (=> b!3209664 m!3477571))

(assert (=> b!3209669 m!3477559))

(declare-fun m!3477583 () Bool)

(assert (=> b!3209669 m!3477583))

(assert (=> b!3209669 m!3477583))

(declare-fun m!3477585 () Bool)

(assert (=> b!3209669 m!3477585))

(assert (=> b!3209668 m!3477559))

(assert (=> b!3209670 m!3477569))

(assert (=> b!3209670 m!3476801))

(assert (=> b!3209670 m!3477569))

(assert (=> b!3209670 m!3476801))

(assert (=> b!3209670 m!3477575))

(declare-fun m!3477587 () Bool)

(assert (=> b!3209670 m!3477587))

(declare-fun m!3477589 () Bool)

(assert (=> d!879071 m!3477589))

(declare-fun m!3477591 () Bool)

(assert (=> d!879071 m!3477591))

(declare-fun m!3477593 () Bool)

(assert (=> d!879071 m!3477593))

(declare-fun m!3477595 () Bool)

(assert (=> d!879071 m!3477595))

(assert (=> b!3209665 m!3477559))

(declare-fun m!3477597 () Bool)

(assert (=> b!3209665 m!3477597))

(assert (=> b!3209665 m!3476801))

(assert (=> b!3209667 m!3477559))

(assert (=> b!3209667 m!3477561))

(assert (=> b!3209667 m!3477561))

(assert (=> b!3209667 m!3477563))

(assert (=> b!3209667 m!3477563))

(declare-fun m!3477599 () Bool)

(assert (=> b!3209667 m!3477599))

(assert (=> b!3209671 m!3477559))

(declare-fun m!3477601 () Bool)

(assert (=> b!3209671 m!3477601))

(assert (=> b!3209121 d!879071))

(declare-fun d!879103 () Bool)

(assert (=> d!879103 (= (isDefined!5554 lt!1084691) (not (isEmpty!20270 lt!1084691)))))

(declare-fun bs!541546 () Bool)

(assert (= bs!541546 d!879103))

(declare-fun m!3477603 () Bool)

(assert (=> bs!541546 m!3477603))

(assert (=> b!3209121 d!879103))

(declare-fun b!3209673 () Bool)

(declare-fun e!2001419 () List!36301)

(declare-fun call!232218 () List!36301)

(assert (=> b!3209673 (= e!2001419 call!232218)))

(declare-fun d!879105 () Bool)

(declare-fun c!539049 () Bool)

(assert (=> d!879105 (= c!539049 (or ((_ is EmptyExpr!9983) (regex!5224 (rule!7664 (h!41599 tokens!494)))) ((_ is EmptyLang!9983) (regex!5224 (rule!7664 (h!41599 tokens!494))))))))

(declare-fun e!2001422 () List!36301)

(assert (=> d!879105 (= (usedCharacters!540 (regex!5224 (rule!7664 (h!41599 tokens!494)))) e!2001422)))

(declare-fun bm!232212 () Bool)

(declare-fun call!232220 () List!36301)

(declare-fun call!232217 () List!36301)

(assert (=> bm!232212 (= call!232220 call!232217)))

(declare-fun b!3209674 () Bool)

(declare-fun e!2001420 () List!36301)

(assert (=> b!3209674 (= e!2001420 (Cons!36177 (c!538930 (regex!5224 (rule!7664 (h!41599 tokens!494)))) Nil!36177))))

(declare-fun bm!232213 () Bool)

(declare-fun c!539048 () Bool)

(declare-fun call!232219 () List!36301)

(assert (=> bm!232213 (= call!232218 (++!8680 (ite c!539048 call!232219 call!232220) (ite c!539048 call!232220 call!232219)))))

(declare-fun b!3209675 () Bool)

(assert (=> b!3209675 (= e!2001422 e!2001420)))

(declare-fun c!539050 () Bool)

(assert (=> b!3209675 (= c!539050 ((_ is ElementMatch!9983) (regex!5224 (rule!7664 (h!41599 tokens!494)))))))

(declare-fun b!3209676 () Bool)

(declare-fun c!539051 () Bool)

(assert (=> b!3209676 (= c!539051 ((_ is Star!9983) (regex!5224 (rule!7664 (h!41599 tokens!494)))))))

(declare-fun e!2001421 () List!36301)

(assert (=> b!3209676 (= e!2001420 e!2001421)))

(declare-fun b!3209677 () Bool)

(assert (=> b!3209677 (= e!2001421 e!2001419)))

(assert (=> b!3209677 (= c!539048 ((_ is Union!9983) (regex!5224 (rule!7664 (h!41599 tokens!494)))))))

(declare-fun b!3209678 () Bool)

(assert (=> b!3209678 (= e!2001419 call!232218)))

(declare-fun bm!232214 () Bool)

(assert (=> bm!232214 (= call!232219 (usedCharacters!540 (ite c!539048 (regOne!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 tokens!494)))))))))

(declare-fun b!3209679 () Bool)

(assert (=> b!3209679 (= e!2001421 call!232217)))

(declare-fun b!3209680 () Bool)

(assert (=> b!3209680 (= e!2001422 Nil!36177)))

(declare-fun bm!232215 () Bool)

(assert (=> bm!232215 (= call!232217 (usedCharacters!540 (ite c!539051 (reg!10312 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (ite c!539048 (regTwo!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (regOne!20478 (regex!5224 (rule!7664 (h!41599 tokens!494))))))))))

(assert (= (and d!879105 c!539049) b!3209680))

(assert (= (and d!879105 (not c!539049)) b!3209675))

(assert (= (and b!3209675 c!539050) b!3209674))

(assert (= (and b!3209675 (not c!539050)) b!3209676))

(assert (= (and b!3209676 c!539051) b!3209679))

(assert (= (and b!3209676 (not c!539051)) b!3209677))

(assert (= (and b!3209677 c!539048) b!3209673))

(assert (= (and b!3209677 (not c!539048)) b!3209678))

(assert (= (or b!3209673 b!3209678) bm!232212))

(assert (= (or b!3209673 b!3209678) bm!232214))

(assert (= (or b!3209673 b!3209678) bm!232213))

(assert (= (or b!3209679 bm!232212) bm!232215))

(declare-fun m!3477605 () Bool)

(assert (=> bm!232213 m!3477605))

(declare-fun m!3477607 () Bool)

(assert (=> bm!232214 m!3477607))

(declare-fun m!3477609 () Bool)

(assert (=> bm!232215 m!3477609))

(assert (=> b!3209121 d!879105))

(declare-fun d!879107 () Bool)

(assert (=> d!879107 (rulesProduceIndividualToken!2305 thiss!18206 rules!2135 (h!41599 tokens!494))))

(declare-fun lt!1084906 () Unit!50642)

(declare-fun choose!18728 (LexerInterface!4813 List!36302 List!36303 Token!9814) Unit!50642)

(assert (=> d!879107 (= lt!1084906 (choose!18728 thiss!18206 rules!2135 tokens!494 (h!41599 tokens!494)))))

(assert (=> d!879107 (not (isEmpty!20262 rules!2135))))

(assert (=> d!879107 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!852 thiss!18206 rules!2135 tokens!494 (h!41599 tokens!494)) lt!1084906)))

(declare-fun bs!541548 () Bool)

(assert (= bs!541548 d!879107))

(assert (=> bs!541548 m!3476743))

(declare-fun m!3477671 () Bool)

(assert (=> bs!541548 m!3477671))

(assert (=> bs!541548 m!3476869))

(assert (=> b!3209121 d!879107))

(declare-fun d!879119 () Bool)

(assert (=> d!879119 (= (isDefined!5554 lt!1084688) (not (isEmpty!20270 lt!1084688)))))

(declare-fun bs!541549 () Bool)

(assert (= bs!541549 d!879119))

(declare-fun m!3477673 () Bool)

(assert (=> bs!541549 m!3477673))

(assert (=> b!3209121 d!879119))

(declare-fun d!879121 () Bool)

(declare-fun lt!1084908 () Bool)

(declare-fun e!2001444 () Bool)

(assert (=> d!879121 (= lt!1084908 e!2001444)))

(declare-fun res!1306593 () Bool)

(assert (=> d!879121 (=> (not res!1306593) (not e!2001444))))

(assert (=> d!879121 (= res!1306593 (= (list!12869 (_1!20922 (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 (t!238514 tokens!494))))))) (list!12869 (singletonSeq!2320 (h!41599 (t!238514 tokens!494))))))))

(declare-fun e!2001443 () Bool)

(assert (=> d!879121 (= lt!1084908 e!2001443)))

(declare-fun res!1306594 () Bool)

(assert (=> d!879121 (=> (not res!1306594) (not e!2001443))))

(declare-fun lt!1084907 () tuple2!35576)

(assert (=> d!879121 (= res!1306594 (= (size!27261 (_1!20922 lt!1084907)) 1))))

(assert (=> d!879121 (= lt!1084907 (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 (t!238514 tokens!494))))))))

(assert (=> d!879121 (not (isEmpty!20262 rules!2135))))

(assert (=> d!879121 (= (rulesProduceIndividualToken!2305 thiss!18206 rules!2135 (h!41599 (t!238514 tokens!494))) lt!1084908)))

(declare-fun b!3209724 () Bool)

(declare-fun res!1306595 () Bool)

(assert (=> b!3209724 (=> (not res!1306595) (not e!2001443))))

(assert (=> b!3209724 (= res!1306595 (= (apply!8198 (_1!20922 lt!1084907) 0) (h!41599 (t!238514 tokens!494))))))

(declare-fun b!3209725 () Bool)

(assert (=> b!3209725 (= e!2001443 (isEmpty!20263 (_2!20922 lt!1084907)))))

(declare-fun b!3209726 () Bool)

(assert (=> b!3209726 (= e!2001444 (isEmpty!20263 (_2!20922 (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 (t!238514 tokens!494))))))))))

(assert (= (and d!879121 res!1306594) b!3209724))

(assert (= (and b!3209724 res!1306595) b!3209725))

(assert (= (and d!879121 res!1306593) b!3209726))

(assert (=> d!879121 m!3476845))

(declare-fun m!3477675 () Bool)

(assert (=> d!879121 m!3477675))

(assert (=> d!879121 m!3476845))

(declare-fun m!3477677 () Bool)

(assert (=> d!879121 m!3477677))

(assert (=> d!879121 m!3476845))

(declare-fun m!3477679 () Bool)

(assert (=> d!879121 m!3477679))

(assert (=> d!879121 m!3476869))

(declare-fun m!3477681 () Bool)

(assert (=> d!879121 m!3477681))

(assert (=> d!879121 m!3477677))

(declare-fun m!3477683 () Bool)

(assert (=> d!879121 m!3477683))

(declare-fun m!3477685 () Bool)

(assert (=> b!3209724 m!3477685))

(declare-fun m!3477687 () Bool)

(assert (=> b!3209725 m!3477687))

(assert (=> b!3209726 m!3476845))

(assert (=> b!3209726 m!3476845))

(assert (=> b!3209726 m!3477677))

(assert (=> b!3209726 m!3477677))

(assert (=> b!3209726 m!3477683))

(declare-fun m!3477689 () Bool)

(assert (=> b!3209726 m!3477689))

(assert (=> b!3209121 d!879121))

(declare-fun d!879123 () Bool)

(declare-fun lt!1084909 () BalanceConc!21260)

(assert (=> d!879123 (= (list!12865 lt!1084909) (printList!1363 thiss!18206 (list!12869 lt!1084657)))))

(assert (=> d!879123 (= lt!1084909 (printTailRec!1310 thiss!18206 lt!1084657 0 (BalanceConc!21261 Empty!10823)))))

(assert (=> d!879123 (= (print!1878 thiss!18206 lt!1084657) lt!1084909)))

(declare-fun bs!541550 () Bool)

(assert (= bs!541550 d!879123))

(declare-fun m!3477691 () Bool)

(assert (=> bs!541550 m!3477691))

(declare-fun m!3477693 () Bool)

(assert (=> bs!541550 m!3477693))

(assert (=> bs!541550 m!3477693))

(declare-fun m!3477695 () Bool)

(assert (=> bs!541550 m!3477695))

(assert (=> bs!541550 m!3476853))

(assert (=> b!3209121 d!879123))

(declare-fun d!879125 () Bool)

(declare-fun lt!1084912 () Int)

(declare-fun size!27264 (List!36303) Int)

(assert (=> d!879125 (= lt!1084912 (size!27264 (list!12869 (_1!20922 lt!1084668))))))

(declare-fun size!27265 (Conc!10824) Int)

(assert (=> d!879125 (= lt!1084912 (size!27265 (c!538932 (_1!20922 lt!1084668))))))

(assert (=> d!879125 (= (size!27261 (_1!20922 lt!1084668)) lt!1084912)))

(declare-fun bs!541551 () Bool)

(assert (= bs!541551 d!879125))

(declare-fun m!3477697 () Bool)

(assert (=> bs!541551 m!3477697))

(assert (=> bs!541551 m!3477697))

(declare-fun m!3477699 () Bool)

(assert (=> bs!541551 m!3477699))

(declare-fun m!3477701 () Bool)

(assert (=> bs!541551 m!3477701))

(assert (=> b!3209121 d!879125))

(declare-fun d!879127 () Bool)

(assert (=> d!879127 (= (maxPrefixOneRule!1592 thiss!18206 (rule!7664 (h!41599 tokens!494)) lt!1084683) (Some!7146 (tuple2!35575 (Token!9815 (apply!8197 (transformation!5224 (rule!7664 (h!41599 tokens!494))) (seqFromList!3519 lt!1084683)) (rule!7664 (h!41599 tokens!494)) (size!27260 lt!1084683) lt!1084683) Nil!36177)))))

(declare-fun lt!1084913 () Unit!50642)

(assert (=> d!879127 (= lt!1084913 (choose!18726 thiss!18206 rules!2135 lt!1084683 lt!1084683 Nil!36177 (rule!7664 (h!41599 tokens!494))))))

(assert (=> d!879127 (not (isEmpty!20262 rules!2135))))

(assert (=> d!879127 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!705 thiss!18206 rules!2135 lt!1084683 lt!1084683 Nil!36177 (rule!7664 (h!41599 tokens!494))) lt!1084913)))

(declare-fun bs!541552 () Bool)

(assert (= bs!541552 d!879127))

(declare-fun m!3477703 () Bool)

(assert (=> bs!541552 m!3477703))

(assert (=> bs!541552 m!3476869))

(assert (=> bs!541552 m!3476727))

(declare-fun m!3477705 () Bool)

(assert (=> bs!541552 m!3477705))

(assert (=> bs!541552 m!3476823))

(assert (=> bs!541552 m!3476727))

(assert (=> bs!541552 m!3476779))

(assert (=> b!3209121 d!879127))

(declare-fun d!879129 () Bool)

(assert (=> d!879129 (= (head!7043 lt!1084696) (h!41597 lt!1084696))))

(assert (=> b!3209121 d!879129))

(declare-fun d!879131 () Bool)

(declare-fun fromListB!1541 (List!36301) BalanceConc!21260)

(assert (=> d!879131 (= (seqFromList!3519 lt!1084664) (fromListB!1541 lt!1084664))))

(declare-fun bs!541553 () Bool)

(assert (= bs!541553 d!879131))

(declare-fun m!3477707 () Bool)

(assert (=> bs!541553 m!3477707))

(assert (=> b!3209121 d!879131))

(declare-fun d!879133 () Bool)

(assert (=> d!879133 (rulesProduceIndividualToken!2305 thiss!18206 rules!2135 (h!41599 (t!238514 tokens!494)))))

(declare-fun lt!1084914 () Unit!50642)

(assert (=> d!879133 (= lt!1084914 (choose!18728 thiss!18206 rules!2135 tokens!494 (h!41599 (t!238514 tokens!494))))))

(assert (=> d!879133 (not (isEmpty!20262 rules!2135))))

(assert (=> d!879133 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!852 thiss!18206 rules!2135 tokens!494 (h!41599 (t!238514 tokens!494))) lt!1084914)))

(declare-fun bs!541554 () Bool)

(assert (= bs!541554 d!879133))

(assert (=> bs!541554 m!3476819))

(declare-fun m!3477709 () Bool)

(assert (=> bs!541554 m!3477709))

(assert (=> bs!541554 m!3476869))

(assert (=> b!3209121 d!879133))

(declare-fun d!879135 () Bool)

(declare-fun lt!1084915 () Int)

(assert (=> d!879135 (= lt!1084915 (size!27264 (list!12869 (_1!20922 lt!1084679))))))

(assert (=> d!879135 (= lt!1084915 (size!27265 (c!538932 (_1!20922 lt!1084679))))))

(assert (=> d!879135 (= (size!27261 (_1!20922 lt!1084679)) lt!1084915)))

(declare-fun bs!541555 () Bool)

(assert (= bs!541555 d!879135))

(declare-fun m!3477711 () Bool)

(assert (=> bs!541555 m!3477711))

(assert (=> bs!541555 m!3477711))

(declare-fun m!3477713 () Bool)

(assert (=> bs!541555 m!3477713))

(declare-fun m!3477715 () Bool)

(assert (=> bs!541555 m!3477715))

(assert (=> b!3209121 d!879135))

(declare-fun b!3209745 () Bool)

(declare-fun e!2001451 () Option!7147)

(declare-fun call!232227 () Option!7147)

(assert (=> b!3209745 (= e!2001451 call!232227)))

(declare-fun d!879137 () Bool)

(declare-fun e!2001453 () Bool)

(assert (=> d!879137 e!2001453))

(declare-fun res!1306614 () Bool)

(assert (=> d!879137 (=> res!1306614 e!2001453)))

(declare-fun lt!1084932 () Option!7147)

(assert (=> d!879137 (= res!1306614 (isEmpty!20271 lt!1084932))))

(assert (=> d!879137 (= lt!1084932 e!2001451)))

(declare-fun c!539065 () Bool)

(assert (=> d!879137 (= c!539065 (and ((_ is Cons!36178) rules!2135) ((_ is Nil!36178) (t!238513 rules!2135))))))

(declare-fun lt!1084929 () Unit!50642)

(declare-fun lt!1084933 () Unit!50642)

(assert (=> d!879137 (= lt!1084929 lt!1084933)))

(declare-fun isPrefix!2783 (List!36301 List!36301) Bool)

(assert (=> d!879137 (isPrefix!2783 lt!1084663 lt!1084663)))

(declare-fun lemmaIsPrefixRefl!1742 (List!36301 List!36301) Unit!50642)

(assert (=> d!879137 (= lt!1084933 (lemmaIsPrefixRefl!1742 lt!1084663 lt!1084663))))

(declare-fun rulesValidInductive!1776 (LexerInterface!4813 List!36302) Bool)

(assert (=> d!879137 (rulesValidInductive!1776 thiss!18206 rules!2135)))

(assert (=> d!879137 (= (maxPrefix!2455 thiss!18206 rules!2135 lt!1084663) lt!1084932)))

(declare-fun b!3209746 () Bool)

(declare-fun res!1306615 () Bool)

(declare-fun e!2001452 () Bool)

(assert (=> b!3209746 (=> (not res!1306615) (not e!2001452))))

(assert (=> b!3209746 (= res!1306615 (< (size!27260 (_2!20921 (get!11520 lt!1084932))) (size!27260 lt!1084663)))))

(declare-fun b!3209747 () Bool)

(declare-fun res!1306613 () Bool)

(assert (=> b!3209747 (=> (not res!1306613) (not e!2001452))))

(assert (=> b!3209747 (= res!1306613 (= (value!169344 (_1!20921 (get!11520 lt!1084932))) (apply!8197 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932)))) (seqFromList!3519 (originalCharacters!5938 (_1!20921 (get!11520 lt!1084932)))))))))

(declare-fun b!3209748 () Bool)

(assert (=> b!3209748 (= e!2001453 e!2001452)))

(declare-fun res!1306611 () Bool)

(assert (=> b!3209748 (=> (not res!1306611) (not e!2001452))))

(declare-fun isDefined!5555 (Option!7147) Bool)

(assert (=> b!3209748 (= res!1306611 (isDefined!5555 lt!1084932))))

(declare-fun b!3209749 () Bool)

(declare-fun res!1306616 () Bool)

(assert (=> b!3209749 (=> (not res!1306616) (not e!2001452))))

(assert (=> b!3209749 (= res!1306616 (= (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084932)))) (originalCharacters!5938 (_1!20921 (get!11520 lt!1084932)))))))

(declare-fun bm!232222 () Bool)

(assert (=> bm!232222 (= call!232227 (maxPrefixOneRule!1592 thiss!18206 (h!41598 rules!2135) lt!1084663))))

(declare-fun b!3209750 () Bool)

(declare-fun res!1306612 () Bool)

(assert (=> b!3209750 (=> (not res!1306612) (not e!2001452))))

(assert (=> b!3209750 (= res!1306612 (= (++!8680 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084932)))) (_2!20921 (get!11520 lt!1084932))) lt!1084663))))

(declare-fun b!3209751 () Bool)

(declare-fun res!1306610 () Bool)

(assert (=> b!3209751 (=> (not res!1306610) (not e!2001452))))

(assert (=> b!3209751 (= res!1306610 (matchR!4617 (regex!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932)))) (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084932))))))))

(declare-fun b!3209752 () Bool)

(assert (=> b!3209752 (= e!2001452 (contains!6462 rules!2135 (rule!7664 (_1!20921 (get!11520 lt!1084932)))))))

(declare-fun b!3209753 () Bool)

(declare-fun lt!1084931 () Option!7147)

(declare-fun lt!1084930 () Option!7147)

(assert (=> b!3209753 (= e!2001451 (ite (and ((_ is None!7146) lt!1084931) ((_ is None!7146) lt!1084930)) None!7146 (ite ((_ is None!7146) lt!1084930) lt!1084931 (ite ((_ is None!7146) lt!1084931) lt!1084930 (ite (>= (size!27259 (_1!20921 (v!35696 lt!1084931))) (size!27259 (_1!20921 (v!35696 lt!1084930)))) lt!1084931 lt!1084930)))))))

(assert (=> b!3209753 (= lt!1084931 call!232227)))

(assert (=> b!3209753 (= lt!1084930 (maxPrefix!2455 thiss!18206 (t!238513 rules!2135) lt!1084663))))

(assert (= (and d!879137 c!539065) b!3209745))

(assert (= (and d!879137 (not c!539065)) b!3209753))

(assert (= (or b!3209745 b!3209753) bm!232222))

(assert (= (and d!879137 (not res!1306614)) b!3209748))

(assert (= (and b!3209748 res!1306611) b!3209749))

(assert (= (and b!3209749 res!1306616) b!3209746))

(assert (= (and b!3209746 res!1306615) b!3209750))

(assert (= (and b!3209750 res!1306612) b!3209747))

(assert (= (and b!3209747 res!1306613) b!3209751))

(assert (= (and b!3209751 res!1306610) b!3209752))

(declare-fun m!3477723 () Bool)

(assert (=> b!3209750 m!3477723))

(declare-fun m!3477725 () Bool)

(assert (=> b!3209750 m!3477725))

(assert (=> b!3209750 m!3477725))

(declare-fun m!3477727 () Bool)

(assert (=> b!3209750 m!3477727))

(assert (=> b!3209750 m!3477727))

(declare-fun m!3477729 () Bool)

(assert (=> b!3209750 m!3477729))

(declare-fun m!3477731 () Bool)

(assert (=> b!3209753 m!3477731))

(assert (=> b!3209752 m!3477723))

(declare-fun m!3477733 () Bool)

(assert (=> b!3209752 m!3477733))

(assert (=> b!3209749 m!3477723))

(assert (=> b!3209749 m!3477725))

(assert (=> b!3209749 m!3477725))

(assert (=> b!3209749 m!3477727))

(declare-fun m!3477735 () Bool)

(assert (=> bm!232222 m!3477735))

(assert (=> b!3209747 m!3477723))

(declare-fun m!3477737 () Bool)

(assert (=> b!3209747 m!3477737))

(assert (=> b!3209747 m!3477737))

(declare-fun m!3477739 () Bool)

(assert (=> b!3209747 m!3477739))

(declare-fun m!3477741 () Bool)

(assert (=> d!879137 m!3477741))

(declare-fun m!3477743 () Bool)

(assert (=> d!879137 m!3477743))

(declare-fun m!3477745 () Bool)

(assert (=> d!879137 m!3477745))

(declare-fun m!3477747 () Bool)

(assert (=> d!879137 m!3477747))

(assert (=> b!3209746 m!3477723))

(declare-fun m!3477749 () Bool)

(assert (=> b!3209746 m!3477749))

(declare-fun m!3477751 () Bool)

(assert (=> b!3209746 m!3477751))

(declare-fun m!3477753 () Bool)

(assert (=> b!3209748 m!3477753))

(assert (=> b!3209751 m!3477723))

(assert (=> b!3209751 m!3477725))

(assert (=> b!3209751 m!3477725))

(assert (=> b!3209751 m!3477727))

(assert (=> b!3209751 m!3477727))

(declare-fun m!3477755 () Bool)

(assert (=> b!3209751 m!3477755))

(assert (=> b!3209121 d!879137))

(declare-fun d!879145 () Bool)

(declare-fun e!2001454 () Bool)

(assert (=> d!879145 e!2001454))

(declare-fun res!1306617 () Bool)

(assert (=> d!879145 (=> res!1306617 e!2001454)))

(declare-fun lt!1084936 () Option!7148)

(assert (=> d!879145 (= res!1306617 (isEmpty!20270 lt!1084936))))

(declare-fun e!2001457 () Option!7148)

(assert (=> d!879145 (= lt!1084936 e!2001457)))

(declare-fun c!539067 () Bool)

(assert (=> d!879145 (= c!539067 (and ((_ is Cons!36178) rules!2135) (= (tag!5750 (h!41598 rules!2135)) (tag!5750 (rule!7664 separatorToken!241)))))))

(assert (=> d!879145 (rulesInvariant!4210 thiss!18206 rules!2135)))

(assert (=> d!879145 (= (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 separatorToken!241))) lt!1084936)))

(declare-fun b!3209754 () Bool)

(declare-fun e!2001456 () Bool)

(assert (=> b!3209754 (= e!2001456 (= (tag!5750 (get!11519 lt!1084936)) (tag!5750 (rule!7664 separatorToken!241))))))

(declare-fun b!3209755 () Bool)

(declare-fun e!2001455 () Option!7148)

(assert (=> b!3209755 (= e!2001455 None!7147)))

(declare-fun b!3209756 () Bool)

(assert (=> b!3209756 (= e!2001457 e!2001455)))

(declare-fun c!539066 () Bool)

(assert (=> b!3209756 (= c!539066 (and ((_ is Cons!36178) rules!2135) (not (= (tag!5750 (h!41598 rules!2135)) (tag!5750 (rule!7664 separatorToken!241))))))))

(declare-fun b!3209757 () Bool)

(assert (=> b!3209757 (= e!2001454 e!2001456)))

(declare-fun res!1306618 () Bool)

(assert (=> b!3209757 (=> (not res!1306618) (not e!2001456))))

(assert (=> b!3209757 (= res!1306618 (contains!6462 rules!2135 (get!11519 lt!1084936)))))

(declare-fun b!3209758 () Bool)

(assert (=> b!3209758 (= e!2001457 (Some!7147 (h!41598 rules!2135)))))

(declare-fun b!3209759 () Bool)

(declare-fun lt!1084935 () Unit!50642)

(declare-fun lt!1084934 () Unit!50642)

(assert (=> b!3209759 (= lt!1084935 lt!1084934)))

(assert (=> b!3209759 (rulesInvariant!4210 thiss!18206 (t!238513 rules!2135))))

(assert (=> b!3209759 (= lt!1084934 (lemmaInvariantOnRulesThenOnTail!349 thiss!18206 (h!41598 rules!2135) (t!238513 rules!2135)))))

(assert (=> b!3209759 (= e!2001455 (getRuleFromTag!929 thiss!18206 (t!238513 rules!2135) (tag!5750 (rule!7664 separatorToken!241))))))

(assert (= (and d!879145 c!539067) b!3209758))

(assert (= (and d!879145 (not c!539067)) b!3209756))

(assert (= (and b!3209756 c!539066) b!3209759))

(assert (= (and b!3209756 (not c!539066)) b!3209755))

(assert (= (and d!879145 (not res!1306617)) b!3209757))

(assert (= (and b!3209757 res!1306618) b!3209754))

(declare-fun m!3477757 () Bool)

(assert (=> d!879145 m!3477757))

(assert (=> d!879145 m!3476733))

(declare-fun m!3477759 () Bool)

(assert (=> b!3209754 m!3477759))

(assert (=> b!3209757 m!3477759))

(assert (=> b!3209757 m!3477759))

(declare-fun m!3477761 () Bool)

(assert (=> b!3209757 m!3477761))

(assert (=> b!3209759 m!3477267))

(assert (=> b!3209759 m!3477271))

(declare-fun m!3477763 () Bool)

(assert (=> b!3209759 m!3477763))

(assert (=> b!3209121 d!879145))

(declare-fun d!879147 () Bool)

(declare-fun e!2001460 () Bool)

(assert (=> d!879147 e!2001460))

(declare-fun res!1306623 () Bool)

(assert (=> d!879147 (=> (not res!1306623) (not e!2001460))))

(assert (=> d!879147 (= res!1306623 (isDefined!5554 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494)))))))))

(declare-fun lt!1084942 () Unit!50642)

(declare-fun choose!18730 (LexerInterface!4813 List!36302 List!36301 Token!9814) Unit!50642)

(assert (=> d!879147 (= lt!1084942 (choose!18730 thiss!18206 rules!2135 lt!1084664 (h!41599 (t!238514 tokens!494))))))

(assert (=> d!879147 (rulesInvariant!4210 thiss!18206 rules!2135)))

(assert (=> d!879147 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!929 thiss!18206 rules!2135 lt!1084664 (h!41599 (t!238514 tokens!494))) lt!1084942)))

(declare-fun b!3209764 () Bool)

(declare-fun res!1306624 () Bool)

(assert (=> b!3209764 (=> (not res!1306624) (not e!2001460))))

(assert (=> b!3209764 (= res!1306624 (matchR!4617 (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494))))))))

(declare-fun b!3209765 () Bool)

(assert (=> b!3209765 (= e!2001460 (= (rule!7664 (h!41599 (t!238514 tokens!494))) (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494))))))))))

(assert (= (and d!879147 res!1306623) b!3209764))

(assert (= (and b!3209764 res!1306624) b!3209765))

(assert (=> d!879147 m!3476827))

(assert (=> d!879147 m!3476827))

(declare-fun m!3477769 () Bool)

(assert (=> d!879147 m!3477769))

(declare-fun m!3477771 () Bool)

(assert (=> d!879147 m!3477771))

(assert (=> d!879147 m!3476733))

(assert (=> b!3209764 m!3476827))

(declare-fun m!3477773 () Bool)

(assert (=> b!3209764 m!3477773))

(assert (=> b!3209764 m!3476703))

(declare-fun m!3477775 () Bool)

(assert (=> b!3209764 m!3477775))

(assert (=> b!3209764 m!3476827))

(assert (=> b!3209764 m!3476691))

(assert (=> b!3209764 m!3476703))

(assert (=> b!3209764 m!3476691))

(assert (=> b!3209765 m!3476827))

(assert (=> b!3209765 m!3476827))

(assert (=> b!3209765 m!3477773))

(assert (=> b!3209121 d!879147))

(declare-fun b!3209766 () Bool)

(declare-fun e!2001461 () List!36301)

(declare-fun call!232229 () List!36301)

(assert (=> b!3209766 (= e!2001461 call!232229)))

(declare-fun d!879151 () Bool)

(declare-fun c!539069 () Bool)

(assert (=> d!879151 (= c!539069 (or ((_ is EmptyExpr!9983) (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) ((_ is EmptyLang!9983) (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))))))

(declare-fun e!2001464 () List!36301)

(assert (=> d!879151 (= (usedCharacters!540 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) e!2001464)))

(declare-fun bm!232223 () Bool)

(declare-fun call!232231 () List!36301)

(declare-fun call!232228 () List!36301)

(assert (=> bm!232223 (= call!232231 call!232228)))

(declare-fun b!3209767 () Bool)

(declare-fun e!2001462 () List!36301)

(assert (=> b!3209767 (= e!2001462 (Cons!36177 (c!538930 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) Nil!36177))))

(declare-fun bm!232224 () Bool)

(declare-fun call!232230 () List!36301)

(declare-fun c!539068 () Bool)

(assert (=> bm!232224 (= call!232229 (++!8680 (ite c!539068 call!232230 call!232231) (ite c!539068 call!232231 call!232230)))))

(declare-fun b!3209768 () Bool)

(assert (=> b!3209768 (= e!2001464 e!2001462)))

(declare-fun c!539070 () Bool)

(assert (=> b!3209768 (= c!539070 ((_ is ElementMatch!9983) (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))))

(declare-fun b!3209769 () Bool)

(declare-fun c!539071 () Bool)

(assert (=> b!3209769 (= c!539071 ((_ is Star!9983) (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))))

(declare-fun e!2001463 () List!36301)

(assert (=> b!3209769 (= e!2001462 e!2001463)))

(declare-fun b!3209770 () Bool)

(assert (=> b!3209770 (= e!2001463 e!2001461)))

(assert (=> b!3209770 (= c!539068 ((_ is Union!9983) (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))))

(declare-fun b!3209771 () Bool)

(assert (=> b!3209771 (= e!2001461 call!232229)))

(declare-fun bm!232225 () Bool)

(assert (=> bm!232225 (= call!232230 (usedCharacters!540 (ite c!539068 (regOne!20479 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))))))

(declare-fun b!3209772 () Bool)

(assert (=> b!3209772 (= e!2001463 call!232228)))

(declare-fun b!3209773 () Bool)

(assert (=> b!3209773 (= e!2001464 Nil!36177)))

(declare-fun bm!232226 () Bool)

(assert (=> bm!232226 (= call!232228 (usedCharacters!540 (ite c!539071 (reg!10312 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (ite c!539068 (regTwo!20479 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (regOne!20478 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))))))))

(assert (= (and d!879151 c!539069) b!3209773))

(assert (= (and d!879151 (not c!539069)) b!3209768))

(assert (= (and b!3209768 c!539070) b!3209767))

(assert (= (and b!3209768 (not c!539070)) b!3209769))

(assert (= (and b!3209769 c!539071) b!3209772))

(assert (= (and b!3209769 (not c!539071)) b!3209770))

(assert (= (and b!3209770 c!539068) b!3209766))

(assert (= (and b!3209770 (not c!539068)) b!3209771))

(assert (= (or b!3209766 b!3209771) bm!232223))

(assert (= (or b!3209766 b!3209771) bm!232225))

(assert (= (or b!3209766 b!3209771) bm!232224))

(assert (= (or b!3209772 bm!232223) bm!232226))

(declare-fun m!3477777 () Bool)

(assert (=> bm!232224 m!3477777))

(declare-fun m!3477779 () Bool)

(assert (=> bm!232225 m!3477779))

(declare-fun m!3477781 () Bool)

(assert (=> bm!232226 m!3477781))

(assert (=> b!3209121 d!879151))

(declare-fun d!879153 () Bool)

(declare-fun lt!1084945 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4888 (List!36301) (InoxSet C!20152))

(assert (=> d!879153 (= lt!1084945 (select (content!4888 (usedCharacters!540 (regex!5224 (rule!7664 separatorToken!241)))) lt!1084676))))

(declare-fun e!2001470 () Bool)

(assert (=> d!879153 (= lt!1084945 e!2001470)))

(declare-fun res!1306629 () Bool)

(assert (=> d!879153 (=> (not res!1306629) (not e!2001470))))

(assert (=> d!879153 (= res!1306629 ((_ is Cons!36177) (usedCharacters!540 (regex!5224 (rule!7664 separatorToken!241)))))))

(assert (=> d!879153 (= (contains!6461 (usedCharacters!540 (regex!5224 (rule!7664 separatorToken!241))) lt!1084676) lt!1084945)))

(declare-fun b!3209778 () Bool)

(declare-fun e!2001469 () Bool)

(assert (=> b!3209778 (= e!2001470 e!2001469)))

(declare-fun res!1306630 () Bool)

(assert (=> b!3209778 (=> res!1306630 e!2001469)))

(assert (=> b!3209778 (= res!1306630 (= (h!41597 (usedCharacters!540 (regex!5224 (rule!7664 separatorToken!241)))) lt!1084676))))

(declare-fun b!3209779 () Bool)

(assert (=> b!3209779 (= e!2001469 (contains!6461 (t!238512 (usedCharacters!540 (regex!5224 (rule!7664 separatorToken!241)))) lt!1084676))))

(assert (= (and d!879153 res!1306629) b!3209778))

(assert (= (and b!3209778 (not res!1306630)) b!3209779))

(assert (=> d!879153 m!3476777))

(declare-fun m!3477783 () Bool)

(assert (=> d!879153 m!3477783))

(declare-fun m!3477785 () Bool)

(assert (=> d!879153 m!3477785))

(declare-fun m!3477787 () Bool)

(assert (=> b!3209779 m!3477787))

(assert (=> b!3209121 d!879153))

(declare-fun d!879155 () Bool)

(declare-fun e!2001471 () Bool)

(assert (=> d!879155 e!2001471))

(declare-fun res!1306631 () Bool)

(assert (=> d!879155 (=> (not res!1306631) (not e!2001471))))

(assert (=> d!879155 (= res!1306631 (isDefined!5554 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 separatorToken!241)))))))

(declare-fun lt!1084946 () Unit!50642)

(assert (=> d!879155 (= lt!1084946 (choose!18730 thiss!18206 rules!2135 lt!1084696 separatorToken!241))))

(assert (=> d!879155 (rulesInvariant!4210 thiss!18206 rules!2135)))

(assert (=> d!879155 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!929 thiss!18206 rules!2135 lt!1084696 separatorToken!241) lt!1084946)))

(declare-fun b!3209780 () Bool)

(declare-fun res!1306632 () Bool)

(assert (=> b!3209780 (=> (not res!1306632) (not e!2001471))))

(assert (=> b!3209780 (= res!1306632 (matchR!4617 (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 separatorToken!241))))) (list!12865 (charsOf!3240 separatorToken!241))))))

(declare-fun b!3209781 () Bool)

(assert (=> b!3209781 (= e!2001471 (= (rule!7664 separatorToken!241) (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 separatorToken!241))))))))

(assert (= (and d!879155 res!1306631) b!3209780))

(assert (= (and b!3209780 res!1306632) b!3209781))

(assert (=> d!879155 m!3476837))

(assert (=> d!879155 m!3476837))

(declare-fun m!3477789 () Bool)

(assert (=> d!879155 m!3477789))

(declare-fun m!3477791 () Bool)

(assert (=> d!879155 m!3477791))

(assert (=> d!879155 m!3476733))

(assert (=> b!3209780 m!3476837))

(declare-fun m!3477793 () Bool)

(assert (=> b!3209780 m!3477793))

(assert (=> b!3209780 m!3476707))

(declare-fun m!3477795 () Bool)

(assert (=> b!3209780 m!3477795))

(assert (=> b!3209780 m!3476837))

(assert (=> b!3209780 m!3476693))

(assert (=> b!3209780 m!3476707))

(assert (=> b!3209780 m!3476693))

(assert (=> b!3209781 m!3476837))

(assert (=> b!3209781 m!3476837))

(assert (=> b!3209781 m!3477793))

(assert (=> b!3209121 d!879155))

(declare-fun d!879157 () Bool)

(declare-fun lt!1084949 () BalanceConc!21260)

(assert (=> d!879157 (= (list!12865 lt!1084949) (printListTailRec!561 thiss!18206 (dropList!1078 lt!1084657 0) (list!12865 (BalanceConc!21261 Empty!10823))))))

(declare-fun e!2001472 () BalanceConc!21260)

(assert (=> d!879157 (= lt!1084949 e!2001472)))

(declare-fun c!539072 () Bool)

(assert (=> d!879157 (= c!539072 (>= 0 (size!27261 lt!1084657)))))

(declare-fun e!2001473 () Bool)

(assert (=> d!879157 e!2001473))

(declare-fun res!1306633 () Bool)

(assert (=> d!879157 (=> (not res!1306633) (not e!2001473))))

(assert (=> d!879157 (= res!1306633 (>= 0 0))))

(assert (=> d!879157 (= (printTailRec!1310 thiss!18206 lt!1084657 0 (BalanceConc!21261 Empty!10823)) lt!1084949)))

(declare-fun b!3209782 () Bool)

(assert (=> b!3209782 (= e!2001473 (<= 0 (size!27261 lt!1084657)))))

(declare-fun b!3209783 () Bool)

(assert (=> b!3209783 (= e!2001472 (BalanceConc!21261 Empty!10823))))

(declare-fun b!3209784 () Bool)

(assert (=> b!3209784 (= e!2001472 (printTailRec!1310 thiss!18206 lt!1084657 (+ 0 1) (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (apply!8198 lt!1084657 0)))))))

(declare-fun lt!1084951 () List!36303)

(assert (=> b!3209784 (= lt!1084951 (list!12869 lt!1084657))))

(declare-fun lt!1084950 () Unit!50642)

(assert (=> b!3209784 (= lt!1084950 (lemmaDropApply!1037 lt!1084951 0))))

(assert (=> b!3209784 (= (head!7045 (drop!1861 lt!1084951 0)) (apply!8200 lt!1084951 0))))

(declare-fun lt!1084948 () Unit!50642)

(assert (=> b!3209784 (= lt!1084948 lt!1084950)))

(declare-fun lt!1084952 () List!36303)

(assert (=> b!3209784 (= lt!1084952 (list!12869 lt!1084657))))

(declare-fun lt!1084953 () Unit!50642)

(assert (=> b!3209784 (= lt!1084953 (lemmaDropTail!921 lt!1084952 0))))

(assert (=> b!3209784 (= (tail!5213 (drop!1861 lt!1084952 0)) (drop!1861 lt!1084952 (+ 0 1)))))

(declare-fun lt!1084947 () Unit!50642)

(assert (=> b!3209784 (= lt!1084947 lt!1084953)))

(assert (= (and d!879157 res!1306633) b!3209782))

(assert (= (and d!879157 c!539072) b!3209783))

(assert (= (and d!879157 (not c!539072)) b!3209784))

(declare-fun m!3477797 () Bool)

(assert (=> d!879157 m!3477797))

(declare-fun m!3477799 () Bool)

(assert (=> d!879157 m!3477799))

(declare-fun m!3477801 () Bool)

(assert (=> d!879157 m!3477801))

(assert (=> d!879157 m!3476993))

(declare-fun m!3477803 () Bool)

(assert (=> d!879157 m!3477803))

(assert (=> d!879157 m!3477801))

(assert (=> d!879157 m!3476993))

(assert (=> b!3209782 m!3477797))

(declare-fun m!3477805 () Bool)

(assert (=> b!3209784 m!3477805))

(assert (=> b!3209784 m!3477693))

(declare-fun m!3477807 () Bool)

(assert (=> b!3209784 m!3477807))

(declare-fun m!3477809 () Bool)

(assert (=> b!3209784 m!3477809))

(declare-fun m!3477811 () Bool)

(assert (=> b!3209784 m!3477811))

(declare-fun m!3477813 () Bool)

(assert (=> b!3209784 m!3477813))

(assert (=> b!3209784 m!3477813))

(declare-fun m!3477815 () Bool)

(assert (=> b!3209784 m!3477815))

(declare-fun m!3477817 () Bool)

(assert (=> b!3209784 m!3477817))

(declare-fun m!3477819 () Bool)

(assert (=> b!3209784 m!3477819))

(declare-fun m!3477821 () Bool)

(assert (=> b!3209784 m!3477821))

(assert (=> b!3209784 m!3477821))

(declare-fun m!3477823 () Bool)

(assert (=> b!3209784 m!3477823))

(assert (=> b!3209784 m!3477809))

(declare-fun m!3477825 () Bool)

(assert (=> b!3209784 m!3477825))

(declare-fun m!3477827 () Bool)

(assert (=> b!3209784 m!3477827))

(assert (=> b!3209784 m!3477823))

(assert (=> b!3209784 m!3477825))

(assert (=> b!3209121 d!879157))

(declare-fun b!3209785 () Bool)

(declare-fun e!2001475 () Option!7147)

(declare-fun lt!1084954 () tuple2!35582)

(assert (=> b!3209785 (= e!2001475 (Some!7146 (tuple2!35575 (Token!9815 (apply!8197 (transformation!5224 (rule!7664 (h!41599 tokens!494))) (seqFromList!3519 (_1!20925 lt!1084954))) (rule!7664 (h!41599 tokens!494)) (size!27263 (seqFromList!3519 (_1!20925 lt!1084954))) (_1!20925 lt!1084954)) (_2!20925 lt!1084954))))))

(declare-fun lt!1084956 () Unit!50642)

(assert (=> b!3209785 (= lt!1084956 (longestMatchIsAcceptedByMatchOrIsEmpty!803 (regex!5224 (rule!7664 (h!41599 tokens!494))) lt!1084683))))

(declare-fun res!1306637 () Bool)

(assert (=> b!3209785 (= res!1306637 (isEmpty!20266 (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 tokens!494))) Nil!36177 (size!27260 Nil!36177) lt!1084683 lt!1084683 (size!27260 lt!1084683)))))))

(declare-fun e!2001477 () Bool)

(assert (=> b!3209785 (=> res!1306637 e!2001477)))

(assert (=> b!3209785 e!2001477))

(declare-fun lt!1084958 () Unit!50642)

(assert (=> b!3209785 (= lt!1084958 lt!1084956)))

(declare-fun lt!1084955 () Unit!50642)

(assert (=> b!3209785 (= lt!1084955 (lemmaSemiInverse!1176 (transformation!5224 (rule!7664 (h!41599 tokens!494))) (seqFromList!3519 (_1!20925 lt!1084954))))))

(declare-fun b!3209786 () Bool)

(declare-fun res!1306634 () Bool)

(declare-fun e!2001474 () Bool)

(assert (=> b!3209786 (=> (not res!1306634) (not e!2001474))))

(declare-fun lt!1084957 () Option!7147)

(assert (=> b!3209786 (= res!1306634 (< (size!27260 (_2!20921 (get!11520 lt!1084957))) (size!27260 lt!1084683)))))

(declare-fun b!3209787 () Bool)

(declare-fun e!2001476 () Bool)

(assert (=> b!3209787 (= e!2001476 e!2001474)))

(declare-fun res!1306639 () Bool)

(assert (=> b!3209787 (=> (not res!1306639) (not e!2001474))))

(assert (=> b!3209787 (= res!1306639 (matchR!4617 (regex!5224 (rule!7664 (h!41599 tokens!494))) (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084957))))))))

(declare-fun b!3209788 () Bool)

(declare-fun res!1306640 () Bool)

(assert (=> b!3209788 (=> (not res!1306640) (not e!2001474))))

(assert (=> b!3209788 (= res!1306640 (= (++!8680 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084957)))) (_2!20921 (get!11520 lt!1084957))) lt!1084683))))

(declare-fun b!3209789 () Bool)

(declare-fun res!1306636 () Bool)

(assert (=> b!3209789 (=> (not res!1306636) (not e!2001474))))

(assert (=> b!3209789 (= res!1306636 (= (rule!7664 (_1!20921 (get!11520 lt!1084957))) (rule!7664 (h!41599 tokens!494))))))

(declare-fun b!3209790 () Bool)

(declare-fun res!1306638 () Bool)

(assert (=> b!3209790 (=> (not res!1306638) (not e!2001474))))

(assert (=> b!3209790 (= res!1306638 (= (value!169344 (_1!20921 (get!11520 lt!1084957))) (apply!8197 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084957)))) (seqFromList!3519 (originalCharacters!5938 (_1!20921 (get!11520 lt!1084957)))))))))

(declare-fun d!879159 () Bool)

(assert (=> d!879159 e!2001476))

(declare-fun res!1306635 () Bool)

(assert (=> d!879159 (=> res!1306635 e!2001476)))

(assert (=> d!879159 (= res!1306635 (isEmpty!20271 lt!1084957))))

(assert (=> d!879159 (= lt!1084957 e!2001475)))

(declare-fun c!539073 () Bool)

(assert (=> d!879159 (= c!539073 (isEmpty!20266 (_1!20925 lt!1084954)))))

(assert (=> d!879159 (= lt!1084954 (findLongestMatch!745 (regex!5224 (rule!7664 (h!41599 tokens!494))) lt!1084683))))

(assert (=> d!879159 (ruleValid!1647 thiss!18206 (rule!7664 (h!41599 tokens!494)))))

(assert (=> d!879159 (= (maxPrefixOneRule!1592 thiss!18206 (rule!7664 (h!41599 tokens!494)) lt!1084683) lt!1084957)))

(declare-fun b!3209791 () Bool)

(assert (=> b!3209791 (= e!2001477 (matchR!4617 (regex!5224 (rule!7664 (h!41599 tokens!494))) (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 tokens!494))) Nil!36177 (size!27260 Nil!36177) lt!1084683 lt!1084683 (size!27260 lt!1084683)))))))

(declare-fun b!3209792 () Bool)

(assert (=> b!3209792 (= e!2001474 (= (size!27259 (_1!20921 (get!11520 lt!1084957))) (size!27260 (originalCharacters!5938 (_1!20921 (get!11520 lt!1084957))))))))

(declare-fun b!3209793 () Bool)

(assert (=> b!3209793 (= e!2001475 None!7146)))

(assert (= (and d!879159 c!539073) b!3209793))

(assert (= (and d!879159 (not c!539073)) b!3209785))

(assert (= (and b!3209785 (not res!1306637)) b!3209791))

(assert (= (and d!879159 (not res!1306635)) b!3209787))

(assert (= (and b!3209787 res!1306639) b!3209788))

(assert (= (and b!3209788 res!1306640) b!3209786))

(assert (= (and b!3209786 res!1306634) b!3209789))

(assert (= (and b!3209789 res!1306636) b!3209790))

(assert (= (and b!3209790 res!1306638) b!3209792))

(declare-fun m!3477829 () Bool)

(assert (=> b!3209787 m!3477829))

(declare-fun m!3477831 () Bool)

(assert (=> b!3209787 m!3477831))

(assert (=> b!3209787 m!3477831))

(declare-fun m!3477833 () Bool)

(assert (=> b!3209787 m!3477833))

(assert (=> b!3209787 m!3477833))

(declare-fun m!3477837 () Bool)

(assert (=> b!3209787 m!3477837))

(declare-fun m!3477839 () Bool)

(assert (=> b!3209785 m!3477839))

(assert (=> b!3209785 m!3477569))

(declare-fun m!3477845 () Bool)

(assert (=> b!3209785 m!3477845))

(declare-fun m!3477847 () Bool)

(assert (=> b!3209785 m!3477847))

(assert (=> b!3209785 m!3477569))

(assert (=> b!3209785 m!3476779))

(declare-fun m!3477849 () Bool)

(assert (=> b!3209785 m!3477849))

(assert (=> b!3209785 m!3477845))

(declare-fun m!3477851 () Bool)

(assert (=> b!3209785 m!3477851))

(declare-fun m!3477853 () Bool)

(assert (=> b!3209785 m!3477853))

(assert (=> b!3209785 m!3477845))

(declare-fun m!3477855 () Bool)

(assert (=> b!3209785 m!3477855))

(assert (=> b!3209785 m!3476779))

(assert (=> b!3209785 m!3477845))

(assert (=> b!3209790 m!3477829))

(declare-fun m!3477857 () Bool)

(assert (=> b!3209790 m!3477857))

(assert (=> b!3209790 m!3477857))

(declare-fun m!3477861 () Bool)

(assert (=> b!3209790 m!3477861))

(assert (=> b!3209789 m!3477829))

(assert (=> b!3209791 m!3477569))

(assert (=> b!3209791 m!3476779))

(assert (=> b!3209791 m!3477569))

(assert (=> b!3209791 m!3476779))

(assert (=> b!3209791 m!3477849))

(declare-fun m!3477863 () Bool)

(assert (=> b!3209791 m!3477863))

(declare-fun m!3477865 () Bool)

(assert (=> d!879159 m!3477865))

(declare-fun m!3477867 () Bool)

(assert (=> d!879159 m!3477867))

(declare-fun m!3477869 () Bool)

(assert (=> d!879159 m!3477869))

(declare-fun m!3477871 () Bool)

(assert (=> d!879159 m!3477871))

(assert (=> b!3209786 m!3477829))

(declare-fun m!3477873 () Bool)

(assert (=> b!3209786 m!3477873))

(assert (=> b!3209786 m!3476779))

(assert (=> b!3209788 m!3477829))

(assert (=> b!3209788 m!3477831))

(assert (=> b!3209788 m!3477831))

(assert (=> b!3209788 m!3477833))

(assert (=> b!3209788 m!3477833))

(declare-fun m!3477875 () Bool)

(assert (=> b!3209788 m!3477875))

(assert (=> b!3209792 m!3477829))

(declare-fun m!3477877 () Bool)

(assert (=> b!3209792 m!3477877))

(assert (=> b!3209121 d!879159))

(declare-fun d!879165 () Bool)

(assert (=> d!879165 (= (maxPrefix!2455 thiss!18206 rules!2135 (++!8680 (list!12865 (charsOf!3240 (h!41599 tokens!494))) lt!1084686)) (Some!7146 (tuple2!35575 (h!41599 tokens!494) lt!1084686)))))

(declare-fun lt!1084987 () Unit!50642)

(declare-fun choose!18731 (LexerInterface!4813 List!36302 Token!9814 Rule!10248 List!36301 Rule!10248) Unit!50642)

(assert (=> d!879165 (= lt!1084987 (choose!18731 thiss!18206 rules!2135 (h!41599 tokens!494) (rule!7664 (h!41599 tokens!494)) lt!1084686 (rule!7664 separatorToken!241)))))

(assert (=> d!879165 (not (isEmpty!20262 rules!2135))))

(assert (=> d!879165 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!148 thiss!18206 rules!2135 (h!41599 tokens!494) (rule!7664 (h!41599 tokens!494)) lt!1084686 (rule!7664 separatorToken!241)) lt!1084987)))

(declare-fun bs!541563 () Bool)

(assert (= bs!541563 d!879165))

(assert (=> bs!541563 m!3476717))

(declare-fun m!3477925 () Bool)

(assert (=> bs!541563 m!3477925))

(assert (=> bs!541563 m!3476715))

(assert (=> bs!541563 m!3476717))

(declare-fun m!3477927 () Bool)

(assert (=> bs!541563 m!3477927))

(assert (=> bs!541563 m!3476869))

(assert (=> bs!541563 m!3477925))

(declare-fun m!3477929 () Bool)

(assert (=> bs!541563 m!3477929))

(assert (=> bs!541563 m!3476715))

(assert (=> b!3209121 d!879165))

(declare-fun d!879173 () Bool)

(declare-fun lt!1084988 () Int)

(assert (=> d!879173 (>= lt!1084988 0)))

(declare-fun e!2001496 () Int)

(assert (=> d!879173 (= lt!1084988 e!2001496)))

(declare-fun c!539082 () Bool)

(assert (=> d!879173 (= c!539082 ((_ is Nil!36177) lt!1084664))))

(assert (=> d!879173 (= (size!27260 lt!1084664) lt!1084988)))

(declare-fun b!3209824 () Bool)

(assert (=> b!3209824 (= e!2001496 0)))

(declare-fun b!3209825 () Bool)

(assert (=> b!3209825 (= e!2001496 (+ 1 (size!27260 (t!238512 lt!1084664))))))

(assert (= (and d!879173 c!539082) b!3209824))

(assert (= (and d!879173 (not c!539082)) b!3209825))

(declare-fun m!3477937 () Bool)

(assert (=> b!3209825 m!3477937))

(assert (=> b!3209121 d!879173))

(declare-fun d!879175 () Bool)

(declare-fun lt!1084991 () BalanceConc!21260)

(assert (=> d!879175 (= (list!12865 lt!1084991) (printListTailRec!561 thiss!18206 (dropList!1078 lt!1084669 0) (list!12865 (BalanceConc!21261 Empty!10823))))))

(declare-fun e!2001497 () BalanceConc!21260)

(assert (=> d!879175 (= lt!1084991 e!2001497)))

(declare-fun c!539083 () Bool)

(assert (=> d!879175 (= c!539083 (>= 0 (size!27261 lt!1084669)))))

(declare-fun e!2001498 () Bool)

(assert (=> d!879175 e!2001498))

(declare-fun res!1306655 () Bool)

(assert (=> d!879175 (=> (not res!1306655) (not e!2001498))))

(assert (=> d!879175 (= res!1306655 (>= 0 0))))

(assert (=> d!879175 (= (printTailRec!1310 thiss!18206 lt!1084669 0 (BalanceConc!21261 Empty!10823)) lt!1084991)))

(declare-fun b!3209826 () Bool)

(assert (=> b!3209826 (= e!2001498 (<= 0 (size!27261 lt!1084669)))))

(declare-fun b!3209827 () Bool)

(assert (=> b!3209827 (= e!2001497 (BalanceConc!21261 Empty!10823))))

(declare-fun b!3209828 () Bool)

(assert (=> b!3209828 (= e!2001497 (printTailRec!1310 thiss!18206 lt!1084669 (+ 0 1) (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (apply!8198 lt!1084669 0)))))))

(declare-fun lt!1084993 () List!36303)

(assert (=> b!3209828 (= lt!1084993 (list!12869 lt!1084669))))

(declare-fun lt!1084992 () Unit!50642)

(assert (=> b!3209828 (= lt!1084992 (lemmaDropApply!1037 lt!1084993 0))))

(assert (=> b!3209828 (= (head!7045 (drop!1861 lt!1084993 0)) (apply!8200 lt!1084993 0))))

(declare-fun lt!1084990 () Unit!50642)

(assert (=> b!3209828 (= lt!1084990 lt!1084992)))

(declare-fun lt!1084994 () List!36303)

(assert (=> b!3209828 (= lt!1084994 (list!12869 lt!1084669))))

(declare-fun lt!1084995 () Unit!50642)

(assert (=> b!3209828 (= lt!1084995 (lemmaDropTail!921 lt!1084994 0))))

(assert (=> b!3209828 (= (tail!5213 (drop!1861 lt!1084994 0)) (drop!1861 lt!1084994 (+ 0 1)))))

(declare-fun lt!1084989 () Unit!50642)

(assert (=> b!3209828 (= lt!1084989 lt!1084995)))

(assert (= (and d!879175 res!1306655) b!3209826))

(assert (= (and d!879175 c!539083) b!3209827))

(assert (= (and d!879175 (not c!539083)) b!3209828))

(declare-fun m!3477969 () Bool)

(assert (=> d!879175 m!3477969))

(declare-fun m!3477971 () Bool)

(assert (=> d!879175 m!3477971))

(declare-fun m!3477973 () Bool)

(assert (=> d!879175 m!3477973))

(assert (=> d!879175 m!3476993))

(declare-fun m!3477977 () Bool)

(assert (=> d!879175 m!3477977))

(assert (=> d!879175 m!3477973))

(assert (=> d!879175 m!3476993))

(assert (=> b!3209826 m!3477969))

(declare-fun m!3477979 () Bool)

(assert (=> b!3209828 m!3477979))

(assert (=> b!3209828 m!3477363))

(declare-fun m!3477981 () Bool)

(assert (=> b!3209828 m!3477981))

(declare-fun m!3477983 () Bool)

(assert (=> b!3209828 m!3477983))

(declare-fun m!3477987 () Bool)

(assert (=> b!3209828 m!3477987))

(declare-fun m!3477989 () Bool)

(assert (=> b!3209828 m!3477989))

(assert (=> b!3209828 m!3477989))

(declare-fun m!3477993 () Bool)

(assert (=> b!3209828 m!3477993))

(declare-fun m!3477995 () Bool)

(assert (=> b!3209828 m!3477995))

(declare-fun m!3477997 () Bool)

(assert (=> b!3209828 m!3477997))

(declare-fun m!3477999 () Bool)

(assert (=> b!3209828 m!3477999))

(assert (=> b!3209828 m!3477999))

(declare-fun m!3478001 () Bool)

(assert (=> b!3209828 m!3478001))

(assert (=> b!3209828 m!3477983))

(declare-fun m!3478003 () Bool)

(assert (=> b!3209828 m!3478003))

(declare-fun m!3478005 () Bool)

(assert (=> b!3209828 m!3478005))

(assert (=> b!3209828 m!3478001))

(assert (=> b!3209828 m!3478003))

(assert (=> b!3209121 d!879175))

(declare-fun d!879179 () Bool)

(assert (=> d!879179 (not (contains!6461 (usedCharacters!540 (regex!5224 (rule!7664 (h!41599 tokens!494)))) lt!1084676))))

(declare-fun lt!1085004 () Unit!50642)

(declare-fun choose!18732 (LexerInterface!4813 List!36302 List!36302 Rule!10248 Rule!10248 C!20152) Unit!50642)

(assert (=> d!879179 (= lt!1085004 (choose!18732 thiss!18206 rules!2135 rules!2135 (rule!7664 (h!41599 tokens!494)) (rule!7664 separatorToken!241) lt!1084676))))

(assert (=> d!879179 (rulesInvariant!4210 thiss!18206 rules!2135)))

(assert (=> d!879179 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!148 thiss!18206 rules!2135 rules!2135 (rule!7664 (h!41599 tokens!494)) (rule!7664 separatorToken!241) lt!1084676) lt!1085004)))

(declare-fun bs!541564 () Bool)

(assert (= bs!541564 d!879179))

(assert (=> bs!541564 m!3476795))

(assert (=> bs!541564 m!3476795))

(assert (=> bs!541564 m!3476797))

(declare-fun m!3478045 () Bool)

(assert (=> bs!541564 m!3478045))

(assert (=> bs!541564 m!3476733))

(assert (=> b!3209121 d!879179))

(declare-fun d!879189 () Bool)

(assert (=> d!879189 (= (isDefined!5554 lt!1084671) (not (isEmpty!20270 lt!1084671)))))

(declare-fun bs!541565 () Bool)

(assert (= bs!541565 d!879189))

(declare-fun m!3478047 () Bool)

(assert (=> bs!541565 m!3478047))

(assert (=> b!3209121 d!879189))

(declare-fun d!879191 () Bool)

(declare-fun e!2001511 () Bool)

(assert (=> d!879191 e!2001511))

(declare-fun res!1306666 () Bool)

(assert (=> d!879191 (=> res!1306666 e!2001511)))

(declare-fun lt!1085009 () Option!7148)

(assert (=> d!879191 (= res!1306666 (isEmpty!20270 lt!1085009))))

(declare-fun e!2001514 () Option!7148)

(assert (=> d!879191 (= lt!1085009 e!2001514)))

(declare-fun c!539089 () Bool)

(assert (=> d!879191 (= c!539089 (and ((_ is Cons!36178) rules!2135) (= (tag!5750 (h!41598 rules!2135)) (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494)))))))))

(assert (=> d!879191 (rulesInvariant!4210 thiss!18206 rules!2135)))

(assert (=> d!879191 (= (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494))))) lt!1085009)))

(declare-fun b!3209845 () Bool)

(declare-fun e!2001513 () Bool)

(assert (=> b!3209845 (= e!2001513 (= (tag!5750 (get!11519 lt!1085009)) (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494))))))))

(declare-fun b!3209846 () Bool)

(declare-fun e!2001512 () Option!7148)

(assert (=> b!3209846 (= e!2001512 None!7147)))

(declare-fun b!3209847 () Bool)

(assert (=> b!3209847 (= e!2001514 e!2001512)))

(declare-fun c!539088 () Bool)

(assert (=> b!3209847 (= c!539088 (and ((_ is Cons!36178) rules!2135) (not (= (tag!5750 (h!41598 rules!2135)) (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494))))))))))

(declare-fun b!3209848 () Bool)

(assert (=> b!3209848 (= e!2001511 e!2001513)))

(declare-fun res!1306667 () Bool)

(assert (=> b!3209848 (=> (not res!1306667) (not e!2001513))))

(assert (=> b!3209848 (= res!1306667 (contains!6462 rules!2135 (get!11519 lt!1085009)))))

(declare-fun b!3209849 () Bool)

(assert (=> b!3209849 (= e!2001514 (Some!7147 (h!41598 rules!2135)))))

(declare-fun b!3209850 () Bool)

(declare-fun lt!1085008 () Unit!50642)

(declare-fun lt!1085007 () Unit!50642)

(assert (=> b!3209850 (= lt!1085008 lt!1085007)))

(assert (=> b!3209850 (rulesInvariant!4210 thiss!18206 (t!238513 rules!2135))))

(assert (=> b!3209850 (= lt!1085007 (lemmaInvariantOnRulesThenOnTail!349 thiss!18206 (h!41598 rules!2135) (t!238513 rules!2135)))))

(assert (=> b!3209850 (= e!2001512 (getRuleFromTag!929 thiss!18206 (t!238513 rules!2135) (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494))))))))

(assert (= (and d!879191 c!539089) b!3209849))

(assert (= (and d!879191 (not c!539089)) b!3209847))

(assert (= (and b!3209847 c!539088) b!3209850))

(assert (= (and b!3209847 (not c!539088)) b!3209846))

(assert (= (and d!879191 (not res!1306666)) b!3209848))

(assert (= (and b!3209848 res!1306667) b!3209845))

(declare-fun m!3478049 () Bool)

(assert (=> d!879191 m!3478049))

(assert (=> d!879191 m!3476733))

(declare-fun m!3478051 () Bool)

(assert (=> b!3209845 m!3478051))

(assert (=> b!3209848 m!3478051))

(assert (=> b!3209848 m!3478051))

(declare-fun m!3478053 () Bool)

(assert (=> b!3209848 m!3478053))

(assert (=> b!3209850 m!3477267))

(assert (=> b!3209850 m!3477271))

(declare-fun m!3478055 () Bool)

(assert (=> b!3209850 m!3478055))

(assert (=> b!3209121 d!879191))

(declare-fun d!879193 () Bool)

(declare-fun lt!1085011 () Bool)

(assert (=> d!879193 (= lt!1085011 (select (content!4888 (usedCharacters!540 (regex!5224 (rule!7664 (h!41599 tokens!494))))) lt!1084676))))

(declare-fun e!2001517 () Bool)

(assert (=> d!879193 (= lt!1085011 e!2001517)))

(declare-fun res!1306669 () Bool)

(assert (=> d!879193 (=> (not res!1306669) (not e!2001517))))

(assert (=> d!879193 (= res!1306669 ((_ is Cons!36177) (usedCharacters!540 (regex!5224 (rule!7664 (h!41599 tokens!494))))))))

(assert (=> d!879193 (= (contains!6461 (usedCharacters!540 (regex!5224 (rule!7664 (h!41599 tokens!494)))) lt!1084676) lt!1085011)))

(declare-fun b!3209852 () Bool)

(declare-fun e!2001516 () Bool)

(assert (=> b!3209852 (= e!2001517 e!2001516)))

(declare-fun res!1306670 () Bool)

(assert (=> b!3209852 (=> res!1306670 e!2001516)))

(assert (=> b!3209852 (= res!1306670 (= (h!41597 (usedCharacters!540 (regex!5224 (rule!7664 (h!41599 tokens!494))))) lt!1084676))))

(declare-fun b!3209853 () Bool)

(assert (=> b!3209853 (= e!2001516 (contains!6461 (t!238512 (usedCharacters!540 (regex!5224 (rule!7664 (h!41599 tokens!494))))) lt!1084676))))

(assert (= (and d!879193 res!1306669) b!3209852))

(assert (= (and b!3209852 (not res!1306670)) b!3209853))

(assert (=> d!879193 m!3476795))

(declare-fun m!3478065 () Bool)

(assert (=> d!879193 m!3478065))

(declare-fun m!3478067 () Bool)

(assert (=> d!879193 m!3478067))

(declare-fun m!3478069 () Bool)

(assert (=> b!3209853 m!3478069))

(assert (=> b!3209121 d!879193))

(declare-fun d!879197 () Bool)

(declare-fun e!2001519 () Bool)

(assert (=> d!879197 e!2001519))

(declare-fun res!1306673 () Bool)

(assert (=> d!879197 (=> (not res!1306673) (not e!2001519))))

(assert (=> d!879197 (= res!1306673 (isDefined!5554 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 tokens!494))))))))

(declare-fun lt!1085013 () Unit!50642)

(assert (=> d!879197 (= lt!1085013 (choose!18730 thiss!18206 rules!2135 lt!1084683 (h!41599 tokens!494)))))

(assert (=> d!879197 (rulesInvariant!4210 thiss!18206 rules!2135)))

(assert (=> d!879197 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!929 thiss!18206 rules!2135 lt!1084683 (h!41599 tokens!494)) lt!1085013)))

(declare-fun b!3209856 () Bool)

(declare-fun res!1306674 () Bool)

(assert (=> b!3209856 (=> (not res!1306674) (not e!2001519))))

(assert (=> b!3209856 (= res!1306674 (matchR!4617 (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 tokens!494)))))) (list!12865 (charsOf!3240 (h!41599 tokens!494)))))))

(declare-fun b!3209857 () Bool)

(assert (=> b!3209857 (= e!2001519 (= (rule!7664 (h!41599 tokens!494)) (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 tokens!494)))))))))

(assert (= (and d!879197 res!1306673) b!3209856))

(assert (= (and b!3209856 res!1306674) b!3209857))

(assert (=> d!879197 m!3476811))

(assert (=> d!879197 m!3476811))

(declare-fun m!3478073 () Bool)

(assert (=> d!879197 m!3478073))

(declare-fun m!3478077 () Bool)

(assert (=> d!879197 m!3478077))

(assert (=> d!879197 m!3476733))

(assert (=> b!3209856 m!3476811))

(declare-fun m!3478079 () Bool)

(assert (=> b!3209856 m!3478079))

(assert (=> b!3209856 m!3476717))

(declare-fun m!3478083 () Bool)

(assert (=> b!3209856 m!3478083))

(assert (=> b!3209856 m!3476811))

(assert (=> b!3209856 m!3476715))

(assert (=> b!3209856 m!3476717))

(assert (=> b!3209856 m!3476715))

(assert (=> b!3209857 m!3476811))

(assert (=> b!3209857 m!3476811))

(assert (=> b!3209857 m!3478079))

(assert (=> b!3209121 d!879197))

(declare-fun b!3209858 () Bool)

(declare-fun e!2001522 () Bool)

(assert (=> b!3209858 (= e!2001522 (inv!16 (value!169344 separatorToken!241)))))

(declare-fun b!3209860 () Bool)

(declare-fun res!1306675 () Bool)

(declare-fun e!2001521 () Bool)

(assert (=> b!3209860 (=> res!1306675 e!2001521)))

(assert (=> b!3209860 (= res!1306675 (not ((_ is IntegerValue!16364) (value!169344 separatorToken!241))))))

(declare-fun e!2001520 () Bool)

(assert (=> b!3209860 (= e!2001520 e!2001521)))

(declare-fun b!3209861 () Bool)

(assert (=> b!3209861 (= e!2001521 (inv!15 (value!169344 separatorToken!241)))))

(declare-fun b!3209862 () Bool)

(assert (=> b!3209862 (= e!2001522 e!2001520)))

(declare-fun c!539091 () Bool)

(assert (=> b!3209862 (= c!539091 ((_ is IntegerValue!16363) (value!169344 separatorToken!241)))))

(declare-fun b!3209859 () Bool)

(assert (=> b!3209859 (= e!2001520 (inv!17 (value!169344 separatorToken!241)))))

(declare-fun d!879199 () Bool)

(declare-fun c!539090 () Bool)

(assert (=> d!879199 (= c!539090 ((_ is IntegerValue!16362) (value!169344 separatorToken!241)))))

(assert (=> d!879199 (= (inv!21 (value!169344 separatorToken!241)) e!2001522)))

(assert (= (and d!879199 c!539090) b!3209858))

(assert (= (and d!879199 (not c!539090)) b!3209862))

(assert (= (and b!3209862 c!539091) b!3209859))

(assert (= (and b!3209862 (not c!539091)) b!3209860))

(assert (= (and b!3209860 (not res!1306675)) b!3209861))

(declare-fun m!3478087 () Bool)

(assert (=> b!3209858 m!3478087))

(declare-fun m!3478089 () Bool)

(assert (=> b!3209861 m!3478089))

(declare-fun m!3478091 () Bool)

(assert (=> b!3209859 m!3478091))

(assert (=> b!3209123 d!879199))

(declare-fun d!879203 () Bool)

(declare-fun lt!1085017 () Token!9814)

(assert (=> d!879203 (= lt!1085017 (apply!8200 (list!12869 (_1!20922 lt!1084679)) 0))))

(declare-fun apply!8202 (Conc!10824 Int) Token!9814)

(assert (=> d!879203 (= lt!1085017 (apply!8202 (c!538932 (_1!20922 lt!1084679)) 0))))

(declare-fun e!2001527 () Bool)

(assert (=> d!879203 e!2001527))

(declare-fun res!1306680 () Bool)

(assert (=> d!879203 (=> (not res!1306680) (not e!2001527))))

(assert (=> d!879203 (= res!1306680 (<= 0 0))))

(assert (=> d!879203 (= (apply!8198 (_1!20922 lt!1084679) 0) lt!1085017)))

(declare-fun b!3209867 () Bool)

(assert (=> b!3209867 (= e!2001527 (< 0 (size!27261 (_1!20922 lt!1084679))))))

(assert (= (and d!879203 res!1306680) b!3209867))

(assert (=> d!879203 m!3477711))

(assert (=> d!879203 m!3477711))

(declare-fun m!3478105 () Bool)

(assert (=> d!879203 m!3478105))

(declare-fun m!3478107 () Bool)

(assert (=> d!879203 m!3478107))

(assert (=> b!3209867 m!3476825))

(assert (=> b!3209144 d!879203))

(declare-fun bs!541573 () Bool)

(declare-fun d!879211 () Bool)

(assert (= bs!541573 (and d!879211 b!3209124)))

(declare-fun lambda!117489 () Int)

(assert (=> bs!541573 (not (= lambda!117489 lambda!117478))))

(declare-fun bs!541574 () Bool)

(assert (= bs!541574 (and d!879211 b!3209121)))

(assert (=> bs!541574 (= lambda!117489 lambda!117479)))

(declare-fun b!3209979 () Bool)

(declare-fun e!2001599 () Bool)

(assert (=> b!3209979 (= e!2001599 true)))

(declare-fun b!3209978 () Bool)

(declare-fun e!2001598 () Bool)

(assert (=> b!3209978 (= e!2001598 e!2001599)))

(declare-fun b!3209977 () Bool)

(declare-fun e!2001597 () Bool)

(assert (=> b!3209977 (= e!2001597 e!2001598)))

(assert (=> d!879211 e!2001597))

(assert (= b!3209978 b!3209979))

(assert (= b!3209977 b!3209978))

(assert (= (and d!879211 ((_ is Cons!36178) rules!2135)) b!3209977))

(assert (=> b!3209979 (< (dynLambda!14607 order!18473 (toValue!7308 (transformation!5224 (h!41598 rules!2135)))) (dynLambda!14608 order!18475 lambda!117489))))

(assert (=> b!3209979 (< (dynLambda!14609 order!18477 (toChars!7167 (transformation!5224 (h!41598 rules!2135)))) (dynLambda!14608 order!18475 lambda!117489))))

(assert (=> d!879211 true))

(declare-fun e!2001596 () Bool)

(assert (=> d!879211 e!2001596))

(declare-fun res!1306713 () Bool)

(assert (=> d!879211 (=> (not res!1306713) (not e!2001596))))

(declare-fun lt!1085046 () Bool)

(assert (=> d!879211 (= res!1306713 (= lt!1085046 (forall!7388 (list!12869 (seqFromList!3520 tokens!494)) lambda!117489)))))

(declare-fun forall!7390 (BalanceConc!21262 Int) Bool)

(assert (=> d!879211 (= lt!1085046 (forall!7390 (seqFromList!3520 tokens!494) lambda!117489))))

(assert (=> d!879211 (not (isEmpty!20262 rules!2135))))

(assert (=> d!879211 (= (rulesProduceEachTokenIndividually!1264 thiss!18206 rules!2135 (seqFromList!3520 tokens!494)) lt!1085046)))

(declare-fun b!3209976 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1727 (LexerInterface!4813 List!36302 List!36303) Bool)

(assert (=> b!3209976 (= e!2001596 (= lt!1085046 (rulesProduceEachTokenIndividuallyList!1727 thiss!18206 rules!2135 (list!12869 (seqFromList!3520 tokens!494)))))))

(assert (= (and d!879211 res!1306713) b!3209976))

(assert (=> d!879211 m!3476745))

(declare-fun m!3478215 () Bool)

(assert (=> d!879211 m!3478215))

(assert (=> d!879211 m!3478215))

(declare-fun m!3478217 () Bool)

(assert (=> d!879211 m!3478217))

(assert (=> d!879211 m!3476745))

(declare-fun m!3478219 () Bool)

(assert (=> d!879211 m!3478219))

(assert (=> d!879211 m!3476869))

(assert (=> b!3209976 m!3476745))

(assert (=> b!3209976 m!3478215))

(assert (=> b!3209976 m!3478215))

(declare-fun m!3478221 () Bool)

(assert (=> b!3209976 m!3478221))

(assert (=> b!3209130 d!879211))

(declare-fun d!879243 () Bool)

(declare-fun fromListB!1542 (List!36303) BalanceConc!21262)

(assert (=> d!879243 (= (seqFromList!3520 tokens!494) (fromListB!1542 tokens!494))))

(declare-fun bs!541575 () Bool)

(assert (= bs!541575 d!879243))

(declare-fun m!3478223 () Bool)

(assert (=> bs!541575 m!3478223))

(assert (=> b!3209130 d!879243))

(declare-fun b!3209988 () Bool)

(declare-fun e!2001604 () List!36301)

(assert (=> b!3209988 (= e!2001604 lt!1084686)))

(declare-fun lt!1085049 () List!36301)

(declare-fun e!2001605 () Bool)

(declare-fun b!3209991 () Bool)

(assert (=> b!3209991 (= e!2001605 (or (not (= lt!1084686 Nil!36177)) (= lt!1085049 lt!1084683)))))

(declare-fun b!3209990 () Bool)

(declare-fun res!1306718 () Bool)

(assert (=> b!3209990 (=> (not res!1306718) (not e!2001605))))

(assert (=> b!3209990 (= res!1306718 (= (size!27260 lt!1085049) (+ (size!27260 lt!1084683) (size!27260 lt!1084686))))))

(declare-fun d!879245 () Bool)

(assert (=> d!879245 e!2001605))

(declare-fun res!1306719 () Bool)

(assert (=> d!879245 (=> (not res!1306719) (not e!2001605))))

(assert (=> d!879245 (= res!1306719 (= (content!4888 lt!1085049) ((_ map or) (content!4888 lt!1084683) (content!4888 lt!1084686))))))

(assert (=> d!879245 (= lt!1085049 e!2001604)))

(declare-fun c!539105 () Bool)

(assert (=> d!879245 (= c!539105 ((_ is Nil!36177) lt!1084683))))

(assert (=> d!879245 (= (++!8680 lt!1084683 lt!1084686) lt!1085049)))

(declare-fun b!3209989 () Bool)

(assert (=> b!3209989 (= e!2001604 (Cons!36177 (h!41597 lt!1084683) (++!8680 (t!238512 lt!1084683) lt!1084686)))))

(assert (= (and d!879245 c!539105) b!3209988))

(assert (= (and d!879245 (not c!539105)) b!3209989))

(assert (= (and d!879245 res!1306719) b!3209990))

(assert (= (and b!3209990 res!1306718) b!3209991))

(declare-fun m!3478225 () Bool)

(assert (=> b!3209990 m!3478225))

(assert (=> b!3209990 m!3476779))

(declare-fun m!3478227 () Bool)

(assert (=> b!3209990 m!3478227))

(declare-fun m!3478229 () Bool)

(assert (=> d!879245 m!3478229))

(declare-fun m!3478231 () Bool)

(assert (=> d!879245 m!3478231))

(declare-fun m!3478233 () Bool)

(assert (=> d!879245 m!3478233))

(declare-fun m!3478235 () Bool)

(assert (=> b!3209989 m!3478235))

(assert (=> b!3209129 d!879245))

(declare-fun d!879247 () Bool)

(assert (=> d!879247 (= (++!8680 (++!8680 lt!1084683 lt!1084696) lt!1084690) (++!8680 lt!1084683 (++!8680 lt!1084696 lt!1084690)))))

(declare-fun lt!1085052 () Unit!50642)

(declare-fun choose!18736 (List!36301 List!36301 List!36301) Unit!50642)

(assert (=> d!879247 (= lt!1085052 (choose!18736 lt!1084683 lt!1084696 lt!1084690))))

(assert (=> d!879247 (= (lemmaConcatAssociativity!1746 lt!1084683 lt!1084696 lt!1084690) lt!1085052)))

(declare-fun bs!541576 () Bool)

(assert (= bs!541576 d!879247))

(assert (=> bs!541576 m!3476759))

(assert (=> bs!541576 m!3476759))

(assert (=> bs!541576 m!3476761))

(declare-fun m!3478237 () Bool)

(assert (=> bs!541576 m!3478237))

(assert (=> bs!541576 m!3476701))

(assert (=> bs!541576 m!3476701))

(declare-fun m!3478239 () Bool)

(assert (=> bs!541576 m!3478239))

(assert (=> b!3209129 d!879247))

(declare-fun b!3209992 () Bool)

(declare-fun e!2001606 () List!36301)

(assert (=> b!3209992 (= e!2001606 lt!1084690)))

(declare-fun lt!1085053 () List!36301)

(declare-fun e!2001607 () Bool)

(declare-fun b!3209995 () Bool)

(assert (=> b!3209995 (= e!2001607 (or (not (= lt!1084690 Nil!36177)) (= lt!1085053 (++!8680 lt!1084683 lt!1084696))))))

(declare-fun b!3209994 () Bool)

(declare-fun res!1306720 () Bool)

(assert (=> b!3209994 (=> (not res!1306720) (not e!2001607))))

(assert (=> b!3209994 (= res!1306720 (= (size!27260 lt!1085053) (+ (size!27260 (++!8680 lt!1084683 lt!1084696)) (size!27260 lt!1084690))))))

(declare-fun d!879249 () Bool)

(assert (=> d!879249 e!2001607))

(declare-fun res!1306721 () Bool)

(assert (=> d!879249 (=> (not res!1306721) (not e!2001607))))

(assert (=> d!879249 (= res!1306721 (= (content!4888 lt!1085053) ((_ map or) (content!4888 (++!8680 lt!1084683 lt!1084696)) (content!4888 lt!1084690))))))

(assert (=> d!879249 (= lt!1085053 e!2001606)))

(declare-fun c!539106 () Bool)

(assert (=> d!879249 (= c!539106 ((_ is Nil!36177) (++!8680 lt!1084683 lt!1084696)))))

(assert (=> d!879249 (= (++!8680 (++!8680 lt!1084683 lt!1084696) lt!1084690) lt!1085053)))

(declare-fun b!3209993 () Bool)

(assert (=> b!3209993 (= e!2001606 (Cons!36177 (h!41597 (++!8680 lt!1084683 lt!1084696)) (++!8680 (t!238512 (++!8680 lt!1084683 lt!1084696)) lt!1084690)))))

(assert (= (and d!879249 c!539106) b!3209992))

(assert (= (and d!879249 (not c!539106)) b!3209993))

(assert (= (and d!879249 res!1306721) b!3209994))

(assert (= (and b!3209994 res!1306720) b!3209995))

(declare-fun m!3478241 () Bool)

(assert (=> b!3209994 m!3478241))

(assert (=> b!3209994 m!3476759))

(declare-fun m!3478243 () Bool)

(assert (=> b!3209994 m!3478243))

(declare-fun m!3478245 () Bool)

(assert (=> b!3209994 m!3478245))

(declare-fun m!3478247 () Bool)

(assert (=> d!879249 m!3478247))

(assert (=> d!879249 m!3476759))

(declare-fun m!3478249 () Bool)

(assert (=> d!879249 m!3478249))

(declare-fun m!3478251 () Bool)

(assert (=> d!879249 m!3478251))

(declare-fun m!3478253 () Bool)

(assert (=> b!3209993 m!3478253))

(assert (=> b!3209152 d!879249))

(declare-fun b!3209996 () Bool)

(declare-fun e!2001608 () List!36301)

(assert (=> b!3209996 (= e!2001608 lt!1084696)))

(declare-fun b!3209999 () Bool)

(declare-fun e!2001609 () Bool)

(declare-fun lt!1085054 () List!36301)

(assert (=> b!3209999 (= e!2001609 (or (not (= lt!1084696 Nil!36177)) (= lt!1085054 lt!1084683)))))

(declare-fun b!3209998 () Bool)

(declare-fun res!1306722 () Bool)

(assert (=> b!3209998 (=> (not res!1306722) (not e!2001609))))

(assert (=> b!3209998 (= res!1306722 (= (size!27260 lt!1085054) (+ (size!27260 lt!1084683) (size!27260 lt!1084696))))))

(declare-fun d!879251 () Bool)

(assert (=> d!879251 e!2001609))

(declare-fun res!1306723 () Bool)

(assert (=> d!879251 (=> (not res!1306723) (not e!2001609))))

(assert (=> d!879251 (= res!1306723 (= (content!4888 lt!1085054) ((_ map or) (content!4888 lt!1084683) (content!4888 lt!1084696))))))

(assert (=> d!879251 (= lt!1085054 e!2001608)))

(declare-fun c!539107 () Bool)

(assert (=> d!879251 (= c!539107 ((_ is Nil!36177) lt!1084683))))

(assert (=> d!879251 (= (++!8680 lt!1084683 lt!1084696) lt!1085054)))

(declare-fun b!3209997 () Bool)

(assert (=> b!3209997 (= e!2001608 (Cons!36177 (h!41597 lt!1084683) (++!8680 (t!238512 lt!1084683) lt!1084696)))))

(assert (= (and d!879251 c!539107) b!3209996))

(assert (= (and d!879251 (not c!539107)) b!3209997))

(assert (= (and d!879251 res!1306723) b!3209998))

(assert (= (and b!3209998 res!1306722) b!3209999))

(declare-fun m!3478255 () Bool)

(assert (=> b!3209998 m!3478255))

(assert (=> b!3209998 m!3476779))

(declare-fun m!3478257 () Bool)

(assert (=> b!3209998 m!3478257))

(declare-fun m!3478259 () Bool)

(assert (=> d!879251 m!3478259))

(assert (=> d!879251 m!3478231))

(declare-fun m!3478261 () Bool)

(assert (=> d!879251 m!3478261))

(declare-fun m!3478263 () Bool)

(assert (=> b!3209997 m!3478263))

(assert (=> b!3209152 d!879251))

(declare-fun d!879253 () Bool)

(assert (=> d!879253 (dynLambda!14613 lambda!117478 (h!41599 (t!238514 tokens!494)))))

(declare-fun lt!1085055 () Unit!50642)

(assert (=> d!879253 (= lt!1085055 (choose!18727 tokens!494 lambda!117478 (h!41599 (t!238514 tokens!494))))))

(declare-fun e!2001610 () Bool)

(assert (=> d!879253 e!2001610))

(declare-fun res!1306724 () Bool)

(assert (=> d!879253 (=> (not res!1306724) (not e!2001610))))

(assert (=> d!879253 (= res!1306724 (forall!7388 tokens!494 lambda!117478))))

(assert (=> d!879253 (= (forallContained!1195 tokens!494 lambda!117478 (h!41599 (t!238514 tokens!494))) lt!1085055)))

(declare-fun b!3210000 () Bool)

(assert (=> b!3210000 (= e!2001610 (contains!6463 tokens!494 (h!41599 (t!238514 tokens!494))))))

(assert (= (and d!879253 res!1306724) b!3210000))

(declare-fun b_lambda!87933 () Bool)

(assert (=> (not b_lambda!87933) (not d!879253)))

(declare-fun m!3478265 () Bool)

(assert (=> d!879253 m!3478265))

(declare-fun m!3478267 () Bool)

(assert (=> d!879253 m!3478267))

(assert (=> d!879253 m!3476769))

(assert (=> b!3210000 m!3477301))

(assert (=> b!3209127 d!879253))

(declare-fun d!879255 () Bool)

(assert (=> d!879255 (dynLambda!14613 lambda!117478 (h!41599 tokens!494))))

(declare-fun lt!1085056 () Unit!50642)

(assert (=> d!879255 (= lt!1085056 (choose!18727 tokens!494 lambda!117478 (h!41599 tokens!494)))))

(declare-fun e!2001611 () Bool)

(assert (=> d!879255 e!2001611))

(declare-fun res!1306725 () Bool)

(assert (=> d!879255 (=> (not res!1306725) (not e!2001611))))

(assert (=> d!879255 (= res!1306725 (forall!7388 tokens!494 lambda!117478))))

(assert (=> d!879255 (= (forallContained!1195 tokens!494 lambda!117478 (h!41599 tokens!494)) lt!1085056)))

(declare-fun b!3210001 () Bool)

(assert (=> b!3210001 (= e!2001611 (contains!6463 tokens!494 (h!41599 tokens!494)))))

(assert (= (and d!879255 res!1306725) b!3210001))

(declare-fun b_lambda!87935 () Bool)

(assert (=> (not b_lambda!87935) (not d!879255)))

(assert (=> d!879255 m!3477061))

(declare-fun m!3478269 () Bool)

(assert (=> d!879255 m!3478269))

(assert (=> d!879255 m!3476769))

(declare-fun m!3478271 () Bool)

(assert (=> b!3210001 m!3478271))

(assert (=> b!3209127 d!879255))

(declare-fun d!879257 () Bool)

(declare-fun res!1306728 () Bool)

(declare-fun e!2001614 () Bool)

(assert (=> d!879257 (=> (not res!1306728) (not e!2001614))))

(declare-fun rulesValid!1915 (LexerInterface!4813 List!36302) Bool)

(assert (=> d!879257 (= res!1306728 (rulesValid!1915 thiss!18206 rules!2135))))

(assert (=> d!879257 (= (rulesInvariant!4210 thiss!18206 rules!2135) e!2001614)))

(declare-fun b!3210004 () Bool)

(declare-datatypes ((List!36305 0))(
  ( (Nil!36181) (Cons!36181 (h!41601 String!40604) (t!238630 List!36305)) )
))
(declare-fun noDuplicateTag!1911 (LexerInterface!4813 List!36302 List!36305) Bool)

(assert (=> b!3210004 (= e!2001614 (noDuplicateTag!1911 thiss!18206 rules!2135 Nil!36181))))

(assert (= (and d!879257 res!1306728) b!3210004))

(declare-fun m!3478273 () Bool)

(assert (=> d!879257 m!3478273))

(declare-fun m!3478275 () Bool)

(assert (=> b!3210004 m!3478275))

(assert (=> b!3209148 d!879257))

(declare-fun d!879259 () Bool)

(declare-fun lt!1085057 () Token!9814)

(assert (=> d!879259 (= lt!1085057 (apply!8200 (list!12869 (_1!20922 lt!1084668)) 0))))

(assert (=> d!879259 (= lt!1085057 (apply!8202 (c!538932 (_1!20922 lt!1084668)) 0))))

(declare-fun e!2001615 () Bool)

(assert (=> d!879259 e!2001615))

(declare-fun res!1306729 () Bool)

(assert (=> d!879259 (=> (not res!1306729) (not e!2001615))))

(assert (=> d!879259 (= res!1306729 (<= 0 0))))

(assert (=> d!879259 (= (apply!8198 (_1!20922 lt!1084668) 0) lt!1085057)))

(declare-fun b!3210005 () Bool)

(assert (=> b!3210005 (= e!2001615 (< 0 (size!27261 (_1!20922 lt!1084668))))))

(assert (= (and d!879259 res!1306729) b!3210005))

(assert (=> d!879259 m!3477697))

(assert (=> d!879259 m!3477697))

(declare-fun m!3478277 () Bool)

(assert (=> d!879259 m!3478277))

(declare-fun m!3478279 () Bool)

(assert (=> d!879259 m!3478279))

(assert (=> b!3210005 m!3476835))

(assert (=> b!3209150 d!879259))

(declare-fun b!3210006 () Bool)

(declare-fun res!1306735 () Bool)

(declare-fun e!2001620 () Bool)

(assert (=> b!3210006 (=> res!1306735 e!2001620)))

(assert (=> b!3210006 (= res!1306735 (not (isEmpty!20266 (tail!5212 lt!1084664))))))

(declare-fun b!3210007 () Bool)

(declare-fun res!1306731 () Bool)

(declare-fun e!2001621 () Bool)

(assert (=> b!3210007 (=> (not res!1306731) (not e!2001621))))

(assert (=> b!3210007 (= res!1306731 (isEmpty!20266 (tail!5212 lt!1084664)))))

(declare-fun b!3210008 () Bool)

(declare-fun e!2001617 () Bool)

(assert (=> b!3210008 (= e!2001617 e!2001620)))

(declare-fun res!1306736 () Bool)

(assert (=> b!3210008 (=> res!1306736 e!2001620)))

(declare-fun call!232239 () Bool)

(assert (=> b!3210008 (= res!1306736 call!232239)))

(declare-fun b!3210009 () Bool)

(declare-fun res!1306734 () Bool)

(declare-fun e!2001622 () Bool)

(assert (=> b!3210009 (=> res!1306734 e!2001622)))

(assert (=> b!3210009 (= res!1306734 (not ((_ is ElementMatch!9983) (regex!5224 lt!1084665))))))

(declare-fun e!2001616 () Bool)

(assert (=> b!3210009 (= e!2001616 e!2001622)))

(declare-fun b!3210010 () Bool)

(declare-fun e!2001618 () Bool)

(assert (=> b!3210010 (= e!2001618 (matchR!4617 (derivativeStep!2951 (regex!5224 lt!1084665) (head!7043 lt!1084664)) (tail!5212 lt!1084664)))))

(declare-fun b!3210011 () Bool)

(assert (=> b!3210011 (= e!2001622 e!2001617)))

(declare-fun res!1306730 () Bool)

(assert (=> b!3210011 (=> (not res!1306730) (not e!2001617))))

(declare-fun lt!1085058 () Bool)

(assert (=> b!3210011 (= res!1306730 (not lt!1085058))))

(declare-fun b!3210012 () Bool)

(declare-fun res!1306732 () Bool)

(assert (=> b!3210012 (=> res!1306732 e!2001622)))

(assert (=> b!3210012 (= res!1306732 e!2001621)))

(declare-fun res!1306737 () Bool)

(assert (=> b!3210012 (=> (not res!1306737) (not e!2001621))))

(assert (=> b!3210012 (= res!1306737 lt!1085058)))

(declare-fun b!3210013 () Bool)

(assert (=> b!3210013 (= e!2001618 (nullable!3398 (regex!5224 lt!1084665)))))

(declare-fun d!879261 () Bool)

(declare-fun e!2001619 () Bool)

(assert (=> d!879261 e!2001619))

(declare-fun c!539109 () Bool)

(assert (=> d!879261 (= c!539109 ((_ is EmptyExpr!9983) (regex!5224 lt!1084665)))))

(assert (=> d!879261 (= lt!1085058 e!2001618)))

(declare-fun c!539110 () Bool)

(assert (=> d!879261 (= c!539110 (isEmpty!20266 lt!1084664))))

(assert (=> d!879261 (validRegex!4552 (regex!5224 lt!1084665))))

(assert (=> d!879261 (= (matchR!4617 (regex!5224 lt!1084665) lt!1084664) lt!1085058)))

(declare-fun bm!232234 () Bool)

(assert (=> bm!232234 (= call!232239 (isEmpty!20266 lt!1084664))))

(declare-fun b!3210014 () Bool)

(assert (=> b!3210014 (= e!2001620 (not (= (head!7043 lt!1084664) (c!538930 (regex!5224 lt!1084665)))))))

(declare-fun b!3210015 () Bool)

(assert (=> b!3210015 (= e!2001621 (= (head!7043 lt!1084664) (c!538930 (regex!5224 lt!1084665))))))

(declare-fun b!3210016 () Bool)

(assert (=> b!3210016 (= e!2001616 (not lt!1085058))))

(declare-fun b!3210017 () Bool)

(assert (=> b!3210017 (= e!2001619 (= lt!1085058 call!232239))))

(declare-fun b!3210018 () Bool)

(declare-fun res!1306733 () Bool)

(assert (=> b!3210018 (=> (not res!1306733) (not e!2001621))))

(assert (=> b!3210018 (= res!1306733 (not call!232239))))

(declare-fun b!3210019 () Bool)

(assert (=> b!3210019 (= e!2001619 e!2001616)))

(declare-fun c!539108 () Bool)

(assert (=> b!3210019 (= c!539108 ((_ is EmptyLang!9983) (regex!5224 lt!1084665)))))

(assert (= (and d!879261 c!539110) b!3210013))

(assert (= (and d!879261 (not c!539110)) b!3210010))

(assert (= (and d!879261 c!539109) b!3210017))

(assert (= (and d!879261 (not c!539109)) b!3210019))

(assert (= (and b!3210019 c!539108) b!3210016))

(assert (= (and b!3210019 (not c!539108)) b!3210009))

(assert (= (and b!3210009 (not res!1306734)) b!3210012))

(assert (= (and b!3210012 res!1306737) b!3210018))

(assert (= (and b!3210018 res!1306733) b!3210007))

(assert (= (and b!3210007 res!1306731) b!3210015))

(assert (= (and b!3210012 (not res!1306732)) b!3210011))

(assert (= (and b!3210011 res!1306730) b!3210008))

(assert (= (and b!3210008 (not res!1306736)) b!3210006))

(assert (= (and b!3210006 (not res!1306735)) b!3210014))

(assert (= (or b!3210017 b!3210008 b!3210018) bm!232234))

(declare-fun m!3478281 () Bool)

(assert (=> b!3210013 m!3478281))

(declare-fun m!3478283 () Bool)

(assert (=> b!3210010 m!3478283))

(assert (=> b!3210010 m!3478283))

(declare-fun m!3478285 () Bool)

(assert (=> b!3210010 m!3478285))

(declare-fun m!3478287 () Bool)

(assert (=> b!3210010 m!3478287))

(assert (=> b!3210010 m!3478285))

(assert (=> b!3210010 m!3478287))

(declare-fun m!3478289 () Bool)

(assert (=> b!3210010 m!3478289))

(assert (=> b!3210014 m!3478283))

(assert (=> b!3210007 m!3478287))

(assert (=> b!3210007 m!3478287))

(declare-fun m!3478291 () Bool)

(assert (=> b!3210007 m!3478291))

(declare-fun m!3478293 () Bool)

(assert (=> d!879261 m!3478293))

(declare-fun m!3478295 () Bool)

(assert (=> d!879261 m!3478295))

(assert (=> bm!232234 m!3478293))

(assert (=> b!3210015 m!3478283))

(assert (=> b!3210006 m!3478287))

(assert (=> b!3210006 m!3478287))

(assert (=> b!3210006 m!3478291))

(assert (=> b!3209128 d!879261))

(declare-fun d!879263 () Bool)

(assert (=> d!879263 (= (get!11519 lt!1084671) (v!35697 lt!1084671))))

(assert (=> b!3209128 d!879263))

(declare-fun d!879265 () Bool)

(declare-fun res!1306742 () Bool)

(declare-fun e!2001627 () Bool)

(assert (=> d!879265 (=> res!1306742 e!2001627)))

(assert (=> d!879265 (= res!1306742 (not ((_ is Cons!36178) rules!2135)))))

(assert (=> d!879265 (= (sepAndNonSepRulesDisjointChars!1418 rules!2135 rules!2135) e!2001627)))

(declare-fun b!3210024 () Bool)

(declare-fun e!2001628 () Bool)

(assert (=> b!3210024 (= e!2001627 e!2001628)))

(declare-fun res!1306743 () Bool)

(assert (=> b!3210024 (=> (not res!1306743) (not e!2001628))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!591 (Rule!10248 List!36302) Bool)

(assert (=> b!3210024 (= res!1306743 (ruleDisjointCharsFromAllFromOtherType!591 (h!41598 rules!2135) rules!2135))))

(declare-fun b!3210025 () Bool)

(assert (=> b!3210025 (= e!2001628 (sepAndNonSepRulesDisjointChars!1418 rules!2135 (t!238513 rules!2135)))))

(assert (= (and d!879265 (not res!1306742)) b!3210024))

(assert (= (and b!3210024 res!1306743) b!3210025))

(declare-fun m!3478297 () Bool)

(assert (=> b!3210024 m!3478297))

(declare-fun m!3478299 () Bool)

(assert (=> b!3210025 m!3478299))

(assert (=> b!3209149 d!879265))

(declare-fun d!879267 () Bool)

(assert (=> d!879267 (= (inv!49032 (tag!5750 (rule!7664 separatorToken!241))) (= (mod (str.len (value!169343 (tag!5750 (rule!7664 separatorToken!241)))) 2) 0))))

(assert (=> b!3209135 d!879267))

(declare-fun d!879269 () Bool)

(declare-fun res!1306744 () Bool)

(declare-fun e!2001629 () Bool)

(assert (=> d!879269 (=> (not res!1306744) (not e!2001629))))

(assert (=> d!879269 (= res!1306744 (semiInverseModEq!2155 (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241)))))))

(assert (=> d!879269 (= (inv!49035 (transformation!5224 (rule!7664 separatorToken!241))) e!2001629)))

(declare-fun b!3210026 () Bool)

(assert (=> b!3210026 (= e!2001629 (equivClasses!2054 (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241)))))))

(assert (= (and d!879269 res!1306744) b!3210026))

(declare-fun m!3478301 () Bool)

(assert (=> d!879269 m!3478301))

(declare-fun m!3478303 () Bool)

(assert (=> b!3210026 m!3478303))

(assert (=> b!3209135 d!879269))

(declare-fun b!3210027 () Bool)

(declare-fun res!1306750 () Bool)

(declare-fun e!2001634 () Bool)

(assert (=> b!3210027 (=> res!1306750 e!2001634)))

(assert (=> b!3210027 (= res!1306750 (not (isEmpty!20266 (tail!5212 lt!1084683))))))

(declare-fun b!3210028 () Bool)

(declare-fun res!1306746 () Bool)

(declare-fun e!2001635 () Bool)

(assert (=> b!3210028 (=> (not res!1306746) (not e!2001635))))

(assert (=> b!3210028 (= res!1306746 (isEmpty!20266 (tail!5212 lt!1084683)))))

(declare-fun b!3210029 () Bool)

(declare-fun e!2001631 () Bool)

(assert (=> b!3210029 (= e!2001631 e!2001634)))

(declare-fun res!1306751 () Bool)

(assert (=> b!3210029 (=> res!1306751 e!2001634)))

(declare-fun call!232240 () Bool)

(assert (=> b!3210029 (= res!1306751 call!232240)))

(declare-fun b!3210030 () Bool)

(declare-fun res!1306749 () Bool)

(declare-fun e!2001636 () Bool)

(assert (=> b!3210030 (=> res!1306749 e!2001636)))

(assert (=> b!3210030 (= res!1306749 (not ((_ is ElementMatch!9983) (regex!5224 lt!1084660))))))

(declare-fun e!2001630 () Bool)

(assert (=> b!3210030 (= e!2001630 e!2001636)))

(declare-fun b!3210031 () Bool)

(declare-fun e!2001632 () Bool)

(assert (=> b!3210031 (= e!2001632 (matchR!4617 (derivativeStep!2951 (regex!5224 lt!1084660) (head!7043 lt!1084683)) (tail!5212 lt!1084683)))))

(declare-fun b!3210032 () Bool)

(assert (=> b!3210032 (= e!2001636 e!2001631)))

(declare-fun res!1306745 () Bool)

(assert (=> b!3210032 (=> (not res!1306745) (not e!2001631))))

(declare-fun lt!1085059 () Bool)

(assert (=> b!3210032 (= res!1306745 (not lt!1085059))))

(declare-fun b!3210033 () Bool)

(declare-fun res!1306747 () Bool)

(assert (=> b!3210033 (=> res!1306747 e!2001636)))

(assert (=> b!3210033 (= res!1306747 e!2001635)))

(declare-fun res!1306752 () Bool)

(assert (=> b!3210033 (=> (not res!1306752) (not e!2001635))))

(assert (=> b!3210033 (= res!1306752 lt!1085059)))

(declare-fun b!3210034 () Bool)

(assert (=> b!3210034 (= e!2001632 (nullable!3398 (regex!5224 lt!1084660)))))

(declare-fun d!879271 () Bool)

(declare-fun e!2001633 () Bool)

(assert (=> d!879271 e!2001633))

(declare-fun c!539112 () Bool)

(assert (=> d!879271 (= c!539112 ((_ is EmptyExpr!9983) (regex!5224 lt!1084660)))))

(assert (=> d!879271 (= lt!1085059 e!2001632)))

(declare-fun c!539113 () Bool)

(assert (=> d!879271 (= c!539113 (isEmpty!20266 lt!1084683))))

(assert (=> d!879271 (validRegex!4552 (regex!5224 lt!1084660))))

(assert (=> d!879271 (= (matchR!4617 (regex!5224 lt!1084660) lt!1084683) lt!1085059)))

(declare-fun bm!232235 () Bool)

(assert (=> bm!232235 (= call!232240 (isEmpty!20266 lt!1084683))))

(declare-fun b!3210035 () Bool)

(assert (=> b!3210035 (= e!2001634 (not (= (head!7043 lt!1084683) (c!538930 (regex!5224 lt!1084660)))))))

(declare-fun b!3210036 () Bool)

(assert (=> b!3210036 (= e!2001635 (= (head!7043 lt!1084683) (c!538930 (regex!5224 lt!1084660))))))

(declare-fun b!3210037 () Bool)

(assert (=> b!3210037 (= e!2001630 (not lt!1085059))))

(declare-fun b!3210038 () Bool)

(assert (=> b!3210038 (= e!2001633 (= lt!1085059 call!232240))))

(declare-fun b!3210039 () Bool)

(declare-fun res!1306748 () Bool)

(assert (=> b!3210039 (=> (not res!1306748) (not e!2001635))))

(assert (=> b!3210039 (= res!1306748 (not call!232240))))

(declare-fun b!3210040 () Bool)

(assert (=> b!3210040 (= e!2001633 e!2001630)))

(declare-fun c!539111 () Bool)

(assert (=> b!3210040 (= c!539111 ((_ is EmptyLang!9983) (regex!5224 lt!1084660)))))

(assert (= (and d!879271 c!539113) b!3210034))

(assert (= (and d!879271 (not c!539113)) b!3210031))

(assert (= (and d!879271 c!539112) b!3210038))

(assert (= (and d!879271 (not c!539112)) b!3210040))

(assert (= (and b!3210040 c!539111) b!3210037))

(assert (= (and b!3210040 (not c!539111)) b!3210030))

(assert (= (and b!3210030 (not res!1306749)) b!3210033))

(assert (= (and b!3210033 res!1306752) b!3210039))

(assert (= (and b!3210039 res!1306748) b!3210028))

(assert (= (and b!3210028 res!1306746) b!3210036))

(assert (= (and b!3210033 (not res!1306747)) b!3210032))

(assert (= (and b!3210032 res!1306745) b!3210029))

(assert (= (and b!3210029 (not res!1306751)) b!3210027))

(assert (= (and b!3210027 (not res!1306750)) b!3210035))

(assert (= (or b!3210038 b!3210029 b!3210039) bm!232235))

(declare-fun m!3478305 () Bool)

(assert (=> b!3210034 m!3478305))

(declare-fun m!3478307 () Bool)

(assert (=> b!3210031 m!3478307))

(assert (=> b!3210031 m!3478307))

(declare-fun m!3478309 () Bool)

(assert (=> b!3210031 m!3478309))

(declare-fun m!3478311 () Bool)

(assert (=> b!3210031 m!3478311))

(assert (=> b!3210031 m!3478309))

(assert (=> b!3210031 m!3478311))

(declare-fun m!3478313 () Bool)

(assert (=> b!3210031 m!3478313))

(assert (=> b!3210035 m!3478307))

(assert (=> b!3210028 m!3478311))

(assert (=> b!3210028 m!3478311))

(declare-fun m!3478315 () Bool)

(assert (=> b!3210028 m!3478315))

(declare-fun m!3478317 () Bool)

(assert (=> d!879271 m!3478317))

(declare-fun m!3478319 () Bool)

(assert (=> d!879271 m!3478319))

(assert (=> bm!232235 m!3478317))

(assert (=> b!3210036 m!3478307))

(assert (=> b!3210027 m!3478311))

(assert (=> b!3210027 m!3478311))

(assert (=> b!3210027 m!3478315))

(assert (=> b!3209157 d!879271))

(declare-fun d!879273 () Bool)

(assert (=> d!879273 (= (get!11519 lt!1084688) (v!35697 lt!1084688))))

(assert (=> b!3209157 d!879273))

(declare-fun d!879275 () Bool)

(declare-fun lt!1085062 () Bool)

(declare-fun isEmpty!20274 (List!36303) Bool)

(assert (=> d!879275 (= lt!1085062 (isEmpty!20274 (list!12869 (_1!20922 (lex!2143 thiss!18206 rules!2135 lt!1084685)))))))

(declare-fun isEmpty!20275 (Conc!10824) Bool)

(assert (=> d!879275 (= lt!1085062 (isEmpty!20275 (c!538932 (_1!20922 (lex!2143 thiss!18206 rules!2135 lt!1084685)))))))

(assert (=> d!879275 (= (isEmpty!20261 (_1!20922 (lex!2143 thiss!18206 rules!2135 lt!1084685))) lt!1085062)))

(declare-fun bs!541577 () Bool)

(assert (= bs!541577 d!879275))

(declare-fun m!3478321 () Bool)

(assert (=> bs!541577 m!3478321))

(assert (=> bs!541577 m!3478321))

(declare-fun m!3478323 () Bool)

(assert (=> bs!541577 m!3478323))

(declare-fun m!3478325 () Bool)

(assert (=> bs!541577 m!3478325))

(assert (=> b!3209132 d!879275))

(declare-fun d!879277 () Bool)

(declare-fun e!2001637 () Bool)

(assert (=> d!879277 e!2001637))

(declare-fun res!1306754 () Bool)

(assert (=> d!879277 (=> (not res!1306754) (not e!2001637))))

(declare-fun e!2001638 () Bool)

(assert (=> d!879277 (= res!1306754 e!2001638)))

(declare-fun c!539114 () Bool)

(declare-fun lt!1085063 () tuple2!35576)

(assert (=> d!879277 (= c!539114 (> (size!27261 (_1!20922 lt!1085063)) 0))))

(assert (=> d!879277 (= lt!1085063 (lexTailRecV2!933 thiss!18206 rules!2135 lt!1084685 (BalanceConc!21261 Empty!10823) lt!1084685 (BalanceConc!21263 Empty!10824)))))

(assert (=> d!879277 (= (lex!2143 thiss!18206 rules!2135 lt!1084685) lt!1085063)))

(declare-fun b!3210041 () Bool)

(declare-fun e!2001639 () Bool)

(assert (=> b!3210041 (= e!2001639 (not (isEmpty!20261 (_1!20922 lt!1085063))))))

(declare-fun b!3210042 () Bool)

(declare-fun res!1306755 () Bool)

(assert (=> b!3210042 (=> (not res!1306755) (not e!2001637))))

(assert (=> b!3210042 (= res!1306755 (= (list!12869 (_1!20922 lt!1085063)) (_1!20924 (lexList!1313 thiss!18206 rules!2135 (list!12865 lt!1084685)))))))

(declare-fun b!3210043 () Bool)

(assert (=> b!3210043 (= e!2001638 e!2001639)))

(declare-fun res!1306753 () Bool)

(assert (=> b!3210043 (= res!1306753 (< (size!27263 (_2!20922 lt!1085063)) (size!27263 lt!1084685)))))

(assert (=> b!3210043 (=> (not res!1306753) (not e!2001639))))

(declare-fun b!3210044 () Bool)

(assert (=> b!3210044 (= e!2001637 (= (list!12865 (_2!20922 lt!1085063)) (_2!20924 (lexList!1313 thiss!18206 rules!2135 (list!12865 lt!1084685)))))))

(declare-fun b!3210045 () Bool)

(assert (=> b!3210045 (= e!2001638 (= (_2!20922 lt!1085063) lt!1084685))))

(assert (= (and d!879277 c!539114) b!3210043))

(assert (= (and d!879277 (not c!539114)) b!3210045))

(assert (= (and b!3210043 res!1306753) b!3210041))

(assert (= (and d!879277 res!1306754) b!3210042))

(assert (= (and b!3210042 res!1306755) b!3210044))

(declare-fun m!3478327 () Bool)

(assert (=> b!3210043 m!3478327))

(declare-fun m!3478329 () Bool)

(assert (=> b!3210043 m!3478329))

(declare-fun m!3478331 () Bool)

(assert (=> b!3210041 m!3478331))

(declare-fun m!3478333 () Bool)

(assert (=> b!3210042 m!3478333))

(declare-fun m!3478335 () Bool)

(assert (=> b!3210042 m!3478335))

(assert (=> b!3210042 m!3478335))

(declare-fun m!3478337 () Bool)

(assert (=> b!3210042 m!3478337))

(declare-fun m!3478339 () Bool)

(assert (=> b!3210044 m!3478339))

(assert (=> b!3210044 m!3478335))

(assert (=> b!3210044 m!3478335))

(assert (=> b!3210044 m!3478337))

(declare-fun m!3478341 () Bool)

(assert (=> d!879277 m!3478341))

(declare-fun m!3478343 () Bool)

(assert (=> d!879277 m!3478343))

(assert (=> b!3209132 d!879277))

(declare-fun d!879279 () Bool)

(assert (=> d!879279 (= (seqFromList!3519 lt!1084683) (fromListB!1541 lt!1084683))))

(declare-fun bs!541578 () Bool)

(assert (= bs!541578 d!879279))

(declare-fun m!3478345 () Bool)

(assert (=> bs!541578 m!3478345))

(assert (=> b!3209132 d!879279))

(declare-fun d!879281 () Bool)

(assert (=> d!879281 (= (inv!49032 (tag!5750 (rule!7664 (h!41599 tokens!494)))) (= (mod (str.len (value!169343 (tag!5750 (rule!7664 (h!41599 tokens!494))))) 2) 0))))

(assert (=> b!3209134 d!879281))

(declare-fun d!879283 () Bool)

(declare-fun res!1306756 () Bool)

(declare-fun e!2001640 () Bool)

(assert (=> d!879283 (=> (not res!1306756) (not e!2001640))))

(assert (=> d!879283 (= res!1306756 (semiInverseModEq!2155 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))))))

(assert (=> d!879283 (= (inv!49035 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) e!2001640)))

(declare-fun b!3210046 () Bool)

(assert (=> b!3210046 (= e!2001640 (equivClasses!2054 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))))))

(assert (= (and d!879283 res!1306756) b!3210046))

(declare-fun m!3478347 () Bool)

(assert (=> d!879283 m!3478347))

(declare-fun m!3478349 () Bool)

(assert (=> b!3210046 m!3478349))

(assert (=> b!3209134 d!879283))

(declare-fun d!879285 () Bool)

(declare-fun lt!1085065 () Bool)

(declare-fun e!2001642 () Bool)

(assert (=> d!879285 (= lt!1085065 e!2001642)))

(declare-fun res!1306757 () Bool)

(assert (=> d!879285 (=> (not res!1306757) (not e!2001642))))

(assert (=> d!879285 (= res!1306757 (= (list!12869 (_1!20922 (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 tokens!494)))))) (list!12869 (singletonSeq!2320 (h!41599 tokens!494)))))))

(declare-fun e!2001641 () Bool)

(assert (=> d!879285 (= lt!1085065 e!2001641)))

(declare-fun res!1306758 () Bool)

(assert (=> d!879285 (=> (not res!1306758) (not e!2001641))))

(declare-fun lt!1085064 () tuple2!35576)

(assert (=> d!879285 (= res!1306758 (= (size!27261 (_1!20922 lt!1085064)) 1))))

(assert (=> d!879285 (= lt!1085064 (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 tokens!494)))))))

(assert (=> d!879285 (not (isEmpty!20262 rules!2135))))

(assert (=> d!879285 (= (rulesProduceIndividualToken!2305 thiss!18206 rules!2135 (h!41599 tokens!494)) lt!1085065)))

(declare-fun b!3210047 () Bool)

(declare-fun res!1306759 () Bool)

(assert (=> b!3210047 (=> (not res!1306759) (not e!2001641))))

(assert (=> b!3210047 (= res!1306759 (= (apply!8198 (_1!20922 lt!1085064) 0) (h!41599 tokens!494)))))

(declare-fun b!3210048 () Bool)

(assert (=> b!3210048 (= e!2001641 (isEmpty!20263 (_2!20922 lt!1085064)))))

(declare-fun b!3210049 () Bool)

(assert (=> b!3210049 (= e!2001642 (isEmpty!20263 (_2!20922 (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 tokens!494)))))))))

(assert (= (and d!879285 res!1306758) b!3210047))

(assert (= (and b!3210047 res!1306759) b!3210048))

(assert (= (and d!879285 res!1306757) b!3210049))

(assert (=> d!879285 m!3476859))

(declare-fun m!3478351 () Bool)

(assert (=> d!879285 m!3478351))

(assert (=> d!879285 m!3476859))

(declare-fun m!3478353 () Bool)

(assert (=> d!879285 m!3478353))

(assert (=> d!879285 m!3476859))

(declare-fun m!3478355 () Bool)

(assert (=> d!879285 m!3478355))

(assert (=> d!879285 m!3476869))

(declare-fun m!3478357 () Bool)

(assert (=> d!879285 m!3478357))

(assert (=> d!879285 m!3478353))

(declare-fun m!3478359 () Bool)

(assert (=> d!879285 m!3478359))

(declare-fun m!3478361 () Bool)

(assert (=> b!3210047 m!3478361))

(declare-fun m!3478363 () Bool)

(assert (=> b!3210048 m!3478363))

(assert (=> b!3210049 m!3476859))

(assert (=> b!3210049 m!3476859))

(assert (=> b!3210049 m!3478353))

(assert (=> b!3210049 m!3478353))

(assert (=> b!3210049 m!3478359))

(declare-fun m!3478365 () Bool)

(assert (=> b!3210049 m!3478365))

(assert (=> b!3209155 d!879285))

(declare-fun d!879287 () Bool)

(declare-fun c!539117 () Bool)

(assert (=> d!879287 (= c!539117 ((_ is Cons!36179) tokens!494))))

(declare-fun e!2001645 () List!36301)

(assert (=> d!879287 (= (printWithSeparatorTokenList!158 thiss!18206 tokens!494 separatorToken!241) e!2001645)))

(declare-fun b!3210054 () Bool)

(assert (=> b!3210054 (= e!2001645 (++!8680 (++!8680 (list!12865 (charsOf!3240 (h!41599 tokens!494))) (list!12865 (charsOf!3240 separatorToken!241))) (printWithSeparatorTokenList!158 thiss!18206 (t!238514 tokens!494) separatorToken!241)))))

(declare-fun b!3210055 () Bool)

(assert (=> b!3210055 (= e!2001645 Nil!36177)))

(assert (= (and d!879287 c!539117) b!3210054))

(assert (= (and d!879287 (not c!539117)) b!3210055))

(assert (=> b!3210054 m!3476693))

(assert (=> b!3210054 m!3476707))

(assert (=> b!3210054 m!3476693))

(assert (=> b!3210054 m!3476715))

(assert (=> b!3210054 m!3476717))

(assert (=> b!3210054 m!3476707))

(declare-fun m!3478367 () Bool)

(assert (=> b!3210054 m!3478367))

(assert (=> b!3210054 m!3476715))

(assert (=> b!3210054 m!3476717))

(assert (=> b!3210054 m!3476697))

(assert (=> b!3210054 m!3478367))

(assert (=> b!3210054 m!3476697))

(declare-fun m!3478369 () Bool)

(assert (=> b!3210054 m!3478369))

(assert (=> b!3209133 d!879287))

(declare-fun b!3210056 () Bool)

(declare-fun e!2001646 () List!36301)

(assert (=> b!3210056 (= e!2001646 lt!1084696)))

(declare-fun e!2001647 () Bool)

(declare-fun lt!1085066 () List!36301)

(declare-fun b!3210059 () Bool)

(assert (=> b!3210059 (= e!2001647 (or (not (= lt!1084696 Nil!36177)) (= lt!1085066 lt!1084664)))))

(declare-fun b!3210058 () Bool)

(declare-fun res!1306760 () Bool)

(assert (=> b!3210058 (=> (not res!1306760) (not e!2001647))))

(assert (=> b!3210058 (= res!1306760 (= (size!27260 lt!1085066) (+ (size!27260 lt!1084664) (size!27260 lt!1084696))))))

(declare-fun d!879289 () Bool)

(assert (=> d!879289 e!2001647))

(declare-fun res!1306761 () Bool)

(assert (=> d!879289 (=> (not res!1306761) (not e!2001647))))

(assert (=> d!879289 (= res!1306761 (= (content!4888 lt!1085066) ((_ map or) (content!4888 lt!1084664) (content!4888 lt!1084696))))))

(assert (=> d!879289 (= lt!1085066 e!2001646)))

(declare-fun c!539118 () Bool)

(assert (=> d!879289 (= c!539118 ((_ is Nil!36177) lt!1084664))))

(assert (=> d!879289 (= (++!8680 lt!1084664 lt!1084696) lt!1085066)))

(declare-fun b!3210057 () Bool)

(assert (=> b!3210057 (= e!2001646 (Cons!36177 (h!41597 lt!1084664) (++!8680 (t!238512 lt!1084664) lt!1084696)))))

(assert (= (and d!879289 c!539118) b!3210056))

(assert (= (and d!879289 (not c!539118)) b!3210057))

(assert (= (and d!879289 res!1306761) b!3210058))

(assert (= (and b!3210058 res!1306760) b!3210059))

(declare-fun m!3478371 () Bool)

(assert (=> b!3210058 m!3478371))

(assert (=> b!3210058 m!3476801))

(assert (=> b!3210058 m!3478257))

(declare-fun m!3478373 () Bool)

(assert (=> d!879289 m!3478373))

(declare-fun m!3478375 () Bool)

(assert (=> d!879289 m!3478375))

(assert (=> d!879289 m!3478261))

(declare-fun m!3478377 () Bool)

(assert (=> b!3210057 m!3478377))

(assert (=> b!3209133 d!879289))

(declare-fun e!2001648 () List!36301)

(declare-fun b!3210060 () Bool)

(assert (=> b!3210060 (= e!2001648 (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241))))

(declare-fun lt!1085067 () List!36301)

(declare-fun b!3210063 () Bool)

(declare-fun e!2001649 () Bool)

(assert (=> b!3210063 (= e!2001649 (or (not (= (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241) Nil!36177)) (= lt!1085067 (++!8680 lt!1084664 lt!1084696))))))

(declare-fun b!3210062 () Bool)

(declare-fun res!1306762 () Bool)

(assert (=> b!3210062 (=> (not res!1306762) (not e!2001649))))

(assert (=> b!3210062 (= res!1306762 (= (size!27260 lt!1085067) (+ (size!27260 (++!8680 lt!1084664 lt!1084696)) (size!27260 (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241)))))))

(declare-fun d!879291 () Bool)

(assert (=> d!879291 e!2001649))

(declare-fun res!1306763 () Bool)

(assert (=> d!879291 (=> (not res!1306763) (not e!2001649))))

(assert (=> d!879291 (= res!1306763 (= (content!4888 lt!1085067) ((_ map or) (content!4888 (++!8680 lt!1084664 lt!1084696)) (content!4888 (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241)))))))

(assert (=> d!879291 (= lt!1085067 e!2001648)))

(declare-fun c!539119 () Bool)

(assert (=> d!879291 (= c!539119 ((_ is Nil!36177) (++!8680 lt!1084664 lt!1084696)))))

(assert (=> d!879291 (= (++!8680 (++!8680 lt!1084664 lt!1084696) (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241)) lt!1085067)))

(declare-fun b!3210061 () Bool)

(assert (=> b!3210061 (= e!2001648 (Cons!36177 (h!41597 (++!8680 lt!1084664 lt!1084696)) (++!8680 (t!238512 (++!8680 lt!1084664 lt!1084696)) (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241))))))

(assert (= (and d!879291 c!539119) b!3210060))

(assert (= (and d!879291 (not c!539119)) b!3210061))

(assert (= (and d!879291 res!1306763) b!3210062))

(assert (= (and b!3210062 res!1306762) b!3210063))

(declare-fun m!3478379 () Bool)

(assert (=> b!3210062 m!3478379))

(assert (=> b!3210062 m!3476689))

(declare-fun m!3478381 () Bool)

(assert (=> b!3210062 m!3478381))

(assert (=> b!3210062 m!3476699))

(declare-fun m!3478383 () Bool)

(assert (=> b!3210062 m!3478383))

(declare-fun m!3478385 () Bool)

(assert (=> d!879291 m!3478385))

(assert (=> d!879291 m!3476689))

(declare-fun m!3478387 () Bool)

(assert (=> d!879291 m!3478387))

(assert (=> d!879291 m!3476699))

(declare-fun m!3478389 () Bool)

(assert (=> d!879291 m!3478389))

(assert (=> b!3210061 m!3476699))

(declare-fun m!3478391 () Bool)

(assert (=> b!3210061 m!3478391))

(assert (=> b!3209133 d!879291))

(declare-fun d!879293 () Bool)

(declare-fun lt!1085068 () BalanceConc!21260)

(assert (=> d!879293 (= (list!12865 lt!1085068) (originalCharacters!5938 separatorToken!241))))

(assert (=> d!879293 (= lt!1085068 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (value!169344 separatorToken!241)))))

(assert (=> d!879293 (= (charsOf!3240 separatorToken!241) lt!1085068)))

(declare-fun b_lambda!87937 () Bool)

(assert (=> (not b_lambda!87937) (not d!879293)))

(assert (=> d!879293 t!238523))

(declare-fun b_and!213803 () Bool)

(assert (= b_and!213741 (and (=> t!238523 result!199920) b_and!213803)))

(assert (=> d!879293 t!238525))

(declare-fun b_and!213805 () Bool)

(assert (= b_and!213743 (and (=> t!238525 result!199924) b_and!213805)))

(assert (=> d!879293 t!238527))

(declare-fun b_and!213807 () Bool)

(assert (= b_and!213745 (and (=> t!238527 result!199926) b_and!213807)))

(declare-fun m!3478393 () Bool)

(assert (=> d!879293 m!3478393))

(assert (=> d!879293 m!3476979))

(assert (=> b!3209133 d!879293))

(declare-fun d!879295 () Bool)

(assert (=> d!879295 (= (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494)))) (list!12868 (c!538931 (charsOf!3240 (h!41599 (t!238514 tokens!494))))))))

(declare-fun bs!541579 () Bool)

(assert (= bs!541579 d!879295))

(declare-fun m!3478395 () Bool)

(assert (=> bs!541579 m!3478395))

(assert (=> b!3209133 d!879295))

(declare-fun b!3210064 () Bool)

(declare-fun e!2001650 () List!36301)

(assert (=> b!3210064 (= e!2001650 lt!1084690)))

(declare-fun b!3210067 () Bool)

(declare-fun e!2001651 () Bool)

(declare-fun lt!1085069 () List!36301)

(assert (=> b!3210067 (= e!2001651 (or (not (= lt!1084690 Nil!36177)) (= lt!1085069 lt!1084696)))))

(declare-fun b!3210066 () Bool)

(declare-fun res!1306764 () Bool)

(assert (=> b!3210066 (=> (not res!1306764) (not e!2001651))))

(assert (=> b!3210066 (= res!1306764 (= (size!27260 lt!1085069) (+ (size!27260 lt!1084696) (size!27260 lt!1084690))))))

(declare-fun d!879297 () Bool)

(assert (=> d!879297 e!2001651))

(declare-fun res!1306765 () Bool)

(assert (=> d!879297 (=> (not res!1306765) (not e!2001651))))

(assert (=> d!879297 (= res!1306765 (= (content!4888 lt!1085069) ((_ map or) (content!4888 lt!1084696) (content!4888 lt!1084690))))))

(assert (=> d!879297 (= lt!1085069 e!2001650)))

(declare-fun c!539120 () Bool)

(assert (=> d!879297 (= c!539120 ((_ is Nil!36177) lt!1084696))))

(assert (=> d!879297 (= (++!8680 lt!1084696 lt!1084690) lt!1085069)))

(declare-fun b!3210065 () Bool)

(assert (=> b!3210065 (= e!2001650 (Cons!36177 (h!41597 lt!1084696) (++!8680 (t!238512 lt!1084696) lt!1084690)))))

(assert (= (and d!879297 c!539120) b!3210064))

(assert (= (and d!879297 (not c!539120)) b!3210065))

(assert (= (and d!879297 res!1306765) b!3210066))

(assert (= (and b!3210066 res!1306764) b!3210067))

(declare-fun m!3478397 () Bool)

(assert (=> b!3210066 m!3478397))

(assert (=> b!3210066 m!3478257))

(assert (=> b!3210066 m!3478245))

(declare-fun m!3478399 () Bool)

(assert (=> d!879297 m!3478399))

(assert (=> d!879297 m!3478261))

(assert (=> d!879297 m!3478251))

(declare-fun m!3478401 () Bool)

(assert (=> b!3210065 m!3478401))

(assert (=> b!3209133 d!879297))

(declare-fun d!879299 () Bool)

(declare-fun c!539121 () Bool)

(assert (=> d!879299 (= c!539121 ((_ is Cons!36179) (t!238514 (t!238514 tokens!494))))))

(declare-fun e!2001652 () List!36301)

(assert (=> d!879299 (= (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241) e!2001652)))

(declare-fun b!3210068 () Bool)

(assert (=> b!3210068 (= e!2001652 (++!8680 (++!8680 (list!12865 (charsOf!3240 (h!41599 (t!238514 (t!238514 tokens!494))))) (list!12865 (charsOf!3240 separatorToken!241))) (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 (t!238514 tokens!494))) separatorToken!241)))))

(declare-fun b!3210069 () Bool)

(assert (=> b!3210069 (= e!2001652 Nil!36177)))

(assert (= (and d!879299 c!539121) b!3210068))

(assert (= (and d!879299 (not c!539121)) b!3210069))

(assert (=> b!3210068 m!3476693))

(assert (=> b!3210068 m!3476707))

(assert (=> b!3210068 m!3476693))

(declare-fun m!3478403 () Bool)

(assert (=> b!3210068 m!3478403))

(declare-fun m!3478405 () Bool)

(assert (=> b!3210068 m!3478405))

(assert (=> b!3210068 m!3476707))

(declare-fun m!3478407 () Bool)

(assert (=> b!3210068 m!3478407))

(assert (=> b!3210068 m!3478403))

(assert (=> b!3210068 m!3478405))

(declare-fun m!3478409 () Bool)

(assert (=> b!3210068 m!3478409))

(assert (=> b!3210068 m!3478407))

(assert (=> b!3210068 m!3478409))

(declare-fun m!3478411 () Bool)

(assert (=> b!3210068 m!3478411))

(assert (=> b!3209133 d!879299))

(declare-fun d!879301 () Bool)

(declare-fun c!539122 () Bool)

(assert (=> d!879301 (= c!539122 ((_ is Cons!36179) (t!238514 tokens!494)))))

(declare-fun e!2001653 () List!36301)

(assert (=> d!879301 (= (printWithSeparatorTokenList!158 thiss!18206 (t!238514 tokens!494) separatorToken!241) e!2001653)))

(declare-fun b!3210070 () Bool)

(assert (=> b!3210070 (= e!2001653 (++!8680 (++!8680 (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494)))) (list!12865 (charsOf!3240 separatorToken!241))) (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241)))))

(declare-fun b!3210071 () Bool)

(assert (=> b!3210071 (= e!2001653 Nil!36177)))

(assert (= (and d!879301 c!539122) b!3210070))

(assert (= (and d!879301 (not c!539122)) b!3210071))

(assert (=> b!3210070 m!3476693))

(assert (=> b!3210070 m!3476707))

(assert (=> b!3210070 m!3476693))

(assert (=> b!3210070 m!3476691))

(assert (=> b!3210070 m!3476703))

(assert (=> b!3210070 m!3476707))

(declare-fun m!3478413 () Bool)

(assert (=> b!3210070 m!3478413))

(assert (=> b!3210070 m!3476691))

(assert (=> b!3210070 m!3476703))

(assert (=> b!3210070 m!3476699))

(assert (=> b!3210070 m!3478413))

(assert (=> b!3210070 m!3476699))

(declare-fun m!3478415 () Bool)

(assert (=> b!3210070 m!3478415))

(assert (=> b!3209133 d!879301))

(declare-fun d!879303 () Bool)

(assert (=> d!879303 (= (list!12865 (charsOf!3240 separatorToken!241)) (list!12868 (c!538931 (charsOf!3240 separatorToken!241))))))

(declare-fun bs!541580 () Bool)

(assert (= bs!541580 d!879303))

(declare-fun m!3478417 () Bool)

(assert (=> bs!541580 m!3478417))

(assert (=> b!3209133 d!879303))

(declare-fun d!879305 () Bool)

(declare-fun lt!1085070 () BalanceConc!21260)

(assert (=> d!879305 (= (list!12865 lt!1085070) (originalCharacters!5938 (h!41599 (t!238514 tokens!494))))))

(assert (=> d!879305 (= lt!1085070 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (value!169344 (h!41599 (t!238514 tokens!494)))))))

(assert (=> d!879305 (= (charsOf!3240 (h!41599 (t!238514 tokens!494))) lt!1085070)))

(declare-fun b_lambda!87939 () Bool)

(assert (=> (not b_lambda!87939) (not d!879305)))

(declare-fun t!238604 () Bool)

(declare-fun tb!157645 () Bool)

(assert (=> (and b!3209139 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!238604) tb!157645))

(declare-fun b!3210072 () Bool)

(declare-fun e!2001654 () Bool)

(declare-fun tp!1013318 () Bool)

(assert (=> b!3210072 (= e!2001654 (and (inv!49039 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (value!169344 (h!41599 (t!238514 tokens!494)))))) tp!1013318))))

(declare-fun result!200002 () Bool)

(assert (=> tb!157645 (= result!200002 (and (inv!49040 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (value!169344 (h!41599 (t!238514 tokens!494))))) e!2001654))))

(assert (= tb!157645 b!3210072))

(declare-fun m!3478419 () Bool)

(assert (=> b!3210072 m!3478419))

(declare-fun m!3478421 () Bool)

(assert (=> tb!157645 m!3478421))

(assert (=> d!879305 t!238604))

(declare-fun b_and!213809 () Bool)

(assert (= b_and!213803 (and (=> t!238604 result!200002) b_and!213809)))

(declare-fun t!238606 () Bool)

(declare-fun tb!157647 () Bool)

(assert (=> (and b!3209120 (= (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!238606) tb!157647))

(declare-fun result!200004 () Bool)

(assert (= result!200004 result!200002))

(assert (=> d!879305 t!238606))

(declare-fun b_and!213811 () Bool)

(assert (= b_and!213805 (and (=> t!238606 result!200004) b_and!213811)))

(declare-fun tb!157649 () Bool)

(declare-fun t!238608 () Bool)

(assert (=> (and b!3209140 (= (toChars!7167 (transformation!5224 (h!41598 rules!2135))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!238608) tb!157649))

(declare-fun result!200006 () Bool)

(assert (= result!200006 result!200002))

(assert (=> d!879305 t!238608))

(declare-fun b_and!213813 () Bool)

(assert (= b_and!213807 (and (=> t!238608 result!200006) b_and!213813)))

(declare-fun m!3478423 () Bool)

(assert (=> d!879305 m!3478423))

(declare-fun m!3478425 () Bool)

(assert (=> d!879305 m!3478425))

(assert (=> b!3209133 d!879305))

(declare-fun b!3210083 () Bool)

(declare-fun b_free!85421 () Bool)

(declare-fun b_next!86125 () Bool)

(assert (=> b!3210083 (= b_free!85421 (not b_next!86125))))

(declare-fun t!238610 () Bool)

(declare-fun tb!157651 () Bool)

(assert (=> (and b!3210083 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!238610) tb!157651))

(declare-fun result!200010 () Bool)

(assert (= result!200010 result!199934))

(assert (=> d!879035 t!238610))

(declare-fun t!238612 () Bool)

(declare-fun tb!157653 () Bool)

(assert (=> (and b!3210083 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!238612) tb!157653))

(declare-fun result!200012 () Bool)

(assert (= result!200012 result!199942))

(assert (=> d!879053 t!238612))

(declare-fun tp!1013330 () Bool)

(declare-fun b_and!213815 () Bool)

(assert (=> b!3210083 (= tp!1013330 (and (=> t!238610 result!200010) (=> t!238612 result!200012) b_and!213815))))

(declare-fun b_free!85423 () Bool)

(declare-fun b_next!86127 () Bool)

(assert (=> b!3210083 (= b_free!85423 (not b_next!86127))))

(declare-fun tb!157655 () Bool)

(declare-fun t!238614 () Bool)

(assert (=> (and b!3210083 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!238614) tb!157655))

(declare-fun result!200014 () Bool)

(assert (= result!200014 result!200002))

(assert (=> d!879305 t!238614))

(declare-fun t!238616 () Bool)

(declare-fun tb!157657 () Bool)

(assert (=> (and b!3210083 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241)))) t!238616) tb!157657))

(declare-fun result!200016 () Bool)

(assert (= result!200016 result!199920))

(assert (=> d!879293 t!238616))

(declare-fun t!238618 () Bool)

(declare-fun tb!157659 () Bool)

(assert (=> (and b!3210083 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!238618) tb!157659))

(declare-fun result!200018 () Bool)

(assert (= result!200018 result!199928))

(assert (=> b!3209346 t!238618))

(assert (=> d!878969 t!238618))

(assert (=> b!3209271 t!238616))

(declare-fun tp!1013329 () Bool)

(declare-fun b_and!213817 () Bool)

(assert (=> b!3210083 (= tp!1013329 (and (=> t!238616 result!200016) (=> t!238614 result!200014) (=> t!238618 result!200018) b_and!213817))))

(declare-fun e!2001665 () Bool)

(assert (=> b!3210083 (= e!2001665 (and tp!1013330 tp!1013329))))

(declare-fun e!2001666 () Bool)

(declare-fun tp!1013328 () Bool)

(declare-fun b!3210082 () Bool)

(assert (=> b!3210082 (= e!2001666 (and tp!1013328 (inv!49032 (tag!5750 (h!41598 (t!238513 rules!2135)))) (inv!49035 (transformation!5224 (h!41598 (t!238513 rules!2135)))) e!2001665))))

(declare-fun b!3210081 () Bool)

(declare-fun e!2001663 () Bool)

(declare-fun tp!1013327 () Bool)

(assert (=> b!3210081 (= e!2001663 (and e!2001666 tp!1013327))))

(assert (=> b!3209151 (= tp!1013242 e!2001663)))

(assert (= b!3210082 b!3210083))

(assert (= b!3210081 b!3210082))

(assert (= (and b!3209151 ((_ is Cons!36178) (t!238513 rules!2135))) b!3210081))

(declare-fun m!3478427 () Bool)

(assert (=> b!3210082 m!3478427))

(declare-fun m!3478429 () Bool)

(assert (=> b!3210082 m!3478429))

(declare-fun b!3210086 () Bool)

(declare-fun e!2001669 () Bool)

(assert (=> b!3210086 (= e!2001669 true)))

(declare-fun b!3210085 () Bool)

(declare-fun e!2001668 () Bool)

(assert (=> b!3210085 (= e!2001668 e!2001669)))

(declare-fun b!3210084 () Bool)

(declare-fun e!2001667 () Bool)

(assert (=> b!3210084 (= e!2001667 e!2001668)))

(assert (=> b!3209166 e!2001667))

(assert (= b!3210085 b!3210086))

(assert (= b!3210084 b!3210085))

(assert (= (and b!3209166 ((_ is Cons!36178) (t!238513 rules!2135))) b!3210084))

(assert (=> b!3210086 (< (dynLambda!14607 order!18473 (toValue!7308 (transformation!5224 (h!41598 (t!238513 rules!2135))))) (dynLambda!14608 order!18475 lambda!117479))))

(assert (=> b!3210086 (< (dynLambda!14609 order!18477 (toChars!7167 (transformation!5224 (h!41598 (t!238513 rules!2135))))) (dynLambda!14608 order!18475 lambda!117479))))

(declare-fun b!3210100 () Bool)

(declare-fun e!2001672 () Bool)

(declare-fun tp!1013345 () Bool)

(declare-fun tp!1013344 () Bool)

(assert (=> b!3210100 (= e!2001672 (and tp!1013345 tp!1013344))))

(declare-fun b!3210098 () Bool)

(declare-fun tp!1013343 () Bool)

(declare-fun tp!1013342 () Bool)

(assert (=> b!3210098 (= e!2001672 (and tp!1013343 tp!1013342))))

(declare-fun b!3210099 () Bool)

(declare-fun tp!1013341 () Bool)

(assert (=> b!3210099 (= e!2001672 tp!1013341)))

(assert (=> b!3209135 (= tp!1013241 e!2001672)))

(declare-fun b!3210097 () Bool)

(declare-fun tp_is_empty!17297 () Bool)

(assert (=> b!3210097 (= e!2001672 tp_is_empty!17297)))

(assert (= (and b!3209135 ((_ is ElementMatch!9983) (regex!5224 (rule!7664 separatorToken!241)))) b!3210097))

(assert (= (and b!3209135 ((_ is Concat!15437) (regex!5224 (rule!7664 separatorToken!241)))) b!3210098))

(assert (= (and b!3209135 ((_ is Star!9983) (regex!5224 (rule!7664 separatorToken!241)))) b!3210099))

(assert (= (and b!3209135 ((_ is Union!9983) (regex!5224 (rule!7664 separatorToken!241)))) b!3210100))

(declare-fun b!3210105 () Bool)

(declare-fun e!2001675 () Bool)

(declare-fun tp!1013348 () Bool)

(assert (=> b!3210105 (= e!2001675 (and tp_is_empty!17297 tp!1013348))))

(assert (=> b!3209145 (= tp!1013251 e!2001675)))

(assert (= (and b!3209145 ((_ is Cons!36177) (originalCharacters!5938 (h!41599 tokens!494)))) b!3210105))

(declare-fun b!3210119 () Bool)

(declare-fun b_free!85425 () Bool)

(declare-fun b_next!86129 () Bool)

(assert (=> b!3210119 (= b_free!85425 (not b_next!86129))))

(declare-fun t!238620 () Bool)

(declare-fun tb!157661 () Bool)

(assert (=> (and b!3210119 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!238620) tb!157661))

(declare-fun result!200026 () Bool)

(assert (= result!200026 result!199934))

(assert (=> d!879035 t!238620))

(declare-fun t!238622 () Bool)

(declare-fun tb!157663 () Bool)

(assert (=> (and b!3210119 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!238622) tb!157663))

(declare-fun result!200028 () Bool)

(assert (= result!200028 result!199942))

(assert (=> d!879053 t!238622))

(declare-fun b_and!213819 () Bool)

(declare-fun tp!1013362 () Bool)

(assert (=> b!3210119 (= tp!1013362 (and (=> t!238620 result!200026) (=> t!238622 result!200028) b_and!213819))))

(declare-fun b_free!85427 () Bool)

(declare-fun b_next!86131 () Bool)

(assert (=> b!3210119 (= b_free!85427 (not b_next!86131))))

(declare-fun t!238624 () Bool)

(declare-fun tb!157665 () Bool)

(assert (=> (and b!3210119 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!238624) tb!157665))

(declare-fun result!200030 () Bool)

(assert (= result!200030 result!200002))

(assert (=> d!879305 t!238624))

(declare-fun tb!157667 () Bool)

(declare-fun t!238626 () Bool)

(assert (=> (and b!3210119 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241)))) t!238626) tb!157667))

(declare-fun result!200032 () Bool)

(assert (= result!200032 result!199920))

(assert (=> d!879293 t!238626))

(declare-fun t!238628 () Bool)

(declare-fun tb!157669 () Bool)

(assert (=> (and b!3210119 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!238628) tb!157669))

(declare-fun result!200034 () Bool)

(assert (= result!200034 result!199928))

(assert (=> b!3209346 t!238628))

(assert (=> d!878969 t!238628))

(assert (=> b!3209271 t!238626))

(declare-fun tp!1013360 () Bool)

(declare-fun b_and!213821 () Bool)

(assert (=> b!3210119 (= tp!1013360 (and (=> t!238626 result!200032) (=> t!238628 result!200034) (=> t!238624 result!200030) b_and!213821))))

(declare-fun e!2001693 () Bool)

(declare-fun e!2001688 () Bool)

(declare-fun b!3210116 () Bool)

(declare-fun tp!1013363 () Bool)

(assert (=> b!3210116 (= e!2001688 (and (inv!49036 (h!41599 (t!238514 tokens!494))) e!2001693 tp!1013363))))

(declare-fun e!2001692 () Bool)

(assert (=> b!3210119 (= e!2001692 (and tp!1013362 tp!1013360))))

(assert (=> b!3209147 (= tp!1013252 e!2001688)))

(declare-fun b!3210118 () Bool)

(declare-fun e!2001690 () Bool)

(declare-fun tp!1013361 () Bool)

(assert (=> b!3210118 (= e!2001690 (and tp!1013361 (inv!49032 (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494))))) (inv!49035 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) e!2001692))))

(declare-fun tp!1013359 () Bool)

(declare-fun b!3210117 () Bool)

(assert (=> b!3210117 (= e!2001693 (and (inv!21 (value!169344 (h!41599 (t!238514 tokens!494)))) e!2001690 tp!1013359))))

(assert (= b!3210118 b!3210119))

(assert (= b!3210117 b!3210118))

(assert (= b!3210116 b!3210117))

(assert (= (and b!3209147 ((_ is Cons!36179) (t!238514 tokens!494))) b!3210116))

(declare-fun m!3478431 () Bool)

(assert (=> b!3210116 m!3478431))

(declare-fun m!3478433 () Bool)

(assert (=> b!3210118 m!3478433))

(declare-fun m!3478435 () Bool)

(assert (=> b!3210118 m!3478435))

(declare-fun m!3478437 () Bool)

(assert (=> b!3210117 m!3478437))

(declare-fun b!3210123 () Bool)

(declare-fun e!2001694 () Bool)

(declare-fun tp!1013368 () Bool)

(declare-fun tp!1013367 () Bool)

(assert (=> b!3210123 (= e!2001694 (and tp!1013368 tp!1013367))))

(declare-fun b!3210121 () Bool)

(declare-fun tp!1013366 () Bool)

(declare-fun tp!1013365 () Bool)

(assert (=> b!3210121 (= e!2001694 (and tp!1013366 tp!1013365))))

(declare-fun b!3210122 () Bool)

(declare-fun tp!1013364 () Bool)

(assert (=> b!3210122 (= e!2001694 tp!1013364)))

(assert (=> b!3209125 (= tp!1013248 e!2001694)))

(declare-fun b!3210120 () Bool)

(assert (=> b!3210120 (= e!2001694 tp_is_empty!17297)))

(assert (= (and b!3209125 ((_ is ElementMatch!9983) (regex!5224 (h!41598 rules!2135)))) b!3210120))

(assert (= (and b!3209125 ((_ is Concat!15437) (regex!5224 (h!41598 rules!2135)))) b!3210121))

(assert (= (and b!3209125 ((_ is Star!9983) (regex!5224 (h!41598 rules!2135)))) b!3210122))

(assert (= (and b!3209125 ((_ is Union!9983) (regex!5224 (h!41598 rules!2135)))) b!3210123))

(declare-fun b!3210127 () Bool)

(declare-fun e!2001695 () Bool)

(declare-fun tp!1013373 () Bool)

(declare-fun tp!1013372 () Bool)

(assert (=> b!3210127 (= e!2001695 (and tp!1013373 tp!1013372))))

(declare-fun b!3210125 () Bool)

(declare-fun tp!1013371 () Bool)

(declare-fun tp!1013370 () Bool)

(assert (=> b!3210125 (= e!2001695 (and tp!1013371 tp!1013370))))

(declare-fun b!3210126 () Bool)

(declare-fun tp!1013369 () Bool)

(assert (=> b!3210126 (= e!2001695 tp!1013369)))

(assert (=> b!3209134 (= tp!1013250 e!2001695)))

(declare-fun b!3210124 () Bool)

(assert (=> b!3210124 (= e!2001695 tp_is_empty!17297)))

(assert (= (and b!3209134 ((_ is ElementMatch!9983) (regex!5224 (rule!7664 (h!41599 tokens!494))))) b!3210124))

(assert (= (and b!3209134 ((_ is Concat!15437) (regex!5224 (rule!7664 (h!41599 tokens!494))))) b!3210125))

(assert (= (and b!3209134 ((_ is Star!9983) (regex!5224 (rule!7664 (h!41599 tokens!494))))) b!3210126))

(assert (= (and b!3209134 ((_ is Union!9983) (regex!5224 (rule!7664 (h!41599 tokens!494))))) b!3210127))

(declare-fun b!3210128 () Bool)

(declare-fun e!2001696 () Bool)

(declare-fun tp!1013374 () Bool)

(assert (=> b!3210128 (= e!2001696 (and tp_is_empty!17297 tp!1013374))))

(assert (=> b!3209123 (= tp!1013244 e!2001696)))

(assert (= (and b!3209123 ((_ is Cons!36177) (originalCharacters!5938 separatorToken!241))) b!3210128))

(declare-fun b_lambda!87941 () Bool)

(assert (= b_lambda!87893 (or (and b!3210119 b_free!85425) (and b!3210083 b_free!85421 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (and b!3209120 b_free!85405 (= (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (and b!3209140 b_free!85409 (= (toValue!7308 (transformation!5224 (h!41598 rules!2135))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (and b!3209139 b_free!85401 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) b_lambda!87941)))

(declare-fun b_lambda!87943 () Bool)

(assert (= b_lambda!87935 (or b!3209124 b_lambda!87943)))

(declare-fun bs!541581 () Bool)

(declare-fun d!879307 () Bool)

(assert (= bs!541581 (and d!879307 b!3209124)))

(assert (=> bs!541581 (= (dynLambda!14613 lambda!117478 (h!41599 tokens!494)) (not (isSeparator!5224 (rule!7664 (h!41599 tokens!494)))))))

(assert (=> d!879255 d!879307))

(declare-fun b_lambda!87945 () Bool)

(assert (= b_lambda!87937 (or (and b!3210119 b_free!85427 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))))) (and b!3210083 b_free!85423 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))))) (and b!3209120 b_free!85407) (and b!3209139 b_free!85403 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))))) (and b!3209140 b_free!85411 (= (toChars!7167 (transformation!5224 (h!41598 rules!2135))) (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))))) b_lambda!87945)))

(declare-fun b_lambda!87947 () Bool)

(assert (= b_lambda!87883 (or (and b!3210083 b_free!85423 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3210119 b_free!85427 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3209140 b_free!85411 (= (toChars!7167 (transformation!5224 (h!41598 rules!2135))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3209139 b_free!85403) (and b!3209120 b_free!85407 (= (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) b_lambda!87947)))

(declare-fun b_lambda!87949 () Bool)

(assert (= b_lambda!87933 (or b!3209124 b_lambda!87949)))

(declare-fun bs!541582 () Bool)

(declare-fun d!879309 () Bool)

(assert (= bs!541582 (and d!879309 b!3209124)))

(assert (=> bs!541582 (= (dynLambda!14613 lambda!117478 (h!41599 (t!238514 tokens!494))) (not (isSeparator!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))))

(assert (=> d!879253 d!879309))

(declare-fun b_lambda!87951 () Bool)

(assert (= b_lambda!87879 (or b!3209124 b_lambda!87951)))

(assert (=> b!3209328 d!879307))

(declare-fun b_lambda!87953 () Bool)

(assert (= b_lambda!87891 (or (and b!3210083 b_free!85421 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3209120 b_free!85405 (= (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3209140 b_free!85409 (= (toValue!7308 (transformation!5224 (h!41598 rules!2135))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3209139 b_free!85401) (and b!3210119 b_free!85425 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) b_lambda!87953)))

(declare-fun b_lambda!87955 () Bool)

(assert (= b_lambda!87881 (or (and b!3210083 b_free!85423 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3210119 b_free!85427 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3209140 b_free!85411 (= (toChars!7167 (transformation!5224 (h!41598 rules!2135))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3209139 b_free!85403) (and b!3209120 b_free!85407 (= (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) b_lambda!87955)))

(declare-fun b_lambda!87957 () Bool)

(assert (= b_lambda!87887 (or b!3209121 b_lambda!87957)))

(declare-fun bs!541583 () Bool)

(declare-fun d!879311 () Bool)

(assert (= bs!541583 (and d!879311 b!3209121)))

(assert (=> bs!541583 (= (dynLambda!14613 lambda!117479 (h!41599 (t!238514 tokens!494))) (rulesProduceIndividualToken!2305 thiss!18206 rules!2135 (h!41599 (t!238514 tokens!494))))))

(assert (=> bs!541583 m!3476819))

(assert (=> d!879031 d!879311))

(declare-fun b_lambda!87959 () Bool)

(assert (= b_lambda!87939 (or (and b!3210119 b_free!85427) (and b!3209120 b_free!85407 (= (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (and b!3209140 b_free!85411 (= (toChars!7167 (transformation!5224 (h!41598 rules!2135))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (and b!3209139 b_free!85403 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (and b!3210083 b_free!85423 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) b_lambda!87959)))

(declare-fun b_lambda!87961 () Bool)

(assert (= b_lambda!87877 (or (and b!3210119 b_free!85427 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))))) (and b!3210083 b_free!85423 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))))) (and b!3209120 b_free!85407) (and b!3209139 b_free!85403 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))))) (and b!3209140 b_free!85411 (= (toChars!7167 (transformation!5224 (h!41598 rules!2135))) (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))))) b_lambda!87961)))

(check-sat (not b!3209329) (not b!3209997) (not b!3209298) (not d!879295) (not b!3210001) (not b!3209994) (not b!3210026) (not d!879015) (not tb!157589) (not d!879247) (not b!3209790) b_and!213819 (not b!3209751) (not b!3210046) b_and!213759 (not b!3209861) (not b!3210027) (not d!879193) (not d!879039) (not b!3210123) b_and!213809 b_and!213763 tp_is_empty!17297 (not b_next!86127) (not b!3210062) (not bm!232213) (not b!3209828) (not d!879275) (not b!3209764) (not b!3209509) (not d!879125) (not b!3209461) (not d!879271) (not b!3210058) (not b!3209750) (not b!3209544) (not d!879155) (not b!3210070) (not d!879291) (not d!878959) (not d!879013) (not b!3209347) (not b!3209487) (not bs!541583) (not d!879127) (not b!3210116) (not tb!157595) (not b!3209492) (not b!3209746) (not b!3209747) (not b!3210031) (not b_next!86125) (not d!879157) (not d!878947) (not b!3209749) (not b_lambda!87957) (not d!878945) (not b!3209319) (not b!3209462) (not bm!232214) (not b_next!86105) (not b!3209291) (not d!879203) (not d!879269) (not b!3210015) (not b!3209303) (not d!879285) (not b!3209493) (not b!3210125) b_and!213813 (not b!3210044) (not b!3210047) (not b!3209787) (not b!3209666) (not d!878979) (not b_lambda!87941) (not b!3210054) (not b!3209668) (not b!3209232) (not b!3210128) (not d!879119) (not d!879121) (not b!3209726) (not bm!232197) (not d!879025) (not d!879133) (not b!3209272) (not d!879137) (not b_next!86113) (not b!3210126) (not d!879211) (not b!3209671) (not b!3209989) (not b!3209779) (not b_lambda!87961) (not d!879255) (not bm!232184) (not d!879305) (not d!878967) (not d!878941) (not d!879103) (not bm!232224) (not d!879131) (not b!3210041) (not b!3209858) (not b!3209857) (not d!879153) (not b!3210013) (not b!3210100) (not d!879251) (not b!3210061) (not d!879243) (not d!879145) (not d!879197) (not d!879289) (not b!3209669) (not b!3209490) (not d!879175) (not b!3210035) (not b!3209976) (not d!878969) (not b!3210066) (not d!879123) (not b!3209754) (not b!3210072) (not d!879293) (not d!879277) (not b!3209845) (not b!3209308) (not b!3209430) (not d!879071) (not d!878953) (not b!3209853) (not b_next!86111) (not d!879147) (not d!878975) (not b!3210006) (not b!3209867) (not b!3209826) (not d!879045) (not d!879107) (not b!3209724) (not b!3210065) (not b!3210121) (not b_next!86131) (not b!3210082) (not b!3209225) (not b!3209998) (not b!3210014) (not d!879135) (not d!879253) (not d!878929) (not b_lambda!87943) (not bm!232199) b_and!213761 (not tb!157645) (not b!3209314) (not d!879279) (not b!3209501) (not b!3209664) (not b_next!86115) (not d!879047) (not b_lambda!87953) (not d!879165) (not b!3209789) (not b!3209229) (not b!3209791) (not b!3210122) (not b!3209977) (not b!3209345) (not b!3209780) (not b!3209792) (not b!3209665) (not bm!232180) (not b!3209856) (not b!3210036) (not b!3209725) (not b!3209346) (not b!3209788) (not bm!232225) (not b_lambda!87945) (not b!3209786) (not b!3210099) (not d!879283) (not bm!232222) (not b!3209825) (not b!3209859) (not d!879303) (not b!3210105) (not b!3209428) (not b!3210117) (not b!3209429) (not d!879249) b_and!213811 (not b!3209341) b_and!213815 (not b_lambda!87949) (not tb!157577) (not b!3209782) (not bm!232215) (not b_lambda!87947) (not b!3209356) (not b!3210043) (not b!3209784) (not d!879023) (not d!879179) b_and!213817 (not b!3209785) (not b!3209528) (not d!879297) (not b_next!86107) (not b!3209765) (not b!3210084) (not b!3209317) (not b!3210007) b_and!213821 (not d!879191) (not b!3210025) (not b!3209340) (not b!3209667) (not d!878955) (not b!3210098) (not b!3209464) (not b_lambda!87955) (not b!3210034) (not d!879261) (not b!3209748) (not d!878949) (not b!3209226) (not b!3210005) (not b!3209463) (not b!3209850) (not d!878937) (not b!3209233) (not b!3209543) (not b!3210048) (not b!3210000) (not b!3210028) (not b!3209545) (not b!3209311) (not b!3209993) (not b!3210010) (not b!3210081) (not b!3210024) (not b!3210118) (not bm!232234) (not b!3209300) (not b!3210004) (not d!879159) (not bm!232226) (not b!3209759) (not b!3209343) (not b!3210042) (not b!3209781) (not b!3210068) (not d!879245) (not d!879031) (not b!3210057) (not b!3209546) (not b_next!86129) (not d!879189) (not b!3210127) (not d!879259) (not b!3209753) (not b!3209318) (not b!3209757) (not b!3209310) (not b!3210049) (not b_next!86109) (not bm!232198) (not b!3209990) (not tb!157583) (not d!878925) (not d!878971) (not b!3209670) (not b!3209234) (not b!3209271) (not b_lambda!87959) (not d!879257) (not b!3209848) (not b!3209752) (not bm!232235) (not b_lambda!87951))
(check-sat (not b_next!86125) (not b_next!86113) (not b_next!86111) (not b_next!86115) b_and!213821 (not b_next!86129) (not b_next!86109) b_and!213819 b_and!213759 b_and!213809 b_and!213763 (not b_next!86127) (not b_next!86105) b_and!213813 (not b_next!86131) b_and!213761 b_and!213811 b_and!213815 b_and!213817 (not b_next!86107))
(get-model)

(declare-fun d!879373 () Bool)

(declare-fun e!2001746 () Bool)

(assert (=> d!879373 e!2001746))

(declare-fun res!1306803 () Bool)

(assert (=> d!879373 (=> (not res!1306803) (not e!2001746))))

(declare-fun lt!1085098 () BalanceConc!21260)

(assert (=> d!879373 (= res!1306803 (= (list!12865 lt!1085098) lt!1084664))))

(declare-fun fromList!612 (List!36301) Conc!10823)

(assert (=> d!879373 (= lt!1085098 (BalanceConc!21261 (fromList!612 lt!1084664)))))

(assert (=> d!879373 (= (fromListB!1541 lt!1084664) lt!1085098)))

(declare-fun b!3210204 () Bool)

(declare-fun isBalanced!3218 (Conc!10823) Bool)

(assert (=> b!3210204 (= e!2001746 (isBalanced!3218 (fromList!612 lt!1084664)))))

(assert (= (and d!879373 res!1306803) b!3210204))

(declare-fun m!3478549 () Bool)

(assert (=> d!879373 m!3478549))

(declare-fun m!3478551 () Bool)

(assert (=> d!879373 m!3478551))

(assert (=> b!3210204 m!3478551))

(assert (=> b!3210204 m!3478551))

(declare-fun m!3478553 () Bool)

(assert (=> b!3210204 m!3478553))

(assert (=> d!879131 d!879373))

(declare-fun d!879375 () Bool)

(assert (=> d!879375 (= (isEmpty!20266 (list!12865 (_2!20922 lt!1084679))) ((_ is Nil!36177) (list!12865 (_2!20922 lt!1084679))))))

(assert (=> d!878955 d!879375))

(declare-fun d!879377 () Bool)

(assert (=> d!879377 (= (list!12865 (_2!20922 lt!1084679)) (list!12868 (c!538931 (_2!20922 lt!1084679))))))

(declare-fun bs!541593 () Bool)

(assert (= bs!541593 d!879377))

(declare-fun m!3478555 () Bool)

(assert (=> bs!541593 m!3478555))

(assert (=> d!878955 d!879377))

(declare-fun d!879379 () Bool)

(declare-fun lt!1085101 () Bool)

(assert (=> d!879379 (= lt!1085101 (isEmpty!20266 (list!12868 (c!538931 (_2!20922 lt!1084679)))))))

(declare-fun size!27268 (Conc!10823) Int)

(assert (=> d!879379 (= lt!1085101 (= (size!27268 (c!538931 (_2!20922 lt!1084679))) 0))))

(assert (=> d!879379 (= (isEmpty!20267 (c!538931 (_2!20922 lt!1084679))) lt!1085101)))

(declare-fun bs!541594 () Bool)

(assert (= bs!541594 d!879379))

(assert (=> bs!541594 m!3478555))

(assert (=> bs!541594 m!3478555))

(declare-fun m!3478557 () Bool)

(assert (=> bs!541594 m!3478557))

(declare-fun m!3478559 () Bool)

(assert (=> bs!541594 m!3478559))

(assert (=> d!878955 d!879379))

(declare-fun b!3210205 () Bool)

(declare-fun res!1306809 () Bool)

(declare-fun e!2001751 () Bool)

(assert (=> b!3210205 (=> res!1306809 e!2001751)))

(assert (=> b!3210205 (= res!1306809 (not (isEmpty!20266 (tail!5212 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084957))))))))))

(declare-fun b!3210206 () Bool)

(declare-fun res!1306805 () Bool)

(declare-fun e!2001752 () Bool)

(assert (=> b!3210206 (=> (not res!1306805) (not e!2001752))))

(assert (=> b!3210206 (= res!1306805 (isEmpty!20266 (tail!5212 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084957)))))))))

(declare-fun b!3210207 () Bool)

(declare-fun e!2001748 () Bool)

(assert (=> b!3210207 (= e!2001748 e!2001751)))

(declare-fun res!1306810 () Bool)

(assert (=> b!3210207 (=> res!1306810 e!2001751)))

(declare-fun call!232251 () Bool)

(assert (=> b!3210207 (= res!1306810 call!232251)))

(declare-fun b!3210208 () Bool)

(declare-fun res!1306808 () Bool)

(declare-fun e!2001753 () Bool)

(assert (=> b!3210208 (=> res!1306808 e!2001753)))

(assert (=> b!3210208 (= res!1306808 (not ((_ is ElementMatch!9983) (regex!5224 (rule!7664 (h!41599 tokens!494))))))))

(declare-fun e!2001747 () Bool)

(assert (=> b!3210208 (= e!2001747 e!2001753)))

(declare-fun b!3210209 () Bool)

(declare-fun e!2001749 () Bool)

(assert (=> b!3210209 (= e!2001749 (matchR!4617 (derivativeStep!2951 (regex!5224 (rule!7664 (h!41599 tokens!494))) (head!7043 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084957)))))) (tail!5212 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084957)))))))))

(declare-fun b!3210210 () Bool)

(assert (=> b!3210210 (= e!2001753 e!2001748)))

(declare-fun res!1306804 () Bool)

(assert (=> b!3210210 (=> (not res!1306804) (not e!2001748))))

(declare-fun lt!1085102 () Bool)

(assert (=> b!3210210 (= res!1306804 (not lt!1085102))))

(declare-fun b!3210211 () Bool)

(declare-fun res!1306806 () Bool)

(assert (=> b!3210211 (=> res!1306806 e!2001753)))

(assert (=> b!3210211 (= res!1306806 e!2001752)))

(declare-fun res!1306811 () Bool)

(assert (=> b!3210211 (=> (not res!1306811) (not e!2001752))))

(assert (=> b!3210211 (= res!1306811 lt!1085102)))

(declare-fun b!3210212 () Bool)

(assert (=> b!3210212 (= e!2001749 (nullable!3398 (regex!5224 (rule!7664 (h!41599 tokens!494)))))))

(declare-fun d!879381 () Bool)

(declare-fun e!2001750 () Bool)

(assert (=> d!879381 e!2001750))

(declare-fun c!539143 () Bool)

(assert (=> d!879381 (= c!539143 ((_ is EmptyExpr!9983) (regex!5224 (rule!7664 (h!41599 tokens!494)))))))

(assert (=> d!879381 (= lt!1085102 e!2001749)))

(declare-fun c!539144 () Bool)

(assert (=> d!879381 (= c!539144 (isEmpty!20266 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084957))))))))

(assert (=> d!879381 (validRegex!4552 (regex!5224 (rule!7664 (h!41599 tokens!494))))))

(assert (=> d!879381 (= (matchR!4617 (regex!5224 (rule!7664 (h!41599 tokens!494))) (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084957))))) lt!1085102)))

(declare-fun bm!232246 () Bool)

(assert (=> bm!232246 (= call!232251 (isEmpty!20266 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084957))))))))

(declare-fun b!3210213 () Bool)

(assert (=> b!3210213 (= e!2001751 (not (= (head!7043 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084957))))) (c!538930 (regex!5224 (rule!7664 (h!41599 tokens!494)))))))))

(declare-fun b!3210214 () Bool)

(assert (=> b!3210214 (= e!2001752 (= (head!7043 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084957))))) (c!538930 (regex!5224 (rule!7664 (h!41599 tokens!494))))))))

(declare-fun b!3210215 () Bool)

(assert (=> b!3210215 (= e!2001747 (not lt!1085102))))

(declare-fun b!3210216 () Bool)

(assert (=> b!3210216 (= e!2001750 (= lt!1085102 call!232251))))

(declare-fun b!3210217 () Bool)

(declare-fun res!1306807 () Bool)

(assert (=> b!3210217 (=> (not res!1306807) (not e!2001752))))

(assert (=> b!3210217 (= res!1306807 (not call!232251))))

(declare-fun b!3210218 () Bool)

(assert (=> b!3210218 (= e!2001750 e!2001747)))

(declare-fun c!539142 () Bool)

(assert (=> b!3210218 (= c!539142 ((_ is EmptyLang!9983) (regex!5224 (rule!7664 (h!41599 tokens!494)))))))

(assert (= (and d!879381 c!539144) b!3210212))

(assert (= (and d!879381 (not c!539144)) b!3210209))

(assert (= (and d!879381 c!539143) b!3210216))

(assert (= (and d!879381 (not c!539143)) b!3210218))

(assert (= (and b!3210218 c!539142) b!3210215))

(assert (= (and b!3210218 (not c!539142)) b!3210208))

(assert (= (and b!3210208 (not res!1306808)) b!3210211))

(assert (= (and b!3210211 res!1306811) b!3210217))

(assert (= (and b!3210217 res!1306807) b!3210206))

(assert (= (and b!3210206 res!1306805) b!3210214))

(assert (= (and b!3210211 (not res!1306806)) b!3210210))

(assert (= (and b!3210210 res!1306804) b!3210207))

(assert (= (and b!3210207 (not res!1306810)) b!3210205))

(assert (= (and b!3210205 (not res!1306809)) b!3210213))

(assert (= (or b!3210216 b!3210207 b!3210217) bm!232246))

(declare-fun m!3478561 () Bool)

(assert (=> b!3210212 m!3478561))

(assert (=> b!3210209 m!3477833))

(declare-fun m!3478563 () Bool)

(assert (=> b!3210209 m!3478563))

(assert (=> b!3210209 m!3478563))

(declare-fun m!3478565 () Bool)

(assert (=> b!3210209 m!3478565))

(assert (=> b!3210209 m!3477833))

(declare-fun m!3478567 () Bool)

(assert (=> b!3210209 m!3478567))

(assert (=> b!3210209 m!3478565))

(assert (=> b!3210209 m!3478567))

(declare-fun m!3478569 () Bool)

(assert (=> b!3210209 m!3478569))

(assert (=> b!3210213 m!3477833))

(assert (=> b!3210213 m!3478563))

(assert (=> b!3210206 m!3477833))

(assert (=> b!3210206 m!3478567))

(assert (=> b!3210206 m!3478567))

(declare-fun m!3478571 () Bool)

(assert (=> b!3210206 m!3478571))

(assert (=> d!879381 m!3477833))

(declare-fun m!3478573 () Bool)

(assert (=> d!879381 m!3478573))

(declare-fun m!3478575 () Bool)

(assert (=> d!879381 m!3478575))

(assert (=> bm!232246 m!3477833))

(assert (=> bm!232246 m!3478573))

(assert (=> b!3210214 m!3477833))

(assert (=> b!3210214 m!3478563))

(assert (=> b!3210205 m!3477833))

(assert (=> b!3210205 m!3478567))

(assert (=> b!3210205 m!3478567))

(assert (=> b!3210205 m!3478571))

(assert (=> b!3209787 d!879381))

(declare-fun d!879383 () Bool)

(assert (=> d!879383 (= (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084957)))) (list!12868 (c!538931 (charsOf!3240 (_1!20921 (get!11520 lt!1084957))))))))

(declare-fun bs!541595 () Bool)

(assert (= bs!541595 d!879383))

(declare-fun m!3478577 () Bool)

(assert (=> bs!541595 m!3478577))

(assert (=> b!3209787 d!879383))

(declare-fun d!879385 () Bool)

(declare-fun lt!1085103 () BalanceConc!21260)

(assert (=> d!879385 (= (list!12865 lt!1085103) (originalCharacters!5938 (_1!20921 (get!11520 lt!1084957))))))

(assert (=> d!879385 (= lt!1085103 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084957))))) (value!169344 (_1!20921 (get!11520 lt!1084957)))))))

(assert (=> d!879385 (= (charsOf!3240 (_1!20921 (get!11520 lt!1084957))) lt!1085103)))

(declare-fun b_lambda!87965 () Bool)

(assert (=> (not b_lambda!87965) (not d!879385)))

(declare-fun tb!157671 () Bool)

(declare-fun t!238634 () Bool)

(assert (=> (and b!3210083 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084957)))))) t!238634) tb!157671))

(declare-fun b!3210219 () Bool)

(declare-fun e!2001754 () Bool)

(declare-fun tp!1013375 () Bool)

(assert (=> b!3210219 (= e!2001754 (and (inv!49039 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084957))))) (value!169344 (_1!20921 (get!11520 lt!1084957)))))) tp!1013375))))

(declare-fun result!200036 () Bool)

(assert (=> tb!157671 (= result!200036 (and (inv!49040 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084957))))) (value!169344 (_1!20921 (get!11520 lt!1084957))))) e!2001754))))

(assert (= tb!157671 b!3210219))

(declare-fun m!3478579 () Bool)

(assert (=> b!3210219 m!3478579))

(declare-fun m!3478581 () Bool)

(assert (=> tb!157671 m!3478581))

(assert (=> d!879385 t!238634))

(declare-fun b_and!213823 () Bool)

(assert (= b_and!213817 (and (=> t!238634 result!200036) b_and!213823)))

(declare-fun t!238636 () Bool)

(declare-fun tb!157673 () Bool)

(assert (=> (and b!3209120 (= (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084957)))))) t!238636) tb!157673))

(declare-fun result!200038 () Bool)

(assert (= result!200038 result!200036))

(assert (=> d!879385 t!238636))

(declare-fun b_and!213825 () Bool)

(assert (= b_and!213811 (and (=> t!238636 result!200038) b_and!213825)))

(declare-fun tb!157675 () Bool)

(declare-fun t!238638 () Bool)

(assert (=> (and b!3209140 (= (toChars!7167 (transformation!5224 (h!41598 rules!2135))) (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084957)))))) t!238638) tb!157675))

(declare-fun result!200040 () Bool)

(assert (= result!200040 result!200036))

(assert (=> d!879385 t!238638))

(declare-fun b_and!213827 () Bool)

(assert (= b_and!213813 (and (=> t!238638 result!200040) b_and!213827)))

(declare-fun t!238640 () Bool)

(declare-fun tb!157677 () Bool)

(assert (=> (and b!3209139 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084957)))))) t!238640) tb!157677))

(declare-fun result!200042 () Bool)

(assert (= result!200042 result!200036))

(assert (=> d!879385 t!238640))

(declare-fun b_and!213829 () Bool)

(assert (= b_and!213809 (and (=> t!238640 result!200042) b_and!213829)))

(declare-fun tb!157679 () Bool)

(declare-fun t!238642 () Bool)

(assert (=> (and b!3210119 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084957)))))) t!238642) tb!157679))

(declare-fun result!200044 () Bool)

(assert (= result!200044 result!200036))

(assert (=> d!879385 t!238642))

(declare-fun b_and!213831 () Bool)

(assert (= b_and!213821 (and (=> t!238642 result!200044) b_and!213831)))

(declare-fun m!3478583 () Bool)

(assert (=> d!879385 m!3478583))

(declare-fun m!3478585 () Bool)

(assert (=> d!879385 m!3478585))

(assert (=> b!3209787 d!879385))

(declare-fun d!879387 () Bool)

(assert (=> d!879387 (= (get!11520 lt!1084957) (v!35696 lt!1084957))))

(assert (=> b!3209787 d!879387))

(declare-fun d!879389 () Bool)

(assert (=> d!879389 (= (isEmpty!20266 lt!1084664) ((_ is Nil!36177) lt!1084664))))

(assert (=> bm!232234 d!879389))

(declare-fun d!879391 () Bool)

(assert (=> d!879391 (= (isEmpty!20266 (originalCharacters!5938 (h!41599 tokens!494))) ((_ is Nil!36177) (originalCharacters!5938 (h!41599 tokens!494))))))

(assert (=> d!878971 d!879391))

(declare-fun d!879393 () Bool)

(declare-fun lt!1085106 () Bool)

(declare-fun content!4890 (List!36302) (InoxSet Rule!10248))

(assert (=> d!879393 (= lt!1085106 (select (content!4890 rules!2135) (get!11519 lt!1084828)))))

(declare-fun e!2001760 () Bool)

(assert (=> d!879393 (= lt!1085106 e!2001760)))

(declare-fun res!1306817 () Bool)

(assert (=> d!879393 (=> (not res!1306817) (not e!2001760))))

(assert (=> d!879393 (= res!1306817 ((_ is Cons!36178) rules!2135))))

(assert (=> d!879393 (= (contains!6462 rules!2135 (get!11519 lt!1084828)) lt!1085106)))

(declare-fun b!3210224 () Bool)

(declare-fun e!2001759 () Bool)

(assert (=> b!3210224 (= e!2001760 e!2001759)))

(declare-fun res!1306816 () Bool)

(assert (=> b!3210224 (=> res!1306816 e!2001759)))

(assert (=> b!3210224 (= res!1306816 (= (h!41598 rules!2135) (get!11519 lt!1084828)))))

(declare-fun b!3210225 () Bool)

(assert (=> b!3210225 (= e!2001759 (contains!6462 (t!238513 rules!2135) (get!11519 lt!1084828)))))

(assert (= (and d!879393 res!1306817) b!3210224))

(assert (= (and b!3210224 (not res!1306816)) b!3210225))

(declare-fun m!3478587 () Bool)

(assert (=> d!879393 m!3478587))

(assert (=> d!879393 m!3477259))

(declare-fun m!3478589 () Bool)

(assert (=> d!879393 m!3478589))

(assert (=> b!3210225 m!3477259))

(declare-fun m!3478591 () Bool)

(assert (=> b!3210225 m!3478591))

(assert (=> b!3209490 d!879393))

(declare-fun d!879395 () Bool)

(assert (=> d!879395 (= (get!11519 lt!1084828) (v!35697 lt!1084828))))

(assert (=> b!3209490 d!879395))

(declare-fun d!879397 () Bool)

(assert (=> d!879397 (= (isEmpty!20266 lt!1084683) ((_ is Nil!36177) lt!1084683))))

(assert (=> d!879271 d!879397))

(declare-fun b!3210244 () Bool)

(declare-fun e!2001780 () Bool)

(declare-fun call!232259 () Bool)

(assert (=> b!3210244 (= e!2001780 call!232259)))

(declare-fun b!3210245 () Bool)

(declare-fun e!2001781 () Bool)

(declare-fun e!2001779 () Bool)

(assert (=> b!3210245 (= e!2001781 e!2001779)))

(declare-fun res!1306832 () Bool)

(assert (=> b!3210245 (= res!1306832 (not (nullable!3398 (reg!10312 (regex!5224 lt!1084660)))))))

(assert (=> b!3210245 (=> (not res!1306832) (not e!2001779))))

(declare-fun b!3210246 () Bool)

(declare-fun e!2001778 () Bool)

(assert (=> b!3210246 (= e!2001781 e!2001778)))

(declare-fun c!539149 () Bool)

(assert (=> b!3210246 (= c!539149 ((_ is Union!9983) (regex!5224 lt!1084660)))))

(declare-fun b!3210247 () Bool)

(declare-fun call!232258 () Bool)

(assert (=> b!3210247 (= e!2001779 call!232258)))

(declare-fun d!879399 () Bool)

(declare-fun res!1306829 () Bool)

(declare-fun e!2001775 () Bool)

(assert (=> d!879399 (=> res!1306829 e!2001775)))

(assert (=> d!879399 (= res!1306829 ((_ is ElementMatch!9983) (regex!5224 lt!1084660)))))

(assert (=> d!879399 (= (validRegex!4552 (regex!5224 lt!1084660)) e!2001775)))

(declare-fun c!539150 () Bool)

(declare-fun bm!232253 () Bool)

(assert (=> bm!232253 (= call!232258 (validRegex!4552 (ite c!539150 (reg!10312 (regex!5224 lt!1084660)) (ite c!539149 (regOne!20479 (regex!5224 lt!1084660)) (regOne!20478 (regex!5224 lt!1084660))))))))

(declare-fun bm!232254 () Bool)

(assert (=> bm!232254 (= call!232259 (validRegex!4552 (ite c!539149 (regTwo!20479 (regex!5224 lt!1084660)) (regTwo!20478 (regex!5224 lt!1084660)))))))

(declare-fun b!3210248 () Bool)

(declare-fun res!1306830 () Bool)

(declare-fun e!2001777 () Bool)

(assert (=> b!3210248 (=> res!1306830 e!2001777)))

(assert (=> b!3210248 (= res!1306830 (not ((_ is Concat!15437) (regex!5224 lt!1084660))))))

(assert (=> b!3210248 (= e!2001778 e!2001777)))

(declare-fun bm!232255 () Bool)

(declare-fun call!232260 () Bool)

(assert (=> bm!232255 (= call!232260 call!232258)))

(declare-fun b!3210249 () Bool)

(declare-fun res!1306831 () Bool)

(assert (=> b!3210249 (=> (not res!1306831) (not e!2001780))))

(assert (=> b!3210249 (= res!1306831 call!232260)))

(assert (=> b!3210249 (= e!2001778 e!2001780)))

(declare-fun b!3210250 () Bool)

(declare-fun e!2001776 () Bool)

(assert (=> b!3210250 (= e!2001777 e!2001776)))

(declare-fun res!1306828 () Bool)

(assert (=> b!3210250 (=> (not res!1306828) (not e!2001776))))

(assert (=> b!3210250 (= res!1306828 call!232260)))

(declare-fun b!3210251 () Bool)

(assert (=> b!3210251 (= e!2001775 e!2001781)))

(assert (=> b!3210251 (= c!539150 ((_ is Star!9983) (regex!5224 lt!1084660)))))

(declare-fun b!3210252 () Bool)

(assert (=> b!3210252 (= e!2001776 call!232259)))

(assert (= (and d!879399 (not res!1306829)) b!3210251))

(assert (= (and b!3210251 c!539150) b!3210245))

(assert (= (and b!3210251 (not c!539150)) b!3210246))

(assert (= (and b!3210245 res!1306832) b!3210247))

(assert (= (and b!3210246 c!539149) b!3210249))

(assert (= (and b!3210246 (not c!539149)) b!3210248))

(assert (= (and b!3210249 res!1306831) b!3210244))

(assert (= (and b!3210248 (not res!1306830)) b!3210250))

(assert (= (and b!3210250 res!1306828) b!3210252))

(assert (= (or b!3210244 b!3210252) bm!232254))

(assert (= (or b!3210249 b!3210250) bm!232255))

(assert (= (or b!3210247 bm!232255) bm!232253))

(declare-fun m!3478593 () Bool)

(assert (=> b!3210245 m!3478593))

(declare-fun m!3478595 () Bool)

(assert (=> bm!232253 m!3478595))

(declare-fun m!3478597 () Bool)

(assert (=> bm!232254 m!3478597))

(assert (=> d!879271 d!879399))

(declare-fun b!3210253 () Bool)

(declare-fun e!2001782 () List!36301)

(assert (=> b!3210253 (= e!2001782 (_2!20921 (get!11520 lt!1084882)))))

(declare-fun b!3210256 () Bool)

(declare-fun e!2001783 () Bool)

(declare-fun lt!1085107 () List!36301)

(assert (=> b!3210256 (= e!2001783 (or (not (= (_2!20921 (get!11520 lt!1084882)) Nil!36177)) (= lt!1085107 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084882)))))))))

(declare-fun b!3210255 () Bool)

(declare-fun res!1306833 () Bool)

(assert (=> b!3210255 (=> (not res!1306833) (not e!2001783))))

(assert (=> b!3210255 (= res!1306833 (= (size!27260 lt!1085107) (+ (size!27260 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084882))))) (size!27260 (_2!20921 (get!11520 lt!1084882))))))))

(declare-fun d!879401 () Bool)

(assert (=> d!879401 e!2001783))

(declare-fun res!1306834 () Bool)

(assert (=> d!879401 (=> (not res!1306834) (not e!2001783))))

(assert (=> d!879401 (= res!1306834 (= (content!4888 lt!1085107) ((_ map or) (content!4888 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084882))))) (content!4888 (_2!20921 (get!11520 lt!1084882))))))))

(assert (=> d!879401 (= lt!1085107 e!2001782)))

(declare-fun c!539151 () Bool)

(assert (=> d!879401 (= c!539151 ((_ is Nil!36177) (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084882))))))))

(assert (=> d!879401 (= (++!8680 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084882)))) (_2!20921 (get!11520 lt!1084882))) lt!1085107)))

(declare-fun b!3210254 () Bool)

(assert (=> b!3210254 (= e!2001782 (Cons!36177 (h!41597 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084882))))) (++!8680 (t!238512 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084882))))) (_2!20921 (get!11520 lt!1084882)))))))

(assert (= (and d!879401 c!539151) b!3210253))

(assert (= (and d!879401 (not c!539151)) b!3210254))

(assert (= (and d!879401 res!1306834) b!3210255))

(assert (= (and b!3210255 res!1306833) b!3210256))

(declare-fun m!3478599 () Bool)

(assert (=> b!3210255 m!3478599))

(assert (=> b!3210255 m!3477563))

(declare-fun m!3478601 () Bool)

(assert (=> b!3210255 m!3478601))

(assert (=> b!3210255 m!3477597))

(declare-fun m!3478603 () Bool)

(assert (=> d!879401 m!3478603))

(assert (=> d!879401 m!3477563))

(declare-fun m!3478605 () Bool)

(assert (=> d!879401 m!3478605))

(declare-fun m!3478607 () Bool)

(assert (=> d!879401 m!3478607))

(declare-fun m!3478609 () Bool)

(assert (=> b!3210254 m!3478609))

(assert (=> b!3209667 d!879401))

(declare-fun d!879403 () Bool)

(assert (=> d!879403 (= (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084882)))) (list!12868 (c!538931 (charsOf!3240 (_1!20921 (get!11520 lt!1084882))))))))

(declare-fun bs!541596 () Bool)

(assert (= bs!541596 d!879403))

(declare-fun m!3478611 () Bool)

(assert (=> bs!541596 m!3478611))

(assert (=> b!3209667 d!879403))

(declare-fun d!879405 () Bool)

(declare-fun lt!1085108 () BalanceConc!21260)

(assert (=> d!879405 (= (list!12865 lt!1085108) (originalCharacters!5938 (_1!20921 (get!11520 lt!1084882))))))

(assert (=> d!879405 (= lt!1085108 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084882))))) (value!169344 (_1!20921 (get!11520 lt!1084882)))))))

(assert (=> d!879405 (= (charsOf!3240 (_1!20921 (get!11520 lt!1084882))) lt!1085108)))

(declare-fun b_lambda!87967 () Bool)

(assert (=> (not b_lambda!87967) (not d!879405)))

(declare-fun t!238644 () Bool)

(declare-fun tb!157681 () Bool)

(assert (=> (and b!3209139 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084882)))))) t!238644) tb!157681))

(declare-fun b!3210257 () Bool)

(declare-fun e!2001784 () Bool)

(declare-fun tp!1013376 () Bool)

(assert (=> b!3210257 (= e!2001784 (and (inv!49039 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084882))))) (value!169344 (_1!20921 (get!11520 lt!1084882)))))) tp!1013376))))

(declare-fun result!200046 () Bool)

(assert (=> tb!157681 (= result!200046 (and (inv!49040 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084882))))) (value!169344 (_1!20921 (get!11520 lt!1084882))))) e!2001784))))

(assert (= tb!157681 b!3210257))

(declare-fun m!3478613 () Bool)

(assert (=> b!3210257 m!3478613))

(declare-fun m!3478615 () Bool)

(assert (=> tb!157681 m!3478615))

(assert (=> d!879405 t!238644))

(declare-fun b_and!213833 () Bool)

(assert (= b_and!213829 (and (=> t!238644 result!200046) b_and!213833)))

(declare-fun t!238646 () Bool)

(declare-fun tb!157683 () Bool)

(assert (=> (and b!3210083 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084882)))))) t!238646) tb!157683))

(declare-fun result!200048 () Bool)

(assert (= result!200048 result!200046))

(assert (=> d!879405 t!238646))

(declare-fun b_and!213835 () Bool)

(assert (= b_and!213823 (and (=> t!238646 result!200048) b_and!213835)))

(declare-fun t!238648 () Bool)

(declare-fun tb!157685 () Bool)

(assert (=> (and b!3209140 (= (toChars!7167 (transformation!5224 (h!41598 rules!2135))) (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084882)))))) t!238648) tb!157685))

(declare-fun result!200050 () Bool)

(assert (= result!200050 result!200046))

(assert (=> d!879405 t!238648))

(declare-fun b_and!213837 () Bool)

(assert (= b_and!213827 (and (=> t!238648 result!200050) b_and!213837)))

(declare-fun t!238650 () Bool)

(declare-fun tb!157687 () Bool)

(assert (=> (and b!3209120 (= (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084882)))))) t!238650) tb!157687))

(declare-fun result!200052 () Bool)

(assert (= result!200052 result!200046))

(assert (=> d!879405 t!238650))

(declare-fun b_and!213839 () Bool)

(assert (= b_and!213825 (and (=> t!238650 result!200052) b_and!213839)))

(declare-fun tb!157689 () Bool)

(declare-fun t!238652 () Bool)

(assert (=> (and b!3210119 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084882)))))) t!238652) tb!157689))

(declare-fun result!200054 () Bool)

(assert (= result!200054 result!200046))

(assert (=> d!879405 t!238652))

(declare-fun b_and!213841 () Bool)

(assert (= b_and!213831 (and (=> t!238652 result!200054) b_and!213841)))

(declare-fun m!3478617 () Bool)

(assert (=> d!879405 m!3478617))

(declare-fun m!3478619 () Bool)

(assert (=> d!879405 m!3478619))

(assert (=> b!3209667 d!879405))

(declare-fun d!879407 () Bool)

(assert (=> d!879407 (= (get!11520 lt!1084882) (v!35696 lt!1084882))))

(assert (=> b!3209667 d!879407))

(declare-fun b!3210258 () Bool)

(declare-fun e!2001785 () List!36301)

(assert (=> b!3210258 (= e!2001785 (_2!20921 (get!11520 lt!1084932)))))

(declare-fun b!3210261 () Bool)

(declare-fun e!2001786 () Bool)

(declare-fun lt!1085109 () List!36301)

(assert (=> b!3210261 (= e!2001786 (or (not (= (_2!20921 (get!11520 lt!1084932)) Nil!36177)) (= lt!1085109 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084932)))))))))

(declare-fun b!3210260 () Bool)

(declare-fun res!1306835 () Bool)

(assert (=> b!3210260 (=> (not res!1306835) (not e!2001786))))

(assert (=> b!3210260 (= res!1306835 (= (size!27260 lt!1085109) (+ (size!27260 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084932))))) (size!27260 (_2!20921 (get!11520 lt!1084932))))))))

(declare-fun d!879409 () Bool)

(assert (=> d!879409 e!2001786))

(declare-fun res!1306836 () Bool)

(assert (=> d!879409 (=> (not res!1306836) (not e!2001786))))

(assert (=> d!879409 (= res!1306836 (= (content!4888 lt!1085109) ((_ map or) (content!4888 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084932))))) (content!4888 (_2!20921 (get!11520 lt!1084932))))))))

(assert (=> d!879409 (= lt!1085109 e!2001785)))

(declare-fun c!539152 () Bool)

(assert (=> d!879409 (= c!539152 ((_ is Nil!36177) (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084932))))))))

(assert (=> d!879409 (= (++!8680 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084932)))) (_2!20921 (get!11520 lt!1084932))) lt!1085109)))

(declare-fun b!3210259 () Bool)

(assert (=> b!3210259 (= e!2001785 (Cons!36177 (h!41597 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084932))))) (++!8680 (t!238512 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084932))))) (_2!20921 (get!11520 lt!1084932)))))))

(assert (= (and d!879409 c!539152) b!3210258))

(assert (= (and d!879409 (not c!539152)) b!3210259))

(assert (= (and d!879409 res!1306836) b!3210260))

(assert (= (and b!3210260 res!1306835) b!3210261))

(declare-fun m!3478621 () Bool)

(assert (=> b!3210260 m!3478621))

(assert (=> b!3210260 m!3477727))

(declare-fun m!3478623 () Bool)

(assert (=> b!3210260 m!3478623))

(assert (=> b!3210260 m!3477749))

(declare-fun m!3478625 () Bool)

(assert (=> d!879409 m!3478625))

(assert (=> d!879409 m!3477727))

(declare-fun m!3478627 () Bool)

(assert (=> d!879409 m!3478627))

(declare-fun m!3478629 () Bool)

(assert (=> d!879409 m!3478629))

(declare-fun m!3478631 () Bool)

(assert (=> b!3210259 m!3478631))

(assert (=> b!3209750 d!879409))

(declare-fun d!879411 () Bool)

(assert (=> d!879411 (= (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084932)))) (list!12868 (c!538931 (charsOf!3240 (_1!20921 (get!11520 lt!1084932))))))))

(declare-fun bs!541597 () Bool)

(assert (= bs!541597 d!879411))

(declare-fun m!3478633 () Bool)

(assert (=> bs!541597 m!3478633))

(assert (=> b!3209750 d!879411))

(declare-fun d!879413 () Bool)

(declare-fun lt!1085110 () BalanceConc!21260)

(assert (=> d!879413 (= (list!12865 lt!1085110) (originalCharacters!5938 (_1!20921 (get!11520 lt!1084932))))))

(assert (=> d!879413 (= lt!1085110 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932))))) (value!169344 (_1!20921 (get!11520 lt!1084932)))))))

(assert (=> d!879413 (= (charsOf!3240 (_1!20921 (get!11520 lt!1084932))) lt!1085110)))

(declare-fun b_lambda!87969 () Bool)

(assert (=> (not b_lambda!87969) (not d!879413)))

(declare-fun t!238654 () Bool)

(declare-fun tb!157691 () Bool)

(assert (=> (and b!3210083 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932)))))) t!238654) tb!157691))

(declare-fun b!3210262 () Bool)

(declare-fun e!2001787 () Bool)

(declare-fun tp!1013377 () Bool)

(assert (=> b!3210262 (= e!2001787 (and (inv!49039 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932))))) (value!169344 (_1!20921 (get!11520 lt!1084932)))))) tp!1013377))))

(declare-fun result!200056 () Bool)

(assert (=> tb!157691 (= result!200056 (and (inv!49040 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932))))) (value!169344 (_1!20921 (get!11520 lt!1084932))))) e!2001787))))

(assert (= tb!157691 b!3210262))

(declare-fun m!3478635 () Bool)

(assert (=> b!3210262 m!3478635))

(declare-fun m!3478637 () Bool)

(assert (=> tb!157691 m!3478637))

(assert (=> d!879413 t!238654))

(declare-fun b_and!213843 () Bool)

(assert (= b_and!213835 (and (=> t!238654 result!200056) b_and!213843)))

(declare-fun tb!157693 () Bool)

(declare-fun t!238656 () Bool)

(assert (=> (and b!3209139 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932)))))) t!238656) tb!157693))

(declare-fun result!200058 () Bool)

(assert (= result!200058 result!200056))

(assert (=> d!879413 t!238656))

(declare-fun b_and!213845 () Bool)

(assert (= b_and!213833 (and (=> t!238656 result!200058) b_and!213845)))

(declare-fun tb!157695 () Bool)

(declare-fun t!238658 () Bool)

(assert (=> (and b!3210119 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932)))))) t!238658) tb!157695))

(declare-fun result!200060 () Bool)

(assert (= result!200060 result!200056))

(assert (=> d!879413 t!238658))

(declare-fun b_and!213847 () Bool)

(assert (= b_and!213841 (and (=> t!238658 result!200060) b_and!213847)))

(declare-fun t!238660 () Bool)

(declare-fun tb!157697 () Bool)

(assert (=> (and b!3209120 (= (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932)))))) t!238660) tb!157697))

(declare-fun result!200062 () Bool)

(assert (= result!200062 result!200056))

(assert (=> d!879413 t!238660))

(declare-fun b_and!213849 () Bool)

(assert (= b_and!213839 (and (=> t!238660 result!200062) b_and!213849)))

(declare-fun tb!157699 () Bool)

(declare-fun t!238662 () Bool)

(assert (=> (and b!3209140 (= (toChars!7167 (transformation!5224 (h!41598 rules!2135))) (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932)))))) t!238662) tb!157699))

(declare-fun result!200064 () Bool)

(assert (= result!200064 result!200056))

(assert (=> d!879413 t!238662))

(declare-fun b_and!213851 () Bool)

(assert (= b_and!213837 (and (=> t!238662 result!200064) b_and!213851)))

(declare-fun m!3478639 () Bool)

(assert (=> d!879413 m!3478639))

(declare-fun m!3478641 () Bool)

(assert (=> d!879413 m!3478641))

(assert (=> b!3209750 d!879413))

(declare-fun d!879415 () Bool)

(assert (=> d!879415 (= (get!11520 lt!1084932) (v!35696 lt!1084932))))

(assert (=> b!3209750 d!879415))

(assert (=> d!879165 d!878969))

(declare-fun b!3210263 () Bool)

(declare-fun e!2001788 () Option!7147)

(declare-fun call!232261 () Option!7147)

(assert (=> b!3210263 (= e!2001788 call!232261)))

(declare-fun d!879417 () Bool)

(declare-fun e!2001790 () Bool)

(assert (=> d!879417 e!2001790))

(declare-fun res!1306841 () Bool)

(assert (=> d!879417 (=> res!1306841 e!2001790)))

(declare-fun lt!1085114 () Option!7147)

(assert (=> d!879417 (= res!1306841 (isEmpty!20271 lt!1085114))))

(assert (=> d!879417 (= lt!1085114 e!2001788)))

(declare-fun c!539153 () Bool)

(assert (=> d!879417 (= c!539153 (and ((_ is Cons!36178) rules!2135) ((_ is Nil!36178) (t!238513 rules!2135))))))

(declare-fun lt!1085111 () Unit!50642)

(declare-fun lt!1085115 () Unit!50642)

(assert (=> d!879417 (= lt!1085111 lt!1085115)))

(assert (=> d!879417 (isPrefix!2783 (++!8680 (list!12865 (charsOf!3240 (h!41599 tokens!494))) lt!1084686) (++!8680 (list!12865 (charsOf!3240 (h!41599 tokens!494))) lt!1084686))))

(assert (=> d!879417 (= lt!1085115 (lemmaIsPrefixRefl!1742 (++!8680 (list!12865 (charsOf!3240 (h!41599 tokens!494))) lt!1084686) (++!8680 (list!12865 (charsOf!3240 (h!41599 tokens!494))) lt!1084686)))))

(assert (=> d!879417 (rulesValidInductive!1776 thiss!18206 rules!2135)))

(assert (=> d!879417 (= (maxPrefix!2455 thiss!18206 rules!2135 (++!8680 (list!12865 (charsOf!3240 (h!41599 tokens!494))) lt!1084686)) lt!1085114)))

(declare-fun b!3210264 () Bool)

(declare-fun res!1306842 () Bool)

(declare-fun e!2001789 () Bool)

(assert (=> b!3210264 (=> (not res!1306842) (not e!2001789))))

(assert (=> b!3210264 (= res!1306842 (< (size!27260 (_2!20921 (get!11520 lt!1085114))) (size!27260 (++!8680 (list!12865 (charsOf!3240 (h!41599 tokens!494))) lt!1084686))))))

(declare-fun b!3210265 () Bool)

(declare-fun res!1306840 () Bool)

(assert (=> b!3210265 (=> (not res!1306840) (not e!2001789))))

(assert (=> b!3210265 (= res!1306840 (= (value!169344 (_1!20921 (get!11520 lt!1085114))) (apply!8197 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1085114)))) (seqFromList!3519 (originalCharacters!5938 (_1!20921 (get!11520 lt!1085114)))))))))

(declare-fun b!3210266 () Bool)

(assert (=> b!3210266 (= e!2001790 e!2001789)))

(declare-fun res!1306838 () Bool)

(assert (=> b!3210266 (=> (not res!1306838) (not e!2001789))))

(assert (=> b!3210266 (= res!1306838 (isDefined!5555 lt!1085114))))

(declare-fun b!3210267 () Bool)

(declare-fun res!1306843 () Bool)

(assert (=> b!3210267 (=> (not res!1306843) (not e!2001789))))

(assert (=> b!3210267 (= res!1306843 (= (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1085114)))) (originalCharacters!5938 (_1!20921 (get!11520 lt!1085114)))))))

(declare-fun bm!232256 () Bool)

(assert (=> bm!232256 (= call!232261 (maxPrefixOneRule!1592 thiss!18206 (h!41598 rules!2135) (++!8680 (list!12865 (charsOf!3240 (h!41599 tokens!494))) lt!1084686)))))

(declare-fun b!3210268 () Bool)

(declare-fun res!1306839 () Bool)

(assert (=> b!3210268 (=> (not res!1306839) (not e!2001789))))

(assert (=> b!3210268 (= res!1306839 (= (++!8680 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1085114)))) (_2!20921 (get!11520 lt!1085114))) (++!8680 (list!12865 (charsOf!3240 (h!41599 tokens!494))) lt!1084686)))))

(declare-fun b!3210269 () Bool)

(declare-fun res!1306837 () Bool)

(assert (=> b!3210269 (=> (not res!1306837) (not e!2001789))))

(assert (=> b!3210269 (= res!1306837 (matchR!4617 (regex!5224 (rule!7664 (_1!20921 (get!11520 lt!1085114)))) (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1085114))))))))

(declare-fun b!3210270 () Bool)

(assert (=> b!3210270 (= e!2001789 (contains!6462 rules!2135 (rule!7664 (_1!20921 (get!11520 lt!1085114)))))))

(declare-fun b!3210271 () Bool)

(declare-fun lt!1085113 () Option!7147)

(declare-fun lt!1085112 () Option!7147)

(assert (=> b!3210271 (= e!2001788 (ite (and ((_ is None!7146) lt!1085113) ((_ is None!7146) lt!1085112)) None!7146 (ite ((_ is None!7146) lt!1085112) lt!1085113 (ite ((_ is None!7146) lt!1085113) lt!1085112 (ite (>= (size!27259 (_1!20921 (v!35696 lt!1085113))) (size!27259 (_1!20921 (v!35696 lt!1085112)))) lt!1085113 lt!1085112)))))))

(assert (=> b!3210271 (= lt!1085113 call!232261)))

(assert (=> b!3210271 (= lt!1085112 (maxPrefix!2455 thiss!18206 (t!238513 rules!2135) (++!8680 (list!12865 (charsOf!3240 (h!41599 tokens!494))) lt!1084686)))))

(assert (= (and d!879417 c!539153) b!3210263))

(assert (= (and d!879417 (not c!539153)) b!3210271))

(assert (= (or b!3210263 b!3210271) bm!232256))

(assert (= (and d!879417 (not res!1306841)) b!3210266))

(assert (= (and b!3210266 res!1306838) b!3210267))

(assert (= (and b!3210267 res!1306843) b!3210264))

(assert (= (and b!3210264 res!1306842) b!3210268))

(assert (= (and b!3210268 res!1306839) b!3210265))

(assert (= (and b!3210265 res!1306840) b!3210269))

(assert (= (and b!3210269 res!1306837) b!3210270))

(declare-fun m!3478643 () Bool)

(assert (=> b!3210268 m!3478643))

(declare-fun m!3478645 () Bool)

(assert (=> b!3210268 m!3478645))

(assert (=> b!3210268 m!3478645))

(declare-fun m!3478647 () Bool)

(assert (=> b!3210268 m!3478647))

(assert (=> b!3210268 m!3478647))

(declare-fun m!3478649 () Bool)

(assert (=> b!3210268 m!3478649))

(assert (=> b!3210271 m!3477925))

(declare-fun m!3478651 () Bool)

(assert (=> b!3210271 m!3478651))

(assert (=> b!3210270 m!3478643))

(declare-fun m!3478653 () Bool)

(assert (=> b!3210270 m!3478653))

(assert (=> b!3210267 m!3478643))

(assert (=> b!3210267 m!3478645))

(assert (=> b!3210267 m!3478645))

(assert (=> b!3210267 m!3478647))

(assert (=> bm!232256 m!3477925))

(declare-fun m!3478655 () Bool)

(assert (=> bm!232256 m!3478655))

(assert (=> b!3210265 m!3478643))

(declare-fun m!3478657 () Bool)

(assert (=> b!3210265 m!3478657))

(assert (=> b!3210265 m!3478657))

(declare-fun m!3478659 () Bool)

(assert (=> b!3210265 m!3478659))

(declare-fun m!3478661 () Bool)

(assert (=> d!879417 m!3478661))

(assert (=> d!879417 m!3477925))

(assert (=> d!879417 m!3477925))

(declare-fun m!3478663 () Bool)

(assert (=> d!879417 m!3478663))

(assert (=> d!879417 m!3477925))

(assert (=> d!879417 m!3477925))

(declare-fun m!3478665 () Bool)

(assert (=> d!879417 m!3478665))

(assert (=> d!879417 m!3477747))

(assert (=> b!3210264 m!3478643))

(declare-fun m!3478667 () Bool)

(assert (=> b!3210264 m!3478667))

(assert (=> b!3210264 m!3477925))

(declare-fun m!3478669 () Bool)

(assert (=> b!3210264 m!3478669))

(declare-fun m!3478671 () Bool)

(assert (=> b!3210266 m!3478671))

(assert (=> b!3210269 m!3478643))

(assert (=> b!3210269 m!3478645))

(assert (=> b!3210269 m!3478645))

(assert (=> b!3210269 m!3478647))

(assert (=> b!3210269 m!3478647))

(declare-fun m!3478673 () Bool)

(assert (=> b!3210269 m!3478673))

(assert (=> d!879165 d!879417))

(assert (=> d!879165 d!878967))

(declare-fun b!3210272 () Bool)

(declare-fun e!2001791 () List!36301)

(assert (=> b!3210272 (= e!2001791 lt!1084686)))

(declare-fun lt!1085116 () List!36301)

(declare-fun b!3210275 () Bool)

(declare-fun e!2001792 () Bool)

(assert (=> b!3210275 (= e!2001792 (or (not (= lt!1084686 Nil!36177)) (= lt!1085116 (list!12865 (charsOf!3240 (h!41599 tokens!494))))))))

(declare-fun b!3210274 () Bool)

(declare-fun res!1306844 () Bool)

(assert (=> b!3210274 (=> (not res!1306844) (not e!2001792))))

(assert (=> b!3210274 (= res!1306844 (= (size!27260 lt!1085116) (+ (size!27260 (list!12865 (charsOf!3240 (h!41599 tokens!494)))) (size!27260 lt!1084686))))))

(declare-fun d!879419 () Bool)

(assert (=> d!879419 e!2001792))

(declare-fun res!1306845 () Bool)

(assert (=> d!879419 (=> (not res!1306845) (not e!2001792))))

(assert (=> d!879419 (= res!1306845 (= (content!4888 lt!1085116) ((_ map or) (content!4888 (list!12865 (charsOf!3240 (h!41599 tokens!494)))) (content!4888 lt!1084686))))))

(assert (=> d!879419 (= lt!1085116 e!2001791)))

(declare-fun c!539154 () Bool)

(assert (=> d!879419 (= c!539154 ((_ is Nil!36177) (list!12865 (charsOf!3240 (h!41599 tokens!494)))))))

(assert (=> d!879419 (= (++!8680 (list!12865 (charsOf!3240 (h!41599 tokens!494))) lt!1084686) lt!1085116)))

(declare-fun b!3210273 () Bool)

(assert (=> b!3210273 (= e!2001791 (Cons!36177 (h!41597 (list!12865 (charsOf!3240 (h!41599 tokens!494)))) (++!8680 (t!238512 (list!12865 (charsOf!3240 (h!41599 tokens!494)))) lt!1084686)))))

(assert (= (and d!879419 c!539154) b!3210272))

(assert (= (and d!879419 (not c!539154)) b!3210273))

(assert (= (and d!879419 res!1306845) b!3210274))

(assert (= (and b!3210274 res!1306844) b!3210275))

(declare-fun m!3478675 () Bool)

(assert (=> b!3210274 m!3478675))

(assert (=> b!3210274 m!3476717))

(declare-fun m!3478677 () Bool)

(assert (=> b!3210274 m!3478677))

(assert (=> b!3210274 m!3478227))

(declare-fun m!3478679 () Bool)

(assert (=> d!879419 m!3478679))

(assert (=> d!879419 m!3476717))

(declare-fun m!3478681 () Bool)

(assert (=> d!879419 m!3478681))

(assert (=> d!879419 m!3478233))

(declare-fun m!3478683 () Bool)

(assert (=> b!3210273 m!3478683))

(assert (=> d!879165 d!879419))

(assert (=> d!879165 d!878957))

(declare-fun d!879421 () Bool)

(assert (=> d!879421 (= (maxPrefix!2455 thiss!18206 rules!2135 (++!8680 (list!12865 (charsOf!3240 (h!41599 tokens!494))) lt!1084686)) (Some!7146 (tuple2!35575 (h!41599 tokens!494) lt!1084686)))))

(assert (=> d!879421 true))

(declare-fun _$49!196 () Unit!50642)

(assert (=> d!879421 (= (choose!18731 thiss!18206 rules!2135 (h!41599 tokens!494) (rule!7664 (h!41599 tokens!494)) lt!1084686 (rule!7664 separatorToken!241)) _$49!196)))

(declare-fun bs!541598 () Bool)

(assert (= bs!541598 d!879421))

(assert (=> bs!541598 m!3476715))

(assert (=> bs!541598 m!3476715))

(assert (=> bs!541598 m!3476717))

(assert (=> bs!541598 m!3476717))

(assert (=> bs!541598 m!3477925))

(assert (=> bs!541598 m!3477925))

(assert (=> bs!541598 m!3477929))

(assert (=> d!879165 d!879421))

(declare-fun d!879423 () Bool)

(assert (=> d!879423 (dynLambda!14613 lambda!117478 (h!41599 (t!238514 tokens!494)))))

(assert (=> d!879423 true))

(declare-fun _$7!1089 () Unit!50642)

(assert (=> d!879423 (= (choose!18727 tokens!494 lambda!117478 (h!41599 (t!238514 tokens!494))) _$7!1089)))

(declare-fun b_lambda!87971 () Bool)

(assert (=> (not b_lambda!87971) (not d!879423)))

(declare-fun bs!541599 () Bool)

(assert (= bs!541599 d!879423))

(assert (=> bs!541599 m!3478265))

(assert (=> d!879253 d!879423))

(assert (=> d!879253 d!878963))

(declare-fun d!879425 () Bool)

(declare-fun lt!1085117 () Int)

(assert (=> d!879425 (= lt!1085117 (size!27264 (list!12869 (_1!20922 lt!1084839))))))

(assert (=> d!879425 (= lt!1085117 (size!27265 (c!538932 (_1!20922 lt!1084839))))))

(assert (=> d!879425 (= (size!27261 (_1!20922 lt!1084839)) lt!1085117)))

(declare-fun bs!541600 () Bool)

(assert (= bs!541600 d!879425))

(assert (=> bs!541600 m!3477333))

(assert (=> bs!541600 m!3477333))

(declare-fun m!3478685 () Bool)

(assert (=> bs!541600 m!3478685))

(declare-fun m!3478687 () Bool)

(assert (=> bs!541600 m!3478687))

(assert (=> d!879045 d!879425))

(declare-fun e!2001821 () Bool)

(declare-fun lt!1085337 () tuple2!35576)

(declare-fun b!3210319 () Bool)

(declare-fun lexRec!687 (LexerInterface!4813 List!36302 BalanceConc!21260) tuple2!35576)

(assert (=> b!3210319 (= e!2001821 (= (list!12865 (_2!20922 lt!1085337)) (list!12865 (_2!20922 (lexRec!687 thiss!18206 rules!2135 lt!1084684)))))))

(declare-datatypes ((tuple2!35588 0))(
  ( (tuple2!35589 (_1!20928 Token!9814) (_2!20928 BalanceConc!21260)) )
))
(declare-datatypes ((Option!7150 0))(
  ( (None!7149) (Some!7149 (v!35709 tuple2!35588)) )
))
(declare-fun lt!1085324 () Option!7150)

(declare-fun lt!1085318 () tuple2!35576)

(declare-fun b!3210320 () Bool)

(assert (=> b!3210320 (= lt!1085318 (lexRec!687 thiss!18206 rules!2135 (_2!20928 (v!35709 lt!1085324))))))

(declare-fun e!2001820 () tuple2!35576)

(declare-fun prepend!1175 (BalanceConc!21262 Token!9814) BalanceConc!21262)

(assert (=> b!3210320 (= e!2001820 (tuple2!35577 (prepend!1175 (_1!20922 lt!1085318) (_1!20928 (v!35709 lt!1085324))) (_2!20922 lt!1085318)))))

(declare-fun d!879427 () Bool)

(assert (=> d!879427 e!2001821))

(declare-fun res!1306853 () Bool)

(assert (=> d!879427 (=> (not res!1306853) (not e!2001821))))

(assert (=> d!879427 (= res!1306853 (= (list!12869 (_1!20922 lt!1085337)) (list!12869 (_1!20922 (lexRec!687 thiss!18206 rules!2135 lt!1084684)))))))

(declare-fun e!2001822 () tuple2!35576)

(assert (=> d!879427 (= lt!1085337 e!2001822)))

(declare-fun c!539175 () Bool)

(declare-fun lt!1085338 () Option!7150)

(assert (=> d!879427 (= c!539175 ((_ is Some!7149) lt!1085338))))

(declare-fun maxPrefixZipperSequenceV2!474 (LexerInterface!4813 List!36302 BalanceConc!21260 BalanceConc!21260) Option!7150)

(assert (=> d!879427 (= lt!1085338 (maxPrefixZipperSequenceV2!474 thiss!18206 rules!2135 lt!1084684 lt!1084684))))

(declare-fun lt!1085314 () Unit!50642)

(declare-fun lt!1085309 () Unit!50642)

(assert (=> d!879427 (= lt!1085314 lt!1085309)))

(declare-fun lt!1085320 () List!36301)

(declare-fun lt!1085334 () List!36301)

(declare-fun isSuffix!849 (List!36301 List!36301) Bool)

(assert (=> d!879427 (isSuffix!849 lt!1085320 (++!8680 lt!1085334 lt!1085320))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!534 (List!36301 List!36301) Unit!50642)

(assert (=> d!879427 (= lt!1085309 (lemmaConcatTwoListThenFSndIsSuffix!534 lt!1085334 lt!1085320))))

(assert (=> d!879427 (= lt!1085320 (list!12865 lt!1084684))))

(assert (=> d!879427 (= lt!1085334 (list!12865 (BalanceConc!21261 Empty!10823)))))

(assert (=> d!879427 (= (lexTailRecV2!933 thiss!18206 rules!2135 lt!1084684 (BalanceConc!21261 Empty!10823) lt!1084684 (BalanceConc!21263 Empty!10824)) lt!1085337)))

(declare-fun b!3210321 () Bool)

(declare-fun lt!1085328 () BalanceConc!21260)

(assert (=> b!3210321 (= e!2001820 (tuple2!35577 (BalanceConc!21263 Empty!10824) lt!1085328))))

(declare-fun lt!1085322 () tuple2!35576)

(declare-fun b!3210322 () Bool)

(declare-fun lt!1085308 () Option!7150)

(assert (=> b!3210322 (= lt!1085322 (lexRec!687 thiss!18206 rules!2135 (_2!20928 (v!35709 lt!1085308))))))

(declare-fun e!2001819 () tuple2!35576)

(assert (=> b!3210322 (= e!2001819 (tuple2!35577 (prepend!1175 (_1!20922 lt!1085322) (_1!20928 (v!35709 lt!1085308))) (_2!20922 lt!1085322)))))

(declare-fun b!3210323 () Bool)

(declare-fun lt!1085330 () BalanceConc!21260)

(declare-fun append!867 (BalanceConc!21262 Token!9814) BalanceConc!21262)

(assert (=> b!3210323 (= e!2001822 (lexTailRecV2!933 thiss!18206 rules!2135 lt!1084684 lt!1085330 (_2!20928 (v!35709 lt!1085338)) (append!867 (BalanceConc!21263 Empty!10824) (_1!20928 (v!35709 lt!1085338)))))))

(declare-fun lt!1085340 () tuple2!35576)

(assert (=> b!3210323 (= lt!1085340 (lexRec!687 thiss!18206 rules!2135 (_2!20928 (v!35709 lt!1085338))))))

(declare-fun lt!1085332 () List!36301)

(assert (=> b!3210323 (= lt!1085332 (list!12865 (BalanceConc!21261 Empty!10823)))))

(declare-fun lt!1085327 () List!36301)

(assert (=> b!3210323 (= lt!1085327 (list!12865 (charsOf!3240 (_1!20928 (v!35709 lt!1085338)))))))

(declare-fun lt!1085329 () List!36301)

(assert (=> b!3210323 (= lt!1085329 (list!12865 (_2!20928 (v!35709 lt!1085338))))))

(declare-fun lt!1085319 () Unit!50642)

(assert (=> b!3210323 (= lt!1085319 (lemmaConcatAssociativity!1746 lt!1085332 lt!1085327 lt!1085329))))

(assert (=> b!3210323 (= (++!8680 (++!8680 lt!1085332 lt!1085327) lt!1085329) (++!8680 lt!1085332 (++!8680 lt!1085327 lt!1085329)))))

(declare-fun lt!1085307 () Unit!50642)

(assert (=> b!3210323 (= lt!1085307 lt!1085319)))

(declare-fun maxPrefixZipperSequence!1080 (LexerInterface!4813 List!36302 BalanceConc!21260) Option!7150)

(assert (=> b!3210323 (= lt!1085308 (maxPrefixZipperSequence!1080 thiss!18206 rules!2135 lt!1084684))))

(declare-fun c!539173 () Bool)

(assert (=> b!3210323 (= c!539173 ((_ is Some!7149) lt!1085308))))

(assert (=> b!3210323 (= (lexRec!687 thiss!18206 rules!2135 lt!1084684) e!2001819)))

(declare-fun lt!1085317 () Unit!50642)

(declare-fun Unit!50648 () Unit!50642)

(assert (=> b!3210323 (= lt!1085317 Unit!50648)))

(declare-fun lt!1085335 () List!36303)

(assert (=> b!3210323 (= lt!1085335 (list!12869 (BalanceConc!21263 Empty!10824)))))

(declare-fun lt!1085336 () List!36303)

(assert (=> b!3210323 (= lt!1085336 (Cons!36179 (_1!20928 (v!35709 lt!1085338)) Nil!36179))))

(declare-fun lt!1085311 () List!36303)

(assert (=> b!3210323 (= lt!1085311 (list!12869 (_1!20922 lt!1085340)))))

(declare-fun lt!1085315 () Unit!50642)

(declare-fun lemmaConcatAssociativity!1748 (List!36303 List!36303 List!36303) Unit!50642)

(assert (=> b!3210323 (= lt!1085315 (lemmaConcatAssociativity!1748 lt!1085335 lt!1085336 lt!1085311))))

(declare-fun ++!8684 (List!36303 List!36303) List!36303)

(assert (=> b!3210323 (= (++!8684 (++!8684 lt!1085335 lt!1085336) lt!1085311) (++!8684 lt!1085335 (++!8684 lt!1085336 lt!1085311)))))

(declare-fun lt!1085323 () Unit!50642)

(assert (=> b!3210323 (= lt!1085323 lt!1085315)))

(declare-fun lt!1085326 () List!36301)

(assert (=> b!3210323 (= lt!1085326 (++!8680 (list!12865 (BalanceConc!21261 Empty!10823)) (list!12865 (charsOf!3240 (_1!20928 (v!35709 lt!1085338))))))))

(declare-fun lt!1085312 () List!36301)

(assert (=> b!3210323 (= lt!1085312 (list!12865 (_2!20928 (v!35709 lt!1085338))))))

(declare-fun lt!1085331 () List!36303)

(assert (=> b!3210323 (= lt!1085331 (list!12869 (append!867 (BalanceConc!21263 Empty!10824) (_1!20928 (v!35709 lt!1085338)))))))

(declare-fun lt!1085313 () Unit!50642)

(declare-fun lemmaLexThenLexPrefix!452 (LexerInterface!4813 List!36302 List!36301 List!36301 List!36303 List!36303 List!36301) Unit!50642)

(assert (=> b!3210323 (= lt!1085313 (lemmaLexThenLexPrefix!452 thiss!18206 rules!2135 lt!1085326 lt!1085312 lt!1085331 (list!12869 (_1!20922 lt!1085340)) (list!12865 (_2!20922 lt!1085340))))))

(assert (=> b!3210323 (= (lexList!1313 thiss!18206 rules!2135 lt!1085326) (tuple2!35581 lt!1085331 Nil!36177))))

(declare-fun lt!1085325 () Unit!50642)

(assert (=> b!3210323 (= lt!1085325 lt!1085313)))

(assert (=> b!3210323 (= lt!1085328 (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (_1!20928 (v!35709 lt!1085338)))))))

(assert (=> b!3210323 (= lt!1085324 (maxPrefixZipperSequence!1080 thiss!18206 rules!2135 lt!1085328))))

(declare-fun c!539174 () Bool)

(assert (=> b!3210323 (= c!539174 ((_ is Some!7149) lt!1085324))))

(assert (=> b!3210323 (= (lexRec!687 thiss!18206 rules!2135 (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (_1!20928 (v!35709 lt!1085338))))) e!2001820)))

(declare-fun lt!1085316 () Unit!50642)

(declare-fun Unit!50649 () Unit!50642)

(assert (=> b!3210323 (= lt!1085316 Unit!50649)))

(assert (=> b!3210323 (= lt!1085330 (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (_1!20928 (v!35709 lt!1085338)))))))

(declare-fun lt!1085321 () List!36301)

(assert (=> b!3210323 (= lt!1085321 (list!12865 lt!1085330))))

(declare-fun lt!1085310 () List!36301)

(assert (=> b!3210323 (= lt!1085310 (list!12865 (_2!20928 (v!35709 lt!1085338))))))

(declare-fun lt!1085339 () Unit!50642)

(assert (=> b!3210323 (= lt!1085339 (lemmaConcatTwoListThenFSndIsSuffix!534 lt!1085321 lt!1085310))))

(assert (=> b!3210323 (isSuffix!849 lt!1085310 (++!8680 lt!1085321 lt!1085310))))

(declare-fun lt!1085333 () Unit!50642)

(assert (=> b!3210323 (= lt!1085333 lt!1085339)))

(declare-fun b!3210324 () Bool)

(assert (=> b!3210324 (= e!2001822 (tuple2!35577 (BalanceConc!21263 Empty!10824) lt!1084684))))

(declare-fun b!3210325 () Bool)

(assert (=> b!3210325 (= e!2001819 (tuple2!35577 (BalanceConc!21263 Empty!10824) lt!1084684))))

(assert (= (and d!879427 c!539175) b!3210323))

(assert (= (and d!879427 (not c!539175)) b!3210324))

(assert (= (and b!3210323 c!539173) b!3210322))

(assert (= (and b!3210323 (not c!539173)) b!3210325))

(assert (= (and b!3210323 c!539174) b!3210320))

(assert (= (and b!3210323 (not c!539174)) b!3210321))

(assert (= (and d!879427 res!1306853) b!3210319))

(declare-fun m!3478827 () Bool)

(assert (=> b!3210319 m!3478827))

(declare-fun m!3478829 () Bool)

(assert (=> b!3210319 m!3478829))

(declare-fun m!3478831 () Bool)

(assert (=> b!3210319 m!3478831))

(declare-fun m!3478833 () Bool)

(assert (=> d!879427 m!3478833))

(declare-fun m!3478835 () Bool)

(assert (=> d!879427 m!3478835))

(assert (=> d!879427 m!3477337))

(declare-fun m!3478837 () Bool)

(assert (=> d!879427 m!3478837))

(declare-fun m!3478839 () Bool)

(assert (=> d!879427 m!3478839))

(assert (=> d!879427 m!3478829))

(declare-fun m!3478841 () Bool)

(assert (=> d!879427 m!3478841))

(assert (=> d!879427 m!3478833))

(declare-fun m!3478843 () Bool)

(assert (=> d!879427 m!3478843))

(assert (=> d!879427 m!3476993))

(declare-fun m!3478845 () Bool)

(assert (=> b!3210323 m!3478845))

(declare-fun m!3478847 () Bool)

(assert (=> b!3210323 m!3478847))

(declare-fun m!3478849 () Bool)

(assert (=> b!3210323 m!3478849))

(assert (=> b!3210323 m!3476993))

(declare-fun m!3478851 () Bool)

(assert (=> b!3210323 m!3478851))

(declare-fun m!3478853 () Bool)

(assert (=> b!3210323 m!3478853))

(assert (=> b!3210323 m!3476993))

(declare-fun m!3478855 () Bool)

(assert (=> b!3210323 m!3478855))

(declare-fun m!3478857 () Bool)

(assert (=> b!3210323 m!3478857))

(declare-fun m!3478859 () Bool)

(assert (=> b!3210323 m!3478859))

(declare-fun m!3478861 () Bool)

(assert (=> b!3210323 m!3478861))

(declare-fun m!3478863 () Bool)

(assert (=> b!3210323 m!3478863))

(assert (=> b!3210323 m!3478847))

(declare-fun m!3478865 () Bool)

(assert (=> b!3210323 m!3478865))

(declare-fun m!3478867 () Bool)

(assert (=> b!3210323 m!3478867))

(assert (=> b!3210323 m!3478829))

(assert (=> b!3210323 m!3478845))

(declare-fun m!3478869 () Bool)

(assert (=> b!3210323 m!3478869))

(declare-fun m!3478871 () Bool)

(assert (=> b!3210323 m!3478871))

(declare-fun m!3478873 () Bool)

(assert (=> b!3210323 m!3478873))

(declare-fun m!3478875 () Bool)

(assert (=> b!3210323 m!3478875))

(declare-fun m!3478877 () Bool)

(assert (=> b!3210323 m!3478877))

(declare-fun m!3478879 () Bool)

(assert (=> b!3210323 m!3478879))

(assert (=> b!3210323 m!3478867))

(declare-fun m!3478881 () Bool)

(assert (=> b!3210323 m!3478881))

(declare-fun m!3478883 () Bool)

(assert (=> b!3210323 m!3478883))

(assert (=> b!3210323 m!3478857))

(declare-fun m!3478885 () Bool)

(assert (=> b!3210323 m!3478885))

(declare-fun m!3478887 () Bool)

(assert (=> b!3210323 m!3478887))

(declare-fun m!3478889 () Bool)

(assert (=> b!3210323 m!3478889))

(declare-fun m!3478891 () Bool)

(assert (=> b!3210323 m!3478891))

(declare-fun m!3478893 () Bool)

(assert (=> b!3210323 m!3478893))

(declare-fun m!3478895 () Bool)

(assert (=> b!3210323 m!3478895))

(declare-fun m!3478897 () Bool)

(assert (=> b!3210323 m!3478897))

(declare-fun m!3478899 () Bool)

(assert (=> b!3210323 m!3478899))

(declare-fun m!3478901 () Bool)

(assert (=> b!3210323 m!3478901))

(assert (=> b!3210323 m!3478877))

(assert (=> b!3210323 m!3478861))

(assert (=> b!3210323 m!3478873))

(declare-fun m!3478903 () Bool)

(assert (=> b!3210323 m!3478903))

(assert (=> b!3210323 m!3478897))

(assert (=> b!3210323 m!3478893))

(declare-fun m!3478905 () Bool)

(assert (=> b!3210323 m!3478905))

(assert (=> b!3210323 m!3478877))

(assert (=> b!3210323 m!3478851))

(assert (=> b!3210323 m!3478869))

(assert (=> b!3210323 m!3478847))

(declare-fun m!3478907 () Bool)

(assert (=> b!3210322 m!3478907))

(declare-fun m!3478909 () Bool)

(assert (=> b!3210322 m!3478909))

(declare-fun m!3478911 () Bool)

(assert (=> b!3210320 m!3478911))

(declare-fun m!3478913 () Bool)

(assert (=> b!3210320 m!3478913))

(assert (=> d!879045 d!879427))

(declare-fun d!879461 () Bool)

(assert (=> d!879461 (= (list!12865 (BalanceConc!21261 Empty!10823)) (list!12868 (c!538931 (BalanceConc!21261 Empty!10823))))))

(declare-fun bs!541608 () Bool)

(assert (= bs!541608 d!879461))

(declare-fun m!3478915 () Bool)

(assert (=> bs!541608 m!3478915))

(assert (=> d!878945 d!879461))

(declare-fun d!879463 () Bool)

(declare-fun list!12871 (Conc!10824) List!36303)

(assert (=> d!879463 (= (dropList!1078 lt!1084674 0) (drop!1861 (list!12871 (c!538932 lt!1084674)) 0))))

(declare-fun bs!541609 () Bool)

(assert (= bs!541609 d!879463))

(declare-fun m!3478917 () Bool)

(assert (=> bs!541609 m!3478917))

(assert (=> bs!541609 m!3478917))

(declare-fun m!3478919 () Bool)

(assert (=> bs!541609 m!3478919))

(assert (=> d!878945 d!879463))

(declare-fun d!879465 () Bool)

(declare-fun lt!1085341 () Int)

(assert (=> d!879465 (= lt!1085341 (size!27264 (list!12869 lt!1084674)))))

(assert (=> d!879465 (= lt!1085341 (size!27265 (c!538932 lt!1084674)))))

(assert (=> d!879465 (= (size!27261 lt!1084674) lt!1085341)))

(declare-fun bs!541610 () Bool)

(assert (= bs!541610 d!879465))

(assert (=> bs!541610 m!3476999))

(assert (=> bs!541610 m!3476999))

(declare-fun m!3478921 () Bool)

(assert (=> bs!541610 m!3478921))

(declare-fun m!3478923 () Bool)

(assert (=> bs!541610 m!3478923))

(assert (=> d!878945 d!879465))

(declare-fun d!879467 () Bool)

(assert (=> d!879467 (= (list!12865 lt!1084756) (list!12868 (c!538931 lt!1084756)))))

(declare-fun bs!541611 () Bool)

(assert (= bs!541611 d!879467))

(declare-fun m!3478925 () Bool)

(assert (=> bs!541611 m!3478925))

(assert (=> d!878945 d!879467))

(declare-fun d!879469 () Bool)

(declare-fun lt!1085354 () List!36301)

(assert (=> d!879469 (= lt!1085354 (++!8680 (list!12865 (BalanceConc!21261 Empty!10823)) (printList!1363 thiss!18206 (dropList!1078 lt!1084674 0))))))

(declare-fun e!2001825 () List!36301)

(assert (=> d!879469 (= lt!1085354 e!2001825)))

(declare-fun c!539178 () Bool)

(assert (=> d!879469 (= c!539178 ((_ is Cons!36179) (dropList!1078 lt!1084674 0)))))

(assert (=> d!879469 (= (printListTailRec!561 thiss!18206 (dropList!1078 lt!1084674 0) (list!12865 (BalanceConc!21261 Empty!10823))) lt!1085354)))

(declare-fun b!3210330 () Bool)

(assert (=> b!3210330 (= e!2001825 (printListTailRec!561 thiss!18206 (t!238514 (dropList!1078 lt!1084674 0)) (++!8680 (list!12865 (BalanceConc!21261 Empty!10823)) (list!12865 (charsOf!3240 (h!41599 (dropList!1078 lt!1084674 0)))))))))

(declare-fun lt!1085355 () List!36301)

(assert (=> b!3210330 (= lt!1085355 (list!12865 (charsOf!3240 (h!41599 (dropList!1078 lt!1084674 0)))))))

(declare-fun lt!1085352 () List!36301)

(assert (=> b!3210330 (= lt!1085352 (printList!1363 thiss!18206 (t!238514 (dropList!1078 lt!1084674 0))))))

(declare-fun lt!1085356 () Unit!50642)

(assert (=> b!3210330 (= lt!1085356 (lemmaConcatAssociativity!1746 (list!12865 (BalanceConc!21261 Empty!10823)) lt!1085355 lt!1085352))))

(assert (=> b!3210330 (= (++!8680 (++!8680 (list!12865 (BalanceConc!21261 Empty!10823)) lt!1085355) lt!1085352) (++!8680 (list!12865 (BalanceConc!21261 Empty!10823)) (++!8680 lt!1085355 lt!1085352)))))

(declare-fun lt!1085353 () Unit!50642)

(assert (=> b!3210330 (= lt!1085353 lt!1085356)))

(declare-fun b!3210331 () Bool)

(assert (=> b!3210331 (= e!2001825 (list!12865 (BalanceConc!21261 Empty!10823)))))

(assert (= (and d!879469 c!539178) b!3210330))

(assert (= (and d!879469 (not c!539178)) b!3210331))

(assert (=> d!879469 m!3476991))

(declare-fun m!3478927 () Bool)

(assert (=> d!879469 m!3478927))

(assert (=> d!879469 m!3476993))

(assert (=> d!879469 m!3478927))

(declare-fun m!3478929 () Bool)

(assert (=> d!879469 m!3478929))

(declare-fun m!3478931 () Bool)

(assert (=> b!3210330 m!3478931))

(assert (=> b!3210330 m!3476993))

(declare-fun m!3478933 () Bool)

(assert (=> b!3210330 m!3478933))

(declare-fun m!3478935 () Bool)

(assert (=> b!3210330 m!3478935))

(assert (=> b!3210330 m!3476993))

(declare-fun m!3478937 () Bool)

(assert (=> b!3210330 m!3478937))

(assert (=> b!3210330 m!3476993))

(declare-fun m!3478939 () Bool)

(assert (=> b!3210330 m!3478939))

(assert (=> b!3210330 m!3478937))

(declare-fun m!3478941 () Bool)

(assert (=> b!3210330 m!3478941))

(declare-fun m!3478943 () Bool)

(assert (=> b!3210330 m!3478943))

(declare-fun m!3478945 () Bool)

(assert (=> b!3210330 m!3478945))

(declare-fun m!3478947 () Bool)

(assert (=> b!3210330 m!3478947))

(assert (=> b!3210330 m!3478933))

(assert (=> b!3210330 m!3476993))

(declare-fun m!3478949 () Bool)

(assert (=> b!3210330 m!3478949))

(assert (=> b!3210330 m!3478945))

(assert (=> b!3210330 m!3478931))

(assert (=> b!3210330 m!3478949))

(assert (=> d!878945 d!879469))

(declare-fun d!879471 () Bool)

(declare-fun c!539181 () Bool)

(assert (=> d!879471 (= c!539181 ((_ is Nil!36177) lt!1085069))))

(declare-fun e!2001828 () (InoxSet C!20152))

(assert (=> d!879471 (= (content!4888 lt!1085069) e!2001828)))

(declare-fun b!3210336 () Bool)

(assert (=> b!3210336 (= e!2001828 ((as const (Array C!20152 Bool)) false))))

(declare-fun b!3210337 () Bool)

(assert (=> b!3210337 (= e!2001828 ((_ map or) (store ((as const (Array C!20152 Bool)) false) (h!41597 lt!1085069) true) (content!4888 (t!238512 lt!1085069))))))

(assert (= (and d!879471 c!539181) b!3210336))

(assert (= (and d!879471 (not c!539181)) b!3210337))

(declare-fun m!3478951 () Bool)

(assert (=> b!3210337 m!3478951))

(declare-fun m!3478953 () Bool)

(assert (=> b!3210337 m!3478953))

(assert (=> d!879297 d!879471))

(declare-fun d!879473 () Bool)

(declare-fun c!539182 () Bool)

(assert (=> d!879473 (= c!539182 ((_ is Nil!36177) lt!1084696))))

(declare-fun e!2001829 () (InoxSet C!20152))

(assert (=> d!879473 (= (content!4888 lt!1084696) e!2001829)))

(declare-fun b!3210338 () Bool)

(assert (=> b!3210338 (= e!2001829 ((as const (Array C!20152 Bool)) false))))

(declare-fun b!3210339 () Bool)

(assert (=> b!3210339 (= e!2001829 ((_ map or) (store ((as const (Array C!20152 Bool)) false) (h!41597 lt!1084696) true) (content!4888 (t!238512 lt!1084696))))))

(assert (= (and d!879473 c!539182) b!3210338))

(assert (= (and d!879473 (not c!539182)) b!3210339))

(declare-fun m!3478955 () Bool)

(assert (=> b!3210339 m!3478955))

(declare-fun m!3478957 () Bool)

(assert (=> b!3210339 m!3478957))

(assert (=> d!879297 d!879473))

(declare-fun d!879475 () Bool)

(declare-fun c!539183 () Bool)

(assert (=> d!879475 (= c!539183 ((_ is Nil!36177) lt!1084690))))

(declare-fun e!2001830 () (InoxSet C!20152))

(assert (=> d!879475 (= (content!4888 lt!1084690) e!2001830)))

(declare-fun b!3210340 () Bool)

(assert (=> b!3210340 (= e!2001830 ((as const (Array C!20152 Bool)) false))))

(declare-fun b!3210341 () Bool)

(assert (=> b!3210341 (= e!2001830 ((_ map or) (store ((as const (Array C!20152 Bool)) false) (h!41597 lt!1084690) true) (content!4888 (t!238512 lt!1084690))))))

(assert (= (and d!879475 c!539183) b!3210340))

(assert (= (and d!879475 (not c!539183)) b!3210341))

(declare-fun m!3478959 () Bool)

(assert (=> b!3210341 m!3478959))

(declare-fun m!3478961 () Bool)

(assert (=> b!3210341 m!3478961))

(assert (=> d!879297 d!879475))

(declare-fun d!879477 () Bool)

(assert (=> d!879477 true))

(declare-fun order!18479 () Int)

(declare-fun lambda!117495 () Int)

(declare-fun dynLambda!14616 (Int Int) Int)

(assert (=> d!879477 (< (dynLambda!14609 order!18477 (toChars!7167 (transformation!5224 (h!41598 rules!2135)))) (dynLambda!14616 order!18479 lambda!117495))))

(assert (=> d!879477 true))

(assert (=> d!879477 (< (dynLambda!14607 order!18473 (toValue!7308 (transformation!5224 (h!41598 rules!2135)))) (dynLambda!14616 order!18479 lambda!117495))))

(declare-fun Forall!1266 (Int) Bool)

(assert (=> d!879477 (= (semiInverseModEq!2155 (toChars!7167 (transformation!5224 (h!41598 rules!2135))) (toValue!7308 (transformation!5224 (h!41598 rules!2135)))) (Forall!1266 lambda!117495))))

(declare-fun bs!541612 () Bool)

(assert (= bs!541612 d!879477))

(declare-fun m!3478963 () Bool)

(assert (=> bs!541612 m!3478963))

(assert (=> d!878975 d!879477))

(declare-fun d!879479 () Bool)

(assert (=> d!879479 true))

(declare-fun lt!1085359 () Bool)

(assert (=> d!879479 (= lt!1085359 (rulesValidInductive!1776 thiss!18206 rules!2135))))

(declare-fun lambda!117498 () Int)

(declare-fun forall!7393 (List!36302 Int) Bool)

(assert (=> d!879479 (= lt!1085359 (forall!7393 rules!2135 lambda!117498))))

(assert (=> d!879479 (= (rulesValid!1915 thiss!18206 rules!2135) lt!1085359)))

(declare-fun bs!541613 () Bool)

(assert (= bs!541613 d!879479))

(assert (=> bs!541613 m!3477747))

(declare-fun m!3478965 () Bool)

(assert (=> bs!541613 m!3478965))

(assert (=> d!879257 d!879479))

(declare-fun bs!541614 () Bool)

(declare-fun d!879481 () Bool)

(assert (= bs!541614 (and d!879481 d!879477)))

(declare-fun lambda!117499 () Int)

(assert (=> bs!541614 (= (and (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toChars!7167 (transformation!5224 (h!41598 rules!2135)))) (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toValue!7308 (transformation!5224 (h!41598 rules!2135))))) (= lambda!117499 lambda!117495))))

(assert (=> d!879481 true))

(assert (=> d!879481 (< (dynLambda!14609 order!18477 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) (dynLambda!14616 order!18479 lambda!117499))))

(assert (=> d!879481 true))

(assert (=> d!879481 (< (dynLambda!14607 order!18473 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) (dynLambda!14616 order!18479 lambda!117499))))

(assert (=> d!879481 (= (semiInverseModEq!2155 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) (Forall!1266 lambda!117499))))

(declare-fun bs!541615 () Bool)

(assert (= bs!541615 d!879481))

(declare-fun m!3478967 () Bool)

(assert (=> bs!541615 m!3478967))

(assert (=> d!879283 d!879481))

(assert (=> d!879013 d!879071))

(assert (=> d!879013 d!879131))

(declare-fun d!879483 () Bool)

(assert (=> d!879483 (= (maxPrefixOneRule!1592 thiss!18206 (rule!7664 (h!41599 (t!238514 tokens!494))) lt!1084664) (Some!7146 (tuple2!35575 (Token!9815 (apply!8197 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) (seqFromList!3519 lt!1084664)) (rule!7664 (h!41599 (t!238514 tokens!494))) (size!27260 lt!1084664) lt!1084664) Nil!36177)))))

(assert (=> d!879483 true))

(declare-fun _$59!382 () Unit!50642)

(assert (=> d!879483 (= (choose!18726 thiss!18206 rules!2135 lt!1084664 lt!1084664 Nil!36177 (rule!7664 (h!41599 (t!238514 tokens!494)))) _$59!382)))

(declare-fun bs!541619 () Bool)

(assert (= bs!541619 d!879483))

(assert (=> bs!541619 m!3476775))

(assert (=> bs!541619 m!3476773))

(assert (=> bs!541619 m!3476773))

(assert (=> bs!541619 m!3476793))

(assert (=> bs!541619 m!3476801))

(assert (=> d!879013 d!879483))

(assert (=> d!879013 d!879173))

(assert (=> d!879013 d!879053))

(assert (=> d!879013 d!878957))

(declare-fun d!879491 () Bool)

(assert (=> d!879491 (= (isEmpty!20266 (tail!5212 lt!1084664)) ((_ is Nil!36177) (tail!5212 lt!1084664)))))

(assert (=> b!3210006 d!879491))

(declare-fun d!879493 () Bool)

(assert (=> d!879493 (= (tail!5212 lt!1084664) (t!238512 lt!1084664))))

(assert (=> b!3210006 d!879493))

(declare-fun d!879495 () Bool)

(declare-fun lt!1085361 () Bool)

(assert (=> d!879495 (= lt!1085361 (select (content!4890 rules!2135) (get!11519 lt!1085009)))))

(declare-fun e!2001832 () Bool)

(assert (=> d!879495 (= lt!1085361 e!2001832)))

(declare-fun res!1306855 () Bool)

(assert (=> d!879495 (=> (not res!1306855) (not e!2001832))))

(assert (=> d!879495 (= res!1306855 ((_ is Cons!36178) rules!2135))))

(assert (=> d!879495 (= (contains!6462 rules!2135 (get!11519 lt!1085009)) lt!1085361)))

(declare-fun b!3210348 () Bool)

(declare-fun e!2001831 () Bool)

(assert (=> b!3210348 (= e!2001832 e!2001831)))

(declare-fun res!1306854 () Bool)

(assert (=> b!3210348 (=> res!1306854 e!2001831)))

(assert (=> b!3210348 (= res!1306854 (= (h!41598 rules!2135) (get!11519 lt!1085009)))))

(declare-fun b!3210349 () Bool)

(assert (=> b!3210349 (= e!2001831 (contains!6462 (t!238513 rules!2135) (get!11519 lt!1085009)))))

(assert (= (and d!879495 res!1306855) b!3210348))

(assert (= (and b!3210348 (not res!1306854)) b!3210349))

(assert (=> d!879495 m!3478587))

(assert (=> d!879495 m!3478051))

(declare-fun m!3478975 () Bool)

(assert (=> d!879495 m!3478975))

(assert (=> b!3210349 m!3478051))

(declare-fun m!3478977 () Bool)

(assert (=> b!3210349 m!3478977))

(assert (=> b!3209848 d!879495))

(declare-fun d!879497 () Bool)

(assert (=> d!879497 (= (get!11519 lt!1085009) (v!35697 lt!1085009))))

(assert (=> b!3209848 d!879497))

(declare-fun d!879499 () Bool)

(declare-fun lt!1085362 () Int)

(assert (=> d!879499 (>= lt!1085362 0)))

(declare-fun e!2001833 () Int)

(assert (=> d!879499 (= lt!1085362 e!2001833)))

(declare-fun c!539184 () Bool)

(assert (=> d!879499 (= c!539184 ((_ is Nil!36177) lt!1085069))))

(assert (=> d!879499 (= (size!27260 lt!1085069) lt!1085362)))

(declare-fun b!3210350 () Bool)

(assert (=> b!3210350 (= e!2001833 0)))

(declare-fun b!3210351 () Bool)

(assert (=> b!3210351 (= e!2001833 (+ 1 (size!27260 (t!238512 lt!1085069))))))

(assert (= (and d!879499 c!539184) b!3210350))

(assert (= (and d!879499 (not c!539184)) b!3210351))

(declare-fun m!3478979 () Bool)

(assert (=> b!3210351 m!3478979))

(assert (=> b!3210066 d!879499))

(declare-fun d!879501 () Bool)

(declare-fun lt!1085363 () Int)

(assert (=> d!879501 (>= lt!1085363 0)))

(declare-fun e!2001834 () Int)

(assert (=> d!879501 (= lt!1085363 e!2001834)))

(declare-fun c!539185 () Bool)

(assert (=> d!879501 (= c!539185 ((_ is Nil!36177) lt!1084696))))

(assert (=> d!879501 (= (size!27260 lt!1084696) lt!1085363)))

(declare-fun b!3210352 () Bool)

(assert (=> b!3210352 (= e!2001834 0)))

(declare-fun b!3210353 () Bool)

(assert (=> b!3210353 (= e!2001834 (+ 1 (size!27260 (t!238512 lt!1084696))))))

(assert (= (and d!879501 c!539185) b!3210352))

(assert (= (and d!879501 (not c!539185)) b!3210353))

(declare-fun m!3478981 () Bool)

(assert (=> b!3210353 m!3478981))

(assert (=> b!3210066 d!879501))

(declare-fun d!879503 () Bool)

(declare-fun lt!1085364 () Int)

(assert (=> d!879503 (>= lt!1085364 0)))

(declare-fun e!2001835 () Int)

(assert (=> d!879503 (= lt!1085364 e!2001835)))

(declare-fun c!539186 () Bool)

(assert (=> d!879503 (= c!539186 ((_ is Nil!36177) lt!1084690))))

(assert (=> d!879503 (= (size!27260 lt!1084690) lt!1085364)))

(declare-fun b!3210354 () Bool)

(assert (=> b!3210354 (= e!2001835 0)))

(declare-fun b!3210355 () Bool)

(assert (=> b!3210355 (= e!2001835 (+ 1 (size!27260 (t!238512 lt!1084690))))))

(assert (= (and d!879503 c!539186) b!3210354))

(assert (= (and d!879503 (not c!539186)) b!3210355))

(declare-fun m!3478983 () Bool)

(assert (=> b!3210355 m!3478983))

(assert (=> b!3210066 d!879503))

(declare-fun d!879505 () Bool)

(assert (=> d!879505 (= (isEmpty!20270 lt!1084691) (not ((_ is Some!7147) lt!1084691)))))

(assert (=> d!879103 d!879505))

(declare-fun d!879507 () Bool)

(assert (=> d!879507 (= (get!11519 lt!1084936) (v!35697 lt!1084936))))

(assert (=> b!3209754 d!879507))

(declare-fun b!3210356 () Bool)

(declare-fun e!2001836 () List!36301)

(assert (=> b!3210356 (= e!2001836 (_2!20921 (get!11520 lt!1084957)))))

(declare-fun b!3210359 () Bool)

(declare-fun e!2001837 () Bool)

(declare-fun lt!1085365 () List!36301)

(assert (=> b!3210359 (= e!2001837 (or (not (= (_2!20921 (get!11520 lt!1084957)) Nil!36177)) (= lt!1085365 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084957)))))))))

(declare-fun b!3210358 () Bool)

(declare-fun res!1306856 () Bool)

(assert (=> b!3210358 (=> (not res!1306856) (not e!2001837))))

(assert (=> b!3210358 (= res!1306856 (= (size!27260 lt!1085365) (+ (size!27260 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084957))))) (size!27260 (_2!20921 (get!11520 lt!1084957))))))))

(declare-fun d!879509 () Bool)

(assert (=> d!879509 e!2001837))

(declare-fun res!1306857 () Bool)

(assert (=> d!879509 (=> (not res!1306857) (not e!2001837))))

(assert (=> d!879509 (= res!1306857 (= (content!4888 lt!1085365) ((_ map or) (content!4888 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084957))))) (content!4888 (_2!20921 (get!11520 lt!1084957))))))))

(assert (=> d!879509 (= lt!1085365 e!2001836)))

(declare-fun c!539187 () Bool)

(assert (=> d!879509 (= c!539187 ((_ is Nil!36177) (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084957))))))))

(assert (=> d!879509 (= (++!8680 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084957)))) (_2!20921 (get!11520 lt!1084957))) lt!1085365)))

(declare-fun b!3210357 () Bool)

(assert (=> b!3210357 (= e!2001836 (Cons!36177 (h!41597 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084957))))) (++!8680 (t!238512 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084957))))) (_2!20921 (get!11520 lt!1084957)))))))

(assert (= (and d!879509 c!539187) b!3210356))

(assert (= (and d!879509 (not c!539187)) b!3210357))

(assert (= (and d!879509 res!1306857) b!3210358))

(assert (= (and b!3210358 res!1306856) b!3210359))

(declare-fun m!3478985 () Bool)

(assert (=> b!3210358 m!3478985))

(assert (=> b!3210358 m!3477833))

(declare-fun m!3478987 () Bool)

(assert (=> b!3210358 m!3478987))

(assert (=> b!3210358 m!3477873))

(declare-fun m!3478989 () Bool)

(assert (=> d!879509 m!3478989))

(assert (=> d!879509 m!3477833))

(declare-fun m!3478991 () Bool)

(assert (=> d!879509 m!3478991))

(declare-fun m!3478993 () Bool)

(assert (=> d!879509 m!3478993))

(declare-fun m!3478995 () Bool)

(assert (=> b!3210357 m!3478995))

(assert (=> b!3209788 d!879509))

(assert (=> b!3209788 d!879383))

(assert (=> b!3209788 d!879385))

(assert (=> b!3209788 d!879387))

(declare-fun d!879511 () Bool)

(declare-fun e!2001838 () Bool)

(assert (=> d!879511 e!2001838))

(declare-fun res!1306859 () Bool)

(assert (=> d!879511 (=> (not res!1306859) (not e!2001838))))

(declare-fun e!2001839 () Bool)

(assert (=> d!879511 (= res!1306859 e!2001839)))

(declare-fun c!539188 () Bool)

(declare-fun lt!1085366 () tuple2!35576)

(assert (=> d!879511 (= c!539188 (> (size!27261 (_1!20922 lt!1085366)) 0))))

(assert (=> d!879511 (= lt!1085366 (lexTailRecV2!933 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 (t!238514 tokens!494)))) (BalanceConc!21261 Empty!10823) (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 (t!238514 tokens!494)))) (BalanceConc!21263 Empty!10824)))))

(assert (=> d!879511 (= (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 (t!238514 tokens!494))))) lt!1085366)))

(declare-fun b!3210360 () Bool)

(declare-fun e!2001840 () Bool)

(assert (=> b!3210360 (= e!2001840 (not (isEmpty!20261 (_1!20922 lt!1085366))))))

(declare-fun b!3210361 () Bool)

(declare-fun res!1306860 () Bool)

(assert (=> b!3210361 (=> (not res!1306860) (not e!2001838))))

(assert (=> b!3210361 (= res!1306860 (= (list!12869 (_1!20922 lt!1085366)) (_1!20924 (lexList!1313 thiss!18206 rules!2135 (list!12865 (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 (t!238514 tokens!494)))))))))))

(declare-fun b!3210362 () Bool)

(assert (=> b!3210362 (= e!2001839 e!2001840)))

(declare-fun res!1306858 () Bool)

(assert (=> b!3210362 (= res!1306858 (< (size!27263 (_2!20922 lt!1085366)) (size!27263 (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 (t!238514 tokens!494)))))))))

(assert (=> b!3210362 (=> (not res!1306858) (not e!2001840))))

(declare-fun b!3210363 () Bool)

(assert (=> b!3210363 (= e!2001838 (= (list!12865 (_2!20922 lt!1085366)) (_2!20924 (lexList!1313 thiss!18206 rules!2135 (list!12865 (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 (t!238514 tokens!494)))))))))))

(declare-fun b!3210364 () Bool)

(assert (=> b!3210364 (= e!2001839 (= (_2!20922 lt!1085366) (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 (t!238514 tokens!494))))))))

(assert (= (and d!879511 c!539188) b!3210362))

(assert (= (and d!879511 (not c!539188)) b!3210364))

(assert (= (and b!3210362 res!1306858) b!3210360))

(assert (= (and d!879511 res!1306859) b!3210361))

(assert (= (and b!3210361 res!1306860) b!3210363))

(declare-fun m!3478997 () Bool)

(assert (=> b!3210362 m!3478997))

(assert (=> b!3210362 m!3477677))

(declare-fun m!3478999 () Bool)

(assert (=> b!3210362 m!3478999))

(declare-fun m!3479001 () Bool)

(assert (=> b!3210360 m!3479001))

(declare-fun m!3479003 () Bool)

(assert (=> b!3210361 m!3479003))

(assert (=> b!3210361 m!3477677))

(declare-fun m!3479005 () Bool)

(assert (=> b!3210361 m!3479005))

(assert (=> b!3210361 m!3479005))

(declare-fun m!3479007 () Bool)

(assert (=> b!3210361 m!3479007))

(declare-fun m!3479009 () Bool)

(assert (=> b!3210363 m!3479009))

(assert (=> b!3210363 m!3477677))

(assert (=> b!3210363 m!3479005))

(assert (=> b!3210363 m!3479005))

(assert (=> b!3210363 m!3479007))

(declare-fun m!3479011 () Bool)

(assert (=> d!879511 m!3479011))

(assert (=> d!879511 m!3477677))

(assert (=> d!879511 m!3477677))

(declare-fun m!3479013 () Bool)

(assert (=> d!879511 m!3479013))

(assert (=> d!879121 d!879511))

(declare-fun d!879513 () Bool)

(declare-fun lt!1085367 () BalanceConc!21260)

(assert (=> d!879513 (= (list!12865 lt!1085367) (printList!1363 thiss!18206 (list!12869 (singletonSeq!2320 (h!41599 (t!238514 tokens!494))))))))

(assert (=> d!879513 (= lt!1085367 (printTailRec!1310 thiss!18206 (singletonSeq!2320 (h!41599 (t!238514 tokens!494))) 0 (BalanceConc!21261 Empty!10823)))))

(assert (=> d!879513 (= (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 (t!238514 tokens!494)))) lt!1085367)))

(declare-fun bs!541620 () Bool)

(assert (= bs!541620 d!879513))

(declare-fun m!3479015 () Bool)

(assert (=> bs!541620 m!3479015))

(assert (=> bs!541620 m!3476845))

(assert (=> bs!541620 m!3477679))

(assert (=> bs!541620 m!3477679))

(declare-fun m!3479017 () Bool)

(assert (=> bs!541620 m!3479017))

(assert (=> bs!541620 m!3476845))

(declare-fun m!3479019 () Bool)

(assert (=> bs!541620 m!3479019))

(assert (=> d!879121 d!879513))

(declare-fun d!879515 () Bool)

(assert (=> d!879515 (= (list!12869 (_1!20922 (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 (t!238514 tokens!494))))))) (list!12871 (c!538932 (_1!20922 (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 (t!238514 tokens!494)))))))))))

(declare-fun bs!541621 () Bool)

(assert (= bs!541621 d!879515))

(declare-fun m!3479021 () Bool)

(assert (=> bs!541621 m!3479021))

(assert (=> d!879121 d!879515))

(assert (=> d!879121 d!879039))

(declare-fun d!879517 () Bool)

(declare-fun lt!1085368 () Int)

(assert (=> d!879517 (= lt!1085368 (size!27264 (list!12869 (_1!20922 lt!1084907))))))

(assert (=> d!879517 (= lt!1085368 (size!27265 (c!538932 (_1!20922 lt!1084907))))))

(assert (=> d!879517 (= (size!27261 (_1!20922 lt!1084907)) lt!1085368)))

(declare-fun bs!541622 () Bool)

(assert (= bs!541622 d!879517))

(declare-fun m!3479023 () Bool)

(assert (=> bs!541622 m!3479023))

(assert (=> bs!541622 m!3479023))

(declare-fun m!3479025 () Bool)

(assert (=> bs!541622 m!3479025))

(declare-fun m!3479027 () Bool)

(assert (=> bs!541622 m!3479027))

(assert (=> d!879121 d!879517))

(assert (=> d!879121 d!878957))

(declare-fun d!879519 () Bool)

(assert (=> d!879519 (= (list!12869 (singletonSeq!2320 (h!41599 (t!238514 tokens!494)))) (list!12871 (c!538932 (singletonSeq!2320 (h!41599 (t!238514 tokens!494))))))))

(declare-fun bs!541623 () Bool)

(assert (= bs!541623 d!879519))

(declare-fun m!3479029 () Bool)

(assert (=> bs!541623 m!3479029))

(assert (=> d!879121 d!879519))

(declare-fun b!3210365 () Bool)

(declare-fun e!2001841 () List!36301)

(assert (=> b!3210365 (= e!2001841 lt!1084690)))

(declare-fun lt!1085369 () List!36301)

(declare-fun e!2001842 () Bool)

(declare-fun b!3210368 () Bool)

(assert (=> b!3210368 (= e!2001842 (or (not (= lt!1084690 Nil!36177)) (= lt!1085369 (t!238512 (++!8680 lt!1084683 lt!1084696)))))))

(declare-fun b!3210367 () Bool)

(declare-fun res!1306861 () Bool)

(assert (=> b!3210367 (=> (not res!1306861) (not e!2001842))))

(assert (=> b!3210367 (= res!1306861 (= (size!27260 lt!1085369) (+ (size!27260 (t!238512 (++!8680 lt!1084683 lt!1084696))) (size!27260 lt!1084690))))))

(declare-fun d!879521 () Bool)

(assert (=> d!879521 e!2001842))

(declare-fun res!1306862 () Bool)

(assert (=> d!879521 (=> (not res!1306862) (not e!2001842))))

(assert (=> d!879521 (= res!1306862 (= (content!4888 lt!1085369) ((_ map or) (content!4888 (t!238512 (++!8680 lt!1084683 lt!1084696))) (content!4888 lt!1084690))))))

(assert (=> d!879521 (= lt!1085369 e!2001841)))

(declare-fun c!539189 () Bool)

(assert (=> d!879521 (= c!539189 ((_ is Nil!36177) (t!238512 (++!8680 lt!1084683 lt!1084696))))))

(assert (=> d!879521 (= (++!8680 (t!238512 (++!8680 lt!1084683 lt!1084696)) lt!1084690) lt!1085369)))

(declare-fun b!3210366 () Bool)

(assert (=> b!3210366 (= e!2001841 (Cons!36177 (h!41597 (t!238512 (++!8680 lt!1084683 lt!1084696))) (++!8680 (t!238512 (t!238512 (++!8680 lt!1084683 lt!1084696))) lt!1084690)))))

(assert (= (and d!879521 c!539189) b!3210365))

(assert (= (and d!879521 (not c!539189)) b!3210366))

(assert (= (and d!879521 res!1306862) b!3210367))

(assert (= (and b!3210367 res!1306861) b!3210368))

(declare-fun m!3479031 () Bool)

(assert (=> b!3210367 m!3479031))

(declare-fun m!3479033 () Bool)

(assert (=> b!3210367 m!3479033))

(assert (=> b!3210367 m!3478245))

(declare-fun m!3479035 () Bool)

(assert (=> d!879521 m!3479035))

(declare-fun m!3479037 () Bool)

(assert (=> d!879521 m!3479037))

(assert (=> d!879521 m!3478251))

(declare-fun m!3479039 () Bool)

(assert (=> b!3210366 m!3479039))

(assert (=> b!3209993 d!879521))

(declare-fun d!879523 () Bool)

(declare-fun lt!1085370 () Token!9814)

(assert (=> d!879523 (= lt!1085370 (apply!8200 (list!12869 (_1!20922 lt!1084907)) 0))))

(assert (=> d!879523 (= lt!1085370 (apply!8202 (c!538932 (_1!20922 lt!1084907)) 0))))

(declare-fun e!2001843 () Bool)

(assert (=> d!879523 e!2001843))

(declare-fun res!1306863 () Bool)

(assert (=> d!879523 (=> (not res!1306863) (not e!2001843))))

(assert (=> d!879523 (= res!1306863 (<= 0 0))))

(assert (=> d!879523 (= (apply!8198 (_1!20922 lt!1084907) 0) lt!1085370)))

(declare-fun b!3210369 () Bool)

(assert (=> b!3210369 (= e!2001843 (< 0 (size!27261 (_1!20922 lt!1084907))))))

(assert (= (and d!879523 res!1306863) b!3210369))

(assert (=> d!879523 m!3479023))

(assert (=> d!879523 m!3479023))

(declare-fun m!3479041 () Bool)

(assert (=> d!879523 m!3479041))

(declare-fun m!3479043 () Bool)

(assert (=> d!879523 m!3479043))

(assert (=> b!3210369 m!3477681))

(assert (=> b!3209724 d!879523))

(declare-fun d!879525 () Bool)

(declare-fun lt!1085371 () Token!9814)

(assert (=> d!879525 (= lt!1085371 (apply!8200 (list!12869 (_1!20922 lt!1085064)) 0))))

(assert (=> d!879525 (= lt!1085371 (apply!8202 (c!538932 (_1!20922 lt!1085064)) 0))))

(declare-fun e!2001844 () Bool)

(assert (=> d!879525 e!2001844))

(declare-fun res!1306864 () Bool)

(assert (=> d!879525 (=> (not res!1306864) (not e!2001844))))

(assert (=> d!879525 (= res!1306864 (<= 0 0))))

(assert (=> d!879525 (= (apply!8198 (_1!20922 lt!1085064) 0) lt!1085371)))

(declare-fun b!3210370 () Bool)

(assert (=> b!3210370 (= e!2001844 (< 0 (size!27261 (_1!20922 lt!1085064))))))

(assert (= (and d!879525 res!1306864) b!3210370))

(declare-fun m!3479045 () Bool)

(assert (=> d!879525 m!3479045))

(assert (=> d!879525 m!3479045))

(declare-fun m!3479047 () Bool)

(assert (=> d!879525 m!3479047))

(declare-fun m!3479049 () Bool)

(assert (=> d!879525 m!3479049))

(assert (=> b!3210370 m!3478357))

(assert (=> b!3210047 d!879525))

(declare-fun d!879527 () Bool)

(assert (=> d!879527 (= (isEmpty!20266 lt!1084696) ((_ is Nil!36177) lt!1084696))))

(assert (=> d!878929 d!879527))

(declare-fun b!3210371 () Bool)

(declare-fun e!2001850 () Bool)

(declare-fun call!232263 () Bool)

(assert (=> b!3210371 (= e!2001850 call!232263)))

(declare-fun b!3210372 () Bool)

(declare-fun e!2001851 () Bool)

(declare-fun e!2001849 () Bool)

(assert (=> b!3210372 (= e!2001851 e!2001849)))

(declare-fun res!1306869 () Bool)

(assert (=> b!3210372 (= res!1306869 (not (nullable!3398 (reg!10312 (regex!5224 (rule!7664 separatorToken!241))))))))

(assert (=> b!3210372 (=> (not res!1306869) (not e!2001849))))

(declare-fun b!3210373 () Bool)

(declare-fun e!2001848 () Bool)

(assert (=> b!3210373 (= e!2001851 e!2001848)))

(declare-fun c!539190 () Bool)

(assert (=> b!3210373 (= c!539190 ((_ is Union!9983) (regex!5224 (rule!7664 separatorToken!241))))))

(declare-fun b!3210374 () Bool)

(declare-fun call!232262 () Bool)

(assert (=> b!3210374 (= e!2001849 call!232262)))

(declare-fun d!879529 () Bool)

(declare-fun res!1306866 () Bool)

(declare-fun e!2001845 () Bool)

(assert (=> d!879529 (=> res!1306866 e!2001845)))

(assert (=> d!879529 (= res!1306866 ((_ is ElementMatch!9983) (regex!5224 (rule!7664 separatorToken!241))))))

(assert (=> d!879529 (= (validRegex!4552 (regex!5224 (rule!7664 separatorToken!241))) e!2001845)))

(declare-fun c!539191 () Bool)

(declare-fun bm!232257 () Bool)

(assert (=> bm!232257 (= call!232262 (validRegex!4552 (ite c!539191 (reg!10312 (regex!5224 (rule!7664 separatorToken!241))) (ite c!539190 (regOne!20479 (regex!5224 (rule!7664 separatorToken!241))) (regOne!20478 (regex!5224 (rule!7664 separatorToken!241)))))))))

(declare-fun bm!232258 () Bool)

(assert (=> bm!232258 (= call!232263 (validRegex!4552 (ite c!539190 (regTwo!20479 (regex!5224 (rule!7664 separatorToken!241))) (regTwo!20478 (regex!5224 (rule!7664 separatorToken!241))))))))

(declare-fun b!3210375 () Bool)

(declare-fun res!1306867 () Bool)

(declare-fun e!2001847 () Bool)

(assert (=> b!3210375 (=> res!1306867 e!2001847)))

(assert (=> b!3210375 (= res!1306867 (not ((_ is Concat!15437) (regex!5224 (rule!7664 separatorToken!241)))))))

(assert (=> b!3210375 (= e!2001848 e!2001847)))

(declare-fun bm!232259 () Bool)

(declare-fun call!232264 () Bool)

(assert (=> bm!232259 (= call!232264 call!232262)))

(declare-fun b!3210376 () Bool)

(declare-fun res!1306868 () Bool)

(assert (=> b!3210376 (=> (not res!1306868) (not e!2001850))))

(assert (=> b!3210376 (= res!1306868 call!232264)))

(assert (=> b!3210376 (= e!2001848 e!2001850)))

(declare-fun b!3210377 () Bool)

(declare-fun e!2001846 () Bool)

(assert (=> b!3210377 (= e!2001847 e!2001846)))

(declare-fun res!1306865 () Bool)

(assert (=> b!3210377 (=> (not res!1306865) (not e!2001846))))

(assert (=> b!3210377 (= res!1306865 call!232264)))

(declare-fun b!3210378 () Bool)

(assert (=> b!3210378 (= e!2001845 e!2001851)))

(assert (=> b!3210378 (= c!539191 ((_ is Star!9983) (regex!5224 (rule!7664 separatorToken!241))))))

(declare-fun b!3210379 () Bool)

(assert (=> b!3210379 (= e!2001846 call!232263)))

(assert (= (and d!879529 (not res!1306866)) b!3210378))

(assert (= (and b!3210378 c!539191) b!3210372))

(assert (= (and b!3210378 (not c!539191)) b!3210373))

(assert (= (and b!3210372 res!1306869) b!3210374))

(assert (= (and b!3210373 c!539190) b!3210376))

(assert (= (and b!3210373 (not c!539190)) b!3210375))

(assert (= (and b!3210376 res!1306868) b!3210371))

(assert (= (and b!3210375 (not res!1306867)) b!3210377))

(assert (= (and b!3210377 res!1306865) b!3210379))

(assert (= (or b!3210371 b!3210379) bm!232258))

(assert (= (or b!3210376 b!3210377) bm!232259))

(assert (= (or b!3210374 bm!232259) bm!232257))

(declare-fun m!3479051 () Bool)

(assert (=> b!3210372 m!3479051))

(declare-fun m!3479053 () Bool)

(assert (=> bm!232257 m!3479053))

(declare-fun m!3479055 () Bool)

(assert (=> bm!232258 m!3479055))

(assert (=> d!878929 d!879529))

(declare-fun d!879531 () Bool)

(declare-fun nullableFct!968 (Regex!9983) Bool)

(assert (=> d!879531 (= (nullable!3398 (regex!5224 (rule!7664 separatorToken!241))) (nullableFct!968 (regex!5224 (rule!7664 separatorToken!241))))))

(declare-fun bs!541624 () Bool)

(assert (= bs!541624 d!879531))

(declare-fun m!3479057 () Bool)

(assert (=> bs!541624 m!3479057))

(assert (=> b!3209232 d!879531))

(declare-fun d!879533 () Bool)

(assert (=> d!879533 (= (inv!49032 (tag!5750 (h!41598 (t!238513 rules!2135)))) (= (mod (str.len (value!169343 (tag!5750 (h!41598 (t!238513 rules!2135))))) 2) 0))))

(assert (=> b!3210082 d!879533))

(declare-fun d!879535 () Bool)

(declare-fun res!1306870 () Bool)

(declare-fun e!2001852 () Bool)

(assert (=> d!879535 (=> (not res!1306870) (not e!2001852))))

(assert (=> d!879535 (= res!1306870 (semiInverseModEq!2155 (toChars!7167 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toValue!7308 (transformation!5224 (h!41598 (t!238513 rules!2135))))))))

(assert (=> d!879535 (= (inv!49035 (transformation!5224 (h!41598 (t!238513 rules!2135)))) e!2001852)))

(declare-fun b!3210380 () Bool)

(assert (=> b!3210380 (= e!2001852 (equivClasses!2054 (toChars!7167 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toValue!7308 (transformation!5224 (h!41598 (t!238513 rules!2135))))))))

(assert (= (and d!879535 res!1306870) b!3210380))

(declare-fun m!3479059 () Bool)

(assert (=> d!879535 m!3479059))

(declare-fun m!3479061 () Bool)

(assert (=> b!3210380 m!3479061))

(assert (=> b!3210082 d!879535))

(assert (=> b!3209668 d!879407))

(declare-fun b!3210381 () Bool)

(declare-fun res!1306876 () Bool)

(declare-fun e!2001857 () Bool)

(assert (=> b!3210381 (=> res!1306876 e!2001857)))

(assert (=> b!3210381 (= res!1306876 (not (isEmpty!20266 (tail!5212 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084932))))))))))

(declare-fun b!3210382 () Bool)

(declare-fun res!1306872 () Bool)

(declare-fun e!2001858 () Bool)

(assert (=> b!3210382 (=> (not res!1306872) (not e!2001858))))

(assert (=> b!3210382 (= res!1306872 (isEmpty!20266 (tail!5212 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084932)))))))))

(declare-fun b!3210383 () Bool)

(declare-fun e!2001854 () Bool)

(assert (=> b!3210383 (= e!2001854 e!2001857)))

(declare-fun res!1306877 () Bool)

(assert (=> b!3210383 (=> res!1306877 e!2001857)))

(declare-fun call!232265 () Bool)

(assert (=> b!3210383 (= res!1306877 call!232265)))

(declare-fun b!3210384 () Bool)

(declare-fun res!1306875 () Bool)

(declare-fun e!2001859 () Bool)

(assert (=> b!3210384 (=> res!1306875 e!2001859)))

(assert (=> b!3210384 (= res!1306875 (not ((_ is ElementMatch!9983) (regex!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932)))))))))

(declare-fun e!2001853 () Bool)

(assert (=> b!3210384 (= e!2001853 e!2001859)))

(declare-fun b!3210385 () Bool)

(declare-fun e!2001855 () Bool)

(assert (=> b!3210385 (= e!2001855 (matchR!4617 (derivativeStep!2951 (regex!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932)))) (head!7043 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084932)))))) (tail!5212 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084932)))))))))

(declare-fun b!3210386 () Bool)

(assert (=> b!3210386 (= e!2001859 e!2001854)))

(declare-fun res!1306871 () Bool)

(assert (=> b!3210386 (=> (not res!1306871) (not e!2001854))))

(declare-fun lt!1085372 () Bool)

(assert (=> b!3210386 (= res!1306871 (not lt!1085372))))

(declare-fun b!3210387 () Bool)

(declare-fun res!1306873 () Bool)

(assert (=> b!3210387 (=> res!1306873 e!2001859)))

(assert (=> b!3210387 (= res!1306873 e!2001858)))

(declare-fun res!1306878 () Bool)

(assert (=> b!3210387 (=> (not res!1306878) (not e!2001858))))

(assert (=> b!3210387 (= res!1306878 lt!1085372)))

(declare-fun b!3210388 () Bool)

(assert (=> b!3210388 (= e!2001855 (nullable!3398 (regex!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932))))))))

(declare-fun d!879537 () Bool)

(declare-fun e!2001856 () Bool)

(assert (=> d!879537 e!2001856))

(declare-fun c!539193 () Bool)

(assert (=> d!879537 (= c!539193 ((_ is EmptyExpr!9983) (regex!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932))))))))

(assert (=> d!879537 (= lt!1085372 e!2001855)))

(declare-fun c!539194 () Bool)

(assert (=> d!879537 (= c!539194 (isEmpty!20266 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084932))))))))

(assert (=> d!879537 (validRegex!4552 (regex!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932)))))))

(assert (=> d!879537 (= (matchR!4617 (regex!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932)))) (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084932))))) lt!1085372)))

(declare-fun bm!232260 () Bool)

(assert (=> bm!232260 (= call!232265 (isEmpty!20266 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084932))))))))

(declare-fun b!3210389 () Bool)

(assert (=> b!3210389 (= e!2001857 (not (= (head!7043 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084932))))) (c!538930 (regex!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932))))))))))

(declare-fun b!3210390 () Bool)

(assert (=> b!3210390 (= e!2001858 (= (head!7043 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084932))))) (c!538930 (regex!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932)))))))))

(declare-fun b!3210391 () Bool)

(assert (=> b!3210391 (= e!2001853 (not lt!1085372))))

(declare-fun b!3210392 () Bool)

(assert (=> b!3210392 (= e!2001856 (= lt!1085372 call!232265))))

(declare-fun b!3210393 () Bool)

(declare-fun res!1306874 () Bool)

(assert (=> b!3210393 (=> (not res!1306874) (not e!2001858))))

(assert (=> b!3210393 (= res!1306874 (not call!232265))))

(declare-fun b!3210394 () Bool)

(assert (=> b!3210394 (= e!2001856 e!2001853)))

(declare-fun c!539192 () Bool)

(assert (=> b!3210394 (= c!539192 ((_ is EmptyLang!9983) (regex!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932))))))))

(assert (= (and d!879537 c!539194) b!3210388))

(assert (= (and d!879537 (not c!539194)) b!3210385))

(assert (= (and d!879537 c!539193) b!3210392))

(assert (= (and d!879537 (not c!539193)) b!3210394))

(assert (= (and b!3210394 c!539192) b!3210391))

(assert (= (and b!3210394 (not c!539192)) b!3210384))

(assert (= (and b!3210384 (not res!1306875)) b!3210387))

(assert (= (and b!3210387 res!1306878) b!3210393))

(assert (= (and b!3210393 res!1306874) b!3210382))

(assert (= (and b!3210382 res!1306872) b!3210390))

(assert (= (and b!3210387 (not res!1306873)) b!3210386))

(assert (= (and b!3210386 res!1306871) b!3210383))

(assert (= (and b!3210383 (not res!1306877)) b!3210381))

(assert (= (and b!3210381 (not res!1306876)) b!3210389))

(assert (= (or b!3210392 b!3210383 b!3210393) bm!232260))

(declare-fun m!3479063 () Bool)

(assert (=> b!3210388 m!3479063))

(assert (=> b!3210385 m!3477727))

(declare-fun m!3479065 () Bool)

(assert (=> b!3210385 m!3479065))

(assert (=> b!3210385 m!3479065))

(declare-fun m!3479067 () Bool)

(assert (=> b!3210385 m!3479067))

(assert (=> b!3210385 m!3477727))

(declare-fun m!3479069 () Bool)

(assert (=> b!3210385 m!3479069))

(assert (=> b!3210385 m!3479067))

(assert (=> b!3210385 m!3479069))

(declare-fun m!3479071 () Bool)

(assert (=> b!3210385 m!3479071))

(assert (=> b!3210389 m!3477727))

(assert (=> b!3210389 m!3479065))

(assert (=> b!3210382 m!3477727))

(assert (=> b!3210382 m!3479069))

(assert (=> b!3210382 m!3479069))

(declare-fun m!3479073 () Bool)

(assert (=> b!3210382 m!3479073))

(assert (=> d!879537 m!3477727))

(declare-fun m!3479075 () Bool)

(assert (=> d!879537 m!3479075))

(declare-fun m!3479077 () Bool)

(assert (=> d!879537 m!3479077))

(assert (=> bm!232260 m!3477727))

(assert (=> bm!232260 m!3479075))

(assert (=> b!3210390 m!3477727))

(assert (=> b!3210390 m!3479065))

(assert (=> b!3210381 m!3477727))

(assert (=> b!3210381 m!3479069))

(assert (=> b!3210381 m!3479069))

(assert (=> b!3210381 m!3479073))

(assert (=> b!3209751 d!879537))

(assert (=> b!3209751 d!879415))

(assert (=> b!3209751 d!879411))

(assert (=> b!3209751 d!879413))

(declare-fun d!879539 () Bool)

(assert (=> d!879539 (= (head!7043 lt!1084664) (h!41597 lt!1084664))))

(assert (=> b!3210014 d!879539))

(declare-fun d!879541 () Bool)

(assert (=> d!879541 (= (nullable!3398 (regex!5224 lt!1084661)) (nullableFct!968 (regex!5224 lt!1084661)))))

(declare-fun bs!541625 () Bool)

(assert (= bs!541625 d!879541))

(declare-fun m!3479079 () Bool)

(assert (=> bs!541625 m!3479079))

(assert (=> b!3209317 d!879541))

(declare-fun d!879543 () Bool)

(assert (=> d!879543 (= (isEmpty!20266 (list!12865 (_2!20922 lt!1084668))) ((_ is Nil!36177) (list!12865 (_2!20922 lt!1084668))))))

(assert (=> d!878953 d!879543))

(declare-fun d!879545 () Bool)

(assert (=> d!879545 (= (list!12865 (_2!20922 lt!1084668)) (list!12868 (c!538931 (_2!20922 lt!1084668))))))

(declare-fun bs!541626 () Bool)

(assert (= bs!541626 d!879545))

(declare-fun m!3479081 () Bool)

(assert (=> bs!541626 m!3479081))

(assert (=> d!878953 d!879545))

(declare-fun d!879547 () Bool)

(declare-fun lt!1085373 () Bool)

(assert (=> d!879547 (= lt!1085373 (isEmpty!20266 (list!12868 (c!538931 (_2!20922 lt!1084668)))))))

(assert (=> d!879547 (= lt!1085373 (= (size!27268 (c!538931 (_2!20922 lt!1084668))) 0))))

(assert (=> d!879547 (= (isEmpty!20267 (c!538931 (_2!20922 lt!1084668))) lt!1085373)))

(declare-fun bs!541627 () Bool)

(assert (= bs!541627 d!879547))

(assert (=> bs!541627 m!3479081))

(assert (=> bs!541627 m!3479081))

(declare-fun m!3479083 () Bool)

(assert (=> bs!541627 m!3479083))

(declare-fun m!3479085 () Bool)

(assert (=> bs!541627 m!3479085))

(assert (=> d!878953 d!879547))

(assert (=> b!3209669 d!879407))

(declare-fun d!879549 () Bool)

(assert (=> d!879549 (= (apply!8197 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084882)))) (seqFromList!3519 (originalCharacters!5938 (_1!20921 (get!11520 lt!1084882))))) (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084882))))) (seqFromList!3519 (originalCharacters!5938 (_1!20921 (get!11520 lt!1084882))))))))

(declare-fun b_lambda!87977 () Bool)

(assert (=> (not b_lambda!87977) (not d!879549)))

(declare-fun t!238675 () Bool)

(declare-fun tb!157711 () Bool)

(assert (=> (and b!3210083 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084882)))))) t!238675) tb!157711))

(declare-fun result!200076 () Bool)

(assert (=> tb!157711 (= result!200076 (inv!21 (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084882))))) (seqFromList!3519 (originalCharacters!5938 (_1!20921 (get!11520 lt!1084882)))))))))

(declare-fun m!3479087 () Bool)

(assert (=> tb!157711 m!3479087))

(assert (=> d!879549 t!238675))

(declare-fun b_and!213863 () Bool)

(assert (= b_and!213815 (and (=> t!238675 result!200076) b_and!213863)))

(declare-fun t!238677 () Bool)

(declare-fun tb!157713 () Bool)

(assert (=> (and b!3209140 (= (toValue!7308 (transformation!5224 (h!41598 rules!2135))) (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084882)))))) t!238677) tb!157713))

(declare-fun result!200078 () Bool)

(assert (= result!200078 result!200076))

(assert (=> d!879549 t!238677))

(declare-fun b_and!213865 () Bool)

(assert (= b_and!213763 (and (=> t!238677 result!200078) b_and!213865)))

(declare-fun tb!157715 () Bool)

(declare-fun t!238679 () Bool)

(assert (=> (and b!3209120 (= (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241))) (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084882)))))) t!238679) tb!157715))

(declare-fun result!200080 () Bool)

(assert (= result!200080 result!200076))

(assert (=> d!879549 t!238679))

(declare-fun b_and!213867 () Bool)

(assert (= b_and!213761 (and (=> t!238679 result!200080) b_and!213867)))

(declare-fun tb!157717 () Bool)

(declare-fun t!238681 () Bool)

(assert (=> (and b!3210119 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084882)))))) t!238681) tb!157717))

(declare-fun result!200082 () Bool)

(assert (= result!200082 result!200076))

(assert (=> d!879549 t!238681))

(declare-fun b_and!213869 () Bool)

(assert (= b_and!213819 (and (=> t!238681 result!200082) b_and!213869)))

(declare-fun tb!157719 () Bool)

(declare-fun t!238683 () Bool)

(assert (=> (and b!3209139 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084882)))))) t!238683) tb!157719))

(declare-fun result!200084 () Bool)

(assert (= result!200084 result!200076))

(assert (=> d!879549 t!238683))

(declare-fun b_and!213871 () Bool)

(assert (= b_and!213759 (and (=> t!238683 result!200084) b_and!213871)))

(assert (=> d!879549 m!3477583))

(declare-fun m!3479089 () Bool)

(assert (=> d!879549 m!3479089))

(assert (=> b!3209669 d!879549))

(declare-fun d!879551 () Bool)

(assert (=> d!879551 (= (seqFromList!3519 (originalCharacters!5938 (_1!20921 (get!11520 lt!1084882)))) (fromListB!1541 (originalCharacters!5938 (_1!20921 (get!11520 lt!1084882)))))))

(declare-fun bs!541628 () Bool)

(assert (= bs!541628 d!879551))

(declare-fun m!3479091 () Bool)

(assert (=> bs!541628 m!3479091))

(assert (=> b!3209669 d!879551))

(declare-fun d!879553 () Bool)

(declare-fun lt!1085380 () Bool)

(assert (=> d!879553 (= lt!1085380 (select (content!4890 rules!2135) (rule!7664 (_1!20921 (get!11520 lt!1084932)))))))

(declare-fun e!2001868 () Bool)

(assert (=> d!879553 (= lt!1085380 e!2001868)))

(declare-fun res!1306882 () Bool)

(assert (=> d!879553 (=> (not res!1306882) (not e!2001868))))

(assert (=> d!879553 (= res!1306882 ((_ is Cons!36178) rules!2135))))

(assert (=> d!879553 (= (contains!6462 rules!2135 (rule!7664 (_1!20921 (get!11520 lt!1084932)))) lt!1085380)))

(declare-fun b!3210405 () Bool)

(declare-fun e!2001867 () Bool)

(assert (=> b!3210405 (= e!2001868 e!2001867)))

(declare-fun res!1306881 () Bool)

(assert (=> b!3210405 (=> res!1306881 e!2001867)))

(assert (=> b!3210405 (= res!1306881 (= (h!41598 rules!2135) (rule!7664 (_1!20921 (get!11520 lt!1084932)))))))

(declare-fun b!3210406 () Bool)

(assert (=> b!3210406 (= e!2001867 (contains!6462 (t!238513 rules!2135) (rule!7664 (_1!20921 (get!11520 lt!1084932)))))))

(assert (= (and d!879553 res!1306882) b!3210405))

(assert (= (and b!3210405 (not res!1306881)) b!3210406))

(assert (=> d!879553 m!3478587))

(declare-fun m!3479093 () Bool)

(assert (=> d!879553 m!3479093))

(declare-fun m!3479095 () Bool)

(assert (=> b!3210406 m!3479095))

(assert (=> b!3209752 d!879553))

(assert (=> b!3209752 d!879415))

(declare-fun b!3210407 () Bool)

(declare-fun e!2001869 () List!36301)

(declare-fun call!232267 () List!36301)

(assert (=> b!3210407 (= e!2001869 call!232267)))

(declare-fun d!879555 () Bool)

(declare-fun c!539200 () Bool)

(assert (=> d!879555 (= c!539200 (or ((_ is EmptyExpr!9983) (ite c!539026 (regOne!20479 (regex!5224 (rule!7664 separatorToken!241))) (regTwo!20478 (regex!5224 (rule!7664 separatorToken!241))))) ((_ is EmptyLang!9983) (ite c!539026 (regOne!20479 (regex!5224 (rule!7664 separatorToken!241))) (regTwo!20478 (regex!5224 (rule!7664 separatorToken!241)))))))))

(declare-fun e!2001872 () List!36301)

(assert (=> d!879555 (= (usedCharacters!540 (ite c!539026 (regOne!20479 (regex!5224 (rule!7664 separatorToken!241))) (regTwo!20478 (regex!5224 (rule!7664 separatorToken!241))))) e!2001872)))

(declare-fun bm!232261 () Bool)

(declare-fun call!232269 () List!36301)

(declare-fun call!232266 () List!36301)

(assert (=> bm!232261 (= call!232269 call!232266)))

(declare-fun b!3210408 () Bool)

(declare-fun e!2001870 () List!36301)

(assert (=> b!3210408 (= e!2001870 (Cons!36177 (c!538930 (ite c!539026 (regOne!20479 (regex!5224 (rule!7664 separatorToken!241))) (regTwo!20478 (regex!5224 (rule!7664 separatorToken!241))))) Nil!36177))))

(declare-fun c!539199 () Bool)

(declare-fun call!232268 () List!36301)

(declare-fun bm!232262 () Bool)

(assert (=> bm!232262 (= call!232267 (++!8680 (ite c!539199 call!232268 call!232269) (ite c!539199 call!232269 call!232268)))))

(declare-fun b!3210409 () Bool)

(assert (=> b!3210409 (= e!2001872 e!2001870)))

(declare-fun c!539201 () Bool)

(assert (=> b!3210409 (= c!539201 ((_ is ElementMatch!9983) (ite c!539026 (regOne!20479 (regex!5224 (rule!7664 separatorToken!241))) (regTwo!20478 (regex!5224 (rule!7664 separatorToken!241))))))))

(declare-fun b!3210410 () Bool)

(declare-fun c!539202 () Bool)

(assert (=> b!3210410 (= c!539202 ((_ is Star!9983) (ite c!539026 (regOne!20479 (regex!5224 (rule!7664 separatorToken!241))) (regTwo!20478 (regex!5224 (rule!7664 separatorToken!241))))))))

(declare-fun e!2001871 () List!36301)

(assert (=> b!3210410 (= e!2001870 e!2001871)))

(declare-fun b!3210411 () Bool)

(assert (=> b!3210411 (= e!2001871 e!2001869)))

(assert (=> b!3210411 (= c!539199 ((_ is Union!9983) (ite c!539026 (regOne!20479 (regex!5224 (rule!7664 separatorToken!241))) (regTwo!20478 (regex!5224 (rule!7664 separatorToken!241))))))))

(declare-fun b!3210412 () Bool)

(assert (=> b!3210412 (= e!2001869 call!232267)))

(declare-fun bm!232263 () Bool)

(assert (=> bm!232263 (= call!232268 (usedCharacters!540 (ite c!539199 (regOne!20479 (ite c!539026 (regOne!20479 (regex!5224 (rule!7664 separatorToken!241))) (regTwo!20478 (regex!5224 (rule!7664 separatorToken!241))))) (regTwo!20478 (ite c!539026 (regOne!20479 (regex!5224 (rule!7664 separatorToken!241))) (regTwo!20478 (regex!5224 (rule!7664 separatorToken!241))))))))))

(declare-fun b!3210413 () Bool)

(assert (=> b!3210413 (= e!2001871 call!232266)))

(declare-fun b!3210414 () Bool)

(assert (=> b!3210414 (= e!2001872 Nil!36177)))

(declare-fun bm!232264 () Bool)

(assert (=> bm!232264 (= call!232266 (usedCharacters!540 (ite c!539202 (reg!10312 (ite c!539026 (regOne!20479 (regex!5224 (rule!7664 separatorToken!241))) (regTwo!20478 (regex!5224 (rule!7664 separatorToken!241))))) (ite c!539199 (regTwo!20479 (ite c!539026 (regOne!20479 (regex!5224 (rule!7664 separatorToken!241))) (regTwo!20478 (regex!5224 (rule!7664 separatorToken!241))))) (regOne!20478 (ite c!539026 (regOne!20479 (regex!5224 (rule!7664 separatorToken!241))) (regTwo!20478 (regex!5224 (rule!7664 separatorToken!241)))))))))))

(assert (= (and d!879555 c!539200) b!3210414))

(assert (= (and d!879555 (not c!539200)) b!3210409))

(assert (= (and b!3210409 c!539201) b!3210408))

(assert (= (and b!3210409 (not c!539201)) b!3210410))

(assert (= (and b!3210410 c!539202) b!3210413))

(assert (= (and b!3210410 (not c!539202)) b!3210411))

(assert (= (and b!3210411 c!539199) b!3210407))

(assert (= (and b!3210411 (not c!539199)) b!3210412))

(assert (= (or b!3210407 b!3210412) bm!232261))

(assert (= (or b!3210407 b!3210412) bm!232263))

(assert (= (or b!3210407 b!3210412) bm!232262))

(assert (= (or b!3210413 bm!232261) bm!232264))

(declare-fun m!3479097 () Bool)

(assert (=> bm!232262 m!3479097))

(declare-fun m!3479099 () Bool)

(assert (=> bm!232263 m!3479099))

(declare-fun m!3479101 () Bool)

(assert (=> bm!232264 m!3479101))

(assert (=> bm!232198 d!879555))

(declare-fun d!879557 () Bool)

(declare-fun c!539203 () Bool)

(assert (=> d!879557 (= c!539203 ((_ is Nil!36177) (usedCharacters!540 (regex!5224 (rule!7664 (h!41599 tokens!494))))))))

(declare-fun e!2001873 () (InoxSet C!20152))

(assert (=> d!879557 (= (content!4888 (usedCharacters!540 (regex!5224 (rule!7664 (h!41599 tokens!494))))) e!2001873)))

(declare-fun b!3210415 () Bool)

(assert (=> b!3210415 (= e!2001873 ((as const (Array C!20152 Bool)) false))))

(declare-fun b!3210416 () Bool)

(assert (=> b!3210416 (= e!2001873 ((_ map or) (store ((as const (Array C!20152 Bool)) false) (h!41597 (usedCharacters!540 (regex!5224 (rule!7664 (h!41599 tokens!494))))) true) (content!4888 (t!238512 (usedCharacters!540 (regex!5224 (rule!7664 (h!41599 tokens!494))))))))))

(assert (= (and d!879557 c!539203) b!3210415))

(assert (= (and d!879557 (not c!539203)) b!3210416))

(declare-fun m!3479103 () Bool)

(assert (=> b!3210416 m!3479103))

(declare-fun m!3479105 () Bool)

(assert (=> b!3210416 m!3479105))

(assert (=> d!879193 d!879557))

(declare-fun b!3210417 () Bool)

(declare-fun e!2001874 () List!36301)

(assert (=> b!3210417 (= e!2001874 lt!1084696)))

(declare-fun lt!1085383 () List!36301)

(declare-fun b!3210420 () Bool)

(declare-fun e!2001875 () Bool)

(assert (=> b!3210420 (= e!2001875 (or (not (= lt!1084696 Nil!36177)) (= lt!1085383 (t!238512 lt!1084664))))))

(declare-fun b!3210419 () Bool)

(declare-fun res!1306883 () Bool)

(assert (=> b!3210419 (=> (not res!1306883) (not e!2001875))))

(assert (=> b!3210419 (= res!1306883 (= (size!27260 lt!1085383) (+ (size!27260 (t!238512 lt!1084664)) (size!27260 lt!1084696))))))

(declare-fun d!879559 () Bool)

(assert (=> d!879559 e!2001875))

(declare-fun res!1306884 () Bool)

(assert (=> d!879559 (=> (not res!1306884) (not e!2001875))))

(assert (=> d!879559 (= res!1306884 (= (content!4888 lt!1085383) ((_ map or) (content!4888 (t!238512 lt!1084664)) (content!4888 lt!1084696))))))

(assert (=> d!879559 (= lt!1085383 e!2001874)))

(declare-fun c!539206 () Bool)

(assert (=> d!879559 (= c!539206 ((_ is Nil!36177) (t!238512 lt!1084664)))))

(assert (=> d!879559 (= (++!8680 (t!238512 lt!1084664) lt!1084696) lt!1085383)))

(declare-fun b!3210418 () Bool)

(assert (=> b!3210418 (= e!2001874 (Cons!36177 (h!41597 (t!238512 lt!1084664)) (++!8680 (t!238512 (t!238512 lt!1084664)) lt!1084696)))))

(assert (= (and d!879559 c!539206) b!3210417))

(assert (= (and d!879559 (not c!539206)) b!3210418))

(assert (= (and d!879559 res!1306884) b!3210419))

(assert (= (and b!3210419 res!1306883) b!3210420))

(declare-fun m!3479107 () Bool)

(assert (=> b!3210419 m!3479107))

(assert (=> b!3210419 m!3477937))

(assert (=> b!3210419 m!3478257))

(declare-fun m!3479109 () Bool)

(assert (=> d!879559 m!3479109))

(declare-fun m!3479111 () Bool)

(assert (=> d!879559 m!3479111))

(assert (=> d!879559 m!3478261))

(declare-fun m!3479113 () Bool)

(assert (=> b!3210418 m!3479113))

(assert (=> b!3210057 d!879559))

(declare-fun d!879561 () Bool)

(declare-fun charsToInt!0 (List!36300) (_ BitVec 32))

(assert (=> d!879561 (= (inv!16 (value!169344 (h!41599 tokens!494))) (= (charsToInt!0 (text!38625 (value!169344 (h!41599 tokens!494)))) (value!169335 (value!169344 (h!41599 tokens!494)))))))

(declare-fun bs!541630 () Bool)

(assert (= bs!541630 d!879561))

(declare-fun m!3479129 () Bool)

(assert (=> bs!541630 m!3479129))

(assert (=> b!3209340 d!879561))

(declare-fun bs!541642 () Bool)

(declare-fun d!879571 () Bool)

(assert (= bs!541642 (and d!879571 b!3209124)))

(declare-fun lambda!117502 () Int)

(assert (=> bs!541642 (not (= lambda!117502 lambda!117478))))

(declare-fun bs!541643 () Bool)

(assert (= bs!541643 (and d!879571 b!3209121)))

(assert (=> bs!541643 (= lambda!117502 lambda!117479)))

(declare-fun bs!541644 () Bool)

(assert (= bs!541644 (and d!879571 d!879211)))

(assert (=> bs!541644 (= lambda!117502 lambda!117489)))

(declare-fun b!3210540 () Bool)

(declare-fun e!2001952 () Bool)

(assert (=> b!3210540 (= e!2001952 true)))

(declare-fun b!3210539 () Bool)

(declare-fun e!2001951 () Bool)

(assert (=> b!3210539 (= e!2001951 e!2001952)))

(declare-fun b!3210538 () Bool)

(declare-fun e!2001950 () Bool)

(assert (=> b!3210538 (= e!2001950 e!2001951)))

(assert (=> d!879571 e!2001950))

(assert (= b!3210539 b!3210540))

(assert (= b!3210538 b!3210539))

(assert (= (and d!879571 ((_ is Cons!36178) rules!2135)) b!3210538))

(assert (=> b!3210540 (< (dynLambda!14607 order!18473 (toValue!7308 (transformation!5224 (h!41598 rules!2135)))) (dynLambda!14608 order!18475 lambda!117502))))

(assert (=> b!3210540 (< (dynLambda!14609 order!18477 (toChars!7167 (transformation!5224 (h!41598 rules!2135)))) (dynLambda!14608 order!18475 lambda!117502))))

(assert (=> d!879571 true))

(declare-fun lt!1085430 () Bool)

(assert (=> d!879571 (= lt!1085430 (forall!7388 (list!12869 (seqFromList!3520 tokens!494)) lambda!117502))))

(declare-fun e!2001948 () Bool)

(assert (=> d!879571 (= lt!1085430 e!2001948)))

(declare-fun res!1306931 () Bool)

(assert (=> d!879571 (=> res!1306931 e!2001948)))

(assert (=> d!879571 (= res!1306931 (not ((_ is Cons!36179) (list!12869 (seqFromList!3520 tokens!494)))))))

(assert (=> d!879571 (not (isEmpty!20262 rules!2135))))

(assert (=> d!879571 (= (rulesProduceEachTokenIndividuallyList!1727 thiss!18206 rules!2135 (list!12869 (seqFromList!3520 tokens!494))) lt!1085430)))

(declare-fun b!3210536 () Bool)

(declare-fun e!2001949 () Bool)

(assert (=> b!3210536 (= e!2001948 e!2001949)))

(declare-fun res!1306930 () Bool)

(assert (=> b!3210536 (=> (not res!1306930) (not e!2001949))))

(assert (=> b!3210536 (= res!1306930 (rulesProduceIndividualToken!2305 thiss!18206 rules!2135 (h!41599 (list!12869 (seqFromList!3520 tokens!494)))))))

(declare-fun b!3210537 () Bool)

(assert (=> b!3210537 (= e!2001949 (rulesProduceEachTokenIndividuallyList!1727 thiss!18206 rules!2135 (t!238514 (list!12869 (seqFromList!3520 tokens!494)))))))

(assert (= (and d!879571 (not res!1306931)) b!3210536))

(assert (= (and b!3210536 res!1306930) b!3210537))

(assert (=> d!879571 m!3478215))

(declare-fun m!3479275 () Bool)

(assert (=> d!879571 m!3479275))

(assert (=> d!879571 m!3476869))

(declare-fun m!3479277 () Bool)

(assert (=> b!3210536 m!3479277))

(declare-fun m!3479279 () Bool)

(assert (=> b!3210537 m!3479279))

(assert (=> b!3209976 d!879571))

(declare-fun d!879635 () Bool)

(assert (=> d!879635 (= (list!12869 (seqFromList!3520 tokens!494)) (list!12871 (c!538932 (seqFromList!3520 tokens!494))))))

(declare-fun bs!541645 () Bool)

(assert (= bs!541645 d!879635))

(declare-fun m!3479281 () Bool)

(assert (=> bs!541645 m!3479281))

(assert (=> b!3209976 d!879635))

(declare-fun d!879637 () Bool)

(declare-fun lt!1085431 () Int)

(assert (=> d!879637 (= lt!1085431 (size!27264 (list!12869 (_1!20922 lt!1084813))))))

(assert (=> d!879637 (= lt!1085431 (size!27265 (c!538932 (_1!20922 lt!1084813))))))

(assert (=> d!879637 (= (size!27261 (_1!20922 lt!1084813)) lt!1085431)))

(declare-fun bs!541646 () Bool)

(assert (= bs!541646 d!879637))

(assert (=> bs!541646 m!3477243))

(assert (=> bs!541646 m!3477243))

(declare-fun m!3479283 () Bool)

(assert (=> bs!541646 m!3479283))

(declare-fun m!3479285 () Bool)

(assert (=> bs!541646 m!3479285))

(assert (=> d!879015 d!879637))

(declare-fun lt!1085462 () tuple2!35576)

(declare-fun e!2001955 () Bool)

(declare-fun b!3210541 () Bool)

(assert (=> b!3210541 (= e!2001955 (= (list!12865 (_2!20922 lt!1085462)) (list!12865 (_2!20922 (lexRec!687 thiss!18206 rules!2135 lt!1084659)))))))

(declare-fun b!3210542 () Bool)

(declare-fun lt!1085443 () tuple2!35576)

(declare-fun lt!1085449 () Option!7150)

(assert (=> b!3210542 (= lt!1085443 (lexRec!687 thiss!18206 rules!2135 (_2!20928 (v!35709 lt!1085449))))))

(declare-fun e!2001954 () tuple2!35576)

(assert (=> b!3210542 (= e!2001954 (tuple2!35577 (prepend!1175 (_1!20922 lt!1085443) (_1!20928 (v!35709 lt!1085449))) (_2!20922 lt!1085443)))))

(declare-fun d!879639 () Bool)

(assert (=> d!879639 e!2001955))

(declare-fun res!1306932 () Bool)

(assert (=> d!879639 (=> (not res!1306932) (not e!2001955))))

(assert (=> d!879639 (= res!1306932 (= (list!12869 (_1!20922 lt!1085462)) (list!12869 (_1!20922 (lexRec!687 thiss!18206 rules!2135 lt!1084659)))))))

(declare-fun e!2001956 () tuple2!35576)

(assert (=> d!879639 (= lt!1085462 e!2001956)))

(declare-fun c!539244 () Bool)

(declare-fun lt!1085463 () Option!7150)

(assert (=> d!879639 (= c!539244 ((_ is Some!7149) lt!1085463))))

(assert (=> d!879639 (= lt!1085463 (maxPrefixZipperSequenceV2!474 thiss!18206 rules!2135 lt!1084659 lt!1084659))))

(declare-fun lt!1085439 () Unit!50642)

(declare-fun lt!1085434 () Unit!50642)

(assert (=> d!879639 (= lt!1085439 lt!1085434)))

(declare-fun lt!1085445 () List!36301)

(declare-fun lt!1085459 () List!36301)

(assert (=> d!879639 (isSuffix!849 lt!1085445 (++!8680 lt!1085459 lt!1085445))))

(assert (=> d!879639 (= lt!1085434 (lemmaConcatTwoListThenFSndIsSuffix!534 lt!1085459 lt!1085445))))

(assert (=> d!879639 (= lt!1085445 (list!12865 lt!1084659))))

(assert (=> d!879639 (= lt!1085459 (list!12865 (BalanceConc!21261 Empty!10823)))))

(assert (=> d!879639 (= (lexTailRecV2!933 thiss!18206 rules!2135 lt!1084659 (BalanceConc!21261 Empty!10823) lt!1084659 (BalanceConc!21263 Empty!10824)) lt!1085462)))

(declare-fun b!3210543 () Bool)

(declare-fun lt!1085453 () BalanceConc!21260)

(assert (=> b!3210543 (= e!2001954 (tuple2!35577 (BalanceConc!21263 Empty!10824) lt!1085453))))

(declare-fun b!3210544 () Bool)

(declare-fun lt!1085447 () tuple2!35576)

(declare-fun lt!1085433 () Option!7150)

(assert (=> b!3210544 (= lt!1085447 (lexRec!687 thiss!18206 rules!2135 (_2!20928 (v!35709 lt!1085433))))))

(declare-fun e!2001953 () tuple2!35576)

(assert (=> b!3210544 (= e!2001953 (tuple2!35577 (prepend!1175 (_1!20922 lt!1085447) (_1!20928 (v!35709 lt!1085433))) (_2!20922 lt!1085447)))))

(declare-fun lt!1085455 () BalanceConc!21260)

(declare-fun b!3210545 () Bool)

(assert (=> b!3210545 (= e!2001956 (lexTailRecV2!933 thiss!18206 rules!2135 lt!1084659 lt!1085455 (_2!20928 (v!35709 lt!1085463)) (append!867 (BalanceConc!21263 Empty!10824) (_1!20928 (v!35709 lt!1085463)))))))

(declare-fun lt!1085465 () tuple2!35576)

(assert (=> b!3210545 (= lt!1085465 (lexRec!687 thiss!18206 rules!2135 (_2!20928 (v!35709 lt!1085463))))))

(declare-fun lt!1085457 () List!36301)

(assert (=> b!3210545 (= lt!1085457 (list!12865 (BalanceConc!21261 Empty!10823)))))

(declare-fun lt!1085452 () List!36301)

(assert (=> b!3210545 (= lt!1085452 (list!12865 (charsOf!3240 (_1!20928 (v!35709 lt!1085463)))))))

(declare-fun lt!1085454 () List!36301)

(assert (=> b!3210545 (= lt!1085454 (list!12865 (_2!20928 (v!35709 lt!1085463))))))

(declare-fun lt!1085444 () Unit!50642)

(assert (=> b!3210545 (= lt!1085444 (lemmaConcatAssociativity!1746 lt!1085457 lt!1085452 lt!1085454))))

(assert (=> b!3210545 (= (++!8680 (++!8680 lt!1085457 lt!1085452) lt!1085454) (++!8680 lt!1085457 (++!8680 lt!1085452 lt!1085454)))))

(declare-fun lt!1085432 () Unit!50642)

(assert (=> b!3210545 (= lt!1085432 lt!1085444)))

(assert (=> b!3210545 (= lt!1085433 (maxPrefixZipperSequence!1080 thiss!18206 rules!2135 lt!1084659))))

(declare-fun c!539242 () Bool)

(assert (=> b!3210545 (= c!539242 ((_ is Some!7149) lt!1085433))))

(assert (=> b!3210545 (= (lexRec!687 thiss!18206 rules!2135 lt!1084659) e!2001953)))

(declare-fun lt!1085442 () Unit!50642)

(declare-fun Unit!50650 () Unit!50642)

(assert (=> b!3210545 (= lt!1085442 Unit!50650)))

(declare-fun lt!1085460 () List!36303)

(assert (=> b!3210545 (= lt!1085460 (list!12869 (BalanceConc!21263 Empty!10824)))))

(declare-fun lt!1085461 () List!36303)

(assert (=> b!3210545 (= lt!1085461 (Cons!36179 (_1!20928 (v!35709 lt!1085463)) Nil!36179))))

(declare-fun lt!1085436 () List!36303)

(assert (=> b!3210545 (= lt!1085436 (list!12869 (_1!20922 lt!1085465)))))

(declare-fun lt!1085440 () Unit!50642)

(assert (=> b!3210545 (= lt!1085440 (lemmaConcatAssociativity!1748 lt!1085460 lt!1085461 lt!1085436))))

(assert (=> b!3210545 (= (++!8684 (++!8684 lt!1085460 lt!1085461) lt!1085436) (++!8684 lt!1085460 (++!8684 lt!1085461 lt!1085436)))))

(declare-fun lt!1085448 () Unit!50642)

(assert (=> b!3210545 (= lt!1085448 lt!1085440)))

(declare-fun lt!1085451 () List!36301)

(assert (=> b!3210545 (= lt!1085451 (++!8680 (list!12865 (BalanceConc!21261 Empty!10823)) (list!12865 (charsOf!3240 (_1!20928 (v!35709 lt!1085463))))))))

(declare-fun lt!1085437 () List!36301)

(assert (=> b!3210545 (= lt!1085437 (list!12865 (_2!20928 (v!35709 lt!1085463))))))

(declare-fun lt!1085456 () List!36303)

(assert (=> b!3210545 (= lt!1085456 (list!12869 (append!867 (BalanceConc!21263 Empty!10824) (_1!20928 (v!35709 lt!1085463)))))))

(declare-fun lt!1085438 () Unit!50642)

(assert (=> b!3210545 (= lt!1085438 (lemmaLexThenLexPrefix!452 thiss!18206 rules!2135 lt!1085451 lt!1085437 lt!1085456 (list!12869 (_1!20922 lt!1085465)) (list!12865 (_2!20922 lt!1085465))))))

(assert (=> b!3210545 (= (lexList!1313 thiss!18206 rules!2135 lt!1085451) (tuple2!35581 lt!1085456 Nil!36177))))

(declare-fun lt!1085450 () Unit!50642)

(assert (=> b!3210545 (= lt!1085450 lt!1085438)))

(assert (=> b!3210545 (= lt!1085453 (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (_1!20928 (v!35709 lt!1085463)))))))

(assert (=> b!3210545 (= lt!1085449 (maxPrefixZipperSequence!1080 thiss!18206 rules!2135 lt!1085453))))

(declare-fun c!539243 () Bool)

(assert (=> b!3210545 (= c!539243 ((_ is Some!7149) lt!1085449))))

(assert (=> b!3210545 (= (lexRec!687 thiss!18206 rules!2135 (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (_1!20928 (v!35709 lt!1085463))))) e!2001954)))

(declare-fun lt!1085441 () Unit!50642)

(declare-fun Unit!50651 () Unit!50642)

(assert (=> b!3210545 (= lt!1085441 Unit!50651)))

(assert (=> b!3210545 (= lt!1085455 (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (_1!20928 (v!35709 lt!1085463)))))))

(declare-fun lt!1085446 () List!36301)

(assert (=> b!3210545 (= lt!1085446 (list!12865 lt!1085455))))

(declare-fun lt!1085435 () List!36301)

(assert (=> b!3210545 (= lt!1085435 (list!12865 (_2!20928 (v!35709 lt!1085463))))))

(declare-fun lt!1085464 () Unit!50642)

(assert (=> b!3210545 (= lt!1085464 (lemmaConcatTwoListThenFSndIsSuffix!534 lt!1085446 lt!1085435))))

(assert (=> b!3210545 (isSuffix!849 lt!1085435 (++!8680 lt!1085446 lt!1085435))))

(declare-fun lt!1085458 () Unit!50642)

(assert (=> b!3210545 (= lt!1085458 lt!1085464)))

(declare-fun b!3210546 () Bool)

(assert (=> b!3210546 (= e!2001956 (tuple2!35577 (BalanceConc!21263 Empty!10824) lt!1084659))))

(declare-fun b!3210547 () Bool)

(assert (=> b!3210547 (= e!2001953 (tuple2!35577 (BalanceConc!21263 Empty!10824) lt!1084659))))

(assert (= (and d!879639 c!539244) b!3210545))

(assert (= (and d!879639 (not c!539244)) b!3210546))

(assert (= (and b!3210545 c!539242) b!3210544))

(assert (= (and b!3210545 (not c!539242)) b!3210547))

(assert (= (and b!3210545 c!539243) b!3210542))

(assert (= (and b!3210545 (not c!539243)) b!3210543))

(assert (= (and d!879639 res!1306932) b!3210541))

(declare-fun m!3479287 () Bool)

(assert (=> b!3210541 m!3479287))

(declare-fun m!3479289 () Bool)

(assert (=> b!3210541 m!3479289))

(declare-fun m!3479291 () Bool)

(assert (=> b!3210541 m!3479291))

(declare-fun m!3479293 () Bool)

(assert (=> d!879639 m!3479293))

(declare-fun m!3479295 () Bool)

(assert (=> d!879639 m!3479295))

(assert (=> d!879639 m!3477245))

(declare-fun m!3479297 () Bool)

(assert (=> d!879639 m!3479297))

(declare-fun m!3479299 () Bool)

(assert (=> d!879639 m!3479299))

(assert (=> d!879639 m!3479289))

(declare-fun m!3479301 () Bool)

(assert (=> d!879639 m!3479301))

(assert (=> d!879639 m!3479293))

(declare-fun m!3479303 () Bool)

(assert (=> d!879639 m!3479303))

(assert (=> d!879639 m!3476993))

(declare-fun m!3479305 () Bool)

(assert (=> b!3210545 m!3479305))

(declare-fun m!3479307 () Bool)

(assert (=> b!3210545 m!3479307))

(declare-fun m!3479309 () Bool)

(assert (=> b!3210545 m!3479309))

(assert (=> b!3210545 m!3476993))

(declare-fun m!3479311 () Bool)

(assert (=> b!3210545 m!3479311))

(declare-fun m!3479313 () Bool)

(assert (=> b!3210545 m!3479313))

(assert (=> b!3210545 m!3476993))

(declare-fun m!3479315 () Bool)

(assert (=> b!3210545 m!3479315))

(declare-fun m!3479317 () Bool)

(assert (=> b!3210545 m!3479317))

(declare-fun m!3479319 () Bool)

(assert (=> b!3210545 m!3479319))

(declare-fun m!3479321 () Bool)

(assert (=> b!3210545 m!3479321))

(declare-fun m!3479323 () Bool)

(assert (=> b!3210545 m!3479323))

(assert (=> b!3210545 m!3479307))

(declare-fun m!3479325 () Bool)

(assert (=> b!3210545 m!3479325))

(declare-fun m!3479327 () Bool)

(assert (=> b!3210545 m!3479327))

(assert (=> b!3210545 m!3479289))

(assert (=> b!3210545 m!3479305))

(declare-fun m!3479329 () Bool)

(assert (=> b!3210545 m!3479329))

(declare-fun m!3479331 () Bool)

(assert (=> b!3210545 m!3479331))

(declare-fun m!3479333 () Bool)

(assert (=> b!3210545 m!3479333))

(declare-fun m!3479335 () Bool)

(assert (=> b!3210545 m!3479335))

(declare-fun m!3479337 () Bool)

(assert (=> b!3210545 m!3479337))

(declare-fun m!3479339 () Bool)

(assert (=> b!3210545 m!3479339))

(assert (=> b!3210545 m!3479327))

(declare-fun m!3479341 () Bool)

(assert (=> b!3210545 m!3479341))

(declare-fun m!3479343 () Bool)

(assert (=> b!3210545 m!3479343))

(assert (=> b!3210545 m!3479317))

(declare-fun m!3479345 () Bool)

(assert (=> b!3210545 m!3479345))

(declare-fun m!3479347 () Bool)

(assert (=> b!3210545 m!3479347))

(declare-fun m!3479349 () Bool)

(assert (=> b!3210545 m!3479349))

(declare-fun m!3479351 () Bool)

(assert (=> b!3210545 m!3479351))

(declare-fun m!3479353 () Bool)

(assert (=> b!3210545 m!3479353))

(declare-fun m!3479355 () Bool)

(assert (=> b!3210545 m!3479355))

(declare-fun m!3479357 () Bool)

(assert (=> b!3210545 m!3479357))

(declare-fun m!3479359 () Bool)

(assert (=> b!3210545 m!3479359))

(declare-fun m!3479361 () Bool)

(assert (=> b!3210545 m!3479361))

(assert (=> b!3210545 m!3479337))

(assert (=> b!3210545 m!3479321))

(assert (=> b!3210545 m!3479333))

(declare-fun m!3479363 () Bool)

(assert (=> b!3210545 m!3479363))

(assert (=> b!3210545 m!3479357))

(assert (=> b!3210545 m!3479353))

(assert (=> b!3210545 m!3478905))

(assert (=> b!3210545 m!3479337))

(assert (=> b!3210545 m!3479311))

(assert (=> b!3210545 m!3479329))

(assert (=> b!3210545 m!3479307))

(declare-fun m!3479365 () Bool)

(assert (=> b!3210544 m!3479365))

(declare-fun m!3479367 () Bool)

(assert (=> b!3210544 m!3479367))

(declare-fun m!3479369 () Bool)

(assert (=> b!3210542 m!3479369))

(declare-fun m!3479371 () Bool)

(assert (=> b!3210542 m!3479371))

(assert (=> d!879015 d!879639))

(declare-fun d!879641 () Bool)

(declare-fun charsToBigInt!0 (List!36300 Int) Int)

(assert (=> d!879641 (= (inv!15 (value!169344 separatorToken!241)) (= (charsToBigInt!0 (text!38627 (value!169344 separatorToken!241)) 0) (value!169339 (value!169344 separatorToken!241))))))

(declare-fun bs!541647 () Bool)

(assert (= bs!541647 d!879641))

(declare-fun m!3479373 () Bool)

(assert (=> bs!541647 m!3479373))

(assert (=> b!3209861 d!879641))

(declare-fun d!879643 () Bool)

(declare-fun res!1306949 () Bool)

(declare-fun e!2001962 () Bool)

(assert (=> d!879643 (=> res!1306949 e!2001962)))

(assert (=> d!879643 (= res!1306949 (not ((_ is Node!10824) (c!538932 lt!1084766))))))

(assert (=> d!879643 (= (isBalanced!3217 (c!538932 lt!1084766)) e!2001962)))

(declare-fun b!3210560 () Bool)

(declare-fun e!2001961 () Bool)

(assert (=> b!3210560 (= e!2001961 (not (isEmpty!20275 (right!28464 (c!538932 lt!1084766)))))))

(declare-fun b!3210561 () Bool)

(declare-fun res!1306950 () Bool)

(assert (=> b!3210561 (=> (not res!1306950) (not e!2001961))))

(assert (=> b!3210561 (= res!1306950 (not (isEmpty!20275 (left!28134 (c!538932 lt!1084766)))))))

(declare-fun b!3210562 () Bool)

(assert (=> b!3210562 (= e!2001962 e!2001961)))

(declare-fun res!1306948 () Bool)

(assert (=> b!3210562 (=> (not res!1306948) (not e!2001961))))

(declare-fun height!1553 (Conc!10824) Int)

(assert (=> b!3210562 (= res!1306948 (<= (- 1) (- (height!1553 (left!28134 (c!538932 lt!1084766))) (height!1553 (right!28464 (c!538932 lt!1084766))))))))

(declare-fun b!3210563 () Bool)

(declare-fun res!1306946 () Bool)

(assert (=> b!3210563 (=> (not res!1306946) (not e!2001961))))

(assert (=> b!3210563 (= res!1306946 (isBalanced!3217 (left!28134 (c!538932 lt!1084766))))))

(declare-fun b!3210564 () Bool)

(declare-fun res!1306945 () Bool)

(assert (=> b!3210564 (=> (not res!1306945) (not e!2001961))))

(assert (=> b!3210564 (= res!1306945 (<= (- (height!1553 (left!28134 (c!538932 lt!1084766))) (height!1553 (right!28464 (c!538932 lt!1084766)))) 1))))

(declare-fun b!3210565 () Bool)

(declare-fun res!1306947 () Bool)

(assert (=> b!3210565 (=> (not res!1306947) (not e!2001961))))

(assert (=> b!3210565 (= res!1306947 (isBalanced!3217 (right!28464 (c!538932 lt!1084766))))))

(assert (= (and d!879643 (not res!1306949)) b!3210562))

(assert (= (and b!3210562 res!1306948) b!3210564))

(assert (= (and b!3210564 res!1306945) b!3210563))

(assert (= (and b!3210563 res!1306946) b!3210565))

(assert (= (and b!3210565 res!1306947) b!3210561))

(assert (= (and b!3210561 res!1306950) b!3210560))

(declare-fun m!3479375 () Bool)

(assert (=> b!3210564 m!3479375))

(declare-fun m!3479377 () Bool)

(assert (=> b!3210564 m!3479377))

(declare-fun m!3479379 () Bool)

(assert (=> b!3210565 m!3479379))

(assert (=> b!3210562 m!3479375))

(assert (=> b!3210562 m!3479377))

(declare-fun m!3479381 () Bool)

(assert (=> b!3210560 m!3479381))

(declare-fun m!3479383 () Bool)

(assert (=> b!3210561 m!3479383))

(declare-fun m!3479385 () Bool)

(assert (=> b!3210563 m!3479385))

(assert (=> b!3209303 d!879643))

(declare-fun d!879645 () Bool)

(declare-fun c!539245 () Bool)

(assert (=> d!879645 (= c!539245 ((_ is Nil!36177) lt!1085053))))

(declare-fun e!2001963 () (InoxSet C!20152))

(assert (=> d!879645 (= (content!4888 lt!1085053) e!2001963)))

(declare-fun b!3210566 () Bool)

(assert (=> b!3210566 (= e!2001963 ((as const (Array C!20152 Bool)) false))))

(declare-fun b!3210567 () Bool)

(assert (=> b!3210567 (= e!2001963 ((_ map or) (store ((as const (Array C!20152 Bool)) false) (h!41597 lt!1085053) true) (content!4888 (t!238512 lt!1085053))))))

(assert (= (and d!879645 c!539245) b!3210566))

(assert (= (and d!879645 (not c!539245)) b!3210567))

(declare-fun m!3479387 () Bool)

(assert (=> b!3210567 m!3479387))

(declare-fun m!3479389 () Bool)

(assert (=> b!3210567 m!3479389))

(assert (=> d!879249 d!879645))

(declare-fun d!879647 () Bool)

(declare-fun c!539246 () Bool)

(assert (=> d!879647 (= c!539246 ((_ is Nil!36177) (++!8680 lt!1084683 lt!1084696)))))

(declare-fun e!2001964 () (InoxSet C!20152))

(assert (=> d!879647 (= (content!4888 (++!8680 lt!1084683 lt!1084696)) e!2001964)))

(declare-fun b!3210568 () Bool)

(assert (=> b!3210568 (= e!2001964 ((as const (Array C!20152 Bool)) false))))

(declare-fun b!3210569 () Bool)

(assert (=> b!3210569 (= e!2001964 ((_ map or) (store ((as const (Array C!20152 Bool)) false) (h!41597 (++!8680 lt!1084683 lt!1084696)) true) (content!4888 (t!238512 (++!8680 lt!1084683 lt!1084696)))))))

(assert (= (and d!879647 c!539246) b!3210568))

(assert (= (and d!879647 (not c!539246)) b!3210569))

(declare-fun m!3479391 () Bool)

(assert (=> b!3210569 m!3479391))

(assert (=> b!3210569 m!3479037))

(assert (=> d!879249 d!879647))

(assert (=> d!879249 d!879475))

(declare-fun d!879649 () Bool)

(assert (=> d!879649 (= (list!12869 (_1!20922 (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 tokens!494)))))) (list!12871 (c!538932 (_1!20922 (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 tokens!494))))))))))

(declare-fun bs!541648 () Bool)

(assert (= bs!541648 d!879649))

(declare-fun m!3479393 () Bool)

(assert (=> bs!541648 m!3479393))

(assert (=> d!879285 d!879649))

(declare-fun d!879651 () Bool)

(declare-fun e!2001965 () Bool)

(assert (=> d!879651 e!2001965))

(declare-fun res!1306952 () Bool)

(assert (=> d!879651 (=> (not res!1306952) (not e!2001965))))

(declare-fun e!2001966 () Bool)

(assert (=> d!879651 (= res!1306952 e!2001966)))

(declare-fun c!539247 () Bool)

(declare-fun lt!1085466 () tuple2!35576)

(assert (=> d!879651 (= c!539247 (> (size!27261 (_1!20922 lt!1085466)) 0))))

(assert (=> d!879651 (= lt!1085466 (lexTailRecV2!933 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 tokens!494))) (BalanceConc!21261 Empty!10823) (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 tokens!494))) (BalanceConc!21263 Empty!10824)))))

(assert (=> d!879651 (= (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 tokens!494)))) lt!1085466)))

(declare-fun b!3210570 () Bool)

(declare-fun e!2001967 () Bool)

(assert (=> b!3210570 (= e!2001967 (not (isEmpty!20261 (_1!20922 lt!1085466))))))

(declare-fun b!3210571 () Bool)

(declare-fun res!1306953 () Bool)

(assert (=> b!3210571 (=> (not res!1306953) (not e!2001965))))

(assert (=> b!3210571 (= res!1306953 (= (list!12869 (_1!20922 lt!1085466)) (_1!20924 (lexList!1313 thiss!18206 rules!2135 (list!12865 (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 tokens!494))))))))))

(declare-fun b!3210572 () Bool)

(assert (=> b!3210572 (= e!2001966 e!2001967)))

(declare-fun res!1306951 () Bool)

(assert (=> b!3210572 (= res!1306951 (< (size!27263 (_2!20922 lt!1085466)) (size!27263 (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 tokens!494))))))))

(assert (=> b!3210572 (=> (not res!1306951) (not e!2001967))))

(declare-fun b!3210573 () Bool)

(assert (=> b!3210573 (= e!2001965 (= (list!12865 (_2!20922 lt!1085466)) (_2!20924 (lexList!1313 thiss!18206 rules!2135 (list!12865 (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 tokens!494))))))))))

(declare-fun b!3210574 () Bool)

(assert (=> b!3210574 (= e!2001966 (= (_2!20922 lt!1085466) (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 tokens!494)))))))

(assert (= (and d!879651 c!539247) b!3210572))

(assert (= (and d!879651 (not c!539247)) b!3210574))

(assert (= (and b!3210572 res!1306951) b!3210570))

(assert (= (and d!879651 res!1306952) b!3210571))

(assert (= (and b!3210571 res!1306953) b!3210573))

(declare-fun m!3479395 () Bool)

(assert (=> b!3210572 m!3479395))

(assert (=> b!3210572 m!3478353))

(declare-fun m!3479397 () Bool)

(assert (=> b!3210572 m!3479397))

(declare-fun m!3479399 () Bool)

(assert (=> b!3210570 m!3479399))

(declare-fun m!3479401 () Bool)

(assert (=> b!3210571 m!3479401))

(assert (=> b!3210571 m!3478353))

(declare-fun m!3479403 () Bool)

(assert (=> b!3210571 m!3479403))

(assert (=> b!3210571 m!3479403))

(declare-fun m!3479405 () Bool)

(assert (=> b!3210571 m!3479405))

(declare-fun m!3479407 () Bool)

(assert (=> b!3210573 m!3479407))

(assert (=> b!3210573 m!3478353))

(assert (=> b!3210573 m!3479403))

(assert (=> b!3210573 m!3479403))

(assert (=> b!3210573 m!3479405))

(declare-fun m!3479409 () Bool)

(assert (=> d!879651 m!3479409))

(assert (=> d!879651 m!3478353))

(assert (=> d!879651 m!3478353))

(declare-fun m!3479411 () Bool)

(assert (=> d!879651 m!3479411))

(assert (=> d!879285 d!879651))

(declare-fun d!879653 () Bool)

(declare-fun lt!1085467 () BalanceConc!21260)

(assert (=> d!879653 (= (list!12865 lt!1085467) (printList!1363 thiss!18206 (list!12869 (singletonSeq!2320 (h!41599 tokens!494)))))))

(assert (=> d!879653 (= lt!1085467 (printTailRec!1310 thiss!18206 (singletonSeq!2320 (h!41599 tokens!494)) 0 (BalanceConc!21261 Empty!10823)))))

(assert (=> d!879653 (= (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 tokens!494))) lt!1085467)))

(declare-fun bs!541649 () Bool)

(assert (= bs!541649 d!879653))

(declare-fun m!3479413 () Bool)

(assert (=> bs!541649 m!3479413))

(assert (=> bs!541649 m!3476859))

(assert (=> bs!541649 m!3478355))

(assert (=> bs!541649 m!3478355))

(declare-fun m!3479415 () Bool)

(assert (=> bs!541649 m!3479415))

(assert (=> bs!541649 m!3476859))

(declare-fun m!3479417 () Bool)

(assert (=> bs!541649 m!3479417))

(assert (=> d!879285 d!879653))

(declare-fun d!879655 () Bool)

(assert (=> d!879655 (= (list!12869 (singletonSeq!2320 (h!41599 tokens!494))) (list!12871 (c!538932 (singletonSeq!2320 (h!41599 tokens!494)))))))

(declare-fun bs!541650 () Bool)

(assert (= bs!541650 d!879655))

(declare-fun m!3479419 () Bool)

(assert (=> bs!541650 m!3479419))

(assert (=> d!879285 d!879655))

(assert (=> d!879285 d!878949))

(assert (=> d!879285 d!878957))

(declare-fun d!879657 () Bool)

(declare-fun lt!1085468 () Int)

(assert (=> d!879657 (= lt!1085468 (size!27264 (list!12869 (_1!20922 lt!1085064))))))

(assert (=> d!879657 (= lt!1085468 (size!27265 (c!538932 (_1!20922 lt!1085064))))))

(assert (=> d!879657 (= (size!27261 (_1!20922 lt!1085064)) lt!1085468)))

(declare-fun bs!541651 () Bool)

(assert (= bs!541651 d!879657))

(assert (=> bs!541651 m!3479045))

(assert (=> bs!541651 m!3479045))

(declare-fun m!3479421 () Bool)

(assert (=> bs!541651 m!3479421))

(declare-fun m!3479423 () Bool)

(assert (=> bs!541651 m!3479423))

(assert (=> d!879285 d!879657))

(assert (=> b!3210007 d!879491))

(assert (=> b!3210007 d!879493))

(declare-fun d!879659 () Bool)

(assert (=> d!879659 true))

(declare-fun lambda!117505 () Int)

(declare-fun order!18481 () Int)

(declare-fun dynLambda!14617 (Int Int) Int)

(assert (=> d!879659 (< (dynLambda!14607 order!18473 (toValue!7308 (transformation!5224 (h!41598 rules!2135)))) (dynLambda!14617 order!18481 lambda!117505))))

(declare-fun Forall2!863 (Int) Bool)

(assert (=> d!879659 (= (equivClasses!2054 (toChars!7167 (transformation!5224 (h!41598 rules!2135))) (toValue!7308 (transformation!5224 (h!41598 rules!2135)))) (Forall2!863 lambda!117505))))

(declare-fun bs!541652 () Bool)

(assert (= bs!541652 d!879659))

(declare-fun m!3479425 () Bool)

(assert (=> bs!541652 m!3479425))

(assert (=> b!3209356 d!879659))

(declare-fun d!879661 () Bool)

(declare-fun lt!1085471 () Int)

(assert (=> d!879661 (= lt!1085471 (size!27260 (list!12865 (_2!20922 lt!1084839))))))

(assert (=> d!879661 (= lt!1085471 (size!27268 (c!538931 (_2!20922 lt!1084839))))))

(assert (=> d!879661 (= (size!27263 (_2!20922 lt!1084839)) lt!1085471)))

(declare-fun bs!541653 () Bool)

(assert (= bs!541653 d!879661))

(assert (=> bs!541653 m!3477347))

(assert (=> bs!541653 m!3477347))

(declare-fun m!3479427 () Bool)

(assert (=> bs!541653 m!3479427))

(declare-fun m!3479429 () Bool)

(assert (=> bs!541653 m!3479429))

(assert (=> b!3209545 d!879661))

(declare-fun d!879663 () Bool)

(declare-fun lt!1085472 () Int)

(assert (=> d!879663 (= lt!1085472 (size!27260 (list!12865 lt!1084684)))))

(assert (=> d!879663 (= lt!1085472 (size!27268 (c!538931 lt!1084684)))))

(assert (=> d!879663 (= (size!27263 lt!1084684) lt!1085472)))

(declare-fun bs!541654 () Bool)

(assert (= bs!541654 d!879663))

(assert (=> bs!541654 m!3477337))

(assert (=> bs!541654 m!3477337))

(declare-fun m!3479431 () Bool)

(assert (=> bs!541654 m!3479431))

(declare-fun m!3479433 () Bool)

(assert (=> bs!541654 m!3479433))

(assert (=> b!3209545 d!879663))

(declare-fun d!879665 () Bool)

(assert (=> d!879665 (= (inv!49040 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (value!169344 (h!41599 (t!238514 tokens!494))))) (isBalanced!3218 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (value!169344 (h!41599 (t!238514 tokens!494)))))))))

(declare-fun bs!541655 () Bool)

(assert (= bs!541655 d!879665))

(declare-fun m!3479435 () Bool)

(assert (=> bs!541655 m!3479435))

(assert (=> tb!157645 d!879665))

(declare-fun d!879667 () Bool)

(assert (=> d!879667 (= (list!12865 (_2!20922 lt!1085063)) (list!12868 (c!538931 (_2!20922 lt!1085063))))))

(declare-fun bs!541656 () Bool)

(assert (= bs!541656 d!879667))

(declare-fun m!3479437 () Bool)

(assert (=> bs!541656 m!3479437))

(assert (=> b!3210044 d!879667))

(declare-fun b!3210589 () Bool)

(declare-fun e!2001976 () Bool)

(declare-fun lt!1085481 () tuple2!35580)

(assert (=> b!3210589 (= e!2001976 (not (isEmpty!20274 (_1!20924 lt!1085481))))))

(declare-fun b!3210590 () Bool)

(declare-fun e!2001977 () Bool)

(assert (=> b!3210590 (= e!2001977 (= (_2!20924 lt!1085481) (list!12865 lt!1084685)))))

(declare-fun b!3210591 () Bool)

(declare-fun e!2001978 () tuple2!35580)

(assert (=> b!3210591 (= e!2001978 (tuple2!35581 Nil!36179 (list!12865 lt!1084685)))))

(declare-fun b!3210592 () Bool)

(declare-fun lt!1085480 () Option!7147)

(declare-fun lt!1085479 () tuple2!35580)

(assert (=> b!3210592 (= e!2001978 (tuple2!35581 (Cons!36179 (_1!20921 (v!35696 lt!1085480)) (_1!20924 lt!1085479)) (_2!20924 lt!1085479)))))

(assert (=> b!3210592 (= lt!1085479 (lexList!1313 thiss!18206 rules!2135 (_2!20921 (v!35696 lt!1085480))))))

(declare-fun d!879669 () Bool)

(assert (=> d!879669 e!2001977))

(declare-fun c!539253 () Bool)

(assert (=> d!879669 (= c!539253 (> (size!27264 (_1!20924 lt!1085481)) 0))))

(assert (=> d!879669 (= lt!1085481 e!2001978)))

(declare-fun c!539252 () Bool)

(assert (=> d!879669 (= c!539252 ((_ is Some!7146) lt!1085480))))

(assert (=> d!879669 (= lt!1085480 (maxPrefix!2455 thiss!18206 rules!2135 (list!12865 lt!1084685)))))

(assert (=> d!879669 (= (lexList!1313 thiss!18206 rules!2135 (list!12865 lt!1084685)) lt!1085481)))

(declare-fun b!3210593 () Bool)

(assert (=> b!3210593 (= e!2001977 e!2001976)))

(declare-fun res!1306958 () Bool)

(assert (=> b!3210593 (= res!1306958 (< (size!27260 (_2!20924 lt!1085481)) (size!27260 (list!12865 lt!1084685))))))

(assert (=> b!3210593 (=> (not res!1306958) (not e!2001976))))

(assert (= (and d!879669 c!539252) b!3210592))

(assert (= (and d!879669 (not c!539252)) b!3210591))

(assert (= (and d!879669 c!539253) b!3210593))

(assert (= (and d!879669 (not c!539253)) b!3210590))

(assert (= (and b!3210593 res!1306958) b!3210589))

(declare-fun m!3479439 () Bool)

(assert (=> b!3210589 m!3479439))

(declare-fun m!3479441 () Bool)

(assert (=> b!3210592 m!3479441))

(declare-fun m!3479443 () Bool)

(assert (=> d!879669 m!3479443))

(assert (=> d!879669 m!3478335))

(declare-fun m!3479445 () Bool)

(assert (=> d!879669 m!3479445))

(declare-fun m!3479447 () Bool)

(assert (=> b!3210593 m!3479447))

(assert (=> b!3210593 m!3478335))

(declare-fun m!3479449 () Bool)

(assert (=> b!3210593 m!3479449))

(assert (=> b!3210044 d!879669))

(declare-fun d!879671 () Bool)

(assert (=> d!879671 (= (list!12865 lt!1084685) (list!12868 (c!538931 lt!1084685)))))

(declare-fun bs!541657 () Bool)

(assert (= bs!541657 d!879671))

(declare-fun m!3479451 () Bool)

(assert (=> bs!541657 m!3479451))

(assert (=> b!3210044 d!879671))

(declare-fun b!3210594 () Bool)

(declare-fun res!1306964 () Bool)

(declare-fun e!2001983 () Bool)

(assert (=> b!3210594 (=> res!1306964 e!2001983)))

(assert (=> b!3210594 (= res!1306964 (not (isEmpty!20266 (tail!5212 (tail!5212 lt!1084696)))))))

(declare-fun b!3210595 () Bool)

(declare-fun res!1306960 () Bool)

(declare-fun e!2001984 () Bool)

(assert (=> b!3210595 (=> (not res!1306960) (not e!2001984))))

(assert (=> b!3210595 (= res!1306960 (isEmpty!20266 (tail!5212 (tail!5212 lt!1084696))))))

(declare-fun b!3210596 () Bool)

(declare-fun e!2001980 () Bool)

(assert (=> b!3210596 (= e!2001980 e!2001983)))

(declare-fun res!1306965 () Bool)

(assert (=> b!3210596 (=> res!1306965 e!2001983)))

(declare-fun call!232290 () Bool)

(assert (=> b!3210596 (= res!1306965 call!232290)))

(declare-fun b!3210597 () Bool)

(declare-fun res!1306963 () Bool)

(declare-fun e!2001985 () Bool)

(assert (=> b!3210597 (=> res!1306963 e!2001985)))

(assert (=> b!3210597 (= res!1306963 (not ((_ is ElementMatch!9983) (derivativeStep!2951 (regex!5224 lt!1084661) (head!7043 lt!1084696)))))))

(declare-fun e!2001979 () Bool)

(assert (=> b!3210597 (= e!2001979 e!2001985)))

(declare-fun b!3210598 () Bool)

(declare-fun e!2001981 () Bool)

(assert (=> b!3210598 (= e!2001981 (matchR!4617 (derivativeStep!2951 (derivativeStep!2951 (regex!5224 lt!1084661) (head!7043 lt!1084696)) (head!7043 (tail!5212 lt!1084696))) (tail!5212 (tail!5212 lt!1084696))))))

(declare-fun b!3210599 () Bool)

(assert (=> b!3210599 (= e!2001985 e!2001980)))

(declare-fun res!1306959 () Bool)

(assert (=> b!3210599 (=> (not res!1306959) (not e!2001980))))

(declare-fun lt!1085482 () Bool)

(assert (=> b!3210599 (= res!1306959 (not lt!1085482))))

(declare-fun b!3210600 () Bool)

(declare-fun res!1306961 () Bool)

(assert (=> b!3210600 (=> res!1306961 e!2001985)))

(assert (=> b!3210600 (= res!1306961 e!2001984)))

(declare-fun res!1306966 () Bool)

(assert (=> b!3210600 (=> (not res!1306966) (not e!2001984))))

(assert (=> b!3210600 (= res!1306966 lt!1085482)))

(declare-fun b!3210601 () Bool)

(assert (=> b!3210601 (= e!2001981 (nullable!3398 (derivativeStep!2951 (regex!5224 lt!1084661) (head!7043 lt!1084696))))))

(declare-fun d!879673 () Bool)

(declare-fun e!2001982 () Bool)

(assert (=> d!879673 e!2001982))

(declare-fun c!539255 () Bool)

(assert (=> d!879673 (= c!539255 ((_ is EmptyExpr!9983) (derivativeStep!2951 (regex!5224 lt!1084661) (head!7043 lt!1084696))))))

(assert (=> d!879673 (= lt!1085482 e!2001981)))

(declare-fun c!539256 () Bool)

(assert (=> d!879673 (= c!539256 (isEmpty!20266 (tail!5212 lt!1084696)))))

(assert (=> d!879673 (validRegex!4552 (derivativeStep!2951 (regex!5224 lt!1084661) (head!7043 lt!1084696)))))

(assert (=> d!879673 (= (matchR!4617 (derivativeStep!2951 (regex!5224 lt!1084661) (head!7043 lt!1084696)) (tail!5212 lt!1084696)) lt!1085482)))

(declare-fun bm!232285 () Bool)

(assert (=> bm!232285 (= call!232290 (isEmpty!20266 (tail!5212 lt!1084696)))))

(declare-fun b!3210602 () Bool)

(assert (=> b!3210602 (= e!2001983 (not (= (head!7043 (tail!5212 lt!1084696)) (c!538930 (derivativeStep!2951 (regex!5224 lt!1084661) (head!7043 lt!1084696))))))))

(declare-fun b!3210603 () Bool)

(assert (=> b!3210603 (= e!2001984 (= (head!7043 (tail!5212 lt!1084696)) (c!538930 (derivativeStep!2951 (regex!5224 lt!1084661) (head!7043 lt!1084696)))))))

(declare-fun b!3210604 () Bool)

(assert (=> b!3210604 (= e!2001979 (not lt!1085482))))

(declare-fun b!3210605 () Bool)

(assert (=> b!3210605 (= e!2001982 (= lt!1085482 call!232290))))

(declare-fun b!3210606 () Bool)

(declare-fun res!1306962 () Bool)

(assert (=> b!3210606 (=> (not res!1306962) (not e!2001984))))

(assert (=> b!3210606 (= res!1306962 (not call!232290))))

(declare-fun b!3210607 () Bool)

(assert (=> b!3210607 (= e!2001982 e!2001979)))

(declare-fun c!539254 () Bool)

(assert (=> b!3210607 (= c!539254 ((_ is EmptyLang!9983) (derivativeStep!2951 (regex!5224 lt!1084661) (head!7043 lt!1084696))))))

(assert (= (and d!879673 c!539256) b!3210601))

(assert (= (and d!879673 (not c!539256)) b!3210598))

(assert (= (and d!879673 c!539255) b!3210605))

(assert (= (and d!879673 (not c!539255)) b!3210607))

(assert (= (and b!3210607 c!539254) b!3210604))

(assert (= (and b!3210607 (not c!539254)) b!3210597))

(assert (= (and b!3210597 (not res!1306963)) b!3210600))

(assert (= (and b!3210600 res!1306966) b!3210606))

(assert (= (and b!3210606 res!1306962) b!3210595))

(assert (= (and b!3210595 res!1306960) b!3210603))

(assert (= (and b!3210600 (not res!1306961)) b!3210599))

(assert (= (and b!3210599 res!1306959) b!3210596))

(assert (= (and b!3210596 (not res!1306965)) b!3210594))

(assert (= (and b!3210594 (not res!1306964)) b!3210602))

(assert (= (or b!3210605 b!3210596 b!3210606) bm!232285))

(assert (=> b!3210601 m!3477055))

(declare-fun m!3479453 () Bool)

(assert (=> b!3210601 m!3479453))

(assert (=> b!3210598 m!3476949))

(declare-fun m!3479455 () Bool)

(assert (=> b!3210598 m!3479455))

(assert (=> b!3210598 m!3477055))

(assert (=> b!3210598 m!3479455))

(declare-fun m!3479457 () Bool)

(assert (=> b!3210598 m!3479457))

(assert (=> b!3210598 m!3476949))

(declare-fun m!3479459 () Bool)

(assert (=> b!3210598 m!3479459))

(assert (=> b!3210598 m!3479457))

(assert (=> b!3210598 m!3479459))

(declare-fun m!3479461 () Bool)

(assert (=> b!3210598 m!3479461))

(assert (=> b!3210602 m!3476949))

(assert (=> b!3210602 m!3479455))

(assert (=> b!3210595 m!3476949))

(assert (=> b!3210595 m!3479459))

(assert (=> b!3210595 m!3479459))

(declare-fun m!3479463 () Bool)

(assert (=> b!3210595 m!3479463))

(assert (=> d!879673 m!3476949))

(assert (=> d!879673 m!3476953))

(assert (=> d!879673 m!3477055))

(declare-fun m!3479465 () Bool)

(assert (=> d!879673 m!3479465))

(assert (=> bm!232285 m!3476949))

(assert (=> bm!232285 m!3476953))

(assert (=> b!3210603 m!3476949))

(assert (=> b!3210603 m!3479455))

(assert (=> b!3210594 m!3476949))

(assert (=> b!3210594 m!3479459))

(assert (=> b!3210594 m!3479459))

(assert (=> b!3210594 m!3479463))

(assert (=> b!3209314 d!879673))

(declare-fun bm!232310 () Bool)

(declare-fun call!232315 () Regex!9983)

(declare-fun call!232318 () Regex!9983)

(assert (=> bm!232310 (= call!232315 call!232318)))

(declare-fun bm!232311 () Bool)

(declare-fun call!232316 () Regex!9983)

(assert (=> bm!232311 (= call!232318 call!232316)))

(declare-fun e!2002013 () Regex!9983)

(declare-fun b!3210657 () Bool)

(declare-fun call!232317 () Regex!9983)

(assert (=> b!3210657 (= e!2002013 (Union!9983 (Concat!15437 call!232315 (regTwo!20478 (regex!5224 lt!1084661))) call!232317))))

(declare-fun b!3210658 () Bool)

(declare-fun e!2002015 () Regex!9983)

(assert (=> b!3210658 (= e!2002015 (Concat!15437 call!232318 (regex!5224 lt!1084661)))))

(declare-fun b!3210659 () Bool)

(declare-fun c!539282 () Bool)

(assert (=> b!3210659 (= c!539282 ((_ is Union!9983) (regex!5224 lt!1084661)))))

(declare-fun e!2002016 () Regex!9983)

(declare-fun e!2002014 () Regex!9983)

(assert (=> b!3210659 (= e!2002016 e!2002014)))

(declare-fun bm!232312 () Bool)

(declare-fun c!539283 () Bool)

(assert (=> bm!232312 (= call!232316 (derivativeStep!2951 (ite c!539282 (regTwo!20479 (regex!5224 lt!1084661)) (ite c!539283 (reg!10312 (regex!5224 lt!1084661)) (regOne!20478 (regex!5224 lt!1084661)))) (head!7043 lt!1084696)))))

(declare-fun b!3210660 () Bool)

(assert (=> b!3210660 (= e!2002014 e!2002015)))

(assert (=> b!3210660 (= c!539283 ((_ is Star!9983) (regex!5224 lt!1084661)))))

(declare-fun b!3210661 () Bool)

(assert (=> b!3210661 (= e!2002014 (Union!9983 call!232317 call!232316))))

(declare-fun b!3210662 () Bool)

(assert (=> b!3210662 (= e!2002016 (ite (= (head!7043 lt!1084696) (c!538930 (regex!5224 lt!1084661))) EmptyExpr!9983 EmptyLang!9983))))

(declare-fun d!879675 () Bool)

(declare-fun lt!1085541 () Regex!9983)

(assert (=> d!879675 (validRegex!4552 lt!1085541)))

(declare-fun e!2002012 () Regex!9983)

(assert (=> d!879675 (= lt!1085541 e!2002012)))

(declare-fun c!539279 () Bool)

(assert (=> d!879675 (= c!539279 (or ((_ is EmptyExpr!9983) (regex!5224 lt!1084661)) ((_ is EmptyLang!9983) (regex!5224 lt!1084661))))))

(assert (=> d!879675 (validRegex!4552 (regex!5224 lt!1084661))))

(assert (=> d!879675 (= (derivativeStep!2951 (regex!5224 lt!1084661) (head!7043 lt!1084696)) lt!1085541)))

(declare-fun b!3210656 () Bool)

(assert (=> b!3210656 (= e!2002012 EmptyLang!9983)))

(declare-fun b!3210663 () Bool)

(assert (=> b!3210663 (= e!2002013 (Union!9983 (Concat!15437 call!232315 (regTwo!20478 (regex!5224 lt!1084661))) EmptyLang!9983))))

(declare-fun b!3210664 () Bool)

(assert (=> b!3210664 (= e!2002012 e!2002016)))

(declare-fun c!539280 () Bool)

(assert (=> b!3210664 (= c!539280 ((_ is ElementMatch!9983) (regex!5224 lt!1084661)))))

(declare-fun bm!232313 () Bool)

(assert (=> bm!232313 (= call!232317 (derivativeStep!2951 (ite c!539282 (regOne!20479 (regex!5224 lt!1084661)) (regTwo!20478 (regex!5224 lt!1084661))) (head!7043 lt!1084696)))))

(declare-fun b!3210665 () Bool)

(declare-fun c!539281 () Bool)

(assert (=> b!3210665 (= c!539281 (nullable!3398 (regOne!20478 (regex!5224 lt!1084661))))))

(assert (=> b!3210665 (= e!2002015 e!2002013)))

(assert (= (and d!879675 c!539279) b!3210656))

(assert (= (and d!879675 (not c!539279)) b!3210664))

(assert (= (and b!3210664 c!539280) b!3210662))

(assert (= (and b!3210664 (not c!539280)) b!3210659))

(assert (= (and b!3210659 c!539282) b!3210661))

(assert (= (and b!3210659 (not c!539282)) b!3210660))

(assert (= (and b!3210660 c!539283) b!3210658))

(assert (= (and b!3210660 (not c!539283)) b!3210665))

(assert (= (and b!3210665 c!539281) b!3210657))

(assert (= (and b!3210665 (not c!539281)) b!3210663))

(assert (= (or b!3210657 b!3210663) bm!232310))

(assert (= (or b!3210658 bm!232310) bm!232311))

(assert (= (or b!3210661 b!3210657) bm!232313))

(assert (= (or b!3210661 bm!232311) bm!232312))

(assert (=> bm!232312 m!3476851))

(declare-fun m!3479467 () Bool)

(assert (=> bm!232312 m!3479467))

(declare-fun m!3479469 () Bool)

(assert (=> d!879675 m!3479469))

(assert (=> d!879675 m!3477059))

(assert (=> bm!232313 m!3476851))

(declare-fun m!3479471 () Bool)

(assert (=> bm!232313 m!3479471))

(declare-fun m!3479473 () Bool)

(assert (=> b!3210665 m!3479473))

(assert (=> b!3209314 d!879675))

(assert (=> b!3209314 d!879129))

(declare-fun d!879677 () Bool)

(assert (=> d!879677 (= (tail!5212 lt!1084696) (t!238512 lt!1084696))))

(assert (=> b!3209314 d!879677))

(declare-fun d!879679 () Bool)

(assert (=> d!879679 (= (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494)))))) (v!35697 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494)))))))))

(assert (=> b!3209764 d!879679))

(declare-fun b!3210666 () Bool)

(declare-fun res!1306976 () Bool)

(declare-fun e!2002021 () Bool)

(assert (=> b!3210666 (=> res!1306976 e!2002021)))

(assert (=> b!3210666 (= res!1306976 (not (isEmpty!20266 (tail!5212 (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494))))))))))

(declare-fun b!3210667 () Bool)

(declare-fun res!1306972 () Bool)

(declare-fun e!2002022 () Bool)

(assert (=> b!3210667 (=> (not res!1306972) (not e!2002022))))

(assert (=> b!3210667 (= res!1306972 (isEmpty!20266 (tail!5212 (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494)))))))))

(declare-fun b!3210668 () Bool)

(declare-fun e!2002018 () Bool)

(assert (=> b!3210668 (= e!2002018 e!2002021)))

(declare-fun res!1306977 () Bool)

(assert (=> b!3210668 (=> res!1306977 e!2002021)))

(declare-fun call!232319 () Bool)

(assert (=> b!3210668 (= res!1306977 call!232319)))

(declare-fun b!3210669 () Bool)

(declare-fun res!1306975 () Bool)

(declare-fun e!2002023 () Bool)

(assert (=> b!3210669 (=> res!1306975 e!2002023)))

(assert (=> b!3210669 (= res!1306975 (not ((_ is ElementMatch!9983) (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494))))))))))))

(declare-fun e!2002017 () Bool)

(assert (=> b!3210669 (= e!2002017 e!2002023)))

(declare-fun e!2002019 () Bool)

(declare-fun b!3210670 () Bool)

(assert (=> b!3210670 (= e!2002019 (matchR!4617 (derivativeStep!2951 (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (head!7043 (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494)))))) (tail!5212 (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494)))))))))

(declare-fun b!3210671 () Bool)

(assert (=> b!3210671 (= e!2002023 e!2002018)))

(declare-fun res!1306971 () Bool)

(assert (=> b!3210671 (=> (not res!1306971) (not e!2002018))))

(declare-fun lt!1085542 () Bool)

(assert (=> b!3210671 (= res!1306971 (not lt!1085542))))

(declare-fun b!3210672 () Bool)

(declare-fun res!1306973 () Bool)

(assert (=> b!3210672 (=> res!1306973 e!2002023)))

(assert (=> b!3210672 (= res!1306973 e!2002022)))

(declare-fun res!1306978 () Bool)

(assert (=> b!3210672 (=> (not res!1306978) (not e!2002022))))

(assert (=> b!3210672 (= res!1306978 lt!1085542)))

(declare-fun b!3210673 () Bool)

(assert (=> b!3210673 (= e!2002019 (nullable!3398 (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494)))))))))))

(declare-fun d!879681 () Bool)

(declare-fun e!2002020 () Bool)

(assert (=> d!879681 e!2002020))

(declare-fun c!539285 () Bool)

(assert (=> d!879681 (= c!539285 ((_ is EmptyExpr!9983) (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494)))))))))))

(assert (=> d!879681 (= lt!1085542 e!2002019)))

(declare-fun c!539286 () Bool)

(assert (=> d!879681 (= c!539286 (isEmpty!20266 (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494))))))))

(assert (=> d!879681 (validRegex!4552 (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494))))))))))

(assert (=> d!879681 (= (matchR!4617 (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494))))) lt!1085542)))

(declare-fun bm!232314 () Bool)

(assert (=> bm!232314 (= call!232319 (isEmpty!20266 (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494))))))))

(declare-fun b!3210674 () Bool)

(assert (=> b!3210674 (= e!2002021 (not (= (head!7043 (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494))))) (c!538930 (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494)))))))))))))

(declare-fun b!3210675 () Bool)

(assert (=> b!3210675 (= e!2002022 (= (head!7043 (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494))))) (c!538930 (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494))))))))))))

(declare-fun b!3210676 () Bool)

(assert (=> b!3210676 (= e!2002017 (not lt!1085542))))

(declare-fun b!3210677 () Bool)

(assert (=> b!3210677 (= e!2002020 (= lt!1085542 call!232319))))

(declare-fun b!3210678 () Bool)

(declare-fun res!1306974 () Bool)

(assert (=> b!3210678 (=> (not res!1306974) (not e!2002022))))

(assert (=> b!3210678 (= res!1306974 (not call!232319))))

(declare-fun b!3210679 () Bool)

(assert (=> b!3210679 (= e!2002020 e!2002017)))

(declare-fun c!539284 () Bool)

(assert (=> b!3210679 (= c!539284 ((_ is EmptyLang!9983) (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494)))))))))))

(assert (= (and d!879681 c!539286) b!3210673))

(assert (= (and d!879681 (not c!539286)) b!3210670))

(assert (= (and d!879681 c!539285) b!3210677))

(assert (= (and d!879681 (not c!539285)) b!3210679))

(assert (= (and b!3210679 c!539284) b!3210676))

(assert (= (and b!3210679 (not c!539284)) b!3210669))

(assert (= (and b!3210669 (not res!1306975)) b!3210672))

(assert (= (and b!3210672 res!1306978) b!3210678))

(assert (= (and b!3210678 res!1306974) b!3210667))

(assert (= (and b!3210667 res!1306972) b!3210675))

(assert (= (and b!3210672 (not res!1306973)) b!3210671))

(assert (= (and b!3210671 res!1306971) b!3210668))

(assert (= (and b!3210668 (not res!1306977)) b!3210666))

(assert (= (and b!3210666 (not res!1306976)) b!3210674))

(assert (= (or b!3210677 b!3210668 b!3210678) bm!232314))

(declare-fun m!3479475 () Bool)

(assert (=> b!3210673 m!3479475))

(assert (=> b!3210670 m!3476703))

(declare-fun m!3479477 () Bool)

(assert (=> b!3210670 m!3479477))

(assert (=> b!3210670 m!3479477))

(declare-fun m!3479479 () Bool)

(assert (=> b!3210670 m!3479479))

(assert (=> b!3210670 m!3476703))

(declare-fun m!3479481 () Bool)

(assert (=> b!3210670 m!3479481))

(assert (=> b!3210670 m!3479479))

(assert (=> b!3210670 m!3479481))

(declare-fun m!3479483 () Bool)

(assert (=> b!3210670 m!3479483))

(assert (=> b!3210674 m!3476703))

(assert (=> b!3210674 m!3479477))

(assert (=> b!3210667 m!3476703))

(assert (=> b!3210667 m!3479481))

(assert (=> b!3210667 m!3479481))

(declare-fun m!3479485 () Bool)

(assert (=> b!3210667 m!3479485))

(assert (=> d!879681 m!3476703))

(declare-fun m!3479487 () Bool)

(assert (=> d!879681 m!3479487))

(declare-fun m!3479489 () Bool)

(assert (=> d!879681 m!3479489))

(assert (=> bm!232314 m!3476703))

(assert (=> bm!232314 m!3479487))

(assert (=> b!3210675 m!3476703))

(assert (=> b!3210675 m!3479477))

(assert (=> b!3210666 m!3476703))

(assert (=> b!3210666 m!3479481))

(assert (=> b!3210666 m!3479481))

(assert (=> b!3210666 m!3479485))

(assert (=> b!3209764 d!879681))

(assert (=> b!3209764 d!879295))

(assert (=> b!3209764 d!879305))

(assert (=> b!3209764 d!879191))

(declare-fun b!3210680 () Bool)

(declare-fun res!1306984 () Bool)

(declare-fun e!2002028 () Bool)

(assert (=> b!3210680 (=> res!1306984 e!2002028)))

(assert (=> b!3210680 (= res!1306984 (not (isEmpty!20266 (tail!5212 (tail!5212 lt!1084696)))))))

(declare-fun b!3210681 () Bool)

(declare-fun res!1306980 () Bool)

(declare-fun e!2002029 () Bool)

(assert (=> b!3210681 (=> (not res!1306980) (not e!2002029))))

(assert (=> b!3210681 (= res!1306980 (isEmpty!20266 (tail!5212 (tail!5212 lt!1084696))))))

(declare-fun b!3210682 () Bool)

(declare-fun e!2002025 () Bool)

(assert (=> b!3210682 (= e!2002025 e!2002028)))

(declare-fun res!1306985 () Bool)

(assert (=> b!3210682 (=> res!1306985 e!2002028)))

(declare-fun call!232320 () Bool)

(assert (=> b!3210682 (= res!1306985 call!232320)))

(declare-fun b!3210683 () Bool)

(declare-fun res!1306983 () Bool)

(declare-fun e!2002030 () Bool)

(assert (=> b!3210683 (=> res!1306983 e!2002030)))

(assert (=> b!3210683 (= res!1306983 (not ((_ is ElementMatch!9983) (derivativeStep!2951 (regex!5224 (rule!7664 separatorToken!241)) (head!7043 lt!1084696)))))))

(declare-fun e!2002024 () Bool)

(assert (=> b!3210683 (= e!2002024 e!2002030)))

(declare-fun b!3210684 () Bool)

(declare-fun e!2002026 () Bool)

(assert (=> b!3210684 (= e!2002026 (matchR!4617 (derivativeStep!2951 (derivativeStep!2951 (regex!5224 (rule!7664 separatorToken!241)) (head!7043 lt!1084696)) (head!7043 (tail!5212 lt!1084696))) (tail!5212 (tail!5212 lt!1084696))))))

(declare-fun b!3210685 () Bool)

(assert (=> b!3210685 (= e!2002030 e!2002025)))

(declare-fun res!1306979 () Bool)

(assert (=> b!3210685 (=> (not res!1306979) (not e!2002025))))

(declare-fun lt!1085543 () Bool)

(assert (=> b!3210685 (= res!1306979 (not lt!1085543))))

(declare-fun b!3210686 () Bool)

(declare-fun res!1306981 () Bool)

(assert (=> b!3210686 (=> res!1306981 e!2002030)))

(assert (=> b!3210686 (= res!1306981 e!2002029)))

(declare-fun res!1306986 () Bool)

(assert (=> b!3210686 (=> (not res!1306986) (not e!2002029))))

(assert (=> b!3210686 (= res!1306986 lt!1085543)))

(declare-fun b!3210687 () Bool)

(assert (=> b!3210687 (= e!2002026 (nullable!3398 (derivativeStep!2951 (regex!5224 (rule!7664 separatorToken!241)) (head!7043 lt!1084696))))))

(declare-fun d!879683 () Bool)

(declare-fun e!2002027 () Bool)

(assert (=> d!879683 e!2002027))

(declare-fun c!539288 () Bool)

(assert (=> d!879683 (= c!539288 ((_ is EmptyExpr!9983) (derivativeStep!2951 (regex!5224 (rule!7664 separatorToken!241)) (head!7043 lt!1084696))))))

(assert (=> d!879683 (= lt!1085543 e!2002026)))

(declare-fun c!539289 () Bool)

(assert (=> d!879683 (= c!539289 (isEmpty!20266 (tail!5212 lt!1084696)))))

(assert (=> d!879683 (validRegex!4552 (derivativeStep!2951 (regex!5224 (rule!7664 separatorToken!241)) (head!7043 lt!1084696)))))

(assert (=> d!879683 (= (matchR!4617 (derivativeStep!2951 (regex!5224 (rule!7664 separatorToken!241)) (head!7043 lt!1084696)) (tail!5212 lt!1084696)) lt!1085543)))

(declare-fun bm!232315 () Bool)

(assert (=> bm!232315 (= call!232320 (isEmpty!20266 (tail!5212 lt!1084696)))))

(declare-fun b!3210688 () Bool)

(assert (=> b!3210688 (= e!2002028 (not (= (head!7043 (tail!5212 lt!1084696)) (c!538930 (derivativeStep!2951 (regex!5224 (rule!7664 separatorToken!241)) (head!7043 lt!1084696))))))))

(declare-fun b!3210689 () Bool)

(assert (=> b!3210689 (= e!2002029 (= (head!7043 (tail!5212 lt!1084696)) (c!538930 (derivativeStep!2951 (regex!5224 (rule!7664 separatorToken!241)) (head!7043 lt!1084696)))))))

(declare-fun b!3210690 () Bool)

(assert (=> b!3210690 (= e!2002024 (not lt!1085543))))

(declare-fun b!3210691 () Bool)

(assert (=> b!3210691 (= e!2002027 (= lt!1085543 call!232320))))

(declare-fun b!3210692 () Bool)

(declare-fun res!1306982 () Bool)

(assert (=> b!3210692 (=> (not res!1306982) (not e!2002029))))

(assert (=> b!3210692 (= res!1306982 (not call!232320))))

(declare-fun b!3210693 () Bool)

(assert (=> b!3210693 (= e!2002027 e!2002024)))

(declare-fun c!539287 () Bool)

(assert (=> b!3210693 (= c!539287 ((_ is EmptyLang!9983) (derivativeStep!2951 (regex!5224 (rule!7664 separatorToken!241)) (head!7043 lt!1084696))))))

(assert (= (and d!879683 c!539289) b!3210687))

(assert (= (and d!879683 (not c!539289)) b!3210684))

(assert (= (and d!879683 c!539288) b!3210691))

(assert (= (and d!879683 (not c!539288)) b!3210693))

(assert (= (and b!3210693 c!539287) b!3210690))

(assert (= (and b!3210693 (not c!539287)) b!3210683))

(assert (= (and b!3210683 (not res!1306983)) b!3210686))

(assert (= (and b!3210686 res!1306986) b!3210692))

(assert (= (and b!3210692 res!1306982) b!3210681))

(assert (= (and b!3210681 res!1306980) b!3210689))

(assert (= (and b!3210686 (not res!1306981)) b!3210685))

(assert (= (and b!3210685 res!1306979) b!3210682))

(assert (= (and b!3210682 (not res!1306985)) b!3210680))

(assert (= (and b!3210680 (not res!1306984)) b!3210688))

(assert (= (or b!3210691 b!3210682 b!3210692) bm!232315))

(assert (=> b!3210687 m!3476947))

(declare-fun m!3479491 () Bool)

(assert (=> b!3210687 m!3479491))

(assert (=> b!3210684 m!3476949))

(assert (=> b!3210684 m!3479455))

(assert (=> b!3210684 m!3476947))

(assert (=> b!3210684 m!3479455))

(declare-fun m!3479493 () Bool)

(assert (=> b!3210684 m!3479493))

(assert (=> b!3210684 m!3476949))

(assert (=> b!3210684 m!3479459))

(assert (=> b!3210684 m!3479493))

(assert (=> b!3210684 m!3479459))

(declare-fun m!3479495 () Bool)

(assert (=> b!3210684 m!3479495))

(assert (=> b!3210688 m!3476949))

(assert (=> b!3210688 m!3479455))

(assert (=> b!3210681 m!3476949))

(assert (=> b!3210681 m!3479459))

(assert (=> b!3210681 m!3479459))

(assert (=> b!3210681 m!3479463))

(assert (=> d!879683 m!3476949))

(assert (=> d!879683 m!3476953))

(assert (=> d!879683 m!3476947))

(declare-fun m!3479497 () Bool)

(assert (=> d!879683 m!3479497))

(assert (=> bm!232315 m!3476949))

(assert (=> bm!232315 m!3476953))

(assert (=> b!3210689 m!3476949))

(assert (=> b!3210689 m!3479455))

(assert (=> b!3210680 m!3476949))

(assert (=> b!3210680 m!3479459))

(assert (=> b!3210680 m!3479459))

(assert (=> b!3210680 m!3479463))

(assert (=> b!3209229 d!879683))

(declare-fun bm!232316 () Bool)

(declare-fun call!232321 () Regex!9983)

(declare-fun call!232324 () Regex!9983)

(assert (=> bm!232316 (= call!232321 call!232324)))

(declare-fun bm!232317 () Bool)

(declare-fun call!232322 () Regex!9983)

(assert (=> bm!232317 (= call!232324 call!232322)))

(declare-fun e!2002032 () Regex!9983)

(declare-fun call!232323 () Regex!9983)

(declare-fun b!3210695 () Bool)

(assert (=> b!3210695 (= e!2002032 (Union!9983 (Concat!15437 call!232321 (regTwo!20478 (regex!5224 (rule!7664 separatorToken!241)))) call!232323))))

(declare-fun b!3210696 () Bool)

(declare-fun e!2002034 () Regex!9983)

(assert (=> b!3210696 (= e!2002034 (Concat!15437 call!232324 (regex!5224 (rule!7664 separatorToken!241))))))

(declare-fun b!3210697 () Bool)

(declare-fun c!539293 () Bool)

(assert (=> b!3210697 (= c!539293 ((_ is Union!9983) (regex!5224 (rule!7664 separatorToken!241))))))

(declare-fun e!2002035 () Regex!9983)

(declare-fun e!2002033 () Regex!9983)

(assert (=> b!3210697 (= e!2002035 e!2002033)))

(declare-fun c!539294 () Bool)

(declare-fun bm!232318 () Bool)

(assert (=> bm!232318 (= call!232322 (derivativeStep!2951 (ite c!539293 (regTwo!20479 (regex!5224 (rule!7664 separatorToken!241))) (ite c!539294 (reg!10312 (regex!5224 (rule!7664 separatorToken!241))) (regOne!20478 (regex!5224 (rule!7664 separatorToken!241))))) (head!7043 lt!1084696)))))

(declare-fun b!3210698 () Bool)

(assert (=> b!3210698 (= e!2002033 e!2002034)))

(assert (=> b!3210698 (= c!539294 ((_ is Star!9983) (regex!5224 (rule!7664 separatorToken!241))))))

(declare-fun b!3210699 () Bool)

(assert (=> b!3210699 (= e!2002033 (Union!9983 call!232323 call!232322))))

(declare-fun b!3210700 () Bool)

(assert (=> b!3210700 (= e!2002035 (ite (= (head!7043 lt!1084696) (c!538930 (regex!5224 (rule!7664 separatorToken!241)))) EmptyExpr!9983 EmptyLang!9983))))

(declare-fun d!879685 () Bool)

(declare-fun lt!1085544 () Regex!9983)

(assert (=> d!879685 (validRegex!4552 lt!1085544)))

(declare-fun e!2002031 () Regex!9983)

(assert (=> d!879685 (= lt!1085544 e!2002031)))

(declare-fun c!539290 () Bool)

(assert (=> d!879685 (= c!539290 (or ((_ is EmptyExpr!9983) (regex!5224 (rule!7664 separatorToken!241))) ((_ is EmptyLang!9983) (regex!5224 (rule!7664 separatorToken!241)))))))

(assert (=> d!879685 (validRegex!4552 (regex!5224 (rule!7664 separatorToken!241)))))

(assert (=> d!879685 (= (derivativeStep!2951 (regex!5224 (rule!7664 separatorToken!241)) (head!7043 lt!1084696)) lt!1085544)))

(declare-fun b!3210694 () Bool)

(assert (=> b!3210694 (= e!2002031 EmptyLang!9983)))

(declare-fun b!3210701 () Bool)

(assert (=> b!3210701 (= e!2002032 (Union!9983 (Concat!15437 call!232321 (regTwo!20478 (regex!5224 (rule!7664 separatorToken!241)))) EmptyLang!9983))))

(declare-fun b!3210702 () Bool)

(assert (=> b!3210702 (= e!2002031 e!2002035)))

(declare-fun c!539291 () Bool)

(assert (=> b!3210702 (= c!539291 ((_ is ElementMatch!9983) (regex!5224 (rule!7664 separatorToken!241))))))

(declare-fun bm!232319 () Bool)

(assert (=> bm!232319 (= call!232323 (derivativeStep!2951 (ite c!539293 (regOne!20479 (regex!5224 (rule!7664 separatorToken!241))) (regTwo!20478 (regex!5224 (rule!7664 separatorToken!241)))) (head!7043 lt!1084696)))))

(declare-fun b!3210703 () Bool)

(declare-fun c!539292 () Bool)

(assert (=> b!3210703 (= c!539292 (nullable!3398 (regOne!20478 (regex!5224 (rule!7664 separatorToken!241)))))))

(assert (=> b!3210703 (= e!2002034 e!2002032)))

(assert (= (and d!879685 c!539290) b!3210694))

(assert (= (and d!879685 (not c!539290)) b!3210702))

(assert (= (and b!3210702 c!539291) b!3210700))

(assert (= (and b!3210702 (not c!539291)) b!3210697))

(assert (= (and b!3210697 c!539293) b!3210699))

(assert (= (and b!3210697 (not c!539293)) b!3210698))

(assert (= (and b!3210698 c!539294) b!3210696))

(assert (= (and b!3210698 (not c!539294)) b!3210703))

(assert (= (and b!3210703 c!539292) b!3210695))

(assert (= (and b!3210703 (not c!539292)) b!3210701))

(assert (= (or b!3210695 b!3210701) bm!232316))

(assert (= (or b!3210696 bm!232316) bm!232317))

(assert (= (or b!3210699 b!3210695) bm!232319))

(assert (= (or b!3210699 bm!232317) bm!232318))

(assert (=> bm!232318 m!3476851))

(declare-fun m!3479499 () Bool)

(assert (=> bm!232318 m!3479499))

(declare-fun m!3479501 () Bool)

(assert (=> d!879685 m!3479501))

(assert (=> d!879685 m!3476895))

(assert (=> bm!232319 m!3476851))

(declare-fun m!3479503 () Bool)

(assert (=> bm!232319 m!3479503))

(declare-fun m!3479505 () Bool)

(assert (=> b!3210703 m!3479505))

(assert (=> b!3209229 d!879685))

(assert (=> b!3209229 d!879129))

(assert (=> b!3209229 d!879677))

(declare-fun d!879687 () Bool)

(declare-fun lt!1085545 () Int)

(assert (=> d!879687 (>= lt!1085545 0)))

(declare-fun e!2002036 () Int)

(assert (=> d!879687 (= lt!1085545 e!2002036)))

(declare-fun c!539295 () Bool)

(assert (=> d!879687 (= c!539295 ((_ is Nil!36177) (_2!20921 (get!11520 lt!1084882))))))

(assert (=> d!879687 (= (size!27260 (_2!20921 (get!11520 lt!1084882))) lt!1085545)))

(declare-fun b!3210704 () Bool)

(assert (=> b!3210704 (= e!2002036 0)))

(declare-fun b!3210705 () Bool)

(assert (=> b!3210705 (= e!2002036 (+ 1 (size!27260 (t!238512 (_2!20921 (get!11520 lt!1084882))))))))

(assert (= (and d!879687 c!539295) b!3210704))

(assert (= (and d!879687 (not c!539295)) b!3210705))

(declare-fun m!3479507 () Bool)

(assert (=> b!3210705 m!3479507))

(assert (=> b!3209665 d!879687))

(assert (=> b!3209665 d!879407))

(assert (=> b!3209665 d!879173))

(assert (=> b!3209749 d!879411))

(assert (=> b!3209749 d!879413))

(assert (=> b!3209749 d!879415))

(declare-fun d!879689 () Bool)

(declare-fun lt!1085546 () Bool)

(assert (=> d!879689 (= lt!1085546 (isEmpty!20266 (list!12865 (_2!20922 lt!1084803))))))

(assert (=> d!879689 (= lt!1085546 (isEmpty!20267 (c!538931 (_2!20922 lt!1084803))))))

(assert (=> d!879689 (= (isEmpty!20263 (_2!20922 lt!1084803)) lt!1085546)))

(declare-fun bs!541658 () Bool)

(assert (= bs!541658 d!879689))

(declare-fun m!3479509 () Bool)

(assert (=> bs!541658 m!3479509))

(assert (=> bs!541658 m!3479509))

(declare-fun m!3479511 () Bool)

(assert (=> bs!541658 m!3479511))

(declare-fun m!3479513 () Bool)

(assert (=> bs!541658 m!3479513))

(assert (=> b!3209429 d!879689))

(declare-fun d!879691 () Bool)

(declare-fun lt!1085547 () Bool)

(assert (=> d!879691 (= lt!1085547 (select (content!4888 (t!238512 (usedCharacters!540 (regex!5224 (rule!7664 separatorToken!241))))) lt!1084676))))

(declare-fun e!2002038 () Bool)

(assert (=> d!879691 (= lt!1085547 e!2002038)))

(declare-fun res!1306987 () Bool)

(assert (=> d!879691 (=> (not res!1306987) (not e!2002038))))

(assert (=> d!879691 (= res!1306987 ((_ is Cons!36177) (t!238512 (usedCharacters!540 (regex!5224 (rule!7664 separatorToken!241))))))))

(assert (=> d!879691 (= (contains!6461 (t!238512 (usedCharacters!540 (regex!5224 (rule!7664 separatorToken!241)))) lt!1084676) lt!1085547)))

(declare-fun b!3210706 () Bool)

(declare-fun e!2002037 () Bool)

(assert (=> b!3210706 (= e!2002038 e!2002037)))

(declare-fun res!1306988 () Bool)

(assert (=> b!3210706 (=> res!1306988 e!2002037)))

(assert (=> b!3210706 (= res!1306988 (= (h!41597 (t!238512 (usedCharacters!540 (regex!5224 (rule!7664 separatorToken!241))))) lt!1084676))))

(declare-fun b!3210707 () Bool)

(assert (=> b!3210707 (= e!2002037 (contains!6461 (t!238512 (t!238512 (usedCharacters!540 (regex!5224 (rule!7664 separatorToken!241))))) lt!1084676))))

(assert (= (and d!879691 res!1306987) b!3210706))

(assert (= (and b!3210706 (not res!1306988)) b!3210707))

(declare-fun m!3479515 () Bool)

(assert (=> d!879691 m!3479515))

(declare-fun m!3479517 () Bool)

(assert (=> d!879691 m!3479517))

(declare-fun m!3479519 () Bool)

(assert (=> b!3210707 m!3479519))

(assert (=> b!3209779 d!879691))

(assert (=> d!879107 d!879285))

(declare-fun d!879693 () Bool)

(assert (=> d!879693 (rulesProduceIndividualToken!2305 thiss!18206 rules!2135 (h!41599 tokens!494))))

(assert (=> d!879693 true))

(declare-fun _$77!806 () Unit!50642)

(assert (=> d!879693 (= (choose!18728 thiss!18206 rules!2135 tokens!494 (h!41599 tokens!494)) _$77!806)))

(declare-fun bs!541663 () Bool)

(assert (= bs!541663 d!879693))

(assert (=> bs!541663 m!3476743))

(assert (=> d!879107 d!879693))

(assert (=> d!879107 d!878957))

(assert (=> b!3210005 d!879125))

(declare-fun d!879745 () Bool)

(assert (=> d!879745 (= (list!12865 lt!1085068) (list!12868 (c!538931 lt!1085068)))))

(declare-fun bs!541664 () Bool)

(assert (= bs!541664 d!879745))

(declare-fun m!3479725 () Bool)

(assert (=> bs!541664 m!3479725))

(assert (=> d!879293 d!879745))

(declare-fun b!3210853 () Bool)

(declare-fun e!2002123 () Bool)

(declare-fun e!2002124 () Bool)

(assert (=> b!3210853 (= e!2002123 e!2002124)))

(declare-fun res!1307039 () Bool)

(assert (=> b!3210853 (= res!1307039 (not ((_ is Cons!36178) rules!2135)))))

(assert (=> b!3210853 (=> res!1307039 e!2002124)))

(declare-fun bm!232340 () Bool)

(declare-fun call!232345 () Bool)

(assert (=> bm!232340 (= call!232345 (ruleDisjointCharsFromAllFromOtherType!591 (h!41598 rules!2135) (t!238513 rules!2135)))))

(declare-fun b!3210854 () Bool)

(declare-fun e!2002122 () Bool)

(assert (=> b!3210854 (= e!2002122 call!232345)))

(declare-fun d!879747 () Bool)

(declare-fun c!539342 () Bool)

(assert (=> d!879747 (= c!539342 (and ((_ is Cons!36178) rules!2135) (not (= (isSeparator!5224 (h!41598 rules!2135)) (isSeparator!5224 (h!41598 rules!2135))))))))

(assert (=> d!879747 (= (ruleDisjointCharsFromAllFromOtherType!591 (h!41598 rules!2135) rules!2135) e!2002123)))

(declare-fun b!3210855 () Bool)

(assert (=> b!3210855 (= e!2002124 call!232345)))

(declare-fun b!3210856 () Bool)

(assert (=> b!3210856 (= e!2002123 e!2002122)))

(declare-fun res!1307038 () Bool)

(declare-fun rulesUseDisjointChars!271 (Rule!10248 Rule!10248) Bool)

(assert (=> b!3210856 (= res!1307038 (rulesUseDisjointChars!271 (h!41598 rules!2135) (h!41598 rules!2135)))))

(assert (=> b!3210856 (=> (not res!1307038) (not e!2002122))))

(assert (= (and d!879747 c!539342) b!3210856))

(assert (= (and d!879747 (not c!539342)) b!3210853))

(assert (= (and b!3210856 res!1307038) b!3210854))

(assert (= (and b!3210853 (not res!1307039)) b!3210855))

(assert (= (or b!3210854 b!3210855) bm!232340))

(declare-fun m!3479761 () Bool)

(assert (=> bm!232340 m!3479761))

(declare-fun m!3479763 () Bool)

(assert (=> b!3210856 m!3479763))

(assert (=> b!3210024 d!879747))

(declare-fun d!879759 () Bool)

(assert (=> d!879759 (= (isDefined!5554 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494)))))) (not (isEmpty!20270 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494))))))))))

(declare-fun bs!541669 () Bool)

(assert (= bs!541669 d!879759))

(assert (=> bs!541669 m!3476827))

(declare-fun m!3479765 () Bool)

(assert (=> bs!541669 m!3479765))

(assert (=> d!879147 d!879759))

(assert (=> d!879147 d!879191))

(declare-fun d!879761 () Bool)

(declare-fun e!2002144 () Bool)

(assert (=> d!879761 e!2002144))

(declare-fun res!1307054 () Bool)

(assert (=> d!879761 (=> (not res!1307054) (not e!2002144))))

(assert (=> d!879761 (= res!1307054 (isDefined!5554 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494)))))))))

(assert (=> d!879761 true))

(declare-fun _$52!1551 () Unit!50642)

(assert (=> d!879761 (= (choose!18730 thiss!18206 rules!2135 lt!1084664 (h!41599 (t!238514 tokens!494))) _$52!1551)))

(declare-fun b!3210892 () Bool)

(declare-fun res!1307055 () Bool)

(assert (=> b!3210892 (=> (not res!1307055) (not e!2002144))))

(assert (=> b!3210892 (= res!1307055 (matchR!4617 (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494))))))))

(declare-fun b!3210893 () Bool)

(assert (=> b!3210893 (= e!2002144 (= (rule!7664 (h!41599 (t!238514 tokens!494))) (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494))))))))))

(assert (= (and d!879761 res!1307054) b!3210892))

(assert (= (and b!3210892 res!1307055) b!3210893))

(assert (=> d!879761 m!3476827))

(assert (=> d!879761 m!3476827))

(assert (=> d!879761 m!3477769))

(assert (=> b!3210892 m!3476827))

(assert (=> b!3210892 m!3476827))

(assert (=> b!3210892 m!3477773))

(assert (=> b!3210892 m!3476691))

(assert (=> b!3210892 m!3476691))

(assert (=> b!3210892 m!3476703))

(assert (=> b!3210892 m!3476703))

(assert (=> b!3210892 m!3477775))

(assert (=> b!3210893 m!3476827))

(assert (=> b!3210893 m!3476827))

(assert (=> b!3210893 m!3477773))

(assert (=> d!879147 d!879761))

(assert (=> d!879147 d!879257))

(declare-fun d!879779 () Bool)

(assert (=> d!879779 (= (inv!49032 (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494))))) (= (mod (str.len (value!169343 (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494)))))) 2) 0))))

(assert (=> b!3210118 d!879779))

(declare-fun d!879781 () Bool)

(declare-fun res!1307057 () Bool)

(declare-fun e!2002149 () Bool)

(assert (=> d!879781 (=> (not res!1307057) (not e!2002149))))

(assert (=> d!879781 (= res!1307057 (semiInverseModEq!2155 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))))))

(assert (=> d!879781 (= (inv!49035 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) e!2002149)))

(declare-fun b!3210901 () Bool)

(assert (=> b!3210901 (= e!2002149 (equivClasses!2054 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))))))

(assert (= (and d!879781 res!1307057) b!3210901))

(declare-fun m!3479813 () Bool)

(assert (=> d!879781 m!3479813))

(declare-fun m!3479815 () Bool)

(assert (=> b!3210901 m!3479815))

(assert (=> b!3210118 d!879781))

(declare-fun d!879783 () Bool)

(assert (=> d!879783 (= (inv!16 (value!169344 separatorToken!241)) (= (charsToInt!0 (text!38625 (value!169344 separatorToken!241))) (value!169335 (value!169344 separatorToken!241))))))

(declare-fun bs!541672 () Bool)

(assert (= bs!541672 d!879783))

(declare-fun m!3479817 () Bool)

(assert (=> bs!541672 m!3479817))

(assert (=> b!3209858 d!879783))

(declare-fun d!879785 () Bool)

(declare-fun lt!1085659 () Int)

(assert (=> d!879785 (>= lt!1085659 0)))

(declare-fun e!2002150 () Int)

(assert (=> d!879785 (= lt!1085659 e!2002150)))

(declare-fun c!539356 () Bool)

(assert (=> d!879785 (= c!539356 ((_ is Nil!36177) (t!238512 lt!1084683)))))

(assert (=> d!879785 (= (size!27260 (t!238512 lt!1084683)) lt!1085659)))

(declare-fun b!3210902 () Bool)

(assert (=> b!3210902 (= e!2002150 0)))

(declare-fun b!3210903 () Bool)

(assert (=> b!3210903 (= e!2002150 (+ 1 (size!27260 (t!238512 (t!238512 lt!1084683)))))))

(assert (= (and d!879785 c!539356) b!3210902))

(assert (= (and d!879785 (not c!539356)) b!3210903))

(declare-fun m!3479819 () Bool)

(assert (=> b!3210903 m!3479819))

(assert (=> b!3209501 d!879785))

(declare-fun d!879787 () Bool)

(declare-fun res!1307062 () Bool)

(declare-fun e!2002152 () Bool)

(assert (=> d!879787 (=> res!1307062 e!2002152)))

(assert (=> d!879787 (= res!1307062 (not ((_ is Node!10824) (c!538932 lt!1084829))))))

(assert (=> d!879787 (= (isBalanced!3217 (c!538932 lt!1084829)) e!2002152)))

(declare-fun b!3210904 () Bool)

(declare-fun e!2002151 () Bool)

(assert (=> b!3210904 (= e!2002151 (not (isEmpty!20275 (right!28464 (c!538932 lt!1084829)))))))

(declare-fun b!3210905 () Bool)

(declare-fun res!1307063 () Bool)

(assert (=> b!3210905 (=> (not res!1307063) (not e!2002151))))

(assert (=> b!3210905 (= res!1307063 (not (isEmpty!20275 (left!28134 (c!538932 lt!1084829)))))))

(declare-fun b!3210906 () Bool)

(assert (=> b!3210906 (= e!2002152 e!2002151)))

(declare-fun res!1307061 () Bool)

(assert (=> b!3210906 (=> (not res!1307061) (not e!2002151))))

(assert (=> b!3210906 (= res!1307061 (<= (- 1) (- (height!1553 (left!28134 (c!538932 lt!1084829))) (height!1553 (right!28464 (c!538932 lt!1084829))))))))

(declare-fun b!3210907 () Bool)

(declare-fun res!1307059 () Bool)

(assert (=> b!3210907 (=> (not res!1307059) (not e!2002151))))

(assert (=> b!3210907 (= res!1307059 (isBalanced!3217 (left!28134 (c!538932 lt!1084829))))))

(declare-fun b!3210908 () Bool)

(declare-fun res!1307058 () Bool)

(assert (=> b!3210908 (=> (not res!1307058) (not e!2002151))))

(assert (=> b!3210908 (= res!1307058 (<= (- (height!1553 (left!28134 (c!538932 lt!1084829))) (height!1553 (right!28464 (c!538932 lt!1084829)))) 1))))

(declare-fun b!3210909 () Bool)

(declare-fun res!1307060 () Bool)

(assert (=> b!3210909 (=> (not res!1307060) (not e!2002151))))

(assert (=> b!3210909 (= res!1307060 (isBalanced!3217 (right!28464 (c!538932 lt!1084829))))))

(assert (= (and d!879787 (not res!1307062)) b!3210906))

(assert (= (and b!3210906 res!1307061) b!3210908))

(assert (= (and b!3210908 res!1307058) b!3210907))

(assert (= (and b!3210907 res!1307059) b!3210909))

(assert (= (and b!3210909 res!1307060) b!3210905))

(assert (= (and b!3210905 res!1307063) b!3210904))

(declare-fun m!3479821 () Bool)

(assert (=> b!3210908 m!3479821))

(declare-fun m!3479823 () Bool)

(assert (=> b!3210908 m!3479823))

(declare-fun m!3479825 () Bool)

(assert (=> b!3210909 m!3479825))

(assert (=> b!3210906 m!3479821))

(assert (=> b!3210906 m!3479823))

(declare-fun m!3479827 () Bool)

(assert (=> b!3210904 m!3479827))

(declare-fun m!3479829 () Bool)

(assert (=> b!3210905 m!3479829))

(declare-fun m!3479831 () Bool)

(assert (=> b!3210907 m!3479831))

(assert (=> b!3209493 d!879787))

(declare-fun d!879789 () Bool)

(declare-fun lt!1085660 () Int)

(assert (=> d!879789 (= lt!1085660 (size!27260 (list!12865 (_2!20922 lt!1084813))))))

(assert (=> d!879789 (= lt!1085660 (size!27268 (c!538931 (_2!20922 lt!1084813))))))

(assert (=> d!879789 (= (size!27263 (_2!20922 lt!1084813)) lt!1085660)))

(declare-fun bs!541673 () Bool)

(assert (= bs!541673 d!879789))

(assert (=> bs!541673 m!3477249))

(assert (=> bs!541673 m!3477249))

(declare-fun m!3479841 () Bool)

(assert (=> bs!541673 m!3479841))

(declare-fun m!3479843 () Bool)

(assert (=> bs!541673 m!3479843))

(assert (=> b!3209463 d!879789))

(declare-fun d!879791 () Bool)

(declare-fun lt!1085661 () Int)

(assert (=> d!879791 (= lt!1085661 (size!27260 (list!12865 lt!1084659)))))

(assert (=> d!879791 (= lt!1085661 (size!27268 (c!538931 lt!1084659)))))

(assert (=> d!879791 (= (size!27263 lt!1084659) lt!1085661)))

(declare-fun bs!541674 () Bool)

(assert (= bs!541674 d!879791))

(assert (=> bs!541674 m!3477245))

(assert (=> bs!541674 m!3477245))

(declare-fun m!3479849 () Bool)

(assert (=> bs!541674 m!3479849))

(declare-fun m!3479851 () Bool)

(assert (=> bs!541674 m!3479851))

(assert (=> b!3209463 d!879791))

(declare-fun d!879793 () Bool)

(assert (=> d!879793 (= (isEmpty!20271 lt!1084882) (not ((_ is Some!7146) lt!1084882)))))

(assert (=> d!879071 d!879793))

(declare-fun d!879795 () Bool)

(assert (=> d!879795 (= (isEmpty!20266 (_1!20925 lt!1084879)) ((_ is Nil!36177) (_1!20925 lt!1084879)))))

(assert (=> d!879071 d!879795))

(declare-fun d!879797 () Bool)

(declare-fun lt!1085689 () tuple2!35582)

(assert (=> d!879797 (= (++!8680 (_1!20925 lt!1085689) (_2!20925 lt!1085689)) lt!1084664)))

(declare-fun sizeTr!161 (List!36301 Int) Int)

(assert (=> d!879797 (= lt!1085689 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) Nil!36177 0 lt!1084664 lt!1084664 (sizeTr!161 lt!1084664 0)))))

(declare-fun lt!1085693 () Unit!50642)

(declare-fun lt!1085691 () Unit!50642)

(assert (=> d!879797 (= lt!1085693 lt!1085691)))

(declare-fun lt!1085694 () List!36301)

(declare-fun lt!1085692 () Int)

(assert (=> d!879797 (= (sizeTr!161 lt!1085694 lt!1085692) (+ (size!27260 lt!1085694) lt!1085692))))

(declare-fun lemmaSizeTrEqualsSize!160 (List!36301 Int) Unit!50642)

(assert (=> d!879797 (= lt!1085691 (lemmaSizeTrEqualsSize!160 lt!1085694 lt!1085692))))

(assert (=> d!879797 (= lt!1085692 0)))

(assert (=> d!879797 (= lt!1085694 Nil!36177)))

(declare-fun lt!1085690 () Unit!50642)

(declare-fun lt!1085688 () Unit!50642)

(assert (=> d!879797 (= lt!1085690 lt!1085688)))

(declare-fun lt!1085687 () Int)

(assert (=> d!879797 (= (sizeTr!161 lt!1084664 lt!1085687) (+ (size!27260 lt!1084664) lt!1085687))))

(assert (=> d!879797 (= lt!1085688 (lemmaSizeTrEqualsSize!160 lt!1084664 lt!1085687))))

(assert (=> d!879797 (= lt!1085687 0)))

(assert (=> d!879797 (validRegex!4552 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))))

(assert (=> d!879797 (= (findLongestMatch!745 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) lt!1084664) lt!1085689)))

(declare-fun bs!541679 () Bool)

(assert (= bs!541679 d!879797))

(declare-fun m!3479993 () Bool)

(assert (=> bs!541679 m!3479993))

(declare-fun m!3479995 () Bool)

(assert (=> bs!541679 m!3479995))

(assert (=> bs!541679 m!3476801))

(declare-fun m!3479997 () Bool)

(assert (=> bs!541679 m!3479997))

(declare-fun m!3479999 () Bool)

(assert (=> bs!541679 m!3479999))

(declare-fun m!3480001 () Bool)

(assert (=> bs!541679 m!3480001))

(assert (=> bs!541679 m!3479997))

(declare-fun m!3480003 () Bool)

(assert (=> bs!541679 m!3480003))

(declare-fun m!3480005 () Bool)

(assert (=> bs!541679 m!3480005))

(declare-fun m!3480007 () Bool)

(assert (=> bs!541679 m!3480007))

(declare-fun m!3480009 () Bool)

(assert (=> bs!541679 m!3480009))

(assert (=> d!879071 d!879797))

(declare-fun d!879821 () Bool)

(declare-fun res!1307105 () Bool)

(declare-fun e!2002182 () Bool)

(assert (=> d!879821 (=> (not res!1307105) (not e!2002182))))

(assert (=> d!879821 (= res!1307105 (validRegex!4552 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))))

(assert (=> d!879821 (= (ruleValid!1647 thiss!18206 (rule!7664 (h!41599 (t!238514 tokens!494)))) e!2002182)))

(declare-fun b!3210967 () Bool)

(declare-fun res!1307106 () Bool)

(assert (=> b!3210967 (=> (not res!1307106) (not e!2002182))))

(assert (=> b!3210967 (= res!1307106 (not (nullable!3398 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))))))

(declare-fun b!3210968 () Bool)

(assert (=> b!3210968 (= e!2002182 (not (= (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494)))) (String!40605 ""))))))

(assert (= (and d!879821 res!1307105) b!3210967))

(assert (= (and b!3210967 res!1307106) b!3210968))

(assert (=> d!879821 m!3480001))

(declare-fun m!3480023 () Bool)

(assert (=> b!3210967 m!3480023))

(assert (=> d!879071 d!879821))

(assert (=> d!878959 d!879527))

(declare-fun b!3210969 () Bool)

(declare-fun e!2002188 () Bool)

(declare-fun call!232356 () Bool)

(assert (=> b!3210969 (= e!2002188 call!232356)))

(declare-fun b!3210970 () Bool)

(declare-fun e!2002189 () Bool)

(declare-fun e!2002187 () Bool)

(assert (=> b!3210970 (= e!2002189 e!2002187)))

(declare-fun res!1307111 () Bool)

(assert (=> b!3210970 (= res!1307111 (not (nullable!3398 (reg!10312 (regex!5224 lt!1084661)))))))

(assert (=> b!3210970 (=> (not res!1307111) (not e!2002187))))

(declare-fun b!3210971 () Bool)

(declare-fun e!2002186 () Bool)

(assert (=> b!3210971 (= e!2002189 e!2002186)))

(declare-fun c!539365 () Bool)

(assert (=> b!3210971 (= c!539365 ((_ is Union!9983) (regex!5224 lt!1084661)))))

(declare-fun b!3210972 () Bool)

(declare-fun call!232355 () Bool)

(assert (=> b!3210972 (= e!2002187 call!232355)))

(declare-fun d!879827 () Bool)

(declare-fun res!1307108 () Bool)

(declare-fun e!2002183 () Bool)

(assert (=> d!879827 (=> res!1307108 e!2002183)))

(assert (=> d!879827 (= res!1307108 ((_ is ElementMatch!9983) (regex!5224 lt!1084661)))))

(assert (=> d!879827 (= (validRegex!4552 (regex!5224 lt!1084661)) e!2002183)))

(declare-fun c!539366 () Bool)

(declare-fun bm!232350 () Bool)

(assert (=> bm!232350 (= call!232355 (validRegex!4552 (ite c!539366 (reg!10312 (regex!5224 lt!1084661)) (ite c!539365 (regOne!20479 (regex!5224 lt!1084661)) (regOne!20478 (regex!5224 lt!1084661))))))))

(declare-fun bm!232351 () Bool)

(assert (=> bm!232351 (= call!232356 (validRegex!4552 (ite c!539365 (regTwo!20479 (regex!5224 lt!1084661)) (regTwo!20478 (regex!5224 lt!1084661)))))))

(declare-fun b!3210973 () Bool)

(declare-fun res!1307109 () Bool)

(declare-fun e!2002185 () Bool)

(assert (=> b!3210973 (=> res!1307109 e!2002185)))

(assert (=> b!3210973 (= res!1307109 (not ((_ is Concat!15437) (regex!5224 lt!1084661))))))

(assert (=> b!3210973 (= e!2002186 e!2002185)))

(declare-fun bm!232352 () Bool)

(declare-fun call!232357 () Bool)

(assert (=> bm!232352 (= call!232357 call!232355)))

(declare-fun b!3210974 () Bool)

(declare-fun res!1307110 () Bool)

(assert (=> b!3210974 (=> (not res!1307110) (not e!2002188))))

(assert (=> b!3210974 (= res!1307110 call!232357)))

(assert (=> b!3210974 (= e!2002186 e!2002188)))

(declare-fun b!3210975 () Bool)

(declare-fun e!2002184 () Bool)

(assert (=> b!3210975 (= e!2002185 e!2002184)))

(declare-fun res!1307107 () Bool)

(assert (=> b!3210975 (=> (not res!1307107) (not e!2002184))))

(assert (=> b!3210975 (= res!1307107 call!232357)))

(declare-fun b!3210976 () Bool)

(assert (=> b!3210976 (= e!2002183 e!2002189)))

(assert (=> b!3210976 (= c!539366 ((_ is Star!9983) (regex!5224 lt!1084661)))))

(declare-fun b!3210977 () Bool)

(assert (=> b!3210977 (= e!2002184 call!232356)))

(assert (= (and d!879827 (not res!1307108)) b!3210976))

(assert (= (and b!3210976 c!539366) b!3210970))

(assert (= (and b!3210976 (not c!539366)) b!3210971))

(assert (= (and b!3210970 res!1307111) b!3210972))

(assert (= (and b!3210971 c!539365) b!3210974))

(assert (= (and b!3210971 (not c!539365)) b!3210973))

(assert (= (and b!3210974 res!1307110) b!3210969))

(assert (= (and b!3210973 (not res!1307109)) b!3210975))

(assert (= (and b!3210975 res!1307107) b!3210977))

(assert (= (or b!3210969 b!3210977) bm!232351))

(assert (= (or b!3210974 b!3210975) bm!232352))

(assert (= (or b!3210972 bm!232352) bm!232350))

(declare-fun m!3480035 () Bool)

(assert (=> b!3210970 m!3480035))

(declare-fun m!3480037 () Bool)

(assert (=> bm!232350 m!3480037))

(declare-fun m!3480039 () Bool)

(assert (=> bm!232351 m!3480039))

(assert (=> d!878959 d!879827))

(declare-fun d!879831 () Bool)

(assert (=> d!879831 (= (isDefined!5554 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 separatorToken!241)))) (not (isEmpty!20270 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 separatorToken!241))))))))

(declare-fun bs!541680 () Bool)

(assert (= bs!541680 d!879831))

(assert (=> bs!541680 m!3476837))

(declare-fun m!3480041 () Bool)

(assert (=> bs!541680 m!3480041))

(assert (=> d!879155 d!879831))

(assert (=> d!879155 d!879145))

(declare-fun d!879833 () Bool)

(declare-fun e!2002190 () Bool)

(assert (=> d!879833 e!2002190))

(declare-fun res!1307112 () Bool)

(assert (=> d!879833 (=> (not res!1307112) (not e!2002190))))

(assert (=> d!879833 (= res!1307112 (isDefined!5554 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 separatorToken!241)))))))

(assert (=> d!879833 true))

(declare-fun _$52!1552 () Unit!50642)

(assert (=> d!879833 (= (choose!18730 thiss!18206 rules!2135 lt!1084696 separatorToken!241) _$52!1552)))

(declare-fun b!3210978 () Bool)

(declare-fun res!1307113 () Bool)

(assert (=> b!3210978 (=> (not res!1307113) (not e!2002190))))

(assert (=> b!3210978 (= res!1307113 (matchR!4617 (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 separatorToken!241))))) (list!12865 (charsOf!3240 separatorToken!241))))))

(declare-fun b!3210979 () Bool)

(assert (=> b!3210979 (= e!2002190 (= (rule!7664 separatorToken!241) (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 separatorToken!241))))))))

(assert (= (and d!879833 res!1307112) b!3210978))

(assert (= (and b!3210978 res!1307113) b!3210979))

(assert (=> d!879833 m!3476837))

(assert (=> d!879833 m!3476837))

(assert (=> d!879833 m!3477789))

(assert (=> b!3210978 m!3476837))

(assert (=> b!3210978 m!3476837))

(assert (=> b!3210978 m!3477793))

(assert (=> b!3210978 m!3476693))

(assert (=> b!3210978 m!3476693))

(assert (=> b!3210978 m!3476707))

(assert (=> b!3210978 m!3476707))

(assert (=> b!3210978 m!3477795))

(assert (=> b!3210979 m!3476837))

(assert (=> b!3210979 m!3476837))

(assert (=> b!3210979 m!3477793))

(assert (=> d!879155 d!879833))

(assert (=> d!879155 d!879257))

(declare-fun d!879839 () Bool)

(assert (=> d!879839 (= (list!12865 lt!1084840) (list!12868 (c!538931 lt!1084840)))))

(declare-fun bs!541683 () Bool)

(assert (= bs!541683 d!879839))

(declare-fun m!3480053 () Bool)

(assert (=> bs!541683 m!3480053))

(assert (=> d!879047 d!879839))

(declare-fun d!879843 () Bool)

(declare-fun c!539368 () Bool)

(assert (=> d!879843 (= c!539368 ((_ is Cons!36179) (list!12869 lt!1084669)))))

(declare-fun e!2002193 () List!36301)

(assert (=> d!879843 (= (printList!1363 thiss!18206 (list!12869 lt!1084669)) e!2002193)))

(declare-fun b!3210983 () Bool)

(assert (=> b!3210983 (= e!2002193 (++!8680 (list!12865 (charsOf!3240 (h!41599 (list!12869 lt!1084669)))) (printList!1363 thiss!18206 (t!238514 (list!12869 lt!1084669)))))))

(declare-fun b!3210984 () Bool)

(assert (=> b!3210984 (= e!2002193 Nil!36177)))

(assert (= (and d!879843 c!539368) b!3210983))

(assert (= (and d!879843 (not c!539368)) b!3210984))

(declare-fun m!3480055 () Bool)

(assert (=> b!3210983 m!3480055))

(assert (=> b!3210983 m!3480055))

(declare-fun m!3480057 () Bool)

(assert (=> b!3210983 m!3480057))

(declare-fun m!3480059 () Bool)

(assert (=> b!3210983 m!3480059))

(assert (=> b!3210983 m!3480057))

(assert (=> b!3210983 m!3480059))

(declare-fun m!3480061 () Bool)

(assert (=> b!3210983 m!3480061))

(assert (=> d!879047 d!879843))

(declare-fun d!879845 () Bool)

(assert (=> d!879845 (= (list!12869 lt!1084669) (list!12871 (c!538932 lt!1084669)))))

(declare-fun bs!541684 () Bool)

(assert (= bs!541684 d!879845))

(declare-fun m!3480063 () Bool)

(assert (=> bs!541684 m!3480063))

(assert (=> d!879047 d!879845))

(assert (=> d!879047 d!879175))

(declare-fun bs!541685 () Bool)

(declare-fun d!879847 () Bool)

(assert (= bs!541685 (and d!879847 d!879477)))

(declare-fun lambda!117514 () Int)

(assert (=> bs!541685 (= (and (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toChars!7167 (transformation!5224 (h!41598 rules!2135)))) (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toValue!7308 (transformation!5224 (h!41598 rules!2135))))) (= lambda!117514 lambda!117495))))

(declare-fun bs!541686 () Bool)

(assert (= bs!541686 (and d!879847 d!879481)))

(assert (=> bs!541686 (= lambda!117514 lambda!117499)))

(declare-fun b!3210989 () Bool)

(declare-fun e!2002196 () Bool)

(assert (=> b!3210989 (= e!2002196 true)))

(assert (=> d!879847 e!2002196))

(assert (= d!879847 b!3210989))

(assert (=> b!3210989 (< (dynLambda!14607 order!18473 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) (dynLambda!14616 order!18479 lambda!117514))))

(assert (=> b!3210989 (< (dynLambda!14609 order!18477 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) (dynLambda!14616 order!18479 lambda!117514))))

(assert (=> d!879847 (= (list!12865 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (seqFromList!3519 (_1!20925 lt!1084954))))) (list!12865 (seqFromList!3519 (_1!20925 lt!1084954))))))

(declare-fun lt!1085699 () Unit!50642)

(declare-fun ForallOf!554 (Int BalanceConc!21260) Unit!50642)

(assert (=> d!879847 (= lt!1085699 (ForallOf!554 lambda!117514 (seqFromList!3519 (_1!20925 lt!1084954))))))

(assert (=> d!879847 (= (lemmaSemiInverse!1176 (transformation!5224 (rule!7664 (h!41599 tokens!494))) (seqFromList!3519 (_1!20925 lt!1084954))) lt!1085699)))

(declare-fun b_lambda!87997 () Bool)

(assert (=> (not b_lambda!87997) (not d!879847)))

(declare-fun t!238752 () Bool)

(declare-fun tb!157781 () Bool)

(assert (=> (and b!3210119 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!238752) tb!157781))

(declare-fun e!2002205 () Bool)

(declare-fun b!3211004 () Bool)

(declare-fun tp!1013382 () Bool)

(assert (=> b!3211004 (= e!2002205 (and (inv!49039 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (seqFromList!3519 (_1!20925 lt!1084954)))))) tp!1013382))))

(declare-fun result!200146 () Bool)

(assert (=> tb!157781 (= result!200146 (and (inv!49040 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (seqFromList!3519 (_1!20925 lt!1084954))))) e!2002205))))

(assert (= tb!157781 b!3211004))

(declare-fun m!3480065 () Bool)

(assert (=> b!3211004 m!3480065))

(declare-fun m!3480067 () Bool)

(assert (=> tb!157781 m!3480067))

(assert (=> d!879847 t!238752))

(declare-fun b_and!213943 () Bool)

(assert (= b_and!213847 (and (=> t!238752 result!200146) b_and!213943)))

(declare-fun t!238754 () Bool)

(declare-fun tb!157783 () Bool)

(assert (=> (and b!3210083 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!238754) tb!157783))

(declare-fun result!200148 () Bool)

(assert (= result!200148 result!200146))

(assert (=> d!879847 t!238754))

(declare-fun b_and!213945 () Bool)

(assert (= b_and!213843 (and (=> t!238754 result!200148) b_and!213945)))

(declare-fun tb!157785 () Bool)

(declare-fun t!238756 () Bool)

(assert (=> (and b!3209120 (= (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!238756) tb!157785))

(declare-fun result!200150 () Bool)

(assert (= result!200150 result!200146))

(assert (=> d!879847 t!238756))

(declare-fun b_and!213947 () Bool)

(assert (= b_and!213849 (and (=> t!238756 result!200150) b_and!213947)))

(declare-fun t!238758 () Bool)

(declare-fun tb!157787 () Bool)

(assert (=> (and b!3209140 (= (toChars!7167 (transformation!5224 (h!41598 rules!2135))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!238758) tb!157787))

(declare-fun result!200152 () Bool)

(assert (= result!200152 result!200146))

(assert (=> d!879847 t!238758))

(declare-fun b_and!213949 () Bool)

(assert (= b_and!213851 (and (=> t!238758 result!200152) b_and!213949)))

(declare-fun t!238760 () Bool)

(declare-fun tb!157789 () Bool)

(assert (=> (and b!3209139 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!238760) tb!157789))

(declare-fun result!200154 () Bool)

(assert (= result!200154 result!200146))

(assert (=> d!879847 t!238760))

(declare-fun b_and!213951 () Bool)

(assert (= b_and!213845 (and (=> t!238760 result!200154) b_and!213951)))

(declare-fun b_lambda!87999 () Bool)

(assert (=> (not b_lambda!87999) (not d!879847)))

(declare-fun t!238762 () Bool)

(declare-fun tb!157791 () Bool)

(assert (=> (and b!3209139 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!238762) tb!157791))

(declare-fun result!200156 () Bool)

(assert (=> tb!157791 (= result!200156 (inv!21 (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (seqFromList!3519 (_1!20925 lt!1084954)))))))

(declare-fun m!3480069 () Bool)

(assert (=> tb!157791 m!3480069))

(assert (=> d!879847 t!238762))

(declare-fun b_and!213953 () Bool)

(assert (= b_and!213871 (and (=> t!238762 result!200156) b_and!213953)))

(declare-fun tb!157793 () Bool)

(declare-fun t!238764 () Bool)

(assert (=> (and b!3210083 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!238764) tb!157793))

(declare-fun result!200158 () Bool)

(assert (= result!200158 result!200156))

(assert (=> d!879847 t!238764))

(declare-fun b_and!213955 () Bool)

(assert (= b_and!213863 (and (=> t!238764 result!200158) b_and!213955)))

(declare-fun t!238766 () Bool)

(declare-fun tb!157795 () Bool)

(assert (=> (and b!3209140 (= (toValue!7308 (transformation!5224 (h!41598 rules!2135))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!238766) tb!157795))

(declare-fun result!200160 () Bool)

(assert (= result!200160 result!200156))

(assert (=> d!879847 t!238766))

(declare-fun b_and!213957 () Bool)

(assert (= b_and!213865 (and (=> t!238766 result!200160) b_and!213957)))

(declare-fun tb!157797 () Bool)

(declare-fun t!238768 () Bool)

(assert (=> (and b!3209120 (= (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!238768) tb!157797))

(declare-fun result!200162 () Bool)

(assert (= result!200162 result!200156))

(assert (=> d!879847 t!238768))

(declare-fun b_and!213959 () Bool)

(assert (= b_and!213867 (and (=> t!238768 result!200162) b_and!213959)))

(declare-fun t!238770 () Bool)

(declare-fun tb!157799 () Bool)

(assert (=> (and b!3210119 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!238770) tb!157799))

(declare-fun result!200164 () Bool)

(assert (= result!200164 result!200156))

(assert (=> d!879847 t!238770))

(declare-fun b_and!213961 () Bool)

(assert (= b_and!213869 (and (=> t!238770 result!200164) b_and!213961)))

(assert (=> d!879847 m!3477845))

(declare-fun m!3480071 () Bool)

(assert (=> d!879847 m!3480071))

(assert (=> d!879847 m!3477845))

(declare-fun m!3480073 () Bool)

(assert (=> d!879847 m!3480073))

(declare-fun m!3480075 () Bool)

(assert (=> d!879847 m!3480075))

(declare-fun m!3480077 () Bool)

(assert (=> d!879847 m!3480077))

(assert (=> d!879847 m!3477845))

(assert (=> d!879847 m!3480075))

(assert (=> d!879847 m!3480077))

(declare-fun m!3480079 () Bool)

(assert (=> d!879847 m!3480079))

(assert (=> b!3209785 d!879847))

(declare-fun d!879849 () Bool)

(declare-fun lt!1085704 () Int)

(assert (=> d!879849 (= lt!1085704 (size!27260 (list!12865 (seqFromList!3519 (_1!20925 lt!1084954)))))))

(assert (=> d!879849 (= lt!1085704 (size!27268 (c!538931 (seqFromList!3519 (_1!20925 lt!1084954)))))))

(assert (=> d!879849 (= (size!27263 (seqFromList!3519 (_1!20925 lt!1084954))) lt!1085704)))

(declare-fun bs!541687 () Bool)

(assert (= bs!541687 d!879849))

(assert (=> bs!541687 m!3477845))

(assert (=> bs!541687 m!3480071))

(assert (=> bs!541687 m!3480071))

(declare-fun m!3480081 () Bool)

(assert (=> bs!541687 m!3480081))

(declare-fun m!3480083 () Bool)

(assert (=> bs!541687 m!3480083))

(assert (=> b!3209785 d!879849))

(assert (=> b!3209785 d!879029))

(declare-fun d!879851 () Bool)

(assert (=> d!879851 (= (isEmpty!20266 (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 tokens!494))) Nil!36177 (size!27260 Nil!36177) lt!1084683 lt!1084683 (size!27260 lt!1084683)))) ((_ is Nil!36177) (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 tokens!494))) Nil!36177 (size!27260 Nil!36177) lt!1084683 lt!1084683 (size!27260 lt!1084683)))))))

(assert (=> b!3209785 d!879851))

(declare-fun d!879853 () Bool)

(assert (=> d!879853 (= (seqFromList!3519 (_1!20925 lt!1084954)) (fromListB!1541 (_1!20925 lt!1084954)))))

(declare-fun bs!541688 () Bool)

(assert (= bs!541688 d!879853))

(declare-fun m!3480085 () Bool)

(assert (=> bs!541688 m!3480085))

(assert (=> b!3209785 d!879853))

(declare-fun d!879855 () Bool)

(declare-fun lt!1085705 () Int)

(assert (=> d!879855 (>= lt!1085705 0)))

(declare-fun e!2002207 () Int)

(assert (=> d!879855 (= lt!1085705 e!2002207)))

(declare-fun c!539376 () Bool)

(assert (=> d!879855 (= c!539376 ((_ is Nil!36177) Nil!36177))))

(assert (=> d!879855 (= (size!27260 Nil!36177) lt!1085705)))

(declare-fun b!3211005 () Bool)

(assert (=> b!3211005 (= e!2002207 0)))

(declare-fun b!3211006 () Bool)

(assert (=> b!3211006 (= e!2002207 (+ 1 (size!27260 (t!238512 Nil!36177))))))

(assert (= (and d!879855 c!539376) b!3211005))

(assert (= (and d!879855 (not c!539376)) b!3211006))

(declare-fun m!3480087 () Bool)

(assert (=> b!3211006 m!3480087))

(assert (=> b!3209785 d!879855))

(declare-fun d!879857 () Bool)

(assert (=> d!879857 (= (apply!8197 (transformation!5224 (rule!7664 (h!41599 tokens!494))) (seqFromList!3519 (_1!20925 lt!1084954))) (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (seqFromList!3519 (_1!20925 lt!1084954))))))

(declare-fun b_lambda!88001 () Bool)

(assert (=> (not b_lambda!88001) (not d!879857)))

(assert (=> d!879857 t!238764))

(declare-fun b_and!213963 () Bool)

(assert (= b_and!213955 (and (=> t!238764 result!200158) b_and!213963)))

(assert (=> d!879857 t!238762))

(declare-fun b_and!213965 () Bool)

(assert (= b_and!213953 (and (=> t!238762 result!200156) b_and!213965)))

(assert (=> d!879857 t!238768))

(declare-fun b_and!213967 () Bool)

(assert (= b_and!213959 (and (=> t!238768 result!200162) b_and!213967)))

(assert (=> d!879857 t!238766))

(declare-fun b_and!213969 () Bool)

(assert (= b_and!213957 (and (=> t!238766 result!200160) b_and!213969)))

(assert (=> d!879857 t!238770))

(declare-fun b_and!213971 () Bool)

(assert (= b_and!213961 (and (=> t!238770 result!200164) b_and!213971)))

(assert (=> d!879857 m!3477845))

(assert (=> d!879857 m!3480075))

(assert (=> b!3209785 d!879857))

(declare-fun d!879859 () Bool)

(declare-fun e!2002236 () Bool)

(assert (=> d!879859 e!2002236))

(declare-fun res!1307131 () Bool)

(assert (=> d!879859 (=> (not res!1307131) (not e!2002236))))

(declare-fun lt!1085791 () tuple2!35582)

(assert (=> d!879859 (= res!1307131 (= (++!8680 (_1!20925 lt!1085791) (_2!20925 lt!1085791)) lt!1084683))))

(declare-fun e!2002235 () tuple2!35582)

(assert (=> d!879859 (= lt!1085791 e!2002235)))

(declare-fun c!539396 () Bool)

(declare-fun lostCause!882 (Regex!9983) Bool)

(assert (=> d!879859 (= c!539396 (lostCause!882 (regex!5224 (rule!7664 (h!41599 tokens!494)))))))

(declare-fun lt!1085782 () Unit!50642)

(declare-fun Unit!50655 () Unit!50642)

(assert (=> d!879859 (= lt!1085782 Unit!50655)))

(declare-fun getSuffix!1386 (List!36301 List!36301) List!36301)

(assert (=> d!879859 (= (getSuffix!1386 lt!1084683 Nil!36177) lt!1084683)))

(declare-fun lt!1085787 () Unit!50642)

(declare-fun lt!1085778 () Unit!50642)

(assert (=> d!879859 (= lt!1085787 lt!1085778)))

(declare-fun lt!1085770 () List!36301)

(assert (=> d!879859 (= lt!1084683 lt!1085770)))

(declare-fun lemmaSamePrefixThenSameSuffix!1232 (List!36301 List!36301 List!36301 List!36301 List!36301) Unit!50642)

(assert (=> d!879859 (= lt!1085778 (lemmaSamePrefixThenSameSuffix!1232 Nil!36177 lt!1084683 Nil!36177 lt!1085770 lt!1084683))))

(assert (=> d!879859 (= lt!1085770 (getSuffix!1386 lt!1084683 Nil!36177))))

(declare-fun lt!1085776 () Unit!50642)

(declare-fun lt!1085766 () Unit!50642)

(assert (=> d!879859 (= lt!1085776 lt!1085766)))

(assert (=> d!879859 (isPrefix!2783 Nil!36177 (++!8680 Nil!36177 lt!1084683))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1766 (List!36301 List!36301) Unit!50642)

(assert (=> d!879859 (= lt!1085766 (lemmaConcatTwoListThenFirstIsPrefix!1766 Nil!36177 lt!1084683))))

(assert (=> d!879859 (validRegex!4552 (regex!5224 (rule!7664 (h!41599 tokens!494))))))

(assert (=> d!879859 (= (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 tokens!494))) Nil!36177 (size!27260 Nil!36177) lt!1084683 lt!1084683 (size!27260 lt!1084683)) lt!1085791)))

(declare-fun bm!232373 () Bool)

(declare-fun call!232382 () C!20152)

(assert (=> bm!232373 (= call!232382 (head!7043 lt!1084683))))

(declare-fun b!3211056 () Bool)

(declare-fun e!2002240 () Bool)

(assert (=> b!3211056 (= e!2002240 (>= (size!27260 (_1!20925 lt!1085791)) (size!27260 Nil!36177)))))

(declare-fun bm!232374 () Bool)

(declare-fun call!232378 () tuple2!35582)

(declare-fun call!232384 () List!36301)

(declare-fun lt!1085765 () List!36301)

(declare-fun call!232385 () Regex!9983)

(assert (=> bm!232374 (= call!232378 (findLongestMatchInner!830 call!232385 lt!1085765 (+ (size!27260 Nil!36177) 1) call!232384 lt!1084683 (size!27260 lt!1084683)))))

(declare-fun bm!232375 () Bool)

(assert (=> bm!232375 (= call!232384 (tail!5212 lt!1084683))))

(declare-fun bm!232376 () Bool)

(declare-fun call!232383 () Unit!50642)

(declare-fun lemmaIsPrefixSameLengthThenSameList!515 (List!36301 List!36301 List!36301) Unit!50642)

(assert (=> bm!232376 (= call!232383 (lemmaIsPrefixSameLengthThenSameList!515 lt!1084683 Nil!36177 lt!1084683))))

(declare-fun bm!232377 () Bool)

(assert (=> bm!232377 (= call!232385 (derivativeStep!2951 (regex!5224 (rule!7664 (h!41599 tokens!494))) call!232382))))

(declare-fun b!3211057 () Bool)

(declare-fun e!2002242 () Unit!50642)

(declare-fun Unit!50656 () Unit!50642)

(assert (=> b!3211057 (= e!2002242 Unit!50656)))

(declare-fun b!3211058 () Bool)

(declare-fun e!2002238 () tuple2!35582)

(assert (=> b!3211058 (= e!2002238 (tuple2!35583 Nil!36177 lt!1084683))))

(declare-fun b!3211059 () Bool)

(declare-fun e!2002237 () tuple2!35582)

(assert (=> b!3211059 (= e!2002237 e!2002238)))

(declare-fun lt!1085792 () tuple2!35582)

(assert (=> b!3211059 (= lt!1085792 call!232378)))

(declare-fun c!539399 () Bool)

(assert (=> b!3211059 (= c!539399 (isEmpty!20266 (_1!20925 lt!1085792)))))

(declare-fun b!3211060 () Bool)

(assert (=> b!3211060 (= e!2002236 e!2002240)))

(declare-fun res!1307130 () Bool)

(assert (=> b!3211060 (=> res!1307130 e!2002240)))

(assert (=> b!3211060 (= res!1307130 (isEmpty!20266 (_1!20925 lt!1085791)))))

(declare-fun b!3211061 () Bool)

(declare-fun c!539401 () Bool)

(declare-fun call!232380 () Bool)

(assert (=> b!3211061 (= c!539401 call!232380)))

(declare-fun lt!1085786 () Unit!50642)

(declare-fun lt!1085784 () Unit!50642)

(assert (=> b!3211061 (= lt!1085786 lt!1085784)))

(declare-fun lt!1085772 () C!20152)

(declare-fun lt!1085789 () List!36301)

(assert (=> b!3211061 (= (++!8680 (++!8680 Nil!36177 (Cons!36177 lt!1085772 Nil!36177)) lt!1085789) lt!1084683)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1120 (List!36301 C!20152 List!36301 List!36301) Unit!50642)

(assert (=> b!3211061 (= lt!1085784 (lemmaMoveElementToOtherListKeepsConcatEq!1120 Nil!36177 lt!1085772 lt!1085789 lt!1084683))))

(assert (=> b!3211061 (= lt!1085789 (tail!5212 lt!1084683))))

(assert (=> b!3211061 (= lt!1085772 (head!7043 lt!1084683))))

(declare-fun lt!1085779 () Unit!50642)

(declare-fun lt!1085769 () Unit!50642)

(assert (=> b!3211061 (= lt!1085779 lt!1085769)))

(assert (=> b!3211061 (isPrefix!2783 (++!8680 Nil!36177 (Cons!36177 (head!7043 (getSuffix!1386 lt!1084683 Nil!36177)) Nil!36177)) lt!1084683)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!508 (List!36301 List!36301) Unit!50642)

(assert (=> b!3211061 (= lt!1085769 (lemmaAddHeadSuffixToPrefixStillPrefix!508 Nil!36177 lt!1084683))))

(declare-fun lt!1085783 () Unit!50642)

(declare-fun lt!1085771 () Unit!50642)

(assert (=> b!3211061 (= lt!1085783 lt!1085771)))

(assert (=> b!3211061 (= lt!1085771 (lemmaAddHeadSuffixToPrefixStillPrefix!508 Nil!36177 lt!1084683))))

(assert (=> b!3211061 (= lt!1085765 (++!8680 Nil!36177 (Cons!36177 (head!7043 lt!1084683) Nil!36177)))))

(declare-fun lt!1085777 () Unit!50642)

(assert (=> b!3211061 (= lt!1085777 e!2002242)))

(declare-fun c!539398 () Bool)

(assert (=> b!3211061 (= c!539398 (= (size!27260 Nil!36177) (size!27260 lt!1084683)))))

(declare-fun lt!1085781 () Unit!50642)

(declare-fun lt!1085788 () Unit!50642)

(assert (=> b!3211061 (= lt!1085781 lt!1085788)))

(assert (=> b!3211061 (<= (size!27260 Nil!36177) (size!27260 lt!1084683))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!316 (List!36301 List!36301) Unit!50642)

(assert (=> b!3211061 (= lt!1085788 (lemmaIsPrefixThenSmallerEqSize!316 Nil!36177 lt!1084683))))

(declare-fun e!2002239 () tuple2!35582)

(assert (=> b!3211061 (= e!2002239 e!2002237)))

(declare-fun b!3211062 () Bool)

(declare-fun Unit!50657 () Unit!50642)

(assert (=> b!3211062 (= e!2002242 Unit!50657)))

(declare-fun lt!1085790 () Unit!50642)

(declare-fun call!232379 () Unit!50642)

(assert (=> b!3211062 (= lt!1085790 call!232379)))

(declare-fun call!232381 () Bool)

(assert (=> b!3211062 call!232381))

(declare-fun lt!1085785 () Unit!50642)

(assert (=> b!3211062 (= lt!1085785 lt!1085790)))

(declare-fun lt!1085768 () Unit!50642)

(assert (=> b!3211062 (= lt!1085768 call!232383)))

(assert (=> b!3211062 (= lt!1084683 Nil!36177)))

(declare-fun lt!1085775 () Unit!50642)

(assert (=> b!3211062 (= lt!1085775 lt!1085768)))

(assert (=> b!3211062 false))

(declare-fun b!3211063 () Bool)

(declare-fun c!539397 () Bool)

(assert (=> b!3211063 (= c!539397 call!232380)))

(declare-fun lt!1085773 () Unit!50642)

(declare-fun lt!1085780 () Unit!50642)

(assert (=> b!3211063 (= lt!1085773 lt!1085780)))

(assert (=> b!3211063 (= lt!1084683 Nil!36177)))

(assert (=> b!3211063 (= lt!1085780 call!232383)))

(declare-fun lt!1085767 () Unit!50642)

(declare-fun lt!1085774 () Unit!50642)

(assert (=> b!3211063 (= lt!1085767 lt!1085774)))

(assert (=> b!3211063 call!232381))

(assert (=> b!3211063 (= lt!1085774 call!232379)))

(declare-fun e!2002241 () tuple2!35582)

(assert (=> b!3211063 (= e!2002239 e!2002241)))

(declare-fun b!3211064 () Bool)

(assert (=> b!3211064 (= e!2002238 lt!1085792)))

(declare-fun b!3211065 () Bool)

(assert (=> b!3211065 (= e!2002235 (tuple2!35583 Nil!36177 lt!1084683))))

(declare-fun b!3211066 () Bool)

(assert (=> b!3211066 (= e!2002241 (tuple2!35583 Nil!36177 lt!1084683))))

(declare-fun b!3211067 () Bool)

(assert (=> b!3211067 (= e!2002235 e!2002239)))

(declare-fun c!539400 () Bool)

(assert (=> b!3211067 (= c!539400 (= (size!27260 Nil!36177) (size!27260 lt!1084683)))))

(declare-fun bm!232378 () Bool)

(assert (=> bm!232378 (= call!232381 (isPrefix!2783 lt!1084683 lt!1084683))))

(declare-fun bm!232379 () Bool)

(assert (=> bm!232379 (= call!232379 (lemmaIsPrefixRefl!1742 lt!1084683 lt!1084683))))

(declare-fun bm!232380 () Bool)

(assert (=> bm!232380 (= call!232380 (nullable!3398 (regex!5224 (rule!7664 (h!41599 tokens!494)))))))

(declare-fun b!3211068 () Bool)

(assert (=> b!3211068 (= e!2002241 (tuple2!35583 Nil!36177 Nil!36177))))

(declare-fun b!3211069 () Bool)

(assert (=> b!3211069 (= e!2002237 call!232378)))

(assert (= (and d!879859 c!539396) b!3211065))

(assert (= (and d!879859 (not c!539396)) b!3211067))

(assert (= (and b!3211067 c!539400) b!3211063))

(assert (= (and b!3211067 (not c!539400)) b!3211061))

(assert (= (and b!3211063 c!539397) b!3211068))

(assert (= (and b!3211063 (not c!539397)) b!3211066))

(assert (= (and b!3211061 c!539398) b!3211062))

(assert (= (and b!3211061 (not c!539398)) b!3211057))

(assert (= (and b!3211061 c!539401) b!3211059))

(assert (= (and b!3211061 (not c!539401)) b!3211069))

(assert (= (and b!3211059 c!539399) b!3211058))

(assert (= (and b!3211059 (not c!539399)) b!3211064))

(assert (= (or b!3211059 b!3211069) bm!232373))

(assert (= (or b!3211059 b!3211069) bm!232375))

(assert (= (or b!3211059 b!3211069) bm!232377))

(assert (= (or b!3211059 b!3211069) bm!232374))

(assert (= (or b!3211063 b!3211062) bm!232379))

(assert (= (or b!3211063 b!3211062) bm!232378))

(assert (= (or b!3211063 b!3211062) bm!232376))

(assert (= (or b!3211063 b!3211061) bm!232380))

(assert (= (and d!879859 res!1307131) b!3211060))

(assert (= (and b!3211060 (not res!1307130)) b!3211056))

(declare-fun m!3480121 () Bool)

(assert (=> bm!232377 m!3480121))

(assert (=> bm!232380 m!3478561))

(declare-fun m!3480123 () Bool)

(assert (=> bm!232378 m!3480123))

(assert (=> bm!232374 m!3476779))

(declare-fun m!3480125 () Bool)

(assert (=> bm!232374 m!3480125))

(declare-fun m!3480127 () Bool)

(assert (=> b!3211059 m!3480127))

(declare-fun m!3480129 () Bool)

(assert (=> b!3211060 m!3480129))

(declare-fun m!3480131 () Bool)

(assert (=> bm!232376 m!3480131))

(declare-fun m!3480133 () Bool)

(assert (=> bm!232379 m!3480133))

(declare-fun m!3480135 () Bool)

(assert (=> d!879859 m!3480135))

(declare-fun m!3480137 () Bool)

(assert (=> d!879859 m!3480137))

(declare-fun m!3480139 () Bool)

(assert (=> d!879859 m!3480139))

(declare-fun m!3480141 () Bool)

(assert (=> d!879859 m!3480141))

(declare-fun m!3480143 () Bool)

(assert (=> d!879859 m!3480143))

(assert (=> d!879859 m!3478575))

(declare-fun m!3480145 () Bool)

(assert (=> d!879859 m!3480145))

(assert (=> d!879859 m!3480139))

(declare-fun m!3480147 () Bool)

(assert (=> d!879859 m!3480147))

(assert (=> b!3211061 m!3478311))

(assert (=> b!3211061 m!3478307))

(declare-fun m!3480149 () Bool)

(assert (=> b!3211061 m!3480149))

(declare-fun m!3480151 () Bool)

(assert (=> b!3211061 m!3480151))

(assert (=> b!3211061 m!3480151))

(declare-fun m!3480153 () Bool)

(assert (=> b!3211061 m!3480153))

(declare-fun m!3480155 () Bool)

(assert (=> b!3211061 m!3480155))

(declare-fun m!3480157 () Bool)

(assert (=> b!3211061 m!3480157))

(assert (=> b!3211061 m!3480147))

(assert (=> b!3211061 m!3477569))

(declare-fun m!3480159 () Bool)

(assert (=> b!3211061 m!3480159))

(declare-fun m!3480161 () Bool)

(assert (=> b!3211061 m!3480161))

(declare-fun m!3480163 () Bool)

(assert (=> b!3211061 m!3480163))

(assert (=> b!3211061 m!3480161))

(assert (=> b!3211061 m!3480147))

(declare-fun m!3480165 () Bool)

(assert (=> b!3211061 m!3480165))

(assert (=> b!3211061 m!3476779))

(assert (=> bm!232375 m!3478311))

(declare-fun m!3480167 () Bool)

(assert (=> b!3211056 m!3480167))

(assert (=> b!3211056 m!3477569))

(assert (=> bm!232373 m!3478307))

(assert (=> b!3209785 d!879859))

(declare-fun d!879873 () Bool)

(declare-fun e!2002254 () Bool)

(assert (=> d!879873 e!2002254))

(declare-fun res!1307140 () Bool)

(assert (=> d!879873 (=> res!1307140 e!2002254)))

(assert (=> d!879873 (= res!1307140 (isEmpty!20266 (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 tokens!494))) Nil!36177 (size!27260 Nil!36177) lt!1084683 lt!1084683 (size!27260 lt!1084683)))))))

(declare-fun lt!1085798 () Unit!50642)

(declare-fun choose!18744 (Regex!9983 List!36301) Unit!50642)

(assert (=> d!879873 (= lt!1085798 (choose!18744 (regex!5224 (rule!7664 (h!41599 tokens!494))) lt!1084683))))

(assert (=> d!879873 (validRegex!4552 (regex!5224 (rule!7664 (h!41599 tokens!494))))))

(assert (=> d!879873 (= (longestMatchIsAcceptedByMatchOrIsEmpty!803 (regex!5224 (rule!7664 (h!41599 tokens!494))) lt!1084683) lt!1085798)))

(declare-fun b!3211081 () Bool)

(assert (=> b!3211081 (= e!2002254 (matchR!4617 (regex!5224 (rule!7664 (h!41599 tokens!494))) (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 tokens!494))) Nil!36177 (size!27260 Nil!36177) lt!1084683 lt!1084683 (size!27260 lt!1084683)))))))

(assert (= (and d!879873 (not res!1307140)) b!3211081))

(assert (=> d!879873 m!3477569))

(assert (=> d!879873 m!3477853))

(assert (=> d!879873 m!3477569))

(assert (=> d!879873 m!3476779))

(assert (=> d!879873 m!3477849))

(assert (=> d!879873 m!3476779))

(assert (=> d!879873 m!3478575))

(declare-fun m!3480175 () Bool)

(assert (=> d!879873 m!3480175))

(assert (=> b!3211081 m!3477569))

(assert (=> b!3211081 m!3476779))

(assert (=> b!3211081 m!3477569))

(assert (=> b!3211081 m!3476779))

(assert (=> b!3211081 m!3477849))

(assert (=> b!3211081 m!3477863))

(assert (=> b!3209785 d!879873))

(declare-fun d!879877 () Bool)

(assert (=> d!879877 (= (list!12865 (_2!20922 lt!1084839)) (list!12868 (c!538931 (_2!20922 lt!1084839))))))

(declare-fun bs!541695 () Bool)

(assert (= bs!541695 d!879877))

(declare-fun m!3480183 () Bool)

(assert (=> bs!541695 m!3480183))

(assert (=> b!3209546 d!879877))

(declare-fun b!3211087 () Bool)

(declare-fun e!2002258 () Bool)

(declare-fun lt!1085803 () tuple2!35580)

(assert (=> b!3211087 (= e!2002258 (not (isEmpty!20274 (_1!20924 lt!1085803))))))

(declare-fun b!3211088 () Bool)

(declare-fun e!2002259 () Bool)

(assert (=> b!3211088 (= e!2002259 (= (_2!20924 lt!1085803) (list!12865 lt!1084684)))))

(declare-fun b!3211089 () Bool)

(declare-fun e!2002260 () tuple2!35580)

(assert (=> b!3211089 (= e!2002260 (tuple2!35581 Nil!36179 (list!12865 lt!1084684)))))

(declare-fun b!3211090 () Bool)

(declare-fun lt!1085802 () Option!7147)

(declare-fun lt!1085801 () tuple2!35580)

(assert (=> b!3211090 (= e!2002260 (tuple2!35581 (Cons!36179 (_1!20921 (v!35696 lt!1085802)) (_1!20924 lt!1085801)) (_2!20924 lt!1085801)))))

(assert (=> b!3211090 (= lt!1085801 (lexList!1313 thiss!18206 rules!2135 (_2!20921 (v!35696 lt!1085802))))))

(declare-fun d!879881 () Bool)

(assert (=> d!879881 e!2002259))

(declare-fun c!539404 () Bool)

(assert (=> d!879881 (= c!539404 (> (size!27264 (_1!20924 lt!1085803)) 0))))

(assert (=> d!879881 (= lt!1085803 e!2002260)))

(declare-fun c!539403 () Bool)

(assert (=> d!879881 (= c!539403 ((_ is Some!7146) lt!1085802))))

(assert (=> d!879881 (= lt!1085802 (maxPrefix!2455 thiss!18206 rules!2135 (list!12865 lt!1084684)))))

(assert (=> d!879881 (= (lexList!1313 thiss!18206 rules!2135 (list!12865 lt!1084684)) lt!1085803)))

(declare-fun b!3211091 () Bool)

(assert (=> b!3211091 (= e!2002259 e!2002258)))

(declare-fun res!1307144 () Bool)

(assert (=> b!3211091 (= res!1307144 (< (size!27260 (_2!20924 lt!1085803)) (size!27260 (list!12865 lt!1084684))))))

(assert (=> b!3211091 (=> (not res!1307144) (not e!2002258))))

(assert (= (and d!879881 c!539403) b!3211090))

(assert (= (and d!879881 (not c!539403)) b!3211089))

(assert (= (and d!879881 c!539404) b!3211091))

(assert (= (and d!879881 (not c!539404)) b!3211088))

(assert (= (and b!3211091 res!1307144) b!3211087))

(declare-fun m!3480185 () Bool)

(assert (=> b!3211087 m!3480185))

(declare-fun m!3480187 () Bool)

(assert (=> b!3211090 m!3480187))

(declare-fun m!3480189 () Bool)

(assert (=> d!879881 m!3480189))

(assert (=> d!879881 m!3477337))

(declare-fun m!3480193 () Bool)

(assert (=> d!879881 m!3480193))

(declare-fun m!3480195 () Bool)

(assert (=> b!3211091 m!3480195))

(assert (=> b!3211091 m!3477337))

(assert (=> b!3211091 m!3479431))

(assert (=> b!3209546 d!879881))

(declare-fun d!879883 () Bool)

(assert (=> d!879883 (= (list!12865 lt!1084684) (list!12868 (c!538931 lt!1084684)))))

(declare-fun bs!541696 () Bool)

(assert (= bs!541696 d!879883))

(declare-fun m!3480205 () Bool)

(assert (=> bs!541696 m!3480205))

(assert (=> b!3209546 d!879883))

(declare-fun d!879885 () Bool)

(declare-fun lt!1085809 () Bool)

(declare-fun content!4891 (List!36303) (InoxSet Token!9814))

(assert (=> d!879885 (= lt!1085809 (select (content!4891 tokens!494) (h!41599 tokens!494)))))

(declare-fun e!2002277 () Bool)

(assert (=> d!879885 (= lt!1085809 e!2002277)))

(declare-fun res!1307157 () Bool)

(assert (=> d!879885 (=> (not res!1307157) (not e!2002277))))

(assert (=> d!879885 (= res!1307157 ((_ is Cons!36179) tokens!494))))

(assert (=> d!879885 (= (contains!6463 tokens!494 (h!41599 tokens!494)) lt!1085809)))

(declare-fun b!3211120 () Bool)

(declare-fun e!2002278 () Bool)

(assert (=> b!3211120 (= e!2002277 e!2002278)))

(declare-fun res!1307158 () Bool)

(assert (=> b!3211120 (=> res!1307158 e!2002278)))

(assert (=> b!3211120 (= res!1307158 (= (h!41599 tokens!494) (h!41599 tokens!494)))))

(declare-fun b!3211121 () Bool)

(assert (=> b!3211121 (= e!2002278 (contains!6463 (t!238514 tokens!494) (h!41599 tokens!494)))))

(assert (= (and d!879885 res!1307157) b!3211120))

(assert (= (and b!3211120 (not res!1307158)) b!3211121))

(declare-fun m!3480235 () Bool)

(assert (=> d!879885 m!3480235))

(declare-fun m!3480237 () Bool)

(assert (=> d!879885 m!3480237))

(declare-fun m!3480239 () Bool)

(assert (=> b!3211121 m!3480239))

(assert (=> b!3210001 d!879885))

(declare-fun d!879893 () Bool)

(assert (=> d!879893 (= (list!12869 lt!1084829) (list!12871 (c!538932 lt!1084829)))))

(declare-fun bs!541698 () Bool)

(assert (= bs!541698 d!879893))

(declare-fun m!3480241 () Bool)

(assert (=> bs!541698 m!3480241))

(assert (=> d!879025 d!879893))

(declare-fun d!879895 () Bool)

(declare-fun e!2002289 () Bool)

(assert (=> d!879895 e!2002289))

(declare-fun res!1307166 () Bool)

(assert (=> d!879895 (=> (not res!1307166) (not e!2002289))))

(declare-fun lt!1085812 () BalanceConc!21262)

(assert (=> d!879895 (= res!1307166 (= (list!12869 lt!1085812) (Cons!36179 separatorToken!241 Nil!36179)))))

(declare-fun choose!18745 (Token!9814) BalanceConc!21262)

(assert (=> d!879895 (= lt!1085812 (choose!18745 separatorToken!241))))

(assert (=> d!879895 (= (singleton!994 separatorToken!241) lt!1085812)))

(declare-fun b!3211135 () Bool)

(assert (=> b!3211135 (= e!2002289 (isBalanced!3217 (c!538932 lt!1085812)))))

(assert (= (and d!879895 res!1307166) b!3211135))

(declare-fun m!3480271 () Bool)

(assert (=> d!879895 m!3480271))

(declare-fun m!3480273 () Bool)

(assert (=> d!879895 m!3480273))

(declare-fun m!3480275 () Bool)

(assert (=> b!3211135 m!3480275))

(assert (=> d!879025 d!879895))

(declare-fun b!3211140 () Bool)

(declare-fun e!2002292 () List!36301)

(assert (=> b!3211140 (= e!2002292 (printList!1363 thiss!18206 (t!238514 (Cons!36179 (h!41599 tokens!494) Nil!36179))))))

(declare-fun e!2002293 () Bool)

(declare-fun b!3211143 () Bool)

(declare-fun lt!1085815 () List!36301)

(assert (=> b!3211143 (= e!2002293 (or (not (= (printList!1363 thiss!18206 (t!238514 (Cons!36179 (h!41599 tokens!494) Nil!36179))) Nil!36177)) (= lt!1085815 (list!12865 (charsOf!3240 (h!41599 (Cons!36179 (h!41599 tokens!494) Nil!36179)))))))))

(declare-fun b!3211142 () Bool)

(declare-fun res!1307167 () Bool)

(assert (=> b!3211142 (=> (not res!1307167) (not e!2002293))))

(assert (=> b!3211142 (= res!1307167 (= (size!27260 lt!1085815) (+ (size!27260 (list!12865 (charsOf!3240 (h!41599 (Cons!36179 (h!41599 tokens!494) Nil!36179))))) (size!27260 (printList!1363 thiss!18206 (t!238514 (Cons!36179 (h!41599 tokens!494) Nil!36179)))))))))

(declare-fun d!879911 () Bool)

(assert (=> d!879911 e!2002293))

(declare-fun res!1307168 () Bool)

(assert (=> d!879911 (=> (not res!1307168) (not e!2002293))))

(assert (=> d!879911 (= res!1307168 (= (content!4888 lt!1085815) ((_ map or) (content!4888 (list!12865 (charsOf!3240 (h!41599 (Cons!36179 (h!41599 tokens!494) Nil!36179))))) (content!4888 (printList!1363 thiss!18206 (t!238514 (Cons!36179 (h!41599 tokens!494) Nil!36179)))))))))

(assert (=> d!879911 (= lt!1085815 e!2002292)))

(declare-fun c!539418 () Bool)

(assert (=> d!879911 (= c!539418 ((_ is Nil!36177) (list!12865 (charsOf!3240 (h!41599 (Cons!36179 (h!41599 tokens!494) Nil!36179))))))))

(assert (=> d!879911 (= (++!8680 (list!12865 (charsOf!3240 (h!41599 (Cons!36179 (h!41599 tokens!494) Nil!36179)))) (printList!1363 thiss!18206 (t!238514 (Cons!36179 (h!41599 tokens!494) Nil!36179)))) lt!1085815)))

(declare-fun b!3211141 () Bool)

(assert (=> b!3211141 (= e!2002292 (Cons!36177 (h!41597 (list!12865 (charsOf!3240 (h!41599 (Cons!36179 (h!41599 tokens!494) Nil!36179))))) (++!8680 (t!238512 (list!12865 (charsOf!3240 (h!41599 (Cons!36179 (h!41599 tokens!494) Nil!36179))))) (printList!1363 thiss!18206 (t!238514 (Cons!36179 (h!41599 tokens!494) Nil!36179))))))))

(assert (= (and d!879911 c!539418) b!3211140))

(assert (= (and d!879911 (not c!539418)) b!3211141))

(assert (= (and d!879911 res!1307168) b!3211142))

(assert (= (and b!3211142 res!1307167) b!3211143))

(declare-fun m!3480277 () Bool)

(assert (=> b!3211142 m!3480277))

(assert (=> b!3211142 m!3477035))

(declare-fun m!3480279 () Bool)

(assert (=> b!3211142 m!3480279))

(assert (=> b!3211142 m!3477037))

(declare-fun m!3480281 () Bool)

(assert (=> b!3211142 m!3480281))

(declare-fun m!3480283 () Bool)

(assert (=> d!879911 m!3480283))

(assert (=> d!879911 m!3477035))

(declare-fun m!3480285 () Bool)

(assert (=> d!879911 m!3480285))

(assert (=> d!879911 m!3477037))

(declare-fun m!3480287 () Bool)

(assert (=> d!879911 m!3480287))

(assert (=> b!3211141 m!3477037))

(declare-fun m!3480291 () Bool)

(assert (=> b!3211141 m!3480291))

(assert (=> b!3209308 d!879911))

(declare-fun d!879915 () Bool)

(assert (=> d!879915 (= (list!12865 (charsOf!3240 (h!41599 (Cons!36179 (h!41599 tokens!494) Nil!36179)))) (list!12868 (c!538931 (charsOf!3240 (h!41599 (Cons!36179 (h!41599 tokens!494) Nil!36179))))))))

(declare-fun bs!541703 () Bool)

(assert (= bs!541703 d!879915))

(declare-fun m!3480295 () Bool)

(assert (=> bs!541703 m!3480295))

(assert (=> b!3209308 d!879915))

(declare-fun d!879919 () Bool)

(declare-fun lt!1085817 () BalanceConc!21260)

(assert (=> d!879919 (= (list!12865 lt!1085817) (originalCharacters!5938 (h!41599 (Cons!36179 (h!41599 tokens!494) Nil!36179))))))

(assert (=> d!879919 (= lt!1085817 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (Cons!36179 (h!41599 tokens!494) Nil!36179))))) (value!169344 (h!41599 (Cons!36179 (h!41599 tokens!494) Nil!36179)))))))

(assert (=> d!879919 (= (charsOf!3240 (h!41599 (Cons!36179 (h!41599 tokens!494) Nil!36179))) lt!1085817)))

(declare-fun b_lambda!88003 () Bool)

(assert (=> (not b_lambda!88003) (not d!879919)))

(declare-fun t!238775 () Bool)

(declare-fun tb!157801 () Bool)

(assert (=> (and b!3210119 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (Cons!36179 (h!41599 tokens!494) Nil!36179)))))) t!238775) tb!157801))

(declare-fun b!3211146 () Bool)

(declare-fun e!2002295 () Bool)

(declare-fun tp!1013383 () Bool)

(assert (=> b!3211146 (= e!2002295 (and (inv!49039 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (Cons!36179 (h!41599 tokens!494) Nil!36179))))) (value!169344 (h!41599 (Cons!36179 (h!41599 tokens!494) Nil!36179)))))) tp!1013383))))

(declare-fun result!200166 () Bool)

(assert (=> tb!157801 (= result!200166 (and (inv!49040 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (Cons!36179 (h!41599 tokens!494) Nil!36179))))) (value!169344 (h!41599 (Cons!36179 (h!41599 tokens!494) Nil!36179))))) e!2002295))))

(assert (= tb!157801 b!3211146))

(declare-fun m!3480297 () Bool)

(assert (=> b!3211146 m!3480297))

(declare-fun m!3480299 () Bool)

(assert (=> tb!157801 m!3480299))

(assert (=> d!879919 t!238775))

(declare-fun b_and!213973 () Bool)

(assert (= b_and!213943 (and (=> t!238775 result!200166) b_and!213973)))

(declare-fun tb!157803 () Bool)

(declare-fun t!238777 () Bool)

(assert (=> (and b!3210083 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (Cons!36179 (h!41599 tokens!494) Nil!36179)))))) t!238777) tb!157803))

(declare-fun result!200168 () Bool)

(assert (= result!200168 result!200166))

(assert (=> d!879919 t!238777))

(declare-fun b_and!213975 () Bool)

(assert (= b_and!213945 (and (=> t!238777 result!200168) b_and!213975)))

(declare-fun t!238779 () Bool)

(declare-fun tb!157805 () Bool)

(assert (=> (and b!3209139 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (Cons!36179 (h!41599 tokens!494) Nil!36179)))))) t!238779) tb!157805))

(declare-fun result!200170 () Bool)

(assert (= result!200170 result!200166))

(assert (=> d!879919 t!238779))

(declare-fun b_and!213977 () Bool)

(assert (= b_and!213951 (and (=> t!238779 result!200170) b_and!213977)))

(declare-fun tb!157807 () Bool)

(declare-fun t!238781 () Bool)

(assert (=> (and b!3209140 (= (toChars!7167 (transformation!5224 (h!41598 rules!2135))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (Cons!36179 (h!41599 tokens!494) Nil!36179)))))) t!238781) tb!157807))

(declare-fun result!200172 () Bool)

(assert (= result!200172 result!200166))

(assert (=> d!879919 t!238781))

(declare-fun b_and!213979 () Bool)

(assert (= b_and!213949 (and (=> t!238781 result!200172) b_and!213979)))

(declare-fun tb!157809 () Bool)

(declare-fun t!238783 () Bool)

(assert (=> (and b!3209120 (= (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (Cons!36179 (h!41599 tokens!494) Nil!36179)))))) t!238783) tb!157809))

(declare-fun result!200174 () Bool)

(assert (= result!200174 result!200166))

(assert (=> d!879919 t!238783))

(declare-fun b_and!213981 () Bool)

(assert (= b_and!213947 (and (=> t!238783 result!200174) b_and!213981)))

(declare-fun m!3480301 () Bool)

(assert (=> d!879919 m!3480301))

(declare-fun m!3480303 () Bool)

(assert (=> d!879919 m!3480303))

(assert (=> b!3209308 d!879919))

(declare-fun d!879921 () Bool)

(declare-fun c!539420 () Bool)

(assert (=> d!879921 (= c!539420 ((_ is Cons!36179) (t!238514 (Cons!36179 (h!41599 tokens!494) Nil!36179))))))

(declare-fun e!2002296 () List!36301)

(assert (=> d!879921 (= (printList!1363 thiss!18206 (t!238514 (Cons!36179 (h!41599 tokens!494) Nil!36179))) e!2002296)))

(declare-fun b!3211147 () Bool)

(assert (=> b!3211147 (= e!2002296 (++!8680 (list!12865 (charsOf!3240 (h!41599 (t!238514 (Cons!36179 (h!41599 tokens!494) Nil!36179))))) (printList!1363 thiss!18206 (t!238514 (t!238514 (Cons!36179 (h!41599 tokens!494) Nil!36179))))))))

(declare-fun b!3211148 () Bool)

(assert (=> b!3211148 (= e!2002296 Nil!36177)))

(assert (= (and d!879921 c!539420) b!3211147))

(assert (= (and d!879921 (not c!539420)) b!3211148))

(declare-fun m!3480305 () Bool)

(assert (=> b!3211147 m!3480305))

(assert (=> b!3211147 m!3480305))

(declare-fun m!3480307 () Bool)

(assert (=> b!3211147 m!3480307))

(declare-fun m!3480309 () Bool)

(assert (=> b!3211147 m!3480309))

(assert (=> b!3211147 m!3480307))

(assert (=> b!3211147 m!3480309))

(declare-fun m!3480311 () Bool)

(assert (=> b!3211147 m!3480311))

(assert (=> b!3209308 d!879921))

(declare-fun b!3211149 () Bool)

(declare-fun e!2002297 () List!36301)

(declare-fun call!232395 () List!36301)

(assert (=> b!3211149 (= e!2002297 call!232395)))

(declare-fun d!879923 () Bool)

(declare-fun c!539422 () Bool)

(assert (=> d!879923 (= c!539422 (or ((_ is EmptyExpr!9983) (ite c!539071 (reg!10312 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (ite c!539068 (regTwo!20479 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (regOne!20478 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))))) ((_ is EmptyLang!9983) (ite c!539071 (reg!10312 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (ite c!539068 (regTwo!20479 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (regOne!20478 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))))))))

(declare-fun e!2002300 () List!36301)

(assert (=> d!879923 (= (usedCharacters!540 (ite c!539071 (reg!10312 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (ite c!539068 (regTwo!20479 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (regOne!20478 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))))) e!2002300)))

(declare-fun bm!232389 () Bool)

(declare-fun call!232397 () List!36301)

(declare-fun call!232394 () List!36301)

(assert (=> bm!232389 (= call!232397 call!232394)))

(declare-fun e!2002298 () List!36301)

(declare-fun b!3211150 () Bool)

(assert (=> b!3211150 (= e!2002298 (Cons!36177 (c!538930 (ite c!539071 (reg!10312 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (ite c!539068 (regTwo!20479 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (regOne!20478 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))))) Nil!36177))))

(declare-fun call!232396 () List!36301)

(declare-fun c!539421 () Bool)

(declare-fun bm!232390 () Bool)

(assert (=> bm!232390 (= call!232395 (++!8680 (ite c!539421 call!232396 call!232397) (ite c!539421 call!232397 call!232396)))))

(declare-fun b!3211151 () Bool)

(assert (=> b!3211151 (= e!2002300 e!2002298)))

(declare-fun c!539423 () Bool)

(assert (=> b!3211151 (= c!539423 ((_ is ElementMatch!9983) (ite c!539071 (reg!10312 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (ite c!539068 (regTwo!20479 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (regOne!20478 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))))))))

(declare-fun c!539424 () Bool)

(declare-fun b!3211152 () Bool)

(assert (=> b!3211152 (= c!539424 ((_ is Star!9983) (ite c!539071 (reg!10312 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (ite c!539068 (regTwo!20479 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (regOne!20478 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))))))))

(declare-fun e!2002299 () List!36301)

(assert (=> b!3211152 (= e!2002298 e!2002299)))

(declare-fun b!3211153 () Bool)

(assert (=> b!3211153 (= e!2002299 e!2002297)))

(assert (=> b!3211153 (= c!539421 ((_ is Union!9983) (ite c!539071 (reg!10312 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (ite c!539068 (regTwo!20479 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (regOne!20478 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))))))))

(declare-fun b!3211154 () Bool)

(assert (=> b!3211154 (= e!2002297 call!232395)))

(declare-fun bm!232391 () Bool)

(assert (=> bm!232391 (= call!232396 (usedCharacters!540 (ite c!539421 (regOne!20479 (ite c!539071 (reg!10312 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (ite c!539068 (regTwo!20479 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (regOne!20478 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))))) (regTwo!20478 (ite c!539071 (reg!10312 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (ite c!539068 (regTwo!20479 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (regOne!20478 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))))))))))

(declare-fun b!3211155 () Bool)

(assert (=> b!3211155 (= e!2002299 call!232394)))

(declare-fun b!3211156 () Bool)

(assert (=> b!3211156 (= e!2002300 Nil!36177)))

(declare-fun bm!232392 () Bool)

(assert (=> bm!232392 (= call!232394 (usedCharacters!540 (ite c!539424 (reg!10312 (ite c!539071 (reg!10312 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (ite c!539068 (regTwo!20479 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (regOne!20478 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))))) (ite c!539421 (regTwo!20479 (ite c!539071 (reg!10312 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (ite c!539068 (regTwo!20479 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (regOne!20478 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))))) (regOne!20478 (ite c!539071 (reg!10312 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (ite c!539068 (regTwo!20479 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (regOne!20478 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))))))))))

(assert (= (and d!879923 c!539422) b!3211156))

(assert (= (and d!879923 (not c!539422)) b!3211151))

(assert (= (and b!3211151 c!539423) b!3211150))

(assert (= (and b!3211151 (not c!539423)) b!3211152))

(assert (= (and b!3211152 c!539424) b!3211155))

(assert (= (and b!3211152 (not c!539424)) b!3211153))

(assert (= (and b!3211153 c!539421) b!3211149))

(assert (= (and b!3211153 (not c!539421)) b!3211154))

(assert (= (or b!3211149 b!3211154) bm!232389))

(assert (= (or b!3211149 b!3211154) bm!232391))

(assert (= (or b!3211149 b!3211154) bm!232390))

(assert (= (or b!3211155 bm!232389) bm!232392))

(declare-fun m!3480323 () Bool)

(assert (=> bm!232390 m!3480323))

(declare-fun m!3480325 () Bool)

(assert (=> bm!232391 m!3480325))

(declare-fun m!3480327 () Bool)

(assert (=> bm!232392 m!3480327))

(assert (=> bm!232226 d!879923))

(declare-fun d!879933 () Bool)

(assert (=> d!879933 (= (list!12869 lt!1084837) (list!12871 (c!538932 lt!1084837)))))

(declare-fun bs!541708 () Bool)

(assert (= bs!541708 d!879933))

(declare-fun m!3480329 () Bool)

(assert (=> bs!541708 m!3480329))

(assert (=> d!879039 d!879933))

(declare-fun d!879935 () Bool)

(declare-fun e!2002304 () Bool)

(assert (=> d!879935 e!2002304))

(declare-fun res!1307172 () Bool)

(assert (=> d!879935 (=> (not res!1307172) (not e!2002304))))

(declare-fun lt!1085823 () BalanceConc!21262)

(assert (=> d!879935 (= res!1307172 (= (list!12869 lt!1085823) (Cons!36179 (h!41599 (t!238514 tokens!494)) Nil!36179)))))

(assert (=> d!879935 (= lt!1085823 (choose!18745 (h!41599 (t!238514 tokens!494))))))

(assert (=> d!879935 (= (singleton!994 (h!41599 (t!238514 tokens!494))) lt!1085823)))

(declare-fun b!3211162 () Bool)

(assert (=> b!3211162 (= e!2002304 (isBalanced!3217 (c!538932 lt!1085823)))))

(assert (= (and d!879935 res!1307172) b!3211162))

(declare-fun m!3480331 () Bool)

(assert (=> d!879935 m!3480331))

(declare-fun m!3480333 () Bool)

(assert (=> d!879935 m!3480333))

(declare-fun m!3480335 () Bool)

(assert (=> b!3211162 m!3480335))

(assert (=> d!879039 d!879935))

(declare-fun d!879937 () Bool)

(assert (=> d!879937 (= (nullable!3398 (regex!5224 lt!1084665)) (nullableFct!968 (regex!5224 lt!1084665)))))

(declare-fun bs!541709 () Bool)

(assert (= bs!541709 d!879937))

(declare-fun m!3480341 () Bool)

(assert (=> bs!541709 m!3480341))

(assert (=> b!3210013 d!879937))

(declare-fun d!879939 () Bool)

(assert (=> d!879939 (= (isDefined!5554 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 tokens!494))))) (not (isEmpty!20270 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 tokens!494)))))))))

(declare-fun bs!541710 () Bool)

(assert (= bs!541710 d!879939))

(assert (=> bs!541710 m!3476811))

(declare-fun m!3480355 () Bool)

(assert (=> bs!541710 m!3480355))

(assert (=> d!879197 d!879939))

(assert (=> d!879197 d!879023))

(declare-fun d!879941 () Bool)

(declare-fun e!2002305 () Bool)

(assert (=> d!879941 e!2002305))

(declare-fun res!1307173 () Bool)

(assert (=> d!879941 (=> (not res!1307173) (not e!2002305))))

(assert (=> d!879941 (= res!1307173 (isDefined!5554 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 tokens!494))))))))

(assert (=> d!879941 true))

(declare-fun _$52!1553 () Unit!50642)

(assert (=> d!879941 (= (choose!18730 thiss!18206 rules!2135 lt!1084683 (h!41599 tokens!494)) _$52!1553)))

(declare-fun b!3211163 () Bool)

(declare-fun res!1307174 () Bool)

(assert (=> b!3211163 (=> (not res!1307174) (not e!2002305))))

(assert (=> b!3211163 (= res!1307174 (matchR!4617 (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 tokens!494)))))) (list!12865 (charsOf!3240 (h!41599 tokens!494)))))))

(declare-fun b!3211164 () Bool)

(assert (=> b!3211164 (= e!2002305 (= (rule!7664 (h!41599 tokens!494)) (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 tokens!494)))))))))

(assert (= (and d!879941 res!1307173) b!3211163))

(assert (= (and b!3211163 res!1307174) b!3211164))

(assert (=> d!879941 m!3476811))

(assert (=> d!879941 m!3476811))

(assert (=> d!879941 m!3478073))

(assert (=> b!3211163 m!3476811))

(assert (=> b!3211163 m!3476811))

(assert (=> b!3211163 m!3478079))

(assert (=> b!3211163 m!3476715))

(assert (=> b!3211163 m!3476715))

(assert (=> b!3211163 m!3476717))

(assert (=> b!3211163 m!3476717))

(assert (=> b!3211163 m!3478083))

(assert (=> b!3211164 m!3476811))

(assert (=> b!3211164 m!3476811))

(assert (=> b!3211164 m!3478079))

(assert (=> d!879197 d!879941))

(assert (=> d!879197 d!879257))

(declare-fun d!879953 () Bool)

(assert (=> d!879953 (= (inv!49040 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (value!169344 (h!41599 tokens!494)))) (isBalanced!3218 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (value!169344 (h!41599 tokens!494))))))))

(declare-fun bs!541714 () Bool)

(assert (= bs!541714 d!879953))

(declare-fun m!3480367 () Bool)

(assert (=> bs!541714 m!3480367))

(assert (=> tb!157583 d!879953))

(assert (=> b!3209765 d!879679))

(assert (=> b!3209765 d!879191))

(declare-fun d!879955 () Bool)

(assert (=> d!879955 (= (isEmpty!20271 lt!1084932) (not ((_ is Some!7146) lt!1084932)))))

(assert (=> d!879137 d!879955))

(declare-fun b!3211180 () Bool)

(declare-fun res!1307191 () Bool)

(declare-fun e!2002320 () Bool)

(assert (=> b!3211180 (=> (not res!1307191) (not e!2002320))))

(assert (=> b!3211180 (= res!1307191 (= (head!7043 lt!1084663) (head!7043 lt!1084663)))))

(declare-fun b!3211182 () Bool)

(declare-fun e!2002319 () Bool)

(assert (=> b!3211182 (= e!2002319 (>= (size!27260 lt!1084663) (size!27260 lt!1084663)))))

(declare-fun b!3211181 () Bool)

(assert (=> b!3211181 (= e!2002320 (isPrefix!2783 (tail!5212 lt!1084663) (tail!5212 lt!1084663)))))

(declare-fun d!879957 () Bool)

(assert (=> d!879957 e!2002319))

(declare-fun res!1307189 () Bool)

(assert (=> d!879957 (=> res!1307189 e!2002319)))

(declare-fun lt!1085833 () Bool)

(assert (=> d!879957 (= res!1307189 (not lt!1085833))))

(declare-fun e!2002318 () Bool)

(assert (=> d!879957 (= lt!1085833 e!2002318)))

(declare-fun res!1307192 () Bool)

(assert (=> d!879957 (=> res!1307192 e!2002318)))

(assert (=> d!879957 (= res!1307192 ((_ is Nil!36177) lt!1084663))))

(assert (=> d!879957 (= (isPrefix!2783 lt!1084663 lt!1084663) lt!1085833)))

(declare-fun b!3211179 () Bool)

(assert (=> b!3211179 (= e!2002318 e!2002320)))

(declare-fun res!1307190 () Bool)

(assert (=> b!3211179 (=> (not res!1307190) (not e!2002320))))

(assert (=> b!3211179 (= res!1307190 (not ((_ is Nil!36177) lt!1084663)))))

(assert (= (and d!879957 (not res!1307192)) b!3211179))

(assert (= (and b!3211179 res!1307190) b!3211180))

(assert (= (and b!3211180 res!1307191) b!3211181))

(assert (= (and d!879957 (not res!1307189)) b!3211182))

(declare-fun m!3480379 () Bool)

(assert (=> b!3211180 m!3480379))

(assert (=> b!3211180 m!3480379))

(assert (=> b!3211182 m!3477751))

(assert (=> b!3211182 m!3477751))

(declare-fun m!3480381 () Bool)

(assert (=> b!3211181 m!3480381))

(assert (=> b!3211181 m!3480381))

(assert (=> b!3211181 m!3480381))

(assert (=> b!3211181 m!3480381))

(declare-fun m!3480383 () Bool)

(assert (=> b!3211181 m!3480383))

(assert (=> d!879137 d!879957))

(declare-fun d!879965 () Bool)

(assert (=> d!879965 (isPrefix!2783 lt!1084663 lt!1084663)))

(declare-fun lt!1085838 () Unit!50642)

(declare-fun choose!18746 (List!36301 List!36301) Unit!50642)

(assert (=> d!879965 (= lt!1085838 (choose!18746 lt!1084663 lt!1084663))))

(assert (=> d!879965 (= (lemmaIsPrefixRefl!1742 lt!1084663 lt!1084663) lt!1085838)))

(declare-fun bs!541717 () Bool)

(assert (= bs!541717 d!879965))

(assert (=> bs!541717 m!3477743))

(declare-fun m!3480407 () Bool)

(assert (=> bs!541717 m!3480407))

(assert (=> d!879137 d!879965))

(declare-fun bs!541719 () Bool)

(declare-fun d!879973 () Bool)

(assert (= bs!541719 (and d!879973 d!879479)))

(declare-fun lambda!117520 () Int)

(assert (=> bs!541719 (= lambda!117520 lambda!117498)))

(assert (=> d!879973 true))

(declare-fun lt!1085844 () Bool)

(assert (=> d!879973 (= lt!1085844 (forall!7393 rules!2135 lambda!117520))))

(declare-fun e!2002342 () Bool)

(assert (=> d!879973 (= lt!1085844 e!2002342)))

(declare-fun res!1307210 () Bool)

(assert (=> d!879973 (=> res!1307210 e!2002342)))

(assert (=> d!879973 (= res!1307210 (not ((_ is Cons!36178) rules!2135)))))

(assert (=> d!879973 (= (rulesValidInductive!1776 thiss!18206 rules!2135) lt!1085844)))

(declare-fun b!3211221 () Bool)

(declare-fun e!2002343 () Bool)

(assert (=> b!3211221 (= e!2002342 e!2002343)))

(declare-fun res!1307209 () Bool)

(assert (=> b!3211221 (=> (not res!1307209) (not e!2002343))))

(assert (=> b!3211221 (= res!1307209 (ruleValid!1647 thiss!18206 (h!41598 rules!2135)))))

(declare-fun b!3211222 () Bool)

(assert (=> b!3211222 (= e!2002343 (rulesValidInductive!1776 thiss!18206 (t!238513 rules!2135)))))

(assert (= (and d!879973 (not res!1307210)) b!3211221))

(assert (= (and b!3211221 res!1307209) b!3211222))

(declare-fun m!3480429 () Bool)

(assert (=> d!879973 m!3480429))

(declare-fun m!3480431 () Bool)

(assert (=> b!3211221 m!3480431))

(declare-fun m!3480433 () Bool)

(assert (=> b!3211222 m!3480433))

(assert (=> d!879137 d!879973))

(declare-fun b!3211223 () Bool)

(declare-fun e!2002344 () List!36301)

(declare-fun call!232404 () List!36301)

(assert (=> b!3211223 (= e!2002344 call!232404)))

(declare-fun d!879983 () Bool)

(declare-fun c!539438 () Bool)

(assert (=> d!879983 (= c!539438 (or ((_ is EmptyExpr!9983) (ite c!539051 (reg!10312 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (ite c!539048 (regTwo!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (regOne!20478 (regex!5224 (rule!7664 (h!41599 tokens!494))))))) ((_ is EmptyLang!9983) (ite c!539051 (reg!10312 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (ite c!539048 (regTwo!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (regOne!20478 (regex!5224 (rule!7664 (h!41599 tokens!494)))))))))))

(declare-fun e!2002347 () List!36301)

(assert (=> d!879983 (= (usedCharacters!540 (ite c!539051 (reg!10312 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (ite c!539048 (regTwo!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (regOne!20478 (regex!5224 (rule!7664 (h!41599 tokens!494))))))) e!2002347)))

(declare-fun bm!232398 () Bool)

(declare-fun call!232406 () List!36301)

(declare-fun call!232403 () List!36301)

(assert (=> bm!232398 (= call!232406 call!232403)))

(declare-fun e!2002345 () List!36301)

(declare-fun b!3211224 () Bool)

(assert (=> b!3211224 (= e!2002345 (Cons!36177 (c!538930 (ite c!539051 (reg!10312 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (ite c!539048 (regTwo!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (regOne!20478 (regex!5224 (rule!7664 (h!41599 tokens!494))))))) Nil!36177))))

(declare-fun bm!232399 () Bool)

(declare-fun c!539437 () Bool)

(declare-fun call!232405 () List!36301)

(assert (=> bm!232399 (= call!232404 (++!8680 (ite c!539437 call!232405 call!232406) (ite c!539437 call!232406 call!232405)))))

(declare-fun b!3211225 () Bool)

(assert (=> b!3211225 (= e!2002347 e!2002345)))

(declare-fun c!539439 () Bool)

(assert (=> b!3211225 (= c!539439 ((_ is ElementMatch!9983) (ite c!539051 (reg!10312 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (ite c!539048 (regTwo!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (regOne!20478 (regex!5224 (rule!7664 (h!41599 tokens!494))))))))))

(declare-fun c!539440 () Bool)

(declare-fun b!3211226 () Bool)

(assert (=> b!3211226 (= c!539440 ((_ is Star!9983) (ite c!539051 (reg!10312 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (ite c!539048 (regTwo!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (regOne!20478 (regex!5224 (rule!7664 (h!41599 tokens!494))))))))))

(declare-fun e!2002346 () List!36301)

(assert (=> b!3211226 (= e!2002345 e!2002346)))

(declare-fun b!3211227 () Bool)

(assert (=> b!3211227 (= e!2002346 e!2002344)))

(assert (=> b!3211227 (= c!539437 ((_ is Union!9983) (ite c!539051 (reg!10312 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (ite c!539048 (regTwo!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (regOne!20478 (regex!5224 (rule!7664 (h!41599 tokens!494))))))))))

(declare-fun b!3211228 () Bool)

(assert (=> b!3211228 (= e!2002344 call!232404)))

(declare-fun bm!232400 () Bool)

(assert (=> bm!232400 (= call!232405 (usedCharacters!540 (ite c!539437 (regOne!20479 (ite c!539051 (reg!10312 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (ite c!539048 (regTwo!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (regOne!20478 (regex!5224 (rule!7664 (h!41599 tokens!494))))))) (regTwo!20478 (ite c!539051 (reg!10312 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (ite c!539048 (regTwo!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (regOne!20478 (regex!5224 (rule!7664 (h!41599 tokens!494))))))))))))

(declare-fun b!3211229 () Bool)

(assert (=> b!3211229 (= e!2002346 call!232403)))

(declare-fun b!3211230 () Bool)

(assert (=> b!3211230 (= e!2002347 Nil!36177)))

(declare-fun bm!232401 () Bool)

(assert (=> bm!232401 (= call!232403 (usedCharacters!540 (ite c!539440 (reg!10312 (ite c!539051 (reg!10312 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (ite c!539048 (regTwo!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (regOne!20478 (regex!5224 (rule!7664 (h!41599 tokens!494))))))) (ite c!539437 (regTwo!20479 (ite c!539051 (reg!10312 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (ite c!539048 (regTwo!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (regOne!20478 (regex!5224 (rule!7664 (h!41599 tokens!494))))))) (regOne!20478 (ite c!539051 (reg!10312 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (ite c!539048 (regTwo!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (regOne!20478 (regex!5224 (rule!7664 (h!41599 tokens!494)))))))))))))

(assert (= (and d!879983 c!539438) b!3211230))

(assert (= (and d!879983 (not c!539438)) b!3211225))

(assert (= (and b!3211225 c!539439) b!3211224))

(assert (= (and b!3211225 (not c!539439)) b!3211226))

(assert (= (and b!3211226 c!539440) b!3211229))

(assert (= (and b!3211226 (not c!539440)) b!3211227))

(assert (= (and b!3211227 c!539437) b!3211223))

(assert (= (and b!3211227 (not c!539437)) b!3211228))

(assert (= (or b!3211223 b!3211228) bm!232398))

(assert (= (or b!3211223 b!3211228) bm!232400))

(assert (= (or b!3211223 b!3211228) bm!232399))

(assert (= (or b!3211229 bm!232398) bm!232401))

(declare-fun m!3480435 () Bool)

(assert (=> bm!232399 m!3480435))

(declare-fun m!3480437 () Bool)

(assert (=> bm!232400 m!3480437))

(declare-fun m!3480439 () Bool)

(assert (=> bm!232401 m!3480439))

(assert (=> bm!232215 d!879983))

(declare-fun d!879985 () Bool)

(declare-fun c!539441 () Bool)

(assert (=> d!879985 (= c!539441 ((_ is Nil!36177) (usedCharacters!540 (regex!5224 (rule!7664 separatorToken!241)))))))

(declare-fun e!2002348 () (InoxSet C!20152))

(assert (=> d!879985 (= (content!4888 (usedCharacters!540 (regex!5224 (rule!7664 separatorToken!241)))) e!2002348)))

(declare-fun b!3211231 () Bool)

(assert (=> b!3211231 (= e!2002348 ((as const (Array C!20152 Bool)) false))))

(declare-fun b!3211232 () Bool)

(assert (=> b!3211232 (= e!2002348 ((_ map or) (store ((as const (Array C!20152 Bool)) false) (h!41597 (usedCharacters!540 (regex!5224 (rule!7664 separatorToken!241)))) true) (content!4888 (t!238512 (usedCharacters!540 (regex!5224 (rule!7664 separatorToken!241)))))))))

(assert (= (and d!879985 c!539441) b!3211231))

(assert (= (and d!879985 (not c!539441)) b!3211232))

(declare-fun m!3480441 () Bool)

(assert (=> b!3211232 m!3480441))

(assert (=> b!3211232 m!3479515))

(assert (=> d!879153 d!879985))

(declare-fun b!3211233 () Bool)

(declare-fun e!2002351 () Bool)

(assert (=> b!3211233 (= e!2002351 (inv!16 (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (seqFromList!3519 lt!1084664))))))

(declare-fun b!3211235 () Bool)

(declare-fun res!1307211 () Bool)

(declare-fun e!2002350 () Bool)

(assert (=> b!3211235 (=> res!1307211 e!2002350)))

(assert (=> b!3211235 (= res!1307211 (not ((_ is IntegerValue!16364) (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (seqFromList!3519 lt!1084664)))))))

(declare-fun e!2002349 () Bool)

(assert (=> b!3211235 (= e!2002349 e!2002350)))

(declare-fun b!3211236 () Bool)

(assert (=> b!3211236 (= e!2002350 (inv!15 (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (seqFromList!3519 lt!1084664))))))

(declare-fun b!3211237 () Bool)

(assert (=> b!3211237 (= e!2002351 e!2002349)))

(declare-fun c!539443 () Bool)

(assert (=> b!3211237 (= c!539443 ((_ is IntegerValue!16363) (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (seqFromList!3519 lt!1084664))))))

(declare-fun b!3211234 () Bool)

(assert (=> b!3211234 (= e!2002349 (inv!17 (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (seqFromList!3519 lt!1084664))))))

(declare-fun d!879987 () Bool)

(declare-fun c!539442 () Bool)

(assert (=> d!879987 (= c!539442 ((_ is IntegerValue!16362) (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (seqFromList!3519 lt!1084664))))))

(assert (=> d!879987 (= (inv!21 (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (seqFromList!3519 lt!1084664))) e!2002351)))

(assert (= (and d!879987 c!539442) b!3211233))

(assert (= (and d!879987 (not c!539442)) b!3211237))

(assert (= (and b!3211237 c!539443) b!3211234))

(assert (= (and b!3211237 (not c!539443)) b!3211235))

(assert (= (and b!3211235 (not res!1307211)) b!3211236))

(declare-fun m!3480443 () Bool)

(assert (=> b!3211233 m!3480443))

(declare-fun m!3480445 () Bool)

(assert (=> b!3211236 m!3480445))

(declare-fun m!3480447 () Bool)

(assert (=> b!3211234 m!3480447))

(assert (=> tb!157595 d!879987))

(declare-fun b!3211238 () Bool)

(declare-fun res!1307217 () Bool)

(declare-fun e!2002356 () Bool)

(assert (=> b!3211238 (=> res!1307217 e!2002356)))

(assert (=> b!3211238 (= res!1307217 (not (isEmpty!20266 (tail!5212 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084882))))))))))

(declare-fun b!3211239 () Bool)

(declare-fun res!1307213 () Bool)

(declare-fun e!2002357 () Bool)

(assert (=> b!3211239 (=> (not res!1307213) (not e!2002357))))

(assert (=> b!3211239 (= res!1307213 (isEmpty!20266 (tail!5212 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084882)))))))))

(declare-fun b!3211240 () Bool)

(declare-fun e!2002353 () Bool)

(assert (=> b!3211240 (= e!2002353 e!2002356)))

(declare-fun res!1307218 () Bool)

(assert (=> b!3211240 (=> res!1307218 e!2002356)))

(declare-fun call!232407 () Bool)

(assert (=> b!3211240 (= res!1307218 call!232407)))

(declare-fun b!3211241 () Bool)

(declare-fun res!1307216 () Bool)

(declare-fun e!2002358 () Bool)

(assert (=> b!3211241 (=> res!1307216 e!2002358)))

(assert (=> b!3211241 (= res!1307216 (not ((_ is ElementMatch!9983) (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))))))

(declare-fun e!2002352 () Bool)

(assert (=> b!3211241 (= e!2002352 e!2002358)))

(declare-fun b!3211242 () Bool)

(declare-fun e!2002354 () Bool)

(assert (=> b!3211242 (= e!2002354 (matchR!4617 (derivativeStep!2951 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) (head!7043 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084882)))))) (tail!5212 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084882)))))))))

(declare-fun b!3211243 () Bool)

(assert (=> b!3211243 (= e!2002358 e!2002353)))

(declare-fun res!1307212 () Bool)

(assert (=> b!3211243 (=> (not res!1307212) (not e!2002353))))

(declare-fun lt!1085845 () Bool)

(assert (=> b!3211243 (= res!1307212 (not lt!1085845))))

(declare-fun b!3211244 () Bool)

(declare-fun res!1307214 () Bool)

(assert (=> b!3211244 (=> res!1307214 e!2002358)))

(assert (=> b!3211244 (= res!1307214 e!2002357)))

(declare-fun res!1307219 () Bool)

(assert (=> b!3211244 (=> (not res!1307219) (not e!2002357))))

(assert (=> b!3211244 (= res!1307219 lt!1085845)))

(declare-fun b!3211245 () Bool)

(assert (=> b!3211245 (= e!2002354 (nullable!3398 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))))

(declare-fun d!879989 () Bool)

(declare-fun e!2002355 () Bool)

(assert (=> d!879989 e!2002355))

(declare-fun c!539445 () Bool)

(assert (=> d!879989 (= c!539445 ((_ is EmptyExpr!9983) (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))))

(assert (=> d!879989 (= lt!1085845 e!2002354)))

(declare-fun c!539446 () Bool)

(assert (=> d!879989 (= c!539446 (isEmpty!20266 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084882))))))))

(assert (=> d!879989 (validRegex!4552 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))))

(assert (=> d!879989 (= (matchR!4617 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084882))))) lt!1085845)))

(declare-fun bm!232402 () Bool)

(assert (=> bm!232402 (= call!232407 (isEmpty!20266 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084882))))))))

(declare-fun b!3211246 () Bool)

(assert (=> b!3211246 (= e!2002356 (not (= (head!7043 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084882))))) (c!538930 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))))))

(declare-fun b!3211247 () Bool)

(assert (=> b!3211247 (= e!2002357 (= (head!7043 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1084882))))) (c!538930 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))))))

(declare-fun b!3211248 () Bool)

(assert (=> b!3211248 (= e!2002352 (not lt!1085845))))

(declare-fun b!3211249 () Bool)

(assert (=> b!3211249 (= e!2002355 (= lt!1085845 call!232407))))

(declare-fun b!3211250 () Bool)

(declare-fun res!1307215 () Bool)

(assert (=> b!3211250 (=> (not res!1307215) (not e!2002357))))

(assert (=> b!3211250 (= res!1307215 (not call!232407))))

(declare-fun b!3211251 () Bool)

(assert (=> b!3211251 (= e!2002355 e!2002352)))

(declare-fun c!539444 () Bool)

(assert (=> b!3211251 (= c!539444 ((_ is EmptyLang!9983) (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))))

(assert (= (and d!879989 c!539446) b!3211245))

(assert (= (and d!879989 (not c!539446)) b!3211242))

(assert (= (and d!879989 c!539445) b!3211249))

(assert (= (and d!879989 (not c!539445)) b!3211251))

(assert (= (and b!3211251 c!539444) b!3211248))

(assert (= (and b!3211251 (not c!539444)) b!3211241))

(assert (= (and b!3211241 (not res!1307216)) b!3211244))

(assert (= (and b!3211244 res!1307219) b!3211250))

(assert (= (and b!3211250 res!1307215) b!3211239))

(assert (= (and b!3211239 res!1307213) b!3211247))

(assert (= (and b!3211244 (not res!1307214)) b!3211243))

(assert (= (and b!3211243 res!1307212) b!3211240))

(assert (= (and b!3211240 (not res!1307218)) b!3211238))

(assert (= (and b!3211238 (not res!1307217)) b!3211246))

(assert (= (or b!3211249 b!3211240 b!3211250) bm!232402))

(assert (=> b!3211245 m!3480023))

(assert (=> b!3211242 m!3477563))

(declare-fun m!3480449 () Bool)

(assert (=> b!3211242 m!3480449))

(assert (=> b!3211242 m!3480449))

(declare-fun m!3480451 () Bool)

(assert (=> b!3211242 m!3480451))

(assert (=> b!3211242 m!3477563))

(declare-fun m!3480453 () Bool)

(assert (=> b!3211242 m!3480453))

(assert (=> b!3211242 m!3480451))

(assert (=> b!3211242 m!3480453))

(declare-fun m!3480455 () Bool)

(assert (=> b!3211242 m!3480455))

(assert (=> b!3211246 m!3477563))

(assert (=> b!3211246 m!3480449))

(assert (=> b!3211239 m!3477563))

(assert (=> b!3211239 m!3480453))

(assert (=> b!3211239 m!3480453))

(declare-fun m!3480457 () Bool)

(assert (=> b!3211239 m!3480457))

(assert (=> d!879989 m!3477563))

(declare-fun m!3480459 () Bool)

(assert (=> d!879989 m!3480459))

(assert (=> d!879989 m!3480001))

(assert (=> bm!232402 m!3477563))

(assert (=> bm!232402 m!3480459))

(assert (=> b!3211247 m!3477563))

(assert (=> b!3211247 m!3480449))

(assert (=> b!3211238 m!3477563))

(assert (=> b!3211238 m!3480453))

(assert (=> b!3211238 m!3480453))

(assert (=> b!3211238 m!3480457))

(assert (=> b!3209666 d!879989))

(assert (=> b!3209666 d!879403))

(assert (=> b!3209666 d!879405))

(assert (=> b!3209666 d!879407))

(declare-fun b!3211256 () Bool)

(declare-fun e!2002362 () Option!7147)

(declare-fun lt!1085846 () tuple2!35582)

(assert (=> b!3211256 (= e!2002362 (Some!7146 (tuple2!35575 (Token!9815 (apply!8197 (transformation!5224 (h!41598 rules!2135)) (seqFromList!3519 (_1!20925 lt!1085846))) (h!41598 rules!2135) (size!27263 (seqFromList!3519 (_1!20925 lt!1085846))) (_1!20925 lt!1085846)) (_2!20925 lt!1085846))))))

(declare-fun lt!1085848 () Unit!50642)

(assert (=> b!3211256 (= lt!1085848 (longestMatchIsAcceptedByMatchOrIsEmpty!803 (regex!5224 (h!41598 rules!2135)) lt!1084663))))

(declare-fun res!1307227 () Bool)

(assert (=> b!3211256 (= res!1307227 (isEmpty!20266 (_1!20925 (findLongestMatchInner!830 (regex!5224 (h!41598 rules!2135)) Nil!36177 (size!27260 Nil!36177) lt!1084663 lt!1084663 (size!27260 lt!1084663)))))))

(declare-fun e!2002364 () Bool)

(assert (=> b!3211256 (=> res!1307227 e!2002364)))

(assert (=> b!3211256 e!2002364))

(declare-fun lt!1085850 () Unit!50642)

(assert (=> b!3211256 (= lt!1085850 lt!1085848)))

(declare-fun lt!1085847 () Unit!50642)

(assert (=> b!3211256 (= lt!1085847 (lemmaSemiInverse!1176 (transformation!5224 (h!41598 rules!2135)) (seqFromList!3519 (_1!20925 lt!1085846))))))

(declare-fun b!3211257 () Bool)

(declare-fun res!1307224 () Bool)

(declare-fun e!2002361 () Bool)

(assert (=> b!3211257 (=> (not res!1307224) (not e!2002361))))

(declare-fun lt!1085849 () Option!7147)

(assert (=> b!3211257 (= res!1307224 (< (size!27260 (_2!20921 (get!11520 lt!1085849))) (size!27260 lt!1084663)))))

(declare-fun b!3211258 () Bool)

(declare-fun e!2002363 () Bool)

(assert (=> b!3211258 (= e!2002363 e!2002361)))

(declare-fun res!1307229 () Bool)

(assert (=> b!3211258 (=> (not res!1307229) (not e!2002361))))

(assert (=> b!3211258 (= res!1307229 (matchR!4617 (regex!5224 (h!41598 rules!2135)) (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1085849))))))))

(declare-fun b!3211259 () Bool)

(declare-fun res!1307230 () Bool)

(assert (=> b!3211259 (=> (not res!1307230) (not e!2002361))))

(assert (=> b!3211259 (= res!1307230 (= (++!8680 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1085849)))) (_2!20921 (get!11520 lt!1085849))) lt!1084663))))

(declare-fun b!3211260 () Bool)

(declare-fun res!1307226 () Bool)

(assert (=> b!3211260 (=> (not res!1307226) (not e!2002361))))

(assert (=> b!3211260 (= res!1307226 (= (rule!7664 (_1!20921 (get!11520 lt!1085849))) (h!41598 rules!2135)))))

(declare-fun b!3211261 () Bool)

(declare-fun res!1307228 () Bool)

(assert (=> b!3211261 (=> (not res!1307228) (not e!2002361))))

(assert (=> b!3211261 (= res!1307228 (= (value!169344 (_1!20921 (get!11520 lt!1085849))) (apply!8197 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1085849)))) (seqFromList!3519 (originalCharacters!5938 (_1!20921 (get!11520 lt!1085849)))))))))

(declare-fun d!879991 () Bool)

(assert (=> d!879991 e!2002363))

(declare-fun res!1307225 () Bool)

(assert (=> d!879991 (=> res!1307225 e!2002363)))

(assert (=> d!879991 (= res!1307225 (isEmpty!20271 lt!1085849))))

(assert (=> d!879991 (= lt!1085849 e!2002362)))

(declare-fun c!539447 () Bool)

(assert (=> d!879991 (= c!539447 (isEmpty!20266 (_1!20925 lt!1085846)))))

(assert (=> d!879991 (= lt!1085846 (findLongestMatch!745 (regex!5224 (h!41598 rules!2135)) lt!1084663))))

(assert (=> d!879991 (ruleValid!1647 thiss!18206 (h!41598 rules!2135))))

(assert (=> d!879991 (= (maxPrefixOneRule!1592 thiss!18206 (h!41598 rules!2135) lt!1084663) lt!1085849)))

(declare-fun b!3211262 () Bool)

(assert (=> b!3211262 (= e!2002364 (matchR!4617 (regex!5224 (h!41598 rules!2135)) (_1!20925 (findLongestMatchInner!830 (regex!5224 (h!41598 rules!2135)) Nil!36177 (size!27260 Nil!36177) lt!1084663 lt!1084663 (size!27260 lt!1084663)))))))

(declare-fun b!3211263 () Bool)

(assert (=> b!3211263 (= e!2002361 (= (size!27259 (_1!20921 (get!11520 lt!1085849))) (size!27260 (originalCharacters!5938 (_1!20921 (get!11520 lt!1085849))))))))

(declare-fun b!3211264 () Bool)

(assert (=> b!3211264 (= e!2002362 None!7146)))

(assert (= (and d!879991 c!539447) b!3211264))

(assert (= (and d!879991 (not c!539447)) b!3211256))

(assert (= (and b!3211256 (not res!1307227)) b!3211262))

(assert (= (and d!879991 (not res!1307225)) b!3211258))

(assert (= (and b!3211258 res!1307229) b!3211259))

(assert (= (and b!3211259 res!1307230) b!3211257))

(assert (= (and b!3211257 res!1307224) b!3211260))

(assert (= (and b!3211260 res!1307226) b!3211261))

(assert (= (and b!3211261 res!1307228) b!3211263))

(declare-fun m!3480465 () Bool)

(assert (=> b!3211258 m!3480465))

(declare-fun m!3480467 () Bool)

(assert (=> b!3211258 m!3480467))

(assert (=> b!3211258 m!3480467))

(declare-fun m!3480469 () Bool)

(assert (=> b!3211258 m!3480469))

(assert (=> b!3211258 m!3480469))

(declare-fun m!3480471 () Bool)

(assert (=> b!3211258 m!3480471))

(declare-fun m!3480473 () Bool)

(assert (=> b!3211256 m!3480473))

(assert (=> b!3211256 m!3477569))

(declare-fun m!3480475 () Bool)

(assert (=> b!3211256 m!3480475))

(declare-fun m!3480477 () Bool)

(assert (=> b!3211256 m!3480477))

(assert (=> b!3211256 m!3477569))

(assert (=> b!3211256 m!3477751))

(declare-fun m!3480479 () Bool)

(assert (=> b!3211256 m!3480479))

(assert (=> b!3211256 m!3480475))

(declare-fun m!3480481 () Bool)

(assert (=> b!3211256 m!3480481))

(declare-fun m!3480483 () Bool)

(assert (=> b!3211256 m!3480483))

(assert (=> b!3211256 m!3480475))

(declare-fun m!3480485 () Bool)

(assert (=> b!3211256 m!3480485))

(assert (=> b!3211256 m!3477751))

(assert (=> b!3211256 m!3480475))

(assert (=> b!3211261 m!3480465))

(declare-fun m!3480487 () Bool)

(assert (=> b!3211261 m!3480487))

(assert (=> b!3211261 m!3480487))

(declare-fun m!3480489 () Bool)

(assert (=> b!3211261 m!3480489))

(assert (=> b!3211260 m!3480465))

(assert (=> b!3211262 m!3477569))

(assert (=> b!3211262 m!3477751))

(assert (=> b!3211262 m!3477569))

(assert (=> b!3211262 m!3477751))

(assert (=> b!3211262 m!3480479))

(declare-fun m!3480491 () Bool)

(assert (=> b!3211262 m!3480491))

(declare-fun m!3480493 () Bool)

(assert (=> d!879991 m!3480493))

(declare-fun m!3480495 () Bool)

(assert (=> d!879991 m!3480495))

(declare-fun m!3480497 () Bool)

(assert (=> d!879991 m!3480497))

(assert (=> d!879991 m!3480431))

(assert (=> b!3211257 m!3480465))

(declare-fun m!3480499 () Bool)

(assert (=> b!3211257 m!3480499))

(assert (=> b!3211257 m!3477751))

(assert (=> b!3211259 m!3480465))

(assert (=> b!3211259 m!3480467))

(assert (=> b!3211259 m!3480467))

(assert (=> b!3211259 m!3480469))

(assert (=> b!3211259 m!3480469))

(declare-fun m!3480501 () Bool)

(assert (=> b!3211259 m!3480501))

(assert (=> b!3211263 m!3480465))

(declare-fun m!3480503 () Bool)

(assert (=> b!3211263 m!3480503))

(assert (=> bm!232222 d!879991))

(declare-fun d!879997 () Bool)

(declare-fun res!1307242 () Bool)

(declare-fun e!2002371 () Bool)

(assert (=> d!879997 (=> res!1307242 e!2002371)))

(assert (=> d!879997 (= res!1307242 (not ((_ is Cons!36178) (t!238513 rules!2135))))))

(assert (=> d!879997 (= (sepAndNonSepRulesDisjointChars!1418 rules!2135 (t!238513 rules!2135)) e!2002371)))

(declare-fun b!3211278 () Bool)

(declare-fun e!2002372 () Bool)

(assert (=> b!3211278 (= e!2002371 e!2002372)))

(declare-fun res!1307243 () Bool)

(assert (=> b!3211278 (=> (not res!1307243) (not e!2002372))))

(assert (=> b!3211278 (= res!1307243 (ruleDisjointCharsFromAllFromOtherType!591 (h!41598 (t!238513 rules!2135)) rules!2135))))

(declare-fun b!3211279 () Bool)

(assert (=> b!3211279 (= e!2002372 (sepAndNonSepRulesDisjointChars!1418 rules!2135 (t!238513 (t!238513 rules!2135))))))

(assert (= (and d!879997 (not res!1307242)) b!3211278))

(assert (= (and b!3211278 res!1307243) b!3211279))

(declare-fun m!3480513 () Bool)

(assert (=> b!3211278 m!3480513))

(declare-fun m!3480515 () Bool)

(assert (=> b!3211279 m!3480515))

(assert (=> b!3210025 d!879997))

(assert (=> d!878925 d!878929))

(declare-fun d!879999 () Bool)

(assert (=> d!879999 (not (matchR!4617 (regex!5224 (rule!7664 separatorToken!241)) lt!1084696))))

(assert (=> d!879999 true))

(declare-fun _$127!264 () Unit!50642)

(assert (=> d!879999 (= (choose!18723 (regex!5224 (rule!7664 separatorToken!241)) lt!1084696 lt!1084676) _$127!264)))

(declare-fun bs!541720 () Bool)

(assert (= bs!541720 d!879999))

(assert (=> bs!541720 m!3476741))

(assert (=> d!878925 d!879999))

(assert (=> d!878925 d!879529))

(declare-fun e!2002377 () List!36301)

(declare-fun b!3211287 () Bool)

(assert (=> b!3211287 (= e!2002377 (ite c!539068 call!232231 call!232230))))

(declare-fun e!2002378 () Bool)

(declare-fun lt!1085858 () List!36301)

(declare-fun b!3211290 () Bool)

(assert (=> b!3211290 (= e!2002378 (or (not (= (ite c!539068 call!232231 call!232230) Nil!36177)) (= lt!1085858 (ite c!539068 call!232230 call!232231))))))

(declare-fun b!3211289 () Bool)

(declare-fun res!1307244 () Bool)

(assert (=> b!3211289 (=> (not res!1307244) (not e!2002378))))

(assert (=> b!3211289 (= res!1307244 (= (size!27260 lt!1085858) (+ (size!27260 (ite c!539068 call!232230 call!232231)) (size!27260 (ite c!539068 call!232231 call!232230)))))))

(declare-fun d!880009 () Bool)

(assert (=> d!880009 e!2002378))

(declare-fun res!1307245 () Bool)

(assert (=> d!880009 (=> (not res!1307245) (not e!2002378))))

(assert (=> d!880009 (= res!1307245 (= (content!4888 lt!1085858) ((_ map or) (content!4888 (ite c!539068 call!232230 call!232231)) (content!4888 (ite c!539068 call!232231 call!232230)))))))

(assert (=> d!880009 (= lt!1085858 e!2002377)))

(declare-fun c!539453 () Bool)

(assert (=> d!880009 (= c!539453 ((_ is Nil!36177) (ite c!539068 call!232230 call!232231)))))

(assert (=> d!880009 (= (++!8680 (ite c!539068 call!232230 call!232231) (ite c!539068 call!232231 call!232230)) lt!1085858)))

(declare-fun b!3211288 () Bool)

(assert (=> b!3211288 (= e!2002377 (Cons!36177 (h!41597 (ite c!539068 call!232230 call!232231)) (++!8680 (t!238512 (ite c!539068 call!232230 call!232231)) (ite c!539068 call!232231 call!232230))))))

(assert (= (and d!880009 c!539453) b!3211287))

(assert (= (and d!880009 (not c!539453)) b!3211288))

(assert (= (and d!880009 res!1307245) b!3211289))

(assert (= (and b!3211289 res!1307244) b!3211290))

(declare-fun m!3480553 () Bool)

(assert (=> b!3211289 m!3480553))

(declare-fun m!3480555 () Bool)

(assert (=> b!3211289 m!3480555))

(declare-fun m!3480557 () Bool)

(assert (=> b!3211289 m!3480557))

(declare-fun m!3480559 () Bool)

(assert (=> d!880009 m!3480559))

(declare-fun m!3480561 () Bool)

(assert (=> d!880009 m!3480561))

(declare-fun m!3480563 () Bool)

(assert (=> d!880009 m!3480563))

(declare-fun m!3480565 () Bool)

(assert (=> b!3211288 m!3480565))

(assert (=> bm!232224 d!880009))

(declare-fun b!3211291 () Bool)

(declare-fun res!1307252 () Bool)

(declare-fun e!2002383 () Bool)

(assert (=> b!3211291 (=> res!1307252 e!2002383)))

(assert (=> b!3211291 (= res!1307252 (not (isEmpty!20266 (tail!5212 (tail!5212 lt!1084683)))))))

(declare-fun b!3211292 () Bool)

(declare-fun res!1307248 () Bool)

(declare-fun e!2002384 () Bool)

(assert (=> b!3211292 (=> (not res!1307248) (not e!2002384))))

(assert (=> b!3211292 (= res!1307248 (isEmpty!20266 (tail!5212 (tail!5212 lt!1084683))))))

(declare-fun b!3211293 () Bool)

(declare-fun e!2002380 () Bool)

(assert (=> b!3211293 (= e!2002380 e!2002383)))

(declare-fun res!1307253 () Bool)

(assert (=> b!3211293 (=> res!1307253 e!2002383)))

(declare-fun call!232409 () Bool)

(assert (=> b!3211293 (= res!1307253 call!232409)))

(declare-fun b!3211294 () Bool)

(declare-fun res!1307251 () Bool)

(declare-fun e!2002385 () Bool)

(assert (=> b!3211294 (=> res!1307251 e!2002385)))

(assert (=> b!3211294 (= res!1307251 (not ((_ is ElementMatch!9983) (derivativeStep!2951 (regex!5224 lt!1084660) (head!7043 lt!1084683)))))))

(declare-fun e!2002379 () Bool)

(assert (=> b!3211294 (= e!2002379 e!2002385)))

(declare-fun b!3211295 () Bool)

(declare-fun e!2002381 () Bool)

(assert (=> b!3211295 (= e!2002381 (matchR!4617 (derivativeStep!2951 (derivativeStep!2951 (regex!5224 lt!1084660) (head!7043 lt!1084683)) (head!7043 (tail!5212 lt!1084683))) (tail!5212 (tail!5212 lt!1084683))))))

(declare-fun b!3211296 () Bool)

(assert (=> b!3211296 (= e!2002385 e!2002380)))

(declare-fun res!1307247 () Bool)

(assert (=> b!3211296 (=> (not res!1307247) (not e!2002380))))

(declare-fun lt!1085860 () Bool)

(assert (=> b!3211296 (= res!1307247 (not lt!1085860))))

(declare-fun b!3211297 () Bool)

(declare-fun res!1307249 () Bool)

(assert (=> b!3211297 (=> res!1307249 e!2002385)))

(assert (=> b!3211297 (= res!1307249 e!2002384)))

(declare-fun res!1307254 () Bool)

(assert (=> b!3211297 (=> (not res!1307254) (not e!2002384))))

(assert (=> b!3211297 (= res!1307254 lt!1085860)))

(declare-fun b!3211298 () Bool)

(assert (=> b!3211298 (= e!2002381 (nullable!3398 (derivativeStep!2951 (regex!5224 lt!1084660) (head!7043 lt!1084683))))))

(declare-fun d!880013 () Bool)

(declare-fun e!2002382 () Bool)

(assert (=> d!880013 e!2002382))

(declare-fun c!539455 () Bool)

(assert (=> d!880013 (= c!539455 ((_ is EmptyExpr!9983) (derivativeStep!2951 (regex!5224 lt!1084660) (head!7043 lt!1084683))))))

(assert (=> d!880013 (= lt!1085860 e!2002381)))

(declare-fun c!539456 () Bool)

(assert (=> d!880013 (= c!539456 (isEmpty!20266 (tail!5212 lt!1084683)))))

(assert (=> d!880013 (validRegex!4552 (derivativeStep!2951 (regex!5224 lt!1084660) (head!7043 lt!1084683)))))

(assert (=> d!880013 (= (matchR!4617 (derivativeStep!2951 (regex!5224 lt!1084660) (head!7043 lt!1084683)) (tail!5212 lt!1084683)) lt!1085860)))

(declare-fun bm!232404 () Bool)

(assert (=> bm!232404 (= call!232409 (isEmpty!20266 (tail!5212 lt!1084683)))))

(declare-fun b!3211299 () Bool)

(assert (=> b!3211299 (= e!2002383 (not (= (head!7043 (tail!5212 lt!1084683)) (c!538930 (derivativeStep!2951 (regex!5224 lt!1084660) (head!7043 lt!1084683))))))))

(declare-fun b!3211300 () Bool)

(assert (=> b!3211300 (= e!2002384 (= (head!7043 (tail!5212 lt!1084683)) (c!538930 (derivativeStep!2951 (regex!5224 lt!1084660) (head!7043 lt!1084683)))))))

(declare-fun b!3211301 () Bool)

(assert (=> b!3211301 (= e!2002379 (not lt!1085860))))

(declare-fun b!3211302 () Bool)

(assert (=> b!3211302 (= e!2002382 (= lt!1085860 call!232409))))

(declare-fun b!3211303 () Bool)

(declare-fun res!1307250 () Bool)

(assert (=> b!3211303 (=> (not res!1307250) (not e!2002384))))

(assert (=> b!3211303 (= res!1307250 (not call!232409))))

(declare-fun b!3211304 () Bool)

(assert (=> b!3211304 (= e!2002382 e!2002379)))

(declare-fun c!539454 () Bool)

(assert (=> b!3211304 (= c!539454 ((_ is EmptyLang!9983) (derivativeStep!2951 (regex!5224 lt!1084660) (head!7043 lt!1084683))))))

(assert (= (and d!880013 c!539456) b!3211298))

(assert (= (and d!880013 (not c!539456)) b!3211295))

(assert (= (and d!880013 c!539455) b!3211302))

(assert (= (and d!880013 (not c!539455)) b!3211304))

(assert (= (and b!3211304 c!539454) b!3211301))

(assert (= (and b!3211304 (not c!539454)) b!3211294))

(assert (= (and b!3211294 (not res!1307251)) b!3211297))

(assert (= (and b!3211297 res!1307254) b!3211303))

(assert (= (and b!3211303 res!1307250) b!3211292))

(assert (= (and b!3211292 res!1307248) b!3211300))

(assert (= (and b!3211297 (not res!1307249)) b!3211296))

(assert (= (and b!3211296 res!1307247) b!3211293))

(assert (= (and b!3211293 (not res!1307253)) b!3211291))

(assert (= (and b!3211291 (not res!1307252)) b!3211299))

(assert (= (or b!3211302 b!3211293 b!3211303) bm!232404))

(assert (=> b!3211298 m!3478309))

(declare-fun m!3480571 () Bool)

(assert (=> b!3211298 m!3480571))

(assert (=> b!3211295 m!3478311))

(declare-fun m!3480573 () Bool)

(assert (=> b!3211295 m!3480573))

(assert (=> b!3211295 m!3478309))

(assert (=> b!3211295 m!3480573))

(declare-fun m!3480575 () Bool)

(assert (=> b!3211295 m!3480575))

(assert (=> b!3211295 m!3478311))

(declare-fun m!3480577 () Bool)

(assert (=> b!3211295 m!3480577))

(assert (=> b!3211295 m!3480575))

(assert (=> b!3211295 m!3480577))

(declare-fun m!3480579 () Bool)

(assert (=> b!3211295 m!3480579))

(assert (=> b!3211299 m!3478311))

(assert (=> b!3211299 m!3480573))

(assert (=> b!3211292 m!3478311))

(assert (=> b!3211292 m!3480577))

(assert (=> b!3211292 m!3480577))

(declare-fun m!3480581 () Bool)

(assert (=> b!3211292 m!3480581))

(assert (=> d!880013 m!3478311))

(assert (=> d!880013 m!3478315))

(assert (=> d!880013 m!3478309))

(declare-fun m!3480583 () Bool)

(assert (=> d!880013 m!3480583))

(assert (=> bm!232404 m!3478311))

(assert (=> bm!232404 m!3478315))

(assert (=> b!3211300 m!3478311))

(assert (=> b!3211300 m!3480573))

(assert (=> b!3211291 m!3478311))

(assert (=> b!3211291 m!3480577))

(assert (=> b!3211291 m!3480577))

(assert (=> b!3211291 m!3480581))

(assert (=> b!3210031 d!880013))

(declare-fun bm!232405 () Bool)

(declare-fun call!232410 () Regex!9983)

(declare-fun call!232413 () Regex!9983)

(assert (=> bm!232405 (= call!232410 call!232413)))

(declare-fun bm!232406 () Bool)

(declare-fun call!232411 () Regex!9983)

(assert (=> bm!232406 (= call!232413 call!232411)))

(declare-fun call!232412 () Regex!9983)

(declare-fun e!2002391 () Regex!9983)

(declare-fun b!3211313 () Bool)

(assert (=> b!3211313 (= e!2002391 (Union!9983 (Concat!15437 call!232410 (regTwo!20478 (regex!5224 lt!1084660))) call!232412))))

(declare-fun b!3211314 () Bool)

(declare-fun e!2002393 () Regex!9983)

(assert (=> b!3211314 (= e!2002393 (Concat!15437 call!232413 (regex!5224 lt!1084660)))))

(declare-fun b!3211315 () Bool)

(declare-fun c!539463 () Bool)

(assert (=> b!3211315 (= c!539463 ((_ is Union!9983) (regex!5224 lt!1084660)))))

(declare-fun e!2002394 () Regex!9983)

(declare-fun e!2002392 () Regex!9983)

(assert (=> b!3211315 (= e!2002394 e!2002392)))

(declare-fun c!539464 () Bool)

(declare-fun bm!232407 () Bool)

(assert (=> bm!232407 (= call!232411 (derivativeStep!2951 (ite c!539463 (regTwo!20479 (regex!5224 lt!1084660)) (ite c!539464 (reg!10312 (regex!5224 lt!1084660)) (regOne!20478 (regex!5224 lt!1084660)))) (head!7043 lt!1084683)))))

(declare-fun b!3211316 () Bool)

(assert (=> b!3211316 (= e!2002392 e!2002393)))

(assert (=> b!3211316 (= c!539464 ((_ is Star!9983) (regex!5224 lt!1084660)))))

(declare-fun b!3211317 () Bool)

(assert (=> b!3211317 (= e!2002392 (Union!9983 call!232412 call!232411))))

(declare-fun b!3211318 () Bool)

(assert (=> b!3211318 (= e!2002394 (ite (= (head!7043 lt!1084683) (c!538930 (regex!5224 lt!1084660))) EmptyExpr!9983 EmptyLang!9983))))

(declare-fun d!880017 () Bool)

(declare-fun lt!1085895 () Regex!9983)

(assert (=> d!880017 (validRegex!4552 lt!1085895)))

(declare-fun e!2002390 () Regex!9983)

(assert (=> d!880017 (= lt!1085895 e!2002390)))

(declare-fun c!539460 () Bool)

(assert (=> d!880017 (= c!539460 (or ((_ is EmptyExpr!9983) (regex!5224 lt!1084660)) ((_ is EmptyLang!9983) (regex!5224 lt!1084660))))))

(assert (=> d!880017 (validRegex!4552 (regex!5224 lt!1084660))))

(assert (=> d!880017 (= (derivativeStep!2951 (regex!5224 lt!1084660) (head!7043 lt!1084683)) lt!1085895)))

(declare-fun b!3211312 () Bool)

(assert (=> b!3211312 (= e!2002390 EmptyLang!9983)))

(declare-fun b!3211319 () Bool)

(assert (=> b!3211319 (= e!2002391 (Union!9983 (Concat!15437 call!232410 (regTwo!20478 (regex!5224 lt!1084660))) EmptyLang!9983))))

(declare-fun b!3211320 () Bool)

(assert (=> b!3211320 (= e!2002390 e!2002394)))

(declare-fun c!539461 () Bool)

(assert (=> b!3211320 (= c!539461 ((_ is ElementMatch!9983) (regex!5224 lt!1084660)))))

(declare-fun bm!232408 () Bool)

(assert (=> bm!232408 (= call!232412 (derivativeStep!2951 (ite c!539463 (regOne!20479 (regex!5224 lt!1084660)) (regTwo!20478 (regex!5224 lt!1084660))) (head!7043 lt!1084683)))))

(declare-fun b!3211321 () Bool)

(declare-fun c!539462 () Bool)

(assert (=> b!3211321 (= c!539462 (nullable!3398 (regOne!20478 (regex!5224 lt!1084660))))))

(assert (=> b!3211321 (= e!2002393 e!2002391)))

(assert (= (and d!880017 c!539460) b!3211312))

(assert (= (and d!880017 (not c!539460)) b!3211320))

(assert (= (and b!3211320 c!539461) b!3211318))

(assert (= (and b!3211320 (not c!539461)) b!3211315))

(assert (= (and b!3211315 c!539463) b!3211317))

(assert (= (and b!3211315 (not c!539463)) b!3211316))

(assert (= (and b!3211316 c!539464) b!3211314))

(assert (= (and b!3211316 (not c!539464)) b!3211321))

(assert (= (and b!3211321 c!539462) b!3211313))

(assert (= (and b!3211321 (not c!539462)) b!3211319))

(assert (= (or b!3211313 b!3211319) bm!232405))

(assert (= (or b!3211314 bm!232405) bm!232406))

(assert (= (or b!3211317 b!3211313) bm!232408))

(assert (= (or b!3211317 bm!232406) bm!232407))

(assert (=> bm!232407 m!3478307))

(declare-fun m!3480585 () Bool)

(assert (=> bm!232407 m!3480585))

(declare-fun m!3480587 () Bool)

(assert (=> d!880017 m!3480587))

(assert (=> d!880017 m!3478319))

(assert (=> bm!232408 m!3478307))

(declare-fun m!3480589 () Bool)

(assert (=> bm!232408 m!3480589))

(declare-fun m!3480591 () Bool)

(assert (=> b!3211321 m!3480591))

(assert (=> b!3210031 d!880017))

(declare-fun d!880019 () Bool)

(assert (=> d!880019 (= (head!7043 lt!1084683) (h!41597 lt!1084683))))

(assert (=> b!3210031 d!880019))

(declare-fun d!880021 () Bool)

(assert (=> d!880021 (= (tail!5212 lt!1084683) (t!238512 lt!1084683))))

(assert (=> b!3210031 d!880021))

(declare-fun d!880023 () Bool)

(declare-fun lt!1085896 () Bool)

(assert (=> d!880023 (= lt!1085896 (isEmpty!20266 (list!12865 (_2!20922 (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 separatorToken!241)))))))))

(assert (=> d!880023 (= lt!1085896 (isEmpty!20267 (c!538931 (_2!20922 (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 separatorToken!241)))))))))

(assert (=> d!880023 (= (isEmpty!20263 (_2!20922 (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 separatorToken!241))))) lt!1085896)))

(declare-fun bs!541722 () Bool)

(assert (= bs!541722 d!880023))

(declare-fun m!3480593 () Bool)

(assert (=> bs!541722 m!3480593))

(assert (=> bs!541722 m!3480593))

(declare-fun m!3480595 () Bool)

(assert (=> bs!541722 m!3480595))

(declare-fun m!3480597 () Bool)

(assert (=> bs!541722 m!3480597))

(assert (=> b!3209430 d!880023))

(declare-fun d!880025 () Bool)

(declare-fun e!2002395 () Bool)

(assert (=> d!880025 e!2002395))

(declare-fun res!1307257 () Bool)

(assert (=> d!880025 (=> (not res!1307257) (not e!2002395))))

(declare-fun e!2002396 () Bool)

(assert (=> d!880025 (= res!1307257 e!2002396)))

(declare-fun c!539465 () Bool)

(declare-fun lt!1085897 () tuple2!35576)

(assert (=> d!880025 (= c!539465 (> (size!27261 (_1!20922 lt!1085897)) 0))))

(assert (=> d!880025 (= lt!1085897 (lexTailRecV2!933 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 separatorToken!241)) (BalanceConc!21261 Empty!10823) (print!1878 thiss!18206 (singletonSeq!2320 separatorToken!241)) (BalanceConc!21263 Empty!10824)))))

(assert (=> d!880025 (= (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 separatorToken!241))) lt!1085897)))

(declare-fun b!3211322 () Bool)

(declare-fun e!2002397 () Bool)

(assert (=> b!3211322 (= e!2002397 (not (isEmpty!20261 (_1!20922 lt!1085897))))))

(declare-fun b!3211323 () Bool)

(declare-fun res!1307258 () Bool)

(assert (=> b!3211323 (=> (not res!1307258) (not e!2002395))))

(assert (=> b!3211323 (= res!1307258 (= (list!12869 (_1!20922 lt!1085897)) (_1!20924 (lexList!1313 thiss!18206 rules!2135 (list!12865 (print!1878 thiss!18206 (singletonSeq!2320 separatorToken!241)))))))))

(declare-fun b!3211324 () Bool)

(assert (=> b!3211324 (= e!2002396 e!2002397)))

(declare-fun res!1307256 () Bool)

(assert (=> b!3211324 (= res!1307256 (< (size!27263 (_2!20922 lt!1085897)) (size!27263 (print!1878 thiss!18206 (singletonSeq!2320 separatorToken!241)))))))

(assert (=> b!3211324 (=> (not res!1307256) (not e!2002397))))

(declare-fun b!3211325 () Bool)

(assert (=> b!3211325 (= e!2002395 (= (list!12865 (_2!20922 lt!1085897)) (_2!20924 (lexList!1313 thiss!18206 rules!2135 (list!12865 (print!1878 thiss!18206 (singletonSeq!2320 separatorToken!241)))))))))

(declare-fun b!3211326 () Bool)

(assert (=> b!3211326 (= e!2002396 (= (_2!20922 lt!1085897) (print!1878 thiss!18206 (singletonSeq!2320 separatorToken!241))))))

(assert (= (and d!880025 c!539465) b!3211324))

(assert (= (and d!880025 (not c!539465)) b!3211326))

(assert (= (and b!3211324 res!1307256) b!3211322))

(assert (= (and d!880025 res!1307257) b!3211323))

(assert (= (and b!3211323 res!1307258) b!3211325))

(declare-fun m!3480629 () Bool)

(assert (=> b!3211324 m!3480629))

(assert (=> b!3211324 m!3477195))

(declare-fun m!3480633 () Bool)

(assert (=> b!3211324 m!3480633))

(declare-fun m!3480635 () Bool)

(assert (=> b!3211322 m!3480635))

(declare-fun m!3480637 () Bool)

(assert (=> b!3211323 m!3480637))

(assert (=> b!3211323 m!3477195))

(declare-fun m!3480641 () Bool)

(assert (=> b!3211323 m!3480641))

(assert (=> b!3211323 m!3480641))

(declare-fun m!3480645 () Bool)

(assert (=> b!3211323 m!3480645))

(declare-fun m!3480647 () Bool)

(assert (=> b!3211325 m!3480647))

(assert (=> b!3211325 m!3477195))

(assert (=> b!3211325 m!3480641))

(assert (=> b!3211325 m!3480641))

(assert (=> b!3211325 m!3480645))

(declare-fun m!3480657 () Bool)

(assert (=> d!880025 m!3480657))

(assert (=> d!880025 m!3477195))

(assert (=> d!880025 m!3477195))

(declare-fun m!3480665 () Bool)

(assert (=> d!880025 m!3480665))

(assert (=> b!3209430 d!880025))

(declare-fun d!880027 () Bool)

(declare-fun lt!1085898 () BalanceConc!21260)

(assert (=> d!880027 (= (list!12865 lt!1085898) (printList!1363 thiss!18206 (list!12869 (singletonSeq!2320 separatorToken!241))))))

(assert (=> d!880027 (= lt!1085898 (printTailRec!1310 thiss!18206 (singletonSeq!2320 separatorToken!241) 0 (BalanceConc!21261 Empty!10823)))))

(assert (=> d!880027 (= (print!1878 thiss!18206 (singletonSeq!2320 separatorToken!241)) lt!1085898)))

(declare-fun bs!541723 () Bool)

(assert (= bs!541723 d!880027))

(declare-fun m!3480675 () Bool)

(assert (=> bs!541723 m!3480675))

(assert (=> bs!541723 m!3476815))

(assert (=> bs!541723 m!3477197))

(assert (=> bs!541723 m!3477197))

(declare-fun m!3480681 () Bool)

(assert (=> bs!541723 m!3480681))

(assert (=> bs!541723 m!3476815))

(declare-fun m!3480687 () Bool)

(assert (=> bs!541723 m!3480687))

(assert (=> b!3209430 d!880027))

(assert (=> b!3209430 d!879025))

(declare-fun b!3211347 () Bool)

(declare-fun res!1307272 () Bool)

(declare-fun e!2002406 () Bool)

(assert (=> b!3211347 (=> (not res!1307272) (not e!2002406))))

(declare-fun height!1555 (Conc!10823) Int)

(declare-fun ++!8686 (Conc!10823 Conc!10823) Conc!10823)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3211347 (= res!1307272 (>= (height!1555 (++!8686 (c!538931 (BalanceConc!21261 Empty!10823)) (c!538931 (charsOf!3240 (apply!8198 lt!1084674 0))))) (max!0 (height!1555 (c!538931 (BalanceConc!21261 Empty!10823))) (height!1555 (c!538931 (charsOf!3240 (apply!8198 lt!1084674 0)))))))))

(declare-fun b!3211348 () Bool)

(declare-fun lt!1085907 () BalanceConc!21260)

(assert (=> b!3211348 (= e!2002406 (= (list!12865 lt!1085907) (++!8680 (list!12865 (BalanceConc!21261 Empty!10823)) (list!12865 (charsOf!3240 (apply!8198 lt!1084674 0))))))))

(declare-fun b!3211345 () Bool)

(declare-fun res!1307273 () Bool)

(assert (=> b!3211345 (=> (not res!1307273) (not e!2002406))))

(assert (=> b!3211345 (= res!1307273 (isBalanced!3218 (++!8686 (c!538931 (BalanceConc!21261 Empty!10823)) (c!538931 (charsOf!3240 (apply!8198 lt!1084674 0))))))))

(declare-fun b!3211346 () Bool)

(declare-fun res!1307274 () Bool)

(assert (=> b!3211346 (=> (not res!1307274) (not e!2002406))))

(assert (=> b!3211346 (= res!1307274 (<= (height!1555 (++!8686 (c!538931 (BalanceConc!21261 Empty!10823)) (c!538931 (charsOf!3240 (apply!8198 lt!1084674 0))))) (+ (max!0 (height!1555 (c!538931 (BalanceConc!21261 Empty!10823))) (height!1555 (c!538931 (charsOf!3240 (apply!8198 lt!1084674 0))))) 1)))))

(declare-fun d!880029 () Bool)

(assert (=> d!880029 e!2002406))

(declare-fun res!1307271 () Bool)

(assert (=> d!880029 (=> (not res!1307271) (not e!2002406))))

(declare-fun appendAssocInst!733 (Conc!10823 Conc!10823) Bool)

(assert (=> d!880029 (= res!1307271 (appendAssocInst!733 (c!538931 (BalanceConc!21261 Empty!10823)) (c!538931 (charsOf!3240 (apply!8198 lt!1084674 0)))))))

(assert (=> d!880029 (= lt!1085907 (BalanceConc!21261 (++!8686 (c!538931 (BalanceConc!21261 Empty!10823)) (c!538931 (charsOf!3240 (apply!8198 lt!1084674 0))))))))

(assert (=> d!880029 (= (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (apply!8198 lt!1084674 0))) lt!1085907)))

(assert (= (and d!880029 res!1307271) b!3211345))

(assert (= (and b!3211345 res!1307273) b!3211346))

(assert (= (and b!3211346 res!1307274) b!3211347))

(assert (= (and b!3211347 res!1307272) b!3211348))

(declare-fun m!3480753 () Bool)

(assert (=> d!880029 m!3480753))

(declare-fun m!3480755 () Bool)

(assert (=> d!880029 m!3480755))

(assert (=> b!3211345 m!3480755))

(assert (=> b!3211345 m!3480755))

(declare-fun m!3480757 () Bool)

(assert (=> b!3211345 m!3480757))

(assert (=> b!3211346 m!3480755))

(declare-fun m!3480759 () Bool)

(assert (=> b!3211346 m!3480759))

(declare-fun m!3480761 () Bool)

(assert (=> b!3211346 m!3480761))

(declare-fun m!3480763 () Bool)

(assert (=> b!3211346 m!3480763))

(assert (=> b!3211346 m!3480759))

(assert (=> b!3211346 m!3480755))

(declare-fun m!3480765 () Bool)

(assert (=> b!3211346 m!3480765))

(assert (=> b!3211346 m!3480761))

(assert (=> b!3211347 m!3480755))

(assert (=> b!3211347 m!3480759))

(assert (=> b!3211347 m!3480761))

(assert (=> b!3211347 m!3480763))

(assert (=> b!3211347 m!3480759))

(assert (=> b!3211347 m!3480755))

(assert (=> b!3211347 m!3480765))

(assert (=> b!3211347 m!3480761))

(declare-fun m!3480767 () Bool)

(assert (=> b!3211348 m!3480767))

(assert (=> b!3211348 m!3476993))

(assert (=> b!3211348 m!3477017))

(declare-fun m!3480769 () Bool)

(assert (=> b!3211348 m!3480769))

(assert (=> b!3211348 m!3476993))

(assert (=> b!3211348 m!3480769))

(declare-fun m!3480771 () Bool)

(assert (=> b!3211348 m!3480771))

(assert (=> b!3209300 d!880029))

(declare-fun d!880049 () Bool)

(declare-fun lt!1085908 () BalanceConc!21260)

(assert (=> d!880049 (= (list!12865 lt!1085908) (originalCharacters!5938 (apply!8198 lt!1084674 0)))))

(assert (=> d!880049 (= lt!1085908 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084674 0)))) (value!169344 (apply!8198 lt!1084674 0))))))

(assert (=> d!880049 (= (charsOf!3240 (apply!8198 lt!1084674 0)) lt!1085908)))

(declare-fun b_lambda!88005 () Bool)

(assert (=> (not b_lambda!88005) (not d!880049)))

(declare-fun t!238788 () Bool)

(declare-fun tb!157811 () Bool)

(assert (=> (and b!3210119 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084674 0))))) t!238788) tb!157811))

(declare-fun b!3211361 () Bool)

(declare-fun e!2002413 () Bool)

(declare-fun tp!1013384 () Bool)

(assert (=> b!3211361 (= e!2002413 (and (inv!49039 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084674 0)))) (value!169344 (apply!8198 lt!1084674 0))))) tp!1013384))))

(declare-fun result!200176 () Bool)

(assert (=> tb!157811 (= result!200176 (and (inv!49040 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084674 0)))) (value!169344 (apply!8198 lt!1084674 0)))) e!2002413))))

(assert (= tb!157811 b!3211361))

(declare-fun m!3480781 () Bool)

(assert (=> b!3211361 m!3480781))

(declare-fun m!3480783 () Bool)

(assert (=> tb!157811 m!3480783))

(assert (=> d!880049 t!238788))

(declare-fun b_and!213983 () Bool)

(assert (= b_and!213973 (and (=> t!238788 result!200176) b_and!213983)))

(declare-fun t!238790 () Bool)

(declare-fun tb!157813 () Bool)

(assert (=> (and b!3209139 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084674 0))))) t!238790) tb!157813))

(declare-fun result!200178 () Bool)

(assert (= result!200178 result!200176))

(assert (=> d!880049 t!238790))

(declare-fun b_and!213985 () Bool)

(assert (= b_and!213977 (and (=> t!238790 result!200178) b_and!213985)))

(declare-fun tb!157815 () Bool)

(declare-fun t!238792 () Bool)

(assert (=> (and b!3209140 (= (toChars!7167 (transformation!5224 (h!41598 rules!2135))) (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084674 0))))) t!238792) tb!157815))

(declare-fun result!200180 () Bool)

(assert (= result!200180 result!200176))

(assert (=> d!880049 t!238792))

(declare-fun b_and!213987 () Bool)

(assert (= b_and!213979 (and (=> t!238792 result!200180) b_and!213987)))

(declare-fun t!238794 () Bool)

(declare-fun tb!157817 () Bool)

(assert (=> (and b!3210083 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084674 0))))) t!238794) tb!157817))

(declare-fun result!200182 () Bool)

(assert (= result!200182 result!200176))

(assert (=> d!880049 t!238794))

(declare-fun b_and!213989 () Bool)

(assert (= b_and!213975 (and (=> t!238794 result!200182) b_and!213989)))

(declare-fun t!238796 () Bool)

(declare-fun tb!157819 () Bool)

(assert (=> (and b!3209120 (= (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084674 0))))) t!238796) tb!157819))

(declare-fun result!200184 () Bool)

(assert (= result!200184 result!200176))

(assert (=> d!880049 t!238796))

(declare-fun b_and!213991 () Bool)

(assert (= b_and!213981 (and (=> t!238796 result!200184) b_and!213991)))

(declare-fun m!3480785 () Bool)

(assert (=> d!880049 m!3480785))

(declare-fun m!3480787 () Bool)

(assert (=> d!880049 m!3480787))

(assert (=> b!3209300 d!880049))

(declare-fun d!880055 () Bool)

(declare-fun lt!1085910 () Token!9814)

(assert (=> d!880055 (= lt!1085910 (apply!8200 (list!12869 lt!1084674) 0))))

(assert (=> d!880055 (= lt!1085910 (apply!8202 (c!538932 lt!1084674) 0))))

(declare-fun e!2002415 () Bool)

(assert (=> d!880055 e!2002415))

(declare-fun res!1307275 () Bool)

(assert (=> d!880055 (=> (not res!1307275) (not e!2002415))))

(assert (=> d!880055 (= res!1307275 (<= 0 0))))

(assert (=> d!880055 (= (apply!8198 lt!1084674 0) lt!1085910)))

(declare-fun b!3211364 () Bool)

(assert (=> b!3211364 (= e!2002415 (< 0 (size!27261 lt!1084674)))))

(assert (= (and d!880055 res!1307275) b!3211364))

(assert (=> d!880055 m!3476999))

(assert (=> d!880055 m!3476999))

(declare-fun m!3480791 () Bool)

(assert (=> d!880055 m!3480791))

(declare-fun m!3480793 () Bool)

(assert (=> d!880055 m!3480793))

(assert (=> b!3211364 m!3476987))

(assert (=> b!3209300 d!880055))

(declare-fun b!3211402 () Bool)

(declare-fun e!2002435 () List!36303)

(declare-fun e!2002437 () List!36303)

(assert (=> b!3211402 (= e!2002435 e!2002437)))

(declare-fun c!539491 () Bool)

(assert (=> b!3211402 (= c!539491 (<= 0 0))))

(declare-fun b!3211403 () Bool)

(declare-fun e!2002436 () Int)

(assert (=> b!3211403 (= e!2002436 0)))

(declare-fun b!3211404 () Bool)

(declare-fun e!2002438 () Int)

(assert (=> b!3211404 (= e!2002438 e!2002436)))

(declare-fun c!539492 () Bool)

(declare-fun call!232416 () Int)

(assert (=> b!3211404 (= c!539492 (>= 0 call!232416))))

(declare-fun d!880059 () Bool)

(declare-fun e!2002439 () Bool)

(assert (=> d!880059 e!2002439))

(declare-fun res!1307287 () Bool)

(assert (=> d!880059 (=> (not res!1307287) (not e!2002439))))

(declare-fun lt!1085922 () List!36303)

(assert (=> d!880059 (= res!1307287 (= ((_ map implies) (content!4891 lt!1085922) (content!4891 lt!1084759)) ((as const (InoxSet Token!9814)) true)))))

(assert (=> d!880059 (= lt!1085922 e!2002435)))

(declare-fun c!539494 () Bool)

(assert (=> d!880059 (= c!539494 ((_ is Nil!36179) lt!1084759))))

(assert (=> d!880059 (= (drop!1861 lt!1084759 0) lt!1085922)))

(declare-fun b!3211405 () Bool)

(assert (=> b!3211405 (= e!2002438 call!232416)))

(declare-fun b!3211406 () Bool)

(assert (=> b!3211406 (= e!2002435 Nil!36179)))

(declare-fun b!3211407 () Bool)

(assert (=> b!3211407 (= e!2002439 (= (size!27264 lt!1085922) e!2002438))))

(declare-fun c!539493 () Bool)

(assert (=> b!3211407 (= c!539493 (<= 0 0))))

(declare-fun b!3211408 () Bool)

(assert (=> b!3211408 (= e!2002437 lt!1084759)))

(declare-fun bm!232411 () Bool)

(assert (=> bm!232411 (= call!232416 (size!27264 lt!1084759))))

(declare-fun b!3211409 () Bool)

(assert (=> b!3211409 (= e!2002437 (drop!1861 (t!238514 lt!1084759) (- 0 1)))))

(declare-fun b!3211410 () Bool)

(assert (=> b!3211410 (= e!2002436 (- call!232416 0))))

(assert (= (and d!880059 c!539494) b!3211406))

(assert (= (and d!880059 (not c!539494)) b!3211402))

(assert (= (and b!3211402 c!539491) b!3211408))

(assert (= (and b!3211402 (not c!539491)) b!3211409))

(assert (= (and d!880059 res!1307287) b!3211407))

(assert (= (and b!3211407 c!539493) b!3211405))

(assert (= (and b!3211407 (not c!539493)) b!3211404))

(assert (= (and b!3211404 c!539492) b!3211403))

(assert (= (and b!3211404 (not c!539492)) b!3211410))

(assert (= (or b!3211405 b!3211404 b!3211410) bm!232411))

(declare-fun m!3480849 () Bool)

(assert (=> d!880059 m!3480849))

(declare-fun m!3480853 () Bool)

(assert (=> d!880059 m!3480853))

(declare-fun m!3480855 () Bool)

(assert (=> b!3211407 m!3480855))

(declare-fun m!3480857 () Bool)

(assert (=> bm!232411 m!3480857))

(declare-fun m!3480859 () Bool)

(assert (=> b!3211409 m!3480859))

(assert (=> b!3209300 d!880059))

(declare-fun b!3211411 () Bool)

(declare-fun e!2002440 () List!36303)

(declare-fun e!2002442 () List!36303)

(assert (=> b!3211411 (= e!2002440 e!2002442)))

(declare-fun c!539495 () Bool)

(assert (=> b!3211411 (= c!539495 (<= 0 0))))

(declare-fun b!3211412 () Bool)

(declare-fun e!2002441 () Int)

(assert (=> b!3211412 (= e!2002441 0)))

(declare-fun b!3211413 () Bool)

(declare-fun e!2002443 () Int)

(assert (=> b!3211413 (= e!2002443 e!2002441)))

(declare-fun c!539496 () Bool)

(declare-fun call!232417 () Int)

(assert (=> b!3211413 (= c!539496 (>= 0 call!232417))))

(declare-fun d!880077 () Bool)

(declare-fun e!2002444 () Bool)

(assert (=> d!880077 e!2002444))

(declare-fun res!1307288 () Bool)

(assert (=> d!880077 (=> (not res!1307288) (not e!2002444))))

(declare-fun lt!1085923 () List!36303)

(assert (=> d!880077 (= res!1307288 (= ((_ map implies) (content!4891 lt!1085923) (content!4891 lt!1084758)) ((as const (InoxSet Token!9814)) true)))))

(assert (=> d!880077 (= lt!1085923 e!2002440)))

(declare-fun c!539498 () Bool)

(assert (=> d!880077 (= c!539498 ((_ is Nil!36179) lt!1084758))))

(assert (=> d!880077 (= (drop!1861 lt!1084758 0) lt!1085923)))

(declare-fun b!3211414 () Bool)

(assert (=> b!3211414 (= e!2002443 call!232417)))

(declare-fun b!3211415 () Bool)

(assert (=> b!3211415 (= e!2002440 Nil!36179)))

(declare-fun b!3211416 () Bool)

(assert (=> b!3211416 (= e!2002444 (= (size!27264 lt!1085923) e!2002443))))

(declare-fun c!539497 () Bool)

(assert (=> b!3211416 (= c!539497 (<= 0 0))))

(declare-fun b!3211417 () Bool)

(assert (=> b!3211417 (= e!2002442 lt!1084758)))

(declare-fun bm!232412 () Bool)

(assert (=> bm!232412 (= call!232417 (size!27264 lt!1084758))))

(declare-fun b!3211418 () Bool)

(assert (=> b!3211418 (= e!2002442 (drop!1861 (t!238514 lt!1084758) (- 0 1)))))

(declare-fun b!3211419 () Bool)

(assert (=> b!3211419 (= e!2002441 (- call!232417 0))))

(assert (= (and d!880077 c!539498) b!3211415))

(assert (= (and d!880077 (not c!539498)) b!3211411))

(assert (= (and b!3211411 c!539495) b!3211417))

(assert (= (and b!3211411 (not c!539495)) b!3211418))

(assert (= (and d!880077 res!1307288) b!3211416))

(assert (= (and b!3211416 c!539497) b!3211414))

(assert (= (and b!3211416 (not c!539497)) b!3211413))

(assert (= (and b!3211413 c!539496) b!3211412))

(assert (= (and b!3211413 (not c!539496)) b!3211419))

(assert (= (or b!3211414 b!3211413 b!3211419) bm!232412))

(declare-fun m!3480877 () Bool)

(assert (=> d!880077 m!3480877))

(declare-fun m!3480881 () Bool)

(assert (=> d!880077 m!3480881))

(declare-fun m!3480883 () Bool)

(assert (=> b!3211416 m!3480883))

(declare-fun m!3480885 () Bool)

(assert (=> bm!232412 m!3480885))

(declare-fun m!3480889 () Bool)

(assert (=> b!3211418 m!3480889))

(assert (=> b!3209300 d!880077))

(declare-fun d!880079 () Bool)

(assert (=> d!880079 (= (tail!5213 (drop!1861 lt!1084759 0)) (drop!1861 lt!1084759 (+ 0 1)))))

(declare-fun lt!1085927 () Unit!50642)

(declare-fun choose!18747 (List!36303 Int) Unit!50642)

(assert (=> d!880079 (= lt!1085927 (choose!18747 lt!1084759 0))))

(declare-fun e!2002452 () Bool)

(assert (=> d!880079 e!2002452))

(declare-fun res!1307293 () Bool)

(assert (=> d!880079 (=> (not res!1307293) (not e!2002452))))

(assert (=> d!880079 (= res!1307293 (>= 0 0))))

(assert (=> d!880079 (= (lemmaDropTail!921 lt!1084759 0) lt!1085927)))

(declare-fun b!3211432 () Bool)

(assert (=> b!3211432 (= e!2002452 (< 0 (size!27264 lt!1084759)))))

(assert (= (and d!880079 res!1307293) b!3211432))

(assert (=> d!880079 m!3477007))

(assert (=> d!880079 m!3477007))

(assert (=> d!880079 m!3477009))

(assert (=> d!880079 m!3477013))

(declare-fun m!3480911 () Bool)

(assert (=> d!880079 m!3480911))

(assert (=> b!3211432 m!3480857))

(assert (=> b!3209300 d!880079))

(declare-fun d!880093 () Bool)

(assert (=> d!880093 (= (head!7045 (drop!1861 lt!1084758 0)) (apply!8200 lt!1084758 0))))

(declare-fun lt!1085935 () Unit!50642)

(declare-fun choose!18748 (List!36303 Int) Unit!50642)

(assert (=> d!880093 (= lt!1085935 (choose!18748 lt!1084758 0))))

(declare-fun e!2002461 () Bool)

(assert (=> d!880093 e!2002461))

(declare-fun res!1307299 () Bool)

(assert (=> d!880093 (=> (not res!1307299) (not e!2002461))))

(assert (=> d!880093 (= res!1307299 (>= 0 0))))

(assert (=> d!880093 (= (lemmaDropApply!1037 lt!1084758 0) lt!1085935)))

(declare-fun b!3211446 () Bool)

(assert (=> b!3211446 (= e!2002461 (< 0 (size!27264 lt!1084758)))))

(assert (= (and d!880093 res!1307299) b!3211446))

(assert (=> d!880093 m!3477003))

(assert (=> d!880093 m!3477003))

(assert (=> d!880093 m!3477005))

(assert (=> d!880093 m!3477001))

(declare-fun m!3480939 () Bool)

(assert (=> d!880093 m!3480939))

(assert (=> b!3211446 m!3480885))

(assert (=> b!3209300 d!880093))

(declare-fun d!880115 () Bool)

(declare-fun lt!1085939 () BalanceConc!21260)

(assert (=> d!880115 (= (list!12865 lt!1085939) (printListTailRec!561 thiss!18206 (dropList!1078 lt!1084674 (+ 0 1)) (list!12865 (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (apply!8198 lt!1084674 0))))))))

(declare-fun e!2002463 () BalanceConc!21260)

(assert (=> d!880115 (= lt!1085939 e!2002463)))

(declare-fun c!539508 () Bool)

(assert (=> d!880115 (= c!539508 (>= (+ 0 1) (size!27261 lt!1084674)))))

(declare-fun e!2002465 () Bool)

(assert (=> d!880115 e!2002465))

(declare-fun res!1307302 () Bool)

(assert (=> d!880115 (=> (not res!1307302) (not e!2002465))))

(assert (=> d!880115 (= res!1307302 (>= (+ 0 1) 0))))

(assert (=> d!880115 (= (printTailRec!1310 thiss!18206 lt!1084674 (+ 0 1) (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (apply!8198 lt!1084674 0)))) lt!1085939)))

(declare-fun b!3211451 () Bool)

(assert (=> b!3211451 (= e!2002465 (<= (+ 0 1) (size!27261 lt!1084674)))))

(declare-fun b!3211452 () Bool)

(assert (=> b!3211452 (= e!2002463 (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (apply!8198 lt!1084674 0))))))

(declare-fun b!3211453 () Bool)

(assert (=> b!3211453 (= e!2002463 (printTailRec!1310 thiss!18206 lt!1084674 (+ 0 1 1) (++!8682 (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (apply!8198 lt!1084674 0))) (charsOf!3240 (apply!8198 lt!1084674 (+ 0 1))))))))

(declare-fun lt!1085941 () List!36303)

(assert (=> b!3211453 (= lt!1085941 (list!12869 lt!1084674))))

(declare-fun lt!1085940 () Unit!50642)

(assert (=> b!3211453 (= lt!1085940 (lemmaDropApply!1037 lt!1085941 (+ 0 1)))))

(assert (=> b!3211453 (= (head!7045 (drop!1861 lt!1085941 (+ 0 1))) (apply!8200 lt!1085941 (+ 0 1)))))

(declare-fun lt!1085938 () Unit!50642)

(assert (=> b!3211453 (= lt!1085938 lt!1085940)))

(declare-fun lt!1085942 () List!36303)

(assert (=> b!3211453 (= lt!1085942 (list!12869 lt!1084674))))

(declare-fun lt!1085943 () Unit!50642)

(assert (=> b!3211453 (= lt!1085943 (lemmaDropTail!921 lt!1085942 (+ 0 1)))))

(assert (=> b!3211453 (= (tail!5213 (drop!1861 lt!1085942 (+ 0 1))) (drop!1861 lt!1085942 (+ 0 1 1)))))

(declare-fun lt!1085937 () Unit!50642)

(assert (=> b!3211453 (= lt!1085937 lt!1085943)))

(assert (= (and d!880115 res!1307302) b!3211451))

(assert (= (and d!880115 c!539508) b!3211452))

(assert (= (and d!880115 (not c!539508)) b!3211453))

(assert (=> d!880115 m!3476987))

(declare-fun m!3480955 () Bool)

(assert (=> d!880115 m!3480955))

(declare-fun m!3480959 () Bool)

(assert (=> d!880115 m!3480959))

(declare-fun m!3480961 () Bool)

(assert (=> d!880115 m!3480961))

(declare-fun m!3480963 () Bool)

(assert (=> d!880115 m!3480963))

(assert (=> d!880115 m!3480959))

(assert (=> d!880115 m!3477019))

(assert (=> d!880115 m!3480961))

(assert (=> b!3211451 m!3476987))

(declare-fun m!3480965 () Bool)

(assert (=> b!3211453 m!3480965))

(assert (=> b!3211453 m!3476999))

(declare-fun m!3480967 () Bool)

(assert (=> b!3211453 m!3480967))

(declare-fun m!3480969 () Bool)

(assert (=> b!3211453 m!3480969))

(declare-fun m!3480971 () Bool)

(assert (=> b!3211453 m!3480971))

(declare-fun m!3480973 () Bool)

(assert (=> b!3211453 m!3480973))

(assert (=> b!3211453 m!3480973))

(declare-fun m!3480975 () Bool)

(assert (=> b!3211453 m!3480975))

(declare-fun m!3480977 () Bool)

(assert (=> b!3211453 m!3480977))

(declare-fun m!3480979 () Bool)

(assert (=> b!3211453 m!3480979))

(declare-fun m!3480981 () Bool)

(assert (=> b!3211453 m!3480981))

(assert (=> b!3211453 m!3480981))

(declare-fun m!3480983 () Bool)

(assert (=> b!3211453 m!3480983))

(assert (=> b!3211453 m!3480969))

(declare-fun m!3480985 () Bool)

(assert (=> b!3211453 m!3480985))

(declare-fun m!3480987 () Bool)

(assert (=> b!3211453 m!3480987))

(assert (=> b!3211453 m!3477019))

(assert (=> b!3211453 m!3480983))

(assert (=> b!3211453 m!3480985))

(assert (=> b!3209300 d!880115))

(declare-fun d!880127 () Bool)

(assert (=> d!880127 (= (head!7045 (drop!1861 lt!1084758 0)) (h!41599 (drop!1861 lt!1084758 0)))))

(assert (=> b!3209300 d!880127))

(declare-fun d!880135 () Bool)

(assert (=> d!880135 (= (list!12869 lt!1084674) (list!12871 (c!538932 lt!1084674)))))

(declare-fun bs!541748 () Bool)

(assert (= bs!541748 d!880135))

(assert (=> bs!541748 m!3478917))

(assert (=> b!3209300 d!880135))

(declare-fun b!3211461 () Bool)

(declare-fun e!2002470 () List!36303)

(declare-fun e!2002472 () List!36303)

(assert (=> b!3211461 (= e!2002470 e!2002472)))

(declare-fun c!539512 () Bool)

(assert (=> b!3211461 (= c!539512 (<= (+ 0 1) 0))))

(declare-fun b!3211462 () Bool)

(declare-fun e!2002471 () Int)

(assert (=> b!3211462 (= e!2002471 0)))

(declare-fun b!3211463 () Bool)

(declare-fun e!2002473 () Int)

(assert (=> b!3211463 (= e!2002473 e!2002471)))

(declare-fun c!539513 () Bool)

(declare-fun call!232418 () Int)

(assert (=> b!3211463 (= c!539513 (>= (+ 0 1) call!232418))))

(declare-fun d!880137 () Bool)

(declare-fun e!2002474 () Bool)

(assert (=> d!880137 e!2002474))

(declare-fun res!1307304 () Bool)

(assert (=> d!880137 (=> (not res!1307304) (not e!2002474))))

(declare-fun lt!1085947 () List!36303)

(assert (=> d!880137 (= res!1307304 (= ((_ map implies) (content!4891 lt!1085947) (content!4891 lt!1084759)) ((as const (InoxSet Token!9814)) true)))))

(assert (=> d!880137 (= lt!1085947 e!2002470)))

(declare-fun c!539515 () Bool)

(assert (=> d!880137 (= c!539515 ((_ is Nil!36179) lt!1084759))))

(assert (=> d!880137 (= (drop!1861 lt!1084759 (+ 0 1)) lt!1085947)))

(declare-fun b!3211464 () Bool)

(assert (=> b!3211464 (= e!2002473 call!232418)))

(declare-fun b!3211465 () Bool)

(assert (=> b!3211465 (= e!2002470 Nil!36179)))

(declare-fun b!3211466 () Bool)

(assert (=> b!3211466 (= e!2002474 (= (size!27264 lt!1085947) e!2002473))))

(declare-fun c!539514 () Bool)

(assert (=> b!3211466 (= c!539514 (<= (+ 0 1) 0))))

(declare-fun b!3211467 () Bool)

(assert (=> b!3211467 (= e!2002472 lt!1084759)))

(declare-fun bm!232413 () Bool)

(assert (=> bm!232413 (= call!232418 (size!27264 lt!1084759))))

(declare-fun b!3211468 () Bool)

(assert (=> b!3211468 (= e!2002472 (drop!1861 (t!238514 lt!1084759) (- (+ 0 1) 1)))))

(declare-fun b!3211469 () Bool)

(assert (=> b!3211469 (= e!2002471 (- call!232418 (+ 0 1)))))

(assert (= (and d!880137 c!539515) b!3211465))

(assert (= (and d!880137 (not c!539515)) b!3211461))

(assert (= (and b!3211461 c!539512) b!3211467))

(assert (= (and b!3211461 (not c!539512)) b!3211468))

(assert (= (and d!880137 res!1307304) b!3211466))

(assert (= (and b!3211466 c!539514) b!3211464))

(assert (= (and b!3211466 (not c!539514)) b!3211463))

(assert (= (and b!3211463 c!539513) b!3211462))

(assert (= (and b!3211463 (not c!539513)) b!3211469))

(assert (= (or b!3211464 b!3211463 b!3211469) bm!232413))

(declare-fun m!3481003 () Bool)

(assert (=> d!880137 m!3481003))

(assert (=> d!880137 m!3480853))

(declare-fun m!3481005 () Bool)

(assert (=> b!3211466 m!3481005))

(assert (=> bm!232413 m!3480857))

(declare-fun m!3481007 () Bool)

(assert (=> b!3211468 m!3481007))

(assert (=> b!3209300 d!880137))

(declare-fun d!880147 () Bool)

(assert (=> d!880147 (= (tail!5213 (drop!1861 lt!1084759 0)) (t!238514 (drop!1861 lt!1084759 0)))))

(assert (=> b!3209300 d!880147))

(declare-fun d!880151 () Bool)

(declare-fun lt!1085963 () Token!9814)

(assert (=> d!880151 (contains!6463 lt!1084758 lt!1085963)))

(declare-fun e!2002491 () Token!9814)

(assert (=> d!880151 (= lt!1085963 e!2002491)))

(declare-fun c!539524 () Bool)

(assert (=> d!880151 (= c!539524 (= 0 0))))

(declare-fun e!2002492 () Bool)

(assert (=> d!880151 e!2002492))

(declare-fun res!1307313 () Bool)

(assert (=> d!880151 (=> (not res!1307313) (not e!2002492))))

(assert (=> d!880151 (= res!1307313 (<= 0 0))))

(assert (=> d!880151 (= (apply!8200 lt!1084758 0) lt!1085963)))

(declare-fun b!3211494 () Bool)

(assert (=> b!3211494 (= e!2002492 (< 0 (size!27264 lt!1084758)))))

(declare-fun b!3211495 () Bool)

(assert (=> b!3211495 (= e!2002491 (head!7045 lt!1084758))))

(declare-fun b!3211496 () Bool)

(assert (=> b!3211496 (= e!2002491 (apply!8200 (tail!5213 lt!1084758) (- 0 1)))))

(assert (= (and d!880151 res!1307313) b!3211494))

(assert (= (and d!880151 c!539524) b!3211495))

(assert (= (and d!880151 (not c!539524)) b!3211496))

(declare-fun m!3481069 () Bool)

(assert (=> d!880151 m!3481069))

(assert (=> b!3211494 m!3480885))

(declare-fun m!3481071 () Bool)

(assert (=> b!3211495 m!3481071))

(declare-fun m!3481073 () Bool)

(assert (=> b!3211496 m!3481073))

(assert (=> b!3211496 m!3481073))

(declare-fun m!3481075 () Bool)

(assert (=> b!3211496 m!3481075))

(assert (=> b!3209300 d!880151))

(assert (=> d!879133 d!879121))

(declare-fun d!880167 () Bool)

(assert (=> d!880167 (rulesProduceIndividualToken!2305 thiss!18206 rules!2135 (h!41599 (t!238514 tokens!494)))))

(assert (=> d!880167 true))

(declare-fun _$77!808 () Unit!50642)

(assert (=> d!880167 (= (choose!18728 thiss!18206 rules!2135 tokens!494 (h!41599 (t!238514 tokens!494))) _$77!808)))

(declare-fun bs!541752 () Bool)

(assert (= bs!541752 d!880167))

(assert (=> bs!541752 m!3476819))

(assert (=> d!879133 d!880167))

(assert (=> d!879133 d!878957))

(declare-fun d!880169 () Bool)

(declare-fun charsToBigInt!1 (List!36300) Int)

(assert (=> d!880169 (= (inv!17 (value!169344 separatorToken!241)) (= (charsToBigInt!1 (text!38626 (value!169344 separatorToken!241))) (value!169336 (value!169344 separatorToken!241))))))

(declare-fun bs!541753 () Bool)

(assert (= bs!541753 d!880169))

(declare-fun m!3481087 () Bool)

(assert (=> bs!541753 m!3481087))

(assert (=> b!3209859 d!880169))

(declare-fun d!880171 () Bool)

(assert (=> d!880171 (= (list!12865 lt!1085070) (list!12868 (c!538931 lt!1085070)))))

(declare-fun bs!541754 () Bool)

(assert (= bs!541754 d!880171))

(declare-fun m!3481095 () Bool)

(assert (=> bs!541754 m!3481095))

(assert (=> d!879305 d!880171))

(declare-fun d!880173 () Bool)

(declare-fun lt!1085965 () Bool)

(assert (=> d!880173 (= lt!1085965 (select (content!4891 tokens!494) (h!41599 (t!238514 tokens!494))))))

(declare-fun e!2002494 () Bool)

(assert (=> d!880173 (= lt!1085965 e!2002494)))

(declare-fun res!1307318 () Bool)

(assert (=> d!880173 (=> (not res!1307318) (not e!2002494))))

(assert (=> d!880173 (= res!1307318 ((_ is Cons!36179) tokens!494))))

(assert (=> d!880173 (= (contains!6463 tokens!494 (h!41599 (t!238514 tokens!494))) lt!1085965)))

(declare-fun b!3211501 () Bool)

(declare-fun e!2002495 () Bool)

(assert (=> b!3211501 (= e!2002494 e!2002495)))

(declare-fun res!1307319 () Bool)

(assert (=> b!3211501 (=> res!1307319 e!2002495)))

(assert (=> b!3211501 (= res!1307319 (= (h!41599 tokens!494) (h!41599 (t!238514 tokens!494))))))

(declare-fun b!3211502 () Bool)

(assert (=> b!3211502 (= e!2002495 (contains!6463 (t!238514 tokens!494) (h!41599 (t!238514 tokens!494))))))

(assert (= (and d!880173 res!1307318) b!3211501))

(assert (= (and b!3211501 (not res!1307319)) b!3211502))

(assert (=> d!880173 m!3480235))

(declare-fun m!3481099 () Bool)

(assert (=> d!880173 m!3481099))

(declare-fun m!3481101 () Bool)

(assert (=> b!3211502 m!3481101))

(assert (=> b!3209509 d!880173))

(declare-fun e!2002496 () List!36301)

(declare-fun b!3211503 () Bool)

(assert (=> b!3211503 (= e!2002496 (ite c!539048 call!232220 call!232219))))

(declare-fun lt!1085967 () List!36301)

(declare-fun b!3211506 () Bool)

(declare-fun e!2002497 () Bool)

(assert (=> b!3211506 (= e!2002497 (or (not (= (ite c!539048 call!232220 call!232219) Nil!36177)) (= lt!1085967 (ite c!539048 call!232219 call!232220))))))

(declare-fun b!3211505 () Bool)

(declare-fun res!1307320 () Bool)

(assert (=> b!3211505 (=> (not res!1307320) (not e!2002497))))

(assert (=> b!3211505 (= res!1307320 (= (size!27260 lt!1085967) (+ (size!27260 (ite c!539048 call!232219 call!232220)) (size!27260 (ite c!539048 call!232220 call!232219)))))))

(declare-fun d!880177 () Bool)

(assert (=> d!880177 e!2002497))

(declare-fun res!1307321 () Bool)

(assert (=> d!880177 (=> (not res!1307321) (not e!2002497))))

(assert (=> d!880177 (= res!1307321 (= (content!4888 lt!1085967) ((_ map or) (content!4888 (ite c!539048 call!232219 call!232220)) (content!4888 (ite c!539048 call!232220 call!232219)))))))

(assert (=> d!880177 (= lt!1085967 e!2002496)))

(declare-fun c!539525 () Bool)

(assert (=> d!880177 (= c!539525 ((_ is Nil!36177) (ite c!539048 call!232219 call!232220)))))

(assert (=> d!880177 (= (++!8680 (ite c!539048 call!232219 call!232220) (ite c!539048 call!232220 call!232219)) lt!1085967)))

(declare-fun b!3211504 () Bool)

(assert (=> b!3211504 (= e!2002496 (Cons!36177 (h!41597 (ite c!539048 call!232219 call!232220)) (++!8680 (t!238512 (ite c!539048 call!232219 call!232220)) (ite c!539048 call!232220 call!232219))))))

(assert (= (and d!880177 c!539525) b!3211503))

(assert (= (and d!880177 (not c!539525)) b!3211504))

(assert (= (and d!880177 res!1307321) b!3211505))

(assert (= (and b!3211505 res!1307320) b!3211506))

(declare-fun m!3481103 () Bool)

(assert (=> b!3211505 m!3481103))

(declare-fun m!3481105 () Bool)

(assert (=> b!3211505 m!3481105))

(declare-fun m!3481107 () Bool)

(assert (=> b!3211505 m!3481107))

(declare-fun m!3481109 () Bool)

(assert (=> d!880177 m!3481109))

(declare-fun m!3481113 () Bool)

(assert (=> d!880177 m!3481113))

(declare-fun m!3481115 () Bool)

(assert (=> d!880177 m!3481115))

(declare-fun m!3481119 () Bool)

(assert (=> b!3211504 m!3481119))

(assert (=> bm!232213 d!880177))

(declare-fun d!880179 () Bool)

(assert (=> d!880179 (= (list!12865 (_2!20922 lt!1084813)) (list!12868 (c!538931 (_2!20922 lt!1084813))))))

(declare-fun bs!541755 () Bool)

(assert (= bs!541755 d!880179))

(declare-fun m!3481121 () Bool)

(assert (=> bs!541755 m!3481121))

(assert (=> b!3209464 d!880179))

(declare-fun b!3211508 () Bool)

(declare-fun e!2002499 () Bool)

(declare-fun lt!1085970 () tuple2!35580)

(assert (=> b!3211508 (= e!2002499 (not (isEmpty!20274 (_1!20924 lt!1085970))))))

(declare-fun b!3211509 () Bool)

(declare-fun e!2002500 () Bool)

(assert (=> b!3211509 (= e!2002500 (= (_2!20924 lt!1085970) (list!12865 lt!1084659)))))

(declare-fun b!3211510 () Bool)

(declare-fun e!2002501 () tuple2!35580)

(assert (=> b!3211510 (= e!2002501 (tuple2!35581 Nil!36179 (list!12865 lt!1084659)))))

(declare-fun b!3211511 () Bool)

(declare-fun lt!1085969 () Option!7147)

(declare-fun lt!1085968 () tuple2!35580)

(assert (=> b!3211511 (= e!2002501 (tuple2!35581 (Cons!36179 (_1!20921 (v!35696 lt!1085969)) (_1!20924 lt!1085968)) (_2!20924 lt!1085968)))))

(assert (=> b!3211511 (= lt!1085968 (lexList!1313 thiss!18206 rules!2135 (_2!20921 (v!35696 lt!1085969))))))

(declare-fun d!880181 () Bool)

(assert (=> d!880181 e!2002500))

(declare-fun c!539527 () Bool)

(assert (=> d!880181 (= c!539527 (> (size!27264 (_1!20924 lt!1085970)) 0))))

(assert (=> d!880181 (= lt!1085970 e!2002501)))

(declare-fun c!539526 () Bool)

(assert (=> d!880181 (= c!539526 ((_ is Some!7146) lt!1085969))))

(assert (=> d!880181 (= lt!1085969 (maxPrefix!2455 thiss!18206 rules!2135 (list!12865 lt!1084659)))))

(assert (=> d!880181 (= (lexList!1313 thiss!18206 rules!2135 (list!12865 lt!1084659)) lt!1085970)))

(declare-fun b!3211512 () Bool)

(assert (=> b!3211512 (= e!2002500 e!2002499)))

(declare-fun res!1307322 () Bool)

(assert (=> b!3211512 (= res!1307322 (< (size!27260 (_2!20924 lt!1085970)) (size!27260 (list!12865 lt!1084659))))))

(assert (=> b!3211512 (=> (not res!1307322) (not e!2002499))))

(assert (= (and d!880181 c!539526) b!3211511))

(assert (= (and d!880181 (not c!539526)) b!3211510))

(assert (= (and d!880181 c!539527) b!3211512))

(assert (= (and d!880181 (not c!539527)) b!3211509))

(assert (= (and b!3211512 res!1307322) b!3211508))

(declare-fun m!3481127 () Bool)

(assert (=> b!3211508 m!3481127))

(declare-fun m!3481129 () Bool)

(assert (=> b!3211511 m!3481129))

(declare-fun m!3481131 () Bool)

(assert (=> d!880181 m!3481131))

(assert (=> d!880181 m!3477245))

(declare-fun m!3481135 () Bool)

(assert (=> d!880181 m!3481135))

(declare-fun m!3481139 () Bool)

(assert (=> b!3211512 m!3481139))

(assert (=> b!3211512 m!3477245))

(assert (=> b!3211512 m!3479849))

(assert (=> b!3209464 d!880181))

(declare-fun d!880187 () Bool)

(assert (=> d!880187 (= (list!12865 lt!1084659) (list!12868 (c!538931 lt!1084659)))))

(declare-fun bs!541756 () Bool)

(assert (= bs!541756 d!880187))

(declare-fun m!3481145 () Bool)

(assert (=> bs!541756 m!3481145))

(assert (=> b!3209464 d!880187))

(declare-fun b!3211531 () Bool)

(declare-fun e!2002512 () List!36301)

(assert (=> b!3211531 (= e!2002512 lt!1084690)))

(declare-fun e!2002513 () Bool)

(declare-fun lt!1085973 () List!36301)

(declare-fun b!3211534 () Bool)

(assert (=> b!3211534 (= e!2002513 (or (not (= lt!1084690 Nil!36177)) (= lt!1085973 (t!238512 lt!1084696))))))

(declare-fun b!3211533 () Bool)

(declare-fun res!1307325 () Bool)

(assert (=> b!3211533 (=> (not res!1307325) (not e!2002513))))

(assert (=> b!3211533 (= res!1307325 (= (size!27260 lt!1085973) (+ (size!27260 (t!238512 lt!1084696)) (size!27260 lt!1084690))))))

(declare-fun d!880189 () Bool)

(assert (=> d!880189 e!2002513))

(declare-fun res!1307326 () Bool)

(assert (=> d!880189 (=> (not res!1307326) (not e!2002513))))

(assert (=> d!880189 (= res!1307326 (= (content!4888 lt!1085973) ((_ map or) (content!4888 (t!238512 lt!1084696)) (content!4888 lt!1084690))))))

(assert (=> d!880189 (= lt!1085973 e!2002512)))

(declare-fun c!539536 () Bool)

(assert (=> d!880189 (= c!539536 ((_ is Nil!36177) (t!238512 lt!1084696)))))

(assert (=> d!880189 (= (++!8680 (t!238512 lt!1084696) lt!1084690) lt!1085973)))

(declare-fun b!3211532 () Bool)

(assert (=> b!3211532 (= e!2002512 (Cons!36177 (h!41597 (t!238512 lt!1084696)) (++!8680 (t!238512 (t!238512 lt!1084696)) lt!1084690)))))

(assert (= (and d!880189 c!539536) b!3211531))

(assert (= (and d!880189 (not c!539536)) b!3211532))

(assert (= (and d!880189 res!1307326) b!3211533))

(assert (= (and b!3211533 res!1307325) b!3211534))

(declare-fun m!3481147 () Bool)

(assert (=> b!3211533 m!3481147))

(assert (=> b!3211533 m!3478981))

(assert (=> b!3211533 m!3478245))

(declare-fun m!3481149 () Bool)

(assert (=> d!880189 m!3481149))

(assert (=> d!880189 m!3478957))

(assert (=> d!880189 m!3478251))

(declare-fun m!3481153 () Bool)

(assert (=> b!3211532 m!3481153))

(assert (=> b!3210065 d!880189))

(declare-fun d!880191 () Bool)

(declare-fun lt!1085974 () Int)

(assert (=> d!880191 (>= lt!1085974 0)))

(declare-fun e!2002514 () Int)

(assert (=> d!880191 (= lt!1085974 e!2002514)))

(declare-fun c!539537 () Bool)

(assert (=> d!880191 (= c!539537 ((_ is Nil!36177) (_2!20921 (get!11520 lt!1084957))))))

(assert (=> d!880191 (= (size!27260 (_2!20921 (get!11520 lt!1084957))) lt!1085974)))

(declare-fun b!3211535 () Bool)

(assert (=> b!3211535 (= e!2002514 0)))

(declare-fun b!3211536 () Bool)

(assert (=> b!3211536 (= e!2002514 (+ 1 (size!27260 (t!238512 (_2!20921 (get!11520 lt!1084957))))))))

(assert (= (and d!880191 c!539537) b!3211535))

(assert (= (and d!880191 (not c!539537)) b!3211536))

(declare-fun m!3481159 () Bool)

(assert (=> b!3211536 m!3481159))

(assert (=> b!3209786 d!880191))

(assert (=> b!3209786 d!879387))

(assert (=> b!3209786 d!879029))

(declare-fun bs!541757 () Bool)

(declare-fun d!880195 () Bool)

(assert (= bs!541757 (and d!880195 d!879477)))

(declare-fun lambda!117527 () Int)

(assert (=> bs!541757 (= (and (= (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toChars!7167 (transformation!5224 (h!41598 rules!2135)))) (= (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241))) (toValue!7308 (transformation!5224 (h!41598 rules!2135))))) (= lambda!117527 lambda!117495))))

(declare-fun bs!541758 () Bool)

(assert (= bs!541758 (and d!880195 d!879481)))

(assert (=> bs!541758 (= (and (= (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) (= (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (= lambda!117527 lambda!117499))))

(declare-fun bs!541759 () Bool)

(assert (= bs!541759 (and d!880195 d!879847)))

(assert (=> bs!541759 (= (and (= (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) (= (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (= lambda!117527 lambda!117514))))

(assert (=> d!880195 true))

(assert (=> d!880195 (< (dynLambda!14609 order!18477 (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241)))) (dynLambda!14616 order!18479 lambda!117527))))

(assert (=> d!880195 true))

(assert (=> d!880195 (< (dynLambda!14607 order!18473 (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241)))) (dynLambda!14616 order!18479 lambda!117527))))

(assert (=> d!880195 (= (semiInverseModEq!2155 (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241)))) (Forall!1266 lambda!117527))))

(declare-fun bs!541760 () Bool)

(assert (= bs!541760 d!880195))

(declare-fun m!3481173 () Bool)

(assert (=> bs!541760 m!3481173))

(assert (=> d!879269 d!880195))

(declare-fun d!880199 () Bool)

(assert (=> d!880199 (= (list!12869 (_1!20922 lt!1085063)) (list!12871 (c!538932 (_1!20922 lt!1085063))))))

(declare-fun bs!541761 () Bool)

(assert (= bs!541761 d!880199))

(declare-fun m!3481175 () Bool)

(assert (=> bs!541761 m!3481175))

(assert (=> b!3210042 d!880199))

(assert (=> b!3210042 d!879669))

(assert (=> b!3210042 d!879671))

(declare-fun b!3211551 () Bool)

(declare-fun e!2002521 () List!36301)

(declare-fun call!232427 () List!36301)

(assert (=> b!3211551 (= e!2002521 call!232427)))

(declare-fun d!880201 () Bool)

(declare-fun c!539543 () Bool)

(assert (=> d!880201 (= c!539543 (or ((_ is EmptyExpr!9983) (ite c!539048 (regOne!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) ((_ is EmptyLang!9983) (ite c!539048 (regOne!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 tokens!494))))))))))

(declare-fun e!2002524 () List!36301)

(assert (=> d!880201 (= (usedCharacters!540 (ite c!539048 (regOne!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) e!2002524)))

(declare-fun bm!232421 () Bool)

(declare-fun call!232429 () List!36301)

(declare-fun call!232426 () List!36301)

(assert (=> bm!232421 (= call!232429 call!232426)))

(declare-fun b!3211552 () Bool)

(declare-fun e!2002522 () List!36301)

(assert (=> b!3211552 (= e!2002522 (Cons!36177 (c!538930 (ite c!539048 (regOne!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) Nil!36177))))

(declare-fun call!232428 () List!36301)

(declare-fun c!539542 () Bool)

(declare-fun bm!232422 () Bool)

(assert (=> bm!232422 (= call!232427 (++!8680 (ite c!539542 call!232428 call!232429) (ite c!539542 call!232429 call!232428)))))

(declare-fun b!3211553 () Bool)

(assert (=> b!3211553 (= e!2002524 e!2002522)))

(declare-fun c!539544 () Bool)

(assert (=> b!3211553 (= c!539544 ((_ is ElementMatch!9983) (ite c!539048 (regOne!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 tokens!494)))))))))

(declare-fun b!3211554 () Bool)

(declare-fun c!539545 () Bool)

(assert (=> b!3211554 (= c!539545 ((_ is Star!9983) (ite c!539048 (regOne!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 tokens!494)))))))))

(declare-fun e!2002523 () List!36301)

(assert (=> b!3211554 (= e!2002522 e!2002523)))

(declare-fun b!3211555 () Bool)

(assert (=> b!3211555 (= e!2002523 e!2002521)))

(assert (=> b!3211555 (= c!539542 ((_ is Union!9983) (ite c!539048 (regOne!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 tokens!494)))))))))

(declare-fun b!3211556 () Bool)

(assert (=> b!3211556 (= e!2002521 call!232427)))

(declare-fun bm!232423 () Bool)

(assert (=> bm!232423 (= call!232428 (usedCharacters!540 (ite c!539542 (regOne!20479 (ite c!539048 (regOne!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) (regTwo!20478 (ite c!539048 (regOne!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 tokens!494)))))))))))

(declare-fun b!3211557 () Bool)

(assert (=> b!3211557 (= e!2002523 call!232426)))

(declare-fun b!3211558 () Bool)

(assert (=> b!3211558 (= e!2002524 Nil!36177)))

(declare-fun bm!232424 () Bool)

(assert (=> bm!232424 (= call!232426 (usedCharacters!540 (ite c!539545 (reg!10312 (ite c!539048 (regOne!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) (ite c!539542 (regTwo!20479 (ite c!539048 (regOne!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) (regOne!20478 (ite c!539048 (regOne!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 tokens!494))))))))))))

(assert (= (and d!880201 c!539543) b!3211558))

(assert (= (and d!880201 (not c!539543)) b!3211553))

(assert (= (and b!3211553 c!539544) b!3211552))

(assert (= (and b!3211553 (not c!539544)) b!3211554))

(assert (= (and b!3211554 c!539545) b!3211557))

(assert (= (and b!3211554 (not c!539545)) b!3211555))

(assert (= (and b!3211555 c!539542) b!3211551))

(assert (= (and b!3211555 (not c!539542)) b!3211556))

(assert (= (or b!3211551 b!3211556) bm!232421))

(assert (= (or b!3211551 b!3211556) bm!232423))

(assert (= (or b!3211551 b!3211556) bm!232422))

(assert (= (or b!3211557 bm!232421) bm!232424))

(declare-fun m!3481187 () Bool)

(assert (=> bm!232422 m!3481187))

(declare-fun m!3481191 () Bool)

(assert (=> bm!232423 m!3481191))

(declare-fun m!3481195 () Bool)

(assert (=> bm!232424 m!3481195))

(assert (=> bm!232214 d!880201))

(declare-fun b!3211565 () Bool)

(declare-fun res!1307340 () Bool)

(declare-fun e!2002533 () Bool)

(assert (=> b!3211565 (=> res!1307340 e!2002533)))

(assert (=> b!3211565 (= res!1307340 (not (isEmpty!20266 (tail!5212 (tail!5212 lt!1084664)))))))

(declare-fun b!3211566 () Bool)

(declare-fun res!1307336 () Bool)

(declare-fun e!2002534 () Bool)

(assert (=> b!3211566 (=> (not res!1307336) (not e!2002534))))

(assert (=> b!3211566 (= res!1307336 (isEmpty!20266 (tail!5212 (tail!5212 lt!1084664))))))

(declare-fun b!3211568 () Bool)

(declare-fun e!2002530 () Bool)

(assert (=> b!3211568 (= e!2002530 e!2002533)))

(declare-fun res!1307341 () Bool)

(assert (=> b!3211568 (=> res!1307341 e!2002533)))

(declare-fun call!232430 () Bool)

(assert (=> b!3211568 (= res!1307341 call!232430)))

(declare-fun b!3211570 () Bool)

(declare-fun res!1307339 () Bool)

(declare-fun e!2002535 () Bool)

(assert (=> b!3211570 (=> res!1307339 e!2002535)))

(assert (=> b!3211570 (= res!1307339 (not ((_ is ElementMatch!9983) (derivativeStep!2951 (regex!5224 lt!1084665) (head!7043 lt!1084664)))))))

(declare-fun e!2002529 () Bool)

(assert (=> b!3211570 (= e!2002529 e!2002535)))

(declare-fun b!3211571 () Bool)

(declare-fun e!2002531 () Bool)

(assert (=> b!3211571 (= e!2002531 (matchR!4617 (derivativeStep!2951 (derivativeStep!2951 (regex!5224 lt!1084665) (head!7043 lt!1084664)) (head!7043 (tail!5212 lt!1084664))) (tail!5212 (tail!5212 lt!1084664))))))

(declare-fun b!3211572 () Bool)

(assert (=> b!3211572 (= e!2002535 e!2002530)))

(declare-fun res!1307335 () Bool)

(assert (=> b!3211572 (=> (not res!1307335) (not e!2002530))))

(declare-fun lt!1085976 () Bool)

(assert (=> b!3211572 (= res!1307335 (not lt!1085976))))

(declare-fun b!3211573 () Bool)

(declare-fun res!1307337 () Bool)

(assert (=> b!3211573 (=> res!1307337 e!2002535)))

(assert (=> b!3211573 (= res!1307337 e!2002534)))

(declare-fun res!1307342 () Bool)

(assert (=> b!3211573 (=> (not res!1307342) (not e!2002534))))

(assert (=> b!3211573 (= res!1307342 lt!1085976)))

(declare-fun b!3211574 () Bool)

(assert (=> b!3211574 (= e!2002531 (nullable!3398 (derivativeStep!2951 (regex!5224 lt!1084665) (head!7043 lt!1084664))))))

(declare-fun d!880211 () Bool)

(declare-fun e!2002532 () Bool)

(assert (=> d!880211 e!2002532))

(declare-fun c!539549 () Bool)

(assert (=> d!880211 (= c!539549 ((_ is EmptyExpr!9983) (derivativeStep!2951 (regex!5224 lt!1084665) (head!7043 lt!1084664))))))

(assert (=> d!880211 (= lt!1085976 e!2002531)))

(declare-fun c!539550 () Bool)

(assert (=> d!880211 (= c!539550 (isEmpty!20266 (tail!5212 lt!1084664)))))

(assert (=> d!880211 (validRegex!4552 (derivativeStep!2951 (regex!5224 lt!1084665) (head!7043 lt!1084664)))))

(assert (=> d!880211 (= (matchR!4617 (derivativeStep!2951 (regex!5224 lt!1084665) (head!7043 lt!1084664)) (tail!5212 lt!1084664)) lt!1085976)))

(declare-fun bm!232425 () Bool)

(assert (=> bm!232425 (= call!232430 (isEmpty!20266 (tail!5212 lt!1084664)))))

(declare-fun b!3211575 () Bool)

(assert (=> b!3211575 (= e!2002533 (not (= (head!7043 (tail!5212 lt!1084664)) (c!538930 (derivativeStep!2951 (regex!5224 lt!1084665) (head!7043 lt!1084664))))))))

(declare-fun b!3211576 () Bool)

(assert (=> b!3211576 (= e!2002534 (= (head!7043 (tail!5212 lt!1084664)) (c!538930 (derivativeStep!2951 (regex!5224 lt!1084665) (head!7043 lt!1084664)))))))

(declare-fun b!3211577 () Bool)

(assert (=> b!3211577 (= e!2002529 (not lt!1085976))))

(declare-fun b!3211578 () Bool)

(assert (=> b!3211578 (= e!2002532 (= lt!1085976 call!232430))))

(declare-fun b!3211579 () Bool)

(declare-fun res!1307338 () Bool)

(assert (=> b!3211579 (=> (not res!1307338) (not e!2002534))))

(assert (=> b!3211579 (= res!1307338 (not call!232430))))

(declare-fun b!3211580 () Bool)

(assert (=> b!3211580 (= e!2002532 e!2002529)))

(declare-fun c!539548 () Bool)

(assert (=> b!3211580 (= c!539548 ((_ is EmptyLang!9983) (derivativeStep!2951 (regex!5224 lt!1084665) (head!7043 lt!1084664))))))

(assert (= (and d!880211 c!539550) b!3211574))

(assert (= (and d!880211 (not c!539550)) b!3211571))

(assert (= (and d!880211 c!539549) b!3211578))

(assert (= (and d!880211 (not c!539549)) b!3211580))

(assert (= (and b!3211580 c!539548) b!3211577))

(assert (= (and b!3211580 (not c!539548)) b!3211570))

(assert (= (and b!3211570 (not res!1307339)) b!3211573))

(assert (= (and b!3211573 res!1307342) b!3211579))

(assert (= (and b!3211579 res!1307338) b!3211566))

(assert (= (and b!3211566 res!1307336) b!3211576))

(assert (= (and b!3211573 (not res!1307337)) b!3211572))

(assert (= (and b!3211572 res!1307335) b!3211568))

(assert (= (and b!3211568 (not res!1307341)) b!3211565))

(assert (= (and b!3211565 (not res!1307340)) b!3211575))

(assert (= (or b!3211578 b!3211568 b!3211579) bm!232425))

(assert (=> b!3211574 m!3478285))

(declare-fun m!3481205 () Bool)

(assert (=> b!3211574 m!3481205))

(assert (=> b!3211571 m!3478287))

(declare-fun m!3481207 () Bool)

(assert (=> b!3211571 m!3481207))

(assert (=> b!3211571 m!3478285))

(assert (=> b!3211571 m!3481207))

(declare-fun m!3481209 () Bool)

(assert (=> b!3211571 m!3481209))

(assert (=> b!3211571 m!3478287))

(declare-fun m!3481213 () Bool)

(assert (=> b!3211571 m!3481213))

(assert (=> b!3211571 m!3481209))

(assert (=> b!3211571 m!3481213))

(declare-fun m!3481217 () Bool)

(assert (=> b!3211571 m!3481217))

(assert (=> b!3211575 m!3478287))

(assert (=> b!3211575 m!3481207))

(assert (=> b!3211566 m!3478287))

(assert (=> b!3211566 m!3481213))

(assert (=> b!3211566 m!3481213))

(declare-fun m!3481221 () Bool)

(assert (=> b!3211566 m!3481221))

(assert (=> d!880211 m!3478287))

(assert (=> d!880211 m!3478291))

(assert (=> d!880211 m!3478285))

(declare-fun m!3481223 () Bool)

(assert (=> d!880211 m!3481223))

(assert (=> bm!232425 m!3478287))

(assert (=> bm!232425 m!3478291))

(assert (=> b!3211576 m!3478287))

(assert (=> b!3211576 m!3481207))

(assert (=> b!3211565 m!3478287))

(assert (=> b!3211565 m!3481213))

(assert (=> b!3211565 m!3481213))

(assert (=> b!3211565 m!3481221))

(assert (=> b!3210010 d!880211))

(declare-fun bm!232433 () Bool)

(declare-fun call!232438 () Regex!9983)

(declare-fun call!232441 () Regex!9983)

(assert (=> bm!232433 (= call!232438 call!232441)))

(declare-fun bm!232434 () Bool)

(declare-fun call!232439 () Regex!9983)

(assert (=> bm!232434 (= call!232441 call!232439)))

(declare-fun call!232440 () Regex!9983)

(declare-fun b!3211599 () Bool)

(declare-fun e!2002549 () Regex!9983)

(assert (=> b!3211599 (= e!2002549 (Union!9983 (Concat!15437 call!232438 (regTwo!20478 (regex!5224 lt!1084665))) call!232440))))

(declare-fun b!3211600 () Bool)

(declare-fun e!2002551 () Regex!9983)

(assert (=> b!3211600 (= e!2002551 (Concat!15437 call!232441 (regex!5224 lt!1084665)))))

(declare-fun b!3211601 () Bool)

(declare-fun c!539561 () Bool)

(assert (=> b!3211601 (= c!539561 ((_ is Union!9983) (regex!5224 lt!1084665)))))

(declare-fun e!2002552 () Regex!9983)

(declare-fun e!2002550 () Regex!9983)

(assert (=> b!3211601 (= e!2002552 e!2002550)))

(declare-fun c!539562 () Bool)

(declare-fun bm!232435 () Bool)

(assert (=> bm!232435 (= call!232439 (derivativeStep!2951 (ite c!539561 (regTwo!20479 (regex!5224 lt!1084665)) (ite c!539562 (reg!10312 (regex!5224 lt!1084665)) (regOne!20478 (regex!5224 lt!1084665)))) (head!7043 lt!1084664)))))

(declare-fun b!3211602 () Bool)

(assert (=> b!3211602 (= e!2002550 e!2002551)))

(assert (=> b!3211602 (= c!539562 ((_ is Star!9983) (regex!5224 lt!1084665)))))

(declare-fun b!3211603 () Bool)

(assert (=> b!3211603 (= e!2002550 (Union!9983 call!232440 call!232439))))

(declare-fun b!3211604 () Bool)

(assert (=> b!3211604 (= e!2002552 (ite (= (head!7043 lt!1084664) (c!538930 (regex!5224 lt!1084665))) EmptyExpr!9983 EmptyLang!9983))))

(declare-fun d!880221 () Bool)

(declare-fun lt!1085977 () Regex!9983)

(assert (=> d!880221 (validRegex!4552 lt!1085977)))

(declare-fun e!2002548 () Regex!9983)

(assert (=> d!880221 (= lt!1085977 e!2002548)))

(declare-fun c!539558 () Bool)

(assert (=> d!880221 (= c!539558 (or ((_ is EmptyExpr!9983) (regex!5224 lt!1084665)) ((_ is EmptyLang!9983) (regex!5224 lt!1084665))))))

(assert (=> d!880221 (validRegex!4552 (regex!5224 lt!1084665))))

(assert (=> d!880221 (= (derivativeStep!2951 (regex!5224 lt!1084665) (head!7043 lt!1084664)) lt!1085977)))

(declare-fun b!3211598 () Bool)

(assert (=> b!3211598 (= e!2002548 EmptyLang!9983)))

(declare-fun b!3211605 () Bool)

(assert (=> b!3211605 (= e!2002549 (Union!9983 (Concat!15437 call!232438 (regTwo!20478 (regex!5224 lt!1084665))) EmptyLang!9983))))

(declare-fun b!3211606 () Bool)

(assert (=> b!3211606 (= e!2002548 e!2002552)))

(declare-fun c!539559 () Bool)

(assert (=> b!3211606 (= c!539559 ((_ is ElementMatch!9983) (regex!5224 lt!1084665)))))

(declare-fun bm!232436 () Bool)

(assert (=> bm!232436 (= call!232440 (derivativeStep!2951 (ite c!539561 (regOne!20479 (regex!5224 lt!1084665)) (regTwo!20478 (regex!5224 lt!1084665))) (head!7043 lt!1084664)))))

(declare-fun b!3211607 () Bool)

(declare-fun c!539560 () Bool)

(assert (=> b!3211607 (= c!539560 (nullable!3398 (regOne!20478 (regex!5224 lt!1084665))))))

(assert (=> b!3211607 (= e!2002551 e!2002549)))

(assert (= (and d!880221 c!539558) b!3211598))

(assert (= (and d!880221 (not c!539558)) b!3211606))

(assert (= (and b!3211606 c!539559) b!3211604))

(assert (= (and b!3211606 (not c!539559)) b!3211601))

(assert (= (and b!3211601 c!539561) b!3211603))

(assert (= (and b!3211601 (not c!539561)) b!3211602))

(assert (= (and b!3211602 c!539562) b!3211600))

(assert (= (and b!3211602 (not c!539562)) b!3211607))

(assert (= (and b!3211607 c!539560) b!3211599))

(assert (= (and b!3211607 (not c!539560)) b!3211605))

(assert (= (or b!3211599 b!3211605) bm!232433))

(assert (= (or b!3211600 bm!232433) bm!232434))

(assert (= (or b!3211603 b!3211599) bm!232436))

(assert (= (or b!3211603 bm!232434) bm!232435))

(assert (=> bm!232435 m!3478283))

(declare-fun m!3481231 () Bool)

(assert (=> bm!232435 m!3481231))

(declare-fun m!3481235 () Bool)

(assert (=> d!880221 m!3481235))

(assert (=> d!880221 m!3478295))

(assert (=> bm!232436 m!3478283))

(declare-fun m!3481237 () Bool)

(assert (=> bm!232436 m!3481237))

(declare-fun m!3481239 () Bool)

(assert (=> b!3211607 m!3481239))

(assert (=> b!3210010 d!880221))

(assert (=> b!3210010 d!879539))

(assert (=> b!3210010 d!879493))

(assert (=> b!3209747 d!879415))

(declare-fun d!880227 () Bool)

(assert (=> d!880227 (= (apply!8197 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932)))) (seqFromList!3519 (originalCharacters!5938 (_1!20921 (get!11520 lt!1084932))))) (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932))))) (seqFromList!3519 (originalCharacters!5938 (_1!20921 (get!11520 lt!1084932))))))))

(declare-fun b_lambda!88011 () Bool)

(assert (=> (not b_lambda!88011) (not d!880227)))

(declare-fun tb!157831 () Bool)

(declare-fun t!238808 () Bool)

(assert (=> (and b!3209120 (= (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241))) (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932)))))) t!238808) tb!157831))

(declare-fun result!200196 () Bool)

(assert (=> tb!157831 (= result!200196 (inv!21 (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932))))) (seqFromList!3519 (originalCharacters!5938 (_1!20921 (get!11520 lt!1084932)))))))))

(declare-fun m!3481243 () Bool)

(assert (=> tb!157831 m!3481243))

(assert (=> d!880227 t!238808))

(declare-fun b_and!214003 () Bool)

(assert (= b_and!213967 (and (=> t!238808 result!200196) b_and!214003)))

(declare-fun tb!157833 () Bool)

(declare-fun t!238810 () Bool)

(assert (=> (and b!3209139 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932)))))) t!238810) tb!157833))

(declare-fun result!200198 () Bool)

(assert (= result!200198 result!200196))

(assert (=> d!880227 t!238810))

(declare-fun b_and!214005 () Bool)

(assert (= b_and!213965 (and (=> t!238810 result!200198) b_and!214005)))

(declare-fun t!238812 () Bool)

(declare-fun tb!157835 () Bool)

(assert (=> (and b!3210119 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932)))))) t!238812) tb!157835))

(declare-fun result!200200 () Bool)

(assert (= result!200200 result!200196))

(assert (=> d!880227 t!238812))

(declare-fun b_and!214007 () Bool)

(assert (= b_and!213971 (and (=> t!238812 result!200200) b_and!214007)))

(declare-fun tb!157837 () Bool)

(declare-fun t!238814 () Bool)

(assert (=> (and b!3209140 (= (toValue!7308 (transformation!5224 (h!41598 rules!2135))) (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932)))))) t!238814) tb!157837))

(declare-fun result!200202 () Bool)

(assert (= result!200202 result!200196))

(assert (=> d!880227 t!238814))

(declare-fun b_and!214009 () Bool)

(assert (= b_and!213969 (and (=> t!238814 result!200202) b_and!214009)))

(declare-fun tb!157839 () Bool)

(declare-fun t!238816 () Bool)

(assert (=> (and b!3210083 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932)))))) t!238816) tb!157839))

(declare-fun result!200204 () Bool)

(assert (= result!200204 result!200196))

(assert (=> d!880227 t!238816))

(declare-fun b_and!214011 () Bool)

(assert (= b_and!213963 (and (=> t!238816 result!200204) b_and!214011)))

(assert (=> d!880227 m!3477737))

(declare-fun m!3481255 () Bool)

(assert (=> d!880227 m!3481255))

(assert (=> b!3209747 d!880227))

(declare-fun d!880231 () Bool)

(assert (=> d!880231 (= (seqFromList!3519 (originalCharacters!5938 (_1!20921 (get!11520 lt!1084932)))) (fromListB!1541 (originalCharacters!5938 (_1!20921 (get!11520 lt!1084932)))))))

(declare-fun bs!541763 () Bool)

(assert (= bs!541763 d!880231))

(declare-fun m!3481263 () Bool)

(assert (=> bs!541763 m!3481263))

(assert (=> b!3209747 d!880231))

(declare-fun b!3211632 () Bool)

(declare-fun res!1307367 () Bool)

(declare-fun e!2002569 () Bool)

(assert (=> b!3211632 (=> res!1307367 e!2002569)))

(assert (=> b!3211632 (= res!1307367 (not (isEmpty!20266 (tail!5212 (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 tokens!494))) Nil!36177 (size!27260 Nil!36177) lt!1084683 lt!1084683 (size!27260 lt!1084683)))))))))

(declare-fun b!3211633 () Bool)

(declare-fun res!1307363 () Bool)

(declare-fun e!2002570 () Bool)

(assert (=> b!3211633 (=> (not res!1307363) (not e!2002570))))

(assert (=> b!3211633 (= res!1307363 (isEmpty!20266 (tail!5212 (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 tokens!494))) Nil!36177 (size!27260 Nil!36177) lt!1084683 lt!1084683 (size!27260 lt!1084683))))))))

(declare-fun b!3211634 () Bool)

(declare-fun e!2002566 () Bool)

(assert (=> b!3211634 (= e!2002566 e!2002569)))

(declare-fun res!1307368 () Bool)

(assert (=> b!3211634 (=> res!1307368 e!2002569)))

(declare-fun call!232443 () Bool)

(assert (=> b!3211634 (= res!1307368 call!232443)))

(declare-fun b!3211635 () Bool)

(declare-fun res!1307366 () Bool)

(declare-fun e!2002571 () Bool)

(assert (=> b!3211635 (=> res!1307366 e!2002571)))

(assert (=> b!3211635 (= res!1307366 (not ((_ is ElementMatch!9983) (regex!5224 (rule!7664 (h!41599 tokens!494))))))))

(declare-fun e!2002565 () Bool)

(assert (=> b!3211635 (= e!2002565 e!2002571)))

(declare-fun b!3211636 () Bool)

(declare-fun e!2002567 () Bool)

(assert (=> b!3211636 (= e!2002567 (matchR!4617 (derivativeStep!2951 (regex!5224 (rule!7664 (h!41599 tokens!494))) (head!7043 (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 tokens!494))) Nil!36177 (size!27260 Nil!36177) lt!1084683 lt!1084683 (size!27260 lt!1084683))))) (tail!5212 (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 tokens!494))) Nil!36177 (size!27260 Nil!36177) lt!1084683 lt!1084683 (size!27260 lt!1084683))))))))

(declare-fun b!3211637 () Bool)

(assert (=> b!3211637 (= e!2002571 e!2002566)))

(declare-fun res!1307362 () Bool)

(assert (=> b!3211637 (=> (not res!1307362) (not e!2002566))))

(declare-fun lt!1085981 () Bool)

(assert (=> b!3211637 (= res!1307362 (not lt!1085981))))

(declare-fun b!3211638 () Bool)

(declare-fun res!1307364 () Bool)

(assert (=> b!3211638 (=> res!1307364 e!2002571)))

(assert (=> b!3211638 (= res!1307364 e!2002570)))

(declare-fun res!1307369 () Bool)

(assert (=> b!3211638 (=> (not res!1307369) (not e!2002570))))

(assert (=> b!3211638 (= res!1307369 lt!1085981)))

(declare-fun b!3211639 () Bool)

(assert (=> b!3211639 (= e!2002567 (nullable!3398 (regex!5224 (rule!7664 (h!41599 tokens!494)))))))

(declare-fun d!880235 () Bool)

(declare-fun e!2002568 () Bool)

(assert (=> d!880235 e!2002568))

(declare-fun c!539569 () Bool)

(assert (=> d!880235 (= c!539569 ((_ is EmptyExpr!9983) (regex!5224 (rule!7664 (h!41599 tokens!494)))))))

(assert (=> d!880235 (= lt!1085981 e!2002567)))

(declare-fun c!539570 () Bool)

(assert (=> d!880235 (= c!539570 (isEmpty!20266 (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 tokens!494))) Nil!36177 (size!27260 Nil!36177) lt!1084683 lt!1084683 (size!27260 lt!1084683)))))))

(assert (=> d!880235 (validRegex!4552 (regex!5224 (rule!7664 (h!41599 tokens!494))))))

(assert (=> d!880235 (= (matchR!4617 (regex!5224 (rule!7664 (h!41599 tokens!494))) (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 tokens!494))) Nil!36177 (size!27260 Nil!36177) lt!1084683 lt!1084683 (size!27260 lt!1084683)))) lt!1085981)))

(declare-fun bm!232438 () Bool)

(assert (=> bm!232438 (= call!232443 (isEmpty!20266 (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 tokens!494))) Nil!36177 (size!27260 Nil!36177) lt!1084683 lt!1084683 (size!27260 lt!1084683)))))))

(declare-fun b!3211640 () Bool)

(assert (=> b!3211640 (= e!2002569 (not (= (head!7043 (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 tokens!494))) Nil!36177 (size!27260 Nil!36177) lt!1084683 lt!1084683 (size!27260 lt!1084683)))) (c!538930 (regex!5224 (rule!7664 (h!41599 tokens!494)))))))))

(declare-fun b!3211641 () Bool)

(assert (=> b!3211641 (= e!2002570 (= (head!7043 (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 tokens!494))) Nil!36177 (size!27260 Nil!36177) lt!1084683 lt!1084683 (size!27260 lt!1084683)))) (c!538930 (regex!5224 (rule!7664 (h!41599 tokens!494))))))))

(declare-fun b!3211642 () Bool)

(assert (=> b!3211642 (= e!2002565 (not lt!1085981))))

(declare-fun b!3211643 () Bool)

(assert (=> b!3211643 (= e!2002568 (= lt!1085981 call!232443))))

(declare-fun b!3211644 () Bool)

(declare-fun res!1307365 () Bool)

(assert (=> b!3211644 (=> (not res!1307365) (not e!2002570))))

(assert (=> b!3211644 (= res!1307365 (not call!232443))))

(declare-fun b!3211645 () Bool)

(assert (=> b!3211645 (= e!2002568 e!2002565)))

(declare-fun c!539568 () Bool)

(assert (=> b!3211645 (= c!539568 ((_ is EmptyLang!9983) (regex!5224 (rule!7664 (h!41599 tokens!494)))))))

(assert (= (and d!880235 c!539570) b!3211639))

(assert (= (and d!880235 (not c!539570)) b!3211636))

(assert (= (and d!880235 c!539569) b!3211643))

(assert (= (and d!880235 (not c!539569)) b!3211645))

(assert (= (and b!3211645 c!539568) b!3211642))

(assert (= (and b!3211645 (not c!539568)) b!3211635))

(assert (= (and b!3211635 (not res!1307366)) b!3211638))

(assert (= (and b!3211638 res!1307369) b!3211644))

(assert (= (and b!3211644 res!1307365) b!3211633))

(assert (= (and b!3211633 res!1307363) b!3211641))

(assert (= (and b!3211638 (not res!1307364)) b!3211637))

(assert (= (and b!3211637 res!1307362) b!3211634))

(assert (= (and b!3211634 (not res!1307368)) b!3211632))

(assert (= (and b!3211632 (not res!1307367)) b!3211640))

(assert (= (or b!3211643 b!3211634 b!3211644) bm!232438))

(assert (=> b!3211639 m!3478561))

(declare-fun m!3481277 () Bool)

(assert (=> b!3211636 m!3481277))

(assert (=> b!3211636 m!3481277))

(declare-fun m!3481279 () Bool)

(assert (=> b!3211636 m!3481279))

(declare-fun m!3481281 () Bool)

(assert (=> b!3211636 m!3481281))

(assert (=> b!3211636 m!3481279))

(assert (=> b!3211636 m!3481281))

(declare-fun m!3481285 () Bool)

(assert (=> b!3211636 m!3481285))

(assert (=> b!3211640 m!3481277))

(assert (=> b!3211633 m!3481281))

(assert (=> b!3211633 m!3481281))

(declare-fun m!3481291 () Bool)

(assert (=> b!3211633 m!3481291))

(assert (=> d!880235 m!3477853))

(assert (=> d!880235 m!3478575))

(assert (=> bm!232438 m!3477853))

(assert (=> b!3211641 m!3481277))

(assert (=> b!3211632 m!3481281))

(assert (=> b!3211632 m!3481281))

(assert (=> b!3211632 m!3481291))

(assert (=> b!3209791 d!880235))

(assert (=> b!3209791 d!879859))

(assert (=> b!3209791 d!879855))

(assert (=> b!3209791 d!879029))

(declare-fun b!3211654 () Bool)

(declare-fun e!2002576 () List!36301)

(assert (=> b!3211654 (= e!2002576 (list!12865 (charsOf!3240 separatorToken!241)))))

(declare-fun b!3211657 () Bool)

(declare-fun lt!1085982 () List!36301)

(declare-fun e!2002577 () Bool)

(assert (=> b!3211657 (= e!2002577 (or (not (= (list!12865 (charsOf!3240 separatorToken!241)) Nil!36177)) (= lt!1085982 (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494)))))))))

(declare-fun b!3211656 () Bool)

(declare-fun res!1307370 () Bool)

(assert (=> b!3211656 (=> (not res!1307370) (not e!2002577))))

(assert (=> b!3211656 (= res!1307370 (= (size!27260 lt!1085982) (+ (size!27260 (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494))))) (size!27260 (list!12865 (charsOf!3240 separatorToken!241))))))))

(declare-fun d!880241 () Bool)

(assert (=> d!880241 e!2002577))

(declare-fun res!1307371 () Bool)

(assert (=> d!880241 (=> (not res!1307371) (not e!2002577))))

(assert (=> d!880241 (= res!1307371 (= (content!4888 lt!1085982) ((_ map or) (content!4888 (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494))))) (content!4888 (list!12865 (charsOf!3240 separatorToken!241))))))))

(assert (=> d!880241 (= lt!1085982 e!2002576)))

(declare-fun c!539575 () Bool)

(assert (=> d!880241 (= c!539575 ((_ is Nil!36177) (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494))))))))

(assert (=> d!880241 (= (++!8680 (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494)))) (list!12865 (charsOf!3240 separatorToken!241))) lt!1085982)))

(declare-fun b!3211655 () Bool)

(assert (=> b!3211655 (= e!2002576 (Cons!36177 (h!41597 (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494))))) (++!8680 (t!238512 (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494))))) (list!12865 (charsOf!3240 separatorToken!241)))))))

(assert (= (and d!880241 c!539575) b!3211654))

(assert (= (and d!880241 (not c!539575)) b!3211655))

(assert (= (and d!880241 res!1307371) b!3211656))

(assert (= (and b!3211656 res!1307370) b!3211657))

(declare-fun m!3481295 () Bool)

(assert (=> b!3211656 m!3481295))

(assert (=> b!3211656 m!3476703))

(declare-fun m!3481297 () Bool)

(assert (=> b!3211656 m!3481297))

(assert (=> b!3211656 m!3476707))

(declare-fun m!3481299 () Bool)

(assert (=> b!3211656 m!3481299))

(declare-fun m!3481301 () Bool)

(assert (=> d!880241 m!3481301))

(assert (=> d!880241 m!3476703))

(declare-fun m!3481303 () Bool)

(assert (=> d!880241 m!3481303))

(assert (=> d!880241 m!3476707))

(declare-fun m!3481305 () Bool)

(assert (=> d!880241 m!3481305))

(assert (=> b!3211655 m!3476707))

(declare-fun m!3481307 () Bool)

(assert (=> b!3211655 m!3481307))

(assert (=> b!3210070 d!880241))

(assert (=> b!3210070 d!879299))

(assert (=> b!3210070 d!879293))

(assert (=> b!3210070 d!879295))

(declare-fun e!2002579 () List!36301)

(declare-fun b!3211658 () Bool)

(assert (=> b!3211658 (= e!2002579 (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241))))

(declare-fun e!2002580 () Bool)

(declare-fun b!3211661 () Bool)

(declare-fun lt!1085983 () List!36301)

(assert (=> b!3211661 (= e!2002580 (or (not (= (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241) Nil!36177)) (= lt!1085983 (++!8680 (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494)))) (list!12865 (charsOf!3240 separatorToken!241))))))))

(declare-fun b!3211660 () Bool)

(declare-fun res!1307372 () Bool)

(assert (=> b!3211660 (=> (not res!1307372) (not e!2002580))))

(assert (=> b!3211660 (= res!1307372 (= (size!27260 lt!1085983) (+ (size!27260 (++!8680 (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494)))) (list!12865 (charsOf!3240 separatorToken!241)))) (size!27260 (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241)))))))

(declare-fun d!880243 () Bool)

(assert (=> d!880243 e!2002580))

(declare-fun res!1307373 () Bool)

(assert (=> d!880243 (=> (not res!1307373) (not e!2002580))))

(assert (=> d!880243 (= res!1307373 (= (content!4888 lt!1085983) ((_ map or) (content!4888 (++!8680 (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494)))) (list!12865 (charsOf!3240 separatorToken!241)))) (content!4888 (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241)))))))

(assert (=> d!880243 (= lt!1085983 e!2002579)))

(declare-fun c!539576 () Bool)

(assert (=> d!880243 (= c!539576 ((_ is Nil!36177) (++!8680 (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494)))) (list!12865 (charsOf!3240 separatorToken!241)))))))

(assert (=> d!880243 (= (++!8680 (++!8680 (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494)))) (list!12865 (charsOf!3240 separatorToken!241))) (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241)) lt!1085983)))

(declare-fun b!3211659 () Bool)

(assert (=> b!3211659 (= e!2002579 (Cons!36177 (h!41597 (++!8680 (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494)))) (list!12865 (charsOf!3240 separatorToken!241)))) (++!8680 (t!238512 (++!8680 (list!12865 (charsOf!3240 (h!41599 (t!238514 tokens!494)))) (list!12865 (charsOf!3240 separatorToken!241)))) (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241))))))

(assert (= (and d!880243 c!539576) b!3211658))

(assert (= (and d!880243 (not c!539576)) b!3211659))

(assert (= (and d!880243 res!1307373) b!3211660))

(assert (= (and b!3211660 res!1307372) b!3211661))

(declare-fun m!3481311 () Bool)

(assert (=> b!3211660 m!3481311))

(assert (=> b!3211660 m!3478413))

(declare-fun m!3481315 () Bool)

(assert (=> b!3211660 m!3481315))

(assert (=> b!3211660 m!3476699))

(assert (=> b!3211660 m!3478383))

(declare-fun m!3481317 () Bool)

(assert (=> d!880243 m!3481317))

(assert (=> d!880243 m!3478413))

(declare-fun m!3481319 () Bool)

(assert (=> d!880243 m!3481319))

(assert (=> d!880243 m!3476699))

(assert (=> d!880243 m!3478389))

(assert (=> b!3211659 m!3476699))

(declare-fun m!3481321 () Bool)

(assert (=> b!3211659 m!3481321))

(assert (=> b!3210070 d!880243))

(assert (=> b!3210070 d!879303))

(assert (=> b!3210070 d!879305))

(declare-fun d!880249 () Bool)

(declare-fun lt!1085985 () Bool)

(assert (=> d!880249 (= lt!1085985 (isEmpty!20274 (list!12869 (_1!20922 lt!1084839))))))

(assert (=> d!880249 (= lt!1085985 (isEmpty!20275 (c!538932 (_1!20922 lt!1084839))))))

(assert (=> d!880249 (= (isEmpty!20261 (_1!20922 lt!1084839)) lt!1085985)))

(declare-fun bs!541765 () Bool)

(assert (= bs!541765 d!880249))

(assert (=> bs!541765 m!3477333))

(assert (=> bs!541765 m!3477333))

(declare-fun m!3481327 () Bool)

(assert (=> bs!541765 m!3481327))

(declare-fun m!3481329 () Bool)

(assert (=> bs!541765 m!3481329))

(assert (=> b!3209543 d!880249))

(declare-fun d!880253 () Bool)

(declare-fun c!539587 () Bool)

(assert (=> d!880253 (= c!539587 ((_ is Node!10823) (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (value!169344 separatorToken!241)))))))

(declare-fun e!2002598 () Bool)

(assert (=> d!880253 (= (inv!49039 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (value!169344 separatorToken!241)))) e!2002598)))

(declare-fun b!3211689 () Bool)

(declare-fun inv!49043 (Conc!10823) Bool)

(assert (=> b!3211689 (= e!2002598 (inv!49043 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (value!169344 separatorToken!241)))))))

(declare-fun b!3211690 () Bool)

(declare-fun e!2002599 () Bool)

(assert (=> b!3211690 (= e!2002598 e!2002599)))

(declare-fun res!1307381 () Bool)

(assert (=> b!3211690 (= res!1307381 (not ((_ is Leaf!17046) (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (value!169344 separatorToken!241))))))))

(assert (=> b!3211690 (=> res!1307381 e!2002599)))

(declare-fun b!3211691 () Bool)

(declare-fun inv!49044 (Conc!10823) Bool)

(assert (=> b!3211691 (= e!2002599 (inv!49044 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (value!169344 separatorToken!241)))))))

(assert (= (and d!880253 c!539587) b!3211689))

(assert (= (and d!880253 (not c!539587)) b!3211690))

(assert (= (and b!3211690 (not res!1307381)) b!3211691))

(declare-fun m!3481357 () Bool)

(assert (=> b!3211689 m!3481357))

(declare-fun m!3481359 () Bool)

(assert (=> b!3211691 m!3481359))

(assert (=> b!3209291 d!880253))

(declare-fun d!880265 () Bool)

(assert (=> d!880265 (= (list!12869 (singletonSeq!2320 separatorToken!241)) (list!12871 (c!538932 (singletonSeq!2320 separatorToken!241))))))

(declare-fun bs!541770 () Bool)

(assert (= bs!541770 d!880265))

(declare-fun m!3481361 () Bool)

(assert (=> bs!541770 m!3481361))

(assert (=> d!878979 d!880265))

(declare-fun d!880267 () Bool)

(declare-fun lt!1086019 () Int)

(assert (=> d!880267 (= lt!1086019 (size!27264 (list!12869 (_1!20922 lt!1084803))))))

(assert (=> d!880267 (= lt!1086019 (size!27265 (c!538932 (_1!20922 lt!1084803))))))

(assert (=> d!880267 (= (size!27261 (_1!20922 lt!1084803)) lt!1086019)))

(declare-fun bs!541771 () Bool)

(assert (= bs!541771 d!880267))

(declare-fun m!3481367 () Bool)

(assert (=> bs!541771 m!3481367))

(assert (=> bs!541771 m!3481367))

(declare-fun m!3481371 () Bool)

(assert (=> bs!541771 m!3481371))

(declare-fun m!3481375 () Bool)

(assert (=> bs!541771 m!3481375))

(assert (=> d!878979 d!880267))

(declare-fun d!880269 () Bool)

(assert (=> d!880269 (= (list!12869 (_1!20922 (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 separatorToken!241))))) (list!12871 (c!538932 (_1!20922 (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 separatorToken!241)))))))))

(declare-fun bs!541772 () Bool)

(assert (= bs!541772 d!880269))

(declare-fun m!3481391 () Bool)

(assert (=> bs!541772 m!3481391))

(assert (=> d!878979 d!880269))

(assert (=> d!878979 d!879025))

(assert (=> d!878979 d!880027))

(assert (=> d!878979 d!878957))

(assert (=> d!878979 d!880025))

(declare-fun d!880271 () Bool)

(assert (=> d!880271 (= (isEmpty!20266 (tail!5212 lt!1084683)) ((_ is Nil!36177) (tail!5212 lt!1084683)))))

(assert (=> b!3210027 d!880271))

(assert (=> b!3210027 d!880021))

(assert (=> b!3209319 d!879129))

(declare-fun d!880273 () Bool)

(assert (=> d!880273 (= (list!12865 lt!1084763) (list!12868 (c!538931 lt!1084763)))))

(declare-fun bs!541773 () Bool)

(assert (= bs!541773 d!880273))

(declare-fun m!3481405 () Bool)

(assert (=> bs!541773 m!3481405))

(assert (=> d!878947 d!880273))

(declare-fun d!880275 () Bool)

(declare-fun c!539588 () Bool)

(assert (=> d!880275 (= c!539588 ((_ is Cons!36179) (list!12869 lt!1084674)))))

(declare-fun e!2002600 () List!36301)

(assert (=> d!880275 (= (printList!1363 thiss!18206 (list!12869 lt!1084674)) e!2002600)))

(declare-fun b!3211692 () Bool)

(assert (=> b!3211692 (= e!2002600 (++!8680 (list!12865 (charsOf!3240 (h!41599 (list!12869 lt!1084674)))) (printList!1363 thiss!18206 (t!238514 (list!12869 lt!1084674)))))))

(declare-fun b!3211693 () Bool)

(assert (=> b!3211693 (= e!2002600 Nil!36177)))

(assert (= (and d!880275 c!539588) b!3211692))

(assert (= (and d!880275 (not c!539588)) b!3211693))

(declare-fun m!3481421 () Bool)

(assert (=> b!3211692 m!3481421))

(assert (=> b!3211692 m!3481421))

(declare-fun m!3481423 () Bool)

(assert (=> b!3211692 m!3481423))

(declare-fun m!3481425 () Bool)

(assert (=> b!3211692 m!3481425))

(assert (=> b!3211692 m!3481423))

(assert (=> b!3211692 m!3481425))

(declare-fun m!3481427 () Bool)

(assert (=> b!3211692 m!3481427))

(assert (=> d!878947 d!880275))

(assert (=> d!878947 d!880135))

(assert (=> d!878947 d!878945))

(declare-fun d!880279 () Bool)

(assert (=> d!880279 (= (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 separatorToken!241)))) (v!35697 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 separatorToken!241)))))))

(assert (=> b!3209781 d!880279))

(assert (=> b!3209781 d!879145))

(assert (=> b!3210000 d!880173))

(declare-fun d!880281 () Bool)

(assert (=> d!880281 (= (list!12865 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (value!169344 (h!41599 tokens!494)))) (list!12868 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (value!169344 (h!41599 tokens!494))))))))

(declare-fun bs!541774 () Bool)

(assert (= bs!541774 d!880281))

(declare-fun m!3481429 () Bool)

(assert (=> bs!541774 m!3481429))

(assert (=> b!3209346 d!880281))

(declare-fun d!880283 () Bool)

(assert (=> d!880283 (= (list!12865 lt!1084909) (list!12868 (c!538931 lt!1084909)))))

(declare-fun bs!541775 () Bool)

(assert (= bs!541775 d!880283))

(declare-fun m!3481433 () Bool)

(assert (=> bs!541775 m!3481433))

(assert (=> d!879123 d!880283))

(declare-fun d!880285 () Bool)

(declare-fun c!539589 () Bool)

(assert (=> d!880285 (= c!539589 ((_ is Cons!36179) (list!12869 lt!1084657)))))

(declare-fun e!2002602 () List!36301)

(assert (=> d!880285 (= (printList!1363 thiss!18206 (list!12869 lt!1084657)) e!2002602)))

(declare-fun b!3211695 () Bool)

(assert (=> b!3211695 (= e!2002602 (++!8680 (list!12865 (charsOf!3240 (h!41599 (list!12869 lt!1084657)))) (printList!1363 thiss!18206 (t!238514 (list!12869 lt!1084657)))))))

(declare-fun b!3211696 () Bool)

(assert (=> b!3211696 (= e!2002602 Nil!36177)))

(assert (= (and d!880285 c!539589) b!3211695))

(assert (= (and d!880285 (not c!539589)) b!3211696))

(declare-fun m!3481435 () Bool)

(assert (=> b!3211695 m!3481435))

(assert (=> b!3211695 m!3481435))

(declare-fun m!3481437 () Bool)

(assert (=> b!3211695 m!3481437))

(declare-fun m!3481439 () Bool)

(assert (=> b!3211695 m!3481439))

(assert (=> b!3211695 m!3481437))

(assert (=> b!3211695 m!3481439))

(declare-fun m!3481441 () Bool)

(assert (=> b!3211695 m!3481441))

(assert (=> d!879123 d!880285))

(declare-fun d!880289 () Bool)

(assert (=> d!880289 (= (list!12869 lt!1084657) (list!12871 (c!538932 lt!1084657)))))

(declare-fun bs!541776 () Bool)

(assert (= bs!541776 d!880289))

(declare-fun m!3481443 () Bool)

(assert (=> bs!541776 m!3481443))

(assert (=> d!879123 d!880289))

(assert (=> d!879123 d!879157))

(assert (=> b!3209856 d!878969))

(declare-fun b!3211697 () Bool)

(declare-fun res!1307388 () Bool)

(declare-fun e!2002607 () Bool)

(assert (=> b!3211697 (=> res!1307388 e!2002607)))

(assert (=> b!3211697 (= res!1307388 (not (isEmpty!20266 (tail!5212 (list!12865 (charsOf!3240 (h!41599 tokens!494)))))))))

(declare-fun b!3211698 () Bool)

(declare-fun res!1307384 () Bool)

(declare-fun e!2002608 () Bool)

(assert (=> b!3211698 (=> (not res!1307384) (not e!2002608))))

(assert (=> b!3211698 (= res!1307384 (isEmpty!20266 (tail!5212 (list!12865 (charsOf!3240 (h!41599 tokens!494))))))))

(declare-fun b!3211699 () Bool)

(declare-fun e!2002604 () Bool)

(assert (=> b!3211699 (= e!2002604 e!2002607)))

(declare-fun res!1307389 () Bool)

(assert (=> b!3211699 (=> res!1307389 e!2002607)))

(declare-fun call!232456 () Bool)

(assert (=> b!3211699 (= res!1307389 call!232456)))

(declare-fun b!3211700 () Bool)

(declare-fun res!1307387 () Bool)

(declare-fun e!2002609 () Bool)

(assert (=> b!3211700 (=> res!1307387 e!2002609)))

(assert (=> b!3211700 (= res!1307387 (not ((_ is ElementMatch!9983) (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 tokens!494)))))))))))

(declare-fun e!2002603 () Bool)

(assert (=> b!3211700 (= e!2002603 e!2002609)))

(declare-fun e!2002605 () Bool)

(declare-fun b!3211701 () Bool)

(assert (=> b!3211701 (= e!2002605 (matchR!4617 (derivativeStep!2951 (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 tokens!494)))))) (head!7043 (list!12865 (charsOf!3240 (h!41599 tokens!494))))) (tail!5212 (list!12865 (charsOf!3240 (h!41599 tokens!494))))))))

(declare-fun b!3211702 () Bool)

(assert (=> b!3211702 (= e!2002609 e!2002604)))

(declare-fun res!1307383 () Bool)

(assert (=> b!3211702 (=> (not res!1307383) (not e!2002604))))

(declare-fun lt!1086022 () Bool)

(assert (=> b!3211702 (= res!1307383 (not lt!1086022))))

(declare-fun b!3211703 () Bool)

(declare-fun res!1307385 () Bool)

(assert (=> b!3211703 (=> res!1307385 e!2002609)))

(assert (=> b!3211703 (= res!1307385 e!2002608)))

(declare-fun res!1307390 () Bool)

(assert (=> b!3211703 (=> (not res!1307390) (not e!2002608))))

(assert (=> b!3211703 (= res!1307390 lt!1086022)))

(declare-fun b!3211704 () Bool)

(assert (=> b!3211704 (= e!2002605 (nullable!3398 (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 tokens!494))))))))))

(declare-fun d!880291 () Bool)

(declare-fun e!2002606 () Bool)

(assert (=> d!880291 e!2002606))

(declare-fun c!539591 () Bool)

(assert (=> d!880291 (= c!539591 ((_ is EmptyExpr!9983) (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 tokens!494))))))))))

(assert (=> d!880291 (= lt!1086022 e!2002605)))

(declare-fun c!539592 () Bool)

(assert (=> d!880291 (= c!539592 (isEmpty!20266 (list!12865 (charsOf!3240 (h!41599 tokens!494)))))))

(assert (=> d!880291 (validRegex!4552 (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 tokens!494)))))))))

(assert (=> d!880291 (= (matchR!4617 (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 tokens!494)))))) (list!12865 (charsOf!3240 (h!41599 tokens!494)))) lt!1086022)))

(declare-fun bm!232451 () Bool)

(assert (=> bm!232451 (= call!232456 (isEmpty!20266 (list!12865 (charsOf!3240 (h!41599 tokens!494)))))))

(declare-fun b!3211705 () Bool)

(assert (=> b!3211705 (= e!2002607 (not (= (head!7043 (list!12865 (charsOf!3240 (h!41599 tokens!494)))) (c!538930 (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 tokens!494))))))))))))

(declare-fun b!3211706 () Bool)

(assert (=> b!3211706 (= e!2002608 (= (head!7043 (list!12865 (charsOf!3240 (h!41599 tokens!494)))) (c!538930 (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 tokens!494)))))))))))

(declare-fun b!3211707 () Bool)

(assert (=> b!3211707 (= e!2002603 (not lt!1086022))))

(declare-fun b!3211708 () Bool)

(assert (=> b!3211708 (= e!2002606 (= lt!1086022 call!232456))))

(declare-fun b!3211709 () Bool)

(declare-fun res!1307386 () Bool)

(assert (=> b!3211709 (=> (not res!1307386) (not e!2002608))))

(assert (=> b!3211709 (= res!1307386 (not call!232456))))

(declare-fun b!3211710 () Bool)

(assert (=> b!3211710 (= e!2002606 e!2002603)))

(declare-fun c!539590 () Bool)

(assert (=> b!3211710 (= c!539590 ((_ is EmptyLang!9983) (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 tokens!494))))))))))

(assert (= (and d!880291 c!539592) b!3211704))

(assert (= (and d!880291 (not c!539592)) b!3211701))

(assert (= (and d!880291 c!539591) b!3211708))

(assert (= (and d!880291 (not c!539591)) b!3211710))

(assert (= (and b!3211710 c!539590) b!3211707))

(assert (= (and b!3211710 (not c!539590)) b!3211700))

(assert (= (and b!3211700 (not res!1307387)) b!3211703))

(assert (= (and b!3211703 res!1307390) b!3211709))

(assert (= (and b!3211709 res!1307386) b!3211698))

(assert (= (and b!3211698 res!1307384) b!3211706))

(assert (= (and b!3211703 (not res!1307385)) b!3211702))

(assert (= (and b!3211702 res!1307383) b!3211699))

(assert (= (and b!3211699 (not res!1307389)) b!3211697))

(assert (= (and b!3211697 (not res!1307388)) b!3211705))

(assert (= (or b!3211708 b!3211699 b!3211709) bm!232451))

(declare-fun m!3481445 () Bool)

(assert (=> b!3211704 m!3481445))

(assert (=> b!3211701 m!3476717))

(declare-fun m!3481447 () Bool)

(assert (=> b!3211701 m!3481447))

(assert (=> b!3211701 m!3481447))

(declare-fun m!3481449 () Bool)

(assert (=> b!3211701 m!3481449))

(assert (=> b!3211701 m!3476717))

(declare-fun m!3481451 () Bool)

(assert (=> b!3211701 m!3481451))

(assert (=> b!3211701 m!3481449))

(assert (=> b!3211701 m!3481451))

(declare-fun m!3481453 () Bool)

(assert (=> b!3211701 m!3481453))

(assert (=> b!3211705 m!3476717))

(assert (=> b!3211705 m!3481447))

(assert (=> b!3211698 m!3476717))

(assert (=> b!3211698 m!3481451))

(assert (=> b!3211698 m!3481451))

(declare-fun m!3481455 () Bool)

(assert (=> b!3211698 m!3481455))

(assert (=> d!880291 m!3476717))

(declare-fun m!3481457 () Bool)

(assert (=> d!880291 m!3481457))

(declare-fun m!3481459 () Bool)

(assert (=> d!880291 m!3481459))

(assert (=> bm!232451 m!3476717))

(assert (=> bm!232451 m!3481457))

(assert (=> b!3211706 m!3476717))

(assert (=> b!3211706 m!3481447))

(assert (=> b!3211697 m!3476717))

(assert (=> b!3211697 m!3481451))

(assert (=> b!3211697 m!3481451))

(assert (=> b!3211697 m!3481455))

(assert (=> b!3209856 d!880291))

(assert (=> b!3209856 d!879023))

(declare-fun d!880293 () Bool)

(assert (=> d!880293 (= (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 tokens!494))))) (v!35697 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 (h!41599 tokens!494))))))))

(assert (=> b!3209856 d!880293))

(assert (=> b!3209856 d!878967))

(declare-fun b!3211713 () Bool)

(declare-fun e!2002612 () List!36301)

(declare-fun call!232458 () List!36301)

(assert (=> b!3211713 (= e!2002612 call!232458)))

(declare-fun d!880295 () Bool)

(declare-fun c!539594 () Bool)

(assert (=> d!880295 (= c!539594 (or ((_ is EmptyExpr!9983) (ite c!539029 (reg!10312 (regex!5224 (rule!7664 separatorToken!241))) (ite c!539026 (regTwo!20479 (regex!5224 (rule!7664 separatorToken!241))) (regOne!20478 (regex!5224 (rule!7664 separatorToken!241)))))) ((_ is EmptyLang!9983) (ite c!539029 (reg!10312 (regex!5224 (rule!7664 separatorToken!241))) (ite c!539026 (regTwo!20479 (regex!5224 (rule!7664 separatorToken!241))) (regOne!20478 (regex!5224 (rule!7664 separatorToken!241))))))))))

(declare-fun e!2002615 () List!36301)

(assert (=> d!880295 (= (usedCharacters!540 (ite c!539029 (reg!10312 (regex!5224 (rule!7664 separatorToken!241))) (ite c!539026 (regTwo!20479 (regex!5224 (rule!7664 separatorToken!241))) (regOne!20478 (regex!5224 (rule!7664 separatorToken!241)))))) e!2002615)))

(declare-fun bm!232452 () Bool)

(declare-fun call!232460 () List!36301)

(declare-fun call!232457 () List!36301)

(assert (=> bm!232452 (= call!232460 call!232457)))

(declare-fun e!2002613 () List!36301)

(declare-fun b!3211714 () Bool)

(assert (=> b!3211714 (= e!2002613 (Cons!36177 (c!538930 (ite c!539029 (reg!10312 (regex!5224 (rule!7664 separatorToken!241))) (ite c!539026 (regTwo!20479 (regex!5224 (rule!7664 separatorToken!241))) (regOne!20478 (regex!5224 (rule!7664 separatorToken!241)))))) Nil!36177))))

(declare-fun c!539593 () Bool)

(declare-fun bm!232453 () Bool)

(declare-fun call!232459 () List!36301)

(assert (=> bm!232453 (= call!232458 (++!8680 (ite c!539593 call!232459 call!232460) (ite c!539593 call!232460 call!232459)))))

(declare-fun b!3211715 () Bool)

(assert (=> b!3211715 (= e!2002615 e!2002613)))

(declare-fun c!539595 () Bool)

(assert (=> b!3211715 (= c!539595 ((_ is ElementMatch!9983) (ite c!539029 (reg!10312 (regex!5224 (rule!7664 separatorToken!241))) (ite c!539026 (regTwo!20479 (regex!5224 (rule!7664 separatorToken!241))) (regOne!20478 (regex!5224 (rule!7664 separatorToken!241)))))))))

(declare-fun c!539596 () Bool)

(declare-fun b!3211716 () Bool)

(assert (=> b!3211716 (= c!539596 ((_ is Star!9983) (ite c!539029 (reg!10312 (regex!5224 (rule!7664 separatorToken!241))) (ite c!539026 (regTwo!20479 (regex!5224 (rule!7664 separatorToken!241))) (regOne!20478 (regex!5224 (rule!7664 separatorToken!241)))))))))

(declare-fun e!2002614 () List!36301)

(assert (=> b!3211716 (= e!2002613 e!2002614)))

(declare-fun b!3211717 () Bool)

(assert (=> b!3211717 (= e!2002614 e!2002612)))

(assert (=> b!3211717 (= c!539593 ((_ is Union!9983) (ite c!539029 (reg!10312 (regex!5224 (rule!7664 separatorToken!241))) (ite c!539026 (regTwo!20479 (regex!5224 (rule!7664 separatorToken!241))) (regOne!20478 (regex!5224 (rule!7664 separatorToken!241)))))))))

(declare-fun b!3211718 () Bool)

(assert (=> b!3211718 (= e!2002612 call!232458)))

(declare-fun bm!232454 () Bool)

(assert (=> bm!232454 (= call!232459 (usedCharacters!540 (ite c!539593 (regOne!20479 (ite c!539029 (reg!10312 (regex!5224 (rule!7664 separatorToken!241))) (ite c!539026 (regTwo!20479 (regex!5224 (rule!7664 separatorToken!241))) (regOne!20478 (regex!5224 (rule!7664 separatorToken!241)))))) (regTwo!20478 (ite c!539029 (reg!10312 (regex!5224 (rule!7664 separatorToken!241))) (ite c!539026 (regTwo!20479 (regex!5224 (rule!7664 separatorToken!241))) (regOne!20478 (regex!5224 (rule!7664 separatorToken!241)))))))))))

(declare-fun b!3211719 () Bool)

(assert (=> b!3211719 (= e!2002614 call!232457)))

(declare-fun b!3211720 () Bool)

(assert (=> b!3211720 (= e!2002615 Nil!36177)))

(declare-fun bm!232455 () Bool)

(assert (=> bm!232455 (= call!232457 (usedCharacters!540 (ite c!539596 (reg!10312 (ite c!539029 (reg!10312 (regex!5224 (rule!7664 separatorToken!241))) (ite c!539026 (regTwo!20479 (regex!5224 (rule!7664 separatorToken!241))) (regOne!20478 (regex!5224 (rule!7664 separatorToken!241)))))) (ite c!539593 (regTwo!20479 (ite c!539029 (reg!10312 (regex!5224 (rule!7664 separatorToken!241))) (ite c!539026 (regTwo!20479 (regex!5224 (rule!7664 separatorToken!241))) (regOne!20478 (regex!5224 (rule!7664 separatorToken!241)))))) (regOne!20478 (ite c!539029 (reg!10312 (regex!5224 (rule!7664 separatorToken!241))) (ite c!539026 (regTwo!20479 (regex!5224 (rule!7664 separatorToken!241))) (regOne!20478 (regex!5224 (rule!7664 separatorToken!241))))))))))))

(assert (= (and d!880295 c!539594) b!3211720))

(assert (= (and d!880295 (not c!539594)) b!3211715))

(assert (= (and b!3211715 c!539595) b!3211714))

(assert (= (and b!3211715 (not c!539595)) b!3211716))

(assert (= (and b!3211716 c!539596) b!3211719))

(assert (= (and b!3211716 (not c!539596)) b!3211717))

(assert (= (and b!3211717 c!539593) b!3211713))

(assert (= (and b!3211717 (not c!539593)) b!3211718))

(assert (= (or b!3211713 b!3211718) bm!232452))

(assert (= (or b!3211713 b!3211718) bm!232454))

(assert (= (or b!3211713 b!3211718) bm!232453))

(assert (= (or b!3211719 bm!232452) bm!232455))

(declare-fun m!3481467 () Bool)

(assert (=> bm!232453 m!3481467))

(declare-fun m!3481469 () Bool)

(assert (=> bm!232454 m!3481469))

(declare-fun m!3481471 () Bool)

(assert (=> bm!232455 m!3481471))

(assert (=> bm!232199 d!880295))

(declare-fun d!880297 () Bool)

(declare-fun lt!1086023 () Int)

(assert (=> d!880297 (>= lt!1086023 0)))

(declare-fun e!2002617 () Int)

(assert (=> d!880297 (= lt!1086023 e!2002617)))

(declare-fun c!539597 () Bool)

(assert (=> d!880297 (= c!539597 ((_ is Nil!36177) lt!1085049))))

(assert (=> d!880297 (= (size!27260 lt!1085049) lt!1086023)))

(declare-fun b!3211721 () Bool)

(assert (=> b!3211721 (= e!2002617 0)))

(declare-fun b!3211722 () Bool)

(assert (=> b!3211722 (= e!2002617 (+ 1 (size!27260 (t!238512 lt!1085049))))))

(assert (= (and d!880297 c!539597) b!3211721))

(assert (= (and d!880297 (not c!539597)) b!3211722))

(declare-fun m!3481473 () Bool)

(assert (=> b!3211722 m!3481473))

(assert (=> b!3209990 d!880297))

(assert (=> b!3209990 d!879029))

(declare-fun d!880299 () Bool)

(declare-fun lt!1086024 () Int)

(assert (=> d!880299 (>= lt!1086024 0)))

(declare-fun e!2002618 () Int)

(assert (=> d!880299 (= lt!1086024 e!2002618)))

(declare-fun c!539598 () Bool)

(assert (=> d!880299 (= c!539598 ((_ is Nil!36177) lt!1084686))))

(assert (=> d!880299 (= (size!27260 lt!1084686) lt!1086024)))

(declare-fun b!3211723 () Bool)

(assert (=> b!3211723 (= e!2002618 0)))

(declare-fun b!3211724 () Bool)

(assert (=> b!3211724 (= e!2002618 (+ 1 (size!27260 (t!238512 lt!1084686))))))

(assert (= (and d!880299 c!539598) b!3211723))

(assert (= (and d!880299 (not c!539598)) b!3211724))

(declare-fun m!3481479 () Bool)

(assert (=> b!3211724 m!3481479))

(assert (=> b!3209990 d!880299))

(declare-fun d!880301 () Bool)

(declare-fun res!1307391 () Bool)

(declare-fun e!2002619 () Bool)

(assert (=> d!880301 (=> (not res!1307391) (not e!2002619))))

(assert (=> d!880301 (= res!1307391 (not (isEmpty!20266 (originalCharacters!5938 (h!41599 (t!238514 tokens!494))))))))

(assert (=> d!880301 (= (inv!49036 (h!41599 (t!238514 tokens!494))) e!2002619)))

(declare-fun b!3211725 () Bool)

(declare-fun res!1307392 () Bool)

(assert (=> b!3211725 (=> (not res!1307392) (not e!2002619))))

(assert (=> b!3211725 (= res!1307392 (= (originalCharacters!5938 (h!41599 (t!238514 tokens!494))) (list!12865 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (value!169344 (h!41599 (t!238514 tokens!494)))))))))

(declare-fun b!3211726 () Bool)

(assert (=> b!3211726 (= e!2002619 (= (size!27259 (h!41599 (t!238514 tokens!494))) (size!27260 (originalCharacters!5938 (h!41599 (t!238514 tokens!494))))))))

(assert (= (and d!880301 res!1307391) b!3211725))

(assert (= (and b!3211725 res!1307392) b!3211726))

(declare-fun b_lambda!88019 () Bool)

(assert (=> (not b_lambda!88019) (not b!3211725)))

(assert (=> b!3211725 t!238606))

(declare-fun b_and!214043 () Bool)

(assert (= b_and!213991 (and (=> t!238606 result!200004) b_and!214043)))

(assert (=> b!3211725 t!238604))

(declare-fun b_and!214045 () Bool)

(assert (= b_and!213985 (and (=> t!238604 result!200002) b_and!214045)))

(assert (=> b!3211725 t!238614))

(declare-fun b_and!214047 () Bool)

(assert (= b_and!213989 (and (=> t!238614 result!200014) b_and!214047)))

(assert (=> b!3211725 t!238624))

(declare-fun b_and!214049 () Bool)

(assert (= b_and!213983 (and (=> t!238624 result!200030) b_and!214049)))

(assert (=> b!3211725 t!238608))

(declare-fun b_and!214051 () Bool)

(assert (= b_and!213987 (and (=> t!238608 result!200006) b_and!214051)))

(declare-fun m!3481485 () Bool)

(assert (=> d!880301 m!3481485))

(assert (=> b!3211725 m!3478425))

(assert (=> b!3211725 m!3478425))

(declare-fun m!3481487 () Bool)

(assert (=> b!3211725 m!3481487))

(declare-fun m!3481489 () Bool)

(assert (=> b!3211726 m!3481489))

(assert (=> b!3210116 d!880301))

(assert (=> b!3209867 d!879135))

(declare-fun d!880307 () Bool)

(declare-fun lt!1086025 () Int)

(assert (=> d!880307 (>= lt!1086025 0)))

(declare-fun e!2002620 () Int)

(assert (=> d!880307 (= lt!1086025 e!2002620)))

(declare-fun c!539599 () Bool)

(assert (=> d!880307 (= c!539599 ((_ is Nil!36177) (originalCharacters!5938 separatorToken!241)))))

(assert (=> d!880307 (= (size!27260 (originalCharacters!5938 separatorToken!241)) lt!1086025)))

(declare-fun b!3211727 () Bool)

(assert (=> b!3211727 (= e!2002620 0)))

(declare-fun b!3211728 () Bool)

(assert (=> b!3211728 (= e!2002620 (+ 1 (size!27260 (t!238512 (originalCharacters!5938 separatorToken!241)))))))

(assert (= (and d!880307 c!539599) b!3211727))

(assert (= (and d!880307 (not c!539599)) b!3211728))

(declare-fun m!3481493 () Bool)

(assert (=> b!3211728 m!3481493))

(assert (=> b!3209272 d!880307))

(declare-fun e!2002621 () List!36301)

(declare-fun b!3211729 () Bool)

(assert (=> b!3211729 (= e!2002621 (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241))))

(declare-fun lt!1086026 () List!36301)

(declare-fun b!3211732 () Bool)

(declare-fun e!2002622 () Bool)

(assert (=> b!3211732 (= e!2002622 (or (not (= (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241) Nil!36177)) (= lt!1086026 (t!238512 (++!8680 lt!1084664 lt!1084696)))))))

(declare-fun b!3211731 () Bool)

(declare-fun res!1307393 () Bool)

(assert (=> b!3211731 (=> (not res!1307393) (not e!2002622))))

(assert (=> b!3211731 (= res!1307393 (= (size!27260 lt!1086026) (+ (size!27260 (t!238512 (++!8680 lt!1084664 lt!1084696))) (size!27260 (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241)))))))

(declare-fun d!880313 () Bool)

(assert (=> d!880313 e!2002622))

(declare-fun res!1307394 () Bool)

(assert (=> d!880313 (=> (not res!1307394) (not e!2002622))))

(assert (=> d!880313 (= res!1307394 (= (content!4888 lt!1086026) ((_ map or) (content!4888 (t!238512 (++!8680 lt!1084664 lt!1084696))) (content!4888 (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241)))))))

(assert (=> d!880313 (= lt!1086026 e!2002621)))

(declare-fun c!539600 () Bool)

(assert (=> d!880313 (= c!539600 ((_ is Nil!36177) (t!238512 (++!8680 lt!1084664 lt!1084696))))))

(assert (=> d!880313 (= (++!8680 (t!238512 (++!8680 lt!1084664 lt!1084696)) (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241)) lt!1086026)))

(declare-fun b!3211730 () Bool)

(assert (=> b!3211730 (= e!2002621 (Cons!36177 (h!41597 (t!238512 (++!8680 lt!1084664 lt!1084696))) (++!8680 (t!238512 (t!238512 (++!8680 lt!1084664 lt!1084696))) (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241))))))

(assert (= (and d!880313 c!539600) b!3211729))

(assert (= (and d!880313 (not c!539600)) b!3211730))

(assert (= (and d!880313 res!1307394) b!3211731))

(assert (= (and b!3211731 res!1307393) b!3211732))

(declare-fun m!3481495 () Bool)

(assert (=> b!3211731 m!3481495))

(declare-fun m!3481497 () Bool)

(assert (=> b!3211731 m!3481497))

(assert (=> b!3211731 m!3476699))

(assert (=> b!3211731 m!3478383))

(declare-fun m!3481499 () Bool)

(assert (=> d!880313 m!3481499))

(declare-fun m!3481501 () Bool)

(assert (=> d!880313 m!3481501))

(assert (=> d!880313 m!3476699))

(assert (=> d!880313 m!3478389))

(assert (=> b!3211730 m!3476699))

(declare-fun m!3481503 () Bool)

(assert (=> b!3211730 m!3481503))

(assert (=> b!3210061 d!880313))

(assert (=> d!879261 d!879389))

(declare-fun b!3211733 () Bool)

(declare-fun e!2002628 () Bool)

(declare-fun call!232462 () Bool)

(assert (=> b!3211733 (= e!2002628 call!232462)))

(declare-fun b!3211734 () Bool)

(declare-fun e!2002629 () Bool)

(declare-fun e!2002627 () Bool)

(assert (=> b!3211734 (= e!2002629 e!2002627)))

(declare-fun res!1307399 () Bool)

(assert (=> b!3211734 (= res!1307399 (not (nullable!3398 (reg!10312 (regex!5224 lt!1084665)))))))

(assert (=> b!3211734 (=> (not res!1307399) (not e!2002627))))

(declare-fun b!3211735 () Bool)

(declare-fun e!2002626 () Bool)

(assert (=> b!3211735 (= e!2002629 e!2002626)))

(declare-fun c!539601 () Bool)

(assert (=> b!3211735 (= c!539601 ((_ is Union!9983) (regex!5224 lt!1084665)))))

(declare-fun b!3211736 () Bool)

(declare-fun call!232461 () Bool)

(assert (=> b!3211736 (= e!2002627 call!232461)))

(declare-fun d!880315 () Bool)

(declare-fun res!1307396 () Bool)

(declare-fun e!2002623 () Bool)

(assert (=> d!880315 (=> res!1307396 e!2002623)))

(assert (=> d!880315 (= res!1307396 ((_ is ElementMatch!9983) (regex!5224 lt!1084665)))))

(assert (=> d!880315 (= (validRegex!4552 (regex!5224 lt!1084665)) e!2002623)))

(declare-fun bm!232456 () Bool)

(declare-fun c!539602 () Bool)

(assert (=> bm!232456 (= call!232461 (validRegex!4552 (ite c!539602 (reg!10312 (regex!5224 lt!1084665)) (ite c!539601 (regOne!20479 (regex!5224 lt!1084665)) (regOne!20478 (regex!5224 lt!1084665))))))))

(declare-fun bm!232457 () Bool)

(assert (=> bm!232457 (= call!232462 (validRegex!4552 (ite c!539601 (regTwo!20479 (regex!5224 lt!1084665)) (regTwo!20478 (regex!5224 lt!1084665)))))))

(declare-fun b!3211737 () Bool)

(declare-fun res!1307397 () Bool)

(declare-fun e!2002625 () Bool)

(assert (=> b!3211737 (=> res!1307397 e!2002625)))

(assert (=> b!3211737 (= res!1307397 (not ((_ is Concat!15437) (regex!5224 lt!1084665))))))

(assert (=> b!3211737 (= e!2002626 e!2002625)))

(declare-fun bm!232458 () Bool)

(declare-fun call!232463 () Bool)

(assert (=> bm!232458 (= call!232463 call!232461)))

(declare-fun b!3211738 () Bool)

(declare-fun res!1307398 () Bool)

(assert (=> b!3211738 (=> (not res!1307398) (not e!2002628))))

(assert (=> b!3211738 (= res!1307398 call!232463)))

(assert (=> b!3211738 (= e!2002626 e!2002628)))

(declare-fun b!3211739 () Bool)

(declare-fun e!2002624 () Bool)

(assert (=> b!3211739 (= e!2002625 e!2002624)))

(declare-fun res!1307395 () Bool)

(assert (=> b!3211739 (=> (not res!1307395) (not e!2002624))))

(assert (=> b!3211739 (= res!1307395 call!232463)))

(declare-fun b!3211740 () Bool)

(assert (=> b!3211740 (= e!2002623 e!2002629)))

(assert (=> b!3211740 (= c!539602 ((_ is Star!9983) (regex!5224 lt!1084665)))))

(declare-fun b!3211741 () Bool)

(assert (=> b!3211741 (= e!2002624 call!232462)))

(assert (= (and d!880315 (not res!1307396)) b!3211740))

(assert (= (and b!3211740 c!539602) b!3211734))

(assert (= (and b!3211740 (not c!539602)) b!3211735))

(assert (= (and b!3211734 res!1307399) b!3211736))

(assert (= (and b!3211735 c!539601) b!3211738))

(assert (= (and b!3211735 (not c!539601)) b!3211737))

(assert (= (and b!3211738 res!1307398) b!3211733))

(assert (= (and b!3211737 (not res!1307397)) b!3211739))

(assert (= (and b!3211739 res!1307395) b!3211741))

(assert (= (or b!3211733 b!3211741) bm!232457))

(assert (= (or b!3211738 b!3211739) bm!232458))

(assert (= (or b!3211736 bm!232458) bm!232456))

(declare-fun m!3481505 () Bool)

(assert (=> b!3211734 m!3481505))

(declare-fun m!3481507 () Bool)

(assert (=> bm!232456 m!3481507))

(declare-fun m!3481509 () Bool)

(assert (=> bm!232457 m!3481509))

(assert (=> d!879261 d!880315))

(declare-fun b!3211746 () Bool)

(declare-fun e!2002634 () List!36301)

(declare-fun call!232465 () List!36301)

(assert (=> b!3211746 (= e!2002634 call!232465)))

(declare-fun d!880317 () Bool)

(declare-fun c!539604 () Bool)

(assert (=> d!880317 (= c!539604 (or ((_ is EmptyExpr!9983) (ite c!539068 (regOne!20479 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) ((_ is EmptyLang!9983) (ite c!539068 (regOne!20479 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))))))))

(declare-fun e!2002637 () List!36301)

(assert (=> d!880317 (= (usedCharacters!540 (ite c!539068 (regOne!20479 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) e!2002637)))

(declare-fun bm!232459 () Bool)

(declare-fun call!232467 () List!36301)

(declare-fun call!232464 () List!36301)

(assert (=> bm!232459 (= call!232467 call!232464)))

(declare-fun b!3211747 () Bool)

(declare-fun e!2002635 () List!36301)

(assert (=> b!3211747 (= e!2002635 (Cons!36177 (c!538930 (ite c!539068 (regOne!20479 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) Nil!36177))))

(declare-fun call!232466 () List!36301)

(declare-fun c!539603 () Bool)

(declare-fun bm!232460 () Bool)

(assert (=> bm!232460 (= call!232465 (++!8680 (ite c!539603 call!232466 call!232467) (ite c!539603 call!232467 call!232466)))))

(declare-fun b!3211748 () Bool)

(assert (=> b!3211748 (= e!2002637 e!2002635)))

(declare-fun c!539605 () Bool)

(assert (=> b!3211748 (= c!539605 ((_ is ElementMatch!9983) (ite c!539068 (regOne!20479 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))))))

(declare-fun b!3211749 () Bool)

(declare-fun c!539606 () Bool)

(assert (=> b!3211749 (= c!539606 ((_ is Star!9983) (ite c!539068 (regOne!20479 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))))))

(declare-fun e!2002636 () List!36301)

(assert (=> b!3211749 (= e!2002635 e!2002636)))

(declare-fun b!3211750 () Bool)

(assert (=> b!3211750 (= e!2002636 e!2002634)))

(assert (=> b!3211750 (= c!539603 ((_ is Union!9983) (ite c!539068 (regOne!20479 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))))))

(declare-fun b!3211751 () Bool)

(assert (=> b!3211751 (= e!2002634 call!232465)))

(declare-fun bm!232461 () Bool)

(assert (=> bm!232461 (= call!232466 (usedCharacters!540 (ite c!539603 (regOne!20479 (ite c!539068 (regOne!20479 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (regTwo!20478 (ite c!539068 (regOne!20479 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))))))))

(declare-fun b!3211752 () Bool)

(assert (=> b!3211752 (= e!2002636 call!232464)))

(declare-fun b!3211753 () Bool)

(assert (=> b!3211753 (= e!2002637 Nil!36177)))

(declare-fun bm!232462 () Bool)

(assert (=> bm!232462 (= call!232464 (usedCharacters!540 (ite c!539606 (reg!10312 (ite c!539068 (regOne!20479 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (ite c!539603 (regTwo!20479 (ite c!539068 (regOne!20479 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (regOne!20478 (ite c!539068 (regOne!20479 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))))))))))

(assert (= (and d!880317 c!539604) b!3211753))

(assert (= (and d!880317 (not c!539604)) b!3211748))

(assert (= (and b!3211748 c!539605) b!3211747))

(assert (= (and b!3211748 (not c!539605)) b!3211749))

(assert (= (and b!3211749 c!539606) b!3211752))

(assert (= (and b!3211749 (not c!539606)) b!3211750))

(assert (= (and b!3211750 c!539603) b!3211746))

(assert (= (and b!3211750 (not c!539603)) b!3211751))

(assert (= (or b!3211746 b!3211751) bm!232459))

(assert (= (or b!3211746 b!3211751) bm!232461))

(assert (= (or b!3211746 b!3211751) bm!232460))

(assert (= (or b!3211752 bm!232459) bm!232462))

(declare-fun m!3481511 () Bool)

(assert (=> bm!232460 m!3481511))

(declare-fun m!3481513 () Bool)

(assert (=> bm!232461 m!3481513))

(declare-fun m!3481515 () Bool)

(assert (=> bm!232462 m!3481515))

(assert (=> bm!232225 d!880317))

(assert (=> d!879179 d!879193))

(assert (=> d!879179 d!879105))

(declare-fun d!880319 () Bool)

(assert (=> d!880319 (not (contains!6461 (usedCharacters!540 (regex!5224 (rule!7664 (h!41599 tokens!494)))) lt!1084676))))

(assert (=> d!880319 true))

(declare-fun _$73!172 () Unit!50642)

(assert (=> d!880319 (= (choose!18732 thiss!18206 rules!2135 rules!2135 (rule!7664 (h!41599 tokens!494)) (rule!7664 separatorToken!241) lt!1084676) _$73!172)))

(declare-fun bs!541784 () Bool)

(assert (= bs!541784 d!880319))

(assert (=> bs!541784 m!3476795))

(assert (=> bs!541784 m!3476795))

(assert (=> bs!541784 m!3476797))

(assert (=> d!879179 d!880319))

(assert (=> d!879179 d!879257))

(assert (=> b!3210035 d!880019))

(declare-fun d!880331 () Bool)

(assert (=> d!880331 (= (inv!15 (value!169344 (h!41599 tokens!494))) (= (charsToBigInt!0 (text!38627 (value!169344 (h!41599 tokens!494))) 0) (value!169339 (value!169344 (h!41599 tokens!494)))))))

(declare-fun bs!541785 () Bool)

(assert (= bs!541785 d!880331))

(declare-fun m!3481527 () Bool)

(assert (=> bs!541785 m!3481527))

(assert (=> b!3209343 d!880331))

(declare-fun d!880333 () Bool)

(declare-fun lt!1086027 () Bool)

(assert (=> d!880333 (= lt!1086027 (isEmpty!20274 (list!12869 (_1!20922 lt!1084813))))))

(assert (=> d!880333 (= lt!1086027 (isEmpty!20275 (c!538932 (_1!20922 lt!1084813))))))

(assert (=> d!880333 (= (isEmpty!20261 (_1!20922 lt!1084813)) lt!1086027)))

(declare-fun bs!541786 () Bool)

(assert (= bs!541786 d!880333))

(assert (=> bs!541786 m!3477243))

(assert (=> bs!541786 m!3477243))

(declare-fun m!3481529 () Bool)

(assert (=> bs!541786 m!3481529))

(declare-fun m!3481531 () Bool)

(assert (=> bs!541786 m!3481531))

(assert (=> b!3209461 d!880333))

(declare-fun d!880335 () Bool)

(assert (=> d!880335 (= (isEmpty!20274 (list!12869 (_1!20922 (lex!2143 thiss!18206 rules!2135 lt!1084685)))) ((_ is Nil!36179) (list!12869 (_1!20922 (lex!2143 thiss!18206 rules!2135 lt!1084685)))))))

(assert (=> d!879275 d!880335))

(declare-fun d!880337 () Bool)

(assert (=> d!880337 (= (list!12869 (_1!20922 (lex!2143 thiss!18206 rules!2135 lt!1084685))) (list!12871 (c!538932 (_1!20922 (lex!2143 thiss!18206 rules!2135 lt!1084685)))))))

(declare-fun bs!541787 () Bool)

(assert (= bs!541787 d!880337))

(declare-fun m!3481533 () Bool)

(assert (=> bs!541787 m!3481533))

(assert (=> d!879275 d!880337))

(declare-fun d!880339 () Bool)

(declare-fun lt!1086032 () Bool)

(assert (=> d!880339 (= lt!1086032 (isEmpty!20274 (list!12871 (c!538932 (_1!20922 (lex!2143 thiss!18206 rules!2135 lt!1084685))))))))

(assert (=> d!880339 (= lt!1086032 (= (size!27265 (c!538932 (_1!20922 (lex!2143 thiss!18206 rules!2135 lt!1084685)))) 0))))

(assert (=> d!880339 (= (isEmpty!20275 (c!538932 (_1!20922 (lex!2143 thiss!18206 rules!2135 lt!1084685)))) lt!1086032)))

(declare-fun bs!541788 () Bool)

(assert (= bs!541788 d!880339))

(assert (=> bs!541788 m!3481533))

(assert (=> bs!541788 m!3481533))

(declare-fun m!3481535 () Bool)

(assert (=> bs!541788 m!3481535))

(declare-fun m!3481537 () Bool)

(assert (=> bs!541788 m!3481537))

(assert (=> d!879275 d!880339))

(declare-fun d!880341 () Bool)

(assert (=> d!880341 (= (isEmpty!20270 lt!1084688) (not ((_ is Some!7147) lt!1084688)))))

(assert (=> d!879119 d!880341))

(declare-fun d!880343 () Bool)

(declare-fun c!539612 () Bool)

(assert (=> d!880343 (= c!539612 ((_ is Empty!10823) (c!538931 (charsOf!3240 (h!41599 tokens!494)))))))

(declare-fun e!2002655 () List!36301)

(assert (=> d!880343 (= (list!12868 (c!538931 (charsOf!3240 (h!41599 tokens!494)))) e!2002655)))

(declare-fun b!3211780 () Bool)

(declare-fun e!2002656 () List!36301)

(declare-fun list!12872 (IArray!21651) List!36301)

(assert (=> b!3211780 (= e!2002656 (list!12872 (xs!13941 (c!538931 (charsOf!3240 (h!41599 tokens!494))))))))

(declare-fun b!3211779 () Bool)

(assert (=> b!3211779 (= e!2002655 e!2002656)))

(declare-fun c!539613 () Bool)

(assert (=> b!3211779 (= c!539613 ((_ is Leaf!17046) (c!538931 (charsOf!3240 (h!41599 tokens!494)))))))

(declare-fun b!3211778 () Bool)

(assert (=> b!3211778 (= e!2002655 Nil!36177)))

(declare-fun b!3211781 () Bool)

(assert (=> b!3211781 (= e!2002656 (++!8680 (list!12868 (left!28133 (c!538931 (charsOf!3240 (h!41599 tokens!494))))) (list!12868 (right!28463 (c!538931 (charsOf!3240 (h!41599 tokens!494)))))))))

(assert (= (and d!880343 c!539612) b!3211778))

(assert (= (and d!880343 (not c!539612)) b!3211779))

(assert (= (and b!3211779 c!539613) b!3211780))

(assert (= (and b!3211779 (not c!539613)) b!3211781))

(declare-fun m!3481547 () Bool)

(assert (=> b!3211780 m!3481547))

(declare-fun m!3481549 () Bool)

(assert (=> b!3211781 m!3481549))

(declare-fun m!3481551 () Bool)

(assert (=> b!3211781 m!3481551))

(assert (=> b!3211781 m!3481549))

(assert (=> b!3211781 m!3481551))

(declare-fun m!3481553 () Bool)

(assert (=> b!3211781 m!3481553))

(assert (=> d!878967 d!880343))

(declare-fun d!880349 () Bool)

(declare-fun res!1307428 () Bool)

(declare-fun e!2002665 () Bool)

(assert (=> d!880349 (=> res!1307428 e!2002665)))

(assert (=> d!880349 (= res!1307428 ((_ is Nil!36178) rules!2135))))

(assert (=> d!880349 (= (noDuplicateTag!1911 thiss!18206 rules!2135 Nil!36181) e!2002665)))

(declare-fun b!3211790 () Bool)

(declare-fun e!2002666 () Bool)

(assert (=> b!3211790 (= e!2002665 e!2002666)))

(declare-fun res!1307429 () Bool)

(assert (=> b!3211790 (=> (not res!1307429) (not e!2002666))))

(declare-fun contains!6466 (List!36305 String!40604) Bool)

(assert (=> b!3211790 (= res!1307429 (not (contains!6466 Nil!36181 (tag!5750 (h!41598 rules!2135)))))))

(declare-fun b!3211791 () Bool)

(assert (=> b!3211791 (= e!2002666 (noDuplicateTag!1911 thiss!18206 (t!238513 rules!2135) (Cons!36181 (tag!5750 (h!41598 rules!2135)) Nil!36181)))))

(assert (= (and d!880349 (not res!1307428)) b!3211790))

(assert (= (and b!3211790 res!1307429) b!3211791))

(declare-fun m!3481555 () Bool)

(assert (=> b!3211790 m!3481555))

(declare-fun m!3481557 () Bool)

(assert (=> b!3211791 m!3481557))

(assert (=> b!3210004 d!880349))

(declare-fun d!880351 () Bool)

(assert (=> d!880351 (= (isEmpty!20271 lt!1084957) (not ((_ is Some!7146) lt!1084957)))))

(assert (=> d!879159 d!880351))

(declare-fun d!880353 () Bool)

(assert (=> d!880353 (= (isEmpty!20266 (_1!20925 lt!1084954)) ((_ is Nil!36177) (_1!20925 lt!1084954)))))

(assert (=> d!879159 d!880353))

(declare-fun d!880355 () Bool)

(declare-fun lt!1086042 () tuple2!35582)

(assert (=> d!880355 (= (++!8680 (_1!20925 lt!1086042) (_2!20925 lt!1086042)) lt!1084683)))

(assert (=> d!880355 (= lt!1086042 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 tokens!494))) Nil!36177 0 lt!1084683 lt!1084683 (sizeTr!161 lt!1084683 0)))))

(declare-fun lt!1086046 () Unit!50642)

(declare-fun lt!1086044 () Unit!50642)

(assert (=> d!880355 (= lt!1086046 lt!1086044)))

(declare-fun lt!1086047 () List!36301)

(declare-fun lt!1086045 () Int)

(assert (=> d!880355 (= (sizeTr!161 lt!1086047 lt!1086045) (+ (size!27260 lt!1086047) lt!1086045))))

(assert (=> d!880355 (= lt!1086044 (lemmaSizeTrEqualsSize!160 lt!1086047 lt!1086045))))

(assert (=> d!880355 (= lt!1086045 0)))

(assert (=> d!880355 (= lt!1086047 Nil!36177)))

(declare-fun lt!1086043 () Unit!50642)

(declare-fun lt!1086041 () Unit!50642)

(assert (=> d!880355 (= lt!1086043 lt!1086041)))

(declare-fun lt!1086040 () Int)

(assert (=> d!880355 (= (sizeTr!161 lt!1084683 lt!1086040) (+ (size!27260 lt!1084683) lt!1086040))))

(assert (=> d!880355 (= lt!1086041 (lemmaSizeTrEqualsSize!160 lt!1084683 lt!1086040))))

(assert (=> d!880355 (= lt!1086040 0)))

(assert (=> d!880355 (validRegex!4552 (regex!5224 (rule!7664 (h!41599 tokens!494))))))

(assert (=> d!880355 (= (findLongestMatch!745 (regex!5224 (rule!7664 (h!41599 tokens!494))) lt!1084683) lt!1086042)))

(declare-fun bs!541791 () Bool)

(assert (= bs!541791 d!880355))

(declare-fun m!3481561 () Bool)

(assert (=> bs!541791 m!3481561))

(declare-fun m!3481563 () Bool)

(assert (=> bs!541791 m!3481563))

(assert (=> bs!541791 m!3476779))

(declare-fun m!3481565 () Bool)

(assert (=> bs!541791 m!3481565))

(declare-fun m!3481567 () Bool)

(assert (=> bs!541791 m!3481567))

(assert (=> bs!541791 m!3478575))

(assert (=> bs!541791 m!3481565))

(declare-fun m!3481569 () Bool)

(assert (=> bs!541791 m!3481569))

(declare-fun m!3481571 () Bool)

(assert (=> bs!541791 m!3481571))

(declare-fun m!3481573 () Bool)

(assert (=> bs!541791 m!3481573))

(declare-fun m!3481575 () Bool)

(assert (=> bs!541791 m!3481575))

(assert (=> d!879159 d!880355))

(declare-fun d!880361 () Bool)

(declare-fun res!1307432 () Bool)

(declare-fun e!2002669 () Bool)

(assert (=> d!880361 (=> (not res!1307432) (not e!2002669))))

(assert (=> d!880361 (= res!1307432 (validRegex!4552 (regex!5224 (rule!7664 (h!41599 tokens!494)))))))

(assert (=> d!880361 (= (ruleValid!1647 thiss!18206 (rule!7664 (h!41599 tokens!494))) e!2002669)))

(declare-fun b!3211794 () Bool)

(declare-fun res!1307433 () Bool)

(assert (=> b!3211794 (=> (not res!1307433) (not e!2002669))))

(assert (=> b!3211794 (= res!1307433 (not (nullable!3398 (regex!5224 (rule!7664 (h!41599 tokens!494))))))))

(declare-fun b!3211795 () Bool)

(assert (=> b!3211795 (= e!2002669 (not (= (tag!5750 (rule!7664 (h!41599 tokens!494))) (String!40605 ""))))))

(assert (= (and d!880361 res!1307432) b!3211794))

(assert (= (and b!3211794 res!1307433) b!3211795))

(assert (=> d!880361 m!3478575))

(assert (=> b!3211794 m!3478561))

(assert (=> d!879159 d!880361))

(declare-fun d!880365 () Bool)

(declare-fun lt!1086056 () Int)

(assert (=> d!880365 (>= lt!1086056 0)))

(declare-fun e!2002670 () Int)

(assert (=> d!880365 (= lt!1086056 e!2002670)))

(declare-fun c!539614 () Bool)

(assert (=> d!880365 (= c!539614 ((_ is Nil!36177) (t!238512 lt!1084664)))))

(assert (=> d!880365 (= (size!27260 (t!238512 lt!1084664)) lt!1086056)))

(declare-fun b!3211796 () Bool)

(assert (=> b!3211796 (= e!2002670 0)))

(declare-fun b!3211797 () Bool)

(assert (=> b!3211797 (= e!2002670 (+ 1 (size!27260 (t!238512 (t!238512 lt!1084664)))))))

(assert (= (and d!880365 c!539614) b!3211796))

(assert (= (and d!880365 (not c!539614)) b!3211797))

(declare-fun m!3481581 () Bool)

(assert (=> b!3211797 m!3481581))

(assert (=> b!3209825 d!880365))

(declare-fun d!880367 () Bool)

(assert (=> d!880367 (= (isEmpty!20270 lt!1084936) (not ((_ is Some!7147) lt!1084936)))))

(assert (=> d!879145 d!880367))

(assert (=> d!879145 d!879257))

(declare-fun d!880369 () Bool)

(declare-fun res!1307434 () Bool)

(declare-fun e!2002671 () Bool)

(assert (=> d!880369 (=> (not res!1307434) (not e!2002671))))

(assert (=> d!880369 (= res!1307434 (rulesValid!1915 thiss!18206 (t!238513 rules!2135)))))

(assert (=> d!880369 (= (rulesInvariant!4210 thiss!18206 (t!238513 rules!2135)) e!2002671)))

(declare-fun b!3211798 () Bool)

(assert (=> b!3211798 (= e!2002671 (noDuplicateTag!1911 thiss!18206 (t!238513 rules!2135) Nil!36181))))

(assert (= (and d!880369 res!1307434) b!3211798))

(declare-fun m!3481595 () Bool)

(assert (=> d!880369 m!3481595))

(declare-fun m!3481597 () Bool)

(assert (=> b!3211798 m!3481597))

(assert (=> b!3209759 d!880369))

(declare-fun d!880373 () Bool)

(assert (=> d!880373 (rulesInvariant!4210 thiss!18206 (t!238513 rules!2135))))

(declare-fun lt!1086064 () Unit!50642)

(declare-fun choose!18749 (LexerInterface!4813 Rule!10248 List!36302) Unit!50642)

(assert (=> d!880373 (= lt!1086064 (choose!18749 thiss!18206 (h!41598 rules!2135) (t!238513 rules!2135)))))

(assert (=> d!880373 (rulesInvariant!4210 thiss!18206 (Cons!36178 (h!41598 rules!2135) (t!238513 rules!2135)))))

(assert (=> d!880373 (= (lemmaInvariantOnRulesThenOnTail!349 thiss!18206 (h!41598 rules!2135) (t!238513 rules!2135)) lt!1086064)))

(declare-fun bs!541793 () Bool)

(assert (= bs!541793 d!880373))

(assert (=> bs!541793 m!3477267))

(declare-fun m!3481619 () Bool)

(assert (=> bs!541793 m!3481619))

(declare-fun m!3481621 () Bool)

(assert (=> bs!541793 m!3481621))

(assert (=> b!3209759 d!880373))

(declare-fun d!880387 () Bool)

(declare-fun e!2002684 () Bool)

(assert (=> d!880387 e!2002684))

(declare-fun res!1307438 () Bool)

(assert (=> d!880387 (=> res!1307438 e!2002684)))

(declare-fun lt!1086067 () Option!7148)

(assert (=> d!880387 (= res!1307438 (isEmpty!20270 lt!1086067))))

(declare-fun e!2002687 () Option!7148)

(assert (=> d!880387 (= lt!1086067 e!2002687)))

(declare-fun c!539625 () Bool)

(assert (=> d!880387 (= c!539625 (and ((_ is Cons!36178) (t!238513 rules!2135)) (= (tag!5750 (h!41598 (t!238513 rules!2135))) (tag!5750 (rule!7664 separatorToken!241)))))))

(assert (=> d!880387 (rulesInvariant!4210 thiss!18206 (t!238513 rules!2135))))

(assert (=> d!880387 (= (getRuleFromTag!929 thiss!18206 (t!238513 rules!2135) (tag!5750 (rule!7664 separatorToken!241))) lt!1086067)))

(declare-fun b!3211821 () Bool)

(declare-fun e!2002686 () Bool)

(assert (=> b!3211821 (= e!2002686 (= (tag!5750 (get!11519 lt!1086067)) (tag!5750 (rule!7664 separatorToken!241))))))

(declare-fun b!3211822 () Bool)

(declare-fun e!2002685 () Option!7148)

(assert (=> b!3211822 (= e!2002685 None!7147)))

(declare-fun b!3211823 () Bool)

(assert (=> b!3211823 (= e!2002687 e!2002685)))

(declare-fun c!539624 () Bool)

(assert (=> b!3211823 (= c!539624 (and ((_ is Cons!36178) (t!238513 rules!2135)) (not (= (tag!5750 (h!41598 (t!238513 rules!2135))) (tag!5750 (rule!7664 separatorToken!241))))))))

(declare-fun b!3211824 () Bool)

(assert (=> b!3211824 (= e!2002684 e!2002686)))

(declare-fun res!1307439 () Bool)

(assert (=> b!3211824 (=> (not res!1307439) (not e!2002686))))

(assert (=> b!3211824 (= res!1307439 (contains!6462 (t!238513 rules!2135) (get!11519 lt!1086067)))))

(declare-fun b!3211825 () Bool)

(assert (=> b!3211825 (= e!2002687 (Some!7147 (h!41598 (t!238513 rules!2135))))))

(declare-fun b!3211826 () Bool)

(declare-fun lt!1086066 () Unit!50642)

(declare-fun lt!1086065 () Unit!50642)

(assert (=> b!3211826 (= lt!1086066 lt!1086065)))

(assert (=> b!3211826 (rulesInvariant!4210 thiss!18206 (t!238513 (t!238513 rules!2135)))))

(assert (=> b!3211826 (= lt!1086065 (lemmaInvariantOnRulesThenOnTail!349 thiss!18206 (h!41598 (t!238513 rules!2135)) (t!238513 (t!238513 rules!2135))))))

(assert (=> b!3211826 (= e!2002685 (getRuleFromTag!929 thiss!18206 (t!238513 (t!238513 rules!2135)) (tag!5750 (rule!7664 separatorToken!241))))))

(assert (= (and d!880387 c!539625) b!3211825))

(assert (= (and d!880387 (not c!539625)) b!3211823))

(assert (= (and b!3211823 c!539624) b!3211826))

(assert (= (and b!3211823 (not c!539624)) b!3211822))

(assert (= (and d!880387 (not res!1307438)) b!3211824))

(assert (= (and b!3211824 res!1307439) b!3211821))

(declare-fun m!3481637 () Bool)

(assert (=> d!880387 m!3481637))

(assert (=> d!880387 m!3477267))

(declare-fun m!3481639 () Bool)

(assert (=> b!3211821 m!3481639))

(assert (=> b!3211824 m!3481639))

(assert (=> b!3211824 m!3481639))

(declare-fun m!3481641 () Bool)

(assert (=> b!3211824 m!3481641))

(declare-fun m!3481643 () Bool)

(assert (=> b!3211826 m!3481643))

(declare-fun m!3481645 () Bool)

(assert (=> b!3211826 m!3481645))

(declare-fun m!3481647 () Bool)

(assert (=> b!3211826 m!3481647))

(assert (=> b!3209759 d!880387))

(declare-fun d!880395 () Bool)

(declare-fun lt!1086076 () Int)

(assert (=> d!880395 (= lt!1086076 (size!27260 (list!12865 (_2!20922 lt!1085063))))))

(assert (=> d!880395 (= lt!1086076 (size!27268 (c!538931 (_2!20922 lt!1085063))))))

(assert (=> d!880395 (= (size!27263 (_2!20922 lt!1085063)) lt!1086076)))

(declare-fun bs!541794 () Bool)

(assert (= bs!541794 d!880395))

(assert (=> bs!541794 m!3478339))

(assert (=> bs!541794 m!3478339))

(declare-fun m!3481649 () Bool)

(assert (=> bs!541794 m!3481649))

(declare-fun m!3481651 () Bool)

(assert (=> bs!541794 m!3481651))

(assert (=> b!3210043 d!880395))

(declare-fun d!880397 () Bool)

(declare-fun lt!1086077 () Int)

(assert (=> d!880397 (= lt!1086077 (size!27260 (list!12865 lt!1084685)))))

(assert (=> d!880397 (= lt!1086077 (size!27268 (c!538931 lt!1084685)))))

(assert (=> d!880397 (= (size!27263 lt!1084685) lt!1086077)))

(declare-fun bs!541795 () Bool)

(assert (= bs!541795 d!880397))

(assert (=> bs!541795 m!3478335))

(assert (=> bs!541795 m!3478335))

(assert (=> bs!541795 m!3479449))

(declare-fun m!3481653 () Bool)

(assert (=> bs!541795 m!3481653))

(assert (=> b!3210043 d!880397))

(declare-fun d!880399 () Bool)

(assert (=> d!880399 (= (list!12869 (_1!20922 lt!1084839)) (list!12871 (c!538932 (_1!20922 lt!1084839))))))

(declare-fun bs!541796 () Bool)

(assert (= bs!541796 d!880399))

(declare-fun m!3481657 () Bool)

(assert (=> bs!541796 m!3481657))

(assert (=> b!3209544 d!880399))

(assert (=> b!3209544 d!879881))

(assert (=> b!3209544 d!879883))

(declare-fun d!880401 () Bool)

(assert (=> d!880401 (= (isEmpty!20266 (originalCharacters!5938 separatorToken!241)) ((_ is Nil!36177) (originalCharacters!5938 separatorToken!241)))))

(assert (=> d!878937 d!880401))

(assert (=> b!3209792 d!879387))

(declare-fun d!880403 () Bool)

(declare-fun lt!1086078 () Int)

(assert (=> d!880403 (>= lt!1086078 0)))

(declare-fun e!2002691 () Int)

(assert (=> d!880403 (= lt!1086078 e!2002691)))

(declare-fun c!539627 () Bool)

(assert (=> d!880403 (= c!539627 ((_ is Nil!36177) (originalCharacters!5938 (_1!20921 (get!11520 lt!1084957)))))))

(assert (=> d!880403 (= (size!27260 (originalCharacters!5938 (_1!20921 (get!11520 lt!1084957)))) lt!1086078)))

(declare-fun b!3211831 () Bool)

(assert (=> b!3211831 (= e!2002691 0)))

(declare-fun b!3211832 () Bool)

(assert (=> b!3211832 (= e!2002691 (+ 1 (size!27260 (t!238512 (originalCharacters!5938 (_1!20921 (get!11520 lt!1084957)))))))))

(assert (= (and d!880403 c!539627) b!3211831))

(assert (= (and d!880403 (not c!539627)) b!3211832))

(declare-fun m!3481679 () Bool)

(assert (=> b!3211832 m!3481679))

(assert (=> b!3209792 d!880403))

(declare-fun d!880405 () Bool)

(declare-fun c!539628 () Bool)

(assert (=> d!880405 (= c!539628 ((_ is Nil!36177) lt!1085067))))

(declare-fun e!2002692 () (InoxSet C!20152))

(assert (=> d!880405 (= (content!4888 lt!1085067) e!2002692)))

(declare-fun b!3211833 () Bool)

(assert (=> b!3211833 (= e!2002692 ((as const (Array C!20152 Bool)) false))))

(declare-fun b!3211834 () Bool)

(assert (=> b!3211834 (= e!2002692 ((_ map or) (store ((as const (Array C!20152 Bool)) false) (h!41597 lt!1085067) true) (content!4888 (t!238512 lt!1085067))))))

(assert (= (and d!880405 c!539628) b!3211833))

(assert (= (and d!880405 (not c!539628)) b!3211834))

(declare-fun m!3481691 () Bool)

(assert (=> b!3211834 m!3481691))

(declare-fun m!3481693 () Bool)

(assert (=> b!3211834 m!3481693))

(assert (=> d!879291 d!880405))

(declare-fun d!880409 () Bool)

(declare-fun c!539629 () Bool)

(assert (=> d!880409 (= c!539629 ((_ is Nil!36177) (++!8680 lt!1084664 lt!1084696)))))

(declare-fun e!2002693 () (InoxSet C!20152))

(assert (=> d!880409 (= (content!4888 (++!8680 lt!1084664 lt!1084696)) e!2002693)))

(declare-fun b!3211835 () Bool)

(assert (=> b!3211835 (= e!2002693 ((as const (Array C!20152 Bool)) false))))

(declare-fun b!3211836 () Bool)

(assert (=> b!3211836 (= e!2002693 ((_ map or) (store ((as const (Array C!20152 Bool)) false) (h!41597 (++!8680 lt!1084664 lt!1084696)) true) (content!4888 (t!238512 (++!8680 lt!1084664 lt!1084696)))))))

(assert (= (and d!880409 c!539629) b!3211835))

(assert (= (and d!880409 (not c!539629)) b!3211836))

(declare-fun m!3481695 () Bool)

(assert (=> b!3211836 m!3481695))

(assert (=> b!3211836 m!3481501))

(assert (=> d!879291 d!880409))

(declare-fun d!880411 () Bool)

(declare-fun c!539634 () Bool)

(assert (=> d!880411 (= c!539634 ((_ is Nil!36177) (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241)))))

(declare-fun e!2002699 () (InoxSet C!20152))

(assert (=> d!880411 (= (content!4888 (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241)) e!2002699)))

(declare-fun b!3211846 () Bool)

(assert (=> b!3211846 (= e!2002699 ((as const (Array C!20152 Bool)) false))))

(declare-fun b!3211847 () Bool)

(assert (=> b!3211847 (= e!2002699 ((_ map or) (store ((as const (Array C!20152 Bool)) false) (h!41597 (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241)) true) (content!4888 (t!238512 (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241)))))))

(assert (= (and d!880411 c!539634) b!3211846))

(assert (= (and d!880411 (not c!539634)) b!3211847))

(declare-fun m!3481697 () Bool)

(assert (=> b!3211847 m!3481697))

(declare-fun m!3481699 () Bool)

(assert (=> b!3211847 m!3481699))

(assert (=> d!879291 d!880411))

(declare-fun b!3211848 () Bool)

(declare-fun e!2002700 () List!36301)

(assert (=> b!3211848 (= e!2002700 (ite c!539026 call!232204 call!232203))))

(declare-fun e!2002701 () Bool)

(declare-fun b!3211851 () Bool)

(declare-fun lt!1086080 () List!36301)

(assert (=> b!3211851 (= e!2002701 (or (not (= (ite c!539026 call!232204 call!232203) Nil!36177)) (= lt!1086080 (ite c!539026 call!232203 call!232204))))))

(declare-fun b!3211850 () Bool)

(declare-fun res!1307443 () Bool)

(assert (=> b!3211850 (=> (not res!1307443) (not e!2002701))))

(assert (=> b!3211850 (= res!1307443 (= (size!27260 lt!1086080) (+ (size!27260 (ite c!539026 call!232203 call!232204)) (size!27260 (ite c!539026 call!232204 call!232203)))))))

(declare-fun d!880413 () Bool)

(assert (=> d!880413 e!2002701))

(declare-fun res!1307444 () Bool)

(assert (=> d!880413 (=> (not res!1307444) (not e!2002701))))

(assert (=> d!880413 (= res!1307444 (= (content!4888 lt!1086080) ((_ map or) (content!4888 (ite c!539026 call!232203 call!232204)) (content!4888 (ite c!539026 call!232204 call!232203)))))))

(assert (=> d!880413 (= lt!1086080 e!2002700)))

(declare-fun c!539635 () Bool)

(assert (=> d!880413 (= c!539635 ((_ is Nil!36177) (ite c!539026 call!232203 call!232204)))))

(assert (=> d!880413 (= (++!8680 (ite c!539026 call!232203 call!232204) (ite c!539026 call!232204 call!232203)) lt!1086080)))

(declare-fun b!3211849 () Bool)

(assert (=> b!3211849 (= e!2002700 (Cons!36177 (h!41597 (ite c!539026 call!232203 call!232204)) (++!8680 (t!238512 (ite c!539026 call!232203 call!232204)) (ite c!539026 call!232204 call!232203))))))

(assert (= (and d!880413 c!539635) b!3211848))

(assert (= (and d!880413 (not c!539635)) b!3211849))

(assert (= (and d!880413 res!1307444) b!3211850))

(assert (= (and b!3211850 res!1307443) b!3211851))

(declare-fun m!3481709 () Bool)

(assert (=> b!3211850 m!3481709))

(declare-fun m!3481711 () Bool)

(assert (=> b!3211850 m!3481711))

(declare-fun m!3481713 () Bool)

(assert (=> b!3211850 m!3481713))

(declare-fun m!3481715 () Bool)

(assert (=> d!880413 m!3481715))

(declare-fun m!3481717 () Bool)

(assert (=> d!880413 m!3481717))

(declare-fun m!3481719 () Bool)

(assert (=> d!880413 m!3481719))

(declare-fun m!3481721 () Bool)

(assert (=> b!3211849 m!3481721))

(assert (=> bm!232197 d!880413))

(declare-fun d!880419 () Bool)

(declare-fun lt!1086084 () BalanceConc!21260)

(assert (=> d!880419 (= (list!12865 lt!1086084) (printListTailRec!561 thiss!18206 (dropList!1078 lt!1084657 (+ 0 1)) (list!12865 (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (apply!8198 lt!1084657 0))))))))

(declare-fun e!2002703 () BalanceConc!21260)

(assert (=> d!880419 (= lt!1086084 e!2002703)))

(declare-fun c!539636 () Bool)

(assert (=> d!880419 (= c!539636 (>= (+ 0 1) (size!27261 lt!1084657)))))

(declare-fun e!2002704 () Bool)

(assert (=> d!880419 e!2002704))

(declare-fun res!1307446 () Bool)

(assert (=> d!880419 (=> (not res!1307446) (not e!2002704))))

(assert (=> d!880419 (= res!1307446 (>= (+ 0 1) 0))))

(assert (=> d!880419 (= (printTailRec!1310 thiss!18206 lt!1084657 (+ 0 1) (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (apply!8198 lt!1084657 0)))) lt!1086084)))

(declare-fun b!3211853 () Bool)

(assert (=> b!3211853 (= e!2002704 (<= (+ 0 1) (size!27261 lt!1084657)))))

(declare-fun b!3211854 () Bool)

(assert (=> b!3211854 (= e!2002703 (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (apply!8198 lt!1084657 0))))))

(declare-fun b!3211855 () Bool)

(assert (=> b!3211855 (= e!2002703 (printTailRec!1310 thiss!18206 lt!1084657 (+ 0 1 1) (++!8682 (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (apply!8198 lt!1084657 0))) (charsOf!3240 (apply!8198 lt!1084657 (+ 0 1))))))))

(declare-fun lt!1086086 () List!36303)

(assert (=> b!3211855 (= lt!1086086 (list!12869 lt!1084657))))

(declare-fun lt!1086085 () Unit!50642)

(assert (=> b!3211855 (= lt!1086085 (lemmaDropApply!1037 lt!1086086 (+ 0 1)))))

(assert (=> b!3211855 (= (head!7045 (drop!1861 lt!1086086 (+ 0 1))) (apply!8200 lt!1086086 (+ 0 1)))))

(declare-fun lt!1086083 () Unit!50642)

(assert (=> b!3211855 (= lt!1086083 lt!1086085)))

(declare-fun lt!1086087 () List!36303)

(assert (=> b!3211855 (= lt!1086087 (list!12869 lt!1084657))))

(declare-fun lt!1086088 () Unit!50642)

(assert (=> b!3211855 (= lt!1086088 (lemmaDropTail!921 lt!1086087 (+ 0 1)))))

(assert (=> b!3211855 (= (tail!5213 (drop!1861 lt!1086087 (+ 0 1))) (drop!1861 lt!1086087 (+ 0 1 1)))))

(declare-fun lt!1086082 () Unit!50642)

(assert (=> b!3211855 (= lt!1086082 lt!1086088)))

(assert (= (and d!880419 res!1307446) b!3211853))

(assert (= (and d!880419 c!539636) b!3211854))

(assert (= (and d!880419 (not c!539636)) b!3211855))

(assert (=> d!880419 m!3477797))

(declare-fun m!3481727 () Bool)

(assert (=> d!880419 m!3481727))

(declare-fun m!3481729 () Bool)

(assert (=> d!880419 m!3481729))

(declare-fun m!3481731 () Bool)

(assert (=> d!880419 m!3481731))

(declare-fun m!3481733 () Bool)

(assert (=> d!880419 m!3481733))

(assert (=> d!880419 m!3481729))

(assert (=> d!880419 m!3477825))

(assert (=> d!880419 m!3481731))

(assert (=> b!3211853 m!3477797))

(declare-fun m!3481737 () Bool)

(assert (=> b!3211855 m!3481737))

(assert (=> b!3211855 m!3477693))

(declare-fun m!3481741 () Bool)

(assert (=> b!3211855 m!3481741))

(declare-fun m!3481743 () Bool)

(assert (=> b!3211855 m!3481743))

(declare-fun m!3481745 () Bool)

(assert (=> b!3211855 m!3481745))

(declare-fun m!3481749 () Bool)

(assert (=> b!3211855 m!3481749))

(assert (=> b!3211855 m!3481749))

(declare-fun m!3481753 () Bool)

(assert (=> b!3211855 m!3481753))

(declare-fun m!3481757 () Bool)

(assert (=> b!3211855 m!3481757))

(declare-fun m!3481759 () Bool)

(assert (=> b!3211855 m!3481759))

(declare-fun m!3481761 () Bool)

(assert (=> b!3211855 m!3481761))

(assert (=> b!3211855 m!3481761))

(declare-fun m!3481763 () Bool)

(assert (=> b!3211855 m!3481763))

(assert (=> b!3211855 m!3481743))

(declare-fun m!3481769 () Bool)

(assert (=> b!3211855 m!3481769))

(declare-fun m!3481773 () Bool)

(assert (=> b!3211855 m!3481773))

(assert (=> b!3211855 m!3477825))

(assert (=> b!3211855 m!3481763))

(assert (=> b!3211855 m!3481769))

(assert (=> b!3209784 d!880419))

(declare-fun d!880423 () Bool)

(assert (=> d!880423 (= (head!7045 (drop!1861 lt!1084951 0)) (h!41599 (drop!1861 lt!1084951 0)))))

(assert (=> b!3209784 d!880423))

(declare-fun b!3211868 () Bool)

(declare-fun e!2002711 () List!36303)

(declare-fun e!2002713 () List!36303)

(assert (=> b!3211868 (= e!2002711 e!2002713)))

(declare-fun c!539639 () Bool)

(assert (=> b!3211868 (= c!539639 (<= (+ 0 1) 0))))

(declare-fun b!3211870 () Bool)

(declare-fun e!2002712 () Int)

(assert (=> b!3211870 (= e!2002712 0)))

(declare-fun b!3211871 () Bool)

(declare-fun e!2002714 () Int)

(assert (=> b!3211871 (= e!2002714 e!2002712)))

(declare-fun c!539640 () Bool)

(declare-fun call!232471 () Int)

(assert (=> b!3211871 (= c!539640 (>= (+ 0 1) call!232471))))

(declare-fun d!880427 () Bool)

(declare-fun e!2002715 () Bool)

(assert (=> d!880427 e!2002715))

(declare-fun res!1307452 () Bool)

(assert (=> d!880427 (=> (not res!1307452) (not e!2002715))))

(declare-fun lt!1086091 () List!36303)

(assert (=> d!880427 (= res!1307452 (= ((_ map implies) (content!4891 lt!1086091) (content!4891 lt!1084952)) ((as const (InoxSet Token!9814)) true)))))

(assert (=> d!880427 (= lt!1086091 e!2002711)))

(declare-fun c!539644 () Bool)

(assert (=> d!880427 (= c!539644 ((_ is Nil!36179) lt!1084952))))

(assert (=> d!880427 (= (drop!1861 lt!1084952 (+ 0 1)) lt!1086091)))

(declare-fun b!3211872 () Bool)

(assert (=> b!3211872 (= e!2002714 call!232471)))

(declare-fun b!3211873 () Bool)

(assert (=> b!3211873 (= e!2002711 Nil!36179)))

(declare-fun b!3211874 () Bool)

(assert (=> b!3211874 (= e!2002715 (= (size!27264 lt!1086091) e!2002714))))

(declare-fun c!539641 () Bool)

(assert (=> b!3211874 (= c!539641 (<= (+ 0 1) 0))))

(declare-fun b!3211875 () Bool)

(assert (=> b!3211875 (= e!2002713 lt!1084952)))

(declare-fun bm!232466 () Bool)

(assert (=> bm!232466 (= call!232471 (size!27264 lt!1084952))))

(declare-fun b!3211876 () Bool)

(assert (=> b!3211876 (= e!2002713 (drop!1861 (t!238514 lt!1084952) (- (+ 0 1) 1)))))

(declare-fun b!3211877 () Bool)

(assert (=> b!3211877 (= e!2002712 (- call!232471 (+ 0 1)))))

(assert (= (and d!880427 c!539644) b!3211873))

(assert (= (and d!880427 (not c!539644)) b!3211868))

(assert (= (and b!3211868 c!539639) b!3211875))

(assert (= (and b!3211868 (not c!539639)) b!3211876))

(assert (= (and d!880427 res!1307452) b!3211874))

(assert (= (and b!3211874 c!539641) b!3211872))

(assert (= (and b!3211874 (not c!539641)) b!3211871))

(assert (= (and b!3211871 c!539640) b!3211870))

(assert (= (and b!3211871 (not c!539640)) b!3211877))

(assert (= (or b!3211872 b!3211871 b!3211877) bm!232466))

(declare-fun m!3481779 () Bool)

(assert (=> d!880427 m!3481779))

(declare-fun m!3481783 () Bool)

(assert (=> d!880427 m!3481783))

(declare-fun m!3481787 () Bool)

(assert (=> b!3211874 m!3481787))

(declare-fun m!3481789 () Bool)

(assert (=> bm!232466 m!3481789))

(declare-fun m!3481791 () Bool)

(assert (=> b!3211876 m!3481791))

(assert (=> b!3209784 d!880427))

(declare-fun b!3211881 () Bool)

(declare-fun e!2002718 () List!36303)

(declare-fun e!2002720 () List!36303)

(assert (=> b!3211881 (= e!2002718 e!2002720)))

(declare-fun c!539646 () Bool)

(assert (=> b!3211881 (= c!539646 (<= 0 0))))

(declare-fun b!3211882 () Bool)

(declare-fun e!2002719 () Int)

(assert (=> b!3211882 (= e!2002719 0)))

(declare-fun b!3211883 () Bool)

(declare-fun e!2002721 () Int)

(assert (=> b!3211883 (= e!2002721 e!2002719)))

(declare-fun c!539647 () Bool)

(declare-fun call!232472 () Int)

(assert (=> b!3211883 (= c!539647 (>= 0 call!232472))))

(declare-fun d!880431 () Bool)

(declare-fun e!2002722 () Bool)

(assert (=> d!880431 e!2002722))

(declare-fun res!1307454 () Bool)

(assert (=> d!880431 (=> (not res!1307454) (not e!2002722))))

(declare-fun lt!1086093 () List!36303)

(assert (=> d!880431 (= res!1307454 (= ((_ map implies) (content!4891 lt!1086093) (content!4891 lt!1084951)) ((as const (InoxSet Token!9814)) true)))))

(assert (=> d!880431 (= lt!1086093 e!2002718)))

(declare-fun c!539649 () Bool)

(assert (=> d!880431 (= c!539649 ((_ is Nil!36179) lt!1084951))))

(assert (=> d!880431 (= (drop!1861 lt!1084951 0) lt!1086093)))

(declare-fun b!3211884 () Bool)

(assert (=> b!3211884 (= e!2002721 call!232472)))

(declare-fun b!3211885 () Bool)

(assert (=> b!3211885 (= e!2002718 Nil!36179)))

(declare-fun b!3211886 () Bool)

(assert (=> b!3211886 (= e!2002722 (= (size!27264 lt!1086093) e!2002721))))

(declare-fun c!539648 () Bool)

(assert (=> b!3211886 (= c!539648 (<= 0 0))))

(declare-fun b!3211887 () Bool)

(assert (=> b!3211887 (= e!2002720 lt!1084951)))

(declare-fun bm!232467 () Bool)

(assert (=> bm!232467 (= call!232472 (size!27264 lt!1084951))))

(declare-fun b!3211888 () Bool)

(assert (=> b!3211888 (= e!2002720 (drop!1861 (t!238514 lt!1084951) (- 0 1)))))

(declare-fun b!3211889 () Bool)

(assert (=> b!3211889 (= e!2002719 (- call!232472 0))))

(assert (= (and d!880431 c!539649) b!3211885))

(assert (= (and d!880431 (not c!539649)) b!3211881))

(assert (= (and b!3211881 c!539646) b!3211887))

(assert (= (and b!3211881 (not c!539646)) b!3211888))

(assert (= (and d!880431 res!1307454) b!3211886))

(assert (= (and b!3211886 c!539648) b!3211884))

(assert (= (and b!3211886 (not c!539648)) b!3211883))

(assert (= (and b!3211883 c!539647) b!3211882))

(assert (= (and b!3211883 (not c!539647)) b!3211889))

(assert (= (or b!3211884 b!3211883 b!3211889) bm!232467))

(declare-fun m!3481801 () Bool)

(assert (=> d!880431 m!3481801))

(declare-fun m!3481803 () Bool)

(assert (=> d!880431 m!3481803))

(declare-fun m!3481805 () Bool)

(assert (=> b!3211886 m!3481805))

(declare-fun m!3481807 () Bool)

(assert (=> bm!232467 m!3481807))

(declare-fun m!3481809 () Bool)

(assert (=> b!3211888 m!3481809))

(assert (=> b!3209784 d!880431))

(declare-fun d!880435 () Bool)

(declare-fun lt!1086095 () Token!9814)

(assert (=> d!880435 (contains!6463 lt!1084951 lt!1086095)))

(declare-fun e!2002724 () Token!9814)

(assert (=> d!880435 (= lt!1086095 e!2002724)))

(declare-fun c!539650 () Bool)

(assert (=> d!880435 (= c!539650 (= 0 0))))

(declare-fun e!2002725 () Bool)

(assert (=> d!880435 e!2002725))

(declare-fun res!1307456 () Bool)

(assert (=> d!880435 (=> (not res!1307456) (not e!2002725))))

(assert (=> d!880435 (= res!1307456 (<= 0 0))))

(assert (=> d!880435 (= (apply!8200 lt!1084951 0) lt!1086095)))

(declare-fun b!3211891 () Bool)

(assert (=> b!3211891 (= e!2002725 (< 0 (size!27264 lt!1084951)))))

(declare-fun b!3211892 () Bool)

(assert (=> b!3211892 (= e!2002724 (head!7045 lt!1084951))))

(declare-fun b!3211893 () Bool)

(assert (=> b!3211893 (= e!2002724 (apply!8200 (tail!5213 lt!1084951) (- 0 1)))))

(assert (= (and d!880435 res!1307456) b!3211891))

(assert (= (and d!880435 c!539650) b!3211892))

(assert (= (and d!880435 (not c!539650)) b!3211893))

(declare-fun m!3481813 () Bool)

(assert (=> d!880435 m!3481813))

(assert (=> b!3211891 m!3481807))

(declare-fun m!3481815 () Bool)

(assert (=> b!3211892 m!3481815))

(declare-fun m!3481817 () Bool)

(assert (=> b!3211893 m!3481817))

(assert (=> b!3211893 m!3481817))

(declare-fun m!3481821 () Bool)

(assert (=> b!3211893 m!3481821))

(assert (=> b!3209784 d!880435))

(declare-fun d!880441 () Bool)

(assert (=> d!880441 (= (tail!5213 (drop!1861 lt!1084952 0)) (t!238514 (drop!1861 lt!1084952 0)))))

(assert (=> b!3209784 d!880441))

(declare-fun b!3211896 () Bool)

(declare-fun e!2002727 () List!36303)

(declare-fun e!2002729 () List!36303)

(assert (=> b!3211896 (= e!2002727 e!2002729)))

(declare-fun c!539652 () Bool)

(assert (=> b!3211896 (= c!539652 (<= 0 0))))

(declare-fun b!3211897 () Bool)

(declare-fun e!2002728 () Int)

(assert (=> b!3211897 (= e!2002728 0)))

(declare-fun b!3211898 () Bool)

(declare-fun e!2002730 () Int)

(assert (=> b!3211898 (= e!2002730 e!2002728)))

(declare-fun c!539653 () Bool)

(declare-fun call!232473 () Int)

(assert (=> b!3211898 (= c!539653 (>= 0 call!232473))))

(declare-fun d!880443 () Bool)

(declare-fun e!2002731 () Bool)

(assert (=> d!880443 e!2002731))

(declare-fun res!1307457 () Bool)

(assert (=> d!880443 (=> (not res!1307457) (not e!2002731))))

(declare-fun lt!1086098 () List!36303)

(assert (=> d!880443 (= res!1307457 (= ((_ map implies) (content!4891 lt!1086098) (content!4891 lt!1084952)) ((as const (InoxSet Token!9814)) true)))))

(assert (=> d!880443 (= lt!1086098 e!2002727)))

(declare-fun c!539655 () Bool)

(assert (=> d!880443 (= c!539655 ((_ is Nil!36179) lt!1084952))))

(assert (=> d!880443 (= (drop!1861 lt!1084952 0) lt!1086098)))

(declare-fun b!3211899 () Bool)

(assert (=> b!3211899 (= e!2002730 call!232473)))

(declare-fun b!3211900 () Bool)

(assert (=> b!3211900 (= e!2002727 Nil!36179)))

(declare-fun b!3211901 () Bool)

(assert (=> b!3211901 (= e!2002731 (= (size!27264 lt!1086098) e!2002730))))

(declare-fun c!539654 () Bool)

(assert (=> b!3211901 (= c!539654 (<= 0 0))))

(declare-fun b!3211902 () Bool)

(assert (=> b!3211902 (= e!2002729 lt!1084952)))

(declare-fun bm!232468 () Bool)

(assert (=> bm!232468 (= call!232473 (size!27264 lt!1084952))))

(declare-fun b!3211903 () Bool)

(assert (=> b!3211903 (= e!2002729 (drop!1861 (t!238514 lt!1084952) (- 0 1)))))

(declare-fun b!3211904 () Bool)

(assert (=> b!3211904 (= e!2002728 (- call!232473 0))))

(assert (= (and d!880443 c!539655) b!3211900))

(assert (= (and d!880443 (not c!539655)) b!3211896))

(assert (= (and b!3211896 c!539652) b!3211902))

(assert (= (and b!3211896 (not c!539652)) b!3211903))

(assert (= (and d!880443 res!1307457) b!3211901))

(assert (= (and b!3211901 c!539654) b!3211899))

(assert (= (and b!3211901 (not c!539654)) b!3211898))

(assert (= (and b!3211898 c!539653) b!3211897))

(assert (= (and b!3211898 (not c!539653)) b!3211904))

(assert (= (or b!3211899 b!3211898 b!3211904) bm!232468))

(declare-fun m!3481833 () Bool)

(assert (=> d!880443 m!3481833))

(assert (=> d!880443 m!3481783))

(declare-fun m!3481835 () Bool)

(assert (=> b!3211901 m!3481835))

(assert (=> bm!232468 m!3481789))

(declare-fun m!3481837 () Bool)

(assert (=> b!3211903 m!3481837))

(assert (=> b!3209784 d!880443))

(declare-fun d!880451 () Bool)

(declare-fun lt!1086101 () Token!9814)

(assert (=> d!880451 (= lt!1086101 (apply!8200 (list!12869 lt!1084657) 0))))

(assert (=> d!880451 (= lt!1086101 (apply!8202 (c!538932 lt!1084657) 0))))

(declare-fun e!2002734 () Bool)

(assert (=> d!880451 e!2002734))

(declare-fun res!1307459 () Bool)

(assert (=> d!880451 (=> (not res!1307459) (not e!2002734))))

(assert (=> d!880451 (= res!1307459 (<= 0 0))))

(assert (=> d!880451 (= (apply!8198 lt!1084657 0) lt!1086101)))

(declare-fun b!3211908 () Bool)

(assert (=> b!3211908 (= e!2002734 (< 0 (size!27261 lt!1084657)))))

(assert (= (and d!880451 res!1307459) b!3211908))

(assert (=> d!880451 m!3477693))

(assert (=> d!880451 m!3477693))

(declare-fun m!3481845 () Bool)

(assert (=> d!880451 m!3481845))

(declare-fun m!3481849 () Bool)

(assert (=> d!880451 m!3481849))

(assert (=> b!3211908 m!3477797))

(assert (=> b!3209784 d!880451))

(declare-fun d!880455 () Bool)

(assert (=> d!880455 (= (head!7045 (drop!1861 lt!1084951 0)) (apply!8200 lt!1084951 0))))

(declare-fun lt!1086102 () Unit!50642)

(assert (=> d!880455 (= lt!1086102 (choose!18748 lt!1084951 0))))

(declare-fun e!2002735 () Bool)

(assert (=> d!880455 e!2002735))

(declare-fun res!1307460 () Bool)

(assert (=> d!880455 (=> (not res!1307460) (not e!2002735))))

(assert (=> d!880455 (= res!1307460 (>= 0 0))))

(assert (=> d!880455 (= (lemmaDropApply!1037 lt!1084951 0) lt!1086102)))

(declare-fun b!3211909 () Bool)

(assert (=> b!3211909 (= e!2002735 (< 0 (size!27264 lt!1084951)))))

(assert (= (and d!880455 res!1307460) b!3211909))

(assert (=> d!880455 m!3477809))

(assert (=> d!880455 m!3477809))

(assert (=> d!880455 m!3477811))

(assert (=> d!880455 m!3477807))

(declare-fun m!3481851 () Bool)

(assert (=> d!880455 m!3481851))

(assert (=> b!3211909 m!3481807))

(assert (=> b!3209784 d!880455))

(declare-fun d!880457 () Bool)

(assert (=> d!880457 (= (tail!5213 (drop!1861 lt!1084952 0)) (drop!1861 lt!1084952 (+ 0 1)))))

(declare-fun lt!1086105 () Unit!50642)

(assert (=> d!880457 (= lt!1086105 (choose!18747 lt!1084952 0))))

(declare-fun e!2002740 () Bool)

(assert (=> d!880457 e!2002740))

(declare-fun res!1307462 () Bool)

(assert (=> d!880457 (=> (not res!1307462) (not e!2002740))))

(assert (=> d!880457 (= res!1307462 (>= 0 0))))

(assert (=> d!880457 (= (lemmaDropTail!921 lt!1084952 0) lt!1086105)))

(declare-fun b!3211917 () Bool)

(assert (=> b!3211917 (= e!2002740 (< 0 (size!27264 lt!1084952)))))

(assert (= (and d!880457 res!1307462) b!3211917))

(assert (=> d!880457 m!3477813))

(assert (=> d!880457 m!3477813))

(assert (=> d!880457 m!3477815))

(assert (=> d!880457 m!3477819))

(declare-fun m!3481853 () Bool)

(assert (=> d!880457 m!3481853))

(assert (=> b!3211917 m!3481789))

(assert (=> b!3209784 d!880457))

(assert (=> b!3209784 d!880289))

(declare-fun b!3211920 () Bool)

(declare-fun res!1307464 () Bool)

(declare-fun e!2002741 () Bool)

(assert (=> b!3211920 (=> (not res!1307464) (not e!2002741))))

(assert (=> b!3211920 (= res!1307464 (>= (height!1555 (++!8686 (c!538931 (BalanceConc!21261 Empty!10823)) (c!538931 (charsOf!3240 (apply!8198 lt!1084657 0))))) (max!0 (height!1555 (c!538931 (BalanceConc!21261 Empty!10823))) (height!1555 (c!538931 (charsOf!3240 (apply!8198 lt!1084657 0)))))))))

(declare-fun b!3211921 () Bool)

(declare-fun lt!1086106 () BalanceConc!21260)

(assert (=> b!3211921 (= e!2002741 (= (list!12865 lt!1086106) (++!8680 (list!12865 (BalanceConc!21261 Empty!10823)) (list!12865 (charsOf!3240 (apply!8198 lt!1084657 0))))))))

(declare-fun b!3211918 () Bool)

(declare-fun res!1307465 () Bool)

(assert (=> b!3211918 (=> (not res!1307465) (not e!2002741))))

(assert (=> b!3211918 (= res!1307465 (isBalanced!3218 (++!8686 (c!538931 (BalanceConc!21261 Empty!10823)) (c!538931 (charsOf!3240 (apply!8198 lt!1084657 0))))))))

(declare-fun b!3211919 () Bool)

(declare-fun res!1307466 () Bool)

(assert (=> b!3211919 (=> (not res!1307466) (not e!2002741))))

(assert (=> b!3211919 (= res!1307466 (<= (height!1555 (++!8686 (c!538931 (BalanceConc!21261 Empty!10823)) (c!538931 (charsOf!3240 (apply!8198 lt!1084657 0))))) (+ (max!0 (height!1555 (c!538931 (BalanceConc!21261 Empty!10823))) (height!1555 (c!538931 (charsOf!3240 (apply!8198 lt!1084657 0))))) 1)))))

(declare-fun d!880459 () Bool)

(assert (=> d!880459 e!2002741))

(declare-fun res!1307463 () Bool)

(assert (=> d!880459 (=> (not res!1307463) (not e!2002741))))

(assert (=> d!880459 (= res!1307463 (appendAssocInst!733 (c!538931 (BalanceConc!21261 Empty!10823)) (c!538931 (charsOf!3240 (apply!8198 lt!1084657 0)))))))

(assert (=> d!880459 (= lt!1086106 (BalanceConc!21261 (++!8686 (c!538931 (BalanceConc!21261 Empty!10823)) (c!538931 (charsOf!3240 (apply!8198 lt!1084657 0))))))))

(assert (=> d!880459 (= (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (apply!8198 lt!1084657 0))) lt!1086106)))

(assert (= (and d!880459 res!1307463) b!3211918))

(assert (= (and b!3211918 res!1307465) b!3211919))

(assert (= (and b!3211919 res!1307466) b!3211920))

(assert (= (and b!3211920 res!1307464) b!3211921))

(declare-fun m!3481869 () Bool)

(assert (=> d!880459 m!3481869))

(declare-fun m!3481871 () Bool)

(assert (=> d!880459 m!3481871))

(assert (=> b!3211918 m!3481871))

(assert (=> b!3211918 m!3481871))

(declare-fun m!3481875 () Bool)

(assert (=> b!3211918 m!3481875))

(assert (=> b!3211919 m!3481871))

(assert (=> b!3211919 m!3480759))

(declare-fun m!3481877 () Bool)

(assert (=> b!3211919 m!3481877))

(declare-fun m!3481879 () Bool)

(assert (=> b!3211919 m!3481879))

(assert (=> b!3211919 m!3480759))

(assert (=> b!3211919 m!3481871))

(declare-fun m!3481883 () Bool)

(assert (=> b!3211919 m!3481883))

(assert (=> b!3211919 m!3481877))

(assert (=> b!3211920 m!3481871))

(assert (=> b!3211920 m!3480759))

(assert (=> b!3211920 m!3481877))

(assert (=> b!3211920 m!3481879))

(assert (=> b!3211920 m!3480759))

(assert (=> b!3211920 m!3481871))

(assert (=> b!3211920 m!3481883))

(assert (=> b!3211920 m!3481877))

(declare-fun m!3481885 () Bool)

(assert (=> b!3211921 m!3481885))

(assert (=> b!3211921 m!3476993))

(assert (=> b!3211921 m!3477823))

(declare-fun m!3481889 () Bool)

(assert (=> b!3211921 m!3481889))

(assert (=> b!3211921 m!3476993))

(assert (=> b!3211921 m!3481889))

(declare-fun m!3481893 () Bool)

(assert (=> b!3211921 m!3481893))

(assert (=> b!3209784 d!880459))

(declare-fun d!880467 () Bool)

(declare-fun lt!1086107 () BalanceConc!21260)

(assert (=> d!880467 (= (list!12865 lt!1086107) (originalCharacters!5938 (apply!8198 lt!1084657 0)))))

(assert (=> d!880467 (= lt!1086107 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084657 0)))) (value!169344 (apply!8198 lt!1084657 0))))))

(assert (=> d!880467 (= (charsOf!3240 (apply!8198 lt!1084657 0)) lt!1086107)))

(declare-fun b_lambda!88027 () Bool)

(assert (=> (not b_lambda!88027) (not d!880467)))

(declare-fun t!238860 () Bool)

(declare-fun tb!157881 () Bool)

(assert (=> (and b!3209139 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084657 0))))) t!238860) tb!157881))

(declare-fun b!3211924 () Bool)

(declare-fun e!2002743 () Bool)

(declare-fun tp!1013388 () Bool)

(assert (=> b!3211924 (= e!2002743 (and (inv!49039 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084657 0)))) (value!169344 (apply!8198 lt!1084657 0))))) tp!1013388))))

(declare-fun result!200246 () Bool)

(assert (=> tb!157881 (= result!200246 (and (inv!49040 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084657 0)))) (value!169344 (apply!8198 lt!1084657 0)))) e!2002743))))

(assert (= tb!157881 b!3211924))

(declare-fun m!3481899 () Bool)

(assert (=> b!3211924 m!3481899))

(declare-fun m!3481901 () Bool)

(assert (=> tb!157881 m!3481901))

(assert (=> d!880467 t!238860))

(declare-fun b_and!214073 () Bool)

(assert (= b_and!214045 (and (=> t!238860 result!200246) b_and!214073)))

(declare-fun tb!157885 () Bool)

(declare-fun t!238864 () Bool)

(assert (=> (and b!3209140 (= (toChars!7167 (transformation!5224 (h!41598 rules!2135))) (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084657 0))))) t!238864) tb!157885))

(declare-fun result!200250 () Bool)

(assert (= result!200250 result!200246))

(assert (=> d!880467 t!238864))

(declare-fun b_and!214075 () Bool)

(assert (= b_and!214051 (and (=> t!238864 result!200250) b_and!214075)))

(declare-fun tb!157887 () Bool)

(declare-fun t!238866 () Bool)

(assert (=> (and b!3209120 (= (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084657 0))))) t!238866) tb!157887))

(declare-fun result!200252 () Bool)

(assert (= result!200252 result!200246))

(assert (=> d!880467 t!238866))

(declare-fun b_and!214079 () Bool)

(assert (= b_and!214043 (and (=> t!238866 result!200252) b_and!214079)))

(declare-fun tb!157891 () Bool)

(declare-fun t!238870 () Bool)

(assert (=> (and b!3210083 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084657 0))))) t!238870) tb!157891))

(declare-fun result!200256 () Bool)

(assert (= result!200256 result!200246))

(assert (=> d!880467 t!238870))

(declare-fun b_and!214081 () Bool)

(assert (= b_and!214047 (and (=> t!238870 result!200256) b_and!214081)))

(declare-fun tb!157893 () Bool)

(declare-fun t!238872 () Bool)

(assert (=> (and b!3210119 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084657 0))))) t!238872) tb!157893))

(declare-fun result!200258 () Bool)

(assert (= result!200258 result!200246))

(assert (=> d!880467 t!238872))

(declare-fun b_and!214085 () Bool)

(assert (= b_and!214049 (and (=> t!238872 result!200258) b_and!214085)))

(declare-fun m!3481905 () Bool)

(assert (=> d!880467 m!3481905))

(declare-fun m!3481907 () Bool)

(assert (=> d!880467 m!3481907))

(assert (=> b!3209784 d!880467))

(declare-fun d!880471 () Bool)

(assert (=> d!880471 (= (apply!8197 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) (seqFromList!3519 (_1!20925 lt!1084879))) (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (seqFromList!3519 (_1!20925 lt!1084879))))))

(declare-fun b_lambda!88031 () Bool)

(assert (=> (not b_lambda!88031) (not d!880471)))

(declare-fun t!238880 () Bool)

(declare-fun tb!157901 () Bool)

(assert (=> (and b!3210083 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!238880) tb!157901))

(declare-fun result!200266 () Bool)

(assert (=> tb!157901 (= result!200266 (inv!21 (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (seqFromList!3519 (_1!20925 lt!1084879)))))))

(declare-fun m!3481911 () Bool)

(assert (=> tb!157901 m!3481911))

(assert (=> d!880471 t!238880))

(declare-fun b_and!214093 () Bool)

(assert (= b_and!214011 (and (=> t!238880 result!200266) b_and!214093)))

(declare-fun t!238882 () Bool)

(declare-fun tb!157903 () Bool)

(assert (=> (and b!3209139 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!238882) tb!157903))

(declare-fun result!200268 () Bool)

(assert (= result!200268 result!200266))

(assert (=> d!880471 t!238882))

(declare-fun b_and!214095 () Bool)

(assert (= b_and!214005 (and (=> t!238882 result!200268) b_and!214095)))

(declare-fun t!238884 () Bool)

(declare-fun tb!157905 () Bool)

(assert (=> (and b!3210119 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!238884) tb!157905))

(declare-fun result!200270 () Bool)

(assert (= result!200270 result!200266))

(assert (=> d!880471 t!238884))

(declare-fun b_and!214097 () Bool)

(assert (= b_and!214007 (and (=> t!238884 result!200270) b_and!214097)))

(declare-fun tb!157907 () Bool)

(declare-fun t!238886 () Bool)

(assert (=> (and b!3209120 (= (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!238886) tb!157907))

(declare-fun result!200272 () Bool)

(assert (= result!200272 result!200266))

(assert (=> d!880471 t!238886))

(declare-fun b_and!214099 () Bool)

(assert (= b_and!214003 (and (=> t!238886 result!200272) b_and!214099)))

(declare-fun tb!157909 () Bool)

(declare-fun t!238888 () Bool)

(assert (=> (and b!3209140 (= (toValue!7308 (transformation!5224 (h!41598 rules!2135))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!238888) tb!157909))

(declare-fun result!200274 () Bool)

(assert (= result!200274 result!200266))

(assert (=> d!880471 t!238888))

(declare-fun b_and!214101 () Bool)

(assert (= b_and!214009 (and (=> t!238888 result!200274) b_and!214101)))

(assert (=> d!880471 m!3477571))

(declare-fun m!3481915 () Bool)

(assert (=> d!880471 m!3481915))

(assert (=> b!3209664 d!880471))

(declare-fun bs!541805 () Bool)

(declare-fun d!880477 () Bool)

(assert (= bs!541805 (and d!880477 d!879477)))

(declare-fun lambda!117533 () Int)

(assert (=> bs!541805 (= (and (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toChars!7167 (transformation!5224 (h!41598 rules!2135)))) (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toValue!7308 (transformation!5224 (h!41598 rules!2135))))) (= lambda!117533 lambda!117495))))

(declare-fun bs!541806 () Bool)

(assert (= bs!541806 (and d!880477 d!879481)))

(assert (=> bs!541806 (= (and (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (= lambda!117533 lambda!117499))))

(declare-fun bs!541807 () Bool)

(assert (= bs!541807 (and d!880477 d!879847)))

(assert (=> bs!541807 (= (and (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (= lambda!117533 lambda!117514))))

(declare-fun bs!541808 () Bool)

(assert (= bs!541808 (and d!880477 d!880195)))

(assert (=> bs!541808 (= (and (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241)))) (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241))))) (= lambda!117533 lambda!117527))))

(declare-fun b!3211939 () Bool)

(declare-fun e!2002753 () Bool)

(assert (=> b!3211939 (= e!2002753 true)))

(assert (=> d!880477 e!2002753))

(assert (= d!880477 b!3211939))

(assert (=> b!3211939 (< (dynLambda!14607 order!18473 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) (dynLambda!14616 order!18479 lambda!117533))))

(assert (=> b!3211939 (< (dynLambda!14609 order!18477 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) (dynLambda!14616 order!18479 lambda!117533))))

(assert (=> d!880477 (= (list!12865 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (seqFromList!3519 (_1!20925 lt!1084879))))) (list!12865 (seqFromList!3519 (_1!20925 lt!1084879))))))

(declare-fun lt!1086109 () Unit!50642)

(assert (=> d!880477 (= lt!1086109 (ForallOf!554 lambda!117533 (seqFromList!3519 (_1!20925 lt!1084879))))))

(assert (=> d!880477 (= (lemmaSemiInverse!1176 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) (seqFromList!3519 (_1!20925 lt!1084879))) lt!1086109)))

(declare-fun b_lambda!88035 () Bool)

(assert (=> (not b_lambda!88035) (not d!880477)))

(declare-fun tb!157913 () Bool)

(declare-fun t!238892 () Bool)

(assert (=> (and b!3209120 (= (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!238892) tb!157913))

(declare-fun tp!1013390 () Bool)

(declare-fun e!2002755 () Bool)

(declare-fun b!3211941 () Bool)

(assert (=> b!3211941 (= e!2002755 (and (inv!49039 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (seqFromList!3519 (_1!20925 lt!1084879)))))) tp!1013390))))

(declare-fun result!200278 () Bool)

(assert (=> tb!157913 (= result!200278 (and (inv!49040 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (seqFromList!3519 (_1!20925 lt!1084879))))) e!2002755))))

(assert (= tb!157913 b!3211941))

(declare-fun m!3481935 () Bool)

(assert (=> b!3211941 m!3481935))

(declare-fun m!3481937 () Bool)

(assert (=> tb!157913 m!3481937))

(assert (=> d!880477 t!238892))

(declare-fun b_and!214105 () Bool)

(assert (= b_and!214079 (and (=> t!238892 result!200278) b_and!214105)))

(declare-fun t!238896 () Bool)

(declare-fun tb!157917 () Bool)

(assert (=> (and b!3209139 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!238896) tb!157917))

(declare-fun result!200282 () Bool)

(assert (= result!200282 result!200278))

(assert (=> d!880477 t!238896))

(declare-fun b_and!214109 () Bool)

(assert (= b_and!214073 (and (=> t!238896 result!200282) b_and!214109)))

(declare-fun t!238900 () Bool)

(declare-fun tb!157921 () Bool)

(assert (=> (and b!3209140 (= (toChars!7167 (transformation!5224 (h!41598 rules!2135))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!238900) tb!157921))

(declare-fun result!200286 () Bool)

(assert (= result!200286 result!200278))

(assert (=> d!880477 t!238900))

(declare-fun b_and!214113 () Bool)

(assert (= b_and!214075 (and (=> t!238900 result!200286) b_and!214113)))

(declare-fun t!238904 () Bool)

(declare-fun tb!157925 () Bool)

(assert (=> (and b!3210083 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!238904) tb!157925))

(declare-fun result!200290 () Bool)

(assert (= result!200290 result!200278))

(assert (=> d!880477 t!238904))

(declare-fun b_and!214117 () Bool)

(assert (= b_and!214081 (and (=> t!238904 result!200290) b_and!214117)))

(declare-fun t!238908 () Bool)

(declare-fun tb!157929 () Bool)

(assert (=> (and b!3210119 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!238908) tb!157929))

(declare-fun result!200294 () Bool)

(assert (= result!200294 result!200278))

(assert (=> d!880477 t!238908))

(declare-fun b_and!214121 () Bool)

(assert (= b_and!214085 (and (=> t!238908 result!200294) b_and!214121)))

(declare-fun b_lambda!88037 () Bool)

(assert (=> (not b_lambda!88037) (not d!880477)))

(assert (=> d!880477 t!238880))

(declare-fun b_and!214123 () Bool)

(assert (= b_and!214093 (and (=> t!238880 result!200266) b_and!214123)))

(assert (=> d!880477 t!238886))

(declare-fun b_and!214125 () Bool)

(assert (= b_and!214099 (and (=> t!238886 result!200272) b_and!214125)))

(assert (=> d!880477 t!238884))

(declare-fun b_and!214127 () Bool)

(assert (= b_and!214097 (and (=> t!238884 result!200270) b_and!214127)))

(assert (=> d!880477 t!238888))

(declare-fun b_and!214129 () Bool)

(assert (= b_and!214101 (and (=> t!238888 result!200274) b_and!214129)))

(assert (=> d!880477 t!238882))

(declare-fun b_and!214131 () Bool)

(assert (= b_and!214095 (and (=> t!238882 result!200268) b_and!214131)))

(assert (=> d!880477 m!3477571))

(declare-fun m!3481943 () Bool)

(assert (=> d!880477 m!3481943))

(assert (=> d!880477 m!3477571))

(declare-fun m!3481945 () Bool)

(assert (=> d!880477 m!3481945))

(assert (=> d!880477 m!3481915))

(declare-fun m!3481951 () Bool)

(assert (=> d!880477 m!3481951))

(assert (=> d!880477 m!3477571))

(assert (=> d!880477 m!3481915))

(assert (=> d!880477 m!3481951))

(declare-fun m!3481953 () Bool)

(assert (=> d!880477 m!3481953))

(assert (=> b!3209664 d!880477))

(declare-fun d!880487 () Bool)

(declare-fun e!2002759 () Bool)

(assert (=> d!880487 e!2002759))

(declare-fun res!1307477 () Bool)

(assert (=> d!880487 (=> res!1307477 e!2002759)))

(assert (=> d!880487 (= res!1307477 (isEmpty!20266 (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) Nil!36177 (size!27260 Nil!36177) lt!1084664 lt!1084664 (size!27260 lt!1084664)))))))

(declare-fun lt!1086111 () Unit!50642)

(assert (=> d!880487 (= lt!1086111 (choose!18744 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) lt!1084664))))

(assert (=> d!880487 (validRegex!4552 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))))

(assert (=> d!880487 (= (longestMatchIsAcceptedByMatchOrIsEmpty!803 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) lt!1084664) lt!1086111)))

(declare-fun b!3211946 () Bool)

(assert (=> b!3211946 (= e!2002759 (matchR!4617 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) Nil!36177 (size!27260 Nil!36177) lt!1084664 lt!1084664 (size!27260 lt!1084664)))))))

(assert (= (and d!880487 (not res!1307477)) b!3211946))

(assert (=> d!880487 m!3477569))

(assert (=> d!880487 m!3477579))

(assert (=> d!880487 m!3477569))

(assert (=> d!880487 m!3476801))

(assert (=> d!880487 m!3477575))

(assert (=> d!880487 m!3476801))

(assert (=> d!880487 m!3480001))

(declare-fun m!3481961 () Bool)

(assert (=> d!880487 m!3481961))

(assert (=> b!3211946 m!3477569))

(assert (=> b!3211946 m!3476801))

(assert (=> b!3211946 m!3477569))

(assert (=> b!3211946 m!3476801))

(assert (=> b!3211946 m!3477575))

(assert (=> b!3211946 m!3477587))

(assert (=> b!3209664 d!880487))

(assert (=> b!3209664 d!879173))

(declare-fun d!880493 () Bool)

(declare-fun e!2002766 () Bool)

(assert (=> d!880493 e!2002766))

(declare-fun res!1307479 () Bool)

(assert (=> d!880493 (=> (not res!1307479) (not e!2002766))))

(declare-fun lt!1086138 () tuple2!35582)

(assert (=> d!880493 (= res!1307479 (= (++!8680 (_1!20925 lt!1086138) (_2!20925 lt!1086138)) lt!1084664))))

(declare-fun e!2002765 () tuple2!35582)

(assert (=> d!880493 (= lt!1086138 e!2002765)))

(declare-fun c!539670 () Bool)

(assert (=> d!880493 (= c!539670 (lostCause!882 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))))

(declare-fun lt!1086129 () Unit!50642)

(declare-fun Unit!50661 () Unit!50642)

(assert (=> d!880493 (= lt!1086129 Unit!50661)))

(assert (=> d!880493 (= (getSuffix!1386 lt!1084664 Nil!36177) lt!1084664)))

(declare-fun lt!1086134 () Unit!50642)

(declare-fun lt!1086125 () Unit!50642)

(assert (=> d!880493 (= lt!1086134 lt!1086125)))

(declare-fun lt!1086117 () List!36301)

(assert (=> d!880493 (= lt!1084664 lt!1086117)))

(assert (=> d!880493 (= lt!1086125 (lemmaSamePrefixThenSameSuffix!1232 Nil!36177 lt!1084664 Nil!36177 lt!1086117 lt!1084664))))

(assert (=> d!880493 (= lt!1086117 (getSuffix!1386 lt!1084664 Nil!36177))))

(declare-fun lt!1086123 () Unit!50642)

(declare-fun lt!1086113 () Unit!50642)

(assert (=> d!880493 (= lt!1086123 lt!1086113)))

(assert (=> d!880493 (isPrefix!2783 Nil!36177 (++!8680 Nil!36177 lt!1084664))))

(assert (=> d!880493 (= lt!1086113 (lemmaConcatTwoListThenFirstIsPrefix!1766 Nil!36177 lt!1084664))))

(assert (=> d!880493 (validRegex!4552 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))))

(assert (=> d!880493 (= (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) Nil!36177 (size!27260 Nil!36177) lt!1084664 lt!1084664 (size!27260 lt!1084664)) lt!1086138)))

(declare-fun bm!232475 () Bool)

(declare-fun call!232484 () C!20152)

(assert (=> bm!232475 (= call!232484 (head!7043 lt!1084664))))

(declare-fun b!3211957 () Bool)

(declare-fun e!2002770 () Bool)

(assert (=> b!3211957 (= e!2002770 (>= (size!27260 (_1!20925 lt!1086138)) (size!27260 Nil!36177)))))

(declare-fun bm!232476 () Bool)

(declare-fun call!232480 () tuple2!35582)

(declare-fun lt!1086112 () List!36301)

(declare-fun call!232487 () Regex!9983)

(declare-fun call!232486 () List!36301)

(assert (=> bm!232476 (= call!232480 (findLongestMatchInner!830 call!232487 lt!1086112 (+ (size!27260 Nil!36177) 1) call!232486 lt!1084664 (size!27260 lt!1084664)))))

(declare-fun bm!232477 () Bool)

(assert (=> bm!232477 (= call!232486 (tail!5212 lt!1084664))))

(declare-fun bm!232478 () Bool)

(declare-fun call!232485 () Unit!50642)

(assert (=> bm!232478 (= call!232485 (lemmaIsPrefixSameLengthThenSameList!515 lt!1084664 Nil!36177 lt!1084664))))

(declare-fun bm!232479 () Bool)

(assert (=> bm!232479 (= call!232487 (derivativeStep!2951 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) call!232484))))

(declare-fun b!3211958 () Bool)

(declare-fun e!2002772 () Unit!50642)

(declare-fun Unit!50663 () Unit!50642)

(assert (=> b!3211958 (= e!2002772 Unit!50663)))

(declare-fun b!3211959 () Bool)

(declare-fun e!2002768 () tuple2!35582)

(assert (=> b!3211959 (= e!2002768 (tuple2!35583 Nil!36177 lt!1084664))))

(declare-fun b!3211960 () Bool)

(declare-fun e!2002767 () tuple2!35582)

(assert (=> b!3211960 (= e!2002767 e!2002768)))

(declare-fun lt!1086139 () tuple2!35582)

(assert (=> b!3211960 (= lt!1086139 call!232480)))

(declare-fun c!539673 () Bool)

(assert (=> b!3211960 (= c!539673 (isEmpty!20266 (_1!20925 lt!1086139)))))

(declare-fun b!3211961 () Bool)

(assert (=> b!3211961 (= e!2002766 e!2002770)))

(declare-fun res!1307478 () Bool)

(assert (=> b!3211961 (=> res!1307478 e!2002770)))

(assert (=> b!3211961 (= res!1307478 (isEmpty!20266 (_1!20925 lt!1086138)))))

(declare-fun b!3211962 () Bool)

(declare-fun c!539675 () Bool)

(declare-fun call!232482 () Bool)

(assert (=> b!3211962 (= c!539675 call!232482)))

(declare-fun lt!1086133 () Unit!50642)

(declare-fun lt!1086131 () Unit!50642)

(assert (=> b!3211962 (= lt!1086133 lt!1086131)))

(declare-fun lt!1086119 () C!20152)

(declare-fun lt!1086136 () List!36301)

(assert (=> b!3211962 (= (++!8680 (++!8680 Nil!36177 (Cons!36177 lt!1086119 Nil!36177)) lt!1086136) lt!1084664)))

(assert (=> b!3211962 (= lt!1086131 (lemmaMoveElementToOtherListKeepsConcatEq!1120 Nil!36177 lt!1086119 lt!1086136 lt!1084664))))

(assert (=> b!3211962 (= lt!1086136 (tail!5212 lt!1084664))))

(assert (=> b!3211962 (= lt!1086119 (head!7043 lt!1084664))))

(declare-fun lt!1086126 () Unit!50642)

(declare-fun lt!1086116 () Unit!50642)

(assert (=> b!3211962 (= lt!1086126 lt!1086116)))

(assert (=> b!3211962 (isPrefix!2783 (++!8680 Nil!36177 (Cons!36177 (head!7043 (getSuffix!1386 lt!1084664 Nil!36177)) Nil!36177)) lt!1084664)))

(assert (=> b!3211962 (= lt!1086116 (lemmaAddHeadSuffixToPrefixStillPrefix!508 Nil!36177 lt!1084664))))

(declare-fun lt!1086130 () Unit!50642)

(declare-fun lt!1086118 () Unit!50642)

(assert (=> b!3211962 (= lt!1086130 lt!1086118)))

(assert (=> b!3211962 (= lt!1086118 (lemmaAddHeadSuffixToPrefixStillPrefix!508 Nil!36177 lt!1084664))))

(assert (=> b!3211962 (= lt!1086112 (++!8680 Nil!36177 (Cons!36177 (head!7043 lt!1084664) Nil!36177)))))

(declare-fun lt!1086124 () Unit!50642)

(assert (=> b!3211962 (= lt!1086124 e!2002772)))

(declare-fun c!539672 () Bool)

(assert (=> b!3211962 (= c!539672 (= (size!27260 Nil!36177) (size!27260 lt!1084664)))))

(declare-fun lt!1086128 () Unit!50642)

(declare-fun lt!1086135 () Unit!50642)

(assert (=> b!3211962 (= lt!1086128 lt!1086135)))

(assert (=> b!3211962 (<= (size!27260 Nil!36177) (size!27260 lt!1084664))))

(assert (=> b!3211962 (= lt!1086135 (lemmaIsPrefixThenSmallerEqSize!316 Nil!36177 lt!1084664))))

(declare-fun e!2002769 () tuple2!35582)

(assert (=> b!3211962 (= e!2002769 e!2002767)))

(declare-fun b!3211963 () Bool)

(declare-fun Unit!50664 () Unit!50642)

(assert (=> b!3211963 (= e!2002772 Unit!50664)))

(declare-fun lt!1086137 () Unit!50642)

(declare-fun call!232481 () Unit!50642)

(assert (=> b!3211963 (= lt!1086137 call!232481)))

(declare-fun call!232483 () Bool)

(assert (=> b!3211963 call!232483))

(declare-fun lt!1086132 () Unit!50642)

(assert (=> b!3211963 (= lt!1086132 lt!1086137)))

(declare-fun lt!1086115 () Unit!50642)

(assert (=> b!3211963 (= lt!1086115 call!232485)))

(assert (=> b!3211963 (= lt!1084664 Nil!36177)))

(declare-fun lt!1086122 () Unit!50642)

(assert (=> b!3211963 (= lt!1086122 lt!1086115)))

(assert (=> b!3211963 false))

(declare-fun b!3211964 () Bool)

(declare-fun c!539671 () Bool)

(assert (=> b!3211964 (= c!539671 call!232482)))

(declare-fun lt!1086120 () Unit!50642)

(declare-fun lt!1086127 () Unit!50642)

(assert (=> b!3211964 (= lt!1086120 lt!1086127)))

(assert (=> b!3211964 (= lt!1084664 Nil!36177)))

(assert (=> b!3211964 (= lt!1086127 call!232485)))

(declare-fun lt!1086114 () Unit!50642)

(declare-fun lt!1086121 () Unit!50642)

(assert (=> b!3211964 (= lt!1086114 lt!1086121)))

(assert (=> b!3211964 call!232483))

(assert (=> b!3211964 (= lt!1086121 call!232481)))

(declare-fun e!2002771 () tuple2!35582)

(assert (=> b!3211964 (= e!2002769 e!2002771)))

(declare-fun b!3211965 () Bool)

(assert (=> b!3211965 (= e!2002768 lt!1086139)))

(declare-fun b!3211966 () Bool)

(assert (=> b!3211966 (= e!2002765 (tuple2!35583 Nil!36177 lt!1084664))))

(declare-fun b!3211967 () Bool)

(assert (=> b!3211967 (= e!2002771 (tuple2!35583 Nil!36177 lt!1084664))))

(declare-fun b!3211968 () Bool)

(assert (=> b!3211968 (= e!2002765 e!2002769)))

(declare-fun c!539674 () Bool)

(assert (=> b!3211968 (= c!539674 (= (size!27260 Nil!36177) (size!27260 lt!1084664)))))

(declare-fun bm!232480 () Bool)

(assert (=> bm!232480 (= call!232483 (isPrefix!2783 lt!1084664 lt!1084664))))

(declare-fun bm!232481 () Bool)

(assert (=> bm!232481 (= call!232481 (lemmaIsPrefixRefl!1742 lt!1084664 lt!1084664))))

(declare-fun bm!232482 () Bool)

(assert (=> bm!232482 (= call!232482 (nullable!3398 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))))

(declare-fun b!3211969 () Bool)

(assert (=> b!3211969 (= e!2002771 (tuple2!35583 Nil!36177 Nil!36177))))

(declare-fun b!3211970 () Bool)

(assert (=> b!3211970 (= e!2002767 call!232480)))

(assert (= (and d!880493 c!539670) b!3211966))

(assert (= (and d!880493 (not c!539670)) b!3211968))

(assert (= (and b!3211968 c!539674) b!3211964))

(assert (= (and b!3211968 (not c!539674)) b!3211962))

(assert (= (and b!3211964 c!539671) b!3211969))

(assert (= (and b!3211964 (not c!539671)) b!3211967))

(assert (= (and b!3211962 c!539672) b!3211963))

(assert (= (and b!3211962 (not c!539672)) b!3211958))

(assert (= (and b!3211962 c!539675) b!3211960))

(assert (= (and b!3211962 (not c!539675)) b!3211970))

(assert (= (and b!3211960 c!539673) b!3211959))

(assert (= (and b!3211960 (not c!539673)) b!3211965))

(assert (= (or b!3211960 b!3211970) bm!232475))

(assert (= (or b!3211960 b!3211970) bm!232477))

(assert (= (or b!3211960 b!3211970) bm!232479))

(assert (= (or b!3211960 b!3211970) bm!232476))

(assert (= (or b!3211964 b!3211963) bm!232481))

(assert (= (or b!3211964 b!3211963) bm!232480))

(assert (= (or b!3211964 b!3211963) bm!232478))

(assert (= (or b!3211964 b!3211962) bm!232482))

(assert (= (and d!880493 res!1307479) b!3211961))

(assert (= (and b!3211961 (not res!1307478)) b!3211957))

(declare-fun m!3481981 () Bool)

(assert (=> bm!232479 m!3481981))

(assert (=> bm!232482 m!3480023))

(declare-fun m!3481983 () Bool)

(assert (=> bm!232480 m!3481983))

(assert (=> bm!232476 m!3476801))

(declare-fun m!3481987 () Bool)

(assert (=> bm!232476 m!3481987))

(declare-fun m!3481989 () Bool)

(assert (=> b!3211960 m!3481989))

(declare-fun m!3481991 () Bool)

(assert (=> b!3211961 m!3481991))

(declare-fun m!3481993 () Bool)

(assert (=> bm!232478 m!3481993))

(declare-fun m!3481995 () Bool)

(assert (=> bm!232481 m!3481995))

(declare-fun m!3481997 () Bool)

(assert (=> d!880493 m!3481997))

(declare-fun m!3481999 () Bool)

(assert (=> d!880493 m!3481999))

(declare-fun m!3482001 () Bool)

(assert (=> d!880493 m!3482001))

(declare-fun m!3482003 () Bool)

(assert (=> d!880493 m!3482003))

(declare-fun m!3482007 () Bool)

(assert (=> d!880493 m!3482007))

(assert (=> d!880493 m!3480001))

(declare-fun m!3482011 () Bool)

(assert (=> d!880493 m!3482011))

(assert (=> d!880493 m!3482001))

(declare-fun m!3482013 () Bool)

(assert (=> d!880493 m!3482013))

(assert (=> b!3211962 m!3478287))

(assert (=> b!3211962 m!3478283))

(declare-fun m!3482015 () Bool)

(assert (=> b!3211962 m!3482015))

(declare-fun m!3482017 () Bool)

(assert (=> b!3211962 m!3482017))

(assert (=> b!3211962 m!3482017))

(declare-fun m!3482019 () Bool)

(assert (=> b!3211962 m!3482019))

(declare-fun m!3482021 () Bool)

(assert (=> b!3211962 m!3482021))

(declare-fun m!3482023 () Bool)

(assert (=> b!3211962 m!3482023))

(assert (=> b!3211962 m!3482013))

(assert (=> b!3211962 m!3477569))

(declare-fun m!3482025 () Bool)

(assert (=> b!3211962 m!3482025))

(declare-fun m!3482027 () Bool)

(assert (=> b!3211962 m!3482027))

(declare-fun m!3482029 () Bool)

(assert (=> b!3211962 m!3482029))

(assert (=> b!3211962 m!3482027))

(assert (=> b!3211962 m!3482013))

(declare-fun m!3482031 () Bool)

(assert (=> b!3211962 m!3482031))

(assert (=> b!3211962 m!3476801))

(assert (=> bm!232477 m!3478287))

(declare-fun m!3482035 () Bool)

(assert (=> b!3211957 m!3482035))

(assert (=> b!3211957 m!3477569))

(assert (=> bm!232475 m!3478283))

(assert (=> b!3209664 d!880493))

(declare-fun d!880509 () Bool)

(assert (=> d!880509 (= (isEmpty!20266 (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) Nil!36177 (size!27260 Nil!36177) lt!1084664 lt!1084664 (size!27260 lt!1084664)))) ((_ is Nil!36177) (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) Nil!36177 (size!27260 Nil!36177) lt!1084664 lt!1084664 (size!27260 lt!1084664)))))))

(assert (=> b!3209664 d!880509))

(assert (=> b!3209664 d!879855))

(declare-fun d!880511 () Bool)

(declare-fun lt!1086143 () Int)

(assert (=> d!880511 (= lt!1086143 (size!27260 (list!12865 (seqFromList!3519 (_1!20925 lt!1084879)))))))

(assert (=> d!880511 (= lt!1086143 (size!27268 (c!538931 (seqFromList!3519 (_1!20925 lt!1084879)))))))

(assert (=> d!880511 (= (size!27263 (seqFromList!3519 (_1!20925 lt!1084879))) lt!1086143)))

(declare-fun bs!541813 () Bool)

(assert (= bs!541813 d!880511))

(assert (=> bs!541813 m!3477571))

(assert (=> bs!541813 m!3481943))

(assert (=> bs!541813 m!3481943))

(declare-fun m!3482043 () Bool)

(assert (=> bs!541813 m!3482043))

(declare-fun m!3482047 () Bool)

(assert (=> bs!541813 m!3482047))

(assert (=> b!3209664 d!880511))

(declare-fun d!880515 () Bool)

(assert (=> d!880515 (= (seqFromList!3519 (_1!20925 lt!1084879)) (fromListB!1541 (_1!20925 lt!1084879)))))

(declare-fun bs!541815 () Bool)

(assert (= bs!541815 d!880515))

(declare-fun m!3482049 () Bool)

(assert (=> bs!541815 m!3482049))

(assert (=> b!3209664 d!880515))

(declare-fun d!880519 () Bool)

(assert (=> d!880519 (= (isDefined!5555 lt!1084932) (not (isEmpty!20271 lt!1084932)))))

(declare-fun bs!541816 () Bool)

(assert (= bs!541816 d!880519))

(assert (=> bs!541816 m!3477741))

(assert (=> b!3209748 d!880519))

(declare-fun d!880521 () Bool)

(declare-fun lt!1086147 () List!36301)

(assert (=> d!880521 (= lt!1086147 (++!8680 (list!12865 (BalanceConc!21261 Empty!10823)) (printList!1363 thiss!18206 (dropList!1078 lt!1084669 0))))))

(declare-fun e!2002780 () List!36301)

(assert (=> d!880521 (= lt!1086147 e!2002780)))

(declare-fun c!539679 () Bool)

(assert (=> d!880521 (= c!539679 ((_ is Cons!36179) (dropList!1078 lt!1084669 0)))))

(assert (=> d!880521 (= (printListTailRec!561 thiss!18206 (dropList!1078 lt!1084669 0) (list!12865 (BalanceConc!21261 Empty!10823))) lt!1086147)))

(declare-fun b!3211984 () Bool)

(assert (=> b!3211984 (= e!2002780 (printListTailRec!561 thiss!18206 (t!238514 (dropList!1078 lt!1084669 0)) (++!8680 (list!12865 (BalanceConc!21261 Empty!10823)) (list!12865 (charsOf!3240 (h!41599 (dropList!1078 lt!1084669 0)))))))))

(declare-fun lt!1086148 () List!36301)

(assert (=> b!3211984 (= lt!1086148 (list!12865 (charsOf!3240 (h!41599 (dropList!1078 lt!1084669 0)))))))

(declare-fun lt!1086145 () List!36301)

(assert (=> b!3211984 (= lt!1086145 (printList!1363 thiss!18206 (t!238514 (dropList!1078 lt!1084669 0))))))

(declare-fun lt!1086149 () Unit!50642)

(assert (=> b!3211984 (= lt!1086149 (lemmaConcatAssociativity!1746 (list!12865 (BalanceConc!21261 Empty!10823)) lt!1086148 lt!1086145))))

(assert (=> b!3211984 (= (++!8680 (++!8680 (list!12865 (BalanceConc!21261 Empty!10823)) lt!1086148) lt!1086145) (++!8680 (list!12865 (BalanceConc!21261 Empty!10823)) (++!8680 lt!1086148 lt!1086145)))))

(declare-fun lt!1086146 () Unit!50642)

(assert (=> b!3211984 (= lt!1086146 lt!1086149)))

(declare-fun b!3211985 () Bool)

(assert (=> b!3211985 (= e!2002780 (list!12865 (BalanceConc!21261 Empty!10823)))))

(assert (= (and d!880521 c!539679) b!3211984))

(assert (= (and d!880521 (not c!539679)) b!3211985))

(assert (=> d!880521 m!3477973))

(declare-fun m!3482071 () Bool)

(assert (=> d!880521 m!3482071))

(assert (=> d!880521 m!3476993))

(assert (=> d!880521 m!3482071))

(declare-fun m!3482073 () Bool)

(assert (=> d!880521 m!3482073))

(declare-fun m!3482075 () Bool)

(assert (=> b!3211984 m!3482075))

(assert (=> b!3211984 m!3476993))

(declare-fun m!3482077 () Bool)

(assert (=> b!3211984 m!3482077))

(declare-fun m!3482079 () Bool)

(assert (=> b!3211984 m!3482079))

(assert (=> b!3211984 m!3476993))

(declare-fun m!3482081 () Bool)

(assert (=> b!3211984 m!3482081))

(assert (=> b!3211984 m!3476993))

(declare-fun m!3482083 () Bool)

(assert (=> b!3211984 m!3482083))

(assert (=> b!3211984 m!3482081))

(declare-fun m!3482085 () Bool)

(assert (=> b!3211984 m!3482085))

(declare-fun m!3482087 () Bool)

(assert (=> b!3211984 m!3482087))

(declare-fun m!3482089 () Bool)

(assert (=> b!3211984 m!3482089))

(declare-fun m!3482091 () Bool)

(assert (=> b!3211984 m!3482091))

(assert (=> b!3211984 m!3482077))

(assert (=> b!3211984 m!3476993))

(declare-fun m!3482093 () Bool)

(assert (=> b!3211984 m!3482093))

(assert (=> b!3211984 m!3482089))

(assert (=> b!3211984 m!3482075))

(assert (=> b!3211984 m!3482093))

(assert (=> d!879175 d!880521))

(declare-fun d!880527 () Bool)

(declare-fun lt!1086151 () Int)

(assert (=> d!880527 (= lt!1086151 (size!27264 (list!12869 lt!1084669)))))

(assert (=> d!880527 (= lt!1086151 (size!27265 (c!538932 lt!1084669)))))

(assert (=> d!880527 (= (size!27261 lt!1084669) lt!1086151)))

(declare-fun bs!541817 () Bool)

(assert (= bs!541817 d!880527))

(assert (=> bs!541817 m!3477363))

(assert (=> bs!541817 m!3477363))

(declare-fun m!3482109 () Bool)

(assert (=> bs!541817 m!3482109))

(declare-fun m!3482111 () Bool)

(assert (=> bs!541817 m!3482111))

(assert (=> d!879175 d!880527))

(assert (=> d!879175 d!879461))

(declare-fun d!880531 () Bool)

(assert (=> d!880531 (= (list!12865 lt!1084991) (list!12868 (c!538931 lt!1084991)))))

(declare-fun bs!541818 () Bool)

(assert (= bs!541818 d!880531))

(declare-fun m!3482113 () Bool)

(assert (=> bs!541818 m!3482113))

(assert (=> d!879175 d!880531))

(declare-fun d!880533 () Bool)

(assert (=> d!880533 (= (dropList!1078 lt!1084669 0) (drop!1861 (list!12871 (c!538932 lt!1084669)) 0))))

(declare-fun bs!541819 () Bool)

(assert (= bs!541819 d!880533))

(assert (=> bs!541819 m!3480063))

(assert (=> bs!541819 m!3480063))

(declare-fun m!3482115 () Bool)

(assert (=> bs!541819 m!3482115))

(assert (=> d!879175 d!880533))

(assert (=> b!3209857 d!880293))

(assert (=> b!3209857 d!879023))

(declare-fun d!880535 () Bool)

(declare-fun lt!1086153 () BalanceConc!21260)

(assert (=> d!880535 (= (list!12865 lt!1086153) (originalCharacters!5938 (h!41599 (t!238514 (t!238514 tokens!494)))))))

(assert (=> d!880535 (= lt!1086153 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (value!169344 (h!41599 (t!238514 (t!238514 tokens!494))))))))

(assert (=> d!880535 (= (charsOf!3240 (h!41599 (t!238514 (t!238514 tokens!494)))) lt!1086153)))

(declare-fun b_lambda!88041 () Bool)

(assert (=> (not b_lambda!88041) (not d!880535)))

(declare-fun t!238920 () Bool)

(declare-fun tb!157941 () Bool)

(assert (=> (and b!3210119 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494))))))) t!238920) tb!157941))

(declare-fun b!3211994 () Bool)

(declare-fun e!2002785 () Bool)

(declare-fun tp!1013392 () Bool)

(assert (=> b!3211994 (= e!2002785 (and (inv!49039 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (value!169344 (h!41599 (t!238514 (t!238514 tokens!494))))))) tp!1013392))))

(declare-fun result!200306 () Bool)

(assert (=> tb!157941 (= result!200306 (and (inv!49040 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (value!169344 (h!41599 (t!238514 (t!238514 tokens!494)))))) e!2002785))))

(assert (= tb!157941 b!3211994))

(declare-fun m!3482135 () Bool)

(assert (=> b!3211994 m!3482135))

(declare-fun m!3482137 () Bool)

(assert (=> tb!157941 m!3482137))

(assert (=> d!880535 t!238920))

(declare-fun b_and!214143 () Bool)

(assert (= b_and!214121 (and (=> t!238920 result!200306) b_and!214143)))

(declare-fun t!238922 () Bool)

(declare-fun tb!157943 () Bool)

(assert (=> (and b!3209139 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494))))))) t!238922) tb!157943))

(declare-fun result!200308 () Bool)

(assert (= result!200308 result!200306))

(assert (=> d!880535 t!238922))

(declare-fun b_and!214145 () Bool)

(assert (= b_and!214109 (and (=> t!238922 result!200308) b_and!214145)))

(declare-fun tb!157945 () Bool)

(declare-fun t!238924 () Bool)

(assert (=> (and b!3209120 (= (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494))))))) t!238924) tb!157945))

(declare-fun result!200310 () Bool)

(assert (= result!200310 result!200306))

(assert (=> d!880535 t!238924))

(declare-fun b_and!214147 () Bool)

(assert (= b_and!214105 (and (=> t!238924 result!200310) b_and!214147)))

(declare-fun t!238926 () Bool)

(declare-fun tb!157947 () Bool)

(assert (=> (and b!3210083 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494))))))) t!238926) tb!157947))

(declare-fun result!200312 () Bool)

(assert (= result!200312 result!200306))

(assert (=> d!880535 t!238926))

(declare-fun b_and!214149 () Bool)

(assert (= b_and!214117 (and (=> t!238926 result!200312) b_and!214149)))

(declare-fun t!238928 () Bool)

(declare-fun tb!157949 () Bool)

(assert (=> (and b!3209140 (= (toChars!7167 (transformation!5224 (h!41598 rules!2135))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494))))))) t!238928) tb!157949))

(declare-fun result!200314 () Bool)

(assert (= result!200314 result!200306))

(assert (=> d!880535 t!238928))

(declare-fun b_and!214151 () Bool)

(assert (= b_and!214113 (and (=> t!238928 result!200314) b_and!214151)))

(declare-fun m!3482139 () Bool)

(assert (=> d!880535 m!3482139))

(declare-fun m!3482141 () Bool)

(assert (=> d!880535 m!3482141))

(assert (=> b!3210068 d!880535))

(declare-fun d!880543 () Bool)

(assert (=> d!880543 (= (list!12865 (charsOf!3240 (h!41599 (t!238514 (t!238514 tokens!494))))) (list!12868 (c!538931 (charsOf!3240 (h!41599 (t!238514 (t!238514 tokens!494)))))))))

(declare-fun bs!541822 () Bool)

(assert (= bs!541822 d!880543))

(declare-fun m!3482143 () Bool)

(assert (=> bs!541822 m!3482143))

(assert (=> b!3210068 d!880543))

(declare-fun d!880545 () Bool)

(declare-fun c!539685 () Bool)

(assert (=> d!880545 (= c!539685 ((_ is Cons!36179) (t!238514 (t!238514 (t!238514 tokens!494)))))))

(declare-fun e!2002793 () List!36301)

(assert (=> d!880545 (= (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 (t!238514 tokens!494))) separatorToken!241) e!2002793)))

(declare-fun b!3212009 () Bool)

(assert (=> b!3212009 (= e!2002793 (++!8680 (++!8680 (list!12865 (charsOf!3240 (h!41599 (t!238514 (t!238514 (t!238514 tokens!494)))))) (list!12865 (charsOf!3240 separatorToken!241))) (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 (t!238514 (t!238514 tokens!494)))) separatorToken!241)))))

(declare-fun b!3212010 () Bool)

(assert (=> b!3212010 (= e!2002793 Nil!36177)))

(assert (= (and d!880545 c!539685) b!3212009))

(assert (= (and d!880545 (not c!539685)) b!3212010))

(assert (=> b!3212009 m!3476693))

(assert (=> b!3212009 m!3476707))

(assert (=> b!3212009 m!3476693))

(declare-fun m!3482155 () Bool)

(assert (=> b!3212009 m!3482155))

(declare-fun m!3482157 () Bool)

(assert (=> b!3212009 m!3482157))

(assert (=> b!3212009 m!3476707))

(declare-fun m!3482159 () Bool)

(assert (=> b!3212009 m!3482159))

(assert (=> b!3212009 m!3482155))

(assert (=> b!3212009 m!3482157))

(declare-fun m!3482163 () Bool)

(assert (=> b!3212009 m!3482163))

(assert (=> b!3212009 m!3482159))

(assert (=> b!3212009 m!3482163))

(declare-fun m!3482169 () Bool)

(assert (=> b!3212009 m!3482169))

(assert (=> b!3210068 d!880545))

(declare-fun b!3212011 () Bool)

(declare-fun e!2002794 () List!36301)

(assert (=> b!3212011 (= e!2002794 (list!12865 (charsOf!3240 separatorToken!241)))))

(declare-fun lt!1086155 () List!36301)

(declare-fun b!3212014 () Bool)

(declare-fun e!2002795 () Bool)

(assert (=> b!3212014 (= e!2002795 (or (not (= (list!12865 (charsOf!3240 separatorToken!241)) Nil!36177)) (= lt!1086155 (list!12865 (charsOf!3240 (h!41599 (t!238514 (t!238514 tokens!494))))))))))

(declare-fun b!3212013 () Bool)

(declare-fun res!1307498 () Bool)

(assert (=> b!3212013 (=> (not res!1307498) (not e!2002795))))

(assert (=> b!3212013 (= res!1307498 (= (size!27260 lt!1086155) (+ (size!27260 (list!12865 (charsOf!3240 (h!41599 (t!238514 (t!238514 tokens!494)))))) (size!27260 (list!12865 (charsOf!3240 separatorToken!241))))))))

(declare-fun d!880547 () Bool)

(assert (=> d!880547 e!2002795))

(declare-fun res!1307499 () Bool)

(assert (=> d!880547 (=> (not res!1307499) (not e!2002795))))

(assert (=> d!880547 (= res!1307499 (= (content!4888 lt!1086155) ((_ map or) (content!4888 (list!12865 (charsOf!3240 (h!41599 (t!238514 (t!238514 tokens!494)))))) (content!4888 (list!12865 (charsOf!3240 separatorToken!241))))))))

(assert (=> d!880547 (= lt!1086155 e!2002794)))

(declare-fun c!539686 () Bool)

(assert (=> d!880547 (= c!539686 ((_ is Nil!36177) (list!12865 (charsOf!3240 (h!41599 (t!238514 (t!238514 tokens!494)))))))))

(assert (=> d!880547 (= (++!8680 (list!12865 (charsOf!3240 (h!41599 (t!238514 (t!238514 tokens!494))))) (list!12865 (charsOf!3240 separatorToken!241))) lt!1086155)))

(declare-fun b!3212012 () Bool)

(assert (=> b!3212012 (= e!2002794 (Cons!36177 (h!41597 (list!12865 (charsOf!3240 (h!41599 (t!238514 (t!238514 tokens!494)))))) (++!8680 (t!238512 (list!12865 (charsOf!3240 (h!41599 (t!238514 (t!238514 tokens!494)))))) (list!12865 (charsOf!3240 separatorToken!241)))))))

(assert (= (and d!880547 c!539686) b!3212011))

(assert (= (and d!880547 (not c!539686)) b!3212012))

(assert (= (and d!880547 res!1307499) b!3212013))

(assert (= (and b!3212013 res!1307498) b!3212014))

(declare-fun m!3482173 () Bool)

(assert (=> b!3212013 m!3482173))

(assert (=> b!3212013 m!3478405))

(declare-fun m!3482175 () Bool)

(assert (=> b!3212013 m!3482175))

(assert (=> b!3212013 m!3476707))

(assert (=> b!3212013 m!3481299))

(declare-fun m!3482177 () Bool)

(assert (=> d!880547 m!3482177))

(assert (=> d!880547 m!3478405))

(declare-fun m!3482179 () Bool)

(assert (=> d!880547 m!3482179))

(assert (=> d!880547 m!3476707))

(assert (=> d!880547 m!3481305))

(assert (=> b!3212012 m!3476707))

(declare-fun m!3482181 () Bool)

(assert (=> b!3212012 m!3482181))

(assert (=> b!3210068 d!880547))

(assert (=> b!3210068 d!879293))

(assert (=> b!3210068 d!879303))

(declare-fun e!2002799 () List!36301)

(declare-fun b!3212020 () Bool)

(assert (=> b!3212020 (= e!2002799 (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 (t!238514 tokens!494))) separatorToken!241))))

(declare-fun b!3212023 () Bool)

(declare-fun e!2002800 () Bool)

(declare-fun lt!1086157 () List!36301)

(assert (=> b!3212023 (= e!2002800 (or (not (= (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 (t!238514 tokens!494))) separatorToken!241) Nil!36177)) (= lt!1086157 (++!8680 (list!12865 (charsOf!3240 (h!41599 (t!238514 (t!238514 tokens!494))))) (list!12865 (charsOf!3240 separatorToken!241))))))))

(declare-fun b!3212022 () Bool)

(declare-fun res!1307503 () Bool)

(assert (=> b!3212022 (=> (not res!1307503) (not e!2002800))))

(assert (=> b!3212022 (= res!1307503 (= (size!27260 lt!1086157) (+ (size!27260 (++!8680 (list!12865 (charsOf!3240 (h!41599 (t!238514 (t!238514 tokens!494))))) (list!12865 (charsOf!3240 separatorToken!241)))) (size!27260 (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 (t!238514 tokens!494))) separatorToken!241)))))))

(declare-fun d!880555 () Bool)

(assert (=> d!880555 e!2002800))

(declare-fun res!1307504 () Bool)

(assert (=> d!880555 (=> (not res!1307504) (not e!2002800))))

(assert (=> d!880555 (= res!1307504 (= (content!4888 lt!1086157) ((_ map or) (content!4888 (++!8680 (list!12865 (charsOf!3240 (h!41599 (t!238514 (t!238514 tokens!494))))) (list!12865 (charsOf!3240 separatorToken!241)))) (content!4888 (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 (t!238514 tokens!494))) separatorToken!241)))))))

(assert (=> d!880555 (= lt!1086157 e!2002799)))

(declare-fun c!539688 () Bool)

(assert (=> d!880555 (= c!539688 ((_ is Nil!36177) (++!8680 (list!12865 (charsOf!3240 (h!41599 (t!238514 (t!238514 tokens!494))))) (list!12865 (charsOf!3240 separatorToken!241)))))))

(assert (=> d!880555 (= (++!8680 (++!8680 (list!12865 (charsOf!3240 (h!41599 (t!238514 (t!238514 tokens!494))))) (list!12865 (charsOf!3240 separatorToken!241))) (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 (t!238514 tokens!494))) separatorToken!241)) lt!1086157)))

(declare-fun b!3212021 () Bool)

(assert (=> b!3212021 (= e!2002799 (Cons!36177 (h!41597 (++!8680 (list!12865 (charsOf!3240 (h!41599 (t!238514 (t!238514 tokens!494))))) (list!12865 (charsOf!3240 separatorToken!241)))) (++!8680 (t!238512 (++!8680 (list!12865 (charsOf!3240 (h!41599 (t!238514 (t!238514 tokens!494))))) (list!12865 (charsOf!3240 separatorToken!241)))) (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 (t!238514 tokens!494))) separatorToken!241))))))

(assert (= (and d!880555 c!539688) b!3212020))

(assert (= (and d!880555 (not c!539688)) b!3212021))

(assert (= (and d!880555 res!1307504) b!3212022))

(assert (= (and b!3212022 res!1307503) b!3212023))

(declare-fun m!3482193 () Bool)

(assert (=> b!3212022 m!3482193))

(assert (=> b!3212022 m!3478407))

(declare-fun m!3482199 () Bool)

(assert (=> b!3212022 m!3482199))

(assert (=> b!3212022 m!3478409))

(declare-fun m!3482201 () Bool)

(assert (=> b!3212022 m!3482201))

(declare-fun m!3482203 () Bool)

(assert (=> d!880555 m!3482203))

(assert (=> d!880555 m!3478407))

(declare-fun m!3482207 () Bool)

(assert (=> d!880555 m!3482207))

(assert (=> d!880555 m!3478409))

(declare-fun m!3482211 () Bool)

(assert (=> d!880555 m!3482211))

(assert (=> b!3212021 m!3478409))

(declare-fun m!3482213 () Bool)

(assert (=> b!3212021 m!3482213))

(assert (=> b!3210068 d!880555))

(declare-fun d!880559 () Bool)

(declare-fun lt!1086159 () Int)

(assert (=> d!880559 (>= lt!1086159 0)))

(declare-fun e!2002801 () Int)

(assert (=> d!880559 (= lt!1086159 e!2002801)))

(declare-fun c!539689 () Bool)

(assert (=> d!880559 (= c!539689 ((_ is Nil!36177) (originalCharacters!5938 (h!41599 tokens!494))))))

(assert (=> d!880559 (= (size!27260 (originalCharacters!5938 (h!41599 tokens!494))) lt!1086159)))

(declare-fun b!3212024 () Bool)

(assert (=> b!3212024 (= e!2002801 0)))

(declare-fun b!3212025 () Bool)

(assert (=> b!3212025 (= e!2002801 (+ 1 (size!27260 (t!238512 (originalCharacters!5938 (h!41599 tokens!494))))))))

(assert (= (and d!880559 c!539689) b!3212024))

(assert (= (and d!880559 (not c!539689)) b!3212025))

(declare-fun m!3482217 () Bool)

(assert (=> b!3212025 m!3482217))

(assert (=> b!3209347 d!880559))

(declare-fun d!880561 () Bool)

(declare-fun lt!1086160 () Token!9814)

(assert (=> d!880561 (contains!6463 (list!12869 (_1!20922 lt!1084679)) lt!1086160)))

(declare-fun e!2002802 () Token!9814)

(assert (=> d!880561 (= lt!1086160 e!2002802)))

(declare-fun c!539690 () Bool)

(assert (=> d!880561 (= c!539690 (= 0 0))))

(declare-fun e!2002803 () Bool)

(assert (=> d!880561 e!2002803))

(declare-fun res!1307505 () Bool)

(assert (=> d!880561 (=> (not res!1307505) (not e!2002803))))

(assert (=> d!880561 (= res!1307505 (<= 0 0))))

(assert (=> d!880561 (= (apply!8200 (list!12869 (_1!20922 lt!1084679)) 0) lt!1086160)))

(declare-fun b!3212026 () Bool)

(assert (=> b!3212026 (= e!2002803 (< 0 (size!27264 (list!12869 (_1!20922 lt!1084679)))))))

(declare-fun b!3212027 () Bool)

(assert (=> b!3212027 (= e!2002802 (head!7045 (list!12869 (_1!20922 lt!1084679))))))

(declare-fun b!3212028 () Bool)

(assert (=> b!3212028 (= e!2002802 (apply!8200 (tail!5213 (list!12869 (_1!20922 lt!1084679))) (- 0 1)))))

(assert (= (and d!880561 res!1307505) b!3212026))

(assert (= (and d!880561 c!539690) b!3212027))

(assert (= (and d!880561 (not c!539690)) b!3212028))

(assert (=> d!880561 m!3477711))

(declare-fun m!3482225 () Bool)

(assert (=> d!880561 m!3482225))

(assert (=> b!3212026 m!3477711))

(assert (=> b!3212026 m!3477713))

(assert (=> b!3212027 m!3477711))

(declare-fun m!3482231 () Bool)

(assert (=> b!3212027 m!3482231))

(assert (=> b!3212028 m!3477711))

(declare-fun m!3482233 () Bool)

(assert (=> b!3212028 m!3482233))

(assert (=> b!3212028 m!3482233))

(declare-fun m!3482235 () Bool)

(assert (=> b!3212028 m!3482235))

(assert (=> d!879203 d!880561))

(declare-fun d!880569 () Bool)

(assert (=> d!880569 (= (list!12869 (_1!20922 lt!1084679)) (list!12871 (c!538932 (_1!20922 lt!1084679))))))

(declare-fun bs!541828 () Bool)

(assert (= bs!541828 d!880569))

(declare-fun m!3482243 () Bool)

(assert (=> bs!541828 m!3482243))

(assert (=> d!879203 d!880569))

(declare-fun b!3212086 () Bool)

(declare-fun e!2002839 () Int)

(assert (=> b!3212086 (= e!2002839 0)))

(declare-fun b!3212087 () Bool)

(declare-fun e!2002836 () Token!9814)

(declare-fun e!2002837 () Token!9814)

(assert (=> b!3212087 (= e!2002836 e!2002837)))

(declare-fun lt!1086179 () Bool)

(declare-fun appendIndex!308 (List!36303 List!36303 Int) Bool)

(assert (=> b!3212087 (= lt!1086179 (appendIndex!308 (list!12871 (left!28134 (c!538932 (_1!20922 lt!1084679)))) (list!12871 (right!28464 (c!538932 (_1!20922 lt!1084679)))) 0))))

(declare-fun c!539709 () Bool)

(assert (=> b!3212087 (= c!539709 (< 0 (size!27265 (left!28134 (c!538932 (_1!20922 lt!1084679))))))))

(declare-fun b!3212088 () Bool)

(declare-fun call!232492 () Token!9814)

(assert (=> b!3212088 (= e!2002837 call!232492)))

(declare-fun b!3212089 () Bool)

(assert (=> b!3212089 (= e!2002839 (- 0 (size!27265 (left!28134 (c!538932 (_1!20922 lt!1084679))))))))

(declare-fun d!880573 () Bool)

(declare-fun lt!1086178 () Token!9814)

(assert (=> d!880573 (= lt!1086178 (apply!8200 (list!12871 (c!538932 (_1!20922 lt!1084679))) 0))))

(assert (=> d!880573 (= lt!1086178 e!2002836)))

(declare-fun c!539711 () Bool)

(assert (=> d!880573 (= c!539711 ((_ is Leaf!17047) (c!538932 (_1!20922 lt!1084679))))))

(declare-fun e!2002838 () Bool)

(assert (=> d!880573 e!2002838))

(declare-fun res!1307529 () Bool)

(assert (=> d!880573 (=> (not res!1307529) (not e!2002838))))

(assert (=> d!880573 (= res!1307529 (<= 0 0))))

(assert (=> d!880573 (= (apply!8202 (c!538932 (_1!20922 lt!1084679)) 0) lt!1086178)))

(declare-fun b!3212090 () Bool)

(declare-fun apply!8204 (IArray!21653 Int) Token!9814)

(assert (=> b!3212090 (= e!2002836 (apply!8204 (xs!13942 (c!538932 (_1!20922 lt!1084679))) 0))))

(declare-fun bm!232487 () Bool)

(declare-fun c!539710 () Bool)

(assert (=> bm!232487 (= c!539710 c!539709)))

(assert (=> bm!232487 (= call!232492 (apply!8202 (ite c!539709 (left!28134 (c!538932 (_1!20922 lt!1084679))) (right!28464 (c!538932 (_1!20922 lt!1084679)))) e!2002839))))

(declare-fun b!3212091 () Bool)

(assert (=> b!3212091 (= e!2002837 call!232492)))

(declare-fun b!3212092 () Bool)

(assert (=> b!3212092 (= e!2002838 (< 0 (size!27265 (c!538932 (_1!20922 lt!1084679)))))))

(assert (= (and d!880573 res!1307529) b!3212092))

(assert (= (and d!880573 c!539711) b!3212090))

(assert (= (and d!880573 (not c!539711)) b!3212087))

(assert (= (and b!3212087 c!539709) b!3212088))

(assert (= (and b!3212087 (not c!539709)) b!3212091))

(assert (= (or b!3212088 b!3212091) bm!232487))

(assert (= (and bm!232487 c!539710) b!3212086))

(assert (= (and bm!232487 (not c!539710)) b!3212089))

(assert (=> b!3212092 m!3477715))

(declare-fun m!3482329 () Bool)

(assert (=> b!3212089 m!3482329))

(declare-fun m!3482331 () Bool)

(assert (=> bm!232487 m!3482331))

(declare-fun m!3482333 () Bool)

(assert (=> b!3212090 m!3482333))

(assert (=> d!880573 m!3482243))

(assert (=> d!880573 m!3482243))

(declare-fun m!3482335 () Bool)

(assert (=> d!880573 m!3482335))

(declare-fun m!3482337 () Bool)

(assert (=> b!3212087 m!3482337))

(declare-fun m!3482339 () Bool)

(assert (=> b!3212087 m!3482339))

(assert (=> b!3212087 m!3482337))

(assert (=> b!3212087 m!3482339))

(declare-fun m!3482345 () Bool)

(assert (=> b!3212087 m!3482345))

(assert (=> b!3212087 m!3482329))

(assert (=> d!879203 d!880573))

(assert (=> b!3210028 d!880271))

(assert (=> b!3210028 d!880021))

(declare-fun d!880609 () Bool)

(assert (=> d!880609 (= (dropList!1078 lt!1084657 0) (drop!1861 (list!12871 (c!538932 lt!1084657)) 0))))

(declare-fun bs!541834 () Bool)

(assert (= bs!541834 d!880609))

(assert (=> bs!541834 m!3481443))

(assert (=> bs!541834 m!3481443))

(declare-fun m!3482349 () Bool)

(assert (=> bs!541834 m!3482349))

(assert (=> d!879157 d!880609))

(declare-fun d!880613 () Bool)

(declare-fun lt!1086185 () List!36301)

(assert (=> d!880613 (= lt!1086185 (++!8680 (list!12865 (BalanceConc!21261 Empty!10823)) (printList!1363 thiss!18206 (dropList!1078 lt!1084657 0))))))

(declare-fun e!2002843 () List!36301)

(assert (=> d!880613 (= lt!1086185 e!2002843)))

(declare-fun c!539714 () Bool)

(assert (=> d!880613 (= c!539714 ((_ is Cons!36179) (dropList!1078 lt!1084657 0)))))

(assert (=> d!880613 (= (printListTailRec!561 thiss!18206 (dropList!1078 lt!1084657 0) (list!12865 (BalanceConc!21261 Empty!10823))) lt!1086185)))

(declare-fun b!3212098 () Bool)

(assert (=> b!3212098 (= e!2002843 (printListTailRec!561 thiss!18206 (t!238514 (dropList!1078 lt!1084657 0)) (++!8680 (list!12865 (BalanceConc!21261 Empty!10823)) (list!12865 (charsOf!3240 (h!41599 (dropList!1078 lt!1084657 0)))))))))

(declare-fun lt!1086186 () List!36301)

(assert (=> b!3212098 (= lt!1086186 (list!12865 (charsOf!3240 (h!41599 (dropList!1078 lt!1084657 0)))))))

(declare-fun lt!1086183 () List!36301)

(assert (=> b!3212098 (= lt!1086183 (printList!1363 thiss!18206 (t!238514 (dropList!1078 lt!1084657 0))))))

(declare-fun lt!1086187 () Unit!50642)

(assert (=> b!3212098 (= lt!1086187 (lemmaConcatAssociativity!1746 (list!12865 (BalanceConc!21261 Empty!10823)) lt!1086186 lt!1086183))))

(assert (=> b!3212098 (= (++!8680 (++!8680 (list!12865 (BalanceConc!21261 Empty!10823)) lt!1086186) lt!1086183) (++!8680 (list!12865 (BalanceConc!21261 Empty!10823)) (++!8680 lt!1086186 lt!1086183)))))

(declare-fun lt!1086184 () Unit!50642)

(assert (=> b!3212098 (= lt!1086184 lt!1086187)))

(declare-fun b!3212099 () Bool)

(assert (=> b!3212099 (= e!2002843 (list!12865 (BalanceConc!21261 Empty!10823)))))

(assert (= (and d!880613 c!539714) b!3212098))

(assert (= (and d!880613 (not c!539714)) b!3212099))

(assert (=> d!880613 m!3477801))

(declare-fun m!3482359 () Bool)

(assert (=> d!880613 m!3482359))

(assert (=> d!880613 m!3476993))

(assert (=> d!880613 m!3482359))

(declare-fun m!3482361 () Bool)

(assert (=> d!880613 m!3482361))

(declare-fun m!3482363 () Bool)

(assert (=> b!3212098 m!3482363))

(assert (=> b!3212098 m!3476993))

(declare-fun m!3482365 () Bool)

(assert (=> b!3212098 m!3482365))

(declare-fun m!3482367 () Bool)

(assert (=> b!3212098 m!3482367))

(assert (=> b!3212098 m!3476993))

(declare-fun m!3482369 () Bool)

(assert (=> b!3212098 m!3482369))

(assert (=> b!3212098 m!3476993))

(declare-fun m!3482371 () Bool)

(assert (=> b!3212098 m!3482371))

(assert (=> b!3212098 m!3482369))

(declare-fun m!3482373 () Bool)

(assert (=> b!3212098 m!3482373))

(declare-fun m!3482375 () Bool)

(assert (=> b!3212098 m!3482375))

(declare-fun m!3482377 () Bool)

(assert (=> b!3212098 m!3482377))

(declare-fun m!3482381 () Bool)

(assert (=> b!3212098 m!3482381))

(assert (=> b!3212098 m!3482365))

(assert (=> b!3212098 m!3476993))

(declare-fun m!3482385 () Bool)

(assert (=> b!3212098 m!3482385))

(assert (=> b!3212098 m!3482377))

(assert (=> b!3212098 m!3482363))

(assert (=> b!3212098 m!3482385))

(assert (=> d!879157 d!880613))

(declare-fun d!880623 () Bool)

(assert (=> d!880623 (= (list!12865 lt!1084949) (list!12868 (c!538931 lt!1084949)))))

(declare-fun bs!541836 () Bool)

(assert (= bs!541836 d!880623))

(declare-fun m!3482395 () Bool)

(assert (=> bs!541836 m!3482395))

(assert (=> d!879157 d!880623))

(declare-fun d!880627 () Bool)

(declare-fun lt!1086190 () Int)

(assert (=> d!880627 (= lt!1086190 (size!27264 (list!12869 lt!1084657)))))

(assert (=> d!880627 (= lt!1086190 (size!27265 (c!538932 lt!1084657)))))

(assert (=> d!880627 (= (size!27261 lt!1084657) lt!1086190)))

(declare-fun bs!541837 () Bool)

(assert (= bs!541837 d!880627))

(assert (=> bs!541837 m!3477693))

(assert (=> bs!541837 m!3477693))

(declare-fun m!3482397 () Bool)

(assert (=> bs!541837 m!3482397))

(declare-fun m!3482399 () Bool)

(assert (=> bs!541837 m!3482399))

(assert (=> d!879157 d!880627))

(assert (=> d!879157 d!879461))

(assert (=> b!3209845 d!879497))

(declare-fun d!880629 () Bool)

(declare-fun lt!1086191 () Int)

(assert (=> d!880629 (>= lt!1086191 0)))

(declare-fun e!2002850 () Int)

(assert (=> d!880629 (= lt!1086191 e!2002850)))

(declare-fun c!539719 () Bool)

(assert (=> d!880629 (= c!539719 ((_ is Nil!36177) lt!1085067))))

(assert (=> d!880629 (= (size!27260 lt!1085067) lt!1086191)))

(declare-fun b!3212111 () Bool)

(assert (=> b!3212111 (= e!2002850 0)))

(declare-fun b!3212112 () Bool)

(assert (=> b!3212112 (= e!2002850 (+ 1 (size!27260 (t!238512 lt!1085067))))))

(assert (= (and d!880629 c!539719) b!3212111))

(assert (= (and d!880629 (not c!539719)) b!3212112))

(declare-fun m!3482407 () Bool)

(assert (=> b!3212112 m!3482407))

(assert (=> b!3210062 d!880629))

(declare-fun d!880633 () Bool)

(declare-fun lt!1086193 () Int)

(assert (=> d!880633 (>= lt!1086193 0)))

(declare-fun e!2002852 () Int)

(assert (=> d!880633 (= lt!1086193 e!2002852)))

(declare-fun c!539721 () Bool)

(assert (=> d!880633 (= c!539721 ((_ is Nil!36177) (++!8680 lt!1084664 lt!1084696)))))

(assert (=> d!880633 (= (size!27260 (++!8680 lt!1084664 lt!1084696)) lt!1086193)))

(declare-fun b!3212115 () Bool)

(assert (=> b!3212115 (= e!2002852 0)))

(declare-fun b!3212116 () Bool)

(assert (=> b!3212116 (= e!2002852 (+ 1 (size!27260 (t!238512 (++!8680 lt!1084664 lt!1084696)))))))

(assert (= (and d!880633 c!539721) b!3212115))

(assert (= (and d!880633 (not c!539721)) b!3212116))

(assert (=> b!3212116 m!3481497))

(assert (=> b!3210062 d!880633))

(declare-fun d!880637 () Bool)

(declare-fun lt!1086194 () Int)

(assert (=> d!880637 (>= lt!1086194 0)))

(declare-fun e!2002853 () Int)

(assert (=> d!880637 (= lt!1086194 e!2002853)))

(declare-fun c!539722 () Bool)

(assert (=> d!880637 (= c!539722 ((_ is Nil!36177) (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241)))))

(assert (=> d!880637 (= (size!27260 (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241)) lt!1086194)))

(declare-fun b!3212117 () Bool)

(assert (=> b!3212117 (= e!2002853 0)))

(declare-fun b!3212118 () Bool)

(assert (=> b!3212118 (= e!2002853 (+ 1 (size!27260 (t!238512 (printWithSeparatorTokenList!158 thiss!18206 (t!238514 (t!238514 tokens!494)) separatorToken!241)))))))

(assert (= (and d!880637 c!539722) b!3212117))

(assert (= (and d!880637 (not c!539722)) b!3212118))

(declare-fun m!3482411 () Bool)

(assert (=> b!3212118 m!3482411))

(assert (=> b!3210062 d!880637))

(declare-fun b!3212133 () Bool)

(declare-fun e!2002863 () Bool)

(assert (=> b!3212133 (= e!2002863 (inv!16 (value!169344 (h!41599 (t!238514 tokens!494)))))))

(declare-fun b!3212135 () Bool)

(declare-fun res!1307542 () Bool)

(declare-fun e!2002862 () Bool)

(assert (=> b!3212135 (=> res!1307542 e!2002862)))

(assert (=> b!3212135 (= res!1307542 (not ((_ is IntegerValue!16364) (value!169344 (h!41599 (t!238514 tokens!494))))))))

(declare-fun e!2002861 () Bool)

(assert (=> b!3212135 (= e!2002861 e!2002862)))

(declare-fun b!3212136 () Bool)

(assert (=> b!3212136 (= e!2002862 (inv!15 (value!169344 (h!41599 (t!238514 tokens!494)))))))

(declare-fun b!3212137 () Bool)

(assert (=> b!3212137 (= e!2002863 e!2002861)))

(declare-fun c!539727 () Bool)

(assert (=> b!3212137 (= c!539727 ((_ is IntegerValue!16363) (value!169344 (h!41599 (t!238514 tokens!494)))))))

(declare-fun b!3212134 () Bool)

(assert (=> b!3212134 (= e!2002861 (inv!17 (value!169344 (h!41599 (t!238514 tokens!494)))))))

(declare-fun d!880639 () Bool)

(declare-fun c!539726 () Bool)

(assert (=> d!880639 (= c!539726 ((_ is IntegerValue!16362) (value!169344 (h!41599 (t!238514 tokens!494)))))))

(assert (=> d!880639 (= (inv!21 (value!169344 (h!41599 (t!238514 tokens!494)))) e!2002863)))

(assert (= (and d!880639 c!539726) b!3212133))

(assert (= (and d!880639 (not c!539726)) b!3212137))

(assert (= (and b!3212137 c!539727) b!3212134))

(assert (= (and b!3212137 (not c!539727)) b!3212135))

(assert (= (and b!3212135 (not res!1307542)) b!3212136))

(declare-fun m!3482413 () Bool)

(assert (=> b!3212133 m!3482413))

(declare-fun m!3482415 () Bool)

(assert (=> b!3212136 m!3482415))

(declare-fun m!3482417 () Bool)

(assert (=> b!3212134 m!3482417))

(assert (=> b!3210117 d!880639))

(assert (=> b!3209298 d!879465))

(declare-fun b!3212138 () Bool)

(declare-fun e!2002864 () List!36303)

(declare-fun e!2002866 () List!36303)

(assert (=> b!3212138 (= e!2002864 e!2002866)))

(declare-fun c!539728 () Bool)

(assert (=> b!3212138 (= c!539728 (<= 0 0))))

(declare-fun b!3212139 () Bool)

(declare-fun e!2002865 () Int)

(assert (=> b!3212139 (= e!2002865 0)))

(declare-fun b!3212140 () Bool)

(declare-fun e!2002867 () Int)

(assert (=> b!3212140 (= e!2002867 e!2002865)))

(declare-fun c!539729 () Bool)

(declare-fun call!232494 () Int)

(assert (=> b!3212140 (= c!539729 (>= 0 call!232494))))

(declare-fun d!880641 () Bool)

(declare-fun e!2002868 () Bool)

(assert (=> d!880641 e!2002868))

(declare-fun res!1307543 () Bool)

(assert (=> d!880641 (=> (not res!1307543) (not e!2002868))))

(declare-fun lt!1086196 () List!36303)

(assert (=> d!880641 (= res!1307543 (= ((_ map implies) (content!4891 lt!1086196) (content!4891 lt!1084993)) ((as const (InoxSet Token!9814)) true)))))

(assert (=> d!880641 (= lt!1086196 e!2002864)))

(declare-fun c!539731 () Bool)

(assert (=> d!880641 (= c!539731 ((_ is Nil!36179) lt!1084993))))

(assert (=> d!880641 (= (drop!1861 lt!1084993 0) lt!1086196)))

(declare-fun b!3212141 () Bool)

(assert (=> b!3212141 (= e!2002867 call!232494)))

(declare-fun b!3212142 () Bool)

(assert (=> b!3212142 (= e!2002864 Nil!36179)))

(declare-fun b!3212143 () Bool)

(assert (=> b!3212143 (= e!2002868 (= (size!27264 lt!1086196) e!2002867))))

(declare-fun c!539730 () Bool)

(assert (=> b!3212143 (= c!539730 (<= 0 0))))

(declare-fun b!3212144 () Bool)

(assert (=> b!3212144 (= e!2002866 lt!1084993)))

(declare-fun bm!232489 () Bool)

(assert (=> bm!232489 (= call!232494 (size!27264 lt!1084993))))

(declare-fun b!3212145 () Bool)

(assert (=> b!3212145 (= e!2002866 (drop!1861 (t!238514 lt!1084993) (- 0 1)))))

(declare-fun b!3212146 () Bool)

(assert (=> b!3212146 (= e!2002865 (- call!232494 0))))

(assert (= (and d!880641 c!539731) b!3212142))

(assert (= (and d!880641 (not c!539731)) b!3212138))

(assert (= (and b!3212138 c!539728) b!3212144))

(assert (= (and b!3212138 (not c!539728)) b!3212145))

(assert (= (and d!880641 res!1307543) b!3212143))

(assert (= (and b!3212143 c!539730) b!3212141))

(assert (= (and b!3212143 (not c!539730)) b!3212140))

(assert (= (and b!3212140 c!539729) b!3212139))

(assert (= (and b!3212140 (not c!539729)) b!3212146))

(assert (= (or b!3212141 b!3212140 b!3212146) bm!232489))

(declare-fun m!3482431 () Bool)

(assert (=> d!880641 m!3482431))

(declare-fun m!3482433 () Bool)

(assert (=> d!880641 m!3482433))

(declare-fun m!3482435 () Bool)

(assert (=> b!3212143 m!3482435))

(declare-fun m!3482439 () Bool)

(assert (=> bm!232489 m!3482439))

(declare-fun m!3482443 () Bool)

(assert (=> b!3212145 m!3482443))

(assert (=> b!3209828 d!880641))

(assert (=> b!3209828 d!879845))

(declare-fun d!880643 () Bool)

(declare-fun lt!1086197 () BalanceConc!21260)

(assert (=> d!880643 (= (list!12865 lt!1086197) (originalCharacters!5938 (apply!8198 lt!1084669 0)))))

(assert (=> d!880643 (= lt!1086197 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084669 0)))) (value!169344 (apply!8198 lt!1084669 0))))))

(assert (=> d!880643 (= (charsOf!3240 (apply!8198 lt!1084669 0)) lt!1086197)))

(declare-fun b_lambda!88045 () Bool)

(assert (=> (not b_lambda!88045) (not d!880643)))

(declare-fun tb!157951 () Bool)

(declare-fun t!238931 () Bool)

(assert (=> (and b!3209139 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084669 0))))) t!238931) tb!157951))

(declare-fun b!3212151 () Bool)

(declare-fun e!2002871 () Bool)

(declare-fun tp!1013393 () Bool)

(assert (=> b!3212151 (= e!2002871 (and (inv!49039 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084669 0)))) (value!169344 (apply!8198 lt!1084669 0))))) tp!1013393))))

(declare-fun result!200316 () Bool)

(assert (=> tb!157951 (= result!200316 (and (inv!49040 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084669 0)))) (value!169344 (apply!8198 lt!1084669 0)))) e!2002871))))

(assert (= tb!157951 b!3212151))

(declare-fun m!3482447 () Bool)

(assert (=> b!3212151 m!3482447))

(declare-fun m!3482449 () Bool)

(assert (=> tb!157951 m!3482449))

(assert (=> d!880643 t!238931))

(declare-fun b_and!214163 () Bool)

(assert (= b_and!214145 (and (=> t!238931 result!200316) b_and!214163)))

(declare-fun tb!157953 () Bool)

(declare-fun t!238933 () Bool)

(assert (=> (and b!3210083 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084669 0))))) t!238933) tb!157953))

(declare-fun result!200318 () Bool)

(assert (= result!200318 result!200316))

(assert (=> d!880643 t!238933))

(declare-fun b_and!214165 () Bool)

(assert (= b_and!214149 (and (=> t!238933 result!200318) b_and!214165)))

(declare-fun t!238935 () Bool)

(declare-fun tb!157955 () Bool)

(assert (=> (and b!3209140 (= (toChars!7167 (transformation!5224 (h!41598 rules!2135))) (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084669 0))))) t!238935) tb!157955))

(declare-fun result!200320 () Bool)

(assert (= result!200320 result!200316))

(assert (=> d!880643 t!238935))

(declare-fun b_and!214167 () Bool)

(assert (= b_and!214151 (and (=> t!238935 result!200320) b_and!214167)))

(declare-fun t!238937 () Bool)

(declare-fun tb!157957 () Bool)

(assert (=> (and b!3210119 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084669 0))))) t!238937) tb!157957))

(declare-fun result!200322 () Bool)

(assert (= result!200322 result!200316))

(assert (=> d!880643 t!238937))

(declare-fun b_and!214169 () Bool)

(assert (= b_and!214143 (and (=> t!238937 result!200322) b_and!214169)))

(declare-fun tb!157959 () Bool)

(declare-fun t!238939 () Bool)

(assert (=> (and b!3209120 (= (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084669 0))))) t!238939) tb!157959))

(declare-fun result!200324 () Bool)

(assert (= result!200324 result!200316))

(assert (=> d!880643 t!238939))

(declare-fun b_and!214171 () Bool)

(assert (= b_and!214147 (and (=> t!238939 result!200324) b_and!214171)))

(declare-fun m!3482461 () Bool)

(assert (=> d!880643 m!3482461))

(declare-fun m!3482465 () Bool)

(assert (=> d!880643 m!3482465))

(assert (=> b!3209828 d!880643))

(declare-fun b!3212152 () Bool)

(declare-fun e!2002872 () List!36303)

(declare-fun e!2002874 () List!36303)

(assert (=> b!3212152 (= e!2002872 e!2002874)))

(declare-fun c!539733 () Bool)

(assert (=> b!3212152 (= c!539733 (<= (+ 0 1) 0))))

(declare-fun b!3212153 () Bool)

(declare-fun e!2002873 () Int)

(assert (=> b!3212153 (= e!2002873 0)))

(declare-fun b!3212154 () Bool)

(declare-fun e!2002875 () Int)

(assert (=> b!3212154 (= e!2002875 e!2002873)))

(declare-fun c!539734 () Bool)

(declare-fun call!232495 () Int)

(assert (=> b!3212154 (= c!539734 (>= (+ 0 1) call!232495))))

(declare-fun d!880649 () Bool)

(declare-fun e!2002876 () Bool)

(assert (=> d!880649 e!2002876))

(declare-fun res!1307546 () Bool)

(assert (=> d!880649 (=> (not res!1307546) (not e!2002876))))

(declare-fun lt!1086199 () List!36303)

(assert (=> d!880649 (= res!1307546 (= ((_ map implies) (content!4891 lt!1086199) (content!4891 lt!1084994)) ((as const (InoxSet Token!9814)) true)))))

(assert (=> d!880649 (= lt!1086199 e!2002872)))

(declare-fun c!539736 () Bool)

(assert (=> d!880649 (= c!539736 ((_ is Nil!36179) lt!1084994))))

(assert (=> d!880649 (= (drop!1861 lt!1084994 (+ 0 1)) lt!1086199)))

(declare-fun b!3212155 () Bool)

(assert (=> b!3212155 (= e!2002875 call!232495)))

(declare-fun b!3212156 () Bool)

(assert (=> b!3212156 (= e!2002872 Nil!36179)))

(declare-fun b!3212157 () Bool)

(assert (=> b!3212157 (= e!2002876 (= (size!27264 lt!1086199) e!2002875))))

(declare-fun c!539735 () Bool)

(assert (=> b!3212157 (= c!539735 (<= (+ 0 1) 0))))

(declare-fun b!3212158 () Bool)

(assert (=> b!3212158 (= e!2002874 lt!1084994)))

(declare-fun bm!232490 () Bool)

(assert (=> bm!232490 (= call!232495 (size!27264 lt!1084994))))

(declare-fun b!3212159 () Bool)

(assert (=> b!3212159 (= e!2002874 (drop!1861 (t!238514 lt!1084994) (- (+ 0 1) 1)))))

(declare-fun b!3212160 () Bool)

(assert (=> b!3212160 (= e!2002873 (- call!232495 (+ 0 1)))))

(assert (= (and d!880649 c!539736) b!3212156))

(assert (= (and d!880649 (not c!539736)) b!3212152))

(assert (= (and b!3212152 c!539733) b!3212158))

(assert (= (and b!3212152 (not c!539733)) b!3212159))

(assert (= (and d!880649 res!1307546) b!3212157))

(assert (= (and b!3212157 c!539735) b!3212155))

(assert (= (and b!3212157 (not c!539735)) b!3212154))

(assert (= (and b!3212154 c!539734) b!3212153))

(assert (= (and b!3212154 (not c!539734)) b!3212160))

(assert (= (or b!3212155 b!3212154 b!3212160) bm!232490))

(declare-fun m!3482471 () Bool)

(assert (=> d!880649 m!3482471))

(declare-fun m!3482473 () Bool)

(assert (=> d!880649 m!3482473))

(declare-fun m!3482475 () Bool)

(assert (=> b!3212157 m!3482475))

(declare-fun m!3482477 () Bool)

(assert (=> bm!232490 m!3482477))

(declare-fun m!3482479 () Bool)

(assert (=> b!3212159 m!3482479))

(assert (=> b!3209828 d!880649))

(declare-fun b!3212162 () Bool)

(declare-fun e!2002878 () List!36303)

(declare-fun e!2002880 () List!36303)

(assert (=> b!3212162 (= e!2002878 e!2002880)))

(declare-fun c!539737 () Bool)

(assert (=> b!3212162 (= c!539737 (<= 0 0))))

(declare-fun b!3212163 () Bool)

(declare-fun e!2002879 () Int)

(assert (=> b!3212163 (= e!2002879 0)))

(declare-fun b!3212164 () Bool)

(declare-fun e!2002881 () Int)

(assert (=> b!3212164 (= e!2002881 e!2002879)))

(declare-fun c!539738 () Bool)

(declare-fun call!232496 () Int)

(assert (=> b!3212164 (= c!539738 (>= 0 call!232496))))

(declare-fun d!880655 () Bool)

(declare-fun e!2002882 () Bool)

(assert (=> d!880655 e!2002882))

(declare-fun res!1307547 () Bool)

(assert (=> d!880655 (=> (not res!1307547) (not e!2002882))))

(declare-fun lt!1086201 () List!36303)

(assert (=> d!880655 (= res!1307547 (= ((_ map implies) (content!4891 lt!1086201) (content!4891 lt!1084994)) ((as const (InoxSet Token!9814)) true)))))

(assert (=> d!880655 (= lt!1086201 e!2002878)))

(declare-fun c!539740 () Bool)

(assert (=> d!880655 (= c!539740 ((_ is Nil!36179) lt!1084994))))

(assert (=> d!880655 (= (drop!1861 lt!1084994 0) lt!1086201)))

(declare-fun b!3212165 () Bool)

(assert (=> b!3212165 (= e!2002881 call!232496)))

(declare-fun b!3212166 () Bool)

(assert (=> b!3212166 (= e!2002878 Nil!36179)))

(declare-fun b!3212167 () Bool)

(assert (=> b!3212167 (= e!2002882 (= (size!27264 lt!1086201) e!2002881))))

(declare-fun c!539739 () Bool)

(assert (=> b!3212167 (= c!539739 (<= 0 0))))

(declare-fun b!3212168 () Bool)

(assert (=> b!3212168 (= e!2002880 lt!1084994)))

(declare-fun bm!232491 () Bool)

(assert (=> bm!232491 (= call!232496 (size!27264 lt!1084994))))

(declare-fun b!3212169 () Bool)

(assert (=> b!3212169 (= e!2002880 (drop!1861 (t!238514 lt!1084994) (- 0 1)))))

(declare-fun b!3212170 () Bool)

(assert (=> b!3212170 (= e!2002879 (- call!232496 0))))

(assert (= (and d!880655 c!539740) b!3212166))

(assert (= (and d!880655 (not c!539740)) b!3212162))

(assert (= (and b!3212162 c!539737) b!3212168))

(assert (= (and b!3212162 (not c!539737)) b!3212169))

(assert (= (and d!880655 res!1307547) b!3212167))

(assert (= (and b!3212167 c!539739) b!3212165))

(assert (= (and b!3212167 (not c!539739)) b!3212164))

(assert (= (and b!3212164 c!539738) b!3212163))

(assert (= (and b!3212164 (not c!539738)) b!3212170))

(assert (= (or b!3212165 b!3212164 b!3212170) bm!232491))

(declare-fun m!3482489 () Bool)

(assert (=> d!880655 m!3482489))

(assert (=> d!880655 m!3482473))

(declare-fun m!3482491 () Bool)

(assert (=> b!3212167 m!3482491))

(assert (=> bm!232491 m!3482477))

(declare-fun m!3482493 () Bool)

(assert (=> b!3212169 m!3482493))

(assert (=> b!3209828 d!880655))

(declare-fun d!880659 () Bool)

(assert (=> d!880659 (= (tail!5213 (drop!1861 lt!1084994 0)) (drop!1861 lt!1084994 (+ 0 1)))))

(declare-fun lt!1086202 () Unit!50642)

(assert (=> d!880659 (= lt!1086202 (choose!18747 lt!1084994 0))))

(declare-fun e!2002884 () Bool)

(assert (=> d!880659 e!2002884))

(declare-fun res!1307548 () Bool)

(assert (=> d!880659 (=> (not res!1307548) (not e!2002884))))

(assert (=> d!880659 (= res!1307548 (>= 0 0))))

(assert (=> d!880659 (= (lemmaDropTail!921 lt!1084994 0) lt!1086202)))

(declare-fun b!3212173 () Bool)

(assert (=> b!3212173 (= e!2002884 (< 0 (size!27264 lt!1084994)))))

(assert (= (and d!880659 res!1307548) b!3212173))

(assert (=> d!880659 m!3477989))

(assert (=> d!880659 m!3477989))

(assert (=> d!880659 m!3477993))

(assert (=> d!880659 m!3477997))

(declare-fun m!3482501 () Bool)

(assert (=> d!880659 m!3482501))

(assert (=> b!3212173 m!3482477))

(assert (=> b!3209828 d!880659))

(declare-fun d!880661 () Bool)

(declare-fun lt!1086203 () Token!9814)

(assert (=> d!880661 (= lt!1086203 (apply!8200 (list!12869 lt!1084669) 0))))

(assert (=> d!880661 (= lt!1086203 (apply!8202 (c!538932 lt!1084669) 0))))

(declare-fun e!2002885 () Bool)

(assert (=> d!880661 e!2002885))

(declare-fun res!1307549 () Bool)

(assert (=> d!880661 (=> (not res!1307549) (not e!2002885))))

(assert (=> d!880661 (= res!1307549 (<= 0 0))))

(assert (=> d!880661 (= (apply!8198 lt!1084669 0) lt!1086203)))

(declare-fun b!3212174 () Bool)

(assert (=> b!3212174 (= e!2002885 (< 0 (size!27261 lt!1084669)))))

(assert (= (and d!880661 res!1307549) b!3212174))

(assert (=> d!880661 m!3477363))

(assert (=> d!880661 m!3477363))

(declare-fun m!3482505 () Bool)

(assert (=> d!880661 m!3482505))

(declare-fun m!3482507 () Bool)

(assert (=> d!880661 m!3482507))

(assert (=> b!3212174 m!3477969))

(assert (=> b!3209828 d!880661))

(declare-fun d!880665 () Bool)

(assert (=> d!880665 (= (tail!5213 (drop!1861 lt!1084994 0)) (t!238514 (drop!1861 lt!1084994 0)))))

(assert (=> b!3209828 d!880665))

(declare-fun d!880667 () Bool)

(assert (=> d!880667 (= (head!7045 (drop!1861 lt!1084993 0)) (apply!8200 lt!1084993 0))))

(declare-fun lt!1086207 () Unit!50642)

(assert (=> d!880667 (= lt!1086207 (choose!18748 lt!1084993 0))))

(declare-fun e!2002890 () Bool)

(assert (=> d!880667 e!2002890))

(declare-fun res!1307552 () Bool)

(assert (=> d!880667 (=> (not res!1307552) (not e!2002890))))

(assert (=> d!880667 (= res!1307552 (>= 0 0))))

(assert (=> d!880667 (= (lemmaDropApply!1037 lt!1084993 0) lt!1086207)))

(declare-fun b!3212181 () Bool)

(assert (=> b!3212181 (= e!2002890 (< 0 (size!27264 lt!1084993)))))

(assert (= (and d!880667 res!1307552) b!3212181))

(assert (=> d!880667 m!3477983))

(assert (=> d!880667 m!3477983))

(assert (=> d!880667 m!3477987))

(assert (=> d!880667 m!3477981))

(declare-fun m!3482513 () Bool)

(assert (=> d!880667 m!3482513))

(assert (=> b!3212181 m!3482439))

(assert (=> b!3209828 d!880667))

(declare-fun b!3212184 () Bool)

(declare-fun res!1307554 () Bool)

(declare-fun e!2002891 () Bool)

(assert (=> b!3212184 (=> (not res!1307554) (not e!2002891))))

(assert (=> b!3212184 (= res!1307554 (>= (height!1555 (++!8686 (c!538931 (BalanceConc!21261 Empty!10823)) (c!538931 (charsOf!3240 (apply!8198 lt!1084669 0))))) (max!0 (height!1555 (c!538931 (BalanceConc!21261 Empty!10823))) (height!1555 (c!538931 (charsOf!3240 (apply!8198 lt!1084669 0)))))))))

(declare-fun b!3212185 () Bool)

(declare-fun lt!1086208 () BalanceConc!21260)

(assert (=> b!3212185 (= e!2002891 (= (list!12865 lt!1086208) (++!8680 (list!12865 (BalanceConc!21261 Empty!10823)) (list!12865 (charsOf!3240 (apply!8198 lt!1084669 0))))))))

(declare-fun b!3212182 () Bool)

(declare-fun res!1307555 () Bool)

(assert (=> b!3212182 (=> (not res!1307555) (not e!2002891))))

(assert (=> b!3212182 (= res!1307555 (isBalanced!3218 (++!8686 (c!538931 (BalanceConc!21261 Empty!10823)) (c!538931 (charsOf!3240 (apply!8198 lt!1084669 0))))))))

(declare-fun b!3212183 () Bool)

(declare-fun res!1307556 () Bool)

(assert (=> b!3212183 (=> (not res!1307556) (not e!2002891))))

(assert (=> b!3212183 (= res!1307556 (<= (height!1555 (++!8686 (c!538931 (BalanceConc!21261 Empty!10823)) (c!538931 (charsOf!3240 (apply!8198 lt!1084669 0))))) (+ (max!0 (height!1555 (c!538931 (BalanceConc!21261 Empty!10823))) (height!1555 (c!538931 (charsOf!3240 (apply!8198 lt!1084669 0))))) 1)))))

(declare-fun d!880669 () Bool)

(assert (=> d!880669 e!2002891))

(declare-fun res!1307553 () Bool)

(assert (=> d!880669 (=> (not res!1307553) (not e!2002891))))

(assert (=> d!880669 (= res!1307553 (appendAssocInst!733 (c!538931 (BalanceConc!21261 Empty!10823)) (c!538931 (charsOf!3240 (apply!8198 lt!1084669 0)))))))

(assert (=> d!880669 (= lt!1086208 (BalanceConc!21261 (++!8686 (c!538931 (BalanceConc!21261 Empty!10823)) (c!538931 (charsOf!3240 (apply!8198 lt!1084669 0))))))))

(assert (=> d!880669 (= (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (apply!8198 lt!1084669 0))) lt!1086208)))

(assert (= (and d!880669 res!1307553) b!3212182))

(assert (= (and b!3212182 res!1307555) b!3212183))

(assert (= (and b!3212183 res!1307556) b!3212184))

(assert (= (and b!3212184 res!1307554) b!3212185))

(declare-fun m!3482529 () Bool)

(assert (=> d!880669 m!3482529))

(declare-fun m!3482533 () Bool)

(assert (=> d!880669 m!3482533))

(assert (=> b!3212182 m!3482533))

(assert (=> b!3212182 m!3482533))

(declare-fun m!3482535 () Bool)

(assert (=> b!3212182 m!3482535))

(assert (=> b!3212183 m!3482533))

(assert (=> b!3212183 m!3480759))

(declare-fun m!3482539 () Bool)

(assert (=> b!3212183 m!3482539))

(declare-fun m!3482541 () Bool)

(assert (=> b!3212183 m!3482541))

(assert (=> b!3212183 m!3480759))

(assert (=> b!3212183 m!3482533))

(declare-fun m!3482543 () Bool)

(assert (=> b!3212183 m!3482543))

(assert (=> b!3212183 m!3482539))

(assert (=> b!3212184 m!3482533))

(assert (=> b!3212184 m!3480759))

(assert (=> b!3212184 m!3482539))

(assert (=> b!3212184 m!3482541))

(assert (=> b!3212184 m!3480759))

(assert (=> b!3212184 m!3482533))

(assert (=> b!3212184 m!3482543))

(assert (=> b!3212184 m!3482539))

(declare-fun m!3482551 () Bool)

(assert (=> b!3212185 m!3482551))

(assert (=> b!3212185 m!3476993))

(assert (=> b!3212185 m!3478001))

(declare-fun m!3482553 () Bool)

(assert (=> b!3212185 m!3482553))

(assert (=> b!3212185 m!3476993))

(assert (=> b!3212185 m!3482553))

(declare-fun m!3482555 () Bool)

(assert (=> b!3212185 m!3482555))

(assert (=> b!3209828 d!880669))

(declare-fun d!880685 () Bool)

(declare-fun lt!1086212 () Token!9814)

(assert (=> d!880685 (contains!6463 lt!1084993 lt!1086212)))

(declare-fun e!2002895 () Token!9814)

(assert (=> d!880685 (= lt!1086212 e!2002895)))

(declare-fun c!539746 () Bool)

(assert (=> d!880685 (= c!539746 (= 0 0))))

(declare-fun e!2002896 () Bool)

(assert (=> d!880685 e!2002896))

(declare-fun res!1307558 () Bool)

(assert (=> d!880685 (=> (not res!1307558) (not e!2002896))))

(assert (=> d!880685 (= res!1307558 (<= 0 0))))

(assert (=> d!880685 (= (apply!8200 lt!1084993 0) lt!1086212)))

(declare-fun b!3212191 () Bool)

(assert (=> b!3212191 (= e!2002896 (< 0 (size!27264 lt!1084993)))))

(declare-fun b!3212192 () Bool)

(assert (=> b!3212192 (= e!2002895 (head!7045 lt!1084993))))

(declare-fun b!3212193 () Bool)

(assert (=> b!3212193 (= e!2002895 (apply!8200 (tail!5213 lt!1084993) (- 0 1)))))

(assert (= (and d!880685 res!1307558) b!3212191))

(assert (= (and d!880685 c!539746) b!3212192))

(assert (= (and d!880685 (not c!539746)) b!3212193))

(declare-fun m!3482563 () Bool)

(assert (=> d!880685 m!3482563))

(assert (=> b!3212191 m!3482439))

(declare-fun m!3482565 () Bool)

(assert (=> b!3212192 m!3482565))

(declare-fun m!3482567 () Bool)

(assert (=> b!3212193 m!3482567))

(assert (=> b!3212193 m!3482567))

(declare-fun m!3482575 () Bool)

(assert (=> b!3212193 m!3482575))

(assert (=> b!3209828 d!880685))

(declare-fun d!880689 () Bool)

(assert (=> d!880689 (= (head!7045 (drop!1861 lt!1084993 0)) (h!41599 (drop!1861 lt!1084993 0)))))

(assert (=> b!3209828 d!880689))

(declare-fun d!880691 () Bool)

(declare-fun lt!1086215 () BalanceConc!21260)

(assert (=> d!880691 (= (list!12865 lt!1086215) (printListTailRec!561 thiss!18206 (dropList!1078 lt!1084669 (+ 0 1)) (list!12865 (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (apply!8198 lt!1084669 0))))))))

(declare-fun e!2002900 () BalanceConc!21260)

(assert (=> d!880691 (= lt!1086215 e!2002900)))

(declare-fun c!539749 () Bool)

(assert (=> d!880691 (= c!539749 (>= (+ 0 1) (size!27261 lt!1084669)))))

(declare-fun e!2002901 () Bool)

(assert (=> d!880691 e!2002901))

(declare-fun res!1307560 () Bool)

(assert (=> d!880691 (=> (not res!1307560) (not e!2002901))))

(assert (=> d!880691 (= res!1307560 (>= (+ 0 1) 0))))

(assert (=> d!880691 (= (printTailRec!1310 thiss!18206 lt!1084669 (+ 0 1) (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (apply!8198 lt!1084669 0)))) lt!1086215)))

(declare-fun b!3212199 () Bool)

(assert (=> b!3212199 (= e!2002901 (<= (+ 0 1) (size!27261 lt!1084669)))))

(declare-fun b!3212200 () Bool)

(assert (=> b!3212200 (= e!2002900 (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (apply!8198 lt!1084669 0))))))

(declare-fun b!3212201 () Bool)

(assert (=> b!3212201 (= e!2002900 (printTailRec!1310 thiss!18206 lt!1084669 (+ 0 1 1) (++!8682 (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (apply!8198 lt!1084669 0))) (charsOf!3240 (apply!8198 lt!1084669 (+ 0 1))))))))

(declare-fun lt!1086217 () List!36303)

(assert (=> b!3212201 (= lt!1086217 (list!12869 lt!1084669))))

(declare-fun lt!1086216 () Unit!50642)

(assert (=> b!3212201 (= lt!1086216 (lemmaDropApply!1037 lt!1086217 (+ 0 1)))))

(assert (=> b!3212201 (= (head!7045 (drop!1861 lt!1086217 (+ 0 1))) (apply!8200 lt!1086217 (+ 0 1)))))

(declare-fun lt!1086214 () Unit!50642)

(assert (=> b!3212201 (= lt!1086214 lt!1086216)))

(declare-fun lt!1086218 () List!36303)

(assert (=> b!3212201 (= lt!1086218 (list!12869 lt!1084669))))

(declare-fun lt!1086219 () Unit!50642)

(assert (=> b!3212201 (= lt!1086219 (lemmaDropTail!921 lt!1086218 (+ 0 1)))))

(assert (=> b!3212201 (= (tail!5213 (drop!1861 lt!1086218 (+ 0 1))) (drop!1861 lt!1086218 (+ 0 1 1)))))

(declare-fun lt!1086213 () Unit!50642)

(assert (=> b!3212201 (= lt!1086213 lt!1086219)))

(assert (= (and d!880691 res!1307560) b!3212199))

(assert (= (and d!880691 c!539749) b!3212200))

(assert (= (and d!880691 (not c!539749)) b!3212201))

(assert (=> d!880691 m!3477969))

(declare-fun m!3482577 () Bool)

(assert (=> d!880691 m!3482577))

(declare-fun m!3482579 () Bool)

(assert (=> d!880691 m!3482579))

(declare-fun m!3482581 () Bool)

(assert (=> d!880691 m!3482581))

(declare-fun m!3482583 () Bool)

(assert (=> d!880691 m!3482583))

(assert (=> d!880691 m!3482579))

(assert (=> d!880691 m!3478003))

(assert (=> d!880691 m!3482581))

(assert (=> b!3212199 m!3477969))

(declare-fun m!3482585 () Bool)

(assert (=> b!3212201 m!3482585))

(assert (=> b!3212201 m!3477363))

(declare-fun m!3482587 () Bool)

(assert (=> b!3212201 m!3482587))

(declare-fun m!3482589 () Bool)

(assert (=> b!3212201 m!3482589))

(declare-fun m!3482591 () Bool)

(assert (=> b!3212201 m!3482591))

(declare-fun m!3482593 () Bool)

(assert (=> b!3212201 m!3482593))

(assert (=> b!3212201 m!3482593))

(declare-fun m!3482595 () Bool)

(assert (=> b!3212201 m!3482595))

(declare-fun m!3482597 () Bool)

(assert (=> b!3212201 m!3482597))

(declare-fun m!3482599 () Bool)

(assert (=> b!3212201 m!3482599))

(declare-fun m!3482601 () Bool)

(assert (=> b!3212201 m!3482601))

(assert (=> b!3212201 m!3482601))

(declare-fun m!3482603 () Bool)

(assert (=> b!3212201 m!3482603))

(assert (=> b!3212201 m!3482589))

(declare-fun m!3482605 () Bool)

(assert (=> b!3212201 m!3482605))

(declare-fun m!3482607 () Bool)

(assert (=> b!3212201 m!3482607))

(assert (=> b!3212201 m!3478003))

(assert (=> b!3212201 m!3482603))

(assert (=> b!3212201 m!3482605))

(assert (=> b!3209828 d!880691))

(declare-fun d!880693 () Bool)

(declare-fun lt!1086220 () Token!9814)

(assert (=> d!880693 (= lt!1086220 (apply!8200 (list!12869 (_1!20922 lt!1084803)) 0))))

(assert (=> d!880693 (= lt!1086220 (apply!8202 (c!538932 (_1!20922 lt!1084803)) 0))))

(declare-fun e!2002907 () Bool)

(assert (=> d!880693 e!2002907))

(declare-fun res!1307561 () Bool)

(assert (=> d!880693 (=> (not res!1307561) (not e!2002907))))

(assert (=> d!880693 (= res!1307561 (<= 0 0))))

(assert (=> d!880693 (= (apply!8198 (_1!20922 lt!1084803) 0) lt!1086220)))

(declare-fun b!3212219 () Bool)

(assert (=> b!3212219 (= e!2002907 (< 0 (size!27261 (_1!20922 lt!1084803))))))

(assert (= (and d!880693 res!1307561) b!3212219))

(assert (=> d!880693 m!3481367))

(assert (=> d!880693 m!3481367))

(declare-fun m!3482609 () Bool)

(assert (=> d!880693 m!3482609))

(declare-fun m!3482611 () Bool)

(assert (=> d!880693 m!3482611))

(assert (=> b!3212219 m!3477199))

(assert (=> b!3209428 d!880693))

(assert (=> b!3210036 d!880019))

(assert (=> b!3209487 d!879395))

(declare-fun d!880695 () Bool)

(declare-fun lt!1086223 () Int)

(assert (=> d!880695 (>= lt!1086223 0)))

(declare-fun e!2002915 () Int)

(assert (=> d!880695 (= lt!1086223 e!2002915)))

(declare-fun c!539752 () Bool)

(assert (=> d!880695 (= c!539752 ((_ is Nil!36179) (list!12869 (_1!20922 lt!1084679))))))

(assert (=> d!880695 (= (size!27264 (list!12869 (_1!20922 lt!1084679))) lt!1086223)))

(declare-fun b!3212231 () Bool)

(assert (=> b!3212231 (= e!2002915 0)))

(declare-fun b!3212232 () Bool)

(assert (=> b!3212232 (= e!2002915 (+ 1 (size!27264 (t!238514 (list!12869 (_1!20922 lt!1084679))))))))

(assert (= (and d!880695 c!539752) b!3212231))

(assert (= (and d!880695 (not c!539752)) b!3212232))

(declare-fun m!3482613 () Bool)

(assert (=> b!3212232 m!3482613))

(assert (=> d!879135 d!880695))

(assert (=> d!879135 d!880569))

(declare-fun d!880697 () Bool)

(declare-fun lt!1086226 () Int)

(assert (=> d!880697 (= lt!1086226 (size!27264 (list!12871 (c!538932 (_1!20922 lt!1084679)))))))

(assert (=> d!880697 (= lt!1086226 (ite ((_ is Empty!10824) (c!538932 (_1!20922 lt!1084679))) 0 (ite ((_ is Leaf!17047) (c!538932 (_1!20922 lt!1084679))) (csize!21879 (c!538932 (_1!20922 lt!1084679))) (csize!21878 (c!538932 (_1!20922 lt!1084679))))))))

(assert (=> d!880697 (= (size!27265 (c!538932 (_1!20922 lt!1084679))) lt!1086226)))

(declare-fun bs!541843 () Bool)

(assert (= bs!541843 d!880697))

(assert (=> bs!541843 m!3482243))

(assert (=> bs!541843 m!3482243))

(declare-fun m!3482619 () Bool)

(assert (=> bs!541843 m!3482619))

(assert (=> d!879135 d!880697))

(declare-fun d!880699 () Bool)

(declare-fun lt!1086227 () Int)

(assert (=> d!880699 (>= lt!1086227 0)))

(declare-fun e!2002920 () Int)

(assert (=> d!880699 (= lt!1086227 e!2002920)))

(declare-fun c!539753 () Bool)

(assert (=> d!880699 (= c!539753 ((_ is Nil!36179) (list!12869 (_1!20922 lt!1084668))))))

(assert (=> d!880699 (= (size!27264 (list!12869 (_1!20922 lt!1084668))) lt!1086227)))

(declare-fun b!3212241 () Bool)

(assert (=> b!3212241 (= e!2002920 0)))

(declare-fun b!3212242 () Bool)

(assert (=> b!3212242 (= e!2002920 (+ 1 (size!27264 (t!238514 (list!12869 (_1!20922 lt!1084668))))))))

(assert (= (and d!880699 c!539753) b!3212241))

(assert (= (and d!880699 (not c!539753)) b!3212242))

(declare-fun m!3482621 () Bool)

(assert (=> b!3212242 m!3482621))

(assert (=> d!879125 d!880699))

(declare-fun d!880701 () Bool)

(assert (=> d!880701 (= (list!12869 (_1!20922 lt!1084668)) (list!12871 (c!538932 (_1!20922 lt!1084668))))))

(declare-fun bs!541844 () Bool)

(assert (= bs!541844 d!880701))

(declare-fun m!3482625 () Bool)

(assert (=> bs!541844 m!3482625))

(assert (=> d!879125 d!880701))

(declare-fun d!880703 () Bool)

(declare-fun lt!1086228 () Int)

(assert (=> d!880703 (= lt!1086228 (size!27264 (list!12871 (c!538932 (_1!20922 lt!1084668)))))))

(assert (=> d!880703 (= lt!1086228 (ite ((_ is Empty!10824) (c!538932 (_1!20922 lt!1084668))) 0 (ite ((_ is Leaf!17047) (c!538932 (_1!20922 lt!1084668))) (csize!21879 (c!538932 (_1!20922 lt!1084668))) (csize!21878 (c!538932 (_1!20922 lt!1084668))))))))

(assert (=> d!880703 (= (size!27265 (c!538932 (_1!20922 lt!1084668))) lt!1086228)))

(declare-fun bs!541845 () Bool)

(assert (= bs!541845 d!880703))

(assert (=> bs!541845 m!3482625))

(assert (=> bs!541845 m!3482625))

(declare-fun m!3482631 () Bool)

(assert (=> bs!541845 m!3482631))

(assert (=> d!879125 d!880703))

(declare-fun d!880705 () Bool)

(assert (=> d!880705 (= (isEmpty!20270 lt!1084671) (not ((_ is Some!7147) lt!1084671)))))

(assert (=> d!879189 d!880705))

(declare-fun d!880707 () Bool)

(assert (=> d!880707 (= (list!12869 (_1!20922 lt!1084813)) (list!12871 (c!538932 (_1!20922 lt!1084813))))))

(declare-fun bs!541846 () Bool)

(assert (= bs!541846 d!880707))

(declare-fun m!3482633 () Bool)

(assert (=> bs!541846 m!3482633))

(assert (=> b!3209462 d!880707))

(assert (=> b!3209462 d!880181))

(assert (=> b!3209462 d!880187))

(assert (=> b!3209789 d!879387))

(declare-fun d!880709 () Bool)

(declare-fun lt!1086229 () Bool)

(assert (=> d!880709 (= lt!1086229 (select (content!4888 (t!238512 (usedCharacters!540 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) lt!1084676))))

(declare-fun e!2002927 () Bool)

(assert (=> d!880709 (= lt!1086229 e!2002927)))

(declare-fun res!1307562 () Bool)

(assert (=> d!880709 (=> (not res!1307562) (not e!2002927))))

(assert (=> d!880709 (= res!1307562 ((_ is Cons!36177) (t!238512 (usedCharacters!540 (regex!5224 (rule!7664 (h!41599 tokens!494)))))))))

(assert (=> d!880709 (= (contains!6461 (t!238512 (usedCharacters!540 (regex!5224 (rule!7664 (h!41599 tokens!494))))) lt!1084676) lt!1086229)))

(declare-fun b!3212253 () Bool)

(declare-fun e!2002926 () Bool)

(assert (=> b!3212253 (= e!2002927 e!2002926)))

(declare-fun res!1307563 () Bool)

(assert (=> b!3212253 (=> res!1307563 e!2002926)))

(assert (=> b!3212253 (= res!1307563 (= (h!41597 (t!238512 (usedCharacters!540 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) lt!1084676))))

(declare-fun b!3212254 () Bool)

(assert (=> b!3212254 (= e!2002926 (contains!6461 (t!238512 (t!238512 (usedCharacters!540 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) lt!1084676))))

(assert (= (and d!880709 res!1307562) b!3212253))

(assert (= (and b!3212253 (not res!1307563)) b!3212254))

(assert (=> d!880709 m!3479105))

(declare-fun m!3482641 () Bool)

(assert (=> d!880709 m!3482641))

(declare-fun m!3482643 () Bool)

(assert (=> b!3212254 m!3482643))

(assert (=> b!3209853 d!880709))

(declare-fun bs!541847 () Bool)

(declare-fun d!880711 () Bool)

(assert (= bs!541847 (and d!880711 d!879659)))

(declare-fun lambda!117534 () Int)

(assert (=> bs!541847 (= (= (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241))) (toValue!7308 (transformation!5224 (h!41598 rules!2135)))) (= lambda!117534 lambda!117505))))

(assert (=> d!880711 true))

(assert (=> d!880711 (< (dynLambda!14607 order!18473 (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241)))) (dynLambda!14617 order!18481 lambda!117534))))

(assert (=> d!880711 (= (equivClasses!2054 (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241)))) (Forall2!863 lambda!117534))))

(declare-fun bs!541848 () Bool)

(assert (= bs!541848 d!880711))

(declare-fun m!3482645 () Bool)

(assert (=> bs!541848 m!3482645))

(assert (=> b!3210026 d!880711))

(assert (=> b!3209492 d!880369))

(assert (=> b!3209492 d!880373))

(declare-fun d!880713 () Bool)

(declare-fun e!2002936 () Bool)

(assert (=> d!880713 e!2002936))

(declare-fun res!1307564 () Bool)

(assert (=> d!880713 (=> res!1307564 e!2002936)))

(declare-fun lt!1086232 () Option!7148)

(assert (=> d!880713 (= res!1307564 (isEmpty!20270 lt!1086232))))

(declare-fun e!2002939 () Option!7148)

(assert (=> d!880713 (= lt!1086232 e!2002939)))

(declare-fun c!539755 () Bool)

(assert (=> d!880713 (= c!539755 (and ((_ is Cons!36178) (t!238513 rules!2135)) (= (tag!5750 (h!41598 (t!238513 rules!2135))) (tag!5750 (rule!7664 (h!41599 tokens!494))))))))

(assert (=> d!880713 (rulesInvariant!4210 thiss!18206 (t!238513 rules!2135))))

(assert (=> d!880713 (= (getRuleFromTag!929 thiss!18206 (t!238513 rules!2135) (tag!5750 (rule!7664 (h!41599 tokens!494)))) lt!1086232)))

(declare-fun b!3212287 () Bool)

(declare-fun e!2002938 () Bool)

(assert (=> b!3212287 (= e!2002938 (= (tag!5750 (get!11519 lt!1086232)) (tag!5750 (rule!7664 (h!41599 tokens!494)))))))

(declare-fun b!3212288 () Bool)

(declare-fun e!2002937 () Option!7148)

(assert (=> b!3212288 (= e!2002937 None!7147)))

(declare-fun b!3212289 () Bool)

(assert (=> b!3212289 (= e!2002939 e!2002937)))

(declare-fun c!539754 () Bool)

(assert (=> b!3212289 (= c!539754 (and ((_ is Cons!36178) (t!238513 rules!2135)) (not (= (tag!5750 (h!41598 (t!238513 rules!2135))) (tag!5750 (rule!7664 (h!41599 tokens!494)))))))))

(declare-fun b!3212290 () Bool)

(assert (=> b!3212290 (= e!2002936 e!2002938)))

(declare-fun res!1307565 () Bool)

(assert (=> b!3212290 (=> (not res!1307565) (not e!2002938))))

(assert (=> b!3212290 (= res!1307565 (contains!6462 (t!238513 rules!2135) (get!11519 lt!1086232)))))

(declare-fun b!3212291 () Bool)

(assert (=> b!3212291 (= e!2002939 (Some!7147 (h!41598 (t!238513 rules!2135))))))

(declare-fun b!3212292 () Bool)

(declare-fun lt!1086231 () Unit!50642)

(declare-fun lt!1086230 () Unit!50642)

(assert (=> b!3212292 (= lt!1086231 lt!1086230)))

(assert (=> b!3212292 (rulesInvariant!4210 thiss!18206 (t!238513 (t!238513 rules!2135)))))

(assert (=> b!3212292 (= lt!1086230 (lemmaInvariantOnRulesThenOnTail!349 thiss!18206 (h!41598 (t!238513 rules!2135)) (t!238513 (t!238513 rules!2135))))))

(assert (=> b!3212292 (= e!2002937 (getRuleFromTag!929 thiss!18206 (t!238513 (t!238513 rules!2135)) (tag!5750 (rule!7664 (h!41599 tokens!494)))))))

(assert (= (and d!880713 c!539755) b!3212291))

(assert (= (and d!880713 (not c!539755)) b!3212289))

(assert (= (and b!3212289 c!539754) b!3212292))

(assert (= (and b!3212289 (not c!539754)) b!3212288))

(assert (= (and d!880713 (not res!1307564)) b!3212290))

(assert (= (and b!3212290 res!1307565) b!3212287))

(declare-fun m!3482647 () Bool)

(assert (=> d!880713 m!3482647))

(assert (=> d!880713 m!3477267))

(declare-fun m!3482649 () Bool)

(assert (=> b!3212287 m!3482649))

(assert (=> b!3212290 m!3482649))

(assert (=> b!3212290 m!3482649))

(declare-fun m!3482651 () Bool)

(assert (=> b!3212290 m!3482651))

(assert (=> b!3212292 m!3481643))

(assert (=> b!3212292 m!3481645))

(declare-fun m!3482653 () Bool)

(assert (=> b!3212292 m!3482653))

(assert (=> b!3209492 d!880713))

(declare-fun d!880715 () Bool)

(declare-fun e!2002947 () Bool)

(assert (=> d!880715 e!2002947))

(declare-fun res!1307566 () Bool)

(assert (=> d!880715 (=> (not res!1307566) (not e!2002947))))

(declare-fun lt!1086233 () BalanceConc!21260)

(assert (=> d!880715 (= res!1307566 (= (list!12865 lt!1086233) lt!1084683))))

(assert (=> d!880715 (= lt!1086233 (BalanceConc!21261 (fromList!612 lt!1084683)))))

(assert (=> d!880715 (= (fromListB!1541 lt!1084683) lt!1086233)))

(declare-fun b!3212307 () Bool)

(assert (=> b!3212307 (= e!2002947 (isBalanced!3218 (fromList!612 lt!1084683)))))

(assert (= (and d!880715 res!1307566) b!3212307))

(declare-fun m!3482661 () Bool)

(assert (=> d!880715 m!3482661))

(declare-fun m!3482663 () Bool)

(assert (=> d!880715 m!3482663))

(assert (=> b!3212307 m!3482663))

(assert (=> b!3212307 m!3482663))

(declare-fun m!3482665 () Bool)

(assert (=> b!3212307 m!3482665))

(assert (=> d!879279 d!880715))

(declare-fun d!880717 () Bool)

(assert (=> d!880717 (= (isEmpty!20266 (tail!5212 lt!1084696)) ((_ is Nil!36177) (tail!5212 lt!1084696)))))

(assert (=> b!3209225 d!880717))

(assert (=> b!3209225 d!879677))

(declare-fun d!880719 () Bool)

(assert (=> d!880719 (= (isEmpty!20270 lt!1085009) (not ((_ is Some!7147) lt!1085009)))))

(assert (=> d!879191 d!880719))

(assert (=> d!879191 d!879257))

(declare-fun d!880721 () Bool)

(assert (=> d!880721 (= (list!12865 lt!1084776) (list!12868 (c!538931 lt!1084776)))))

(declare-fun bs!541849 () Bool)

(assert (= bs!541849 d!880721))

(declare-fun m!3482667 () Bool)

(assert (=> bs!541849 m!3482667))

(assert (=> d!878969 d!880721))

(declare-fun d!880723 () Bool)

(declare-fun lt!1086234 () Bool)

(assert (=> d!880723 (= lt!1086234 (isEmpty!20266 (list!12865 (_2!20922 lt!1085064))))))

(assert (=> d!880723 (= lt!1086234 (isEmpty!20267 (c!538931 (_2!20922 lt!1085064))))))

(assert (=> d!880723 (= (isEmpty!20263 (_2!20922 lt!1085064)) lt!1086234)))

(declare-fun bs!541850 () Bool)

(assert (= bs!541850 d!880723))

(declare-fun m!3482669 () Bool)

(assert (=> bs!541850 m!3482669))

(assert (=> bs!541850 m!3482669))

(declare-fun m!3482671 () Bool)

(assert (=> bs!541850 m!3482671))

(declare-fun m!3482673 () Bool)

(assert (=> bs!541850 m!3482673))

(assert (=> b!3210048 d!880723))

(assert (=> b!3210015 d!879539))

(declare-fun d!880725 () Bool)

(declare-fun c!539756 () Bool)

(assert (=> d!880725 (= c!539756 ((_ is Nil!36177) lt!1085066))))

(declare-fun e!2002958 () (InoxSet C!20152))

(assert (=> d!880725 (= (content!4888 lt!1085066) e!2002958)))

(declare-fun b!3212316 () Bool)

(assert (=> b!3212316 (= e!2002958 ((as const (Array C!20152 Bool)) false))))

(declare-fun b!3212317 () Bool)

(assert (=> b!3212317 (= e!2002958 ((_ map or) (store ((as const (Array C!20152 Bool)) false) (h!41597 lt!1085066) true) (content!4888 (t!238512 lt!1085066))))))

(assert (= (and d!880725 c!539756) b!3212316))

(assert (= (and d!880725 (not c!539756)) b!3212317))

(declare-fun m!3482675 () Bool)

(assert (=> b!3212317 m!3482675))

(declare-fun m!3482677 () Bool)

(assert (=> b!3212317 m!3482677))

(assert (=> d!879289 d!880725))

(declare-fun d!880727 () Bool)

(declare-fun c!539757 () Bool)

(assert (=> d!880727 (= c!539757 ((_ is Nil!36177) lt!1084664))))

(declare-fun e!2002959 () (InoxSet C!20152))

(assert (=> d!880727 (= (content!4888 lt!1084664) e!2002959)))

(declare-fun b!3212318 () Bool)

(assert (=> b!3212318 (= e!2002959 ((as const (Array C!20152 Bool)) false))))

(declare-fun b!3212319 () Bool)

(assert (=> b!3212319 (= e!2002959 ((_ map or) (store ((as const (Array C!20152 Bool)) false) (h!41597 lt!1084664) true) (content!4888 (t!238512 lt!1084664))))))

(assert (= (and d!880727 c!539757) b!3212318))

(assert (= (and d!880727 (not c!539757)) b!3212319))

(declare-fun m!3482679 () Bool)

(assert (=> b!3212319 m!3482679))

(assert (=> b!3212319 m!3479111))

(assert (=> d!879289 d!880727))

(assert (=> d!879289 d!879473))

(declare-fun d!880729 () Bool)

(declare-fun lt!1086235 () Bool)

(assert (=> d!880729 (= lt!1086235 (isEmpty!20266 (list!12865 (_2!20922 lt!1084907))))))

(assert (=> d!880729 (= lt!1086235 (isEmpty!20267 (c!538931 (_2!20922 lt!1084907))))))

(assert (=> d!880729 (= (isEmpty!20263 (_2!20922 lt!1084907)) lt!1086235)))

(declare-fun bs!541851 () Bool)

(assert (= bs!541851 d!880729))

(declare-fun m!3482681 () Bool)

(assert (=> bs!541851 m!3482681))

(assert (=> bs!541851 m!3482681))

(declare-fun m!3482683 () Bool)

(assert (=> bs!541851 m!3482683))

(declare-fun m!3482685 () Bool)

(assert (=> bs!541851 m!3482685))

(assert (=> b!3209725 d!880729))

(assert (=> bm!232180 d!879527))

(assert (=> bm!232184 d!879527))

(declare-fun d!880731 () Bool)

(declare-fun lt!1086236 () Int)

(assert (=> d!880731 (>= lt!1086236 0)))

(declare-fun e!2002960 () Int)

(assert (=> d!880731 (= lt!1086236 e!2002960)))

(declare-fun c!539758 () Bool)

(assert (=> d!880731 (= c!539758 ((_ is Nil!36177) lt!1085053))))

(assert (=> d!880731 (= (size!27260 lt!1085053) lt!1086236)))

(declare-fun b!3212320 () Bool)

(assert (=> b!3212320 (= e!2002960 0)))

(declare-fun b!3212321 () Bool)

(assert (=> b!3212321 (= e!2002960 (+ 1 (size!27260 (t!238512 lt!1085053))))))

(assert (= (and d!880731 c!539758) b!3212320))

(assert (= (and d!880731 (not c!539758)) b!3212321))

(declare-fun m!3482687 () Bool)

(assert (=> b!3212321 m!3482687))

(assert (=> b!3209994 d!880731))

(declare-fun d!880733 () Bool)

(declare-fun lt!1086237 () Int)

(assert (=> d!880733 (>= lt!1086237 0)))

(declare-fun e!2002961 () Int)

(assert (=> d!880733 (= lt!1086237 e!2002961)))

(declare-fun c!539759 () Bool)

(assert (=> d!880733 (= c!539759 ((_ is Nil!36177) (++!8680 lt!1084683 lt!1084696)))))

(assert (=> d!880733 (= (size!27260 (++!8680 lt!1084683 lt!1084696)) lt!1086237)))

(declare-fun b!3212322 () Bool)

(assert (=> b!3212322 (= e!2002961 0)))

(declare-fun b!3212323 () Bool)

(assert (=> b!3212323 (= e!2002961 (+ 1 (size!27260 (t!238512 (++!8680 lt!1084683 lt!1084696)))))))

(assert (= (and d!880733 c!539759) b!3212322))

(assert (= (and d!880733 (not c!539759)) b!3212323))

(assert (=> b!3212323 m!3479033))

(assert (=> b!3209994 d!880733))

(assert (=> b!3209994 d!879503))

(declare-fun d!880735 () Bool)

(assert (=> d!880735 (= (inv!17 (value!169344 (h!41599 tokens!494))) (= (charsToBigInt!1 (text!38626 (value!169344 (h!41599 tokens!494)))) (value!169336 (value!169344 (h!41599 tokens!494)))))))

(declare-fun bs!541852 () Bool)

(assert (= bs!541852 d!880735))

(declare-fun m!3482689 () Bool)

(assert (=> bs!541852 m!3482689))

(assert (=> b!3209341 d!880735))

(assert (=> bs!541583 d!879121))

(declare-fun d!880737 () Bool)

(declare-fun lt!1086238 () Bool)

(assert (=> d!880737 (= lt!1086238 (isEmpty!20266 (list!12865 (_2!20922 (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 (t!238514 tokens!494)))))))))))

(assert (=> d!880737 (= lt!1086238 (isEmpty!20267 (c!538931 (_2!20922 (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 (t!238514 tokens!494)))))))))))

(assert (=> d!880737 (= (isEmpty!20263 (_2!20922 (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 (t!238514 tokens!494))))))) lt!1086238)))

(declare-fun bs!541853 () Bool)

(assert (= bs!541853 d!880737))

(declare-fun m!3482691 () Bool)

(assert (=> bs!541853 m!3482691))

(assert (=> bs!541853 m!3482691))

(declare-fun m!3482693 () Bool)

(assert (=> bs!541853 m!3482693))

(declare-fun m!3482695 () Bool)

(assert (=> bs!541853 m!3482695))

(assert (=> b!3209726 d!880737))

(assert (=> b!3209726 d!879511))

(assert (=> b!3209726 d!879513))

(assert (=> b!3209726 d!879039))

(declare-fun b!3212324 () Bool)

(declare-fun res!1307572 () Bool)

(declare-fun e!2002966 () Bool)

(assert (=> b!3212324 (=> res!1307572 e!2002966)))

(assert (=> b!3212324 (= res!1307572 (not (isEmpty!20266 (tail!5212 (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) Nil!36177 (size!27260 Nil!36177) lt!1084664 lt!1084664 (size!27260 lt!1084664)))))))))

(declare-fun b!3212325 () Bool)

(declare-fun res!1307568 () Bool)

(declare-fun e!2002967 () Bool)

(assert (=> b!3212325 (=> (not res!1307568) (not e!2002967))))

(assert (=> b!3212325 (= res!1307568 (isEmpty!20266 (tail!5212 (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) Nil!36177 (size!27260 Nil!36177) lt!1084664 lt!1084664 (size!27260 lt!1084664))))))))

(declare-fun b!3212326 () Bool)

(declare-fun e!2002963 () Bool)

(assert (=> b!3212326 (= e!2002963 e!2002966)))

(declare-fun res!1307573 () Bool)

(assert (=> b!3212326 (=> res!1307573 e!2002966)))

(declare-fun call!232497 () Bool)

(assert (=> b!3212326 (= res!1307573 call!232497)))

(declare-fun b!3212327 () Bool)

(declare-fun res!1307571 () Bool)

(declare-fun e!2002968 () Bool)

(assert (=> b!3212327 (=> res!1307571 e!2002968)))

(assert (=> b!3212327 (= res!1307571 (not ((_ is ElementMatch!9983) (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))))))

(declare-fun e!2002962 () Bool)

(assert (=> b!3212327 (= e!2002962 e!2002968)))

(declare-fun b!3212328 () Bool)

(declare-fun e!2002964 () Bool)

(assert (=> b!3212328 (= e!2002964 (matchR!4617 (derivativeStep!2951 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) (head!7043 (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) Nil!36177 (size!27260 Nil!36177) lt!1084664 lt!1084664 (size!27260 lt!1084664))))) (tail!5212 (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) Nil!36177 (size!27260 Nil!36177) lt!1084664 lt!1084664 (size!27260 lt!1084664))))))))

(declare-fun b!3212329 () Bool)

(assert (=> b!3212329 (= e!2002968 e!2002963)))

(declare-fun res!1307567 () Bool)

(assert (=> b!3212329 (=> (not res!1307567) (not e!2002963))))

(declare-fun lt!1086239 () Bool)

(assert (=> b!3212329 (= res!1307567 (not lt!1086239))))

(declare-fun b!3212330 () Bool)

(declare-fun res!1307569 () Bool)

(assert (=> b!3212330 (=> res!1307569 e!2002968)))

(assert (=> b!3212330 (= res!1307569 e!2002967)))

(declare-fun res!1307574 () Bool)

(assert (=> b!3212330 (=> (not res!1307574) (not e!2002967))))

(assert (=> b!3212330 (= res!1307574 lt!1086239)))

(declare-fun b!3212331 () Bool)

(assert (=> b!3212331 (= e!2002964 (nullable!3398 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))))

(declare-fun d!880739 () Bool)

(declare-fun e!2002965 () Bool)

(assert (=> d!880739 e!2002965))

(declare-fun c!539761 () Bool)

(assert (=> d!880739 (= c!539761 ((_ is EmptyExpr!9983) (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))))

(assert (=> d!880739 (= lt!1086239 e!2002964)))

(declare-fun c!539762 () Bool)

(assert (=> d!880739 (= c!539762 (isEmpty!20266 (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) Nil!36177 (size!27260 Nil!36177) lt!1084664 lt!1084664 (size!27260 lt!1084664)))))))

(assert (=> d!880739 (validRegex!4552 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))))

(assert (=> d!880739 (= (matchR!4617 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) Nil!36177 (size!27260 Nil!36177) lt!1084664 lt!1084664 (size!27260 lt!1084664)))) lt!1086239)))

(declare-fun bm!232492 () Bool)

(assert (=> bm!232492 (= call!232497 (isEmpty!20266 (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) Nil!36177 (size!27260 Nil!36177) lt!1084664 lt!1084664 (size!27260 lt!1084664)))))))

(declare-fun b!3212332 () Bool)

(assert (=> b!3212332 (= e!2002966 (not (= (head!7043 (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) Nil!36177 (size!27260 Nil!36177) lt!1084664 lt!1084664 (size!27260 lt!1084664)))) (c!538930 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))))))

(declare-fun b!3212333 () Bool)

(assert (=> b!3212333 (= e!2002967 (= (head!7043 (_1!20925 (findLongestMatchInner!830 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))) Nil!36177 (size!27260 Nil!36177) lt!1084664 lt!1084664 (size!27260 lt!1084664)))) (c!538930 (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))))))

(declare-fun b!3212334 () Bool)

(assert (=> b!3212334 (= e!2002962 (not lt!1086239))))

(declare-fun b!3212335 () Bool)

(assert (=> b!3212335 (= e!2002965 (= lt!1086239 call!232497))))

(declare-fun b!3212336 () Bool)

(declare-fun res!1307570 () Bool)

(assert (=> b!3212336 (=> (not res!1307570) (not e!2002967))))

(assert (=> b!3212336 (= res!1307570 (not call!232497))))

(declare-fun b!3212337 () Bool)

(assert (=> b!3212337 (= e!2002965 e!2002962)))

(declare-fun c!539760 () Bool)

(assert (=> b!3212337 (= c!539760 ((_ is EmptyLang!9983) (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))))

(assert (= (and d!880739 c!539762) b!3212331))

(assert (= (and d!880739 (not c!539762)) b!3212328))

(assert (= (and d!880739 c!539761) b!3212335))

(assert (= (and d!880739 (not c!539761)) b!3212337))

(assert (= (and b!3212337 c!539760) b!3212334))

(assert (= (and b!3212337 (not c!539760)) b!3212327))

(assert (= (and b!3212327 (not res!1307571)) b!3212330))

(assert (= (and b!3212330 res!1307574) b!3212336))

(assert (= (and b!3212336 res!1307570) b!3212325))

(assert (= (and b!3212325 res!1307568) b!3212333))

(assert (= (and b!3212330 (not res!1307569)) b!3212329))

(assert (= (and b!3212329 res!1307567) b!3212326))

(assert (= (and b!3212326 (not res!1307573)) b!3212324))

(assert (= (and b!3212324 (not res!1307572)) b!3212332))

(assert (= (or b!3212335 b!3212326 b!3212336) bm!232492))

(assert (=> b!3212331 m!3480023))

(declare-fun m!3482705 () Bool)

(assert (=> b!3212328 m!3482705))

(assert (=> b!3212328 m!3482705))

(declare-fun m!3482707 () Bool)

(assert (=> b!3212328 m!3482707))

(declare-fun m!3482709 () Bool)

(assert (=> b!3212328 m!3482709))

(assert (=> b!3212328 m!3482707))

(assert (=> b!3212328 m!3482709))

(declare-fun m!3482711 () Bool)

(assert (=> b!3212328 m!3482711))

(assert (=> b!3212332 m!3482705))

(assert (=> b!3212325 m!3482709))

(assert (=> b!3212325 m!3482709))

(declare-fun m!3482713 () Bool)

(assert (=> b!3212325 m!3482713))

(assert (=> d!880739 m!3477579))

(assert (=> d!880739 m!3480001))

(assert (=> bm!232492 m!3477579))

(assert (=> b!3212333 m!3482705))

(assert (=> b!3212324 m!3482709))

(assert (=> b!3212324 m!3482709))

(assert (=> b!3212324 m!3482713))

(assert (=> b!3209670 d!880739))

(assert (=> b!3209670 d!880493))

(assert (=> b!3209670 d!879855))

(assert (=> b!3209670 d!879173))

(declare-fun b!3212343 () Bool)

(declare-fun e!2002971 () Option!7147)

(declare-fun call!232498 () Option!7147)

(assert (=> b!3212343 (= e!2002971 call!232498)))

(declare-fun d!880741 () Bool)

(declare-fun e!2002973 () Bool)

(assert (=> d!880741 e!2002973))

(declare-fun res!1307579 () Bool)

(assert (=> d!880741 (=> res!1307579 e!2002973)))

(declare-fun lt!1086243 () Option!7147)

(assert (=> d!880741 (= res!1307579 (isEmpty!20271 lt!1086243))))

(assert (=> d!880741 (= lt!1086243 e!2002971)))

(declare-fun c!539763 () Bool)

(assert (=> d!880741 (= c!539763 (and ((_ is Cons!36178) (t!238513 rules!2135)) ((_ is Nil!36178) (t!238513 (t!238513 rules!2135)))))))

(declare-fun lt!1086240 () Unit!50642)

(declare-fun lt!1086244 () Unit!50642)

(assert (=> d!880741 (= lt!1086240 lt!1086244)))

(assert (=> d!880741 (isPrefix!2783 lt!1084663 lt!1084663)))

(assert (=> d!880741 (= lt!1086244 (lemmaIsPrefixRefl!1742 lt!1084663 lt!1084663))))

(assert (=> d!880741 (rulesValidInductive!1776 thiss!18206 (t!238513 rules!2135))))

(assert (=> d!880741 (= (maxPrefix!2455 thiss!18206 (t!238513 rules!2135) lt!1084663) lt!1086243)))

(declare-fun b!3212344 () Bool)

(declare-fun res!1307580 () Bool)

(declare-fun e!2002972 () Bool)

(assert (=> b!3212344 (=> (not res!1307580) (not e!2002972))))

(assert (=> b!3212344 (= res!1307580 (< (size!27260 (_2!20921 (get!11520 lt!1086243))) (size!27260 lt!1084663)))))

(declare-fun b!3212345 () Bool)

(declare-fun res!1307578 () Bool)

(assert (=> b!3212345 (=> (not res!1307578) (not e!2002972))))

(assert (=> b!3212345 (= res!1307578 (= (value!169344 (_1!20921 (get!11520 lt!1086243))) (apply!8197 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1086243)))) (seqFromList!3519 (originalCharacters!5938 (_1!20921 (get!11520 lt!1086243)))))))))

(declare-fun b!3212346 () Bool)

(assert (=> b!3212346 (= e!2002973 e!2002972)))

(declare-fun res!1307576 () Bool)

(assert (=> b!3212346 (=> (not res!1307576) (not e!2002972))))

(assert (=> b!3212346 (= res!1307576 (isDefined!5555 lt!1086243))))

(declare-fun b!3212347 () Bool)

(declare-fun res!1307581 () Bool)

(assert (=> b!3212347 (=> (not res!1307581) (not e!2002972))))

(assert (=> b!3212347 (= res!1307581 (= (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1086243)))) (originalCharacters!5938 (_1!20921 (get!11520 lt!1086243)))))))

(declare-fun bm!232493 () Bool)

(assert (=> bm!232493 (= call!232498 (maxPrefixOneRule!1592 thiss!18206 (h!41598 (t!238513 rules!2135)) lt!1084663))))

(declare-fun b!3212348 () Bool)

(declare-fun res!1307577 () Bool)

(assert (=> b!3212348 (=> (not res!1307577) (not e!2002972))))

(assert (=> b!3212348 (= res!1307577 (= (++!8680 (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1086243)))) (_2!20921 (get!11520 lt!1086243))) lt!1084663))))

(declare-fun b!3212349 () Bool)

(declare-fun res!1307575 () Bool)

(assert (=> b!3212349 (=> (not res!1307575) (not e!2002972))))

(assert (=> b!3212349 (= res!1307575 (matchR!4617 (regex!5224 (rule!7664 (_1!20921 (get!11520 lt!1086243)))) (list!12865 (charsOf!3240 (_1!20921 (get!11520 lt!1086243))))))))

(declare-fun b!3212350 () Bool)

(assert (=> b!3212350 (= e!2002972 (contains!6462 (t!238513 rules!2135) (rule!7664 (_1!20921 (get!11520 lt!1086243)))))))

(declare-fun b!3212351 () Bool)

(declare-fun lt!1086242 () Option!7147)

(declare-fun lt!1086241 () Option!7147)

(assert (=> b!3212351 (= e!2002971 (ite (and ((_ is None!7146) lt!1086242) ((_ is None!7146) lt!1086241)) None!7146 (ite ((_ is None!7146) lt!1086241) lt!1086242 (ite ((_ is None!7146) lt!1086242) lt!1086241 (ite (>= (size!27259 (_1!20921 (v!35696 lt!1086242))) (size!27259 (_1!20921 (v!35696 lt!1086241)))) lt!1086242 lt!1086241)))))))

(assert (=> b!3212351 (= lt!1086242 call!232498)))

(assert (=> b!3212351 (= lt!1086241 (maxPrefix!2455 thiss!18206 (t!238513 (t!238513 rules!2135)) lt!1084663))))

(assert (= (and d!880741 c!539763) b!3212343))

(assert (= (and d!880741 (not c!539763)) b!3212351))

(assert (= (or b!3212343 b!3212351) bm!232493))

(assert (= (and d!880741 (not res!1307579)) b!3212346))

(assert (= (and b!3212346 res!1307576) b!3212347))

(assert (= (and b!3212347 res!1307581) b!3212344))

(assert (= (and b!3212344 res!1307580) b!3212348))

(assert (= (and b!3212348 res!1307577) b!3212345))

(assert (= (and b!3212345 res!1307578) b!3212349))

(assert (= (and b!3212349 res!1307575) b!3212350))

(declare-fun m!3482715 () Bool)

(assert (=> b!3212348 m!3482715))

(declare-fun m!3482717 () Bool)

(assert (=> b!3212348 m!3482717))

(assert (=> b!3212348 m!3482717))

(declare-fun m!3482719 () Bool)

(assert (=> b!3212348 m!3482719))

(assert (=> b!3212348 m!3482719))

(declare-fun m!3482721 () Bool)

(assert (=> b!3212348 m!3482721))

(declare-fun m!3482723 () Bool)

(assert (=> b!3212351 m!3482723))

(assert (=> b!3212350 m!3482715))

(declare-fun m!3482725 () Bool)

(assert (=> b!3212350 m!3482725))

(assert (=> b!3212347 m!3482715))

(assert (=> b!3212347 m!3482717))

(assert (=> b!3212347 m!3482717))

(assert (=> b!3212347 m!3482719))

(declare-fun m!3482727 () Bool)

(assert (=> bm!232493 m!3482727))

(assert (=> b!3212345 m!3482715))

(declare-fun m!3482729 () Bool)

(assert (=> b!3212345 m!3482729))

(assert (=> b!3212345 m!3482729))

(declare-fun m!3482731 () Bool)

(assert (=> b!3212345 m!3482731))

(declare-fun m!3482733 () Bool)

(assert (=> d!880741 m!3482733))

(assert (=> d!880741 m!3477743))

(assert (=> d!880741 m!3477745))

(assert (=> d!880741 m!3480433))

(assert (=> b!3212344 m!3482715))

(declare-fun m!3482735 () Bool)

(assert (=> b!3212344 m!3482735))

(assert (=> b!3212344 m!3477751))

(declare-fun m!3482737 () Bool)

(assert (=> b!3212346 m!3482737))

(assert (=> b!3212349 m!3482715))

(assert (=> b!3212349 m!3482717))

(assert (=> b!3212349 m!3482717))

(assert (=> b!3212349 m!3482719))

(assert (=> b!3212349 m!3482719))

(declare-fun m!3482739 () Bool)

(assert (=> b!3212349 m!3482739))

(assert (=> b!3209753 d!880741))

(declare-fun d!880747 () Bool)

(assert (=> d!880747 (= (nullable!3398 (regex!5224 lt!1084660)) (nullableFct!968 (regex!5224 lt!1084660)))))

(declare-fun bs!541856 () Bool)

(assert (= bs!541856 d!880747))

(declare-fun m!3482741 () Bool)

(assert (=> bs!541856 m!3482741))

(assert (=> b!3210034 d!880747))

(declare-fun b!3212352 () Bool)

(declare-fun e!2002974 () List!36301)

(assert (=> b!3212352 (= e!2002974 lt!1084696)))

(declare-fun lt!1086245 () List!36301)

(declare-fun b!3212355 () Bool)

(declare-fun e!2002975 () Bool)

(assert (=> b!3212355 (= e!2002975 (or (not (= lt!1084696 Nil!36177)) (= lt!1086245 (t!238512 lt!1084683))))))

(declare-fun b!3212354 () Bool)

(declare-fun res!1307582 () Bool)

(assert (=> b!3212354 (=> (not res!1307582) (not e!2002975))))

(assert (=> b!3212354 (= res!1307582 (= (size!27260 lt!1086245) (+ (size!27260 (t!238512 lt!1084683)) (size!27260 lt!1084696))))))

(declare-fun d!880749 () Bool)

(assert (=> d!880749 e!2002975))

(declare-fun res!1307583 () Bool)

(assert (=> d!880749 (=> (not res!1307583) (not e!2002975))))

(assert (=> d!880749 (= res!1307583 (= (content!4888 lt!1086245) ((_ map or) (content!4888 (t!238512 lt!1084683)) (content!4888 lt!1084696))))))

(assert (=> d!880749 (= lt!1086245 e!2002974)))

(declare-fun c!539764 () Bool)

(assert (=> d!880749 (= c!539764 ((_ is Nil!36177) (t!238512 lt!1084683)))))

(assert (=> d!880749 (= (++!8680 (t!238512 lt!1084683) lt!1084696) lt!1086245)))

(declare-fun b!3212353 () Bool)

(assert (=> b!3212353 (= e!2002974 (Cons!36177 (h!41597 (t!238512 lt!1084683)) (++!8680 (t!238512 (t!238512 lt!1084683)) lt!1084696)))))

(assert (= (and d!880749 c!539764) b!3212352))

(assert (= (and d!880749 (not c!539764)) b!3212353))

(assert (= (and d!880749 res!1307583) b!3212354))

(assert (= (and b!3212354 res!1307582) b!3212355))

(declare-fun m!3482743 () Bool)

(assert (=> b!3212354 m!3482743))

(assert (=> b!3212354 m!3477289))

(assert (=> b!3212354 m!3478257))

(declare-fun m!3482745 () Bool)

(assert (=> d!880749 m!3482745))

(declare-fun m!3482747 () Bool)

(assert (=> d!880749 m!3482747))

(assert (=> d!880749 m!3478261))

(declare-fun m!3482749 () Bool)

(assert (=> b!3212353 m!3482749))

(assert (=> b!3209997 d!880749))

(declare-fun d!880751 () Bool)

(declare-fun lt!1086246 () Int)

(assert (=> d!880751 (= lt!1086246 (size!27264 (list!12869 (_1!20922 lt!1085063))))))

(assert (=> d!880751 (= lt!1086246 (size!27265 (c!538932 (_1!20922 lt!1085063))))))

(assert (=> d!880751 (= (size!27261 (_1!20922 lt!1085063)) lt!1086246)))

(declare-fun bs!541857 () Bool)

(assert (= bs!541857 d!880751))

(assert (=> bs!541857 m!3478333))

(assert (=> bs!541857 m!3478333))

(declare-fun m!3482751 () Bool)

(assert (=> bs!541857 m!3482751))

(declare-fun m!3482753 () Bool)

(assert (=> bs!541857 m!3482753))

(assert (=> d!879277 d!880751))

(declare-fun b!3212356 () Bool)

(declare-fun e!2002978 () Bool)

(declare-fun lt!1086277 () tuple2!35576)

(assert (=> b!3212356 (= e!2002978 (= (list!12865 (_2!20922 lt!1086277)) (list!12865 (_2!20922 (lexRec!687 thiss!18206 rules!2135 lt!1084685)))))))

(declare-fun lt!1086264 () Option!7150)

(declare-fun b!3212357 () Bool)

(declare-fun lt!1086258 () tuple2!35576)

(assert (=> b!3212357 (= lt!1086258 (lexRec!687 thiss!18206 rules!2135 (_2!20928 (v!35709 lt!1086264))))))

(declare-fun e!2002977 () tuple2!35576)

(assert (=> b!3212357 (= e!2002977 (tuple2!35577 (prepend!1175 (_1!20922 lt!1086258) (_1!20928 (v!35709 lt!1086264))) (_2!20922 lt!1086258)))))

(declare-fun d!880753 () Bool)

(assert (=> d!880753 e!2002978))

(declare-fun res!1307584 () Bool)

(assert (=> d!880753 (=> (not res!1307584) (not e!2002978))))

(assert (=> d!880753 (= res!1307584 (= (list!12869 (_1!20922 lt!1086277)) (list!12869 (_1!20922 (lexRec!687 thiss!18206 rules!2135 lt!1084685)))))))

(declare-fun e!2002979 () tuple2!35576)

(assert (=> d!880753 (= lt!1086277 e!2002979)))

(declare-fun c!539767 () Bool)

(declare-fun lt!1086278 () Option!7150)

(assert (=> d!880753 (= c!539767 ((_ is Some!7149) lt!1086278))))

(assert (=> d!880753 (= lt!1086278 (maxPrefixZipperSequenceV2!474 thiss!18206 rules!2135 lt!1084685 lt!1084685))))

(declare-fun lt!1086254 () Unit!50642)

(declare-fun lt!1086249 () Unit!50642)

(assert (=> d!880753 (= lt!1086254 lt!1086249)))

(declare-fun lt!1086260 () List!36301)

(declare-fun lt!1086274 () List!36301)

(assert (=> d!880753 (isSuffix!849 lt!1086260 (++!8680 lt!1086274 lt!1086260))))

(assert (=> d!880753 (= lt!1086249 (lemmaConcatTwoListThenFSndIsSuffix!534 lt!1086274 lt!1086260))))

(assert (=> d!880753 (= lt!1086260 (list!12865 lt!1084685))))

(assert (=> d!880753 (= lt!1086274 (list!12865 (BalanceConc!21261 Empty!10823)))))

(assert (=> d!880753 (= (lexTailRecV2!933 thiss!18206 rules!2135 lt!1084685 (BalanceConc!21261 Empty!10823) lt!1084685 (BalanceConc!21263 Empty!10824)) lt!1086277)))

(declare-fun b!3212358 () Bool)

(declare-fun lt!1086268 () BalanceConc!21260)

(assert (=> b!3212358 (= e!2002977 (tuple2!35577 (BalanceConc!21263 Empty!10824) lt!1086268))))

(declare-fun b!3212359 () Bool)

(declare-fun lt!1086248 () Option!7150)

(declare-fun lt!1086262 () tuple2!35576)

(assert (=> b!3212359 (= lt!1086262 (lexRec!687 thiss!18206 rules!2135 (_2!20928 (v!35709 lt!1086248))))))

(declare-fun e!2002976 () tuple2!35576)

(assert (=> b!3212359 (= e!2002976 (tuple2!35577 (prepend!1175 (_1!20922 lt!1086262) (_1!20928 (v!35709 lt!1086248))) (_2!20922 lt!1086262)))))

(declare-fun lt!1086270 () BalanceConc!21260)

(declare-fun b!3212360 () Bool)

(assert (=> b!3212360 (= e!2002979 (lexTailRecV2!933 thiss!18206 rules!2135 lt!1084685 lt!1086270 (_2!20928 (v!35709 lt!1086278)) (append!867 (BalanceConc!21263 Empty!10824) (_1!20928 (v!35709 lt!1086278)))))))

(declare-fun lt!1086280 () tuple2!35576)

(assert (=> b!3212360 (= lt!1086280 (lexRec!687 thiss!18206 rules!2135 (_2!20928 (v!35709 lt!1086278))))))

(declare-fun lt!1086272 () List!36301)

(assert (=> b!3212360 (= lt!1086272 (list!12865 (BalanceConc!21261 Empty!10823)))))

(declare-fun lt!1086267 () List!36301)

(assert (=> b!3212360 (= lt!1086267 (list!12865 (charsOf!3240 (_1!20928 (v!35709 lt!1086278)))))))

(declare-fun lt!1086269 () List!36301)

(assert (=> b!3212360 (= lt!1086269 (list!12865 (_2!20928 (v!35709 lt!1086278))))))

(declare-fun lt!1086259 () Unit!50642)

(assert (=> b!3212360 (= lt!1086259 (lemmaConcatAssociativity!1746 lt!1086272 lt!1086267 lt!1086269))))

(assert (=> b!3212360 (= (++!8680 (++!8680 lt!1086272 lt!1086267) lt!1086269) (++!8680 lt!1086272 (++!8680 lt!1086267 lt!1086269)))))

(declare-fun lt!1086247 () Unit!50642)

(assert (=> b!3212360 (= lt!1086247 lt!1086259)))

(assert (=> b!3212360 (= lt!1086248 (maxPrefixZipperSequence!1080 thiss!18206 rules!2135 lt!1084685))))

(declare-fun c!539765 () Bool)

(assert (=> b!3212360 (= c!539765 ((_ is Some!7149) lt!1086248))))

(assert (=> b!3212360 (= (lexRec!687 thiss!18206 rules!2135 lt!1084685) e!2002976)))

(declare-fun lt!1086257 () Unit!50642)

(declare-fun Unit!50665 () Unit!50642)

(assert (=> b!3212360 (= lt!1086257 Unit!50665)))

(declare-fun lt!1086275 () List!36303)

(assert (=> b!3212360 (= lt!1086275 (list!12869 (BalanceConc!21263 Empty!10824)))))

(declare-fun lt!1086276 () List!36303)

(assert (=> b!3212360 (= lt!1086276 (Cons!36179 (_1!20928 (v!35709 lt!1086278)) Nil!36179))))

(declare-fun lt!1086251 () List!36303)

(assert (=> b!3212360 (= lt!1086251 (list!12869 (_1!20922 lt!1086280)))))

(declare-fun lt!1086255 () Unit!50642)

(assert (=> b!3212360 (= lt!1086255 (lemmaConcatAssociativity!1748 lt!1086275 lt!1086276 lt!1086251))))

(assert (=> b!3212360 (= (++!8684 (++!8684 lt!1086275 lt!1086276) lt!1086251) (++!8684 lt!1086275 (++!8684 lt!1086276 lt!1086251)))))

(declare-fun lt!1086263 () Unit!50642)

(assert (=> b!3212360 (= lt!1086263 lt!1086255)))

(declare-fun lt!1086266 () List!36301)

(assert (=> b!3212360 (= lt!1086266 (++!8680 (list!12865 (BalanceConc!21261 Empty!10823)) (list!12865 (charsOf!3240 (_1!20928 (v!35709 lt!1086278))))))))

(declare-fun lt!1086252 () List!36301)

(assert (=> b!3212360 (= lt!1086252 (list!12865 (_2!20928 (v!35709 lt!1086278))))))

(declare-fun lt!1086271 () List!36303)

(assert (=> b!3212360 (= lt!1086271 (list!12869 (append!867 (BalanceConc!21263 Empty!10824) (_1!20928 (v!35709 lt!1086278)))))))

(declare-fun lt!1086253 () Unit!50642)

(assert (=> b!3212360 (= lt!1086253 (lemmaLexThenLexPrefix!452 thiss!18206 rules!2135 lt!1086266 lt!1086252 lt!1086271 (list!12869 (_1!20922 lt!1086280)) (list!12865 (_2!20922 lt!1086280))))))

(assert (=> b!3212360 (= (lexList!1313 thiss!18206 rules!2135 lt!1086266) (tuple2!35581 lt!1086271 Nil!36177))))

(declare-fun lt!1086265 () Unit!50642)

(assert (=> b!3212360 (= lt!1086265 lt!1086253)))

(assert (=> b!3212360 (= lt!1086268 (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (_1!20928 (v!35709 lt!1086278)))))))

(assert (=> b!3212360 (= lt!1086264 (maxPrefixZipperSequence!1080 thiss!18206 rules!2135 lt!1086268))))

(declare-fun c!539766 () Bool)

(assert (=> b!3212360 (= c!539766 ((_ is Some!7149) lt!1086264))))

(assert (=> b!3212360 (= (lexRec!687 thiss!18206 rules!2135 (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (_1!20928 (v!35709 lt!1086278))))) e!2002977)))

(declare-fun lt!1086256 () Unit!50642)

(declare-fun Unit!50666 () Unit!50642)

(assert (=> b!3212360 (= lt!1086256 Unit!50666)))

(assert (=> b!3212360 (= lt!1086270 (++!8682 (BalanceConc!21261 Empty!10823) (charsOf!3240 (_1!20928 (v!35709 lt!1086278)))))))

(declare-fun lt!1086261 () List!36301)

(assert (=> b!3212360 (= lt!1086261 (list!12865 lt!1086270))))

(declare-fun lt!1086250 () List!36301)

(assert (=> b!3212360 (= lt!1086250 (list!12865 (_2!20928 (v!35709 lt!1086278))))))

(declare-fun lt!1086279 () Unit!50642)

(assert (=> b!3212360 (= lt!1086279 (lemmaConcatTwoListThenFSndIsSuffix!534 lt!1086261 lt!1086250))))

(assert (=> b!3212360 (isSuffix!849 lt!1086250 (++!8680 lt!1086261 lt!1086250))))

(declare-fun lt!1086273 () Unit!50642)

(assert (=> b!3212360 (= lt!1086273 lt!1086279)))

(declare-fun b!3212361 () Bool)

(assert (=> b!3212361 (= e!2002979 (tuple2!35577 (BalanceConc!21263 Empty!10824) lt!1084685))))

(declare-fun b!3212362 () Bool)

(assert (=> b!3212362 (= e!2002976 (tuple2!35577 (BalanceConc!21263 Empty!10824) lt!1084685))))

(assert (= (and d!880753 c!539767) b!3212360))

(assert (= (and d!880753 (not c!539767)) b!3212361))

(assert (= (and b!3212360 c!539765) b!3212359))

(assert (= (and b!3212360 (not c!539765)) b!3212362))

(assert (= (and b!3212360 c!539766) b!3212357))

(assert (= (and b!3212360 (not c!539766)) b!3212358))

(assert (= (and d!880753 res!1307584) b!3212356))

(declare-fun m!3482755 () Bool)

(assert (=> b!3212356 m!3482755))

(declare-fun m!3482757 () Bool)

(assert (=> b!3212356 m!3482757))

(declare-fun m!3482759 () Bool)

(assert (=> b!3212356 m!3482759))

(declare-fun m!3482761 () Bool)

(assert (=> d!880753 m!3482761))

(declare-fun m!3482763 () Bool)

(assert (=> d!880753 m!3482763))

(assert (=> d!880753 m!3478335))

(declare-fun m!3482765 () Bool)

(assert (=> d!880753 m!3482765))

(declare-fun m!3482767 () Bool)

(assert (=> d!880753 m!3482767))

(assert (=> d!880753 m!3482757))

(declare-fun m!3482769 () Bool)

(assert (=> d!880753 m!3482769))

(assert (=> d!880753 m!3482761))

(declare-fun m!3482771 () Bool)

(assert (=> d!880753 m!3482771))

(assert (=> d!880753 m!3476993))

(declare-fun m!3482773 () Bool)

(assert (=> b!3212360 m!3482773))

(declare-fun m!3482775 () Bool)

(assert (=> b!3212360 m!3482775))

(declare-fun m!3482777 () Bool)

(assert (=> b!3212360 m!3482777))

(assert (=> b!3212360 m!3476993))

(declare-fun m!3482779 () Bool)

(assert (=> b!3212360 m!3482779))

(declare-fun m!3482781 () Bool)

(assert (=> b!3212360 m!3482781))

(assert (=> b!3212360 m!3476993))

(declare-fun m!3482783 () Bool)

(assert (=> b!3212360 m!3482783))

(declare-fun m!3482785 () Bool)

(assert (=> b!3212360 m!3482785))

(declare-fun m!3482787 () Bool)

(assert (=> b!3212360 m!3482787))

(declare-fun m!3482789 () Bool)

(assert (=> b!3212360 m!3482789))

(declare-fun m!3482791 () Bool)

(assert (=> b!3212360 m!3482791))

(assert (=> b!3212360 m!3482775))

(declare-fun m!3482793 () Bool)

(assert (=> b!3212360 m!3482793))

(declare-fun m!3482795 () Bool)

(assert (=> b!3212360 m!3482795))

(assert (=> b!3212360 m!3482757))

(assert (=> b!3212360 m!3482773))

(declare-fun m!3482797 () Bool)

(assert (=> b!3212360 m!3482797))

(declare-fun m!3482799 () Bool)

(assert (=> b!3212360 m!3482799))

(declare-fun m!3482801 () Bool)

(assert (=> b!3212360 m!3482801))

(declare-fun m!3482803 () Bool)

(assert (=> b!3212360 m!3482803))

(declare-fun m!3482805 () Bool)

(assert (=> b!3212360 m!3482805))

(declare-fun m!3482807 () Bool)

(assert (=> b!3212360 m!3482807))

(assert (=> b!3212360 m!3482795))

(declare-fun m!3482809 () Bool)

(assert (=> b!3212360 m!3482809))

(declare-fun m!3482811 () Bool)

(assert (=> b!3212360 m!3482811))

(assert (=> b!3212360 m!3482785))

(declare-fun m!3482813 () Bool)

(assert (=> b!3212360 m!3482813))

(declare-fun m!3482815 () Bool)

(assert (=> b!3212360 m!3482815))

(declare-fun m!3482817 () Bool)

(assert (=> b!3212360 m!3482817))

(declare-fun m!3482819 () Bool)

(assert (=> b!3212360 m!3482819))

(declare-fun m!3482821 () Bool)

(assert (=> b!3212360 m!3482821))

(declare-fun m!3482823 () Bool)

(assert (=> b!3212360 m!3482823))

(declare-fun m!3482825 () Bool)

(assert (=> b!3212360 m!3482825))

(declare-fun m!3482827 () Bool)

(assert (=> b!3212360 m!3482827))

(declare-fun m!3482829 () Bool)

(assert (=> b!3212360 m!3482829))

(assert (=> b!3212360 m!3482805))

(assert (=> b!3212360 m!3482789))

(assert (=> b!3212360 m!3482801))

(declare-fun m!3482831 () Bool)

(assert (=> b!3212360 m!3482831))

(assert (=> b!3212360 m!3482825))

(assert (=> b!3212360 m!3482821))

(assert (=> b!3212360 m!3478905))

(assert (=> b!3212360 m!3482805))

(assert (=> b!3212360 m!3482779))

(assert (=> b!3212360 m!3482797))

(assert (=> b!3212360 m!3482775))

(declare-fun m!3482833 () Bool)

(assert (=> b!3212359 m!3482833))

(declare-fun m!3482835 () Bool)

(assert (=> b!3212359 m!3482835))

(declare-fun m!3482837 () Bool)

(assert (=> b!3212357 m!3482837))

(declare-fun m!3482839 () Bool)

(assert (=> b!3212357 m!3482839))

(assert (=> d!879277 d!880753))

(assert (=> b!3209310 d!880717))

(assert (=> b!3209310 d!879677))

(declare-fun d!880755 () Bool)

(declare-fun res!1307585 () Bool)

(declare-fun e!2002980 () Bool)

(assert (=> d!880755 (=> res!1307585 e!2002980)))

(assert (=> d!880755 (= res!1307585 ((_ is Nil!36179) (list!12869 (seqFromList!3520 tokens!494))))))

(assert (=> d!880755 (= (forall!7388 (list!12869 (seqFromList!3520 tokens!494)) lambda!117489) e!2002980)))

(declare-fun b!3212363 () Bool)

(declare-fun e!2002981 () Bool)

(assert (=> b!3212363 (= e!2002980 e!2002981)))

(declare-fun res!1307586 () Bool)

(assert (=> b!3212363 (=> (not res!1307586) (not e!2002981))))

(assert (=> b!3212363 (= res!1307586 (dynLambda!14613 lambda!117489 (h!41599 (list!12869 (seqFromList!3520 tokens!494)))))))

(declare-fun b!3212364 () Bool)

(assert (=> b!3212364 (= e!2002981 (forall!7388 (t!238514 (list!12869 (seqFromList!3520 tokens!494))) lambda!117489))))

(assert (= (and d!880755 (not res!1307585)) b!3212363))

(assert (= (and b!3212363 res!1307586) b!3212364))

(declare-fun b_lambda!88079 () Bool)

(assert (=> (not b_lambda!88079) (not b!3212363)))

(declare-fun m!3482841 () Bool)

(assert (=> b!3212363 m!3482841))

(declare-fun m!3482843 () Bool)

(assert (=> b!3212364 m!3482843))

(assert (=> d!879211 d!880755))

(assert (=> d!879211 d!879635))

(declare-fun d!880757 () Bool)

(declare-fun lt!1086283 () Bool)

(assert (=> d!880757 (= lt!1086283 (forall!7388 (list!12869 (seqFromList!3520 tokens!494)) lambda!117489))))

(declare-fun forall!7394 (Conc!10824 Int) Bool)

(assert (=> d!880757 (= lt!1086283 (forall!7394 (c!538932 (seqFromList!3520 tokens!494)) lambda!117489))))

(assert (=> d!880757 (= (forall!7390 (seqFromList!3520 tokens!494) lambda!117489) lt!1086283)))

(declare-fun bs!541858 () Bool)

(assert (= bs!541858 d!880757))

(assert (=> bs!541858 m!3476745))

(assert (=> bs!541858 m!3478215))

(assert (=> bs!541858 m!3478215))

(assert (=> bs!541858 m!3478217))

(declare-fun m!3482845 () Bool)

(assert (=> bs!541858 m!3482845))

(assert (=> d!879211 d!880757))

(assert (=> d!879211 d!878957))

(declare-fun d!880759 () Bool)

(assert (=> d!880759 (= (inv!49040 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (value!169344 separatorToken!241))) (isBalanced!3218 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (value!169344 separatorToken!241)))))))

(declare-fun bs!541859 () Bool)

(assert (= bs!541859 d!880759))

(declare-fun m!3482847 () Bool)

(assert (=> bs!541859 m!3482847))

(assert (=> tb!157577 d!880759))

(declare-fun d!880761 () Bool)

(declare-fun lt!1086284 () Int)

(assert (=> d!880761 (>= lt!1086284 0)))

(declare-fun e!2002982 () Int)

(assert (=> d!880761 (= lt!1086284 e!2002982)))

(declare-fun c!539768 () Bool)

(assert (=> d!880761 (= c!539768 ((_ is Nil!36177) lt!1085066))))

(assert (=> d!880761 (= (size!27260 lt!1085066) lt!1086284)))

(declare-fun b!3212365 () Bool)

(assert (=> b!3212365 (= e!2002982 0)))

(declare-fun b!3212366 () Bool)

(assert (=> b!3212366 (= e!2002982 (+ 1 (size!27260 (t!238512 lt!1085066))))))

(assert (= (and d!880761 c!539768) b!3212365))

(assert (= (and d!880761 (not c!539768)) b!3212366))

(declare-fun m!3482849 () Bool)

(assert (=> b!3212366 m!3482849))

(assert (=> b!3210058 d!880761))

(assert (=> b!3210058 d!879173))

(assert (=> b!3210058 d!879501))

(declare-fun d!880763 () Bool)

(assert (=> d!880763 (dynLambda!14613 lambda!117479 (h!41599 (t!238514 tokens!494)))))

(assert (=> d!880763 true))

(declare-fun _$7!1092 () Unit!50642)

(assert (=> d!880763 (= (choose!18727 tokens!494 lambda!117479 (h!41599 (t!238514 tokens!494))) _$7!1092)))

(declare-fun b_lambda!88081 () Bool)

(assert (=> (not b_lambda!88081) (not d!880763)))

(declare-fun bs!541860 () Bool)

(assert (= bs!541860 d!880763))

(assert (=> bs!541860 m!3477295))

(assert (=> d!879031 d!880763))

(declare-fun d!880765 () Bool)

(declare-fun res!1307587 () Bool)

(declare-fun e!2002983 () Bool)

(assert (=> d!880765 (=> res!1307587 e!2002983)))

(assert (=> d!880765 (= res!1307587 ((_ is Nil!36179) tokens!494))))

(assert (=> d!880765 (= (forall!7388 tokens!494 lambda!117479) e!2002983)))

(declare-fun b!3212367 () Bool)

(declare-fun e!2002984 () Bool)

(assert (=> b!3212367 (= e!2002983 e!2002984)))

(declare-fun res!1307588 () Bool)

(assert (=> b!3212367 (=> (not res!1307588) (not e!2002984))))

(assert (=> b!3212367 (= res!1307588 (dynLambda!14613 lambda!117479 (h!41599 tokens!494)))))

(declare-fun b!3212368 () Bool)

(assert (=> b!3212368 (= e!2002984 (forall!7388 (t!238514 tokens!494) lambda!117479))))

(assert (= (and d!880765 (not res!1307587)) b!3212367))

(assert (= (and b!3212367 res!1307588) b!3212368))

(declare-fun b_lambda!88083 () Bool)

(assert (=> (not b_lambda!88083) (not b!3212367)))

(declare-fun m!3482851 () Bool)

(assert (=> b!3212367 m!3482851))

(declare-fun m!3482853 () Bool)

(assert (=> b!3212368 m!3482853))

(assert (=> d!879031 d!880765))

(assert (=> b!3209850 d!880369))

(assert (=> b!3209850 d!880373))

(declare-fun d!880767 () Bool)

(declare-fun e!2002985 () Bool)

(assert (=> d!880767 e!2002985))

(declare-fun res!1307589 () Bool)

(assert (=> d!880767 (=> res!1307589 e!2002985)))

(declare-fun lt!1086287 () Option!7148)

(assert (=> d!880767 (= res!1307589 (isEmpty!20270 lt!1086287))))

(declare-fun e!2002988 () Option!7148)

(assert (=> d!880767 (= lt!1086287 e!2002988)))

(declare-fun c!539770 () Bool)

(assert (=> d!880767 (= c!539770 (and ((_ is Cons!36178) (t!238513 rules!2135)) (= (tag!5750 (h!41598 (t!238513 rules!2135))) (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494)))))))))

(assert (=> d!880767 (rulesInvariant!4210 thiss!18206 (t!238513 rules!2135))))

(assert (=> d!880767 (= (getRuleFromTag!929 thiss!18206 (t!238513 rules!2135) (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494))))) lt!1086287)))

(declare-fun b!3212369 () Bool)

(declare-fun e!2002987 () Bool)

(assert (=> b!3212369 (= e!2002987 (= (tag!5750 (get!11519 lt!1086287)) (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494))))))))

(declare-fun b!3212370 () Bool)

(declare-fun e!2002986 () Option!7148)

(assert (=> b!3212370 (= e!2002986 None!7147)))

(declare-fun b!3212371 () Bool)

(assert (=> b!3212371 (= e!2002988 e!2002986)))

(declare-fun c!539769 () Bool)

(assert (=> b!3212371 (= c!539769 (and ((_ is Cons!36178) (t!238513 rules!2135)) (not (= (tag!5750 (h!41598 (t!238513 rules!2135))) (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494))))))))))

(declare-fun b!3212372 () Bool)

(assert (=> b!3212372 (= e!2002985 e!2002987)))

(declare-fun res!1307590 () Bool)

(assert (=> b!3212372 (=> (not res!1307590) (not e!2002987))))

(assert (=> b!3212372 (= res!1307590 (contains!6462 (t!238513 rules!2135) (get!11519 lt!1086287)))))

(declare-fun b!3212373 () Bool)

(assert (=> b!3212373 (= e!2002988 (Some!7147 (h!41598 (t!238513 rules!2135))))))

(declare-fun b!3212374 () Bool)

(declare-fun lt!1086286 () Unit!50642)

(declare-fun lt!1086285 () Unit!50642)

(assert (=> b!3212374 (= lt!1086286 lt!1086285)))

(assert (=> b!3212374 (rulesInvariant!4210 thiss!18206 (t!238513 (t!238513 rules!2135)))))

(assert (=> b!3212374 (= lt!1086285 (lemmaInvariantOnRulesThenOnTail!349 thiss!18206 (h!41598 (t!238513 rules!2135)) (t!238513 (t!238513 rules!2135))))))

(assert (=> b!3212374 (= e!2002986 (getRuleFromTag!929 thiss!18206 (t!238513 (t!238513 rules!2135)) (tag!5750 (rule!7664 (h!41599 (t!238514 tokens!494))))))))

(assert (= (and d!880767 c!539770) b!3212373))

(assert (= (and d!880767 (not c!539770)) b!3212371))

(assert (= (and b!3212371 c!539769) b!3212374))

(assert (= (and b!3212371 (not c!539769)) b!3212370))

(assert (= (and d!880767 (not res!1307589)) b!3212372))

(assert (= (and b!3212372 res!1307590) b!3212369))

(declare-fun m!3482855 () Bool)

(assert (=> d!880767 m!3482855))

(assert (=> d!880767 m!3477267))

(declare-fun m!3482857 () Bool)

(assert (=> b!3212369 m!3482857))

(assert (=> b!3212372 m!3482857))

(assert (=> b!3212372 m!3482857))

(declare-fun m!3482859 () Bool)

(assert (=> b!3212372 m!3482859))

(assert (=> b!3212374 m!3481643))

(assert (=> b!3212374 m!3481645))

(declare-fun m!3482861 () Bool)

(assert (=> b!3212374 m!3482861))

(assert (=> b!3209850 d!880767))

(declare-fun d!880769 () Bool)

(declare-fun lt!1086288 () Bool)

(assert (=> d!880769 (= lt!1086288 (isEmpty!20274 (list!12869 (_1!20922 lt!1085063))))))

(assert (=> d!880769 (= lt!1086288 (isEmpty!20275 (c!538932 (_1!20922 lt!1085063))))))

(assert (=> d!880769 (= (isEmpty!20261 (_1!20922 lt!1085063)) lt!1086288)))

(declare-fun bs!541861 () Bool)

(assert (= bs!541861 d!880769))

(assert (=> bs!541861 m!3478333))

(assert (=> bs!541861 m!3478333))

(declare-fun m!3482863 () Bool)

(assert (=> bs!541861 m!3482863))

(declare-fun m!3482865 () Bool)

(assert (=> bs!541861 m!3482865))

(assert (=> b!3210041 d!880769))

(declare-fun d!880771 () Bool)

(declare-fun lt!1086289 () Int)

(assert (=> d!880771 (>= lt!1086289 0)))

(declare-fun e!2002989 () Int)

(assert (=> d!880771 (= lt!1086289 e!2002989)))

(declare-fun c!539771 () Bool)

(assert (=> d!880771 (= c!539771 ((_ is Nil!36177) (_2!20921 (get!11520 lt!1084932))))))

(assert (=> d!880771 (= (size!27260 (_2!20921 (get!11520 lt!1084932))) lt!1086289)))

(declare-fun b!3212375 () Bool)

(assert (=> b!3212375 (= e!2002989 0)))

(declare-fun b!3212376 () Bool)

(assert (=> b!3212376 (= e!2002989 (+ 1 (size!27260 (t!238512 (_2!20921 (get!11520 lt!1084932))))))))

(assert (= (and d!880771 c!539771) b!3212375))

(assert (= (and d!880771 (not c!539771)) b!3212376))

(declare-fun m!3482867 () Bool)

(assert (=> b!3212376 m!3482867))

(assert (=> b!3209746 d!880771))

(assert (=> b!3209746 d!879415))

(declare-fun d!880773 () Bool)

(declare-fun lt!1086290 () Int)

(assert (=> d!880773 (>= lt!1086290 0)))

(declare-fun e!2002990 () Int)

(assert (=> d!880773 (= lt!1086290 e!2002990)))

(declare-fun c!539772 () Bool)

(assert (=> d!880773 (= c!539772 ((_ is Nil!36177) lt!1084663))))

(assert (=> d!880773 (= (size!27260 lt!1084663) lt!1086290)))

(declare-fun b!3212377 () Bool)

(assert (=> b!3212377 (= e!2002990 0)))

(declare-fun b!3212378 () Bool)

(assert (=> b!3212378 (= e!2002990 (+ 1 (size!27260 (t!238512 lt!1084663))))))

(assert (= (and d!880773 c!539772) b!3212377))

(assert (= (and d!880773 (not c!539772)) b!3212378))

(declare-fun m!3482869 () Bool)

(assert (=> b!3212378 m!3482869))

(assert (=> b!3209746 d!880773))

(declare-fun d!880775 () Bool)

(assert (=> d!880775 (= (list!12869 lt!1084766) (list!12871 (c!538932 lt!1084766)))))

(declare-fun bs!541862 () Bool)

(assert (= bs!541862 d!880775))

(declare-fun m!3482871 () Bool)

(assert (=> bs!541862 m!3482871))

(assert (=> d!878949 d!880775))

(declare-fun d!880777 () Bool)

(declare-fun e!2002991 () Bool)

(assert (=> d!880777 e!2002991))

(declare-fun res!1307591 () Bool)

(assert (=> d!880777 (=> (not res!1307591) (not e!2002991))))

(declare-fun lt!1086291 () BalanceConc!21262)

(assert (=> d!880777 (= res!1307591 (= (list!12869 lt!1086291) (Cons!36179 (h!41599 tokens!494) Nil!36179)))))

(assert (=> d!880777 (= lt!1086291 (choose!18745 (h!41599 tokens!494)))))

(assert (=> d!880777 (= (singleton!994 (h!41599 tokens!494)) lt!1086291)))

(declare-fun b!3212379 () Bool)

(assert (=> b!3212379 (= e!2002991 (isBalanced!3217 (c!538932 lt!1086291)))))

(assert (= (and d!880777 res!1307591) b!3212379))

(declare-fun m!3482873 () Bool)

(assert (=> d!880777 m!3482873))

(declare-fun m!3482875 () Bool)

(assert (=> d!880777 m!3482875))

(declare-fun m!3482877 () Bool)

(assert (=> b!3212379 m!3482877))

(assert (=> d!878949 d!880777))

(assert (=> b!3210054 d!878969))

(assert (=> b!3210054 d!878967))

(declare-fun e!2002992 () List!36301)

(declare-fun b!3212380 () Bool)

(assert (=> b!3212380 (= e!2002992 (printWithSeparatorTokenList!158 thiss!18206 (t!238514 tokens!494) separatorToken!241))))

(declare-fun lt!1086292 () List!36301)

(declare-fun e!2002993 () Bool)

(declare-fun b!3212383 () Bool)

(assert (=> b!3212383 (= e!2002993 (or (not (= (printWithSeparatorTokenList!158 thiss!18206 (t!238514 tokens!494) separatorToken!241) Nil!36177)) (= lt!1086292 (++!8680 (list!12865 (charsOf!3240 (h!41599 tokens!494))) (list!12865 (charsOf!3240 separatorToken!241))))))))

(declare-fun b!3212382 () Bool)

(declare-fun res!1307592 () Bool)

(assert (=> b!3212382 (=> (not res!1307592) (not e!2002993))))

(assert (=> b!3212382 (= res!1307592 (= (size!27260 lt!1086292) (+ (size!27260 (++!8680 (list!12865 (charsOf!3240 (h!41599 tokens!494))) (list!12865 (charsOf!3240 separatorToken!241)))) (size!27260 (printWithSeparatorTokenList!158 thiss!18206 (t!238514 tokens!494) separatorToken!241)))))))

(declare-fun d!880779 () Bool)

(assert (=> d!880779 e!2002993))

(declare-fun res!1307593 () Bool)

(assert (=> d!880779 (=> (not res!1307593) (not e!2002993))))

(assert (=> d!880779 (= res!1307593 (= (content!4888 lt!1086292) ((_ map or) (content!4888 (++!8680 (list!12865 (charsOf!3240 (h!41599 tokens!494))) (list!12865 (charsOf!3240 separatorToken!241)))) (content!4888 (printWithSeparatorTokenList!158 thiss!18206 (t!238514 tokens!494) separatorToken!241)))))))

(assert (=> d!880779 (= lt!1086292 e!2002992)))

(declare-fun c!539773 () Bool)

(assert (=> d!880779 (= c!539773 ((_ is Nil!36177) (++!8680 (list!12865 (charsOf!3240 (h!41599 tokens!494))) (list!12865 (charsOf!3240 separatorToken!241)))))))

(assert (=> d!880779 (= (++!8680 (++!8680 (list!12865 (charsOf!3240 (h!41599 tokens!494))) (list!12865 (charsOf!3240 separatorToken!241))) (printWithSeparatorTokenList!158 thiss!18206 (t!238514 tokens!494) separatorToken!241)) lt!1086292)))

(declare-fun b!3212381 () Bool)

(assert (=> b!3212381 (= e!2002992 (Cons!36177 (h!41597 (++!8680 (list!12865 (charsOf!3240 (h!41599 tokens!494))) (list!12865 (charsOf!3240 separatorToken!241)))) (++!8680 (t!238512 (++!8680 (list!12865 (charsOf!3240 (h!41599 tokens!494))) (list!12865 (charsOf!3240 separatorToken!241)))) (printWithSeparatorTokenList!158 thiss!18206 (t!238514 tokens!494) separatorToken!241))))))

(assert (= (and d!880779 c!539773) b!3212380))

(assert (= (and d!880779 (not c!539773)) b!3212381))

(assert (= (and d!880779 res!1307593) b!3212382))

(assert (= (and b!3212382 res!1307592) b!3212383))

(declare-fun m!3482879 () Bool)

(assert (=> b!3212382 m!3482879))

(assert (=> b!3212382 m!3478367))

(declare-fun m!3482881 () Bool)

(assert (=> b!3212382 m!3482881))

(assert (=> b!3212382 m!3476697))

(declare-fun m!3482883 () Bool)

(assert (=> b!3212382 m!3482883))

(declare-fun m!3482885 () Bool)

(assert (=> d!880779 m!3482885))

(assert (=> d!880779 m!3478367))

(declare-fun m!3482887 () Bool)

(assert (=> d!880779 m!3482887))

(assert (=> d!880779 m!3476697))

(declare-fun m!3482889 () Bool)

(assert (=> d!880779 m!3482889))

(assert (=> b!3212381 m!3476697))

(declare-fun m!3482891 () Bool)

(assert (=> b!3212381 m!3482891))

(assert (=> b!3210054 d!880779))

(assert (=> b!3210054 d!879293))

(assert (=> b!3210054 d!879303))

(declare-fun b!3212384 () Bool)

(declare-fun e!2002994 () List!36301)

(assert (=> b!3212384 (= e!2002994 (list!12865 (charsOf!3240 separatorToken!241)))))

(declare-fun e!2002995 () Bool)

(declare-fun lt!1086293 () List!36301)

(declare-fun b!3212387 () Bool)

(assert (=> b!3212387 (= e!2002995 (or (not (= (list!12865 (charsOf!3240 separatorToken!241)) Nil!36177)) (= lt!1086293 (list!12865 (charsOf!3240 (h!41599 tokens!494))))))))

(declare-fun b!3212386 () Bool)

(declare-fun res!1307594 () Bool)

(assert (=> b!3212386 (=> (not res!1307594) (not e!2002995))))

(assert (=> b!3212386 (= res!1307594 (= (size!27260 lt!1086293) (+ (size!27260 (list!12865 (charsOf!3240 (h!41599 tokens!494)))) (size!27260 (list!12865 (charsOf!3240 separatorToken!241))))))))

(declare-fun d!880781 () Bool)

(assert (=> d!880781 e!2002995))

(declare-fun res!1307595 () Bool)

(assert (=> d!880781 (=> (not res!1307595) (not e!2002995))))

(assert (=> d!880781 (= res!1307595 (= (content!4888 lt!1086293) ((_ map or) (content!4888 (list!12865 (charsOf!3240 (h!41599 tokens!494)))) (content!4888 (list!12865 (charsOf!3240 separatorToken!241))))))))

(assert (=> d!880781 (= lt!1086293 e!2002994)))

(declare-fun c!539774 () Bool)

(assert (=> d!880781 (= c!539774 ((_ is Nil!36177) (list!12865 (charsOf!3240 (h!41599 tokens!494)))))))

(assert (=> d!880781 (= (++!8680 (list!12865 (charsOf!3240 (h!41599 tokens!494))) (list!12865 (charsOf!3240 separatorToken!241))) lt!1086293)))

(declare-fun b!3212385 () Bool)

(assert (=> b!3212385 (= e!2002994 (Cons!36177 (h!41597 (list!12865 (charsOf!3240 (h!41599 tokens!494)))) (++!8680 (t!238512 (list!12865 (charsOf!3240 (h!41599 tokens!494)))) (list!12865 (charsOf!3240 separatorToken!241)))))))

(assert (= (and d!880781 c!539774) b!3212384))

(assert (= (and d!880781 (not c!539774)) b!3212385))

(assert (= (and d!880781 res!1307595) b!3212386))

(assert (= (and b!3212386 res!1307594) b!3212387))

(declare-fun m!3482893 () Bool)

(assert (=> b!3212386 m!3482893))

(assert (=> b!3212386 m!3476717))

(assert (=> b!3212386 m!3478677))

(assert (=> b!3212386 m!3476707))

(assert (=> b!3212386 m!3481299))

(declare-fun m!3482895 () Bool)

(assert (=> d!880781 m!3482895))

(assert (=> d!880781 m!3476717))

(assert (=> d!880781 m!3478681))

(assert (=> d!880781 m!3476707))

(assert (=> d!880781 m!3481305))

(assert (=> b!3212385 m!3476707))

(declare-fun m!3482897 () Bool)

(assert (=> b!3212385 m!3482897))

(assert (=> b!3210054 d!880781))

(assert (=> b!3210054 d!879301))

(assert (=> b!3209780 d!880279))

(assert (=> b!3209780 d!879145))

(declare-fun b!3212388 () Bool)

(declare-fun res!1307601 () Bool)

(declare-fun e!2003000 () Bool)

(assert (=> b!3212388 (=> res!1307601 e!2003000)))

(assert (=> b!3212388 (= res!1307601 (not (isEmpty!20266 (tail!5212 (list!12865 (charsOf!3240 separatorToken!241))))))))

(declare-fun b!3212389 () Bool)

(declare-fun res!1307597 () Bool)

(declare-fun e!2003001 () Bool)

(assert (=> b!3212389 (=> (not res!1307597) (not e!2003001))))

(assert (=> b!3212389 (= res!1307597 (isEmpty!20266 (tail!5212 (list!12865 (charsOf!3240 separatorToken!241)))))))

(declare-fun b!3212390 () Bool)

(declare-fun e!2002997 () Bool)

(assert (=> b!3212390 (= e!2002997 e!2003000)))

(declare-fun res!1307602 () Bool)

(assert (=> b!3212390 (=> res!1307602 e!2003000)))

(declare-fun call!232499 () Bool)

(assert (=> b!3212390 (= res!1307602 call!232499)))

(declare-fun b!3212391 () Bool)

(declare-fun res!1307600 () Bool)

(declare-fun e!2003002 () Bool)

(assert (=> b!3212391 (=> res!1307600 e!2003002)))

(assert (=> b!3212391 (= res!1307600 (not ((_ is ElementMatch!9983) (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 separatorToken!241))))))))))

(declare-fun e!2002996 () Bool)

(assert (=> b!3212391 (= e!2002996 e!2003002)))

(declare-fun e!2002998 () Bool)

(declare-fun b!3212392 () Bool)

(assert (=> b!3212392 (= e!2002998 (matchR!4617 (derivativeStep!2951 (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 separatorToken!241))))) (head!7043 (list!12865 (charsOf!3240 separatorToken!241)))) (tail!5212 (list!12865 (charsOf!3240 separatorToken!241)))))))

(declare-fun b!3212393 () Bool)

(assert (=> b!3212393 (= e!2003002 e!2002997)))

(declare-fun res!1307596 () Bool)

(assert (=> b!3212393 (=> (not res!1307596) (not e!2002997))))

(declare-fun lt!1086294 () Bool)

(assert (=> b!3212393 (= res!1307596 (not lt!1086294))))

(declare-fun b!3212394 () Bool)

(declare-fun res!1307598 () Bool)

(assert (=> b!3212394 (=> res!1307598 e!2003002)))

(assert (=> b!3212394 (= res!1307598 e!2003001)))

(declare-fun res!1307603 () Bool)

(assert (=> b!3212394 (=> (not res!1307603) (not e!2003001))))

(assert (=> b!3212394 (= res!1307603 lt!1086294)))

(declare-fun b!3212395 () Bool)

(assert (=> b!3212395 (= e!2002998 (nullable!3398 (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 separatorToken!241)))))))))

(declare-fun d!880783 () Bool)

(declare-fun e!2002999 () Bool)

(assert (=> d!880783 e!2002999))

(declare-fun c!539776 () Bool)

(assert (=> d!880783 (= c!539776 ((_ is EmptyExpr!9983) (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 separatorToken!241)))))))))

(assert (=> d!880783 (= lt!1086294 e!2002998)))

(declare-fun c!539777 () Bool)

(assert (=> d!880783 (= c!539777 (isEmpty!20266 (list!12865 (charsOf!3240 separatorToken!241))))))

(assert (=> d!880783 (validRegex!4552 (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 separatorToken!241))))))))

(assert (=> d!880783 (= (matchR!4617 (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 separatorToken!241))))) (list!12865 (charsOf!3240 separatorToken!241))) lt!1086294)))

(declare-fun bm!232494 () Bool)

(assert (=> bm!232494 (= call!232499 (isEmpty!20266 (list!12865 (charsOf!3240 separatorToken!241))))))

(declare-fun b!3212396 () Bool)

(assert (=> b!3212396 (= e!2003000 (not (= (head!7043 (list!12865 (charsOf!3240 separatorToken!241))) (c!538930 (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 separatorToken!241)))))))))))

(declare-fun b!3212397 () Bool)

(assert (=> b!3212397 (= e!2003001 (= (head!7043 (list!12865 (charsOf!3240 separatorToken!241))) (c!538930 (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 separatorToken!241))))))))))

(declare-fun b!3212398 () Bool)

(assert (=> b!3212398 (= e!2002996 (not lt!1086294))))

(declare-fun b!3212399 () Bool)

(assert (=> b!3212399 (= e!2002999 (= lt!1086294 call!232499))))

(declare-fun b!3212400 () Bool)

(declare-fun res!1307599 () Bool)

(assert (=> b!3212400 (=> (not res!1307599) (not e!2003001))))

(assert (=> b!3212400 (= res!1307599 (not call!232499))))

(declare-fun b!3212401 () Bool)

(assert (=> b!3212401 (= e!2002999 e!2002996)))

(declare-fun c!539775 () Bool)

(assert (=> b!3212401 (= c!539775 ((_ is EmptyLang!9983) (regex!5224 (get!11519 (getRuleFromTag!929 thiss!18206 rules!2135 (tag!5750 (rule!7664 separatorToken!241)))))))))

(assert (= (and d!880783 c!539777) b!3212395))

(assert (= (and d!880783 (not c!539777)) b!3212392))

(assert (= (and d!880783 c!539776) b!3212399))

(assert (= (and d!880783 (not c!539776)) b!3212401))

(assert (= (and b!3212401 c!539775) b!3212398))

(assert (= (and b!3212401 (not c!539775)) b!3212391))

(assert (= (and b!3212391 (not res!1307600)) b!3212394))

(assert (= (and b!3212394 res!1307603) b!3212400))

(assert (= (and b!3212400 res!1307599) b!3212389))

(assert (= (and b!3212389 res!1307597) b!3212397))

(assert (= (and b!3212394 (not res!1307598)) b!3212393))

(assert (= (and b!3212393 res!1307596) b!3212390))

(assert (= (and b!3212390 (not res!1307602)) b!3212388))

(assert (= (and b!3212388 (not res!1307601)) b!3212396))

(assert (= (or b!3212399 b!3212390 b!3212400) bm!232494))

(declare-fun m!3482899 () Bool)

(assert (=> b!3212395 m!3482899))

(assert (=> b!3212392 m!3476707))

(declare-fun m!3482901 () Bool)

(assert (=> b!3212392 m!3482901))

(assert (=> b!3212392 m!3482901))

(declare-fun m!3482903 () Bool)

(assert (=> b!3212392 m!3482903))

(assert (=> b!3212392 m!3476707))

(declare-fun m!3482905 () Bool)

(assert (=> b!3212392 m!3482905))

(assert (=> b!3212392 m!3482903))

(assert (=> b!3212392 m!3482905))

(declare-fun m!3482907 () Bool)

(assert (=> b!3212392 m!3482907))

(assert (=> b!3212396 m!3476707))

(assert (=> b!3212396 m!3482901))

(assert (=> b!3212389 m!3476707))

(assert (=> b!3212389 m!3482905))

(assert (=> b!3212389 m!3482905))

(declare-fun m!3482909 () Bool)

(assert (=> b!3212389 m!3482909))

(assert (=> d!880783 m!3476707))

(declare-fun m!3482911 () Bool)

(assert (=> d!880783 m!3482911))

(declare-fun m!3482913 () Bool)

(assert (=> d!880783 m!3482913))

(assert (=> bm!232494 m!3476707))

(assert (=> bm!232494 m!3482911))

(assert (=> b!3212397 m!3476707))

(assert (=> b!3212397 m!3482901))

(assert (=> b!3212388 m!3476707))

(assert (=> b!3212388 m!3482905))

(assert (=> b!3212388 m!3482905))

(assert (=> b!3212388 m!3482909))

(assert (=> b!3209780 d!880783))

(assert (=> b!3209780 d!879293))

(assert (=> b!3209780 d!879303))

(assert (=> b!3209226 d!880717))

(assert (=> b!3209226 d!879677))

(assert (=> b!3209790 d!879387))

(declare-fun d!880785 () Bool)

(assert (=> d!880785 (= (apply!8197 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084957)))) (seqFromList!3519 (originalCharacters!5938 (_1!20921 (get!11520 lt!1084957))))) (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084957))))) (seqFromList!3519 (originalCharacters!5938 (_1!20921 (get!11520 lt!1084957))))))))

(declare-fun b_lambda!88085 () Bool)

(assert (=> (not b_lambda!88085) (not d!880785)))

(declare-fun tb!158055 () Bool)

(declare-fun t!239036 () Bool)

(assert (=> (and b!3210119 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084957)))))) t!239036) tb!158055))

(declare-fun result!200422 () Bool)

(assert (=> tb!158055 (= result!200422 (inv!21 (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084957))))) (seqFromList!3519 (originalCharacters!5938 (_1!20921 (get!11520 lt!1084957)))))))))

(declare-fun m!3482915 () Bool)

(assert (=> tb!158055 m!3482915))

(assert (=> d!880785 t!239036))

(declare-fun b_and!214191 () Bool)

(assert (= b_and!214127 (and (=> t!239036 result!200422) b_and!214191)))

(declare-fun t!239038 () Bool)

(declare-fun tb!158057 () Bool)

(assert (=> (and b!3210083 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084957)))))) t!239038) tb!158057))

(declare-fun result!200424 () Bool)

(assert (= result!200424 result!200422))

(assert (=> d!880785 t!239038))

(declare-fun b_and!214193 () Bool)

(assert (= b_and!214123 (and (=> t!239038 result!200424) b_and!214193)))

(declare-fun tb!158059 () Bool)

(declare-fun t!239040 () Bool)

(assert (=> (and b!3209139 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084957)))))) t!239040) tb!158059))

(declare-fun result!200426 () Bool)

(assert (= result!200426 result!200422))

(assert (=> d!880785 t!239040))

(declare-fun b_and!214195 () Bool)

(assert (= b_and!214131 (and (=> t!239040 result!200426) b_and!214195)))

(declare-fun t!239042 () Bool)

(declare-fun tb!158061 () Bool)

(assert (=> (and b!3209140 (= (toValue!7308 (transformation!5224 (h!41598 rules!2135))) (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084957)))))) t!239042) tb!158061))

(declare-fun result!200428 () Bool)

(assert (= result!200428 result!200422))

(assert (=> d!880785 t!239042))

(declare-fun b_and!214197 () Bool)

(assert (= b_and!214129 (and (=> t!239042 result!200428) b_and!214197)))

(declare-fun t!239044 () Bool)

(declare-fun tb!158063 () Bool)

(assert (=> (and b!3209120 (= (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241))) (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084957)))))) t!239044) tb!158063))

(declare-fun result!200430 () Bool)

(assert (= result!200430 result!200422))

(assert (=> d!880785 t!239044))

(declare-fun b_and!214199 () Bool)

(assert (= b_and!214125 (and (=> t!239044 result!200430) b_and!214199)))

(assert (=> d!880785 m!3477857))

(declare-fun m!3482917 () Bool)

(assert (=> d!880785 m!3482917))

(assert (=> b!3209790 d!880785))

(declare-fun d!880787 () Bool)

(assert (=> d!880787 (= (seqFromList!3519 (originalCharacters!5938 (_1!20921 (get!11520 lt!1084957)))) (fromListB!1541 (originalCharacters!5938 (_1!20921 (get!11520 lt!1084957)))))))

(declare-fun bs!541863 () Bool)

(assert (= bs!541863 d!880787))

(declare-fun m!3482919 () Bool)

(assert (=> bs!541863 m!3482919))

(assert (=> b!3209790 d!880787))

(declare-fun d!880789 () Bool)

(declare-fun c!539778 () Bool)

(assert (=> d!880789 (= c!539778 ((_ is Empty!10823) (c!538931 (charsOf!3240 (h!41599 (t!238514 tokens!494))))))))

(declare-fun e!2003004 () List!36301)

(assert (=> d!880789 (= (list!12868 (c!538931 (charsOf!3240 (h!41599 (t!238514 tokens!494))))) e!2003004)))

(declare-fun b!3212404 () Bool)

(declare-fun e!2003005 () List!36301)

(assert (=> b!3212404 (= e!2003005 (list!12872 (xs!13941 (c!538931 (charsOf!3240 (h!41599 (t!238514 tokens!494)))))))))

(declare-fun b!3212403 () Bool)

(assert (=> b!3212403 (= e!2003004 e!2003005)))

(declare-fun c!539779 () Bool)

(assert (=> b!3212403 (= c!539779 ((_ is Leaf!17046) (c!538931 (charsOf!3240 (h!41599 (t!238514 tokens!494))))))))

(declare-fun b!3212402 () Bool)

(assert (=> b!3212402 (= e!2003004 Nil!36177)))

(declare-fun b!3212405 () Bool)

(assert (=> b!3212405 (= e!2003005 (++!8680 (list!12868 (left!28133 (c!538931 (charsOf!3240 (h!41599 (t!238514 tokens!494)))))) (list!12868 (right!28463 (c!538931 (charsOf!3240 (h!41599 (t!238514 tokens!494))))))))))

(assert (= (and d!880789 c!539778) b!3212402))

(assert (= (and d!880789 (not c!539778)) b!3212403))

(assert (= (and b!3212403 c!539779) b!3212404))

(assert (= (and b!3212403 (not c!539779)) b!3212405))

(declare-fun m!3482921 () Bool)

(assert (=> b!3212404 m!3482921))

(declare-fun m!3482923 () Bool)

(assert (=> b!3212405 m!3482923))

(declare-fun m!3482925 () Bool)

(assert (=> b!3212405 m!3482925))

(assert (=> b!3212405 m!3482923))

(assert (=> b!3212405 m!3482925))

(declare-fun m!3482927 () Bool)

(assert (=> b!3212405 m!3482927))

(assert (=> d!879295 d!880789))

(declare-fun d!880791 () Bool)

(assert (=> d!880791 (= (++!8680 (++!8680 lt!1084683 lt!1084696) lt!1084690) (++!8680 lt!1084683 (++!8680 lt!1084696 lt!1084690)))))

(assert (=> d!880791 true))

(declare-fun _$52!1564 () Unit!50642)

(assert (=> d!880791 (= (choose!18736 lt!1084683 lt!1084696 lt!1084690) _$52!1564)))

(declare-fun bs!541864 () Bool)

(assert (= bs!541864 d!880791))

(assert (=> bs!541864 m!3476759))

(assert (=> bs!541864 m!3476759))

(assert (=> bs!541864 m!3476761))

(assert (=> bs!541864 m!3476701))

(assert (=> bs!541864 m!3476701))

(assert (=> bs!541864 m!3478239))

(assert (=> d!879247 d!880791))

(assert (=> d!879247 d!879251))

(declare-fun b!3212406 () Bool)

(declare-fun e!2003006 () List!36301)

(assert (=> b!3212406 (= e!2003006 (++!8680 lt!1084696 lt!1084690))))

(declare-fun lt!1086295 () List!36301)

(declare-fun e!2003007 () Bool)

(declare-fun b!3212409 () Bool)

(assert (=> b!3212409 (= e!2003007 (or (not (= (++!8680 lt!1084696 lt!1084690) Nil!36177)) (= lt!1086295 lt!1084683)))))

(declare-fun b!3212408 () Bool)

(declare-fun res!1307604 () Bool)

(assert (=> b!3212408 (=> (not res!1307604) (not e!2003007))))

(assert (=> b!3212408 (= res!1307604 (= (size!27260 lt!1086295) (+ (size!27260 lt!1084683) (size!27260 (++!8680 lt!1084696 lt!1084690)))))))

(declare-fun d!880793 () Bool)

(assert (=> d!880793 e!2003007))

(declare-fun res!1307605 () Bool)

(assert (=> d!880793 (=> (not res!1307605) (not e!2003007))))

(assert (=> d!880793 (= res!1307605 (= (content!4888 lt!1086295) ((_ map or) (content!4888 lt!1084683) (content!4888 (++!8680 lt!1084696 lt!1084690)))))))

(assert (=> d!880793 (= lt!1086295 e!2003006)))

(declare-fun c!539780 () Bool)

(assert (=> d!880793 (= c!539780 ((_ is Nil!36177) lt!1084683))))

(assert (=> d!880793 (= (++!8680 lt!1084683 (++!8680 lt!1084696 lt!1084690)) lt!1086295)))

(declare-fun b!3212407 () Bool)

(assert (=> b!3212407 (= e!2003006 (Cons!36177 (h!41597 lt!1084683) (++!8680 (t!238512 lt!1084683) (++!8680 lt!1084696 lt!1084690))))))

(assert (= (and d!880793 c!539780) b!3212406))

(assert (= (and d!880793 (not c!539780)) b!3212407))

(assert (= (and d!880793 res!1307605) b!3212408))

(assert (= (and b!3212408 res!1307604) b!3212409))

(declare-fun m!3482929 () Bool)

(assert (=> b!3212408 m!3482929))

(assert (=> b!3212408 m!3476779))

(assert (=> b!3212408 m!3476701))

(declare-fun m!3482931 () Bool)

(assert (=> b!3212408 m!3482931))

(declare-fun m!3482933 () Bool)

(assert (=> d!880793 m!3482933))

(assert (=> d!880793 m!3478231))

(assert (=> d!880793 m!3476701))

(declare-fun m!3482935 () Bool)

(assert (=> d!880793 m!3482935))

(assert (=> b!3212407 m!3476701))

(declare-fun m!3482937 () Bool)

(assert (=> b!3212407 m!3482937))

(assert (=> d!879247 d!880793))

(assert (=> d!879247 d!879297))

(assert (=> d!879247 d!879249))

(declare-fun d!880795 () Bool)

(declare-fun c!539781 () Bool)

(assert (=> d!880795 (= c!539781 ((_ is Node!10823) (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (value!169344 (h!41599 (t!238514 tokens!494)))))))))

(declare-fun e!2003008 () Bool)

(assert (=> d!880795 (= (inv!49039 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (value!169344 (h!41599 (t!238514 tokens!494)))))) e!2003008)))

(declare-fun b!3212410 () Bool)

(assert (=> b!3212410 (= e!2003008 (inv!49043 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (value!169344 (h!41599 (t!238514 tokens!494)))))))))

(declare-fun b!3212411 () Bool)

(declare-fun e!2003009 () Bool)

(assert (=> b!3212411 (= e!2003008 e!2003009)))

(declare-fun res!1307606 () Bool)

(assert (=> b!3212411 (= res!1307606 (not ((_ is Leaf!17046) (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (value!169344 (h!41599 (t!238514 tokens!494))))))))))

(assert (=> b!3212411 (=> res!1307606 e!2003009)))

(declare-fun b!3212412 () Bool)

(assert (=> b!3212412 (= e!2003009 (inv!49044 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (value!169344 (h!41599 (t!238514 tokens!494)))))))))

(assert (= (and d!880795 c!539781) b!3212410))

(assert (= (and d!880795 (not c!539781)) b!3212411))

(assert (= (and b!3212411 (not res!1307606)) b!3212412))

(declare-fun m!3482939 () Bool)

(assert (=> b!3212410 m!3482939))

(declare-fun m!3482941 () Bool)

(assert (=> b!3212412 m!3482941))

(assert (=> b!3210072 d!880795))

(assert (=> b!3209233 d!879129))

(declare-fun d!880797 () Bool)

(declare-fun c!539782 () Bool)

(assert (=> d!880797 (= c!539782 ((_ is Nil!36177) lt!1085054))))

(declare-fun e!2003010 () (InoxSet C!20152))

(assert (=> d!880797 (= (content!4888 lt!1085054) e!2003010)))

(declare-fun b!3212413 () Bool)

(assert (=> b!3212413 (= e!2003010 ((as const (Array C!20152 Bool)) false))))

(declare-fun b!3212414 () Bool)

(assert (=> b!3212414 (= e!2003010 ((_ map or) (store ((as const (Array C!20152 Bool)) false) (h!41597 lt!1085054) true) (content!4888 (t!238512 lt!1085054))))))

(assert (= (and d!880797 c!539782) b!3212413))

(assert (= (and d!880797 (not c!539782)) b!3212414))

(declare-fun m!3482943 () Bool)

(assert (=> b!3212414 m!3482943))

(declare-fun m!3482945 () Bool)

(assert (=> b!3212414 m!3482945))

(assert (=> d!879251 d!880797))

(declare-fun d!880799 () Bool)

(declare-fun c!539783 () Bool)

(assert (=> d!880799 (= c!539783 ((_ is Nil!36177) lt!1084683))))

(declare-fun e!2003011 () (InoxSet C!20152))

(assert (=> d!880799 (= (content!4888 lt!1084683) e!2003011)))

(declare-fun b!3212415 () Bool)

(assert (=> b!3212415 (= e!2003011 ((as const (Array C!20152 Bool)) false))))

(declare-fun b!3212416 () Bool)

(assert (=> b!3212416 (= e!2003011 ((_ map or) (store ((as const (Array C!20152 Bool)) false) (h!41597 lt!1084683) true) (content!4888 (t!238512 lt!1084683))))))

(assert (= (and d!880799 c!539783) b!3212415))

(assert (= (and d!880799 (not c!539783)) b!3212416))

(declare-fun m!3482947 () Bool)

(assert (=> b!3212416 m!3482947))

(assert (=> b!3212416 m!3482747))

(assert (=> d!879251 d!880799))

(assert (=> d!879251 d!879473))

(declare-fun d!880801 () Bool)

(declare-fun res!1307611 () Bool)

(declare-fun e!2003013 () Bool)

(assert (=> d!880801 (=> res!1307611 e!2003013)))

(assert (=> d!880801 (= res!1307611 (not ((_ is Node!10824) (c!538932 lt!1084837))))))

(assert (=> d!880801 (= (isBalanced!3217 (c!538932 lt!1084837)) e!2003013)))

(declare-fun b!3212417 () Bool)

(declare-fun e!2003012 () Bool)

(assert (=> b!3212417 (= e!2003012 (not (isEmpty!20275 (right!28464 (c!538932 lt!1084837)))))))

(declare-fun b!3212418 () Bool)

(declare-fun res!1307612 () Bool)

(assert (=> b!3212418 (=> (not res!1307612) (not e!2003012))))

(assert (=> b!3212418 (= res!1307612 (not (isEmpty!20275 (left!28134 (c!538932 lt!1084837)))))))

(declare-fun b!3212419 () Bool)

(assert (=> b!3212419 (= e!2003013 e!2003012)))

(declare-fun res!1307610 () Bool)

(assert (=> b!3212419 (=> (not res!1307610) (not e!2003012))))

(assert (=> b!3212419 (= res!1307610 (<= (- 1) (- (height!1553 (left!28134 (c!538932 lt!1084837))) (height!1553 (right!28464 (c!538932 lt!1084837))))))))

(declare-fun b!3212420 () Bool)

(declare-fun res!1307608 () Bool)

(assert (=> b!3212420 (=> (not res!1307608) (not e!2003012))))

(assert (=> b!3212420 (= res!1307608 (isBalanced!3217 (left!28134 (c!538932 lt!1084837))))))

(declare-fun b!3212421 () Bool)

(declare-fun res!1307607 () Bool)

(assert (=> b!3212421 (=> (not res!1307607) (not e!2003012))))

(assert (=> b!3212421 (= res!1307607 (<= (- (height!1553 (left!28134 (c!538932 lt!1084837))) (height!1553 (right!28464 (c!538932 lt!1084837)))) 1))))

(declare-fun b!3212422 () Bool)

(declare-fun res!1307609 () Bool)

(assert (=> b!3212422 (=> (not res!1307609) (not e!2003012))))

(assert (=> b!3212422 (= res!1307609 (isBalanced!3217 (right!28464 (c!538932 lt!1084837))))))

(assert (= (and d!880801 (not res!1307611)) b!3212419))

(assert (= (and b!3212419 res!1307610) b!3212421))

(assert (= (and b!3212421 res!1307607) b!3212420))

(assert (= (and b!3212420 res!1307608) b!3212422))

(assert (= (and b!3212422 res!1307609) b!3212418))

(assert (= (and b!3212418 res!1307612) b!3212417))

(declare-fun m!3482949 () Bool)

(assert (=> b!3212421 m!3482949))

(declare-fun m!3482951 () Bool)

(assert (=> b!3212421 m!3482951))

(declare-fun m!3482953 () Bool)

(assert (=> b!3212422 m!3482953))

(assert (=> b!3212419 m!3482949))

(assert (=> b!3212419 m!3482951))

(declare-fun m!3482955 () Bool)

(assert (=> b!3212417 m!3482955))

(declare-fun m!3482957 () Bool)

(assert (=> b!3212418 m!3482957))

(declare-fun m!3482959 () Bool)

(assert (=> b!3212420 m!3482959))

(assert (=> b!3209528 d!880801))

(declare-fun d!880803 () Bool)

(declare-fun c!539784 () Bool)

(assert (=> d!880803 (= c!539784 ((_ is Empty!10823) (c!538931 (charsOf!3240 separatorToken!241))))))

(declare-fun e!2003014 () List!36301)

(assert (=> d!880803 (= (list!12868 (c!538931 (charsOf!3240 separatorToken!241))) e!2003014)))

(declare-fun b!3212425 () Bool)

(declare-fun e!2003015 () List!36301)

(assert (=> b!3212425 (= e!2003015 (list!12872 (xs!13941 (c!538931 (charsOf!3240 separatorToken!241)))))))

(declare-fun b!3212424 () Bool)

(assert (=> b!3212424 (= e!2003014 e!2003015)))

(declare-fun c!539785 () Bool)

(assert (=> b!3212424 (= c!539785 ((_ is Leaf!17046) (c!538931 (charsOf!3240 separatorToken!241))))))

(declare-fun b!3212423 () Bool)

(assert (=> b!3212423 (= e!2003014 Nil!36177)))

(declare-fun b!3212426 () Bool)

(assert (=> b!3212426 (= e!2003015 (++!8680 (list!12868 (left!28133 (c!538931 (charsOf!3240 separatorToken!241)))) (list!12868 (right!28463 (c!538931 (charsOf!3240 separatorToken!241))))))))

(assert (= (and d!880803 c!539784) b!3212423))

(assert (= (and d!880803 (not c!539784)) b!3212424))

(assert (= (and b!3212424 c!539785) b!3212425))

(assert (= (and b!3212424 (not c!539785)) b!3212426))

(declare-fun m!3482961 () Bool)

(assert (=> b!3212425 m!3482961))

(declare-fun m!3482963 () Bool)

(assert (=> b!3212426 m!3482963))

(declare-fun m!3482965 () Bool)

(assert (=> b!3212426 m!3482965))

(assert (=> b!3212426 m!3482963))

(assert (=> b!3212426 m!3482965))

(declare-fun m!3482967 () Bool)

(assert (=> b!3212426 m!3482967))

(assert (=> d!879303 d!880803))

(assert (=> b!3209318 d!879129))

(declare-fun lt!1086296 () Bool)

(declare-fun d!880805 () Bool)

(assert (=> d!880805 (= lt!1086296 (isEmpty!20266 (list!12865 (_2!20922 (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 tokens!494))))))))))

(assert (=> d!880805 (= lt!1086296 (isEmpty!20267 (c!538931 (_2!20922 (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 tokens!494))))))))))

(assert (=> d!880805 (= (isEmpty!20263 (_2!20922 (lex!2143 thiss!18206 rules!2135 (print!1878 thiss!18206 (singletonSeq!2320 (h!41599 tokens!494)))))) lt!1086296)))

(declare-fun bs!541865 () Bool)

(assert (= bs!541865 d!880805))

(declare-fun m!3482969 () Bool)

(assert (=> bs!541865 m!3482969))

(assert (=> bs!541865 m!3482969))

(declare-fun m!3482971 () Bool)

(assert (=> bs!541865 m!3482971))

(declare-fun m!3482973 () Bool)

(assert (=> bs!541865 m!3482973))

(assert (=> b!3210049 d!880805))

(assert (=> b!3210049 d!879651))

(assert (=> b!3210049 d!879653))

(assert (=> b!3210049 d!878949))

(declare-fun d!880807 () Bool)

(declare-fun res!1307613 () Bool)

(declare-fun e!2003016 () Bool)

(assert (=> d!880807 (=> res!1307613 e!2003016)))

(assert (=> d!880807 (= res!1307613 ((_ is Nil!36179) (t!238514 tokens!494)))))

(assert (=> d!880807 (= (forall!7388 (t!238514 tokens!494) lambda!117478) e!2003016)))

(declare-fun b!3212427 () Bool)

(declare-fun e!2003017 () Bool)

(assert (=> b!3212427 (= e!2003016 e!2003017)))

(declare-fun res!1307614 () Bool)

(assert (=> b!3212427 (=> (not res!1307614) (not e!2003017))))

(assert (=> b!3212427 (= res!1307614 (dynLambda!14613 lambda!117478 (h!41599 (t!238514 tokens!494))))))

(declare-fun b!3212428 () Bool)

(assert (=> b!3212428 (= e!2003017 (forall!7388 (t!238514 (t!238514 tokens!494)) lambda!117478))))

(assert (= (and d!880807 (not res!1307613)) b!3212427))

(assert (= (and b!3212427 res!1307614) b!3212428))

(declare-fun b_lambda!88087 () Bool)

(assert (=> (not b_lambda!88087) (not b!3212427)))

(assert (=> b!3212427 m!3478265))

(declare-fun m!3482975 () Bool)

(assert (=> b!3212428 m!3482975))

(assert (=> b!3209329 d!880807))

(assert (=> b!3209782 d!880627))

(declare-fun d!880809 () Bool)

(declare-fun lt!1086297 () Token!9814)

(assert (=> d!880809 (contains!6463 (list!12869 (_1!20922 lt!1084668)) lt!1086297)))

(declare-fun e!2003018 () Token!9814)

(assert (=> d!880809 (= lt!1086297 e!2003018)))

(declare-fun c!539786 () Bool)

(assert (=> d!880809 (= c!539786 (= 0 0))))

(declare-fun e!2003019 () Bool)

(assert (=> d!880809 e!2003019))

(declare-fun res!1307615 () Bool)

(assert (=> d!880809 (=> (not res!1307615) (not e!2003019))))

(assert (=> d!880809 (= res!1307615 (<= 0 0))))

(assert (=> d!880809 (= (apply!8200 (list!12869 (_1!20922 lt!1084668)) 0) lt!1086297)))

(declare-fun b!3212429 () Bool)

(assert (=> b!3212429 (= e!2003019 (< 0 (size!27264 (list!12869 (_1!20922 lt!1084668)))))))

(declare-fun b!3212430 () Bool)

(assert (=> b!3212430 (= e!2003018 (head!7045 (list!12869 (_1!20922 lt!1084668))))))

(declare-fun b!3212431 () Bool)

(assert (=> b!3212431 (= e!2003018 (apply!8200 (tail!5213 (list!12869 (_1!20922 lt!1084668))) (- 0 1)))))

(assert (= (and d!880809 res!1307615) b!3212429))

(assert (= (and d!880809 c!539786) b!3212430))

(assert (= (and d!880809 (not c!539786)) b!3212431))

(assert (=> d!880809 m!3477697))

(declare-fun m!3482977 () Bool)

(assert (=> d!880809 m!3482977))

(assert (=> b!3212429 m!3477697))

(assert (=> b!3212429 m!3477699))

(assert (=> b!3212430 m!3477697))

(declare-fun m!3482979 () Bool)

(assert (=> b!3212430 m!3482979))

(assert (=> b!3212431 m!3477697))

(declare-fun m!3482981 () Bool)

(assert (=> b!3212431 m!3482981))

(assert (=> b!3212431 m!3482981))

(declare-fun m!3482983 () Bool)

(assert (=> b!3212431 m!3482983))

(assert (=> d!879259 d!880809))

(assert (=> d!879259 d!880701))

(declare-fun b!3212432 () Bool)

(declare-fun e!2003023 () Int)

(assert (=> b!3212432 (= e!2003023 0)))

(declare-fun b!3212433 () Bool)

(declare-fun e!2003020 () Token!9814)

(declare-fun e!2003021 () Token!9814)

(assert (=> b!3212433 (= e!2003020 e!2003021)))

(declare-fun lt!1086299 () Bool)

(assert (=> b!3212433 (= lt!1086299 (appendIndex!308 (list!12871 (left!28134 (c!538932 (_1!20922 lt!1084668)))) (list!12871 (right!28464 (c!538932 (_1!20922 lt!1084668)))) 0))))

(declare-fun c!539787 () Bool)

(assert (=> b!3212433 (= c!539787 (< 0 (size!27265 (left!28134 (c!538932 (_1!20922 lt!1084668))))))))

(declare-fun b!3212434 () Bool)

(declare-fun call!232500 () Token!9814)

(assert (=> b!3212434 (= e!2003021 call!232500)))

(declare-fun b!3212435 () Bool)

(assert (=> b!3212435 (= e!2003023 (- 0 (size!27265 (left!28134 (c!538932 (_1!20922 lt!1084668))))))))

(declare-fun d!880811 () Bool)

(declare-fun lt!1086298 () Token!9814)

(assert (=> d!880811 (= lt!1086298 (apply!8200 (list!12871 (c!538932 (_1!20922 lt!1084668))) 0))))

(assert (=> d!880811 (= lt!1086298 e!2003020)))

(declare-fun c!539789 () Bool)

(assert (=> d!880811 (= c!539789 ((_ is Leaf!17047) (c!538932 (_1!20922 lt!1084668))))))

(declare-fun e!2003022 () Bool)

(assert (=> d!880811 e!2003022))

(declare-fun res!1307616 () Bool)

(assert (=> d!880811 (=> (not res!1307616) (not e!2003022))))

(assert (=> d!880811 (= res!1307616 (<= 0 0))))

(assert (=> d!880811 (= (apply!8202 (c!538932 (_1!20922 lt!1084668)) 0) lt!1086298)))

(declare-fun b!3212436 () Bool)

(assert (=> b!3212436 (= e!2003020 (apply!8204 (xs!13942 (c!538932 (_1!20922 lt!1084668))) 0))))

(declare-fun bm!232495 () Bool)

(declare-fun c!539788 () Bool)

(assert (=> bm!232495 (= c!539788 c!539787)))

(assert (=> bm!232495 (= call!232500 (apply!8202 (ite c!539787 (left!28134 (c!538932 (_1!20922 lt!1084668))) (right!28464 (c!538932 (_1!20922 lt!1084668)))) e!2003023))))

(declare-fun b!3212437 () Bool)

(assert (=> b!3212437 (= e!2003021 call!232500)))

(declare-fun b!3212438 () Bool)

(assert (=> b!3212438 (= e!2003022 (< 0 (size!27265 (c!538932 (_1!20922 lt!1084668)))))))

(assert (= (and d!880811 res!1307616) b!3212438))

(assert (= (and d!880811 c!539789) b!3212436))

(assert (= (and d!880811 (not c!539789)) b!3212433))

(assert (= (and b!3212433 c!539787) b!3212434))

(assert (= (and b!3212433 (not c!539787)) b!3212437))

(assert (= (or b!3212434 b!3212437) bm!232495))

(assert (= (and bm!232495 c!539788) b!3212432))

(assert (= (and bm!232495 (not c!539788)) b!3212435))

(assert (=> b!3212438 m!3477701))

(declare-fun m!3482985 () Bool)

(assert (=> b!3212435 m!3482985))

(declare-fun m!3482987 () Bool)

(assert (=> bm!232495 m!3482987))

(declare-fun m!3482989 () Bool)

(assert (=> b!3212436 m!3482989))

(assert (=> d!880811 m!3482625))

(assert (=> d!880811 m!3482625))

(declare-fun m!3482991 () Bool)

(assert (=> d!880811 m!3482991))

(declare-fun m!3482993 () Bool)

(assert (=> b!3212433 m!3482993))

(declare-fun m!3482995 () Bool)

(assert (=> b!3212433 m!3482995))

(assert (=> b!3212433 m!3482993))

(assert (=> b!3212433 m!3482995))

(declare-fun m!3482997 () Bool)

(assert (=> b!3212433 m!3482997))

(assert (=> b!3212433 m!3482985))

(assert (=> d!879259 d!880811))

(declare-fun d!880813 () Bool)

(declare-fun c!539790 () Bool)

(assert (=> d!880813 (= c!539790 ((_ is Node!10823) (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (value!169344 (h!41599 tokens!494))))))))

(declare-fun e!2003024 () Bool)

(assert (=> d!880813 (= (inv!49039 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (value!169344 (h!41599 tokens!494))))) e!2003024)))

(declare-fun b!3212439 () Bool)

(assert (=> b!3212439 (= e!2003024 (inv!49043 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (value!169344 (h!41599 tokens!494))))))))

(declare-fun b!3212440 () Bool)

(declare-fun e!2003025 () Bool)

(assert (=> b!3212440 (= e!2003024 e!2003025)))

(declare-fun res!1307617 () Bool)

(assert (=> b!3212440 (= res!1307617 (not ((_ is Leaf!17046) (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (value!169344 (h!41599 tokens!494)))))))))

(assert (=> b!3212440 (=> res!1307617 e!2003025)))

(declare-fun b!3212441 () Bool)

(assert (=> b!3212441 (= e!2003025 (inv!49044 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (value!169344 (h!41599 tokens!494))))))))

(assert (= (and d!880813 c!539790) b!3212439))

(assert (= (and d!880813 (not c!539790)) b!3212440))

(assert (= (and b!3212440 (not res!1307617)) b!3212441))

(declare-fun m!3482999 () Bool)

(assert (=> b!3212439 m!3482999))

(declare-fun m!3483001 () Bool)

(assert (=> b!3212441 m!3483001))

(assert (=> b!3209345 d!880813))

(declare-fun d!880815 () Bool)

(declare-fun e!2003028 () Bool)

(assert (=> d!880815 e!2003028))

(declare-fun res!1307620 () Bool)

(assert (=> d!880815 (=> (not res!1307620) (not e!2003028))))

(declare-fun lt!1086302 () BalanceConc!21262)

(assert (=> d!880815 (= res!1307620 (= (list!12869 lt!1086302) tokens!494))))

(declare-fun fromList!614 (List!36303) Conc!10824)

(assert (=> d!880815 (= lt!1086302 (BalanceConc!21263 (fromList!614 tokens!494)))))

(assert (=> d!880815 (= (fromListB!1542 tokens!494) lt!1086302)))

(declare-fun b!3212444 () Bool)

(assert (=> b!3212444 (= e!2003028 (isBalanced!3217 (fromList!614 tokens!494)))))

(assert (= (and d!880815 res!1307620) b!3212444))

(declare-fun m!3483003 () Bool)

(assert (=> d!880815 m!3483003))

(declare-fun m!3483005 () Bool)

(assert (=> d!880815 m!3483005))

(assert (=> b!3212444 m!3483005))

(assert (=> b!3212444 m!3483005))

(declare-fun m!3483007 () Bool)

(assert (=> b!3212444 m!3483007))

(assert (=> d!879243 d!880815))

(declare-fun d!880817 () Bool)

(assert (=> d!880817 (= (list!12865 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (value!169344 separatorToken!241))) (list!12868 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (value!169344 separatorToken!241)))))))

(declare-fun bs!541866 () Bool)

(assert (= bs!541866 d!880817))

(declare-fun m!3483009 () Bool)

(assert (=> bs!541866 m!3483009))

(assert (=> b!3209271 d!880817))

(assert (=> b!3209826 d!880527))

(declare-fun b!3212445 () Bool)

(declare-fun e!2003029 () List!36301)

(assert (=> b!3212445 (= e!2003029 lt!1084686)))

(declare-fun lt!1086303 () List!36301)

(declare-fun e!2003030 () Bool)

(declare-fun b!3212448 () Bool)

(assert (=> b!3212448 (= e!2003030 (or (not (= lt!1084686 Nil!36177)) (= lt!1086303 (t!238512 lt!1084683))))))

(declare-fun b!3212447 () Bool)

(declare-fun res!1307621 () Bool)

(assert (=> b!3212447 (=> (not res!1307621) (not e!2003030))))

(assert (=> b!3212447 (= res!1307621 (= (size!27260 lt!1086303) (+ (size!27260 (t!238512 lt!1084683)) (size!27260 lt!1084686))))))

(declare-fun d!880819 () Bool)

(assert (=> d!880819 e!2003030))

(declare-fun res!1307622 () Bool)

(assert (=> d!880819 (=> (not res!1307622) (not e!2003030))))

(assert (=> d!880819 (= res!1307622 (= (content!4888 lt!1086303) ((_ map or) (content!4888 (t!238512 lt!1084683)) (content!4888 lt!1084686))))))

(assert (=> d!880819 (= lt!1086303 e!2003029)))

(declare-fun c!539792 () Bool)

(assert (=> d!880819 (= c!539792 ((_ is Nil!36177) (t!238512 lt!1084683)))))

(assert (=> d!880819 (= (++!8680 (t!238512 lt!1084683) lt!1084686) lt!1086303)))

(declare-fun b!3212446 () Bool)

(assert (=> b!3212446 (= e!2003029 (Cons!36177 (h!41597 (t!238512 lt!1084683)) (++!8680 (t!238512 (t!238512 lt!1084683)) lt!1084686)))))

(assert (= (and d!880819 c!539792) b!3212445))

(assert (= (and d!880819 (not c!539792)) b!3212446))

(assert (= (and d!880819 res!1307622) b!3212447))

(assert (= (and b!3212447 res!1307621) b!3212448))

(declare-fun m!3483011 () Bool)

(assert (=> b!3212447 m!3483011))

(assert (=> b!3212447 m!3477289))

(assert (=> b!3212447 m!3478227))

(declare-fun m!3483013 () Bool)

(assert (=> d!880819 m!3483013))

(assert (=> d!880819 m!3482747))

(assert (=> d!880819 m!3478233))

(declare-fun m!3483015 () Bool)

(assert (=> b!3212446 m!3483015))

(assert (=> b!3209989 d!880819))

(assert (=> b!3209234 d!879129))

(assert (=> bm!232235 d!879397))

(assert (=> d!879127 d!879029))

(declare-fun d!880821 () Bool)

(assert (=> d!880821 (= (apply!8197 (transformation!5224 (rule!7664 (h!41599 tokens!494))) (seqFromList!3519 lt!1084683)) (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (seqFromList!3519 lt!1084683)))))

(declare-fun b_lambda!88089 () Bool)

(assert (=> (not b_lambda!88089) (not d!880821)))

(declare-fun t!239046 () Bool)

(declare-fun tb!158065 () Bool)

(assert (=> (and b!3209140 (= (toValue!7308 (transformation!5224 (h!41598 rules!2135))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!239046) tb!158065))

(declare-fun result!200432 () Bool)

(assert (=> tb!158065 (= result!200432 (inv!21 (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (seqFromList!3519 lt!1084683))))))

(declare-fun m!3483017 () Bool)

(assert (=> tb!158065 m!3483017))

(assert (=> d!880821 t!239046))

(declare-fun b_and!214201 () Bool)

(assert (= b_and!214197 (and (=> t!239046 result!200432) b_and!214201)))

(declare-fun tb!158067 () Bool)

(declare-fun t!239048 () Bool)

(assert (=> (and b!3210083 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!239048) tb!158067))

(declare-fun result!200434 () Bool)

(assert (= result!200434 result!200432))

(assert (=> d!880821 t!239048))

(declare-fun b_and!214203 () Bool)

(assert (= b_and!214193 (and (=> t!239048 result!200434) b_and!214203)))

(declare-fun t!239050 () Bool)

(declare-fun tb!158069 () Bool)

(assert (=> (and b!3209120 (= (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!239050) tb!158069))

(declare-fun result!200436 () Bool)

(assert (= result!200436 result!200432))

(assert (=> d!880821 t!239050))

(declare-fun b_and!214205 () Bool)

(assert (= b_and!214199 (and (=> t!239050 result!200436) b_and!214205)))

(declare-fun t!239052 () Bool)

(declare-fun tb!158071 () Bool)

(assert (=> (and b!3210119 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!239052) tb!158071))

(declare-fun result!200438 () Bool)

(assert (= result!200438 result!200432))

(assert (=> d!880821 t!239052))

(declare-fun b_and!214207 () Bool)

(assert (= b_and!214191 (and (=> t!239052 result!200438) b_and!214207)))

(declare-fun t!239054 () Bool)

(declare-fun tb!158073 () Bool)

(assert (=> (and b!3209139 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!239054) tb!158073))

(declare-fun result!200440 () Bool)

(assert (= result!200440 result!200432))

(assert (=> d!880821 t!239054))

(declare-fun b_and!214209 () Bool)

(assert (= b_and!214195 (and (=> t!239054 result!200440) b_and!214209)))

(assert (=> d!880821 m!3476727))

(declare-fun m!3483019 () Bool)

(assert (=> d!880821 m!3483019))

(assert (=> d!879127 d!880821))

(declare-fun d!880823 () Bool)

(assert (=> d!880823 (= (maxPrefixOneRule!1592 thiss!18206 (rule!7664 (h!41599 tokens!494)) lt!1084683) (Some!7146 (tuple2!35575 (Token!9815 (apply!8197 (transformation!5224 (rule!7664 (h!41599 tokens!494))) (seqFromList!3519 lt!1084683)) (rule!7664 (h!41599 tokens!494)) (size!27260 lt!1084683) lt!1084683) Nil!36177)))))

(assert (=> d!880823 true))

(declare-fun _$59!387 () Unit!50642)

(assert (=> d!880823 (= (choose!18726 thiss!18206 rules!2135 lt!1084683 lt!1084683 Nil!36177 (rule!7664 (h!41599 tokens!494))) _$59!387)))

(declare-fun bs!541867 () Bool)

(assert (= bs!541867 d!880823))

(assert (=> bs!541867 m!3476823))

(assert (=> bs!541867 m!3476727))

(assert (=> bs!541867 m!3476727))

(assert (=> bs!541867 m!3477705))

(assert (=> bs!541867 m!3476779))

(assert (=> d!879127 d!880823))

(assert (=> d!879127 d!879159))

(assert (=> d!879127 d!878957))

(assert (=> d!879127 d!879279))

(declare-fun bs!541868 () Bool)

(declare-fun d!880825 () Bool)

(assert (= bs!541868 (and d!880825 d!879659)))

(declare-fun lambda!117535 () Int)

(assert (=> bs!541868 (= (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toValue!7308 (transformation!5224 (h!41598 rules!2135)))) (= lambda!117535 lambda!117505))))

(declare-fun bs!541869 () Bool)

(assert (= bs!541869 (and d!880825 d!880711)))

(assert (=> bs!541869 (= (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241)))) (= lambda!117535 lambda!117534))))

(assert (=> d!880825 true))

(assert (=> d!880825 (< (dynLambda!14607 order!18473 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) (dynLambda!14617 order!18481 lambda!117535))))

(assert (=> d!880825 (= (equivClasses!2054 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) (Forall2!863 lambda!117535))))

(declare-fun bs!541870 () Bool)

(assert (= bs!541870 d!880825))

(declare-fun m!3483021 () Bool)

(assert (=> bs!541870 m!3483021))

(assert (=> b!3210046 d!880825))

(declare-fun d!880827 () Bool)

(declare-fun lt!1086304 () Int)

(assert (=> d!880827 (>= lt!1086304 0)))

(declare-fun e!2003032 () Int)

(assert (=> d!880827 (= lt!1086304 e!2003032)))

(declare-fun c!539793 () Bool)

(assert (=> d!880827 (= c!539793 ((_ is Nil!36177) lt!1085054))))

(assert (=> d!880827 (= (size!27260 lt!1085054) lt!1086304)))

(declare-fun b!3212449 () Bool)

(assert (=> b!3212449 (= e!2003032 0)))

(declare-fun b!3212450 () Bool)

(assert (=> b!3212450 (= e!2003032 (+ 1 (size!27260 (t!238512 lt!1085054))))))

(assert (= (and d!880827 c!539793) b!3212449))

(assert (= (and d!880827 (not c!539793)) b!3212450))

(declare-fun m!3483023 () Bool)

(assert (=> b!3212450 m!3483023))

(assert (=> b!3209998 d!880827))

(assert (=> b!3209998 d!879029))

(assert (=> b!3209998 d!879501))

(assert (=> b!3209671 d!879407))

(declare-fun d!880829 () Bool)

(declare-fun lt!1086305 () Int)

(assert (=> d!880829 (>= lt!1086305 0)))

(declare-fun e!2003033 () Int)

(assert (=> d!880829 (= lt!1086305 e!2003033)))

(declare-fun c!539794 () Bool)

(assert (=> d!880829 (= c!539794 ((_ is Nil!36177) (originalCharacters!5938 (_1!20921 (get!11520 lt!1084882)))))))

(assert (=> d!880829 (= (size!27260 (originalCharacters!5938 (_1!20921 (get!11520 lt!1084882)))) lt!1086305)))

(declare-fun b!3212451 () Bool)

(assert (=> b!3212451 (= e!2003033 0)))

(declare-fun b!3212452 () Bool)

(assert (=> b!3212452 (= e!2003033 (+ 1 (size!27260 (t!238512 (originalCharacters!5938 (_1!20921 (get!11520 lt!1084882)))))))))

(assert (= (and d!880829 c!539794) b!3212451))

(assert (= (and d!880829 (not c!539794)) b!3212452))

(declare-fun m!3483025 () Bool)

(assert (=> b!3212452 m!3483025))

(assert (=> b!3209671 d!880829))

(declare-fun d!880831 () Bool)

(assert (=> d!880831 (dynLambda!14613 lambda!117478 (h!41599 tokens!494))))

(assert (=> d!880831 true))

(declare-fun _$7!1093 () Unit!50642)

(assert (=> d!880831 (= (choose!18727 tokens!494 lambda!117478 (h!41599 tokens!494)) _$7!1093)))

(declare-fun b_lambda!88091 () Bool)

(assert (=> (not b_lambda!88091) (not d!880831)))

(declare-fun bs!541871 () Bool)

(assert (= bs!541871 d!880831))

(assert (=> bs!541871 m!3477061))

(assert (=> d!879255 d!880831))

(assert (=> d!879255 d!878963))

(declare-fun d!880833 () Bool)

(assert (=> d!880833 (= (isEmpty!20270 lt!1084828) (not ((_ is Some!7147) lt!1084828)))))

(assert (=> d!879023 d!880833))

(assert (=> d!879023 d!879257))

(declare-fun b!3212453 () Bool)

(declare-fun e!2003036 () Bool)

(assert (=> b!3212453 (= e!2003036 (inv!16 (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) lt!1084685)))))

(declare-fun b!3212455 () Bool)

(declare-fun res!1307623 () Bool)

(declare-fun e!2003035 () Bool)

(assert (=> b!3212455 (=> res!1307623 e!2003035)))

(assert (=> b!3212455 (= res!1307623 (not ((_ is IntegerValue!16364) (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) lt!1084685))))))

(declare-fun e!2003034 () Bool)

(assert (=> b!3212455 (= e!2003034 e!2003035)))

(declare-fun b!3212456 () Bool)

(assert (=> b!3212456 (= e!2003035 (inv!15 (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) lt!1084685)))))

(declare-fun b!3212457 () Bool)

(assert (=> b!3212457 (= e!2003036 e!2003034)))

(declare-fun c!539796 () Bool)

(assert (=> b!3212457 (= c!539796 ((_ is IntegerValue!16363) (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) lt!1084685)))))

(declare-fun b!3212454 () Bool)

(assert (=> b!3212454 (= e!2003034 (inv!17 (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) lt!1084685)))))

(declare-fun d!880835 () Bool)

(declare-fun c!539795 () Bool)

(assert (=> d!880835 (= c!539795 ((_ is IntegerValue!16362) (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) lt!1084685)))))

(assert (=> d!880835 (= (inv!21 (dynLambda!14614 (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) lt!1084685)) e!2003036)))

(assert (= (and d!880835 c!539795) b!3212453))

(assert (= (and d!880835 (not c!539795)) b!3212457))

(assert (= (and b!3212457 c!539796) b!3212454))

(assert (= (and b!3212457 (not c!539796)) b!3212455))

(assert (= (and b!3212455 (not res!1307623)) b!3212456))

(declare-fun m!3483027 () Bool)

(assert (=> b!3212453 m!3483027))

(declare-fun m!3483029 () Bool)

(assert (=> b!3212456 m!3483029))

(declare-fun m!3483031 () Bool)

(assert (=> b!3212454 m!3483031))

(assert (=> tb!157589 d!880835))

(assert (=> b!3209311 d!880717))

(assert (=> b!3209311 d!879677))

(declare-fun d!880837 () Bool)

(declare-fun lt!1086306 () Bool)

(assert (=> d!880837 (= lt!1086306 (select (content!4890 rules!2135) (get!11519 lt!1084936)))))

(declare-fun e!2003038 () Bool)

(assert (=> d!880837 (= lt!1086306 e!2003038)))

(declare-fun res!1307625 () Bool)

(assert (=> d!880837 (=> (not res!1307625) (not e!2003038))))

(assert (=> d!880837 (= res!1307625 ((_ is Cons!36178) rules!2135))))

(assert (=> d!880837 (= (contains!6462 rules!2135 (get!11519 lt!1084936)) lt!1086306)))

(declare-fun b!3212458 () Bool)

(declare-fun e!2003037 () Bool)

(assert (=> b!3212458 (= e!2003038 e!2003037)))

(declare-fun res!1307624 () Bool)

(assert (=> b!3212458 (=> res!1307624 e!2003037)))

(assert (=> b!3212458 (= res!1307624 (= (h!41598 rules!2135) (get!11519 lt!1084936)))))

(declare-fun b!3212459 () Bool)

(assert (=> b!3212459 (= e!2003037 (contains!6462 (t!238513 rules!2135) (get!11519 lt!1084936)))))

(assert (= (and d!880837 res!1307625) b!3212458))

(assert (= (and b!3212458 (not res!1307624)) b!3212459))

(assert (=> d!880837 m!3478587))

(assert (=> d!880837 m!3477759))

(declare-fun m!3483033 () Bool)

(assert (=> d!880837 m!3483033))

(assert (=> b!3212459 m!3477759))

(declare-fun m!3483035 () Bool)

(assert (=> b!3212459 m!3483035))

(assert (=> b!3209757 d!880837))

(assert (=> b!3209757 d!879507))

(declare-fun d!880839 () Bool)

(declare-fun c!539797 () Bool)

(assert (=> d!880839 (= c!539797 ((_ is Empty!10823) (c!538931 lt!1084695)))))

(declare-fun e!2003039 () List!36301)

(assert (=> d!880839 (= (list!12868 (c!538931 lt!1084695)) e!2003039)))

(declare-fun b!3212462 () Bool)

(declare-fun e!2003040 () List!36301)

(assert (=> b!3212462 (= e!2003040 (list!12872 (xs!13941 (c!538931 lt!1084695))))))

(declare-fun b!3212461 () Bool)

(assert (=> b!3212461 (= e!2003039 e!2003040)))

(declare-fun c!539798 () Bool)

(assert (=> b!3212461 (= c!539798 ((_ is Leaf!17046) (c!538931 lt!1084695)))))

(declare-fun b!3212460 () Bool)

(assert (=> b!3212460 (= e!2003039 Nil!36177)))

(declare-fun b!3212463 () Bool)

(assert (=> b!3212463 (= e!2003040 (++!8680 (list!12868 (left!28133 (c!538931 lt!1084695))) (list!12868 (right!28463 (c!538931 lt!1084695)))))))

(assert (= (and d!880839 c!539797) b!3212460))

(assert (= (and d!880839 (not c!539797)) b!3212461))

(assert (= (and b!3212461 c!539798) b!3212462))

(assert (= (and b!3212461 (not c!539798)) b!3212463))

(declare-fun m!3483037 () Bool)

(assert (=> b!3212462 m!3483037))

(declare-fun m!3483039 () Bool)

(assert (=> b!3212463 m!3483039))

(declare-fun m!3483041 () Bool)

(assert (=> b!3212463 m!3483041))

(assert (=> b!3212463 m!3483039))

(assert (=> b!3212463 m!3483041))

(declare-fun m!3483043 () Bool)

(assert (=> b!3212463 m!3483043))

(assert (=> d!878941 d!880839))

(declare-fun d!880841 () Bool)

(declare-fun c!539799 () Bool)

(assert (=> d!880841 (= c!539799 ((_ is Nil!36177) lt!1085049))))

(declare-fun e!2003041 () (InoxSet C!20152))

(assert (=> d!880841 (= (content!4888 lt!1085049) e!2003041)))

(declare-fun b!3212464 () Bool)

(assert (=> b!3212464 (= e!2003041 ((as const (Array C!20152 Bool)) false))))

(declare-fun b!3212465 () Bool)

(assert (=> b!3212465 (= e!2003041 ((_ map or) (store ((as const (Array C!20152 Bool)) false) (h!41597 lt!1085049) true) (content!4888 (t!238512 lt!1085049))))))

(assert (= (and d!880841 c!539799) b!3212464))

(assert (= (and d!880841 (not c!539799)) b!3212465))

(declare-fun m!3483045 () Bool)

(assert (=> b!3212465 m!3483045))

(declare-fun m!3483047 () Bool)

(assert (=> b!3212465 m!3483047))

(assert (=> d!879245 d!880841))

(assert (=> d!879245 d!880799))

(declare-fun d!880843 () Bool)

(declare-fun c!539800 () Bool)

(assert (=> d!880843 (= c!539800 ((_ is Nil!36177) lt!1084686))))

(declare-fun e!2003042 () (InoxSet C!20152))

(assert (=> d!880843 (= (content!4888 lt!1084686) e!2003042)))

(declare-fun b!3212466 () Bool)

(assert (=> b!3212466 (= e!2003042 ((as const (Array C!20152 Bool)) false))))

(declare-fun b!3212467 () Bool)

(assert (=> b!3212467 (= e!2003042 ((_ map or) (store ((as const (Array C!20152 Bool)) false) (h!41597 lt!1084686) true) (content!4888 (t!238512 lt!1084686))))))

(assert (= (and d!880843 c!539800) b!3212466))

(assert (= (and d!880843 (not c!539800)) b!3212467))

(declare-fun m!3483049 () Bool)

(assert (=> b!3212467 m!3483049))

(declare-fun m!3483051 () Bool)

(assert (=> b!3212467 m!3483051))

(assert (=> d!879245 d!880843))

(declare-fun b!3212471 () Bool)

(declare-fun e!2003043 () Bool)

(declare-fun tp!1013511 () Bool)

(declare-fun tp!1013510 () Bool)

(assert (=> b!3212471 (= e!2003043 (and tp!1013511 tp!1013510))))

(declare-fun b!3212469 () Bool)

(declare-fun tp!1013509 () Bool)

(declare-fun tp!1013508 () Bool)

(assert (=> b!3212469 (= e!2003043 (and tp!1013509 tp!1013508))))

(declare-fun b!3212470 () Bool)

(declare-fun tp!1013507 () Bool)

(assert (=> b!3212470 (= e!2003043 tp!1013507)))

(assert (=> b!3210127 (= tp!1013373 e!2003043)))

(declare-fun b!3212468 () Bool)

(assert (=> b!3212468 (= e!2003043 tp_is_empty!17297)))

(assert (= (and b!3210127 ((_ is ElementMatch!9983) (regOne!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) b!3212468))

(assert (= (and b!3210127 ((_ is Concat!15437) (regOne!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) b!3212469))

(assert (= (and b!3210127 ((_ is Star!9983) (regOne!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) b!3212470))

(assert (= (and b!3210127 ((_ is Union!9983) (regOne!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) b!3212471))

(declare-fun b!3212475 () Bool)

(declare-fun e!2003044 () Bool)

(declare-fun tp!1013516 () Bool)

(declare-fun tp!1013515 () Bool)

(assert (=> b!3212475 (= e!2003044 (and tp!1013516 tp!1013515))))

(declare-fun b!3212473 () Bool)

(declare-fun tp!1013514 () Bool)

(declare-fun tp!1013513 () Bool)

(assert (=> b!3212473 (= e!2003044 (and tp!1013514 tp!1013513))))

(declare-fun b!3212474 () Bool)

(declare-fun tp!1013512 () Bool)

(assert (=> b!3212474 (= e!2003044 tp!1013512)))

(assert (=> b!3210127 (= tp!1013372 e!2003044)))

(declare-fun b!3212472 () Bool)

(assert (=> b!3212472 (= e!2003044 tp_is_empty!17297)))

(assert (= (and b!3210127 ((_ is ElementMatch!9983) (regTwo!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) b!3212472))

(assert (= (and b!3210127 ((_ is Concat!15437) (regTwo!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) b!3212473))

(assert (= (and b!3210127 ((_ is Star!9983) (regTwo!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) b!3212474))

(assert (= (and b!3210127 ((_ is Union!9983) (regTwo!20479 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) b!3212475))

(declare-fun b!3212476 () Bool)

(declare-fun e!2003045 () Bool)

(declare-fun tp!1013517 () Bool)

(assert (=> b!3212476 (= e!2003045 (and tp_is_empty!17297 tp!1013517))))

(assert (=> b!3210128 (= tp!1013374 e!2003045)))

(assert (= (and b!3210128 ((_ is Cons!36177) (t!238512 (originalCharacters!5938 separatorToken!241)))) b!3212476))

(declare-fun tp!1013526 () Bool)

(declare-fun b!3212485 () Bool)

(declare-fun e!2003050 () Bool)

(declare-fun tp!1013525 () Bool)

(assert (=> b!3212485 (= e!2003050 (and (inv!49039 (left!28133 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (value!169344 separatorToken!241))))) tp!1013525 (inv!49039 (right!28463 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (value!169344 separatorToken!241))))) tp!1013526))))

(declare-fun b!3212487 () Bool)

(declare-fun e!2003051 () Bool)

(declare-fun tp!1013524 () Bool)

(assert (=> b!3212487 (= e!2003051 tp!1013524)))

(declare-fun b!3212486 () Bool)

(declare-fun inv!49045 (IArray!21651) Bool)

(assert (=> b!3212486 (= e!2003050 (and (inv!49045 (xs!13941 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (value!169344 separatorToken!241))))) e!2003051))))

(assert (=> b!3209291 (= tp!1013258 (and (inv!49039 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (value!169344 separatorToken!241)))) e!2003050))))

(assert (= (and b!3209291 ((_ is Node!10823) (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (value!169344 separatorToken!241))))) b!3212485))

(assert (= b!3212486 b!3212487))

(assert (= (and b!3209291 ((_ is Leaf!17046) (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (value!169344 separatorToken!241))))) b!3212486))

(declare-fun m!3483053 () Bool)

(assert (=> b!3212485 m!3483053))

(declare-fun m!3483055 () Bool)

(assert (=> b!3212485 m!3483055))

(declare-fun m!3483057 () Bool)

(assert (=> b!3212486 m!3483057))

(assert (=> b!3209291 m!3476957))

(declare-fun b!3212491 () Bool)

(declare-fun e!2003052 () Bool)

(declare-fun tp!1013531 () Bool)

(declare-fun tp!1013530 () Bool)

(assert (=> b!3212491 (= e!2003052 (and tp!1013531 tp!1013530))))

(declare-fun b!3212489 () Bool)

(declare-fun tp!1013529 () Bool)

(declare-fun tp!1013528 () Bool)

(assert (=> b!3212489 (= e!2003052 (and tp!1013529 tp!1013528))))

(declare-fun b!3212490 () Bool)

(declare-fun tp!1013527 () Bool)

(assert (=> b!3212490 (= e!2003052 tp!1013527)))

(assert (=> b!3210082 (= tp!1013328 e!2003052)))

(declare-fun b!3212488 () Bool)

(assert (=> b!3212488 (= e!2003052 tp_is_empty!17297)))

(assert (= (and b!3210082 ((_ is ElementMatch!9983) (regex!5224 (h!41598 (t!238513 rules!2135))))) b!3212488))

(assert (= (and b!3210082 ((_ is Concat!15437) (regex!5224 (h!41598 (t!238513 rules!2135))))) b!3212489))

(assert (= (and b!3210082 ((_ is Star!9983) (regex!5224 (h!41598 (t!238513 rules!2135))))) b!3212490))

(assert (= (and b!3210082 ((_ is Union!9983) (regex!5224 (h!41598 (t!238513 rules!2135))))) b!3212491))

(declare-fun b!3212492 () Bool)

(declare-fun e!2003053 () Bool)

(declare-fun tp!1013532 () Bool)

(assert (=> b!3212492 (= e!2003053 (and tp_is_empty!17297 tp!1013532))))

(assert (=> b!3210105 (= tp!1013348 e!2003053)))

(assert (= (and b!3210105 ((_ is Cons!36177) (t!238512 (originalCharacters!5938 (h!41599 tokens!494))))) b!3212492))

(declare-fun b!3212495 () Bool)

(declare-fun b_free!85437 () Bool)

(declare-fun b_next!86141 () Bool)

(assert (=> b!3212495 (= b_free!85437 (not b_next!86141))))

(declare-fun tb!158075 () Bool)

(declare-fun t!239056 () Bool)

(assert (=> (and b!3212495 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!239056) tb!158075))

(declare-fun result!200444 () Bool)

(assert (= result!200444 result!200156))

(assert (=> d!879857 t!239056))

(declare-fun tb!158077 () Bool)

(declare-fun t!239058 () Bool)

(assert (=> (and b!3212495 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!239058) tb!158077))

(declare-fun result!200446 () Bool)

(assert (= result!200446 result!200266))

(assert (=> d!880477 t!239058))

(declare-fun t!239060 () Bool)

(declare-fun tb!158079 () Bool)

(assert (=> (and b!3212495 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!239060) tb!158079))

(declare-fun result!200448 () Bool)

(assert (= result!200448 result!200432))

(assert (=> d!880821 t!239060))

(declare-fun t!239062 () Bool)

(declare-fun tb!158081 () Bool)

(assert (=> (and b!3212495 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084957)))))) t!239062) tb!158081))

(declare-fun result!200450 () Bool)

(assert (= result!200450 result!200422))

(assert (=> d!880785 t!239062))

(declare-fun t!239064 () Bool)

(declare-fun tb!158083 () Bool)

(assert (=> (and b!3212495 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932)))))) t!239064) tb!158083))

(declare-fun result!200452 () Bool)

(assert (= result!200452 result!200196))

(assert (=> d!880227 t!239064))

(declare-fun tb!158085 () Bool)

(declare-fun t!239066 () Bool)

(assert (=> (and b!3212495 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!239066) tb!158085))

(declare-fun result!200454 () Bool)

(assert (= result!200454 result!199934))

(assert (=> d!879035 t!239066))

(assert (=> d!880471 t!239058))

(declare-fun t!239068 () Bool)

(declare-fun tb!158087 () Bool)

(assert (=> (and b!3212495 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!239068) tb!158087))

(declare-fun result!200456 () Bool)

(assert (= result!200456 result!199942))

(assert (=> d!879053 t!239068))

(declare-fun tb!158089 () Bool)

(declare-fun t!239070 () Bool)

(assert (=> (and b!3212495 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084882)))))) t!239070) tb!158089))

(declare-fun result!200458 () Bool)

(assert (= result!200458 result!200076))

(assert (=> d!879549 t!239070))

(assert (=> d!879847 t!239056))

(declare-fun b_and!214211 () Bool)

(declare-fun tp!1013536 () Bool)

(assert (=> b!3212495 (= tp!1013536 (and (=> t!239056 result!200444) (=> t!239062 result!200450) (=> t!239070 result!200458) (=> t!239058 result!200446) (=> t!239060 result!200448) (=> t!239068 result!200456) (=> t!239066 result!200454) (=> t!239064 result!200452) b_and!214211))))

(declare-fun b_free!85439 () Bool)

(declare-fun b_next!86143 () Bool)

(assert (=> b!3212495 (= b_free!85439 (not b_next!86143))))

(declare-fun tb!158091 () Bool)

(declare-fun t!239072 () Bool)

(assert (=> (and b!3212495 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084669 0))))) t!239072) tb!158091))

(declare-fun result!200460 () Bool)

(assert (= result!200460 result!200316))

(assert (=> d!880643 t!239072))

(declare-fun tb!158093 () Bool)

(declare-fun t!239074 () Bool)

(assert (=> (and b!3212495 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241)))) t!239074) tb!158093))

(declare-fun result!200462 () Bool)

(assert (= result!200462 result!199920))

(assert (=> d!879293 t!239074))

(declare-fun t!239076 () Bool)

(declare-fun tb!158095 () Bool)

(assert (=> (and b!3212495 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!239076) tb!158095))

(declare-fun result!200464 () Bool)

(assert (= result!200464 result!200146))

(assert (=> d!879847 t!239076))

(declare-fun tb!158097 () Bool)

(declare-fun t!239078 () Bool)

(assert (=> (and b!3212495 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (Cons!36179 (h!41599 tokens!494) Nil!36179)))))) t!239078) tb!158097))

(declare-fun result!200466 () Bool)

(assert (= result!200466 result!200166))

(assert (=> d!879919 t!239078))

(declare-fun tb!158099 () Bool)

(declare-fun t!239080 () Bool)

(assert (=> (and b!3212495 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084674 0))))) t!239080) tb!158099))

(declare-fun result!200468 () Bool)

(assert (= result!200468 result!200176))

(assert (=> d!880049 t!239080))

(declare-fun t!239082 () Bool)

(declare-fun tb!158101 () Bool)

(assert (=> (and b!3212495 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084882)))))) t!239082) tb!158101))

(declare-fun result!200470 () Bool)

(assert (= result!200470 result!200046))

(assert (=> d!879405 t!239082))

(declare-fun tb!158103 () Bool)

(declare-fun t!239084 () Bool)

(assert (=> (and b!3212495 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932)))))) t!239084) tb!158103))

(declare-fun result!200472 () Bool)

(assert (= result!200472 result!200056))

(assert (=> d!879413 t!239084))

(declare-fun tb!158105 () Bool)

(declare-fun t!239086 () Bool)

(assert (=> (and b!3212495 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084657 0))))) t!239086) tb!158105))

(declare-fun result!200474 () Bool)

(assert (= result!200474 result!200246))

(assert (=> d!880467 t!239086))

(declare-fun t!239088 () Bool)

(declare-fun tb!158107 () Bool)

(assert (=> (and b!3212495 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!239088) tb!158107))

(declare-fun result!200476 () Bool)

(assert (= result!200476 result!200278))

(assert (=> d!880477 t!239088))

(declare-fun t!239090 () Bool)

(declare-fun tb!158109 () Bool)

(assert (=> (and b!3212495 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!239090) tb!158109))

(declare-fun result!200478 () Bool)

(assert (= result!200478 result!200002))

(assert (=> d!879305 t!239090))

(declare-fun t!239092 () Bool)

(declare-fun tb!158111 () Bool)

(assert (=> (and b!3212495 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!239092) tb!158111))

(declare-fun result!200480 () Bool)

(assert (= result!200480 result!199928))

(assert (=> d!878969 t!239092))

(assert (=> b!3209271 t!239074))

(assert (=> b!3209346 t!239092))

(declare-fun t!239094 () Bool)

(declare-fun tb!158113 () Bool)

(assert (=> (and b!3212495 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084957)))))) t!239094) tb!158113))

(declare-fun result!200482 () Bool)

(assert (= result!200482 result!200036))

(assert (=> d!879385 t!239094))

(declare-fun tb!158115 () Bool)

(declare-fun t!239096 () Bool)

(assert (=> (and b!3212495 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494))))))) t!239096) tb!158115))

(declare-fun result!200484 () Bool)

(assert (= result!200484 result!200306))

(assert (=> d!880535 t!239096))

(assert (=> b!3211725 t!239090))

(declare-fun tp!1013535 () Bool)

(declare-fun b_and!214213 () Bool)

(assert (=> b!3212495 (= tp!1013535 (and (=> t!239096 result!200484) (=> t!239072 result!200460) (=> t!239084 result!200472) (=> t!239088 result!200476) (=> t!239080 result!200468) (=> t!239090 result!200478) (=> t!239076 result!200464) (=> t!239092 result!200480) (=> t!239074 result!200462) (=> t!239094 result!200482) (=> t!239082 result!200470) (=> t!239086 result!200474) (=> t!239078 result!200466) b_and!214213))))

(declare-fun e!2003056 () Bool)

(assert (=> b!3212495 (= e!2003056 (and tp!1013536 tp!1013535))))

(declare-fun e!2003057 () Bool)

(declare-fun b!3212494 () Bool)

(declare-fun tp!1013534 () Bool)

(assert (=> b!3212494 (= e!2003057 (and tp!1013534 (inv!49032 (tag!5750 (h!41598 (t!238513 (t!238513 rules!2135))))) (inv!49035 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) e!2003056))))

(declare-fun b!3212493 () Bool)

(declare-fun e!2003054 () Bool)

(declare-fun tp!1013533 () Bool)

(assert (=> b!3212493 (= e!2003054 (and e!2003057 tp!1013533))))

(assert (=> b!3210081 (= tp!1013327 e!2003054)))

(assert (= b!3212494 b!3212495))

(assert (= b!3212493 b!3212494))

(assert (= (and b!3210081 ((_ is Cons!36178) (t!238513 (t!238513 rules!2135)))) b!3212493))

(declare-fun m!3483059 () Bool)

(assert (=> b!3212494 m!3483059))

(declare-fun m!3483061 () Bool)

(assert (=> b!3212494 m!3483061))

(declare-fun b!3212496 () Bool)

(declare-fun tp!1013538 () Bool)

(declare-fun tp!1013539 () Bool)

(declare-fun e!2003058 () Bool)

(assert (=> b!3212496 (= e!2003058 (and (inv!49039 (left!28133 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (value!169344 (h!41599 (t!238514 tokens!494))))))) tp!1013538 (inv!49039 (right!28463 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (value!169344 (h!41599 (t!238514 tokens!494))))))) tp!1013539))))

(declare-fun b!3212498 () Bool)

(declare-fun e!2003059 () Bool)

(declare-fun tp!1013537 () Bool)

(assert (=> b!3212498 (= e!2003059 tp!1013537)))

(declare-fun b!3212497 () Bool)

(assert (=> b!3212497 (= e!2003058 (and (inv!49045 (xs!13941 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (value!169344 (h!41599 (t!238514 tokens!494))))))) e!2003059))))

(assert (=> b!3210072 (= tp!1013318 (and (inv!49039 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (value!169344 (h!41599 (t!238514 tokens!494)))))) e!2003058))))

(assert (= (and b!3210072 ((_ is Node!10823) (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (value!169344 (h!41599 (t!238514 tokens!494))))))) b!3212496))

(assert (= b!3212497 b!3212498))

(assert (= (and b!3210072 ((_ is Leaf!17046) (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (value!169344 (h!41599 (t!238514 tokens!494))))))) b!3212497))

(declare-fun m!3483063 () Bool)

(assert (=> b!3212496 m!3483063))

(declare-fun m!3483065 () Bool)

(assert (=> b!3212496 m!3483065))

(declare-fun m!3483067 () Bool)

(assert (=> b!3212497 m!3483067))

(assert (=> b!3210072 m!3478419))

(declare-fun b!3212502 () Bool)

(declare-fun e!2003060 () Bool)

(declare-fun tp!1013544 () Bool)

(declare-fun tp!1013543 () Bool)

(assert (=> b!3212502 (= e!2003060 (and tp!1013544 tp!1013543))))

(declare-fun b!3212500 () Bool)

(declare-fun tp!1013542 () Bool)

(declare-fun tp!1013541 () Bool)

(assert (=> b!3212500 (= e!2003060 (and tp!1013542 tp!1013541))))

(declare-fun b!3212501 () Bool)

(declare-fun tp!1013540 () Bool)

(assert (=> b!3212501 (= e!2003060 tp!1013540)))

(assert (=> b!3210121 (= tp!1013366 e!2003060)))

(declare-fun b!3212499 () Bool)

(assert (=> b!3212499 (= e!2003060 tp_is_empty!17297)))

(assert (= (and b!3210121 ((_ is ElementMatch!9983) (regOne!20478 (regex!5224 (h!41598 rules!2135))))) b!3212499))

(assert (= (and b!3210121 ((_ is Concat!15437) (regOne!20478 (regex!5224 (h!41598 rules!2135))))) b!3212500))

(assert (= (and b!3210121 ((_ is Star!9983) (regOne!20478 (regex!5224 (h!41598 rules!2135))))) b!3212501))

(assert (= (and b!3210121 ((_ is Union!9983) (regOne!20478 (regex!5224 (h!41598 rules!2135))))) b!3212502))

(declare-fun b!3212506 () Bool)

(declare-fun e!2003061 () Bool)

(declare-fun tp!1013549 () Bool)

(declare-fun tp!1013548 () Bool)

(assert (=> b!3212506 (= e!2003061 (and tp!1013549 tp!1013548))))

(declare-fun b!3212504 () Bool)

(declare-fun tp!1013547 () Bool)

(declare-fun tp!1013546 () Bool)

(assert (=> b!3212504 (= e!2003061 (and tp!1013547 tp!1013546))))

(declare-fun b!3212505 () Bool)

(declare-fun tp!1013545 () Bool)

(assert (=> b!3212505 (= e!2003061 tp!1013545)))

(assert (=> b!3210121 (= tp!1013365 e!2003061)))

(declare-fun b!3212503 () Bool)

(assert (=> b!3212503 (= e!2003061 tp_is_empty!17297)))

(assert (= (and b!3210121 ((_ is ElementMatch!9983) (regTwo!20478 (regex!5224 (h!41598 rules!2135))))) b!3212503))

(assert (= (and b!3210121 ((_ is Concat!15437) (regTwo!20478 (regex!5224 (h!41598 rules!2135))))) b!3212504))

(assert (= (and b!3210121 ((_ is Star!9983) (regTwo!20478 (regex!5224 (h!41598 rules!2135))))) b!3212505))

(assert (= (and b!3210121 ((_ is Union!9983) (regTwo!20478 (regex!5224 (h!41598 rules!2135))))) b!3212506))

(declare-fun tp!1013552 () Bool)

(declare-fun e!2003062 () Bool)

(declare-fun tp!1013551 () Bool)

(declare-fun b!3212507 () Bool)

(assert (=> b!3212507 (= e!2003062 (and (inv!49039 (left!28133 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (value!169344 (h!41599 tokens!494)))))) tp!1013551 (inv!49039 (right!28463 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (value!169344 (h!41599 tokens!494)))))) tp!1013552))))

(declare-fun b!3212509 () Bool)

(declare-fun e!2003063 () Bool)

(declare-fun tp!1013550 () Bool)

(assert (=> b!3212509 (= e!2003063 tp!1013550)))

(declare-fun b!3212508 () Bool)

(assert (=> b!3212508 (= e!2003062 (and (inv!49045 (xs!13941 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (value!169344 (h!41599 tokens!494)))))) e!2003063))))

(assert (=> b!3209345 (= tp!1013259 (and (inv!49039 (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (value!169344 (h!41599 tokens!494))))) e!2003062))))

(assert (= (and b!3209345 ((_ is Node!10823) (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (value!169344 (h!41599 tokens!494)))))) b!3212507))

(assert (= b!3212508 b!3212509))

(assert (= (and b!3209345 ((_ is Leaf!17046) (c!538931 (dynLambda!14612 (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (value!169344 (h!41599 tokens!494)))))) b!3212508))

(declare-fun m!3483069 () Bool)

(assert (=> b!3212507 m!3483069))

(declare-fun m!3483071 () Bool)

(assert (=> b!3212507 m!3483071))

(declare-fun m!3483073 () Bool)

(assert (=> b!3212508 m!3483073))

(assert (=> b!3209345 m!3477073))

(declare-fun b!3212513 () Bool)

(declare-fun b_free!85441 () Bool)

(declare-fun b_next!86145 () Bool)

(assert (=> b!3212513 (= b_free!85441 (not b_next!86145))))

(declare-fun t!239098 () Bool)

(declare-fun tb!158117 () Bool)

(assert (=> (and b!3212513 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!239098) tb!158117))

(declare-fun result!200486 () Bool)

(assert (= result!200486 result!200156))

(assert (=> d!879857 t!239098))

(declare-fun t!239100 () Bool)

(declare-fun tb!158119 () Bool)

(assert (=> (and b!3212513 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!239100) tb!158119))

(declare-fun result!200488 () Bool)

(assert (= result!200488 result!200266))

(assert (=> d!880477 t!239100))

(declare-fun t!239102 () Bool)

(declare-fun tb!158121 () Bool)

(assert (=> (and b!3212513 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!239102) tb!158121))

(declare-fun result!200490 () Bool)

(assert (= result!200490 result!200432))

(assert (=> d!880821 t!239102))

(declare-fun t!239104 () Bool)

(declare-fun tb!158123 () Bool)

(assert (=> (and b!3212513 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084957)))))) t!239104) tb!158123))

(declare-fun result!200492 () Bool)

(assert (= result!200492 result!200422))

(assert (=> d!880785 t!239104))

(declare-fun tb!158125 () Bool)

(declare-fun t!239106 () Bool)

(assert (=> (and b!3212513 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932)))))) t!239106) tb!158125))

(declare-fun result!200494 () Bool)

(assert (= result!200494 result!200196))

(assert (=> d!880227 t!239106))

(declare-fun t!239108 () Bool)

(declare-fun tb!158127 () Bool)

(assert (=> (and b!3212513 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!239108) tb!158127))

(declare-fun result!200496 () Bool)

(assert (= result!200496 result!199934))

(assert (=> d!879035 t!239108))

(assert (=> d!880471 t!239100))

(declare-fun t!239110 () Bool)

(declare-fun tb!158129 () Bool)

(assert (=> (and b!3212513 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!239110) tb!158129))

(declare-fun result!200498 () Bool)

(assert (= result!200498 result!199942))

(assert (=> d!879053 t!239110))

(declare-fun t!239112 () Bool)

(declare-fun tb!158131 () Bool)

(assert (=> (and b!3212513 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toValue!7308 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084882)))))) t!239112) tb!158131))

(declare-fun result!200500 () Bool)

(assert (= result!200500 result!200076))

(assert (=> d!879549 t!239112))

(assert (=> d!879847 t!239098))

(declare-fun b_and!214215 () Bool)

(declare-fun tp!1013556 () Bool)

(assert (=> b!3212513 (= tp!1013556 (and (=> t!239102 result!200490) (=> t!239100 result!200488) (=> t!239106 result!200494) (=> t!239108 result!200496) (=> t!239104 result!200492) (=> t!239110 result!200498) (=> t!239098 result!200486) (=> t!239112 result!200500) b_and!214215))))

(declare-fun b_free!85443 () Bool)

(declare-fun b_next!86147 () Bool)

(assert (=> b!3212513 (= b_free!85443 (not b_next!86147))))

(declare-fun tb!158133 () Bool)

(declare-fun t!239114 () Bool)

(assert (=> (and b!3212513 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084669 0))))) t!239114) tb!158133))

(declare-fun result!200502 () Bool)

(assert (= result!200502 result!200316))

(assert (=> d!880643 t!239114))

(declare-fun tb!158135 () Bool)

(declare-fun t!239116 () Bool)

(assert (=> (and b!3212513 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241)))) t!239116) tb!158135))

(declare-fun result!200504 () Bool)

(assert (= result!200504 result!199920))

(assert (=> d!879293 t!239116))

(declare-fun t!239118 () Bool)

(declare-fun tb!158137 () Bool)

(assert (=> (and b!3212513 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!239118) tb!158137))

(declare-fun result!200506 () Bool)

(assert (= result!200506 result!200146))

(assert (=> d!879847 t!239118))

(declare-fun t!239120 () Bool)

(declare-fun tb!158139 () Bool)

(assert (=> (and b!3212513 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (Cons!36179 (h!41599 tokens!494) Nil!36179)))))) t!239120) tb!158139))

(declare-fun result!200508 () Bool)

(assert (= result!200508 result!200166))

(assert (=> d!879919 t!239120))

(declare-fun t!239122 () Bool)

(declare-fun tb!158141 () Bool)

(assert (=> (and b!3212513 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084674 0))))) t!239122) tb!158141))

(declare-fun result!200510 () Bool)

(assert (= result!200510 result!200176))

(assert (=> d!880049 t!239122))

(declare-fun t!239124 () Bool)

(declare-fun tb!158143 () Bool)

(assert (=> (and b!3212513 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084882)))))) t!239124) tb!158143))

(declare-fun result!200512 () Bool)

(assert (= result!200512 result!200046))

(assert (=> d!879405 t!239124))

(declare-fun t!239126 () Bool)

(declare-fun tb!158145 () Bool)

(assert (=> (and b!3212513 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084932)))))) t!239126) tb!158145))

(declare-fun result!200514 () Bool)

(assert (= result!200514 result!200056))

(assert (=> d!879413 t!239126))

(declare-fun t!239128 () Bool)

(declare-fun tb!158147 () Bool)

(assert (=> (and b!3212513 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toChars!7167 (transformation!5224 (rule!7664 (apply!8198 lt!1084657 0))))) t!239128) tb!158147))

(declare-fun result!200516 () Bool)

(assert (= result!200516 result!200246))

(assert (=> d!880467 t!239128))

(declare-fun t!239130 () Bool)

(declare-fun tb!158149 () Bool)

(assert (=> (and b!3212513 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!239130) tb!158149))

(declare-fun result!200518 () Bool)

(assert (= result!200518 result!200278))

(assert (=> d!880477 t!239130))

(declare-fun t!239132 () Bool)

(declare-fun tb!158151 () Bool)

(assert (=> (and b!3212513 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) t!239132) tb!158151))

(declare-fun result!200520 () Bool)

(assert (= result!200520 result!200002))

(assert (=> d!879305 t!239132))

(declare-fun t!239134 () Bool)

(declare-fun tb!158153 () Bool)

(assert (=> (and b!3212513 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494))))) t!239134) tb!158153))

(declare-fun result!200522 () Bool)

(assert (= result!200522 result!199928))

(assert (=> d!878969 t!239134))

(assert (=> b!3209271 t!239116))

(assert (=> b!3209346 t!239134))

(declare-fun tb!158155 () Bool)

(declare-fun t!239136 () Bool)

(assert (=> (and b!3212513 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toChars!7167 (transformation!5224 (rule!7664 (_1!20921 (get!11520 lt!1084957)))))) t!239136) tb!158155))

(declare-fun result!200524 () Bool)

(assert (= result!200524 result!200036))

(assert (=> d!879385 t!239136))

(declare-fun t!239138 () Bool)

(declare-fun tb!158157 () Bool)

(assert (=> (and b!3212513 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494))))))) t!239138) tb!158157))

(declare-fun result!200526 () Bool)

(assert (= result!200526 result!200306))

(assert (=> d!880535 t!239138))

(assert (=> b!3211725 t!239132))

(declare-fun b_and!214217 () Bool)

(declare-fun tp!1013554 () Bool)

(assert (=> b!3212513 (= tp!1013554 (and (=> t!239130 result!200518) (=> t!239132 result!200520) (=> t!239138 result!200526) (=> t!239120 result!200508) (=> t!239128 result!200516) (=> t!239134 result!200522) (=> t!239124 result!200512) (=> t!239118 result!200506) (=> t!239122 result!200510) (=> t!239114 result!200502) (=> t!239126 result!200514) (=> t!239136 result!200524) (=> t!239116 result!200504) b_and!214217))))

(declare-fun e!2003069 () Bool)

(declare-fun e!2003064 () Bool)

(declare-fun tp!1013557 () Bool)

(declare-fun b!3212510 () Bool)

(assert (=> b!3212510 (= e!2003064 (and (inv!49036 (h!41599 (t!238514 (t!238514 tokens!494)))) e!2003069 tp!1013557))))

(declare-fun e!2003068 () Bool)

(assert (=> b!3212513 (= e!2003068 (and tp!1013556 tp!1013554))))

(assert (=> b!3210116 (= tp!1013363 e!2003064)))

(declare-fun b!3212512 () Bool)

(declare-fun tp!1013555 () Bool)

(declare-fun e!2003066 () Bool)

(assert (=> b!3212512 (= e!2003066 (and tp!1013555 (inv!49032 (tag!5750 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (inv!49035 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) e!2003068))))

(declare-fun tp!1013553 () Bool)

(declare-fun b!3212511 () Bool)

(assert (=> b!3212511 (= e!2003069 (and (inv!21 (value!169344 (h!41599 (t!238514 (t!238514 tokens!494))))) e!2003066 tp!1013553))))

(assert (= b!3212512 b!3212513))

(assert (= b!3212511 b!3212512))

(assert (= b!3212510 b!3212511))

(assert (= (and b!3210116 ((_ is Cons!36179) (t!238514 (t!238514 tokens!494)))) b!3212510))

(declare-fun m!3483075 () Bool)

(assert (=> b!3212510 m!3483075))

(declare-fun m!3483077 () Bool)

(assert (=> b!3212512 m!3483077))

(declare-fun m!3483079 () Bool)

(assert (=> b!3212512 m!3483079))

(declare-fun m!3483081 () Bool)

(assert (=> b!3212511 m!3483081))

(declare-fun b!3212517 () Bool)

(declare-fun e!2003070 () Bool)

(declare-fun tp!1013562 () Bool)

(declare-fun tp!1013561 () Bool)

(assert (=> b!3212517 (= e!2003070 (and tp!1013562 tp!1013561))))

(declare-fun b!3212515 () Bool)

(declare-fun tp!1013560 () Bool)

(declare-fun tp!1013559 () Bool)

(assert (=> b!3212515 (= e!2003070 (and tp!1013560 tp!1013559))))

(declare-fun b!3212516 () Bool)

(declare-fun tp!1013558 () Bool)

(assert (=> b!3212516 (= e!2003070 tp!1013558)))

(assert (=> b!3210099 (= tp!1013341 e!2003070)))

(declare-fun b!3212514 () Bool)

(assert (=> b!3212514 (= e!2003070 tp_is_empty!17297)))

(assert (= (and b!3210099 ((_ is ElementMatch!9983) (reg!10312 (regex!5224 (rule!7664 separatorToken!241))))) b!3212514))

(assert (= (and b!3210099 ((_ is Concat!15437) (reg!10312 (regex!5224 (rule!7664 separatorToken!241))))) b!3212515))

(assert (= (and b!3210099 ((_ is Star!9983) (reg!10312 (regex!5224 (rule!7664 separatorToken!241))))) b!3212516))

(assert (= (and b!3210099 ((_ is Union!9983) (reg!10312 (regex!5224 (rule!7664 separatorToken!241))))) b!3212517))

(declare-fun b!3212521 () Bool)

(declare-fun e!2003071 () Bool)

(declare-fun tp!1013567 () Bool)

(declare-fun tp!1013566 () Bool)

(assert (=> b!3212521 (= e!2003071 (and tp!1013567 tp!1013566))))

(declare-fun b!3212519 () Bool)

(declare-fun tp!1013565 () Bool)

(declare-fun tp!1013564 () Bool)

(assert (=> b!3212519 (= e!2003071 (and tp!1013565 tp!1013564))))

(declare-fun b!3212520 () Bool)

(declare-fun tp!1013563 () Bool)

(assert (=> b!3212520 (= e!2003071 tp!1013563)))

(assert (=> b!3210122 (= tp!1013364 e!2003071)))

(declare-fun b!3212518 () Bool)

(assert (=> b!3212518 (= e!2003071 tp_is_empty!17297)))

(assert (= (and b!3210122 ((_ is ElementMatch!9983) (reg!10312 (regex!5224 (h!41598 rules!2135))))) b!3212518))

(assert (= (and b!3210122 ((_ is Concat!15437) (reg!10312 (regex!5224 (h!41598 rules!2135))))) b!3212519))

(assert (= (and b!3210122 ((_ is Star!9983) (reg!10312 (regex!5224 (h!41598 rules!2135))))) b!3212520))

(assert (= (and b!3210122 ((_ is Union!9983) (reg!10312 (regex!5224 (h!41598 rules!2135))))) b!3212521))

(declare-fun b!3212525 () Bool)

(declare-fun e!2003072 () Bool)

(declare-fun tp!1013572 () Bool)

(declare-fun tp!1013571 () Bool)

(assert (=> b!3212525 (= e!2003072 (and tp!1013572 tp!1013571))))

(declare-fun b!3212523 () Bool)

(declare-fun tp!1013570 () Bool)

(declare-fun tp!1013569 () Bool)

(assert (=> b!3212523 (= e!2003072 (and tp!1013570 tp!1013569))))

(declare-fun b!3212524 () Bool)

(declare-fun tp!1013568 () Bool)

(assert (=> b!3212524 (= e!2003072 tp!1013568)))

(assert (=> b!3210123 (= tp!1013368 e!2003072)))

(declare-fun b!3212522 () Bool)

(assert (=> b!3212522 (= e!2003072 tp_is_empty!17297)))

(assert (= (and b!3210123 ((_ is ElementMatch!9983) (regOne!20479 (regex!5224 (h!41598 rules!2135))))) b!3212522))

(assert (= (and b!3210123 ((_ is Concat!15437) (regOne!20479 (regex!5224 (h!41598 rules!2135))))) b!3212523))

(assert (= (and b!3210123 ((_ is Star!9983) (regOne!20479 (regex!5224 (h!41598 rules!2135))))) b!3212524))

(assert (= (and b!3210123 ((_ is Union!9983) (regOne!20479 (regex!5224 (h!41598 rules!2135))))) b!3212525))

(declare-fun b!3212529 () Bool)

(declare-fun e!2003073 () Bool)

(declare-fun tp!1013577 () Bool)

(declare-fun tp!1013576 () Bool)

(assert (=> b!3212529 (= e!2003073 (and tp!1013577 tp!1013576))))

(declare-fun b!3212527 () Bool)

(declare-fun tp!1013575 () Bool)

(declare-fun tp!1013574 () Bool)

(assert (=> b!3212527 (= e!2003073 (and tp!1013575 tp!1013574))))

(declare-fun b!3212528 () Bool)

(declare-fun tp!1013573 () Bool)

(assert (=> b!3212528 (= e!2003073 tp!1013573)))

(assert (=> b!3210123 (= tp!1013367 e!2003073)))

(declare-fun b!3212526 () Bool)

(assert (=> b!3212526 (= e!2003073 tp_is_empty!17297)))

(assert (= (and b!3210123 ((_ is ElementMatch!9983) (regTwo!20479 (regex!5224 (h!41598 rules!2135))))) b!3212526))

(assert (= (and b!3210123 ((_ is Concat!15437) (regTwo!20479 (regex!5224 (h!41598 rules!2135))))) b!3212527))

(assert (= (and b!3210123 ((_ is Star!9983) (regTwo!20479 (regex!5224 (h!41598 rules!2135))))) b!3212528))

(assert (= (and b!3210123 ((_ is Union!9983) (regTwo!20479 (regex!5224 (h!41598 rules!2135))))) b!3212529))

(declare-fun b!3212533 () Bool)

(declare-fun e!2003074 () Bool)

(declare-fun tp!1013582 () Bool)

(declare-fun tp!1013581 () Bool)

(assert (=> b!3212533 (= e!2003074 (and tp!1013582 tp!1013581))))

(declare-fun b!3212531 () Bool)

(declare-fun tp!1013580 () Bool)

(declare-fun tp!1013579 () Bool)

(assert (=> b!3212531 (= e!2003074 (and tp!1013580 tp!1013579))))

(declare-fun b!3212532 () Bool)

(declare-fun tp!1013578 () Bool)

(assert (=> b!3212532 (= e!2003074 tp!1013578)))

(assert (=> b!3210098 (= tp!1013343 e!2003074)))

(declare-fun b!3212530 () Bool)

(assert (=> b!3212530 (= e!2003074 tp_is_empty!17297)))

(assert (= (and b!3210098 ((_ is ElementMatch!9983) (regOne!20478 (regex!5224 (rule!7664 separatorToken!241))))) b!3212530))

(assert (= (and b!3210098 ((_ is Concat!15437) (regOne!20478 (regex!5224 (rule!7664 separatorToken!241))))) b!3212531))

(assert (= (and b!3210098 ((_ is Star!9983) (regOne!20478 (regex!5224 (rule!7664 separatorToken!241))))) b!3212532))

(assert (= (and b!3210098 ((_ is Union!9983) (regOne!20478 (regex!5224 (rule!7664 separatorToken!241))))) b!3212533))

(declare-fun b!3212537 () Bool)

(declare-fun e!2003075 () Bool)

(declare-fun tp!1013587 () Bool)

(declare-fun tp!1013586 () Bool)

(assert (=> b!3212537 (= e!2003075 (and tp!1013587 tp!1013586))))

(declare-fun b!3212535 () Bool)

(declare-fun tp!1013585 () Bool)

(declare-fun tp!1013584 () Bool)

(assert (=> b!3212535 (= e!2003075 (and tp!1013585 tp!1013584))))

(declare-fun b!3212536 () Bool)

(declare-fun tp!1013583 () Bool)

(assert (=> b!3212536 (= e!2003075 tp!1013583)))

(assert (=> b!3210098 (= tp!1013342 e!2003075)))

(declare-fun b!3212534 () Bool)

(assert (=> b!3212534 (= e!2003075 tp_is_empty!17297)))

(assert (= (and b!3210098 ((_ is ElementMatch!9983) (regTwo!20478 (regex!5224 (rule!7664 separatorToken!241))))) b!3212534))

(assert (= (and b!3210098 ((_ is Concat!15437) (regTwo!20478 (regex!5224 (rule!7664 separatorToken!241))))) b!3212535))

(assert (= (and b!3210098 ((_ is Star!9983) (regTwo!20478 (regex!5224 (rule!7664 separatorToken!241))))) b!3212536))

(assert (= (and b!3210098 ((_ is Union!9983) (regTwo!20478 (regex!5224 (rule!7664 separatorToken!241))))) b!3212537))

(declare-fun b!3212540 () Bool)

(declare-fun e!2003078 () Bool)

(assert (=> b!3212540 (= e!2003078 true)))

(declare-fun b!3212539 () Bool)

(declare-fun e!2003077 () Bool)

(assert (=> b!3212539 (= e!2003077 e!2003078)))

(declare-fun b!3212538 () Bool)

(declare-fun e!2003076 () Bool)

(assert (=> b!3212538 (= e!2003076 e!2003077)))

(assert (=> b!3210084 e!2003076))

(assert (= b!3212539 b!3212540))

(assert (= b!3212538 b!3212539))

(assert (= (and b!3210084 ((_ is Cons!36178) (t!238513 (t!238513 rules!2135)))) b!3212538))

(assert (=> b!3212540 (< (dynLambda!14607 order!18473 (toValue!7308 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135)))))) (dynLambda!14608 order!18475 lambda!117479))))

(assert (=> b!3212540 (< (dynLambda!14609 order!18477 (toChars!7167 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135)))))) (dynLambda!14608 order!18475 lambda!117479))))

(declare-fun b!3212544 () Bool)

(declare-fun e!2003079 () Bool)

(declare-fun tp!1013592 () Bool)

(declare-fun tp!1013591 () Bool)

(assert (=> b!3212544 (= e!2003079 (and tp!1013592 tp!1013591))))

(declare-fun b!3212542 () Bool)

(declare-fun tp!1013590 () Bool)

(declare-fun tp!1013589 () Bool)

(assert (=> b!3212542 (= e!2003079 (and tp!1013590 tp!1013589))))

(declare-fun b!3212543 () Bool)

(declare-fun tp!1013588 () Bool)

(assert (=> b!3212543 (= e!2003079 tp!1013588)))

(assert (=> b!3210118 (= tp!1013361 e!2003079)))

(declare-fun b!3212541 () Bool)

(assert (=> b!3212541 (= e!2003079 tp_is_empty!17297)))

(assert (= (and b!3210118 ((_ is ElementMatch!9983) (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) b!3212541))

(assert (= (and b!3210118 ((_ is Concat!15437) (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) b!3212542))

(assert (= (and b!3210118 ((_ is Star!9983) (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) b!3212543))

(assert (= (and b!3210118 ((_ is Union!9983) (regex!5224 (rule!7664 (h!41599 (t!238514 tokens!494)))))) b!3212544))

(declare-fun b!3212545 () Bool)

(declare-fun e!2003080 () Bool)

(declare-fun tp!1013593 () Bool)

(assert (=> b!3212545 (= e!2003080 (and tp_is_empty!17297 tp!1013593))))

(assert (=> b!3210117 (= tp!1013359 e!2003080)))

(assert (= (and b!3210117 ((_ is Cons!36177) (originalCharacters!5938 (h!41599 (t!238514 tokens!494))))) b!3212545))

(declare-fun b!3212549 () Bool)

(declare-fun e!2003081 () Bool)

(declare-fun tp!1013598 () Bool)

(declare-fun tp!1013597 () Bool)

(assert (=> b!3212549 (= e!2003081 (and tp!1013598 tp!1013597))))

(declare-fun b!3212547 () Bool)

(declare-fun tp!1013596 () Bool)

(declare-fun tp!1013595 () Bool)

(assert (=> b!3212547 (= e!2003081 (and tp!1013596 tp!1013595))))

(declare-fun b!3212548 () Bool)

(declare-fun tp!1013594 () Bool)

(assert (=> b!3212548 (= e!2003081 tp!1013594)))

(assert (=> b!3210100 (= tp!1013345 e!2003081)))

(declare-fun b!3212546 () Bool)

(assert (=> b!3212546 (= e!2003081 tp_is_empty!17297)))

(assert (= (and b!3210100 ((_ is ElementMatch!9983) (regOne!20479 (regex!5224 (rule!7664 separatorToken!241))))) b!3212546))

(assert (= (and b!3210100 ((_ is Concat!15437) (regOne!20479 (regex!5224 (rule!7664 separatorToken!241))))) b!3212547))

(assert (= (and b!3210100 ((_ is Star!9983) (regOne!20479 (regex!5224 (rule!7664 separatorToken!241))))) b!3212548))

(assert (= (and b!3210100 ((_ is Union!9983) (regOne!20479 (regex!5224 (rule!7664 separatorToken!241))))) b!3212549))

(declare-fun b!3212553 () Bool)

(declare-fun e!2003082 () Bool)

(declare-fun tp!1013603 () Bool)

(declare-fun tp!1013602 () Bool)

(assert (=> b!3212553 (= e!2003082 (and tp!1013603 tp!1013602))))

(declare-fun b!3212551 () Bool)

(declare-fun tp!1013601 () Bool)

(declare-fun tp!1013600 () Bool)

(assert (=> b!3212551 (= e!2003082 (and tp!1013601 tp!1013600))))

(declare-fun b!3212552 () Bool)

(declare-fun tp!1013599 () Bool)

(assert (=> b!3212552 (= e!2003082 tp!1013599)))

(assert (=> b!3210100 (= tp!1013344 e!2003082)))

(declare-fun b!3212550 () Bool)

(assert (=> b!3212550 (= e!2003082 tp_is_empty!17297)))

(assert (= (and b!3210100 ((_ is ElementMatch!9983) (regTwo!20479 (regex!5224 (rule!7664 separatorToken!241))))) b!3212550))

(assert (= (and b!3210100 ((_ is Concat!15437) (regTwo!20479 (regex!5224 (rule!7664 separatorToken!241))))) b!3212551))

(assert (= (and b!3210100 ((_ is Star!9983) (regTwo!20479 (regex!5224 (rule!7664 separatorToken!241))))) b!3212552))

(assert (= (and b!3210100 ((_ is Union!9983) (regTwo!20479 (regex!5224 (rule!7664 separatorToken!241))))) b!3212553))

(declare-fun b!3212557 () Bool)

(declare-fun e!2003083 () Bool)

(declare-fun tp!1013608 () Bool)

(declare-fun tp!1013607 () Bool)

(assert (=> b!3212557 (= e!2003083 (and tp!1013608 tp!1013607))))

(declare-fun b!3212555 () Bool)

(declare-fun tp!1013606 () Bool)

(declare-fun tp!1013605 () Bool)

(assert (=> b!3212555 (= e!2003083 (and tp!1013606 tp!1013605))))

(declare-fun b!3212556 () Bool)

(declare-fun tp!1013604 () Bool)

(assert (=> b!3212556 (= e!2003083 tp!1013604)))

(assert (=> b!3210126 (= tp!1013369 e!2003083)))

(declare-fun b!3212554 () Bool)

(assert (=> b!3212554 (= e!2003083 tp_is_empty!17297)))

(assert (= (and b!3210126 ((_ is ElementMatch!9983) (reg!10312 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) b!3212554))

(assert (= (and b!3210126 ((_ is Concat!15437) (reg!10312 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) b!3212555))

(assert (= (and b!3210126 ((_ is Star!9983) (reg!10312 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) b!3212556))

(assert (= (and b!3210126 ((_ is Union!9983) (reg!10312 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) b!3212557))

(declare-fun b!3212560 () Bool)

(declare-fun e!2003086 () Bool)

(assert (=> b!3212560 (= e!2003086 true)))

(declare-fun b!3212559 () Bool)

(declare-fun e!2003085 () Bool)

(assert (=> b!3212559 (= e!2003085 e!2003086)))

(declare-fun b!3212558 () Bool)

(declare-fun e!2003084 () Bool)

(assert (=> b!3212558 (= e!2003084 e!2003085)))

(assert (=> b!3209977 e!2003084))

(assert (= b!3212559 b!3212560))

(assert (= b!3212558 b!3212559))

(assert (= (and b!3209977 ((_ is Cons!36178) (t!238513 rules!2135))) b!3212558))

(assert (=> b!3212560 (< (dynLambda!14607 order!18473 (toValue!7308 (transformation!5224 (h!41598 (t!238513 rules!2135))))) (dynLambda!14608 order!18475 lambda!117489))))

(assert (=> b!3212560 (< (dynLambda!14609 order!18477 (toChars!7167 (transformation!5224 (h!41598 (t!238513 rules!2135))))) (dynLambda!14608 order!18475 lambda!117489))))

(declare-fun b!3212564 () Bool)

(declare-fun e!2003087 () Bool)

(declare-fun tp!1013613 () Bool)

(declare-fun tp!1013612 () Bool)

(assert (=> b!3212564 (= e!2003087 (and tp!1013613 tp!1013612))))

(declare-fun b!3212562 () Bool)

(declare-fun tp!1013611 () Bool)

(declare-fun tp!1013610 () Bool)

(assert (=> b!3212562 (= e!2003087 (and tp!1013611 tp!1013610))))

(declare-fun b!3212563 () Bool)

(declare-fun tp!1013609 () Bool)

(assert (=> b!3212563 (= e!2003087 tp!1013609)))

(assert (=> b!3210125 (= tp!1013371 e!2003087)))

(declare-fun b!3212561 () Bool)

(assert (=> b!3212561 (= e!2003087 tp_is_empty!17297)))

(assert (= (and b!3210125 ((_ is ElementMatch!9983) (regOne!20478 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) b!3212561))

(assert (= (and b!3210125 ((_ is Concat!15437) (regOne!20478 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) b!3212562))

(assert (= (and b!3210125 ((_ is Star!9983) (regOne!20478 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) b!3212563))

(assert (= (and b!3210125 ((_ is Union!9983) (regOne!20478 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) b!3212564))

(declare-fun b!3212568 () Bool)

(declare-fun e!2003088 () Bool)

(declare-fun tp!1013618 () Bool)

(declare-fun tp!1013617 () Bool)

(assert (=> b!3212568 (= e!2003088 (and tp!1013618 tp!1013617))))

(declare-fun b!3212566 () Bool)

(declare-fun tp!1013616 () Bool)

(declare-fun tp!1013615 () Bool)

(assert (=> b!3212566 (= e!2003088 (and tp!1013616 tp!1013615))))

(declare-fun b!3212567 () Bool)

(declare-fun tp!1013614 () Bool)

(assert (=> b!3212567 (= e!2003088 tp!1013614)))

(assert (=> b!3210125 (= tp!1013370 e!2003088)))

(declare-fun b!3212565 () Bool)

(assert (=> b!3212565 (= e!2003088 tp_is_empty!17297)))

(assert (= (and b!3210125 ((_ is ElementMatch!9983) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) b!3212565))

(assert (= (and b!3210125 ((_ is Concat!15437) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) b!3212566))

(assert (= (and b!3210125 ((_ is Star!9983) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) b!3212567))

(assert (= (and b!3210125 ((_ is Union!9983) (regTwo!20478 (regex!5224 (rule!7664 (h!41599 tokens!494)))))) b!3212568))

(declare-fun b_lambda!88093 () Bool)

(assert (= b_lambda!88083 (or b!3209121 b_lambda!88093)))

(declare-fun bs!541872 () Bool)

(declare-fun d!880845 () Bool)

(assert (= bs!541872 (and d!880845 b!3209121)))

(assert (=> bs!541872 (= (dynLambda!14613 lambda!117479 (h!41599 tokens!494)) (rulesProduceIndividualToken!2305 thiss!18206 rules!2135 (h!41599 tokens!494)))))

(assert (=> bs!541872 m!3476743))

(assert (=> b!3212367 d!880845))

(declare-fun b_lambda!88095 () Bool)

(assert (= b_lambda!88019 (or (and b!3210119 b_free!85427) (and b!3212513 b_free!85443 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (and b!3209120 b_free!85407 (= (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (and b!3209140 b_free!85411 (= (toChars!7167 (transformation!5224 (h!41598 rules!2135))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (and b!3209139 b_free!85403 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (and b!3212495 b_free!85439 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (and b!3210083 b_free!85423 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) b_lambda!88095)))

(declare-fun b_lambda!88097 () Bool)

(assert (= b_lambda!87999 (or (and b!3212495 b_free!85437 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3210083 b_free!85421 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3212513 b_free!85441 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3209120 b_free!85405 (= (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3209140 b_free!85409 (= (toValue!7308 (transformation!5224 (h!41598 rules!2135))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3209139 b_free!85401) (and b!3210119 b_free!85425 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) b_lambda!88097)))

(declare-fun b_lambda!88099 () Bool)

(assert (= b_lambda!88035 (or (and b!3210119 b_free!85427) (and b!3212513 b_free!85443 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (and b!3209120 b_free!85407 (= (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (and b!3209140 b_free!85411 (= (toChars!7167 (transformation!5224 (h!41598 rules!2135))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (and b!3209139 b_free!85403 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (and b!3212495 b_free!85439 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (and b!3210083 b_free!85423 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) b_lambda!88099)))

(declare-fun b_lambda!88101 () Bool)

(assert (= b_lambda!87997 (or (and b!3210083 b_free!85423 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3210119 b_free!85427 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3209140 b_free!85411 (= (toChars!7167 (transformation!5224 (h!41598 rules!2135))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3212513 b_free!85443 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3209139 b_free!85403) (and b!3209120 b_free!85407 (= (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3212495 b_free!85439 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) b_lambda!88101)))

(declare-fun b_lambda!88103 () Bool)

(assert (= b_lambda!88037 (or (and b!3210119 b_free!85425) (and b!3210083 b_free!85421 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (and b!3209120 b_free!85405 (= (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (and b!3212513 b_free!85441 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (and b!3209140 b_free!85409 (= (toValue!7308 (transformation!5224 (h!41598 rules!2135))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (and b!3209139 b_free!85401 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (and b!3212495 b_free!85437 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) b_lambda!88103)))

(declare-fun b_lambda!88105 () Bool)

(assert (= b_lambda!88091 (or b!3209124 b_lambda!88105)))

(assert (=> d!880831 d!879307))

(declare-fun b_lambda!88107 () Bool)

(assert (= b_lambda!88089 (or (and b!3212495 b_free!85437 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3210083 b_free!85421 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3212513 b_free!85441 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3209120 b_free!85405 (= (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3209140 b_free!85409 (= (toValue!7308 (transformation!5224 (h!41598 rules!2135))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3209139 b_free!85401) (and b!3210119 b_free!85425 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) b_lambda!88107)))

(declare-fun b_lambda!88109 () Bool)

(assert (= b_lambda!88031 (or (and b!3210119 b_free!85425) (and b!3210083 b_free!85421 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (and b!3209120 b_free!85405 (= (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (and b!3212513 b_free!85441 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (and b!3209140 b_free!85409 (= (toValue!7308 (transformation!5224 (h!41598 rules!2135))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (and b!3209139 b_free!85401 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) (and b!3212495 b_free!85437 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))))) b_lambda!88109)))

(declare-fun b_lambda!88111 () Bool)

(assert (= b_lambda!88087 (or b!3209124 b_lambda!88111)))

(assert (=> b!3212427 d!879309))

(declare-fun b_lambda!88113 () Bool)

(assert (= b_lambda!88081 (or b!3209121 b_lambda!88113)))

(assert (=> d!880763 d!879311))

(declare-fun b_lambda!88115 () Bool)

(assert (= b_lambda!88041 (or (and b!3212495 b_free!85439 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))))) (and b!3209139 b_free!85403 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 tokens!494)))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))))) (and b!3210083 b_free!85423 (= (toChars!7167 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))))) (and b!3210119 b_free!85427 (= (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))))) (and b!3209140 b_free!85411 (= (toChars!7167 (transformation!5224 (h!41598 rules!2135))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))))) (and b!3212513 b_free!85443) (and b!3209120 b_free!85407 (= (toChars!7167 (transformation!5224 (rule!7664 separatorToken!241))) (toChars!7167 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))))) b_lambda!88115)))

(declare-fun b_lambda!88117 () Bool)

(assert (= b_lambda!88079 (or d!879211 b_lambda!88117)))

(declare-fun bs!541873 () Bool)

(declare-fun d!880847 () Bool)

(assert (= bs!541873 (and d!880847 d!879211)))

(assert (=> bs!541873 (= (dynLambda!14613 lambda!117489 (h!41599 (list!12869 (seqFromList!3520 tokens!494)))) (rulesProduceIndividualToken!2305 thiss!18206 rules!2135 (h!41599 (list!12869 (seqFromList!3520 tokens!494)))))))

(assert (=> bs!541873 m!3479277))

(assert (=> b!3212363 d!880847))

(declare-fun b_lambda!88119 () Bool)

(assert (= b_lambda!87971 (or b!3209124 b_lambda!88119)))

(assert (=> d!879423 d!879309))

(declare-fun b_lambda!88121 () Bool)

(assert (= b_lambda!88001 (or (and b!3212495 b_free!85437 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 (t!238513 rules!2135))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3210083 b_free!85421 (= (toValue!7308 (transformation!5224 (h!41598 (t!238513 rules!2135)))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3212513 b_free!85441 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 (t!238514 tokens!494)))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3209120 b_free!85405 (= (toValue!7308 (transformation!5224 (rule!7664 separatorToken!241))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3209140 b_free!85409 (= (toValue!7308 (transformation!5224 (h!41598 rules!2135))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) (and b!3209139 b_free!85401) (and b!3210119 b_free!85425 (= (toValue!7308 (transformation!5224 (rule!7664 (h!41599 (t!238514 tokens!494))))) (toValue!7308 (transformation!5224 (rule!7664 (h!41599 tokens!494)))))) b_lambda!88121)))

(check-sat (not b!3212192) (not b_lambda!88005) (not b!3211239) (not d!880703) (not b!3210666) (not b!3212201) (not b!3212512) (not b!3210903) (not b!3211855) (not b!3212116) (not b!3211279) (not b!3210983) (not b!3212145) (not b_lambda!87965) (not d!880547) (not b!3212181) (not d!880025) (not b!3211242) (not b!3210572) (not b!3211233) (not b!3211090) (not b!3212459) (not b_next!86143) (not d!880373) (not b!3212292) (not bm!232475) (not b!3211607) (not b!3212486) (not d!880135) (not d!879525) (not b!3211081) (not tb!157791) (not d!879745) (not d!880747) (not d!880669) (not b!3212456) (not d!879685) (not b!3211705) (not b!3212193) (not d!879673) (not b!3211849) (not b!3210602) (not d!879463) (not b!3212359) (not bm!232390) (not d!880783) (not b!3212012) (not d!880289) (not b!3210337) (not b!3212436) (not b!3210905) (not bm!232466) (not d!879403) (not bm!232350) (not d!880333) (not d!879519) (not bm!232457) (not b!3212454) (not b!3212453) (not d!880805) (not b!3211734) (not d!879883) (not b_lambda!88105) (not b_lambda!88101) (not bm!232402) (not d!879521) (not d!880399) (not b!3212563) (not b!3212021) tp_is_empty!17297 (not bm!232455) (not b_next!86127) (not b!3212556) (not b!3211259) (not d!879649) (not b!3212501) (not d!880823) (not b_lambda!88121) (not b!3211446) (not b!3212507) (not d!879657) (not b!3210362) (not b!3210681) (not b!3211325) (not d!880397) (not bm!232401) (not b!3211256) (not b!3212369) (not b!3212112) (not d!880173) (not d!880713) (not b!3212431) (not b!3212348) (not bm!232392) (not b!3210225) (not d!880691) (not b!3211504) (not bm!232467) (not b!3211660) (not b!3210603) (not bm!232408) (not d!879379) (not b!3210366) (not d!880435) (not b!3210598) (not d!880455) (not b!3210560) (not d!879479) (not b!3212184) (not b!3211728) (not d!880337) (not bm!232482) (not tb!157681) (not b!3211321) (not d!880793) (not d!880685) (not b!3212026) (not b!3212471) (not b!3212183) (not d!879373) (not b!3211261) (not b!3211322) (not d!880029) (not b!3210537) (not b!3212185) (not b!3212324) (not b!3210361) (not b!3211725) (not d!879495) (not bm!232263) b_and!214215 (not b_next!86125) (not d!880749) (not b!3212419) (not b!3211891) (not b!3212328) (not b!3211632) (not bm!232489) (not bm!232376) (not d!880721) (not bm!232491) (not d!880195) (not b!3211345) (not b_lambda!87957) (not d!880655) (not b!3211780) (not b!3212254) (not bm!232438) (not d!879547) (not b!3212475) (not b!3210269) (not d!880331) (not b!3210688) (not d!879989) (not b_next!86147) (not b!3212566) (not b_next!86105) (not d!880419) (not b!3212307) (not d!879561) (not b!3209291) (not tb!157811) (not b!3212498) (not b!3211221) (not b!3212378) (not d!879791) (not b!3211918) (not d!880211) (not b!3212535) (not b!3212199) (not d!880811) (not d!879839) (not b!3212429) (not b!3212491) (not b!3212345) (not b!3212469) (not b!3211689) (not b!3212435) (not b!3210416) (not b!3211432) (not b!3210380) (not b!3211798) (not b!3211147) (not d!879535) (not b!3211962) (not b!3212159) (not b!3210322) (not b_lambda!87941) (not b!3212374) (not b!3211641) (not tb!157711) (not d!879919) (not b!3210561) (not d!880809) (not d!879781) (not d!880511) (not b_lambda!88103) (not b!3210689) (not d!880369) (not bm!232380) (not b_lambda!88099) (not d!880189) (not d!880079) (not b!3210684) (not b!3212465) (not b!3212392) (not bm!232454) (not b!3212524) (not d!879469) (not d!879915) (not b!3212545) (not b!3211794) (not d!880267) (not b!3210970) (not b!3210319) (not b!3211576) (not d!880055) (not b!3212242) (not b!3210665) (not b!3210205) (not d!879523) (not d!880817) (not b!3210705) (not d!880059) (not b!3211566) (not d!879425) (not d!879893) (not d!879517) (not b!3210389) (not b!3212532) (not b!3212353) (not b!3212520) (not b!3210353) (not d!880723) (not b!3211571) (not b!3212476) (not tb!157831) (not d!879651) (not b!3211409) (not d!880515) (not d!880171) (not b!3210594) (not b!3210589) (not b!3212568) (not b!3211901) (not d!880457) (not b!3210892) (not b!3211495) (not bm!232318) (not b_next!86113) (not b_lambda!88119) (not b_lambda!88113) (not b!3212013) (not d!879693) (not b!3212090) (not d!880779) (not b!3210204) (not bm!232476) (not b!3212422) (not b_next!86141) (not b!3212381) (not b!3211532) (not b!3211536) (not b!3210271) (not b!3212467) (not b!3210382) b_and!214203 (not b!3211731) (not d!879417) (not b!3210601) (not bm!232256) (not b!3212516) (not d!879953) (not b_lambda!87961) (not d!880627) (not d!880451) (not b!3210978) (not d!879427) (not b!3210355) (not d!879881) (not d!879691) (not d!880737) (not b!3212379) (not d!880709) (not d!879877) (not b!3212389) (not d!880291) (not b!3211781) (not b!3212418) (not b!3211824) (not bm!232413) (not b!3212385) b_and!214201 (not b!3210266) (not d!879531) (not b!3212562) (not bm!232480) (not b!3211059) (not d!880791) (not b!3211909) (not b!3210259) (not d!879683) (not b!3212500) (not bm!232487) (not b!3210667) (not b!3211941) (not b!3210570) (not d!879833) (not bm!232285) (not d!880543) (not b!3211704) (not d!879935) (not b!3211260) (not b_lambda!88003) (not b!3211163) (not d!880187) (not d!880667) (not d!880313) b_and!214209 (not d!879853) (not b!3212553) (not b!3211692) (not b!3211347) (not b!3212510) (not b!3211004) (not d!880643) (not b!3212407) (not d!880009) (not b!3212551) (not bm!232378) (not b!3211236) (not d!879659) (not b!3212536) (not d!879465) (not b!3211262) (not b!3211834) (not b!3212544) (not b!3211512) (not b!3211087) (not bm!232493) (not d!879973) (not b!3212463) (not b!3211146) b_and!214167 (not b_next!86145) (not b!3212232) (not b!3211920) (not b!3210673) (not b!3210542) (not bm!232262) (not b!3212439) (not d!879885) (not bm!232412) (not b!3211919) (not b!3211292) (not d!879405) (not b!3212290) (not b!3210564) (not b!3211164) (not d!880533) (not d!879847) (not b!3212528) (not b!3210538) (not d!880241) (not b!3210209) (not b!3212395) (not d!880459) (not b!3212462) (not d!879637) (not b!3212332) (not b!3212452) (not b!3211790) (not b!3210072) (not b!3211847) (not b!3211142) (not b!3212396) (not b!3210363) (not b!3212441) (not b!3210349) (not d!879933) (not b!3211324) (not d!880535) (not d!880649) (not d!880273) (not b!3211876) (not b!3210901) (not b!3210264) (not d!880741) (not b!3211724) (not b!3211278) (not d!880781) (not d!880265) (not b!3211502) (not b!3212009) (not b!3210908) (not b_next!86111) (not bm!232411) (not b!3212151) (not d!880825) (not d!879667) (not b!3210536) (not b!3211346) (not b!3212368) (not b!3210213) (not b!3211361) (not b!3210245) (not b!3210369) (not b!3210593) (not b!3212173) (not d!880427) (not b_lambda!88109) (not b_lambda!88045) (not b!3212143) b_and!214165 (not b!3211853) (not d!879941) (not b!3210267) (not b!3212404) (not d!879671) (not d!879467) (not b!3211289) (not d!879461) (not b!3211946) (not d!880077) (not d!880177) (not d!879783) (not b!3210545) (not b!3210592) (not b!3211135) (not b!3210419) (not b!3210680) (not b!3212433) (not b!3211691) (not b_next!86131) (not b!3210893) (not bm!232246) (not b!3212497) (not d!879515) (not d!880301) (not bm!232460) (not d!880707) (not d!879559) (not b!3210674) (not b!3210390) (not b!3212408) (not b!3210906) (not d!879639) (not b_lambda!88027) (not b!3210544) (not b!3210274) (not d!879537) (not b!3211908) (not b!3212558) (not d!880137) (not d!879999) (not b_lambda!87943) (not b!3212092) (not b!3212525) (not b!3212321) (not d!880395) (not b!3212446) (not b_next!86115) (not b!3211263) (not b!3210357) (not bm!232468) (not b!3212450) (not b_lambda!87953) (not b!3211797) (not bm!232478) (not d!879377) (not bm!232404) (not d!879821) (not d!879385) (not b!3210265) (not b!3211836) (not b!3210339) (not d!880751) (not b!3211416) (not bm!232490) (not b!3212317) (not bm!232461) (not d!879911) (not d!879511) (not bm!232391) (not b!3212438) (not b_lambda!88111) (not b!3210675) (not b!3212169) (not b!3212505) (not b!3211960) (not b!3212487) (not b!3211453) (not b!3212490) (not b_lambda!88085) b_and!214171 (not d!880561) (not tb!157951) (not b!3211961) (not b!3210670) (not b!3211722) (not b!3210260) (not d!879641) (not b!3212547) (not d!880661) (not b!3212548) (not b!3212347) (not b!3211121) (not bm!232264) (not b!3211494) (not d!880787) (not b!3209345) (not d!880431) (not b!3210406) (not b!3211574) (not tb!157913) (not b!3212372) (not d!880023) (not b!3212323) (not b!3211826) (not b!3210367) (not d!879845) (not b!3212098) (not b!3212357) (not b!3211984) (not b!3212350) (not d!879571) (not d!880231) (not b!3211232) (not b!3212511) (not b_lambda!87945) (not b!3212405) (not d!879655) (not b!3212025) (not b!3212543) (not b!3212508) (not b!3212485) (not b!3212555) (not d!880181) (not b!3212382) (not d!879991) (not d!880531) (not d!879681) (not b!3212506) (not b!3210567) (not b!3212430) b_and!214211 (not b!3211924) (not b!3212549) (not b_lambda!88093) (not bm!232257) (not b_lambda!88107) (not b_lambda!87977) (not d!880757) (not bs!541872) (not b!3212496) (not tb!157671) (not b!3212349) (not b!3210270) (not d!880769) (not b!3210341) (not b!3212118) (not bm!232456) (not b!3211238) (not b!3212356) (not b!3212191) (not b!3212542) (not bm!232254) (not b!3211407) (not d!880739) (not d!879409) b_and!214205 (not b!3211697) (not b!3212386) (not b!3211640) (not d!880443) (not d!880151) (not b!3211162) (not b!3211182) (not d!880283) b_and!214207 (not b!3212376) (not b!3212557) (not d!880555) (not b!3210565) (not d!880493) (not b!3212444) (not bm!232377) (not b!3211418) (not d!880819) (not b!3210388) (not b!3212333) (not b!3212360) (not d!879513) (not b!3211468) (not b!3212509) (not b!3212325) (not b!3210320) (not b!3210219) (not d!880729) (not b!3210569) (not d!880027) (not bm!232407) (not b!3211364) (not b!3211726) (not b!3212504) (not b!3211060) (not b!3212428) (not d!879669) (not b!3210254) (not b!3212410) (not d!880815) (not b!3210909) (not b!3212521) (not d!880693) (not b!3211886) (not b_lambda!87949) (not b_lambda!87947) (not b!3210257) (not b!3211921) (not d!880837) (not b!3211695) (not b!3210360) (not d!879653) (not b!3211056) (not b!3210856) (not b!3211141) (not b!3211298) (not bm!232253) (not bm!232451) (not b!3212538) (not b!3211892) (not b!3212531) (not b!3212417) (not b!3211957) (not d!880659) (not b!3210703) (not b!3212364) (not b!3211888) (not b!3211994) (not bm!232313) b_and!214169 (not bm!232351) (not b!3212533) (not b!3212493) (not b!3212564) (not b!3212523) (not b_lambda!87967) (not bm!232453) (not b_next!86107) (not d!879849) (not tb!157881) (not bm!232315) (not d!880249) (not d!880569) (not b!3211655) (not b!3211496) (not d!879481) (not b!3211730) (not d!879551) (not b!3211288) (not d!880115) (not b!3212421) (not b!3211701) (not b!3210541) (not b!3210571) (not b!3212519) (not b_lambda!88095) (not d!879553) (not b!3211299) (not b!3212412) (not d!880167) (not tb!157941) (not d!880269) (not b!3210381) (not b_lambda!88117) (not bm!232374) (not b!3211180) (not bm!232319) (not b!3212420) (not bs!541873) (not d!880573) (not b!3212426) (not b!3211323) (not b!3212567) (not b!3210707) (not b!3212351) (not b_lambda!88115) (not d!879483) (not tb!157901) (not b!3212134) b_and!214217 (not b!3210904) (not b!3212167) (not d!880715) (not bm!232312) (not d!880775) (not bm!232462) (not d!880319) (not bm!232492) (not d!879541) (not d!880753) (not b!3212470) (not b!3210268) (not b_lambda!87955) (not d!880281) (not b!3210573) (not bm!232494) (not d!880467) (not b!3211257) (not d!879873) b_and!214213 (not d!880361) (not d!880387) (not bm!232379) (not b!3211511) (not d!880179) (not b!3210351) (not b!3211903) (not d!880355) (not bm!232340) (not d!880697) (not d!880221) (not d!879477) (not b!3210330) (not b!3210273) (not d!879411) (not d!879383) (not b!3212489) (not b_lambda!88011) (not b!3210385) b_and!214163 (not b_lambda!88097) (not d!880049) (not b!3212492) (not b!3212022) (not bm!232422) (not tb!157801) (not b!3212344) (not d!880199) (not d!880767) (not bm!232477) (not b!3211791) (not b!3211505) (not b!3212447) (not bm!232495) (not d!879789) (not d!880613) (not b!3210206) (not b!3211061) (not b!3211348) (not d!880487) (not b!3211300) (not b!3212388) (not b!3211091) (not d!880093) (not b!3210979) (not b!3212517) (not b!3211295) (not b!3212133) (not b!3211636) (not bm!232479) (not d!879759) (not d!880169) (not b!3212087) (not d!880477) (not bm!232260) (not b!3212028) (not b!3212527) (not d!880759) (not tb!157781) (not b!3210358) (not b!3212397) (not b!3211633) (not b!3210262) (not b!3212331) (not d!879421) (not bm!232373) (not b!3212515) (not d!880235) (not b!3211508) (not b!3211565) (not b!3212157) (not d!880521) (not b!3211234) (not b!3212474) (not b!3211466) (not bm!232399) (not b!3211917) (not tb!158065) (not b!3212136) (not b!3211245) (not bm!232436) (not d!880623) (not d!879393) (not b!3211451) (not d!879895) (not b_next!86129) (not b!3212354) (not b!3212414) (not b!3210563) (not b!3211874) (not bm!232481) (not b!3210562) (not d!879831) (not b!3212089) (not b!3211698) (not d!879509) (not bm!232424) (not d!880519) (not b!3211850) (not d!879545) (not b!3212425) (not bm!232400) (not d!879937) (not d!879665) (not d!880777) (not d!879381) (not b!3212027) (not b!3211821) (not d!880017) (not d!879413) (not b!3210255) (not bm!232375) (not d!880641) (not d!879859) (not b_next!86109) (not d!879663) (not b!3211181) (not bm!232435) (not bm!232425) (not bm!232423) (not b_lambda!87969) (not b!3211832) (not b!3210967) (not bm!232258) (not d!879689) (not b!3211258) (not b!3210907) (not d!879419) (not d!879939) (not d!880243) (not d!879675) (not d!879965) (not b!3211006) (not d!880339) (not b!3212287) (not b!3210323) (not tb!158055) (not b!3210595) (not b!3212552) (not b!3212473) (not d!879661) (not b!3212346) (not b!3211533) (not b!3212219) (not d!879635) (not d!879761) (not d!880711) (not b!3211291) (not b!3210214) (not b!3212494) (not b!3212416) (not b!3211893) (not b!3212502) (not b!3212366) (not d!880609) (not b!3211247) (not b!3212182) (not d!880413) (not b!3212319) (not b!3210372) (not b!3211656) (not d!879401) (not d!880527) (not b!3211706) (not d!880013) (not b!3211659) (not b!3212529) (not b!3211639) (not d!880701) (not d!880735) (not b!3210212) (not d!879797) (not b!3212174) (not b!3212537) (not b!3211246) (not b!3210370) (not b!3211222) (not b!3210418) (not b_lambda!87959) (not tb!157691) (not bm!232314) (not b!3210687) (not b!3211575) (not b_lambda!87951))
(check-sat (not b_next!86143) (not b_next!86127) (not b_next!86105) b_and!214201 b_and!214209 (not b_next!86111) b_and!214165 (not b_next!86131) (not b_next!86115) b_and!214171 b_and!214169 (not b_next!86107) b_and!214217 b_and!214213 b_and!214163 (not b_next!86129) (not b_next!86109) b_and!214215 (not b_next!86125) (not b_next!86147) (not b_next!86113) b_and!214203 (not b_next!86141) b_and!214167 (not b_next!86145) b_and!214211 b_and!214205 b_and!214207)

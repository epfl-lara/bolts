; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!344820 () Bool)

(assert start!344820)

(declare-fun b!3676601 () Bool)

(declare-fun b_free!97289 () Bool)

(declare-fun b_next!97993 () Bool)

(assert (=> b!3676601 (= b_free!97289 (not b_next!97993))))

(declare-fun tp!1118116 () Bool)

(declare-fun b_and!274267 () Bool)

(assert (=> b!3676601 (= tp!1118116 b_and!274267)))

(declare-fun b_free!97291 () Bool)

(declare-fun b_next!97995 () Bool)

(assert (=> b!3676601 (= b_free!97291 (not b_next!97995))))

(declare-fun tp!1118103 () Bool)

(declare-fun b_and!274269 () Bool)

(assert (=> b!3676601 (= tp!1118103 b_and!274269)))

(declare-fun b!3676585 () Bool)

(declare-fun b_free!97293 () Bool)

(declare-fun b_next!97997 () Bool)

(assert (=> b!3676585 (= b_free!97293 (not b_next!97997))))

(declare-fun tp!1118112 () Bool)

(declare-fun b_and!274271 () Bool)

(assert (=> b!3676585 (= tp!1118112 b_and!274271)))

(declare-fun b_free!97295 () Bool)

(declare-fun b_next!97999 () Bool)

(assert (=> b!3676585 (= b_free!97295 (not b_next!97999))))

(declare-fun tp!1118113 () Bool)

(declare-fun b_and!274273 () Bool)

(assert (=> b!3676585 (= tp!1118113 b_and!274273)))

(declare-fun b!3676605 () Bool)

(declare-fun b_free!97297 () Bool)

(declare-fun b_next!98001 () Bool)

(assert (=> b!3676605 (= b_free!97297 (not b_next!98001))))

(declare-fun tp!1118105 () Bool)

(declare-fun b_and!274275 () Bool)

(assert (=> b!3676605 (= tp!1118105 b_and!274275)))

(declare-fun b_free!97299 () Bool)

(declare-fun b_next!98003 () Bool)

(assert (=> b!3676605 (= b_free!97299 (not b_next!98003))))

(declare-fun tp!1118107 () Bool)

(declare-fun b_and!274277 () Bool)

(assert (=> b!3676605 (= tp!1118107 b_and!274277)))

(declare-fun b!3676592 () Bool)

(declare-fun b_free!97301 () Bool)

(declare-fun b_next!98005 () Bool)

(assert (=> b!3676592 (= b_free!97301 (not b_next!98005))))

(declare-fun tp!1118117 () Bool)

(declare-fun b_and!274279 () Bool)

(assert (=> b!3676592 (= tp!1118117 b_and!274279)))

(declare-fun b_free!97303 () Bool)

(declare-fun b_next!98007 () Bool)

(assert (=> b!3676592 (= b_free!97303 (not b_next!98007))))

(declare-fun tp!1118111 () Bool)

(declare-fun b_and!274281 () Bool)

(assert (=> b!3676592 (= tp!1118111 b_and!274281)))

(declare-fun b!3676561 () Bool)

(declare-datatypes ((Unit!56608 0))(
  ( (Unit!56609) )
))
(declare-fun e!2276563 () Unit!56608)

(declare-fun Unit!56610 () Unit!56608)

(assert (=> b!3676561 (= e!2276563 Unit!56610)))

(declare-datatypes ((List!38900 0))(
  ( (Nil!38776) (Cons!38776 (h!44196 (_ BitVec 16)) (t!300215 List!38900)) )
))
(declare-datatypes ((TokenValue!6065 0))(
  ( (FloatLiteralValue!12130 (text!42900 List!38900)) (TokenValueExt!6064 (__x!24347 Int)) (Broken!30325 (value!186733 List!38900)) (Object!6188) (End!6065) (Def!6065) (Underscore!6065) (Match!6065) (Else!6065) (Error!6065) (Case!6065) (If!6065) (Extends!6065) (Abstract!6065) (Class!6065) (Val!6065) (DelimiterValue!12130 (del!6125 List!38900)) (KeywordValue!6071 (value!186734 List!38900)) (CommentValue!12130 (value!186735 List!38900)) (WhitespaceValue!12130 (value!186736 List!38900)) (IndentationValue!6065 (value!186737 List!38900)) (String!43660) (Int32!6065) (Broken!30326 (value!186738 List!38900)) (Boolean!6066) (Unit!56611) (OperatorValue!6068 (op!6125 List!38900)) (IdentifierValue!12130 (value!186739 List!38900)) (IdentifierValue!12131 (value!186740 List!38900)) (WhitespaceValue!12131 (value!186741 List!38900)) (True!12130) (False!12130) (Broken!30327 (value!186742 List!38900)) (Broken!30328 (value!186743 List!38900)) (True!12131) (RightBrace!6065) (RightBracket!6065) (Colon!6065) (Null!6065) (Comma!6065) (LeftBracket!6065) (False!12131) (LeftBrace!6065) (ImaginaryLiteralValue!6065 (text!42901 List!38900)) (StringLiteralValue!18195 (value!186744 List!38900)) (EOFValue!6065 (value!186745 List!38900)) (IdentValue!6065 (value!186746 List!38900)) (DelimiterValue!12131 (value!186747 List!38900)) (DedentValue!6065 (value!186748 List!38900)) (NewLineValue!6065 (value!186749 List!38900)) (IntegerValue!18195 (value!186750 (_ BitVec 32)) (text!42902 List!38900)) (IntegerValue!18196 (value!186751 Int) (text!42903 List!38900)) (Times!6065) (Or!6065) (Equal!6065) (Minus!6065) (Broken!30329 (value!186752 List!38900)) (And!6065) (Div!6065) (LessEqual!6065) (Mod!6065) (Concat!16659) (Not!6065) (Plus!6065) (SpaceValue!6065 (value!186753 List!38900)) (IntegerValue!18197 (value!186754 Int) (text!42904 List!38900)) (StringLiteralValue!18196 (text!42905 List!38900)) (FloatLiteralValue!12131 (text!42906 List!38900)) (BytesLiteralValue!6065 (value!186755 List!38900)) (CommentValue!12131 (value!186756 List!38900)) (StringLiteralValue!18197 (value!186757 List!38900)) (ErrorTokenValue!6065 (msg!6126 List!38900)) )
))
(declare-datatypes ((String!43661 0))(
  ( (String!43662 (value!186758 String)) )
))
(declare-datatypes ((C!21374 0))(
  ( (C!21375 (val!12735 Int)) )
))
(declare-datatypes ((Regex!10594 0))(
  ( (ElementMatch!10594 (c!635835 C!21374)) (Concat!16660 (regOne!21700 Regex!10594) (regTwo!21700 Regex!10594)) (EmptyExpr!10594) (Star!10594 (reg!10923 Regex!10594)) (EmptyLang!10594) (Union!10594 (regOne!21701 Regex!10594) (regTwo!21701 Regex!10594)) )
))
(declare-datatypes ((List!38901 0))(
  ( (Nil!38777) (Cons!38777 (h!44197 C!21374) (t!300216 List!38901)) )
))
(declare-datatypes ((IArray!23741 0))(
  ( (IArray!23742 (innerList!11928 List!38901)) )
))
(declare-datatypes ((Conc!11868 0))(
  ( (Node!11868 (left!30260 Conc!11868) (right!30590 Conc!11868) (csize!23966 Int) (cheight!12079 Int)) (Leaf!18397 (xs!15070 IArray!23741) (csize!23967 Int)) (Empty!11868) )
))
(declare-datatypes ((BalanceConc!23350 0))(
  ( (BalanceConc!23351 (c!635836 Conc!11868)) )
))
(declare-datatypes ((TokenValueInjection!11558 0))(
  ( (TokenValueInjection!11559 (toValue!8131 Int) (toChars!7990 Int)) )
))
(declare-datatypes ((Rule!11470 0))(
  ( (Rule!11471 (regex!5835 Regex!10594) (tag!6633 String!43661) (isSeparator!5835 Bool) (transformation!5835 TokenValueInjection!11558)) )
))
(declare-datatypes ((List!38902 0))(
  ( (Nil!38778) (Cons!38778 (h!44198 Rule!11470) (t!300217 List!38902)) )
))
(declare-fun rules!3307 () List!38902)

(declare-datatypes ((LexerInterface!5424 0))(
  ( (LexerInterfaceExt!5421 (__x!24348 Int)) (Lexer!5422) )
))
(declare-fun thiss!23823 () LexerInterface!5424)

(declare-fun rule!403 () Rule!11470)

(declare-fun lt!1283716 () List!38901)

(declare-datatypes ((Token!11036 0))(
  ( (Token!11037 (value!186759 TokenValue!6065) (rule!8667 Rule!11470) (size!29644 Int) (originalCharacters!6549 List!38901)) )
))
(declare-datatypes ((tuple2!38646 0))(
  ( (tuple2!38647 (_1!22457 Token!11036) (_2!22457 List!38901)) )
))
(declare-fun lt!1283678 () tuple2!38646)

(declare-fun lt!1283702 () Unit!56608)

(declare-fun lt!1283680 () List!38901)

(declare-fun lt!1283669 () List!38901)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!377 (LexerInterface!5424 List!38902 Rule!11470 List!38901 List!38901 List!38901 Rule!11470) Unit!56608)

(assert (=> b!3676561 (= lt!1283702 (lemmaMaxPrefixOutputsMaxPrefix!377 thiss!23823 rules!3307 (rule!8667 (_1!22457 lt!1283678)) lt!1283680 lt!1283716 lt!1283669 rule!403))))

(assert (=> b!3676561 false))

(declare-fun b!3676562 () Bool)

(declare-fun Unit!56612 () Unit!56608)

(assert (=> b!3676562 (= e!2276563 Unit!56612)))

(declare-fun b!3676563 () Bool)

(declare-fun e!2276566 () Bool)

(declare-fun e!2276592 () Bool)

(assert (=> b!3676563 (= e!2276566 (not e!2276592))))

(declare-fun res!1493512 () Bool)

(assert (=> b!3676563 (=> res!1493512 e!2276592)))

(declare-fun matchR!5163 (Regex!10594 List!38901) Bool)

(assert (=> b!3676563 (= res!1493512 (not (matchR!5163 (regex!5835 rule!403) lt!1283669)))))

(declare-fun ruleValid!2099 (LexerInterface!5424 Rule!11470) Bool)

(assert (=> b!3676563 (ruleValid!2099 thiss!23823 rule!403)))

(declare-fun lt!1283679 () Unit!56608)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1253 (LexerInterface!5424 Rule!11470 List!38902) Unit!56608)

(assert (=> b!3676563 (= lt!1283679 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1253 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3676564 () Bool)

(declare-fun e!2276564 () Bool)

(declare-fun tp_is_empty!18271 () Bool)

(declare-fun tp!1118104 () Bool)

(assert (=> b!3676564 (= e!2276564 (and tp_is_empty!18271 tp!1118104))))

(declare-fun b!3676565 () Bool)

(declare-fun e!2276595 () Bool)

(assert (=> b!3676565 (= e!2276595 false)))

(declare-fun e!2276588 () Bool)

(declare-fun e!2276574 () Bool)

(declare-fun token!511 () Token!11036)

(declare-fun b!3676566 () Bool)

(declare-fun tp!1118109 () Bool)

(declare-fun inv!21 (TokenValue!6065) Bool)

(assert (=> b!3676566 (= e!2276574 (and (inv!21 (value!186759 token!511)) e!2276588 tp!1118109))))

(declare-fun bm!266248 () Bool)

(declare-fun call!266254 () Bool)

(declare-fun call!266253 () List!38901)

(declare-fun lt!1283710 () C!21374)

(declare-fun contains!7737 (List!38901 C!21374) Bool)

(assert (=> bm!266248 (= call!266254 (contains!7737 call!266253 lt!1283710))))

(declare-fun b!3676567 () Bool)

(assert (=> b!3676567 false))

(declare-fun lt!1283700 () Unit!56608)

(declare-fun call!266255 () Unit!56608)

(assert (=> b!3676567 (= lt!1283700 call!266255)))

(assert (=> b!3676567 (not call!266254)))

(declare-fun anOtherTypeRule!33 () Rule!11470)

(declare-fun lt!1283699 () Unit!56608)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!363 (LexerInterface!5424 List!38902 List!38902 Rule!11470 Rule!11470 C!21374) Unit!56608)

(assert (=> b!3676567 (= lt!1283699 (lemmaSepRuleNotContainsCharContainedInANonSepRule!363 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8667 (_1!22457 lt!1283678)) lt!1283710))))

(declare-fun e!2276586 () Unit!56608)

(declare-fun Unit!56613 () Unit!56608)

(assert (=> b!3676567 (= e!2276586 Unit!56613)))

(declare-fun b!3676568 () Bool)

(declare-fun e!2276582 () Bool)

(declare-fun e!2276567 () Bool)

(assert (=> b!3676568 (= e!2276582 e!2276567)))

(declare-fun res!1493509 () Bool)

(assert (=> b!3676568 (=> res!1493509 e!2276567)))

(declare-fun isPrefix!3198 (List!38901 List!38901) Bool)

(assert (=> b!3676568 (= res!1493509 (not (isPrefix!3198 lt!1283680 lt!1283716)))))

(declare-fun ++!9651 (List!38901 List!38901) List!38901)

(assert (=> b!3676568 (isPrefix!3198 lt!1283680 (++!9651 lt!1283680 (_2!22457 lt!1283678)))))

(declare-fun lt!1283687 () Unit!56608)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2117 (List!38901 List!38901) Unit!56608)

(assert (=> b!3676568 (= lt!1283687 (lemmaConcatTwoListThenFirstIsPrefix!2117 lt!1283680 (_2!22457 lt!1283678)))))

(declare-fun lt!1283705 () BalanceConc!23350)

(declare-fun list!14409 (BalanceConc!23350) List!38901)

(assert (=> b!3676568 (= lt!1283680 (list!14409 lt!1283705))))

(declare-fun charsOf!3849 (Token!11036) BalanceConc!23350)

(assert (=> b!3676568 (= lt!1283705 (charsOf!3849 (_1!22457 lt!1283678)))))

(declare-fun e!2276583 () Bool)

(assert (=> b!3676568 e!2276583))

(declare-fun res!1493507 () Bool)

(assert (=> b!3676568 (=> (not res!1493507) (not e!2276583))))

(declare-datatypes ((Option!8298 0))(
  ( (None!8297) (Some!8297 (v!38225 Rule!11470)) )
))
(declare-fun lt!1283686 () Option!8298)

(declare-fun isDefined!6530 (Option!8298) Bool)

(assert (=> b!3676568 (= res!1493507 (isDefined!6530 lt!1283686))))

(declare-fun getRuleFromTag!1439 (LexerInterface!5424 List!38902 String!43661) Option!8298)

(assert (=> b!3676568 (= lt!1283686 (getRuleFromTag!1439 thiss!23823 rules!3307 (tag!6633 (rule!8667 (_1!22457 lt!1283678)))))))

(declare-fun lt!1283692 () Unit!56608)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1439 (LexerInterface!5424 List!38902 List!38901 Token!11036) Unit!56608)

(assert (=> b!3676568 (= lt!1283692 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1439 thiss!23823 rules!3307 lt!1283716 (_1!22457 lt!1283678)))))

(declare-datatypes ((Option!8299 0))(
  ( (None!8298) (Some!8298 (v!38226 tuple2!38646)) )
))
(declare-fun lt!1283709 () Option!8299)

(declare-fun get!12826 (Option!8299) tuple2!38646)

(assert (=> b!3676568 (= lt!1283678 (get!12826 lt!1283709))))

(declare-fun suffix!1395 () List!38901)

(declare-fun lt!1283695 () Unit!56608)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1102 (LexerInterface!5424 List!38902 List!38901 List!38901) Unit!56608)

(assert (=> b!3676568 (= lt!1283695 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1102 thiss!23823 rules!3307 lt!1283669 suffix!1395))))

(declare-fun maxPrefix!2958 (LexerInterface!5424 List!38902 List!38901) Option!8299)

(assert (=> b!3676568 (= lt!1283709 (maxPrefix!2958 thiss!23823 rules!3307 lt!1283716))))

(assert (=> b!3676568 (isPrefix!3198 lt!1283669 lt!1283716)))

(declare-fun lt!1283719 () Unit!56608)

(assert (=> b!3676568 (= lt!1283719 (lemmaConcatTwoListThenFirstIsPrefix!2117 lt!1283669 suffix!1395))))

(assert (=> b!3676568 (= lt!1283716 (++!9651 lt!1283669 suffix!1395))))

(declare-fun b!3676569 () Bool)

(declare-fun e!2276589 () Unit!56608)

(declare-fun Unit!56614 () Unit!56608)

(assert (=> b!3676569 (= e!2276589 Unit!56614)))

(declare-fun b!3676570 () Bool)

(declare-fun e!2276596 () Unit!56608)

(declare-fun Unit!56615 () Unit!56608)

(assert (=> b!3676570 (= e!2276596 Unit!56615)))

(declare-fun bm!266249 () Bool)

(declare-fun call!266257 () Bool)

(declare-fun call!266256 () List!38901)

(declare-fun lt!1283698 () C!21374)

(assert (=> bm!266249 (= call!266257 (contains!7737 call!266256 lt!1283698))))

(declare-fun b!3676571 () Bool)

(assert (=> b!3676571 false))

(declare-fun lt!1283707 () Unit!56608)

(declare-fun call!266258 () Unit!56608)

(assert (=> b!3676571 (= lt!1283707 call!266258)))

(assert (=> b!3676571 (not call!266257)))

(declare-fun lt!1283685 () Unit!56608)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!481 (LexerInterface!5424 List!38902 List!38902 Rule!11470 Rule!11470 C!21374) Unit!56608)

(assert (=> b!3676571 (= lt!1283685 (lemmaNonSepRuleNotContainsCharContainedInASepRule!481 thiss!23823 rules!3307 rules!3307 (rule!8667 (_1!22457 lt!1283678)) rule!403 lt!1283698))))

(declare-fun e!2276559 () Unit!56608)

(declare-fun Unit!56616 () Unit!56608)

(assert (=> b!3676571 (= e!2276559 Unit!56616)))

(declare-fun e!2276569 () Bool)

(declare-fun tp!1118110 () Bool)

(declare-fun e!2276560 () Bool)

(declare-fun b!3676572 () Bool)

(declare-fun inv!52267 (String!43661) Bool)

(declare-fun inv!52270 (TokenValueInjection!11558) Bool)

(assert (=> b!3676572 (= e!2276560 (and tp!1118110 (inv!52267 (tag!6633 rule!403)) (inv!52270 (transformation!5835 rule!403)) e!2276569))))

(declare-fun b!3676573 () Bool)

(declare-fun e!2276585 () Bool)

(assert (=> b!3676573 (= e!2276567 e!2276585)))

(declare-fun res!1493515 () Bool)

(assert (=> b!3676573 (=> res!1493515 e!2276585)))

(declare-fun lt!1283661 () TokenValue!6065)

(declare-fun lt!1283711 () Int)

(assert (=> b!3676573 (= res!1493515 (not (= lt!1283709 (Some!8298 (tuple2!38647 (Token!11037 lt!1283661 (rule!8667 (_1!22457 lt!1283678)) lt!1283711 lt!1283680) (_2!22457 lt!1283678))))))))

(declare-fun size!29645 (BalanceConc!23350) Int)

(assert (=> b!3676573 (= lt!1283711 (size!29645 lt!1283705))))

(declare-fun apply!9337 (TokenValueInjection!11558 BalanceConc!23350) TokenValue!6065)

(assert (=> b!3676573 (= lt!1283661 (apply!9337 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))) lt!1283705))))

(declare-fun lt!1283696 () Unit!56608)

(declare-fun lemmaCharactersSize!880 (Token!11036) Unit!56608)

(assert (=> b!3676573 (= lt!1283696 (lemmaCharactersSize!880 (_1!22457 lt!1283678)))))

(declare-fun lt!1283675 () Unit!56608)

(declare-fun lemmaEqSameImage!1018 (TokenValueInjection!11558 BalanceConc!23350 BalanceConc!23350) Unit!56608)

(declare-fun seqFromList!4384 (List!38901) BalanceConc!23350)

(assert (=> b!3676573 (= lt!1283675 (lemmaEqSameImage!1018 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))) lt!1283705 (seqFromList!4384 (originalCharacters!6549 (_1!22457 lt!1283678)))))))

(declare-fun lt!1283715 () Unit!56608)

(declare-fun lemmaSemiInverse!1584 (TokenValueInjection!11558 BalanceConc!23350) Unit!56608)

(assert (=> b!3676573 (= lt!1283715 (lemmaSemiInverse!1584 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))) lt!1283705))))

(declare-fun b!3676574 () Bool)

(assert (=> b!3676574 false))

(declare-fun lt!1283693 () Unit!56608)

(assert (=> b!3676574 (= lt!1283693 call!266258)))

(assert (=> b!3676574 (not call!266257)))

(declare-fun lt!1283703 () Unit!56608)

(assert (=> b!3676574 (= lt!1283703 (lemmaSepRuleNotContainsCharContainedInANonSepRule!363 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8667 (_1!22457 lt!1283678)) lt!1283698))))

(declare-fun Unit!56617 () Unit!56608)

(assert (=> b!3676574 (= e!2276596 Unit!56617)))

(declare-fun b!3676575 () Bool)

(declare-fun e!2276580 () Bool)

(declare-fun e!2276570 () Bool)

(assert (=> b!3676575 (= e!2276580 e!2276570)))

(declare-fun res!1493497 () Bool)

(assert (=> b!3676575 (=> res!1493497 e!2276570)))

(declare-fun lt!1283689 () List!38901)

(assert (=> b!3676575 (= res!1493497 (not (= lt!1283716 (++!9651 lt!1283669 lt!1283689))))))

(declare-fun getSuffix!1751 (List!38901 List!38901) List!38901)

(assert (=> b!3676575 (= lt!1283689 (getSuffix!1751 lt!1283716 lt!1283669))))

(declare-fun lt!1283708 () Unit!56608)

(declare-fun e!2276575 () Unit!56608)

(assert (=> b!3676575 (= lt!1283708 e!2276575)))

(declare-fun c!635827 () Bool)

(assert (=> b!3676575 (= c!635827 (not (= (rule!8667 (_1!22457 lt!1283678)) (rule!8667 token!511))))))

(assert (=> b!3676575 (= lt!1283680 lt!1283669)))

(declare-fun lt!1283662 () Unit!56608)

(declare-fun lemmaIsPrefixSameLengthThenSameList!660 (List!38901 List!38901 List!38901) Unit!56608)

(assert (=> b!3676575 (= lt!1283662 (lemmaIsPrefixSameLengthThenSameList!660 lt!1283680 lt!1283669 lt!1283716))))

(declare-fun lt!1283706 () Unit!56608)

(assert (=> b!3676575 (= lt!1283706 e!2276563)))

(declare-fun c!635833 () Bool)

(declare-fun lt!1283677 () Int)

(assert (=> b!3676575 (= c!635833 (< lt!1283711 lt!1283677))))

(declare-fun lt!1283690 () Unit!56608)

(declare-fun e!2276584 () Unit!56608)

(assert (=> b!3676575 (= lt!1283690 e!2276584)))

(declare-fun c!635829 () Bool)

(assert (=> b!3676575 (= c!635829 (> lt!1283711 lt!1283677))))

(declare-fun lt!1283682 () BalanceConc!23350)

(assert (=> b!3676575 (= lt!1283677 (size!29645 lt!1283682))))

(declare-fun lt!1283670 () Unit!56608)

(declare-fun e!2276577 () Unit!56608)

(assert (=> b!3676575 (= lt!1283670 e!2276577)))

(declare-fun c!635826 () Bool)

(assert (=> b!3676575 (= c!635826 (isSeparator!5835 rule!403))))

(declare-fun lt!1283681 () Unit!56608)

(assert (=> b!3676575 (= lt!1283681 e!2276589)))

(declare-fun c!635834 () Bool)

(declare-fun lt!1283691 () List!38901)

(assert (=> b!3676575 (= c!635834 (not (contains!7737 lt!1283691 lt!1283698)))))

(declare-fun head!7883 (List!38901) C!21374)

(assert (=> b!3676575 (= lt!1283698 (head!7883 lt!1283680))))

(declare-fun bm!266250 () Bool)

(declare-fun usedCharacters!1047 (Regex!10594) List!38901)

(assert (=> bm!266250 (= call!266256 (usedCharacters!1047 (regex!5835 (rule!8667 (_1!22457 lt!1283678)))))))

(declare-fun b!3676576 () Bool)

(declare-fun e!2276561 () Bool)

(assert (=> b!3676576 (= e!2276561 e!2276566)))

(declare-fun res!1493510 () Bool)

(assert (=> b!3676576 (=> (not res!1493510) (not e!2276566))))

(declare-fun lt!1283673 () tuple2!38646)

(assert (=> b!3676576 (= res!1493510 (= (_1!22457 lt!1283673) token!511))))

(declare-fun lt!1283671 () Option!8299)

(assert (=> b!3676576 (= lt!1283673 (get!12826 lt!1283671))))

(declare-fun b!3676577 () Bool)

(declare-fun res!1493514 () Bool)

(assert (=> b!3676577 (=> res!1493514 e!2276567)))

(assert (=> b!3676577 (= res!1493514 (not (matchR!5163 (regex!5835 (rule!8667 (_1!22457 lt!1283678))) lt!1283680)))))

(declare-fun b!3676578 () Bool)

(assert (=> b!3676578 (= e!2276577 e!2276596)))

(declare-fun c!635830 () Bool)

(assert (=> b!3676578 (= c!635830 (isSeparator!5835 (rule!8667 (_1!22457 lt!1283678))))))

(declare-fun b!3676579 () Bool)

(declare-fun res!1493517 () Bool)

(assert (=> b!3676579 (=> res!1493517 e!2276592)))

(declare-fun isEmpty!23024 (List!38901) Bool)

(assert (=> b!3676579 (= res!1493517 (isEmpty!23024 suffix!1395))))

(declare-fun bm!266251 () Bool)

(assert (=> bm!266251 (= call!266253 (usedCharacters!1047 (regex!5835 (rule!8667 (_1!22457 lt!1283678)))))))

(declare-fun b!3676580 () Bool)

(assert (=> b!3676580 e!2276595))

(declare-fun res!1493498 () Bool)

(assert (=> b!3676580 (=> (not res!1493498) (not e!2276595))))

(assert (=> b!3676580 (= res!1493498 (not (matchR!5163 (regex!5835 (rule!8667 (_1!22457 lt!1283678))) lt!1283669)))))

(declare-fun lt!1283714 () Unit!56608)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!243 (LexerInterface!5424 List!38902 Rule!11470 List!38901 List!38901 Rule!11470) Unit!56608)

(assert (=> b!3676580 (= lt!1283714 (lemmaMaxPrefNoSmallerRuleMatches!243 thiss!23823 rules!3307 rule!403 lt!1283669 lt!1283669 (rule!8667 (_1!22457 lt!1283678))))))

(assert (=> b!3676580 (isEmpty!23024 (getSuffix!1751 lt!1283669 lt!1283669))))

(declare-fun lt!1283718 () Unit!56608)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!215 (List!38901) Unit!56608)

(assert (=> b!3676580 (= lt!1283718 (lemmaGetSuffixOnListWithItSelfIsEmpty!215 lt!1283669))))

(declare-fun e!2276591 () Unit!56608)

(declare-fun Unit!56618 () Unit!56608)

(assert (=> b!3676580 (= e!2276591 Unit!56618)))

(declare-fun b!3676581 () Bool)

(assert (=> b!3676581 (= e!2276592 e!2276582)))

(declare-fun res!1493499 () Bool)

(assert (=> b!3676581 (=> res!1493499 e!2276582)))

(assert (=> b!3676581 (= res!1493499 (contains!7737 lt!1283691 lt!1283710))))

(assert (=> b!3676581 (= lt!1283710 (head!7883 suffix!1395))))

(assert (=> b!3676581 (= lt!1283691 (usedCharacters!1047 (regex!5835 rule!403)))))

(declare-fun b!3676582 () Bool)

(declare-fun res!1493516 () Bool)

(assert (=> b!3676582 (=> (not res!1493516) (not e!2276566))))

(assert (=> b!3676582 (= res!1493516 (= (rule!8667 token!511) rule!403))))

(declare-fun b!3676583 () Bool)

(declare-fun res!1493513 () Bool)

(declare-fun e!2276594 () Bool)

(assert (=> b!3676583 (=> (not res!1493513) (not e!2276594))))

(declare-fun rulesInvariant!4821 (LexerInterface!5424 List!38902) Bool)

(assert (=> b!3676583 (= res!1493513 (rulesInvariant!4821 thiss!23823 rules!3307))))

(declare-fun b!3676584 () Bool)

(assert (=> b!3676584 (= e!2276585 e!2276580)))

(declare-fun res!1493505 () Bool)

(assert (=> b!3676584 (=> res!1493505 e!2276580)))

(declare-fun lt!1283717 () Option!8299)

(declare-fun lt!1283713 () List!38901)

(assert (=> b!3676584 (= res!1493505 (or (not (= lt!1283713 (_2!22457 lt!1283678))) (not (= lt!1283717 (Some!8298 (tuple2!38647 (_1!22457 lt!1283678) lt!1283713))))))))

(assert (=> b!3676584 (= (_2!22457 lt!1283678) lt!1283713)))

(declare-fun lt!1283694 () Unit!56608)

(declare-fun lemmaSamePrefixThenSameSuffix!1525 (List!38901 List!38901 List!38901 List!38901 List!38901) Unit!56608)

(assert (=> b!3676584 (= lt!1283694 (lemmaSamePrefixThenSameSuffix!1525 lt!1283680 (_2!22457 lt!1283678) lt!1283680 lt!1283713 lt!1283716))))

(assert (=> b!3676584 (= lt!1283713 (getSuffix!1751 lt!1283716 lt!1283680))))

(declare-fun lt!1283704 () TokenValue!6065)

(declare-fun lt!1283701 () Int)

(assert (=> b!3676584 (= lt!1283717 (Some!8298 (tuple2!38647 (Token!11037 lt!1283704 (rule!8667 (_1!22457 lt!1283678)) lt!1283701 lt!1283680) (_2!22457 lt!1283678))))))

(declare-fun maxPrefixOneRule!2096 (LexerInterface!5424 Rule!11470 List!38901) Option!8299)

(assert (=> b!3676584 (= lt!1283717 (maxPrefixOneRule!2096 thiss!23823 (rule!8667 (_1!22457 lt!1283678)) lt!1283716))))

(declare-fun size!29646 (List!38901) Int)

(assert (=> b!3676584 (= lt!1283701 (size!29646 lt!1283680))))

(assert (=> b!3676584 (= lt!1283704 (apply!9337 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))) (seqFromList!4384 lt!1283680)))))

(declare-fun lt!1283697 () Unit!56608)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1152 (LexerInterface!5424 List!38902 List!38901 List!38901 List!38901 Rule!11470) Unit!56608)

(assert (=> b!3676584 (= lt!1283697 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1152 thiss!23823 rules!3307 lt!1283680 lt!1283716 (_2!22457 lt!1283678) (rule!8667 (_1!22457 lt!1283678))))))

(declare-fun e!2276576 () Bool)

(assert (=> b!3676585 (= e!2276576 (and tp!1118112 tp!1118113))))

(declare-fun b!3676586 () Bool)

(declare-fun res!1493504 () Bool)

(assert (=> b!3676586 (=> (not res!1493504) (not e!2276594))))

(declare-fun isEmpty!23025 (List!38902) Bool)

(assert (=> b!3676586 (= res!1493504 (not (isEmpty!23025 rules!3307)))))

(declare-fun b!3676587 () Bool)

(declare-fun Unit!56619 () Unit!56608)

(assert (=> b!3676587 (= e!2276591 Unit!56619)))

(declare-fun b!3676588 () Bool)

(declare-fun res!1493519 () Bool)

(assert (=> b!3676588 (=> res!1493519 e!2276570)))

(assert (=> b!3676588 (= res!1493519 (isEmpty!23024 lt!1283669))))

(declare-fun b!3676589 () Bool)

(declare-fun res!1493501 () Bool)

(assert (=> b!3676589 (=> res!1493501 e!2276582)))

(declare-fun sepAndNonSepRulesDisjointChars!2003 (List!38902 List!38902) Bool)

(assert (=> b!3676589 (= res!1493501 (not (sepAndNonSepRulesDisjointChars!2003 rules!3307 rules!3307)))))

(declare-fun b!3676590 () Bool)

(declare-fun e!2276562 () Unit!56608)

(declare-fun Unit!56620 () Unit!56608)

(assert (=> b!3676590 (= e!2276562 Unit!56620)))

(declare-fun b!3676591 () Bool)

(declare-fun Unit!56621 () Unit!56608)

(assert (=> b!3676591 (= e!2276575 Unit!56621)))

(declare-fun lt!1283688 () Int)

(declare-fun getIndex!503 (List!38902 Rule!11470) Int)

(assert (=> b!3676591 (= lt!1283688 (getIndex!503 rules!3307 (rule!8667 (_1!22457 lt!1283678))))))

(declare-fun lt!1283663 () Int)

(assert (=> b!3676591 (= lt!1283663 (getIndex!503 rules!3307 rule!403))))

(declare-fun c!635832 () Bool)

(assert (=> b!3676591 (= c!635832 (< lt!1283688 lt!1283663))))

(declare-fun lt!1283667 () Unit!56608)

(assert (=> b!3676591 (= lt!1283667 e!2276591)))

(declare-fun c!635825 () Bool)

(assert (=> b!3676591 (= c!635825 (< lt!1283663 lt!1283688))))

(declare-fun lt!1283665 () Unit!56608)

(assert (=> b!3676591 (= lt!1283665 e!2276562)))

(declare-fun lt!1283676 () Unit!56608)

(declare-fun lemmaSameIndexThenSameElement!235 (List!38902 Rule!11470 Rule!11470) Unit!56608)

(assert (=> b!3676591 (= lt!1283676 (lemmaSameIndexThenSameElement!235 rules!3307 (rule!8667 (_1!22457 lt!1283678)) rule!403))))

(assert (=> b!3676591 false))

(declare-fun e!2276579 () Bool)

(assert (=> b!3676592 (= e!2276579 (and tp!1118117 tp!1118111))))

(declare-fun bm!266252 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!783 (Regex!10594 List!38901 C!21374) Unit!56608)

(assert (=> bm!266252 (= call!266255 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!783 (regex!5835 (rule!8667 (_1!22457 lt!1283678))) lt!1283680 lt!1283710))))

(declare-fun b!3676593 () Bool)

(declare-fun res!1493511 () Bool)

(assert (=> b!3676593 (=> res!1493511 e!2276582)))

(assert (=> b!3676593 (= res!1493511 (not (contains!7737 (usedCharacters!1047 (regex!5835 anOtherTypeRule!33)) lt!1283710)))))

(declare-fun b!3676594 () Bool)

(declare-fun res!1493502 () Bool)

(assert (=> b!3676594 (=> (not res!1493502) (not e!2276594))))

(declare-fun contains!7738 (List!38902 Rule!11470) Bool)

(assert (=> b!3676594 (= res!1493502 (contains!7738 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3676595 () Bool)

(declare-fun Unit!56622 () Unit!56608)

(assert (=> b!3676595 (= e!2276575 Unit!56622)))

(declare-fun b!3676596 () Bool)

(declare-fun res!1493518 () Bool)

(assert (=> b!3676596 (=> (not res!1493518) (not e!2276594))))

(assert (=> b!3676596 (= res!1493518 (not (= (isSeparator!5835 anOtherTypeRule!33) (isSeparator!5835 rule!403))))))

(declare-fun b!3676597 () Bool)

(assert (=> b!3676597 (= e!2276584 e!2276586)))

(declare-fun lt!1283683 () Unit!56608)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!143 (List!38901 List!38901 List!38901 List!38901) Unit!56608)

(assert (=> b!3676597 (= lt!1283683 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!143 lt!1283669 suffix!1395 lt!1283680 lt!1283716))))

(assert (=> b!3676597 (contains!7737 lt!1283680 lt!1283710)))

(declare-fun c!635831 () Bool)

(assert (=> b!3676597 (= c!635831 (isSeparator!5835 rule!403))))

(declare-fun b!3676598 () Bool)

(declare-fun e!2276571 () Bool)

(assert (=> b!3676598 (= e!2276583 e!2276571)))

(declare-fun res!1493496 () Bool)

(assert (=> b!3676598 (=> (not res!1493496) (not e!2276571))))

(declare-fun lt!1283674 () Rule!11470)

(assert (=> b!3676598 (= res!1493496 (matchR!5163 (regex!5835 lt!1283674) (list!14409 (charsOf!3849 (_1!22457 lt!1283678)))))))

(declare-fun get!12827 (Option!8298) Rule!11470)

(assert (=> b!3676598 (= lt!1283674 (get!12827 lt!1283686))))

(declare-fun b!3676599 () Bool)

(declare-fun res!1493500 () Bool)

(assert (=> b!3676599 (=> (not res!1493500) (not e!2276594))))

(assert (=> b!3676599 (= res!1493500 (contains!7738 rules!3307 rule!403))))

(declare-fun b!3676600 () Bool)

(declare-fun res!1493503 () Bool)

(assert (=> b!3676600 (=> (not res!1493503) (not e!2276566))))

(assert (=> b!3676600 (= res!1493503 (isEmpty!23024 (_2!22457 lt!1283673)))))

(assert (=> b!3676601 (= e!2276569 (and tp!1118116 tp!1118103))))

(declare-fun b!3676602 () Bool)

(declare-fun e!2276590 () Bool)

(declare-fun e!2276573 () Bool)

(declare-fun tp!1118106 () Bool)

(assert (=> b!3676602 (= e!2276590 (and e!2276573 tp!1118106))))

(declare-fun tp!1118108 () Bool)

(declare-fun b!3676603 () Bool)

(assert (=> b!3676603 (= e!2276573 (and tp!1118108 (inv!52267 (tag!6633 (h!44198 rules!3307))) (inv!52270 (transformation!5835 (h!44198 rules!3307))) e!2276576))))

(declare-fun bm!266253 () Bool)

(assert (=> bm!266253 (= call!266258 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!783 (regex!5835 (rule!8667 (_1!22457 lt!1283678))) lt!1283680 lt!1283698))))

(declare-fun tp!1118114 () Bool)

(declare-fun b!3676604 () Bool)

(declare-fun e!2276581 () Bool)

(declare-fun e!2276593 () Bool)

(assert (=> b!3676604 (= e!2276593 (and tp!1118114 (inv!52267 (tag!6633 anOtherTypeRule!33)) (inv!52270 (transformation!5835 anOtherTypeRule!33)) e!2276581))))

(assert (=> b!3676605 (= e!2276581 (and tp!1118105 tp!1118107))))

(declare-fun b!3676606 () Bool)

(declare-fun Unit!56623 () Unit!56608)

(assert (=> b!3676606 (= e!2276559 Unit!56623)))

(declare-fun b!3676607 () Bool)

(declare-fun Unit!56624 () Unit!56608)

(assert (=> b!3676607 (= e!2276589 Unit!56624)))

(declare-fun lt!1283668 () Unit!56608)

(assert (=> b!3676607 (= lt!1283668 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!783 (regex!5835 rule!403) lt!1283669 lt!1283698))))

(assert (=> b!3676607 false))

(declare-fun b!3676608 () Bool)

(assert (=> b!3676608 false))

(declare-fun lt!1283672 () Unit!56608)

(assert (=> b!3676608 (= lt!1283672 (lemmaMaxPrefNoSmallerRuleMatches!243 thiss!23823 rules!3307 (rule!8667 (_1!22457 lt!1283678)) lt!1283669 lt!1283716 rule!403))))

(declare-fun Unit!56625 () Unit!56608)

(assert (=> b!3676608 (= e!2276562 Unit!56625)))

(declare-fun res!1493508 () Bool)

(assert (=> start!344820 (=> (not res!1493508) (not e!2276594))))

(assert (=> start!344820 (= res!1493508 (is-Lexer!5422 thiss!23823))))

(assert (=> start!344820 e!2276594))

(assert (=> start!344820 e!2276590))

(assert (=> start!344820 e!2276564))

(assert (=> start!344820 true))

(declare-fun inv!52271 (Token!11036) Bool)

(assert (=> start!344820 (and (inv!52271 token!511) e!2276574)))

(assert (=> start!344820 e!2276560))

(assert (=> start!344820 e!2276593))

(declare-fun b!3676609 () Bool)

(assert (=> b!3676609 (= e!2276594 e!2276561)))

(declare-fun res!1493506 () Bool)

(assert (=> b!3676609 (=> (not res!1493506) (not e!2276561))))

(declare-fun isDefined!6531 (Option!8299) Bool)

(assert (=> b!3676609 (= res!1493506 (isDefined!6531 lt!1283671))))

(assert (=> b!3676609 (= lt!1283671 (maxPrefix!2958 thiss!23823 rules!3307 lt!1283669))))

(assert (=> b!3676609 (= lt!1283669 (list!14409 lt!1283682))))

(assert (=> b!3676609 (= lt!1283682 (charsOf!3849 token!511))))

(declare-fun b!3676610 () Bool)

(declare-fun Unit!56626 () Unit!56608)

(assert (=> b!3676610 (= e!2276584 Unit!56626)))

(declare-fun b!3676611 () Bool)

(assert (=> b!3676611 (= e!2276577 e!2276559)))

(declare-fun c!635828 () Bool)

(assert (=> b!3676611 (= c!635828 (not (isSeparator!5835 (rule!8667 (_1!22457 lt!1283678)))))))

(declare-fun b!3676612 () Bool)

(declare-fun tp!1118115 () Bool)

(assert (=> b!3676612 (= e!2276588 (and tp!1118115 (inv!52267 (tag!6633 (rule!8667 token!511))) (inv!52270 (transformation!5835 (rule!8667 token!511))) e!2276579))))

(declare-fun b!3676613 () Bool)

(assert (=> b!3676613 false))

(declare-fun lt!1283666 () Unit!56608)

(assert (=> b!3676613 (= lt!1283666 call!266255)))

(assert (=> b!3676613 (not call!266254)))

(declare-fun lt!1283712 () Unit!56608)

(assert (=> b!3676613 (= lt!1283712 (lemmaNonSepRuleNotContainsCharContainedInASepRule!481 thiss!23823 rules!3307 rules!3307 (rule!8667 (_1!22457 lt!1283678)) anOtherTypeRule!33 lt!1283710))))

(declare-fun Unit!56627 () Unit!56608)

(assert (=> b!3676613 (= e!2276586 Unit!56627)))

(declare-fun b!3676614 () Bool)

(declare-fun lt!1283664 () BalanceConc!23350)

(assert (=> b!3676614 (= e!2276570 (= lt!1283709 (Some!8298 (tuple2!38647 (Token!11037 (apply!9337 (transformation!5835 rule!403) lt!1283664) rule!403 (size!29646 lt!1283669) lt!1283669) lt!1283689))))))

(declare-fun lt!1283684 () Unit!56608)

(assert (=> b!3676614 (= lt!1283684 (lemmaSemiInverse!1584 (transformation!5835 rule!403) lt!1283664))))

(assert (=> b!3676614 (= lt!1283664 (seqFromList!4384 lt!1283669))))

(declare-fun b!3676615 () Bool)

(assert (=> b!3676615 (= e!2276571 (= (rule!8667 (_1!22457 lt!1283678)) lt!1283674))))

(assert (= (and start!344820 res!1493508) b!3676586))

(assert (= (and b!3676586 res!1493504) b!3676583))

(assert (= (and b!3676583 res!1493513) b!3676599))

(assert (= (and b!3676599 res!1493500) b!3676594))

(assert (= (and b!3676594 res!1493502) b!3676596))

(assert (= (and b!3676596 res!1493518) b!3676609))

(assert (= (and b!3676609 res!1493506) b!3676576))

(assert (= (and b!3676576 res!1493510) b!3676600))

(assert (= (and b!3676600 res!1493503) b!3676582))

(assert (= (and b!3676582 res!1493516) b!3676563))

(assert (= (and b!3676563 (not res!1493512)) b!3676579))

(assert (= (and b!3676579 (not res!1493517)) b!3676581))

(assert (= (and b!3676581 (not res!1493499)) b!3676593))

(assert (= (and b!3676593 (not res!1493511)) b!3676589))

(assert (= (and b!3676589 (not res!1493501)) b!3676568))

(assert (= (and b!3676568 res!1493507) b!3676598))

(assert (= (and b!3676598 res!1493496) b!3676615))

(assert (= (and b!3676568 (not res!1493509)) b!3676577))

(assert (= (and b!3676577 (not res!1493514)) b!3676573))

(assert (= (and b!3676573 (not res!1493515)) b!3676584))

(assert (= (and b!3676584 (not res!1493505)) b!3676575))

(assert (= (and b!3676575 c!635834) b!3676607))

(assert (= (and b!3676575 (not c!635834)) b!3676569))

(assert (= (and b!3676575 c!635826) b!3676611))

(assert (= (and b!3676575 (not c!635826)) b!3676578))

(assert (= (and b!3676611 c!635828) b!3676571))

(assert (= (and b!3676611 (not c!635828)) b!3676606))

(assert (= (and b!3676578 c!635830) b!3676574))

(assert (= (and b!3676578 (not c!635830)) b!3676570))

(assert (= (or b!3676571 b!3676574) bm!266253))

(assert (= (or b!3676571 b!3676574) bm!266250))

(assert (= (or b!3676571 b!3676574) bm!266249))

(assert (= (and b!3676575 c!635829) b!3676597))

(assert (= (and b!3676575 (not c!635829)) b!3676610))

(assert (= (and b!3676597 c!635831) b!3676567))

(assert (= (and b!3676597 (not c!635831)) b!3676613))

(assert (= (or b!3676567 b!3676613) bm!266252))

(assert (= (or b!3676567 b!3676613) bm!266251))

(assert (= (or b!3676567 b!3676613) bm!266248))

(assert (= (and b!3676575 c!635833) b!3676561))

(assert (= (and b!3676575 (not c!635833)) b!3676562))

(assert (= (and b!3676575 c!635827) b!3676591))

(assert (= (and b!3676575 (not c!635827)) b!3676595))

(assert (= (and b!3676591 c!635832) b!3676580))

(assert (= (and b!3676591 (not c!635832)) b!3676587))

(assert (= (and b!3676580 res!1493498) b!3676565))

(assert (= (and b!3676591 c!635825) b!3676608))

(assert (= (and b!3676591 (not c!635825)) b!3676590))

(assert (= (and b!3676575 (not res!1493497)) b!3676588))

(assert (= (and b!3676588 (not res!1493519)) b!3676614))

(assert (= b!3676603 b!3676585))

(assert (= b!3676602 b!3676603))

(assert (= (and start!344820 (is-Cons!38778 rules!3307)) b!3676602))

(assert (= (and start!344820 (is-Cons!38777 suffix!1395)) b!3676564))

(assert (= b!3676612 b!3676592))

(assert (= b!3676566 b!3676612))

(assert (= start!344820 b!3676566))

(assert (= b!3676572 b!3676601))

(assert (= start!344820 b!3676572))

(assert (= b!3676604 b!3676605))

(assert (= start!344820 b!3676604))

(declare-fun m!4186113 () Bool)

(assert (=> b!3676594 m!4186113))

(declare-fun m!4186115 () Bool)

(assert (=> bm!266253 m!4186115))

(declare-fun m!4186117 () Bool)

(assert (=> b!3676586 m!4186117))

(declare-fun m!4186119 () Bool)

(assert (=> bm!266250 m!4186119))

(declare-fun m!4186121 () Bool)

(assert (=> b!3676597 m!4186121))

(declare-fun m!4186123 () Bool)

(assert (=> b!3676597 m!4186123))

(declare-fun m!4186125 () Bool)

(assert (=> b!3676607 m!4186125))

(declare-fun m!4186127 () Bool)

(assert (=> b!3676583 m!4186127))

(declare-fun m!4186129 () Bool)

(assert (=> b!3676598 m!4186129))

(assert (=> b!3676598 m!4186129))

(declare-fun m!4186131 () Bool)

(assert (=> b!3676598 m!4186131))

(assert (=> b!3676598 m!4186131))

(declare-fun m!4186133 () Bool)

(assert (=> b!3676598 m!4186133))

(declare-fun m!4186135 () Bool)

(assert (=> b!3676598 m!4186135))

(declare-fun m!4186137 () Bool)

(assert (=> b!3676568 m!4186137))

(declare-fun m!4186139 () Bool)

(assert (=> b!3676568 m!4186139))

(declare-fun m!4186141 () Bool)

(assert (=> b!3676568 m!4186141))

(declare-fun m!4186143 () Bool)

(assert (=> b!3676568 m!4186143))

(declare-fun m!4186145 () Bool)

(assert (=> b!3676568 m!4186145))

(declare-fun m!4186147 () Bool)

(assert (=> b!3676568 m!4186147))

(assert (=> b!3676568 m!4186129))

(declare-fun m!4186149 () Bool)

(assert (=> b!3676568 m!4186149))

(declare-fun m!4186151 () Bool)

(assert (=> b!3676568 m!4186151))

(declare-fun m!4186153 () Bool)

(assert (=> b!3676568 m!4186153))

(declare-fun m!4186155 () Bool)

(assert (=> b!3676568 m!4186155))

(declare-fun m!4186157 () Bool)

(assert (=> b!3676568 m!4186157))

(declare-fun m!4186159 () Bool)

(assert (=> b!3676568 m!4186159))

(declare-fun m!4186161 () Bool)

(assert (=> b!3676568 m!4186161))

(declare-fun m!4186163 () Bool)

(assert (=> b!3676568 m!4186163))

(assert (=> b!3676568 m!4186151))

(declare-fun m!4186165 () Bool)

(assert (=> b!3676599 m!4186165))

(declare-fun m!4186167 () Bool)

(assert (=> b!3676575 m!4186167))

(declare-fun m!4186169 () Bool)

(assert (=> b!3676575 m!4186169))

(declare-fun m!4186171 () Bool)

(assert (=> b!3676575 m!4186171))

(declare-fun m!4186173 () Bool)

(assert (=> b!3676575 m!4186173))

(declare-fun m!4186175 () Bool)

(assert (=> b!3676575 m!4186175))

(declare-fun m!4186177 () Bool)

(assert (=> b!3676575 m!4186177))

(declare-fun m!4186179 () Bool)

(assert (=> b!3676584 m!4186179))

(declare-fun m!4186181 () Bool)

(assert (=> b!3676584 m!4186181))

(declare-fun m!4186183 () Bool)

(assert (=> b!3676584 m!4186183))

(assert (=> b!3676584 m!4186181))

(declare-fun m!4186185 () Bool)

(assert (=> b!3676584 m!4186185))

(declare-fun m!4186187 () Bool)

(assert (=> b!3676584 m!4186187))

(declare-fun m!4186189 () Bool)

(assert (=> b!3676584 m!4186189))

(declare-fun m!4186191 () Bool)

(assert (=> b!3676584 m!4186191))

(declare-fun m!4186193 () Bool)

(assert (=> b!3676563 m!4186193))

(declare-fun m!4186195 () Bool)

(assert (=> b!3676563 m!4186195))

(declare-fun m!4186197 () Bool)

(assert (=> b!3676563 m!4186197))

(declare-fun m!4186199 () Bool)

(assert (=> b!3676603 m!4186199))

(declare-fun m!4186201 () Bool)

(assert (=> b!3676603 m!4186201))

(declare-fun m!4186203 () Bool)

(assert (=> b!3676579 m!4186203))

(declare-fun m!4186205 () Bool)

(assert (=> b!3676609 m!4186205))

(declare-fun m!4186207 () Bool)

(assert (=> b!3676609 m!4186207))

(declare-fun m!4186209 () Bool)

(assert (=> b!3676609 m!4186209))

(declare-fun m!4186211 () Bool)

(assert (=> b!3676609 m!4186211))

(declare-fun m!4186213 () Bool)

(assert (=> b!3676580 m!4186213))

(declare-fun m!4186215 () Bool)

(assert (=> b!3676580 m!4186215))

(declare-fun m!4186217 () Bool)

(assert (=> b!3676580 m!4186217))

(declare-fun m!4186219 () Bool)

(assert (=> b!3676580 m!4186219))

(assert (=> b!3676580 m!4186217))

(declare-fun m!4186221 () Bool)

(assert (=> b!3676580 m!4186221))

(declare-fun m!4186223 () Bool)

(assert (=> b!3676576 m!4186223))

(declare-fun m!4186225 () Bool)

(assert (=> b!3676574 m!4186225))

(declare-fun m!4186227 () Bool)

(assert (=> b!3676591 m!4186227))

(declare-fun m!4186229 () Bool)

(assert (=> b!3676591 m!4186229))

(declare-fun m!4186231 () Bool)

(assert (=> b!3676591 m!4186231))

(declare-fun m!4186233 () Bool)

(assert (=> b!3676613 m!4186233))

(declare-fun m!4186235 () Bool)

(assert (=> b!3676571 m!4186235))

(declare-fun m!4186237 () Bool)

(assert (=> b!3676612 m!4186237))

(declare-fun m!4186239 () Bool)

(assert (=> b!3676612 m!4186239))

(declare-fun m!4186241 () Bool)

(assert (=> b!3676614 m!4186241))

(declare-fun m!4186243 () Bool)

(assert (=> b!3676614 m!4186243))

(declare-fun m!4186245 () Bool)

(assert (=> b!3676614 m!4186245))

(declare-fun m!4186247 () Bool)

(assert (=> b!3676614 m!4186247))

(declare-fun m!4186249 () Bool)

(assert (=> bm!266249 m!4186249))

(declare-fun m!4186251 () Bool)

(assert (=> b!3676604 m!4186251))

(declare-fun m!4186253 () Bool)

(assert (=> b!3676604 m!4186253))

(declare-fun m!4186255 () Bool)

(assert (=> b!3676573 m!4186255))

(declare-fun m!4186257 () Bool)

(assert (=> b!3676573 m!4186257))

(declare-fun m!4186259 () Bool)

(assert (=> b!3676573 m!4186259))

(declare-fun m!4186261 () Bool)

(assert (=> b!3676573 m!4186261))

(declare-fun m!4186263 () Bool)

(assert (=> b!3676573 m!4186263))

(declare-fun m!4186265 () Bool)

(assert (=> b!3676573 m!4186265))

(assert (=> b!3676573 m!4186255))

(declare-fun m!4186267 () Bool)

(assert (=> b!3676567 m!4186267))

(declare-fun m!4186269 () Bool)

(assert (=> b!3676572 m!4186269))

(declare-fun m!4186271 () Bool)

(assert (=> b!3676572 m!4186271))

(declare-fun m!4186273 () Bool)

(assert (=> b!3676589 m!4186273))

(declare-fun m!4186275 () Bool)

(assert (=> b!3676588 m!4186275))

(declare-fun m!4186277 () Bool)

(assert (=> b!3676600 m!4186277))

(declare-fun m!4186279 () Bool)

(assert (=> b!3676577 m!4186279))

(declare-fun m!4186281 () Bool)

(assert (=> b!3676608 m!4186281))

(declare-fun m!4186283 () Bool)

(assert (=> b!3676581 m!4186283))

(declare-fun m!4186285 () Bool)

(assert (=> b!3676581 m!4186285))

(declare-fun m!4186287 () Bool)

(assert (=> b!3676581 m!4186287))

(declare-fun m!4186289 () Bool)

(assert (=> start!344820 m!4186289))

(declare-fun m!4186291 () Bool)

(assert (=> bm!266252 m!4186291))

(declare-fun m!4186293 () Bool)

(assert (=> b!3676593 m!4186293))

(assert (=> b!3676593 m!4186293))

(declare-fun m!4186295 () Bool)

(assert (=> b!3676593 m!4186295))

(declare-fun m!4186297 () Bool)

(assert (=> b!3676561 m!4186297))

(assert (=> bm!266251 m!4186119))

(declare-fun m!4186299 () Bool)

(assert (=> b!3676566 m!4186299))

(declare-fun m!4186301 () Bool)

(assert (=> bm!266248 m!4186301))

(push 1)

(assert (not b!3676603))

(assert (not b!3676588))

(assert (not b!3676575))

(assert (not b!3676604))

(assert (not bm!266253))

(assert b_and!274273)

(assert (not b!3676593))

(assert (not b!3676599))

(assert (not start!344820))

(assert (not b!3676609))

(assert b_and!274275)

(assert (not b!3676613))

(assert (not b!3676566))

(assert (not b_next!98005))

(assert (not b!3676563))

(assert (not b_next!98001))

(assert (not b_next!97993))

(assert (not b!3676572))

(assert (not b!3676581))

(assert (not bm!266249))

(assert (not b!3676583))

(assert (not b!3676577))

(assert b_and!274269)

(assert (not b!3676576))

(assert tp_is_empty!18271)

(assert (not b!3676589))

(assert (not b_next!97995))

(assert (not b!3676579))

(assert (not b_next!97999))

(assert (not b!3676612))

(assert b_and!274267)

(assert (not b!3676597))

(assert (not b!3676602))

(assert (not b!3676568))

(assert (not b!3676608))

(assert (not b!3676598))

(assert (not b!3676586))

(assert (not b!3676584))

(assert b_and!274279)

(assert (not b!3676594))

(assert (not b!3676573))

(assert (not bm!266251))

(assert (not b!3676591))

(assert (not bm!266250))

(assert (not b!3676614))

(assert (not b_next!97997))

(assert (not b!3676607))

(assert (not b_next!98003))

(assert b_and!274281)

(assert (not bm!266252))

(assert (not b!3676567))

(assert b_and!274271)

(assert (not bm!266248))

(assert b_and!274277)

(assert (not b!3676574))

(assert (not b!3676571))

(assert (not b!3676600))

(assert (not b!3676564))

(assert (not b_next!98007))

(assert (not b!3676580))

(assert (not b!3676561))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!98005))

(assert (not b_next!98001))

(assert (not b_next!97993))

(assert b_and!274269)

(assert (not b_next!97995))

(assert (not b_next!97999))

(assert b_and!274267)

(assert b_and!274279)

(assert b_and!274273)

(assert (not b_next!97997))

(assert b_and!274275)

(assert (not b_next!98007))

(assert (not b_next!98003))

(assert b_and!274281)

(assert b_and!274271)

(assert b_and!274277)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1079431 () Bool)

(assert (=> d!1079431 (not (matchR!5163 (regex!5835 rule!403) lt!1283669))))

(declare-fun lt!1283899 () Unit!56608)

(declare-fun choose!21930 (LexerInterface!5424 List!38902 Rule!11470 List!38901 List!38901 List!38901 Rule!11470) Unit!56608)

(assert (=> d!1079431 (= lt!1283899 (choose!21930 thiss!23823 rules!3307 (rule!8667 (_1!22457 lt!1283678)) lt!1283680 lt!1283716 lt!1283669 rule!403))))

(assert (=> d!1079431 (isPrefix!3198 lt!1283680 lt!1283716)))

(assert (=> d!1079431 (= (lemmaMaxPrefixOutputsMaxPrefix!377 thiss!23823 rules!3307 (rule!8667 (_1!22457 lt!1283678)) lt!1283680 lt!1283716 lt!1283669 rule!403) lt!1283899)))

(declare-fun bs!573398 () Bool)

(assert (= bs!573398 d!1079431))

(assert (=> bs!573398 m!4186193))

(declare-fun m!4186493 () Bool)

(assert (=> bs!573398 m!4186493))

(assert (=> bs!573398 m!4186159))

(assert (=> b!3676561 d!1079431))

(declare-fun d!1079433 () Bool)

(assert (=> d!1079433 (= (isEmpty!23024 suffix!1395) (is-Nil!38777 suffix!1395))))

(assert (=> b!3676579 d!1079433))

(declare-fun b!3676813 () Bool)

(declare-fun res!1493615 () Bool)

(declare-fun e!2276730 () Bool)

(assert (=> b!3676813 (=> (not res!1493615) (not e!2276730))))

(declare-fun tail!5688 (List!38901) List!38901)

(assert (=> b!3676813 (= res!1493615 (isEmpty!23024 (tail!5688 (list!14409 (charsOf!3849 (_1!22457 lt!1283678))))))))

(declare-fun b!3676814 () Bool)

(declare-fun e!2276734 () Bool)

(declare-fun e!2276728 () Bool)

(assert (=> b!3676814 (= e!2276734 e!2276728)))

(declare-fun res!1493622 () Bool)

(assert (=> b!3676814 (=> (not res!1493622) (not e!2276728))))

(declare-fun lt!1283904 () Bool)

(assert (=> b!3676814 (= res!1493622 (not lt!1283904))))

(declare-fun b!3676815 () Bool)

(declare-fun res!1493620 () Bool)

(assert (=> b!3676815 (=> res!1493620 e!2276734)))

(assert (=> b!3676815 (= res!1493620 (not (is-ElementMatch!10594 (regex!5835 lt!1283674))))))

(declare-fun e!2276733 () Bool)

(assert (=> b!3676815 (= e!2276733 e!2276734)))

(declare-fun b!3676816 () Bool)

(declare-fun e!2276732 () Bool)

(declare-fun derivativeStep!3239 (Regex!10594 C!21374) Regex!10594)

(assert (=> b!3676816 (= e!2276732 (matchR!5163 (derivativeStep!3239 (regex!5835 lt!1283674) (head!7883 (list!14409 (charsOf!3849 (_1!22457 lt!1283678))))) (tail!5688 (list!14409 (charsOf!3849 (_1!22457 lt!1283678))))))))

(declare-fun d!1079435 () Bool)

(declare-fun e!2276729 () Bool)

(assert (=> d!1079435 e!2276729))

(declare-fun c!635879 () Bool)

(assert (=> d!1079435 (= c!635879 (is-EmptyExpr!10594 (regex!5835 lt!1283674)))))

(assert (=> d!1079435 (= lt!1283904 e!2276732)))

(declare-fun c!635877 () Bool)

(assert (=> d!1079435 (= c!635877 (isEmpty!23024 (list!14409 (charsOf!3849 (_1!22457 lt!1283678)))))))

(declare-fun validRegex!4852 (Regex!10594) Bool)

(assert (=> d!1079435 (validRegex!4852 (regex!5835 lt!1283674))))

(assert (=> d!1079435 (= (matchR!5163 (regex!5835 lt!1283674) (list!14409 (charsOf!3849 (_1!22457 lt!1283678)))) lt!1283904)))

(declare-fun bm!266274 () Bool)

(declare-fun call!266279 () Bool)

(assert (=> bm!266274 (= call!266279 (isEmpty!23024 (list!14409 (charsOf!3849 (_1!22457 lt!1283678)))))))

(declare-fun b!3676817 () Bool)

(declare-fun res!1493618 () Bool)

(declare-fun e!2276731 () Bool)

(assert (=> b!3676817 (=> res!1493618 e!2276731)))

(assert (=> b!3676817 (= res!1493618 (not (isEmpty!23024 (tail!5688 (list!14409 (charsOf!3849 (_1!22457 lt!1283678)))))))))

(declare-fun b!3676818 () Bool)

(assert (=> b!3676818 (= e!2276730 (= (head!7883 (list!14409 (charsOf!3849 (_1!22457 lt!1283678)))) (c!635835 (regex!5835 lt!1283674))))))

(declare-fun b!3676819 () Bool)

(declare-fun nullable!3690 (Regex!10594) Bool)

(assert (=> b!3676819 (= e!2276732 (nullable!3690 (regex!5835 lt!1283674)))))

(declare-fun b!3676820 () Bool)

(declare-fun res!1493616 () Bool)

(assert (=> b!3676820 (=> (not res!1493616) (not e!2276730))))

(assert (=> b!3676820 (= res!1493616 (not call!266279))))

(declare-fun b!3676821 () Bool)

(declare-fun res!1493619 () Bool)

(assert (=> b!3676821 (=> res!1493619 e!2276734)))

(assert (=> b!3676821 (= res!1493619 e!2276730)))

(declare-fun res!1493621 () Bool)

(assert (=> b!3676821 (=> (not res!1493621) (not e!2276730))))

(assert (=> b!3676821 (= res!1493621 lt!1283904)))

(declare-fun b!3676822 () Bool)

(assert (=> b!3676822 (= e!2276731 (not (= (head!7883 (list!14409 (charsOf!3849 (_1!22457 lt!1283678)))) (c!635835 (regex!5835 lt!1283674)))))))

(declare-fun b!3676823 () Bool)

(assert (=> b!3676823 (= e!2276733 (not lt!1283904))))

(declare-fun b!3676824 () Bool)

(assert (=> b!3676824 (= e!2276729 e!2276733)))

(declare-fun c!635880 () Bool)

(assert (=> b!3676824 (= c!635880 (is-EmptyLang!10594 (regex!5835 lt!1283674)))))

(declare-fun b!3676825 () Bool)

(assert (=> b!3676825 (= e!2276729 (= lt!1283904 call!266279))))

(declare-fun b!3676826 () Bool)

(assert (=> b!3676826 (= e!2276728 e!2276731)))

(declare-fun res!1493617 () Bool)

(assert (=> b!3676826 (=> res!1493617 e!2276731)))

(assert (=> b!3676826 (= res!1493617 call!266279)))

(assert (= (and d!1079435 c!635877) b!3676819))

(assert (= (and d!1079435 (not c!635877)) b!3676816))

(assert (= (and d!1079435 c!635879) b!3676825))

(assert (= (and d!1079435 (not c!635879)) b!3676824))

(assert (= (and b!3676824 c!635880) b!3676823))

(assert (= (and b!3676824 (not c!635880)) b!3676815))

(assert (= (and b!3676815 (not res!1493620)) b!3676821))

(assert (= (and b!3676821 res!1493621) b!3676820))

(assert (= (and b!3676820 res!1493616) b!3676813))

(assert (= (and b!3676813 res!1493615) b!3676818))

(assert (= (and b!3676821 (not res!1493619)) b!3676814))

(assert (= (and b!3676814 res!1493622) b!3676826))

(assert (= (and b!3676826 (not res!1493617)) b!3676817))

(assert (= (and b!3676817 (not res!1493618)) b!3676822))

(assert (= (or b!3676825 b!3676820 b!3676826) bm!266274))

(assert (=> b!3676822 m!4186131))

(declare-fun m!4186495 () Bool)

(assert (=> b!3676822 m!4186495))

(assert (=> b!3676813 m!4186131))

(declare-fun m!4186497 () Bool)

(assert (=> b!3676813 m!4186497))

(assert (=> b!3676813 m!4186497))

(declare-fun m!4186499 () Bool)

(assert (=> b!3676813 m!4186499))

(assert (=> bm!266274 m!4186131))

(declare-fun m!4186501 () Bool)

(assert (=> bm!266274 m!4186501))

(assert (=> b!3676817 m!4186131))

(assert (=> b!3676817 m!4186497))

(assert (=> b!3676817 m!4186497))

(assert (=> b!3676817 m!4186499))

(assert (=> b!3676816 m!4186131))

(assert (=> b!3676816 m!4186495))

(assert (=> b!3676816 m!4186495))

(declare-fun m!4186503 () Bool)

(assert (=> b!3676816 m!4186503))

(assert (=> b!3676816 m!4186131))

(assert (=> b!3676816 m!4186497))

(assert (=> b!3676816 m!4186503))

(assert (=> b!3676816 m!4186497))

(declare-fun m!4186505 () Bool)

(assert (=> b!3676816 m!4186505))

(declare-fun m!4186507 () Bool)

(assert (=> b!3676819 m!4186507))

(assert (=> d!1079435 m!4186131))

(assert (=> d!1079435 m!4186501))

(declare-fun m!4186509 () Bool)

(assert (=> d!1079435 m!4186509))

(assert (=> b!3676818 m!4186131))

(assert (=> b!3676818 m!4186495))

(assert (=> b!3676598 d!1079435))

(declare-fun d!1079441 () Bool)

(declare-fun list!14411 (Conc!11868) List!38901)

(assert (=> d!1079441 (= (list!14409 (charsOf!3849 (_1!22457 lt!1283678))) (list!14411 (c!635836 (charsOf!3849 (_1!22457 lt!1283678)))))))

(declare-fun bs!573399 () Bool)

(assert (= bs!573399 d!1079441))

(declare-fun m!4186511 () Bool)

(assert (=> bs!573399 m!4186511))

(assert (=> b!3676598 d!1079441))

(declare-fun d!1079443 () Bool)

(declare-fun lt!1283908 () BalanceConc!23350)

(assert (=> d!1079443 (= (list!14409 lt!1283908) (originalCharacters!6549 (_1!22457 lt!1283678)))))

(declare-fun dynLambda!16990 (Int TokenValue!6065) BalanceConc!23350)

(assert (=> d!1079443 (= lt!1283908 (dynLambda!16990 (toChars!7990 (transformation!5835 (rule!8667 (_1!22457 lt!1283678)))) (value!186759 (_1!22457 lt!1283678))))))

(assert (=> d!1079443 (= (charsOf!3849 (_1!22457 lt!1283678)) lt!1283908)))

(declare-fun b_lambda!109179 () Bool)

(assert (=> (not b_lambda!109179) (not d!1079443)))

(declare-fun t!300222 () Bool)

(declare-fun tb!213069 () Bool)

(assert (=> (and b!3676601 (= (toChars!7990 (transformation!5835 rule!403)) (toChars!7990 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) t!300222) tb!213069))

(declare-fun b!3676843 () Bool)

(declare-fun e!2276743 () Bool)

(declare-fun tp!1118165 () Bool)

(declare-fun inv!52274 (Conc!11868) Bool)

(assert (=> b!3676843 (= e!2276743 (and (inv!52274 (c!635836 (dynLambda!16990 (toChars!7990 (transformation!5835 (rule!8667 (_1!22457 lt!1283678)))) (value!186759 (_1!22457 lt!1283678))))) tp!1118165))))

(declare-fun result!259274 () Bool)

(declare-fun inv!52275 (BalanceConc!23350) Bool)

(assert (=> tb!213069 (= result!259274 (and (inv!52275 (dynLambda!16990 (toChars!7990 (transformation!5835 (rule!8667 (_1!22457 lt!1283678)))) (value!186759 (_1!22457 lt!1283678)))) e!2276743))))

(assert (= tb!213069 b!3676843))

(declare-fun m!4186519 () Bool)

(assert (=> b!3676843 m!4186519))

(declare-fun m!4186521 () Bool)

(assert (=> tb!213069 m!4186521))

(assert (=> d!1079443 t!300222))

(declare-fun b_and!274299 () Bool)

(assert (= b_and!274269 (and (=> t!300222 result!259274) b_and!274299)))

(declare-fun t!300224 () Bool)

(declare-fun tb!213071 () Bool)

(assert (=> (and b!3676585 (= (toChars!7990 (transformation!5835 (h!44198 rules!3307))) (toChars!7990 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) t!300224) tb!213071))

(declare-fun result!259278 () Bool)

(assert (= result!259278 result!259274))

(assert (=> d!1079443 t!300224))

(declare-fun b_and!274301 () Bool)

(assert (= b_and!274273 (and (=> t!300224 result!259278) b_and!274301)))

(declare-fun tb!213073 () Bool)

(declare-fun t!300226 () Bool)

(assert (=> (and b!3676605 (= (toChars!7990 (transformation!5835 anOtherTypeRule!33)) (toChars!7990 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) t!300226) tb!213073))

(declare-fun result!259280 () Bool)

(assert (= result!259280 result!259274))

(assert (=> d!1079443 t!300226))

(declare-fun b_and!274303 () Bool)

(assert (= b_and!274277 (and (=> t!300226 result!259280) b_and!274303)))

(declare-fun tb!213075 () Bool)

(declare-fun t!300228 () Bool)

(assert (=> (and b!3676592 (= (toChars!7990 (transformation!5835 (rule!8667 token!511))) (toChars!7990 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) t!300228) tb!213075))

(declare-fun result!259282 () Bool)

(assert (= result!259282 result!259274))

(assert (=> d!1079443 t!300228))

(declare-fun b_and!274305 () Bool)

(assert (= b_and!274281 (and (=> t!300228 result!259282) b_and!274305)))

(declare-fun m!4186523 () Bool)

(assert (=> d!1079443 m!4186523))

(declare-fun m!4186525 () Bool)

(assert (=> d!1079443 m!4186525))

(assert (=> b!3676598 d!1079443))

(declare-fun d!1079449 () Bool)

(assert (=> d!1079449 (= (get!12827 lt!1283686) (v!38225 lt!1283686))))

(assert (=> b!3676598 d!1079449))

(declare-fun d!1079451 () Bool)

(assert (=> d!1079451 (contains!7737 lt!1283680 (head!7883 suffix!1395))))

(declare-fun lt!1283914 () Unit!56608)

(declare-fun choose!21931 (List!38901 List!38901 List!38901 List!38901) Unit!56608)

(assert (=> d!1079451 (= lt!1283914 (choose!21931 lt!1283669 suffix!1395 lt!1283680 lt!1283716))))

(assert (=> d!1079451 (isPrefix!3198 lt!1283680 lt!1283716)))

(assert (=> d!1079451 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!143 lt!1283669 suffix!1395 lt!1283680 lt!1283716) lt!1283914)))

(declare-fun bs!573400 () Bool)

(assert (= bs!573400 d!1079451))

(assert (=> bs!573400 m!4186285))

(assert (=> bs!573400 m!4186285))

(declare-fun m!4186527 () Bool)

(assert (=> bs!573400 m!4186527))

(declare-fun m!4186529 () Bool)

(assert (=> bs!573400 m!4186529))

(assert (=> bs!573400 m!4186159))

(assert (=> b!3676597 d!1079451))

(declare-fun d!1079453 () Bool)

(declare-fun lt!1283918 () Bool)

(declare-fun content!5620 (List!38901) (Set C!21374))

(assert (=> d!1079453 (= lt!1283918 (set.member lt!1283710 (content!5620 lt!1283680)))))

(declare-fun e!2276749 () Bool)

(assert (=> d!1079453 (= lt!1283918 e!2276749)))

(declare-fun res!1493628 () Bool)

(assert (=> d!1079453 (=> (not res!1493628) (not e!2276749))))

(assert (=> d!1079453 (= res!1493628 (is-Cons!38777 lt!1283680))))

(assert (=> d!1079453 (= (contains!7737 lt!1283680 lt!1283710) lt!1283918)))

(declare-fun b!3676848 () Bool)

(declare-fun e!2276748 () Bool)

(assert (=> b!3676848 (= e!2276749 e!2276748)))

(declare-fun res!1493627 () Bool)

(assert (=> b!3676848 (=> res!1493627 e!2276748)))

(assert (=> b!3676848 (= res!1493627 (= (h!44197 lt!1283680) lt!1283710))))

(declare-fun b!3676849 () Bool)

(assert (=> b!3676849 (= e!2276748 (contains!7737 (t!300216 lt!1283680) lt!1283710))))

(assert (= (and d!1079453 res!1493628) b!3676848))

(assert (= (and b!3676848 (not res!1493627)) b!3676849))

(declare-fun m!4186533 () Bool)

(assert (=> d!1079453 m!4186533))

(declare-fun m!4186535 () Bool)

(assert (=> d!1079453 m!4186535))

(declare-fun m!4186537 () Bool)

(assert (=> b!3676849 m!4186537))

(assert (=> b!3676597 d!1079453))

(declare-fun b!3676850 () Bool)

(declare-fun res!1493629 () Bool)

(declare-fun e!2276752 () Bool)

(assert (=> b!3676850 (=> (not res!1493629) (not e!2276752))))

(assert (=> b!3676850 (= res!1493629 (isEmpty!23024 (tail!5688 lt!1283680)))))

(declare-fun b!3676851 () Bool)

(declare-fun e!2276756 () Bool)

(declare-fun e!2276750 () Bool)

(assert (=> b!3676851 (= e!2276756 e!2276750)))

(declare-fun res!1493636 () Bool)

(assert (=> b!3676851 (=> (not res!1493636) (not e!2276750))))

(declare-fun lt!1283919 () Bool)

(assert (=> b!3676851 (= res!1493636 (not lt!1283919))))

(declare-fun b!3676852 () Bool)

(declare-fun res!1493634 () Bool)

(assert (=> b!3676852 (=> res!1493634 e!2276756)))

(assert (=> b!3676852 (= res!1493634 (not (is-ElementMatch!10594 (regex!5835 (rule!8667 (_1!22457 lt!1283678))))))))

(declare-fun e!2276755 () Bool)

(assert (=> b!3676852 (= e!2276755 e!2276756)))

(declare-fun b!3676853 () Bool)

(declare-fun e!2276754 () Bool)

(assert (=> b!3676853 (= e!2276754 (matchR!5163 (derivativeStep!3239 (regex!5835 (rule!8667 (_1!22457 lt!1283678))) (head!7883 lt!1283680)) (tail!5688 lt!1283680)))))

(declare-fun d!1079457 () Bool)

(declare-fun e!2276751 () Bool)

(assert (=> d!1079457 e!2276751))

(declare-fun c!635888 () Bool)

(assert (=> d!1079457 (= c!635888 (is-EmptyExpr!10594 (regex!5835 (rule!8667 (_1!22457 lt!1283678)))))))

(assert (=> d!1079457 (= lt!1283919 e!2276754)))

(declare-fun c!635887 () Bool)

(assert (=> d!1079457 (= c!635887 (isEmpty!23024 lt!1283680))))

(assert (=> d!1079457 (validRegex!4852 (regex!5835 (rule!8667 (_1!22457 lt!1283678))))))

(assert (=> d!1079457 (= (matchR!5163 (regex!5835 (rule!8667 (_1!22457 lt!1283678))) lt!1283680) lt!1283919)))

(declare-fun bm!266275 () Bool)

(declare-fun call!266280 () Bool)

(assert (=> bm!266275 (= call!266280 (isEmpty!23024 lt!1283680))))

(declare-fun b!3676854 () Bool)

(declare-fun res!1493632 () Bool)

(declare-fun e!2276753 () Bool)

(assert (=> b!3676854 (=> res!1493632 e!2276753)))

(assert (=> b!3676854 (= res!1493632 (not (isEmpty!23024 (tail!5688 lt!1283680))))))

(declare-fun b!3676855 () Bool)

(assert (=> b!3676855 (= e!2276752 (= (head!7883 lt!1283680) (c!635835 (regex!5835 (rule!8667 (_1!22457 lt!1283678))))))))

(declare-fun b!3676856 () Bool)

(assert (=> b!3676856 (= e!2276754 (nullable!3690 (regex!5835 (rule!8667 (_1!22457 lt!1283678)))))))

(declare-fun b!3676857 () Bool)

(declare-fun res!1493630 () Bool)

(assert (=> b!3676857 (=> (not res!1493630) (not e!2276752))))

(assert (=> b!3676857 (= res!1493630 (not call!266280))))

(declare-fun b!3676858 () Bool)

(declare-fun res!1493633 () Bool)

(assert (=> b!3676858 (=> res!1493633 e!2276756)))

(assert (=> b!3676858 (= res!1493633 e!2276752)))

(declare-fun res!1493635 () Bool)

(assert (=> b!3676858 (=> (not res!1493635) (not e!2276752))))

(assert (=> b!3676858 (= res!1493635 lt!1283919)))

(declare-fun b!3676859 () Bool)

(assert (=> b!3676859 (= e!2276753 (not (= (head!7883 lt!1283680) (c!635835 (regex!5835 (rule!8667 (_1!22457 lt!1283678)))))))))

(declare-fun b!3676860 () Bool)

(assert (=> b!3676860 (= e!2276755 (not lt!1283919))))

(declare-fun b!3676861 () Bool)

(assert (=> b!3676861 (= e!2276751 e!2276755)))

(declare-fun c!635889 () Bool)

(assert (=> b!3676861 (= c!635889 (is-EmptyLang!10594 (regex!5835 (rule!8667 (_1!22457 lt!1283678)))))))

(declare-fun b!3676862 () Bool)

(assert (=> b!3676862 (= e!2276751 (= lt!1283919 call!266280))))

(declare-fun b!3676863 () Bool)

(assert (=> b!3676863 (= e!2276750 e!2276753)))

(declare-fun res!1493631 () Bool)

(assert (=> b!3676863 (=> res!1493631 e!2276753)))

(assert (=> b!3676863 (= res!1493631 call!266280)))

(assert (= (and d!1079457 c!635887) b!3676856))

(assert (= (and d!1079457 (not c!635887)) b!3676853))

(assert (= (and d!1079457 c!635888) b!3676862))

(assert (= (and d!1079457 (not c!635888)) b!3676861))

(assert (= (and b!3676861 c!635889) b!3676860))

(assert (= (and b!3676861 (not c!635889)) b!3676852))

(assert (= (and b!3676852 (not res!1493634)) b!3676858))

(assert (= (and b!3676858 res!1493635) b!3676857))

(assert (= (and b!3676857 res!1493630) b!3676850))

(assert (= (and b!3676850 res!1493629) b!3676855))

(assert (= (and b!3676858 (not res!1493633)) b!3676851))

(assert (= (and b!3676851 res!1493636) b!3676863))

(assert (= (and b!3676863 (not res!1493631)) b!3676854))

(assert (= (and b!3676854 (not res!1493632)) b!3676859))

(assert (= (or b!3676862 b!3676857 b!3676863) bm!266275))

(assert (=> b!3676859 m!4186175))

(declare-fun m!4186539 () Bool)

(assert (=> b!3676850 m!4186539))

(assert (=> b!3676850 m!4186539))

(declare-fun m!4186541 () Bool)

(assert (=> b!3676850 m!4186541))

(declare-fun m!4186543 () Bool)

(assert (=> bm!266275 m!4186543))

(assert (=> b!3676854 m!4186539))

(assert (=> b!3676854 m!4186539))

(assert (=> b!3676854 m!4186541))

(assert (=> b!3676853 m!4186175))

(assert (=> b!3676853 m!4186175))

(declare-fun m!4186545 () Bool)

(assert (=> b!3676853 m!4186545))

(assert (=> b!3676853 m!4186539))

(assert (=> b!3676853 m!4186545))

(assert (=> b!3676853 m!4186539))

(declare-fun m!4186547 () Bool)

(assert (=> b!3676853 m!4186547))

(declare-fun m!4186549 () Bool)

(assert (=> b!3676856 m!4186549))

(assert (=> d!1079457 m!4186543))

(declare-fun m!4186551 () Bool)

(assert (=> d!1079457 m!4186551))

(assert (=> b!3676855 m!4186175))

(assert (=> b!3676577 d!1079457))

(declare-fun d!1079459 () Bool)

(assert (=> d!1079459 (= (get!12826 lt!1283671) (v!38226 lt!1283671))))

(assert (=> b!3676576 d!1079459))

(declare-fun call!266291 () List!38901)

(declare-fun call!266289 () List!38901)

(declare-fun c!635900 () Bool)

(declare-fun bm!266284 () Bool)

(declare-fun call!266290 () List!38901)

(assert (=> bm!266284 (= call!266289 (++!9651 (ite c!635900 call!266290 call!266291) (ite c!635900 call!266291 call!266290)))))

(declare-fun b!3676880 () Bool)

(declare-fun e!2276768 () List!38901)

(assert (=> b!3676880 (= e!2276768 Nil!38777)))

(declare-fun b!3676881 () Bool)

(declare-fun e!2276767 () List!38901)

(assert (=> b!3676881 (= e!2276767 call!266289)))

(declare-fun b!3676882 () Bool)

(declare-fun e!2276765 () List!38901)

(assert (=> b!3676882 (= e!2276765 e!2276767)))

(assert (=> b!3676882 (= c!635900 (is-Union!10594 (regex!5835 (rule!8667 (_1!22457 lt!1283678)))))))

(declare-fun b!3676883 () Bool)

(assert (=> b!3676883 (= e!2276767 call!266289)))

(declare-fun b!3676884 () Bool)

(declare-fun c!635898 () Bool)

(assert (=> b!3676884 (= c!635898 (is-Star!10594 (regex!5835 (rule!8667 (_1!22457 lt!1283678)))))))

(declare-fun e!2276766 () List!38901)

(assert (=> b!3676884 (= e!2276766 e!2276765)))

(declare-fun bm!266285 () Bool)

(assert (=> bm!266285 (= call!266290 (usedCharacters!1047 (ite c!635900 (regOne!21701 (regex!5835 (rule!8667 (_1!22457 lt!1283678)))) (regTwo!21700 (regex!5835 (rule!8667 (_1!22457 lt!1283678)))))))))

(declare-fun b!3676885 () Bool)

(assert (=> b!3676885 (= e!2276768 e!2276766)))

(declare-fun c!635901 () Bool)

(assert (=> b!3676885 (= c!635901 (is-ElementMatch!10594 (regex!5835 (rule!8667 (_1!22457 lt!1283678)))))))

(declare-fun bm!266286 () Bool)

(declare-fun call!266292 () List!38901)

(assert (=> bm!266286 (= call!266291 call!266292)))

(declare-fun d!1079461 () Bool)

(declare-fun c!635899 () Bool)

(assert (=> d!1079461 (= c!635899 (or (is-EmptyExpr!10594 (regex!5835 (rule!8667 (_1!22457 lt!1283678)))) (is-EmptyLang!10594 (regex!5835 (rule!8667 (_1!22457 lt!1283678))))))))

(assert (=> d!1079461 (= (usedCharacters!1047 (regex!5835 (rule!8667 (_1!22457 lt!1283678)))) e!2276768)))

(declare-fun b!3676886 () Bool)

(assert (=> b!3676886 (= e!2276766 (Cons!38777 (c!635835 (regex!5835 (rule!8667 (_1!22457 lt!1283678)))) Nil!38777))))

(declare-fun b!3676887 () Bool)

(assert (=> b!3676887 (= e!2276765 call!266292)))

(declare-fun bm!266287 () Bool)

(assert (=> bm!266287 (= call!266292 (usedCharacters!1047 (ite c!635898 (reg!10923 (regex!5835 (rule!8667 (_1!22457 lt!1283678)))) (ite c!635900 (regTwo!21701 (regex!5835 (rule!8667 (_1!22457 lt!1283678)))) (regOne!21700 (regex!5835 (rule!8667 (_1!22457 lt!1283678))))))))))

(assert (= (and d!1079461 c!635899) b!3676880))

(assert (= (and d!1079461 (not c!635899)) b!3676885))

(assert (= (and b!3676885 c!635901) b!3676886))

(assert (= (and b!3676885 (not c!635901)) b!3676884))

(assert (= (and b!3676884 c!635898) b!3676887))

(assert (= (and b!3676884 (not c!635898)) b!3676882))

(assert (= (and b!3676882 c!635900) b!3676881))

(assert (= (and b!3676882 (not c!635900)) b!3676883))

(assert (= (or b!3676881 b!3676883) bm!266285))

(assert (= (or b!3676881 b!3676883) bm!266286))

(assert (= (or b!3676881 b!3676883) bm!266284))

(assert (= (or b!3676887 bm!266286) bm!266287))

(declare-fun m!4186555 () Bool)

(assert (=> bm!266284 m!4186555))

(declare-fun m!4186557 () Bool)

(assert (=> bm!266285 m!4186557))

(declare-fun m!4186559 () Bool)

(assert (=> bm!266287 m!4186559))

(assert (=> bm!266250 d!1079461))

(declare-fun d!1079465 () Bool)

(declare-fun lt!1283927 () Bool)

(declare-fun content!5621 (List!38902) (Set Rule!11470))

(assert (=> d!1079465 (= lt!1283927 (set.member anOtherTypeRule!33 (content!5621 rules!3307)))))

(declare-fun e!2276778 () Bool)

(assert (=> d!1079465 (= lt!1283927 e!2276778)))

(declare-fun res!1493646 () Bool)

(assert (=> d!1079465 (=> (not res!1493646) (not e!2276778))))

(assert (=> d!1079465 (= res!1493646 (is-Cons!38778 rules!3307))))

(assert (=> d!1079465 (= (contains!7738 rules!3307 anOtherTypeRule!33) lt!1283927)))

(declare-fun b!3676896 () Bool)

(declare-fun e!2276777 () Bool)

(assert (=> b!3676896 (= e!2276778 e!2276777)))

(declare-fun res!1493645 () Bool)

(assert (=> b!3676896 (=> res!1493645 e!2276777)))

(assert (=> b!3676896 (= res!1493645 (= (h!44198 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3676897 () Bool)

(assert (=> b!3676897 (= e!2276777 (contains!7738 (t!300217 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1079465 res!1493646) b!3676896))

(assert (= (and b!3676896 (not res!1493645)) b!3676897))

(declare-fun m!4186561 () Bool)

(assert (=> d!1079465 m!4186561))

(declare-fun m!4186563 () Bool)

(assert (=> d!1079465 m!4186563))

(declare-fun m!4186565 () Bool)

(assert (=> b!3676897 m!4186565))

(assert (=> b!3676594 d!1079465))

(declare-fun d!1079467 () Bool)

(declare-fun dynLambda!16991 (Int BalanceConc!23350) TokenValue!6065)

(assert (=> d!1079467 (= (apply!9337 (transformation!5835 rule!403) lt!1283664) (dynLambda!16991 (toValue!8131 (transformation!5835 rule!403)) lt!1283664))))

(declare-fun b_lambda!109181 () Bool)

(assert (=> (not b_lambda!109181) (not d!1079467)))

(declare-fun t!300230 () Bool)

(declare-fun tb!213077 () Bool)

(assert (=> (and b!3676601 (= (toValue!8131 (transformation!5835 rule!403)) (toValue!8131 (transformation!5835 rule!403))) t!300230) tb!213077))

(declare-fun result!259284 () Bool)

(assert (=> tb!213077 (= result!259284 (inv!21 (dynLambda!16991 (toValue!8131 (transformation!5835 rule!403)) lt!1283664)))))

(declare-fun m!4186567 () Bool)

(assert (=> tb!213077 m!4186567))

(assert (=> d!1079467 t!300230))

(declare-fun b_and!274307 () Bool)

(assert (= b_and!274267 (and (=> t!300230 result!259284) b_and!274307)))

(declare-fun tb!213079 () Bool)

(declare-fun t!300232 () Bool)

(assert (=> (and b!3676585 (= (toValue!8131 (transformation!5835 (h!44198 rules!3307))) (toValue!8131 (transformation!5835 rule!403))) t!300232) tb!213079))

(declare-fun result!259288 () Bool)

(assert (= result!259288 result!259284))

(assert (=> d!1079467 t!300232))

(declare-fun b_and!274309 () Bool)

(assert (= b_and!274271 (and (=> t!300232 result!259288) b_and!274309)))

(declare-fun t!300234 () Bool)

(declare-fun tb!213081 () Bool)

(assert (=> (and b!3676605 (= (toValue!8131 (transformation!5835 anOtherTypeRule!33)) (toValue!8131 (transformation!5835 rule!403))) t!300234) tb!213081))

(declare-fun result!259290 () Bool)

(assert (= result!259290 result!259284))

(assert (=> d!1079467 t!300234))

(declare-fun b_and!274311 () Bool)

(assert (= b_and!274275 (and (=> t!300234 result!259290) b_and!274311)))

(declare-fun t!300236 () Bool)

(declare-fun tb!213083 () Bool)

(assert (=> (and b!3676592 (= (toValue!8131 (transformation!5835 (rule!8667 token!511))) (toValue!8131 (transformation!5835 rule!403))) t!300236) tb!213083))

(declare-fun result!259292 () Bool)

(assert (= result!259292 result!259284))

(assert (=> d!1079467 t!300236))

(declare-fun b_and!274313 () Bool)

(assert (= b_and!274279 (and (=> t!300236 result!259292) b_and!274313)))

(declare-fun m!4186575 () Bool)

(assert (=> d!1079467 m!4186575))

(assert (=> b!3676614 d!1079467))

(declare-fun d!1079469 () Bool)

(declare-fun lt!1283931 () Int)

(assert (=> d!1079469 (>= lt!1283931 0)))

(declare-fun e!2276786 () Int)

(assert (=> d!1079469 (= lt!1283931 e!2276786)))

(declare-fun c!635904 () Bool)

(assert (=> d!1079469 (= c!635904 (is-Nil!38777 lt!1283669))))

(assert (=> d!1079469 (= (size!29646 lt!1283669) lt!1283931)))

(declare-fun b!3676906 () Bool)

(assert (=> b!3676906 (= e!2276786 0)))

(declare-fun b!3676907 () Bool)

(assert (=> b!3676907 (= e!2276786 (+ 1 (size!29646 (t!300216 lt!1283669))))))

(assert (= (and d!1079469 c!635904) b!3676906))

(assert (= (and d!1079469 (not c!635904)) b!3676907))

(declare-fun m!4186577 () Bool)

(assert (=> b!3676907 m!4186577))

(assert (=> b!3676614 d!1079469))

(declare-fun b!3677042 () Bool)

(declare-fun e!2276857 () Bool)

(assert (=> b!3677042 (= e!2276857 true)))

(declare-fun d!1079473 () Bool)

(assert (=> d!1079473 e!2276857))

(assert (= d!1079473 b!3677042))

(declare-fun order!21477 () Int)

(declare-fun lambda!124730 () Int)

(declare-fun order!21475 () Int)

(declare-fun dynLambda!16992 (Int Int) Int)

(declare-fun dynLambda!16993 (Int Int) Int)

(assert (=> b!3677042 (< (dynLambda!16992 order!21475 (toValue!8131 (transformation!5835 rule!403))) (dynLambda!16993 order!21477 lambda!124730))))

(declare-fun order!21479 () Int)

(declare-fun dynLambda!16994 (Int Int) Int)

(assert (=> b!3677042 (< (dynLambda!16994 order!21479 (toChars!7990 (transformation!5835 rule!403))) (dynLambda!16993 order!21477 lambda!124730))))

(assert (=> d!1079473 (= (list!14409 (dynLambda!16990 (toChars!7990 (transformation!5835 rule!403)) (dynLambda!16991 (toValue!8131 (transformation!5835 rule!403)) lt!1283664))) (list!14409 lt!1283664))))

(declare-fun lt!1283978 () Unit!56608)

(declare-fun ForallOf!747 (Int BalanceConc!23350) Unit!56608)

(assert (=> d!1079473 (= lt!1283978 (ForallOf!747 lambda!124730 lt!1283664))))

(assert (=> d!1079473 (= (lemmaSemiInverse!1584 (transformation!5835 rule!403) lt!1283664) lt!1283978)))

(declare-fun b_lambda!109187 () Bool)

(assert (=> (not b_lambda!109187) (not d!1079473)))

(declare-fun t!300254 () Bool)

(declare-fun tb!213101 () Bool)

(assert (=> (and b!3676601 (= (toChars!7990 (transformation!5835 rule!403)) (toChars!7990 (transformation!5835 rule!403))) t!300254) tb!213101))

(declare-fun e!2276858 () Bool)

(declare-fun b!3677043 () Bool)

(declare-fun tp!1118170 () Bool)

(assert (=> b!3677043 (= e!2276858 (and (inv!52274 (c!635836 (dynLambda!16990 (toChars!7990 (transformation!5835 rule!403)) (dynLambda!16991 (toValue!8131 (transformation!5835 rule!403)) lt!1283664)))) tp!1118170))))

(declare-fun result!259312 () Bool)

(assert (=> tb!213101 (= result!259312 (and (inv!52275 (dynLambda!16990 (toChars!7990 (transformation!5835 rule!403)) (dynLambda!16991 (toValue!8131 (transformation!5835 rule!403)) lt!1283664))) e!2276858))))

(assert (= tb!213101 b!3677043))

(declare-fun m!4186705 () Bool)

(assert (=> b!3677043 m!4186705))

(declare-fun m!4186707 () Bool)

(assert (=> tb!213101 m!4186707))

(assert (=> d!1079473 t!300254))

(declare-fun b_and!274331 () Bool)

(assert (= b_and!274299 (and (=> t!300254 result!259312) b_and!274331)))

(declare-fun tb!213103 () Bool)

(declare-fun t!300256 () Bool)

(assert (=> (and b!3676585 (= (toChars!7990 (transformation!5835 (h!44198 rules!3307))) (toChars!7990 (transformation!5835 rule!403))) t!300256) tb!213103))

(declare-fun result!259314 () Bool)

(assert (= result!259314 result!259312))

(assert (=> d!1079473 t!300256))

(declare-fun b_and!274333 () Bool)

(assert (= b_and!274301 (and (=> t!300256 result!259314) b_and!274333)))

(declare-fun tb!213105 () Bool)

(declare-fun t!300258 () Bool)

(assert (=> (and b!3676605 (= (toChars!7990 (transformation!5835 anOtherTypeRule!33)) (toChars!7990 (transformation!5835 rule!403))) t!300258) tb!213105))

(declare-fun result!259316 () Bool)

(assert (= result!259316 result!259312))

(assert (=> d!1079473 t!300258))

(declare-fun b_and!274335 () Bool)

(assert (= b_and!274303 (and (=> t!300258 result!259316) b_and!274335)))

(declare-fun tb!213107 () Bool)

(declare-fun t!300260 () Bool)

(assert (=> (and b!3676592 (= (toChars!7990 (transformation!5835 (rule!8667 token!511))) (toChars!7990 (transformation!5835 rule!403))) t!300260) tb!213107))

(declare-fun result!259318 () Bool)

(assert (= result!259318 result!259312))

(assert (=> d!1079473 t!300260))

(declare-fun b_and!274337 () Bool)

(assert (= b_and!274305 (and (=> t!300260 result!259318) b_and!274337)))

(declare-fun b_lambda!109189 () Bool)

(assert (=> (not b_lambda!109189) (not d!1079473)))

(assert (=> d!1079473 t!300230))

(declare-fun b_and!274339 () Bool)

(assert (= b_and!274307 (and (=> t!300230 result!259284) b_and!274339)))

(assert (=> d!1079473 t!300232))

(declare-fun b_and!274341 () Bool)

(assert (= b_and!274309 (and (=> t!300232 result!259288) b_and!274341)))

(assert (=> d!1079473 t!300234))

(declare-fun b_and!274343 () Bool)

(assert (= b_and!274311 (and (=> t!300234 result!259290) b_and!274343)))

(assert (=> d!1079473 t!300236))

(declare-fun b_and!274345 () Bool)

(assert (= b_and!274313 (and (=> t!300236 result!259292) b_and!274345)))

(declare-fun m!4186709 () Bool)

(assert (=> d!1079473 m!4186709))

(declare-fun m!4186711 () Bool)

(assert (=> d!1079473 m!4186711))

(declare-fun m!4186713 () Bool)

(assert (=> d!1079473 m!4186713))

(assert (=> d!1079473 m!4186575))

(declare-fun m!4186715 () Bool)

(assert (=> d!1079473 m!4186715))

(assert (=> d!1079473 m!4186575))

(assert (=> d!1079473 m!4186711))

(assert (=> b!3676614 d!1079473))

(declare-fun d!1079515 () Bool)

(declare-fun fromListB!2026 (List!38901) BalanceConc!23350)

(assert (=> d!1079515 (= (seqFromList!4384 lt!1283669) (fromListB!2026 lt!1283669))))

(declare-fun bs!573409 () Bool)

(assert (= bs!573409 d!1079515))

(declare-fun m!4186717 () Bool)

(assert (=> bs!573409 m!4186717))

(assert (=> b!3676614 d!1079515))

(declare-fun d!1079517 () Bool)

(assert (=> d!1079517 (= lt!1283680 lt!1283669)))

(declare-fun lt!1283981 () Unit!56608)

(declare-fun choose!21932 (List!38901 List!38901 List!38901) Unit!56608)

(assert (=> d!1079517 (= lt!1283981 (choose!21932 lt!1283680 lt!1283669 lt!1283716))))

(assert (=> d!1079517 (isPrefix!3198 lt!1283680 lt!1283716)))

(assert (=> d!1079517 (= (lemmaIsPrefixSameLengthThenSameList!660 lt!1283680 lt!1283669 lt!1283716) lt!1283981)))

(declare-fun bs!573410 () Bool)

(assert (= bs!573410 d!1079517))

(declare-fun m!4186719 () Bool)

(assert (=> bs!573410 m!4186719))

(assert (=> bs!573410 m!4186159))

(assert (=> b!3676575 d!1079517))

(declare-fun d!1079519 () Bool)

(declare-fun lt!1283982 () Bool)

(assert (=> d!1079519 (= lt!1283982 (set.member lt!1283698 (content!5620 lt!1283691)))))

(declare-fun e!2276860 () Bool)

(assert (=> d!1079519 (= lt!1283982 e!2276860)))

(declare-fun res!1493714 () Bool)

(assert (=> d!1079519 (=> (not res!1493714) (not e!2276860))))

(assert (=> d!1079519 (= res!1493714 (is-Cons!38777 lt!1283691))))

(assert (=> d!1079519 (= (contains!7737 lt!1283691 lt!1283698) lt!1283982)))

(declare-fun b!3677044 () Bool)

(declare-fun e!2276859 () Bool)

(assert (=> b!3677044 (= e!2276860 e!2276859)))

(declare-fun res!1493713 () Bool)

(assert (=> b!3677044 (=> res!1493713 e!2276859)))

(assert (=> b!3677044 (= res!1493713 (= (h!44197 lt!1283691) lt!1283698))))

(declare-fun b!3677045 () Bool)

(assert (=> b!3677045 (= e!2276859 (contains!7737 (t!300216 lt!1283691) lt!1283698))))

(assert (= (and d!1079519 res!1493714) b!3677044))

(assert (= (and b!3677044 (not res!1493713)) b!3677045))

(declare-fun m!4186721 () Bool)

(assert (=> d!1079519 m!4186721))

(declare-fun m!4186723 () Bool)

(assert (=> d!1079519 m!4186723))

(declare-fun m!4186725 () Bool)

(assert (=> b!3677045 m!4186725))

(assert (=> b!3676575 d!1079519))

(declare-fun d!1079521 () Bool)

(declare-fun lt!1283985 () Int)

(assert (=> d!1079521 (= lt!1283985 (size!29646 (list!14409 lt!1283682)))))

(declare-fun size!29650 (Conc!11868) Int)

(assert (=> d!1079521 (= lt!1283985 (size!29650 (c!635836 lt!1283682)))))

(assert (=> d!1079521 (= (size!29645 lt!1283682) lt!1283985)))

(declare-fun bs!573411 () Bool)

(assert (= bs!573411 d!1079521))

(assert (=> bs!573411 m!4186209))

(assert (=> bs!573411 m!4186209))

(declare-fun m!4186727 () Bool)

(assert (=> bs!573411 m!4186727))

(declare-fun m!4186729 () Bool)

(assert (=> bs!573411 m!4186729))

(assert (=> b!3676575 d!1079521))

(declare-fun d!1079523 () Bool)

(assert (=> d!1079523 (= (head!7883 lt!1283680) (h!44197 lt!1283680))))

(assert (=> b!3676575 d!1079523))

(declare-fun b!3677056 () Bool)

(declare-fun res!1493720 () Bool)

(declare-fun e!2276866 () Bool)

(assert (=> b!3677056 (=> (not res!1493720) (not e!2276866))))

(declare-fun lt!1283988 () List!38901)

(assert (=> b!3677056 (= res!1493720 (= (size!29646 lt!1283988) (+ (size!29646 lt!1283669) (size!29646 lt!1283689))))))

(declare-fun b!3677057 () Bool)

(assert (=> b!3677057 (= e!2276866 (or (not (= lt!1283689 Nil!38777)) (= lt!1283988 lt!1283669)))))

(declare-fun b!3677054 () Bool)

(declare-fun e!2276865 () List!38901)

(assert (=> b!3677054 (= e!2276865 lt!1283689)))

(declare-fun b!3677055 () Bool)

(assert (=> b!3677055 (= e!2276865 (Cons!38777 (h!44197 lt!1283669) (++!9651 (t!300216 lt!1283669) lt!1283689)))))

(declare-fun d!1079525 () Bool)

(assert (=> d!1079525 e!2276866))

(declare-fun res!1493719 () Bool)

(assert (=> d!1079525 (=> (not res!1493719) (not e!2276866))))

(assert (=> d!1079525 (= res!1493719 (= (content!5620 lt!1283988) (set.union (content!5620 lt!1283669) (content!5620 lt!1283689))))))

(assert (=> d!1079525 (= lt!1283988 e!2276865)))

(declare-fun c!635940 () Bool)

(assert (=> d!1079525 (= c!635940 (is-Nil!38777 lt!1283669))))

(assert (=> d!1079525 (= (++!9651 lt!1283669 lt!1283689) lt!1283988)))

(assert (= (and d!1079525 c!635940) b!3677054))

(assert (= (and d!1079525 (not c!635940)) b!3677055))

(assert (= (and d!1079525 res!1493719) b!3677056))

(assert (= (and b!3677056 res!1493720) b!3677057))

(declare-fun m!4186731 () Bool)

(assert (=> b!3677056 m!4186731))

(assert (=> b!3677056 m!4186243))

(declare-fun m!4186733 () Bool)

(assert (=> b!3677056 m!4186733))

(declare-fun m!4186735 () Bool)

(assert (=> b!3677055 m!4186735))

(declare-fun m!4186737 () Bool)

(assert (=> d!1079525 m!4186737))

(declare-fun m!4186739 () Bool)

(assert (=> d!1079525 m!4186739))

(declare-fun m!4186741 () Bool)

(assert (=> d!1079525 m!4186741))

(assert (=> b!3676575 d!1079525))

(declare-fun d!1079527 () Bool)

(declare-fun lt!1283991 () List!38901)

(assert (=> d!1079527 (= (++!9651 lt!1283669 lt!1283991) lt!1283716)))

(declare-fun e!2276869 () List!38901)

(assert (=> d!1079527 (= lt!1283991 e!2276869)))

(declare-fun c!635943 () Bool)

(assert (=> d!1079527 (= c!635943 (is-Cons!38777 lt!1283669))))

(assert (=> d!1079527 (>= (size!29646 lt!1283716) (size!29646 lt!1283669))))

(assert (=> d!1079527 (= (getSuffix!1751 lt!1283716 lt!1283669) lt!1283991)))

(declare-fun b!3677062 () Bool)

(assert (=> b!3677062 (= e!2276869 (getSuffix!1751 (tail!5688 lt!1283716) (t!300216 lt!1283669)))))

(declare-fun b!3677063 () Bool)

(assert (=> b!3677063 (= e!2276869 lt!1283716)))

(assert (= (and d!1079527 c!635943) b!3677062))

(assert (= (and d!1079527 (not c!635943)) b!3677063))

(declare-fun m!4186743 () Bool)

(assert (=> d!1079527 m!4186743))

(declare-fun m!4186745 () Bool)

(assert (=> d!1079527 m!4186745))

(assert (=> d!1079527 m!4186243))

(declare-fun m!4186747 () Bool)

(assert (=> b!3677062 m!4186747))

(assert (=> b!3677062 m!4186747))

(declare-fun m!4186749 () Bool)

(assert (=> b!3677062 m!4186749))

(assert (=> b!3676575 d!1079527))

(declare-fun d!1079529 () Bool)

(declare-fun lt!1283992 () Bool)

(assert (=> d!1079529 (= lt!1283992 (set.member lt!1283710 (content!5620 (usedCharacters!1047 (regex!5835 anOtherTypeRule!33)))))))

(declare-fun e!2276871 () Bool)

(assert (=> d!1079529 (= lt!1283992 e!2276871)))

(declare-fun res!1493722 () Bool)

(assert (=> d!1079529 (=> (not res!1493722) (not e!2276871))))

(assert (=> d!1079529 (= res!1493722 (is-Cons!38777 (usedCharacters!1047 (regex!5835 anOtherTypeRule!33))))))

(assert (=> d!1079529 (= (contains!7737 (usedCharacters!1047 (regex!5835 anOtherTypeRule!33)) lt!1283710) lt!1283992)))

(declare-fun b!3677064 () Bool)

(declare-fun e!2276870 () Bool)

(assert (=> b!3677064 (= e!2276871 e!2276870)))

(declare-fun res!1493721 () Bool)

(assert (=> b!3677064 (=> res!1493721 e!2276870)))

(assert (=> b!3677064 (= res!1493721 (= (h!44197 (usedCharacters!1047 (regex!5835 anOtherTypeRule!33))) lt!1283710))))

(declare-fun b!3677065 () Bool)

(assert (=> b!3677065 (= e!2276870 (contains!7737 (t!300216 (usedCharacters!1047 (regex!5835 anOtherTypeRule!33))) lt!1283710))))

(assert (= (and d!1079529 res!1493722) b!3677064))

(assert (= (and b!3677064 (not res!1493721)) b!3677065))

(assert (=> d!1079529 m!4186293))

(declare-fun m!4186751 () Bool)

(assert (=> d!1079529 m!4186751))

(declare-fun m!4186753 () Bool)

(assert (=> d!1079529 m!4186753))

(declare-fun m!4186755 () Bool)

(assert (=> b!3677065 m!4186755))

(assert (=> b!3676593 d!1079529))

(declare-fun call!266312 () List!38901)

(declare-fun call!266313 () List!38901)

(declare-fun c!635946 () Bool)

(declare-fun bm!266306 () Bool)

(declare-fun call!266311 () List!38901)

(assert (=> bm!266306 (= call!266311 (++!9651 (ite c!635946 call!266312 call!266313) (ite c!635946 call!266313 call!266312)))))

(declare-fun b!3677066 () Bool)

(declare-fun e!2276875 () List!38901)

(assert (=> b!3677066 (= e!2276875 Nil!38777)))

(declare-fun b!3677067 () Bool)

(declare-fun e!2276874 () List!38901)

(assert (=> b!3677067 (= e!2276874 call!266311)))

(declare-fun b!3677068 () Bool)

(declare-fun e!2276872 () List!38901)

(assert (=> b!3677068 (= e!2276872 e!2276874)))

(assert (=> b!3677068 (= c!635946 (is-Union!10594 (regex!5835 anOtherTypeRule!33)))))

(declare-fun b!3677069 () Bool)

(assert (=> b!3677069 (= e!2276874 call!266311)))

(declare-fun b!3677070 () Bool)

(declare-fun c!635944 () Bool)

(assert (=> b!3677070 (= c!635944 (is-Star!10594 (regex!5835 anOtherTypeRule!33)))))

(declare-fun e!2276873 () List!38901)

(assert (=> b!3677070 (= e!2276873 e!2276872)))

(declare-fun bm!266307 () Bool)

(assert (=> bm!266307 (= call!266312 (usedCharacters!1047 (ite c!635946 (regOne!21701 (regex!5835 anOtherTypeRule!33)) (regTwo!21700 (regex!5835 anOtherTypeRule!33)))))))

(declare-fun b!3677071 () Bool)

(assert (=> b!3677071 (= e!2276875 e!2276873)))

(declare-fun c!635947 () Bool)

(assert (=> b!3677071 (= c!635947 (is-ElementMatch!10594 (regex!5835 anOtherTypeRule!33)))))

(declare-fun bm!266308 () Bool)

(declare-fun call!266314 () List!38901)

(assert (=> bm!266308 (= call!266313 call!266314)))

(declare-fun d!1079531 () Bool)

(declare-fun c!635945 () Bool)

(assert (=> d!1079531 (= c!635945 (or (is-EmptyExpr!10594 (regex!5835 anOtherTypeRule!33)) (is-EmptyLang!10594 (regex!5835 anOtherTypeRule!33))))))

(assert (=> d!1079531 (= (usedCharacters!1047 (regex!5835 anOtherTypeRule!33)) e!2276875)))

(declare-fun b!3677072 () Bool)

(assert (=> b!3677072 (= e!2276873 (Cons!38777 (c!635835 (regex!5835 anOtherTypeRule!33)) Nil!38777))))

(declare-fun b!3677073 () Bool)

(assert (=> b!3677073 (= e!2276872 call!266314)))

(declare-fun bm!266309 () Bool)

(assert (=> bm!266309 (= call!266314 (usedCharacters!1047 (ite c!635944 (reg!10923 (regex!5835 anOtherTypeRule!33)) (ite c!635946 (regTwo!21701 (regex!5835 anOtherTypeRule!33)) (regOne!21700 (regex!5835 anOtherTypeRule!33))))))))

(assert (= (and d!1079531 c!635945) b!3677066))

(assert (= (and d!1079531 (not c!635945)) b!3677071))

(assert (= (and b!3677071 c!635947) b!3677072))

(assert (= (and b!3677071 (not c!635947)) b!3677070))

(assert (= (and b!3677070 c!635944) b!3677073))

(assert (= (and b!3677070 (not c!635944)) b!3677068))

(assert (= (and b!3677068 c!635946) b!3677067))

(assert (= (and b!3677068 (not c!635946)) b!3677069))

(assert (= (or b!3677067 b!3677069) bm!266307))

(assert (= (or b!3677067 b!3677069) bm!266308))

(assert (= (or b!3677067 b!3677069) bm!266306))

(assert (= (or b!3677073 bm!266308) bm!266309))

(declare-fun m!4186757 () Bool)

(assert (=> bm!266306 m!4186757))

(declare-fun m!4186759 () Bool)

(assert (=> bm!266307 m!4186759))

(declare-fun m!4186761 () Bool)

(assert (=> bm!266309 m!4186761))

(assert (=> b!3676593 d!1079531))

(declare-fun d!1079533 () Bool)

(assert (=> d!1079533 (not (contains!7737 (usedCharacters!1047 (regex!5835 (rule!8667 (_1!22457 lt!1283678)))) lt!1283710))))

(declare-fun lt!1283995 () Unit!56608)

(declare-fun choose!21933 (LexerInterface!5424 List!38902 List!38902 Rule!11470 Rule!11470 C!21374) Unit!56608)

(assert (=> d!1079533 (= lt!1283995 (choose!21933 thiss!23823 rules!3307 rules!3307 (rule!8667 (_1!22457 lt!1283678)) anOtherTypeRule!33 lt!1283710))))

(assert (=> d!1079533 (rulesInvariant!4821 thiss!23823 rules!3307)))

(assert (=> d!1079533 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!481 thiss!23823 rules!3307 rules!3307 (rule!8667 (_1!22457 lt!1283678)) anOtherTypeRule!33 lt!1283710) lt!1283995)))

(declare-fun bs!573412 () Bool)

(assert (= bs!573412 d!1079533))

(assert (=> bs!573412 m!4186119))

(assert (=> bs!573412 m!4186119))

(declare-fun m!4186763 () Bool)

(assert (=> bs!573412 m!4186763))

(declare-fun m!4186765 () Bool)

(assert (=> bs!573412 m!4186765))

(assert (=> bs!573412 m!4186127))

(assert (=> b!3676613 d!1079533))

(declare-fun d!1079535 () Bool)

(assert (=> d!1079535 (not (contains!7737 (usedCharacters!1047 (regex!5835 (rule!8667 (_1!22457 lt!1283678)))) lt!1283698))))

(declare-fun lt!1283998 () Unit!56608)

(declare-fun choose!21934 (LexerInterface!5424 List!38902 List!38902 Rule!11470 Rule!11470 C!21374) Unit!56608)

(assert (=> d!1079535 (= lt!1283998 (choose!21934 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8667 (_1!22457 lt!1283678)) lt!1283698))))

(assert (=> d!1079535 (rulesInvariant!4821 thiss!23823 rules!3307)))

(assert (=> d!1079535 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!363 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8667 (_1!22457 lt!1283678)) lt!1283698) lt!1283998)))

(declare-fun bs!573413 () Bool)

(assert (= bs!573413 d!1079535))

(assert (=> bs!573413 m!4186119))

(assert (=> bs!573413 m!4186119))

(declare-fun m!4186767 () Bool)

(assert (=> bs!573413 m!4186767))

(declare-fun m!4186769 () Bool)

(assert (=> bs!573413 m!4186769))

(assert (=> bs!573413 m!4186127))

(assert (=> b!3676574 d!1079535))

(declare-fun d!1079537 () Bool)

(assert (=> d!1079537 (not (matchR!5163 (regex!5835 (rule!8667 (_1!22457 lt!1283678))) lt!1283680))))

(declare-fun lt!1284001 () Unit!56608)

(declare-fun choose!21935 (Regex!10594 List!38901 C!21374) Unit!56608)

(assert (=> d!1079537 (= lt!1284001 (choose!21935 (regex!5835 (rule!8667 (_1!22457 lt!1283678))) lt!1283680 lt!1283710))))

(assert (=> d!1079537 (validRegex!4852 (regex!5835 (rule!8667 (_1!22457 lt!1283678))))))

(assert (=> d!1079537 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!783 (regex!5835 (rule!8667 (_1!22457 lt!1283678))) lt!1283680 lt!1283710) lt!1284001)))

(declare-fun bs!573414 () Bool)

(assert (= bs!573414 d!1079537))

(assert (=> bs!573414 m!4186279))

(declare-fun m!4186771 () Bool)

(assert (=> bs!573414 m!4186771))

(assert (=> bs!573414 m!4186551))

(assert (=> bm!266252 d!1079537))

(declare-fun d!1079539 () Bool)

(assert (=> d!1079539 (= (inv!52267 (tag!6633 (rule!8667 token!511))) (= (mod (str.len (value!186758 (tag!6633 (rule!8667 token!511)))) 2) 0))))

(assert (=> b!3676612 d!1079539))

(declare-fun d!1079541 () Bool)

(declare-fun res!1493725 () Bool)

(declare-fun e!2276878 () Bool)

(assert (=> d!1079541 (=> (not res!1493725) (not e!2276878))))

(declare-fun semiInverseModEq!2490 (Int Int) Bool)

(assert (=> d!1079541 (= res!1493725 (semiInverseModEq!2490 (toChars!7990 (transformation!5835 (rule!8667 token!511))) (toValue!8131 (transformation!5835 (rule!8667 token!511)))))))

(assert (=> d!1079541 (= (inv!52270 (transformation!5835 (rule!8667 token!511))) e!2276878)))

(declare-fun b!3677076 () Bool)

(declare-fun equivClasses!2389 (Int Int) Bool)

(assert (=> b!3677076 (= e!2276878 (equivClasses!2389 (toChars!7990 (transformation!5835 (rule!8667 token!511))) (toValue!8131 (transformation!5835 (rule!8667 token!511)))))))

(assert (= (and d!1079541 res!1493725) b!3677076))

(declare-fun m!4186773 () Bool)

(assert (=> d!1079541 m!4186773))

(declare-fun m!4186775 () Bool)

(assert (=> b!3677076 m!4186775))

(assert (=> b!3676612 d!1079541))

(declare-fun d!1079543 () Bool)

(declare-fun lt!1284002 () Int)

(assert (=> d!1079543 (= lt!1284002 (size!29646 (list!14409 lt!1283705)))))

(assert (=> d!1079543 (= lt!1284002 (size!29650 (c!635836 lt!1283705)))))

(assert (=> d!1079543 (= (size!29645 lt!1283705) lt!1284002)))

(declare-fun bs!573415 () Bool)

(assert (= bs!573415 d!1079543))

(assert (=> bs!573415 m!4186157))

(assert (=> bs!573415 m!4186157))

(declare-fun m!4186777 () Bool)

(assert (=> bs!573415 m!4186777))

(declare-fun m!4186779 () Bool)

(assert (=> bs!573415 m!4186779))

(assert (=> b!3676573 d!1079543))

(declare-fun d!1079545 () Bool)

(assert (=> d!1079545 (= (size!29644 (_1!22457 lt!1283678)) (size!29646 (originalCharacters!6549 (_1!22457 lt!1283678))))))

(declare-fun Unit!56648 () Unit!56608)

(assert (=> d!1079545 (= (lemmaCharactersSize!880 (_1!22457 lt!1283678)) Unit!56648)))

(declare-fun bs!573416 () Bool)

(assert (= bs!573416 d!1079545))

(declare-fun m!4186781 () Bool)

(assert (=> bs!573416 m!4186781))

(assert (=> b!3676573 d!1079545))

(declare-fun b!3677083 () Bool)

(declare-fun e!2276883 () Bool)

(assert (=> b!3677083 (= e!2276883 true)))

(declare-fun d!1079547 () Bool)

(assert (=> d!1079547 e!2276883))

(assert (= d!1079547 b!3677083))

(declare-fun lambda!124733 () Int)

(declare-fun order!21481 () Int)

(declare-fun dynLambda!16995 (Int Int) Int)

(assert (=> b!3677083 (< (dynLambda!16992 order!21475 (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) (dynLambda!16995 order!21481 lambda!124733))))

(assert (=> b!3677083 (< (dynLambda!16994 order!21479 (toChars!7990 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) (dynLambda!16995 order!21481 lambda!124733))))

(assert (=> d!1079547 (= (dynLambda!16991 (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678)))) lt!1283705) (dynLambda!16991 (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678)))) (seqFromList!4384 (originalCharacters!6549 (_1!22457 lt!1283678)))))))

(declare-fun lt!1284005 () Unit!56608)

(declare-fun Forall2of!405 (Int BalanceConc!23350 BalanceConc!23350) Unit!56608)

(assert (=> d!1079547 (= lt!1284005 (Forall2of!405 lambda!124733 lt!1283705 (seqFromList!4384 (originalCharacters!6549 (_1!22457 lt!1283678)))))))

(assert (=> d!1079547 (= (list!14409 lt!1283705) (list!14409 (seqFromList!4384 (originalCharacters!6549 (_1!22457 lt!1283678)))))))

(assert (=> d!1079547 (= (lemmaEqSameImage!1018 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))) lt!1283705 (seqFromList!4384 (originalCharacters!6549 (_1!22457 lt!1283678)))) lt!1284005)))

(declare-fun b_lambda!109191 () Bool)

(assert (=> (not b_lambda!109191) (not d!1079547)))

(declare-fun t!300262 () Bool)

(declare-fun tb!213109 () Bool)

(assert (=> (and b!3676601 (= (toValue!8131 (transformation!5835 rule!403)) (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) t!300262) tb!213109))

(declare-fun result!259320 () Bool)

(assert (=> tb!213109 (= result!259320 (inv!21 (dynLambda!16991 (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678)))) lt!1283705)))))

(declare-fun m!4186783 () Bool)

(assert (=> tb!213109 m!4186783))

(assert (=> d!1079547 t!300262))

(declare-fun b_and!274347 () Bool)

(assert (= b_and!274339 (and (=> t!300262 result!259320) b_and!274347)))

(declare-fun tb!213111 () Bool)

(declare-fun t!300264 () Bool)

(assert (=> (and b!3676585 (= (toValue!8131 (transformation!5835 (h!44198 rules!3307))) (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) t!300264) tb!213111))

(declare-fun result!259322 () Bool)

(assert (= result!259322 result!259320))

(assert (=> d!1079547 t!300264))

(declare-fun b_and!274349 () Bool)

(assert (= b_and!274341 (and (=> t!300264 result!259322) b_and!274349)))

(declare-fun t!300266 () Bool)

(declare-fun tb!213113 () Bool)

(assert (=> (and b!3676605 (= (toValue!8131 (transformation!5835 anOtherTypeRule!33)) (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) t!300266) tb!213113))

(declare-fun result!259324 () Bool)

(assert (= result!259324 result!259320))

(assert (=> d!1079547 t!300266))

(declare-fun b_and!274351 () Bool)

(assert (= b_and!274343 (and (=> t!300266 result!259324) b_and!274351)))

(declare-fun tb!213115 () Bool)

(declare-fun t!300268 () Bool)

(assert (=> (and b!3676592 (= (toValue!8131 (transformation!5835 (rule!8667 token!511))) (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) t!300268) tb!213115))

(declare-fun result!259326 () Bool)

(assert (= result!259326 result!259320))

(assert (=> d!1079547 t!300268))

(declare-fun b_and!274353 () Bool)

(assert (= b_and!274345 (and (=> t!300268 result!259326) b_and!274353)))

(declare-fun b_lambda!109193 () Bool)

(assert (=> (not b_lambda!109193) (not d!1079547)))

(declare-fun tb!213117 () Bool)

(declare-fun t!300270 () Bool)

(assert (=> (and b!3676601 (= (toValue!8131 (transformation!5835 rule!403)) (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) t!300270) tb!213117))

(declare-fun result!259328 () Bool)

(assert (=> tb!213117 (= result!259328 (inv!21 (dynLambda!16991 (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678)))) (seqFromList!4384 (originalCharacters!6549 (_1!22457 lt!1283678))))))))

(declare-fun m!4186785 () Bool)

(assert (=> tb!213117 m!4186785))

(assert (=> d!1079547 t!300270))

(declare-fun b_and!274355 () Bool)

(assert (= b_and!274347 (and (=> t!300270 result!259328) b_and!274355)))

(declare-fun t!300272 () Bool)

(declare-fun tb!213119 () Bool)

(assert (=> (and b!3676585 (= (toValue!8131 (transformation!5835 (h!44198 rules!3307))) (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) t!300272) tb!213119))

(declare-fun result!259330 () Bool)

(assert (= result!259330 result!259328))

(assert (=> d!1079547 t!300272))

(declare-fun b_and!274357 () Bool)

(assert (= b_and!274349 (and (=> t!300272 result!259330) b_and!274357)))

(declare-fun tb!213121 () Bool)

(declare-fun t!300274 () Bool)

(assert (=> (and b!3676605 (= (toValue!8131 (transformation!5835 anOtherTypeRule!33)) (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) t!300274) tb!213121))

(declare-fun result!259332 () Bool)

(assert (= result!259332 result!259328))

(assert (=> d!1079547 t!300274))

(declare-fun b_and!274359 () Bool)

(assert (= b_and!274351 (and (=> t!300274 result!259332) b_and!274359)))

(declare-fun t!300276 () Bool)

(declare-fun tb!213123 () Bool)

(assert (=> (and b!3676592 (= (toValue!8131 (transformation!5835 (rule!8667 token!511))) (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) t!300276) tb!213123))

(declare-fun result!259334 () Bool)

(assert (= result!259334 result!259328))

(assert (=> d!1079547 t!300276))

(declare-fun b_and!274361 () Bool)

(assert (= b_and!274353 (and (=> t!300276 result!259334) b_and!274361)))

(declare-fun m!4186787 () Bool)

(assert (=> d!1079547 m!4186787))

(assert (=> d!1079547 m!4186255))

(declare-fun m!4186789 () Bool)

(assert (=> d!1079547 m!4186789))

(assert (=> d!1079547 m!4186157))

(assert (=> d!1079547 m!4186255))

(declare-fun m!4186791 () Bool)

(assert (=> d!1079547 m!4186791))

(assert (=> d!1079547 m!4186255))

(declare-fun m!4186793 () Bool)

(assert (=> d!1079547 m!4186793))

(assert (=> b!3676573 d!1079547))

(declare-fun d!1079549 () Bool)

(assert (=> d!1079549 (= (seqFromList!4384 (originalCharacters!6549 (_1!22457 lt!1283678))) (fromListB!2026 (originalCharacters!6549 (_1!22457 lt!1283678))))))

(declare-fun bs!573417 () Bool)

(assert (= bs!573417 d!1079549))

(declare-fun m!4186795 () Bool)

(assert (=> bs!573417 m!4186795))

(assert (=> b!3676573 d!1079549))

(declare-fun bs!573418 () Bool)

(declare-fun d!1079551 () Bool)

(assert (= bs!573418 (and d!1079551 d!1079473)))

(declare-fun lambda!124734 () Int)

(assert (=> bs!573418 (= (and (= (toChars!7990 (transformation!5835 (rule!8667 (_1!22457 lt!1283678)))) (toChars!7990 (transformation!5835 rule!403))) (= (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678)))) (toValue!8131 (transformation!5835 rule!403)))) (= lambda!124734 lambda!124730))))

(declare-fun b!3677084 () Bool)

(declare-fun e!2276886 () Bool)

(assert (=> b!3677084 (= e!2276886 true)))

(assert (=> d!1079551 e!2276886))

(assert (= d!1079551 b!3677084))

(assert (=> b!3677084 (< (dynLambda!16992 order!21475 (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) (dynLambda!16993 order!21477 lambda!124734))))

(assert (=> b!3677084 (< (dynLambda!16994 order!21479 (toChars!7990 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) (dynLambda!16993 order!21477 lambda!124734))))

(assert (=> d!1079551 (= (list!14409 (dynLambda!16990 (toChars!7990 (transformation!5835 (rule!8667 (_1!22457 lt!1283678)))) (dynLambda!16991 (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678)))) lt!1283705))) (list!14409 lt!1283705))))

(declare-fun lt!1284006 () Unit!56608)

(assert (=> d!1079551 (= lt!1284006 (ForallOf!747 lambda!124734 lt!1283705))))

(assert (=> d!1079551 (= (lemmaSemiInverse!1584 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))) lt!1283705) lt!1284006)))

(declare-fun b_lambda!109195 () Bool)

(assert (=> (not b_lambda!109195) (not d!1079551)))

(declare-fun tb!213125 () Bool)

(declare-fun t!300278 () Bool)

(assert (=> (and b!3676601 (= (toChars!7990 (transformation!5835 rule!403)) (toChars!7990 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) t!300278) tb!213125))

(declare-fun e!2276887 () Bool)

(declare-fun b!3677085 () Bool)

(declare-fun tp!1118171 () Bool)

(assert (=> b!3677085 (= e!2276887 (and (inv!52274 (c!635836 (dynLambda!16990 (toChars!7990 (transformation!5835 (rule!8667 (_1!22457 lt!1283678)))) (dynLambda!16991 (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678)))) lt!1283705)))) tp!1118171))))

(declare-fun result!259336 () Bool)

(assert (=> tb!213125 (= result!259336 (and (inv!52275 (dynLambda!16990 (toChars!7990 (transformation!5835 (rule!8667 (_1!22457 lt!1283678)))) (dynLambda!16991 (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678)))) lt!1283705))) e!2276887))))

(assert (= tb!213125 b!3677085))

(declare-fun m!4186797 () Bool)

(assert (=> b!3677085 m!4186797))

(declare-fun m!4186799 () Bool)

(assert (=> tb!213125 m!4186799))

(assert (=> d!1079551 t!300278))

(declare-fun b_and!274363 () Bool)

(assert (= b_and!274331 (and (=> t!300278 result!259336) b_and!274363)))

(declare-fun t!300280 () Bool)

(declare-fun tb!213127 () Bool)

(assert (=> (and b!3676585 (= (toChars!7990 (transformation!5835 (h!44198 rules!3307))) (toChars!7990 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) t!300280) tb!213127))

(declare-fun result!259338 () Bool)

(assert (= result!259338 result!259336))

(assert (=> d!1079551 t!300280))

(declare-fun b_and!274365 () Bool)

(assert (= b_and!274333 (and (=> t!300280 result!259338) b_and!274365)))

(declare-fun t!300282 () Bool)

(declare-fun tb!213129 () Bool)

(assert (=> (and b!3676605 (= (toChars!7990 (transformation!5835 anOtherTypeRule!33)) (toChars!7990 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) t!300282) tb!213129))

(declare-fun result!259340 () Bool)

(assert (= result!259340 result!259336))

(assert (=> d!1079551 t!300282))

(declare-fun b_and!274367 () Bool)

(assert (= b_and!274335 (and (=> t!300282 result!259340) b_and!274367)))

(declare-fun t!300284 () Bool)

(declare-fun tb!213131 () Bool)

(assert (=> (and b!3676592 (= (toChars!7990 (transformation!5835 (rule!8667 token!511))) (toChars!7990 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) t!300284) tb!213131))

(declare-fun result!259342 () Bool)

(assert (= result!259342 result!259336))

(assert (=> d!1079551 t!300284))

(declare-fun b_and!274369 () Bool)

(assert (= b_and!274337 (and (=> t!300284 result!259342) b_and!274369)))

(declare-fun b_lambda!109197 () Bool)

(assert (=> (not b_lambda!109197) (not d!1079551)))

(assert (=> d!1079551 t!300262))

(declare-fun b_and!274371 () Bool)

(assert (= b_and!274355 (and (=> t!300262 result!259320) b_and!274371)))

(assert (=> d!1079551 t!300264))

(declare-fun b_and!274373 () Bool)

(assert (= b_and!274357 (and (=> t!300264 result!259322) b_and!274373)))

(assert (=> d!1079551 t!300266))

(declare-fun b_and!274375 () Bool)

(assert (= b_and!274359 (and (=> t!300266 result!259324) b_and!274375)))

(assert (=> d!1079551 t!300268))

(declare-fun b_and!274377 () Bool)

(assert (= b_and!274361 (and (=> t!300268 result!259326) b_and!274377)))

(assert (=> d!1079551 m!4186157))

(declare-fun m!4186801 () Bool)

(assert (=> d!1079551 m!4186801))

(declare-fun m!4186803 () Bool)

(assert (=> d!1079551 m!4186803))

(assert (=> d!1079551 m!4186787))

(declare-fun m!4186805 () Bool)

(assert (=> d!1079551 m!4186805))

(assert (=> d!1079551 m!4186787))

(assert (=> d!1079551 m!4186801))

(assert (=> b!3676573 d!1079551))

(declare-fun d!1079553 () Bool)

(assert (=> d!1079553 (= (apply!9337 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))) lt!1283705) (dynLambda!16991 (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678)))) lt!1283705))))

(declare-fun b_lambda!109199 () Bool)

(assert (=> (not b_lambda!109199) (not d!1079553)))

(assert (=> d!1079553 t!300262))

(declare-fun b_and!274379 () Bool)

(assert (= b_and!274371 (and (=> t!300262 result!259320) b_and!274379)))

(assert (=> d!1079553 t!300264))

(declare-fun b_and!274381 () Bool)

(assert (= b_and!274373 (and (=> t!300264 result!259322) b_and!274381)))

(assert (=> d!1079553 t!300266))

(declare-fun b_and!274383 () Bool)

(assert (= b_and!274375 (and (=> t!300266 result!259324) b_and!274383)))

(assert (=> d!1079553 t!300268))

(declare-fun b_and!274385 () Bool)

(assert (= b_and!274377 (and (=> t!300268 result!259326) b_and!274385)))

(assert (=> d!1079553 m!4186787))

(assert (=> b!3676573 d!1079553))

(declare-fun d!1079555 () Bool)

(assert (=> d!1079555 (= (inv!52267 (tag!6633 rule!403)) (= (mod (str.len (value!186758 (tag!6633 rule!403))) 2) 0))))

(assert (=> b!3676572 d!1079555))

(declare-fun d!1079557 () Bool)

(declare-fun res!1493728 () Bool)

(declare-fun e!2276888 () Bool)

(assert (=> d!1079557 (=> (not res!1493728) (not e!2276888))))

(assert (=> d!1079557 (= res!1493728 (semiInverseModEq!2490 (toChars!7990 (transformation!5835 rule!403)) (toValue!8131 (transformation!5835 rule!403))))))

(assert (=> d!1079557 (= (inv!52270 (transformation!5835 rule!403)) e!2276888)))

(declare-fun b!3677086 () Bool)

(assert (=> b!3677086 (= e!2276888 (equivClasses!2389 (toChars!7990 (transformation!5835 rule!403)) (toValue!8131 (transformation!5835 rule!403))))))

(assert (= (and d!1079557 res!1493728) b!3677086))

(declare-fun m!4186807 () Bool)

(assert (=> d!1079557 m!4186807))

(declare-fun m!4186809 () Bool)

(assert (=> b!3677086 m!4186809))

(assert (=> b!3676572 d!1079557))

(declare-fun b!3677095 () Bool)

(declare-fun e!2276895 () Int)

(assert (=> b!3677095 (= e!2276895 0)))

(declare-fun b!3677098 () Bool)

(declare-fun e!2276894 () Int)

(assert (=> b!3677098 (= e!2276894 (- 1))))

(declare-fun b!3677096 () Bool)

(assert (=> b!3677096 (= e!2276895 e!2276894)))

(declare-fun c!635956 () Bool)

(assert (=> b!3677096 (= c!635956 (and (is-Cons!38778 rules!3307) (not (= (h!44198 rules!3307) (rule!8667 (_1!22457 lt!1283678))))))))

(declare-fun d!1079559 () Bool)

(declare-fun lt!1284009 () Int)

(assert (=> d!1079559 (>= lt!1284009 0)))

(assert (=> d!1079559 (= lt!1284009 e!2276895)))

(declare-fun c!635955 () Bool)

(assert (=> d!1079559 (= c!635955 (and (is-Cons!38778 rules!3307) (= (h!44198 rules!3307) (rule!8667 (_1!22457 lt!1283678)))))))

(assert (=> d!1079559 (contains!7738 rules!3307 (rule!8667 (_1!22457 lt!1283678)))))

(assert (=> d!1079559 (= (getIndex!503 rules!3307 (rule!8667 (_1!22457 lt!1283678))) lt!1284009)))

(declare-fun b!3677097 () Bool)

(assert (=> b!3677097 (= e!2276894 (+ 1 (getIndex!503 (t!300217 rules!3307) (rule!8667 (_1!22457 lt!1283678)))))))

(assert (= (and d!1079559 c!635955) b!3677095))

(assert (= (and d!1079559 (not c!635955)) b!3677096))

(assert (= (and b!3677096 c!635956) b!3677097))

(assert (= (and b!3677096 (not c!635956)) b!3677098))

(declare-fun m!4186811 () Bool)

(assert (=> d!1079559 m!4186811))

(declare-fun m!4186813 () Bool)

(assert (=> b!3677097 m!4186813))

(assert (=> b!3676591 d!1079559))

(declare-fun b!3677099 () Bool)

(declare-fun e!2276897 () Int)

(assert (=> b!3677099 (= e!2276897 0)))

(declare-fun b!3677102 () Bool)

(declare-fun e!2276896 () Int)

(assert (=> b!3677102 (= e!2276896 (- 1))))

(declare-fun b!3677100 () Bool)

(assert (=> b!3677100 (= e!2276897 e!2276896)))

(declare-fun c!635958 () Bool)

(assert (=> b!3677100 (= c!635958 (and (is-Cons!38778 rules!3307) (not (= (h!44198 rules!3307) rule!403))))))

(declare-fun d!1079561 () Bool)

(declare-fun lt!1284010 () Int)

(assert (=> d!1079561 (>= lt!1284010 0)))

(assert (=> d!1079561 (= lt!1284010 e!2276897)))

(declare-fun c!635957 () Bool)

(assert (=> d!1079561 (= c!635957 (and (is-Cons!38778 rules!3307) (= (h!44198 rules!3307) rule!403)))))

(assert (=> d!1079561 (contains!7738 rules!3307 rule!403)))

(assert (=> d!1079561 (= (getIndex!503 rules!3307 rule!403) lt!1284010)))

(declare-fun b!3677101 () Bool)

(assert (=> b!3677101 (= e!2276896 (+ 1 (getIndex!503 (t!300217 rules!3307) rule!403)))))

(assert (= (and d!1079561 c!635957) b!3677099))

(assert (= (and d!1079561 (not c!635957)) b!3677100))

(assert (= (and b!3677100 c!635958) b!3677101))

(assert (= (and b!3677100 (not c!635958)) b!3677102))

(assert (=> d!1079561 m!4186165))

(declare-fun m!4186815 () Bool)

(assert (=> b!3677101 m!4186815))

(assert (=> b!3676591 d!1079561))

(declare-fun d!1079563 () Bool)

(assert (=> d!1079563 (= (rule!8667 (_1!22457 lt!1283678)) rule!403)))

(declare-fun lt!1284013 () Unit!56608)

(declare-fun choose!21938 (List!38902 Rule!11470 Rule!11470) Unit!56608)

(assert (=> d!1079563 (= lt!1284013 (choose!21938 rules!3307 (rule!8667 (_1!22457 lt!1283678)) rule!403))))

(assert (=> d!1079563 (contains!7738 rules!3307 (rule!8667 (_1!22457 lt!1283678)))))

(assert (=> d!1079563 (= (lemmaSameIndexThenSameElement!235 rules!3307 (rule!8667 (_1!22457 lt!1283678)) rule!403) lt!1284013)))

(declare-fun bs!573419 () Bool)

(assert (= bs!573419 d!1079563))

(declare-fun m!4186817 () Bool)

(assert (=> bs!573419 m!4186817))

(assert (=> bs!573419 m!4186811))

(assert (=> b!3676591 d!1079563))

(declare-fun d!1079565 () Bool)

(assert (=> d!1079565 (not (contains!7737 (usedCharacters!1047 (regex!5835 (rule!8667 (_1!22457 lt!1283678)))) lt!1283698))))

(declare-fun lt!1284014 () Unit!56608)

(assert (=> d!1079565 (= lt!1284014 (choose!21933 thiss!23823 rules!3307 rules!3307 (rule!8667 (_1!22457 lt!1283678)) rule!403 lt!1283698))))

(assert (=> d!1079565 (rulesInvariant!4821 thiss!23823 rules!3307)))

(assert (=> d!1079565 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!481 thiss!23823 rules!3307 rules!3307 (rule!8667 (_1!22457 lt!1283678)) rule!403 lt!1283698) lt!1284014)))

(declare-fun bs!573420 () Bool)

(assert (= bs!573420 d!1079565))

(assert (=> bs!573420 m!4186119))

(assert (=> bs!573420 m!4186119))

(assert (=> bs!573420 m!4186767))

(declare-fun m!4186819 () Bool)

(assert (=> bs!573420 m!4186819))

(assert (=> bs!573420 m!4186127))

(assert (=> b!3676571 d!1079565))

(declare-fun d!1079567 () Bool)

(declare-fun isEmpty!23028 (Option!8299) Bool)

(assert (=> d!1079567 (= (isDefined!6531 lt!1283671) (not (isEmpty!23028 lt!1283671)))))

(declare-fun bs!573421 () Bool)

(assert (= bs!573421 d!1079567))

(declare-fun m!4186821 () Bool)

(assert (=> bs!573421 m!4186821))

(assert (=> b!3676609 d!1079567))

(declare-fun b!3677121 () Bool)

(declare-fun res!1493744 () Bool)

(declare-fun e!2276905 () Bool)

(assert (=> b!3677121 (=> (not res!1493744) (not e!2276905))))

(declare-fun lt!1284029 () Option!8299)

(assert (=> b!3677121 (= res!1493744 (= (value!186759 (_1!22457 (get!12826 lt!1284029))) (apply!9337 (transformation!5835 (rule!8667 (_1!22457 (get!12826 lt!1284029)))) (seqFromList!4384 (originalCharacters!6549 (_1!22457 (get!12826 lt!1284029)))))))))

(declare-fun b!3677122 () Bool)

(declare-fun e!2276904 () Option!8299)

(declare-fun call!266317 () Option!8299)

(assert (=> b!3677122 (= e!2276904 call!266317)))

(declare-fun b!3677123 () Bool)

(declare-fun lt!1284027 () Option!8299)

(declare-fun lt!1284025 () Option!8299)

(assert (=> b!3677123 (= e!2276904 (ite (and (is-None!8298 lt!1284027) (is-None!8298 lt!1284025)) None!8298 (ite (is-None!8298 lt!1284025) lt!1284027 (ite (is-None!8298 lt!1284027) lt!1284025 (ite (>= (size!29644 (_1!22457 (v!38226 lt!1284027))) (size!29644 (_1!22457 (v!38226 lt!1284025)))) lt!1284027 lt!1284025)))))))

(assert (=> b!3677123 (= lt!1284027 call!266317)))

(assert (=> b!3677123 (= lt!1284025 (maxPrefix!2958 thiss!23823 (t!300217 rules!3307) lt!1283669))))

(declare-fun bm!266312 () Bool)

(assert (=> bm!266312 (= call!266317 (maxPrefixOneRule!2096 thiss!23823 (h!44198 rules!3307) lt!1283669))))

(declare-fun b!3677124 () Bool)

(assert (=> b!3677124 (= e!2276905 (contains!7738 rules!3307 (rule!8667 (_1!22457 (get!12826 lt!1284029)))))))

(declare-fun b!3677125 () Bool)

(declare-fun res!1493747 () Bool)

(assert (=> b!3677125 (=> (not res!1493747) (not e!2276905))))

(assert (=> b!3677125 (= res!1493747 (= (list!14409 (charsOf!3849 (_1!22457 (get!12826 lt!1284029)))) (originalCharacters!6549 (_1!22457 (get!12826 lt!1284029)))))))

(declare-fun b!3677126 () Bool)

(declare-fun res!1493746 () Bool)

(assert (=> b!3677126 (=> (not res!1493746) (not e!2276905))))

(assert (=> b!3677126 (= res!1493746 (= (++!9651 (list!14409 (charsOf!3849 (_1!22457 (get!12826 lt!1284029)))) (_2!22457 (get!12826 lt!1284029))) lt!1283669))))

(declare-fun d!1079569 () Bool)

(declare-fun e!2276906 () Bool)

(assert (=> d!1079569 e!2276906))

(declare-fun res!1493748 () Bool)

(assert (=> d!1079569 (=> res!1493748 e!2276906)))

(assert (=> d!1079569 (= res!1493748 (isEmpty!23028 lt!1284029))))

(assert (=> d!1079569 (= lt!1284029 e!2276904)))

(declare-fun c!635961 () Bool)

(assert (=> d!1079569 (= c!635961 (and (is-Cons!38778 rules!3307) (is-Nil!38778 (t!300217 rules!3307))))))

(declare-fun lt!1284026 () Unit!56608)

(declare-fun lt!1284028 () Unit!56608)

(assert (=> d!1079569 (= lt!1284026 lt!1284028)))

(assert (=> d!1079569 (isPrefix!3198 lt!1283669 lt!1283669)))

(declare-fun lemmaIsPrefixRefl!2013 (List!38901 List!38901) Unit!56608)

(assert (=> d!1079569 (= lt!1284028 (lemmaIsPrefixRefl!2013 lt!1283669 lt!1283669))))

(declare-fun rulesValidInductive!2076 (LexerInterface!5424 List!38902) Bool)

(assert (=> d!1079569 (rulesValidInductive!2076 thiss!23823 rules!3307)))

(assert (=> d!1079569 (= (maxPrefix!2958 thiss!23823 rules!3307 lt!1283669) lt!1284029)))

(declare-fun b!3677127 () Bool)

(assert (=> b!3677127 (= e!2276906 e!2276905)))

(declare-fun res!1493745 () Bool)

(assert (=> b!3677127 (=> (not res!1493745) (not e!2276905))))

(assert (=> b!3677127 (= res!1493745 (isDefined!6531 lt!1284029))))

(declare-fun b!3677128 () Bool)

(declare-fun res!1493743 () Bool)

(assert (=> b!3677128 (=> (not res!1493743) (not e!2276905))))

(assert (=> b!3677128 (= res!1493743 (< (size!29646 (_2!22457 (get!12826 lt!1284029))) (size!29646 lt!1283669)))))

(declare-fun b!3677129 () Bool)

(declare-fun res!1493749 () Bool)

(assert (=> b!3677129 (=> (not res!1493749) (not e!2276905))))

(assert (=> b!3677129 (= res!1493749 (matchR!5163 (regex!5835 (rule!8667 (_1!22457 (get!12826 lt!1284029)))) (list!14409 (charsOf!3849 (_1!22457 (get!12826 lt!1284029))))))))

(assert (= (and d!1079569 c!635961) b!3677122))

(assert (= (and d!1079569 (not c!635961)) b!3677123))

(assert (= (or b!3677122 b!3677123) bm!266312))

(assert (= (and d!1079569 (not res!1493748)) b!3677127))

(assert (= (and b!3677127 res!1493745) b!3677125))

(assert (= (and b!3677125 res!1493747) b!3677128))

(assert (= (and b!3677128 res!1493743) b!3677126))

(assert (= (and b!3677126 res!1493746) b!3677121))

(assert (= (and b!3677121 res!1493744) b!3677129))

(assert (= (and b!3677129 res!1493749) b!3677124))

(declare-fun m!4186823 () Bool)

(assert (=> b!3677124 m!4186823))

(declare-fun m!4186825 () Bool)

(assert (=> b!3677124 m!4186825))

(assert (=> b!3677126 m!4186823))

(declare-fun m!4186827 () Bool)

(assert (=> b!3677126 m!4186827))

(assert (=> b!3677126 m!4186827))

(declare-fun m!4186829 () Bool)

(assert (=> b!3677126 m!4186829))

(assert (=> b!3677126 m!4186829))

(declare-fun m!4186831 () Bool)

(assert (=> b!3677126 m!4186831))

(assert (=> b!3677128 m!4186823))

(declare-fun m!4186833 () Bool)

(assert (=> b!3677128 m!4186833))

(assert (=> b!3677128 m!4186243))

(declare-fun m!4186835 () Bool)

(assert (=> d!1079569 m!4186835))

(declare-fun m!4186837 () Bool)

(assert (=> d!1079569 m!4186837))

(declare-fun m!4186839 () Bool)

(assert (=> d!1079569 m!4186839))

(declare-fun m!4186841 () Bool)

(assert (=> d!1079569 m!4186841))

(assert (=> b!3677129 m!4186823))

(assert (=> b!3677129 m!4186827))

(assert (=> b!3677129 m!4186827))

(assert (=> b!3677129 m!4186829))

(assert (=> b!3677129 m!4186829))

(declare-fun m!4186843 () Bool)

(assert (=> b!3677129 m!4186843))

(declare-fun m!4186845 () Bool)

(assert (=> b!3677127 m!4186845))

(declare-fun m!4186847 () Bool)

(assert (=> b!3677123 m!4186847))

(assert (=> b!3677125 m!4186823))

(assert (=> b!3677125 m!4186827))

(assert (=> b!3677125 m!4186827))

(assert (=> b!3677125 m!4186829))

(declare-fun m!4186849 () Bool)

(assert (=> bm!266312 m!4186849))

(assert (=> b!3677121 m!4186823))

(declare-fun m!4186851 () Bool)

(assert (=> b!3677121 m!4186851))

(assert (=> b!3677121 m!4186851))

(declare-fun m!4186853 () Bool)

(assert (=> b!3677121 m!4186853))

(assert (=> b!3676609 d!1079569))

(declare-fun d!1079571 () Bool)

(assert (=> d!1079571 (= (list!14409 lt!1283682) (list!14411 (c!635836 lt!1283682)))))

(declare-fun bs!573422 () Bool)

(assert (= bs!573422 d!1079571))

(declare-fun m!4186855 () Bool)

(assert (=> bs!573422 m!4186855))

(assert (=> b!3676609 d!1079571))

(declare-fun d!1079573 () Bool)

(declare-fun lt!1284030 () BalanceConc!23350)

(assert (=> d!1079573 (= (list!14409 lt!1284030) (originalCharacters!6549 token!511))))

(assert (=> d!1079573 (= lt!1284030 (dynLambda!16990 (toChars!7990 (transformation!5835 (rule!8667 token!511))) (value!186759 token!511)))))

(assert (=> d!1079573 (= (charsOf!3849 token!511) lt!1284030)))

(declare-fun b_lambda!109201 () Bool)

(assert (=> (not b_lambda!109201) (not d!1079573)))

(declare-fun t!300286 () Bool)

(declare-fun tb!213133 () Bool)

(assert (=> (and b!3676601 (= (toChars!7990 (transformation!5835 rule!403)) (toChars!7990 (transformation!5835 (rule!8667 token!511)))) t!300286) tb!213133))

(declare-fun b!3677130 () Bool)

(declare-fun e!2276907 () Bool)

(declare-fun tp!1118172 () Bool)

(assert (=> b!3677130 (= e!2276907 (and (inv!52274 (c!635836 (dynLambda!16990 (toChars!7990 (transformation!5835 (rule!8667 token!511))) (value!186759 token!511)))) tp!1118172))))

(declare-fun result!259344 () Bool)

(assert (=> tb!213133 (= result!259344 (and (inv!52275 (dynLambda!16990 (toChars!7990 (transformation!5835 (rule!8667 token!511))) (value!186759 token!511))) e!2276907))))

(assert (= tb!213133 b!3677130))

(declare-fun m!4186857 () Bool)

(assert (=> b!3677130 m!4186857))

(declare-fun m!4186859 () Bool)

(assert (=> tb!213133 m!4186859))

(assert (=> d!1079573 t!300286))

(declare-fun b_and!274387 () Bool)

(assert (= b_and!274363 (and (=> t!300286 result!259344) b_and!274387)))

(declare-fun tb!213135 () Bool)

(declare-fun t!300288 () Bool)

(assert (=> (and b!3676585 (= (toChars!7990 (transformation!5835 (h!44198 rules!3307))) (toChars!7990 (transformation!5835 (rule!8667 token!511)))) t!300288) tb!213135))

(declare-fun result!259346 () Bool)

(assert (= result!259346 result!259344))

(assert (=> d!1079573 t!300288))

(declare-fun b_and!274389 () Bool)

(assert (= b_and!274365 (and (=> t!300288 result!259346) b_and!274389)))

(declare-fun t!300290 () Bool)

(declare-fun tb!213137 () Bool)

(assert (=> (and b!3676605 (= (toChars!7990 (transformation!5835 anOtherTypeRule!33)) (toChars!7990 (transformation!5835 (rule!8667 token!511)))) t!300290) tb!213137))

(declare-fun result!259348 () Bool)

(assert (= result!259348 result!259344))

(assert (=> d!1079573 t!300290))

(declare-fun b_and!274391 () Bool)

(assert (= b_and!274367 (and (=> t!300290 result!259348) b_and!274391)))

(declare-fun t!300292 () Bool)

(declare-fun tb!213139 () Bool)

(assert (=> (and b!3676592 (= (toChars!7990 (transformation!5835 (rule!8667 token!511))) (toChars!7990 (transformation!5835 (rule!8667 token!511)))) t!300292) tb!213139))

(declare-fun result!259350 () Bool)

(assert (= result!259350 result!259344))

(assert (=> d!1079573 t!300292))

(declare-fun b_and!274393 () Bool)

(assert (= b_and!274369 (and (=> t!300292 result!259350) b_and!274393)))

(declare-fun m!4186861 () Bool)

(assert (=> d!1079573 m!4186861))

(declare-fun m!4186863 () Bool)

(assert (=> d!1079573 m!4186863))

(assert (=> b!3676609 d!1079573))

(declare-fun d!1079575 () Bool)

(declare-fun lt!1284031 () Bool)

(assert (=> d!1079575 (= lt!1284031 (set.member lt!1283698 (content!5620 call!266256)))))

(declare-fun e!2276909 () Bool)

(assert (=> d!1079575 (= lt!1284031 e!2276909)))

(declare-fun res!1493751 () Bool)

(assert (=> d!1079575 (=> (not res!1493751) (not e!2276909))))

(assert (=> d!1079575 (= res!1493751 (is-Cons!38777 call!266256))))

(assert (=> d!1079575 (= (contains!7737 call!266256 lt!1283698) lt!1284031)))

(declare-fun b!3677131 () Bool)

(declare-fun e!2276908 () Bool)

(assert (=> b!3677131 (= e!2276909 e!2276908)))

(declare-fun res!1493750 () Bool)

(assert (=> b!3677131 (=> res!1493750 e!2276908)))

(assert (=> b!3677131 (= res!1493750 (= (h!44197 call!266256) lt!1283698))))

(declare-fun b!3677132 () Bool)

(assert (=> b!3677132 (= e!2276908 (contains!7737 (t!300216 call!266256) lt!1283698))))

(assert (= (and d!1079575 res!1493751) b!3677131))

(assert (= (and b!3677131 (not res!1493750)) b!3677132))

(declare-fun m!4186865 () Bool)

(assert (=> d!1079575 m!4186865))

(declare-fun m!4186867 () Bool)

(assert (=> d!1079575 m!4186867))

(declare-fun m!4186869 () Bool)

(assert (=> b!3677132 m!4186869))

(assert (=> bm!266249 d!1079575))

(declare-fun d!1079577 () Bool)

(declare-fun res!1493756 () Bool)

(declare-fun e!2276914 () Bool)

(assert (=> d!1079577 (=> res!1493756 e!2276914)))

(assert (=> d!1079577 (= res!1493756 (not (is-Cons!38778 rules!3307)))))

(assert (=> d!1079577 (= (sepAndNonSepRulesDisjointChars!2003 rules!3307 rules!3307) e!2276914)))

(declare-fun b!3677137 () Bool)

(declare-fun e!2276915 () Bool)

(assert (=> b!3677137 (= e!2276914 e!2276915)))

(declare-fun res!1493757 () Bool)

(assert (=> b!3677137 (=> (not res!1493757) (not e!2276915))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!914 (Rule!11470 List!38902) Bool)

(assert (=> b!3677137 (= res!1493757 (ruleDisjointCharsFromAllFromOtherType!914 (h!44198 rules!3307) rules!3307))))

(declare-fun b!3677138 () Bool)

(assert (=> b!3677138 (= e!2276915 (sepAndNonSepRulesDisjointChars!2003 rules!3307 (t!300217 rules!3307)))))

(assert (= (and d!1079577 (not res!1493756)) b!3677137))

(assert (= (and b!3677137 res!1493757) b!3677138))

(declare-fun m!4186871 () Bool)

(assert (=> b!3677137 m!4186871))

(declare-fun m!4186873 () Bool)

(assert (=> b!3677138 m!4186873))

(assert (=> b!3676589 d!1079577))

(declare-fun d!1079579 () Bool)

(assert (=> d!1079579 (not (matchR!5163 (regex!5835 rule!403) lt!1283669))))

(declare-fun lt!1284034 () Unit!56608)

(declare-fun choose!21941 (LexerInterface!5424 List!38902 Rule!11470 List!38901 List!38901 Rule!11470) Unit!56608)

(assert (=> d!1079579 (= lt!1284034 (choose!21941 thiss!23823 rules!3307 (rule!8667 (_1!22457 lt!1283678)) lt!1283669 lt!1283716 rule!403))))

(assert (=> d!1079579 (isPrefix!3198 lt!1283669 lt!1283716)))

(assert (=> d!1079579 (= (lemmaMaxPrefNoSmallerRuleMatches!243 thiss!23823 rules!3307 (rule!8667 (_1!22457 lt!1283678)) lt!1283669 lt!1283716 rule!403) lt!1284034)))

(declare-fun bs!573423 () Bool)

(assert (= bs!573423 d!1079579))

(assert (=> bs!573423 m!4186193))

(declare-fun m!4186875 () Bool)

(assert (=> bs!573423 m!4186875))

(assert (=> bs!573423 m!4186147))

(assert (=> b!3676608 d!1079579))

(declare-fun d!1079581 () Bool)

(assert (=> d!1079581 (= (isEmpty!23024 lt!1283669) (is-Nil!38777 lt!1283669))))

(assert (=> b!3676588 d!1079581))

(declare-fun d!1079583 () Bool)

(assert (=> d!1079583 (not (matchR!5163 (regex!5835 rule!403) lt!1283669))))

(declare-fun lt!1284035 () Unit!56608)

(assert (=> d!1079583 (= lt!1284035 (choose!21935 (regex!5835 rule!403) lt!1283669 lt!1283698))))

(assert (=> d!1079583 (validRegex!4852 (regex!5835 rule!403))))

(assert (=> d!1079583 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!783 (regex!5835 rule!403) lt!1283669 lt!1283698) lt!1284035)))

(declare-fun bs!573424 () Bool)

(assert (= bs!573424 d!1079583))

(assert (=> bs!573424 m!4186193))

(declare-fun m!4186877 () Bool)

(assert (=> bs!573424 m!4186877))

(declare-fun m!4186879 () Bool)

(assert (=> bs!573424 m!4186879))

(assert (=> b!3676607 d!1079583))

(declare-fun d!1079585 () Bool)

(assert (=> d!1079585 (isPrefix!3198 lt!1283669 (++!9651 lt!1283669 suffix!1395))))

(declare-fun lt!1284038 () Unit!56608)

(declare-fun choose!21942 (List!38901 List!38901) Unit!56608)

(assert (=> d!1079585 (= lt!1284038 (choose!21942 lt!1283669 suffix!1395))))

(assert (=> d!1079585 (= (lemmaConcatTwoListThenFirstIsPrefix!2117 lt!1283669 suffix!1395) lt!1284038)))

(declare-fun bs!573425 () Bool)

(assert (= bs!573425 d!1079585))

(assert (=> bs!573425 m!4186149))

(assert (=> bs!573425 m!4186149))

(declare-fun m!4186881 () Bool)

(assert (=> bs!573425 m!4186881))

(declare-fun m!4186883 () Bool)

(assert (=> bs!573425 m!4186883))

(assert (=> b!3676568 d!1079585))

(assert (=> b!3676568 d!1079443))

(declare-fun d!1079587 () Bool)

(declare-fun e!2276923 () Bool)

(assert (=> d!1079587 e!2276923))

(declare-fun res!1493766 () Bool)

(assert (=> d!1079587 (=> res!1493766 e!2276923)))

(declare-fun lt!1284041 () Bool)

(assert (=> d!1079587 (= res!1493766 (not lt!1284041))))

(declare-fun e!2276922 () Bool)

(assert (=> d!1079587 (= lt!1284041 e!2276922)))

(declare-fun res!1493768 () Bool)

(assert (=> d!1079587 (=> res!1493768 e!2276922)))

(assert (=> d!1079587 (= res!1493768 (is-Nil!38777 lt!1283680))))

(assert (=> d!1079587 (= (isPrefix!3198 lt!1283680 (++!9651 lt!1283680 (_2!22457 lt!1283678))) lt!1284041)))

(declare-fun b!3677149 () Bool)

(declare-fun e!2276924 () Bool)

(assert (=> b!3677149 (= e!2276924 (isPrefix!3198 (tail!5688 lt!1283680) (tail!5688 (++!9651 lt!1283680 (_2!22457 lt!1283678)))))))

(declare-fun b!3677150 () Bool)

(assert (=> b!3677150 (= e!2276923 (>= (size!29646 (++!9651 lt!1283680 (_2!22457 lt!1283678))) (size!29646 lt!1283680)))))

(declare-fun b!3677148 () Bool)

(declare-fun res!1493769 () Bool)

(assert (=> b!3677148 (=> (not res!1493769) (not e!2276924))))

(assert (=> b!3677148 (= res!1493769 (= (head!7883 lt!1283680) (head!7883 (++!9651 lt!1283680 (_2!22457 lt!1283678)))))))

(declare-fun b!3677147 () Bool)

(assert (=> b!3677147 (= e!2276922 e!2276924)))

(declare-fun res!1493767 () Bool)

(assert (=> b!3677147 (=> (not res!1493767) (not e!2276924))))

(assert (=> b!3677147 (= res!1493767 (not (is-Nil!38777 (++!9651 lt!1283680 (_2!22457 lt!1283678)))))))

(assert (= (and d!1079587 (not res!1493768)) b!3677147))

(assert (= (and b!3677147 res!1493767) b!3677148))

(assert (= (and b!3677148 res!1493769) b!3677149))

(assert (= (and d!1079587 (not res!1493766)) b!3677150))

(assert (=> b!3677149 m!4186539))

(assert (=> b!3677149 m!4186151))

(declare-fun m!4186885 () Bool)

(assert (=> b!3677149 m!4186885))

(assert (=> b!3677149 m!4186539))

(assert (=> b!3677149 m!4186885))

(declare-fun m!4186887 () Bool)

(assert (=> b!3677149 m!4186887))

(assert (=> b!3677150 m!4186151))

(declare-fun m!4186889 () Bool)

(assert (=> b!3677150 m!4186889))

(assert (=> b!3677150 m!4186185))

(assert (=> b!3677148 m!4186175))

(assert (=> b!3677148 m!4186151))

(declare-fun m!4186891 () Bool)

(assert (=> b!3677148 m!4186891))

(assert (=> b!3676568 d!1079587))

(declare-fun d!1079589 () Bool)

(declare-fun e!2276927 () Bool)

(assert (=> d!1079589 e!2276927))

(declare-fun res!1493774 () Bool)

(assert (=> d!1079589 (=> (not res!1493774) (not e!2276927))))

(assert (=> d!1079589 (= res!1493774 (isDefined!6530 (getRuleFromTag!1439 thiss!23823 rules!3307 (tag!6633 (rule!8667 (_1!22457 lt!1283678))))))))

(declare-fun lt!1284044 () Unit!56608)

(declare-fun choose!21943 (LexerInterface!5424 List!38902 List!38901 Token!11036) Unit!56608)

(assert (=> d!1079589 (= lt!1284044 (choose!21943 thiss!23823 rules!3307 lt!1283716 (_1!22457 lt!1283678)))))

(assert (=> d!1079589 (rulesInvariant!4821 thiss!23823 rules!3307)))

(assert (=> d!1079589 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1439 thiss!23823 rules!3307 lt!1283716 (_1!22457 lt!1283678)) lt!1284044)))

(declare-fun b!3677155 () Bool)

(declare-fun res!1493775 () Bool)

(assert (=> b!3677155 (=> (not res!1493775) (not e!2276927))))

(assert (=> b!3677155 (= res!1493775 (matchR!5163 (regex!5835 (get!12827 (getRuleFromTag!1439 thiss!23823 rules!3307 (tag!6633 (rule!8667 (_1!22457 lt!1283678)))))) (list!14409 (charsOf!3849 (_1!22457 lt!1283678)))))))

(declare-fun b!3677156 () Bool)

(assert (=> b!3677156 (= e!2276927 (= (rule!8667 (_1!22457 lt!1283678)) (get!12827 (getRuleFromTag!1439 thiss!23823 rules!3307 (tag!6633 (rule!8667 (_1!22457 lt!1283678)))))))))

(assert (= (and d!1079589 res!1493774) b!3677155))

(assert (= (and b!3677155 res!1493775) b!3677156))

(assert (=> d!1079589 m!4186139))

(assert (=> d!1079589 m!4186139))

(declare-fun m!4186893 () Bool)

(assert (=> d!1079589 m!4186893))

(declare-fun m!4186895 () Bool)

(assert (=> d!1079589 m!4186895))

(assert (=> d!1079589 m!4186127))

(assert (=> b!3677155 m!4186131))

(declare-fun m!4186897 () Bool)

(assert (=> b!3677155 m!4186897))

(assert (=> b!3677155 m!4186139))

(declare-fun m!4186899 () Bool)

(assert (=> b!3677155 m!4186899))

(assert (=> b!3677155 m!4186129))

(assert (=> b!3677155 m!4186131))

(assert (=> b!3677155 m!4186129))

(assert (=> b!3677155 m!4186139))

(assert (=> b!3677156 m!4186139))

(assert (=> b!3677156 m!4186139))

(assert (=> b!3677156 m!4186899))

(assert (=> b!3676568 d!1079589))

(declare-fun d!1079591 () Bool)

(assert (=> d!1079591 (isDefined!6531 (maxPrefix!2958 thiss!23823 rules!3307 (++!9651 lt!1283669 suffix!1395)))))

(declare-fun lt!1284122 () Unit!56608)

(declare-fun e!2276998 () Unit!56608)

(assert (=> d!1079591 (= lt!1284122 e!2276998)))

(declare-fun c!635985 () Bool)

(assert (=> d!1079591 (= c!635985 (isEmpty!23028 (maxPrefix!2958 thiss!23823 rules!3307 (++!9651 lt!1283669 suffix!1395))))))

(declare-fun lt!1284129 () Unit!56608)

(declare-fun lt!1284126 () Unit!56608)

(assert (=> d!1079591 (= lt!1284129 lt!1284126)))

(declare-fun e!2276997 () Bool)

(assert (=> d!1079591 e!2276997))

(declare-fun res!1493834 () Bool)

(assert (=> d!1079591 (=> (not res!1493834) (not e!2276997))))

(declare-fun lt!1284131 () Token!11036)

(assert (=> d!1079591 (= res!1493834 (isDefined!6530 (getRuleFromTag!1439 thiss!23823 rules!3307 (tag!6633 (rule!8667 lt!1284131)))))))

(assert (=> d!1079591 (= lt!1284126 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1439 thiss!23823 rules!3307 lt!1283669 lt!1284131))))

(declare-fun lt!1284120 () Unit!56608)

(declare-fun lt!1284118 () Unit!56608)

(assert (=> d!1079591 (= lt!1284120 lt!1284118)))

(declare-fun lt!1284125 () List!38901)

(assert (=> d!1079591 (isPrefix!3198 lt!1284125 (++!9651 lt!1283669 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!541 (List!38901 List!38901 List!38901) Unit!56608)

(assert (=> d!1079591 (= lt!1284118 (lemmaPrefixStaysPrefixWhenAddingToSuffix!541 lt!1284125 lt!1283669 suffix!1395))))

(assert (=> d!1079591 (= lt!1284125 (list!14409 (charsOf!3849 lt!1284131)))))

(declare-fun lt!1284115 () Unit!56608)

(declare-fun lt!1284124 () Unit!56608)

(assert (=> d!1079591 (= lt!1284115 lt!1284124)))

(declare-fun lt!1284123 () List!38901)

(declare-fun lt!1284128 () List!38901)

(assert (=> d!1079591 (isPrefix!3198 lt!1284123 (++!9651 lt!1284123 lt!1284128))))

(assert (=> d!1079591 (= lt!1284124 (lemmaConcatTwoListThenFirstIsPrefix!2117 lt!1284123 lt!1284128))))

(assert (=> d!1079591 (= lt!1284128 (_2!22457 (get!12826 (maxPrefix!2958 thiss!23823 rules!3307 lt!1283669))))))

(assert (=> d!1079591 (= lt!1284123 (list!14409 (charsOf!3849 lt!1284131)))))

(declare-datatypes ((List!38907 0))(
  ( (Nil!38783) (Cons!38783 (h!44203 Token!11036) (t!300382 List!38907)) )
))
(declare-fun head!7885 (List!38907) Token!11036)

(declare-datatypes ((IArray!23745 0))(
  ( (IArray!23746 (innerList!11930 List!38907)) )
))
(declare-datatypes ((Conc!11870 0))(
  ( (Node!11870 (left!30266 Conc!11870) (right!30596 Conc!11870) (csize!23970 Int) (cheight!12081 Int)) (Leaf!18399 (xs!15072 IArray!23745) (csize!23971 Int)) (Empty!11870) )
))
(declare-datatypes ((BalanceConc!23354 0))(
  ( (BalanceConc!23355 (c!636042 Conc!11870)) )
))
(declare-fun list!14413 (BalanceConc!23354) List!38907)

(declare-datatypes ((tuple2!38650 0))(
  ( (tuple2!38651 (_1!22459 BalanceConc!23354) (_2!22459 BalanceConc!23350)) )
))
(declare-fun lex!2573 (LexerInterface!5424 List!38902 BalanceConc!23350) tuple2!38650)

(assert (=> d!1079591 (= lt!1284131 (head!7885 (list!14413 (_1!22459 (lex!2573 thiss!23823 rules!3307 (seqFromList!4384 lt!1283669))))))))

(assert (=> d!1079591 (not (isEmpty!23025 rules!3307))))

(assert (=> d!1079591 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1102 thiss!23823 rules!3307 lt!1283669 suffix!1395) lt!1284122)))

(declare-fun b!3677274 () Bool)

(declare-fun Unit!56649 () Unit!56608)

(assert (=> b!3677274 (= e!2276998 Unit!56649)))

(declare-fun lt!1284127 () List!38901)

(assert (=> b!3677274 (= lt!1284127 (++!9651 lt!1283669 suffix!1395))))

(declare-fun lt!1284117 () Unit!56608)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!577 (LexerInterface!5424 Rule!11470 List!38902 List!38901) Unit!56608)

(assert (=> b!3677274 (= lt!1284117 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!577 thiss!23823 (rule!8667 lt!1284131) rules!3307 lt!1284127))))

(assert (=> b!3677274 (isEmpty!23028 (maxPrefixOneRule!2096 thiss!23823 (rule!8667 lt!1284131) lt!1284127))))

(declare-fun lt!1284116 () Unit!56608)

(assert (=> b!3677274 (= lt!1284116 lt!1284117)))

(declare-fun lt!1284130 () List!38901)

(assert (=> b!3677274 (= lt!1284130 (list!14409 (charsOf!3849 lt!1284131)))))

(declare-fun lt!1284121 () Unit!56608)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!565 (LexerInterface!5424 Rule!11470 List!38901 List!38901) Unit!56608)

(assert (=> b!3677274 (= lt!1284121 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!565 thiss!23823 (rule!8667 lt!1284131) lt!1284130 (++!9651 lt!1283669 suffix!1395)))))

(assert (=> b!3677274 (not (matchR!5163 (regex!5835 (rule!8667 lt!1284131)) lt!1284130))))

(declare-fun lt!1284119 () Unit!56608)

(assert (=> b!3677274 (= lt!1284119 lt!1284121)))

(assert (=> b!3677274 false))

(declare-fun b!3677275 () Bool)

(declare-fun Unit!56650 () Unit!56608)

(assert (=> b!3677275 (= e!2276998 Unit!56650)))

(declare-fun b!3677272 () Bool)

(declare-fun res!1493835 () Bool)

(assert (=> b!3677272 (=> (not res!1493835) (not e!2276997))))

(assert (=> b!3677272 (= res!1493835 (matchR!5163 (regex!5835 (get!12827 (getRuleFromTag!1439 thiss!23823 rules!3307 (tag!6633 (rule!8667 lt!1284131))))) (list!14409 (charsOf!3849 lt!1284131))))))

(declare-fun b!3677273 () Bool)

(assert (=> b!3677273 (= e!2276997 (= (rule!8667 lt!1284131) (get!12827 (getRuleFromTag!1439 thiss!23823 rules!3307 (tag!6633 (rule!8667 lt!1284131))))))))

(assert (= (and d!1079591 res!1493834) b!3677272))

(assert (= (and b!3677272 res!1493835) b!3677273))

(assert (= (and d!1079591 c!635985) b!3677274))

(assert (= (and d!1079591 (not c!635985)) b!3677275))

(declare-fun m!4187051 () Bool)

(assert (=> d!1079591 m!4187051))

(declare-fun m!4187053 () Bool)

(assert (=> d!1079591 m!4187053))

(declare-fun m!4187055 () Bool)

(assert (=> d!1079591 m!4187055))

(declare-fun m!4187057 () Bool)

(assert (=> d!1079591 m!4187057))

(declare-fun m!4187059 () Bool)

(assert (=> d!1079591 m!4187059))

(declare-fun m!4187061 () Bool)

(assert (=> d!1079591 m!4187061))

(declare-fun m!4187063 () Bool)

(assert (=> d!1079591 m!4187063))

(assert (=> d!1079591 m!4186247))

(declare-fun m!4187065 () Bool)

(assert (=> d!1079591 m!4187065))

(assert (=> d!1079591 m!4186149))

(declare-fun m!4187067 () Bool)

(assert (=> d!1079591 m!4187067))

(assert (=> d!1079591 m!4186149))

(assert (=> d!1079591 m!4187051))

(assert (=> d!1079591 m!4186149))

(assert (=> d!1079591 m!4186247))

(declare-fun m!4187069 () Bool)

(assert (=> d!1079591 m!4187069))

(declare-fun m!4187071 () Bool)

(assert (=> d!1079591 m!4187071))

(assert (=> d!1079591 m!4186207))

(declare-fun m!4187073 () Bool)

(assert (=> d!1079591 m!4187073))

(assert (=> d!1079591 m!4187063))

(declare-fun m!4187075 () Bool)

(assert (=> d!1079591 m!4187075))

(assert (=> d!1079591 m!4186117))

(assert (=> d!1079591 m!4187071))

(declare-fun m!4187077 () Bool)

(assert (=> d!1079591 m!4187077))

(assert (=> d!1079591 m!4187051))

(declare-fun m!4187079 () Bool)

(assert (=> d!1079591 m!4187079))

(assert (=> d!1079591 m!4186207))

(assert (=> d!1079591 m!4187057))

(declare-fun m!4187081 () Bool)

(assert (=> d!1079591 m!4187081))

(declare-fun m!4187083 () Bool)

(assert (=> d!1079591 m!4187083))

(assert (=> d!1079591 m!4187081))

(assert (=> b!3677274 m!4186149))

(declare-fun m!4187085 () Bool)

(assert (=> b!3677274 m!4187085))

(declare-fun m!4187087 () Bool)

(assert (=> b!3677274 m!4187087))

(assert (=> b!3677274 m!4187071))

(assert (=> b!3677274 m!4187077))

(declare-fun m!4187089 () Bool)

(assert (=> b!3677274 m!4187089))

(declare-fun m!4187091 () Bool)

(assert (=> b!3677274 m!4187091))

(assert (=> b!3677274 m!4187071))

(assert (=> b!3677274 m!4186149))

(assert (=> b!3677274 m!4187087))

(declare-fun m!4187093 () Bool)

(assert (=> b!3677274 m!4187093))

(assert (=> b!3677272 m!4187077))

(declare-fun m!4187095 () Bool)

(assert (=> b!3677272 m!4187095))

(assert (=> b!3677272 m!4187057))

(declare-fun m!4187097 () Bool)

(assert (=> b!3677272 m!4187097))

(assert (=> b!3677272 m!4187071))

(assert (=> b!3677272 m!4187077))

(assert (=> b!3677272 m!4187057))

(assert (=> b!3677272 m!4187071))

(assert (=> b!3677273 m!4187057))

(assert (=> b!3677273 m!4187057))

(assert (=> b!3677273 m!4187097))

(assert (=> b!3676568 d!1079591))

(declare-fun b!3677286 () Bool)

(declare-fun res!1493845 () Bool)

(declare-fun e!2277006 () Bool)

(assert (=> b!3677286 (=> (not res!1493845) (not e!2277006))))

(declare-fun lt!1284134 () List!38901)

(assert (=> b!3677286 (= res!1493845 (= (size!29646 lt!1284134) (+ (size!29646 lt!1283680) (size!29646 (_2!22457 lt!1283678)))))))

(declare-fun b!3677287 () Bool)

(assert (=> b!3677287 (= e!2277006 (or (not (= (_2!22457 lt!1283678) Nil!38777)) (= lt!1284134 lt!1283680)))))

(declare-fun b!3677284 () Bool)

(declare-fun e!2277005 () List!38901)

(assert (=> b!3677284 (= e!2277005 (_2!22457 lt!1283678))))

(declare-fun b!3677285 () Bool)

(assert (=> b!3677285 (= e!2277005 (Cons!38777 (h!44197 lt!1283680) (++!9651 (t!300216 lt!1283680) (_2!22457 lt!1283678))))))

(declare-fun d!1079649 () Bool)

(assert (=> d!1079649 e!2277006))

(declare-fun res!1493844 () Bool)

(assert (=> d!1079649 (=> (not res!1493844) (not e!2277006))))

(assert (=> d!1079649 (= res!1493844 (= (content!5620 lt!1284134) (set.union (content!5620 lt!1283680) (content!5620 (_2!22457 lt!1283678)))))))

(assert (=> d!1079649 (= lt!1284134 e!2277005)))

(declare-fun c!635986 () Bool)

(assert (=> d!1079649 (= c!635986 (is-Nil!38777 lt!1283680))))

(assert (=> d!1079649 (= (++!9651 lt!1283680 (_2!22457 lt!1283678)) lt!1284134)))

(assert (= (and d!1079649 c!635986) b!3677284))

(assert (= (and d!1079649 (not c!635986)) b!3677285))

(assert (= (and d!1079649 res!1493844) b!3677286))

(assert (= (and b!3677286 res!1493845) b!3677287))

(declare-fun m!4187099 () Bool)

(assert (=> b!3677286 m!4187099))

(assert (=> b!3677286 m!4186185))

(declare-fun m!4187101 () Bool)

(assert (=> b!3677286 m!4187101))

(declare-fun m!4187103 () Bool)

(assert (=> b!3677285 m!4187103))

(declare-fun m!4187105 () Bool)

(assert (=> d!1079649 m!4187105))

(assert (=> d!1079649 m!4186533))

(declare-fun m!4187107 () Bool)

(assert (=> d!1079649 m!4187107))

(assert (=> b!3676568 d!1079649))

(declare-fun d!1079651 () Bool)

(declare-fun e!2277008 () Bool)

(assert (=> d!1079651 e!2277008))

(declare-fun res!1493846 () Bool)

(assert (=> d!1079651 (=> res!1493846 e!2277008)))

(declare-fun lt!1284135 () Bool)

(assert (=> d!1079651 (= res!1493846 (not lt!1284135))))

(declare-fun e!2277007 () Bool)

(assert (=> d!1079651 (= lt!1284135 e!2277007)))

(declare-fun res!1493848 () Bool)

(assert (=> d!1079651 (=> res!1493848 e!2277007)))

(assert (=> d!1079651 (= res!1493848 (is-Nil!38777 lt!1283669))))

(assert (=> d!1079651 (= (isPrefix!3198 lt!1283669 lt!1283716) lt!1284135)))

(declare-fun b!3677290 () Bool)

(declare-fun e!2277009 () Bool)

(assert (=> b!3677290 (= e!2277009 (isPrefix!3198 (tail!5688 lt!1283669) (tail!5688 lt!1283716)))))

(declare-fun b!3677291 () Bool)

(assert (=> b!3677291 (= e!2277008 (>= (size!29646 lt!1283716) (size!29646 lt!1283669)))))

(declare-fun b!3677289 () Bool)

(declare-fun res!1493849 () Bool)

(assert (=> b!3677289 (=> (not res!1493849) (not e!2277009))))

(assert (=> b!3677289 (= res!1493849 (= (head!7883 lt!1283669) (head!7883 lt!1283716)))))

(declare-fun b!3677288 () Bool)

(assert (=> b!3677288 (= e!2277007 e!2277009)))

(declare-fun res!1493847 () Bool)

(assert (=> b!3677288 (=> (not res!1493847) (not e!2277009))))

(assert (=> b!3677288 (= res!1493847 (not (is-Nil!38777 lt!1283716)))))

(assert (= (and d!1079651 (not res!1493848)) b!3677288))

(assert (= (and b!3677288 res!1493847) b!3677289))

(assert (= (and b!3677289 res!1493849) b!3677290))

(assert (= (and d!1079651 (not res!1493846)) b!3677291))

(declare-fun m!4187109 () Bool)

(assert (=> b!3677290 m!4187109))

(assert (=> b!3677290 m!4186747))

(assert (=> b!3677290 m!4187109))

(assert (=> b!3677290 m!4186747))

(declare-fun m!4187111 () Bool)

(assert (=> b!3677290 m!4187111))

(assert (=> b!3677291 m!4186745))

(assert (=> b!3677291 m!4186243))

(declare-fun m!4187113 () Bool)

(assert (=> b!3677289 m!4187113))

(declare-fun m!4187115 () Bool)

(assert (=> b!3677289 m!4187115))

(assert (=> b!3676568 d!1079651))

(declare-fun b!3677296 () Bool)

(declare-fun res!1493855 () Bool)

(declare-fun e!2277014 () Bool)

(assert (=> b!3677296 (=> (not res!1493855) (not e!2277014))))

(declare-fun lt!1284141 () Option!8299)

(assert (=> b!3677296 (= res!1493855 (= (value!186759 (_1!22457 (get!12826 lt!1284141))) (apply!9337 (transformation!5835 (rule!8667 (_1!22457 (get!12826 lt!1284141)))) (seqFromList!4384 (originalCharacters!6549 (_1!22457 (get!12826 lt!1284141)))))))))

(declare-fun b!3677297 () Bool)

(declare-fun e!2277013 () Option!8299)

(declare-fun call!266321 () Option!8299)

(assert (=> b!3677297 (= e!2277013 call!266321)))

(declare-fun b!3677298 () Bool)

(declare-fun lt!1284139 () Option!8299)

(declare-fun lt!1284137 () Option!8299)

(assert (=> b!3677298 (= e!2277013 (ite (and (is-None!8298 lt!1284139) (is-None!8298 lt!1284137)) None!8298 (ite (is-None!8298 lt!1284137) lt!1284139 (ite (is-None!8298 lt!1284139) lt!1284137 (ite (>= (size!29644 (_1!22457 (v!38226 lt!1284139))) (size!29644 (_1!22457 (v!38226 lt!1284137)))) lt!1284139 lt!1284137)))))))

(assert (=> b!3677298 (= lt!1284139 call!266321)))

(assert (=> b!3677298 (= lt!1284137 (maxPrefix!2958 thiss!23823 (t!300217 rules!3307) lt!1283716))))

(declare-fun bm!266316 () Bool)

(assert (=> bm!266316 (= call!266321 (maxPrefixOneRule!2096 thiss!23823 (h!44198 rules!3307) lt!1283716))))

(declare-fun b!3677299 () Bool)

(assert (=> b!3677299 (= e!2277014 (contains!7738 rules!3307 (rule!8667 (_1!22457 (get!12826 lt!1284141)))))))

(declare-fun b!3677300 () Bool)

(declare-fun res!1493858 () Bool)

(assert (=> b!3677300 (=> (not res!1493858) (not e!2277014))))

(assert (=> b!3677300 (= res!1493858 (= (list!14409 (charsOf!3849 (_1!22457 (get!12826 lt!1284141)))) (originalCharacters!6549 (_1!22457 (get!12826 lt!1284141)))))))

(declare-fun b!3677301 () Bool)

(declare-fun res!1493857 () Bool)

(assert (=> b!3677301 (=> (not res!1493857) (not e!2277014))))

(assert (=> b!3677301 (= res!1493857 (= (++!9651 (list!14409 (charsOf!3849 (_1!22457 (get!12826 lt!1284141)))) (_2!22457 (get!12826 lt!1284141))) lt!1283716))))

(declare-fun d!1079653 () Bool)

(declare-fun e!2277015 () Bool)

(assert (=> d!1079653 e!2277015))

(declare-fun res!1493859 () Bool)

(assert (=> d!1079653 (=> res!1493859 e!2277015)))

(assert (=> d!1079653 (= res!1493859 (isEmpty!23028 lt!1284141))))

(assert (=> d!1079653 (= lt!1284141 e!2277013)))

(declare-fun c!635987 () Bool)

(assert (=> d!1079653 (= c!635987 (and (is-Cons!38778 rules!3307) (is-Nil!38778 (t!300217 rules!3307))))))

(declare-fun lt!1284138 () Unit!56608)

(declare-fun lt!1284140 () Unit!56608)

(assert (=> d!1079653 (= lt!1284138 lt!1284140)))

(assert (=> d!1079653 (isPrefix!3198 lt!1283716 lt!1283716)))

(assert (=> d!1079653 (= lt!1284140 (lemmaIsPrefixRefl!2013 lt!1283716 lt!1283716))))

(assert (=> d!1079653 (rulesValidInductive!2076 thiss!23823 rules!3307)))

(assert (=> d!1079653 (= (maxPrefix!2958 thiss!23823 rules!3307 lt!1283716) lt!1284141)))

(declare-fun b!3677302 () Bool)

(assert (=> b!3677302 (= e!2277015 e!2277014)))

(declare-fun res!1493856 () Bool)

(assert (=> b!3677302 (=> (not res!1493856) (not e!2277014))))

(assert (=> b!3677302 (= res!1493856 (isDefined!6531 lt!1284141))))

(declare-fun b!3677303 () Bool)

(declare-fun res!1493854 () Bool)

(assert (=> b!3677303 (=> (not res!1493854) (not e!2277014))))

(assert (=> b!3677303 (= res!1493854 (< (size!29646 (_2!22457 (get!12826 lt!1284141))) (size!29646 lt!1283716)))))

(declare-fun b!3677304 () Bool)

(declare-fun res!1493860 () Bool)

(assert (=> b!3677304 (=> (not res!1493860) (not e!2277014))))

(assert (=> b!3677304 (= res!1493860 (matchR!5163 (regex!5835 (rule!8667 (_1!22457 (get!12826 lt!1284141)))) (list!14409 (charsOf!3849 (_1!22457 (get!12826 lt!1284141))))))))

(assert (= (and d!1079653 c!635987) b!3677297))

(assert (= (and d!1079653 (not c!635987)) b!3677298))

(assert (= (or b!3677297 b!3677298) bm!266316))

(assert (= (and d!1079653 (not res!1493859)) b!3677302))

(assert (= (and b!3677302 res!1493856) b!3677300))

(assert (= (and b!3677300 res!1493858) b!3677303))

(assert (= (and b!3677303 res!1493854) b!3677301))

(assert (= (and b!3677301 res!1493857) b!3677296))

(assert (= (and b!3677296 res!1493855) b!3677304))

(assert (= (and b!3677304 res!1493860) b!3677299))

(declare-fun m!4187121 () Bool)

(assert (=> b!3677299 m!4187121))

(declare-fun m!4187123 () Bool)

(assert (=> b!3677299 m!4187123))

(assert (=> b!3677301 m!4187121))

(declare-fun m!4187125 () Bool)

(assert (=> b!3677301 m!4187125))

(assert (=> b!3677301 m!4187125))

(declare-fun m!4187127 () Bool)

(assert (=> b!3677301 m!4187127))

(assert (=> b!3677301 m!4187127))

(declare-fun m!4187129 () Bool)

(assert (=> b!3677301 m!4187129))

(assert (=> b!3677303 m!4187121))

(declare-fun m!4187131 () Bool)

(assert (=> b!3677303 m!4187131))

(assert (=> b!3677303 m!4186745))

(declare-fun m!4187133 () Bool)

(assert (=> d!1079653 m!4187133))

(declare-fun m!4187135 () Bool)

(assert (=> d!1079653 m!4187135))

(declare-fun m!4187137 () Bool)

(assert (=> d!1079653 m!4187137))

(assert (=> d!1079653 m!4186841))

(assert (=> b!3677304 m!4187121))

(assert (=> b!3677304 m!4187125))

(assert (=> b!3677304 m!4187125))

(assert (=> b!3677304 m!4187127))

(assert (=> b!3677304 m!4187127))

(declare-fun m!4187139 () Bool)

(assert (=> b!3677304 m!4187139))

(declare-fun m!4187141 () Bool)

(assert (=> b!3677302 m!4187141))

(declare-fun m!4187143 () Bool)

(assert (=> b!3677298 m!4187143))

(assert (=> b!3677300 m!4187121))

(assert (=> b!3677300 m!4187125))

(assert (=> b!3677300 m!4187125))

(assert (=> b!3677300 m!4187127))

(declare-fun m!4187145 () Bool)

(assert (=> bm!266316 m!4187145))

(assert (=> b!3677296 m!4187121))

(declare-fun m!4187147 () Bool)

(assert (=> b!3677296 m!4187147))

(assert (=> b!3677296 m!4187147))

(declare-fun m!4187149 () Bool)

(assert (=> b!3677296 m!4187149))

(assert (=> b!3676568 d!1079653))

(declare-fun d!1079657 () Bool)

(assert (=> d!1079657 (= (list!14409 lt!1283705) (list!14411 (c!635836 lt!1283705)))))

(declare-fun bs!573434 () Bool)

(assert (= bs!573434 d!1079657))

(declare-fun m!4187151 () Bool)

(assert (=> bs!573434 m!4187151))

(assert (=> b!3676568 d!1079657))

(declare-fun d!1079659 () Bool)

(declare-fun isEmpty!23030 (Option!8298) Bool)

(assert (=> d!1079659 (= (isDefined!6530 lt!1283686) (not (isEmpty!23030 lt!1283686)))))

(declare-fun bs!573435 () Bool)

(assert (= bs!573435 d!1079659))

(declare-fun m!4187153 () Bool)

(assert (=> bs!573435 m!4187153))

(assert (=> b!3676568 d!1079659))

(declare-fun d!1079661 () Bool)

(declare-fun e!2277017 () Bool)

(assert (=> d!1079661 e!2277017))

(declare-fun res!1493861 () Bool)

(assert (=> d!1079661 (=> res!1493861 e!2277017)))

(declare-fun lt!1284142 () Bool)

(assert (=> d!1079661 (= res!1493861 (not lt!1284142))))

(declare-fun e!2277016 () Bool)

(assert (=> d!1079661 (= lt!1284142 e!2277016)))

(declare-fun res!1493863 () Bool)

(assert (=> d!1079661 (=> res!1493863 e!2277016)))

(assert (=> d!1079661 (= res!1493863 (is-Nil!38777 lt!1283680))))

(assert (=> d!1079661 (= (isPrefix!3198 lt!1283680 lt!1283716) lt!1284142)))

(declare-fun b!3677307 () Bool)

(declare-fun e!2277018 () Bool)

(assert (=> b!3677307 (= e!2277018 (isPrefix!3198 (tail!5688 lt!1283680) (tail!5688 lt!1283716)))))

(declare-fun b!3677308 () Bool)

(assert (=> b!3677308 (= e!2277017 (>= (size!29646 lt!1283716) (size!29646 lt!1283680)))))

(declare-fun b!3677306 () Bool)

(declare-fun res!1493864 () Bool)

(assert (=> b!3677306 (=> (not res!1493864) (not e!2277018))))

(assert (=> b!3677306 (= res!1493864 (= (head!7883 lt!1283680) (head!7883 lt!1283716)))))

(declare-fun b!3677305 () Bool)

(assert (=> b!3677305 (= e!2277016 e!2277018)))

(declare-fun res!1493862 () Bool)

(assert (=> b!3677305 (=> (not res!1493862) (not e!2277018))))

(assert (=> b!3677305 (= res!1493862 (not (is-Nil!38777 lt!1283716)))))

(assert (= (and d!1079661 (not res!1493863)) b!3677305))

(assert (= (and b!3677305 res!1493862) b!3677306))

(assert (= (and b!3677306 res!1493864) b!3677307))

(assert (= (and d!1079661 (not res!1493861)) b!3677308))

(assert (=> b!3677307 m!4186539))

(assert (=> b!3677307 m!4186747))

(assert (=> b!3677307 m!4186539))

(assert (=> b!3677307 m!4186747))

(declare-fun m!4187155 () Bool)

(assert (=> b!3677307 m!4187155))

(assert (=> b!3677308 m!4186745))

(assert (=> b!3677308 m!4186185))

(assert (=> b!3677306 m!4186175))

(assert (=> b!3677306 m!4187115))

(assert (=> b!3676568 d!1079661))

(declare-fun b!3677311 () Bool)

(declare-fun res!1493866 () Bool)

(declare-fun e!2277020 () Bool)

(assert (=> b!3677311 (=> (not res!1493866) (not e!2277020))))

(declare-fun lt!1284143 () List!38901)

(assert (=> b!3677311 (= res!1493866 (= (size!29646 lt!1284143) (+ (size!29646 lt!1283669) (size!29646 suffix!1395))))))

(declare-fun b!3677312 () Bool)

(assert (=> b!3677312 (= e!2277020 (or (not (= suffix!1395 Nil!38777)) (= lt!1284143 lt!1283669)))))

(declare-fun b!3677309 () Bool)

(declare-fun e!2277019 () List!38901)

(assert (=> b!3677309 (= e!2277019 suffix!1395)))

(declare-fun b!3677310 () Bool)

(assert (=> b!3677310 (= e!2277019 (Cons!38777 (h!44197 lt!1283669) (++!9651 (t!300216 lt!1283669) suffix!1395)))))

(declare-fun d!1079663 () Bool)

(assert (=> d!1079663 e!2277020))

(declare-fun res!1493865 () Bool)

(assert (=> d!1079663 (=> (not res!1493865) (not e!2277020))))

(assert (=> d!1079663 (= res!1493865 (= (content!5620 lt!1284143) (set.union (content!5620 lt!1283669) (content!5620 suffix!1395))))))

(assert (=> d!1079663 (= lt!1284143 e!2277019)))

(declare-fun c!635988 () Bool)

(assert (=> d!1079663 (= c!635988 (is-Nil!38777 lt!1283669))))

(assert (=> d!1079663 (= (++!9651 lt!1283669 suffix!1395) lt!1284143)))

(assert (= (and d!1079663 c!635988) b!3677309))

(assert (= (and d!1079663 (not c!635988)) b!3677310))

(assert (= (and d!1079663 res!1493865) b!3677311))

(assert (= (and b!3677311 res!1493866) b!3677312))

(declare-fun m!4187157 () Bool)

(assert (=> b!3677311 m!4187157))

(assert (=> b!3677311 m!4186243))

(declare-fun m!4187159 () Bool)

(assert (=> b!3677311 m!4187159))

(declare-fun m!4187161 () Bool)

(assert (=> b!3677310 m!4187161))

(declare-fun m!4187163 () Bool)

(assert (=> d!1079663 m!4187163))

(assert (=> d!1079663 m!4186739))

(declare-fun m!4187165 () Bool)

(assert (=> d!1079663 m!4187165))

(assert (=> b!3676568 d!1079663))

(declare-fun d!1079665 () Bool)

(assert (=> d!1079665 (= (get!12826 lt!1283709) (v!38226 lt!1283709))))

(assert (=> b!3676568 d!1079665))

(declare-fun d!1079667 () Bool)

(assert (=> d!1079667 (isPrefix!3198 lt!1283680 (++!9651 lt!1283680 (_2!22457 lt!1283678)))))

(declare-fun lt!1284144 () Unit!56608)

(assert (=> d!1079667 (= lt!1284144 (choose!21942 lt!1283680 (_2!22457 lt!1283678)))))

(assert (=> d!1079667 (= (lemmaConcatTwoListThenFirstIsPrefix!2117 lt!1283680 (_2!22457 lt!1283678)) lt!1284144)))

(declare-fun bs!573436 () Bool)

(assert (= bs!573436 d!1079667))

(assert (=> bs!573436 m!4186151))

(assert (=> bs!573436 m!4186151))

(assert (=> bs!573436 m!4186153))

(declare-fun m!4187167 () Bool)

(assert (=> bs!573436 m!4187167))

(assert (=> b!3676568 d!1079667))

(declare-fun b!3677325 () Bool)

(declare-fun lt!1284153 () Unit!56608)

(declare-fun lt!1284152 () Unit!56608)

(assert (=> b!3677325 (= lt!1284153 lt!1284152)))

(assert (=> b!3677325 (rulesInvariant!4821 thiss!23823 (t!300217 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!620 (LexerInterface!5424 Rule!11470 List!38902) Unit!56608)

(assert (=> b!3677325 (= lt!1284152 (lemmaInvariantOnRulesThenOnTail!620 thiss!23823 (h!44198 rules!3307) (t!300217 rules!3307)))))

(declare-fun e!2277032 () Option!8298)

(assert (=> b!3677325 (= e!2277032 (getRuleFromTag!1439 thiss!23823 (t!300217 rules!3307) (tag!6633 (rule!8667 (_1!22457 lt!1283678)))))))

(declare-fun d!1079669 () Bool)

(declare-fun e!2277031 () Bool)

(assert (=> d!1079669 e!2277031))

(declare-fun res!1493872 () Bool)

(assert (=> d!1079669 (=> res!1493872 e!2277031)))

(declare-fun lt!1284151 () Option!8298)

(assert (=> d!1079669 (= res!1493872 (isEmpty!23030 lt!1284151))))

(declare-fun e!2277029 () Option!8298)

(assert (=> d!1079669 (= lt!1284151 e!2277029)))

(declare-fun c!635993 () Bool)

(assert (=> d!1079669 (= c!635993 (and (is-Cons!38778 rules!3307) (= (tag!6633 (h!44198 rules!3307)) (tag!6633 (rule!8667 (_1!22457 lt!1283678))))))))

(assert (=> d!1079669 (rulesInvariant!4821 thiss!23823 rules!3307)))

(assert (=> d!1079669 (= (getRuleFromTag!1439 thiss!23823 rules!3307 (tag!6633 (rule!8667 (_1!22457 lt!1283678)))) lt!1284151)))

(declare-fun b!3677326 () Bool)

(declare-fun e!2277030 () Bool)

(assert (=> b!3677326 (= e!2277031 e!2277030)))

(declare-fun res!1493871 () Bool)

(assert (=> b!3677326 (=> (not res!1493871) (not e!2277030))))

(assert (=> b!3677326 (= res!1493871 (contains!7738 rules!3307 (get!12827 lt!1284151)))))

(declare-fun b!3677327 () Bool)

(assert (=> b!3677327 (= e!2277032 None!8297)))

(declare-fun b!3677328 () Bool)

(assert (=> b!3677328 (= e!2277030 (= (tag!6633 (get!12827 lt!1284151)) (tag!6633 (rule!8667 (_1!22457 lt!1283678)))))))

(declare-fun b!3677329 () Bool)

(assert (=> b!3677329 (= e!2277029 (Some!8297 (h!44198 rules!3307)))))

(declare-fun b!3677330 () Bool)

(assert (=> b!3677330 (= e!2277029 e!2277032)))

(declare-fun c!635994 () Bool)

(assert (=> b!3677330 (= c!635994 (and (is-Cons!38778 rules!3307) (not (= (tag!6633 (h!44198 rules!3307)) (tag!6633 (rule!8667 (_1!22457 lt!1283678)))))))))

(assert (= (and d!1079669 c!635993) b!3677329))

(assert (= (and d!1079669 (not c!635993)) b!3677330))

(assert (= (and b!3677330 c!635994) b!3677325))

(assert (= (and b!3677330 (not c!635994)) b!3677327))

(assert (= (and d!1079669 (not res!1493872)) b!3677326))

(assert (= (and b!3677326 res!1493871) b!3677328))

(declare-fun m!4187169 () Bool)

(assert (=> b!3677325 m!4187169))

(declare-fun m!4187171 () Bool)

(assert (=> b!3677325 m!4187171))

(declare-fun m!4187173 () Bool)

(assert (=> b!3677325 m!4187173))

(declare-fun m!4187175 () Bool)

(assert (=> d!1079669 m!4187175))

(assert (=> d!1079669 m!4186127))

(declare-fun m!4187177 () Bool)

(assert (=> b!3677326 m!4187177))

(assert (=> b!3677326 m!4187177))

(declare-fun m!4187179 () Bool)

(assert (=> b!3677326 m!4187179))

(assert (=> b!3677328 m!4187177))

(assert (=> b!3676568 d!1079669))

(declare-fun d!1079671 () Bool)

(assert (=> d!1079671 (= (isEmpty!23025 rules!3307) (is-Nil!38778 rules!3307))))

(assert (=> b!3676586 d!1079671))

(declare-fun d!1079673 () Bool)

(assert (=> d!1079673 (not (contains!7737 (usedCharacters!1047 (regex!5835 (rule!8667 (_1!22457 lt!1283678)))) lt!1283710))))

(declare-fun lt!1284154 () Unit!56608)

(assert (=> d!1079673 (= lt!1284154 (choose!21934 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8667 (_1!22457 lt!1283678)) lt!1283710))))

(assert (=> d!1079673 (rulesInvariant!4821 thiss!23823 rules!3307)))

(assert (=> d!1079673 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!363 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8667 (_1!22457 lt!1283678)) lt!1283710) lt!1284154)))

(declare-fun bs!573437 () Bool)

(assert (= bs!573437 d!1079673))

(assert (=> bs!573437 m!4186119))

(assert (=> bs!573437 m!4186119))

(assert (=> bs!573437 m!4186763))

(declare-fun m!4187181 () Bool)

(assert (=> bs!573437 m!4187181))

(assert (=> bs!573437 m!4186127))

(assert (=> b!3676567 d!1079673))

(declare-fun d!1079675 () Bool)

(declare-fun res!1493877 () Bool)

(declare-fun e!2277035 () Bool)

(assert (=> d!1079675 (=> (not res!1493877) (not e!2277035))))

(assert (=> d!1079675 (= res!1493877 (not (isEmpty!23024 (originalCharacters!6549 token!511))))))

(assert (=> d!1079675 (= (inv!52271 token!511) e!2277035)))

(declare-fun b!3677335 () Bool)

(declare-fun res!1493878 () Bool)

(assert (=> b!3677335 (=> (not res!1493878) (not e!2277035))))

(assert (=> b!3677335 (= res!1493878 (= (originalCharacters!6549 token!511) (list!14409 (dynLambda!16990 (toChars!7990 (transformation!5835 (rule!8667 token!511))) (value!186759 token!511)))))))

(declare-fun b!3677336 () Bool)

(assert (=> b!3677336 (= e!2277035 (= (size!29644 token!511) (size!29646 (originalCharacters!6549 token!511))))))

(assert (= (and d!1079675 res!1493877) b!3677335))

(assert (= (and b!3677335 res!1493878) b!3677336))

(declare-fun b_lambda!109213 () Bool)

(assert (=> (not b_lambda!109213) (not b!3677335)))

(assert (=> b!3677335 t!300286))

(declare-fun b_and!274435 () Bool)

(assert (= b_and!274387 (and (=> t!300286 result!259344) b_and!274435)))

(assert (=> b!3677335 t!300288))

(declare-fun b_and!274437 () Bool)

(assert (= b_and!274389 (and (=> t!300288 result!259346) b_and!274437)))

(assert (=> b!3677335 t!300290))

(declare-fun b_and!274439 () Bool)

(assert (= b_and!274391 (and (=> t!300290 result!259348) b_and!274439)))

(assert (=> b!3677335 t!300292))

(declare-fun b_and!274441 () Bool)

(assert (= b_and!274393 (and (=> t!300292 result!259350) b_and!274441)))

(declare-fun m!4187183 () Bool)

(assert (=> d!1079675 m!4187183))

(assert (=> b!3677335 m!4186863))

(assert (=> b!3677335 m!4186863))

(declare-fun m!4187185 () Bool)

(assert (=> b!3677335 m!4187185))

(declare-fun m!4187187 () Bool)

(assert (=> b!3677336 m!4187187))

(assert (=> start!344820 d!1079675))

(declare-fun d!1079677 () Bool)

(assert (=> d!1079677 (= (inv!52267 (tag!6633 anOtherTypeRule!33)) (= (mod (str.len (value!186758 (tag!6633 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3676604 d!1079677))

(declare-fun d!1079679 () Bool)

(declare-fun res!1493879 () Bool)

(declare-fun e!2277036 () Bool)

(assert (=> d!1079679 (=> (not res!1493879) (not e!2277036))))

(assert (=> d!1079679 (= res!1493879 (semiInverseModEq!2490 (toChars!7990 (transformation!5835 anOtherTypeRule!33)) (toValue!8131 (transformation!5835 anOtherTypeRule!33))))))

(assert (=> d!1079679 (= (inv!52270 (transformation!5835 anOtherTypeRule!33)) e!2277036)))

(declare-fun b!3677337 () Bool)

(assert (=> b!3677337 (= e!2277036 (equivClasses!2389 (toChars!7990 (transformation!5835 anOtherTypeRule!33)) (toValue!8131 (transformation!5835 anOtherTypeRule!33))))))

(assert (= (and d!1079679 res!1493879) b!3677337))

(declare-fun m!4187189 () Bool)

(assert (=> d!1079679 m!4187189))

(declare-fun m!4187191 () Bool)

(assert (=> b!3677337 m!4187191))

(assert (=> b!3676604 d!1079679))

(declare-fun d!1079681 () Bool)

(declare-fun lt!1284155 () Bool)

(assert (=> d!1079681 (= lt!1284155 (set.member lt!1283710 (content!5620 call!266253)))))

(declare-fun e!2277038 () Bool)

(assert (=> d!1079681 (= lt!1284155 e!2277038)))

(declare-fun res!1493881 () Bool)

(assert (=> d!1079681 (=> (not res!1493881) (not e!2277038))))

(assert (=> d!1079681 (= res!1493881 (is-Cons!38777 call!266253))))

(assert (=> d!1079681 (= (contains!7737 call!266253 lt!1283710) lt!1284155)))

(declare-fun b!3677338 () Bool)

(declare-fun e!2277037 () Bool)

(assert (=> b!3677338 (= e!2277038 e!2277037)))

(declare-fun res!1493880 () Bool)

(assert (=> b!3677338 (=> res!1493880 e!2277037)))

(assert (=> b!3677338 (= res!1493880 (= (h!44197 call!266253) lt!1283710))))

(declare-fun b!3677339 () Bool)

(assert (=> b!3677339 (= e!2277037 (contains!7737 (t!300216 call!266253) lt!1283710))))

(assert (= (and d!1079681 res!1493881) b!3677338))

(assert (= (and b!3677338 (not res!1493880)) b!3677339))

(declare-fun m!4187193 () Bool)

(assert (=> d!1079681 m!4187193))

(declare-fun m!4187195 () Bool)

(assert (=> d!1079681 m!4187195))

(declare-fun m!4187197 () Bool)

(assert (=> b!3677339 m!4187197))

(assert (=> bm!266248 d!1079681))

(declare-fun d!1079683 () Bool)

(assert (=> d!1079683 (= (_2!22457 lt!1283678) lt!1283713)))

(declare-fun lt!1284158 () Unit!56608)

(declare-fun choose!21945 (List!38901 List!38901 List!38901 List!38901 List!38901) Unit!56608)

(assert (=> d!1079683 (= lt!1284158 (choose!21945 lt!1283680 (_2!22457 lt!1283678) lt!1283680 lt!1283713 lt!1283716))))

(assert (=> d!1079683 (isPrefix!3198 lt!1283680 lt!1283716)))

(assert (=> d!1079683 (= (lemmaSamePrefixThenSameSuffix!1525 lt!1283680 (_2!22457 lt!1283678) lt!1283680 lt!1283713 lt!1283716) lt!1284158)))

(declare-fun bs!573438 () Bool)

(assert (= bs!573438 d!1079683))

(declare-fun m!4187199 () Bool)

(assert (=> bs!573438 m!4187199))

(assert (=> bs!573438 m!4186159))

(assert (=> b!3676584 d!1079683))

(declare-fun b!3677358 () Bool)

(declare-fun e!2277047 () Bool)

(declare-fun lt!1284171 () Option!8299)

(assert (=> b!3677358 (= e!2277047 (= (size!29644 (_1!22457 (get!12826 lt!1284171))) (size!29646 (originalCharacters!6549 (_1!22457 (get!12826 lt!1284171))))))))

(declare-fun b!3677359 () Bool)

(declare-fun e!2277049 () Bool)

(declare-datatypes ((tuple2!38652 0))(
  ( (tuple2!38653 (_1!22460 List!38901) (_2!22460 List!38901)) )
))
(declare-fun findLongestMatchInner!1086 (Regex!10594 List!38901 Int List!38901 List!38901 Int) tuple2!38652)

(assert (=> b!3677359 (= e!2277049 (matchR!5163 (regex!5835 (rule!8667 (_1!22457 lt!1283678))) (_1!22460 (findLongestMatchInner!1086 (regex!5835 (rule!8667 (_1!22457 lt!1283678))) Nil!38777 (size!29646 Nil!38777) lt!1283716 lt!1283716 (size!29646 lt!1283716)))))))

(declare-fun b!3677360 () Bool)

(declare-fun e!2277048 () Option!8299)

(assert (=> b!3677360 (= e!2277048 None!8298)))

(declare-fun b!3677361 () Bool)

(declare-fun lt!1284169 () tuple2!38652)

(assert (=> b!3677361 (= e!2277048 (Some!8298 (tuple2!38647 (Token!11037 (apply!9337 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))) (seqFromList!4384 (_1!22460 lt!1284169))) (rule!8667 (_1!22457 lt!1283678)) (size!29645 (seqFromList!4384 (_1!22460 lt!1284169))) (_1!22460 lt!1284169)) (_2!22460 lt!1284169))))))

(declare-fun lt!1284172 () Unit!56608)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1059 (Regex!10594 List!38901) Unit!56608)

(assert (=> b!3677361 (= lt!1284172 (longestMatchIsAcceptedByMatchOrIsEmpty!1059 (regex!5835 (rule!8667 (_1!22457 lt!1283678))) lt!1283716))))

(declare-fun res!1493900 () Bool)

(assert (=> b!3677361 (= res!1493900 (isEmpty!23024 (_1!22460 (findLongestMatchInner!1086 (regex!5835 (rule!8667 (_1!22457 lt!1283678))) Nil!38777 (size!29646 Nil!38777) lt!1283716 lt!1283716 (size!29646 lt!1283716)))))))

(assert (=> b!3677361 (=> res!1493900 e!2277049)))

(assert (=> b!3677361 e!2277049))

(declare-fun lt!1284170 () Unit!56608)

(assert (=> b!3677361 (= lt!1284170 lt!1284172)))

(declare-fun lt!1284173 () Unit!56608)

(assert (=> b!3677361 (= lt!1284173 (lemmaSemiInverse!1584 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))) (seqFromList!4384 (_1!22460 lt!1284169))))))

(declare-fun b!3677362 () Bool)

(declare-fun res!1493899 () Bool)

(assert (=> b!3677362 (=> (not res!1493899) (not e!2277047))))

(assert (=> b!3677362 (= res!1493899 (= (rule!8667 (_1!22457 (get!12826 lt!1284171))) (rule!8667 (_1!22457 lt!1283678))))))

(declare-fun d!1079685 () Bool)

(declare-fun e!2277050 () Bool)

(assert (=> d!1079685 e!2277050))

(declare-fun res!1493901 () Bool)

(assert (=> d!1079685 (=> res!1493901 e!2277050)))

(assert (=> d!1079685 (= res!1493901 (isEmpty!23028 lt!1284171))))

(assert (=> d!1079685 (= lt!1284171 e!2277048)))

(declare-fun c!635997 () Bool)

(assert (=> d!1079685 (= c!635997 (isEmpty!23024 (_1!22460 lt!1284169)))))

(declare-fun findLongestMatch!1001 (Regex!10594 List!38901) tuple2!38652)

(assert (=> d!1079685 (= lt!1284169 (findLongestMatch!1001 (regex!5835 (rule!8667 (_1!22457 lt!1283678))) lt!1283716))))

(assert (=> d!1079685 (ruleValid!2099 thiss!23823 (rule!8667 (_1!22457 lt!1283678)))))

(assert (=> d!1079685 (= (maxPrefixOneRule!2096 thiss!23823 (rule!8667 (_1!22457 lt!1283678)) lt!1283716) lt!1284171)))

(declare-fun b!3677363 () Bool)

(declare-fun res!1493897 () Bool)

(assert (=> b!3677363 (=> (not res!1493897) (not e!2277047))))

(assert (=> b!3677363 (= res!1493897 (< (size!29646 (_2!22457 (get!12826 lt!1284171))) (size!29646 lt!1283716)))))

(declare-fun b!3677364 () Bool)

(assert (=> b!3677364 (= e!2277050 e!2277047)))

(declare-fun res!1493898 () Bool)

(assert (=> b!3677364 (=> (not res!1493898) (not e!2277047))))

(assert (=> b!3677364 (= res!1493898 (matchR!5163 (regex!5835 (rule!8667 (_1!22457 lt!1283678))) (list!14409 (charsOf!3849 (_1!22457 (get!12826 lt!1284171))))))))

(declare-fun b!3677365 () Bool)

(declare-fun res!1493896 () Bool)

(assert (=> b!3677365 (=> (not res!1493896) (not e!2277047))))

(assert (=> b!3677365 (= res!1493896 (= (++!9651 (list!14409 (charsOf!3849 (_1!22457 (get!12826 lt!1284171)))) (_2!22457 (get!12826 lt!1284171))) lt!1283716))))

(declare-fun b!3677366 () Bool)

(declare-fun res!1493902 () Bool)

(assert (=> b!3677366 (=> (not res!1493902) (not e!2277047))))

(assert (=> b!3677366 (= res!1493902 (= (value!186759 (_1!22457 (get!12826 lt!1284171))) (apply!9337 (transformation!5835 (rule!8667 (_1!22457 (get!12826 lt!1284171)))) (seqFromList!4384 (originalCharacters!6549 (_1!22457 (get!12826 lt!1284171)))))))))

(assert (= (and d!1079685 c!635997) b!3677360))

(assert (= (and d!1079685 (not c!635997)) b!3677361))

(assert (= (and b!3677361 (not res!1493900)) b!3677359))

(assert (= (and d!1079685 (not res!1493901)) b!3677364))

(assert (= (and b!3677364 res!1493898) b!3677365))

(assert (= (and b!3677365 res!1493896) b!3677363))

(assert (= (and b!3677363 res!1493897) b!3677362))

(assert (= (and b!3677362 res!1493899) b!3677366))

(assert (= (and b!3677366 res!1493902) b!3677358))

(declare-fun m!4187201 () Bool)

(assert (=> d!1079685 m!4187201))

(declare-fun m!4187203 () Bool)

(assert (=> d!1079685 m!4187203))

(declare-fun m!4187205 () Bool)

(assert (=> d!1079685 m!4187205))

(declare-fun m!4187207 () Bool)

(assert (=> d!1079685 m!4187207))

(declare-fun m!4187209 () Bool)

(assert (=> b!3677364 m!4187209))

(declare-fun m!4187211 () Bool)

(assert (=> b!3677364 m!4187211))

(assert (=> b!3677364 m!4187211))

(declare-fun m!4187213 () Bool)

(assert (=> b!3677364 m!4187213))

(assert (=> b!3677364 m!4187213))

(declare-fun m!4187215 () Bool)

(assert (=> b!3677364 m!4187215))

(assert (=> b!3677358 m!4187209))

(declare-fun m!4187217 () Bool)

(assert (=> b!3677358 m!4187217))

(assert (=> b!3677363 m!4187209))

(declare-fun m!4187219 () Bool)

(assert (=> b!3677363 m!4187219))

(assert (=> b!3677363 m!4186745))

(assert (=> b!3677365 m!4187209))

(assert (=> b!3677365 m!4187211))

(assert (=> b!3677365 m!4187211))

(assert (=> b!3677365 m!4187213))

(assert (=> b!3677365 m!4187213))

(declare-fun m!4187221 () Bool)

(assert (=> b!3677365 m!4187221))

(assert (=> b!3677366 m!4187209))

(declare-fun m!4187223 () Bool)

(assert (=> b!3677366 m!4187223))

(assert (=> b!3677366 m!4187223))

(declare-fun m!4187225 () Bool)

(assert (=> b!3677366 m!4187225))

(assert (=> b!3677362 m!4187209))

(assert (=> b!3677361 m!4186745))

(declare-fun m!4187227 () Bool)

(assert (=> b!3677361 m!4187227))

(declare-fun m!4187229 () Bool)

(assert (=> b!3677361 m!4187229))

(assert (=> b!3677361 m!4187227))

(declare-fun m!4187231 () Bool)

(assert (=> b!3677361 m!4187231))

(declare-fun m!4187233 () Bool)

(assert (=> b!3677361 m!4187233))

(declare-fun m!4187235 () Bool)

(assert (=> b!3677361 m!4187235))

(assert (=> b!3677361 m!4186745))

(declare-fun m!4187237 () Bool)

(assert (=> b!3677361 m!4187237))

(assert (=> b!3677361 m!4187227))

(declare-fun m!4187239 () Bool)

(assert (=> b!3677361 m!4187239))

(declare-fun m!4187241 () Bool)

(assert (=> b!3677361 m!4187241))

(assert (=> b!3677361 m!4187227))

(assert (=> b!3677361 m!4187235))

(assert (=> b!3677359 m!4187235))

(assert (=> b!3677359 m!4186745))

(assert (=> b!3677359 m!4187235))

(assert (=> b!3677359 m!4186745))

(assert (=> b!3677359 m!4187237))

(declare-fun m!4187243 () Bool)

(assert (=> b!3677359 m!4187243))

(assert (=> b!3676584 d!1079685))

(declare-fun d!1079687 () Bool)

(assert (=> d!1079687 (= (seqFromList!4384 lt!1283680) (fromListB!2026 lt!1283680))))

(declare-fun bs!573439 () Bool)

(assert (= bs!573439 d!1079687))

(declare-fun m!4187245 () Bool)

(assert (=> bs!573439 m!4187245))

(assert (=> b!3676584 d!1079687))

(declare-fun d!1079689 () Bool)

(declare-fun lt!1284174 () Int)

(assert (=> d!1079689 (>= lt!1284174 0)))

(declare-fun e!2277051 () Int)

(assert (=> d!1079689 (= lt!1284174 e!2277051)))

(declare-fun c!635998 () Bool)

(assert (=> d!1079689 (= c!635998 (is-Nil!38777 lt!1283680))))

(assert (=> d!1079689 (= (size!29646 lt!1283680) lt!1284174)))

(declare-fun b!3677367 () Bool)

(assert (=> b!3677367 (= e!2277051 0)))

(declare-fun b!3677368 () Bool)

(assert (=> b!3677368 (= e!2277051 (+ 1 (size!29646 (t!300216 lt!1283680))))))

(assert (= (and d!1079689 c!635998) b!3677367))

(assert (= (and d!1079689 (not c!635998)) b!3677368))

(declare-fun m!4187247 () Bool)

(assert (=> b!3677368 m!4187247))

(assert (=> b!3676584 d!1079689))

(declare-fun d!1079691 () Bool)

(assert (=> d!1079691 (= (maxPrefixOneRule!2096 thiss!23823 (rule!8667 (_1!22457 lt!1283678)) lt!1283716) (Some!8298 (tuple2!38647 (Token!11037 (apply!9337 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))) (seqFromList!4384 lt!1283680)) (rule!8667 (_1!22457 lt!1283678)) (size!29646 lt!1283680) lt!1283680) (_2!22457 lt!1283678))))))

(declare-fun lt!1284177 () Unit!56608)

(declare-fun choose!21946 (LexerInterface!5424 List!38902 List!38901 List!38901 List!38901 Rule!11470) Unit!56608)

(assert (=> d!1079691 (= lt!1284177 (choose!21946 thiss!23823 rules!3307 lt!1283680 lt!1283716 (_2!22457 lt!1283678) (rule!8667 (_1!22457 lt!1283678))))))

(assert (=> d!1079691 (not (isEmpty!23025 rules!3307))))

(assert (=> d!1079691 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1152 thiss!23823 rules!3307 lt!1283680 lt!1283716 (_2!22457 lt!1283678) (rule!8667 (_1!22457 lt!1283678))) lt!1284177)))

(declare-fun bs!573440 () Bool)

(assert (= bs!573440 d!1079691))

(assert (=> bs!573440 m!4186179))

(assert (=> bs!573440 m!4186181))

(assert (=> bs!573440 m!4186183))

(assert (=> bs!573440 m!4186185))

(declare-fun m!4187249 () Bool)

(assert (=> bs!573440 m!4187249))

(assert (=> bs!573440 m!4186117))

(assert (=> bs!573440 m!4186181))

(assert (=> b!3676584 d!1079691))

(declare-fun d!1079693 () Bool)

(declare-fun lt!1284178 () List!38901)

(assert (=> d!1079693 (= (++!9651 lt!1283680 lt!1284178) lt!1283716)))

(declare-fun e!2277052 () List!38901)

(assert (=> d!1079693 (= lt!1284178 e!2277052)))

(declare-fun c!635999 () Bool)

(assert (=> d!1079693 (= c!635999 (is-Cons!38777 lt!1283680))))

(assert (=> d!1079693 (>= (size!29646 lt!1283716) (size!29646 lt!1283680))))

(assert (=> d!1079693 (= (getSuffix!1751 lt!1283716 lt!1283680) lt!1284178)))

(declare-fun b!3677369 () Bool)

(assert (=> b!3677369 (= e!2277052 (getSuffix!1751 (tail!5688 lt!1283716) (t!300216 lt!1283680)))))

(declare-fun b!3677370 () Bool)

(assert (=> b!3677370 (= e!2277052 lt!1283716)))

(assert (= (and d!1079693 c!635999) b!3677369))

(assert (= (and d!1079693 (not c!635999)) b!3677370))

(declare-fun m!4187251 () Bool)

(assert (=> d!1079693 m!4187251))

(assert (=> d!1079693 m!4186745))

(assert (=> d!1079693 m!4186185))

(assert (=> b!3677369 m!4186747))

(assert (=> b!3677369 m!4186747))

(declare-fun m!4187253 () Bool)

(assert (=> b!3677369 m!4187253))

(assert (=> b!3676584 d!1079693))

(declare-fun d!1079695 () Bool)

(assert (=> d!1079695 (= (apply!9337 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))) (seqFromList!4384 lt!1283680)) (dynLambda!16991 (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678)))) (seqFromList!4384 lt!1283680)))))

(declare-fun b_lambda!109215 () Bool)

(assert (=> (not b_lambda!109215) (not d!1079695)))

(declare-fun tb!213165 () Bool)

(declare-fun t!300318 () Bool)

(assert (=> (and b!3676601 (= (toValue!8131 (transformation!5835 rule!403)) (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) t!300318) tb!213165))

(declare-fun result!259378 () Bool)

(assert (=> tb!213165 (= result!259378 (inv!21 (dynLambda!16991 (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678)))) (seqFromList!4384 lt!1283680))))))

(declare-fun m!4187255 () Bool)

(assert (=> tb!213165 m!4187255))

(assert (=> d!1079695 t!300318))

(declare-fun b_and!274443 () Bool)

(assert (= b_and!274379 (and (=> t!300318 result!259378) b_and!274443)))

(declare-fun tb!213167 () Bool)

(declare-fun t!300320 () Bool)

(assert (=> (and b!3676585 (= (toValue!8131 (transformation!5835 (h!44198 rules!3307))) (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) t!300320) tb!213167))

(declare-fun result!259380 () Bool)

(assert (= result!259380 result!259378))

(assert (=> d!1079695 t!300320))

(declare-fun b_and!274445 () Bool)

(assert (= b_and!274381 (and (=> t!300320 result!259380) b_and!274445)))

(declare-fun t!300322 () Bool)

(declare-fun tb!213169 () Bool)

(assert (=> (and b!3676605 (= (toValue!8131 (transformation!5835 anOtherTypeRule!33)) (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) t!300322) tb!213169))

(declare-fun result!259382 () Bool)

(assert (= result!259382 result!259378))

(assert (=> d!1079695 t!300322))

(declare-fun b_and!274447 () Bool)

(assert (= b_and!274383 (and (=> t!300322 result!259382) b_and!274447)))

(declare-fun t!300324 () Bool)

(declare-fun tb!213171 () Bool)

(assert (=> (and b!3676592 (= (toValue!8131 (transformation!5835 (rule!8667 token!511))) (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) t!300324) tb!213171))

(declare-fun result!259384 () Bool)

(assert (= result!259384 result!259378))

(assert (=> d!1079695 t!300324))

(declare-fun b_and!274449 () Bool)

(assert (= b_and!274385 (and (=> t!300324 result!259384) b_and!274449)))

(assert (=> d!1079695 m!4186181))

(declare-fun m!4187257 () Bool)

(assert (=> d!1079695 m!4187257))

(assert (=> b!3676584 d!1079695))

(declare-fun d!1079697 () Bool)

(assert (=> d!1079697 (not (matchR!5163 (regex!5835 (rule!8667 (_1!22457 lt!1283678))) lt!1283680))))

(declare-fun lt!1284179 () Unit!56608)

(assert (=> d!1079697 (= lt!1284179 (choose!21935 (regex!5835 (rule!8667 (_1!22457 lt!1283678))) lt!1283680 lt!1283698))))

(assert (=> d!1079697 (validRegex!4852 (regex!5835 (rule!8667 (_1!22457 lt!1283678))))))

(assert (=> d!1079697 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!783 (regex!5835 (rule!8667 (_1!22457 lt!1283678))) lt!1283680 lt!1283698) lt!1284179)))

(declare-fun bs!573441 () Bool)

(assert (= bs!573441 d!1079697))

(assert (=> bs!573441 m!4186279))

(declare-fun m!4187259 () Bool)

(assert (=> bs!573441 m!4187259))

(assert (=> bs!573441 m!4186551))

(assert (=> bm!266253 d!1079697))

(declare-fun d!1079699 () Bool)

(declare-fun c!636005 () Bool)

(assert (=> d!1079699 (= c!636005 (is-IntegerValue!18195 (value!186759 token!511)))))

(declare-fun e!2277061 () Bool)

(assert (=> d!1079699 (= (inv!21 (value!186759 token!511)) e!2277061)))

(declare-fun b!3677381 () Bool)

(declare-fun res!1493905 () Bool)

(declare-fun e!2277062 () Bool)

(assert (=> b!3677381 (=> res!1493905 e!2277062)))

(assert (=> b!3677381 (= res!1493905 (not (is-IntegerValue!18197 (value!186759 token!511))))))

(declare-fun e!2277060 () Bool)

(assert (=> b!3677381 (= e!2277060 e!2277062)))

(declare-fun b!3677382 () Bool)

(declare-fun inv!15 (TokenValue!6065) Bool)

(assert (=> b!3677382 (= e!2277062 (inv!15 (value!186759 token!511)))))

(declare-fun b!3677383 () Bool)

(declare-fun inv!17 (TokenValue!6065) Bool)

(assert (=> b!3677383 (= e!2277060 (inv!17 (value!186759 token!511)))))

(declare-fun b!3677384 () Bool)

(declare-fun inv!16 (TokenValue!6065) Bool)

(assert (=> b!3677384 (= e!2277061 (inv!16 (value!186759 token!511)))))

(declare-fun b!3677385 () Bool)

(assert (=> b!3677385 (= e!2277061 e!2277060)))

(declare-fun c!636004 () Bool)

(assert (=> b!3677385 (= c!636004 (is-IntegerValue!18196 (value!186759 token!511)))))

(assert (= (and d!1079699 c!636005) b!3677384))

(assert (= (and d!1079699 (not c!636005)) b!3677385))

(assert (= (and b!3677385 c!636004) b!3677383))

(assert (= (and b!3677385 (not c!636004)) b!3677381))

(assert (= (and b!3677381 (not res!1493905)) b!3677382))

(declare-fun m!4187261 () Bool)

(assert (=> b!3677382 m!4187261))

(declare-fun m!4187263 () Bool)

(assert (=> b!3677383 m!4187263))

(declare-fun m!4187265 () Bool)

(assert (=> b!3677384 m!4187265))

(assert (=> b!3676566 d!1079699))

(declare-fun d!1079701 () Bool)

(declare-fun res!1493908 () Bool)

(declare-fun e!2277065 () Bool)

(assert (=> d!1079701 (=> (not res!1493908) (not e!2277065))))

(declare-fun rulesValid!2248 (LexerInterface!5424 List!38902) Bool)

(assert (=> d!1079701 (= res!1493908 (rulesValid!2248 thiss!23823 rules!3307))))

(assert (=> d!1079701 (= (rulesInvariant!4821 thiss!23823 rules!3307) e!2277065)))

(declare-fun b!3677388 () Bool)

(declare-datatypes ((List!38908 0))(
  ( (Nil!38784) (Cons!38784 (h!44204 String!43661) (t!300383 List!38908)) )
))
(declare-fun noDuplicateTag!2244 (LexerInterface!5424 List!38902 List!38908) Bool)

(assert (=> b!3677388 (= e!2277065 (noDuplicateTag!2244 thiss!23823 rules!3307 Nil!38784))))

(assert (= (and d!1079701 res!1493908) b!3677388))

(declare-fun m!4187267 () Bool)

(assert (=> d!1079701 m!4187267))

(declare-fun m!4187269 () Bool)

(assert (=> b!3677388 m!4187269))

(assert (=> b!3676583 d!1079701))

(declare-fun d!1079703 () Bool)

(assert (=> d!1079703 (= (inv!52267 (tag!6633 (h!44198 rules!3307))) (= (mod (str.len (value!186758 (tag!6633 (h!44198 rules!3307)))) 2) 0))))

(assert (=> b!3676603 d!1079703))

(declare-fun d!1079705 () Bool)

(declare-fun res!1493909 () Bool)

(declare-fun e!2277066 () Bool)

(assert (=> d!1079705 (=> (not res!1493909) (not e!2277066))))

(assert (=> d!1079705 (= res!1493909 (semiInverseModEq!2490 (toChars!7990 (transformation!5835 (h!44198 rules!3307))) (toValue!8131 (transformation!5835 (h!44198 rules!3307)))))))

(assert (=> d!1079705 (= (inv!52270 (transformation!5835 (h!44198 rules!3307))) e!2277066)))

(declare-fun b!3677389 () Bool)

(assert (=> b!3677389 (= e!2277066 (equivClasses!2389 (toChars!7990 (transformation!5835 (h!44198 rules!3307))) (toValue!8131 (transformation!5835 (h!44198 rules!3307)))))))

(assert (= (and d!1079705 res!1493909) b!3677389))

(declare-fun m!4187271 () Bool)

(assert (=> d!1079705 m!4187271))

(declare-fun m!4187273 () Bool)

(assert (=> b!3677389 m!4187273))

(assert (=> b!3676603 d!1079705))

(declare-fun d!1079707 () Bool)

(declare-fun lt!1284180 () Bool)

(assert (=> d!1079707 (= lt!1284180 (set.member lt!1283710 (content!5620 lt!1283691)))))

(declare-fun e!2277068 () Bool)

(assert (=> d!1079707 (= lt!1284180 e!2277068)))

(declare-fun res!1493911 () Bool)

(assert (=> d!1079707 (=> (not res!1493911) (not e!2277068))))

(assert (=> d!1079707 (= res!1493911 (is-Cons!38777 lt!1283691))))

(assert (=> d!1079707 (= (contains!7737 lt!1283691 lt!1283710) lt!1284180)))

(declare-fun b!3677390 () Bool)

(declare-fun e!2277067 () Bool)

(assert (=> b!3677390 (= e!2277068 e!2277067)))

(declare-fun res!1493910 () Bool)

(assert (=> b!3677390 (=> res!1493910 e!2277067)))

(assert (=> b!3677390 (= res!1493910 (= (h!44197 lt!1283691) lt!1283710))))

(declare-fun b!3677391 () Bool)

(assert (=> b!3677391 (= e!2277067 (contains!7737 (t!300216 lt!1283691) lt!1283710))))

(assert (= (and d!1079707 res!1493911) b!3677390))

(assert (= (and b!3677390 (not res!1493910)) b!3677391))

(assert (=> d!1079707 m!4186721))

(declare-fun m!4187275 () Bool)

(assert (=> d!1079707 m!4187275))

(declare-fun m!4187277 () Bool)

(assert (=> b!3677391 m!4187277))

(assert (=> b!3676581 d!1079707))

(declare-fun d!1079709 () Bool)

(assert (=> d!1079709 (= (head!7883 suffix!1395) (h!44197 suffix!1395))))

(assert (=> b!3676581 d!1079709))

(declare-fun call!266322 () List!38901)

(declare-fun c!636008 () Bool)

(declare-fun call!266324 () List!38901)

(declare-fun bm!266317 () Bool)

(declare-fun call!266323 () List!38901)

(assert (=> bm!266317 (= call!266322 (++!9651 (ite c!636008 call!266323 call!266324) (ite c!636008 call!266324 call!266323)))))

(declare-fun b!3677392 () Bool)

(declare-fun e!2277072 () List!38901)

(assert (=> b!3677392 (= e!2277072 Nil!38777)))

(declare-fun b!3677393 () Bool)

(declare-fun e!2277071 () List!38901)

(assert (=> b!3677393 (= e!2277071 call!266322)))

(declare-fun b!3677394 () Bool)

(declare-fun e!2277069 () List!38901)

(assert (=> b!3677394 (= e!2277069 e!2277071)))

(assert (=> b!3677394 (= c!636008 (is-Union!10594 (regex!5835 rule!403)))))

(declare-fun b!3677395 () Bool)

(assert (=> b!3677395 (= e!2277071 call!266322)))

(declare-fun b!3677396 () Bool)

(declare-fun c!636006 () Bool)

(assert (=> b!3677396 (= c!636006 (is-Star!10594 (regex!5835 rule!403)))))

(declare-fun e!2277070 () List!38901)

(assert (=> b!3677396 (= e!2277070 e!2277069)))

(declare-fun bm!266318 () Bool)

(assert (=> bm!266318 (= call!266323 (usedCharacters!1047 (ite c!636008 (regOne!21701 (regex!5835 rule!403)) (regTwo!21700 (regex!5835 rule!403)))))))

(declare-fun b!3677397 () Bool)

(assert (=> b!3677397 (= e!2277072 e!2277070)))

(declare-fun c!636009 () Bool)

(assert (=> b!3677397 (= c!636009 (is-ElementMatch!10594 (regex!5835 rule!403)))))

(declare-fun bm!266319 () Bool)

(declare-fun call!266325 () List!38901)

(assert (=> bm!266319 (= call!266324 call!266325)))

(declare-fun d!1079711 () Bool)

(declare-fun c!636007 () Bool)

(assert (=> d!1079711 (= c!636007 (or (is-EmptyExpr!10594 (regex!5835 rule!403)) (is-EmptyLang!10594 (regex!5835 rule!403))))))

(assert (=> d!1079711 (= (usedCharacters!1047 (regex!5835 rule!403)) e!2277072)))

(declare-fun b!3677398 () Bool)

(assert (=> b!3677398 (= e!2277070 (Cons!38777 (c!635835 (regex!5835 rule!403)) Nil!38777))))

(declare-fun b!3677399 () Bool)

(assert (=> b!3677399 (= e!2277069 call!266325)))

(declare-fun bm!266320 () Bool)

(assert (=> bm!266320 (= call!266325 (usedCharacters!1047 (ite c!636006 (reg!10923 (regex!5835 rule!403)) (ite c!636008 (regTwo!21701 (regex!5835 rule!403)) (regOne!21700 (regex!5835 rule!403))))))))

(assert (= (and d!1079711 c!636007) b!3677392))

(assert (= (and d!1079711 (not c!636007)) b!3677397))

(assert (= (and b!3677397 c!636009) b!3677398))

(assert (= (and b!3677397 (not c!636009)) b!3677396))

(assert (= (and b!3677396 c!636006) b!3677399))

(assert (= (and b!3677396 (not c!636006)) b!3677394))

(assert (= (and b!3677394 c!636008) b!3677393))

(assert (= (and b!3677394 (not c!636008)) b!3677395))

(assert (= (or b!3677393 b!3677395) bm!266318))

(assert (= (or b!3677393 b!3677395) bm!266319))

(assert (= (or b!3677393 b!3677395) bm!266317))

(assert (= (or b!3677399 bm!266319) bm!266320))

(declare-fun m!4187279 () Bool)

(assert (=> bm!266317 m!4187279))

(declare-fun m!4187281 () Bool)

(assert (=> bm!266318 m!4187281))

(declare-fun m!4187283 () Bool)

(assert (=> bm!266320 m!4187283))

(assert (=> b!3676581 d!1079711))

(declare-fun b!3677400 () Bool)

(declare-fun res!1493912 () Bool)

(declare-fun e!2277075 () Bool)

(assert (=> b!3677400 (=> (not res!1493912) (not e!2277075))))

(assert (=> b!3677400 (= res!1493912 (isEmpty!23024 (tail!5688 lt!1283669)))))

(declare-fun b!3677401 () Bool)

(declare-fun e!2277079 () Bool)

(declare-fun e!2277073 () Bool)

(assert (=> b!3677401 (= e!2277079 e!2277073)))

(declare-fun res!1493919 () Bool)

(assert (=> b!3677401 (=> (not res!1493919) (not e!2277073))))

(declare-fun lt!1284199 () Bool)

(assert (=> b!3677401 (= res!1493919 (not lt!1284199))))

(declare-fun b!3677402 () Bool)

(declare-fun res!1493917 () Bool)

(assert (=> b!3677402 (=> res!1493917 e!2277079)))

(assert (=> b!3677402 (= res!1493917 (not (is-ElementMatch!10594 (regex!5835 rule!403))))))

(declare-fun e!2277078 () Bool)

(assert (=> b!3677402 (= e!2277078 e!2277079)))

(declare-fun b!3677403 () Bool)

(declare-fun e!2277077 () Bool)

(assert (=> b!3677403 (= e!2277077 (matchR!5163 (derivativeStep!3239 (regex!5835 rule!403) (head!7883 lt!1283669)) (tail!5688 lt!1283669)))))

(declare-fun d!1079713 () Bool)

(declare-fun e!2277074 () Bool)

(assert (=> d!1079713 e!2277074))

(declare-fun c!636011 () Bool)

(assert (=> d!1079713 (= c!636011 (is-EmptyExpr!10594 (regex!5835 rule!403)))))

(assert (=> d!1079713 (= lt!1284199 e!2277077)))

(declare-fun c!636010 () Bool)

(assert (=> d!1079713 (= c!636010 (isEmpty!23024 lt!1283669))))

(assert (=> d!1079713 (validRegex!4852 (regex!5835 rule!403))))

(assert (=> d!1079713 (= (matchR!5163 (regex!5835 rule!403) lt!1283669) lt!1284199)))

(declare-fun bm!266321 () Bool)

(declare-fun call!266326 () Bool)

(assert (=> bm!266321 (= call!266326 (isEmpty!23024 lt!1283669))))

(declare-fun b!3677404 () Bool)

(declare-fun res!1493915 () Bool)

(declare-fun e!2277076 () Bool)

(assert (=> b!3677404 (=> res!1493915 e!2277076)))

(assert (=> b!3677404 (= res!1493915 (not (isEmpty!23024 (tail!5688 lt!1283669))))))

(declare-fun b!3677405 () Bool)

(assert (=> b!3677405 (= e!2277075 (= (head!7883 lt!1283669) (c!635835 (regex!5835 rule!403))))))

(declare-fun b!3677406 () Bool)

(assert (=> b!3677406 (= e!2277077 (nullable!3690 (regex!5835 rule!403)))))

(declare-fun b!3677407 () Bool)

(declare-fun res!1493913 () Bool)

(assert (=> b!3677407 (=> (not res!1493913) (not e!2277075))))

(assert (=> b!3677407 (= res!1493913 (not call!266326))))

(declare-fun b!3677408 () Bool)

(declare-fun res!1493916 () Bool)

(assert (=> b!3677408 (=> res!1493916 e!2277079)))

(assert (=> b!3677408 (= res!1493916 e!2277075)))

(declare-fun res!1493918 () Bool)

(assert (=> b!3677408 (=> (not res!1493918) (not e!2277075))))

(assert (=> b!3677408 (= res!1493918 lt!1284199)))

(declare-fun b!3677409 () Bool)

(assert (=> b!3677409 (= e!2277076 (not (= (head!7883 lt!1283669) (c!635835 (regex!5835 rule!403)))))))

(declare-fun b!3677410 () Bool)

(assert (=> b!3677410 (= e!2277078 (not lt!1284199))))

(declare-fun b!3677411 () Bool)

(assert (=> b!3677411 (= e!2277074 e!2277078)))

(declare-fun c!636012 () Bool)

(assert (=> b!3677411 (= c!636012 (is-EmptyLang!10594 (regex!5835 rule!403)))))

(declare-fun b!3677412 () Bool)

(assert (=> b!3677412 (= e!2277074 (= lt!1284199 call!266326))))

(declare-fun b!3677413 () Bool)

(assert (=> b!3677413 (= e!2277073 e!2277076)))

(declare-fun res!1493914 () Bool)

(assert (=> b!3677413 (=> res!1493914 e!2277076)))

(assert (=> b!3677413 (= res!1493914 call!266326)))

(assert (= (and d!1079713 c!636010) b!3677406))

(assert (= (and d!1079713 (not c!636010)) b!3677403))

(assert (= (and d!1079713 c!636011) b!3677412))

(assert (= (and d!1079713 (not c!636011)) b!3677411))

(assert (= (and b!3677411 c!636012) b!3677410))

(assert (= (and b!3677411 (not c!636012)) b!3677402))

(assert (= (and b!3677402 (not res!1493917)) b!3677408))

(assert (= (and b!3677408 res!1493918) b!3677407))

(assert (= (and b!3677407 res!1493913) b!3677400))

(assert (= (and b!3677400 res!1493912) b!3677405))

(assert (= (and b!3677408 (not res!1493916)) b!3677401))

(assert (= (and b!3677401 res!1493919) b!3677413))

(assert (= (and b!3677413 (not res!1493914)) b!3677404))

(assert (= (and b!3677404 (not res!1493915)) b!3677409))

(assert (= (or b!3677412 b!3677407 b!3677413) bm!266321))

(assert (=> b!3677409 m!4187113))

(assert (=> b!3677400 m!4187109))

(assert (=> b!3677400 m!4187109))

(declare-fun m!4187285 () Bool)

(assert (=> b!3677400 m!4187285))

(assert (=> bm!266321 m!4186275))

(assert (=> b!3677404 m!4187109))

(assert (=> b!3677404 m!4187109))

(assert (=> b!3677404 m!4187285))

(assert (=> b!3677403 m!4187113))

(assert (=> b!3677403 m!4187113))

(declare-fun m!4187287 () Bool)

(assert (=> b!3677403 m!4187287))

(assert (=> b!3677403 m!4187109))

(assert (=> b!3677403 m!4187287))

(assert (=> b!3677403 m!4187109))

(declare-fun m!4187289 () Bool)

(assert (=> b!3677403 m!4187289))

(declare-fun m!4187291 () Bool)

(assert (=> b!3677406 m!4187291))

(assert (=> d!1079713 m!4186275))

(assert (=> d!1079713 m!4186879))

(assert (=> b!3677405 m!4187113))

(assert (=> b!3676563 d!1079713))

(declare-fun d!1079715 () Bool)

(declare-fun res!1493928 () Bool)

(declare-fun e!2277086 () Bool)

(assert (=> d!1079715 (=> (not res!1493928) (not e!2277086))))

(assert (=> d!1079715 (= res!1493928 (validRegex!4852 (regex!5835 rule!403)))))

(assert (=> d!1079715 (= (ruleValid!2099 thiss!23823 rule!403) e!2277086)))

(declare-fun b!3677426 () Bool)

(declare-fun res!1493929 () Bool)

(assert (=> b!3677426 (=> (not res!1493929) (not e!2277086))))

(assert (=> b!3677426 (= res!1493929 (not (nullable!3690 (regex!5835 rule!403))))))

(declare-fun b!3677427 () Bool)

(assert (=> b!3677427 (= e!2277086 (not (= (tag!6633 rule!403) (String!43662 ""))))))

(assert (= (and d!1079715 res!1493928) b!3677426))

(assert (= (and b!3677426 res!1493929) b!3677427))

(assert (=> d!1079715 m!4186879))

(assert (=> b!3677426 m!4187291))

(assert (=> b!3676563 d!1079715))

(declare-fun d!1079717 () Bool)

(assert (=> d!1079717 (ruleValid!2099 thiss!23823 rule!403)))

(declare-fun lt!1284218 () Unit!56608)

(declare-fun choose!21950 (LexerInterface!5424 Rule!11470 List!38902) Unit!56608)

(assert (=> d!1079717 (= lt!1284218 (choose!21950 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1079717 (contains!7738 rules!3307 rule!403)))

(assert (=> d!1079717 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1253 thiss!23823 rule!403 rules!3307) lt!1284218)))

(declare-fun bs!573442 () Bool)

(assert (= bs!573442 d!1079717))

(assert (=> bs!573442 m!4186195))

(declare-fun m!4187293 () Bool)

(assert (=> bs!573442 m!4187293))

(assert (=> bs!573442 m!4186165))

(assert (=> b!3676563 d!1079717))

(declare-fun d!1079719 () Bool)

(assert (=> d!1079719 (not (matchR!5163 (regex!5835 (rule!8667 (_1!22457 lt!1283678))) lt!1283669))))

(declare-fun lt!1284219 () Unit!56608)

(assert (=> d!1079719 (= lt!1284219 (choose!21941 thiss!23823 rules!3307 rule!403 lt!1283669 lt!1283669 (rule!8667 (_1!22457 lt!1283678))))))

(assert (=> d!1079719 (isPrefix!3198 lt!1283669 lt!1283669)))

(assert (=> d!1079719 (= (lemmaMaxPrefNoSmallerRuleMatches!243 thiss!23823 rules!3307 rule!403 lt!1283669 lt!1283669 (rule!8667 (_1!22457 lt!1283678))) lt!1284219)))

(declare-fun bs!573443 () Bool)

(assert (= bs!573443 d!1079719))

(assert (=> bs!573443 m!4186213))

(declare-fun m!4187295 () Bool)

(assert (=> bs!573443 m!4187295))

(assert (=> bs!573443 m!4186837))

(assert (=> b!3676580 d!1079719))

(declare-fun d!1079721 () Bool)

(assert (=> d!1079721 (isEmpty!23024 (getSuffix!1751 lt!1283669 lt!1283669))))

(declare-fun lt!1284239 () Unit!56608)

(declare-fun choose!21951 (List!38901) Unit!56608)

(assert (=> d!1079721 (= lt!1284239 (choose!21951 lt!1283669))))

(assert (=> d!1079721 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!215 lt!1283669) lt!1284239)))

(declare-fun bs!573444 () Bool)

(assert (= bs!573444 d!1079721))

(assert (=> bs!573444 m!4186217))

(assert (=> bs!573444 m!4186217))

(assert (=> bs!573444 m!4186219))

(declare-fun m!4187307 () Bool)

(assert (=> bs!573444 m!4187307))

(assert (=> b!3676580 d!1079721))

(declare-fun d!1079723 () Bool)

(assert (=> d!1079723 (= (isEmpty!23024 (getSuffix!1751 lt!1283669 lt!1283669)) (is-Nil!38777 (getSuffix!1751 lt!1283669 lt!1283669)))))

(assert (=> b!3676580 d!1079723))

(declare-fun d!1079725 () Bool)

(declare-fun lt!1284240 () List!38901)

(assert (=> d!1079725 (= (++!9651 lt!1283669 lt!1284240) lt!1283669)))

(declare-fun e!2277089 () List!38901)

(assert (=> d!1079725 (= lt!1284240 e!2277089)))

(declare-fun c!636016 () Bool)

(assert (=> d!1079725 (= c!636016 (is-Cons!38777 lt!1283669))))

(assert (=> d!1079725 (>= (size!29646 lt!1283669) (size!29646 lt!1283669))))

(assert (=> d!1079725 (= (getSuffix!1751 lt!1283669 lt!1283669) lt!1284240)))

(declare-fun b!3677432 () Bool)

(assert (=> b!3677432 (= e!2277089 (getSuffix!1751 (tail!5688 lt!1283669) (t!300216 lt!1283669)))))

(declare-fun b!3677433 () Bool)

(assert (=> b!3677433 (= e!2277089 lt!1283669)))

(assert (= (and d!1079725 c!636016) b!3677432))

(assert (= (and d!1079725 (not c!636016)) b!3677433))

(declare-fun m!4187321 () Bool)

(assert (=> d!1079725 m!4187321))

(assert (=> d!1079725 m!4186243))

(assert (=> d!1079725 m!4186243))

(assert (=> b!3677432 m!4187109))

(assert (=> b!3677432 m!4187109))

(declare-fun m!4187325 () Bool)

(assert (=> b!3677432 m!4187325))

(assert (=> b!3676580 d!1079725))

(declare-fun b!3677434 () Bool)

(declare-fun res!1493932 () Bool)

(declare-fun e!2277092 () Bool)

(assert (=> b!3677434 (=> (not res!1493932) (not e!2277092))))

(assert (=> b!3677434 (= res!1493932 (isEmpty!23024 (tail!5688 lt!1283669)))))

(declare-fun b!3677435 () Bool)

(declare-fun e!2277096 () Bool)

(declare-fun e!2277090 () Bool)

(assert (=> b!3677435 (= e!2277096 e!2277090)))

(declare-fun res!1493939 () Bool)

(assert (=> b!3677435 (=> (not res!1493939) (not e!2277090))))

(declare-fun lt!1284241 () Bool)

(assert (=> b!3677435 (= res!1493939 (not lt!1284241))))

(declare-fun b!3677436 () Bool)

(declare-fun res!1493937 () Bool)

(assert (=> b!3677436 (=> res!1493937 e!2277096)))

(assert (=> b!3677436 (= res!1493937 (not (is-ElementMatch!10594 (regex!5835 (rule!8667 (_1!22457 lt!1283678))))))))

(declare-fun e!2277095 () Bool)

(assert (=> b!3677436 (= e!2277095 e!2277096)))

(declare-fun b!3677437 () Bool)

(declare-fun e!2277094 () Bool)

(assert (=> b!3677437 (= e!2277094 (matchR!5163 (derivativeStep!3239 (regex!5835 (rule!8667 (_1!22457 lt!1283678))) (head!7883 lt!1283669)) (tail!5688 lt!1283669)))))

(declare-fun d!1079727 () Bool)

(declare-fun e!2277091 () Bool)

(assert (=> d!1079727 e!2277091))

(declare-fun c!636018 () Bool)

(assert (=> d!1079727 (= c!636018 (is-EmptyExpr!10594 (regex!5835 (rule!8667 (_1!22457 lt!1283678)))))))

(assert (=> d!1079727 (= lt!1284241 e!2277094)))

(declare-fun c!636017 () Bool)

(assert (=> d!1079727 (= c!636017 (isEmpty!23024 lt!1283669))))

(assert (=> d!1079727 (validRegex!4852 (regex!5835 (rule!8667 (_1!22457 lt!1283678))))))

(assert (=> d!1079727 (= (matchR!5163 (regex!5835 (rule!8667 (_1!22457 lt!1283678))) lt!1283669) lt!1284241)))

(declare-fun bm!266322 () Bool)

(declare-fun call!266327 () Bool)

(assert (=> bm!266322 (= call!266327 (isEmpty!23024 lt!1283669))))

(declare-fun b!3677438 () Bool)

(declare-fun res!1493935 () Bool)

(declare-fun e!2277093 () Bool)

(assert (=> b!3677438 (=> res!1493935 e!2277093)))

(assert (=> b!3677438 (= res!1493935 (not (isEmpty!23024 (tail!5688 lt!1283669))))))

(declare-fun b!3677439 () Bool)

(assert (=> b!3677439 (= e!2277092 (= (head!7883 lt!1283669) (c!635835 (regex!5835 (rule!8667 (_1!22457 lt!1283678))))))))

(declare-fun b!3677440 () Bool)

(assert (=> b!3677440 (= e!2277094 (nullable!3690 (regex!5835 (rule!8667 (_1!22457 lt!1283678)))))))

(declare-fun b!3677441 () Bool)

(declare-fun res!1493933 () Bool)

(assert (=> b!3677441 (=> (not res!1493933) (not e!2277092))))

(assert (=> b!3677441 (= res!1493933 (not call!266327))))

(declare-fun b!3677442 () Bool)

(declare-fun res!1493936 () Bool)

(assert (=> b!3677442 (=> res!1493936 e!2277096)))

(assert (=> b!3677442 (= res!1493936 e!2277092)))

(declare-fun res!1493938 () Bool)

(assert (=> b!3677442 (=> (not res!1493938) (not e!2277092))))

(assert (=> b!3677442 (= res!1493938 lt!1284241)))

(declare-fun b!3677443 () Bool)

(assert (=> b!3677443 (= e!2277093 (not (= (head!7883 lt!1283669) (c!635835 (regex!5835 (rule!8667 (_1!22457 lt!1283678)))))))))

(declare-fun b!3677444 () Bool)

(assert (=> b!3677444 (= e!2277095 (not lt!1284241))))

(declare-fun b!3677445 () Bool)

(assert (=> b!3677445 (= e!2277091 e!2277095)))

(declare-fun c!636019 () Bool)

(assert (=> b!3677445 (= c!636019 (is-EmptyLang!10594 (regex!5835 (rule!8667 (_1!22457 lt!1283678)))))))

(declare-fun b!3677446 () Bool)

(assert (=> b!3677446 (= e!2277091 (= lt!1284241 call!266327))))

(declare-fun b!3677447 () Bool)

(assert (=> b!3677447 (= e!2277090 e!2277093)))

(declare-fun res!1493934 () Bool)

(assert (=> b!3677447 (=> res!1493934 e!2277093)))

(assert (=> b!3677447 (= res!1493934 call!266327)))

(assert (= (and d!1079727 c!636017) b!3677440))

(assert (= (and d!1079727 (not c!636017)) b!3677437))

(assert (= (and d!1079727 c!636018) b!3677446))

(assert (= (and d!1079727 (not c!636018)) b!3677445))

(assert (= (and b!3677445 c!636019) b!3677444))

(assert (= (and b!3677445 (not c!636019)) b!3677436))

(assert (= (and b!3677436 (not res!1493937)) b!3677442))

(assert (= (and b!3677442 res!1493938) b!3677441))

(assert (= (and b!3677441 res!1493933) b!3677434))

(assert (= (and b!3677434 res!1493932) b!3677439))

(assert (= (and b!3677442 (not res!1493936)) b!3677435))

(assert (= (and b!3677435 res!1493939) b!3677447))

(assert (= (and b!3677447 (not res!1493934)) b!3677438))

(assert (= (and b!3677438 (not res!1493935)) b!3677443))

(assert (= (or b!3677446 b!3677441 b!3677447) bm!266322))

(assert (=> b!3677443 m!4187113))

(assert (=> b!3677434 m!4187109))

(assert (=> b!3677434 m!4187109))

(assert (=> b!3677434 m!4187285))

(assert (=> bm!266322 m!4186275))

(assert (=> b!3677438 m!4187109))

(assert (=> b!3677438 m!4187109))

(assert (=> b!3677438 m!4187285))

(assert (=> b!3677437 m!4187113))

(assert (=> b!3677437 m!4187113))

(declare-fun m!4187351 () Bool)

(assert (=> b!3677437 m!4187351))

(assert (=> b!3677437 m!4187109))

(assert (=> b!3677437 m!4187351))

(assert (=> b!3677437 m!4187109))

(declare-fun m!4187353 () Bool)

(assert (=> b!3677437 m!4187353))

(assert (=> b!3677440 m!4186549))

(assert (=> d!1079727 m!4186275))

(assert (=> d!1079727 m!4186551))

(assert (=> b!3677439 m!4187113))

(assert (=> b!3676580 d!1079727))

(declare-fun d!1079731 () Bool)

(assert (=> d!1079731 (= (isEmpty!23024 (_2!22457 lt!1283673)) (is-Nil!38777 (_2!22457 lt!1283673)))))

(assert (=> b!3676600 d!1079731))

(assert (=> bm!266251 d!1079461))

(declare-fun d!1079733 () Bool)

(declare-fun lt!1284243 () Bool)

(assert (=> d!1079733 (= lt!1284243 (set.member rule!403 (content!5621 rules!3307)))))

(declare-fun e!2277101 () Bool)

(assert (=> d!1079733 (= lt!1284243 e!2277101)))

(declare-fun res!1493945 () Bool)

(assert (=> d!1079733 (=> (not res!1493945) (not e!2277101))))

(assert (=> d!1079733 (= res!1493945 (is-Cons!38778 rules!3307))))

(assert (=> d!1079733 (= (contains!7738 rules!3307 rule!403) lt!1284243)))

(declare-fun b!3677452 () Bool)

(declare-fun e!2277100 () Bool)

(assert (=> b!3677452 (= e!2277101 e!2277100)))

(declare-fun res!1493944 () Bool)

(assert (=> b!3677452 (=> res!1493944 e!2277100)))

(assert (=> b!3677452 (= res!1493944 (= (h!44198 rules!3307) rule!403))))

(declare-fun b!3677453 () Bool)

(assert (=> b!3677453 (= e!2277100 (contains!7738 (t!300217 rules!3307) rule!403))))

(assert (= (and d!1079733 res!1493945) b!3677452))

(assert (= (and b!3677452 (not res!1493944)) b!3677453))

(assert (=> d!1079733 m!4186561))

(declare-fun m!4187365 () Bool)

(assert (=> d!1079733 m!4187365))

(declare-fun m!4187367 () Bool)

(assert (=> b!3677453 m!4187367))

(assert (=> b!3676599 d!1079733))

(declare-fun b!3677466 () Bool)

(declare-fun e!2277109 () Bool)

(declare-fun tp!1118176 () Bool)

(assert (=> b!3677466 (= e!2277109 (and tp_is_empty!18271 tp!1118176))))

(assert (=> b!3676566 (= tp!1118109 e!2277109)))

(assert (= (and b!3676566 (is-Cons!38777 (originalCharacters!6549 token!511))) b!3677466))

(declare-fun b!3677480 () Bool)

(declare-fun e!2277112 () Bool)

(declare-fun tp!1118190 () Bool)

(declare-fun tp!1118189 () Bool)

(assert (=> b!3677480 (= e!2277112 (and tp!1118190 tp!1118189))))

(declare-fun b!3677478 () Bool)

(declare-fun tp!1118191 () Bool)

(declare-fun tp!1118188 () Bool)

(assert (=> b!3677478 (= e!2277112 (and tp!1118191 tp!1118188))))

(declare-fun b!3677479 () Bool)

(declare-fun tp!1118187 () Bool)

(assert (=> b!3677479 (= e!2277112 tp!1118187)))

(declare-fun b!3677477 () Bool)

(assert (=> b!3677477 (= e!2277112 tp_is_empty!18271)))

(assert (=> b!3676603 (= tp!1118108 e!2277112)))

(assert (= (and b!3676603 (is-ElementMatch!10594 (regex!5835 (h!44198 rules!3307)))) b!3677477))

(assert (= (and b!3676603 (is-Concat!16660 (regex!5835 (h!44198 rules!3307)))) b!3677478))

(assert (= (and b!3676603 (is-Star!10594 (regex!5835 (h!44198 rules!3307)))) b!3677479))

(assert (= (and b!3676603 (is-Union!10594 (regex!5835 (h!44198 rules!3307)))) b!3677480))

(declare-fun b!3677484 () Bool)

(declare-fun e!2277113 () Bool)

(declare-fun tp!1118195 () Bool)

(declare-fun tp!1118194 () Bool)

(assert (=> b!3677484 (= e!2277113 (and tp!1118195 tp!1118194))))

(declare-fun b!3677482 () Bool)

(declare-fun tp!1118196 () Bool)

(declare-fun tp!1118193 () Bool)

(assert (=> b!3677482 (= e!2277113 (and tp!1118196 tp!1118193))))

(declare-fun b!3677483 () Bool)

(declare-fun tp!1118192 () Bool)

(assert (=> b!3677483 (= e!2277113 tp!1118192)))

(declare-fun b!3677481 () Bool)

(assert (=> b!3677481 (= e!2277113 tp_is_empty!18271)))

(assert (=> b!3676612 (= tp!1118115 e!2277113)))

(assert (= (and b!3676612 (is-ElementMatch!10594 (regex!5835 (rule!8667 token!511)))) b!3677481))

(assert (= (and b!3676612 (is-Concat!16660 (regex!5835 (rule!8667 token!511)))) b!3677482))

(assert (= (and b!3676612 (is-Star!10594 (regex!5835 (rule!8667 token!511)))) b!3677483))

(assert (= (and b!3676612 (is-Union!10594 (regex!5835 (rule!8667 token!511)))) b!3677484))

(declare-fun b!3677495 () Bool)

(declare-fun b_free!97321 () Bool)

(declare-fun b_next!98025 () Bool)

(assert (=> b!3677495 (= b_free!97321 (not b_next!98025))))

(declare-fun tb!213173 () Bool)

(declare-fun t!300326 () Bool)

(assert (=> (and b!3677495 (= (toValue!8131 (transformation!5835 (h!44198 (t!300217 rules!3307)))) (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) t!300326) tb!213173))

(declare-fun result!259392 () Bool)

(assert (= result!259392 result!259320))

(assert (=> d!1079547 t!300326))

(assert (=> d!1079551 t!300326))

(assert (=> d!1079553 t!300326))

(declare-fun t!300328 () Bool)

(declare-fun tb!213175 () Bool)

(assert (=> (and b!3677495 (= (toValue!8131 (transformation!5835 (h!44198 (t!300217 rules!3307)))) (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) t!300328) tb!213175))

(declare-fun result!259394 () Bool)

(assert (= result!259394 result!259328))

(assert (=> d!1079547 t!300328))

(declare-fun tb!213177 () Bool)

(declare-fun t!300330 () Bool)

(assert (=> (and b!3677495 (= (toValue!8131 (transformation!5835 (h!44198 (t!300217 rules!3307)))) (toValue!8131 (transformation!5835 rule!403))) t!300330) tb!213177))

(declare-fun result!259396 () Bool)

(assert (= result!259396 result!259284))

(assert (=> d!1079473 t!300330))

(declare-fun tb!213179 () Bool)

(declare-fun t!300332 () Bool)

(assert (=> (and b!3677495 (= (toValue!8131 (transformation!5835 (h!44198 (t!300217 rules!3307)))) (toValue!8131 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) t!300332) tb!213179))

(declare-fun result!259398 () Bool)

(assert (= result!259398 result!259378))

(assert (=> d!1079695 t!300332))

(assert (=> d!1079467 t!300330))

(declare-fun b_and!274451 () Bool)

(declare-fun tp!1118208 () Bool)

(assert (=> b!3677495 (= tp!1118208 (and (=> t!300328 result!259394) (=> t!300330 result!259396) (=> t!300326 result!259392) (=> t!300332 result!259398) b_and!274451))))

(declare-fun b_free!97323 () Bool)

(declare-fun b_next!98027 () Bool)

(assert (=> b!3677495 (= b_free!97323 (not b_next!98027))))

(declare-fun tb!213181 () Bool)

(declare-fun t!300334 () Bool)

(assert (=> (and b!3677495 (= (toChars!7990 (transformation!5835 (h!44198 (t!300217 rules!3307)))) (toChars!7990 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) t!300334) tb!213181))

(declare-fun result!259400 () Bool)

(assert (= result!259400 result!259274))

(assert (=> d!1079443 t!300334))

(declare-fun tb!213183 () Bool)

(declare-fun t!300336 () Bool)

(assert (=> (and b!3677495 (= (toChars!7990 (transformation!5835 (h!44198 (t!300217 rules!3307)))) (toChars!7990 (transformation!5835 (rule!8667 token!511)))) t!300336) tb!213183))

(declare-fun result!259402 () Bool)

(assert (= result!259402 result!259344))

(assert (=> b!3677335 t!300336))

(declare-fun t!300338 () Bool)

(declare-fun tb!213185 () Bool)

(assert (=> (and b!3677495 (= (toChars!7990 (transformation!5835 (h!44198 (t!300217 rules!3307)))) (toChars!7990 (transformation!5835 (rule!8667 (_1!22457 lt!1283678))))) t!300338) tb!213185))

(declare-fun result!259404 () Bool)

(assert (= result!259404 result!259336))

(assert (=> d!1079551 t!300338))

(assert (=> d!1079573 t!300336))

(declare-fun t!300340 () Bool)

(declare-fun tb!213187 () Bool)

(assert (=> (and b!3677495 (= (toChars!7990 (transformation!5835 (h!44198 (t!300217 rules!3307)))) (toChars!7990 (transformation!5835 rule!403))) t!300340) tb!213187))

(declare-fun result!259406 () Bool)

(assert (= result!259406 result!259312))

(assert (=> d!1079473 t!300340))

(declare-fun tp!1118207 () Bool)

(declare-fun b_and!274453 () Bool)

(assert (=> b!3677495 (= tp!1118207 (and (=> t!300334 result!259400) (=> t!300340 result!259406) (=> t!300338 result!259404) (=> t!300336 result!259402) b_and!274453))))

(declare-fun e!2277124 () Bool)

(assert (=> b!3677495 (= e!2277124 (and tp!1118208 tp!1118207))))

(declare-fun e!2277123 () Bool)

(declare-fun b!3677494 () Bool)

(declare-fun tp!1118205 () Bool)

(assert (=> b!3677494 (= e!2277123 (and tp!1118205 (inv!52267 (tag!6633 (h!44198 (t!300217 rules!3307)))) (inv!52270 (transformation!5835 (h!44198 (t!300217 rules!3307)))) e!2277124))))

(declare-fun b!3677493 () Bool)

(declare-fun e!2277125 () Bool)

(declare-fun tp!1118206 () Bool)

(assert (=> b!3677493 (= e!2277125 (and e!2277123 tp!1118206))))

(assert (=> b!3676602 (= tp!1118106 e!2277125)))

(assert (= b!3677494 b!3677495))

(assert (= b!3677493 b!3677494))

(assert (= (and b!3676602 (is-Cons!38778 (t!300217 rules!3307))) b!3677493))

(declare-fun m!4187389 () Bool)

(assert (=> b!3677494 m!4187389))

(declare-fun m!4187393 () Bool)

(assert (=> b!3677494 m!4187393))

(declare-fun b!3677498 () Bool)

(declare-fun e!2277128 () Bool)

(declare-fun tp!1118209 () Bool)

(assert (=> b!3677498 (= e!2277128 (and tp_is_empty!18271 tp!1118209))))

(assert (=> b!3676564 (= tp!1118104 e!2277128)))

(assert (= (and b!3676564 (is-Cons!38777 (t!300216 suffix!1395))) b!3677498))

(declare-fun b!3677510 () Bool)

(declare-fun e!2277133 () Bool)

(declare-fun tp!1118213 () Bool)

(declare-fun tp!1118212 () Bool)

(assert (=> b!3677510 (= e!2277133 (and tp!1118213 tp!1118212))))

(declare-fun b!3677507 () Bool)

(declare-fun tp!1118214 () Bool)

(declare-fun tp!1118211 () Bool)

(assert (=> b!3677507 (= e!2277133 (and tp!1118214 tp!1118211))))

(declare-fun b!3677509 () Bool)

(declare-fun tp!1118210 () Bool)

(assert (=> b!3677509 (= e!2277133 tp!1118210)))

(declare-fun b!3677506 () Bool)

(assert (=> b!3677506 (= e!2277133 tp_is_empty!18271)))

(assert (=> b!3676572 (= tp!1118110 e!2277133)))

(assert (= (and b!3676572 (is-ElementMatch!10594 (regex!5835 rule!403))) b!3677506))

(assert (= (and b!3676572 (is-Concat!16660 (regex!5835 rule!403))) b!3677507))

(assert (= (and b!3676572 (is-Star!10594 (regex!5835 rule!403))) b!3677509))

(assert (= (and b!3676572 (is-Union!10594 (regex!5835 rule!403))) b!3677510))

(declare-fun b!3677514 () Bool)

(declare-fun e!2277134 () Bool)

(declare-fun tp!1118218 () Bool)

(declare-fun tp!1118217 () Bool)

(assert (=> b!3677514 (= e!2277134 (and tp!1118218 tp!1118217))))

(declare-fun b!3677512 () Bool)

(declare-fun tp!1118219 () Bool)

(declare-fun tp!1118216 () Bool)

(assert (=> b!3677512 (= e!2277134 (and tp!1118219 tp!1118216))))

(declare-fun b!3677513 () Bool)

(declare-fun tp!1118215 () Bool)

(assert (=> b!3677513 (= e!2277134 tp!1118215)))

(declare-fun b!3677511 () Bool)

(assert (=> b!3677511 (= e!2277134 tp_is_empty!18271)))

(assert (=> b!3676604 (= tp!1118114 e!2277134)))

(assert (= (and b!3676604 (is-ElementMatch!10594 (regex!5835 anOtherTypeRule!33))) b!3677511))

(assert (= (and b!3676604 (is-Concat!16660 (regex!5835 anOtherTypeRule!33))) b!3677512))

(assert (= (and b!3676604 (is-Star!10594 (regex!5835 anOtherTypeRule!33))) b!3677513))

(assert (= (and b!3676604 (is-Union!10594 (regex!5835 anOtherTypeRule!33))) b!3677514))

(declare-fun b_lambda!109217 () Bool)

(assert (= b_lambda!109189 (or (and b!3676592 b_free!97301 (= (toValue!8131 (transformation!5835 (rule!8667 token!511))) (toValue!8131 (transformation!5835 rule!403)))) (and b!3676585 b_free!97293 (= (toValue!8131 (transformation!5835 (h!44198 rules!3307))) (toValue!8131 (transformation!5835 rule!403)))) (and b!3677495 b_free!97321 (= (toValue!8131 (transformation!5835 (h!44198 (t!300217 rules!3307)))) (toValue!8131 (transformation!5835 rule!403)))) (and b!3676601 b_free!97289) (and b!3676605 b_free!97297 (= (toValue!8131 (transformation!5835 anOtherTypeRule!33)) (toValue!8131 (transformation!5835 rule!403)))) b_lambda!109217)))

(declare-fun b_lambda!109219 () Bool)

(assert (= b_lambda!109201 (or (and b!3676592 b_free!97303) (and b!3677495 b_free!97323 (= (toChars!7990 (transformation!5835 (h!44198 (t!300217 rules!3307)))) (toChars!7990 (transformation!5835 (rule!8667 token!511))))) (and b!3676585 b_free!97295 (= (toChars!7990 (transformation!5835 (h!44198 rules!3307))) (toChars!7990 (transformation!5835 (rule!8667 token!511))))) (and b!3676605 b_free!97299 (= (toChars!7990 (transformation!5835 anOtherTypeRule!33)) (toChars!7990 (transformation!5835 (rule!8667 token!511))))) (and b!3676601 b_free!97291 (= (toChars!7990 (transformation!5835 rule!403)) (toChars!7990 (transformation!5835 (rule!8667 token!511))))) b_lambda!109219)))

(declare-fun b_lambda!109221 () Bool)

(assert (= b_lambda!109213 (or (and b!3676592 b_free!97303) (and b!3677495 b_free!97323 (= (toChars!7990 (transformation!5835 (h!44198 (t!300217 rules!3307)))) (toChars!7990 (transformation!5835 (rule!8667 token!511))))) (and b!3676585 b_free!97295 (= (toChars!7990 (transformation!5835 (h!44198 rules!3307))) (toChars!7990 (transformation!5835 (rule!8667 token!511))))) (and b!3676605 b_free!97299 (= (toChars!7990 (transformation!5835 anOtherTypeRule!33)) (toChars!7990 (transformation!5835 (rule!8667 token!511))))) (and b!3676601 b_free!97291 (= (toChars!7990 (transformation!5835 rule!403)) (toChars!7990 (transformation!5835 (rule!8667 token!511))))) b_lambda!109221)))

(declare-fun b_lambda!109223 () Bool)

(assert (= b_lambda!109181 (or (and b!3676592 b_free!97301 (= (toValue!8131 (transformation!5835 (rule!8667 token!511))) (toValue!8131 (transformation!5835 rule!403)))) (and b!3676585 b_free!97293 (= (toValue!8131 (transformation!5835 (h!44198 rules!3307))) (toValue!8131 (transformation!5835 rule!403)))) (and b!3677495 b_free!97321 (= (toValue!8131 (transformation!5835 (h!44198 (t!300217 rules!3307)))) (toValue!8131 (transformation!5835 rule!403)))) (and b!3676601 b_free!97289) (and b!3676605 b_free!97297 (= (toValue!8131 (transformation!5835 anOtherTypeRule!33)) (toValue!8131 (transformation!5835 rule!403)))) b_lambda!109223)))

(declare-fun b_lambda!109225 () Bool)

(assert (= b_lambda!109187 (or (and b!3676601 b_free!97291) (and b!3676585 b_free!97295 (= (toChars!7990 (transformation!5835 (h!44198 rules!3307))) (toChars!7990 (transformation!5835 rule!403)))) (and b!3676605 b_free!97299 (= (toChars!7990 (transformation!5835 anOtherTypeRule!33)) (toChars!7990 (transformation!5835 rule!403)))) (and b!3676592 b_free!97303 (= (toChars!7990 (transformation!5835 (rule!8667 token!511))) (toChars!7990 (transformation!5835 rule!403)))) (and b!3677495 b_free!97323 (= (toChars!7990 (transformation!5835 (h!44198 (t!300217 rules!3307)))) (toChars!7990 (transformation!5835 rule!403)))) b_lambda!109225)))

(push 1)

(assert (not b!3677062))

(assert (not b!3677509))

(assert (not b_lambda!109179))

(assert (not d!1079667))

(assert (not b!3677300))

(assert (not d!1079691))

(assert (not b!3677128))

(assert (not bm!266318))

(assert (not d!1079663))

(assert b_and!274451)

(assert (not d!1079585))

(assert (not d!1079573))

(assert (not b_next!98005))

(assert (not b!3677310))

(assert (not d!1079683))

(assert (not b!3677125))

(assert (not b!3677274))

(assert (not b_next!98001))

(assert (not b!3677388))

(assert (not d!1079713))

(assert (not b!3677369))

(assert b_and!274447)

(assert (not b!3677437))

(assert (not d!1079543))

(assert (not b!3677272))

(assert (not b!3677289))

(assert (not b!3677382))

(assert (not b!3676817))

(assert (not d!1079465))

(assert (not b!3676813))

(assert (not b_next!97993))

(assert (not d!1079693))

(assert (not tb!213165))

(assert (not bm!266274))

(assert (not b!3677065))

(assert (not d!1079569))

(assert (not b!3677494))

(assert (not d!1079705))

(assert (not b!3677123))

(assert (not b!3677303))

(assert (not b!3677391))

(assert b_and!274449)

(assert (not b!3676859))

(assert (not b!3677086))

(assert (not b!3676816))

(assert (not b!3677358))

(assert (not d!1079535))

(assert b_and!274435)

(assert (not b!3677130))

(assert (not b!3677273))

(assert (not d!1079675))

(assert (not d!1079545))

(assert (not b!3677493))

(assert (not b!3677325))

(assert (not b!3677121))

(assert tp_is_empty!18271)

(assert b_and!274453)

(assert (not d!1079537))

(assert (not b!3676822))

(assert (not b!3677043))

(assert (not d!1079571))

(assert (not b!3676855))

(assert (not b!3677484))

(assert (not b!3677285))

(assert (not b!3677403))

(assert (not bm!266307))

(assert (not d!1079583))

(assert (not b!3677138))

(assert (not tb!213117))

(assert (not b!3677443))

(assert (not b!3676856))

(assert (not d!1079519))

(assert (not b!3677302))

(assert (not d!1079431))

(assert (not b_lambda!109217))

(assert (not b!3677149))

(assert (not b_next!97995))

(assert (not d!1079551))

(assert (not b!3677438))

(assert (not b!3677362))

(assert (not b!3676819))

(assert (not tb!213125))

(assert (not b_next!97999))

(assert (not d!1079453))

(assert (not b!3677286))

(assert (not bm!266284))

(assert (not b_lambda!109215))

(assert (not d!1079521))

(assert (not d!1079529))

(assert (not bm!266317))

(assert (not d!1079649))

(assert b_and!274445)

(assert (not b!3677308))

(assert (not d!1079659))

(assert (not b!3677336))

(assert (not d!1079561))

(assert (not b!3677335))

(assert (not b_lambda!109199))

(assert (not b!3677466))

(assert (not b!3677137))

(assert (not d!1079591))

(assert (not b!3677311))

(assert (not b!3677514))

(assert (not b!3677363))

(assert (not d!1079557))

(assert (not b_lambda!109221))

(assert (not b!3677296))

(assert (not d!1079517))

(assert (not b!3677480))

(assert (not d!1079697))

(assert (not b!3677404))

(assert (not b!3677299))

(assert (not b!3677361))

(assert (not d!1079443))

(assert (not b!3677339))

(assert (not d!1079473))

(assert (not b_lambda!109195))

(assert (not d!1079579))

(assert (not d!1079541))

(assert (not b!3677512))

(assert (not tb!213109))

(assert (not d!1079565))

(assert (not b_next!98027))

(assert (not b!3677307))

(assert (not d!1079515))

(assert (not d!1079563))

(assert (not b_lambda!109197))

(assert (not b!3677453))

(assert (not b!3677045))

(assert (not d!1079527))

(assert (not b!3677366))

(assert (not b!3677306))

(assert b_and!274437)

(assert (not d!1079717))

(assert (not b!3677129))

(assert (not d!1079451))

(assert (not b!3677405))

(assert (not b!3677478))

(assert (not d!1079685))

(assert (not b_lambda!109223))

(assert (not b!3677056))

(assert (not b!3677432))

(assert (not bm!266287))

(assert (not b!3677434))

(assert (not b!3677290))

(assert (not b!3677359))

(assert (not d!1079725))

(assert (not b!3677337))

(assert (not b!3677389))

(assert (not d!1079701))

(assert (not b!3677097))

(assert (not b!3676843))

(assert (not d!1079653))

(assert (not b!3677127))

(assert (not d!1079533))

(assert (not b!3677101))

(assert (not b!3677384))

(assert (not d!1079719))

(assert (not d!1079727))

(assert (not b_next!97997))

(assert (not b!3676853))

(assert (not b_next!98025))

(assert (not d!1079715))

(assert b_and!274439)

(assert (not bm!266306))

(assert b_and!274443)

(assert (not b!3677298))

(assert (not b!3677132))

(assert (not d!1079547))

(assert (not tb!213077))

(assert (not b!3677326))

(assert (not b_next!98003))

(assert (not bm!266321))

(assert (not d!1079549))

(assert (not b_lambda!109225))

(assert (not d!1079575))

(assert (not b!3677439))

(assert (not tb!213133))

(assert (not bm!266275))

(assert (not b!3677150))

(assert (not b_lambda!109191))

(assert (not bm!266316))

(assert (not b!3677513))

(assert (not b!3677507))

(assert (not b!3677365))

(assert (not b!3677155))

(assert (not b!3677409))

(assert (not bm!266309))

(assert (not b!3677301))

(assert (not b!3677126))

(assert (not b!3677148))

(assert (not d!1079589))

(assert (not b!3677483))

(assert (not bm!266285))

(assert (not b!3677076))

(assert (not d!1079567))

(assert (not tb!213069))

(assert (not b!3677440))

(assert (not b!3676907))

(assert (not d!1079687))

(assert (not b!3677479))

(assert (not b!3676897))

(assert (not b_lambda!109219))

(assert (not b!3676854))

(assert (not b!3677482))

(assert (not d!1079525))

(assert (not b!3677328))

(assert (not b!3677400))

(assert (not b!3677406))

(assert (not d!1079707))

(assert b_and!274441)

(assert (not b!3677124))

(assert (not b!3676849))

(assert (not d!1079559))

(assert (not d!1079435))

(assert (not d!1079733))

(assert (not bm!266320))

(assert (not d!1079657))

(assert (not b!3677368))

(assert (not b!3677510))

(assert (not b!3677085))

(assert (not tb!213101))

(assert (not b!3677291))

(assert (not b!3677304))

(assert (not d!1079679))

(assert (not b!3677426))

(assert (not bm!266312))

(assert (not d!1079669))

(assert (not d!1079681))

(assert (not d!1079721))

(assert (not bm!266322))

(assert (not b!3677383))

(assert (not b!3676818))

(assert (not b_lambda!109193))

(assert (not b!3676850))

(assert (not b!3677055))

(assert (not b!3677498))

(assert (not b_next!98007))

(assert (not d!1079673))

(assert (not b!3677156))

(assert (not d!1079457))

(assert (not b!3677364))

(assert (not d!1079441))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!97993))

(assert b_and!274453)

(assert (not b_next!97995))

(assert (not b_next!97999))

(assert b_and!274445)

(assert (not b_next!98027))

(assert b_and!274437)

(assert (not b_next!98003))

(assert b_and!274441)

(assert (not b_next!98007))

(assert b_and!274451)

(assert (not b_next!98005))

(assert (not b_next!98001))

(assert b_and!274447)

(assert b_and!274449)

(assert b_and!274435)

(assert (not b_next!97997))

(assert (not b_next!98025))

(assert b_and!274439)

(assert b_and!274443)

(check-sat)

(pop 1)


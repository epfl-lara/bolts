; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!335698 () Bool)

(assert start!335698)

(declare-fun b!3607464 () Bool)

(declare-fun b_free!93561 () Bool)

(declare-fun b_next!94265 () Bool)

(assert (=> b!3607464 (= b_free!93561 (not b_next!94265))))

(declare-fun tp!1103003 () Bool)

(declare-fun b_and!262747 () Bool)

(assert (=> b!3607464 (= tp!1103003 b_and!262747)))

(declare-fun b_free!93563 () Bool)

(declare-fun b_next!94267 () Bool)

(assert (=> b!3607464 (= b_free!93563 (not b_next!94267))))

(declare-fun tp!1103004 () Bool)

(declare-fun b_and!262749 () Bool)

(assert (=> b!3607464 (= tp!1103004 b_and!262749)))

(declare-fun b!3607451 () Bool)

(declare-fun b_free!93565 () Bool)

(declare-fun b_next!94269 () Bool)

(assert (=> b!3607451 (= b_free!93565 (not b_next!94269))))

(declare-fun tp!1103007 () Bool)

(declare-fun b_and!262751 () Bool)

(assert (=> b!3607451 (= tp!1103007 b_and!262751)))

(declare-fun b_free!93567 () Bool)

(declare-fun b_next!94271 () Bool)

(assert (=> b!3607451 (= b_free!93567 (not b_next!94271))))

(declare-fun tp!1103000 () Bool)

(declare-fun b_and!262753 () Bool)

(assert (=> b!3607451 (= tp!1103000 b_and!262753)))

(declare-fun b!3607465 () Bool)

(declare-fun b_free!93569 () Bool)

(declare-fun b_next!94273 () Bool)

(assert (=> b!3607465 (= b_free!93569 (not b_next!94273))))

(declare-fun tp!1103013 () Bool)

(declare-fun b_and!262755 () Bool)

(assert (=> b!3607465 (= tp!1103013 b_and!262755)))

(declare-fun b_free!93571 () Bool)

(declare-fun b_next!94275 () Bool)

(assert (=> b!3607465 (= b_free!93571 (not b_next!94275))))

(declare-fun tp!1103011 () Bool)

(declare-fun b_and!262757 () Bool)

(assert (=> b!3607465 (= tp!1103011 b_and!262757)))

(declare-fun b!3607440 () Bool)

(declare-fun b_free!93573 () Bool)

(declare-fun b_next!94277 () Bool)

(assert (=> b!3607440 (= b_free!93573 (not b_next!94277))))

(declare-fun tp!1103010 () Bool)

(declare-fun b_and!262759 () Bool)

(assert (=> b!3607440 (= tp!1103010 b_and!262759)))

(declare-fun b_free!93575 () Bool)

(declare-fun b_next!94279 () Bool)

(assert (=> b!3607440 (= b_free!93575 (not b_next!94279))))

(declare-fun tp!1103012 () Bool)

(declare-fun b_and!262761 () Bool)

(assert (=> b!3607440 (= tp!1103012 b_and!262761)))

(declare-fun b!3607435 () Bool)

(declare-fun e!2232518 () Bool)

(declare-fun e!2232498 () Bool)

(declare-fun tp!1103006 () Bool)

(assert (=> b!3607435 (= e!2232518 (and e!2232498 tp!1103006))))

(declare-fun b!3607436 () Bool)

(declare-fun e!2232508 () Bool)

(declare-fun tp_is_empty!17857 () Bool)

(declare-fun tp!1103005 () Bool)

(assert (=> b!3607436 (= e!2232508 (and tp_is_empty!17857 tp!1103005))))

(declare-fun b!3607438 () Bool)

(declare-fun e!2232496 () Bool)

(declare-datatypes ((C!20960 0))(
  ( (C!20961 (val!12528 Int)) )
))
(declare-datatypes ((List!38085 0))(
  ( (Nil!37961) (Cons!37961 (h!43381 C!20960) (t!293016 List!38085)) )
))
(declare-fun suffix!1395 () List!38085)

(assert (=> b!3607438 (= e!2232496 (not (= suffix!1395 Nil!37961)))))

(declare-datatypes ((List!38086 0))(
  ( (Nil!37962) (Cons!37962 (h!43382 (_ BitVec 16)) (t!293017 List!38086)) )
))
(declare-datatypes ((TokenValue!5858 0))(
  ( (FloatLiteralValue!11716 (text!41451 List!38086)) (TokenValueExt!5857 (__x!23933 Int)) (Broken!29290 (value!180832 List!38086)) (Object!5981) (End!5858) (Def!5858) (Underscore!5858) (Match!5858) (Else!5858) (Error!5858) (Case!5858) (If!5858) (Extends!5858) (Abstract!5858) (Class!5858) (Val!5858) (DelimiterValue!11716 (del!5918 List!38086)) (KeywordValue!5864 (value!180833 List!38086)) (CommentValue!11716 (value!180834 List!38086)) (WhitespaceValue!11716 (value!180835 List!38086)) (IndentationValue!5858 (value!180836 List!38086)) (String!42623) (Int32!5858) (Broken!29291 (value!180837 List!38086)) (Boolean!5859) (Unit!54081) (OperatorValue!5861 (op!5918 List!38086)) (IdentifierValue!11716 (value!180838 List!38086)) (IdentifierValue!11717 (value!180839 List!38086)) (WhitespaceValue!11717 (value!180840 List!38086)) (True!11716) (False!11716) (Broken!29292 (value!180841 List!38086)) (Broken!29293 (value!180842 List!38086)) (True!11717) (RightBrace!5858) (RightBracket!5858) (Colon!5858) (Null!5858) (Comma!5858) (LeftBracket!5858) (False!11717) (LeftBrace!5858) (ImaginaryLiteralValue!5858 (text!41452 List!38086)) (StringLiteralValue!17574 (value!180843 List!38086)) (EOFValue!5858 (value!180844 List!38086)) (IdentValue!5858 (value!180845 List!38086)) (DelimiterValue!11717 (value!180846 List!38086)) (DedentValue!5858 (value!180847 List!38086)) (NewLineValue!5858 (value!180848 List!38086)) (IntegerValue!17574 (value!180849 (_ BitVec 32)) (text!41453 List!38086)) (IntegerValue!17575 (value!180850 Int) (text!41454 List!38086)) (Times!5858) (Or!5858) (Equal!5858) (Minus!5858) (Broken!29294 (value!180851 List!38086)) (And!5858) (Div!5858) (LessEqual!5858) (Mod!5858) (Concat!16245) (Not!5858) (Plus!5858) (SpaceValue!5858 (value!180852 List!38086)) (IntegerValue!17576 (value!180853 Int) (text!41455 List!38086)) (StringLiteralValue!17575 (text!41456 List!38086)) (FloatLiteralValue!11717 (text!41457 List!38086)) (BytesLiteralValue!5858 (value!180854 List!38086)) (CommentValue!11717 (value!180855 List!38086)) (StringLiteralValue!17576 (value!180856 List!38086)) (ErrorTokenValue!5858 (msg!5919 List!38086)) )
))
(declare-datatypes ((Regex!10387 0))(
  ( (ElementMatch!10387 (c!624148 C!20960)) (Concat!16246 (regOne!21286 Regex!10387) (regTwo!21286 Regex!10387)) (EmptyExpr!10387) (Star!10387 (reg!10716 Regex!10387)) (EmptyLang!10387) (Union!10387 (regOne!21287 Regex!10387) (regTwo!21287 Regex!10387)) )
))
(declare-datatypes ((String!42624 0))(
  ( (String!42625 (value!180857 String)) )
))
(declare-datatypes ((IArray!23135 0))(
  ( (IArray!23136 (innerList!11625 List!38085)) )
))
(declare-datatypes ((Conc!11565 0))(
  ( (Node!11565 (left!29661 Conc!11565) (right!29991 Conc!11565) (csize!23360 Int) (cheight!11776 Int)) (Leaf!17990 (xs!14767 IArray!23135) (csize!23361 Int)) (Empty!11565) )
))
(declare-datatypes ((BalanceConc!22744 0))(
  ( (BalanceConc!22745 (c!624149 Conc!11565)) )
))
(declare-datatypes ((TokenValueInjection!11144 0))(
  ( (TokenValueInjection!11145 (toValue!7912 Int) (toChars!7771 Int)) )
))
(declare-datatypes ((Rule!11056 0))(
  ( (Rule!11057 (regex!5628 Regex!10387) (tag!6330 String!42624) (isSeparator!5628 Bool) (transformation!5628 TokenValueInjection!11144)) )
))
(declare-datatypes ((Token!10622 0))(
  ( (Token!10623 (value!180858 TokenValue!5858) (rule!8374 Rule!11056) (size!28937 Int) (originalCharacters!6342 List!38085)) )
))
(declare-datatypes ((tuple2!37856 0))(
  ( (tuple2!37857 (_1!22062 Token!10622) (_2!22062 List!38085)) )
))
(declare-fun lt!1241039 () tuple2!37856)

(declare-fun lt!1241040 () C!20960)

(declare-fun contains!7319 (List!38085 C!20960) Bool)

(declare-fun usedCharacters!842 (Regex!10387) List!38085)

(assert (=> b!3607438 (not (contains!7319 (usedCharacters!842 (regex!5628 (rule!8374 (_1!22062 lt!1241039)))) lt!1241040))))

(declare-datatypes ((LexerInterface!5217 0))(
  ( (LexerInterfaceExt!5214 (__x!23934 Int)) (Lexer!5215) )
))
(declare-fun thiss!23823 () LexerInterface!5217)

(declare-datatypes ((Unit!54082 0))(
  ( (Unit!54083) )
))
(declare-fun lt!1241033 () Unit!54082)

(declare-datatypes ((List!38087 0))(
  ( (Nil!37963) (Cons!37963 (h!43383 Rule!11056) (t!293018 List!38087)) )
))
(declare-fun rules!3307 () List!38087)

(declare-fun anOtherTypeRule!33 () Rule!11056)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!216 (LexerInterface!5217 List!38087 List!38087 Rule!11056 Rule!11056 C!20960) Unit!54082)

(assert (=> b!3607438 (= lt!1241033 (lemmaSepRuleNotContainsCharContainedInANonSepRule!216 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8374 (_1!22062 lt!1241039)) lt!1241040))))

(declare-fun b!3607439 () Bool)

(declare-fun e!2232495 () Bool)

(assert (=> b!3607439 (= e!2232495 e!2232496)))

(declare-fun res!1458817 () Bool)

(assert (=> b!3607439 (=> res!1458817 e!2232496)))

(declare-fun rule!403 () Rule!11056)

(assert (=> b!3607439 (= res!1458817 (not (isSeparator!5628 rule!403)))))

(declare-fun lt!1241029 () List!38085)

(assert (=> b!3607439 (contains!7319 lt!1241029 lt!1241040)))

(declare-fun lt!1241020 () List!38085)

(declare-fun lt!1241047 () Unit!54082)

(declare-fun lt!1241053 () List!38085)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!6 (List!38085 List!38085 List!38085 List!38085) Unit!54082)

(assert (=> b!3607439 (= lt!1241047 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!6 lt!1241020 suffix!1395 lt!1241029 lt!1241053))))

(declare-fun e!2232510 () Bool)

(assert (=> b!3607440 (= e!2232510 (and tp!1103010 tp!1103012))))

(declare-fun b!3607441 () Bool)

(assert (=> b!3607441 false))

(declare-fun lt!1241052 () Unit!54082)

(declare-fun call!260761 () Unit!54082)

(assert (=> b!3607441 (= lt!1241052 call!260761)))

(declare-fun call!260762 () Bool)

(assert (=> b!3607441 (not call!260762)))

(declare-fun lt!1241032 () Unit!54082)

(declare-fun lt!1241038 () C!20960)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!334 (LexerInterface!5217 List!38087 List!38087 Rule!11056 Rule!11056 C!20960) Unit!54082)

(assert (=> b!3607441 (= lt!1241032 (lemmaNonSepRuleNotContainsCharContainedInASepRule!334 thiss!23823 rules!3307 rules!3307 (rule!8374 (_1!22062 lt!1241039)) rule!403 lt!1241038))))

(declare-fun e!2232509 () Unit!54082)

(declare-fun Unit!54084 () Unit!54082)

(assert (=> b!3607441 (= e!2232509 Unit!54084)))

(declare-fun b!3607442 () Bool)

(declare-fun e!2232500 () Bool)

(declare-fun e!2232511 () Bool)

(assert (=> b!3607442 (= e!2232500 e!2232511)))

(declare-fun res!1458808 () Bool)

(assert (=> b!3607442 (=> res!1458808 e!2232511)))

(declare-fun isPrefix!2991 (List!38085 List!38085) Bool)

(assert (=> b!3607442 (= res!1458808 (not (isPrefix!2991 lt!1241029 lt!1241053)))))

(declare-fun ++!9444 (List!38085 List!38085) List!38085)

(assert (=> b!3607442 (isPrefix!2991 lt!1241029 (++!9444 lt!1241029 (_2!22062 lt!1241039)))))

(declare-fun lt!1241056 () Unit!54082)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1912 (List!38085 List!38085) Unit!54082)

(assert (=> b!3607442 (= lt!1241056 (lemmaConcatTwoListThenFirstIsPrefix!1912 lt!1241029 (_2!22062 lt!1241039)))))

(declare-fun lt!1241028 () BalanceConc!22744)

(declare-fun list!13996 (BalanceConc!22744) List!38085)

(assert (=> b!3607442 (= lt!1241029 (list!13996 lt!1241028))))

(declare-fun charsOf!3642 (Token!10622) BalanceConc!22744)

(assert (=> b!3607442 (= lt!1241028 (charsOf!3642 (_1!22062 lt!1241039)))))

(declare-fun e!2232507 () Bool)

(assert (=> b!3607442 e!2232507))

(declare-fun res!1458807 () Bool)

(assert (=> b!3607442 (=> (not res!1458807) (not e!2232507))))

(declare-datatypes ((Option!7886 0))(
  ( (None!7885) (Some!7885 (v!37619 Rule!11056)) )
))
(declare-fun lt!1241037 () Option!7886)

(declare-fun isDefined!6118 (Option!7886) Bool)

(assert (=> b!3607442 (= res!1458807 (isDefined!6118 lt!1241037))))

(declare-fun getRuleFromTag!1234 (LexerInterface!5217 List!38087 String!42624) Option!7886)

(assert (=> b!3607442 (= lt!1241037 (getRuleFromTag!1234 thiss!23823 rules!3307 (tag!6330 (rule!8374 (_1!22062 lt!1241039)))))))

(declare-fun lt!1241023 () Unit!54082)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1234 (LexerInterface!5217 List!38087 List!38085 Token!10622) Unit!54082)

(assert (=> b!3607442 (= lt!1241023 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1234 thiss!23823 rules!3307 lt!1241053 (_1!22062 lt!1241039)))))

(declare-datatypes ((Option!7887 0))(
  ( (None!7886) (Some!7886 (v!37620 tuple2!37856)) )
))
(declare-fun lt!1241018 () Option!7887)

(declare-fun get!12310 (Option!7887) tuple2!37856)

(assert (=> b!3607442 (= lt!1241039 (get!12310 lt!1241018))))

(declare-fun lt!1241034 () Unit!54082)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!897 (LexerInterface!5217 List!38087 List!38085 List!38085) Unit!54082)

(assert (=> b!3607442 (= lt!1241034 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!897 thiss!23823 rules!3307 lt!1241020 suffix!1395))))

(declare-fun maxPrefix!2751 (LexerInterface!5217 List!38087 List!38085) Option!7887)

(assert (=> b!3607442 (= lt!1241018 (maxPrefix!2751 thiss!23823 rules!3307 lt!1241053))))

(assert (=> b!3607442 (isPrefix!2991 lt!1241020 lt!1241053)))

(declare-fun lt!1241048 () Unit!54082)

(assert (=> b!3607442 (= lt!1241048 (lemmaConcatTwoListThenFirstIsPrefix!1912 lt!1241020 suffix!1395))))

(assert (=> b!3607442 (= lt!1241053 (++!9444 lt!1241020 suffix!1395))))

(declare-fun bm!260755 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!612 (Regex!10387 List!38085 C!20960) Unit!54082)

(assert (=> bm!260755 (= call!260761 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!612 (regex!5628 (rule!8374 (_1!22062 lt!1241039))) lt!1241029 lt!1241038))))

(declare-fun b!3607443 () Bool)

(declare-fun res!1458802 () Bool)

(assert (=> b!3607443 (=> res!1458802 e!2232500)))

(assert (=> b!3607443 (= res!1458802 (not (contains!7319 (usedCharacters!842 (regex!5628 anOtherTypeRule!33)) lt!1241040)))))

(declare-fun b!3607444 () Bool)

(declare-fun res!1458818 () Bool)

(declare-fun e!2232493 () Bool)

(assert (=> b!3607444 (=> res!1458818 e!2232493)))

(declare-fun isEmpty!22410 (List!38085) Bool)

(assert (=> b!3607444 (= res!1458818 (isEmpty!22410 suffix!1395))))

(declare-fun e!2232505 () Bool)

(declare-fun tp!1103002 () Bool)

(declare-fun token!511 () Token!10622)

(declare-fun e!2232497 () Bool)

(declare-fun b!3607445 () Bool)

(declare-fun inv!21 (TokenValue!5858) Bool)

(assert (=> b!3607445 (= e!2232497 (and (inv!21 (value!180858 token!511)) e!2232505 tp!1103002))))

(declare-fun b!3607446 () Bool)

(assert (=> b!3607446 false))

(declare-fun lt!1241050 () Unit!54082)

(assert (=> b!3607446 (= lt!1241050 call!260761)))

(assert (=> b!3607446 (not call!260762)))

(declare-fun lt!1241041 () Unit!54082)

(assert (=> b!3607446 (= lt!1241041 (lemmaSepRuleNotContainsCharContainedInANonSepRule!216 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8374 (_1!22062 lt!1241039)) lt!1241038))))

(declare-fun e!2232504 () Unit!54082)

(declare-fun Unit!54085 () Unit!54082)

(assert (=> b!3607446 (= e!2232504 Unit!54085)))

(declare-fun b!3607447 () Bool)

(declare-fun res!1458819 () Bool)

(assert (=> b!3607447 (=> res!1458819 e!2232500)))

(declare-fun sepAndNonSepRulesDisjointChars!1798 (List!38087 List!38087) Bool)

(assert (=> b!3607447 (= res!1458819 (not (sepAndNonSepRulesDisjointChars!1798 rules!3307 rules!3307)))))

(declare-fun tp!1103008 () Bool)

(declare-fun b!3607448 () Bool)

(declare-fun inv!51328 (String!42624) Bool)

(declare-fun inv!51331 (TokenValueInjection!11144) Bool)

(assert (=> b!3607448 (= e!2232498 (and tp!1103008 (inv!51328 (tag!6330 (h!43383 rules!3307))) (inv!51331 (transformation!5628 (h!43383 rules!3307))) e!2232510))))

(declare-fun b!3607449 () Bool)

(declare-fun Unit!54086 () Unit!54082)

(assert (=> b!3607449 (= e!2232504 Unit!54086)))

(declare-fun b!3607450 () Bool)

(declare-fun res!1458812 () Bool)

(declare-fun e!2232499 () Bool)

(assert (=> b!3607450 (=> (not res!1458812) (not e!2232499))))

(declare-fun contains!7320 (List!38087 Rule!11056) Bool)

(assert (=> b!3607450 (= res!1458812 (contains!7320 rules!3307 rule!403))))

(declare-fun e!2232523 () Bool)

(assert (=> b!3607451 (= e!2232523 (and tp!1103007 tp!1103000))))

(declare-fun res!1458804 () Bool)

(assert (=> start!335698 (=> (not res!1458804) (not e!2232499))))

(get-info :version)

(assert (=> start!335698 (= res!1458804 ((_ is Lexer!5215) thiss!23823))))

(assert (=> start!335698 e!2232499))

(assert (=> start!335698 e!2232518))

(assert (=> start!335698 e!2232508))

(assert (=> start!335698 true))

(declare-fun inv!51332 (Token!10622) Bool)

(assert (=> start!335698 (and (inv!51332 token!511) e!2232497)))

(declare-fun e!2232503 () Bool)

(assert (=> start!335698 e!2232503))

(declare-fun e!2232524 () Bool)

(assert (=> start!335698 e!2232524))

(declare-fun b!3607437 () Bool)

(declare-fun e!2232521 () Bool)

(declare-fun lt!1241025 () Rule!11056)

(assert (=> b!3607437 (= e!2232521 (= (rule!8374 (_1!22062 lt!1241039)) lt!1241025))))

(declare-fun b!3607452 () Bool)

(declare-fun e!2232519 () Bool)

(assert (=> b!3607452 (= e!2232499 e!2232519)))

(declare-fun res!1458822 () Bool)

(assert (=> b!3607452 (=> (not res!1458822) (not e!2232519))))

(declare-fun lt!1241042 () Option!7887)

(declare-fun isDefined!6119 (Option!7887) Bool)

(assert (=> b!3607452 (= res!1458822 (isDefined!6119 lt!1241042))))

(assert (=> b!3607452 (= lt!1241042 (maxPrefix!2751 thiss!23823 rules!3307 lt!1241020))))

(declare-fun lt!1241046 () BalanceConc!22744)

(assert (=> b!3607452 (= lt!1241020 (list!13996 lt!1241046))))

(assert (=> b!3607452 (= lt!1241046 (charsOf!3642 token!511))))

(declare-fun b!3607453 () Bool)

(declare-fun res!1458809 () Bool)

(assert (=> b!3607453 (=> (not res!1458809) (not e!2232499))))

(declare-fun rulesInvariant!4614 (LexerInterface!5217 List!38087) Bool)

(assert (=> b!3607453 (= res!1458809 (rulesInvariant!4614 thiss!23823 rules!3307))))

(declare-fun b!3607454 () Bool)

(declare-fun e!2232514 () Bool)

(assert (=> b!3607454 (= e!2232511 e!2232514)))

(declare-fun res!1458815 () Bool)

(assert (=> b!3607454 (=> res!1458815 e!2232514)))

(declare-fun lt!1241030 () TokenValue!5858)

(declare-fun lt!1241036 () Int)

(assert (=> b!3607454 (= res!1458815 (not (= lt!1241018 (Some!7886 (tuple2!37857 (Token!10623 lt!1241030 (rule!8374 (_1!22062 lt!1241039)) lt!1241036 lt!1241029) (_2!22062 lt!1241039))))))))

(declare-fun size!28938 (BalanceConc!22744) Int)

(assert (=> b!3607454 (= lt!1241036 (size!28938 lt!1241028))))

(declare-fun apply!9134 (TokenValueInjection!11144 BalanceConc!22744) TokenValue!5858)

(assert (=> b!3607454 (= lt!1241030 (apply!9134 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))) lt!1241028))))

(declare-fun lt!1241024 () Unit!54082)

(declare-fun lemmaCharactersSize!681 (Token!10622) Unit!54082)

(assert (=> b!3607454 (= lt!1241024 (lemmaCharactersSize!681 (_1!22062 lt!1241039)))))

(declare-fun lt!1241051 () Unit!54082)

(declare-fun lemmaEqSameImage!819 (TokenValueInjection!11144 BalanceConc!22744 BalanceConc!22744) Unit!54082)

(declare-fun seqFromList!4181 (List!38085) BalanceConc!22744)

(assert (=> b!3607454 (= lt!1241051 (lemmaEqSameImage!819 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))) lt!1241028 (seqFromList!4181 (originalCharacters!6342 (_1!22062 lt!1241039)))))))

(declare-fun lt!1241019 () Unit!54082)

(declare-fun lemmaSemiInverse!1385 (TokenValueInjection!11144 BalanceConc!22744) Unit!54082)

(assert (=> b!3607454 (= lt!1241019 (lemmaSemiInverse!1385 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))) lt!1241028))))

(declare-fun b!3607455 () Bool)

(assert (=> b!3607455 (= e!2232507 e!2232521)))

(declare-fun res!1458814 () Bool)

(assert (=> b!3607455 (=> (not res!1458814) (not e!2232521))))

(declare-fun matchR!4956 (Regex!10387 List!38085) Bool)

(assert (=> b!3607455 (= res!1458814 (matchR!4956 (regex!5628 lt!1241025) (list!13996 (charsOf!3642 (_1!22062 lt!1241039)))))))

(declare-fun get!12311 (Option!7886) Rule!11056)

(assert (=> b!3607455 (= lt!1241025 (get!12311 lt!1241037))))

(declare-fun b!3607456 () Bool)

(declare-fun e!2232506 () Unit!54082)

(declare-fun Unit!54087 () Unit!54082)

(assert (=> b!3607456 (= e!2232506 Unit!54087)))

(declare-fun lt!1241043 () Unit!54082)

(assert (=> b!3607456 (= lt!1241043 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!612 (regex!5628 rule!403) lt!1241020 lt!1241038))))

(assert (=> b!3607456 false))

(declare-fun b!3607457 () Bool)

(declare-fun e!2232516 () Unit!54082)

(assert (=> b!3607457 (= e!2232516 e!2232504)))

(declare-fun c!624147 () Bool)

(assert (=> b!3607457 (= c!624147 (isSeparator!5628 (rule!8374 (_1!22062 lt!1241039))))))

(declare-fun b!3607458 () Bool)

(declare-fun e!2232512 () Bool)

(assert (=> b!3607458 (= e!2232512 (not e!2232493))))

(declare-fun res!1458801 () Bool)

(assert (=> b!3607458 (=> res!1458801 e!2232493)))

(assert (=> b!3607458 (= res!1458801 (not (matchR!4956 (regex!5628 rule!403) lt!1241020)))))

(declare-fun ruleValid!1893 (LexerInterface!5217 Rule!11056) Bool)

(assert (=> b!3607458 (ruleValid!1893 thiss!23823 rule!403)))

(declare-fun lt!1241027 () Unit!54082)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1048 (LexerInterface!5217 Rule!11056 List!38087) Unit!54082)

(assert (=> b!3607458 (= lt!1241027 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1048 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3607459 () Bool)

(declare-fun res!1458805 () Bool)

(assert (=> b!3607459 (=> res!1458805 e!2232511)))

(assert (=> b!3607459 (= res!1458805 (not (matchR!4956 (regex!5628 (rule!8374 (_1!22062 lt!1241039))) lt!1241029)))))

(declare-fun b!3607460 () Bool)

(assert (=> b!3607460 (= e!2232516 e!2232509)))

(declare-fun c!624144 () Bool)

(assert (=> b!3607460 (= c!624144 (not (isSeparator!5628 (rule!8374 (_1!22062 lt!1241039)))))))

(declare-fun b!3607461 () Bool)

(declare-fun res!1458810 () Bool)

(assert (=> b!3607461 (=> (not res!1458810) (not e!2232512))))

(assert (=> b!3607461 (= res!1458810 (= (rule!8374 token!511) rule!403))))

(declare-fun b!3607462 () Bool)

(declare-fun res!1458811 () Bool)

(assert (=> b!3607462 (=> (not res!1458811) (not e!2232499))))

(assert (=> b!3607462 (= res!1458811 (not (= (isSeparator!5628 anOtherTypeRule!33) (isSeparator!5628 rule!403))))))

(declare-fun b!3607463 () Bool)

(declare-fun e!2232501 () Bool)

(assert (=> b!3607463 (= e!2232501 e!2232495)))

(declare-fun res!1458813 () Bool)

(assert (=> b!3607463 (=> res!1458813 e!2232495)))

(assert (=> b!3607463 (= res!1458813 (<= lt!1241036 (size!28938 lt!1241046)))))

(declare-fun lt!1241021 () Unit!54082)

(assert (=> b!3607463 (= lt!1241021 e!2232516)))

(declare-fun c!624145 () Bool)

(assert (=> b!3607463 (= c!624145 (isSeparator!5628 rule!403))))

(declare-fun lt!1241022 () Unit!54082)

(assert (=> b!3607463 (= lt!1241022 e!2232506)))

(declare-fun c!624146 () Bool)

(declare-fun lt!1241049 () List!38085)

(assert (=> b!3607463 (= c!624146 (not (contains!7319 lt!1241049 lt!1241038)))))

(declare-fun head!7582 (List!38085) C!20960)

(assert (=> b!3607463 (= lt!1241038 (head!7582 lt!1241029))))

(declare-fun e!2232494 () Bool)

(assert (=> b!3607464 (= e!2232494 (and tp!1103003 tp!1103004))))

(declare-fun bm!260756 () Bool)

(declare-fun call!260760 () List!38085)

(assert (=> bm!260756 (= call!260760 (usedCharacters!842 (regex!5628 (rule!8374 (_1!22062 lt!1241039)))))))

(declare-fun e!2232522 () Bool)

(assert (=> b!3607465 (= e!2232522 (and tp!1103013 tp!1103011))))

(declare-fun b!3607466 () Bool)

(assert (=> b!3607466 (= e!2232493 e!2232500)))

(declare-fun res!1458816 () Bool)

(assert (=> b!3607466 (=> res!1458816 e!2232500)))

(assert (=> b!3607466 (= res!1458816 (contains!7319 lt!1241049 lt!1241040))))

(assert (=> b!3607466 (= lt!1241040 (head!7582 suffix!1395))))

(assert (=> b!3607466 (= lt!1241049 (usedCharacters!842 (regex!5628 rule!403)))))

(declare-fun b!3607467 () Bool)

(declare-fun Unit!54088 () Unit!54082)

(assert (=> b!3607467 (= e!2232506 Unit!54088)))

(declare-fun b!3607468 () Bool)

(assert (=> b!3607468 (= e!2232514 e!2232501)))

(declare-fun res!1458806 () Bool)

(assert (=> b!3607468 (=> res!1458806 e!2232501)))

(declare-fun lt!1241026 () List!38085)

(declare-fun lt!1241035 () Option!7887)

(assert (=> b!3607468 (= res!1458806 (or (not (= lt!1241026 (_2!22062 lt!1241039))) (not (= lt!1241035 (Some!7886 (tuple2!37857 (_1!22062 lt!1241039) lt!1241026))))))))

(assert (=> b!3607468 (= (_2!22062 lt!1241039) lt!1241026)))

(declare-fun lt!1241045 () Unit!54082)

(declare-fun lemmaSamePrefixThenSameSuffix!1346 (List!38085 List!38085 List!38085 List!38085 List!38085) Unit!54082)

(assert (=> b!3607468 (= lt!1241045 (lemmaSamePrefixThenSameSuffix!1346 lt!1241029 (_2!22062 lt!1241039) lt!1241029 lt!1241026 lt!1241053))))

(declare-fun getSuffix!1566 (List!38085 List!38085) List!38085)

(assert (=> b!3607468 (= lt!1241026 (getSuffix!1566 lt!1241053 lt!1241029))))

(declare-fun lt!1241044 () TokenValue!5858)

(declare-fun lt!1241055 () Int)

(assert (=> b!3607468 (= lt!1241035 (Some!7886 (tuple2!37857 (Token!10623 lt!1241044 (rule!8374 (_1!22062 lt!1241039)) lt!1241055 lt!1241029) (_2!22062 lt!1241039))))))

(declare-fun maxPrefixOneRule!1895 (LexerInterface!5217 Rule!11056 List!38085) Option!7887)

(assert (=> b!3607468 (= lt!1241035 (maxPrefixOneRule!1895 thiss!23823 (rule!8374 (_1!22062 lt!1241039)) lt!1241053))))

(declare-fun size!28939 (List!38085) Int)

(assert (=> b!3607468 (= lt!1241055 (size!28939 lt!1241029))))

(assert (=> b!3607468 (= lt!1241044 (apply!9134 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))) (seqFromList!4181 lt!1241029)))))

(declare-fun lt!1241031 () Unit!54082)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!967 (LexerInterface!5217 List!38087 List!38085 List!38085 List!38085 Rule!11056) Unit!54082)

(assert (=> b!3607468 (= lt!1241031 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!967 thiss!23823 rules!3307 lt!1241029 lt!1241053 (_2!22062 lt!1241039) (rule!8374 (_1!22062 lt!1241039))))))

(declare-fun tp!1103009 () Bool)

(declare-fun b!3607469 () Bool)

(assert (=> b!3607469 (= e!2232503 (and tp!1103009 (inv!51328 (tag!6330 rule!403)) (inv!51331 (transformation!5628 rule!403)) e!2232494))))

(declare-fun b!3607470 () Bool)

(declare-fun Unit!54089 () Unit!54082)

(assert (=> b!3607470 (= e!2232509 Unit!54089)))

(declare-fun bm!260757 () Bool)

(assert (=> bm!260757 (= call!260762 (contains!7319 call!260760 lt!1241038))))

(declare-fun tp!1103001 () Bool)

(declare-fun b!3607471 () Bool)

(assert (=> b!3607471 (= e!2232505 (and tp!1103001 (inv!51328 (tag!6330 (rule!8374 token!511))) (inv!51331 (transformation!5628 (rule!8374 token!511))) e!2232522))))

(declare-fun b!3607472 () Bool)

(declare-fun res!1458820 () Bool)

(assert (=> b!3607472 (=> (not res!1458820) (not e!2232499))))

(assert (=> b!3607472 (= res!1458820 (contains!7320 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3607473 () Bool)

(declare-fun res!1458803 () Bool)

(assert (=> b!3607473 (=> (not res!1458803) (not e!2232512))))

(declare-fun lt!1241054 () tuple2!37856)

(assert (=> b!3607473 (= res!1458803 (isEmpty!22410 (_2!22062 lt!1241054)))))

(declare-fun b!3607474 () Bool)

(declare-fun res!1458821 () Bool)

(assert (=> b!3607474 (=> (not res!1458821) (not e!2232499))))

(declare-fun isEmpty!22411 (List!38087) Bool)

(assert (=> b!3607474 (= res!1458821 (not (isEmpty!22411 rules!3307)))))

(declare-fun b!3607475 () Bool)

(assert (=> b!3607475 (= e!2232519 e!2232512)))

(declare-fun res!1458823 () Bool)

(assert (=> b!3607475 (=> (not res!1458823) (not e!2232512))))

(assert (=> b!3607475 (= res!1458823 (= (_1!22062 lt!1241054) token!511))))

(assert (=> b!3607475 (= lt!1241054 (get!12310 lt!1241042))))

(declare-fun b!3607476 () Bool)

(declare-fun tp!1103014 () Bool)

(assert (=> b!3607476 (= e!2232524 (and tp!1103014 (inv!51328 (tag!6330 anOtherTypeRule!33)) (inv!51331 (transformation!5628 anOtherTypeRule!33)) e!2232523))))

(assert (= (and start!335698 res!1458804) b!3607474))

(assert (= (and b!3607474 res!1458821) b!3607453))

(assert (= (and b!3607453 res!1458809) b!3607450))

(assert (= (and b!3607450 res!1458812) b!3607472))

(assert (= (and b!3607472 res!1458820) b!3607462))

(assert (= (and b!3607462 res!1458811) b!3607452))

(assert (= (and b!3607452 res!1458822) b!3607475))

(assert (= (and b!3607475 res!1458823) b!3607473))

(assert (= (and b!3607473 res!1458803) b!3607461))

(assert (= (and b!3607461 res!1458810) b!3607458))

(assert (= (and b!3607458 (not res!1458801)) b!3607444))

(assert (= (and b!3607444 (not res!1458818)) b!3607466))

(assert (= (and b!3607466 (not res!1458816)) b!3607443))

(assert (= (and b!3607443 (not res!1458802)) b!3607447))

(assert (= (and b!3607447 (not res!1458819)) b!3607442))

(assert (= (and b!3607442 res!1458807) b!3607455))

(assert (= (and b!3607455 res!1458814) b!3607437))

(assert (= (and b!3607442 (not res!1458808)) b!3607459))

(assert (= (and b!3607459 (not res!1458805)) b!3607454))

(assert (= (and b!3607454 (not res!1458815)) b!3607468))

(assert (= (and b!3607468 (not res!1458806)) b!3607463))

(assert (= (and b!3607463 c!624146) b!3607456))

(assert (= (and b!3607463 (not c!624146)) b!3607467))

(assert (= (and b!3607463 c!624145) b!3607460))

(assert (= (and b!3607463 (not c!624145)) b!3607457))

(assert (= (and b!3607460 c!624144) b!3607441))

(assert (= (and b!3607460 (not c!624144)) b!3607470))

(assert (= (and b!3607457 c!624147) b!3607446))

(assert (= (and b!3607457 (not c!624147)) b!3607449))

(assert (= (or b!3607441 b!3607446) bm!260755))

(assert (= (or b!3607441 b!3607446) bm!260756))

(assert (= (or b!3607441 b!3607446) bm!260757))

(assert (= (and b!3607463 (not res!1458813)) b!3607439))

(assert (= (and b!3607439 (not res!1458817)) b!3607438))

(assert (= b!3607448 b!3607440))

(assert (= b!3607435 b!3607448))

(assert (= (and start!335698 ((_ is Cons!37963) rules!3307)) b!3607435))

(assert (= (and start!335698 ((_ is Cons!37961) suffix!1395)) b!3607436))

(assert (= b!3607471 b!3607465))

(assert (= b!3607445 b!3607471))

(assert (= start!335698 b!3607445))

(assert (= b!3607469 b!3607464))

(assert (= start!335698 b!3607469))

(assert (= b!3607476 b!3607451))

(assert (= start!335698 b!3607476))

(declare-fun m!4104463 () Bool)

(assert (=> b!3607450 m!4104463))

(declare-fun m!4104465 () Bool)

(assert (=> b!3607452 m!4104465))

(declare-fun m!4104467 () Bool)

(assert (=> b!3607452 m!4104467))

(declare-fun m!4104469 () Bool)

(assert (=> b!3607452 m!4104469))

(declare-fun m!4104471 () Bool)

(assert (=> b!3607452 m!4104471))

(declare-fun m!4104473 () Bool)

(assert (=> b!3607466 m!4104473))

(declare-fun m!4104475 () Bool)

(assert (=> b!3607466 m!4104475))

(declare-fun m!4104477 () Bool)

(assert (=> b!3607466 m!4104477))

(declare-fun m!4104479 () Bool)

(assert (=> b!3607476 m!4104479))

(declare-fun m!4104481 () Bool)

(assert (=> b!3607476 m!4104481))

(declare-fun m!4104483 () Bool)

(assert (=> b!3607446 m!4104483))

(declare-fun m!4104485 () Bool)

(assert (=> b!3607463 m!4104485))

(declare-fun m!4104487 () Bool)

(assert (=> b!3607463 m!4104487))

(declare-fun m!4104489 () Bool)

(assert (=> b!3607463 m!4104489))

(declare-fun m!4104491 () Bool)

(assert (=> b!3607469 m!4104491))

(declare-fun m!4104493 () Bool)

(assert (=> b!3607469 m!4104493))

(declare-fun m!4104495 () Bool)

(assert (=> b!3607453 m!4104495))

(declare-fun m!4104497 () Bool)

(assert (=> b!3607439 m!4104497))

(declare-fun m!4104499 () Bool)

(assert (=> b!3607439 m!4104499))

(declare-fun m!4104501 () Bool)

(assert (=> bm!260757 m!4104501))

(declare-fun m!4104503 () Bool)

(assert (=> bm!260755 m!4104503))

(declare-fun m!4104505 () Bool)

(assert (=> b!3607458 m!4104505))

(declare-fun m!4104507 () Bool)

(assert (=> b!3607458 m!4104507))

(declare-fun m!4104509 () Bool)

(assert (=> b!3607458 m!4104509))

(declare-fun m!4104511 () Bool)

(assert (=> b!3607454 m!4104511))

(declare-fun m!4104513 () Bool)

(assert (=> b!3607454 m!4104513))

(declare-fun m!4104515 () Bool)

(assert (=> b!3607454 m!4104515))

(declare-fun m!4104517 () Bool)

(assert (=> b!3607454 m!4104517))

(declare-fun m!4104519 () Bool)

(assert (=> b!3607454 m!4104519))

(assert (=> b!3607454 m!4104515))

(declare-fun m!4104521 () Bool)

(assert (=> b!3607454 m!4104521))

(declare-fun m!4104523 () Bool)

(assert (=> b!3607443 m!4104523))

(assert (=> b!3607443 m!4104523))

(declare-fun m!4104525 () Bool)

(assert (=> b!3607443 m!4104525))

(declare-fun m!4104527 () Bool)

(assert (=> b!3607468 m!4104527))

(declare-fun m!4104529 () Bool)

(assert (=> b!3607468 m!4104529))

(declare-fun m!4104531 () Bool)

(assert (=> b!3607468 m!4104531))

(declare-fun m!4104533 () Bool)

(assert (=> b!3607468 m!4104533))

(declare-fun m!4104535 () Bool)

(assert (=> b!3607468 m!4104535))

(declare-fun m!4104537 () Bool)

(assert (=> b!3607468 m!4104537))

(assert (=> b!3607468 m!4104531))

(declare-fun m!4104539 () Bool)

(assert (=> b!3607468 m!4104539))

(declare-fun m!4104541 () Bool)

(assert (=> b!3607455 m!4104541))

(assert (=> b!3607455 m!4104541))

(declare-fun m!4104543 () Bool)

(assert (=> b!3607455 m!4104543))

(assert (=> b!3607455 m!4104543))

(declare-fun m!4104545 () Bool)

(assert (=> b!3607455 m!4104545))

(declare-fun m!4104547 () Bool)

(assert (=> b!3607455 m!4104547))

(declare-fun m!4104549 () Bool)

(assert (=> b!3607441 m!4104549))

(declare-fun m!4104551 () Bool)

(assert (=> b!3607472 m!4104551))

(declare-fun m!4104553 () Bool)

(assert (=> b!3607459 m!4104553))

(declare-fun m!4104555 () Bool)

(assert (=> bm!260756 m!4104555))

(assert (=> b!3607438 m!4104555))

(assert (=> b!3607438 m!4104555))

(declare-fun m!4104557 () Bool)

(assert (=> b!3607438 m!4104557))

(declare-fun m!4104559 () Bool)

(assert (=> b!3607438 m!4104559))

(declare-fun m!4104561 () Bool)

(assert (=> b!3607475 m!4104561))

(declare-fun m!4104563 () Bool)

(assert (=> b!3607448 m!4104563))

(declare-fun m!4104565 () Bool)

(assert (=> b!3607448 m!4104565))

(declare-fun m!4104567 () Bool)

(assert (=> b!3607445 m!4104567))

(declare-fun m!4104569 () Bool)

(assert (=> b!3607471 m!4104569))

(declare-fun m!4104571 () Bool)

(assert (=> b!3607471 m!4104571))

(declare-fun m!4104573 () Bool)

(assert (=> b!3607444 m!4104573))

(declare-fun m!4104575 () Bool)

(assert (=> b!3607456 m!4104575))

(declare-fun m!4104577 () Bool)

(assert (=> b!3607473 m!4104577))

(declare-fun m!4104579 () Bool)

(assert (=> b!3607447 m!4104579))

(declare-fun m!4104581 () Bool)

(assert (=> start!335698 m!4104581))

(declare-fun m!4104583 () Bool)

(assert (=> b!3607442 m!4104583))

(declare-fun m!4104585 () Bool)

(assert (=> b!3607442 m!4104585))

(declare-fun m!4104587 () Bool)

(assert (=> b!3607442 m!4104587))

(declare-fun m!4104589 () Bool)

(assert (=> b!3607442 m!4104589))

(declare-fun m!4104591 () Bool)

(assert (=> b!3607442 m!4104591))

(declare-fun m!4104593 () Bool)

(assert (=> b!3607442 m!4104593))

(declare-fun m!4104595 () Bool)

(assert (=> b!3607442 m!4104595))

(declare-fun m!4104597 () Bool)

(assert (=> b!3607442 m!4104597))

(declare-fun m!4104599 () Bool)

(assert (=> b!3607442 m!4104599))

(assert (=> b!3607442 m!4104589))

(declare-fun m!4104601 () Bool)

(assert (=> b!3607442 m!4104601))

(declare-fun m!4104603 () Bool)

(assert (=> b!3607442 m!4104603))

(declare-fun m!4104605 () Bool)

(assert (=> b!3607442 m!4104605))

(declare-fun m!4104607 () Bool)

(assert (=> b!3607442 m!4104607))

(assert (=> b!3607442 m!4104541))

(declare-fun m!4104609 () Bool)

(assert (=> b!3607442 m!4104609))

(declare-fun m!4104611 () Bool)

(assert (=> b!3607474 m!4104611))

(check-sat (not b!3607472) (not b!3607446) (not b!3607471) b_and!262757 (not b!3607444) (not b!3607439) (not b!3607450) (not b!3607458) (not b!3607475) (not b!3607473) (not b!3607468) (not b!3607438) (not b_next!94267) (not b!3607447) tp_is_empty!17857 (not b!3607435) (not b!3607448) (not bm!260757) (not b!3607441) (not b_next!94279) (not b_next!94271) (not b!3607452) b_and!262747 (not b!3607454) (not b!3607469) (not b_next!94273) (not b!3607443) (not b!3607474) (not b!3607445) (not start!335698) b_and!262755 (not bm!260756) (not b_next!94275) b_and!262759 b_and!262753 b_and!262751 (not b!3607436) (not b_next!94277) (not b!3607476) (not b!3607453) (not b!3607442) (not b!3607466) (not b_next!94265) (not b!3607463) b_and!262749 b_and!262761 (not bm!260755) (not b!3607459) (not b_next!94269) (not b!3607455) (not b!3607456))
(check-sat (not b_next!94267) (not b_next!94279) (not b_next!94271) b_and!262747 (not b_next!94273) b_and!262757 b_and!262755 (not b_next!94277) b_and!262761 (not b_next!94269) (not b_next!94275) b_and!262759 b_and!262753 b_and!262751 (not b_next!94265) b_and!262749)
(get-model)

(declare-fun d!1062525 () Bool)

(assert (=> d!1062525 (isDefined!6119 (maxPrefix!2751 thiss!23823 rules!3307 (++!9444 lt!1241020 suffix!1395)))))

(declare-fun lt!1241211 () Unit!54082)

(declare-fun e!2232670 () Unit!54082)

(assert (=> d!1062525 (= lt!1241211 e!2232670)))

(declare-fun c!624204 () Bool)

(declare-fun isEmpty!22413 (Option!7887) Bool)

(assert (=> d!1062525 (= c!624204 (isEmpty!22413 (maxPrefix!2751 thiss!23823 rules!3307 (++!9444 lt!1241020 suffix!1395))))))

(declare-fun lt!1241226 () Unit!54082)

(declare-fun lt!1241219 () Unit!54082)

(assert (=> d!1062525 (= lt!1241226 lt!1241219)))

(declare-fun e!2232669 () Bool)

(assert (=> d!1062525 e!2232669))

(declare-fun res!1458975 () Bool)

(assert (=> d!1062525 (=> (not res!1458975) (not e!2232669))))

(declare-fun lt!1241222 () Token!10622)

(assert (=> d!1062525 (= res!1458975 (isDefined!6118 (getRuleFromTag!1234 thiss!23823 rules!3307 (tag!6330 (rule!8374 lt!1241222)))))))

(assert (=> d!1062525 (= lt!1241219 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1234 thiss!23823 rules!3307 lt!1241020 lt!1241222))))

(declare-fun lt!1241218 () Unit!54082)

(declare-fun lt!1241212 () Unit!54082)

(assert (=> d!1062525 (= lt!1241218 lt!1241212)))

(declare-fun lt!1241221 () List!38085)

(assert (=> d!1062525 (isPrefix!2991 lt!1241221 (++!9444 lt!1241020 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!446 (List!38085 List!38085 List!38085) Unit!54082)

(assert (=> d!1062525 (= lt!1241212 (lemmaPrefixStaysPrefixWhenAddingToSuffix!446 lt!1241221 lt!1241020 suffix!1395))))

(assert (=> d!1062525 (= lt!1241221 (list!13996 (charsOf!3642 lt!1241222)))))

(declare-fun lt!1241225 () Unit!54082)

(declare-fun lt!1241215 () Unit!54082)

(assert (=> d!1062525 (= lt!1241225 lt!1241215)))

(declare-fun lt!1241227 () List!38085)

(declare-fun lt!1241214 () List!38085)

(assert (=> d!1062525 (isPrefix!2991 lt!1241227 (++!9444 lt!1241227 lt!1241214))))

(assert (=> d!1062525 (= lt!1241215 (lemmaConcatTwoListThenFirstIsPrefix!1912 lt!1241227 lt!1241214))))

(assert (=> d!1062525 (= lt!1241214 (_2!22062 (get!12310 (maxPrefix!2751 thiss!23823 rules!3307 lt!1241020))))))

(assert (=> d!1062525 (= lt!1241227 (list!13996 (charsOf!3642 lt!1241222)))))

(declare-datatypes ((List!38090 0))(
  ( (Nil!37966) (Cons!37966 (h!43386 Token!10622) (t!293141 List!38090)) )
))
(declare-fun head!7584 (List!38090) Token!10622)

(declare-datatypes ((IArray!23139 0))(
  ( (IArray!23140 (innerList!11627 List!38090)) )
))
(declare-datatypes ((Conc!11567 0))(
  ( (Node!11567 (left!29667 Conc!11567) (right!29997 Conc!11567) (csize!23364 Int) (cheight!11778 Int)) (Leaf!17992 (xs!14769 IArray!23139) (csize!23365 Int)) (Empty!11567) )
))
(declare-datatypes ((BalanceConc!22748 0))(
  ( (BalanceConc!22749 (c!624293 Conc!11567)) )
))
(declare-fun list!13999 (BalanceConc!22748) List!38090)

(declare-datatypes ((tuple2!37860 0))(
  ( (tuple2!37861 (_1!22064 BalanceConc!22748) (_2!22064 BalanceConc!22744)) )
))
(declare-fun lex!2478 (LexerInterface!5217 List!38087 BalanceConc!22744) tuple2!37860)

(assert (=> d!1062525 (= lt!1241222 (head!7584 (list!13999 (_1!22064 (lex!2478 thiss!23823 rules!3307 (seqFromList!4181 lt!1241020))))))))

(assert (=> d!1062525 (not (isEmpty!22411 rules!3307))))

(assert (=> d!1062525 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!897 thiss!23823 rules!3307 lt!1241020 suffix!1395) lt!1241211)))

(declare-fun b!3607726 () Bool)

(declare-fun res!1458974 () Bool)

(assert (=> b!3607726 (=> (not res!1458974) (not e!2232669))))

(assert (=> b!3607726 (= res!1458974 (matchR!4956 (regex!5628 (get!12311 (getRuleFromTag!1234 thiss!23823 rules!3307 (tag!6330 (rule!8374 lt!1241222))))) (list!13996 (charsOf!3642 lt!1241222))))))

(declare-fun b!3607729 () Bool)

(declare-fun Unit!54092 () Unit!54082)

(assert (=> b!3607729 (= e!2232670 Unit!54092)))

(declare-fun b!3607728 () Bool)

(declare-fun Unit!54093 () Unit!54082)

(assert (=> b!3607728 (= e!2232670 Unit!54093)))

(declare-fun lt!1241217 () List!38085)

(assert (=> b!3607728 (= lt!1241217 (++!9444 lt!1241020 suffix!1395))))

(declare-fun lt!1241213 () Unit!54082)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!482 (LexerInterface!5217 Rule!11056 List!38087 List!38085) Unit!54082)

(assert (=> b!3607728 (= lt!1241213 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!482 thiss!23823 (rule!8374 lt!1241222) rules!3307 lt!1241217))))

(assert (=> b!3607728 (isEmpty!22413 (maxPrefixOneRule!1895 thiss!23823 (rule!8374 lt!1241222) lt!1241217))))

(declare-fun lt!1241224 () Unit!54082)

(assert (=> b!3607728 (= lt!1241224 lt!1241213)))

(declare-fun lt!1241216 () List!38085)

(assert (=> b!3607728 (= lt!1241216 (list!13996 (charsOf!3642 lt!1241222)))))

(declare-fun lt!1241223 () Unit!54082)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!470 (LexerInterface!5217 Rule!11056 List!38085 List!38085) Unit!54082)

(assert (=> b!3607728 (= lt!1241223 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!470 thiss!23823 (rule!8374 lt!1241222) lt!1241216 (++!9444 lt!1241020 suffix!1395)))))

(assert (=> b!3607728 (not (matchR!4956 (regex!5628 (rule!8374 lt!1241222)) lt!1241216))))

(declare-fun lt!1241220 () Unit!54082)

(assert (=> b!3607728 (= lt!1241220 lt!1241223)))

(assert (=> b!3607728 false))

(declare-fun b!3607727 () Bool)

(assert (=> b!3607727 (= e!2232669 (= (rule!8374 lt!1241222) (get!12311 (getRuleFromTag!1234 thiss!23823 rules!3307 (tag!6330 (rule!8374 lt!1241222))))))))

(assert (= (and d!1062525 res!1458975) b!3607726))

(assert (= (and b!3607726 res!1458974) b!3607727))

(assert (= (and d!1062525 c!624204) b!3607728))

(assert (= (and d!1062525 (not c!624204)) b!3607729))

(declare-fun m!4104903 () Bool)

(assert (=> d!1062525 m!4104903))

(declare-fun m!4104905 () Bool)

(assert (=> d!1062525 m!4104905))

(declare-fun m!4104907 () Bool)

(assert (=> d!1062525 m!4104907))

(declare-fun m!4104909 () Bool)

(assert (=> d!1062525 m!4104909))

(declare-fun m!4104911 () Bool)

(assert (=> d!1062525 m!4104911))

(assert (=> d!1062525 m!4104467))

(declare-fun m!4104913 () Bool)

(assert (=> d!1062525 m!4104913))

(declare-fun m!4104915 () Bool)

(assert (=> d!1062525 m!4104915))

(declare-fun m!4104917 () Bool)

(assert (=> d!1062525 m!4104917))

(declare-fun m!4104919 () Bool)

(assert (=> d!1062525 m!4104919))

(declare-fun m!4104921 () Bool)

(assert (=> d!1062525 m!4104921))

(declare-fun m!4104923 () Bool)

(assert (=> d!1062525 m!4104923))

(assert (=> d!1062525 m!4104611))

(assert (=> d!1062525 m!4104603))

(declare-fun m!4104925 () Bool)

(assert (=> d!1062525 m!4104925))

(declare-fun m!4104927 () Bool)

(assert (=> d!1062525 m!4104927))

(declare-fun m!4104929 () Bool)

(assert (=> d!1062525 m!4104929))

(assert (=> d!1062525 m!4104923))

(declare-fun m!4104931 () Bool)

(assert (=> d!1062525 m!4104931))

(assert (=> d!1062525 m!4104603))

(assert (=> d!1062525 m!4104919))

(assert (=> d!1062525 m!4104907))

(assert (=> d!1062525 m!4104927))

(assert (=> d!1062525 m!4104915))

(assert (=> d!1062525 m!4104467))

(declare-fun m!4104933 () Bool)

(assert (=> d!1062525 m!4104933))

(assert (=> d!1062525 m!4104603))

(assert (=> d!1062525 m!4104903))

(assert (=> d!1062525 m!4104903))

(declare-fun m!4104935 () Bool)

(assert (=> d!1062525 m!4104935))

(declare-fun m!4104937 () Bool)

(assert (=> d!1062525 m!4104937))

(assert (=> b!3607726 m!4104931))

(declare-fun m!4104939 () Bool)

(assert (=> b!3607726 m!4104939))

(assert (=> b!3607726 m!4104923))

(assert (=> b!3607726 m!4104931))

(assert (=> b!3607726 m!4104915))

(assert (=> b!3607726 m!4104923))

(assert (=> b!3607726 m!4104915))

(declare-fun m!4104941 () Bool)

(assert (=> b!3607726 m!4104941))

(declare-fun m!4104943 () Bool)

(assert (=> b!3607728 m!4104943))

(declare-fun m!4104945 () Bool)

(assert (=> b!3607728 m!4104945))

(declare-fun m!4104947 () Bool)

(assert (=> b!3607728 m!4104947))

(assert (=> b!3607728 m!4104945))

(assert (=> b!3607728 m!4104603))

(declare-fun m!4104949 () Bool)

(assert (=> b!3607728 m!4104949))

(assert (=> b!3607728 m!4104923))

(declare-fun m!4104951 () Bool)

(assert (=> b!3607728 m!4104951))

(assert (=> b!3607728 m!4104923))

(assert (=> b!3607728 m!4104931))

(assert (=> b!3607728 m!4104603))

(assert (=> b!3607727 m!4104915))

(assert (=> b!3607727 m!4104915))

(assert (=> b!3607727 m!4104941))

(assert (=> b!3607442 d!1062525))

(declare-fun d!1062553 () Bool)

(declare-fun isEmpty!22414 (Option!7886) Bool)

(assert (=> d!1062553 (= (isDefined!6118 lt!1241037) (not (isEmpty!22414 lt!1241037)))))

(declare-fun bs!570749 () Bool)

(assert (= bs!570749 d!1062553))

(declare-fun m!4104953 () Bool)

(assert (=> bs!570749 m!4104953))

(assert (=> b!3607442 d!1062553))

(declare-fun d!1062557 () Bool)

(declare-fun e!2232678 () Bool)

(assert (=> d!1062557 e!2232678))

(declare-fun res!1458986 () Bool)

(assert (=> d!1062557 (=> (not res!1458986) (not e!2232678))))

(declare-fun lt!1241233 () List!38085)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5428 (List!38085) (InoxSet C!20960))

(assert (=> d!1062557 (= res!1458986 (= (content!5428 lt!1241233) ((_ map or) (content!5428 lt!1241029) (content!5428 (_2!22062 lt!1241039)))))))

(declare-fun e!2232679 () List!38085)

(assert (=> d!1062557 (= lt!1241233 e!2232679)))

(declare-fun c!624207 () Bool)

(assert (=> d!1062557 (= c!624207 ((_ is Nil!37961) lt!1241029))))

(assert (=> d!1062557 (= (++!9444 lt!1241029 (_2!22062 lt!1241039)) lt!1241233)))

(declare-fun b!3607745 () Bool)

(assert (=> b!3607745 (= e!2232679 (Cons!37961 (h!43381 lt!1241029) (++!9444 (t!293016 lt!1241029) (_2!22062 lt!1241039))))))

(declare-fun b!3607747 () Bool)

(assert (=> b!3607747 (= e!2232678 (or (not (= (_2!22062 lt!1241039) Nil!37961)) (= lt!1241233 lt!1241029)))))

(declare-fun b!3607744 () Bool)

(assert (=> b!3607744 (= e!2232679 (_2!22062 lt!1241039))))

(declare-fun b!3607746 () Bool)

(declare-fun res!1458987 () Bool)

(assert (=> b!3607746 (=> (not res!1458987) (not e!2232678))))

(assert (=> b!3607746 (= res!1458987 (= (size!28939 lt!1241233) (+ (size!28939 lt!1241029) (size!28939 (_2!22062 lt!1241039)))))))

(assert (= (and d!1062557 c!624207) b!3607744))

(assert (= (and d!1062557 (not c!624207)) b!3607745))

(assert (= (and d!1062557 res!1458986) b!3607746))

(assert (= (and b!3607746 res!1458987) b!3607747))

(declare-fun m!4104957 () Bool)

(assert (=> d!1062557 m!4104957))

(declare-fun m!4104959 () Bool)

(assert (=> d!1062557 m!4104959))

(declare-fun m!4104961 () Bool)

(assert (=> d!1062557 m!4104961))

(declare-fun m!4104963 () Bool)

(assert (=> b!3607745 m!4104963))

(declare-fun m!4104965 () Bool)

(assert (=> b!3607746 m!4104965))

(assert (=> b!3607746 m!4104529))

(declare-fun m!4104967 () Bool)

(assert (=> b!3607746 m!4104967))

(assert (=> b!3607442 d!1062557))

(declare-fun d!1062561 () Bool)

(assert (=> d!1062561 (isPrefix!2991 lt!1241020 (++!9444 lt!1241020 suffix!1395))))

(declare-fun lt!1241239 () Unit!54082)

(declare-fun choose!21067 (List!38085 List!38085) Unit!54082)

(assert (=> d!1062561 (= lt!1241239 (choose!21067 lt!1241020 suffix!1395))))

(assert (=> d!1062561 (= (lemmaConcatTwoListThenFirstIsPrefix!1912 lt!1241020 suffix!1395) lt!1241239)))

(declare-fun bs!570752 () Bool)

(assert (= bs!570752 d!1062561))

(assert (=> bs!570752 m!4104603))

(assert (=> bs!570752 m!4104603))

(declare-fun m!4104971 () Bool)

(assert (=> bs!570752 m!4104971))

(declare-fun m!4104973 () Bool)

(assert (=> bs!570752 m!4104973))

(assert (=> b!3607442 d!1062561))

(declare-fun b!3607759 () Bool)

(declare-fun res!1458997 () Bool)

(declare-fun e!2232689 () Bool)

(assert (=> b!3607759 (=> (not res!1458997) (not e!2232689))))

(assert (=> b!3607759 (= res!1458997 (= (head!7582 lt!1241029) (head!7582 (++!9444 lt!1241029 (_2!22062 lt!1241039)))))))

(declare-fun b!3607758 () Bool)

(declare-fun e!2232691 () Bool)

(assert (=> b!3607758 (= e!2232691 e!2232689)))

(declare-fun res!1458999 () Bool)

(assert (=> b!3607758 (=> (not res!1458999) (not e!2232689))))

(assert (=> b!3607758 (= res!1458999 (not ((_ is Nil!37961) (++!9444 lt!1241029 (_2!22062 lt!1241039)))))))

(declare-fun b!3607760 () Bool)

(declare-fun tail!5593 (List!38085) List!38085)

(assert (=> b!3607760 (= e!2232689 (isPrefix!2991 (tail!5593 lt!1241029) (tail!5593 (++!9444 lt!1241029 (_2!22062 lt!1241039)))))))

(declare-fun d!1062565 () Bool)

(declare-fun e!2232690 () Bool)

(assert (=> d!1062565 e!2232690))

(declare-fun res!1458998 () Bool)

(assert (=> d!1062565 (=> res!1458998 e!2232690)))

(declare-fun lt!1241243 () Bool)

(assert (=> d!1062565 (= res!1458998 (not lt!1241243))))

(assert (=> d!1062565 (= lt!1241243 e!2232691)))

(declare-fun res!1458996 () Bool)

(assert (=> d!1062565 (=> res!1458996 e!2232691)))

(assert (=> d!1062565 (= res!1458996 ((_ is Nil!37961) lt!1241029))))

(assert (=> d!1062565 (= (isPrefix!2991 lt!1241029 (++!9444 lt!1241029 (_2!22062 lt!1241039))) lt!1241243)))

(declare-fun b!3607761 () Bool)

(assert (=> b!3607761 (= e!2232690 (>= (size!28939 (++!9444 lt!1241029 (_2!22062 lt!1241039))) (size!28939 lt!1241029)))))

(assert (= (and d!1062565 (not res!1458996)) b!3607758))

(assert (= (and b!3607758 res!1458999) b!3607759))

(assert (= (and b!3607759 res!1458997) b!3607760))

(assert (= (and d!1062565 (not res!1458998)) b!3607761))

(assert (=> b!3607759 m!4104489))

(assert (=> b!3607759 m!4104589))

(declare-fun m!4104985 () Bool)

(assert (=> b!3607759 m!4104985))

(declare-fun m!4104987 () Bool)

(assert (=> b!3607760 m!4104987))

(assert (=> b!3607760 m!4104589))

(declare-fun m!4104989 () Bool)

(assert (=> b!3607760 m!4104989))

(assert (=> b!3607760 m!4104987))

(assert (=> b!3607760 m!4104989))

(declare-fun m!4104991 () Bool)

(assert (=> b!3607760 m!4104991))

(assert (=> b!3607761 m!4104589))

(declare-fun m!4104993 () Bool)

(assert (=> b!3607761 m!4104993))

(assert (=> b!3607761 m!4104529))

(assert (=> b!3607442 d!1062565))

(declare-fun d!1062573 () Bool)

(declare-fun lt!1241248 () BalanceConc!22744)

(assert (=> d!1062573 (= (list!13996 lt!1241248) (originalCharacters!6342 (_1!22062 lt!1241039)))))

(declare-fun dynLambda!16411 (Int TokenValue!5858) BalanceConc!22744)

(assert (=> d!1062573 (= lt!1241248 (dynLambda!16411 (toChars!7771 (transformation!5628 (rule!8374 (_1!22062 lt!1241039)))) (value!180858 (_1!22062 lt!1241039))))))

(assert (=> d!1062573 (= (charsOf!3642 (_1!22062 lt!1241039)) lt!1241248)))

(declare-fun b_lambda!106737 () Bool)

(assert (=> (not b_lambda!106737) (not d!1062573)))

(declare-fun t!293044 () Bool)

(declare-fun tb!206721 () Bool)

(assert (=> (and b!3607464 (= (toChars!7771 (transformation!5628 rule!403)) (toChars!7771 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) t!293044) tb!206721))

(declare-fun b!3607766 () Bool)

(declare-fun e!2232694 () Bool)

(declare-fun tp!1103021 () Bool)

(declare-fun inv!51335 (Conc!11565) Bool)

(assert (=> b!3607766 (= e!2232694 (and (inv!51335 (c!624149 (dynLambda!16411 (toChars!7771 (transformation!5628 (rule!8374 (_1!22062 lt!1241039)))) (value!180858 (_1!22062 lt!1241039))))) tp!1103021))))

(declare-fun result!251946 () Bool)

(declare-fun inv!51336 (BalanceConc!22744) Bool)

(assert (=> tb!206721 (= result!251946 (and (inv!51336 (dynLambda!16411 (toChars!7771 (transformation!5628 (rule!8374 (_1!22062 lt!1241039)))) (value!180858 (_1!22062 lt!1241039)))) e!2232694))))

(assert (= tb!206721 b!3607766))

(declare-fun m!4104995 () Bool)

(assert (=> b!3607766 m!4104995))

(declare-fun m!4104997 () Bool)

(assert (=> tb!206721 m!4104997))

(assert (=> d!1062573 t!293044))

(declare-fun b_and!262787 () Bool)

(assert (= b_and!262749 (and (=> t!293044 result!251946) b_and!262787)))

(declare-fun t!293046 () Bool)

(declare-fun tb!206723 () Bool)

(assert (=> (and b!3607451 (= (toChars!7771 (transformation!5628 anOtherTypeRule!33)) (toChars!7771 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) t!293046) tb!206723))

(declare-fun result!251950 () Bool)

(assert (= result!251950 result!251946))

(assert (=> d!1062573 t!293046))

(declare-fun b_and!262789 () Bool)

(assert (= b_and!262753 (and (=> t!293046 result!251950) b_and!262789)))

(declare-fun t!293048 () Bool)

(declare-fun tb!206725 () Bool)

(assert (=> (and b!3607465 (= (toChars!7771 (transformation!5628 (rule!8374 token!511))) (toChars!7771 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) t!293048) tb!206725))

(declare-fun result!251952 () Bool)

(assert (= result!251952 result!251946))

(assert (=> d!1062573 t!293048))

(declare-fun b_and!262791 () Bool)

(assert (= b_and!262757 (and (=> t!293048 result!251952) b_and!262791)))

(declare-fun tb!206727 () Bool)

(declare-fun t!293050 () Bool)

(assert (=> (and b!3607440 (= (toChars!7771 (transformation!5628 (h!43383 rules!3307))) (toChars!7771 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) t!293050) tb!206727))

(declare-fun result!251954 () Bool)

(assert (= result!251954 result!251946))

(assert (=> d!1062573 t!293050))

(declare-fun b_and!262793 () Bool)

(assert (= b_and!262761 (and (=> t!293050 result!251954) b_and!262793)))

(declare-fun m!4104999 () Bool)

(assert (=> d!1062573 m!4104999))

(declare-fun m!4105001 () Bool)

(assert (=> d!1062573 m!4105001))

(assert (=> b!3607442 d!1062573))

(declare-fun b!3607768 () Bool)

(declare-fun res!1459001 () Bool)

(declare-fun e!2232695 () Bool)

(assert (=> b!3607768 (=> (not res!1459001) (not e!2232695))))

(assert (=> b!3607768 (= res!1459001 (= (head!7582 lt!1241029) (head!7582 lt!1241053)))))

(declare-fun b!3607767 () Bool)

(declare-fun e!2232697 () Bool)

(assert (=> b!3607767 (= e!2232697 e!2232695)))

(declare-fun res!1459003 () Bool)

(assert (=> b!3607767 (=> (not res!1459003) (not e!2232695))))

(assert (=> b!3607767 (= res!1459003 (not ((_ is Nil!37961) lt!1241053)))))

(declare-fun b!3607769 () Bool)

(assert (=> b!3607769 (= e!2232695 (isPrefix!2991 (tail!5593 lt!1241029) (tail!5593 lt!1241053)))))

(declare-fun d!1062575 () Bool)

(declare-fun e!2232696 () Bool)

(assert (=> d!1062575 e!2232696))

(declare-fun res!1459002 () Bool)

(assert (=> d!1062575 (=> res!1459002 e!2232696)))

(declare-fun lt!1241249 () Bool)

(assert (=> d!1062575 (= res!1459002 (not lt!1241249))))

(assert (=> d!1062575 (= lt!1241249 e!2232697)))

(declare-fun res!1459000 () Bool)

(assert (=> d!1062575 (=> res!1459000 e!2232697)))

(assert (=> d!1062575 (= res!1459000 ((_ is Nil!37961) lt!1241029))))

(assert (=> d!1062575 (= (isPrefix!2991 lt!1241029 lt!1241053) lt!1241249)))

(declare-fun b!3607770 () Bool)

(assert (=> b!3607770 (= e!2232696 (>= (size!28939 lt!1241053) (size!28939 lt!1241029)))))

(assert (= (and d!1062575 (not res!1459000)) b!3607767))

(assert (= (and b!3607767 res!1459003) b!3607768))

(assert (= (and b!3607768 res!1459001) b!3607769))

(assert (= (and d!1062575 (not res!1459002)) b!3607770))

(assert (=> b!3607768 m!4104489))

(declare-fun m!4105003 () Bool)

(assert (=> b!3607768 m!4105003))

(assert (=> b!3607769 m!4104987))

(declare-fun m!4105005 () Bool)

(assert (=> b!3607769 m!4105005))

(assert (=> b!3607769 m!4104987))

(assert (=> b!3607769 m!4105005))

(declare-fun m!4105007 () Bool)

(assert (=> b!3607769 m!4105007))

(declare-fun m!4105009 () Bool)

(assert (=> b!3607770 m!4105009))

(assert (=> b!3607770 m!4104529))

(assert (=> b!3607442 d!1062575))

(declare-fun b!3607789 () Bool)

(declare-fun res!1459021 () Bool)

(declare-fun e!2232705 () Bool)

(assert (=> b!3607789 (=> (not res!1459021) (not e!2232705))))

(declare-fun lt!1241262 () Option!7887)

(assert (=> b!3607789 (= res!1459021 (< (size!28939 (_2!22062 (get!12310 lt!1241262))) (size!28939 lt!1241053)))))

(declare-fun b!3607790 () Bool)

(declare-fun res!1459022 () Bool)

(assert (=> b!3607790 (=> (not res!1459022) (not e!2232705))))

(assert (=> b!3607790 (= res!1459022 (matchR!4956 (regex!5628 (rule!8374 (_1!22062 (get!12310 lt!1241262)))) (list!13996 (charsOf!3642 (_1!22062 (get!12310 lt!1241262))))))))

(declare-fun b!3607791 () Bool)

(declare-fun e!2232706 () Option!7887)

(declare-fun call!260788 () Option!7887)

(assert (=> b!3607791 (= e!2232706 call!260788)))

(declare-fun b!3607792 () Bool)

(declare-fun lt!1241263 () Option!7887)

(declare-fun lt!1241261 () Option!7887)

(assert (=> b!3607792 (= e!2232706 (ite (and ((_ is None!7886) lt!1241263) ((_ is None!7886) lt!1241261)) None!7886 (ite ((_ is None!7886) lt!1241261) lt!1241263 (ite ((_ is None!7886) lt!1241263) lt!1241261 (ite (>= (size!28937 (_1!22062 (v!37620 lt!1241263))) (size!28937 (_1!22062 (v!37620 lt!1241261)))) lt!1241263 lt!1241261)))))))

(assert (=> b!3607792 (= lt!1241263 call!260788)))

(assert (=> b!3607792 (= lt!1241261 (maxPrefix!2751 thiss!23823 (t!293018 rules!3307) lt!1241053))))

(declare-fun b!3607793 () Bool)

(declare-fun res!1459019 () Bool)

(assert (=> b!3607793 (=> (not res!1459019) (not e!2232705))))

(assert (=> b!3607793 (= res!1459019 (= (list!13996 (charsOf!3642 (_1!22062 (get!12310 lt!1241262)))) (originalCharacters!6342 (_1!22062 (get!12310 lt!1241262)))))))

(declare-fun b!3607794 () Bool)

(declare-fun e!2232704 () Bool)

(assert (=> b!3607794 (= e!2232704 e!2232705)))

(declare-fun res!1459018 () Bool)

(assert (=> b!3607794 (=> (not res!1459018) (not e!2232705))))

(assert (=> b!3607794 (= res!1459018 (isDefined!6119 lt!1241262))))

(declare-fun b!3607795 () Bool)

(declare-fun res!1459020 () Bool)

(assert (=> b!3607795 (=> (not res!1459020) (not e!2232705))))

(assert (=> b!3607795 (= res!1459020 (= (value!180858 (_1!22062 (get!12310 lt!1241262))) (apply!9134 (transformation!5628 (rule!8374 (_1!22062 (get!12310 lt!1241262)))) (seqFromList!4181 (originalCharacters!6342 (_1!22062 (get!12310 lt!1241262)))))))))

(declare-fun d!1062577 () Bool)

(assert (=> d!1062577 e!2232704))

(declare-fun res!1459024 () Bool)

(assert (=> d!1062577 (=> res!1459024 e!2232704)))

(assert (=> d!1062577 (= res!1459024 (isEmpty!22413 lt!1241262))))

(assert (=> d!1062577 (= lt!1241262 e!2232706)))

(declare-fun c!624211 () Bool)

(assert (=> d!1062577 (= c!624211 (and ((_ is Cons!37963) rules!3307) ((_ is Nil!37963) (t!293018 rules!3307))))))

(declare-fun lt!1241260 () Unit!54082)

(declare-fun lt!1241264 () Unit!54082)

(assert (=> d!1062577 (= lt!1241260 lt!1241264)))

(assert (=> d!1062577 (isPrefix!2991 lt!1241053 lt!1241053)))

(declare-fun lemmaIsPrefixRefl!1912 (List!38085 List!38085) Unit!54082)

(assert (=> d!1062577 (= lt!1241264 (lemmaIsPrefixRefl!1912 lt!1241053 lt!1241053))))

(declare-fun rulesValidInductive!1977 (LexerInterface!5217 List!38087) Bool)

(assert (=> d!1062577 (rulesValidInductive!1977 thiss!23823 rules!3307)))

(assert (=> d!1062577 (= (maxPrefix!2751 thiss!23823 rules!3307 lt!1241053) lt!1241262)))

(declare-fun bm!260783 () Bool)

(assert (=> bm!260783 (= call!260788 (maxPrefixOneRule!1895 thiss!23823 (h!43383 rules!3307) lt!1241053))))

(declare-fun b!3607796 () Bool)

(declare-fun res!1459023 () Bool)

(assert (=> b!3607796 (=> (not res!1459023) (not e!2232705))))

(assert (=> b!3607796 (= res!1459023 (= (++!9444 (list!13996 (charsOf!3642 (_1!22062 (get!12310 lt!1241262)))) (_2!22062 (get!12310 lt!1241262))) lt!1241053))))

(declare-fun b!3607797 () Bool)

(assert (=> b!3607797 (= e!2232705 (contains!7320 rules!3307 (rule!8374 (_1!22062 (get!12310 lt!1241262)))))))

(assert (= (and d!1062577 c!624211) b!3607791))

(assert (= (and d!1062577 (not c!624211)) b!3607792))

(assert (= (or b!3607791 b!3607792) bm!260783))

(assert (= (and d!1062577 (not res!1459024)) b!3607794))

(assert (= (and b!3607794 res!1459018) b!3607793))

(assert (= (and b!3607793 res!1459019) b!3607789))

(assert (= (and b!3607789 res!1459021) b!3607796))

(assert (= (and b!3607796 res!1459023) b!3607795))

(assert (= (and b!3607795 res!1459020) b!3607790))

(assert (= (and b!3607790 res!1459022) b!3607797))

(declare-fun m!4105011 () Bool)

(assert (=> bm!260783 m!4105011))

(declare-fun m!4105013 () Bool)

(assert (=> b!3607793 m!4105013))

(declare-fun m!4105015 () Bool)

(assert (=> b!3607793 m!4105015))

(assert (=> b!3607793 m!4105015))

(declare-fun m!4105017 () Bool)

(assert (=> b!3607793 m!4105017))

(assert (=> b!3607790 m!4105013))

(assert (=> b!3607790 m!4105015))

(assert (=> b!3607790 m!4105015))

(assert (=> b!3607790 m!4105017))

(assert (=> b!3607790 m!4105017))

(declare-fun m!4105019 () Bool)

(assert (=> b!3607790 m!4105019))

(assert (=> b!3607789 m!4105013))

(declare-fun m!4105021 () Bool)

(assert (=> b!3607789 m!4105021))

(assert (=> b!3607789 m!4105009))

(assert (=> b!3607796 m!4105013))

(assert (=> b!3607796 m!4105015))

(assert (=> b!3607796 m!4105015))

(assert (=> b!3607796 m!4105017))

(assert (=> b!3607796 m!4105017))

(declare-fun m!4105023 () Bool)

(assert (=> b!3607796 m!4105023))

(assert (=> b!3607795 m!4105013))

(declare-fun m!4105025 () Bool)

(assert (=> b!3607795 m!4105025))

(assert (=> b!3607795 m!4105025))

(declare-fun m!4105027 () Bool)

(assert (=> b!3607795 m!4105027))

(declare-fun m!4105029 () Bool)

(assert (=> b!3607794 m!4105029))

(declare-fun m!4105031 () Bool)

(assert (=> d!1062577 m!4105031))

(declare-fun m!4105033 () Bool)

(assert (=> d!1062577 m!4105033))

(declare-fun m!4105035 () Bool)

(assert (=> d!1062577 m!4105035))

(declare-fun m!4105037 () Bool)

(assert (=> d!1062577 m!4105037))

(assert (=> b!3607797 m!4105013))

(declare-fun m!4105039 () Bool)

(assert (=> b!3607797 m!4105039))

(declare-fun m!4105041 () Bool)

(assert (=> b!3607792 m!4105041))

(assert (=> b!3607442 d!1062577))

(declare-fun d!1062579 () Bool)

(assert (=> d!1062579 (isPrefix!2991 lt!1241029 (++!9444 lt!1241029 (_2!22062 lt!1241039)))))

(declare-fun lt!1241265 () Unit!54082)

(assert (=> d!1062579 (= lt!1241265 (choose!21067 lt!1241029 (_2!22062 lt!1241039)))))

(assert (=> d!1062579 (= (lemmaConcatTwoListThenFirstIsPrefix!1912 lt!1241029 (_2!22062 lt!1241039)) lt!1241265)))

(declare-fun bs!570755 () Bool)

(assert (= bs!570755 d!1062579))

(assert (=> bs!570755 m!4104589))

(assert (=> bs!570755 m!4104589))

(assert (=> bs!570755 m!4104591))

(declare-fun m!4105043 () Bool)

(assert (=> bs!570755 m!4105043))

(assert (=> b!3607442 d!1062579))

(declare-fun d!1062581 () Bool)

(declare-fun list!14000 (Conc!11565) List!38085)

(assert (=> d!1062581 (= (list!13996 lt!1241028) (list!14000 (c!624149 lt!1241028)))))

(declare-fun bs!570756 () Bool)

(assert (= bs!570756 d!1062581))

(declare-fun m!4105045 () Bool)

(assert (=> bs!570756 m!4105045))

(assert (=> b!3607442 d!1062581))

(declare-fun b!3607810 () Bool)

(declare-fun e!2232718 () Bool)

(declare-fun e!2232715 () Bool)

(assert (=> b!3607810 (= e!2232718 e!2232715)))

(declare-fun res!1459029 () Bool)

(assert (=> b!3607810 (=> (not res!1459029) (not e!2232715))))

(declare-fun lt!1241274 () Option!7886)

(assert (=> b!3607810 (= res!1459029 (contains!7320 rules!3307 (get!12311 lt!1241274)))))

(declare-fun d!1062583 () Bool)

(assert (=> d!1062583 e!2232718))

(declare-fun res!1459030 () Bool)

(assert (=> d!1062583 (=> res!1459030 e!2232718)))

(assert (=> d!1062583 (= res!1459030 (isEmpty!22414 lt!1241274))))

(declare-fun e!2232716 () Option!7886)

(assert (=> d!1062583 (= lt!1241274 e!2232716)))

(declare-fun c!624216 () Bool)

(assert (=> d!1062583 (= c!624216 (and ((_ is Cons!37963) rules!3307) (= (tag!6330 (h!43383 rules!3307)) (tag!6330 (rule!8374 (_1!22062 lt!1241039))))))))

(assert (=> d!1062583 (rulesInvariant!4614 thiss!23823 rules!3307)))

(assert (=> d!1062583 (= (getRuleFromTag!1234 thiss!23823 rules!3307 (tag!6330 (rule!8374 (_1!22062 lt!1241039)))) lt!1241274)))

(declare-fun b!3607811 () Bool)

(declare-fun e!2232717 () Option!7886)

(assert (=> b!3607811 (= e!2232717 None!7885)))

(declare-fun b!3607812 () Bool)

(declare-fun lt!1241272 () Unit!54082)

(declare-fun lt!1241273 () Unit!54082)

(assert (=> b!3607812 (= lt!1241272 lt!1241273)))

(assert (=> b!3607812 (rulesInvariant!4614 thiss!23823 (t!293018 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!525 (LexerInterface!5217 Rule!11056 List!38087) Unit!54082)

(assert (=> b!3607812 (= lt!1241273 (lemmaInvariantOnRulesThenOnTail!525 thiss!23823 (h!43383 rules!3307) (t!293018 rules!3307)))))

(assert (=> b!3607812 (= e!2232717 (getRuleFromTag!1234 thiss!23823 (t!293018 rules!3307) (tag!6330 (rule!8374 (_1!22062 lt!1241039)))))))

(declare-fun b!3607813 () Bool)

(assert (=> b!3607813 (= e!2232716 (Some!7885 (h!43383 rules!3307)))))

(declare-fun b!3607814 () Bool)

(assert (=> b!3607814 (= e!2232716 e!2232717)))

(declare-fun c!624217 () Bool)

(assert (=> b!3607814 (= c!624217 (and ((_ is Cons!37963) rules!3307) (not (= (tag!6330 (h!43383 rules!3307)) (tag!6330 (rule!8374 (_1!22062 lt!1241039)))))))))

(declare-fun b!3607815 () Bool)

(assert (=> b!3607815 (= e!2232715 (= (tag!6330 (get!12311 lt!1241274)) (tag!6330 (rule!8374 (_1!22062 lt!1241039)))))))

(assert (= (and d!1062583 c!624216) b!3607813))

(assert (= (and d!1062583 (not c!624216)) b!3607814))

(assert (= (and b!3607814 c!624217) b!3607812))

(assert (= (and b!3607814 (not c!624217)) b!3607811))

(assert (= (and d!1062583 (not res!1459030)) b!3607810))

(assert (= (and b!3607810 res!1459029) b!3607815))

(declare-fun m!4105047 () Bool)

(assert (=> b!3607810 m!4105047))

(assert (=> b!3607810 m!4105047))

(declare-fun m!4105049 () Bool)

(assert (=> b!3607810 m!4105049))

(declare-fun m!4105051 () Bool)

(assert (=> d!1062583 m!4105051))

(assert (=> d!1062583 m!4104495))

(declare-fun m!4105053 () Bool)

(assert (=> b!3607812 m!4105053))

(declare-fun m!4105055 () Bool)

(assert (=> b!3607812 m!4105055))

(declare-fun m!4105057 () Bool)

(assert (=> b!3607812 m!4105057))

(assert (=> b!3607815 m!4105047))

(assert (=> b!3607442 d!1062583))

(declare-fun d!1062585 () Bool)

(declare-fun e!2232719 () Bool)

(assert (=> d!1062585 e!2232719))

(declare-fun res!1459031 () Bool)

(assert (=> d!1062585 (=> (not res!1459031) (not e!2232719))))

(declare-fun lt!1241275 () List!38085)

(assert (=> d!1062585 (= res!1459031 (= (content!5428 lt!1241275) ((_ map or) (content!5428 lt!1241020) (content!5428 suffix!1395))))))

(declare-fun e!2232720 () List!38085)

(assert (=> d!1062585 (= lt!1241275 e!2232720)))

(declare-fun c!624218 () Bool)

(assert (=> d!1062585 (= c!624218 ((_ is Nil!37961) lt!1241020))))

(assert (=> d!1062585 (= (++!9444 lt!1241020 suffix!1395) lt!1241275)))

(declare-fun b!3607817 () Bool)

(assert (=> b!3607817 (= e!2232720 (Cons!37961 (h!43381 lt!1241020) (++!9444 (t!293016 lt!1241020) suffix!1395)))))

(declare-fun b!3607819 () Bool)

(assert (=> b!3607819 (= e!2232719 (or (not (= suffix!1395 Nil!37961)) (= lt!1241275 lt!1241020)))))

(declare-fun b!3607816 () Bool)

(assert (=> b!3607816 (= e!2232720 suffix!1395)))

(declare-fun b!3607818 () Bool)

(declare-fun res!1459032 () Bool)

(assert (=> b!3607818 (=> (not res!1459032) (not e!2232719))))

(assert (=> b!3607818 (= res!1459032 (= (size!28939 lt!1241275) (+ (size!28939 lt!1241020) (size!28939 suffix!1395))))))

(assert (= (and d!1062585 c!624218) b!3607816))

(assert (= (and d!1062585 (not c!624218)) b!3607817))

(assert (= (and d!1062585 res!1459031) b!3607818))

(assert (= (and b!3607818 res!1459032) b!3607819))

(declare-fun m!4105059 () Bool)

(assert (=> d!1062585 m!4105059))

(declare-fun m!4105061 () Bool)

(assert (=> d!1062585 m!4105061))

(declare-fun m!4105063 () Bool)

(assert (=> d!1062585 m!4105063))

(declare-fun m!4105065 () Bool)

(assert (=> b!3607817 m!4105065))

(declare-fun m!4105067 () Bool)

(assert (=> b!3607818 m!4105067))

(declare-fun m!4105069 () Bool)

(assert (=> b!3607818 m!4105069))

(declare-fun m!4105071 () Bool)

(assert (=> b!3607818 m!4105071))

(assert (=> b!3607442 d!1062585))

(declare-fun d!1062587 () Bool)

(assert (=> d!1062587 (= (get!12310 lt!1241018) (v!37620 lt!1241018))))

(assert (=> b!3607442 d!1062587))

(declare-fun d!1062589 () Bool)

(declare-fun e!2232723 () Bool)

(assert (=> d!1062589 e!2232723))

(declare-fun res!1459037 () Bool)

(assert (=> d!1062589 (=> (not res!1459037) (not e!2232723))))

(assert (=> d!1062589 (= res!1459037 (isDefined!6118 (getRuleFromTag!1234 thiss!23823 rules!3307 (tag!6330 (rule!8374 (_1!22062 lt!1241039))))))))

(declare-fun lt!1241278 () Unit!54082)

(declare-fun choose!21069 (LexerInterface!5217 List!38087 List!38085 Token!10622) Unit!54082)

(assert (=> d!1062589 (= lt!1241278 (choose!21069 thiss!23823 rules!3307 lt!1241053 (_1!22062 lt!1241039)))))

(assert (=> d!1062589 (rulesInvariant!4614 thiss!23823 rules!3307)))

(assert (=> d!1062589 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1234 thiss!23823 rules!3307 lt!1241053 (_1!22062 lt!1241039)) lt!1241278)))

(declare-fun b!3607824 () Bool)

(declare-fun res!1459038 () Bool)

(assert (=> b!3607824 (=> (not res!1459038) (not e!2232723))))

(assert (=> b!3607824 (= res!1459038 (matchR!4956 (regex!5628 (get!12311 (getRuleFromTag!1234 thiss!23823 rules!3307 (tag!6330 (rule!8374 (_1!22062 lt!1241039)))))) (list!13996 (charsOf!3642 (_1!22062 lt!1241039)))))))

(declare-fun b!3607825 () Bool)

(assert (=> b!3607825 (= e!2232723 (= (rule!8374 (_1!22062 lt!1241039)) (get!12311 (getRuleFromTag!1234 thiss!23823 rules!3307 (tag!6330 (rule!8374 (_1!22062 lt!1241039)))))))))

(assert (= (and d!1062589 res!1459037) b!3607824))

(assert (= (and b!3607824 res!1459038) b!3607825))

(assert (=> d!1062589 m!4104583))

(assert (=> d!1062589 m!4104583))

(declare-fun m!4105073 () Bool)

(assert (=> d!1062589 m!4105073))

(declare-fun m!4105075 () Bool)

(assert (=> d!1062589 m!4105075))

(assert (=> d!1062589 m!4104495))

(assert (=> b!3607824 m!4104583))

(declare-fun m!4105077 () Bool)

(assert (=> b!3607824 m!4105077))

(assert (=> b!3607824 m!4104543))

(declare-fun m!4105079 () Bool)

(assert (=> b!3607824 m!4105079))

(assert (=> b!3607824 m!4104541))

(assert (=> b!3607824 m!4104541))

(assert (=> b!3607824 m!4104543))

(assert (=> b!3607824 m!4104583))

(assert (=> b!3607825 m!4104583))

(assert (=> b!3607825 m!4104583))

(assert (=> b!3607825 m!4105077))

(assert (=> b!3607442 d!1062589))

(declare-fun b!3607827 () Bool)

(declare-fun res!1459040 () Bool)

(declare-fun e!2232724 () Bool)

(assert (=> b!3607827 (=> (not res!1459040) (not e!2232724))))

(assert (=> b!3607827 (= res!1459040 (= (head!7582 lt!1241020) (head!7582 lt!1241053)))))

(declare-fun b!3607826 () Bool)

(declare-fun e!2232726 () Bool)

(assert (=> b!3607826 (= e!2232726 e!2232724)))

(declare-fun res!1459042 () Bool)

(assert (=> b!3607826 (=> (not res!1459042) (not e!2232724))))

(assert (=> b!3607826 (= res!1459042 (not ((_ is Nil!37961) lt!1241053)))))

(declare-fun b!3607828 () Bool)

(assert (=> b!3607828 (= e!2232724 (isPrefix!2991 (tail!5593 lt!1241020) (tail!5593 lt!1241053)))))

(declare-fun d!1062591 () Bool)

(declare-fun e!2232725 () Bool)

(assert (=> d!1062591 e!2232725))

(declare-fun res!1459041 () Bool)

(assert (=> d!1062591 (=> res!1459041 e!2232725)))

(declare-fun lt!1241279 () Bool)

(assert (=> d!1062591 (= res!1459041 (not lt!1241279))))

(assert (=> d!1062591 (= lt!1241279 e!2232726)))

(declare-fun res!1459039 () Bool)

(assert (=> d!1062591 (=> res!1459039 e!2232726)))

(assert (=> d!1062591 (= res!1459039 ((_ is Nil!37961) lt!1241020))))

(assert (=> d!1062591 (= (isPrefix!2991 lt!1241020 lt!1241053) lt!1241279)))

(declare-fun b!3607829 () Bool)

(assert (=> b!3607829 (= e!2232725 (>= (size!28939 lt!1241053) (size!28939 lt!1241020)))))

(assert (= (and d!1062591 (not res!1459039)) b!3607826))

(assert (= (and b!3607826 res!1459042) b!3607827))

(assert (= (and b!3607827 res!1459040) b!3607828))

(assert (= (and d!1062591 (not res!1459041)) b!3607829))

(declare-fun m!4105081 () Bool)

(assert (=> b!3607827 m!4105081))

(assert (=> b!3607827 m!4105003))

(declare-fun m!4105083 () Bool)

(assert (=> b!3607828 m!4105083))

(assert (=> b!3607828 m!4105005))

(assert (=> b!3607828 m!4105083))

(assert (=> b!3607828 m!4105005))

(declare-fun m!4105085 () Bool)

(assert (=> b!3607828 m!4105085))

(assert (=> b!3607829 m!4105009))

(assert (=> b!3607829 m!4105069))

(assert (=> b!3607442 d!1062591))

(declare-fun d!1062593 () Bool)

(declare-fun res!1459047 () Bool)

(declare-fun e!2232729 () Bool)

(assert (=> d!1062593 (=> (not res!1459047) (not e!2232729))))

(assert (=> d!1062593 (= res!1459047 (not (isEmpty!22410 (originalCharacters!6342 token!511))))))

(assert (=> d!1062593 (= (inv!51332 token!511) e!2232729)))

(declare-fun b!3607834 () Bool)

(declare-fun res!1459048 () Bool)

(assert (=> b!3607834 (=> (not res!1459048) (not e!2232729))))

(assert (=> b!3607834 (= res!1459048 (= (originalCharacters!6342 token!511) (list!13996 (dynLambda!16411 (toChars!7771 (transformation!5628 (rule!8374 token!511))) (value!180858 token!511)))))))

(declare-fun b!3607835 () Bool)

(assert (=> b!3607835 (= e!2232729 (= (size!28937 token!511) (size!28939 (originalCharacters!6342 token!511))))))

(assert (= (and d!1062593 res!1459047) b!3607834))

(assert (= (and b!3607834 res!1459048) b!3607835))

(declare-fun b_lambda!106739 () Bool)

(assert (=> (not b_lambda!106739) (not b!3607834)))

(declare-fun t!293052 () Bool)

(declare-fun tb!206729 () Bool)

(assert (=> (and b!3607464 (= (toChars!7771 (transformation!5628 rule!403)) (toChars!7771 (transformation!5628 (rule!8374 token!511)))) t!293052) tb!206729))

(declare-fun b!3607836 () Bool)

(declare-fun e!2232730 () Bool)

(declare-fun tp!1103022 () Bool)

(assert (=> b!3607836 (= e!2232730 (and (inv!51335 (c!624149 (dynLambda!16411 (toChars!7771 (transformation!5628 (rule!8374 token!511))) (value!180858 token!511)))) tp!1103022))))

(declare-fun result!251956 () Bool)

(assert (=> tb!206729 (= result!251956 (and (inv!51336 (dynLambda!16411 (toChars!7771 (transformation!5628 (rule!8374 token!511))) (value!180858 token!511))) e!2232730))))

(assert (= tb!206729 b!3607836))

(declare-fun m!4105087 () Bool)

(assert (=> b!3607836 m!4105087))

(declare-fun m!4105089 () Bool)

(assert (=> tb!206729 m!4105089))

(assert (=> b!3607834 t!293052))

(declare-fun b_and!262795 () Bool)

(assert (= b_and!262787 (and (=> t!293052 result!251956) b_and!262795)))

(declare-fun t!293054 () Bool)

(declare-fun tb!206731 () Bool)

(assert (=> (and b!3607451 (= (toChars!7771 (transformation!5628 anOtherTypeRule!33)) (toChars!7771 (transformation!5628 (rule!8374 token!511)))) t!293054) tb!206731))

(declare-fun result!251958 () Bool)

(assert (= result!251958 result!251956))

(assert (=> b!3607834 t!293054))

(declare-fun b_and!262797 () Bool)

(assert (= b_and!262789 (and (=> t!293054 result!251958) b_and!262797)))

(declare-fun t!293056 () Bool)

(declare-fun tb!206733 () Bool)

(assert (=> (and b!3607465 (= (toChars!7771 (transformation!5628 (rule!8374 token!511))) (toChars!7771 (transformation!5628 (rule!8374 token!511)))) t!293056) tb!206733))

(declare-fun result!251960 () Bool)

(assert (= result!251960 result!251956))

(assert (=> b!3607834 t!293056))

(declare-fun b_and!262799 () Bool)

(assert (= b_and!262791 (and (=> t!293056 result!251960) b_and!262799)))

(declare-fun t!293058 () Bool)

(declare-fun tb!206735 () Bool)

(assert (=> (and b!3607440 (= (toChars!7771 (transformation!5628 (h!43383 rules!3307))) (toChars!7771 (transformation!5628 (rule!8374 token!511)))) t!293058) tb!206735))

(declare-fun result!251962 () Bool)

(assert (= result!251962 result!251956))

(assert (=> b!3607834 t!293058))

(declare-fun b_and!262801 () Bool)

(assert (= b_and!262793 (and (=> t!293058 result!251962) b_and!262801)))

(declare-fun m!4105091 () Bool)

(assert (=> d!1062593 m!4105091))

(declare-fun m!4105093 () Bool)

(assert (=> b!3607834 m!4105093))

(assert (=> b!3607834 m!4105093))

(declare-fun m!4105095 () Bool)

(assert (=> b!3607834 m!4105095))

(declare-fun m!4105097 () Bool)

(assert (=> b!3607835 m!4105097))

(assert (=> start!335698 d!1062593))

(declare-fun d!1062595 () Bool)

(assert (=> d!1062595 (not (contains!7319 (usedCharacters!842 (regex!5628 (rule!8374 (_1!22062 lt!1241039)))) lt!1241038))))

(declare-fun lt!1241282 () Unit!54082)

(declare-fun choose!21072 (LexerInterface!5217 List!38087 List!38087 Rule!11056 Rule!11056 C!20960) Unit!54082)

(assert (=> d!1062595 (= lt!1241282 (choose!21072 thiss!23823 rules!3307 rules!3307 (rule!8374 (_1!22062 lt!1241039)) rule!403 lt!1241038))))

(assert (=> d!1062595 (rulesInvariant!4614 thiss!23823 rules!3307)))

(assert (=> d!1062595 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!334 thiss!23823 rules!3307 rules!3307 (rule!8374 (_1!22062 lt!1241039)) rule!403 lt!1241038) lt!1241282)))

(declare-fun bs!570757 () Bool)

(assert (= bs!570757 d!1062595))

(assert (=> bs!570757 m!4104555))

(assert (=> bs!570757 m!4104555))

(declare-fun m!4105099 () Bool)

(assert (=> bs!570757 m!4105099))

(declare-fun m!4105101 () Bool)

(assert (=> bs!570757 m!4105101))

(assert (=> bs!570757 m!4104495))

(assert (=> b!3607441 d!1062595))

(declare-fun b!3607865 () Bool)

(declare-fun e!2232750 () Bool)

(assert (=> b!3607865 (= e!2232750 (= (head!7582 lt!1241029) (c!624148 (regex!5628 (rule!8374 (_1!22062 lt!1241039))))))))

(declare-fun b!3607866 () Bool)

(declare-fun res!1459072 () Bool)

(assert (=> b!3607866 (=> (not res!1459072) (not e!2232750))))

(declare-fun call!260791 () Bool)

(assert (=> b!3607866 (= res!1459072 (not call!260791))))

(declare-fun d!1062597 () Bool)

(declare-fun e!2232746 () Bool)

(assert (=> d!1062597 e!2232746))

(declare-fun c!624228 () Bool)

(assert (=> d!1062597 (= c!624228 ((_ is EmptyExpr!10387) (regex!5628 (rule!8374 (_1!22062 lt!1241039)))))))

(declare-fun lt!1241285 () Bool)

(declare-fun e!2232748 () Bool)

(assert (=> d!1062597 (= lt!1241285 e!2232748)))

(declare-fun c!624227 () Bool)

(assert (=> d!1062597 (= c!624227 (isEmpty!22410 lt!1241029))))

(declare-fun validRegex!4757 (Regex!10387) Bool)

(assert (=> d!1062597 (validRegex!4757 (regex!5628 (rule!8374 (_1!22062 lt!1241039))))))

(assert (=> d!1062597 (= (matchR!4956 (regex!5628 (rule!8374 (_1!22062 lt!1241039))) lt!1241029) lt!1241285)))

(declare-fun b!3607867 () Bool)

(assert (=> b!3607867 (= e!2232746 (= lt!1241285 call!260791))))

(declare-fun b!3607868 () Bool)

(declare-fun e!2232747 () Bool)

(assert (=> b!3607868 (= e!2232747 (not lt!1241285))))

(declare-fun b!3607869 () Bool)

(declare-fun res!1459065 () Bool)

(declare-fun e!2232745 () Bool)

(assert (=> b!3607869 (=> res!1459065 e!2232745)))

(assert (=> b!3607869 (= res!1459065 (not ((_ is ElementMatch!10387) (regex!5628 (rule!8374 (_1!22062 lt!1241039))))))))

(assert (=> b!3607869 (= e!2232747 e!2232745)))

(declare-fun b!3607870 () Bool)

(declare-fun e!2232749 () Bool)

(assert (=> b!3607870 (= e!2232749 (not (= (head!7582 lt!1241029) (c!624148 (regex!5628 (rule!8374 (_1!22062 lt!1241039)))))))))

(declare-fun bm!260786 () Bool)

(assert (=> bm!260786 (= call!260791 (isEmpty!22410 lt!1241029))))

(declare-fun b!3607871 () Bool)

(assert (=> b!3607871 (= e!2232746 e!2232747)))

(declare-fun c!624226 () Bool)

(assert (=> b!3607871 (= c!624226 ((_ is EmptyLang!10387) (regex!5628 (rule!8374 (_1!22062 lt!1241039)))))))

(declare-fun b!3607872 () Bool)

(declare-fun res!1459067 () Bool)

(assert (=> b!3607872 (=> (not res!1459067) (not e!2232750))))

(assert (=> b!3607872 (= res!1459067 (isEmpty!22410 (tail!5593 lt!1241029)))))

(declare-fun b!3607873 () Bool)

(declare-fun res!1459070 () Bool)

(assert (=> b!3607873 (=> res!1459070 e!2232745)))

(assert (=> b!3607873 (= res!1459070 e!2232750)))

(declare-fun res!1459066 () Bool)

(assert (=> b!3607873 (=> (not res!1459066) (not e!2232750))))

(assert (=> b!3607873 (= res!1459066 lt!1241285)))

(declare-fun b!3607874 () Bool)

(declare-fun e!2232751 () Bool)

(assert (=> b!3607874 (= e!2232751 e!2232749)))

(declare-fun res!1459068 () Bool)

(assert (=> b!3607874 (=> res!1459068 e!2232749)))

(assert (=> b!3607874 (= res!1459068 call!260791)))

(declare-fun b!3607875 () Bool)

(assert (=> b!3607875 (= e!2232745 e!2232751)))

(declare-fun res!1459069 () Bool)

(assert (=> b!3607875 (=> (not res!1459069) (not e!2232751))))

(assert (=> b!3607875 (= res!1459069 (not lt!1241285))))

(declare-fun b!3607876 () Bool)

(declare-fun res!1459071 () Bool)

(assert (=> b!3607876 (=> res!1459071 e!2232749)))

(assert (=> b!3607876 (= res!1459071 (not (isEmpty!22410 (tail!5593 lt!1241029))))))

(declare-fun b!3607877 () Bool)

(declare-fun nullable!3595 (Regex!10387) Bool)

(assert (=> b!3607877 (= e!2232748 (nullable!3595 (regex!5628 (rule!8374 (_1!22062 lt!1241039)))))))

(declare-fun b!3607878 () Bool)

(declare-fun derivativeStep!3144 (Regex!10387 C!20960) Regex!10387)

(assert (=> b!3607878 (= e!2232748 (matchR!4956 (derivativeStep!3144 (regex!5628 (rule!8374 (_1!22062 lt!1241039))) (head!7582 lt!1241029)) (tail!5593 lt!1241029)))))

(assert (= (and d!1062597 c!624227) b!3607877))

(assert (= (and d!1062597 (not c!624227)) b!3607878))

(assert (= (and d!1062597 c!624228) b!3607867))

(assert (= (and d!1062597 (not c!624228)) b!3607871))

(assert (= (and b!3607871 c!624226) b!3607868))

(assert (= (and b!3607871 (not c!624226)) b!3607869))

(assert (= (and b!3607869 (not res!1459065)) b!3607873))

(assert (= (and b!3607873 res!1459066) b!3607866))

(assert (= (and b!3607866 res!1459072) b!3607872))

(assert (= (and b!3607872 res!1459067) b!3607865))

(assert (= (and b!3607873 (not res!1459070)) b!3607875))

(assert (= (and b!3607875 res!1459069) b!3607874))

(assert (= (and b!3607874 (not res!1459068)) b!3607876))

(assert (= (and b!3607876 (not res!1459071)) b!3607870))

(assert (= (or b!3607867 b!3607866 b!3607874) bm!260786))

(declare-fun m!4105103 () Bool)

(assert (=> b!3607877 m!4105103))

(assert (=> b!3607872 m!4104987))

(assert (=> b!3607872 m!4104987))

(declare-fun m!4105105 () Bool)

(assert (=> b!3607872 m!4105105))

(assert (=> b!3607876 m!4104987))

(assert (=> b!3607876 m!4104987))

(assert (=> b!3607876 m!4105105))

(assert (=> b!3607865 m!4104489))

(declare-fun m!4105107 () Bool)

(assert (=> bm!260786 m!4105107))

(assert (=> d!1062597 m!4105107))

(declare-fun m!4105109 () Bool)

(assert (=> d!1062597 m!4105109))

(assert (=> b!3607870 m!4104489))

(assert (=> b!3607878 m!4104489))

(assert (=> b!3607878 m!4104489))

(declare-fun m!4105111 () Bool)

(assert (=> b!3607878 m!4105111))

(assert (=> b!3607878 m!4104987))

(assert (=> b!3607878 m!4105111))

(assert (=> b!3607878 m!4104987))

(declare-fun m!4105113 () Bool)

(assert (=> b!3607878 m!4105113))

(assert (=> b!3607459 d!1062597))

(declare-fun d!1062599 () Bool)

(declare-fun lt!1241288 () Bool)

(assert (=> d!1062599 (= lt!1241288 (select (content!5428 lt!1241029) lt!1241040))))

(declare-fun e!2232757 () Bool)

(assert (=> d!1062599 (= lt!1241288 e!2232757)))

(declare-fun res!1459078 () Bool)

(assert (=> d!1062599 (=> (not res!1459078) (not e!2232757))))

(assert (=> d!1062599 (= res!1459078 ((_ is Cons!37961) lt!1241029))))

(assert (=> d!1062599 (= (contains!7319 lt!1241029 lt!1241040) lt!1241288)))

(declare-fun b!3607883 () Bool)

(declare-fun e!2232756 () Bool)

(assert (=> b!3607883 (= e!2232757 e!2232756)))

(declare-fun res!1459077 () Bool)

(assert (=> b!3607883 (=> res!1459077 e!2232756)))

(assert (=> b!3607883 (= res!1459077 (= (h!43381 lt!1241029) lt!1241040))))

(declare-fun b!3607884 () Bool)

(assert (=> b!3607884 (= e!2232756 (contains!7319 (t!293016 lt!1241029) lt!1241040))))

(assert (= (and d!1062599 res!1459078) b!3607883))

(assert (= (and b!3607883 (not res!1459077)) b!3607884))

(assert (=> d!1062599 m!4104959))

(declare-fun m!4105115 () Bool)

(assert (=> d!1062599 m!4105115))

(declare-fun m!4105117 () Bool)

(assert (=> b!3607884 m!4105117))

(assert (=> b!3607439 d!1062599))

(declare-fun d!1062601 () Bool)

(assert (=> d!1062601 (contains!7319 lt!1241029 (head!7582 suffix!1395))))

(declare-fun lt!1241291 () Unit!54082)

(declare-fun choose!21073 (List!38085 List!38085 List!38085 List!38085) Unit!54082)

(assert (=> d!1062601 (= lt!1241291 (choose!21073 lt!1241020 suffix!1395 lt!1241029 lt!1241053))))

(assert (=> d!1062601 (isPrefix!2991 lt!1241029 lt!1241053)))

(assert (=> d!1062601 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!6 lt!1241020 suffix!1395 lt!1241029 lt!1241053) lt!1241291)))

(declare-fun bs!570758 () Bool)

(assert (= bs!570758 d!1062601))

(assert (=> bs!570758 m!4104475))

(assert (=> bs!570758 m!4104475))

(declare-fun m!4105119 () Bool)

(assert (=> bs!570758 m!4105119))

(declare-fun m!4105121 () Bool)

(assert (=> bs!570758 m!4105121))

(assert (=> bs!570758 m!4104599))

(assert (=> b!3607439 d!1062601))

(declare-fun b!3607885 () Bool)

(declare-fun e!2232763 () Bool)

(assert (=> b!3607885 (= e!2232763 (= (head!7582 lt!1241020) (c!624148 (regex!5628 rule!403))))))

(declare-fun b!3607886 () Bool)

(declare-fun res!1459086 () Bool)

(assert (=> b!3607886 (=> (not res!1459086) (not e!2232763))))

(declare-fun call!260792 () Bool)

(assert (=> b!3607886 (= res!1459086 (not call!260792))))

(declare-fun d!1062603 () Bool)

(declare-fun e!2232759 () Bool)

(assert (=> d!1062603 e!2232759))

(declare-fun c!624231 () Bool)

(assert (=> d!1062603 (= c!624231 ((_ is EmptyExpr!10387) (regex!5628 rule!403)))))

(declare-fun lt!1241292 () Bool)

(declare-fun e!2232761 () Bool)

(assert (=> d!1062603 (= lt!1241292 e!2232761)))

(declare-fun c!624230 () Bool)

(assert (=> d!1062603 (= c!624230 (isEmpty!22410 lt!1241020))))

(assert (=> d!1062603 (validRegex!4757 (regex!5628 rule!403))))

(assert (=> d!1062603 (= (matchR!4956 (regex!5628 rule!403) lt!1241020) lt!1241292)))

(declare-fun b!3607887 () Bool)

(assert (=> b!3607887 (= e!2232759 (= lt!1241292 call!260792))))

(declare-fun b!3607888 () Bool)

(declare-fun e!2232760 () Bool)

(assert (=> b!3607888 (= e!2232760 (not lt!1241292))))

(declare-fun b!3607889 () Bool)

(declare-fun res!1459079 () Bool)

(declare-fun e!2232758 () Bool)

(assert (=> b!3607889 (=> res!1459079 e!2232758)))

(assert (=> b!3607889 (= res!1459079 (not ((_ is ElementMatch!10387) (regex!5628 rule!403))))))

(assert (=> b!3607889 (= e!2232760 e!2232758)))

(declare-fun b!3607890 () Bool)

(declare-fun e!2232762 () Bool)

(assert (=> b!3607890 (= e!2232762 (not (= (head!7582 lt!1241020) (c!624148 (regex!5628 rule!403)))))))

(declare-fun bm!260787 () Bool)

(assert (=> bm!260787 (= call!260792 (isEmpty!22410 lt!1241020))))

(declare-fun b!3607891 () Bool)

(assert (=> b!3607891 (= e!2232759 e!2232760)))

(declare-fun c!624229 () Bool)

(assert (=> b!3607891 (= c!624229 ((_ is EmptyLang!10387) (regex!5628 rule!403)))))

(declare-fun b!3607892 () Bool)

(declare-fun res!1459081 () Bool)

(assert (=> b!3607892 (=> (not res!1459081) (not e!2232763))))

(assert (=> b!3607892 (= res!1459081 (isEmpty!22410 (tail!5593 lt!1241020)))))

(declare-fun b!3607893 () Bool)

(declare-fun res!1459084 () Bool)

(assert (=> b!3607893 (=> res!1459084 e!2232758)))

(assert (=> b!3607893 (= res!1459084 e!2232763)))

(declare-fun res!1459080 () Bool)

(assert (=> b!3607893 (=> (not res!1459080) (not e!2232763))))

(assert (=> b!3607893 (= res!1459080 lt!1241292)))

(declare-fun b!3607894 () Bool)

(declare-fun e!2232764 () Bool)

(assert (=> b!3607894 (= e!2232764 e!2232762)))

(declare-fun res!1459082 () Bool)

(assert (=> b!3607894 (=> res!1459082 e!2232762)))

(assert (=> b!3607894 (= res!1459082 call!260792)))

(declare-fun b!3607895 () Bool)

(assert (=> b!3607895 (= e!2232758 e!2232764)))

(declare-fun res!1459083 () Bool)

(assert (=> b!3607895 (=> (not res!1459083) (not e!2232764))))

(assert (=> b!3607895 (= res!1459083 (not lt!1241292))))

(declare-fun b!3607896 () Bool)

(declare-fun res!1459085 () Bool)

(assert (=> b!3607896 (=> res!1459085 e!2232762)))

(assert (=> b!3607896 (= res!1459085 (not (isEmpty!22410 (tail!5593 lt!1241020))))))

(declare-fun b!3607897 () Bool)

(assert (=> b!3607897 (= e!2232761 (nullable!3595 (regex!5628 rule!403)))))

(declare-fun b!3607898 () Bool)

(assert (=> b!3607898 (= e!2232761 (matchR!4956 (derivativeStep!3144 (regex!5628 rule!403) (head!7582 lt!1241020)) (tail!5593 lt!1241020)))))

(assert (= (and d!1062603 c!624230) b!3607897))

(assert (= (and d!1062603 (not c!624230)) b!3607898))

(assert (= (and d!1062603 c!624231) b!3607887))

(assert (= (and d!1062603 (not c!624231)) b!3607891))

(assert (= (and b!3607891 c!624229) b!3607888))

(assert (= (and b!3607891 (not c!624229)) b!3607889))

(assert (= (and b!3607889 (not res!1459079)) b!3607893))

(assert (= (and b!3607893 res!1459080) b!3607886))

(assert (= (and b!3607886 res!1459086) b!3607892))

(assert (= (and b!3607892 res!1459081) b!3607885))

(assert (= (and b!3607893 (not res!1459084)) b!3607895))

(assert (= (and b!3607895 res!1459083) b!3607894))

(assert (= (and b!3607894 (not res!1459082)) b!3607896))

(assert (= (and b!3607896 (not res!1459085)) b!3607890))

(assert (= (or b!3607887 b!3607886 b!3607894) bm!260787))

(declare-fun m!4105123 () Bool)

(assert (=> b!3607897 m!4105123))

(assert (=> b!3607892 m!4105083))

(assert (=> b!3607892 m!4105083))

(declare-fun m!4105125 () Bool)

(assert (=> b!3607892 m!4105125))

(assert (=> b!3607896 m!4105083))

(assert (=> b!3607896 m!4105083))

(assert (=> b!3607896 m!4105125))

(assert (=> b!3607885 m!4105081))

(declare-fun m!4105127 () Bool)

(assert (=> bm!260787 m!4105127))

(assert (=> d!1062603 m!4105127))

(declare-fun m!4105129 () Bool)

(assert (=> d!1062603 m!4105129))

(assert (=> b!3607890 m!4105081))

(assert (=> b!3607898 m!4105081))

(assert (=> b!3607898 m!4105081))

(declare-fun m!4105131 () Bool)

(assert (=> b!3607898 m!4105131))

(assert (=> b!3607898 m!4105083))

(assert (=> b!3607898 m!4105131))

(assert (=> b!3607898 m!4105083))

(declare-fun m!4105133 () Bool)

(assert (=> b!3607898 m!4105133))

(assert (=> b!3607458 d!1062603))

(declare-fun d!1062605 () Bool)

(declare-fun res!1459091 () Bool)

(declare-fun e!2232767 () Bool)

(assert (=> d!1062605 (=> (not res!1459091) (not e!2232767))))

(assert (=> d!1062605 (= res!1459091 (validRegex!4757 (regex!5628 rule!403)))))

(assert (=> d!1062605 (= (ruleValid!1893 thiss!23823 rule!403) e!2232767)))

(declare-fun b!3607903 () Bool)

(declare-fun res!1459092 () Bool)

(assert (=> b!3607903 (=> (not res!1459092) (not e!2232767))))

(assert (=> b!3607903 (= res!1459092 (not (nullable!3595 (regex!5628 rule!403))))))

(declare-fun b!3607904 () Bool)

(assert (=> b!3607904 (= e!2232767 (not (= (tag!6330 rule!403) (String!42625 ""))))))

(assert (= (and d!1062605 res!1459091) b!3607903))

(assert (= (and b!3607903 res!1459092) b!3607904))

(assert (=> d!1062605 m!4105129))

(assert (=> b!3607903 m!4105123))

(assert (=> b!3607458 d!1062605))

(declare-fun d!1062607 () Bool)

(assert (=> d!1062607 (ruleValid!1893 thiss!23823 rule!403)))

(declare-fun lt!1241295 () Unit!54082)

(declare-fun choose!21074 (LexerInterface!5217 Rule!11056 List!38087) Unit!54082)

(assert (=> d!1062607 (= lt!1241295 (choose!21074 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1062607 (contains!7320 rules!3307 rule!403)))

(assert (=> d!1062607 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1048 thiss!23823 rule!403 rules!3307) lt!1241295)))

(declare-fun bs!570759 () Bool)

(assert (= bs!570759 d!1062607))

(assert (=> bs!570759 m!4104507))

(declare-fun m!4105135 () Bool)

(assert (=> bs!570759 m!4105135))

(assert (=> bs!570759 m!4104463))

(assert (=> b!3607458 d!1062607))

(declare-fun d!1062609 () Bool)

(declare-fun lt!1241296 () Bool)

(assert (=> d!1062609 (= lt!1241296 (select (content!5428 (usedCharacters!842 (regex!5628 (rule!8374 (_1!22062 lt!1241039))))) lt!1241040))))

(declare-fun e!2232769 () Bool)

(assert (=> d!1062609 (= lt!1241296 e!2232769)))

(declare-fun res!1459094 () Bool)

(assert (=> d!1062609 (=> (not res!1459094) (not e!2232769))))

(assert (=> d!1062609 (= res!1459094 ((_ is Cons!37961) (usedCharacters!842 (regex!5628 (rule!8374 (_1!22062 lt!1241039))))))))

(assert (=> d!1062609 (= (contains!7319 (usedCharacters!842 (regex!5628 (rule!8374 (_1!22062 lt!1241039)))) lt!1241040) lt!1241296)))

(declare-fun b!3607905 () Bool)

(declare-fun e!2232768 () Bool)

(assert (=> b!3607905 (= e!2232769 e!2232768)))

(declare-fun res!1459093 () Bool)

(assert (=> b!3607905 (=> res!1459093 e!2232768)))

(assert (=> b!3607905 (= res!1459093 (= (h!43381 (usedCharacters!842 (regex!5628 (rule!8374 (_1!22062 lt!1241039))))) lt!1241040))))

(declare-fun b!3607906 () Bool)

(assert (=> b!3607906 (= e!2232768 (contains!7319 (t!293016 (usedCharacters!842 (regex!5628 (rule!8374 (_1!22062 lt!1241039))))) lt!1241040))))

(assert (= (and d!1062609 res!1459094) b!3607905))

(assert (= (and b!3607905 (not res!1459093)) b!3607906))

(assert (=> d!1062609 m!4104555))

(declare-fun m!4105137 () Bool)

(assert (=> d!1062609 m!4105137))

(declare-fun m!4105139 () Bool)

(assert (=> d!1062609 m!4105139))

(declare-fun m!4105141 () Bool)

(assert (=> b!3607906 m!4105141))

(assert (=> b!3607438 d!1062609))

(declare-fun b!3607923 () Bool)

(declare-fun e!2232781 () List!38085)

(assert (=> b!3607923 (= e!2232781 (Cons!37961 (c!624148 (regex!5628 (rule!8374 (_1!22062 lt!1241039)))) Nil!37961))))

(declare-fun bm!260796 () Bool)

(declare-fun call!260801 () List!38085)

(declare-fun call!260802 () List!38085)

(assert (=> bm!260796 (= call!260801 call!260802)))

(declare-fun b!3607924 () Bool)

(declare-fun e!2232778 () List!38085)

(declare-fun call!260803 () List!38085)

(assert (=> b!3607924 (= e!2232778 call!260803)))

(declare-fun b!3607925 () Bool)

(declare-fun c!624241 () Bool)

(assert (=> b!3607925 (= c!624241 ((_ is Star!10387) (regex!5628 (rule!8374 (_1!22062 lt!1241039)))))))

(declare-fun e!2232780 () List!38085)

(assert (=> b!3607925 (= e!2232781 e!2232780)))

(declare-fun c!624243 () Bool)

(declare-fun bm!260797 () Bool)

(declare-fun call!260804 () List!38085)

(assert (=> bm!260797 (= call!260803 (++!9444 (ite c!624243 call!260801 call!260804) (ite c!624243 call!260804 call!260801)))))

(declare-fun b!3607926 () Bool)

(declare-fun e!2232779 () List!38085)

(assert (=> b!3607926 (= e!2232779 Nil!37961)))

(declare-fun b!3607927 () Bool)

(assert (=> b!3607927 (= e!2232780 call!260802)))

(declare-fun b!3607928 () Bool)

(assert (=> b!3607928 (= e!2232778 call!260803)))

(declare-fun b!3607929 () Bool)

(assert (=> b!3607929 (= e!2232779 e!2232781)))

(declare-fun c!624242 () Bool)

(assert (=> b!3607929 (= c!624242 ((_ is ElementMatch!10387) (regex!5628 (rule!8374 (_1!22062 lt!1241039)))))))

(declare-fun b!3607930 () Bool)

(assert (=> b!3607930 (= e!2232780 e!2232778)))

(assert (=> b!3607930 (= c!624243 ((_ is Union!10387) (regex!5628 (rule!8374 (_1!22062 lt!1241039)))))))

(declare-fun bm!260799 () Bool)

(assert (=> bm!260799 (= call!260802 (usedCharacters!842 (ite c!624241 (reg!10716 (regex!5628 (rule!8374 (_1!22062 lt!1241039)))) (ite c!624243 (regOne!21287 (regex!5628 (rule!8374 (_1!22062 lt!1241039)))) (regTwo!21286 (regex!5628 (rule!8374 (_1!22062 lt!1241039))))))))))

(declare-fun d!1062611 () Bool)

(declare-fun c!624240 () Bool)

(assert (=> d!1062611 (= c!624240 (or ((_ is EmptyExpr!10387) (regex!5628 (rule!8374 (_1!22062 lt!1241039)))) ((_ is EmptyLang!10387) (regex!5628 (rule!8374 (_1!22062 lt!1241039))))))))

(assert (=> d!1062611 (= (usedCharacters!842 (regex!5628 (rule!8374 (_1!22062 lt!1241039)))) e!2232779)))

(declare-fun bm!260798 () Bool)

(assert (=> bm!260798 (= call!260804 (usedCharacters!842 (ite c!624243 (regTwo!21287 (regex!5628 (rule!8374 (_1!22062 lt!1241039)))) (regOne!21286 (regex!5628 (rule!8374 (_1!22062 lt!1241039)))))))))

(assert (= (and d!1062611 c!624240) b!3607926))

(assert (= (and d!1062611 (not c!624240)) b!3607929))

(assert (= (and b!3607929 c!624242) b!3607923))

(assert (= (and b!3607929 (not c!624242)) b!3607925))

(assert (= (and b!3607925 c!624241) b!3607927))

(assert (= (and b!3607925 (not c!624241)) b!3607930))

(assert (= (and b!3607930 c!624243) b!3607928))

(assert (= (and b!3607930 (not c!624243)) b!3607924))

(assert (= (or b!3607928 b!3607924) bm!260796))

(assert (= (or b!3607928 b!3607924) bm!260798))

(assert (= (or b!3607928 b!3607924) bm!260797))

(assert (= (or b!3607927 bm!260796) bm!260799))

(declare-fun m!4105143 () Bool)

(assert (=> bm!260797 m!4105143))

(declare-fun m!4105145 () Bool)

(assert (=> bm!260799 m!4105145))

(declare-fun m!4105147 () Bool)

(assert (=> bm!260798 m!4105147))

(assert (=> b!3607438 d!1062611))

(declare-fun d!1062613 () Bool)

(assert (=> d!1062613 (not (contains!7319 (usedCharacters!842 (regex!5628 (rule!8374 (_1!22062 lt!1241039)))) lt!1241040))))

(declare-fun lt!1241299 () Unit!54082)

(declare-fun choose!21075 (LexerInterface!5217 List!38087 List!38087 Rule!11056 Rule!11056 C!20960) Unit!54082)

(assert (=> d!1062613 (= lt!1241299 (choose!21075 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8374 (_1!22062 lt!1241039)) lt!1241040))))

(assert (=> d!1062613 (rulesInvariant!4614 thiss!23823 rules!3307)))

(assert (=> d!1062613 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!216 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8374 (_1!22062 lt!1241039)) lt!1241040) lt!1241299)))

(declare-fun bs!570760 () Bool)

(assert (= bs!570760 d!1062613))

(assert (=> bs!570760 m!4104555))

(assert (=> bs!570760 m!4104555))

(assert (=> bs!570760 m!4104557))

(declare-fun m!4105149 () Bool)

(assert (=> bs!570760 m!4105149))

(assert (=> bs!570760 m!4104495))

(assert (=> b!3607438 d!1062613))

(declare-fun d!1062615 () Bool)

(assert (=> d!1062615 (= (inv!51328 (tag!6330 anOtherTypeRule!33)) (= (mod (str.len (value!180857 (tag!6330 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3607476 d!1062615))

(declare-fun d!1062617 () Bool)

(declare-fun res!1459097 () Bool)

(declare-fun e!2232784 () Bool)

(assert (=> d!1062617 (=> (not res!1459097) (not e!2232784))))

(declare-fun semiInverseModEq!2393 (Int Int) Bool)

(assert (=> d!1062617 (= res!1459097 (semiInverseModEq!2393 (toChars!7771 (transformation!5628 anOtherTypeRule!33)) (toValue!7912 (transformation!5628 anOtherTypeRule!33))))))

(assert (=> d!1062617 (= (inv!51331 (transformation!5628 anOtherTypeRule!33)) e!2232784)))

(declare-fun b!3607933 () Bool)

(declare-fun equivClasses!2292 (Int Int) Bool)

(assert (=> b!3607933 (= e!2232784 (equivClasses!2292 (toChars!7771 (transformation!5628 anOtherTypeRule!33)) (toValue!7912 (transformation!5628 anOtherTypeRule!33))))))

(assert (= (and d!1062617 res!1459097) b!3607933))

(declare-fun m!4105151 () Bool)

(assert (=> d!1062617 m!4105151))

(declare-fun m!4105153 () Bool)

(assert (=> b!3607933 m!4105153))

(assert (=> b!3607476 d!1062617))

(declare-fun b!3607934 () Bool)

(declare-fun e!2232790 () Bool)

(assert (=> b!3607934 (= e!2232790 (= (head!7582 (list!13996 (charsOf!3642 (_1!22062 lt!1241039)))) (c!624148 (regex!5628 lt!1241025))))))

(declare-fun b!3607935 () Bool)

(declare-fun res!1459105 () Bool)

(assert (=> b!3607935 (=> (not res!1459105) (not e!2232790))))

(declare-fun call!260805 () Bool)

(assert (=> b!3607935 (= res!1459105 (not call!260805))))

(declare-fun d!1062619 () Bool)

(declare-fun e!2232786 () Bool)

(assert (=> d!1062619 e!2232786))

(declare-fun c!624247 () Bool)

(assert (=> d!1062619 (= c!624247 ((_ is EmptyExpr!10387) (regex!5628 lt!1241025)))))

(declare-fun lt!1241300 () Bool)

(declare-fun e!2232788 () Bool)

(assert (=> d!1062619 (= lt!1241300 e!2232788)))

(declare-fun c!624246 () Bool)

(assert (=> d!1062619 (= c!624246 (isEmpty!22410 (list!13996 (charsOf!3642 (_1!22062 lt!1241039)))))))

(assert (=> d!1062619 (validRegex!4757 (regex!5628 lt!1241025))))

(assert (=> d!1062619 (= (matchR!4956 (regex!5628 lt!1241025) (list!13996 (charsOf!3642 (_1!22062 lt!1241039)))) lt!1241300)))

(declare-fun b!3607936 () Bool)

(assert (=> b!3607936 (= e!2232786 (= lt!1241300 call!260805))))

(declare-fun b!3607937 () Bool)

(declare-fun e!2232787 () Bool)

(assert (=> b!3607937 (= e!2232787 (not lt!1241300))))

(declare-fun b!3607938 () Bool)

(declare-fun res!1459098 () Bool)

(declare-fun e!2232785 () Bool)

(assert (=> b!3607938 (=> res!1459098 e!2232785)))

(assert (=> b!3607938 (= res!1459098 (not ((_ is ElementMatch!10387) (regex!5628 lt!1241025))))))

(assert (=> b!3607938 (= e!2232787 e!2232785)))

(declare-fun b!3607939 () Bool)

(declare-fun e!2232789 () Bool)

(assert (=> b!3607939 (= e!2232789 (not (= (head!7582 (list!13996 (charsOf!3642 (_1!22062 lt!1241039)))) (c!624148 (regex!5628 lt!1241025)))))))

(declare-fun bm!260800 () Bool)

(assert (=> bm!260800 (= call!260805 (isEmpty!22410 (list!13996 (charsOf!3642 (_1!22062 lt!1241039)))))))

(declare-fun b!3607940 () Bool)

(assert (=> b!3607940 (= e!2232786 e!2232787)))

(declare-fun c!624245 () Bool)

(assert (=> b!3607940 (= c!624245 ((_ is EmptyLang!10387) (regex!5628 lt!1241025)))))

(declare-fun b!3607941 () Bool)

(declare-fun res!1459100 () Bool)

(assert (=> b!3607941 (=> (not res!1459100) (not e!2232790))))

(assert (=> b!3607941 (= res!1459100 (isEmpty!22410 (tail!5593 (list!13996 (charsOf!3642 (_1!22062 lt!1241039))))))))

(declare-fun b!3607942 () Bool)

(declare-fun res!1459103 () Bool)

(assert (=> b!3607942 (=> res!1459103 e!2232785)))

(assert (=> b!3607942 (= res!1459103 e!2232790)))

(declare-fun res!1459099 () Bool)

(assert (=> b!3607942 (=> (not res!1459099) (not e!2232790))))

(assert (=> b!3607942 (= res!1459099 lt!1241300)))

(declare-fun b!3607943 () Bool)

(declare-fun e!2232791 () Bool)

(assert (=> b!3607943 (= e!2232791 e!2232789)))

(declare-fun res!1459101 () Bool)

(assert (=> b!3607943 (=> res!1459101 e!2232789)))

(assert (=> b!3607943 (= res!1459101 call!260805)))

(declare-fun b!3607944 () Bool)

(assert (=> b!3607944 (= e!2232785 e!2232791)))

(declare-fun res!1459102 () Bool)

(assert (=> b!3607944 (=> (not res!1459102) (not e!2232791))))

(assert (=> b!3607944 (= res!1459102 (not lt!1241300))))

(declare-fun b!3607945 () Bool)

(declare-fun res!1459104 () Bool)

(assert (=> b!3607945 (=> res!1459104 e!2232789)))

(assert (=> b!3607945 (= res!1459104 (not (isEmpty!22410 (tail!5593 (list!13996 (charsOf!3642 (_1!22062 lt!1241039)))))))))

(declare-fun b!3607946 () Bool)

(assert (=> b!3607946 (= e!2232788 (nullable!3595 (regex!5628 lt!1241025)))))

(declare-fun b!3607947 () Bool)

(assert (=> b!3607947 (= e!2232788 (matchR!4956 (derivativeStep!3144 (regex!5628 lt!1241025) (head!7582 (list!13996 (charsOf!3642 (_1!22062 lt!1241039))))) (tail!5593 (list!13996 (charsOf!3642 (_1!22062 lt!1241039))))))))

(assert (= (and d!1062619 c!624246) b!3607946))

(assert (= (and d!1062619 (not c!624246)) b!3607947))

(assert (= (and d!1062619 c!624247) b!3607936))

(assert (= (and d!1062619 (not c!624247)) b!3607940))

(assert (= (and b!3607940 c!624245) b!3607937))

(assert (= (and b!3607940 (not c!624245)) b!3607938))

(assert (= (and b!3607938 (not res!1459098)) b!3607942))

(assert (= (and b!3607942 res!1459099) b!3607935))

(assert (= (and b!3607935 res!1459105) b!3607941))

(assert (= (and b!3607941 res!1459100) b!3607934))

(assert (= (and b!3607942 (not res!1459103)) b!3607944))

(assert (= (and b!3607944 res!1459102) b!3607943))

(assert (= (and b!3607943 (not res!1459101)) b!3607945))

(assert (= (and b!3607945 (not res!1459104)) b!3607939))

(assert (= (or b!3607936 b!3607935 b!3607943) bm!260800))

(declare-fun m!4105155 () Bool)

(assert (=> b!3607946 m!4105155))

(assert (=> b!3607941 m!4104543))

(declare-fun m!4105157 () Bool)

(assert (=> b!3607941 m!4105157))

(assert (=> b!3607941 m!4105157))

(declare-fun m!4105159 () Bool)

(assert (=> b!3607941 m!4105159))

(assert (=> b!3607945 m!4104543))

(assert (=> b!3607945 m!4105157))

(assert (=> b!3607945 m!4105157))

(assert (=> b!3607945 m!4105159))

(assert (=> b!3607934 m!4104543))

(declare-fun m!4105161 () Bool)

(assert (=> b!3607934 m!4105161))

(assert (=> bm!260800 m!4104543))

(declare-fun m!4105163 () Bool)

(assert (=> bm!260800 m!4105163))

(assert (=> d!1062619 m!4104543))

(assert (=> d!1062619 m!4105163))

(declare-fun m!4105165 () Bool)

(assert (=> d!1062619 m!4105165))

(assert (=> b!3607939 m!4104543))

(assert (=> b!3607939 m!4105161))

(assert (=> b!3607947 m!4104543))

(assert (=> b!3607947 m!4105161))

(assert (=> b!3607947 m!4105161))

(declare-fun m!4105167 () Bool)

(assert (=> b!3607947 m!4105167))

(assert (=> b!3607947 m!4104543))

(assert (=> b!3607947 m!4105157))

(assert (=> b!3607947 m!4105167))

(assert (=> b!3607947 m!4105157))

(declare-fun m!4105169 () Bool)

(assert (=> b!3607947 m!4105169))

(assert (=> b!3607455 d!1062619))

(declare-fun d!1062621 () Bool)

(assert (=> d!1062621 (= (list!13996 (charsOf!3642 (_1!22062 lt!1241039))) (list!14000 (c!624149 (charsOf!3642 (_1!22062 lt!1241039)))))))

(declare-fun bs!570761 () Bool)

(assert (= bs!570761 d!1062621))

(declare-fun m!4105171 () Bool)

(assert (=> bs!570761 m!4105171))

(assert (=> b!3607455 d!1062621))

(assert (=> b!3607455 d!1062573))

(declare-fun d!1062623 () Bool)

(assert (=> d!1062623 (= (get!12311 lt!1241037) (v!37619 lt!1241037))))

(assert (=> b!3607455 d!1062623))

(declare-fun d!1062625 () Bool)

(assert (=> d!1062625 (= (get!12310 lt!1241042) (v!37620 lt!1241042))))

(assert (=> b!3607475 d!1062625))

(declare-fun d!1062627 () Bool)

(assert (=> d!1062627 (not (matchR!4956 (regex!5628 rule!403) lt!1241020))))

(declare-fun lt!1241303 () Unit!54082)

(declare-fun choose!21076 (Regex!10387 List!38085 C!20960) Unit!54082)

(assert (=> d!1062627 (= lt!1241303 (choose!21076 (regex!5628 rule!403) lt!1241020 lt!1241038))))

(assert (=> d!1062627 (validRegex!4757 (regex!5628 rule!403))))

(assert (=> d!1062627 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!612 (regex!5628 rule!403) lt!1241020 lt!1241038) lt!1241303)))

(declare-fun bs!570762 () Bool)

(assert (= bs!570762 d!1062627))

(assert (=> bs!570762 m!4104505))

(declare-fun m!4105173 () Bool)

(assert (=> bs!570762 m!4105173))

(assert (=> bs!570762 m!4105129))

(assert (=> b!3607456 d!1062627))

(declare-fun d!1062629 () Bool)

(assert (=> d!1062629 (= (isEmpty!22410 (_2!22062 lt!1241054)) ((_ is Nil!37961) (_2!22062 lt!1241054)))))

(assert (=> b!3607473 d!1062629))

(declare-fun b!3608090 () Bool)

(declare-fun e!2232871 () Bool)

(assert (=> b!3608090 (= e!2232871 true)))

(declare-fun d!1062631 () Bool)

(assert (=> d!1062631 e!2232871))

(assert (= d!1062631 b!3608090))

(declare-fun order!20731 () Int)

(declare-fun lambda!124038 () Int)

(declare-fun order!20733 () Int)

(declare-fun dynLambda!16417 (Int Int) Int)

(declare-fun dynLambda!16418 (Int Int) Int)

(assert (=> b!3608090 (< (dynLambda!16417 order!20731 (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) (dynLambda!16418 order!20733 lambda!124038))))

(declare-fun order!20735 () Int)

(declare-fun dynLambda!16419 (Int Int) Int)

(assert (=> b!3608090 (< (dynLambda!16419 order!20735 (toChars!7771 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) (dynLambda!16418 order!20733 lambda!124038))))

(declare-fun dynLambda!16420 (Int BalanceConc!22744) TokenValue!5858)

(assert (=> d!1062631 (= (list!13996 (dynLambda!16411 (toChars!7771 (transformation!5628 (rule!8374 (_1!22062 lt!1241039)))) (dynLambda!16420 (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039)))) lt!1241028))) (list!13996 lt!1241028))))

(declare-fun lt!1241348 () Unit!54082)

(declare-fun ForallOf!654 (Int BalanceConc!22744) Unit!54082)

(assert (=> d!1062631 (= lt!1241348 (ForallOf!654 lambda!124038 lt!1241028))))

(assert (=> d!1062631 (= (lemmaSemiInverse!1385 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))) lt!1241028) lt!1241348)))

(declare-fun b_lambda!106757 () Bool)

(assert (=> (not b_lambda!106757) (not d!1062631)))

(declare-fun t!293096 () Bool)

(declare-fun tb!206773 () Bool)

(assert (=> (and b!3607464 (= (toChars!7771 (transformation!5628 rule!403)) (toChars!7771 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) t!293096) tb!206773))

(declare-fun tp!1103070 () Bool)

(declare-fun e!2232872 () Bool)

(declare-fun b!3608091 () Bool)

(assert (=> b!3608091 (= e!2232872 (and (inv!51335 (c!624149 (dynLambda!16411 (toChars!7771 (transformation!5628 (rule!8374 (_1!22062 lt!1241039)))) (dynLambda!16420 (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039)))) lt!1241028)))) tp!1103070))))

(declare-fun result!252006 () Bool)

(assert (=> tb!206773 (= result!252006 (and (inv!51336 (dynLambda!16411 (toChars!7771 (transformation!5628 (rule!8374 (_1!22062 lt!1241039)))) (dynLambda!16420 (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039)))) lt!1241028))) e!2232872))))

(assert (= tb!206773 b!3608091))

(declare-fun m!4105337 () Bool)

(assert (=> b!3608091 m!4105337))

(declare-fun m!4105339 () Bool)

(assert (=> tb!206773 m!4105339))

(assert (=> d!1062631 t!293096))

(declare-fun b_and!262855 () Bool)

(assert (= b_and!262795 (and (=> t!293096 result!252006) b_and!262855)))

(declare-fun t!293098 () Bool)

(declare-fun tb!206775 () Bool)

(assert (=> (and b!3607451 (= (toChars!7771 (transformation!5628 anOtherTypeRule!33)) (toChars!7771 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) t!293098) tb!206775))

(declare-fun result!252008 () Bool)

(assert (= result!252008 result!252006))

(assert (=> d!1062631 t!293098))

(declare-fun b_and!262857 () Bool)

(assert (= b_and!262797 (and (=> t!293098 result!252008) b_and!262857)))

(declare-fun tb!206777 () Bool)

(declare-fun t!293100 () Bool)

(assert (=> (and b!3607465 (= (toChars!7771 (transformation!5628 (rule!8374 token!511))) (toChars!7771 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) t!293100) tb!206777))

(declare-fun result!252010 () Bool)

(assert (= result!252010 result!252006))

(assert (=> d!1062631 t!293100))

(declare-fun b_and!262859 () Bool)

(assert (= b_and!262799 (and (=> t!293100 result!252010) b_and!262859)))

(declare-fun tb!206779 () Bool)

(declare-fun t!293102 () Bool)

(assert (=> (and b!3607440 (= (toChars!7771 (transformation!5628 (h!43383 rules!3307))) (toChars!7771 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) t!293102) tb!206779))

(declare-fun result!252012 () Bool)

(assert (= result!252012 result!252006))

(assert (=> d!1062631 t!293102))

(declare-fun b_and!262861 () Bool)

(assert (= b_and!262801 (and (=> t!293102 result!252012) b_and!262861)))

(declare-fun b_lambda!106759 () Bool)

(assert (=> (not b_lambda!106759) (not d!1062631)))

(declare-fun t!293104 () Bool)

(declare-fun tb!206781 () Bool)

(assert (=> (and b!3607464 (= (toValue!7912 (transformation!5628 rule!403)) (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) t!293104) tb!206781))

(declare-fun result!252014 () Bool)

(assert (=> tb!206781 (= result!252014 (inv!21 (dynLambda!16420 (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039)))) lt!1241028)))))

(declare-fun m!4105341 () Bool)

(assert (=> tb!206781 m!4105341))

(assert (=> d!1062631 t!293104))

(declare-fun b_and!262863 () Bool)

(assert (= b_and!262747 (and (=> t!293104 result!252014) b_and!262863)))

(declare-fun t!293106 () Bool)

(declare-fun tb!206783 () Bool)

(assert (=> (and b!3607451 (= (toValue!7912 (transformation!5628 anOtherTypeRule!33)) (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) t!293106) tb!206783))

(declare-fun result!252018 () Bool)

(assert (= result!252018 result!252014))

(assert (=> d!1062631 t!293106))

(declare-fun b_and!262865 () Bool)

(assert (= b_and!262751 (and (=> t!293106 result!252018) b_and!262865)))

(declare-fun t!293108 () Bool)

(declare-fun tb!206785 () Bool)

(assert (=> (and b!3607465 (= (toValue!7912 (transformation!5628 (rule!8374 token!511))) (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) t!293108) tb!206785))

(declare-fun result!252020 () Bool)

(assert (= result!252020 result!252014))

(assert (=> d!1062631 t!293108))

(declare-fun b_and!262867 () Bool)

(assert (= b_and!262755 (and (=> t!293108 result!252020) b_and!262867)))

(declare-fun t!293110 () Bool)

(declare-fun tb!206787 () Bool)

(assert (=> (and b!3607440 (= (toValue!7912 (transformation!5628 (h!43383 rules!3307))) (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) t!293110) tb!206787))

(declare-fun result!252022 () Bool)

(assert (= result!252022 result!252014))

(assert (=> d!1062631 t!293110))

(declare-fun b_and!262869 () Bool)

(assert (= b_and!262759 (and (=> t!293110 result!252022) b_and!262869)))

(declare-fun m!4105343 () Bool)

(assert (=> d!1062631 m!4105343))

(assert (=> d!1062631 m!4104609))

(declare-fun m!4105345 () Bool)

(assert (=> d!1062631 m!4105345))

(declare-fun m!4105347 () Bool)

(assert (=> d!1062631 m!4105347))

(declare-fun m!4105349 () Bool)

(assert (=> d!1062631 m!4105349))

(assert (=> d!1062631 m!4105345))

(assert (=> d!1062631 m!4105349))

(assert (=> b!3607454 d!1062631))

(declare-fun d!1062687 () Bool)

(assert (=> d!1062687 (= (apply!9134 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))) lt!1241028) (dynLambda!16420 (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039)))) lt!1241028))))

(declare-fun b_lambda!106761 () Bool)

(assert (=> (not b_lambda!106761) (not d!1062687)))

(assert (=> d!1062687 t!293104))

(declare-fun b_and!262871 () Bool)

(assert (= b_and!262863 (and (=> t!293104 result!252014) b_and!262871)))

(assert (=> d!1062687 t!293106))

(declare-fun b_and!262873 () Bool)

(assert (= b_and!262865 (and (=> t!293106 result!252018) b_and!262873)))

(assert (=> d!1062687 t!293108))

(declare-fun b_and!262875 () Bool)

(assert (= b_and!262867 (and (=> t!293108 result!252020) b_and!262875)))

(assert (=> d!1062687 t!293110))

(declare-fun b_and!262877 () Bool)

(assert (= b_and!262869 (and (=> t!293110 result!252022) b_and!262877)))

(assert (=> d!1062687 m!4105349))

(assert (=> b!3607454 d!1062687))

(declare-fun d!1062689 () Bool)

(declare-fun lt!1241351 () Int)

(assert (=> d!1062689 (= lt!1241351 (size!28939 (list!13996 lt!1241028)))))

(declare-fun size!28941 (Conc!11565) Int)

(assert (=> d!1062689 (= lt!1241351 (size!28941 (c!624149 lt!1241028)))))

(assert (=> d!1062689 (= (size!28938 lt!1241028) lt!1241351)))

(declare-fun bs!570771 () Bool)

(assert (= bs!570771 d!1062689))

(assert (=> bs!570771 m!4104609))

(assert (=> bs!570771 m!4104609))

(declare-fun m!4105351 () Bool)

(assert (=> bs!570771 m!4105351))

(declare-fun m!4105353 () Bool)

(assert (=> bs!570771 m!4105353))

(assert (=> b!3607454 d!1062689))

(declare-fun d!1062691 () Bool)

(declare-fun fromListB!1933 (List!38085) BalanceConc!22744)

(assert (=> d!1062691 (= (seqFromList!4181 (originalCharacters!6342 (_1!22062 lt!1241039))) (fromListB!1933 (originalCharacters!6342 (_1!22062 lt!1241039))))))

(declare-fun bs!570772 () Bool)

(assert (= bs!570772 d!1062691))

(declare-fun m!4105355 () Bool)

(assert (=> bs!570772 m!4105355))

(assert (=> b!3607454 d!1062691))

(declare-fun d!1062693 () Bool)

(assert (=> d!1062693 (= (size!28937 (_1!22062 lt!1241039)) (size!28939 (originalCharacters!6342 (_1!22062 lt!1241039))))))

(declare-fun Unit!54095 () Unit!54082)

(assert (=> d!1062693 (= (lemmaCharactersSize!681 (_1!22062 lt!1241039)) Unit!54095)))

(declare-fun bs!570773 () Bool)

(assert (= bs!570773 d!1062693))

(declare-fun m!4105357 () Bool)

(assert (=> bs!570773 m!4105357))

(assert (=> b!3607454 d!1062693))

(declare-fun b!3608100 () Bool)

(declare-fun e!2232880 () Bool)

(assert (=> b!3608100 (= e!2232880 true)))

(declare-fun d!1062695 () Bool)

(assert (=> d!1062695 e!2232880))

(assert (= d!1062695 b!3608100))

(declare-fun order!20737 () Int)

(declare-fun lambda!124041 () Int)

(declare-fun dynLambda!16421 (Int Int) Int)

(assert (=> b!3608100 (< (dynLambda!16417 order!20731 (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) (dynLambda!16421 order!20737 lambda!124041))))

(assert (=> b!3608100 (< (dynLambda!16419 order!20735 (toChars!7771 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) (dynLambda!16421 order!20737 lambda!124041))))

(assert (=> d!1062695 (= (dynLambda!16420 (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039)))) lt!1241028) (dynLambda!16420 (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039)))) (seqFromList!4181 (originalCharacters!6342 (_1!22062 lt!1241039)))))))

(declare-fun lt!1241354 () Unit!54082)

(declare-fun Forall2of!312 (Int BalanceConc!22744 BalanceConc!22744) Unit!54082)

(assert (=> d!1062695 (= lt!1241354 (Forall2of!312 lambda!124041 lt!1241028 (seqFromList!4181 (originalCharacters!6342 (_1!22062 lt!1241039)))))))

(assert (=> d!1062695 (= (list!13996 lt!1241028) (list!13996 (seqFromList!4181 (originalCharacters!6342 (_1!22062 lt!1241039)))))))

(assert (=> d!1062695 (= (lemmaEqSameImage!819 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))) lt!1241028 (seqFromList!4181 (originalCharacters!6342 (_1!22062 lt!1241039)))) lt!1241354)))

(declare-fun b_lambda!106763 () Bool)

(assert (=> (not b_lambda!106763) (not d!1062695)))

(assert (=> d!1062695 t!293104))

(declare-fun b_and!262879 () Bool)

(assert (= b_and!262871 (and (=> t!293104 result!252014) b_and!262879)))

(assert (=> d!1062695 t!293106))

(declare-fun b_and!262881 () Bool)

(assert (= b_and!262873 (and (=> t!293106 result!252018) b_and!262881)))

(assert (=> d!1062695 t!293108))

(declare-fun b_and!262883 () Bool)

(assert (= b_and!262875 (and (=> t!293108 result!252020) b_and!262883)))

(assert (=> d!1062695 t!293110))

(declare-fun b_and!262885 () Bool)

(assert (= b_and!262877 (and (=> t!293110 result!252022) b_and!262885)))

(declare-fun b_lambda!106765 () Bool)

(assert (=> (not b_lambda!106765) (not d!1062695)))

(declare-fun tb!206789 () Bool)

(declare-fun t!293112 () Bool)

(assert (=> (and b!3607464 (= (toValue!7912 (transformation!5628 rule!403)) (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) t!293112) tb!206789))

(declare-fun result!252024 () Bool)

(assert (=> tb!206789 (= result!252024 (inv!21 (dynLambda!16420 (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039)))) (seqFromList!4181 (originalCharacters!6342 (_1!22062 lt!1241039))))))))

(declare-fun m!4105359 () Bool)

(assert (=> tb!206789 m!4105359))

(assert (=> d!1062695 t!293112))

(declare-fun b_and!262887 () Bool)

(assert (= b_and!262879 (and (=> t!293112 result!252024) b_and!262887)))

(declare-fun tb!206791 () Bool)

(declare-fun t!293114 () Bool)

(assert (=> (and b!3607451 (= (toValue!7912 (transformation!5628 anOtherTypeRule!33)) (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) t!293114) tb!206791))

(declare-fun result!252026 () Bool)

(assert (= result!252026 result!252024))

(assert (=> d!1062695 t!293114))

(declare-fun b_and!262889 () Bool)

(assert (= b_and!262881 (and (=> t!293114 result!252026) b_and!262889)))

(declare-fun tb!206793 () Bool)

(declare-fun t!293116 () Bool)

(assert (=> (and b!3607465 (= (toValue!7912 (transformation!5628 (rule!8374 token!511))) (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) t!293116) tb!206793))

(declare-fun result!252028 () Bool)

(assert (= result!252028 result!252024))

(assert (=> d!1062695 t!293116))

(declare-fun b_and!262891 () Bool)

(assert (= b_and!262883 (and (=> t!293116 result!252028) b_and!262891)))

(declare-fun t!293118 () Bool)

(declare-fun tb!206795 () Bool)

(assert (=> (and b!3607440 (= (toValue!7912 (transformation!5628 (h!43383 rules!3307))) (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) t!293118) tb!206795))

(declare-fun result!252030 () Bool)

(assert (= result!252030 result!252024))

(assert (=> d!1062695 t!293118))

(declare-fun b_and!262893 () Bool)

(assert (= b_and!262885 (and (=> t!293118 result!252030) b_and!262893)))

(assert (=> d!1062695 m!4104515))

(declare-fun m!4105361 () Bool)

(assert (=> d!1062695 m!4105361))

(assert (=> d!1062695 m!4104515))

(declare-fun m!4105363 () Bool)

(assert (=> d!1062695 m!4105363))

(assert (=> d!1062695 m!4104515))

(declare-fun m!4105365 () Bool)

(assert (=> d!1062695 m!4105365))

(assert (=> d!1062695 m!4105349))

(assert (=> d!1062695 m!4104609))

(assert (=> b!3607454 d!1062695))

(declare-fun d!1062697 () Bool)

(assert (=> d!1062697 (= (isEmpty!22411 rules!3307) ((_ is Nil!37963) rules!3307))))

(assert (=> b!3607474 d!1062697))

(declare-fun d!1062699 () Bool)

(declare-fun lt!1241357 () Bool)

(declare-fun content!5429 (List!38087) (InoxSet Rule!11056))

(assert (=> d!1062699 (= lt!1241357 (select (content!5429 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2232887 () Bool)

(assert (=> d!1062699 (= lt!1241357 e!2232887)))

(declare-fun res!1459162 () Bool)

(assert (=> d!1062699 (=> (not res!1459162) (not e!2232887))))

(assert (=> d!1062699 (= res!1459162 ((_ is Cons!37963) rules!3307))))

(assert (=> d!1062699 (= (contains!7320 rules!3307 anOtherTypeRule!33) lt!1241357)))

(declare-fun b!3608105 () Bool)

(declare-fun e!2232886 () Bool)

(assert (=> b!3608105 (= e!2232887 e!2232886)))

(declare-fun res!1459163 () Bool)

(assert (=> b!3608105 (=> res!1459163 e!2232886)))

(assert (=> b!3608105 (= res!1459163 (= (h!43383 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3608106 () Bool)

(assert (=> b!3608106 (= e!2232886 (contains!7320 (t!293018 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1062699 res!1459162) b!3608105))

(assert (= (and b!3608105 (not res!1459163)) b!3608106))

(declare-fun m!4105367 () Bool)

(assert (=> d!1062699 m!4105367))

(declare-fun m!4105369 () Bool)

(assert (=> d!1062699 m!4105369))

(declare-fun m!4105371 () Bool)

(assert (=> b!3608106 m!4105371))

(assert (=> b!3607472 d!1062699))

(declare-fun d!1062701 () Bool)

(declare-fun res!1459166 () Bool)

(declare-fun e!2232890 () Bool)

(assert (=> d!1062701 (=> (not res!1459166) (not e!2232890))))

(declare-fun rulesValid!2150 (LexerInterface!5217 List!38087) Bool)

(assert (=> d!1062701 (= res!1459166 (rulesValid!2150 thiss!23823 rules!3307))))

(assert (=> d!1062701 (= (rulesInvariant!4614 thiss!23823 rules!3307) e!2232890)))

(declare-fun b!3608109 () Bool)

(declare-datatypes ((List!38091 0))(
  ( (Nil!37967) (Cons!37967 (h!43387 String!42624) (t!293142 List!38091)) )
))
(declare-fun noDuplicateTag!2146 (LexerInterface!5217 List!38087 List!38091) Bool)

(assert (=> b!3608109 (= e!2232890 (noDuplicateTag!2146 thiss!23823 rules!3307 Nil!37967))))

(assert (= (and d!1062701 res!1459166) b!3608109))

(declare-fun m!4105373 () Bool)

(assert (=> d!1062701 m!4105373))

(declare-fun m!4105375 () Bool)

(assert (=> b!3608109 m!4105375))

(assert (=> b!3607453 d!1062701))

(declare-fun d!1062703 () Bool)

(assert (=> d!1062703 (= (inv!51328 (tag!6330 (rule!8374 token!511))) (= (mod (str.len (value!180857 (tag!6330 (rule!8374 token!511)))) 2) 0))))

(assert (=> b!3607471 d!1062703))

(declare-fun d!1062705 () Bool)

(declare-fun res!1459167 () Bool)

(declare-fun e!2232891 () Bool)

(assert (=> d!1062705 (=> (not res!1459167) (not e!2232891))))

(assert (=> d!1062705 (= res!1459167 (semiInverseModEq!2393 (toChars!7771 (transformation!5628 (rule!8374 token!511))) (toValue!7912 (transformation!5628 (rule!8374 token!511)))))))

(assert (=> d!1062705 (= (inv!51331 (transformation!5628 (rule!8374 token!511))) e!2232891)))

(declare-fun b!3608110 () Bool)

(assert (=> b!3608110 (= e!2232891 (equivClasses!2292 (toChars!7771 (transformation!5628 (rule!8374 token!511))) (toValue!7912 (transformation!5628 (rule!8374 token!511)))))))

(assert (= (and d!1062705 res!1459167) b!3608110))

(declare-fun m!4105377 () Bool)

(assert (=> d!1062705 m!4105377))

(declare-fun m!4105379 () Bool)

(assert (=> b!3608110 m!4105379))

(assert (=> b!3607471 d!1062705))

(declare-fun d!1062707 () Bool)

(assert (=> d!1062707 (= (isDefined!6119 lt!1241042) (not (isEmpty!22413 lt!1241042)))))

(declare-fun bs!570774 () Bool)

(assert (= bs!570774 d!1062707))

(declare-fun m!4105381 () Bool)

(assert (=> bs!570774 m!4105381))

(assert (=> b!3607452 d!1062707))

(declare-fun b!3608111 () Bool)

(declare-fun res!1459171 () Bool)

(declare-fun e!2232893 () Bool)

(assert (=> b!3608111 (=> (not res!1459171) (not e!2232893))))

(declare-fun lt!1241360 () Option!7887)

(assert (=> b!3608111 (= res!1459171 (< (size!28939 (_2!22062 (get!12310 lt!1241360))) (size!28939 lt!1241020)))))

(declare-fun b!3608112 () Bool)

(declare-fun res!1459172 () Bool)

(assert (=> b!3608112 (=> (not res!1459172) (not e!2232893))))

(assert (=> b!3608112 (= res!1459172 (matchR!4956 (regex!5628 (rule!8374 (_1!22062 (get!12310 lt!1241360)))) (list!13996 (charsOf!3642 (_1!22062 (get!12310 lt!1241360))))))))

(declare-fun b!3608113 () Bool)

(declare-fun e!2232894 () Option!7887)

(declare-fun call!260812 () Option!7887)

(assert (=> b!3608113 (= e!2232894 call!260812)))

(declare-fun b!3608114 () Bool)

(declare-fun lt!1241361 () Option!7887)

(declare-fun lt!1241359 () Option!7887)

(assert (=> b!3608114 (= e!2232894 (ite (and ((_ is None!7886) lt!1241361) ((_ is None!7886) lt!1241359)) None!7886 (ite ((_ is None!7886) lt!1241359) lt!1241361 (ite ((_ is None!7886) lt!1241361) lt!1241359 (ite (>= (size!28937 (_1!22062 (v!37620 lt!1241361))) (size!28937 (_1!22062 (v!37620 lt!1241359)))) lt!1241361 lt!1241359)))))))

(assert (=> b!3608114 (= lt!1241361 call!260812)))

(assert (=> b!3608114 (= lt!1241359 (maxPrefix!2751 thiss!23823 (t!293018 rules!3307) lt!1241020))))

(declare-fun b!3608115 () Bool)

(declare-fun res!1459169 () Bool)

(assert (=> b!3608115 (=> (not res!1459169) (not e!2232893))))

(assert (=> b!3608115 (= res!1459169 (= (list!13996 (charsOf!3642 (_1!22062 (get!12310 lt!1241360)))) (originalCharacters!6342 (_1!22062 (get!12310 lt!1241360)))))))

(declare-fun b!3608116 () Bool)

(declare-fun e!2232892 () Bool)

(assert (=> b!3608116 (= e!2232892 e!2232893)))

(declare-fun res!1459168 () Bool)

(assert (=> b!3608116 (=> (not res!1459168) (not e!2232893))))

(assert (=> b!3608116 (= res!1459168 (isDefined!6119 lt!1241360))))

(declare-fun b!3608117 () Bool)

(declare-fun res!1459170 () Bool)

(assert (=> b!3608117 (=> (not res!1459170) (not e!2232893))))

(assert (=> b!3608117 (= res!1459170 (= (value!180858 (_1!22062 (get!12310 lt!1241360))) (apply!9134 (transformation!5628 (rule!8374 (_1!22062 (get!12310 lt!1241360)))) (seqFromList!4181 (originalCharacters!6342 (_1!22062 (get!12310 lt!1241360)))))))))

(declare-fun d!1062709 () Bool)

(assert (=> d!1062709 e!2232892))

(declare-fun res!1459174 () Bool)

(assert (=> d!1062709 (=> res!1459174 e!2232892)))

(assert (=> d!1062709 (= res!1459174 (isEmpty!22413 lt!1241360))))

(assert (=> d!1062709 (= lt!1241360 e!2232894)))

(declare-fun c!624268 () Bool)

(assert (=> d!1062709 (= c!624268 (and ((_ is Cons!37963) rules!3307) ((_ is Nil!37963) (t!293018 rules!3307))))))

(declare-fun lt!1241358 () Unit!54082)

(declare-fun lt!1241362 () Unit!54082)

(assert (=> d!1062709 (= lt!1241358 lt!1241362)))

(assert (=> d!1062709 (isPrefix!2991 lt!1241020 lt!1241020)))

(assert (=> d!1062709 (= lt!1241362 (lemmaIsPrefixRefl!1912 lt!1241020 lt!1241020))))

(assert (=> d!1062709 (rulesValidInductive!1977 thiss!23823 rules!3307)))

(assert (=> d!1062709 (= (maxPrefix!2751 thiss!23823 rules!3307 lt!1241020) lt!1241360)))

(declare-fun bm!260807 () Bool)

(assert (=> bm!260807 (= call!260812 (maxPrefixOneRule!1895 thiss!23823 (h!43383 rules!3307) lt!1241020))))

(declare-fun b!3608118 () Bool)

(declare-fun res!1459173 () Bool)

(assert (=> b!3608118 (=> (not res!1459173) (not e!2232893))))

(assert (=> b!3608118 (= res!1459173 (= (++!9444 (list!13996 (charsOf!3642 (_1!22062 (get!12310 lt!1241360)))) (_2!22062 (get!12310 lt!1241360))) lt!1241020))))

(declare-fun b!3608119 () Bool)

(assert (=> b!3608119 (= e!2232893 (contains!7320 rules!3307 (rule!8374 (_1!22062 (get!12310 lt!1241360)))))))

(assert (= (and d!1062709 c!624268) b!3608113))

(assert (= (and d!1062709 (not c!624268)) b!3608114))

(assert (= (or b!3608113 b!3608114) bm!260807))

(assert (= (and d!1062709 (not res!1459174)) b!3608116))

(assert (= (and b!3608116 res!1459168) b!3608115))

(assert (= (and b!3608115 res!1459169) b!3608111))

(assert (= (and b!3608111 res!1459171) b!3608118))

(assert (= (and b!3608118 res!1459173) b!3608117))

(assert (= (and b!3608117 res!1459170) b!3608112))

(assert (= (and b!3608112 res!1459172) b!3608119))

(declare-fun m!4105383 () Bool)

(assert (=> bm!260807 m!4105383))

(declare-fun m!4105385 () Bool)

(assert (=> b!3608115 m!4105385))

(declare-fun m!4105387 () Bool)

(assert (=> b!3608115 m!4105387))

(assert (=> b!3608115 m!4105387))

(declare-fun m!4105389 () Bool)

(assert (=> b!3608115 m!4105389))

(assert (=> b!3608112 m!4105385))

(assert (=> b!3608112 m!4105387))

(assert (=> b!3608112 m!4105387))

(assert (=> b!3608112 m!4105389))

(assert (=> b!3608112 m!4105389))

(declare-fun m!4105391 () Bool)

(assert (=> b!3608112 m!4105391))

(assert (=> b!3608111 m!4105385))

(declare-fun m!4105393 () Bool)

(assert (=> b!3608111 m!4105393))

(assert (=> b!3608111 m!4105069))

(assert (=> b!3608118 m!4105385))

(assert (=> b!3608118 m!4105387))

(assert (=> b!3608118 m!4105387))

(assert (=> b!3608118 m!4105389))

(assert (=> b!3608118 m!4105389))

(declare-fun m!4105395 () Bool)

(assert (=> b!3608118 m!4105395))

(assert (=> b!3608117 m!4105385))

(declare-fun m!4105397 () Bool)

(assert (=> b!3608117 m!4105397))

(assert (=> b!3608117 m!4105397))

(declare-fun m!4105399 () Bool)

(assert (=> b!3608117 m!4105399))

(declare-fun m!4105401 () Bool)

(assert (=> b!3608116 m!4105401))

(declare-fun m!4105403 () Bool)

(assert (=> d!1062709 m!4105403))

(declare-fun m!4105405 () Bool)

(assert (=> d!1062709 m!4105405))

(declare-fun m!4105407 () Bool)

(assert (=> d!1062709 m!4105407))

(assert (=> d!1062709 m!4105037))

(assert (=> b!3608119 m!4105385))

(declare-fun m!4105409 () Bool)

(assert (=> b!3608119 m!4105409))

(declare-fun m!4105411 () Bool)

(assert (=> b!3608114 m!4105411))

(assert (=> b!3607452 d!1062709))

(declare-fun d!1062711 () Bool)

(assert (=> d!1062711 (= (list!13996 lt!1241046) (list!14000 (c!624149 lt!1241046)))))

(declare-fun bs!570775 () Bool)

(assert (= bs!570775 d!1062711))

(declare-fun m!4105413 () Bool)

(assert (=> bs!570775 m!4105413))

(assert (=> b!3607452 d!1062711))

(declare-fun d!1062713 () Bool)

(declare-fun lt!1241363 () BalanceConc!22744)

(assert (=> d!1062713 (= (list!13996 lt!1241363) (originalCharacters!6342 token!511))))

(assert (=> d!1062713 (= lt!1241363 (dynLambda!16411 (toChars!7771 (transformation!5628 (rule!8374 token!511))) (value!180858 token!511)))))

(assert (=> d!1062713 (= (charsOf!3642 token!511) lt!1241363)))

(declare-fun b_lambda!106767 () Bool)

(assert (=> (not b_lambda!106767) (not d!1062713)))

(assert (=> d!1062713 t!293052))

(declare-fun b_and!262895 () Bool)

(assert (= b_and!262855 (and (=> t!293052 result!251956) b_and!262895)))

(assert (=> d!1062713 t!293054))

(declare-fun b_and!262897 () Bool)

(assert (= b_and!262857 (and (=> t!293054 result!251958) b_and!262897)))

(assert (=> d!1062713 t!293056))

(declare-fun b_and!262899 () Bool)

(assert (= b_and!262859 (and (=> t!293056 result!251960) b_and!262899)))

(assert (=> d!1062713 t!293058))

(declare-fun b_and!262901 () Bool)

(assert (= b_and!262861 (and (=> t!293058 result!251962) b_and!262901)))

(declare-fun m!4105415 () Bool)

(assert (=> d!1062713 m!4105415))

(assert (=> d!1062713 m!4105093))

(assert (=> b!3607452 d!1062713))

(declare-fun d!1062715 () Bool)

(declare-fun lt!1241364 () Bool)

(assert (=> d!1062715 (= lt!1241364 (select (content!5429 rules!3307) rule!403))))

(declare-fun e!2232896 () Bool)

(assert (=> d!1062715 (= lt!1241364 e!2232896)))

(declare-fun res!1459175 () Bool)

(assert (=> d!1062715 (=> (not res!1459175) (not e!2232896))))

(assert (=> d!1062715 (= res!1459175 ((_ is Cons!37963) rules!3307))))

(assert (=> d!1062715 (= (contains!7320 rules!3307 rule!403) lt!1241364)))

(declare-fun b!3608120 () Bool)

(declare-fun e!2232895 () Bool)

(assert (=> b!3608120 (= e!2232896 e!2232895)))

(declare-fun res!1459176 () Bool)

(assert (=> b!3608120 (=> res!1459176 e!2232895)))

(assert (=> b!3608120 (= res!1459176 (= (h!43383 rules!3307) rule!403))))

(declare-fun b!3608121 () Bool)

(assert (=> b!3608121 (= e!2232895 (contains!7320 (t!293018 rules!3307) rule!403))))

(assert (= (and d!1062715 res!1459175) b!3608120))

(assert (= (and b!3608120 (not res!1459176)) b!3608121))

(assert (=> d!1062715 m!4105367))

(declare-fun m!4105417 () Bool)

(assert (=> d!1062715 m!4105417))

(declare-fun m!4105419 () Bool)

(assert (=> b!3608121 m!4105419))

(assert (=> b!3607450 d!1062715))

(declare-fun d!1062717 () Bool)

(declare-fun lt!1241365 () Bool)

(assert (=> d!1062717 (= lt!1241365 (select (content!5428 call!260760) lt!1241038))))

(declare-fun e!2232898 () Bool)

(assert (=> d!1062717 (= lt!1241365 e!2232898)))

(declare-fun res!1459178 () Bool)

(assert (=> d!1062717 (=> (not res!1459178) (not e!2232898))))

(assert (=> d!1062717 (= res!1459178 ((_ is Cons!37961) call!260760))))

(assert (=> d!1062717 (= (contains!7319 call!260760 lt!1241038) lt!1241365)))

(declare-fun b!3608122 () Bool)

(declare-fun e!2232897 () Bool)

(assert (=> b!3608122 (= e!2232898 e!2232897)))

(declare-fun res!1459177 () Bool)

(assert (=> b!3608122 (=> res!1459177 e!2232897)))

(assert (=> b!3608122 (= res!1459177 (= (h!43381 call!260760) lt!1241038))))

(declare-fun b!3608123 () Bool)

(assert (=> b!3608123 (= e!2232897 (contains!7319 (t!293016 call!260760) lt!1241038))))

(assert (= (and d!1062717 res!1459178) b!3608122))

(assert (= (and b!3608122 (not res!1459177)) b!3608123))

(declare-fun m!4105421 () Bool)

(assert (=> d!1062717 m!4105421))

(declare-fun m!4105423 () Bool)

(assert (=> d!1062717 m!4105423))

(declare-fun m!4105425 () Bool)

(assert (=> b!3608123 m!4105425))

(assert (=> bm!260757 d!1062717))

(declare-fun d!1062719 () Bool)

(assert (=> d!1062719 (= (inv!51328 (tag!6330 rule!403)) (= (mod (str.len (value!180857 (tag!6330 rule!403))) 2) 0))))

(assert (=> b!3607469 d!1062719))

(declare-fun d!1062721 () Bool)

(declare-fun res!1459179 () Bool)

(declare-fun e!2232899 () Bool)

(assert (=> d!1062721 (=> (not res!1459179) (not e!2232899))))

(assert (=> d!1062721 (= res!1459179 (semiInverseModEq!2393 (toChars!7771 (transformation!5628 rule!403)) (toValue!7912 (transformation!5628 rule!403))))))

(assert (=> d!1062721 (= (inv!51331 (transformation!5628 rule!403)) e!2232899)))

(declare-fun b!3608124 () Bool)

(assert (=> b!3608124 (= e!2232899 (equivClasses!2292 (toChars!7771 (transformation!5628 rule!403)) (toValue!7912 (transformation!5628 rule!403))))))

(assert (= (and d!1062721 res!1459179) b!3608124))

(declare-fun m!4105427 () Bool)

(assert (=> d!1062721 m!4105427))

(declare-fun m!4105429 () Bool)

(assert (=> b!3608124 m!4105429))

(assert (=> b!3607469 d!1062721))

(declare-fun d!1062723 () Bool)

(declare-fun res!1459184 () Bool)

(declare-fun e!2232904 () Bool)

(assert (=> d!1062723 (=> res!1459184 e!2232904)))

(assert (=> d!1062723 (= res!1459184 (not ((_ is Cons!37963) rules!3307)))))

(assert (=> d!1062723 (= (sepAndNonSepRulesDisjointChars!1798 rules!3307 rules!3307) e!2232904)))

(declare-fun b!3608129 () Bool)

(declare-fun e!2232905 () Bool)

(assert (=> b!3608129 (= e!2232904 e!2232905)))

(declare-fun res!1459185 () Bool)

(assert (=> b!3608129 (=> (not res!1459185) (not e!2232905))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!819 (Rule!11056 List!38087) Bool)

(assert (=> b!3608129 (= res!1459185 (ruleDisjointCharsFromAllFromOtherType!819 (h!43383 rules!3307) rules!3307))))

(declare-fun b!3608130 () Bool)

(assert (=> b!3608130 (= e!2232905 (sepAndNonSepRulesDisjointChars!1798 rules!3307 (t!293018 rules!3307)))))

(assert (= (and d!1062723 (not res!1459184)) b!3608129))

(assert (= (and b!3608129 res!1459185) b!3608130))

(declare-fun m!4105431 () Bool)

(assert (=> b!3608129 m!4105431))

(declare-fun m!4105433 () Bool)

(assert (=> b!3608130 m!4105433))

(assert (=> b!3607447 d!1062723))

(declare-fun d!1062725 () Bool)

(declare-fun lt!1241368 () Int)

(assert (=> d!1062725 (>= lt!1241368 0)))

(declare-fun e!2232908 () Int)

(assert (=> d!1062725 (= lt!1241368 e!2232908)))

(declare-fun c!624271 () Bool)

(assert (=> d!1062725 (= c!624271 ((_ is Nil!37961) lt!1241029))))

(assert (=> d!1062725 (= (size!28939 lt!1241029) lt!1241368)))

(declare-fun b!3608135 () Bool)

(assert (=> b!3608135 (= e!2232908 0)))

(declare-fun b!3608136 () Bool)

(assert (=> b!3608136 (= e!2232908 (+ 1 (size!28939 (t!293016 lt!1241029))))))

(assert (= (and d!1062725 c!624271) b!3608135))

(assert (= (and d!1062725 (not c!624271)) b!3608136))

(declare-fun m!4105435 () Bool)

(assert (=> b!3608136 m!4105435))

(assert (=> b!3607468 d!1062725))

(declare-fun d!1062727 () Bool)

(assert (=> d!1062727 (= (apply!9134 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))) (seqFromList!4181 lt!1241029)) (dynLambda!16420 (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039)))) (seqFromList!4181 lt!1241029)))))

(declare-fun b_lambda!106769 () Bool)

(assert (=> (not b_lambda!106769) (not d!1062727)))

(declare-fun t!293120 () Bool)

(declare-fun tb!206797 () Bool)

(assert (=> (and b!3607464 (= (toValue!7912 (transformation!5628 rule!403)) (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) t!293120) tb!206797))

(declare-fun result!252032 () Bool)

(assert (=> tb!206797 (= result!252032 (inv!21 (dynLambda!16420 (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039)))) (seqFromList!4181 lt!1241029))))))

(declare-fun m!4105437 () Bool)

(assert (=> tb!206797 m!4105437))

(assert (=> d!1062727 t!293120))

(declare-fun b_and!262903 () Bool)

(assert (= b_and!262887 (and (=> t!293120 result!252032) b_and!262903)))

(declare-fun tb!206799 () Bool)

(declare-fun t!293122 () Bool)

(assert (=> (and b!3607451 (= (toValue!7912 (transformation!5628 anOtherTypeRule!33)) (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) t!293122) tb!206799))

(declare-fun result!252034 () Bool)

(assert (= result!252034 result!252032))

(assert (=> d!1062727 t!293122))

(declare-fun b_and!262905 () Bool)

(assert (= b_and!262889 (and (=> t!293122 result!252034) b_and!262905)))

(declare-fun tb!206801 () Bool)

(declare-fun t!293124 () Bool)

(assert (=> (and b!3607465 (= (toValue!7912 (transformation!5628 (rule!8374 token!511))) (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) t!293124) tb!206801))

(declare-fun result!252036 () Bool)

(assert (= result!252036 result!252032))

(assert (=> d!1062727 t!293124))

(declare-fun b_and!262907 () Bool)

(assert (= b_and!262891 (and (=> t!293124 result!252036) b_and!262907)))

(declare-fun tb!206803 () Bool)

(declare-fun t!293126 () Bool)

(assert (=> (and b!3607440 (= (toValue!7912 (transformation!5628 (h!43383 rules!3307))) (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) t!293126) tb!206803))

(declare-fun result!252038 () Bool)

(assert (= result!252038 result!252032))

(assert (=> d!1062727 t!293126))

(declare-fun b_and!262909 () Bool)

(assert (= b_and!262893 (and (=> t!293126 result!252038) b_and!262909)))

(assert (=> d!1062727 m!4104531))

(declare-fun m!4105439 () Bool)

(assert (=> d!1062727 m!4105439))

(assert (=> b!3607468 d!1062727))

(declare-fun d!1062729 () Bool)

(assert (=> d!1062729 (= (maxPrefixOneRule!1895 thiss!23823 (rule!8374 (_1!22062 lt!1241039)) lt!1241053) (Some!7886 (tuple2!37857 (Token!10623 (apply!9134 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))) (seqFromList!4181 lt!1241029)) (rule!8374 (_1!22062 lt!1241039)) (size!28939 lt!1241029) lt!1241029) (_2!22062 lt!1241039))))))

(declare-fun lt!1241371 () Unit!54082)

(declare-fun choose!21079 (LexerInterface!5217 List!38087 List!38085 List!38085 List!38085 Rule!11056) Unit!54082)

(assert (=> d!1062729 (= lt!1241371 (choose!21079 thiss!23823 rules!3307 lt!1241029 lt!1241053 (_2!22062 lt!1241039) (rule!8374 (_1!22062 lt!1241039))))))

(assert (=> d!1062729 (not (isEmpty!22411 rules!3307))))

(assert (=> d!1062729 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!967 thiss!23823 rules!3307 lt!1241029 lt!1241053 (_2!22062 lt!1241039) (rule!8374 (_1!22062 lt!1241039))) lt!1241371)))

(declare-fun bs!570776 () Bool)

(assert (= bs!570776 d!1062729))

(assert (=> bs!570776 m!4104529))

(assert (=> bs!570776 m!4104531))

(assert (=> bs!570776 m!4104533))

(assert (=> bs!570776 m!4104535))

(assert (=> bs!570776 m!4104611))

(declare-fun m!4105441 () Bool)

(assert (=> bs!570776 m!4105441))

(assert (=> bs!570776 m!4104531))

(assert (=> b!3607468 d!1062729))

(declare-fun d!1062731 () Bool)

(assert (=> d!1062731 (= (seqFromList!4181 lt!1241029) (fromListB!1933 lt!1241029))))

(declare-fun bs!570777 () Bool)

(assert (= bs!570777 d!1062731))

(declare-fun m!4105443 () Bool)

(assert (=> bs!570777 m!4105443))

(assert (=> b!3607468 d!1062731))

(declare-fun b!3608155 () Bool)

(declare-fun res!1459200 () Bool)

(declare-fun e!2232919 () Bool)

(assert (=> b!3608155 (=> (not res!1459200) (not e!2232919))))

(declare-fun lt!1241385 () Option!7887)

(assert (=> b!3608155 (= res!1459200 (= (++!9444 (list!13996 (charsOf!3642 (_1!22062 (get!12310 lt!1241385)))) (_2!22062 (get!12310 lt!1241385))) lt!1241053))))

(declare-fun b!3608156 () Bool)

(assert (=> b!3608156 (= e!2232919 (= (size!28937 (_1!22062 (get!12310 lt!1241385))) (size!28939 (originalCharacters!6342 (_1!22062 (get!12310 lt!1241385))))))))

(declare-fun b!3608157 () Bool)

(declare-fun res!1459202 () Bool)

(assert (=> b!3608157 (=> (not res!1459202) (not e!2232919))))

(assert (=> b!3608157 (= res!1459202 (= (value!180858 (_1!22062 (get!12310 lt!1241385))) (apply!9134 (transformation!5628 (rule!8374 (_1!22062 (get!12310 lt!1241385)))) (seqFromList!4181 (originalCharacters!6342 (_1!22062 (get!12310 lt!1241385)))))))))

(declare-fun b!3608158 () Bool)

(declare-fun e!2232921 () Option!7887)

(assert (=> b!3608158 (= e!2232921 None!7886)))

(declare-fun b!3608159 () Bool)

(declare-fun res!1459205 () Bool)

(assert (=> b!3608159 (=> (not res!1459205) (not e!2232919))))

(assert (=> b!3608159 (= res!1459205 (< (size!28939 (_2!22062 (get!12310 lt!1241385))) (size!28939 lt!1241053)))))

(declare-fun d!1062733 () Bool)

(declare-fun e!2232920 () Bool)

(assert (=> d!1062733 e!2232920))

(declare-fun res!1459204 () Bool)

(assert (=> d!1062733 (=> res!1459204 e!2232920)))

(assert (=> d!1062733 (= res!1459204 (isEmpty!22413 lt!1241385))))

(assert (=> d!1062733 (= lt!1241385 e!2232921)))

(declare-fun c!624274 () Bool)

(declare-datatypes ((tuple2!37864 0))(
  ( (tuple2!37865 (_1!22066 List!38085) (_2!22066 List!38085)) )
))
(declare-fun lt!1241384 () tuple2!37864)

(assert (=> d!1062733 (= c!624274 (isEmpty!22410 (_1!22066 lt!1241384)))))

(declare-fun findLongestMatch!916 (Regex!10387 List!38085) tuple2!37864)

(assert (=> d!1062733 (= lt!1241384 (findLongestMatch!916 (regex!5628 (rule!8374 (_1!22062 lt!1241039))) lt!1241053))))

(assert (=> d!1062733 (ruleValid!1893 thiss!23823 (rule!8374 (_1!22062 lt!1241039)))))

(assert (=> d!1062733 (= (maxPrefixOneRule!1895 thiss!23823 (rule!8374 (_1!22062 lt!1241039)) lt!1241053) lt!1241385)))

(declare-fun b!3608160 () Bool)

(declare-fun res!1459206 () Bool)

(assert (=> b!3608160 (=> (not res!1459206) (not e!2232919))))

(assert (=> b!3608160 (= res!1459206 (= (rule!8374 (_1!22062 (get!12310 lt!1241385))) (rule!8374 (_1!22062 lt!1241039))))))

(declare-fun b!3608161 () Bool)

(declare-fun e!2232918 () Bool)

(declare-fun findLongestMatchInner!1001 (Regex!10387 List!38085 Int List!38085 List!38085 Int) tuple2!37864)

(assert (=> b!3608161 (= e!2232918 (matchR!4956 (regex!5628 (rule!8374 (_1!22062 lt!1241039))) (_1!22066 (findLongestMatchInner!1001 (regex!5628 (rule!8374 (_1!22062 lt!1241039))) Nil!37961 (size!28939 Nil!37961) lt!1241053 lt!1241053 (size!28939 lt!1241053)))))))

(declare-fun b!3608162 () Bool)

(assert (=> b!3608162 (= e!2232920 e!2232919)))

(declare-fun res!1459201 () Bool)

(assert (=> b!3608162 (=> (not res!1459201) (not e!2232919))))

(assert (=> b!3608162 (= res!1459201 (matchR!4956 (regex!5628 (rule!8374 (_1!22062 lt!1241039))) (list!13996 (charsOf!3642 (_1!22062 (get!12310 lt!1241385))))))))

(declare-fun b!3608163 () Bool)

(assert (=> b!3608163 (= e!2232921 (Some!7886 (tuple2!37857 (Token!10623 (apply!9134 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))) (seqFromList!4181 (_1!22066 lt!1241384))) (rule!8374 (_1!22062 lt!1241039)) (size!28938 (seqFromList!4181 (_1!22066 lt!1241384))) (_1!22066 lt!1241384)) (_2!22066 lt!1241384))))))

(declare-fun lt!1241383 () Unit!54082)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!974 (Regex!10387 List!38085) Unit!54082)

(assert (=> b!3608163 (= lt!1241383 (longestMatchIsAcceptedByMatchOrIsEmpty!974 (regex!5628 (rule!8374 (_1!22062 lt!1241039))) lt!1241053))))

(declare-fun res!1459203 () Bool)

(assert (=> b!3608163 (= res!1459203 (isEmpty!22410 (_1!22066 (findLongestMatchInner!1001 (regex!5628 (rule!8374 (_1!22062 lt!1241039))) Nil!37961 (size!28939 Nil!37961) lt!1241053 lt!1241053 (size!28939 lt!1241053)))))))

(assert (=> b!3608163 (=> res!1459203 e!2232918)))

(assert (=> b!3608163 e!2232918))

(declare-fun lt!1241382 () Unit!54082)

(assert (=> b!3608163 (= lt!1241382 lt!1241383)))

(declare-fun lt!1241386 () Unit!54082)

(assert (=> b!3608163 (= lt!1241386 (lemmaSemiInverse!1385 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))) (seqFromList!4181 (_1!22066 lt!1241384))))))

(assert (= (and d!1062733 c!624274) b!3608158))

(assert (= (and d!1062733 (not c!624274)) b!3608163))

(assert (= (and b!3608163 (not res!1459203)) b!3608161))

(assert (= (and d!1062733 (not res!1459204)) b!3608162))

(assert (= (and b!3608162 res!1459201) b!3608155))

(assert (= (and b!3608155 res!1459200) b!3608159))

(assert (= (and b!3608159 res!1459205) b!3608160))

(assert (= (and b!3608160 res!1459206) b!3608157))

(assert (= (and b!3608157 res!1459202) b!3608156))

(declare-fun m!4105445 () Bool)

(assert (=> b!3608163 m!4105445))

(assert (=> b!3608163 m!4105009))

(declare-fun m!4105447 () Bool)

(assert (=> b!3608163 m!4105447))

(declare-fun m!4105449 () Bool)

(assert (=> b!3608163 m!4105449))

(declare-fun m!4105451 () Bool)

(assert (=> b!3608163 m!4105451))

(assert (=> b!3608163 m!4105449))

(declare-fun m!4105453 () Bool)

(assert (=> b!3608163 m!4105453))

(assert (=> b!3608163 m!4105449))

(declare-fun m!4105455 () Bool)

(assert (=> b!3608163 m!4105455))

(declare-fun m!4105457 () Bool)

(assert (=> b!3608163 m!4105457))

(assert (=> b!3608163 m!4105009))

(assert (=> b!3608163 m!4105445))

(assert (=> b!3608163 m!4105449))

(declare-fun m!4105459 () Bool)

(assert (=> b!3608163 m!4105459))

(declare-fun m!4105461 () Bool)

(assert (=> b!3608160 m!4105461))

(assert (=> b!3608156 m!4105461))

(declare-fun m!4105463 () Bool)

(assert (=> b!3608156 m!4105463))

(assert (=> b!3608161 m!4105445))

(assert (=> b!3608161 m!4105009))

(assert (=> b!3608161 m!4105445))

(assert (=> b!3608161 m!4105009))

(assert (=> b!3608161 m!4105447))

(declare-fun m!4105465 () Bool)

(assert (=> b!3608161 m!4105465))

(declare-fun m!4105467 () Bool)

(assert (=> d!1062733 m!4105467))

(declare-fun m!4105469 () Bool)

(assert (=> d!1062733 m!4105469))

(declare-fun m!4105471 () Bool)

(assert (=> d!1062733 m!4105471))

(declare-fun m!4105473 () Bool)

(assert (=> d!1062733 m!4105473))

(assert (=> b!3608159 m!4105461))

(declare-fun m!4105475 () Bool)

(assert (=> b!3608159 m!4105475))

(assert (=> b!3608159 m!4105009))

(assert (=> b!3608162 m!4105461))

(declare-fun m!4105477 () Bool)

(assert (=> b!3608162 m!4105477))

(assert (=> b!3608162 m!4105477))

(declare-fun m!4105479 () Bool)

(assert (=> b!3608162 m!4105479))

(assert (=> b!3608162 m!4105479))

(declare-fun m!4105481 () Bool)

(assert (=> b!3608162 m!4105481))

(assert (=> b!3608157 m!4105461))

(declare-fun m!4105483 () Bool)

(assert (=> b!3608157 m!4105483))

(assert (=> b!3608157 m!4105483))

(declare-fun m!4105485 () Bool)

(assert (=> b!3608157 m!4105485))

(assert (=> b!3608155 m!4105461))

(assert (=> b!3608155 m!4105477))

(assert (=> b!3608155 m!4105477))

(assert (=> b!3608155 m!4105479))

(assert (=> b!3608155 m!4105479))

(declare-fun m!4105487 () Bool)

(assert (=> b!3608155 m!4105487))

(assert (=> b!3607468 d!1062733))

(declare-fun d!1062735 () Bool)

(assert (=> d!1062735 (= (_2!22062 lt!1241039) lt!1241026)))

(declare-fun lt!1241389 () Unit!54082)

(declare-fun choose!21080 (List!38085 List!38085 List!38085 List!38085 List!38085) Unit!54082)

(assert (=> d!1062735 (= lt!1241389 (choose!21080 lt!1241029 (_2!22062 lt!1241039) lt!1241029 lt!1241026 lt!1241053))))

(assert (=> d!1062735 (isPrefix!2991 lt!1241029 lt!1241053)))

(assert (=> d!1062735 (= (lemmaSamePrefixThenSameSuffix!1346 lt!1241029 (_2!22062 lt!1241039) lt!1241029 lt!1241026 lt!1241053) lt!1241389)))

(declare-fun bs!570778 () Bool)

(assert (= bs!570778 d!1062735))

(declare-fun m!4105489 () Bool)

(assert (=> bs!570778 m!4105489))

(assert (=> bs!570778 m!4104599))

(assert (=> b!3607468 d!1062735))

(declare-fun d!1062737 () Bool)

(declare-fun lt!1241392 () List!38085)

(assert (=> d!1062737 (= (++!9444 lt!1241029 lt!1241392) lt!1241053)))

(declare-fun e!2232924 () List!38085)

(assert (=> d!1062737 (= lt!1241392 e!2232924)))

(declare-fun c!624277 () Bool)

(assert (=> d!1062737 (= c!624277 ((_ is Cons!37961) lt!1241029))))

(assert (=> d!1062737 (>= (size!28939 lt!1241053) (size!28939 lt!1241029))))

(assert (=> d!1062737 (= (getSuffix!1566 lt!1241053 lt!1241029) lt!1241392)))

(declare-fun b!3608168 () Bool)

(assert (=> b!3608168 (= e!2232924 (getSuffix!1566 (tail!5593 lt!1241053) (t!293016 lt!1241029)))))

(declare-fun b!3608169 () Bool)

(assert (=> b!3608169 (= e!2232924 lt!1241053)))

(assert (= (and d!1062737 c!624277) b!3608168))

(assert (= (and d!1062737 (not c!624277)) b!3608169))

(declare-fun m!4105491 () Bool)

(assert (=> d!1062737 m!4105491))

(assert (=> d!1062737 m!4105009))

(assert (=> d!1062737 m!4104529))

(assert (=> b!3608168 m!4105005))

(assert (=> b!3608168 m!4105005))

(declare-fun m!4105493 () Bool)

(assert (=> b!3608168 m!4105493))

(assert (=> b!3607468 d!1062737))

(declare-fun d!1062739 () Bool)

(assert (=> d!1062739 (= (inv!51328 (tag!6330 (h!43383 rules!3307))) (= (mod (str.len (value!180857 (tag!6330 (h!43383 rules!3307)))) 2) 0))))

(assert (=> b!3607448 d!1062739))

(declare-fun d!1062741 () Bool)

(declare-fun res!1459207 () Bool)

(declare-fun e!2232925 () Bool)

(assert (=> d!1062741 (=> (not res!1459207) (not e!2232925))))

(assert (=> d!1062741 (= res!1459207 (semiInverseModEq!2393 (toChars!7771 (transformation!5628 (h!43383 rules!3307))) (toValue!7912 (transformation!5628 (h!43383 rules!3307)))))))

(assert (=> d!1062741 (= (inv!51331 (transformation!5628 (h!43383 rules!3307))) e!2232925)))

(declare-fun b!3608170 () Bool)

(assert (=> b!3608170 (= e!2232925 (equivClasses!2292 (toChars!7771 (transformation!5628 (h!43383 rules!3307))) (toValue!7912 (transformation!5628 (h!43383 rules!3307)))))))

(assert (= (and d!1062741 res!1459207) b!3608170))

(declare-fun m!4105495 () Bool)

(assert (=> d!1062741 m!4105495))

(declare-fun m!4105497 () Bool)

(assert (=> b!3608170 m!4105497))

(assert (=> b!3607448 d!1062741))

(declare-fun d!1062743 () Bool)

(declare-fun lt!1241393 () Bool)

(assert (=> d!1062743 (= lt!1241393 (select (content!5428 lt!1241049) lt!1241040))))

(declare-fun e!2232927 () Bool)

(assert (=> d!1062743 (= lt!1241393 e!2232927)))

(declare-fun res!1459209 () Bool)

(assert (=> d!1062743 (=> (not res!1459209) (not e!2232927))))

(assert (=> d!1062743 (= res!1459209 ((_ is Cons!37961) lt!1241049))))

(assert (=> d!1062743 (= (contains!7319 lt!1241049 lt!1241040) lt!1241393)))

(declare-fun b!3608171 () Bool)

(declare-fun e!2232926 () Bool)

(assert (=> b!3608171 (= e!2232927 e!2232926)))

(declare-fun res!1459208 () Bool)

(assert (=> b!3608171 (=> res!1459208 e!2232926)))

(assert (=> b!3608171 (= res!1459208 (= (h!43381 lt!1241049) lt!1241040))))

(declare-fun b!3608172 () Bool)

(assert (=> b!3608172 (= e!2232926 (contains!7319 (t!293016 lt!1241049) lt!1241040))))

(assert (= (and d!1062743 res!1459209) b!3608171))

(assert (= (and b!3608171 (not res!1459208)) b!3608172))

(declare-fun m!4105499 () Bool)

(assert (=> d!1062743 m!4105499))

(declare-fun m!4105501 () Bool)

(assert (=> d!1062743 m!4105501))

(declare-fun m!4105503 () Bool)

(assert (=> b!3608172 m!4105503))

(assert (=> b!3607466 d!1062743))

(declare-fun d!1062745 () Bool)

(assert (=> d!1062745 (= (head!7582 suffix!1395) (h!43381 suffix!1395))))

(assert (=> b!3607466 d!1062745))

(declare-fun b!3608173 () Bool)

(declare-fun e!2232931 () List!38085)

(assert (=> b!3608173 (= e!2232931 (Cons!37961 (c!624148 (regex!5628 rule!403)) Nil!37961))))

(declare-fun bm!260808 () Bool)

(declare-fun call!260813 () List!38085)

(declare-fun call!260814 () List!38085)

(assert (=> bm!260808 (= call!260813 call!260814)))

(declare-fun b!3608174 () Bool)

(declare-fun e!2232928 () List!38085)

(declare-fun call!260815 () List!38085)

(assert (=> b!3608174 (= e!2232928 call!260815)))

(declare-fun b!3608175 () Bool)

(declare-fun c!624279 () Bool)

(assert (=> b!3608175 (= c!624279 ((_ is Star!10387) (regex!5628 rule!403)))))

(declare-fun e!2232930 () List!38085)

(assert (=> b!3608175 (= e!2232931 e!2232930)))

(declare-fun bm!260809 () Bool)

(declare-fun c!624281 () Bool)

(declare-fun call!260816 () List!38085)

(assert (=> bm!260809 (= call!260815 (++!9444 (ite c!624281 call!260813 call!260816) (ite c!624281 call!260816 call!260813)))))

(declare-fun b!3608176 () Bool)

(declare-fun e!2232929 () List!38085)

(assert (=> b!3608176 (= e!2232929 Nil!37961)))

(declare-fun b!3608177 () Bool)

(assert (=> b!3608177 (= e!2232930 call!260814)))

(declare-fun b!3608178 () Bool)

(assert (=> b!3608178 (= e!2232928 call!260815)))

(declare-fun b!3608179 () Bool)

(assert (=> b!3608179 (= e!2232929 e!2232931)))

(declare-fun c!624280 () Bool)

(assert (=> b!3608179 (= c!624280 ((_ is ElementMatch!10387) (regex!5628 rule!403)))))

(declare-fun b!3608180 () Bool)

(assert (=> b!3608180 (= e!2232930 e!2232928)))

(assert (=> b!3608180 (= c!624281 ((_ is Union!10387) (regex!5628 rule!403)))))

(declare-fun bm!260811 () Bool)

(assert (=> bm!260811 (= call!260814 (usedCharacters!842 (ite c!624279 (reg!10716 (regex!5628 rule!403)) (ite c!624281 (regOne!21287 (regex!5628 rule!403)) (regTwo!21286 (regex!5628 rule!403))))))))

(declare-fun d!1062747 () Bool)

(declare-fun c!624278 () Bool)

(assert (=> d!1062747 (= c!624278 (or ((_ is EmptyExpr!10387) (regex!5628 rule!403)) ((_ is EmptyLang!10387) (regex!5628 rule!403))))))

(assert (=> d!1062747 (= (usedCharacters!842 (regex!5628 rule!403)) e!2232929)))

(declare-fun bm!260810 () Bool)

(assert (=> bm!260810 (= call!260816 (usedCharacters!842 (ite c!624281 (regTwo!21287 (regex!5628 rule!403)) (regOne!21286 (regex!5628 rule!403)))))))

(assert (= (and d!1062747 c!624278) b!3608176))

(assert (= (and d!1062747 (not c!624278)) b!3608179))

(assert (= (and b!3608179 c!624280) b!3608173))

(assert (= (and b!3608179 (not c!624280)) b!3608175))

(assert (= (and b!3608175 c!624279) b!3608177))

(assert (= (and b!3608175 (not c!624279)) b!3608180))

(assert (= (and b!3608180 c!624281) b!3608178))

(assert (= (and b!3608180 (not c!624281)) b!3608174))

(assert (= (or b!3608178 b!3608174) bm!260808))

(assert (= (or b!3608178 b!3608174) bm!260810))

(assert (= (or b!3608178 b!3608174) bm!260809))

(assert (= (or b!3608177 bm!260808) bm!260811))

(declare-fun m!4105505 () Bool)

(assert (=> bm!260809 m!4105505))

(declare-fun m!4105507 () Bool)

(assert (=> bm!260811 m!4105507))

(declare-fun m!4105509 () Bool)

(assert (=> bm!260810 m!4105509))

(assert (=> b!3607466 d!1062747))

(declare-fun d!1062749 () Bool)

(assert (=> d!1062749 (not (contains!7319 (usedCharacters!842 (regex!5628 (rule!8374 (_1!22062 lt!1241039)))) lt!1241038))))

(declare-fun lt!1241394 () Unit!54082)

(assert (=> d!1062749 (= lt!1241394 (choose!21075 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8374 (_1!22062 lt!1241039)) lt!1241038))))

(assert (=> d!1062749 (rulesInvariant!4614 thiss!23823 rules!3307)))

(assert (=> d!1062749 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!216 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8374 (_1!22062 lt!1241039)) lt!1241038) lt!1241394)))

(declare-fun bs!570779 () Bool)

(assert (= bs!570779 d!1062749))

(assert (=> bs!570779 m!4104555))

(assert (=> bs!570779 m!4104555))

(assert (=> bs!570779 m!4105099))

(declare-fun m!4105511 () Bool)

(assert (=> bs!570779 m!4105511))

(assert (=> bs!570779 m!4104495))

(assert (=> b!3607446 d!1062749))

(declare-fun b!3608191 () Bool)

(declare-fun e!2232939 () Bool)

(declare-fun inv!16 (TokenValue!5858) Bool)

(assert (=> b!3608191 (= e!2232939 (inv!16 (value!180858 token!511)))))

(declare-fun d!1062751 () Bool)

(declare-fun c!624287 () Bool)

(assert (=> d!1062751 (= c!624287 ((_ is IntegerValue!17574) (value!180858 token!511)))))

(assert (=> d!1062751 (= (inv!21 (value!180858 token!511)) e!2232939)))

(declare-fun b!3608192 () Bool)

(declare-fun e!2232940 () Bool)

(declare-fun inv!15 (TokenValue!5858) Bool)

(assert (=> b!3608192 (= e!2232940 (inv!15 (value!180858 token!511)))))

(declare-fun b!3608193 () Bool)

(declare-fun res!1459212 () Bool)

(assert (=> b!3608193 (=> res!1459212 e!2232940)))

(assert (=> b!3608193 (= res!1459212 (not ((_ is IntegerValue!17576) (value!180858 token!511))))))

(declare-fun e!2232938 () Bool)

(assert (=> b!3608193 (= e!2232938 e!2232940)))

(declare-fun b!3608194 () Bool)

(assert (=> b!3608194 (= e!2232939 e!2232938)))

(declare-fun c!624286 () Bool)

(assert (=> b!3608194 (= c!624286 ((_ is IntegerValue!17575) (value!180858 token!511)))))

(declare-fun b!3608195 () Bool)

(declare-fun inv!17 (TokenValue!5858) Bool)

(assert (=> b!3608195 (= e!2232938 (inv!17 (value!180858 token!511)))))

(assert (= (and d!1062751 c!624287) b!3608191))

(assert (= (and d!1062751 (not c!624287)) b!3608194))

(assert (= (and b!3608194 c!624286) b!3608195))

(assert (= (and b!3608194 (not c!624286)) b!3608193))

(assert (= (and b!3608193 (not res!1459212)) b!3608192))

(declare-fun m!4105513 () Bool)

(assert (=> b!3608191 m!4105513))

(declare-fun m!4105515 () Bool)

(assert (=> b!3608192 m!4105515))

(declare-fun m!4105517 () Bool)

(assert (=> b!3608195 m!4105517))

(assert (=> b!3607445 d!1062751))

(declare-fun d!1062753 () Bool)

(declare-fun lt!1241395 () Bool)

(assert (=> d!1062753 (= lt!1241395 (select (content!5428 (usedCharacters!842 (regex!5628 anOtherTypeRule!33))) lt!1241040))))

(declare-fun e!2232942 () Bool)

(assert (=> d!1062753 (= lt!1241395 e!2232942)))

(declare-fun res!1459214 () Bool)

(assert (=> d!1062753 (=> (not res!1459214) (not e!2232942))))

(assert (=> d!1062753 (= res!1459214 ((_ is Cons!37961) (usedCharacters!842 (regex!5628 anOtherTypeRule!33))))))

(assert (=> d!1062753 (= (contains!7319 (usedCharacters!842 (regex!5628 anOtherTypeRule!33)) lt!1241040) lt!1241395)))

(declare-fun b!3608196 () Bool)

(declare-fun e!2232941 () Bool)

(assert (=> b!3608196 (= e!2232942 e!2232941)))

(declare-fun res!1459213 () Bool)

(assert (=> b!3608196 (=> res!1459213 e!2232941)))

(assert (=> b!3608196 (= res!1459213 (= (h!43381 (usedCharacters!842 (regex!5628 anOtherTypeRule!33))) lt!1241040))))

(declare-fun b!3608197 () Bool)

(assert (=> b!3608197 (= e!2232941 (contains!7319 (t!293016 (usedCharacters!842 (regex!5628 anOtherTypeRule!33))) lt!1241040))))

(assert (= (and d!1062753 res!1459214) b!3608196))

(assert (= (and b!3608196 (not res!1459213)) b!3608197))

(assert (=> d!1062753 m!4104523))

(declare-fun m!4105519 () Bool)

(assert (=> d!1062753 m!4105519))

(declare-fun m!4105521 () Bool)

(assert (=> d!1062753 m!4105521))

(declare-fun m!4105523 () Bool)

(assert (=> b!3608197 m!4105523))

(assert (=> b!3607443 d!1062753))

(declare-fun b!3608198 () Bool)

(declare-fun e!2232946 () List!38085)

(assert (=> b!3608198 (= e!2232946 (Cons!37961 (c!624148 (regex!5628 anOtherTypeRule!33)) Nil!37961))))

(declare-fun bm!260812 () Bool)

(declare-fun call!260817 () List!38085)

(declare-fun call!260818 () List!38085)

(assert (=> bm!260812 (= call!260817 call!260818)))

(declare-fun b!3608199 () Bool)

(declare-fun e!2232943 () List!38085)

(declare-fun call!260819 () List!38085)

(assert (=> b!3608199 (= e!2232943 call!260819)))

(declare-fun b!3608200 () Bool)

(declare-fun c!624289 () Bool)

(assert (=> b!3608200 (= c!624289 ((_ is Star!10387) (regex!5628 anOtherTypeRule!33)))))

(declare-fun e!2232945 () List!38085)

(assert (=> b!3608200 (= e!2232946 e!2232945)))

(declare-fun bm!260813 () Bool)

(declare-fun c!624291 () Bool)

(declare-fun call!260820 () List!38085)

(assert (=> bm!260813 (= call!260819 (++!9444 (ite c!624291 call!260817 call!260820) (ite c!624291 call!260820 call!260817)))))

(declare-fun b!3608201 () Bool)

(declare-fun e!2232944 () List!38085)

(assert (=> b!3608201 (= e!2232944 Nil!37961)))

(declare-fun b!3608202 () Bool)

(assert (=> b!3608202 (= e!2232945 call!260818)))

(declare-fun b!3608203 () Bool)

(assert (=> b!3608203 (= e!2232943 call!260819)))

(declare-fun b!3608204 () Bool)

(assert (=> b!3608204 (= e!2232944 e!2232946)))

(declare-fun c!624290 () Bool)

(assert (=> b!3608204 (= c!624290 ((_ is ElementMatch!10387) (regex!5628 anOtherTypeRule!33)))))

(declare-fun b!3608205 () Bool)

(assert (=> b!3608205 (= e!2232945 e!2232943)))

(assert (=> b!3608205 (= c!624291 ((_ is Union!10387) (regex!5628 anOtherTypeRule!33)))))

(declare-fun bm!260815 () Bool)

(assert (=> bm!260815 (= call!260818 (usedCharacters!842 (ite c!624289 (reg!10716 (regex!5628 anOtherTypeRule!33)) (ite c!624291 (regOne!21287 (regex!5628 anOtherTypeRule!33)) (regTwo!21286 (regex!5628 anOtherTypeRule!33))))))))

(declare-fun d!1062755 () Bool)

(declare-fun c!624288 () Bool)

(assert (=> d!1062755 (= c!624288 (or ((_ is EmptyExpr!10387) (regex!5628 anOtherTypeRule!33)) ((_ is EmptyLang!10387) (regex!5628 anOtherTypeRule!33))))))

(assert (=> d!1062755 (= (usedCharacters!842 (regex!5628 anOtherTypeRule!33)) e!2232944)))

(declare-fun bm!260814 () Bool)

(assert (=> bm!260814 (= call!260820 (usedCharacters!842 (ite c!624291 (regTwo!21287 (regex!5628 anOtherTypeRule!33)) (regOne!21286 (regex!5628 anOtherTypeRule!33)))))))

(assert (= (and d!1062755 c!624288) b!3608201))

(assert (= (and d!1062755 (not c!624288)) b!3608204))

(assert (= (and b!3608204 c!624290) b!3608198))

(assert (= (and b!3608204 (not c!624290)) b!3608200))

(assert (= (and b!3608200 c!624289) b!3608202))

(assert (= (and b!3608200 (not c!624289)) b!3608205))

(assert (= (and b!3608205 c!624291) b!3608203))

(assert (= (and b!3608205 (not c!624291)) b!3608199))

(assert (= (or b!3608203 b!3608199) bm!260812))

(assert (= (or b!3608203 b!3608199) bm!260814))

(assert (= (or b!3608203 b!3608199) bm!260813))

(assert (= (or b!3608202 bm!260812) bm!260815))

(declare-fun m!4105525 () Bool)

(assert (=> bm!260813 m!4105525))

(declare-fun m!4105527 () Bool)

(assert (=> bm!260815 m!4105527))

(declare-fun m!4105529 () Bool)

(assert (=> bm!260814 m!4105529))

(assert (=> b!3607443 d!1062755))

(assert (=> bm!260756 d!1062611))

(declare-fun d!1062757 () Bool)

(assert (=> d!1062757 (= (isEmpty!22410 suffix!1395) ((_ is Nil!37961) suffix!1395))))

(assert (=> b!3607444 d!1062757))

(declare-fun d!1062759 () Bool)

(declare-fun lt!1241396 () Int)

(assert (=> d!1062759 (= lt!1241396 (size!28939 (list!13996 lt!1241046)))))

(assert (=> d!1062759 (= lt!1241396 (size!28941 (c!624149 lt!1241046)))))

(assert (=> d!1062759 (= (size!28938 lt!1241046) lt!1241396)))

(declare-fun bs!570780 () Bool)

(assert (= bs!570780 d!1062759))

(assert (=> bs!570780 m!4104469))

(assert (=> bs!570780 m!4104469))

(declare-fun m!4105531 () Bool)

(assert (=> bs!570780 m!4105531))

(declare-fun m!4105533 () Bool)

(assert (=> bs!570780 m!4105533))

(assert (=> b!3607463 d!1062759))

(declare-fun d!1062761 () Bool)

(declare-fun lt!1241397 () Bool)

(assert (=> d!1062761 (= lt!1241397 (select (content!5428 lt!1241049) lt!1241038))))

(declare-fun e!2232948 () Bool)

(assert (=> d!1062761 (= lt!1241397 e!2232948)))

(declare-fun res!1459216 () Bool)

(assert (=> d!1062761 (=> (not res!1459216) (not e!2232948))))

(assert (=> d!1062761 (= res!1459216 ((_ is Cons!37961) lt!1241049))))

(assert (=> d!1062761 (= (contains!7319 lt!1241049 lt!1241038) lt!1241397)))

(declare-fun b!3608206 () Bool)

(declare-fun e!2232947 () Bool)

(assert (=> b!3608206 (= e!2232948 e!2232947)))

(declare-fun res!1459215 () Bool)

(assert (=> b!3608206 (=> res!1459215 e!2232947)))

(assert (=> b!3608206 (= res!1459215 (= (h!43381 lt!1241049) lt!1241038))))

(declare-fun b!3608207 () Bool)

(assert (=> b!3608207 (= e!2232947 (contains!7319 (t!293016 lt!1241049) lt!1241038))))

(assert (= (and d!1062761 res!1459216) b!3608206))

(assert (= (and b!3608206 (not res!1459215)) b!3608207))

(assert (=> d!1062761 m!4105499))

(declare-fun m!4105535 () Bool)

(assert (=> d!1062761 m!4105535))

(declare-fun m!4105537 () Bool)

(assert (=> b!3608207 m!4105537))

(assert (=> b!3607463 d!1062761))

(declare-fun d!1062763 () Bool)

(assert (=> d!1062763 (= (head!7582 lt!1241029) (h!43381 lt!1241029))))

(assert (=> b!3607463 d!1062763))

(declare-fun d!1062765 () Bool)

(assert (=> d!1062765 (not (matchR!4956 (regex!5628 (rule!8374 (_1!22062 lt!1241039))) lt!1241029))))

(declare-fun lt!1241398 () Unit!54082)

(assert (=> d!1062765 (= lt!1241398 (choose!21076 (regex!5628 (rule!8374 (_1!22062 lt!1241039))) lt!1241029 lt!1241038))))

(assert (=> d!1062765 (validRegex!4757 (regex!5628 (rule!8374 (_1!22062 lt!1241039))))))

(assert (=> d!1062765 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!612 (regex!5628 (rule!8374 (_1!22062 lt!1241039))) lt!1241029 lt!1241038) lt!1241398)))

(declare-fun bs!570781 () Bool)

(assert (= bs!570781 d!1062765))

(assert (=> bs!570781 m!4104553))

(declare-fun m!4105539 () Bool)

(assert (=> bs!570781 m!4105539))

(assert (=> bs!570781 m!4105109))

(assert (=> bm!260755 d!1062765))

(declare-fun b!3608212 () Bool)

(declare-fun e!2232951 () Bool)

(declare-fun tp!1103073 () Bool)

(assert (=> b!3608212 (= e!2232951 (and tp_is_empty!17857 tp!1103073))))

(assert (=> b!3607436 (= tp!1103005 e!2232951)))

(assert (= (and b!3607436 ((_ is Cons!37961) (t!293016 suffix!1395))) b!3608212))

(declare-fun b!3608223 () Bool)

(declare-fun e!2232954 () Bool)

(assert (=> b!3608223 (= e!2232954 tp_is_empty!17857)))

(declare-fun b!3608226 () Bool)

(declare-fun tp!1103085 () Bool)

(declare-fun tp!1103088 () Bool)

(assert (=> b!3608226 (= e!2232954 (and tp!1103085 tp!1103088))))

(declare-fun b!3608224 () Bool)

(declare-fun tp!1103084 () Bool)

(declare-fun tp!1103087 () Bool)

(assert (=> b!3608224 (= e!2232954 (and tp!1103084 tp!1103087))))

(assert (=> b!3607476 (= tp!1103014 e!2232954)))

(declare-fun b!3608225 () Bool)

(declare-fun tp!1103086 () Bool)

(assert (=> b!3608225 (= e!2232954 tp!1103086)))

(assert (= (and b!3607476 ((_ is ElementMatch!10387) (regex!5628 anOtherTypeRule!33))) b!3608223))

(assert (= (and b!3607476 ((_ is Concat!16246) (regex!5628 anOtherTypeRule!33))) b!3608224))

(assert (= (and b!3607476 ((_ is Star!10387) (regex!5628 anOtherTypeRule!33))) b!3608225))

(assert (= (and b!3607476 ((_ is Union!10387) (regex!5628 anOtherTypeRule!33))) b!3608226))

(declare-fun b!3608227 () Bool)

(declare-fun e!2232955 () Bool)

(assert (=> b!3608227 (= e!2232955 tp_is_empty!17857)))

(declare-fun b!3608230 () Bool)

(declare-fun tp!1103090 () Bool)

(declare-fun tp!1103093 () Bool)

(assert (=> b!3608230 (= e!2232955 (and tp!1103090 tp!1103093))))

(declare-fun b!3608228 () Bool)

(declare-fun tp!1103089 () Bool)

(declare-fun tp!1103092 () Bool)

(assert (=> b!3608228 (= e!2232955 (and tp!1103089 tp!1103092))))

(assert (=> b!3607471 (= tp!1103001 e!2232955)))

(declare-fun b!3608229 () Bool)

(declare-fun tp!1103091 () Bool)

(assert (=> b!3608229 (= e!2232955 tp!1103091)))

(assert (= (and b!3607471 ((_ is ElementMatch!10387) (regex!5628 (rule!8374 token!511)))) b!3608227))

(assert (= (and b!3607471 ((_ is Concat!16246) (regex!5628 (rule!8374 token!511)))) b!3608228))

(assert (= (and b!3607471 ((_ is Star!10387) (regex!5628 (rule!8374 token!511)))) b!3608229))

(assert (= (and b!3607471 ((_ is Union!10387) (regex!5628 (rule!8374 token!511)))) b!3608230))

(declare-fun b!3608241 () Bool)

(declare-fun b_free!93581 () Bool)

(declare-fun b_next!94285 () Bool)

(assert (=> b!3608241 (= b_free!93581 (not b_next!94285))))

(declare-fun tb!206805 () Bool)

(declare-fun t!293129 () Bool)

(assert (=> (and b!3608241 (= (toValue!7912 (transformation!5628 (h!43383 (t!293018 rules!3307)))) (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) t!293129) tb!206805))

(declare-fun result!252046 () Bool)

(assert (= result!252046 result!252024))

(assert (=> d!1062695 t!293129))

(declare-fun t!293131 () Bool)

(declare-fun tb!206807 () Bool)

(assert (=> (and b!3608241 (= (toValue!7912 (transformation!5628 (h!43383 (t!293018 rules!3307)))) (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) t!293131) tb!206807))

(declare-fun result!252048 () Bool)

(assert (= result!252048 result!252014))

(assert (=> d!1062687 t!293131))

(assert (=> d!1062631 t!293131))

(assert (=> d!1062695 t!293131))

(declare-fun t!293133 () Bool)

(declare-fun tb!206809 () Bool)

(assert (=> (and b!3608241 (= (toValue!7912 (transformation!5628 (h!43383 (t!293018 rules!3307)))) (toValue!7912 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) t!293133) tb!206809))

(declare-fun result!252050 () Bool)

(assert (= result!252050 result!252032))

(assert (=> d!1062727 t!293133))

(declare-fun b_and!262911 () Bool)

(declare-fun tp!1103103 () Bool)

(assert (=> b!3608241 (= tp!1103103 (and (=> t!293131 result!252048) (=> t!293133 result!252050) (=> t!293129 result!252046) b_and!262911))))

(declare-fun b_free!93583 () Bool)

(declare-fun b_next!94287 () Bool)

(assert (=> b!3608241 (= b_free!93583 (not b_next!94287))))

(declare-fun tb!206811 () Bool)

(declare-fun t!293135 () Bool)

(assert (=> (and b!3608241 (= (toChars!7771 (transformation!5628 (h!43383 (t!293018 rules!3307)))) (toChars!7771 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) t!293135) tb!206811))

(declare-fun result!252052 () Bool)

(assert (= result!252052 result!251946))

(assert (=> d!1062573 t!293135))

(declare-fun t!293137 () Bool)

(declare-fun tb!206813 () Bool)

(assert (=> (and b!3608241 (= (toChars!7771 (transformation!5628 (h!43383 (t!293018 rules!3307)))) (toChars!7771 (transformation!5628 (rule!8374 token!511)))) t!293137) tb!206813))

(declare-fun result!252054 () Bool)

(assert (= result!252054 result!251956))

(assert (=> b!3607834 t!293137))

(declare-fun tb!206815 () Bool)

(declare-fun t!293139 () Bool)

(assert (=> (and b!3608241 (= (toChars!7771 (transformation!5628 (h!43383 (t!293018 rules!3307)))) (toChars!7771 (transformation!5628 (rule!8374 (_1!22062 lt!1241039))))) t!293139) tb!206815))

(declare-fun result!252056 () Bool)

(assert (= result!252056 result!252006))

(assert (=> d!1062631 t!293139))

(assert (=> d!1062713 t!293137))

(declare-fun tp!1103105 () Bool)

(declare-fun b_and!262913 () Bool)

(assert (=> b!3608241 (= tp!1103105 (and (=> t!293135 result!252052) (=> t!293137 result!252054) (=> t!293139 result!252056) b_and!262913))))

(declare-fun e!2232966 () Bool)

(assert (=> b!3608241 (= e!2232966 (and tp!1103103 tp!1103105))))

(declare-fun e!2232967 () Bool)

(declare-fun tp!1103102 () Bool)

(declare-fun b!3608240 () Bool)

(assert (=> b!3608240 (= e!2232967 (and tp!1103102 (inv!51328 (tag!6330 (h!43383 (t!293018 rules!3307)))) (inv!51331 (transformation!5628 (h!43383 (t!293018 rules!3307)))) e!2232966))))

(declare-fun b!3608239 () Bool)

(declare-fun e!2232964 () Bool)

(declare-fun tp!1103104 () Bool)

(assert (=> b!3608239 (= e!2232964 (and e!2232967 tp!1103104))))

(assert (=> b!3607435 (= tp!1103006 e!2232964)))

(assert (= b!3608240 b!3608241))

(assert (= b!3608239 b!3608240))

(assert (= (and b!3607435 ((_ is Cons!37963) (t!293018 rules!3307))) b!3608239))

(declare-fun m!4105541 () Bool)

(assert (=> b!3608240 m!4105541))

(declare-fun m!4105543 () Bool)

(assert (=> b!3608240 m!4105543))

(declare-fun b!3608242 () Bool)

(declare-fun e!2232968 () Bool)

(declare-fun tp!1103106 () Bool)

(assert (=> b!3608242 (= e!2232968 (and tp_is_empty!17857 tp!1103106))))

(assert (=> b!3607445 (= tp!1103002 e!2232968)))

(assert (= (and b!3607445 ((_ is Cons!37961) (originalCharacters!6342 token!511))) b!3608242))

(declare-fun b!3608243 () Bool)

(declare-fun e!2232969 () Bool)

(assert (=> b!3608243 (= e!2232969 tp_is_empty!17857)))

(declare-fun b!3608246 () Bool)

(declare-fun tp!1103108 () Bool)

(declare-fun tp!1103111 () Bool)

(assert (=> b!3608246 (= e!2232969 (and tp!1103108 tp!1103111))))

(declare-fun b!3608244 () Bool)

(declare-fun tp!1103107 () Bool)

(declare-fun tp!1103110 () Bool)

(assert (=> b!3608244 (= e!2232969 (and tp!1103107 tp!1103110))))

(assert (=> b!3607469 (= tp!1103009 e!2232969)))

(declare-fun b!3608245 () Bool)

(declare-fun tp!1103109 () Bool)

(assert (=> b!3608245 (= e!2232969 tp!1103109)))

(assert (= (and b!3607469 ((_ is ElementMatch!10387) (regex!5628 rule!403))) b!3608243))

(assert (= (and b!3607469 ((_ is Concat!16246) (regex!5628 rule!403))) b!3608244))

(assert (= (and b!3607469 ((_ is Star!10387) (regex!5628 rule!403))) b!3608245))

(assert (= (and b!3607469 ((_ is Union!10387) (regex!5628 rule!403))) b!3608246))

(declare-fun b!3608247 () Bool)

(declare-fun e!2232970 () Bool)

(assert (=> b!3608247 (= e!2232970 tp_is_empty!17857)))

(declare-fun b!3608250 () Bool)

(declare-fun tp!1103113 () Bool)

(declare-fun tp!1103116 () Bool)

(assert (=> b!3608250 (= e!2232970 (and tp!1103113 tp!1103116))))

(declare-fun b!3608248 () Bool)

(declare-fun tp!1103112 () Bool)

(declare-fun tp!1103115 () Bool)

(assert (=> b!3608248 (= e!2232970 (and tp!1103112 tp!1103115))))

(assert (=> b!3607448 (= tp!1103008 e!2232970)))

(declare-fun b!3608249 () Bool)

(declare-fun tp!1103114 () Bool)

(assert (=> b!3608249 (= e!2232970 tp!1103114)))

(assert (= (and b!3607448 ((_ is ElementMatch!10387) (regex!5628 (h!43383 rules!3307)))) b!3608247))

(assert (= (and b!3607448 ((_ is Concat!16246) (regex!5628 (h!43383 rules!3307)))) b!3608248))

(assert (= (and b!3607448 ((_ is Star!10387) (regex!5628 (h!43383 rules!3307)))) b!3608249))

(assert (= (and b!3607448 ((_ is Union!10387) (regex!5628 (h!43383 rules!3307)))) b!3608250))

(declare-fun b_lambda!106771 () Bool)

(assert (= b_lambda!106739 (or (and b!3607451 b_free!93567 (= (toChars!7771 (transformation!5628 anOtherTypeRule!33)) (toChars!7771 (transformation!5628 (rule!8374 token!511))))) (and b!3607464 b_free!93563 (= (toChars!7771 (transformation!5628 rule!403)) (toChars!7771 (transformation!5628 (rule!8374 token!511))))) (and b!3607440 b_free!93575 (= (toChars!7771 (transformation!5628 (h!43383 rules!3307))) (toChars!7771 (transformation!5628 (rule!8374 token!511))))) (and b!3608241 b_free!93583 (= (toChars!7771 (transformation!5628 (h!43383 (t!293018 rules!3307)))) (toChars!7771 (transformation!5628 (rule!8374 token!511))))) (and b!3607465 b_free!93571) b_lambda!106771)))

(declare-fun b_lambda!106773 () Bool)

(assert (= b_lambda!106767 (or (and b!3607451 b_free!93567 (= (toChars!7771 (transformation!5628 anOtherTypeRule!33)) (toChars!7771 (transformation!5628 (rule!8374 token!511))))) (and b!3607464 b_free!93563 (= (toChars!7771 (transformation!5628 rule!403)) (toChars!7771 (transformation!5628 (rule!8374 token!511))))) (and b!3607440 b_free!93575 (= (toChars!7771 (transformation!5628 (h!43383 rules!3307))) (toChars!7771 (transformation!5628 (rule!8374 token!511))))) (and b!3608241 b_free!93583 (= (toChars!7771 (transformation!5628 (h!43383 (t!293018 rules!3307)))) (toChars!7771 (transformation!5628 (rule!8374 token!511))))) (and b!3607465 b_free!93571) b_lambda!106773)))

(check-sat (not b!3607835) (not d!1062729) (not b!3608121) (not b!3608244) (not tb!206797) b_and!262909 (not b!3608157) (not b!3607834) (not b!3607759) (not d!1062695) (not b!3608112) (not b!3608224) (not b!3608155) (not b!3607770) tp_is_empty!17857 (not b!3608159) (not b_next!94267) (not d!1062713) (not b!3607865) b_and!262911 (not b!3607877) (not b!3608226) (not b!3607876) (not bm!260815) (not b!3608172) (not b!3608136) (not d!1062621) (not d!1062579) (not b!3607793) (not b!3607789) (not b!3607898) (not d!1062741) b_and!262903 (not d!1062525) (not b!3607792) (not d!1062593) (not d!1062631) (not bm!260786) (not d!1062717) (not b!3608129) (not b_lambda!106769) (not d!1062627) (not d!1062607) (not b_next!94279) (not b_lambda!106763) (not b!3608163) (not d!1062735) (not b!3608240) (not b!3608118) (not b!3608109) (not d!1062603) (not b!3608212) (not b!3608117) (not b!3608124) (not b!3608106) (not d!1062577) (not d!1062617) (not d!1062601) (not bm!260807) (not b!3607896) (not b_next!94271) (not d!1062589) (not tb!206721) (not d!1062581) (not b!3607746) (not b!3608091) (not b!3608249) (not d!1062707) (not b!3607825) (not tb!206773) (not d!1062705) (not b!3608123) (not b!3607945) (not b!3608239) (not b_next!94273) (not bm!260814) (not b!3607728) (not d!1062753) (not b_next!94287) (not d!1062737) (not b!3607934) (not b!3608170) (not d!1062573) (not b_lambda!106765) (not b!3607790) (not b!3608156) (not b!3608207) (not bm!260800) (not d!1062711) (not b!3608250) (not tb!206729) (not b!3607946) (not d!1062691) (not b_next!94275) (not b!3607878) (not b!3608245) (not b!3607827) (not b!3607836) b_and!262895 (not b!3607726) (not b!3607941) (not b!3607824) (not b!3608197) (not d!1062759) (not b!3607768) (not d!1062721) (not d!1062585) (not d!1062557) (not b!3607794) (not b!3607769) (not b_lambda!106757) (not b!3608111) (not d!1062605) (not d!1062619) (not b!3607884) (not d!1062689) (not b!3607810) (not b_next!94277) (not d!1062553) (not b!3607745) (not bm!260797) (not b!3607897) (not bm!260813) (not b!3607947) (not b!3608114) (not b!3608248) (not d!1062693) (not bm!260811) (not b!3608192) (not d!1062743) (not b!3608230) (not b!3608115) (not b!3607829) b_and!262907 (not b!3607796) (not b!3607892) (not b!3607815) b_and!262899 (not b!3607760) (not b!3608242) (not d!1062761) (not b!3608228) (not bm!260787) (not b!3607903) (not b!3608119) (not b!3608130) b_and!262897 (not b!3607766) (not d!1062749) (not d!1062765) (not b_lambda!106771) (not d!1062709) (not d!1062733) b_and!262905 (not bm!260809) (not b!3608229) (not b!3608191) (not b!3608116) (not b!3608225) (not b!3607872) (not d!1062701) (not b!3608160) (not b_next!94265) (not b!3607890) (not d!1062583) (not tb!206781) (not b!3607885) (not b!3607933) (not d!1062599) (not b_lambda!106761) b_and!262901 (not b_lambda!106737) (not b!3607818) (not d!1062715) (not b!3608162) (not bm!260783) (not bm!260799) (not d!1062597) (not b!3608195) (not b!3607812) (not b!3607906) (not d!1062609) (not b!3608161) (not bm!260798) (not b_next!94285) (not tb!206789) (not b!3607795) (not b!3608110) (not b!3607727) (not d!1062731) (not b_lambda!106759) (not d!1062613) b_and!262913 (not b!3607870) (not d!1062595) (not b!3608168) (not b_lambda!106773) (not b!3607797) (not b!3607761) (not bm!260810) (not b!3607828) (not b!3608246) (not b_next!94269) (not d!1062561) (not b!3607939) (not d!1062699) (not b!3607817))
(check-sat b_and!262909 (not b_next!94267) b_and!262911 b_and!262903 (not b_next!94279) (not b_next!94271) (not b_next!94277) b_and!262897 b_and!262905 (not b_next!94265) b_and!262901 (not b_next!94285) b_and!262913 (not b_next!94269) (not b_next!94273) (not b_next!94287) b_and!262895 (not b_next!94275) b_and!262907 b_and!262899)

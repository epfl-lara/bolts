; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!345230 () Bool)

(assert start!345230)

(declare-fun b!3679750 () Bool)

(declare-fun b_free!97449 () Bool)

(declare-fun b_next!98153 () Bool)

(assert (=> b!3679750 (= b_free!97449 (not b_next!98153))))

(declare-fun tp!1118725 () Bool)

(declare-fun b_and!274779 () Bool)

(assert (=> b!3679750 (= tp!1118725 b_and!274779)))

(declare-fun b_free!97451 () Bool)

(declare-fun b_next!98155 () Bool)

(assert (=> b!3679750 (= b_free!97451 (not b_next!98155))))

(declare-fun tp!1118714 () Bool)

(declare-fun b_and!274781 () Bool)

(assert (=> b!3679750 (= tp!1118714 b_and!274781)))

(declare-fun b!3679745 () Bool)

(declare-fun b_free!97453 () Bool)

(declare-fun b_next!98157 () Bool)

(assert (=> b!3679745 (= b_free!97453 (not b_next!98157))))

(declare-fun tp!1118723 () Bool)

(declare-fun b_and!274783 () Bool)

(assert (=> b!3679745 (= tp!1118723 b_and!274783)))

(declare-fun b_free!97455 () Bool)

(declare-fun b_next!98159 () Bool)

(assert (=> b!3679745 (= b_free!97455 (not b_next!98159))))

(declare-fun tp!1118718 () Bool)

(declare-fun b_and!274785 () Bool)

(assert (=> b!3679745 (= tp!1118718 b_and!274785)))

(declare-fun b!3679782 () Bool)

(declare-fun b_free!97457 () Bool)

(declare-fun b_next!98161 () Bool)

(assert (=> b!3679782 (= b_free!97457 (not b_next!98161))))

(declare-fun tp!1118722 () Bool)

(declare-fun b_and!274787 () Bool)

(assert (=> b!3679782 (= tp!1118722 b_and!274787)))

(declare-fun b_free!97459 () Bool)

(declare-fun b_next!98163 () Bool)

(assert (=> b!3679782 (= b_free!97459 (not b_next!98163))))

(declare-fun tp!1118720 () Bool)

(declare-fun b_and!274789 () Bool)

(assert (=> b!3679782 (= tp!1118720 b_and!274789)))

(declare-fun b!3679765 () Bool)

(declare-fun b_free!97461 () Bool)

(declare-fun b_next!98165 () Bool)

(assert (=> b!3679765 (= b_free!97461 (not b_next!98165))))

(declare-fun tp!1118719 () Bool)

(declare-fun b_and!274791 () Bool)

(assert (=> b!3679765 (= tp!1118719 b_and!274791)))

(declare-fun b_free!97463 () Bool)

(declare-fun b_next!98167 () Bool)

(assert (=> b!3679765 (= b_free!97463 (not b_next!98167))))

(declare-fun tp!1118716 () Bool)

(declare-fun b_and!274793 () Bool)

(assert (=> b!3679765 (= tp!1118716 b_and!274793)))

(declare-fun b!3679741 () Bool)

(declare-fun e!2278580 () Bool)

(declare-fun e!2278601 () Bool)

(assert (=> b!3679741 (= e!2278580 e!2278601)))

(declare-fun res!1494946 () Bool)

(assert (=> b!3679741 (=> res!1494946 e!2278601)))

(declare-datatypes ((C!21392 0))(
  ( (C!21393 (val!12744 Int)) )
))
(declare-datatypes ((List!38935 0))(
  ( (Nil!38811) (Cons!38811 (h!44231 C!21392) (t!300550 List!38935)) )
))
(declare-fun lt!1286092 () List!38935)

(declare-datatypes ((Regex!10603 0))(
  ( (ElementMatch!10603 (c!636482 C!21392)) (Concat!16677 (regOne!21718 Regex!10603) (regTwo!21718 Regex!10603)) (EmptyExpr!10603) (Star!10603 (reg!10932 Regex!10603)) (EmptyLang!10603) (Union!10603 (regOne!21719 Regex!10603) (regTwo!21719 Regex!10603)) )
))
(declare-datatypes ((String!43703 0))(
  ( (String!43704 (value!186988 String)) )
))
(declare-datatypes ((List!38936 0))(
  ( (Nil!38812) (Cons!38812 (h!44232 (_ BitVec 16)) (t!300551 List!38936)) )
))
(declare-datatypes ((TokenValue!6074 0))(
  ( (FloatLiteralValue!12148 (text!42963 List!38936)) (TokenValueExt!6073 (__x!24365 Int)) (Broken!30370 (value!186989 List!38936)) (Object!6197) (End!6074) (Def!6074) (Underscore!6074) (Match!6074) (Else!6074) (Error!6074) (Case!6074) (If!6074) (Extends!6074) (Abstract!6074) (Class!6074) (Val!6074) (DelimiterValue!12148 (del!6134 List!38936)) (KeywordValue!6080 (value!186990 List!38936)) (CommentValue!12148 (value!186991 List!38936)) (WhitespaceValue!12148 (value!186992 List!38936)) (IndentationValue!6074 (value!186993 List!38936)) (String!43705) (Int32!6074) (Broken!30371 (value!186994 List!38936)) (Boolean!6075) (Unit!56800) (OperatorValue!6077 (op!6134 List!38936)) (IdentifierValue!12148 (value!186995 List!38936)) (IdentifierValue!12149 (value!186996 List!38936)) (WhitespaceValue!12149 (value!186997 List!38936)) (True!12148) (False!12148) (Broken!30372 (value!186998 List!38936)) (Broken!30373 (value!186999 List!38936)) (True!12149) (RightBrace!6074) (RightBracket!6074) (Colon!6074) (Null!6074) (Comma!6074) (LeftBracket!6074) (False!12149) (LeftBrace!6074) (ImaginaryLiteralValue!6074 (text!42964 List!38936)) (StringLiteralValue!18222 (value!187000 List!38936)) (EOFValue!6074 (value!187001 List!38936)) (IdentValue!6074 (value!187002 List!38936)) (DelimiterValue!12149 (value!187003 List!38936)) (DedentValue!6074 (value!187004 List!38936)) (NewLineValue!6074 (value!187005 List!38936)) (IntegerValue!18222 (value!187006 (_ BitVec 32)) (text!42965 List!38936)) (IntegerValue!18223 (value!187007 Int) (text!42966 List!38936)) (Times!6074) (Or!6074) (Equal!6074) (Minus!6074) (Broken!30374 (value!187008 List!38936)) (And!6074) (Div!6074) (LessEqual!6074) (Mod!6074) (Concat!16678) (Not!6074) (Plus!6074) (SpaceValue!6074 (value!187009 List!38936)) (IntegerValue!18224 (value!187010 Int) (text!42967 List!38936)) (StringLiteralValue!18223 (text!42968 List!38936)) (FloatLiteralValue!12149 (text!42969 List!38936)) (BytesLiteralValue!6074 (value!187011 List!38936)) (CommentValue!12149 (value!187012 List!38936)) (StringLiteralValue!18224 (value!187013 List!38936)) (ErrorTokenValue!6074 (msg!6135 List!38936)) )
))
(declare-datatypes ((IArray!23767 0))(
  ( (IArray!23768 (innerList!11941 List!38935)) )
))
(declare-datatypes ((Conc!11881 0))(
  ( (Node!11881 (left!30285 Conc!11881) (right!30615 Conc!11881) (csize!23992 Int) (cheight!12092 Int)) (Leaf!18414 (xs!15083 IArray!23767) (csize!23993 Int)) (Empty!11881) )
))
(declare-datatypes ((BalanceConc!23376 0))(
  ( (BalanceConc!23377 (c!636483 Conc!11881)) )
))
(declare-datatypes ((TokenValueInjection!11576 0))(
  ( (TokenValueInjection!11577 (toValue!8140 Int) (toChars!7999 Int)) )
))
(declare-datatypes ((Rule!11488 0))(
  ( (Rule!11489 (regex!5844 Regex!10603) (tag!6646 String!43703) (isSeparator!5844 Bool) (transformation!5844 TokenValueInjection!11576)) )
))
(declare-datatypes ((Token!11054 0))(
  ( (Token!11055 (value!187014 TokenValue!6074) (rule!8680 Rule!11488) (size!29675 Int) (originalCharacters!6558 List!38935)) )
))
(declare-datatypes ((tuple2!38680 0))(
  ( (tuple2!38681 (_1!22474 Token!11054) (_2!22474 List!38935)) )
))
(declare-datatypes ((Option!8316 0))(
  ( (None!8315) (Some!8315 (v!38251 tuple2!38680)) )
))
(declare-fun lt!1286084 () Option!8316)

(declare-fun lt!1286051 () Int)

(declare-fun lt!1286080 () TokenValue!6074)

(declare-fun lt!1286100 () tuple2!38680)

(assert (=> b!3679741 (= res!1494946 (not (= lt!1286084 (Some!8315 (tuple2!38681 (Token!11055 lt!1286080 (rule!8680 (_1!22474 lt!1286100)) lt!1286051 lt!1286092) (_2!22474 lt!1286100))))))))

(declare-fun lt!1286106 () BalanceConc!23376)

(declare-fun size!29676 (BalanceConc!23376) Int)

(assert (=> b!3679741 (= lt!1286051 (size!29676 lt!1286106))))

(declare-fun apply!9346 (TokenValueInjection!11576 BalanceConc!23376) TokenValue!6074)

(assert (=> b!3679741 (= lt!1286080 (apply!9346 (transformation!5844 (rule!8680 (_1!22474 lt!1286100))) lt!1286106))))

(declare-datatypes ((Unit!56801 0))(
  ( (Unit!56802) )
))
(declare-fun lt!1286102 () Unit!56801)

(declare-fun lemmaCharactersSize!889 (Token!11054) Unit!56801)

(assert (=> b!3679741 (= lt!1286102 (lemmaCharactersSize!889 (_1!22474 lt!1286100)))))

(declare-fun lt!1286079 () Unit!56801)

(declare-fun lemmaEqSameImage!1027 (TokenValueInjection!11576 BalanceConc!23376 BalanceConc!23376) Unit!56801)

(declare-fun seqFromList!4393 (List!38935) BalanceConc!23376)

(assert (=> b!3679741 (= lt!1286079 (lemmaEqSameImage!1027 (transformation!5844 (rule!8680 (_1!22474 lt!1286100))) lt!1286106 (seqFromList!4393 (originalCharacters!6558 (_1!22474 lt!1286100)))))))

(declare-fun lt!1286062 () Unit!56801)

(declare-fun lemmaSemiInverse!1593 (TokenValueInjection!11576 BalanceConc!23376) Unit!56801)

(assert (=> b!3679741 (= lt!1286062 (lemmaSemiInverse!1593 (transformation!5844 (rule!8680 (_1!22474 lt!1286100))) lt!1286106))))

(declare-fun b!3679742 () Bool)

(assert (=> b!3679742 false))

(declare-fun lt!1286088 () Unit!56801)

(declare-fun call!266540 () Unit!56801)

(assert (=> b!3679742 (= lt!1286088 call!266540)))

(declare-fun call!266535 () Bool)

(assert (=> b!3679742 (not call!266535)))

(declare-datatypes ((List!38937 0))(
  ( (Nil!38813) (Cons!38813 (h!44233 Rule!11488) (t!300552 List!38937)) )
))
(declare-fun rules!3307 () List!38937)

(declare-fun lt!1286081 () Unit!56801)

(declare-datatypes ((LexerInterface!5433 0))(
  ( (LexerInterfaceExt!5430 (__x!24366 Int)) (Lexer!5431) )
))
(declare-fun thiss!23823 () LexerInterface!5433)

(declare-fun lt!1286097 () C!21392)

(declare-fun anOtherTypeRule!33 () Rule!11488)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!490 (LexerInterface!5433 List!38937 List!38937 Rule!11488 Rule!11488 C!21392) Unit!56801)

(assert (=> b!3679742 (= lt!1286081 (lemmaNonSepRuleNotContainsCharContainedInASepRule!490 thiss!23823 rules!3307 rules!3307 (rule!8680 (_1!22474 lt!1286100)) anOtherTypeRule!33 lt!1286097))))

(declare-fun e!2278592 () Unit!56801)

(declare-fun Unit!56803 () Unit!56801)

(assert (=> b!3679742 (= e!2278592 Unit!56803)))

(declare-fun b!3679743 () Bool)

(declare-fun e!2278573 () Bool)

(declare-fun tp!1118717 () Bool)

(declare-fun rule!403 () Rule!11488)

(declare-fun e!2278581 () Bool)

(declare-fun inv!52305 (String!43703) Bool)

(declare-fun inv!52308 (TokenValueInjection!11576) Bool)

(assert (=> b!3679743 (= e!2278581 (and tp!1118717 (inv!52305 (tag!6646 rule!403)) (inv!52308 (transformation!5844 rule!403)) e!2278573))))

(declare-fun b!3679744 () Bool)

(assert (=> b!3679744 false))

(declare-fun lt!1286095 () List!38935)

(declare-fun lt!1286059 () List!38935)

(declare-fun lt!1286064 () Unit!56801)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!252 (LexerInterface!5433 List!38937 Rule!11488 List!38935 List!38935 Rule!11488) Unit!56801)

(assert (=> b!3679744 (= lt!1286064 (lemmaMaxPrefNoSmallerRuleMatches!252 thiss!23823 rules!3307 (rule!8680 (_1!22474 lt!1286100)) lt!1286095 lt!1286059 rule!403))))

(declare-fun e!2278577 () Unit!56801)

(declare-fun Unit!56804 () Unit!56801)

(assert (=> b!3679744 (= e!2278577 Unit!56804)))

(assert (=> b!3679745 (= e!2278573 (and tp!1118723 tp!1118718))))

(declare-fun b!3679746 () Bool)

(declare-fun tp!1118715 () Bool)

(declare-fun e!2278595 () Bool)

(declare-fun token!511 () Token!11054)

(declare-fun e!2278572 () Bool)

(declare-fun inv!21 (TokenValue!6074) Bool)

(assert (=> b!3679746 (= e!2278595 (and (inv!21 (value!187014 token!511)) e!2278572 tp!1118715))))

(declare-fun bm!266530 () Bool)

(declare-fun call!266538 () List!38935)

(declare-fun usedCharacters!1056 (Regex!10603) List!38935)

(assert (=> bm!266530 (= call!266538 (usedCharacters!1056 (regex!5844 (rule!8680 (_1!22474 lt!1286100)))))))

(declare-fun b!3679747 () Bool)

(assert (=> b!3679747 false))

(declare-fun lt!1286103 () Unit!56801)

(declare-fun call!266536 () Unit!56801)

(assert (=> b!3679747 (= lt!1286103 call!266536)))

(declare-fun call!266539 () Bool)

(assert (=> b!3679747 (not call!266539)))

(declare-fun lt!1286073 () C!21392)

(declare-fun lt!1286090 () Unit!56801)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!372 (LexerInterface!5433 List!38937 List!38937 Rule!11488 Rule!11488 C!21392) Unit!56801)

(assert (=> b!3679747 (= lt!1286090 (lemmaSepRuleNotContainsCharContainedInANonSepRule!372 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8680 (_1!22474 lt!1286100)) lt!1286073))))

(declare-fun e!2278567 () Unit!56801)

(declare-fun Unit!56805 () Unit!56801)

(assert (=> b!3679747 (= e!2278567 Unit!56805)))

(declare-fun b!3679748 () Bool)

(declare-fun e!2278596 () Unit!56801)

(assert (=> b!3679748 (= e!2278596 e!2278567)))

(declare-fun c!636478 () Bool)

(assert (=> b!3679748 (= c!636478 (isSeparator!5844 (rule!8680 (_1!22474 lt!1286100))))))

(declare-fun b!3679749 () Bool)

(declare-fun e!2278582 () Bool)

(assert (=> b!3679749 (= e!2278601 e!2278582)))

(declare-fun res!1494941 () Bool)

(assert (=> b!3679749 (=> res!1494941 e!2278582)))

(declare-fun lt!1286069 () Option!8316)

(declare-fun lt!1286068 () List!38935)

(assert (=> b!3679749 (= res!1494941 (or (not (= lt!1286068 (_2!22474 lt!1286100))) (not (= lt!1286069 (Some!8315 (tuple2!38681 (_1!22474 lt!1286100) lt!1286068))))))))

(assert (=> b!3679749 (= (_2!22474 lt!1286100) lt!1286068)))

(declare-fun lt!1286082 () Unit!56801)

(declare-fun lemmaSamePrefixThenSameSuffix!1534 (List!38935 List!38935 List!38935 List!38935 List!38935) Unit!56801)

(assert (=> b!3679749 (= lt!1286082 (lemmaSamePrefixThenSameSuffix!1534 lt!1286092 (_2!22474 lt!1286100) lt!1286092 lt!1286068 lt!1286059))))

(declare-fun getSuffix!1760 (List!38935 List!38935) List!38935)

(assert (=> b!3679749 (= lt!1286068 (getSuffix!1760 lt!1286059 lt!1286092))))

(declare-fun lt!1286085 () TokenValue!6074)

(declare-fun lt!1286083 () Int)

(assert (=> b!3679749 (= lt!1286069 (Some!8315 (tuple2!38681 (Token!11055 lt!1286085 (rule!8680 (_1!22474 lt!1286100)) lt!1286083 lt!1286092) (_2!22474 lt!1286100))))))

(declare-fun maxPrefixOneRule!2105 (LexerInterface!5433 Rule!11488 List!38935) Option!8316)

(assert (=> b!3679749 (= lt!1286069 (maxPrefixOneRule!2105 thiss!23823 (rule!8680 (_1!22474 lt!1286100)) lt!1286059))))

(declare-fun size!29677 (List!38935) Int)

(assert (=> b!3679749 (= lt!1286083 (size!29677 lt!1286092))))

(assert (=> b!3679749 (= lt!1286085 (apply!9346 (transformation!5844 (rule!8680 (_1!22474 lt!1286100))) (seqFromList!4393 lt!1286092)))))

(declare-fun lt!1286058 () Unit!56801)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1161 (LexerInterface!5433 List!38937 List!38935 List!38935 List!38935 Rule!11488) Unit!56801)

(assert (=> b!3679749 (= lt!1286058 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1161 thiss!23823 rules!3307 lt!1286092 lt!1286059 (_2!22474 lt!1286100) (rule!8680 (_1!22474 lt!1286100))))))

(declare-fun e!2278576 () Bool)

(assert (=> b!3679750 (= e!2278576 (and tp!1118725 tp!1118714))))

(declare-fun b!3679751 () Bool)

(declare-fun res!1494944 () Bool)

(declare-fun e!2278586 () Bool)

(assert (=> b!3679751 (=> res!1494944 e!2278586)))

(declare-fun sepAndNonSepRulesDisjointChars!2012 (List!38937 List!38937) Bool)

(assert (=> b!3679751 (= res!1494944 (not (sepAndNonSepRulesDisjointChars!2012 rules!3307 rules!3307)))))

(declare-fun b!3679752 () Bool)

(declare-fun e!2278594 () Bool)

(declare-fun lt!1286077 () List!38935)

(assert (=> b!3679752 (= e!2278594 (or (not (= lt!1286077 lt!1286059)) (= lt!1286095 lt!1286092)))))

(declare-fun b!3679753 () Bool)

(declare-fun res!1494963 () Bool)

(declare-fun e!2278575 () Bool)

(assert (=> b!3679753 (=> (not res!1494963) (not e!2278575))))

(declare-fun rulesInvariant!4830 (LexerInterface!5433 List!38937) Bool)

(assert (=> b!3679753 (= res!1494963 (rulesInvariant!4830 thiss!23823 rules!3307))))

(declare-fun b!3679754 () Bool)

(declare-fun e!2278590 () Bool)

(declare-fun e!2278579 () Bool)

(declare-fun tp!1118721 () Bool)

(assert (=> b!3679754 (= e!2278590 (and e!2278579 tp!1118721))))

(declare-fun e!2278584 () Bool)

(declare-fun tp!1118728 () Bool)

(declare-fun b!3679755 () Bool)

(declare-fun e!2278599 () Bool)

(assert (=> b!3679755 (= e!2278584 (and tp!1118728 (inv!52305 (tag!6646 anOtherTypeRule!33)) (inv!52308 (transformation!5844 anOtherTypeRule!33)) e!2278599))))

(declare-fun b!3679756 () Bool)

(declare-fun e!2278585 () Bool)

(declare-fun e!2278578 () Bool)

(assert (=> b!3679756 (= e!2278585 e!2278578)))

(declare-fun res!1494943 () Bool)

(assert (=> b!3679756 (=> (not res!1494943) (not e!2278578))))

(declare-fun lt!1286052 () Rule!11488)

(declare-fun matchR!5172 (Regex!10603 List!38935) Bool)

(declare-fun list!14426 (BalanceConc!23376) List!38935)

(declare-fun charsOf!3858 (Token!11054) BalanceConc!23376)

(assert (=> b!3679756 (= res!1494943 (matchR!5172 (regex!5844 lt!1286052) (list!14426 (charsOf!3858 (_1!22474 lt!1286100)))))))

(declare-datatypes ((Option!8317 0))(
  ( (None!8316) (Some!8316 (v!38252 Rule!11488)) )
))
(declare-fun lt!1286078 () Option!8317)

(declare-fun get!12848 (Option!8317) Rule!11488)

(assert (=> b!3679756 (= lt!1286052 (get!12848 lt!1286078))))

(declare-fun b!3679757 () Bool)

(declare-fun e!2278570 () Unit!56801)

(assert (=> b!3679757 (= e!2278596 e!2278570)))

(declare-fun c!636481 () Bool)

(assert (=> b!3679757 (= c!636481 (not (isSeparator!5844 (rule!8680 (_1!22474 lt!1286100)))))))

(declare-fun b!3679758 () Bool)

(declare-fun res!1494957 () Bool)

(assert (=> b!3679758 (=> (not res!1494957) (not e!2278575))))

(declare-fun contains!7755 (List!38937 Rule!11488) Bool)

(assert (=> b!3679758 (= res!1494957 (contains!7755 rules!3307 rule!403))))

(declare-fun b!3679759 () Bool)

(declare-fun e!2278571 () Bool)

(assert (=> b!3679759 (= e!2278571 false)))

(declare-fun b!3679760 () Bool)

(declare-fun res!1494959 () Bool)

(assert (=> b!3679760 (=> (not res!1494959) (not e!2278575))))

(declare-fun isEmpty!23050 (List!38937) Bool)

(assert (=> b!3679760 (= res!1494959 (not (isEmpty!23050 rules!3307)))))

(declare-fun b!3679761 () Bool)

(declare-fun e!2278593 () Unit!56801)

(declare-fun Unit!56806 () Unit!56801)

(assert (=> b!3679761 (= e!2278593 Unit!56806)))

(declare-fun lt!1286074 () Unit!56801)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!792 (Regex!10603 List!38935 C!21392) Unit!56801)

(assert (=> b!3679761 (= lt!1286074 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!792 (regex!5844 rule!403) lt!1286095 lt!1286073))))

(assert (=> b!3679761 false))

(declare-fun bm!266531 () Bool)

(declare-fun contains!7756 (List!38935 C!21392) Bool)

(assert (=> bm!266531 (= call!266535 (contains!7756 call!266538 lt!1286097))))

(declare-fun b!3679762 () Bool)

(declare-fun e!2278566 () Unit!56801)

(declare-fun Unit!56807 () Unit!56801)

(assert (=> b!3679762 (= e!2278566 Unit!56807)))

(declare-fun res!1494955 () Bool)

(assert (=> start!345230 (=> (not res!1494955) (not e!2278575))))

(get-info :version)

(assert (=> start!345230 (= res!1494955 ((_ is Lexer!5431) thiss!23823))))

(assert (=> start!345230 e!2278575))

(assert (=> start!345230 e!2278590))

(declare-fun e!2278600 () Bool)

(assert (=> start!345230 e!2278600))

(assert (=> start!345230 true))

(declare-fun inv!52309 (Token!11054) Bool)

(assert (=> start!345230 (and (inv!52309 token!511) e!2278595)))

(assert (=> start!345230 e!2278581))

(assert (=> start!345230 e!2278584))

(declare-fun bm!266532 () Bool)

(declare-fun call!266537 () List!38935)

(assert (=> bm!266532 (= call!266539 (contains!7756 call!266537 lt!1286073))))

(declare-fun b!3679763 () Bool)

(declare-fun e!2278589 () Bool)

(assert (=> b!3679763 (= e!2278575 e!2278589)))

(declare-fun res!1494950 () Bool)

(assert (=> b!3679763 (=> (not res!1494950) (not e!2278589))))

(declare-fun lt!1286057 () Option!8316)

(declare-fun isDefined!6548 (Option!8316) Bool)

(assert (=> b!3679763 (= res!1494950 (isDefined!6548 lt!1286057))))

(declare-fun maxPrefix!2967 (LexerInterface!5433 List!38937 List!38935) Option!8316)

(assert (=> b!3679763 (= lt!1286057 (maxPrefix!2967 thiss!23823 rules!3307 lt!1286095))))

(declare-fun lt!1286050 () BalanceConc!23376)

(assert (=> b!3679763 (= lt!1286095 (list!14426 lt!1286050))))

(assert (=> b!3679763 (= lt!1286050 (charsOf!3858 token!511))))

(declare-fun b!3679764 () Bool)

(declare-fun res!1494954 () Bool)

(declare-fun e!2278588 () Bool)

(assert (=> b!3679764 (=> (not res!1494954) (not e!2278588))))

(assert (=> b!3679764 (= res!1494954 (= (rule!8680 token!511) rule!403))))

(assert (=> b!3679765 (= e!2278599 (and tp!1118719 tp!1118716))))

(declare-fun b!3679766 () Bool)

(declare-fun res!1494947 () Bool)

(assert (=> b!3679766 (=> (not res!1494947) (not e!2278588))))

(declare-fun lt!1286061 () tuple2!38680)

(declare-fun isEmpty!23051 (List!38935) Bool)

(assert (=> b!3679766 (= res!1494947 (isEmpty!23051 (_2!22474 lt!1286061)))))

(declare-fun b!3679767 () Bool)

(declare-fun res!1494942 () Bool)

(assert (=> b!3679767 (=> (not res!1494942) (not e!2278575))))

(assert (=> b!3679767 (= res!1494942 (not (= (isSeparator!5844 anOtherTypeRule!33) (isSeparator!5844 rule!403))))))

(declare-fun b!3679768 () Bool)

(declare-fun Unit!56808 () Unit!56801)

(assert (=> b!3679768 (= e!2278577 Unit!56808)))

(declare-fun b!3679769 () Bool)

(assert (=> b!3679769 (= e!2278586 e!2278580)))

(declare-fun res!1494953 () Bool)

(assert (=> b!3679769 (=> res!1494953 e!2278580)))

(declare-fun isPrefix!3207 (List!38935 List!38935) Bool)

(assert (=> b!3679769 (= res!1494953 (not (isPrefix!3207 lt!1286092 lt!1286059)))))

(assert (=> b!3679769 (isPrefix!3207 lt!1286092 lt!1286077)))

(declare-fun ++!9660 (List!38935 List!38935) List!38935)

(assert (=> b!3679769 (= lt!1286077 (++!9660 lt!1286092 (_2!22474 lt!1286100)))))

(declare-fun lt!1286096 () Unit!56801)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2126 (List!38935 List!38935) Unit!56801)

(assert (=> b!3679769 (= lt!1286096 (lemmaConcatTwoListThenFirstIsPrefix!2126 lt!1286092 (_2!22474 lt!1286100)))))

(assert (=> b!3679769 (= lt!1286092 (list!14426 lt!1286106))))

(assert (=> b!3679769 (= lt!1286106 (charsOf!3858 (_1!22474 lt!1286100)))))

(assert (=> b!3679769 e!2278585))

(declare-fun res!1494945 () Bool)

(assert (=> b!3679769 (=> (not res!1494945) (not e!2278585))))

(declare-fun isDefined!6549 (Option!8317) Bool)

(assert (=> b!3679769 (= res!1494945 (isDefined!6549 lt!1286078))))

(declare-fun getRuleFromTag!1448 (LexerInterface!5433 List!38937 String!43703) Option!8317)

(assert (=> b!3679769 (= lt!1286078 (getRuleFromTag!1448 thiss!23823 rules!3307 (tag!6646 (rule!8680 (_1!22474 lt!1286100)))))))

(declare-fun lt!1286049 () Unit!56801)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1448 (LexerInterface!5433 List!38937 List!38935 Token!11054) Unit!56801)

(assert (=> b!3679769 (= lt!1286049 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1448 thiss!23823 rules!3307 lt!1286059 (_1!22474 lt!1286100)))))

(declare-fun get!12849 (Option!8316) tuple2!38680)

(assert (=> b!3679769 (= lt!1286100 (get!12849 lt!1286084))))

(declare-fun suffix!1395 () List!38935)

(declare-fun lt!1286091 () Unit!56801)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1111 (LexerInterface!5433 List!38937 List!38935 List!38935) Unit!56801)

(assert (=> b!3679769 (= lt!1286091 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1111 thiss!23823 rules!3307 lt!1286095 suffix!1395))))

(assert (=> b!3679769 (= lt!1286084 (maxPrefix!2967 thiss!23823 rules!3307 lt!1286059))))

(assert (=> b!3679769 (isPrefix!3207 lt!1286095 lt!1286059)))

(declare-fun lt!1286071 () Unit!56801)

(assert (=> b!3679769 (= lt!1286071 (lemmaConcatTwoListThenFirstIsPrefix!2126 lt!1286095 suffix!1395))))

(assert (=> b!3679769 (= lt!1286059 (++!9660 lt!1286095 suffix!1395))))

(declare-fun b!3679770 () Bool)

(assert (=> b!3679770 (= e!2278578 (= (rule!8680 (_1!22474 lt!1286100)) lt!1286052))))

(declare-fun b!3679771 () Bool)

(declare-fun e!2278568 () Bool)

(assert (=> b!3679771 (= e!2278588 (not e!2278568))))

(declare-fun res!1494956 () Bool)

(assert (=> b!3679771 (=> res!1494956 e!2278568)))

(assert (=> b!3679771 (= res!1494956 (not (matchR!5172 (regex!5844 rule!403) lt!1286095)))))

(declare-fun ruleValid!2108 (LexerInterface!5433 Rule!11488) Bool)

(assert (=> b!3679771 (ruleValid!2108 thiss!23823 rule!403)))

(declare-fun lt!1286075 () Unit!56801)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1262 (LexerInterface!5433 Rule!11488 List!38937) Unit!56801)

(assert (=> b!3679771 (= lt!1286075 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1262 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3679772 () Bool)

(declare-fun e!2278565 () Unit!56801)

(declare-fun Unit!56809 () Unit!56801)

(assert (=> b!3679772 (= e!2278565 Unit!56809)))

(declare-fun lt!1286067 () Unit!56801)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!386 (LexerInterface!5433 List!38937 Rule!11488 List!38935 List!38935 List!38935 Rule!11488) Unit!56801)

(assert (=> b!3679772 (= lt!1286067 (lemmaMaxPrefixOutputsMaxPrefix!386 thiss!23823 rules!3307 (rule!8680 (_1!22474 lt!1286100)) lt!1286092 lt!1286059 lt!1286095 rule!403))))

(assert (=> b!3679772 false))

(declare-fun b!3679773 () Bool)

(assert (=> b!3679773 (= e!2278582 e!2278594)))

(declare-fun res!1494961 () Bool)

(assert (=> b!3679773 (=> res!1494961 e!2278594)))

(declare-fun lt!1286086 () List!38935)

(assert (=> b!3679773 (= res!1494961 (not (= (++!9660 lt!1286095 lt!1286086) lt!1286059)))))

(assert (=> b!3679773 (= (maxPrefixOneRule!2105 thiss!23823 rule!403 lt!1286059) (Some!8315 (tuple2!38681 (Token!11055 (apply!9346 (transformation!5844 rule!403) (seqFromList!4393 lt!1286095)) rule!403 (size!29677 lt!1286095) lt!1286095) lt!1286086)))))

(declare-fun lt!1286104 () Unit!56801)

(assert (=> b!3679773 (= lt!1286104 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1161 thiss!23823 rules!3307 lt!1286095 lt!1286059 lt!1286086 rule!403))))

(assert (=> b!3679773 (= lt!1286086 (getSuffix!1760 lt!1286059 lt!1286095))))

(declare-fun lt!1286093 () Unit!56801)

(declare-fun e!2278591 () Unit!56801)

(assert (=> b!3679773 (= lt!1286093 e!2278591)))

(declare-fun c!636475 () Bool)

(assert (=> b!3679773 (= c!636475 (not (= (rule!8680 (_1!22474 lt!1286100)) (rule!8680 token!511))))))

(assert (=> b!3679773 (= lt!1286092 lt!1286095)))

(declare-fun lt!1286105 () Unit!56801)

(declare-fun lemmaIsPrefixSameLengthThenSameList!669 (List!38935 List!38935 List!38935) Unit!56801)

(assert (=> b!3679773 (= lt!1286105 (lemmaIsPrefixSameLengthThenSameList!669 lt!1286092 lt!1286095 lt!1286059))))

(declare-fun lt!1286066 () Unit!56801)

(assert (=> b!3679773 (= lt!1286066 e!2278565)))

(declare-fun c!636473 () Bool)

(declare-fun lt!1286063 () Int)

(assert (=> b!3679773 (= c!636473 (< lt!1286051 lt!1286063))))

(declare-fun lt!1286089 () Unit!56801)

(assert (=> b!3679773 (= lt!1286089 e!2278566)))

(declare-fun c!636474 () Bool)

(assert (=> b!3679773 (= c!636474 (> lt!1286051 lt!1286063))))

(assert (=> b!3679773 (= lt!1286063 (size!29676 lt!1286050))))

(declare-fun lt!1286101 () Unit!56801)

(assert (=> b!3679773 (= lt!1286101 e!2278596)))

(declare-fun c!636479 () Bool)

(assert (=> b!3679773 (= c!636479 (isSeparator!5844 rule!403))))

(declare-fun lt!1286072 () Unit!56801)

(assert (=> b!3679773 (= lt!1286072 e!2278593)))

(declare-fun c!636476 () Bool)

(declare-fun lt!1286055 () List!38935)

(assert (=> b!3679773 (= c!636476 (not (contains!7756 lt!1286055 lt!1286073)))))

(declare-fun head!7896 (List!38935) C!21392)

(assert (=> b!3679773 (= lt!1286073 (head!7896 lt!1286092))))

(declare-fun b!3679774 () Bool)

(assert (=> b!3679774 false))

(declare-fun lt!1286070 () Unit!56801)

(assert (=> b!3679774 (= lt!1286070 call!266536)))

(assert (=> b!3679774 (not call!266539)))

(declare-fun lt!1286065 () Unit!56801)

(assert (=> b!3679774 (= lt!1286065 (lemmaNonSepRuleNotContainsCharContainedInASepRule!490 thiss!23823 rules!3307 rules!3307 (rule!8680 (_1!22474 lt!1286100)) rule!403 lt!1286073))))

(declare-fun Unit!56810 () Unit!56801)

(assert (=> b!3679774 (= e!2278570 Unit!56810)))

(declare-fun b!3679775 () Bool)

(declare-fun res!1494948 () Bool)

(assert (=> b!3679775 (=> res!1494948 e!2278568)))

(assert (=> b!3679775 (= res!1494948 (isEmpty!23051 suffix!1395))))

(declare-fun b!3679776 () Bool)

(declare-fun res!1494960 () Bool)

(assert (=> b!3679776 (=> (not res!1494960) (not e!2278575))))

(assert (=> b!3679776 (= res!1494960 (contains!7755 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3679777 () Bool)

(declare-fun Unit!56811 () Unit!56801)

(assert (=> b!3679777 (= e!2278591 Unit!56811)))

(declare-fun b!3679778 () Bool)

(assert (=> b!3679778 false))

(declare-fun lt!1286048 () Unit!56801)

(assert (=> b!3679778 (= lt!1286048 call!266540)))

(assert (=> b!3679778 (not call!266535)))

(declare-fun lt!1286053 () Unit!56801)

(assert (=> b!3679778 (= lt!1286053 (lemmaSepRuleNotContainsCharContainedInANonSepRule!372 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8680 (_1!22474 lt!1286100)) lt!1286097))))

(declare-fun Unit!56812 () Unit!56801)

(assert (=> b!3679778 (= e!2278592 Unit!56812)))

(declare-fun b!3679779 () Bool)

(assert (=> b!3679779 (= e!2278568 e!2278586)))

(declare-fun res!1494958 () Bool)

(assert (=> b!3679779 (=> res!1494958 e!2278586)))

(assert (=> b!3679779 (= res!1494958 (contains!7756 lt!1286055 lt!1286097))))

(assert (=> b!3679779 (= lt!1286097 (head!7896 suffix!1395))))

(assert (=> b!3679779 (= lt!1286055 (usedCharacters!1056 (regex!5844 rule!403)))))

(declare-fun bm!266533 () Bool)

(assert (=> bm!266533 (= call!266536 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!792 (regex!5844 (rule!8680 (_1!22474 lt!1286100))) lt!1286092 lt!1286073))))

(declare-fun b!3679780 () Bool)

(declare-fun res!1494952 () Bool)

(assert (=> b!3679780 (=> res!1494952 e!2278580)))

(assert (=> b!3679780 (= res!1494952 (not (matchR!5172 (regex!5844 (rule!8680 (_1!22474 lt!1286100))) lt!1286092)))))

(declare-fun bm!266534 () Bool)

(assert (=> bm!266534 (= call!266540 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!792 (regex!5844 (rule!8680 (_1!22474 lt!1286100))) lt!1286092 lt!1286097))))

(declare-fun b!3679781 () Bool)

(assert (=> b!3679781 (= e!2278566 e!2278592)))

(declare-fun lt!1286056 () Unit!56801)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!152 (List!38935 List!38935 List!38935 List!38935) Unit!56801)

(assert (=> b!3679781 (= lt!1286056 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!152 lt!1286095 suffix!1395 lt!1286092 lt!1286059))))

(assert (=> b!3679781 (contains!7756 lt!1286092 lt!1286097)))

(declare-fun c!636472 () Bool)

(assert (=> b!3679781 (= c!636472 (isSeparator!5844 rule!403))))

(declare-fun e!2278569 () Bool)

(assert (=> b!3679782 (= e!2278569 (and tp!1118722 tp!1118720))))

(declare-fun b!3679783 () Bool)

(declare-fun Unit!56813 () Unit!56801)

(assert (=> b!3679783 (= e!2278567 Unit!56813)))

(declare-fun b!3679784 () Bool)

(declare-fun res!1494951 () Bool)

(assert (=> b!3679784 (=> res!1494951 e!2278586)))

(assert (=> b!3679784 (= res!1494951 (not (contains!7756 (usedCharacters!1056 (regex!5844 anOtherTypeRule!33)) lt!1286097)))))

(declare-fun b!3679785 () Bool)

(declare-fun Unit!56814 () Unit!56801)

(assert (=> b!3679785 (= e!2278591 Unit!56814)))

(declare-fun lt!1286087 () Int)

(declare-fun getIndex!512 (List!38937 Rule!11488) Int)

(assert (=> b!3679785 (= lt!1286087 (getIndex!512 rules!3307 (rule!8680 (_1!22474 lt!1286100))))))

(declare-fun lt!1286054 () Int)

(assert (=> b!3679785 (= lt!1286054 (getIndex!512 rules!3307 rule!403))))

(declare-fun c!636480 () Bool)

(assert (=> b!3679785 (= c!636480 (< lt!1286087 lt!1286054))))

(declare-fun lt!1286098 () Unit!56801)

(declare-fun e!2278583 () Unit!56801)

(assert (=> b!3679785 (= lt!1286098 e!2278583)))

(declare-fun c!636477 () Bool)

(assert (=> b!3679785 (= c!636477 (< lt!1286054 lt!1286087))))

(declare-fun lt!1286094 () Unit!56801)

(assert (=> b!3679785 (= lt!1286094 e!2278577)))

(declare-fun lt!1286076 () Unit!56801)

(declare-fun lemmaSameIndexThenSameElement!244 (List!38937 Rule!11488 Rule!11488) Unit!56801)

(assert (=> b!3679785 (= lt!1286076 (lemmaSameIndexThenSameElement!244 rules!3307 (rule!8680 (_1!22474 lt!1286100)) rule!403))))

(assert (=> b!3679785 false))

(declare-fun tp!1118726 () Bool)

(declare-fun b!3679786 () Bool)

(assert (=> b!3679786 (= e!2278579 (and tp!1118726 (inv!52305 (tag!6646 (h!44233 rules!3307))) (inv!52308 (transformation!5844 (h!44233 rules!3307))) e!2278576))))

(declare-fun b!3679787 () Bool)

(declare-fun tp_is_empty!18289 () Bool)

(declare-fun tp!1118724 () Bool)

(assert (=> b!3679787 (= e!2278600 (and tp_is_empty!18289 tp!1118724))))

(declare-fun b!3679788 () Bool)

(declare-fun tp!1118727 () Bool)

(assert (=> b!3679788 (= e!2278572 (and tp!1118727 (inv!52305 (tag!6646 (rule!8680 token!511))) (inv!52308 (transformation!5844 (rule!8680 token!511))) e!2278569))))

(declare-fun b!3679789 () Bool)

(assert (=> b!3679789 e!2278571))

(declare-fun res!1494949 () Bool)

(assert (=> b!3679789 (=> (not res!1494949) (not e!2278571))))

(assert (=> b!3679789 (= res!1494949 (not (matchR!5172 (regex!5844 (rule!8680 (_1!22474 lt!1286100))) lt!1286095)))))

(declare-fun lt!1286099 () Unit!56801)

(assert (=> b!3679789 (= lt!1286099 (lemmaMaxPrefNoSmallerRuleMatches!252 thiss!23823 rules!3307 rule!403 lt!1286095 lt!1286095 (rule!8680 (_1!22474 lt!1286100))))))

(assert (=> b!3679789 (isEmpty!23051 (getSuffix!1760 lt!1286095 lt!1286095))))

(declare-fun lt!1286060 () Unit!56801)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!224 (List!38935) Unit!56801)

(assert (=> b!3679789 (= lt!1286060 (lemmaGetSuffixOnListWithItSelfIsEmpty!224 lt!1286095))))

(declare-fun Unit!56815 () Unit!56801)

(assert (=> b!3679789 (= e!2278583 Unit!56815)))

(declare-fun b!3679790 () Bool)

(declare-fun Unit!56816 () Unit!56801)

(assert (=> b!3679790 (= e!2278565 Unit!56816)))

(declare-fun b!3679791 () Bool)

(declare-fun Unit!56817 () Unit!56801)

(assert (=> b!3679791 (= e!2278583 Unit!56817)))

(declare-fun b!3679792 () Bool)

(declare-fun Unit!56818 () Unit!56801)

(assert (=> b!3679792 (= e!2278593 Unit!56818)))

(declare-fun b!3679793 () Bool)

(declare-fun Unit!56819 () Unit!56801)

(assert (=> b!3679793 (= e!2278570 Unit!56819)))

(declare-fun bm!266535 () Bool)

(assert (=> bm!266535 (= call!266537 (usedCharacters!1056 (regex!5844 (rule!8680 (_1!22474 lt!1286100)))))))

(declare-fun b!3679794 () Bool)

(assert (=> b!3679794 (= e!2278589 e!2278588)))

(declare-fun res!1494962 () Bool)

(assert (=> b!3679794 (=> (not res!1494962) (not e!2278588))))

(assert (=> b!3679794 (= res!1494962 (= (_1!22474 lt!1286061) token!511))))

(assert (=> b!3679794 (= lt!1286061 (get!12849 lt!1286057))))

(assert (= (and start!345230 res!1494955) b!3679760))

(assert (= (and b!3679760 res!1494959) b!3679753))

(assert (= (and b!3679753 res!1494963) b!3679758))

(assert (= (and b!3679758 res!1494957) b!3679776))

(assert (= (and b!3679776 res!1494960) b!3679767))

(assert (= (and b!3679767 res!1494942) b!3679763))

(assert (= (and b!3679763 res!1494950) b!3679794))

(assert (= (and b!3679794 res!1494962) b!3679766))

(assert (= (and b!3679766 res!1494947) b!3679764))

(assert (= (and b!3679764 res!1494954) b!3679771))

(assert (= (and b!3679771 (not res!1494956)) b!3679775))

(assert (= (and b!3679775 (not res!1494948)) b!3679779))

(assert (= (and b!3679779 (not res!1494958)) b!3679784))

(assert (= (and b!3679784 (not res!1494951)) b!3679751))

(assert (= (and b!3679751 (not res!1494944)) b!3679769))

(assert (= (and b!3679769 res!1494945) b!3679756))

(assert (= (and b!3679756 res!1494943) b!3679770))

(assert (= (and b!3679769 (not res!1494953)) b!3679780))

(assert (= (and b!3679780 (not res!1494952)) b!3679741))

(assert (= (and b!3679741 (not res!1494946)) b!3679749))

(assert (= (and b!3679749 (not res!1494941)) b!3679773))

(assert (= (and b!3679773 c!636476) b!3679761))

(assert (= (and b!3679773 (not c!636476)) b!3679792))

(assert (= (and b!3679773 c!636479) b!3679757))

(assert (= (and b!3679773 (not c!636479)) b!3679748))

(assert (= (and b!3679757 c!636481) b!3679774))

(assert (= (and b!3679757 (not c!636481)) b!3679793))

(assert (= (and b!3679748 c!636478) b!3679747))

(assert (= (and b!3679748 (not c!636478)) b!3679783))

(assert (= (or b!3679774 b!3679747) bm!266533))

(assert (= (or b!3679774 b!3679747) bm!266535))

(assert (= (or b!3679774 b!3679747) bm!266532))

(assert (= (and b!3679773 c!636474) b!3679781))

(assert (= (and b!3679773 (not c!636474)) b!3679762))

(assert (= (and b!3679781 c!636472) b!3679778))

(assert (= (and b!3679781 (not c!636472)) b!3679742))

(assert (= (or b!3679778 b!3679742) bm!266534))

(assert (= (or b!3679778 b!3679742) bm!266530))

(assert (= (or b!3679778 b!3679742) bm!266531))

(assert (= (and b!3679773 c!636473) b!3679772))

(assert (= (and b!3679773 (not c!636473)) b!3679790))

(assert (= (and b!3679773 c!636475) b!3679785))

(assert (= (and b!3679773 (not c!636475)) b!3679777))

(assert (= (and b!3679785 c!636480) b!3679789))

(assert (= (and b!3679785 (not c!636480)) b!3679791))

(assert (= (and b!3679789 res!1494949) b!3679759))

(assert (= (and b!3679785 c!636477) b!3679744))

(assert (= (and b!3679785 (not c!636477)) b!3679768))

(assert (= (and b!3679773 (not res!1494961)) b!3679752))

(assert (= b!3679786 b!3679750))

(assert (= b!3679754 b!3679786))

(assert (= (and start!345230 ((_ is Cons!38813) rules!3307)) b!3679754))

(assert (= (and start!345230 ((_ is Cons!38811) suffix!1395)) b!3679787))

(assert (= b!3679788 b!3679782))

(assert (= b!3679746 b!3679788))

(assert (= start!345230 b!3679746))

(assert (= b!3679743 b!3679745))

(assert (= start!345230 b!3679743))

(assert (= b!3679755 b!3679765))

(assert (= start!345230 b!3679755))

(declare-fun m!4189987 () Bool)

(assert (=> b!3679743 m!4189987))

(declare-fun m!4189989 () Bool)

(assert (=> b!3679743 m!4189989))

(declare-fun m!4189991 () Bool)

(assert (=> b!3679775 m!4189991))

(declare-fun m!4189993 () Bool)

(assert (=> b!3679749 m!4189993))

(declare-fun m!4189995 () Bool)

(assert (=> b!3679749 m!4189995))

(declare-fun m!4189997 () Bool)

(assert (=> b!3679749 m!4189997))

(declare-fun m!4189999 () Bool)

(assert (=> b!3679749 m!4189999))

(declare-fun m!4190001 () Bool)

(assert (=> b!3679749 m!4190001))

(assert (=> b!3679749 m!4189999))

(declare-fun m!4190003 () Bool)

(assert (=> b!3679749 m!4190003))

(declare-fun m!4190005 () Bool)

(assert (=> b!3679749 m!4190005))

(declare-fun m!4190007 () Bool)

(assert (=> b!3679747 m!4190007))

(declare-fun m!4190009 () Bool)

(assert (=> b!3679771 m!4190009))

(declare-fun m!4190011 () Bool)

(assert (=> b!3679771 m!4190011))

(declare-fun m!4190013 () Bool)

(assert (=> b!3679771 m!4190013))

(declare-fun m!4190015 () Bool)

(assert (=> start!345230 m!4190015))

(declare-fun m!4190017 () Bool)

(assert (=> b!3679785 m!4190017))

(declare-fun m!4190019 () Bool)

(assert (=> b!3679785 m!4190019))

(declare-fun m!4190021 () Bool)

(assert (=> b!3679785 m!4190021))

(declare-fun m!4190023 () Bool)

(assert (=> b!3679761 m!4190023))

(declare-fun m!4190025 () Bool)

(assert (=> b!3679794 m!4190025))

(declare-fun m!4190027 () Bool)

(assert (=> b!3679784 m!4190027))

(assert (=> b!3679784 m!4190027))

(declare-fun m!4190029 () Bool)

(assert (=> b!3679784 m!4190029))

(declare-fun m!4190031 () Bool)

(assert (=> b!3679746 m!4190031))

(declare-fun m!4190033 () Bool)

(assert (=> b!3679776 m!4190033))

(declare-fun m!4190035 () Bool)

(assert (=> bm!266532 m!4190035))

(declare-fun m!4190037 () Bool)

(assert (=> b!3679753 m!4190037))

(declare-fun m!4190039 () Bool)

(assert (=> b!3679773 m!4190039))

(declare-fun m!4190041 () Bool)

(assert (=> b!3679773 m!4190041))

(declare-fun m!4190043 () Bool)

(assert (=> b!3679773 m!4190043))

(declare-fun m!4190045 () Bool)

(assert (=> b!3679773 m!4190045))

(declare-fun m!4190047 () Bool)

(assert (=> b!3679773 m!4190047))

(assert (=> b!3679773 m!4190043))

(declare-fun m!4190049 () Bool)

(assert (=> b!3679773 m!4190049))

(declare-fun m!4190051 () Bool)

(assert (=> b!3679773 m!4190051))

(declare-fun m!4190053 () Bool)

(assert (=> b!3679773 m!4190053))

(declare-fun m!4190055 () Bool)

(assert (=> b!3679773 m!4190055))

(declare-fun m!4190057 () Bool)

(assert (=> b!3679773 m!4190057))

(declare-fun m!4190059 () Bool)

(assert (=> b!3679773 m!4190059))

(declare-fun m!4190061 () Bool)

(assert (=> b!3679744 m!4190061))

(declare-fun m!4190063 () Bool)

(assert (=> b!3679769 m!4190063))

(declare-fun m!4190065 () Bool)

(assert (=> b!3679769 m!4190065))

(declare-fun m!4190067 () Bool)

(assert (=> b!3679769 m!4190067))

(declare-fun m!4190069 () Bool)

(assert (=> b!3679769 m!4190069))

(declare-fun m!4190071 () Bool)

(assert (=> b!3679769 m!4190071))

(declare-fun m!4190073 () Bool)

(assert (=> b!3679769 m!4190073))

(declare-fun m!4190075 () Bool)

(assert (=> b!3679769 m!4190075))

(declare-fun m!4190077 () Bool)

(assert (=> b!3679769 m!4190077))

(declare-fun m!4190079 () Bool)

(assert (=> b!3679769 m!4190079))

(declare-fun m!4190081 () Bool)

(assert (=> b!3679769 m!4190081))

(declare-fun m!4190083 () Bool)

(assert (=> b!3679769 m!4190083))

(declare-fun m!4190085 () Bool)

(assert (=> b!3679769 m!4190085))

(declare-fun m!4190087 () Bool)

(assert (=> b!3679769 m!4190087))

(declare-fun m!4190089 () Bool)

(assert (=> b!3679769 m!4190089))

(declare-fun m!4190091 () Bool)

(assert (=> b!3679769 m!4190091))

(declare-fun m!4190093 () Bool)

(assert (=> b!3679786 m!4190093))

(declare-fun m!4190095 () Bool)

(assert (=> b!3679786 m!4190095))

(declare-fun m!4190097 () Bool)

(assert (=> b!3679788 m!4190097))

(declare-fun m!4190099 () Bool)

(assert (=> b!3679788 m!4190099))

(declare-fun m!4190101 () Bool)

(assert (=> bm!266533 m!4190101))

(declare-fun m!4190103 () Bool)

(assert (=> b!3679763 m!4190103))

(declare-fun m!4190105 () Bool)

(assert (=> b!3679763 m!4190105))

(declare-fun m!4190107 () Bool)

(assert (=> b!3679763 m!4190107))

(declare-fun m!4190109 () Bool)

(assert (=> b!3679763 m!4190109))

(declare-fun m!4190111 () Bool)

(assert (=> bm!266530 m!4190111))

(declare-fun m!4190113 () Bool)

(assert (=> b!3679755 m!4190113))

(declare-fun m!4190115 () Bool)

(assert (=> b!3679755 m!4190115))

(declare-fun m!4190117 () Bool)

(assert (=> b!3679780 m!4190117))

(assert (=> bm!266535 m!4190111))

(declare-fun m!4190119 () Bool)

(assert (=> b!3679741 m!4190119))

(declare-fun m!4190121 () Bool)

(assert (=> b!3679741 m!4190121))

(declare-fun m!4190123 () Bool)

(assert (=> b!3679741 m!4190123))

(declare-fun m!4190125 () Bool)

(assert (=> b!3679741 m!4190125))

(assert (=> b!3679741 m!4190121))

(declare-fun m!4190127 () Bool)

(assert (=> b!3679741 m!4190127))

(declare-fun m!4190129 () Bool)

(assert (=> b!3679741 m!4190129))

(assert (=> b!3679756 m!4190073))

(assert (=> b!3679756 m!4190073))

(declare-fun m!4190131 () Bool)

(assert (=> b!3679756 m!4190131))

(assert (=> b!3679756 m!4190131))

(declare-fun m!4190133 () Bool)

(assert (=> b!3679756 m!4190133))

(declare-fun m!4190135 () Bool)

(assert (=> b!3679756 m!4190135))

(declare-fun m!4190137 () Bool)

(assert (=> b!3679789 m!4190137))

(declare-fun m!4190139 () Bool)

(assert (=> b!3679789 m!4190139))

(declare-fun m!4190141 () Bool)

(assert (=> b!3679789 m!4190141))

(assert (=> b!3679789 m!4190141))

(declare-fun m!4190143 () Bool)

(assert (=> b!3679789 m!4190143))

(declare-fun m!4190145 () Bool)

(assert (=> b!3679789 m!4190145))

(declare-fun m!4190147 () Bool)

(assert (=> bm!266534 m!4190147))

(declare-fun m!4190149 () Bool)

(assert (=> b!3679758 m!4190149))

(declare-fun m!4190151 () Bool)

(assert (=> b!3679751 m!4190151))

(declare-fun m!4190153 () Bool)

(assert (=> b!3679781 m!4190153))

(declare-fun m!4190155 () Bool)

(assert (=> b!3679781 m!4190155))

(declare-fun m!4190157 () Bool)

(assert (=> b!3679774 m!4190157))

(declare-fun m!4190159 () Bool)

(assert (=> b!3679779 m!4190159))

(declare-fun m!4190161 () Bool)

(assert (=> b!3679779 m!4190161))

(declare-fun m!4190163 () Bool)

(assert (=> b!3679779 m!4190163))

(declare-fun m!4190165 () Bool)

(assert (=> b!3679778 m!4190165))

(declare-fun m!4190167 () Bool)

(assert (=> b!3679766 m!4190167))

(declare-fun m!4190169 () Bool)

(assert (=> b!3679760 m!4190169))

(declare-fun m!4190171 () Bool)

(assert (=> bm!266531 m!4190171))

(declare-fun m!4190173 () Bool)

(assert (=> b!3679772 m!4190173))

(declare-fun m!4190175 () Bool)

(assert (=> b!3679742 m!4190175))

(check-sat (not b!3679754) b_and!274793 b_and!274791 (not b_next!98159) (not b!3679776) (not b!3679788) (not b!3679758) (not bm!266533) b_and!274781 (not b_next!98167) (not b_next!98165) (not b!3679789) (not bm!266532) b_and!274783 (not b!3679744) (not b!3679753) b_and!274789 (not b!3679781) (not b!3679780) (not b!3679749) (not b!3679773) (not b!3679779) b_and!274785 (not b!3679761) (not b!3679772) (not bm!266531) (not b!3679742) tp_is_empty!18289 (not b_next!98153) (not b_next!98161) (not b!3679751) (not b!3679741) (not b!3679774) (not b!3679771) (not b_next!98163) (not bm!266535) (not start!345230) (not b!3679747) (not bm!266530) (not b!3679760) b_and!274779 (not b!3679784) (not bm!266534) (not b!3679755) (not b!3679763) (not b!3679778) (not b!3679769) b_and!274787 (not b!3679746) (not b!3679785) (not b!3679794) (not b!3679743) (not b!3679775) (not b!3679766) (not b!3679756) (not b!3679787) (not b_next!98157) (not b!3679786) (not b_next!98155))
(check-sat b_and!274783 b_and!274789 b_and!274793 b_and!274791 b_and!274785 (not b_next!98159) (not b_next!98163) b_and!274779 b_and!274787 b_and!274781 (not b_next!98167) (not b_next!98165) (not b_next!98153) (not b_next!98161) (not b_next!98157) (not b_next!98155))

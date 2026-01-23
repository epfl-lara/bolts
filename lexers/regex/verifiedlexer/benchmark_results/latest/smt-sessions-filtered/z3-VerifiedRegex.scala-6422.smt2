; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!335518 () Bool)

(assert start!335518)

(declare-fun b!3606178 () Bool)

(declare-fun b_free!93489 () Bool)

(declare-fun b_next!94193 () Bool)

(assert (=> b!3606178 (= b_free!93489 (not b_next!94193))))

(declare-fun tp!1102729 () Bool)

(declare-fun b_and!262531 () Bool)

(assert (=> b!3606178 (= tp!1102729 b_and!262531)))

(declare-fun b_free!93491 () Bool)

(declare-fun b_next!94195 () Bool)

(assert (=> b!3606178 (= b_free!93491 (not b_next!94195))))

(declare-fun tp!1102732 () Bool)

(declare-fun b_and!262533 () Bool)

(assert (=> b!3606178 (= tp!1102732 b_and!262533)))

(declare-fun b!3606169 () Bool)

(declare-fun b_free!93493 () Bool)

(declare-fun b_next!94197 () Bool)

(assert (=> b!3606169 (= b_free!93493 (not b_next!94197))))

(declare-fun tp!1102725 () Bool)

(declare-fun b_and!262535 () Bool)

(assert (=> b!3606169 (= tp!1102725 b_and!262535)))

(declare-fun b_free!93495 () Bool)

(declare-fun b_next!94199 () Bool)

(assert (=> b!3606169 (= b_free!93495 (not b_next!94199))))

(declare-fun tp!1102720 () Bool)

(declare-fun b_and!262537 () Bool)

(assert (=> b!3606169 (= tp!1102720 b_and!262537)))

(declare-fun b!3606202 () Bool)

(declare-fun b_free!93497 () Bool)

(declare-fun b_next!94201 () Bool)

(assert (=> b!3606202 (= b_free!93497 (not b_next!94201))))

(declare-fun tp!1102727 () Bool)

(declare-fun b_and!262539 () Bool)

(assert (=> b!3606202 (= tp!1102727 b_and!262539)))

(declare-fun b_free!93499 () Bool)

(declare-fun b_next!94203 () Bool)

(assert (=> b!3606202 (= b_free!93499 (not b_next!94203))))

(declare-fun tp!1102731 () Bool)

(declare-fun b_and!262541 () Bool)

(assert (=> b!3606202 (= tp!1102731 b_and!262541)))

(declare-fun b!3606167 () Bool)

(declare-fun b_free!93501 () Bool)

(declare-fun b_next!94205 () Bool)

(assert (=> b!3606167 (= b_free!93501 (not b_next!94205))))

(declare-fun tp!1102719 () Bool)

(declare-fun b_and!262543 () Bool)

(assert (=> b!3606167 (= tp!1102719 b_and!262543)))

(declare-fun b_free!93503 () Bool)

(declare-fun b_next!94207 () Bool)

(assert (=> b!3606167 (= b_free!93503 (not b_next!94207))))

(declare-fun tp!1102728 () Bool)

(declare-fun b_and!262545 () Bool)

(assert (=> b!3606167 (= tp!1102728 b_and!262545)))

(declare-fun b!3606162 () Bool)

(declare-datatypes ((Unit!54039 0))(
  ( (Unit!54040) )
))
(declare-fun e!2231672 () Unit!54039)

(declare-fun e!2231691 () Unit!54039)

(assert (=> b!3606162 (= e!2231672 e!2231691)))

(declare-fun c!623941 () Bool)

(declare-datatypes ((List!38069 0))(
  ( (Nil!37945) (Cons!37945 (h!43365 (_ BitVec 16)) (t!292880 List!38069)) )
))
(declare-datatypes ((TokenValue!5854 0))(
  ( (FloatLiteralValue!11708 (text!41423 List!38069)) (TokenValueExt!5853 (__x!23925 Int)) (Broken!29270 (value!180718 List!38069)) (Object!5977) (End!5854) (Def!5854) (Underscore!5854) (Match!5854) (Else!5854) (Error!5854) (Case!5854) (If!5854) (Extends!5854) (Abstract!5854) (Class!5854) (Val!5854) (DelimiterValue!11708 (del!5914 List!38069)) (KeywordValue!5860 (value!180719 List!38069)) (CommentValue!11708 (value!180720 List!38069)) (WhitespaceValue!11708 (value!180721 List!38069)) (IndentationValue!5854 (value!180722 List!38069)) (String!42603) (Int32!5854) (Broken!29271 (value!180723 List!38069)) (Boolean!5855) (Unit!54041) (OperatorValue!5857 (op!5914 List!38069)) (IdentifierValue!11708 (value!180724 List!38069)) (IdentifierValue!11709 (value!180725 List!38069)) (WhitespaceValue!11709 (value!180726 List!38069)) (True!11708) (False!11708) (Broken!29272 (value!180727 List!38069)) (Broken!29273 (value!180728 List!38069)) (True!11709) (RightBrace!5854) (RightBracket!5854) (Colon!5854) (Null!5854) (Comma!5854) (LeftBracket!5854) (False!11709) (LeftBrace!5854) (ImaginaryLiteralValue!5854 (text!41424 List!38069)) (StringLiteralValue!17562 (value!180729 List!38069)) (EOFValue!5854 (value!180730 List!38069)) (IdentValue!5854 (value!180731 List!38069)) (DelimiterValue!11709 (value!180732 List!38069)) (DedentValue!5854 (value!180733 List!38069)) (NewLineValue!5854 (value!180734 List!38069)) (IntegerValue!17562 (value!180735 (_ BitVec 32)) (text!41425 List!38069)) (IntegerValue!17563 (value!180736 Int) (text!41426 List!38069)) (Times!5854) (Or!5854) (Equal!5854) (Minus!5854) (Broken!29274 (value!180737 List!38069)) (And!5854) (Div!5854) (LessEqual!5854) (Mod!5854) (Concat!16237) (Not!5854) (Plus!5854) (SpaceValue!5854 (value!180738 List!38069)) (IntegerValue!17564 (value!180739 Int) (text!41427 List!38069)) (StringLiteralValue!17563 (text!41428 List!38069)) (FloatLiteralValue!11709 (text!41429 List!38069)) (BytesLiteralValue!5854 (value!180740 List!38069)) (CommentValue!11709 (value!180741 List!38069)) (StringLiteralValue!17564 (value!180742 List!38069)) (ErrorTokenValue!5854 (msg!5915 List!38069)) )
))
(declare-datatypes ((C!20952 0))(
  ( (C!20953 (val!12524 Int)) )
))
(declare-datatypes ((Regex!10383 0))(
  ( (ElementMatch!10383 (c!623944 C!20952)) (Concat!16238 (regOne!21278 Regex!10383) (regTwo!21278 Regex!10383)) (EmptyExpr!10383) (Star!10383 (reg!10712 Regex!10383)) (EmptyLang!10383) (Union!10383 (regOne!21279 Regex!10383) (regTwo!21279 Regex!10383)) )
))
(declare-datatypes ((String!42604 0))(
  ( (String!42605 (value!180743 String)) )
))
(declare-datatypes ((List!38070 0))(
  ( (Nil!37946) (Cons!37946 (h!43366 C!20952) (t!292881 List!38070)) )
))
(declare-datatypes ((IArray!23123 0))(
  ( (IArray!23124 (innerList!11619 List!38070)) )
))
(declare-datatypes ((Conc!11559 0))(
  ( (Node!11559 (left!29649 Conc!11559) (right!29979 Conc!11559) (csize!23348 Int) (cheight!11770 Int)) (Leaf!17982 (xs!14761 IArray!23123) (csize!23349 Int)) (Empty!11559) )
))
(declare-datatypes ((BalanceConc!22732 0))(
  ( (BalanceConc!22733 (c!623945 Conc!11559)) )
))
(declare-datatypes ((TokenValueInjection!11136 0))(
  ( (TokenValueInjection!11137 (toValue!7908 Int) (toChars!7767 Int)) )
))
(declare-datatypes ((Rule!11048 0))(
  ( (Rule!11049 (regex!5624 Regex!10383) (tag!6324 String!42604) (isSeparator!5624 Bool) (transformation!5624 TokenValueInjection!11136)) )
))
(declare-datatypes ((Token!10614 0))(
  ( (Token!10615 (value!180744 TokenValue!5854) (rule!8368 Rule!11048) (size!28923 Int) (originalCharacters!6338 List!38070)) )
))
(declare-datatypes ((tuple2!37840 0))(
  ( (tuple2!37841 (_1!22054 Token!10614) (_2!22054 List!38070)) )
))
(declare-fun lt!1240237 () tuple2!37840)

(assert (=> b!3606162 (= c!623941 (not (isSeparator!5624 (rule!8368 (_1!22054 lt!1240237)))))))

(declare-fun b!3606163 () Bool)

(declare-fun e!2231685 () Bool)

(declare-fun e!2231679 () Bool)

(assert (=> b!3606163 (= e!2231685 e!2231679)))

(declare-fun res!1458151 () Bool)

(assert (=> b!3606163 (=> res!1458151 e!2231679)))

(declare-datatypes ((Option!7878 0))(
  ( (None!7877) (Some!7877 (v!37607 tuple2!37840)) )
))
(declare-fun lt!1240221 () Option!7878)

(declare-fun lt!1240226 () List!38070)

(assert (=> b!3606163 (= res!1458151 (or (not (= lt!1240226 (_2!22054 lt!1240237))) (not (= lt!1240221 (Some!7877 (tuple2!37841 (_1!22054 lt!1240237) lt!1240226))))))))

(assert (=> b!3606163 (= (_2!22054 lt!1240237) lt!1240226)))

(declare-fun lt!1240232 () List!38070)

(declare-fun lt!1240219 () Unit!54039)

(declare-fun lt!1240250 () List!38070)

(declare-fun lemmaSamePrefixThenSameSuffix!1342 (List!38070 List!38070 List!38070 List!38070 List!38070) Unit!54039)

(assert (=> b!3606163 (= lt!1240219 (lemmaSamePrefixThenSameSuffix!1342 lt!1240250 (_2!22054 lt!1240237) lt!1240250 lt!1240226 lt!1240232))))

(declare-fun getSuffix!1562 (List!38070 List!38070) List!38070)

(assert (=> b!3606163 (= lt!1240226 (getSuffix!1562 lt!1240232 lt!1240250))))

(declare-fun lt!1240235 () Int)

(declare-fun lt!1240246 () TokenValue!5854)

(assert (=> b!3606163 (= lt!1240221 (Some!7877 (tuple2!37841 (Token!10615 lt!1240246 (rule!8368 (_1!22054 lt!1240237)) lt!1240235 lt!1240250) (_2!22054 lt!1240237))))))

(declare-datatypes ((LexerInterface!5213 0))(
  ( (LexerInterfaceExt!5210 (__x!23926 Int)) (Lexer!5211) )
))
(declare-fun thiss!23823 () LexerInterface!5213)

(declare-fun maxPrefixOneRule!1891 (LexerInterface!5213 Rule!11048 List!38070) Option!7878)

(assert (=> b!3606163 (= lt!1240221 (maxPrefixOneRule!1891 thiss!23823 (rule!8368 (_1!22054 lt!1240237)) lt!1240232))))

(declare-fun size!28924 (List!38070) Int)

(assert (=> b!3606163 (= lt!1240235 (size!28924 lt!1240250))))

(declare-fun apply!9130 (TokenValueInjection!11136 BalanceConc!22732) TokenValue!5854)

(declare-fun seqFromList!4177 (List!38070) BalanceConc!22732)

(assert (=> b!3606163 (= lt!1240246 (apply!9130 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))) (seqFromList!4177 lt!1240250)))))

(declare-datatypes ((List!38071 0))(
  ( (Nil!37947) (Cons!37947 (h!43367 Rule!11048) (t!292882 List!38071)) )
))
(declare-fun rules!3307 () List!38071)

(declare-fun lt!1240249 () Unit!54039)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!963 (LexerInterface!5213 List!38071 List!38070 List!38070 List!38070 Rule!11048) Unit!54039)

(assert (=> b!3606163 (= lt!1240249 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!963 thiss!23823 rules!3307 lt!1240250 lt!1240232 (_2!22054 lt!1240237) (rule!8368 (_1!22054 lt!1240237))))))

(declare-fun b!3606164 () Bool)

(declare-fun res!1458146 () Bool)

(declare-fun e!2231695 () Bool)

(assert (=> b!3606164 (=> (not res!1458146) (not e!2231695))))

(declare-fun lt!1240242 () tuple2!37840)

(declare-fun isEmpty!22398 (List!38070) Bool)

(assert (=> b!3606164 (= res!1458146 (isEmpty!22398 (_2!22054 lt!1240242)))))

(declare-fun b!3606165 () Bool)

(declare-fun e!2231690 () Bool)

(declare-fun rule!403 () Rule!11048)

(declare-fun suffix!1395 () List!38070)

(assert (=> b!3606165 (= e!2231690 (or (not (isSeparator!5624 rule!403)) (not (= suffix!1395 Nil!37946))))))

(declare-fun lt!1240228 () C!20952)

(declare-fun contains!7311 (List!38070 C!20952) Bool)

(assert (=> b!3606165 (contains!7311 lt!1240250 lt!1240228)))

(declare-fun lt!1240215 () Unit!54039)

(declare-fun lt!1240236 () List!38070)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!2 (List!38070 List!38070 List!38070 List!38070) Unit!54039)

(assert (=> b!3606165 (= lt!1240215 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!2 lt!1240236 suffix!1395 lt!1240250 lt!1240232))))

(declare-fun b!3606166 () Bool)

(declare-fun res!1458142 () Bool)

(declare-fun e!2231684 () Bool)

(assert (=> b!3606166 (=> res!1458142 e!2231684)))

(declare-fun matchR!4952 (Regex!10383 List!38070) Bool)

(assert (=> b!3606166 (= res!1458142 (not (matchR!4952 (regex!5624 (rule!8368 (_1!22054 lt!1240237))) lt!1240250)))))

(declare-fun e!2231670 () Bool)

(assert (=> b!3606167 (= e!2231670 (and tp!1102719 tp!1102728))))

(declare-fun b!3606168 () Bool)

(declare-fun res!1458153 () Bool)

(declare-fun e!2231674 () Bool)

(assert (=> b!3606168 (=> (not res!1458153) (not e!2231674))))

(declare-fun anOtherTypeRule!33 () Rule!11048)

(declare-fun contains!7312 (List!38071 Rule!11048) Bool)

(assert (=> b!3606168 (= res!1458153 (contains!7312 rules!3307 anOtherTypeRule!33))))

(declare-fun res!1458157 () Bool)

(assert (=> start!335518 (=> (not res!1458157) (not e!2231674))))

(get-info :version)

(assert (=> start!335518 (= res!1458157 ((_ is Lexer!5211) thiss!23823))))

(assert (=> start!335518 e!2231674))

(declare-fun e!2231681 () Bool)

(assert (=> start!335518 e!2231681))

(declare-fun e!2231682 () Bool)

(assert (=> start!335518 e!2231682))

(assert (=> start!335518 true))

(declare-fun token!511 () Token!10614)

(declare-fun e!2231671 () Bool)

(declare-fun inv!51313 (Token!10614) Bool)

(assert (=> start!335518 (and (inv!51313 token!511) e!2231671)))

(declare-fun e!2231696 () Bool)

(assert (=> start!335518 e!2231696))

(declare-fun e!2231676 () Bool)

(assert (=> start!335518 e!2231676))

(declare-fun e!2231694 () Bool)

(assert (=> b!3606169 (= e!2231694 (and tp!1102725 tp!1102720))))

(declare-fun b!3606170 () Bool)

(declare-fun e!2231678 () Bool)

(declare-fun e!2231687 () Bool)

(assert (=> b!3606170 (= e!2231678 e!2231687)))

(declare-fun res!1458139 () Bool)

(assert (=> b!3606170 (=> (not res!1458139) (not e!2231687))))

(declare-fun lt!1240245 () Rule!11048)

(declare-fun list!13988 (BalanceConc!22732) List!38070)

(declare-fun charsOf!3638 (Token!10614) BalanceConc!22732)

(assert (=> b!3606170 (= res!1458139 (matchR!4952 (regex!5624 lt!1240245) (list!13988 (charsOf!3638 (_1!22054 lt!1240237)))))))

(declare-datatypes ((Option!7879 0))(
  ( (None!7878) (Some!7878 (v!37608 Rule!11048)) )
))
(declare-fun lt!1240216 () Option!7879)

(declare-fun get!12300 (Option!7879) Rule!11048)

(assert (=> b!3606170 (= lt!1240245 (get!12300 lt!1240216))))

(declare-fun b!3606171 () Bool)

(declare-fun e!2231693 () Bool)

(assert (=> b!3606171 (= e!2231695 (not e!2231693))))

(declare-fun res!1458149 () Bool)

(assert (=> b!3606171 (=> res!1458149 e!2231693)))

(assert (=> b!3606171 (= res!1458149 (not (matchR!4952 (regex!5624 rule!403) lt!1240236)))))

(declare-fun ruleValid!1889 (LexerInterface!5213 Rule!11048) Bool)

(assert (=> b!3606171 (ruleValid!1889 thiss!23823 rule!403)))

(declare-fun lt!1240229 () Unit!54039)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1044 (LexerInterface!5213 Rule!11048 List!38071) Unit!54039)

(assert (=> b!3606171 (= lt!1240229 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1044 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3606172 () Bool)

(declare-fun e!2231669 () Unit!54039)

(assert (=> b!3606172 (= e!2231672 e!2231669)))

(declare-fun c!623943 () Bool)

(assert (=> b!3606172 (= c!623943 (isSeparator!5624 (rule!8368 (_1!22054 lt!1240237))))))

(declare-fun b!3606173 () Bool)

(declare-fun tp_is_empty!17849 () Bool)

(declare-fun tp!1102723 () Bool)

(assert (=> b!3606173 (= e!2231682 (and tp_is_empty!17849 tp!1102723))))

(declare-fun b!3606174 () Bool)

(declare-fun res!1458150 () Bool)

(declare-fun e!2231688 () Bool)

(assert (=> b!3606174 (=> res!1458150 e!2231688)))

(declare-fun sepAndNonSepRulesDisjointChars!1794 (List!38071 List!38071) Bool)

(assert (=> b!3606174 (= res!1458150 (not (sepAndNonSepRulesDisjointChars!1794 rules!3307 rules!3307)))))

(declare-fun b!3606175 () Bool)

(declare-fun res!1458144 () Bool)

(assert (=> b!3606175 (=> (not res!1458144) (not e!2231674))))

(declare-fun isEmpty!22399 (List!38071) Bool)

(assert (=> b!3606175 (= res!1458144 (not (isEmpty!22399 rules!3307)))))

(declare-fun call!260666 () Unit!54039)

(declare-fun lt!1240231 () C!20952)

(declare-fun bm!260661 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!608 (Regex!10383 List!38070 C!20952) Unit!54039)

(assert (=> bm!260661 (= call!260666 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!608 (regex!5624 (rule!8368 (_1!22054 lt!1240237))) lt!1240250 lt!1240231))))

(declare-fun tp!1102730 () Bool)

(declare-fun e!2231692 () Bool)

(declare-fun b!3606176 () Bool)

(declare-fun inv!21 (TokenValue!5854) Bool)

(assert (=> b!3606176 (= e!2231671 (and (inv!21 (value!180744 token!511)) e!2231692 tp!1102730))))

(declare-fun b!3606177 () Bool)

(declare-fun Unit!54042 () Unit!54039)

(assert (=> b!3606177 (= e!2231669 Unit!54042)))

(declare-fun e!2231689 () Bool)

(assert (=> b!3606178 (= e!2231689 (and tp!1102729 tp!1102732))))

(declare-fun b!3606179 () Bool)

(assert (=> b!3606179 (= e!2231684 e!2231685)))

(declare-fun res!1458140 () Bool)

(assert (=> b!3606179 (=> res!1458140 e!2231685)))

(declare-fun lt!1240239 () Option!7878)

(declare-fun lt!1240248 () Int)

(declare-fun lt!1240247 () TokenValue!5854)

(assert (=> b!3606179 (= res!1458140 (not (= lt!1240239 (Some!7877 (tuple2!37841 (Token!10615 lt!1240247 (rule!8368 (_1!22054 lt!1240237)) lt!1240248 lt!1240250) (_2!22054 lt!1240237))))))))

(declare-fun lt!1240214 () BalanceConc!22732)

(declare-fun size!28925 (BalanceConc!22732) Int)

(assert (=> b!3606179 (= lt!1240248 (size!28925 lt!1240214))))

(assert (=> b!3606179 (= lt!1240247 (apply!9130 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))) lt!1240214))))

(declare-fun lt!1240244 () Unit!54039)

(declare-fun lemmaCharactersSize!677 (Token!10614) Unit!54039)

(assert (=> b!3606179 (= lt!1240244 (lemmaCharactersSize!677 (_1!22054 lt!1240237)))))

(declare-fun lt!1240225 () Unit!54039)

(declare-fun lemmaEqSameImage!815 (TokenValueInjection!11136 BalanceConc!22732 BalanceConc!22732) Unit!54039)

(assert (=> b!3606179 (= lt!1240225 (lemmaEqSameImage!815 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))) lt!1240214 (seqFromList!4177 (originalCharacters!6338 (_1!22054 lt!1240237)))))))

(declare-fun lt!1240241 () Unit!54039)

(declare-fun lemmaSemiInverse!1381 (TokenValueInjection!11136 BalanceConc!22732) Unit!54039)

(assert (=> b!3606179 (= lt!1240241 (lemmaSemiInverse!1381 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))) lt!1240214))))

(declare-fun b!3606180 () Bool)

(assert (=> b!3606180 false))

(declare-fun lt!1240230 () Unit!54039)

(assert (=> b!3606180 (= lt!1240230 call!260666)))

(declare-fun call!260668 () Bool)

(assert (=> b!3606180 (not call!260668)))

(declare-fun lt!1240218 () Unit!54039)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!330 (LexerInterface!5213 List!38071 List!38071 Rule!11048 Rule!11048 C!20952) Unit!54039)

(assert (=> b!3606180 (= lt!1240218 (lemmaNonSepRuleNotContainsCharContainedInASepRule!330 thiss!23823 rules!3307 rules!3307 (rule!8368 (_1!22054 lt!1240237)) rule!403 lt!1240231))))

(declare-fun Unit!54043 () Unit!54039)

(assert (=> b!3606180 (= e!2231691 Unit!54043)))

(declare-fun b!3606181 () Bool)

(declare-fun e!2231668 () Unit!54039)

(declare-fun Unit!54044 () Unit!54039)

(assert (=> b!3606181 (= e!2231668 Unit!54044)))

(declare-fun b!3606182 () Bool)

(declare-fun tp!1102724 () Bool)

(declare-fun inv!51310 (String!42604) Bool)

(declare-fun inv!51314 (TokenValueInjection!11136) Bool)

(assert (=> b!3606182 (= e!2231692 (and tp!1102724 (inv!51310 (tag!6324 (rule!8368 token!511))) (inv!51314 (transformation!5624 (rule!8368 token!511))) e!2231689))))

(declare-fun b!3606183 () Bool)

(declare-fun res!1458143 () Bool)

(assert (=> b!3606183 (=> (not res!1458143) (not e!2231674))))

(declare-fun rulesInvariant!4610 (LexerInterface!5213 List!38071) Bool)

(assert (=> b!3606183 (= res!1458143 (rulesInvariant!4610 thiss!23823 rules!3307))))

(declare-fun b!3606184 () Bool)

(declare-fun res!1458137 () Bool)

(assert (=> b!3606184 (=> res!1458137 e!2231693)))

(assert (=> b!3606184 (= res!1458137 (isEmpty!22398 suffix!1395))))

(declare-fun bm!260662 () Bool)

(declare-fun call!260667 () List!38070)

(declare-fun usedCharacters!838 (Regex!10383) List!38070)

(assert (=> bm!260662 (= call!260667 (usedCharacters!838 (regex!5624 (rule!8368 (_1!22054 lt!1240237)))))))

(declare-fun b!3606185 () Bool)

(declare-fun Unit!54045 () Unit!54039)

(assert (=> b!3606185 (= e!2231691 Unit!54045)))

(declare-fun b!3606186 () Bool)

(declare-fun e!2231673 () Bool)

(declare-fun tp!1102726 () Bool)

(assert (=> b!3606186 (= e!2231681 (and e!2231673 tp!1102726))))

(declare-fun b!3606187 () Bool)

(declare-fun res!1458138 () Bool)

(assert (=> b!3606187 (=> res!1458138 e!2231688)))

(assert (=> b!3606187 (= res!1458138 (not (contains!7311 (usedCharacters!838 (regex!5624 anOtherTypeRule!33)) lt!1240228)))))

(declare-fun bm!260663 () Bool)

(assert (=> bm!260663 (= call!260668 (contains!7311 call!260667 lt!1240231))))

(declare-fun b!3606188 () Bool)

(declare-fun Unit!54046 () Unit!54039)

(assert (=> b!3606188 (= e!2231668 Unit!54046)))

(declare-fun lt!1240233 () Unit!54039)

(assert (=> b!3606188 (= lt!1240233 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!608 (regex!5624 rule!403) lt!1240236 lt!1240231))))

(assert (=> b!3606188 false))

(declare-fun b!3606189 () Bool)

(declare-fun res!1458155 () Bool)

(assert (=> b!3606189 (=> (not res!1458155) (not e!2231674))))

(assert (=> b!3606189 (= res!1458155 (contains!7312 rules!3307 rule!403))))

(declare-fun b!3606190 () Bool)

(assert (=> b!3606190 (= e!2231679 e!2231690)))

(declare-fun res!1458147 () Bool)

(assert (=> b!3606190 (=> res!1458147 e!2231690)))

(declare-fun lt!1240234 () BalanceConc!22732)

(assert (=> b!3606190 (= res!1458147 (<= lt!1240248 (size!28925 lt!1240234)))))

(declare-fun lt!1240222 () Unit!54039)

(assert (=> b!3606190 (= lt!1240222 e!2231672)))

(declare-fun c!623942 () Bool)

(assert (=> b!3606190 (= c!623942 (isSeparator!5624 rule!403))))

(declare-fun lt!1240224 () Unit!54039)

(assert (=> b!3606190 (= lt!1240224 e!2231668)))

(declare-fun c!623940 () Bool)

(declare-fun lt!1240223 () List!38070)

(assert (=> b!3606190 (= c!623940 (not (contains!7311 lt!1240223 lt!1240231)))))

(declare-fun head!7576 (List!38070) C!20952)

(assert (=> b!3606190 (= lt!1240231 (head!7576 lt!1240250))))

(declare-fun e!2231697 () Bool)

(declare-fun tp!1102718 () Bool)

(declare-fun b!3606191 () Bool)

(assert (=> b!3606191 (= e!2231676 (and tp!1102718 (inv!51310 (tag!6324 anOtherTypeRule!33)) (inv!51314 (transformation!5624 anOtherTypeRule!33)) e!2231697))))

(declare-fun b!3606192 () Bool)

(declare-fun e!2231698 () Bool)

(assert (=> b!3606192 (= e!2231698 e!2231695)))

(declare-fun res!1458158 () Bool)

(assert (=> b!3606192 (=> (not res!1458158) (not e!2231695))))

(assert (=> b!3606192 (= res!1458158 (= (_1!22054 lt!1240242) token!511))))

(declare-fun lt!1240217 () Option!7878)

(declare-fun get!12301 (Option!7878) tuple2!37840)

(assert (=> b!3606192 (= lt!1240242 (get!12301 lt!1240217))))

(declare-fun b!3606193 () Bool)

(assert (=> b!3606193 (= e!2231693 e!2231688)))

(declare-fun res!1458154 () Bool)

(assert (=> b!3606193 (=> res!1458154 e!2231688)))

(assert (=> b!3606193 (= res!1458154 (contains!7311 lt!1240223 lt!1240228))))

(assert (=> b!3606193 (= lt!1240228 (head!7576 suffix!1395))))

(assert (=> b!3606193 (= lt!1240223 (usedCharacters!838 (regex!5624 rule!403)))))

(declare-fun b!3606194 () Bool)

(declare-fun res!1458141 () Bool)

(assert (=> b!3606194 (=> (not res!1458141) (not e!2231674))))

(assert (=> b!3606194 (= res!1458141 (not (= (isSeparator!5624 anOtherTypeRule!33) (isSeparator!5624 rule!403))))))

(declare-fun b!3606195 () Bool)

(declare-fun res!1458148 () Bool)

(assert (=> b!3606195 (=> (not res!1458148) (not e!2231695))))

(assert (=> b!3606195 (= res!1458148 (= (rule!8368 token!511) rule!403))))

(declare-fun b!3606196 () Bool)

(assert (=> b!3606196 (= e!2231688 e!2231684)))

(declare-fun res!1458145 () Bool)

(assert (=> b!3606196 (=> res!1458145 e!2231684)))

(declare-fun isPrefix!2987 (List!38070 List!38070) Bool)

(assert (=> b!3606196 (= res!1458145 (not (isPrefix!2987 lt!1240250 lt!1240232)))))

(declare-fun ++!9440 (List!38070 List!38070) List!38070)

(assert (=> b!3606196 (isPrefix!2987 lt!1240250 (++!9440 lt!1240250 (_2!22054 lt!1240237)))))

(declare-fun lt!1240213 () Unit!54039)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1908 (List!38070 List!38070) Unit!54039)

(assert (=> b!3606196 (= lt!1240213 (lemmaConcatTwoListThenFirstIsPrefix!1908 lt!1240250 (_2!22054 lt!1240237)))))

(assert (=> b!3606196 (= lt!1240250 (list!13988 lt!1240214))))

(assert (=> b!3606196 (= lt!1240214 (charsOf!3638 (_1!22054 lt!1240237)))))

(assert (=> b!3606196 e!2231678))

(declare-fun res!1458156 () Bool)

(assert (=> b!3606196 (=> (not res!1458156) (not e!2231678))))

(declare-fun isDefined!6110 (Option!7879) Bool)

(assert (=> b!3606196 (= res!1458156 (isDefined!6110 lt!1240216))))

(declare-fun getRuleFromTag!1230 (LexerInterface!5213 List!38071 String!42604) Option!7879)

(assert (=> b!3606196 (= lt!1240216 (getRuleFromTag!1230 thiss!23823 rules!3307 (tag!6324 (rule!8368 (_1!22054 lt!1240237)))))))

(declare-fun lt!1240238 () Unit!54039)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1230 (LexerInterface!5213 List!38071 List!38070 Token!10614) Unit!54039)

(assert (=> b!3606196 (= lt!1240238 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1230 thiss!23823 rules!3307 lt!1240232 (_1!22054 lt!1240237)))))

(assert (=> b!3606196 (= lt!1240237 (get!12301 lt!1240239))))

(declare-fun lt!1240220 () Unit!54039)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!893 (LexerInterface!5213 List!38071 List!38070 List!38070) Unit!54039)

(assert (=> b!3606196 (= lt!1240220 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!893 thiss!23823 rules!3307 lt!1240236 suffix!1395))))

(declare-fun maxPrefix!2747 (LexerInterface!5213 List!38071 List!38070) Option!7878)

(assert (=> b!3606196 (= lt!1240239 (maxPrefix!2747 thiss!23823 rules!3307 lt!1240232))))

(assert (=> b!3606196 (isPrefix!2987 lt!1240236 lt!1240232)))

(declare-fun lt!1240240 () Unit!54039)

(assert (=> b!3606196 (= lt!1240240 (lemmaConcatTwoListThenFirstIsPrefix!1908 lt!1240236 suffix!1395))))

(assert (=> b!3606196 (= lt!1240232 (++!9440 lt!1240236 suffix!1395))))

(declare-fun b!3606197 () Bool)

(assert (=> b!3606197 (= e!2231687 (= (rule!8368 (_1!22054 lt!1240237)) lt!1240245))))

(declare-fun b!3606198 () Bool)

(declare-fun tp!1102721 () Bool)

(assert (=> b!3606198 (= e!2231696 (and tp!1102721 (inv!51310 (tag!6324 rule!403)) (inv!51314 (transformation!5624 rule!403)) e!2231694))))

(declare-fun b!3606199 () Bool)

(assert (=> b!3606199 (= e!2231674 e!2231698)))

(declare-fun res!1458152 () Bool)

(assert (=> b!3606199 (=> (not res!1458152) (not e!2231698))))

(declare-fun isDefined!6111 (Option!7878) Bool)

(assert (=> b!3606199 (= res!1458152 (isDefined!6111 lt!1240217))))

(assert (=> b!3606199 (= lt!1240217 (maxPrefix!2747 thiss!23823 rules!3307 lt!1240236))))

(assert (=> b!3606199 (= lt!1240236 (list!13988 lt!1240234))))

(assert (=> b!3606199 (= lt!1240234 (charsOf!3638 token!511))))

(declare-fun b!3606200 () Bool)

(declare-fun tp!1102722 () Bool)

(assert (=> b!3606200 (= e!2231673 (and tp!1102722 (inv!51310 (tag!6324 (h!43367 rules!3307))) (inv!51314 (transformation!5624 (h!43367 rules!3307))) e!2231670))))

(declare-fun b!3606201 () Bool)

(assert (=> b!3606201 false))

(declare-fun lt!1240227 () Unit!54039)

(assert (=> b!3606201 (= lt!1240227 call!260666)))

(assert (=> b!3606201 (not call!260668)))

(declare-fun lt!1240243 () Unit!54039)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!212 (LexerInterface!5213 List!38071 List!38071 Rule!11048 Rule!11048 C!20952) Unit!54039)

(assert (=> b!3606201 (= lt!1240243 (lemmaSepRuleNotContainsCharContainedInANonSepRule!212 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8368 (_1!22054 lt!1240237)) lt!1240231))))

(declare-fun Unit!54047 () Unit!54039)

(assert (=> b!3606201 (= e!2231669 Unit!54047)))

(assert (=> b!3606202 (= e!2231697 (and tp!1102727 tp!1102731))))

(assert (= (and start!335518 res!1458157) b!3606175))

(assert (= (and b!3606175 res!1458144) b!3606183))

(assert (= (and b!3606183 res!1458143) b!3606189))

(assert (= (and b!3606189 res!1458155) b!3606168))

(assert (= (and b!3606168 res!1458153) b!3606194))

(assert (= (and b!3606194 res!1458141) b!3606199))

(assert (= (and b!3606199 res!1458152) b!3606192))

(assert (= (and b!3606192 res!1458158) b!3606164))

(assert (= (and b!3606164 res!1458146) b!3606195))

(assert (= (and b!3606195 res!1458148) b!3606171))

(assert (= (and b!3606171 (not res!1458149)) b!3606184))

(assert (= (and b!3606184 (not res!1458137)) b!3606193))

(assert (= (and b!3606193 (not res!1458154)) b!3606187))

(assert (= (and b!3606187 (not res!1458138)) b!3606174))

(assert (= (and b!3606174 (not res!1458150)) b!3606196))

(assert (= (and b!3606196 res!1458156) b!3606170))

(assert (= (and b!3606170 res!1458139) b!3606197))

(assert (= (and b!3606196 (not res!1458145)) b!3606166))

(assert (= (and b!3606166 (not res!1458142)) b!3606179))

(assert (= (and b!3606179 (not res!1458140)) b!3606163))

(assert (= (and b!3606163 (not res!1458151)) b!3606190))

(assert (= (and b!3606190 c!623940) b!3606188))

(assert (= (and b!3606190 (not c!623940)) b!3606181))

(assert (= (and b!3606190 c!623942) b!3606162))

(assert (= (and b!3606190 (not c!623942)) b!3606172))

(assert (= (and b!3606162 c!623941) b!3606180))

(assert (= (and b!3606162 (not c!623941)) b!3606185))

(assert (= (and b!3606172 c!623943) b!3606201))

(assert (= (and b!3606172 (not c!623943)) b!3606177))

(assert (= (or b!3606180 b!3606201) bm!260661))

(assert (= (or b!3606180 b!3606201) bm!260662))

(assert (= (or b!3606180 b!3606201) bm!260663))

(assert (= (and b!3606190 (not res!1458147)) b!3606165))

(assert (= b!3606200 b!3606167))

(assert (= b!3606186 b!3606200))

(assert (= (and start!335518 ((_ is Cons!37947) rules!3307)) b!3606186))

(assert (= (and start!335518 ((_ is Cons!37946) suffix!1395)) b!3606173))

(assert (= b!3606182 b!3606178))

(assert (= b!3606176 b!3606182))

(assert (= start!335518 b!3606176))

(assert (= b!3606198 b!3606169))

(assert (= start!335518 b!3606198))

(assert (= b!3606191 b!3606202))

(assert (= start!335518 b!3606191))

(declare-fun m!4102955 () Bool)

(assert (=> b!3606163 m!4102955))

(declare-fun m!4102957 () Bool)

(assert (=> b!3606163 m!4102957))

(declare-fun m!4102959 () Bool)

(assert (=> b!3606163 m!4102959))

(declare-fun m!4102961 () Bool)

(assert (=> b!3606163 m!4102961))

(declare-fun m!4102963 () Bool)

(assert (=> b!3606163 m!4102963))

(declare-fun m!4102965 () Bool)

(assert (=> b!3606163 m!4102965))

(assert (=> b!3606163 m!4102959))

(declare-fun m!4102967 () Bool)

(assert (=> b!3606163 m!4102967))

(declare-fun m!4102969 () Bool)

(assert (=> b!3606190 m!4102969))

(declare-fun m!4102971 () Bool)

(assert (=> b!3606190 m!4102971))

(declare-fun m!4102973 () Bool)

(assert (=> b!3606190 m!4102973))

(declare-fun m!4102975 () Bool)

(assert (=> start!335518 m!4102975))

(declare-fun m!4102977 () Bool)

(assert (=> b!3606182 m!4102977))

(declare-fun m!4102979 () Bool)

(assert (=> b!3606182 m!4102979))

(declare-fun m!4102981 () Bool)

(assert (=> b!3606198 m!4102981))

(declare-fun m!4102983 () Bool)

(assert (=> b!3606198 m!4102983))

(declare-fun m!4102985 () Bool)

(assert (=> b!3606168 m!4102985))

(declare-fun m!4102987 () Bool)

(assert (=> bm!260662 m!4102987))

(declare-fun m!4102989 () Bool)

(assert (=> b!3606175 m!4102989))

(declare-fun m!4102991 () Bool)

(assert (=> b!3606199 m!4102991))

(declare-fun m!4102993 () Bool)

(assert (=> b!3606199 m!4102993))

(declare-fun m!4102995 () Bool)

(assert (=> b!3606199 m!4102995))

(declare-fun m!4102997 () Bool)

(assert (=> b!3606199 m!4102997))

(declare-fun m!4102999 () Bool)

(assert (=> b!3606176 m!4102999))

(declare-fun m!4103001 () Bool)

(assert (=> b!3606184 m!4103001))

(declare-fun m!4103003 () Bool)

(assert (=> bm!260661 m!4103003))

(declare-fun m!4103005 () Bool)

(assert (=> b!3606183 m!4103005))

(declare-fun m!4103007 () Bool)

(assert (=> b!3606164 m!4103007))

(declare-fun m!4103009 () Bool)

(assert (=> b!3606200 m!4103009))

(declare-fun m!4103011 () Bool)

(assert (=> b!3606200 m!4103011))

(declare-fun m!4103013 () Bool)

(assert (=> b!3606191 m!4103013))

(declare-fun m!4103015 () Bool)

(assert (=> b!3606191 m!4103015))

(declare-fun m!4103017 () Bool)

(assert (=> b!3606171 m!4103017))

(declare-fun m!4103019 () Bool)

(assert (=> b!3606171 m!4103019))

(declare-fun m!4103021 () Bool)

(assert (=> b!3606171 m!4103021))

(declare-fun m!4103023 () Bool)

(assert (=> bm!260663 m!4103023))

(declare-fun m!4103025 () Bool)

(assert (=> b!3606187 m!4103025))

(assert (=> b!3606187 m!4103025))

(declare-fun m!4103027 () Bool)

(assert (=> b!3606187 m!4103027))

(declare-fun m!4103029 () Bool)

(assert (=> b!3606188 m!4103029))

(declare-fun m!4103031 () Bool)

(assert (=> b!3606189 m!4103031))

(declare-fun m!4103033 () Bool)

(assert (=> b!3606174 m!4103033))

(declare-fun m!4103035 () Bool)

(assert (=> b!3606180 m!4103035))

(declare-fun m!4103037 () Bool)

(assert (=> b!3606196 m!4103037))

(declare-fun m!4103039 () Bool)

(assert (=> b!3606196 m!4103039))

(declare-fun m!4103041 () Bool)

(assert (=> b!3606196 m!4103041))

(declare-fun m!4103043 () Bool)

(assert (=> b!3606196 m!4103043))

(assert (=> b!3606196 m!4103041))

(declare-fun m!4103045 () Bool)

(assert (=> b!3606196 m!4103045))

(declare-fun m!4103047 () Bool)

(assert (=> b!3606196 m!4103047))

(declare-fun m!4103049 () Bool)

(assert (=> b!3606196 m!4103049))

(declare-fun m!4103051 () Bool)

(assert (=> b!3606196 m!4103051))

(declare-fun m!4103053 () Bool)

(assert (=> b!3606196 m!4103053))

(declare-fun m!4103055 () Bool)

(assert (=> b!3606196 m!4103055))

(declare-fun m!4103057 () Bool)

(assert (=> b!3606196 m!4103057))

(declare-fun m!4103059 () Bool)

(assert (=> b!3606196 m!4103059))

(declare-fun m!4103061 () Bool)

(assert (=> b!3606196 m!4103061))

(declare-fun m!4103063 () Bool)

(assert (=> b!3606196 m!4103063))

(declare-fun m!4103065 () Bool)

(assert (=> b!3606196 m!4103065))

(declare-fun m!4103067 () Bool)

(assert (=> b!3606201 m!4103067))

(declare-fun m!4103069 () Bool)

(assert (=> b!3606166 m!4103069))

(declare-fun m!4103071 () Bool)

(assert (=> b!3606192 m!4103071))

(assert (=> b!3606170 m!4103051))

(assert (=> b!3606170 m!4103051))

(declare-fun m!4103073 () Bool)

(assert (=> b!3606170 m!4103073))

(assert (=> b!3606170 m!4103073))

(declare-fun m!4103075 () Bool)

(assert (=> b!3606170 m!4103075))

(declare-fun m!4103077 () Bool)

(assert (=> b!3606170 m!4103077))

(declare-fun m!4103079 () Bool)

(assert (=> b!3606165 m!4103079))

(declare-fun m!4103081 () Bool)

(assert (=> b!3606165 m!4103081))

(declare-fun m!4103083 () Bool)

(assert (=> b!3606193 m!4103083))

(declare-fun m!4103085 () Bool)

(assert (=> b!3606193 m!4103085))

(declare-fun m!4103087 () Bool)

(assert (=> b!3606193 m!4103087))

(declare-fun m!4103089 () Bool)

(assert (=> b!3606179 m!4103089))

(declare-fun m!4103091 () Bool)

(assert (=> b!3606179 m!4103091))

(declare-fun m!4103093 () Bool)

(assert (=> b!3606179 m!4103093))

(declare-fun m!4103095 () Bool)

(assert (=> b!3606179 m!4103095))

(declare-fun m!4103097 () Bool)

(assert (=> b!3606179 m!4103097))

(assert (=> b!3606179 m!4103093))

(declare-fun m!4103099 () Bool)

(assert (=> b!3606179 m!4103099))

(check-sat b_and!262543 (not b!3606193) (not b!3606180) (not b!3606163) (not b!3606182) (not b!3606184) (not b_next!94197) (not b!3606171) (not b!3606173) (not b_next!94193) (not b!3606189) (not b_next!94199) (not b!3606170) b_and!262533 (not b!3606191) (not b!3606183) (not b!3606199) (not start!335518) (not b!3606198) (not b!3606200) b_and!262531 (not b!3606192) (not b!3606168) (not b!3606175) (not b!3606188) (not b_next!94205) (not b!3606187) (not bm!260662) (not b_next!94201) (not b!3606176) (not b!3606179) tp_is_empty!17849 (not b!3606196) (not b!3606174) b_and!262537 (not b!3606201) (not b_next!94207) (not bm!260663) (not b!3606190) b_and!262541 b_and!262535 (not b_next!94203) (not b!3606166) (not bm!260661) b_and!262545 b_and!262539 (not b_next!94195) (not b!3606186) (not b!3606165) (not b!3606164))
(check-sat b_and!262531 b_and!262543 (not b_next!94205) (not b_next!94201) b_and!262537 (not b_next!94207) (not b_next!94197) b_and!262541 (not b_next!94193) b_and!262545 (not b_next!94199) b_and!262533 b_and!262535 (not b_next!94203) b_and!262539 (not b_next!94195))
(get-model)

(declare-fun d!1062173 () Bool)

(assert (=> d!1062173 (not (matchR!4952 (regex!5624 rule!403) lt!1240236))))

(declare-fun lt!1240253 () Unit!54039)

(declare-fun choose!21047 (Regex!10383 List!38070 C!20952) Unit!54039)

(assert (=> d!1062173 (= lt!1240253 (choose!21047 (regex!5624 rule!403) lt!1240236 lt!1240231))))

(declare-fun validRegex!4754 (Regex!10383) Bool)

(assert (=> d!1062173 (validRegex!4754 (regex!5624 rule!403))))

(assert (=> d!1062173 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!608 (regex!5624 rule!403) lt!1240236 lt!1240231) lt!1240253)))

(declare-fun bs!570696 () Bool)

(assert (= bs!570696 d!1062173))

(assert (=> bs!570696 m!4103017))

(declare-fun m!4103101 () Bool)

(assert (=> bs!570696 m!4103101))

(declare-fun m!4103103 () Bool)

(assert (=> bs!570696 m!4103103))

(assert (=> b!3606188 d!1062173))

(declare-fun b!3606231 () Bool)

(declare-fun e!2231714 () Bool)

(assert (=> b!3606231 (= e!2231714 (= (head!7576 (list!13988 (charsOf!3638 (_1!22054 lt!1240237)))) (c!623944 (regex!5624 lt!1240245))))))

(declare-fun b!3606232 () Bool)

(declare-fun e!2231718 () Bool)

(assert (=> b!3606232 (= e!2231718 (not (= (head!7576 (list!13988 (charsOf!3638 (_1!22054 lt!1240237)))) (c!623944 (regex!5624 lt!1240245)))))))

(declare-fun b!3606233 () Bool)

(declare-fun e!2231716 () Bool)

(declare-fun lt!1240256 () Bool)

(assert (=> b!3606233 (= e!2231716 (not lt!1240256))))

(declare-fun b!3606234 () Bool)

(declare-fun res!1458186 () Bool)

(declare-fun e!2231713 () Bool)

(assert (=> b!3606234 (=> res!1458186 e!2231713)))

(assert (=> b!3606234 (= res!1458186 e!2231714)))

(declare-fun res!1458190 () Bool)

(assert (=> b!3606234 (=> (not res!1458190) (not e!2231714))))

(assert (=> b!3606234 (= res!1458190 lt!1240256)))

(declare-fun b!3606235 () Bool)

(declare-fun e!2231715 () Bool)

(declare-fun call!260671 () Bool)

(assert (=> b!3606235 (= e!2231715 (= lt!1240256 call!260671))))

(declare-fun b!3606236 () Bool)

(declare-fun e!2231717 () Bool)

(assert (=> b!3606236 (= e!2231713 e!2231717)))

(declare-fun res!1458188 () Bool)

(assert (=> b!3606236 (=> (not res!1458188) (not e!2231717))))

(assert (=> b!3606236 (= res!1458188 (not lt!1240256))))

(declare-fun d!1062175 () Bool)

(assert (=> d!1062175 e!2231715))

(declare-fun c!623955 () Bool)

(assert (=> d!1062175 (= c!623955 ((_ is EmptyExpr!10383) (regex!5624 lt!1240245)))))

(declare-fun e!2231719 () Bool)

(assert (=> d!1062175 (= lt!1240256 e!2231719)))

(declare-fun c!623953 () Bool)

(assert (=> d!1062175 (= c!623953 (isEmpty!22398 (list!13988 (charsOf!3638 (_1!22054 lt!1240237)))))))

(assert (=> d!1062175 (validRegex!4754 (regex!5624 lt!1240245))))

(assert (=> d!1062175 (= (matchR!4952 (regex!5624 lt!1240245) (list!13988 (charsOf!3638 (_1!22054 lt!1240237)))) lt!1240256)))

(declare-fun b!3606237 () Bool)

(declare-fun res!1458187 () Bool)

(assert (=> b!3606237 (=> (not res!1458187) (not e!2231714))))

(assert (=> b!3606237 (= res!1458187 (not call!260671))))

(declare-fun b!3606238 () Bool)

(declare-fun derivativeStep!3141 (Regex!10383 C!20952) Regex!10383)

(declare-fun tail!5591 (List!38070) List!38070)

(assert (=> b!3606238 (= e!2231719 (matchR!4952 (derivativeStep!3141 (regex!5624 lt!1240245) (head!7576 (list!13988 (charsOf!3638 (_1!22054 lt!1240237))))) (tail!5591 (list!13988 (charsOf!3638 (_1!22054 lt!1240237))))))))

(declare-fun b!3606239 () Bool)

(assert (=> b!3606239 (= e!2231715 e!2231716)))

(declare-fun c!623954 () Bool)

(assert (=> b!3606239 (= c!623954 ((_ is EmptyLang!10383) (regex!5624 lt!1240245)))))

(declare-fun b!3606240 () Bool)

(declare-fun res!1458189 () Bool)

(assert (=> b!3606240 (=> res!1458189 e!2231718)))

(assert (=> b!3606240 (= res!1458189 (not (isEmpty!22398 (tail!5591 (list!13988 (charsOf!3638 (_1!22054 lt!1240237)))))))))

(declare-fun b!3606241 () Bool)

(declare-fun res!1458192 () Bool)

(assert (=> b!3606241 (=> res!1458192 e!2231713)))

(assert (=> b!3606241 (= res!1458192 (not ((_ is ElementMatch!10383) (regex!5624 lt!1240245))))))

(assert (=> b!3606241 (= e!2231716 e!2231713)))

(declare-fun bm!260666 () Bool)

(assert (=> bm!260666 (= call!260671 (isEmpty!22398 (list!13988 (charsOf!3638 (_1!22054 lt!1240237)))))))

(declare-fun b!3606242 () Bool)

(declare-fun res!1458193 () Bool)

(assert (=> b!3606242 (=> (not res!1458193) (not e!2231714))))

(assert (=> b!3606242 (= res!1458193 (isEmpty!22398 (tail!5591 (list!13988 (charsOf!3638 (_1!22054 lt!1240237))))))))

(declare-fun b!3606243 () Bool)

(assert (=> b!3606243 (= e!2231717 e!2231718)))

(declare-fun res!1458191 () Bool)

(assert (=> b!3606243 (=> res!1458191 e!2231718)))

(assert (=> b!3606243 (= res!1458191 call!260671)))

(declare-fun b!3606244 () Bool)

(declare-fun nullable!3592 (Regex!10383) Bool)

(assert (=> b!3606244 (= e!2231719 (nullable!3592 (regex!5624 lt!1240245)))))

(assert (= (and d!1062175 c!623953) b!3606244))

(assert (= (and d!1062175 (not c!623953)) b!3606238))

(assert (= (and d!1062175 c!623955) b!3606235))

(assert (= (and d!1062175 (not c!623955)) b!3606239))

(assert (= (and b!3606239 c!623954) b!3606233))

(assert (= (and b!3606239 (not c!623954)) b!3606241))

(assert (= (and b!3606241 (not res!1458192)) b!3606234))

(assert (= (and b!3606234 res!1458190) b!3606237))

(assert (= (and b!3606237 res!1458187) b!3606242))

(assert (= (and b!3606242 res!1458193) b!3606231))

(assert (= (and b!3606234 (not res!1458186)) b!3606236))

(assert (= (and b!3606236 res!1458188) b!3606243))

(assert (= (and b!3606243 (not res!1458191)) b!3606240))

(assert (= (and b!3606240 (not res!1458189)) b!3606232))

(assert (= (or b!3606235 b!3606237 b!3606243) bm!260666))

(assert (=> b!3606240 m!4103073))

(declare-fun m!4103105 () Bool)

(assert (=> b!3606240 m!4103105))

(assert (=> b!3606240 m!4103105))

(declare-fun m!4103107 () Bool)

(assert (=> b!3606240 m!4103107))

(assert (=> b!3606242 m!4103073))

(assert (=> b!3606242 m!4103105))

(assert (=> b!3606242 m!4103105))

(assert (=> b!3606242 m!4103107))

(assert (=> b!3606238 m!4103073))

(declare-fun m!4103109 () Bool)

(assert (=> b!3606238 m!4103109))

(assert (=> b!3606238 m!4103109))

(declare-fun m!4103111 () Bool)

(assert (=> b!3606238 m!4103111))

(assert (=> b!3606238 m!4103073))

(assert (=> b!3606238 m!4103105))

(assert (=> b!3606238 m!4103111))

(assert (=> b!3606238 m!4103105))

(declare-fun m!4103113 () Bool)

(assert (=> b!3606238 m!4103113))

(assert (=> d!1062175 m!4103073))

(declare-fun m!4103115 () Bool)

(assert (=> d!1062175 m!4103115))

(declare-fun m!4103117 () Bool)

(assert (=> d!1062175 m!4103117))

(assert (=> b!3606232 m!4103073))

(assert (=> b!3606232 m!4103109))

(assert (=> b!3606231 m!4103073))

(assert (=> b!3606231 m!4103109))

(assert (=> bm!260666 m!4103073))

(assert (=> bm!260666 m!4103115))

(declare-fun m!4103119 () Bool)

(assert (=> b!3606244 m!4103119))

(assert (=> b!3606170 d!1062175))

(declare-fun d!1062177 () Bool)

(declare-fun list!13989 (Conc!11559) List!38070)

(assert (=> d!1062177 (= (list!13988 (charsOf!3638 (_1!22054 lt!1240237))) (list!13989 (c!623945 (charsOf!3638 (_1!22054 lt!1240237)))))))

(declare-fun bs!570697 () Bool)

(assert (= bs!570697 d!1062177))

(declare-fun m!4103121 () Bool)

(assert (=> bs!570697 m!4103121))

(assert (=> b!3606170 d!1062177))

(declare-fun d!1062181 () Bool)

(declare-fun lt!1240262 () BalanceConc!22732)

(assert (=> d!1062181 (= (list!13988 lt!1240262) (originalCharacters!6338 (_1!22054 lt!1240237)))))

(declare-fun dynLambda!16399 (Int TokenValue!5854) BalanceConc!22732)

(assert (=> d!1062181 (= lt!1240262 (dynLambda!16399 (toChars!7767 (transformation!5624 (rule!8368 (_1!22054 lt!1240237)))) (value!180744 (_1!22054 lt!1240237))))))

(assert (=> d!1062181 (= (charsOf!3638 (_1!22054 lt!1240237)) lt!1240262)))

(declare-fun b_lambda!106687 () Bool)

(assert (=> (not b_lambda!106687) (not d!1062181)))

(declare-fun tb!206577 () Bool)

(declare-fun t!292884 () Bool)

(assert (=> (and b!3606178 (= (toChars!7767 (transformation!5624 (rule!8368 token!511))) (toChars!7767 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) t!292884) tb!206577))

(declare-fun b!3606255 () Bool)

(declare-fun e!2231725 () Bool)

(declare-fun tp!1102735 () Bool)

(declare-fun inv!51315 (Conc!11559) Bool)

(assert (=> b!3606255 (= e!2231725 (and (inv!51315 (c!623945 (dynLambda!16399 (toChars!7767 (transformation!5624 (rule!8368 (_1!22054 lt!1240237)))) (value!180744 (_1!22054 lt!1240237))))) tp!1102735))))

(declare-fun result!251778 () Bool)

(declare-fun inv!51316 (BalanceConc!22732) Bool)

(assert (=> tb!206577 (= result!251778 (and (inv!51316 (dynLambda!16399 (toChars!7767 (transformation!5624 (rule!8368 (_1!22054 lt!1240237)))) (value!180744 (_1!22054 lt!1240237)))) e!2231725))))

(assert (= tb!206577 b!3606255))

(declare-fun m!4103133 () Bool)

(assert (=> b!3606255 m!4103133))

(declare-fun m!4103135 () Bool)

(assert (=> tb!206577 m!4103135))

(assert (=> d!1062181 t!292884))

(declare-fun b_and!262547 () Bool)

(assert (= b_and!262533 (and (=> t!292884 result!251778) b_and!262547)))

(declare-fun t!292886 () Bool)

(declare-fun tb!206579 () Bool)

(assert (=> (and b!3606169 (= (toChars!7767 (transformation!5624 rule!403)) (toChars!7767 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) t!292886) tb!206579))

(declare-fun result!251782 () Bool)

(assert (= result!251782 result!251778))

(assert (=> d!1062181 t!292886))

(declare-fun b_and!262549 () Bool)

(assert (= b_and!262537 (and (=> t!292886 result!251782) b_and!262549)))

(declare-fun tb!206581 () Bool)

(declare-fun t!292888 () Bool)

(assert (=> (and b!3606202 (= (toChars!7767 (transformation!5624 anOtherTypeRule!33)) (toChars!7767 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) t!292888) tb!206581))

(declare-fun result!251784 () Bool)

(assert (= result!251784 result!251778))

(assert (=> d!1062181 t!292888))

(declare-fun b_and!262551 () Bool)

(assert (= b_and!262541 (and (=> t!292888 result!251784) b_and!262551)))

(declare-fun t!292890 () Bool)

(declare-fun tb!206583 () Bool)

(assert (=> (and b!3606167 (= (toChars!7767 (transformation!5624 (h!43367 rules!3307))) (toChars!7767 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) t!292890) tb!206583))

(declare-fun result!251786 () Bool)

(assert (= result!251786 result!251778))

(assert (=> d!1062181 t!292890))

(declare-fun b_and!262553 () Bool)

(assert (= b_and!262545 (and (=> t!292890 result!251786) b_and!262553)))

(declare-fun m!4103137 () Bool)

(assert (=> d!1062181 m!4103137))

(declare-fun m!4103139 () Bool)

(assert (=> d!1062181 m!4103139))

(assert (=> b!3606170 d!1062181))

(declare-fun d!1062187 () Bool)

(assert (=> d!1062187 (= (get!12300 lt!1240216) (v!37608 lt!1240216))))

(assert (=> b!3606170 d!1062187))

(declare-fun d!1062189 () Bool)

(declare-fun lt!1240268 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5423 (List!38070) (InoxSet C!20952))

(assert (=> d!1062189 (= lt!1240268 (select (content!5423 (usedCharacters!838 (regex!5624 anOtherTypeRule!33))) lt!1240228))))

(declare-fun e!2231730 () Bool)

(assert (=> d!1062189 (= lt!1240268 e!2231730)))

(declare-fun res!1458199 () Bool)

(assert (=> d!1062189 (=> (not res!1458199) (not e!2231730))))

(assert (=> d!1062189 (= res!1458199 ((_ is Cons!37946) (usedCharacters!838 (regex!5624 anOtherTypeRule!33))))))

(assert (=> d!1062189 (= (contains!7311 (usedCharacters!838 (regex!5624 anOtherTypeRule!33)) lt!1240228) lt!1240268)))

(declare-fun b!3606260 () Bool)

(declare-fun e!2231731 () Bool)

(assert (=> b!3606260 (= e!2231730 e!2231731)))

(declare-fun res!1458198 () Bool)

(assert (=> b!3606260 (=> res!1458198 e!2231731)))

(assert (=> b!3606260 (= res!1458198 (= (h!43366 (usedCharacters!838 (regex!5624 anOtherTypeRule!33))) lt!1240228))))

(declare-fun b!3606261 () Bool)

(assert (=> b!3606261 (= e!2231731 (contains!7311 (t!292881 (usedCharacters!838 (regex!5624 anOtherTypeRule!33))) lt!1240228))))

(assert (= (and d!1062189 res!1458199) b!3606260))

(assert (= (and b!3606260 (not res!1458198)) b!3606261))

(assert (=> d!1062189 m!4103025))

(declare-fun m!4103141 () Bool)

(assert (=> d!1062189 m!4103141))

(declare-fun m!4103143 () Bool)

(assert (=> d!1062189 m!4103143))

(declare-fun m!4103145 () Bool)

(assert (=> b!3606261 m!4103145))

(assert (=> b!3606187 d!1062189))

(declare-fun b!3606278 () Bool)

(declare-fun e!2231742 () List!38070)

(declare-fun e!2231741 () List!38070)

(assert (=> b!3606278 (= e!2231742 e!2231741)))

(declare-fun c!623967 () Bool)

(assert (=> b!3606278 (= c!623967 ((_ is Union!10383) (regex!5624 anOtherTypeRule!33)))))

(declare-fun b!3606279 () Bool)

(declare-fun call!260680 () List!38070)

(assert (=> b!3606279 (= e!2231741 call!260680)))

(declare-fun call!260682 () List!38070)

(declare-fun bm!260675 () Bool)

(declare-fun c!623970 () Bool)

(assert (=> bm!260675 (= call!260682 (usedCharacters!838 (ite c!623970 (reg!10712 (regex!5624 anOtherTypeRule!33)) (ite c!623967 (regTwo!21279 (regex!5624 anOtherTypeRule!33)) (regOne!21278 (regex!5624 anOtherTypeRule!33))))))))

(declare-fun b!3606280 () Bool)

(assert (=> b!3606280 (= e!2231741 call!260680)))

(declare-fun b!3606281 () Bool)

(declare-fun e!2231743 () List!38070)

(assert (=> b!3606281 (= e!2231743 (Cons!37946 (c!623944 (regex!5624 anOtherTypeRule!33)) Nil!37946))))

(declare-fun bm!260676 () Bool)

(declare-fun call!260683 () List!38070)

(assert (=> bm!260676 (= call!260683 call!260682)))

(declare-fun d!1062191 () Bool)

(declare-fun c!623968 () Bool)

(assert (=> d!1062191 (= c!623968 (or ((_ is EmptyExpr!10383) (regex!5624 anOtherTypeRule!33)) ((_ is EmptyLang!10383) (regex!5624 anOtherTypeRule!33))))))

(declare-fun e!2231740 () List!38070)

(assert (=> d!1062191 (= (usedCharacters!838 (regex!5624 anOtherTypeRule!33)) e!2231740)))

(declare-fun b!3606282 () Bool)

(assert (=> b!3606282 (= e!2231742 call!260682)))

(declare-fun call!260681 () List!38070)

(declare-fun bm!260677 () Bool)

(assert (=> bm!260677 (= call!260680 (++!9440 (ite c!623967 call!260681 call!260683) (ite c!623967 call!260683 call!260681)))))

(declare-fun b!3606283 () Bool)

(assert (=> b!3606283 (= c!623970 ((_ is Star!10383) (regex!5624 anOtherTypeRule!33)))))

(assert (=> b!3606283 (= e!2231743 e!2231742)))

(declare-fun bm!260678 () Bool)

(assert (=> bm!260678 (= call!260681 (usedCharacters!838 (ite c!623967 (regOne!21279 (regex!5624 anOtherTypeRule!33)) (regTwo!21278 (regex!5624 anOtherTypeRule!33)))))))

(declare-fun b!3606284 () Bool)

(assert (=> b!3606284 (= e!2231740 Nil!37946)))

(declare-fun b!3606285 () Bool)

(assert (=> b!3606285 (= e!2231740 e!2231743)))

(declare-fun c!623969 () Bool)

(assert (=> b!3606285 (= c!623969 ((_ is ElementMatch!10383) (regex!5624 anOtherTypeRule!33)))))

(assert (= (and d!1062191 c!623968) b!3606284))

(assert (= (and d!1062191 (not c!623968)) b!3606285))

(assert (= (and b!3606285 c!623969) b!3606281))

(assert (= (and b!3606285 (not c!623969)) b!3606283))

(assert (= (and b!3606283 c!623970) b!3606282))

(assert (= (and b!3606283 (not c!623970)) b!3606278))

(assert (= (and b!3606278 c!623967) b!3606279))

(assert (= (and b!3606278 (not c!623967)) b!3606280))

(assert (= (or b!3606279 b!3606280) bm!260678))

(assert (= (or b!3606279 b!3606280) bm!260676))

(assert (= (or b!3606279 b!3606280) bm!260677))

(assert (= (or b!3606282 bm!260676) bm!260675))

(declare-fun m!4103147 () Bool)

(assert (=> bm!260675 m!4103147))

(declare-fun m!4103149 () Bool)

(assert (=> bm!260677 m!4103149))

(declare-fun m!4103151 () Bool)

(assert (=> bm!260678 m!4103151))

(assert (=> b!3606187 d!1062191))

(declare-fun d!1062193 () Bool)

(declare-fun lt!1240271 () Bool)

(declare-fun content!5424 (List!38071) (InoxSet Rule!11048))

(assert (=> d!1062193 (= lt!1240271 (select (content!5424 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2231749 () Bool)

(assert (=> d!1062193 (= lt!1240271 e!2231749)))

(declare-fun res!1458204 () Bool)

(assert (=> d!1062193 (=> (not res!1458204) (not e!2231749))))

(assert (=> d!1062193 (= res!1458204 ((_ is Cons!37947) rules!3307))))

(assert (=> d!1062193 (= (contains!7312 rules!3307 anOtherTypeRule!33) lt!1240271)))

(declare-fun b!3606290 () Bool)

(declare-fun e!2231748 () Bool)

(assert (=> b!3606290 (= e!2231749 e!2231748)))

(declare-fun res!1458205 () Bool)

(assert (=> b!3606290 (=> res!1458205 e!2231748)))

(assert (=> b!3606290 (= res!1458205 (= (h!43367 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3606291 () Bool)

(assert (=> b!3606291 (= e!2231748 (contains!7312 (t!292882 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1062193 res!1458204) b!3606290))

(assert (= (and b!3606290 (not res!1458205)) b!3606291))

(declare-fun m!4103153 () Bool)

(assert (=> d!1062193 m!4103153))

(declare-fun m!4103155 () Bool)

(assert (=> d!1062193 m!4103155))

(declare-fun m!4103157 () Bool)

(assert (=> b!3606291 m!4103157))

(assert (=> b!3606168 d!1062193))

(declare-fun d!1062195 () Bool)

(declare-fun lt!1240272 () Bool)

(assert (=> d!1062195 (= lt!1240272 (select (content!5423 call!260667) lt!1240231))))

(declare-fun e!2231750 () Bool)

(assert (=> d!1062195 (= lt!1240272 e!2231750)))

(declare-fun res!1458207 () Bool)

(assert (=> d!1062195 (=> (not res!1458207) (not e!2231750))))

(assert (=> d!1062195 (= res!1458207 ((_ is Cons!37946) call!260667))))

(assert (=> d!1062195 (= (contains!7311 call!260667 lt!1240231) lt!1240272)))

(declare-fun b!3606292 () Bool)

(declare-fun e!2231751 () Bool)

(assert (=> b!3606292 (= e!2231750 e!2231751)))

(declare-fun res!1458206 () Bool)

(assert (=> b!3606292 (=> res!1458206 e!2231751)))

(assert (=> b!3606292 (= res!1458206 (= (h!43366 call!260667) lt!1240231))))

(declare-fun b!3606293 () Bool)

(assert (=> b!3606293 (= e!2231751 (contains!7311 (t!292881 call!260667) lt!1240231))))

(assert (= (and d!1062195 res!1458207) b!3606292))

(assert (= (and b!3606292 (not res!1458206)) b!3606293))

(declare-fun m!4103159 () Bool)

(assert (=> d!1062195 m!4103159))

(declare-fun m!4103161 () Bool)

(assert (=> d!1062195 m!4103161))

(declare-fun m!4103163 () Bool)

(assert (=> b!3606293 m!4103163))

(assert (=> bm!260663 d!1062195))

(declare-fun d!1062197 () Bool)

(declare-fun lt!1240275 () Int)

(assert (=> d!1062197 (= lt!1240275 (size!28924 (list!13988 lt!1240234)))))

(declare-fun size!28926 (Conc!11559) Int)

(assert (=> d!1062197 (= lt!1240275 (size!28926 (c!623945 lt!1240234)))))

(assert (=> d!1062197 (= (size!28925 lt!1240234) lt!1240275)))

(declare-fun bs!570699 () Bool)

(assert (= bs!570699 d!1062197))

(assert (=> bs!570699 m!4102995))

(assert (=> bs!570699 m!4102995))

(declare-fun m!4103165 () Bool)

(assert (=> bs!570699 m!4103165))

(declare-fun m!4103167 () Bool)

(assert (=> bs!570699 m!4103167))

(assert (=> b!3606190 d!1062197))

(declare-fun d!1062199 () Bool)

(declare-fun lt!1240276 () Bool)

(assert (=> d!1062199 (= lt!1240276 (select (content!5423 lt!1240223) lt!1240231))))

(declare-fun e!2231752 () Bool)

(assert (=> d!1062199 (= lt!1240276 e!2231752)))

(declare-fun res!1458209 () Bool)

(assert (=> d!1062199 (=> (not res!1458209) (not e!2231752))))

(assert (=> d!1062199 (= res!1458209 ((_ is Cons!37946) lt!1240223))))

(assert (=> d!1062199 (= (contains!7311 lt!1240223 lt!1240231) lt!1240276)))

(declare-fun b!3606294 () Bool)

(declare-fun e!2231753 () Bool)

(assert (=> b!3606294 (= e!2231752 e!2231753)))

(declare-fun res!1458208 () Bool)

(assert (=> b!3606294 (=> res!1458208 e!2231753)))

(assert (=> b!3606294 (= res!1458208 (= (h!43366 lt!1240223) lt!1240231))))

(declare-fun b!3606295 () Bool)

(assert (=> b!3606295 (= e!2231753 (contains!7311 (t!292881 lt!1240223) lt!1240231))))

(assert (= (and d!1062199 res!1458209) b!3606294))

(assert (= (and b!3606294 (not res!1458208)) b!3606295))

(declare-fun m!4103169 () Bool)

(assert (=> d!1062199 m!4103169))

(declare-fun m!4103171 () Bool)

(assert (=> d!1062199 m!4103171))

(declare-fun m!4103173 () Bool)

(assert (=> b!3606295 m!4103173))

(assert (=> b!3606190 d!1062199))

(declare-fun d!1062201 () Bool)

(assert (=> d!1062201 (= (head!7576 lt!1240250) (h!43366 lt!1240250))))

(assert (=> b!3606190 d!1062201))

(declare-fun d!1062203 () Bool)

(assert (=> d!1062203 (= (inv!51310 (tag!6324 anOtherTypeRule!33)) (= (mod (str.len (value!180743 (tag!6324 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3606191 d!1062203))

(declare-fun d!1062205 () Bool)

(declare-fun res!1458226 () Bool)

(declare-fun e!2231764 () Bool)

(assert (=> d!1062205 (=> (not res!1458226) (not e!2231764))))

(declare-fun semiInverseModEq!2391 (Int Int) Bool)

(assert (=> d!1062205 (= res!1458226 (semiInverseModEq!2391 (toChars!7767 (transformation!5624 anOtherTypeRule!33)) (toValue!7908 (transformation!5624 anOtherTypeRule!33))))))

(assert (=> d!1062205 (= (inv!51314 (transformation!5624 anOtherTypeRule!33)) e!2231764)))

(declare-fun b!3606316 () Bool)

(declare-fun equivClasses!2290 (Int Int) Bool)

(assert (=> b!3606316 (= e!2231764 (equivClasses!2290 (toChars!7767 (transformation!5624 anOtherTypeRule!33)) (toValue!7908 (transformation!5624 anOtherTypeRule!33))))))

(assert (= (and d!1062205 res!1458226) b!3606316))

(declare-fun m!4103175 () Bool)

(assert (=> d!1062205 m!4103175))

(declare-fun m!4103177 () Bool)

(assert (=> b!3606316 m!4103177))

(assert (=> b!3606191 d!1062205))

(declare-fun d!1062207 () Bool)

(declare-fun lt!1240287 () Bool)

(assert (=> d!1062207 (= lt!1240287 (select (content!5424 rules!3307) rule!403))))

(declare-fun e!2231766 () Bool)

(assert (=> d!1062207 (= lt!1240287 e!2231766)))

(declare-fun res!1458227 () Bool)

(assert (=> d!1062207 (=> (not res!1458227) (not e!2231766))))

(assert (=> d!1062207 (= res!1458227 ((_ is Cons!37947) rules!3307))))

(assert (=> d!1062207 (= (contains!7312 rules!3307 rule!403) lt!1240287)))

(declare-fun b!3606317 () Bool)

(declare-fun e!2231765 () Bool)

(assert (=> b!3606317 (= e!2231766 e!2231765)))

(declare-fun res!1458228 () Bool)

(assert (=> b!3606317 (=> res!1458228 e!2231765)))

(assert (=> b!3606317 (= res!1458228 (= (h!43367 rules!3307) rule!403))))

(declare-fun b!3606318 () Bool)

(assert (=> b!3606318 (= e!2231765 (contains!7312 (t!292882 rules!3307) rule!403))))

(assert (= (and d!1062207 res!1458227) b!3606317))

(assert (= (and b!3606317 (not res!1458228)) b!3606318))

(assert (=> d!1062207 m!4103153))

(declare-fun m!4103179 () Bool)

(assert (=> d!1062207 m!4103179))

(declare-fun m!4103181 () Bool)

(assert (=> b!3606318 m!4103181))

(assert (=> b!3606189 d!1062207))

(declare-fun b!3606319 () Bool)

(declare-fun e!2231768 () Bool)

(assert (=> b!3606319 (= e!2231768 (= (head!7576 lt!1240236) (c!623944 (regex!5624 rule!403))))))

(declare-fun b!3606320 () Bool)

(declare-fun e!2231772 () Bool)

(assert (=> b!3606320 (= e!2231772 (not (= (head!7576 lt!1240236) (c!623944 (regex!5624 rule!403)))))))

(declare-fun b!3606321 () Bool)

(declare-fun e!2231770 () Bool)

(declare-fun lt!1240288 () Bool)

(assert (=> b!3606321 (= e!2231770 (not lt!1240288))))

(declare-fun b!3606322 () Bool)

(declare-fun res!1458229 () Bool)

(declare-fun e!2231767 () Bool)

(assert (=> b!3606322 (=> res!1458229 e!2231767)))

(assert (=> b!3606322 (= res!1458229 e!2231768)))

(declare-fun res!1458233 () Bool)

(assert (=> b!3606322 (=> (not res!1458233) (not e!2231768))))

(assert (=> b!3606322 (= res!1458233 lt!1240288)))

(declare-fun b!3606323 () Bool)

(declare-fun e!2231769 () Bool)

(declare-fun call!260684 () Bool)

(assert (=> b!3606323 (= e!2231769 (= lt!1240288 call!260684))))

(declare-fun b!3606324 () Bool)

(declare-fun e!2231771 () Bool)

(assert (=> b!3606324 (= e!2231767 e!2231771)))

(declare-fun res!1458231 () Bool)

(assert (=> b!3606324 (=> (not res!1458231) (not e!2231771))))

(assert (=> b!3606324 (= res!1458231 (not lt!1240288))))

(declare-fun d!1062209 () Bool)

(assert (=> d!1062209 e!2231769))

(declare-fun c!623975 () Bool)

(assert (=> d!1062209 (= c!623975 ((_ is EmptyExpr!10383) (regex!5624 rule!403)))))

(declare-fun e!2231773 () Bool)

(assert (=> d!1062209 (= lt!1240288 e!2231773)))

(declare-fun c!623973 () Bool)

(assert (=> d!1062209 (= c!623973 (isEmpty!22398 lt!1240236))))

(assert (=> d!1062209 (validRegex!4754 (regex!5624 rule!403))))

(assert (=> d!1062209 (= (matchR!4952 (regex!5624 rule!403) lt!1240236) lt!1240288)))

(declare-fun b!3606325 () Bool)

(declare-fun res!1458230 () Bool)

(assert (=> b!3606325 (=> (not res!1458230) (not e!2231768))))

(assert (=> b!3606325 (= res!1458230 (not call!260684))))

(declare-fun b!3606326 () Bool)

(assert (=> b!3606326 (= e!2231773 (matchR!4952 (derivativeStep!3141 (regex!5624 rule!403) (head!7576 lt!1240236)) (tail!5591 lt!1240236)))))

(declare-fun b!3606327 () Bool)

(assert (=> b!3606327 (= e!2231769 e!2231770)))

(declare-fun c!623974 () Bool)

(assert (=> b!3606327 (= c!623974 ((_ is EmptyLang!10383) (regex!5624 rule!403)))))

(declare-fun b!3606328 () Bool)

(declare-fun res!1458232 () Bool)

(assert (=> b!3606328 (=> res!1458232 e!2231772)))

(assert (=> b!3606328 (= res!1458232 (not (isEmpty!22398 (tail!5591 lt!1240236))))))

(declare-fun b!3606329 () Bool)

(declare-fun res!1458235 () Bool)

(assert (=> b!3606329 (=> res!1458235 e!2231767)))

(assert (=> b!3606329 (= res!1458235 (not ((_ is ElementMatch!10383) (regex!5624 rule!403))))))

(assert (=> b!3606329 (= e!2231770 e!2231767)))

(declare-fun bm!260679 () Bool)

(assert (=> bm!260679 (= call!260684 (isEmpty!22398 lt!1240236))))

(declare-fun b!3606330 () Bool)

(declare-fun res!1458236 () Bool)

(assert (=> b!3606330 (=> (not res!1458236) (not e!2231768))))

(assert (=> b!3606330 (= res!1458236 (isEmpty!22398 (tail!5591 lt!1240236)))))

(declare-fun b!3606331 () Bool)

(assert (=> b!3606331 (= e!2231771 e!2231772)))

(declare-fun res!1458234 () Bool)

(assert (=> b!3606331 (=> res!1458234 e!2231772)))

(assert (=> b!3606331 (= res!1458234 call!260684)))

(declare-fun b!3606332 () Bool)

(assert (=> b!3606332 (= e!2231773 (nullable!3592 (regex!5624 rule!403)))))

(assert (= (and d!1062209 c!623973) b!3606332))

(assert (= (and d!1062209 (not c!623973)) b!3606326))

(assert (= (and d!1062209 c!623975) b!3606323))

(assert (= (and d!1062209 (not c!623975)) b!3606327))

(assert (= (and b!3606327 c!623974) b!3606321))

(assert (= (and b!3606327 (not c!623974)) b!3606329))

(assert (= (and b!3606329 (not res!1458235)) b!3606322))

(assert (= (and b!3606322 res!1458233) b!3606325))

(assert (= (and b!3606325 res!1458230) b!3606330))

(assert (= (and b!3606330 res!1458236) b!3606319))

(assert (= (and b!3606322 (not res!1458229)) b!3606324))

(assert (= (and b!3606324 res!1458231) b!3606331))

(assert (= (and b!3606331 (not res!1458234)) b!3606328))

(assert (= (and b!3606328 (not res!1458232)) b!3606320))

(assert (= (or b!3606323 b!3606325 b!3606331) bm!260679))

(declare-fun m!4103183 () Bool)

(assert (=> b!3606328 m!4103183))

(assert (=> b!3606328 m!4103183))

(declare-fun m!4103185 () Bool)

(assert (=> b!3606328 m!4103185))

(assert (=> b!3606330 m!4103183))

(assert (=> b!3606330 m!4103183))

(assert (=> b!3606330 m!4103185))

(declare-fun m!4103187 () Bool)

(assert (=> b!3606326 m!4103187))

(assert (=> b!3606326 m!4103187))

(declare-fun m!4103189 () Bool)

(assert (=> b!3606326 m!4103189))

(assert (=> b!3606326 m!4103183))

(assert (=> b!3606326 m!4103189))

(assert (=> b!3606326 m!4103183))

(declare-fun m!4103191 () Bool)

(assert (=> b!3606326 m!4103191))

(declare-fun m!4103193 () Bool)

(assert (=> d!1062209 m!4103193))

(assert (=> d!1062209 m!4103103))

(assert (=> b!3606320 m!4103187))

(assert (=> b!3606319 m!4103187))

(assert (=> bm!260679 m!4103193))

(declare-fun m!4103195 () Bool)

(assert (=> b!3606332 m!4103195))

(assert (=> b!3606171 d!1062209))

(declare-fun d!1062211 () Bool)

(declare-fun res!1458248 () Bool)

(declare-fun e!2231780 () Bool)

(assert (=> d!1062211 (=> (not res!1458248) (not e!2231780))))

(assert (=> d!1062211 (= res!1458248 (validRegex!4754 (regex!5624 rule!403)))))

(assert (=> d!1062211 (= (ruleValid!1889 thiss!23823 rule!403) e!2231780)))

(declare-fun b!3606346 () Bool)

(declare-fun res!1458249 () Bool)

(assert (=> b!3606346 (=> (not res!1458249) (not e!2231780))))

(assert (=> b!3606346 (= res!1458249 (not (nullable!3592 (regex!5624 rule!403))))))

(declare-fun b!3606347 () Bool)

(assert (=> b!3606347 (= e!2231780 (not (= (tag!6324 rule!403) (String!42605 ""))))))

(assert (= (and d!1062211 res!1458248) b!3606346))

(assert (= (and b!3606346 res!1458249) b!3606347))

(assert (=> d!1062211 m!4103103))

(assert (=> b!3606346 m!4103195))

(assert (=> b!3606171 d!1062211))

(declare-fun d!1062213 () Bool)

(assert (=> d!1062213 (ruleValid!1889 thiss!23823 rule!403)))

(declare-fun lt!1240296 () Unit!54039)

(declare-fun choose!21051 (LexerInterface!5213 Rule!11048 List!38071) Unit!54039)

(assert (=> d!1062213 (= lt!1240296 (choose!21051 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1062213 (contains!7312 rules!3307 rule!403)))

(assert (=> d!1062213 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1044 thiss!23823 rule!403 rules!3307) lt!1240296)))

(declare-fun bs!570700 () Bool)

(assert (= bs!570700 d!1062213))

(assert (=> bs!570700 m!4103019))

(declare-fun m!4103245 () Bool)

(assert (=> bs!570700 m!4103245))

(assert (=> bs!570700 m!4103031))

(assert (=> b!3606171 d!1062213))

(declare-fun d!1062219 () Bool)

(declare-fun lt!1240297 () Bool)

(assert (=> d!1062219 (= lt!1240297 (select (content!5423 lt!1240223) lt!1240228))))

(declare-fun e!2231784 () Bool)

(assert (=> d!1062219 (= lt!1240297 e!2231784)))

(declare-fun res!1458251 () Bool)

(assert (=> d!1062219 (=> (not res!1458251) (not e!2231784))))

(assert (=> d!1062219 (= res!1458251 ((_ is Cons!37946) lt!1240223))))

(assert (=> d!1062219 (= (contains!7311 lt!1240223 lt!1240228) lt!1240297)))

(declare-fun b!3606350 () Bool)

(declare-fun e!2231785 () Bool)

(assert (=> b!3606350 (= e!2231784 e!2231785)))

(declare-fun res!1458250 () Bool)

(assert (=> b!3606350 (=> res!1458250 e!2231785)))

(assert (=> b!3606350 (= res!1458250 (= (h!43366 lt!1240223) lt!1240228))))

(declare-fun b!3606351 () Bool)

(assert (=> b!3606351 (= e!2231785 (contains!7311 (t!292881 lt!1240223) lt!1240228))))

(assert (= (and d!1062219 res!1458251) b!3606350))

(assert (= (and b!3606350 (not res!1458250)) b!3606351))

(assert (=> d!1062219 m!4103169))

(declare-fun m!4103247 () Bool)

(assert (=> d!1062219 m!4103247))

(declare-fun m!4103249 () Bool)

(assert (=> b!3606351 m!4103249))

(assert (=> b!3606193 d!1062219))

(declare-fun d!1062221 () Bool)

(assert (=> d!1062221 (= (head!7576 suffix!1395) (h!43366 suffix!1395))))

(assert (=> b!3606193 d!1062221))

(declare-fun b!3606356 () Bool)

(declare-fun e!2231790 () List!38070)

(declare-fun e!2231789 () List!38070)

(assert (=> b!3606356 (= e!2231790 e!2231789)))

(declare-fun c!623979 () Bool)

(assert (=> b!3606356 (= c!623979 ((_ is Union!10383) (regex!5624 rule!403)))))

(declare-fun b!3606357 () Bool)

(declare-fun call!260685 () List!38070)

(assert (=> b!3606357 (= e!2231789 call!260685)))

(declare-fun bm!260680 () Bool)

(declare-fun call!260687 () List!38070)

(declare-fun c!623982 () Bool)

(assert (=> bm!260680 (= call!260687 (usedCharacters!838 (ite c!623982 (reg!10712 (regex!5624 rule!403)) (ite c!623979 (regTwo!21279 (regex!5624 rule!403)) (regOne!21278 (regex!5624 rule!403))))))))

(declare-fun b!3606358 () Bool)

(assert (=> b!3606358 (= e!2231789 call!260685)))

(declare-fun b!3606359 () Bool)

(declare-fun e!2231791 () List!38070)

(assert (=> b!3606359 (= e!2231791 (Cons!37946 (c!623944 (regex!5624 rule!403)) Nil!37946))))

(declare-fun bm!260681 () Bool)

(declare-fun call!260688 () List!38070)

(assert (=> bm!260681 (= call!260688 call!260687)))

(declare-fun d!1062223 () Bool)

(declare-fun c!623980 () Bool)

(assert (=> d!1062223 (= c!623980 (or ((_ is EmptyExpr!10383) (regex!5624 rule!403)) ((_ is EmptyLang!10383) (regex!5624 rule!403))))))

(declare-fun e!2231788 () List!38070)

(assert (=> d!1062223 (= (usedCharacters!838 (regex!5624 rule!403)) e!2231788)))

(declare-fun b!3606360 () Bool)

(assert (=> b!3606360 (= e!2231790 call!260687)))

(declare-fun call!260686 () List!38070)

(declare-fun bm!260682 () Bool)

(assert (=> bm!260682 (= call!260685 (++!9440 (ite c!623979 call!260686 call!260688) (ite c!623979 call!260688 call!260686)))))

(declare-fun b!3606361 () Bool)

(assert (=> b!3606361 (= c!623982 ((_ is Star!10383) (regex!5624 rule!403)))))

(assert (=> b!3606361 (= e!2231791 e!2231790)))

(declare-fun bm!260683 () Bool)

(assert (=> bm!260683 (= call!260686 (usedCharacters!838 (ite c!623979 (regOne!21279 (regex!5624 rule!403)) (regTwo!21278 (regex!5624 rule!403)))))))

(declare-fun b!3606362 () Bool)

(assert (=> b!3606362 (= e!2231788 Nil!37946)))

(declare-fun b!3606363 () Bool)

(assert (=> b!3606363 (= e!2231788 e!2231791)))

(declare-fun c!623981 () Bool)

(assert (=> b!3606363 (= c!623981 ((_ is ElementMatch!10383) (regex!5624 rule!403)))))

(assert (= (and d!1062223 c!623980) b!3606362))

(assert (= (and d!1062223 (not c!623980)) b!3606363))

(assert (= (and b!3606363 c!623981) b!3606359))

(assert (= (and b!3606363 (not c!623981)) b!3606361))

(assert (= (and b!3606361 c!623982) b!3606360))

(assert (= (and b!3606361 (not c!623982)) b!3606356))

(assert (= (and b!3606356 c!623979) b!3606357))

(assert (= (and b!3606356 (not c!623979)) b!3606358))

(assert (= (or b!3606357 b!3606358) bm!260683))

(assert (= (or b!3606357 b!3606358) bm!260681))

(assert (= (or b!3606357 b!3606358) bm!260682))

(assert (= (or b!3606360 bm!260681) bm!260680))

(declare-fun m!4103253 () Bool)

(assert (=> bm!260680 m!4103253))

(declare-fun m!4103255 () Bool)

(assert (=> bm!260682 m!4103255))

(declare-fun m!4103257 () Bool)

(assert (=> bm!260683 m!4103257))

(assert (=> b!3606193 d!1062223))

(declare-fun d!1062227 () Bool)

(assert (=> d!1062227 (= (isEmpty!22399 rules!3307) ((_ is Nil!37947) rules!3307))))

(assert (=> b!3606175 d!1062227))

(declare-fun d!1062229 () Bool)

(assert (=> d!1062229 (= (get!12301 lt!1240217) (v!37607 lt!1240217))))

(assert (=> b!3606192 d!1062229))

(declare-fun d!1062231 () Bool)

(declare-fun res!1458256 () Bool)

(declare-fun e!2231797 () Bool)

(assert (=> d!1062231 (=> res!1458256 e!2231797)))

(assert (=> d!1062231 (= res!1458256 (not ((_ is Cons!37947) rules!3307)))))

(assert (=> d!1062231 (= (sepAndNonSepRulesDisjointChars!1794 rules!3307 rules!3307) e!2231797)))

(declare-fun b!3606370 () Bool)

(declare-fun e!2231798 () Bool)

(assert (=> b!3606370 (= e!2231797 e!2231798)))

(declare-fun res!1458257 () Bool)

(assert (=> b!3606370 (=> (not res!1458257) (not e!2231798))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!816 (Rule!11048 List!38071) Bool)

(assert (=> b!3606370 (= res!1458257 (ruleDisjointCharsFromAllFromOtherType!816 (h!43367 rules!3307) rules!3307))))

(declare-fun b!3606371 () Bool)

(assert (=> b!3606371 (= e!2231798 (sepAndNonSepRulesDisjointChars!1794 rules!3307 (t!292882 rules!3307)))))

(assert (= (and d!1062231 (not res!1458256)) b!3606370))

(assert (= (and b!3606370 res!1458257) b!3606371))

(declare-fun m!4103259 () Bool)

(assert (=> b!3606370 m!4103259))

(declare-fun m!4103261 () Bool)

(assert (=> b!3606371 m!4103261))

(assert (=> b!3606174 d!1062231))

(declare-fun b!3606382 () Bool)

(declare-fun e!2231806 () Bool)

(declare-fun inv!15 (TokenValue!5854) Bool)

(assert (=> b!3606382 (= e!2231806 (inv!15 (value!180744 token!511)))))

(declare-fun b!3606383 () Bool)

(declare-fun res!1458260 () Bool)

(assert (=> b!3606383 (=> res!1458260 e!2231806)))

(assert (=> b!3606383 (= res!1458260 (not ((_ is IntegerValue!17564) (value!180744 token!511))))))

(declare-fun e!2231807 () Bool)

(assert (=> b!3606383 (= e!2231807 e!2231806)))

(declare-fun d!1062233 () Bool)

(declare-fun c!623989 () Bool)

(assert (=> d!1062233 (= c!623989 ((_ is IntegerValue!17562) (value!180744 token!511)))))

(declare-fun e!2231805 () Bool)

(assert (=> d!1062233 (= (inv!21 (value!180744 token!511)) e!2231805)))

(declare-fun b!3606384 () Bool)

(declare-fun inv!16 (TokenValue!5854) Bool)

(assert (=> b!3606384 (= e!2231805 (inv!16 (value!180744 token!511)))))

(declare-fun b!3606385 () Bool)

(assert (=> b!3606385 (= e!2231805 e!2231807)))

(declare-fun c!623988 () Bool)

(assert (=> b!3606385 (= c!623988 ((_ is IntegerValue!17563) (value!180744 token!511)))))

(declare-fun b!3606386 () Bool)

(declare-fun inv!17 (TokenValue!5854) Bool)

(assert (=> b!3606386 (= e!2231807 (inv!17 (value!180744 token!511)))))

(assert (= (and d!1062233 c!623989) b!3606384))

(assert (= (and d!1062233 (not c!623989)) b!3606385))

(assert (= (and b!3606385 c!623988) b!3606386))

(assert (= (and b!3606385 (not c!623988)) b!3606383))

(assert (= (and b!3606383 (not res!1458260)) b!3606382))

(declare-fun m!4103265 () Bool)

(assert (=> b!3606382 m!4103265))

(declare-fun m!4103267 () Bool)

(assert (=> b!3606384 m!4103267))

(declare-fun m!4103269 () Bool)

(assert (=> b!3606386 m!4103269))

(assert (=> b!3606176 d!1062233))

(declare-fun b!3606407 () Bool)

(declare-fun e!2231822 () Bool)

(declare-fun lt!1240309 () List!38070)

(assert (=> b!3606407 (= e!2231822 (or (not (= (_2!22054 lt!1240237) Nil!37946)) (= lt!1240309 lt!1240250)))))

(declare-fun b!3606405 () Bool)

(declare-fun e!2231821 () List!38070)

(assert (=> b!3606405 (= e!2231821 (Cons!37946 (h!43366 lt!1240250) (++!9440 (t!292881 lt!1240250) (_2!22054 lt!1240237))))))

(declare-fun b!3606404 () Bool)

(assert (=> b!3606404 (= e!2231821 (_2!22054 lt!1240237))))

(declare-fun d!1062237 () Bool)

(assert (=> d!1062237 e!2231822))

(declare-fun res!1458275 () Bool)

(assert (=> d!1062237 (=> (not res!1458275) (not e!2231822))))

(assert (=> d!1062237 (= res!1458275 (= (content!5423 lt!1240309) ((_ map or) (content!5423 lt!1240250) (content!5423 (_2!22054 lt!1240237)))))))

(assert (=> d!1062237 (= lt!1240309 e!2231821)))

(declare-fun c!623992 () Bool)

(assert (=> d!1062237 (= c!623992 ((_ is Nil!37946) lt!1240250))))

(assert (=> d!1062237 (= (++!9440 lt!1240250 (_2!22054 lt!1240237)) lt!1240309)))

(declare-fun b!3606406 () Bool)

(declare-fun res!1458274 () Bool)

(assert (=> b!3606406 (=> (not res!1458274) (not e!2231822))))

(assert (=> b!3606406 (= res!1458274 (= (size!28924 lt!1240309) (+ (size!28924 lt!1240250) (size!28924 (_2!22054 lt!1240237)))))))

(assert (= (and d!1062237 c!623992) b!3606404))

(assert (= (and d!1062237 (not c!623992)) b!3606405))

(assert (= (and d!1062237 res!1458275) b!3606406))

(assert (= (and b!3606406 res!1458274) b!3606407))

(declare-fun m!4103283 () Bool)

(assert (=> b!3606405 m!4103283))

(declare-fun m!4103285 () Bool)

(assert (=> d!1062237 m!4103285))

(declare-fun m!4103287 () Bool)

(assert (=> d!1062237 m!4103287))

(declare-fun m!4103289 () Bool)

(assert (=> d!1062237 m!4103289))

(declare-fun m!4103291 () Bool)

(assert (=> b!3606406 m!4103291))

(assert (=> b!3606406 m!4102955))

(declare-fun m!4103293 () Bool)

(assert (=> b!3606406 m!4103293))

(assert (=> b!3606196 d!1062237))

(declare-fun d!1062249 () Bool)

(assert (=> d!1062249 (isPrefix!2987 lt!1240236 (++!9440 lt!1240236 suffix!1395))))

(declare-fun lt!1240312 () Unit!54039)

(declare-fun choose!21052 (List!38070 List!38070) Unit!54039)

(assert (=> d!1062249 (= lt!1240312 (choose!21052 lt!1240236 suffix!1395))))

(assert (=> d!1062249 (= (lemmaConcatTwoListThenFirstIsPrefix!1908 lt!1240236 suffix!1395) lt!1240312)))

(declare-fun bs!570703 () Bool)

(assert (= bs!570703 d!1062249))

(assert (=> bs!570703 m!4103039))

(assert (=> bs!570703 m!4103039))

(declare-fun m!4103295 () Bool)

(assert (=> bs!570703 m!4103295))

(declare-fun m!4103297 () Bool)

(assert (=> bs!570703 m!4103297))

(assert (=> b!3606196 d!1062249))

(declare-fun b!3606471 () Bool)

(declare-fun e!2231864 () Bool)

(declare-fun lt!1240329 () Option!7879)

(assert (=> b!3606471 (= e!2231864 (= (tag!6324 (get!12300 lt!1240329)) (tag!6324 (rule!8368 (_1!22054 lt!1240237)))))))

(declare-fun b!3606473 () Bool)

(declare-fun e!2231866 () Bool)

(assert (=> b!3606473 (= e!2231866 e!2231864)))

(declare-fun res!1458295 () Bool)

(assert (=> b!3606473 (=> (not res!1458295) (not e!2231864))))

(assert (=> b!3606473 (= res!1458295 (contains!7312 rules!3307 (get!12300 lt!1240329)))))

(declare-fun b!3606474 () Bool)

(declare-fun e!2231867 () Option!7879)

(assert (=> b!3606474 (= e!2231867 (Some!7878 (h!43367 rules!3307)))))

(declare-fun b!3606475 () Bool)

(declare-fun e!2231865 () Option!7879)

(assert (=> b!3606475 (= e!2231867 e!2231865)))

(declare-fun c!624018 () Bool)

(assert (=> b!3606475 (= c!624018 (and ((_ is Cons!37947) rules!3307) (not (= (tag!6324 (h!43367 rules!3307)) (tag!6324 (rule!8368 (_1!22054 lt!1240237)))))))))

(declare-fun b!3606476 () Bool)

(declare-fun lt!1240331 () Unit!54039)

(declare-fun lt!1240330 () Unit!54039)

(assert (=> b!3606476 (= lt!1240331 lt!1240330)))

(assert (=> b!3606476 (rulesInvariant!4610 thiss!23823 (t!292882 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!522 (LexerInterface!5213 Rule!11048 List!38071) Unit!54039)

(assert (=> b!3606476 (= lt!1240330 (lemmaInvariantOnRulesThenOnTail!522 thiss!23823 (h!43367 rules!3307) (t!292882 rules!3307)))))

(assert (=> b!3606476 (= e!2231865 (getRuleFromTag!1230 thiss!23823 (t!292882 rules!3307) (tag!6324 (rule!8368 (_1!22054 lt!1240237)))))))

(declare-fun b!3606472 () Bool)

(assert (=> b!3606472 (= e!2231865 None!7878)))

(declare-fun d!1062251 () Bool)

(assert (=> d!1062251 e!2231866))

(declare-fun res!1458296 () Bool)

(assert (=> d!1062251 (=> res!1458296 e!2231866)))

(declare-fun isEmpty!22401 (Option!7879) Bool)

(assert (=> d!1062251 (= res!1458296 (isEmpty!22401 lt!1240329))))

(assert (=> d!1062251 (= lt!1240329 e!2231867)))

(declare-fun c!624017 () Bool)

(assert (=> d!1062251 (= c!624017 (and ((_ is Cons!37947) rules!3307) (= (tag!6324 (h!43367 rules!3307)) (tag!6324 (rule!8368 (_1!22054 lt!1240237))))))))

(assert (=> d!1062251 (rulesInvariant!4610 thiss!23823 rules!3307)))

(assert (=> d!1062251 (= (getRuleFromTag!1230 thiss!23823 rules!3307 (tag!6324 (rule!8368 (_1!22054 lt!1240237)))) lt!1240329)))

(assert (= (and d!1062251 c!624017) b!3606474))

(assert (= (and d!1062251 (not c!624017)) b!3606475))

(assert (= (and b!3606475 c!624018) b!3606476))

(assert (= (and b!3606475 (not c!624018)) b!3606472))

(assert (= (and d!1062251 (not res!1458296)) b!3606473))

(assert (= (and b!3606473 res!1458295) b!3606471))

(declare-fun m!4103335 () Bool)

(assert (=> b!3606471 m!4103335))

(assert (=> b!3606473 m!4103335))

(assert (=> b!3606473 m!4103335))

(declare-fun m!4103337 () Bool)

(assert (=> b!3606473 m!4103337))

(declare-fun m!4103339 () Bool)

(assert (=> b!3606476 m!4103339))

(declare-fun m!4103341 () Bool)

(assert (=> b!3606476 m!4103341))

(declare-fun m!4103347 () Bool)

(assert (=> b!3606476 m!4103347))

(declare-fun m!4103349 () Bool)

(assert (=> d!1062251 m!4103349))

(assert (=> d!1062251 m!4103005))

(assert (=> b!3606196 d!1062251))

(declare-fun d!1062275 () Bool)

(assert (=> d!1062275 (= (get!12301 lt!1240239) (v!37607 lt!1240239))))

(assert (=> b!3606196 d!1062275))

(declare-fun lt!1240332 () List!38070)

(declare-fun e!2231873 () Bool)

(declare-fun b!3606488 () Bool)

(assert (=> b!3606488 (= e!2231873 (or (not (= suffix!1395 Nil!37946)) (= lt!1240332 lt!1240236)))))

(declare-fun b!3606486 () Bool)

(declare-fun e!2231872 () List!38070)

(assert (=> b!3606486 (= e!2231872 (Cons!37946 (h!43366 lt!1240236) (++!9440 (t!292881 lt!1240236) suffix!1395)))))

(declare-fun b!3606485 () Bool)

(assert (=> b!3606485 (= e!2231872 suffix!1395)))

(declare-fun d!1062277 () Bool)

(assert (=> d!1062277 e!2231873))

(declare-fun res!1458298 () Bool)

(assert (=> d!1062277 (=> (not res!1458298) (not e!2231873))))

(assert (=> d!1062277 (= res!1458298 (= (content!5423 lt!1240332) ((_ map or) (content!5423 lt!1240236) (content!5423 suffix!1395))))))

(assert (=> d!1062277 (= lt!1240332 e!2231872)))

(declare-fun c!624023 () Bool)

(assert (=> d!1062277 (= c!624023 ((_ is Nil!37946) lt!1240236))))

(assert (=> d!1062277 (= (++!9440 lt!1240236 suffix!1395) lt!1240332)))

(declare-fun b!3606487 () Bool)

(declare-fun res!1458297 () Bool)

(assert (=> b!3606487 (=> (not res!1458297) (not e!2231873))))

(assert (=> b!3606487 (= res!1458297 (= (size!28924 lt!1240332) (+ (size!28924 lt!1240236) (size!28924 suffix!1395))))))

(assert (= (and d!1062277 c!624023) b!3606485))

(assert (= (and d!1062277 (not c!624023)) b!3606486))

(assert (= (and d!1062277 res!1458298) b!3606487))

(assert (= (and b!3606487 res!1458297) b!3606488))

(declare-fun m!4103353 () Bool)

(assert (=> b!3606486 m!4103353))

(declare-fun m!4103355 () Bool)

(assert (=> d!1062277 m!4103355))

(declare-fun m!4103357 () Bool)

(assert (=> d!1062277 m!4103357))

(declare-fun m!4103359 () Bool)

(assert (=> d!1062277 m!4103359))

(declare-fun m!4103361 () Bool)

(assert (=> b!3606487 m!4103361))

(declare-fun m!4103363 () Bool)

(assert (=> b!3606487 m!4103363))

(declare-fun m!4103365 () Bool)

(assert (=> b!3606487 m!4103365))

(assert (=> b!3606196 d!1062277))

(declare-fun d!1062279 () Bool)

(assert (=> d!1062279 (= (list!13988 lt!1240214) (list!13989 (c!623945 lt!1240214)))))

(declare-fun bs!570706 () Bool)

(assert (= bs!570706 d!1062279))

(declare-fun m!4103367 () Bool)

(assert (=> bs!570706 m!4103367))

(assert (=> b!3606196 d!1062279))

(declare-fun d!1062281 () Bool)

(assert (=> d!1062281 (isPrefix!2987 lt!1240250 (++!9440 lt!1240250 (_2!22054 lt!1240237)))))

(declare-fun lt!1240333 () Unit!54039)

(assert (=> d!1062281 (= lt!1240333 (choose!21052 lt!1240250 (_2!22054 lt!1240237)))))

(assert (=> d!1062281 (= (lemmaConcatTwoListThenFirstIsPrefix!1908 lt!1240250 (_2!22054 lt!1240237)) lt!1240333)))

(declare-fun bs!570707 () Bool)

(assert (= bs!570707 d!1062281))

(assert (=> bs!570707 m!4103041))

(assert (=> bs!570707 m!4103041))

(assert (=> bs!570707 m!4103043))

(declare-fun m!4103369 () Bool)

(assert (=> bs!570707 m!4103369))

(assert (=> b!3606196 d!1062281))

(declare-fun b!3606499 () Bool)

(declare-fun e!2231880 () Bool)

(assert (=> b!3606499 (= e!2231880 (isPrefix!2987 (tail!5591 lt!1240250) (tail!5591 (++!9440 lt!1240250 (_2!22054 lt!1240237)))))))

(declare-fun b!3606498 () Bool)

(declare-fun res!1458307 () Bool)

(assert (=> b!3606498 (=> (not res!1458307) (not e!2231880))))

(assert (=> b!3606498 (= res!1458307 (= (head!7576 lt!1240250) (head!7576 (++!9440 lt!1240250 (_2!22054 lt!1240237)))))))

(declare-fun b!3606497 () Bool)

(declare-fun e!2231882 () Bool)

(assert (=> b!3606497 (= e!2231882 e!2231880)))

(declare-fun res!1458310 () Bool)

(assert (=> b!3606497 (=> (not res!1458310) (not e!2231880))))

(assert (=> b!3606497 (= res!1458310 (not ((_ is Nil!37946) (++!9440 lt!1240250 (_2!22054 lt!1240237)))))))

(declare-fun b!3606500 () Bool)

(declare-fun e!2231881 () Bool)

(assert (=> b!3606500 (= e!2231881 (>= (size!28924 (++!9440 lt!1240250 (_2!22054 lt!1240237))) (size!28924 lt!1240250)))))

(declare-fun d!1062283 () Bool)

(assert (=> d!1062283 e!2231881))

(declare-fun res!1458309 () Bool)

(assert (=> d!1062283 (=> res!1458309 e!2231881)))

(declare-fun lt!1240338 () Bool)

(assert (=> d!1062283 (= res!1458309 (not lt!1240338))))

(assert (=> d!1062283 (= lt!1240338 e!2231882)))

(declare-fun res!1458308 () Bool)

(assert (=> d!1062283 (=> res!1458308 e!2231882)))

(assert (=> d!1062283 (= res!1458308 ((_ is Nil!37946) lt!1240250))))

(assert (=> d!1062283 (= (isPrefix!2987 lt!1240250 (++!9440 lt!1240250 (_2!22054 lt!1240237))) lt!1240338)))

(assert (= (and d!1062283 (not res!1458308)) b!3606497))

(assert (= (and b!3606497 res!1458310) b!3606498))

(assert (= (and b!3606498 res!1458307) b!3606499))

(assert (= (and d!1062283 (not res!1458309)) b!3606500))

(declare-fun m!4103371 () Bool)

(assert (=> b!3606499 m!4103371))

(assert (=> b!3606499 m!4103041))

(declare-fun m!4103373 () Bool)

(assert (=> b!3606499 m!4103373))

(assert (=> b!3606499 m!4103371))

(assert (=> b!3606499 m!4103373))

(declare-fun m!4103375 () Bool)

(assert (=> b!3606499 m!4103375))

(assert (=> b!3606498 m!4102973))

(assert (=> b!3606498 m!4103041))

(declare-fun m!4103377 () Bool)

(assert (=> b!3606498 m!4103377))

(assert (=> b!3606500 m!4103041))

(declare-fun m!4103379 () Bool)

(assert (=> b!3606500 m!4103379))

(assert (=> b!3606500 m!4102955))

(assert (=> b!3606196 d!1062283))

(declare-fun b!3606519 () Bool)

(declare-fun e!2231890 () Option!7878)

(declare-fun lt!1240353 () Option!7878)

(declare-fun lt!1240349 () Option!7878)

(assert (=> b!3606519 (= e!2231890 (ite (and ((_ is None!7877) lt!1240353) ((_ is None!7877) lt!1240349)) None!7877 (ite ((_ is None!7877) lt!1240349) lt!1240353 (ite ((_ is None!7877) lt!1240353) lt!1240349 (ite (>= (size!28923 (_1!22054 (v!37607 lt!1240353))) (size!28923 (_1!22054 (v!37607 lt!1240349)))) lt!1240353 lt!1240349)))))))

(declare-fun call!260707 () Option!7878)

(assert (=> b!3606519 (= lt!1240353 call!260707)))

(assert (=> b!3606519 (= lt!1240349 (maxPrefix!2747 thiss!23823 (t!292882 rules!3307) lt!1240232))))

(declare-fun b!3606520 () Bool)

(assert (=> b!3606520 (= e!2231890 call!260707)))

(declare-fun b!3606521 () Bool)

(declare-fun e!2231889 () Bool)

(declare-fun lt!1240351 () Option!7878)

(assert (=> b!3606521 (= e!2231889 (contains!7312 rules!3307 (rule!8368 (_1!22054 (get!12301 lt!1240351)))))))

(declare-fun b!3606522 () Bool)

(declare-fun res!1458329 () Bool)

(assert (=> b!3606522 (=> (not res!1458329) (not e!2231889))))

(assert (=> b!3606522 (= res!1458329 (matchR!4952 (regex!5624 (rule!8368 (_1!22054 (get!12301 lt!1240351)))) (list!13988 (charsOf!3638 (_1!22054 (get!12301 lt!1240351))))))))

(declare-fun bm!260702 () Bool)

(assert (=> bm!260702 (= call!260707 (maxPrefixOneRule!1891 thiss!23823 (h!43367 rules!3307) lt!1240232))))

(declare-fun d!1062285 () Bool)

(declare-fun e!2231891 () Bool)

(assert (=> d!1062285 e!2231891))

(declare-fun res!1458328 () Bool)

(assert (=> d!1062285 (=> res!1458328 e!2231891)))

(declare-fun isEmpty!22402 (Option!7878) Bool)

(assert (=> d!1062285 (= res!1458328 (isEmpty!22402 lt!1240351))))

(assert (=> d!1062285 (= lt!1240351 e!2231890)))

(declare-fun c!624027 () Bool)

(assert (=> d!1062285 (= c!624027 (and ((_ is Cons!37947) rules!3307) ((_ is Nil!37947) (t!292882 rules!3307))))))

(declare-fun lt!1240350 () Unit!54039)

(declare-fun lt!1240352 () Unit!54039)

(assert (=> d!1062285 (= lt!1240350 lt!1240352)))

(assert (=> d!1062285 (isPrefix!2987 lt!1240232 lt!1240232)))

(declare-fun lemmaIsPrefixRefl!1909 (List!38070 List!38070) Unit!54039)

(assert (=> d!1062285 (= lt!1240352 (lemmaIsPrefixRefl!1909 lt!1240232 lt!1240232))))

(declare-fun rulesValidInductive!1974 (LexerInterface!5213 List!38071) Bool)

(assert (=> d!1062285 (rulesValidInductive!1974 thiss!23823 rules!3307)))

(assert (=> d!1062285 (= (maxPrefix!2747 thiss!23823 rules!3307 lt!1240232) lt!1240351)))

(declare-fun b!3606523 () Bool)

(declare-fun res!1458326 () Bool)

(assert (=> b!3606523 (=> (not res!1458326) (not e!2231889))))

(assert (=> b!3606523 (= res!1458326 (= (value!180744 (_1!22054 (get!12301 lt!1240351))) (apply!9130 (transformation!5624 (rule!8368 (_1!22054 (get!12301 lt!1240351)))) (seqFromList!4177 (originalCharacters!6338 (_1!22054 (get!12301 lt!1240351)))))))))

(declare-fun b!3606524 () Bool)

(declare-fun res!1458330 () Bool)

(assert (=> b!3606524 (=> (not res!1458330) (not e!2231889))))

(assert (=> b!3606524 (= res!1458330 (< (size!28924 (_2!22054 (get!12301 lt!1240351))) (size!28924 lt!1240232)))))

(declare-fun b!3606525 () Bool)

(declare-fun res!1458331 () Bool)

(assert (=> b!3606525 (=> (not res!1458331) (not e!2231889))))

(assert (=> b!3606525 (= res!1458331 (= (++!9440 (list!13988 (charsOf!3638 (_1!22054 (get!12301 lt!1240351)))) (_2!22054 (get!12301 lt!1240351))) lt!1240232))))

(declare-fun b!3606526 () Bool)

(declare-fun res!1458325 () Bool)

(assert (=> b!3606526 (=> (not res!1458325) (not e!2231889))))

(assert (=> b!3606526 (= res!1458325 (= (list!13988 (charsOf!3638 (_1!22054 (get!12301 lt!1240351)))) (originalCharacters!6338 (_1!22054 (get!12301 lt!1240351)))))))

(declare-fun b!3606527 () Bool)

(assert (=> b!3606527 (= e!2231891 e!2231889)))

(declare-fun res!1458327 () Bool)

(assert (=> b!3606527 (=> (not res!1458327) (not e!2231889))))

(assert (=> b!3606527 (= res!1458327 (isDefined!6111 lt!1240351))))

(assert (= (and d!1062285 c!624027) b!3606520))

(assert (= (and d!1062285 (not c!624027)) b!3606519))

(assert (= (or b!3606520 b!3606519) bm!260702))

(assert (= (and d!1062285 (not res!1458328)) b!3606527))

(assert (= (and b!3606527 res!1458327) b!3606526))

(assert (= (and b!3606526 res!1458325) b!3606524))

(assert (= (and b!3606524 res!1458330) b!3606525))

(assert (= (and b!3606525 res!1458331) b!3606523))

(assert (= (and b!3606523 res!1458326) b!3606522))

(assert (= (and b!3606522 res!1458329) b!3606521))

(declare-fun m!4103381 () Bool)

(assert (=> b!3606523 m!4103381))

(declare-fun m!4103383 () Bool)

(assert (=> b!3606523 m!4103383))

(assert (=> b!3606523 m!4103383))

(declare-fun m!4103385 () Bool)

(assert (=> b!3606523 m!4103385))

(declare-fun m!4103387 () Bool)

(assert (=> bm!260702 m!4103387))

(assert (=> b!3606525 m!4103381))

(declare-fun m!4103389 () Bool)

(assert (=> b!3606525 m!4103389))

(assert (=> b!3606525 m!4103389))

(declare-fun m!4103391 () Bool)

(assert (=> b!3606525 m!4103391))

(assert (=> b!3606525 m!4103391))

(declare-fun m!4103393 () Bool)

(assert (=> b!3606525 m!4103393))

(declare-fun m!4103395 () Bool)

(assert (=> b!3606527 m!4103395))

(declare-fun m!4103397 () Bool)

(assert (=> d!1062285 m!4103397))

(declare-fun m!4103399 () Bool)

(assert (=> d!1062285 m!4103399))

(declare-fun m!4103401 () Bool)

(assert (=> d!1062285 m!4103401))

(declare-fun m!4103403 () Bool)

(assert (=> d!1062285 m!4103403))

(assert (=> b!3606526 m!4103381))

(assert (=> b!3606526 m!4103389))

(assert (=> b!3606526 m!4103389))

(assert (=> b!3606526 m!4103391))

(assert (=> b!3606522 m!4103381))

(assert (=> b!3606522 m!4103389))

(assert (=> b!3606522 m!4103389))

(assert (=> b!3606522 m!4103391))

(assert (=> b!3606522 m!4103391))

(declare-fun m!4103405 () Bool)

(assert (=> b!3606522 m!4103405))

(assert (=> b!3606524 m!4103381))

(declare-fun m!4103407 () Bool)

(assert (=> b!3606524 m!4103407))

(declare-fun m!4103409 () Bool)

(assert (=> b!3606524 m!4103409))

(declare-fun m!4103411 () Bool)

(assert (=> b!3606519 m!4103411))

(assert (=> b!3606521 m!4103381))

(declare-fun m!4103413 () Bool)

(assert (=> b!3606521 m!4103413))

(assert (=> b!3606196 d!1062285))

(assert (=> b!3606196 d!1062181))

(declare-fun d!1062287 () Bool)

(assert (=> d!1062287 (= (isDefined!6110 lt!1240216) (not (isEmpty!22401 lt!1240216)))))

(declare-fun bs!570708 () Bool)

(assert (= bs!570708 d!1062287))

(declare-fun m!4103415 () Bool)

(assert (=> bs!570708 m!4103415))

(assert (=> b!3606196 d!1062287))

(declare-fun b!3606530 () Bool)

(declare-fun e!2231892 () Bool)

(assert (=> b!3606530 (= e!2231892 (isPrefix!2987 (tail!5591 lt!1240236) (tail!5591 lt!1240232)))))

(declare-fun b!3606529 () Bool)

(declare-fun res!1458332 () Bool)

(assert (=> b!3606529 (=> (not res!1458332) (not e!2231892))))

(assert (=> b!3606529 (= res!1458332 (= (head!7576 lt!1240236) (head!7576 lt!1240232)))))

(declare-fun b!3606528 () Bool)

(declare-fun e!2231894 () Bool)

(assert (=> b!3606528 (= e!2231894 e!2231892)))

(declare-fun res!1458335 () Bool)

(assert (=> b!3606528 (=> (not res!1458335) (not e!2231892))))

(assert (=> b!3606528 (= res!1458335 (not ((_ is Nil!37946) lt!1240232)))))

(declare-fun b!3606531 () Bool)

(declare-fun e!2231893 () Bool)

(assert (=> b!3606531 (= e!2231893 (>= (size!28924 lt!1240232) (size!28924 lt!1240236)))))

(declare-fun d!1062289 () Bool)

(assert (=> d!1062289 e!2231893))

(declare-fun res!1458334 () Bool)

(assert (=> d!1062289 (=> res!1458334 e!2231893)))

(declare-fun lt!1240354 () Bool)

(assert (=> d!1062289 (= res!1458334 (not lt!1240354))))

(assert (=> d!1062289 (= lt!1240354 e!2231894)))

(declare-fun res!1458333 () Bool)

(assert (=> d!1062289 (=> res!1458333 e!2231894)))

(assert (=> d!1062289 (= res!1458333 ((_ is Nil!37946) lt!1240236))))

(assert (=> d!1062289 (= (isPrefix!2987 lt!1240236 lt!1240232) lt!1240354)))

(assert (= (and d!1062289 (not res!1458333)) b!3606528))

(assert (= (and b!3606528 res!1458335) b!3606529))

(assert (= (and b!3606529 res!1458332) b!3606530))

(assert (= (and d!1062289 (not res!1458334)) b!3606531))

(assert (=> b!3606530 m!4103183))

(declare-fun m!4103417 () Bool)

(assert (=> b!3606530 m!4103417))

(assert (=> b!3606530 m!4103183))

(assert (=> b!3606530 m!4103417))

(declare-fun m!4103419 () Bool)

(assert (=> b!3606530 m!4103419))

(assert (=> b!3606529 m!4103187))

(declare-fun m!4103421 () Bool)

(assert (=> b!3606529 m!4103421))

(assert (=> b!3606531 m!4103409))

(assert (=> b!3606531 m!4103363))

(assert (=> b!3606196 d!1062289))

(declare-fun d!1062291 () Bool)

(declare-fun e!2231897 () Bool)

(assert (=> d!1062291 e!2231897))

(declare-fun res!1458340 () Bool)

(assert (=> d!1062291 (=> (not res!1458340) (not e!2231897))))

(assert (=> d!1062291 (= res!1458340 (isDefined!6110 (getRuleFromTag!1230 thiss!23823 rules!3307 (tag!6324 (rule!8368 (_1!22054 lt!1240237))))))))

(declare-fun lt!1240357 () Unit!54039)

(declare-fun choose!21054 (LexerInterface!5213 List!38071 List!38070 Token!10614) Unit!54039)

(assert (=> d!1062291 (= lt!1240357 (choose!21054 thiss!23823 rules!3307 lt!1240232 (_1!22054 lt!1240237)))))

(assert (=> d!1062291 (rulesInvariant!4610 thiss!23823 rules!3307)))

(assert (=> d!1062291 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1230 thiss!23823 rules!3307 lt!1240232 (_1!22054 lt!1240237)) lt!1240357)))

(declare-fun b!3606536 () Bool)

(declare-fun res!1458341 () Bool)

(assert (=> b!3606536 (=> (not res!1458341) (not e!2231897))))

(assert (=> b!3606536 (= res!1458341 (matchR!4952 (regex!5624 (get!12300 (getRuleFromTag!1230 thiss!23823 rules!3307 (tag!6324 (rule!8368 (_1!22054 lt!1240237)))))) (list!13988 (charsOf!3638 (_1!22054 lt!1240237)))))))

(declare-fun b!3606537 () Bool)

(assert (=> b!3606537 (= e!2231897 (= (rule!8368 (_1!22054 lt!1240237)) (get!12300 (getRuleFromTag!1230 thiss!23823 rules!3307 (tag!6324 (rule!8368 (_1!22054 lt!1240237)))))))))

(assert (= (and d!1062291 res!1458340) b!3606536))

(assert (= (and b!3606536 res!1458341) b!3606537))

(assert (=> d!1062291 m!4103063))

(assert (=> d!1062291 m!4103063))

(declare-fun m!4103423 () Bool)

(assert (=> d!1062291 m!4103423))

(declare-fun m!4103425 () Bool)

(assert (=> d!1062291 m!4103425))

(assert (=> d!1062291 m!4103005))

(assert (=> b!3606536 m!4103051))

(assert (=> b!3606536 m!4103073))

(assert (=> b!3606536 m!4103073))

(declare-fun m!4103427 () Bool)

(assert (=> b!3606536 m!4103427))

(assert (=> b!3606536 m!4103063))

(assert (=> b!3606536 m!4103063))

(declare-fun m!4103429 () Bool)

(assert (=> b!3606536 m!4103429))

(assert (=> b!3606536 m!4103051))

(assert (=> b!3606537 m!4103063))

(assert (=> b!3606537 m!4103063))

(assert (=> b!3606537 m!4103429))

(assert (=> b!3606196 d!1062291))

(declare-fun b!3606540 () Bool)

(declare-fun e!2231898 () Bool)

(assert (=> b!3606540 (= e!2231898 (isPrefix!2987 (tail!5591 lt!1240250) (tail!5591 lt!1240232)))))

(declare-fun b!3606539 () Bool)

(declare-fun res!1458342 () Bool)

(assert (=> b!3606539 (=> (not res!1458342) (not e!2231898))))

(assert (=> b!3606539 (= res!1458342 (= (head!7576 lt!1240250) (head!7576 lt!1240232)))))

(declare-fun b!3606538 () Bool)

(declare-fun e!2231900 () Bool)

(assert (=> b!3606538 (= e!2231900 e!2231898)))

(declare-fun res!1458345 () Bool)

(assert (=> b!3606538 (=> (not res!1458345) (not e!2231898))))

(assert (=> b!3606538 (= res!1458345 (not ((_ is Nil!37946) lt!1240232)))))

(declare-fun b!3606541 () Bool)

(declare-fun e!2231899 () Bool)

(assert (=> b!3606541 (= e!2231899 (>= (size!28924 lt!1240232) (size!28924 lt!1240250)))))

(declare-fun d!1062293 () Bool)

(assert (=> d!1062293 e!2231899))

(declare-fun res!1458344 () Bool)

(assert (=> d!1062293 (=> res!1458344 e!2231899)))

(declare-fun lt!1240358 () Bool)

(assert (=> d!1062293 (= res!1458344 (not lt!1240358))))

(assert (=> d!1062293 (= lt!1240358 e!2231900)))

(declare-fun res!1458343 () Bool)

(assert (=> d!1062293 (=> res!1458343 e!2231900)))

(assert (=> d!1062293 (= res!1458343 ((_ is Nil!37946) lt!1240250))))

(assert (=> d!1062293 (= (isPrefix!2987 lt!1240250 lt!1240232) lt!1240358)))

(assert (= (and d!1062293 (not res!1458343)) b!3606538))

(assert (= (and b!3606538 res!1458345) b!3606539))

(assert (= (and b!3606539 res!1458342) b!3606540))

(assert (= (and d!1062293 (not res!1458344)) b!3606541))

(assert (=> b!3606540 m!4103371))

(assert (=> b!3606540 m!4103417))

(assert (=> b!3606540 m!4103371))

(assert (=> b!3606540 m!4103417))

(declare-fun m!4103431 () Bool)

(assert (=> b!3606540 m!4103431))

(assert (=> b!3606539 m!4102973))

(assert (=> b!3606539 m!4103421))

(assert (=> b!3606541 m!4103409))

(assert (=> b!3606541 m!4102955))

(assert (=> b!3606196 d!1062293))

(declare-fun b!3606552 () Bool)

(declare-fun e!2231906 () Unit!54039)

(declare-fun Unit!54049 () Unit!54039)

(assert (=> b!3606552 (= e!2231906 Unit!54049)))

(declare-fun lt!1240409 () List!38070)

(assert (=> b!3606552 (= lt!1240409 (++!9440 lt!1240236 suffix!1395))))

(declare-fun lt!1240393 () Unit!54039)

(declare-fun lt!1240404 () Token!10614)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!479 (LexerInterface!5213 Rule!11048 List!38071 List!38070) Unit!54039)

(assert (=> b!3606552 (= lt!1240393 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!479 thiss!23823 (rule!8368 lt!1240404) rules!3307 lt!1240409))))

(assert (=> b!3606552 (isEmpty!22402 (maxPrefixOneRule!1891 thiss!23823 (rule!8368 lt!1240404) lt!1240409))))

(declare-fun lt!1240401 () Unit!54039)

(assert (=> b!3606552 (= lt!1240401 lt!1240393)))

(declare-fun lt!1240407 () List!38070)

(assert (=> b!3606552 (= lt!1240407 (list!13988 (charsOf!3638 lt!1240404)))))

(declare-fun lt!1240405 () Unit!54039)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!467 (LexerInterface!5213 Rule!11048 List!38070 List!38070) Unit!54039)

(assert (=> b!3606552 (= lt!1240405 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!467 thiss!23823 (rule!8368 lt!1240404) lt!1240407 (++!9440 lt!1240236 suffix!1395)))))

(assert (=> b!3606552 (not (matchR!4952 (regex!5624 (rule!8368 lt!1240404)) lt!1240407))))

(declare-fun lt!1240400 () Unit!54039)

(assert (=> b!3606552 (= lt!1240400 lt!1240405)))

(assert (=> b!3606552 false))

(declare-fun b!3606553 () Bool)

(declare-fun Unit!54050 () Unit!54039)

(assert (=> b!3606553 (= e!2231906 Unit!54050)))

(declare-fun e!2231905 () Bool)

(declare-fun b!3606551 () Bool)

(assert (=> b!3606551 (= e!2231905 (= (rule!8368 lt!1240404) (get!12300 (getRuleFromTag!1230 thiss!23823 rules!3307 (tag!6324 (rule!8368 lt!1240404))))))))

(declare-fun d!1062295 () Bool)

(assert (=> d!1062295 (isDefined!6111 (maxPrefix!2747 thiss!23823 rules!3307 (++!9440 lt!1240236 suffix!1395)))))

(declare-fun lt!1240398 () Unit!54039)

(assert (=> d!1062295 (= lt!1240398 e!2231906)))

(declare-fun c!624030 () Bool)

(assert (=> d!1062295 (= c!624030 (isEmpty!22402 (maxPrefix!2747 thiss!23823 rules!3307 (++!9440 lt!1240236 suffix!1395))))))

(declare-fun lt!1240403 () Unit!54039)

(declare-fun lt!1240406 () Unit!54039)

(assert (=> d!1062295 (= lt!1240403 lt!1240406)))

(assert (=> d!1062295 e!2231905))

(declare-fun res!1458350 () Bool)

(assert (=> d!1062295 (=> (not res!1458350) (not e!2231905))))

(assert (=> d!1062295 (= res!1458350 (isDefined!6110 (getRuleFromTag!1230 thiss!23823 rules!3307 (tag!6324 (rule!8368 lt!1240404)))))))

(assert (=> d!1062295 (= lt!1240406 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1230 thiss!23823 rules!3307 lt!1240236 lt!1240404))))

(declare-fun lt!1240397 () Unit!54039)

(declare-fun lt!1240396 () Unit!54039)

(assert (=> d!1062295 (= lt!1240397 lt!1240396)))

(declare-fun lt!1240395 () List!38070)

(assert (=> d!1062295 (isPrefix!2987 lt!1240395 (++!9440 lt!1240236 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!443 (List!38070 List!38070 List!38070) Unit!54039)

(assert (=> d!1062295 (= lt!1240396 (lemmaPrefixStaysPrefixWhenAddingToSuffix!443 lt!1240395 lt!1240236 suffix!1395))))

(assert (=> d!1062295 (= lt!1240395 (list!13988 (charsOf!3638 lt!1240404)))))

(declare-fun lt!1240394 () Unit!54039)

(declare-fun lt!1240402 () Unit!54039)

(assert (=> d!1062295 (= lt!1240394 lt!1240402)))

(declare-fun lt!1240399 () List!38070)

(declare-fun lt!1240408 () List!38070)

(assert (=> d!1062295 (isPrefix!2987 lt!1240399 (++!9440 lt!1240399 lt!1240408))))

(assert (=> d!1062295 (= lt!1240402 (lemmaConcatTwoListThenFirstIsPrefix!1908 lt!1240399 lt!1240408))))

(assert (=> d!1062295 (= lt!1240408 (_2!22054 (get!12301 (maxPrefix!2747 thiss!23823 rules!3307 lt!1240236))))))

(assert (=> d!1062295 (= lt!1240399 (list!13988 (charsOf!3638 lt!1240404)))))

(declare-datatypes ((List!38073 0))(
  ( (Nil!37949) (Cons!37949 (h!43369 Token!10614) (t!293004 List!38073)) )
))
(declare-fun head!7577 (List!38073) Token!10614)

(declare-datatypes ((IArray!23125 0))(
  ( (IArray!23126 (innerList!11620 List!38073)) )
))
(declare-datatypes ((Conc!11560 0))(
  ( (Node!11560 (left!29654 Conc!11560) (right!29984 Conc!11560) (csize!23350 Int) (cheight!11771 Int)) (Leaf!17983 (xs!14762 IArray!23125) (csize!23351 Int)) (Empty!11560) )
))
(declare-datatypes ((BalanceConc!22734 0))(
  ( (BalanceConc!22735 (c!624088 Conc!11560)) )
))
(declare-fun list!13990 (BalanceConc!22734) List!38073)

(declare-datatypes ((tuple2!37844 0))(
  ( (tuple2!37845 (_1!22056 BalanceConc!22734) (_2!22056 BalanceConc!22732)) )
))
(declare-fun lex!2475 (LexerInterface!5213 List!38071 BalanceConc!22732) tuple2!37844)

(assert (=> d!1062295 (= lt!1240404 (head!7577 (list!13990 (_1!22056 (lex!2475 thiss!23823 rules!3307 (seqFromList!4177 lt!1240236))))))))

(assert (=> d!1062295 (not (isEmpty!22399 rules!3307))))

(assert (=> d!1062295 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!893 thiss!23823 rules!3307 lt!1240236 suffix!1395) lt!1240398)))

(declare-fun b!3606550 () Bool)

(declare-fun res!1458351 () Bool)

(assert (=> b!3606550 (=> (not res!1458351) (not e!2231905))))

(assert (=> b!3606550 (= res!1458351 (matchR!4952 (regex!5624 (get!12300 (getRuleFromTag!1230 thiss!23823 rules!3307 (tag!6324 (rule!8368 lt!1240404))))) (list!13988 (charsOf!3638 lt!1240404))))))

(assert (= (and d!1062295 res!1458350) b!3606550))

(assert (= (and b!3606550 res!1458351) b!3606551))

(assert (= (and d!1062295 c!624030) b!3606552))

(assert (= (and d!1062295 (not c!624030)) b!3606553))

(declare-fun m!4103433 () Bool)

(assert (=> b!3606552 m!4103433))

(declare-fun m!4103435 () Bool)

(assert (=> b!3606552 m!4103435))

(declare-fun m!4103437 () Bool)

(assert (=> b!3606552 m!4103437))

(declare-fun m!4103439 () Bool)

(assert (=> b!3606552 m!4103439))

(assert (=> b!3606552 m!4103039))

(assert (=> b!3606552 m!4103437))

(assert (=> b!3606552 m!4103039))

(declare-fun m!4103441 () Bool)

(assert (=> b!3606552 m!4103441))

(declare-fun m!4103443 () Bool)

(assert (=> b!3606552 m!4103443))

(declare-fun m!4103445 () Bool)

(assert (=> b!3606552 m!4103445))

(assert (=> b!3606552 m!4103443))

(declare-fun m!4103447 () Bool)

(assert (=> b!3606551 m!4103447))

(assert (=> b!3606551 m!4103447))

(declare-fun m!4103449 () Bool)

(assert (=> b!3606551 m!4103449))

(declare-fun m!4103451 () Bool)

(assert (=> d!1062295 m!4103451))

(declare-fun m!4103453 () Bool)

(assert (=> d!1062295 m!4103453))

(assert (=> d!1062295 m!4103039))

(declare-fun m!4103455 () Bool)

(assert (=> d!1062295 m!4103455))

(assert (=> d!1062295 m!4103039))

(declare-fun m!4103457 () Bool)

(assert (=> d!1062295 m!4103457))

(declare-fun m!4103459 () Bool)

(assert (=> d!1062295 m!4103459))

(assert (=> d!1062295 m!4103457))

(assert (=> d!1062295 m!4103447))

(declare-fun m!4103461 () Bool)

(assert (=> d!1062295 m!4103461))

(declare-fun m!4103463 () Bool)

(assert (=> d!1062295 m!4103463))

(assert (=> d!1062295 m!4103461))

(declare-fun m!4103465 () Bool)

(assert (=> d!1062295 m!4103465))

(declare-fun m!4103467 () Bool)

(assert (=> d!1062295 m!4103467))

(declare-fun m!4103469 () Bool)

(assert (=> d!1062295 m!4103469))

(declare-fun m!4103471 () Bool)

(assert (=> d!1062295 m!4103471))

(declare-fun m!4103473 () Bool)

(assert (=> d!1062295 m!4103473))

(assert (=> d!1062295 m!4102989))

(assert (=> d!1062295 m!4103437))

(assert (=> d!1062295 m!4103439))

(assert (=> d!1062295 m!4103039))

(assert (=> d!1062295 m!4103461))

(assert (=> d!1062295 m!4103437))

(assert (=> d!1062295 m!4103467))

(assert (=> d!1062295 m!4103447))

(declare-fun m!4103475 () Bool)

(assert (=> d!1062295 m!4103475))

(assert (=> d!1062295 m!4102993))

(assert (=> d!1062295 m!4102993))

(declare-fun m!4103477 () Bool)

(assert (=> d!1062295 m!4103477))

(assert (=> d!1062295 m!4103451))

(declare-fun m!4103479 () Bool)

(assert (=> d!1062295 m!4103479))

(assert (=> b!3606550 m!4103439))

(declare-fun m!4103481 () Bool)

(assert (=> b!3606550 m!4103481))

(assert (=> b!3606550 m!4103437))

(assert (=> b!3606550 m!4103439))

(assert (=> b!3606550 m!4103437))

(assert (=> b!3606550 m!4103447))

(assert (=> b!3606550 m!4103449))

(assert (=> b!3606550 m!4103447))

(assert (=> b!3606196 d!1062295))

(declare-fun d!1062297 () Bool)

(assert (=> d!1062297 (not (matchR!4952 (regex!5624 (rule!8368 (_1!22054 lt!1240237))) lt!1240250))))

(declare-fun lt!1240410 () Unit!54039)

(assert (=> d!1062297 (= lt!1240410 (choose!21047 (regex!5624 (rule!8368 (_1!22054 lt!1240237))) lt!1240250 lt!1240231))))

(assert (=> d!1062297 (validRegex!4754 (regex!5624 (rule!8368 (_1!22054 lt!1240237))))))

(assert (=> d!1062297 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!608 (regex!5624 (rule!8368 (_1!22054 lt!1240237))) lt!1240250 lt!1240231) lt!1240410)))

(declare-fun bs!570709 () Bool)

(assert (= bs!570709 d!1062297))

(assert (=> bs!570709 m!4103069))

(declare-fun m!4103483 () Bool)

(assert (=> bs!570709 m!4103483))

(declare-fun m!4103485 () Bool)

(assert (=> bs!570709 m!4103485))

(assert (=> bm!260661 d!1062297))

(declare-fun d!1062299 () Bool)

(assert (=> d!1062299 (= (inv!51310 (tag!6324 rule!403)) (= (mod (str.len (value!180743 (tag!6324 rule!403))) 2) 0))))

(assert (=> b!3606198 d!1062299))

(declare-fun d!1062301 () Bool)

(declare-fun res!1458352 () Bool)

(declare-fun e!2231907 () Bool)

(assert (=> d!1062301 (=> (not res!1458352) (not e!2231907))))

(assert (=> d!1062301 (= res!1458352 (semiInverseModEq!2391 (toChars!7767 (transformation!5624 rule!403)) (toValue!7908 (transformation!5624 rule!403))))))

(assert (=> d!1062301 (= (inv!51314 (transformation!5624 rule!403)) e!2231907)))

(declare-fun b!3606554 () Bool)

(assert (=> b!3606554 (= e!2231907 (equivClasses!2290 (toChars!7767 (transformation!5624 rule!403)) (toValue!7908 (transformation!5624 rule!403))))))

(assert (= (and d!1062301 res!1458352) b!3606554))

(declare-fun m!4103487 () Bool)

(assert (=> d!1062301 m!4103487))

(declare-fun m!4103489 () Bool)

(assert (=> b!3606554 m!4103489))

(assert (=> b!3606198 d!1062301))

(declare-fun b!3606641 () Bool)

(declare-fun e!2231964 () Bool)

(assert (=> b!3606641 (= e!2231964 true)))

(declare-fun d!1062303 () Bool)

(assert (=> d!1062303 e!2231964))

(assert (= d!1062303 b!3606641))

(declare-fun lambda!124026 () Int)

(declare-fun order!20715 () Int)

(declare-fun order!20717 () Int)

(declare-fun dynLambda!16405 (Int Int) Int)

(declare-fun dynLambda!16406 (Int Int) Int)

(assert (=> b!3606641 (< (dynLambda!16405 order!20715 (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) (dynLambda!16406 order!20717 lambda!124026))))

(declare-fun order!20719 () Int)

(declare-fun dynLambda!16407 (Int Int) Int)

(assert (=> b!3606641 (< (dynLambda!16407 order!20719 (toChars!7767 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) (dynLambda!16406 order!20717 lambda!124026))))

(declare-fun dynLambda!16408 (Int BalanceConc!22732) TokenValue!5854)

(assert (=> d!1062303 (= (list!13988 (dynLambda!16399 (toChars!7767 (transformation!5624 (rule!8368 (_1!22054 lt!1240237)))) (dynLambda!16408 (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237)))) lt!1240214))) (list!13988 lt!1240214))))

(declare-fun lt!1240497 () Unit!54039)

(declare-fun ForallOf!652 (Int BalanceConc!22732) Unit!54039)

(assert (=> d!1062303 (= lt!1240497 (ForallOf!652 lambda!124026 lt!1240214))))

(assert (=> d!1062303 (= (lemmaSemiInverse!1381 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))) lt!1240214) lt!1240497)))

(declare-fun b_lambda!106701 () Bool)

(assert (=> (not b_lambda!106701) (not d!1062303)))

(declare-fun tb!206617 () Bool)

(declare-fun t!292924 () Bool)

(assert (=> (and b!3606178 (= (toChars!7767 (transformation!5624 (rule!8368 token!511))) (toChars!7767 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) t!292924) tb!206617))

(declare-fun e!2231965 () Bool)

(declare-fun tp!1102739 () Bool)

(declare-fun b!3606642 () Bool)

(assert (=> b!3606642 (= e!2231965 (and (inv!51315 (c!623945 (dynLambda!16399 (toChars!7767 (transformation!5624 (rule!8368 (_1!22054 lt!1240237)))) (dynLambda!16408 (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237)))) lt!1240214)))) tp!1102739))))

(declare-fun result!251824 () Bool)

(assert (=> tb!206617 (= result!251824 (and (inv!51316 (dynLambda!16399 (toChars!7767 (transformation!5624 (rule!8368 (_1!22054 lt!1240237)))) (dynLambda!16408 (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237)))) lt!1240214))) e!2231965))))

(assert (= tb!206617 b!3606642))

(declare-fun m!4103651 () Bool)

(assert (=> b!3606642 m!4103651))

(declare-fun m!4103653 () Bool)

(assert (=> tb!206617 m!4103653))

(assert (=> d!1062303 t!292924))

(declare-fun b_and!262603 () Bool)

(assert (= b_and!262547 (and (=> t!292924 result!251824) b_and!262603)))

(declare-fun t!292926 () Bool)

(declare-fun tb!206619 () Bool)

(assert (=> (and b!3606169 (= (toChars!7767 (transformation!5624 rule!403)) (toChars!7767 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) t!292926) tb!206619))

(declare-fun result!251826 () Bool)

(assert (= result!251826 result!251824))

(assert (=> d!1062303 t!292926))

(declare-fun b_and!262605 () Bool)

(assert (= b_and!262549 (and (=> t!292926 result!251826) b_and!262605)))

(declare-fun tb!206621 () Bool)

(declare-fun t!292928 () Bool)

(assert (=> (and b!3606202 (= (toChars!7767 (transformation!5624 anOtherTypeRule!33)) (toChars!7767 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) t!292928) tb!206621))

(declare-fun result!251828 () Bool)

(assert (= result!251828 result!251824))

(assert (=> d!1062303 t!292928))

(declare-fun b_and!262607 () Bool)

(assert (= b_and!262551 (and (=> t!292928 result!251828) b_and!262607)))

(declare-fun tb!206623 () Bool)

(declare-fun t!292930 () Bool)

(assert (=> (and b!3606167 (= (toChars!7767 (transformation!5624 (h!43367 rules!3307))) (toChars!7767 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) t!292930) tb!206623))

(declare-fun result!251830 () Bool)

(assert (= result!251830 result!251824))

(assert (=> d!1062303 t!292930))

(declare-fun b_and!262609 () Bool)

(assert (= b_and!262553 (and (=> t!292930 result!251830) b_and!262609)))

(declare-fun b_lambda!106703 () Bool)

(assert (=> (not b_lambda!106703) (not d!1062303)))

(declare-fun t!292932 () Bool)

(declare-fun tb!206625 () Bool)

(assert (=> (and b!3606178 (= (toValue!7908 (transformation!5624 (rule!8368 token!511))) (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) t!292932) tb!206625))

(declare-fun result!251832 () Bool)

(assert (=> tb!206625 (= result!251832 (inv!21 (dynLambda!16408 (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237)))) lt!1240214)))))

(declare-fun m!4103655 () Bool)

(assert (=> tb!206625 m!4103655))

(assert (=> d!1062303 t!292932))

(declare-fun b_and!262611 () Bool)

(assert (= b_and!262531 (and (=> t!292932 result!251832) b_and!262611)))

(declare-fun t!292934 () Bool)

(declare-fun tb!206627 () Bool)

(assert (=> (and b!3606169 (= (toValue!7908 (transformation!5624 rule!403)) (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) t!292934) tb!206627))

(declare-fun result!251836 () Bool)

(assert (= result!251836 result!251832))

(assert (=> d!1062303 t!292934))

(declare-fun b_and!262613 () Bool)

(assert (= b_and!262535 (and (=> t!292934 result!251836) b_and!262613)))

(declare-fun t!292936 () Bool)

(declare-fun tb!206629 () Bool)

(assert (=> (and b!3606202 (= (toValue!7908 (transformation!5624 anOtherTypeRule!33)) (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) t!292936) tb!206629))

(declare-fun result!251838 () Bool)

(assert (= result!251838 result!251832))

(assert (=> d!1062303 t!292936))

(declare-fun b_and!262615 () Bool)

(assert (= b_and!262539 (and (=> t!292936 result!251838) b_and!262615)))

(declare-fun tb!206631 () Bool)

(declare-fun t!292938 () Bool)

(assert (=> (and b!3606167 (= (toValue!7908 (transformation!5624 (h!43367 rules!3307))) (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) t!292938) tb!206631))

(declare-fun result!251840 () Bool)

(assert (= result!251840 result!251832))

(assert (=> d!1062303 t!292938))

(declare-fun b_and!262617 () Bool)

(assert (= b_and!262543 (and (=> t!292938 result!251840) b_and!262617)))

(declare-fun m!4103657 () Bool)

(assert (=> d!1062303 m!4103657))

(assert (=> d!1062303 m!4103037))

(declare-fun m!4103659 () Bool)

(assert (=> d!1062303 m!4103659))

(declare-fun m!4103661 () Bool)

(assert (=> d!1062303 m!4103661))

(declare-fun m!4103663 () Bool)

(assert (=> d!1062303 m!4103663))

(assert (=> d!1062303 m!4103659))

(assert (=> d!1062303 m!4103663))

(assert (=> b!3606179 d!1062303))

(declare-fun b!3606651 () Bool)

(declare-fun e!2231973 () Bool)

(assert (=> b!3606651 (= e!2231973 true)))

(declare-fun d!1062351 () Bool)

(assert (=> d!1062351 e!2231973))

(assert (= d!1062351 b!3606651))

(declare-fun lambda!124029 () Int)

(declare-fun order!20721 () Int)

(declare-fun dynLambda!16409 (Int Int) Int)

(assert (=> b!3606651 (< (dynLambda!16405 order!20715 (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) (dynLambda!16409 order!20721 lambda!124029))))

(assert (=> b!3606651 (< (dynLambda!16407 order!20719 (toChars!7767 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) (dynLambda!16409 order!20721 lambda!124029))))

(assert (=> d!1062351 (= (dynLambda!16408 (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237)))) lt!1240214) (dynLambda!16408 (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237)))) (seqFromList!4177 (originalCharacters!6338 (_1!22054 lt!1240237)))))))

(declare-fun lt!1240500 () Unit!54039)

(declare-fun Forall2of!310 (Int BalanceConc!22732 BalanceConc!22732) Unit!54039)

(assert (=> d!1062351 (= lt!1240500 (Forall2of!310 lambda!124029 lt!1240214 (seqFromList!4177 (originalCharacters!6338 (_1!22054 lt!1240237)))))))

(assert (=> d!1062351 (= (list!13988 lt!1240214) (list!13988 (seqFromList!4177 (originalCharacters!6338 (_1!22054 lt!1240237)))))))

(assert (=> d!1062351 (= (lemmaEqSameImage!815 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))) lt!1240214 (seqFromList!4177 (originalCharacters!6338 (_1!22054 lt!1240237)))) lt!1240500)))

(declare-fun b_lambda!106705 () Bool)

(assert (=> (not b_lambda!106705) (not d!1062351)))

(assert (=> d!1062351 t!292932))

(declare-fun b_and!262619 () Bool)

(assert (= b_and!262611 (and (=> t!292932 result!251832) b_and!262619)))

(assert (=> d!1062351 t!292934))

(declare-fun b_and!262621 () Bool)

(assert (= b_and!262613 (and (=> t!292934 result!251836) b_and!262621)))

(assert (=> d!1062351 t!292936))

(declare-fun b_and!262623 () Bool)

(assert (= b_and!262615 (and (=> t!292936 result!251838) b_and!262623)))

(assert (=> d!1062351 t!292938))

(declare-fun b_and!262625 () Bool)

(assert (= b_and!262617 (and (=> t!292938 result!251840) b_and!262625)))

(declare-fun b_lambda!106707 () Bool)

(assert (=> (not b_lambda!106707) (not d!1062351)))

(declare-fun tb!206633 () Bool)

(declare-fun t!292940 () Bool)

(assert (=> (and b!3606178 (= (toValue!7908 (transformation!5624 (rule!8368 token!511))) (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) t!292940) tb!206633))

(declare-fun result!251842 () Bool)

(assert (=> tb!206633 (= result!251842 (inv!21 (dynLambda!16408 (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237)))) (seqFromList!4177 (originalCharacters!6338 (_1!22054 lt!1240237))))))))

(declare-fun m!4103665 () Bool)

(assert (=> tb!206633 m!4103665))

(assert (=> d!1062351 t!292940))

(declare-fun b_and!262627 () Bool)

(assert (= b_and!262619 (and (=> t!292940 result!251842) b_and!262627)))

(declare-fun t!292942 () Bool)

(declare-fun tb!206635 () Bool)

(assert (=> (and b!3606169 (= (toValue!7908 (transformation!5624 rule!403)) (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) t!292942) tb!206635))

(declare-fun result!251844 () Bool)

(assert (= result!251844 result!251842))

(assert (=> d!1062351 t!292942))

(declare-fun b_and!262629 () Bool)

(assert (= b_and!262621 (and (=> t!292942 result!251844) b_and!262629)))

(declare-fun tb!206637 () Bool)

(declare-fun t!292944 () Bool)

(assert (=> (and b!3606202 (= (toValue!7908 (transformation!5624 anOtherTypeRule!33)) (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) t!292944) tb!206637))

(declare-fun result!251846 () Bool)

(assert (= result!251846 result!251842))

(assert (=> d!1062351 t!292944))

(declare-fun b_and!262631 () Bool)

(assert (= b_and!262623 (and (=> t!292944 result!251846) b_and!262631)))

(declare-fun t!292946 () Bool)

(declare-fun tb!206639 () Bool)

(assert (=> (and b!3606167 (= (toValue!7908 (transformation!5624 (h!43367 rules!3307))) (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) t!292946) tb!206639))

(declare-fun result!251848 () Bool)

(assert (= result!251848 result!251842))

(assert (=> d!1062351 t!292946))

(declare-fun b_and!262633 () Bool)

(assert (= b_and!262625 (and (=> t!292946 result!251848) b_and!262633)))

(assert (=> d!1062351 m!4103663))

(assert (=> d!1062351 m!4103037))

(assert (=> d!1062351 m!4103093))

(declare-fun m!4103667 () Bool)

(assert (=> d!1062351 m!4103667))

(assert (=> d!1062351 m!4103093))

(declare-fun m!4103669 () Bool)

(assert (=> d!1062351 m!4103669))

(assert (=> d!1062351 m!4103093))

(declare-fun m!4103671 () Bool)

(assert (=> d!1062351 m!4103671))

(assert (=> b!3606179 d!1062351))

(declare-fun d!1062353 () Bool)

(declare-fun lt!1240501 () Int)

(assert (=> d!1062353 (= lt!1240501 (size!28924 (list!13988 lt!1240214)))))

(assert (=> d!1062353 (= lt!1240501 (size!28926 (c!623945 lt!1240214)))))

(assert (=> d!1062353 (= (size!28925 lt!1240214) lt!1240501)))

(declare-fun bs!570718 () Bool)

(assert (= bs!570718 d!1062353))

(assert (=> bs!570718 m!4103037))

(assert (=> bs!570718 m!4103037))

(declare-fun m!4103673 () Bool)

(assert (=> bs!570718 m!4103673))

(declare-fun m!4103675 () Bool)

(assert (=> bs!570718 m!4103675))

(assert (=> b!3606179 d!1062353))

(declare-fun d!1062355 () Bool)

(declare-fun fromListB!1931 (List!38070) BalanceConc!22732)

(assert (=> d!1062355 (= (seqFromList!4177 (originalCharacters!6338 (_1!22054 lt!1240237))) (fromListB!1931 (originalCharacters!6338 (_1!22054 lt!1240237))))))

(declare-fun bs!570719 () Bool)

(assert (= bs!570719 d!1062355))

(declare-fun m!4103677 () Bool)

(assert (=> bs!570719 m!4103677))

(assert (=> b!3606179 d!1062355))

(declare-fun d!1062357 () Bool)

(assert (=> d!1062357 (= (size!28923 (_1!22054 lt!1240237)) (size!28924 (originalCharacters!6338 (_1!22054 lt!1240237))))))

(declare-fun Unit!54053 () Unit!54039)

(assert (=> d!1062357 (= (lemmaCharactersSize!677 (_1!22054 lt!1240237)) Unit!54053)))

(declare-fun bs!570720 () Bool)

(assert (= bs!570720 d!1062357))

(declare-fun m!4103679 () Bool)

(assert (=> bs!570720 m!4103679))

(assert (=> b!3606179 d!1062357))

(declare-fun d!1062359 () Bool)

(assert (=> d!1062359 (= (apply!9130 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))) lt!1240214) (dynLambda!16408 (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237)))) lt!1240214))))

(declare-fun b_lambda!106709 () Bool)

(assert (=> (not b_lambda!106709) (not d!1062359)))

(assert (=> d!1062359 t!292932))

(declare-fun b_and!262635 () Bool)

(assert (= b_and!262627 (and (=> t!292932 result!251832) b_and!262635)))

(assert (=> d!1062359 t!292934))

(declare-fun b_and!262637 () Bool)

(assert (= b_and!262629 (and (=> t!292934 result!251836) b_and!262637)))

(assert (=> d!1062359 t!292936))

(declare-fun b_and!262639 () Bool)

(assert (= b_and!262631 (and (=> t!292936 result!251838) b_and!262639)))

(assert (=> d!1062359 t!292938))

(declare-fun b_and!262641 () Bool)

(assert (= b_and!262633 (and (=> t!292938 result!251840) b_and!262641)))

(assert (=> d!1062359 m!4103663))

(assert (=> b!3606179 d!1062359))

(declare-fun d!1062361 () Bool)

(assert (=> d!1062361 (= (isDefined!6111 lt!1240217) (not (isEmpty!22402 lt!1240217)))))

(declare-fun bs!570721 () Bool)

(assert (= bs!570721 d!1062361))

(declare-fun m!4103681 () Bool)

(assert (=> bs!570721 m!4103681))

(assert (=> b!3606199 d!1062361))

(declare-fun b!3606652 () Bool)

(declare-fun e!2231976 () Option!7878)

(declare-fun lt!1240506 () Option!7878)

(declare-fun lt!1240502 () Option!7878)

(assert (=> b!3606652 (= e!2231976 (ite (and ((_ is None!7877) lt!1240506) ((_ is None!7877) lt!1240502)) None!7877 (ite ((_ is None!7877) lt!1240502) lt!1240506 (ite ((_ is None!7877) lt!1240506) lt!1240502 (ite (>= (size!28923 (_1!22054 (v!37607 lt!1240506))) (size!28923 (_1!22054 (v!37607 lt!1240502)))) lt!1240506 lt!1240502)))))))

(declare-fun call!260708 () Option!7878)

(assert (=> b!3606652 (= lt!1240506 call!260708)))

(assert (=> b!3606652 (= lt!1240502 (maxPrefix!2747 thiss!23823 (t!292882 rules!3307) lt!1240236))))

(declare-fun b!3606653 () Bool)

(assert (=> b!3606653 (= e!2231976 call!260708)))

(declare-fun b!3606654 () Bool)

(declare-fun e!2231975 () Bool)

(declare-fun lt!1240504 () Option!7878)

(assert (=> b!3606654 (= e!2231975 (contains!7312 rules!3307 (rule!8368 (_1!22054 (get!12301 lt!1240504)))))))

(declare-fun b!3606655 () Bool)

(declare-fun res!1458400 () Bool)

(assert (=> b!3606655 (=> (not res!1458400) (not e!2231975))))

(assert (=> b!3606655 (= res!1458400 (matchR!4952 (regex!5624 (rule!8368 (_1!22054 (get!12301 lt!1240504)))) (list!13988 (charsOf!3638 (_1!22054 (get!12301 lt!1240504))))))))

(declare-fun bm!260703 () Bool)

(assert (=> bm!260703 (= call!260708 (maxPrefixOneRule!1891 thiss!23823 (h!43367 rules!3307) lt!1240236))))

(declare-fun d!1062363 () Bool)

(declare-fun e!2231977 () Bool)

(assert (=> d!1062363 e!2231977))

(declare-fun res!1458399 () Bool)

(assert (=> d!1062363 (=> res!1458399 e!2231977)))

(assert (=> d!1062363 (= res!1458399 (isEmpty!22402 lt!1240504))))

(assert (=> d!1062363 (= lt!1240504 e!2231976)))

(declare-fun c!624046 () Bool)

(assert (=> d!1062363 (= c!624046 (and ((_ is Cons!37947) rules!3307) ((_ is Nil!37947) (t!292882 rules!3307))))))

(declare-fun lt!1240503 () Unit!54039)

(declare-fun lt!1240505 () Unit!54039)

(assert (=> d!1062363 (= lt!1240503 lt!1240505)))

(assert (=> d!1062363 (isPrefix!2987 lt!1240236 lt!1240236)))

(assert (=> d!1062363 (= lt!1240505 (lemmaIsPrefixRefl!1909 lt!1240236 lt!1240236))))

(assert (=> d!1062363 (rulesValidInductive!1974 thiss!23823 rules!3307)))

(assert (=> d!1062363 (= (maxPrefix!2747 thiss!23823 rules!3307 lt!1240236) lt!1240504)))

(declare-fun b!3606656 () Bool)

(declare-fun res!1458397 () Bool)

(assert (=> b!3606656 (=> (not res!1458397) (not e!2231975))))

(assert (=> b!3606656 (= res!1458397 (= (value!180744 (_1!22054 (get!12301 lt!1240504))) (apply!9130 (transformation!5624 (rule!8368 (_1!22054 (get!12301 lt!1240504)))) (seqFromList!4177 (originalCharacters!6338 (_1!22054 (get!12301 lt!1240504)))))))))

(declare-fun b!3606657 () Bool)

(declare-fun res!1458401 () Bool)

(assert (=> b!3606657 (=> (not res!1458401) (not e!2231975))))

(assert (=> b!3606657 (= res!1458401 (< (size!28924 (_2!22054 (get!12301 lt!1240504))) (size!28924 lt!1240236)))))

(declare-fun b!3606658 () Bool)

(declare-fun res!1458402 () Bool)

(assert (=> b!3606658 (=> (not res!1458402) (not e!2231975))))

(assert (=> b!3606658 (= res!1458402 (= (++!9440 (list!13988 (charsOf!3638 (_1!22054 (get!12301 lt!1240504)))) (_2!22054 (get!12301 lt!1240504))) lt!1240236))))

(declare-fun b!3606659 () Bool)

(declare-fun res!1458396 () Bool)

(assert (=> b!3606659 (=> (not res!1458396) (not e!2231975))))

(assert (=> b!3606659 (= res!1458396 (= (list!13988 (charsOf!3638 (_1!22054 (get!12301 lt!1240504)))) (originalCharacters!6338 (_1!22054 (get!12301 lt!1240504)))))))

(declare-fun b!3606660 () Bool)

(assert (=> b!3606660 (= e!2231977 e!2231975)))

(declare-fun res!1458398 () Bool)

(assert (=> b!3606660 (=> (not res!1458398) (not e!2231975))))

(assert (=> b!3606660 (= res!1458398 (isDefined!6111 lt!1240504))))

(assert (= (and d!1062363 c!624046) b!3606653))

(assert (= (and d!1062363 (not c!624046)) b!3606652))

(assert (= (or b!3606653 b!3606652) bm!260703))

(assert (= (and d!1062363 (not res!1458399)) b!3606660))

(assert (= (and b!3606660 res!1458398) b!3606659))

(assert (= (and b!3606659 res!1458396) b!3606657))

(assert (= (and b!3606657 res!1458401) b!3606658))

(assert (= (and b!3606658 res!1458402) b!3606656))

(assert (= (and b!3606656 res!1458397) b!3606655))

(assert (= (and b!3606655 res!1458400) b!3606654))

(declare-fun m!4103683 () Bool)

(assert (=> b!3606656 m!4103683))

(declare-fun m!4103685 () Bool)

(assert (=> b!3606656 m!4103685))

(assert (=> b!3606656 m!4103685))

(declare-fun m!4103687 () Bool)

(assert (=> b!3606656 m!4103687))

(declare-fun m!4103689 () Bool)

(assert (=> bm!260703 m!4103689))

(assert (=> b!3606658 m!4103683))

(declare-fun m!4103691 () Bool)

(assert (=> b!3606658 m!4103691))

(assert (=> b!3606658 m!4103691))

(declare-fun m!4103693 () Bool)

(assert (=> b!3606658 m!4103693))

(assert (=> b!3606658 m!4103693))

(declare-fun m!4103695 () Bool)

(assert (=> b!3606658 m!4103695))

(declare-fun m!4103697 () Bool)

(assert (=> b!3606660 m!4103697))

(declare-fun m!4103699 () Bool)

(assert (=> d!1062363 m!4103699))

(declare-fun m!4103701 () Bool)

(assert (=> d!1062363 m!4103701))

(declare-fun m!4103703 () Bool)

(assert (=> d!1062363 m!4103703))

(assert (=> d!1062363 m!4103403))

(assert (=> b!3606659 m!4103683))

(assert (=> b!3606659 m!4103691))

(assert (=> b!3606659 m!4103691))

(assert (=> b!3606659 m!4103693))

(assert (=> b!3606655 m!4103683))

(assert (=> b!3606655 m!4103691))

(assert (=> b!3606655 m!4103691))

(assert (=> b!3606655 m!4103693))

(assert (=> b!3606655 m!4103693))

(declare-fun m!4103705 () Bool)

(assert (=> b!3606655 m!4103705))

(assert (=> b!3606657 m!4103683))

(declare-fun m!4103707 () Bool)

(assert (=> b!3606657 m!4103707))

(assert (=> b!3606657 m!4103363))

(declare-fun m!4103709 () Bool)

(assert (=> b!3606652 m!4103709))

(assert (=> b!3606654 m!4103683))

(declare-fun m!4103711 () Bool)

(assert (=> b!3606654 m!4103711))

(assert (=> b!3606199 d!1062363))

(declare-fun d!1062365 () Bool)

(assert (=> d!1062365 (= (list!13988 lt!1240234) (list!13989 (c!623945 lt!1240234)))))

(declare-fun bs!570722 () Bool)

(assert (= bs!570722 d!1062365))

(declare-fun m!4103713 () Bool)

(assert (=> bs!570722 m!4103713))

(assert (=> b!3606199 d!1062365))

(declare-fun d!1062367 () Bool)

(declare-fun lt!1240517 () BalanceConc!22732)

(assert (=> d!1062367 (= (list!13988 lt!1240517) (originalCharacters!6338 token!511))))

(assert (=> d!1062367 (= lt!1240517 (dynLambda!16399 (toChars!7767 (transformation!5624 (rule!8368 token!511))) (value!180744 token!511)))))

(assert (=> d!1062367 (= (charsOf!3638 token!511) lt!1240517)))

(declare-fun b_lambda!106711 () Bool)

(assert (=> (not b_lambda!106711) (not d!1062367)))

(declare-fun t!292948 () Bool)

(declare-fun tb!206641 () Bool)

(assert (=> (and b!3606178 (= (toChars!7767 (transformation!5624 (rule!8368 token!511))) (toChars!7767 (transformation!5624 (rule!8368 token!511)))) t!292948) tb!206641))

(declare-fun b!3606679 () Bool)

(declare-fun e!2231984 () Bool)

(declare-fun tp!1102740 () Bool)

(assert (=> b!3606679 (= e!2231984 (and (inv!51315 (c!623945 (dynLambda!16399 (toChars!7767 (transformation!5624 (rule!8368 token!511))) (value!180744 token!511)))) tp!1102740))))

(declare-fun result!251850 () Bool)

(assert (=> tb!206641 (= result!251850 (and (inv!51316 (dynLambda!16399 (toChars!7767 (transformation!5624 (rule!8368 token!511))) (value!180744 token!511))) e!2231984))))

(assert (= tb!206641 b!3606679))

(declare-fun m!4103715 () Bool)

(assert (=> b!3606679 m!4103715))

(declare-fun m!4103717 () Bool)

(assert (=> tb!206641 m!4103717))

(assert (=> d!1062367 t!292948))

(declare-fun b_and!262643 () Bool)

(assert (= b_and!262603 (and (=> t!292948 result!251850) b_and!262643)))

(declare-fun t!292950 () Bool)

(declare-fun tb!206643 () Bool)

(assert (=> (and b!3606169 (= (toChars!7767 (transformation!5624 rule!403)) (toChars!7767 (transformation!5624 (rule!8368 token!511)))) t!292950) tb!206643))

(declare-fun result!251852 () Bool)

(assert (= result!251852 result!251850))

(assert (=> d!1062367 t!292950))

(declare-fun b_and!262645 () Bool)

(assert (= b_and!262605 (and (=> t!292950 result!251852) b_and!262645)))

(declare-fun t!292952 () Bool)

(declare-fun tb!206645 () Bool)

(assert (=> (and b!3606202 (= (toChars!7767 (transformation!5624 anOtherTypeRule!33)) (toChars!7767 (transformation!5624 (rule!8368 token!511)))) t!292952) tb!206645))

(declare-fun result!251854 () Bool)

(assert (= result!251854 result!251850))

(assert (=> d!1062367 t!292952))

(declare-fun b_and!262647 () Bool)

(assert (= b_and!262607 (and (=> t!292952 result!251854) b_and!262647)))

(declare-fun tb!206647 () Bool)

(declare-fun t!292954 () Bool)

(assert (=> (and b!3606167 (= (toChars!7767 (transformation!5624 (h!43367 rules!3307))) (toChars!7767 (transformation!5624 (rule!8368 token!511)))) t!292954) tb!206647))

(declare-fun result!251856 () Bool)

(assert (= result!251856 result!251850))

(assert (=> d!1062367 t!292954))

(declare-fun b_and!262649 () Bool)

(assert (= b_and!262609 (and (=> t!292954 result!251856) b_and!262649)))

(declare-fun m!4103719 () Bool)

(assert (=> d!1062367 m!4103719))

(declare-fun m!4103721 () Bool)

(assert (=> d!1062367 m!4103721))

(assert (=> b!3606199 d!1062367))

(declare-fun d!1062369 () Bool)

(declare-fun res!1458421 () Bool)

(declare-fun e!2231987 () Bool)

(assert (=> d!1062369 (=> (not res!1458421) (not e!2231987))))

(assert (=> d!1062369 (= res!1458421 (not (isEmpty!22398 (originalCharacters!6338 token!511))))))

(assert (=> d!1062369 (= (inv!51313 token!511) e!2231987)))

(declare-fun b!3606684 () Bool)

(declare-fun res!1458422 () Bool)

(assert (=> b!3606684 (=> (not res!1458422) (not e!2231987))))

(assert (=> b!3606684 (= res!1458422 (= (originalCharacters!6338 token!511) (list!13988 (dynLambda!16399 (toChars!7767 (transformation!5624 (rule!8368 token!511))) (value!180744 token!511)))))))

(declare-fun b!3606685 () Bool)

(assert (=> b!3606685 (= e!2231987 (= (size!28923 token!511) (size!28924 (originalCharacters!6338 token!511))))))

(assert (= (and d!1062369 res!1458421) b!3606684))

(assert (= (and b!3606684 res!1458422) b!3606685))

(declare-fun b_lambda!106713 () Bool)

(assert (=> (not b_lambda!106713) (not b!3606684)))

(assert (=> b!3606684 t!292948))

(declare-fun b_and!262651 () Bool)

(assert (= b_and!262643 (and (=> t!292948 result!251850) b_and!262651)))

(assert (=> b!3606684 t!292950))

(declare-fun b_and!262653 () Bool)

(assert (= b_and!262645 (and (=> t!292950 result!251852) b_and!262653)))

(assert (=> b!3606684 t!292952))

(declare-fun b_and!262655 () Bool)

(assert (= b_and!262647 (and (=> t!292952 result!251854) b_and!262655)))

(assert (=> b!3606684 t!292954))

(declare-fun b_and!262657 () Bool)

(assert (= b_and!262649 (and (=> t!292954 result!251856) b_and!262657)))

(declare-fun m!4103723 () Bool)

(assert (=> d!1062369 m!4103723))

(assert (=> b!3606684 m!4103721))

(assert (=> b!3606684 m!4103721))

(declare-fun m!4103725 () Bool)

(assert (=> b!3606684 m!4103725))

(declare-fun m!4103727 () Bool)

(assert (=> b!3606685 m!4103727))

(assert (=> start!335518 d!1062369))

(declare-fun d!1062371 () Bool)

(assert (=> d!1062371 (not (contains!7311 (usedCharacters!838 (regex!5624 (rule!8368 (_1!22054 lt!1240237)))) lt!1240231))))

(declare-fun lt!1240525 () Unit!54039)

(declare-fun choose!21056 (LexerInterface!5213 List!38071 List!38071 Rule!11048 Rule!11048 C!20952) Unit!54039)

(assert (=> d!1062371 (= lt!1240525 (choose!21056 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8368 (_1!22054 lt!1240237)) lt!1240231))))

(assert (=> d!1062371 (rulesInvariant!4610 thiss!23823 rules!3307)))

(assert (=> d!1062371 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!212 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8368 (_1!22054 lt!1240237)) lt!1240231) lt!1240525)))

(declare-fun bs!570723 () Bool)

(assert (= bs!570723 d!1062371))

(assert (=> bs!570723 m!4102987))

(assert (=> bs!570723 m!4102987))

(declare-fun m!4103761 () Bool)

(assert (=> bs!570723 m!4103761))

(declare-fun m!4103763 () Bool)

(assert (=> bs!570723 m!4103763))

(assert (=> bs!570723 m!4103005))

(assert (=> b!3606201 d!1062371))

(declare-fun d!1062375 () Bool)

(assert (=> d!1062375 (= (inv!51310 (tag!6324 (rule!8368 token!511))) (= (mod (str.len (value!180743 (tag!6324 (rule!8368 token!511)))) 2) 0))))

(assert (=> b!3606182 d!1062375))

(declare-fun d!1062377 () Bool)

(declare-fun res!1458430 () Bool)

(declare-fun e!2231991 () Bool)

(assert (=> d!1062377 (=> (not res!1458430) (not e!2231991))))

(assert (=> d!1062377 (= res!1458430 (semiInverseModEq!2391 (toChars!7767 (transformation!5624 (rule!8368 token!511))) (toValue!7908 (transformation!5624 (rule!8368 token!511)))))))

(assert (=> d!1062377 (= (inv!51314 (transformation!5624 (rule!8368 token!511))) e!2231991)))

(declare-fun b!3606695 () Bool)

(assert (=> b!3606695 (= e!2231991 (equivClasses!2290 (toChars!7767 (transformation!5624 (rule!8368 token!511))) (toValue!7908 (transformation!5624 (rule!8368 token!511)))))))

(assert (= (and d!1062377 res!1458430) b!3606695))

(declare-fun m!4103765 () Bool)

(assert (=> d!1062377 m!4103765))

(declare-fun m!4103767 () Bool)

(assert (=> b!3606695 m!4103767))

(assert (=> b!3606182 d!1062377))

(declare-fun d!1062379 () Bool)

(assert (=> d!1062379 (not (contains!7311 (usedCharacters!838 (regex!5624 (rule!8368 (_1!22054 lt!1240237)))) lt!1240231))))

(declare-fun lt!1240528 () Unit!54039)

(declare-fun choose!21057 (LexerInterface!5213 List!38071 List!38071 Rule!11048 Rule!11048 C!20952) Unit!54039)

(assert (=> d!1062379 (= lt!1240528 (choose!21057 thiss!23823 rules!3307 rules!3307 (rule!8368 (_1!22054 lt!1240237)) rule!403 lt!1240231))))

(assert (=> d!1062379 (rulesInvariant!4610 thiss!23823 rules!3307)))

(assert (=> d!1062379 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!330 thiss!23823 rules!3307 rules!3307 (rule!8368 (_1!22054 lt!1240237)) rule!403 lt!1240231) lt!1240528)))

(declare-fun bs!570724 () Bool)

(assert (= bs!570724 d!1062379))

(assert (=> bs!570724 m!4102987))

(assert (=> bs!570724 m!4102987))

(assert (=> bs!570724 m!4103761))

(declare-fun m!4103769 () Bool)

(assert (=> bs!570724 m!4103769))

(assert (=> bs!570724 m!4103005))

(assert (=> b!3606180 d!1062379))

(declare-fun d!1062381 () Bool)

(assert (=> d!1062381 (= (inv!51310 (tag!6324 (h!43367 rules!3307))) (= (mod (str.len (value!180743 (tag!6324 (h!43367 rules!3307)))) 2) 0))))

(assert (=> b!3606200 d!1062381))

(declare-fun d!1062383 () Bool)

(declare-fun res!1458431 () Bool)

(declare-fun e!2231992 () Bool)

(assert (=> d!1062383 (=> (not res!1458431) (not e!2231992))))

(assert (=> d!1062383 (= res!1458431 (semiInverseModEq!2391 (toChars!7767 (transformation!5624 (h!43367 rules!3307))) (toValue!7908 (transformation!5624 (h!43367 rules!3307)))))))

(assert (=> d!1062383 (= (inv!51314 (transformation!5624 (h!43367 rules!3307))) e!2231992)))

(declare-fun b!3606696 () Bool)

(assert (=> b!3606696 (= e!2231992 (equivClasses!2290 (toChars!7767 (transformation!5624 (h!43367 rules!3307))) (toValue!7908 (transformation!5624 (h!43367 rules!3307)))))))

(assert (= (and d!1062383 res!1458431) b!3606696))

(declare-fun m!4103771 () Bool)

(assert (=> d!1062383 m!4103771))

(declare-fun m!4103773 () Bool)

(assert (=> b!3606696 m!4103773))

(assert (=> b!3606200 d!1062383))

(declare-fun d!1062385 () Bool)

(assert (=> d!1062385 (= (isEmpty!22398 suffix!1395) ((_ is Nil!37946) suffix!1395))))

(assert (=> b!3606184 d!1062385))

(declare-fun d!1062387 () Bool)

(assert (=> d!1062387 (= (isEmpty!22398 (_2!22054 lt!1240242)) ((_ is Nil!37946) (_2!22054 lt!1240242)))))

(assert (=> b!3606164 d!1062387))

(declare-fun b!3606701 () Bool)

(declare-fun e!2231997 () List!38070)

(declare-fun e!2231996 () List!38070)

(assert (=> b!3606701 (= e!2231997 e!2231996)))

(declare-fun c!624052 () Bool)

(assert (=> b!3606701 (= c!624052 ((_ is Union!10383) (regex!5624 (rule!8368 (_1!22054 lt!1240237)))))))

(declare-fun b!3606702 () Bool)

(declare-fun call!260712 () List!38070)

(assert (=> b!3606702 (= e!2231996 call!260712)))

(declare-fun c!624055 () Bool)

(declare-fun bm!260707 () Bool)

(declare-fun call!260714 () List!38070)

(assert (=> bm!260707 (= call!260714 (usedCharacters!838 (ite c!624055 (reg!10712 (regex!5624 (rule!8368 (_1!22054 lt!1240237)))) (ite c!624052 (regTwo!21279 (regex!5624 (rule!8368 (_1!22054 lt!1240237)))) (regOne!21278 (regex!5624 (rule!8368 (_1!22054 lt!1240237))))))))))

(declare-fun b!3606703 () Bool)

(assert (=> b!3606703 (= e!2231996 call!260712)))

(declare-fun b!3606704 () Bool)

(declare-fun e!2231998 () List!38070)

(assert (=> b!3606704 (= e!2231998 (Cons!37946 (c!623944 (regex!5624 (rule!8368 (_1!22054 lt!1240237)))) Nil!37946))))

(declare-fun bm!260708 () Bool)

(declare-fun call!260715 () List!38070)

(assert (=> bm!260708 (= call!260715 call!260714)))

(declare-fun d!1062389 () Bool)

(declare-fun c!624053 () Bool)

(assert (=> d!1062389 (= c!624053 (or ((_ is EmptyExpr!10383) (regex!5624 (rule!8368 (_1!22054 lt!1240237)))) ((_ is EmptyLang!10383) (regex!5624 (rule!8368 (_1!22054 lt!1240237))))))))

(declare-fun e!2231995 () List!38070)

(assert (=> d!1062389 (= (usedCharacters!838 (regex!5624 (rule!8368 (_1!22054 lt!1240237)))) e!2231995)))

(declare-fun b!3606705 () Bool)

(assert (=> b!3606705 (= e!2231997 call!260714)))

(declare-fun bm!260709 () Bool)

(declare-fun call!260713 () List!38070)

(assert (=> bm!260709 (= call!260712 (++!9440 (ite c!624052 call!260713 call!260715) (ite c!624052 call!260715 call!260713)))))

(declare-fun b!3606706 () Bool)

(assert (=> b!3606706 (= c!624055 ((_ is Star!10383) (regex!5624 (rule!8368 (_1!22054 lt!1240237)))))))

(assert (=> b!3606706 (= e!2231998 e!2231997)))

(declare-fun bm!260710 () Bool)

(assert (=> bm!260710 (= call!260713 (usedCharacters!838 (ite c!624052 (regOne!21279 (regex!5624 (rule!8368 (_1!22054 lt!1240237)))) (regTwo!21278 (regex!5624 (rule!8368 (_1!22054 lt!1240237)))))))))

(declare-fun b!3606707 () Bool)

(assert (=> b!3606707 (= e!2231995 Nil!37946)))

(declare-fun b!3606708 () Bool)

(assert (=> b!3606708 (= e!2231995 e!2231998)))

(declare-fun c!624054 () Bool)

(assert (=> b!3606708 (= c!624054 ((_ is ElementMatch!10383) (regex!5624 (rule!8368 (_1!22054 lt!1240237)))))))

(assert (= (and d!1062389 c!624053) b!3606707))

(assert (= (and d!1062389 (not c!624053)) b!3606708))

(assert (= (and b!3606708 c!624054) b!3606704))

(assert (= (and b!3606708 (not c!624054)) b!3606706))

(assert (= (and b!3606706 c!624055) b!3606705))

(assert (= (and b!3606706 (not c!624055)) b!3606701))

(assert (= (and b!3606701 c!624052) b!3606702))

(assert (= (and b!3606701 (not c!624052)) b!3606703))

(assert (= (or b!3606702 b!3606703) bm!260710))

(assert (= (or b!3606702 b!3606703) bm!260708))

(assert (= (or b!3606702 b!3606703) bm!260709))

(assert (= (or b!3606705 bm!260708) bm!260707))

(declare-fun m!4103775 () Bool)

(assert (=> bm!260707 m!4103775))

(declare-fun m!4103777 () Bool)

(assert (=> bm!260709 m!4103777))

(declare-fun m!4103779 () Bool)

(assert (=> bm!260710 m!4103779))

(assert (=> bm!260662 d!1062389))

(declare-fun d!1062391 () Bool)

(declare-fun res!1458444 () Bool)

(declare-fun e!2232005 () Bool)

(assert (=> d!1062391 (=> (not res!1458444) (not e!2232005))))

(declare-fun rulesValid!2148 (LexerInterface!5213 List!38071) Bool)

(assert (=> d!1062391 (= res!1458444 (rulesValid!2148 thiss!23823 rules!3307))))

(assert (=> d!1062391 (= (rulesInvariant!4610 thiss!23823 rules!3307) e!2232005)))

(declare-fun b!3606717 () Bool)

(declare-datatypes ((List!38075 0))(
  ( (Nil!37951) (Cons!37951 (h!43371 String!42604) (t!293006 List!38075)) )
))
(declare-fun noDuplicateTag!2144 (LexerInterface!5213 List!38071 List!38075) Bool)

(assert (=> b!3606717 (= e!2232005 (noDuplicateTag!2144 thiss!23823 rules!3307 Nil!37951))))

(assert (= (and d!1062391 res!1458444) b!3606717))

(declare-fun m!4103791 () Bool)

(assert (=> d!1062391 m!4103791))

(declare-fun m!4103793 () Bool)

(assert (=> b!3606717 m!4103793))

(assert (=> b!3606183 d!1062391))

(declare-fun b!3606893 () Bool)

(declare-fun res!1458537 () Bool)

(declare-fun e!2232099 () Bool)

(assert (=> b!3606893 (=> (not res!1458537) (not e!2232099))))

(declare-fun lt!1240569 () Option!7878)

(assert (=> b!3606893 (= res!1458537 (< (size!28924 (_2!22054 (get!12301 lt!1240569))) (size!28924 lt!1240232)))))

(declare-fun b!3606894 () Bool)

(declare-fun res!1458533 () Bool)

(assert (=> b!3606894 (=> (not res!1458533) (not e!2232099))))

(assert (=> b!3606894 (= res!1458533 (= (value!180744 (_1!22054 (get!12301 lt!1240569))) (apply!9130 (transformation!5624 (rule!8368 (_1!22054 (get!12301 lt!1240569)))) (seqFromList!4177 (originalCharacters!6338 (_1!22054 (get!12301 lt!1240569)))))))))

(declare-fun b!3606895 () Bool)

(declare-fun res!1458535 () Bool)

(assert (=> b!3606895 (=> (not res!1458535) (not e!2232099))))

(assert (=> b!3606895 (= res!1458535 (= (++!9440 (list!13988 (charsOf!3638 (_1!22054 (get!12301 lt!1240569)))) (_2!22054 (get!12301 lt!1240569))) lt!1240232))))

(declare-fun b!3606896 () Bool)

(declare-fun e!2232101 () Bool)

(declare-datatypes ((tuple2!37848 0))(
  ( (tuple2!37849 (_1!22058 List!38070) (_2!22058 List!38070)) )
))
(declare-fun findLongestMatchInner!999 (Regex!10383 List!38070 Int List!38070 List!38070 Int) tuple2!37848)

(assert (=> b!3606896 (= e!2232101 (matchR!4952 (regex!5624 (rule!8368 (_1!22054 lt!1240237))) (_1!22058 (findLongestMatchInner!999 (regex!5624 (rule!8368 (_1!22054 lt!1240237))) Nil!37946 (size!28924 Nil!37946) lt!1240232 lt!1240232 (size!28924 lt!1240232)))))))

(declare-fun b!3606897 () Bool)

(declare-fun res!1458532 () Bool)

(assert (=> b!3606897 (=> (not res!1458532) (not e!2232099))))

(assert (=> b!3606897 (= res!1458532 (= (rule!8368 (_1!22054 (get!12301 lt!1240569))) (rule!8368 (_1!22054 lt!1240237))))))

(declare-fun b!3606898 () Bool)

(declare-fun e!2232102 () Bool)

(assert (=> b!3606898 (= e!2232102 e!2232099)))

(declare-fun res!1458531 () Bool)

(assert (=> b!3606898 (=> (not res!1458531) (not e!2232099))))

(assert (=> b!3606898 (= res!1458531 (matchR!4952 (regex!5624 (rule!8368 (_1!22054 lt!1240237))) (list!13988 (charsOf!3638 (_1!22054 (get!12301 lt!1240569))))))))

(declare-fun b!3606899 () Bool)

(declare-fun e!2232100 () Option!7878)

(assert (=> b!3606899 (= e!2232100 None!7877)))

(declare-fun b!3606900 () Bool)

(assert (=> b!3606900 (= e!2232099 (= (size!28923 (_1!22054 (get!12301 lt!1240569))) (size!28924 (originalCharacters!6338 (_1!22054 (get!12301 lt!1240569))))))))

(declare-fun b!3606901 () Bool)

(declare-fun lt!1240567 () tuple2!37848)

(assert (=> b!3606901 (= e!2232100 (Some!7877 (tuple2!37841 (Token!10615 (apply!9130 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))) (seqFromList!4177 (_1!22058 lt!1240567))) (rule!8368 (_1!22054 lt!1240237)) (size!28925 (seqFromList!4177 (_1!22058 lt!1240567))) (_1!22058 lt!1240567)) (_2!22058 lt!1240567))))))

(declare-fun lt!1240571 () Unit!54039)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!972 (Regex!10383 List!38070) Unit!54039)

(assert (=> b!3606901 (= lt!1240571 (longestMatchIsAcceptedByMatchOrIsEmpty!972 (regex!5624 (rule!8368 (_1!22054 lt!1240237))) lt!1240232))))

(declare-fun res!1458536 () Bool)

(assert (=> b!3606901 (= res!1458536 (isEmpty!22398 (_1!22058 (findLongestMatchInner!999 (regex!5624 (rule!8368 (_1!22054 lt!1240237))) Nil!37946 (size!28924 Nil!37946) lt!1240232 lt!1240232 (size!28924 lt!1240232)))))))

(assert (=> b!3606901 (=> res!1458536 e!2232101)))

(assert (=> b!3606901 e!2232101))

(declare-fun lt!1240570 () Unit!54039)

(assert (=> b!3606901 (= lt!1240570 lt!1240571)))

(declare-fun lt!1240568 () Unit!54039)

(assert (=> b!3606901 (= lt!1240568 (lemmaSemiInverse!1381 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))) (seqFromList!4177 (_1!22058 lt!1240567))))))

(declare-fun d!1062397 () Bool)

(assert (=> d!1062397 e!2232102))

(declare-fun res!1458534 () Bool)

(assert (=> d!1062397 (=> res!1458534 e!2232102)))

(assert (=> d!1062397 (= res!1458534 (isEmpty!22402 lt!1240569))))

(assert (=> d!1062397 (= lt!1240569 e!2232100)))

(declare-fun c!624078 () Bool)

(assert (=> d!1062397 (= c!624078 (isEmpty!22398 (_1!22058 lt!1240567)))))

(declare-fun findLongestMatch!914 (Regex!10383 List!38070) tuple2!37848)

(assert (=> d!1062397 (= lt!1240567 (findLongestMatch!914 (regex!5624 (rule!8368 (_1!22054 lt!1240237))) lt!1240232))))

(assert (=> d!1062397 (ruleValid!1889 thiss!23823 (rule!8368 (_1!22054 lt!1240237)))))

(assert (=> d!1062397 (= (maxPrefixOneRule!1891 thiss!23823 (rule!8368 (_1!22054 lt!1240237)) lt!1240232) lt!1240569)))

(assert (= (and d!1062397 c!624078) b!3606899))

(assert (= (and d!1062397 (not c!624078)) b!3606901))

(assert (= (and b!3606901 (not res!1458536)) b!3606896))

(assert (= (and d!1062397 (not res!1458534)) b!3606898))

(assert (= (and b!3606898 res!1458531) b!3606895))

(assert (= (and b!3606895 res!1458535) b!3606893))

(assert (= (and b!3606893 res!1458537) b!3606897))

(assert (= (and b!3606897 res!1458532) b!3606894))

(assert (= (and b!3606894 res!1458533) b!3606900))

(declare-fun m!4103935 () Bool)

(assert (=> b!3606893 m!4103935))

(declare-fun m!4103937 () Bool)

(assert (=> b!3606893 m!4103937))

(assert (=> b!3606893 m!4103409))

(assert (=> b!3606898 m!4103935))

(declare-fun m!4103939 () Bool)

(assert (=> b!3606898 m!4103939))

(assert (=> b!3606898 m!4103939))

(declare-fun m!4103941 () Bool)

(assert (=> b!3606898 m!4103941))

(assert (=> b!3606898 m!4103941))

(declare-fun m!4103943 () Bool)

(assert (=> b!3606898 m!4103943))

(assert (=> b!3606895 m!4103935))

(assert (=> b!3606895 m!4103939))

(assert (=> b!3606895 m!4103939))

(assert (=> b!3606895 m!4103941))

(assert (=> b!3606895 m!4103941))

(declare-fun m!4103945 () Bool)

(assert (=> b!3606895 m!4103945))

(assert (=> b!3606897 m!4103935))

(assert (=> b!3606900 m!4103935))

(declare-fun m!4103947 () Bool)

(assert (=> b!3606900 m!4103947))

(declare-fun m!4103949 () Bool)

(assert (=> d!1062397 m!4103949))

(declare-fun m!4103951 () Bool)

(assert (=> d!1062397 m!4103951))

(declare-fun m!4103953 () Bool)

(assert (=> d!1062397 m!4103953))

(declare-fun m!4103955 () Bool)

(assert (=> d!1062397 m!4103955))

(declare-fun m!4103957 () Bool)

(assert (=> b!3606896 m!4103957))

(assert (=> b!3606896 m!4103409))

(assert (=> b!3606896 m!4103957))

(assert (=> b!3606896 m!4103409))

(declare-fun m!4103959 () Bool)

(assert (=> b!3606896 m!4103959))

(declare-fun m!4103961 () Bool)

(assert (=> b!3606896 m!4103961))

(assert (=> b!3606894 m!4103935))

(declare-fun m!4103963 () Bool)

(assert (=> b!3606894 m!4103963))

(assert (=> b!3606894 m!4103963))

(declare-fun m!4103965 () Bool)

(assert (=> b!3606894 m!4103965))

(assert (=> b!3606901 m!4103409))

(declare-fun m!4103967 () Bool)

(assert (=> b!3606901 m!4103967))

(declare-fun m!4103969 () Bool)

(assert (=> b!3606901 m!4103969))

(declare-fun m!4103971 () Bool)

(assert (=> b!3606901 m!4103971))

(declare-fun m!4103973 () Bool)

(assert (=> b!3606901 m!4103973))

(assert (=> b!3606901 m!4103957))

(assert (=> b!3606901 m!4103967))

(declare-fun m!4103975 () Bool)

(assert (=> b!3606901 m!4103975))

(assert (=> b!3606901 m!4103967))

(declare-fun m!4103977 () Bool)

(assert (=> b!3606901 m!4103977))

(assert (=> b!3606901 m!4103957))

(assert (=> b!3606901 m!4103409))

(assert (=> b!3606901 m!4103959))

(assert (=> b!3606901 m!4103967))

(assert (=> b!3606163 d!1062397))

(declare-fun d!1062447 () Bool)

(declare-fun lt!1240574 () Int)

(assert (=> d!1062447 (>= lt!1240574 0)))

(declare-fun e!2232105 () Int)

(assert (=> d!1062447 (= lt!1240574 e!2232105)))

(declare-fun c!624081 () Bool)

(assert (=> d!1062447 (= c!624081 ((_ is Nil!37946) lt!1240250))))

(assert (=> d!1062447 (= (size!28924 lt!1240250) lt!1240574)))

(declare-fun b!3606906 () Bool)

(assert (=> b!3606906 (= e!2232105 0)))

(declare-fun b!3606907 () Bool)

(assert (=> b!3606907 (= e!2232105 (+ 1 (size!28924 (t!292881 lt!1240250))))))

(assert (= (and d!1062447 c!624081) b!3606906))

(assert (= (and d!1062447 (not c!624081)) b!3606907))

(declare-fun m!4103979 () Bool)

(assert (=> b!3606907 m!4103979))

(assert (=> b!3606163 d!1062447))

(declare-fun d!1062449 () Bool)

(assert (=> d!1062449 (= (apply!9130 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))) (seqFromList!4177 lt!1240250)) (dynLambda!16408 (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237)))) (seqFromList!4177 lt!1240250)))))

(declare-fun b_lambda!106725 () Bool)

(assert (=> (not b_lambda!106725) (not d!1062449)))

(declare-fun t!292984 () Bool)

(declare-fun tb!206677 () Bool)

(assert (=> (and b!3606178 (= (toValue!7908 (transformation!5624 (rule!8368 token!511))) (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) t!292984) tb!206677))

(declare-fun result!251892 () Bool)

(assert (=> tb!206677 (= result!251892 (inv!21 (dynLambda!16408 (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237)))) (seqFromList!4177 lt!1240250))))))

(declare-fun m!4103981 () Bool)

(assert (=> tb!206677 m!4103981))

(assert (=> d!1062449 t!292984))

(declare-fun b_and!262687 () Bool)

(assert (= b_and!262635 (and (=> t!292984 result!251892) b_and!262687)))

(declare-fun t!292986 () Bool)

(declare-fun tb!206679 () Bool)

(assert (=> (and b!3606169 (= (toValue!7908 (transformation!5624 rule!403)) (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) t!292986) tb!206679))

(declare-fun result!251894 () Bool)

(assert (= result!251894 result!251892))

(assert (=> d!1062449 t!292986))

(declare-fun b_and!262689 () Bool)

(assert (= b_and!262637 (and (=> t!292986 result!251894) b_and!262689)))

(declare-fun t!292988 () Bool)

(declare-fun tb!206681 () Bool)

(assert (=> (and b!3606202 (= (toValue!7908 (transformation!5624 anOtherTypeRule!33)) (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) t!292988) tb!206681))

(declare-fun result!251896 () Bool)

(assert (= result!251896 result!251892))

(assert (=> d!1062449 t!292988))

(declare-fun b_and!262691 () Bool)

(assert (= b_and!262639 (and (=> t!292988 result!251896) b_and!262691)))

(declare-fun tb!206683 () Bool)

(declare-fun t!292990 () Bool)

(assert (=> (and b!3606167 (= (toValue!7908 (transformation!5624 (h!43367 rules!3307))) (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) t!292990) tb!206683))

(declare-fun result!251898 () Bool)

(assert (= result!251898 result!251892))

(assert (=> d!1062449 t!292990))

(declare-fun b_and!262693 () Bool)

(assert (= b_and!262641 (and (=> t!292990 result!251898) b_and!262693)))

(assert (=> d!1062449 m!4102959))

(declare-fun m!4103983 () Bool)

(assert (=> d!1062449 m!4103983))

(assert (=> b!3606163 d!1062449))

(declare-fun d!1062451 () Bool)

(assert (=> d!1062451 (= (maxPrefixOneRule!1891 thiss!23823 (rule!8368 (_1!22054 lt!1240237)) lt!1240232) (Some!7877 (tuple2!37841 (Token!10615 (apply!9130 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))) (seqFromList!4177 lt!1240250)) (rule!8368 (_1!22054 lt!1240237)) (size!28924 lt!1240250) lt!1240250) (_2!22054 lt!1240237))))))

(declare-fun lt!1240577 () Unit!54039)

(declare-fun choose!21059 (LexerInterface!5213 List!38071 List!38070 List!38070 List!38070 Rule!11048) Unit!54039)

(assert (=> d!1062451 (= lt!1240577 (choose!21059 thiss!23823 rules!3307 lt!1240250 lt!1240232 (_2!22054 lt!1240237) (rule!8368 (_1!22054 lt!1240237))))))

(assert (=> d!1062451 (not (isEmpty!22399 rules!3307))))

(assert (=> d!1062451 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!963 thiss!23823 rules!3307 lt!1240250 lt!1240232 (_2!22054 lt!1240237) (rule!8368 (_1!22054 lt!1240237))) lt!1240577)))

(declare-fun bs!570732 () Bool)

(assert (= bs!570732 d!1062451))

(declare-fun m!4103985 () Bool)

(assert (=> bs!570732 m!4103985))

(assert (=> bs!570732 m!4102959))

(assert (=> bs!570732 m!4102967))

(assert (=> bs!570732 m!4102989))

(assert (=> bs!570732 m!4102959))

(assert (=> bs!570732 m!4102955))

(assert (=> bs!570732 m!4102965))

(assert (=> b!3606163 d!1062451))

(declare-fun d!1062453 () Bool)

(assert (=> d!1062453 (= (seqFromList!4177 lt!1240250) (fromListB!1931 lt!1240250))))

(declare-fun bs!570733 () Bool)

(assert (= bs!570733 d!1062453))

(declare-fun m!4103987 () Bool)

(assert (=> bs!570733 m!4103987))

(assert (=> b!3606163 d!1062453))

(declare-fun d!1062455 () Bool)

(assert (=> d!1062455 (= (_2!22054 lt!1240237) lt!1240226)))

(declare-fun lt!1240580 () Unit!54039)

(declare-fun choose!21060 (List!38070 List!38070 List!38070 List!38070 List!38070) Unit!54039)

(assert (=> d!1062455 (= lt!1240580 (choose!21060 lt!1240250 (_2!22054 lt!1240237) lt!1240250 lt!1240226 lt!1240232))))

(assert (=> d!1062455 (isPrefix!2987 lt!1240250 lt!1240232)))

(assert (=> d!1062455 (= (lemmaSamePrefixThenSameSuffix!1342 lt!1240250 (_2!22054 lt!1240237) lt!1240250 lt!1240226 lt!1240232) lt!1240580)))

(declare-fun bs!570734 () Bool)

(assert (= bs!570734 d!1062455))

(declare-fun m!4103989 () Bool)

(assert (=> bs!570734 m!4103989))

(assert (=> bs!570734 m!4103057))

(assert (=> b!3606163 d!1062455))

(declare-fun d!1062457 () Bool)

(declare-fun lt!1240583 () List!38070)

(assert (=> d!1062457 (= (++!9440 lt!1240250 lt!1240583) lt!1240232)))

(declare-fun e!2232109 () List!38070)

(assert (=> d!1062457 (= lt!1240583 e!2232109)))

(declare-fun c!624084 () Bool)

(assert (=> d!1062457 (= c!624084 ((_ is Cons!37946) lt!1240250))))

(assert (=> d!1062457 (>= (size!28924 lt!1240232) (size!28924 lt!1240250))))

(assert (=> d!1062457 (= (getSuffix!1562 lt!1240232 lt!1240250) lt!1240583)))

(declare-fun b!3606912 () Bool)

(assert (=> b!3606912 (= e!2232109 (getSuffix!1562 (tail!5591 lt!1240232) (t!292881 lt!1240250)))))

(declare-fun b!3606913 () Bool)

(assert (=> b!3606913 (= e!2232109 lt!1240232)))

(assert (= (and d!1062457 c!624084) b!3606912))

(assert (= (and d!1062457 (not c!624084)) b!3606913))

(declare-fun m!4103991 () Bool)

(assert (=> d!1062457 m!4103991))

(assert (=> d!1062457 m!4103409))

(assert (=> d!1062457 m!4102955))

(assert (=> b!3606912 m!4103417))

(assert (=> b!3606912 m!4103417))

(declare-fun m!4103993 () Bool)

(assert (=> b!3606912 m!4103993))

(assert (=> b!3606163 d!1062457))

(declare-fun d!1062459 () Bool)

(declare-fun lt!1240584 () Bool)

(assert (=> d!1062459 (= lt!1240584 (select (content!5423 lt!1240250) lt!1240228))))

(declare-fun e!2232110 () Bool)

(assert (=> d!1062459 (= lt!1240584 e!2232110)))

(declare-fun res!1458539 () Bool)

(assert (=> d!1062459 (=> (not res!1458539) (not e!2232110))))

(assert (=> d!1062459 (= res!1458539 ((_ is Cons!37946) lt!1240250))))

(assert (=> d!1062459 (= (contains!7311 lt!1240250 lt!1240228) lt!1240584)))

(declare-fun b!3606914 () Bool)

(declare-fun e!2232111 () Bool)

(assert (=> b!3606914 (= e!2232110 e!2232111)))

(declare-fun res!1458538 () Bool)

(assert (=> b!3606914 (=> res!1458538 e!2232111)))

(assert (=> b!3606914 (= res!1458538 (= (h!43366 lt!1240250) lt!1240228))))

(declare-fun b!3606915 () Bool)

(assert (=> b!3606915 (= e!2232111 (contains!7311 (t!292881 lt!1240250) lt!1240228))))

(assert (= (and d!1062459 res!1458539) b!3606914))

(assert (= (and b!3606914 (not res!1458538)) b!3606915))

(assert (=> d!1062459 m!4103287))

(declare-fun m!4103995 () Bool)

(assert (=> d!1062459 m!4103995))

(declare-fun m!4103997 () Bool)

(assert (=> b!3606915 m!4103997))

(assert (=> b!3606165 d!1062459))

(declare-fun d!1062461 () Bool)

(assert (=> d!1062461 (contains!7311 lt!1240250 (head!7576 suffix!1395))))

(declare-fun lt!1240587 () Unit!54039)

(declare-fun choose!21061 (List!38070 List!38070 List!38070 List!38070) Unit!54039)

(assert (=> d!1062461 (= lt!1240587 (choose!21061 lt!1240236 suffix!1395 lt!1240250 lt!1240232))))

(assert (=> d!1062461 (isPrefix!2987 lt!1240250 lt!1240232)))

(assert (=> d!1062461 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!2 lt!1240236 suffix!1395 lt!1240250 lt!1240232) lt!1240587)))

(declare-fun bs!570735 () Bool)

(assert (= bs!570735 d!1062461))

(assert (=> bs!570735 m!4103085))

(assert (=> bs!570735 m!4103085))

(declare-fun m!4103999 () Bool)

(assert (=> bs!570735 m!4103999))

(declare-fun m!4104001 () Bool)

(assert (=> bs!570735 m!4104001))

(assert (=> bs!570735 m!4103057))

(assert (=> b!3606165 d!1062461))

(declare-fun b!3606916 () Bool)

(declare-fun e!2232113 () Bool)

(assert (=> b!3606916 (= e!2232113 (= (head!7576 lt!1240250) (c!623944 (regex!5624 (rule!8368 (_1!22054 lt!1240237))))))))

(declare-fun b!3606917 () Bool)

(declare-fun e!2232117 () Bool)

(assert (=> b!3606917 (= e!2232117 (not (= (head!7576 lt!1240250) (c!623944 (regex!5624 (rule!8368 (_1!22054 lt!1240237)))))))))

(declare-fun b!3606918 () Bool)

(declare-fun e!2232115 () Bool)

(declare-fun lt!1240588 () Bool)

(assert (=> b!3606918 (= e!2232115 (not lt!1240588))))

(declare-fun b!3606919 () Bool)

(declare-fun res!1458540 () Bool)

(declare-fun e!2232112 () Bool)

(assert (=> b!3606919 (=> res!1458540 e!2232112)))

(assert (=> b!3606919 (= res!1458540 e!2232113)))

(declare-fun res!1458544 () Bool)

(assert (=> b!3606919 (=> (not res!1458544) (not e!2232113))))

(assert (=> b!3606919 (= res!1458544 lt!1240588)))

(declare-fun b!3606920 () Bool)

(declare-fun e!2232114 () Bool)

(declare-fun call!260726 () Bool)

(assert (=> b!3606920 (= e!2232114 (= lt!1240588 call!260726))))

(declare-fun b!3606921 () Bool)

(declare-fun e!2232116 () Bool)

(assert (=> b!3606921 (= e!2232112 e!2232116)))

(declare-fun res!1458542 () Bool)

(assert (=> b!3606921 (=> (not res!1458542) (not e!2232116))))

(assert (=> b!3606921 (= res!1458542 (not lt!1240588))))

(declare-fun d!1062463 () Bool)

(assert (=> d!1062463 e!2232114))

(declare-fun c!624087 () Bool)

(assert (=> d!1062463 (= c!624087 ((_ is EmptyExpr!10383) (regex!5624 (rule!8368 (_1!22054 lt!1240237)))))))

(declare-fun e!2232118 () Bool)

(assert (=> d!1062463 (= lt!1240588 e!2232118)))

(declare-fun c!624085 () Bool)

(assert (=> d!1062463 (= c!624085 (isEmpty!22398 lt!1240250))))

(assert (=> d!1062463 (validRegex!4754 (regex!5624 (rule!8368 (_1!22054 lt!1240237))))))

(assert (=> d!1062463 (= (matchR!4952 (regex!5624 (rule!8368 (_1!22054 lt!1240237))) lt!1240250) lt!1240588)))

(declare-fun b!3606922 () Bool)

(declare-fun res!1458541 () Bool)

(assert (=> b!3606922 (=> (not res!1458541) (not e!2232113))))

(assert (=> b!3606922 (= res!1458541 (not call!260726))))

(declare-fun b!3606923 () Bool)

(assert (=> b!3606923 (= e!2232118 (matchR!4952 (derivativeStep!3141 (regex!5624 (rule!8368 (_1!22054 lt!1240237))) (head!7576 lt!1240250)) (tail!5591 lt!1240250)))))

(declare-fun b!3606924 () Bool)

(assert (=> b!3606924 (= e!2232114 e!2232115)))

(declare-fun c!624086 () Bool)

(assert (=> b!3606924 (= c!624086 ((_ is EmptyLang!10383) (regex!5624 (rule!8368 (_1!22054 lt!1240237)))))))

(declare-fun b!3606925 () Bool)

(declare-fun res!1458543 () Bool)

(assert (=> b!3606925 (=> res!1458543 e!2232117)))

(assert (=> b!3606925 (= res!1458543 (not (isEmpty!22398 (tail!5591 lt!1240250))))))

(declare-fun b!3606926 () Bool)

(declare-fun res!1458546 () Bool)

(assert (=> b!3606926 (=> res!1458546 e!2232112)))

(assert (=> b!3606926 (= res!1458546 (not ((_ is ElementMatch!10383) (regex!5624 (rule!8368 (_1!22054 lt!1240237))))))))

(assert (=> b!3606926 (= e!2232115 e!2232112)))

(declare-fun bm!260721 () Bool)

(assert (=> bm!260721 (= call!260726 (isEmpty!22398 lt!1240250))))

(declare-fun b!3606927 () Bool)

(declare-fun res!1458547 () Bool)

(assert (=> b!3606927 (=> (not res!1458547) (not e!2232113))))

(assert (=> b!3606927 (= res!1458547 (isEmpty!22398 (tail!5591 lt!1240250)))))

(declare-fun b!3606928 () Bool)

(assert (=> b!3606928 (= e!2232116 e!2232117)))

(declare-fun res!1458545 () Bool)

(assert (=> b!3606928 (=> res!1458545 e!2232117)))

(assert (=> b!3606928 (= res!1458545 call!260726)))

(declare-fun b!3606929 () Bool)

(assert (=> b!3606929 (= e!2232118 (nullable!3592 (regex!5624 (rule!8368 (_1!22054 lt!1240237)))))))

(assert (= (and d!1062463 c!624085) b!3606929))

(assert (= (and d!1062463 (not c!624085)) b!3606923))

(assert (= (and d!1062463 c!624087) b!3606920))

(assert (= (and d!1062463 (not c!624087)) b!3606924))

(assert (= (and b!3606924 c!624086) b!3606918))

(assert (= (and b!3606924 (not c!624086)) b!3606926))

(assert (= (and b!3606926 (not res!1458546)) b!3606919))

(assert (= (and b!3606919 res!1458544) b!3606922))

(assert (= (and b!3606922 res!1458541) b!3606927))

(assert (= (and b!3606927 res!1458547) b!3606916))

(assert (= (and b!3606919 (not res!1458540)) b!3606921))

(assert (= (and b!3606921 res!1458542) b!3606928))

(assert (= (and b!3606928 (not res!1458545)) b!3606925))

(assert (= (and b!3606925 (not res!1458543)) b!3606917))

(assert (= (or b!3606920 b!3606922 b!3606928) bm!260721))

(assert (=> b!3606925 m!4103371))

(assert (=> b!3606925 m!4103371))

(declare-fun m!4104003 () Bool)

(assert (=> b!3606925 m!4104003))

(assert (=> b!3606927 m!4103371))

(assert (=> b!3606927 m!4103371))

(assert (=> b!3606927 m!4104003))

(assert (=> b!3606923 m!4102973))

(assert (=> b!3606923 m!4102973))

(declare-fun m!4104005 () Bool)

(assert (=> b!3606923 m!4104005))

(assert (=> b!3606923 m!4103371))

(assert (=> b!3606923 m!4104005))

(assert (=> b!3606923 m!4103371))

(declare-fun m!4104007 () Bool)

(assert (=> b!3606923 m!4104007))

(declare-fun m!4104009 () Bool)

(assert (=> d!1062463 m!4104009))

(assert (=> d!1062463 m!4103485))

(assert (=> b!3606917 m!4102973))

(assert (=> b!3606916 m!4102973))

(assert (=> bm!260721 m!4104009))

(declare-fun m!4104011 () Bool)

(assert (=> b!3606929 m!4104011))

(assert (=> b!3606166 d!1062463))

(declare-fun e!2232121 () Bool)

(assert (=> b!3606198 (= tp!1102721 e!2232121)))

(declare-fun b!3606942 () Bool)

(declare-fun tp!1102800 () Bool)

(assert (=> b!3606942 (= e!2232121 tp!1102800)))

(declare-fun b!3606940 () Bool)

(assert (=> b!3606940 (= e!2232121 tp_is_empty!17849)))

(declare-fun b!3606941 () Bool)

(declare-fun tp!1102802 () Bool)

(declare-fun tp!1102799 () Bool)

(assert (=> b!3606941 (= e!2232121 (and tp!1102802 tp!1102799))))

(declare-fun b!3606943 () Bool)

(declare-fun tp!1102803 () Bool)

(declare-fun tp!1102801 () Bool)

(assert (=> b!3606943 (= e!2232121 (and tp!1102803 tp!1102801))))

(assert (= (and b!3606198 ((_ is ElementMatch!10383) (regex!5624 rule!403))) b!3606940))

(assert (= (and b!3606198 ((_ is Concat!16238) (regex!5624 rule!403))) b!3606941))

(assert (= (and b!3606198 ((_ is Star!10383) (regex!5624 rule!403))) b!3606942))

(assert (= (and b!3606198 ((_ is Union!10383) (regex!5624 rule!403))) b!3606943))

(declare-fun b!3606948 () Bool)

(declare-fun e!2232124 () Bool)

(declare-fun tp!1102806 () Bool)

(assert (=> b!3606948 (= e!2232124 (and tp_is_empty!17849 tp!1102806))))

(assert (=> b!3606173 (= tp!1102723 e!2232124)))

(assert (= (and b!3606173 ((_ is Cons!37946) (t!292881 suffix!1395))) b!3606948))

(declare-fun b!3606949 () Bool)

(declare-fun e!2232125 () Bool)

(declare-fun tp!1102807 () Bool)

(assert (=> b!3606949 (= e!2232125 (and tp_is_empty!17849 tp!1102807))))

(assert (=> b!3606176 (= tp!1102730 e!2232125)))

(assert (= (and b!3606176 ((_ is Cons!37946) (originalCharacters!6338 token!511))) b!3606949))

(declare-fun b!3606960 () Bool)

(declare-fun b_free!93509 () Bool)

(declare-fun b_next!94213 () Bool)

(assert (=> b!3606960 (= b_free!93509 (not b_next!94213))))

(declare-fun tb!206685 () Bool)

(declare-fun t!292992 () Bool)

(assert (=> (and b!3606960 (= (toValue!7908 (transformation!5624 (h!43367 (t!292882 rules!3307)))) (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) t!292992) tb!206685))

(declare-fun result!251906 () Bool)

(assert (= result!251906 result!251832))

(assert (=> d!1062303 t!292992))

(declare-fun t!292994 () Bool)

(declare-fun tb!206687 () Bool)

(assert (=> (and b!3606960 (= (toValue!7908 (transformation!5624 (h!43367 (t!292882 rules!3307)))) (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) t!292994) tb!206687))

(declare-fun result!251908 () Bool)

(assert (= result!251908 result!251892))

(assert (=> d!1062449 t!292994))

(declare-fun t!292996 () Bool)

(declare-fun tb!206689 () Bool)

(assert (=> (and b!3606960 (= (toValue!7908 (transformation!5624 (h!43367 (t!292882 rules!3307)))) (toValue!7908 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) t!292996) tb!206689))

(declare-fun result!251910 () Bool)

(assert (= result!251910 result!251842))

(assert (=> d!1062351 t!292996))

(assert (=> d!1062351 t!292992))

(assert (=> d!1062359 t!292992))

(declare-fun tp!1102818 () Bool)

(declare-fun b_and!262695 () Bool)

(assert (=> b!3606960 (= tp!1102818 (and (=> t!292994 result!251908) (=> t!292996 result!251910) (=> t!292992 result!251906) b_and!262695))))

(declare-fun b_free!93511 () Bool)

(declare-fun b_next!94215 () Bool)

(assert (=> b!3606960 (= b_free!93511 (not b_next!94215))))

(declare-fun tb!206691 () Bool)

(declare-fun t!292998 () Bool)

(assert (=> (and b!3606960 (= (toChars!7767 (transformation!5624 (h!43367 (t!292882 rules!3307)))) (toChars!7767 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) t!292998) tb!206691))

(declare-fun result!251912 () Bool)

(assert (= result!251912 result!251778))

(assert (=> d!1062181 t!292998))

(declare-fun tb!206693 () Bool)

(declare-fun t!293000 () Bool)

(assert (=> (and b!3606960 (= (toChars!7767 (transformation!5624 (h!43367 (t!292882 rules!3307)))) (toChars!7767 (transformation!5624 (rule!8368 (_1!22054 lt!1240237))))) t!293000) tb!206693))

(declare-fun result!251914 () Bool)

(assert (= result!251914 result!251824))

(assert (=> d!1062303 t!293000))

(declare-fun t!293002 () Bool)

(declare-fun tb!206695 () Bool)

(assert (=> (and b!3606960 (= (toChars!7767 (transformation!5624 (h!43367 (t!292882 rules!3307)))) (toChars!7767 (transformation!5624 (rule!8368 token!511)))) t!293002) tb!206695))

(declare-fun result!251916 () Bool)

(assert (= result!251916 result!251850))

(assert (=> d!1062367 t!293002))

(assert (=> b!3606684 t!293002))

(declare-fun b_and!262697 () Bool)

(declare-fun tp!1102817 () Bool)

(assert (=> b!3606960 (= tp!1102817 (and (=> t!292998 result!251912) (=> t!293000 result!251914) (=> t!293002 result!251916) b_and!262697))))

(declare-fun e!2232135 () Bool)

(assert (=> b!3606960 (= e!2232135 (and tp!1102818 tp!1102817))))

(declare-fun e!2232136 () Bool)

(declare-fun tp!1102819 () Bool)

(declare-fun b!3606959 () Bool)

(assert (=> b!3606959 (= e!2232136 (and tp!1102819 (inv!51310 (tag!6324 (h!43367 (t!292882 rules!3307)))) (inv!51314 (transformation!5624 (h!43367 (t!292882 rules!3307)))) e!2232135))))

(declare-fun b!3606958 () Bool)

(declare-fun e!2232137 () Bool)

(declare-fun tp!1102816 () Bool)

(assert (=> b!3606958 (= e!2232137 (and e!2232136 tp!1102816))))

(assert (=> b!3606186 (= tp!1102726 e!2232137)))

(assert (= b!3606959 b!3606960))

(assert (= b!3606958 b!3606959))

(assert (= (and b!3606186 ((_ is Cons!37947) (t!292882 rules!3307))) b!3606958))

(declare-fun m!4104013 () Bool)

(assert (=> b!3606959 m!4104013))

(declare-fun m!4104015 () Bool)

(assert (=> b!3606959 m!4104015))

(declare-fun e!2232138 () Bool)

(assert (=> b!3606182 (= tp!1102724 e!2232138)))

(declare-fun b!3606963 () Bool)

(declare-fun tp!1102821 () Bool)

(assert (=> b!3606963 (= e!2232138 tp!1102821)))

(declare-fun b!3606961 () Bool)

(assert (=> b!3606961 (= e!2232138 tp_is_empty!17849)))

(declare-fun b!3606962 () Bool)

(declare-fun tp!1102823 () Bool)

(declare-fun tp!1102820 () Bool)

(assert (=> b!3606962 (= e!2232138 (and tp!1102823 tp!1102820))))

(declare-fun b!3606964 () Bool)

(declare-fun tp!1102824 () Bool)

(declare-fun tp!1102822 () Bool)

(assert (=> b!3606964 (= e!2232138 (and tp!1102824 tp!1102822))))

(assert (= (and b!3606182 ((_ is ElementMatch!10383) (regex!5624 (rule!8368 token!511)))) b!3606961))

(assert (= (and b!3606182 ((_ is Concat!16238) (regex!5624 (rule!8368 token!511)))) b!3606962))

(assert (= (and b!3606182 ((_ is Star!10383) (regex!5624 (rule!8368 token!511)))) b!3606963))

(assert (= (and b!3606182 ((_ is Union!10383) (regex!5624 (rule!8368 token!511)))) b!3606964))

(declare-fun e!2232139 () Bool)

(assert (=> b!3606191 (= tp!1102718 e!2232139)))

(declare-fun b!3606967 () Bool)

(declare-fun tp!1102826 () Bool)

(assert (=> b!3606967 (= e!2232139 tp!1102826)))

(declare-fun b!3606965 () Bool)

(assert (=> b!3606965 (= e!2232139 tp_is_empty!17849)))

(declare-fun b!3606966 () Bool)

(declare-fun tp!1102828 () Bool)

(declare-fun tp!1102825 () Bool)

(assert (=> b!3606966 (= e!2232139 (and tp!1102828 tp!1102825))))

(declare-fun b!3606968 () Bool)

(declare-fun tp!1102829 () Bool)

(declare-fun tp!1102827 () Bool)

(assert (=> b!3606968 (= e!2232139 (and tp!1102829 tp!1102827))))

(assert (= (and b!3606191 ((_ is ElementMatch!10383) (regex!5624 anOtherTypeRule!33))) b!3606965))

(assert (= (and b!3606191 ((_ is Concat!16238) (regex!5624 anOtherTypeRule!33))) b!3606966))

(assert (= (and b!3606191 ((_ is Star!10383) (regex!5624 anOtherTypeRule!33))) b!3606967))

(assert (= (and b!3606191 ((_ is Union!10383) (regex!5624 anOtherTypeRule!33))) b!3606968))

(declare-fun e!2232140 () Bool)

(assert (=> b!3606200 (= tp!1102722 e!2232140)))

(declare-fun b!3606971 () Bool)

(declare-fun tp!1102831 () Bool)

(assert (=> b!3606971 (= e!2232140 tp!1102831)))

(declare-fun b!3606969 () Bool)

(assert (=> b!3606969 (= e!2232140 tp_is_empty!17849)))

(declare-fun b!3606970 () Bool)

(declare-fun tp!1102833 () Bool)

(declare-fun tp!1102830 () Bool)

(assert (=> b!3606970 (= e!2232140 (and tp!1102833 tp!1102830))))

(declare-fun b!3606972 () Bool)

(declare-fun tp!1102834 () Bool)

(declare-fun tp!1102832 () Bool)

(assert (=> b!3606972 (= e!2232140 (and tp!1102834 tp!1102832))))

(assert (= (and b!3606200 ((_ is ElementMatch!10383) (regex!5624 (h!43367 rules!3307)))) b!3606969))

(assert (= (and b!3606200 ((_ is Concat!16238) (regex!5624 (h!43367 rules!3307)))) b!3606970))

(assert (= (and b!3606200 ((_ is Star!10383) (regex!5624 (h!43367 rules!3307)))) b!3606971))

(assert (= (and b!3606200 ((_ is Union!10383) (regex!5624 (h!43367 rules!3307)))) b!3606972))

(declare-fun b_lambda!106727 () Bool)

(assert (= b_lambda!106713 (or (and b!3606202 b_free!93499 (= (toChars!7767 (transformation!5624 anOtherTypeRule!33)) (toChars!7767 (transformation!5624 (rule!8368 token!511))))) (and b!3606960 b_free!93511 (= (toChars!7767 (transformation!5624 (h!43367 (t!292882 rules!3307)))) (toChars!7767 (transformation!5624 (rule!8368 token!511))))) (and b!3606167 b_free!93503 (= (toChars!7767 (transformation!5624 (h!43367 rules!3307))) (toChars!7767 (transformation!5624 (rule!8368 token!511))))) (and b!3606178 b_free!93491) (and b!3606169 b_free!93495 (= (toChars!7767 (transformation!5624 rule!403)) (toChars!7767 (transformation!5624 (rule!8368 token!511))))) b_lambda!106727)))

(declare-fun b_lambda!106729 () Bool)

(assert (= b_lambda!106711 (or (and b!3606202 b_free!93499 (= (toChars!7767 (transformation!5624 anOtherTypeRule!33)) (toChars!7767 (transformation!5624 (rule!8368 token!511))))) (and b!3606960 b_free!93511 (= (toChars!7767 (transformation!5624 (h!43367 (t!292882 rules!3307)))) (toChars!7767 (transformation!5624 (rule!8368 token!511))))) (and b!3606167 b_free!93503 (= (toChars!7767 (transformation!5624 (h!43367 rules!3307))) (toChars!7767 (transformation!5624 (rule!8368 token!511))))) (and b!3606178 b_free!93491) (and b!3606169 b_free!93495 (= (toChars!7767 (transformation!5624 rule!403)) (toChars!7767 (transformation!5624 (rule!8368 token!511))))) b_lambda!106729)))

(check-sat (not b!3606929) (not b!3606330) (not b!3606907) (not d!1062391) (not bm!260703) (not b!3606384) (not d!1062363) (not b_lambda!106701) (not b!3606684) (not b!3606346) (not b!3606654) (not d!1062209) (not d!1062301) (not b!3606949) (not b!3606554) (not d!1062207) (not d!1062249) (not b!3606319) (not d!1062369) (not bm!260709) (not b!3606537) (not b!3606524) b_and!262653 (not b!3606967) (not tb!206641) (not b!3606255) (not b!3606540) (not d!1062379) (not b!3606972) (not b!3606893) (not b!3606927) (not d!1062189) (not d!1062291) (not b!3606471) (not b!3606531) (not b!3606332) (not b!3606473) (not d!1062279) (not d!1062351) (not b!3606527) (not b!3606320) (not d!1062461) (not d!1062455) (not b!3606244) (not d!1062277) (not b_next!94205) (not b!3606717) (not d!1062303) (not b!3606963) (not d!1062453) (not b!3606539) (not d!1062383) (not b!3606498) (not d!1062397) (not b!3606487) (not b!3606923) (not d!1062459) (not b_lambda!106707) (not d!1062199) (not b!3606970) (not b!3606530) (not b!3606943) (not b!3606958) (not b_next!94213) (not d!1062355) (not b!3606916) b_and!262687 (not d!1062361) (not b!3606550) (not b!3606942) (not bm!260678) (not b!3606941) (not b!3606231) (not b!3606642) (not bm!260702) (not d!1062251) (not b!3606900) (not tb!206617) (not b_lambda!106703) (not d!1062295) (not b!3606476) (not b!3606894) (not b!3606499) (not b!3606405) (not tb!206633) (not b_next!94215) (not d!1062457) (not b!3606525) (not bm!260677) (not bm!260682) (not d!1062213) (not b_lambda!106709) (not d!1062211) (not b_next!94201) (not b!3606371) (not b!3606959) (not b!3606695) (not b!3606293) (not bm!260710) (not bm!260683) tp_is_empty!17849 (not b!3606948) (not d!1062297) (not b_lambda!106729) (not d!1062177) (not b_lambda!106725) (not d!1062357) (not b!3606964) (not b!3606658) (not b!3606696) (not b!3606519) (not b!3606897) (not b!3606536) (not b!3606291) (not b!3606526) b_and!262689 (not b_lambda!106727) (not tb!206577) (not d!1062195) (not b_next!94207) (not b!3606261) (not b!3606522) b_and!262697 (not b!3606318) (not b_next!94197) (not b_lambda!106705) (not b!3606552) (not b!3606500) (not b!3606529) (not b!3606968) (not b!3606351) (not d!1062365) (not b!3606242) (not d!1062287) (not b!3606659) (not b!3606406) (not b!3606901) (not b!3606685) (not b!3606295) (not bm!260707) (not d!1062285) (not d!1062377) (not d!1062371) b_and!262651 (not d!1062281) (not b!3606523) (not b_next!94203) (not d!1062181) (not bm!260666) b_and!262655 (not d!1062205) (not b!3606971) (not b!3606541) (not b!3606660) (not b_next!94193) (not d!1062219) (not b!3606962) (not d!1062451) (not b!3606521) (not bm!260680) b_and!262691 (not tb!206677) (not bm!260721) (not bm!260675) (not b!3606370) (not b_lambda!106687) (not b!3606316) (not d!1062367) (not b!3606486) (not b!3606912) (not b!3606240) (not d!1062193) (not d!1062197) (not b!3606656) (not d!1062463) (not b!3606652) (not d!1062173) (not b!3606655) (not b_next!94199) (not b!3606915) (not b!3606551) (not b!3606238) (not tb!206625) (not b_next!94195) (not b!3606679) (not b!3606898) (not b!3606917) (not b!3606382) (not b!3606966) (not d!1062353) (not bm!260679) b_and!262693 b_and!262695 (not d!1062175) b_and!262657 (not b!3606326) (not b!3606386) (not b!3606895) (not d!1062237) (not b!3606328) (not b!3606657) (not b!3606896) (not b!3606232) (not b!3606925))
(check-sat b_and!262653 (not b_next!94205) (not b_next!94215) (not b_next!94201) b_and!262689 (not b_next!94207) b_and!262651 (not b_next!94193) b_and!262691 (not b_next!94199) (not b_next!94195) b_and!262693 (not b_next!94213) b_and!262687 b_and!262697 (not b_next!94197) b_and!262655 (not b_next!94203) b_and!262695 b_and!262657)

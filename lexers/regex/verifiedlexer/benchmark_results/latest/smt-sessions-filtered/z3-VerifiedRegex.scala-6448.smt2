; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!337270 () Bool)

(assert start!337270)

(declare-fun b!3621049 () Bool)

(declare-fun b_free!94393 () Bool)

(declare-fun b_next!95097 () Bool)

(assert (=> b!3621049 (= b_free!94393 (not b_next!95097))))

(declare-fun tp!1105980 () Bool)

(declare-fun b_and!264763 () Bool)

(assert (=> b!3621049 (= tp!1105980 b_and!264763)))

(declare-fun b_free!94395 () Bool)

(declare-fun b_next!95099 () Bool)

(assert (=> b!3621049 (= b_free!94395 (not b_next!95099))))

(declare-fun tp!1105989 () Bool)

(declare-fun b_and!264765 () Bool)

(assert (=> b!3621049 (= tp!1105989 b_and!264765)))

(declare-fun b!3621075 () Bool)

(declare-fun b_free!94397 () Bool)

(declare-fun b_next!95101 () Bool)

(assert (=> b!3621075 (= b_free!94397 (not b_next!95101))))

(declare-fun tp!1105977 () Bool)

(declare-fun b_and!264767 () Bool)

(assert (=> b!3621075 (= tp!1105977 b_and!264767)))

(declare-fun b_free!94399 () Bool)

(declare-fun b_next!95103 () Bool)

(assert (=> b!3621075 (= b_free!94399 (not b_next!95103))))

(declare-fun tp!1105983 () Bool)

(declare-fun b_and!264769 () Bool)

(assert (=> b!3621075 (= tp!1105983 b_and!264769)))

(declare-fun b!3621086 () Bool)

(declare-fun b_free!94401 () Bool)

(declare-fun b_next!95105 () Bool)

(assert (=> b!3621086 (= b_free!94401 (not b_next!95105))))

(declare-fun tp!1105976 () Bool)

(declare-fun b_and!264771 () Bool)

(assert (=> b!3621086 (= tp!1105976 b_and!264771)))

(declare-fun b_free!94403 () Bool)

(declare-fun b_next!95107 () Bool)

(assert (=> b!3621086 (= b_free!94403 (not b_next!95107))))

(declare-fun tp!1105985 () Bool)

(declare-fun b_and!264773 () Bool)

(assert (=> b!3621086 (= tp!1105985 b_and!264773)))

(declare-fun b!3621047 () Bool)

(declare-fun b_free!94405 () Bool)

(declare-fun b_next!95109 () Bool)

(assert (=> b!3621047 (= b_free!94405 (not b_next!95109))))

(declare-fun tp!1105978 () Bool)

(declare-fun b_and!264775 () Bool)

(assert (=> b!3621047 (= tp!1105978 b_and!264775)))

(declare-fun b_free!94407 () Bool)

(declare-fun b_next!95111 () Bool)

(assert (=> b!3621047 (= b_free!94407 (not b_next!95111))))

(declare-fun tp!1105981 () Bool)

(declare-fun b_and!264777 () Bool)

(assert (=> b!3621047 (= tp!1105981 b_and!264777)))

(declare-fun tp!1105982 () Bool)

(declare-fun e!2241341 () Bool)

(declare-datatypes ((List!38261 0))(
  ( (Nil!38137) (Cons!38137 (h!43557 (_ BitVec 16)) (t!294192 List!38261)) )
))
(declare-datatypes ((TokenValue!5906 0))(
  ( (FloatLiteralValue!11812 (text!41787 List!38261)) (TokenValueExt!5905 (__x!24029 Int)) (Broken!29530 (value!182200 List!38261)) (Object!6029) (End!5906) (Def!5906) (Underscore!5906) (Match!5906) (Else!5906) (Error!5906) (Case!5906) (If!5906) (Extends!5906) (Abstract!5906) (Class!5906) (Val!5906) (DelimiterValue!11812 (del!5966 List!38261)) (KeywordValue!5912 (value!182201 List!38261)) (CommentValue!11812 (value!182202 List!38261)) (WhitespaceValue!11812 (value!182203 List!38261)) (IndentationValue!5906 (value!182204 List!38261)) (String!42863) (Int32!5906) (Broken!29531 (value!182205 List!38261)) (Boolean!5907) (Unit!54868) (OperatorValue!5909 (op!5966 List!38261)) (IdentifierValue!11812 (value!182206 List!38261)) (IdentifierValue!11813 (value!182207 List!38261)) (WhitespaceValue!11813 (value!182208 List!38261)) (True!11812) (False!11812) (Broken!29532 (value!182209 List!38261)) (Broken!29533 (value!182210 List!38261)) (True!11813) (RightBrace!5906) (RightBracket!5906) (Colon!5906) (Null!5906) (Comma!5906) (LeftBracket!5906) (False!11813) (LeftBrace!5906) (ImaginaryLiteralValue!5906 (text!41788 List!38261)) (StringLiteralValue!17718 (value!182211 List!38261)) (EOFValue!5906 (value!182212 List!38261)) (IdentValue!5906 (value!182213 List!38261)) (DelimiterValue!11813 (value!182214 List!38261)) (DedentValue!5906 (value!182215 List!38261)) (NewLineValue!5906 (value!182216 List!38261)) (IntegerValue!17718 (value!182217 (_ BitVec 32)) (text!41789 List!38261)) (IntegerValue!17719 (value!182218 Int) (text!41790 List!38261)) (Times!5906) (Or!5906) (Equal!5906) (Minus!5906) (Broken!29534 (value!182219 List!38261)) (And!5906) (Div!5906) (LessEqual!5906) (Mod!5906) (Concat!16341) (Not!5906) (Plus!5906) (SpaceValue!5906 (value!182220 List!38261)) (IntegerValue!17720 (value!182221 Int) (text!41791 List!38261)) (StringLiteralValue!17719 (text!41792 List!38261)) (FloatLiteralValue!11813 (text!41793 List!38261)) (BytesLiteralValue!5906 (value!182222 List!38261)) (CommentValue!11813 (value!182223 List!38261)) (StringLiteralValue!17720 (value!182224 List!38261)) (ErrorTokenValue!5906 (msg!5967 List!38261)) )
))
(declare-datatypes ((C!21056 0))(
  ( (C!21057 (val!12576 Int)) )
))
(declare-datatypes ((Regex!10435 0))(
  ( (ElementMatch!10435 (c!626664 C!21056)) (Concat!16342 (regOne!21382 Regex!10435) (regTwo!21382 Regex!10435)) (EmptyExpr!10435) (Star!10435 (reg!10764 Regex!10435)) (EmptyLang!10435) (Union!10435 (regOne!21383 Regex!10435) (regTwo!21383 Regex!10435)) )
))
(declare-datatypes ((String!42864 0))(
  ( (String!42865 (value!182225 String)) )
))
(declare-datatypes ((List!38262 0))(
  ( (Nil!38138) (Cons!38138 (h!43558 C!21056) (t!294193 List!38262)) )
))
(declare-datatypes ((IArray!23263 0))(
  ( (IArray!23264 (innerList!11689 List!38262)) )
))
(declare-datatypes ((Conc!11629 0))(
  ( (Node!11629 (left!29781 Conc!11629) (right!30111 Conc!11629) (csize!23488 Int) (cheight!11840 Int)) (Leaf!18078 (xs!14831 IArray!23263) (csize!23489 Int)) (Empty!11629) )
))
(declare-datatypes ((BalanceConc!22872 0))(
  ( (BalanceConc!22873 (c!626665 Conc!11629)) )
))
(declare-datatypes ((TokenValueInjection!11240 0))(
  ( (TokenValueInjection!11241 (toValue!7960 Int) (toChars!7819 Int)) )
))
(declare-datatypes ((Rule!11152 0))(
  ( (Rule!11153 (regex!5676 Regex!10435) (tag!6394 String!42864) (isSeparator!5676 Bool) (transformation!5676 TokenValueInjection!11240)) )
))
(declare-fun rule!403 () Rule!11152)

(declare-fun b!3621045 () Bool)

(declare-fun e!2241311 () Bool)

(declare-fun inv!51528 (String!42864) Bool)

(declare-fun inv!51531 (TokenValueInjection!11240) Bool)

(assert (=> b!3621045 (= e!2241341 (and tp!1105982 (inv!51528 (tag!6394 rule!403)) (inv!51531 (transformation!5676 rule!403)) e!2241311))))

(declare-fun b!3621046 () Bool)

(assert (=> b!3621046 false))

(declare-datatypes ((Unit!54869 0))(
  ( (Unit!54870) )
))
(declare-fun lt!1251451 () Unit!54869)

(declare-fun call!262002 () Unit!54869)

(assert (=> b!3621046 (= lt!1251451 call!262002)))

(declare-fun call!262006 () Bool)

(assert (=> b!3621046 (not call!262006)))

(declare-datatypes ((List!38263 0))(
  ( (Nil!38139) (Cons!38139 (h!43559 Rule!11152) (t!294194 List!38263)) )
))
(declare-fun rules!3307 () List!38263)

(declare-datatypes ((Token!10718 0))(
  ( (Token!10719 (value!182226 TokenValue!5906) (rule!8438 Rule!11152) (size!29097 Int) (originalCharacters!6390 List!38262)) )
))
(declare-datatypes ((tuple2!38016 0))(
  ( (tuple2!38017 (_1!22142 Token!10718) (_2!22142 List!38262)) )
))
(declare-fun lt!1251422 () tuple2!38016)

(declare-datatypes ((LexerInterface!5265 0))(
  ( (LexerInterfaceExt!5262 (__x!24030 Int)) (Lexer!5263) )
))
(declare-fun thiss!23823 () LexerInterface!5265)

(declare-fun lt!1251431 () Unit!54869)

(declare-fun lt!1251426 () C!21056)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!382 (LexerInterface!5265 List!38263 List!38263 Rule!11152 Rule!11152 C!21056) Unit!54869)

(assert (=> b!3621046 (= lt!1251431 (lemmaNonSepRuleNotContainsCharContainedInASepRule!382 thiss!23823 rules!3307 rules!3307 (rule!8438 (_1!22142 lt!1251422)) rule!403 lt!1251426))))

(declare-fun e!2241339 () Unit!54869)

(declare-fun Unit!54871 () Unit!54869)

(assert (=> b!3621046 (= e!2241339 Unit!54871)))

(declare-fun e!2241344 () Bool)

(assert (=> b!3621047 (= e!2241344 (and tp!1105978 tp!1105981))))

(declare-fun b!3621048 () Bool)

(declare-fun e!2241308 () Unit!54869)

(declare-fun e!2241332 () Unit!54869)

(assert (=> b!3621048 (= e!2241308 e!2241332)))

(declare-fun lt!1251441 () List!38262)

(declare-fun lt!1251409 () Unit!54869)

(declare-fun suffix!1395 () List!38262)

(declare-fun lt!1251452 () List!38262)

(declare-fun lt!1251429 () List!38262)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!54 (List!38262 List!38262 List!38262 List!38262) Unit!54869)

(assert (=> b!3621048 (= lt!1251409 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!54 lt!1251441 suffix!1395 lt!1251452 lt!1251429))))

(declare-fun lt!1251419 () C!21056)

(declare-fun contains!7415 (List!38262 C!21056) Bool)

(assert (=> b!3621048 (contains!7415 lt!1251452 lt!1251419)))

(declare-fun c!626660 () Bool)

(assert (=> b!3621048 (= c!626660 (isSeparator!5676 rule!403))))

(declare-fun e!2241337 () Bool)

(assert (=> b!3621049 (= e!2241337 (and tp!1105980 tp!1105989))))

(declare-fun b!3621050 () Bool)

(declare-fun e!2241321 () Unit!54869)

(declare-fun Unit!54872 () Unit!54869)

(assert (=> b!3621050 (= e!2241321 Unit!54872)))

(declare-fun b!3621051 () Bool)

(declare-fun e!2241325 () Unit!54869)

(declare-fun Unit!54873 () Unit!54869)

(assert (=> b!3621051 (= e!2241325 Unit!54873)))

(declare-fun lt!1251458 () Unit!54869)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!660 (Regex!10435 List!38262 C!21056) Unit!54869)

(assert (=> b!3621051 (= lt!1251458 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!660 (regex!5676 rule!403) lt!1251441 lt!1251426))))

(assert (=> b!3621051 false))

(declare-fun b!3621052 () Bool)

(assert (=> b!3621052 false))

(declare-fun lt!1251433 () Unit!54869)

(declare-fun call!262004 () Unit!54869)

(assert (=> b!3621052 (= lt!1251433 call!262004)))

(declare-fun call!262005 () Bool)

(assert (=> b!3621052 (not call!262005)))

(declare-fun anOtherTypeRule!33 () Rule!11152)

(declare-fun lt!1251456 () Unit!54869)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!264 (LexerInterface!5265 List!38263 List!38263 Rule!11152 Rule!11152 C!21056) Unit!54869)

(assert (=> b!3621052 (= lt!1251456 (lemmaSepRuleNotContainsCharContainedInANonSepRule!264 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8438 (_1!22142 lt!1251422)) lt!1251419))))

(declare-fun Unit!54874 () Unit!54869)

(assert (=> b!3621052 (= e!2241332 Unit!54874)))

(declare-fun b!3621053 () Bool)

(declare-fun e!2241326 () Bool)

(declare-fun e!2241331 () Bool)

(declare-fun tp!1105990 () Bool)

(assert (=> b!3621053 (= e!2241326 (and e!2241331 tp!1105990))))

(declare-fun b!3621054 () Bool)

(assert (=> b!3621054 false))

(declare-fun lt!1251459 () Unit!54869)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!210 (LexerInterface!5265 List!38263 Rule!11152 List!38262 List!38262 Rule!11152) Unit!54869)

(assert (=> b!3621054 (= lt!1251459 (lemmaMaxPrefNoSmallerRuleMatches!210 thiss!23823 rules!3307 (rule!8438 (_1!22142 lt!1251422)) lt!1251441 lt!1251429 rule!403))))

(declare-fun Unit!54875 () Unit!54869)

(assert (=> b!3621054 (= e!2241321 Unit!54875)))

(declare-fun b!3621055 () Bool)

(declare-fun res!1465340 () Bool)

(declare-fun e!2241310 () Bool)

(assert (=> b!3621055 (=> res!1465340 e!2241310)))

(declare-fun matchR!5004 (Regex!10435 List!38262) Bool)

(assert (=> b!3621055 (= res!1465340 (not (matchR!5004 (regex!5676 (rule!8438 (_1!22142 lt!1251422))) lt!1251452)))))

(declare-fun b!3621056 () Bool)

(declare-fun e!2241323 () Unit!54869)

(declare-fun Unit!54876 () Unit!54869)

(assert (=> b!3621056 (= e!2241323 Unit!54876)))

(declare-fun lt!1251446 () Int)

(declare-fun getIndex!458 (List!38263 Rule!11152) Int)

(assert (=> b!3621056 (= lt!1251446 (getIndex!458 rules!3307 (rule!8438 (_1!22142 lt!1251422))))))

(declare-fun lt!1251444 () Int)

(assert (=> b!3621056 (= lt!1251444 (getIndex!458 rules!3307 rule!403))))

(declare-fun c!626661 () Bool)

(assert (=> b!3621056 (= c!626661 (< lt!1251446 lt!1251444))))

(declare-fun lt!1251425 () Unit!54869)

(declare-fun e!2241314 () Unit!54869)

(assert (=> b!3621056 (= lt!1251425 e!2241314)))

(declare-fun c!626662 () Bool)

(assert (=> b!3621056 (= c!626662 (< lt!1251444 lt!1251446))))

(declare-fun lt!1251436 () Unit!54869)

(assert (=> b!3621056 (= lt!1251436 e!2241321)))

(declare-fun lt!1251440 () Unit!54869)

(declare-fun lemmaSameIndexThenSameElement!226 (List!38263 Rule!11152 Rule!11152) Unit!54869)

(assert (=> b!3621056 (= lt!1251440 (lemmaSameIndexThenSameElement!226 rules!3307 (rule!8438 (_1!22142 lt!1251422)) rule!403))))

(assert (=> b!3621056 false))

(declare-fun b!3621057 () Bool)

(declare-fun Unit!54877 () Unit!54869)

(assert (=> b!3621057 (= e!2241323 Unit!54877)))

(declare-fun b!3621058 () Bool)

(declare-fun e!2241340 () Bool)

(assert (=> b!3621058 e!2241340))

(declare-fun res!1465354 () Bool)

(assert (=> b!3621058 (=> (not res!1465354) (not e!2241340))))

(assert (=> b!3621058 (= res!1465354 (not (matchR!5004 (regex!5676 (rule!8438 (_1!22142 lt!1251422))) lt!1251441)))))

(declare-fun lt!1251415 () Unit!54869)

(assert (=> b!3621058 (= lt!1251415 (lemmaMaxPrefNoSmallerRuleMatches!210 thiss!23823 rules!3307 rule!403 lt!1251441 lt!1251441 (rule!8438 (_1!22142 lt!1251422))))))

(declare-fun isEmpty!22538 (List!38262) Bool)

(declare-fun getSuffix!1614 (List!38262 List!38262) List!38262)

(assert (=> b!3621058 (isEmpty!22538 (getSuffix!1614 lt!1251441 lt!1251441))))

(declare-fun lt!1251411 () Unit!54869)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!170 (List!38262) Unit!54869)

(assert (=> b!3621058 (= lt!1251411 (lemmaGetSuffixOnListWithItSelfIsEmpty!170 lt!1251441))))

(declare-fun Unit!54878 () Unit!54869)

(assert (=> b!3621058 (= e!2241314 Unit!54878)))

(declare-fun b!3621059 () Bool)

(declare-fun e!2241335 () Unit!54869)

(assert (=> b!3621059 (= e!2241335 e!2241339)))

(declare-fun c!626657 () Bool)

(assert (=> b!3621059 (= c!626657 (not (isSeparator!5676 (rule!8438 (_1!22142 lt!1251422)))))))

(declare-fun b!3621060 () Bool)

(declare-fun res!1465339 () Bool)

(declare-fun e!2241322 () Bool)

(assert (=> b!3621060 (=> res!1465339 e!2241322)))

(declare-fun sepAndNonSepRulesDisjointChars!1846 (List!38263 List!38263) Bool)

(assert (=> b!3621060 (= res!1465339 (not (sepAndNonSepRulesDisjointChars!1846 rules!3307 rules!3307)))))

(declare-fun b!3621061 () Bool)

(declare-fun e!2241334 () Bool)

(declare-fun e!2241330 () Bool)

(assert (=> b!3621061 (= e!2241334 e!2241330)))

(declare-fun res!1465356 () Bool)

(assert (=> b!3621061 (=> res!1465356 e!2241330)))

(declare-fun lt!1251408 () List!38262)

(assert (=> b!3621061 (= res!1465356 (or (not (= lt!1251408 lt!1251429)) (not (= lt!1251441 lt!1251452))))))

(declare-fun lt!1251461 () List!38262)

(assert (=> b!3621061 (= lt!1251461 (_2!22142 lt!1251422))))

(declare-fun lt!1251423 () Unit!54869)

(declare-fun lemmaSamePrefixThenSameSuffix!1394 (List!38262 List!38262 List!38262 List!38262 List!38262) Unit!54869)

(assert (=> b!3621061 (= lt!1251423 (lemmaSamePrefixThenSameSuffix!1394 lt!1251441 lt!1251461 lt!1251452 (_2!22142 lt!1251422) lt!1251429))))

(declare-datatypes ((Option!7982 0))(
  ( (None!7981) (Some!7981 (v!37747 tuple2!38016)) )
))
(declare-fun maxPrefixOneRule!1943 (LexerInterface!5265 Rule!11152 List!38262) Option!7982)

(declare-fun apply!9182 (TokenValueInjection!11240 BalanceConc!22872) TokenValue!5906)

(declare-fun seqFromList!4229 (List!38262) BalanceConc!22872)

(declare-fun size!29098 (List!38262) Int)

(assert (=> b!3621061 (= (maxPrefixOneRule!1943 thiss!23823 rule!403 lt!1251429) (Some!7981 (tuple2!38017 (Token!10719 (apply!9182 (transformation!5676 rule!403) (seqFromList!4229 lt!1251441)) rule!403 (size!29098 lt!1251441) lt!1251441) lt!1251461)))))

(declare-fun lt!1251432 () Unit!54869)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1015 (LexerInterface!5265 List!38263 List!38262 List!38262 List!38262 Rule!11152) Unit!54869)

(assert (=> b!3621061 (= lt!1251432 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1015 thiss!23823 rules!3307 lt!1251441 lt!1251429 lt!1251461 rule!403))))

(assert (=> b!3621061 (= lt!1251461 (getSuffix!1614 lt!1251429 lt!1251441))))

(declare-fun lt!1251449 () Unit!54869)

(assert (=> b!3621061 (= lt!1251449 e!2241323)))

(declare-fun c!626663 () Bool)

(declare-fun token!511 () Token!10718)

(assert (=> b!3621061 (= c!626663 (not (= (rule!8438 (_1!22142 lt!1251422)) (rule!8438 token!511))))))

(assert (=> b!3621061 (= lt!1251452 lt!1251441)))

(declare-fun lt!1251412 () Unit!54869)

(declare-fun lemmaIsPrefixSameLengthThenSameList!613 (List!38262 List!38262 List!38262) Unit!54869)

(assert (=> b!3621061 (= lt!1251412 (lemmaIsPrefixSameLengthThenSameList!613 lt!1251452 lt!1251441 lt!1251429))))

(declare-fun lt!1251464 () Unit!54869)

(declare-fun e!2241333 () Unit!54869)

(assert (=> b!3621061 (= lt!1251464 e!2241333)))

(declare-fun c!626659 () Bool)

(declare-fun lt!1251414 () Int)

(declare-fun lt!1251427 () Int)

(assert (=> b!3621061 (= c!626659 (< lt!1251414 lt!1251427))))

(declare-fun lt!1251424 () Unit!54869)

(assert (=> b!3621061 (= lt!1251424 e!2241308)))

(declare-fun c!626655 () Bool)

(assert (=> b!3621061 (= c!626655 (> lt!1251414 lt!1251427))))

(declare-fun lt!1251450 () BalanceConc!22872)

(declare-fun size!29099 (BalanceConc!22872) Int)

(assert (=> b!3621061 (= lt!1251427 (size!29099 lt!1251450))))

(declare-fun lt!1251413 () Unit!54869)

(assert (=> b!3621061 (= lt!1251413 e!2241335)))

(declare-fun c!626656 () Bool)

(assert (=> b!3621061 (= c!626656 (isSeparator!5676 rule!403))))

(declare-fun lt!1251417 () Unit!54869)

(assert (=> b!3621061 (= lt!1251417 e!2241325)))

(declare-fun c!626658 () Bool)

(declare-fun lt!1251468 () List!38262)

(assert (=> b!3621061 (= c!626658 (not (contains!7415 lt!1251468 lt!1251426)))))

(declare-fun head!7646 (List!38262) C!21056)

(assert (=> b!3621061 (= lt!1251426 (head!7646 lt!1251452))))

(declare-fun b!3621062 () Bool)

(assert (=> b!3621062 (= e!2241322 e!2241310)))

(declare-fun res!1465345 () Bool)

(assert (=> b!3621062 (=> res!1465345 e!2241310)))

(declare-fun isPrefix!3039 (List!38262 List!38262) Bool)

(assert (=> b!3621062 (= res!1465345 (not (isPrefix!3039 lt!1251452 lt!1251429)))))

(assert (=> b!3621062 (isPrefix!3039 lt!1251452 lt!1251408)))

(declare-fun ++!9492 (List!38262 List!38262) List!38262)

(assert (=> b!3621062 (= lt!1251408 (++!9492 lt!1251452 (_2!22142 lt!1251422)))))

(declare-fun lt!1251439 () Unit!54869)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1960 (List!38262 List!38262) Unit!54869)

(assert (=> b!3621062 (= lt!1251439 (lemmaConcatTwoListThenFirstIsPrefix!1960 lt!1251452 (_2!22142 lt!1251422)))))

(declare-fun lt!1251447 () BalanceConc!22872)

(declare-fun list!14076 (BalanceConc!22872) List!38262)

(assert (=> b!3621062 (= lt!1251452 (list!14076 lt!1251447))))

(declare-fun charsOf!3690 (Token!10718) BalanceConc!22872)

(assert (=> b!3621062 (= lt!1251447 (charsOf!3690 (_1!22142 lt!1251422)))))

(declare-fun e!2241319 () Bool)

(assert (=> b!3621062 e!2241319))

(declare-fun res!1465344 () Bool)

(assert (=> b!3621062 (=> (not res!1465344) (not e!2241319))))

(declare-datatypes ((Option!7983 0))(
  ( (None!7982) (Some!7982 (v!37748 Rule!11152)) )
))
(declare-fun lt!1251410 () Option!7983)

(declare-fun isDefined!6214 (Option!7983) Bool)

(assert (=> b!3621062 (= res!1465344 (isDefined!6214 lt!1251410))))

(declare-fun getRuleFromTag!1282 (LexerInterface!5265 List!38263 String!42864) Option!7983)

(assert (=> b!3621062 (= lt!1251410 (getRuleFromTag!1282 thiss!23823 rules!3307 (tag!6394 (rule!8438 (_1!22142 lt!1251422)))))))

(declare-fun lt!1251428 () Unit!54869)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1282 (LexerInterface!5265 List!38263 List!38262 Token!10718) Unit!54869)

(assert (=> b!3621062 (= lt!1251428 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1282 thiss!23823 rules!3307 lt!1251429 (_1!22142 lt!1251422)))))

(declare-fun lt!1251463 () Option!7982)

(declare-fun get!12430 (Option!7982) tuple2!38016)

(assert (=> b!3621062 (= lt!1251422 (get!12430 lt!1251463))))

(declare-fun lt!1251416 () Unit!54869)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!945 (LexerInterface!5265 List!38263 List!38262 List!38262) Unit!54869)

(assert (=> b!3621062 (= lt!1251416 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!945 thiss!23823 rules!3307 lt!1251441 suffix!1395))))

(declare-fun maxPrefix!2799 (LexerInterface!5265 List!38263 List!38262) Option!7982)

(assert (=> b!3621062 (= lt!1251463 (maxPrefix!2799 thiss!23823 rules!3307 lt!1251429))))

(assert (=> b!3621062 (isPrefix!3039 lt!1251441 lt!1251429)))

(declare-fun lt!1251430 () Unit!54869)

(assert (=> b!3621062 (= lt!1251430 (lemmaConcatTwoListThenFirstIsPrefix!1960 lt!1251441 suffix!1395))))

(assert (=> b!3621062 (= lt!1251429 (++!9492 lt!1251441 suffix!1395))))

(declare-fun e!2241309 () Bool)

(declare-fun tp!1105987 () Bool)

(declare-fun b!3621063 () Bool)

(declare-fun e!2241324 () Bool)

(declare-fun inv!21 (TokenValue!5906) Bool)

(assert (=> b!3621063 (= e!2241324 (and (inv!21 (value!182226 token!511)) e!2241309 tp!1105987))))

(declare-fun b!3621064 () Bool)

(declare-fun e!2241315 () Bool)

(assert (=> b!3621064 (= e!2241315 e!2241334)))

(declare-fun res!1465357 () Bool)

(assert (=> b!3621064 (=> res!1465357 e!2241334)))

(declare-fun lt!1251455 () List!38262)

(declare-fun lt!1251421 () Option!7982)

(assert (=> b!3621064 (= res!1465357 (or (not (= lt!1251455 (_2!22142 lt!1251422))) (not (= lt!1251421 (Some!7981 (tuple2!38017 (_1!22142 lt!1251422) lt!1251455))))))))

(assert (=> b!3621064 (= (_2!22142 lt!1251422) lt!1251455)))

(declare-fun lt!1251434 () Unit!54869)

(assert (=> b!3621064 (= lt!1251434 (lemmaSamePrefixThenSameSuffix!1394 lt!1251452 (_2!22142 lt!1251422) lt!1251452 lt!1251455 lt!1251429))))

(assert (=> b!3621064 (= lt!1251455 (getSuffix!1614 lt!1251429 lt!1251452))))

(declare-fun lt!1251462 () Int)

(declare-fun lt!1251465 () TokenValue!5906)

(assert (=> b!3621064 (= lt!1251421 (Some!7981 (tuple2!38017 (Token!10719 lt!1251465 (rule!8438 (_1!22142 lt!1251422)) lt!1251462 lt!1251452) (_2!22142 lt!1251422))))))

(assert (=> b!3621064 (= lt!1251421 (maxPrefixOneRule!1943 thiss!23823 (rule!8438 (_1!22142 lt!1251422)) lt!1251429))))

(assert (=> b!3621064 (= lt!1251462 (size!29098 lt!1251452))))

(assert (=> b!3621064 (= lt!1251465 (apply!9182 (transformation!5676 (rule!8438 (_1!22142 lt!1251422))) (seqFromList!4229 lt!1251452)))))

(declare-fun lt!1251448 () Unit!54869)

(assert (=> b!3621064 (= lt!1251448 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1015 thiss!23823 rules!3307 lt!1251452 lt!1251429 (_2!22142 lt!1251422) (rule!8438 (_1!22142 lt!1251422))))))

(declare-fun bm!261996 () Bool)

(declare-fun call!262001 () List!38262)

(declare-fun usedCharacters!890 (Regex!10435) List!38262)

(assert (=> bm!261996 (= call!262001 (usedCharacters!890 (regex!5676 (rule!8438 (_1!22142 lt!1251422)))))))

(declare-fun b!3621065 () Bool)

(declare-fun res!1465348 () Bool)

(declare-fun e!2241307 () Bool)

(assert (=> b!3621065 (=> (not res!1465348) (not e!2241307))))

(declare-fun contains!7416 (List!38263 Rule!11152) Bool)

(assert (=> b!3621065 (= res!1465348 (contains!7416 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3621066 () Bool)

(assert (=> b!3621066 (= e!2241330 true)))

(declare-fun lt!1251467 () Bool)

(declare-fun rulesValidInductive!1993 (LexerInterface!5265 List!38263) Bool)

(assert (=> b!3621066 (= lt!1251467 (rulesValidInductive!1993 thiss!23823 rules!3307))))

(assert (=> b!3621066 (= suffix!1395 (_2!22142 lt!1251422))))

(declare-fun lt!1251460 () Unit!54869)

(assert (=> b!3621066 (= lt!1251460 (lemmaSamePrefixThenSameSuffix!1394 lt!1251441 suffix!1395 lt!1251452 (_2!22142 lt!1251422) lt!1251429))))

(declare-fun b!3621067 () Bool)

(declare-fun e!2241316 () Bool)

(declare-fun e!2241338 () Bool)

(assert (=> b!3621067 (= e!2241316 (not e!2241338))))

(declare-fun res!1465351 () Bool)

(assert (=> b!3621067 (=> res!1465351 e!2241338)))

(assert (=> b!3621067 (= res!1465351 (not (matchR!5004 (regex!5676 rule!403) lt!1251441)))))

(declare-fun ruleValid!1941 (LexerInterface!5265 Rule!11152) Bool)

(assert (=> b!3621067 (ruleValid!1941 thiss!23823 rule!403)))

(declare-fun lt!1251454 () Unit!54869)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1096 (LexerInterface!5265 Rule!11152 List!38263) Unit!54869)

(assert (=> b!3621067 (= lt!1251454 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1096 thiss!23823 rule!403 rules!3307))))

(declare-fun tp!1105988 () Bool)

(declare-fun b!3621068 () Bool)

(declare-fun e!2241320 () Bool)

(assert (=> b!3621068 (= e!2241320 (and tp!1105988 (inv!51528 (tag!6394 anOtherTypeRule!33)) (inv!51531 (transformation!5676 anOtherTypeRule!33)) e!2241337))))

(declare-fun bm!261997 () Bool)

(assert (=> bm!261997 (= call!262005 (contains!7415 call!262001 lt!1251419))))

(declare-fun tp!1105979 () Bool)

(declare-fun b!3621069 () Bool)

(assert (=> b!3621069 (= e!2241331 (and tp!1105979 (inv!51528 (tag!6394 (h!43559 rules!3307))) (inv!51531 (transformation!5676 (h!43559 rules!3307))) e!2241344))))

(declare-fun bm!261998 () Bool)

(assert (=> bm!261998 (= call!262004 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!660 (regex!5676 (rule!8438 (_1!22142 lt!1251422))) lt!1251452 lt!1251419))))

(declare-fun b!3621070 () Bool)

(declare-fun Unit!54879 () Unit!54869)

(assert (=> b!3621070 (= e!2241314 Unit!54879)))

(declare-fun b!3621071 () Bool)

(declare-fun e!2241336 () Bool)

(assert (=> b!3621071 (= e!2241307 e!2241336)))

(declare-fun res!1465346 () Bool)

(assert (=> b!3621071 (=> (not res!1465346) (not e!2241336))))

(declare-fun lt!1251418 () Option!7982)

(declare-fun isDefined!6215 (Option!7982) Bool)

(assert (=> b!3621071 (= res!1465346 (isDefined!6215 lt!1251418))))

(assert (=> b!3621071 (= lt!1251418 (maxPrefix!2799 thiss!23823 rules!3307 lt!1251441))))

(assert (=> b!3621071 (= lt!1251441 (list!14076 lt!1251450))))

(assert (=> b!3621071 (= lt!1251450 (charsOf!3690 token!511))))

(declare-fun b!3621072 () Bool)

(assert (=> b!3621072 (= e!2241340 false)))

(declare-fun b!3621073 () Bool)

(declare-fun res!1465349 () Bool)

(assert (=> b!3621073 (=> (not res!1465349) (not e!2241307))))

(declare-fun isEmpty!22539 (List!38263) Bool)

(assert (=> b!3621073 (= res!1465349 (not (isEmpty!22539 rules!3307)))))

(declare-fun b!3621074 () Bool)

(declare-fun e!2241329 () Bool)

(assert (=> b!3621074 (= e!2241319 e!2241329)))

(declare-fun res!1465335 () Bool)

(assert (=> b!3621074 (=> (not res!1465335) (not e!2241329))))

(declare-fun lt!1251435 () Rule!11152)

(assert (=> b!3621074 (= res!1465335 (matchR!5004 (regex!5676 lt!1251435) (list!14076 (charsOf!3690 (_1!22142 lt!1251422)))))))

(declare-fun get!12431 (Option!7983) Rule!11152)

(assert (=> b!3621074 (= lt!1251435 (get!12431 lt!1251410))))

(declare-fun e!2241342 () Bool)

(assert (=> b!3621075 (= e!2241342 (and tp!1105977 tp!1105983))))

(declare-fun bm!261999 () Bool)

(declare-fun call!262003 () List!38262)

(assert (=> bm!261999 (= call!262003 (usedCharacters!890 (regex!5676 (rule!8438 (_1!22142 lt!1251422)))))))

(declare-fun b!3621076 () Bool)

(declare-fun res!1465342 () Bool)

(assert (=> b!3621076 (=> res!1465342 e!2241338)))

(assert (=> b!3621076 (= res!1465342 (isEmpty!22538 suffix!1395))))

(declare-fun b!3621077 () Bool)

(assert (=> b!3621077 (= e!2241310 e!2241315)))

(declare-fun res!1465343 () Bool)

(assert (=> b!3621077 (=> res!1465343 e!2241315)))

(declare-fun lt!1251457 () TokenValue!5906)

(assert (=> b!3621077 (= res!1465343 (not (= lt!1251463 (Some!7981 (tuple2!38017 (Token!10719 lt!1251457 (rule!8438 (_1!22142 lt!1251422)) lt!1251414 lt!1251452) (_2!22142 lt!1251422))))))))

(assert (=> b!3621077 (= lt!1251414 (size!29099 lt!1251447))))

(assert (=> b!3621077 (= lt!1251457 (apply!9182 (transformation!5676 (rule!8438 (_1!22142 lt!1251422))) lt!1251447))))

(declare-fun lt!1251420 () Unit!54869)

(declare-fun lemmaCharactersSize!729 (Token!10718) Unit!54869)

(assert (=> b!3621077 (= lt!1251420 (lemmaCharactersSize!729 (_1!22142 lt!1251422)))))

(declare-fun lt!1251437 () Unit!54869)

(declare-fun lemmaEqSameImage!867 (TokenValueInjection!11240 BalanceConc!22872 BalanceConc!22872) Unit!54869)

(assert (=> b!3621077 (= lt!1251437 (lemmaEqSameImage!867 (transformation!5676 (rule!8438 (_1!22142 lt!1251422))) lt!1251447 (seqFromList!4229 (originalCharacters!6390 (_1!22142 lt!1251422)))))))

(declare-fun lt!1251438 () Unit!54869)

(declare-fun lemmaSemiInverse!1433 (TokenValueInjection!11240 BalanceConc!22872) Unit!54869)

(assert (=> b!3621077 (= lt!1251438 (lemmaSemiInverse!1433 (transformation!5676 (rule!8438 (_1!22142 lt!1251422))) lt!1251447))))

(declare-fun b!3621078 () Bool)

(declare-fun res!1465355 () Bool)

(assert (=> b!3621078 (=> (not res!1465355) (not e!2241316))))

(assert (=> b!3621078 (= res!1465355 (= (rule!8438 token!511) rule!403))))

(declare-fun b!3621079 () Bool)

(declare-fun res!1465352 () Bool)

(assert (=> b!3621079 (=> res!1465352 e!2241322)))

(assert (=> b!3621079 (= res!1465352 (not (contains!7415 (usedCharacters!890 (regex!5676 anOtherTypeRule!33)) lt!1251419)))))

(declare-fun b!3621080 () Bool)

(assert (=> b!3621080 (= e!2241336 e!2241316)))

(declare-fun res!1465341 () Bool)

(assert (=> b!3621080 (=> (not res!1465341) (not e!2241316))))

(declare-fun lt!1251443 () tuple2!38016)

(assert (=> b!3621080 (= res!1465341 (= (_1!22142 lt!1251443) token!511))))

(assert (=> b!3621080 (= lt!1251443 (get!12430 lt!1251418))))

(declare-fun tp!1105986 () Bool)

(declare-fun b!3621081 () Bool)

(assert (=> b!3621081 (= e!2241309 (and tp!1105986 (inv!51528 (tag!6394 (rule!8438 token!511))) (inv!51531 (transformation!5676 (rule!8438 token!511))) e!2241342))))

(declare-fun b!3621082 () Bool)

(assert (=> b!3621082 false))

(declare-fun lt!1251442 () Unit!54869)

(assert (=> b!3621082 (= lt!1251442 call!262004)))

(assert (=> b!3621082 (not call!262005)))

(declare-fun lt!1251407 () Unit!54869)

(assert (=> b!3621082 (= lt!1251407 (lemmaNonSepRuleNotContainsCharContainedInASepRule!382 thiss!23823 rules!3307 rules!3307 (rule!8438 (_1!22142 lt!1251422)) anOtherTypeRule!33 lt!1251419))))

(declare-fun Unit!54880 () Unit!54869)

(assert (=> b!3621082 (= e!2241332 Unit!54880)))

(declare-fun b!3621083 () Bool)

(declare-fun res!1465336 () Bool)

(assert (=> b!3621083 (=> (not res!1465336) (not e!2241307))))

(assert (=> b!3621083 (= res!1465336 (not (= (isSeparator!5676 anOtherTypeRule!33) (isSeparator!5676 rule!403))))))

(declare-fun b!3621084 () Bool)

(assert (=> b!3621084 false))

(declare-fun lt!1251453 () Unit!54869)

(assert (=> b!3621084 (= lt!1251453 call!262002)))

(assert (=> b!3621084 (not call!262006)))

(declare-fun lt!1251466 () Unit!54869)

(assert (=> b!3621084 (= lt!1251466 (lemmaSepRuleNotContainsCharContainedInANonSepRule!264 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8438 (_1!22142 lt!1251422)) lt!1251426))))

(declare-fun e!2241317 () Unit!54869)

(declare-fun Unit!54881 () Unit!54869)

(assert (=> b!3621084 (= e!2241317 Unit!54881)))

(declare-fun b!3621085 () Bool)

(declare-fun Unit!54882 () Unit!54869)

(assert (=> b!3621085 (= e!2241325 Unit!54882)))

(assert (=> b!3621086 (= e!2241311 (and tp!1105976 tp!1105985))))

(declare-fun b!3621087 () Bool)

(declare-fun res!1465347 () Bool)

(assert (=> b!3621087 (=> (not res!1465347) (not e!2241307))))

(declare-fun rulesInvariant!4662 (LexerInterface!5265 List!38263) Bool)

(assert (=> b!3621087 (= res!1465347 (rulesInvariant!4662 thiss!23823 rules!3307))))

(declare-fun b!3621088 () Bool)

(declare-fun Unit!54883 () Unit!54869)

(assert (=> b!3621088 (= e!2241333 Unit!54883)))

(declare-fun b!3621089 () Bool)

(declare-fun Unit!54884 () Unit!54869)

(assert (=> b!3621089 (= e!2241308 Unit!54884)))

(declare-fun b!3621090 () Bool)

(declare-fun Unit!54885 () Unit!54869)

(assert (=> b!3621090 (= e!2241333 Unit!54885)))

(declare-fun lt!1251445 () Unit!54869)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!324 (LexerInterface!5265 List!38263 Rule!11152 List!38262 List!38262 List!38262 Rule!11152) Unit!54869)

(assert (=> b!3621090 (= lt!1251445 (lemmaMaxPrefixOutputsMaxPrefix!324 thiss!23823 rules!3307 (rule!8438 (_1!22142 lt!1251422)) lt!1251452 lt!1251429 lt!1251441 rule!403))))

(assert (=> b!3621090 false))

(declare-fun b!3621091 () Bool)

(declare-fun res!1465337 () Bool)

(assert (=> b!3621091 (=> (not res!1465337) (not e!2241316))))

(assert (=> b!3621091 (= res!1465337 (isEmpty!22538 (_2!22142 lt!1251443)))))

(declare-fun res!1465353 () Bool)

(assert (=> start!337270 (=> (not res!1465353) (not e!2241307))))

(get-info :version)

(assert (=> start!337270 (= res!1465353 ((_ is Lexer!5263) thiss!23823))))

(assert (=> start!337270 e!2241307))

(assert (=> start!337270 e!2241326))

(declare-fun e!2241318 () Bool)

(assert (=> start!337270 e!2241318))

(assert (=> start!337270 true))

(declare-fun inv!51532 (Token!10718) Bool)

(assert (=> start!337270 (and (inv!51532 token!511) e!2241324)))

(assert (=> start!337270 e!2241341))

(assert (=> start!337270 e!2241320))

(declare-fun b!3621092 () Bool)

(declare-fun res!1465350 () Bool)

(assert (=> b!3621092 (=> (not res!1465350) (not e!2241307))))

(assert (=> b!3621092 (= res!1465350 (contains!7416 rules!3307 rule!403))))

(declare-fun b!3621093 () Bool)

(assert (=> b!3621093 (= e!2241335 e!2241317)))

(declare-fun c!626654 () Bool)

(assert (=> b!3621093 (= c!626654 (isSeparator!5676 (rule!8438 (_1!22142 lt!1251422))))))

(declare-fun b!3621094 () Bool)

(assert (=> b!3621094 (= e!2241329 (= (rule!8438 (_1!22142 lt!1251422)) lt!1251435))))

(declare-fun b!3621095 () Bool)

(assert (=> b!3621095 (= e!2241338 e!2241322)))

(declare-fun res!1465338 () Bool)

(assert (=> b!3621095 (=> res!1465338 e!2241322)))

(assert (=> b!3621095 (= res!1465338 (contains!7415 lt!1251468 lt!1251419))))

(assert (=> b!3621095 (= lt!1251419 (head!7646 suffix!1395))))

(assert (=> b!3621095 (= lt!1251468 (usedCharacters!890 (regex!5676 rule!403)))))

(declare-fun b!3621096 () Bool)

(declare-fun Unit!54886 () Unit!54869)

(assert (=> b!3621096 (= e!2241317 Unit!54886)))

(declare-fun bm!262000 () Bool)

(assert (=> bm!262000 (= call!262002 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!660 (regex!5676 (rule!8438 (_1!22142 lt!1251422))) lt!1251452 lt!1251426))))

(declare-fun b!3621097 () Bool)

(declare-fun Unit!54887 () Unit!54869)

(assert (=> b!3621097 (= e!2241339 Unit!54887)))

(declare-fun b!3621098 () Bool)

(declare-fun tp_is_empty!17953 () Bool)

(declare-fun tp!1105984 () Bool)

(assert (=> b!3621098 (= e!2241318 (and tp_is_empty!17953 tp!1105984))))

(declare-fun bm!262001 () Bool)

(assert (=> bm!262001 (= call!262006 (contains!7415 call!262003 lt!1251426))))

(assert (= (and start!337270 res!1465353) b!3621073))

(assert (= (and b!3621073 res!1465349) b!3621087))

(assert (= (and b!3621087 res!1465347) b!3621092))

(assert (= (and b!3621092 res!1465350) b!3621065))

(assert (= (and b!3621065 res!1465348) b!3621083))

(assert (= (and b!3621083 res!1465336) b!3621071))

(assert (= (and b!3621071 res!1465346) b!3621080))

(assert (= (and b!3621080 res!1465341) b!3621091))

(assert (= (and b!3621091 res!1465337) b!3621078))

(assert (= (and b!3621078 res!1465355) b!3621067))

(assert (= (and b!3621067 (not res!1465351)) b!3621076))

(assert (= (and b!3621076 (not res!1465342)) b!3621095))

(assert (= (and b!3621095 (not res!1465338)) b!3621079))

(assert (= (and b!3621079 (not res!1465352)) b!3621060))

(assert (= (and b!3621060 (not res!1465339)) b!3621062))

(assert (= (and b!3621062 res!1465344) b!3621074))

(assert (= (and b!3621074 res!1465335) b!3621094))

(assert (= (and b!3621062 (not res!1465345)) b!3621055))

(assert (= (and b!3621055 (not res!1465340)) b!3621077))

(assert (= (and b!3621077 (not res!1465343)) b!3621064))

(assert (= (and b!3621064 (not res!1465357)) b!3621061))

(assert (= (and b!3621061 c!626658) b!3621051))

(assert (= (and b!3621061 (not c!626658)) b!3621085))

(assert (= (and b!3621061 c!626656) b!3621059))

(assert (= (and b!3621061 (not c!626656)) b!3621093))

(assert (= (and b!3621059 c!626657) b!3621046))

(assert (= (and b!3621059 (not c!626657)) b!3621097))

(assert (= (and b!3621093 c!626654) b!3621084))

(assert (= (and b!3621093 (not c!626654)) b!3621096))

(assert (= (or b!3621046 b!3621084) bm!262000))

(assert (= (or b!3621046 b!3621084) bm!261999))

(assert (= (or b!3621046 b!3621084) bm!262001))

(assert (= (and b!3621061 c!626655) b!3621048))

(assert (= (and b!3621061 (not c!626655)) b!3621089))

(assert (= (and b!3621048 c!626660) b!3621052))

(assert (= (and b!3621048 (not c!626660)) b!3621082))

(assert (= (or b!3621052 b!3621082) bm!261998))

(assert (= (or b!3621052 b!3621082) bm!261996))

(assert (= (or b!3621052 b!3621082) bm!261997))

(assert (= (and b!3621061 c!626659) b!3621090))

(assert (= (and b!3621061 (not c!626659)) b!3621088))

(assert (= (and b!3621061 c!626663) b!3621056))

(assert (= (and b!3621061 (not c!626663)) b!3621057))

(assert (= (and b!3621056 c!626661) b!3621058))

(assert (= (and b!3621056 (not c!626661)) b!3621070))

(assert (= (and b!3621058 res!1465354) b!3621072))

(assert (= (and b!3621056 c!626662) b!3621054))

(assert (= (and b!3621056 (not c!626662)) b!3621050))

(assert (= (and b!3621061 (not res!1465356)) b!3621066))

(assert (= b!3621069 b!3621047))

(assert (= b!3621053 b!3621069))

(assert (= (and start!337270 ((_ is Cons!38139) rules!3307)) b!3621053))

(assert (= (and start!337270 ((_ is Cons!38138) suffix!1395)) b!3621098))

(assert (= b!3621081 b!3621075))

(assert (= b!3621063 b!3621081))

(assert (= start!337270 b!3621063))

(assert (= b!3621045 b!3621086))

(assert (= start!337270 b!3621045))

(assert (= b!3621068 b!3621049))

(assert (= start!337270 b!3621068))

(declare-fun m!4120679 () Bool)

(assert (=> b!3621046 m!4120679))

(declare-fun m!4120681 () Bool)

(assert (=> bm!261998 m!4120681))

(declare-fun m!4120683 () Bool)

(assert (=> b!3621058 m!4120683))

(declare-fun m!4120685 () Bool)

(assert (=> b!3621058 m!4120685))

(declare-fun m!4120687 () Bool)

(assert (=> b!3621058 m!4120687))

(declare-fun m!4120689 () Bool)

(assert (=> b!3621058 m!4120689))

(assert (=> b!3621058 m!4120687))

(declare-fun m!4120691 () Bool)

(assert (=> b!3621058 m!4120691))

(declare-fun m!4120693 () Bool)

(assert (=> bm!261997 m!4120693))

(declare-fun m!4120695 () Bool)

(assert (=> b!3621090 m!4120695))

(declare-fun m!4120697 () Bool)

(assert (=> b!3621080 m!4120697))

(declare-fun m!4120699 () Bool)

(assert (=> b!3621068 m!4120699))

(declare-fun m!4120701 () Bool)

(assert (=> b!3621068 m!4120701))

(declare-fun m!4120703 () Bool)

(assert (=> b!3621045 m!4120703))

(declare-fun m!4120705 () Bool)

(assert (=> b!3621045 m!4120705))

(declare-fun m!4120707 () Bool)

(assert (=> b!3621048 m!4120707))

(declare-fun m!4120709 () Bool)

(assert (=> b!3621048 m!4120709))

(declare-fun m!4120711 () Bool)

(assert (=> b!3621061 m!4120711))

(declare-fun m!4120713 () Bool)

(assert (=> b!3621061 m!4120713))

(declare-fun m!4120715 () Bool)

(assert (=> b!3621061 m!4120715))

(declare-fun m!4120717 () Bool)

(assert (=> b!3621061 m!4120717))

(declare-fun m!4120719 () Bool)

(assert (=> b!3621061 m!4120719))

(declare-fun m!4120721 () Bool)

(assert (=> b!3621061 m!4120721))

(declare-fun m!4120723 () Bool)

(assert (=> b!3621061 m!4120723))

(declare-fun m!4120725 () Bool)

(assert (=> b!3621061 m!4120725))

(assert (=> b!3621061 m!4120719))

(declare-fun m!4120727 () Bool)

(assert (=> b!3621061 m!4120727))

(declare-fun m!4120729 () Bool)

(assert (=> b!3621061 m!4120729))

(declare-fun m!4120731 () Bool)

(assert (=> b!3621061 m!4120731))

(declare-fun m!4120733 () Bool)

(assert (=> b!3621074 m!4120733))

(assert (=> b!3621074 m!4120733))

(declare-fun m!4120735 () Bool)

(assert (=> b!3621074 m!4120735))

(assert (=> b!3621074 m!4120735))

(declare-fun m!4120737 () Bool)

(assert (=> b!3621074 m!4120737))

(declare-fun m!4120739 () Bool)

(assert (=> b!3621074 m!4120739))

(declare-fun m!4120741 () Bool)

(assert (=> b!3621073 m!4120741))

(declare-fun m!4120743 () Bool)

(assert (=> b!3621063 m!4120743))

(declare-fun m!4120745 () Bool)

(assert (=> bm!261999 m!4120745))

(declare-fun m!4120747 () Bool)

(assert (=> b!3621056 m!4120747))

(declare-fun m!4120749 () Bool)

(assert (=> b!3621056 m!4120749))

(declare-fun m!4120751 () Bool)

(assert (=> b!3621056 m!4120751))

(declare-fun m!4120753 () Bool)

(assert (=> b!3621051 m!4120753))

(declare-fun m!4120755 () Bool)

(assert (=> bm!262001 m!4120755))

(declare-fun m!4120757 () Bool)

(assert (=> b!3621081 m!4120757))

(declare-fun m!4120759 () Bool)

(assert (=> b!3621081 m!4120759))

(declare-fun m!4120761 () Bool)

(assert (=> b!3621069 m!4120761))

(declare-fun m!4120763 () Bool)

(assert (=> b!3621069 m!4120763))

(declare-fun m!4120765 () Bool)

(assert (=> b!3621091 m!4120765))

(declare-fun m!4120767 () Bool)

(assert (=> b!3621060 m!4120767))

(declare-fun m!4120769 () Bool)

(assert (=> b!3621064 m!4120769))

(declare-fun m!4120771 () Bool)

(assert (=> b!3621064 m!4120771))

(declare-fun m!4120773 () Bool)

(assert (=> b!3621064 m!4120773))

(declare-fun m!4120775 () Bool)

(assert (=> b!3621064 m!4120775))

(declare-fun m!4120777 () Bool)

(assert (=> b!3621064 m!4120777))

(declare-fun m!4120779 () Bool)

(assert (=> b!3621064 m!4120779))

(assert (=> b!3621064 m!4120769))

(declare-fun m!4120781 () Bool)

(assert (=> b!3621064 m!4120781))

(declare-fun m!4120783 () Bool)

(assert (=> b!3621084 m!4120783))

(declare-fun m!4120785 () Bool)

(assert (=> b!3621052 m!4120785))

(declare-fun m!4120787 () Bool)

(assert (=> b!3621055 m!4120787))

(declare-fun m!4120789 () Bool)

(assert (=> b!3621066 m!4120789))

(declare-fun m!4120791 () Bool)

(assert (=> b!3621066 m!4120791))

(declare-fun m!4120793 () Bool)

(assert (=> b!3621076 m!4120793))

(assert (=> bm!261996 m!4120745))

(assert (=> b!3621062 m!4120733))

(declare-fun m!4120795 () Bool)

(assert (=> b!3621062 m!4120795))

(declare-fun m!4120797 () Bool)

(assert (=> b!3621062 m!4120797))

(declare-fun m!4120799 () Bool)

(assert (=> b!3621062 m!4120799))

(declare-fun m!4120801 () Bool)

(assert (=> b!3621062 m!4120801))

(declare-fun m!4120803 () Bool)

(assert (=> b!3621062 m!4120803))

(declare-fun m!4120805 () Bool)

(assert (=> b!3621062 m!4120805))

(declare-fun m!4120807 () Bool)

(assert (=> b!3621062 m!4120807))

(declare-fun m!4120809 () Bool)

(assert (=> b!3621062 m!4120809))

(declare-fun m!4120811 () Bool)

(assert (=> b!3621062 m!4120811))

(declare-fun m!4120813 () Bool)

(assert (=> b!3621062 m!4120813))

(declare-fun m!4120815 () Bool)

(assert (=> b!3621062 m!4120815))

(declare-fun m!4120817 () Bool)

(assert (=> b!3621062 m!4120817))

(declare-fun m!4120819 () Bool)

(assert (=> b!3621062 m!4120819))

(declare-fun m!4120821 () Bool)

(assert (=> b!3621062 m!4120821))

(declare-fun m!4120823 () Bool)

(assert (=> b!3621079 m!4120823))

(assert (=> b!3621079 m!4120823))

(declare-fun m!4120825 () Bool)

(assert (=> b!3621079 m!4120825))

(declare-fun m!4120827 () Bool)

(assert (=> b!3621054 m!4120827))

(declare-fun m!4120829 () Bool)

(assert (=> b!3621082 m!4120829))

(declare-fun m!4120831 () Bool)

(assert (=> b!3621092 m!4120831))

(declare-fun m!4120833 () Bool)

(assert (=> b!3621065 m!4120833))

(declare-fun m!4120835 () Bool)

(assert (=> bm!262000 m!4120835))

(declare-fun m!4120837 () Bool)

(assert (=> b!3621095 m!4120837))

(declare-fun m!4120839 () Bool)

(assert (=> b!3621095 m!4120839))

(declare-fun m!4120841 () Bool)

(assert (=> b!3621095 m!4120841))

(declare-fun m!4120843 () Bool)

(assert (=> b!3621067 m!4120843))

(declare-fun m!4120845 () Bool)

(assert (=> b!3621067 m!4120845))

(declare-fun m!4120847 () Bool)

(assert (=> b!3621067 m!4120847))

(declare-fun m!4120849 () Bool)

(assert (=> b!3621071 m!4120849))

(declare-fun m!4120851 () Bool)

(assert (=> b!3621071 m!4120851))

(declare-fun m!4120853 () Bool)

(assert (=> b!3621071 m!4120853))

(declare-fun m!4120855 () Bool)

(assert (=> b!3621071 m!4120855))

(declare-fun m!4120857 () Bool)

(assert (=> b!3621077 m!4120857))

(declare-fun m!4120859 () Bool)

(assert (=> b!3621077 m!4120859))

(declare-fun m!4120861 () Bool)

(assert (=> b!3621077 m!4120861))

(declare-fun m!4120863 () Bool)

(assert (=> b!3621077 m!4120863))

(declare-fun m!4120865 () Bool)

(assert (=> b!3621077 m!4120865))

(assert (=> b!3621077 m!4120857))

(declare-fun m!4120867 () Bool)

(assert (=> b!3621077 m!4120867))

(declare-fun m!4120869 () Bool)

(assert (=> b!3621087 m!4120869))

(declare-fun m!4120871 () Bool)

(assert (=> start!337270 m!4120871))

(check-sat (not b_next!95097) b_and!264771 b_and!264763 (not b!3621053) (not bm!262000) (not b!3621064) (not b!3621091) (not b!3621069) (not b!3621084) b_and!264775 (not b!3621048) (not bm!261999) (not bm!261997) (not b!3621045) (not b!3621076) b_and!264773 (not b!3621068) (not b_next!95103) (not b!3621055) (not b!3621087) (not b!3621058) (not bm!261998) (not b_next!95101) b_and!264777 b_and!264769 (not b!3621061) (not start!337270) (not b!3621066) (not b_next!95111) (not b!3621056) (not b!3621062) (not b!3621081) b_and!264767 (not b!3621071) (not b!3621092) (not b_next!95099) (not b!3621080) (not b_next!95109) (not b!3621051) (not b!3621067) (not b!3621065) (not b!3621082) (not b_next!95107) (not bm!261996) (not b!3621046) (not b_next!95105) (not b!3621063) (not b!3621074) (not b!3621077) (not b!3621098) (not b!3621060) tp_is_empty!17953 (not b!3621052) (not b!3621095) (not b!3621090) (not b!3621054) b_and!264765 (not b!3621073) (not bm!262001) (not b!3621079))
(check-sat (not b_next!95097) b_and!264771 b_and!264773 (not b_next!95103) b_and!264763 (not b_next!95111) b_and!264767 (not b_next!95099) (not b_next!95109) (not b_next!95107) (not b_next!95105) b_and!264775 b_and!264765 (not b_next!95101) b_and!264777 b_and!264769)

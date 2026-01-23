; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!514496 () Bool)

(assert start!514496)

(declare-fun b!4907030 () Bool)

(declare-fun b_free!131915 () Bool)

(declare-fun b_next!132705 () Bool)

(assert (=> b!4907030 (= b_free!131915 (not b_next!132705))))

(declare-fun tp!1380230 () Bool)

(declare-fun b_and!346427 () Bool)

(assert (=> b!4907030 (= tp!1380230 b_and!346427)))

(declare-fun b_free!131917 () Bool)

(declare-fun b_next!132707 () Bool)

(assert (=> b!4907030 (= b_free!131917 (not b_next!132707))))

(declare-fun tp!1380228 () Bool)

(declare-fun b_and!346429 () Bool)

(assert (=> b!4907030 (= tp!1380228 b_and!346429)))

(declare-fun b!4907047 () Bool)

(declare-fun e!3067318 () Bool)

(assert (=> b!4907047 (= e!3067318 true)))

(declare-fun b!4907046 () Bool)

(declare-fun e!3067317 () Bool)

(assert (=> b!4907046 (= e!3067317 e!3067318)))

(declare-fun b!4907034 () Bool)

(assert (=> b!4907034 e!3067317))

(assert (= b!4907046 b!4907047))

(assert (= b!4907034 b!4907046))

(declare-fun order!25779 () Int)

(declare-datatypes ((C!26820 0))(
  ( (C!26821 (val!22744 Int)) )
))
(declare-datatypes ((Regex!13311 0))(
  ( (ElementMatch!13311 (c!834097 C!26820)) (Concat!21857 (regOne!27134 Regex!13311) (regTwo!27134 Regex!13311)) (EmptyExpr!13311) (Star!13311 (reg!13640 Regex!13311)) (EmptyLang!13311) (Union!13311 (regOne!27135 Regex!13311) (regTwo!27135 Regex!13311)) )
))
(declare-datatypes ((String!64171 0))(
  ( (String!64172 (value!263832 String)) )
))
(declare-datatypes ((List!56670 0))(
  ( (Nil!56546) (Cons!56546 (h!62994 (_ BitVec 16)) (t!366882 List!56670)) )
))
(declare-datatypes ((TokenValue!8546 0))(
  ( (FloatLiteralValue!17092 (text!60267 List!56670)) (TokenValueExt!8545 (__x!34385 Int)) (Broken!42730 (value!263833 List!56670)) (Object!8669) (End!8546) (Def!8546) (Underscore!8546) (Match!8546) (Else!8546) (Error!8546) (Case!8546) (If!8546) (Extends!8546) (Abstract!8546) (Class!8546) (Val!8546) (DelimiterValue!17092 (del!8606 List!56670)) (KeywordValue!8552 (value!263834 List!56670)) (CommentValue!17092 (value!263835 List!56670)) (WhitespaceValue!17092 (value!263836 List!56670)) (IndentationValue!8546 (value!263837 List!56670)) (String!64173) (Int32!8546) (Broken!42731 (value!263838 List!56670)) (Boolean!8547) (Unit!146734) (OperatorValue!8549 (op!8606 List!56670)) (IdentifierValue!17092 (value!263839 List!56670)) (IdentifierValue!17093 (value!263840 List!56670)) (WhitespaceValue!17093 (value!263841 List!56670)) (True!17092) (False!17092) (Broken!42732 (value!263842 List!56670)) (Broken!42733 (value!263843 List!56670)) (True!17093) (RightBrace!8546) (RightBracket!8546) (Colon!8546) (Null!8546) (Comma!8546) (LeftBracket!8546) (False!17093) (LeftBrace!8546) (ImaginaryLiteralValue!8546 (text!60268 List!56670)) (StringLiteralValue!25638 (value!263844 List!56670)) (EOFValue!8546 (value!263845 List!56670)) (IdentValue!8546 (value!263846 List!56670)) (DelimiterValue!17093 (value!263847 List!56670)) (DedentValue!8546 (value!263848 List!56670)) (NewLineValue!8546 (value!263849 List!56670)) (IntegerValue!25638 (value!263850 (_ BitVec 32)) (text!60269 List!56670)) (IntegerValue!25639 (value!263851 Int) (text!60270 List!56670)) (Times!8546) (Or!8546) (Equal!8546) (Minus!8546) (Broken!42734 (value!263852 List!56670)) (And!8546) (Div!8546) (LessEqual!8546) (Mod!8546) (Concat!21858) (Not!8546) (Plus!8546) (SpaceValue!8546 (value!263853 List!56670)) (IntegerValue!25640 (value!263854 Int) (text!60271 List!56670)) (StringLiteralValue!25639 (text!60272 List!56670)) (FloatLiteralValue!17093 (text!60273 List!56670)) (BytesLiteralValue!8546 (value!263855 List!56670)) (CommentValue!17093 (value!263856 List!56670)) (StringLiteralValue!25640 (value!263857 List!56670)) (ErrorTokenValue!8546 (msg!8607 List!56670)) )
))
(declare-datatypes ((List!56671 0))(
  ( (Nil!56547) (Cons!56547 (h!62995 C!26820) (t!366883 List!56671)) )
))
(declare-datatypes ((IArray!29669 0))(
  ( (IArray!29670 (innerList!14892 List!56671)) )
))
(declare-datatypes ((Conc!14804 0))(
  ( (Node!14804 (left!41172 Conc!14804) (right!41502 Conc!14804) (csize!29838 Int) (cheight!15015 Int)) (Leaf!24639 (xs!18120 IArray!29669) (csize!29839 Int)) (Empty!14804) )
))
(declare-datatypes ((BalanceConc!29038 0))(
  ( (BalanceConc!29039 (c!834098 Conc!14804)) )
))
(declare-datatypes ((TokenValueInjection!16400 0))(
  ( (TokenValueInjection!16401 (toValue!11163 Int) (toChars!11022 Int)) )
))
(declare-datatypes ((Rule!16272 0))(
  ( (Rule!16273 (regex!8236 Regex!13311) (tag!9100 String!64171) (isSeparator!8236 Bool) (transformation!8236 TokenValueInjection!16400)) )
))
(declare-fun rule!164 () Rule!16272)

(declare-fun lambda!244530 () Int)

(declare-fun order!25777 () Int)

(declare-fun dynLambda!22839 (Int Int) Int)

(declare-fun dynLambda!22840 (Int Int) Int)

(assert (=> b!4907047 (< (dynLambda!22839 order!25777 (toValue!11163 (transformation!8236 rule!164))) (dynLambda!22840 order!25779 lambda!244530))))

(declare-fun order!25781 () Int)

(declare-fun dynLambda!22841 (Int Int) Int)

(assert (=> b!4907047 (< (dynLambda!22841 order!25781 (toChars!11022 (transformation!8236 rule!164))) (dynLambda!22840 order!25779 lambda!244530))))

(declare-fun b!4907028 () Bool)

(declare-fun e!3067312 () Bool)

(declare-fun e!3067307 () Bool)

(assert (=> b!4907028 (= e!3067312 e!3067307)))

(declare-fun res!2096057 () Bool)

(assert (=> b!4907028 (=> (not res!2096057) (not e!3067307))))

(declare-datatypes ((tuple2!60820 0))(
  ( (tuple2!60821 (_1!33713 BalanceConc!29038) (_2!33713 BalanceConc!29038)) )
))
(declare-fun lt!2013201 () tuple2!60820)

(declare-fun isEmpty!30429 (BalanceConc!29038) Bool)

(assert (=> b!4907028 (= res!2096057 (not (isEmpty!30429 (_1!33713 lt!2013201))))))

(declare-fun input!1509 () BalanceConc!29038)

(declare-fun findLongestMatchWithZipperSequence!324 (Regex!13311 BalanceConc!29038) tuple2!60820)

(assert (=> b!4907028 (= lt!2013201 (findLongestMatchWithZipperSequence!324 (regex!8236 rule!164) input!1509))))

(declare-fun b!4907029 () Bool)

(declare-fun e!3067304 () Bool)

(declare-datatypes ((tuple2!60822 0))(
  ( (tuple2!60823 (_1!33714 List!56671) (_2!33714 List!56671)) )
))
(declare-fun lt!2013206 () tuple2!60822)

(declare-fun matchR!6578 (Regex!13311 List!56671) Bool)

(assert (=> b!4907029 (= e!3067304 (matchR!6578 (regex!8236 rule!164) (_1!33714 lt!2013206)))))

(declare-fun e!3067309 () Bool)

(assert (=> b!4907030 (= e!3067309 (and tp!1380230 tp!1380228))))

(declare-fun b!4907031 () Bool)

(declare-fun e!3067308 () Bool)

(declare-fun tp!1380229 () Bool)

(declare-fun inv!73023 (Conc!14804) Bool)

(assert (=> b!4907031 (= e!3067308 (and (inv!73023 (c!834098 input!1509)) tp!1380229))))

(declare-fun res!2096060 () Bool)

(assert (=> start!514496 (=> (not res!2096060) (not e!3067312))))

(declare-datatypes ((LexerInterface!7828 0))(
  ( (LexerInterfaceExt!7825 (__x!34386 Int)) (Lexer!7826) )
))
(declare-fun thiss!15943 () LexerInterface!7828)

(get-info :version)

(assert (=> start!514496 (= res!2096060 ((_ is Lexer!7826) thiss!15943))))

(assert (=> start!514496 e!3067312))

(assert (=> start!514496 true))

(declare-fun e!3067305 () Bool)

(assert (=> start!514496 e!3067305))

(declare-fun inv!73024 (BalanceConc!29038) Bool)

(assert (=> start!514496 (and (inv!73024 input!1509) e!3067308)))

(declare-fun e!3067310 () Bool)

(declare-fun b!4907032 () Bool)

(declare-fun lt!2013197 () TokenValue!8546)

(declare-fun lt!2013198 () BalanceConc!29038)

(declare-fun apply!13580 (TokenValueInjection!16400 BalanceConc!29038) TokenValue!8546)

(assert (=> b!4907032 (= e!3067310 (= (apply!13580 (transformation!8236 rule!164) lt!2013198) lt!2013197))))

(declare-datatypes ((Unit!146735 0))(
  ( (Unit!146736) )
))
(declare-fun lt!2013202 () Unit!146735)

(declare-fun lemmaEqSameImage!1118 (TokenValueInjection!16400 BalanceConc!29038 BalanceConc!29038) Unit!146735)

(assert (=> b!4907032 (= lt!2013202 (lemmaEqSameImage!1118 (transformation!8236 rule!164) (_1!33713 lt!2013201) lt!2013198))))

(declare-fun b!4907033 () Bool)

(declare-fun res!2096054 () Bool)

(assert (=> b!4907033 (=> res!2096054 e!3067310)))

(declare-fun lt!2013203 () List!56671)

(declare-fun list!17822 (BalanceConc!29038) List!56671)

(assert (=> b!4907033 (= res!2096054 (not (= (list!17822 lt!2013198) lt!2013203)))))

(declare-fun res!2096058 () Bool)

(declare-fun e!3067306 () Bool)

(assert (=> b!4907034 (=> res!2096058 e!3067306)))

(declare-fun Forall!1733 (Int) Bool)

(assert (=> b!4907034 (= res!2096058 (not (Forall!1733 lambda!244530)))))

(declare-fun b!4907035 () Bool)

(assert (=> b!4907035 (= e!3067306 e!3067310)))

(declare-fun res!2096053 () Bool)

(assert (=> b!4907035 (=> res!2096053 e!3067310)))

(declare-fun lt!2013205 () List!56671)

(declare-fun lt!2013207 () Bool)

(declare-datatypes ((Token!15000 0))(
  ( (Token!15001 (value!263858 TokenValue!8546) (rule!11438 Rule!16272) (size!37286 Int) (originalCharacters!8531 List!56671)) )
))
(declare-datatypes ((tuple2!60824 0))(
  ( (tuple2!60825 (_1!33715 Token!15000) (_2!33715 List!56671)) )
))
(declare-datatypes ((Option!14109 0))(
  ( (None!14108) (Some!14108 (v!50070 tuple2!60824)) )
))
(declare-fun isDefined!11118 (Option!14109) Bool)

(declare-fun maxPrefixOneRule!3573 (LexerInterface!7828 Rule!16272 List!56671) Option!14109)

(assert (=> b!4907035 (= res!2096053 (not (= lt!2013207 (isDefined!11118 (maxPrefixOneRule!3573 thiss!15943 rule!164 lt!2013205)))))))

(declare-datatypes ((tuple2!60826 0))(
  ( (tuple2!60827 (_1!33716 Token!15000) (_2!33716 BalanceConc!29038)) )
))
(declare-datatypes ((Option!14110 0))(
  ( (None!14109) (Some!14109 (v!50071 tuple2!60826)) )
))
(declare-fun isDefined!11119 (Option!14110) Bool)

(declare-fun size!37287 (BalanceConc!29038) Int)

(assert (=> b!4907035 (= lt!2013207 (isDefined!11119 (Some!14109 (tuple2!60827 (Token!15001 lt!2013197 rule!164 (size!37287 (_1!33713 lt!2013201)) lt!2013203) (_2!33713 lt!2013201)))))))

(assert (=> b!4907035 (= lt!2013197 (apply!13580 (transformation!8236 rule!164) (_1!33713 lt!2013201)))))

(declare-fun lt!2013199 () Unit!146735)

(declare-fun ForallOf!1173 (Int BalanceConc!29038) Unit!146735)

(assert (=> b!4907035 (= lt!2013199 (ForallOf!1173 lambda!244530 lt!2013198))))

(declare-fun seqFromList!5978 (List!56671) BalanceConc!29038)

(assert (=> b!4907035 (= lt!2013198 (seqFromList!5978 lt!2013203))))

(assert (=> b!4907035 (= lt!2013203 (list!17822 (_1!33713 lt!2013201)))))

(declare-fun lt!2013196 () Unit!146735)

(assert (=> b!4907035 (= lt!2013196 (ForallOf!1173 lambda!244530 (_1!33713 lt!2013201)))))

(declare-fun b!4907036 () Bool)

(declare-fun res!2096059 () Bool)

(assert (=> b!4907036 (=> res!2096059 e!3067310)))

(assert (=> b!4907036 (= res!2096059 (not lt!2013207))))

(declare-fun b!4907037 () Bool)

(assert (=> b!4907037 (= e!3067307 (not e!3067306))))

(declare-fun res!2096056 () Bool)

(assert (=> b!4907037 (=> res!2096056 e!3067306)))

(declare-fun semiInverseModEq!3637 (Int Int) Bool)

(assert (=> b!4907037 (= res!2096056 (not (semiInverseModEq!3637 (toChars!11022 (transformation!8236 rule!164)) (toValue!11163 (transformation!8236 rule!164)))))))

(declare-fun lt!2013204 () Unit!146735)

(declare-fun lemmaInv!1282 (TokenValueInjection!16400) Unit!146735)

(assert (=> b!4907037 (= lt!2013204 (lemmaInv!1282 (transformation!8236 rule!164)))))

(assert (=> b!4907037 e!3067304))

(declare-fun res!2096052 () Bool)

(assert (=> b!4907037 (=> res!2096052 e!3067304)))

(declare-fun isEmpty!30430 (List!56671) Bool)

(assert (=> b!4907037 (= res!2096052 (isEmpty!30430 (_1!33714 lt!2013206)))))

(declare-fun findLongestMatchInner!1799 (Regex!13311 List!56671 Int List!56671 List!56671 Int) tuple2!60822)

(declare-fun size!37288 (List!56671) Int)

(assert (=> b!4907037 (= lt!2013206 (findLongestMatchInner!1799 (regex!8236 rule!164) Nil!56547 (size!37288 Nil!56547) lt!2013205 lt!2013205 (size!37288 lt!2013205)))))

(declare-fun lt!2013200 () Unit!146735)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1762 (Regex!13311 List!56671) Unit!146735)

(assert (=> b!4907037 (= lt!2013200 (longestMatchIsAcceptedByMatchOrIsEmpty!1762 (regex!8236 rule!164) lt!2013205))))

(assert (=> b!4907037 (= lt!2013205 (list!17822 input!1509))))

(declare-fun b!4907038 () Bool)

(declare-fun res!2096055 () Bool)

(assert (=> b!4907038 (=> (not res!2096055) (not e!3067312))))

(declare-fun ruleValid!3733 (LexerInterface!7828 Rule!16272) Bool)

(assert (=> b!4907038 (= res!2096055 (ruleValid!3733 thiss!15943 rule!164))))

(declare-fun tp!1380231 () Bool)

(declare-fun b!4907039 () Bool)

(declare-fun inv!73019 (String!64171) Bool)

(declare-fun inv!73025 (TokenValueInjection!16400) Bool)

(assert (=> b!4907039 (= e!3067305 (and tp!1380231 (inv!73019 (tag!9100 rule!164)) (inv!73025 (transformation!8236 rule!164)) e!3067309))))

(assert (= (and start!514496 res!2096060) b!4907038))

(assert (= (and b!4907038 res!2096055) b!4907028))

(assert (= (and b!4907028 res!2096057) b!4907037))

(assert (= (and b!4907037 (not res!2096052)) b!4907029))

(assert (= (and b!4907037 (not res!2096056)) b!4907034))

(assert (= (and b!4907034 (not res!2096058)) b!4907035))

(assert (= (and b!4907035 (not res!2096053)) b!4907036))

(assert (= (and b!4907036 (not res!2096059)) b!4907033))

(assert (= (and b!4907033 (not res!2096054)) b!4907032))

(assert (= b!4907039 b!4907030))

(assert (= start!514496 b!4907039))

(assert (= start!514496 b!4907031))

(declare-fun m!5916664 () Bool)

(assert (=> b!4907028 m!5916664))

(declare-fun m!5916666 () Bool)

(assert (=> b!4907028 m!5916666))

(declare-fun m!5916668 () Bool)

(assert (=> start!514496 m!5916668))

(declare-fun m!5916670 () Bool)

(assert (=> b!4907037 m!5916670))

(declare-fun m!5916672 () Bool)

(assert (=> b!4907037 m!5916672))

(declare-fun m!5916674 () Bool)

(assert (=> b!4907037 m!5916674))

(declare-fun m!5916676 () Bool)

(assert (=> b!4907037 m!5916676))

(declare-fun m!5916678 () Bool)

(assert (=> b!4907037 m!5916678))

(assert (=> b!4907037 m!5916670))

(assert (=> b!4907037 m!5916672))

(declare-fun m!5916680 () Bool)

(assert (=> b!4907037 m!5916680))

(declare-fun m!5916682 () Bool)

(assert (=> b!4907037 m!5916682))

(declare-fun m!5916684 () Bool)

(assert (=> b!4907037 m!5916684))

(declare-fun m!5916686 () Bool)

(assert (=> b!4907033 m!5916686))

(declare-fun m!5916688 () Bool)

(assert (=> b!4907035 m!5916688))

(declare-fun m!5916690 () Bool)

(assert (=> b!4907035 m!5916690))

(declare-fun m!5916692 () Bool)

(assert (=> b!4907035 m!5916692))

(declare-fun m!5916694 () Bool)

(assert (=> b!4907035 m!5916694))

(declare-fun m!5916696 () Bool)

(assert (=> b!4907035 m!5916696))

(declare-fun m!5916698 () Bool)

(assert (=> b!4907035 m!5916698))

(declare-fun m!5916700 () Bool)

(assert (=> b!4907035 m!5916700))

(declare-fun m!5916702 () Bool)

(assert (=> b!4907035 m!5916702))

(assert (=> b!4907035 m!5916688))

(declare-fun m!5916704 () Bool)

(assert (=> b!4907035 m!5916704))

(declare-fun m!5916706 () Bool)

(assert (=> b!4907038 m!5916706))

(declare-fun m!5916708 () Bool)

(assert (=> b!4907031 m!5916708))

(declare-fun m!5916710 () Bool)

(assert (=> b!4907039 m!5916710))

(declare-fun m!5916712 () Bool)

(assert (=> b!4907039 m!5916712))

(declare-fun m!5916714 () Bool)

(assert (=> b!4907034 m!5916714))

(declare-fun m!5916716 () Bool)

(assert (=> b!4907032 m!5916716))

(declare-fun m!5916718 () Bool)

(assert (=> b!4907032 m!5916718))

(declare-fun m!5916720 () Bool)

(assert (=> b!4907029 m!5916720))

(check-sat b_and!346429 (not b!4907035) (not b!4907039) (not b!4907038) b_and!346427 (not b!4907034) (not b!4907033) (not start!514496) (not b_next!132705) (not b!4907029) (not b!4907031) (not b!4907028) (not b!4907032) (not b!4907037) (not b_next!132707))
(check-sat b_and!346429 b_and!346427 (not b_next!132707) (not b_next!132705))
(get-model)

(declare-fun d!1577113 () Bool)

(declare-fun lt!2013213 () Int)

(assert (=> d!1577113 (>= lt!2013213 0)))

(declare-fun e!3067327 () Int)

(assert (=> d!1577113 (= lt!2013213 e!3067327)))

(declare-fun c!834104 () Bool)

(assert (=> d!1577113 (= c!834104 ((_ is Nil!56547) lt!2013205))))

(assert (=> d!1577113 (= (size!37288 lt!2013205) lt!2013213)))

(declare-fun b!4907061 () Bool)

(assert (=> b!4907061 (= e!3067327 0)))

(declare-fun b!4907062 () Bool)

(assert (=> b!4907062 (= e!3067327 (+ 1 (size!37288 (t!366883 lt!2013205))))))

(assert (= (and d!1577113 c!834104) b!4907061))

(assert (= (and d!1577113 (not c!834104)) b!4907062))

(declare-fun m!5916730 () Bool)

(assert (=> b!4907062 m!5916730))

(assert (=> b!4907037 d!1577113))

(declare-fun d!1577115 () Bool)

(declare-fun list!17824 (Conc!14804) List!56671)

(assert (=> d!1577115 (= (list!17822 input!1509) (list!17824 (c!834098 input!1509)))))

(declare-fun bs!1177174 () Bool)

(assert (= bs!1177174 d!1577115))

(declare-fun m!5916732 () Bool)

(assert (=> bs!1177174 m!5916732))

(assert (=> b!4907037 d!1577115))

(declare-fun d!1577117 () Bool)

(declare-fun e!3067354 () Bool)

(assert (=> d!1577117 e!3067354))

(declare-fun res!2096100 () Bool)

(assert (=> d!1577117 (=> res!2096100 e!3067354)))

(assert (=> d!1577117 (= res!2096100 (isEmpty!30430 (_1!33714 (findLongestMatchInner!1799 (regex!8236 rule!164) Nil!56547 (size!37288 Nil!56547) lt!2013205 lt!2013205 (size!37288 lt!2013205)))))))

(declare-fun lt!2013224 () Unit!146735)

(declare-fun choose!35871 (Regex!13311 List!56671) Unit!146735)

(assert (=> d!1577117 (= lt!2013224 (choose!35871 (regex!8236 rule!164) lt!2013205))))

(declare-fun validRegex!5904 (Regex!13311) Bool)

(assert (=> d!1577117 (validRegex!5904 (regex!8236 rule!164))))

(assert (=> d!1577117 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1762 (regex!8236 rule!164) lt!2013205) lt!2013224)))

(declare-fun b!4907113 () Bool)

(assert (=> b!4907113 (= e!3067354 (matchR!6578 (regex!8236 rule!164) (_1!33714 (findLongestMatchInner!1799 (regex!8236 rule!164) Nil!56547 (size!37288 Nil!56547) lt!2013205 lt!2013205 (size!37288 lt!2013205)))))))

(assert (= (and d!1577117 (not res!2096100)) b!4907113))

(assert (=> d!1577117 m!5916670))

(assert (=> d!1577117 m!5916672))

(declare-fun m!5916768 () Bool)

(assert (=> d!1577117 m!5916768))

(assert (=> d!1577117 m!5916670))

(assert (=> d!1577117 m!5916672))

(assert (=> d!1577117 m!5916680))

(declare-fun m!5916770 () Bool)

(assert (=> d!1577117 m!5916770))

(declare-fun m!5916772 () Bool)

(assert (=> d!1577117 m!5916772))

(assert (=> b!4907113 m!5916670))

(assert (=> b!4907113 m!5916672))

(assert (=> b!4907113 m!5916670))

(assert (=> b!4907113 m!5916672))

(assert (=> b!4907113 m!5916680))

(declare-fun m!5916774 () Bool)

(assert (=> b!4907113 m!5916774))

(assert (=> b!4907037 d!1577117))

(declare-fun bm!340601 () Bool)

(declare-fun call!340612 () Unit!146735)

(declare-fun lemmaIsPrefixRefl!3314 (List!56671 List!56671) Unit!146735)

(assert (=> bm!340601 (= call!340612 (lemmaIsPrefixRefl!3314 lt!2013205 lt!2013205))))

(declare-fun b!4907232 () Bool)

(declare-fun e!3067428 () tuple2!60822)

(declare-fun e!3067425 () tuple2!60822)

(assert (=> b!4907232 (= e!3067428 e!3067425)))

(declare-fun lt!2013395 () tuple2!60822)

(declare-fun call!340606 () tuple2!60822)

(assert (=> b!4907232 (= lt!2013395 call!340606)))

(declare-fun c!834152 () Bool)

(assert (=> b!4907232 (= c!834152 (isEmpty!30430 (_1!33714 lt!2013395)))))

(declare-fun bm!340602 () Bool)

(declare-fun call!340608 () List!56671)

(declare-fun tail!9625 (List!56671) List!56671)

(assert (=> bm!340602 (= call!340608 (tail!9625 lt!2013205))))

(declare-fun bm!340603 () Bool)

(declare-fun call!340613 () Unit!146735)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1077 (List!56671 List!56671 List!56671) Unit!146735)

(assert (=> bm!340603 (= call!340613 (lemmaIsPrefixSameLengthThenSameList!1077 lt!2013205 Nil!56547 lt!2013205))))

(declare-fun b!4907233 () Bool)

(assert (=> b!4907233 (= e!3067428 call!340606)))

(declare-fun b!4907235 () Bool)

(declare-fun e!3067429 () Bool)

(declare-fun lt!2013407 () tuple2!60822)

(assert (=> b!4907235 (= e!3067429 (>= (size!37288 (_1!33714 lt!2013407)) (size!37288 Nil!56547)))))

(declare-fun b!4907236 () Bool)

(declare-fun e!3067426 () Unit!146735)

(declare-fun Unit!146740 () Unit!146735)

(assert (=> b!4907236 (= e!3067426 Unit!146740)))

(declare-fun lt!2013419 () Unit!146735)

(assert (=> b!4907236 (= lt!2013419 call!340612)))

(declare-fun call!340609 () Bool)

(assert (=> b!4907236 call!340609))

(declare-fun lt!2013413 () Unit!146735)

(assert (=> b!4907236 (= lt!2013413 lt!2013419)))

(declare-fun lt!2013418 () Unit!146735)

(assert (=> b!4907236 (= lt!2013418 call!340613)))

(assert (=> b!4907236 (= lt!2013205 Nil!56547)))

(declare-fun lt!2013400 () Unit!146735)

(assert (=> b!4907236 (= lt!2013400 lt!2013418)))

(assert (=> b!4907236 false))

(declare-fun b!4907237 () Bool)

(declare-fun e!3067427 () tuple2!60822)

(assert (=> b!4907237 (= e!3067427 (tuple2!60823 Nil!56547 lt!2013205))))

(declare-fun bm!340604 () Bool)

(declare-fun call!340610 () C!26820)

(declare-fun head!10478 (List!56671) C!26820)

(assert (=> bm!340604 (= call!340610 (head!10478 lt!2013205))))

(declare-fun b!4907238 () Bool)

(declare-fun e!3067430 () Bool)

(assert (=> b!4907238 (= e!3067430 e!3067429)))

(declare-fun res!2096141 () Bool)

(assert (=> b!4907238 (=> res!2096141 e!3067429)))

(assert (=> b!4907238 (= res!2096141 (isEmpty!30430 (_1!33714 lt!2013407)))))

(declare-fun b!4907239 () Bool)

(declare-fun c!834150 () Bool)

(declare-fun call!340611 () Bool)

(assert (=> b!4907239 (= c!834150 call!340611)))

(declare-fun lt!2013420 () Unit!146735)

(declare-fun lt!2013402 () Unit!146735)

(assert (=> b!4907239 (= lt!2013420 lt!2013402)))

(assert (=> b!4907239 (= lt!2013205 Nil!56547)))

(assert (=> b!4907239 (= lt!2013402 call!340613)))

(declare-fun lt!2013399 () Unit!146735)

(declare-fun lt!2013403 () Unit!146735)

(assert (=> b!4907239 (= lt!2013399 lt!2013403)))

(assert (=> b!4907239 call!340609))

(assert (=> b!4907239 (= lt!2013403 call!340612)))

(declare-fun e!3067432 () tuple2!60822)

(assert (=> b!4907239 (= e!3067432 e!3067427)))

(declare-fun d!1577135 () Bool)

(assert (=> d!1577135 e!3067430))

(declare-fun res!2096140 () Bool)

(assert (=> d!1577135 (=> (not res!2096140) (not e!3067430))))

(declare-fun ++!12265 (List!56671 List!56671) List!56671)

(assert (=> d!1577135 (= res!2096140 (= (++!12265 (_1!33714 lt!2013407) (_2!33714 lt!2013407)) lt!2013205))))

(declare-fun e!3067431 () tuple2!60822)

(assert (=> d!1577135 (= lt!2013407 e!3067431)))

(declare-fun c!834151 () Bool)

(declare-fun lostCause!1105 (Regex!13311) Bool)

(assert (=> d!1577135 (= c!834151 (lostCause!1105 (regex!8236 rule!164)))))

(declare-fun lt!2013396 () Unit!146735)

(declare-fun Unit!146741 () Unit!146735)

(assert (=> d!1577135 (= lt!2013396 Unit!146741)))

(declare-fun getSuffix!2906 (List!56671 List!56671) List!56671)

(assert (=> d!1577135 (= (getSuffix!2906 lt!2013205 Nil!56547) lt!2013205)))

(declare-fun lt!2013411 () Unit!146735)

(declare-fun lt!2013404 () Unit!146735)

(assert (=> d!1577135 (= lt!2013411 lt!2013404)))

(declare-fun lt!2013417 () List!56671)

(assert (=> d!1577135 (= lt!2013205 lt!2013417)))

(declare-fun lemmaSamePrefixThenSameSuffix!2322 (List!56671 List!56671 List!56671 List!56671 List!56671) Unit!146735)

(assert (=> d!1577135 (= lt!2013404 (lemmaSamePrefixThenSameSuffix!2322 Nil!56547 lt!2013205 Nil!56547 lt!2013417 lt!2013205))))

(assert (=> d!1577135 (= lt!2013417 (getSuffix!2906 lt!2013205 Nil!56547))))

(declare-fun lt!2013415 () Unit!146735)

(declare-fun lt!2013409 () Unit!146735)

(assert (=> d!1577135 (= lt!2013415 lt!2013409)))

(declare-fun isPrefix!4918 (List!56671 List!56671) Bool)

(assert (=> d!1577135 (isPrefix!4918 Nil!56547 (++!12265 Nil!56547 lt!2013205))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3142 (List!56671 List!56671) Unit!146735)

(assert (=> d!1577135 (= lt!2013409 (lemmaConcatTwoListThenFirstIsPrefix!3142 Nil!56547 lt!2013205))))

(assert (=> d!1577135 (validRegex!5904 (regex!8236 rule!164))))

(assert (=> d!1577135 (= (findLongestMatchInner!1799 (regex!8236 rule!164) Nil!56547 (size!37288 Nil!56547) lt!2013205 lt!2013205 (size!37288 lt!2013205)) lt!2013407)))

(declare-fun b!4907234 () Bool)

(declare-fun Unit!146742 () Unit!146735)

(assert (=> b!4907234 (= e!3067426 Unit!146742)))

(declare-fun bm!340605 () Bool)

(declare-fun call!340607 () Regex!13311)

(declare-fun derivativeStep!3897 (Regex!13311 C!26820) Regex!13311)

(assert (=> bm!340605 (= call!340607 (derivativeStep!3897 (regex!8236 rule!164) call!340610))))

(declare-fun b!4907240 () Bool)

(assert (=> b!4907240 (= e!3067431 e!3067432)))

(declare-fun c!834155 () Bool)

(assert (=> b!4907240 (= c!834155 (= (size!37288 Nil!56547) (size!37288 lt!2013205)))))

(declare-fun bm!340606 () Bool)

(declare-fun nullable!4577 (Regex!13311) Bool)

(assert (=> bm!340606 (= call!340611 (nullable!4577 (regex!8236 rule!164)))))

(declare-fun lt!2013408 () List!56671)

(declare-fun bm!340607 () Bool)

(assert (=> bm!340607 (= call!340606 (findLongestMatchInner!1799 call!340607 lt!2013408 (+ (size!37288 Nil!56547) 1) call!340608 lt!2013205 (size!37288 lt!2013205)))))

(declare-fun b!4907241 () Bool)

(assert (=> b!4907241 (= e!3067425 lt!2013395)))

(declare-fun b!4907242 () Bool)

(assert (=> b!4907242 (= e!3067425 (tuple2!60823 Nil!56547 lt!2013205))))

(declare-fun b!4907243 () Bool)

(assert (=> b!4907243 (= e!3067427 (tuple2!60823 Nil!56547 Nil!56547))))

(declare-fun b!4907244 () Bool)

(declare-fun c!834154 () Bool)

(assert (=> b!4907244 (= c!834154 call!340611)))

(declare-fun lt!2013410 () Unit!146735)

(declare-fun lt!2013406 () Unit!146735)

(assert (=> b!4907244 (= lt!2013410 lt!2013406)))

(declare-fun lt!2013401 () C!26820)

(declare-fun lt!2013412 () List!56671)

(assert (=> b!4907244 (= (++!12265 (++!12265 Nil!56547 (Cons!56547 lt!2013401 Nil!56547)) lt!2013412) lt!2013205)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1349 (List!56671 C!26820 List!56671 List!56671) Unit!146735)

(assert (=> b!4907244 (= lt!2013406 (lemmaMoveElementToOtherListKeepsConcatEq!1349 Nil!56547 lt!2013401 lt!2013412 lt!2013205))))

(assert (=> b!4907244 (= lt!2013412 (tail!9625 lt!2013205))))

(assert (=> b!4907244 (= lt!2013401 (head!10478 lt!2013205))))

(declare-fun lt!2013397 () Unit!146735)

(declare-fun lt!2013421 () Unit!146735)

(assert (=> b!4907244 (= lt!2013397 lt!2013421)))

(assert (=> b!4907244 (isPrefix!4918 (++!12265 Nil!56547 (Cons!56547 (head!10478 (getSuffix!2906 lt!2013205 Nil!56547)) Nil!56547)) lt!2013205)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!731 (List!56671 List!56671) Unit!146735)

(assert (=> b!4907244 (= lt!2013421 (lemmaAddHeadSuffixToPrefixStillPrefix!731 Nil!56547 lt!2013205))))

(declare-fun lt!2013394 () Unit!146735)

(declare-fun lt!2013398 () Unit!146735)

(assert (=> b!4907244 (= lt!2013394 lt!2013398)))

(assert (=> b!4907244 (= lt!2013398 (lemmaAddHeadSuffixToPrefixStillPrefix!731 Nil!56547 lt!2013205))))

(assert (=> b!4907244 (= lt!2013408 (++!12265 Nil!56547 (Cons!56547 (head!10478 lt!2013205) Nil!56547)))))

(declare-fun lt!2013414 () Unit!146735)

(assert (=> b!4907244 (= lt!2013414 e!3067426)))

(declare-fun c!834153 () Bool)

(assert (=> b!4907244 (= c!834153 (= (size!37288 Nil!56547) (size!37288 lt!2013205)))))

(declare-fun lt!2013416 () Unit!146735)

(declare-fun lt!2013405 () Unit!146735)

(assert (=> b!4907244 (= lt!2013416 lt!2013405)))

(assert (=> b!4907244 (<= (size!37288 Nil!56547) (size!37288 lt!2013205))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!643 (List!56671 List!56671) Unit!146735)

(assert (=> b!4907244 (= lt!2013405 (lemmaIsPrefixThenSmallerEqSize!643 Nil!56547 lt!2013205))))

(assert (=> b!4907244 (= e!3067432 e!3067428)))

(declare-fun b!4907245 () Bool)

(assert (=> b!4907245 (= e!3067431 (tuple2!60823 Nil!56547 lt!2013205))))

(declare-fun bm!340608 () Bool)

(assert (=> bm!340608 (= call!340609 (isPrefix!4918 lt!2013205 lt!2013205))))

(assert (= (and d!1577135 c!834151) b!4907245))

(assert (= (and d!1577135 (not c!834151)) b!4907240))

(assert (= (and b!4907240 c!834155) b!4907239))

(assert (= (and b!4907240 (not c!834155)) b!4907244))

(assert (= (and b!4907239 c!834150) b!4907243))

(assert (= (and b!4907239 (not c!834150)) b!4907237))

(assert (= (and b!4907244 c!834153) b!4907236))

(assert (= (and b!4907244 (not c!834153)) b!4907234))

(assert (= (and b!4907244 c!834154) b!4907232))

(assert (= (and b!4907244 (not c!834154)) b!4907233))

(assert (= (and b!4907232 c!834152) b!4907242))

(assert (= (and b!4907232 (not c!834152)) b!4907241))

(assert (= (or b!4907232 b!4907233) bm!340604))

(assert (= (or b!4907232 b!4907233) bm!340602))

(assert (= (or b!4907232 b!4907233) bm!340605))

(assert (= (or b!4907232 b!4907233) bm!340607))

(assert (= (or b!4907239 b!4907236) bm!340608))

(assert (= (or b!4907239 b!4907236) bm!340601))

(assert (= (or b!4907239 b!4907236) bm!340603))

(assert (= (or b!4907239 b!4907244) bm!340606))

(assert (= (and d!1577135 res!2096140) b!4907238))

(assert (= (and b!4907238 (not res!2096141)) b!4907235))

(declare-fun m!5916896 () Bool)

(assert (=> b!4907244 m!5916896))

(declare-fun m!5916898 () Bool)

(assert (=> b!4907244 m!5916898))

(declare-fun m!5916900 () Bool)

(assert (=> b!4907244 m!5916900))

(assert (=> b!4907244 m!5916898))

(assert (=> b!4907244 m!5916670))

(declare-fun m!5916902 () Bool)

(assert (=> b!4907244 m!5916902))

(declare-fun m!5916904 () Bool)

(assert (=> b!4907244 m!5916904))

(declare-fun m!5916906 () Bool)

(assert (=> b!4907244 m!5916906))

(declare-fun m!5916908 () Bool)

(assert (=> b!4907244 m!5916908))

(declare-fun m!5916910 () Bool)

(assert (=> b!4907244 m!5916910))

(declare-fun m!5916912 () Bool)

(assert (=> b!4907244 m!5916912))

(assert (=> b!4907244 m!5916672))

(assert (=> b!4907244 m!5916908))

(declare-fun m!5916914 () Bool)

(assert (=> b!4907244 m!5916914))

(declare-fun m!5916918 () Bool)

(assert (=> b!4907244 m!5916918))

(assert (=> b!4907244 m!5916902))

(declare-fun m!5916920 () Bool)

(assert (=> b!4907244 m!5916920))

(declare-fun m!5916922 () Bool)

(assert (=> bm!340601 m!5916922))

(declare-fun m!5916924 () Bool)

(assert (=> b!4907232 m!5916924))

(assert (=> bm!340602 m!5916904))

(assert (=> bm!340607 m!5916672))

(declare-fun m!5916926 () Bool)

(assert (=> bm!340607 m!5916926))

(assert (=> bm!340604 m!5916912))

(declare-fun m!5916928 () Bool)

(assert (=> b!4907235 m!5916928))

(assert (=> b!4907235 m!5916670))

(declare-fun m!5916930 () Bool)

(assert (=> b!4907238 m!5916930))

(declare-fun m!5916932 () Bool)

(assert (=> bm!340603 m!5916932))

(declare-fun m!5916934 () Bool)

(assert (=> bm!340608 m!5916934))

(declare-fun m!5916936 () Bool)

(assert (=> d!1577135 m!5916936))

(assert (=> d!1577135 m!5916936))

(declare-fun m!5916938 () Bool)

(assert (=> d!1577135 m!5916938))

(assert (=> d!1577135 m!5916898))

(declare-fun m!5916940 () Bool)

(assert (=> d!1577135 m!5916940))

(declare-fun m!5916942 () Bool)

(assert (=> d!1577135 m!5916942))

(assert (=> d!1577135 m!5916772))

(declare-fun m!5916944 () Bool)

(assert (=> d!1577135 m!5916944))

(declare-fun m!5916946 () Bool)

(assert (=> d!1577135 m!5916946))

(declare-fun m!5916948 () Bool)

(assert (=> bm!340606 m!5916948))

(declare-fun m!5916950 () Bool)

(assert (=> bm!340605 m!5916950))

(assert (=> b!4907037 d!1577135))

(declare-fun d!1577171 () Bool)

(declare-fun e!3067439 () Bool)

(assert (=> d!1577171 e!3067439))

(declare-fun res!2096147 () Bool)

(assert (=> d!1577171 (=> (not res!2096147) (not e!3067439))))

(assert (=> d!1577171 (= res!2096147 (semiInverseModEq!3637 (toChars!11022 (transformation!8236 rule!164)) (toValue!11163 (transformation!8236 rule!164))))))

(declare-fun Unit!146744 () Unit!146735)

(assert (=> d!1577171 (= (lemmaInv!1282 (transformation!8236 rule!164)) Unit!146744)))

(declare-fun b!4907257 () Bool)

(declare-fun equivClasses!3490 (Int Int) Bool)

(assert (=> b!4907257 (= e!3067439 (equivClasses!3490 (toChars!11022 (transformation!8236 rule!164)) (toValue!11163 (transformation!8236 rule!164))))))

(assert (= (and d!1577171 res!2096147) b!4907257))

(assert (=> d!1577171 m!5916676))

(declare-fun m!5916954 () Bool)

(assert (=> b!4907257 m!5916954))

(assert (=> b!4907037 d!1577171))

(declare-fun d!1577175 () Bool)

(declare-fun lt!2013423 () Int)

(assert (=> d!1577175 (>= lt!2013423 0)))

(declare-fun e!3067442 () Int)

(assert (=> d!1577175 (= lt!2013423 e!3067442)))

(declare-fun c!834157 () Bool)

(assert (=> d!1577175 (= c!834157 ((_ is Nil!56547) Nil!56547))))

(assert (=> d!1577175 (= (size!37288 Nil!56547) lt!2013423)))

(declare-fun b!4907262 () Bool)

(assert (=> b!4907262 (= e!3067442 0)))

(declare-fun b!4907263 () Bool)

(assert (=> b!4907263 (= e!3067442 (+ 1 (size!37288 (t!366883 Nil!56547))))))

(assert (= (and d!1577175 c!834157) b!4907262))

(assert (= (and d!1577175 (not c!834157)) b!4907263))

(declare-fun m!5916956 () Bool)

(assert (=> b!4907263 m!5916956))

(assert (=> b!4907037 d!1577175))

(declare-fun bs!1177190 () Bool)

(declare-fun d!1577177 () Bool)

(assert (= bs!1177190 (and d!1577177 b!4907034)))

(declare-fun lambda!244539 () Int)

(assert (=> bs!1177190 (= lambda!244539 lambda!244530)))

(assert (=> d!1577177 true))

(assert (=> d!1577177 (< (dynLambda!22841 order!25781 (toChars!11022 (transformation!8236 rule!164))) (dynLambda!22840 order!25779 lambda!244539))))

(assert (=> d!1577177 true))

(assert (=> d!1577177 (< (dynLambda!22839 order!25777 (toValue!11163 (transformation!8236 rule!164))) (dynLambda!22840 order!25779 lambda!244539))))

(assert (=> d!1577177 (= (semiInverseModEq!3637 (toChars!11022 (transformation!8236 rule!164)) (toValue!11163 (transformation!8236 rule!164))) (Forall!1733 lambda!244539))))

(declare-fun bs!1177191 () Bool)

(assert (= bs!1177191 d!1577177))

(declare-fun m!5916964 () Bool)

(assert (=> bs!1177191 m!5916964))

(assert (=> b!4907037 d!1577177))

(declare-fun d!1577181 () Bool)

(assert (=> d!1577181 (= (isEmpty!30430 (_1!33714 lt!2013206)) ((_ is Nil!56547) (_1!33714 lt!2013206)))))

(assert (=> b!4907037 d!1577181))

(declare-fun d!1577183 () Bool)

(declare-fun dynLambda!22846 (Int BalanceConc!29038) TokenValue!8546)

(assert (=> d!1577183 (= (apply!13580 (transformation!8236 rule!164) lt!2013198) (dynLambda!22846 (toValue!11163 (transformation!8236 rule!164)) lt!2013198))))

(declare-fun b_lambda!195521 () Bool)

(assert (=> (not b_lambda!195521) (not d!1577183)))

(declare-fun t!366893 () Bool)

(declare-fun tb!259951 () Bool)

(assert (=> (and b!4907030 (= (toValue!11163 (transformation!8236 rule!164)) (toValue!11163 (transformation!8236 rule!164))) t!366893) tb!259951))

(declare-fun result!323730 () Bool)

(declare-fun inv!21 (TokenValue!8546) Bool)

(assert (=> tb!259951 (= result!323730 (inv!21 (dynLambda!22846 (toValue!11163 (transformation!8236 rule!164)) lt!2013198)))))

(declare-fun m!5916982 () Bool)

(assert (=> tb!259951 m!5916982))

(assert (=> d!1577183 t!366893))

(declare-fun b_and!346447 () Bool)

(assert (= b_and!346427 (and (=> t!366893 result!323730) b_and!346447)))

(declare-fun m!5916984 () Bool)

(assert (=> d!1577183 m!5916984))

(assert (=> b!4907032 d!1577183))

(declare-fun b!4907303 () Bool)

(declare-fun e!3067461 () Bool)

(assert (=> b!4907303 (= e!3067461 true)))

(declare-fun d!1577187 () Bool)

(assert (=> d!1577187 e!3067461))

(assert (= d!1577187 b!4907303))

(declare-fun order!25785 () Int)

(declare-fun lambda!244542 () Int)

(declare-fun dynLambda!22847 (Int Int) Int)

(assert (=> b!4907303 (< (dynLambda!22839 order!25777 (toValue!11163 (transformation!8236 rule!164))) (dynLambda!22847 order!25785 lambda!244542))))

(assert (=> b!4907303 (< (dynLambda!22841 order!25781 (toChars!11022 (transformation!8236 rule!164))) (dynLambda!22847 order!25785 lambda!244542))))

(assert (=> d!1577187 (= (dynLambda!22846 (toValue!11163 (transformation!8236 rule!164)) (_1!33713 lt!2013201)) (dynLambda!22846 (toValue!11163 (transformation!8236 rule!164)) lt!2013198))))

(declare-fun lt!2013426 () Unit!146735)

(declare-fun Forall2of!456 (Int BalanceConc!29038 BalanceConc!29038) Unit!146735)

(assert (=> d!1577187 (= lt!2013426 (Forall2of!456 lambda!244542 (_1!33713 lt!2013201) lt!2013198))))

(assert (=> d!1577187 (= (list!17822 (_1!33713 lt!2013201)) (list!17822 lt!2013198))))

(assert (=> d!1577187 (= (lemmaEqSameImage!1118 (transformation!8236 rule!164) (_1!33713 lt!2013201) lt!2013198) lt!2013426)))

(declare-fun b_lambda!195523 () Bool)

(assert (=> (not b_lambda!195523) (not d!1577187)))

(declare-fun t!366895 () Bool)

(declare-fun tb!259953 () Bool)

(assert (=> (and b!4907030 (= (toValue!11163 (transformation!8236 rule!164)) (toValue!11163 (transformation!8236 rule!164))) t!366895) tb!259953))

(declare-fun result!323734 () Bool)

(assert (=> tb!259953 (= result!323734 (inv!21 (dynLambda!22846 (toValue!11163 (transformation!8236 rule!164)) (_1!33713 lt!2013201))))))

(declare-fun m!5916986 () Bool)

(assert (=> tb!259953 m!5916986))

(assert (=> d!1577187 t!366895))

(declare-fun b_and!346449 () Bool)

(assert (= b_and!346447 (and (=> t!366895 result!323734) b_and!346449)))

(declare-fun b_lambda!195525 () Bool)

(assert (=> (not b_lambda!195525) (not d!1577187)))

(assert (=> d!1577187 t!366893))

(declare-fun b_and!346451 () Bool)

(assert (= b_and!346449 (and (=> t!366893 result!323730) b_and!346451)))

(declare-fun m!5916988 () Bool)

(assert (=> d!1577187 m!5916988))

(declare-fun m!5916990 () Bool)

(assert (=> d!1577187 m!5916990))

(assert (=> d!1577187 m!5916692))

(assert (=> d!1577187 m!5916984))

(assert (=> d!1577187 m!5916686))

(assert (=> b!4907032 d!1577187))

(declare-fun d!1577189 () Bool)

(declare-fun res!2096154 () Bool)

(declare-fun e!3067465 () Bool)

(assert (=> d!1577189 (=> (not res!2096154) (not e!3067465))))

(assert (=> d!1577189 (= res!2096154 (validRegex!5904 (regex!8236 rule!164)))))

(assert (=> d!1577189 (= (ruleValid!3733 thiss!15943 rule!164) e!3067465)))

(declare-fun b!4907308 () Bool)

(declare-fun res!2096155 () Bool)

(assert (=> b!4907308 (=> (not res!2096155) (not e!3067465))))

(assert (=> b!4907308 (= res!2096155 (not (nullable!4577 (regex!8236 rule!164))))))

(declare-fun b!4907309 () Bool)

(assert (=> b!4907309 (= e!3067465 (not (= (tag!9100 rule!164) (String!64172 ""))))))

(assert (= (and d!1577189 res!2096154) b!4907308))

(assert (= (and b!4907308 res!2096155) b!4907309))

(assert (=> d!1577189 m!5916772))

(assert (=> b!4907308 m!5916948))

(assert (=> b!4907038 d!1577189))

(declare-fun d!1577191 () Bool)

(declare-fun isBalanced!4036 (Conc!14804) Bool)

(assert (=> d!1577191 (= (inv!73024 input!1509) (isBalanced!4036 (c!834098 input!1509)))))

(declare-fun bs!1177193 () Bool)

(assert (= bs!1177193 d!1577191))

(declare-fun m!5916992 () Bool)

(assert (=> bs!1177193 m!5916992))

(assert (=> start!514496 d!1577191))

(declare-fun d!1577193 () Bool)

(assert (=> d!1577193 (= (list!17822 lt!2013198) (list!17824 (c!834098 lt!2013198)))))

(declare-fun bs!1177194 () Bool)

(assert (= bs!1177194 d!1577193))

(declare-fun m!5916994 () Bool)

(assert (=> bs!1177194 m!5916994))

(assert (=> b!4907033 d!1577193))

(declare-fun d!1577195 () Bool)

(declare-fun lt!2013429 () Bool)

(assert (=> d!1577195 (= lt!2013429 (isEmpty!30430 (list!17822 (_1!33713 lt!2013201))))))

(declare-fun isEmpty!30434 (Conc!14804) Bool)

(assert (=> d!1577195 (= lt!2013429 (isEmpty!30434 (c!834098 (_1!33713 lt!2013201))))))

(assert (=> d!1577195 (= (isEmpty!30429 (_1!33713 lt!2013201)) lt!2013429)))

(declare-fun bs!1177195 () Bool)

(assert (= bs!1177195 d!1577195))

(assert (=> bs!1177195 m!5916692))

(assert (=> bs!1177195 m!5916692))

(declare-fun m!5916996 () Bool)

(assert (=> bs!1177195 m!5916996))

(declare-fun m!5916998 () Bool)

(assert (=> bs!1177195 m!5916998))

(assert (=> b!4907028 d!1577195))

(declare-fun d!1577197 () Bool)

(declare-fun lt!2013432 () tuple2!60820)

(declare-fun findLongestMatch!1667 (Regex!13311 List!56671) tuple2!60822)

(assert (=> d!1577197 (= (tuple2!60823 (list!17822 (_1!33713 lt!2013432)) (list!17822 (_2!33713 lt!2013432))) (findLongestMatch!1667 (regex!8236 rule!164) (list!17822 input!1509)))))

(declare-fun choose!35873 (Regex!13311 BalanceConc!29038) tuple2!60820)

(assert (=> d!1577197 (= lt!2013432 (choose!35873 (regex!8236 rule!164) input!1509))))

(assert (=> d!1577197 (validRegex!5904 (regex!8236 rule!164))))

(assert (=> d!1577197 (= (findLongestMatchWithZipperSequence!324 (regex!8236 rule!164) input!1509) lt!2013432)))

(declare-fun bs!1177196 () Bool)

(assert (= bs!1177196 d!1577197))

(declare-fun m!5917000 () Bool)

(assert (=> bs!1177196 m!5917000))

(assert (=> bs!1177196 m!5916682))

(declare-fun m!5917002 () Bool)

(assert (=> bs!1177196 m!5917002))

(declare-fun m!5917004 () Bool)

(assert (=> bs!1177196 m!5917004))

(assert (=> bs!1177196 m!5916682))

(declare-fun m!5917006 () Bool)

(assert (=> bs!1177196 m!5917006))

(assert (=> bs!1177196 m!5916772))

(assert (=> b!4907028 d!1577197))

(declare-fun d!1577199 () Bool)

(assert (=> d!1577199 (= (inv!73019 (tag!9100 rule!164)) (= (mod (str.len (value!263832 (tag!9100 rule!164))) 2) 0))))

(assert (=> b!4907039 d!1577199))

(declare-fun d!1577201 () Bool)

(declare-fun res!2096158 () Bool)

(declare-fun e!3067468 () Bool)

(assert (=> d!1577201 (=> (not res!2096158) (not e!3067468))))

(assert (=> d!1577201 (= res!2096158 (semiInverseModEq!3637 (toChars!11022 (transformation!8236 rule!164)) (toValue!11163 (transformation!8236 rule!164))))))

(assert (=> d!1577201 (= (inv!73025 (transformation!8236 rule!164)) e!3067468)))

(declare-fun b!4907312 () Bool)

(assert (=> b!4907312 (= e!3067468 (equivClasses!3490 (toChars!11022 (transformation!8236 rule!164)) (toValue!11163 (transformation!8236 rule!164))))))

(assert (= (and d!1577201 res!2096158) b!4907312))

(assert (=> d!1577201 m!5916676))

(assert (=> b!4907312 m!5916954))

(assert (=> b!4907039 d!1577201))

(declare-fun d!1577203 () Bool)

(declare-fun choose!35874 (Int) Bool)

(assert (=> d!1577203 (= (Forall!1733 lambda!244530) (choose!35874 lambda!244530))))

(declare-fun bs!1177197 () Bool)

(assert (= bs!1177197 d!1577203))

(declare-fun m!5917008 () Bool)

(assert (=> bs!1177197 m!5917008))

(assert (=> b!4907034 d!1577203))

(declare-fun bm!340611 () Bool)

(declare-fun call!340616 () Bool)

(assert (=> bm!340611 (= call!340616 (isEmpty!30430 (_1!33714 lt!2013206)))))

(declare-fun b!4907341 () Bool)

(declare-fun e!3067485 () Bool)

(declare-fun e!3067484 () Bool)

(assert (=> b!4907341 (= e!3067485 e!3067484)))

(declare-fun res!2096179 () Bool)

(assert (=> b!4907341 (=> (not res!2096179) (not e!3067484))))

(declare-fun lt!2013435 () Bool)

(assert (=> b!4907341 (= res!2096179 (not lt!2013435))))

(declare-fun b!4907342 () Bool)

(declare-fun res!2096176 () Bool)

(assert (=> b!4907342 (=> res!2096176 e!3067485)))

(assert (=> b!4907342 (= res!2096176 (not ((_ is ElementMatch!13311) (regex!8236 rule!164))))))

(declare-fun e!3067489 () Bool)

(assert (=> b!4907342 (= e!3067489 e!3067485)))

(declare-fun b!4907343 () Bool)

(declare-fun e!3067486 () Bool)

(assert (=> b!4907343 (= e!3067486 (= lt!2013435 call!340616))))

(declare-fun b!4907344 () Bool)

(declare-fun e!3067483 () Bool)

(assert (=> b!4907344 (= e!3067483 (nullable!4577 (regex!8236 rule!164)))))

(declare-fun b!4907345 () Bool)

(declare-fun e!3067488 () Bool)

(assert (=> b!4907345 (= e!3067488 (not (= (head!10478 (_1!33714 lt!2013206)) (c!834097 (regex!8236 rule!164)))))))

(declare-fun b!4907346 () Bool)

(assert (=> b!4907346 (= e!3067486 e!3067489)))

(declare-fun c!834165 () Bool)

(assert (=> b!4907346 (= c!834165 ((_ is EmptyLang!13311) (regex!8236 rule!164)))))

(declare-fun b!4907347 () Bool)

(declare-fun res!2096182 () Bool)

(declare-fun e!3067487 () Bool)

(assert (=> b!4907347 (=> (not res!2096182) (not e!3067487))))

(assert (=> b!4907347 (= res!2096182 (not call!340616))))

(declare-fun b!4907348 () Bool)

(declare-fun res!2096177 () Bool)

(assert (=> b!4907348 (=> res!2096177 e!3067488)))

(assert (=> b!4907348 (= res!2096177 (not (isEmpty!30430 (tail!9625 (_1!33714 lt!2013206)))))))

(declare-fun b!4907349 () Bool)

(declare-fun res!2096178 () Bool)

(assert (=> b!4907349 (=> res!2096178 e!3067485)))

(assert (=> b!4907349 (= res!2096178 e!3067487)))

(declare-fun res!2096175 () Bool)

(assert (=> b!4907349 (=> (not res!2096175) (not e!3067487))))

(assert (=> b!4907349 (= res!2096175 lt!2013435)))

(declare-fun b!4907350 () Bool)

(declare-fun res!2096180 () Bool)

(assert (=> b!4907350 (=> (not res!2096180) (not e!3067487))))

(assert (=> b!4907350 (= res!2096180 (isEmpty!30430 (tail!9625 (_1!33714 lt!2013206))))))

(declare-fun b!4907351 () Bool)

(assert (=> b!4907351 (= e!3067484 e!3067488)))

(declare-fun res!2096181 () Bool)

(assert (=> b!4907351 (=> res!2096181 e!3067488)))

(assert (=> b!4907351 (= res!2096181 call!340616)))

(declare-fun b!4907352 () Bool)

(assert (=> b!4907352 (= e!3067483 (matchR!6578 (derivativeStep!3897 (regex!8236 rule!164) (head!10478 (_1!33714 lt!2013206))) (tail!9625 (_1!33714 lt!2013206))))))

(declare-fun d!1577205 () Bool)

(assert (=> d!1577205 e!3067486))

(declare-fun c!834166 () Bool)

(assert (=> d!1577205 (= c!834166 ((_ is EmptyExpr!13311) (regex!8236 rule!164)))))

(assert (=> d!1577205 (= lt!2013435 e!3067483)))

(declare-fun c!834164 () Bool)

(assert (=> d!1577205 (= c!834164 (isEmpty!30430 (_1!33714 lt!2013206)))))

(assert (=> d!1577205 (validRegex!5904 (regex!8236 rule!164))))

(assert (=> d!1577205 (= (matchR!6578 (regex!8236 rule!164) (_1!33714 lt!2013206)) lt!2013435)))

(declare-fun b!4907353 () Bool)

(assert (=> b!4907353 (= e!3067489 (not lt!2013435))))

(declare-fun b!4907354 () Bool)

(assert (=> b!4907354 (= e!3067487 (= (head!10478 (_1!33714 lt!2013206)) (c!834097 (regex!8236 rule!164))))))

(assert (= (and d!1577205 c!834164) b!4907344))

(assert (= (and d!1577205 (not c!834164)) b!4907352))

(assert (= (and d!1577205 c!834166) b!4907343))

(assert (= (and d!1577205 (not c!834166)) b!4907346))

(assert (= (and b!4907346 c!834165) b!4907353))

(assert (= (and b!4907346 (not c!834165)) b!4907342))

(assert (= (and b!4907342 (not res!2096176)) b!4907349))

(assert (= (and b!4907349 res!2096175) b!4907347))

(assert (= (and b!4907347 res!2096182) b!4907350))

(assert (= (and b!4907350 res!2096180) b!4907354))

(assert (= (and b!4907349 (not res!2096178)) b!4907341))

(assert (= (and b!4907341 res!2096179) b!4907351))

(assert (= (and b!4907351 (not res!2096181)) b!4907348))

(assert (= (and b!4907348 (not res!2096177)) b!4907345))

(assert (= (or b!4907343 b!4907351 b!4907347) bm!340611))

(assert (=> b!4907344 m!5916948))

(assert (=> bm!340611 m!5916674))

(declare-fun m!5917010 () Bool)

(assert (=> b!4907348 m!5917010))

(assert (=> b!4907348 m!5917010))

(declare-fun m!5917012 () Bool)

(assert (=> b!4907348 m!5917012))

(assert (=> d!1577205 m!5916674))

(assert (=> d!1577205 m!5916772))

(assert (=> b!4907350 m!5917010))

(assert (=> b!4907350 m!5917010))

(assert (=> b!4907350 m!5917012))

(declare-fun m!5917014 () Bool)

(assert (=> b!4907345 m!5917014))

(assert (=> b!4907352 m!5917014))

(assert (=> b!4907352 m!5917014))

(declare-fun m!5917016 () Bool)

(assert (=> b!4907352 m!5917016))

(assert (=> b!4907352 m!5917010))

(assert (=> b!4907352 m!5917016))

(assert (=> b!4907352 m!5917010))

(declare-fun m!5917018 () Bool)

(assert (=> b!4907352 m!5917018))

(assert (=> b!4907354 m!5917014))

(assert (=> b!4907029 d!1577205))

(declare-fun d!1577207 () Bool)

(assert (=> d!1577207 (= (apply!13580 (transformation!8236 rule!164) (_1!33713 lt!2013201)) (dynLambda!22846 (toValue!11163 (transformation!8236 rule!164)) (_1!33713 lt!2013201)))))

(declare-fun b_lambda!195527 () Bool)

(assert (=> (not b_lambda!195527) (not d!1577207)))

(assert (=> d!1577207 t!366895))

(declare-fun b_and!346453 () Bool)

(assert (= b_and!346451 (and (=> t!366895 result!323734) b_and!346453)))

(assert (=> d!1577207 m!5916990))

(assert (=> b!4907035 d!1577207))

(declare-fun d!1577209 () Bool)

(declare-fun isEmpty!30435 (Option!14109) Bool)

(assert (=> d!1577209 (= (isDefined!11118 (maxPrefixOneRule!3573 thiss!15943 rule!164 lt!2013205)) (not (isEmpty!30435 (maxPrefixOneRule!3573 thiss!15943 rule!164 lt!2013205))))))

(declare-fun bs!1177198 () Bool)

(assert (= bs!1177198 d!1577209))

(assert (=> bs!1177198 m!5916688))

(declare-fun m!5917020 () Bool)

(assert (=> bs!1177198 m!5917020))

(assert (=> b!4907035 d!1577209))

(declare-fun b!4907373 () Bool)

(declare-fun res!2096199 () Bool)

(declare-fun e!3067500 () Bool)

(assert (=> b!4907373 (=> (not res!2096199) (not e!3067500))))

(declare-fun lt!2013449 () Option!14109)

(declare-fun get!19560 (Option!14109) tuple2!60824)

(assert (=> b!4907373 (= res!2096199 (< (size!37288 (_2!33715 (get!19560 lt!2013449))) (size!37288 lt!2013205)))))

(declare-fun b!4907374 () Bool)

(declare-fun res!2096202 () Bool)

(assert (=> b!4907374 (=> (not res!2096202) (not e!3067500))))

(assert (=> b!4907374 (= res!2096202 (= (rule!11438 (_1!33715 (get!19560 lt!2013449))) rule!164))))

(declare-fun b!4907375 () Bool)

(declare-fun e!3067498 () Bool)

(assert (=> b!4907375 (= e!3067498 e!3067500)))

(declare-fun res!2096198 () Bool)

(assert (=> b!4907375 (=> (not res!2096198) (not e!3067500))))

(declare-fun charsOf!5392 (Token!15000) BalanceConc!29038)

(assert (=> b!4907375 (= res!2096198 (matchR!6578 (regex!8236 rule!164) (list!17822 (charsOf!5392 (_1!33715 (get!19560 lt!2013449))))))))

(declare-fun b!4907376 () Bool)

(declare-fun res!2096197 () Bool)

(assert (=> b!4907376 (=> (not res!2096197) (not e!3067500))))

(assert (=> b!4907376 (= res!2096197 (= (++!12265 (list!17822 (charsOf!5392 (_1!33715 (get!19560 lt!2013449)))) (_2!33715 (get!19560 lt!2013449))) lt!2013205))))

(declare-fun b!4907377 () Bool)

(declare-fun res!2096201 () Bool)

(assert (=> b!4907377 (=> (not res!2096201) (not e!3067500))))

(assert (=> b!4907377 (= res!2096201 (= (value!263858 (_1!33715 (get!19560 lt!2013449))) (apply!13580 (transformation!8236 (rule!11438 (_1!33715 (get!19560 lt!2013449)))) (seqFromList!5978 (originalCharacters!8531 (_1!33715 (get!19560 lt!2013449)))))))))

(declare-fun b!4907378 () Bool)

(assert (=> b!4907378 (= e!3067500 (= (size!37286 (_1!33715 (get!19560 lt!2013449))) (size!37288 (originalCharacters!8531 (_1!33715 (get!19560 lt!2013449))))))))

(declare-fun b!4907379 () Bool)

(declare-fun e!3067499 () Option!14109)

(declare-fun lt!2013446 () tuple2!60822)

(assert (=> b!4907379 (= e!3067499 (Some!14108 (tuple2!60825 (Token!15001 (apply!13580 (transformation!8236 rule!164) (seqFromList!5978 (_1!33714 lt!2013446))) rule!164 (size!37287 (seqFromList!5978 (_1!33714 lt!2013446))) (_1!33714 lt!2013446)) (_2!33714 lt!2013446))))))

(declare-fun lt!2013448 () Unit!146735)

(assert (=> b!4907379 (= lt!2013448 (longestMatchIsAcceptedByMatchOrIsEmpty!1762 (regex!8236 rule!164) lt!2013205))))

(declare-fun res!2096203 () Bool)

(assert (=> b!4907379 (= res!2096203 (isEmpty!30430 (_1!33714 (findLongestMatchInner!1799 (regex!8236 rule!164) Nil!56547 (size!37288 Nil!56547) lt!2013205 lt!2013205 (size!37288 lt!2013205)))))))

(declare-fun e!3067501 () Bool)

(assert (=> b!4907379 (=> res!2096203 e!3067501)))

(assert (=> b!4907379 e!3067501))

(declare-fun lt!2013447 () Unit!146735)

(assert (=> b!4907379 (= lt!2013447 lt!2013448)))

(declare-fun lt!2013450 () Unit!146735)

(declare-fun lemmaSemiInverse!2580 (TokenValueInjection!16400 BalanceConc!29038) Unit!146735)

(assert (=> b!4907379 (= lt!2013450 (lemmaSemiInverse!2580 (transformation!8236 rule!164) (seqFromList!5978 (_1!33714 lt!2013446))))))

(declare-fun d!1577211 () Bool)

(assert (=> d!1577211 e!3067498))

(declare-fun res!2096200 () Bool)

(assert (=> d!1577211 (=> res!2096200 e!3067498)))

(assert (=> d!1577211 (= res!2096200 (isEmpty!30435 lt!2013449))))

(assert (=> d!1577211 (= lt!2013449 e!3067499)))

(declare-fun c!834169 () Bool)

(assert (=> d!1577211 (= c!834169 (isEmpty!30430 (_1!33714 lt!2013446)))))

(assert (=> d!1577211 (= lt!2013446 (findLongestMatch!1667 (regex!8236 rule!164) lt!2013205))))

(assert (=> d!1577211 (ruleValid!3733 thiss!15943 rule!164)))

(assert (=> d!1577211 (= (maxPrefixOneRule!3573 thiss!15943 rule!164 lt!2013205) lt!2013449)))

(declare-fun b!4907380 () Bool)

(assert (=> b!4907380 (= e!3067501 (matchR!6578 (regex!8236 rule!164) (_1!33714 (findLongestMatchInner!1799 (regex!8236 rule!164) Nil!56547 (size!37288 Nil!56547) lt!2013205 lt!2013205 (size!37288 lt!2013205)))))))

(declare-fun b!4907381 () Bool)

(assert (=> b!4907381 (= e!3067499 None!14108)))

(assert (= (and d!1577211 c!834169) b!4907381))

(assert (= (and d!1577211 (not c!834169)) b!4907379))

(assert (= (and b!4907379 (not res!2096203)) b!4907380))

(assert (= (and d!1577211 (not res!2096200)) b!4907375))

(assert (= (and b!4907375 res!2096198) b!4907376))

(assert (= (and b!4907376 res!2096197) b!4907373))

(assert (= (and b!4907373 res!2096199) b!4907374))

(assert (= (and b!4907374 res!2096202) b!4907377))

(assert (= (and b!4907377 res!2096201) b!4907378))

(declare-fun m!5917022 () Bool)

(assert (=> b!4907377 m!5917022))

(declare-fun m!5917024 () Bool)

(assert (=> b!4907377 m!5917024))

(assert (=> b!4907377 m!5917024))

(declare-fun m!5917026 () Bool)

(assert (=> b!4907377 m!5917026))

(declare-fun m!5917028 () Bool)

(assert (=> d!1577211 m!5917028))

(declare-fun m!5917030 () Bool)

(assert (=> d!1577211 m!5917030))

(declare-fun m!5917032 () Bool)

(assert (=> d!1577211 m!5917032))

(assert (=> d!1577211 m!5916706))

(assert (=> b!4907380 m!5916670))

(assert (=> b!4907380 m!5916672))

(assert (=> b!4907380 m!5916670))

(assert (=> b!4907380 m!5916672))

(assert (=> b!4907380 m!5916680))

(assert (=> b!4907380 m!5916774))

(assert (=> b!4907376 m!5917022))

(declare-fun m!5917034 () Bool)

(assert (=> b!4907376 m!5917034))

(assert (=> b!4907376 m!5917034))

(declare-fun m!5917036 () Bool)

(assert (=> b!4907376 m!5917036))

(assert (=> b!4907376 m!5917036))

(declare-fun m!5917038 () Bool)

(assert (=> b!4907376 m!5917038))

(assert (=> b!4907375 m!5917022))

(assert (=> b!4907375 m!5917034))

(assert (=> b!4907375 m!5917034))

(assert (=> b!4907375 m!5917036))

(assert (=> b!4907375 m!5917036))

(declare-fun m!5917040 () Bool)

(assert (=> b!4907375 m!5917040))

(assert (=> b!4907373 m!5917022))

(declare-fun m!5917042 () Bool)

(assert (=> b!4907373 m!5917042))

(assert (=> b!4907373 m!5916672))

(assert (=> b!4907374 m!5917022))

(assert (=> b!4907379 m!5916670))

(declare-fun m!5917044 () Bool)

(assert (=> b!4907379 m!5917044))

(declare-fun m!5917046 () Bool)

(assert (=> b!4907379 m!5917046))

(assert (=> b!4907379 m!5916678))

(assert (=> b!4907379 m!5916770))

(assert (=> b!4907379 m!5916672))

(assert (=> b!4907379 m!5917044))

(declare-fun m!5917048 () Bool)

(assert (=> b!4907379 m!5917048))

(assert (=> b!4907379 m!5917044))

(declare-fun m!5917050 () Bool)

(assert (=> b!4907379 m!5917050))

(assert (=> b!4907379 m!5916670))

(assert (=> b!4907379 m!5916672))

(assert (=> b!4907379 m!5916680))

(assert (=> b!4907379 m!5917044))

(assert (=> b!4907378 m!5917022))

(declare-fun m!5917052 () Bool)

(assert (=> b!4907378 m!5917052))

(assert (=> b!4907035 d!1577211))

(declare-fun d!1577213 () Bool)

(declare-fun fromListB!2707 (List!56671) BalanceConc!29038)

(assert (=> d!1577213 (= (seqFromList!5978 lt!2013203) (fromListB!2707 lt!2013203))))

(declare-fun bs!1177199 () Bool)

(assert (= bs!1177199 d!1577213))

(declare-fun m!5917054 () Bool)

(assert (=> bs!1177199 m!5917054))

(assert (=> b!4907035 d!1577213))

(declare-fun d!1577215 () Bool)

(declare-fun dynLambda!22848 (Int BalanceConc!29038) Bool)

(assert (=> d!1577215 (dynLambda!22848 lambda!244530 lt!2013198)))

(declare-fun lt!2013453 () Unit!146735)

(declare-fun choose!35875 (Int BalanceConc!29038) Unit!146735)

(assert (=> d!1577215 (= lt!2013453 (choose!35875 lambda!244530 lt!2013198))))

(assert (=> d!1577215 (Forall!1733 lambda!244530)))

(assert (=> d!1577215 (= (ForallOf!1173 lambda!244530 lt!2013198) lt!2013453)))

(declare-fun b_lambda!195529 () Bool)

(assert (=> (not b_lambda!195529) (not d!1577215)))

(declare-fun bs!1177200 () Bool)

(assert (= bs!1177200 d!1577215))

(declare-fun m!5917056 () Bool)

(assert (=> bs!1177200 m!5917056))

(declare-fun m!5917058 () Bool)

(assert (=> bs!1177200 m!5917058))

(assert (=> bs!1177200 m!5916714))

(assert (=> b!4907035 d!1577215))

(declare-fun d!1577217 () Bool)

(declare-fun lt!2013456 () Int)

(assert (=> d!1577217 (= lt!2013456 (size!37288 (list!17822 (_1!33713 lt!2013201))))))

(declare-fun size!37290 (Conc!14804) Int)

(assert (=> d!1577217 (= lt!2013456 (size!37290 (c!834098 (_1!33713 lt!2013201))))))

(assert (=> d!1577217 (= (size!37287 (_1!33713 lt!2013201)) lt!2013456)))

(declare-fun bs!1177201 () Bool)

(assert (= bs!1177201 d!1577217))

(assert (=> bs!1177201 m!5916692))

(assert (=> bs!1177201 m!5916692))

(declare-fun m!5917060 () Bool)

(assert (=> bs!1177201 m!5917060))

(declare-fun m!5917062 () Bool)

(assert (=> bs!1177201 m!5917062))

(assert (=> b!4907035 d!1577217))

(declare-fun d!1577219 () Bool)

(declare-fun isEmpty!30436 (Option!14110) Bool)

(assert (=> d!1577219 (= (isDefined!11119 (Some!14109 (tuple2!60827 (Token!15001 lt!2013197 rule!164 (size!37287 (_1!33713 lt!2013201)) lt!2013203) (_2!33713 lt!2013201)))) (not (isEmpty!30436 (Some!14109 (tuple2!60827 (Token!15001 lt!2013197 rule!164 (size!37287 (_1!33713 lt!2013201)) lt!2013203) (_2!33713 lt!2013201))))))))

(declare-fun bs!1177202 () Bool)

(assert (= bs!1177202 d!1577219))

(declare-fun m!5917064 () Bool)

(assert (=> bs!1177202 m!5917064))

(assert (=> b!4907035 d!1577219))

(declare-fun d!1577221 () Bool)

(assert (=> d!1577221 (dynLambda!22848 lambda!244530 (_1!33713 lt!2013201))))

(declare-fun lt!2013457 () Unit!146735)

(assert (=> d!1577221 (= lt!2013457 (choose!35875 lambda!244530 (_1!33713 lt!2013201)))))

(assert (=> d!1577221 (Forall!1733 lambda!244530)))

(assert (=> d!1577221 (= (ForallOf!1173 lambda!244530 (_1!33713 lt!2013201)) lt!2013457)))

(declare-fun b_lambda!195531 () Bool)

(assert (=> (not b_lambda!195531) (not d!1577221)))

(declare-fun bs!1177203 () Bool)

(assert (= bs!1177203 d!1577221))

(declare-fun m!5917066 () Bool)

(assert (=> bs!1177203 m!5917066))

(declare-fun m!5917068 () Bool)

(assert (=> bs!1177203 m!5917068))

(assert (=> bs!1177203 m!5916714))

(assert (=> b!4907035 d!1577221))

(declare-fun d!1577223 () Bool)

(assert (=> d!1577223 (= (list!17822 (_1!33713 lt!2013201)) (list!17824 (c!834098 (_1!33713 lt!2013201))))))

(declare-fun bs!1177204 () Bool)

(assert (= bs!1177204 d!1577223))

(declare-fun m!5917070 () Bool)

(assert (=> bs!1177204 m!5917070))

(assert (=> b!4907035 d!1577223))

(declare-fun d!1577225 () Bool)

(declare-fun c!834172 () Bool)

(assert (=> d!1577225 (= c!834172 ((_ is Node!14804) (c!834098 input!1509)))))

(declare-fun e!3067506 () Bool)

(assert (=> d!1577225 (= (inv!73023 (c!834098 input!1509)) e!3067506)))

(declare-fun b!4907388 () Bool)

(declare-fun inv!73029 (Conc!14804) Bool)

(assert (=> b!4907388 (= e!3067506 (inv!73029 (c!834098 input!1509)))))

(declare-fun b!4907389 () Bool)

(declare-fun e!3067507 () Bool)

(assert (=> b!4907389 (= e!3067506 e!3067507)))

(declare-fun res!2096206 () Bool)

(assert (=> b!4907389 (= res!2096206 (not ((_ is Leaf!24639) (c!834098 input!1509))))))

(assert (=> b!4907389 (=> res!2096206 e!3067507)))

(declare-fun b!4907390 () Bool)

(declare-fun inv!73030 (Conc!14804) Bool)

(assert (=> b!4907390 (= e!3067507 (inv!73030 (c!834098 input!1509)))))

(assert (= (and d!1577225 c!834172) b!4907388))

(assert (= (and d!1577225 (not c!834172)) b!4907389))

(assert (= (and b!4907389 (not res!2096206)) b!4907390))

(declare-fun m!5917072 () Bool)

(assert (=> b!4907388 m!5917072))

(declare-fun m!5917074 () Bool)

(assert (=> b!4907390 m!5917074))

(assert (=> b!4907031 d!1577225))

(declare-fun b!4907404 () Bool)

(declare-fun e!3067510 () Bool)

(declare-fun tp!1380270 () Bool)

(declare-fun tp!1380273 () Bool)

(assert (=> b!4907404 (= e!3067510 (and tp!1380270 tp!1380273))))

(declare-fun b!4907403 () Bool)

(declare-fun tp!1380272 () Bool)

(assert (=> b!4907403 (= e!3067510 tp!1380272)))

(assert (=> b!4907039 (= tp!1380231 e!3067510)))

(declare-fun b!4907401 () Bool)

(declare-fun tp_is_empty!35831 () Bool)

(assert (=> b!4907401 (= e!3067510 tp_is_empty!35831)))

(declare-fun b!4907402 () Bool)

(declare-fun tp!1380271 () Bool)

(declare-fun tp!1380274 () Bool)

(assert (=> b!4907402 (= e!3067510 (and tp!1380271 tp!1380274))))

(assert (= (and b!4907039 ((_ is ElementMatch!13311) (regex!8236 rule!164))) b!4907401))

(assert (= (and b!4907039 ((_ is Concat!21857) (regex!8236 rule!164))) b!4907402))

(assert (= (and b!4907039 ((_ is Star!13311) (regex!8236 rule!164))) b!4907403))

(assert (= (and b!4907039 ((_ is Union!13311) (regex!8236 rule!164))) b!4907404))

(declare-fun b!4907413 () Bool)

(declare-fun e!3067515 () Bool)

(declare-fun tp!1380283 () Bool)

(declare-fun tp!1380281 () Bool)

(assert (=> b!4907413 (= e!3067515 (and (inv!73023 (left!41172 (c!834098 input!1509))) tp!1380283 (inv!73023 (right!41502 (c!834098 input!1509))) tp!1380281))))

(declare-fun b!4907415 () Bool)

(declare-fun e!3067516 () Bool)

(declare-fun tp!1380282 () Bool)

(assert (=> b!4907415 (= e!3067516 tp!1380282)))

(declare-fun b!4907414 () Bool)

(declare-fun inv!73031 (IArray!29669) Bool)

(assert (=> b!4907414 (= e!3067515 (and (inv!73031 (xs!18120 (c!834098 input!1509))) e!3067516))))

(assert (=> b!4907031 (= tp!1380229 (and (inv!73023 (c!834098 input!1509)) e!3067515))))

(assert (= (and b!4907031 ((_ is Node!14804) (c!834098 input!1509))) b!4907413))

(assert (= b!4907414 b!4907415))

(assert (= (and b!4907031 ((_ is Leaf!24639) (c!834098 input!1509))) b!4907414))

(declare-fun m!5917076 () Bool)

(assert (=> b!4907413 m!5917076))

(declare-fun m!5917078 () Bool)

(assert (=> b!4907413 m!5917078))

(declare-fun m!5917080 () Bool)

(assert (=> b!4907414 m!5917080))

(assert (=> b!4907031 m!5916708))

(declare-fun b_lambda!195533 () Bool)

(assert (= b_lambda!195527 (or (and b!4907030 b_free!131915) b_lambda!195533)))

(declare-fun b_lambda!195535 () Bool)

(assert (= b_lambda!195523 (or (and b!4907030 b_free!131915) b_lambda!195535)))

(declare-fun b_lambda!195537 () Bool)

(assert (= b_lambda!195529 (or b!4907034 b_lambda!195537)))

(declare-fun bs!1177205 () Bool)

(declare-fun d!1577227 () Bool)

(assert (= bs!1177205 (and d!1577227 b!4907034)))

(declare-fun dynLambda!22849 (Int TokenValue!8546) BalanceConc!29038)

(assert (=> bs!1177205 (= (dynLambda!22848 lambda!244530 lt!2013198) (= (list!17822 (dynLambda!22849 (toChars!11022 (transformation!8236 rule!164)) (dynLambda!22846 (toValue!11163 (transformation!8236 rule!164)) lt!2013198))) (list!17822 lt!2013198)))))

(declare-fun b_lambda!195545 () Bool)

(assert (=> (not b_lambda!195545) (not bs!1177205)))

(declare-fun t!366897 () Bool)

(declare-fun tb!259955 () Bool)

(assert (=> (and b!4907030 (= (toChars!11022 (transformation!8236 rule!164)) (toChars!11022 (transformation!8236 rule!164))) t!366897) tb!259955))

(declare-fun tp!1380286 () Bool)

(declare-fun e!3067519 () Bool)

(declare-fun b!4907420 () Bool)

(assert (=> b!4907420 (= e!3067519 (and (inv!73023 (c!834098 (dynLambda!22849 (toChars!11022 (transformation!8236 rule!164)) (dynLambda!22846 (toValue!11163 (transformation!8236 rule!164)) lt!2013198)))) tp!1380286))))

(declare-fun result!323740 () Bool)

(assert (=> tb!259955 (= result!323740 (and (inv!73024 (dynLambda!22849 (toChars!11022 (transformation!8236 rule!164)) (dynLambda!22846 (toValue!11163 (transformation!8236 rule!164)) lt!2013198))) e!3067519))))

(assert (= tb!259955 b!4907420))

(declare-fun m!5917082 () Bool)

(assert (=> b!4907420 m!5917082))

(declare-fun m!5917084 () Bool)

(assert (=> tb!259955 m!5917084))

(assert (=> bs!1177205 t!366897))

(declare-fun b_and!346455 () Bool)

(assert (= b_and!346429 (and (=> t!366897 result!323740) b_and!346455)))

(declare-fun b_lambda!195547 () Bool)

(assert (=> (not b_lambda!195547) (not bs!1177205)))

(assert (=> bs!1177205 t!366893))

(declare-fun b_and!346457 () Bool)

(assert (= b_and!346453 (and (=> t!366893 result!323730) b_and!346457)))

(assert (=> bs!1177205 m!5916686))

(assert (=> bs!1177205 m!5916984))

(declare-fun m!5917086 () Bool)

(assert (=> bs!1177205 m!5917086))

(assert (=> bs!1177205 m!5916984))

(assert (=> bs!1177205 m!5917086))

(declare-fun m!5917088 () Bool)

(assert (=> bs!1177205 m!5917088))

(assert (=> d!1577215 d!1577227))

(declare-fun b_lambda!195539 () Bool)

(assert (= b_lambda!195525 (or (and b!4907030 b_free!131915) b_lambda!195539)))

(declare-fun b_lambda!195541 () Bool)

(assert (= b_lambda!195521 (or (and b!4907030 b_free!131915) b_lambda!195541)))

(declare-fun b_lambda!195543 () Bool)

(assert (= b_lambda!195531 (or b!4907034 b_lambda!195543)))

(declare-fun bs!1177206 () Bool)

(declare-fun d!1577229 () Bool)

(assert (= bs!1177206 (and d!1577229 b!4907034)))

(assert (=> bs!1177206 (= (dynLambda!22848 lambda!244530 (_1!33713 lt!2013201)) (= (list!17822 (dynLambda!22849 (toChars!11022 (transformation!8236 rule!164)) (dynLambda!22846 (toValue!11163 (transformation!8236 rule!164)) (_1!33713 lt!2013201)))) (list!17822 (_1!33713 lt!2013201))))))

(declare-fun b_lambda!195549 () Bool)

(assert (=> (not b_lambda!195549) (not bs!1177206)))

(declare-fun t!366899 () Bool)

(declare-fun tb!259957 () Bool)

(assert (=> (and b!4907030 (= (toChars!11022 (transformation!8236 rule!164)) (toChars!11022 (transformation!8236 rule!164))) t!366899) tb!259957))

(declare-fun tp!1380287 () Bool)

(declare-fun e!3067520 () Bool)

(declare-fun b!4907421 () Bool)

(assert (=> b!4907421 (= e!3067520 (and (inv!73023 (c!834098 (dynLambda!22849 (toChars!11022 (transformation!8236 rule!164)) (dynLambda!22846 (toValue!11163 (transformation!8236 rule!164)) (_1!33713 lt!2013201))))) tp!1380287))))

(declare-fun result!323744 () Bool)

(assert (=> tb!259957 (= result!323744 (and (inv!73024 (dynLambda!22849 (toChars!11022 (transformation!8236 rule!164)) (dynLambda!22846 (toValue!11163 (transformation!8236 rule!164)) (_1!33713 lt!2013201)))) e!3067520))))

(assert (= tb!259957 b!4907421))

(declare-fun m!5917090 () Bool)

(assert (=> b!4907421 m!5917090))

(declare-fun m!5917092 () Bool)

(assert (=> tb!259957 m!5917092))

(assert (=> bs!1177206 t!366899))

(declare-fun b_and!346459 () Bool)

(assert (= b_and!346455 (and (=> t!366899 result!323744) b_and!346459)))

(declare-fun b_lambda!195551 () Bool)

(assert (=> (not b_lambda!195551) (not bs!1177206)))

(assert (=> bs!1177206 t!366895))

(declare-fun b_and!346461 () Bool)

(assert (= b_and!346457 (and (=> t!366895 result!323734) b_and!346461)))

(assert (=> bs!1177206 m!5916692))

(assert (=> bs!1177206 m!5916990))

(declare-fun m!5917094 () Bool)

(assert (=> bs!1177206 m!5917094))

(assert (=> bs!1177206 m!5916990))

(assert (=> bs!1177206 m!5917094))

(declare-fun m!5917096 () Bool)

(assert (=> bs!1177206 m!5917096))

(assert (=> d!1577221 d!1577229))

(check-sat (not b!4907403) (not d!1577223) (not d!1577117) (not bm!340611) (not d!1577215) (not b!4907345) (not d!1577189) (not b!4907062) (not d!1577219) (not b_lambda!195551) (not d!1577209) (not tb!259957) (not b!4907404) tp_is_empty!35831 (not b!4907308) (not d!1577203) (not b!4907374) (not d!1577195) (not b!4907312) (not b!4907380) (not b!4907376) (not b_lambda!195549) (not d!1577205) (not d!1577191) (not b!4907390) (not bm!340602) (not b_lambda!195543) (not b!4907113) (not b!4907378) (not d!1577201) (not b!4907354) (not d!1577193) (not d!1577171) (not d!1577197) b_and!346461 (not tb!259953) (not d!1577213) (not tb!259955) (not b!4907263) (not b!4907244) (not d!1577135) (not b!4907379) (not b!4907413) (not bm!340606) (not d!1577187) (not b!4907344) (not tb!259951) (not b!4907348) (not b!4907415) (not b!4907375) (not bm!340607) (not d!1577211) b_and!346459 (not b_lambda!195535) (not bs!1177206) (not b!4907238) (not b!4907402) (not b_lambda!195533) (not bm!340603) (not b!4907420) (not b_lambda!195541) (not b!4907257) (not b!4907232) (not b_lambda!195547) (not d!1577177) (not d!1577115) (not b_next!132705) (not b!4907388) (not b!4907421) (not d!1577221) (not b_lambda!195545) (not b!4907235) (not b!4907352) (not b_lambda!195537) (not b!4907377) (not b!4907031) (not bm!340608) (not bm!340601) (not bs!1177205) (not b!4907414) (not b!4907350) (not b!4907373) (not bm!340604) (not b_lambda!195539) (not bm!340605) (not d!1577217) (not b_next!132707))
(check-sat b_and!346459 b_and!346461 (not b_next!132707) (not b_next!132705))

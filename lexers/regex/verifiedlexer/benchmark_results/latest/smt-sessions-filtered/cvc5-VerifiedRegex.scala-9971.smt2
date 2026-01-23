; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!522280 () Bool)

(assert start!522280)

(declare-fun b!4954994 () Bool)

(declare-fun b_free!132171 () Bool)

(declare-fun b_next!132961 () Bool)

(assert (=> b!4954994 (= b_free!132171 (not b_next!132961))))

(declare-fun tp!1389340 () Bool)

(declare-fun b_and!347023 () Bool)

(assert (=> b!4954994 (= tp!1389340 b_and!347023)))

(declare-fun b_free!132173 () Bool)

(declare-fun b_next!132963 () Bool)

(assert (=> b!4954994 (= b_free!132173 (not b_next!132963))))

(declare-fun tp!1389339 () Bool)

(declare-fun b_and!347025 () Bool)

(assert (=> b!4954994 (= tp!1389339 b_and!347025)))

(declare-fun b!4954993 () Bool)

(declare-fun e!3096079 () Bool)

(declare-fun e!3096080 () Bool)

(assert (=> b!4954993 (= e!3096079 (not e!3096080))))

(declare-fun res!2114002 () Bool)

(assert (=> b!4954993 (=> res!2114002 e!3096080)))

(declare-datatypes ((List!57265 0))(
  ( (Nil!57141) (Cons!57141 (h!63589 (_ BitVec 16)) (t!367831 List!57265)) )
))
(declare-datatypes ((TokenValue!8603 0))(
  ( (FloatLiteralValue!17206 (text!60666 List!57265)) (TokenValueExt!8602 (__x!34499 Int)) (Broken!43015 (value!265768 List!57265)) (Object!8726) (End!8603) (Def!8603) (Underscore!8603) (Match!8603) (Else!8603) (Error!8603) (Case!8603) (If!8603) (Extends!8603) (Abstract!8603) (Class!8603) (Val!8603) (DelimiterValue!17206 (del!8663 List!57265)) (KeywordValue!8609 (value!265769 List!57265)) (CommentValue!17206 (value!265770 List!57265)) (WhitespaceValue!17206 (value!265771 List!57265)) (IndentationValue!8603 (value!265772 List!57265)) (String!64890) (Int32!8603) (Broken!43016 (value!265773 List!57265)) (Boolean!8604) (Unit!148035) (OperatorValue!8606 (op!8663 List!57265)) (IdentifierValue!17206 (value!265774 List!57265)) (IdentifierValue!17207 (value!265775 List!57265)) (WhitespaceValue!17207 (value!265776 List!57265)) (True!17206) (False!17206) (Broken!43017 (value!265777 List!57265)) (Broken!43018 (value!265778 List!57265)) (True!17207) (RightBrace!8603) (RightBracket!8603) (Colon!8603) (Null!8603) (Comma!8603) (LeftBracket!8603) (False!17207) (LeftBrace!8603) (ImaginaryLiteralValue!8603 (text!60667 List!57265)) (StringLiteralValue!25809 (value!265779 List!57265)) (EOFValue!8603 (value!265780 List!57265)) (IdentValue!8603 (value!265781 List!57265)) (DelimiterValue!17207 (value!265782 List!57265)) (DedentValue!8603 (value!265783 List!57265)) (NewLineValue!8603 (value!265784 List!57265)) (IntegerValue!25809 (value!265785 (_ BitVec 32)) (text!60668 List!57265)) (IntegerValue!25810 (value!265786 Int) (text!60669 List!57265)) (Times!8603) (Or!8603) (Equal!8603) (Minus!8603) (Broken!43019 (value!265787 List!57265)) (And!8603) (Div!8603) (LessEqual!8603) (Mod!8603) (Concat!22129) (Not!8603) (Plus!8603) (SpaceValue!8603 (value!265788 List!57265)) (IntegerValue!25811 (value!265789 Int) (text!60670 List!57265)) (StringLiteralValue!25810 (text!60671 List!57265)) (FloatLiteralValue!17207 (text!60672 List!57265)) (BytesLiteralValue!8603 (value!265790 List!57265)) (CommentValue!17207 (value!265791 List!57265)) (StringLiteralValue!25811 (value!265792 List!57265)) (ErrorTokenValue!8603 (msg!8664 List!57265)) )
))
(declare-datatypes ((C!27302 0))(
  ( (C!27303 (val!23017 Int)) )
))
(declare-datatypes ((List!57266 0))(
  ( (Nil!57142) (Cons!57142 (h!63590 C!27302) (t!367832 List!57266)) )
))
(declare-datatypes ((IArray!30151 0))(
  ( (IArray!30152 (innerList!15133 List!57266)) )
))
(declare-datatypes ((Regex!13526 0))(
  ( (ElementMatch!13526 (c!846061 C!27302)) (Concat!22130 (regOne!27564 Regex!13526) (regTwo!27564 Regex!13526)) (EmptyExpr!13526) (Star!13526 (reg!13855 Regex!13526)) (EmptyLang!13526) (Union!13526 (regOne!27565 Regex!13526) (regTwo!27565 Regex!13526)) )
))
(declare-datatypes ((String!64891 0))(
  ( (String!64892 (value!265793 String)) )
))
(declare-datatypes ((Conc!15045 0))(
  ( (Node!15045 (left!41686 Conc!15045) (right!42016 Conc!15045) (csize!30320 Int) (cheight!15256 Int)) (Leaf!25017 (xs!18371 IArray!30151) (csize!30321 Int)) (Empty!15045) )
))
(declare-datatypes ((BalanceConc!29520 0))(
  ( (BalanceConc!29521 (c!846062 Conc!15045)) )
))
(declare-datatypes ((TokenValueInjection!16514 0))(
  ( (TokenValueInjection!16515 (toValue!11244 Int) (toChars!11103 Int)) )
))
(declare-datatypes ((Rule!16386 0))(
  ( (Rule!16387 (regex!8293 Regex!13526) (tag!9157 String!64891) (isSeparator!8293 Bool) (transformation!8293 TokenValueInjection!16514)) )
))
(declare-datatypes ((List!57267 0))(
  ( (Nil!57143) (Cons!57143 (h!63591 Rule!16386) (t!367833 List!57267)) )
))
(declare-fun rulesArg!259 () List!57267)

(assert (=> b!4954993 (= res!2114002 (or (and (is-Cons!57143 rulesArg!259) (is-Nil!57143 (t!367833 rulesArg!259))) (not (is-Cons!57143 rulesArg!259))))))

(declare-fun lt!2044997 () List!57266)

(declare-fun isPrefix!5146 (List!57266 List!57266) Bool)

(assert (=> b!4954993 (isPrefix!5146 lt!2044997 lt!2044997)))

(declare-datatypes ((Unit!148036 0))(
  ( (Unit!148037) )
))
(declare-fun lt!2044996 () Unit!148036)

(declare-fun lemmaIsPrefixRefl!3470 (List!57266 List!57266) Unit!148036)

(assert (=> b!4954993 (= lt!2044996 (lemmaIsPrefixRefl!3470 lt!2044997 lt!2044997))))

(declare-fun e!3096084 () Bool)

(assert (=> b!4954994 (= e!3096084 (and tp!1389340 tp!1389339))))

(declare-fun b!4954995 () Bool)

(declare-fun e!3096083 () Bool)

(declare-fun tp!1389338 () Bool)

(declare-fun inv!74519 (String!64891) Bool)

(declare-fun inv!74522 (TokenValueInjection!16514) Bool)

(assert (=> b!4954995 (= e!3096083 (and tp!1389338 (inv!74519 (tag!9157 (h!63591 rulesArg!259))) (inv!74522 (transformation!8293 (h!63591 rulesArg!259))) e!3096084))))

(declare-fun b!4954996 () Bool)

(declare-fun e!3096077 () Bool)

(assert (=> b!4954996 (= e!3096077 e!3096079)))

(declare-fun res!2114004 () Bool)

(assert (=> b!4954996 (=> (not res!2114004) (not e!3096079))))

(declare-fun totalInput!464 () BalanceConc!29520)

(declare-fun isSuffix!1092 (List!57266 List!57266) Bool)

(declare-fun list!18230 (BalanceConc!29520) List!57266)

(assert (=> b!4954996 (= res!2114004 (isSuffix!1092 lt!2044997 (list!18230 totalInput!464)))))

(declare-fun input!1342 () BalanceConc!29520)

(assert (=> b!4954996 (= lt!2044997 (list!18230 input!1342))))

(declare-fun b!4954997 () Bool)

(declare-fun res!2114003 () Bool)

(assert (=> b!4954997 (=> (not res!2114003) (not e!3096077))))

(declare-datatypes ((LexerInterface!7885 0))(
  ( (LexerInterfaceExt!7882 (__x!34500 Int)) (Lexer!7883) )
))
(declare-fun thiss!15247 () LexerInterface!7885)

(declare-fun rulesValidInductive!3196 (LexerInterface!7885 List!57267) Bool)

(assert (=> b!4954997 (= res!2114003 (rulesValidInductive!3196 thiss!15247 rulesArg!259))))

(declare-fun res!2114001 () Bool)

(assert (=> start!522280 (=> (not res!2114001) (not e!3096077))))

(assert (=> start!522280 (= res!2114001 (is-Lexer!7883 thiss!15247))))

(assert (=> start!522280 e!3096077))

(assert (=> start!522280 true))

(declare-fun e!3096076 () Bool)

(assert (=> start!522280 e!3096076))

(declare-fun e!3096078 () Bool)

(declare-fun inv!74523 (BalanceConc!29520) Bool)

(assert (=> start!522280 (and (inv!74523 input!1342) e!3096078)))

(declare-fun e!3096081 () Bool)

(assert (=> start!522280 (and (inv!74523 totalInput!464) e!3096081)))

(declare-fun b!4954998 () Bool)

(declare-fun tp!1389337 () Bool)

(declare-fun inv!74524 (Conc!15045) Bool)

(assert (=> b!4954998 (= e!3096078 (and (inv!74524 (c!846062 input!1342)) tp!1389337))))

(declare-fun b!4954999 () Bool)

(declare-fun tp!1389342 () Bool)

(assert (=> b!4954999 (= e!3096076 (and e!3096083 tp!1389342))))

(declare-fun b!4955000 () Bool)

(declare-fun res!2114000 () Bool)

(assert (=> b!4955000 (=> (not res!2114000) (not e!3096077))))

(declare-fun isEmpty!30725 (List!57267) Bool)

(assert (=> b!4955000 (= res!2114000 (not (isEmpty!30725 rulesArg!259)))))

(declare-fun b!4955001 () Bool)

(declare-fun tp!1389341 () Bool)

(assert (=> b!4955001 (= e!3096081 (and (inv!74524 (c!846062 totalInput!464)) tp!1389341))))

(declare-fun b!4955002 () Bool)

(assert (=> b!4955002 (= e!3096080 (rulesValidInductive!3196 thiss!15247 (t!367833 rulesArg!259)))))

(declare-datatypes ((Token!15086 0))(
  ( (Token!15087 (value!265794 TokenValue!8603) (rule!11505 Rule!16386) (size!37907 Int) (originalCharacters!8574 List!57266)) )
))
(declare-datatypes ((tuple2!61680 0))(
  ( (tuple2!61681 (_1!34143 Token!15086) (_2!34143 BalanceConc!29520)) )
))
(declare-datatypes ((Option!14259 0))(
  ( (None!14258) (Some!14258 (v!50243 tuple2!61680)) )
))
(declare-fun lt!2044995 () Option!14259)

(declare-fun maxPrefixOneRuleZipperSequenceV2!277 (LexerInterface!7885 Rule!16386 BalanceConc!29520 BalanceConc!29520) Option!14259)

(assert (=> b!4955002 (= lt!2044995 (maxPrefixOneRuleZipperSequenceV2!277 thiss!15247 (h!63591 rulesArg!259) input!1342 totalInput!464))))

(assert (= (and start!522280 res!2114001) b!4954997))

(assert (= (and b!4954997 res!2114003) b!4955000))

(assert (= (and b!4955000 res!2114000) b!4954996))

(assert (= (and b!4954996 res!2114004) b!4954993))

(assert (= (and b!4954993 (not res!2114002)) b!4955002))

(assert (= b!4954995 b!4954994))

(assert (= b!4954999 b!4954995))

(assert (= (and start!522280 (is-Cons!57143 rulesArg!259)) b!4954999))

(assert (= start!522280 b!4954998))

(assert (= start!522280 b!4955001))

(declare-fun m!5979616 () Bool)

(assert (=> b!4955002 m!5979616))

(declare-fun m!5979618 () Bool)

(assert (=> b!4955002 m!5979618))

(declare-fun m!5979620 () Bool)

(assert (=> b!4955000 m!5979620))

(declare-fun m!5979622 () Bool)

(assert (=> b!4954998 m!5979622))

(declare-fun m!5979624 () Bool)

(assert (=> b!4954995 m!5979624))

(declare-fun m!5979626 () Bool)

(assert (=> b!4954995 m!5979626))

(declare-fun m!5979628 () Bool)

(assert (=> b!4954993 m!5979628))

(declare-fun m!5979630 () Bool)

(assert (=> b!4954993 m!5979630))

(declare-fun m!5979632 () Bool)

(assert (=> b!4954996 m!5979632))

(assert (=> b!4954996 m!5979632))

(declare-fun m!5979634 () Bool)

(assert (=> b!4954996 m!5979634))

(declare-fun m!5979636 () Bool)

(assert (=> b!4954996 m!5979636))

(declare-fun m!5979638 () Bool)

(assert (=> start!522280 m!5979638))

(declare-fun m!5979640 () Bool)

(assert (=> start!522280 m!5979640))

(declare-fun m!5979642 () Bool)

(assert (=> b!4954997 m!5979642))

(declare-fun m!5979644 () Bool)

(assert (=> b!4955001 m!5979644))

(push 1)

(assert (not b_next!132963))

(assert b_and!347023)

(assert (not b!4954998))

(assert (not start!522280))

(assert (not b!4955000))

(assert (not b!4954997))

(assert (not b!4955001))

(assert (not b!4955002))

(assert (not b_next!132961))

(assert (not b!4954999))

(assert (not b!4954996))

(assert b_and!347025)

(assert (not b!4954995))

(assert (not b!4954993))

(check-sat)

(pop 1)

(push 1)

(assert b_and!347023)

(assert b_and!347025)

(assert (not b_next!132961))

(assert (not b_next!132963))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1595464 () Bool)

(declare-fun c!846067 () Bool)

(assert (=> d!1595464 (= c!846067 (is-Node!15045 (c!846062 input!1342)))))

(declare-fun e!3096116 () Bool)

(assert (=> d!1595464 (= (inv!74524 (c!846062 input!1342)) e!3096116)))

(declare-fun b!4955039 () Bool)

(declare-fun inv!74528 (Conc!15045) Bool)

(assert (=> b!4955039 (= e!3096116 (inv!74528 (c!846062 input!1342)))))

(declare-fun b!4955040 () Bool)

(declare-fun e!3096117 () Bool)

(assert (=> b!4955040 (= e!3096116 e!3096117)))

(declare-fun res!2114028 () Bool)

(assert (=> b!4955040 (= res!2114028 (not (is-Leaf!25017 (c!846062 input!1342))))))

(assert (=> b!4955040 (=> res!2114028 e!3096117)))

(declare-fun b!4955041 () Bool)

(declare-fun inv!74529 (Conc!15045) Bool)

(assert (=> b!4955041 (= e!3096117 (inv!74529 (c!846062 input!1342)))))

(assert (= (and d!1595464 c!846067) b!4955039))

(assert (= (and d!1595464 (not c!846067)) b!4955040))

(assert (= (and b!4955040 (not res!2114028)) b!4955041))

(declare-fun m!5979676 () Bool)

(assert (=> b!4955039 m!5979676))

(declare-fun m!5979678 () Bool)

(assert (=> b!4955041 m!5979678))

(assert (=> b!4954998 d!1595464))

(declare-fun d!1595470 () Bool)

(assert (=> d!1595470 true))

(declare-fun lt!2045020 () Bool)

(declare-fun lambda!247067 () Int)

(declare-fun forall!13297 (List!57267 Int) Bool)

(assert (=> d!1595470 (= lt!2045020 (forall!13297 rulesArg!259 lambda!247067))))

(declare-fun e!3096147 () Bool)

(assert (=> d!1595470 (= lt!2045020 e!3096147)))

(declare-fun res!2114056 () Bool)

(assert (=> d!1595470 (=> res!2114056 e!3096147)))

(assert (=> d!1595470 (= res!2114056 (not (is-Cons!57143 rulesArg!259)))))

(assert (=> d!1595470 (= (rulesValidInductive!3196 thiss!15247 rulesArg!259) lt!2045020)))

(declare-fun b!4955077 () Bool)

(declare-fun e!3096146 () Bool)

(assert (=> b!4955077 (= e!3096147 e!3096146)))

(declare-fun res!2114057 () Bool)

(assert (=> b!4955077 (=> (not res!2114057) (not e!3096146))))

(declare-fun ruleValid!3771 (LexerInterface!7885 Rule!16386) Bool)

(assert (=> b!4955077 (= res!2114057 (ruleValid!3771 thiss!15247 (h!63591 rulesArg!259)))))

(declare-fun b!4955078 () Bool)

(assert (=> b!4955078 (= e!3096146 (rulesValidInductive!3196 thiss!15247 (t!367833 rulesArg!259)))))

(assert (= (and d!1595470 (not res!2114056)) b!4955077))

(assert (= (and b!4955077 res!2114057) b!4955078))

(declare-fun m!5979706 () Bool)

(assert (=> d!1595470 m!5979706))

(declare-fun m!5979708 () Bool)

(assert (=> b!4955077 m!5979708))

(assert (=> b!4955078 m!5979616))

(assert (=> b!4954997 d!1595470))

(declare-fun bs!1182484 () Bool)

(declare-fun d!1595486 () Bool)

(assert (= bs!1182484 (and d!1595486 d!1595470)))

(declare-fun lambda!247068 () Int)

(assert (=> bs!1182484 (= lambda!247068 lambda!247067)))

(assert (=> d!1595486 true))

(declare-fun lt!2045021 () Bool)

(assert (=> d!1595486 (= lt!2045021 (forall!13297 (t!367833 rulesArg!259) lambda!247068))))

(declare-fun e!3096149 () Bool)

(assert (=> d!1595486 (= lt!2045021 e!3096149)))

(declare-fun res!2114058 () Bool)

(assert (=> d!1595486 (=> res!2114058 e!3096149)))

(assert (=> d!1595486 (= res!2114058 (not (is-Cons!57143 (t!367833 rulesArg!259))))))

(assert (=> d!1595486 (= (rulesValidInductive!3196 thiss!15247 (t!367833 rulesArg!259)) lt!2045021)))

(declare-fun b!4955081 () Bool)

(declare-fun e!3096148 () Bool)

(assert (=> b!4955081 (= e!3096149 e!3096148)))

(declare-fun res!2114059 () Bool)

(assert (=> b!4955081 (=> (not res!2114059) (not e!3096148))))

(assert (=> b!4955081 (= res!2114059 (ruleValid!3771 thiss!15247 (h!63591 (t!367833 rulesArg!259))))))

(declare-fun b!4955082 () Bool)

(assert (=> b!4955082 (= e!3096148 (rulesValidInductive!3196 thiss!15247 (t!367833 (t!367833 rulesArg!259))))))

(assert (= (and d!1595486 (not res!2114058)) b!4955081))

(assert (= (and b!4955081 res!2114059) b!4955082))

(declare-fun m!5979710 () Bool)

(assert (=> d!1595486 m!5979710))

(declare-fun m!5979712 () Bool)

(assert (=> b!4955081 m!5979712))

(declare-fun m!5979714 () Bool)

(assert (=> b!4955082 m!5979714))

(assert (=> b!4955002 d!1595486))

(declare-fun b!4955117 () Bool)

(declare-fun e!3096177 () Bool)

(assert (=> b!4955117 (= e!3096177 true)))

(declare-fun b!4955116 () Bool)

(declare-fun e!3096176 () Bool)

(assert (=> b!4955116 (= e!3096176 e!3096177)))

(declare-fun b!4955101 () Bool)

(assert (=> b!4955101 e!3096176))

(assert (= b!4955116 b!4955117))

(assert (= b!4955101 b!4955116))

(declare-fun lambda!247076 () Int)

(declare-fun order!26039 () Int)

(declare-fun order!26041 () Int)

(declare-fun dynLambda!23057 (Int Int) Int)

(declare-fun dynLambda!23058 (Int Int) Int)

(assert (=> b!4955117 (< (dynLambda!23057 order!26039 (toValue!11244 (transformation!8293 (h!63591 rulesArg!259)))) (dynLambda!23058 order!26041 lambda!247076))))

(declare-fun order!26043 () Int)

(declare-fun dynLambda!23059 (Int Int) Int)

(assert (=> b!4955117 (< (dynLambda!23059 order!26043 (toChars!11103 (transformation!8293 (h!63591 rulesArg!259)))) (dynLambda!23058 order!26041 lambda!247076))))

(declare-fun d!1595488 () Bool)

(declare-fun e!3096163 () Bool)

(assert (=> d!1595488 e!3096163))

(declare-fun res!2114073 () Bool)

(assert (=> d!1595488 (=> (not res!2114073) (not e!3096163))))

(declare-fun lt!2045048 () Option!14259)

(declare-fun isDefined!11210 (Option!14259) Bool)

(declare-datatypes ((tuple2!61684 0))(
  ( (tuple2!61685 (_1!34145 Token!15086) (_2!34145 List!57266)) )
))
(declare-datatypes ((Option!14261 0))(
  ( (None!14260) (Some!14260 (v!50245 tuple2!61684)) )
))
(declare-fun isDefined!11211 (Option!14261) Bool)

(declare-fun maxPrefixOneRule!3599 (LexerInterface!7885 Rule!16386 List!57266) Option!14261)

(assert (=> d!1595488 (= res!2114073 (= (isDefined!11210 lt!2045048) (isDefined!11211 (maxPrefixOneRule!3599 thiss!15247 (h!63591 rulesArg!259) (list!18230 input!1342)))))))

(declare-fun e!3096165 () Option!14259)

(assert (=> d!1595488 (= lt!2045048 e!3096165)))

(declare-fun c!846075 () Bool)

(declare-datatypes ((tuple2!61686 0))(
  ( (tuple2!61687 (_1!34146 BalanceConc!29520) (_2!34146 BalanceConc!29520)) )
))
(declare-fun lt!2045045 () tuple2!61686)

(declare-fun isEmpty!30727 (BalanceConc!29520) Bool)

(assert (=> d!1595488 (= c!846075 (isEmpty!30727 (_1!34146 lt!2045045)))))

(declare-fun findLongestMatchWithZipperSequenceV2!138 (Regex!13526 BalanceConc!29520 BalanceConc!29520) tuple2!61686)

(assert (=> d!1595488 (= lt!2045045 (findLongestMatchWithZipperSequenceV2!138 (regex!8293 (h!63591 rulesArg!259)) input!1342 totalInput!464))))

(assert (=> d!1595488 (ruleValid!3771 thiss!15247 (h!63591 rulesArg!259))))

(assert (=> d!1595488 (= (maxPrefixOneRuleZipperSequenceV2!277 thiss!15247 (h!63591 rulesArg!259) input!1342 totalInput!464) lt!2045048)))

(declare-fun b!4955099 () Bool)

(declare-fun e!3096164 () Bool)

(declare-fun lt!2045052 () List!57266)

(declare-fun matchR!6606 (Regex!13526 List!57266) Bool)

(declare-datatypes ((tuple2!61688 0))(
  ( (tuple2!61689 (_1!34147 List!57266) (_2!34147 List!57266)) )
))
(declare-fun findLongestMatchInner!1829 (Regex!13526 List!57266 Int List!57266 List!57266 Int) tuple2!61688)

(declare-fun size!37909 (List!57266) Int)

(assert (=> b!4955099 (= e!3096164 (matchR!6606 (regex!8293 (h!63591 rulesArg!259)) (_1!34147 (findLongestMatchInner!1829 (regex!8293 (h!63591 rulesArg!259)) Nil!57142 (size!37909 Nil!57142) lt!2045052 lt!2045052 (size!37909 lt!2045052)))))))

(declare-fun b!4955100 () Bool)

(declare-fun e!3096162 () Bool)

(declare-fun e!3096166 () Bool)

(assert (=> b!4955100 (= e!3096162 e!3096166)))

(declare-fun res!2114070 () Bool)

(assert (=> b!4955100 (=> (not res!2114070) (not e!3096166))))

(declare-fun get!19750 (Option!14259) tuple2!61680)

(declare-fun get!19751 (Option!14261) tuple2!61684)

(assert (=> b!4955100 (= res!2114070 (= (_1!34143 (get!19750 lt!2045048)) (_1!34145 (get!19751 (maxPrefixOneRule!3599 thiss!15247 (h!63591 rulesArg!259) (list!18230 input!1342))))))))

(declare-fun apply!13874 (TokenValueInjection!16514 BalanceConc!29520) TokenValue!8603)

(declare-fun size!37910 (BalanceConc!29520) Int)

(assert (=> b!4955101 (= e!3096165 (Some!14258 (tuple2!61681 (Token!15087 (apply!13874 (transformation!8293 (h!63591 rulesArg!259)) (_1!34146 lt!2045045)) (h!63591 rulesArg!259) (size!37910 (_1!34146 lt!2045045)) (list!18230 (_1!34146 lt!2045045))) (_2!34146 lt!2045045))))))

(assert (=> b!4955101 (= lt!2045052 (list!18230 input!1342))))

(declare-fun lt!2045046 () Unit!148036)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1790 (Regex!13526 List!57266) Unit!148036)

(assert (=> b!4955101 (= lt!2045046 (longestMatchIsAcceptedByMatchOrIsEmpty!1790 (regex!8293 (h!63591 rulesArg!259)) lt!2045052))))

(declare-fun res!2114072 () Bool)

(declare-fun isEmpty!30728 (List!57266) Bool)

(assert (=> b!4955101 (= res!2114072 (isEmpty!30728 (_1!34147 (findLongestMatchInner!1829 (regex!8293 (h!63591 rulesArg!259)) Nil!57142 (size!37909 Nil!57142) lt!2045052 lt!2045052 (size!37909 lt!2045052)))))))

(assert (=> b!4955101 (=> res!2114072 e!3096164)))

(assert (=> b!4955101 e!3096164))

(declare-fun lt!2045050 () Unit!148036)

(assert (=> b!4955101 (= lt!2045050 lt!2045046)))

(declare-fun lt!2045044 () Unit!148036)

(declare-fun lemmaInv!1308 (TokenValueInjection!16514) Unit!148036)

(assert (=> b!4955101 (= lt!2045044 (lemmaInv!1308 (transformation!8293 (h!63591 rulesArg!259))))))

(declare-fun lt!2045047 () Unit!148036)

(declare-fun ForallOf!1201 (Int BalanceConc!29520) Unit!148036)

(assert (=> b!4955101 (= lt!2045047 (ForallOf!1201 lambda!247076 (_1!34146 lt!2045045)))))

(declare-fun lt!2045049 () Unit!148036)

(declare-fun seqFromList!6006 (List!57266) BalanceConc!29520)

(assert (=> b!4955101 (= lt!2045049 (ForallOf!1201 lambda!247076 (seqFromList!6006 (list!18230 (_1!34146 lt!2045045)))))))

(declare-fun lt!2045051 () Option!14259)

(assert (=> b!4955101 (= lt!2045051 (Some!14258 (tuple2!61681 (Token!15087 (apply!13874 (transformation!8293 (h!63591 rulesArg!259)) (_1!34146 lt!2045045)) (h!63591 rulesArg!259) (size!37910 (_1!34146 lt!2045045)) (list!18230 (_1!34146 lt!2045045))) (_2!34146 lt!2045045))))))

(declare-fun lt!2045043 () Unit!148036)

(declare-fun lemmaEqSameImage!1142 (TokenValueInjection!16514 BalanceConc!29520 BalanceConc!29520) Unit!148036)

(assert (=> b!4955101 (= lt!2045043 (lemmaEqSameImage!1142 (transformation!8293 (h!63591 rulesArg!259)) (_1!34146 lt!2045045) (seqFromList!6006 (list!18230 (_1!34146 lt!2045045)))))))

(declare-fun b!4955102 () Bool)

(assert (=> b!4955102 (= e!3096166 (= (list!18230 (_2!34143 (get!19750 lt!2045048))) (_2!34145 (get!19751 (maxPrefixOneRule!3599 thiss!15247 (h!63591 rulesArg!259) (list!18230 input!1342))))))))

(declare-fun b!4955103 () Bool)

(assert (=> b!4955103 (= e!3096163 e!3096162)))

(declare-fun res!2114071 () Bool)

(assert (=> b!4955103 (=> res!2114071 e!3096162)))

(assert (=> b!4955103 (= res!2114071 (not (isDefined!11210 lt!2045048)))))

(declare-fun b!4955104 () Bool)

(assert (=> b!4955104 (= e!3096165 None!14258)))

(assert (= (and d!1595488 c!846075) b!4955104))

(assert (= (and d!1595488 (not c!846075)) b!4955101))

(assert (= (and b!4955101 (not res!2114072)) b!4955099))

(assert (= (and d!1595488 res!2114073) b!4955103))

(assert (= (and b!4955103 (not res!2114071)) b!4955100))

(assert (= (and b!4955100 res!2114070) b!4955102))

(declare-fun m!5979734 () Bool)

(assert (=> b!4955101 m!5979734))

(declare-fun m!5979736 () Bool)

(assert (=> b!4955101 m!5979736))

(declare-fun m!5979738 () Bool)

(assert (=> b!4955101 m!5979738))

(declare-fun m!5979740 () Bool)

(assert (=> b!4955101 m!5979740))

(declare-fun m!5979742 () Bool)

(assert (=> b!4955101 m!5979742))

(assert (=> b!4955101 m!5979738))

(declare-fun m!5979744 () Bool)

(assert (=> b!4955101 m!5979744))

(assert (=> b!4955101 m!5979742))

(declare-fun m!5979746 () Bool)

(assert (=> b!4955101 m!5979746))

(declare-fun m!5979748 () Bool)

(assert (=> b!4955101 m!5979748))

(declare-fun m!5979750 () Bool)

(assert (=> b!4955101 m!5979750))

(declare-fun m!5979752 () Bool)

(assert (=> b!4955101 m!5979752))

(assert (=> b!4955101 m!5979738))

(declare-fun m!5979754 () Bool)

(assert (=> b!4955101 m!5979754))

(assert (=> b!4955101 m!5979748))

(assert (=> b!4955101 m!5979746))

(declare-fun m!5979756 () Bool)

(assert (=> b!4955101 m!5979756))

(declare-fun m!5979758 () Bool)

(assert (=> b!4955101 m!5979758))

(assert (=> b!4955101 m!5979636))

(declare-fun m!5979760 () Bool)

(assert (=> b!4955100 m!5979760))

(assert (=> b!4955100 m!5979636))

(assert (=> b!4955100 m!5979636))

(declare-fun m!5979762 () Bool)

(assert (=> b!4955100 m!5979762))

(assert (=> b!4955100 m!5979762))

(declare-fun m!5979764 () Bool)

(assert (=> b!4955100 m!5979764))

(assert (=> b!4955099 m!5979746))

(assert (=> b!4955099 m!5979748))

(assert (=> b!4955099 m!5979746))

(assert (=> b!4955099 m!5979748))

(assert (=> b!4955099 m!5979750))

(declare-fun m!5979766 () Bool)

(assert (=> b!4955099 m!5979766))

(assert (=> b!4955102 m!5979760))

(assert (=> b!4955102 m!5979636))

(assert (=> b!4955102 m!5979762))

(declare-fun m!5979768 () Bool)

(assert (=> b!4955102 m!5979768))

(assert (=> b!4955102 m!5979636))

(assert (=> b!4955102 m!5979762))

(assert (=> b!4955102 m!5979764))

(declare-fun m!5979770 () Bool)

(assert (=> d!1595488 m!5979770))

(assert (=> d!1595488 m!5979636))

(assert (=> d!1595488 m!5979762))

(assert (=> d!1595488 m!5979708))

(assert (=> d!1595488 m!5979762))

(declare-fun m!5979772 () Bool)

(assert (=> d!1595488 m!5979772))

(declare-fun m!5979774 () Bool)

(assert (=> d!1595488 m!5979774))

(assert (=> d!1595488 m!5979636))

(declare-fun m!5979776 () Bool)

(assert (=> d!1595488 m!5979776))

(assert (=> b!4955103 m!5979774))

(assert (=> b!4955002 d!1595488))

(declare-fun d!1595502 () Bool)

(declare-fun e!3096180 () Bool)

(assert (=> d!1595502 e!3096180))

(declare-fun res!2114081 () Bool)

(assert (=> d!1595502 (=> res!2114081 e!3096180)))

(declare-fun lt!2045056 () Bool)

(assert (=> d!1595502 (= res!2114081 (not lt!2045056))))

(declare-fun drop!2319 (List!57266 Int) List!57266)

(assert (=> d!1595502 (= lt!2045056 (= lt!2044997 (drop!2319 (list!18230 totalInput!464) (- (size!37909 (list!18230 totalInput!464)) (size!37909 lt!2044997)))))))

(assert (=> d!1595502 (= (isSuffix!1092 lt!2044997 (list!18230 totalInput!464)) lt!2045056)))

(declare-fun b!4955120 () Bool)

(assert (=> b!4955120 (= e!3096180 (>= (size!37909 (list!18230 totalInput!464)) (size!37909 lt!2044997)))))

(assert (= (and d!1595502 (not res!2114081)) b!4955120))

(assert (=> d!1595502 m!5979632))

(declare-fun m!5979778 () Bool)

(assert (=> d!1595502 m!5979778))

(declare-fun m!5979780 () Bool)

(assert (=> d!1595502 m!5979780))

(assert (=> d!1595502 m!5979632))

(declare-fun m!5979782 () Bool)

(assert (=> d!1595502 m!5979782))

(assert (=> b!4955120 m!5979632))

(assert (=> b!4955120 m!5979778))

(assert (=> b!4955120 m!5979780))

(assert (=> b!4954996 d!1595502))

(declare-fun d!1595504 () Bool)

(declare-fun list!18232 (Conc!15045) List!57266)

(assert (=> d!1595504 (= (list!18230 totalInput!464) (list!18232 (c!846062 totalInput!464)))))

(declare-fun bs!1182488 () Bool)

(assert (= bs!1182488 d!1595504))

(declare-fun m!5979784 () Bool)

(assert (=> bs!1182488 m!5979784))

(assert (=> b!4954996 d!1595504))

(declare-fun d!1595506 () Bool)

(assert (=> d!1595506 (= (list!18230 input!1342) (list!18232 (c!846062 input!1342)))))

(declare-fun bs!1182489 () Bool)

(assert (= bs!1182489 d!1595506))

(declare-fun m!5979786 () Bool)

(assert (=> bs!1182489 m!5979786))

(assert (=> b!4954996 d!1595506))

(declare-fun d!1595508 () Bool)

(declare-fun c!846076 () Bool)

(assert (=> d!1595508 (= c!846076 (is-Node!15045 (c!846062 totalInput!464)))))

(declare-fun e!3096181 () Bool)

(assert (=> d!1595508 (= (inv!74524 (c!846062 totalInput!464)) e!3096181)))

(declare-fun b!4955121 () Bool)

(assert (=> b!4955121 (= e!3096181 (inv!74528 (c!846062 totalInput!464)))))

(declare-fun b!4955122 () Bool)

(declare-fun e!3096182 () Bool)

(assert (=> b!4955122 (= e!3096181 e!3096182)))

(declare-fun res!2114082 () Bool)

(assert (=> b!4955122 (= res!2114082 (not (is-Leaf!25017 (c!846062 totalInput!464))))))

(assert (=> b!4955122 (=> res!2114082 e!3096182)))

(declare-fun b!4955123 () Bool)

(assert (=> b!4955123 (= e!3096182 (inv!74529 (c!846062 totalInput!464)))))

(assert (= (and d!1595508 c!846076) b!4955121))

(assert (= (and d!1595508 (not c!846076)) b!4955122))

(assert (= (and b!4955122 (not res!2114082)) b!4955123))

(declare-fun m!5979788 () Bool)

(assert (=> b!4955121 m!5979788))

(declare-fun m!5979790 () Bool)

(assert (=> b!4955123 m!5979790))

(assert (=> b!4955001 d!1595508))

(declare-fun d!1595510 () Bool)

(assert (=> d!1595510 (= (inv!74519 (tag!9157 (h!63591 rulesArg!259))) (= (mod (str.len (value!265793 (tag!9157 (h!63591 rulesArg!259)))) 2) 0))))

(assert (=> b!4954995 d!1595510))

(declare-fun d!1595512 () Bool)

(declare-fun res!2114085 () Bool)

(declare-fun e!3096185 () Bool)

(assert (=> d!1595512 (=> (not res!2114085) (not e!3096185))))

(declare-fun semiInverseModEq!3670 (Int Int) Bool)

(assert (=> d!1595512 (= res!2114085 (semiInverseModEq!3670 (toChars!11103 (transformation!8293 (h!63591 rulesArg!259))) (toValue!11244 (transformation!8293 (h!63591 rulesArg!259)))))))

(assert (=> d!1595512 (= (inv!74522 (transformation!8293 (h!63591 rulesArg!259))) e!3096185)))

(declare-fun b!4955126 () Bool)

(declare-fun equivClasses!3518 (Int Int) Bool)

(assert (=> b!4955126 (= e!3096185 (equivClasses!3518 (toChars!11103 (transformation!8293 (h!63591 rulesArg!259))) (toValue!11244 (transformation!8293 (h!63591 rulesArg!259)))))))

(assert (= (and d!1595512 res!2114085) b!4955126))

(declare-fun m!5979792 () Bool)

(assert (=> d!1595512 m!5979792))

(declare-fun m!5979794 () Bool)

(assert (=> b!4955126 m!5979794))

(assert (=> b!4954995 d!1595512))

(declare-fun d!1595514 () Bool)

(assert (=> d!1595514 (= (isEmpty!30725 rulesArg!259) (is-Nil!57143 rulesArg!259))))

(assert (=> b!4955000 d!1595514))

(declare-fun d!1595516 () Bool)

(declare-fun isBalanced!4171 (Conc!15045) Bool)

(assert (=> d!1595516 (= (inv!74523 input!1342) (isBalanced!4171 (c!846062 input!1342)))))

(declare-fun bs!1182490 () Bool)

(assert (= bs!1182490 d!1595516))

(declare-fun m!5979796 () Bool)

(assert (=> bs!1182490 m!5979796))

(assert (=> start!522280 d!1595516))

(declare-fun d!1595518 () Bool)

(assert (=> d!1595518 (= (inv!74523 totalInput!464) (isBalanced!4171 (c!846062 totalInput!464)))))

(declare-fun bs!1182491 () Bool)

(assert (= bs!1182491 d!1595518))

(declare-fun m!5979798 () Bool)

(assert (=> bs!1182491 m!5979798))

(assert (=> start!522280 d!1595518))

(declare-fun d!1595520 () Bool)

(declare-fun e!3096193 () Bool)

(assert (=> d!1595520 e!3096193))

(declare-fun res!2114096 () Bool)

(assert (=> d!1595520 (=> res!2114096 e!3096193)))

(declare-fun lt!2045059 () Bool)

(assert (=> d!1595520 (= res!2114096 (not lt!2045059))))

(declare-fun e!3096192 () Bool)

(assert (=> d!1595520 (= lt!2045059 e!3096192)))

(declare-fun res!2114094 () Bool)

(assert (=> d!1595520 (=> res!2114094 e!3096192)))

(assert (=> d!1595520 (= res!2114094 (is-Nil!57142 lt!2044997))))

(assert (=> d!1595520 (= (isPrefix!5146 lt!2044997 lt!2044997) lt!2045059)))

(declare-fun b!4955138 () Bool)

(assert (=> b!4955138 (= e!3096193 (>= (size!37909 lt!2044997) (size!37909 lt!2044997)))))

(declare-fun b!4955136 () Bool)

(declare-fun res!2114095 () Bool)

(declare-fun e!3096194 () Bool)

(assert (=> b!4955136 (=> (not res!2114095) (not e!3096194))))

(declare-fun head!10639 (List!57266) C!27302)

(assert (=> b!4955136 (= res!2114095 (= (head!10639 lt!2044997) (head!10639 lt!2044997)))))

(declare-fun b!4955137 () Bool)

(declare-fun tail!9772 (List!57266) List!57266)

(assert (=> b!4955137 (= e!3096194 (isPrefix!5146 (tail!9772 lt!2044997) (tail!9772 lt!2044997)))))

(declare-fun b!4955135 () Bool)

(assert (=> b!4955135 (= e!3096192 e!3096194)))

(declare-fun res!2114097 () Bool)

(assert (=> b!4955135 (=> (not res!2114097) (not e!3096194))))

(assert (=> b!4955135 (= res!2114097 (not (is-Nil!57142 lt!2044997)))))

(assert (= (and d!1595520 (not res!2114094)) b!4955135))

(assert (= (and b!4955135 res!2114097) b!4955136))

(assert (= (and b!4955136 res!2114095) b!4955137))

(assert (= (and d!1595520 (not res!2114096)) b!4955138))

(assert (=> b!4955138 m!5979780))

(assert (=> b!4955138 m!5979780))

(declare-fun m!5979800 () Bool)

(assert (=> b!4955136 m!5979800))

(assert (=> b!4955136 m!5979800))

(declare-fun m!5979802 () Bool)

(assert (=> b!4955137 m!5979802))

(assert (=> b!4955137 m!5979802))

(assert (=> b!4955137 m!5979802))

(assert (=> b!4955137 m!5979802))

(declare-fun m!5979804 () Bool)

(assert (=> b!4955137 m!5979804))

(assert (=> b!4954993 d!1595520))

(declare-fun d!1595522 () Bool)

(assert (=> d!1595522 (isPrefix!5146 lt!2044997 lt!2044997)))

(declare-fun lt!2045062 () Unit!148036)

(declare-fun choose!36619 (List!57266 List!57266) Unit!148036)

(assert (=> d!1595522 (= lt!2045062 (choose!36619 lt!2044997 lt!2044997))))

(assert (=> d!1595522 (= (lemmaIsPrefixRefl!3470 lt!2044997 lt!2044997) lt!2045062)))

(declare-fun bs!1182492 () Bool)

(assert (= bs!1182492 d!1595522))

(assert (=> bs!1182492 m!5979628))

(declare-fun m!5979806 () Bool)

(assert (=> bs!1182492 m!5979806))

(assert (=> b!4954993 d!1595522))

(declare-fun tp!1389367 () Bool)

(declare-fun b!4955147 () Bool)

(declare-fun e!3096199 () Bool)

(declare-fun tp!1389369 () Bool)

(assert (=> b!4955147 (= e!3096199 (and (inv!74524 (left!41686 (c!846062 input!1342))) tp!1389369 (inv!74524 (right!42016 (c!846062 input!1342))) tp!1389367))))

(declare-fun b!4955149 () Bool)

(declare-fun e!3096200 () Bool)

(declare-fun tp!1389368 () Bool)

(assert (=> b!4955149 (= e!3096200 tp!1389368)))

(declare-fun b!4955148 () Bool)

(declare-fun inv!74530 (IArray!30151) Bool)

(assert (=> b!4955148 (= e!3096199 (and (inv!74530 (xs!18371 (c!846062 input!1342))) e!3096200))))

(assert (=> b!4954998 (= tp!1389337 (and (inv!74524 (c!846062 input!1342)) e!3096199))))

(assert (= (and b!4954998 (is-Node!15045 (c!846062 input!1342))) b!4955147))

(assert (= b!4955148 b!4955149))

(assert (= (and b!4954998 (is-Leaf!25017 (c!846062 input!1342))) b!4955148))

(declare-fun m!5979808 () Bool)

(assert (=> b!4955147 m!5979808))

(declare-fun m!5979810 () Bool)

(assert (=> b!4955147 m!5979810))

(declare-fun m!5979812 () Bool)

(assert (=> b!4955148 m!5979812))

(assert (=> b!4954998 m!5979622))

(declare-fun e!3096201 () Bool)

(declare-fun tp!1389370 () Bool)

(declare-fun tp!1389372 () Bool)

(declare-fun b!4955150 () Bool)

(assert (=> b!4955150 (= e!3096201 (and (inv!74524 (left!41686 (c!846062 totalInput!464))) tp!1389372 (inv!74524 (right!42016 (c!846062 totalInput!464))) tp!1389370))))

(declare-fun b!4955152 () Bool)

(declare-fun e!3096202 () Bool)

(declare-fun tp!1389371 () Bool)

(assert (=> b!4955152 (= e!3096202 tp!1389371)))

(declare-fun b!4955151 () Bool)

(assert (=> b!4955151 (= e!3096201 (and (inv!74530 (xs!18371 (c!846062 totalInput!464))) e!3096202))))

(assert (=> b!4955001 (= tp!1389341 (and (inv!74524 (c!846062 totalInput!464)) e!3096201))))

(assert (= (and b!4955001 (is-Node!15045 (c!846062 totalInput!464))) b!4955150))

(assert (= b!4955151 b!4955152))

(assert (= (and b!4955001 (is-Leaf!25017 (c!846062 totalInput!464))) b!4955151))

(declare-fun m!5979814 () Bool)

(assert (=> b!4955150 m!5979814))

(declare-fun m!5979816 () Bool)

(assert (=> b!4955150 m!5979816))

(declare-fun m!5979818 () Bool)

(assert (=> b!4955151 m!5979818))

(assert (=> b!4955001 m!5979644))

(declare-fun b!4955164 () Bool)

(declare-fun e!3096205 () Bool)

(declare-fun tp!1389387 () Bool)

(declare-fun tp!1389386 () Bool)

(assert (=> b!4955164 (= e!3096205 (and tp!1389387 tp!1389386))))

(declare-fun b!4955165 () Bool)

(declare-fun tp!1389384 () Bool)

(assert (=> b!4955165 (= e!3096205 tp!1389384)))

(declare-fun b!4955163 () Bool)

(declare-fun tp_is_empty!36269 () Bool)

(assert (=> b!4955163 (= e!3096205 tp_is_empty!36269)))

(declare-fun b!4955166 () Bool)

(declare-fun tp!1389385 () Bool)

(declare-fun tp!1389383 () Bool)

(assert (=> b!4955166 (= e!3096205 (and tp!1389385 tp!1389383))))

(assert (=> b!4954995 (= tp!1389338 e!3096205)))

(assert (= (and b!4954995 (is-ElementMatch!13526 (regex!8293 (h!63591 rulesArg!259)))) b!4955163))

(assert (= (and b!4954995 (is-Concat!22130 (regex!8293 (h!63591 rulesArg!259)))) b!4955164))

(assert (= (and b!4954995 (is-Star!13526 (regex!8293 (h!63591 rulesArg!259)))) b!4955165))

(assert (= (and b!4954995 (is-Union!13526 (regex!8293 (h!63591 rulesArg!259)))) b!4955166))

(declare-fun b!4955177 () Bool)

(declare-fun b_free!132179 () Bool)

(declare-fun b_next!132969 () Bool)

(assert (=> b!4955177 (= b_free!132179 (not b_next!132969))))

(declare-fun tp!1389396 () Bool)

(declare-fun b_and!347031 () Bool)

(assert (=> b!4955177 (= tp!1389396 b_and!347031)))

(declare-fun b_free!132181 () Bool)

(declare-fun b_next!132971 () Bool)

(assert (=> b!4955177 (= b_free!132181 (not b_next!132971))))

(declare-fun tp!1389399 () Bool)

(declare-fun b_and!347033 () Bool)

(assert (=> b!4955177 (= tp!1389399 b_and!347033)))

(declare-fun e!3096217 () Bool)

(assert (=> b!4955177 (= e!3096217 (and tp!1389396 tp!1389399))))

(declare-fun b!4955176 () Bool)

(declare-fun e!3096216 () Bool)

(declare-fun tp!1389398 () Bool)

(assert (=> b!4955176 (= e!3096216 (and tp!1389398 (inv!74519 (tag!9157 (h!63591 (t!367833 rulesArg!259)))) (inv!74522 (transformation!8293 (h!63591 (t!367833 rulesArg!259)))) e!3096217))))

(declare-fun b!4955175 () Bool)

(declare-fun e!3096215 () Bool)

(declare-fun tp!1389397 () Bool)

(assert (=> b!4955175 (= e!3096215 (and e!3096216 tp!1389397))))

(assert (=> b!4954999 (= tp!1389342 e!3096215)))

(assert (= b!4955176 b!4955177))

(assert (= b!4955175 b!4955176))

(assert (= (and b!4954999 (is-Cons!57143 (t!367833 rulesArg!259))) b!4955175))

(declare-fun m!5979820 () Bool)

(assert (=> b!4955176 m!5979820))

(declare-fun m!5979822 () Bool)

(assert (=> b!4955176 m!5979822))

(push 1)

(assert (not b!4955150))

(assert (not b_next!132963))

(assert (not b!4955165))

(assert (not b!4955164))

(assert (not b!4955175))

(assert (not d!1595502))

(assert b_and!347031)

(assert (not b!4955078))

(assert (not b_next!132961))

(assert (not b!4955039))

(assert b_and!347025)

(assert (not b!4955103))

(assert (not d!1595486))

(assert (not b!4955123))

(assert (not d!1595504))

(assert (not d!1595470))

(assert b_and!347023)

(assert (not b!4955152))

(assert (not d!1595488))

(assert (not b!4955136))

(assert (not b!4955081))

(assert (not b!4954998))

(assert (not b!4955176))

(assert (not b!4955102))

(assert (not b!4955100))

(assert (not b!4955126))

(assert (not b!4955148))

(assert (not d!1595506))

(assert tp_is_empty!36269)

(assert (not b!4955099))

(assert (not b!4955138))

(assert (not b!4955121))

(assert (not d!1595512))

(assert (not b!4955166))

(assert (not d!1595516))

(assert (not b!4955082))

(assert (not b!4955001))

(assert (not b!4955151))

(assert (not b!4955149))

(assert (not b_next!132971))

(assert (not b!4955137))

(assert (not b!4955041))

(assert (not b_next!132969))

(assert b_and!347033)

(assert (not d!1595518))

(assert (not b!4955147))

(assert (not d!1595522))

(assert (not b!4955101))

(assert (not b!4955120))

(assert (not b!4955077))

(check-sat)

(pop 1)

(push 1)

(assert b_and!347025)

(assert (not b_next!132963))

(assert b_and!347023)

(assert b_and!347031)

(assert (not b_next!132971))

(assert (not b_next!132961))

(assert (not b_next!132969))

(assert b_and!347033)

(check-sat)

(pop 1)


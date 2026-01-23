; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522590 () Bool)

(assert start!522590)

(declare-fun b!4957580 () Bool)

(declare-fun b_free!132359 () Bool)

(declare-fun b_next!133149 () Bool)

(assert (=> b!4957580 (= b_free!132359 (not b_next!133149))))

(declare-fun tp!1390355 () Bool)

(declare-fun b_and!347211 () Bool)

(assert (=> b!4957580 (= tp!1390355 b_and!347211)))

(declare-fun b_free!132361 () Bool)

(declare-fun b_next!133151 () Bool)

(assert (=> b!4957580 (= b_free!132361 (not b_next!133151))))

(declare-fun tp!1390353 () Bool)

(declare-fun b_and!347213 () Bool)

(assert (=> b!4957580 (= tp!1390353 b_and!347213)))

(declare-fun b!4957576 () Bool)

(declare-fun e!3098148 () Bool)

(declare-fun e!3098147 () Bool)

(assert (=> b!4957576 (= e!3098148 e!3098147)))

(declare-fun res!2115460 () Bool)

(assert (=> b!4957576 (=> (not res!2115460) (not e!3098147))))

(declare-datatypes ((C!27380 0))(
  ( (C!27381 (val!23056 Int)) )
))
(declare-datatypes ((List!57382 0))(
  ( (Nil!57258) (Cons!57258 (h!63706 C!27380) (t!367948 List!57382)) )
))
(declare-fun lt!2046353 () List!57382)

(declare-datatypes ((IArray!30229 0))(
  ( (IArray!30230 (innerList!15172 List!57382)) )
))
(declare-datatypes ((Conc!15084 0))(
  ( (Node!15084 (left!41760 Conc!15084) (right!42090 Conc!15084) (csize!30398 Int) (cheight!15295 Int)) (Leaf!25075 (xs!18410 IArray!30229) (csize!30399 Int)) (Empty!15084) )
))
(declare-datatypes ((BalanceConc!29598 0))(
  ( (BalanceConc!29599 (c!846267 Conc!15084)) )
))
(declare-fun totalInput!464 () BalanceConc!29598)

(declare-fun isSuffix!1131 (List!57382 List!57382) Bool)

(declare-fun list!18277 (BalanceConc!29598) List!57382)

(assert (=> b!4957576 (= res!2115460 (isSuffix!1131 lt!2046353 (list!18277 totalInput!464)))))

(declare-fun input!1342 () BalanceConc!29598)

(assert (=> b!4957576 (= lt!2046353 (list!18277 input!1342))))

(declare-fun b!4957577 () Bool)

(declare-fun res!2115458 () Bool)

(assert (=> b!4957577 (=> (not res!2115458) (not e!3098148))))

(declare-datatypes ((LexerInterface!7924 0))(
  ( (LexerInterfaceExt!7921 (__x!34577 Int)) (Lexer!7922) )
))
(declare-fun thiss!15247 () LexerInterface!7924)

(declare-datatypes ((List!57383 0))(
  ( (Nil!57259) (Cons!57259 (h!63707 (_ BitVec 16)) (t!367949 List!57383)) )
))
(declare-datatypes ((TokenValue!8642 0))(
  ( (FloatLiteralValue!17284 (text!60939 List!57383)) (TokenValueExt!8641 (__x!34578 Int)) (Broken!43210 (value!266878 List!57383)) (Object!8765) (End!8642) (Def!8642) (Underscore!8642) (Match!8642) (Else!8642) (Error!8642) (Case!8642) (If!8642) (Extends!8642) (Abstract!8642) (Class!8642) (Val!8642) (DelimiterValue!17284 (del!8702 List!57383)) (KeywordValue!8648 (value!266879 List!57383)) (CommentValue!17284 (value!266880 List!57383)) (WhitespaceValue!17284 (value!266881 List!57383)) (IndentationValue!8642 (value!266882 List!57383)) (String!65083) (Int32!8642) (Broken!43211 (value!266883 List!57383)) (Boolean!8643) (Unit!148152) (OperatorValue!8645 (op!8702 List!57383)) (IdentifierValue!17284 (value!266884 List!57383)) (IdentifierValue!17285 (value!266885 List!57383)) (WhitespaceValue!17285 (value!266886 List!57383)) (True!17284) (False!17284) (Broken!43212 (value!266887 List!57383)) (Broken!43213 (value!266888 List!57383)) (True!17285) (RightBrace!8642) (RightBracket!8642) (Colon!8642) (Null!8642) (Comma!8642) (LeftBracket!8642) (False!17285) (LeftBrace!8642) (ImaginaryLiteralValue!8642 (text!60940 List!57383)) (StringLiteralValue!25926 (value!266889 List!57383)) (EOFValue!8642 (value!266890 List!57383)) (IdentValue!8642 (value!266891 List!57383)) (DelimiterValue!17285 (value!266892 List!57383)) (DedentValue!8642 (value!266893 List!57383)) (NewLineValue!8642 (value!266894 List!57383)) (IntegerValue!25926 (value!266895 (_ BitVec 32)) (text!60941 List!57383)) (IntegerValue!25927 (value!266896 Int) (text!60942 List!57383)) (Times!8642) (Or!8642) (Equal!8642) (Minus!8642) (Broken!43214 (value!266897 List!57383)) (And!8642) (Div!8642) (LessEqual!8642) (Mod!8642) (Concat!22207) (Not!8642) (Plus!8642) (SpaceValue!8642 (value!266898 List!57383)) (IntegerValue!25928 (value!266899 Int) (text!60943 List!57383)) (StringLiteralValue!25927 (text!60944 List!57383)) (FloatLiteralValue!17285 (text!60945 List!57383)) (BytesLiteralValue!8642 (value!266900 List!57383)) (CommentValue!17285 (value!266901 List!57383)) (StringLiteralValue!25928 (value!266902 List!57383)) (ErrorTokenValue!8642 (msg!8703 List!57383)) )
))
(declare-datatypes ((Regex!13565 0))(
  ( (ElementMatch!13565 (c!846268 C!27380)) (Concat!22208 (regOne!27642 Regex!13565) (regTwo!27642 Regex!13565)) (EmptyExpr!13565) (Star!13565 (reg!13894 Regex!13565)) (EmptyLang!13565) (Union!13565 (regOne!27643 Regex!13565) (regTwo!27643 Regex!13565)) )
))
(declare-datatypes ((String!65084 0))(
  ( (String!65085 (value!266903 String)) )
))
(declare-datatypes ((TokenValueInjection!16592 0))(
  ( (TokenValueInjection!16593 (toValue!11283 Int) (toChars!11142 Int)) )
))
(declare-datatypes ((Rule!16464 0))(
  ( (Rule!16465 (regex!8332 Regex!13565) (tag!9196 String!65084) (isSeparator!8332 Bool) (transformation!8332 TokenValueInjection!16592)) )
))
(declare-datatypes ((List!57384 0))(
  ( (Nil!57260) (Cons!57260 (h!63708 Rule!16464) (t!367950 List!57384)) )
))
(declare-fun rulesArg!259 () List!57384)

(declare-fun rulesValidInductive!3235 (LexerInterface!7924 List!57384) Bool)

(assert (=> b!4957577 (= res!2115458 (rulesValidInductive!3235 thiss!15247 rulesArg!259))))

(declare-fun b!4957578 () Bool)

(declare-fun e!3098149 () Bool)

(declare-fun tp!1390354 () Bool)

(declare-fun inv!74718 (Conc!15084) Bool)

(assert (=> b!4957578 (= e!3098149 (and (inv!74718 (c!846267 totalInput!464)) tp!1390354))))

(declare-fun b!4957579 () Bool)

(declare-fun e!3098152 () Bool)

(assert (=> b!4957579 (= e!3098147 (not e!3098152))))

(declare-fun res!2115461 () Bool)

(assert (=> b!4957579 (=> res!2115461 e!3098152)))

(get-info :version)

(assert (=> b!4957579 (= res!2115461 (or (and ((_ is Cons!57260) rulesArg!259) ((_ is Nil!57260) (t!367950 rulesArg!259))) (not ((_ is Cons!57260) rulesArg!259))))))

(declare-fun isPrefix!5185 (List!57382 List!57382) Bool)

(assert (=> b!4957579 (isPrefix!5185 lt!2046353 lt!2046353)))

(declare-datatypes ((Unit!148153 0))(
  ( (Unit!148154) )
))
(declare-fun lt!2046349 () Unit!148153)

(declare-fun lemmaIsPrefixRefl!3509 (List!57382 List!57382) Unit!148153)

(assert (=> b!4957579 (= lt!2046349 (lemmaIsPrefixRefl!3509 lt!2046353 lt!2046353))))

(declare-fun e!3098155 () Bool)

(assert (=> b!4957580 (= e!3098155 (and tp!1390355 tp!1390353))))

(declare-fun b!4957581 () Bool)

(declare-fun res!2115463 () Bool)

(assert (=> b!4957581 (=> (not res!2115463) (not e!3098148))))

(declare-fun isEmpty!30788 (List!57384) Bool)

(assert (=> b!4957581 (= res!2115463 (not (isEmpty!30788 rulesArg!259)))))

(declare-fun b!4957582 () Bool)

(declare-fun e!3098150 () Bool)

(declare-fun e!3098146 () Bool)

(declare-fun tp!1390356 () Bool)

(assert (=> b!4957582 (= e!3098150 (and e!3098146 tp!1390356))))

(declare-fun b!4957583 () Bool)

(declare-fun e!3098154 () Bool)

(declare-fun lt!2046354 () Bool)

(declare-fun lt!2046351 () Bool)

(assert (=> b!4957583 (= e!3098154 (or (not (= lt!2046354 lt!2046351)) (not lt!2046354) lt!2046351))))

(declare-datatypes ((Token!15164 0))(
  ( (Token!15165 (value!266904 TokenValue!8642) (rule!11552 Rule!16464) (size!37962 Int) (originalCharacters!8613 List!57382)) )
))
(declare-datatypes ((tuple2!61860 0))(
  ( (tuple2!61861 (_1!34233 Token!15164) (_2!34233 List!57382)) )
))
(declare-datatypes ((Option!14333 0))(
  ( (None!14332) (Some!14332 (v!50317 tuple2!61860)) )
))
(declare-fun isDefined!11256 (Option!14333) Bool)

(declare-fun maxPrefixZipper!729 (LexerInterface!7924 List!57384 List!57382) Option!14333)

(assert (=> b!4957583 (= lt!2046351 (isDefined!11256 (maxPrefixZipper!729 thiss!15247 rulesArg!259 lt!2046353)))))

(declare-datatypes ((tuple2!61862 0))(
  ( (tuple2!61863 (_1!34234 Token!15164) (_2!34234 BalanceConc!29598)) )
))
(declare-datatypes ((Option!14334 0))(
  ( (None!14333) (Some!14333 (v!50318 tuple2!61862)) )
))
(declare-fun lt!2046352 () Option!14334)

(declare-fun isDefined!11257 (Option!14334) Bool)

(assert (=> b!4957583 (= lt!2046354 (isDefined!11257 lt!2046352))))

(declare-fun res!2115459 () Bool)

(assert (=> start!522590 (=> (not res!2115459) (not e!3098148))))

(assert (=> start!522590 (= res!2115459 ((_ is Lexer!7922) thiss!15247))))

(assert (=> start!522590 e!3098148))

(assert (=> start!522590 true))

(assert (=> start!522590 e!3098150))

(declare-fun e!3098151 () Bool)

(declare-fun inv!74719 (BalanceConc!29598) Bool)

(assert (=> start!522590 (and (inv!74719 input!1342) e!3098151)))

(assert (=> start!522590 (and (inv!74719 totalInput!464) e!3098149)))

(declare-fun b!4957584 () Bool)

(assert (=> b!4957584 (= e!3098152 e!3098154)))

(declare-fun res!2115462 () Bool)

(assert (=> b!4957584 (=> res!2115462 e!3098154)))

(declare-fun lt!2046350 () Option!14334)

(assert (=> b!4957584 (= res!2115462 (or (and ((_ is None!14333) lt!2046350) ((_ is None!14333) lt!2046352)) ((_ is None!14333) lt!2046352) (not ((_ is None!14333) lt!2046350))))))

(declare-fun maxPrefixZipperSequenceV2!663 (LexerInterface!7924 List!57384 BalanceConc!29598 BalanceConc!29598) Option!14334)

(assert (=> b!4957584 (= lt!2046352 (maxPrefixZipperSequenceV2!663 thiss!15247 (t!367950 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!316 (LexerInterface!7924 Rule!16464 BalanceConc!29598 BalanceConc!29598) Option!14334)

(assert (=> b!4957584 (= lt!2046350 (maxPrefixOneRuleZipperSequenceV2!316 thiss!15247 (h!63708 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4957585 () Bool)

(declare-fun tp!1390352 () Bool)

(assert (=> b!4957585 (= e!3098151 (and (inv!74718 (c!846267 input!1342)) tp!1390352))))

(declare-fun tp!1390351 () Bool)

(declare-fun b!4957586 () Bool)

(declare-fun inv!74714 (String!65084) Bool)

(declare-fun inv!74720 (TokenValueInjection!16592) Bool)

(assert (=> b!4957586 (= e!3098146 (and tp!1390351 (inv!74714 (tag!9196 (h!63708 rulesArg!259))) (inv!74720 (transformation!8332 (h!63708 rulesArg!259))) e!3098155))))

(assert (= (and start!522590 res!2115459) b!4957577))

(assert (= (and b!4957577 res!2115458) b!4957581))

(assert (= (and b!4957581 res!2115463) b!4957576))

(assert (= (and b!4957576 res!2115460) b!4957579))

(assert (= (and b!4957579 (not res!2115461)) b!4957584))

(assert (= (and b!4957584 (not res!2115462)) b!4957583))

(assert (= b!4957586 b!4957580))

(assert (= b!4957582 b!4957586))

(assert (= (and start!522590 ((_ is Cons!57260) rulesArg!259)) b!4957582))

(assert (= start!522590 b!4957585))

(assert (= start!522590 b!4957578))

(declare-fun m!5982152 () Bool)

(assert (=> b!4957576 m!5982152))

(assert (=> b!4957576 m!5982152))

(declare-fun m!5982154 () Bool)

(assert (=> b!4957576 m!5982154))

(declare-fun m!5982156 () Bool)

(assert (=> b!4957576 m!5982156))

(declare-fun m!5982158 () Bool)

(assert (=> b!4957583 m!5982158))

(assert (=> b!4957583 m!5982158))

(declare-fun m!5982160 () Bool)

(assert (=> b!4957583 m!5982160))

(declare-fun m!5982162 () Bool)

(assert (=> b!4957583 m!5982162))

(declare-fun m!5982164 () Bool)

(assert (=> b!4957577 m!5982164))

(declare-fun m!5982166 () Bool)

(assert (=> start!522590 m!5982166))

(declare-fun m!5982168 () Bool)

(assert (=> start!522590 m!5982168))

(declare-fun m!5982170 () Bool)

(assert (=> b!4957586 m!5982170))

(declare-fun m!5982172 () Bool)

(assert (=> b!4957586 m!5982172))

(declare-fun m!5982174 () Bool)

(assert (=> b!4957585 m!5982174))

(declare-fun m!5982176 () Bool)

(assert (=> b!4957584 m!5982176))

(declare-fun m!5982178 () Bool)

(assert (=> b!4957584 m!5982178))

(declare-fun m!5982180 () Bool)

(assert (=> b!4957579 m!5982180))

(declare-fun m!5982182 () Bool)

(assert (=> b!4957579 m!5982182))

(declare-fun m!5982184 () Bool)

(assert (=> b!4957578 m!5982184))

(declare-fun m!5982186 () Bool)

(assert (=> b!4957581 m!5982186))

(check-sat (not b!4957586) (not b!4957579) (not b!4957583) b_and!347211 (not b!4957578) (not b!4957584) (not b!4957585) (not b_next!133151) (not b!4957582) (not b!4957576) b_and!347213 (not b!4957581) (not b!4957577) (not b_next!133149) (not start!522590))
(check-sat b_and!347211 b_and!347213 (not b_next!133149) (not b_next!133151))

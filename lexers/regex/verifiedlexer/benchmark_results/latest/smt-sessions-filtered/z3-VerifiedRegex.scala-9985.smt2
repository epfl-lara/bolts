; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522426 () Bool)

(assert start!522426)

(declare-fun b!4956508 () Bool)

(declare-fun b_free!132303 () Bool)

(declare-fun b_next!133093 () Bool)

(assert (=> b!4956508 (= b_free!132303 (not b_next!133093))))

(declare-fun tp!1390020 () Bool)

(declare-fun b_and!347155 () Bool)

(assert (=> b!4956508 (= tp!1390020 b_and!347155)))

(declare-fun b_free!132305 () Bool)

(declare-fun b_next!133095 () Bool)

(assert (=> b!4956508 (= b_free!132305 (not b_next!133095))))

(declare-fun tp!1390016 () Bool)

(declare-fun b_and!347157 () Bool)

(assert (=> b!4956508 (= tp!1390016 b_and!347157)))

(declare-fun b!4956507 () Bool)

(declare-fun e!3097354 () Bool)

(assert (=> b!4956507 (= e!3097354 true)))

(declare-fun lt!2045741 () Bool)

(declare-fun e!3097358 () Bool)

(assert (=> b!4956507 (= lt!2045741 e!3097358)))

(declare-fun res!2114839 () Bool)

(assert (=> b!4956507 (=> res!2114839 e!3097358)))

(declare-fun lt!2045735 () Bool)

(assert (=> b!4956507 (= res!2114839 (not lt!2045735))))

(declare-fun e!3097361 () Bool)

(assert (=> b!4956508 (= e!3097361 (and tp!1390020 tp!1390016))))

(declare-fun b!4956509 () Bool)

(declare-fun res!2114843 () Bool)

(declare-fun e!3097362 () Bool)

(assert (=> b!4956509 (=> (not res!2114843) (not e!3097362))))

(declare-datatypes ((LexerInterface!7914 0))(
  ( (LexerInterfaceExt!7911 (__x!34557 Int)) (Lexer!7912) )
))
(declare-fun thiss!15247 () LexerInterface!7914)

(declare-datatypes ((List!57352 0))(
  ( (Nil!57228) (Cons!57228 (h!63676 (_ BitVec 16)) (t!367918 List!57352)) )
))
(declare-datatypes ((TokenValue!8632 0))(
  ( (FloatLiteralValue!17264 (text!60869 List!57352)) (TokenValueExt!8631 (__x!34558 Int)) (Broken!43160 (value!266593 List!57352)) (Object!8755) (End!8632) (Def!8632) (Underscore!8632) (Match!8632) (Else!8632) (Error!8632) (Case!8632) (If!8632) (Extends!8632) (Abstract!8632) (Class!8632) (Val!8632) (DelimiterValue!17264 (del!8692 List!57352)) (KeywordValue!8638 (value!266594 List!57352)) (CommentValue!17264 (value!266595 List!57352)) (WhitespaceValue!17264 (value!266596 List!57352)) (IndentationValue!8632 (value!266597 List!57352)) (String!65033) (Int32!8632) (Broken!43161 (value!266598 List!57352)) (Boolean!8633) (Unit!148122) (OperatorValue!8635 (op!8692 List!57352)) (IdentifierValue!17264 (value!266599 List!57352)) (IdentifierValue!17265 (value!266600 List!57352)) (WhitespaceValue!17265 (value!266601 List!57352)) (True!17264) (False!17264) (Broken!43162 (value!266602 List!57352)) (Broken!43163 (value!266603 List!57352)) (True!17265) (RightBrace!8632) (RightBracket!8632) (Colon!8632) (Null!8632) (Comma!8632) (LeftBracket!8632) (False!17265) (LeftBrace!8632) (ImaginaryLiteralValue!8632 (text!60870 List!57352)) (StringLiteralValue!25896 (value!266604 List!57352)) (EOFValue!8632 (value!266605 List!57352)) (IdentValue!8632 (value!266606 List!57352)) (DelimiterValue!17265 (value!266607 List!57352)) (DedentValue!8632 (value!266608 List!57352)) (NewLineValue!8632 (value!266609 List!57352)) (IntegerValue!25896 (value!266610 (_ BitVec 32)) (text!60871 List!57352)) (IntegerValue!25897 (value!266611 Int) (text!60872 List!57352)) (Times!8632) (Or!8632) (Equal!8632) (Minus!8632) (Broken!43164 (value!266612 List!57352)) (And!8632) (Div!8632) (LessEqual!8632) (Mod!8632) (Concat!22187) (Not!8632) (Plus!8632) (SpaceValue!8632 (value!266613 List!57352)) (IntegerValue!25898 (value!266614 Int) (text!60873 List!57352)) (StringLiteralValue!25897 (text!60874 List!57352)) (FloatLiteralValue!17265 (text!60875 List!57352)) (BytesLiteralValue!8632 (value!266615 List!57352)) (CommentValue!17265 (value!266616 List!57352)) (StringLiteralValue!25898 (value!266617 List!57352)) (ErrorTokenValue!8632 (msg!8693 List!57352)) )
))
(declare-datatypes ((C!27360 0))(
  ( (C!27361 (val!23046 Int)) )
))
(declare-datatypes ((List!57353 0))(
  ( (Nil!57229) (Cons!57229 (h!63677 C!27360) (t!367919 List!57353)) )
))
(declare-datatypes ((IArray!30209 0))(
  ( (IArray!30210 (innerList!15162 List!57353)) )
))
(declare-datatypes ((Regex!13555 0))(
  ( (ElementMatch!13555 (c!846173 C!27360)) (Concat!22188 (regOne!27622 Regex!13555) (regTwo!27622 Regex!13555)) (EmptyExpr!13555) (Star!13555 (reg!13884 Regex!13555)) (EmptyLang!13555) (Union!13555 (regOne!27623 Regex!13555) (regTwo!27623 Regex!13555)) )
))
(declare-datatypes ((String!65034 0))(
  ( (String!65035 (value!266618 String)) )
))
(declare-datatypes ((Conc!15074 0))(
  ( (Node!15074 (left!41737 Conc!15074) (right!42067 Conc!15074) (csize!30378 Int) (cheight!15285 Int)) (Leaf!25060 (xs!18400 IArray!30209) (csize!30379 Int)) (Empty!15074) )
))
(declare-datatypes ((BalanceConc!29578 0))(
  ( (BalanceConc!29579 (c!846174 Conc!15074)) )
))
(declare-datatypes ((TokenValueInjection!16572 0))(
  ( (TokenValueInjection!16573 (toValue!11273 Int) (toChars!11132 Int)) )
))
(declare-datatypes ((Rule!16444 0))(
  ( (Rule!16445 (regex!8322 Regex!13555) (tag!9186 String!65034) (isSeparator!8322 Bool) (transformation!8322 TokenValueInjection!16572)) )
))
(declare-datatypes ((List!57354 0))(
  ( (Nil!57230) (Cons!57230 (h!63678 Rule!16444) (t!367920 List!57354)) )
))
(declare-fun rulesArg!259 () List!57354)

(declare-fun rulesValidInductive!3225 (LexerInterface!7914 List!57354) Bool)

(assert (=> b!4956509 (= res!2114843 (rulesValidInductive!3225 thiss!15247 rulesArg!259))))

(declare-fun b!4956510 () Bool)

(declare-fun e!3097360 () Bool)

(declare-fun e!3097355 () Bool)

(assert (=> b!4956510 (= e!3097360 (not e!3097355))))

(declare-fun res!2114844 () Bool)

(assert (=> b!4956510 (=> res!2114844 e!3097355)))

(get-info :version)

(assert (=> b!4956510 (= res!2114844 (or (and ((_ is Cons!57230) rulesArg!259) ((_ is Nil!57230) (t!367920 rulesArg!259))) (not ((_ is Cons!57230) rulesArg!259))))))

(declare-fun lt!2045739 () List!57353)

(declare-fun isPrefix!5175 (List!57353 List!57353) Bool)

(assert (=> b!4956510 (isPrefix!5175 lt!2045739 lt!2045739)))

(declare-datatypes ((Unit!148123 0))(
  ( (Unit!148124) )
))
(declare-fun lt!2045737 () Unit!148123)

(declare-fun lemmaIsPrefixRefl!3499 (List!57353 List!57353) Unit!148123)

(assert (=> b!4956510 (= lt!2045737 (lemmaIsPrefixRefl!3499 lt!2045739 lt!2045739))))

(declare-fun res!2114842 () Bool)

(assert (=> start!522426 (=> (not res!2114842) (not e!3097362))))

(assert (=> start!522426 (= res!2114842 ((_ is Lexer!7912) thiss!15247))))

(assert (=> start!522426 e!3097362))

(assert (=> start!522426 true))

(declare-fun e!3097353 () Bool)

(assert (=> start!522426 e!3097353))

(declare-fun input!1342 () BalanceConc!29578)

(declare-fun e!3097359 () Bool)

(declare-fun inv!74662 (BalanceConc!29578) Bool)

(assert (=> start!522426 (and (inv!74662 input!1342) e!3097359)))

(declare-fun totalInput!464 () BalanceConc!29578)

(declare-fun e!3097364 () Bool)

(assert (=> start!522426 (and (inv!74662 totalInput!464) e!3097364)))

(declare-fun b!4956511 () Bool)

(declare-fun tp!1390018 () Bool)

(declare-fun e!3097356 () Bool)

(declare-fun inv!74658 (String!65034) Bool)

(declare-fun inv!74663 (TokenValueInjection!16572) Bool)

(assert (=> b!4956511 (= e!3097356 (and tp!1390018 (inv!74658 (tag!9186 (h!63678 rulesArg!259))) (inv!74663 (transformation!8322 (h!63678 rulesArg!259))) e!3097361))))

(declare-fun b!4956512 () Bool)

(declare-fun tp!1390015 () Bool)

(assert (=> b!4956512 (= e!3097353 (and e!3097356 tp!1390015))))

(declare-fun b!4956513 () Bool)

(declare-fun e!3097365 () Bool)

(declare-datatypes ((Token!15144 0))(
  ( (Token!15145 (value!266619 TokenValue!8632) (rule!11538 Rule!16444) (size!37944 Int) (originalCharacters!8603 List!57353)) )
))
(declare-datatypes ((tuple2!61804 0))(
  ( (tuple2!61805 (_1!34205 Token!15144) (_2!34205 BalanceConc!29578)) )
))
(declare-fun lt!2045736 () tuple2!61804)

(declare-datatypes ((tuple2!61806 0))(
  ( (tuple2!61807 (_1!34206 Token!15144) (_2!34206 List!57353)) )
))
(declare-fun lt!2045738 () tuple2!61806)

(declare-fun list!18263 (BalanceConc!29578) List!57353)

(assert (=> b!4956513 (= e!3097365 (= (list!18263 (_2!34205 lt!2045736)) (_2!34206 lt!2045738)))))

(declare-fun b!4956514 () Bool)

(declare-fun e!3097357 () Bool)

(assert (=> b!4956514 (= e!3097355 e!3097357)))

(declare-fun res!2114847 () Bool)

(assert (=> b!4956514 (=> res!2114847 e!3097357)))

(declare-datatypes ((Option!14313 0))(
  ( (None!14312) (Some!14312 (v!50297 tuple2!61804)) )
))
(declare-fun lt!2045740 () Option!14313)

(declare-fun lt!2045734 () Option!14313)

(assert (=> b!4956514 (= res!2114847 (or (and ((_ is None!14312) lt!2045740) ((_ is None!14312) lt!2045734)) (not ((_ is None!14312) lt!2045734))))))

(declare-fun maxPrefixZipperSequenceV2!653 (LexerInterface!7914 List!57354 BalanceConc!29578 BalanceConc!29578) Option!14313)

(assert (=> b!4956514 (= lt!2045734 (maxPrefixZipperSequenceV2!653 thiss!15247 (t!367920 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!306 (LexerInterface!7914 Rule!16444 BalanceConc!29578 BalanceConc!29578) Option!14313)

(assert (=> b!4956514 (= lt!2045740 (maxPrefixOneRuleZipperSequenceV2!306 thiss!15247 (h!63678 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4956515 () Bool)

(assert (=> b!4956515 (= e!3097362 e!3097360)))

(declare-fun res!2114846 () Bool)

(assert (=> b!4956515 (=> (not res!2114846) (not e!3097360))))

(declare-fun isSuffix!1121 (List!57353 List!57353) Bool)

(assert (=> b!4956515 (= res!2114846 (isSuffix!1121 lt!2045739 (list!18263 totalInput!464)))))

(assert (=> b!4956515 (= lt!2045739 (list!18263 input!1342))))

(declare-fun b!4956516 () Bool)

(declare-fun res!2114841 () Bool)

(assert (=> b!4956516 (=> (not res!2114841) (not e!3097362))))

(declare-fun isEmpty!30762 (List!57354) Bool)

(assert (=> b!4956516 (= res!2114841 (not (isEmpty!30762 rulesArg!259)))))

(declare-fun b!4956517 () Bool)

(declare-fun tp!1390017 () Bool)

(declare-fun inv!74664 (Conc!15074) Bool)

(assert (=> b!4956517 (= e!3097359 (and (inv!74664 (c!846174 input!1342)) tp!1390017))))

(declare-fun b!4956518 () Bool)

(assert (=> b!4956518 (= e!3097358 e!3097365)))

(declare-fun res!2114845 () Bool)

(assert (=> b!4956518 (=> (not res!2114845) (not e!3097365))))

(assert (=> b!4956518 (= res!2114845 (= (_1!34205 lt!2045736) (_1!34206 lt!2045738)))))

(declare-datatypes ((Option!14314 0))(
  ( (None!14313) (Some!14313 (v!50298 tuple2!61806)) )
))
(declare-fun lt!2045742 () Option!14314)

(declare-fun get!19798 (Option!14314) tuple2!61806)

(assert (=> b!4956518 (= lt!2045738 (get!19798 lt!2045742))))

(declare-fun get!19799 (Option!14313) tuple2!61804)

(assert (=> b!4956518 (= lt!2045736 (get!19799 lt!2045740))))

(declare-fun b!4956519 () Bool)

(declare-fun tp!1390019 () Bool)

(assert (=> b!4956519 (= e!3097364 (and (inv!74664 (c!846174 totalInput!464)) tp!1390019))))

(declare-fun b!4956520 () Bool)

(assert (=> b!4956520 (= e!3097357 e!3097354)))

(declare-fun res!2114840 () Bool)

(assert (=> b!4956520 (=> res!2114840 e!3097354)))

(declare-fun isDefined!11240 (Option!14314) Bool)

(assert (=> b!4956520 (= res!2114840 (not (= lt!2045735 (isDefined!11240 lt!2045742))))))

(declare-fun isDefined!11241 (Option!14313) Bool)

(assert (=> b!4956520 (= lt!2045735 (isDefined!11241 lt!2045740))))

(declare-fun maxPrefixZipper!719 (LexerInterface!7914 List!57354 List!57353) Option!14314)

(assert (=> b!4956520 (= lt!2045742 (maxPrefixZipper!719 thiss!15247 rulesArg!259 lt!2045739))))

(assert (= (and start!522426 res!2114842) b!4956509))

(assert (= (and b!4956509 res!2114843) b!4956516))

(assert (= (and b!4956516 res!2114841) b!4956515))

(assert (= (and b!4956515 res!2114846) b!4956510))

(assert (= (and b!4956510 (not res!2114844)) b!4956514))

(assert (= (and b!4956514 (not res!2114847)) b!4956520))

(assert (= (and b!4956520 (not res!2114840)) b!4956507))

(assert (= (and b!4956507 (not res!2114839)) b!4956518))

(assert (= (and b!4956518 res!2114845) b!4956513))

(assert (= b!4956511 b!4956508))

(assert (= b!4956512 b!4956511))

(assert (= (and start!522426 ((_ is Cons!57230) rulesArg!259)) b!4956512))

(assert (= start!522426 b!4956517))

(assert (= start!522426 b!4956519))

(declare-fun m!5981086 () Bool)

(assert (=> b!4956514 m!5981086))

(declare-fun m!5981088 () Bool)

(assert (=> b!4956514 m!5981088))

(declare-fun m!5981090 () Bool)

(assert (=> b!4956518 m!5981090))

(declare-fun m!5981092 () Bool)

(assert (=> b!4956518 m!5981092))

(declare-fun m!5981094 () Bool)

(assert (=> b!4956509 m!5981094))

(declare-fun m!5981096 () Bool)

(assert (=> b!4956517 m!5981096))

(declare-fun m!5981098 () Bool)

(assert (=> b!4956519 m!5981098))

(declare-fun m!5981100 () Bool)

(assert (=> b!4956513 m!5981100))

(declare-fun m!5981102 () Bool)

(assert (=> start!522426 m!5981102))

(declare-fun m!5981104 () Bool)

(assert (=> start!522426 m!5981104))

(declare-fun m!5981106 () Bool)

(assert (=> b!4956515 m!5981106))

(assert (=> b!4956515 m!5981106))

(declare-fun m!5981108 () Bool)

(assert (=> b!4956515 m!5981108))

(declare-fun m!5981110 () Bool)

(assert (=> b!4956515 m!5981110))

(declare-fun m!5981112 () Bool)

(assert (=> b!4956516 m!5981112))

(declare-fun m!5981114 () Bool)

(assert (=> b!4956510 m!5981114))

(declare-fun m!5981116 () Bool)

(assert (=> b!4956510 m!5981116))

(declare-fun m!5981118 () Bool)

(assert (=> b!4956520 m!5981118))

(declare-fun m!5981120 () Bool)

(assert (=> b!4956520 m!5981120))

(declare-fun m!5981122 () Bool)

(assert (=> b!4956520 m!5981122))

(declare-fun m!5981124 () Bool)

(assert (=> b!4956511 m!5981124))

(declare-fun m!5981126 () Bool)

(assert (=> b!4956511 m!5981126))

(check-sat (not b!4956518) (not b!4956513) (not b!4956517) (not start!522426) (not b!4956512) (not b!4956520) b_and!347155 (not b!4956511) (not b!4956519) (not b_next!133095) b_and!347157 (not b!4956515) (not b_next!133093) (not b!4956509) (not b!4956514) (not b!4956516) (not b!4956510))
(check-sat b_and!347155 b_and!347157 (not b_next!133093) (not b_next!133095))

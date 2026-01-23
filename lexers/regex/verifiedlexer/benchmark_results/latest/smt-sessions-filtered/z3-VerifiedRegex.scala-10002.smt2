; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522854 () Bool)

(assert start!522854)

(declare-fun b!4959577 () Bool)

(declare-fun b_free!132479 () Bool)

(declare-fun b_next!133269 () Bool)

(assert (=> b!4959577 (= b_free!132479 (not b_next!133269))))

(declare-fun tp!1391021 () Bool)

(declare-fun b_and!347331 () Bool)

(assert (=> b!4959577 (= tp!1391021 b_and!347331)))

(declare-fun b_free!132481 () Bool)

(declare-fun b_next!133271 () Bool)

(assert (=> b!4959577 (= b_free!132481 (not b_next!133271))))

(declare-fun tp!1391022 () Bool)

(declare-fun b_and!347333 () Bool)

(assert (=> b!4959577 (= tp!1391022 b_and!347333)))

(declare-fun res!2116659 () Bool)

(declare-fun e!3099684 () Bool)

(assert (=> start!522854 (=> (not res!2116659) (not e!3099684))))

(declare-datatypes ((LexerInterface!7948 0))(
  ( (LexerInterfaceExt!7945 (__x!34625 Int)) (Lexer!7946) )
))
(declare-fun thiss!15247 () LexerInterface!7948)

(get-info :version)

(assert (=> start!522854 (= res!2116659 ((_ is Lexer!7946) thiss!15247))))

(assert (=> start!522854 e!3099684))

(assert (=> start!522854 true))

(declare-fun e!3099695 () Bool)

(assert (=> start!522854 e!3099695))

(declare-datatypes ((C!27428 0))(
  ( (C!27429 (val!23080 Int)) )
))
(declare-datatypes ((List!57454 0))(
  ( (Nil!57330) (Cons!57330 (h!63778 C!27428) (t!368020 List!57454)) )
))
(declare-datatypes ((IArray!30277 0))(
  ( (IArray!30278 (innerList!15196 List!57454)) )
))
(declare-datatypes ((Conc!15108 0))(
  ( (Node!15108 (left!41808 Conc!15108) (right!42138 Conc!15108) (csize!30446 Int) (cheight!15319 Int)) (Leaf!25111 (xs!18434 IArray!30277) (csize!30447 Int)) (Empty!15108) )
))
(declare-datatypes ((BalanceConc!29646 0))(
  ( (BalanceConc!29647 (c!846435 Conc!15108)) )
))
(declare-fun input!1342 () BalanceConc!29646)

(declare-fun e!3099690 () Bool)

(declare-fun inv!74843 (BalanceConc!29646) Bool)

(assert (=> start!522854 (and (inv!74843 input!1342) e!3099690)))

(declare-fun totalInput!464 () BalanceConc!29646)

(declare-fun e!3099691 () Bool)

(assert (=> start!522854 (and (inv!74843 totalInput!464) e!3099691)))

(declare-fun b!4959574 () Bool)

(declare-fun res!2116651 () Bool)

(declare-fun e!3099697 () Bool)

(assert (=> b!4959574 (=> res!2116651 e!3099697)))

(declare-fun lt!2047511 () Bool)

(assert (=> b!4959574 (= res!2116651 lt!2047511)))

(declare-fun b!4959575 () Bool)

(declare-fun e!3099689 () Bool)

(assert (=> b!4959575 (= e!3099689 e!3099697)))

(declare-fun res!2116650 () Bool)

(assert (=> b!4959575 (=> res!2116650 e!3099697)))

(declare-fun e!3099688 () Bool)

(assert (=> b!4959575 (= res!2116650 e!3099688)))

(declare-fun res!2116656 () Bool)

(assert (=> b!4959575 (=> (not res!2116656) (not e!3099688))))

(assert (=> b!4959575 (= res!2116656 (not lt!2047511))))

(declare-fun lt!2047514 () Bool)

(assert (=> b!4959575 (= lt!2047511 (not lt!2047514))))

(declare-fun b!4959576 () Bool)

(declare-fun res!2116654 () Bool)

(assert (=> b!4959576 (=> (not res!2116654) (not e!3099684))))

(declare-datatypes ((List!57455 0))(
  ( (Nil!57331) (Cons!57331 (h!63779 (_ BitVec 16)) (t!368021 List!57455)) )
))
(declare-datatypes ((TokenValue!8666 0))(
  ( (FloatLiteralValue!17332 (text!61107 List!57455)) (TokenValueExt!8665 (__x!34626 Int)) (Broken!43330 (value!267562 List!57455)) (Object!8789) (End!8666) (Def!8666) (Underscore!8666) (Match!8666) (Else!8666) (Error!8666) (Case!8666) (If!8666) (Extends!8666) (Abstract!8666) (Class!8666) (Val!8666) (DelimiterValue!17332 (del!8726 List!57455)) (KeywordValue!8672 (value!267563 List!57455)) (CommentValue!17332 (value!267564 List!57455)) (WhitespaceValue!17332 (value!267565 List!57455)) (IndentationValue!8666 (value!267566 List!57455)) (String!65203) (Int32!8666) (Broken!43331 (value!267567 List!57455)) (Boolean!8667) (Unit!148224) (OperatorValue!8669 (op!8726 List!57455)) (IdentifierValue!17332 (value!267568 List!57455)) (IdentifierValue!17333 (value!267569 List!57455)) (WhitespaceValue!17333 (value!267570 List!57455)) (True!17332) (False!17332) (Broken!43332 (value!267571 List!57455)) (Broken!43333 (value!267572 List!57455)) (True!17333) (RightBrace!8666) (RightBracket!8666) (Colon!8666) (Null!8666) (Comma!8666) (LeftBracket!8666) (False!17333) (LeftBrace!8666) (ImaginaryLiteralValue!8666 (text!61108 List!57455)) (StringLiteralValue!25998 (value!267573 List!57455)) (EOFValue!8666 (value!267574 List!57455)) (IdentValue!8666 (value!267575 List!57455)) (DelimiterValue!17333 (value!267576 List!57455)) (DedentValue!8666 (value!267577 List!57455)) (NewLineValue!8666 (value!267578 List!57455)) (IntegerValue!25998 (value!267579 (_ BitVec 32)) (text!61109 List!57455)) (IntegerValue!25999 (value!267580 Int) (text!61110 List!57455)) (Times!8666) (Or!8666) (Equal!8666) (Minus!8666) (Broken!43334 (value!267581 List!57455)) (And!8666) (Div!8666) (LessEqual!8666) (Mod!8666) (Concat!22255) (Not!8666) (Plus!8666) (SpaceValue!8666 (value!267582 List!57455)) (IntegerValue!26000 (value!267583 Int) (text!61111 List!57455)) (StringLiteralValue!25999 (text!61112 List!57455)) (FloatLiteralValue!17333 (text!61113 List!57455)) (BytesLiteralValue!8666 (value!267584 List!57455)) (CommentValue!17333 (value!267585 List!57455)) (StringLiteralValue!26000 (value!267586 List!57455)) (ErrorTokenValue!8666 (msg!8727 List!57455)) )
))
(declare-datatypes ((Regex!13589 0))(
  ( (ElementMatch!13589 (c!846436 C!27428)) (Concat!22256 (regOne!27690 Regex!13589) (regTwo!27690 Regex!13589)) (EmptyExpr!13589) (Star!13589 (reg!13918 Regex!13589)) (EmptyLang!13589) (Union!13589 (regOne!27691 Regex!13589) (regTwo!27691 Regex!13589)) )
))
(declare-datatypes ((String!65204 0))(
  ( (String!65205 (value!267587 String)) )
))
(declare-datatypes ((TokenValueInjection!16640 0))(
  ( (TokenValueInjection!16641 (toValue!11307 Int) (toChars!11166 Int)) )
))
(declare-datatypes ((Rule!16512 0))(
  ( (Rule!16513 (regex!8356 Regex!13589) (tag!9220 String!65204) (isSeparator!8356 Bool) (transformation!8356 TokenValueInjection!16640)) )
))
(declare-datatypes ((List!57456 0))(
  ( (Nil!57332) (Cons!57332 (h!63780 Rule!16512) (t!368022 List!57456)) )
))
(declare-fun rulesArg!259 () List!57456)

(declare-fun rulesValidInductive!3259 (LexerInterface!7948 List!57456) Bool)

(assert (=> b!4959576 (= res!2116654 (rulesValidInductive!3259 thiss!15247 rulesArg!259))))

(declare-fun e!3099686 () Bool)

(assert (=> b!4959577 (= e!3099686 (and tp!1391021 tp!1391022))))

(declare-fun b!4959578 () Bool)

(declare-fun tp!1391019 () Bool)

(declare-fun e!3099687 () Bool)

(declare-fun inv!74839 (String!65204) Bool)

(declare-fun inv!74844 (TokenValueInjection!16640) Bool)

(assert (=> b!4959578 (= e!3099687 (and tp!1391019 (inv!74839 (tag!9220 (h!63780 rulesArg!259))) (inv!74844 (transformation!8356 (h!63780 rulesArg!259))) e!3099686))))

(declare-fun b!4959579 () Bool)

(declare-fun tp!1391020 () Bool)

(declare-fun inv!74845 (Conc!15108) Bool)

(assert (=> b!4959579 (= e!3099690 (and (inv!74845 (c!846435 input!1342)) tp!1391020))))

(declare-fun b!4959580 () Bool)

(declare-fun e!3099683 () Bool)

(declare-datatypes ((Token!15212 0))(
  ( (Token!15213 (value!267588 TokenValue!8666) (rule!11582 Rule!16512) (size!37998 Int) (originalCharacters!8637 List!57454)) )
))
(declare-datatypes ((tuple2!61980 0))(
  ( (tuple2!61981 (_1!34293 Token!15212) (_2!34293 List!57454)) )
))
(declare-datatypes ((Option!14381 0))(
  ( (None!14380) (Some!14380 (v!50365 tuple2!61980)) )
))
(declare-fun lt!2047518 () Option!14381)

(declare-fun isDefined!11300 (Option!14381) Bool)

(assert (=> b!4959580 (= e!3099683 (isDefined!11300 lt!2047518))))

(declare-fun b!4959581 () Bool)

(declare-fun e!3099685 () Bool)

(assert (=> b!4959581 (= e!3099685 e!3099689)))

(declare-fun res!2116652 () Bool)

(assert (=> b!4959581 (=> res!2116652 e!3099689)))

(declare-fun lt!2047517 () Option!14381)

(assert (=> b!4959581 (= res!2116652 (not (= lt!2047514 (isDefined!11300 lt!2047517))))))

(declare-datatypes ((tuple2!61982 0))(
  ( (tuple2!61983 (_1!34294 Token!15212) (_2!34294 BalanceConc!29646)) )
))
(declare-datatypes ((Option!14382 0))(
  ( (None!14381) (Some!14381 (v!50366 tuple2!61982)) )
))
(declare-fun lt!2047510 () Option!14382)

(declare-fun isDefined!11301 (Option!14382) Bool)

(assert (=> b!4959581 (= lt!2047514 (isDefined!11301 lt!2047510))))

(declare-fun lt!2047512 () List!57454)

(declare-fun maxPrefixZipper!753 (LexerInterface!7948 List!57456 List!57454) Option!14381)

(assert (=> b!4959581 (= lt!2047517 (maxPrefixZipper!753 thiss!15247 rulesArg!259 lt!2047512))))

(declare-fun b!4959582 () Bool)

(declare-fun tp!1391017 () Bool)

(assert (=> b!4959582 (= e!3099691 (and (inv!74845 (c!846435 totalInput!464)) tp!1391017))))

(declare-fun b!4959583 () Bool)

(assert (=> b!4959583 (= e!3099697 e!3099683)))

(declare-fun res!2116649 () Bool)

(assert (=> b!4959583 (=> res!2116649 e!3099683)))

(declare-fun get!19867 (Option!14382) tuple2!61982)

(declare-fun get!19868 (Option!14381) tuple2!61980)

(assert (=> b!4959583 (= res!2116649 (not (= (_1!34294 (get!19867 lt!2047510)) (_1!34293 (get!19868 lt!2047518)))))))

(declare-fun maxPrefix!4643 (LexerInterface!7948 List!57456 List!57454) Option!14381)

(assert (=> b!4959583 (= lt!2047518 (maxPrefix!4643 thiss!15247 rulesArg!259 lt!2047512))))

(declare-fun b!4959584 () Bool)

(declare-fun e!3099696 () Bool)

(assert (=> b!4959584 (= e!3099684 e!3099696)))

(declare-fun res!2116655 () Bool)

(assert (=> b!4959584 (=> (not res!2116655) (not e!3099696))))

(declare-fun isSuffix!1155 (List!57454 List!57454) Bool)

(declare-fun list!18307 (BalanceConc!29646) List!57454)

(assert (=> b!4959584 (= res!2116655 (isSuffix!1155 lt!2047512 (list!18307 totalInput!464)))))

(assert (=> b!4959584 (= lt!2047512 (list!18307 input!1342))))

(declare-fun b!4959585 () Bool)

(declare-fun e!3099694 () Bool)

(declare-fun lt!2047515 () tuple2!61982)

(declare-fun lt!2047509 () tuple2!61980)

(assert (=> b!4959585 (= e!3099694 (not (= (list!18307 (_2!34294 lt!2047515)) (_2!34293 lt!2047509))))))

(declare-fun b!4959586 () Bool)

(assert (=> b!4959586 (= e!3099688 e!3099694)))

(declare-fun res!2116653 () Bool)

(assert (=> b!4959586 (=> res!2116653 e!3099694)))

(assert (=> b!4959586 (= res!2116653 (not (= (_1!34294 lt!2047515) (_1!34293 lt!2047509))))))

(assert (=> b!4959586 (= lt!2047509 (get!19868 lt!2047517))))

(assert (=> b!4959586 (= lt!2047515 (get!19867 lt!2047510))))

(declare-fun b!4959587 () Bool)

(declare-fun e!3099693 () Bool)

(assert (=> b!4959587 (= e!3099693 e!3099685)))

(declare-fun res!2116660 () Bool)

(assert (=> b!4959587 (=> res!2116660 e!3099685)))

(declare-fun lt!2047516 () Option!14382)

(assert (=> b!4959587 (= res!2116660 (or (and ((_ is None!14381) lt!2047510) ((_ is None!14381) lt!2047516)) ((_ is None!14381) lt!2047516) ((_ is None!14381) lt!2047510) (< (size!37998 (_1!34294 (v!50366 lt!2047510))) (size!37998 (_1!34294 (v!50366 lt!2047516))))))))

(declare-fun maxPrefixZipperSequenceV2!687 (LexerInterface!7948 List!57456 BalanceConc!29646 BalanceConc!29646) Option!14382)

(assert (=> b!4959587 (= lt!2047516 (maxPrefixZipperSequenceV2!687 thiss!15247 (t!368022 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!340 (LexerInterface!7948 Rule!16512 BalanceConc!29646 BalanceConc!29646) Option!14382)

(assert (=> b!4959587 (= lt!2047510 (maxPrefixOneRuleZipperSequenceV2!340 thiss!15247 (h!63780 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4959588 () Bool)

(declare-fun tp!1391018 () Bool)

(assert (=> b!4959588 (= e!3099695 (and e!3099687 tp!1391018))))

(declare-fun b!4959589 () Bool)

(assert (=> b!4959589 (= e!3099696 (not e!3099693))))

(declare-fun res!2116657 () Bool)

(assert (=> b!4959589 (=> res!2116657 e!3099693)))

(assert (=> b!4959589 (= res!2116657 (or (and ((_ is Cons!57332) rulesArg!259) ((_ is Nil!57332) (t!368022 rulesArg!259))) (not ((_ is Cons!57332) rulesArg!259))))))

(declare-fun isPrefix!5209 (List!57454 List!57454) Bool)

(assert (=> b!4959589 (isPrefix!5209 lt!2047512 lt!2047512)))

(declare-datatypes ((Unit!148225 0))(
  ( (Unit!148226) )
))
(declare-fun lt!2047513 () Unit!148225)

(declare-fun lemmaIsPrefixRefl!3533 (List!57454 List!57454) Unit!148225)

(assert (=> b!4959589 (= lt!2047513 (lemmaIsPrefixRefl!3533 lt!2047512 lt!2047512))))

(declare-fun b!4959590 () Bool)

(declare-fun res!2116658 () Bool)

(assert (=> b!4959590 (=> (not res!2116658) (not e!3099684))))

(declare-fun isEmpty!30836 (List!57456) Bool)

(assert (=> b!4959590 (= res!2116658 (not (isEmpty!30836 rulesArg!259)))))

(assert (= (and start!522854 res!2116659) b!4959576))

(assert (= (and b!4959576 res!2116654) b!4959590))

(assert (= (and b!4959590 res!2116658) b!4959584))

(assert (= (and b!4959584 res!2116655) b!4959589))

(assert (= (and b!4959589 (not res!2116657)) b!4959587))

(assert (= (and b!4959587 (not res!2116660)) b!4959581))

(assert (= (and b!4959581 (not res!2116652)) b!4959575))

(assert (= (and b!4959575 res!2116656) b!4959586))

(assert (= (and b!4959586 (not res!2116653)) b!4959585))

(assert (= (and b!4959575 (not res!2116650)) b!4959574))

(assert (= (and b!4959574 (not res!2116651)) b!4959583))

(assert (= (and b!4959583 (not res!2116649)) b!4959580))

(assert (= b!4959578 b!4959577))

(assert (= b!4959588 b!4959578))

(assert (= (and start!522854 ((_ is Cons!57332) rulesArg!259)) b!4959588))

(assert (= start!522854 b!4959579))

(assert (= start!522854 b!4959582))

(declare-fun m!5984128 () Bool)

(assert (=> b!4959589 m!5984128))

(declare-fun m!5984130 () Bool)

(assert (=> b!4959589 m!5984130))

(declare-fun m!5984132 () Bool)

(assert (=> b!4959578 m!5984132))

(declare-fun m!5984134 () Bool)

(assert (=> b!4959578 m!5984134))

(declare-fun m!5984136 () Bool)

(assert (=> b!4959581 m!5984136))

(declare-fun m!5984138 () Bool)

(assert (=> b!4959581 m!5984138))

(declare-fun m!5984140 () Bool)

(assert (=> b!4959581 m!5984140))

(declare-fun m!5984142 () Bool)

(assert (=> b!4959583 m!5984142))

(declare-fun m!5984144 () Bool)

(assert (=> b!4959583 m!5984144))

(declare-fun m!5984146 () Bool)

(assert (=> b!4959583 m!5984146))

(declare-fun m!5984148 () Bool)

(assert (=> start!522854 m!5984148))

(declare-fun m!5984150 () Bool)

(assert (=> start!522854 m!5984150))

(declare-fun m!5984152 () Bool)

(assert (=> b!4959590 m!5984152))

(declare-fun m!5984154 () Bool)

(assert (=> b!4959587 m!5984154))

(declare-fun m!5984156 () Bool)

(assert (=> b!4959587 m!5984156))

(declare-fun m!5984158 () Bool)

(assert (=> b!4959582 m!5984158))

(declare-fun m!5984160 () Bool)

(assert (=> b!4959579 m!5984160))

(declare-fun m!5984162 () Bool)

(assert (=> b!4959586 m!5984162))

(assert (=> b!4959586 m!5984142))

(declare-fun m!5984164 () Bool)

(assert (=> b!4959576 m!5984164))

(declare-fun m!5984166 () Bool)

(assert (=> b!4959584 m!5984166))

(assert (=> b!4959584 m!5984166))

(declare-fun m!5984168 () Bool)

(assert (=> b!4959584 m!5984168))

(declare-fun m!5984170 () Bool)

(assert (=> b!4959584 m!5984170))

(declare-fun m!5984172 () Bool)

(assert (=> b!4959585 m!5984172))

(declare-fun m!5984174 () Bool)

(assert (=> b!4959580 m!5984174))

(check-sat (not b!4959583) (not b!4959590) b_and!347331 (not b!4959585) (not b!4959578) (not b!4959582) (not b!4959589) (not b!4959579) (not b!4959587) (not b!4959581) (not b!4959576) (not b!4959584) (not b_next!133271) (not b!4959586) b_and!347333 (not start!522854) (not b!4959580) (not b!4959588) (not b_next!133269))
(check-sat b_and!347331 b_and!347333 (not b_next!133269) (not b_next!133271))
(get-model)

(declare-fun d!1596093 () Bool)

(declare-fun list!18308 (Conc!15108) List!57454)

(assert (=> d!1596093 (= (list!18307 (_2!34294 lt!2047515)) (list!18308 (c!846435 (_2!34294 lt!2047515))))))

(declare-fun bs!1182657 () Bool)

(assert (= bs!1182657 d!1596093))

(declare-fun m!5984176 () Bool)

(assert (=> bs!1182657 m!5984176))

(assert (=> b!4959585 d!1596093))

(declare-fun d!1596095 () Bool)

(assert (=> d!1596095 (= (get!19868 lt!2047517) (v!50365 lt!2047517))))

(assert (=> b!4959586 d!1596095))

(declare-fun d!1596097 () Bool)

(assert (=> d!1596097 (= (get!19867 lt!2047510) (v!50366 lt!2047510))))

(assert (=> b!4959586 d!1596097))

(declare-fun d!1596099 () Bool)

(assert (=> d!1596099 true))

(declare-fun lt!2047595 () Bool)

(declare-fun lambda!247183 () Int)

(declare-fun forall!13311 (List!57456 Int) Bool)

(assert (=> d!1596099 (= lt!2047595 (forall!13311 rulesArg!259 lambda!247183))))

(declare-fun e!3099754 () Bool)

(assert (=> d!1596099 (= lt!2047595 e!3099754)))

(declare-fun res!2116738 () Bool)

(assert (=> d!1596099 (=> res!2116738 e!3099754)))

(assert (=> d!1596099 (= res!2116738 (not ((_ is Cons!57332) rulesArg!259)))))

(assert (=> d!1596099 (= (rulesValidInductive!3259 thiss!15247 rulesArg!259) lt!2047595)))

(declare-fun b!4959682 () Bool)

(declare-fun e!3099755 () Bool)

(assert (=> b!4959682 (= e!3099754 e!3099755)))

(declare-fun res!2116739 () Bool)

(assert (=> b!4959682 (=> (not res!2116739) (not e!3099755))))

(declare-fun ruleValid!3785 (LexerInterface!7948 Rule!16512) Bool)

(assert (=> b!4959682 (= res!2116739 (ruleValid!3785 thiss!15247 (h!63780 rulesArg!259)))))

(declare-fun b!4959683 () Bool)

(assert (=> b!4959683 (= e!3099755 (rulesValidInductive!3259 thiss!15247 (t!368022 rulesArg!259)))))

(assert (= (and d!1596099 (not res!2116738)) b!4959682))

(assert (= (and b!4959682 res!2116739) b!4959683))

(declare-fun m!5984260 () Bool)

(assert (=> d!1596099 m!5984260))

(declare-fun m!5984262 () Bool)

(assert (=> b!4959682 m!5984262))

(declare-fun m!5984264 () Bool)

(assert (=> b!4959683 m!5984264))

(assert (=> b!4959576 d!1596099))

(declare-fun b!4959702 () Bool)

(declare-fun e!3099772 () Bool)

(declare-fun e!3099769 () Bool)

(assert (=> b!4959702 (= e!3099772 e!3099769)))

(declare-fun res!2116754 () Bool)

(assert (=> b!4959702 (=> (not res!2116754) (not e!3099769))))

(declare-fun lt!2047615 () Option!14382)

(assert (=> b!4959702 (= res!2116754 (= (_1!34294 (get!19867 lt!2047615)) (_1!34293 (get!19868 (maxPrefix!4643 thiss!15247 (t!368022 rulesArg!259) (list!18307 input!1342))))))))

(declare-fun b!4959703 () Bool)

(declare-fun e!3099771 () Bool)

(declare-fun e!3099773 () Bool)

(assert (=> b!4959703 (= e!3099771 e!3099773)))

(declare-fun res!2116755 () Bool)

(assert (=> b!4959703 (=> (not res!2116755) (not e!3099773))))

(assert (=> b!4959703 (= res!2116755 (= (_1!34294 (get!19867 lt!2047615)) (_1!34293 (get!19868 (maxPrefixZipper!753 thiss!15247 (t!368022 rulesArg!259) (list!18307 input!1342))))))))

(declare-fun d!1596123 () Bool)

(declare-fun e!3099768 () Bool)

(assert (=> d!1596123 e!3099768))

(declare-fun res!2116752 () Bool)

(assert (=> d!1596123 (=> (not res!2116752) (not e!3099768))))

(assert (=> d!1596123 (= res!2116752 (= (isDefined!11301 lt!2047615) (isDefined!11300 (maxPrefixZipper!753 thiss!15247 (t!368022 rulesArg!259) (list!18307 input!1342)))))))

(declare-fun e!3099770 () Option!14382)

(assert (=> d!1596123 (= lt!2047615 e!3099770)))

(declare-fun c!846453 () Bool)

(assert (=> d!1596123 (= c!846453 (and ((_ is Cons!57332) (t!368022 rulesArg!259)) ((_ is Nil!57332) (t!368022 (t!368022 rulesArg!259)))))))

(declare-fun lt!2047614 () Unit!148225)

(declare-fun lt!2047613 () Unit!148225)

(assert (=> d!1596123 (= lt!2047614 lt!2047613)))

(declare-fun lt!2047611 () List!57454)

(declare-fun lt!2047616 () List!57454)

(assert (=> d!1596123 (isPrefix!5209 lt!2047611 lt!2047616)))

(assert (=> d!1596123 (= lt!2047613 (lemmaIsPrefixRefl!3533 lt!2047611 lt!2047616))))

(assert (=> d!1596123 (= lt!2047616 (list!18307 input!1342))))

(assert (=> d!1596123 (= lt!2047611 (list!18307 input!1342))))

(assert (=> d!1596123 (rulesValidInductive!3259 thiss!15247 (t!368022 rulesArg!259))))

(assert (=> d!1596123 (= (maxPrefixZipperSequenceV2!687 thiss!15247 (t!368022 rulesArg!259) input!1342 totalInput!464) lt!2047615)))

(declare-fun b!4959704 () Bool)

(declare-fun res!2116753 () Bool)

(assert (=> b!4959704 (=> (not res!2116753) (not e!3099768))))

(assert (=> b!4959704 (= res!2116753 e!3099771)))

(declare-fun res!2116757 () Bool)

(assert (=> b!4959704 (=> res!2116757 e!3099771)))

(assert (=> b!4959704 (= res!2116757 (not (isDefined!11301 lt!2047615)))))

(declare-fun b!4959705 () Bool)

(declare-fun call!345985 () Option!14382)

(assert (=> b!4959705 (= e!3099770 call!345985)))

(declare-fun b!4959706 () Bool)

(assert (=> b!4959706 (= e!3099768 e!3099772)))

(declare-fun res!2116756 () Bool)

(assert (=> b!4959706 (=> res!2116756 e!3099772)))

(assert (=> b!4959706 (= res!2116756 (not (isDefined!11301 lt!2047615)))))

(declare-fun b!4959707 () Bool)

(declare-fun lt!2047610 () Option!14382)

(declare-fun lt!2047612 () Option!14382)

(assert (=> b!4959707 (= e!3099770 (ite (and ((_ is None!14381) lt!2047610) ((_ is None!14381) lt!2047612)) None!14381 (ite ((_ is None!14381) lt!2047612) lt!2047610 (ite ((_ is None!14381) lt!2047610) lt!2047612 (ite (>= (size!37998 (_1!34294 (v!50366 lt!2047610))) (size!37998 (_1!34294 (v!50366 lt!2047612)))) lt!2047610 lt!2047612)))))))

(assert (=> b!4959707 (= lt!2047610 call!345985)))

(assert (=> b!4959707 (= lt!2047612 (maxPrefixZipperSequenceV2!687 thiss!15247 (t!368022 (t!368022 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun b!4959708 () Bool)

(assert (=> b!4959708 (= e!3099773 (= (list!18307 (_2!34294 (get!19867 lt!2047615))) (_2!34293 (get!19868 (maxPrefixZipper!753 thiss!15247 (t!368022 rulesArg!259) (list!18307 input!1342))))))))

(declare-fun bm!345980 () Bool)

(assert (=> bm!345980 (= call!345985 (maxPrefixOneRuleZipperSequenceV2!340 thiss!15247 (h!63780 (t!368022 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun b!4959709 () Bool)

(assert (=> b!4959709 (= e!3099769 (= (list!18307 (_2!34294 (get!19867 lt!2047615))) (_2!34293 (get!19868 (maxPrefix!4643 thiss!15247 (t!368022 rulesArg!259) (list!18307 input!1342))))))))

(assert (= (and d!1596123 c!846453) b!4959705))

(assert (= (and d!1596123 (not c!846453)) b!4959707))

(assert (= (or b!4959705 b!4959707) bm!345980))

(assert (= (and d!1596123 res!2116752) b!4959704))

(assert (= (and b!4959704 (not res!2116757)) b!4959703))

(assert (= (and b!4959703 res!2116755) b!4959708))

(assert (= (and b!4959704 res!2116753) b!4959706))

(assert (= (and b!4959706 (not res!2116756)) b!4959702))

(assert (= (and b!4959702 res!2116754) b!4959709))

(declare-fun m!5984266 () Bool)

(assert (=> b!4959706 m!5984266))

(assert (=> b!4959709 m!5984170))

(declare-fun m!5984268 () Bool)

(assert (=> b!4959709 m!5984268))

(declare-fun m!5984270 () Bool)

(assert (=> b!4959709 m!5984270))

(declare-fun m!5984272 () Bool)

(assert (=> b!4959709 m!5984272))

(assert (=> b!4959709 m!5984170))

(assert (=> b!4959709 m!5984268))

(declare-fun m!5984274 () Bool)

(assert (=> b!4959709 m!5984274))

(declare-fun m!5984276 () Bool)

(assert (=> d!1596123 m!5984276))

(declare-fun m!5984278 () Bool)

(assert (=> d!1596123 m!5984278))

(declare-fun m!5984280 () Bool)

(assert (=> d!1596123 m!5984280))

(assert (=> d!1596123 m!5984266))

(declare-fun m!5984282 () Bool)

(assert (=> d!1596123 m!5984282))

(assert (=> d!1596123 m!5984170))

(assert (=> d!1596123 m!5984170))

(assert (=> d!1596123 m!5984278))

(assert (=> d!1596123 m!5984264))

(declare-fun m!5984284 () Bool)

(assert (=> b!4959707 m!5984284))

(assert (=> b!4959704 m!5984266))

(assert (=> b!4959702 m!5984272))

(assert (=> b!4959702 m!5984170))

(assert (=> b!4959702 m!5984170))

(assert (=> b!4959702 m!5984268))

(assert (=> b!4959702 m!5984268))

(assert (=> b!4959702 m!5984274))

(assert (=> b!4959708 m!5984270))

(assert (=> b!4959708 m!5984272))

(assert (=> b!4959708 m!5984170))

(assert (=> b!4959708 m!5984278))

(declare-fun m!5984286 () Bool)

(assert (=> b!4959708 m!5984286))

(assert (=> b!4959708 m!5984170))

(assert (=> b!4959708 m!5984278))

(assert (=> b!4959703 m!5984272))

(assert (=> b!4959703 m!5984170))

(assert (=> b!4959703 m!5984170))

(assert (=> b!4959703 m!5984278))

(assert (=> b!4959703 m!5984278))

(assert (=> b!4959703 m!5984286))

(declare-fun m!5984288 () Bool)

(assert (=> bm!345980 m!5984288))

(assert (=> b!4959587 d!1596123))

(declare-fun b!4959735 () Bool)

(declare-fun e!3099794 () Bool)

(assert (=> b!4959735 (= e!3099794 true)))

(declare-fun b!4959734 () Bool)

(declare-fun e!3099793 () Bool)

(assert (=> b!4959734 (= e!3099793 e!3099794)))

(declare-fun b!4959724 () Bool)

(assert (=> b!4959724 e!3099793))

(assert (= b!4959734 b!4959735))

(assert (= b!4959724 b!4959734))

(declare-fun order!26125 () Int)

(declare-fun lambda!247188 () Int)

(declare-fun order!26123 () Int)

(declare-fun dynLambda!23099 (Int Int) Int)

(declare-fun dynLambda!23100 (Int Int) Int)

(assert (=> b!4959735 (< (dynLambda!23099 order!26123 (toValue!11307 (transformation!8356 (h!63780 rulesArg!259)))) (dynLambda!23100 order!26125 lambda!247188))))

(declare-fun order!26127 () Int)

(declare-fun dynLambda!23101 (Int Int) Int)

(assert (=> b!4959735 (< (dynLambda!23101 order!26127 (toChars!11166 (transformation!8356 (h!63780 rulesArg!259)))) (dynLambda!23100 order!26125 lambda!247188))))

(declare-fun b!4959722 () Bool)

(declare-fun e!3099787 () Option!14382)

(assert (=> b!4959722 (= e!3099787 None!14381)))

(declare-fun d!1596125 () Bool)

(declare-fun e!3099784 () Bool)

(assert (=> d!1596125 e!3099784))

(declare-fun res!2116766 () Bool)

(assert (=> d!1596125 (=> (not res!2116766) (not e!3099784))))

(declare-fun lt!2047643 () Option!14382)

(declare-fun maxPrefixOneRule!3614 (LexerInterface!7948 Rule!16512 List!57454) Option!14381)

(assert (=> d!1596125 (= res!2116766 (= (isDefined!11301 lt!2047643) (isDefined!11300 (maxPrefixOneRule!3614 thiss!15247 (h!63780 rulesArg!259) (list!18307 input!1342)))))))

(assert (=> d!1596125 (= lt!2047643 e!3099787)))

(declare-fun c!846456 () Bool)

(declare-datatypes ((tuple2!61984 0))(
  ( (tuple2!61985 (_1!34295 BalanceConc!29646) (_2!34295 BalanceConc!29646)) )
))
(declare-fun lt!2047639 () tuple2!61984)

(declare-fun isEmpty!30839 (BalanceConc!29646) Bool)

(assert (=> d!1596125 (= c!846456 (isEmpty!30839 (_1!34295 lt!2047639)))))

(declare-fun findLongestMatchWithZipperSequenceV2!152 (Regex!13589 BalanceConc!29646 BalanceConc!29646) tuple2!61984)

(assert (=> d!1596125 (= lt!2047639 (findLongestMatchWithZipperSequenceV2!152 (regex!8356 (h!63780 rulesArg!259)) input!1342 totalInput!464))))

(assert (=> d!1596125 (ruleValid!3785 thiss!15247 (h!63780 rulesArg!259))))

(assert (=> d!1596125 (= (maxPrefixOneRuleZipperSequenceV2!340 thiss!15247 (h!63780 rulesArg!259) input!1342 totalInput!464) lt!2047643)))

(declare-fun b!4959723 () Bool)

(declare-fun e!3099786 () Bool)

(assert (=> b!4959723 (= e!3099784 e!3099786)))

(declare-fun res!2116768 () Bool)

(assert (=> b!4959723 (=> res!2116768 e!3099786)))

(assert (=> b!4959723 (= res!2116768 (not (isDefined!11301 lt!2047643)))))

(declare-fun apply!13889 (TokenValueInjection!16640 BalanceConc!29646) TokenValue!8666)

(declare-fun size!38000 (BalanceConc!29646) Int)

(assert (=> b!4959724 (= e!3099787 (Some!14381 (tuple2!61983 (Token!15213 (apply!13889 (transformation!8356 (h!63780 rulesArg!259)) (_1!34295 lt!2047639)) (h!63780 rulesArg!259) (size!38000 (_1!34295 lt!2047639)) (list!18307 (_1!34295 lt!2047639))) (_2!34295 lt!2047639))))))

(declare-fun lt!2047644 () List!57454)

(assert (=> b!4959724 (= lt!2047644 (list!18307 input!1342))))

(declare-fun lt!2047645 () Unit!148225)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1804 (Regex!13589 List!57454) Unit!148225)

(assert (=> b!4959724 (= lt!2047645 (longestMatchIsAcceptedByMatchOrIsEmpty!1804 (regex!8356 (h!63780 rulesArg!259)) lt!2047644))))

(declare-fun res!2116769 () Bool)

(declare-fun isEmpty!30840 (List!57454) Bool)

(declare-datatypes ((tuple2!61986 0))(
  ( (tuple2!61987 (_1!34296 List!57454) (_2!34296 List!57454)) )
))
(declare-fun findLongestMatchInner!1843 (Regex!13589 List!57454 Int List!57454 List!57454 Int) tuple2!61986)

(declare-fun size!38001 (List!57454) Int)

(assert (=> b!4959724 (= res!2116769 (isEmpty!30840 (_1!34296 (findLongestMatchInner!1843 (regex!8356 (h!63780 rulesArg!259)) Nil!57330 (size!38001 Nil!57330) lt!2047644 lt!2047644 (size!38001 lt!2047644)))))))

(declare-fun e!3099788 () Bool)

(assert (=> b!4959724 (=> res!2116769 e!3099788)))

(assert (=> b!4959724 e!3099788))

(declare-fun lt!2047638 () Unit!148225)

(assert (=> b!4959724 (= lt!2047638 lt!2047645)))

(declare-fun lt!2047640 () Unit!148225)

(declare-fun lemmaInv!1322 (TokenValueInjection!16640) Unit!148225)

(assert (=> b!4959724 (= lt!2047640 (lemmaInv!1322 (transformation!8356 (h!63780 rulesArg!259))))))

(declare-fun lt!2047641 () Unit!148225)

(declare-fun ForallOf!1215 (Int BalanceConc!29646) Unit!148225)

(assert (=> b!4959724 (= lt!2047641 (ForallOf!1215 lambda!247188 (_1!34295 lt!2047639)))))

(declare-fun lt!2047637 () Unit!148225)

(declare-fun seqFromList!6021 (List!57454) BalanceConc!29646)

(assert (=> b!4959724 (= lt!2047637 (ForallOf!1215 lambda!247188 (seqFromList!6021 (list!18307 (_1!34295 lt!2047639)))))))

(declare-fun lt!2047646 () Option!14382)

(assert (=> b!4959724 (= lt!2047646 (Some!14381 (tuple2!61983 (Token!15213 (apply!13889 (transformation!8356 (h!63780 rulesArg!259)) (_1!34295 lt!2047639)) (h!63780 rulesArg!259) (size!38000 (_1!34295 lt!2047639)) (list!18307 (_1!34295 lt!2047639))) (_2!34295 lt!2047639))))))

(declare-fun lt!2047642 () Unit!148225)

(declare-fun lemmaEqSameImage!1156 (TokenValueInjection!16640 BalanceConc!29646 BalanceConc!29646) Unit!148225)

(assert (=> b!4959724 (= lt!2047642 (lemmaEqSameImage!1156 (transformation!8356 (h!63780 rulesArg!259)) (_1!34295 lt!2047639) (seqFromList!6021 (list!18307 (_1!34295 lt!2047639)))))))

(declare-fun b!4959725 () Bool)

(declare-fun matchR!6621 (Regex!13589 List!57454) Bool)

(assert (=> b!4959725 (= e!3099788 (matchR!6621 (regex!8356 (h!63780 rulesArg!259)) (_1!34296 (findLongestMatchInner!1843 (regex!8356 (h!63780 rulesArg!259)) Nil!57330 (size!38001 Nil!57330) lt!2047644 lt!2047644 (size!38001 lt!2047644)))))))

(declare-fun b!4959726 () Bool)

(declare-fun e!3099785 () Bool)

(assert (=> b!4959726 (= e!3099786 e!3099785)))

(declare-fun res!2116767 () Bool)

(assert (=> b!4959726 (=> (not res!2116767) (not e!3099785))))

(assert (=> b!4959726 (= res!2116767 (= (_1!34294 (get!19867 lt!2047643)) (_1!34293 (get!19868 (maxPrefixOneRule!3614 thiss!15247 (h!63780 rulesArg!259) (list!18307 input!1342))))))))

(declare-fun b!4959727 () Bool)

(assert (=> b!4959727 (= e!3099785 (= (list!18307 (_2!34294 (get!19867 lt!2047643))) (_2!34293 (get!19868 (maxPrefixOneRule!3614 thiss!15247 (h!63780 rulesArg!259) (list!18307 input!1342))))))))

(assert (= (and d!1596125 c!846456) b!4959722))

(assert (= (and d!1596125 (not c!846456)) b!4959724))

(assert (= (and b!4959724 (not res!2116769)) b!4959725))

(assert (= (and d!1596125 res!2116766) b!4959723))

(assert (= (and b!4959723 (not res!2116768)) b!4959726))

(assert (= (and b!4959726 res!2116767) b!4959727))

(declare-fun m!5984290 () Bool)

(assert (=> b!4959723 m!5984290))

(declare-fun m!5984292 () Bool)

(assert (=> b!4959725 m!5984292))

(declare-fun m!5984294 () Bool)

(assert (=> b!4959725 m!5984294))

(assert (=> b!4959725 m!5984292))

(assert (=> b!4959725 m!5984294))

(declare-fun m!5984296 () Bool)

(assert (=> b!4959725 m!5984296))

(declare-fun m!5984298 () Bool)

(assert (=> b!4959725 m!5984298))

(declare-fun m!5984300 () Bool)

(assert (=> b!4959724 m!5984300))

(declare-fun m!5984302 () Bool)

(assert (=> b!4959724 m!5984302))

(declare-fun m!5984304 () Bool)

(assert (=> b!4959724 m!5984304))

(declare-fun m!5984306 () Bool)

(assert (=> b!4959724 m!5984306))

(assert (=> b!4959724 m!5984292))

(assert (=> b!4959724 m!5984170))

(declare-fun m!5984308 () Bool)

(assert (=> b!4959724 m!5984308))

(assert (=> b!4959724 m!5984304))

(declare-fun m!5984310 () Bool)

(assert (=> b!4959724 m!5984310))

(declare-fun m!5984312 () Bool)

(assert (=> b!4959724 m!5984312))

(declare-fun m!5984314 () Bool)

(assert (=> b!4959724 m!5984314))

(assert (=> b!4959724 m!5984304))

(declare-fun m!5984316 () Bool)

(assert (=> b!4959724 m!5984316))

(assert (=> b!4959724 m!5984292))

(assert (=> b!4959724 m!5984294))

(assert (=> b!4959724 m!5984296))

(declare-fun m!5984318 () Bool)

(assert (=> b!4959724 m!5984318))

(assert (=> b!4959724 m!5984294))

(assert (=> b!4959724 m!5984314))

(declare-fun m!5984320 () Bool)

(assert (=> b!4959726 m!5984320))

(assert (=> b!4959726 m!5984170))

(assert (=> b!4959726 m!5984170))

(declare-fun m!5984322 () Bool)

(assert (=> b!4959726 m!5984322))

(assert (=> b!4959726 m!5984322))

(declare-fun m!5984324 () Bool)

(assert (=> b!4959726 m!5984324))

(assert (=> b!4959727 m!5984170))

(assert (=> b!4959727 m!5984322))

(declare-fun m!5984326 () Bool)

(assert (=> b!4959727 m!5984326))

(assert (=> b!4959727 m!5984320))

(assert (=> b!4959727 m!5984170))

(assert (=> b!4959727 m!5984322))

(assert (=> b!4959727 m!5984324))

(assert (=> d!1596125 m!5984170))

(assert (=> d!1596125 m!5984322))

(declare-fun m!5984328 () Bool)

(assert (=> d!1596125 m!5984328))

(declare-fun m!5984330 () Bool)

(assert (=> d!1596125 m!5984330))

(assert (=> d!1596125 m!5984322))

(declare-fun m!5984332 () Bool)

(assert (=> d!1596125 m!5984332))

(assert (=> d!1596125 m!5984290))

(assert (=> d!1596125 m!5984170))

(assert (=> d!1596125 m!5984262))

(assert (=> b!4959587 d!1596125))

(declare-fun d!1596127 () Bool)

(assert (=> d!1596127 (= (inv!74839 (tag!9220 (h!63780 rulesArg!259))) (= (mod (str.len (value!267587 (tag!9220 (h!63780 rulesArg!259)))) 2) 0))))

(assert (=> b!4959578 d!1596127))

(declare-fun d!1596129 () Bool)

(declare-fun res!2116772 () Bool)

(declare-fun e!3099797 () Bool)

(assert (=> d!1596129 (=> (not res!2116772) (not e!3099797))))

(declare-fun semiInverseModEq!3683 (Int Int) Bool)

(assert (=> d!1596129 (= res!2116772 (semiInverseModEq!3683 (toChars!11166 (transformation!8356 (h!63780 rulesArg!259))) (toValue!11307 (transformation!8356 (h!63780 rulesArg!259)))))))

(assert (=> d!1596129 (= (inv!74844 (transformation!8356 (h!63780 rulesArg!259))) e!3099797)))

(declare-fun b!4959738 () Bool)

(declare-fun equivClasses!3531 (Int Int) Bool)

(assert (=> b!4959738 (= e!3099797 (equivClasses!3531 (toChars!11166 (transformation!8356 (h!63780 rulesArg!259))) (toValue!11307 (transformation!8356 (h!63780 rulesArg!259)))))))

(assert (= (and d!1596129 res!2116772) b!4959738))

(declare-fun m!5984334 () Bool)

(assert (=> d!1596129 m!5984334))

(declare-fun m!5984336 () Bool)

(assert (=> b!4959738 m!5984336))

(assert (=> b!4959578 d!1596129))

(declare-fun b!4959750 () Bool)

(declare-fun e!3099806 () Bool)

(assert (=> b!4959750 (= e!3099806 (>= (size!38001 lt!2047512) (size!38001 lt!2047512)))))

(declare-fun b!4959748 () Bool)

(declare-fun res!2116783 () Bool)

(declare-fun e!3099804 () Bool)

(assert (=> b!4959748 (=> (not res!2116783) (not e!3099804))))

(declare-fun head!10653 (List!57454) C!27428)

(assert (=> b!4959748 (= res!2116783 (= (head!10653 lt!2047512) (head!10653 lt!2047512)))))

(declare-fun b!4959749 () Bool)

(declare-fun tail!9786 (List!57454) List!57454)

(assert (=> b!4959749 (= e!3099804 (isPrefix!5209 (tail!9786 lt!2047512) (tail!9786 lt!2047512)))))

(declare-fun b!4959747 () Bool)

(declare-fun e!3099805 () Bool)

(assert (=> b!4959747 (= e!3099805 e!3099804)))

(declare-fun res!2116781 () Bool)

(assert (=> b!4959747 (=> (not res!2116781) (not e!3099804))))

(assert (=> b!4959747 (= res!2116781 (not ((_ is Nil!57330) lt!2047512)))))

(declare-fun d!1596131 () Bool)

(assert (=> d!1596131 e!3099806))

(declare-fun res!2116784 () Bool)

(assert (=> d!1596131 (=> res!2116784 e!3099806)))

(declare-fun lt!2047649 () Bool)

(assert (=> d!1596131 (= res!2116784 (not lt!2047649))))

(assert (=> d!1596131 (= lt!2047649 e!3099805)))

(declare-fun res!2116782 () Bool)

(assert (=> d!1596131 (=> res!2116782 e!3099805)))

(assert (=> d!1596131 (= res!2116782 ((_ is Nil!57330) lt!2047512))))

(assert (=> d!1596131 (= (isPrefix!5209 lt!2047512 lt!2047512) lt!2047649)))

(assert (= (and d!1596131 (not res!2116782)) b!4959747))

(assert (= (and b!4959747 res!2116781) b!4959748))

(assert (= (and b!4959748 res!2116783) b!4959749))

(assert (= (and d!1596131 (not res!2116784)) b!4959750))

(declare-fun m!5984338 () Bool)

(assert (=> b!4959750 m!5984338))

(assert (=> b!4959750 m!5984338))

(declare-fun m!5984340 () Bool)

(assert (=> b!4959748 m!5984340))

(assert (=> b!4959748 m!5984340))

(declare-fun m!5984342 () Bool)

(assert (=> b!4959749 m!5984342))

(assert (=> b!4959749 m!5984342))

(assert (=> b!4959749 m!5984342))

(assert (=> b!4959749 m!5984342))

(declare-fun m!5984344 () Bool)

(assert (=> b!4959749 m!5984344))

(assert (=> b!4959589 d!1596131))

(declare-fun d!1596133 () Bool)

(assert (=> d!1596133 (isPrefix!5209 lt!2047512 lt!2047512)))

(declare-fun lt!2047652 () Unit!148225)

(declare-fun choose!36633 (List!57454 List!57454) Unit!148225)

(assert (=> d!1596133 (= lt!2047652 (choose!36633 lt!2047512 lt!2047512))))

(assert (=> d!1596133 (= (lemmaIsPrefixRefl!3533 lt!2047512 lt!2047512) lt!2047652)))

(declare-fun bs!1182663 () Bool)

(assert (= bs!1182663 d!1596133))

(assert (=> bs!1182663 m!5984128))

(declare-fun m!5984346 () Bool)

(assert (=> bs!1182663 m!5984346))

(assert (=> b!4959589 d!1596133))

(declare-fun d!1596135 () Bool)

(assert (=> d!1596135 (= (isEmpty!30836 rulesArg!259) ((_ is Nil!57332) rulesArg!259))))

(assert (=> b!4959590 d!1596135))

(declare-fun d!1596137 () Bool)

(declare-fun c!846459 () Bool)

(assert (=> d!1596137 (= c!846459 ((_ is Node!15108) (c!846435 input!1342)))))

(declare-fun e!3099811 () Bool)

(assert (=> d!1596137 (= (inv!74845 (c!846435 input!1342)) e!3099811)))

(declare-fun b!4959757 () Bool)

(declare-fun inv!74848 (Conc!15108) Bool)

(assert (=> b!4959757 (= e!3099811 (inv!74848 (c!846435 input!1342)))))

(declare-fun b!4959758 () Bool)

(declare-fun e!3099812 () Bool)

(assert (=> b!4959758 (= e!3099811 e!3099812)))

(declare-fun res!2116787 () Bool)

(assert (=> b!4959758 (= res!2116787 (not ((_ is Leaf!25111) (c!846435 input!1342))))))

(assert (=> b!4959758 (=> res!2116787 e!3099812)))

(declare-fun b!4959759 () Bool)

(declare-fun inv!74849 (Conc!15108) Bool)

(assert (=> b!4959759 (= e!3099812 (inv!74849 (c!846435 input!1342)))))

(assert (= (and d!1596137 c!846459) b!4959757))

(assert (= (and d!1596137 (not c!846459)) b!4959758))

(assert (= (and b!4959758 (not res!2116787)) b!4959759))

(declare-fun m!5984348 () Bool)

(assert (=> b!4959757 m!5984348))

(declare-fun m!5984350 () Bool)

(assert (=> b!4959759 m!5984350))

(assert (=> b!4959579 d!1596137))

(declare-fun d!1596139 () Bool)

(declare-fun isEmpty!30842 (Option!14381) Bool)

(assert (=> d!1596139 (= (isDefined!11300 lt!2047518) (not (isEmpty!30842 lt!2047518)))))

(declare-fun bs!1182664 () Bool)

(assert (= bs!1182664 d!1596139))

(declare-fun m!5984352 () Bool)

(assert (=> bs!1182664 m!5984352))

(assert (=> b!4959580 d!1596139))

(declare-fun d!1596141 () Bool)

(declare-fun isBalanced!4185 (Conc!15108) Bool)

(assert (=> d!1596141 (= (inv!74843 input!1342) (isBalanced!4185 (c!846435 input!1342)))))

(declare-fun bs!1182665 () Bool)

(assert (= bs!1182665 d!1596141))

(declare-fun m!5984354 () Bool)

(assert (=> bs!1182665 m!5984354))

(assert (=> start!522854 d!1596141))

(declare-fun d!1596143 () Bool)

(assert (=> d!1596143 (= (inv!74843 totalInput!464) (isBalanced!4185 (c!846435 totalInput!464)))))

(declare-fun bs!1182666 () Bool)

(assert (= bs!1182666 d!1596143))

(declare-fun m!5984356 () Bool)

(assert (=> bs!1182666 m!5984356))

(assert (=> start!522854 d!1596143))

(declare-fun d!1596145 () Bool)

(assert (=> d!1596145 (= (isDefined!11300 lt!2047517) (not (isEmpty!30842 lt!2047517)))))

(declare-fun bs!1182667 () Bool)

(assert (= bs!1182667 d!1596145))

(declare-fun m!5984358 () Bool)

(assert (=> bs!1182667 m!5984358))

(assert (=> b!4959581 d!1596145))

(declare-fun d!1596147 () Bool)

(declare-fun isEmpty!30844 (Option!14382) Bool)

(assert (=> d!1596147 (= (isDefined!11301 lt!2047510) (not (isEmpty!30844 lt!2047510)))))

(declare-fun bs!1182668 () Bool)

(assert (= bs!1182668 d!1596147))

(declare-fun m!5984360 () Bool)

(assert (=> bs!1182668 m!5984360))

(assert (=> b!4959581 d!1596147))

(declare-fun d!1596149 () Bool)

(declare-fun lt!2047671 () Option!14381)

(assert (=> d!1596149 (= lt!2047671 (maxPrefix!4643 thiss!15247 rulesArg!259 lt!2047512))))

(declare-fun e!3099821 () Option!14381)

(assert (=> d!1596149 (= lt!2047671 e!3099821)))

(declare-fun c!846462 () Bool)

(assert (=> d!1596149 (= c!846462 (and ((_ is Cons!57332) rulesArg!259) ((_ is Nil!57332) (t!368022 rulesArg!259))))))

(declare-fun lt!2047672 () Unit!148225)

(declare-fun lt!2047669 () Unit!148225)

(assert (=> d!1596149 (= lt!2047672 lt!2047669)))

(assert (=> d!1596149 (isPrefix!5209 lt!2047512 lt!2047512)))

(assert (=> d!1596149 (= lt!2047669 (lemmaIsPrefixRefl!3533 lt!2047512 lt!2047512))))

(assert (=> d!1596149 (rulesValidInductive!3259 thiss!15247 rulesArg!259)))

(assert (=> d!1596149 (= (maxPrefixZipper!753 thiss!15247 rulesArg!259 lt!2047512) lt!2047671)))

(declare-fun call!345988 () Option!14381)

(declare-fun bm!345983 () Bool)

(declare-fun maxPrefixOneRuleZipper!283 (LexerInterface!7948 Rule!16512 List!57454) Option!14381)

(assert (=> bm!345983 (= call!345988 (maxPrefixOneRuleZipper!283 thiss!15247 (h!63780 rulesArg!259) lt!2047512))))

(declare-fun b!4959770 () Bool)

(assert (=> b!4959770 (= e!3099821 call!345988)))

(declare-fun b!4959771 () Bool)

(declare-fun lt!2047673 () Option!14381)

(declare-fun lt!2047670 () Option!14381)

(assert (=> b!4959771 (= e!3099821 (ite (and ((_ is None!14380) lt!2047673) ((_ is None!14380) lt!2047670)) None!14380 (ite ((_ is None!14380) lt!2047670) lt!2047673 (ite ((_ is None!14380) lt!2047673) lt!2047670 (ite (>= (size!37998 (_1!34293 (v!50365 lt!2047673))) (size!37998 (_1!34293 (v!50365 lt!2047670)))) lt!2047673 lt!2047670)))))))

(assert (=> b!4959771 (= lt!2047673 call!345988)))

(assert (=> b!4959771 (= lt!2047670 (maxPrefixZipper!753 thiss!15247 (t!368022 rulesArg!259) lt!2047512))))

(assert (= (and d!1596149 c!846462) b!4959770))

(assert (= (and d!1596149 (not c!846462)) b!4959771))

(assert (= (or b!4959770 b!4959771) bm!345983))

(assert (=> d!1596149 m!5984146))

(assert (=> d!1596149 m!5984128))

(assert (=> d!1596149 m!5984130))

(assert (=> d!1596149 m!5984164))

(declare-fun m!5984362 () Bool)

(assert (=> bm!345983 m!5984362))

(declare-fun m!5984364 () Bool)

(assert (=> b!4959771 m!5984364))

(assert (=> b!4959581 d!1596149))

(declare-fun d!1596151 () Bool)

(declare-fun c!846463 () Bool)

(assert (=> d!1596151 (= c!846463 ((_ is Node!15108) (c!846435 totalInput!464)))))

(declare-fun e!3099822 () Bool)

(assert (=> d!1596151 (= (inv!74845 (c!846435 totalInput!464)) e!3099822)))

(declare-fun b!4959772 () Bool)

(assert (=> b!4959772 (= e!3099822 (inv!74848 (c!846435 totalInput!464)))))

(declare-fun b!4959773 () Bool)

(declare-fun e!3099823 () Bool)

(assert (=> b!4959773 (= e!3099822 e!3099823)))

(declare-fun res!2116794 () Bool)

(assert (=> b!4959773 (= res!2116794 (not ((_ is Leaf!25111) (c!846435 totalInput!464))))))

(assert (=> b!4959773 (=> res!2116794 e!3099823)))

(declare-fun b!4959774 () Bool)

(assert (=> b!4959774 (= e!3099823 (inv!74849 (c!846435 totalInput!464)))))

(assert (= (and d!1596151 c!846463) b!4959772))

(assert (= (and d!1596151 (not c!846463)) b!4959773))

(assert (= (and b!4959773 (not res!2116794)) b!4959774))

(declare-fun m!5984366 () Bool)

(assert (=> b!4959772 m!5984366))

(declare-fun m!5984368 () Bool)

(assert (=> b!4959774 m!5984368))

(assert (=> b!4959582 d!1596151))

(assert (=> b!4959583 d!1596097))

(declare-fun d!1596153 () Bool)

(assert (=> d!1596153 (= (get!19868 lt!2047518) (v!50365 lt!2047518))))

(assert (=> b!4959583 d!1596153))

(declare-fun b!4959860 () Bool)

(declare-fun e!3099877 () Option!14381)

(declare-fun call!345991 () Option!14381)

(assert (=> b!4959860 (= e!3099877 call!345991)))

(declare-fun d!1596155 () Bool)

(declare-fun e!3099875 () Bool)

(assert (=> d!1596155 e!3099875))

(declare-fun res!2116824 () Bool)

(assert (=> d!1596155 (=> res!2116824 e!3099875)))

(declare-fun lt!2047699 () Option!14381)

(assert (=> d!1596155 (= res!2116824 (isEmpty!30842 lt!2047699))))

(assert (=> d!1596155 (= lt!2047699 e!3099877)))

(declare-fun c!846468 () Bool)

(assert (=> d!1596155 (= c!846468 (and ((_ is Cons!57332) rulesArg!259) ((_ is Nil!57332) (t!368022 rulesArg!259))))))

(declare-fun lt!2047701 () Unit!148225)

(declare-fun lt!2047698 () Unit!148225)

(assert (=> d!1596155 (= lt!2047701 lt!2047698)))

(assert (=> d!1596155 (isPrefix!5209 lt!2047512 lt!2047512)))

(assert (=> d!1596155 (= lt!2047698 (lemmaIsPrefixRefl!3533 lt!2047512 lt!2047512))))

(assert (=> d!1596155 (rulesValidInductive!3259 thiss!15247 rulesArg!259)))

(assert (=> d!1596155 (= (maxPrefix!4643 thiss!15247 rulesArg!259 lt!2047512) lt!2047699)))

(declare-fun b!4959861 () Bool)

(declare-fun res!2116823 () Bool)

(declare-fun e!3099876 () Bool)

(assert (=> b!4959861 (=> (not res!2116823) (not e!3099876))))

(declare-fun charsOf!5424 (Token!15212) BalanceConc!29646)

(assert (=> b!4959861 (= res!2116823 (matchR!6621 (regex!8356 (rule!11582 (_1!34293 (get!19868 lt!2047699)))) (list!18307 (charsOf!5424 (_1!34293 (get!19868 lt!2047699))))))))

(declare-fun b!4959862 () Bool)

(declare-fun res!2116826 () Bool)

(assert (=> b!4959862 (=> (not res!2116826) (not e!3099876))))

(declare-fun ++!12519 (List!57454 List!57454) List!57454)

(assert (=> b!4959862 (= res!2116826 (= (++!12519 (list!18307 (charsOf!5424 (_1!34293 (get!19868 lt!2047699)))) (_2!34293 (get!19868 lt!2047699))) lt!2047512))))

(declare-fun b!4959863 () Bool)

(declare-fun res!2116828 () Bool)

(assert (=> b!4959863 (=> (not res!2116828) (not e!3099876))))

(assert (=> b!4959863 (= res!2116828 (< (size!38001 (_2!34293 (get!19868 lt!2047699))) (size!38001 lt!2047512)))))

(declare-fun b!4959864 () Bool)

(assert (=> b!4959864 (= e!3099875 e!3099876)))

(declare-fun res!2116829 () Bool)

(assert (=> b!4959864 (=> (not res!2116829) (not e!3099876))))

(assert (=> b!4959864 (= res!2116829 (isDefined!11300 lt!2047699))))

(declare-fun bm!345986 () Bool)

(assert (=> bm!345986 (= call!345991 (maxPrefixOneRule!3614 thiss!15247 (h!63780 rulesArg!259) lt!2047512))))

(declare-fun b!4959865 () Bool)

(declare-fun res!2116825 () Bool)

(assert (=> b!4959865 (=> (not res!2116825) (not e!3099876))))

(assert (=> b!4959865 (= res!2116825 (= (list!18307 (charsOf!5424 (_1!34293 (get!19868 lt!2047699)))) (originalCharacters!8637 (_1!34293 (get!19868 lt!2047699)))))))

(declare-fun b!4959866 () Bool)

(declare-fun res!2116827 () Bool)

(assert (=> b!4959866 (=> (not res!2116827) (not e!3099876))))

(assert (=> b!4959866 (= res!2116827 (= (value!267588 (_1!34293 (get!19868 lt!2047699))) (apply!13889 (transformation!8356 (rule!11582 (_1!34293 (get!19868 lt!2047699)))) (seqFromList!6021 (originalCharacters!8637 (_1!34293 (get!19868 lt!2047699)))))))))

(declare-fun b!4959867 () Bool)

(declare-fun contains!19525 (List!57456 Rule!16512) Bool)

(assert (=> b!4959867 (= e!3099876 (contains!19525 rulesArg!259 (rule!11582 (_1!34293 (get!19868 lt!2047699)))))))

(declare-fun b!4959868 () Bool)

(declare-fun lt!2047700 () Option!14381)

(declare-fun lt!2047697 () Option!14381)

(assert (=> b!4959868 (= e!3099877 (ite (and ((_ is None!14380) lt!2047700) ((_ is None!14380) lt!2047697)) None!14380 (ite ((_ is None!14380) lt!2047697) lt!2047700 (ite ((_ is None!14380) lt!2047700) lt!2047697 (ite (>= (size!37998 (_1!34293 (v!50365 lt!2047700))) (size!37998 (_1!34293 (v!50365 lt!2047697)))) lt!2047700 lt!2047697)))))))

(assert (=> b!4959868 (= lt!2047700 call!345991)))

(assert (=> b!4959868 (= lt!2047697 (maxPrefix!4643 thiss!15247 (t!368022 rulesArg!259) lt!2047512))))

(assert (= (and d!1596155 c!846468) b!4959860))

(assert (= (and d!1596155 (not c!846468)) b!4959868))

(assert (= (or b!4959860 b!4959868) bm!345986))

(assert (= (and d!1596155 (not res!2116824)) b!4959864))

(assert (= (and b!4959864 res!2116829) b!4959865))

(assert (= (and b!4959865 res!2116825) b!4959863))

(assert (= (and b!4959863 res!2116828) b!4959862))

(assert (= (and b!4959862 res!2116826) b!4959866))

(assert (= (and b!4959866 res!2116827) b!4959861))

(assert (= (and b!4959861 res!2116823) b!4959867))

(declare-fun m!5984450 () Bool)

(assert (=> b!4959862 m!5984450))

(declare-fun m!5984452 () Bool)

(assert (=> b!4959862 m!5984452))

(assert (=> b!4959862 m!5984452))

(declare-fun m!5984454 () Bool)

(assert (=> b!4959862 m!5984454))

(assert (=> b!4959862 m!5984454))

(declare-fun m!5984456 () Bool)

(assert (=> b!4959862 m!5984456))

(declare-fun m!5984458 () Bool)

(assert (=> b!4959868 m!5984458))

(declare-fun m!5984460 () Bool)

(assert (=> bm!345986 m!5984460))

(declare-fun m!5984462 () Bool)

(assert (=> b!4959864 m!5984462))

(assert (=> b!4959863 m!5984450))

(declare-fun m!5984464 () Bool)

(assert (=> b!4959863 m!5984464))

(assert (=> b!4959863 m!5984338))

(assert (=> b!4959861 m!5984450))

(assert (=> b!4959861 m!5984452))

(assert (=> b!4959861 m!5984452))

(assert (=> b!4959861 m!5984454))

(assert (=> b!4959861 m!5984454))

(declare-fun m!5984466 () Bool)

(assert (=> b!4959861 m!5984466))

(declare-fun m!5984468 () Bool)

(assert (=> d!1596155 m!5984468))

(assert (=> d!1596155 m!5984128))

(assert (=> d!1596155 m!5984130))

(assert (=> d!1596155 m!5984164))

(assert (=> b!4959866 m!5984450))

(declare-fun m!5984470 () Bool)

(assert (=> b!4959866 m!5984470))

(assert (=> b!4959866 m!5984470))

(declare-fun m!5984472 () Bool)

(assert (=> b!4959866 m!5984472))

(assert (=> b!4959867 m!5984450))

(declare-fun m!5984474 () Bool)

(assert (=> b!4959867 m!5984474))

(assert (=> b!4959865 m!5984450))

(assert (=> b!4959865 m!5984452))

(assert (=> b!4959865 m!5984452))

(assert (=> b!4959865 m!5984454))

(assert (=> b!4959583 d!1596155))

(declare-fun d!1596177 () Bool)

(declare-fun e!3099880 () Bool)

(assert (=> d!1596177 e!3099880))

(declare-fun res!2116832 () Bool)

(assert (=> d!1596177 (=> res!2116832 e!3099880)))

(declare-fun lt!2047704 () Bool)

(assert (=> d!1596177 (= res!2116832 (not lt!2047704))))

(declare-fun drop!2333 (List!57454 Int) List!57454)

(assert (=> d!1596177 (= lt!2047704 (= lt!2047512 (drop!2333 (list!18307 totalInput!464) (- (size!38001 (list!18307 totalInput!464)) (size!38001 lt!2047512)))))))

(assert (=> d!1596177 (= (isSuffix!1155 lt!2047512 (list!18307 totalInput!464)) lt!2047704)))

(declare-fun b!4959871 () Bool)

(assert (=> b!4959871 (= e!3099880 (>= (size!38001 (list!18307 totalInput!464)) (size!38001 lt!2047512)))))

(assert (= (and d!1596177 (not res!2116832)) b!4959871))

(assert (=> d!1596177 m!5984166))

(declare-fun m!5984476 () Bool)

(assert (=> d!1596177 m!5984476))

(assert (=> d!1596177 m!5984338))

(assert (=> d!1596177 m!5984166))

(declare-fun m!5984478 () Bool)

(assert (=> d!1596177 m!5984478))

(assert (=> b!4959871 m!5984166))

(assert (=> b!4959871 m!5984476))

(assert (=> b!4959871 m!5984338))

(assert (=> b!4959584 d!1596177))

(declare-fun d!1596179 () Bool)

(assert (=> d!1596179 (= (list!18307 totalInput!464) (list!18308 (c!846435 totalInput!464)))))

(declare-fun bs!1182673 () Bool)

(assert (= bs!1182673 d!1596179))

(declare-fun m!5984480 () Bool)

(assert (=> bs!1182673 m!5984480))

(assert (=> b!4959584 d!1596179))

(declare-fun d!1596181 () Bool)

(assert (=> d!1596181 (= (list!18307 input!1342) (list!18308 (c!846435 input!1342)))))

(declare-fun bs!1182674 () Bool)

(assert (= bs!1182674 d!1596181))

(declare-fun m!5984482 () Bool)

(assert (=> bs!1182674 m!5984482))

(assert (=> b!4959584 d!1596181))

(declare-fun b!4959880 () Bool)

(declare-fun tp!1391068 () Bool)

(declare-fun e!3099885 () Bool)

(declare-fun tp!1391069 () Bool)

(assert (=> b!4959880 (= e!3099885 (and (inv!74845 (left!41808 (c!846435 totalInput!464))) tp!1391069 (inv!74845 (right!42138 (c!846435 totalInput!464))) tp!1391068))))

(declare-fun b!4959882 () Bool)

(declare-fun e!3099886 () Bool)

(declare-fun tp!1391070 () Bool)

(assert (=> b!4959882 (= e!3099886 tp!1391070)))

(declare-fun b!4959881 () Bool)

(declare-fun inv!74851 (IArray!30277) Bool)

(assert (=> b!4959881 (= e!3099885 (and (inv!74851 (xs!18434 (c!846435 totalInput!464))) e!3099886))))

(assert (=> b!4959582 (= tp!1391017 (and (inv!74845 (c!846435 totalInput!464)) e!3099885))))

(assert (= (and b!4959582 ((_ is Node!15108) (c!846435 totalInput!464))) b!4959880))

(assert (= b!4959881 b!4959882))

(assert (= (and b!4959582 ((_ is Leaf!25111) (c!846435 totalInput!464))) b!4959881))

(declare-fun m!5984484 () Bool)

(assert (=> b!4959880 m!5984484))

(declare-fun m!5984486 () Bool)

(assert (=> b!4959880 m!5984486))

(declare-fun m!5984488 () Bool)

(assert (=> b!4959881 m!5984488))

(assert (=> b!4959582 m!5984158))

(declare-fun b!4959893 () Bool)

(declare-fun b_free!132487 () Bool)

(declare-fun b_next!133277 () Bool)

(assert (=> b!4959893 (= b_free!132487 (not b_next!133277))))

(declare-fun tp!1391079 () Bool)

(declare-fun b_and!347339 () Bool)

(assert (=> b!4959893 (= tp!1391079 b_and!347339)))

(declare-fun b_free!132489 () Bool)

(declare-fun b_next!133279 () Bool)

(assert (=> b!4959893 (= b_free!132489 (not b_next!133279))))

(declare-fun tp!1391080 () Bool)

(declare-fun b_and!347341 () Bool)

(assert (=> b!4959893 (= tp!1391080 b_and!347341)))

(declare-fun e!3099897 () Bool)

(assert (=> b!4959893 (= e!3099897 (and tp!1391079 tp!1391080))))

(declare-fun b!4959892 () Bool)

(declare-fun e!3099895 () Bool)

(declare-fun tp!1391082 () Bool)

(assert (=> b!4959892 (= e!3099895 (and tp!1391082 (inv!74839 (tag!9220 (h!63780 (t!368022 rulesArg!259)))) (inv!74844 (transformation!8356 (h!63780 (t!368022 rulesArg!259)))) e!3099897))))

(declare-fun b!4959891 () Bool)

(declare-fun e!3099896 () Bool)

(declare-fun tp!1391081 () Bool)

(assert (=> b!4959891 (= e!3099896 (and e!3099895 tp!1391081))))

(assert (=> b!4959588 (= tp!1391018 e!3099896)))

(assert (= b!4959892 b!4959893))

(assert (= b!4959891 b!4959892))

(assert (= (and b!4959588 ((_ is Cons!57332) (t!368022 rulesArg!259))) b!4959891))

(declare-fun m!5984490 () Bool)

(assert (=> b!4959892 m!5984490))

(declare-fun m!5984492 () Bool)

(assert (=> b!4959892 m!5984492))

(declare-fun e!3099901 () Bool)

(assert (=> b!4959578 (= tp!1391019 e!3099901)))

(declare-fun b!4959905 () Bool)

(declare-fun tp!1391095 () Bool)

(declare-fun tp!1391093 () Bool)

(assert (=> b!4959905 (= e!3099901 (and tp!1391095 tp!1391093))))

(declare-fun b!4959906 () Bool)

(declare-fun tp!1391094 () Bool)

(assert (=> b!4959906 (= e!3099901 tp!1391094)))

(declare-fun b!4959904 () Bool)

(declare-fun tp_is_empty!36299 () Bool)

(assert (=> b!4959904 (= e!3099901 tp_is_empty!36299)))

(declare-fun b!4959907 () Bool)

(declare-fun tp!1391096 () Bool)

(declare-fun tp!1391097 () Bool)

(assert (=> b!4959907 (= e!3099901 (and tp!1391096 tp!1391097))))

(assert (= (and b!4959578 ((_ is ElementMatch!13589) (regex!8356 (h!63780 rulesArg!259)))) b!4959904))

(assert (= (and b!4959578 ((_ is Concat!22256) (regex!8356 (h!63780 rulesArg!259)))) b!4959905))

(assert (= (and b!4959578 ((_ is Star!13589) (regex!8356 (h!63780 rulesArg!259)))) b!4959906))

(assert (= (and b!4959578 ((_ is Union!13589) (regex!8356 (h!63780 rulesArg!259)))) b!4959907))

(declare-fun e!3099902 () Bool)

(declare-fun tp!1391098 () Bool)

(declare-fun tp!1391099 () Bool)

(declare-fun b!4959908 () Bool)

(assert (=> b!4959908 (= e!3099902 (and (inv!74845 (left!41808 (c!846435 input!1342))) tp!1391099 (inv!74845 (right!42138 (c!846435 input!1342))) tp!1391098))))

(declare-fun b!4959910 () Bool)

(declare-fun e!3099903 () Bool)

(declare-fun tp!1391100 () Bool)

(assert (=> b!4959910 (= e!3099903 tp!1391100)))

(declare-fun b!4959909 () Bool)

(assert (=> b!4959909 (= e!3099902 (and (inv!74851 (xs!18434 (c!846435 input!1342))) e!3099903))))

(assert (=> b!4959579 (= tp!1391020 (and (inv!74845 (c!846435 input!1342)) e!3099902))))

(assert (= (and b!4959579 ((_ is Node!15108) (c!846435 input!1342))) b!4959908))

(assert (= b!4959909 b!4959910))

(assert (= (and b!4959579 ((_ is Leaf!25111) (c!846435 input!1342))) b!4959909))

(declare-fun m!5984494 () Bool)

(assert (=> b!4959908 m!5984494))

(declare-fun m!5984496 () Bool)

(assert (=> b!4959908 m!5984496))

(declare-fun m!5984498 () Bool)

(assert (=> b!4959909 m!5984498))

(assert (=> b!4959579 m!5984160))

(check-sat (not d!1596177) (not b!4959749) (not b!4959724) (not b!4959704) (not b!4959708) (not bm!345980) (not b!4959866) (not b!4959723) (not b!4959726) (not b!4959880) (not b!4959682) (not b_next!133279) (not b_next!133271) (not d!1596155) (not b!4959907) b_and!347331 (not b!4959891) (not d!1596099) (not b!4959750) (not b!4959862) (not b!4959861) (not b!4959727) (not b!4959906) (not d!1596141) (not b!4959702) (not b!4959759) (not b_next!133277) (not bm!345983) tp_is_empty!36299 (not b!4959910) b_and!347333 (not d!1596179) (not b!4959909) (not b!4959725) (not d!1596093) (not b!4959582) (not b!4959882) (not d!1596125) (not b!4959864) (not b!4959748) (not b!4959771) (not b!4959863) (not bm!345986) (not b!4959871) b_and!347339 (not b!4959738) (not b!4959865) (not d!1596181) (not b!4959908) (not b!4959905) (not b!4959881) (not b!4959683) (not b!4959868) (not b!4959579) (not b!4959772) (not d!1596147) (not b!4959774) b_and!347341 (not d!1596133) (not b!4959892) (not d!1596123) (not b!4959709) (not d!1596145) (not d!1596129) (not d!1596149) (not b!4959703) (not d!1596143) (not b!4959707) (not b!4959867) (not d!1596139) (not b!4959757) (not b!4959706) (not b_next!133269))
(check-sat b_and!347331 (not b_next!133277) b_and!347333 b_and!347339 b_and!347341 (not b_next!133269) (not b_next!133279) (not b_next!133271))

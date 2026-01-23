; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511668 () Bool)

(assert start!511668)

(declare-fun b!4888251 () Bool)

(declare-fun b_free!131395 () Bool)

(declare-fun b_next!132185 () Bool)

(assert (=> b!4888251 (= b_free!131395 (not b_next!132185))))

(declare-fun tp!1375794 () Bool)

(declare-fun b_and!344227 () Bool)

(assert (=> b!4888251 (= tp!1375794 b_and!344227)))

(declare-fun b_free!131397 () Bool)

(declare-fun b_next!132187 () Bool)

(assert (=> b!4888251 (= b_free!131397 (not b_next!132187))))

(declare-fun tp!1375793 () Bool)

(declare-fun b_and!344229 () Bool)

(assert (=> b!4888251 (= tp!1375793 b_and!344229)))

(declare-fun b!4888249 () Bool)

(declare-fun b_free!131399 () Bool)

(declare-fun b_next!132189 () Bool)

(assert (=> b!4888249 (= b_free!131399 (not b_next!132189))))

(declare-fun tp!1375788 () Bool)

(declare-fun b_and!344231 () Bool)

(assert (=> b!4888249 (= tp!1375788 b_and!344231)))

(declare-fun b_free!131401 () Bool)

(declare-fun b_next!132191 () Bool)

(assert (=> b!4888249 (= b_free!131401 (not b_next!132191))))

(declare-fun tp!1375796 () Bool)

(declare-fun b_and!344233 () Bool)

(assert (=> b!4888249 (= tp!1375796 b_and!344233)))

(declare-fun e!3055886 () Bool)

(declare-fun tp!1375791 () Bool)

(declare-fun e!3055883 () Bool)

(declare-datatypes ((C!26664 0))(
  ( (C!26665 (val!22666 Int)) )
))
(declare-datatypes ((List!56479 0))(
  ( (Nil!56355) (Cons!56355 (h!62803 C!26664) (t!365125 List!56479)) )
))
(declare-datatypes ((IArray!29513 0))(
  ( (IArray!29514 (innerList!14814 List!56479)) )
))
(declare-datatypes ((Conc!14726 0))(
  ( (Node!14726 (left!40931 Conc!14726) (right!41261 Conc!14726) (csize!29682 Int) (cheight!14937 Int)) (Leaf!24522 (xs!18042 IArray!29513) (csize!29683 Int)) (Empty!14726) )
))
(declare-datatypes ((BalanceConc!28882 0))(
  ( (BalanceConc!28883 (c!830895 Conc!14726)) )
))
(declare-datatypes ((List!56480 0))(
  ( (Nil!56356) (Cons!56356 (h!62804 (_ BitVec 16)) (t!365126 List!56480)) )
))
(declare-datatypes ((TokenValue!8468 0))(
  ( (FloatLiteralValue!16936 (text!59721 List!56480)) (TokenValueExt!8467 (__x!34229 Int)) (Broken!42340 (value!261629 List!56480)) (Object!8591) (End!8468) (Def!8468) (Underscore!8468) (Match!8468) (Else!8468) (Error!8468) (Case!8468) (If!8468) (Extends!8468) (Abstract!8468) (Class!8468) (Val!8468) (DelimiterValue!16936 (del!8528 List!56480)) (KeywordValue!8474 (value!261630 List!56480)) (CommentValue!16936 (value!261631 List!56480)) (WhitespaceValue!16936 (value!261632 List!56480)) (IndentationValue!8468 (value!261633 List!56480)) (String!63781) (Int32!8468) (Broken!42341 (value!261634 List!56480)) (Boolean!8469) (Unit!146345) (OperatorValue!8471 (op!8528 List!56480)) (IdentifierValue!16936 (value!261635 List!56480)) (IdentifierValue!16937 (value!261636 List!56480)) (WhitespaceValue!16937 (value!261637 List!56480)) (True!16936) (False!16936) (Broken!42342 (value!261638 List!56480)) (Broken!42343 (value!261639 List!56480)) (True!16937) (RightBrace!8468) (RightBracket!8468) (Colon!8468) (Null!8468) (Comma!8468) (LeftBracket!8468) (False!16937) (LeftBrace!8468) (ImaginaryLiteralValue!8468 (text!59722 List!56480)) (StringLiteralValue!25404 (value!261640 List!56480)) (EOFValue!8468 (value!261641 List!56480)) (IdentValue!8468 (value!261642 List!56480)) (DelimiterValue!16937 (value!261643 List!56480)) (DedentValue!8468 (value!261644 List!56480)) (NewLineValue!8468 (value!261645 List!56480)) (IntegerValue!25404 (value!261646 (_ BitVec 32)) (text!59723 List!56480)) (IntegerValue!25405 (value!261647 Int) (text!59724 List!56480)) (Times!8468) (Or!8468) (Equal!8468) (Minus!8468) (Broken!42344 (value!261648 List!56480)) (And!8468) (Div!8468) (LessEqual!8468) (Mod!8468) (Concat!21701) (Not!8468) (Plus!8468) (SpaceValue!8468 (value!261649 List!56480)) (IntegerValue!25406 (value!261650 Int) (text!59725 List!56480)) (StringLiteralValue!25405 (text!59726 List!56480)) (FloatLiteralValue!16937 (text!59727 List!56480)) (BytesLiteralValue!8468 (value!261651 List!56480)) (CommentValue!16937 (value!261652 List!56480)) (StringLiteralValue!25406 (value!261653 List!56480)) (ErrorTokenValue!8468 (msg!8529 List!56480)) )
))
(declare-datatypes ((Regex!13233 0))(
  ( (ElementMatch!13233 (c!830896 C!26664)) (Concat!21702 (regOne!26978 Regex!13233) (regTwo!26978 Regex!13233)) (EmptyExpr!13233) (Star!13233 (reg!13562 Regex!13233)) (EmptyLang!13233) (Union!13233 (regOne!26979 Regex!13233) (regTwo!26979 Regex!13233)) )
))
(declare-datatypes ((String!63782 0))(
  ( (String!63783 (value!261654 String)) )
))
(declare-datatypes ((TokenValueInjection!16244 0))(
  ( (TokenValueInjection!16245 (toValue!11045 Int) (toChars!10904 Int)) )
))
(declare-datatypes ((Rule!16116 0))(
  ( (Rule!16117 (regex!8158 Regex!13233) (tag!9022 String!63782) (isSeparator!8158 Bool) (transformation!8158 TokenValueInjection!16244)) )
))
(declare-datatypes ((Token!14884 0))(
  ( (Token!14885 (value!261655 TokenValue!8468) (rule!11336 Rule!16116) (size!37104 Int) (originalCharacters!8473 List!56479)) )
))
(declare-datatypes ((tuple2!60372 0))(
  ( (tuple2!60373 (_1!33489 Token!14884) (_2!33489 BalanceConc!28882)) )
))
(declare-datatypes ((Option!13997 0))(
  ( (None!13996) (Some!13996 (v!49946 tuple2!60372)) )
))
(declare-fun err!4497 () Option!13997)

(declare-fun b!4888247 () Bool)

(declare-fun inv!72572 (String!63782) Bool)

(declare-fun inv!72577 (TokenValueInjection!16244) Bool)

(assert (=> b!4888247 (= e!3055886 (and tp!1375791 (inv!72572 (tag!9022 (rule!11336 (_1!33489 (v!49946 err!4497))))) (inv!72577 (transformation!8158 (rule!11336 (_1!33489 (v!49946 err!4497))))) e!3055883))))

(declare-fun b!4888248 () Bool)

(declare-fun res!2087615 () Bool)

(declare-fun e!3055878 () Bool)

(assert (=> b!4888248 (=> (not res!2087615) (not e!3055878))))

(declare-datatypes ((List!56481 0))(
  ( (Nil!56357) (Cons!56357 (h!62805 Rule!16116) (t!365127 List!56481)) )
))
(declare-fun rulesArg!165 () List!56481)

(declare-fun isEmpty!30212 (List!56481) Bool)

(assert (=> b!4888248 (= res!2087615 (not (isEmpty!30212 rulesArg!165)))))

(declare-fun e!3055887 () Bool)

(assert (=> b!4888249 (= e!3055887 (and tp!1375788 tp!1375796))))

(declare-fun b!4888250 () Bool)

(declare-fun e!3055877 () Bool)

(declare-fun e!3055884 () Bool)

(assert (=> b!4888250 (= e!3055877 e!3055884)))

(declare-fun res!2087614 () Bool)

(assert (=> b!4888250 (=> res!2087614 e!3055884)))

(declare-fun lt!2003455 () Bool)

(declare-fun lt!2003451 () Bool)

(assert (=> b!4888250 (= res!2087614 (or (not (= lt!2003455 lt!2003451)) (not lt!2003455)))))

(declare-datatypes ((tuple2!60374 0))(
  ( (tuple2!60375 (_1!33490 Token!14884) (_2!33490 List!56479)) )
))
(declare-datatypes ((Option!13998 0))(
  ( (None!13997) (Some!13997 (v!49947 tuple2!60374)) )
))
(declare-fun lt!2003450 () Option!13998)

(declare-fun isDefined!11010 (Option!13998) Bool)

(assert (=> b!4888250 (= lt!2003451 (isDefined!11010 lt!2003450))))

(declare-fun lt!2003454 () Option!13997)

(declare-fun isDefined!11011 (Option!13997) Bool)

(assert (=> b!4888250 (= lt!2003455 (isDefined!11011 lt!2003454))))

(declare-datatypes ((LexerInterface!7750 0))(
  ( (LexerInterfaceExt!7747 (__x!34230 Int)) (Lexer!7748) )
))
(declare-fun thiss!14805 () LexerInterface!7750)

(declare-fun lt!2003452 () List!56479)

(declare-fun maxPrefixZipper!661 (LexerInterface!7750 List!56481 List!56479) Option!13998)

(assert (=> b!4888250 (= lt!2003450 (maxPrefixZipper!661 thiss!14805 rulesArg!165 lt!2003452))))

(assert (=> b!4888250 (= lt!2003454 err!4497)))

(assert (=> b!4888250 true))

(declare-fun e!3055888 () Bool)

(assert (=> b!4888250 e!3055888))

(assert (=> b!4888251 (= e!3055883 (and tp!1375794 tp!1375793))))

(declare-fun res!2087618 () Bool)

(assert (=> start!511668 (=> (not res!2087618) (not e!3055878))))

(get-info :version)

(assert (=> start!511668 (= res!2087618 ((_ is Lexer!7748) thiss!14805))))

(assert (=> start!511668 e!3055878))

(assert (=> start!511668 true))

(declare-fun e!3055875 () Bool)

(assert (=> start!511668 e!3055875))

(declare-fun input!1236 () BalanceConc!28882)

(declare-fun e!3055880 () Bool)

(declare-fun inv!72578 (BalanceConc!28882) Bool)

(assert (=> start!511668 (and (inv!72578 input!1236) e!3055880)))

(declare-fun b!4888252 () Bool)

(declare-fun e!3055876 () Bool)

(declare-fun tp!1375790 () Bool)

(assert (=> b!4888252 (= e!3055875 (and e!3055876 tp!1375790))))

(declare-fun b!4888253 () Bool)

(declare-fun res!2087617 () Bool)

(assert (=> b!4888253 (=> (not res!2087617) (not e!3055878))))

(declare-fun rulesValidInductive!3137 (LexerInterface!7750 List!56481) Bool)

(assert (=> b!4888253 (= res!2087617 (rulesValidInductive!3137 thiss!14805 rulesArg!165))))

(declare-fun b!4888254 () Bool)

(assert (=> b!4888254 (= e!3055884 lt!2003451)))

(declare-fun b!4888255 () Bool)

(declare-fun res!2087613 () Bool)

(assert (=> b!4888255 (=> res!2087613 e!3055884)))

(declare-fun get!19442 (Option!13997) tuple2!60372)

(declare-fun get!19443 (Option!13998) tuple2!60374)

(assert (=> b!4888255 (= res!2087613 (not (= (_1!33489 (get!19442 lt!2003454)) (_1!33490 (get!19443 lt!2003450)))))))

(declare-fun b!4888256 () Bool)

(declare-fun e!3055879 () Bool)

(declare-fun tp!1375797 () Bool)

(declare-fun inv!72579 (Conc!14726) Bool)

(assert (=> b!4888256 (= e!3055879 (and (inv!72579 (c!830895 (_2!33489 (v!49946 err!4497)))) tp!1375797))))

(declare-fun b!4888257 () Bool)

(declare-fun e!3055885 () Bool)

(declare-fun tp!1375792 () Bool)

(declare-fun inv!21 (TokenValue!8468) Bool)

(assert (=> b!4888257 (= e!3055885 (and (inv!21 (value!261655 (_1!33489 (v!49946 err!4497)))) e!3055886 tp!1375792))))

(declare-fun b!4888258 () Bool)

(declare-fun inv!72580 (Token!14884) Bool)

(assert (=> b!4888258 (= e!3055888 (and (inv!72580 (_1!33489 (v!49946 err!4497))) e!3055885 (inv!72578 (_2!33489 (v!49946 err!4497))) e!3055879))))

(declare-fun b!4888259 () Bool)

(assert (=> b!4888259 (= e!3055878 (not e!3055877))))

(declare-fun res!2087616 () Bool)

(assert (=> b!4888259 (=> res!2087616 e!3055877)))

(assert (=> b!4888259 (= res!2087616 (or (and ((_ is Cons!56357) rulesArg!165) ((_ is Nil!56357) (t!365127 rulesArg!165))) ((_ is Cons!56357) rulesArg!165)))))

(declare-fun isPrefix!4880 (List!56479 List!56479) Bool)

(assert (=> b!4888259 (isPrefix!4880 lt!2003452 lt!2003452)))

(declare-datatypes ((Unit!146346 0))(
  ( (Unit!146347) )
))
(declare-fun lt!2003453 () Unit!146346)

(declare-fun lemmaIsPrefixRefl!3277 (List!56479 List!56479) Unit!146346)

(assert (=> b!4888259 (= lt!2003453 (lemmaIsPrefixRefl!3277 lt!2003452 lt!2003452))))

(declare-fun list!17698 (BalanceConc!28882) List!56479)

(assert (=> b!4888259 (= lt!2003452 (list!17698 input!1236))))

(declare-fun b!4888260 () Bool)

(declare-fun tp!1375789 () Bool)

(assert (=> b!4888260 (= e!3055880 (and (inv!72579 (c!830895 input!1236)) tp!1375789))))

(declare-fun b!4888261 () Bool)

(declare-fun tp!1375795 () Bool)

(assert (=> b!4888261 (= e!3055876 (and tp!1375795 (inv!72572 (tag!9022 (h!62805 rulesArg!165))) (inv!72577 (transformation!8158 (h!62805 rulesArg!165))) e!3055887))))

(assert (= (and start!511668 res!2087618) b!4888253))

(assert (= (and b!4888253 res!2087617) b!4888248))

(assert (= (and b!4888248 res!2087615) b!4888259))

(assert (= (and b!4888259 (not res!2087616)) b!4888250))

(assert (= b!4888247 b!4888251))

(assert (= b!4888257 b!4888247))

(assert (= b!4888258 b!4888257))

(assert (= b!4888258 b!4888256))

(assert (= (and b!4888250 ((_ is Some!13996) err!4497)) b!4888258))

(assert (= (and b!4888250 (not res!2087614)) b!4888255))

(assert (= (and b!4888255 (not res!2087613)) b!4888254))

(assert (= b!4888261 b!4888249))

(assert (= b!4888252 b!4888261))

(assert (= (and start!511668 ((_ is Cons!56357) rulesArg!165)) b!4888252))

(assert (= start!511668 b!4888260))

(declare-fun m!5891900 () Bool)

(assert (=> b!4888253 m!5891900))

(declare-fun m!5891902 () Bool)

(assert (=> start!511668 m!5891902))

(declare-fun m!5891904 () Bool)

(assert (=> b!4888261 m!5891904))

(declare-fun m!5891906 () Bool)

(assert (=> b!4888261 m!5891906))

(declare-fun m!5891908 () Bool)

(assert (=> b!4888248 m!5891908))

(declare-fun m!5891910 () Bool)

(assert (=> b!4888258 m!5891910))

(declare-fun m!5891912 () Bool)

(assert (=> b!4888258 m!5891912))

(declare-fun m!5891914 () Bool)

(assert (=> b!4888247 m!5891914))

(declare-fun m!5891916 () Bool)

(assert (=> b!4888247 m!5891916))

(declare-fun m!5891918 () Bool)

(assert (=> b!4888259 m!5891918))

(declare-fun m!5891920 () Bool)

(assert (=> b!4888259 m!5891920))

(declare-fun m!5891922 () Bool)

(assert (=> b!4888259 m!5891922))

(declare-fun m!5891924 () Bool)

(assert (=> b!4888256 m!5891924))

(declare-fun m!5891926 () Bool)

(assert (=> b!4888257 m!5891926))

(declare-fun m!5891928 () Bool)

(assert (=> b!4888255 m!5891928))

(declare-fun m!5891930 () Bool)

(assert (=> b!4888255 m!5891930))

(declare-fun m!5891932 () Bool)

(assert (=> b!4888260 m!5891932))

(declare-fun m!5891934 () Bool)

(assert (=> b!4888250 m!5891934))

(declare-fun m!5891936 () Bool)

(assert (=> b!4888250 m!5891936))

(declare-fun m!5891938 () Bool)

(assert (=> b!4888250 m!5891938))

(check-sat (not b_next!132191) (not b!4888258) (not b!4888250) (not b!4888248) (not b!4888259) (not b!4888247) (not b!4888261) b_and!344227 (not b!4888257) b_and!344229 (not b_next!132187) (not b!4888253) b_and!344233 (not b!4888252) (not b_next!132185) (not b!4888256) (not b!4888260) b_and!344231 (not b!4888255) (not start!511668) (not b_next!132189))
(check-sat (not b_next!132191) (not b_next!132185) b_and!344231 b_and!344227 b_and!344229 (not b_next!132187) b_and!344233 (not b_next!132189))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522068 () Bool)

(assert start!522068)

(declare-fun b!4953649 () Bool)

(declare-fun b_free!132083 () Bool)

(declare-fun b_next!132873 () Bool)

(assert (=> b!4953649 (= b_free!132083 (not b_next!132873))))

(declare-fun tp!1388802 () Bool)

(declare-fun b_and!346935 () Bool)

(assert (=> b!4953649 (= tp!1388802 b_and!346935)))

(declare-fun b_free!132085 () Bool)

(declare-fun b_next!132875 () Bool)

(assert (=> b!4953649 (= b_free!132085 (not b_next!132875))))

(declare-fun tp!1388797 () Bool)

(declare-fun b_and!346937 () Bool)

(assert (=> b!4953649 (= tp!1388797 b_and!346937)))

(declare-fun b!4953647 () Bool)

(declare-fun e!3095073 () Bool)

(declare-fun e!3095067 () Bool)

(declare-fun tp!1388800 () Bool)

(assert (=> b!4953647 (= e!3095073 (and e!3095067 tp!1388800))))

(declare-fun b!4953648 () Bool)

(declare-datatypes ((List!57214 0))(
  ( (Nil!57090) (Cons!57090 (h!63538 (_ BitVec 16)) (t!367780 List!57214)) )
))
(declare-datatypes ((TokenValue!8586 0))(
  ( (FloatLiteralValue!17172 (text!60547 List!57214)) (TokenValueExt!8585 (__x!34465 Int)) (Broken!42930 (value!265286 List!57214)) (Object!8709) (End!8586) (Def!8586) (Underscore!8586) (Match!8586) (Else!8586) (Error!8586) (Case!8586) (If!8586) (Extends!8586) (Abstract!8586) (Class!8586) (Val!8586) (DelimiterValue!17172 (del!8646 List!57214)) (KeywordValue!8592 (value!265287 List!57214)) (CommentValue!17172 (value!265288 List!57214)) (WhitespaceValue!17172 (value!265289 List!57214)) (IndentationValue!8586 (value!265290 List!57214)) (String!64803) (Int32!8586) (Broken!42931 (value!265291 List!57214)) (Boolean!8587) (Unit!147984) (OperatorValue!8589 (op!8646 List!57214)) (IdentifierValue!17172 (value!265292 List!57214)) (IdentifierValue!17173 (value!265293 List!57214)) (WhitespaceValue!17173 (value!265294 List!57214)) (True!17172) (False!17172) (Broken!42932 (value!265295 List!57214)) (Broken!42933 (value!265296 List!57214)) (True!17173) (RightBrace!8586) (RightBracket!8586) (Colon!8586) (Null!8586) (Comma!8586) (LeftBracket!8586) (False!17173) (LeftBrace!8586) (ImaginaryLiteralValue!8586 (text!60548 List!57214)) (StringLiteralValue!25758 (value!265297 List!57214)) (EOFValue!8586 (value!265298 List!57214)) (IdentValue!8586 (value!265299 List!57214)) (DelimiterValue!17173 (value!265300 List!57214)) (DedentValue!8586 (value!265301 List!57214)) (NewLineValue!8586 (value!265302 List!57214)) (IntegerValue!25758 (value!265303 (_ BitVec 32)) (text!60549 List!57214)) (IntegerValue!25759 (value!265304 Int) (text!60550 List!57214)) (Times!8586) (Or!8586) (Equal!8586) (Minus!8586) (Broken!42934 (value!265305 List!57214)) (And!8586) (Div!8586) (LessEqual!8586) (Mod!8586) (Concat!22095) (Not!8586) (Plus!8586) (SpaceValue!8586 (value!265306 List!57214)) (IntegerValue!25760 (value!265307 Int) (text!60551 List!57214)) (StringLiteralValue!25759 (text!60552 List!57214)) (FloatLiteralValue!17173 (text!60553 List!57214)) (BytesLiteralValue!8586 (value!265308 List!57214)) (CommentValue!17173 (value!265309 List!57214)) (StringLiteralValue!25760 (value!265310 List!57214)) (ErrorTokenValue!8586 (msg!8647 List!57214)) )
))
(declare-datatypes ((C!27268 0))(
  ( (C!27269 (val!23000 Int)) )
))
(declare-datatypes ((List!57215 0))(
  ( (Nil!57091) (Cons!57091 (h!63539 C!27268) (t!367781 List!57215)) )
))
(declare-datatypes ((IArray!30117 0))(
  ( (IArray!30118 (innerList!15116 List!57215)) )
))
(declare-datatypes ((Regex!13509 0))(
  ( (ElementMatch!13509 (c!845957 C!27268)) (Concat!22096 (regOne!27530 Regex!13509) (regTwo!27530 Regex!13509)) (EmptyExpr!13509) (Star!13509 (reg!13838 Regex!13509)) (EmptyLang!13509) (Union!13509 (regOne!27531 Regex!13509) (regTwo!27531 Regex!13509)) )
))
(declare-datatypes ((String!64804 0))(
  ( (String!64805 (value!265311 String)) )
))
(declare-datatypes ((Conc!15028 0))(
  ( (Node!15028 (left!41648 Conc!15028) (right!41978 Conc!15028) (csize!30286 Int) (cheight!15239 Int)) (Leaf!24991 (xs!18354 IArray!30117) (csize!30287 Int)) (Empty!15028) )
))
(declare-datatypes ((BalanceConc!29486 0))(
  ( (BalanceConc!29487 (c!845958 Conc!15028)) )
))
(declare-datatypes ((TokenValueInjection!16480 0))(
  ( (TokenValueInjection!16481 (toValue!11227 Int) (toChars!11086 Int)) )
))
(declare-datatypes ((Rule!16352 0))(
  ( (Rule!16353 (regex!8276 Regex!13509) (tag!9140 String!64804) (isSeparator!8276 Bool) (transformation!8276 TokenValueInjection!16480)) )
))
(declare-datatypes ((List!57216 0))(
  ( (Nil!57092) (Cons!57092 (h!63540 Rule!16352) (t!367782 List!57216)) )
))
(declare-fun rulesArg!259 () List!57216)

(declare-fun tp!1388799 () Bool)

(declare-fun e!3095071 () Bool)

(declare-fun inv!74425 (String!64804) Bool)

(declare-fun inv!74429 (TokenValueInjection!16480) Bool)

(assert (=> b!4953648 (= e!3095067 (and tp!1388799 (inv!74425 (tag!9140 (h!63540 rulesArg!259))) (inv!74429 (transformation!8276 (h!63540 rulesArg!259))) e!3095071))))

(assert (=> b!4953649 (= e!3095071 (and tp!1388802 tp!1388797))))

(declare-fun b!4953650 () Bool)

(declare-fun e!3095068 () Bool)

(declare-fun input!1342 () BalanceConc!29486)

(declare-fun tp!1388801 () Bool)

(declare-fun inv!74430 (Conc!15028) Bool)

(assert (=> b!4953650 (= e!3095068 (and (inv!74430 (c!845958 input!1342)) tp!1388801))))

(declare-fun b!4953651 () Bool)

(declare-fun e!3095065 () Bool)

(declare-fun totalInput!464 () BalanceConc!29486)

(declare-fun tp!1388798 () Bool)

(assert (=> b!4953651 (= e!3095065 (and (inv!74430 (c!845958 totalInput!464)) tp!1388798))))

(declare-fun res!2113288 () Bool)

(declare-fun e!3095066 () Bool)

(assert (=> start!522068 (=> (not res!2113288) (not e!3095066))))

(declare-datatypes ((LexerInterface!7868 0))(
  ( (LexerInterfaceExt!7865 (__x!34466 Int)) (Lexer!7866) )
))
(declare-fun thiss!15247 () LexerInterface!7868)

(get-info :version)

(assert (=> start!522068 (= res!2113288 ((_ is Lexer!7866) thiss!15247))))

(assert (=> start!522068 e!3095066))

(assert (=> start!522068 true))

(assert (=> start!522068 e!3095073))

(declare-fun inv!74431 (BalanceConc!29486) Bool)

(assert (=> start!522068 (and (inv!74431 input!1342) e!3095068)))

(assert (=> start!522068 (and (inv!74431 totalInput!464) e!3095065)))

(declare-fun b!4953652 () Bool)

(declare-fun e!3095069 () Bool)

(declare-fun e!3095072 () Bool)

(assert (=> b!4953652 (= e!3095069 (not e!3095072))))

(declare-fun res!2113290 () Bool)

(assert (=> b!4953652 (=> res!2113290 e!3095072)))

(assert (=> b!4953652 (= res!2113290 (or (not ((_ is Cons!57092) rulesArg!259)) (not ((_ is Nil!57092) (t!367782 rulesArg!259)))))))

(declare-fun lt!2044388 () List!57215)

(declare-fun isPrefix!5129 (List!57215 List!57215) Bool)

(assert (=> b!4953652 (isPrefix!5129 lt!2044388 lt!2044388)))

(declare-datatypes ((Unit!147985 0))(
  ( (Unit!147986) )
))
(declare-fun lt!2044390 () Unit!147985)

(declare-fun lemmaIsPrefixRefl!3453 (List!57215 List!57215) Unit!147985)

(assert (=> b!4953652 (= lt!2044390 (lemmaIsPrefixRefl!3453 lt!2044388 lt!2044388))))

(declare-fun b!4953653 () Bool)

(assert (=> b!4953653 (= e!3095066 e!3095069)))

(declare-fun res!2113291 () Bool)

(assert (=> b!4953653 (=> (not res!2113291) (not e!3095069))))

(declare-fun isSuffix!1075 (List!57215 List!57215) Bool)

(declare-fun list!18208 (BalanceConc!29486) List!57215)

(assert (=> b!4953653 (= res!2113291 (isSuffix!1075 lt!2044388 (list!18208 totalInput!464)))))

(assert (=> b!4953653 (= lt!2044388 (list!18208 input!1342))))

(declare-fun b!4953654 () Bool)

(declare-fun res!2113292 () Bool)

(assert (=> b!4953654 (=> (not res!2113292) (not e!3095066))))

(declare-fun rulesValidInductive!3179 (LexerInterface!7868 List!57216) Bool)

(assert (=> b!4953654 (= res!2113292 (rulesValidInductive!3179 thiss!15247 rulesArg!259))))

(declare-fun b!4953655 () Bool)

(declare-fun lt!2044391 () Bool)

(declare-fun lt!2044389 () Bool)

(assert (=> b!4953655 (= e!3095072 (or (not (= lt!2044391 lt!2044389)) (not lt!2044391) lt!2044389))))

(declare-datatypes ((Token!15060 0))(
  ( (Token!15061 (value!265312 TokenValue!8586) (rule!11488 Rule!16352) (size!37886 Int) (originalCharacters!8561 List!57215)) )
))
(declare-datatypes ((tuple2!61620 0))(
  ( (tuple2!61621 (_1!34113 Token!15060) (_2!34113 List!57215)) )
))
(declare-datatypes ((Option!14235 0))(
  ( (None!14234) (Some!14234 (v!50219 tuple2!61620)) )
))
(declare-fun isDefined!11188 (Option!14235) Bool)

(declare-fun maxPrefixZipper!687 (LexerInterface!7868 List!57216 List!57215) Option!14235)

(assert (=> b!4953655 (= lt!2044389 (isDefined!11188 (maxPrefixZipper!687 thiss!15247 rulesArg!259 lt!2044388)))))

(declare-datatypes ((tuple2!61622 0))(
  ( (tuple2!61623 (_1!34114 Token!15060) (_2!34114 BalanceConc!29486)) )
))
(declare-datatypes ((Option!14236 0))(
  ( (None!14235) (Some!14235 (v!50220 tuple2!61622)) )
))
(declare-fun isDefined!11189 (Option!14236) Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2!264 (LexerInterface!7868 Rule!16352 BalanceConc!29486 BalanceConc!29486) Option!14236)

(assert (=> b!4953655 (= lt!2044391 (isDefined!11189 (maxPrefixOneRuleZipperSequenceV2!264 thiss!15247 (h!63540 rulesArg!259) input!1342 totalInput!464)))))

(declare-fun b!4953656 () Bool)

(declare-fun res!2113289 () Bool)

(assert (=> b!4953656 (=> (not res!2113289) (not e!3095066))))

(declare-fun isEmpty!30696 (List!57216) Bool)

(assert (=> b!4953656 (= res!2113289 (not (isEmpty!30696 rulesArg!259)))))

(assert (= (and start!522068 res!2113288) b!4953654))

(assert (= (and b!4953654 res!2113292) b!4953656))

(assert (= (and b!4953656 res!2113289) b!4953653))

(assert (= (and b!4953653 res!2113291) b!4953652))

(assert (= (and b!4953652 (not res!2113290)) b!4953655))

(assert (= b!4953648 b!4953649))

(assert (= b!4953647 b!4953648))

(assert (= (and start!522068 ((_ is Cons!57092) rulesArg!259)) b!4953647))

(assert (= start!522068 b!4953650))

(assert (= start!522068 b!4953651))

(declare-fun m!5978350 () Bool)

(assert (=> b!4953648 m!5978350))

(declare-fun m!5978352 () Bool)

(assert (=> b!4953648 m!5978352))

(declare-fun m!5978354 () Bool)

(assert (=> b!4953651 m!5978354))

(declare-fun m!5978356 () Bool)

(assert (=> b!4953653 m!5978356))

(assert (=> b!4953653 m!5978356))

(declare-fun m!5978358 () Bool)

(assert (=> b!4953653 m!5978358))

(declare-fun m!5978360 () Bool)

(assert (=> b!4953653 m!5978360))

(declare-fun m!5978362 () Bool)

(assert (=> b!4953656 m!5978362))

(declare-fun m!5978364 () Bool)

(assert (=> b!4953655 m!5978364))

(assert (=> b!4953655 m!5978364))

(declare-fun m!5978366 () Bool)

(assert (=> b!4953655 m!5978366))

(declare-fun m!5978368 () Bool)

(assert (=> b!4953655 m!5978368))

(assert (=> b!4953655 m!5978368))

(declare-fun m!5978370 () Bool)

(assert (=> b!4953655 m!5978370))

(declare-fun m!5978372 () Bool)

(assert (=> start!522068 m!5978372))

(declare-fun m!5978374 () Bool)

(assert (=> start!522068 m!5978374))

(declare-fun m!5978376 () Bool)

(assert (=> b!4953650 m!5978376))

(declare-fun m!5978378 () Bool)

(assert (=> b!4953652 m!5978378))

(declare-fun m!5978380 () Bool)

(assert (=> b!4953652 m!5978380))

(declare-fun m!5978382 () Bool)

(assert (=> b!4953654 m!5978382))

(check-sat (not b!4953653) (not b!4953652) (not b!4953650) (not b!4953648) b_and!346937 (not b!4953647) (not b!4953656) (not b!4953651) (not b!4953654) (not b_next!132873) (not b_next!132875) b_and!346935 (not start!522068) (not b!4953655))
(check-sat b_and!346935 b_and!346937 (not b_next!132873) (not b_next!132875))

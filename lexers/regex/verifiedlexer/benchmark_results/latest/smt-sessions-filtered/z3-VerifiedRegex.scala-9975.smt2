; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522386 () Bool)

(assert start!522386)

(declare-fun b!4955704 () Bool)

(declare-fun b_free!132223 () Bool)

(declare-fun b_next!133013 () Bool)

(assert (=> b!4955704 (= b_free!132223 (not b_next!133013))))

(declare-fun tp!1389656 () Bool)

(declare-fun b_and!347075 () Bool)

(assert (=> b!4955704 (= tp!1389656 b_and!347075)))

(declare-fun b_free!132225 () Bool)

(declare-fun b_next!133015 () Bool)

(assert (=> b!4955704 (= b_free!132225 (not b_next!133015))))

(declare-fun tp!1389657 () Bool)

(declare-fun b_and!347077 () Bool)

(assert (=> b!4955704 (= tp!1389657 b_and!347077)))

(declare-fun b!4955694 () Bool)

(declare-fun res!2114330 () Bool)

(declare-fun e!3096630 () Bool)

(assert (=> b!4955694 (=> (not res!2114330) (not e!3096630))))

(declare-datatypes ((List!57292 0))(
  ( (Nil!57168) (Cons!57168 (h!63616 (_ BitVec 16)) (t!367858 List!57292)) )
))
(declare-datatypes ((TokenValue!8612 0))(
  ( (FloatLiteralValue!17224 (text!60729 List!57292)) (TokenValueExt!8611 (__x!34517 Int)) (Broken!43060 (value!266023 List!57292)) (Object!8735) (End!8612) (Def!8612) (Underscore!8612) (Match!8612) (Else!8612) (Error!8612) (Case!8612) (If!8612) (Extends!8612) (Abstract!8612) (Class!8612) (Val!8612) (DelimiterValue!17224 (del!8672 List!57292)) (KeywordValue!8618 (value!266024 List!57292)) (CommentValue!17224 (value!266025 List!57292)) (WhitespaceValue!17224 (value!266026 List!57292)) (IndentationValue!8612 (value!266027 List!57292)) (String!64933) (Int32!8612) (Broken!43061 (value!266028 List!57292)) (Boolean!8613) (Unit!148062) (OperatorValue!8615 (op!8672 List!57292)) (IdentifierValue!17224 (value!266029 List!57292)) (IdentifierValue!17225 (value!266030 List!57292)) (WhitespaceValue!17225 (value!266031 List!57292)) (True!17224) (False!17224) (Broken!43062 (value!266032 List!57292)) (Broken!43063 (value!266033 List!57292)) (True!17225) (RightBrace!8612) (RightBracket!8612) (Colon!8612) (Null!8612) (Comma!8612) (LeftBracket!8612) (False!17225) (LeftBrace!8612) (ImaginaryLiteralValue!8612 (text!60730 List!57292)) (StringLiteralValue!25836 (value!266034 List!57292)) (EOFValue!8612 (value!266035 List!57292)) (IdentValue!8612 (value!266036 List!57292)) (DelimiterValue!17225 (value!266037 List!57292)) (DedentValue!8612 (value!266038 List!57292)) (NewLineValue!8612 (value!266039 List!57292)) (IntegerValue!25836 (value!266040 (_ BitVec 32)) (text!60731 List!57292)) (IntegerValue!25837 (value!266041 Int) (text!60732 List!57292)) (Times!8612) (Or!8612) (Equal!8612) (Minus!8612) (Broken!43064 (value!266042 List!57292)) (And!8612) (Div!8612) (LessEqual!8612) (Mod!8612) (Concat!22147) (Not!8612) (Plus!8612) (SpaceValue!8612 (value!266043 List!57292)) (IntegerValue!25838 (value!266044 Int) (text!60733 List!57292)) (StringLiteralValue!25837 (text!60734 List!57292)) (FloatLiteralValue!17225 (text!60735 List!57292)) (BytesLiteralValue!8612 (value!266045 List!57292)) (CommentValue!17225 (value!266046 List!57292)) (StringLiteralValue!25838 (value!266047 List!57292)) (ErrorTokenValue!8612 (msg!8673 List!57292)) )
))
(declare-datatypes ((C!27320 0))(
  ( (C!27321 (val!23026 Int)) )
))
(declare-datatypes ((Regex!13535 0))(
  ( (ElementMatch!13535 (c!846113 C!27320)) (Concat!22148 (regOne!27582 Regex!13535) (regTwo!27582 Regex!13535)) (EmptyExpr!13535) (Star!13535 (reg!13864 Regex!13535)) (EmptyLang!13535) (Union!13535 (regOne!27583 Regex!13535) (regTwo!27583 Regex!13535)) )
))
(declare-datatypes ((String!64934 0))(
  ( (String!64935 (value!266048 String)) )
))
(declare-datatypes ((List!57293 0))(
  ( (Nil!57169) (Cons!57169 (h!63617 C!27320) (t!367859 List!57293)) )
))
(declare-datatypes ((IArray!30169 0))(
  ( (IArray!30170 (innerList!15142 List!57293)) )
))
(declare-datatypes ((Conc!15054 0))(
  ( (Node!15054 (left!41707 Conc!15054) (right!42037 Conc!15054) (csize!30338 Int) (cheight!15265 Int)) (Leaf!25030 (xs!18380 IArray!30169) (csize!30339 Int)) (Empty!15054) )
))
(declare-datatypes ((BalanceConc!29538 0))(
  ( (BalanceConc!29539 (c!846114 Conc!15054)) )
))
(declare-datatypes ((TokenValueInjection!16532 0))(
  ( (TokenValueInjection!16533 (toValue!11253 Int) (toChars!11112 Int)) )
))
(declare-datatypes ((Rule!16404 0))(
  ( (Rule!16405 (regex!8302 Regex!13535) (tag!9166 String!64934) (isSeparator!8302 Bool) (transformation!8302 TokenValueInjection!16532)) )
))
(declare-datatypes ((List!57294 0))(
  ( (Nil!57170) (Cons!57170 (h!63618 Rule!16404) (t!367860 List!57294)) )
))
(declare-fun rulesArg!259 () List!57294)

(declare-fun isEmpty!30742 (List!57294) Bool)

(assert (=> b!4955694 (= res!2114330 (not (isEmpty!30742 rulesArg!259)))))

(declare-fun tp!1389655 () Bool)

(declare-fun b!4955695 () Bool)

(declare-fun e!3096638 () Bool)

(declare-fun e!3096639 () Bool)

(declare-fun inv!74568 (String!64934) Bool)

(declare-fun inv!74572 (TokenValueInjection!16532) Bool)

(assert (=> b!4955695 (= e!3096639 (and tp!1389655 (inv!74568 (tag!9166 (h!63618 rulesArg!259))) (inv!74572 (transformation!8302 (h!63618 rulesArg!259))) e!3096638))))

(declare-fun res!2114328 () Bool)

(assert (=> start!522386 (=> (not res!2114328) (not e!3096630))))

(declare-datatypes ((LexerInterface!7894 0))(
  ( (LexerInterfaceExt!7891 (__x!34518 Int)) (Lexer!7892) )
))
(declare-fun thiss!15247 () LexerInterface!7894)

(get-info :version)

(assert (=> start!522386 (= res!2114328 ((_ is Lexer!7892) thiss!15247))))

(assert (=> start!522386 e!3096630))

(assert (=> start!522386 true))

(declare-fun e!3096634 () Bool)

(assert (=> start!522386 e!3096634))

(declare-fun input!1342 () BalanceConc!29538)

(declare-fun e!3096633 () Bool)

(declare-fun inv!74573 (BalanceConc!29538) Bool)

(assert (=> start!522386 (and (inv!74573 input!1342) e!3096633)))

(declare-fun totalInput!464 () BalanceConc!29538)

(declare-fun e!3096632 () Bool)

(assert (=> start!522386 (and (inv!74573 totalInput!464) e!3096632)))

(declare-fun b!4955696 () Bool)

(declare-fun tp!1389659 () Bool)

(declare-fun inv!74574 (Conc!15054) Bool)

(assert (=> b!4955696 (= e!3096632 (and (inv!74574 (c!846114 totalInput!464)) tp!1389659))))

(declare-fun b!4955697 () Bool)

(declare-fun e!3096635 () Bool)

(assert (=> b!4955697 (= e!3096635 true)))

(declare-datatypes ((Token!15104 0))(
  ( (Token!15105 (value!266049 TokenValue!8612) (rule!11518 Rule!16404) (size!37924 Int) (originalCharacters!8583 List!57293)) )
))
(declare-datatypes ((tuple2!61724 0))(
  ( (tuple2!61725 (_1!34165 Token!15104) (_2!34165 List!57293)) )
))
(declare-datatypes ((Option!14273 0))(
  ( (None!14272) (Some!14272 (v!50257 tuple2!61724)) )
))
(declare-fun lt!2045272 () Option!14273)

(declare-fun lt!2045274 () List!57293)

(declare-fun maxPrefixZipper!699 (LexerInterface!7894 List!57294 List!57293) Option!14273)

(assert (=> b!4955697 (= lt!2045272 (maxPrefixZipper!699 thiss!15247 rulesArg!259 lt!2045274))))

(declare-fun b!4955698 () Bool)

(declare-fun e!3096637 () Bool)

(assert (=> b!4955698 (= e!3096637 e!3096635)))

(declare-fun res!2114327 () Bool)

(assert (=> b!4955698 (=> res!2114327 e!3096635)))

(declare-datatypes ((tuple2!61726 0))(
  ( (tuple2!61727 (_1!34166 Token!15104) (_2!34166 BalanceConc!29538)) )
))
(declare-datatypes ((Option!14274 0))(
  ( (None!14273) (Some!14273 (v!50258 tuple2!61726)) )
))
(declare-fun lt!2045271 () Option!14274)

(declare-fun lt!2045273 () Option!14274)

(assert (=> b!4955698 (= res!2114327 (or (not ((_ is None!14273) lt!2045271)) (not ((_ is None!14273) lt!2045273))))))

(declare-fun maxPrefixZipperSequenceV2!633 (LexerInterface!7894 List!57294 BalanceConc!29538 BalanceConc!29538) Option!14274)

(assert (=> b!4955698 (= lt!2045273 (maxPrefixZipperSequenceV2!633 thiss!15247 (t!367860 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!286 (LexerInterface!7894 Rule!16404 BalanceConc!29538 BalanceConc!29538) Option!14274)

(assert (=> b!4955698 (= lt!2045271 (maxPrefixOneRuleZipperSequenceV2!286 thiss!15247 (h!63618 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4955699 () Bool)

(declare-fun res!2114329 () Bool)

(assert (=> b!4955699 (=> (not res!2114329) (not e!3096630))))

(declare-fun rulesValidInductive!3205 (LexerInterface!7894 List!57294) Bool)

(assert (=> b!4955699 (= res!2114329 (rulesValidInductive!3205 thiss!15247 rulesArg!259))))

(declare-fun b!4955700 () Bool)

(declare-fun e!3096631 () Bool)

(assert (=> b!4955700 (= e!3096630 e!3096631)))

(declare-fun res!2114326 () Bool)

(assert (=> b!4955700 (=> (not res!2114326) (not e!3096631))))

(declare-fun isSuffix!1101 (List!57293 List!57293) Bool)

(declare-fun list!18243 (BalanceConc!29538) List!57293)

(assert (=> b!4955700 (= res!2114326 (isSuffix!1101 lt!2045274 (list!18243 totalInput!464)))))

(assert (=> b!4955700 (= lt!2045274 (list!18243 input!1342))))

(declare-fun b!4955701 () Bool)

(assert (=> b!4955701 (= e!3096631 (not e!3096637))))

(declare-fun res!2114331 () Bool)

(assert (=> b!4955701 (=> res!2114331 e!3096637)))

(assert (=> b!4955701 (= res!2114331 (or (and ((_ is Cons!57170) rulesArg!259) ((_ is Nil!57170) (t!367860 rulesArg!259))) (not ((_ is Cons!57170) rulesArg!259))))))

(declare-fun isPrefix!5155 (List!57293 List!57293) Bool)

(assert (=> b!4955701 (isPrefix!5155 lt!2045274 lt!2045274)))

(declare-datatypes ((Unit!148063 0))(
  ( (Unit!148064) )
))
(declare-fun lt!2045270 () Unit!148063)

(declare-fun lemmaIsPrefixRefl!3479 (List!57293 List!57293) Unit!148063)

(assert (=> b!4955701 (= lt!2045270 (lemmaIsPrefixRefl!3479 lt!2045274 lt!2045274))))

(declare-fun b!4955702 () Bool)

(declare-fun tp!1389660 () Bool)

(assert (=> b!4955702 (= e!3096633 (and (inv!74574 (c!846114 input!1342)) tp!1389660))))

(declare-fun b!4955703 () Bool)

(declare-fun tp!1389658 () Bool)

(assert (=> b!4955703 (= e!3096634 (and e!3096639 tp!1389658))))

(assert (=> b!4955704 (= e!3096638 (and tp!1389656 tp!1389657))))

(assert (= (and start!522386 res!2114328) b!4955699))

(assert (= (and b!4955699 res!2114329) b!4955694))

(assert (= (and b!4955694 res!2114330) b!4955700))

(assert (= (and b!4955700 res!2114326) b!4955701))

(assert (= (and b!4955701 (not res!2114331)) b!4955698))

(assert (= (and b!4955698 (not res!2114327)) b!4955697))

(assert (= b!4955695 b!4955704))

(assert (= b!4955703 b!4955695))

(assert (= (and start!522386 ((_ is Cons!57170) rulesArg!259)) b!4955703))

(assert (= start!522386 b!4955702))

(assert (= start!522386 b!4955696))

(declare-fun m!5980308 () Bool)

(assert (=> b!4955700 m!5980308))

(assert (=> b!4955700 m!5980308))

(declare-fun m!5980310 () Bool)

(assert (=> b!4955700 m!5980310))

(declare-fun m!5980312 () Bool)

(assert (=> b!4955700 m!5980312))

(declare-fun m!5980314 () Bool)

(assert (=> start!522386 m!5980314))

(declare-fun m!5980316 () Bool)

(assert (=> start!522386 m!5980316))

(declare-fun m!5980318 () Bool)

(assert (=> b!4955701 m!5980318))

(declare-fun m!5980320 () Bool)

(assert (=> b!4955701 m!5980320))

(declare-fun m!5980322 () Bool)

(assert (=> b!4955695 m!5980322))

(declare-fun m!5980324 () Bool)

(assert (=> b!4955695 m!5980324))

(declare-fun m!5980326 () Bool)

(assert (=> b!4955699 m!5980326))

(declare-fun m!5980328 () Bool)

(assert (=> b!4955696 m!5980328))

(declare-fun m!5980330 () Bool)

(assert (=> b!4955702 m!5980330))

(declare-fun m!5980332 () Bool)

(assert (=> b!4955694 m!5980332))

(declare-fun m!5980334 () Bool)

(assert (=> b!4955697 m!5980334))

(declare-fun m!5980336 () Bool)

(assert (=> b!4955698 m!5980336))

(declare-fun m!5980338 () Bool)

(assert (=> b!4955698 m!5980338))

(check-sat (not b!4955701) (not b_next!133015) (not start!522386) (not b!4955702) (not b!4955695) b_and!347075 (not b!4955697) b_and!347077 (not b!4955703) (not b!4955694) (not b!4955699) (not b!4955696) (not b!4955700) (not b_next!133013) (not b!4955698))
(check-sat b_and!347075 b_and!347077 (not b_next!133013) (not b_next!133015))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511184 () Bool)

(assert start!511184)

(declare-fun b!4884790 () Bool)

(declare-fun b_free!131155 () Bool)

(declare-fun b_next!131945 () Bool)

(assert (=> b!4884790 (= b_free!131155 (not b_next!131945))))

(declare-fun tp!1374614 () Bool)

(declare-fun b_and!343987 () Bool)

(assert (=> b!4884790 (= tp!1374614 b_and!343987)))

(declare-fun b_free!131157 () Bool)

(declare-fun b_next!131947 () Bool)

(assert (=> b!4884790 (= b_free!131157 (not b_next!131947))))

(declare-fun tp!1374611 () Bool)

(declare-fun b_and!343989 () Bool)

(assert (=> b!4884790 (= tp!1374611 b_and!343989)))

(declare-fun e!3053272 () Bool)

(assert (=> b!4884790 (= e!3053272 (and tp!1374614 tp!1374611))))

(declare-fun b!4884791 () Bool)

(declare-fun res!2085594 () Bool)

(declare-fun e!3053267 () Bool)

(assert (=> b!4884791 (=> (not res!2085594) (not e!3053267))))

(declare-datatypes ((C!26572 0))(
  ( (C!26573 (val!22620 Int)) )
))
(declare-datatypes ((List!56341 0))(
  ( (Nil!56217) (Cons!56217 (h!62665 C!26572) (t!364987 List!56341)) )
))
(declare-datatypes ((IArray!29421 0))(
  ( (IArray!29422 (innerList!14768 List!56341)) )
))
(declare-datatypes ((Conc!14680 0))(
  ( (Node!14680 (left!40838 Conc!14680) (right!41168 Conc!14680) (csize!29590 Int) (cheight!14891 Int)) (Leaf!24453 (xs!17996 IArray!29421) (csize!29591 Int)) (Empty!14680) )
))
(declare-datatypes ((BalanceConc!28790 0))(
  ( (BalanceConc!28791 (c!830577 Conc!14680)) )
))
(declare-datatypes ((List!56342 0))(
  ( (Nil!56218) (Cons!56218 (h!62666 (_ BitVec 16)) (t!364988 List!56342)) )
))
(declare-datatypes ((TokenValue!8422 0))(
  ( (FloatLiteralValue!16844 (text!59399 List!56342)) (TokenValueExt!8421 (__x!34137 Int)) (Broken!42110 (value!260318 List!56342)) (Object!8545) (End!8422) (Def!8422) (Underscore!8422) (Match!8422) (Else!8422) (Error!8422) (Case!8422) (If!8422) (Extends!8422) (Abstract!8422) (Class!8422) (Val!8422) (DelimiterValue!16844 (del!8482 List!56342)) (KeywordValue!8428 (value!260319 List!56342)) (CommentValue!16844 (value!260320 List!56342)) (WhitespaceValue!16844 (value!260321 List!56342)) (IndentationValue!8422 (value!260322 List!56342)) (String!63551) (Int32!8422) (Broken!42111 (value!260323 List!56342)) (Boolean!8423) (Unit!146207) (OperatorValue!8425 (op!8482 List!56342)) (IdentifierValue!16844 (value!260324 List!56342)) (IdentifierValue!16845 (value!260325 List!56342)) (WhitespaceValue!16845 (value!260326 List!56342)) (True!16844) (False!16844) (Broken!42112 (value!260327 List!56342)) (Broken!42113 (value!260328 List!56342)) (True!16845) (RightBrace!8422) (RightBracket!8422) (Colon!8422) (Null!8422) (Comma!8422) (LeftBracket!8422) (False!16845) (LeftBrace!8422) (ImaginaryLiteralValue!8422 (text!59400 List!56342)) (StringLiteralValue!25266 (value!260329 List!56342)) (EOFValue!8422 (value!260330 List!56342)) (IdentValue!8422 (value!260331 List!56342)) (DelimiterValue!16845 (value!260332 List!56342)) (DedentValue!8422 (value!260333 List!56342)) (NewLineValue!8422 (value!260334 List!56342)) (IntegerValue!25266 (value!260335 (_ BitVec 32)) (text!59401 List!56342)) (IntegerValue!25267 (value!260336 Int) (text!59402 List!56342)) (Times!8422) (Or!8422) (Equal!8422) (Minus!8422) (Broken!42114 (value!260337 List!56342)) (And!8422) (Div!8422) (LessEqual!8422) (Mod!8422) (Concat!21609) (Not!8422) (Plus!8422) (SpaceValue!8422 (value!260338 List!56342)) (IntegerValue!25268 (value!260339 Int) (text!59403 List!56342)) (StringLiteralValue!25267 (text!59404 List!56342)) (FloatLiteralValue!16845 (text!59405 List!56342)) (BytesLiteralValue!8422 (value!260340 List!56342)) (CommentValue!16845 (value!260341 List!56342)) (StringLiteralValue!25268 (value!260342 List!56342)) (ErrorTokenValue!8422 (msg!8483 List!56342)) )
))
(declare-datatypes ((Regex!13187 0))(
  ( (ElementMatch!13187 (c!830578 C!26572)) (Concat!21610 (regOne!26886 Regex!13187) (regTwo!26886 Regex!13187)) (EmptyExpr!13187) (Star!13187 (reg!13516 Regex!13187)) (EmptyLang!13187) (Union!13187 (regOne!26887 Regex!13187) (regTwo!26887 Regex!13187)) )
))
(declare-datatypes ((String!63552 0))(
  ( (String!63553 (value!260343 String)) )
))
(declare-datatypes ((TokenValueInjection!16152 0))(
  ( (TokenValueInjection!16153 (toValue!10999 Int) (toChars!10858 Int)) )
))
(declare-datatypes ((Rule!16024 0))(
  ( (Rule!16025 (regex!8112 Regex!13187) (tag!8976 String!63552) (isSeparator!8112 Bool) (transformation!8112 TokenValueInjection!16152)) )
))
(declare-datatypes ((List!56343 0))(
  ( (Nil!56219) (Cons!56219 (h!62667 Rule!16024) (t!364989 List!56343)) )
))
(declare-fun rulesArg!165 () List!56343)

(declare-fun isEmpty!30127 (List!56343) Bool)

(assert (=> b!4884791 (= res!2085594 (not (isEmpty!30127 rulesArg!165)))))

(declare-fun b!4884792 () Bool)

(declare-fun e!3053268 () Bool)

(declare-fun e!3053266 () Bool)

(assert (=> b!4884792 (= e!3053268 e!3053266)))

(declare-fun res!2085595 () Bool)

(assert (=> b!4884792 (=> res!2085595 e!3053266)))

(declare-datatypes ((Token!14792 0))(
  ( (Token!14793 (value!260344 TokenValue!8422) (rule!11278 Rule!16024) (size!37038 Int) (originalCharacters!8427 List!56341)) )
))
(declare-datatypes ((tuple2!60156 0))(
  ( (tuple2!60157 (_1!33381 Token!14792) (_2!33381 BalanceConc!28790)) )
))
(declare-datatypes ((Option!13907 0))(
  ( (None!13906) (Some!13906 (v!49856 tuple2!60156)) )
))
(declare-fun lt!2001327 () Option!13907)

(declare-fun lt!2001324 () Option!13907)

(get-info :version)

(assert (=> b!4884792 (= res!2085595 (or (and ((_ is None!13906) lt!2001327) ((_ is None!13906) lt!2001324)) ((_ is None!13906) lt!2001324) (not ((_ is None!13906) lt!2001327))))))

(declare-datatypes ((LexerInterface!7704 0))(
  ( (LexerInterfaceExt!7701 (__x!34138 Int)) (Lexer!7702) )
))
(declare-fun thiss!14805 () LexerInterface!7704)

(declare-fun input!1236 () BalanceConc!28790)

(declare-fun maxPrefixZipperSequence!1273 (LexerInterface!7704 List!56343 BalanceConc!28790) Option!13907)

(assert (=> b!4884792 (= lt!2001324 (maxPrefixZipperSequence!1273 thiss!14805 (t!364989 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!638 (LexerInterface!7704 Rule!16024 BalanceConc!28790) Option!13907)

(assert (=> b!4884792 (= lt!2001327 (maxPrefixOneRuleZipperSequence!638 thiss!14805 (h!62667 rulesArg!165) input!1236))))

(declare-fun res!2085591 () Bool)

(assert (=> start!511184 (=> (not res!2085591) (not e!3053267))))

(assert (=> start!511184 (= res!2085591 ((_ is Lexer!7702) thiss!14805))))

(assert (=> start!511184 e!3053267))

(assert (=> start!511184 true))

(declare-fun e!3053271 () Bool)

(assert (=> start!511184 e!3053271))

(declare-fun e!3053265 () Bool)

(declare-fun inv!72339 (BalanceConc!28790) Bool)

(assert (=> start!511184 (and (inv!72339 input!1236) e!3053265)))

(declare-fun b!4884793 () Bool)

(assert (=> b!4884793 (= e!3053267 (not e!3053268))))

(declare-fun res!2085592 () Bool)

(assert (=> b!4884793 (=> res!2085592 e!3053268)))

(assert (=> b!4884793 (= res!2085592 (or (and ((_ is Cons!56219) rulesArg!165) ((_ is Nil!56219) (t!364989 rulesArg!165))) (not ((_ is Cons!56219) rulesArg!165))))))

(declare-fun lt!2001325 () List!56341)

(declare-fun isPrefix!4834 (List!56341 List!56341) Bool)

(assert (=> b!4884793 (isPrefix!4834 lt!2001325 lt!2001325)))

(declare-datatypes ((Unit!146208 0))(
  ( (Unit!146209) )
))
(declare-fun lt!2001328 () Unit!146208)

(declare-fun lemmaIsPrefixRefl!3231 (List!56341 List!56341) Unit!146208)

(assert (=> b!4884793 (= lt!2001328 (lemmaIsPrefixRefl!3231 lt!2001325 lt!2001325))))

(declare-fun list!17641 (BalanceConc!28790) List!56341)

(assert (=> b!4884793 (= lt!2001325 (list!17641 input!1236))))

(declare-fun b!4884794 () Bool)

(declare-fun tp!1374613 () Bool)

(declare-fun inv!72340 (Conc!14680) Bool)

(assert (=> b!4884794 (= e!3053265 (and (inv!72340 (c!830577 input!1236)) tp!1374613))))

(declare-fun b!4884795 () Bool)

(declare-fun e!3053270 () Bool)

(declare-fun tp!1374612 () Bool)

(declare-fun inv!72335 (String!63552) Bool)

(declare-fun inv!72341 (TokenValueInjection!16152) Bool)

(assert (=> b!4884795 (= e!3053270 (and tp!1374612 (inv!72335 (tag!8976 (h!62667 rulesArg!165))) (inv!72341 (transformation!8112 (h!62667 rulesArg!165))) e!3053272))))

(declare-fun b!4884796 () Bool)

(declare-fun tp!1374615 () Bool)

(assert (=> b!4884796 (= e!3053271 (and e!3053270 tp!1374615))))

(declare-fun b!4884797 () Bool)

(assert (=> b!4884797 (= e!3053266 true)))

(declare-datatypes ((tuple2!60158 0))(
  ( (tuple2!60159 (_1!33382 Token!14792) (_2!33382 List!56341)) )
))
(declare-datatypes ((Option!13908 0))(
  ( (None!13907) (Some!13907 (v!49857 tuple2!60158)) )
))
(declare-fun lt!2001326 () Option!13908)

(declare-fun maxPrefixZipper!615 (LexerInterface!7704 List!56343 List!56341) Option!13908)

(assert (=> b!4884797 (= lt!2001326 (maxPrefixZipper!615 thiss!14805 rulesArg!165 lt!2001325))))

(declare-fun b!4884798 () Bool)

(declare-fun res!2085593 () Bool)

(assert (=> b!4884798 (=> (not res!2085593) (not e!3053267))))

(declare-fun rulesValidInductive!3091 (LexerInterface!7704 List!56343) Bool)

(assert (=> b!4884798 (= res!2085593 (rulesValidInductive!3091 thiss!14805 rulesArg!165))))

(assert (= (and start!511184 res!2085591) b!4884798))

(assert (= (and b!4884798 res!2085593) b!4884791))

(assert (= (and b!4884791 res!2085594) b!4884793))

(assert (= (and b!4884793 (not res!2085592)) b!4884792))

(assert (= (and b!4884792 (not res!2085595)) b!4884797))

(assert (= b!4884795 b!4884790))

(assert (= b!4884796 b!4884795))

(assert (= (and start!511184 ((_ is Cons!56219) rulesArg!165)) b!4884796))

(assert (= start!511184 b!4884794))

(declare-fun m!5888684 () Bool)

(assert (=> b!4884795 m!5888684))

(declare-fun m!5888686 () Bool)

(assert (=> b!4884795 m!5888686))

(declare-fun m!5888688 () Bool)

(assert (=> b!4884798 m!5888688))

(declare-fun m!5888690 () Bool)

(assert (=> b!4884794 m!5888690))

(declare-fun m!5888692 () Bool)

(assert (=> b!4884791 m!5888692))

(declare-fun m!5888694 () Bool)

(assert (=> b!4884797 m!5888694))

(declare-fun m!5888696 () Bool)

(assert (=> start!511184 m!5888696))

(declare-fun m!5888698 () Bool)

(assert (=> b!4884792 m!5888698))

(declare-fun m!5888700 () Bool)

(assert (=> b!4884792 m!5888700))

(declare-fun m!5888702 () Bool)

(assert (=> b!4884793 m!5888702))

(declare-fun m!5888704 () Bool)

(assert (=> b!4884793 m!5888704))

(declare-fun m!5888706 () Bool)

(assert (=> b!4884793 m!5888706))

(check-sat (not b!4884798) (not b!4884791) (not b!4884794) (not b!4884797) (not b!4884796) b_and!343987 (not b!4884792) (not b!4884793) b_and!343989 (not b_next!131947) (not start!511184) (not b!4884795) (not b_next!131945))
(check-sat b_and!343989 b_and!343987 (not b_next!131945) (not b_next!131947))

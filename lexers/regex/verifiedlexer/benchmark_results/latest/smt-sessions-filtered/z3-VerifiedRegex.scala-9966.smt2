; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522152 () Bool)

(assert start!522152)

(declare-fun b!4954256 () Bool)

(declare-fun b_free!132123 () Bool)

(declare-fun b_next!132913 () Bool)

(assert (=> b!4954256 (= b_free!132123 (not b_next!132913))))

(declare-fun tp!1389021 () Bool)

(declare-fun b_and!346975 () Bool)

(assert (=> b!4954256 (= tp!1389021 b_and!346975)))

(declare-fun b_free!132125 () Bool)

(declare-fun b_next!132915 () Bool)

(assert (=> b!4954256 (= b_free!132125 (not b_next!132915))))

(declare-fun tp!1389019 () Bool)

(declare-fun b_and!346977 () Bool)

(assert (=> b!4954256 (= tp!1389019 b_and!346977)))

(declare-fun b!4954244 () Bool)

(declare-fun res!2113626 () Bool)

(declare-fun e!3095526 () Bool)

(assert (=> b!4954244 (=> res!2113626 e!3095526)))

(declare-fun lt!2044713 () Bool)

(assert (=> b!4954244 (= res!2113626 lt!2044713)))

(declare-fun b!4954245 () Bool)

(assert (=> b!4954245 (= e!3095526 true)))

(declare-datatypes ((List!57238 0))(
  ( (Nil!57114) (Cons!57114 (h!63562 (_ BitVec 16)) (t!367804 List!57238)) )
))
(declare-datatypes ((TokenValue!8594 0))(
  ( (FloatLiteralValue!17188 (text!60603 List!57238)) (TokenValueExt!8593 (__x!34481 Int)) (Broken!42970 (value!265514 List!57238)) (Object!8717) (End!8594) (Def!8594) (Underscore!8594) (Match!8594) (Else!8594) (Error!8594) (Case!8594) (If!8594) (Extends!8594) (Abstract!8594) (Class!8594) (Val!8594) (DelimiterValue!17188 (del!8654 List!57238)) (KeywordValue!8600 (value!265515 List!57238)) (CommentValue!17188 (value!265516 List!57238)) (WhitespaceValue!17188 (value!265517 List!57238)) (IndentationValue!8594 (value!265518 List!57238)) (String!64843) (Int32!8594) (Broken!42971 (value!265519 List!57238)) (Boolean!8595) (Unit!148008) (OperatorValue!8597 (op!8654 List!57238)) (IdentifierValue!17188 (value!265520 List!57238)) (IdentifierValue!17189 (value!265521 List!57238)) (WhitespaceValue!17189 (value!265522 List!57238)) (True!17188) (False!17188) (Broken!42972 (value!265523 List!57238)) (Broken!42973 (value!265524 List!57238)) (True!17189) (RightBrace!8594) (RightBracket!8594) (Colon!8594) (Null!8594) (Comma!8594) (LeftBracket!8594) (False!17189) (LeftBrace!8594) (ImaginaryLiteralValue!8594 (text!60604 List!57238)) (StringLiteralValue!25782 (value!265525 List!57238)) (EOFValue!8594 (value!265526 List!57238)) (IdentValue!8594 (value!265527 List!57238)) (DelimiterValue!17189 (value!265528 List!57238)) (DedentValue!8594 (value!265529 List!57238)) (NewLineValue!8594 (value!265530 List!57238)) (IntegerValue!25782 (value!265531 (_ BitVec 32)) (text!60605 List!57238)) (IntegerValue!25783 (value!265532 Int) (text!60606 List!57238)) (Times!8594) (Or!8594) (Equal!8594) (Minus!8594) (Broken!42974 (value!265533 List!57238)) (And!8594) (Div!8594) (LessEqual!8594) (Mod!8594) (Concat!22111) (Not!8594) (Plus!8594) (SpaceValue!8594 (value!265534 List!57238)) (IntegerValue!25784 (value!265535 Int) (text!60607 List!57238)) (StringLiteralValue!25783 (text!60608 List!57238)) (FloatLiteralValue!17189 (text!60609 List!57238)) (BytesLiteralValue!8594 (value!265536 List!57238)) (CommentValue!17189 (value!265537 List!57238)) (StringLiteralValue!25784 (value!265538 List!57238)) (ErrorTokenValue!8594 (msg!8655 List!57238)) )
))
(declare-datatypes ((C!27284 0))(
  ( (C!27285 (val!23008 Int)) )
))
(declare-datatypes ((List!57239 0))(
  ( (Nil!57115) (Cons!57115 (h!63563 C!27284) (t!367805 List!57239)) )
))
(declare-datatypes ((IArray!30133 0))(
  ( (IArray!30134 (innerList!15124 List!57239)) )
))
(declare-datatypes ((Regex!13517 0))(
  ( (ElementMatch!13517 (c!846007 C!27284)) (Concat!22112 (regOne!27546 Regex!13517) (regTwo!27546 Regex!13517)) (EmptyExpr!13517) (Star!13517 (reg!13846 Regex!13517)) (EmptyLang!13517) (Union!13517 (regOne!27547 Regex!13517) (regTwo!27547 Regex!13517)) )
))
(declare-datatypes ((String!64844 0))(
  ( (String!64845 (value!265539 String)) )
))
(declare-datatypes ((Conc!15036 0))(
  ( (Node!15036 (left!41664 Conc!15036) (right!41994 Conc!15036) (csize!30302 Int) (cheight!15247 Int)) (Leaf!25003 (xs!18362 IArray!30133) (csize!30303 Int)) (Empty!15036) )
))
(declare-datatypes ((BalanceConc!29502 0))(
  ( (BalanceConc!29503 (c!846008 Conc!15036)) )
))
(declare-datatypes ((TokenValueInjection!16496 0))(
  ( (TokenValueInjection!16497 (toValue!11235 Int) (toChars!11094 Int)) )
))
(declare-datatypes ((Rule!16368 0))(
  ( (Rule!16369 (regex!8284 Regex!13517) (tag!9148 String!64844) (isSeparator!8284 Bool) (transformation!8284 TokenValueInjection!16496)) )
))
(declare-datatypes ((List!57240 0))(
  ( (Nil!57116) (Cons!57116 (h!63564 Rule!16368) (t!367806 List!57240)) )
))
(declare-fun rulesArg!259 () List!57240)

(declare-fun lt!2044721 () List!57239)

(declare-datatypes ((Token!15076 0))(
  ( (Token!15077 (value!265540 TokenValue!8594) (rule!11498 Rule!16368) (size!37898 Int) (originalCharacters!8569 List!57239)) )
))
(declare-datatypes ((tuple2!61660 0))(
  ( (tuple2!61661 (_1!34133 Token!15076) (_2!34133 List!57239)) )
))
(declare-datatypes ((Option!14251 0))(
  ( (None!14250) (Some!14250 (v!50235 tuple2!61660)) )
))
(declare-fun lt!2044715 () Option!14251)

(declare-datatypes ((LexerInterface!7876 0))(
  ( (LexerInterfaceExt!7873 (__x!34482 Int)) (Lexer!7874) )
))
(declare-fun thiss!15247 () LexerInterface!7876)

(declare-fun maxPrefix!4617 (LexerInterface!7876 List!57240 List!57239) Option!14251)

(assert (=> b!4954245 (= lt!2044715 (maxPrefix!4617 thiss!15247 rulesArg!259 lt!2044721))))

(declare-fun b!4954246 () Bool)

(declare-fun e!3095519 () Bool)

(declare-fun e!3095527 () Bool)

(assert (=> b!4954246 (= e!3095519 e!3095527)))

(declare-fun res!2113623 () Bool)

(assert (=> b!4954246 (=> res!2113623 e!3095527)))

(declare-datatypes ((tuple2!61662 0))(
  ( (tuple2!61663 (_1!34134 Token!15076) (_2!34134 BalanceConc!29502)) )
))
(declare-fun lt!2044718 () tuple2!61662)

(declare-fun lt!2044720 () tuple2!61660)

(assert (=> b!4954246 (= res!2113623 (not (= (_1!34134 lt!2044718) (_1!34133 lt!2044720))))))

(declare-fun lt!2044717 () Option!14251)

(declare-fun get!19739 (Option!14251) tuple2!61660)

(assert (=> b!4954246 (= lt!2044720 (get!19739 lt!2044717))))

(declare-datatypes ((Option!14252 0))(
  ( (None!14251) (Some!14251 (v!50236 tuple2!61662)) )
))
(declare-fun lt!2044716 () Option!14252)

(declare-fun get!19740 (Option!14252) tuple2!61662)

(assert (=> b!4954246 (= lt!2044718 (get!19740 lt!2044716))))

(declare-fun res!2113629 () Bool)

(declare-fun e!3095520 () Bool)

(assert (=> start!522152 (=> (not res!2113629) (not e!3095520))))

(get-info :version)

(assert (=> start!522152 (= res!2113629 ((_ is Lexer!7874) thiss!15247))))

(assert (=> start!522152 e!3095520))

(assert (=> start!522152 true))

(declare-fun e!3095521 () Bool)

(assert (=> start!522152 e!3095521))

(declare-fun input!1342 () BalanceConc!29502)

(declare-fun e!3095530 () Bool)

(declare-fun inv!74471 (BalanceConc!29502) Bool)

(assert (=> start!522152 (and (inv!74471 input!1342) e!3095530)))

(declare-fun totalInput!464 () BalanceConc!29502)

(declare-fun e!3095523 () Bool)

(assert (=> start!522152 (and (inv!74471 totalInput!464) e!3095523)))

(declare-fun b!4954247 () Bool)

(declare-fun e!3095525 () Bool)

(declare-fun e!3095524 () Bool)

(assert (=> b!4954247 (= e!3095525 (not e!3095524))))

(declare-fun res!2113627 () Bool)

(assert (=> b!4954247 (=> res!2113627 e!3095524)))

(assert (=> b!4954247 (= res!2113627 (or (not ((_ is Cons!57116) rulesArg!259)) (not ((_ is Nil!57116) (t!367806 rulesArg!259)))))))

(declare-fun isPrefix!5137 (List!57239 List!57239) Bool)

(assert (=> b!4954247 (isPrefix!5137 lt!2044721 lt!2044721)))

(declare-datatypes ((Unit!148009 0))(
  ( (Unit!148010) )
))
(declare-fun lt!2044714 () Unit!148009)

(declare-fun lemmaIsPrefixRefl!3461 (List!57239 List!57239) Unit!148009)

(assert (=> b!4954247 (= lt!2044714 (lemmaIsPrefixRefl!3461 lt!2044721 lt!2044721))))

(declare-fun b!4954248 () Bool)

(declare-fun list!18218 (BalanceConc!29502) List!57239)

(assert (=> b!4954248 (= e!3095527 (not (= (list!18218 (_2!34134 lt!2044718)) (_2!34133 lt!2044720))))))

(declare-fun b!4954249 () Bool)

(declare-fun tp!1389024 () Bool)

(declare-fun inv!74472 (Conc!15036) Bool)

(assert (=> b!4954249 (= e!3095530 (and (inv!74472 (c!846008 input!1342)) tp!1389024))))

(declare-fun b!4954250 () Bool)

(declare-fun res!2113622 () Bool)

(assert (=> b!4954250 (=> (not res!2113622) (not e!3095520))))

(declare-fun rulesValidInductive!3187 (LexerInterface!7876 List!57240) Bool)

(assert (=> b!4954250 (= res!2113622 (rulesValidInductive!3187 thiss!15247 rulesArg!259))))

(declare-fun b!4954251 () Bool)

(declare-fun res!2113630 () Bool)

(assert (=> b!4954251 (=> (not res!2113630) (not e!3095520))))

(declare-fun isEmpty!30712 (List!57240) Bool)

(assert (=> b!4954251 (= res!2113630 (not (isEmpty!30712 rulesArg!259)))))

(declare-fun b!4954252 () Bool)

(declare-fun e!3095529 () Bool)

(assert (=> b!4954252 (= e!3095529 e!3095526)))

(declare-fun res!2113624 () Bool)

(assert (=> b!4954252 (=> res!2113624 e!3095526)))

(assert (=> b!4954252 (= res!2113624 e!3095519)))

(declare-fun res!2113625 () Bool)

(assert (=> b!4954252 (=> (not res!2113625) (not e!3095519))))

(assert (=> b!4954252 (= res!2113625 (not lt!2044713))))

(declare-fun lt!2044719 () Bool)

(assert (=> b!4954252 (= lt!2044713 (not lt!2044719))))

(declare-fun b!4954253 () Bool)

(declare-fun tp!1389020 () Bool)

(assert (=> b!4954253 (= e!3095523 (and (inv!74472 (c!846008 totalInput!464)) tp!1389020))))

(declare-fun b!4954254 () Bool)

(assert (=> b!4954254 (= e!3095524 e!3095529)))

(declare-fun res!2113621 () Bool)

(assert (=> b!4954254 (=> res!2113621 e!3095529)))

(declare-fun isDefined!11204 (Option!14251) Bool)

(assert (=> b!4954254 (= res!2113621 (not (= lt!2044719 (isDefined!11204 lt!2044717))))))

(declare-fun isDefined!11205 (Option!14252) Bool)

(assert (=> b!4954254 (= lt!2044719 (isDefined!11205 lt!2044716))))

(declare-fun maxPrefixZipper!695 (LexerInterface!7876 List!57240 List!57239) Option!14251)

(assert (=> b!4954254 (= lt!2044717 (maxPrefixZipper!695 thiss!15247 rulesArg!259 lt!2044721))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!272 (LexerInterface!7876 Rule!16368 BalanceConc!29502 BalanceConc!29502) Option!14252)

(assert (=> b!4954254 (= lt!2044716 (maxPrefixOneRuleZipperSequenceV2!272 thiss!15247 (h!63564 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4954255 () Bool)

(assert (=> b!4954255 (= e!3095520 e!3095525)))

(declare-fun res!2113628 () Bool)

(assert (=> b!4954255 (=> (not res!2113628) (not e!3095525))))

(declare-fun isSuffix!1083 (List!57239 List!57239) Bool)

(assert (=> b!4954255 (= res!2113628 (isSuffix!1083 lt!2044721 (list!18218 totalInput!464)))))

(assert (=> b!4954255 (= lt!2044721 (list!18218 input!1342))))

(declare-fun e!3095531 () Bool)

(assert (=> b!4954256 (= e!3095531 (and tp!1389021 tp!1389019))))

(declare-fun b!4954257 () Bool)

(declare-fun tp!1389022 () Bool)

(declare-fun e!3095522 () Bool)

(declare-fun inv!74467 (String!64844) Bool)

(declare-fun inv!74473 (TokenValueInjection!16496) Bool)

(assert (=> b!4954257 (= e!3095522 (and tp!1389022 (inv!74467 (tag!9148 (h!63564 rulesArg!259))) (inv!74473 (transformation!8284 (h!63564 rulesArg!259))) e!3095531))))

(declare-fun b!4954258 () Bool)

(declare-fun tp!1389023 () Bool)

(assert (=> b!4954258 (= e!3095521 (and e!3095522 tp!1389023))))

(assert (= (and start!522152 res!2113629) b!4954250))

(assert (= (and b!4954250 res!2113622) b!4954251))

(assert (= (and b!4954251 res!2113630) b!4954255))

(assert (= (and b!4954255 res!2113628) b!4954247))

(assert (= (and b!4954247 (not res!2113627)) b!4954254))

(assert (= (and b!4954254 (not res!2113621)) b!4954252))

(assert (= (and b!4954252 res!2113625) b!4954246))

(assert (= (and b!4954246 (not res!2113623)) b!4954248))

(assert (= (and b!4954252 (not res!2113624)) b!4954244))

(assert (= (and b!4954244 (not res!2113626)) b!4954245))

(assert (= b!4954257 b!4954256))

(assert (= b!4954258 b!4954257))

(assert (= (and start!522152 ((_ is Cons!57116) rulesArg!259)) b!4954258))

(assert (= start!522152 b!4954249))

(assert (= start!522152 b!4954253))

(declare-fun m!5978946 () Bool)

(assert (=> b!4954248 m!5978946))

(declare-fun m!5978948 () Bool)

(assert (=> b!4954247 m!5978948))

(declare-fun m!5978950 () Bool)

(assert (=> b!4954247 m!5978950))

(declare-fun m!5978952 () Bool)

(assert (=> b!4954245 m!5978952))

(declare-fun m!5978954 () Bool)

(assert (=> b!4954251 m!5978954))

(declare-fun m!5978956 () Bool)

(assert (=> b!4954254 m!5978956))

(declare-fun m!5978958 () Bool)

(assert (=> b!4954254 m!5978958))

(declare-fun m!5978960 () Bool)

(assert (=> b!4954254 m!5978960))

(declare-fun m!5978962 () Bool)

(assert (=> b!4954254 m!5978962))

(declare-fun m!5978964 () Bool)

(assert (=> b!4954249 m!5978964))

(declare-fun m!5978966 () Bool)

(assert (=> b!4954257 m!5978966))

(declare-fun m!5978968 () Bool)

(assert (=> b!4954257 m!5978968))

(declare-fun m!5978970 () Bool)

(assert (=> start!522152 m!5978970))

(declare-fun m!5978972 () Bool)

(assert (=> start!522152 m!5978972))

(declare-fun m!5978974 () Bool)

(assert (=> b!4954255 m!5978974))

(assert (=> b!4954255 m!5978974))

(declare-fun m!5978976 () Bool)

(assert (=> b!4954255 m!5978976))

(declare-fun m!5978978 () Bool)

(assert (=> b!4954255 m!5978978))

(declare-fun m!5978980 () Bool)

(assert (=> b!4954250 m!5978980))

(declare-fun m!5978982 () Bool)

(assert (=> b!4954253 m!5978982))

(declare-fun m!5978984 () Bool)

(assert (=> b!4954246 m!5978984))

(declare-fun m!5978986 () Bool)

(assert (=> b!4954246 m!5978986))

(check-sat b_and!346975 (not b!4954248) (not b!4954249) (not b!4954258) (not b!4954250) (not b!4954245) (not b!4954253) b_and!346977 (not b!4954254) (not start!522152) (not b!4954246) (not b!4954247) (not b_next!132915) (not b!4954255) (not b!4954251) (not b_next!132913) (not b!4954257))
(check-sat b_and!346975 b_and!346977 (not b_next!132913) (not b_next!132915))

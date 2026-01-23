; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511192 () Bool)

(assert start!511192)

(declare-fun b!4884917 () Bool)

(declare-fun b_free!131171 () Bool)

(declare-fun b_next!131961 () Bool)

(assert (=> b!4884917 (= b_free!131171 (not b_next!131961))))

(declare-fun tp!1374674 () Bool)

(declare-fun b_and!344003 () Bool)

(assert (=> b!4884917 (= tp!1374674 b_and!344003)))

(declare-fun b_free!131173 () Bool)

(declare-fun b_next!131963 () Bool)

(assert (=> b!4884917 (= b_free!131173 (not b_next!131963))))

(declare-fun tp!1374675 () Bool)

(declare-fun b_and!344005 () Bool)

(assert (=> b!4884917 (= tp!1374675 b_and!344005)))

(declare-fun b!4884908 () Bool)

(declare-fun e!3053369 () Bool)

(declare-fun e!3053370 () Bool)

(declare-fun tp!1374672 () Bool)

(assert (=> b!4884908 (= e!3053369 (and e!3053370 tp!1374672))))

(declare-fun b!4884909 () Bool)

(declare-fun e!3053368 () Bool)

(declare-datatypes ((C!26580 0))(
  ( (C!26581 (val!22624 Int)) )
))
(declare-datatypes ((List!56353 0))(
  ( (Nil!56229) (Cons!56229 (h!62677 C!26580) (t!364999 List!56353)) )
))
(declare-datatypes ((IArray!29429 0))(
  ( (IArray!29430 (innerList!14772 List!56353)) )
))
(declare-datatypes ((Conc!14684 0))(
  ( (Node!14684 (left!40844 Conc!14684) (right!41174 Conc!14684) (csize!29598 Int) (cheight!14895 Int)) (Leaf!24459 (xs!18000 IArray!29429) (csize!29599 Int)) (Empty!14684) )
))
(declare-datatypes ((BalanceConc!28798 0))(
  ( (BalanceConc!28799 (c!830589 Conc!14684)) )
))
(declare-fun input!1236 () BalanceConc!28798)

(declare-fun tp!1374673 () Bool)

(declare-fun inv!72357 (Conc!14684) Bool)

(assert (=> b!4884909 (= e!3053368 (and (inv!72357 (c!830589 input!1236)) tp!1374673))))

(declare-fun e!3053373 () Bool)

(declare-datatypes ((List!56354 0))(
  ( (Nil!56230) (Cons!56230 (h!62678 (_ BitVec 16)) (t!365000 List!56354)) )
))
(declare-datatypes ((TokenValue!8426 0))(
  ( (FloatLiteralValue!16852 (text!59427 List!56354)) (TokenValueExt!8425 (__x!34145 Int)) (Broken!42130 (value!260432 List!56354)) (Object!8549) (End!8426) (Def!8426) (Underscore!8426) (Match!8426) (Else!8426) (Error!8426) (Case!8426) (If!8426) (Extends!8426) (Abstract!8426) (Class!8426) (Val!8426) (DelimiterValue!16852 (del!8486 List!56354)) (KeywordValue!8432 (value!260433 List!56354)) (CommentValue!16852 (value!260434 List!56354)) (WhitespaceValue!16852 (value!260435 List!56354)) (IndentationValue!8426 (value!260436 List!56354)) (String!63571) (Int32!8426) (Broken!42131 (value!260437 List!56354)) (Boolean!8427) (Unit!146219) (OperatorValue!8429 (op!8486 List!56354)) (IdentifierValue!16852 (value!260438 List!56354)) (IdentifierValue!16853 (value!260439 List!56354)) (WhitespaceValue!16853 (value!260440 List!56354)) (True!16852) (False!16852) (Broken!42132 (value!260441 List!56354)) (Broken!42133 (value!260442 List!56354)) (True!16853) (RightBrace!8426) (RightBracket!8426) (Colon!8426) (Null!8426) (Comma!8426) (LeftBracket!8426) (False!16853) (LeftBrace!8426) (ImaginaryLiteralValue!8426 (text!59428 List!56354)) (StringLiteralValue!25278 (value!260443 List!56354)) (EOFValue!8426 (value!260444 List!56354)) (IdentValue!8426 (value!260445 List!56354)) (DelimiterValue!16853 (value!260446 List!56354)) (DedentValue!8426 (value!260447 List!56354)) (NewLineValue!8426 (value!260448 List!56354)) (IntegerValue!25278 (value!260449 (_ BitVec 32)) (text!59429 List!56354)) (IntegerValue!25279 (value!260450 Int) (text!59430 List!56354)) (Times!8426) (Or!8426) (Equal!8426) (Minus!8426) (Broken!42134 (value!260451 List!56354)) (And!8426) (Div!8426) (LessEqual!8426) (Mod!8426) (Concat!21617) (Not!8426) (Plus!8426) (SpaceValue!8426 (value!260452 List!56354)) (IntegerValue!25280 (value!260453 Int) (text!59431 List!56354)) (StringLiteralValue!25279 (text!59432 List!56354)) (FloatLiteralValue!16853 (text!59433 List!56354)) (BytesLiteralValue!8426 (value!260454 List!56354)) (CommentValue!16853 (value!260455 List!56354)) (StringLiteralValue!25280 (value!260456 List!56354)) (ErrorTokenValue!8426 (msg!8487 List!56354)) )
))
(declare-datatypes ((Regex!13191 0))(
  ( (ElementMatch!13191 (c!830590 C!26580)) (Concat!21618 (regOne!26894 Regex!13191) (regTwo!26894 Regex!13191)) (EmptyExpr!13191) (Star!13191 (reg!13520 Regex!13191)) (EmptyLang!13191) (Union!13191 (regOne!26895 Regex!13191) (regTwo!26895 Regex!13191)) )
))
(declare-datatypes ((String!63572 0))(
  ( (String!63573 (value!260457 String)) )
))
(declare-datatypes ((TokenValueInjection!16160 0))(
  ( (TokenValueInjection!16161 (toValue!11003 Int) (toChars!10862 Int)) )
))
(declare-datatypes ((Rule!16032 0))(
  ( (Rule!16033 (regex!8116 Regex!13191) (tag!8980 String!63572) (isSeparator!8116 Bool) (transformation!8116 TokenValueInjection!16160)) )
))
(declare-datatypes ((List!56355 0))(
  ( (Nil!56231) (Cons!56231 (h!62679 Rule!16032) (t!365001 List!56355)) )
))
(declare-fun rulesArg!165 () List!56355)

(declare-fun b!4884910 () Bool)

(declare-fun tp!1374671 () Bool)

(declare-fun inv!72353 (String!63572) Bool)

(declare-fun inv!72358 (TokenValueInjection!16160) Bool)

(assert (=> b!4884910 (= e!3053370 (and tp!1374671 (inv!72353 (tag!8980 (h!62679 rulesArg!165))) (inv!72358 (transformation!8116 (h!62679 rulesArg!165))) e!3053373))))

(declare-fun b!4884911 () Bool)

(declare-fun e!3053366 () Bool)

(declare-fun lt!2001402 () Bool)

(assert (=> b!4884911 (= e!3053366 lt!2001402)))

(declare-fun res!2085662 () Bool)

(declare-fun e!3053374 () Bool)

(assert (=> start!511192 (=> (not res!2085662) (not e!3053374))))

(declare-datatypes ((LexerInterface!7708 0))(
  ( (LexerInterfaceExt!7705 (__x!34146 Int)) (Lexer!7706) )
))
(declare-fun thiss!14805 () LexerInterface!7708)

(get-info :version)

(assert (=> start!511192 (= res!2085662 ((_ is Lexer!7706) thiss!14805))))

(assert (=> start!511192 e!3053374))

(assert (=> start!511192 true))

(assert (=> start!511192 e!3053369))

(declare-fun inv!72359 (BalanceConc!28798) Bool)

(assert (=> start!511192 (and (inv!72359 input!1236) e!3053368)))

(declare-fun b!4884912 () Bool)

(declare-fun res!2085667 () Bool)

(assert (=> b!4884912 (=> (not res!2085667) (not e!3053374))))

(declare-fun rulesValidInductive!3095 (LexerInterface!7708 List!56355) Bool)

(assert (=> b!4884912 (= res!2085667 (rulesValidInductive!3095 thiss!14805 rulesArg!165))))

(declare-fun b!4884913 () Bool)

(declare-fun res!2085661 () Bool)

(assert (=> b!4884913 (=> (not res!2085661) (not e!3053374))))

(declare-fun isEmpty!30131 (List!56355) Bool)

(assert (=> b!4884913 (= res!2085661 (not (isEmpty!30131 rulesArg!165)))))

(declare-fun b!4884914 () Bool)

(declare-fun e!3053367 () Bool)

(assert (=> b!4884914 (= e!3053374 (not e!3053367))))

(declare-fun res!2085666 () Bool)

(assert (=> b!4884914 (=> res!2085666 e!3053367)))

(assert (=> b!4884914 (= res!2085666 (or (and ((_ is Cons!56231) rulesArg!165) ((_ is Nil!56231) (t!365001 rulesArg!165))) (not ((_ is Cons!56231) rulesArg!165))))))

(declare-fun lt!2001400 () List!56353)

(declare-fun isPrefix!4838 (List!56353 List!56353) Bool)

(assert (=> b!4884914 (isPrefix!4838 lt!2001400 lt!2001400)))

(declare-datatypes ((Unit!146220 0))(
  ( (Unit!146221) )
))
(declare-fun lt!2001401 () Unit!146220)

(declare-fun lemmaIsPrefixRefl!3235 (List!56353 List!56353) Unit!146220)

(assert (=> b!4884914 (= lt!2001401 (lemmaIsPrefixRefl!3235 lt!2001400 lt!2001400))))

(declare-fun list!17645 (BalanceConc!28798) List!56353)

(assert (=> b!4884914 (= lt!2001400 (list!17645 input!1236))))

(declare-fun b!4884915 () Bool)

(declare-fun e!3053372 () Bool)

(assert (=> b!4884915 (= e!3053367 e!3053372)))

(declare-fun res!2085664 () Bool)

(assert (=> b!4884915 (=> res!2085664 e!3053372)))

(declare-datatypes ((Token!14800 0))(
  ( (Token!14801 (value!260458 TokenValue!8426) (rule!11282 Rule!16032) (size!37042 Int) (originalCharacters!8431 List!56353)) )
))
(declare-datatypes ((tuple2!60172 0))(
  ( (tuple2!60173 (_1!33389 Token!14800) (_2!33389 BalanceConc!28798)) )
))
(declare-datatypes ((Option!13915 0))(
  ( (None!13914) (Some!13914 (v!49864 tuple2!60172)) )
))
(declare-fun lt!2001403 () Option!13915)

(declare-fun lt!2001405 () Option!13915)

(assert (=> b!4884915 (= res!2085664 (or (and ((_ is None!13914) lt!2001403) ((_ is None!13914) lt!2001405)) ((_ is None!13914) lt!2001405) (not ((_ is None!13914) lt!2001403))))))

(declare-fun maxPrefixZipperSequence!1277 (LexerInterface!7708 List!56355 BalanceConc!28798) Option!13915)

(assert (=> b!4884915 (= lt!2001405 (maxPrefixZipperSequence!1277 thiss!14805 (t!365001 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!642 (LexerInterface!7708 Rule!16032 BalanceConc!28798) Option!13915)

(assert (=> b!4884915 (= lt!2001403 (maxPrefixOneRuleZipperSequence!642 thiss!14805 (h!62679 rulesArg!165) input!1236))))

(declare-fun b!4884916 () Bool)

(declare-fun res!2085665 () Bool)

(assert (=> b!4884916 (=> res!2085665 e!3053366)))

(declare-datatypes ((tuple2!60174 0))(
  ( (tuple2!60175 (_1!33390 Token!14800) (_2!33390 List!56353)) )
))
(declare-datatypes ((Option!13916 0))(
  ( (None!13915) (Some!13915 (v!49865 tuple2!60174)) )
))
(declare-fun lt!2001404 () Option!13916)

(declare-fun get!19361 (Option!13915) tuple2!60172)

(declare-fun get!19362 (Option!13916) tuple2!60174)

(assert (=> b!4884916 (= res!2085665 (not (= (_1!33389 (get!19361 lt!2001405)) (_1!33390 (get!19362 lt!2001404)))))))

(assert (=> b!4884917 (= e!3053373 (and tp!1374674 tp!1374675))))

(declare-fun b!4884918 () Bool)

(assert (=> b!4884918 (= e!3053372 e!3053366)))

(declare-fun res!2085663 () Bool)

(assert (=> b!4884918 (=> res!2085663 e!3053366)))

(declare-fun lt!2001406 () Bool)

(assert (=> b!4884918 (= res!2085663 (or (not (= lt!2001406 lt!2001402)) (not lt!2001406)))))

(declare-fun isDefined!10938 (Option!13916) Bool)

(assert (=> b!4884918 (= lt!2001402 (isDefined!10938 lt!2001404))))

(declare-fun isDefined!10939 (Option!13915) Bool)

(assert (=> b!4884918 (= lt!2001406 (isDefined!10939 lt!2001405))))

(declare-fun maxPrefixZipper!619 (LexerInterface!7708 List!56355 List!56353) Option!13916)

(assert (=> b!4884918 (= lt!2001404 (maxPrefixZipper!619 thiss!14805 rulesArg!165 lt!2001400))))

(assert (= (and start!511192 res!2085662) b!4884912))

(assert (= (and b!4884912 res!2085667) b!4884913))

(assert (= (and b!4884913 res!2085661) b!4884914))

(assert (= (and b!4884914 (not res!2085666)) b!4884915))

(assert (= (and b!4884915 (not res!2085664)) b!4884918))

(assert (= (and b!4884918 (not res!2085663)) b!4884916))

(assert (= (and b!4884916 (not res!2085665)) b!4884911))

(assert (= b!4884910 b!4884917))

(assert (= b!4884908 b!4884910))

(assert (= (and start!511192 ((_ is Cons!56231) rulesArg!165)) b!4884908))

(assert (= start!511192 b!4884909))

(declare-fun m!5888796 () Bool)

(assert (=> b!4884918 m!5888796))

(declare-fun m!5888798 () Bool)

(assert (=> b!4884918 m!5888798))

(declare-fun m!5888800 () Bool)

(assert (=> b!4884918 m!5888800))

(declare-fun m!5888802 () Bool)

(assert (=> b!4884914 m!5888802))

(declare-fun m!5888804 () Bool)

(assert (=> b!4884914 m!5888804))

(declare-fun m!5888806 () Bool)

(assert (=> b!4884914 m!5888806))

(declare-fun m!5888808 () Bool)

(assert (=> start!511192 m!5888808))

(declare-fun m!5888810 () Bool)

(assert (=> b!4884915 m!5888810))

(declare-fun m!5888812 () Bool)

(assert (=> b!4884915 m!5888812))

(declare-fun m!5888814 () Bool)

(assert (=> b!4884913 m!5888814))

(declare-fun m!5888816 () Bool)

(assert (=> b!4884910 m!5888816))

(declare-fun m!5888818 () Bool)

(assert (=> b!4884910 m!5888818))

(declare-fun m!5888820 () Bool)

(assert (=> b!4884909 m!5888820))

(declare-fun m!5888822 () Bool)

(assert (=> b!4884916 m!5888822))

(declare-fun m!5888824 () Bool)

(assert (=> b!4884916 m!5888824))

(declare-fun m!5888826 () Bool)

(assert (=> b!4884912 m!5888826))

(check-sat (not b!4884914) (not b_next!131963) b_and!344003 (not b!4884909) (not b!4884912) (not b!4884916) (not b!4884918) (not b!4884913) (not b_next!131961) b_and!344005 (not start!511192) (not b!4884908) (not b!4884910) (not b!4884915))
(check-sat b_and!344005 b_and!344003 (not b_next!131961) (not b_next!131963))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522594 () Bool)

(assert start!522594)

(declare-fun b!4957664 () Bool)

(declare-fun b_free!132367 () Bool)

(declare-fun b_next!133157 () Bool)

(assert (=> b!4957664 (= b_free!132367 (not b_next!133157))))

(declare-fun tp!1390390 () Bool)

(declare-fun b_and!347219 () Bool)

(assert (=> b!4957664 (= tp!1390390 b_and!347219)))

(declare-fun b_free!132369 () Bool)

(declare-fun b_next!133159 () Bool)

(assert (=> b!4957664 (= b_free!132369 (not b_next!133159))))

(declare-fun tp!1390391 () Bool)

(declare-fun b_and!347221 () Bool)

(assert (=> b!4957664 (= tp!1390391 b_and!347221)))

(declare-fun b!4957652 () Bool)

(declare-fun e!3098217 () Bool)

(declare-fun e!3098219 () Bool)

(assert (=> b!4957652 (= e!3098217 e!3098219)))

(declare-fun res!2115510 () Bool)

(assert (=> b!4957652 (=> res!2115510 e!3098219)))

(declare-fun lt!2046390 () Bool)

(declare-fun lt!2046391 () Bool)

(assert (=> b!4957652 (= res!2115510 (or (not (= lt!2046390 lt!2046391)) (not lt!2046390)))))

(declare-datatypes ((List!57388 0))(
  ( (Nil!57264) (Cons!57264 (h!63712 (_ BitVec 16)) (t!367954 List!57388)) )
))
(declare-datatypes ((TokenValue!8644 0))(
  ( (FloatLiteralValue!17288 (text!60953 List!57388)) (TokenValueExt!8643 (__x!34581 Int)) (Broken!43220 (value!266935 List!57388)) (Object!8767) (End!8644) (Def!8644) (Underscore!8644) (Match!8644) (Else!8644) (Error!8644) (Case!8644) (If!8644) (Extends!8644) (Abstract!8644) (Class!8644) (Val!8644) (DelimiterValue!17288 (del!8704 List!57388)) (KeywordValue!8650 (value!266936 List!57388)) (CommentValue!17288 (value!266937 List!57388)) (WhitespaceValue!17288 (value!266938 List!57388)) (IndentationValue!8644 (value!266939 List!57388)) (String!65093) (Int32!8644) (Broken!43221 (value!266940 List!57388)) (Boolean!8645) (Unit!148158) (OperatorValue!8647 (op!8704 List!57388)) (IdentifierValue!17288 (value!266941 List!57388)) (IdentifierValue!17289 (value!266942 List!57388)) (WhitespaceValue!17289 (value!266943 List!57388)) (True!17288) (False!17288) (Broken!43222 (value!266944 List!57388)) (Broken!43223 (value!266945 List!57388)) (True!17289) (RightBrace!8644) (RightBracket!8644) (Colon!8644) (Null!8644) (Comma!8644) (LeftBracket!8644) (False!17289) (LeftBrace!8644) (ImaginaryLiteralValue!8644 (text!60954 List!57388)) (StringLiteralValue!25932 (value!266946 List!57388)) (EOFValue!8644 (value!266947 List!57388)) (IdentValue!8644 (value!266948 List!57388)) (DelimiterValue!17289 (value!266949 List!57388)) (DedentValue!8644 (value!266950 List!57388)) (NewLineValue!8644 (value!266951 List!57388)) (IntegerValue!25932 (value!266952 (_ BitVec 32)) (text!60955 List!57388)) (IntegerValue!25933 (value!266953 Int) (text!60956 List!57388)) (Times!8644) (Or!8644) (Equal!8644) (Minus!8644) (Broken!43224 (value!266954 List!57388)) (And!8644) (Div!8644) (LessEqual!8644) (Mod!8644) (Concat!22211) (Not!8644) (Plus!8644) (SpaceValue!8644 (value!266955 List!57388)) (IntegerValue!25934 (value!266956 Int) (text!60957 List!57388)) (StringLiteralValue!25933 (text!60958 List!57388)) (FloatLiteralValue!17289 (text!60959 List!57388)) (BytesLiteralValue!8644 (value!266957 List!57388)) (CommentValue!17289 (value!266958 List!57388)) (StringLiteralValue!25934 (value!266959 List!57388)) (ErrorTokenValue!8644 (msg!8705 List!57388)) )
))
(declare-datatypes ((C!27384 0))(
  ( (C!27385 (val!23058 Int)) )
))
(declare-datatypes ((Regex!13567 0))(
  ( (ElementMatch!13567 (c!846273 C!27384)) (Concat!22212 (regOne!27646 Regex!13567) (regTwo!27646 Regex!13567)) (EmptyExpr!13567) (Star!13567 (reg!13896 Regex!13567)) (EmptyLang!13567) (Union!13567 (regOne!27647 Regex!13567) (regTwo!27647 Regex!13567)) )
))
(declare-datatypes ((String!65094 0))(
  ( (String!65095 (value!266960 String)) )
))
(declare-datatypes ((List!57389 0))(
  ( (Nil!57265) (Cons!57265 (h!63713 C!27384) (t!367955 List!57389)) )
))
(declare-datatypes ((IArray!30233 0))(
  ( (IArray!30234 (innerList!15174 List!57389)) )
))
(declare-datatypes ((Conc!15086 0))(
  ( (Node!15086 (left!41763 Conc!15086) (right!42093 Conc!15086) (csize!30402 Int) (cheight!15297 Int)) (Leaf!25078 (xs!18412 IArray!30233) (csize!30403 Int)) (Empty!15086) )
))
(declare-datatypes ((BalanceConc!29602 0))(
  ( (BalanceConc!29603 (c!846274 Conc!15086)) )
))
(declare-datatypes ((TokenValueInjection!16596 0))(
  ( (TokenValueInjection!16597 (toValue!11285 Int) (toChars!11144 Int)) )
))
(declare-datatypes ((Rule!16468 0))(
  ( (Rule!16469 (regex!8334 Regex!13567) (tag!9198 String!65094) (isSeparator!8334 Bool) (transformation!8334 TokenValueInjection!16596)) )
))
(declare-datatypes ((Token!15168 0))(
  ( (Token!15169 (value!266961 TokenValue!8644) (rule!11554 Rule!16468) (size!37964 Int) (originalCharacters!8615 List!57389)) )
))
(declare-datatypes ((tuple2!61868 0))(
  ( (tuple2!61869 (_1!34237 Token!15168) (_2!34237 List!57389)) )
))
(declare-datatypes ((Option!14337 0))(
  ( (None!14336) (Some!14336 (v!50321 tuple2!61868)) )
))
(declare-fun lt!2046396 () Option!14337)

(declare-fun isDefined!11260 (Option!14337) Bool)

(assert (=> b!4957652 (= lt!2046391 (isDefined!11260 lt!2046396))))

(declare-datatypes ((tuple2!61870 0))(
  ( (tuple2!61871 (_1!34238 Token!15168) (_2!34238 BalanceConc!29602)) )
))
(declare-datatypes ((Option!14338 0))(
  ( (None!14337) (Some!14337 (v!50322 tuple2!61870)) )
))
(declare-fun lt!2046394 () Option!14338)

(declare-fun isDefined!11261 (Option!14338) Bool)

(assert (=> b!4957652 (= lt!2046390 (isDefined!11261 lt!2046394))))

(declare-datatypes ((List!57390 0))(
  ( (Nil!57266) (Cons!57266 (h!63714 Rule!16468) (t!367956 List!57390)) )
))
(declare-fun rulesArg!259 () List!57390)

(declare-fun lt!2046393 () List!57389)

(declare-datatypes ((LexerInterface!7926 0))(
  ( (LexerInterfaceExt!7923 (__x!34582 Int)) (Lexer!7924) )
))
(declare-fun thiss!15247 () LexerInterface!7926)

(declare-fun maxPrefixZipper!731 (LexerInterface!7926 List!57390 List!57389) Option!14337)

(assert (=> b!4957652 (= lt!2046396 (maxPrefixZipper!731 thiss!15247 rulesArg!259 lt!2046393))))

(declare-fun res!2115509 () Bool)

(declare-fun e!3098212 () Bool)

(assert (=> start!522594 (=> (not res!2115509) (not e!3098212))))

(get-info :version)

(assert (=> start!522594 (= res!2115509 ((_ is Lexer!7924) thiss!15247))))

(assert (=> start!522594 e!3098212))

(assert (=> start!522594 true))

(declare-fun e!3098218 () Bool)

(assert (=> start!522594 e!3098218))

(declare-fun input!1342 () BalanceConc!29602)

(declare-fun e!3098211 () Bool)

(declare-fun inv!74727 (BalanceConc!29602) Bool)

(assert (=> start!522594 (and (inv!74727 input!1342) e!3098211)))

(declare-fun totalInput!464 () BalanceConc!29602)

(declare-fun e!3098214 () Bool)

(assert (=> start!522594 (and (inv!74727 totalInput!464) e!3098214)))

(declare-fun b!4957653 () Bool)

(declare-fun e!3098215 () Bool)

(assert (=> b!4957653 (= e!3098212 e!3098215)))

(declare-fun res!2115508 () Bool)

(assert (=> b!4957653 (=> (not res!2115508) (not e!3098215))))

(declare-fun isSuffix!1133 (List!57389 List!57389) Bool)

(declare-fun list!18279 (BalanceConc!29602) List!57389)

(assert (=> b!4957653 (= res!2115508 (isSuffix!1133 lt!2046393 (list!18279 totalInput!464)))))

(assert (=> b!4957653 (= lt!2046393 (list!18279 input!1342))))

(declare-fun tp!1390387 () Bool)

(declare-fun e!3098221 () Bool)

(declare-fun b!4957654 () Bool)

(declare-fun e!3098216 () Bool)

(declare-fun inv!74723 (String!65094) Bool)

(declare-fun inv!74728 (TokenValueInjection!16596) Bool)

(assert (=> b!4957654 (= e!3098221 (and tp!1390387 (inv!74723 (tag!9198 (h!63714 rulesArg!259))) (inv!74728 (transformation!8334 (h!63714 rulesArg!259))) e!3098216))))

(declare-fun b!4957655 () Bool)

(declare-fun res!2115507 () Bool)

(assert (=> b!4957655 (=> res!2115507 e!3098219)))

(declare-fun get!19820 (Option!14338) tuple2!61870)

(declare-fun get!19821 (Option!14337) tuple2!61868)

(assert (=> b!4957655 (= res!2115507 (not (= (_1!34238 (get!19820 lt!2046394)) (_1!34237 (get!19821 lt!2046396)))))))

(declare-fun b!4957656 () Bool)

(declare-fun res!2115506 () Bool)

(assert (=> b!4957656 (=> (not res!2115506) (not e!3098212))))

(declare-fun isEmpty!30790 (List!57390) Bool)

(assert (=> b!4957656 (= res!2115506 (not (isEmpty!30790 rulesArg!259)))))

(declare-fun b!4957657 () Bool)

(declare-fun e!3098220 () Bool)

(assert (=> b!4957657 (= e!3098215 (not e!3098220))))

(declare-fun res!2115505 () Bool)

(assert (=> b!4957657 (=> res!2115505 e!3098220)))

(assert (=> b!4957657 (= res!2115505 (or (and ((_ is Cons!57266) rulesArg!259) ((_ is Nil!57266) (t!367956 rulesArg!259))) (not ((_ is Cons!57266) rulesArg!259))))))

(declare-fun isPrefix!5187 (List!57389 List!57389) Bool)

(assert (=> b!4957657 (isPrefix!5187 lt!2046393 lt!2046393)))

(declare-datatypes ((Unit!148159 0))(
  ( (Unit!148160) )
))
(declare-fun lt!2046395 () Unit!148159)

(declare-fun lemmaIsPrefixRefl!3511 (List!57389 List!57389) Unit!148159)

(assert (=> b!4957657 (= lt!2046395 (lemmaIsPrefixRefl!3511 lt!2046393 lt!2046393))))

(declare-fun b!4957658 () Bool)

(declare-fun tp!1390392 () Bool)

(declare-fun inv!74729 (Conc!15086) Bool)

(assert (=> b!4957658 (= e!3098211 (and (inv!74729 (c!846274 input!1342)) tp!1390392))))

(declare-fun b!4957659 () Bool)

(declare-fun tp!1390389 () Bool)

(assert (=> b!4957659 (= e!3098214 (and (inv!74729 (c!846274 totalInput!464)) tp!1390389))))

(declare-fun b!4957660 () Bool)

(declare-fun res!2115504 () Bool)

(assert (=> b!4957660 (=> (not res!2115504) (not e!3098212))))

(declare-fun rulesValidInductive!3237 (LexerInterface!7926 List!57390) Bool)

(assert (=> b!4957660 (= res!2115504 (rulesValidInductive!3237 thiss!15247 rulesArg!259))))

(declare-fun b!4957661 () Bool)

(assert (=> b!4957661 (= e!3098219 lt!2046391)))

(declare-fun b!4957662 () Bool)

(assert (=> b!4957662 (= e!3098220 e!3098217)))

(declare-fun res!2115511 () Bool)

(assert (=> b!4957662 (=> res!2115511 e!3098217)))

(declare-fun lt!2046392 () Option!14338)

(assert (=> b!4957662 (= res!2115511 (or (and ((_ is None!14337) lt!2046392) ((_ is None!14337) lt!2046394)) ((_ is None!14337) lt!2046394) (not ((_ is None!14337) lt!2046392))))))

(declare-fun maxPrefixZipperSequenceV2!665 (LexerInterface!7926 List!57390 BalanceConc!29602 BalanceConc!29602) Option!14338)

(assert (=> b!4957662 (= lt!2046394 (maxPrefixZipperSequenceV2!665 thiss!15247 (t!367956 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!318 (LexerInterface!7926 Rule!16468 BalanceConc!29602 BalanceConc!29602) Option!14338)

(assert (=> b!4957662 (= lt!2046392 (maxPrefixOneRuleZipperSequenceV2!318 thiss!15247 (h!63714 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4957663 () Bool)

(declare-fun tp!1390388 () Bool)

(assert (=> b!4957663 (= e!3098218 (and e!3098221 tp!1390388))))

(assert (=> b!4957664 (= e!3098216 (and tp!1390390 tp!1390391))))

(assert (= (and start!522594 res!2115509) b!4957660))

(assert (= (and b!4957660 res!2115504) b!4957656))

(assert (= (and b!4957656 res!2115506) b!4957653))

(assert (= (and b!4957653 res!2115508) b!4957657))

(assert (= (and b!4957657 (not res!2115505)) b!4957662))

(assert (= (and b!4957662 (not res!2115511)) b!4957652))

(assert (= (and b!4957652 (not res!2115510)) b!4957655))

(assert (= (and b!4957655 (not res!2115507)) b!4957661))

(assert (= b!4957654 b!4957664))

(assert (= b!4957663 b!4957654))

(assert (= (and start!522594 ((_ is Cons!57266) rulesArg!259)) b!4957663))

(assert (= start!522594 b!4957658))

(assert (= start!522594 b!4957659))

(declare-fun m!5982228 () Bool)

(assert (=> b!4957653 m!5982228))

(assert (=> b!4957653 m!5982228))

(declare-fun m!5982230 () Bool)

(assert (=> b!4957653 m!5982230))

(declare-fun m!5982232 () Bool)

(assert (=> b!4957653 m!5982232))

(declare-fun m!5982234 () Bool)

(assert (=> b!4957660 m!5982234))

(declare-fun m!5982236 () Bool)

(assert (=> b!4957652 m!5982236))

(declare-fun m!5982238 () Bool)

(assert (=> b!4957652 m!5982238))

(declare-fun m!5982240 () Bool)

(assert (=> b!4957652 m!5982240))

(declare-fun m!5982242 () Bool)

(assert (=> b!4957657 m!5982242))

(declare-fun m!5982244 () Bool)

(assert (=> b!4957657 m!5982244))

(declare-fun m!5982246 () Bool)

(assert (=> b!4957659 m!5982246))

(declare-fun m!5982248 () Bool)

(assert (=> start!522594 m!5982248))

(declare-fun m!5982250 () Bool)

(assert (=> start!522594 m!5982250))

(declare-fun m!5982252 () Bool)

(assert (=> b!4957662 m!5982252))

(declare-fun m!5982254 () Bool)

(assert (=> b!4957662 m!5982254))

(declare-fun m!5982256 () Bool)

(assert (=> b!4957656 m!5982256))

(declare-fun m!5982258 () Bool)

(assert (=> b!4957655 m!5982258))

(declare-fun m!5982260 () Bool)

(assert (=> b!4957655 m!5982260))

(declare-fun m!5982262 () Bool)

(assert (=> b!4957658 m!5982262))

(declare-fun m!5982264 () Bool)

(assert (=> b!4957654 m!5982264))

(declare-fun m!5982266 () Bool)

(assert (=> b!4957654 m!5982266))

(check-sat (not start!522594) (not b_next!133157) (not b!4957652) (not b!4957655) (not b_next!133159) b_and!347221 (not b!4957660) (not b!4957658) (not b!4957657) (not b!4957656) (not b!4957659) (not b!4957653) (not b!4957654) (not b!4957662) b_and!347219 (not b!4957663))
(check-sat b_and!347219 b_and!347221 (not b_next!133157) (not b_next!133159))

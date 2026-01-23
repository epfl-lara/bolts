; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522064 () Bool)

(assert start!522064)

(declare-fun b!4953587 () Bool)

(declare-fun b_free!132075 () Bool)

(declare-fun b_next!132865 () Bool)

(assert (=> b!4953587 (= b_free!132075 (not b_next!132865))))

(declare-fun tp!1388763 () Bool)

(declare-fun b_and!346927 () Bool)

(assert (=> b!4953587 (= tp!1388763 b_and!346927)))

(declare-fun b_free!132077 () Bool)

(declare-fun b_next!132867 () Bool)

(assert (=> b!4953587 (= b_free!132077 (not b_next!132867))))

(declare-fun tp!1388764 () Bool)

(declare-fun b_and!346929 () Bool)

(assert (=> b!4953587 (= tp!1388764 b_and!346929)))

(declare-fun e!3095013 () Bool)

(assert (=> b!4953587 (= e!3095013 (and tp!1388763 tp!1388764))))

(declare-fun b!4953588 () Bool)

(declare-fun e!3095019 () Bool)

(declare-fun e!3095014 () Bool)

(assert (=> b!4953588 (= e!3095019 e!3095014)))

(declare-fun res!2113261 () Bool)

(assert (=> b!4953588 (=> (not res!2113261) (not e!3095014))))

(declare-datatypes ((C!27264 0))(
  ( (C!27265 (val!22998 Int)) )
))
(declare-datatypes ((List!57208 0))(
  ( (Nil!57084) (Cons!57084 (h!63532 C!27264) (t!367774 List!57208)) )
))
(declare-fun lt!2044366 () List!57208)

(declare-datatypes ((IArray!30113 0))(
  ( (IArray!30114 (innerList!15114 List!57208)) )
))
(declare-datatypes ((Conc!15026 0))(
  ( (Node!15026 (left!41645 Conc!15026) (right!41975 Conc!15026) (csize!30282 Int) (cheight!15237 Int)) (Leaf!24988 (xs!18352 IArray!30113) (csize!30283 Int)) (Empty!15026) )
))
(declare-datatypes ((BalanceConc!29482 0))(
  ( (BalanceConc!29483 (c!845951 Conc!15026)) )
))
(declare-fun totalInput!464 () BalanceConc!29482)

(declare-fun isSuffix!1073 (List!57208 List!57208) Bool)

(declare-fun list!18206 (BalanceConc!29482) List!57208)

(assert (=> b!4953588 (= res!2113261 (isSuffix!1073 lt!2044366 (list!18206 totalInput!464)))))

(declare-fun input!1342 () BalanceConc!29482)

(assert (=> b!4953588 (= lt!2044366 (list!18206 input!1342))))

(declare-fun b!4953589 () Bool)

(declare-fun res!2113262 () Bool)

(assert (=> b!4953589 (=> (not res!2113262) (not e!3095019))))

(declare-datatypes ((List!57209 0))(
  ( (Nil!57085) (Cons!57085 (h!63533 (_ BitVec 16)) (t!367775 List!57209)) )
))
(declare-datatypes ((TokenValue!8584 0))(
  ( (FloatLiteralValue!17168 (text!60533 List!57209)) (TokenValueExt!8583 (__x!34461 Int)) (Broken!42920 (value!265229 List!57209)) (Object!8707) (End!8584) (Def!8584) (Underscore!8584) (Match!8584) (Else!8584) (Error!8584) (Case!8584) (If!8584) (Extends!8584) (Abstract!8584) (Class!8584) (Val!8584) (DelimiterValue!17168 (del!8644 List!57209)) (KeywordValue!8590 (value!265230 List!57209)) (CommentValue!17168 (value!265231 List!57209)) (WhitespaceValue!17168 (value!265232 List!57209)) (IndentationValue!8584 (value!265233 List!57209)) (String!64793) (Int32!8584) (Broken!42921 (value!265234 List!57209)) (Boolean!8585) (Unit!147978) (OperatorValue!8587 (op!8644 List!57209)) (IdentifierValue!17168 (value!265235 List!57209)) (IdentifierValue!17169 (value!265236 List!57209)) (WhitespaceValue!17169 (value!265237 List!57209)) (True!17168) (False!17168) (Broken!42922 (value!265238 List!57209)) (Broken!42923 (value!265239 List!57209)) (True!17169) (RightBrace!8584) (RightBracket!8584) (Colon!8584) (Null!8584) (Comma!8584) (LeftBracket!8584) (False!17169) (LeftBrace!8584) (ImaginaryLiteralValue!8584 (text!60534 List!57209)) (StringLiteralValue!25752 (value!265240 List!57209)) (EOFValue!8584 (value!265241 List!57209)) (IdentValue!8584 (value!265242 List!57209)) (DelimiterValue!17169 (value!265243 List!57209)) (DedentValue!8584 (value!265244 List!57209)) (NewLineValue!8584 (value!265245 List!57209)) (IntegerValue!25752 (value!265246 (_ BitVec 32)) (text!60535 List!57209)) (IntegerValue!25753 (value!265247 Int) (text!60536 List!57209)) (Times!8584) (Or!8584) (Equal!8584) (Minus!8584) (Broken!42924 (value!265248 List!57209)) (And!8584) (Div!8584) (LessEqual!8584) (Mod!8584) (Concat!22091) (Not!8584) (Plus!8584) (SpaceValue!8584 (value!265249 List!57209)) (IntegerValue!25754 (value!265250 Int) (text!60537 List!57209)) (StringLiteralValue!25753 (text!60538 List!57209)) (FloatLiteralValue!17169 (text!60539 List!57209)) (BytesLiteralValue!8584 (value!265251 List!57209)) (CommentValue!17169 (value!265252 List!57209)) (StringLiteralValue!25754 (value!265253 List!57209)) (ErrorTokenValue!8584 (msg!8645 List!57209)) )
))
(declare-datatypes ((Regex!13507 0))(
  ( (ElementMatch!13507 (c!845952 C!27264)) (Concat!22092 (regOne!27526 Regex!13507) (regTwo!27526 Regex!13507)) (EmptyExpr!13507) (Star!13507 (reg!13836 Regex!13507)) (EmptyLang!13507) (Union!13507 (regOne!27527 Regex!13507) (regTwo!27527 Regex!13507)) )
))
(declare-datatypes ((String!64794 0))(
  ( (String!64795 (value!265254 String)) )
))
(declare-datatypes ((TokenValueInjection!16476 0))(
  ( (TokenValueInjection!16477 (toValue!11225 Int) (toChars!11084 Int)) )
))
(declare-datatypes ((Rule!16348 0))(
  ( (Rule!16349 (regex!8274 Regex!13507) (tag!9138 String!64794) (isSeparator!8274 Bool) (transformation!8274 TokenValueInjection!16476)) )
))
(declare-datatypes ((List!57210 0))(
  ( (Nil!57086) (Cons!57086 (h!63534 Rule!16348) (t!367776 List!57210)) )
))
(declare-fun rulesArg!259 () List!57210)

(declare-fun isEmpty!30694 (List!57210) Bool)

(assert (=> b!4953589 (= res!2113262 (not (isEmpty!30694 rulesArg!259)))))

(declare-fun b!4953590 () Bool)

(declare-fun e!3095011 () Bool)

(assert (=> b!4953590 (= e!3095011 true)))

(declare-datatypes ((Token!15056 0))(
  ( (Token!15057 (value!265255 TokenValue!8584) (rule!11486 Rule!16348) (size!37884 Int) (originalCharacters!8559 List!57208)) )
))
(declare-datatypes ((tuple2!61612 0))(
  ( (tuple2!61613 (_1!34109 Token!15056) (_2!34109 List!57208)) )
))
(declare-datatypes ((Option!14231 0))(
  ( (None!14230) (Some!14230 (v!50215 tuple2!61612)) )
))
(declare-fun lt!2044364 () Option!14231)

(declare-datatypes ((LexerInterface!7866 0))(
  ( (LexerInterfaceExt!7863 (__x!34462 Int)) (Lexer!7864) )
))
(declare-fun thiss!15247 () LexerInterface!7866)

(declare-fun maxPrefixZipper!685 (LexerInterface!7866 List!57210 List!57208) Option!14231)

(assert (=> b!4953590 (= lt!2044364 (maxPrefixZipper!685 thiss!15247 rulesArg!259 lt!2044366))))

(declare-datatypes ((tuple2!61614 0))(
  ( (tuple2!61615 (_1!34110 Token!15056) (_2!34110 BalanceConc!29482)) )
))
(declare-datatypes ((Option!14232 0))(
  ( (None!14231) (Some!14231 (v!50216 tuple2!61614)) )
))
(declare-fun lt!2044365 () Option!14232)

(declare-fun maxPrefixOneRuleZipperSequenceV2!262 (LexerInterface!7866 Rule!16348 BalanceConc!29482 BalanceConc!29482) Option!14232)

(assert (=> b!4953590 (= lt!2044365 (maxPrefixOneRuleZipperSequenceV2!262 thiss!15247 (h!63534 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4953591 () Bool)

(declare-fun e!3095017 () Bool)

(declare-fun e!3095015 () Bool)

(declare-fun tp!1388765 () Bool)

(assert (=> b!4953591 (= e!3095017 (and e!3095015 tp!1388765))))

(declare-fun res!2113259 () Bool)

(assert (=> start!522064 (=> (not res!2113259) (not e!3095019))))

(get-info :version)

(assert (=> start!522064 (= res!2113259 ((_ is Lexer!7864) thiss!15247))))

(assert (=> start!522064 e!3095019))

(assert (=> start!522064 true))

(assert (=> start!522064 e!3095017))

(declare-fun e!3095012 () Bool)

(declare-fun inv!74420 (BalanceConc!29482) Bool)

(assert (=> start!522064 (and (inv!74420 input!1342) e!3095012)))

(declare-fun e!3095018 () Bool)

(assert (=> start!522064 (and (inv!74420 totalInput!464) e!3095018)))

(declare-fun b!4953592 () Bool)

(declare-fun tp!1388766 () Bool)

(declare-fun inv!74421 (Conc!15026) Bool)

(assert (=> b!4953592 (= e!3095012 (and (inv!74421 (c!845951 input!1342)) tp!1388766))))

(declare-fun b!4953593 () Bool)

(declare-fun res!2113260 () Bool)

(assert (=> b!4953593 (=> (not res!2113260) (not e!3095019))))

(declare-fun rulesValidInductive!3177 (LexerInterface!7866 List!57210) Bool)

(assert (=> b!4953593 (= res!2113260 (rulesValidInductive!3177 thiss!15247 rulesArg!259))))

(declare-fun tp!1388761 () Bool)

(declare-fun b!4953594 () Bool)

(declare-fun inv!74416 (String!64794) Bool)

(declare-fun inv!74422 (TokenValueInjection!16476) Bool)

(assert (=> b!4953594 (= e!3095015 (and tp!1388761 (inv!74416 (tag!9138 (h!63534 rulesArg!259))) (inv!74422 (transformation!8274 (h!63534 rulesArg!259))) e!3095013))))

(declare-fun b!4953595 () Bool)

(assert (=> b!4953595 (= e!3095014 (not e!3095011))))

(declare-fun res!2113258 () Bool)

(assert (=> b!4953595 (=> res!2113258 e!3095011)))

(assert (=> b!4953595 (= res!2113258 (or (not ((_ is Cons!57086) rulesArg!259)) (not ((_ is Nil!57086) (t!367776 rulesArg!259)))))))

(declare-fun isPrefix!5127 (List!57208 List!57208) Bool)

(assert (=> b!4953595 (isPrefix!5127 lt!2044366 lt!2044366)))

(declare-datatypes ((Unit!147979 0))(
  ( (Unit!147980) )
))
(declare-fun lt!2044367 () Unit!147979)

(declare-fun lemmaIsPrefixRefl!3451 (List!57208 List!57208) Unit!147979)

(assert (=> b!4953595 (= lt!2044367 (lemmaIsPrefixRefl!3451 lt!2044366 lt!2044366))))

(declare-fun b!4953596 () Bool)

(declare-fun tp!1388762 () Bool)

(assert (=> b!4953596 (= e!3095018 (and (inv!74421 (c!845951 totalInput!464)) tp!1388762))))

(assert (= (and start!522064 res!2113259) b!4953593))

(assert (= (and b!4953593 res!2113260) b!4953589))

(assert (= (and b!4953589 res!2113262) b!4953588))

(assert (= (and b!4953588 res!2113261) b!4953595))

(assert (= (and b!4953595 (not res!2113258)) b!4953590))

(assert (= b!4953594 b!4953587))

(assert (= b!4953591 b!4953594))

(assert (= (and start!522064 ((_ is Cons!57086) rulesArg!259)) b!4953591))

(assert (= start!522064 b!4953592))

(assert (= start!522064 b!4953596))

(declare-fun m!5978286 () Bool)

(assert (=> b!4953592 m!5978286))

(declare-fun m!5978288 () Bool)

(assert (=> b!4953595 m!5978288))

(declare-fun m!5978290 () Bool)

(assert (=> b!4953595 m!5978290))

(declare-fun m!5978292 () Bool)

(assert (=> start!522064 m!5978292))

(declare-fun m!5978294 () Bool)

(assert (=> start!522064 m!5978294))

(declare-fun m!5978296 () Bool)

(assert (=> b!4953596 m!5978296))

(declare-fun m!5978298 () Bool)

(assert (=> b!4953594 m!5978298))

(declare-fun m!5978300 () Bool)

(assert (=> b!4953594 m!5978300))

(declare-fun m!5978302 () Bool)

(assert (=> b!4953590 m!5978302))

(declare-fun m!5978304 () Bool)

(assert (=> b!4953590 m!5978304))

(declare-fun m!5978306 () Bool)

(assert (=> b!4953588 m!5978306))

(assert (=> b!4953588 m!5978306))

(declare-fun m!5978308 () Bool)

(assert (=> b!4953588 m!5978308))

(declare-fun m!5978310 () Bool)

(assert (=> b!4953588 m!5978310))

(declare-fun m!5978312 () Bool)

(assert (=> b!4953589 m!5978312))

(declare-fun m!5978314 () Bool)

(assert (=> b!4953593 m!5978314))

(check-sat b_and!346929 (not b!4953592) (not b!4953594) b_and!346927 (not b!4953593) (not start!522064) (not b!4953591) (not b_next!132865) (not b!4953595) (not b!4953588) (not b_next!132867) (not b!4953589) (not b!4953596) (not b!4953590))
(check-sat b_and!346927 b_and!346929 (not b_next!132865) (not b_next!132867))

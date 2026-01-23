; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522406 () Bool)

(assert start!522406)

(declare-fun b!4956124 () Bool)

(declare-fun b_free!132263 () Bool)

(declare-fun b_next!133053 () Bool)

(assert (=> b!4956124 (= b_free!132263 (not b_next!133053))))

(declare-fun tp!1389836 () Bool)

(declare-fun b_and!347115 () Bool)

(assert (=> b!4956124 (= tp!1389836 b_and!347115)))

(declare-fun b_free!132265 () Bool)

(declare-fun b_next!133055 () Bool)

(assert (=> b!4956124 (= b_free!132265 (not b_next!133055))))

(declare-fun tp!1389837 () Bool)

(declare-fun b_and!347117 () Bool)

(assert (=> b!4956124 (= tp!1389837 b_and!347117)))

(declare-fun b!4956109 () Bool)

(declare-fun e!3097003 () Bool)

(declare-fun e!3097000 () Bool)

(assert (=> b!4956109 (= e!3097003 e!3097000)))

(declare-fun res!2114600 () Bool)

(assert (=> b!4956109 (=> res!2114600 e!3097000)))

(declare-fun e!3097001 () Bool)

(assert (=> b!4956109 (= res!2114600 e!3097001)))

(declare-fun res!2114596 () Bool)

(assert (=> b!4956109 (=> (not res!2114596) (not e!3097001))))

(declare-fun lt!2045519 () Bool)

(assert (=> b!4956109 (= res!2114596 (not lt!2045519))))

(declare-fun lt!2045517 () Bool)

(assert (=> b!4956109 (= lt!2045519 (not lt!2045517))))

(declare-fun b!4956110 () Bool)

(assert (=> b!4956110 (= e!3097000 true)))

(declare-datatypes ((List!57322 0))(
  ( (Nil!57198) (Cons!57198 (h!63646 (_ BitVec 16)) (t!367888 List!57322)) )
))
(declare-datatypes ((TokenValue!8622 0))(
  ( (FloatLiteralValue!17244 (text!60799 List!57322)) (TokenValueExt!8621 (__x!34537 Int)) (Broken!43110 (value!266308 List!57322)) (Object!8745) (End!8622) (Def!8622) (Underscore!8622) (Match!8622) (Else!8622) (Error!8622) (Case!8622) (If!8622) (Extends!8622) (Abstract!8622) (Class!8622) (Val!8622) (DelimiterValue!17244 (del!8682 List!57322)) (KeywordValue!8628 (value!266309 List!57322)) (CommentValue!17244 (value!266310 List!57322)) (WhitespaceValue!17244 (value!266311 List!57322)) (IndentationValue!8622 (value!266312 List!57322)) (String!64983) (Int32!8622) (Broken!43111 (value!266313 List!57322)) (Boolean!8623) (Unit!148092) (OperatorValue!8625 (op!8682 List!57322)) (IdentifierValue!17244 (value!266314 List!57322)) (IdentifierValue!17245 (value!266315 List!57322)) (WhitespaceValue!17245 (value!266316 List!57322)) (True!17244) (False!17244) (Broken!43112 (value!266317 List!57322)) (Broken!43113 (value!266318 List!57322)) (True!17245) (RightBrace!8622) (RightBracket!8622) (Colon!8622) (Null!8622) (Comma!8622) (LeftBracket!8622) (False!17245) (LeftBrace!8622) (ImaginaryLiteralValue!8622 (text!60800 List!57322)) (StringLiteralValue!25866 (value!266319 List!57322)) (EOFValue!8622 (value!266320 List!57322)) (IdentValue!8622 (value!266321 List!57322)) (DelimiterValue!17245 (value!266322 List!57322)) (DedentValue!8622 (value!266323 List!57322)) (NewLineValue!8622 (value!266324 List!57322)) (IntegerValue!25866 (value!266325 (_ BitVec 32)) (text!60801 List!57322)) (IntegerValue!25867 (value!266326 Int) (text!60802 List!57322)) (Times!8622) (Or!8622) (Equal!8622) (Minus!8622) (Broken!43114 (value!266327 List!57322)) (And!8622) (Div!8622) (LessEqual!8622) (Mod!8622) (Concat!22167) (Not!8622) (Plus!8622) (SpaceValue!8622 (value!266328 List!57322)) (IntegerValue!25868 (value!266329 Int) (text!60803 List!57322)) (StringLiteralValue!25867 (text!60804 List!57322)) (FloatLiteralValue!17245 (text!60805 List!57322)) (BytesLiteralValue!8622 (value!266330 List!57322)) (CommentValue!17245 (value!266331 List!57322)) (StringLiteralValue!25868 (value!266332 List!57322)) (ErrorTokenValue!8622 (msg!8683 List!57322)) )
))
(declare-datatypes ((C!27340 0))(
  ( (C!27341 (val!23036 Int)) )
))
(declare-datatypes ((Regex!13545 0))(
  ( (ElementMatch!13545 (c!846143 C!27340)) (Concat!22168 (regOne!27602 Regex!13545) (regTwo!27602 Regex!13545)) (EmptyExpr!13545) (Star!13545 (reg!13874 Regex!13545)) (EmptyLang!13545) (Union!13545 (regOne!27603 Regex!13545) (regTwo!27603 Regex!13545)) )
))
(declare-datatypes ((String!64984 0))(
  ( (String!64985 (value!266333 String)) )
))
(declare-datatypes ((List!57323 0))(
  ( (Nil!57199) (Cons!57199 (h!63647 C!27340) (t!367889 List!57323)) )
))
(declare-datatypes ((IArray!30189 0))(
  ( (IArray!30190 (innerList!15152 List!57323)) )
))
(declare-datatypes ((Conc!15064 0))(
  ( (Node!15064 (left!41722 Conc!15064) (right!42052 Conc!15064) (csize!30358 Int) (cheight!15275 Int)) (Leaf!25045 (xs!18390 IArray!30189) (csize!30359 Int)) (Empty!15064) )
))
(declare-datatypes ((BalanceConc!29558 0))(
  ( (BalanceConc!29559 (c!846144 Conc!15064)) )
))
(declare-datatypes ((TokenValueInjection!16552 0))(
  ( (TokenValueInjection!16553 (toValue!11263 Int) (toChars!11122 Int)) )
))
(declare-datatypes ((Rule!16424 0))(
  ( (Rule!16425 (regex!8312 Regex!13545) (tag!9176 String!64984) (isSeparator!8312 Bool) (transformation!8312 TokenValueInjection!16552)) )
))
(declare-datatypes ((Token!15124 0))(
  ( (Token!15125 (value!266334 TokenValue!8622) (rule!11528 Rule!16424) (size!37934 Int) (originalCharacters!8593 List!57323)) )
))
(declare-datatypes ((tuple2!61764 0))(
  ( (tuple2!61765 (_1!34185 Token!15124) (_2!34185 List!57323)) )
))
(declare-datatypes ((Option!14293 0))(
  ( (None!14292) (Some!14292 (v!50277 tuple2!61764)) )
))
(declare-fun lt!2045515 () Option!14293)

(declare-datatypes ((List!57324 0))(
  ( (Nil!57200) (Cons!57200 (h!63648 Rule!16424) (t!367890 List!57324)) )
))
(declare-fun rulesArg!259 () List!57324)

(declare-fun lt!2045518 () List!57323)

(declare-datatypes ((LexerInterface!7904 0))(
  ( (LexerInterfaceExt!7901 (__x!34538 Int)) (Lexer!7902) )
))
(declare-fun thiss!15247 () LexerInterface!7904)

(declare-fun maxPrefix!4623 (LexerInterface!7904 List!57324 List!57323) Option!14293)

(assert (=> b!4956110 (= lt!2045515 (maxPrefix!4623 thiss!15247 rulesArg!259 lt!2045518))))

(declare-fun b!4956111 () Bool)

(declare-fun res!2114597 () Bool)

(assert (=> b!4956111 (=> res!2114597 e!3097000)))

(assert (=> b!4956111 (= res!2114597 lt!2045519)))

(declare-fun b!4956112 () Bool)

(declare-fun e!3097009 () Bool)

(declare-fun e!3097007 () Bool)

(assert (=> b!4956112 (= e!3097009 e!3097007)))

(declare-fun res!2114591 () Bool)

(assert (=> b!4956112 (=> (not res!2114591) (not e!3097007))))

(declare-fun totalInput!464 () BalanceConc!29558)

(declare-fun isSuffix!1111 (List!57323 List!57323) Bool)

(declare-fun list!18253 (BalanceConc!29558) List!57323)

(assert (=> b!4956112 (= res!2114591 (isSuffix!1111 lt!2045518 (list!18253 totalInput!464)))))

(declare-fun input!1342 () BalanceConc!29558)

(assert (=> b!4956112 (= lt!2045518 (list!18253 input!1342))))

(declare-fun b!4956113 () Bool)

(declare-fun e!3097010 () Bool)

(assert (=> b!4956113 (= e!3097007 (not e!3097010))))

(declare-fun res!2114595 () Bool)

(assert (=> b!4956113 (=> res!2114595 e!3097010)))

(get-info :version)

(assert (=> b!4956113 (= res!2114595 (or (and ((_ is Cons!57200) rulesArg!259) ((_ is Nil!57200) (t!367890 rulesArg!259))) (not ((_ is Cons!57200) rulesArg!259))))))

(declare-fun isPrefix!5165 (List!57323 List!57323) Bool)

(assert (=> b!4956113 (isPrefix!5165 lt!2045518 lt!2045518)))

(declare-datatypes ((Unit!148093 0))(
  ( (Unit!148094) )
))
(declare-fun lt!2045512 () Unit!148093)

(declare-fun lemmaIsPrefixRefl!3489 (List!57323 List!57323) Unit!148093)

(assert (=> b!4956113 (= lt!2045512 (lemmaIsPrefixRefl!3489 lt!2045518 lt!2045518))))

(declare-fun b!4956114 () Bool)

(declare-fun e!3096999 () Bool)

(assert (=> b!4956114 (= e!3096999 e!3097003)))

(declare-fun res!2114594 () Bool)

(assert (=> b!4956114 (=> res!2114594 e!3097003)))

(declare-fun lt!2045513 () Option!14293)

(declare-fun isDefined!11227 (Option!14293) Bool)

(assert (=> b!4956114 (= res!2114594 (not (= lt!2045517 (isDefined!11227 lt!2045513))))))

(assert (=> b!4956114 (= lt!2045517 false)))

(declare-fun maxPrefixZipper!709 (LexerInterface!7904 List!57324 List!57323) Option!14293)

(assert (=> b!4956114 (= lt!2045513 (maxPrefixZipper!709 thiss!15247 rulesArg!259 lt!2045518))))

(declare-fun b!4956115 () Bool)

(declare-fun e!3097011 () Bool)

(declare-fun tp!1389839 () Bool)

(declare-fun inv!74617 (Conc!15064) Bool)

(assert (=> b!4956115 (= e!3097011 (and (inv!74617 (c!846144 totalInput!464)) tp!1389839))))

(declare-fun tp!1389840 () Bool)

(declare-fun b!4956116 () Bool)

(declare-fun e!3096998 () Bool)

(declare-fun e!3097008 () Bool)

(declare-fun inv!74613 (String!64984) Bool)

(declare-fun inv!74618 (TokenValueInjection!16552) Bool)

(assert (=> b!4956116 (= e!3097008 (and tp!1389840 (inv!74613 (tag!9176 (h!63648 rulesArg!259))) (inv!74618 (transformation!8312 (h!63648 rulesArg!259))) e!3096998))))

(declare-fun b!4956117 () Bool)

(declare-fun e!3097006 () Bool)

(declare-datatypes ((tuple2!61766 0))(
  ( (tuple2!61767 (_1!34186 Token!15124) (_2!34186 BalanceConc!29558)) )
))
(declare-fun lt!2045511 () tuple2!61766)

(declare-fun lt!2045516 () tuple2!61764)

(assert (=> b!4956117 (= e!3097006 (not (= (list!18253 (_2!34186 lt!2045511)) (_2!34185 lt!2045516))))))

(declare-fun b!4956118 () Bool)

(declare-fun e!3097005 () Bool)

(declare-fun tp!1389835 () Bool)

(assert (=> b!4956118 (= e!3097005 (and (inv!74617 (c!846144 input!1342)) tp!1389835))))

(declare-fun res!2114592 () Bool)

(assert (=> start!522406 (=> (not res!2114592) (not e!3097009))))

(assert (=> start!522406 (= res!2114592 ((_ is Lexer!7902) thiss!15247))))

(assert (=> start!522406 e!3097009))

(assert (=> start!522406 true))

(declare-fun e!3097002 () Bool)

(assert (=> start!522406 e!3097002))

(declare-fun inv!74619 (BalanceConc!29558) Bool)

(assert (=> start!522406 (and (inv!74619 input!1342) e!3097005)))

(assert (=> start!522406 (and (inv!74619 totalInput!464) e!3097011)))

(declare-fun b!4956119 () Bool)

(assert (=> b!4956119 (= e!3097010 e!3096999)))

(declare-fun res!2114598 () Bool)

(assert (=> b!4956119 (=> res!2114598 e!3096999)))

(declare-datatypes ((Option!14294 0))(
  ( (None!14293) (Some!14293 (v!50278 tuple2!61766)) )
))
(declare-fun lt!2045514 () Option!14294)

(declare-fun lt!2045520 () Option!14294)

(assert (=> b!4956119 (= res!2114598 (or (not ((_ is None!14293) lt!2045514)) (not ((_ is None!14293) lt!2045520))))))

(declare-fun maxPrefixZipperSequenceV2!643 (LexerInterface!7904 List!57324 BalanceConc!29558 BalanceConc!29558) Option!14294)

(assert (=> b!4956119 (= lt!2045520 (maxPrefixZipperSequenceV2!643 thiss!15247 (t!367890 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!296 (LexerInterface!7904 Rule!16424 BalanceConc!29558 BalanceConc!29558) Option!14294)

(assert (=> b!4956119 (= lt!2045514 (maxPrefixOneRuleZipperSequenceV2!296 thiss!15247 (h!63648 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4956120 () Bool)

(assert (=> b!4956120 (= e!3097001 e!3097006)))

(declare-fun res!2114599 () Bool)

(assert (=> b!4956120 (=> res!2114599 e!3097006)))

(assert (=> b!4956120 (= res!2114599 (not (= (_1!34186 lt!2045511) (_1!34185 lt!2045516))))))

(declare-fun get!19781 (Option!14293) tuple2!61764)

(assert (=> b!4956120 (= lt!2045516 (get!19781 lt!2045513))))

(declare-fun get!19782 (Option!14294) tuple2!61766)

(assert (=> b!4956120 (= lt!2045511 (get!19782 None!14293))))

(declare-fun b!4956121 () Bool)

(declare-fun res!2114601 () Bool)

(assert (=> b!4956121 (=> (not res!2114601) (not e!3097009))))

(declare-fun rulesValidInductive!3215 (LexerInterface!7904 List!57324) Bool)

(assert (=> b!4956121 (= res!2114601 (rulesValidInductive!3215 thiss!15247 rulesArg!259))))

(declare-fun b!4956122 () Bool)

(declare-fun res!2114593 () Bool)

(assert (=> b!4956122 (=> (not res!2114593) (not e!3097009))))

(declare-fun isEmpty!30752 (List!57324) Bool)

(assert (=> b!4956122 (= res!2114593 (not (isEmpty!30752 rulesArg!259)))))

(declare-fun b!4956123 () Bool)

(declare-fun tp!1389838 () Bool)

(assert (=> b!4956123 (= e!3097002 (and e!3097008 tp!1389838))))

(assert (=> b!4956124 (= e!3096998 (and tp!1389836 tp!1389837))))

(assert (= (and start!522406 res!2114592) b!4956121))

(assert (= (and b!4956121 res!2114601) b!4956122))

(assert (= (and b!4956122 res!2114593) b!4956112))

(assert (= (and b!4956112 res!2114591) b!4956113))

(assert (= (and b!4956113 (not res!2114595)) b!4956119))

(assert (= (and b!4956119 (not res!2114598)) b!4956114))

(assert (= (and b!4956114 (not res!2114594)) b!4956109))

(assert (= (and b!4956109 res!2114596) b!4956120))

(assert (= (and b!4956120 (not res!2114599)) b!4956117))

(assert (= (and b!4956109 (not res!2114600)) b!4956111))

(assert (= (and b!4956111 (not res!2114597)) b!4956110))

(assert (= b!4956116 b!4956124))

(assert (= b!4956123 b!4956116))

(assert (= (and start!522406 ((_ is Cons!57200) rulesArg!259)) b!4956123))

(assert (= start!522406 b!4956118))

(assert (= start!522406 b!4956115))

(declare-fun m!5980694 () Bool)

(assert (=> b!4956120 m!5980694))

(declare-fun m!5980696 () Bool)

(assert (=> b!4956120 m!5980696))

(declare-fun m!5980698 () Bool)

(assert (=> b!4956110 m!5980698))

(declare-fun m!5980700 () Bool)

(assert (=> b!4956115 m!5980700))

(declare-fun m!5980702 () Bool)

(assert (=> b!4956114 m!5980702))

(declare-fun m!5980704 () Bool)

(assert (=> b!4956114 m!5980704))

(declare-fun m!5980706 () Bool)

(assert (=> b!4956116 m!5980706))

(declare-fun m!5980708 () Bool)

(assert (=> b!4956116 m!5980708))

(declare-fun m!5980710 () Bool)

(assert (=> b!4956122 m!5980710))

(declare-fun m!5980712 () Bool)

(assert (=> start!522406 m!5980712))

(declare-fun m!5980714 () Bool)

(assert (=> start!522406 m!5980714))

(declare-fun m!5980716 () Bool)

(assert (=> b!4956113 m!5980716))

(declare-fun m!5980718 () Bool)

(assert (=> b!4956113 m!5980718))

(declare-fun m!5980720 () Bool)

(assert (=> b!4956121 m!5980720))

(declare-fun m!5980722 () Bool)

(assert (=> b!4956117 m!5980722))

(declare-fun m!5980724 () Bool)

(assert (=> b!4956112 m!5980724))

(assert (=> b!4956112 m!5980724))

(declare-fun m!5980726 () Bool)

(assert (=> b!4956112 m!5980726))

(declare-fun m!5980728 () Bool)

(assert (=> b!4956112 m!5980728))

(declare-fun m!5980730 () Bool)

(assert (=> b!4956119 m!5980730))

(declare-fun m!5980732 () Bool)

(assert (=> b!4956119 m!5980732))

(declare-fun m!5980734 () Bool)

(assert (=> b!4956118 m!5980734))

(check-sat (not b!4956123) (not b!4956120) (not b!4956117) (not b!4956119) (not b!4956112) (not b!4956118) (not b_next!133053) (not b!4956122) (not b!4956121) (not b!4956110) b_and!347115 (not b!4956113) (not b!4956115) (not b!4956116) (not b!4956114) b_and!347117 (not b_next!133055) (not start!522406))
(check-sat b_and!347115 b_and!347117 (not b_next!133053) (not b_next!133055))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522938 () Bool)

(assert start!522938)

(declare-fun b!4960116 () Bool)

(declare-fun b_free!132511 () Bool)

(declare-fun b_next!133301 () Bool)

(assert (=> b!4960116 (= b_free!132511 (not b_next!133301))))

(declare-fun tp!1391206 () Bool)

(declare-fun b_and!347363 () Bool)

(assert (=> b!4960116 (= tp!1391206 b_and!347363)))

(declare-fun b_free!132513 () Bool)

(declare-fun b_next!133303 () Bool)

(assert (=> b!4960116 (= b_free!132513 (not b_next!133303))))

(declare-fun tp!1391205 () Bool)

(declare-fun b_and!347365 () Bool)

(assert (=> b!4960116 (= tp!1391205 b_and!347365)))

(declare-fun b!4960108 () Bool)

(declare-fun e!3100082 () Bool)

(declare-datatypes ((C!27440 0))(
  ( (C!27441 (val!23086 Int)) )
))
(declare-datatypes ((List!57472 0))(
  ( (Nil!57348) (Cons!57348 (h!63796 C!27440) (t!368038 List!57472)) )
))
(declare-datatypes ((IArray!30289 0))(
  ( (IArray!30290 (innerList!15202 List!57472)) )
))
(declare-datatypes ((Conc!15114 0))(
  ( (Node!15114 (left!41821 Conc!15114) (right!42151 Conc!15114) (csize!30458 Int) (cheight!15325 Int)) (Leaf!25120 (xs!18440 IArray!30289) (csize!30459 Int)) (Empty!15114) )
))
(declare-datatypes ((BalanceConc!29658 0))(
  ( (BalanceConc!29659 (c!846485 Conc!15114)) )
))
(declare-fun input!1342 () BalanceConc!29658)

(declare-fun tp!1391208 () Bool)

(declare-fun inv!74876 (Conc!15114) Bool)

(assert (=> b!4960108 (= e!3100082 (and (inv!74876 (c!846485 input!1342)) tp!1391208))))

(declare-fun b!4960109 () Bool)

(declare-fun e!3100088 () Bool)

(declare-fun e!3100084 () Bool)

(declare-fun tp!1391203 () Bool)

(assert (=> b!4960109 (= e!3100088 (and e!3100084 tp!1391203))))

(declare-fun b!4960110 () Bool)

(declare-fun e!3100083 () Bool)

(declare-fun e!3100089 () Bool)

(assert (=> b!4960110 (= e!3100083 (not e!3100089))))

(declare-fun res!2116950 () Bool)

(assert (=> b!4960110 (=> res!2116950 e!3100089)))

(declare-datatypes ((List!57473 0))(
  ( (Nil!57349) (Cons!57349 (h!63797 (_ BitVec 16)) (t!368039 List!57473)) )
))
(declare-datatypes ((TokenValue!8672 0))(
  ( (FloatLiteralValue!17344 (text!61149 List!57473)) (TokenValueExt!8671 (__x!34637 Int)) (Broken!43360 (value!267733 List!57473)) (Object!8795) (End!8672) (Def!8672) (Underscore!8672) (Match!8672) (Else!8672) (Error!8672) (Case!8672) (If!8672) (Extends!8672) (Abstract!8672) (Class!8672) (Val!8672) (DelimiterValue!17344 (del!8732 List!57473)) (KeywordValue!8678 (value!267734 List!57473)) (CommentValue!17344 (value!267735 List!57473)) (WhitespaceValue!17344 (value!267736 List!57473)) (IndentationValue!8672 (value!267737 List!57473)) (String!65233) (Int32!8672) (Broken!43361 (value!267738 List!57473)) (Boolean!8673) (Unit!148242) (OperatorValue!8675 (op!8732 List!57473)) (IdentifierValue!17344 (value!267739 List!57473)) (IdentifierValue!17345 (value!267740 List!57473)) (WhitespaceValue!17345 (value!267741 List!57473)) (True!17344) (False!17344) (Broken!43362 (value!267742 List!57473)) (Broken!43363 (value!267743 List!57473)) (True!17345) (RightBrace!8672) (RightBracket!8672) (Colon!8672) (Null!8672) (Comma!8672) (LeftBracket!8672) (False!17345) (LeftBrace!8672) (ImaginaryLiteralValue!8672 (text!61150 List!57473)) (StringLiteralValue!26016 (value!267744 List!57473)) (EOFValue!8672 (value!267745 List!57473)) (IdentValue!8672 (value!267746 List!57473)) (DelimiterValue!17345 (value!267747 List!57473)) (DedentValue!8672 (value!267748 List!57473)) (NewLineValue!8672 (value!267749 List!57473)) (IntegerValue!26016 (value!267750 (_ BitVec 32)) (text!61151 List!57473)) (IntegerValue!26017 (value!267751 Int) (text!61152 List!57473)) (Times!8672) (Or!8672) (Equal!8672) (Minus!8672) (Broken!43364 (value!267752 List!57473)) (And!8672) (Div!8672) (LessEqual!8672) (Mod!8672) (Concat!22267) (Not!8672) (Plus!8672) (SpaceValue!8672 (value!267753 List!57473)) (IntegerValue!26018 (value!267754 Int) (text!61153 List!57473)) (StringLiteralValue!26017 (text!61154 List!57473)) (FloatLiteralValue!17345 (text!61155 List!57473)) (BytesLiteralValue!8672 (value!267755 List!57473)) (CommentValue!17345 (value!267756 List!57473)) (StringLiteralValue!26018 (value!267757 List!57473)) (ErrorTokenValue!8672 (msg!8733 List!57473)) )
))
(declare-datatypes ((Regex!13595 0))(
  ( (ElementMatch!13595 (c!846486 C!27440)) (Concat!22268 (regOne!27702 Regex!13595) (regTwo!27702 Regex!13595)) (EmptyExpr!13595) (Star!13595 (reg!13924 Regex!13595)) (EmptyLang!13595) (Union!13595 (regOne!27703 Regex!13595) (regTwo!27703 Regex!13595)) )
))
(declare-datatypes ((String!65234 0))(
  ( (String!65235 (value!267758 String)) )
))
(declare-datatypes ((TokenValueInjection!16652 0))(
  ( (TokenValueInjection!16653 (toValue!11313 Int) (toChars!11172 Int)) )
))
(declare-datatypes ((Rule!16524 0))(
  ( (Rule!16525 (regex!8362 Regex!13595) (tag!9226 String!65234) (isSeparator!8362 Bool) (transformation!8362 TokenValueInjection!16652)) )
))
(declare-datatypes ((List!57474 0))(
  ( (Nil!57350) (Cons!57350 (h!63798 Rule!16524) (t!368040 List!57474)) )
))
(declare-fun rulesArg!259 () List!57474)

(get-info :version)

(assert (=> b!4960110 (= res!2116950 (or (and ((_ is Cons!57350) rulesArg!259) ((_ is Nil!57350) (t!368040 rulesArg!259))) (not ((_ is Cons!57350) rulesArg!259))))))

(declare-fun lt!2047810 () List!57472)

(declare-fun isPrefix!5215 (List!57472 List!57472) Bool)

(assert (=> b!4960110 (isPrefix!5215 lt!2047810 lt!2047810)))

(declare-datatypes ((Unit!148243 0))(
  ( (Unit!148244) )
))
(declare-fun lt!2047806 () Unit!148243)

(declare-fun lemmaIsPrefixRefl!3539 (List!57472 List!57472) Unit!148243)

(assert (=> b!4960110 (= lt!2047806 (lemmaIsPrefixRefl!3539 lt!2047810 lt!2047810))))

(declare-fun tp!1391207 () Bool)

(declare-fun b!4960111 () Bool)

(declare-fun e!3100085 () Bool)

(declare-fun inv!74872 (String!65234) Bool)

(declare-fun inv!74877 (TokenValueInjection!16652) Bool)

(assert (=> b!4960111 (= e!3100084 (and tp!1391207 (inv!74872 (tag!9226 (h!63798 rulesArg!259))) (inv!74877 (transformation!8362 (h!63798 rulesArg!259))) e!3100085))))

(declare-fun b!4960112 () Bool)

(declare-fun e!3100087 () Bool)

(assert (=> b!4960112 (= e!3100089 e!3100087)))

(declare-fun res!2116952 () Bool)

(assert (=> b!4960112 (=> res!2116952 e!3100087)))

(declare-datatypes ((Token!15224 0))(
  ( (Token!15225 (value!267759 TokenValue!8672) (rule!11590 Rule!16524) (size!38008 Int) (originalCharacters!8643 List!57472)) )
))
(declare-datatypes ((tuple2!62012 0))(
  ( (tuple2!62013 (_1!34309 Token!15224) (_2!34309 BalanceConc!29658)) )
))
(declare-datatypes ((Option!14393 0))(
  ( (None!14392) (Some!14392 (v!50377 tuple2!62012)) )
))
(declare-fun lt!2047808 () Option!14393)

(declare-fun lt!2047811 () Option!14393)

(assert (=> b!4960112 (= res!2116952 (or (and ((_ is None!14392) lt!2047808) ((_ is None!14392) lt!2047811)) ((_ is None!14392) lt!2047811) ((_ is None!14392) lt!2047808) (>= (size!38008 (_1!34309 (v!50377 lt!2047808))) (size!38008 (_1!34309 (v!50377 lt!2047811))))))))

(declare-fun totalInput!464 () BalanceConc!29658)

(declare-datatypes ((LexerInterface!7954 0))(
  ( (LexerInterfaceExt!7951 (__x!34638 Int)) (Lexer!7952) )
))
(declare-fun thiss!15247 () LexerInterface!7954)

(declare-fun maxPrefixZipperSequenceV2!693 (LexerInterface!7954 List!57474 BalanceConc!29658 BalanceConc!29658) Option!14393)

(assert (=> b!4960112 (= lt!2047811 (maxPrefixZipperSequenceV2!693 thiss!15247 (t!368040 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!346 (LexerInterface!7954 Rule!16524 BalanceConc!29658 BalanceConc!29658) Option!14393)

(assert (=> b!4960112 (= lt!2047808 (maxPrefixOneRuleZipperSequenceV2!346 thiss!15247 (h!63798 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4960113 () Bool)

(declare-fun e!3100079 () Bool)

(declare-fun tp!1391204 () Bool)

(assert (=> b!4960113 (= e!3100079 (and (inv!74876 (c!846485 totalInput!464)) tp!1391204))))

(declare-fun res!2116948 () Bool)

(declare-fun e!3100086 () Bool)

(assert (=> start!522938 (=> (not res!2116948) (not e!3100086))))

(assert (=> start!522938 (= res!2116948 ((_ is Lexer!7952) thiss!15247))))

(assert (=> start!522938 e!3100086))

(assert (=> start!522938 true))

(assert (=> start!522938 e!3100088))

(declare-fun inv!74878 (BalanceConc!29658) Bool)

(assert (=> start!522938 (and (inv!74878 input!1342) e!3100082)))

(assert (=> start!522938 (and (inv!74878 totalInput!464) e!3100079)))

(declare-fun b!4960114 () Bool)

(assert (=> b!4960114 (= e!3100086 e!3100083)))

(declare-fun res!2116949 () Bool)

(assert (=> b!4960114 (=> (not res!2116949) (not e!3100083))))

(declare-fun isSuffix!1161 (List!57472 List!57472) Bool)

(declare-fun list!18315 (BalanceConc!29658) List!57472)

(assert (=> b!4960114 (= res!2116949 (isSuffix!1161 lt!2047810 (list!18315 totalInput!464)))))

(assert (=> b!4960114 (= lt!2047810 (list!18315 input!1342))))

(declare-fun b!4960115 () Bool)

(declare-fun e!3100080 () Bool)

(declare-fun lt!2047807 () Bool)

(assert (=> b!4960115 (= e!3100080 lt!2047807)))

(assert (=> b!4960116 (= e!3100085 (and tp!1391206 tp!1391205))))

(declare-fun b!4960117 () Bool)

(declare-fun res!2116946 () Bool)

(assert (=> b!4960117 (=> res!2116946 e!3100080)))

(declare-datatypes ((tuple2!62014 0))(
  ( (tuple2!62015 (_1!34310 Token!15224) (_2!34310 List!57472)) )
))
(declare-datatypes ((Option!14394 0))(
  ( (None!14393) (Some!14393 (v!50378 tuple2!62014)) )
))
(declare-fun lt!2047812 () Option!14394)

(declare-fun get!19874 (Option!14393) tuple2!62012)

(declare-fun get!19875 (Option!14394) tuple2!62014)

(assert (=> b!4960117 (= res!2116946 (not (= (_1!34309 (get!19874 lt!2047811)) (_1!34310 (get!19875 lt!2047812)))))))

(declare-fun b!4960118 () Bool)

(assert (=> b!4960118 (= e!3100087 e!3100080)))

(declare-fun res!2116945 () Bool)

(assert (=> b!4960118 (=> res!2116945 e!3100080)))

(declare-fun lt!2047809 () Bool)

(assert (=> b!4960118 (= res!2116945 (or (not (= lt!2047809 lt!2047807)) (not lt!2047809)))))

(declare-fun isDefined!11308 (Option!14394) Bool)

(assert (=> b!4960118 (= lt!2047807 (isDefined!11308 lt!2047812))))

(declare-fun isDefined!11309 (Option!14393) Bool)

(assert (=> b!4960118 (= lt!2047809 (isDefined!11309 lt!2047811))))

(declare-fun maxPrefixZipper!759 (LexerInterface!7954 List!57474 List!57472) Option!14394)

(assert (=> b!4960118 (= lt!2047812 (maxPrefixZipper!759 thiss!15247 rulesArg!259 lt!2047810))))

(declare-fun b!4960119 () Bool)

(declare-fun res!2116947 () Bool)

(assert (=> b!4960119 (=> (not res!2116947) (not e!3100086))))

(declare-fun isEmpty!30850 (List!57474) Bool)

(assert (=> b!4960119 (= res!2116947 (not (isEmpty!30850 rulesArg!259)))))

(declare-fun b!4960120 () Bool)

(declare-fun res!2116951 () Bool)

(assert (=> b!4960120 (=> (not res!2116951) (not e!3100086))))

(declare-fun rulesValidInductive!3265 (LexerInterface!7954 List!57474) Bool)

(assert (=> b!4960120 (= res!2116951 (rulesValidInductive!3265 thiss!15247 rulesArg!259))))

(assert (= (and start!522938 res!2116948) b!4960120))

(assert (= (and b!4960120 res!2116951) b!4960119))

(assert (= (and b!4960119 res!2116947) b!4960114))

(assert (= (and b!4960114 res!2116949) b!4960110))

(assert (= (and b!4960110 (not res!2116950)) b!4960112))

(assert (= (and b!4960112 (not res!2116952)) b!4960118))

(assert (= (and b!4960118 (not res!2116945)) b!4960117))

(assert (= (and b!4960117 (not res!2116946)) b!4960115))

(assert (= b!4960111 b!4960116))

(assert (= b!4960109 b!4960111))

(assert (= (and start!522938 ((_ is Cons!57350) rulesArg!259)) b!4960109))

(assert (= start!522938 b!4960108))

(assert (= start!522938 b!4960113))

(declare-fun m!5984676 () Bool)

(assert (=> b!4960114 m!5984676))

(assert (=> b!4960114 m!5984676))

(declare-fun m!5984678 () Bool)

(assert (=> b!4960114 m!5984678))

(declare-fun m!5984680 () Bool)

(assert (=> b!4960114 m!5984680))

(declare-fun m!5984682 () Bool)

(assert (=> b!4960119 m!5984682))

(declare-fun m!5984684 () Bool)

(assert (=> b!4960120 m!5984684))

(declare-fun m!5984686 () Bool)

(assert (=> b!4960118 m!5984686))

(declare-fun m!5984688 () Bool)

(assert (=> b!4960118 m!5984688))

(declare-fun m!5984690 () Bool)

(assert (=> b!4960118 m!5984690))

(declare-fun m!5984692 () Bool)

(assert (=> b!4960112 m!5984692))

(declare-fun m!5984694 () Bool)

(assert (=> b!4960112 m!5984694))

(declare-fun m!5984696 () Bool)

(assert (=> b!4960117 m!5984696))

(declare-fun m!5984698 () Bool)

(assert (=> b!4960117 m!5984698))

(declare-fun m!5984700 () Bool)

(assert (=> b!4960108 m!5984700))

(declare-fun m!5984702 () Bool)

(assert (=> b!4960110 m!5984702))

(declare-fun m!5984704 () Bool)

(assert (=> b!4960110 m!5984704))

(declare-fun m!5984706 () Bool)

(assert (=> start!522938 m!5984706))

(declare-fun m!5984708 () Bool)

(assert (=> start!522938 m!5984708))

(declare-fun m!5984710 () Bool)

(assert (=> b!4960111 m!5984710))

(declare-fun m!5984712 () Bool)

(assert (=> b!4960111 m!5984712))

(declare-fun m!5984714 () Bool)

(assert (=> b!4960113 m!5984714))

(check-sat (not b!4960110) (not b!4960112) (not b!4960118) (not b!4960111) (not b!4960119) (not b!4960120) b_and!347365 (not b!4960117) (not b_next!133303) (not b!4960114) (not b!4960109) (not b!4960113) (not b_next!133301) (not start!522938) b_and!347363 (not b!4960108))
(check-sat b_and!347363 b_and!347365 (not b_next!133301) (not b_next!133303))

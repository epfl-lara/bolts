; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!525130 () Bool)

(assert start!525130)

(declare-fun b!4976676 () Bool)

(declare-fun b_free!132963 () Bool)

(declare-fun b_next!133753 () Bool)

(assert (=> b!4976676 (= b_free!132963 (not b_next!133753))))

(declare-fun tp!1395520 () Bool)

(declare-fun b_and!349375 () Bool)

(assert (=> b!4976676 (= tp!1395520 b_and!349375)))

(declare-fun b_free!132965 () Bool)

(declare-fun b_next!133755 () Bool)

(assert (=> b!4976676 (= b_free!132965 (not b_next!133755))))

(declare-fun tp!1395518 () Bool)

(declare-fun b_and!349377 () Bool)

(assert (=> b!4976676 (= tp!1395518 b_and!349377)))

(declare-fun b!4976672 () Bool)

(declare-fun res!2124340 () Bool)

(declare-fun e!3110346 () Bool)

(assert (=> b!4976672 (=> (not res!2124340) (not e!3110346))))

(declare-datatypes ((LexerInterface!8008 0))(
  ( (LexerInterfaceExt!8005 (__x!34745 Int)) (Lexer!8006) )
))
(declare-fun thiss!16165 () LexerInterface!8008)

(declare-datatypes ((String!65503 0))(
  ( (String!65504 (value!269262 String)) )
))
(declare-datatypes ((C!27548 0))(
  ( (C!27549 (val!23140 Int)) )
))
(declare-datatypes ((List!57628 0))(
  ( (Nil!57504) (Cons!57504 (h!63952 C!27548) (t!369640 List!57628)) )
))
(declare-datatypes ((IArray!30397 0))(
  ( (IArray!30398 (innerList!15256 List!57628)) )
))
(declare-datatypes ((List!57629 0))(
  ( (Nil!57505) (Cons!57505 (h!63953 (_ BitVec 16)) (t!369641 List!57629)) )
))
(declare-datatypes ((Regex!13649 0))(
  ( (ElementMatch!13649 (c!849199 C!27548)) (Concat!22375 (regOne!27810 Regex!13649) (regTwo!27810 Regex!13649)) (EmptyExpr!13649) (Star!13649 (reg!13978 Regex!13649)) (EmptyLang!13649) (Union!13649 (regOne!27811 Regex!13649) (regTwo!27811 Regex!13649)) )
))
(declare-datatypes ((Conc!15168 0))(
  ( (Node!15168 (left!41958 Conc!15168) (right!42288 Conc!15168) (csize!30566 Int) (cheight!15379 Int)) (Leaf!25201 (xs!18494 IArray!30397) (csize!30567 Int)) (Empty!15168) )
))
(declare-datatypes ((BalanceConc!29766 0))(
  ( (BalanceConc!29767 (c!849200 Conc!15168)) )
))
(declare-datatypes ((TokenValue!8726 0))(
  ( (FloatLiteralValue!17452 (text!61527 List!57629)) (TokenValueExt!8725 (__x!34746 Int)) (Broken!43630 (value!269263 List!57629)) (Object!8849) (End!8726) (Def!8726) (Underscore!8726) (Match!8726) (Else!8726) (Error!8726) (Case!8726) (If!8726) (Extends!8726) (Abstract!8726) (Class!8726) (Val!8726) (DelimiterValue!17452 (del!8786 List!57629)) (KeywordValue!8732 (value!269264 List!57629)) (CommentValue!17452 (value!269265 List!57629)) (WhitespaceValue!17452 (value!269266 List!57629)) (IndentationValue!8726 (value!269267 List!57629)) (String!65505) (Int32!8726) (Broken!43631 (value!269268 List!57629)) (Boolean!8727) (Unit!148489) (OperatorValue!8729 (op!8786 List!57629)) (IdentifierValue!17452 (value!269269 List!57629)) (IdentifierValue!17453 (value!269270 List!57629)) (WhitespaceValue!17453 (value!269271 List!57629)) (True!17452) (False!17452) (Broken!43632 (value!269272 List!57629)) (Broken!43633 (value!269273 List!57629)) (True!17453) (RightBrace!8726) (RightBracket!8726) (Colon!8726) (Null!8726) (Comma!8726) (LeftBracket!8726) (False!17453) (LeftBrace!8726) (ImaginaryLiteralValue!8726 (text!61528 List!57629)) (StringLiteralValue!26178 (value!269274 List!57629)) (EOFValue!8726 (value!269275 List!57629)) (IdentValue!8726 (value!269276 List!57629)) (DelimiterValue!17453 (value!269277 List!57629)) (DedentValue!8726 (value!269278 List!57629)) (NewLineValue!8726 (value!269279 List!57629)) (IntegerValue!26178 (value!269280 (_ BitVec 32)) (text!61529 List!57629)) (IntegerValue!26179 (value!269281 Int) (text!61530 List!57629)) (Times!8726) (Or!8726) (Equal!8726) (Minus!8726) (Broken!43634 (value!269282 List!57629)) (And!8726) (Div!8726) (LessEqual!8726) (Mod!8726) (Concat!22376) (Not!8726) (Plus!8726) (SpaceValue!8726 (value!269283 List!57629)) (IntegerValue!26180 (value!269284 Int) (text!61531 List!57629)) (StringLiteralValue!26179 (text!61532 List!57629)) (FloatLiteralValue!17453 (text!61533 List!57629)) (BytesLiteralValue!8726 (value!269285 List!57629)) (CommentValue!17453 (value!269286 List!57629)) (StringLiteralValue!26180 (value!269287 List!57629)) (ErrorTokenValue!8726 (msg!8787 List!57629)) )
))
(declare-datatypes ((TokenValueInjection!16760 0))(
  ( (TokenValueInjection!16761 (toValue!11391 Int) (toChars!11250 Int)) )
))
(declare-datatypes ((Rule!16632 0))(
  ( (Rule!16633 (regex!8416 Regex!13649) (tag!9280 String!65503) (isSeparator!8416 Bool) (transformation!8416 TokenValueInjection!16760)) )
))
(declare-fun rule!200 () Rule!16632)

(declare-fun ruleValid!3824 (LexerInterface!8008 Rule!16632) Bool)

(assert (=> b!4976672 (= res!2124340 (ruleValid!3824 thiss!16165 rule!200))))

(declare-fun b!4976673 () Bool)

(declare-fun e!3110348 () Bool)

(assert (=> b!4976673 (= e!3110346 e!3110348)))

(declare-fun res!2124342 () Bool)

(assert (=> b!4976673 (=> (not res!2124342) (not e!3110348))))

(declare-fun lt!2055229 () List!57628)

(declare-fun totalInput!520 () BalanceConc!29766)

(declare-fun isSuffix!1215 (List!57628 List!57628) Bool)

(declare-fun list!18408 (BalanceConc!29766) List!57628)

(assert (=> b!4976673 (= res!2124342 (isSuffix!1215 lt!2055229 (list!18408 totalInput!520)))))

(declare-fun input!1580 () BalanceConc!29766)

(assert (=> b!4976673 (= lt!2055229 (list!18408 input!1580))))

(declare-fun e!3110353 () Bool)

(declare-fun tp!1395522 () Bool)

(declare-fun b!4976674 () Bool)

(declare-fun e!3110349 () Bool)

(declare-fun inv!75212 (String!65503) Bool)

(declare-fun inv!75216 (TokenValueInjection!16760) Bool)

(assert (=> b!4976674 (= e!3110353 (and tp!1395522 (inv!75212 (tag!9280 rule!200)) (inv!75216 (transformation!8416 rule!200)) e!3110349))))

(declare-fun b!4976675 () Bool)

(declare-fun e!3110352 () Bool)

(assert (=> b!4976675 (= e!3110348 e!3110352)))

(declare-fun res!2124341 () Bool)

(assert (=> b!4976675 (=> (not res!2124341) (not e!3110352))))

(declare-fun lt!2055231 () Bool)

(declare-fun lt!2055232 () Bool)

(assert (=> b!4976675 (= res!2124341 (and (= lt!2055231 lt!2055232) lt!2055231))))

(declare-datatypes ((Token!15312 0))(
  ( (Token!15313 (value!269288 TokenValue!8726) (rule!11676 Rule!16632) (size!38113 Int) (originalCharacters!8687 List!57628)) )
))
(declare-datatypes ((tuple2!62262 0))(
  ( (tuple2!62263 (_1!34434 Token!15312) (_2!34434 List!57628)) )
))
(declare-datatypes ((Option!14475 0))(
  ( (None!14474) (Some!14474 (v!50471 tuple2!62262)) )
))
(declare-fun lt!2055230 () Option!14475)

(declare-fun isDefined!11385 (Option!14475) Bool)

(assert (=> b!4976675 (= lt!2055232 (isDefined!11385 lt!2055230))))

(assert (=> b!4976675 (= lt!2055231 false)))

(declare-fun maxPrefixOneRule!3644 (LexerInterface!8008 Rule!16632 List!57628) Option!14475)

(assert (=> b!4976675 (= lt!2055230 (maxPrefixOneRule!3644 thiss!16165 rule!200 lt!2055229))))

(assert (=> b!4976676 (= e!3110349 (and tp!1395520 tp!1395518))))

(declare-fun b!4976677 () Bool)

(declare-fun e!3110351 () Bool)

(declare-fun tp!1395519 () Bool)

(declare-fun inv!75217 (Conc!15168) Bool)

(assert (=> b!4976677 (= e!3110351 (and (inv!75217 (c!849200 totalInput!520)) tp!1395519))))

(declare-fun b!4976678 () Bool)

(assert (=> b!4976678 (= e!3110352 (not lt!2055232))))

(declare-fun res!2124343 () Bool)

(assert (=> start!525130 (=> (not res!2124343) (not e!3110346))))

(get-info :version)

(assert (=> start!525130 (= res!2124343 ((_ is Lexer!8006) thiss!16165))))

(assert (=> start!525130 e!3110346))

(assert (=> start!525130 true))

(assert (=> start!525130 e!3110353))

(declare-fun inv!75218 (BalanceConc!29766) Bool)

(assert (=> start!525130 (and (inv!75218 totalInput!520) e!3110351)))

(declare-fun e!3110350 () Bool)

(assert (=> start!525130 (and (inv!75218 input!1580) e!3110350)))

(declare-fun b!4976671 () Bool)

(declare-fun res!2124344 () Bool)

(assert (=> b!4976671 (=> (not res!2124344) (not e!3110352))))

(declare-datatypes ((tuple2!62264 0))(
  ( (tuple2!62265 (_1!34435 Token!15312) (_2!34435 BalanceConc!29766)) )
))
(declare-datatypes ((Option!14476 0))(
  ( (None!14475) (Some!14475 (v!50472 tuple2!62264)) )
))
(declare-fun get!19973 (Option!14476) tuple2!62264)

(declare-fun get!19974 (Option!14475) tuple2!62262)

(assert (=> b!4976671 (= res!2124344 (= (_1!34435 (get!19973 None!14475)) (_1!34434 (get!19974 lt!2055230))))))

(declare-fun b!4976679 () Bool)

(declare-fun res!2124345 () Bool)

(assert (=> b!4976679 (=> (not res!2124345) (not e!3110348))))

(declare-fun isEmpty!30996 (BalanceConc!29766) Bool)

(declare-datatypes ((tuple2!62266 0))(
  ( (tuple2!62267 (_1!34436 BalanceConc!29766) (_2!34436 BalanceConc!29766)) )
))
(declare-fun findLongestMatchWithZipperSequenceV2!179 (Regex!13649 BalanceConc!29766 BalanceConc!29766) tuple2!62266)

(assert (=> b!4976679 (= res!2124345 (isEmpty!30996 (_1!34436 (findLongestMatchWithZipperSequenceV2!179 (regex!8416 rule!200) input!1580 totalInput!520))))))

(declare-fun b!4976680 () Bool)

(declare-fun tp!1395521 () Bool)

(assert (=> b!4976680 (= e!3110350 (and (inv!75217 (c!849200 input!1580)) tp!1395521))))

(assert (= (and start!525130 res!2124343) b!4976672))

(assert (= (and b!4976672 res!2124340) b!4976673))

(assert (= (and b!4976673 res!2124342) b!4976679))

(assert (= (and b!4976679 res!2124345) b!4976675))

(assert (= (and b!4976675 res!2124341) b!4976671))

(assert (= (and b!4976671 res!2124344) b!4976678))

(assert (= b!4976674 b!4976676))

(assert (= start!525130 b!4976674))

(assert (= start!525130 b!4976677))

(assert (= start!525130 b!4976680))

(declare-fun m!6006882 () Bool)

(assert (=> b!4976679 m!6006882))

(declare-fun m!6006884 () Bool)

(assert (=> b!4976679 m!6006884))

(declare-fun m!6006886 () Bool)

(assert (=> b!4976674 m!6006886))

(declare-fun m!6006888 () Bool)

(assert (=> b!4976674 m!6006888))

(declare-fun m!6006890 () Bool)

(assert (=> b!4976671 m!6006890))

(declare-fun m!6006892 () Bool)

(assert (=> b!4976671 m!6006892))

(declare-fun m!6006894 () Bool)

(assert (=> b!4976680 m!6006894))

(declare-fun m!6006896 () Bool)

(assert (=> b!4976673 m!6006896))

(assert (=> b!4976673 m!6006896))

(declare-fun m!6006898 () Bool)

(assert (=> b!4976673 m!6006898))

(declare-fun m!6006900 () Bool)

(assert (=> b!4976673 m!6006900))

(declare-fun m!6006902 () Bool)

(assert (=> b!4976672 m!6006902))

(declare-fun m!6006904 () Bool)

(assert (=> b!4976677 m!6006904))

(declare-fun m!6006906 () Bool)

(assert (=> start!525130 m!6006906))

(declare-fun m!6006908 () Bool)

(assert (=> start!525130 m!6006908))

(declare-fun m!6006910 () Bool)

(assert (=> b!4976675 m!6006910))

(declare-fun m!6006912 () Bool)

(assert (=> b!4976675 m!6006912))

(check-sat (not b!4976671) (not b!4976679) (not b!4976672) (not b!4976675) b_and!349375 (not b_next!133755) (not b!4976677) (not b!4976673) (not start!525130) b_and!349377 (not b_next!133753) (not b!4976674) (not b!4976680))
(check-sat b_and!349377 b_and!349375 (not b_next!133755) (not b_next!133753))

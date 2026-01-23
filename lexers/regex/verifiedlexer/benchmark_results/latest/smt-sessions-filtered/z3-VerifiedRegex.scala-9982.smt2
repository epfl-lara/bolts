; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522414 () Bool)

(assert start!522414)

(declare-fun b!4956285 () Bool)

(declare-fun b_free!132279 () Bool)

(declare-fun b_next!133069 () Bool)

(assert (=> b!4956285 (= b_free!132279 (not b_next!133069))))

(declare-fun tp!1389909 () Bool)

(declare-fun b_and!347131 () Bool)

(assert (=> b!4956285 (= tp!1389909 b_and!347131)))

(declare-fun b_free!132281 () Bool)

(declare-fun b_next!133071 () Bool)

(assert (=> b!4956285 (= b_free!132281 (not b_next!133071))))

(declare-fun tp!1389911 () Bool)

(declare-fun b_and!347133 () Bool)

(assert (=> b!4956285 (= tp!1389911 b_and!347133)))

(declare-fun b!4956282 () Bool)

(declare-fun e!3097160 () Bool)

(declare-fun e!3097153 () Bool)

(assert (=> b!4956282 (= e!3097160 (not e!3097153))))

(declare-fun res!2114707 () Bool)

(assert (=> b!4956282 (=> res!2114707 e!3097153)))

(declare-datatypes ((C!27348 0))(
  ( (C!27349 (val!23040 Int)) )
))
(declare-datatypes ((List!57334 0))(
  ( (Nil!57210) (Cons!57210 (h!63658 C!27348) (t!367900 List!57334)) )
))
(declare-datatypes ((IArray!30197 0))(
  ( (IArray!30198 (innerList!15156 List!57334)) )
))
(declare-datatypes ((Regex!13549 0))(
  ( (ElementMatch!13549 (c!846155 C!27348)) (Concat!22175 (regOne!27610 Regex!13549) (regTwo!27610 Regex!13549)) (EmptyExpr!13549) (Star!13549 (reg!13878 Regex!13549)) (EmptyLang!13549) (Union!13549 (regOne!27611 Regex!13549) (regTwo!27611 Regex!13549)) )
))
(declare-datatypes ((String!65003 0))(
  ( (String!65004 (value!266422 String)) )
))
(declare-datatypes ((List!57335 0))(
  ( (Nil!57211) (Cons!57211 (h!63659 (_ BitVec 16)) (t!367901 List!57335)) )
))
(declare-datatypes ((TokenValue!8626 0))(
  ( (FloatLiteralValue!17252 (text!60827 List!57335)) (TokenValueExt!8625 (__x!34545 Int)) (Broken!43130 (value!266423 List!57335)) (Object!8749) (End!8626) (Def!8626) (Underscore!8626) (Match!8626) (Else!8626) (Error!8626) (Case!8626) (If!8626) (Extends!8626) (Abstract!8626) (Class!8626) (Val!8626) (DelimiterValue!17252 (del!8686 List!57335)) (KeywordValue!8632 (value!266424 List!57335)) (CommentValue!17252 (value!266425 List!57335)) (WhitespaceValue!17252 (value!266426 List!57335)) (IndentationValue!8626 (value!266427 List!57335)) (String!65005) (Int32!8626) (Broken!43131 (value!266428 List!57335)) (Boolean!8627) (Unit!148104) (OperatorValue!8629 (op!8686 List!57335)) (IdentifierValue!17252 (value!266429 List!57335)) (IdentifierValue!17253 (value!266430 List!57335)) (WhitespaceValue!17253 (value!266431 List!57335)) (True!17252) (False!17252) (Broken!43132 (value!266432 List!57335)) (Broken!43133 (value!266433 List!57335)) (True!17253) (RightBrace!8626) (RightBracket!8626) (Colon!8626) (Null!8626) (Comma!8626) (LeftBracket!8626) (False!17253) (LeftBrace!8626) (ImaginaryLiteralValue!8626 (text!60828 List!57335)) (StringLiteralValue!25878 (value!266434 List!57335)) (EOFValue!8626 (value!266435 List!57335)) (IdentValue!8626 (value!266436 List!57335)) (DelimiterValue!17253 (value!266437 List!57335)) (DedentValue!8626 (value!266438 List!57335)) (NewLineValue!8626 (value!266439 List!57335)) (IntegerValue!25878 (value!266440 (_ BitVec 32)) (text!60829 List!57335)) (IntegerValue!25879 (value!266441 Int) (text!60830 List!57335)) (Times!8626) (Or!8626) (Equal!8626) (Minus!8626) (Broken!43134 (value!266442 List!57335)) (And!8626) (Div!8626) (LessEqual!8626) (Mod!8626) (Concat!22176) (Not!8626) (Plus!8626) (SpaceValue!8626 (value!266443 List!57335)) (IntegerValue!25880 (value!266444 Int) (text!60831 List!57335)) (StringLiteralValue!25879 (text!60832 List!57335)) (FloatLiteralValue!17253 (text!60833 List!57335)) (BytesLiteralValue!8626 (value!266445 List!57335)) (CommentValue!17253 (value!266446 List!57335)) (StringLiteralValue!25880 (value!266447 List!57335)) (ErrorTokenValue!8626 (msg!8687 List!57335)) )
))
(declare-datatypes ((Conc!15068 0))(
  ( (Node!15068 (left!41728 Conc!15068) (right!42058 Conc!15068) (csize!30366 Int) (cheight!15279 Int)) (Leaf!25051 (xs!18394 IArray!30197) (csize!30367 Int)) (Empty!15068) )
))
(declare-datatypes ((BalanceConc!29566 0))(
  ( (BalanceConc!29567 (c!846156 Conc!15068)) )
))
(declare-datatypes ((TokenValueInjection!16560 0))(
  ( (TokenValueInjection!16561 (toValue!11267 Int) (toChars!11126 Int)) )
))
(declare-datatypes ((Rule!16432 0))(
  ( (Rule!16433 (regex!8316 Regex!13549) (tag!9180 String!65003) (isSeparator!8316 Bool) (transformation!8316 TokenValueInjection!16560)) )
))
(declare-datatypes ((List!57336 0))(
  ( (Nil!57212) (Cons!57212 (h!63660 Rule!16432) (t!367902 List!57336)) )
))
(declare-fun rulesArg!259 () List!57336)

(get-info :version)

(assert (=> b!4956282 (= res!2114707 (or (and ((_ is Cons!57212) rulesArg!259) ((_ is Nil!57212) (t!367902 rulesArg!259))) (not ((_ is Cons!57212) rulesArg!259))))))

(declare-fun lt!2045609 () List!57334)

(declare-fun isPrefix!5169 (List!57334 List!57334) Bool)

(assert (=> b!4956282 (isPrefix!5169 lt!2045609 lt!2045609)))

(declare-datatypes ((Unit!148105 0))(
  ( (Unit!148106) )
))
(declare-fun lt!2045606 () Unit!148105)

(declare-fun lemmaIsPrefixRefl!3493 (List!57334 List!57334) Unit!148105)

(assert (=> b!4956282 (= lt!2045606 (lemmaIsPrefixRefl!3493 lt!2045609 lt!2045609))))

(declare-fun b!4956283 () Bool)

(declare-fun res!2114705 () Bool)

(declare-fun e!3097158 () Bool)

(assert (=> b!4956283 (=> (not res!2114705) (not e!3097158))))

(declare-fun isEmpty!30756 (List!57336) Bool)

(assert (=> b!4956283 (= res!2114705 (not (isEmpty!30756 rulesArg!259)))))

(declare-fun b!4956284 () Bool)

(declare-fun e!3097155 () Bool)

(declare-fun e!3097157 () Bool)

(declare-fun tp!1389907 () Bool)

(assert (=> b!4956284 (= e!3097155 (and e!3097157 tp!1389907))))

(declare-fun e!3097161 () Bool)

(assert (=> b!4956285 (= e!3097161 (and tp!1389909 tp!1389911))))

(declare-fun res!2114706 () Bool)

(assert (=> start!522414 (=> (not res!2114706) (not e!3097158))))

(declare-datatypes ((LexerInterface!7908 0))(
  ( (LexerInterfaceExt!7905 (__x!34546 Int)) (Lexer!7906) )
))
(declare-fun thiss!15247 () LexerInterface!7908)

(assert (=> start!522414 (= res!2114706 ((_ is Lexer!7906) thiss!15247))))

(assert (=> start!522414 e!3097158))

(assert (=> start!522414 true))

(assert (=> start!522414 e!3097155))

(declare-fun input!1342 () BalanceConc!29566)

(declare-fun e!3097156 () Bool)

(declare-fun inv!74635 (BalanceConc!29566) Bool)

(assert (=> start!522414 (and (inv!74635 input!1342) e!3097156)))

(declare-fun totalInput!464 () BalanceConc!29566)

(declare-fun e!3097159 () Bool)

(assert (=> start!522414 (and (inv!74635 totalInput!464) e!3097159)))

(declare-fun b!4956286 () Bool)

(declare-fun res!2114709 () Bool)

(assert (=> b!4956286 (=> (not res!2114709) (not e!3097158))))

(declare-fun rulesValidInductive!3219 (LexerInterface!7908 List!57336) Bool)

(assert (=> b!4956286 (= res!2114709 (rulesValidInductive!3219 thiss!15247 rulesArg!259))))

(declare-fun b!4956287 () Bool)

(declare-fun e!3097152 () Bool)

(assert (=> b!4956287 (= e!3097153 e!3097152)))

(declare-fun res!2114708 () Bool)

(assert (=> b!4956287 (=> res!2114708 e!3097152)))

(declare-datatypes ((Token!15132 0))(
  ( (Token!15133 (value!266448 TokenValue!8626) (rule!11532 Rule!16432) (size!37938 Int) (originalCharacters!8597 List!57334)) )
))
(declare-datatypes ((tuple2!61780 0))(
  ( (tuple2!61781 (_1!34193 Token!15132) (_2!34193 BalanceConc!29566)) )
))
(declare-datatypes ((Option!14301 0))(
  ( (None!14300) (Some!14300 (v!50285 tuple2!61780)) )
))
(declare-fun lt!2045610 () Option!14301)

(declare-fun lt!2045608 () Option!14301)

(assert (=> b!4956287 (= res!2114708 (or (and ((_ is None!14300) lt!2045610) ((_ is None!14300) lt!2045608)) (not ((_ is None!14300) lt!2045608))))))

(declare-fun maxPrefixZipperSequenceV2!647 (LexerInterface!7908 List!57336 BalanceConc!29566 BalanceConc!29566) Option!14301)

(assert (=> b!4956287 (= lt!2045608 (maxPrefixZipperSequenceV2!647 thiss!15247 (t!367902 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!300 (LexerInterface!7908 Rule!16432 BalanceConc!29566 BalanceConc!29566) Option!14301)

(assert (=> b!4956287 (= lt!2045610 (maxPrefixOneRuleZipperSequenceV2!300 thiss!15247 (h!63660 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4956288 () Bool)

(declare-fun tp!1389908 () Bool)

(declare-fun inv!74631 (String!65003) Bool)

(declare-fun inv!74636 (TokenValueInjection!16560) Bool)

(assert (=> b!4956288 (= e!3097157 (and tp!1389908 (inv!74631 (tag!9180 (h!63660 rulesArg!259))) (inv!74636 (transformation!8316 (h!63660 rulesArg!259))) e!3097161))))

(declare-fun b!4956289 () Bool)

(assert (=> b!4956289 (= e!3097152 true)))

(declare-datatypes ((tuple2!61782 0))(
  ( (tuple2!61783 (_1!34194 Token!15132) (_2!34194 List!57334)) )
))
(declare-datatypes ((Option!14302 0))(
  ( (None!14301) (Some!14301 (v!50286 tuple2!61782)) )
))
(declare-fun lt!2045607 () Option!14302)

(declare-fun maxPrefixZipper!713 (LexerInterface!7908 List!57336 List!57334) Option!14302)

(assert (=> b!4956289 (= lt!2045607 (maxPrefixZipper!713 thiss!15247 rulesArg!259 lt!2045609))))

(declare-fun b!4956290 () Bool)

(declare-fun tp!1389910 () Bool)

(declare-fun inv!74637 (Conc!15068) Bool)

(assert (=> b!4956290 (= e!3097159 (and (inv!74637 (c!846156 totalInput!464)) tp!1389910))))

(declare-fun b!4956291 () Bool)

(declare-fun tp!1389912 () Bool)

(assert (=> b!4956291 (= e!3097156 (and (inv!74637 (c!846156 input!1342)) tp!1389912))))

(declare-fun b!4956292 () Bool)

(assert (=> b!4956292 (= e!3097158 e!3097160)))

(declare-fun res!2114704 () Bool)

(assert (=> b!4956292 (=> (not res!2114704) (not e!3097160))))

(declare-fun isSuffix!1115 (List!57334 List!57334) Bool)

(declare-fun list!18257 (BalanceConc!29566) List!57334)

(assert (=> b!4956292 (= res!2114704 (isSuffix!1115 lt!2045609 (list!18257 totalInput!464)))))

(assert (=> b!4956292 (= lt!2045609 (list!18257 input!1342))))

(assert (= (and start!522414 res!2114706) b!4956286))

(assert (= (and b!4956286 res!2114709) b!4956283))

(assert (= (and b!4956283 res!2114705) b!4956292))

(assert (= (and b!4956292 res!2114704) b!4956282))

(assert (= (and b!4956282 (not res!2114707)) b!4956287))

(assert (= (and b!4956287 (not res!2114708)) b!4956289))

(assert (= b!4956288 b!4956285))

(assert (= b!4956284 b!4956288))

(assert (= (and start!522414 ((_ is Cons!57212) rulesArg!259)) b!4956284))

(assert (= start!522414 b!4956291))

(assert (= start!522414 b!4956290))

(declare-fun m!5980860 () Bool)

(assert (=> b!4956286 m!5980860))

(declare-fun m!5980862 () Bool)

(assert (=> b!4956290 m!5980862))

(declare-fun m!5980864 () Bool)

(assert (=> b!4956283 m!5980864))

(declare-fun m!5980866 () Bool)

(assert (=> b!4956282 m!5980866))

(declare-fun m!5980868 () Bool)

(assert (=> b!4956282 m!5980868))

(declare-fun m!5980870 () Bool)

(assert (=> b!4956291 m!5980870))

(declare-fun m!5980872 () Bool)

(assert (=> b!4956292 m!5980872))

(assert (=> b!4956292 m!5980872))

(declare-fun m!5980874 () Bool)

(assert (=> b!4956292 m!5980874))

(declare-fun m!5980876 () Bool)

(assert (=> b!4956292 m!5980876))

(declare-fun m!5980878 () Bool)

(assert (=> b!4956288 m!5980878))

(declare-fun m!5980880 () Bool)

(assert (=> b!4956288 m!5980880))

(declare-fun m!5980882 () Bool)

(assert (=> b!4956289 m!5980882))

(declare-fun m!5980884 () Bool)

(assert (=> b!4956287 m!5980884))

(declare-fun m!5980886 () Bool)

(assert (=> b!4956287 m!5980886))

(declare-fun m!5980888 () Bool)

(assert (=> start!522414 m!5980888))

(declare-fun m!5980890 () Bool)

(assert (=> start!522414 m!5980890))

(check-sat (not b!4956288) (not b!4956286) (not b!4956282) (not b_next!133069) (not b!4956287) (not b!4956284) (not start!522414) (not b!4956292) (not b_next!133071) b_and!347133 b_and!347131 (not b!4956289) (not b!4956290) (not b!4956291) (not b!4956283))
(check-sat b_and!347131 b_and!347133 (not b_next!133069) (not b_next!133071))

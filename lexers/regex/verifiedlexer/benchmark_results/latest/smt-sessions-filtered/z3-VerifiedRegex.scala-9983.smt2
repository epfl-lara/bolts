; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522418 () Bool)

(assert start!522418)

(declare-fun b!4956358 () Bool)

(declare-fun b_free!132287 () Bool)

(declare-fun b_next!133077 () Bool)

(assert (=> b!4956358 (= b_free!132287 (not b_next!133077))))

(declare-fun tp!1389946 () Bool)

(declare-fun b_and!347139 () Bool)

(assert (=> b!4956358 (= tp!1389946 b_and!347139)))

(declare-fun b_free!132289 () Bool)

(declare-fun b_next!133079 () Bool)

(assert (=> b!4956358 (= b_free!132289 (not b_next!133079))))

(declare-fun tp!1389947 () Bool)

(declare-fun b_and!347141 () Bool)

(assert (=> b!4956358 (= tp!1389947 b_and!347141)))

(declare-fun b!4956348 () Bool)

(declare-fun res!2114742 () Bool)

(declare-fun e!3097221 () Bool)

(assert (=> b!4956348 (=> (not res!2114742) (not e!3097221))))

(declare-datatypes ((List!57340 0))(
  ( (Nil!57216) (Cons!57216 (h!63664 (_ BitVec 16)) (t!367906 List!57340)) )
))
(declare-datatypes ((TokenValue!8628 0))(
  ( (FloatLiteralValue!17256 (text!60841 List!57340)) (TokenValueExt!8627 (__x!34549 Int)) (Broken!43140 (value!266479 List!57340)) (Object!8751) (End!8628) (Def!8628) (Underscore!8628) (Match!8628) (Else!8628) (Error!8628) (Case!8628) (If!8628) (Extends!8628) (Abstract!8628) (Class!8628) (Val!8628) (DelimiterValue!17256 (del!8688 List!57340)) (KeywordValue!8634 (value!266480 List!57340)) (CommentValue!17256 (value!266481 List!57340)) (WhitespaceValue!17256 (value!266482 List!57340)) (IndentationValue!8628 (value!266483 List!57340)) (String!65013) (Int32!8628) (Broken!43141 (value!266484 List!57340)) (Boolean!8629) (Unit!148110) (OperatorValue!8631 (op!8688 List!57340)) (IdentifierValue!17256 (value!266485 List!57340)) (IdentifierValue!17257 (value!266486 List!57340)) (WhitespaceValue!17257 (value!266487 List!57340)) (True!17256) (False!17256) (Broken!43142 (value!266488 List!57340)) (Broken!43143 (value!266489 List!57340)) (True!17257) (RightBrace!8628) (RightBracket!8628) (Colon!8628) (Null!8628) (Comma!8628) (LeftBracket!8628) (False!17257) (LeftBrace!8628) (ImaginaryLiteralValue!8628 (text!60842 List!57340)) (StringLiteralValue!25884 (value!266490 List!57340)) (EOFValue!8628 (value!266491 List!57340)) (IdentValue!8628 (value!266492 List!57340)) (DelimiterValue!17257 (value!266493 List!57340)) (DedentValue!8628 (value!266494 List!57340)) (NewLineValue!8628 (value!266495 List!57340)) (IntegerValue!25884 (value!266496 (_ BitVec 32)) (text!60843 List!57340)) (IntegerValue!25885 (value!266497 Int) (text!60844 List!57340)) (Times!8628) (Or!8628) (Equal!8628) (Minus!8628) (Broken!43144 (value!266498 List!57340)) (And!8628) (Div!8628) (LessEqual!8628) (Mod!8628) (Concat!22179) (Not!8628) (Plus!8628) (SpaceValue!8628 (value!266499 List!57340)) (IntegerValue!25886 (value!266500 Int) (text!60845 List!57340)) (StringLiteralValue!25885 (text!60846 List!57340)) (FloatLiteralValue!17257 (text!60847 List!57340)) (BytesLiteralValue!8628 (value!266501 List!57340)) (CommentValue!17257 (value!266502 List!57340)) (StringLiteralValue!25886 (value!266503 List!57340)) (ErrorTokenValue!8628 (msg!8689 List!57340)) )
))
(declare-datatypes ((C!27352 0))(
  ( (C!27353 (val!23042 Int)) )
))
(declare-datatypes ((List!57341 0))(
  ( (Nil!57217) (Cons!57217 (h!63665 C!27352) (t!367907 List!57341)) )
))
(declare-datatypes ((IArray!30201 0))(
  ( (IArray!30202 (innerList!15158 List!57341)) )
))
(declare-datatypes ((Regex!13551 0))(
  ( (ElementMatch!13551 (c!846161 C!27352)) (Concat!22180 (regOne!27614 Regex!13551) (regTwo!27614 Regex!13551)) (EmptyExpr!13551) (Star!13551 (reg!13880 Regex!13551)) (EmptyLang!13551) (Union!13551 (regOne!27615 Regex!13551) (regTwo!27615 Regex!13551)) )
))
(declare-datatypes ((String!65014 0))(
  ( (String!65015 (value!266504 String)) )
))
(declare-datatypes ((Conc!15070 0))(
  ( (Node!15070 (left!41731 Conc!15070) (right!42061 Conc!15070) (csize!30370 Int) (cheight!15281 Int)) (Leaf!25054 (xs!18396 IArray!30201) (csize!30371 Int)) (Empty!15070) )
))
(declare-datatypes ((BalanceConc!29570 0))(
  ( (BalanceConc!29571 (c!846162 Conc!15070)) )
))
(declare-datatypes ((TokenValueInjection!16564 0))(
  ( (TokenValueInjection!16565 (toValue!11269 Int) (toChars!11128 Int)) )
))
(declare-datatypes ((Rule!16436 0))(
  ( (Rule!16437 (regex!8318 Regex!13551) (tag!9182 String!65014) (isSeparator!8318 Bool) (transformation!8318 TokenValueInjection!16564)) )
))
(declare-datatypes ((List!57342 0))(
  ( (Nil!57218) (Cons!57218 (h!63666 Rule!16436) (t!367908 List!57342)) )
))
(declare-fun rulesArg!259 () List!57342)

(declare-fun isEmpty!30758 (List!57342) Bool)

(assert (=> b!4956348 (= res!2114742 (not (isEmpty!30758 rulesArg!259)))))

(declare-fun b!4956349 () Bool)

(declare-fun e!3097219 () Bool)

(declare-fun e!3097217 () Bool)

(assert (=> b!4956349 (= e!3097219 (not e!3097217))))

(declare-fun res!2114741 () Bool)

(assert (=> b!4956349 (=> res!2114741 e!3097217)))

(get-info :version)

(assert (=> b!4956349 (= res!2114741 (or (and ((_ is Cons!57218) rulesArg!259) ((_ is Nil!57218) (t!367908 rulesArg!259))) (not ((_ is Cons!57218) rulesArg!259))))))

(declare-fun lt!2045646 () List!57341)

(declare-fun isPrefix!5171 (List!57341 List!57341) Bool)

(assert (=> b!4956349 (isPrefix!5171 lt!2045646 lt!2045646)))

(declare-datatypes ((Unit!148111 0))(
  ( (Unit!148112) )
))
(declare-fun lt!2045644 () Unit!148111)

(declare-fun lemmaIsPrefixRefl!3495 (List!57341 List!57341) Unit!148111)

(assert (=> b!4956349 (= lt!2045644 (lemmaIsPrefixRefl!3495 lt!2045646 lt!2045646))))

(declare-fun b!4956350 () Bool)

(declare-fun e!3097216 () Bool)

(declare-fun totalInput!464 () BalanceConc!29570)

(declare-fun tp!1389948 () Bool)

(declare-fun inv!74644 (Conc!15070) Bool)

(assert (=> b!4956350 (= e!3097216 (and (inv!74644 (c!846162 totalInput!464)) tp!1389948))))

(declare-fun b!4956351 () Bool)

(declare-fun res!2114740 () Bool)

(assert (=> b!4956351 (=> (not res!2114740) (not e!3097221))))

(declare-datatypes ((LexerInterface!7910 0))(
  ( (LexerInterfaceExt!7907 (__x!34550 Int)) (Lexer!7908) )
))
(declare-fun thiss!15247 () LexerInterface!7910)

(declare-fun rulesValidInductive!3221 (LexerInterface!7910 List!57342) Bool)

(assert (=> b!4956351 (= res!2114740 (rulesValidInductive!3221 thiss!15247 rulesArg!259))))

(declare-fun b!4956352 () Bool)

(assert (=> b!4956352 (= e!3097221 e!3097219)))

(declare-fun res!2114745 () Bool)

(assert (=> b!4956352 (=> (not res!2114745) (not e!3097219))))

(declare-fun isSuffix!1117 (List!57341 List!57341) Bool)

(declare-fun list!18259 (BalanceConc!29570) List!57341)

(assert (=> b!4956352 (= res!2114745 (isSuffix!1117 lt!2045646 (list!18259 totalInput!464)))))

(declare-fun input!1342 () BalanceConc!29570)

(assert (=> b!4956352 (= lt!2045646 (list!18259 input!1342))))

(declare-fun tp!1389944 () Bool)

(declare-fun e!3097215 () Bool)

(declare-fun b!4956353 () Bool)

(declare-fun e!3097218 () Bool)

(declare-fun inv!74640 (String!65014) Bool)

(declare-fun inv!74645 (TokenValueInjection!16564) Bool)

(assert (=> b!4956353 (= e!3097218 (and tp!1389944 (inv!74640 (tag!9182 (h!63666 rulesArg!259))) (inv!74645 (transformation!8318 (h!63666 rulesArg!259))) e!3097215))))

(declare-fun b!4956354 () Bool)

(declare-fun e!3097212 () Bool)

(declare-fun tp!1389943 () Bool)

(assert (=> b!4956354 (= e!3097212 (and (inv!74644 (c!846162 input!1342)) tp!1389943))))

(declare-fun b!4956355 () Bool)

(declare-fun e!3097214 () Bool)

(declare-fun lt!2045645 () Bool)

(declare-fun lt!2045642 () Bool)

(assert (=> b!4956355 (= e!3097214 (or (not (= lt!2045645 lt!2045642)) (not lt!2045645) lt!2045642))))

(declare-datatypes ((Token!15136 0))(
  ( (Token!15137 (value!266505 TokenValue!8628) (rule!11534 Rule!16436) (size!37940 Int) (originalCharacters!8599 List!57341)) )
))
(declare-datatypes ((tuple2!61788 0))(
  ( (tuple2!61789 (_1!34197 Token!15136) (_2!34197 List!57341)) )
))
(declare-datatypes ((Option!14305 0))(
  ( (None!14304) (Some!14304 (v!50289 tuple2!61788)) )
))
(declare-fun isDefined!11232 (Option!14305) Bool)

(declare-fun maxPrefixZipper!715 (LexerInterface!7910 List!57342 List!57341) Option!14305)

(assert (=> b!4956355 (= lt!2045642 (isDefined!11232 (maxPrefixZipper!715 thiss!15247 rulesArg!259 lt!2045646)))))

(declare-datatypes ((tuple2!61790 0))(
  ( (tuple2!61791 (_1!34198 Token!15136) (_2!34198 BalanceConc!29570)) )
))
(declare-datatypes ((Option!14306 0))(
  ( (None!14305) (Some!14305 (v!50290 tuple2!61790)) )
))
(declare-fun lt!2045643 () Option!14306)

(declare-fun isDefined!11233 (Option!14306) Bool)

(assert (=> b!4956355 (= lt!2045645 (isDefined!11233 lt!2045643))))

(declare-fun b!4956356 () Bool)

(assert (=> b!4956356 (= e!3097217 e!3097214)))

(declare-fun res!2114744 () Bool)

(assert (=> b!4956356 (=> res!2114744 e!3097214)))

(declare-fun lt!2045641 () Option!14306)

(assert (=> b!4956356 (= res!2114744 (or (and ((_ is None!14305) lt!2045643) ((_ is None!14305) lt!2045641)) (not ((_ is None!14305) lt!2045641))))))

(declare-fun maxPrefixZipperSequenceV2!649 (LexerInterface!7910 List!57342 BalanceConc!29570 BalanceConc!29570) Option!14306)

(assert (=> b!4956356 (= lt!2045641 (maxPrefixZipperSequenceV2!649 thiss!15247 (t!367908 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!302 (LexerInterface!7910 Rule!16436 BalanceConc!29570 BalanceConc!29570) Option!14306)

(assert (=> b!4956356 (= lt!2045643 (maxPrefixOneRuleZipperSequenceV2!302 thiss!15247 (h!63666 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4956357 () Bool)

(declare-fun e!3097220 () Bool)

(declare-fun tp!1389945 () Bool)

(assert (=> b!4956357 (= e!3097220 (and e!3097218 tp!1389945))))

(declare-fun res!2114743 () Bool)

(assert (=> start!522418 (=> (not res!2114743) (not e!3097221))))

(assert (=> start!522418 (= res!2114743 ((_ is Lexer!7908) thiss!15247))))

(assert (=> start!522418 e!3097221))

(assert (=> start!522418 true))

(assert (=> start!522418 e!3097220))

(declare-fun inv!74646 (BalanceConc!29570) Bool)

(assert (=> start!522418 (and (inv!74646 input!1342) e!3097212)))

(assert (=> start!522418 (and (inv!74646 totalInput!464) e!3097216)))

(assert (=> b!4956358 (= e!3097215 (and tp!1389946 tp!1389947))))

(assert (= (and start!522418 res!2114743) b!4956351))

(assert (= (and b!4956351 res!2114740) b!4956348))

(assert (= (and b!4956348 res!2114742) b!4956352))

(assert (= (and b!4956352 res!2114745) b!4956349))

(assert (= (and b!4956349 (not res!2114741)) b!4956356))

(assert (= (and b!4956356 (not res!2114744)) b!4956355))

(assert (= b!4956353 b!4956358))

(assert (= b!4956357 b!4956353))

(assert (= (and start!522418 ((_ is Cons!57218) rulesArg!259)) b!4956357))

(assert (= start!522418 b!4956354))

(assert (= start!522418 b!4956350))

(declare-fun m!5980928 () Bool)

(assert (=> b!4956354 m!5980928))

(declare-fun m!5980930 () Bool)

(assert (=> b!4956348 m!5980930))

(declare-fun m!5980932 () Bool)

(assert (=> b!4956356 m!5980932))

(declare-fun m!5980934 () Bool)

(assert (=> b!4956356 m!5980934))

(declare-fun m!5980936 () Bool)

(assert (=> b!4956351 m!5980936))

(declare-fun m!5980938 () Bool)

(assert (=> b!4956350 m!5980938))

(declare-fun m!5980940 () Bool)

(assert (=> b!4956353 m!5980940))

(declare-fun m!5980942 () Bool)

(assert (=> b!4956353 m!5980942))

(declare-fun m!5980944 () Bool)

(assert (=> b!4956352 m!5980944))

(assert (=> b!4956352 m!5980944))

(declare-fun m!5980946 () Bool)

(assert (=> b!4956352 m!5980946))

(declare-fun m!5980948 () Bool)

(assert (=> b!4956352 m!5980948))

(declare-fun m!5980950 () Bool)

(assert (=> start!522418 m!5980950))

(declare-fun m!5980952 () Bool)

(assert (=> start!522418 m!5980952))

(declare-fun m!5980954 () Bool)

(assert (=> b!4956355 m!5980954))

(assert (=> b!4956355 m!5980954))

(declare-fun m!5980956 () Bool)

(assert (=> b!4956355 m!5980956))

(declare-fun m!5980958 () Bool)

(assert (=> b!4956355 m!5980958))

(declare-fun m!5980960 () Bool)

(assert (=> b!4956349 m!5980960))

(declare-fun m!5980962 () Bool)

(assert (=> b!4956349 m!5980962))

(check-sat (not b!4956349) b_and!347141 (not start!522418) (not b!4956355) (not b!4956357) (not b!4956354) (not b!4956351) (not b!4956356) (not b_next!133079) (not b!4956352) (not b_next!133077) (not b!4956348) (not b!4956350) b_and!347139 (not b!4956353))
(check-sat b_and!347139 b_and!347141 (not b_next!133077) (not b_next!133079))

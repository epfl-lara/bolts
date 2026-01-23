; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745492 () Bool)

(assert start!745492)

(declare-fun b!7902284 () Bool)

(declare-fun b_free!134743 () Bool)

(declare-fun b_next!135533 () Bool)

(assert (=> b!7902284 (= b_free!134743 (not b_next!135533))))

(declare-fun tp!2354188 () Bool)

(declare-fun b_and!352771 () Bool)

(assert (=> b!7902284 (= tp!2354188 b_and!352771)))

(declare-fun b_free!134745 () Bool)

(declare-fun b_next!135535 () Bool)

(assert (=> b!7902284 (= b_free!134745 (not b_next!135535))))

(declare-fun tp!2354186 () Bool)

(declare-fun b_and!352773 () Bool)

(assert (=> b!7902284 (= tp!2354186 b_and!352773)))

(declare-fun b!7902277 () Bool)

(declare-fun res!3135314 () Bool)

(declare-fun e!4664444 () Bool)

(assert (=> b!7902277 (=> res!3135314 e!4664444)))

(declare-datatypes ((List!74284 0))(
  ( (Nil!74160) (Cons!74160 (h!80608 (_ BitVec 16)) (t!389289 List!74284)) )
))
(declare-datatypes ((TokenValue!8904 0))(
  ( (FloatLiteralValue!17808 (text!62773 List!74284)) (TokenValueExt!8903 (__x!35095 Int)) (Broken!44520 (value!286713 List!74284)) (Object!9027) (End!8904) (Def!8904) (Underscore!8904) (Match!8904) (Else!8904) (Error!8904) (Case!8904) (If!8904) (Extends!8904) (Abstract!8904) (Class!8904) (Val!8904) (DelimiterValue!17808 (del!8964 List!74284)) (KeywordValue!8910 (value!286714 List!74284)) (CommentValue!17808 (value!286715 List!74284)) (WhitespaceValue!17808 (value!286716 List!74284)) (IndentationValue!8904 (value!286717 List!74284)) (String!82941) (Int32!8904) (Broken!44521 (value!286718 List!74284)) (Boolean!8905) (Unit!169190) (OperatorValue!8907 (op!8964 List!74284)) (IdentifierValue!17808 (value!286719 List!74284)) (IdentifierValue!17809 (value!286720 List!74284)) (WhitespaceValue!17809 (value!286721 List!74284)) (True!17808) (False!17808) (Broken!44522 (value!286722 List!74284)) (Broken!44523 (value!286723 List!74284)) (True!17809) (RightBrace!8904) (RightBracket!8904) (Colon!8904) (Null!8904) (Comma!8904) (LeftBracket!8904) (False!17809) (LeftBrace!8904) (ImaginaryLiteralValue!8904 (text!62774 List!74284)) (StringLiteralValue!26712 (value!286724 List!74284)) (EOFValue!8904 (value!286725 List!74284)) (IdentValue!8904 (value!286726 List!74284)) (DelimiterValue!17809 (value!286727 List!74284)) (DedentValue!8904 (value!286728 List!74284)) (NewLineValue!8904 (value!286729 List!74284)) (IntegerValue!26712 (value!286730 (_ BitVec 32)) (text!62775 List!74284)) (IntegerValue!26713 (value!286731 Int) (text!62776 List!74284)) (Times!8904) (Or!8904) (Equal!8904) (Minus!8904) (Broken!44524 (value!286732 List!74284)) (And!8904) (Div!8904) (LessEqual!8904) (Mod!8904) (Concat!30195) (Not!8904) (Plus!8904) (SpaceValue!8904 (value!286733 List!74284)) (IntegerValue!26714 (value!286734 Int) (text!62777 List!74284)) (StringLiteralValue!26713 (text!62778 List!74284)) (FloatLiteralValue!17809 (text!62779 List!74284)) (BytesLiteralValue!8904 (value!286735 List!74284)) (CommentValue!17809 (value!286736 List!74284)) (StringLiteralValue!26714 (value!286737 List!74284)) (ErrorTokenValue!8904 (msg!8965 List!74284)) )
))
(declare-datatypes ((C!42912 0))(
  ( (C!42913 (val!31920 Int)) )
))
(declare-datatypes ((List!74285 0))(
  ( (Nil!74161) (Cons!74161 (h!80609 C!42912) (t!389290 List!74285)) )
))
(declare-datatypes ((IArray!31585 0))(
  ( (IArray!31586 (innerList!15850 List!74285)) )
))
(declare-datatypes ((Conc!15762 0))(
  ( (Node!15762 (left!56579 Conc!15762) (right!56909 Conc!15762) (csize!31754 Int) (cheight!15973 Int)) (Leaf!30024 (xs!19144 IArray!31585) (csize!31755 Int)) (Empty!15762) )
))
(declare-datatypes ((BalanceConc!30642 0))(
  ( (BalanceConc!30643 (c!1450205 Conc!15762)) )
))
(declare-datatypes ((Regex!21291 0))(
  ( (ElementMatch!21291 (c!1450206 C!42912)) (Concat!30196 (regOne!43094 Regex!21291) (regTwo!43094 Regex!21291)) (EmptyExpr!21291) (Star!21291 (reg!21620 Regex!21291)) (EmptyLang!21291) (Union!21291 (regOne!43095 Regex!21291) (regTwo!43095 Regex!21291)) )
))
(declare-datatypes ((String!82942 0))(
  ( (String!82943 (value!286738 String)) )
))
(declare-datatypes ((TokenValueInjection!17116 0))(
  ( (TokenValueInjection!17117 (toValue!11637 Int) (toChars!11496 Int)) )
))
(declare-datatypes ((Rule!16976 0))(
  ( (Rule!16977 (regex!8588 Regex!21291) (tag!9452 String!82942) (isSeparator!8588 Bool) (transformation!8588 TokenValueInjection!17116)) )
))
(declare-datatypes ((Token!15596 0))(
  ( (Token!15597 (value!286739 TokenValue!8904) (rule!11876 Rule!16976) (size!42972 Int) (originalCharacters!8829 List!74285)) )
))
(declare-datatypes ((tuple2!70202 0))(
  ( (tuple2!70203 (_1!38404 Token!15596) (_2!38404 List!74285)) )
))
(declare-datatypes ((Option!17870 0))(
  ( (None!17869) (Some!17869 (v!55010 tuple2!70202)) )
))
(declare-fun lt!2683760 () Option!17870)

(declare-fun isDefined!14446 (Option!17870) Bool)

(assert (=> b!7902277 (= res!3135314 (not (isDefined!14446 lt!2683760)))))

(declare-fun b!7902278 () Bool)

(declare-fun e!4664439 () Bool)

(assert (=> b!7902278 (= e!4664439 e!4664444)))

(declare-fun res!3135323 () Bool)

(assert (=> b!7902278 (=> res!3135323 e!4664444)))

(declare-fun lt!2683764 () Option!17870)

(get-info :version)

(assert (=> b!7902278 (= res!3135323 (or (and ((_ is None!17869) lt!2683764) ((_ is None!17869) lt!2683760)) ((_ is None!17869) lt!2683760) (not ((_ is None!17869) lt!2683764))))))

(declare-fun input!1184 () List!74285)

(declare-datatypes ((LexerInterface!8180 0))(
  ( (LexerInterfaceExt!8177 (__x!35096 Int)) (Lexer!8178) )
))
(declare-fun thiss!14377 () LexerInterface!8180)

(declare-datatypes ((List!74286 0))(
  ( (Nil!74162) (Cons!74162 (h!80610 Rule!16976) (t!389291 List!74286)) )
))
(declare-fun rulesArg!141 () List!74286)

(declare-fun maxPrefix!4721 (LexerInterface!8180 List!74286 List!74285) Option!17870)

(assert (=> b!7902278 (= lt!2683760 (maxPrefix!4721 thiss!14377 (t!389291 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3768 (LexerInterface!8180 Rule!16976 List!74285) Option!17870)

(assert (=> b!7902278 (= lt!2683764 (maxPrefixOneRule!3768 thiss!14377 (h!80610 rulesArg!141) input!1184))))

(declare-fun b!7902279 () Bool)

(declare-fun res!3135322 () Bool)

(assert (=> b!7902279 (=> res!3135322 e!4664444)))

(declare-fun isEmpty!42544 (Option!17870) Bool)

(assert (=> b!7902279 (= res!3135322 (isEmpty!42544 lt!2683760))))

(declare-fun b!7902280 () Bool)

(declare-fun res!3135312 () Bool)

(declare-fun e!4664445 () Bool)

(assert (=> b!7902280 (=> res!3135312 e!4664445)))

(declare-fun lt!2683761 () List!74285)

(declare-fun lt!2683763 () tuple2!70202)

(declare-fun ++!18154 (List!74285 List!74285) List!74285)

(assert (=> b!7902280 (= res!3135312 (not (= (++!18154 lt!2683761 (_2!38404 lt!2683763)) input!1184)))))

(declare-fun b!7902281 () Bool)

(declare-fun res!3135316 () Bool)

(declare-fun e!4664446 () Bool)

(assert (=> b!7902281 (=> (not res!3135316) (not e!4664446))))

(declare-fun isEmpty!42545 (List!74286) Bool)

(assert (=> b!7902281 (= res!3135316 (not (isEmpty!42545 rulesArg!141)))))

(declare-fun b!7902282 () Bool)

(assert (=> b!7902282 (= e!4664446 (not e!4664439))))

(declare-fun res!3135321 () Bool)

(assert (=> b!7902282 (=> res!3135321 e!4664439)))

(assert (=> b!7902282 (= res!3135321 (or (and ((_ is Cons!74162) rulesArg!141) ((_ is Nil!74162) (t!389291 rulesArg!141))) (not ((_ is Cons!74162) rulesArg!141))))))

(declare-fun isPrefix!6421 (List!74285 List!74285) Bool)

(assert (=> b!7902282 (isPrefix!6421 input!1184 input!1184)))

(declare-datatypes ((Unit!169191 0))(
  ( (Unit!169192) )
))
(declare-fun lt!2683762 () Unit!169191)

(declare-fun lemmaIsPrefixRefl!3932 (List!74285 List!74285) Unit!169191)

(assert (=> b!7902282 (= lt!2683762 (lemmaIsPrefixRefl!3932 input!1184 input!1184))))

(declare-fun b!7902283 () Bool)

(declare-fun res!3135315 () Bool)

(assert (=> b!7902283 (=> res!3135315 e!4664445)))

(declare-fun apply!14329 (TokenValueInjection!17116 BalanceConc!30642) TokenValue!8904)

(declare-fun seqFromList!6147 (List!74285) BalanceConc!30642)

(assert (=> b!7902283 (= res!3135315 (not (= (value!286739 (_1!38404 lt!2683763)) (apply!14329 (transformation!8588 (rule!11876 (_1!38404 lt!2683763))) (seqFromList!6147 (originalCharacters!8829 (_1!38404 lt!2683763)))))))))

(declare-fun e!4664438 () Bool)

(assert (=> b!7902284 (= e!4664438 (and tp!2354188 tp!2354186))))

(declare-fun b!7902285 () Bool)

(declare-fun res!3135317 () Bool)

(assert (=> b!7902285 (=> res!3135317 e!4664445)))

(declare-fun matchR!10644 (Regex!21291 List!74285) Bool)

(assert (=> b!7902285 (= res!3135317 (not (matchR!10644 (regex!8588 (rule!11876 (_1!38404 lt!2683763))) lt!2683761)))))

(declare-fun res!3135319 () Bool)

(assert (=> start!745492 (=> (not res!3135319) (not e!4664446))))

(assert (=> start!745492 (= res!3135319 ((_ is Lexer!8178) thiss!14377))))

(assert (=> start!745492 e!4664446))

(assert (=> start!745492 true))

(declare-fun e!4664441 () Bool)

(assert (=> start!745492 e!4664441))

(declare-fun e!4664440 () Bool)

(assert (=> start!745492 e!4664440))

(declare-fun b!7902286 () Bool)

(declare-fun res!3135320 () Bool)

(assert (=> b!7902286 (=> res!3135320 e!4664445)))

(declare-fun size!42973 (List!74285) Int)

(assert (=> b!7902286 (= res!3135320 (>= (size!42973 (_2!38404 lt!2683763)) (size!42973 input!1184)))))

(declare-fun b!7902287 () Bool)

(declare-fun tp_is_empty!52957 () Bool)

(declare-fun tp!2354187 () Bool)

(assert (=> b!7902287 (= e!4664440 (and tp_is_empty!52957 tp!2354187))))

(declare-fun b!7902288 () Bool)

(assert (=> b!7902288 (= e!4664444 e!4664445)))

(declare-fun res!3135318 () Bool)

(assert (=> b!7902288 (=> res!3135318 e!4664445)))

(assert (=> b!7902288 (= res!3135318 (not (= lt!2683761 (originalCharacters!8829 (_1!38404 lt!2683763)))))))

(declare-fun list!19215 (BalanceConc!30642) List!74285)

(declare-fun charsOf!5532 (Token!15596) BalanceConc!30642)

(assert (=> b!7902288 (= lt!2683761 (list!19215 (charsOf!5532 (_1!38404 lt!2683763))))))

(declare-fun get!26636 (Option!17870) tuple2!70202)

(assert (=> b!7902288 (= lt!2683763 (get!26636 lt!2683760))))

(declare-fun b!7902289 () Bool)

(assert (=> b!7902289 (= e!4664445 true)))

(declare-fun b!7902290 () Bool)

(declare-fun res!3135313 () Bool)

(assert (=> b!7902290 (=> (not res!3135313) (not e!4664446))))

(declare-fun rulesValidInductive!3399 (LexerInterface!8180 List!74286) Bool)

(assert (=> b!7902290 (= res!3135313 (rulesValidInductive!3399 thiss!14377 rulesArg!141))))

(declare-fun e!4664442 () Bool)

(declare-fun tp!2354190 () Bool)

(declare-fun b!7902291 () Bool)

(declare-fun inv!95152 (String!82942) Bool)

(declare-fun inv!95154 (TokenValueInjection!17116) Bool)

(assert (=> b!7902291 (= e!4664442 (and tp!2354190 (inv!95152 (tag!9452 (h!80610 rulesArg!141))) (inv!95154 (transformation!8588 (h!80610 rulesArg!141))) e!4664438))))

(declare-fun b!7902292 () Bool)

(declare-fun tp!2354189 () Bool)

(assert (=> b!7902292 (= e!4664441 (and e!4664442 tp!2354189))))

(assert (= (and start!745492 res!3135319) b!7902290))

(assert (= (and b!7902290 res!3135313) b!7902281))

(assert (= (and b!7902281 res!3135316) b!7902282))

(assert (= (and b!7902282 (not res!3135321)) b!7902278))

(assert (= (and b!7902278 (not res!3135323)) b!7902279))

(assert (= (and b!7902279 (not res!3135322)) b!7902277))

(assert (= (and b!7902277 (not res!3135314)) b!7902288))

(assert (= (and b!7902288 (not res!3135318)) b!7902286))

(assert (= (and b!7902286 (not res!3135320)) b!7902280))

(assert (= (and b!7902280 (not res!3135312)) b!7902283))

(assert (= (and b!7902283 (not res!3135315)) b!7902285))

(assert (= (and b!7902285 (not res!3135317)) b!7902289))

(assert (= b!7902291 b!7902284))

(assert (= b!7902292 b!7902291))

(assert (= (and start!745492 ((_ is Cons!74162) rulesArg!141)) b!7902292))

(assert (= (and start!745492 ((_ is Cons!74161) input!1184)) b!7902287))

(declare-fun m!8276998 () Bool)

(assert (=> b!7902283 m!8276998))

(assert (=> b!7902283 m!8276998))

(declare-fun m!8277000 () Bool)

(assert (=> b!7902283 m!8277000))

(declare-fun m!8277002 () Bool)

(assert (=> b!7902279 m!8277002))

(declare-fun m!8277004 () Bool)

(assert (=> b!7902278 m!8277004))

(declare-fun m!8277006 () Bool)

(assert (=> b!7902278 m!8277006))

(declare-fun m!8277008 () Bool)

(assert (=> b!7902291 m!8277008))

(declare-fun m!8277010 () Bool)

(assert (=> b!7902291 m!8277010))

(declare-fun m!8277012 () Bool)

(assert (=> b!7902290 m!8277012))

(declare-fun m!8277014 () Bool)

(assert (=> b!7902288 m!8277014))

(assert (=> b!7902288 m!8277014))

(declare-fun m!8277016 () Bool)

(assert (=> b!7902288 m!8277016))

(declare-fun m!8277018 () Bool)

(assert (=> b!7902288 m!8277018))

(declare-fun m!8277020 () Bool)

(assert (=> b!7902282 m!8277020))

(declare-fun m!8277022 () Bool)

(assert (=> b!7902282 m!8277022))

(declare-fun m!8277024 () Bool)

(assert (=> b!7902277 m!8277024))

(declare-fun m!8277026 () Bool)

(assert (=> b!7902281 m!8277026))

(declare-fun m!8277028 () Bool)

(assert (=> b!7902285 m!8277028))

(declare-fun m!8277030 () Bool)

(assert (=> b!7902286 m!8277030))

(declare-fun m!8277032 () Bool)

(assert (=> b!7902286 m!8277032))

(declare-fun m!8277034 () Bool)

(assert (=> b!7902280 m!8277034))

(check-sat b_and!352771 (not b!7902287) (not b_next!135533) (not b!7902291) (not b!7902292) (not b!7902278) (not b!7902282) (not b!7902290) (not b!7902285) (not b_next!135535) tp_is_empty!52957 (not b!7902279) (not b!7902286) (not b!7902277) (not b!7902280) b_and!352773 (not b!7902281) (not b!7902283) (not b!7902288))
(check-sat b_and!352773 b_and!352771 (not b_next!135535) (not b_next!135533))

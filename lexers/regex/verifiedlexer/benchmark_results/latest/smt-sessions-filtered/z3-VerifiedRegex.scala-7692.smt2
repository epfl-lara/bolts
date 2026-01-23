; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404742 () Bool)

(assert start!404742)

(declare-fun b!4231868 () Bool)

(declare-fun b_free!125007 () Bool)

(declare-fun b_next!125711 () Bool)

(assert (=> b!4231868 (= b_free!125007 (not b_next!125711))))

(declare-fun tp!1296273 () Bool)

(declare-fun b_and!334317 () Bool)

(assert (=> b!4231868 (= tp!1296273 b_and!334317)))

(declare-fun b_free!125009 () Bool)

(declare-fun b_next!125713 () Bool)

(assert (=> b!4231868 (= b_free!125009 (not b_next!125713))))

(declare-fun tp!1296270 () Bool)

(declare-fun b_and!334319 () Bool)

(assert (=> b!4231868 (= tp!1296270 b_and!334319)))

(declare-fun b!4231860 () Bool)

(declare-fun res!1740491 () Bool)

(declare-fun e!2627700 () Bool)

(assert (=> b!4231860 (=> (not res!1740491) (not e!2627700))))

(declare-datatypes ((LexerInterface!7491 0))(
  ( (LexerInterfaceExt!7488 (__x!28475 Int)) (Lexer!7489) )
))
(declare-fun thiss!26814 () LexerInterface!7491)

(declare-datatypes ((List!46856 0))(
  ( (Nil!46732) (Cons!46732 (h!52152 (_ BitVec 16)) (t!349527 List!46856)) )
))
(declare-datatypes ((TokenValue!8126 0))(
  ( (FloatLiteralValue!16252 (text!57327 List!46856)) (TokenValueExt!8125 (__x!28476 Int)) (Broken!40630 (value!245506 List!46856)) (Object!8249) (End!8126) (Def!8126) (Underscore!8126) (Match!8126) (Else!8126) (Error!8126) (Case!8126) (If!8126) (Extends!8126) (Abstract!8126) (Class!8126) (Val!8126) (DelimiterValue!16252 (del!8186 List!46856)) (KeywordValue!8132 (value!245507 List!46856)) (CommentValue!16252 (value!245508 List!46856)) (WhitespaceValue!16252 (value!245509 List!46856)) (IndentationValue!8126 (value!245510 List!46856)) (String!54503) (Int32!8126) (Broken!40631 (value!245511 List!46856)) (Boolean!8127) (Unit!65860) (OperatorValue!8129 (op!8186 List!46856)) (IdentifierValue!16252 (value!245512 List!46856)) (IdentifierValue!16253 (value!245513 List!46856)) (WhitespaceValue!16253 (value!245514 List!46856)) (True!16252) (False!16252) (Broken!40632 (value!245515 List!46856)) (Broken!40633 (value!245516 List!46856)) (True!16253) (RightBrace!8126) (RightBracket!8126) (Colon!8126) (Null!8126) (Comma!8126) (LeftBracket!8126) (False!16253) (LeftBrace!8126) (ImaginaryLiteralValue!8126 (text!57328 List!46856)) (StringLiteralValue!24378 (value!245517 List!46856)) (EOFValue!8126 (value!245518 List!46856)) (IdentValue!8126 (value!245519 List!46856)) (DelimiterValue!16253 (value!245520 List!46856)) (DedentValue!8126 (value!245521 List!46856)) (NewLineValue!8126 (value!245522 List!46856)) (IntegerValue!24378 (value!245523 (_ BitVec 32)) (text!57329 List!46856)) (IntegerValue!24379 (value!245524 Int) (text!57330 List!46856)) (Times!8126) (Or!8126) (Equal!8126) (Minus!8126) (Broken!40634 (value!245525 List!46856)) (And!8126) (Div!8126) (LessEqual!8126) (Mod!8126) (Concat!20927) (Not!8126) (Plus!8126) (SpaceValue!8126 (value!245526 List!46856)) (IntegerValue!24380 (value!245527 Int) (text!57331 List!46856)) (StringLiteralValue!24379 (text!57332 List!46856)) (FloatLiteralValue!16253 (text!57333 List!46856)) (BytesLiteralValue!8126 (value!245528 List!46856)) (CommentValue!16253 (value!245529 List!46856)) (StringLiteralValue!24380 (value!245530 List!46856)) (ErrorTokenValue!8126 (msg!8187 List!46856)) )
))
(declare-datatypes ((C!25800 0))(
  ( (C!25801 (val!15062 Int)) )
))
(declare-datatypes ((Regex!12801 0))(
  ( (ElementMatch!12801 (c!719238 C!25800)) (Concat!20928 (regOne!26114 Regex!12801) (regTwo!26114 Regex!12801)) (EmptyExpr!12801) (Star!12801 (reg!13130 Regex!12801)) (EmptyLang!12801) (Union!12801 (regOne!26115 Regex!12801) (regTwo!26115 Regex!12801)) )
))
(declare-datatypes ((String!54504 0))(
  ( (String!54505 (value!245531 String)) )
))
(declare-datatypes ((List!46857 0))(
  ( (Nil!46733) (Cons!46733 (h!52153 C!25800) (t!349528 List!46857)) )
))
(declare-datatypes ((IArray!28219 0))(
  ( (IArray!28220 (innerList!14167 List!46857)) )
))
(declare-datatypes ((Conc!14107 0))(
  ( (Node!14107 (left!34763 Conc!14107) (right!35093 Conc!14107) (csize!28444 Int) (cheight!14318 Int)) (Leaf!21800 (xs!17413 IArray!28219) (csize!28445 Int)) (Empty!14107) )
))
(declare-datatypes ((BalanceConc!27808 0))(
  ( (BalanceConc!27809 (c!719239 Conc!14107)) )
))
(declare-datatypes ((TokenValueInjection!15680 0))(
  ( (TokenValueInjection!15681 (toValue!10628 Int) (toChars!10487 Int)) )
))
(declare-datatypes ((Rule!15592 0))(
  ( (Rule!15593 (regex!7896 Regex!12801) (tag!8760 String!54504) (isSeparator!7896 Bool) (transformation!7896 TokenValueInjection!15680)) )
))
(declare-fun r!4353 () Rule!15592)

(declare-fun input!3600 () List!46857)

(declare-datatypes ((Token!14422 0))(
  ( (Token!14423 (value!245532 TokenValue!8126) (rule!11018 Rule!15592) (size!34254 Int) (originalCharacters!8242 List!46857)) )
))
(declare-datatypes ((tuple2!44358 0))(
  ( (tuple2!44359 (_1!25313 Token!14422) (_2!25313 List!46857)) )
))
(declare-datatypes ((Option!10042 0))(
  ( (None!10041) (Some!10041 (v!40969 tuple2!44358)) )
))
(declare-fun maxPrefixOneRule!3436 (LexerInterface!7491 Rule!15592 List!46857) Option!10042)

(assert (=> b!4231860 (= res!1740491 (= (maxPrefixOneRule!3436 thiss!26814 r!4353 input!3600) None!10041))))

(declare-fun b!4231861 () Bool)

(declare-fun res!1740487 () Bool)

(assert (=> b!4231861 (=> (not res!1740487) (not e!2627700))))

(declare-fun isPrefix!4711 (List!46857 List!46857) Bool)

(assert (=> b!4231861 (= res!1740487 (isPrefix!4711 Nil!46733 input!3600))))

(declare-fun b!4231862 () Bool)

(declare-fun res!1740492 () Bool)

(assert (=> b!4231862 (=> (not res!1740492) (not e!2627700))))

(declare-fun validRegex!5817 (Regex!12801) Bool)

(assert (=> b!4231862 (= res!1740492 (validRegex!5817 (regex!7896 r!4353)))))

(declare-fun e!2627694 () Bool)

(declare-fun b!4231863 () Bool)

(declare-fun lt!1504291 () Int)

(declare-datatypes ((tuple2!44360 0))(
  ( (tuple2!44361 (_1!25314 List!46857) (_2!25314 List!46857)) )
))
(declare-fun findLongestMatchInner!1698 (Regex!12801 List!46857 Int List!46857 List!46857 Int) tuple2!44360)

(declare-fun size!34255 (List!46857) Int)

(assert (=> b!4231863 (= e!2627694 (not (= (_1!25314 (findLongestMatchInner!1698 (regex!7896 r!4353) Nil!46733 lt!1504291 input!3600 input!3600 (size!34255 input!3600))) Nil!46733)))))

(declare-fun b!4231864 () Bool)

(declare-fun res!1740489 () Bool)

(assert (=> b!4231864 (=> (not res!1740489) (not e!2627700))))

(declare-fun ruleValid!3592 (LexerInterface!7491 Rule!15592) Bool)

(assert (=> b!4231864 (= res!1740489 (ruleValid!3592 thiss!26814 r!4353))))

(declare-fun b!4231865 () Bool)

(declare-fun res!1740488 () Bool)

(assert (=> b!4231865 (=> (not res!1740488) (not e!2627700))))

(declare-fun p!3018 () List!46857)

(assert (=> b!4231865 (= res!1740488 (isPrefix!4711 p!3018 input!3600))))

(declare-fun b!4231866 () Bool)

(declare-fun e!2627695 () Bool)

(declare-fun tp_is_empty!22537 () Bool)

(declare-fun tp!1296274 () Bool)

(assert (=> b!4231866 (= e!2627695 (and tp_is_empty!22537 tp!1296274))))

(declare-fun res!1740490 () Bool)

(assert (=> start!404742 (=> (not res!1740490) (not e!2627700))))

(get-info :version)

(assert (=> start!404742 (= res!1740490 ((_ is Lexer!7489) thiss!26814))))

(assert (=> start!404742 e!2627700))

(assert (=> start!404742 true))

(declare-fun e!2627696 () Bool)

(assert (=> start!404742 e!2627696))

(assert (=> start!404742 e!2627695))

(declare-fun e!2627699 () Bool)

(assert (=> start!404742 e!2627699))

(declare-fun b!4231867 () Bool)

(declare-fun tp!1296271 () Bool)

(assert (=> b!4231867 (= e!2627696 (and tp_is_empty!22537 tp!1296271))))

(declare-fun e!2627697 () Bool)

(assert (=> b!4231868 (= e!2627697 (and tp!1296273 tp!1296270))))

(declare-fun tp!1296272 () Bool)

(declare-fun b!4231869 () Bool)

(declare-fun inv!61436 (String!54504) Bool)

(declare-fun inv!61438 (TokenValueInjection!15680) Bool)

(assert (=> b!4231869 (= e!2627699 (and tp!1296272 (inv!61436 (tag!8760 r!4353)) (inv!61438 (transformation!7896 r!4353)) e!2627697))))

(declare-fun b!4231870 () Bool)

(assert (=> b!4231870 (= e!2627700 e!2627694)))

(declare-fun res!1740486 () Bool)

(assert (=> b!4231870 (=> (not res!1740486) (not e!2627694))))

(declare-fun lt!1504292 () Int)

(assert (=> b!4231870 (= res!1740486 (>= lt!1504292 lt!1504291))))

(assert (=> b!4231870 (= lt!1504291 (size!34255 Nil!46733))))

(assert (=> b!4231870 (= lt!1504292 (size!34255 p!3018))))

(assert (= (and start!404742 res!1740490) b!4231865))

(assert (= (and b!4231865 res!1740488) b!4231864))

(assert (= (and b!4231864 res!1740489) b!4231860))

(assert (= (and b!4231860 res!1740491) b!4231862))

(assert (= (and b!4231862 res!1740492) b!4231861))

(assert (= (and b!4231861 res!1740487) b!4231870))

(assert (= (and b!4231870 res!1740486) b!4231863))

(assert (= (and start!404742 ((_ is Cons!46733) p!3018)) b!4231867))

(assert (= (and start!404742 ((_ is Cons!46733) input!3600)) b!4231866))

(assert (= b!4231869 b!4231868))

(assert (= start!404742 b!4231869))

(declare-fun m!4818141 () Bool)

(assert (=> b!4231862 m!4818141))

(declare-fun m!4818143 () Bool)

(assert (=> b!4231870 m!4818143))

(declare-fun m!4818145 () Bool)

(assert (=> b!4231870 m!4818145))

(declare-fun m!4818147 () Bool)

(assert (=> b!4231865 m!4818147))

(declare-fun m!4818149 () Bool)

(assert (=> b!4231861 m!4818149))

(declare-fun m!4818151 () Bool)

(assert (=> b!4231869 m!4818151))

(declare-fun m!4818153 () Bool)

(assert (=> b!4231869 m!4818153))

(declare-fun m!4818155 () Bool)

(assert (=> b!4231863 m!4818155))

(assert (=> b!4231863 m!4818155))

(declare-fun m!4818157 () Bool)

(assert (=> b!4231863 m!4818157))

(declare-fun m!4818159 () Bool)

(assert (=> b!4231864 m!4818159))

(declare-fun m!4818161 () Bool)

(assert (=> b!4231860 m!4818161))

(check-sat (not b_next!125711) (not b!4231860) (not b!4231865) b_and!334319 (not b!4231864) (not b!4231867) (not b!4231870) (not b!4231861) (not b!4231862) b_and!334317 tp_is_empty!22537 (not b_next!125713) (not b!4231863) (not b!4231866) (not b!4231869))
(check-sat b_and!334317 b_and!334319 (not b_next!125713) (not b_next!125711))
(get-model)

(declare-fun d!1245203 () Bool)

(declare-fun res!1740510 () Bool)

(declare-fun e!2627721 () Bool)

(assert (=> d!1245203 (=> res!1740510 e!2627721)))

(assert (=> d!1245203 (= res!1740510 ((_ is ElementMatch!12801) (regex!7896 r!4353)))))

(assert (=> d!1245203 (= (validRegex!5817 (regex!7896 r!4353)) e!2627721)))

(declare-fun b!4231889 () Bool)

(declare-fun e!2627718 () Bool)

(declare-fun call!293489 () Bool)

(assert (=> b!4231889 (= e!2627718 call!293489)))

(declare-fun call!293491 () Bool)

(declare-fun c!719245 () Bool)

(declare-fun c!719244 () Bool)

(declare-fun bm!293484 () Bool)

(assert (=> bm!293484 (= call!293491 (validRegex!5817 (ite c!719245 (reg!13130 (regex!7896 r!4353)) (ite c!719244 (regOne!26115 (regex!7896 r!4353)) (regTwo!26114 (regex!7896 r!4353))))))))

(declare-fun b!4231890 () Bool)

(declare-fun res!1740509 () Bool)

(declare-fun e!2627719 () Bool)

(assert (=> b!4231890 (=> res!1740509 e!2627719)))

(assert (=> b!4231890 (= res!1740509 (not ((_ is Concat!20928) (regex!7896 r!4353))))))

(declare-fun e!2627716 () Bool)

(assert (=> b!4231890 (= e!2627716 e!2627719)))

(declare-fun b!4231891 () Bool)

(declare-fun e!2627717 () Bool)

(assert (=> b!4231891 (= e!2627717 e!2627716)))

(assert (=> b!4231891 (= c!719244 ((_ is Union!12801) (regex!7896 r!4353)))))

(declare-fun b!4231892 () Bool)

(declare-fun res!1740507 () Bool)

(assert (=> b!4231892 (=> (not res!1740507) (not e!2627718))))

(declare-fun call!293490 () Bool)

(assert (=> b!4231892 (= res!1740507 call!293490)))

(assert (=> b!4231892 (= e!2627716 e!2627718)))

(declare-fun b!4231893 () Bool)

(declare-fun e!2627720 () Bool)

(assert (=> b!4231893 (= e!2627719 e!2627720)))

(declare-fun res!1740508 () Bool)

(assert (=> b!4231893 (=> (not res!1740508) (not e!2627720))))

(assert (=> b!4231893 (= res!1740508 call!293489)))

(declare-fun b!4231894 () Bool)

(assert (=> b!4231894 (= e!2627721 e!2627717)))

(assert (=> b!4231894 (= c!719245 ((_ is Star!12801) (regex!7896 r!4353)))))

(declare-fun bm!293485 () Bool)

(assert (=> bm!293485 (= call!293490 call!293491)))

(declare-fun bm!293486 () Bool)

(assert (=> bm!293486 (= call!293489 (validRegex!5817 (ite c!719244 (regTwo!26115 (regex!7896 r!4353)) (regOne!26114 (regex!7896 r!4353)))))))

(declare-fun b!4231895 () Bool)

(declare-fun e!2627715 () Bool)

(assert (=> b!4231895 (= e!2627715 call!293491)))

(declare-fun b!4231896 () Bool)

(assert (=> b!4231896 (= e!2627720 call!293490)))

(declare-fun b!4231897 () Bool)

(assert (=> b!4231897 (= e!2627717 e!2627715)))

(declare-fun res!1740511 () Bool)

(declare-fun nullable!4510 (Regex!12801) Bool)

(assert (=> b!4231897 (= res!1740511 (not (nullable!4510 (reg!13130 (regex!7896 r!4353)))))))

(assert (=> b!4231897 (=> (not res!1740511) (not e!2627715))))

(assert (= (and d!1245203 (not res!1740510)) b!4231894))

(assert (= (and b!4231894 c!719245) b!4231897))

(assert (= (and b!4231894 (not c!719245)) b!4231891))

(assert (= (and b!4231897 res!1740511) b!4231895))

(assert (= (and b!4231891 c!719244) b!4231892))

(assert (= (and b!4231891 (not c!719244)) b!4231890))

(assert (= (and b!4231892 res!1740507) b!4231889))

(assert (= (and b!4231890 (not res!1740509)) b!4231893))

(assert (= (and b!4231893 res!1740508) b!4231896))

(assert (= (or b!4231889 b!4231893) bm!293486))

(assert (= (or b!4231892 b!4231896) bm!293485))

(assert (= (or b!4231895 bm!293485) bm!293484))

(declare-fun m!4818163 () Bool)

(assert (=> bm!293484 m!4818163))

(declare-fun m!4818165 () Bool)

(assert (=> bm!293486 m!4818165))

(declare-fun m!4818167 () Bool)

(assert (=> b!4231897 m!4818167))

(assert (=> b!4231862 d!1245203))

(declare-fun b!4232048 () Bool)

(declare-fun e!2627814 () tuple2!44360)

(assert (=> b!4232048 (= e!2627814 (tuple2!44361 Nil!46733 input!3600))))

(declare-fun b!4232049 () Bool)

(declare-datatypes ((Unit!65866 0))(
  ( (Unit!65867) )
))
(declare-fun e!2627812 () Unit!65866)

(declare-fun Unit!65868 () Unit!65866)

(assert (=> b!4232049 (= e!2627812 Unit!65868)))

(declare-fun b!4232050 () Bool)

(declare-fun e!2627813 () tuple2!44360)

(assert (=> b!4232050 (= e!2627813 (tuple2!44361 Nil!46733 input!3600))))

(declare-fun b!4232051 () Bool)

(declare-fun c!719290 () Bool)

(declare-fun call!293545 () Bool)

(assert (=> b!4232051 (= c!719290 call!293545)))

(declare-fun lt!1504479 () Unit!65866)

(declare-fun lt!1504472 () Unit!65866)

(assert (=> b!4232051 (= lt!1504479 lt!1504472)))

(assert (=> b!4232051 (= input!3600 Nil!46733)))

(declare-fun call!293541 () Unit!65866)

(assert (=> b!4232051 (= lt!1504472 call!293541)))

(declare-fun lt!1504476 () Unit!65866)

(declare-fun lt!1504471 () Unit!65866)

(assert (=> b!4232051 (= lt!1504476 lt!1504471)))

(declare-fun call!293542 () Bool)

(assert (=> b!4232051 call!293542))

(declare-fun call!293540 () Unit!65866)

(assert (=> b!4232051 (= lt!1504471 call!293540)))

(declare-fun e!2627817 () tuple2!44360)

(declare-fun e!2627816 () tuple2!44360)

(assert (=> b!4232051 (= e!2627817 e!2627816)))

(declare-fun b!4232052 () Bool)

(assert (=> b!4232052 (= e!2627816 (tuple2!44361 Nil!46733 input!3600))))

(declare-fun b!4232053 () Bool)

(declare-fun c!719294 () Bool)

(assert (=> b!4232053 (= c!719294 call!293545)))

(declare-fun lt!1504464 () Unit!65866)

(declare-fun lt!1504480 () Unit!65866)

(assert (=> b!4232053 (= lt!1504464 lt!1504480)))

(declare-fun lt!1504457 () C!25800)

(declare-fun lt!1504460 () List!46857)

(declare-fun ++!11917 (List!46857 List!46857) List!46857)

(assert (=> b!4232053 (= (++!11917 (++!11917 Nil!46733 (Cons!46733 lt!1504457 Nil!46733)) lt!1504460) input!3600)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1307 (List!46857 C!25800 List!46857 List!46857) Unit!65866)

(assert (=> b!4232053 (= lt!1504480 (lemmaMoveElementToOtherListKeepsConcatEq!1307 Nil!46733 lt!1504457 lt!1504460 input!3600))))

(declare-fun tail!6820 (List!46857) List!46857)

(assert (=> b!4232053 (= lt!1504460 (tail!6820 input!3600))))

(declare-fun head!8973 (List!46857) C!25800)

(assert (=> b!4232053 (= lt!1504457 (head!8973 input!3600))))

(declare-fun lt!1504482 () Unit!65866)

(declare-fun lt!1504478 () Unit!65866)

(assert (=> b!4232053 (= lt!1504482 lt!1504478)))

(declare-fun getSuffix!2864 (List!46857 List!46857) List!46857)

(assert (=> b!4232053 (isPrefix!4711 (++!11917 Nil!46733 (Cons!46733 (head!8973 (getSuffix!2864 input!3600 Nil!46733)) Nil!46733)) input!3600)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!689 (List!46857 List!46857) Unit!65866)

(assert (=> b!4232053 (= lt!1504478 (lemmaAddHeadSuffixToPrefixStillPrefix!689 Nil!46733 input!3600))))

(declare-fun lt!1504466 () Unit!65866)

(declare-fun lt!1504481 () Unit!65866)

(assert (=> b!4232053 (= lt!1504466 lt!1504481)))

(assert (=> b!4232053 (= lt!1504481 (lemmaAddHeadSuffixToPrefixStillPrefix!689 Nil!46733 input!3600))))

(declare-fun lt!1504462 () List!46857)

(assert (=> b!4232053 (= lt!1504462 (++!11917 Nil!46733 (Cons!46733 (head!8973 input!3600) Nil!46733)))))

(declare-fun lt!1504461 () Unit!65866)

(assert (=> b!4232053 (= lt!1504461 e!2627812)))

(declare-fun c!719289 () Bool)

(assert (=> b!4232053 (= c!719289 (= (size!34255 Nil!46733) (size!34255 input!3600)))))

(declare-fun lt!1504468 () Unit!65866)

(declare-fun lt!1504465 () Unit!65866)

(assert (=> b!4232053 (= lt!1504468 lt!1504465)))

(assert (=> b!4232053 (<= (size!34255 Nil!46733) (size!34255 input!3600))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!601 (List!46857 List!46857) Unit!65866)

(assert (=> b!4232053 (= lt!1504465 (lemmaIsPrefixThenSmallerEqSize!601 Nil!46733 input!3600))))

(declare-fun e!2627811 () tuple2!44360)

(assert (=> b!4232053 (= e!2627817 e!2627811)))

(declare-fun b!4232054 () Bool)

(declare-fun e!2627815 () Bool)

(declare-fun lt!1504484 () tuple2!44360)

(assert (=> b!4232054 (= e!2627815 (>= (size!34255 (_1!25314 lt!1504484)) (size!34255 Nil!46733)))))

(declare-fun bm!293533 () Bool)

(declare-fun lemmaIsPrefixRefl!3108 (List!46857 List!46857) Unit!65866)

(assert (=> bm!293533 (= call!293540 (lemmaIsPrefixRefl!3108 input!3600 input!3600))))

(declare-fun bm!293535 () Bool)

(assert (=> bm!293535 (= call!293545 (nullable!4510 (regex!7896 r!4353)))))

(declare-fun bm!293536 () Bool)

(declare-fun call!293539 () List!46857)

(assert (=> bm!293536 (= call!293539 (tail!6820 input!3600))))

(declare-fun bm!293537 () Bool)

(declare-fun call!293544 () C!25800)

(assert (=> bm!293537 (= call!293544 (head!8973 input!3600))))

(declare-fun b!4232055 () Bool)

(declare-fun lt!1504475 () tuple2!44360)

(assert (=> b!4232055 (= e!2627813 lt!1504475)))

(declare-fun b!4232056 () Bool)

(assert (=> b!4232056 (= e!2627816 (tuple2!44361 Nil!46733 Nil!46733))))

(declare-fun bm!293538 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1035 (List!46857 List!46857 List!46857) Unit!65866)

(assert (=> bm!293538 (= call!293541 (lemmaIsPrefixSameLengthThenSameList!1035 input!3600 Nil!46733 input!3600))))

(declare-fun b!4232057 () Bool)

(declare-fun call!293538 () tuple2!44360)

(assert (=> b!4232057 (= e!2627811 call!293538)))

(declare-fun b!4232058 () Bool)

(assert (=> b!4232058 (= e!2627811 e!2627813)))

(assert (=> b!4232058 (= lt!1504475 call!293538)))

(declare-fun c!719291 () Bool)

(declare-fun isEmpty!27622 (List!46857) Bool)

(assert (=> b!4232058 (= c!719291 (isEmpty!27622 (_1!25314 lt!1504475)))))

(declare-fun bm!293539 () Bool)

(assert (=> bm!293539 (= call!293542 (isPrefix!4711 input!3600 input!3600))))

(declare-fun b!4232059 () Bool)

(declare-fun Unit!65869 () Unit!65866)

(assert (=> b!4232059 (= e!2627812 Unit!65869)))

(declare-fun lt!1504477 () Unit!65866)

(assert (=> b!4232059 (= lt!1504477 call!293540)))

(assert (=> b!4232059 call!293542))

(declare-fun lt!1504483 () Unit!65866)

(assert (=> b!4232059 (= lt!1504483 lt!1504477)))

(declare-fun lt!1504469 () Unit!65866)

(assert (=> b!4232059 (= lt!1504469 call!293541)))

(assert (=> b!4232059 (= input!3600 Nil!46733)))

(declare-fun lt!1504463 () Unit!65866)

(assert (=> b!4232059 (= lt!1504463 lt!1504469)))

(assert (=> b!4232059 false))

(declare-fun bm!293540 () Bool)

(declare-fun call!293543 () Regex!12801)

(declare-fun derivativeStep!3843 (Regex!12801 C!25800) Regex!12801)

(assert (=> bm!293540 (= call!293543 (derivativeStep!3843 (regex!7896 r!4353) call!293544))))

(declare-fun bm!293534 () Bool)

(assert (=> bm!293534 (= call!293538 (findLongestMatchInner!1698 call!293543 lt!1504462 (+ lt!1504291 1) call!293539 input!3600 (size!34255 input!3600)))))

(declare-fun d!1245205 () Bool)

(declare-fun e!2627818 () Bool)

(assert (=> d!1245205 e!2627818))

(declare-fun res!1740579 () Bool)

(assert (=> d!1245205 (=> (not res!1740579) (not e!2627818))))

(assert (=> d!1245205 (= res!1740579 (= (++!11917 (_1!25314 lt!1504484) (_2!25314 lt!1504484)) input!3600))))

(assert (=> d!1245205 (= lt!1504484 e!2627814)))

(declare-fun c!719292 () Bool)

(declare-fun lostCause!1063 (Regex!12801) Bool)

(assert (=> d!1245205 (= c!719292 (lostCause!1063 (regex!7896 r!4353)))))

(declare-fun lt!1504458 () Unit!65866)

(declare-fun Unit!65870 () Unit!65866)

(assert (=> d!1245205 (= lt!1504458 Unit!65870)))

(assert (=> d!1245205 (= (getSuffix!2864 input!3600 Nil!46733) input!3600)))

(declare-fun lt!1504467 () Unit!65866)

(declare-fun lt!1504474 () Unit!65866)

(assert (=> d!1245205 (= lt!1504467 lt!1504474)))

(declare-fun lt!1504459 () List!46857)

(assert (=> d!1245205 (= input!3600 lt!1504459)))

(declare-fun lemmaSamePrefixThenSameSuffix!2280 (List!46857 List!46857 List!46857 List!46857 List!46857) Unit!65866)

(assert (=> d!1245205 (= lt!1504474 (lemmaSamePrefixThenSameSuffix!2280 Nil!46733 input!3600 Nil!46733 lt!1504459 input!3600))))

(assert (=> d!1245205 (= lt!1504459 (getSuffix!2864 input!3600 Nil!46733))))

(declare-fun lt!1504473 () Unit!65866)

(declare-fun lt!1504470 () Unit!65866)

(assert (=> d!1245205 (= lt!1504473 lt!1504470)))

(assert (=> d!1245205 (isPrefix!4711 Nil!46733 (++!11917 Nil!46733 input!3600))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3100 (List!46857 List!46857) Unit!65866)

(assert (=> d!1245205 (= lt!1504470 (lemmaConcatTwoListThenFirstIsPrefix!3100 Nil!46733 input!3600))))

(assert (=> d!1245205 (validRegex!5817 (regex!7896 r!4353))))

(assert (=> d!1245205 (= (findLongestMatchInner!1698 (regex!7896 r!4353) Nil!46733 lt!1504291 input!3600 input!3600 (size!34255 input!3600)) lt!1504484)))

(declare-fun b!4232060 () Bool)

(assert (=> b!4232060 (= e!2627814 e!2627817)))

(declare-fun c!719293 () Bool)

(assert (=> b!4232060 (= c!719293 (= lt!1504291 (size!34255 input!3600)))))

(declare-fun b!4232061 () Bool)

(assert (=> b!4232061 (= e!2627818 e!2627815)))

(declare-fun res!1740578 () Bool)

(assert (=> b!4232061 (=> res!1740578 e!2627815)))

(assert (=> b!4232061 (= res!1740578 (isEmpty!27622 (_1!25314 lt!1504484)))))

(assert (= (and d!1245205 c!719292) b!4232048))

(assert (= (and d!1245205 (not c!719292)) b!4232060))

(assert (= (and b!4232060 c!719293) b!4232051))

(assert (= (and b!4232060 (not c!719293)) b!4232053))

(assert (= (and b!4232051 c!719290) b!4232056))

(assert (= (and b!4232051 (not c!719290)) b!4232052))

(assert (= (and b!4232053 c!719289) b!4232059))

(assert (= (and b!4232053 (not c!719289)) b!4232049))

(assert (= (and b!4232053 c!719294) b!4232058))

(assert (= (and b!4232053 (not c!719294)) b!4232057))

(assert (= (and b!4232058 c!719291) b!4232050))

(assert (= (and b!4232058 (not c!719291)) b!4232055))

(assert (= (or b!4232058 b!4232057) bm!293537))

(assert (= (or b!4232058 b!4232057) bm!293536))

(assert (= (or b!4232058 b!4232057) bm!293540))

(assert (= (or b!4232058 b!4232057) bm!293534))

(assert (= (or b!4232051 b!4232059) bm!293538))

(assert (= (or b!4232051 b!4232059) bm!293533))

(assert (= (or b!4232051 b!4232059) bm!293539))

(assert (= (or b!4232051 b!4232053) bm!293535))

(assert (= (and d!1245205 res!1740579) b!4232061))

(assert (= (and b!4232061 (not res!1740578)) b!4232054))

(declare-fun m!4818291 () Bool)

(assert (=> d!1245205 m!4818291))

(declare-fun m!4818293 () Bool)

(assert (=> d!1245205 m!4818293))

(declare-fun m!4818295 () Bool)

(assert (=> d!1245205 m!4818295))

(declare-fun m!4818297 () Bool)

(assert (=> d!1245205 m!4818297))

(assert (=> d!1245205 m!4818141))

(declare-fun m!4818299 () Bool)

(assert (=> d!1245205 m!4818299))

(assert (=> d!1245205 m!4818295))

(declare-fun m!4818301 () Bool)

(assert (=> d!1245205 m!4818301))

(declare-fun m!4818303 () Bool)

(assert (=> d!1245205 m!4818303))

(declare-fun m!4818305 () Bool)

(assert (=> b!4232054 m!4818305))

(assert (=> b!4232054 m!4818143))

(declare-fun m!4818307 () Bool)

(assert (=> bm!293536 m!4818307))

(declare-fun m!4818309 () Bool)

(assert (=> bm!293539 m!4818309))

(declare-fun m!4818311 () Bool)

(assert (=> b!4232061 m!4818311))

(declare-fun m!4818313 () Bool)

(assert (=> bm!293537 m!4818313))

(declare-fun m!4818315 () Bool)

(assert (=> bm!293540 m!4818315))

(declare-fun m!4818317 () Bool)

(assert (=> bm!293533 m!4818317))

(assert (=> bm!293534 m!4818155))

(declare-fun m!4818319 () Bool)

(assert (=> bm!293534 m!4818319))

(declare-fun m!4818321 () Bool)

(assert (=> bm!293538 m!4818321))

(assert (=> b!4232053 m!4818155))

(assert (=> b!4232053 m!4818143))

(declare-fun m!4818323 () Bool)

(assert (=> b!4232053 m!4818323))

(assert (=> b!4232053 m!4818307))

(declare-fun m!4818325 () Bool)

(assert (=> b!4232053 m!4818325))

(assert (=> b!4232053 m!4818313))

(assert (=> b!4232053 m!4818299))

(assert (=> b!4232053 m!4818323))

(declare-fun m!4818327 () Bool)

(assert (=> b!4232053 m!4818327))

(declare-fun m!4818329 () Bool)

(assert (=> b!4232053 m!4818329))

(declare-fun m!4818331 () Bool)

(assert (=> b!4232053 m!4818331))

(assert (=> b!4232053 m!4818329))

(declare-fun m!4818333 () Bool)

(assert (=> b!4232053 m!4818333))

(declare-fun m!4818335 () Bool)

(assert (=> b!4232053 m!4818335))

(assert (=> b!4232053 m!4818299))

(declare-fun m!4818337 () Bool)

(assert (=> b!4232053 m!4818337))

(declare-fun m!4818339 () Bool)

(assert (=> b!4232053 m!4818339))

(declare-fun m!4818341 () Bool)

(assert (=> b!4232058 m!4818341))

(declare-fun m!4818343 () Bool)

(assert (=> bm!293535 m!4818343))

(assert (=> b!4231863 d!1245205))

(declare-fun d!1245227 () Bool)

(declare-fun lt!1504487 () Int)

(assert (=> d!1245227 (>= lt!1504487 0)))

(declare-fun e!2627835 () Int)

(assert (=> d!1245227 (= lt!1504487 e!2627835)))

(declare-fun c!719299 () Bool)

(assert (=> d!1245227 (= c!719299 ((_ is Nil!46733) input!3600))))

(assert (=> d!1245227 (= (size!34255 input!3600) lt!1504487)))

(declare-fun b!4232095 () Bool)

(assert (=> b!4232095 (= e!2627835 0)))

(declare-fun b!4232096 () Bool)

(assert (=> b!4232096 (= e!2627835 (+ 1 (size!34255 (t!349528 input!3600))))))

(assert (= (and d!1245227 c!719299) b!4232095))

(assert (= (and d!1245227 (not c!719299)) b!4232096))

(declare-fun m!4818345 () Bool)

(assert (=> b!4232096 m!4818345))

(assert (=> b!4231863 d!1245227))

(declare-fun d!1245229 () Bool)

(assert (=> d!1245229 (= (inv!61436 (tag!8760 r!4353)) (= (mod (str.len (value!245531 (tag!8760 r!4353))) 2) 0))))

(assert (=> b!4231869 d!1245229))

(declare-fun d!1245231 () Bool)

(declare-fun res!1740587 () Bool)

(declare-fun e!2627838 () Bool)

(assert (=> d!1245231 (=> (not res!1740587) (not e!2627838))))

(declare-fun semiInverseModEq!3435 (Int Int) Bool)

(assert (=> d!1245231 (= res!1740587 (semiInverseModEq!3435 (toChars!10487 (transformation!7896 r!4353)) (toValue!10628 (transformation!7896 r!4353))))))

(assert (=> d!1245231 (= (inv!61438 (transformation!7896 r!4353)) e!2627838)))

(declare-fun b!4232099 () Bool)

(declare-fun equivClasses!3334 (Int Int) Bool)

(assert (=> b!4232099 (= e!2627838 (equivClasses!3334 (toChars!10487 (transformation!7896 r!4353)) (toValue!10628 (transformation!7896 r!4353))))))

(assert (= (and d!1245231 res!1740587) b!4232099))

(declare-fun m!4818347 () Bool)

(assert (=> d!1245231 m!4818347))

(declare-fun m!4818349 () Bool)

(assert (=> b!4232099 m!4818349))

(assert (=> b!4231869 d!1245231))

(declare-fun d!1245233 () Bool)

(declare-fun res!1740592 () Bool)

(declare-fun e!2627841 () Bool)

(assert (=> d!1245233 (=> (not res!1740592) (not e!2627841))))

(assert (=> d!1245233 (= res!1740592 (validRegex!5817 (regex!7896 r!4353)))))

(assert (=> d!1245233 (= (ruleValid!3592 thiss!26814 r!4353) e!2627841)))

(declare-fun b!4232104 () Bool)

(declare-fun res!1740593 () Bool)

(assert (=> b!4232104 (=> (not res!1740593) (not e!2627841))))

(assert (=> b!4232104 (= res!1740593 (not (nullable!4510 (regex!7896 r!4353))))))

(declare-fun b!4232105 () Bool)

(assert (=> b!4232105 (= e!2627841 (not (= (tag!8760 r!4353) (String!54505 ""))))))

(assert (= (and d!1245233 res!1740592) b!4232104))

(assert (= (and b!4232104 res!1740593) b!4232105))

(assert (=> d!1245233 m!4818141))

(assert (=> b!4232104 m!4818343))

(assert (=> b!4231864 d!1245233))

(declare-fun d!1245235 () Bool)

(declare-fun lt!1504488 () Int)

(assert (=> d!1245235 (>= lt!1504488 0)))

(declare-fun e!2627842 () Int)

(assert (=> d!1245235 (= lt!1504488 e!2627842)))

(declare-fun c!719300 () Bool)

(assert (=> d!1245235 (= c!719300 ((_ is Nil!46733) Nil!46733))))

(assert (=> d!1245235 (= (size!34255 Nil!46733) lt!1504488)))

(declare-fun b!4232106 () Bool)

(assert (=> b!4232106 (= e!2627842 0)))

(declare-fun b!4232107 () Bool)

(assert (=> b!4232107 (= e!2627842 (+ 1 (size!34255 (t!349528 Nil!46733))))))

(assert (= (and d!1245235 c!719300) b!4232106))

(assert (= (and d!1245235 (not c!719300)) b!4232107))

(declare-fun m!4818351 () Bool)

(assert (=> b!4232107 m!4818351))

(assert (=> b!4231870 d!1245235))

(declare-fun d!1245237 () Bool)

(declare-fun lt!1504489 () Int)

(assert (=> d!1245237 (>= lt!1504489 0)))

(declare-fun e!2627843 () Int)

(assert (=> d!1245237 (= lt!1504489 e!2627843)))

(declare-fun c!719301 () Bool)

(assert (=> d!1245237 (= c!719301 ((_ is Nil!46733) p!3018))))

(assert (=> d!1245237 (= (size!34255 p!3018) lt!1504489)))

(declare-fun b!4232108 () Bool)

(assert (=> b!4232108 (= e!2627843 0)))

(declare-fun b!4232109 () Bool)

(assert (=> b!4232109 (= e!2627843 (+ 1 (size!34255 (t!349528 p!3018))))))

(assert (= (and d!1245237 c!719301) b!4232108))

(assert (= (and d!1245237 (not c!719301)) b!4232109))

(declare-fun m!4818353 () Bool)

(assert (=> b!4232109 m!4818353))

(assert (=> b!4231870 d!1245237))

(declare-fun b!4232120 () Bool)

(declare-fun e!2627851 () Bool)

(assert (=> b!4232120 (= e!2627851 (isPrefix!4711 (tail!6820 p!3018) (tail!6820 input!3600)))))

(declare-fun b!4232118 () Bool)

(declare-fun e!2627852 () Bool)

(assert (=> b!4232118 (= e!2627852 e!2627851)))

(declare-fun res!1740603 () Bool)

(assert (=> b!4232118 (=> (not res!1740603) (not e!2627851))))

(assert (=> b!4232118 (= res!1740603 (not ((_ is Nil!46733) input!3600)))))

(declare-fun b!4232119 () Bool)

(declare-fun res!1740605 () Bool)

(assert (=> b!4232119 (=> (not res!1740605) (not e!2627851))))

(assert (=> b!4232119 (= res!1740605 (= (head!8973 p!3018) (head!8973 input!3600)))))

(declare-fun b!4232121 () Bool)

(declare-fun e!2627850 () Bool)

(assert (=> b!4232121 (= e!2627850 (>= (size!34255 input!3600) (size!34255 p!3018)))))

(declare-fun d!1245239 () Bool)

(assert (=> d!1245239 e!2627850))

(declare-fun res!1740604 () Bool)

(assert (=> d!1245239 (=> res!1740604 e!2627850)))

(declare-fun lt!1504492 () Bool)

(assert (=> d!1245239 (= res!1740604 (not lt!1504492))))

(assert (=> d!1245239 (= lt!1504492 e!2627852)))

(declare-fun res!1740602 () Bool)

(assert (=> d!1245239 (=> res!1740602 e!2627852)))

(assert (=> d!1245239 (= res!1740602 ((_ is Nil!46733) p!3018))))

(assert (=> d!1245239 (= (isPrefix!4711 p!3018 input!3600) lt!1504492)))

(assert (= (and d!1245239 (not res!1740602)) b!4232118))

(assert (= (and b!4232118 res!1740603) b!4232119))

(assert (= (and b!4232119 res!1740605) b!4232120))

(assert (= (and d!1245239 (not res!1740604)) b!4232121))

(declare-fun m!4818355 () Bool)

(assert (=> b!4232120 m!4818355))

(assert (=> b!4232120 m!4818307))

(assert (=> b!4232120 m!4818355))

(assert (=> b!4232120 m!4818307))

(declare-fun m!4818357 () Bool)

(assert (=> b!4232120 m!4818357))

(declare-fun m!4818359 () Bool)

(assert (=> b!4232119 m!4818359))

(assert (=> b!4232119 m!4818313))

(assert (=> b!4232121 m!4818155))

(assert (=> b!4232121 m!4818145))

(assert (=> b!4231865 d!1245239))

(declare-fun b!4232140 () Bool)

(declare-fun res!1740624 () Bool)

(declare-fun e!2627864 () Bool)

(assert (=> b!4232140 (=> (not res!1740624) (not e!2627864))))

(declare-fun lt!1504503 () Option!10042)

(declare-fun get!15202 (Option!10042) tuple2!44358)

(assert (=> b!4232140 (= res!1740624 (= (rule!11018 (_1!25313 (get!15202 lt!1504503))) r!4353))))

(declare-fun b!4232141 () Bool)

(declare-fun e!2627863 () Option!10042)

(declare-fun lt!1504506 () tuple2!44360)

(declare-fun apply!10738 (TokenValueInjection!15680 BalanceConc!27808) TokenValue!8126)

(declare-fun seqFromList!5798 (List!46857) BalanceConc!27808)

(declare-fun size!34257 (BalanceConc!27808) Int)

(assert (=> b!4232141 (= e!2627863 (Some!10041 (tuple2!44359 (Token!14423 (apply!10738 (transformation!7896 r!4353) (seqFromList!5798 (_1!25314 lt!1504506))) r!4353 (size!34257 (seqFromList!5798 (_1!25314 lt!1504506))) (_1!25314 lt!1504506)) (_2!25314 lt!1504506))))))

(declare-fun lt!1504504 () Unit!65866)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1661 (Regex!12801 List!46857) Unit!65866)

(assert (=> b!4232141 (= lt!1504504 (longestMatchIsAcceptedByMatchOrIsEmpty!1661 (regex!7896 r!4353) input!3600))))

(declare-fun res!1740623 () Bool)

(assert (=> b!4232141 (= res!1740623 (isEmpty!27622 (_1!25314 (findLongestMatchInner!1698 (regex!7896 r!4353) Nil!46733 (size!34255 Nil!46733) input!3600 input!3600 (size!34255 input!3600)))))))

(declare-fun e!2627862 () Bool)

(assert (=> b!4232141 (=> res!1740623 e!2627862)))

(assert (=> b!4232141 e!2627862))

(declare-fun lt!1504505 () Unit!65866)

(assert (=> b!4232141 (= lt!1504505 lt!1504504)))

(declare-fun lt!1504507 () Unit!65866)

(declare-fun lemmaSemiInverse!2529 (TokenValueInjection!15680 BalanceConc!27808) Unit!65866)

(assert (=> b!4232141 (= lt!1504507 (lemmaSemiInverse!2529 (transformation!7896 r!4353) (seqFromList!5798 (_1!25314 lt!1504506))))))

(declare-fun b!4232142 () Bool)

(declare-fun matchR!6433 (Regex!12801 List!46857) Bool)

(assert (=> b!4232142 (= e!2627862 (matchR!6433 (regex!7896 r!4353) (_1!25314 (findLongestMatchInner!1698 (regex!7896 r!4353) Nil!46733 (size!34255 Nil!46733) input!3600 input!3600 (size!34255 input!3600)))))))

(declare-fun b!4232143 () Bool)

(assert (=> b!4232143 (= e!2627864 (= (size!34254 (_1!25313 (get!15202 lt!1504503))) (size!34255 (originalCharacters!8242 (_1!25313 (get!15202 lt!1504503))))))))

(declare-fun b!4232144 () Bool)

(declare-fun e!2627861 () Bool)

(assert (=> b!4232144 (= e!2627861 e!2627864)))

(declare-fun res!1740620 () Bool)

(assert (=> b!4232144 (=> (not res!1740620) (not e!2627864))))

(declare-fun list!16871 (BalanceConc!27808) List!46857)

(declare-fun charsOf!5262 (Token!14422) BalanceConc!27808)

(assert (=> b!4232144 (= res!1740620 (matchR!6433 (regex!7896 r!4353) (list!16871 (charsOf!5262 (_1!25313 (get!15202 lt!1504503))))))))

(declare-fun b!4232145 () Bool)

(declare-fun res!1740621 () Bool)

(assert (=> b!4232145 (=> (not res!1740621) (not e!2627864))))

(assert (=> b!4232145 (= res!1740621 (< (size!34255 (_2!25313 (get!15202 lt!1504503))) (size!34255 input!3600)))))

(declare-fun b!4232146 () Bool)

(declare-fun res!1740625 () Bool)

(assert (=> b!4232146 (=> (not res!1740625) (not e!2627864))))

(assert (=> b!4232146 (= res!1740625 (= (value!245532 (_1!25313 (get!15202 lt!1504503))) (apply!10738 (transformation!7896 (rule!11018 (_1!25313 (get!15202 lt!1504503)))) (seqFromList!5798 (originalCharacters!8242 (_1!25313 (get!15202 lt!1504503)))))))))

(declare-fun d!1245241 () Bool)

(assert (=> d!1245241 e!2627861))

(declare-fun res!1740626 () Bool)

(assert (=> d!1245241 (=> res!1740626 e!2627861)))

(declare-fun isEmpty!27623 (Option!10042) Bool)

(assert (=> d!1245241 (= res!1740626 (isEmpty!27623 lt!1504503))))

(assert (=> d!1245241 (= lt!1504503 e!2627863)))

(declare-fun c!719305 () Bool)

(assert (=> d!1245241 (= c!719305 (isEmpty!27622 (_1!25314 lt!1504506)))))

(declare-fun findLongestMatch!1601 (Regex!12801 List!46857) tuple2!44360)

(assert (=> d!1245241 (= lt!1504506 (findLongestMatch!1601 (regex!7896 r!4353) input!3600))))

(assert (=> d!1245241 (ruleValid!3592 thiss!26814 r!4353)))

(assert (=> d!1245241 (= (maxPrefixOneRule!3436 thiss!26814 r!4353 input!3600) lt!1504503)))

(declare-fun b!4232147 () Bool)

(declare-fun res!1740622 () Bool)

(assert (=> b!4232147 (=> (not res!1740622) (not e!2627864))))

(assert (=> b!4232147 (= res!1740622 (= (++!11917 (list!16871 (charsOf!5262 (_1!25313 (get!15202 lt!1504503)))) (_2!25313 (get!15202 lt!1504503))) input!3600))))

(declare-fun b!4232148 () Bool)

(assert (=> b!4232148 (= e!2627863 None!10041)))

(assert (= (and d!1245241 c!719305) b!4232148))

(assert (= (and d!1245241 (not c!719305)) b!4232141))

(assert (= (and b!4232141 (not res!1740623)) b!4232142))

(assert (= (and d!1245241 (not res!1740626)) b!4232144))

(assert (= (and b!4232144 res!1740620) b!4232147))

(assert (= (and b!4232147 res!1740622) b!4232145))

(assert (= (and b!4232145 res!1740621) b!4232140))

(assert (= (and b!4232140 res!1740624) b!4232146))

(assert (= (and b!4232146 res!1740625) b!4232143))

(assert (=> b!4232141 m!4818155))

(declare-fun m!4818361 () Bool)

(assert (=> b!4232141 m!4818361))

(declare-fun m!4818363 () Bool)

(assert (=> b!4232141 m!4818363))

(assert (=> b!4232141 m!4818361))

(declare-fun m!4818365 () Bool)

(assert (=> b!4232141 m!4818365))

(assert (=> b!4232141 m!4818361))

(assert (=> b!4232141 m!4818361))

(declare-fun m!4818367 () Bool)

(assert (=> b!4232141 m!4818367))

(assert (=> b!4232141 m!4818143))

(assert (=> b!4232141 m!4818155))

(declare-fun m!4818369 () Bool)

(assert (=> b!4232141 m!4818369))

(declare-fun m!4818371 () Bool)

(assert (=> b!4232141 m!4818371))

(assert (=> b!4232141 m!4818143))

(declare-fun m!4818373 () Bool)

(assert (=> b!4232141 m!4818373))

(declare-fun m!4818375 () Bool)

(assert (=> b!4232147 m!4818375))

(declare-fun m!4818377 () Bool)

(assert (=> b!4232147 m!4818377))

(assert (=> b!4232147 m!4818377))

(declare-fun m!4818379 () Bool)

(assert (=> b!4232147 m!4818379))

(assert (=> b!4232147 m!4818379))

(declare-fun m!4818381 () Bool)

(assert (=> b!4232147 m!4818381))

(assert (=> b!4232142 m!4818143))

(assert (=> b!4232142 m!4818155))

(assert (=> b!4232142 m!4818143))

(assert (=> b!4232142 m!4818155))

(assert (=> b!4232142 m!4818369))

(declare-fun m!4818383 () Bool)

(assert (=> b!4232142 m!4818383))

(assert (=> b!4232140 m!4818375))

(assert (=> b!4232143 m!4818375))

(declare-fun m!4818385 () Bool)

(assert (=> b!4232143 m!4818385))

(assert (=> b!4232145 m!4818375))

(declare-fun m!4818387 () Bool)

(assert (=> b!4232145 m!4818387))

(assert (=> b!4232145 m!4818155))

(declare-fun m!4818389 () Bool)

(assert (=> d!1245241 m!4818389))

(declare-fun m!4818391 () Bool)

(assert (=> d!1245241 m!4818391))

(declare-fun m!4818393 () Bool)

(assert (=> d!1245241 m!4818393))

(assert (=> d!1245241 m!4818159))

(assert (=> b!4232146 m!4818375))

(declare-fun m!4818395 () Bool)

(assert (=> b!4232146 m!4818395))

(assert (=> b!4232146 m!4818395))

(declare-fun m!4818397 () Bool)

(assert (=> b!4232146 m!4818397))

(assert (=> b!4232144 m!4818375))

(assert (=> b!4232144 m!4818377))

(assert (=> b!4232144 m!4818377))

(assert (=> b!4232144 m!4818379))

(assert (=> b!4232144 m!4818379))

(declare-fun m!4818399 () Bool)

(assert (=> b!4232144 m!4818399))

(assert (=> b!4231860 d!1245241))

(declare-fun b!4232151 () Bool)

(declare-fun e!2627866 () Bool)

(assert (=> b!4232151 (= e!2627866 (isPrefix!4711 (tail!6820 Nil!46733) (tail!6820 input!3600)))))

(declare-fun b!4232149 () Bool)

(declare-fun e!2627867 () Bool)

(assert (=> b!4232149 (= e!2627867 e!2627866)))

(declare-fun res!1740628 () Bool)

(assert (=> b!4232149 (=> (not res!1740628) (not e!2627866))))

(assert (=> b!4232149 (= res!1740628 (not ((_ is Nil!46733) input!3600)))))

(declare-fun b!4232150 () Bool)

(declare-fun res!1740630 () Bool)

(assert (=> b!4232150 (=> (not res!1740630) (not e!2627866))))

(assert (=> b!4232150 (= res!1740630 (= (head!8973 Nil!46733) (head!8973 input!3600)))))

(declare-fun b!4232152 () Bool)

(declare-fun e!2627865 () Bool)

(assert (=> b!4232152 (= e!2627865 (>= (size!34255 input!3600) (size!34255 Nil!46733)))))

(declare-fun d!1245243 () Bool)

(assert (=> d!1245243 e!2627865))

(declare-fun res!1740629 () Bool)

(assert (=> d!1245243 (=> res!1740629 e!2627865)))

(declare-fun lt!1504508 () Bool)

(assert (=> d!1245243 (= res!1740629 (not lt!1504508))))

(assert (=> d!1245243 (= lt!1504508 e!2627867)))

(declare-fun res!1740627 () Bool)

(assert (=> d!1245243 (=> res!1740627 e!2627867)))

(assert (=> d!1245243 (= res!1740627 ((_ is Nil!46733) Nil!46733))))

(assert (=> d!1245243 (= (isPrefix!4711 Nil!46733 input!3600) lt!1504508)))

(assert (= (and d!1245243 (not res!1740627)) b!4232149))

(assert (= (and b!4232149 res!1740628) b!4232150))

(assert (= (and b!4232150 res!1740630) b!4232151))

(assert (= (and d!1245243 (not res!1740629)) b!4232152))

(declare-fun m!4818401 () Bool)

(assert (=> b!4232151 m!4818401))

(assert (=> b!4232151 m!4818307))

(assert (=> b!4232151 m!4818401))

(assert (=> b!4232151 m!4818307))

(declare-fun m!4818403 () Bool)

(assert (=> b!4232151 m!4818403))

(declare-fun m!4818405 () Bool)

(assert (=> b!4232150 m!4818405))

(assert (=> b!4232150 m!4818313))

(assert (=> b!4232152 m!4818155))

(assert (=> b!4232152 m!4818143))

(assert (=> b!4231861 d!1245243))

(declare-fun b!4232157 () Bool)

(declare-fun e!2627870 () Bool)

(declare-fun tp!1296296 () Bool)

(assert (=> b!4232157 (= e!2627870 (and tp_is_empty!22537 tp!1296296))))

(assert (=> b!4231867 (= tp!1296271 e!2627870)))

(assert (= (and b!4231867 ((_ is Cons!46733) (t!349528 p!3018))) b!4232157))

(declare-fun b!4232171 () Bool)

(declare-fun e!2627873 () Bool)

(declare-fun tp!1296308 () Bool)

(declare-fun tp!1296309 () Bool)

(assert (=> b!4232171 (= e!2627873 (and tp!1296308 tp!1296309))))

(assert (=> b!4231869 (= tp!1296272 e!2627873)))

(declare-fun b!4232169 () Bool)

(declare-fun tp!1296311 () Bool)

(declare-fun tp!1296310 () Bool)

(assert (=> b!4232169 (= e!2627873 (and tp!1296311 tp!1296310))))

(declare-fun b!4232168 () Bool)

(assert (=> b!4232168 (= e!2627873 tp_is_empty!22537)))

(declare-fun b!4232170 () Bool)

(declare-fun tp!1296307 () Bool)

(assert (=> b!4232170 (= e!2627873 tp!1296307)))

(assert (= (and b!4231869 ((_ is ElementMatch!12801) (regex!7896 r!4353))) b!4232168))

(assert (= (and b!4231869 ((_ is Concat!20928) (regex!7896 r!4353))) b!4232169))

(assert (= (and b!4231869 ((_ is Star!12801) (regex!7896 r!4353))) b!4232170))

(assert (= (and b!4231869 ((_ is Union!12801) (regex!7896 r!4353))) b!4232171))

(declare-fun b!4232172 () Bool)

(declare-fun e!2627874 () Bool)

(declare-fun tp!1296312 () Bool)

(assert (=> b!4232172 (= e!2627874 (and tp_is_empty!22537 tp!1296312))))

(assert (=> b!4231866 (= tp!1296274 e!2627874)))

(assert (= (and b!4231866 ((_ is Cons!46733) (t!349528 input!3600))) b!4232172))

(check-sat (not b!4232172) (not d!1245233) (not bm!293484) (not bm!293537) (not b!4232157) (not b!4232104) (not b!4232141) (not bm!293536) (not b!4232147) (not b!4232109) (not b_next!125713) (not b!4232061) (not b_next!125711) (not bm!293486) (not b!4232152) (not d!1245231) (not b!4232143) (not b!4232053) (not bm!293533) (not bm!293539) (not b!4232142) (not b!4232169) (not b!4232119) (not d!1245205) (not bm!293535) (not b!4232140) b_and!334317 tp_is_empty!22537 (not bm!293534) (not b!4232170) (not b!4232146) (not b!4232151) (not d!1245241) (not b!4232058) b_and!334319 (not b!4232099) (not bm!293538) (not b!4232150) (not b!4232145) (not b!4231897) (not b!4232144) (not b!4232171) (not bm!293540) (not b!4232096) (not b!4232120) (not b!4232121) (not b!4232054) (not b!4232107))
(check-sat b_and!334317 b_and!334319 (not b_next!125713) (not b_next!125711))
(get-model)

(declare-fun d!1245245 () Bool)

(declare-fun lt!1504509 () Int)

(assert (=> d!1245245 (>= lt!1504509 0)))

(declare-fun e!2627875 () Int)

(assert (=> d!1245245 (= lt!1504509 e!2627875)))

(declare-fun c!719306 () Bool)

(assert (=> d!1245245 (= c!719306 ((_ is Nil!46733) (_2!25313 (get!15202 lt!1504503))))))

(assert (=> d!1245245 (= (size!34255 (_2!25313 (get!15202 lt!1504503))) lt!1504509)))

(declare-fun b!4232173 () Bool)

(assert (=> b!4232173 (= e!2627875 0)))

(declare-fun b!4232174 () Bool)

(assert (=> b!4232174 (= e!2627875 (+ 1 (size!34255 (t!349528 (_2!25313 (get!15202 lt!1504503))))))))

(assert (= (and d!1245245 c!719306) b!4232173))

(assert (= (and d!1245245 (not c!719306)) b!4232174))

(declare-fun m!4818407 () Bool)

(assert (=> b!4232174 m!4818407))

(assert (=> b!4232145 d!1245245))

(declare-fun d!1245247 () Bool)

(assert (=> d!1245247 (= (get!15202 lt!1504503) (v!40969 lt!1504503))))

(assert (=> b!4232145 d!1245247))

(assert (=> b!4232145 d!1245227))

(declare-fun b!4232177 () Bool)

(declare-fun e!2627877 () Bool)

(assert (=> b!4232177 (= e!2627877 (isPrefix!4711 (tail!6820 input!3600) (tail!6820 input!3600)))))

(declare-fun b!4232175 () Bool)

(declare-fun e!2627878 () Bool)

(assert (=> b!4232175 (= e!2627878 e!2627877)))

(declare-fun res!1740636 () Bool)

(assert (=> b!4232175 (=> (not res!1740636) (not e!2627877))))

(assert (=> b!4232175 (= res!1740636 (not ((_ is Nil!46733) input!3600)))))

(declare-fun b!4232176 () Bool)

(declare-fun res!1740638 () Bool)

(assert (=> b!4232176 (=> (not res!1740638) (not e!2627877))))

(assert (=> b!4232176 (= res!1740638 (= (head!8973 input!3600) (head!8973 input!3600)))))

(declare-fun b!4232178 () Bool)

(declare-fun e!2627876 () Bool)

(assert (=> b!4232178 (= e!2627876 (>= (size!34255 input!3600) (size!34255 input!3600)))))

(declare-fun d!1245249 () Bool)

(assert (=> d!1245249 e!2627876))

(declare-fun res!1740637 () Bool)

(assert (=> d!1245249 (=> res!1740637 e!2627876)))

(declare-fun lt!1504510 () Bool)

(assert (=> d!1245249 (= res!1740637 (not lt!1504510))))

(assert (=> d!1245249 (= lt!1504510 e!2627878)))

(declare-fun res!1740635 () Bool)

(assert (=> d!1245249 (=> res!1740635 e!2627878)))

(assert (=> d!1245249 (= res!1740635 ((_ is Nil!46733) input!3600))))

(assert (=> d!1245249 (= (isPrefix!4711 input!3600 input!3600) lt!1504510)))

(assert (= (and d!1245249 (not res!1740635)) b!4232175))

(assert (= (and b!4232175 res!1740636) b!4232176))

(assert (= (and b!4232176 res!1740638) b!4232177))

(assert (= (and d!1245249 (not res!1740637)) b!4232178))

(assert (=> b!4232177 m!4818307))

(assert (=> b!4232177 m!4818307))

(assert (=> b!4232177 m!4818307))

(assert (=> b!4232177 m!4818307))

(declare-fun m!4818409 () Bool)

(assert (=> b!4232177 m!4818409))

(assert (=> b!4232176 m!4818313))

(assert (=> b!4232176 m!4818313))

(assert (=> b!4232178 m!4818155))

(assert (=> b!4232178 m!4818155))

(assert (=> bm!293539 d!1245249))

(declare-fun d!1245251 () Bool)

(assert (=> d!1245251 (= (isEmpty!27622 (_1!25314 lt!1504475)) ((_ is Nil!46733) (_1!25314 lt!1504475)))))

(assert (=> b!4232058 d!1245251))

(declare-fun b!4232225 () Bool)

(declare-fun e!2627907 () Bool)

(declare-fun e!2627905 () Bool)

(assert (=> b!4232225 (= e!2627907 e!2627905)))

(declare-fun c!719320 () Bool)

(assert (=> b!4232225 (= c!719320 ((_ is EmptyLang!12801) (regex!7896 r!4353)))))

(declare-fun b!4232226 () Bool)

(declare-fun lt!1504519 () Bool)

(assert (=> b!4232226 (= e!2627905 (not lt!1504519))))

(declare-fun b!4232227 () Bool)

(declare-fun res!1740663 () Bool)

(declare-fun e!2627903 () Bool)

(assert (=> b!4232227 (=> (not res!1740663) (not e!2627903))))

(declare-fun call!293551 () Bool)

(assert (=> b!4232227 (= res!1740663 (not call!293551))))

(declare-fun b!4232228 () Bool)

(declare-fun res!1740668 () Bool)

(declare-fun e!2627908 () Bool)

(assert (=> b!4232228 (=> res!1740668 e!2627908)))

(assert (=> b!4232228 (= res!1740668 (not (isEmpty!27622 (tail!6820 (list!16871 (charsOf!5262 (_1!25313 (get!15202 lt!1504503))))))))))

(declare-fun b!4232229 () Bool)

(declare-fun e!2627906 () Bool)

(assert (=> b!4232229 (= e!2627906 (matchR!6433 (derivativeStep!3843 (regex!7896 r!4353) (head!8973 (list!16871 (charsOf!5262 (_1!25313 (get!15202 lt!1504503)))))) (tail!6820 (list!16871 (charsOf!5262 (_1!25313 (get!15202 lt!1504503)))))))))

(declare-fun b!4232230 () Bool)

(declare-fun res!1740665 () Bool)

(assert (=> b!4232230 (=> (not res!1740665) (not e!2627903))))

(assert (=> b!4232230 (= res!1740665 (isEmpty!27622 (tail!6820 (list!16871 (charsOf!5262 (_1!25313 (get!15202 lt!1504503)))))))))

(declare-fun b!4232231 () Bool)

(assert (=> b!4232231 (= e!2627903 (= (head!8973 (list!16871 (charsOf!5262 (_1!25313 (get!15202 lt!1504503))))) (c!719238 (regex!7896 r!4353))))))

(declare-fun b!4232232 () Bool)

(declare-fun res!1740667 () Bool)

(declare-fun e!2627902 () Bool)

(assert (=> b!4232232 (=> res!1740667 e!2627902)))

(assert (=> b!4232232 (= res!1740667 e!2627903)))

(declare-fun res!1740664 () Bool)

(assert (=> b!4232232 (=> (not res!1740664) (not e!2627903))))

(assert (=> b!4232232 (= res!1740664 lt!1504519)))

(declare-fun d!1245253 () Bool)

(assert (=> d!1245253 e!2627907))

(declare-fun c!719321 () Bool)

(assert (=> d!1245253 (= c!719321 ((_ is EmptyExpr!12801) (regex!7896 r!4353)))))

(assert (=> d!1245253 (= lt!1504519 e!2627906)))

(declare-fun c!719319 () Bool)

(assert (=> d!1245253 (= c!719319 (isEmpty!27622 (list!16871 (charsOf!5262 (_1!25313 (get!15202 lt!1504503))))))))

(assert (=> d!1245253 (validRegex!5817 (regex!7896 r!4353))))

(assert (=> d!1245253 (= (matchR!6433 (regex!7896 r!4353) (list!16871 (charsOf!5262 (_1!25313 (get!15202 lt!1504503))))) lt!1504519)))

(declare-fun b!4232233 () Bool)

(assert (=> b!4232233 (= e!2627906 (nullable!4510 (regex!7896 r!4353)))))

(declare-fun bm!293546 () Bool)

(assert (=> bm!293546 (= call!293551 (isEmpty!27622 (list!16871 (charsOf!5262 (_1!25313 (get!15202 lt!1504503))))))))

(declare-fun b!4232234 () Bool)

(assert (=> b!4232234 (= e!2627907 (= lt!1504519 call!293551))))

(declare-fun b!4232235 () Bool)

(declare-fun e!2627904 () Bool)

(assert (=> b!4232235 (= e!2627904 e!2627908)))

(declare-fun res!1740666 () Bool)

(assert (=> b!4232235 (=> res!1740666 e!2627908)))

(assert (=> b!4232235 (= res!1740666 call!293551)))

(declare-fun b!4232236 () Bool)

(assert (=> b!4232236 (= e!2627902 e!2627904)))

(declare-fun res!1740661 () Bool)

(assert (=> b!4232236 (=> (not res!1740661) (not e!2627904))))

(assert (=> b!4232236 (= res!1740661 (not lt!1504519))))

(declare-fun b!4232237 () Bool)

(assert (=> b!4232237 (= e!2627908 (not (= (head!8973 (list!16871 (charsOf!5262 (_1!25313 (get!15202 lt!1504503))))) (c!719238 (regex!7896 r!4353)))))))

(declare-fun b!4232238 () Bool)

(declare-fun res!1740662 () Bool)

(assert (=> b!4232238 (=> res!1740662 e!2627902)))

(assert (=> b!4232238 (= res!1740662 (not ((_ is ElementMatch!12801) (regex!7896 r!4353))))))

(assert (=> b!4232238 (= e!2627905 e!2627902)))

(assert (= (and d!1245253 c!719319) b!4232233))

(assert (= (and d!1245253 (not c!719319)) b!4232229))

(assert (= (and d!1245253 c!719321) b!4232234))

(assert (= (and d!1245253 (not c!719321)) b!4232225))

(assert (= (and b!4232225 c!719320) b!4232226))

(assert (= (and b!4232225 (not c!719320)) b!4232238))

(assert (= (and b!4232238 (not res!1740662)) b!4232232))

(assert (= (and b!4232232 res!1740664) b!4232227))

(assert (= (and b!4232227 res!1740663) b!4232230))

(assert (= (and b!4232230 res!1740665) b!4232231))

(assert (= (and b!4232232 (not res!1740667)) b!4232236))

(assert (= (and b!4232236 res!1740661) b!4232235))

(assert (= (and b!4232235 (not res!1740666)) b!4232228))

(assert (= (and b!4232228 (not res!1740668)) b!4232237))

(assert (= (or b!4232234 b!4232227 b!4232235) bm!293546))

(assert (=> d!1245253 m!4818379))

(declare-fun m!4818427 () Bool)

(assert (=> d!1245253 m!4818427))

(assert (=> d!1245253 m!4818141))

(assert (=> b!4232228 m!4818379))

(declare-fun m!4818429 () Bool)

(assert (=> b!4232228 m!4818429))

(assert (=> b!4232228 m!4818429))

(declare-fun m!4818433 () Bool)

(assert (=> b!4232228 m!4818433))

(assert (=> bm!293546 m!4818379))

(assert (=> bm!293546 m!4818427))

(assert (=> b!4232230 m!4818379))

(assert (=> b!4232230 m!4818429))

(assert (=> b!4232230 m!4818429))

(assert (=> b!4232230 m!4818433))

(assert (=> b!4232231 m!4818379))

(declare-fun m!4818435 () Bool)

(assert (=> b!4232231 m!4818435))

(assert (=> b!4232229 m!4818379))

(assert (=> b!4232229 m!4818435))

(assert (=> b!4232229 m!4818435))

(declare-fun m!4818437 () Bool)

(assert (=> b!4232229 m!4818437))

(assert (=> b!4232229 m!4818379))

(assert (=> b!4232229 m!4818429))

(assert (=> b!4232229 m!4818437))

(assert (=> b!4232229 m!4818429))

(declare-fun m!4818441 () Bool)

(assert (=> b!4232229 m!4818441))

(assert (=> b!4232237 m!4818379))

(assert (=> b!4232237 m!4818435))

(assert (=> b!4232233 m!4818343))

(assert (=> b!4232144 d!1245253))

(declare-fun d!1245267 () Bool)

(declare-fun list!16872 (Conc!14107) List!46857)

(assert (=> d!1245267 (= (list!16871 (charsOf!5262 (_1!25313 (get!15202 lt!1504503)))) (list!16872 (c!719239 (charsOf!5262 (_1!25313 (get!15202 lt!1504503))))))))

(declare-fun bs!597984 () Bool)

(assert (= bs!597984 d!1245267))

(declare-fun m!4818451 () Bool)

(assert (=> bs!597984 m!4818451))

(assert (=> b!4232144 d!1245267))

(declare-fun d!1245269 () Bool)

(declare-fun lt!1504527 () BalanceConc!27808)

(assert (=> d!1245269 (= (list!16871 lt!1504527) (originalCharacters!8242 (_1!25313 (get!15202 lt!1504503))))))

(declare-fun dynLambda!20037 (Int TokenValue!8126) BalanceConc!27808)

(assert (=> d!1245269 (= lt!1504527 (dynLambda!20037 (toChars!10487 (transformation!7896 (rule!11018 (_1!25313 (get!15202 lt!1504503))))) (value!245532 (_1!25313 (get!15202 lt!1504503)))))))

(assert (=> d!1245269 (= (charsOf!5262 (_1!25313 (get!15202 lt!1504503))) lt!1504527)))

(declare-fun b_lambda!124579 () Bool)

(assert (=> (not b_lambda!124579) (not d!1245269)))

(declare-fun t!349530 () Bool)

(declare-fun tb!253863 () Bool)

(assert (=> (and b!4231868 (= (toChars!10487 (transformation!7896 r!4353)) (toChars!10487 (transformation!7896 (rule!11018 (_1!25313 (get!15202 lt!1504503)))))) t!349530) tb!253863))

(declare-fun b!4232249 () Bool)

(declare-fun e!2627914 () Bool)

(declare-fun tp!1296315 () Bool)

(declare-fun inv!61439 (Conc!14107) Bool)

(assert (=> b!4232249 (= e!2627914 (and (inv!61439 (c!719239 (dynLambda!20037 (toChars!10487 (transformation!7896 (rule!11018 (_1!25313 (get!15202 lt!1504503))))) (value!245532 (_1!25313 (get!15202 lt!1504503)))))) tp!1296315))))

(declare-fun result!309628 () Bool)

(declare-fun inv!61440 (BalanceConc!27808) Bool)

(assert (=> tb!253863 (= result!309628 (and (inv!61440 (dynLambda!20037 (toChars!10487 (transformation!7896 (rule!11018 (_1!25313 (get!15202 lt!1504503))))) (value!245532 (_1!25313 (get!15202 lt!1504503))))) e!2627914))))

(assert (= tb!253863 b!4232249))

(declare-fun m!4818457 () Bool)

(assert (=> b!4232249 m!4818457))

(declare-fun m!4818459 () Bool)

(assert (=> tb!253863 m!4818459))

(assert (=> d!1245269 t!349530))

(declare-fun b_and!334321 () Bool)

(assert (= b_and!334319 (and (=> t!349530 result!309628) b_and!334321)))

(declare-fun m!4818461 () Bool)

(assert (=> d!1245269 m!4818461))

(declare-fun m!4818463 () Bool)

(assert (=> d!1245269 m!4818463))

(assert (=> b!4232144 d!1245269))

(assert (=> b!4232144 d!1245247))

(assert (=> b!4232143 d!1245247))

(declare-fun d!1245275 () Bool)

(declare-fun lt!1504528 () Int)

(assert (=> d!1245275 (>= lt!1504528 0)))

(declare-fun e!2627915 () Int)

(assert (=> d!1245275 (= lt!1504528 e!2627915)))

(declare-fun c!719324 () Bool)

(assert (=> d!1245275 (= c!719324 ((_ is Nil!46733) (originalCharacters!8242 (_1!25313 (get!15202 lt!1504503)))))))

(assert (=> d!1245275 (= (size!34255 (originalCharacters!8242 (_1!25313 (get!15202 lt!1504503)))) lt!1504528)))

(declare-fun b!4232250 () Bool)

(assert (=> b!4232250 (= e!2627915 0)))

(declare-fun b!4232251 () Bool)

(assert (=> b!4232251 (= e!2627915 (+ 1 (size!34255 (t!349528 (originalCharacters!8242 (_1!25313 (get!15202 lt!1504503)))))))))

(assert (= (and d!1245275 c!719324) b!4232250))

(assert (= (and d!1245275 (not c!719324)) b!4232251))

(declare-fun m!4818465 () Bool)

(assert (=> b!4232251 m!4818465))

(assert (=> b!4232143 d!1245275))

(declare-fun d!1245277 () Bool)

(assert (=> d!1245277 (= (isEmpty!27623 lt!1504503) (not ((_ is Some!10041) lt!1504503)))))

(assert (=> d!1245241 d!1245277))

(declare-fun d!1245279 () Bool)

(assert (=> d!1245279 (= (isEmpty!27622 (_1!25314 lt!1504506)) ((_ is Nil!46733) (_1!25314 lt!1504506)))))

(assert (=> d!1245241 d!1245279))

(declare-fun d!1245283 () Bool)

(declare-fun lt!1504584 () tuple2!44360)

(assert (=> d!1245283 (= (++!11917 (_1!25314 lt!1504584) (_2!25314 lt!1504584)) input!3600)))

(declare-fun sizeTr!325 (List!46857 Int) Int)

(assert (=> d!1245283 (= lt!1504584 (findLongestMatchInner!1698 (regex!7896 r!4353) Nil!46733 0 input!3600 input!3600 (sizeTr!325 input!3600 0)))))

(declare-fun lt!1504585 () Unit!65866)

(declare-fun lt!1504583 () Unit!65866)

(assert (=> d!1245283 (= lt!1504585 lt!1504583)))

(declare-fun lt!1504581 () List!46857)

(declare-fun lt!1504587 () Int)

(assert (=> d!1245283 (= (sizeTr!325 lt!1504581 lt!1504587) (+ (size!34255 lt!1504581) lt!1504587))))

(declare-fun lemmaSizeTrEqualsSize!324 (List!46857 Int) Unit!65866)

(assert (=> d!1245283 (= lt!1504583 (lemmaSizeTrEqualsSize!324 lt!1504581 lt!1504587))))

(assert (=> d!1245283 (= lt!1504587 0)))

(assert (=> d!1245283 (= lt!1504581 Nil!46733)))

(declare-fun lt!1504588 () Unit!65866)

(declare-fun lt!1504582 () Unit!65866)

(assert (=> d!1245283 (= lt!1504588 lt!1504582)))

(declare-fun lt!1504586 () Int)

(assert (=> d!1245283 (= (sizeTr!325 input!3600 lt!1504586) (+ (size!34255 input!3600) lt!1504586))))

(assert (=> d!1245283 (= lt!1504582 (lemmaSizeTrEqualsSize!324 input!3600 lt!1504586))))

(assert (=> d!1245283 (= lt!1504586 0)))

(assert (=> d!1245283 (validRegex!5817 (regex!7896 r!4353))))

(assert (=> d!1245283 (= (findLongestMatch!1601 (regex!7896 r!4353) input!3600) lt!1504584)))

(declare-fun bs!597989 () Bool)

(assert (= bs!597989 d!1245283))

(declare-fun m!4818553 () Bool)

(assert (=> bs!597989 m!4818553))

(declare-fun m!4818555 () Bool)

(assert (=> bs!597989 m!4818555))

(declare-fun m!4818557 () Bool)

(assert (=> bs!597989 m!4818557))

(assert (=> bs!597989 m!4818155))

(declare-fun m!4818559 () Bool)

(assert (=> bs!597989 m!4818559))

(assert (=> bs!597989 m!4818141))

(declare-fun m!4818561 () Bool)

(assert (=> bs!597989 m!4818561))

(declare-fun m!4818563 () Bool)

(assert (=> bs!597989 m!4818563))

(assert (=> bs!597989 m!4818553))

(declare-fun m!4818565 () Bool)

(assert (=> bs!597989 m!4818565))

(declare-fun m!4818567 () Bool)

(assert (=> bs!597989 m!4818567))

(assert (=> d!1245241 d!1245283))

(assert (=> d!1245241 d!1245233))

(declare-fun d!1245297 () Bool)

(declare-fun lt!1504589 () Int)

(assert (=> d!1245297 (>= lt!1504589 0)))

(declare-fun e!2627932 () Int)

(assert (=> d!1245297 (= lt!1504589 e!2627932)))

(declare-fun c!719332 () Bool)

(assert (=> d!1245297 (= c!719332 ((_ is Nil!46733) (t!349528 input!3600)))))

(assert (=> d!1245297 (= (size!34255 (t!349528 input!3600)) lt!1504589)))

(declare-fun b!4232279 () Bool)

(assert (=> b!4232279 (= e!2627932 0)))

(declare-fun b!4232280 () Bool)

(assert (=> b!4232280 (= e!2627932 (+ 1 (size!34255 (t!349528 (t!349528 input!3600)))))))

(assert (= (and d!1245297 c!719332) b!4232279))

(assert (= (and d!1245297 (not c!719332)) b!4232280))

(declare-fun m!4818569 () Bool)

(assert (=> b!4232280 m!4818569))

(assert (=> b!4232096 d!1245297))

(declare-fun d!1245299 () Bool)

(assert (=> d!1245299 (= input!3600 Nil!46733)))

(declare-fun lt!1504596 () Unit!65866)

(declare-fun choose!25911 (List!46857 List!46857 List!46857) Unit!65866)

(assert (=> d!1245299 (= lt!1504596 (choose!25911 input!3600 Nil!46733 input!3600))))

(assert (=> d!1245299 (isPrefix!4711 input!3600 input!3600)))

(assert (=> d!1245299 (= (lemmaIsPrefixSameLengthThenSameList!1035 input!3600 Nil!46733 input!3600) lt!1504596)))

(declare-fun bs!597991 () Bool)

(assert (= bs!597991 d!1245299))

(declare-fun m!4818575 () Bool)

(assert (=> bs!597991 m!4818575))

(assert (=> bs!597991 m!4818309))

(assert (=> bm!293538 d!1245299))

(declare-fun b!4232283 () Bool)

(declare-fun e!2627939 () Bool)

(declare-fun e!2627937 () Bool)

(assert (=> b!4232283 (= e!2627939 e!2627937)))

(declare-fun c!719335 () Bool)

(assert (=> b!4232283 (= c!719335 ((_ is EmptyLang!12801) (regex!7896 r!4353)))))

(declare-fun b!4232284 () Bool)

(declare-fun lt!1504597 () Bool)

(assert (=> b!4232284 (= e!2627937 (not lt!1504597))))

(declare-fun b!4232285 () Bool)

(declare-fun res!1740681 () Bool)

(declare-fun e!2627935 () Bool)

(assert (=> b!4232285 (=> (not res!1740681) (not e!2627935))))

(declare-fun call!293560 () Bool)

(assert (=> b!4232285 (= res!1740681 (not call!293560))))

(declare-fun b!4232286 () Bool)

(declare-fun res!1740686 () Bool)

(declare-fun e!2627940 () Bool)

(assert (=> b!4232286 (=> res!1740686 e!2627940)))

(assert (=> b!4232286 (= res!1740686 (not (isEmpty!27622 (tail!6820 (_1!25314 (findLongestMatchInner!1698 (regex!7896 r!4353) Nil!46733 (size!34255 Nil!46733) input!3600 input!3600 (size!34255 input!3600)))))))))

(declare-fun b!4232287 () Bool)

(declare-fun e!2627938 () Bool)

(assert (=> b!4232287 (= e!2627938 (matchR!6433 (derivativeStep!3843 (regex!7896 r!4353) (head!8973 (_1!25314 (findLongestMatchInner!1698 (regex!7896 r!4353) Nil!46733 (size!34255 Nil!46733) input!3600 input!3600 (size!34255 input!3600))))) (tail!6820 (_1!25314 (findLongestMatchInner!1698 (regex!7896 r!4353) Nil!46733 (size!34255 Nil!46733) input!3600 input!3600 (size!34255 input!3600))))))))

(declare-fun b!4232288 () Bool)

(declare-fun res!1740683 () Bool)

(assert (=> b!4232288 (=> (not res!1740683) (not e!2627935))))

(assert (=> b!4232288 (= res!1740683 (isEmpty!27622 (tail!6820 (_1!25314 (findLongestMatchInner!1698 (regex!7896 r!4353) Nil!46733 (size!34255 Nil!46733) input!3600 input!3600 (size!34255 input!3600))))))))

(declare-fun b!4232289 () Bool)

(assert (=> b!4232289 (= e!2627935 (= (head!8973 (_1!25314 (findLongestMatchInner!1698 (regex!7896 r!4353) Nil!46733 (size!34255 Nil!46733) input!3600 input!3600 (size!34255 input!3600)))) (c!719238 (regex!7896 r!4353))))))

(declare-fun b!4232290 () Bool)

(declare-fun res!1740685 () Bool)

(declare-fun e!2627934 () Bool)

(assert (=> b!4232290 (=> res!1740685 e!2627934)))

(assert (=> b!4232290 (= res!1740685 e!2627935)))

(declare-fun res!1740682 () Bool)

(assert (=> b!4232290 (=> (not res!1740682) (not e!2627935))))

(assert (=> b!4232290 (= res!1740682 lt!1504597)))

(declare-fun d!1245305 () Bool)

(assert (=> d!1245305 e!2627939))

(declare-fun c!719336 () Bool)

(assert (=> d!1245305 (= c!719336 ((_ is EmptyExpr!12801) (regex!7896 r!4353)))))

(assert (=> d!1245305 (= lt!1504597 e!2627938)))

(declare-fun c!719334 () Bool)

(assert (=> d!1245305 (= c!719334 (isEmpty!27622 (_1!25314 (findLongestMatchInner!1698 (regex!7896 r!4353) Nil!46733 (size!34255 Nil!46733) input!3600 input!3600 (size!34255 input!3600)))))))

(assert (=> d!1245305 (validRegex!5817 (regex!7896 r!4353))))

(assert (=> d!1245305 (= (matchR!6433 (regex!7896 r!4353) (_1!25314 (findLongestMatchInner!1698 (regex!7896 r!4353) Nil!46733 (size!34255 Nil!46733) input!3600 input!3600 (size!34255 input!3600)))) lt!1504597)))

(declare-fun b!4232291 () Bool)

(assert (=> b!4232291 (= e!2627938 (nullable!4510 (regex!7896 r!4353)))))

(declare-fun bm!293555 () Bool)

(assert (=> bm!293555 (= call!293560 (isEmpty!27622 (_1!25314 (findLongestMatchInner!1698 (regex!7896 r!4353) Nil!46733 (size!34255 Nil!46733) input!3600 input!3600 (size!34255 input!3600)))))))

(declare-fun b!4232292 () Bool)

(assert (=> b!4232292 (= e!2627939 (= lt!1504597 call!293560))))

(declare-fun b!4232293 () Bool)

(declare-fun e!2627936 () Bool)

(assert (=> b!4232293 (= e!2627936 e!2627940)))

(declare-fun res!1740684 () Bool)

(assert (=> b!4232293 (=> res!1740684 e!2627940)))

(assert (=> b!4232293 (= res!1740684 call!293560)))

(declare-fun b!4232294 () Bool)

(assert (=> b!4232294 (= e!2627934 e!2627936)))

(declare-fun res!1740679 () Bool)

(assert (=> b!4232294 (=> (not res!1740679) (not e!2627936))))

(assert (=> b!4232294 (= res!1740679 (not lt!1504597))))

(declare-fun b!4232295 () Bool)

(assert (=> b!4232295 (= e!2627940 (not (= (head!8973 (_1!25314 (findLongestMatchInner!1698 (regex!7896 r!4353) Nil!46733 (size!34255 Nil!46733) input!3600 input!3600 (size!34255 input!3600)))) (c!719238 (regex!7896 r!4353)))))))

(declare-fun b!4232296 () Bool)

(declare-fun res!1740680 () Bool)

(assert (=> b!4232296 (=> res!1740680 e!2627934)))

(assert (=> b!4232296 (= res!1740680 (not ((_ is ElementMatch!12801) (regex!7896 r!4353))))))

(assert (=> b!4232296 (= e!2627937 e!2627934)))

(assert (= (and d!1245305 c!719334) b!4232291))

(assert (= (and d!1245305 (not c!719334)) b!4232287))

(assert (= (and d!1245305 c!719336) b!4232292))

(assert (= (and d!1245305 (not c!719336)) b!4232283))

(assert (= (and b!4232283 c!719335) b!4232284))

(assert (= (and b!4232283 (not c!719335)) b!4232296))

(assert (= (and b!4232296 (not res!1740680)) b!4232290))

(assert (= (and b!4232290 res!1740682) b!4232285))

(assert (= (and b!4232285 res!1740681) b!4232288))

(assert (= (and b!4232288 res!1740683) b!4232289))

(assert (= (and b!4232290 (not res!1740685)) b!4232294))

(assert (= (and b!4232294 res!1740679) b!4232293))

(assert (= (and b!4232293 (not res!1740684)) b!4232286))

(assert (= (and b!4232286 (not res!1740686)) b!4232295))

(assert (= (or b!4232292 b!4232285 b!4232293) bm!293555))

(assert (=> d!1245305 m!4818371))

(assert (=> d!1245305 m!4818141))

(declare-fun m!4818579 () Bool)

(assert (=> b!4232286 m!4818579))

(assert (=> b!4232286 m!4818579))

(declare-fun m!4818581 () Bool)

(assert (=> b!4232286 m!4818581))

(assert (=> bm!293555 m!4818371))

(assert (=> b!4232288 m!4818579))

(assert (=> b!4232288 m!4818579))

(assert (=> b!4232288 m!4818581))

(declare-fun m!4818583 () Bool)

(assert (=> b!4232289 m!4818583))

(assert (=> b!4232287 m!4818583))

(assert (=> b!4232287 m!4818583))

(declare-fun m!4818585 () Bool)

(assert (=> b!4232287 m!4818585))

(assert (=> b!4232287 m!4818579))

(assert (=> b!4232287 m!4818585))

(assert (=> b!4232287 m!4818579))

(declare-fun m!4818587 () Bool)

(assert (=> b!4232287 m!4818587))

(assert (=> b!4232295 m!4818583))

(assert (=> b!4232291 m!4818343))

(assert (=> b!4232142 d!1245305))

(declare-fun b!4232297 () Bool)

(declare-fun e!2627944 () tuple2!44360)

(assert (=> b!4232297 (= e!2627944 (tuple2!44361 Nil!46733 input!3600))))

(declare-fun b!4232298 () Bool)

(declare-fun e!2627942 () Unit!65866)

(declare-fun Unit!65873 () Unit!65866)

(assert (=> b!4232298 (= e!2627942 Unit!65873)))

(declare-fun b!4232299 () Bool)

(declare-fun e!2627943 () tuple2!44360)

(assert (=> b!4232299 (= e!2627943 (tuple2!44361 Nil!46733 input!3600))))

(declare-fun b!4232300 () Bool)

(declare-fun c!719338 () Bool)

(declare-fun call!293568 () Bool)

(assert (=> b!4232300 (= c!719338 call!293568)))

(declare-fun lt!1504620 () Unit!65866)

(declare-fun lt!1504613 () Unit!65866)

(assert (=> b!4232300 (= lt!1504620 lt!1504613)))

(assert (=> b!4232300 (= input!3600 Nil!46733)))

(declare-fun call!293564 () Unit!65866)

(assert (=> b!4232300 (= lt!1504613 call!293564)))

(declare-fun lt!1504617 () Unit!65866)

(declare-fun lt!1504612 () Unit!65866)

(assert (=> b!4232300 (= lt!1504617 lt!1504612)))

(declare-fun call!293565 () Bool)

(assert (=> b!4232300 call!293565))

(declare-fun call!293563 () Unit!65866)

(assert (=> b!4232300 (= lt!1504612 call!293563)))

(declare-fun e!2627947 () tuple2!44360)

(declare-fun e!2627946 () tuple2!44360)

(assert (=> b!4232300 (= e!2627947 e!2627946)))

(declare-fun b!4232301 () Bool)

(assert (=> b!4232301 (= e!2627946 (tuple2!44361 Nil!46733 input!3600))))

(declare-fun b!4232302 () Bool)

(declare-fun c!719342 () Bool)

(assert (=> b!4232302 (= c!719342 call!293568)))

(declare-fun lt!1504605 () Unit!65866)

(declare-fun lt!1504621 () Unit!65866)

(assert (=> b!4232302 (= lt!1504605 lt!1504621)))

(declare-fun lt!1504598 () C!25800)

(declare-fun lt!1504601 () List!46857)

(assert (=> b!4232302 (= (++!11917 (++!11917 Nil!46733 (Cons!46733 lt!1504598 Nil!46733)) lt!1504601) input!3600)))

(assert (=> b!4232302 (= lt!1504621 (lemmaMoveElementToOtherListKeepsConcatEq!1307 Nil!46733 lt!1504598 lt!1504601 input!3600))))

(assert (=> b!4232302 (= lt!1504601 (tail!6820 input!3600))))

(assert (=> b!4232302 (= lt!1504598 (head!8973 input!3600))))

(declare-fun lt!1504623 () Unit!65866)

(declare-fun lt!1504619 () Unit!65866)

(assert (=> b!4232302 (= lt!1504623 lt!1504619)))

(assert (=> b!4232302 (isPrefix!4711 (++!11917 Nil!46733 (Cons!46733 (head!8973 (getSuffix!2864 input!3600 Nil!46733)) Nil!46733)) input!3600)))

(assert (=> b!4232302 (= lt!1504619 (lemmaAddHeadSuffixToPrefixStillPrefix!689 Nil!46733 input!3600))))

(declare-fun lt!1504607 () Unit!65866)

(declare-fun lt!1504622 () Unit!65866)

(assert (=> b!4232302 (= lt!1504607 lt!1504622)))

(assert (=> b!4232302 (= lt!1504622 (lemmaAddHeadSuffixToPrefixStillPrefix!689 Nil!46733 input!3600))))

(declare-fun lt!1504603 () List!46857)

(assert (=> b!4232302 (= lt!1504603 (++!11917 Nil!46733 (Cons!46733 (head!8973 input!3600) Nil!46733)))))

(declare-fun lt!1504602 () Unit!65866)

(assert (=> b!4232302 (= lt!1504602 e!2627942)))

(declare-fun c!719337 () Bool)

(assert (=> b!4232302 (= c!719337 (= (size!34255 Nil!46733) (size!34255 input!3600)))))

(declare-fun lt!1504609 () Unit!65866)

(declare-fun lt!1504606 () Unit!65866)

(assert (=> b!4232302 (= lt!1504609 lt!1504606)))

(assert (=> b!4232302 (<= (size!34255 Nil!46733) (size!34255 input!3600))))

(assert (=> b!4232302 (= lt!1504606 (lemmaIsPrefixThenSmallerEqSize!601 Nil!46733 input!3600))))

(declare-fun e!2627941 () tuple2!44360)

(assert (=> b!4232302 (= e!2627947 e!2627941)))

(declare-fun b!4232303 () Bool)

(declare-fun e!2627945 () Bool)

(declare-fun lt!1504625 () tuple2!44360)

(assert (=> b!4232303 (= e!2627945 (>= (size!34255 (_1!25314 lt!1504625)) (size!34255 Nil!46733)))))

(declare-fun bm!293556 () Bool)

(assert (=> bm!293556 (= call!293563 (lemmaIsPrefixRefl!3108 input!3600 input!3600))))

(declare-fun bm!293558 () Bool)

(assert (=> bm!293558 (= call!293568 (nullable!4510 (regex!7896 r!4353)))))

(declare-fun bm!293559 () Bool)

(declare-fun call!293562 () List!46857)

(assert (=> bm!293559 (= call!293562 (tail!6820 input!3600))))

(declare-fun bm!293560 () Bool)

(declare-fun call!293567 () C!25800)

(assert (=> bm!293560 (= call!293567 (head!8973 input!3600))))

(declare-fun b!4232304 () Bool)

(declare-fun lt!1504616 () tuple2!44360)

(assert (=> b!4232304 (= e!2627943 lt!1504616)))

(declare-fun b!4232305 () Bool)

(assert (=> b!4232305 (= e!2627946 (tuple2!44361 Nil!46733 Nil!46733))))

(declare-fun bm!293561 () Bool)

(assert (=> bm!293561 (= call!293564 (lemmaIsPrefixSameLengthThenSameList!1035 input!3600 Nil!46733 input!3600))))

(declare-fun b!4232306 () Bool)

(declare-fun call!293561 () tuple2!44360)

(assert (=> b!4232306 (= e!2627941 call!293561)))

(declare-fun b!4232307 () Bool)

(assert (=> b!4232307 (= e!2627941 e!2627943)))

(assert (=> b!4232307 (= lt!1504616 call!293561)))

(declare-fun c!719339 () Bool)

(assert (=> b!4232307 (= c!719339 (isEmpty!27622 (_1!25314 lt!1504616)))))

(declare-fun bm!293562 () Bool)

(assert (=> bm!293562 (= call!293565 (isPrefix!4711 input!3600 input!3600))))

(declare-fun b!4232308 () Bool)

(declare-fun Unit!65874 () Unit!65866)

(assert (=> b!4232308 (= e!2627942 Unit!65874)))

(declare-fun lt!1504618 () Unit!65866)

(assert (=> b!4232308 (= lt!1504618 call!293563)))

(assert (=> b!4232308 call!293565))

(declare-fun lt!1504624 () Unit!65866)

(assert (=> b!4232308 (= lt!1504624 lt!1504618)))

(declare-fun lt!1504610 () Unit!65866)

(assert (=> b!4232308 (= lt!1504610 call!293564)))

(assert (=> b!4232308 (= input!3600 Nil!46733)))

(declare-fun lt!1504604 () Unit!65866)

(assert (=> b!4232308 (= lt!1504604 lt!1504610)))

(assert (=> b!4232308 false))

(declare-fun bm!293563 () Bool)

(declare-fun call!293566 () Regex!12801)

(assert (=> bm!293563 (= call!293566 (derivativeStep!3843 (regex!7896 r!4353) call!293567))))

(declare-fun bm!293557 () Bool)

(assert (=> bm!293557 (= call!293561 (findLongestMatchInner!1698 call!293566 lt!1504603 (+ (size!34255 Nil!46733) 1) call!293562 input!3600 (size!34255 input!3600)))))

(declare-fun d!1245309 () Bool)

(declare-fun e!2627948 () Bool)

(assert (=> d!1245309 e!2627948))

(declare-fun res!1740688 () Bool)

(assert (=> d!1245309 (=> (not res!1740688) (not e!2627948))))

(assert (=> d!1245309 (= res!1740688 (= (++!11917 (_1!25314 lt!1504625) (_2!25314 lt!1504625)) input!3600))))

(assert (=> d!1245309 (= lt!1504625 e!2627944)))

(declare-fun c!719340 () Bool)

(assert (=> d!1245309 (= c!719340 (lostCause!1063 (regex!7896 r!4353)))))

(declare-fun lt!1504599 () Unit!65866)

(declare-fun Unit!65876 () Unit!65866)

(assert (=> d!1245309 (= lt!1504599 Unit!65876)))

(assert (=> d!1245309 (= (getSuffix!2864 input!3600 Nil!46733) input!3600)))

(declare-fun lt!1504608 () Unit!65866)

(declare-fun lt!1504615 () Unit!65866)

(assert (=> d!1245309 (= lt!1504608 lt!1504615)))

(declare-fun lt!1504600 () List!46857)

(assert (=> d!1245309 (= input!3600 lt!1504600)))

(assert (=> d!1245309 (= lt!1504615 (lemmaSamePrefixThenSameSuffix!2280 Nil!46733 input!3600 Nil!46733 lt!1504600 input!3600))))

(assert (=> d!1245309 (= lt!1504600 (getSuffix!2864 input!3600 Nil!46733))))

(declare-fun lt!1504614 () Unit!65866)

(declare-fun lt!1504611 () Unit!65866)

(assert (=> d!1245309 (= lt!1504614 lt!1504611)))

(assert (=> d!1245309 (isPrefix!4711 Nil!46733 (++!11917 Nil!46733 input!3600))))

(assert (=> d!1245309 (= lt!1504611 (lemmaConcatTwoListThenFirstIsPrefix!3100 Nil!46733 input!3600))))

(assert (=> d!1245309 (validRegex!5817 (regex!7896 r!4353))))

(assert (=> d!1245309 (= (findLongestMatchInner!1698 (regex!7896 r!4353) Nil!46733 (size!34255 Nil!46733) input!3600 input!3600 (size!34255 input!3600)) lt!1504625)))

(declare-fun b!4232309 () Bool)

(assert (=> b!4232309 (= e!2627944 e!2627947)))

(declare-fun c!719341 () Bool)

(assert (=> b!4232309 (= c!719341 (= (size!34255 Nil!46733) (size!34255 input!3600)))))

(declare-fun b!4232310 () Bool)

(assert (=> b!4232310 (= e!2627948 e!2627945)))

(declare-fun res!1740687 () Bool)

(assert (=> b!4232310 (=> res!1740687 e!2627945)))

(assert (=> b!4232310 (= res!1740687 (isEmpty!27622 (_1!25314 lt!1504625)))))

(assert (= (and d!1245309 c!719340) b!4232297))

(assert (= (and d!1245309 (not c!719340)) b!4232309))

(assert (= (and b!4232309 c!719341) b!4232300))

(assert (= (and b!4232309 (not c!719341)) b!4232302))

(assert (= (and b!4232300 c!719338) b!4232305))

(assert (= (and b!4232300 (not c!719338)) b!4232301))

(assert (= (and b!4232302 c!719337) b!4232308))

(assert (= (and b!4232302 (not c!719337)) b!4232298))

(assert (= (and b!4232302 c!719342) b!4232307))

(assert (= (and b!4232302 (not c!719342)) b!4232306))

(assert (= (and b!4232307 c!719339) b!4232299))

(assert (= (and b!4232307 (not c!719339)) b!4232304))

(assert (= (or b!4232307 b!4232306) bm!293560))

(assert (= (or b!4232307 b!4232306) bm!293559))

(assert (= (or b!4232307 b!4232306) bm!293563))

(assert (= (or b!4232307 b!4232306) bm!293557))

(assert (= (or b!4232300 b!4232308) bm!293561))

(assert (= (or b!4232300 b!4232308) bm!293556))

(assert (= (or b!4232300 b!4232308) bm!293562))

(assert (= (or b!4232300 b!4232302) bm!293558))

(assert (= (and d!1245309 res!1740688) b!4232310))

(assert (= (and b!4232310 (not res!1740687)) b!4232303))

(declare-fun m!4818589 () Bool)

(assert (=> d!1245309 m!4818589))

(assert (=> d!1245309 m!4818293))

(assert (=> d!1245309 m!4818295))

(assert (=> d!1245309 m!4818297))

(assert (=> d!1245309 m!4818141))

(assert (=> d!1245309 m!4818299))

(assert (=> d!1245309 m!4818295))

(assert (=> d!1245309 m!4818301))

(declare-fun m!4818591 () Bool)

(assert (=> d!1245309 m!4818591))

(declare-fun m!4818593 () Bool)

(assert (=> b!4232303 m!4818593))

(assert (=> b!4232303 m!4818143))

(assert (=> bm!293559 m!4818307))

(assert (=> bm!293562 m!4818309))

(declare-fun m!4818595 () Bool)

(assert (=> b!4232310 m!4818595))

(assert (=> bm!293560 m!4818313))

(declare-fun m!4818597 () Bool)

(assert (=> bm!293563 m!4818597))

(assert (=> bm!293556 m!4818317))

(assert (=> bm!293557 m!4818155))

(declare-fun m!4818599 () Bool)

(assert (=> bm!293557 m!4818599))

(assert (=> bm!293561 m!4818321))

(assert (=> b!4232302 m!4818155))

(assert (=> b!4232302 m!4818143))

(declare-fun m!4818601 () Bool)

(assert (=> b!4232302 m!4818601))

(assert (=> b!4232302 m!4818307))

(assert (=> b!4232302 m!4818325))

(assert (=> b!4232302 m!4818313))

(assert (=> b!4232302 m!4818299))

(assert (=> b!4232302 m!4818601))

(declare-fun m!4818603 () Bool)

(assert (=> b!4232302 m!4818603))

(assert (=> b!4232302 m!4818329))

(assert (=> b!4232302 m!4818331))

(assert (=> b!4232302 m!4818329))

(assert (=> b!4232302 m!4818333))

(declare-fun m!4818605 () Bool)

(assert (=> b!4232302 m!4818605))

(assert (=> b!4232302 m!4818299))

(assert (=> b!4232302 m!4818337))

(assert (=> b!4232302 m!4818339))

(declare-fun m!4818607 () Bool)

(assert (=> b!4232307 m!4818607))

(assert (=> bm!293558 m!4818343))

(assert (=> b!4232142 d!1245309))

(assert (=> b!4232142 d!1245235))

(assert (=> b!4232142 d!1245227))

(declare-fun d!1245311 () Bool)

(declare-fun e!2627972 () Bool)

(assert (=> d!1245311 e!2627972))

(declare-fun res!1740715 () Bool)

(assert (=> d!1245311 (=> res!1740715 e!2627972)))

(assert (=> d!1245311 (= res!1740715 (isEmpty!27622 (_1!25314 (findLongestMatchInner!1698 (regex!7896 r!4353) Nil!46733 (size!34255 Nil!46733) input!3600 input!3600 (size!34255 input!3600)))))))

(declare-fun lt!1504631 () Unit!65866)

(declare-fun choose!25913 (Regex!12801 List!46857) Unit!65866)

(assert (=> d!1245311 (= lt!1504631 (choose!25913 (regex!7896 r!4353) input!3600))))

(assert (=> d!1245311 (validRegex!5817 (regex!7896 r!4353))))

(assert (=> d!1245311 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1661 (regex!7896 r!4353) input!3600) lt!1504631)))

(declare-fun b!4232355 () Bool)

(assert (=> b!4232355 (= e!2627972 (matchR!6433 (regex!7896 r!4353) (_1!25314 (findLongestMatchInner!1698 (regex!7896 r!4353) Nil!46733 (size!34255 Nil!46733) input!3600 input!3600 (size!34255 input!3600)))))))

(assert (= (and d!1245311 (not res!1740715)) b!4232355))

(assert (=> d!1245311 m!4818155))

(assert (=> d!1245311 m!4818371))

(assert (=> d!1245311 m!4818141))

(assert (=> d!1245311 m!4818143))

(assert (=> d!1245311 m!4818155))

(assert (=> d!1245311 m!4818369))

(declare-fun m!4818609 () Bool)

(assert (=> d!1245311 m!4818609))

(assert (=> d!1245311 m!4818143))

(assert (=> b!4232355 m!4818143))

(assert (=> b!4232355 m!4818155))

(assert (=> b!4232355 m!4818143))

(assert (=> b!4232355 m!4818155))

(assert (=> b!4232355 m!4818369))

(assert (=> b!4232355 m!4818383))

(assert (=> b!4232141 d!1245311))

(declare-fun b!4232365 () Bool)

(declare-fun e!2627981 () Bool)

(assert (=> b!4232365 (= e!2627981 true)))

(declare-fun d!1245313 () Bool)

(assert (=> d!1245313 e!2627981))

(assert (= d!1245313 b!4232365))

(declare-fun order!24595 () Int)

(declare-fun order!24597 () Int)

(declare-fun lambda!129986 () Int)

(declare-fun dynLambda!20039 (Int Int) Int)

(declare-fun dynLambda!20040 (Int Int) Int)

(assert (=> b!4232365 (< (dynLambda!20039 order!24595 (toValue!10628 (transformation!7896 r!4353))) (dynLambda!20040 order!24597 lambda!129986))))

(declare-fun order!24599 () Int)

(declare-fun dynLambda!20041 (Int Int) Int)

(assert (=> b!4232365 (< (dynLambda!20041 order!24599 (toChars!10487 (transformation!7896 r!4353))) (dynLambda!20040 order!24597 lambda!129986))))

(declare-fun dynLambda!20042 (Int BalanceConc!27808) TokenValue!8126)

(assert (=> d!1245313 (= (list!16871 (dynLambda!20037 (toChars!10487 (transformation!7896 r!4353)) (dynLambda!20042 (toValue!10628 (transformation!7896 r!4353)) (seqFromList!5798 (_1!25314 lt!1504506))))) (list!16871 (seqFromList!5798 (_1!25314 lt!1504506))))))

(declare-fun lt!1504642 () Unit!65866)

(declare-fun ForallOf!1090 (Int BalanceConc!27808) Unit!65866)

(assert (=> d!1245313 (= lt!1504642 (ForallOf!1090 lambda!129986 (seqFromList!5798 (_1!25314 lt!1504506))))))

(assert (=> d!1245313 (= (lemmaSemiInverse!2529 (transformation!7896 r!4353) (seqFromList!5798 (_1!25314 lt!1504506))) lt!1504642)))

(declare-fun b_lambda!124585 () Bool)

(assert (=> (not b_lambda!124585) (not d!1245313)))

(declare-fun t!349536 () Bool)

(declare-fun tb!253869 () Bool)

(assert (=> (and b!4231868 (= (toChars!10487 (transformation!7896 r!4353)) (toChars!10487 (transformation!7896 r!4353))) t!349536) tb!253869))

(declare-fun e!2627982 () Bool)

(declare-fun b!4232366 () Bool)

(declare-fun tp!1296319 () Bool)

(assert (=> b!4232366 (= e!2627982 (and (inv!61439 (c!719239 (dynLambda!20037 (toChars!10487 (transformation!7896 r!4353)) (dynLambda!20042 (toValue!10628 (transformation!7896 r!4353)) (seqFromList!5798 (_1!25314 lt!1504506)))))) tp!1296319))))

(declare-fun result!309640 () Bool)

(assert (=> tb!253869 (= result!309640 (and (inv!61440 (dynLambda!20037 (toChars!10487 (transformation!7896 r!4353)) (dynLambda!20042 (toValue!10628 (transformation!7896 r!4353)) (seqFromList!5798 (_1!25314 lt!1504506))))) e!2627982))))

(assert (= tb!253869 b!4232366))

(declare-fun m!4818639 () Bool)

(assert (=> b!4232366 m!4818639))

(declare-fun m!4818641 () Bool)

(assert (=> tb!253869 m!4818641))

(assert (=> d!1245313 t!349536))

(declare-fun b_and!334327 () Bool)

(assert (= b_and!334321 (and (=> t!349536 result!309640) b_and!334327)))

(declare-fun b_lambda!124587 () Bool)

(assert (=> (not b_lambda!124587) (not d!1245313)))

(declare-fun t!349538 () Bool)

(declare-fun tb!253871 () Bool)

(assert (=> (and b!4231868 (= (toValue!10628 (transformation!7896 r!4353)) (toValue!10628 (transformation!7896 r!4353))) t!349538) tb!253871))

(declare-fun result!309642 () Bool)

(declare-fun inv!21 (TokenValue!8126) Bool)

(assert (=> tb!253871 (= result!309642 (inv!21 (dynLambda!20042 (toValue!10628 (transformation!7896 r!4353)) (seqFromList!5798 (_1!25314 lt!1504506)))))))

(declare-fun m!4818643 () Bool)

(assert (=> tb!253871 m!4818643))

(assert (=> d!1245313 t!349538))

(declare-fun b_and!334329 () Bool)

(assert (= b_and!334317 (and (=> t!349538 result!309642) b_and!334329)))

(assert (=> d!1245313 m!4818361))

(declare-fun m!4818645 () Bool)

(assert (=> d!1245313 m!4818645))

(assert (=> d!1245313 m!4818361))

(declare-fun m!4818647 () Bool)

(assert (=> d!1245313 m!4818647))

(assert (=> d!1245313 m!4818647))

(declare-fun m!4818649 () Bool)

(assert (=> d!1245313 m!4818649))

(assert (=> d!1245313 m!4818361))

(declare-fun m!4818651 () Bool)

(assert (=> d!1245313 m!4818651))

(assert (=> d!1245313 m!4818649))

(declare-fun m!4818653 () Bool)

(assert (=> d!1245313 m!4818653))

(assert (=> b!4232141 d!1245313))

(declare-fun d!1245331 () Bool)

(assert (=> d!1245331 (= (apply!10738 (transformation!7896 r!4353) (seqFromList!5798 (_1!25314 lt!1504506))) (dynLambda!20042 (toValue!10628 (transformation!7896 r!4353)) (seqFromList!5798 (_1!25314 lt!1504506))))))

(declare-fun b_lambda!124589 () Bool)

(assert (=> (not b_lambda!124589) (not d!1245331)))

(assert (=> d!1245331 t!349538))

(declare-fun b_and!334331 () Bool)

(assert (= b_and!334329 (and (=> t!349538 result!309642) b_and!334331)))

(assert (=> d!1245331 m!4818361))

(assert (=> d!1245331 m!4818647))

(assert (=> b!4232141 d!1245331))

(declare-fun d!1245333 () Bool)

(assert (=> d!1245333 (= (isEmpty!27622 (_1!25314 (findLongestMatchInner!1698 (regex!7896 r!4353) Nil!46733 (size!34255 Nil!46733) input!3600 input!3600 (size!34255 input!3600)))) ((_ is Nil!46733) (_1!25314 (findLongestMatchInner!1698 (regex!7896 r!4353) Nil!46733 (size!34255 Nil!46733) input!3600 input!3600 (size!34255 input!3600)))))))

(assert (=> b!4232141 d!1245333))

(assert (=> b!4232141 d!1245235))

(declare-fun d!1245335 () Bool)

(declare-fun lt!1504645 () Int)

(assert (=> d!1245335 (= lt!1504645 (size!34255 (list!16871 (seqFromList!5798 (_1!25314 lt!1504506)))))))

(declare-fun size!34258 (Conc!14107) Int)

(assert (=> d!1245335 (= lt!1504645 (size!34258 (c!719239 (seqFromList!5798 (_1!25314 lt!1504506)))))))

(assert (=> d!1245335 (= (size!34257 (seqFromList!5798 (_1!25314 lt!1504506))) lt!1504645)))

(declare-fun bs!597996 () Bool)

(assert (= bs!597996 d!1245335))

(assert (=> bs!597996 m!4818361))

(assert (=> bs!597996 m!4818651))

(assert (=> bs!597996 m!4818651))

(declare-fun m!4818655 () Bool)

(assert (=> bs!597996 m!4818655))

(declare-fun m!4818657 () Bool)

(assert (=> bs!597996 m!4818657))

(assert (=> b!4232141 d!1245335))

(declare-fun d!1245337 () Bool)

(declare-fun fromListB!2641 (List!46857) BalanceConc!27808)

(assert (=> d!1245337 (= (seqFromList!5798 (_1!25314 lt!1504506)) (fromListB!2641 (_1!25314 lt!1504506)))))

(declare-fun bs!597997 () Bool)

(assert (= bs!597997 d!1245337))

(declare-fun m!4818659 () Bool)

(assert (=> bs!597997 m!4818659))

(assert (=> b!4232141 d!1245337))

(assert (=> b!4232141 d!1245227))

(assert (=> b!4232141 d!1245309))

(assert (=> b!4232152 d!1245227))

(assert (=> b!4232152 d!1245235))

(declare-fun d!1245339 () Bool)

(assert (not d!1245339))

(assert (=> b!4232107 d!1245339))

(assert (=> b!4232140 d!1245247))

(declare-fun d!1245341 () Bool)

(assert (not d!1245341))

(assert (=> b!4232151 d!1245341))

(declare-fun d!1245343 () Bool)

(assert (not d!1245343))

(assert (=> b!4232151 d!1245343))

(declare-fun d!1245345 () Bool)

(assert (=> d!1245345 (= (tail!6820 input!3600) (t!349528 input!3600))))

(assert (=> b!4232151 d!1245345))

(declare-fun d!1245347 () Bool)

(declare-fun nullableFct!1234 (Regex!12801) Bool)

(assert (=> d!1245347 (= (nullable!4510 (reg!13130 (regex!7896 r!4353))) (nullableFct!1234 (reg!13130 (regex!7896 r!4353))))))

(declare-fun bs!597998 () Bool)

(assert (= bs!597998 d!1245347))

(declare-fun m!4818661 () Bool)

(assert (=> bs!597998 m!4818661))

(assert (=> b!4231897 d!1245347))

(declare-fun d!1245349 () Bool)

(assert (not d!1245349))

(assert (=> b!4232150 d!1245349))

(declare-fun d!1245351 () Bool)

(assert (=> d!1245351 (= (head!8973 input!3600) (h!52153 input!3600))))

(assert (=> b!4232150 d!1245351))

(assert (=> bm!293537 d!1245351))

(assert (=> bm!293536 d!1245345))

(declare-fun d!1245353 () Bool)

(assert (=> d!1245353 (= (nullable!4510 (regex!7896 r!4353)) (nullableFct!1234 (regex!7896 r!4353)))))

(declare-fun bs!597999 () Bool)

(assert (= bs!597999 d!1245353))

(declare-fun m!4818663 () Bool)

(assert (=> bs!597999 m!4818663))

(assert (=> bm!293535 d!1245353))

(declare-fun d!1245355 () Bool)

(declare-fun res!1740722 () Bool)

(declare-fun e!2627992 () Bool)

(assert (=> d!1245355 (=> res!1740722 e!2627992)))

(assert (=> d!1245355 (= res!1740722 ((_ is ElementMatch!12801) (ite c!719244 (regTwo!26115 (regex!7896 r!4353)) (regOne!26114 (regex!7896 r!4353)))))))

(assert (=> d!1245355 (= (validRegex!5817 (ite c!719244 (regTwo!26115 (regex!7896 r!4353)) (regOne!26114 (regex!7896 r!4353)))) e!2627992)))

(declare-fun b!4232369 () Bool)

(declare-fun e!2627989 () Bool)

(declare-fun call!293572 () Bool)

(assert (=> b!4232369 (= e!2627989 call!293572)))

(declare-fun bm!293567 () Bool)

(declare-fun c!719355 () Bool)

(declare-fun call!293574 () Bool)

(declare-fun c!719354 () Bool)

(assert (=> bm!293567 (= call!293574 (validRegex!5817 (ite c!719355 (reg!13130 (ite c!719244 (regTwo!26115 (regex!7896 r!4353)) (regOne!26114 (regex!7896 r!4353)))) (ite c!719354 (regOne!26115 (ite c!719244 (regTwo!26115 (regex!7896 r!4353)) (regOne!26114 (regex!7896 r!4353)))) (regTwo!26114 (ite c!719244 (regTwo!26115 (regex!7896 r!4353)) (regOne!26114 (regex!7896 r!4353))))))))))

(declare-fun b!4232370 () Bool)

(declare-fun res!1740721 () Bool)

(declare-fun e!2627990 () Bool)

(assert (=> b!4232370 (=> res!1740721 e!2627990)))

(assert (=> b!4232370 (= res!1740721 (not ((_ is Concat!20928) (ite c!719244 (regTwo!26115 (regex!7896 r!4353)) (regOne!26114 (regex!7896 r!4353))))))))

(declare-fun e!2627987 () Bool)

(assert (=> b!4232370 (= e!2627987 e!2627990)))

(declare-fun b!4232371 () Bool)

(declare-fun e!2627988 () Bool)

(assert (=> b!4232371 (= e!2627988 e!2627987)))

(assert (=> b!4232371 (= c!719354 ((_ is Union!12801) (ite c!719244 (regTwo!26115 (regex!7896 r!4353)) (regOne!26114 (regex!7896 r!4353)))))))

(declare-fun b!4232372 () Bool)

(declare-fun res!1740719 () Bool)

(assert (=> b!4232372 (=> (not res!1740719) (not e!2627989))))

(declare-fun call!293573 () Bool)

(assert (=> b!4232372 (= res!1740719 call!293573)))

(assert (=> b!4232372 (= e!2627987 e!2627989)))

(declare-fun b!4232373 () Bool)

(declare-fun e!2627991 () Bool)

(assert (=> b!4232373 (= e!2627990 e!2627991)))

(declare-fun res!1740720 () Bool)

(assert (=> b!4232373 (=> (not res!1740720) (not e!2627991))))

(assert (=> b!4232373 (= res!1740720 call!293572)))

(declare-fun b!4232374 () Bool)

(assert (=> b!4232374 (= e!2627992 e!2627988)))

(assert (=> b!4232374 (= c!719355 ((_ is Star!12801) (ite c!719244 (regTwo!26115 (regex!7896 r!4353)) (regOne!26114 (regex!7896 r!4353)))))))

(declare-fun bm!293568 () Bool)

(assert (=> bm!293568 (= call!293573 call!293574)))

(declare-fun bm!293569 () Bool)

(assert (=> bm!293569 (= call!293572 (validRegex!5817 (ite c!719354 (regTwo!26115 (ite c!719244 (regTwo!26115 (regex!7896 r!4353)) (regOne!26114 (regex!7896 r!4353)))) (regOne!26114 (ite c!719244 (regTwo!26115 (regex!7896 r!4353)) (regOne!26114 (regex!7896 r!4353)))))))))

(declare-fun b!4232375 () Bool)

(declare-fun e!2627986 () Bool)

(assert (=> b!4232375 (= e!2627986 call!293574)))

(declare-fun b!4232376 () Bool)

(assert (=> b!4232376 (= e!2627991 call!293573)))

(declare-fun b!4232377 () Bool)

(assert (=> b!4232377 (= e!2627988 e!2627986)))

(declare-fun res!1740723 () Bool)

(assert (=> b!4232377 (= res!1740723 (not (nullable!4510 (reg!13130 (ite c!719244 (regTwo!26115 (regex!7896 r!4353)) (regOne!26114 (regex!7896 r!4353)))))))))

(assert (=> b!4232377 (=> (not res!1740723) (not e!2627986))))

(assert (= (and d!1245355 (not res!1740722)) b!4232374))

(assert (= (and b!4232374 c!719355) b!4232377))

(assert (= (and b!4232374 (not c!719355)) b!4232371))

(assert (= (and b!4232377 res!1740723) b!4232375))

(assert (= (and b!4232371 c!719354) b!4232372))

(assert (= (and b!4232371 (not c!719354)) b!4232370))

(assert (= (and b!4232372 res!1740719) b!4232369))

(assert (= (and b!4232370 (not res!1740721)) b!4232373))

(assert (= (and b!4232373 res!1740720) b!4232376))

(assert (= (or b!4232369 b!4232373) bm!293569))

(assert (= (or b!4232372 b!4232376) bm!293568))

(assert (= (or b!4232375 bm!293568) bm!293567))

(declare-fun m!4818665 () Bool)

(assert (=> bm!293567 m!4818665))

(declare-fun m!4818667 () Bool)

(assert (=> bm!293569 m!4818667))

(declare-fun m!4818669 () Bool)

(assert (=> b!4232377 m!4818669))

(assert (=> bm!293486 d!1245355))

(declare-fun b!4232378 () Bool)

(declare-fun e!2627996 () tuple2!44360)

(assert (=> b!4232378 (= e!2627996 (tuple2!44361 Nil!46733 input!3600))))

(declare-fun b!4232379 () Bool)

(declare-fun e!2627994 () Unit!65866)

(declare-fun Unit!65877 () Unit!65866)

(assert (=> b!4232379 (= e!2627994 Unit!65877)))

(declare-fun b!4232380 () Bool)

(declare-fun e!2627995 () tuple2!44360)

(assert (=> b!4232380 (= e!2627995 (tuple2!44361 lt!1504462 call!293539))))

(declare-fun b!4232381 () Bool)

(declare-fun c!719357 () Bool)

(declare-fun call!293582 () Bool)

(assert (=> b!4232381 (= c!719357 call!293582)))

(declare-fun lt!1504668 () Unit!65866)

(declare-fun lt!1504661 () Unit!65866)

(assert (=> b!4232381 (= lt!1504668 lt!1504661)))

(assert (=> b!4232381 (= input!3600 lt!1504462)))

(declare-fun call!293578 () Unit!65866)

(assert (=> b!4232381 (= lt!1504661 call!293578)))

(declare-fun lt!1504665 () Unit!65866)

(declare-fun lt!1504660 () Unit!65866)

(assert (=> b!4232381 (= lt!1504665 lt!1504660)))

(declare-fun call!293579 () Bool)

(assert (=> b!4232381 call!293579))

(declare-fun call!293577 () Unit!65866)

(assert (=> b!4232381 (= lt!1504660 call!293577)))

(declare-fun e!2627999 () tuple2!44360)

(declare-fun e!2627998 () tuple2!44360)

(assert (=> b!4232381 (= e!2627999 e!2627998)))

(declare-fun b!4232382 () Bool)

(assert (=> b!4232382 (= e!2627998 (tuple2!44361 Nil!46733 input!3600))))

(declare-fun b!4232383 () Bool)

(declare-fun c!719361 () Bool)

(assert (=> b!4232383 (= c!719361 call!293582)))

(declare-fun lt!1504653 () Unit!65866)

(declare-fun lt!1504669 () Unit!65866)

(assert (=> b!4232383 (= lt!1504653 lt!1504669)))

(declare-fun lt!1504649 () List!46857)

(declare-fun lt!1504646 () C!25800)

(assert (=> b!4232383 (= (++!11917 (++!11917 lt!1504462 (Cons!46733 lt!1504646 Nil!46733)) lt!1504649) input!3600)))

(assert (=> b!4232383 (= lt!1504669 (lemmaMoveElementToOtherListKeepsConcatEq!1307 lt!1504462 lt!1504646 lt!1504649 input!3600))))

(assert (=> b!4232383 (= lt!1504649 (tail!6820 call!293539))))

(assert (=> b!4232383 (= lt!1504646 (head!8973 call!293539))))

(declare-fun lt!1504671 () Unit!65866)

(declare-fun lt!1504667 () Unit!65866)

(assert (=> b!4232383 (= lt!1504671 lt!1504667)))

(assert (=> b!4232383 (isPrefix!4711 (++!11917 lt!1504462 (Cons!46733 (head!8973 (getSuffix!2864 input!3600 lt!1504462)) Nil!46733)) input!3600)))

(assert (=> b!4232383 (= lt!1504667 (lemmaAddHeadSuffixToPrefixStillPrefix!689 lt!1504462 input!3600))))

(declare-fun lt!1504655 () Unit!65866)

(declare-fun lt!1504670 () Unit!65866)

(assert (=> b!4232383 (= lt!1504655 lt!1504670)))

(assert (=> b!4232383 (= lt!1504670 (lemmaAddHeadSuffixToPrefixStillPrefix!689 lt!1504462 input!3600))))

(declare-fun lt!1504651 () List!46857)

(assert (=> b!4232383 (= lt!1504651 (++!11917 lt!1504462 (Cons!46733 (head!8973 call!293539) Nil!46733)))))

(declare-fun lt!1504650 () Unit!65866)

(assert (=> b!4232383 (= lt!1504650 e!2627994)))

(declare-fun c!719356 () Bool)

(assert (=> b!4232383 (= c!719356 (= (size!34255 lt!1504462) (size!34255 input!3600)))))

(declare-fun lt!1504657 () Unit!65866)

(declare-fun lt!1504654 () Unit!65866)

(assert (=> b!4232383 (= lt!1504657 lt!1504654)))

(assert (=> b!4232383 (<= (size!34255 lt!1504462) (size!34255 input!3600))))

(assert (=> b!4232383 (= lt!1504654 (lemmaIsPrefixThenSmallerEqSize!601 lt!1504462 input!3600))))

(declare-fun e!2627993 () tuple2!44360)

(assert (=> b!4232383 (= e!2627999 e!2627993)))

(declare-fun b!4232384 () Bool)

(declare-fun e!2627997 () Bool)

(declare-fun lt!1504673 () tuple2!44360)

(assert (=> b!4232384 (= e!2627997 (>= (size!34255 (_1!25314 lt!1504673)) (size!34255 lt!1504462)))))

(declare-fun bm!293570 () Bool)

(assert (=> bm!293570 (= call!293577 (lemmaIsPrefixRefl!3108 input!3600 input!3600))))

(declare-fun bm!293572 () Bool)

(assert (=> bm!293572 (= call!293582 (nullable!4510 call!293543))))

(declare-fun bm!293573 () Bool)

(declare-fun call!293576 () List!46857)

(assert (=> bm!293573 (= call!293576 (tail!6820 call!293539))))

(declare-fun bm!293574 () Bool)

(declare-fun call!293581 () C!25800)

(assert (=> bm!293574 (= call!293581 (head!8973 call!293539))))

(declare-fun b!4232385 () Bool)

(declare-fun lt!1504664 () tuple2!44360)

(assert (=> b!4232385 (= e!2627995 lt!1504664)))

(declare-fun b!4232386 () Bool)

(assert (=> b!4232386 (= e!2627998 (tuple2!44361 lt!1504462 Nil!46733))))

(declare-fun bm!293575 () Bool)

(assert (=> bm!293575 (= call!293578 (lemmaIsPrefixSameLengthThenSameList!1035 input!3600 lt!1504462 input!3600))))

(declare-fun b!4232387 () Bool)

(declare-fun call!293575 () tuple2!44360)

(assert (=> b!4232387 (= e!2627993 call!293575)))

(declare-fun b!4232388 () Bool)

(assert (=> b!4232388 (= e!2627993 e!2627995)))

(assert (=> b!4232388 (= lt!1504664 call!293575)))

(declare-fun c!719358 () Bool)

(assert (=> b!4232388 (= c!719358 (isEmpty!27622 (_1!25314 lt!1504664)))))

(declare-fun bm!293576 () Bool)

(assert (=> bm!293576 (= call!293579 (isPrefix!4711 input!3600 input!3600))))

(declare-fun b!4232389 () Bool)

(declare-fun Unit!65878 () Unit!65866)

(assert (=> b!4232389 (= e!2627994 Unit!65878)))

(declare-fun lt!1504666 () Unit!65866)

(assert (=> b!4232389 (= lt!1504666 call!293577)))

(assert (=> b!4232389 call!293579))

(declare-fun lt!1504672 () Unit!65866)

(assert (=> b!4232389 (= lt!1504672 lt!1504666)))

(declare-fun lt!1504658 () Unit!65866)

(assert (=> b!4232389 (= lt!1504658 call!293578)))

(assert (=> b!4232389 (= input!3600 lt!1504462)))

(declare-fun lt!1504652 () Unit!65866)

(assert (=> b!4232389 (= lt!1504652 lt!1504658)))

(assert (=> b!4232389 false))

(declare-fun bm!293577 () Bool)

(declare-fun call!293580 () Regex!12801)

(assert (=> bm!293577 (= call!293580 (derivativeStep!3843 call!293543 call!293581))))

(declare-fun bm!293571 () Bool)

(assert (=> bm!293571 (= call!293575 (findLongestMatchInner!1698 call!293580 lt!1504651 (+ lt!1504291 1 1) call!293576 input!3600 (size!34255 input!3600)))))

(declare-fun d!1245357 () Bool)

(declare-fun e!2628000 () Bool)

(assert (=> d!1245357 e!2628000))

(declare-fun res!1740725 () Bool)

(assert (=> d!1245357 (=> (not res!1740725) (not e!2628000))))

(assert (=> d!1245357 (= res!1740725 (= (++!11917 (_1!25314 lt!1504673) (_2!25314 lt!1504673)) input!3600))))

(assert (=> d!1245357 (= lt!1504673 e!2627996)))

(declare-fun c!719359 () Bool)

(assert (=> d!1245357 (= c!719359 (lostCause!1063 call!293543))))

(declare-fun lt!1504647 () Unit!65866)

(declare-fun Unit!65879 () Unit!65866)

(assert (=> d!1245357 (= lt!1504647 Unit!65879)))

(assert (=> d!1245357 (= (getSuffix!2864 input!3600 lt!1504462) call!293539)))

(declare-fun lt!1504656 () Unit!65866)

(declare-fun lt!1504663 () Unit!65866)

(assert (=> d!1245357 (= lt!1504656 lt!1504663)))

(declare-fun lt!1504648 () List!46857)

(assert (=> d!1245357 (= call!293539 lt!1504648)))

(assert (=> d!1245357 (= lt!1504663 (lemmaSamePrefixThenSameSuffix!2280 lt!1504462 call!293539 lt!1504462 lt!1504648 input!3600))))

(assert (=> d!1245357 (= lt!1504648 (getSuffix!2864 input!3600 lt!1504462))))

(declare-fun lt!1504662 () Unit!65866)

(declare-fun lt!1504659 () Unit!65866)

(assert (=> d!1245357 (= lt!1504662 lt!1504659)))

(assert (=> d!1245357 (isPrefix!4711 lt!1504462 (++!11917 lt!1504462 call!293539))))

(assert (=> d!1245357 (= lt!1504659 (lemmaConcatTwoListThenFirstIsPrefix!3100 lt!1504462 call!293539))))

(assert (=> d!1245357 (validRegex!5817 call!293543)))

(assert (=> d!1245357 (= (findLongestMatchInner!1698 call!293543 lt!1504462 (+ lt!1504291 1) call!293539 input!3600 (size!34255 input!3600)) lt!1504673)))

(declare-fun b!4232390 () Bool)

(assert (=> b!4232390 (= e!2627996 e!2627999)))

(declare-fun c!719360 () Bool)

(assert (=> b!4232390 (= c!719360 (= (+ lt!1504291 1) (size!34255 input!3600)))))

(declare-fun b!4232391 () Bool)

(assert (=> b!4232391 (= e!2628000 e!2627997)))

(declare-fun res!1740724 () Bool)

(assert (=> b!4232391 (=> res!1740724 e!2627997)))

(assert (=> b!4232391 (= res!1740724 (isEmpty!27622 (_1!25314 lt!1504673)))))

(assert (= (and d!1245357 c!719359) b!4232378))

(assert (= (and d!1245357 (not c!719359)) b!4232390))

(assert (= (and b!4232390 c!719360) b!4232381))

(assert (= (and b!4232390 (not c!719360)) b!4232383))

(assert (= (and b!4232381 c!719357) b!4232386))

(assert (= (and b!4232381 (not c!719357)) b!4232382))

(assert (= (and b!4232383 c!719356) b!4232389))

(assert (= (and b!4232383 (not c!719356)) b!4232379))

(assert (= (and b!4232383 c!719361) b!4232388))

(assert (= (and b!4232383 (not c!719361)) b!4232387))

(assert (= (and b!4232388 c!719358) b!4232380))

(assert (= (and b!4232388 (not c!719358)) b!4232385))

(assert (= (or b!4232388 b!4232387) bm!293574))

(assert (= (or b!4232388 b!4232387) bm!293573))

(assert (= (or b!4232388 b!4232387) bm!293577))

(assert (= (or b!4232388 b!4232387) bm!293571))

(assert (= (or b!4232381 b!4232389) bm!293575))

(assert (= (or b!4232381 b!4232389) bm!293570))

(assert (= (or b!4232381 b!4232389) bm!293576))

(assert (= (or b!4232381 b!4232383) bm!293572))

(assert (= (and d!1245357 res!1740725) b!4232391))

(assert (= (and b!4232391 (not res!1740724)) b!4232384))

(declare-fun m!4818671 () Bool)

(assert (=> d!1245357 m!4818671))

(declare-fun m!4818673 () Bool)

(assert (=> d!1245357 m!4818673))

(declare-fun m!4818675 () Bool)

(assert (=> d!1245357 m!4818675))

(declare-fun m!4818677 () Bool)

(assert (=> d!1245357 m!4818677))

(declare-fun m!4818679 () Bool)

(assert (=> d!1245357 m!4818679))

(declare-fun m!4818681 () Bool)

(assert (=> d!1245357 m!4818681))

(assert (=> d!1245357 m!4818675))

(declare-fun m!4818683 () Bool)

(assert (=> d!1245357 m!4818683))

(declare-fun m!4818685 () Bool)

(assert (=> d!1245357 m!4818685))

(declare-fun m!4818687 () Bool)

(assert (=> b!4232384 m!4818687))

(declare-fun m!4818689 () Bool)

(assert (=> b!4232384 m!4818689))

(declare-fun m!4818691 () Bool)

(assert (=> bm!293573 m!4818691))

(assert (=> bm!293576 m!4818309))

(declare-fun m!4818693 () Bool)

(assert (=> b!4232391 m!4818693))

(declare-fun m!4818695 () Bool)

(assert (=> bm!293574 m!4818695))

(declare-fun m!4818697 () Bool)

(assert (=> bm!293577 m!4818697))

(assert (=> bm!293570 m!4818317))

(assert (=> bm!293571 m!4818155))

(declare-fun m!4818699 () Bool)

(assert (=> bm!293571 m!4818699))

(declare-fun m!4818701 () Bool)

(assert (=> bm!293575 m!4818701))

(assert (=> b!4232383 m!4818155))

(assert (=> b!4232383 m!4818689))

(declare-fun m!4818703 () Bool)

(assert (=> b!4232383 m!4818703))

(assert (=> b!4232383 m!4818691))

(declare-fun m!4818705 () Bool)

(assert (=> b!4232383 m!4818705))

(assert (=> b!4232383 m!4818695))

(assert (=> b!4232383 m!4818681))

(assert (=> b!4232383 m!4818703))

(declare-fun m!4818707 () Bool)

(assert (=> b!4232383 m!4818707))

(declare-fun m!4818709 () Bool)

(assert (=> b!4232383 m!4818709))

(declare-fun m!4818711 () Bool)

(assert (=> b!4232383 m!4818711))

(assert (=> b!4232383 m!4818709))

(declare-fun m!4818713 () Bool)

(assert (=> b!4232383 m!4818713))

(declare-fun m!4818715 () Bool)

(assert (=> b!4232383 m!4818715))

(assert (=> b!4232383 m!4818681))

(declare-fun m!4818717 () Bool)

(assert (=> b!4232383 m!4818717))

(declare-fun m!4818719 () Bool)

(assert (=> b!4232383 m!4818719))

(declare-fun m!4818721 () Bool)

(assert (=> b!4232388 m!4818721))

(declare-fun m!4818723 () Bool)

(assert (=> bm!293572 m!4818723))

(assert (=> bm!293534 d!1245357))

(declare-fun d!1245359 () Bool)

(assert (=> d!1245359 (isPrefix!4711 input!3600 input!3600)))

(declare-fun lt!1504676 () Unit!65866)

(declare-fun choose!25915 (List!46857 List!46857) Unit!65866)

(assert (=> d!1245359 (= lt!1504676 (choose!25915 input!3600 input!3600))))

(assert (=> d!1245359 (= (lemmaIsPrefixRefl!3108 input!3600 input!3600) lt!1504676)))

(declare-fun bs!598000 () Bool)

(assert (= bs!598000 d!1245359))

(assert (=> bs!598000 m!4818309))

(declare-fun m!4818725 () Bool)

(assert (=> bs!598000 m!4818725))

(assert (=> bm!293533 d!1245359))

(declare-fun d!1245361 () Bool)

(declare-fun lt!1504677 () Int)

(assert (=> d!1245361 (>= lt!1504677 0)))

(declare-fun e!2628001 () Int)

(assert (=> d!1245361 (= lt!1504677 e!2628001)))

(declare-fun c!719362 () Bool)

(assert (=> d!1245361 (= c!719362 ((_ is Nil!46733) (_1!25314 lt!1504484)))))

(assert (=> d!1245361 (= (size!34255 (_1!25314 lt!1504484)) lt!1504677)))

(declare-fun b!4232392 () Bool)

(assert (=> b!4232392 (= e!2628001 0)))

(declare-fun b!4232393 () Bool)

(assert (=> b!4232393 (= e!2628001 (+ 1 (size!34255 (t!349528 (_1!25314 lt!1504484)))))))

(assert (= (and d!1245361 c!719362) b!4232392))

(assert (= (and d!1245361 (not c!719362)) b!4232393))

(declare-fun m!4818727 () Bool)

(assert (=> b!4232393 m!4818727))

(assert (=> b!4232054 d!1245361))

(assert (=> b!4232054 d!1245235))

(assert (=> d!1245233 d!1245203))

(declare-fun d!1245363 () Bool)

(declare-fun e!2628011 () Bool)

(assert (=> d!1245363 e!2628011))

(declare-fun res!1740731 () Bool)

(assert (=> d!1245363 (=> (not res!1740731) (not e!2628011))))

(declare-fun lt!1504681 () List!46857)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7339 (List!46857) (InoxSet C!25800))

(assert (=> d!1245363 (= res!1740731 (= (content!7339 lt!1504681) ((_ map or) (content!7339 Nil!46733) (content!7339 (Cons!46733 (head!8973 input!3600) Nil!46733)))))))

(declare-fun e!2628012 () List!46857)

(assert (=> d!1245363 (= lt!1504681 e!2628012)))

(declare-fun c!719365 () Bool)

(assert (=> d!1245363 (= c!719365 ((_ is Nil!46733) Nil!46733))))

(assert (=> d!1245363 (= (++!11917 Nil!46733 (Cons!46733 (head!8973 input!3600) Nil!46733)) lt!1504681)))

(declare-fun b!4232409 () Bool)

(assert (=> b!4232409 (= e!2628012 (Cons!46733 (h!52153 Nil!46733) (++!11917 (t!349528 Nil!46733) (Cons!46733 (head!8973 input!3600) Nil!46733))))))

(declare-fun b!4232410 () Bool)

(declare-fun res!1740730 () Bool)

(assert (=> b!4232410 (=> (not res!1740730) (not e!2628011))))

(assert (=> b!4232410 (= res!1740730 (= (size!34255 lt!1504681) (+ (size!34255 Nil!46733) (size!34255 (Cons!46733 (head!8973 input!3600) Nil!46733)))))))

(declare-fun b!4232411 () Bool)

(assert (=> b!4232411 (= e!2628011 (or (not (= (Cons!46733 (head!8973 input!3600) Nil!46733) Nil!46733)) (= lt!1504681 Nil!46733)))))

(declare-fun b!4232408 () Bool)

(assert (=> b!4232408 (= e!2628012 (Cons!46733 (head!8973 input!3600) Nil!46733))))

(assert (= (and d!1245363 c!719365) b!4232408))

(assert (= (and d!1245363 (not c!719365)) b!4232409))

(assert (= (and d!1245363 res!1740731) b!4232410))

(assert (= (and b!4232410 res!1740730) b!4232411))

(declare-fun m!4818743 () Bool)

(assert (=> d!1245363 m!4818743))

(declare-fun m!4818745 () Bool)

(assert (=> d!1245363 m!4818745))

(declare-fun m!4818747 () Bool)

(assert (=> d!1245363 m!4818747))

(declare-fun m!4818749 () Bool)

(assert (=> b!4232409 m!4818749))

(declare-fun m!4818751 () Bool)

(assert (=> b!4232410 m!4818751))

(assert (=> b!4232410 m!4818143))

(declare-fun m!4818753 () Bool)

(assert (=> b!4232410 m!4818753))

(assert (=> b!4232053 d!1245363))

(declare-fun d!1245369 () Bool)

(declare-fun e!2628021 () Bool)

(assert (=> d!1245369 e!2628021))

(declare-fun res!1740735 () Bool)

(assert (=> d!1245369 (=> (not res!1740735) (not e!2628021))))

(declare-fun lt!1504710 () List!46857)

(assert (=> d!1245369 (= res!1740735 (= (content!7339 lt!1504710) ((_ map or) (content!7339 Nil!46733) (content!7339 (Cons!46733 lt!1504457 Nil!46733)))))))

(declare-fun e!2628022 () List!46857)

(assert (=> d!1245369 (= lt!1504710 e!2628022)))

(declare-fun c!719372 () Bool)

(assert (=> d!1245369 (= c!719372 ((_ is Nil!46733) Nil!46733))))

(assert (=> d!1245369 (= (++!11917 Nil!46733 (Cons!46733 lt!1504457 Nil!46733)) lt!1504710)))

(declare-fun b!4232427 () Bool)

(assert (=> b!4232427 (= e!2628022 (Cons!46733 (h!52153 Nil!46733) (++!11917 (t!349528 Nil!46733) (Cons!46733 lt!1504457 Nil!46733))))))

(declare-fun b!4232428 () Bool)

(declare-fun res!1740734 () Bool)

(assert (=> b!4232428 (=> (not res!1740734) (not e!2628021))))

(assert (=> b!4232428 (= res!1740734 (= (size!34255 lt!1504710) (+ (size!34255 Nil!46733) (size!34255 (Cons!46733 lt!1504457 Nil!46733)))))))

(declare-fun b!4232429 () Bool)

(assert (=> b!4232429 (= e!2628021 (or (not (= (Cons!46733 lt!1504457 Nil!46733) Nil!46733)) (= lt!1504710 Nil!46733)))))

(declare-fun b!4232426 () Bool)

(assert (=> b!4232426 (= e!2628022 (Cons!46733 lt!1504457 Nil!46733))))

(assert (= (and d!1245369 c!719372) b!4232426))

(assert (= (and d!1245369 (not c!719372)) b!4232427))

(assert (= (and d!1245369 res!1740735) b!4232428))

(assert (= (and b!4232428 res!1740734) b!4232429))

(declare-fun m!4818755 () Bool)

(assert (=> d!1245369 m!4818755))

(assert (=> d!1245369 m!4818745))

(declare-fun m!4818757 () Bool)

(assert (=> d!1245369 m!4818757))

(declare-fun m!4818759 () Bool)

(assert (=> b!4232427 m!4818759))

(declare-fun m!4818761 () Bool)

(assert (=> b!4232428 m!4818761))

(assert (=> b!4232428 m!4818143))

(declare-fun m!4818763 () Bool)

(assert (=> b!4232428 m!4818763))

(assert (=> b!4232053 d!1245369))

(assert (=> b!4232053 d!1245227))

(assert (=> b!4232053 d!1245345))

(declare-fun d!1245371 () Bool)

(assert (=> d!1245371 (= (head!8973 (getSuffix!2864 input!3600 Nil!46733)) (h!52153 (getSuffix!2864 input!3600 Nil!46733)))))

(assert (=> b!4232053 d!1245371))

(declare-fun d!1245373 () Bool)

(declare-fun lt!1504714 () List!46857)

(assert (=> d!1245373 (= (++!11917 Nil!46733 lt!1504714) input!3600)))

(declare-fun e!2628026 () List!46857)

(assert (=> d!1245373 (= lt!1504714 e!2628026)))

(declare-fun c!719376 () Bool)

(assert (=> d!1245373 (= c!719376 ((_ is Cons!46733) Nil!46733))))

(assert (=> d!1245373 (>= (size!34255 input!3600) (size!34255 Nil!46733))))

(assert (=> d!1245373 (= (getSuffix!2864 input!3600 Nil!46733) lt!1504714)))

(declare-fun b!4232436 () Bool)

(assert (=> b!4232436 (= e!2628026 (getSuffix!2864 (tail!6820 input!3600) (t!349528 Nil!46733)))))

(declare-fun b!4232437 () Bool)

(assert (=> b!4232437 (= e!2628026 input!3600)))

(assert (= (and d!1245373 c!719376) b!4232436))

(assert (= (and d!1245373 (not c!719376)) b!4232437))

(declare-fun m!4818787 () Bool)

(assert (=> d!1245373 m!4818787))

(assert (=> d!1245373 m!4818155))

(assert (=> d!1245373 m!4818143))

(assert (=> b!4232436 m!4818307))

(assert (=> b!4232436 m!4818307))

(declare-fun m!4818789 () Bool)

(assert (=> b!4232436 m!4818789))

(assert (=> b!4232053 d!1245373))

(declare-fun b!4232440 () Bool)

(declare-fun e!2628028 () Bool)

(assert (=> b!4232440 (= e!2628028 (isPrefix!4711 (tail!6820 (++!11917 Nil!46733 (Cons!46733 (head!8973 (getSuffix!2864 input!3600 Nil!46733)) Nil!46733))) (tail!6820 input!3600)))))

(declare-fun b!4232438 () Bool)

(declare-fun e!2628029 () Bool)

(assert (=> b!4232438 (= e!2628029 e!2628028)))

(declare-fun res!1740737 () Bool)

(assert (=> b!4232438 (=> (not res!1740737) (not e!2628028))))

(assert (=> b!4232438 (= res!1740737 (not ((_ is Nil!46733) input!3600)))))

(declare-fun b!4232439 () Bool)

(declare-fun res!1740739 () Bool)

(assert (=> b!4232439 (=> (not res!1740739) (not e!2628028))))

(assert (=> b!4232439 (= res!1740739 (= (head!8973 (++!11917 Nil!46733 (Cons!46733 (head!8973 (getSuffix!2864 input!3600 Nil!46733)) Nil!46733))) (head!8973 input!3600)))))

(declare-fun b!4232441 () Bool)

(declare-fun e!2628027 () Bool)

(assert (=> b!4232441 (= e!2628027 (>= (size!34255 input!3600) (size!34255 (++!11917 Nil!46733 (Cons!46733 (head!8973 (getSuffix!2864 input!3600 Nil!46733)) Nil!46733)))))))

(declare-fun d!1245381 () Bool)

(assert (=> d!1245381 e!2628027))

(declare-fun res!1740738 () Bool)

(assert (=> d!1245381 (=> res!1740738 e!2628027)))

(declare-fun lt!1504715 () Bool)

(assert (=> d!1245381 (= res!1740738 (not lt!1504715))))

(assert (=> d!1245381 (= lt!1504715 e!2628029)))

(declare-fun res!1740736 () Bool)

(assert (=> d!1245381 (=> res!1740736 e!2628029)))

(assert (=> d!1245381 (= res!1740736 ((_ is Nil!46733) (++!11917 Nil!46733 (Cons!46733 (head!8973 (getSuffix!2864 input!3600 Nil!46733)) Nil!46733))))))

(assert (=> d!1245381 (= (isPrefix!4711 (++!11917 Nil!46733 (Cons!46733 (head!8973 (getSuffix!2864 input!3600 Nil!46733)) Nil!46733)) input!3600) lt!1504715)))

(assert (= (and d!1245381 (not res!1740736)) b!4232438))

(assert (= (and b!4232438 res!1740737) b!4232439))

(assert (= (and b!4232439 res!1740739) b!4232440))

(assert (= (and d!1245381 (not res!1740738)) b!4232441))

(assert (=> b!4232440 m!4818329))

(declare-fun m!4818791 () Bool)

(assert (=> b!4232440 m!4818791))

(assert (=> b!4232440 m!4818307))

(assert (=> b!4232440 m!4818791))

(assert (=> b!4232440 m!4818307))

(declare-fun m!4818793 () Bool)

(assert (=> b!4232440 m!4818793))

(assert (=> b!4232439 m!4818329))

(declare-fun m!4818795 () Bool)

(assert (=> b!4232439 m!4818795))

(assert (=> b!4232439 m!4818313))

(assert (=> b!4232441 m!4818155))

(assert (=> b!4232441 m!4818329))

(declare-fun m!4818797 () Bool)

(assert (=> b!4232441 m!4818797))

(assert (=> b!4232053 d!1245381))

(declare-fun d!1245383 () Bool)

(assert (=> d!1245383 (= (++!11917 (++!11917 Nil!46733 (Cons!46733 lt!1504457 Nil!46733)) lt!1504460) input!3600)))

(declare-fun lt!1504718 () Unit!65866)

(declare-fun choose!25916 (List!46857 C!25800 List!46857 List!46857) Unit!65866)

(assert (=> d!1245383 (= lt!1504718 (choose!25916 Nil!46733 lt!1504457 lt!1504460 input!3600))))

(assert (=> d!1245383 (= (++!11917 Nil!46733 (Cons!46733 lt!1504457 lt!1504460)) input!3600)))

(assert (=> d!1245383 (= (lemmaMoveElementToOtherListKeepsConcatEq!1307 Nil!46733 lt!1504457 lt!1504460 input!3600) lt!1504718)))

(declare-fun bs!598001 () Bool)

(assert (= bs!598001 d!1245383))

(assert (=> bs!598001 m!4818323))

(assert (=> bs!598001 m!4818323))

(assert (=> bs!598001 m!4818327))

(declare-fun m!4818801 () Bool)

(assert (=> bs!598001 m!4818801))

(declare-fun m!4818803 () Bool)

(assert (=> bs!598001 m!4818803))

(assert (=> b!4232053 d!1245383))

(declare-fun d!1245387 () Bool)

(assert (=> d!1245387 (isPrefix!4711 (++!11917 Nil!46733 (Cons!46733 (head!8973 (getSuffix!2864 input!3600 Nil!46733)) Nil!46733)) input!3600)))

(declare-fun lt!1504721 () Unit!65866)

(declare-fun choose!25917 (List!46857 List!46857) Unit!65866)

(assert (=> d!1245387 (= lt!1504721 (choose!25917 Nil!46733 input!3600))))

(assert (=> d!1245387 (isPrefix!4711 Nil!46733 input!3600)))

(assert (=> d!1245387 (= (lemmaAddHeadSuffixToPrefixStillPrefix!689 Nil!46733 input!3600) lt!1504721)))

(declare-fun bs!598003 () Bool)

(assert (= bs!598003 d!1245387))

(assert (=> bs!598003 m!4818299))

(assert (=> bs!598003 m!4818337))

(assert (=> bs!598003 m!4818149))

(declare-fun m!4818805 () Bool)

(assert (=> bs!598003 m!4818805))

(assert (=> bs!598003 m!4818299))

(assert (=> bs!598003 m!4818329))

(assert (=> bs!598003 m!4818333))

(assert (=> bs!598003 m!4818329))

(assert (=> b!4232053 d!1245387))

(declare-fun d!1245393 () Bool)

(declare-fun e!2628032 () Bool)

(assert (=> d!1245393 e!2628032))

(declare-fun res!1740743 () Bool)

(assert (=> d!1245393 (=> (not res!1740743) (not e!2628032))))

(declare-fun lt!1504722 () List!46857)

(assert (=> d!1245393 (= res!1740743 (= (content!7339 lt!1504722) ((_ map or) (content!7339 (++!11917 Nil!46733 (Cons!46733 lt!1504457 Nil!46733))) (content!7339 lt!1504460))))))

(declare-fun e!2628033 () List!46857)

(assert (=> d!1245393 (= lt!1504722 e!2628033)))

(declare-fun c!719377 () Bool)

(assert (=> d!1245393 (= c!719377 ((_ is Nil!46733) (++!11917 Nil!46733 (Cons!46733 lt!1504457 Nil!46733))))))

(assert (=> d!1245393 (= (++!11917 (++!11917 Nil!46733 (Cons!46733 lt!1504457 Nil!46733)) lt!1504460) lt!1504722)))

(declare-fun b!4232447 () Bool)

(assert (=> b!4232447 (= e!2628033 (Cons!46733 (h!52153 (++!11917 Nil!46733 (Cons!46733 lt!1504457 Nil!46733))) (++!11917 (t!349528 (++!11917 Nil!46733 (Cons!46733 lt!1504457 Nil!46733))) lt!1504460)))))

(declare-fun b!4232448 () Bool)

(declare-fun res!1740742 () Bool)

(assert (=> b!4232448 (=> (not res!1740742) (not e!2628032))))

(assert (=> b!4232448 (= res!1740742 (= (size!34255 lt!1504722) (+ (size!34255 (++!11917 Nil!46733 (Cons!46733 lt!1504457 Nil!46733))) (size!34255 lt!1504460))))))

(declare-fun b!4232449 () Bool)

(assert (=> b!4232449 (= e!2628032 (or (not (= lt!1504460 Nil!46733)) (= lt!1504722 (++!11917 Nil!46733 (Cons!46733 lt!1504457 Nil!46733)))))))

(declare-fun b!4232446 () Bool)

(assert (=> b!4232446 (= e!2628033 lt!1504460)))

(assert (= (and d!1245393 c!719377) b!4232446))

(assert (= (and d!1245393 (not c!719377)) b!4232447))

(assert (= (and d!1245393 res!1740743) b!4232448))

(assert (= (and b!4232448 res!1740742) b!4232449))

(declare-fun m!4818807 () Bool)

(assert (=> d!1245393 m!4818807))

(assert (=> d!1245393 m!4818323))

(declare-fun m!4818809 () Bool)

(assert (=> d!1245393 m!4818809))

(declare-fun m!4818811 () Bool)

(assert (=> d!1245393 m!4818811))

(declare-fun m!4818813 () Bool)

(assert (=> b!4232447 m!4818813))

(declare-fun m!4818815 () Bool)

(assert (=> b!4232448 m!4818815))

(assert (=> b!4232448 m!4818323))

(declare-fun m!4818817 () Bool)

(assert (=> b!4232448 m!4818817))

(declare-fun m!4818819 () Bool)

(assert (=> b!4232448 m!4818819))

(assert (=> b!4232053 d!1245393))

(declare-fun d!1245395 () Bool)

(assert (=> d!1245395 (<= (size!34255 Nil!46733) (size!34255 input!3600))))

(declare-fun lt!1504725 () Unit!65866)

(declare-fun choose!25918 (List!46857 List!46857) Unit!65866)

(assert (=> d!1245395 (= lt!1504725 (choose!25918 Nil!46733 input!3600))))

(assert (=> d!1245395 (isPrefix!4711 Nil!46733 input!3600)))

(assert (=> d!1245395 (= (lemmaIsPrefixThenSmallerEqSize!601 Nil!46733 input!3600) lt!1504725)))

(declare-fun bs!598004 () Bool)

(assert (= bs!598004 d!1245395))

(assert (=> bs!598004 m!4818143))

(assert (=> bs!598004 m!4818155))

(declare-fun m!4818821 () Bool)

(assert (=> bs!598004 m!4818821))

(assert (=> bs!598004 m!4818149))

(assert (=> b!4232053 d!1245395))

(declare-fun d!1245397 () Bool)

(declare-fun e!2628034 () Bool)

(assert (=> d!1245397 e!2628034))

(declare-fun res!1740745 () Bool)

(assert (=> d!1245397 (=> (not res!1740745) (not e!2628034))))

(declare-fun lt!1504726 () List!46857)

(assert (=> d!1245397 (= res!1740745 (= (content!7339 lt!1504726) ((_ map or) (content!7339 Nil!46733) (content!7339 (Cons!46733 (head!8973 (getSuffix!2864 input!3600 Nil!46733)) Nil!46733)))))))

(declare-fun e!2628035 () List!46857)

(assert (=> d!1245397 (= lt!1504726 e!2628035)))

(declare-fun c!719378 () Bool)

(assert (=> d!1245397 (= c!719378 ((_ is Nil!46733) Nil!46733))))

(assert (=> d!1245397 (= (++!11917 Nil!46733 (Cons!46733 (head!8973 (getSuffix!2864 input!3600 Nil!46733)) Nil!46733)) lt!1504726)))

(declare-fun b!4232451 () Bool)

(assert (=> b!4232451 (= e!2628035 (Cons!46733 (h!52153 Nil!46733) (++!11917 (t!349528 Nil!46733) (Cons!46733 (head!8973 (getSuffix!2864 input!3600 Nil!46733)) Nil!46733))))))

(declare-fun b!4232452 () Bool)

(declare-fun res!1740744 () Bool)

(assert (=> b!4232452 (=> (not res!1740744) (not e!2628034))))

(assert (=> b!4232452 (= res!1740744 (= (size!34255 lt!1504726) (+ (size!34255 Nil!46733) (size!34255 (Cons!46733 (head!8973 (getSuffix!2864 input!3600 Nil!46733)) Nil!46733)))))))

(declare-fun b!4232453 () Bool)

(assert (=> b!4232453 (= e!2628034 (or (not (= (Cons!46733 (head!8973 (getSuffix!2864 input!3600 Nil!46733)) Nil!46733) Nil!46733)) (= lt!1504726 Nil!46733)))))

(declare-fun b!4232450 () Bool)

(assert (=> b!4232450 (= e!2628035 (Cons!46733 (head!8973 (getSuffix!2864 input!3600 Nil!46733)) Nil!46733))))

(assert (= (and d!1245397 c!719378) b!4232450))

(assert (= (and d!1245397 (not c!719378)) b!4232451))

(assert (= (and d!1245397 res!1740745) b!4232452))

(assert (= (and b!4232452 res!1740744) b!4232453))

(declare-fun m!4818823 () Bool)

(assert (=> d!1245397 m!4818823))

(assert (=> d!1245397 m!4818745))

(declare-fun m!4818825 () Bool)

(assert (=> d!1245397 m!4818825))

(declare-fun m!4818827 () Bool)

(assert (=> b!4232451 m!4818827))

(declare-fun m!4818829 () Bool)

(assert (=> b!4232452 m!4818829))

(assert (=> b!4232452 m!4818143))

(declare-fun m!4818831 () Bool)

(assert (=> b!4232452 m!4818831))

(assert (=> b!4232053 d!1245397))

(assert (=> b!4232053 d!1245235))

(assert (=> b!4232053 d!1245351))

(assert (=> b!4232121 d!1245227))

(assert (=> b!4232121 d!1245237))

(assert (=> b!4232104 d!1245353))

(declare-fun b!4232456 () Bool)

(declare-fun e!2628037 () Bool)

(assert (=> b!4232456 (= e!2628037 (isPrefix!4711 (tail!6820 (tail!6820 p!3018)) (tail!6820 (tail!6820 input!3600))))))

(declare-fun b!4232454 () Bool)

(declare-fun e!2628038 () Bool)

(assert (=> b!4232454 (= e!2628038 e!2628037)))

(declare-fun res!1740747 () Bool)

(assert (=> b!4232454 (=> (not res!1740747) (not e!2628037))))

(assert (=> b!4232454 (= res!1740747 (not ((_ is Nil!46733) (tail!6820 input!3600))))))

(declare-fun b!4232455 () Bool)

(declare-fun res!1740749 () Bool)

(assert (=> b!4232455 (=> (not res!1740749) (not e!2628037))))

(assert (=> b!4232455 (= res!1740749 (= (head!8973 (tail!6820 p!3018)) (head!8973 (tail!6820 input!3600))))))

(declare-fun b!4232457 () Bool)

(declare-fun e!2628036 () Bool)

(assert (=> b!4232457 (= e!2628036 (>= (size!34255 (tail!6820 input!3600)) (size!34255 (tail!6820 p!3018))))))

(declare-fun d!1245399 () Bool)

(assert (=> d!1245399 e!2628036))

(declare-fun res!1740748 () Bool)

(assert (=> d!1245399 (=> res!1740748 e!2628036)))

(declare-fun lt!1504727 () Bool)

(assert (=> d!1245399 (= res!1740748 (not lt!1504727))))

(assert (=> d!1245399 (= lt!1504727 e!2628038)))

(declare-fun res!1740746 () Bool)

(assert (=> d!1245399 (=> res!1740746 e!2628038)))

(assert (=> d!1245399 (= res!1740746 ((_ is Nil!46733) (tail!6820 p!3018)))))

(assert (=> d!1245399 (= (isPrefix!4711 (tail!6820 p!3018) (tail!6820 input!3600)) lt!1504727)))

(assert (= (and d!1245399 (not res!1740746)) b!4232454))

(assert (= (and b!4232454 res!1740747) b!4232455))

(assert (= (and b!4232455 res!1740749) b!4232456))

(assert (= (and d!1245399 (not res!1740748)) b!4232457))

(assert (=> b!4232456 m!4818355))

(declare-fun m!4818833 () Bool)

(assert (=> b!4232456 m!4818833))

(assert (=> b!4232456 m!4818307))

(declare-fun m!4818835 () Bool)

(assert (=> b!4232456 m!4818835))

(assert (=> b!4232456 m!4818833))

(assert (=> b!4232456 m!4818835))

(declare-fun m!4818837 () Bool)

(assert (=> b!4232456 m!4818837))

(assert (=> b!4232455 m!4818355))

(declare-fun m!4818839 () Bool)

(assert (=> b!4232455 m!4818839))

(assert (=> b!4232455 m!4818307))

(declare-fun m!4818841 () Bool)

(assert (=> b!4232455 m!4818841))

(assert (=> b!4232457 m!4818307))

(declare-fun m!4818843 () Bool)

(assert (=> b!4232457 m!4818843))

(assert (=> b!4232457 m!4818355))

(declare-fun m!4818845 () Bool)

(assert (=> b!4232457 m!4818845))

(assert (=> b!4232120 d!1245399))

(declare-fun d!1245401 () Bool)

(assert (=> d!1245401 (= (tail!6820 p!3018) (t!349528 p!3018))))

(assert (=> b!4232120 d!1245401))

(assert (=> b!4232120 d!1245345))

(declare-fun bs!598005 () Bool)

(declare-fun d!1245403 () Bool)

(assert (= bs!598005 (and d!1245403 d!1245313)))

(declare-fun lambda!129995 () Int)

(assert (=> bs!598005 (= lambda!129995 lambda!129986)))

(assert (=> d!1245403 true))

(assert (=> d!1245403 (< (dynLambda!20041 order!24599 (toChars!10487 (transformation!7896 r!4353))) (dynLambda!20040 order!24597 lambda!129995))))

(assert (=> d!1245403 true))

(assert (=> d!1245403 (< (dynLambda!20039 order!24595 (toValue!10628 (transformation!7896 r!4353))) (dynLambda!20040 order!24597 lambda!129995))))

(declare-fun Forall!1585 (Int) Bool)

(assert (=> d!1245403 (= (semiInverseModEq!3435 (toChars!10487 (transformation!7896 r!4353)) (toValue!10628 (transformation!7896 r!4353))) (Forall!1585 lambda!129995))))

(declare-fun bs!598006 () Bool)

(assert (= bs!598006 d!1245403))

(declare-fun m!4818847 () Bool)

(assert (=> bs!598006 m!4818847))

(assert (=> d!1245231 d!1245403))

(declare-fun d!1245405 () Bool)

(assert (=> d!1245405 (= (head!8973 p!3018) (h!52153 p!3018))))

(assert (=> b!4232119 d!1245405))

(assert (=> b!4232119 d!1245351))

(declare-fun d!1245407 () Bool)

(declare-fun res!1740753 () Bool)

(declare-fun e!2628045 () Bool)

(assert (=> d!1245407 (=> res!1740753 e!2628045)))

(assert (=> d!1245407 (= res!1740753 ((_ is ElementMatch!12801) (ite c!719245 (reg!13130 (regex!7896 r!4353)) (ite c!719244 (regOne!26115 (regex!7896 r!4353)) (regTwo!26114 (regex!7896 r!4353))))))))

(assert (=> d!1245407 (= (validRegex!5817 (ite c!719245 (reg!13130 (regex!7896 r!4353)) (ite c!719244 (regOne!26115 (regex!7896 r!4353)) (regTwo!26114 (regex!7896 r!4353))))) e!2628045)))

(declare-fun b!4232462 () Bool)

(declare-fun e!2628042 () Bool)

(declare-fun call!293591 () Bool)

(assert (=> b!4232462 (= e!2628042 call!293591)))

(declare-fun call!293593 () Bool)

(declare-fun bm!293586 () Bool)

(declare-fun c!719379 () Bool)

(declare-fun c!719380 () Bool)

(assert (=> bm!293586 (= call!293593 (validRegex!5817 (ite c!719380 (reg!13130 (ite c!719245 (reg!13130 (regex!7896 r!4353)) (ite c!719244 (regOne!26115 (regex!7896 r!4353)) (regTwo!26114 (regex!7896 r!4353))))) (ite c!719379 (regOne!26115 (ite c!719245 (reg!13130 (regex!7896 r!4353)) (ite c!719244 (regOne!26115 (regex!7896 r!4353)) (regTwo!26114 (regex!7896 r!4353))))) (regTwo!26114 (ite c!719245 (reg!13130 (regex!7896 r!4353)) (ite c!719244 (regOne!26115 (regex!7896 r!4353)) (regTwo!26114 (regex!7896 r!4353)))))))))))

(declare-fun b!4232463 () Bool)

(declare-fun res!1740752 () Bool)

(declare-fun e!2628043 () Bool)

(assert (=> b!4232463 (=> res!1740752 e!2628043)))

(assert (=> b!4232463 (= res!1740752 (not ((_ is Concat!20928) (ite c!719245 (reg!13130 (regex!7896 r!4353)) (ite c!719244 (regOne!26115 (regex!7896 r!4353)) (regTwo!26114 (regex!7896 r!4353)))))))))

(declare-fun e!2628040 () Bool)

(assert (=> b!4232463 (= e!2628040 e!2628043)))

(declare-fun b!4232464 () Bool)

(declare-fun e!2628041 () Bool)

(assert (=> b!4232464 (= e!2628041 e!2628040)))

(assert (=> b!4232464 (= c!719379 ((_ is Union!12801) (ite c!719245 (reg!13130 (regex!7896 r!4353)) (ite c!719244 (regOne!26115 (regex!7896 r!4353)) (regTwo!26114 (regex!7896 r!4353))))))))

(declare-fun b!4232465 () Bool)

(declare-fun res!1740750 () Bool)

(assert (=> b!4232465 (=> (not res!1740750) (not e!2628042))))

(declare-fun call!293592 () Bool)

(assert (=> b!4232465 (= res!1740750 call!293592)))

(assert (=> b!4232465 (= e!2628040 e!2628042)))

(declare-fun b!4232466 () Bool)

(declare-fun e!2628044 () Bool)

(assert (=> b!4232466 (= e!2628043 e!2628044)))

(declare-fun res!1740751 () Bool)

(assert (=> b!4232466 (=> (not res!1740751) (not e!2628044))))

(assert (=> b!4232466 (= res!1740751 call!293591)))

(declare-fun b!4232467 () Bool)

(assert (=> b!4232467 (= e!2628045 e!2628041)))

(assert (=> b!4232467 (= c!719380 ((_ is Star!12801) (ite c!719245 (reg!13130 (regex!7896 r!4353)) (ite c!719244 (regOne!26115 (regex!7896 r!4353)) (regTwo!26114 (regex!7896 r!4353))))))))

(declare-fun bm!293587 () Bool)

(assert (=> bm!293587 (= call!293592 call!293593)))

(declare-fun bm!293588 () Bool)

(assert (=> bm!293588 (= call!293591 (validRegex!5817 (ite c!719379 (regTwo!26115 (ite c!719245 (reg!13130 (regex!7896 r!4353)) (ite c!719244 (regOne!26115 (regex!7896 r!4353)) (regTwo!26114 (regex!7896 r!4353))))) (regOne!26114 (ite c!719245 (reg!13130 (regex!7896 r!4353)) (ite c!719244 (regOne!26115 (regex!7896 r!4353)) (regTwo!26114 (regex!7896 r!4353))))))))))

(declare-fun b!4232468 () Bool)

(declare-fun e!2628039 () Bool)

(assert (=> b!4232468 (= e!2628039 call!293593)))

(declare-fun b!4232469 () Bool)

(assert (=> b!4232469 (= e!2628044 call!293592)))

(declare-fun b!4232470 () Bool)

(assert (=> b!4232470 (= e!2628041 e!2628039)))

(declare-fun res!1740754 () Bool)

(assert (=> b!4232470 (= res!1740754 (not (nullable!4510 (reg!13130 (ite c!719245 (reg!13130 (regex!7896 r!4353)) (ite c!719244 (regOne!26115 (regex!7896 r!4353)) (regTwo!26114 (regex!7896 r!4353))))))))))

(assert (=> b!4232470 (=> (not res!1740754) (not e!2628039))))

(assert (= (and d!1245407 (not res!1740753)) b!4232467))

(assert (= (and b!4232467 c!719380) b!4232470))

(assert (= (and b!4232467 (not c!719380)) b!4232464))

(assert (= (and b!4232470 res!1740754) b!4232468))

(assert (= (and b!4232464 c!719379) b!4232465))

(assert (= (and b!4232464 (not c!719379)) b!4232463))

(assert (= (and b!4232465 res!1740750) b!4232462))

(assert (= (and b!4232463 (not res!1740752)) b!4232466))

(assert (= (and b!4232466 res!1740751) b!4232469))

(assert (= (or b!4232462 b!4232466) bm!293588))

(assert (= (or b!4232465 b!4232469) bm!293587))

(assert (= (or b!4232468 bm!293587) bm!293586))

(declare-fun m!4818849 () Bool)

(assert (=> bm!293586 m!4818849))

(declare-fun m!4818851 () Bool)

(assert (=> bm!293588 m!4818851))

(declare-fun m!4818853 () Bool)

(assert (=> b!4232470 m!4818853))

(assert (=> bm!293484 d!1245407))

(declare-fun d!1245409 () Bool)

(assert (=> d!1245409 (= (isEmpty!27622 (_1!25314 lt!1504484)) ((_ is Nil!46733) (_1!25314 lt!1504484)))))

(assert (=> b!4232061 d!1245409))

(declare-fun d!1245411 () Bool)

(declare-fun lt!1504752 () Int)

(assert (=> d!1245411 (>= lt!1504752 0)))

(declare-fun e!2628046 () Int)

(assert (=> d!1245411 (= lt!1504752 e!2628046)))

(declare-fun c!719381 () Bool)

(assert (=> d!1245411 (= c!719381 ((_ is Nil!46733) (t!349528 p!3018)))))

(assert (=> d!1245411 (= (size!34255 (t!349528 p!3018)) lt!1504752)))

(declare-fun b!4232471 () Bool)

(assert (=> b!4232471 (= e!2628046 0)))

(declare-fun b!4232472 () Bool)

(assert (=> b!4232472 (= e!2628046 (+ 1 (size!34255 (t!349528 (t!349528 p!3018)))))))

(assert (= (and d!1245411 c!719381) b!4232471))

(assert (= (and d!1245411 (not c!719381)) b!4232472))

(declare-fun m!4818869 () Bool)

(assert (=> b!4232472 m!4818869))

(assert (=> b!4232109 d!1245411))

(declare-fun d!1245413 () Bool)

(assert (=> d!1245413 true))

(declare-fun lambda!129998 () Int)

(declare-fun order!24609 () Int)

(declare-fun dynLambda!20048 (Int Int) Int)

(assert (=> d!1245413 (< (dynLambda!20039 order!24595 (toValue!10628 (transformation!7896 r!4353))) (dynLambda!20048 order!24609 lambda!129998))))

(declare-fun Forall2!1185 (Int) Bool)

(assert (=> d!1245413 (= (equivClasses!3334 (toChars!10487 (transformation!7896 r!4353)) (toValue!10628 (transformation!7896 r!4353))) (Forall2!1185 lambda!129998))))

(declare-fun bs!598008 () Bool)

(assert (= bs!598008 d!1245413))

(declare-fun m!4818873 () Bool)

(assert (=> bs!598008 m!4818873))

(assert (=> b!4232099 d!1245413))

(declare-fun d!1245417 () Bool)

(declare-fun e!2628049 () Bool)

(assert (=> d!1245417 e!2628049))

(declare-fun res!1740758 () Bool)

(assert (=> d!1245417 (=> (not res!1740758) (not e!2628049))))

(declare-fun lt!1504753 () List!46857)

(assert (=> d!1245417 (= res!1740758 (= (content!7339 lt!1504753) ((_ map or) (content!7339 (_1!25314 lt!1504484)) (content!7339 (_2!25314 lt!1504484)))))))

(declare-fun e!2628050 () List!46857)

(assert (=> d!1245417 (= lt!1504753 e!2628050)))

(declare-fun c!719382 () Bool)

(assert (=> d!1245417 (= c!719382 ((_ is Nil!46733) (_1!25314 lt!1504484)))))

(assert (=> d!1245417 (= (++!11917 (_1!25314 lt!1504484) (_2!25314 lt!1504484)) lt!1504753)))

(declare-fun b!4232478 () Bool)

(assert (=> b!4232478 (= e!2628050 (Cons!46733 (h!52153 (_1!25314 lt!1504484)) (++!11917 (t!349528 (_1!25314 lt!1504484)) (_2!25314 lt!1504484))))))

(declare-fun b!4232479 () Bool)

(declare-fun res!1740757 () Bool)

(assert (=> b!4232479 (=> (not res!1740757) (not e!2628049))))

(assert (=> b!4232479 (= res!1740757 (= (size!34255 lt!1504753) (+ (size!34255 (_1!25314 lt!1504484)) (size!34255 (_2!25314 lt!1504484)))))))

(declare-fun b!4232480 () Bool)

(assert (=> b!4232480 (= e!2628049 (or (not (= (_2!25314 lt!1504484) Nil!46733)) (= lt!1504753 (_1!25314 lt!1504484))))))

(declare-fun b!4232477 () Bool)

(assert (=> b!4232477 (= e!2628050 (_2!25314 lt!1504484))))

(assert (= (and d!1245417 c!719382) b!4232477))

(assert (= (and d!1245417 (not c!719382)) b!4232478))

(assert (= (and d!1245417 res!1740758) b!4232479))

(assert (= (and b!4232479 res!1740757) b!4232480))

(declare-fun m!4818875 () Bool)

(assert (=> d!1245417 m!4818875))

(declare-fun m!4818877 () Bool)

(assert (=> d!1245417 m!4818877))

(declare-fun m!4818879 () Bool)

(assert (=> d!1245417 m!4818879))

(declare-fun m!4818881 () Bool)

(assert (=> b!4232478 m!4818881))

(declare-fun m!4818883 () Bool)

(assert (=> b!4232479 m!4818883))

(assert (=> b!4232479 m!4818305))

(declare-fun m!4818885 () Bool)

(assert (=> b!4232479 m!4818885))

(assert (=> d!1245205 d!1245417))

(assert (=> d!1245205 d!1245203))

(declare-fun d!1245419 () Bool)

(assert (=> d!1245419 (= input!3600 lt!1504459)))

(declare-fun lt!1504758 () Unit!65866)

(declare-fun choose!25920 (List!46857 List!46857 List!46857 List!46857 List!46857) Unit!65866)

(assert (=> d!1245419 (= lt!1504758 (choose!25920 Nil!46733 input!3600 Nil!46733 lt!1504459 input!3600))))

(assert (=> d!1245419 (isPrefix!4711 Nil!46733 input!3600)))

(assert (=> d!1245419 (= (lemmaSamePrefixThenSameSuffix!2280 Nil!46733 input!3600 Nil!46733 lt!1504459 input!3600) lt!1504758)))

(declare-fun bs!598009 () Bool)

(assert (= bs!598009 d!1245419))

(declare-fun m!4818887 () Bool)

(assert (=> bs!598009 m!4818887))

(assert (=> bs!598009 m!4818149))

(assert (=> d!1245205 d!1245419))

(assert (=> d!1245205 d!1245373))

(declare-fun d!1245421 () Bool)

(declare-fun e!2628061 () Bool)

(assert (=> d!1245421 e!2628061))

(declare-fun res!1740760 () Bool)

(assert (=> d!1245421 (=> (not res!1740760) (not e!2628061))))

(declare-fun lt!1504759 () List!46857)

(assert (=> d!1245421 (= res!1740760 (= (content!7339 lt!1504759) ((_ map or) (content!7339 Nil!46733) (content!7339 input!3600))))))

(declare-fun e!2628062 () List!46857)

(assert (=> d!1245421 (= lt!1504759 e!2628062)))

(declare-fun c!719393 () Bool)

(assert (=> d!1245421 (= c!719393 ((_ is Nil!46733) Nil!46733))))

(assert (=> d!1245421 (= (++!11917 Nil!46733 input!3600) lt!1504759)))

(declare-fun b!4232502 () Bool)

(assert (=> b!4232502 (= e!2628062 (Cons!46733 (h!52153 Nil!46733) (++!11917 (t!349528 Nil!46733) input!3600)))))

(declare-fun b!4232503 () Bool)

(declare-fun res!1740759 () Bool)

(assert (=> b!4232503 (=> (not res!1740759) (not e!2628061))))

(assert (=> b!4232503 (= res!1740759 (= (size!34255 lt!1504759) (+ (size!34255 Nil!46733) (size!34255 input!3600))))))

(declare-fun b!4232504 () Bool)

(assert (=> b!4232504 (= e!2628061 (or (not (= input!3600 Nil!46733)) (= lt!1504759 Nil!46733)))))

(declare-fun b!4232501 () Bool)

(assert (=> b!4232501 (= e!2628062 input!3600)))

(assert (= (and d!1245421 c!719393) b!4232501))

(assert (= (and d!1245421 (not c!719393)) b!4232502))

(assert (= (and d!1245421 res!1740760) b!4232503))

(assert (= (and b!4232503 res!1740759) b!4232504))

(declare-fun m!4818889 () Bool)

(assert (=> d!1245421 m!4818889))

(assert (=> d!1245421 m!4818745))

(declare-fun m!4818891 () Bool)

(assert (=> d!1245421 m!4818891))

(declare-fun m!4818893 () Bool)

(assert (=> b!4232502 m!4818893))

(declare-fun m!4818895 () Bool)

(assert (=> b!4232503 m!4818895))

(assert (=> b!4232503 m!4818143))

(assert (=> b!4232503 m!4818155))

(assert (=> d!1245205 d!1245421))

(declare-fun d!1245423 () Bool)

(declare-fun lostCauseFct!268 (Regex!12801) Bool)

(assert (=> d!1245423 (= (lostCause!1063 (regex!7896 r!4353)) (lostCauseFct!268 (regex!7896 r!4353)))))

(declare-fun bs!598010 () Bool)

(assert (= bs!598010 d!1245423))

(declare-fun m!4818897 () Bool)

(assert (=> bs!598010 m!4818897))

(assert (=> d!1245205 d!1245423))

(declare-fun d!1245425 () Bool)

(assert (=> d!1245425 (isPrefix!4711 Nil!46733 (++!11917 Nil!46733 input!3600))))

(declare-fun lt!1504762 () Unit!65866)

(declare-fun choose!25921 (List!46857 List!46857) Unit!65866)

(assert (=> d!1245425 (= lt!1504762 (choose!25921 Nil!46733 input!3600))))

(assert (=> d!1245425 (= (lemmaConcatTwoListThenFirstIsPrefix!3100 Nil!46733 input!3600) lt!1504762)))

(declare-fun bs!598011 () Bool)

(assert (= bs!598011 d!1245425))

(assert (=> bs!598011 m!4818295))

(assert (=> bs!598011 m!4818295))

(assert (=> bs!598011 m!4818301))

(declare-fun m!4818899 () Bool)

(assert (=> bs!598011 m!4818899))

(assert (=> d!1245205 d!1245425))

(declare-fun b!4232517 () Bool)

(declare-fun e!2628069 () Bool)

(assert (=> b!4232517 (= e!2628069 (isPrefix!4711 (tail!6820 Nil!46733) (tail!6820 (++!11917 Nil!46733 input!3600))))))

(declare-fun b!4232515 () Bool)

(declare-fun e!2628070 () Bool)

(assert (=> b!4232515 (= e!2628070 e!2628069)))

(declare-fun res!1740762 () Bool)

(assert (=> b!4232515 (=> (not res!1740762) (not e!2628069))))

(assert (=> b!4232515 (= res!1740762 (not ((_ is Nil!46733) (++!11917 Nil!46733 input!3600))))))

(declare-fun b!4232516 () Bool)

(declare-fun res!1740764 () Bool)

(assert (=> b!4232516 (=> (not res!1740764) (not e!2628069))))

(assert (=> b!4232516 (= res!1740764 (= (head!8973 Nil!46733) (head!8973 (++!11917 Nil!46733 input!3600))))))

(declare-fun b!4232518 () Bool)

(declare-fun e!2628068 () Bool)

(assert (=> b!4232518 (= e!2628068 (>= (size!34255 (++!11917 Nil!46733 input!3600)) (size!34255 Nil!46733)))))

(declare-fun d!1245427 () Bool)

(assert (=> d!1245427 e!2628068))

(declare-fun res!1740763 () Bool)

(assert (=> d!1245427 (=> res!1740763 e!2628068)))

(declare-fun lt!1504764 () Bool)

(assert (=> d!1245427 (= res!1740763 (not lt!1504764))))

(assert (=> d!1245427 (= lt!1504764 e!2628070)))

(declare-fun res!1740761 () Bool)

(assert (=> d!1245427 (=> res!1740761 e!2628070)))

(assert (=> d!1245427 (= res!1740761 ((_ is Nil!46733) Nil!46733))))

(assert (=> d!1245427 (= (isPrefix!4711 Nil!46733 (++!11917 Nil!46733 input!3600)) lt!1504764)))

(assert (= (and d!1245427 (not res!1740761)) b!4232515))

(assert (= (and b!4232515 res!1740762) b!4232516))

(assert (= (and b!4232516 res!1740764) b!4232517))

(assert (= (and d!1245427 (not res!1740763)) b!4232518))

(assert (=> b!4232517 m!4818401))

(assert (=> b!4232517 m!4818295))

(declare-fun m!4818901 () Bool)

(assert (=> b!4232517 m!4818901))

(assert (=> b!4232517 m!4818401))

(assert (=> b!4232517 m!4818901))

(declare-fun m!4818903 () Bool)

(assert (=> b!4232517 m!4818903))

(assert (=> b!4232516 m!4818405))

(assert (=> b!4232516 m!4818295))

(declare-fun m!4818905 () Bool)

(assert (=> b!4232516 m!4818905))

(assert (=> b!4232518 m!4818295))

(declare-fun m!4818907 () Bool)

(assert (=> b!4232518 m!4818907))

(assert (=> b!4232518 m!4818143))

(assert (=> d!1245205 d!1245427))

(declare-fun d!1245429 () Bool)

(declare-fun e!2628071 () Bool)

(assert (=> d!1245429 e!2628071))

(declare-fun res!1740766 () Bool)

(assert (=> d!1245429 (=> (not res!1740766) (not e!2628071))))

(declare-fun lt!1504765 () List!46857)

(assert (=> d!1245429 (= res!1740766 (= (content!7339 lt!1504765) ((_ map or) (content!7339 (list!16871 (charsOf!5262 (_1!25313 (get!15202 lt!1504503))))) (content!7339 (_2!25313 (get!15202 lt!1504503))))))))

(declare-fun e!2628072 () List!46857)

(assert (=> d!1245429 (= lt!1504765 e!2628072)))

(declare-fun c!719399 () Bool)

(assert (=> d!1245429 (= c!719399 ((_ is Nil!46733) (list!16871 (charsOf!5262 (_1!25313 (get!15202 lt!1504503))))))))

(assert (=> d!1245429 (= (++!11917 (list!16871 (charsOf!5262 (_1!25313 (get!15202 lt!1504503)))) (_2!25313 (get!15202 lt!1504503))) lt!1504765)))

(declare-fun b!4232520 () Bool)

(assert (=> b!4232520 (= e!2628072 (Cons!46733 (h!52153 (list!16871 (charsOf!5262 (_1!25313 (get!15202 lt!1504503))))) (++!11917 (t!349528 (list!16871 (charsOf!5262 (_1!25313 (get!15202 lt!1504503))))) (_2!25313 (get!15202 lt!1504503)))))))

(declare-fun b!4232521 () Bool)

(declare-fun res!1740765 () Bool)

(assert (=> b!4232521 (=> (not res!1740765) (not e!2628071))))

(assert (=> b!4232521 (= res!1740765 (= (size!34255 lt!1504765) (+ (size!34255 (list!16871 (charsOf!5262 (_1!25313 (get!15202 lt!1504503))))) (size!34255 (_2!25313 (get!15202 lt!1504503))))))))

(declare-fun b!4232522 () Bool)

(assert (=> b!4232522 (= e!2628071 (or (not (= (_2!25313 (get!15202 lt!1504503)) Nil!46733)) (= lt!1504765 (list!16871 (charsOf!5262 (_1!25313 (get!15202 lt!1504503)))))))))

(declare-fun b!4232519 () Bool)

(assert (=> b!4232519 (= e!2628072 (_2!25313 (get!15202 lt!1504503)))))

(assert (= (and d!1245429 c!719399) b!4232519))

(assert (= (and d!1245429 (not c!719399)) b!4232520))

(assert (= (and d!1245429 res!1740766) b!4232521))

(assert (= (and b!4232521 res!1740765) b!4232522))

(declare-fun m!4818917 () Bool)

(assert (=> d!1245429 m!4818917))

(assert (=> d!1245429 m!4818379))

(declare-fun m!4818919 () Bool)

(assert (=> d!1245429 m!4818919))

(declare-fun m!4818921 () Bool)

(assert (=> d!1245429 m!4818921))

(declare-fun m!4818923 () Bool)

(assert (=> b!4232520 m!4818923))

(declare-fun m!4818925 () Bool)

(assert (=> b!4232521 m!4818925))

(assert (=> b!4232521 m!4818379))

(declare-fun m!4818927 () Bool)

(assert (=> b!4232521 m!4818927))

(assert (=> b!4232521 m!4818387))

(assert (=> b!4232147 d!1245429))

(assert (=> b!4232147 d!1245267))

(assert (=> b!4232147 d!1245269))

(assert (=> b!4232147 d!1245247))

(declare-fun b!4232582 () Bool)

(declare-fun e!2628107 () Regex!12801)

(assert (=> b!4232582 (= e!2628107 EmptyLang!12801)))

(declare-fun c!719420 () Bool)

(declare-fun bm!293613 () Bool)

(declare-fun call!293618 () Regex!12801)

(assert (=> bm!293613 (= call!293618 (derivativeStep!3843 (ite c!719420 (regTwo!26115 (regex!7896 r!4353)) (regTwo!26114 (regex!7896 r!4353))) call!293544))))

(declare-fun b!4232583 () Bool)

(declare-fun e!2628106 () Regex!12801)

(assert (=> b!4232583 (= e!2628107 e!2628106)))

(declare-fun c!719417 () Bool)

(assert (=> b!4232583 (= c!719417 ((_ is ElementMatch!12801) (regex!7896 r!4353)))))

(declare-fun b!4232585 () Bool)

(assert (=> b!4232585 (= e!2628106 (ite (= call!293544 (c!719238 (regex!7896 r!4353))) EmptyExpr!12801 EmptyLang!12801))))

(declare-fun b!4232586 () Bool)

(declare-fun e!2628105 () Regex!12801)

(declare-fun e!2628109 () Regex!12801)

(assert (=> b!4232586 (= e!2628105 e!2628109)))

(declare-fun c!719421 () Bool)

(assert (=> b!4232586 (= c!719421 ((_ is Star!12801) (regex!7896 r!4353)))))

(declare-fun bm!293614 () Bool)

(declare-fun call!293621 () Regex!12801)

(assert (=> bm!293614 (= call!293621 (derivativeStep!3843 (ite c!719420 (regOne!26115 (regex!7896 r!4353)) (ite c!719421 (reg!13130 (regex!7896 r!4353)) (regOne!26114 (regex!7896 r!4353)))) call!293544))))

(declare-fun bm!293615 () Bool)

(declare-fun call!293619 () Regex!12801)

(assert (=> bm!293615 (= call!293619 call!293621)))

(declare-fun b!4232587 () Bool)

(assert (=> b!4232587 (= e!2628105 (Union!12801 call!293621 call!293618))))

(declare-fun b!4232588 () Bool)

(declare-fun c!719418 () Bool)

(assert (=> b!4232588 (= c!719418 (nullable!4510 (regOne!26114 (regex!7896 r!4353))))))

(declare-fun e!2628108 () Regex!12801)

(assert (=> b!4232588 (= e!2628109 e!2628108)))

(declare-fun b!4232589 () Bool)

(assert (=> b!4232589 (= c!719420 ((_ is Union!12801) (regex!7896 r!4353)))))

(assert (=> b!4232589 (= e!2628106 e!2628105)))

(declare-fun b!4232590 () Bool)

(declare-fun call!293620 () Regex!12801)

(assert (=> b!4232590 (= e!2628108 (Union!12801 (Concat!20928 call!293620 (regTwo!26114 (regex!7896 r!4353))) call!293618))))

(declare-fun b!4232584 () Bool)

(assert (=> b!4232584 (= e!2628109 (Concat!20928 call!293619 (regex!7896 r!4353)))))

(declare-fun d!1245437 () Bool)

(declare-fun lt!1504776 () Regex!12801)

(assert (=> d!1245437 (validRegex!5817 lt!1504776)))

(assert (=> d!1245437 (= lt!1504776 e!2628107)))

(declare-fun c!719419 () Bool)

(assert (=> d!1245437 (= c!719419 (or ((_ is EmptyExpr!12801) (regex!7896 r!4353)) ((_ is EmptyLang!12801) (regex!7896 r!4353))))))

(assert (=> d!1245437 (validRegex!5817 (regex!7896 r!4353))))

(assert (=> d!1245437 (= (derivativeStep!3843 (regex!7896 r!4353) call!293544) lt!1504776)))

(declare-fun bm!293616 () Bool)

(assert (=> bm!293616 (= call!293620 call!293619)))

(declare-fun b!4232591 () Bool)

(assert (=> b!4232591 (= e!2628108 (Union!12801 (Concat!20928 call!293620 (regTwo!26114 (regex!7896 r!4353))) EmptyLang!12801))))

(assert (= (and d!1245437 c!719419) b!4232582))

(assert (= (and d!1245437 (not c!719419)) b!4232583))

(assert (= (and b!4232583 c!719417) b!4232585))

(assert (= (and b!4232583 (not c!719417)) b!4232589))

(assert (= (and b!4232589 c!719420) b!4232587))

(assert (= (and b!4232589 (not c!719420)) b!4232586))

(assert (= (and b!4232586 c!719421) b!4232584))

(assert (= (and b!4232586 (not c!719421)) b!4232588))

(assert (= (and b!4232588 c!719418) b!4232590))

(assert (= (and b!4232588 (not c!719418)) b!4232591))

(assert (= (or b!4232590 b!4232591) bm!293616))

(assert (= (or b!4232584 bm!293616) bm!293615))

(assert (= (or b!4232587 bm!293615) bm!293614))

(assert (= (or b!4232587 b!4232590) bm!293613))

(declare-fun m!4818971 () Bool)

(assert (=> bm!293613 m!4818971))

(declare-fun m!4818973 () Bool)

(assert (=> bm!293614 m!4818973))

(declare-fun m!4818975 () Bool)

(assert (=> b!4232588 m!4818975))

(declare-fun m!4818977 () Bool)

(assert (=> d!1245437 m!4818977))

(assert (=> d!1245437 m!4818141))

(assert (=> bm!293540 d!1245437))

(assert (=> b!4232146 d!1245247))

(declare-fun d!1245467 () Bool)

(assert (=> d!1245467 (= (apply!10738 (transformation!7896 (rule!11018 (_1!25313 (get!15202 lt!1504503)))) (seqFromList!5798 (originalCharacters!8242 (_1!25313 (get!15202 lt!1504503))))) (dynLambda!20042 (toValue!10628 (transformation!7896 (rule!11018 (_1!25313 (get!15202 lt!1504503))))) (seqFromList!5798 (originalCharacters!8242 (_1!25313 (get!15202 lt!1504503))))))))

(declare-fun b_lambda!124597 () Bool)

(assert (=> (not b_lambda!124597) (not d!1245467)))

(declare-fun tb!253877 () Bool)

(declare-fun t!349544 () Bool)

(assert (=> (and b!4231868 (= (toValue!10628 (transformation!7896 r!4353)) (toValue!10628 (transformation!7896 (rule!11018 (_1!25313 (get!15202 lt!1504503)))))) t!349544) tb!253877))

(declare-fun result!309650 () Bool)

(assert (=> tb!253877 (= result!309650 (inv!21 (dynLambda!20042 (toValue!10628 (transformation!7896 (rule!11018 (_1!25313 (get!15202 lt!1504503))))) (seqFromList!5798 (originalCharacters!8242 (_1!25313 (get!15202 lt!1504503)))))))))

(declare-fun m!4818989 () Bool)

(assert (=> tb!253877 m!4818989))

(assert (=> d!1245467 t!349544))

(declare-fun b_and!334339 () Bool)

(assert (= b_and!334331 (and (=> t!349544 result!309650) b_and!334339)))

(assert (=> d!1245467 m!4818395))

(declare-fun m!4818991 () Bool)

(assert (=> d!1245467 m!4818991))

(assert (=> b!4232146 d!1245467))

(declare-fun d!1245473 () Bool)

(assert (=> d!1245473 (= (seqFromList!5798 (originalCharacters!8242 (_1!25313 (get!15202 lt!1504503)))) (fromListB!2641 (originalCharacters!8242 (_1!25313 (get!15202 lt!1504503)))))))

(declare-fun bs!598016 () Bool)

(assert (= bs!598016 d!1245473))

(declare-fun m!4818995 () Bool)

(assert (=> bs!598016 m!4818995))

(assert (=> b!4232146 d!1245473))

(declare-fun b!4232603 () Bool)

(declare-fun e!2628116 () Bool)

(declare-fun tp!1296322 () Bool)

(declare-fun tp!1296323 () Bool)

(assert (=> b!4232603 (= e!2628116 (and tp!1296322 tp!1296323))))

(assert (=> b!4232171 (= tp!1296308 e!2628116)))

(declare-fun b!4232601 () Bool)

(declare-fun tp!1296325 () Bool)

(declare-fun tp!1296324 () Bool)

(assert (=> b!4232601 (= e!2628116 (and tp!1296325 tp!1296324))))

(declare-fun b!4232600 () Bool)

(assert (=> b!4232600 (= e!2628116 tp_is_empty!22537)))

(declare-fun b!4232602 () Bool)

(declare-fun tp!1296321 () Bool)

(assert (=> b!4232602 (= e!2628116 tp!1296321)))

(assert (= (and b!4232171 ((_ is ElementMatch!12801) (regOne!26115 (regex!7896 r!4353)))) b!4232600))

(assert (= (and b!4232171 ((_ is Concat!20928) (regOne!26115 (regex!7896 r!4353)))) b!4232601))

(assert (= (and b!4232171 ((_ is Star!12801) (regOne!26115 (regex!7896 r!4353)))) b!4232602))

(assert (= (and b!4232171 ((_ is Union!12801) (regOne!26115 (regex!7896 r!4353)))) b!4232603))

(declare-fun b!4232607 () Bool)

(declare-fun e!2628117 () Bool)

(declare-fun tp!1296327 () Bool)

(declare-fun tp!1296328 () Bool)

(assert (=> b!4232607 (= e!2628117 (and tp!1296327 tp!1296328))))

(assert (=> b!4232171 (= tp!1296309 e!2628117)))

(declare-fun b!4232605 () Bool)

(declare-fun tp!1296330 () Bool)

(declare-fun tp!1296329 () Bool)

(assert (=> b!4232605 (= e!2628117 (and tp!1296330 tp!1296329))))

(declare-fun b!4232604 () Bool)

(assert (=> b!4232604 (= e!2628117 tp_is_empty!22537)))

(declare-fun b!4232606 () Bool)

(declare-fun tp!1296326 () Bool)

(assert (=> b!4232606 (= e!2628117 tp!1296326)))

(assert (= (and b!4232171 ((_ is ElementMatch!12801) (regTwo!26115 (regex!7896 r!4353)))) b!4232604))

(assert (= (and b!4232171 ((_ is Concat!20928) (regTwo!26115 (regex!7896 r!4353)))) b!4232605))

(assert (= (and b!4232171 ((_ is Star!12801) (regTwo!26115 (regex!7896 r!4353)))) b!4232606))

(assert (= (and b!4232171 ((_ is Union!12801) (regTwo!26115 (regex!7896 r!4353)))) b!4232607))

(declare-fun b!4232611 () Bool)

(declare-fun e!2628118 () Bool)

(declare-fun tp!1296332 () Bool)

(declare-fun tp!1296333 () Bool)

(assert (=> b!4232611 (= e!2628118 (and tp!1296332 tp!1296333))))

(assert (=> b!4232170 (= tp!1296307 e!2628118)))

(declare-fun b!4232609 () Bool)

(declare-fun tp!1296335 () Bool)

(declare-fun tp!1296334 () Bool)

(assert (=> b!4232609 (= e!2628118 (and tp!1296335 tp!1296334))))

(declare-fun b!4232608 () Bool)

(assert (=> b!4232608 (= e!2628118 tp_is_empty!22537)))

(declare-fun b!4232610 () Bool)

(declare-fun tp!1296331 () Bool)

(assert (=> b!4232610 (= e!2628118 tp!1296331)))

(assert (= (and b!4232170 ((_ is ElementMatch!12801) (reg!13130 (regex!7896 r!4353)))) b!4232608))

(assert (= (and b!4232170 ((_ is Concat!20928) (reg!13130 (regex!7896 r!4353)))) b!4232609))

(assert (= (and b!4232170 ((_ is Star!12801) (reg!13130 (regex!7896 r!4353)))) b!4232610))

(assert (= (and b!4232170 ((_ is Union!12801) (reg!13130 (regex!7896 r!4353)))) b!4232611))

(declare-fun b!4232612 () Bool)

(declare-fun e!2628119 () Bool)

(declare-fun tp!1296336 () Bool)

(assert (=> b!4232612 (= e!2628119 (and tp_is_empty!22537 tp!1296336))))

(assert (=> b!4232172 (= tp!1296312 e!2628119)))

(assert (= (and b!4232172 ((_ is Cons!46733) (t!349528 (t!349528 input!3600)))) b!4232612))

(declare-fun b!4232616 () Bool)

(declare-fun e!2628120 () Bool)

(declare-fun tp!1296338 () Bool)

(declare-fun tp!1296339 () Bool)

(assert (=> b!4232616 (= e!2628120 (and tp!1296338 tp!1296339))))

(assert (=> b!4232169 (= tp!1296311 e!2628120)))

(declare-fun b!4232614 () Bool)

(declare-fun tp!1296341 () Bool)

(declare-fun tp!1296340 () Bool)

(assert (=> b!4232614 (= e!2628120 (and tp!1296341 tp!1296340))))

(declare-fun b!4232613 () Bool)

(assert (=> b!4232613 (= e!2628120 tp_is_empty!22537)))

(declare-fun b!4232615 () Bool)

(declare-fun tp!1296337 () Bool)

(assert (=> b!4232615 (= e!2628120 tp!1296337)))

(assert (= (and b!4232169 ((_ is ElementMatch!12801) (regOne!26114 (regex!7896 r!4353)))) b!4232613))

(assert (= (and b!4232169 ((_ is Concat!20928) (regOne!26114 (regex!7896 r!4353)))) b!4232614))

(assert (= (and b!4232169 ((_ is Star!12801) (regOne!26114 (regex!7896 r!4353)))) b!4232615))

(assert (= (and b!4232169 ((_ is Union!12801) (regOne!26114 (regex!7896 r!4353)))) b!4232616))

(declare-fun b!4232620 () Bool)

(declare-fun e!2628121 () Bool)

(declare-fun tp!1296343 () Bool)

(declare-fun tp!1296344 () Bool)

(assert (=> b!4232620 (= e!2628121 (and tp!1296343 tp!1296344))))

(assert (=> b!4232169 (= tp!1296310 e!2628121)))

(declare-fun b!4232618 () Bool)

(declare-fun tp!1296346 () Bool)

(declare-fun tp!1296345 () Bool)

(assert (=> b!4232618 (= e!2628121 (and tp!1296346 tp!1296345))))

(declare-fun b!4232617 () Bool)

(assert (=> b!4232617 (= e!2628121 tp_is_empty!22537)))

(declare-fun b!4232619 () Bool)

(declare-fun tp!1296342 () Bool)

(assert (=> b!4232619 (= e!2628121 tp!1296342)))

(assert (= (and b!4232169 ((_ is ElementMatch!12801) (regTwo!26114 (regex!7896 r!4353)))) b!4232617))

(assert (= (and b!4232169 ((_ is Concat!20928) (regTwo!26114 (regex!7896 r!4353)))) b!4232618))

(assert (= (and b!4232169 ((_ is Star!12801) (regTwo!26114 (regex!7896 r!4353)))) b!4232619))

(assert (= (and b!4232169 ((_ is Union!12801) (regTwo!26114 (regex!7896 r!4353)))) b!4232620))

(declare-fun b!4232621 () Bool)

(declare-fun e!2628122 () Bool)

(declare-fun tp!1296347 () Bool)

(assert (=> b!4232621 (= e!2628122 (and tp_is_empty!22537 tp!1296347))))

(assert (=> b!4232157 (= tp!1296296 e!2628122)))

(assert (= (and b!4232157 ((_ is Cons!46733) (t!349528 (t!349528 p!3018)))) b!4232621))

(declare-fun b_lambda!124599 () Bool)

(assert (= b_lambda!124587 (or (and b!4231868 b_free!125007) b_lambda!124599)))

(declare-fun b_lambda!124601 () Bool)

(assert (= b_lambda!124589 (or (and b!4231868 b_free!125007) b_lambda!124601)))

(declare-fun b_lambda!124603 () Bool)

(assert (= b_lambda!124585 (or (and b!4231868 b_free!125009) b_lambda!124603)))

(check-sat (not b!4232291) (not b!4232518) (not b_next!125711) (not b!4232303) (not bm!293563) (not b_lambda!124579) (not b!4232451) (not b!4232174) (not d!1245395) (not b!4232472) (not b!4232618) (not bm!293571) (not bm!293559) (not b!4232229) (not d!1245347) (not bm!293558) (not b!4232603) (not d!1245387) (not b!4232457) (not bm!293577) (not b!4232228) (not bm!293556) (not d!1245429) (not bm!293575) (not b!4232295) (not d!1245425) (not bm!293555) (not b!4232610) (not b!4232251) (not d!1245403) (not b_lambda!124599) (not bm!293574) (not b!4232448) (not b!4232602) (not tb!253863) (not b!4232517) (not bm!293569) (not b!4232615) (not b!4232280) (not bm!293586) (not b!4232302) (not bm!293570) (not d!1245417) (not bm!293567) (not b!4232230) tp_is_empty!22537 (not b!4232478) (not b!4232178) (not b!4232427) (not d!1245369) (not b!4232607) (not b!4232287) (not d!1245305) (not d!1245397) (not bm!293562) (not b!4232521) (not d!1245309) (not bm!293576) (not d!1245313) b_and!334339 (not b!4232621) (not b!4232502) (not b!4232393) (not bm!293572) (not b!4232455) (not d!1245421) (not b!4232410) (not d!1245299) (not b!4232452) (not b!4232391) (not b!4232377) (not b!4232409) (not b!4232249) (not d!1245363) (not b!4232612) (not b!4232233) (not bm!293588) (not b!4232611) (not b!4232310) (not b!4232439) (not d!1245335) (not b!4232588) (not d!1245267) (not bm!293560) (not b!4232619) (not d!1245253) (not d!1245311) (not bm!293614) (not b!4232436) (not b!4232286) (not b!4232601) (not b!4232456) (not b!4232470) (not bm!293613) (not b!4232609) (not d!1245353) (not d!1245269) (not d!1245473) (not b!4232288) (not tb!253877) (not b!4232289) (not b!4232177) (not d!1245373) (not b_lambda!124597) (not d!1245393) (not bm!293546) (not d!1245413) (not b!4232620) (not tb!253871) (not d!1245283) (not b!4232366) (not b!4232237) (not b!4232503) (not b_lambda!124601) (not b!4232388) (not d!1245419) (not b!4232616) (not d!1245357) (not b!4232520) (not bm!293561) (not b!4232231) (not d!1245359) (not b!4232355) b_and!334327 (not b_lambda!124603) (not d!1245437) (not b!4232428) (not bm!293573) (not d!1245383) (not b_next!125713) (not b!4232383) (not b!4232307) (not b!4232384) (not b!4232176) (not bm!293557) (not b!4232447) (not d!1245337) (not b!4232605) (not b!4232479) (not b!4232614) (not b!4232440) (not b!4232516) (not b!4232441) (not b!4232606) (not d!1245423) (not tb!253869))
(check-sat b_and!334339 b_and!334327 (not b_next!125713) (not b_next!125711))

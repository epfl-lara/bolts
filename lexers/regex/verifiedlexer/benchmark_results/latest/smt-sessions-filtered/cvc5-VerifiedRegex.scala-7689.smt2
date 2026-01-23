; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!404676 () Bool)

(assert start!404676)

(declare-fun b!4231243 () Bool)

(declare-fun b_free!124979 () Bool)

(declare-fun b_next!125683 () Bool)

(assert (=> b!4231243 (= b_free!124979 (not b_next!125683))))

(declare-fun tp!1296092 () Bool)

(declare-fun b_and!334289 () Bool)

(assert (=> b!4231243 (= tp!1296092 b_and!334289)))

(declare-fun b_free!124981 () Bool)

(declare-fun b_next!125685 () Bool)

(assert (=> b!4231243 (= b_free!124981 (not b_next!125685))))

(declare-fun tp!1296093 () Bool)

(declare-fun b_and!334291 () Bool)

(assert (=> b!4231243 (= tp!1296093 b_and!334291)))

(declare-fun e!2627327 () Bool)

(assert (=> b!4231243 (= e!2627327 (and tp!1296092 tp!1296093))))

(declare-fun b!4231244 () Bool)

(declare-fun e!2627328 () Bool)

(declare-fun tp_is_empty!22523 () Bool)

(declare-fun tp!1296089 () Bool)

(assert (=> b!4231244 (= e!2627328 (and tp_is_empty!22523 tp!1296089))))

(declare-fun b!4231245 () Bool)

(declare-fun res!1740114 () Bool)

(declare-fun e!2627323 () Bool)

(assert (=> b!4231245 (=> (not res!1740114) (not e!2627323))))

(declare-datatypes ((C!25786 0))(
  ( (C!25787 (val!15055 Int)) )
))
(declare-datatypes ((List!46842 0))(
  ( (Nil!46718) (Cons!46718 (h!52138 C!25786) (t!349513 List!46842)) )
))
(declare-fun p!3018 () List!46842)

(declare-fun input!3600 () List!46842)

(declare-fun isPrefix!4704 (List!46842 List!46842) Bool)

(assert (=> b!4231245 (= res!1740114 (isPrefix!4704 p!3018 input!3600))))

(declare-fun res!1740117 () Bool)

(assert (=> start!404676 (=> (not res!1740117) (not e!2627323))))

(declare-datatypes ((LexerInterface!7484 0))(
  ( (LexerInterfaceExt!7481 (__x!28461 Int)) (Lexer!7482) )
))
(declare-fun thiss!26814 () LexerInterface!7484)

(assert (=> start!404676 (= res!1740117 (is-Lexer!7482 thiss!26814))))

(assert (=> start!404676 e!2627323))

(assert (=> start!404676 true))

(assert (=> start!404676 e!2627328))

(declare-fun e!2627324 () Bool)

(assert (=> start!404676 e!2627324))

(declare-fun e!2627325 () Bool)

(assert (=> start!404676 e!2627325))

(declare-fun b!4231246 () Bool)

(declare-fun res!1740115 () Bool)

(assert (=> b!4231246 (=> (not res!1740115) (not e!2627323))))

(declare-datatypes ((List!46843 0))(
  ( (Nil!46719) (Cons!46719 (h!52139 (_ BitVec 16)) (t!349514 List!46843)) )
))
(declare-datatypes ((TokenValue!8119 0))(
  ( (FloatLiteralValue!16238 (text!57278 List!46843)) (TokenValueExt!8118 (__x!28462 Int)) (Broken!40595 (value!245308 List!46843)) (Object!8242) (End!8119) (Def!8119) (Underscore!8119) (Match!8119) (Else!8119) (Error!8119) (Case!8119) (If!8119) (Extends!8119) (Abstract!8119) (Class!8119) (Val!8119) (DelimiterValue!16238 (del!8179 List!46843)) (KeywordValue!8125 (value!245309 List!46843)) (CommentValue!16238 (value!245310 List!46843)) (WhitespaceValue!16238 (value!245311 List!46843)) (IndentationValue!8119 (value!245312 List!46843)) (String!54470) (Int32!8119) (Broken!40596 (value!245313 List!46843)) (Boolean!8120) (Unit!65847) (OperatorValue!8122 (op!8179 List!46843)) (IdentifierValue!16238 (value!245314 List!46843)) (IdentifierValue!16239 (value!245315 List!46843)) (WhitespaceValue!16239 (value!245316 List!46843)) (True!16238) (False!16238) (Broken!40597 (value!245317 List!46843)) (Broken!40598 (value!245318 List!46843)) (True!16239) (RightBrace!8119) (RightBracket!8119) (Colon!8119) (Null!8119) (Comma!8119) (LeftBracket!8119) (False!16239) (LeftBrace!8119) (ImaginaryLiteralValue!8119 (text!57279 List!46843)) (StringLiteralValue!24357 (value!245319 List!46843)) (EOFValue!8119 (value!245320 List!46843)) (IdentValue!8119 (value!245321 List!46843)) (DelimiterValue!16239 (value!245322 List!46843)) (DedentValue!8119 (value!245323 List!46843)) (NewLineValue!8119 (value!245324 List!46843)) (IntegerValue!24357 (value!245325 (_ BitVec 32)) (text!57280 List!46843)) (IntegerValue!24358 (value!245326 Int) (text!57281 List!46843)) (Times!8119) (Or!8119) (Equal!8119) (Minus!8119) (Broken!40599 (value!245327 List!46843)) (And!8119) (Div!8119) (LessEqual!8119) (Mod!8119) (Concat!20913) (Not!8119) (Plus!8119) (SpaceValue!8119 (value!245328 List!46843)) (IntegerValue!24359 (value!245329 Int) (text!57282 List!46843)) (StringLiteralValue!24358 (text!57283 List!46843)) (FloatLiteralValue!16239 (text!57284 List!46843)) (BytesLiteralValue!8119 (value!245330 List!46843)) (CommentValue!16239 (value!245331 List!46843)) (StringLiteralValue!24359 (value!245332 List!46843)) (ErrorTokenValue!8119 (msg!8180 List!46843)) )
))
(declare-datatypes ((Regex!12794 0))(
  ( (ElementMatch!12794 (c!719176 C!25786)) (Concat!20914 (regOne!26100 Regex!12794) (regTwo!26100 Regex!12794)) (EmptyExpr!12794) (Star!12794 (reg!13123 Regex!12794)) (EmptyLang!12794) (Union!12794 (regOne!26101 Regex!12794) (regTwo!26101 Regex!12794)) )
))
(declare-datatypes ((String!54471 0))(
  ( (String!54472 (value!245333 String)) )
))
(declare-datatypes ((IArray!28205 0))(
  ( (IArray!28206 (innerList!14160 List!46842)) )
))
(declare-datatypes ((Conc!14100 0))(
  ( (Node!14100 (left!34753 Conc!14100) (right!35083 Conc!14100) (csize!28430 Int) (cheight!14311 Int)) (Leaf!21790 (xs!17406 IArray!28205) (csize!28431 Int)) (Empty!14100) )
))
(declare-datatypes ((BalanceConc!27794 0))(
  ( (BalanceConc!27795 (c!719177 Conc!14100)) )
))
(declare-datatypes ((TokenValueInjection!15666 0))(
  ( (TokenValueInjection!15667 (toValue!10621 Int) (toChars!10480 Int)) )
))
(declare-datatypes ((Rule!15578 0))(
  ( (Rule!15579 (regex!7889 Regex!12794) (tag!8753 String!54471) (isSeparator!7889 Bool) (transformation!7889 TokenValueInjection!15666)) )
))
(declare-fun r!4353 () Rule!15578)

(declare-fun ruleValid!3585 (LexerInterface!7484 Rule!15578) Bool)

(assert (=> b!4231246 (= res!1740115 (ruleValid!3585 thiss!26814 r!4353))))

(declare-fun b!4231247 () Bool)

(declare-fun tp!1296090 () Bool)

(assert (=> b!4231247 (= e!2627324 (and tp_is_empty!22523 tp!1296090))))

(declare-fun b!4231248 () Bool)

(declare-fun res!1740113 () Bool)

(assert (=> b!4231248 (=> (not res!1740113) (not e!2627323))))

(declare-datatypes ((Token!14408 0))(
  ( (Token!14409 (value!245334 TokenValue!8119) (rule!11007 Rule!15578) (size!34240 Int) (originalCharacters!8235 List!46842)) )
))
(declare-datatypes ((tuple2!44336 0))(
  ( (tuple2!44337 (_1!25302 Token!14408) (_2!25302 List!46842)) )
))
(declare-datatypes ((Option!10035 0))(
  ( (None!10034) (Some!10034 (v!40962 tuple2!44336)) )
))
(declare-fun maxPrefixOneRule!3429 (LexerInterface!7484 Rule!15578 List!46842) Option!10035)

(assert (=> b!4231248 (= res!1740113 (= (maxPrefixOneRule!3429 thiss!26814 r!4353 input!3600) None!10034))))

(declare-fun b!4231249 () Bool)

(declare-fun res!1740116 () Bool)

(assert (=> b!4231249 (=> (not res!1740116) (not e!2627323))))

(declare-fun validRegex!5810 (Regex!12794) Bool)

(assert (=> b!4231249 (= res!1740116 (validRegex!5810 (regex!7889 r!4353)))))

(declare-fun tp!1296091 () Bool)

(declare-fun b!4231250 () Bool)

(declare-fun inv!61419 (String!54471) Bool)

(declare-fun inv!61422 (TokenValueInjection!15666) Bool)

(assert (=> b!4231250 (= e!2627325 (and tp!1296091 (inv!61419 (tag!8753 r!4353)) (inv!61422 (transformation!7889 r!4353)) e!2627327))))

(declare-fun b!4231251 () Bool)

(assert (=> b!4231251 (= e!2627323 (not (isPrefix!4704 Nil!46718 input!3600)))))

(assert (= (and start!404676 res!1740117) b!4231245))

(assert (= (and b!4231245 res!1740114) b!4231246))

(assert (= (and b!4231246 res!1740115) b!4231248))

(assert (= (and b!4231248 res!1740113) b!4231249))

(assert (= (and b!4231249 res!1740116) b!4231251))

(assert (= (and start!404676 (is-Cons!46718 p!3018)) b!4231244))

(assert (= (and start!404676 (is-Cons!46718 input!3600)) b!4231247))

(assert (= b!4231250 b!4231243))

(assert (= start!404676 b!4231250))

(declare-fun m!4817731 () Bool)

(assert (=> b!4231248 m!4817731))

(declare-fun m!4817733 () Bool)

(assert (=> b!4231245 m!4817733))

(declare-fun m!4817735 () Bool)

(assert (=> b!4231251 m!4817735))

(declare-fun m!4817737 () Bool)

(assert (=> b!4231246 m!4817737))

(declare-fun m!4817739 () Bool)

(assert (=> b!4231250 m!4817739))

(declare-fun m!4817741 () Bool)

(assert (=> b!4231250 m!4817741))

(declare-fun m!4817743 () Bool)

(assert (=> b!4231249 m!4817743))

(push 1)

(assert (not b_next!125683))

(assert (not b!4231245))

(assert b_and!334289)

(assert (not b!4231248))

(assert (not b_next!125685))

(assert (not b!4231246))

(assert (not b!4231244))

(assert (not b!4231249))

(assert tp_is_empty!22523)

(assert (not b!4231250))

(assert (not b!4231247))

(assert b_and!334291)

(assert (not b!4231251))

(check-sat)

(pop 1)

(push 1)

(assert b_and!334289)

(assert b_and!334291)

(assert (not b_next!125685))

(assert (not b_next!125683))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4231287 () Bool)

(declare-fun e!2627354 () Bool)

(declare-fun e!2627353 () Bool)

(assert (=> b!4231287 (= e!2627354 e!2627353)))

(declare-fun res!1740145 () Bool)

(assert (=> b!4231287 (=> (not res!1740145) (not e!2627353))))

(assert (=> b!4231287 (= res!1740145 (not (is-Nil!46718 input!3600)))))

(declare-fun b!4231288 () Bool)

(declare-fun res!1740146 () Bool)

(assert (=> b!4231288 (=> (not res!1740146) (not e!2627353))))

(declare-fun head!8969 (List!46842) C!25786)

(assert (=> b!4231288 (= res!1740146 (= (head!8969 p!3018) (head!8969 input!3600)))))

(declare-fun b!4231289 () Bool)

(declare-fun tail!6816 (List!46842) List!46842)

(assert (=> b!4231289 (= e!2627353 (isPrefix!4704 (tail!6816 p!3018) (tail!6816 input!3600)))))

(declare-fun d!1245134 () Bool)

(declare-fun e!2627355 () Bool)

(assert (=> d!1245134 e!2627355))

(declare-fun res!1740148 () Bool)

(assert (=> d!1245134 (=> res!1740148 e!2627355)))

(declare-fun lt!1504193 () Bool)

(assert (=> d!1245134 (= res!1740148 (not lt!1504193))))

(assert (=> d!1245134 (= lt!1504193 e!2627354)))

(declare-fun res!1740147 () Bool)

(assert (=> d!1245134 (=> res!1740147 e!2627354)))

(assert (=> d!1245134 (= res!1740147 (is-Nil!46718 p!3018))))

(assert (=> d!1245134 (= (isPrefix!4704 p!3018 input!3600) lt!1504193)))

(declare-fun b!4231290 () Bool)

(declare-fun size!34242 (List!46842) Int)

(assert (=> b!4231290 (= e!2627355 (>= (size!34242 input!3600) (size!34242 p!3018)))))

(assert (= (and d!1245134 (not res!1740147)) b!4231287))

(assert (= (and b!4231287 res!1740145) b!4231288))

(assert (= (and b!4231288 res!1740146) b!4231289))

(assert (= (and d!1245134 (not res!1740148)) b!4231290))

(declare-fun m!4817759 () Bool)

(assert (=> b!4231288 m!4817759))

(declare-fun m!4817761 () Bool)

(assert (=> b!4231288 m!4817761))

(declare-fun m!4817763 () Bool)

(assert (=> b!4231289 m!4817763))

(declare-fun m!4817765 () Bool)

(assert (=> b!4231289 m!4817765))

(assert (=> b!4231289 m!4817763))

(assert (=> b!4231289 m!4817765))

(declare-fun m!4817767 () Bool)

(assert (=> b!4231289 m!4817767))

(declare-fun m!4817769 () Bool)

(assert (=> b!4231290 m!4817769))

(declare-fun m!4817771 () Bool)

(assert (=> b!4231290 m!4817771))

(assert (=> b!4231245 d!1245134))

(declare-fun b!4231291 () Bool)

(declare-fun e!2627357 () Bool)

(declare-fun e!2627356 () Bool)

(assert (=> b!4231291 (= e!2627357 e!2627356)))

(declare-fun res!1740149 () Bool)

(assert (=> b!4231291 (=> (not res!1740149) (not e!2627356))))

(assert (=> b!4231291 (= res!1740149 (not (is-Nil!46718 input!3600)))))

(declare-fun b!4231292 () Bool)

(declare-fun res!1740150 () Bool)

(assert (=> b!4231292 (=> (not res!1740150) (not e!2627356))))

(assert (=> b!4231292 (= res!1740150 (= (head!8969 Nil!46718) (head!8969 input!3600)))))

(declare-fun b!4231293 () Bool)

(assert (=> b!4231293 (= e!2627356 (isPrefix!4704 (tail!6816 Nil!46718) (tail!6816 input!3600)))))

(declare-fun d!1245138 () Bool)

(declare-fun e!2627358 () Bool)

(assert (=> d!1245138 e!2627358))

(declare-fun res!1740152 () Bool)

(assert (=> d!1245138 (=> res!1740152 e!2627358)))

(declare-fun lt!1504194 () Bool)

(assert (=> d!1245138 (= res!1740152 (not lt!1504194))))

(assert (=> d!1245138 (= lt!1504194 e!2627357)))

(declare-fun res!1740151 () Bool)

(assert (=> d!1245138 (=> res!1740151 e!2627357)))

(assert (=> d!1245138 (= res!1740151 (is-Nil!46718 Nil!46718))))

(assert (=> d!1245138 (= (isPrefix!4704 Nil!46718 input!3600) lt!1504194)))

(declare-fun b!4231294 () Bool)

(assert (=> b!4231294 (= e!2627358 (>= (size!34242 input!3600) (size!34242 Nil!46718)))))

(assert (= (and d!1245138 (not res!1740151)) b!4231291))

(assert (= (and b!4231291 res!1740149) b!4231292))

(assert (= (and b!4231292 res!1740150) b!4231293))

(assert (= (and d!1245138 (not res!1740152)) b!4231294))

(declare-fun m!4817773 () Bool)

(assert (=> b!4231292 m!4817773))

(assert (=> b!4231292 m!4817761))

(declare-fun m!4817775 () Bool)

(assert (=> b!4231293 m!4817775))

(assert (=> b!4231293 m!4817765))

(assert (=> b!4231293 m!4817775))

(assert (=> b!4231293 m!4817765))

(declare-fun m!4817777 () Bool)

(assert (=> b!4231293 m!4817777))

(assert (=> b!4231294 m!4817769))

(declare-fun m!4817779 () Bool)

(assert (=> b!4231294 m!4817779))

(assert (=> b!4231251 d!1245138))

(declare-fun d!1245140 () Bool)

(declare-fun res!1740157 () Bool)

(declare-fun e!2627361 () Bool)

(assert (=> d!1245140 (=> (not res!1740157) (not e!2627361))))

(assert (=> d!1245140 (= res!1740157 (validRegex!5810 (regex!7889 r!4353)))))

(assert (=> d!1245140 (= (ruleValid!3585 thiss!26814 r!4353) e!2627361)))

(declare-fun b!4231299 () Bool)

(declare-fun res!1740158 () Bool)

(assert (=> b!4231299 (=> (not res!1740158) (not e!2627361))))

(declare-fun nullable!4505 (Regex!12794) Bool)

(assert (=> b!4231299 (= res!1740158 (not (nullable!4505 (regex!7889 r!4353))))))

(declare-fun b!4231300 () Bool)

(assert (=> b!4231300 (= e!2627361 (not (= (tag!8753 r!4353) (String!54472 ""))))))

(assert (= (and d!1245140 res!1740157) b!4231299))

(assert (= (and b!4231299 res!1740158) b!4231300))

(assert (=> d!1245140 m!4817743))

(declare-fun m!4817781 () Bool)

(assert (=> b!4231299 m!4817781))

(assert (=> b!4231246 d!1245140))

(declare-fun b!4231340 () Bool)

(declare-fun e!2627396 () Bool)

(declare-fun e!2627394 () Bool)

(assert (=> b!4231340 (= e!2627396 e!2627394)))

(declare-fun res!1740183 () Bool)

(assert (=> b!4231340 (=> (not res!1740183) (not e!2627394))))

(declare-fun call!293460 () Bool)

(assert (=> b!4231340 (= res!1740183 call!293460)))

(declare-fun b!4231341 () Bool)

(declare-fun e!2627398 () Bool)

(declare-fun e!2627393 () Bool)

(assert (=> b!4231341 (= e!2627398 e!2627393)))

(declare-fun c!719189 () Bool)

(assert (=> b!4231341 (= c!719189 (is-Star!12794 (regex!7889 r!4353)))))

(declare-fun b!4231342 () Bool)

(declare-fun e!2627395 () Bool)

(assert (=> b!4231342 (= e!2627393 e!2627395)))

(declare-fun res!1740186 () Bool)

(assert (=> b!4231342 (= res!1740186 (not (nullable!4505 (reg!13123 (regex!7889 r!4353)))))))

(assert (=> b!4231342 (=> (not res!1740186) (not e!2627395))))

(declare-fun b!4231343 () Bool)

(declare-fun res!1740184 () Bool)

(assert (=> b!4231343 (=> res!1740184 e!2627396)))

(assert (=> b!4231343 (= res!1740184 (not (is-Concat!20914 (regex!7889 r!4353))))))

(declare-fun e!2627397 () Bool)

(assert (=> b!4231343 (= e!2627397 e!2627396)))

(declare-fun b!4231344 () Bool)

(declare-fun call!293459 () Bool)

(assert (=> b!4231344 (= e!2627394 call!293459)))

(declare-fun d!1245144 () Bool)

(declare-fun res!1740182 () Bool)

(assert (=> d!1245144 (=> res!1740182 e!2627398)))

(assert (=> d!1245144 (= res!1740182 (is-ElementMatch!12794 (regex!7889 r!4353)))))

(assert (=> d!1245144 (= (validRegex!5810 (regex!7889 r!4353)) e!2627398)))

(declare-fun c!719188 () Bool)

(declare-fun bm!293454 () Bool)

(declare-fun call!293461 () Bool)

(assert (=> bm!293454 (= call!293461 (validRegex!5810 (ite c!719189 (reg!13123 (regex!7889 r!4353)) (ite c!719188 (regOne!26101 (regex!7889 r!4353)) (regTwo!26100 (regex!7889 r!4353))))))))

(declare-fun b!4231345 () Bool)

(assert (=> b!4231345 (= e!2627393 e!2627397)))

(assert (=> b!4231345 (= c!719188 (is-Union!12794 (regex!7889 r!4353)))))

(declare-fun b!4231346 () Bool)

(declare-fun e!2627399 () Bool)

(assert (=> b!4231346 (= e!2627399 call!293460)))

(declare-fun b!4231347 () Bool)

(assert (=> b!4231347 (= e!2627395 call!293461)))

(declare-fun bm!293455 () Bool)

(assert (=> bm!293455 (= call!293460 (validRegex!5810 (ite c!719188 (regTwo!26101 (regex!7889 r!4353)) (regOne!26100 (regex!7889 r!4353)))))))

(declare-fun bm!293456 () Bool)

(assert (=> bm!293456 (= call!293459 call!293461)))

(declare-fun b!4231348 () Bool)

(declare-fun res!1740185 () Bool)

(assert (=> b!4231348 (=> (not res!1740185) (not e!2627399))))

(assert (=> b!4231348 (= res!1740185 call!293459)))

(assert (=> b!4231348 (= e!2627397 e!2627399)))

(assert (= (and d!1245144 (not res!1740182)) b!4231341))

(assert (= (and b!4231341 c!719189) b!4231342))

(assert (= (and b!4231341 (not c!719189)) b!4231345))

(assert (= (and b!4231342 res!1740186) b!4231347))

(assert (= (and b!4231345 c!719188) b!4231348))

(assert (= (and b!4231345 (not c!719188)) b!4231343))

(assert (= (and b!4231348 res!1740185) b!4231346))

(assert (= (and b!4231343 (not res!1740184)) b!4231340))

(assert (= (and b!4231340 res!1740183) b!4231344))

(assert (= (or b!4231346 b!4231340) bm!293455))

(assert (= (or b!4231348 b!4231344) bm!293456))

(assert (= (or b!4231347 bm!293456) bm!293454))

(declare-fun m!4817787 () Bool)

(assert (=> b!4231342 m!4817787))

(declare-fun m!4817789 () Bool)

(assert (=> bm!293454 m!4817789))

(declare-fun m!4817791 () Bool)

(assert (=> bm!293455 m!4817791))

(assert (=> b!4231249 d!1245144))

(declare-fun d!1245148 () Bool)

(assert (=> d!1245148 (= (inv!61419 (tag!8753 r!4353)) (= (mod (str.len (value!245333 (tag!8753 r!4353))) 2) 0))))

(assert (=> b!4231250 d!1245148))

(declare-fun d!1245150 () Bool)

(declare-fun res!1740194 () Bool)

(declare-fun e!2627409 () Bool)

(assert (=> d!1245150 (=> (not res!1740194) (not e!2627409))))

(declare-fun semiInverseModEq!3430 (Int Int) Bool)

(assert (=> d!1245150 (= res!1740194 (semiInverseModEq!3430 (toChars!10480 (transformation!7889 r!4353)) (toValue!10621 (transformation!7889 r!4353))))))

(assert (=> d!1245150 (= (inv!61422 (transformation!7889 r!4353)) e!2627409)))

(declare-fun b!4231360 () Bool)

(declare-fun equivClasses!3329 (Int Int) Bool)

(assert (=> b!4231360 (= e!2627409 (equivClasses!3329 (toChars!10480 (transformation!7889 r!4353)) (toValue!10621 (transformation!7889 r!4353))))))

(assert (= (and d!1245150 res!1740194) b!4231360))

(declare-fun m!4817799 () Bool)

(assert (=> d!1245150 m!4817799))

(declare-fun m!4817801 () Bool)

(assert (=> b!4231360 m!4817801))

(assert (=> b!4231250 d!1245150))

(declare-fun b!4231391 () Bool)

(declare-fun e!2627427 () Option!10035)

(assert (=> b!4231391 (= e!2627427 None!10034)))

(declare-fun b!4231393 () Bool)

(declare-fun e!2627429 () Bool)

(declare-fun matchR!6429 (Regex!12794 List!46842) Bool)

(declare-datatypes ((tuple2!44340 0))(
  ( (tuple2!44341 (_1!25304 List!46842) (_2!25304 List!46842)) )
))
(declare-fun findLongestMatchInner!1694 (Regex!12794 List!46842 Int List!46842 List!46842 Int) tuple2!44340)

(assert (=> b!4231393 (= e!2627429 (matchR!6429 (regex!7889 r!4353) (_1!25304 (findLongestMatchInner!1694 (regex!7889 r!4353) Nil!46718 (size!34242 Nil!46718) input!3600 input!3600 (size!34242 input!3600)))))))

(declare-fun b!4231394 () Bool)

(declare-fun e!2627430 () Bool)

(declare-fun lt!1504212 () Option!10035)

(declare-fun get!15195 (Option!10035) tuple2!44336)

(assert (=> b!4231394 (= e!2627430 (= (size!34240 (_1!25302 (get!15195 lt!1504212))) (size!34242 (originalCharacters!8235 (_1!25302 (get!15195 lt!1504212))))))))

(declare-fun b!4231395 () Bool)

(declare-fun res!1740227 () Bool)

(assert (=> b!4231395 (=> (not res!1740227) (not e!2627430))))

(assert (=> b!4231395 (= res!1740227 (= (rule!11007 (_1!25302 (get!15195 lt!1504212))) r!4353))))

(declare-fun b!4231396 () Bool)

(declare-fun res!1740224 () Bool)

(assert (=> b!4231396 (=> (not res!1740224) (not e!2627430))))

(declare-fun ++!11913 (List!46842 List!46842) List!46842)

(declare-fun list!16867 (BalanceConc!27794) List!46842)

(declare-fun charsOf!5258 (Token!14408) BalanceConc!27794)

(assert (=> b!4231396 (= res!1740224 (= (++!11913 (list!16867 (charsOf!5258 (_1!25302 (get!15195 lt!1504212)))) (_2!25302 (get!15195 lt!1504212))) input!3600))))

(declare-fun b!4231397 () Bool)

(declare-fun res!1740225 () Bool)

(assert (=> b!4231397 (=> (not res!1740225) (not e!2627430))))

(assert (=> b!4231397 (= res!1740225 (< (size!34242 (_2!25302 (get!15195 lt!1504212))) (size!34242 input!3600)))))

(declare-fun b!4231398 () Bool)

(declare-fun res!1740223 () Bool)

(assert (=> b!4231398 (=> (not res!1740223) (not e!2627430))))

(declare-fun apply!10734 (TokenValueInjection!15666 BalanceConc!27794) TokenValue!8119)

(declare-fun seqFromList!5794 (List!46842) BalanceConc!27794)

(assert (=> b!4231398 (= res!1740223 (= (value!245334 (_1!25302 (get!15195 lt!1504212))) (apply!10734 (transformation!7889 (rule!11007 (_1!25302 (get!15195 lt!1504212)))) (seqFromList!5794 (originalCharacters!8235 (_1!25302 (get!15195 lt!1504212)))))))))

(declare-fun b!4231399 () Bool)

(declare-fun e!2627428 () Bool)

(assert (=> b!4231399 (= e!2627428 e!2627430)))

(declare-fun res!1740221 () Bool)

(assert (=> b!4231399 (=> (not res!1740221) (not e!2627430))))

(assert (=> b!4231399 (= res!1740221 (matchR!6429 (regex!7889 r!4353) (list!16867 (charsOf!5258 (_1!25302 (get!15195 lt!1504212))))))))

(declare-fun b!4231392 () Bool)

(declare-fun lt!1504210 () tuple2!44340)

(declare-fun size!34243 (BalanceConc!27794) Int)

(assert (=> b!4231392 (= e!2627427 (Some!10034 (tuple2!44337 (Token!14409 (apply!10734 (transformation!7889 r!4353) (seqFromList!5794 (_1!25304 lt!1504210))) r!4353 (size!34243 (seqFromList!5794 (_1!25304 lt!1504210))) (_1!25304 lt!1504210)) (_2!25304 lt!1504210))))))

(declare-datatypes ((Unit!65849 0))(
  ( (Unit!65850) )
))
(declare-fun lt!1504211 () Unit!65849)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1657 (Regex!12794 List!46842) Unit!65849)

(assert (=> b!4231392 (= lt!1504211 (longestMatchIsAcceptedByMatchOrIsEmpty!1657 (regex!7889 r!4353) input!3600))))

(declare-fun res!1740226 () Bool)

(declare-fun isEmpty!27614 (List!46842) Bool)

(assert (=> b!4231392 (= res!1740226 (isEmpty!27614 (_1!25304 (findLongestMatchInner!1694 (regex!7889 r!4353) Nil!46718 (size!34242 Nil!46718) input!3600 input!3600 (size!34242 input!3600)))))))

(assert (=> b!4231392 (=> res!1740226 e!2627429)))

(assert (=> b!4231392 e!2627429))

(declare-fun lt!1504209 () Unit!65849)

(assert (=> b!4231392 (= lt!1504209 lt!1504211)))

(declare-fun lt!1504208 () Unit!65849)

(declare-fun lemmaSemiInverse!2525 (TokenValueInjection!15666 BalanceConc!27794) Unit!65849)

(assert (=> b!4231392 (= lt!1504208 (lemmaSemiInverse!2525 (transformation!7889 r!4353) (seqFromList!5794 (_1!25304 lt!1504210))))))

(declare-fun d!1245154 () Bool)

(assert (=> d!1245154 e!2627428))

(declare-fun res!1740222 () Bool)

(assert (=> d!1245154 (=> res!1740222 e!2627428)))

(declare-fun isEmpty!27615 (Option!10035) Bool)

(assert (=> d!1245154 (= res!1740222 (isEmpty!27615 lt!1504212))))

(assert (=> d!1245154 (= lt!1504212 e!2627427)))

(declare-fun c!719195 () Bool)

(assert (=> d!1245154 (= c!719195 (isEmpty!27614 (_1!25304 lt!1504210)))))

(declare-fun findLongestMatch!1597 (Regex!12794 List!46842) tuple2!44340)

(assert (=> d!1245154 (= lt!1504210 (findLongestMatch!1597 (regex!7889 r!4353) input!3600))))

(assert (=> d!1245154 (ruleValid!3585 thiss!26814 r!4353)))

(assert (=> d!1245154 (= (maxPrefixOneRule!3429 thiss!26814 r!4353 input!3600) lt!1504212)))

(assert (= (and d!1245154 c!719195) b!4231391))

(assert (= (and d!1245154 (not c!719195)) b!4231392))

(assert (= (and b!4231392 (not res!1740226)) b!4231393))

(assert (= (and d!1245154 (not res!1740222)) b!4231399))

(assert (= (and b!4231399 res!1740221) b!4231396))

(assert (= (and b!4231396 res!1740224) b!4231397))

(assert (= (and b!4231397 res!1740225) b!4231395))

(assert (= (and b!4231395 res!1740227) b!4231398))

(assert (= (and b!4231398 res!1740223) b!4231394))

(assert (=> b!4231393 m!4817779))

(assert (=> b!4231393 m!4817769))

(assert (=> b!4231393 m!4817779))

(assert (=> b!4231393 m!4817769))

(declare-fun m!4817817 () Bool)

(assert (=> b!4231393 m!4817817))

(declare-fun m!4817819 () Bool)

(assert (=> b!4231393 m!4817819))

(declare-fun m!4817821 () Bool)

(assert (=> b!4231396 m!4817821))

(declare-fun m!4817823 () Bool)

(assert (=> b!4231396 m!4817823))

(assert (=> b!4231396 m!4817823))

(declare-fun m!4817825 () Bool)

(assert (=> b!4231396 m!4817825))

(assert (=> b!4231396 m!4817825))

(declare-fun m!4817827 () Bool)

(assert (=> b!4231396 m!4817827))

(declare-fun m!4817829 () Bool)

(assert (=> d!1245154 m!4817829))

(declare-fun m!4817831 () Bool)

(assert (=> d!1245154 m!4817831))

(declare-fun m!4817833 () Bool)

(assert (=> d!1245154 m!4817833))

(assert (=> d!1245154 m!4817737))

(assert (=> b!4231395 m!4817821))

(assert (=> b!4231392 m!4817769))

(declare-fun m!4817835 () Bool)

(assert (=> b!4231392 m!4817835))

(declare-fun m!4817837 () Bool)

(assert (=> b!4231392 m!4817837))

(assert (=> b!4231392 m!4817835))

(declare-fun m!4817839 () Bool)

(assert (=> b!4231392 m!4817839))

(declare-fun m!4817841 () Bool)

(assert (=> b!4231392 m!4817841))

(assert (=> b!4231392 m!4817835))

(assert (=> b!4231392 m!4817779))

(assert (=> b!4231392 m!4817779))

(assert (=> b!4231392 m!4817769))

(assert (=> b!4231392 m!4817817))

(assert (=> b!4231392 m!4817835))

(declare-fun m!4817843 () Bool)

(assert (=> b!4231392 m!4817843))

(declare-fun m!4817845 () Bool)

(assert (=> b!4231392 m!4817845))

(assert (=> b!4231394 m!4817821))

(declare-fun m!4817847 () Bool)

(assert (=> b!4231394 m!4817847))

(assert (=> b!4231397 m!4817821))

(declare-fun m!4817849 () Bool)

(assert (=> b!4231397 m!4817849))

(assert (=> b!4231397 m!4817769))

(assert (=> b!4231398 m!4817821))

(declare-fun m!4817851 () Bool)

(assert (=> b!4231398 m!4817851))

(assert (=> b!4231398 m!4817851))

(declare-fun m!4817853 () Bool)

(assert (=> b!4231398 m!4817853))

(assert (=> b!4231399 m!4817821))

(assert (=> b!4231399 m!4817823))

(assert (=> b!4231399 m!4817823))

(assert (=> b!4231399 m!4817825))

(assert (=> b!4231399 m!4817825))

(declare-fun m!4817855 () Bool)

(assert (=> b!4231399 m!4817855))

(assert (=> b!4231248 d!1245154))

(declare-fun b!4231404 () Bool)

(declare-fun e!2627433 () Bool)

(declare-fun tp!1296111 () Bool)

(assert (=> b!4231404 (= e!2627433 (and tp_is_empty!22523 tp!1296111))))

(assert (=> b!4231247 (= tp!1296090 e!2627433)))

(assert (= (and b!4231247 (is-Cons!46718 (t!349513 input!3600))) b!4231404))

(declare-fun b!4231405 () Bool)

(declare-fun e!2627434 () Bool)

(declare-fun tp!1296112 () Bool)

(assert (=> b!4231405 (= e!2627434 (and tp_is_empty!22523 tp!1296112))))

(assert (=> b!4231244 (= tp!1296089 e!2627434)))

(assert (= (and b!4231244 (is-Cons!46718 (t!349513 p!3018))) b!4231405))

(declare-fun e!2627437 () Bool)

(assert (=> b!4231250 (= tp!1296091 e!2627437)))

(declare-fun b!4231417 () Bool)

(declare-fun tp!1296123 () Bool)

(declare-fun tp!1296127 () Bool)

(assert (=> b!4231417 (= e!2627437 (and tp!1296123 tp!1296127))))

(declare-fun b!4231418 () Bool)

(declare-fun tp!1296125 () Bool)

(assert (=> b!4231418 (= e!2627437 tp!1296125)))

(declare-fun b!4231419 () Bool)

(declare-fun tp!1296126 () Bool)

(declare-fun tp!1296124 () Bool)

(assert (=> b!4231419 (= e!2627437 (and tp!1296126 tp!1296124))))

(declare-fun b!4231416 () Bool)

(assert (=> b!4231416 (= e!2627437 tp_is_empty!22523)))

(assert (= (and b!4231250 (is-ElementMatch!12794 (regex!7889 r!4353))) b!4231416))

(assert (= (and b!4231250 (is-Concat!20914 (regex!7889 r!4353))) b!4231417))

(assert (= (and b!4231250 (is-Star!12794 (regex!7889 r!4353))) b!4231418))

(assert (= (and b!4231250 (is-Union!12794 (regex!7889 r!4353))) b!4231419))

(push 1)

(assert (not b!4231398))

(assert (not b!4231396))

(assert (not b!4231393))

(assert (not b!4231288))

(assert (not b!4231394))

(assert b_and!334289)

(assert (not b_next!125685))

(assert (not b!4231292))

(assert (not b!4231342))

(assert b_and!334291)

(assert (not bm!293454))

(assert (not b!4231417))

(assert (not b!4231289))

(assert (not b!4231419))

(assert (not b!4231395))

(assert (not b!4231293))

(assert (not d!1245154))

(assert (not b_next!125683))

(assert (not d!1245140))

(assert (not b!4231299))

(assert (not b!4231294))

(assert (not b!4231397))

(assert (not b!4231418))

(assert (not d!1245150))

(assert (not b!4231290))

(assert (not b!4231405))

(assert tp_is_empty!22523)

(assert (not b!4231360))

(assert (not b!4231404))

(assert (not bm!293455))

(assert (not b!4231392))

(assert (not b!4231399))

(check-sat)

(pop 1)

(push 1)

(assert b_and!334289)

(assert b_and!334291)

(assert (not b_next!125685))

(assert (not b_next!125683))

(check-sat)

(pop 1)


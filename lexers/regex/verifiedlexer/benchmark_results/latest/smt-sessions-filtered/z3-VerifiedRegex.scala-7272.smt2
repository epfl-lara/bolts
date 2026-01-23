; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!388224 () Bool)

(assert start!388224)

(declare-fun b!4098215 () Bool)

(declare-fun b_free!114633 () Bool)

(declare-fun b_next!115337 () Bool)

(assert (=> b!4098215 (= b_free!114633 (not b_next!115337))))

(declare-fun tp!1240361 () Bool)

(declare-fun b_and!316311 () Bool)

(assert (=> b!4098215 (= tp!1240361 b_and!316311)))

(declare-fun b_free!114635 () Bool)

(declare-fun b_next!115339 () Bool)

(assert (=> b!4098215 (= b_free!114635 (not b_next!115339))))

(declare-fun tp!1240365 () Bool)

(declare-fun b_and!316313 () Bool)

(assert (=> b!4098215 (= tp!1240365 b_and!316313)))

(declare-fun b!4098209 () Bool)

(declare-fun b_free!114637 () Bool)

(declare-fun b_next!115341 () Bool)

(assert (=> b!4098209 (= b_free!114637 (not b_next!115341))))

(declare-fun tp!1240362 () Bool)

(declare-fun b_and!316315 () Bool)

(assert (=> b!4098209 (= tp!1240362 b_and!316315)))

(declare-fun b_free!114639 () Bool)

(declare-fun b_next!115343 () Bool)

(assert (=> b!4098209 (= b_free!114639 (not b_next!115343))))

(declare-fun tp!1240359 () Bool)

(declare-fun b_and!316317 () Bool)

(assert (=> b!4098209 (= tp!1240359 b_and!316317)))

(declare-fun res!1675388 () Bool)

(declare-fun e!2543116 () Bool)

(assert (=> start!388224 (=> (not res!1675388) (not e!2543116))))

(declare-datatypes ((LexerInterface!6705 0))(
  ( (LexerInterfaceExt!6702 (__x!26909 Int)) (Lexer!6703) )
))
(declare-fun thiss!26199 () LexerInterface!6705)

(get-info :version)

(assert (=> start!388224 (= res!1675388 ((_ is Lexer!6703) thiss!26199))))

(assert (=> start!388224 e!2543116))

(assert (=> start!388224 true))

(declare-fun e!2543124 () Bool)

(assert (=> start!388224 e!2543124))

(declare-fun e!2543119 () Bool)

(assert (=> start!388224 e!2543119))

(declare-fun e!2543128 () Bool)

(assert (=> start!388224 e!2543128))

(declare-fun e!2543120 () Bool)

(assert (=> start!388224 e!2543120))

(declare-fun e!2543126 () Bool)

(assert (=> start!388224 e!2543126))

(declare-fun e!2543121 () Bool)

(assert (=> b!4098209 (= e!2543121 (and tp!1240362 tp!1240359))))

(declare-fun b!4098210 () Bool)

(declare-fun res!1675387 () Bool)

(assert (=> b!4098210 (=> (not res!1675387) (not e!2543116))))

(declare-datatypes ((C!24228 0))(
  ( (C!24229 (val!14224 Int)) )
))
(declare-datatypes ((List!44071 0))(
  ( (Nil!43947) (Cons!43947 (h!49367 C!24228) (t!339566 List!44071)) )
))
(declare-fun p!2988 () List!44071)

(declare-fun isEmpty!26300 (List!44071) Bool)

(assert (=> b!4098210 (= res!1675387 (not (isEmpty!26300 p!2988)))))

(declare-fun b!4098211 () Bool)

(declare-fun res!1675390 () Bool)

(assert (=> b!4098211 (=> (not res!1675390) (not e!2543116))))

(declare-fun suffix!1518 () List!44071)

(declare-fun input!3411 () List!44071)

(declare-fun ++!11522 (List!44071 List!44071) List!44071)

(assert (=> b!4098211 (= res!1675390 (= input!3411 (++!11522 p!2988 suffix!1518)))))

(declare-fun b!4098212 () Bool)

(declare-fun e!2543122 () Bool)

(declare-datatypes ((Regex!12021 0))(
  ( (ElementMatch!12021 (c!706190 C!24228)) (Concat!19367 (regOne!24554 Regex!12021) (regTwo!24554 Regex!12021)) (EmptyExpr!12021) (Star!12021 (reg!12350 Regex!12021)) (EmptyLang!12021) (Union!12021 (regOne!24555 Regex!12021) (regTwo!24555 Regex!12021)) )
))
(declare-datatypes ((String!50479 0))(
  ( (String!50480 (value!223432 String)) )
))
(declare-datatypes ((List!44072 0))(
  ( (Nil!43948) (Cons!43948 (h!49368 (_ BitVec 16)) (t!339567 List!44072)) )
))
(declare-datatypes ((TokenValue!7346 0))(
  ( (FloatLiteralValue!14692 (text!51867 List!44072)) (TokenValueExt!7345 (__x!26910 Int)) (Broken!36730 (value!223433 List!44072)) (Object!7469) (End!7346) (Def!7346) (Underscore!7346) (Match!7346) (Else!7346) (Error!7346) (Case!7346) (If!7346) (Extends!7346) (Abstract!7346) (Class!7346) (Val!7346) (DelimiterValue!14692 (del!7406 List!44072)) (KeywordValue!7352 (value!223434 List!44072)) (CommentValue!14692 (value!223435 List!44072)) (WhitespaceValue!14692 (value!223436 List!44072)) (IndentationValue!7346 (value!223437 List!44072)) (String!50481) (Int32!7346) (Broken!36731 (value!223438 List!44072)) (Boolean!7347) (Unit!63486) (OperatorValue!7349 (op!7406 List!44072)) (IdentifierValue!14692 (value!223439 List!44072)) (IdentifierValue!14693 (value!223440 List!44072)) (WhitespaceValue!14693 (value!223441 List!44072)) (True!14692) (False!14692) (Broken!36732 (value!223442 List!44072)) (Broken!36733 (value!223443 List!44072)) (True!14693) (RightBrace!7346) (RightBracket!7346) (Colon!7346) (Null!7346) (Comma!7346) (LeftBracket!7346) (False!14693) (LeftBrace!7346) (ImaginaryLiteralValue!7346 (text!51868 List!44072)) (StringLiteralValue!22038 (value!223444 List!44072)) (EOFValue!7346 (value!223445 List!44072)) (IdentValue!7346 (value!223446 List!44072)) (DelimiterValue!14693 (value!223447 List!44072)) (DedentValue!7346 (value!223448 List!44072)) (NewLineValue!7346 (value!223449 List!44072)) (IntegerValue!22038 (value!223450 (_ BitVec 32)) (text!51869 List!44072)) (IntegerValue!22039 (value!223451 Int) (text!51870 List!44072)) (Times!7346) (Or!7346) (Equal!7346) (Minus!7346) (Broken!36734 (value!223452 List!44072)) (And!7346) (Div!7346) (LessEqual!7346) (Mod!7346) (Concat!19368) (Not!7346) (Plus!7346) (SpaceValue!7346 (value!223453 List!44072)) (IntegerValue!22040 (value!223454 Int) (text!51871 List!44072)) (StringLiteralValue!22039 (text!51872 List!44072)) (FloatLiteralValue!14693 (text!51873 List!44072)) (BytesLiteralValue!7346 (value!223455 List!44072)) (CommentValue!14693 (value!223456 List!44072)) (StringLiteralValue!22040 (value!223457 List!44072)) (ErrorTokenValue!7346 (msg!7407 List!44072)) )
))
(declare-datatypes ((IArray!26659 0))(
  ( (IArray!26660 (innerList!13387 List!44071)) )
))
(declare-datatypes ((Conc!13327 0))(
  ( (Node!13327 (left!33039 Conc!13327) (right!33369 Conc!13327) (csize!26884 Int) (cheight!13538 Int)) (Leaf!20600 (xs!16633 IArray!26659) (csize!26885 Int)) (Empty!13327) )
))
(declare-datatypes ((BalanceConc!26248 0))(
  ( (BalanceConc!26249 (c!706191 Conc!13327)) )
))
(declare-datatypes ((TokenValueInjection!14120 0))(
  ( (TokenValueInjection!14121 (toValue!9720 Int) (toChars!9579 Int)) )
))
(declare-datatypes ((Rule!14032 0))(
  ( (Rule!14033 (regex!7116 Regex!12021) (tag!7976 String!50479) (isSeparator!7116 Bool) (transformation!7116 TokenValueInjection!14120)) )
))
(declare-datatypes ((List!44073 0))(
  ( (Nil!43949) (Cons!43949 (h!49369 Rule!14032) (t!339568 List!44073)) )
))
(declare-fun rules!3870 () List!44073)

(declare-fun r!4213 () Rule!14032)

(assert (=> b!4098212 (= e!2543122 (or (and ((_ is Cons!43949) rules!3870) (= (h!49369 rules!3870) r!4213)) (and ((_ is Cons!43949) rules!3870) (not (= (h!49369 rules!3870) r!4213))) ((_ is Nil!43949) rules!3870)))))

(declare-fun b!4098213 () Bool)

(declare-fun res!1675391 () Bool)

(assert (=> b!4098213 (=> (not res!1675391) (not e!2543116))))

(declare-fun rulesInvariant!6048 (LexerInterface!6705 List!44073) Bool)

(assert (=> b!4098213 (= res!1675391 (rulesInvariant!6048 thiss!26199 rules!3870))))

(declare-fun b!4098214 () Bool)

(declare-fun tp_is_empty!21045 () Bool)

(declare-fun tp!1240358 () Bool)

(assert (=> b!4098214 (= e!2543124 (and tp_is_empty!21045 tp!1240358))))

(declare-fun e!2543118 () Bool)

(assert (=> b!4098215 (= e!2543118 (and tp!1240361 tp!1240365))))

(declare-fun b!4098216 () Bool)

(declare-fun tp!1240364 () Bool)

(declare-fun inv!58681 (String!50479) Bool)

(declare-fun inv!58683 (TokenValueInjection!14120) Bool)

(assert (=> b!4098216 (= e!2543126 (and tp!1240364 (inv!58681 (tag!7976 r!4213)) (inv!58683 (transformation!7116 r!4213)) e!2543121))))

(declare-fun b!4098217 () Bool)

(declare-fun e!2543127 () Bool)

(assert (=> b!4098217 (= e!2543127 (not e!2543122))))

(declare-fun res!1675384 () Bool)

(assert (=> b!4098217 (=> res!1675384 e!2543122)))

(declare-fun matchR!5962 (Regex!12021 List!44071) Bool)

(assert (=> b!4098217 (= res!1675384 (not (matchR!5962 (regex!7116 r!4213) p!2988)))))

(declare-fun ruleValid!3036 (LexerInterface!6705 Rule!14032) Bool)

(assert (=> b!4098217 (ruleValid!3036 thiss!26199 r!4213)))

(declare-datatypes ((Unit!63487 0))(
  ( (Unit!63488) )
))
(declare-fun lt!1465877 () Unit!63487)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2102 (LexerInterface!6705 Rule!14032 List!44073) Unit!63487)

(assert (=> b!4098217 (= lt!1465877 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2102 thiss!26199 r!4213 rules!3870))))

(declare-fun e!2543117 () Bool)

(declare-fun b!4098218 () Bool)

(declare-fun tp!1240363 () Bool)

(assert (=> b!4098218 (= e!2543117 (and tp!1240363 (inv!58681 (tag!7976 (h!49369 rules!3870))) (inv!58683 (transformation!7116 (h!49369 rules!3870))) e!2543118))))

(declare-fun b!4098219 () Bool)

(declare-fun tp!1240360 () Bool)

(assert (=> b!4098219 (= e!2543120 (and tp_is_empty!21045 tp!1240360))))

(declare-fun b!4098220 () Bool)

(declare-fun res!1675385 () Bool)

(assert (=> b!4098220 (=> (not res!1675385) (not e!2543116))))

(declare-fun isEmpty!26301 (List!44073) Bool)

(assert (=> b!4098220 (= res!1675385 (not (isEmpty!26301 rules!3870)))))

(declare-fun b!4098221 () Bool)

(declare-fun tp!1240366 () Bool)

(assert (=> b!4098221 (= e!2543119 (and e!2543117 tp!1240366))))

(declare-fun b!4098222 () Bool)

(assert (=> b!4098222 (= e!2543116 e!2543127)))

(declare-fun res!1675389 () Bool)

(assert (=> b!4098222 (=> (not res!1675389) (not e!2543127))))

(declare-fun lt!1465878 () BalanceConc!26248)

(declare-datatypes ((Token!13358 0))(
  ( (Token!13359 (value!223458 TokenValue!7346) (rule!10272 Rule!14032) (size!32834 Int) (originalCharacters!7710 List!44071)) )
))
(declare-datatypes ((tuple2!42872 0))(
  ( (tuple2!42873 (_1!24570 Token!13358) (_2!24570 List!44071)) )
))
(declare-datatypes ((Option!9522 0))(
  ( (None!9521) (Some!9521 (v!40025 tuple2!42872)) )
))
(declare-fun maxPrefix!3995 (LexerInterface!6705 List!44073 List!44071) Option!9522)

(declare-fun apply!10299 (TokenValueInjection!14120 BalanceConc!26248) TokenValue!7346)

(declare-fun size!32835 (List!44071) Int)

(assert (=> b!4098222 (= res!1675389 (= (maxPrefix!3995 thiss!26199 rules!3870 input!3411) (Some!9521 (tuple2!42873 (Token!13359 (apply!10299 (transformation!7116 r!4213) lt!1465878) r!4213 (size!32835 p!2988) p!2988) suffix!1518))))))

(declare-fun lt!1465879 () Unit!63487)

(declare-fun lemmaSemiInverse!2083 (TokenValueInjection!14120 BalanceConc!26248) Unit!63487)

(assert (=> b!4098222 (= lt!1465879 (lemmaSemiInverse!2083 (transformation!7116 r!4213) lt!1465878))))

(declare-fun seqFromList!5333 (List!44071) BalanceConc!26248)

(assert (=> b!4098222 (= lt!1465878 (seqFromList!5333 p!2988))))

(declare-fun b!4098223 () Bool)

(declare-fun tp!1240357 () Bool)

(assert (=> b!4098223 (= e!2543128 (and tp_is_empty!21045 tp!1240357))))

(declare-fun b!4098224 () Bool)

(declare-fun res!1675386 () Bool)

(assert (=> b!4098224 (=> (not res!1675386) (not e!2543116))))

(declare-fun contains!8803 (List!44073 Rule!14032) Bool)

(assert (=> b!4098224 (= res!1675386 (contains!8803 rules!3870 r!4213))))

(assert (= (and start!388224 res!1675388) b!4098220))

(assert (= (and b!4098220 res!1675385) b!4098213))

(assert (= (and b!4098213 res!1675391) b!4098224))

(assert (= (and b!4098224 res!1675386) b!4098211))

(assert (= (and b!4098211 res!1675390) b!4098210))

(assert (= (and b!4098210 res!1675387) b!4098222))

(assert (= (and b!4098222 res!1675389) b!4098217))

(assert (= (and b!4098217 (not res!1675384)) b!4098212))

(assert (= (and start!388224 ((_ is Cons!43947) suffix!1518)) b!4098214))

(assert (= b!4098218 b!4098215))

(assert (= b!4098221 b!4098218))

(assert (= (and start!388224 ((_ is Cons!43949) rules!3870)) b!4098221))

(assert (= (and start!388224 ((_ is Cons!43947) p!2988)) b!4098223))

(assert (= (and start!388224 ((_ is Cons!43947) input!3411)) b!4098219))

(assert (= b!4098216 b!4098209))

(assert (= start!388224 b!4098216))

(declare-fun m!4705247 () Bool)

(assert (=> b!4098211 m!4705247))

(declare-fun m!4705249 () Bool)

(assert (=> b!4098213 m!4705249))

(declare-fun m!4705251 () Bool)

(assert (=> b!4098217 m!4705251))

(declare-fun m!4705253 () Bool)

(assert (=> b!4098217 m!4705253))

(declare-fun m!4705255 () Bool)

(assert (=> b!4098217 m!4705255))

(declare-fun m!4705257 () Bool)

(assert (=> b!4098218 m!4705257))

(declare-fun m!4705259 () Bool)

(assert (=> b!4098218 m!4705259))

(declare-fun m!4705261 () Bool)

(assert (=> b!4098220 m!4705261))

(declare-fun m!4705263 () Bool)

(assert (=> b!4098216 m!4705263))

(declare-fun m!4705265 () Bool)

(assert (=> b!4098216 m!4705265))

(declare-fun m!4705267 () Bool)

(assert (=> b!4098224 m!4705267))

(declare-fun m!4705269 () Bool)

(assert (=> b!4098222 m!4705269))

(declare-fun m!4705271 () Bool)

(assert (=> b!4098222 m!4705271))

(declare-fun m!4705273 () Bool)

(assert (=> b!4098222 m!4705273))

(declare-fun m!4705275 () Bool)

(assert (=> b!4098222 m!4705275))

(declare-fun m!4705277 () Bool)

(assert (=> b!4098222 m!4705277))

(declare-fun m!4705279 () Bool)

(assert (=> b!4098210 m!4705279))

(check-sat b_and!316311 (not b!4098224) b_and!316313 (not b_next!115339) (not b!4098223) (not b!4098214) (not b!4098218) b_and!316315 (not b_next!115343) (not b!4098220) (not b_next!115337) b_and!316317 (not b!4098219) tp_is_empty!21045 (not b!4098211) (not b!4098216) (not b!4098217) (not b!4098210) (not b!4098221) (not b!4098222) (not b!4098213) (not b_next!115341))
(check-sat (not b_next!115337) b_and!316311 b_and!316313 b_and!316317 (not b_next!115339) b_and!316315 (not b_next!115343) (not b_next!115341))

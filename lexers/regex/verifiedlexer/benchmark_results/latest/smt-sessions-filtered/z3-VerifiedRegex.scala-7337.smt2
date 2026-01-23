; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!390146 () Bool)

(assert start!390146)

(declare-fun b!4116347 () Bool)

(declare-fun b_free!116083 () Bool)

(declare-fun b_next!116787 () Bool)

(assert (=> b!4116347 (= b_free!116083 (not b_next!116787))))

(declare-fun tp!1254019 () Bool)

(declare-fun b_and!318057 () Bool)

(assert (=> b!4116347 (= tp!1254019 b_and!318057)))

(declare-fun b_free!116085 () Bool)

(declare-fun b_next!116789 () Bool)

(assert (=> b!4116347 (= b_free!116085 (not b_next!116789))))

(declare-fun tp!1254018 () Bool)

(declare-fun b_and!318059 () Bool)

(assert (=> b!4116347 (= tp!1254018 b_and!318059)))

(declare-fun b!4116344 () Bool)

(declare-fun b_free!116087 () Bool)

(declare-fun b_next!116791 () Bool)

(assert (=> b!4116344 (= b_free!116087 (not b_next!116791))))

(declare-fun tp!1254022 () Bool)

(declare-fun b_and!318061 () Bool)

(assert (=> b!4116344 (= tp!1254022 b_and!318061)))

(declare-fun b_free!116089 () Bool)

(declare-fun b_next!116793 () Bool)

(assert (=> b!4116344 (= b_free!116089 (not b_next!116793))))

(declare-fun tp!1254025 () Bool)

(declare-fun b_and!318063 () Bool)

(assert (=> b!4116344 (= tp!1254025 b_and!318063)))

(declare-fun b!4116342 () Bool)

(declare-fun b_free!116091 () Bool)

(declare-fun b_next!116795 () Bool)

(assert (=> b!4116342 (= b_free!116091 (not b_next!116795))))

(declare-fun tp!1254026 () Bool)

(declare-fun b_and!318065 () Bool)

(assert (=> b!4116342 (= tp!1254026 b_and!318065)))

(declare-fun b_free!116093 () Bool)

(declare-fun b_next!116797 () Bool)

(assert (=> b!4116342 (= b_free!116093 (not b_next!116797))))

(declare-fun tp!1254020 () Bool)

(declare-fun b_and!318067 () Bool)

(assert (=> b!4116342 (= tp!1254020 b_and!318067)))

(declare-fun e!2554128 () Bool)

(assert (=> b!4116342 (= e!2554128 (and tp!1254026 tp!1254020))))

(declare-fun b!4116343 () Bool)

(declare-fun e!2554131 () Bool)

(declare-datatypes ((List!44577 0))(
  ( (Nil!44453) (Cons!44453 (h!49873 (_ BitVec 16)) (t!340400 List!44577)) )
))
(declare-datatypes ((TokenValue!7476 0))(
  ( (FloatLiteralValue!14952 (text!52777 List!44577)) (TokenValueExt!7475 (__x!27169 Int)) (Broken!37380 (value!227039 List!44577)) (Object!7599) (End!7476) (Def!7476) (Underscore!7476) (Match!7476) (Else!7476) (Error!7476) (Case!7476) (If!7476) (Extends!7476) (Abstract!7476) (Class!7476) (Val!7476) (DelimiterValue!14952 (del!7536 List!44577)) (KeywordValue!7482 (value!227040 List!44577)) (CommentValue!14952 (value!227041 List!44577)) (WhitespaceValue!14952 (value!227042 List!44577)) (IndentationValue!7476 (value!227043 List!44577)) (String!51129) (Int32!7476) (Broken!37381 (value!227044 List!44577)) (Boolean!7477) (Unit!63814) (OperatorValue!7479 (op!7536 List!44577)) (IdentifierValue!14952 (value!227045 List!44577)) (IdentifierValue!14953 (value!227046 List!44577)) (WhitespaceValue!14953 (value!227047 List!44577)) (True!14952) (False!14952) (Broken!37382 (value!227048 List!44577)) (Broken!37383 (value!227049 List!44577)) (True!14953) (RightBrace!7476) (RightBracket!7476) (Colon!7476) (Null!7476) (Comma!7476) (LeftBracket!7476) (False!14953) (LeftBrace!7476) (ImaginaryLiteralValue!7476 (text!52778 List!44577)) (StringLiteralValue!22428 (value!227050 List!44577)) (EOFValue!7476 (value!227051 List!44577)) (IdentValue!7476 (value!227052 List!44577)) (DelimiterValue!14953 (value!227053 List!44577)) (DedentValue!7476 (value!227054 List!44577)) (NewLineValue!7476 (value!227055 List!44577)) (IntegerValue!22428 (value!227056 (_ BitVec 32)) (text!52779 List!44577)) (IntegerValue!22429 (value!227057 Int) (text!52780 List!44577)) (Times!7476) (Or!7476) (Equal!7476) (Minus!7476) (Broken!37384 (value!227058 List!44577)) (And!7476) (Div!7476) (LessEqual!7476) (Mod!7476) (Concat!19627) (Not!7476) (Plus!7476) (SpaceValue!7476 (value!227059 List!44577)) (IntegerValue!22430 (value!227060 Int) (text!52781 List!44577)) (StringLiteralValue!22429 (text!52782 List!44577)) (FloatLiteralValue!14953 (text!52783 List!44577)) (BytesLiteralValue!7476 (value!227061 List!44577)) (CommentValue!14953 (value!227062 List!44577)) (StringLiteralValue!22430 (value!227063 List!44577)) (ErrorTokenValue!7476 (msg!7537 List!44577)) )
))
(declare-datatypes ((C!24488 0))(
  ( (C!24489 (val!14354 Int)) )
))
(declare-datatypes ((List!44578 0))(
  ( (Nil!44454) (Cons!44454 (h!49874 C!24488) (t!340401 List!44578)) )
))
(declare-datatypes ((IArray!26919 0))(
  ( (IArray!26920 (innerList!13517 List!44578)) )
))
(declare-datatypes ((Conc!13457 0))(
  ( (Node!13457 (left!33310 Conc!13457) (right!33640 Conc!13457) (csize!27144 Int) (cheight!13668 Int)) (Leaf!20795 (xs!16763 IArray!26919) (csize!27145 Int)) (Empty!13457) )
))
(declare-datatypes ((BalanceConc!26508 0))(
  ( (BalanceConc!26509 (c!707140 Conc!13457)) )
))
(declare-datatypes ((Regex!12151 0))(
  ( (ElementMatch!12151 (c!707141 C!24488)) (Concat!19628 (regOne!24814 Regex!12151) (regTwo!24814 Regex!12151)) (EmptyExpr!12151) (Star!12151 (reg!12480 Regex!12151)) (EmptyLang!12151) (Union!12151 (regOne!24815 Regex!12151) (regTwo!24815 Regex!12151)) )
))
(declare-datatypes ((String!51130 0))(
  ( (String!51131 (value!227064 String)) )
))
(declare-datatypes ((TokenValueInjection!14380 0))(
  ( (TokenValueInjection!14381 (toValue!9894 Int) (toChars!9753 Int)) )
))
(declare-datatypes ((Rule!14292 0))(
  ( (Rule!14293 (regex!7246 Regex!12151) (tag!8106 String!51130) (isSeparator!7246 Bool) (transformation!7246 TokenValueInjection!14380)) )
))
(declare-fun r!4008 () Rule!14292)

(declare-fun validRegex!5464 (Regex!12151) Bool)

(assert (=> b!4116343 (= e!2554131 (not (validRegex!5464 (regex!7246 r!4008))))))

(declare-fun e!2554125 () Bool)

(assert (=> b!4116344 (= e!2554125 (and tp!1254022 tp!1254025))))

(declare-fun b!4116345 () Bool)

(declare-fun e!2554132 () Bool)

(declare-fun tp_is_empty!21225 () Bool)

(declare-fun tp!1254021 () Bool)

(assert (=> b!4116345 (= e!2554132 (and tp_is_empty!21225 tp!1254021))))

(declare-fun b!4116346 () Bool)

(declare-fun e!2554127 () Bool)

(assert (=> b!4116346 (= e!2554127 e!2554131)))

(declare-fun res!1681242 () Bool)

(assert (=> b!4116346 (=> (not res!1681242) (not e!2554131))))

(declare-datatypes ((List!44579 0))(
  ( (Nil!44455) (Cons!44455 (h!49875 Rule!14292) (t!340402 List!44579)) )
))
(declare-fun rules!3756 () List!44579)

(declare-fun input!3238 () List!44578)

(declare-fun p!2912 () List!44578)

(declare-datatypes ((LexerInterface!6835 0))(
  ( (LexerInterfaceExt!6832 (__x!27170 Int)) (Lexer!6833) )
))
(declare-fun thiss!25645 () LexerInterface!6835)

(declare-fun lt!1468810 () BalanceConc!26508)

(declare-datatypes ((Token!13422 0))(
  ( (Token!13423 (value!227065 TokenValue!7476) (rule!10310 Rule!14292) (size!32899 Int) (originalCharacters!7742 List!44578)) )
))
(declare-datatypes ((tuple2!42946 0))(
  ( (tuple2!42947 (_1!24607 Token!13422) (_2!24607 List!44578)) )
))
(declare-datatypes ((Option!9554 0))(
  ( (None!9553) (Some!9553 (v!40129 tuple2!42946)) )
))
(declare-fun maxPrefix!4027 (LexerInterface!6835 List!44579 List!44578) Option!9554)

(declare-fun apply!10319 (TokenValueInjection!14380 BalanceConc!26508) TokenValue!7476)

(declare-fun size!32900 (List!44578) Int)

(declare-fun getSuffix!2510 (List!44578 List!44578) List!44578)

(assert (=> b!4116346 (= res!1681242 (= (maxPrefix!4027 thiss!25645 rules!3756 input!3238) (Some!9553 (tuple2!42947 (Token!13423 (apply!10319 (transformation!7246 r!4008) lt!1468810) r!4008 (size!32900 p!2912) p!2912) (getSuffix!2510 input!3238 p!2912)))))))

(declare-datatypes ((Unit!63815 0))(
  ( (Unit!63816) )
))
(declare-fun lt!1468809 () Unit!63815)

(declare-fun lemmaSemiInverse!2104 (TokenValueInjection!14380 BalanceConc!26508) Unit!63815)

(assert (=> b!4116346 (= lt!1468809 (lemmaSemiInverse!2104 (transformation!7246 r!4008) lt!1468810))))

(declare-fun seqFromList!5363 (List!44578) BalanceConc!26508)

(assert (=> b!4116346 (= lt!1468810 (seqFromList!5363 p!2912))))

(declare-fun e!2554133 () Bool)

(assert (=> b!4116347 (= e!2554133 (and tp!1254019 tp!1254018))))

(declare-fun b!4116348 () Bool)

(declare-fun res!1681239 () Bool)

(assert (=> b!4116348 (=> (not res!1681239) (not e!2554127))))

(declare-fun contains!8916 (List!44579 Rule!14292) Bool)

(assert (=> b!4116348 (= res!1681239 (contains!8916 rules!3756 r!4008))))

(declare-fun b!4116350 () Bool)

(declare-fun res!1681240 () Bool)

(assert (=> b!4116350 (=> (not res!1681240) (not e!2554127))))

(declare-fun isEmpty!26429 (List!44578) Bool)

(assert (=> b!4116350 (= res!1681240 (not (isEmpty!26429 p!2912)))))

(declare-fun b!4116351 () Bool)

(declare-fun res!1681241 () Bool)

(assert (=> b!4116351 (=> (not res!1681241) (not e!2554127))))

(declare-fun isPrefix!4181 (List!44578 List!44578) Bool)

(assert (=> b!4116351 (= res!1681241 (isPrefix!4181 p!2912 input!3238))))

(declare-fun tp!1254024 () Bool)

(declare-fun e!2554126 () Bool)

(declare-fun b!4116352 () Bool)

(declare-fun inv!59038 (String!51130) Bool)

(declare-fun inv!59040 (TokenValueInjection!14380) Bool)

(assert (=> b!4116352 (= e!2554126 (and tp!1254024 (inv!59038 (tag!8106 r!4008)) (inv!59040 (transformation!7246 r!4008)) e!2554133))))

(declare-fun b!4116353 () Bool)

(declare-fun e!2554124 () Bool)

(declare-fun e!2554130 () Bool)

(declare-fun tp!1254023 () Bool)

(assert (=> b!4116353 (= e!2554124 (and e!2554130 tp!1254023))))

(declare-fun b!4116354 () Bool)

(declare-fun res!1681244 () Bool)

(assert (=> b!4116354 (=> (not res!1681244) (not e!2554127))))

(declare-fun rBis!149 () Rule!14292)

(assert (=> b!4116354 (= res!1681244 (contains!8916 rules!3756 rBis!149))))

(declare-fun b!4116355 () Bool)

(declare-fun e!2554121 () Bool)

(declare-fun tp!1254028 () Bool)

(assert (=> b!4116355 (= e!2554121 (and tp_is_empty!21225 tp!1254028))))

(declare-fun res!1681245 () Bool)

(assert (=> start!390146 (=> (not res!1681245) (not e!2554127))))

(get-info :version)

(assert (=> start!390146 (= res!1681245 ((_ is Lexer!6833) thiss!25645))))

(assert (=> start!390146 e!2554127))

(assert (=> start!390146 e!2554124))

(assert (=> start!390146 e!2554132))

(assert (=> start!390146 true))

(assert (=> start!390146 e!2554126))

(assert (=> start!390146 e!2554121))

(declare-fun e!2554122 () Bool)

(assert (=> start!390146 e!2554122))

(declare-fun tp!1254027 () Bool)

(declare-fun b!4116349 () Bool)

(assert (=> b!4116349 (= e!2554122 (and tp!1254027 (inv!59038 (tag!8106 rBis!149)) (inv!59040 (transformation!7246 rBis!149)) e!2554128))))

(declare-fun b!4116356 () Bool)

(declare-fun tp!1254017 () Bool)

(assert (=> b!4116356 (= e!2554130 (and tp!1254017 (inv!59038 (tag!8106 (h!49875 rules!3756))) (inv!59040 (transformation!7246 (h!49875 rules!3756))) e!2554125))))

(declare-fun b!4116357 () Bool)

(declare-fun res!1681243 () Bool)

(assert (=> b!4116357 (=> (not res!1681243) (not e!2554127))))

(declare-fun rulesInvariant!6132 (LexerInterface!6835 List!44579) Bool)

(assert (=> b!4116357 (= res!1681243 (rulesInvariant!6132 thiss!25645 rules!3756))))

(declare-fun b!4116358 () Bool)

(declare-fun res!1681238 () Bool)

(assert (=> b!4116358 (=> (not res!1681238) (not e!2554127))))

(declare-fun isEmpty!26430 (List!44579) Bool)

(assert (=> b!4116358 (= res!1681238 (not (isEmpty!26430 rules!3756)))))

(assert (= (and start!390146 res!1681245) b!4116351))

(assert (= (and b!4116351 res!1681241) b!4116358))

(assert (= (and b!4116358 res!1681238) b!4116357))

(assert (= (and b!4116357 res!1681243) b!4116348))

(assert (= (and b!4116348 res!1681239) b!4116354))

(assert (= (and b!4116354 res!1681244) b!4116350))

(assert (= (and b!4116350 res!1681240) b!4116346))

(assert (= (and b!4116346 res!1681242) b!4116343))

(assert (= b!4116356 b!4116344))

(assert (= b!4116353 b!4116356))

(assert (= (and start!390146 ((_ is Cons!44455) rules!3756)) b!4116353))

(assert (= (and start!390146 ((_ is Cons!44454) p!2912)) b!4116345))

(assert (= b!4116352 b!4116347))

(assert (= start!390146 b!4116352))

(assert (= (and start!390146 ((_ is Cons!44454) input!3238)) b!4116355))

(assert (= b!4116349 b!4116342))

(assert (= start!390146 b!4116349))

(declare-fun m!4716159 () Bool)

(assert (=> b!4116352 m!4716159))

(declare-fun m!4716161 () Bool)

(assert (=> b!4116352 m!4716161))

(declare-fun m!4716163 () Bool)

(assert (=> b!4116348 m!4716163))

(declare-fun m!4716165 () Bool)

(assert (=> b!4116349 m!4716165))

(declare-fun m!4716167 () Bool)

(assert (=> b!4116349 m!4716167))

(declare-fun m!4716169 () Bool)

(assert (=> b!4116346 m!4716169))

(declare-fun m!4716171 () Bool)

(assert (=> b!4116346 m!4716171))

(declare-fun m!4716173 () Bool)

(assert (=> b!4116346 m!4716173))

(declare-fun m!4716175 () Bool)

(assert (=> b!4116346 m!4716175))

(declare-fun m!4716177 () Bool)

(assert (=> b!4116346 m!4716177))

(declare-fun m!4716179 () Bool)

(assert (=> b!4116346 m!4716179))

(declare-fun m!4716181 () Bool)

(assert (=> b!4116350 m!4716181))

(declare-fun m!4716183 () Bool)

(assert (=> b!4116351 m!4716183))

(declare-fun m!4716185 () Bool)

(assert (=> b!4116356 m!4716185))

(declare-fun m!4716187 () Bool)

(assert (=> b!4116356 m!4716187))

(declare-fun m!4716189 () Bool)

(assert (=> b!4116354 m!4716189))

(declare-fun m!4716191 () Bool)

(assert (=> b!4116357 m!4716191))

(declare-fun m!4716193 () Bool)

(assert (=> b!4116358 m!4716193))

(declare-fun m!4716195 () Bool)

(assert (=> b!4116343 m!4716195))

(check-sat b_and!318057 (not b_next!116795) (not b!4116346) (not b!4116343) (not b!4116348) (not b!4116349) b_and!318065 (not b_next!116797) (not b_next!116793) b_and!318067 (not b!4116358) (not b_next!116791) (not b!4116352) b_and!318061 (not b!4116357) (not b!4116351) b_and!318059 (not b!4116353) (not b!4116356) (not b!4116345) (not b!4116355) b_and!318063 (not b!4116350) (not b_next!116787) (not b_next!116789) tp_is_empty!21225 (not b!4116354))
(check-sat b_and!318061 b_and!318057 b_and!318059 (not b_next!116795) b_and!318065 (not b_next!116797) (not b_next!116793) b_and!318067 b_and!318063 (not b_next!116791) (not b_next!116787) (not b_next!116789))
(get-model)

(declare-fun d!1220866 () Bool)

(declare-fun lt!1468813 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6858 (List!44579) (InoxSet Rule!14292))

(assert (=> d!1220866 (= lt!1468813 (select (content!6858 rules!3756) rBis!149))))

(declare-fun e!2554140 () Bool)

(assert (=> d!1220866 (= lt!1468813 e!2554140)))

(declare-fun res!1681258 () Bool)

(assert (=> d!1220866 (=> (not res!1681258) (not e!2554140))))

(assert (=> d!1220866 (= res!1681258 ((_ is Cons!44455) rules!3756))))

(assert (=> d!1220866 (= (contains!8916 rules!3756 rBis!149) lt!1468813)))

(declare-fun b!4116363 () Bool)

(declare-fun e!2554139 () Bool)

(assert (=> b!4116363 (= e!2554140 e!2554139)))

(declare-fun res!1681259 () Bool)

(assert (=> b!4116363 (=> res!1681259 e!2554139)))

(assert (=> b!4116363 (= res!1681259 (= (h!49875 rules!3756) rBis!149))))

(declare-fun b!4116364 () Bool)

(assert (=> b!4116364 (= e!2554139 (contains!8916 (t!340402 rules!3756) rBis!149))))

(assert (= (and d!1220866 res!1681258) b!4116363))

(assert (= (and b!4116363 (not res!1681259)) b!4116364))

(declare-fun m!4716197 () Bool)

(assert (=> d!1220866 m!4716197))

(declare-fun m!4716199 () Bool)

(assert (=> d!1220866 m!4716199))

(declare-fun m!4716201 () Bool)

(assert (=> b!4116364 m!4716201))

(assert (=> b!4116354 d!1220866))

(declare-fun d!1220868 () Bool)

(assert (=> d!1220868 (= (inv!59038 (tag!8106 rBis!149)) (= (mod (str.len (value!227064 (tag!8106 rBis!149))) 2) 0))))

(assert (=> b!4116349 d!1220868))

(declare-fun d!1220870 () Bool)

(declare-fun res!1681270 () Bool)

(declare-fun e!2554149 () Bool)

(assert (=> d!1220870 (=> (not res!1681270) (not e!2554149))))

(declare-fun semiInverseModEq!3126 (Int Int) Bool)

(assert (=> d!1220870 (= res!1681270 (semiInverseModEq!3126 (toChars!9753 (transformation!7246 rBis!149)) (toValue!9894 (transformation!7246 rBis!149))))))

(assert (=> d!1220870 (= (inv!59040 (transformation!7246 rBis!149)) e!2554149)))

(declare-fun b!4116375 () Bool)

(declare-fun equivClasses!3025 (Int Int) Bool)

(assert (=> b!4116375 (= e!2554149 (equivClasses!3025 (toChars!9753 (transformation!7246 rBis!149)) (toValue!9894 (transformation!7246 rBis!149))))))

(assert (= (and d!1220870 res!1681270) b!4116375))

(declare-fun m!4716203 () Bool)

(assert (=> d!1220870 m!4716203))

(declare-fun m!4716205 () Bool)

(assert (=> b!4116375 m!4716205))

(assert (=> b!4116349 d!1220870))

(declare-fun d!1220874 () Bool)

(assert (=> d!1220874 (= (isEmpty!26430 rules!3756) ((_ is Nil!44455) rules!3756))))

(assert (=> b!4116358 d!1220874))

(declare-fun d!1220876 () Bool)

(declare-fun lt!1468816 () Bool)

(assert (=> d!1220876 (= lt!1468816 (select (content!6858 rules!3756) r!4008))))

(declare-fun e!2554151 () Bool)

(assert (=> d!1220876 (= lt!1468816 e!2554151)))

(declare-fun res!1681271 () Bool)

(assert (=> d!1220876 (=> (not res!1681271) (not e!2554151))))

(assert (=> d!1220876 (= res!1681271 ((_ is Cons!44455) rules!3756))))

(assert (=> d!1220876 (= (contains!8916 rules!3756 r!4008) lt!1468816)))

(declare-fun b!4116376 () Bool)

(declare-fun e!2554150 () Bool)

(assert (=> b!4116376 (= e!2554151 e!2554150)))

(declare-fun res!1681272 () Bool)

(assert (=> b!4116376 (=> res!1681272 e!2554150)))

(assert (=> b!4116376 (= res!1681272 (= (h!49875 rules!3756) r!4008))))

(declare-fun b!4116377 () Bool)

(assert (=> b!4116377 (= e!2554150 (contains!8916 (t!340402 rules!3756) r!4008))))

(assert (= (and d!1220876 res!1681271) b!4116376))

(assert (= (and b!4116376 (not res!1681272)) b!4116377))

(assert (=> d!1220876 m!4716197))

(declare-fun m!4716207 () Bool)

(assert (=> d!1220876 m!4716207))

(declare-fun m!4716209 () Bool)

(assert (=> b!4116377 m!4716209))

(assert (=> b!4116348 d!1220876))

(declare-fun b!4116402 () Bool)

(declare-fun e!2554177 () Bool)

(declare-fun e!2554173 () Bool)

(assert (=> b!4116402 (= e!2554177 e!2554173)))

(declare-fun res!1681289 () Bool)

(assert (=> b!4116402 (=> (not res!1681289) (not e!2554173))))

(declare-fun call!289851 () Bool)

(assert (=> b!4116402 (= res!1681289 call!289851)))

(declare-fun b!4116404 () Bool)

(declare-fun e!2554172 () Bool)

(declare-fun e!2554178 () Bool)

(assert (=> b!4116404 (= e!2554172 e!2554178)))

(declare-fun res!1681290 () Bool)

(declare-fun nullable!4264 (Regex!12151) Bool)

(assert (=> b!4116404 (= res!1681290 (not (nullable!4264 (reg!12480 (regex!7246 r!4008)))))))

(assert (=> b!4116404 (=> (not res!1681290) (not e!2554178))))

(declare-fun b!4116405 () Bool)

(declare-fun res!1681287 () Bool)

(assert (=> b!4116405 (=> res!1681287 e!2554177)))

(assert (=> b!4116405 (= res!1681287 (not ((_ is Concat!19628) (regex!7246 r!4008))))))

(declare-fun e!2554174 () Bool)

(assert (=> b!4116405 (= e!2554174 e!2554177)))

(declare-fun b!4116403 () Bool)

(declare-fun call!289849 () Bool)

(assert (=> b!4116403 (= e!2554173 call!289849)))

(declare-fun d!1220878 () Bool)

(declare-fun res!1681291 () Bool)

(declare-fun e!2554176 () Bool)

(assert (=> d!1220878 (=> res!1681291 e!2554176)))

(assert (=> d!1220878 (= res!1681291 ((_ is ElementMatch!12151) (regex!7246 r!4008)))))

(assert (=> d!1220878 (= (validRegex!5464 (regex!7246 r!4008)) e!2554176)))

(declare-fun bm!289844 () Bool)

(declare-fun c!707147 () Bool)

(assert (=> bm!289844 (= call!289849 (validRegex!5464 (ite c!707147 (regTwo!24815 (regex!7246 r!4008)) (regTwo!24814 (regex!7246 r!4008)))))))

(declare-fun b!4116406 () Bool)

(declare-fun res!1681288 () Bool)

(declare-fun e!2554175 () Bool)

(assert (=> b!4116406 (=> (not res!1681288) (not e!2554175))))

(assert (=> b!4116406 (= res!1681288 call!289851)))

(assert (=> b!4116406 (= e!2554174 e!2554175)))

(declare-fun b!4116407 () Bool)

(assert (=> b!4116407 (= e!2554172 e!2554174)))

(assert (=> b!4116407 (= c!707147 ((_ is Union!12151) (regex!7246 r!4008)))))

(declare-fun b!4116408 () Bool)

(declare-fun call!289850 () Bool)

(assert (=> b!4116408 (= e!2554178 call!289850)))

(declare-fun bm!289845 () Bool)

(assert (=> bm!289845 (= call!289851 call!289850)))

(declare-fun b!4116409 () Bool)

(assert (=> b!4116409 (= e!2554175 call!289849)))

(declare-fun b!4116410 () Bool)

(assert (=> b!4116410 (= e!2554176 e!2554172)))

(declare-fun c!707148 () Bool)

(assert (=> b!4116410 (= c!707148 ((_ is Star!12151) (regex!7246 r!4008)))))

(declare-fun bm!289846 () Bool)

(assert (=> bm!289846 (= call!289850 (validRegex!5464 (ite c!707148 (reg!12480 (regex!7246 r!4008)) (ite c!707147 (regOne!24815 (regex!7246 r!4008)) (regOne!24814 (regex!7246 r!4008))))))))

(assert (= (and d!1220878 (not res!1681291)) b!4116410))

(assert (= (and b!4116410 c!707148) b!4116404))

(assert (= (and b!4116410 (not c!707148)) b!4116407))

(assert (= (and b!4116404 res!1681290) b!4116408))

(assert (= (and b!4116407 c!707147) b!4116406))

(assert (= (and b!4116407 (not c!707147)) b!4116405))

(assert (= (and b!4116406 res!1681288) b!4116409))

(assert (= (and b!4116405 (not res!1681287)) b!4116402))

(assert (= (and b!4116402 res!1681289) b!4116403))

(assert (= (or b!4116406 b!4116402) bm!289845))

(assert (= (or b!4116409 b!4116403) bm!289844))

(assert (= (or b!4116408 bm!289845) bm!289846))

(declare-fun m!4716227 () Bool)

(assert (=> b!4116404 m!4716227))

(declare-fun m!4716229 () Bool)

(assert (=> bm!289844 m!4716229))

(declare-fun m!4716231 () Bool)

(assert (=> bm!289846 m!4716231))

(assert (=> b!4116343 d!1220878))

(declare-fun d!1220886 () Bool)

(declare-fun dynLambda!18989 (Int BalanceConc!26508) TokenValue!7476)

(assert (=> d!1220886 (= (apply!10319 (transformation!7246 r!4008) lt!1468810) (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810))))

(declare-fun b_lambda!120769 () Bool)

(assert (=> (not b_lambda!120769) (not d!1220886)))

(declare-fun t!340410 () Bool)

(declare-fun tb!247053 () Bool)

(assert (=> (and b!4116347 (= (toValue!9894 (transformation!7246 r!4008)) (toValue!9894 (transformation!7246 r!4008))) t!340410) tb!247053))

(declare-fun result!300096 () Bool)

(declare-fun inv!21 (TokenValue!7476) Bool)

(assert (=> tb!247053 (= result!300096 (inv!21 (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810)))))

(declare-fun m!4716233 () Bool)

(assert (=> tb!247053 m!4716233))

(assert (=> d!1220886 t!340410))

(declare-fun b_and!318075 () Bool)

(assert (= b_and!318057 (and (=> t!340410 result!300096) b_and!318075)))

(declare-fun tb!247055 () Bool)

(declare-fun t!340412 () Bool)

(assert (=> (and b!4116344 (= (toValue!9894 (transformation!7246 (h!49875 rules!3756))) (toValue!9894 (transformation!7246 r!4008))) t!340412) tb!247055))

(declare-fun result!300100 () Bool)

(assert (= result!300100 result!300096))

(assert (=> d!1220886 t!340412))

(declare-fun b_and!318077 () Bool)

(assert (= b_and!318061 (and (=> t!340412 result!300100) b_and!318077)))

(declare-fun t!340414 () Bool)

(declare-fun tb!247057 () Bool)

(assert (=> (and b!4116342 (= (toValue!9894 (transformation!7246 rBis!149)) (toValue!9894 (transformation!7246 r!4008))) t!340414) tb!247057))

(declare-fun result!300102 () Bool)

(assert (= result!300102 result!300096))

(assert (=> d!1220886 t!340414))

(declare-fun b_and!318079 () Bool)

(assert (= b_and!318065 (and (=> t!340414 result!300102) b_and!318079)))

(declare-fun m!4716235 () Bool)

(assert (=> d!1220886 m!4716235))

(assert (=> b!4116346 d!1220886))

(declare-fun d!1220888 () Bool)

(declare-fun lt!1468822 () List!44578)

(declare-fun ++!11542 (List!44578 List!44578) List!44578)

(assert (=> d!1220888 (= (++!11542 p!2912 lt!1468822) input!3238)))

(declare-fun e!2554184 () List!44578)

(assert (=> d!1220888 (= lt!1468822 e!2554184)))

(declare-fun c!707151 () Bool)

(assert (=> d!1220888 (= c!707151 ((_ is Cons!44454) p!2912))))

(assert (=> d!1220888 (>= (size!32900 input!3238) (size!32900 p!2912))))

(assert (=> d!1220888 (= (getSuffix!2510 input!3238 p!2912) lt!1468822)))

(declare-fun b!4116417 () Bool)

(declare-fun tail!6407 (List!44578) List!44578)

(assert (=> b!4116417 (= e!2554184 (getSuffix!2510 (tail!6407 input!3238) (t!340401 p!2912)))))

(declare-fun b!4116418 () Bool)

(assert (=> b!4116418 (= e!2554184 input!3238)))

(assert (= (and d!1220888 c!707151) b!4116417))

(assert (= (and d!1220888 (not c!707151)) b!4116418))

(declare-fun m!4716237 () Bool)

(assert (=> d!1220888 m!4716237))

(declare-fun m!4716239 () Bool)

(assert (=> d!1220888 m!4716239))

(assert (=> d!1220888 m!4716169))

(declare-fun m!4716241 () Bool)

(assert (=> b!4116417 m!4716241))

(assert (=> b!4116417 m!4716241))

(declare-fun m!4716243 () Bool)

(assert (=> b!4116417 m!4716243))

(assert (=> b!4116346 d!1220888))

(declare-fun d!1220890 () Bool)

(declare-fun fromListB!2459 (List!44578) BalanceConc!26508)

(assert (=> d!1220890 (= (seqFromList!5363 p!2912) (fromListB!2459 p!2912))))

(declare-fun bs!594566 () Bool)

(assert (= bs!594566 d!1220890))

(declare-fun m!4716245 () Bool)

(assert (=> bs!594566 m!4716245))

(assert (=> b!4116346 d!1220890))

(declare-fun d!1220892 () Bool)

(declare-fun lt!1468825 () Int)

(assert (=> d!1220892 (>= lt!1468825 0)))

(declare-fun e!2554187 () Int)

(assert (=> d!1220892 (= lt!1468825 e!2554187)))

(declare-fun c!707154 () Bool)

(assert (=> d!1220892 (= c!707154 ((_ is Nil!44454) p!2912))))

(assert (=> d!1220892 (= (size!32900 p!2912) lt!1468825)))

(declare-fun b!4116423 () Bool)

(assert (=> b!4116423 (= e!2554187 0)))

(declare-fun b!4116424 () Bool)

(assert (=> b!4116424 (= e!2554187 (+ 1 (size!32900 (t!340401 p!2912))))))

(assert (= (and d!1220892 c!707154) b!4116423))

(assert (= (and d!1220892 (not c!707154)) b!4116424))

(declare-fun m!4716247 () Bool)

(assert (=> b!4116424 m!4716247))

(assert (=> b!4116346 d!1220892))

(declare-fun b!4116443 () Bool)

(declare-fun e!2554194 () Bool)

(declare-fun e!2554195 () Bool)

(assert (=> b!4116443 (= e!2554194 e!2554195)))

(declare-fun res!1681309 () Bool)

(assert (=> b!4116443 (=> (not res!1681309) (not e!2554195))))

(declare-fun lt!1468837 () Option!9554)

(declare-fun isDefined!7220 (Option!9554) Bool)

(assert (=> b!4116443 (= res!1681309 (isDefined!7220 lt!1468837))))

(declare-fun b!4116444 () Bool)

(declare-fun res!1681308 () Bool)

(assert (=> b!4116444 (=> (not res!1681308) (not e!2554195))))

(declare-fun get!14505 (Option!9554) tuple2!42946)

(assert (=> b!4116444 (= res!1681308 (< (size!32900 (_2!24607 (get!14505 lt!1468837))) (size!32900 input!3238)))))

(declare-fun b!4116446 () Bool)

(declare-fun e!2554196 () Option!9554)

(declare-fun lt!1468839 () Option!9554)

(declare-fun lt!1468838 () Option!9554)

(assert (=> b!4116446 (= e!2554196 (ite (and ((_ is None!9553) lt!1468839) ((_ is None!9553) lt!1468838)) None!9553 (ite ((_ is None!9553) lt!1468838) lt!1468839 (ite ((_ is None!9553) lt!1468839) lt!1468838 (ite (>= (size!32899 (_1!24607 (v!40129 lt!1468839))) (size!32899 (_1!24607 (v!40129 lt!1468838)))) lt!1468839 lt!1468838)))))))

(declare-fun call!289854 () Option!9554)

(assert (=> b!4116446 (= lt!1468839 call!289854)))

(assert (=> b!4116446 (= lt!1468838 (maxPrefix!4027 thiss!25645 (t!340402 rules!3756) input!3238))))

(declare-fun b!4116447 () Bool)

(declare-fun res!1681310 () Bool)

(assert (=> b!4116447 (=> (not res!1681310) (not e!2554195))))

(assert (=> b!4116447 (= res!1681310 (= (value!227065 (_1!24607 (get!14505 lt!1468837))) (apply!10319 (transformation!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837)))) (seqFromList!5363 (originalCharacters!7742 (_1!24607 (get!14505 lt!1468837)))))))))

(declare-fun b!4116448 () Bool)

(declare-fun res!1681306 () Bool)

(assert (=> b!4116448 (=> (not res!1681306) (not e!2554195))))

(declare-fun list!16335 (BalanceConc!26508) List!44578)

(declare-fun charsOf!4886 (Token!13422) BalanceConc!26508)

(assert (=> b!4116448 (= res!1681306 (= (++!11542 (list!16335 (charsOf!4886 (_1!24607 (get!14505 lt!1468837)))) (_2!24607 (get!14505 lt!1468837))) input!3238))))

(declare-fun b!4116449 () Bool)

(assert (=> b!4116449 (= e!2554195 (contains!8916 rules!3756 (rule!10310 (_1!24607 (get!14505 lt!1468837)))))))

(declare-fun b!4116450 () Bool)

(assert (=> b!4116450 (= e!2554196 call!289854)))

(declare-fun d!1220894 () Bool)

(assert (=> d!1220894 e!2554194))

(declare-fun res!1681312 () Bool)

(assert (=> d!1220894 (=> res!1681312 e!2554194)))

(declare-fun isEmpty!26432 (Option!9554) Bool)

(assert (=> d!1220894 (= res!1681312 (isEmpty!26432 lt!1468837))))

(assert (=> d!1220894 (= lt!1468837 e!2554196)))

(declare-fun c!707157 () Bool)

(assert (=> d!1220894 (= c!707157 (and ((_ is Cons!44455) rules!3756) ((_ is Nil!44455) (t!340402 rules!3756))))))

(declare-fun lt!1468840 () Unit!63815)

(declare-fun lt!1468836 () Unit!63815)

(assert (=> d!1220894 (= lt!1468840 lt!1468836)))

(assert (=> d!1220894 (isPrefix!4181 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2722 (List!44578 List!44578) Unit!63815)

(assert (=> d!1220894 (= lt!1468836 (lemmaIsPrefixRefl!2722 input!3238 input!3238))))

(declare-fun rulesValidInductive!2673 (LexerInterface!6835 List!44579) Bool)

(assert (=> d!1220894 (rulesValidInductive!2673 thiss!25645 rules!3756)))

(assert (=> d!1220894 (= (maxPrefix!4027 thiss!25645 rules!3756 input!3238) lt!1468837)))

(declare-fun b!4116445 () Bool)

(declare-fun res!1681311 () Bool)

(assert (=> b!4116445 (=> (not res!1681311) (not e!2554195))))

(declare-fun matchR!5982 (Regex!12151 List!44578) Bool)

(assert (=> b!4116445 (= res!1681311 (matchR!5982 (regex!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837)))) (list!16335 (charsOf!4886 (_1!24607 (get!14505 lt!1468837))))))))

(declare-fun b!4116451 () Bool)

(declare-fun res!1681307 () Bool)

(assert (=> b!4116451 (=> (not res!1681307) (not e!2554195))))

(assert (=> b!4116451 (= res!1681307 (= (list!16335 (charsOf!4886 (_1!24607 (get!14505 lt!1468837)))) (originalCharacters!7742 (_1!24607 (get!14505 lt!1468837)))))))

(declare-fun bm!289849 () Bool)

(declare-fun maxPrefixOneRule!2993 (LexerInterface!6835 Rule!14292 List!44578) Option!9554)

(assert (=> bm!289849 (= call!289854 (maxPrefixOneRule!2993 thiss!25645 (h!49875 rules!3756) input!3238))))

(assert (= (and d!1220894 c!707157) b!4116450))

(assert (= (and d!1220894 (not c!707157)) b!4116446))

(assert (= (or b!4116450 b!4116446) bm!289849))

(assert (= (and d!1220894 (not res!1681312)) b!4116443))

(assert (= (and b!4116443 res!1681309) b!4116451))

(assert (= (and b!4116451 res!1681307) b!4116444))

(assert (= (and b!4116444 res!1681308) b!4116448))

(assert (= (and b!4116448 res!1681306) b!4116447))

(assert (= (and b!4116447 res!1681310) b!4116445))

(assert (= (and b!4116445 res!1681311) b!4116449))

(declare-fun m!4716249 () Bool)

(assert (=> b!4116446 m!4716249))

(declare-fun m!4716251 () Bool)

(assert (=> b!4116445 m!4716251))

(declare-fun m!4716253 () Bool)

(assert (=> b!4116445 m!4716253))

(assert (=> b!4116445 m!4716253))

(declare-fun m!4716255 () Bool)

(assert (=> b!4116445 m!4716255))

(assert (=> b!4116445 m!4716255))

(declare-fun m!4716257 () Bool)

(assert (=> b!4116445 m!4716257))

(assert (=> b!4116451 m!4716251))

(assert (=> b!4116451 m!4716253))

(assert (=> b!4116451 m!4716253))

(assert (=> b!4116451 m!4716255))

(declare-fun m!4716259 () Bool)

(assert (=> bm!289849 m!4716259))

(assert (=> b!4116448 m!4716251))

(assert (=> b!4116448 m!4716253))

(assert (=> b!4116448 m!4716253))

(assert (=> b!4116448 m!4716255))

(assert (=> b!4116448 m!4716255))

(declare-fun m!4716261 () Bool)

(assert (=> b!4116448 m!4716261))

(declare-fun m!4716263 () Bool)

(assert (=> b!4116443 m!4716263))

(assert (=> b!4116449 m!4716251))

(declare-fun m!4716265 () Bool)

(assert (=> b!4116449 m!4716265))

(assert (=> b!4116447 m!4716251))

(declare-fun m!4716267 () Bool)

(assert (=> b!4116447 m!4716267))

(assert (=> b!4116447 m!4716267))

(declare-fun m!4716269 () Bool)

(assert (=> b!4116447 m!4716269))

(assert (=> b!4116444 m!4716251))

(declare-fun m!4716271 () Bool)

(assert (=> b!4116444 m!4716271))

(assert (=> b!4116444 m!4716239))

(declare-fun m!4716273 () Bool)

(assert (=> d!1220894 m!4716273))

(declare-fun m!4716275 () Bool)

(assert (=> d!1220894 m!4716275))

(declare-fun m!4716277 () Bool)

(assert (=> d!1220894 m!4716277))

(declare-fun m!4716279 () Bool)

(assert (=> d!1220894 m!4716279))

(assert (=> b!4116346 d!1220894))

(declare-fun b!4116587 () Bool)

(declare-fun e!2554278 () Bool)

(assert (=> b!4116587 (= e!2554278 true)))

(declare-fun d!1220896 () Bool)

(assert (=> d!1220896 e!2554278))

(assert (= d!1220896 b!4116587))

(declare-fun order!23379 () Int)

(declare-fun lambda!128617 () Int)

(declare-fun order!23377 () Int)

(declare-fun dynLambda!18990 (Int Int) Int)

(declare-fun dynLambda!18991 (Int Int) Int)

(assert (=> b!4116587 (< (dynLambda!18990 order!23377 (toValue!9894 (transformation!7246 r!4008))) (dynLambda!18991 order!23379 lambda!128617))))

(declare-fun order!23381 () Int)

(declare-fun dynLambda!18992 (Int Int) Int)

(assert (=> b!4116587 (< (dynLambda!18992 order!23381 (toChars!9753 (transformation!7246 r!4008))) (dynLambda!18991 order!23379 lambda!128617))))

(declare-fun dynLambda!18993 (Int TokenValue!7476) BalanceConc!26508)

(assert (=> d!1220896 (= (list!16335 (dynLambda!18993 (toChars!9753 (transformation!7246 r!4008)) (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810))) (list!16335 lt!1468810))))

(declare-fun lt!1468869 () Unit!63815)

(declare-fun ForallOf!909 (Int BalanceConc!26508) Unit!63815)

(assert (=> d!1220896 (= lt!1468869 (ForallOf!909 lambda!128617 lt!1468810))))

(assert (=> d!1220896 (= (lemmaSemiInverse!2104 (transformation!7246 r!4008) lt!1468810) lt!1468869)))

(declare-fun b_lambda!120781 () Bool)

(assert (=> (not b_lambda!120781) (not d!1220896)))

(declare-fun t!340426 () Bool)

(declare-fun tb!247069 () Bool)

(assert (=> (and b!4116347 (= (toChars!9753 (transformation!7246 r!4008)) (toChars!9753 (transformation!7246 r!4008))) t!340426) tb!247069))

(declare-fun e!2554281 () Bool)

(declare-fun tp!1254075 () Bool)

(declare-fun b!4116592 () Bool)

(declare-fun inv!59043 (Conc!13457) Bool)

(assert (=> b!4116592 (= e!2554281 (and (inv!59043 (c!707140 (dynLambda!18993 (toChars!9753 (transformation!7246 r!4008)) (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810)))) tp!1254075))))

(declare-fun result!300122 () Bool)

(declare-fun inv!59044 (BalanceConc!26508) Bool)

(assert (=> tb!247069 (= result!300122 (and (inv!59044 (dynLambda!18993 (toChars!9753 (transformation!7246 r!4008)) (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810))) e!2554281))))

(assert (= tb!247069 b!4116592))

(declare-fun m!4716369 () Bool)

(assert (=> b!4116592 m!4716369))

(declare-fun m!4716371 () Bool)

(assert (=> tb!247069 m!4716371))

(assert (=> d!1220896 t!340426))

(declare-fun b_and!318097 () Bool)

(assert (= b_and!318059 (and (=> t!340426 result!300122) b_and!318097)))

(declare-fun t!340428 () Bool)

(declare-fun tb!247071 () Bool)

(assert (=> (and b!4116344 (= (toChars!9753 (transformation!7246 (h!49875 rules!3756))) (toChars!9753 (transformation!7246 r!4008))) t!340428) tb!247071))

(declare-fun result!300126 () Bool)

(assert (= result!300126 result!300122))

(assert (=> d!1220896 t!340428))

(declare-fun b_and!318099 () Bool)

(assert (= b_and!318063 (and (=> t!340428 result!300126) b_and!318099)))

(declare-fun t!340430 () Bool)

(declare-fun tb!247073 () Bool)

(assert (=> (and b!4116342 (= (toChars!9753 (transformation!7246 rBis!149)) (toChars!9753 (transformation!7246 r!4008))) t!340430) tb!247073))

(declare-fun result!300128 () Bool)

(assert (= result!300128 result!300122))

(assert (=> d!1220896 t!340430))

(declare-fun b_and!318101 () Bool)

(assert (= b_and!318067 (and (=> t!340430 result!300128) b_and!318101)))

(declare-fun b_lambda!120783 () Bool)

(assert (=> (not b_lambda!120783) (not d!1220896)))

(assert (=> d!1220896 t!340410))

(declare-fun b_and!318103 () Bool)

(assert (= b_and!318075 (and (=> t!340410 result!300096) b_and!318103)))

(assert (=> d!1220896 t!340412))

(declare-fun b_and!318105 () Bool)

(assert (= b_and!318077 (and (=> t!340412 result!300100) b_and!318105)))

(assert (=> d!1220896 t!340414))

(declare-fun b_and!318107 () Bool)

(assert (= b_and!318079 (and (=> t!340414 result!300102) b_and!318107)))

(assert (=> d!1220896 m!4716235))

(declare-fun m!4716373 () Bool)

(assert (=> d!1220896 m!4716373))

(declare-fun m!4716375 () Bool)

(assert (=> d!1220896 m!4716375))

(assert (=> d!1220896 m!4716373))

(declare-fun m!4716377 () Bool)

(assert (=> d!1220896 m!4716377))

(assert (=> d!1220896 m!4716235))

(declare-fun m!4716379 () Bool)

(assert (=> d!1220896 m!4716379))

(assert (=> b!4116346 d!1220896))

(declare-fun d!1220928 () Bool)

(declare-fun res!1681367 () Bool)

(declare-fun e!2554284 () Bool)

(assert (=> d!1220928 (=> (not res!1681367) (not e!2554284))))

(declare-fun rulesValid!2840 (LexerInterface!6835 List!44579) Bool)

(assert (=> d!1220928 (= res!1681367 (rulesValid!2840 thiss!25645 rules!3756))))

(assert (=> d!1220928 (= (rulesInvariant!6132 thiss!25645 rules!3756) e!2554284)))

(declare-fun b!4116595 () Bool)

(declare-datatypes ((List!44581 0))(
  ( (Nil!44457) (Cons!44457 (h!49877 String!51130) (t!340436 List!44581)) )
))
(declare-fun noDuplicateTag!2917 (LexerInterface!6835 List!44579 List!44581) Bool)

(assert (=> b!4116595 (= e!2554284 (noDuplicateTag!2917 thiss!25645 rules!3756 Nil!44457))))

(assert (= (and d!1220928 res!1681367) b!4116595))

(declare-fun m!4716381 () Bool)

(assert (=> d!1220928 m!4716381))

(declare-fun m!4716383 () Bool)

(assert (=> b!4116595 m!4716383))

(assert (=> b!4116357 d!1220928))

(declare-fun d!1220930 () Bool)

(assert (=> d!1220930 (= (inv!59038 (tag!8106 r!4008)) (= (mod (str.len (value!227064 (tag!8106 r!4008))) 2) 0))))

(assert (=> b!4116352 d!1220930))

(declare-fun d!1220932 () Bool)

(declare-fun res!1681368 () Bool)

(declare-fun e!2554285 () Bool)

(assert (=> d!1220932 (=> (not res!1681368) (not e!2554285))))

(assert (=> d!1220932 (= res!1681368 (semiInverseModEq!3126 (toChars!9753 (transformation!7246 r!4008)) (toValue!9894 (transformation!7246 r!4008))))))

(assert (=> d!1220932 (= (inv!59040 (transformation!7246 r!4008)) e!2554285)))

(declare-fun b!4116596 () Bool)

(assert (=> b!4116596 (= e!2554285 (equivClasses!3025 (toChars!9753 (transformation!7246 r!4008)) (toValue!9894 (transformation!7246 r!4008))))))

(assert (= (and d!1220932 res!1681368) b!4116596))

(declare-fun m!4716385 () Bool)

(assert (=> d!1220932 m!4716385))

(declare-fun m!4716387 () Bool)

(assert (=> b!4116596 m!4716387))

(assert (=> b!4116352 d!1220932))

(declare-fun d!1220934 () Bool)

(assert (=> d!1220934 (= (isEmpty!26429 p!2912) ((_ is Nil!44454) p!2912))))

(assert (=> b!4116350 d!1220934))

(declare-fun d!1220936 () Bool)

(assert (=> d!1220936 (= (inv!59038 (tag!8106 (h!49875 rules!3756))) (= (mod (str.len (value!227064 (tag!8106 (h!49875 rules!3756)))) 2) 0))))

(assert (=> b!4116356 d!1220936))

(declare-fun d!1220938 () Bool)

(declare-fun res!1681369 () Bool)

(declare-fun e!2554286 () Bool)

(assert (=> d!1220938 (=> (not res!1681369) (not e!2554286))))

(assert (=> d!1220938 (= res!1681369 (semiInverseModEq!3126 (toChars!9753 (transformation!7246 (h!49875 rules!3756))) (toValue!9894 (transformation!7246 (h!49875 rules!3756)))))))

(assert (=> d!1220938 (= (inv!59040 (transformation!7246 (h!49875 rules!3756))) e!2554286)))

(declare-fun b!4116597 () Bool)

(assert (=> b!4116597 (= e!2554286 (equivClasses!3025 (toChars!9753 (transformation!7246 (h!49875 rules!3756))) (toValue!9894 (transformation!7246 (h!49875 rules!3756)))))))

(assert (= (and d!1220938 res!1681369) b!4116597))

(declare-fun m!4716389 () Bool)

(assert (=> d!1220938 m!4716389))

(declare-fun m!4716391 () Bool)

(assert (=> b!4116597 m!4716391))

(assert (=> b!4116356 d!1220938))

(declare-fun d!1220940 () Bool)

(declare-fun e!2554293 () Bool)

(assert (=> d!1220940 e!2554293))

(declare-fun res!1681381 () Bool)

(assert (=> d!1220940 (=> res!1681381 e!2554293)))

(declare-fun lt!1468872 () Bool)

(assert (=> d!1220940 (= res!1681381 (not lt!1468872))))

(declare-fun e!2554295 () Bool)

(assert (=> d!1220940 (= lt!1468872 e!2554295)))

(declare-fun res!1681380 () Bool)

(assert (=> d!1220940 (=> res!1681380 e!2554295)))

(assert (=> d!1220940 (= res!1681380 ((_ is Nil!44454) p!2912))))

(assert (=> d!1220940 (= (isPrefix!4181 p!2912 input!3238) lt!1468872)))

(declare-fun b!4116609 () Bool)

(assert (=> b!4116609 (= e!2554293 (>= (size!32900 input!3238) (size!32900 p!2912)))))

(declare-fun b!4116606 () Bool)

(declare-fun e!2554294 () Bool)

(assert (=> b!4116606 (= e!2554295 e!2554294)))

(declare-fun res!1681378 () Bool)

(assert (=> b!4116606 (=> (not res!1681378) (not e!2554294))))

(assert (=> b!4116606 (= res!1681378 (not ((_ is Nil!44454) input!3238)))))

(declare-fun b!4116607 () Bool)

(declare-fun res!1681379 () Bool)

(assert (=> b!4116607 (=> (not res!1681379) (not e!2554294))))

(declare-fun head!8672 (List!44578) C!24488)

(assert (=> b!4116607 (= res!1681379 (= (head!8672 p!2912) (head!8672 input!3238)))))

(declare-fun b!4116608 () Bool)

(assert (=> b!4116608 (= e!2554294 (isPrefix!4181 (tail!6407 p!2912) (tail!6407 input!3238)))))

(assert (= (and d!1220940 (not res!1681380)) b!4116606))

(assert (= (and b!4116606 res!1681378) b!4116607))

(assert (= (and b!4116607 res!1681379) b!4116608))

(assert (= (and d!1220940 (not res!1681381)) b!4116609))

(assert (=> b!4116609 m!4716239))

(assert (=> b!4116609 m!4716169))

(declare-fun m!4716393 () Bool)

(assert (=> b!4116607 m!4716393))

(declare-fun m!4716395 () Bool)

(assert (=> b!4116607 m!4716395))

(declare-fun m!4716397 () Bool)

(assert (=> b!4116608 m!4716397))

(assert (=> b!4116608 m!4716241))

(assert (=> b!4116608 m!4716397))

(assert (=> b!4116608 m!4716241))

(declare-fun m!4716399 () Bool)

(assert (=> b!4116608 m!4716399))

(assert (=> b!4116351 d!1220940))

(declare-fun b!4116622 () Bool)

(declare-fun e!2554298 () Bool)

(declare-fun tp!1254086 () Bool)

(assert (=> b!4116622 (= e!2554298 tp!1254086)))

(assert (=> b!4116349 (= tp!1254027 e!2554298)))

(declare-fun b!4116621 () Bool)

(declare-fun tp!1254089 () Bool)

(declare-fun tp!1254088 () Bool)

(assert (=> b!4116621 (= e!2554298 (and tp!1254089 tp!1254088))))

(declare-fun b!4116620 () Bool)

(assert (=> b!4116620 (= e!2554298 tp_is_empty!21225)))

(declare-fun b!4116623 () Bool)

(declare-fun tp!1254090 () Bool)

(declare-fun tp!1254087 () Bool)

(assert (=> b!4116623 (= e!2554298 (and tp!1254090 tp!1254087))))

(assert (= (and b!4116349 ((_ is ElementMatch!12151) (regex!7246 rBis!149))) b!4116620))

(assert (= (and b!4116349 ((_ is Concat!19628) (regex!7246 rBis!149))) b!4116621))

(assert (= (and b!4116349 ((_ is Star!12151) (regex!7246 rBis!149))) b!4116622))

(assert (= (and b!4116349 ((_ is Union!12151) (regex!7246 rBis!149))) b!4116623))

(declare-fun b!4116628 () Bool)

(declare-fun e!2554301 () Bool)

(declare-fun tp!1254093 () Bool)

(assert (=> b!4116628 (= e!2554301 (and tp_is_empty!21225 tp!1254093))))

(assert (=> b!4116355 (= tp!1254028 e!2554301)))

(assert (= (and b!4116355 ((_ is Cons!44454) (t!340401 input!3238))) b!4116628))

(declare-fun b!4116639 () Bool)

(declare-fun b_free!116099 () Bool)

(declare-fun b_next!116803 () Bool)

(assert (=> b!4116639 (= b_free!116099 (not b_next!116803))))

(declare-fun tb!247075 () Bool)

(declare-fun t!340432 () Bool)

(assert (=> (and b!4116639 (= (toValue!9894 (transformation!7246 (h!49875 (t!340402 rules!3756)))) (toValue!9894 (transformation!7246 r!4008))) t!340432) tb!247075))

(declare-fun result!300136 () Bool)

(assert (= result!300136 result!300096))

(assert (=> d!1220886 t!340432))

(assert (=> d!1220896 t!340432))

(declare-fun b_and!318109 () Bool)

(declare-fun tp!1254104 () Bool)

(assert (=> b!4116639 (= tp!1254104 (and (=> t!340432 result!300136) b_and!318109))))

(declare-fun b_free!116101 () Bool)

(declare-fun b_next!116805 () Bool)

(assert (=> b!4116639 (= b_free!116101 (not b_next!116805))))

(declare-fun tb!247077 () Bool)

(declare-fun t!340434 () Bool)

(assert (=> (and b!4116639 (= (toChars!9753 (transformation!7246 (h!49875 (t!340402 rules!3756)))) (toChars!9753 (transformation!7246 r!4008))) t!340434) tb!247077))

(declare-fun result!300138 () Bool)

(assert (= result!300138 result!300122))

(assert (=> d!1220896 t!340434))

(declare-fun b_and!318111 () Bool)

(declare-fun tp!1254105 () Bool)

(assert (=> b!4116639 (= tp!1254105 (and (=> t!340434 result!300138) b_and!318111))))

(declare-fun e!2554312 () Bool)

(assert (=> b!4116639 (= e!2554312 (and tp!1254104 tp!1254105))))

(declare-fun tp!1254103 () Bool)

(declare-fun b!4116638 () Bool)

(declare-fun e!2554310 () Bool)

(assert (=> b!4116638 (= e!2554310 (and tp!1254103 (inv!59038 (tag!8106 (h!49875 (t!340402 rules!3756)))) (inv!59040 (transformation!7246 (h!49875 (t!340402 rules!3756)))) e!2554312))))

(declare-fun b!4116637 () Bool)

(declare-fun e!2554311 () Bool)

(declare-fun tp!1254102 () Bool)

(assert (=> b!4116637 (= e!2554311 (and e!2554310 tp!1254102))))

(assert (=> b!4116353 (= tp!1254023 e!2554311)))

(assert (= b!4116638 b!4116639))

(assert (= b!4116637 b!4116638))

(assert (= (and b!4116353 ((_ is Cons!44455) (t!340402 rules!3756))) b!4116637))

(declare-fun m!4716401 () Bool)

(assert (=> b!4116638 m!4716401))

(declare-fun m!4716403 () Bool)

(assert (=> b!4116638 m!4716403))

(declare-fun b!4116642 () Bool)

(declare-fun e!2554314 () Bool)

(declare-fun tp!1254106 () Bool)

(assert (=> b!4116642 (= e!2554314 tp!1254106)))

(assert (=> b!4116352 (= tp!1254024 e!2554314)))

(declare-fun b!4116641 () Bool)

(declare-fun tp!1254109 () Bool)

(declare-fun tp!1254108 () Bool)

(assert (=> b!4116641 (= e!2554314 (and tp!1254109 tp!1254108))))

(declare-fun b!4116640 () Bool)

(assert (=> b!4116640 (= e!2554314 tp_is_empty!21225)))

(declare-fun b!4116643 () Bool)

(declare-fun tp!1254110 () Bool)

(declare-fun tp!1254107 () Bool)

(assert (=> b!4116643 (= e!2554314 (and tp!1254110 tp!1254107))))

(assert (= (and b!4116352 ((_ is ElementMatch!12151) (regex!7246 r!4008))) b!4116640))

(assert (= (and b!4116352 ((_ is Concat!19628) (regex!7246 r!4008))) b!4116641))

(assert (= (and b!4116352 ((_ is Star!12151) (regex!7246 r!4008))) b!4116642))

(assert (= (and b!4116352 ((_ is Union!12151) (regex!7246 r!4008))) b!4116643))

(declare-fun b!4116644 () Bool)

(declare-fun e!2554315 () Bool)

(declare-fun tp!1254111 () Bool)

(assert (=> b!4116644 (= e!2554315 (and tp_is_empty!21225 tp!1254111))))

(assert (=> b!4116345 (= tp!1254021 e!2554315)))

(assert (= (and b!4116345 ((_ is Cons!44454) (t!340401 p!2912))) b!4116644))

(declare-fun b!4116647 () Bool)

(declare-fun e!2554316 () Bool)

(declare-fun tp!1254112 () Bool)

(assert (=> b!4116647 (= e!2554316 tp!1254112)))

(assert (=> b!4116356 (= tp!1254017 e!2554316)))

(declare-fun b!4116646 () Bool)

(declare-fun tp!1254115 () Bool)

(declare-fun tp!1254114 () Bool)

(assert (=> b!4116646 (= e!2554316 (and tp!1254115 tp!1254114))))

(declare-fun b!4116645 () Bool)

(assert (=> b!4116645 (= e!2554316 tp_is_empty!21225)))

(declare-fun b!4116648 () Bool)

(declare-fun tp!1254116 () Bool)

(declare-fun tp!1254113 () Bool)

(assert (=> b!4116648 (= e!2554316 (and tp!1254116 tp!1254113))))

(assert (= (and b!4116356 ((_ is ElementMatch!12151) (regex!7246 (h!49875 rules!3756)))) b!4116645))

(assert (= (and b!4116356 ((_ is Concat!19628) (regex!7246 (h!49875 rules!3756)))) b!4116646))

(assert (= (and b!4116356 ((_ is Star!12151) (regex!7246 (h!49875 rules!3756)))) b!4116647))

(assert (= (and b!4116356 ((_ is Union!12151) (regex!7246 (h!49875 rules!3756)))) b!4116648))

(declare-fun b_lambda!120785 () Bool)

(assert (= b_lambda!120783 (or (and b!4116347 b_free!116083) (and b!4116344 b_free!116087 (= (toValue!9894 (transformation!7246 (h!49875 rules!3756))) (toValue!9894 (transformation!7246 r!4008)))) (and b!4116342 b_free!116091 (= (toValue!9894 (transformation!7246 rBis!149)) (toValue!9894 (transformation!7246 r!4008)))) (and b!4116639 b_free!116099 (= (toValue!9894 (transformation!7246 (h!49875 (t!340402 rules!3756)))) (toValue!9894 (transformation!7246 r!4008)))) b_lambda!120785)))

(declare-fun b_lambda!120787 () Bool)

(assert (= b_lambda!120781 (or (and b!4116347 b_free!116085) (and b!4116344 b_free!116089 (= (toChars!9753 (transformation!7246 (h!49875 rules!3756))) (toChars!9753 (transformation!7246 r!4008)))) (and b!4116342 b_free!116093 (= (toChars!9753 (transformation!7246 rBis!149)) (toChars!9753 (transformation!7246 r!4008)))) (and b!4116639 b_free!116101 (= (toChars!9753 (transformation!7246 (h!49875 (t!340402 rules!3756)))) (toChars!9753 (transformation!7246 r!4008)))) b_lambda!120787)))

(declare-fun b_lambda!120789 () Bool)

(assert (= b_lambda!120769 (or (and b!4116347 b_free!116083) (and b!4116344 b_free!116087 (= (toValue!9894 (transformation!7246 (h!49875 rules!3756))) (toValue!9894 (transformation!7246 r!4008)))) (and b!4116342 b_free!116091 (= (toValue!9894 (transformation!7246 rBis!149)) (toValue!9894 (transformation!7246 r!4008)))) (and b!4116639 b_free!116099 (= (toValue!9894 (transformation!7246 (h!49875 (t!340402 rules!3756)))) (toValue!9894 (transformation!7246 r!4008)))) b_lambda!120789)))

(check-sat (not b!4116424) (not b_next!116803) (not b!4116642) (not b_lambda!120785) (not b!4116628) (not b!4116364) (not b!4116647) (not b!4116451) (not b_lambda!120789) b_and!318107 b_and!318101 (not d!1220866) (not b!4116446) (not b_next!116795) (not b_next!116805) (not tb!247053) (not b!4116377) (not b!4116447) (not b!4116595) (not b!4116609) (not d!1220894) (not b!4116449) (not b!4116592) b_and!318103 (not d!1220890) (not b!4116375) (not b!4116644) (not tb!247069) (not d!1220928) (not b!4116621) (not b!4116637) (not d!1220888) (not b!4116641) (not b!4116622) (not d!1220876) b_and!318111 (not b!4116623) b_and!318099 b_and!318109 (not d!1220932) (not b!4116608) (not bm!289849) (not b_next!116797) (not b!4116417) (not b_lambda!120787) (not b_next!116793) (not b!4116648) (not b!4116448) (not b!4116443) (not b!4116445) (not b!4116643) (not b!4116638) (not b!4116646) (not b!4116596) (not b_next!116787) (not b_next!116789) (not d!1220870) (not b!4116404) (not b_next!116791) b_and!318097 (not bm!289844) tp_is_empty!21225 (not b!4116597) (not d!1220896) b_and!318105 (not b!4116444) (not b!4116607) (not d!1220938) (not bm!289846))
(check-sat (not b_next!116803) b_and!318103 b_and!318111 (not b_next!116797) (not b_next!116793) (not b_next!116791) b_and!318097 b_and!318105 b_and!318107 b_and!318101 (not b_next!116795) (not b_next!116805) b_and!318099 b_and!318109 (not b_next!116787) (not b_next!116789))
(get-model)

(declare-fun d!1220960 () Bool)

(assert (=> d!1220960 true))

(declare-fun order!23385 () Int)

(declare-fun lambda!128629 () Int)

(declare-fun dynLambda!18994 (Int Int) Int)

(assert (=> d!1220960 (< (dynLambda!18990 order!23377 (toValue!9894 (transformation!7246 (h!49875 rules!3756)))) (dynLambda!18994 order!23385 lambda!128629))))

(declare-fun Forall2!1142 (Int) Bool)

(assert (=> d!1220960 (= (equivClasses!3025 (toChars!9753 (transformation!7246 (h!49875 rules!3756))) (toValue!9894 (transformation!7246 (h!49875 rules!3756)))) (Forall2!1142 lambda!128629))))

(declare-fun bs!594572 () Bool)

(assert (= bs!594572 d!1220960))

(declare-fun m!4716433 () Bool)

(assert (=> bs!594572 m!4716433))

(assert (=> b!4116597 d!1220960))

(declare-fun b!4116687 () Bool)

(declare-fun e!2554338 () List!44578)

(assert (=> b!4116687 (= e!2554338 (Cons!44454 (h!49874 p!2912) (++!11542 (t!340401 p!2912) lt!1468822)))))

(declare-fun e!2554339 () Bool)

(declare-fun b!4116689 () Bool)

(declare-fun lt!1468882 () List!44578)

(assert (=> b!4116689 (= e!2554339 (or (not (= lt!1468822 Nil!44454)) (= lt!1468882 p!2912)))))

(declare-fun d!1220962 () Bool)

(assert (=> d!1220962 e!2554339))

(declare-fun res!1681402 () Bool)

(assert (=> d!1220962 (=> (not res!1681402) (not e!2554339))))

(declare-fun content!6859 (List!44578) (InoxSet C!24488))

(assert (=> d!1220962 (= res!1681402 (= (content!6859 lt!1468882) ((_ map or) (content!6859 p!2912) (content!6859 lt!1468822))))))

(assert (=> d!1220962 (= lt!1468882 e!2554338)))

(declare-fun c!707179 () Bool)

(assert (=> d!1220962 (= c!707179 ((_ is Nil!44454) p!2912))))

(assert (=> d!1220962 (= (++!11542 p!2912 lt!1468822) lt!1468882)))

(declare-fun b!4116686 () Bool)

(assert (=> b!4116686 (= e!2554338 lt!1468822)))

(declare-fun b!4116688 () Bool)

(declare-fun res!1681401 () Bool)

(assert (=> b!4116688 (=> (not res!1681401) (not e!2554339))))

(assert (=> b!4116688 (= res!1681401 (= (size!32900 lt!1468882) (+ (size!32900 p!2912) (size!32900 lt!1468822))))))

(assert (= (and d!1220962 c!707179) b!4116686))

(assert (= (and d!1220962 (not c!707179)) b!4116687))

(assert (= (and d!1220962 res!1681402) b!4116688))

(assert (= (and b!4116688 res!1681401) b!4116689))

(declare-fun m!4716435 () Bool)

(assert (=> b!4116687 m!4716435))

(declare-fun m!4716437 () Bool)

(assert (=> d!1220962 m!4716437))

(declare-fun m!4716439 () Bool)

(assert (=> d!1220962 m!4716439))

(declare-fun m!4716441 () Bool)

(assert (=> d!1220962 m!4716441))

(declare-fun m!4716443 () Bool)

(assert (=> b!4116688 m!4716443))

(assert (=> b!4116688 m!4716169))

(declare-fun m!4716445 () Bool)

(assert (=> b!4116688 m!4716445))

(assert (=> d!1220888 d!1220962))

(declare-fun d!1220964 () Bool)

(declare-fun lt!1468883 () Int)

(assert (=> d!1220964 (>= lt!1468883 0)))

(declare-fun e!2554340 () Int)

(assert (=> d!1220964 (= lt!1468883 e!2554340)))

(declare-fun c!707180 () Bool)

(assert (=> d!1220964 (= c!707180 ((_ is Nil!44454) input!3238))))

(assert (=> d!1220964 (= (size!32900 input!3238) lt!1468883)))

(declare-fun b!4116690 () Bool)

(assert (=> b!4116690 (= e!2554340 0)))

(declare-fun b!4116691 () Bool)

(assert (=> b!4116691 (= e!2554340 (+ 1 (size!32900 (t!340401 input!3238))))))

(assert (= (and d!1220964 c!707180) b!4116690))

(assert (= (and d!1220964 (not c!707180)) b!4116691))

(declare-fun m!4716447 () Bool)

(assert (=> b!4116691 m!4716447))

(assert (=> d!1220888 d!1220964))

(assert (=> d!1220888 d!1220892))

(declare-fun b!4116692 () Bool)

(declare-fun e!2554346 () Bool)

(declare-fun e!2554342 () Bool)

(assert (=> b!4116692 (= e!2554346 e!2554342)))

(declare-fun res!1681405 () Bool)

(assert (=> b!4116692 (=> (not res!1681405) (not e!2554342))))

(declare-fun call!289872 () Bool)

(assert (=> b!4116692 (= res!1681405 call!289872)))

(declare-fun b!4116694 () Bool)

(declare-fun e!2554341 () Bool)

(declare-fun e!2554347 () Bool)

(assert (=> b!4116694 (= e!2554341 e!2554347)))

(declare-fun res!1681406 () Bool)

(assert (=> b!4116694 (= res!1681406 (not (nullable!4264 (reg!12480 (ite c!707147 (regTwo!24815 (regex!7246 r!4008)) (regTwo!24814 (regex!7246 r!4008)))))))))

(assert (=> b!4116694 (=> (not res!1681406) (not e!2554347))))

(declare-fun b!4116695 () Bool)

(declare-fun res!1681403 () Bool)

(assert (=> b!4116695 (=> res!1681403 e!2554346)))

(assert (=> b!4116695 (= res!1681403 (not ((_ is Concat!19628) (ite c!707147 (regTwo!24815 (regex!7246 r!4008)) (regTwo!24814 (regex!7246 r!4008))))))))

(declare-fun e!2554343 () Bool)

(assert (=> b!4116695 (= e!2554343 e!2554346)))

(declare-fun b!4116693 () Bool)

(declare-fun call!289870 () Bool)

(assert (=> b!4116693 (= e!2554342 call!289870)))

(declare-fun d!1220966 () Bool)

(declare-fun res!1681407 () Bool)

(declare-fun e!2554345 () Bool)

(assert (=> d!1220966 (=> res!1681407 e!2554345)))

(assert (=> d!1220966 (= res!1681407 ((_ is ElementMatch!12151) (ite c!707147 (regTwo!24815 (regex!7246 r!4008)) (regTwo!24814 (regex!7246 r!4008)))))))

(assert (=> d!1220966 (= (validRegex!5464 (ite c!707147 (regTwo!24815 (regex!7246 r!4008)) (regTwo!24814 (regex!7246 r!4008)))) e!2554345)))

(declare-fun bm!289865 () Bool)

(declare-fun c!707181 () Bool)

(assert (=> bm!289865 (= call!289870 (validRegex!5464 (ite c!707181 (regTwo!24815 (ite c!707147 (regTwo!24815 (regex!7246 r!4008)) (regTwo!24814 (regex!7246 r!4008)))) (regTwo!24814 (ite c!707147 (regTwo!24815 (regex!7246 r!4008)) (regTwo!24814 (regex!7246 r!4008)))))))))

(declare-fun b!4116696 () Bool)

(declare-fun res!1681404 () Bool)

(declare-fun e!2554344 () Bool)

(assert (=> b!4116696 (=> (not res!1681404) (not e!2554344))))

(assert (=> b!4116696 (= res!1681404 call!289872)))

(assert (=> b!4116696 (= e!2554343 e!2554344)))

(declare-fun b!4116697 () Bool)

(assert (=> b!4116697 (= e!2554341 e!2554343)))

(assert (=> b!4116697 (= c!707181 ((_ is Union!12151) (ite c!707147 (regTwo!24815 (regex!7246 r!4008)) (regTwo!24814 (regex!7246 r!4008)))))))

(declare-fun b!4116698 () Bool)

(declare-fun call!289871 () Bool)

(assert (=> b!4116698 (= e!2554347 call!289871)))

(declare-fun bm!289866 () Bool)

(assert (=> bm!289866 (= call!289872 call!289871)))

(declare-fun b!4116699 () Bool)

(assert (=> b!4116699 (= e!2554344 call!289870)))

(declare-fun b!4116700 () Bool)

(assert (=> b!4116700 (= e!2554345 e!2554341)))

(declare-fun c!707182 () Bool)

(assert (=> b!4116700 (= c!707182 ((_ is Star!12151) (ite c!707147 (regTwo!24815 (regex!7246 r!4008)) (regTwo!24814 (regex!7246 r!4008)))))))

(declare-fun bm!289867 () Bool)

(assert (=> bm!289867 (= call!289871 (validRegex!5464 (ite c!707182 (reg!12480 (ite c!707147 (regTwo!24815 (regex!7246 r!4008)) (regTwo!24814 (regex!7246 r!4008)))) (ite c!707181 (regOne!24815 (ite c!707147 (regTwo!24815 (regex!7246 r!4008)) (regTwo!24814 (regex!7246 r!4008)))) (regOne!24814 (ite c!707147 (regTwo!24815 (regex!7246 r!4008)) (regTwo!24814 (regex!7246 r!4008))))))))))

(assert (= (and d!1220966 (not res!1681407)) b!4116700))

(assert (= (and b!4116700 c!707182) b!4116694))

(assert (= (and b!4116700 (not c!707182)) b!4116697))

(assert (= (and b!4116694 res!1681406) b!4116698))

(assert (= (and b!4116697 c!707181) b!4116696))

(assert (= (and b!4116697 (not c!707181)) b!4116695))

(assert (= (and b!4116696 res!1681404) b!4116699))

(assert (= (and b!4116695 (not res!1681403)) b!4116692))

(assert (= (and b!4116692 res!1681405) b!4116693))

(assert (= (or b!4116696 b!4116692) bm!289866))

(assert (= (or b!4116699 b!4116693) bm!289865))

(assert (= (or b!4116698 bm!289866) bm!289867))

(declare-fun m!4716449 () Bool)

(assert (=> b!4116694 m!4716449))

(declare-fun m!4716451 () Bool)

(assert (=> bm!289865 m!4716451))

(declare-fun m!4716453 () Bool)

(assert (=> bm!289867 m!4716453))

(assert (=> bm!289844 d!1220966))

(declare-fun d!1220968 () Bool)

(declare-fun lt!1468884 () Bool)

(assert (=> d!1220968 (= lt!1468884 (select (content!6858 (t!340402 rules!3756)) r!4008))))

(declare-fun e!2554349 () Bool)

(assert (=> d!1220968 (= lt!1468884 e!2554349)))

(declare-fun res!1681408 () Bool)

(assert (=> d!1220968 (=> (not res!1681408) (not e!2554349))))

(assert (=> d!1220968 (= res!1681408 ((_ is Cons!44455) (t!340402 rules!3756)))))

(assert (=> d!1220968 (= (contains!8916 (t!340402 rules!3756) r!4008) lt!1468884)))

(declare-fun b!4116701 () Bool)

(declare-fun e!2554348 () Bool)

(assert (=> b!4116701 (= e!2554349 e!2554348)))

(declare-fun res!1681409 () Bool)

(assert (=> b!4116701 (=> res!1681409 e!2554348)))

(assert (=> b!4116701 (= res!1681409 (= (h!49875 (t!340402 rules!3756)) r!4008))))

(declare-fun b!4116702 () Bool)

(assert (=> b!4116702 (= e!2554348 (contains!8916 (t!340402 (t!340402 rules!3756)) r!4008))))

(assert (= (and d!1220968 res!1681408) b!4116701))

(assert (= (and b!4116701 (not res!1681409)) b!4116702))

(declare-fun m!4716455 () Bool)

(assert (=> d!1220968 m!4716455))

(declare-fun m!4716457 () Bool)

(assert (=> d!1220968 m!4716457))

(declare-fun m!4716459 () Bool)

(assert (=> b!4116702 m!4716459))

(assert (=> b!4116377 d!1220968))

(declare-fun d!1220970 () Bool)

(declare-fun e!2554350 () Bool)

(assert (=> d!1220970 e!2554350))

(declare-fun res!1681413 () Bool)

(assert (=> d!1220970 (=> res!1681413 e!2554350)))

(declare-fun lt!1468885 () Bool)

(assert (=> d!1220970 (= res!1681413 (not lt!1468885))))

(declare-fun e!2554352 () Bool)

(assert (=> d!1220970 (= lt!1468885 e!2554352)))

(declare-fun res!1681412 () Bool)

(assert (=> d!1220970 (=> res!1681412 e!2554352)))

(assert (=> d!1220970 (= res!1681412 ((_ is Nil!44454) (tail!6407 p!2912)))))

(assert (=> d!1220970 (= (isPrefix!4181 (tail!6407 p!2912) (tail!6407 input!3238)) lt!1468885)))

(declare-fun b!4116706 () Bool)

(assert (=> b!4116706 (= e!2554350 (>= (size!32900 (tail!6407 input!3238)) (size!32900 (tail!6407 p!2912))))))

(declare-fun b!4116703 () Bool)

(declare-fun e!2554351 () Bool)

(assert (=> b!4116703 (= e!2554352 e!2554351)))

(declare-fun res!1681410 () Bool)

(assert (=> b!4116703 (=> (not res!1681410) (not e!2554351))))

(assert (=> b!4116703 (= res!1681410 (not ((_ is Nil!44454) (tail!6407 input!3238))))))

(declare-fun b!4116704 () Bool)

(declare-fun res!1681411 () Bool)

(assert (=> b!4116704 (=> (not res!1681411) (not e!2554351))))

(assert (=> b!4116704 (= res!1681411 (= (head!8672 (tail!6407 p!2912)) (head!8672 (tail!6407 input!3238))))))

(declare-fun b!4116705 () Bool)

(assert (=> b!4116705 (= e!2554351 (isPrefix!4181 (tail!6407 (tail!6407 p!2912)) (tail!6407 (tail!6407 input!3238))))))

(assert (= (and d!1220970 (not res!1681412)) b!4116703))

(assert (= (and b!4116703 res!1681410) b!4116704))

(assert (= (and b!4116704 res!1681411) b!4116705))

(assert (= (and d!1220970 (not res!1681413)) b!4116706))

(assert (=> b!4116706 m!4716241))

(declare-fun m!4716461 () Bool)

(assert (=> b!4116706 m!4716461))

(assert (=> b!4116706 m!4716397))

(declare-fun m!4716463 () Bool)

(assert (=> b!4116706 m!4716463))

(assert (=> b!4116704 m!4716397))

(declare-fun m!4716465 () Bool)

(assert (=> b!4116704 m!4716465))

(assert (=> b!4116704 m!4716241))

(declare-fun m!4716467 () Bool)

(assert (=> b!4116704 m!4716467))

(assert (=> b!4116705 m!4716397))

(declare-fun m!4716469 () Bool)

(assert (=> b!4116705 m!4716469))

(assert (=> b!4116705 m!4716241))

(declare-fun m!4716471 () Bool)

(assert (=> b!4116705 m!4716471))

(assert (=> b!4116705 m!4716469))

(assert (=> b!4116705 m!4716471))

(declare-fun m!4716473 () Bool)

(assert (=> b!4116705 m!4716473))

(assert (=> b!4116608 d!1220970))

(declare-fun d!1220972 () Bool)

(assert (=> d!1220972 (= (tail!6407 p!2912) (t!340401 p!2912))))

(assert (=> b!4116608 d!1220972))

(declare-fun d!1220974 () Bool)

(assert (=> d!1220974 (= (tail!6407 input!3238) (t!340401 input!3238))))

(assert (=> b!4116608 d!1220974))

(declare-fun d!1220976 () Bool)

(declare-fun nullableFct!1197 (Regex!12151) Bool)

(assert (=> d!1220976 (= (nullable!4264 (reg!12480 (regex!7246 r!4008))) (nullableFct!1197 (reg!12480 (regex!7246 r!4008))))))

(declare-fun bs!594573 () Bool)

(assert (= bs!594573 d!1220976))

(declare-fun m!4716475 () Bool)

(assert (=> bs!594573 m!4716475))

(assert (=> b!4116404 d!1220976))

(declare-fun d!1220978 () Bool)

(assert (=> d!1220978 true))

(declare-fun lt!1468888 () Bool)

(assert (=> d!1220978 (= lt!1468888 (rulesValidInductive!2673 thiss!25645 rules!3756))))

(declare-fun lambda!128632 () Int)

(declare-fun forall!8446 (List!44579 Int) Bool)

(assert (=> d!1220978 (= lt!1468888 (forall!8446 rules!3756 lambda!128632))))

(assert (=> d!1220978 (= (rulesValid!2840 thiss!25645 rules!3756) lt!1468888)))

(declare-fun bs!594574 () Bool)

(assert (= bs!594574 d!1220978))

(assert (=> bs!594574 m!4716279))

(declare-fun m!4716477 () Bool)

(assert (=> bs!594574 m!4716477))

(assert (=> d!1220928 d!1220978))

(declare-fun bs!594575 () Bool)

(declare-fun d!1220980 () Bool)

(assert (= bs!594575 (and d!1220980 d!1220896)))

(declare-fun lambda!128635 () Int)

(assert (=> bs!594575 (= lambda!128635 lambda!128617)))

(assert (=> d!1220980 true))

(assert (=> d!1220980 (< (dynLambda!18992 order!23381 (toChars!9753 (transformation!7246 r!4008))) (dynLambda!18991 order!23379 lambda!128635))))

(assert (=> d!1220980 true))

(assert (=> d!1220980 (< (dynLambda!18990 order!23377 (toValue!9894 (transformation!7246 r!4008))) (dynLambda!18991 order!23379 lambda!128635))))

(declare-fun Forall!1544 (Int) Bool)

(assert (=> d!1220980 (= (semiInverseModEq!3126 (toChars!9753 (transformation!7246 r!4008)) (toValue!9894 (transformation!7246 r!4008))) (Forall!1544 lambda!128635))))

(declare-fun bs!594576 () Bool)

(assert (= bs!594576 d!1220980))

(declare-fun m!4716479 () Bool)

(assert (=> bs!594576 m!4716479))

(assert (=> d!1220932 d!1220980))

(declare-fun d!1220982 () Bool)

(assert (=> d!1220982 (= (head!8672 p!2912) (h!49874 p!2912))))

(assert (=> b!4116607 d!1220982))

(declare-fun d!1220984 () Bool)

(assert (=> d!1220984 (= (head!8672 input!3238) (h!49874 input!3238))))

(assert (=> b!4116607 d!1220984))

(declare-fun bs!594577 () Bool)

(declare-fun d!1220986 () Bool)

(assert (= bs!594577 (and d!1220986 d!1220896)))

(declare-fun lambda!128636 () Int)

(assert (=> bs!594577 (= (and (= (toChars!9753 (transformation!7246 rBis!149)) (toChars!9753 (transformation!7246 r!4008))) (= (toValue!9894 (transformation!7246 rBis!149)) (toValue!9894 (transformation!7246 r!4008)))) (= lambda!128636 lambda!128617))))

(declare-fun bs!594578 () Bool)

(assert (= bs!594578 (and d!1220986 d!1220980)))

(assert (=> bs!594578 (= (and (= (toChars!9753 (transformation!7246 rBis!149)) (toChars!9753 (transformation!7246 r!4008))) (= (toValue!9894 (transformation!7246 rBis!149)) (toValue!9894 (transformation!7246 r!4008)))) (= lambda!128636 lambda!128635))))

(assert (=> d!1220986 true))

(assert (=> d!1220986 (< (dynLambda!18992 order!23381 (toChars!9753 (transformation!7246 rBis!149))) (dynLambda!18991 order!23379 lambda!128636))))

(assert (=> d!1220986 true))

(assert (=> d!1220986 (< (dynLambda!18990 order!23377 (toValue!9894 (transformation!7246 rBis!149))) (dynLambda!18991 order!23379 lambda!128636))))

(assert (=> d!1220986 (= (semiInverseModEq!3126 (toChars!9753 (transformation!7246 rBis!149)) (toValue!9894 (transformation!7246 rBis!149))) (Forall!1544 lambda!128636))))

(declare-fun bs!594579 () Bool)

(assert (= bs!594579 d!1220986))

(declare-fun m!4716481 () Bool)

(assert (=> bs!594579 m!4716481))

(assert (=> d!1220870 d!1220986))

(declare-fun d!1220988 () Bool)

(declare-fun c!707185 () Bool)

(assert (=> d!1220988 (= c!707185 ((_ is Node!13457) (c!707140 (dynLambda!18993 (toChars!9753 (transformation!7246 r!4008)) (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810)))))))

(declare-fun e!2554357 () Bool)

(assert (=> d!1220988 (= (inv!59043 (c!707140 (dynLambda!18993 (toChars!9753 (transformation!7246 r!4008)) (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810)))) e!2554357)))

(declare-fun b!4116719 () Bool)

(declare-fun inv!59045 (Conc!13457) Bool)

(assert (=> b!4116719 (= e!2554357 (inv!59045 (c!707140 (dynLambda!18993 (toChars!9753 (transformation!7246 r!4008)) (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810)))))))

(declare-fun b!4116720 () Bool)

(declare-fun e!2554358 () Bool)

(assert (=> b!4116720 (= e!2554357 e!2554358)))

(declare-fun res!1681416 () Bool)

(assert (=> b!4116720 (= res!1681416 (not ((_ is Leaf!20795) (c!707140 (dynLambda!18993 (toChars!9753 (transformation!7246 r!4008)) (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810))))))))

(assert (=> b!4116720 (=> res!1681416 e!2554358)))

(declare-fun b!4116721 () Bool)

(declare-fun inv!59046 (Conc!13457) Bool)

(assert (=> b!4116721 (= e!2554358 (inv!59046 (c!707140 (dynLambda!18993 (toChars!9753 (transformation!7246 r!4008)) (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810)))))))

(assert (= (and d!1220988 c!707185) b!4116719))

(assert (= (and d!1220988 (not c!707185)) b!4116720))

(assert (= (and b!4116720 (not res!1681416)) b!4116721))

(declare-fun m!4716483 () Bool)

(assert (=> b!4116719 m!4716483))

(declare-fun m!4716485 () Bool)

(assert (=> b!4116721 m!4716485))

(assert (=> b!4116592 d!1220988))

(assert (=> b!4116609 d!1220964))

(assert (=> b!4116609 d!1220892))

(declare-fun bs!594580 () Bool)

(declare-fun d!1220990 () Bool)

(assert (= bs!594580 (and d!1220990 d!1220960)))

(declare-fun lambda!128637 () Int)

(assert (=> bs!594580 (= (= (toValue!9894 (transformation!7246 rBis!149)) (toValue!9894 (transformation!7246 (h!49875 rules!3756)))) (= lambda!128637 lambda!128629))))

(assert (=> d!1220990 true))

(assert (=> d!1220990 (< (dynLambda!18990 order!23377 (toValue!9894 (transformation!7246 rBis!149))) (dynLambda!18994 order!23385 lambda!128637))))

(assert (=> d!1220990 (= (equivClasses!3025 (toChars!9753 (transformation!7246 rBis!149)) (toValue!9894 (transformation!7246 rBis!149))) (Forall2!1142 lambda!128637))))

(declare-fun bs!594581 () Bool)

(assert (= bs!594581 d!1220990))

(declare-fun m!4716487 () Bool)

(assert (=> bs!594581 m!4716487))

(assert (=> b!4116375 d!1220990))

(declare-fun bs!594582 () Bool)

(declare-fun d!1220992 () Bool)

(assert (= bs!594582 (and d!1220992 d!1220960)))

(declare-fun lambda!128638 () Int)

(assert (=> bs!594582 (= (= (toValue!9894 (transformation!7246 r!4008)) (toValue!9894 (transformation!7246 (h!49875 rules!3756)))) (= lambda!128638 lambda!128629))))

(declare-fun bs!594583 () Bool)

(assert (= bs!594583 (and d!1220992 d!1220990)))

(assert (=> bs!594583 (= (= (toValue!9894 (transformation!7246 r!4008)) (toValue!9894 (transformation!7246 rBis!149))) (= lambda!128638 lambda!128637))))

(assert (=> d!1220992 true))

(assert (=> d!1220992 (< (dynLambda!18990 order!23377 (toValue!9894 (transformation!7246 r!4008))) (dynLambda!18994 order!23385 lambda!128638))))

(assert (=> d!1220992 (= (equivClasses!3025 (toChars!9753 (transformation!7246 r!4008)) (toValue!9894 (transformation!7246 r!4008))) (Forall2!1142 lambda!128638))))

(declare-fun bs!594584 () Bool)

(assert (= bs!594584 d!1220992))

(declare-fun m!4716489 () Bool)

(assert (=> bs!594584 m!4716489))

(assert (=> b!4116596 d!1220992))

(declare-fun d!1220994 () Bool)

(declare-fun list!16336 (Conc!13457) List!44578)

(assert (=> d!1220994 (= (list!16335 (dynLambda!18993 (toChars!9753 (transformation!7246 r!4008)) (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810))) (list!16336 (c!707140 (dynLambda!18993 (toChars!9753 (transformation!7246 r!4008)) (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810)))))))

(declare-fun bs!594585 () Bool)

(assert (= bs!594585 d!1220994))

(declare-fun m!4716491 () Bool)

(assert (=> bs!594585 m!4716491))

(assert (=> d!1220896 d!1220994))

(declare-fun d!1220996 () Bool)

(assert (=> d!1220996 (= (list!16335 lt!1468810) (list!16336 (c!707140 lt!1468810)))))

(declare-fun bs!594586 () Bool)

(assert (= bs!594586 d!1220996))

(declare-fun m!4716493 () Bool)

(assert (=> bs!594586 m!4716493))

(assert (=> d!1220896 d!1220996))

(declare-fun d!1220998 () Bool)

(declare-fun dynLambda!18996 (Int BalanceConc!26508) Bool)

(assert (=> d!1220998 (dynLambda!18996 lambda!128617 lt!1468810)))

(declare-fun lt!1468891 () Unit!63815)

(declare-fun choose!25156 (Int BalanceConc!26508) Unit!63815)

(assert (=> d!1220998 (= lt!1468891 (choose!25156 lambda!128617 lt!1468810))))

(assert (=> d!1220998 (Forall!1544 lambda!128617)))

(assert (=> d!1220998 (= (ForallOf!909 lambda!128617 lt!1468810) lt!1468891)))

(declare-fun b_lambda!120791 () Bool)

(assert (=> (not b_lambda!120791) (not d!1220998)))

(declare-fun bs!594587 () Bool)

(assert (= bs!594587 d!1220998))

(declare-fun m!4716495 () Bool)

(assert (=> bs!594587 m!4716495))

(declare-fun m!4716497 () Bool)

(assert (=> bs!594587 m!4716497))

(declare-fun m!4716499 () Bool)

(assert (=> bs!594587 m!4716499))

(assert (=> d!1220896 d!1220998))

(declare-fun d!1221000 () Bool)

(declare-fun lt!1468892 () Int)

(assert (=> d!1221000 (>= lt!1468892 0)))

(declare-fun e!2554359 () Int)

(assert (=> d!1221000 (= lt!1468892 e!2554359)))

(declare-fun c!707186 () Bool)

(assert (=> d!1221000 (= c!707186 ((_ is Nil!44454) (_2!24607 (get!14505 lt!1468837))))))

(assert (=> d!1221000 (= (size!32900 (_2!24607 (get!14505 lt!1468837))) lt!1468892)))

(declare-fun b!4116722 () Bool)

(assert (=> b!4116722 (= e!2554359 0)))

(declare-fun b!4116723 () Bool)

(assert (=> b!4116723 (= e!2554359 (+ 1 (size!32900 (t!340401 (_2!24607 (get!14505 lt!1468837))))))))

(assert (= (and d!1221000 c!707186) b!4116722))

(assert (= (and d!1221000 (not c!707186)) b!4116723))

(declare-fun m!4716501 () Bool)

(assert (=> b!4116723 m!4716501))

(assert (=> b!4116444 d!1221000))

(declare-fun d!1221002 () Bool)

(assert (=> d!1221002 (= (get!14505 lt!1468837) (v!40129 lt!1468837))))

(assert (=> b!4116444 d!1221002))

(assert (=> b!4116444 d!1220964))

(declare-fun d!1221004 () Bool)

(declare-fun isBalanced!3716 (Conc!13457) Bool)

(assert (=> d!1221004 (= (inv!59044 (dynLambda!18993 (toChars!9753 (transformation!7246 r!4008)) (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810))) (isBalanced!3716 (c!707140 (dynLambda!18993 (toChars!9753 (transformation!7246 r!4008)) (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810)))))))

(declare-fun bs!594588 () Bool)

(assert (= bs!594588 d!1221004))

(declare-fun m!4716503 () Bool)

(assert (=> bs!594588 m!4716503))

(assert (=> tb!247069 d!1221004))

(declare-fun d!1221006 () Bool)

(declare-fun c!707189 () Bool)

(assert (=> d!1221006 (= c!707189 ((_ is Nil!44455) rules!3756))))

(declare-fun e!2554362 () (InoxSet Rule!14292))

(assert (=> d!1221006 (= (content!6858 rules!3756) e!2554362)))

(declare-fun b!4116728 () Bool)

(assert (=> b!4116728 (= e!2554362 ((as const (Array Rule!14292 Bool)) false))))

(declare-fun b!4116729 () Bool)

(assert (=> b!4116729 (= e!2554362 ((_ map or) (store ((as const (Array Rule!14292 Bool)) false) (h!49875 rules!3756) true) (content!6858 (t!340402 rules!3756))))))

(assert (= (and d!1221006 c!707189) b!4116728))

(assert (= (and d!1221006 (not c!707189)) b!4116729))

(declare-fun m!4716505 () Bool)

(assert (=> b!4116729 m!4716505))

(assert (=> b!4116729 m!4716455))

(assert (=> d!1220866 d!1221006))

(declare-fun d!1221008 () Bool)

(declare-fun e!2554365 () Bool)

(assert (=> d!1221008 e!2554365))

(declare-fun res!1681419 () Bool)

(assert (=> d!1221008 (=> (not res!1681419) (not e!2554365))))

(declare-fun lt!1468895 () BalanceConc!26508)

(assert (=> d!1221008 (= res!1681419 (= (list!16335 lt!1468895) p!2912))))

(declare-fun fromList!895 (List!44578) Conc!13457)

(assert (=> d!1221008 (= lt!1468895 (BalanceConc!26509 (fromList!895 p!2912)))))

(assert (=> d!1221008 (= (fromListB!2459 p!2912) lt!1468895)))

(declare-fun b!4116732 () Bool)

(assert (=> b!4116732 (= e!2554365 (isBalanced!3716 (fromList!895 p!2912)))))

(assert (= (and d!1221008 res!1681419) b!4116732))

(declare-fun m!4716507 () Bool)

(assert (=> d!1221008 m!4716507))

(declare-fun m!4716509 () Bool)

(assert (=> d!1221008 m!4716509))

(assert (=> b!4116732 m!4716509))

(assert (=> b!4116732 m!4716509))

(declare-fun m!4716511 () Bool)

(assert (=> b!4116732 m!4716511))

(assert (=> d!1220890 d!1221008))

(declare-fun b!4116743 () Bool)

(declare-fun e!2554373 () Bool)

(declare-fun inv!16 (TokenValue!7476) Bool)

(assert (=> b!4116743 (= e!2554373 (inv!16 (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810)))))

(declare-fun b!4116744 () Bool)

(declare-fun res!1681422 () Bool)

(declare-fun e!2554374 () Bool)

(assert (=> b!4116744 (=> res!1681422 e!2554374)))

(assert (=> b!4116744 (= res!1681422 (not ((_ is IntegerValue!22430) (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810))))))

(declare-fun e!2554372 () Bool)

(assert (=> b!4116744 (= e!2554372 e!2554374)))

(declare-fun d!1221010 () Bool)

(declare-fun c!707195 () Bool)

(assert (=> d!1221010 (= c!707195 ((_ is IntegerValue!22428) (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810)))))

(assert (=> d!1221010 (= (inv!21 (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810)) e!2554373)))

(declare-fun b!4116745 () Bool)

(assert (=> b!4116745 (= e!2554373 e!2554372)))

(declare-fun c!707196 () Bool)

(assert (=> b!4116745 (= c!707196 ((_ is IntegerValue!22429) (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810)))))

(declare-fun b!4116746 () Bool)

(declare-fun inv!17 (TokenValue!7476) Bool)

(assert (=> b!4116746 (= e!2554372 (inv!17 (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810)))))

(declare-fun b!4116747 () Bool)

(declare-fun inv!15 (TokenValue!7476) Bool)

(assert (=> b!4116747 (= e!2554374 (inv!15 (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810)))))

(assert (= (and d!1221010 c!707195) b!4116743))

(assert (= (and d!1221010 (not c!707195)) b!4116745))

(assert (= (and b!4116745 c!707196) b!4116746))

(assert (= (and b!4116745 (not c!707196)) b!4116744))

(assert (= (and b!4116744 (not res!1681422)) b!4116747))

(declare-fun m!4716513 () Bool)

(assert (=> b!4116743 m!4716513))

(declare-fun m!4716515 () Bool)

(assert (=> b!4116746 m!4716515))

(declare-fun m!4716517 () Bool)

(assert (=> b!4116747 m!4716517))

(assert (=> tb!247053 d!1221010))

(declare-fun d!1221012 () Bool)

(assert (=> d!1221012 (= (isDefined!7220 lt!1468837) (not (isEmpty!26432 lt!1468837)))))

(declare-fun bs!594589 () Bool)

(assert (= bs!594589 d!1221012))

(assert (=> bs!594589 m!4716273))

(assert (=> b!4116443 d!1221012))

(declare-fun b!4116748 () Bool)

(declare-fun e!2554375 () Bool)

(declare-fun e!2554376 () Bool)

(assert (=> b!4116748 (= e!2554375 e!2554376)))

(declare-fun res!1681426 () Bool)

(assert (=> b!4116748 (=> (not res!1681426) (not e!2554376))))

(declare-fun lt!1468897 () Option!9554)

(assert (=> b!4116748 (= res!1681426 (isDefined!7220 lt!1468897))))

(declare-fun b!4116749 () Bool)

(declare-fun res!1681425 () Bool)

(assert (=> b!4116749 (=> (not res!1681425) (not e!2554376))))

(assert (=> b!4116749 (= res!1681425 (< (size!32900 (_2!24607 (get!14505 lt!1468897))) (size!32900 input!3238)))))

(declare-fun b!4116751 () Bool)

(declare-fun e!2554377 () Option!9554)

(declare-fun lt!1468899 () Option!9554)

(declare-fun lt!1468898 () Option!9554)

(assert (=> b!4116751 (= e!2554377 (ite (and ((_ is None!9553) lt!1468899) ((_ is None!9553) lt!1468898)) None!9553 (ite ((_ is None!9553) lt!1468898) lt!1468899 (ite ((_ is None!9553) lt!1468899) lt!1468898 (ite (>= (size!32899 (_1!24607 (v!40129 lt!1468899))) (size!32899 (_1!24607 (v!40129 lt!1468898)))) lt!1468899 lt!1468898)))))))

(declare-fun call!289873 () Option!9554)

(assert (=> b!4116751 (= lt!1468899 call!289873)))

(assert (=> b!4116751 (= lt!1468898 (maxPrefix!4027 thiss!25645 (t!340402 (t!340402 rules!3756)) input!3238))))

(declare-fun b!4116752 () Bool)

(declare-fun res!1681427 () Bool)

(assert (=> b!4116752 (=> (not res!1681427) (not e!2554376))))

(assert (=> b!4116752 (= res!1681427 (= (value!227065 (_1!24607 (get!14505 lt!1468897))) (apply!10319 (transformation!7246 (rule!10310 (_1!24607 (get!14505 lt!1468897)))) (seqFromList!5363 (originalCharacters!7742 (_1!24607 (get!14505 lt!1468897)))))))))

(declare-fun b!4116753 () Bool)

(declare-fun res!1681423 () Bool)

(assert (=> b!4116753 (=> (not res!1681423) (not e!2554376))))

(assert (=> b!4116753 (= res!1681423 (= (++!11542 (list!16335 (charsOf!4886 (_1!24607 (get!14505 lt!1468897)))) (_2!24607 (get!14505 lt!1468897))) input!3238))))

(declare-fun b!4116754 () Bool)

(assert (=> b!4116754 (= e!2554376 (contains!8916 (t!340402 rules!3756) (rule!10310 (_1!24607 (get!14505 lt!1468897)))))))

(declare-fun b!4116755 () Bool)

(assert (=> b!4116755 (= e!2554377 call!289873)))

(declare-fun d!1221014 () Bool)

(assert (=> d!1221014 e!2554375))

(declare-fun res!1681429 () Bool)

(assert (=> d!1221014 (=> res!1681429 e!2554375)))

(assert (=> d!1221014 (= res!1681429 (isEmpty!26432 lt!1468897))))

(assert (=> d!1221014 (= lt!1468897 e!2554377)))

(declare-fun c!707197 () Bool)

(assert (=> d!1221014 (= c!707197 (and ((_ is Cons!44455) (t!340402 rules!3756)) ((_ is Nil!44455) (t!340402 (t!340402 rules!3756)))))))

(declare-fun lt!1468900 () Unit!63815)

(declare-fun lt!1468896 () Unit!63815)

(assert (=> d!1221014 (= lt!1468900 lt!1468896)))

(assert (=> d!1221014 (isPrefix!4181 input!3238 input!3238)))

(assert (=> d!1221014 (= lt!1468896 (lemmaIsPrefixRefl!2722 input!3238 input!3238))))

(assert (=> d!1221014 (rulesValidInductive!2673 thiss!25645 (t!340402 rules!3756))))

(assert (=> d!1221014 (= (maxPrefix!4027 thiss!25645 (t!340402 rules!3756) input!3238) lt!1468897)))

(declare-fun b!4116750 () Bool)

(declare-fun res!1681428 () Bool)

(assert (=> b!4116750 (=> (not res!1681428) (not e!2554376))))

(assert (=> b!4116750 (= res!1681428 (matchR!5982 (regex!7246 (rule!10310 (_1!24607 (get!14505 lt!1468897)))) (list!16335 (charsOf!4886 (_1!24607 (get!14505 lt!1468897))))))))

(declare-fun b!4116756 () Bool)

(declare-fun res!1681424 () Bool)

(assert (=> b!4116756 (=> (not res!1681424) (not e!2554376))))

(assert (=> b!4116756 (= res!1681424 (= (list!16335 (charsOf!4886 (_1!24607 (get!14505 lt!1468897)))) (originalCharacters!7742 (_1!24607 (get!14505 lt!1468897)))))))

(declare-fun bm!289868 () Bool)

(assert (=> bm!289868 (= call!289873 (maxPrefixOneRule!2993 thiss!25645 (h!49875 (t!340402 rules!3756)) input!3238))))

(assert (= (and d!1221014 c!707197) b!4116755))

(assert (= (and d!1221014 (not c!707197)) b!4116751))

(assert (= (or b!4116755 b!4116751) bm!289868))

(assert (= (and d!1221014 (not res!1681429)) b!4116748))

(assert (= (and b!4116748 res!1681426) b!4116756))

(assert (= (and b!4116756 res!1681424) b!4116749))

(assert (= (and b!4116749 res!1681425) b!4116753))

(assert (= (and b!4116753 res!1681423) b!4116752))

(assert (= (and b!4116752 res!1681427) b!4116750))

(assert (= (and b!4116750 res!1681428) b!4116754))

(declare-fun m!4716519 () Bool)

(assert (=> b!4116751 m!4716519))

(declare-fun m!4716521 () Bool)

(assert (=> b!4116750 m!4716521))

(declare-fun m!4716523 () Bool)

(assert (=> b!4116750 m!4716523))

(assert (=> b!4116750 m!4716523))

(declare-fun m!4716525 () Bool)

(assert (=> b!4116750 m!4716525))

(assert (=> b!4116750 m!4716525))

(declare-fun m!4716527 () Bool)

(assert (=> b!4116750 m!4716527))

(assert (=> b!4116756 m!4716521))

(assert (=> b!4116756 m!4716523))

(assert (=> b!4116756 m!4716523))

(assert (=> b!4116756 m!4716525))

(declare-fun m!4716529 () Bool)

(assert (=> bm!289868 m!4716529))

(assert (=> b!4116753 m!4716521))

(assert (=> b!4116753 m!4716523))

(assert (=> b!4116753 m!4716523))

(assert (=> b!4116753 m!4716525))

(assert (=> b!4116753 m!4716525))

(declare-fun m!4716531 () Bool)

(assert (=> b!4116753 m!4716531))

(declare-fun m!4716533 () Bool)

(assert (=> b!4116748 m!4716533))

(assert (=> b!4116754 m!4716521))

(declare-fun m!4716535 () Bool)

(assert (=> b!4116754 m!4716535))

(assert (=> b!4116752 m!4716521))

(declare-fun m!4716537 () Bool)

(assert (=> b!4116752 m!4716537))

(assert (=> b!4116752 m!4716537))

(declare-fun m!4716539 () Bool)

(assert (=> b!4116752 m!4716539))

(assert (=> b!4116749 m!4716521))

(declare-fun m!4716541 () Bool)

(assert (=> b!4116749 m!4716541))

(assert (=> b!4116749 m!4716239))

(declare-fun m!4716543 () Bool)

(assert (=> d!1221014 m!4716543))

(assert (=> d!1221014 m!4716275))

(assert (=> d!1221014 m!4716277))

(declare-fun m!4716545 () Bool)

(assert (=> d!1221014 m!4716545))

(assert (=> b!4116446 d!1221014))

(declare-fun b!4116757 () Bool)

(declare-fun e!2554383 () Bool)

(declare-fun e!2554379 () Bool)

(assert (=> b!4116757 (= e!2554383 e!2554379)))

(declare-fun res!1681432 () Bool)

(assert (=> b!4116757 (=> (not res!1681432) (not e!2554379))))

(declare-fun call!289876 () Bool)

(assert (=> b!4116757 (= res!1681432 call!289876)))

(declare-fun b!4116759 () Bool)

(declare-fun e!2554378 () Bool)

(declare-fun e!2554384 () Bool)

(assert (=> b!4116759 (= e!2554378 e!2554384)))

(declare-fun res!1681433 () Bool)

(assert (=> b!4116759 (= res!1681433 (not (nullable!4264 (reg!12480 (ite c!707148 (reg!12480 (regex!7246 r!4008)) (ite c!707147 (regOne!24815 (regex!7246 r!4008)) (regOne!24814 (regex!7246 r!4008))))))))))

(assert (=> b!4116759 (=> (not res!1681433) (not e!2554384))))

(declare-fun b!4116760 () Bool)

(declare-fun res!1681430 () Bool)

(assert (=> b!4116760 (=> res!1681430 e!2554383)))

(assert (=> b!4116760 (= res!1681430 (not ((_ is Concat!19628) (ite c!707148 (reg!12480 (regex!7246 r!4008)) (ite c!707147 (regOne!24815 (regex!7246 r!4008)) (regOne!24814 (regex!7246 r!4008)))))))))

(declare-fun e!2554380 () Bool)

(assert (=> b!4116760 (= e!2554380 e!2554383)))

(declare-fun b!4116758 () Bool)

(declare-fun call!289874 () Bool)

(assert (=> b!4116758 (= e!2554379 call!289874)))

(declare-fun d!1221016 () Bool)

(declare-fun res!1681434 () Bool)

(declare-fun e!2554382 () Bool)

(assert (=> d!1221016 (=> res!1681434 e!2554382)))

(assert (=> d!1221016 (= res!1681434 ((_ is ElementMatch!12151) (ite c!707148 (reg!12480 (regex!7246 r!4008)) (ite c!707147 (regOne!24815 (regex!7246 r!4008)) (regOne!24814 (regex!7246 r!4008))))))))

(assert (=> d!1221016 (= (validRegex!5464 (ite c!707148 (reg!12480 (regex!7246 r!4008)) (ite c!707147 (regOne!24815 (regex!7246 r!4008)) (regOne!24814 (regex!7246 r!4008))))) e!2554382)))

(declare-fun c!707198 () Bool)

(declare-fun bm!289869 () Bool)

(assert (=> bm!289869 (= call!289874 (validRegex!5464 (ite c!707198 (regTwo!24815 (ite c!707148 (reg!12480 (regex!7246 r!4008)) (ite c!707147 (regOne!24815 (regex!7246 r!4008)) (regOne!24814 (regex!7246 r!4008))))) (regTwo!24814 (ite c!707148 (reg!12480 (regex!7246 r!4008)) (ite c!707147 (regOne!24815 (regex!7246 r!4008)) (regOne!24814 (regex!7246 r!4008))))))))))

(declare-fun b!4116761 () Bool)

(declare-fun res!1681431 () Bool)

(declare-fun e!2554381 () Bool)

(assert (=> b!4116761 (=> (not res!1681431) (not e!2554381))))

(assert (=> b!4116761 (= res!1681431 call!289876)))

(assert (=> b!4116761 (= e!2554380 e!2554381)))

(declare-fun b!4116762 () Bool)

(assert (=> b!4116762 (= e!2554378 e!2554380)))

(assert (=> b!4116762 (= c!707198 ((_ is Union!12151) (ite c!707148 (reg!12480 (regex!7246 r!4008)) (ite c!707147 (regOne!24815 (regex!7246 r!4008)) (regOne!24814 (regex!7246 r!4008))))))))

(declare-fun b!4116763 () Bool)

(declare-fun call!289875 () Bool)

(assert (=> b!4116763 (= e!2554384 call!289875)))

(declare-fun bm!289870 () Bool)

(assert (=> bm!289870 (= call!289876 call!289875)))

(declare-fun b!4116764 () Bool)

(assert (=> b!4116764 (= e!2554381 call!289874)))

(declare-fun b!4116765 () Bool)

(assert (=> b!4116765 (= e!2554382 e!2554378)))

(declare-fun c!707199 () Bool)

(assert (=> b!4116765 (= c!707199 ((_ is Star!12151) (ite c!707148 (reg!12480 (regex!7246 r!4008)) (ite c!707147 (regOne!24815 (regex!7246 r!4008)) (regOne!24814 (regex!7246 r!4008))))))))

(declare-fun bm!289871 () Bool)

(assert (=> bm!289871 (= call!289875 (validRegex!5464 (ite c!707199 (reg!12480 (ite c!707148 (reg!12480 (regex!7246 r!4008)) (ite c!707147 (regOne!24815 (regex!7246 r!4008)) (regOne!24814 (regex!7246 r!4008))))) (ite c!707198 (regOne!24815 (ite c!707148 (reg!12480 (regex!7246 r!4008)) (ite c!707147 (regOne!24815 (regex!7246 r!4008)) (regOne!24814 (regex!7246 r!4008))))) (regOne!24814 (ite c!707148 (reg!12480 (regex!7246 r!4008)) (ite c!707147 (regOne!24815 (regex!7246 r!4008)) (regOne!24814 (regex!7246 r!4008)))))))))))

(assert (= (and d!1221016 (not res!1681434)) b!4116765))

(assert (= (and b!4116765 c!707199) b!4116759))

(assert (= (and b!4116765 (not c!707199)) b!4116762))

(assert (= (and b!4116759 res!1681433) b!4116763))

(assert (= (and b!4116762 c!707198) b!4116761))

(assert (= (and b!4116762 (not c!707198)) b!4116760))

(assert (= (and b!4116761 res!1681431) b!4116764))

(assert (= (and b!4116760 (not res!1681430)) b!4116757))

(assert (= (and b!4116757 res!1681432) b!4116758))

(assert (= (or b!4116761 b!4116757) bm!289870))

(assert (= (or b!4116764 b!4116758) bm!289869))

(assert (= (or b!4116763 bm!289870) bm!289871))

(declare-fun m!4716547 () Bool)

(assert (=> b!4116759 m!4716547))

(declare-fun m!4716549 () Bool)

(assert (=> bm!289869 m!4716549))

(declare-fun m!4716551 () Bool)

(assert (=> bm!289871 m!4716551))

(assert (=> bm!289846 d!1221016))

(assert (=> b!4116447 d!1221002))

(declare-fun d!1221018 () Bool)

(assert (=> d!1221018 (= (apply!10319 (transformation!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837)))) (seqFromList!5363 (originalCharacters!7742 (_1!24607 (get!14505 lt!1468837))))) (dynLambda!18989 (toValue!9894 (transformation!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837))))) (seqFromList!5363 (originalCharacters!7742 (_1!24607 (get!14505 lt!1468837))))))))

(declare-fun b_lambda!120793 () Bool)

(assert (=> (not b_lambda!120793) (not d!1221018)))

(declare-fun tb!247079 () Bool)

(declare-fun t!340438 () Bool)

(assert (=> (and b!4116347 (= (toValue!9894 (transformation!7246 r!4008)) (toValue!9894 (transformation!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837)))))) t!340438) tb!247079))

(declare-fun result!300140 () Bool)

(assert (=> tb!247079 (= result!300140 (inv!21 (dynLambda!18989 (toValue!9894 (transformation!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837))))) (seqFromList!5363 (originalCharacters!7742 (_1!24607 (get!14505 lt!1468837)))))))))

(declare-fun m!4716553 () Bool)

(assert (=> tb!247079 m!4716553))

(assert (=> d!1221018 t!340438))

(declare-fun b_and!318113 () Bool)

(assert (= b_and!318103 (and (=> t!340438 result!300140) b_and!318113)))

(declare-fun tb!247081 () Bool)

(declare-fun t!340440 () Bool)

(assert (=> (and b!4116344 (= (toValue!9894 (transformation!7246 (h!49875 rules!3756))) (toValue!9894 (transformation!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837)))))) t!340440) tb!247081))

(declare-fun result!300142 () Bool)

(assert (= result!300142 result!300140))

(assert (=> d!1221018 t!340440))

(declare-fun b_and!318115 () Bool)

(assert (= b_and!318105 (and (=> t!340440 result!300142) b_and!318115)))

(declare-fun t!340442 () Bool)

(declare-fun tb!247083 () Bool)

(assert (=> (and b!4116342 (= (toValue!9894 (transformation!7246 rBis!149)) (toValue!9894 (transformation!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837)))))) t!340442) tb!247083))

(declare-fun result!300144 () Bool)

(assert (= result!300144 result!300140))

(assert (=> d!1221018 t!340442))

(declare-fun b_and!318117 () Bool)

(assert (= b_and!318107 (and (=> t!340442 result!300144) b_and!318117)))

(declare-fun t!340444 () Bool)

(declare-fun tb!247085 () Bool)

(assert (=> (and b!4116639 (= (toValue!9894 (transformation!7246 (h!49875 (t!340402 rules!3756)))) (toValue!9894 (transformation!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837)))))) t!340444) tb!247085))

(declare-fun result!300146 () Bool)

(assert (= result!300146 result!300140))

(assert (=> d!1221018 t!340444))

(declare-fun b_and!318119 () Bool)

(assert (= b_and!318109 (and (=> t!340444 result!300146) b_and!318119)))

(assert (=> d!1221018 m!4716267))

(declare-fun m!4716555 () Bool)

(assert (=> d!1221018 m!4716555))

(assert (=> b!4116447 d!1221018))

(declare-fun d!1221020 () Bool)

(assert (=> d!1221020 (= (seqFromList!5363 (originalCharacters!7742 (_1!24607 (get!14505 lt!1468837)))) (fromListB!2459 (originalCharacters!7742 (_1!24607 (get!14505 lt!1468837)))))))

(declare-fun bs!594590 () Bool)

(assert (= bs!594590 d!1221020))

(declare-fun m!4716557 () Bool)

(assert (=> bs!594590 m!4716557))

(assert (=> b!4116447 d!1221020))

(declare-fun b!4116800 () Bool)

(declare-fun e!2554410 () Bool)

(assert (=> b!4116800 (= e!2554410 (= (head!8672 (list!16335 (charsOf!4886 (_1!24607 (get!14505 lt!1468837))))) (c!707141 (regex!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837)))))))))

(declare-fun b!4116801 () Bool)

(declare-fun e!2554408 () Bool)

(declare-fun e!2554409 () Bool)

(assert (=> b!4116801 (= e!2554408 e!2554409)))

(declare-fun c!707208 () Bool)

(assert (=> b!4116801 (= c!707208 ((_ is EmptyLang!12151) (regex!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837))))))))

(declare-fun b!4116802 () Bool)

(declare-fun res!1681453 () Bool)

(declare-fun e!2554407 () Bool)

(assert (=> b!4116802 (=> res!1681453 e!2554407)))

(assert (=> b!4116802 (= res!1681453 (not (isEmpty!26429 (tail!6407 (list!16335 (charsOf!4886 (_1!24607 (get!14505 lt!1468837))))))))))

(declare-fun b!4116803 () Bool)

(declare-fun res!1681456 () Bool)

(assert (=> b!4116803 (=> (not res!1681456) (not e!2554410))))

(declare-fun call!289879 () Bool)

(assert (=> b!4116803 (= res!1681456 (not call!289879))))

(declare-fun d!1221022 () Bool)

(assert (=> d!1221022 e!2554408))

(declare-fun c!707209 () Bool)

(assert (=> d!1221022 (= c!707209 ((_ is EmptyExpr!12151) (regex!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837))))))))

(declare-fun lt!1468913 () Bool)

(declare-fun e!2554404 () Bool)

(assert (=> d!1221022 (= lt!1468913 e!2554404)))

(declare-fun c!707210 () Bool)

(assert (=> d!1221022 (= c!707210 (isEmpty!26429 (list!16335 (charsOf!4886 (_1!24607 (get!14505 lt!1468837))))))))

(assert (=> d!1221022 (validRegex!5464 (regex!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837)))))))

(assert (=> d!1221022 (= (matchR!5982 (regex!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837)))) (list!16335 (charsOf!4886 (_1!24607 (get!14505 lt!1468837))))) lt!1468913)))

(declare-fun b!4116804 () Bool)

(assert (=> b!4116804 (= e!2554409 (not lt!1468913))))

(declare-fun b!4116805 () Bool)

(declare-fun res!1681457 () Bool)

(declare-fun e!2554405 () Bool)

(assert (=> b!4116805 (=> res!1681457 e!2554405)))

(assert (=> b!4116805 (= res!1681457 (not ((_ is ElementMatch!12151) (regex!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837)))))))))

(assert (=> b!4116805 (= e!2554409 e!2554405)))

(declare-fun b!4116806 () Bool)

(assert (=> b!4116806 (= e!2554407 (not (= (head!8672 (list!16335 (charsOf!4886 (_1!24607 (get!14505 lt!1468837))))) (c!707141 (regex!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837))))))))))

(declare-fun b!4116807 () Bool)

(declare-fun e!2554406 () Bool)

(assert (=> b!4116807 (= e!2554406 e!2554407)))

(declare-fun res!1681459 () Bool)

(assert (=> b!4116807 (=> res!1681459 e!2554407)))

(assert (=> b!4116807 (= res!1681459 call!289879)))

(declare-fun b!4116808 () Bool)

(declare-fun derivativeStep!3658 (Regex!12151 C!24488) Regex!12151)

(assert (=> b!4116808 (= e!2554404 (matchR!5982 (derivativeStep!3658 (regex!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837)))) (head!8672 (list!16335 (charsOf!4886 (_1!24607 (get!14505 lt!1468837)))))) (tail!6407 (list!16335 (charsOf!4886 (_1!24607 (get!14505 lt!1468837)))))))))

(declare-fun b!4116809 () Bool)

(assert (=> b!4116809 (= e!2554404 (nullable!4264 (regex!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837))))))))

(declare-fun b!4116810 () Bool)

(declare-fun res!1681458 () Bool)

(assert (=> b!4116810 (=> res!1681458 e!2554405)))

(assert (=> b!4116810 (= res!1681458 e!2554410)))

(declare-fun res!1681460 () Bool)

(assert (=> b!4116810 (=> (not res!1681460) (not e!2554410))))

(assert (=> b!4116810 (= res!1681460 lt!1468913)))

(declare-fun b!4116811 () Bool)

(declare-fun res!1681454 () Bool)

(assert (=> b!4116811 (=> (not res!1681454) (not e!2554410))))

(assert (=> b!4116811 (= res!1681454 (isEmpty!26429 (tail!6407 (list!16335 (charsOf!4886 (_1!24607 (get!14505 lt!1468837)))))))))

(declare-fun b!4116812 () Bool)

(assert (=> b!4116812 (= e!2554408 (= lt!1468913 call!289879))))

(declare-fun b!4116813 () Bool)

(assert (=> b!4116813 (= e!2554405 e!2554406)))

(declare-fun res!1681455 () Bool)

(assert (=> b!4116813 (=> (not res!1681455) (not e!2554406))))

(assert (=> b!4116813 (= res!1681455 (not lt!1468913))))

(declare-fun bm!289874 () Bool)

(assert (=> bm!289874 (= call!289879 (isEmpty!26429 (list!16335 (charsOf!4886 (_1!24607 (get!14505 lt!1468837))))))))

(assert (= (and d!1221022 c!707210) b!4116809))

(assert (= (and d!1221022 (not c!707210)) b!4116808))

(assert (= (and d!1221022 c!707209) b!4116812))

(assert (= (and d!1221022 (not c!707209)) b!4116801))

(assert (= (and b!4116801 c!707208) b!4116804))

(assert (= (and b!4116801 (not c!707208)) b!4116805))

(assert (= (and b!4116805 (not res!1681457)) b!4116810))

(assert (= (and b!4116810 res!1681460) b!4116803))

(assert (= (and b!4116803 res!1681456) b!4116811))

(assert (= (and b!4116811 res!1681454) b!4116800))

(assert (= (and b!4116810 (not res!1681458)) b!4116813))

(assert (= (and b!4116813 res!1681455) b!4116807))

(assert (= (and b!4116807 (not res!1681459)) b!4116802))

(assert (= (and b!4116802 (not res!1681453)) b!4116806))

(assert (= (or b!4116812 b!4116803 b!4116807) bm!289874))

(assert (=> b!4116800 m!4716255))

(declare-fun m!4716559 () Bool)

(assert (=> b!4116800 m!4716559))

(assert (=> b!4116808 m!4716255))

(assert (=> b!4116808 m!4716559))

(assert (=> b!4116808 m!4716559))

(declare-fun m!4716561 () Bool)

(assert (=> b!4116808 m!4716561))

(assert (=> b!4116808 m!4716255))

(declare-fun m!4716563 () Bool)

(assert (=> b!4116808 m!4716563))

(assert (=> b!4116808 m!4716561))

(assert (=> b!4116808 m!4716563))

(declare-fun m!4716565 () Bool)

(assert (=> b!4116808 m!4716565))

(assert (=> b!4116806 m!4716255))

(assert (=> b!4116806 m!4716559))

(assert (=> b!4116811 m!4716255))

(assert (=> b!4116811 m!4716563))

(assert (=> b!4116811 m!4716563))

(declare-fun m!4716567 () Bool)

(assert (=> b!4116811 m!4716567))

(assert (=> bm!289874 m!4716255))

(declare-fun m!4716569 () Bool)

(assert (=> bm!289874 m!4716569))

(assert (=> d!1221022 m!4716255))

(assert (=> d!1221022 m!4716569))

(declare-fun m!4716571 () Bool)

(assert (=> d!1221022 m!4716571))

(assert (=> b!4116802 m!4716255))

(assert (=> b!4116802 m!4716563))

(assert (=> b!4116802 m!4716563))

(assert (=> b!4116802 m!4716567))

(declare-fun m!4716573 () Bool)

(assert (=> b!4116809 m!4716573))

(assert (=> b!4116445 d!1221022))

(assert (=> b!4116445 d!1221002))

(declare-fun d!1221024 () Bool)

(assert (=> d!1221024 (= (list!16335 (charsOf!4886 (_1!24607 (get!14505 lt!1468837)))) (list!16336 (c!707140 (charsOf!4886 (_1!24607 (get!14505 lt!1468837))))))))

(declare-fun bs!594591 () Bool)

(assert (= bs!594591 d!1221024))

(declare-fun m!4716575 () Bool)

(assert (=> bs!594591 m!4716575))

(assert (=> b!4116445 d!1221024))

(declare-fun d!1221026 () Bool)

(declare-fun lt!1468916 () BalanceConc!26508)

(assert (=> d!1221026 (= (list!16335 lt!1468916) (originalCharacters!7742 (_1!24607 (get!14505 lt!1468837))))))

(assert (=> d!1221026 (= lt!1468916 (dynLambda!18993 (toChars!9753 (transformation!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837))))) (value!227065 (_1!24607 (get!14505 lt!1468837)))))))

(assert (=> d!1221026 (= (charsOf!4886 (_1!24607 (get!14505 lt!1468837))) lt!1468916)))

(declare-fun b_lambda!120795 () Bool)

(assert (=> (not b_lambda!120795) (not d!1221026)))

(declare-fun tb!247087 () Bool)

(declare-fun t!340446 () Bool)

(assert (=> (and b!4116347 (= (toChars!9753 (transformation!7246 r!4008)) (toChars!9753 (transformation!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837)))))) t!340446) tb!247087))

(declare-fun b!4116826 () Bool)

(declare-fun e!2554415 () Bool)

(declare-fun tp!1254117 () Bool)

(assert (=> b!4116826 (= e!2554415 (and (inv!59043 (c!707140 (dynLambda!18993 (toChars!9753 (transformation!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837))))) (value!227065 (_1!24607 (get!14505 lt!1468837)))))) tp!1254117))))

(declare-fun result!300148 () Bool)

(assert (=> tb!247087 (= result!300148 (and (inv!59044 (dynLambda!18993 (toChars!9753 (transformation!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837))))) (value!227065 (_1!24607 (get!14505 lt!1468837))))) e!2554415))))

(assert (= tb!247087 b!4116826))

(declare-fun m!4716577 () Bool)

(assert (=> b!4116826 m!4716577))

(declare-fun m!4716579 () Bool)

(assert (=> tb!247087 m!4716579))

(assert (=> d!1221026 t!340446))

(declare-fun b_and!318121 () Bool)

(assert (= b_and!318097 (and (=> t!340446 result!300148) b_and!318121)))

(declare-fun t!340448 () Bool)

(declare-fun tb!247089 () Bool)

(assert (=> (and b!4116344 (= (toChars!9753 (transformation!7246 (h!49875 rules!3756))) (toChars!9753 (transformation!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837)))))) t!340448) tb!247089))

(declare-fun result!300150 () Bool)

(assert (= result!300150 result!300148))

(assert (=> d!1221026 t!340448))

(declare-fun b_and!318123 () Bool)

(assert (= b_and!318099 (and (=> t!340448 result!300150) b_and!318123)))

(declare-fun t!340450 () Bool)

(declare-fun tb!247091 () Bool)

(assert (=> (and b!4116342 (= (toChars!9753 (transformation!7246 rBis!149)) (toChars!9753 (transformation!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837)))))) t!340450) tb!247091))

(declare-fun result!300152 () Bool)

(assert (= result!300152 result!300148))

(assert (=> d!1221026 t!340450))

(declare-fun b_and!318125 () Bool)

(assert (= b_and!318101 (and (=> t!340450 result!300152) b_and!318125)))

(declare-fun t!340452 () Bool)

(declare-fun tb!247093 () Bool)

(assert (=> (and b!4116639 (= (toChars!9753 (transformation!7246 (h!49875 (t!340402 rules!3756)))) (toChars!9753 (transformation!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837)))))) t!340452) tb!247093))

(declare-fun result!300154 () Bool)

(assert (= result!300154 result!300148))

(assert (=> d!1221026 t!340452))

(declare-fun b_and!318127 () Bool)

(assert (= b_and!318111 (and (=> t!340452 result!300154) b_and!318127)))

(declare-fun m!4716581 () Bool)

(assert (=> d!1221026 m!4716581))

(declare-fun m!4716583 () Bool)

(assert (=> d!1221026 m!4716583))

(assert (=> b!4116445 d!1221026))

(declare-fun d!1221028 () Bool)

(declare-fun lt!1468917 () Bool)

(assert (=> d!1221028 (= lt!1468917 (select (content!6858 (t!340402 rules!3756)) rBis!149))))

(declare-fun e!2554417 () Bool)

(assert (=> d!1221028 (= lt!1468917 e!2554417)))

(declare-fun res!1681473 () Bool)

(assert (=> d!1221028 (=> (not res!1681473) (not e!2554417))))

(assert (=> d!1221028 (= res!1681473 ((_ is Cons!44455) (t!340402 rules!3756)))))

(assert (=> d!1221028 (= (contains!8916 (t!340402 rules!3756) rBis!149) lt!1468917)))

(declare-fun b!4116827 () Bool)

(declare-fun e!2554416 () Bool)

(assert (=> b!4116827 (= e!2554417 e!2554416)))

(declare-fun res!1681474 () Bool)

(assert (=> b!4116827 (=> res!1681474 e!2554416)))

(assert (=> b!4116827 (= res!1681474 (= (h!49875 (t!340402 rules!3756)) rBis!149))))

(declare-fun b!4116828 () Bool)

(assert (=> b!4116828 (= e!2554416 (contains!8916 (t!340402 (t!340402 rules!3756)) rBis!149))))

(assert (= (and d!1221028 res!1681473) b!4116827))

(assert (= (and b!4116827 (not res!1681474)) b!4116828))

(assert (=> d!1221028 m!4716455))

(declare-fun m!4716585 () Bool)

(assert (=> d!1221028 m!4716585))

(declare-fun m!4716587 () Bool)

(assert (=> b!4116828 m!4716587))

(assert (=> b!4116364 d!1221028))

(declare-fun d!1221030 () Bool)

(declare-fun lt!1468918 () Bool)

(assert (=> d!1221030 (= lt!1468918 (select (content!6858 rules!3756) (rule!10310 (_1!24607 (get!14505 lt!1468837)))))))

(declare-fun e!2554419 () Bool)

(assert (=> d!1221030 (= lt!1468918 e!2554419)))

(declare-fun res!1681475 () Bool)

(assert (=> d!1221030 (=> (not res!1681475) (not e!2554419))))

(assert (=> d!1221030 (= res!1681475 ((_ is Cons!44455) rules!3756))))

(assert (=> d!1221030 (= (contains!8916 rules!3756 (rule!10310 (_1!24607 (get!14505 lt!1468837)))) lt!1468918)))

(declare-fun b!4116829 () Bool)

(declare-fun e!2554418 () Bool)

(assert (=> b!4116829 (= e!2554419 e!2554418)))

(declare-fun res!1681476 () Bool)

(assert (=> b!4116829 (=> res!1681476 e!2554418)))

(assert (=> b!4116829 (= res!1681476 (= (h!49875 rules!3756) (rule!10310 (_1!24607 (get!14505 lt!1468837)))))))

(declare-fun b!4116830 () Bool)

(assert (=> b!4116830 (= e!2554418 (contains!8916 (t!340402 rules!3756) (rule!10310 (_1!24607 (get!14505 lt!1468837)))))))

(assert (= (and d!1221030 res!1681475) b!4116829))

(assert (= (and b!4116829 (not res!1681476)) b!4116830))

(assert (=> d!1221030 m!4716197))

(declare-fun m!4716589 () Bool)

(assert (=> d!1221030 m!4716589))

(declare-fun m!4716591 () Bool)

(assert (=> b!4116830 m!4716591))

(assert (=> b!4116449 d!1221030))

(assert (=> b!4116449 d!1221002))

(declare-fun d!1221032 () Bool)

(declare-fun lt!1468919 () Int)

(assert (=> d!1221032 (>= lt!1468919 0)))

(declare-fun e!2554420 () Int)

(assert (=> d!1221032 (= lt!1468919 e!2554420)))

(declare-fun c!707211 () Bool)

(assert (=> d!1221032 (= c!707211 ((_ is Nil!44454) (t!340401 p!2912)))))

(assert (=> d!1221032 (= (size!32900 (t!340401 p!2912)) lt!1468919)))

(declare-fun b!4116831 () Bool)

(assert (=> b!4116831 (= e!2554420 0)))

(declare-fun b!4116832 () Bool)

(assert (=> b!4116832 (= e!2554420 (+ 1 (size!32900 (t!340401 (t!340401 p!2912)))))))

(assert (= (and d!1221032 c!707211) b!4116831))

(assert (= (and d!1221032 (not c!707211)) b!4116832))

(declare-fun m!4716593 () Bool)

(assert (=> b!4116832 m!4716593))

(assert (=> b!4116424 d!1221032))

(declare-fun b!4116834 () Bool)

(declare-fun e!2554421 () List!44578)

(assert (=> b!4116834 (= e!2554421 (Cons!44454 (h!49874 (list!16335 (charsOf!4886 (_1!24607 (get!14505 lt!1468837))))) (++!11542 (t!340401 (list!16335 (charsOf!4886 (_1!24607 (get!14505 lt!1468837))))) (_2!24607 (get!14505 lt!1468837)))))))

(declare-fun b!4116836 () Bool)

(declare-fun e!2554422 () Bool)

(declare-fun lt!1468920 () List!44578)

(assert (=> b!4116836 (= e!2554422 (or (not (= (_2!24607 (get!14505 lt!1468837)) Nil!44454)) (= lt!1468920 (list!16335 (charsOf!4886 (_1!24607 (get!14505 lt!1468837)))))))))

(declare-fun d!1221034 () Bool)

(assert (=> d!1221034 e!2554422))

(declare-fun res!1681478 () Bool)

(assert (=> d!1221034 (=> (not res!1681478) (not e!2554422))))

(assert (=> d!1221034 (= res!1681478 (= (content!6859 lt!1468920) ((_ map or) (content!6859 (list!16335 (charsOf!4886 (_1!24607 (get!14505 lt!1468837))))) (content!6859 (_2!24607 (get!14505 lt!1468837))))))))

(assert (=> d!1221034 (= lt!1468920 e!2554421)))

(declare-fun c!707212 () Bool)

(assert (=> d!1221034 (= c!707212 ((_ is Nil!44454) (list!16335 (charsOf!4886 (_1!24607 (get!14505 lt!1468837))))))))

(assert (=> d!1221034 (= (++!11542 (list!16335 (charsOf!4886 (_1!24607 (get!14505 lt!1468837)))) (_2!24607 (get!14505 lt!1468837))) lt!1468920)))

(declare-fun b!4116833 () Bool)

(assert (=> b!4116833 (= e!2554421 (_2!24607 (get!14505 lt!1468837)))))

(declare-fun b!4116835 () Bool)

(declare-fun res!1681477 () Bool)

(assert (=> b!4116835 (=> (not res!1681477) (not e!2554422))))

(assert (=> b!4116835 (= res!1681477 (= (size!32900 lt!1468920) (+ (size!32900 (list!16335 (charsOf!4886 (_1!24607 (get!14505 lt!1468837))))) (size!32900 (_2!24607 (get!14505 lt!1468837))))))))

(assert (= (and d!1221034 c!707212) b!4116833))

(assert (= (and d!1221034 (not c!707212)) b!4116834))

(assert (= (and d!1221034 res!1681478) b!4116835))

(assert (= (and b!4116835 res!1681477) b!4116836))

(declare-fun m!4716595 () Bool)

(assert (=> b!4116834 m!4716595))

(declare-fun m!4716597 () Bool)

(assert (=> d!1221034 m!4716597))

(assert (=> d!1221034 m!4716255))

(declare-fun m!4716599 () Bool)

(assert (=> d!1221034 m!4716599))

(declare-fun m!4716601 () Bool)

(assert (=> d!1221034 m!4716601))

(declare-fun m!4716603 () Bool)

(assert (=> b!4116835 m!4716603))

(assert (=> b!4116835 m!4716255))

(declare-fun m!4716605 () Bool)

(assert (=> b!4116835 m!4716605))

(assert (=> b!4116835 m!4716271))

(assert (=> b!4116448 d!1221034))

(assert (=> b!4116448 d!1221024))

(assert (=> b!4116448 d!1221026))

(assert (=> b!4116448 d!1221002))

(declare-fun d!1221036 () Bool)

(assert (=> d!1221036 (= (isEmpty!26432 lt!1468837) (not ((_ is Some!9553) lt!1468837)))))

(assert (=> d!1220894 d!1221036))

(declare-fun d!1221038 () Bool)

(declare-fun e!2554427 () Bool)

(assert (=> d!1221038 e!2554427))

(declare-fun res!1681489 () Bool)

(assert (=> d!1221038 (=> res!1681489 e!2554427)))

(declare-fun lt!1468926 () Bool)

(assert (=> d!1221038 (= res!1681489 (not lt!1468926))))

(declare-fun e!2554429 () Bool)

(assert (=> d!1221038 (= lt!1468926 e!2554429)))

(declare-fun res!1681488 () Bool)

(assert (=> d!1221038 (=> res!1681488 e!2554429)))

(assert (=> d!1221038 (= res!1681488 ((_ is Nil!44454) input!3238))))

(assert (=> d!1221038 (= (isPrefix!4181 input!3238 input!3238) lt!1468926)))

(declare-fun b!4116849 () Bool)

(assert (=> b!4116849 (= e!2554427 (>= (size!32900 input!3238) (size!32900 input!3238)))))

(declare-fun b!4116846 () Bool)

(declare-fun e!2554428 () Bool)

(assert (=> b!4116846 (= e!2554429 e!2554428)))

(declare-fun res!1681486 () Bool)

(assert (=> b!4116846 (=> (not res!1681486) (not e!2554428))))

(assert (=> b!4116846 (= res!1681486 (not ((_ is Nil!44454) input!3238)))))

(declare-fun b!4116847 () Bool)

(declare-fun res!1681487 () Bool)

(assert (=> b!4116847 (=> (not res!1681487) (not e!2554428))))

(assert (=> b!4116847 (= res!1681487 (= (head!8672 input!3238) (head!8672 input!3238)))))

(declare-fun b!4116848 () Bool)

(assert (=> b!4116848 (= e!2554428 (isPrefix!4181 (tail!6407 input!3238) (tail!6407 input!3238)))))

(assert (= (and d!1221038 (not res!1681488)) b!4116846))

(assert (= (and b!4116846 res!1681486) b!4116847))

(assert (= (and b!4116847 res!1681487) b!4116848))

(assert (= (and d!1221038 (not res!1681489)) b!4116849))

(assert (=> b!4116849 m!4716239))

(assert (=> b!4116849 m!4716239))

(assert (=> b!4116847 m!4716395))

(assert (=> b!4116847 m!4716395))

(assert (=> b!4116848 m!4716241))

(assert (=> b!4116848 m!4716241))

(assert (=> b!4116848 m!4716241))

(assert (=> b!4116848 m!4716241))

(declare-fun m!4716607 () Bool)

(assert (=> b!4116848 m!4716607))

(assert (=> d!1220894 d!1221038))

(declare-fun d!1221040 () Bool)

(assert (=> d!1221040 (isPrefix!4181 input!3238 input!3238)))

(declare-fun lt!1468929 () Unit!63815)

(declare-fun choose!25158 (List!44578 List!44578) Unit!63815)

(assert (=> d!1221040 (= lt!1468929 (choose!25158 input!3238 input!3238))))

(assert (=> d!1221040 (= (lemmaIsPrefixRefl!2722 input!3238 input!3238) lt!1468929)))

(declare-fun bs!594592 () Bool)

(assert (= bs!594592 d!1221040))

(assert (=> bs!594592 m!4716275))

(declare-fun m!4716641 () Bool)

(assert (=> bs!594592 m!4716641))

(assert (=> d!1220894 d!1221040))

(declare-fun bs!594595 () Bool)

(declare-fun d!1221042 () Bool)

(assert (= bs!594595 (and d!1221042 d!1220978)))

(declare-fun lambda!128641 () Int)

(assert (=> bs!594595 (= lambda!128641 lambda!128632)))

(assert (=> d!1221042 true))

(declare-fun lt!1468934 () Bool)

(assert (=> d!1221042 (= lt!1468934 (forall!8446 rules!3756 lambda!128641))))

(declare-fun e!2554437 () Bool)

(assert (=> d!1221042 (= lt!1468934 e!2554437)))

(declare-fun res!1681495 () Bool)

(assert (=> d!1221042 (=> res!1681495 e!2554437)))

(assert (=> d!1221042 (= res!1681495 (not ((_ is Cons!44455) rules!3756)))))

(assert (=> d!1221042 (= (rulesValidInductive!2673 thiss!25645 rules!3756) lt!1468934)))

(declare-fun b!4116858 () Bool)

(declare-fun e!2554436 () Bool)

(assert (=> b!4116858 (= e!2554437 e!2554436)))

(declare-fun res!1681494 () Bool)

(assert (=> b!4116858 (=> (not res!1681494) (not e!2554436))))

(declare-fun ruleValid!3058 (LexerInterface!6835 Rule!14292) Bool)

(assert (=> b!4116858 (= res!1681494 (ruleValid!3058 thiss!25645 (h!49875 rules!3756)))))

(declare-fun b!4116859 () Bool)

(assert (=> b!4116859 (= e!2554436 (rulesValidInductive!2673 thiss!25645 (t!340402 rules!3756)))))

(assert (= (and d!1221042 (not res!1681495)) b!4116858))

(assert (= (and b!4116858 res!1681494) b!4116859))

(declare-fun m!4716663 () Bool)

(assert (=> d!1221042 m!4716663))

(declare-fun m!4716665 () Bool)

(assert (=> b!4116858 m!4716665))

(assert (=> b!4116859 m!4716545))

(assert (=> d!1220894 d!1221042))

(declare-fun b!4116995 () Bool)

(declare-fun res!1681578 () Bool)

(declare-fun e!2554518 () Bool)

(assert (=> b!4116995 (=> (not res!1681578) (not e!2554518))))

(declare-fun lt!1468977 () Option!9554)

(assert (=> b!4116995 (= res!1681578 (= (value!227065 (_1!24607 (get!14505 lt!1468977))) (apply!10319 (transformation!7246 (rule!10310 (_1!24607 (get!14505 lt!1468977)))) (seqFromList!5363 (originalCharacters!7742 (_1!24607 (get!14505 lt!1468977)))))))))

(declare-fun b!4116996 () Bool)

(declare-fun e!2554517 () Option!9554)

(assert (=> b!4116996 (= e!2554517 None!9553)))

(declare-fun b!4116997 () Bool)

(declare-fun res!1681573 () Bool)

(assert (=> b!4116997 (=> (not res!1681573) (not e!2554518))))

(assert (=> b!4116997 (= res!1681573 (= (rule!10310 (_1!24607 (get!14505 lt!1468977))) (h!49875 rules!3756)))))

(declare-fun b!4116998 () Bool)

(assert (=> b!4116998 (= e!2554518 (= (size!32899 (_1!24607 (get!14505 lt!1468977))) (size!32900 (originalCharacters!7742 (_1!24607 (get!14505 lt!1468977))))))))

(declare-fun b!4116999 () Bool)

(declare-fun e!2554516 () Bool)

(declare-datatypes ((tuple2!42950 0))(
  ( (tuple2!42951 (_1!24609 List!44578) (_2!24609 List!44578)) )
))
(declare-fun findLongestMatchInner!1481 (Regex!12151 List!44578 Int List!44578 List!44578 Int) tuple2!42950)

(assert (=> b!4116999 (= e!2554516 (matchR!5982 (regex!7246 (h!49875 rules!3756)) (_1!24609 (findLongestMatchInner!1481 (regex!7246 (h!49875 rules!3756)) Nil!44454 (size!32900 Nil!44454) input!3238 input!3238 (size!32900 input!3238)))))))

(declare-fun b!4117000 () Bool)

(declare-fun res!1681576 () Bool)

(assert (=> b!4117000 (=> (not res!1681576) (not e!2554518))))

(assert (=> b!4117000 (= res!1681576 (< (size!32900 (_2!24607 (get!14505 lt!1468977))) (size!32900 input!3238)))))

(declare-fun b!4117001 () Bool)

(declare-fun res!1681577 () Bool)

(assert (=> b!4117001 (=> (not res!1681577) (not e!2554518))))

(assert (=> b!4117001 (= res!1681577 (= (++!11542 (list!16335 (charsOf!4886 (_1!24607 (get!14505 lt!1468977)))) (_2!24607 (get!14505 lt!1468977))) input!3238))))

(declare-fun d!1221056 () Bool)

(declare-fun e!2554515 () Bool)

(assert (=> d!1221056 e!2554515))

(declare-fun res!1681572 () Bool)

(assert (=> d!1221056 (=> res!1681572 e!2554515)))

(assert (=> d!1221056 (= res!1681572 (isEmpty!26432 lt!1468977))))

(assert (=> d!1221056 (= lt!1468977 e!2554517)))

(declare-fun c!707245 () Bool)

(declare-fun lt!1468973 () tuple2!42950)

(assert (=> d!1221056 (= c!707245 (isEmpty!26429 (_1!24609 lt!1468973)))))

(declare-fun findLongestMatch!1394 (Regex!12151 List!44578) tuple2!42950)

(assert (=> d!1221056 (= lt!1468973 (findLongestMatch!1394 (regex!7246 (h!49875 rules!3756)) input!3238))))

(assert (=> d!1221056 (ruleValid!3058 thiss!25645 (h!49875 rules!3756))))

(assert (=> d!1221056 (= (maxPrefixOneRule!2993 thiss!25645 (h!49875 rules!3756) input!3238) lt!1468977)))

(declare-fun b!4117002 () Bool)

(assert (=> b!4117002 (= e!2554515 e!2554518)))

(declare-fun res!1681574 () Bool)

(assert (=> b!4117002 (=> (not res!1681574) (not e!2554518))))

(assert (=> b!4117002 (= res!1681574 (matchR!5982 (regex!7246 (h!49875 rules!3756)) (list!16335 (charsOf!4886 (_1!24607 (get!14505 lt!1468977))))))))

(declare-fun b!4117003 () Bool)

(declare-fun size!32902 (BalanceConc!26508) Int)

(assert (=> b!4117003 (= e!2554517 (Some!9553 (tuple2!42947 (Token!13423 (apply!10319 (transformation!7246 (h!49875 rules!3756)) (seqFromList!5363 (_1!24609 lt!1468973))) (h!49875 rules!3756) (size!32902 (seqFromList!5363 (_1!24609 lt!1468973))) (_1!24609 lt!1468973)) (_2!24609 lt!1468973))))))

(declare-fun lt!1468976 () Unit!63815)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1454 (Regex!12151 List!44578) Unit!63815)

(assert (=> b!4117003 (= lt!1468976 (longestMatchIsAcceptedByMatchOrIsEmpty!1454 (regex!7246 (h!49875 rules!3756)) input!3238))))

(declare-fun res!1681575 () Bool)

(assert (=> b!4117003 (= res!1681575 (isEmpty!26429 (_1!24609 (findLongestMatchInner!1481 (regex!7246 (h!49875 rules!3756)) Nil!44454 (size!32900 Nil!44454) input!3238 input!3238 (size!32900 input!3238)))))))

(assert (=> b!4117003 (=> res!1681575 e!2554516)))

(assert (=> b!4117003 e!2554516))

(declare-fun lt!1468974 () Unit!63815)

(assert (=> b!4117003 (= lt!1468974 lt!1468976)))

(declare-fun lt!1468975 () Unit!63815)

(assert (=> b!4117003 (= lt!1468975 (lemmaSemiInverse!2104 (transformation!7246 (h!49875 rules!3756)) (seqFromList!5363 (_1!24609 lt!1468973))))))

(assert (= (and d!1221056 c!707245) b!4116996))

(assert (= (and d!1221056 (not c!707245)) b!4117003))

(assert (= (and b!4117003 (not res!1681575)) b!4116999))

(assert (= (and d!1221056 (not res!1681572)) b!4117002))

(assert (= (and b!4117002 res!1681574) b!4117001))

(assert (= (and b!4117001 res!1681577) b!4117000))

(assert (= (and b!4117000 res!1681576) b!4116997))

(assert (= (and b!4116997 res!1681573) b!4116995))

(assert (= (and b!4116995 res!1681578) b!4116998))

(declare-fun m!4716805 () Bool)

(assert (=> b!4116997 m!4716805))

(declare-fun m!4716807 () Bool)

(assert (=> b!4116999 m!4716807))

(assert (=> b!4116999 m!4716239))

(assert (=> b!4116999 m!4716807))

(assert (=> b!4116999 m!4716239))

(declare-fun m!4716809 () Bool)

(assert (=> b!4116999 m!4716809))

(declare-fun m!4716811 () Bool)

(assert (=> b!4116999 m!4716811))

(assert (=> b!4116998 m!4716805))

(declare-fun m!4716813 () Bool)

(assert (=> b!4116998 m!4716813))

(assert (=> b!4116995 m!4716805))

(declare-fun m!4716815 () Bool)

(assert (=> b!4116995 m!4716815))

(assert (=> b!4116995 m!4716815))

(declare-fun m!4716817 () Bool)

(assert (=> b!4116995 m!4716817))

(declare-fun m!4716819 () Bool)

(assert (=> d!1221056 m!4716819))

(declare-fun m!4716821 () Bool)

(assert (=> d!1221056 m!4716821))

(declare-fun m!4716825 () Bool)

(assert (=> d!1221056 m!4716825))

(assert (=> d!1221056 m!4716665))

(assert (=> b!4117000 m!4716805))

(declare-fun m!4716829 () Bool)

(assert (=> b!4117000 m!4716829))

(assert (=> b!4117000 m!4716239))

(assert (=> b!4117002 m!4716805))

(declare-fun m!4716831 () Bool)

(assert (=> b!4117002 m!4716831))

(assert (=> b!4117002 m!4716831))

(declare-fun m!4716833 () Bool)

(assert (=> b!4117002 m!4716833))

(assert (=> b!4117002 m!4716833))

(declare-fun m!4716835 () Bool)

(assert (=> b!4117002 m!4716835))

(assert (=> b!4117003 m!4716807))

(declare-fun m!4716837 () Bool)

(assert (=> b!4117003 m!4716837))

(assert (=> b!4117003 m!4716837))

(declare-fun m!4716839 () Bool)

(assert (=> b!4117003 m!4716839))

(declare-fun m!4716841 () Bool)

(assert (=> b!4117003 m!4716841))

(assert (=> b!4117003 m!4716837))

(declare-fun m!4716843 () Bool)

(assert (=> b!4117003 m!4716843))

(assert (=> b!4117003 m!4716837))

(declare-fun m!4716845 () Bool)

(assert (=> b!4117003 m!4716845))

(assert (=> b!4117003 m!4716239))

(assert (=> b!4117003 m!4716807))

(assert (=> b!4117003 m!4716239))

(assert (=> b!4117003 m!4716809))

(declare-fun m!4716849 () Bool)

(assert (=> b!4117003 m!4716849))

(assert (=> b!4117001 m!4716805))

(assert (=> b!4117001 m!4716831))

(assert (=> b!4117001 m!4716831))

(assert (=> b!4117001 m!4716833))

(assert (=> b!4117001 m!4716833))

(declare-fun m!4716851 () Bool)

(assert (=> b!4117001 m!4716851))

(assert (=> bm!289849 d!1221056))

(declare-fun d!1221114 () Bool)

(assert (=> d!1221114 (= (inv!59038 (tag!8106 (h!49875 (t!340402 rules!3756)))) (= (mod (str.len (value!227064 (tag!8106 (h!49875 (t!340402 rules!3756))))) 2) 0))))

(assert (=> b!4116638 d!1221114))

(declare-fun d!1221116 () Bool)

(declare-fun res!1681587 () Bool)

(declare-fun e!2554530 () Bool)

(assert (=> d!1221116 (=> (not res!1681587) (not e!2554530))))

(assert (=> d!1221116 (= res!1681587 (semiInverseModEq!3126 (toChars!9753 (transformation!7246 (h!49875 (t!340402 rules!3756)))) (toValue!9894 (transformation!7246 (h!49875 (t!340402 rules!3756))))))))

(assert (=> d!1221116 (= (inv!59040 (transformation!7246 (h!49875 (t!340402 rules!3756)))) e!2554530)))

(declare-fun b!4117018 () Bool)

(assert (=> b!4117018 (= e!2554530 (equivClasses!3025 (toChars!9753 (transformation!7246 (h!49875 (t!340402 rules!3756)))) (toValue!9894 (transformation!7246 (h!49875 (t!340402 rules!3756))))))))

(assert (= (and d!1221116 res!1681587) b!4117018))

(declare-fun m!4716853 () Bool)

(assert (=> d!1221116 m!4716853))

(declare-fun m!4716855 () Bool)

(assert (=> b!4117018 m!4716855))

(assert (=> b!4116638 d!1221116))

(assert (=> b!4116451 d!1221024))

(assert (=> b!4116451 d!1221026))

(assert (=> b!4116451 d!1221002))

(assert (=> d!1220876 d!1221006))

(declare-fun d!1221118 () Bool)

(declare-fun res!1681596 () Bool)

(declare-fun e!2554538 () Bool)

(assert (=> d!1221118 (=> res!1681596 e!2554538)))

(assert (=> d!1221118 (= res!1681596 ((_ is Nil!44455) rules!3756))))

(assert (=> d!1221118 (= (noDuplicateTag!2917 thiss!25645 rules!3756 Nil!44457) e!2554538)))

(declare-fun b!4117027 () Bool)

(declare-fun e!2554539 () Bool)

(assert (=> b!4117027 (= e!2554538 e!2554539)))

(declare-fun res!1681597 () Bool)

(assert (=> b!4117027 (=> (not res!1681597) (not e!2554539))))

(declare-fun contains!8918 (List!44581 String!51130) Bool)

(assert (=> b!4117027 (= res!1681597 (not (contains!8918 Nil!44457 (tag!8106 (h!49875 rules!3756)))))))

(declare-fun b!4117028 () Bool)

(assert (=> b!4117028 (= e!2554539 (noDuplicateTag!2917 thiss!25645 (t!340402 rules!3756) (Cons!44457 (tag!8106 (h!49875 rules!3756)) Nil!44457)))))

(assert (= (and d!1221118 (not res!1681596)) b!4117027))

(assert (= (and b!4117027 res!1681597) b!4117028))

(declare-fun m!4716871 () Bool)

(assert (=> b!4117027 m!4716871))

(declare-fun m!4716873 () Bool)

(assert (=> b!4117028 m!4716873))

(assert (=> b!4116595 d!1221118))

(declare-fun d!1221130 () Bool)

(declare-fun lt!1468980 () List!44578)

(assert (=> d!1221130 (= (++!11542 (t!340401 p!2912) lt!1468980) (tail!6407 input!3238))))

(declare-fun e!2554541 () List!44578)

(assert (=> d!1221130 (= lt!1468980 e!2554541)))

(declare-fun c!707249 () Bool)

(assert (=> d!1221130 (= c!707249 ((_ is Cons!44454) (t!340401 p!2912)))))

(assert (=> d!1221130 (>= (size!32900 (tail!6407 input!3238)) (size!32900 (t!340401 p!2912)))))

(assert (=> d!1221130 (= (getSuffix!2510 (tail!6407 input!3238) (t!340401 p!2912)) lt!1468980)))

(declare-fun b!4117033 () Bool)

(assert (=> b!4117033 (= e!2554541 (getSuffix!2510 (tail!6407 (tail!6407 input!3238)) (t!340401 (t!340401 p!2912))))))

(declare-fun b!4117034 () Bool)

(assert (=> b!4117034 (= e!2554541 (tail!6407 input!3238))))

(assert (= (and d!1221130 c!707249) b!4117033))

(assert (= (and d!1221130 (not c!707249)) b!4117034))

(declare-fun m!4716875 () Bool)

(assert (=> d!1221130 m!4716875))

(assert (=> d!1221130 m!4716241))

(assert (=> d!1221130 m!4716461))

(assert (=> d!1221130 m!4716247))

(assert (=> b!4117033 m!4716241))

(assert (=> b!4117033 m!4716471))

(assert (=> b!4117033 m!4716471))

(declare-fun m!4716877 () Bool)

(assert (=> b!4117033 m!4716877))

(assert (=> b!4116417 d!1221130))

(assert (=> b!4116417 d!1220974))

(declare-fun bs!594616 () Bool)

(declare-fun d!1221132 () Bool)

(assert (= bs!594616 (and d!1221132 d!1220896)))

(declare-fun lambda!128649 () Int)

(assert (=> bs!594616 (= (and (= (toChars!9753 (transformation!7246 (h!49875 rules!3756))) (toChars!9753 (transformation!7246 r!4008))) (= (toValue!9894 (transformation!7246 (h!49875 rules!3756))) (toValue!9894 (transformation!7246 r!4008)))) (= lambda!128649 lambda!128617))))

(declare-fun bs!594617 () Bool)

(assert (= bs!594617 (and d!1221132 d!1220980)))

(assert (=> bs!594617 (= (and (= (toChars!9753 (transformation!7246 (h!49875 rules!3756))) (toChars!9753 (transformation!7246 r!4008))) (= (toValue!9894 (transformation!7246 (h!49875 rules!3756))) (toValue!9894 (transformation!7246 r!4008)))) (= lambda!128649 lambda!128635))))

(declare-fun bs!594618 () Bool)

(assert (= bs!594618 (and d!1221132 d!1220986)))

(assert (=> bs!594618 (= (and (= (toChars!9753 (transformation!7246 (h!49875 rules!3756))) (toChars!9753 (transformation!7246 rBis!149))) (= (toValue!9894 (transformation!7246 (h!49875 rules!3756))) (toValue!9894 (transformation!7246 rBis!149)))) (= lambda!128649 lambda!128636))))

(assert (=> d!1221132 true))

(assert (=> d!1221132 (< (dynLambda!18992 order!23381 (toChars!9753 (transformation!7246 (h!49875 rules!3756)))) (dynLambda!18991 order!23379 lambda!128649))))

(assert (=> d!1221132 true))

(assert (=> d!1221132 (< (dynLambda!18990 order!23377 (toValue!9894 (transformation!7246 (h!49875 rules!3756)))) (dynLambda!18991 order!23379 lambda!128649))))

(assert (=> d!1221132 (= (semiInverseModEq!3126 (toChars!9753 (transformation!7246 (h!49875 rules!3756))) (toValue!9894 (transformation!7246 (h!49875 rules!3756)))) (Forall!1544 lambda!128649))))

(declare-fun bs!594619 () Bool)

(assert (= bs!594619 d!1221132))

(declare-fun m!4716879 () Bool)

(assert (=> bs!594619 m!4716879))

(assert (=> d!1220938 d!1221132))

(declare-fun b!4117046 () Bool)

(declare-fun e!2554548 () Bool)

(declare-fun tp!1254138 () Bool)

(assert (=> b!4117046 (= e!2554548 (and tp_is_empty!21225 tp!1254138))))

(assert (=> b!4116628 (= tp!1254093 e!2554548)))

(assert (= (and b!4116628 ((_ is Cons!44454) (t!340401 (t!340401 input!3238)))) b!4117046))

(declare-fun b!4117053 () Bool)

(declare-fun e!2554550 () Bool)

(declare-fun tp!1254144 () Bool)

(assert (=> b!4117053 (= e!2554550 tp!1254144)))

(assert (=> b!4116641 (= tp!1254109 e!2554550)))

(declare-fun b!4117052 () Bool)

(declare-fun tp!1254147 () Bool)

(declare-fun tp!1254146 () Bool)

(assert (=> b!4117052 (= e!2554550 (and tp!1254147 tp!1254146))))

(declare-fun b!4117051 () Bool)

(assert (=> b!4117051 (= e!2554550 tp_is_empty!21225)))

(declare-fun b!4117054 () Bool)

(declare-fun tp!1254148 () Bool)

(declare-fun tp!1254145 () Bool)

(assert (=> b!4117054 (= e!2554550 (and tp!1254148 tp!1254145))))

(assert (= (and b!4116641 ((_ is ElementMatch!12151) (regOne!24814 (regex!7246 r!4008)))) b!4117051))

(assert (= (and b!4116641 ((_ is Concat!19628) (regOne!24814 (regex!7246 r!4008)))) b!4117052))

(assert (= (and b!4116641 ((_ is Star!12151) (regOne!24814 (regex!7246 r!4008)))) b!4117053))

(assert (= (and b!4116641 ((_ is Union!12151) (regOne!24814 (regex!7246 r!4008)))) b!4117054))

(declare-fun b!4117061 () Bool)

(declare-fun e!2554552 () Bool)

(declare-fun tp!1254154 () Bool)

(assert (=> b!4117061 (= e!2554552 tp!1254154)))

(assert (=> b!4116641 (= tp!1254108 e!2554552)))

(declare-fun b!4117060 () Bool)

(declare-fun tp!1254157 () Bool)

(declare-fun tp!1254156 () Bool)

(assert (=> b!4117060 (= e!2554552 (and tp!1254157 tp!1254156))))

(declare-fun b!4117059 () Bool)

(assert (=> b!4117059 (= e!2554552 tp_is_empty!21225)))

(declare-fun b!4117062 () Bool)

(declare-fun tp!1254158 () Bool)

(declare-fun tp!1254155 () Bool)

(assert (=> b!4117062 (= e!2554552 (and tp!1254158 tp!1254155))))

(assert (= (and b!4116641 ((_ is ElementMatch!12151) (regTwo!24814 (regex!7246 r!4008)))) b!4117059))

(assert (= (and b!4116641 ((_ is Concat!19628) (regTwo!24814 (regex!7246 r!4008)))) b!4117060))

(assert (= (and b!4116641 ((_ is Star!12151) (regTwo!24814 (regex!7246 r!4008)))) b!4117061))

(assert (= (and b!4116641 ((_ is Union!12151) (regTwo!24814 (regex!7246 r!4008)))) b!4117062))

(declare-fun b!4117069 () Bool)

(declare-fun e!2554554 () Bool)

(declare-fun tp!1254164 () Bool)

(assert (=> b!4117069 (= e!2554554 tp!1254164)))

(assert (=> b!4116642 (= tp!1254106 e!2554554)))

(declare-fun b!4117068 () Bool)

(declare-fun tp!1254167 () Bool)

(declare-fun tp!1254166 () Bool)

(assert (=> b!4117068 (= e!2554554 (and tp!1254167 tp!1254166))))

(declare-fun b!4117067 () Bool)

(assert (=> b!4117067 (= e!2554554 tp_is_empty!21225)))

(declare-fun b!4117070 () Bool)

(declare-fun tp!1254168 () Bool)

(declare-fun tp!1254165 () Bool)

(assert (=> b!4117070 (= e!2554554 (and tp!1254168 tp!1254165))))

(assert (= (and b!4116642 ((_ is ElementMatch!12151) (reg!12480 (regex!7246 r!4008)))) b!4117067))

(assert (= (and b!4116642 ((_ is Concat!19628) (reg!12480 (regex!7246 r!4008)))) b!4117068))

(assert (= (and b!4116642 ((_ is Star!12151) (reg!12480 (regex!7246 r!4008)))) b!4117069))

(assert (= (and b!4116642 ((_ is Union!12151) (reg!12480 (regex!7246 r!4008)))) b!4117070))

(declare-fun b!4117077 () Bool)

(declare-fun e!2554556 () Bool)

(declare-fun tp!1254174 () Bool)

(assert (=> b!4117077 (= e!2554556 tp!1254174)))

(assert (=> b!4116643 (= tp!1254110 e!2554556)))

(declare-fun b!4117076 () Bool)

(declare-fun tp!1254177 () Bool)

(declare-fun tp!1254176 () Bool)

(assert (=> b!4117076 (= e!2554556 (and tp!1254177 tp!1254176))))

(declare-fun b!4117075 () Bool)

(assert (=> b!4117075 (= e!2554556 tp_is_empty!21225)))

(declare-fun b!4117078 () Bool)

(declare-fun tp!1254178 () Bool)

(declare-fun tp!1254175 () Bool)

(assert (=> b!4117078 (= e!2554556 (and tp!1254178 tp!1254175))))

(assert (= (and b!4116643 ((_ is ElementMatch!12151) (regOne!24815 (regex!7246 r!4008)))) b!4117075))

(assert (= (and b!4116643 ((_ is Concat!19628) (regOne!24815 (regex!7246 r!4008)))) b!4117076))

(assert (= (and b!4116643 ((_ is Star!12151) (regOne!24815 (regex!7246 r!4008)))) b!4117077))

(assert (= (and b!4116643 ((_ is Union!12151) (regOne!24815 (regex!7246 r!4008)))) b!4117078))

(declare-fun b!4117085 () Bool)

(declare-fun e!2554558 () Bool)

(declare-fun tp!1254184 () Bool)

(assert (=> b!4117085 (= e!2554558 tp!1254184)))

(assert (=> b!4116643 (= tp!1254107 e!2554558)))

(declare-fun b!4117084 () Bool)

(declare-fun tp!1254187 () Bool)

(declare-fun tp!1254186 () Bool)

(assert (=> b!4117084 (= e!2554558 (and tp!1254187 tp!1254186))))

(declare-fun b!4117083 () Bool)

(assert (=> b!4117083 (= e!2554558 tp_is_empty!21225)))

(declare-fun b!4117086 () Bool)

(declare-fun tp!1254188 () Bool)

(declare-fun tp!1254185 () Bool)

(assert (=> b!4117086 (= e!2554558 (and tp!1254188 tp!1254185))))

(assert (= (and b!4116643 ((_ is ElementMatch!12151) (regTwo!24815 (regex!7246 r!4008)))) b!4117083))

(assert (= (and b!4116643 ((_ is Concat!19628) (regTwo!24815 (regex!7246 r!4008)))) b!4117084))

(assert (= (and b!4116643 ((_ is Star!12151) (regTwo!24815 (regex!7246 r!4008)))) b!4117085))

(assert (= (and b!4116643 ((_ is Union!12151) (regTwo!24815 (regex!7246 r!4008)))) b!4117086))

(declare-fun b!4117093 () Bool)

(declare-fun e!2554560 () Bool)

(declare-fun tp!1254194 () Bool)

(assert (=> b!4117093 (= e!2554560 tp!1254194)))

(assert (=> b!4116622 (= tp!1254086 e!2554560)))

(declare-fun b!4117092 () Bool)

(declare-fun tp!1254197 () Bool)

(declare-fun tp!1254196 () Bool)

(assert (=> b!4117092 (= e!2554560 (and tp!1254197 tp!1254196))))

(declare-fun b!4117091 () Bool)

(assert (=> b!4117091 (= e!2554560 tp_is_empty!21225)))

(declare-fun b!4117094 () Bool)

(declare-fun tp!1254198 () Bool)

(declare-fun tp!1254195 () Bool)

(assert (=> b!4117094 (= e!2554560 (and tp!1254198 tp!1254195))))

(assert (= (and b!4116622 ((_ is ElementMatch!12151) (reg!12480 (regex!7246 rBis!149)))) b!4117091))

(assert (= (and b!4116622 ((_ is Concat!19628) (reg!12480 (regex!7246 rBis!149)))) b!4117092))

(assert (= (and b!4116622 ((_ is Star!12151) (reg!12480 (regex!7246 rBis!149)))) b!4117093))

(assert (= (and b!4116622 ((_ is Union!12151) (reg!12480 (regex!7246 rBis!149)))) b!4117094))

(declare-fun b!4117101 () Bool)

(declare-fun b_free!116107 () Bool)

(declare-fun b_next!116811 () Bool)

(assert (=> b!4117101 (= b_free!116107 (not b_next!116811))))

(declare-fun t!340478 () Bool)

(declare-fun tb!247119 () Bool)

(assert (=> (and b!4117101 (= (toValue!9894 (transformation!7246 (h!49875 (t!340402 (t!340402 rules!3756))))) (toValue!9894 (transformation!7246 r!4008))) t!340478) tb!247119))

(declare-fun result!300180 () Bool)

(assert (= result!300180 result!300096))

(assert (=> d!1220886 t!340478))

(assert (=> d!1220896 t!340478))

(declare-fun tb!247121 () Bool)

(declare-fun t!340480 () Bool)

(assert (=> (and b!4117101 (= (toValue!9894 (transformation!7246 (h!49875 (t!340402 (t!340402 rules!3756))))) (toValue!9894 (transformation!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837)))))) t!340480) tb!247121))

(declare-fun result!300182 () Bool)

(assert (= result!300182 result!300140))

(assert (=> d!1221018 t!340480))

(declare-fun b_and!318149 () Bool)

(declare-fun tp!1254206 () Bool)

(assert (=> b!4117101 (= tp!1254206 (and (=> t!340478 result!300180) (=> t!340480 result!300182) b_and!318149))))

(declare-fun b_free!116109 () Bool)

(declare-fun b_next!116813 () Bool)

(assert (=> b!4117101 (= b_free!116109 (not b_next!116813))))

(declare-fun t!340482 () Bool)

(declare-fun tb!247123 () Bool)

(assert (=> (and b!4117101 (= (toChars!9753 (transformation!7246 (h!49875 (t!340402 (t!340402 rules!3756))))) (toChars!9753 (transformation!7246 r!4008))) t!340482) tb!247123))

(declare-fun result!300186 () Bool)

(assert (= result!300186 result!300122))

(assert (=> d!1220896 t!340482))

(declare-fun t!340484 () Bool)

(declare-fun tb!247125 () Bool)

(assert (=> (and b!4117101 (= (toChars!9753 (transformation!7246 (h!49875 (t!340402 (t!340402 rules!3756))))) (toChars!9753 (transformation!7246 (rule!10310 (_1!24607 (get!14505 lt!1468837)))))) t!340484) tb!247125))

(declare-fun result!300188 () Bool)

(assert (= result!300188 result!300148))

(assert (=> d!1221026 t!340484))

(declare-fun b_and!318151 () Bool)

(declare-fun tp!1254207 () Bool)

(assert (=> b!4117101 (= tp!1254207 (and (=> t!340482 result!300186) (=> t!340484 result!300188) b_and!318151))))

(declare-fun e!2554564 () Bool)

(assert (=> b!4117101 (= e!2554564 (and tp!1254206 tp!1254207))))

(declare-fun tp!1254205 () Bool)

(declare-fun b!4117100 () Bool)

(declare-fun e!2554562 () Bool)

(assert (=> b!4117100 (= e!2554562 (and tp!1254205 (inv!59038 (tag!8106 (h!49875 (t!340402 (t!340402 rules!3756))))) (inv!59040 (transformation!7246 (h!49875 (t!340402 (t!340402 rules!3756))))) e!2554564))))

(declare-fun b!4117099 () Bool)

(declare-fun e!2554563 () Bool)

(declare-fun tp!1254204 () Bool)

(assert (=> b!4117099 (= e!2554563 (and e!2554562 tp!1254204))))

(assert (=> b!4116637 (= tp!1254102 e!2554563)))

(assert (= b!4117100 b!4117101))

(assert (= b!4117099 b!4117100))

(assert (= (and b!4116637 ((_ is Cons!44455) (t!340402 (t!340402 rules!3756)))) b!4117099))

(declare-fun m!4716885 () Bool)

(assert (=> b!4117100 m!4716885))

(declare-fun m!4716887 () Bool)

(assert (=> b!4117100 m!4716887))

(declare-fun tp!1254250 () Bool)

(declare-fun tp!1254249 () Bool)

(declare-fun e!2554582 () Bool)

(declare-fun b!4117142 () Bool)

(assert (=> b!4117142 (= e!2554582 (and (inv!59043 (left!33310 (c!707140 (dynLambda!18993 (toChars!9753 (transformation!7246 r!4008)) (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810))))) tp!1254250 (inv!59043 (right!33640 (c!707140 (dynLambda!18993 (toChars!9753 (transformation!7246 r!4008)) (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810))))) tp!1254249))))

(declare-fun b!4117144 () Bool)

(declare-fun e!2554583 () Bool)

(declare-fun tp!1254251 () Bool)

(assert (=> b!4117144 (= e!2554583 tp!1254251)))

(declare-fun b!4117143 () Bool)

(declare-fun inv!59049 (IArray!26919) Bool)

(assert (=> b!4117143 (= e!2554582 (and (inv!59049 (xs!16763 (c!707140 (dynLambda!18993 (toChars!9753 (transformation!7246 r!4008)) (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810))))) e!2554583))))

(assert (=> b!4116592 (= tp!1254075 (and (inv!59043 (c!707140 (dynLambda!18993 (toChars!9753 (transformation!7246 r!4008)) (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810)))) e!2554582))))

(assert (= (and b!4116592 ((_ is Node!13457) (c!707140 (dynLambda!18993 (toChars!9753 (transformation!7246 r!4008)) (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810))))) b!4117142))

(assert (= b!4117143 b!4117144))

(assert (= (and b!4116592 ((_ is Leaf!20795) (c!707140 (dynLambda!18993 (toChars!9753 (transformation!7246 r!4008)) (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810))))) b!4117143))

(declare-fun m!4716895 () Bool)

(assert (=> b!4117142 m!4716895))

(declare-fun m!4716897 () Bool)

(assert (=> b!4117142 m!4716897))

(declare-fun m!4716899 () Bool)

(assert (=> b!4117143 m!4716899))

(assert (=> b!4116592 m!4716369))

(declare-fun b!4117152 () Bool)

(declare-fun e!2554586 () Bool)

(declare-fun tp!1254258 () Bool)

(assert (=> b!4117152 (= e!2554586 tp!1254258)))

(assert (=> b!4116646 (= tp!1254115 e!2554586)))

(declare-fun b!4117151 () Bool)

(declare-fun tp!1254261 () Bool)

(declare-fun tp!1254260 () Bool)

(assert (=> b!4117151 (= e!2554586 (and tp!1254261 tp!1254260))))

(declare-fun b!4117150 () Bool)

(assert (=> b!4117150 (= e!2554586 tp_is_empty!21225)))

(declare-fun b!4117153 () Bool)

(declare-fun tp!1254262 () Bool)

(declare-fun tp!1254259 () Bool)

(assert (=> b!4117153 (= e!2554586 (and tp!1254262 tp!1254259))))

(assert (= (and b!4116646 ((_ is ElementMatch!12151) (regOne!24814 (regex!7246 (h!49875 rules!3756))))) b!4117150))

(assert (= (and b!4116646 ((_ is Concat!19628) (regOne!24814 (regex!7246 (h!49875 rules!3756))))) b!4117151))

(assert (= (and b!4116646 ((_ is Star!12151) (regOne!24814 (regex!7246 (h!49875 rules!3756))))) b!4117152))

(assert (= (and b!4116646 ((_ is Union!12151) (regOne!24814 (regex!7246 (h!49875 rules!3756))))) b!4117153))

(declare-fun b!4117156 () Bool)

(declare-fun e!2554587 () Bool)

(declare-fun tp!1254263 () Bool)

(assert (=> b!4117156 (= e!2554587 tp!1254263)))

(assert (=> b!4116646 (= tp!1254114 e!2554587)))

(declare-fun b!4117155 () Bool)

(declare-fun tp!1254266 () Bool)

(declare-fun tp!1254265 () Bool)

(assert (=> b!4117155 (= e!2554587 (and tp!1254266 tp!1254265))))

(declare-fun b!4117154 () Bool)

(assert (=> b!4117154 (= e!2554587 tp_is_empty!21225)))

(declare-fun b!4117157 () Bool)

(declare-fun tp!1254267 () Bool)

(declare-fun tp!1254264 () Bool)

(assert (=> b!4117157 (= e!2554587 (and tp!1254267 tp!1254264))))

(assert (= (and b!4116646 ((_ is ElementMatch!12151) (regTwo!24814 (regex!7246 (h!49875 rules!3756))))) b!4117154))

(assert (= (and b!4116646 ((_ is Concat!19628) (regTwo!24814 (regex!7246 (h!49875 rules!3756))))) b!4117155))

(assert (= (and b!4116646 ((_ is Star!12151) (regTwo!24814 (regex!7246 (h!49875 rules!3756))))) b!4117156))

(assert (= (and b!4116646 ((_ is Union!12151) (regTwo!24814 (regex!7246 (h!49875 rules!3756))))) b!4117157))

(declare-fun b!4117160 () Bool)

(declare-fun e!2554588 () Bool)

(declare-fun tp!1254268 () Bool)

(assert (=> b!4117160 (= e!2554588 tp!1254268)))

(assert (=> b!4116621 (= tp!1254089 e!2554588)))

(declare-fun b!4117159 () Bool)

(declare-fun tp!1254271 () Bool)

(declare-fun tp!1254270 () Bool)

(assert (=> b!4117159 (= e!2554588 (and tp!1254271 tp!1254270))))

(declare-fun b!4117158 () Bool)

(assert (=> b!4117158 (= e!2554588 tp_is_empty!21225)))

(declare-fun b!4117161 () Bool)

(declare-fun tp!1254272 () Bool)

(declare-fun tp!1254269 () Bool)

(assert (=> b!4117161 (= e!2554588 (and tp!1254272 tp!1254269))))

(assert (= (and b!4116621 ((_ is ElementMatch!12151) (regOne!24814 (regex!7246 rBis!149)))) b!4117158))

(assert (= (and b!4116621 ((_ is Concat!19628) (regOne!24814 (regex!7246 rBis!149)))) b!4117159))

(assert (= (and b!4116621 ((_ is Star!12151) (regOne!24814 (regex!7246 rBis!149)))) b!4117160))

(assert (= (and b!4116621 ((_ is Union!12151) (regOne!24814 (regex!7246 rBis!149)))) b!4117161))

(declare-fun b!4117164 () Bool)

(declare-fun e!2554589 () Bool)

(declare-fun tp!1254273 () Bool)

(assert (=> b!4117164 (= e!2554589 tp!1254273)))

(assert (=> b!4116621 (= tp!1254088 e!2554589)))

(declare-fun b!4117163 () Bool)

(declare-fun tp!1254276 () Bool)

(declare-fun tp!1254275 () Bool)

(assert (=> b!4117163 (= e!2554589 (and tp!1254276 tp!1254275))))

(declare-fun b!4117162 () Bool)

(assert (=> b!4117162 (= e!2554589 tp_is_empty!21225)))

(declare-fun b!4117165 () Bool)

(declare-fun tp!1254277 () Bool)

(declare-fun tp!1254274 () Bool)

(assert (=> b!4117165 (= e!2554589 (and tp!1254277 tp!1254274))))

(assert (= (and b!4116621 ((_ is ElementMatch!12151) (regTwo!24814 (regex!7246 rBis!149)))) b!4117162))

(assert (= (and b!4116621 ((_ is Concat!19628) (regTwo!24814 (regex!7246 rBis!149)))) b!4117163))

(assert (= (and b!4116621 ((_ is Star!12151) (regTwo!24814 (regex!7246 rBis!149)))) b!4117164))

(assert (= (and b!4116621 ((_ is Union!12151) (regTwo!24814 (regex!7246 rBis!149)))) b!4117165))

(declare-fun b!4117168 () Bool)

(declare-fun e!2554590 () Bool)

(declare-fun tp!1254278 () Bool)

(assert (=> b!4117168 (= e!2554590 tp!1254278)))

(assert (=> b!4116648 (= tp!1254116 e!2554590)))

(declare-fun b!4117167 () Bool)

(declare-fun tp!1254281 () Bool)

(declare-fun tp!1254280 () Bool)

(assert (=> b!4117167 (= e!2554590 (and tp!1254281 tp!1254280))))

(declare-fun b!4117166 () Bool)

(assert (=> b!4117166 (= e!2554590 tp_is_empty!21225)))

(declare-fun b!4117169 () Bool)

(declare-fun tp!1254282 () Bool)

(declare-fun tp!1254279 () Bool)

(assert (=> b!4117169 (= e!2554590 (and tp!1254282 tp!1254279))))

(assert (= (and b!4116648 ((_ is ElementMatch!12151) (regOne!24815 (regex!7246 (h!49875 rules!3756))))) b!4117166))

(assert (= (and b!4116648 ((_ is Concat!19628) (regOne!24815 (regex!7246 (h!49875 rules!3756))))) b!4117167))

(assert (= (and b!4116648 ((_ is Star!12151) (regOne!24815 (regex!7246 (h!49875 rules!3756))))) b!4117168))

(assert (= (and b!4116648 ((_ is Union!12151) (regOne!24815 (regex!7246 (h!49875 rules!3756))))) b!4117169))

(declare-fun b!4117172 () Bool)

(declare-fun e!2554591 () Bool)

(declare-fun tp!1254283 () Bool)

(assert (=> b!4117172 (= e!2554591 tp!1254283)))

(assert (=> b!4116648 (= tp!1254113 e!2554591)))

(declare-fun b!4117171 () Bool)

(declare-fun tp!1254286 () Bool)

(declare-fun tp!1254285 () Bool)

(assert (=> b!4117171 (= e!2554591 (and tp!1254286 tp!1254285))))

(declare-fun b!4117170 () Bool)

(assert (=> b!4117170 (= e!2554591 tp_is_empty!21225)))

(declare-fun b!4117173 () Bool)

(declare-fun tp!1254287 () Bool)

(declare-fun tp!1254284 () Bool)

(assert (=> b!4117173 (= e!2554591 (and tp!1254287 tp!1254284))))

(assert (= (and b!4116648 ((_ is ElementMatch!12151) (regTwo!24815 (regex!7246 (h!49875 rules!3756))))) b!4117170))

(assert (= (and b!4116648 ((_ is Concat!19628) (regTwo!24815 (regex!7246 (h!49875 rules!3756))))) b!4117171))

(assert (= (and b!4116648 ((_ is Star!12151) (regTwo!24815 (regex!7246 (h!49875 rules!3756))))) b!4117172))

(assert (= (and b!4116648 ((_ is Union!12151) (regTwo!24815 (regex!7246 (h!49875 rules!3756))))) b!4117173))

(declare-fun b!4117176 () Bool)

(declare-fun e!2554592 () Bool)

(declare-fun tp!1254288 () Bool)

(assert (=> b!4117176 (= e!2554592 tp!1254288)))

(assert (=> b!4116623 (= tp!1254090 e!2554592)))

(declare-fun b!4117175 () Bool)

(declare-fun tp!1254291 () Bool)

(declare-fun tp!1254290 () Bool)

(assert (=> b!4117175 (= e!2554592 (and tp!1254291 tp!1254290))))

(declare-fun b!4117174 () Bool)

(assert (=> b!4117174 (= e!2554592 tp_is_empty!21225)))

(declare-fun b!4117177 () Bool)

(declare-fun tp!1254292 () Bool)

(declare-fun tp!1254289 () Bool)

(assert (=> b!4117177 (= e!2554592 (and tp!1254292 tp!1254289))))

(assert (= (and b!4116623 ((_ is ElementMatch!12151) (regOne!24815 (regex!7246 rBis!149)))) b!4117174))

(assert (= (and b!4116623 ((_ is Concat!19628) (regOne!24815 (regex!7246 rBis!149)))) b!4117175))

(assert (= (and b!4116623 ((_ is Star!12151) (regOne!24815 (regex!7246 rBis!149)))) b!4117176))

(assert (= (and b!4116623 ((_ is Union!12151) (regOne!24815 (regex!7246 rBis!149)))) b!4117177))

(declare-fun b!4117180 () Bool)

(declare-fun e!2554593 () Bool)

(declare-fun tp!1254293 () Bool)

(assert (=> b!4117180 (= e!2554593 tp!1254293)))

(assert (=> b!4116623 (= tp!1254087 e!2554593)))

(declare-fun b!4117179 () Bool)

(declare-fun tp!1254296 () Bool)

(declare-fun tp!1254295 () Bool)

(assert (=> b!4117179 (= e!2554593 (and tp!1254296 tp!1254295))))

(declare-fun b!4117178 () Bool)

(assert (=> b!4117178 (= e!2554593 tp_is_empty!21225)))

(declare-fun b!4117181 () Bool)

(declare-fun tp!1254297 () Bool)

(declare-fun tp!1254294 () Bool)

(assert (=> b!4117181 (= e!2554593 (and tp!1254297 tp!1254294))))

(assert (= (and b!4116623 ((_ is ElementMatch!12151) (regTwo!24815 (regex!7246 rBis!149)))) b!4117178))

(assert (= (and b!4116623 ((_ is Concat!19628) (regTwo!24815 (regex!7246 rBis!149)))) b!4117179))

(assert (= (and b!4116623 ((_ is Star!12151) (regTwo!24815 (regex!7246 rBis!149)))) b!4117180))

(assert (= (and b!4116623 ((_ is Union!12151) (regTwo!24815 (regex!7246 rBis!149)))) b!4117181))

(declare-fun b!4117184 () Bool)

(declare-fun e!2554594 () Bool)

(declare-fun tp!1254298 () Bool)

(assert (=> b!4117184 (= e!2554594 tp!1254298)))

(assert (=> b!4116638 (= tp!1254103 e!2554594)))

(declare-fun b!4117183 () Bool)

(declare-fun tp!1254301 () Bool)

(declare-fun tp!1254300 () Bool)

(assert (=> b!4117183 (= e!2554594 (and tp!1254301 tp!1254300))))

(declare-fun b!4117182 () Bool)

(assert (=> b!4117182 (= e!2554594 tp_is_empty!21225)))

(declare-fun b!4117185 () Bool)

(declare-fun tp!1254302 () Bool)

(declare-fun tp!1254299 () Bool)

(assert (=> b!4117185 (= e!2554594 (and tp!1254302 tp!1254299))))

(assert (= (and b!4116638 ((_ is ElementMatch!12151) (regex!7246 (h!49875 (t!340402 rules!3756))))) b!4117182))

(assert (= (and b!4116638 ((_ is Concat!19628) (regex!7246 (h!49875 (t!340402 rules!3756))))) b!4117183))

(assert (= (and b!4116638 ((_ is Star!12151) (regex!7246 (h!49875 (t!340402 rules!3756))))) b!4117184))

(assert (= (and b!4116638 ((_ is Union!12151) (regex!7246 (h!49875 (t!340402 rules!3756))))) b!4117185))

(declare-fun b!4117188 () Bool)

(declare-fun e!2554595 () Bool)

(declare-fun tp!1254303 () Bool)

(assert (=> b!4117188 (= e!2554595 tp!1254303)))

(assert (=> b!4116647 (= tp!1254112 e!2554595)))

(declare-fun b!4117187 () Bool)

(declare-fun tp!1254306 () Bool)

(declare-fun tp!1254305 () Bool)

(assert (=> b!4117187 (= e!2554595 (and tp!1254306 tp!1254305))))

(declare-fun b!4117186 () Bool)

(assert (=> b!4117186 (= e!2554595 tp_is_empty!21225)))

(declare-fun b!4117189 () Bool)

(declare-fun tp!1254307 () Bool)

(declare-fun tp!1254304 () Bool)

(assert (=> b!4117189 (= e!2554595 (and tp!1254307 tp!1254304))))

(assert (= (and b!4116647 ((_ is ElementMatch!12151) (reg!12480 (regex!7246 (h!49875 rules!3756))))) b!4117186))

(assert (= (and b!4116647 ((_ is Concat!19628) (reg!12480 (regex!7246 (h!49875 rules!3756))))) b!4117187))

(assert (= (and b!4116647 ((_ is Star!12151) (reg!12480 (regex!7246 (h!49875 rules!3756))))) b!4117188))

(assert (= (and b!4116647 ((_ is Union!12151) (reg!12480 (regex!7246 (h!49875 rules!3756))))) b!4117189))

(declare-fun b!4117190 () Bool)

(declare-fun e!2554596 () Bool)

(declare-fun tp!1254308 () Bool)

(assert (=> b!4117190 (= e!2554596 (and tp_is_empty!21225 tp!1254308))))

(assert (=> b!4116644 (= tp!1254111 e!2554596)))

(assert (= (and b!4116644 ((_ is Cons!44454) (t!340401 (t!340401 p!2912)))) b!4117190))

(declare-fun b_lambda!120809 () Bool)

(assert (= b_lambda!120791 (or d!1220896 b_lambda!120809)))

(declare-fun bs!594621 () Bool)

(declare-fun d!1221136 () Bool)

(assert (= bs!594621 (and d!1221136 d!1220896)))

(assert (=> bs!594621 (= (dynLambda!18996 lambda!128617 lt!1468810) (= (list!16335 (dynLambda!18993 (toChars!9753 (transformation!7246 r!4008)) (dynLambda!18989 (toValue!9894 (transformation!7246 r!4008)) lt!1468810))) (list!16335 lt!1468810)))))

(declare-fun b_lambda!120811 () Bool)

(assert (=> (not b_lambda!120811) (not bs!594621)))

(assert (=> bs!594621 t!340428))

(declare-fun b_and!318173 () Bool)

(assert (= b_and!318123 (and (=> t!340428 result!300126) b_and!318173)))

(assert (=> bs!594621 t!340430))

(declare-fun b_and!318175 () Bool)

(assert (= b_and!318125 (and (=> t!340430 result!300128) b_and!318175)))

(assert (=> bs!594621 t!340434))

(declare-fun b_and!318177 () Bool)

(assert (= b_and!318127 (and (=> t!340434 result!300138) b_and!318177)))

(assert (=> bs!594621 t!340482))

(declare-fun b_and!318179 () Bool)

(assert (= b_and!318151 (and (=> t!340482 result!300186) b_and!318179)))

(assert (=> bs!594621 t!340426))

(declare-fun b_and!318181 () Bool)

(assert (= b_and!318121 (and (=> t!340426 result!300122) b_and!318181)))

(declare-fun b_lambda!120813 () Bool)

(assert (=> (not b_lambda!120813) (not bs!594621)))

(assert (=> bs!594621 t!340478))

(declare-fun b_and!318183 () Bool)

(assert (= b_and!318149 (and (=> t!340478 result!300180) b_and!318183)))

(assert (=> bs!594621 t!340412))

(declare-fun b_and!318185 () Bool)

(assert (= b_and!318115 (and (=> t!340412 result!300100) b_and!318185)))

(assert (=> bs!594621 t!340432))

(declare-fun b_and!318187 () Bool)

(assert (= b_and!318119 (and (=> t!340432 result!300136) b_and!318187)))

(assert (=> bs!594621 t!340414))

(declare-fun b_and!318189 () Bool)

(assert (= b_and!318117 (and (=> t!340414 result!300102) b_and!318189)))

(assert (=> bs!594621 t!340410))

(declare-fun b_and!318191 () Bool)

(assert (= b_and!318113 (and (=> t!340410 result!300096) b_and!318191)))

(assert (=> bs!594621 m!4716235))

(assert (=> bs!594621 m!4716373))

(assert (=> bs!594621 m!4716373))

(assert (=> bs!594621 m!4716377))

(assert (=> bs!594621 m!4716375))

(assert (=> bs!594621 m!4716235))

(assert (=> d!1220998 d!1221136))

(check-sat (not d!1220968) (not b_lambda!120793) (not b!4117177) b_and!318181 (not b!4116806) (not b!4117085) (not b_lambda!120789) (not d!1221014) b_and!318177 (not b!4116830) (not b_next!116813) (not d!1221042) (not b!4117000) (not b!4117094) (not d!1220976) (not d!1221026) (not b!4117028) (not b!4116832) (not b!4117053) (not d!1221030) (not d!1220962) (not b!4117180) (not b!4117185) (not b!4117164) b_and!318173 (not b!4117151) (not b!4117018) (not d!1221012) (not d!1221040) (not b_next!116795) (not b_next!116805) (not b!4116732) (not b!4117171) (not d!1221004) (not b!4117163) (not b!4117069) (not tb!247087) b_and!318183 (not b_lambda!120795) (not b!4116704) (not bm!289867) (not b!4116826) (not tb!247079) (not b_lambda!120809) (not b!4117173) (not b!4116835) (not b!4116811) (not b!4116592) (not b_next!116803) (not b!4117187) (not d!1221028) (not b!4116749) (not b!4116828) (not b!4117062) (not b!4117175) (not b!4116859) (not b!4116809) (not d!1221130) (not b!4116752) (not b!4117076) (not d!1221132) (not b!4116808) (not b!4117176) (not b!4117190) (not d!1220960) (not b!4116687) (not b!4117152) b_and!318187 (not b!4117169) (not b!4116705) (not b!4117060) (not b!4116995) (not b!4117181) (not b!4116729) (not b!4117188) b_and!318185 (not b!4117165) (not b!4117054) (not d!1221034) (not d!1221116) (not b!4117092) (not b!4116702) (not b!4116750) (not b_lambda!120811) (not b_next!116811) (not bm!289865) (not b!4117001) (not b!4116743) (not b!4117078) (not b!4116847) (not b!4117161) (not b!4117159) (not b!4117052) (not b!4116746) (not bm!289868) (not b!4116721) (not b!4117061) (not d!1220978) (not d!1220992) (not b!4116756) (not b!4117153) (not d!1220998) (not b!4116751) (not b!4117077) (not b!4116688) (not b!4117084) (not b!4116723) (not b_next!116797) (not b!4117093) (not b!4117027) (not b_lambda!120787) (not b!4116834) (not b!4117143) (not b_next!116793) (not b!4117156) (not bm!289874) (not b!4116858) (not d!1220996) (not b!4117100) (not b!4117179) (not b!4117167) (not b!4116849) (not b!4117046) (not b!4116706) (not b!4116694) (not d!1221020) b_and!318191 (not b!4117099) (not b!4116691) (not b!4116754) (not b!4116848) (not b_lambda!120785) (not b!4117002) (not d!1220986) (not b!4116747) (not b!4117144) (not b!4117142) b_and!318179 (not b!4116719) (not d!1221056) (not b!4117168) b_and!318175 (not b_next!116787) (not b_next!116789) (not b!4116759) (not b!4116998) (not b!4117160) (not d!1221024) (not b_next!116791) (not b!4117183) (not b!4116753) (not d!1220980) (not b!4117157) (not b!4116997) (not d!1220994) (not d!1220990) (not bs!594621) (not b!4117068) (not bm!289869) (not d!1221022) (not b!4117070) (not d!1221008) (not b!4117003) tp_is_empty!21225 (not b!4117086) (not b!4117189) (not bm!289871) (not b!4116800) (not b!4116748) (not b_lambda!120813) (not b!4116999) b_and!318189 (not b!4117184) (not b!4117155) (not b!4117172) (not b!4116802) (not b!4117033))
(check-sat b_and!318173 b_and!318183 (not b_next!116803) b_and!318187 b_and!318185 (not b_next!116811) (not b_next!116797) (not b_next!116793) b_and!318191 b_and!318179 (not b_next!116791) b_and!318189 b_and!318181 b_and!318177 (not b_next!116813) (not b_next!116795) (not b_next!116805) b_and!318175 (not b_next!116787) (not b_next!116789))

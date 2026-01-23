; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112262 () Bool)

(assert start!112262)

(declare-fun b!1285181 () Bool)

(declare-fun b_free!30195 () Bool)

(declare-fun b_next!30899 () Bool)

(assert (=> b!1285181 (= b_free!30195 (not b_next!30899))))

(declare-fun tp!374170 () Bool)

(declare-fun b_and!85375 () Bool)

(assert (=> b!1285181 (= tp!374170 b_and!85375)))

(declare-fun b_free!30197 () Bool)

(declare-fun b_next!30901 () Bool)

(assert (=> b!1285181 (= b_free!30197 (not b_next!30901))))

(declare-fun tp!374167 () Bool)

(declare-fun b_and!85377 () Bool)

(assert (=> b!1285181 (= tp!374167 b_and!85377)))

(declare-fun b!1285173 () Bool)

(declare-fun b_free!30199 () Bool)

(declare-fun b_next!30903 () Bool)

(assert (=> b!1285173 (= b_free!30199 (not b_next!30903))))

(declare-fun tp!374169 () Bool)

(declare-fun b_and!85379 () Bool)

(assert (=> b!1285173 (= tp!374169 b_and!85379)))

(declare-fun b_free!30201 () Bool)

(declare-fun b_next!30905 () Bool)

(assert (=> b!1285173 (= b_free!30201 (not b_next!30905))))

(declare-fun tp!374163 () Bool)

(declare-fun b_and!85381 () Bool)

(assert (=> b!1285173 (= tp!374163 b_and!85381)))

(declare-fun b!1285187 () Bool)

(declare-fun b_free!30203 () Bool)

(declare-fun b_next!30907 () Bool)

(assert (=> b!1285187 (= b_free!30203 (not b_next!30907))))

(declare-fun tp!374159 () Bool)

(declare-fun b_and!85383 () Bool)

(assert (=> b!1285187 (= tp!374159 b_and!85383)))

(declare-fun b_free!30205 () Bool)

(declare-fun b_next!30909 () Bool)

(assert (=> b!1285187 (= b_free!30205 (not b_next!30909))))

(declare-fun tp!374165 () Bool)

(declare-fun b_and!85385 () Bool)

(assert (=> b!1285187 (= tp!374165 b_and!85385)))

(declare-fun e!824269 () Bool)

(declare-fun b!1285170 () Bool)

(declare-fun tp!374162 () Bool)

(declare-datatypes ((List!12863 0))(
  ( (Nil!12797) (Cons!12797 (h!18198 (_ BitVec 16)) (t!116758 List!12863)) )
))
(declare-datatypes ((TokenValue!2293 0))(
  ( (FloatLiteralValue!4586 (text!16496 List!12863)) (TokenValueExt!2292 (__x!8415 Int)) (Broken!11465 (value!72392 List!12863)) (Object!2358) (End!2293) (Def!2293) (Underscore!2293) (Match!2293) (Else!2293) (Error!2293) (Case!2293) (If!2293) (Extends!2293) (Abstract!2293) (Class!2293) (Val!2293) (DelimiterValue!4586 (del!2353 List!12863)) (KeywordValue!2299 (value!72393 List!12863)) (CommentValue!4586 (value!72394 List!12863)) (WhitespaceValue!4586 (value!72395 List!12863)) (IndentationValue!2293 (value!72396 List!12863)) (String!15700) (Int32!2293) (Broken!11466 (value!72397 List!12863)) (Boolean!2294) (Unit!18993) (OperatorValue!2296 (op!2353 List!12863)) (IdentifierValue!4586 (value!72398 List!12863)) (IdentifierValue!4587 (value!72399 List!12863)) (WhitespaceValue!4587 (value!72400 List!12863)) (True!4586) (False!4586) (Broken!11467 (value!72401 List!12863)) (Broken!11468 (value!72402 List!12863)) (True!4587) (RightBrace!2293) (RightBracket!2293) (Colon!2293) (Null!2293) (Comma!2293) (LeftBracket!2293) (False!4587) (LeftBrace!2293) (ImaginaryLiteralValue!2293 (text!16497 List!12863)) (StringLiteralValue!6879 (value!72403 List!12863)) (EOFValue!2293 (value!72404 List!12863)) (IdentValue!2293 (value!72405 List!12863)) (DelimiterValue!4587 (value!72406 List!12863)) (DedentValue!2293 (value!72407 List!12863)) (NewLineValue!2293 (value!72408 List!12863)) (IntegerValue!6879 (value!72409 (_ BitVec 32)) (text!16498 List!12863)) (IntegerValue!6880 (value!72410 Int) (text!16499 List!12863)) (Times!2293) (Or!2293) (Equal!2293) (Minus!2293) (Broken!11469 (value!72411 List!12863)) (And!2293) (Div!2293) (LessEqual!2293) (Mod!2293) (Concat!5810) (Not!2293) (Plus!2293) (SpaceValue!2293 (value!72412 List!12863)) (IntegerValue!6881 (value!72413 Int) (text!16500 List!12863)) (StringLiteralValue!6880 (text!16501 List!12863)) (FloatLiteralValue!4587 (text!16502 List!12863)) (BytesLiteralValue!2293 (value!72414 List!12863)) (CommentValue!4587 (value!72415 List!12863)) (StringLiteralValue!6881 (value!72416 List!12863)) (ErrorTokenValue!2293 (msg!2354 List!12863)) )
))
(declare-datatypes ((C!7324 0))(
  ( (C!7325 (val!4222 Int)) )
))
(declare-datatypes ((List!12864 0))(
  ( (Nil!12798) (Cons!12798 (h!18199 C!7324) (t!116759 List!12864)) )
))
(declare-datatypes ((IArray!8419 0))(
  ( (IArray!8420 (innerList!4267 List!12864)) )
))
(declare-datatypes ((String!15701 0))(
  ( (String!15702 (value!72417 String)) )
))
(declare-datatypes ((Conc!4207 0))(
  ( (Node!4207 (left!11026 Conc!4207) (right!11356 Conc!4207) (csize!8644 Int) (cheight!4418 Int)) (Leaf!6505 (xs!6918 IArray!8419) (csize!8645 Int)) (Empty!4207) )
))
(declare-datatypes ((BalanceConc!8354 0))(
  ( (BalanceConc!8355 (c!211549 Conc!4207)) )
))
(declare-datatypes ((Regex!3517 0))(
  ( (ElementMatch!3517 (c!211550 C!7324)) (Concat!5811 (regOne!7546 Regex!3517) (regTwo!7546 Regex!3517)) (EmptyExpr!3517) (Star!3517 (reg!3846 Regex!3517)) (EmptyLang!3517) (Union!3517 (regOne!7547 Regex!3517) (regTwo!7547 Regex!3517)) )
))
(declare-datatypes ((TokenValueInjection!4246 0))(
  ( (TokenValueInjection!4247 (toValue!3382 Int) (toChars!3241 Int)) )
))
(declare-datatypes ((Rule!4206 0))(
  ( (Rule!4207 (regex!2203 Regex!3517) (tag!2465 String!15701) (isSeparator!2203 Bool) (transformation!2203 TokenValueInjection!4246)) )
))
(declare-datatypes ((Token!4068 0))(
  ( (Token!4069 (value!72418 TokenValue!2293) (rule!3942 Rule!4206) (size!10421 Int) (originalCharacters!3065 List!12864)) )
))
(declare-fun t1!34 () Token!4068)

(declare-fun e!824265 () Bool)

(declare-fun inv!17201 (String!15701) Bool)

(declare-fun inv!17204 (TokenValueInjection!4246) Bool)

(assert (=> b!1285170 (= e!824269 (and tp!374162 (inv!17201 (tag!2465 (rule!3942 t1!34))) (inv!17204 (transformation!2203 (rule!3942 t1!34))) e!824265))))

(declare-fun b!1285171 () Bool)

(declare-fun res!576346 () Bool)

(declare-fun e!824266 () Bool)

(assert (=> b!1285171 (=> (not res!576346) (not e!824266))))

(declare-datatypes ((LexerInterface!1898 0))(
  ( (LexerInterfaceExt!1895 (__x!8416 Int)) (Lexer!1896) )
))
(declare-fun thiss!19762 () LexerInterface!1898)

(declare-datatypes ((List!12865 0))(
  ( (Nil!12799) (Cons!12799 (h!18200 Rule!4206) (t!116760 List!12865)) )
))
(declare-fun rules!2550 () List!12865)

(declare-fun rulesInvariant!1768 (LexerInterface!1898 List!12865) Bool)

(assert (=> b!1285171 (= res!576346 (rulesInvariant!1768 thiss!19762 rules!2550))))

(declare-fun b!1285172 () Bool)

(declare-fun e!824260 () Bool)

(declare-fun rulesValidInductive!694 (LexerInterface!1898 List!12865) Bool)

(assert (=> b!1285172 (= e!824260 (not (rulesValidInductive!694 thiss!19762 rules!2550)))))

(declare-fun lt!423588 () List!12864)

(declare-fun lt!423587 () BalanceConc!8354)

(declare-fun ++!3227 (List!12864 List!12864) List!12864)

(declare-fun list!4751 (BalanceConc!8354) List!12864)

(declare-fun charsOf!1175 (Token!4068) BalanceConc!8354)

(declare-fun apply!2729 (BalanceConc!8354 Int) C!7324)

(assert (=> b!1285172 (= lt!423588 (++!3227 (list!4751 (charsOf!1175 t1!34)) (Cons!12798 (apply!2729 lt!423587 0) Nil!12798)))))

(assert (=> b!1285173 (= e!824265 (and tp!374169 tp!374163))))

(declare-fun b!1285174 () Bool)

(declare-fun res!576351 () Bool)

(assert (=> b!1285174 (=> (not res!576351) (not e!824266))))

(declare-fun rulesProduceIndividualToken!867 (LexerInterface!1898 List!12865 Token!4068) Bool)

(assert (=> b!1285174 (= res!576351 (rulesProduceIndividualToken!867 thiss!19762 rules!2550 t1!34))))

(declare-fun tp!374160 () Bool)

(declare-fun e!824264 () Bool)

(declare-fun t2!34 () Token!4068)

(declare-fun b!1285175 () Bool)

(declare-fun e!824257 () Bool)

(assert (=> b!1285175 (= e!824257 (and tp!374160 (inv!17201 (tag!2465 (rule!3942 t2!34))) (inv!17204 (transformation!2203 (rule!3942 t2!34))) e!824264))))

(declare-fun b!1285177 () Bool)

(declare-fun res!576343 () Bool)

(assert (=> b!1285177 (=> (not res!576343) (not e!824260))))

(declare-fun sepAndNonSepRulesDisjointChars!576 (List!12865 List!12865) Bool)

(assert (=> b!1285177 (= res!576343 (sepAndNonSepRulesDisjointChars!576 rules!2550 rules!2550))))

(declare-fun b!1285178 () Bool)

(assert (=> b!1285178 (= e!824266 e!824260)))

(declare-fun res!576349 () Bool)

(assert (=> b!1285178 (=> (not res!576349) (not e!824260))))

(declare-fun size!10422 (BalanceConc!8354) Int)

(assert (=> b!1285178 (= res!576349 (> (size!10422 lt!423587) 0))))

(assert (=> b!1285178 (= lt!423587 (charsOf!1175 t2!34))))

(declare-fun b!1285179 () Bool)

(declare-fun res!576347 () Bool)

(assert (=> b!1285179 (=> (not res!576347) (not e!824266))))

(assert (=> b!1285179 (= res!576347 (not (= (isSeparator!2203 (rule!3942 t1!34)) (isSeparator!2203 (rule!3942 t2!34)))))))

(declare-fun tp!374166 () Bool)

(declare-fun e!824256 () Bool)

(declare-fun b!1285180 () Bool)

(declare-fun inv!21 (TokenValue!2293) Bool)

(assert (=> b!1285180 (= e!824256 (and (inv!21 (value!72418 t2!34)) e!824257 tp!374166))))

(assert (=> b!1285181 (= e!824264 (and tp!374170 tp!374167))))

(declare-fun e!824267 () Bool)

(declare-fun tp!374164 () Bool)

(declare-fun e!824261 () Bool)

(declare-fun b!1285182 () Bool)

(assert (=> b!1285182 (= e!824267 (and tp!374164 (inv!17201 (tag!2465 (h!18200 rules!2550))) (inv!17204 (transformation!2203 (h!18200 rules!2550))) e!824261))))

(declare-fun b!1285183 () Bool)

(declare-fun res!576350 () Bool)

(assert (=> b!1285183 (=> (not res!576350) (not e!824266))))

(declare-fun isEmpty!7588 (List!12865) Bool)

(assert (=> b!1285183 (= res!576350 (not (isEmpty!7588 rules!2550)))))

(declare-fun b!1285176 () Bool)

(declare-fun e!824263 () Bool)

(declare-fun tp!374168 () Bool)

(assert (=> b!1285176 (= e!824263 (and e!824267 tp!374168))))

(declare-fun res!576345 () Bool)

(assert (=> start!112262 (=> (not res!576345) (not e!824266))))

(get-info :version)

(assert (=> start!112262 (= res!576345 ((_ is Lexer!1896) thiss!19762))))

(assert (=> start!112262 e!824266))

(assert (=> start!112262 true))

(assert (=> start!112262 e!824263))

(declare-fun e!824259 () Bool)

(declare-fun inv!17205 (Token!4068) Bool)

(assert (=> start!112262 (and (inv!17205 t1!34) e!824259)))

(assert (=> start!112262 (and (inv!17205 t2!34) e!824256)))

(declare-fun b!1285184 () Bool)

(declare-fun res!576344 () Bool)

(assert (=> b!1285184 (=> (not res!576344) (not e!824260))))

(declare-fun separableTokensPredicate!181 (LexerInterface!1898 Token!4068 Token!4068 List!12865) Bool)

(assert (=> b!1285184 (= res!576344 (not (separableTokensPredicate!181 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1285185 () Bool)

(declare-fun tp!374161 () Bool)

(assert (=> b!1285185 (= e!824259 (and (inv!21 (value!72418 t1!34)) e!824269 tp!374161))))

(declare-fun b!1285186 () Bool)

(declare-fun res!576348 () Bool)

(assert (=> b!1285186 (=> (not res!576348) (not e!824266))))

(assert (=> b!1285186 (= res!576348 (rulesProduceIndividualToken!867 thiss!19762 rules!2550 t2!34))))

(assert (=> b!1285187 (= e!824261 (and tp!374159 tp!374165))))

(assert (= (and start!112262 res!576345) b!1285183))

(assert (= (and b!1285183 res!576350) b!1285171))

(assert (= (and b!1285171 res!576346) b!1285174))

(assert (= (and b!1285174 res!576351) b!1285186))

(assert (= (and b!1285186 res!576348) b!1285179))

(assert (= (and b!1285179 res!576347) b!1285178))

(assert (= (and b!1285178 res!576349) b!1285177))

(assert (= (and b!1285177 res!576343) b!1285184))

(assert (= (and b!1285184 res!576344) b!1285172))

(assert (= b!1285182 b!1285187))

(assert (= b!1285176 b!1285182))

(assert (= (and start!112262 ((_ is Cons!12799) rules!2550)) b!1285176))

(assert (= b!1285170 b!1285173))

(assert (= b!1285185 b!1285170))

(assert (= start!112262 b!1285185))

(assert (= b!1285175 b!1285181))

(assert (= b!1285180 b!1285175))

(assert (= start!112262 b!1285180))

(declare-fun m!1435253 () Bool)

(assert (=> b!1285185 m!1435253))

(declare-fun m!1435255 () Bool)

(assert (=> b!1285178 m!1435255))

(declare-fun m!1435257 () Bool)

(assert (=> b!1285178 m!1435257))

(declare-fun m!1435259 () Bool)

(assert (=> b!1285172 m!1435259))

(declare-fun m!1435261 () Bool)

(assert (=> b!1285172 m!1435261))

(declare-fun m!1435263 () Bool)

(assert (=> b!1285172 m!1435263))

(declare-fun m!1435265 () Bool)

(assert (=> b!1285172 m!1435265))

(declare-fun m!1435267 () Bool)

(assert (=> b!1285172 m!1435267))

(assert (=> b!1285172 m!1435259))

(assert (=> b!1285172 m!1435263))

(declare-fun m!1435269 () Bool)

(assert (=> b!1285183 m!1435269))

(declare-fun m!1435271 () Bool)

(assert (=> b!1285182 m!1435271))

(declare-fun m!1435273 () Bool)

(assert (=> b!1285182 m!1435273))

(declare-fun m!1435275 () Bool)

(assert (=> b!1285186 m!1435275))

(declare-fun m!1435277 () Bool)

(assert (=> b!1285177 m!1435277))

(declare-fun m!1435279 () Bool)

(assert (=> b!1285174 m!1435279))

(declare-fun m!1435281 () Bool)

(assert (=> b!1285180 m!1435281))

(declare-fun m!1435283 () Bool)

(assert (=> b!1285175 m!1435283))

(declare-fun m!1435285 () Bool)

(assert (=> b!1285175 m!1435285))

(declare-fun m!1435287 () Bool)

(assert (=> start!112262 m!1435287))

(declare-fun m!1435289 () Bool)

(assert (=> start!112262 m!1435289))

(declare-fun m!1435291 () Bool)

(assert (=> b!1285171 m!1435291))

(declare-fun m!1435293 () Bool)

(assert (=> b!1285184 m!1435293))

(declare-fun m!1435295 () Bool)

(assert (=> b!1285170 m!1435295))

(declare-fun m!1435297 () Bool)

(assert (=> b!1285170 m!1435297))

(check-sat (not b!1285182) (not start!112262) (not b!1285183) (not b!1285180) (not b!1285176) (not b_next!30899) (not b!1285174) (not b_next!30909) (not b!1285184) (not b!1285185) b_and!85375 (not b_next!30905) b_and!85381 b_and!85377 (not b!1285178) (not b!1285177) (not b!1285171) b_and!85379 (not b_next!30903) b_and!85385 (not b!1285186) (not b!1285172) (not b_next!30907) b_and!85383 (not b_next!30901) (not b!1285175) (not b!1285170))
(check-sat (not b_next!30899) b_and!85385 (not b_next!30909) b_and!85375 (not b_next!30905) b_and!85381 b_and!85377 b_and!85379 (not b_next!30903) (not b_next!30907) b_and!85383 (not b_next!30901))
(get-model)

(declare-fun d!361820 () Bool)

(declare-fun c!211558 () Bool)

(assert (=> d!361820 (= c!211558 ((_ is IntegerValue!6879) (value!72418 t1!34)))))

(declare-fun e!824283 () Bool)

(assert (=> d!361820 (= (inv!21 (value!72418 t1!34)) e!824283)))

(declare-fun b!1285210 () Bool)

(declare-fun e!824284 () Bool)

(declare-fun inv!17 (TokenValue!2293) Bool)

(assert (=> b!1285210 (= e!824284 (inv!17 (value!72418 t1!34)))))

(declare-fun b!1285211 () Bool)

(declare-fun e!824285 () Bool)

(declare-fun inv!15 (TokenValue!2293) Bool)

(assert (=> b!1285211 (= e!824285 (inv!15 (value!72418 t1!34)))))

(declare-fun b!1285212 () Bool)

(assert (=> b!1285212 (= e!824283 e!824284)))

(declare-fun c!211559 () Bool)

(assert (=> b!1285212 (= c!211559 ((_ is IntegerValue!6880) (value!72418 t1!34)))))

(declare-fun b!1285213 () Bool)

(declare-fun inv!16 (TokenValue!2293) Bool)

(assert (=> b!1285213 (= e!824283 (inv!16 (value!72418 t1!34)))))

(declare-fun b!1285214 () Bool)

(declare-fun res!576368 () Bool)

(assert (=> b!1285214 (=> res!576368 e!824285)))

(assert (=> b!1285214 (= res!576368 (not ((_ is IntegerValue!6881) (value!72418 t1!34))))))

(assert (=> b!1285214 (= e!824284 e!824285)))

(assert (= (and d!361820 c!211558) b!1285213))

(assert (= (and d!361820 (not c!211558)) b!1285212))

(assert (= (and b!1285212 c!211559) b!1285210))

(assert (= (and b!1285212 (not c!211559)) b!1285214))

(assert (= (and b!1285214 (not res!576368)) b!1285211))

(declare-fun m!1435315 () Bool)

(assert (=> b!1285210 m!1435315))

(declare-fun m!1435317 () Bool)

(assert (=> b!1285211 m!1435317))

(declare-fun m!1435319 () Bool)

(assert (=> b!1285213 m!1435319))

(assert (=> b!1285185 d!361820))

(declare-fun d!361826 () Bool)

(declare-fun lt!423602 () Bool)

(declare-fun e!824297 () Bool)

(assert (=> d!361826 (= lt!423602 e!824297)))

(declare-fun res!576379 () Bool)

(assert (=> d!361826 (=> (not res!576379) (not e!824297))))

(declare-datatypes ((List!12868 0))(
  ( (Nil!12802) (Cons!12802 (h!18203 Token!4068) (t!116797 List!12868)) )
))
(declare-datatypes ((IArray!8423 0))(
  ( (IArray!8424 (innerList!4269 List!12868)) )
))
(declare-datatypes ((Conc!4209 0))(
  ( (Node!4209 (left!11032 Conc!4209) (right!11362 Conc!4209) (csize!8648 Int) (cheight!4420 Int)) (Leaf!6507 (xs!6920 IArray!8423) (csize!8649 Int)) (Empty!4209) )
))
(declare-datatypes ((BalanceConc!8358 0))(
  ( (BalanceConc!8359 (c!211574 Conc!4209)) )
))
(declare-fun list!4754 (BalanceConc!8358) List!12868)

(declare-datatypes ((tuple2!12622 0))(
  ( (tuple2!12623 (_1!7197 BalanceConc!8358) (_2!7197 BalanceConc!8354)) )
))
(declare-fun lex!769 (LexerInterface!1898 List!12865 BalanceConc!8354) tuple2!12622)

(declare-fun print!706 (LexerInterface!1898 BalanceConc!8358) BalanceConc!8354)

(declare-fun singletonSeq!778 (Token!4068) BalanceConc!8358)

(assert (=> d!361826 (= res!576379 (= (list!4754 (_1!7197 (lex!769 thiss!19762 rules!2550 (print!706 thiss!19762 (singletonSeq!778 t2!34))))) (list!4754 (singletonSeq!778 t2!34))))))

(declare-fun e!824298 () Bool)

(assert (=> d!361826 (= lt!423602 e!824298)))

(declare-fun res!576381 () Bool)

(assert (=> d!361826 (=> (not res!576381) (not e!824298))))

(declare-fun lt!423601 () tuple2!12622)

(declare-fun size!10426 (BalanceConc!8358) Int)

(assert (=> d!361826 (= res!576381 (= (size!10426 (_1!7197 lt!423601)) 1))))

(assert (=> d!361826 (= lt!423601 (lex!769 thiss!19762 rules!2550 (print!706 thiss!19762 (singletonSeq!778 t2!34))))))

(assert (=> d!361826 (not (isEmpty!7588 rules!2550))))

(assert (=> d!361826 (= (rulesProduceIndividualToken!867 thiss!19762 rules!2550 t2!34) lt!423602)))

(declare-fun b!1285230 () Bool)

(declare-fun res!576380 () Bool)

(assert (=> b!1285230 (=> (not res!576380) (not e!824298))))

(declare-fun apply!2733 (BalanceConc!8358 Int) Token!4068)

(assert (=> b!1285230 (= res!576380 (= (apply!2733 (_1!7197 lt!423601) 0) t2!34))))

(declare-fun b!1285231 () Bool)

(declare-fun isEmpty!7591 (BalanceConc!8354) Bool)

(assert (=> b!1285231 (= e!824298 (isEmpty!7591 (_2!7197 lt!423601)))))

(declare-fun b!1285232 () Bool)

(assert (=> b!1285232 (= e!824297 (isEmpty!7591 (_2!7197 (lex!769 thiss!19762 rules!2550 (print!706 thiss!19762 (singletonSeq!778 t2!34))))))))

(assert (= (and d!361826 res!576381) b!1285230))

(assert (= (and b!1285230 res!576380) b!1285231))

(assert (= (and d!361826 res!576379) b!1285232))

(declare-fun m!1435329 () Bool)

(assert (=> d!361826 m!1435329))

(declare-fun m!1435331 () Bool)

(assert (=> d!361826 m!1435331))

(declare-fun m!1435333 () Bool)

(assert (=> d!361826 m!1435333))

(declare-fun m!1435335 () Bool)

(assert (=> d!361826 m!1435335))

(declare-fun m!1435337 () Bool)

(assert (=> d!361826 m!1435337))

(declare-fun m!1435339 () Bool)

(assert (=> d!361826 m!1435339))

(assert (=> d!361826 m!1435269))

(assert (=> d!361826 m!1435337))

(assert (=> d!361826 m!1435333))

(assert (=> d!361826 m!1435337))

(declare-fun m!1435341 () Bool)

(assert (=> b!1285230 m!1435341))

(declare-fun m!1435343 () Bool)

(assert (=> b!1285231 m!1435343))

(assert (=> b!1285232 m!1435337))

(assert (=> b!1285232 m!1435337))

(assert (=> b!1285232 m!1435333))

(assert (=> b!1285232 m!1435333))

(assert (=> b!1285232 m!1435335))

(declare-fun m!1435345 () Bool)

(assert (=> b!1285232 m!1435345))

(assert (=> b!1285186 d!361826))

(declare-fun d!361830 () Bool)

(assert (=> d!361830 (= (inv!17201 (tag!2465 (rule!3942 t2!34))) (= (mod (str.len (value!72417 (tag!2465 (rule!3942 t2!34)))) 2) 0))))

(assert (=> b!1285175 d!361830))

(declare-fun d!361832 () Bool)

(declare-fun res!576384 () Bool)

(declare-fun e!824301 () Bool)

(assert (=> d!361832 (=> (not res!576384) (not e!824301))))

(declare-fun semiInverseModEq!830 (Int Int) Bool)

(assert (=> d!361832 (= res!576384 (semiInverseModEq!830 (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (toValue!3382 (transformation!2203 (rule!3942 t2!34)))))))

(assert (=> d!361832 (= (inv!17204 (transformation!2203 (rule!3942 t2!34))) e!824301)))

(declare-fun b!1285235 () Bool)

(declare-fun equivClasses!789 (Int Int) Bool)

(assert (=> b!1285235 (= e!824301 (equivClasses!789 (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (toValue!3382 (transformation!2203 (rule!3942 t2!34)))))))

(assert (= (and d!361832 res!576384) b!1285235))

(declare-fun m!1435347 () Bool)

(assert (=> d!361832 m!1435347))

(declare-fun m!1435349 () Bool)

(assert (=> b!1285235 m!1435349))

(assert (=> b!1285175 d!361832))

(declare-fun d!361834 () Bool)

(declare-fun res!576389 () Bool)

(declare-fun e!824304 () Bool)

(assert (=> d!361834 (=> (not res!576389) (not e!824304))))

(declare-fun isEmpty!7592 (List!12864) Bool)

(assert (=> d!361834 (= res!576389 (not (isEmpty!7592 (originalCharacters!3065 t1!34))))))

(assert (=> d!361834 (= (inv!17205 t1!34) e!824304)))

(declare-fun b!1285240 () Bool)

(declare-fun res!576390 () Bool)

(assert (=> b!1285240 (=> (not res!576390) (not e!824304))))

(declare-fun dynLambda!5568 (Int TokenValue!2293) BalanceConc!8354)

(assert (=> b!1285240 (= res!576390 (= (originalCharacters!3065 t1!34) (list!4751 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (value!72418 t1!34)))))))

(declare-fun b!1285241 () Bool)

(declare-fun size!10427 (List!12864) Int)

(assert (=> b!1285241 (= e!824304 (= (size!10421 t1!34) (size!10427 (originalCharacters!3065 t1!34))))))

(assert (= (and d!361834 res!576389) b!1285240))

(assert (= (and b!1285240 res!576390) b!1285241))

(declare-fun b_lambda!36609 () Bool)

(assert (=> (not b_lambda!36609) (not b!1285240)))

(declare-fun tb!69095 () Bool)

(declare-fun t!116769 () Bool)

(assert (=> (and b!1285181 (= (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (toChars!3241 (transformation!2203 (rule!3942 t1!34)))) t!116769) tb!69095))

(declare-fun b!1285246 () Bool)

(declare-fun e!824307 () Bool)

(declare-fun tp!374176 () Bool)

(declare-fun inv!17208 (Conc!4207) Bool)

(assert (=> b!1285246 (= e!824307 (and (inv!17208 (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (value!72418 t1!34)))) tp!374176))))

(declare-fun result!83662 () Bool)

(declare-fun inv!17209 (BalanceConc!8354) Bool)

(assert (=> tb!69095 (= result!83662 (and (inv!17209 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (value!72418 t1!34))) e!824307))))

(assert (= tb!69095 b!1285246))

(declare-fun m!1435351 () Bool)

(assert (=> b!1285246 m!1435351))

(declare-fun m!1435353 () Bool)

(assert (=> tb!69095 m!1435353))

(assert (=> b!1285240 t!116769))

(declare-fun b_and!85393 () Bool)

(assert (= b_and!85377 (and (=> t!116769 result!83662) b_and!85393)))

(declare-fun t!116771 () Bool)

(declare-fun tb!69097 () Bool)

(assert (=> (and b!1285173 (= (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (toChars!3241 (transformation!2203 (rule!3942 t1!34)))) t!116771) tb!69097))

(declare-fun result!83666 () Bool)

(assert (= result!83666 result!83662))

(assert (=> b!1285240 t!116771))

(declare-fun b_and!85395 () Bool)

(assert (= b_and!85381 (and (=> t!116771 result!83666) b_and!85395)))

(declare-fun t!116773 () Bool)

(declare-fun tb!69099 () Bool)

(assert (=> (and b!1285187 (= (toChars!3241 (transformation!2203 (h!18200 rules!2550))) (toChars!3241 (transformation!2203 (rule!3942 t1!34)))) t!116773) tb!69099))

(declare-fun result!83668 () Bool)

(assert (= result!83668 result!83662))

(assert (=> b!1285240 t!116773))

(declare-fun b_and!85397 () Bool)

(assert (= b_and!85385 (and (=> t!116773 result!83668) b_and!85397)))

(declare-fun m!1435355 () Bool)

(assert (=> d!361834 m!1435355))

(declare-fun m!1435357 () Bool)

(assert (=> b!1285240 m!1435357))

(assert (=> b!1285240 m!1435357))

(declare-fun m!1435359 () Bool)

(assert (=> b!1285240 m!1435359))

(declare-fun m!1435361 () Bool)

(assert (=> b!1285241 m!1435361))

(assert (=> start!112262 d!361834))

(declare-fun d!361836 () Bool)

(declare-fun res!576391 () Bool)

(declare-fun e!824308 () Bool)

(assert (=> d!361836 (=> (not res!576391) (not e!824308))))

(assert (=> d!361836 (= res!576391 (not (isEmpty!7592 (originalCharacters!3065 t2!34))))))

(assert (=> d!361836 (= (inv!17205 t2!34) e!824308)))

(declare-fun b!1285247 () Bool)

(declare-fun res!576392 () Bool)

(assert (=> b!1285247 (=> (not res!576392) (not e!824308))))

(assert (=> b!1285247 (= res!576392 (= (originalCharacters!3065 t2!34) (list!4751 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (value!72418 t2!34)))))))

(declare-fun b!1285248 () Bool)

(assert (=> b!1285248 (= e!824308 (= (size!10421 t2!34) (size!10427 (originalCharacters!3065 t2!34))))))

(assert (= (and d!361836 res!576391) b!1285247))

(assert (= (and b!1285247 res!576392) b!1285248))

(declare-fun b_lambda!36611 () Bool)

(assert (=> (not b_lambda!36611) (not b!1285247)))

(declare-fun t!116775 () Bool)

(declare-fun tb!69101 () Bool)

(assert (=> (and b!1285181 (= (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (toChars!3241 (transformation!2203 (rule!3942 t2!34)))) t!116775) tb!69101))

(declare-fun b!1285249 () Bool)

(declare-fun e!824309 () Bool)

(declare-fun tp!374177 () Bool)

(assert (=> b!1285249 (= e!824309 (and (inv!17208 (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (value!72418 t2!34)))) tp!374177))))

(declare-fun result!83670 () Bool)

(assert (=> tb!69101 (= result!83670 (and (inv!17209 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (value!72418 t2!34))) e!824309))))

(assert (= tb!69101 b!1285249))

(declare-fun m!1435363 () Bool)

(assert (=> b!1285249 m!1435363))

(declare-fun m!1435365 () Bool)

(assert (=> tb!69101 m!1435365))

(assert (=> b!1285247 t!116775))

(declare-fun b_and!85399 () Bool)

(assert (= b_and!85393 (and (=> t!116775 result!83670) b_and!85399)))

(declare-fun t!116777 () Bool)

(declare-fun tb!69103 () Bool)

(assert (=> (and b!1285173 (= (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (toChars!3241 (transformation!2203 (rule!3942 t2!34)))) t!116777) tb!69103))

(declare-fun result!83672 () Bool)

(assert (= result!83672 result!83670))

(assert (=> b!1285247 t!116777))

(declare-fun b_and!85401 () Bool)

(assert (= b_and!85395 (and (=> t!116777 result!83672) b_and!85401)))

(declare-fun tb!69105 () Bool)

(declare-fun t!116779 () Bool)

(assert (=> (and b!1285187 (= (toChars!3241 (transformation!2203 (h!18200 rules!2550))) (toChars!3241 (transformation!2203 (rule!3942 t2!34)))) t!116779) tb!69105))

(declare-fun result!83674 () Bool)

(assert (= result!83674 result!83670))

(assert (=> b!1285247 t!116779))

(declare-fun b_and!85403 () Bool)

(assert (= b_and!85397 (and (=> t!116779 result!83674) b_and!85403)))

(declare-fun m!1435367 () Bool)

(assert (=> d!361836 m!1435367))

(declare-fun m!1435369 () Bool)

(assert (=> b!1285247 m!1435369))

(assert (=> b!1285247 m!1435369))

(declare-fun m!1435371 () Bool)

(assert (=> b!1285247 m!1435371))

(declare-fun m!1435373 () Bool)

(assert (=> b!1285248 m!1435373))

(assert (=> start!112262 d!361836))

(declare-fun b!1285262 () Bool)

(declare-fun e!824316 () List!12864)

(assert (=> b!1285262 (= e!824316 (Cons!12798 (apply!2729 lt!423587 0) Nil!12798))))

(declare-fun d!361838 () Bool)

(declare-fun e!824317 () Bool)

(assert (=> d!361838 e!824317))

(declare-fun res!576400 () Bool)

(assert (=> d!361838 (=> (not res!576400) (not e!824317))))

(declare-fun lt!423606 () List!12864)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1811 (List!12864) (InoxSet C!7324))

(assert (=> d!361838 (= res!576400 (= (content!1811 lt!423606) ((_ map or) (content!1811 (list!4751 (charsOf!1175 t1!34))) (content!1811 (Cons!12798 (apply!2729 lt!423587 0) Nil!12798)))))))

(assert (=> d!361838 (= lt!423606 e!824316)))

(declare-fun c!211562 () Bool)

(assert (=> d!361838 (= c!211562 ((_ is Nil!12798) (list!4751 (charsOf!1175 t1!34))))))

(assert (=> d!361838 (= (++!3227 (list!4751 (charsOf!1175 t1!34)) (Cons!12798 (apply!2729 lt!423587 0) Nil!12798)) lt!423606)))

(declare-fun b!1285264 () Bool)

(declare-fun res!576399 () Bool)

(assert (=> b!1285264 (=> (not res!576399) (not e!824317))))

(assert (=> b!1285264 (= res!576399 (= (size!10427 lt!423606) (+ (size!10427 (list!4751 (charsOf!1175 t1!34))) (size!10427 (Cons!12798 (apply!2729 lt!423587 0) Nil!12798)))))))

(declare-fun b!1285265 () Bool)

(assert (=> b!1285265 (= e!824317 (or (not (= (Cons!12798 (apply!2729 lt!423587 0) Nil!12798) Nil!12798)) (= lt!423606 (list!4751 (charsOf!1175 t1!34)))))))

(declare-fun b!1285263 () Bool)

(assert (=> b!1285263 (= e!824316 (Cons!12798 (h!18199 (list!4751 (charsOf!1175 t1!34))) (++!3227 (t!116759 (list!4751 (charsOf!1175 t1!34))) (Cons!12798 (apply!2729 lt!423587 0) Nil!12798))))))

(assert (= (and d!361838 c!211562) b!1285262))

(assert (= (and d!361838 (not c!211562)) b!1285263))

(assert (= (and d!361838 res!576400) b!1285264))

(assert (= (and b!1285264 res!576399) b!1285265))

(declare-fun m!1435381 () Bool)

(assert (=> d!361838 m!1435381))

(assert (=> d!361838 m!1435263))

(declare-fun m!1435383 () Bool)

(assert (=> d!361838 m!1435383))

(declare-fun m!1435385 () Bool)

(assert (=> d!361838 m!1435385))

(declare-fun m!1435387 () Bool)

(assert (=> b!1285264 m!1435387))

(assert (=> b!1285264 m!1435263))

(declare-fun m!1435389 () Bool)

(assert (=> b!1285264 m!1435389))

(declare-fun m!1435391 () Bool)

(assert (=> b!1285264 m!1435391))

(declare-fun m!1435393 () Bool)

(assert (=> b!1285263 m!1435393))

(assert (=> b!1285172 d!361838))

(declare-fun d!361842 () Bool)

(declare-fun list!4755 (Conc!4207) List!12864)

(assert (=> d!361842 (= (list!4751 (charsOf!1175 t1!34)) (list!4755 (c!211549 (charsOf!1175 t1!34))))))

(declare-fun bs!327996 () Bool)

(assert (= bs!327996 d!361842))

(declare-fun m!1435395 () Bool)

(assert (=> bs!327996 m!1435395))

(assert (=> b!1285172 d!361842))

(declare-fun d!361844 () Bool)

(declare-fun lt!423612 () C!7324)

(declare-fun apply!2734 (List!12864 Int) C!7324)

(assert (=> d!361844 (= lt!423612 (apply!2734 (list!4751 lt!423587) 0))))

(declare-fun apply!2735 (Conc!4207 Int) C!7324)

(assert (=> d!361844 (= lt!423612 (apply!2735 (c!211549 lt!423587) 0))))

(declare-fun e!824326 () Bool)

(assert (=> d!361844 e!824326))

(declare-fun res!576409 () Bool)

(assert (=> d!361844 (=> (not res!576409) (not e!824326))))

(assert (=> d!361844 (= res!576409 (<= 0 0))))

(assert (=> d!361844 (= (apply!2729 lt!423587 0) lt!423612)))

(declare-fun b!1285274 () Bool)

(assert (=> b!1285274 (= e!824326 (< 0 (size!10422 lt!423587)))))

(assert (= (and d!361844 res!576409) b!1285274))

(declare-fun m!1435407 () Bool)

(assert (=> d!361844 m!1435407))

(assert (=> d!361844 m!1435407))

(declare-fun m!1435409 () Bool)

(assert (=> d!361844 m!1435409))

(declare-fun m!1435411 () Bool)

(assert (=> d!361844 m!1435411))

(assert (=> b!1285274 m!1435255))

(assert (=> b!1285172 d!361844))

(declare-fun d!361850 () Bool)

(declare-fun lt!423615 () BalanceConc!8354)

(assert (=> d!361850 (= (list!4751 lt!423615) (originalCharacters!3065 t1!34))))

(assert (=> d!361850 (= lt!423615 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (value!72418 t1!34)))))

(assert (=> d!361850 (= (charsOf!1175 t1!34) lt!423615)))

(declare-fun b_lambda!36613 () Bool)

(assert (=> (not b_lambda!36613) (not d!361850)))

(assert (=> d!361850 t!116769))

(declare-fun b_and!85405 () Bool)

(assert (= b_and!85399 (and (=> t!116769 result!83662) b_and!85405)))

(assert (=> d!361850 t!116771))

(declare-fun b_and!85407 () Bool)

(assert (= b_and!85401 (and (=> t!116771 result!83666) b_and!85407)))

(assert (=> d!361850 t!116773))

(declare-fun b_and!85409 () Bool)

(assert (= b_and!85403 (and (=> t!116773 result!83668) b_and!85409)))

(declare-fun m!1435413 () Bool)

(assert (=> d!361850 m!1435413))

(assert (=> d!361850 m!1435357))

(assert (=> b!1285172 d!361850))

(declare-fun d!361852 () Bool)

(assert (=> d!361852 true))

(declare-fun lt!423630 () Bool)

(declare-fun lambda!50379 () Int)

(declare-fun forall!3233 (List!12865 Int) Bool)

(assert (=> d!361852 (= lt!423630 (forall!3233 rules!2550 lambda!50379))))

(declare-fun e!824389 () Bool)

(assert (=> d!361852 (= lt!423630 e!824389)))

(declare-fun res!576449 () Bool)

(assert (=> d!361852 (=> res!576449 e!824389)))

(assert (=> d!361852 (= res!576449 (not ((_ is Cons!12799) rules!2550)))))

(assert (=> d!361852 (= (rulesValidInductive!694 thiss!19762 rules!2550) lt!423630)))

(declare-fun b!1285370 () Bool)

(declare-fun e!824388 () Bool)

(assert (=> b!1285370 (= e!824389 e!824388)))

(declare-fun res!576450 () Bool)

(assert (=> b!1285370 (=> (not res!576450) (not e!824388))))

(declare-fun ruleValid!539 (LexerInterface!1898 Rule!4206) Bool)

(assert (=> b!1285370 (= res!576450 (ruleValid!539 thiss!19762 (h!18200 rules!2550)))))

(declare-fun b!1285371 () Bool)

(assert (=> b!1285371 (= e!824388 (rulesValidInductive!694 thiss!19762 (t!116760 rules!2550)))))

(assert (= (and d!361852 (not res!576449)) b!1285370))

(assert (= (and b!1285370 res!576450) b!1285371))

(declare-fun m!1435517 () Bool)

(assert (=> d!361852 m!1435517))

(declare-fun m!1435519 () Bool)

(assert (=> b!1285370 m!1435519))

(declare-fun m!1435521 () Bool)

(assert (=> b!1285371 m!1435521))

(assert (=> b!1285172 d!361852))

(declare-fun d!361886 () Bool)

(assert (=> d!361886 (= (isEmpty!7588 rules!2550) ((_ is Nil!12799) rules!2550))))

(assert (=> b!1285183 d!361886))

(declare-fun d!361888 () Bool)

(declare-fun prefixMatchZipperSequence!117 (Regex!3517 BalanceConc!8354) Bool)

(declare-fun rulesRegex!88 (LexerInterface!1898 List!12865) Regex!3517)

(declare-fun ++!3229 (BalanceConc!8354 BalanceConc!8354) BalanceConc!8354)

(declare-fun singletonSeq!779 (C!7324) BalanceConc!8354)

(assert (=> d!361888 (= (separableTokensPredicate!181 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!117 (rulesRegex!88 thiss!19762 rules!2550) (++!3229 (charsOf!1175 t1!34) (singletonSeq!779 (apply!2729 (charsOf!1175 t2!34) 0))))))))

(declare-fun bs!327999 () Bool)

(assert (= bs!327999 d!361888))

(assert (=> bs!327999 m!1435259))

(assert (=> bs!327999 m!1435259))

(declare-fun m!1435523 () Bool)

(assert (=> bs!327999 m!1435523))

(declare-fun m!1435525 () Bool)

(assert (=> bs!327999 m!1435525))

(declare-fun m!1435527 () Bool)

(assert (=> bs!327999 m!1435527))

(assert (=> bs!327999 m!1435523))

(declare-fun m!1435529 () Bool)

(assert (=> bs!327999 m!1435529))

(assert (=> bs!327999 m!1435529))

(assert (=> bs!327999 m!1435525))

(declare-fun m!1435531 () Bool)

(assert (=> bs!327999 m!1435531))

(assert (=> bs!327999 m!1435257))

(assert (=> bs!327999 m!1435257))

(assert (=> bs!327999 m!1435527))

(assert (=> b!1285184 d!361888))

(declare-fun d!361890 () Bool)

(declare-fun lt!423632 () Bool)

(declare-fun e!824390 () Bool)

(assert (=> d!361890 (= lt!423632 e!824390)))

(declare-fun res!576451 () Bool)

(assert (=> d!361890 (=> (not res!576451) (not e!824390))))

(assert (=> d!361890 (= res!576451 (= (list!4754 (_1!7197 (lex!769 thiss!19762 rules!2550 (print!706 thiss!19762 (singletonSeq!778 t1!34))))) (list!4754 (singletonSeq!778 t1!34))))))

(declare-fun e!824391 () Bool)

(assert (=> d!361890 (= lt!423632 e!824391)))

(declare-fun res!576453 () Bool)

(assert (=> d!361890 (=> (not res!576453) (not e!824391))))

(declare-fun lt!423631 () tuple2!12622)

(assert (=> d!361890 (= res!576453 (= (size!10426 (_1!7197 lt!423631)) 1))))

(assert (=> d!361890 (= lt!423631 (lex!769 thiss!19762 rules!2550 (print!706 thiss!19762 (singletonSeq!778 t1!34))))))

(assert (=> d!361890 (not (isEmpty!7588 rules!2550))))

(assert (=> d!361890 (= (rulesProduceIndividualToken!867 thiss!19762 rules!2550 t1!34) lt!423632)))

(declare-fun b!1285374 () Bool)

(declare-fun res!576452 () Bool)

(assert (=> b!1285374 (=> (not res!576452) (not e!824391))))

(assert (=> b!1285374 (= res!576452 (= (apply!2733 (_1!7197 lt!423631) 0) t1!34))))

(declare-fun b!1285375 () Bool)

(assert (=> b!1285375 (= e!824391 (isEmpty!7591 (_2!7197 lt!423631)))))

(declare-fun b!1285376 () Bool)

(assert (=> b!1285376 (= e!824390 (isEmpty!7591 (_2!7197 (lex!769 thiss!19762 rules!2550 (print!706 thiss!19762 (singletonSeq!778 t1!34))))))))

(assert (= (and d!361890 res!576453) b!1285374))

(assert (= (and b!1285374 res!576452) b!1285375))

(assert (= (and d!361890 res!576451) b!1285376))

(declare-fun m!1435533 () Bool)

(assert (=> d!361890 m!1435533))

(declare-fun m!1435535 () Bool)

(assert (=> d!361890 m!1435535))

(declare-fun m!1435537 () Bool)

(assert (=> d!361890 m!1435537))

(declare-fun m!1435539 () Bool)

(assert (=> d!361890 m!1435539))

(declare-fun m!1435541 () Bool)

(assert (=> d!361890 m!1435541))

(declare-fun m!1435543 () Bool)

(assert (=> d!361890 m!1435543))

(assert (=> d!361890 m!1435269))

(assert (=> d!361890 m!1435541))

(assert (=> d!361890 m!1435537))

(assert (=> d!361890 m!1435541))

(declare-fun m!1435545 () Bool)

(assert (=> b!1285374 m!1435545))

(declare-fun m!1435547 () Bool)

(assert (=> b!1285375 m!1435547))

(assert (=> b!1285376 m!1435541))

(assert (=> b!1285376 m!1435541))

(assert (=> b!1285376 m!1435537))

(assert (=> b!1285376 m!1435537))

(assert (=> b!1285376 m!1435539))

(declare-fun m!1435549 () Bool)

(assert (=> b!1285376 m!1435549))

(assert (=> b!1285174 d!361890))

(declare-fun d!361892 () Bool)

(declare-fun c!211572 () Bool)

(assert (=> d!361892 (= c!211572 ((_ is IntegerValue!6879) (value!72418 t2!34)))))

(declare-fun e!824392 () Bool)

(assert (=> d!361892 (= (inv!21 (value!72418 t2!34)) e!824392)))

(declare-fun b!1285377 () Bool)

(declare-fun e!824393 () Bool)

(assert (=> b!1285377 (= e!824393 (inv!17 (value!72418 t2!34)))))

(declare-fun b!1285378 () Bool)

(declare-fun e!824394 () Bool)

(assert (=> b!1285378 (= e!824394 (inv!15 (value!72418 t2!34)))))

(declare-fun b!1285379 () Bool)

(assert (=> b!1285379 (= e!824392 e!824393)))

(declare-fun c!211573 () Bool)

(assert (=> b!1285379 (= c!211573 ((_ is IntegerValue!6880) (value!72418 t2!34)))))

(declare-fun b!1285380 () Bool)

(assert (=> b!1285380 (= e!824392 (inv!16 (value!72418 t2!34)))))

(declare-fun b!1285381 () Bool)

(declare-fun res!576454 () Bool)

(assert (=> b!1285381 (=> res!576454 e!824394)))

(assert (=> b!1285381 (= res!576454 (not ((_ is IntegerValue!6881) (value!72418 t2!34))))))

(assert (=> b!1285381 (= e!824393 e!824394)))

(assert (= (and d!361892 c!211572) b!1285380))

(assert (= (and d!361892 (not c!211572)) b!1285379))

(assert (= (and b!1285379 c!211573) b!1285377))

(assert (= (and b!1285379 (not c!211573)) b!1285381))

(assert (= (and b!1285381 (not res!576454)) b!1285378))

(declare-fun m!1435551 () Bool)

(assert (=> b!1285377 m!1435551))

(declare-fun m!1435553 () Bool)

(assert (=> b!1285378 m!1435553))

(declare-fun m!1435555 () Bool)

(assert (=> b!1285380 m!1435555))

(assert (=> b!1285180 d!361892))

(declare-fun d!361894 () Bool)

(assert (=> d!361894 (= (inv!17201 (tag!2465 (rule!3942 t1!34))) (= (mod (str.len (value!72417 (tag!2465 (rule!3942 t1!34)))) 2) 0))))

(assert (=> b!1285170 d!361894))

(declare-fun d!361896 () Bool)

(declare-fun res!576455 () Bool)

(declare-fun e!824395 () Bool)

(assert (=> d!361896 (=> (not res!576455) (not e!824395))))

(assert (=> d!361896 (= res!576455 (semiInverseModEq!830 (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (toValue!3382 (transformation!2203 (rule!3942 t1!34)))))))

(assert (=> d!361896 (= (inv!17204 (transformation!2203 (rule!3942 t1!34))) e!824395)))

(declare-fun b!1285382 () Bool)

(assert (=> b!1285382 (= e!824395 (equivClasses!789 (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (toValue!3382 (transformation!2203 (rule!3942 t1!34)))))))

(assert (= (and d!361896 res!576455) b!1285382))

(declare-fun m!1435557 () Bool)

(assert (=> d!361896 m!1435557))

(declare-fun m!1435559 () Bool)

(assert (=> b!1285382 m!1435559))

(assert (=> b!1285170 d!361896))

(declare-fun d!361898 () Bool)

(assert (=> d!361898 (= (inv!17201 (tag!2465 (h!18200 rules!2550))) (= (mod (str.len (value!72417 (tag!2465 (h!18200 rules!2550)))) 2) 0))))

(assert (=> b!1285182 d!361898))

(declare-fun d!361900 () Bool)

(declare-fun res!576456 () Bool)

(declare-fun e!824396 () Bool)

(assert (=> d!361900 (=> (not res!576456) (not e!824396))))

(assert (=> d!361900 (= res!576456 (semiInverseModEq!830 (toChars!3241 (transformation!2203 (h!18200 rules!2550))) (toValue!3382 (transformation!2203 (h!18200 rules!2550)))))))

(assert (=> d!361900 (= (inv!17204 (transformation!2203 (h!18200 rules!2550))) e!824396)))

(declare-fun b!1285383 () Bool)

(assert (=> b!1285383 (= e!824396 (equivClasses!789 (toChars!3241 (transformation!2203 (h!18200 rules!2550))) (toValue!3382 (transformation!2203 (h!18200 rules!2550)))))))

(assert (= (and d!361900 res!576456) b!1285383))

(declare-fun m!1435561 () Bool)

(assert (=> d!361900 m!1435561))

(declare-fun m!1435563 () Bool)

(assert (=> b!1285383 m!1435563))

(assert (=> b!1285182 d!361900))

(declare-fun d!361902 () Bool)

(declare-fun res!576459 () Bool)

(declare-fun e!824399 () Bool)

(assert (=> d!361902 (=> (not res!576459) (not e!824399))))

(declare-fun rulesValid!800 (LexerInterface!1898 List!12865) Bool)

(assert (=> d!361902 (= res!576459 (rulesValid!800 thiss!19762 rules!2550))))

(assert (=> d!361902 (= (rulesInvariant!1768 thiss!19762 rules!2550) e!824399)))

(declare-fun b!1285386 () Bool)

(declare-datatypes ((List!12869 0))(
  ( (Nil!12803) (Cons!12803 (h!18204 String!15701) (t!116798 List!12869)) )
))
(declare-fun noDuplicateTag!800 (LexerInterface!1898 List!12865 List!12869) Bool)

(assert (=> b!1285386 (= e!824399 (noDuplicateTag!800 thiss!19762 rules!2550 Nil!12803))))

(assert (= (and d!361902 res!576459) b!1285386))

(declare-fun m!1435565 () Bool)

(assert (=> d!361902 m!1435565))

(declare-fun m!1435567 () Bool)

(assert (=> b!1285386 m!1435567))

(assert (=> b!1285171 d!361902))

(declare-fun d!361904 () Bool)

(declare-fun res!576464 () Bool)

(declare-fun e!824404 () Bool)

(assert (=> d!361904 (=> res!576464 e!824404)))

(assert (=> d!361904 (= res!576464 (not ((_ is Cons!12799) rules!2550)))))

(assert (=> d!361904 (= (sepAndNonSepRulesDisjointChars!576 rules!2550 rules!2550) e!824404)))

(declare-fun b!1285391 () Bool)

(declare-fun e!824405 () Bool)

(assert (=> b!1285391 (= e!824404 e!824405)))

(declare-fun res!576465 () Bool)

(assert (=> b!1285391 (=> (not res!576465) (not e!824405))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!274 (Rule!4206 List!12865) Bool)

(assert (=> b!1285391 (= res!576465 (ruleDisjointCharsFromAllFromOtherType!274 (h!18200 rules!2550) rules!2550))))

(declare-fun b!1285392 () Bool)

(assert (=> b!1285392 (= e!824405 (sepAndNonSepRulesDisjointChars!576 rules!2550 (t!116760 rules!2550)))))

(assert (= (and d!361904 (not res!576464)) b!1285391))

(assert (= (and b!1285391 res!576465) b!1285392))

(declare-fun m!1435569 () Bool)

(assert (=> b!1285391 m!1435569))

(declare-fun m!1435571 () Bool)

(assert (=> b!1285392 m!1435571))

(assert (=> b!1285177 d!361904))

(declare-fun d!361906 () Bool)

(declare-fun lt!423635 () Int)

(assert (=> d!361906 (= lt!423635 (size!10427 (list!4751 lt!423587)))))

(declare-fun size!10428 (Conc!4207) Int)

(assert (=> d!361906 (= lt!423635 (size!10428 (c!211549 lt!423587)))))

(assert (=> d!361906 (= (size!10422 lt!423587) lt!423635)))

(declare-fun bs!328000 () Bool)

(assert (= bs!328000 d!361906))

(assert (=> bs!328000 m!1435407))

(assert (=> bs!328000 m!1435407))

(declare-fun m!1435573 () Bool)

(assert (=> bs!328000 m!1435573))

(declare-fun m!1435575 () Bool)

(assert (=> bs!328000 m!1435575))

(assert (=> b!1285178 d!361906))

(declare-fun d!361908 () Bool)

(declare-fun lt!423636 () BalanceConc!8354)

(assert (=> d!361908 (= (list!4751 lt!423636) (originalCharacters!3065 t2!34))))

(assert (=> d!361908 (= lt!423636 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (value!72418 t2!34)))))

(assert (=> d!361908 (= (charsOf!1175 t2!34) lt!423636)))

(declare-fun b_lambda!36629 () Bool)

(assert (=> (not b_lambda!36629) (not d!361908)))

(assert (=> d!361908 t!116775))

(declare-fun b_and!85433 () Bool)

(assert (= b_and!85405 (and (=> t!116775 result!83670) b_and!85433)))

(assert (=> d!361908 t!116777))

(declare-fun b_and!85435 () Bool)

(assert (= b_and!85407 (and (=> t!116777 result!83672) b_and!85435)))

(assert (=> d!361908 t!116779))

(declare-fun b_and!85437 () Bool)

(assert (= b_and!85409 (and (=> t!116779 result!83674) b_and!85437)))

(declare-fun m!1435577 () Bool)

(assert (=> d!361908 m!1435577))

(assert (=> d!361908 m!1435369))

(assert (=> b!1285178 d!361908))

(declare-fun b!1285397 () Bool)

(declare-fun e!824408 () Bool)

(declare-fun tp_is_empty!6543 () Bool)

(declare-fun tp!374222 () Bool)

(assert (=> b!1285397 (= e!824408 (and tp_is_empty!6543 tp!374222))))

(assert (=> b!1285180 (= tp!374166 e!824408)))

(assert (= (and b!1285180 ((_ is Cons!12798) (originalCharacters!3065 t2!34))) b!1285397))

(declare-fun b!1285398 () Bool)

(declare-fun e!824409 () Bool)

(declare-fun tp!374223 () Bool)

(assert (=> b!1285398 (= e!824409 (and tp_is_empty!6543 tp!374223))))

(assert (=> b!1285185 (= tp!374161 e!824409)))

(assert (= (and b!1285185 ((_ is Cons!12798) (originalCharacters!3065 t1!34))) b!1285398))

(declare-fun e!824412 () Bool)

(assert (=> b!1285170 (= tp!374162 e!824412)))

(declare-fun b!1285410 () Bool)

(declare-fun tp!374237 () Bool)

(declare-fun tp!374235 () Bool)

(assert (=> b!1285410 (= e!824412 (and tp!374237 tp!374235))))

(declare-fun b!1285409 () Bool)

(assert (=> b!1285409 (= e!824412 tp_is_empty!6543)))

(declare-fun b!1285411 () Bool)

(declare-fun tp!374236 () Bool)

(assert (=> b!1285411 (= e!824412 tp!374236)))

(declare-fun b!1285412 () Bool)

(declare-fun tp!374238 () Bool)

(declare-fun tp!374234 () Bool)

(assert (=> b!1285412 (= e!824412 (and tp!374238 tp!374234))))

(assert (= (and b!1285170 ((_ is ElementMatch!3517) (regex!2203 (rule!3942 t1!34)))) b!1285409))

(assert (= (and b!1285170 ((_ is Concat!5811) (regex!2203 (rule!3942 t1!34)))) b!1285410))

(assert (= (and b!1285170 ((_ is Star!3517) (regex!2203 (rule!3942 t1!34)))) b!1285411))

(assert (= (and b!1285170 ((_ is Union!3517) (regex!2203 (rule!3942 t1!34)))) b!1285412))

(declare-fun e!824413 () Bool)

(assert (=> b!1285175 (= tp!374160 e!824413)))

(declare-fun b!1285414 () Bool)

(declare-fun tp!374242 () Bool)

(declare-fun tp!374240 () Bool)

(assert (=> b!1285414 (= e!824413 (and tp!374242 tp!374240))))

(declare-fun b!1285413 () Bool)

(assert (=> b!1285413 (= e!824413 tp_is_empty!6543)))

(declare-fun b!1285415 () Bool)

(declare-fun tp!374241 () Bool)

(assert (=> b!1285415 (= e!824413 tp!374241)))

(declare-fun b!1285416 () Bool)

(declare-fun tp!374243 () Bool)

(declare-fun tp!374239 () Bool)

(assert (=> b!1285416 (= e!824413 (and tp!374243 tp!374239))))

(assert (= (and b!1285175 ((_ is ElementMatch!3517) (regex!2203 (rule!3942 t2!34)))) b!1285413))

(assert (= (and b!1285175 ((_ is Concat!5811) (regex!2203 (rule!3942 t2!34)))) b!1285414))

(assert (= (and b!1285175 ((_ is Star!3517) (regex!2203 (rule!3942 t2!34)))) b!1285415))

(assert (= (and b!1285175 ((_ is Union!3517) (regex!2203 (rule!3942 t2!34)))) b!1285416))

(declare-fun b!1285427 () Bool)

(declare-fun b_free!30211 () Bool)

(declare-fun b_next!30915 () Bool)

(assert (=> b!1285427 (= b_free!30211 (not b_next!30915))))

(declare-fun tp!374255 () Bool)

(declare-fun b_and!85439 () Bool)

(assert (=> b!1285427 (= tp!374255 b_and!85439)))

(declare-fun b_free!30213 () Bool)

(declare-fun b_next!30917 () Bool)

(assert (=> b!1285427 (= b_free!30213 (not b_next!30917))))

(declare-fun tb!69117 () Bool)

(declare-fun t!116794 () Bool)

(assert (=> (and b!1285427 (= (toChars!3241 (transformation!2203 (h!18200 (t!116760 rules!2550)))) (toChars!3241 (transformation!2203 (rule!3942 t1!34)))) t!116794) tb!69117))

(declare-fun result!83698 () Bool)

(assert (= result!83698 result!83662))

(assert (=> b!1285240 t!116794))

(declare-fun t!116796 () Bool)

(declare-fun tb!69119 () Bool)

(assert (=> (and b!1285427 (= (toChars!3241 (transformation!2203 (h!18200 (t!116760 rules!2550)))) (toChars!3241 (transformation!2203 (rule!3942 t2!34)))) t!116796) tb!69119))

(declare-fun result!83700 () Bool)

(assert (= result!83700 result!83670))

(assert (=> b!1285247 t!116796))

(assert (=> d!361850 t!116794))

(assert (=> d!361908 t!116796))

(declare-fun tp!374254 () Bool)

(declare-fun b_and!85441 () Bool)

(assert (=> b!1285427 (= tp!374254 (and (=> t!116794 result!83698) (=> t!116796 result!83700) b_and!85441))))

(declare-fun e!824424 () Bool)

(assert (=> b!1285427 (= e!824424 (and tp!374255 tp!374254))))

(declare-fun e!824423 () Bool)

(declare-fun b!1285426 () Bool)

(declare-fun tp!374252 () Bool)

(assert (=> b!1285426 (= e!824423 (and tp!374252 (inv!17201 (tag!2465 (h!18200 (t!116760 rules!2550)))) (inv!17204 (transformation!2203 (h!18200 (t!116760 rules!2550)))) e!824424))))

(declare-fun b!1285425 () Bool)

(declare-fun e!824422 () Bool)

(declare-fun tp!374253 () Bool)

(assert (=> b!1285425 (= e!824422 (and e!824423 tp!374253))))

(assert (=> b!1285176 (= tp!374168 e!824422)))

(assert (= b!1285426 b!1285427))

(assert (= b!1285425 b!1285426))

(assert (= (and b!1285176 ((_ is Cons!12799) (t!116760 rules!2550))) b!1285425))

(declare-fun m!1435579 () Bool)

(assert (=> b!1285426 m!1435579))

(declare-fun m!1435581 () Bool)

(assert (=> b!1285426 m!1435581))

(declare-fun e!824426 () Bool)

(assert (=> b!1285182 (= tp!374164 e!824426)))

(declare-fun b!1285429 () Bool)

(declare-fun tp!374259 () Bool)

(declare-fun tp!374257 () Bool)

(assert (=> b!1285429 (= e!824426 (and tp!374259 tp!374257))))

(declare-fun b!1285428 () Bool)

(assert (=> b!1285428 (= e!824426 tp_is_empty!6543)))

(declare-fun b!1285430 () Bool)

(declare-fun tp!374258 () Bool)

(assert (=> b!1285430 (= e!824426 tp!374258)))

(declare-fun b!1285431 () Bool)

(declare-fun tp!374260 () Bool)

(declare-fun tp!374256 () Bool)

(assert (=> b!1285431 (= e!824426 (and tp!374260 tp!374256))))

(assert (= (and b!1285182 ((_ is ElementMatch!3517) (regex!2203 (h!18200 rules!2550)))) b!1285428))

(assert (= (and b!1285182 ((_ is Concat!5811) (regex!2203 (h!18200 rules!2550)))) b!1285429))

(assert (= (and b!1285182 ((_ is Star!3517) (regex!2203 (h!18200 rules!2550)))) b!1285430))

(assert (= (and b!1285182 ((_ is Union!3517) (regex!2203 (h!18200 rules!2550)))) b!1285431))

(declare-fun b_lambda!36631 () Bool)

(assert (= b_lambda!36611 (or (and b!1285181 b_free!30197) (and b!1285173 b_free!30201 (= (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (toChars!3241 (transformation!2203 (rule!3942 t2!34))))) (and b!1285187 b_free!30205 (= (toChars!3241 (transformation!2203 (h!18200 rules!2550))) (toChars!3241 (transformation!2203 (rule!3942 t2!34))))) (and b!1285427 b_free!30213 (= (toChars!3241 (transformation!2203 (h!18200 (t!116760 rules!2550)))) (toChars!3241 (transformation!2203 (rule!3942 t2!34))))) b_lambda!36631)))

(declare-fun b_lambda!36633 () Bool)

(assert (= b_lambda!36629 (or (and b!1285181 b_free!30197) (and b!1285173 b_free!30201 (= (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (toChars!3241 (transformation!2203 (rule!3942 t2!34))))) (and b!1285187 b_free!30205 (= (toChars!3241 (transformation!2203 (h!18200 rules!2550))) (toChars!3241 (transformation!2203 (rule!3942 t2!34))))) (and b!1285427 b_free!30213 (= (toChars!3241 (transformation!2203 (h!18200 (t!116760 rules!2550)))) (toChars!3241 (transformation!2203 (rule!3942 t2!34))))) b_lambda!36633)))

(declare-fun b_lambda!36635 () Bool)

(assert (= b_lambda!36613 (or (and b!1285181 b_free!30197 (= (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (toChars!3241 (transformation!2203 (rule!3942 t1!34))))) (and b!1285173 b_free!30201) (and b!1285187 b_free!30205 (= (toChars!3241 (transformation!2203 (h!18200 rules!2550))) (toChars!3241 (transformation!2203 (rule!3942 t1!34))))) (and b!1285427 b_free!30213 (= (toChars!3241 (transformation!2203 (h!18200 (t!116760 rules!2550)))) (toChars!3241 (transformation!2203 (rule!3942 t1!34))))) b_lambda!36635)))

(declare-fun b_lambda!36637 () Bool)

(assert (= b_lambda!36609 (or (and b!1285181 b_free!30197 (= (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (toChars!3241 (transformation!2203 (rule!3942 t1!34))))) (and b!1285173 b_free!30201) (and b!1285187 b_free!30205 (= (toChars!3241 (transformation!2203 (h!18200 rules!2550))) (toChars!3241 (transformation!2203 (rule!3942 t1!34))))) (and b!1285427 b_free!30213 (= (toChars!3241 (transformation!2203 (h!18200 (t!116760 rules!2550)))) (toChars!3241 (transformation!2203 (rule!3942 t1!34))))) b_lambda!36637)))

(check-sat (not b!1285264) (not b!1285240) b_and!85375 (not b!1285375) (not tb!69101) (not b!1285230) (not b!1285247) (not d!361896) (not d!361902) (not b!1285378) (not d!361832) (not b!1285377) (not b!1285414) (not b!1285374) (not b!1285274) (not d!361842) (not b!1285398) b_and!85433 (not b!1285425) (not d!361826) (not b!1285430) (not b_lambda!36631) (not b!1285371) b_and!85437 (not d!361900) b_and!85379 b_and!85435 (not b_next!30903) (not d!361908) (not d!361834) (not d!361838) (not tb!69095) (not b!1285211) (not b!1285232) (not b!1285391) (not b!1285248) (not b_next!30915) (not b!1285249) (not b!1285380) (not b!1285397) (not b_next!30899) (not d!361906) (not b!1285415) (not d!361888) (not d!361850) tp_is_empty!6543 (not b_next!30909) (not b!1285386) (not b!1285213) (not b!1285410) (not b!1285231) (not b!1285412) b_and!85439 (not b!1285235) (not b!1285246) (not b!1285376) (not b!1285429) (not b_next!30917) (not b_lambda!36637) (not b_lambda!36633) (not b!1285411) (not d!361852) (not b!1285370) (not b!1285263) (not d!361836) (not b!1285210) (not b!1285431) (not b_lambda!36635) (not b_next!30907) (not b!1285382) b_and!85383 (not d!361890) (not b_next!30901) (not b!1285426) (not d!361844) (not b!1285383) (not b!1285392) (not b!1285241) (not b_next!30905) (not b!1285416) b_and!85441)
(check-sat b_and!85433 b_and!85437 (not b_next!30915) (not b_next!30899) (not b_next!30909) b_and!85439 (not b_next!30917) b_and!85375 b_and!85379 b_and!85435 (not b_next!30903) (not b_next!30907) b_and!85383 (not b_next!30901) (not b_next!30905) b_and!85441)
(get-model)

(declare-fun d!361934 () Bool)

(declare-fun lt!423643 () Int)

(assert (=> d!361934 (>= lt!423643 0)))

(declare-fun e!824442 () Int)

(assert (=> d!361934 (= lt!423643 e!824442)))

(declare-fun c!211582 () Bool)

(assert (=> d!361934 (= c!211582 ((_ is Nil!12798) (originalCharacters!3065 t1!34)))))

(assert (=> d!361934 (= (size!10427 (originalCharacters!3065 t1!34)) lt!423643)))

(declare-fun b!1285460 () Bool)

(assert (=> b!1285460 (= e!824442 0)))

(declare-fun b!1285461 () Bool)

(assert (=> b!1285461 (= e!824442 (+ 1 (size!10427 (t!116759 (originalCharacters!3065 t1!34)))))))

(assert (= (and d!361934 c!211582) b!1285460))

(assert (= (and d!361934 (not c!211582)) b!1285461))

(declare-fun m!1435619 () Bool)

(assert (=> b!1285461 m!1435619))

(assert (=> b!1285241 d!361934))

(declare-fun b!1285473 () Bool)

(declare-fun lt!423646 () BalanceConc!8354)

(declare-fun e!824445 () Bool)

(assert (=> b!1285473 (= e!824445 (= (list!4751 lt!423646) (++!3227 (list!4751 (charsOf!1175 t1!34)) (list!4751 (singletonSeq!779 (apply!2729 (charsOf!1175 t2!34) 0))))))))

(declare-fun d!361936 () Bool)

(assert (=> d!361936 e!824445))

(declare-fun res!576488 () Bool)

(assert (=> d!361936 (=> (not res!576488) (not e!824445))))

(declare-fun appendAssocInst!236 (Conc!4207 Conc!4207) Bool)

(assert (=> d!361936 (= res!576488 (appendAssocInst!236 (c!211549 (charsOf!1175 t1!34)) (c!211549 (singletonSeq!779 (apply!2729 (charsOf!1175 t2!34) 0)))))))

(declare-fun ++!3230 (Conc!4207 Conc!4207) Conc!4207)

(assert (=> d!361936 (= lt!423646 (BalanceConc!8355 (++!3230 (c!211549 (charsOf!1175 t1!34)) (c!211549 (singletonSeq!779 (apply!2729 (charsOf!1175 t2!34) 0))))))))

(assert (=> d!361936 (= (++!3229 (charsOf!1175 t1!34) (singletonSeq!779 (apply!2729 (charsOf!1175 t2!34) 0))) lt!423646)))

(declare-fun b!1285470 () Bool)

(declare-fun res!576489 () Bool)

(assert (=> b!1285470 (=> (not res!576489) (not e!824445))))

(declare-fun isBalanced!1226 (Conc!4207) Bool)

(assert (=> b!1285470 (= res!576489 (isBalanced!1226 (++!3230 (c!211549 (charsOf!1175 t1!34)) (c!211549 (singletonSeq!779 (apply!2729 (charsOf!1175 t2!34) 0))))))))

(declare-fun b!1285471 () Bool)

(declare-fun res!576490 () Bool)

(assert (=> b!1285471 (=> (not res!576490) (not e!824445))))

(declare-fun height!596 (Conc!4207) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1285471 (= res!576490 (<= (height!596 (++!3230 (c!211549 (charsOf!1175 t1!34)) (c!211549 (singletonSeq!779 (apply!2729 (charsOf!1175 t2!34) 0))))) (+ (max!0 (height!596 (c!211549 (charsOf!1175 t1!34))) (height!596 (c!211549 (singletonSeq!779 (apply!2729 (charsOf!1175 t2!34) 0))))) 1)))))

(declare-fun b!1285472 () Bool)

(declare-fun res!576487 () Bool)

(assert (=> b!1285472 (=> (not res!576487) (not e!824445))))

(assert (=> b!1285472 (= res!576487 (>= (height!596 (++!3230 (c!211549 (charsOf!1175 t1!34)) (c!211549 (singletonSeq!779 (apply!2729 (charsOf!1175 t2!34) 0))))) (max!0 (height!596 (c!211549 (charsOf!1175 t1!34))) (height!596 (c!211549 (singletonSeq!779 (apply!2729 (charsOf!1175 t2!34) 0)))))))))

(assert (= (and d!361936 res!576488) b!1285470))

(assert (= (and b!1285470 res!576489) b!1285471))

(assert (= (and b!1285471 res!576490) b!1285472))

(assert (= (and b!1285472 res!576487) b!1285473))

(declare-fun m!1435621 () Bool)

(assert (=> b!1285473 m!1435621))

(assert (=> b!1285473 m!1435259))

(assert (=> b!1285473 m!1435263))

(assert (=> b!1285473 m!1435523))

(declare-fun m!1435623 () Bool)

(assert (=> b!1285473 m!1435623))

(assert (=> b!1285473 m!1435263))

(assert (=> b!1285473 m!1435623))

(declare-fun m!1435625 () Bool)

(assert (=> b!1285473 m!1435625))

(declare-fun m!1435627 () Bool)

(assert (=> b!1285471 m!1435627))

(declare-fun m!1435629 () Bool)

(assert (=> b!1285471 m!1435629))

(declare-fun m!1435631 () Bool)

(assert (=> b!1285471 m!1435631))

(assert (=> b!1285471 m!1435627))

(declare-fun m!1435633 () Bool)

(assert (=> b!1285471 m!1435633))

(assert (=> b!1285471 m!1435629))

(assert (=> b!1285471 m!1435631))

(declare-fun m!1435635 () Bool)

(assert (=> b!1285471 m!1435635))

(declare-fun m!1435637 () Bool)

(assert (=> d!361936 m!1435637))

(assert (=> d!361936 m!1435627))

(assert (=> b!1285472 m!1435627))

(assert (=> b!1285472 m!1435629))

(assert (=> b!1285472 m!1435631))

(assert (=> b!1285472 m!1435627))

(assert (=> b!1285472 m!1435633))

(assert (=> b!1285472 m!1435629))

(assert (=> b!1285472 m!1435631))

(assert (=> b!1285472 m!1435635))

(assert (=> b!1285470 m!1435627))

(assert (=> b!1285470 m!1435627))

(declare-fun m!1435639 () Bool)

(assert (=> b!1285470 m!1435639))

(assert (=> d!361888 d!361936))

(declare-fun d!361938 () Bool)

(declare-fun lt!423667 () Bool)

(declare-fun prefixMatch!29 (Regex!3517 List!12864) Bool)

(assert (=> d!361938 (= lt!423667 (prefixMatch!29 (rulesRegex!88 thiss!19762 rules!2550) (list!4751 (++!3229 (charsOf!1175 t1!34) (singletonSeq!779 (apply!2729 (charsOf!1175 t2!34) 0))))))))

(declare-datatypes ((List!12870 0))(
  ( (Nil!12804) (Cons!12804 (h!18205 Regex!3517) (t!116817 List!12870)) )
))
(declare-datatypes ((Context!1116 0))(
  ( (Context!1117 (exprs!1058 List!12870)) )
))
(declare-fun prefixMatchZipperSequence!118 ((InoxSet Context!1116) BalanceConc!8354 Int) Bool)

(declare-fun focus!49 (Regex!3517) (InoxSet Context!1116))

(assert (=> d!361938 (= lt!423667 (prefixMatchZipperSequence!118 (focus!49 (rulesRegex!88 thiss!19762 rules!2550)) (++!3229 (charsOf!1175 t1!34) (singletonSeq!779 (apply!2729 (charsOf!1175 t2!34) 0))) 0))))

(declare-datatypes ((Unit!18994 0))(
  ( (Unit!18995) )
))
(declare-fun lt!423669 () Unit!18994)

(declare-fun lt!423670 () Unit!18994)

(assert (=> d!361938 (= lt!423669 lt!423670)))

(declare-fun lt!423671 () (InoxSet Context!1116))

(declare-fun lt!423675 () List!12864)

(declare-fun prefixMatchZipper!29 ((InoxSet Context!1116) List!12864) Bool)

(assert (=> d!361938 (= (prefixMatch!29 (rulesRegex!88 thiss!19762 rules!2550) lt!423675) (prefixMatchZipper!29 lt!423671 lt!423675))))

(declare-datatypes ((List!12871 0))(
  ( (Nil!12805) (Cons!12805 (h!18206 Context!1116) (t!116818 List!12871)) )
))
(declare-fun lt!423673 () List!12871)

(declare-fun prefixMatchZipperRegexEquiv!29 ((InoxSet Context!1116) List!12871 Regex!3517 List!12864) Unit!18994)

(assert (=> d!361938 (= lt!423670 (prefixMatchZipperRegexEquiv!29 lt!423671 lt!423673 (rulesRegex!88 thiss!19762 rules!2550) lt!423675))))

(assert (=> d!361938 (= lt!423675 (list!4751 (++!3229 (charsOf!1175 t1!34) (singletonSeq!779 (apply!2729 (charsOf!1175 t2!34) 0)))))))

(declare-fun toList!713 ((InoxSet Context!1116)) List!12871)

(assert (=> d!361938 (= lt!423673 (toList!713 (focus!49 (rulesRegex!88 thiss!19762 rules!2550))))))

(assert (=> d!361938 (= lt!423671 (focus!49 (rulesRegex!88 thiss!19762 rules!2550)))))

(declare-fun lt!423668 () Unit!18994)

(declare-fun lt!423672 () Unit!18994)

(assert (=> d!361938 (= lt!423668 lt!423672)))

(declare-fun lt!423676 () (InoxSet Context!1116))

(declare-fun lt!423674 () Int)

(declare-fun dropList!339 (BalanceConc!8354 Int) List!12864)

(assert (=> d!361938 (= (prefixMatchZipper!29 lt!423676 (dropList!339 (++!3229 (charsOf!1175 t1!34) (singletonSeq!779 (apply!2729 (charsOf!1175 t2!34) 0))) lt!423674)) (prefixMatchZipperSequence!118 lt!423676 (++!3229 (charsOf!1175 t1!34) (singletonSeq!779 (apply!2729 (charsOf!1175 t2!34) 0))) lt!423674))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!29 ((InoxSet Context!1116) BalanceConc!8354 Int) Unit!18994)

(assert (=> d!361938 (= lt!423672 (lemmaprefixMatchZipperSequenceEquivalent!29 lt!423676 (++!3229 (charsOf!1175 t1!34) (singletonSeq!779 (apply!2729 (charsOf!1175 t2!34) 0))) lt!423674))))

(assert (=> d!361938 (= lt!423674 0)))

(assert (=> d!361938 (= lt!423676 (focus!49 (rulesRegex!88 thiss!19762 rules!2550)))))

(declare-fun validRegex!1510 (Regex!3517) Bool)

(assert (=> d!361938 (validRegex!1510 (rulesRegex!88 thiss!19762 rules!2550))))

(assert (=> d!361938 (= (prefixMatchZipperSequence!117 (rulesRegex!88 thiss!19762 rules!2550) (++!3229 (charsOf!1175 t1!34) (singletonSeq!779 (apply!2729 (charsOf!1175 t2!34) 0)))) lt!423667)))

(declare-fun bs!328007 () Bool)

(assert (= bs!328007 d!361938))

(declare-fun m!1435641 () Bool)

(assert (=> bs!328007 m!1435641))

(declare-fun m!1435643 () Bool)

(assert (=> bs!328007 m!1435643))

(assert (=> bs!328007 m!1435641))

(assert (=> bs!328007 m!1435525))

(declare-fun m!1435645 () Bool)

(assert (=> bs!328007 m!1435645))

(assert (=> bs!328007 m!1435529))

(assert (=> bs!328007 m!1435641))

(assert (=> bs!328007 m!1435525))

(declare-fun m!1435647 () Bool)

(assert (=> bs!328007 m!1435647))

(assert (=> bs!328007 m!1435529))

(assert (=> bs!328007 m!1435647))

(declare-fun m!1435649 () Bool)

(assert (=> bs!328007 m!1435649))

(assert (=> bs!328007 m!1435525))

(declare-fun m!1435651 () Bool)

(assert (=> bs!328007 m!1435651))

(assert (=> bs!328007 m!1435529))

(declare-fun m!1435653 () Bool)

(assert (=> bs!328007 m!1435653))

(assert (=> bs!328007 m!1435529))

(declare-fun m!1435655 () Bool)

(assert (=> bs!328007 m!1435655))

(assert (=> bs!328007 m!1435529))

(declare-fun m!1435657 () Bool)

(assert (=> bs!328007 m!1435657))

(declare-fun m!1435659 () Bool)

(assert (=> bs!328007 m!1435659))

(declare-fun m!1435661 () Bool)

(assert (=> bs!328007 m!1435661))

(assert (=> bs!328007 m!1435525))

(assert (=> bs!328007 m!1435659))

(declare-fun m!1435663 () Bool)

(assert (=> bs!328007 m!1435663))

(assert (=> bs!328007 m!1435525))

(declare-fun m!1435665 () Bool)

(assert (=> bs!328007 m!1435665))

(assert (=> d!361888 d!361938))

(declare-fun d!361940 () Bool)

(declare-fun e!824454 () Bool)

(assert (=> d!361940 e!824454))

(declare-fun res!576499 () Bool)

(assert (=> d!361940 (=> (not res!576499) (not e!824454))))

(declare-fun lt!423681 () BalanceConc!8354)

(assert (=> d!361940 (= res!576499 (= (list!4751 lt!423681) (Cons!12798 (apply!2729 (charsOf!1175 t2!34) 0) Nil!12798)))))

(declare-fun singleton!332 (C!7324) BalanceConc!8354)

(assert (=> d!361940 (= lt!423681 (singleton!332 (apply!2729 (charsOf!1175 t2!34) 0)))))

(assert (=> d!361940 (= (singletonSeq!779 (apply!2729 (charsOf!1175 t2!34) 0)) lt!423681)))

(declare-fun b!1285486 () Bool)

(assert (=> b!1285486 (= e!824454 (isBalanced!1226 (c!211549 lt!423681)))))

(assert (= (and d!361940 res!576499) b!1285486))

(declare-fun m!1435667 () Bool)

(assert (=> d!361940 m!1435667))

(assert (=> d!361940 m!1435527))

(declare-fun m!1435669 () Bool)

(assert (=> d!361940 m!1435669))

(declare-fun m!1435671 () Bool)

(assert (=> b!1285486 m!1435671))

(assert (=> d!361888 d!361940))

(declare-fun d!361942 () Bool)

(declare-fun lt!423685 () Unit!18994)

(declare-fun lemma!31 (List!12865 LexerInterface!1898 List!12865) Unit!18994)

(assert (=> d!361942 (= lt!423685 (lemma!31 rules!2550 thiss!19762 rules!2550))))

(declare-fun lambda!50388 () Int)

(declare-fun generalisedUnion!35 (List!12870) Regex!3517)

(declare-fun map!2786 (List!12865 Int) List!12870)

(assert (=> d!361942 (= (rulesRegex!88 thiss!19762 rules!2550) (generalisedUnion!35 (map!2786 rules!2550 lambda!50388)))))

(declare-fun bs!328008 () Bool)

(assert (= bs!328008 d!361942))

(declare-fun m!1435691 () Bool)

(assert (=> bs!328008 m!1435691))

(declare-fun m!1435693 () Bool)

(assert (=> bs!328008 m!1435693))

(assert (=> bs!328008 m!1435693))

(declare-fun m!1435695 () Bool)

(assert (=> bs!328008 m!1435695))

(assert (=> d!361888 d!361942))

(declare-fun d!361946 () Bool)

(declare-fun lt!423686 () C!7324)

(assert (=> d!361946 (= lt!423686 (apply!2734 (list!4751 (charsOf!1175 t2!34)) 0))))

(assert (=> d!361946 (= lt!423686 (apply!2735 (c!211549 (charsOf!1175 t2!34)) 0))))

(declare-fun e!824458 () Bool)

(assert (=> d!361946 e!824458))

(declare-fun res!576503 () Bool)

(assert (=> d!361946 (=> (not res!576503) (not e!824458))))

(assert (=> d!361946 (= res!576503 (<= 0 0))))

(assert (=> d!361946 (= (apply!2729 (charsOf!1175 t2!34) 0) lt!423686)))

(declare-fun b!1285492 () Bool)

(assert (=> b!1285492 (= e!824458 (< 0 (size!10422 (charsOf!1175 t2!34))))))

(assert (= (and d!361946 res!576503) b!1285492))

(assert (=> d!361946 m!1435257))

(declare-fun m!1435697 () Bool)

(assert (=> d!361946 m!1435697))

(assert (=> d!361946 m!1435697))

(declare-fun m!1435699 () Bool)

(assert (=> d!361946 m!1435699))

(declare-fun m!1435701 () Bool)

(assert (=> d!361946 m!1435701))

(assert (=> b!1285492 m!1435257))

(declare-fun m!1435703 () Bool)

(assert (=> b!1285492 m!1435703))

(assert (=> d!361888 d!361946))

(assert (=> d!361888 d!361850))

(assert (=> d!361888 d!361908))

(declare-fun d!361948 () Bool)

(declare-fun lt!423689 () Token!4068)

(declare-fun apply!2737 (List!12868 Int) Token!4068)

(assert (=> d!361948 (= lt!423689 (apply!2737 (list!4754 (_1!7197 lt!423601)) 0))))

(declare-fun apply!2738 (Conc!4209 Int) Token!4068)

(assert (=> d!361948 (= lt!423689 (apply!2738 (c!211574 (_1!7197 lt!423601)) 0))))

(declare-fun e!824461 () Bool)

(assert (=> d!361948 e!824461))

(declare-fun res!576506 () Bool)

(assert (=> d!361948 (=> (not res!576506) (not e!824461))))

(assert (=> d!361948 (= res!576506 (<= 0 0))))

(assert (=> d!361948 (= (apply!2733 (_1!7197 lt!423601) 0) lt!423689)))

(declare-fun b!1285495 () Bool)

(assert (=> b!1285495 (= e!824461 (< 0 (size!10426 (_1!7197 lt!423601))))))

(assert (= (and d!361948 res!576506) b!1285495))

(declare-fun m!1435705 () Bool)

(assert (=> d!361948 m!1435705))

(assert (=> d!361948 m!1435705))

(declare-fun m!1435707 () Bool)

(assert (=> d!361948 m!1435707))

(declare-fun m!1435709 () Bool)

(assert (=> d!361948 m!1435709))

(assert (=> b!1285495 m!1435331))

(assert (=> b!1285230 d!361948))

(declare-fun d!361950 () Bool)

(assert (=> d!361950 (= (list!4751 lt!423636) (list!4755 (c!211549 lt!423636)))))

(declare-fun bs!328009 () Bool)

(assert (= bs!328009 d!361950))

(declare-fun m!1435711 () Bool)

(assert (=> bs!328009 m!1435711))

(assert (=> d!361908 d!361950))

(declare-fun d!361952 () Bool)

(declare-fun c!211592 () Bool)

(assert (=> d!361952 (= c!211592 ((_ is Node!4207) (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (value!72418 t1!34)))))))

(declare-fun e!824466 () Bool)

(assert (=> d!361952 (= (inv!17208 (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (value!72418 t1!34)))) e!824466)))

(declare-fun b!1285502 () Bool)

(declare-fun inv!17210 (Conc!4207) Bool)

(assert (=> b!1285502 (= e!824466 (inv!17210 (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (value!72418 t1!34)))))))

(declare-fun b!1285503 () Bool)

(declare-fun e!824467 () Bool)

(assert (=> b!1285503 (= e!824466 e!824467)))

(declare-fun res!576509 () Bool)

(assert (=> b!1285503 (= res!576509 (not ((_ is Leaf!6505) (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (value!72418 t1!34))))))))

(assert (=> b!1285503 (=> res!576509 e!824467)))

(declare-fun b!1285504 () Bool)

(declare-fun inv!17211 (Conc!4207) Bool)

(assert (=> b!1285504 (= e!824467 (inv!17211 (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (value!72418 t1!34)))))))

(assert (= (and d!361952 c!211592) b!1285502))

(assert (= (and d!361952 (not c!211592)) b!1285503))

(assert (= (and b!1285503 (not res!576509)) b!1285504))

(declare-fun m!1435719 () Bool)

(assert (=> b!1285502 m!1435719))

(declare-fun m!1435721 () Bool)

(assert (=> b!1285504 m!1435721))

(assert (=> b!1285246 d!361952))

(declare-fun d!361956 () Bool)

(declare-fun res!576516 () Bool)

(declare-fun e!824474 () Bool)

(assert (=> d!361956 (=> res!576516 e!824474)))

(assert (=> d!361956 (= res!576516 ((_ is Nil!12799) rules!2550))))

(assert (=> d!361956 (= (forall!3233 rules!2550 lambda!50379) e!824474)))

(declare-fun b!1285511 () Bool)

(declare-fun e!824475 () Bool)

(assert (=> b!1285511 (= e!824474 e!824475)))

(declare-fun res!576517 () Bool)

(assert (=> b!1285511 (=> (not res!576517) (not e!824475))))

(declare-fun dynLambda!5574 (Int Rule!4206) Bool)

(assert (=> b!1285511 (= res!576517 (dynLambda!5574 lambda!50379 (h!18200 rules!2550)))))

(declare-fun b!1285512 () Bool)

(assert (=> b!1285512 (= e!824475 (forall!3233 (t!116760 rules!2550) lambda!50379))))

(assert (= (and d!361956 (not res!576516)) b!1285511))

(assert (= (and b!1285511 res!576517) b!1285512))

(declare-fun b_lambda!36639 () Bool)

(assert (=> (not b_lambda!36639) (not b!1285511)))

(declare-fun m!1435729 () Bool)

(assert (=> b!1285511 m!1435729))

(declare-fun m!1435731 () Bool)

(assert (=> b!1285512 m!1435731))

(assert (=> d!361852 d!361956))

(declare-fun b!1285514 () Bool)

(declare-fun e!824477 () List!12864)

(assert (=> b!1285514 (= e!824477 (Cons!12798 (apply!2729 lt!423587 0) Nil!12798))))

(declare-fun d!361960 () Bool)

(declare-fun e!824478 () Bool)

(assert (=> d!361960 e!824478))

(declare-fun res!576520 () Bool)

(assert (=> d!361960 (=> (not res!576520) (not e!824478))))

(declare-fun lt!423696 () List!12864)

(assert (=> d!361960 (= res!576520 (= (content!1811 lt!423696) ((_ map or) (content!1811 (t!116759 (list!4751 (charsOf!1175 t1!34)))) (content!1811 (Cons!12798 (apply!2729 lt!423587 0) Nil!12798)))))))

(assert (=> d!361960 (= lt!423696 e!824477)))

(declare-fun c!211593 () Bool)

(assert (=> d!361960 (= c!211593 ((_ is Nil!12798) (t!116759 (list!4751 (charsOf!1175 t1!34)))))))

(assert (=> d!361960 (= (++!3227 (t!116759 (list!4751 (charsOf!1175 t1!34))) (Cons!12798 (apply!2729 lt!423587 0) Nil!12798)) lt!423696)))

(declare-fun b!1285516 () Bool)

(declare-fun res!576519 () Bool)

(assert (=> b!1285516 (=> (not res!576519) (not e!824478))))

(assert (=> b!1285516 (= res!576519 (= (size!10427 lt!423696) (+ (size!10427 (t!116759 (list!4751 (charsOf!1175 t1!34)))) (size!10427 (Cons!12798 (apply!2729 lt!423587 0) Nil!12798)))))))

(declare-fun b!1285517 () Bool)

(assert (=> b!1285517 (= e!824478 (or (not (= (Cons!12798 (apply!2729 lt!423587 0) Nil!12798) Nil!12798)) (= lt!423696 (t!116759 (list!4751 (charsOf!1175 t1!34))))))))

(declare-fun b!1285515 () Bool)

(assert (=> b!1285515 (= e!824477 (Cons!12798 (h!18199 (t!116759 (list!4751 (charsOf!1175 t1!34)))) (++!3227 (t!116759 (t!116759 (list!4751 (charsOf!1175 t1!34)))) (Cons!12798 (apply!2729 lt!423587 0) Nil!12798))))))

(assert (= (and d!361960 c!211593) b!1285514))

(assert (= (and d!361960 (not c!211593)) b!1285515))

(assert (= (and d!361960 res!576520) b!1285516))

(assert (= (and b!1285516 res!576519) b!1285517))

(declare-fun m!1435733 () Bool)

(assert (=> d!361960 m!1435733))

(declare-fun m!1435735 () Bool)

(assert (=> d!361960 m!1435735))

(assert (=> d!361960 m!1435385))

(declare-fun m!1435737 () Bool)

(assert (=> b!1285516 m!1435737))

(declare-fun m!1435739 () Bool)

(assert (=> b!1285516 m!1435739))

(assert (=> b!1285516 m!1435391))

(declare-fun m!1435741 () Bool)

(assert (=> b!1285515 m!1435741))

(assert (=> b!1285263 d!361960))

(declare-fun d!361962 () Bool)

(assert (=> d!361962 (= (list!4751 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (value!72418 t2!34))) (list!4755 (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (value!72418 t2!34)))))))

(declare-fun bs!328011 () Bool)

(assert (= bs!328011 d!361962))

(declare-fun m!1435743 () Bool)

(assert (=> bs!328011 m!1435743))

(assert (=> b!1285247 d!361962))

(declare-fun bs!328012 () Bool)

(declare-fun d!361964 () Bool)

(assert (= bs!328012 (and d!361964 d!361852)))

(declare-fun lambda!50389 () Int)

(assert (=> bs!328012 (= lambda!50389 lambda!50379)))

(assert (=> d!361964 true))

(declare-fun lt!423697 () Bool)

(assert (=> d!361964 (= lt!423697 (forall!3233 (t!116760 rules!2550) lambda!50389))))

(declare-fun e!824480 () Bool)

(assert (=> d!361964 (= lt!423697 e!824480)))

(declare-fun res!576521 () Bool)

(assert (=> d!361964 (=> res!576521 e!824480)))

(assert (=> d!361964 (= res!576521 (not ((_ is Cons!12799) (t!116760 rules!2550))))))

(assert (=> d!361964 (= (rulesValidInductive!694 thiss!19762 (t!116760 rules!2550)) lt!423697)))

(declare-fun b!1285518 () Bool)

(declare-fun e!824479 () Bool)

(assert (=> b!1285518 (= e!824480 e!824479)))

(declare-fun res!576522 () Bool)

(assert (=> b!1285518 (=> (not res!576522) (not e!824479))))

(assert (=> b!1285518 (= res!576522 (ruleValid!539 thiss!19762 (h!18200 (t!116760 rules!2550))))))

(declare-fun b!1285519 () Bool)

(assert (=> b!1285519 (= e!824479 (rulesValidInductive!694 thiss!19762 (t!116760 (t!116760 rules!2550))))))

(assert (= (and d!361964 (not res!576521)) b!1285518))

(assert (= (and b!1285518 res!576522) b!1285519))

(declare-fun m!1435745 () Bool)

(assert (=> d!361964 m!1435745))

(declare-fun m!1435747 () Bool)

(assert (=> b!1285518 m!1435747))

(declare-fun m!1435749 () Bool)

(assert (=> b!1285519 m!1435749))

(assert (=> b!1285371 d!361964))

(declare-fun d!361966 () Bool)

(declare-fun c!211598 () Bool)

(assert (=> d!361966 (= c!211598 ((_ is Nil!12798) lt!423606))))

(declare-fun e!824489 () (InoxSet C!7324))

(assert (=> d!361966 (= (content!1811 lt!423606) e!824489)))

(declare-fun b!1285532 () Bool)

(assert (=> b!1285532 (= e!824489 ((as const (Array C!7324 Bool)) false))))

(declare-fun b!1285533 () Bool)

(assert (=> b!1285533 (= e!824489 ((_ map or) (store ((as const (Array C!7324 Bool)) false) (h!18199 lt!423606) true) (content!1811 (t!116759 lt!423606))))))

(assert (= (and d!361966 c!211598) b!1285532))

(assert (= (and d!361966 (not c!211598)) b!1285533))

(declare-fun m!1435751 () Bool)

(assert (=> b!1285533 m!1435751))

(declare-fun m!1435753 () Bool)

(assert (=> b!1285533 m!1435753))

(assert (=> d!361838 d!361966))

(declare-fun d!361968 () Bool)

(declare-fun c!211599 () Bool)

(assert (=> d!361968 (= c!211599 ((_ is Nil!12798) (list!4751 (charsOf!1175 t1!34))))))

(declare-fun e!824490 () (InoxSet C!7324))

(assert (=> d!361968 (= (content!1811 (list!4751 (charsOf!1175 t1!34))) e!824490)))

(declare-fun b!1285534 () Bool)

(assert (=> b!1285534 (= e!824490 ((as const (Array C!7324 Bool)) false))))

(declare-fun b!1285535 () Bool)

(assert (=> b!1285535 (= e!824490 ((_ map or) (store ((as const (Array C!7324 Bool)) false) (h!18199 (list!4751 (charsOf!1175 t1!34))) true) (content!1811 (t!116759 (list!4751 (charsOf!1175 t1!34))))))))

(assert (= (and d!361968 c!211599) b!1285534))

(assert (= (and d!361968 (not c!211599)) b!1285535))

(declare-fun m!1435755 () Bool)

(assert (=> b!1285535 m!1435755))

(assert (=> b!1285535 m!1435735))

(assert (=> d!361838 d!361968))

(declare-fun d!361970 () Bool)

(declare-fun c!211600 () Bool)

(assert (=> d!361970 (= c!211600 ((_ is Nil!12798) (Cons!12798 (apply!2729 lt!423587 0) Nil!12798)))))

(declare-fun e!824491 () (InoxSet C!7324))

(assert (=> d!361970 (= (content!1811 (Cons!12798 (apply!2729 lt!423587 0) Nil!12798)) e!824491)))

(declare-fun b!1285536 () Bool)

(assert (=> b!1285536 (= e!824491 ((as const (Array C!7324 Bool)) false))))

(declare-fun b!1285537 () Bool)

(assert (=> b!1285537 (= e!824491 ((_ map or) (store ((as const (Array C!7324 Bool)) false) (h!18199 (Cons!12798 (apply!2729 lt!423587 0) Nil!12798)) true) (content!1811 (t!116759 (Cons!12798 (apply!2729 lt!423587 0) Nil!12798)))))))

(assert (= (and d!361970 c!211600) b!1285536))

(assert (= (and d!361970 (not c!211600)) b!1285537))

(declare-fun m!1435757 () Bool)

(assert (=> b!1285537 m!1435757))

(declare-fun m!1435759 () Bool)

(assert (=> b!1285537 m!1435759))

(assert (=> d!361838 d!361970))

(declare-fun d!361972 () Bool)

(assert (=> d!361972 true))

(declare-fun order!7789 () Int)

(declare-fun order!7787 () Int)

(declare-fun lambda!50393 () Int)

(declare-fun dynLambda!5575 (Int Int) Int)

(declare-fun dynLambda!5576 (Int Int) Int)

(assert (=> d!361972 (< (dynLambda!5575 order!7787 (toChars!3241 (transformation!2203 (h!18200 rules!2550)))) (dynLambda!5576 order!7789 lambda!50393))))

(assert (=> d!361972 true))

(declare-fun order!7791 () Int)

(declare-fun dynLambda!5577 (Int Int) Int)

(assert (=> d!361972 (< (dynLambda!5577 order!7791 (toValue!3382 (transformation!2203 (h!18200 rules!2550)))) (dynLambda!5576 order!7789 lambda!50393))))

(declare-fun Forall!495 (Int) Bool)

(assert (=> d!361972 (= (semiInverseModEq!830 (toChars!3241 (transformation!2203 (h!18200 rules!2550))) (toValue!3382 (transformation!2203 (h!18200 rules!2550)))) (Forall!495 lambda!50393))))

(declare-fun bs!328014 () Bool)

(assert (= bs!328014 d!361972))

(declare-fun m!1435771 () Bool)

(assert (=> bs!328014 m!1435771))

(assert (=> d!361900 d!361972))

(declare-fun d!361978 () Bool)

(declare-fun lt!423706 () C!7324)

(declare-fun contains!2138 (List!12864 C!7324) Bool)

(assert (=> d!361978 (contains!2138 (list!4751 lt!423587) lt!423706)))

(declare-fun e!824513 () C!7324)

(assert (=> d!361978 (= lt!423706 e!824513)))

(declare-fun c!211609 () Bool)

(assert (=> d!361978 (= c!211609 (= 0 0))))

(declare-fun e!824512 () Bool)

(assert (=> d!361978 e!824512))

(declare-fun res!576539 () Bool)

(assert (=> d!361978 (=> (not res!576539) (not e!824512))))

(assert (=> d!361978 (= res!576539 (<= 0 0))))

(assert (=> d!361978 (= (apply!2734 (list!4751 lt!423587) 0) lt!423706)))

(declare-fun b!1285570 () Bool)

(assert (=> b!1285570 (= e!824512 (< 0 (size!10427 (list!4751 lt!423587))))))

(declare-fun b!1285571 () Bool)

(declare-fun head!2193 (List!12864) C!7324)

(assert (=> b!1285571 (= e!824513 (head!2193 (list!4751 lt!423587)))))

(declare-fun b!1285572 () Bool)

(declare-fun tail!1821 (List!12864) List!12864)

(assert (=> b!1285572 (= e!824513 (apply!2734 (tail!1821 (list!4751 lt!423587)) (- 0 1)))))

(assert (= (and d!361978 res!576539) b!1285570))

(assert (= (and d!361978 c!211609) b!1285571))

(assert (= (and d!361978 (not c!211609)) b!1285572))

(assert (=> d!361978 m!1435407))

(declare-fun m!1435783 () Bool)

(assert (=> d!361978 m!1435783))

(assert (=> b!1285570 m!1435407))

(assert (=> b!1285570 m!1435573))

(assert (=> b!1285571 m!1435407))

(declare-fun m!1435785 () Bool)

(assert (=> b!1285571 m!1435785))

(assert (=> b!1285572 m!1435407))

(declare-fun m!1435787 () Bool)

(assert (=> b!1285572 m!1435787))

(assert (=> b!1285572 m!1435787))

(declare-fun m!1435789 () Bool)

(assert (=> b!1285572 m!1435789))

(assert (=> d!361844 d!361978))

(declare-fun d!361988 () Bool)

(assert (=> d!361988 (= (list!4751 lt!423587) (list!4755 (c!211549 lt!423587)))))

(declare-fun bs!328015 () Bool)

(assert (= bs!328015 d!361988))

(declare-fun m!1435791 () Bool)

(assert (=> bs!328015 m!1435791))

(assert (=> d!361844 d!361988))

(declare-fun b!1285610 () Bool)

(declare-fun e!824537 () Int)

(assert (=> b!1285610 (= e!824537 0)))

(declare-fun b!1285612 () Bool)

(declare-fun e!824538 () C!7324)

(declare-fun call!88441 () C!7324)

(assert (=> b!1285612 (= e!824538 call!88441)))

(declare-fun b!1285613 () Bool)

(declare-fun e!824539 () C!7324)

(declare-fun apply!2741 (IArray!8419 Int) C!7324)

(assert (=> b!1285613 (= e!824539 (apply!2741 (xs!6918 (c!211549 lt!423587)) 0))))

(declare-fun b!1285614 () Bool)

(declare-fun e!824536 () Bool)

(assert (=> b!1285614 (= e!824536 (< 0 (size!10428 (c!211549 lt!423587))))))

(declare-fun b!1285615 () Bool)

(assert (=> b!1285615 (= e!824537 (- 0 (size!10428 (left!11026 (c!211549 lt!423587)))))))

(declare-fun b!1285616 () Bool)

(assert (=> b!1285616 (= e!824538 call!88441)))

(declare-fun bm!88436 () Bool)

(declare-fun c!211627 () Bool)

(declare-fun c!211625 () Bool)

(assert (=> bm!88436 (= c!211627 c!211625)))

(assert (=> bm!88436 (= call!88441 (apply!2735 (ite c!211625 (left!11026 (c!211549 lt!423587)) (right!11356 (c!211549 lt!423587))) e!824537))))

(declare-fun d!361990 () Bool)

(declare-fun lt!423719 () C!7324)

(assert (=> d!361990 (= lt!423719 (apply!2734 (list!4755 (c!211549 lt!423587)) 0))))

(assert (=> d!361990 (= lt!423719 e!824539)))

(declare-fun c!211626 () Bool)

(assert (=> d!361990 (= c!211626 ((_ is Leaf!6505) (c!211549 lt!423587)))))

(assert (=> d!361990 e!824536))

(declare-fun res!576547 () Bool)

(assert (=> d!361990 (=> (not res!576547) (not e!824536))))

(assert (=> d!361990 (= res!576547 (<= 0 0))))

(assert (=> d!361990 (= (apply!2735 (c!211549 lt!423587) 0) lt!423719)))

(declare-fun b!1285611 () Bool)

(assert (=> b!1285611 (= e!824539 e!824538)))

(declare-fun lt!423718 () Bool)

(declare-fun appendIndex!117 (List!12864 List!12864 Int) Bool)

(assert (=> b!1285611 (= lt!423718 (appendIndex!117 (list!4755 (left!11026 (c!211549 lt!423587))) (list!4755 (right!11356 (c!211549 lt!423587))) 0))))

(assert (=> b!1285611 (= c!211625 (< 0 (size!10428 (left!11026 (c!211549 lt!423587)))))))

(assert (= (and d!361990 res!576547) b!1285614))

(assert (= (and d!361990 c!211626) b!1285613))

(assert (= (and d!361990 (not c!211626)) b!1285611))

(assert (= (and b!1285611 c!211625) b!1285612))

(assert (= (and b!1285611 (not c!211625)) b!1285616))

(assert (= (or b!1285612 b!1285616) bm!88436))

(assert (= (and bm!88436 c!211627) b!1285610))

(assert (= (and bm!88436 (not c!211627)) b!1285615))

(assert (=> b!1285614 m!1435575))

(declare-fun m!1435803 () Bool)

(assert (=> b!1285611 m!1435803))

(declare-fun m!1435805 () Bool)

(assert (=> b!1285611 m!1435805))

(assert (=> b!1285611 m!1435803))

(assert (=> b!1285611 m!1435805))

(declare-fun m!1435807 () Bool)

(assert (=> b!1285611 m!1435807))

(declare-fun m!1435809 () Bool)

(assert (=> b!1285611 m!1435809))

(assert (=> b!1285615 m!1435809))

(declare-fun m!1435811 () Bool)

(assert (=> bm!88436 m!1435811))

(assert (=> d!361990 m!1435791))

(assert (=> d!361990 m!1435791))

(declare-fun m!1435813 () Bool)

(assert (=> d!361990 m!1435813))

(declare-fun m!1435815 () Bool)

(assert (=> b!1285613 m!1435815))

(assert (=> d!361844 d!361990))

(declare-fun d!361996 () Bool)

(declare-fun charsToBigInt!1 (List!12863) Int)

(assert (=> d!361996 (= (inv!17 (value!72418 t2!34)) (= (charsToBigInt!1 (text!16499 (value!72418 t2!34))) (value!72410 (value!72418 t2!34))))))

(declare-fun bs!328017 () Bool)

(assert (= bs!328017 d!361996))

(declare-fun m!1435817 () Bool)

(assert (=> bs!328017 m!1435817))

(assert (=> b!1285377 d!361996))

(declare-fun d!361998 () Bool)

(declare-fun lt!423724 () Bool)

(assert (=> d!361998 (= lt!423724 (isEmpty!7592 (list!4751 (_2!7197 lt!423631))))))

(declare-fun isEmpty!7595 (Conc!4207) Bool)

(assert (=> d!361998 (= lt!423724 (isEmpty!7595 (c!211549 (_2!7197 lt!423631))))))

(assert (=> d!361998 (= (isEmpty!7591 (_2!7197 lt!423631)) lt!423724)))

(declare-fun bs!328018 () Bool)

(assert (= bs!328018 d!361998))

(declare-fun m!1435833 () Bool)

(assert (=> bs!328018 m!1435833))

(assert (=> bs!328018 m!1435833))

(declare-fun m!1435835 () Bool)

(assert (=> bs!328018 m!1435835))

(declare-fun m!1435837 () Bool)

(assert (=> bs!328018 m!1435837))

(assert (=> b!1285375 d!361998))

(declare-fun d!362002 () Bool)

(declare-fun lt!423725 () Int)

(assert (=> d!362002 (>= lt!423725 0)))

(declare-fun e!824544 () Int)

(assert (=> d!362002 (= lt!423725 e!824544)))

(declare-fun c!211631 () Bool)

(assert (=> d!362002 (= c!211631 ((_ is Nil!12798) (list!4751 lt!423587)))))

(assert (=> d!362002 (= (size!10427 (list!4751 lt!423587)) lt!423725)))

(declare-fun b!1285624 () Bool)

(assert (=> b!1285624 (= e!824544 0)))

(declare-fun b!1285625 () Bool)

(assert (=> b!1285625 (= e!824544 (+ 1 (size!10427 (t!116759 (list!4751 lt!423587)))))))

(assert (= (and d!362002 c!211631) b!1285624))

(assert (= (and d!362002 (not c!211631)) b!1285625))

(declare-fun m!1435841 () Bool)

(assert (=> b!1285625 m!1435841))

(assert (=> d!361906 d!362002))

(assert (=> d!361906 d!361988))

(declare-fun d!362006 () Bool)

(declare-fun lt!423728 () Int)

(assert (=> d!362006 (= lt!423728 (size!10427 (list!4755 (c!211549 lt!423587))))))

(assert (=> d!362006 (= lt!423728 (ite ((_ is Empty!4207) (c!211549 lt!423587)) 0 (ite ((_ is Leaf!6505) (c!211549 lt!423587)) (csize!8645 (c!211549 lt!423587)) (csize!8644 (c!211549 lt!423587)))))))

(assert (=> d!362006 (= (size!10428 (c!211549 lt!423587)) lt!423728)))

(declare-fun bs!328022 () Bool)

(assert (= bs!328022 d!362006))

(assert (=> bs!328022 m!1435791))

(assert (=> bs!328022 m!1435791))

(declare-fun m!1435849 () Bool)

(assert (=> bs!328022 m!1435849))

(assert (=> d!361906 d!362006))

(declare-fun d!362016 () Bool)

(assert (=> d!362016 (= (inv!17201 (tag!2465 (h!18200 (t!116760 rules!2550)))) (= (mod (str.len (value!72417 (tag!2465 (h!18200 (t!116760 rules!2550))))) 2) 0))))

(assert (=> b!1285426 d!362016))

(declare-fun d!362018 () Bool)

(declare-fun res!576550 () Bool)

(declare-fun e!824546 () Bool)

(assert (=> d!362018 (=> (not res!576550) (not e!824546))))

(assert (=> d!362018 (= res!576550 (semiInverseModEq!830 (toChars!3241 (transformation!2203 (h!18200 (t!116760 rules!2550)))) (toValue!3382 (transformation!2203 (h!18200 (t!116760 rules!2550))))))))

(assert (=> d!362018 (= (inv!17204 (transformation!2203 (h!18200 (t!116760 rules!2550)))) e!824546)))

(declare-fun b!1285627 () Bool)

(assert (=> b!1285627 (= e!824546 (equivClasses!789 (toChars!3241 (transformation!2203 (h!18200 (t!116760 rules!2550)))) (toValue!3382 (transformation!2203 (h!18200 (t!116760 rules!2550))))))))

(assert (= (and d!362018 res!576550) b!1285627))

(declare-fun m!1435851 () Bool)

(assert (=> d!362018 m!1435851))

(declare-fun m!1435855 () Bool)

(assert (=> b!1285627 m!1435855))

(assert (=> b!1285426 d!362018))

(declare-fun d!362022 () Bool)

(assert (=> d!362022 (= (inv!17209 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (value!72418 t1!34))) (isBalanced!1226 (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (value!72418 t1!34)))))))

(declare-fun bs!328026 () Bool)

(assert (= bs!328026 d!362022))

(declare-fun m!1435857 () Bool)

(assert (=> bs!328026 m!1435857))

(assert (=> tb!69095 d!362022))

(declare-fun bs!328028 () Bool)

(declare-fun d!362024 () Bool)

(assert (= bs!328028 (and d!362024 d!361972)))

(declare-fun lambda!50396 () Int)

(assert (=> bs!328028 (= (and (= (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (toChars!3241 (transformation!2203 (h!18200 rules!2550)))) (= (toValue!3382 (transformation!2203 (rule!3942 t2!34))) (toValue!3382 (transformation!2203 (h!18200 rules!2550))))) (= lambda!50396 lambda!50393))))

(assert (=> d!362024 true))

(assert (=> d!362024 (< (dynLambda!5575 order!7787 (toChars!3241 (transformation!2203 (rule!3942 t2!34)))) (dynLambda!5576 order!7789 lambda!50396))))

(assert (=> d!362024 true))

(assert (=> d!362024 (< (dynLambda!5577 order!7791 (toValue!3382 (transformation!2203 (rule!3942 t2!34)))) (dynLambda!5576 order!7789 lambda!50396))))

(assert (=> d!362024 (= (semiInverseModEq!830 (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (toValue!3382 (transformation!2203 (rule!3942 t2!34)))) (Forall!495 lambda!50396))))

(declare-fun bs!328029 () Bool)

(assert (= bs!328029 d!362024))

(declare-fun m!1435861 () Bool)

(assert (=> bs!328029 m!1435861))

(assert (=> d!361832 d!362024))

(declare-fun bs!328030 () Bool)

(declare-fun d!362028 () Bool)

(assert (= bs!328030 (and d!362028 d!361972)))

(declare-fun lambda!50397 () Int)

(assert (=> bs!328030 (= (and (= (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (toChars!3241 (transformation!2203 (h!18200 rules!2550)))) (= (toValue!3382 (transformation!2203 (rule!3942 t1!34))) (toValue!3382 (transformation!2203 (h!18200 rules!2550))))) (= lambda!50397 lambda!50393))))

(declare-fun bs!328031 () Bool)

(assert (= bs!328031 (and d!362028 d!362024)))

(assert (=> bs!328031 (= (and (= (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (toChars!3241 (transformation!2203 (rule!3942 t2!34)))) (= (toValue!3382 (transformation!2203 (rule!3942 t1!34))) (toValue!3382 (transformation!2203 (rule!3942 t2!34))))) (= lambda!50397 lambda!50396))))

(assert (=> d!362028 true))

(assert (=> d!362028 (< (dynLambda!5575 order!7787 (toChars!3241 (transformation!2203 (rule!3942 t1!34)))) (dynLambda!5576 order!7789 lambda!50397))))

(assert (=> d!362028 true))

(assert (=> d!362028 (< (dynLambda!5577 order!7791 (toValue!3382 (transformation!2203 (rule!3942 t1!34)))) (dynLambda!5576 order!7789 lambda!50397))))

(assert (=> d!362028 (= (semiInverseModEq!830 (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (toValue!3382 (transformation!2203 (rule!3942 t1!34)))) (Forall!495 lambda!50397))))

(declare-fun bs!328033 () Bool)

(assert (= bs!328033 d!362028))

(declare-fun m!1435865 () Bool)

(assert (=> bs!328033 m!1435865))

(assert (=> d!361896 d!362028))

(declare-fun d!362032 () Bool)

(assert (=> d!362032 (= (inv!17 (value!72418 t1!34)) (= (charsToBigInt!1 (text!16499 (value!72418 t1!34))) (value!72410 (value!72418 t1!34))))))

(declare-fun bs!328034 () Bool)

(assert (= bs!328034 d!362032))

(declare-fun m!1435867 () Bool)

(assert (=> bs!328034 m!1435867))

(assert (=> b!1285210 d!362032))

(declare-fun d!362034 () Bool)

(declare-fun c!211632 () Bool)

(assert (=> d!362034 (= c!211632 ((_ is Node!4207) (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (value!72418 t2!34)))))))

(declare-fun e!824547 () Bool)

(assert (=> d!362034 (= (inv!17208 (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (value!72418 t2!34)))) e!824547)))

(declare-fun b!1285628 () Bool)

(assert (=> b!1285628 (= e!824547 (inv!17210 (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (value!72418 t2!34)))))))

(declare-fun b!1285629 () Bool)

(declare-fun e!824548 () Bool)

(assert (=> b!1285629 (= e!824547 e!824548)))

(declare-fun res!576551 () Bool)

(assert (=> b!1285629 (= res!576551 (not ((_ is Leaf!6505) (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (value!72418 t2!34))))))))

(assert (=> b!1285629 (=> res!576551 e!824548)))

(declare-fun b!1285630 () Bool)

(assert (=> b!1285630 (= e!824548 (inv!17211 (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (value!72418 t2!34)))))))

(assert (= (and d!362034 c!211632) b!1285628))

(assert (= (and d!362034 (not c!211632)) b!1285629))

(assert (= (and b!1285629 (not res!576551)) b!1285630))

(declare-fun m!1435869 () Bool)

(assert (=> b!1285628 m!1435869))

(declare-fun m!1435871 () Bool)

(assert (=> b!1285630 m!1435871))

(assert (=> b!1285249 d!362034))

(declare-fun lt!423729 () Bool)

(declare-fun d!362036 () Bool)

(assert (=> d!362036 (= lt!423729 (isEmpty!7592 (list!4751 (_2!7197 (lex!769 thiss!19762 rules!2550 (print!706 thiss!19762 (singletonSeq!778 t2!34)))))))))

(assert (=> d!362036 (= lt!423729 (isEmpty!7595 (c!211549 (_2!7197 (lex!769 thiss!19762 rules!2550 (print!706 thiss!19762 (singletonSeq!778 t2!34)))))))))

(assert (=> d!362036 (= (isEmpty!7591 (_2!7197 (lex!769 thiss!19762 rules!2550 (print!706 thiss!19762 (singletonSeq!778 t2!34))))) lt!423729)))

(declare-fun bs!328035 () Bool)

(assert (= bs!328035 d!362036))

(declare-fun m!1435873 () Bool)

(assert (=> bs!328035 m!1435873))

(assert (=> bs!328035 m!1435873))

(declare-fun m!1435875 () Bool)

(assert (=> bs!328035 m!1435875))

(declare-fun m!1435877 () Bool)

(assert (=> bs!328035 m!1435877))

(assert (=> b!1285232 d!362036))

(declare-fun lt!423788 () tuple2!12622)

(declare-fun e!824592 () Bool)

(declare-fun b!1285704 () Bool)

(assert (=> b!1285704 (= e!824592 (= (_2!7197 lt!423788) (print!706 thiss!19762 (singletonSeq!778 t2!34))))))

(declare-fun b!1285705 () Bool)

(declare-fun e!824591 () Bool)

(assert (=> b!1285705 (= e!824592 e!824591)))

(declare-fun res!576595 () Bool)

(assert (=> b!1285705 (= res!576595 (< (size!10422 (_2!7197 lt!423788)) (size!10422 (print!706 thiss!19762 (singletonSeq!778 t2!34)))))))

(assert (=> b!1285705 (=> (not res!576595) (not e!824591))))

(declare-fun b!1285706 () Bool)

(declare-fun res!576596 () Bool)

(declare-fun e!824593 () Bool)

(assert (=> b!1285706 (=> (not res!576596) (not e!824593))))

(declare-datatypes ((tuple2!12626 0))(
  ( (tuple2!12627 (_1!7199 List!12868) (_2!7199 List!12864)) )
))
(declare-fun lexList!488 (LexerInterface!1898 List!12865 List!12864) tuple2!12626)

(assert (=> b!1285706 (= res!576596 (= (list!4754 (_1!7197 lt!423788)) (_1!7199 (lexList!488 thiss!19762 rules!2550 (list!4751 (print!706 thiss!19762 (singletonSeq!778 t2!34)))))))))

(declare-fun b!1285707 () Bool)

(declare-fun isEmpty!7596 (BalanceConc!8358) Bool)

(assert (=> b!1285707 (= e!824591 (not (isEmpty!7596 (_1!7197 lt!423788))))))

(declare-fun b!1285708 () Bool)

(assert (=> b!1285708 (= e!824593 (= (list!4751 (_2!7197 lt!423788)) (_2!7199 (lexList!488 thiss!19762 rules!2550 (list!4751 (print!706 thiss!19762 (singletonSeq!778 t2!34)))))))))

(declare-fun d!362038 () Bool)

(assert (=> d!362038 e!824593))

(declare-fun res!576597 () Bool)

(assert (=> d!362038 (=> (not res!576597) (not e!824593))))

(assert (=> d!362038 (= res!576597 e!824592)))

(declare-fun c!211652 () Bool)

(assert (=> d!362038 (= c!211652 (> (size!10426 (_1!7197 lt!423788)) 0))))

(declare-fun lexTailRecV2!337 (LexerInterface!1898 List!12865 BalanceConc!8354 BalanceConc!8354 BalanceConc!8354 BalanceConc!8358) tuple2!12622)

(assert (=> d!362038 (= lt!423788 (lexTailRecV2!337 thiss!19762 rules!2550 (print!706 thiss!19762 (singletonSeq!778 t2!34)) (BalanceConc!8355 Empty!4207) (print!706 thiss!19762 (singletonSeq!778 t2!34)) (BalanceConc!8359 Empty!4209)))))

(assert (=> d!362038 (= (lex!769 thiss!19762 rules!2550 (print!706 thiss!19762 (singletonSeq!778 t2!34))) lt!423788)))

(assert (= (and d!362038 c!211652) b!1285705))

(assert (= (and d!362038 (not c!211652)) b!1285704))

(assert (= (and b!1285705 res!576595) b!1285707))

(assert (= (and d!362038 res!576597) b!1285706))

(assert (= (and b!1285706 res!576596) b!1285708))

(declare-fun m!1436057 () Bool)

(assert (=> b!1285707 m!1436057))

(declare-fun m!1436059 () Bool)

(assert (=> d!362038 m!1436059))

(assert (=> d!362038 m!1435333))

(assert (=> d!362038 m!1435333))

(declare-fun m!1436061 () Bool)

(assert (=> d!362038 m!1436061))

(declare-fun m!1436063 () Bool)

(assert (=> b!1285705 m!1436063))

(assert (=> b!1285705 m!1435333))

(declare-fun m!1436067 () Bool)

(assert (=> b!1285705 m!1436067))

(declare-fun m!1436069 () Bool)

(assert (=> b!1285706 m!1436069))

(assert (=> b!1285706 m!1435333))

(declare-fun m!1436071 () Bool)

(assert (=> b!1285706 m!1436071))

(assert (=> b!1285706 m!1436071))

(declare-fun m!1436073 () Bool)

(assert (=> b!1285706 m!1436073))

(declare-fun m!1436075 () Bool)

(assert (=> b!1285708 m!1436075))

(assert (=> b!1285708 m!1435333))

(assert (=> b!1285708 m!1436071))

(assert (=> b!1285708 m!1436071))

(assert (=> b!1285708 m!1436073))

(assert (=> b!1285232 d!362038))

(declare-fun d!362106 () Bool)

(declare-fun lt!423798 () BalanceConc!8354)

(declare-fun printList!532 (LexerInterface!1898 List!12868) List!12864)

(assert (=> d!362106 (= (list!4751 lt!423798) (printList!532 thiss!19762 (list!4754 (singletonSeq!778 t2!34))))))

(declare-fun printTailRec!514 (LexerInterface!1898 BalanceConc!8358 Int BalanceConc!8354) BalanceConc!8354)

(assert (=> d!362106 (= lt!423798 (printTailRec!514 thiss!19762 (singletonSeq!778 t2!34) 0 (BalanceConc!8355 Empty!4207)))))

(assert (=> d!362106 (= (print!706 thiss!19762 (singletonSeq!778 t2!34)) lt!423798)))

(declare-fun bs!328064 () Bool)

(assert (= bs!328064 d!362106))

(declare-fun m!1436107 () Bool)

(assert (=> bs!328064 m!1436107))

(assert (=> bs!328064 m!1435337))

(assert (=> bs!328064 m!1435339))

(assert (=> bs!328064 m!1435339))

(declare-fun m!1436109 () Bool)

(assert (=> bs!328064 m!1436109))

(assert (=> bs!328064 m!1435337))

(declare-fun m!1436111 () Bool)

(assert (=> bs!328064 m!1436111))

(assert (=> b!1285232 d!362106))

(declare-fun d!362118 () Bool)

(declare-fun e!824629 () Bool)

(assert (=> d!362118 e!824629))

(declare-fun res!576601 () Bool)

(assert (=> d!362118 (=> (not res!576601) (not e!824629))))

(declare-fun lt!423801 () BalanceConc!8358)

(assert (=> d!362118 (= res!576601 (= (list!4754 lt!423801) (Cons!12802 t2!34 Nil!12802)))))

(declare-fun singleton!333 (Token!4068) BalanceConc!8358)

(assert (=> d!362118 (= lt!423801 (singleton!333 t2!34))))

(assert (=> d!362118 (= (singletonSeq!778 t2!34) lt!423801)))

(declare-fun b!1285799 () Bool)

(declare-fun isBalanced!1228 (Conc!4209) Bool)

(assert (=> b!1285799 (= e!824629 (isBalanced!1228 (c!211574 lt!423801)))))

(assert (= (and d!362118 res!576601) b!1285799))

(declare-fun m!1436113 () Bool)

(assert (=> d!362118 m!1436113))

(declare-fun m!1436115 () Bool)

(assert (=> d!362118 m!1436115))

(declare-fun m!1436117 () Bool)

(assert (=> b!1285799 m!1436117))

(assert (=> b!1285232 d!362118))

(declare-fun d!362120 () Bool)

(declare-fun res!576602 () Bool)

(declare-fun e!824630 () Bool)

(assert (=> d!362120 (=> res!576602 e!824630)))

(assert (=> d!362120 (= res!576602 (not ((_ is Cons!12799) (t!116760 rules!2550))))))

(assert (=> d!362120 (= (sepAndNonSepRulesDisjointChars!576 rules!2550 (t!116760 rules!2550)) e!824630)))

(declare-fun b!1285800 () Bool)

(declare-fun e!824631 () Bool)

(assert (=> b!1285800 (= e!824630 e!824631)))

(declare-fun res!576603 () Bool)

(assert (=> b!1285800 (=> (not res!576603) (not e!824631))))

(assert (=> b!1285800 (= res!576603 (ruleDisjointCharsFromAllFromOtherType!274 (h!18200 (t!116760 rules!2550)) rules!2550))))

(declare-fun b!1285801 () Bool)

(assert (=> b!1285801 (= e!824631 (sepAndNonSepRulesDisjointChars!576 rules!2550 (t!116760 (t!116760 rules!2550))))))

(assert (= (and d!362120 (not res!576602)) b!1285800))

(assert (= (and b!1285800 res!576603) b!1285801))

(declare-fun m!1436119 () Bool)

(assert (=> b!1285800 m!1436119))

(declare-fun m!1436121 () Bool)

(assert (=> b!1285801 m!1436121))

(assert (=> b!1285392 d!362120))

(declare-fun d!362122 () Bool)

(assert (=> d!362122 true))

(declare-fun lambda!50408 () Int)

(declare-fun order!7793 () Int)

(declare-fun dynLambda!5578 (Int Int) Int)

(assert (=> d!362122 (< (dynLambda!5577 order!7791 (toValue!3382 (transformation!2203 (h!18200 rules!2550)))) (dynLambda!5578 order!7793 lambda!50408))))

(declare-fun Forall2!397 (Int) Bool)

(assert (=> d!362122 (= (equivClasses!789 (toChars!3241 (transformation!2203 (h!18200 rules!2550))) (toValue!3382 (transformation!2203 (h!18200 rules!2550)))) (Forall2!397 lambda!50408))))

(declare-fun bs!328065 () Bool)

(assert (= bs!328065 d!362122))

(declare-fun m!1436123 () Bool)

(assert (=> bs!328065 m!1436123))

(assert (=> b!1285383 d!362122))

(declare-fun d!362124 () Bool)

(declare-fun lt!423802 () Bool)

(assert (=> d!362124 (= lt!423802 (isEmpty!7592 (list!4751 (_2!7197 lt!423601))))))

(assert (=> d!362124 (= lt!423802 (isEmpty!7595 (c!211549 (_2!7197 lt!423601))))))

(assert (=> d!362124 (= (isEmpty!7591 (_2!7197 lt!423601)) lt!423802)))

(declare-fun bs!328066 () Bool)

(assert (= bs!328066 d!362124))

(declare-fun m!1436125 () Bool)

(assert (=> bs!328066 m!1436125))

(assert (=> bs!328066 m!1436125))

(declare-fun m!1436127 () Bool)

(assert (=> bs!328066 m!1436127))

(declare-fun m!1436129 () Bool)

(assert (=> bs!328066 m!1436129))

(assert (=> b!1285231 d!362124))

(declare-fun d!362126 () Bool)

(assert (=> d!362126 (= (inv!17209 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (value!72418 t2!34))) (isBalanced!1226 (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (value!72418 t2!34)))))))

(declare-fun bs!328067 () Bool)

(assert (= bs!328067 d!362126))

(declare-fun m!1436131 () Bool)

(assert (=> bs!328067 m!1436131))

(assert (=> tb!69101 d!362126))

(declare-fun bs!328068 () Bool)

(declare-fun d!362128 () Bool)

(assert (= bs!328068 (and d!362128 d!362122)))

(declare-fun lambda!50409 () Int)

(assert (=> bs!328068 (= (= (toValue!3382 (transformation!2203 (rule!3942 t2!34))) (toValue!3382 (transformation!2203 (h!18200 rules!2550)))) (= lambda!50409 lambda!50408))))

(assert (=> d!362128 true))

(assert (=> d!362128 (< (dynLambda!5577 order!7791 (toValue!3382 (transformation!2203 (rule!3942 t2!34)))) (dynLambda!5578 order!7793 lambda!50409))))

(assert (=> d!362128 (= (equivClasses!789 (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (toValue!3382 (transformation!2203 (rule!3942 t2!34)))) (Forall2!397 lambda!50409))))

(declare-fun bs!328069 () Bool)

(assert (= bs!328069 d!362128))

(declare-fun m!1436133 () Bool)

(assert (=> bs!328069 m!1436133))

(assert (=> b!1285235 d!362128))

(assert (=> b!1285274 d!361906))

(declare-fun d!362130 () Bool)

(declare-fun res!576610 () Bool)

(declare-fun e!824638 () Bool)

(assert (=> d!362130 (=> res!576610 e!824638)))

(assert (=> d!362130 (= res!576610 ((_ is Nil!12799) rules!2550))))

(assert (=> d!362130 (= (noDuplicateTag!800 thiss!19762 rules!2550 Nil!12803) e!824638)))

(declare-fun b!1285810 () Bool)

(declare-fun e!824639 () Bool)

(assert (=> b!1285810 (= e!824638 e!824639)))

(declare-fun res!576611 () Bool)

(assert (=> b!1285810 (=> (not res!576611) (not e!824639))))

(declare-fun contains!2139 (List!12869 String!15701) Bool)

(assert (=> b!1285810 (= res!576611 (not (contains!2139 Nil!12803 (tag!2465 (h!18200 rules!2550)))))))

(declare-fun b!1285811 () Bool)

(assert (=> b!1285811 (= e!824639 (noDuplicateTag!800 thiss!19762 (t!116760 rules!2550) (Cons!12803 (tag!2465 (h!18200 rules!2550)) Nil!12803)))))

(assert (= (and d!362130 (not res!576610)) b!1285810))

(assert (= (and b!1285810 res!576611) b!1285811))

(declare-fun m!1436135 () Bool)

(assert (=> b!1285810 m!1436135))

(declare-fun m!1436137 () Bool)

(assert (=> b!1285811 m!1436137))

(assert (=> b!1285386 d!362130))

(declare-fun d!362132 () Bool)

(declare-fun list!4758 (Conc!4209) List!12868)

(assert (=> d!362132 (= (list!4754 (_1!7197 (lex!769 thiss!19762 rules!2550 (print!706 thiss!19762 (singletonSeq!778 t2!34))))) (list!4758 (c!211574 (_1!7197 (lex!769 thiss!19762 rules!2550 (print!706 thiss!19762 (singletonSeq!778 t2!34)))))))))

(declare-fun bs!328070 () Bool)

(assert (= bs!328070 d!362132))

(declare-fun m!1436139 () Bool)

(assert (=> bs!328070 m!1436139))

(assert (=> d!361826 d!362132))

(assert (=> d!361826 d!362106))

(declare-fun d!362134 () Bool)

(declare-fun lt!423805 () Int)

(declare-fun size!10431 (List!12868) Int)

(assert (=> d!362134 (= lt!423805 (size!10431 (list!4754 (_1!7197 lt!423601))))))

(declare-fun size!10432 (Conc!4209) Int)

(assert (=> d!362134 (= lt!423805 (size!10432 (c!211574 (_1!7197 lt!423601))))))

(assert (=> d!362134 (= (size!10426 (_1!7197 lt!423601)) lt!423805)))

(declare-fun bs!328071 () Bool)

(assert (= bs!328071 d!362134))

(assert (=> bs!328071 m!1435705))

(assert (=> bs!328071 m!1435705))

(declare-fun m!1436141 () Bool)

(assert (=> bs!328071 m!1436141))

(declare-fun m!1436143 () Bool)

(assert (=> bs!328071 m!1436143))

(assert (=> d!361826 d!362134))

(assert (=> d!361826 d!362118))

(assert (=> d!361826 d!361886))

(assert (=> d!361826 d!362038))

(declare-fun d!362136 () Bool)

(assert (=> d!362136 (= (list!4754 (singletonSeq!778 t2!34)) (list!4758 (c!211574 (singletonSeq!778 t2!34))))))

(declare-fun bs!328072 () Bool)

(assert (= bs!328072 d!362136))

(declare-fun m!1436145 () Bool)

(assert (=> bs!328072 m!1436145))

(assert (=> d!361826 d!362136))

(declare-fun d!362138 () Bool)

(declare-fun lt!423806 () Int)

(assert (=> d!362138 (>= lt!423806 0)))

(declare-fun e!824640 () Int)

(assert (=> d!362138 (= lt!423806 e!824640)))

(declare-fun c!211655 () Bool)

(assert (=> d!362138 (= c!211655 ((_ is Nil!12798) lt!423606))))

(assert (=> d!362138 (= (size!10427 lt!423606) lt!423806)))

(declare-fun b!1285812 () Bool)

(assert (=> b!1285812 (= e!824640 0)))

(declare-fun b!1285813 () Bool)

(assert (=> b!1285813 (= e!824640 (+ 1 (size!10427 (t!116759 lt!423606))))))

(assert (= (and d!362138 c!211655) b!1285812))

(assert (= (and d!362138 (not c!211655)) b!1285813))

(declare-fun m!1436147 () Bool)

(assert (=> b!1285813 m!1436147))

(assert (=> b!1285264 d!362138))

(declare-fun d!362140 () Bool)

(declare-fun lt!423807 () Int)

(assert (=> d!362140 (>= lt!423807 0)))

(declare-fun e!824641 () Int)

(assert (=> d!362140 (= lt!423807 e!824641)))

(declare-fun c!211656 () Bool)

(assert (=> d!362140 (= c!211656 ((_ is Nil!12798) (list!4751 (charsOf!1175 t1!34))))))

(assert (=> d!362140 (= (size!10427 (list!4751 (charsOf!1175 t1!34))) lt!423807)))

(declare-fun b!1285814 () Bool)

(assert (=> b!1285814 (= e!824641 0)))

(declare-fun b!1285815 () Bool)

(assert (=> b!1285815 (= e!824641 (+ 1 (size!10427 (t!116759 (list!4751 (charsOf!1175 t1!34))))))))

(assert (= (and d!362140 c!211656) b!1285814))

(assert (= (and d!362140 (not c!211656)) b!1285815))

(assert (=> b!1285815 m!1435739))

(assert (=> b!1285264 d!362140))

(declare-fun d!362142 () Bool)

(declare-fun lt!423808 () Int)

(assert (=> d!362142 (>= lt!423808 0)))

(declare-fun e!824642 () Int)

(assert (=> d!362142 (= lt!423808 e!824642)))

(declare-fun c!211657 () Bool)

(assert (=> d!362142 (= c!211657 ((_ is Nil!12798) (Cons!12798 (apply!2729 lt!423587 0) Nil!12798)))))

(assert (=> d!362142 (= (size!10427 (Cons!12798 (apply!2729 lt!423587 0) Nil!12798)) lt!423808)))

(declare-fun b!1285816 () Bool)

(assert (=> b!1285816 (= e!824642 0)))

(declare-fun b!1285817 () Bool)

(assert (=> b!1285817 (= e!824642 (+ 1 (size!10427 (t!116759 (Cons!12798 (apply!2729 lt!423587 0) Nil!12798)))))))

(assert (= (and d!362142 c!211657) b!1285816))

(assert (= (and d!362142 (not c!211657)) b!1285817))

(declare-fun m!1436149 () Bool)

(assert (=> b!1285817 m!1436149))

(assert (=> b!1285264 d!362142))

(declare-fun b!1285818 () Bool)

(declare-fun e!824644 () Bool)

(declare-fun lt!423809 () tuple2!12622)

(assert (=> b!1285818 (= e!824644 (= (_2!7197 lt!423809) (print!706 thiss!19762 (singletonSeq!778 t1!34))))))

(declare-fun b!1285819 () Bool)

(declare-fun e!824643 () Bool)

(assert (=> b!1285819 (= e!824644 e!824643)))

(declare-fun res!576612 () Bool)

(assert (=> b!1285819 (= res!576612 (< (size!10422 (_2!7197 lt!423809)) (size!10422 (print!706 thiss!19762 (singletonSeq!778 t1!34)))))))

(assert (=> b!1285819 (=> (not res!576612) (not e!824643))))

(declare-fun b!1285820 () Bool)

(declare-fun res!576613 () Bool)

(declare-fun e!824645 () Bool)

(assert (=> b!1285820 (=> (not res!576613) (not e!824645))))

(assert (=> b!1285820 (= res!576613 (= (list!4754 (_1!7197 lt!423809)) (_1!7199 (lexList!488 thiss!19762 rules!2550 (list!4751 (print!706 thiss!19762 (singletonSeq!778 t1!34)))))))))

(declare-fun b!1285821 () Bool)

(assert (=> b!1285821 (= e!824643 (not (isEmpty!7596 (_1!7197 lt!423809))))))

(declare-fun b!1285822 () Bool)

(assert (=> b!1285822 (= e!824645 (= (list!4751 (_2!7197 lt!423809)) (_2!7199 (lexList!488 thiss!19762 rules!2550 (list!4751 (print!706 thiss!19762 (singletonSeq!778 t1!34)))))))))

(declare-fun d!362144 () Bool)

(assert (=> d!362144 e!824645))

(declare-fun res!576614 () Bool)

(assert (=> d!362144 (=> (not res!576614) (not e!824645))))

(assert (=> d!362144 (= res!576614 e!824644)))

(declare-fun c!211658 () Bool)

(assert (=> d!362144 (= c!211658 (> (size!10426 (_1!7197 lt!423809)) 0))))

(assert (=> d!362144 (= lt!423809 (lexTailRecV2!337 thiss!19762 rules!2550 (print!706 thiss!19762 (singletonSeq!778 t1!34)) (BalanceConc!8355 Empty!4207) (print!706 thiss!19762 (singletonSeq!778 t1!34)) (BalanceConc!8359 Empty!4209)))))

(assert (=> d!362144 (= (lex!769 thiss!19762 rules!2550 (print!706 thiss!19762 (singletonSeq!778 t1!34))) lt!423809)))

(assert (= (and d!362144 c!211658) b!1285819))

(assert (= (and d!362144 (not c!211658)) b!1285818))

(assert (= (and b!1285819 res!576612) b!1285821))

(assert (= (and d!362144 res!576614) b!1285820))

(assert (= (and b!1285820 res!576613) b!1285822))

(declare-fun m!1436151 () Bool)

(assert (=> b!1285821 m!1436151))

(declare-fun m!1436153 () Bool)

(assert (=> d!362144 m!1436153))

(assert (=> d!362144 m!1435537))

(assert (=> d!362144 m!1435537))

(declare-fun m!1436155 () Bool)

(assert (=> d!362144 m!1436155))

(declare-fun m!1436157 () Bool)

(assert (=> b!1285819 m!1436157))

(assert (=> b!1285819 m!1435537))

(declare-fun m!1436159 () Bool)

(assert (=> b!1285819 m!1436159))

(declare-fun m!1436161 () Bool)

(assert (=> b!1285820 m!1436161))

(assert (=> b!1285820 m!1435537))

(declare-fun m!1436163 () Bool)

(assert (=> b!1285820 m!1436163))

(assert (=> b!1285820 m!1436163))

(declare-fun m!1436165 () Bool)

(assert (=> b!1285820 m!1436165))

(declare-fun m!1436167 () Bool)

(assert (=> b!1285822 m!1436167))

(assert (=> b!1285822 m!1435537))

(assert (=> b!1285822 m!1436163))

(assert (=> b!1285822 m!1436163))

(assert (=> b!1285822 m!1436165))

(assert (=> d!361890 d!362144))

(declare-fun d!362146 () Bool)

(declare-fun lt!423810 () BalanceConc!8354)

(assert (=> d!362146 (= (list!4751 lt!423810) (printList!532 thiss!19762 (list!4754 (singletonSeq!778 t1!34))))))

(assert (=> d!362146 (= lt!423810 (printTailRec!514 thiss!19762 (singletonSeq!778 t1!34) 0 (BalanceConc!8355 Empty!4207)))))

(assert (=> d!362146 (= (print!706 thiss!19762 (singletonSeq!778 t1!34)) lt!423810)))

(declare-fun bs!328073 () Bool)

(assert (= bs!328073 d!362146))

(declare-fun m!1436169 () Bool)

(assert (=> bs!328073 m!1436169))

(assert (=> bs!328073 m!1435541))

(assert (=> bs!328073 m!1435543))

(assert (=> bs!328073 m!1435543))

(declare-fun m!1436171 () Bool)

(assert (=> bs!328073 m!1436171))

(assert (=> bs!328073 m!1435541))

(declare-fun m!1436173 () Bool)

(assert (=> bs!328073 m!1436173))

(assert (=> d!361890 d!362146))

(declare-fun d!362148 () Bool)

(declare-fun e!824646 () Bool)

(assert (=> d!362148 e!824646))

(declare-fun res!576615 () Bool)

(assert (=> d!362148 (=> (not res!576615) (not e!824646))))

(declare-fun lt!423811 () BalanceConc!8358)

(assert (=> d!362148 (= res!576615 (= (list!4754 lt!423811) (Cons!12802 t1!34 Nil!12802)))))

(assert (=> d!362148 (= lt!423811 (singleton!333 t1!34))))

(assert (=> d!362148 (= (singletonSeq!778 t1!34) lt!423811)))

(declare-fun b!1285823 () Bool)

(assert (=> b!1285823 (= e!824646 (isBalanced!1228 (c!211574 lt!423811)))))

(assert (= (and d!362148 res!576615) b!1285823))

(declare-fun m!1436175 () Bool)

(assert (=> d!362148 m!1436175))

(declare-fun m!1436177 () Bool)

(assert (=> d!362148 m!1436177))

(declare-fun m!1436179 () Bool)

(assert (=> b!1285823 m!1436179))

(assert (=> d!361890 d!362148))

(declare-fun d!362150 () Bool)

(assert (=> d!362150 (= (list!4754 (_1!7197 (lex!769 thiss!19762 rules!2550 (print!706 thiss!19762 (singletonSeq!778 t1!34))))) (list!4758 (c!211574 (_1!7197 (lex!769 thiss!19762 rules!2550 (print!706 thiss!19762 (singletonSeq!778 t1!34)))))))))

(declare-fun bs!328074 () Bool)

(assert (= bs!328074 d!362150))

(declare-fun m!1436181 () Bool)

(assert (=> bs!328074 m!1436181))

(assert (=> d!361890 d!362150))

(declare-fun d!362152 () Bool)

(declare-fun lt!423812 () Int)

(assert (=> d!362152 (= lt!423812 (size!10431 (list!4754 (_1!7197 lt!423631))))))

(assert (=> d!362152 (= lt!423812 (size!10432 (c!211574 (_1!7197 lt!423631))))))

(assert (=> d!362152 (= (size!10426 (_1!7197 lt!423631)) lt!423812)))

(declare-fun bs!328075 () Bool)

(assert (= bs!328075 d!362152))

(declare-fun m!1436183 () Bool)

(assert (=> bs!328075 m!1436183))

(assert (=> bs!328075 m!1436183))

(declare-fun m!1436185 () Bool)

(assert (=> bs!328075 m!1436185))

(declare-fun m!1436187 () Bool)

(assert (=> bs!328075 m!1436187))

(assert (=> d!361890 d!362152))

(declare-fun d!362154 () Bool)

(assert (=> d!362154 (= (list!4754 (singletonSeq!778 t1!34)) (list!4758 (c!211574 (singletonSeq!778 t1!34))))))

(declare-fun bs!328076 () Bool)

(assert (= bs!328076 d!362154))

(declare-fun m!1436189 () Bool)

(assert (=> bs!328076 m!1436189))

(assert (=> d!361890 d!362154))

(assert (=> d!361890 d!361886))

(declare-fun d!362156 () Bool)

(assert (=> d!362156 (= (list!4751 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (value!72418 t1!34))) (list!4755 (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (value!72418 t1!34)))))))

(declare-fun bs!328077 () Bool)

(assert (= bs!328077 d!362156))

(declare-fun m!1436191 () Bool)

(assert (=> bs!328077 m!1436191))

(assert (=> b!1285240 d!362156))

(declare-fun d!362158 () Bool)

(declare-fun res!576620 () Bool)

(declare-fun e!824649 () Bool)

(assert (=> d!362158 (=> (not res!576620) (not e!824649))))

(assert (=> d!362158 (= res!576620 (validRegex!1510 (regex!2203 (h!18200 rules!2550))))))

(assert (=> d!362158 (= (ruleValid!539 thiss!19762 (h!18200 rules!2550)) e!824649)))

(declare-fun b!1285828 () Bool)

(declare-fun res!576621 () Bool)

(assert (=> b!1285828 (=> (not res!576621) (not e!824649))))

(declare-fun nullable!1113 (Regex!3517) Bool)

(assert (=> b!1285828 (= res!576621 (not (nullable!1113 (regex!2203 (h!18200 rules!2550)))))))

(declare-fun b!1285829 () Bool)

(assert (=> b!1285829 (= e!824649 (not (= (tag!2465 (h!18200 rules!2550)) (String!15702 ""))))))

(assert (= (and d!362158 res!576620) b!1285828))

(assert (= (and b!1285828 res!576621) b!1285829))

(declare-fun m!1436193 () Bool)

(assert (=> d!362158 m!1436193))

(declare-fun m!1436195 () Bool)

(assert (=> b!1285828 m!1436195))

(assert (=> b!1285370 d!362158))

(declare-fun d!362160 () Bool)

(declare-fun lt!423813 () Int)

(assert (=> d!362160 (>= lt!423813 0)))

(declare-fun e!824650 () Int)

(assert (=> d!362160 (= lt!423813 e!824650)))

(declare-fun c!211659 () Bool)

(assert (=> d!362160 (= c!211659 ((_ is Nil!12798) (originalCharacters!3065 t2!34)))))

(assert (=> d!362160 (= (size!10427 (originalCharacters!3065 t2!34)) lt!423813)))

(declare-fun b!1285830 () Bool)

(assert (=> b!1285830 (= e!824650 0)))

(declare-fun b!1285831 () Bool)

(assert (=> b!1285831 (= e!824650 (+ 1 (size!10427 (t!116759 (originalCharacters!3065 t2!34)))))))

(assert (= (and d!362160 c!211659) b!1285830))

(assert (= (and d!362160 (not c!211659)) b!1285831))

(declare-fun m!1436197 () Bool)

(assert (=> b!1285831 m!1436197))

(assert (=> b!1285248 d!362160))

(declare-fun d!362162 () Bool)

(declare-fun charsToInt!0 (List!12863) (_ BitVec 32))

(assert (=> d!362162 (= (inv!16 (value!72418 t2!34)) (= (charsToInt!0 (text!16498 (value!72418 t2!34))) (value!72409 (value!72418 t2!34))))))

(declare-fun bs!328078 () Bool)

(assert (= bs!328078 d!362162))

(declare-fun m!1436199 () Bool)

(assert (=> bs!328078 m!1436199))

(assert (=> b!1285380 d!362162))

(declare-fun b!1285841 () Bool)

(declare-fun e!824655 () List!12864)

(declare-fun e!824656 () List!12864)

(assert (=> b!1285841 (= e!824655 e!824656)))

(declare-fun c!211665 () Bool)

(assert (=> b!1285841 (= c!211665 ((_ is Leaf!6505) (c!211549 (charsOf!1175 t1!34))))))

(declare-fun d!362164 () Bool)

(declare-fun c!211664 () Bool)

(assert (=> d!362164 (= c!211664 ((_ is Empty!4207) (c!211549 (charsOf!1175 t1!34))))))

(assert (=> d!362164 (= (list!4755 (c!211549 (charsOf!1175 t1!34))) e!824655)))

(declare-fun b!1285842 () Bool)

(declare-fun list!4759 (IArray!8419) List!12864)

(assert (=> b!1285842 (= e!824656 (list!4759 (xs!6918 (c!211549 (charsOf!1175 t1!34)))))))

(declare-fun b!1285840 () Bool)

(assert (=> b!1285840 (= e!824655 Nil!12798)))

(declare-fun b!1285843 () Bool)

(assert (=> b!1285843 (= e!824656 (++!3227 (list!4755 (left!11026 (c!211549 (charsOf!1175 t1!34)))) (list!4755 (right!11356 (c!211549 (charsOf!1175 t1!34))))))))

(assert (= (and d!362164 c!211664) b!1285840))

(assert (= (and d!362164 (not c!211664)) b!1285841))

(assert (= (and b!1285841 c!211665) b!1285842))

(assert (= (and b!1285841 (not c!211665)) b!1285843))

(declare-fun m!1436201 () Bool)

(assert (=> b!1285842 m!1436201))

(declare-fun m!1436203 () Bool)

(assert (=> b!1285843 m!1436203))

(declare-fun m!1436205 () Bool)

(assert (=> b!1285843 m!1436205))

(assert (=> b!1285843 m!1436203))

(assert (=> b!1285843 m!1436205))

(declare-fun m!1436207 () Bool)

(assert (=> b!1285843 m!1436207))

(assert (=> d!361842 d!362164))

(declare-fun d!362166 () Bool)

(declare-fun charsToBigInt!0 (List!12863 Int) Int)

(assert (=> d!362166 (= (inv!15 (value!72418 t2!34)) (= (charsToBigInt!0 (text!16500 (value!72418 t2!34)) 0) (value!72413 (value!72418 t2!34))))))

(declare-fun bs!328079 () Bool)

(assert (= bs!328079 d!362166))

(declare-fun m!1436209 () Bool)

(assert (=> bs!328079 m!1436209))

(assert (=> b!1285378 d!362166))

(declare-fun d!362168 () Bool)

(assert (=> d!362168 (= (isEmpty!7592 (originalCharacters!3065 t2!34)) ((_ is Nil!12798) (originalCharacters!3065 t2!34)))))

(assert (=> d!361836 d!362168))

(declare-fun d!362170 () Bool)

(assert (=> d!362170 (= (inv!15 (value!72418 t1!34)) (= (charsToBigInt!0 (text!16500 (value!72418 t1!34)) 0) (value!72413 (value!72418 t1!34))))))

(declare-fun bs!328080 () Bool)

(assert (= bs!328080 d!362170))

(declare-fun m!1436211 () Bool)

(assert (=> bs!328080 m!1436211))

(assert (=> b!1285211 d!362170))

(declare-fun d!362172 () Bool)

(declare-fun lt!423814 () Bool)

(assert (=> d!362172 (= lt!423814 (isEmpty!7592 (list!4751 (_2!7197 (lex!769 thiss!19762 rules!2550 (print!706 thiss!19762 (singletonSeq!778 t1!34)))))))))

(assert (=> d!362172 (= lt!423814 (isEmpty!7595 (c!211549 (_2!7197 (lex!769 thiss!19762 rules!2550 (print!706 thiss!19762 (singletonSeq!778 t1!34)))))))))

(assert (=> d!362172 (= (isEmpty!7591 (_2!7197 (lex!769 thiss!19762 rules!2550 (print!706 thiss!19762 (singletonSeq!778 t1!34))))) lt!423814)))

(declare-fun bs!328081 () Bool)

(assert (= bs!328081 d!362172))

(declare-fun m!1436213 () Bool)

(assert (=> bs!328081 m!1436213))

(assert (=> bs!328081 m!1436213))

(declare-fun m!1436215 () Bool)

(assert (=> bs!328081 m!1436215))

(declare-fun m!1436217 () Bool)

(assert (=> bs!328081 m!1436217))

(assert (=> b!1285376 d!362172))

(assert (=> b!1285376 d!362144))

(assert (=> b!1285376 d!362146))

(assert (=> b!1285376 d!362148))

(declare-fun d!362174 () Bool)

(assert (=> d!362174 (= (inv!16 (value!72418 t1!34)) (= (charsToInt!0 (text!16498 (value!72418 t1!34))) (value!72409 (value!72418 t1!34))))))

(declare-fun bs!328082 () Bool)

(assert (= bs!328082 d!362174))

(declare-fun m!1436219 () Bool)

(assert (=> bs!328082 m!1436219))

(assert (=> b!1285213 d!362174))

(declare-fun bs!328083 () Bool)

(declare-fun d!362176 () Bool)

(assert (= bs!328083 (and d!362176 d!362122)))

(declare-fun lambda!50410 () Int)

(assert (=> bs!328083 (= (= (toValue!3382 (transformation!2203 (rule!3942 t1!34))) (toValue!3382 (transformation!2203 (h!18200 rules!2550)))) (= lambda!50410 lambda!50408))))

(declare-fun bs!328084 () Bool)

(assert (= bs!328084 (and d!362176 d!362128)))

(assert (=> bs!328084 (= (= (toValue!3382 (transformation!2203 (rule!3942 t1!34))) (toValue!3382 (transformation!2203 (rule!3942 t2!34)))) (= lambda!50410 lambda!50409))))

(assert (=> d!362176 true))

(assert (=> d!362176 (< (dynLambda!5577 order!7791 (toValue!3382 (transformation!2203 (rule!3942 t1!34)))) (dynLambda!5578 order!7793 lambda!50410))))

(assert (=> d!362176 (= (equivClasses!789 (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (toValue!3382 (transformation!2203 (rule!3942 t1!34)))) (Forall2!397 lambda!50410))))

(declare-fun bs!328085 () Bool)

(assert (= bs!328085 d!362176))

(declare-fun m!1436221 () Bool)

(assert (=> bs!328085 m!1436221))

(assert (=> b!1285382 d!362176))

(declare-fun d!362178 () Bool)

(assert (=> d!362178 (= (list!4751 lt!423615) (list!4755 (c!211549 lt!423615)))))

(declare-fun bs!328086 () Bool)

(assert (= bs!328086 d!362178))

(declare-fun m!1436223 () Bool)

(assert (=> bs!328086 m!1436223))

(assert (=> d!361850 d!362178))

(declare-fun bs!328087 () Bool)

(declare-fun d!362180 () Bool)

(assert (= bs!328087 (and d!362180 d!361852)))

(declare-fun lambda!50413 () Int)

(assert (=> bs!328087 (= lambda!50413 lambda!50379)))

(declare-fun bs!328088 () Bool)

(assert (= bs!328088 (and d!362180 d!361964)))

(assert (=> bs!328088 (= lambda!50413 lambda!50389)))

(assert (=> d!362180 true))

(declare-fun lt!423817 () Bool)

(assert (=> d!362180 (= lt!423817 (rulesValidInductive!694 thiss!19762 rules!2550))))

(assert (=> d!362180 (= lt!423817 (forall!3233 rules!2550 lambda!50413))))

(assert (=> d!362180 (= (rulesValid!800 thiss!19762 rules!2550) lt!423817)))

(declare-fun bs!328089 () Bool)

(assert (= bs!328089 d!362180))

(assert (=> bs!328089 m!1435261))

(declare-fun m!1436225 () Bool)

(assert (=> bs!328089 m!1436225))

(assert (=> d!361902 d!362180))

(declare-fun d!362182 () Bool)

(declare-fun lt!423818 () Token!4068)

(assert (=> d!362182 (= lt!423818 (apply!2737 (list!4754 (_1!7197 lt!423631)) 0))))

(assert (=> d!362182 (= lt!423818 (apply!2738 (c!211574 (_1!7197 lt!423631)) 0))))

(declare-fun e!824657 () Bool)

(assert (=> d!362182 e!824657))

(declare-fun res!576622 () Bool)

(assert (=> d!362182 (=> (not res!576622) (not e!824657))))

(assert (=> d!362182 (= res!576622 (<= 0 0))))

(assert (=> d!362182 (= (apply!2733 (_1!7197 lt!423631) 0) lt!423818)))

(declare-fun b!1285844 () Bool)

(assert (=> b!1285844 (= e!824657 (< 0 (size!10426 (_1!7197 lt!423631))))))

(assert (= (and d!362182 res!576622) b!1285844))

(assert (=> d!362182 m!1436183))

(assert (=> d!362182 m!1436183))

(declare-fun m!1436227 () Bool)

(assert (=> d!362182 m!1436227))

(declare-fun m!1436229 () Bool)

(assert (=> d!362182 m!1436229))

(assert (=> b!1285844 m!1435535))

(assert (=> b!1285374 d!362182))

(declare-fun d!362184 () Bool)

(assert (=> d!362184 (= (isEmpty!7592 (originalCharacters!3065 t1!34)) ((_ is Nil!12798) (originalCharacters!3065 t1!34)))))

(assert (=> d!361834 d!362184))

(declare-fun b!1285853 () Bool)

(declare-fun e!824665 () Bool)

(declare-fun e!824664 () Bool)

(assert (=> b!1285853 (= e!824665 e!824664)))

(declare-fun res!576627 () Bool)

(assert (=> b!1285853 (= res!576627 (not ((_ is Cons!12799) rules!2550)))))

(assert (=> b!1285853 (=> res!576627 e!824664)))

(declare-fun d!362186 () Bool)

(declare-fun c!211668 () Bool)

(assert (=> d!362186 (= c!211668 (and ((_ is Cons!12799) rules!2550) (not (= (isSeparator!2203 (h!18200 rules!2550)) (isSeparator!2203 (h!18200 rules!2550))))))))

(assert (=> d!362186 (= (ruleDisjointCharsFromAllFromOtherType!274 (h!18200 rules!2550) rules!2550) e!824665)))

(declare-fun b!1285854 () Bool)

(declare-fun call!88445 () Bool)

(assert (=> b!1285854 (= e!824664 call!88445)))

(declare-fun b!1285855 () Bool)

(declare-fun e!824666 () Bool)

(assert (=> b!1285855 (= e!824666 call!88445)))

(declare-fun bm!88440 () Bool)

(assert (=> bm!88440 (= call!88445 (ruleDisjointCharsFromAllFromOtherType!274 (h!18200 rules!2550) (t!116760 rules!2550)))))

(declare-fun b!1285856 () Bool)

(assert (=> b!1285856 (= e!824665 e!824666)))

(declare-fun res!576628 () Bool)

(declare-fun rulesUseDisjointChars!138 (Rule!4206 Rule!4206) Bool)

(assert (=> b!1285856 (= res!576628 (rulesUseDisjointChars!138 (h!18200 rules!2550) (h!18200 rules!2550)))))

(assert (=> b!1285856 (=> (not res!576628) (not e!824666))))

(assert (= (and d!362186 c!211668) b!1285856))

(assert (= (and d!362186 (not c!211668)) b!1285853))

(assert (= (and b!1285856 res!576628) b!1285855))

(assert (= (and b!1285853 (not res!576627)) b!1285854))

(assert (= (or b!1285855 b!1285854) bm!88440))

(declare-fun m!1436231 () Bool)

(assert (=> bm!88440 m!1436231))

(declare-fun m!1436233 () Bool)

(assert (=> b!1285856 m!1436233))

(assert (=> b!1285391 d!362186))

(declare-fun b!1285857 () Bool)

(declare-fun e!824667 () Bool)

(declare-fun tp!374359 () Bool)

(assert (=> b!1285857 (= e!824667 (and tp_is_empty!6543 tp!374359))))

(assert (=> b!1285398 (= tp!374223 e!824667)))

(assert (= (and b!1285398 ((_ is Cons!12798) (t!116759 (originalCharacters!3065 t1!34)))) b!1285857))

(declare-fun b!1285866 () Bool)

(declare-fun e!824672 () Bool)

(declare-fun tp!374368 () Bool)

(declare-fun tp!374367 () Bool)

(assert (=> b!1285866 (= e!824672 (and (inv!17208 (left!11026 (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (value!72418 t1!34))))) tp!374368 (inv!17208 (right!11356 (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (value!72418 t1!34))))) tp!374367))))

(declare-fun b!1285868 () Bool)

(declare-fun e!824673 () Bool)

(declare-fun tp!374366 () Bool)

(assert (=> b!1285868 (= e!824673 tp!374366)))

(declare-fun b!1285867 () Bool)

(declare-fun inv!17215 (IArray!8419) Bool)

(assert (=> b!1285867 (= e!824672 (and (inv!17215 (xs!6918 (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (value!72418 t1!34))))) e!824673))))

(assert (=> b!1285246 (= tp!374176 (and (inv!17208 (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (value!72418 t1!34)))) e!824672))))

(assert (= (and b!1285246 ((_ is Node!4207) (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (value!72418 t1!34))))) b!1285866))

(assert (= b!1285867 b!1285868))

(assert (= (and b!1285246 ((_ is Leaf!6505) (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t1!34))) (value!72418 t1!34))))) b!1285867))

(declare-fun m!1436235 () Bool)

(assert (=> b!1285866 m!1436235))

(declare-fun m!1436237 () Bool)

(assert (=> b!1285866 m!1436237))

(declare-fun m!1436239 () Bool)

(assert (=> b!1285867 m!1436239))

(assert (=> b!1285246 m!1435351))

(declare-fun e!824674 () Bool)

(assert (=> b!1285414 (= tp!374242 e!824674)))

(declare-fun b!1285870 () Bool)

(declare-fun tp!374372 () Bool)

(declare-fun tp!374370 () Bool)

(assert (=> b!1285870 (= e!824674 (and tp!374372 tp!374370))))

(declare-fun b!1285869 () Bool)

(assert (=> b!1285869 (= e!824674 tp_is_empty!6543)))

(declare-fun b!1285871 () Bool)

(declare-fun tp!374371 () Bool)

(assert (=> b!1285871 (= e!824674 tp!374371)))

(declare-fun b!1285872 () Bool)

(declare-fun tp!374373 () Bool)

(declare-fun tp!374369 () Bool)

(assert (=> b!1285872 (= e!824674 (and tp!374373 tp!374369))))

(assert (= (and b!1285414 ((_ is ElementMatch!3517) (regOne!7546 (regex!2203 (rule!3942 t2!34))))) b!1285869))

(assert (= (and b!1285414 ((_ is Concat!5811) (regOne!7546 (regex!2203 (rule!3942 t2!34))))) b!1285870))

(assert (= (and b!1285414 ((_ is Star!3517) (regOne!7546 (regex!2203 (rule!3942 t2!34))))) b!1285871))

(assert (= (and b!1285414 ((_ is Union!3517) (regOne!7546 (regex!2203 (rule!3942 t2!34))))) b!1285872))

(declare-fun e!824675 () Bool)

(assert (=> b!1285414 (= tp!374240 e!824675)))

(declare-fun b!1285874 () Bool)

(declare-fun tp!374377 () Bool)

(declare-fun tp!374375 () Bool)

(assert (=> b!1285874 (= e!824675 (and tp!374377 tp!374375))))

(declare-fun b!1285873 () Bool)

(assert (=> b!1285873 (= e!824675 tp_is_empty!6543)))

(declare-fun b!1285875 () Bool)

(declare-fun tp!374376 () Bool)

(assert (=> b!1285875 (= e!824675 tp!374376)))

(declare-fun b!1285876 () Bool)

(declare-fun tp!374378 () Bool)

(declare-fun tp!374374 () Bool)

(assert (=> b!1285876 (= e!824675 (and tp!374378 tp!374374))))

(assert (= (and b!1285414 ((_ is ElementMatch!3517) (regTwo!7546 (regex!2203 (rule!3942 t2!34))))) b!1285873))

(assert (= (and b!1285414 ((_ is Concat!5811) (regTwo!7546 (regex!2203 (rule!3942 t2!34))))) b!1285874))

(assert (= (and b!1285414 ((_ is Star!3517) (regTwo!7546 (regex!2203 (rule!3942 t2!34))))) b!1285875))

(assert (= (and b!1285414 ((_ is Union!3517) (regTwo!7546 (regex!2203 (rule!3942 t2!34))))) b!1285876))

(declare-fun b!1285877 () Bool)

(declare-fun e!824676 () Bool)

(declare-fun tp!374379 () Bool)

(assert (=> b!1285877 (= e!824676 (and tp_is_empty!6543 tp!374379))))

(assert (=> b!1285397 (= tp!374222 e!824676)))

(assert (= (and b!1285397 ((_ is Cons!12798) (t!116759 (originalCharacters!3065 t2!34)))) b!1285877))

(declare-fun b!1285880 () Bool)

(declare-fun b_free!30219 () Bool)

(declare-fun b_next!30923 () Bool)

(assert (=> b!1285880 (= b_free!30219 (not b_next!30923))))

(declare-fun tp!374383 () Bool)

(declare-fun b_and!85447 () Bool)

(assert (=> b!1285880 (= tp!374383 b_and!85447)))

(declare-fun b_free!30221 () Bool)

(declare-fun b_next!30925 () Bool)

(assert (=> b!1285880 (= b_free!30221 (not b_next!30925))))

(declare-fun t!116814 () Bool)

(declare-fun tb!69125 () Bool)

(assert (=> (and b!1285880 (= (toChars!3241 (transformation!2203 (h!18200 (t!116760 (t!116760 rules!2550))))) (toChars!3241 (transformation!2203 (rule!3942 t1!34)))) t!116814) tb!69125))

(declare-fun result!83710 () Bool)

(assert (= result!83710 result!83662))

(assert (=> b!1285240 t!116814))

(declare-fun t!116816 () Bool)

(declare-fun tb!69127 () Bool)

(assert (=> (and b!1285880 (= (toChars!3241 (transformation!2203 (h!18200 (t!116760 (t!116760 rules!2550))))) (toChars!3241 (transformation!2203 (rule!3942 t2!34)))) t!116816) tb!69127))

(declare-fun result!83712 () Bool)

(assert (= result!83712 result!83670))

(assert (=> b!1285247 t!116816))

(assert (=> d!361850 t!116814))

(assert (=> d!361908 t!116816))

(declare-fun tp!374382 () Bool)

(declare-fun b_and!85449 () Bool)

(assert (=> b!1285880 (= tp!374382 (and (=> t!116814 result!83710) (=> t!116816 result!83712) b_and!85449))))

(declare-fun e!824679 () Bool)

(assert (=> b!1285880 (= e!824679 (and tp!374383 tp!374382))))

(declare-fun b!1285879 () Bool)

(declare-fun e!824678 () Bool)

(declare-fun tp!374380 () Bool)

(assert (=> b!1285879 (= e!824678 (and tp!374380 (inv!17201 (tag!2465 (h!18200 (t!116760 (t!116760 rules!2550))))) (inv!17204 (transformation!2203 (h!18200 (t!116760 (t!116760 rules!2550))))) e!824679))))

(declare-fun b!1285878 () Bool)

(declare-fun e!824677 () Bool)

(declare-fun tp!374381 () Bool)

(assert (=> b!1285878 (= e!824677 (and e!824678 tp!374381))))

(assert (=> b!1285425 (= tp!374253 e!824677)))

(assert (= b!1285879 b!1285880))

(assert (= b!1285878 b!1285879))

(assert (= (and b!1285425 ((_ is Cons!12799) (t!116760 (t!116760 rules!2550)))) b!1285878))

(declare-fun m!1436241 () Bool)

(assert (=> b!1285879 m!1436241))

(declare-fun m!1436243 () Bool)

(assert (=> b!1285879 m!1436243))

(declare-fun e!824681 () Bool)

(assert (=> b!1285426 (= tp!374252 e!824681)))

(declare-fun b!1285882 () Bool)

(declare-fun tp!374387 () Bool)

(declare-fun tp!374385 () Bool)

(assert (=> b!1285882 (= e!824681 (and tp!374387 tp!374385))))

(declare-fun b!1285881 () Bool)

(assert (=> b!1285881 (= e!824681 tp_is_empty!6543)))

(declare-fun b!1285883 () Bool)

(declare-fun tp!374386 () Bool)

(assert (=> b!1285883 (= e!824681 tp!374386)))

(declare-fun b!1285884 () Bool)

(declare-fun tp!374388 () Bool)

(declare-fun tp!374384 () Bool)

(assert (=> b!1285884 (= e!824681 (and tp!374388 tp!374384))))

(assert (= (and b!1285426 ((_ is ElementMatch!3517) (regex!2203 (h!18200 (t!116760 rules!2550))))) b!1285881))

(assert (= (and b!1285426 ((_ is Concat!5811) (regex!2203 (h!18200 (t!116760 rules!2550))))) b!1285882))

(assert (= (and b!1285426 ((_ is Star!3517) (regex!2203 (h!18200 (t!116760 rules!2550))))) b!1285883))

(assert (= (and b!1285426 ((_ is Union!3517) (regex!2203 (h!18200 (t!116760 rules!2550))))) b!1285884))

(declare-fun e!824682 () Bool)

(assert (=> b!1285430 (= tp!374258 e!824682)))

(declare-fun b!1285886 () Bool)

(declare-fun tp!374392 () Bool)

(declare-fun tp!374390 () Bool)

(assert (=> b!1285886 (= e!824682 (and tp!374392 tp!374390))))

(declare-fun b!1285885 () Bool)

(assert (=> b!1285885 (= e!824682 tp_is_empty!6543)))

(declare-fun b!1285887 () Bool)

(declare-fun tp!374391 () Bool)

(assert (=> b!1285887 (= e!824682 tp!374391)))

(declare-fun b!1285888 () Bool)

(declare-fun tp!374393 () Bool)

(declare-fun tp!374389 () Bool)

(assert (=> b!1285888 (= e!824682 (and tp!374393 tp!374389))))

(assert (= (and b!1285430 ((_ is ElementMatch!3517) (reg!3846 (regex!2203 (h!18200 rules!2550))))) b!1285885))

(assert (= (and b!1285430 ((_ is Concat!5811) (reg!3846 (regex!2203 (h!18200 rules!2550))))) b!1285886))

(assert (= (and b!1285430 ((_ is Star!3517) (reg!3846 (regex!2203 (h!18200 rules!2550))))) b!1285887))

(assert (= (and b!1285430 ((_ is Union!3517) (reg!3846 (regex!2203 (h!18200 rules!2550))))) b!1285888))

(declare-fun e!824683 () Bool)

(assert (=> b!1285431 (= tp!374260 e!824683)))

(declare-fun b!1285890 () Bool)

(declare-fun tp!374397 () Bool)

(declare-fun tp!374395 () Bool)

(assert (=> b!1285890 (= e!824683 (and tp!374397 tp!374395))))

(declare-fun b!1285889 () Bool)

(assert (=> b!1285889 (= e!824683 tp_is_empty!6543)))

(declare-fun b!1285891 () Bool)

(declare-fun tp!374396 () Bool)

(assert (=> b!1285891 (= e!824683 tp!374396)))

(declare-fun b!1285892 () Bool)

(declare-fun tp!374398 () Bool)

(declare-fun tp!374394 () Bool)

(assert (=> b!1285892 (= e!824683 (and tp!374398 tp!374394))))

(assert (= (and b!1285431 ((_ is ElementMatch!3517) (regOne!7547 (regex!2203 (h!18200 rules!2550))))) b!1285889))

(assert (= (and b!1285431 ((_ is Concat!5811) (regOne!7547 (regex!2203 (h!18200 rules!2550))))) b!1285890))

(assert (= (and b!1285431 ((_ is Star!3517) (regOne!7547 (regex!2203 (h!18200 rules!2550))))) b!1285891))

(assert (= (and b!1285431 ((_ is Union!3517) (regOne!7547 (regex!2203 (h!18200 rules!2550))))) b!1285892))

(declare-fun e!824684 () Bool)

(assert (=> b!1285431 (= tp!374256 e!824684)))

(declare-fun b!1285894 () Bool)

(declare-fun tp!374402 () Bool)

(declare-fun tp!374400 () Bool)

(assert (=> b!1285894 (= e!824684 (and tp!374402 tp!374400))))

(declare-fun b!1285893 () Bool)

(assert (=> b!1285893 (= e!824684 tp_is_empty!6543)))

(declare-fun b!1285895 () Bool)

(declare-fun tp!374401 () Bool)

(assert (=> b!1285895 (= e!824684 tp!374401)))

(declare-fun b!1285896 () Bool)

(declare-fun tp!374403 () Bool)

(declare-fun tp!374399 () Bool)

(assert (=> b!1285896 (= e!824684 (and tp!374403 tp!374399))))

(assert (= (and b!1285431 ((_ is ElementMatch!3517) (regTwo!7547 (regex!2203 (h!18200 rules!2550))))) b!1285893))

(assert (= (and b!1285431 ((_ is Concat!5811) (regTwo!7547 (regex!2203 (h!18200 rules!2550))))) b!1285894))

(assert (= (and b!1285431 ((_ is Star!3517) (regTwo!7547 (regex!2203 (h!18200 rules!2550))))) b!1285895))

(assert (= (and b!1285431 ((_ is Union!3517) (regTwo!7547 (regex!2203 (h!18200 rules!2550))))) b!1285896))

(declare-fun tp!374405 () Bool)

(declare-fun tp!374406 () Bool)

(declare-fun b!1285897 () Bool)

(declare-fun e!824685 () Bool)

(assert (=> b!1285897 (= e!824685 (and (inv!17208 (left!11026 (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (value!72418 t2!34))))) tp!374406 (inv!17208 (right!11356 (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (value!72418 t2!34))))) tp!374405))))

(declare-fun b!1285899 () Bool)

(declare-fun e!824686 () Bool)

(declare-fun tp!374404 () Bool)

(assert (=> b!1285899 (= e!824686 tp!374404)))

(declare-fun b!1285898 () Bool)

(assert (=> b!1285898 (= e!824685 (and (inv!17215 (xs!6918 (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (value!72418 t2!34))))) e!824686))))

(assert (=> b!1285249 (= tp!374177 (and (inv!17208 (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (value!72418 t2!34)))) e!824685))))

(assert (= (and b!1285249 ((_ is Node!4207) (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (value!72418 t2!34))))) b!1285897))

(assert (= b!1285898 b!1285899))

(assert (= (and b!1285249 ((_ is Leaf!6505) (c!211549 (dynLambda!5568 (toChars!3241 (transformation!2203 (rule!3942 t2!34))) (value!72418 t2!34))))) b!1285898))

(declare-fun m!1436245 () Bool)

(assert (=> b!1285897 m!1436245))

(declare-fun m!1436247 () Bool)

(assert (=> b!1285897 m!1436247))

(declare-fun m!1436249 () Bool)

(assert (=> b!1285898 m!1436249))

(assert (=> b!1285249 m!1435363))

(declare-fun e!824687 () Bool)

(assert (=> b!1285410 (= tp!374237 e!824687)))

(declare-fun b!1285901 () Bool)

(declare-fun tp!374410 () Bool)

(declare-fun tp!374408 () Bool)

(assert (=> b!1285901 (= e!824687 (and tp!374410 tp!374408))))

(declare-fun b!1285900 () Bool)

(assert (=> b!1285900 (= e!824687 tp_is_empty!6543)))

(declare-fun b!1285902 () Bool)

(declare-fun tp!374409 () Bool)

(assert (=> b!1285902 (= e!824687 tp!374409)))

(declare-fun b!1285903 () Bool)

(declare-fun tp!374411 () Bool)

(declare-fun tp!374407 () Bool)

(assert (=> b!1285903 (= e!824687 (and tp!374411 tp!374407))))

(assert (= (and b!1285410 ((_ is ElementMatch!3517) (regOne!7546 (regex!2203 (rule!3942 t1!34))))) b!1285900))

(assert (= (and b!1285410 ((_ is Concat!5811) (regOne!7546 (regex!2203 (rule!3942 t1!34))))) b!1285901))

(assert (= (and b!1285410 ((_ is Star!3517) (regOne!7546 (regex!2203 (rule!3942 t1!34))))) b!1285902))

(assert (= (and b!1285410 ((_ is Union!3517) (regOne!7546 (regex!2203 (rule!3942 t1!34))))) b!1285903))

(declare-fun e!824688 () Bool)

(assert (=> b!1285410 (= tp!374235 e!824688)))

(declare-fun b!1285905 () Bool)

(declare-fun tp!374415 () Bool)

(declare-fun tp!374413 () Bool)

(assert (=> b!1285905 (= e!824688 (and tp!374415 tp!374413))))

(declare-fun b!1285904 () Bool)

(assert (=> b!1285904 (= e!824688 tp_is_empty!6543)))

(declare-fun b!1285906 () Bool)

(declare-fun tp!374414 () Bool)

(assert (=> b!1285906 (= e!824688 tp!374414)))

(declare-fun b!1285907 () Bool)

(declare-fun tp!374416 () Bool)

(declare-fun tp!374412 () Bool)

(assert (=> b!1285907 (= e!824688 (and tp!374416 tp!374412))))

(assert (= (and b!1285410 ((_ is ElementMatch!3517) (regTwo!7546 (regex!2203 (rule!3942 t1!34))))) b!1285904))

(assert (= (and b!1285410 ((_ is Concat!5811) (regTwo!7546 (regex!2203 (rule!3942 t1!34))))) b!1285905))

(assert (= (and b!1285410 ((_ is Star!3517) (regTwo!7546 (regex!2203 (rule!3942 t1!34))))) b!1285906))

(assert (= (and b!1285410 ((_ is Union!3517) (regTwo!7546 (regex!2203 (rule!3942 t1!34))))) b!1285907))

(declare-fun e!824689 () Bool)

(assert (=> b!1285415 (= tp!374241 e!824689)))

(declare-fun b!1285909 () Bool)

(declare-fun tp!374420 () Bool)

(declare-fun tp!374418 () Bool)

(assert (=> b!1285909 (= e!824689 (and tp!374420 tp!374418))))

(declare-fun b!1285908 () Bool)

(assert (=> b!1285908 (= e!824689 tp_is_empty!6543)))

(declare-fun b!1285910 () Bool)

(declare-fun tp!374419 () Bool)

(assert (=> b!1285910 (= e!824689 tp!374419)))

(declare-fun b!1285911 () Bool)

(declare-fun tp!374421 () Bool)

(declare-fun tp!374417 () Bool)

(assert (=> b!1285911 (= e!824689 (and tp!374421 tp!374417))))

(assert (= (and b!1285415 ((_ is ElementMatch!3517) (reg!3846 (regex!2203 (rule!3942 t2!34))))) b!1285908))

(assert (= (and b!1285415 ((_ is Concat!5811) (reg!3846 (regex!2203 (rule!3942 t2!34))))) b!1285909))

(assert (= (and b!1285415 ((_ is Star!3517) (reg!3846 (regex!2203 (rule!3942 t2!34))))) b!1285910))

(assert (= (and b!1285415 ((_ is Union!3517) (reg!3846 (regex!2203 (rule!3942 t2!34))))) b!1285911))

(declare-fun e!824690 () Bool)

(assert (=> b!1285411 (= tp!374236 e!824690)))

(declare-fun b!1285913 () Bool)

(declare-fun tp!374425 () Bool)

(declare-fun tp!374423 () Bool)

(assert (=> b!1285913 (= e!824690 (and tp!374425 tp!374423))))

(declare-fun b!1285912 () Bool)

(assert (=> b!1285912 (= e!824690 tp_is_empty!6543)))

(declare-fun b!1285914 () Bool)

(declare-fun tp!374424 () Bool)

(assert (=> b!1285914 (= e!824690 tp!374424)))

(declare-fun b!1285915 () Bool)

(declare-fun tp!374426 () Bool)

(declare-fun tp!374422 () Bool)

(assert (=> b!1285915 (= e!824690 (and tp!374426 tp!374422))))

(assert (= (and b!1285411 ((_ is ElementMatch!3517) (reg!3846 (regex!2203 (rule!3942 t1!34))))) b!1285912))

(assert (= (and b!1285411 ((_ is Concat!5811) (reg!3846 (regex!2203 (rule!3942 t1!34))))) b!1285913))

(assert (= (and b!1285411 ((_ is Star!3517) (reg!3846 (regex!2203 (rule!3942 t1!34))))) b!1285914))

(assert (= (and b!1285411 ((_ is Union!3517) (reg!3846 (regex!2203 (rule!3942 t1!34))))) b!1285915))

(declare-fun e!824691 () Bool)

(assert (=> b!1285416 (= tp!374243 e!824691)))

(declare-fun b!1285917 () Bool)

(declare-fun tp!374430 () Bool)

(declare-fun tp!374428 () Bool)

(assert (=> b!1285917 (= e!824691 (and tp!374430 tp!374428))))

(declare-fun b!1285916 () Bool)

(assert (=> b!1285916 (= e!824691 tp_is_empty!6543)))

(declare-fun b!1285918 () Bool)

(declare-fun tp!374429 () Bool)

(assert (=> b!1285918 (= e!824691 tp!374429)))

(declare-fun b!1285919 () Bool)

(declare-fun tp!374431 () Bool)

(declare-fun tp!374427 () Bool)

(assert (=> b!1285919 (= e!824691 (and tp!374431 tp!374427))))

(assert (= (and b!1285416 ((_ is ElementMatch!3517) (regOne!7547 (regex!2203 (rule!3942 t2!34))))) b!1285916))

(assert (= (and b!1285416 ((_ is Concat!5811) (regOne!7547 (regex!2203 (rule!3942 t2!34))))) b!1285917))

(assert (= (and b!1285416 ((_ is Star!3517) (regOne!7547 (regex!2203 (rule!3942 t2!34))))) b!1285918))

(assert (= (and b!1285416 ((_ is Union!3517) (regOne!7547 (regex!2203 (rule!3942 t2!34))))) b!1285919))

(declare-fun e!824692 () Bool)

(assert (=> b!1285416 (= tp!374239 e!824692)))

(declare-fun b!1285921 () Bool)

(declare-fun tp!374435 () Bool)

(declare-fun tp!374433 () Bool)

(assert (=> b!1285921 (= e!824692 (and tp!374435 tp!374433))))

(declare-fun b!1285920 () Bool)

(assert (=> b!1285920 (= e!824692 tp_is_empty!6543)))

(declare-fun b!1285922 () Bool)

(declare-fun tp!374434 () Bool)

(assert (=> b!1285922 (= e!824692 tp!374434)))

(declare-fun b!1285923 () Bool)

(declare-fun tp!374436 () Bool)

(declare-fun tp!374432 () Bool)

(assert (=> b!1285923 (= e!824692 (and tp!374436 tp!374432))))

(assert (= (and b!1285416 ((_ is ElementMatch!3517) (regTwo!7547 (regex!2203 (rule!3942 t2!34))))) b!1285920))

(assert (= (and b!1285416 ((_ is Concat!5811) (regTwo!7547 (regex!2203 (rule!3942 t2!34))))) b!1285921))

(assert (= (and b!1285416 ((_ is Star!3517) (regTwo!7547 (regex!2203 (rule!3942 t2!34))))) b!1285922))

(assert (= (and b!1285416 ((_ is Union!3517) (regTwo!7547 (regex!2203 (rule!3942 t2!34))))) b!1285923))

(declare-fun e!824693 () Bool)

(assert (=> b!1285429 (= tp!374259 e!824693)))

(declare-fun b!1285925 () Bool)

(declare-fun tp!374440 () Bool)

(declare-fun tp!374438 () Bool)

(assert (=> b!1285925 (= e!824693 (and tp!374440 tp!374438))))

(declare-fun b!1285924 () Bool)

(assert (=> b!1285924 (= e!824693 tp_is_empty!6543)))

(declare-fun b!1285926 () Bool)

(declare-fun tp!374439 () Bool)

(assert (=> b!1285926 (= e!824693 tp!374439)))

(declare-fun b!1285927 () Bool)

(declare-fun tp!374441 () Bool)

(declare-fun tp!374437 () Bool)

(assert (=> b!1285927 (= e!824693 (and tp!374441 tp!374437))))

(assert (= (and b!1285429 ((_ is ElementMatch!3517) (regOne!7546 (regex!2203 (h!18200 rules!2550))))) b!1285924))

(assert (= (and b!1285429 ((_ is Concat!5811) (regOne!7546 (regex!2203 (h!18200 rules!2550))))) b!1285925))

(assert (= (and b!1285429 ((_ is Star!3517) (regOne!7546 (regex!2203 (h!18200 rules!2550))))) b!1285926))

(assert (= (and b!1285429 ((_ is Union!3517) (regOne!7546 (regex!2203 (h!18200 rules!2550))))) b!1285927))

(declare-fun e!824694 () Bool)

(assert (=> b!1285429 (= tp!374257 e!824694)))

(declare-fun b!1285929 () Bool)

(declare-fun tp!374445 () Bool)

(declare-fun tp!374443 () Bool)

(assert (=> b!1285929 (= e!824694 (and tp!374445 tp!374443))))

(declare-fun b!1285928 () Bool)

(assert (=> b!1285928 (= e!824694 tp_is_empty!6543)))

(declare-fun b!1285930 () Bool)

(declare-fun tp!374444 () Bool)

(assert (=> b!1285930 (= e!824694 tp!374444)))

(declare-fun b!1285931 () Bool)

(declare-fun tp!374446 () Bool)

(declare-fun tp!374442 () Bool)

(assert (=> b!1285931 (= e!824694 (and tp!374446 tp!374442))))

(assert (= (and b!1285429 ((_ is ElementMatch!3517) (regTwo!7546 (regex!2203 (h!18200 rules!2550))))) b!1285928))

(assert (= (and b!1285429 ((_ is Concat!5811) (regTwo!7546 (regex!2203 (h!18200 rules!2550))))) b!1285929))

(assert (= (and b!1285429 ((_ is Star!3517) (regTwo!7546 (regex!2203 (h!18200 rules!2550))))) b!1285930))

(assert (= (and b!1285429 ((_ is Union!3517) (regTwo!7546 (regex!2203 (h!18200 rules!2550))))) b!1285931))

(declare-fun e!824695 () Bool)

(assert (=> b!1285412 (= tp!374238 e!824695)))

(declare-fun b!1285933 () Bool)

(declare-fun tp!374450 () Bool)

(declare-fun tp!374448 () Bool)

(assert (=> b!1285933 (= e!824695 (and tp!374450 tp!374448))))

(declare-fun b!1285932 () Bool)

(assert (=> b!1285932 (= e!824695 tp_is_empty!6543)))

(declare-fun b!1285934 () Bool)

(declare-fun tp!374449 () Bool)

(assert (=> b!1285934 (= e!824695 tp!374449)))

(declare-fun b!1285935 () Bool)

(declare-fun tp!374451 () Bool)

(declare-fun tp!374447 () Bool)

(assert (=> b!1285935 (= e!824695 (and tp!374451 tp!374447))))

(assert (= (and b!1285412 ((_ is ElementMatch!3517) (regOne!7547 (regex!2203 (rule!3942 t1!34))))) b!1285932))

(assert (= (and b!1285412 ((_ is Concat!5811) (regOne!7547 (regex!2203 (rule!3942 t1!34))))) b!1285933))

(assert (= (and b!1285412 ((_ is Star!3517) (regOne!7547 (regex!2203 (rule!3942 t1!34))))) b!1285934))

(assert (= (and b!1285412 ((_ is Union!3517) (regOne!7547 (regex!2203 (rule!3942 t1!34))))) b!1285935))

(declare-fun e!824696 () Bool)

(assert (=> b!1285412 (= tp!374234 e!824696)))

(declare-fun b!1285937 () Bool)

(declare-fun tp!374455 () Bool)

(declare-fun tp!374453 () Bool)

(assert (=> b!1285937 (= e!824696 (and tp!374455 tp!374453))))

(declare-fun b!1285936 () Bool)

(assert (=> b!1285936 (= e!824696 tp_is_empty!6543)))

(declare-fun b!1285938 () Bool)

(declare-fun tp!374454 () Bool)

(assert (=> b!1285938 (= e!824696 tp!374454)))

(declare-fun b!1285939 () Bool)

(declare-fun tp!374456 () Bool)

(declare-fun tp!374452 () Bool)

(assert (=> b!1285939 (= e!824696 (and tp!374456 tp!374452))))

(assert (= (and b!1285412 ((_ is ElementMatch!3517) (regTwo!7547 (regex!2203 (rule!3942 t1!34))))) b!1285936))

(assert (= (and b!1285412 ((_ is Concat!5811) (regTwo!7547 (regex!2203 (rule!3942 t1!34))))) b!1285937))

(assert (= (and b!1285412 ((_ is Star!3517) (regTwo!7547 (regex!2203 (rule!3942 t1!34))))) b!1285938))

(assert (= (and b!1285412 ((_ is Union!3517) (regTwo!7547 (regex!2203 (rule!3942 t1!34))))) b!1285939))

(declare-fun b_lambda!36645 () Bool)

(assert (= b_lambda!36639 (or d!361852 b_lambda!36645)))

(declare-fun bs!328090 () Bool)

(declare-fun d!362188 () Bool)

(assert (= bs!328090 (and d!362188 d!361852)))

(assert (=> bs!328090 (= (dynLambda!5574 lambda!50379 (h!18200 rules!2550)) (ruleValid!539 thiss!19762 (h!18200 rules!2550)))))

(assert (=> bs!328090 m!1435519))

(assert (=> b!1285511 d!362188))

(check-sat (not b!1285910) (not b!1285630) (not b!1285907) (not d!362122) (not b!1285868) (not b!1285504) (not b!1285899) (not b!1285810) (not d!362136) (not d!362148) (not d!362018) b_and!85447 (not b!1285876) (not d!362152) (not b!1285926) (not b!1285811) (not b!1285874) (not b!1285572) (not b!1285473) (not d!362156) (not b!1285461) (not d!362170) (not b!1285515) (not b!1285571) (not d!361996) (not d!361942) (not d!361972) (not b!1285492) (not bm!88436) (not b!1285817) (not d!362180) (not b!1285867) (not d!362134) (not b!1285902) (not d!362178) (not b!1285708) (not b!1285615) (not d!362118) (not b!1285914) (not d!362006) (not b!1285917) (not bm!88440) (not b!1285820) b_and!85433 (not b!1285883) (not d!362146) (not b!1285815) (not d!362154) (not d!361998) (not b!1285512) (not b_lambda!36631) b_and!85437 (not b!1285930) (not b!1285800) (not b_next!30925) (not d!362032) (not b!1285937) (not b!1285895) b_and!85379 b_and!85435 (not b!1285898) (not b_next!30903) (not b_lambda!36645) (not d!361950) (not d!362174) (not d!361946) (not b!1285872) (not b!1285486) (not b!1285844) (not b!1285516) (not bs!328090) (not d!361964) (not d!362036) (not b!1285870) (not b!1285866) (not b!1285843) (not b!1285470) (not d!362028) (not b!1285921) (not b!1285611) (not d!362124) (not b!1285875) (not b!1285929) (not b!1285831) (not b!1285842) (not b_next!30915) (not b!1285249) (not d!362150) (not b!1285887) (not b!1285890) (not b!1285570) (not b!1285884) (not d!362132) (not b!1285919) (not b_next!30899) (not b!1285801) (not d!361990) (not d!361936) (not b!1285923) (not d!361978) (not b!1285822) (not d!362022) (not b!1285628) (not b!1285705) (not b!1285471) (not b!1285905) (not d!362128) (not b!1285927) (not b!1285518) (not b!1285931) (not b!1285877) (not b!1285799) (not b!1285856) (not b!1285901) (not b!1285913) (not b_next!30923) (not d!362162) (not b!1285892) (not b!1285938) tp_is_empty!6543 (not d!362126) (not d!362176) (not b_next!30909) (not d!362106) (not d!362024) (not b!1285934) (not d!362144) (not b!1285915) (not b!1285472) (not b!1285909) (not b!1285888) (not b!1285495) (not b!1285891) b_and!85439 (not b!1285614) (not b!1285625) (not b!1285871) (not b!1285935) (not b!1285918) (not b!1285537) (not d!361938) (not b!1285894) (not b!1285813) (not b!1285828) (not b!1285819) (not b!1285903) (not d!361940) (not d!362158) (not b!1285246) (not b!1285627) (not b_next!30917) (not b!1285823) (not b_lambda!36637) (not b_lambda!36633) (not b!1285939) (not b!1285879) (not d!361948) (not b!1285519) (not b!1285535) (not b!1285897) (not d!361988) (not d!362172) (not b!1285933) (not b!1285857) (not b!1285821) (not b_lambda!36635) (not b!1285922) (not b!1285878) b_and!85375 (not b!1285707) b_and!85449 (not d!362182) (not b!1285533) (not b_next!30907) b_and!85383 (not d!362166) (not b!1285613) (not b_next!30901) (not d!361960) (not b!1285911) (not d!362038) (not b!1285502) (not b!1285882) (not b!1285906) (not b!1285706) (not b!1285925) (not d!361962) (not b_next!30905) b_and!85441 (not b!1285896) (not b!1285886))
(check-sat b_and!85447 b_and!85433 (not b_next!30915) (not b_next!30899) (not b_next!30923) (not b_next!30909) b_and!85439 (not b_next!30917) (not b_next!30925) b_and!85437 b_and!85379 b_and!85435 (not b_next!30903) b_and!85375 b_and!85449 (not b_next!30907) b_and!85383 (not b_next!30901) (not b_next!30905) b_and!85441)

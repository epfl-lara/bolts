; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113830 () Bool)

(assert start!113830)

(declare-fun b!1293277 () Bool)

(declare-fun b_free!30627 () Bool)

(declare-fun b_next!31331 () Bool)

(assert (=> b!1293277 (= b_free!30627 (not b_next!31331))))

(declare-fun tp!377092 () Bool)

(declare-fun b_and!86239 () Bool)

(assert (=> b!1293277 (= tp!377092 b_and!86239)))

(declare-fun b_free!30629 () Bool)

(declare-fun b_next!31333 () Bool)

(assert (=> b!1293277 (= b_free!30629 (not b_next!31333))))

(declare-fun tp!377098 () Bool)

(declare-fun b_and!86241 () Bool)

(assert (=> b!1293277 (= tp!377098 b_and!86241)))

(declare-fun b!1293285 () Bool)

(declare-fun b_free!30631 () Bool)

(declare-fun b_next!31335 () Bool)

(assert (=> b!1293285 (= b_free!30631 (not b_next!31335))))

(declare-fun tp!377093 () Bool)

(declare-fun b_and!86243 () Bool)

(assert (=> b!1293285 (= tp!377093 b_and!86243)))

(declare-fun b_free!30633 () Bool)

(declare-fun b_next!31337 () Bool)

(assert (=> b!1293285 (= b_free!30633 (not b_next!31337))))

(declare-fun tp!377091 () Bool)

(declare-fun b_and!86245 () Bool)

(assert (=> b!1293285 (= tp!377091 b_and!86245)))

(declare-fun b!1293280 () Bool)

(declare-fun b_free!30635 () Bool)

(declare-fun b_next!31339 () Bool)

(assert (=> b!1293280 (= b_free!30635 (not b_next!31339))))

(declare-fun tp!377097 () Bool)

(declare-fun b_and!86247 () Bool)

(assert (=> b!1293280 (= tp!377097 b_and!86247)))

(declare-fun b_free!30637 () Bool)

(declare-fun b_next!31341 () Bool)

(assert (=> b!1293280 (= b_free!30637 (not b_next!31341))))

(declare-fun tp!377087 () Bool)

(declare-fun b_and!86249 () Bool)

(assert (=> b!1293280 (= tp!377087 b_and!86249)))

(declare-fun b!1293281 () Bool)

(assert (=> b!1293281 true))

(assert (=> b!1293281 true))

(declare-fun e!829430 () Bool)

(assert (=> b!1293277 (= e!829430 (and tp!377092 tp!377098))))

(declare-fun b!1293278 () Bool)

(declare-fun e!829444 () Bool)

(declare-datatypes ((C!7376 0))(
  ( (C!7377 (val!4248 Int)) )
))
(declare-datatypes ((List!13006 0))(
  ( (Nil!12940) (Cons!12940 (h!18341 C!7376) (t!117315 List!13006)) )
))
(declare-datatypes ((IArray!8507 0))(
  ( (IArray!8508 (innerList!4311 List!13006)) )
))
(declare-datatypes ((Conc!4251 0))(
  ( (Node!4251 (left!11131 Conc!4251) (right!11461 Conc!4251) (csize!8732 Int) (cheight!4462 Int)) (Leaf!6562 (xs!6962 IArray!8507) (csize!8733 Int)) (Empty!4251) )
))
(declare-datatypes ((BalanceConc!8442 0))(
  ( (BalanceConc!8443 (c!212845 Conc!4251)) )
))
(declare-fun lt!425587 () BalanceConc!8442)

(declare-fun size!10568 (BalanceConc!8442) Int)

(assert (=> b!1293278 (= e!829444 (< 0 (size!10568 lt!425587)))))

(declare-datatypes ((List!13007 0))(
  ( (Nil!12941) (Cons!12941 (h!18342 (_ BitVec 16)) (t!117316 List!13007)) )
))
(declare-datatypes ((TokenValue!2319 0))(
  ( (FloatLiteralValue!4638 (text!16678 List!13007)) (TokenValueExt!2318 (__x!8467 Int)) (Broken!11595 (value!73133 List!13007)) (Object!2384) (End!2319) (Def!2319) (Underscore!2319) (Match!2319) (Else!2319) (Error!2319) (Case!2319) (If!2319) (Extends!2319) (Abstract!2319) (Class!2319) (Val!2319) (DelimiterValue!4638 (del!2379 List!13007)) (KeywordValue!2325 (value!73134 List!13007)) (CommentValue!4638 (value!73135 List!13007)) (WhitespaceValue!4638 (value!73136 List!13007)) (IndentationValue!2319 (value!73137 List!13007)) (String!15830) (Int32!2319) (Broken!11596 (value!73138 List!13007)) (Boolean!2320) (Unit!19083) (OperatorValue!2322 (op!2379 List!13007)) (IdentifierValue!4638 (value!73139 List!13007)) (IdentifierValue!4639 (value!73140 List!13007)) (WhitespaceValue!4639 (value!73141 List!13007)) (True!4638) (False!4638) (Broken!11597 (value!73142 List!13007)) (Broken!11598 (value!73143 List!13007)) (True!4639) (RightBrace!2319) (RightBracket!2319) (Colon!2319) (Null!2319) (Comma!2319) (LeftBracket!2319) (False!4639) (LeftBrace!2319) (ImaginaryLiteralValue!2319 (text!16679 List!13007)) (StringLiteralValue!6957 (value!73144 List!13007)) (EOFValue!2319 (value!73145 List!13007)) (IdentValue!2319 (value!73146 List!13007)) (DelimiterValue!4639 (value!73147 List!13007)) (DedentValue!2319 (value!73148 List!13007)) (NewLineValue!2319 (value!73149 List!13007)) (IntegerValue!6957 (value!73150 (_ BitVec 32)) (text!16680 List!13007)) (IntegerValue!6958 (value!73151 Int) (text!16681 List!13007)) (Times!2319) (Or!2319) (Equal!2319) (Minus!2319) (Broken!11599 (value!73152 List!13007)) (And!2319) (Div!2319) (LessEqual!2319) (Mod!2319) (Concat!5862) (Not!2319) (Plus!2319) (SpaceValue!2319 (value!73153 List!13007)) (IntegerValue!6959 (value!73154 Int) (text!16682 List!13007)) (StringLiteralValue!6958 (text!16683 List!13007)) (FloatLiteralValue!4639 (text!16684 List!13007)) (BytesLiteralValue!2319 (value!73155 List!13007)) (CommentValue!4639 (value!73156 List!13007)) (StringLiteralValue!6959 (value!73157 List!13007)) (ErrorTokenValue!2319 (msg!2380 List!13007)) )
))
(declare-datatypes ((String!15831 0))(
  ( (String!15832 (value!73158 String)) )
))
(declare-datatypes ((Regex!3543 0))(
  ( (ElementMatch!3543 (c!212846 C!7376)) (Concat!5863 (regOne!7598 Regex!3543) (regTwo!7598 Regex!3543)) (EmptyExpr!3543) (Star!3543 (reg!3872 Regex!3543)) (EmptyLang!3543) (Union!3543 (regOne!7599 Regex!3543) (regTwo!7599 Regex!3543)) )
))
(declare-datatypes ((TokenValueInjection!4298 0))(
  ( (TokenValueInjection!4299 (toValue!3432 Int) (toChars!3291 Int)) )
))
(declare-datatypes ((Rule!4258 0))(
  ( (Rule!4259 (regex!2229 Regex!3543) (tag!2491 String!15831) (isSeparator!2229 Bool) (transformation!2229 TokenValueInjection!4298)) )
))
(declare-datatypes ((Token!4120 0))(
  ( (Token!4121 (value!73159 TokenValue!2319) (rule!3968 Rule!4258) (size!10569 Int) (originalCharacters!3091 List!13006)) )
))
(declare-fun t1!34 () Token!4120)

(declare-fun b!1293279 () Bool)

(declare-fun tp!377090 () Bool)

(declare-fun e!829448 () Bool)

(declare-fun inv!17361 (String!15831) Bool)

(declare-fun inv!17364 (TokenValueInjection!4298) Bool)

(assert (=> b!1293279 (= e!829448 (and tp!377090 (inv!17361 (tag!2491 (rule!3968 t1!34))) (inv!17364 (transformation!2229 (rule!3968 t1!34))) e!829430))))

(declare-fun e!829436 () Bool)

(assert (=> b!1293280 (= e!829436 (and tp!377097 tp!377087))))

(declare-fun e!829446 () Bool)

(declare-fun e!829439 () Bool)

(assert (=> b!1293281 (= e!829446 (not e!829439))))

(declare-fun res!579551 () Bool)

(assert (=> b!1293281 (=> res!579551 e!829439)))

(declare-fun lambda!50853 () Int)

(declare-fun Exists!701 (Int) Bool)

(assert (=> b!1293281 (= res!579551 (not (Exists!701 lambda!50853)))))

(assert (=> b!1293281 (Exists!701 lambda!50853)))

(declare-datatypes ((Unit!19084 0))(
  ( (Unit!19085) )
))
(declare-fun lt!425592 () Unit!19084)

(declare-fun lt!425589 () Regex!3543)

(declare-fun lt!425591 () List!13006)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!19 (Regex!3543 List!13006) Unit!19084)

(assert (=> b!1293281 (= lt!425592 (lemmaPrefixMatchThenExistsStringThatMatches!19 lt!425589 lt!425591))))

(declare-fun b!1293282 () Bool)

(declare-fun res!579542 () Bool)

(declare-fun e!829434 () Bool)

(assert (=> b!1293282 (=> (not res!579542) (not e!829434))))

(declare-datatypes ((List!13008 0))(
  ( (Nil!12942) (Cons!12942 (h!18343 Rule!4258) (t!117317 List!13008)) )
))
(declare-fun rules!2550 () List!13008)

(declare-fun sepAndNonSepRulesDisjointChars!602 (List!13008 List!13008) Bool)

(assert (=> b!1293282 (= res!579542 (sepAndNonSepRulesDisjointChars!602 rules!2550 rules!2550))))

(declare-fun b!1293283 () Bool)

(assert (=> b!1293283 (= e!829439 e!829444)))

(declare-fun res!579552 () Bool)

(assert (=> b!1293283 (=> res!579552 e!829444)))

(declare-fun lt!425588 () List!13006)

(declare-fun ++!3282 (List!13006 List!13006) List!13006)

(declare-fun getSuffix!399 (List!13006 List!13006) List!13006)

(assert (=> b!1293283 (= res!579552 (not (= lt!425588 (++!3282 lt!425591 (getSuffix!399 lt!425588 lt!425591)))))))

(declare-fun pickWitness!6 (Int) List!13006)

(assert (=> b!1293283 (= lt!425588 (pickWitness!6 lambda!50853))))

(declare-fun e!829441 () Bool)

(declare-fun b!1293284 () Bool)

(declare-fun e!829438 () Bool)

(declare-fun tp!377094 () Bool)

(declare-fun t2!34 () Token!4120)

(declare-fun inv!21 (TokenValue!2319) Bool)

(assert (=> b!1293284 (= e!829441 (and (inv!21 (value!73159 t2!34)) e!829438 tp!377094))))

(declare-fun res!579546 () Bool)

(declare-fun e!829443 () Bool)

(assert (=> start!113830 (=> (not res!579546) (not e!829443))))

(declare-datatypes ((LexerInterface!1924 0))(
  ( (LexerInterfaceExt!1921 (__x!8468 Int)) (Lexer!1922) )
))
(declare-fun thiss!19762 () LexerInterface!1924)

(get-info :version)

(assert (=> start!113830 (= res!579546 ((_ is Lexer!1922) thiss!19762))))

(assert (=> start!113830 e!829443))

(assert (=> start!113830 true))

(declare-fun e!829437 () Bool)

(assert (=> start!113830 e!829437))

(declare-fun e!829431 () Bool)

(declare-fun inv!17365 (Token!4120) Bool)

(assert (=> start!113830 (and (inv!17365 t1!34) e!829431)))

(assert (=> start!113830 (and (inv!17365 t2!34) e!829441)))

(declare-fun e!829435 () Bool)

(assert (=> b!1293285 (= e!829435 (and tp!377093 tp!377091))))

(declare-fun b!1293286 () Bool)

(declare-fun tp!377095 () Bool)

(assert (=> b!1293286 (= e!829431 (and (inv!21 (value!73159 t1!34)) e!829448 tp!377095))))

(declare-fun b!1293287 () Bool)

(declare-fun res!579543 () Bool)

(assert (=> b!1293287 (=> (not res!579543) (not e!829443))))

(assert (=> b!1293287 (= res!579543 (not (= (isSeparator!2229 (rule!3968 t1!34)) (isSeparator!2229 (rule!3968 t2!34)))))))

(declare-fun b!1293288 () Bool)

(declare-fun res!579545 () Bool)

(assert (=> b!1293288 (=> (not res!579545) (not e!829443))))

(declare-fun isEmpty!7683 (List!13008) Bool)

(assert (=> b!1293288 (= res!579545 (not (isEmpty!7683 rules!2550)))))

(declare-fun b!1293289 () Bool)

(declare-fun res!579548 () Bool)

(assert (=> b!1293289 (=> (not res!579548) (not e!829443))))

(declare-fun rulesProduceIndividualToken!893 (LexerInterface!1924 List!13008 Token!4120) Bool)

(assert (=> b!1293289 (= res!579548 (rulesProduceIndividualToken!893 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1293290 () Bool)

(assert (=> b!1293290 (= e!829443 e!829434)))

(declare-fun res!579550 () Bool)

(assert (=> b!1293290 (=> (not res!579550) (not e!829434))))

(declare-fun lt!425590 () BalanceConc!8442)

(assert (=> b!1293290 (= res!579550 (> (size!10568 lt!425590) 0))))

(declare-fun charsOf!1201 (Token!4120) BalanceConc!8442)

(assert (=> b!1293290 (= lt!425590 (charsOf!1201 t2!34))))

(declare-fun b!1293291 () Bool)

(declare-fun res!579553 () Bool)

(assert (=> b!1293291 (=> (not res!579553) (not e!829443))))

(assert (=> b!1293291 (= res!579553 (rulesProduceIndividualToken!893 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1293292 () Bool)

(declare-fun e!829432 () Bool)

(declare-fun tp!377096 () Bool)

(assert (=> b!1293292 (= e!829437 (and e!829432 tp!377096))))

(declare-fun tp!377089 () Bool)

(declare-fun b!1293293 () Bool)

(assert (=> b!1293293 (= e!829432 (and tp!377089 (inv!17361 (tag!2491 (h!18343 rules!2550))) (inv!17364 (transformation!2229 (h!18343 rules!2550))) e!829435))))

(declare-fun b!1293294 () Bool)

(declare-fun res!579544 () Bool)

(assert (=> b!1293294 (=> (not res!579544) (not e!829434))))

(declare-fun separableTokensPredicate!207 (LexerInterface!1924 Token!4120 Token!4120 List!13008) Bool)

(assert (=> b!1293294 (= res!579544 (not (separableTokensPredicate!207 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun tp!377088 () Bool)

(declare-fun b!1293295 () Bool)

(assert (=> b!1293295 (= e!829438 (and tp!377088 (inv!17361 (tag!2491 (rule!3968 t2!34))) (inv!17364 (transformation!2229 (rule!3968 t2!34))) e!829436))))

(declare-fun b!1293296 () Bool)

(declare-fun res!579549 () Bool)

(assert (=> b!1293296 (=> (not res!579549) (not e!829443))))

(declare-fun rulesInvariant!1794 (LexerInterface!1924 List!13008) Bool)

(assert (=> b!1293296 (= res!579549 (rulesInvariant!1794 thiss!19762 rules!2550))))

(declare-fun b!1293297 () Bool)

(assert (=> b!1293297 (= e!829434 e!829446)))

(declare-fun res!579547 () Bool)

(assert (=> b!1293297 (=> (not res!579547) (not e!829446))))

(declare-fun prefixMatch!56 (Regex!3543 List!13006) Bool)

(assert (=> b!1293297 (= res!579547 (prefixMatch!56 lt!425589 lt!425591))))

(declare-fun rulesRegex!114 (LexerInterface!1924 List!13008) Regex!3543)

(assert (=> b!1293297 (= lt!425589 (rulesRegex!114 thiss!19762 rules!2550))))

(declare-fun list!4837 (BalanceConc!8442) List!13006)

(declare-fun apply!2845 (BalanceConc!8442 Int) C!7376)

(assert (=> b!1293297 (= lt!425591 (++!3282 (list!4837 lt!425587) (Cons!12940 (apply!2845 lt!425590 0) Nil!12940)))))

(assert (=> b!1293297 (= lt!425587 (charsOf!1201 t1!34))))

(assert (= (and start!113830 res!579546) b!1293288))

(assert (= (and b!1293288 res!579545) b!1293296))

(assert (= (and b!1293296 res!579549) b!1293289))

(assert (= (and b!1293289 res!579548) b!1293291))

(assert (= (and b!1293291 res!579553) b!1293287))

(assert (= (and b!1293287 res!579543) b!1293290))

(assert (= (and b!1293290 res!579550) b!1293282))

(assert (= (and b!1293282 res!579542) b!1293294))

(assert (= (and b!1293294 res!579544) b!1293297))

(assert (= (and b!1293297 res!579547) b!1293281))

(assert (= (and b!1293281 (not res!579551)) b!1293283))

(assert (= (and b!1293283 (not res!579552)) b!1293278))

(assert (= b!1293293 b!1293285))

(assert (= b!1293292 b!1293293))

(assert (= (and start!113830 ((_ is Cons!12942) rules!2550)) b!1293292))

(assert (= b!1293279 b!1293277))

(assert (= b!1293286 b!1293279))

(assert (= start!113830 b!1293286))

(assert (= b!1293295 b!1293280))

(assert (= b!1293284 b!1293295))

(assert (= start!113830 b!1293284))

(declare-fun m!1444111 () Bool)

(assert (=> b!1293281 m!1444111))

(assert (=> b!1293281 m!1444111))

(declare-fun m!1444113 () Bool)

(assert (=> b!1293281 m!1444113))

(declare-fun m!1444115 () Bool)

(assert (=> b!1293295 m!1444115))

(declare-fun m!1444117 () Bool)

(assert (=> b!1293295 m!1444117))

(declare-fun m!1444119 () Bool)

(assert (=> b!1293279 m!1444119))

(declare-fun m!1444121 () Bool)

(assert (=> b!1293279 m!1444121))

(declare-fun m!1444123 () Bool)

(assert (=> b!1293297 m!1444123))

(declare-fun m!1444125 () Bool)

(assert (=> b!1293297 m!1444125))

(assert (=> b!1293297 m!1444123))

(declare-fun m!1444127 () Bool)

(assert (=> b!1293297 m!1444127))

(declare-fun m!1444129 () Bool)

(assert (=> b!1293297 m!1444129))

(declare-fun m!1444131 () Bool)

(assert (=> b!1293297 m!1444131))

(declare-fun m!1444133 () Bool)

(assert (=> b!1293297 m!1444133))

(declare-fun m!1444135 () Bool)

(assert (=> b!1293293 m!1444135))

(declare-fun m!1444137 () Bool)

(assert (=> b!1293293 m!1444137))

(declare-fun m!1444139 () Bool)

(assert (=> b!1293296 m!1444139))

(declare-fun m!1444141 () Bool)

(assert (=> b!1293284 m!1444141))

(declare-fun m!1444143 () Bool)

(assert (=> b!1293278 m!1444143))

(declare-fun m!1444145 () Bool)

(assert (=> b!1293288 m!1444145))

(declare-fun m!1444147 () Bool)

(assert (=> start!113830 m!1444147))

(declare-fun m!1444149 () Bool)

(assert (=> start!113830 m!1444149))

(declare-fun m!1444151 () Bool)

(assert (=> b!1293294 m!1444151))

(declare-fun m!1444153 () Bool)

(assert (=> b!1293291 m!1444153))

(declare-fun m!1444155 () Bool)

(assert (=> b!1293290 m!1444155))

(declare-fun m!1444157 () Bool)

(assert (=> b!1293290 m!1444157))

(declare-fun m!1444159 () Bool)

(assert (=> b!1293289 m!1444159))

(declare-fun m!1444161 () Bool)

(assert (=> b!1293283 m!1444161))

(assert (=> b!1293283 m!1444161))

(declare-fun m!1444163 () Bool)

(assert (=> b!1293283 m!1444163))

(declare-fun m!1444165 () Bool)

(assert (=> b!1293283 m!1444165))

(declare-fun m!1444167 () Bool)

(assert (=> b!1293286 m!1444167))

(declare-fun m!1444169 () Bool)

(assert (=> b!1293282 m!1444169))

(check-sat (not b!1293297) (not b!1293288) (not b!1293286) (not b!1293279) (not b!1293290) (not b!1293291) (not b!1293282) (not b!1293296) b_and!86243 (not b!1293294) b_and!86241 (not b!1293289) (not b!1293281) b_and!86239 (not b_next!31337) (not start!113830) (not b_next!31331) (not b_next!31339) (not b!1293293) (not b!1293292) b_and!86249 (not b!1293278) (not b!1293283) (not b!1293284) b_and!86245 (not b!1293295) (not b_next!31335) (not b_next!31341) (not b_next!31333) b_and!86247)
(check-sat b_and!86241 b_and!86239 (not b_next!31337) b_and!86249 b_and!86245 b_and!86243 (not b_next!31331) (not b_next!31339) (not b_next!31335) (not b_next!31341) (not b_next!31333) b_and!86247)
(get-model)

(declare-fun e!829474 () Bool)

(declare-fun b!1293349 () Bool)

(declare-fun lt!425613 () List!13006)

(assert (=> b!1293349 (= e!829474 (or (not (= (getSuffix!399 lt!425588 lt!425591) Nil!12940)) (= lt!425613 lt!425591)))))

(declare-fun b!1293347 () Bool)

(declare-fun e!829475 () List!13006)

(assert (=> b!1293347 (= e!829475 (Cons!12940 (h!18341 lt!425591) (++!3282 (t!117315 lt!425591) (getSuffix!399 lt!425588 lt!425591))))))

(declare-fun b!1293348 () Bool)

(declare-fun res!579584 () Bool)

(assert (=> b!1293348 (=> (not res!579584) (not e!829474))))

(declare-fun size!10573 (List!13006) Int)

(assert (=> b!1293348 (= res!579584 (= (size!10573 lt!425613) (+ (size!10573 lt!425591) (size!10573 (getSuffix!399 lt!425588 lt!425591)))))))

(declare-fun b!1293346 () Bool)

(assert (=> b!1293346 (= e!829475 (getSuffix!399 lt!425588 lt!425591))))

(declare-fun d!364697 () Bool)

(assert (=> d!364697 e!829474))

(declare-fun res!579585 () Bool)

(assert (=> d!364697 (=> (not res!579585) (not e!829474))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1829 (List!13006) (InoxSet C!7376))

(assert (=> d!364697 (= res!579585 (= (content!1829 lt!425613) ((_ map or) (content!1829 lt!425591) (content!1829 (getSuffix!399 lt!425588 lt!425591)))))))

(assert (=> d!364697 (= lt!425613 e!829475)))

(declare-fun c!212855 () Bool)

(assert (=> d!364697 (= c!212855 ((_ is Nil!12940) lt!425591))))

(assert (=> d!364697 (= (++!3282 lt!425591 (getSuffix!399 lt!425588 lt!425591)) lt!425613)))

(assert (= (and d!364697 c!212855) b!1293346))

(assert (= (and d!364697 (not c!212855)) b!1293347))

(assert (= (and d!364697 res!579585) b!1293348))

(assert (= (and b!1293348 res!579584) b!1293349))

(assert (=> b!1293347 m!1444161))

(declare-fun m!1444245 () Bool)

(assert (=> b!1293347 m!1444245))

(declare-fun m!1444247 () Bool)

(assert (=> b!1293348 m!1444247))

(declare-fun m!1444249 () Bool)

(assert (=> b!1293348 m!1444249))

(assert (=> b!1293348 m!1444161))

(declare-fun m!1444251 () Bool)

(assert (=> b!1293348 m!1444251))

(declare-fun m!1444253 () Bool)

(assert (=> d!364697 m!1444253))

(declare-fun m!1444255 () Bool)

(assert (=> d!364697 m!1444255))

(assert (=> d!364697 m!1444161))

(declare-fun m!1444257 () Bool)

(assert (=> d!364697 m!1444257))

(assert (=> b!1293283 d!364697))

(declare-fun d!364713 () Bool)

(declare-fun lt!425616 () List!13006)

(assert (=> d!364713 (= (++!3282 lt!425591 lt!425616) lt!425588)))

(declare-fun e!829492 () List!13006)

(assert (=> d!364713 (= lt!425616 e!829492)))

(declare-fun c!212866 () Bool)

(assert (=> d!364713 (= c!212866 ((_ is Cons!12940) lt!425591))))

(assert (=> d!364713 (>= (size!10573 lt!425588) (size!10573 lt!425591))))

(assert (=> d!364713 (= (getSuffix!399 lt!425588 lt!425591) lt!425616)))

(declare-fun b!1293376 () Bool)

(declare-fun tail!1848 (List!13006) List!13006)

(assert (=> b!1293376 (= e!829492 (getSuffix!399 (tail!1848 lt!425588) (t!117315 lt!425591)))))

(declare-fun b!1293377 () Bool)

(assert (=> b!1293377 (= e!829492 lt!425588)))

(assert (= (and d!364713 c!212866) b!1293376))

(assert (= (and d!364713 (not c!212866)) b!1293377))

(declare-fun m!1444271 () Bool)

(assert (=> d!364713 m!1444271))

(declare-fun m!1444273 () Bool)

(assert (=> d!364713 m!1444273))

(assert (=> d!364713 m!1444249))

(declare-fun m!1444275 () Bool)

(assert (=> b!1293376 m!1444275))

(assert (=> b!1293376 m!1444275))

(declare-fun m!1444277 () Bool)

(assert (=> b!1293376 m!1444277))

(assert (=> b!1293283 d!364713))

(declare-fun d!364721 () Bool)

(declare-fun lt!425619 () List!13006)

(declare-fun dynLambda!5655 (Int List!13006) Bool)

(assert (=> d!364721 (dynLambda!5655 lambda!50853 lt!425619)))

(declare-fun choose!7940 (Int) List!13006)

(assert (=> d!364721 (= lt!425619 (choose!7940 lambda!50853))))

(assert (=> d!364721 (Exists!701 lambda!50853)))

(assert (=> d!364721 (= (pickWitness!6 lambda!50853) lt!425619)))

(declare-fun b_lambda!36999 () Bool)

(assert (=> (not b_lambda!36999) (not d!364721)))

(declare-fun bs!328720 () Bool)

(assert (= bs!328720 d!364721))

(declare-fun m!1444279 () Bool)

(assert (=> bs!328720 m!1444279))

(declare-fun m!1444281 () Bool)

(assert (=> bs!328720 m!1444281))

(assert (=> bs!328720 m!1444111))

(assert (=> b!1293283 d!364721))

(declare-fun d!364723 () Bool)

(declare-fun prefixMatchZipperSequence!146 (Regex!3543 BalanceConc!8442) Bool)

(declare-fun ++!3284 (BalanceConc!8442 BalanceConc!8442) BalanceConc!8442)

(declare-fun singletonSeq!813 (C!7376) BalanceConc!8442)

(assert (=> d!364723 (= (separableTokensPredicate!207 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!146 (rulesRegex!114 thiss!19762 rules!2550) (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))))))

(declare-fun bs!328722 () Bool)

(assert (= bs!328722 d!364723))

(assert (=> bs!328722 m!1444125))

(declare-fun m!1444291 () Bool)

(assert (=> bs!328722 m!1444291))

(declare-fun m!1444293 () Bool)

(assert (=> bs!328722 m!1444293))

(assert (=> bs!328722 m!1444131))

(assert (=> bs!328722 m!1444131))

(assert (=> bs!328722 m!1444293))

(declare-fun m!1444295 () Bool)

(assert (=> bs!328722 m!1444295))

(assert (=> bs!328722 m!1444157))

(declare-fun m!1444297 () Bool)

(assert (=> bs!328722 m!1444297))

(assert (=> bs!328722 m!1444125))

(assert (=> bs!328722 m!1444157))

(assert (=> bs!328722 m!1444297))

(assert (=> bs!328722 m!1444291))

(assert (=> b!1293294 d!364723))

(declare-fun b!1293388 () Bool)

(declare-fun e!829500 () Bool)

(declare-fun inv!16 (TokenValue!2319) Bool)

(assert (=> b!1293388 (= e!829500 (inv!16 (value!73159 t2!34)))))

(declare-fun d!364727 () Bool)

(declare-fun c!212871 () Bool)

(assert (=> d!364727 (= c!212871 ((_ is IntegerValue!6957) (value!73159 t2!34)))))

(assert (=> d!364727 (= (inv!21 (value!73159 t2!34)) e!829500)))

(declare-fun b!1293389 () Bool)

(declare-fun res!579594 () Bool)

(declare-fun e!829501 () Bool)

(assert (=> b!1293389 (=> res!579594 e!829501)))

(assert (=> b!1293389 (= res!579594 (not ((_ is IntegerValue!6959) (value!73159 t2!34))))))

(declare-fun e!829499 () Bool)

(assert (=> b!1293389 (= e!829499 e!829501)))

(declare-fun b!1293390 () Bool)

(declare-fun inv!17 (TokenValue!2319) Bool)

(assert (=> b!1293390 (= e!829499 (inv!17 (value!73159 t2!34)))))

(declare-fun b!1293391 () Bool)

(declare-fun inv!15 (TokenValue!2319) Bool)

(assert (=> b!1293391 (= e!829501 (inv!15 (value!73159 t2!34)))))

(declare-fun b!1293392 () Bool)

(assert (=> b!1293392 (= e!829500 e!829499)))

(declare-fun c!212872 () Bool)

(assert (=> b!1293392 (= c!212872 ((_ is IntegerValue!6958) (value!73159 t2!34)))))

(assert (= (and d!364727 c!212871) b!1293388))

(assert (= (and d!364727 (not c!212871)) b!1293392))

(assert (= (and b!1293392 c!212872) b!1293390))

(assert (= (and b!1293392 (not c!212872)) b!1293389))

(assert (= (and b!1293389 (not res!579594)) b!1293391))

(declare-fun m!1444299 () Bool)

(assert (=> b!1293388 m!1444299))

(declare-fun m!1444301 () Bool)

(assert (=> b!1293390 m!1444301))

(declare-fun m!1444303 () Bool)

(assert (=> b!1293391 m!1444303))

(assert (=> b!1293284 d!364727))

(declare-fun d!364729 () Bool)

(assert (=> d!364729 (= (inv!17361 (tag!2491 (rule!3968 t2!34))) (= (mod (str.len (value!73158 (tag!2491 (rule!3968 t2!34)))) 2) 0))))

(assert (=> b!1293295 d!364729))

(declare-fun d!364731 () Bool)

(declare-fun res!579597 () Bool)

(declare-fun e!829504 () Bool)

(assert (=> d!364731 (=> (not res!579597) (not e!829504))))

(declare-fun semiInverseModEq!848 (Int Int) Bool)

(assert (=> d!364731 (= res!579597 (semiInverseModEq!848 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (toValue!3432 (transformation!2229 (rule!3968 t2!34)))))))

(assert (=> d!364731 (= (inv!17364 (transformation!2229 (rule!3968 t2!34))) e!829504)))

(declare-fun b!1293395 () Bool)

(declare-fun equivClasses!807 (Int Int) Bool)

(assert (=> b!1293395 (= e!829504 (equivClasses!807 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (toValue!3432 (transformation!2229 (rule!3968 t2!34)))))))

(assert (= (and d!364731 res!579597) b!1293395))

(declare-fun m!1444305 () Bool)

(assert (=> d!364731 m!1444305))

(declare-fun m!1444307 () Bool)

(assert (=> b!1293395 m!1444307))

(assert (=> b!1293295 d!364731))

(declare-fun d!364733 () Bool)

(declare-fun lt!425642 () Bool)

(declare-fun e!829558 () Bool)

(assert (=> d!364733 (= lt!425642 e!829558)))

(declare-fun res!579632 () Bool)

(assert (=> d!364733 (=> (not res!579632) (not e!829558))))

(declare-datatypes ((List!13012 0))(
  ( (Nil!12946) (Cons!12946 (h!18347 Token!4120) (t!117355 List!13012)) )
))
(declare-datatypes ((IArray!8511 0))(
  ( (IArray!8512 (innerList!4313 List!13012)) )
))
(declare-datatypes ((Conc!4253 0))(
  ( (Node!4253 (left!11133 Conc!4253) (right!11463 Conc!4253) (csize!8736 Int) (cheight!4464 Int)) (Leaf!6564 (xs!6964 IArray!8511) (csize!8737 Int)) (Empty!4253) )
))
(declare-datatypes ((BalanceConc!8446 0))(
  ( (BalanceConc!8447 (c!212884 Conc!4253)) )
))
(declare-fun list!4840 (BalanceConc!8446) List!13012)

(declare-datatypes ((tuple2!12682 0))(
  ( (tuple2!12683 (_1!7227 BalanceConc!8446) (_2!7227 BalanceConc!8442)) )
))
(declare-fun lex!787 (LexerInterface!1924 List!13008 BalanceConc!8442) tuple2!12682)

(declare-fun print!724 (LexerInterface!1924 BalanceConc!8446) BalanceConc!8442)

(declare-fun singletonSeq!814 (Token!4120) BalanceConc!8446)

(assert (=> d!364733 (= res!579632 (= (list!4840 (_1!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34))))) (list!4840 (singletonSeq!814 t2!34))))))

(declare-fun e!829557 () Bool)

(assert (=> d!364733 (= lt!425642 e!829557)))

(declare-fun res!579634 () Bool)

(assert (=> d!364733 (=> (not res!579634) (not e!829557))))

(declare-fun lt!425641 () tuple2!12682)

(declare-fun size!10574 (BalanceConc!8446) Int)

(assert (=> d!364733 (= res!579634 (= (size!10574 (_1!7227 lt!425641)) 1))))

(assert (=> d!364733 (= lt!425641 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34))))))

(assert (=> d!364733 (not (isEmpty!7683 rules!2550))))

(assert (=> d!364733 (= (rulesProduceIndividualToken!893 thiss!19762 rules!2550 t2!34) lt!425642)))

(declare-fun b!1293477 () Bool)

(declare-fun res!579633 () Bool)

(assert (=> b!1293477 (=> (not res!579633) (not e!829557))))

(declare-fun apply!2849 (BalanceConc!8446 Int) Token!4120)

(assert (=> b!1293477 (= res!579633 (= (apply!2849 (_1!7227 lt!425641) 0) t2!34))))

(declare-fun b!1293478 () Bool)

(declare-fun isEmpty!7686 (BalanceConc!8442) Bool)

(assert (=> b!1293478 (= e!829557 (isEmpty!7686 (_2!7227 lt!425641)))))

(declare-fun b!1293479 () Bool)

(assert (=> b!1293479 (= e!829558 (isEmpty!7686 (_2!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34))))))))

(assert (= (and d!364733 res!579634) b!1293477))

(assert (= (and b!1293477 res!579633) b!1293478))

(assert (= (and d!364733 res!579632) b!1293479))

(declare-fun m!1444407 () Bool)

(assert (=> d!364733 m!1444407))

(declare-fun m!1444409 () Bool)

(assert (=> d!364733 m!1444409))

(declare-fun m!1444411 () Bool)

(assert (=> d!364733 m!1444411))

(assert (=> d!364733 m!1444145))

(assert (=> d!364733 m!1444409))

(assert (=> d!364733 m!1444409))

(declare-fun m!1444413 () Bool)

(assert (=> d!364733 m!1444413))

(assert (=> d!364733 m!1444413))

(declare-fun m!1444415 () Bool)

(assert (=> d!364733 m!1444415))

(declare-fun m!1444417 () Bool)

(assert (=> d!364733 m!1444417))

(declare-fun m!1444419 () Bool)

(assert (=> b!1293477 m!1444419))

(declare-fun m!1444421 () Bool)

(assert (=> b!1293478 m!1444421))

(assert (=> b!1293479 m!1444409))

(assert (=> b!1293479 m!1444409))

(assert (=> b!1293479 m!1444413))

(assert (=> b!1293479 m!1444413))

(assert (=> b!1293479 m!1444415))

(declare-fun m!1444423 () Bool)

(assert (=> b!1293479 m!1444423))

(assert (=> b!1293291 d!364733))

(declare-fun d!364761 () Bool)

(declare-fun choose!7941 (Int) Bool)

(assert (=> d!364761 (= (Exists!701 lambda!50853) (choose!7941 lambda!50853))))

(declare-fun bs!328727 () Bool)

(assert (= bs!328727 d!364761))

(declare-fun m!1444425 () Bool)

(assert (=> bs!328727 m!1444425))

(assert (=> b!1293281 d!364761))

(declare-fun bs!328728 () Bool)

(declare-fun d!364763 () Bool)

(assert (= bs!328728 (and d!364763 b!1293281)))

(declare-fun lambda!50862 () Int)

(assert (=> bs!328728 (= lambda!50862 lambda!50853)))

(assert (=> d!364763 true))

(assert (=> d!364763 true))

(assert (=> d!364763 (Exists!701 lambda!50862)))

(declare-fun lt!425645 () Unit!19084)

(declare-fun choose!7942 (Regex!3543 List!13006) Unit!19084)

(assert (=> d!364763 (= lt!425645 (choose!7942 lt!425589 lt!425591))))

(declare-fun validRegex!1529 (Regex!3543) Bool)

(assert (=> d!364763 (validRegex!1529 lt!425589)))

(assert (=> d!364763 (= (lemmaPrefixMatchThenExistsStringThatMatches!19 lt!425589 lt!425591) lt!425645)))

(declare-fun bs!328729 () Bool)

(assert (= bs!328729 d!364763))

(declare-fun m!1444427 () Bool)

(assert (=> bs!328729 m!1444427))

(declare-fun m!1444429 () Bool)

(assert (=> bs!328729 m!1444429))

(declare-fun m!1444431 () Bool)

(assert (=> bs!328729 m!1444431))

(assert (=> b!1293281 d!364763))

(declare-fun d!364765 () Bool)

(declare-fun res!579641 () Bool)

(declare-fun e!829563 () Bool)

(assert (=> d!364765 (=> (not res!579641) (not e!829563))))

(declare-fun isEmpty!7687 (List!13006) Bool)

(assert (=> d!364765 (= res!579641 (not (isEmpty!7687 (originalCharacters!3091 t1!34))))))

(assert (=> d!364765 (= (inv!17365 t1!34) e!829563)))

(declare-fun b!1293486 () Bool)

(declare-fun res!579642 () Bool)

(assert (=> b!1293486 (=> (not res!579642) (not e!829563))))

(declare-fun dynLambda!5656 (Int TokenValue!2319) BalanceConc!8442)

(assert (=> b!1293486 (= res!579642 (= (originalCharacters!3091 t1!34) (list!4837 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))))

(declare-fun b!1293487 () Bool)

(assert (=> b!1293487 (= e!829563 (= (size!10569 t1!34) (size!10573 (originalCharacters!3091 t1!34))))))

(assert (= (and d!364765 res!579641) b!1293486))

(assert (= (and b!1293486 res!579642) b!1293487))

(declare-fun b_lambda!37013 () Bool)

(assert (=> (not b_lambda!37013) (not b!1293486)))

(declare-fun t!117338 () Bool)

(declare-fun tb!69441 () Bool)

(assert (=> (and b!1293277 (= (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (toChars!3291 (transformation!2229 (rule!3968 t1!34)))) t!117338) tb!69441))

(declare-fun b!1293492 () Bool)

(declare-fun e!829566 () Bool)

(declare-fun tp!377146 () Bool)

(declare-fun inv!17368 (Conc!4251) Bool)

(assert (=> b!1293492 (= e!829566 (and (inv!17368 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))) tp!377146))))

(declare-fun result!84182 () Bool)

(declare-fun inv!17369 (BalanceConc!8442) Bool)

(assert (=> tb!69441 (= result!84182 (and (inv!17369 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))) e!829566))))

(assert (= tb!69441 b!1293492))

(declare-fun m!1444433 () Bool)

(assert (=> b!1293492 m!1444433))

(declare-fun m!1444435 () Bool)

(assert (=> tb!69441 m!1444435))

(assert (=> b!1293486 t!117338))

(declare-fun b_and!86279 () Bool)

(assert (= b_and!86241 (and (=> t!117338 result!84182) b_and!86279)))

(declare-fun t!117340 () Bool)

(declare-fun tb!69443 () Bool)

(assert (=> (and b!1293285 (= (toChars!3291 (transformation!2229 (h!18343 rules!2550))) (toChars!3291 (transformation!2229 (rule!3968 t1!34)))) t!117340) tb!69443))

(declare-fun result!84186 () Bool)

(assert (= result!84186 result!84182))

(assert (=> b!1293486 t!117340))

(declare-fun b_and!86281 () Bool)

(assert (= b_and!86245 (and (=> t!117340 result!84186) b_and!86281)))

(declare-fun tb!69445 () Bool)

(declare-fun t!117342 () Bool)

(assert (=> (and b!1293280 (= (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (toChars!3291 (transformation!2229 (rule!3968 t1!34)))) t!117342) tb!69445))

(declare-fun result!84188 () Bool)

(assert (= result!84188 result!84182))

(assert (=> b!1293486 t!117342))

(declare-fun b_and!86283 () Bool)

(assert (= b_and!86249 (and (=> t!117342 result!84188) b_and!86283)))

(declare-fun m!1444437 () Bool)

(assert (=> d!364765 m!1444437))

(declare-fun m!1444439 () Bool)

(assert (=> b!1293486 m!1444439))

(assert (=> b!1293486 m!1444439))

(declare-fun m!1444441 () Bool)

(assert (=> b!1293486 m!1444441))

(declare-fun m!1444443 () Bool)

(assert (=> b!1293487 m!1444443))

(assert (=> start!113830 d!364765))

(declare-fun d!364767 () Bool)

(declare-fun res!579643 () Bool)

(declare-fun e!829567 () Bool)

(assert (=> d!364767 (=> (not res!579643) (not e!829567))))

(assert (=> d!364767 (= res!579643 (not (isEmpty!7687 (originalCharacters!3091 t2!34))))))

(assert (=> d!364767 (= (inv!17365 t2!34) e!829567)))

(declare-fun b!1293493 () Bool)

(declare-fun res!579644 () Bool)

(assert (=> b!1293493 (=> (not res!579644) (not e!829567))))

(assert (=> b!1293493 (= res!579644 (= (originalCharacters!3091 t2!34) (list!4837 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))))

(declare-fun b!1293494 () Bool)

(assert (=> b!1293494 (= e!829567 (= (size!10569 t2!34) (size!10573 (originalCharacters!3091 t2!34))))))

(assert (= (and d!364767 res!579643) b!1293493))

(assert (= (and b!1293493 res!579644) b!1293494))

(declare-fun b_lambda!37015 () Bool)

(assert (=> (not b_lambda!37015) (not b!1293493)))

(declare-fun tb!69447 () Bool)

(declare-fun t!117344 () Bool)

(assert (=> (and b!1293277 (= (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (toChars!3291 (transformation!2229 (rule!3968 t2!34)))) t!117344) tb!69447))

(declare-fun b!1293495 () Bool)

(declare-fun e!829568 () Bool)

(declare-fun tp!377147 () Bool)

(assert (=> b!1293495 (= e!829568 (and (inv!17368 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))) tp!377147))))

(declare-fun result!84190 () Bool)

(assert (=> tb!69447 (= result!84190 (and (inv!17369 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))) e!829568))))

(assert (= tb!69447 b!1293495))

(declare-fun m!1444445 () Bool)

(assert (=> b!1293495 m!1444445))

(declare-fun m!1444447 () Bool)

(assert (=> tb!69447 m!1444447))

(assert (=> b!1293493 t!117344))

(declare-fun b_and!86285 () Bool)

(assert (= b_and!86279 (and (=> t!117344 result!84190) b_and!86285)))

(declare-fun t!117346 () Bool)

(declare-fun tb!69449 () Bool)

(assert (=> (and b!1293285 (= (toChars!3291 (transformation!2229 (h!18343 rules!2550))) (toChars!3291 (transformation!2229 (rule!3968 t2!34)))) t!117346) tb!69449))

(declare-fun result!84192 () Bool)

(assert (= result!84192 result!84190))

(assert (=> b!1293493 t!117346))

(declare-fun b_and!86287 () Bool)

(assert (= b_and!86281 (and (=> t!117346 result!84192) b_and!86287)))

(declare-fun t!117348 () Bool)

(declare-fun tb!69451 () Bool)

(assert (=> (and b!1293280 (= (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (toChars!3291 (transformation!2229 (rule!3968 t2!34)))) t!117348) tb!69451))

(declare-fun result!84194 () Bool)

(assert (= result!84194 result!84190))

(assert (=> b!1293493 t!117348))

(declare-fun b_and!86289 () Bool)

(assert (= b_and!86283 (and (=> t!117348 result!84194) b_and!86289)))

(declare-fun m!1444449 () Bool)

(assert (=> d!364767 m!1444449))

(declare-fun m!1444451 () Bool)

(assert (=> b!1293493 m!1444451))

(assert (=> b!1293493 m!1444451))

(declare-fun m!1444453 () Bool)

(assert (=> b!1293493 m!1444453))

(declare-fun m!1444455 () Bool)

(assert (=> b!1293494 m!1444455))

(assert (=> start!113830 d!364767))

(declare-fun d!364769 () Bool)

(declare-fun res!579649 () Bool)

(declare-fun e!829573 () Bool)

(assert (=> d!364769 (=> res!579649 e!829573)))

(assert (=> d!364769 (= res!579649 (not ((_ is Cons!12942) rules!2550)))))

(assert (=> d!364769 (= (sepAndNonSepRulesDisjointChars!602 rules!2550 rules!2550) e!829573)))

(declare-fun b!1293500 () Bool)

(declare-fun e!829574 () Bool)

(assert (=> b!1293500 (= e!829573 e!829574)))

(declare-fun res!579650 () Bool)

(assert (=> b!1293500 (=> (not res!579650) (not e!829574))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!292 (Rule!4258 List!13008) Bool)

(assert (=> b!1293500 (= res!579650 (ruleDisjointCharsFromAllFromOtherType!292 (h!18343 rules!2550) rules!2550))))

(declare-fun b!1293501 () Bool)

(assert (=> b!1293501 (= e!829574 (sepAndNonSepRulesDisjointChars!602 rules!2550 (t!117317 rules!2550)))))

(assert (= (and d!364769 (not res!579649)) b!1293500))

(assert (= (and b!1293500 res!579650) b!1293501))

(declare-fun m!1444457 () Bool)

(assert (=> b!1293500 m!1444457))

(declare-fun m!1444459 () Bool)

(assert (=> b!1293501 m!1444459))

(assert (=> b!1293282 d!364769))

(declare-fun d!364771 () Bool)

(assert (=> d!364771 (= (inv!17361 (tag!2491 (h!18343 rules!2550))) (= (mod (str.len (value!73158 (tag!2491 (h!18343 rules!2550)))) 2) 0))))

(assert (=> b!1293293 d!364771))

(declare-fun d!364773 () Bool)

(declare-fun res!579651 () Bool)

(declare-fun e!829575 () Bool)

(assert (=> d!364773 (=> (not res!579651) (not e!829575))))

(assert (=> d!364773 (= res!579651 (semiInverseModEq!848 (toChars!3291 (transformation!2229 (h!18343 rules!2550))) (toValue!3432 (transformation!2229 (h!18343 rules!2550)))))))

(assert (=> d!364773 (= (inv!17364 (transformation!2229 (h!18343 rules!2550))) e!829575)))

(declare-fun b!1293502 () Bool)

(assert (=> b!1293502 (= e!829575 (equivClasses!807 (toChars!3291 (transformation!2229 (h!18343 rules!2550))) (toValue!3432 (transformation!2229 (h!18343 rules!2550)))))))

(assert (= (and d!364773 res!579651) b!1293502))

(declare-fun m!1444461 () Bool)

(assert (=> d!364773 m!1444461))

(declare-fun m!1444463 () Bool)

(assert (=> b!1293502 m!1444463))

(assert (=> b!1293293 d!364773))

(declare-fun d!364775 () Bool)

(assert (=> d!364775 (= (isEmpty!7683 rules!2550) ((_ is Nil!12942) rules!2550))))

(assert (=> b!1293288 d!364775))

(declare-fun d!364777 () Bool)

(declare-fun lt!425648 () Int)

(assert (=> d!364777 (= lt!425648 (size!10573 (list!4837 lt!425587)))))

(declare-fun size!10575 (Conc!4251) Int)

(assert (=> d!364777 (= lt!425648 (size!10575 (c!212845 lt!425587)))))

(assert (=> d!364777 (= (size!10568 lt!425587) lt!425648)))

(declare-fun bs!328730 () Bool)

(assert (= bs!328730 d!364777))

(assert (=> bs!328730 m!1444123))

(assert (=> bs!328730 m!1444123))

(declare-fun m!1444465 () Bool)

(assert (=> bs!328730 m!1444465))

(declare-fun m!1444467 () Bool)

(assert (=> bs!328730 m!1444467))

(assert (=> b!1293278 d!364777))

(declare-fun d!364779 () Bool)

(declare-fun lt!425650 () Bool)

(declare-fun e!829577 () Bool)

(assert (=> d!364779 (= lt!425650 e!829577)))

(declare-fun res!579652 () Bool)

(assert (=> d!364779 (=> (not res!579652) (not e!829577))))

(assert (=> d!364779 (= res!579652 (= (list!4840 (_1!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34))))) (list!4840 (singletonSeq!814 t1!34))))))

(declare-fun e!829576 () Bool)

(assert (=> d!364779 (= lt!425650 e!829576)))

(declare-fun res!579654 () Bool)

(assert (=> d!364779 (=> (not res!579654) (not e!829576))))

(declare-fun lt!425649 () tuple2!12682)

(assert (=> d!364779 (= res!579654 (= (size!10574 (_1!7227 lt!425649)) 1))))

(assert (=> d!364779 (= lt!425649 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34))))))

(assert (=> d!364779 (not (isEmpty!7683 rules!2550))))

(assert (=> d!364779 (= (rulesProduceIndividualToken!893 thiss!19762 rules!2550 t1!34) lt!425650)))

(declare-fun b!1293503 () Bool)

(declare-fun res!579653 () Bool)

(assert (=> b!1293503 (=> (not res!579653) (not e!829576))))

(assert (=> b!1293503 (= res!579653 (= (apply!2849 (_1!7227 lt!425649) 0) t1!34))))

(declare-fun b!1293504 () Bool)

(assert (=> b!1293504 (= e!829576 (isEmpty!7686 (_2!7227 lt!425649)))))

(declare-fun b!1293505 () Bool)

(assert (=> b!1293505 (= e!829577 (isEmpty!7686 (_2!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34))))))))

(assert (= (and d!364779 res!579654) b!1293503))

(assert (= (and b!1293503 res!579653) b!1293504))

(assert (= (and d!364779 res!579652) b!1293505))

(declare-fun m!1444469 () Bool)

(assert (=> d!364779 m!1444469))

(declare-fun m!1444471 () Bool)

(assert (=> d!364779 m!1444471))

(declare-fun m!1444473 () Bool)

(assert (=> d!364779 m!1444473))

(assert (=> d!364779 m!1444145))

(assert (=> d!364779 m!1444471))

(assert (=> d!364779 m!1444471))

(declare-fun m!1444475 () Bool)

(assert (=> d!364779 m!1444475))

(assert (=> d!364779 m!1444475))

(declare-fun m!1444477 () Bool)

(assert (=> d!364779 m!1444477))

(declare-fun m!1444479 () Bool)

(assert (=> d!364779 m!1444479))

(declare-fun m!1444481 () Bool)

(assert (=> b!1293503 m!1444481))

(declare-fun m!1444483 () Bool)

(assert (=> b!1293504 m!1444483))

(assert (=> b!1293505 m!1444471))

(assert (=> b!1293505 m!1444471))

(assert (=> b!1293505 m!1444475))

(assert (=> b!1293505 m!1444475))

(assert (=> b!1293505 m!1444477))

(declare-fun m!1444485 () Bool)

(assert (=> b!1293505 m!1444485))

(assert (=> b!1293289 d!364779))

(declare-fun d!364781 () Bool)

(assert (=> d!364781 (= (inv!17361 (tag!2491 (rule!3968 t1!34))) (= (mod (str.len (value!73158 (tag!2491 (rule!3968 t1!34)))) 2) 0))))

(assert (=> b!1293279 d!364781))

(declare-fun d!364783 () Bool)

(declare-fun res!579655 () Bool)

(declare-fun e!829578 () Bool)

(assert (=> d!364783 (=> (not res!579655) (not e!829578))))

(assert (=> d!364783 (= res!579655 (semiInverseModEq!848 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (toValue!3432 (transformation!2229 (rule!3968 t1!34)))))))

(assert (=> d!364783 (= (inv!17364 (transformation!2229 (rule!3968 t1!34))) e!829578)))

(declare-fun b!1293506 () Bool)

(assert (=> b!1293506 (= e!829578 (equivClasses!807 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (toValue!3432 (transformation!2229 (rule!3968 t1!34)))))))

(assert (= (and d!364783 res!579655) b!1293506))

(declare-fun m!1444487 () Bool)

(assert (=> d!364783 m!1444487))

(declare-fun m!1444489 () Bool)

(assert (=> b!1293506 m!1444489))

(assert (=> b!1293279 d!364783))

(declare-fun d!364785 () Bool)

(declare-fun lt!425651 () Int)

(assert (=> d!364785 (= lt!425651 (size!10573 (list!4837 lt!425590)))))

(assert (=> d!364785 (= lt!425651 (size!10575 (c!212845 lt!425590)))))

(assert (=> d!364785 (= (size!10568 lt!425590) lt!425651)))

(declare-fun bs!328731 () Bool)

(assert (= bs!328731 d!364785))

(declare-fun m!1444491 () Bool)

(assert (=> bs!328731 m!1444491))

(assert (=> bs!328731 m!1444491))

(declare-fun m!1444493 () Bool)

(assert (=> bs!328731 m!1444493))

(declare-fun m!1444495 () Bool)

(assert (=> bs!328731 m!1444495))

(assert (=> b!1293290 d!364785))

(declare-fun d!364787 () Bool)

(declare-fun lt!425654 () BalanceConc!8442)

(assert (=> d!364787 (= (list!4837 lt!425654) (originalCharacters!3091 t2!34))))

(assert (=> d!364787 (= lt!425654 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))

(assert (=> d!364787 (= (charsOf!1201 t2!34) lt!425654)))

(declare-fun b_lambda!37017 () Bool)

(assert (=> (not b_lambda!37017) (not d!364787)))

(assert (=> d!364787 t!117344))

(declare-fun b_and!86291 () Bool)

(assert (= b_and!86285 (and (=> t!117344 result!84190) b_and!86291)))

(assert (=> d!364787 t!117346))

(declare-fun b_and!86293 () Bool)

(assert (= b_and!86287 (and (=> t!117346 result!84192) b_and!86293)))

(assert (=> d!364787 t!117348))

(declare-fun b_and!86295 () Bool)

(assert (= b_and!86289 (and (=> t!117348 result!84194) b_and!86295)))

(declare-fun m!1444497 () Bool)

(assert (=> d!364787 m!1444497))

(assert (=> d!364787 m!1444451))

(assert (=> b!1293290 d!364787))

(declare-fun d!364789 () Bool)

(declare-fun res!579658 () Bool)

(declare-fun e!829581 () Bool)

(assert (=> d!364789 (=> (not res!579658) (not e!829581))))

(declare-fun rulesValid!817 (LexerInterface!1924 List!13008) Bool)

(assert (=> d!364789 (= res!579658 (rulesValid!817 thiss!19762 rules!2550))))

(assert (=> d!364789 (= (rulesInvariant!1794 thiss!19762 rules!2550) e!829581)))

(declare-fun b!1293509 () Bool)

(declare-datatypes ((List!13013 0))(
  ( (Nil!12947) (Cons!12947 (h!18348 String!15831) (t!117356 List!13013)) )
))
(declare-fun noDuplicateTag!817 (LexerInterface!1924 List!13008 List!13013) Bool)

(assert (=> b!1293509 (= e!829581 (noDuplicateTag!817 thiss!19762 rules!2550 Nil!12947))))

(assert (= (and d!364789 res!579658) b!1293509))

(declare-fun m!1444499 () Bool)

(assert (=> d!364789 m!1444499))

(declare-fun m!1444501 () Bool)

(assert (=> b!1293509 m!1444501))

(assert (=> b!1293296 d!364789))

(declare-fun b!1293510 () Bool)

(declare-fun e!829583 () Bool)

(assert (=> b!1293510 (= e!829583 (inv!16 (value!73159 t1!34)))))

(declare-fun d!364791 () Bool)

(declare-fun c!212878 () Bool)

(assert (=> d!364791 (= c!212878 ((_ is IntegerValue!6957) (value!73159 t1!34)))))

(assert (=> d!364791 (= (inv!21 (value!73159 t1!34)) e!829583)))

(declare-fun b!1293511 () Bool)

(declare-fun res!579659 () Bool)

(declare-fun e!829584 () Bool)

(assert (=> b!1293511 (=> res!579659 e!829584)))

(assert (=> b!1293511 (= res!579659 (not ((_ is IntegerValue!6959) (value!73159 t1!34))))))

(declare-fun e!829582 () Bool)

(assert (=> b!1293511 (= e!829582 e!829584)))

(declare-fun b!1293512 () Bool)

(assert (=> b!1293512 (= e!829582 (inv!17 (value!73159 t1!34)))))

(declare-fun b!1293513 () Bool)

(assert (=> b!1293513 (= e!829584 (inv!15 (value!73159 t1!34)))))

(declare-fun b!1293514 () Bool)

(assert (=> b!1293514 (= e!829583 e!829582)))

(declare-fun c!212879 () Bool)

(assert (=> b!1293514 (= c!212879 ((_ is IntegerValue!6958) (value!73159 t1!34)))))

(assert (= (and d!364791 c!212878) b!1293510))

(assert (= (and d!364791 (not c!212878)) b!1293514))

(assert (= (and b!1293514 c!212879) b!1293512))

(assert (= (and b!1293514 (not c!212879)) b!1293511))

(assert (= (and b!1293511 (not res!579659)) b!1293513))

(declare-fun m!1444503 () Bool)

(assert (=> b!1293510 m!1444503))

(declare-fun m!1444505 () Bool)

(assert (=> b!1293512 m!1444505))

(declare-fun m!1444507 () Bool)

(assert (=> b!1293513 m!1444507))

(assert (=> b!1293286 d!364791))

(declare-fun e!829585 () Bool)

(declare-fun lt!425655 () List!13006)

(declare-fun b!1293518 () Bool)

(assert (=> b!1293518 (= e!829585 (or (not (= (Cons!12940 (apply!2845 lt!425590 0) Nil!12940) Nil!12940)) (= lt!425655 (list!4837 lt!425587))))))

(declare-fun b!1293516 () Bool)

(declare-fun e!829586 () List!13006)

(assert (=> b!1293516 (= e!829586 (Cons!12940 (h!18341 (list!4837 lt!425587)) (++!3282 (t!117315 (list!4837 lt!425587)) (Cons!12940 (apply!2845 lt!425590 0) Nil!12940))))))

(declare-fun b!1293517 () Bool)

(declare-fun res!579660 () Bool)

(assert (=> b!1293517 (=> (not res!579660) (not e!829585))))

(assert (=> b!1293517 (= res!579660 (= (size!10573 lt!425655) (+ (size!10573 (list!4837 lt!425587)) (size!10573 (Cons!12940 (apply!2845 lt!425590 0) Nil!12940)))))))

(declare-fun b!1293515 () Bool)

(assert (=> b!1293515 (= e!829586 (Cons!12940 (apply!2845 lt!425590 0) Nil!12940))))

(declare-fun d!364793 () Bool)

(assert (=> d!364793 e!829585))

(declare-fun res!579661 () Bool)

(assert (=> d!364793 (=> (not res!579661) (not e!829585))))

(assert (=> d!364793 (= res!579661 (= (content!1829 lt!425655) ((_ map or) (content!1829 (list!4837 lt!425587)) (content!1829 (Cons!12940 (apply!2845 lt!425590 0) Nil!12940)))))))

(assert (=> d!364793 (= lt!425655 e!829586)))

(declare-fun c!212880 () Bool)

(assert (=> d!364793 (= c!212880 ((_ is Nil!12940) (list!4837 lt!425587)))))

(assert (=> d!364793 (= (++!3282 (list!4837 lt!425587) (Cons!12940 (apply!2845 lt!425590 0) Nil!12940)) lt!425655)))

(assert (= (and d!364793 c!212880) b!1293515))

(assert (= (and d!364793 (not c!212880)) b!1293516))

(assert (= (and d!364793 res!579661) b!1293517))

(assert (= (and b!1293517 res!579660) b!1293518))

(declare-fun m!1444509 () Bool)

(assert (=> b!1293516 m!1444509))

(declare-fun m!1444511 () Bool)

(assert (=> b!1293517 m!1444511))

(assert (=> b!1293517 m!1444123))

(assert (=> b!1293517 m!1444465))

(declare-fun m!1444513 () Bool)

(assert (=> b!1293517 m!1444513))

(declare-fun m!1444515 () Bool)

(assert (=> d!364793 m!1444515))

(assert (=> d!364793 m!1444123))

(declare-fun m!1444517 () Bool)

(assert (=> d!364793 m!1444517))

(declare-fun m!1444519 () Bool)

(assert (=> d!364793 m!1444519))

(assert (=> b!1293297 d!364793))

(declare-fun d!364795 () Bool)

(declare-fun list!4841 (Conc!4251) List!13006)

(assert (=> d!364795 (= (list!4837 lt!425587) (list!4841 (c!212845 lt!425587)))))

(declare-fun bs!328732 () Bool)

(assert (= bs!328732 d!364795))

(declare-fun m!1444521 () Bool)

(assert (=> bs!328732 m!1444521))

(assert (=> b!1293297 d!364795))

(declare-fun d!364797 () Bool)

(declare-fun c!212883 () Bool)

(assert (=> d!364797 (= c!212883 (isEmpty!7687 lt!425591))))

(declare-fun e!829589 () Bool)

(assert (=> d!364797 (= (prefixMatch!56 lt!425589 lt!425591) e!829589)))

(declare-fun b!1293523 () Bool)

(declare-fun lostCause!256 (Regex!3543) Bool)

(assert (=> b!1293523 (= e!829589 (not (lostCause!256 lt!425589)))))

(declare-fun b!1293524 () Bool)

(declare-fun derivativeStep!879 (Regex!3543 C!7376) Regex!3543)

(declare-fun head!2220 (List!13006) C!7376)

(assert (=> b!1293524 (= e!829589 (prefixMatch!56 (derivativeStep!879 lt!425589 (head!2220 lt!425591)) (tail!1848 lt!425591)))))

(assert (= (and d!364797 c!212883) b!1293523))

(assert (= (and d!364797 (not c!212883)) b!1293524))

(declare-fun m!1444523 () Bool)

(assert (=> d!364797 m!1444523))

(declare-fun m!1444525 () Bool)

(assert (=> b!1293523 m!1444525))

(declare-fun m!1444527 () Bool)

(assert (=> b!1293524 m!1444527))

(assert (=> b!1293524 m!1444527))

(declare-fun m!1444529 () Bool)

(assert (=> b!1293524 m!1444529))

(declare-fun m!1444531 () Bool)

(assert (=> b!1293524 m!1444531))

(assert (=> b!1293524 m!1444529))

(assert (=> b!1293524 m!1444531))

(declare-fun m!1444533 () Bool)

(assert (=> b!1293524 m!1444533))

(assert (=> b!1293297 d!364797))

(declare-fun d!364799 () Bool)

(declare-fun lt!425656 () BalanceConc!8442)

(assert (=> d!364799 (= (list!4837 lt!425656) (originalCharacters!3091 t1!34))))

(assert (=> d!364799 (= lt!425656 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))

(assert (=> d!364799 (= (charsOf!1201 t1!34) lt!425656)))

(declare-fun b_lambda!37019 () Bool)

(assert (=> (not b_lambda!37019) (not d!364799)))

(assert (=> d!364799 t!117338))

(declare-fun b_and!86297 () Bool)

(assert (= b_and!86291 (and (=> t!117338 result!84182) b_and!86297)))

(assert (=> d!364799 t!117340))

(declare-fun b_and!86299 () Bool)

(assert (= b_and!86293 (and (=> t!117340 result!84186) b_and!86299)))

(assert (=> d!364799 t!117342))

(declare-fun b_and!86301 () Bool)

(assert (= b_and!86295 (and (=> t!117342 result!84188) b_and!86301)))

(declare-fun m!1444535 () Bool)

(assert (=> d!364799 m!1444535))

(assert (=> d!364799 m!1444439))

(assert (=> b!1293297 d!364799))

(declare-fun d!364801 () Bool)

(declare-fun lt!425659 () C!7376)

(declare-fun apply!2850 (List!13006 Int) C!7376)

(assert (=> d!364801 (= lt!425659 (apply!2850 (list!4837 lt!425590) 0))))

(declare-fun apply!2851 (Conc!4251 Int) C!7376)

(assert (=> d!364801 (= lt!425659 (apply!2851 (c!212845 lt!425590) 0))))

(declare-fun e!829592 () Bool)

(assert (=> d!364801 e!829592))

(declare-fun res!579664 () Bool)

(assert (=> d!364801 (=> (not res!579664) (not e!829592))))

(assert (=> d!364801 (= res!579664 (<= 0 0))))

(assert (=> d!364801 (= (apply!2845 lt!425590 0) lt!425659)))

(declare-fun b!1293527 () Bool)

(assert (=> b!1293527 (= e!829592 (< 0 (size!10568 lt!425590)))))

(assert (= (and d!364801 res!579664) b!1293527))

(assert (=> d!364801 m!1444491))

(assert (=> d!364801 m!1444491))

(declare-fun m!1444537 () Bool)

(assert (=> d!364801 m!1444537))

(declare-fun m!1444539 () Bool)

(assert (=> d!364801 m!1444539))

(assert (=> b!1293527 m!1444155))

(assert (=> b!1293297 d!364801))

(declare-fun d!364803 () Bool)

(declare-fun lt!425662 () Unit!19084)

(declare-fun lemma!50 (List!13008 LexerInterface!1924 List!13008) Unit!19084)

(assert (=> d!364803 (= lt!425662 (lemma!50 rules!2550 thiss!19762 rules!2550))))

(declare-fun lambda!50865 () Int)

(declare-datatypes ((List!13014 0))(
  ( (Nil!12948) (Cons!12948 (h!18349 Regex!3543) (t!117357 List!13014)) )
))
(declare-fun generalisedUnion!54 (List!13014) Regex!3543)

(declare-fun map!2818 (List!13008 Int) List!13014)

(assert (=> d!364803 (= (rulesRegex!114 thiss!19762 rules!2550) (generalisedUnion!54 (map!2818 rules!2550 lambda!50865)))))

(declare-fun bs!328733 () Bool)

(assert (= bs!328733 d!364803))

(declare-fun m!1444541 () Bool)

(assert (=> bs!328733 m!1444541))

(declare-fun m!1444543 () Bool)

(assert (=> bs!328733 m!1444543))

(assert (=> bs!328733 m!1444543))

(declare-fun m!1444545 () Bool)

(assert (=> bs!328733 m!1444545))

(assert (=> b!1293297 d!364803))

(declare-fun b!1293532 () Bool)

(declare-fun e!829595 () Bool)

(declare-fun tp_is_empty!6579 () Bool)

(declare-fun tp!377150 () Bool)

(assert (=> b!1293532 (= e!829595 (and tp_is_empty!6579 tp!377150))))

(assert (=> b!1293284 (= tp!377094 e!829595)))

(assert (= (and b!1293284 ((_ is Cons!12940) (originalCharacters!3091 t2!34))) b!1293532))

(declare-fun b!1293546 () Bool)

(declare-fun e!829598 () Bool)

(declare-fun tp!377162 () Bool)

(declare-fun tp!377165 () Bool)

(assert (=> b!1293546 (= e!829598 (and tp!377162 tp!377165))))

(declare-fun b!1293543 () Bool)

(assert (=> b!1293543 (= e!829598 tp_is_empty!6579)))

(assert (=> b!1293279 (= tp!377090 e!829598)))

(declare-fun b!1293545 () Bool)

(declare-fun tp!377164 () Bool)

(assert (=> b!1293545 (= e!829598 tp!377164)))

(declare-fun b!1293544 () Bool)

(declare-fun tp!377163 () Bool)

(declare-fun tp!377161 () Bool)

(assert (=> b!1293544 (= e!829598 (and tp!377163 tp!377161))))

(assert (= (and b!1293279 ((_ is ElementMatch!3543) (regex!2229 (rule!3968 t1!34)))) b!1293543))

(assert (= (and b!1293279 ((_ is Concat!5863) (regex!2229 (rule!3968 t1!34)))) b!1293544))

(assert (= (and b!1293279 ((_ is Star!3543) (regex!2229 (rule!3968 t1!34)))) b!1293545))

(assert (= (and b!1293279 ((_ is Union!3543) (regex!2229 (rule!3968 t1!34)))) b!1293546))

(declare-fun b!1293550 () Bool)

(declare-fun e!829599 () Bool)

(declare-fun tp!377167 () Bool)

(declare-fun tp!377170 () Bool)

(assert (=> b!1293550 (= e!829599 (and tp!377167 tp!377170))))

(declare-fun b!1293547 () Bool)

(assert (=> b!1293547 (= e!829599 tp_is_empty!6579)))

(assert (=> b!1293295 (= tp!377088 e!829599)))

(declare-fun b!1293549 () Bool)

(declare-fun tp!377169 () Bool)

(assert (=> b!1293549 (= e!829599 tp!377169)))

(declare-fun b!1293548 () Bool)

(declare-fun tp!377168 () Bool)

(declare-fun tp!377166 () Bool)

(assert (=> b!1293548 (= e!829599 (and tp!377168 tp!377166))))

(assert (= (and b!1293295 ((_ is ElementMatch!3543) (regex!2229 (rule!3968 t2!34)))) b!1293547))

(assert (= (and b!1293295 ((_ is Concat!5863) (regex!2229 (rule!3968 t2!34)))) b!1293548))

(assert (= (and b!1293295 ((_ is Star!3543) (regex!2229 (rule!3968 t2!34)))) b!1293549))

(assert (= (and b!1293295 ((_ is Union!3543) (regex!2229 (rule!3968 t2!34)))) b!1293550))

(declare-fun b!1293551 () Bool)

(declare-fun e!829600 () Bool)

(declare-fun tp!377171 () Bool)

(assert (=> b!1293551 (= e!829600 (and tp_is_empty!6579 tp!377171))))

(assert (=> b!1293286 (= tp!377095 e!829600)))

(assert (= (and b!1293286 ((_ is Cons!12940) (originalCharacters!3091 t1!34))) b!1293551))

(declare-fun b!1293562 () Bool)

(declare-fun b_free!30643 () Bool)

(declare-fun b_next!31347 () Bool)

(assert (=> b!1293562 (= b_free!30643 (not b_next!31347))))

(declare-fun tp!377182 () Bool)

(declare-fun b_and!86303 () Bool)

(assert (=> b!1293562 (= tp!377182 b_and!86303)))

(declare-fun b_free!30645 () Bool)

(declare-fun b_next!31349 () Bool)

(assert (=> b!1293562 (= b_free!30645 (not b_next!31349))))

(declare-fun tb!69453 () Bool)

(declare-fun t!117351 () Bool)

(assert (=> (and b!1293562 (= (toChars!3291 (transformation!2229 (h!18343 (t!117317 rules!2550)))) (toChars!3291 (transformation!2229 (rule!3968 t1!34)))) t!117351) tb!69453))

(declare-fun result!84202 () Bool)

(assert (= result!84202 result!84182))

(assert (=> b!1293486 t!117351))

(declare-fun t!117353 () Bool)

(declare-fun tb!69455 () Bool)

(assert (=> (and b!1293562 (= (toChars!3291 (transformation!2229 (h!18343 (t!117317 rules!2550)))) (toChars!3291 (transformation!2229 (rule!3968 t2!34)))) t!117353) tb!69455))

(declare-fun result!84204 () Bool)

(assert (= result!84204 result!84190))

(assert (=> b!1293493 t!117353))

(assert (=> d!364787 t!117353))

(assert (=> d!364799 t!117351))

(declare-fun b_and!86305 () Bool)

(declare-fun tp!377181 () Bool)

(assert (=> b!1293562 (= tp!377181 (and (=> t!117351 result!84202) (=> t!117353 result!84204) b_and!86305))))

(declare-fun e!829609 () Bool)

(assert (=> b!1293562 (= e!829609 (and tp!377182 tp!377181))))

(declare-fun e!829610 () Bool)

(declare-fun b!1293561 () Bool)

(declare-fun tp!377180 () Bool)

(assert (=> b!1293561 (= e!829610 (and tp!377180 (inv!17361 (tag!2491 (h!18343 (t!117317 rules!2550)))) (inv!17364 (transformation!2229 (h!18343 (t!117317 rules!2550)))) e!829609))))

(declare-fun b!1293560 () Bool)

(declare-fun e!829612 () Bool)

(declare-fun tp!377183 () Bool)

(assert (=> b!1293560 (= e!829612 (and e!829610 tp!377183))))

(assert (=> b!1293292 (= tp!377096 e!829612)))

(assert (= b!1293561 b!1293562))

(assert (= b!1293560 b!1293561))

(assert (= (and b!1293292 ((_ is Cons!12942) (t!117317 rules!2550))) b!1293560))

(declare-fun m!1444547 () Bool)

(assert (=> b!1293561 m!1444547))

(declare-fun m!1444549 () Bool)

(assert (=> b!1293561 m!1444549))

(declare-fun b!1293566 () Bool)

(declare-fun e!829613 () Bool)

(declare-fun tp!377185 () Bool)

(declare-fun tp!377188 () Bool)

(assert (=> b!1293566 (= e!829613 (and tp!377185 tp!377188))))

(declare-fun b!1293563 () Bool)

(assert (=> b!1293563 (= e!829613 tp_is_empty!6579)))

(assert (=> b!1293293 (= tp!377089 e!829613)))

(declare-fun b!1293565 () Bool)

(declare-fun tp!377187 () Bool)

(assert (=> b!1293565 (= e!829613 tp!377187)))

(declare-fun b!1293564 () Bool)

(declare-fun tp!377186 () Bool)

(declare-fun tp!377184 () Bool)

(assert (=> b!1293564 (= e!829613 (and tp!377186 tp!377184))))

(assert (= (and b!1293293 ((_ is ElementMatch!3543) (regex!2229 (h!18343 rules!2550)))) b!1293563))

(assert (= (and b!1293293 ((_ is Concat!5863) (regex!2229 (h!18343 rules!2550)))) b!1293564))

(assert (= (and b!1293293 ((_ is Star!3543) (regex!2229 (h!18343 rules!2550)))) b!1293565))

(assert (= (and b!1293293 ((_ is Union!3543) (regex!2229 (h!18343 rules!2550)))) b!1293566))

(declare-fun b_lambda!37021 () Bool)

(assert (= b_lambda!36999 (or b!1293281 b_lambda!37021)))

(declare-fun bs!328734 () Bool)

(declare-fun d!364805 () Bool)

(assert (= bs!328734 (and d!364805 b!1293281)))

(declare-fun res!579665 () Bool)

(declare-fun e!829614 () Bool)

(assert (=> bs!328734 (=> (not res!579665) (not e!829614))))

(declare-fun matchR!1551 (Regex!3543 List!13006) Bool)

(assert (=> bs!328734 (= res!579665 (matchR!1551 lt!425589 lt!425619))))

(assert (=> bs!328734 (= (dynLambda!5655 lambda!50853 lt!425619) e!829614)))

(declare-fun b!1293567 () Bool)

(declare-fun isPrefix!1054 (List!13006 List!13006) Bool)

(assert (=> b!1293567 (= e!829614 (isPrefix!1054 lt!425591 lt!425619))))

(assert (= (and bs!328734 res!579665) b!1293567))

(declare-fun m!1444551 () Bool)

(assert (=> bs!328734 m!1444551))

(declare-fun m!1444553 () Bool)

(assert (=> b!1293567 m!1444553))

(assert (=> d!364721 d!364805))

(declare-fun b_lambda!37023 () Bool)

(assert (= b_lambda!37015 (or (and b!1293277 b_free!30629 (= (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (toChars!3291 (transformation!2229 (rule!3968 t2!34))))) (and b!1293285 b_free!30633 (= (toChars!3291 (transformation!2229 (h!18343 rules!2550))) (toChars!3291 (transformation!2229 (rule!3968 t2!34))))) (and b!1293280 b_free!30637) (and b!1293562 b_free!30645 (= (toChars!3291 (transformation!2229 (h!18343 (t!117317 rules!2550)))) (toChars!3291 (transformation!2229 (rule!3968 t2!34))))) b_lambda!37023)))

(declare-fun b_lambda!37025 () Bool)

(assert (= b_lambda!37017 (or (and b!1293277 b_free!30629 (= (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (toChars!3291 (transformation!2229 (rule!3968 t2!34))))) (and b!1293285 b_free!30633 (= (toChars!3291 (transformation!2229 (h!18343 rules!2550))) (toChars!3291 (transformation!2229 (rule!3968 t2!34))))) (and b!1293280 b_free!30637) (and b!1293562 b_free!30645 (= (toChars!3291 (transformation!2229 (h!18343 (t!117317 rules!2550)))) (toChars!3291 (transformation!2229 (rule!3968 t2!34))))) b_lambda!37025)))

(declare-fun b_lambda!37027 () Bool)

(assert (= b_lambda!37013 (or (and b!1293277 b_free!30629) (and b!1293285 b_free!30633 (= (toChars!3291 (transformation!2229 (h!18343 rules!2550))) (toChars!3291 (transformation!2229 (rule!3968 t1!34))))) (and b!1293280 b_free!30637 (= (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (toChars!3291 (transformation!2229 (rule!3968 t1!34))))) (and b!1293562 b_free!30645 (= (toChars!3291 (transformation!2229 (h!18343 (t!117317 rules!2550)))) (toChars!3291 (transformation!2229 (rule!3968 t1!34))))) b_lambda!37027)))

(declare-fun b_lambda!37029 () Bool)

(assert (= b_lambda!37019 (or (and b!1293277 b_free!30629) (and b!1293285 b_free!30633 (= (toChars!3291 (transformation!2229 (h!18343 rules!2550))) (toChars!3291 (transformation!2229 (rule!3968 t1!34))))) (and b!1293280 b_free!30637 (= (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (toChars!3291 (transformation!2229 (rule!3968 t1!34))))) (and b!1293562 b_free!30645 (= (toChars!3291 (transformation!2229 (h!18343 (t!117317 rules!2550)))) (toChars!3291 (transformation!2229 (rule!3968 t1!34))))) b_lambda!37029)))

(check-sat (not bs!328734) (not b_next!31349) (not b!1293502) tp_is_empty!6579 (not b_lambda!37021) (not d!364795) (not b!1293566) (not b!1293347) (not b!1293551) (not d!364777) (not b!1293479) (not d!364787) (not b!1293532) (not d!364731) (not d!364713) (not b!1293517) (not b!1293527) (not b!1293390) b_and!86305 (not b!1293549) (not b!1293501) (not b!1293560) (not d!364721) (not b!1293545) (not d!364783) (not b!1293506) b_and!86239 (not b_next!31337) (not b!1293500) (not d!364767) b_and!86301 (not b_lambda!37025) (not d!364765) (not d!364797) (not b!1293494) (not b!1293565) (not b!1293486) b_and!86303 (not b!1293503) (not b!1293524) (not d!364803) (not b!1293546) (not b!1293513) (not b!1293495) (not b!1293505) (not b!1293548) (not b!1293523) (not tb!69441) (not d!364733) (not d!364799) (not b!1293487) (not b!1293391) (not b!1293395) (not d!364761) (not b_next!31331) (not tb!69447) (not b_next!31339) (not b!1293544) b_and!86299 (not b!1293550) (not b!1293509) b_and!86297 (not d!364785) (not b!1293493) (not b!1293478) (not b!1293510) (not d!364789) (not b_lambda!37023) (not b!1293388) (not b!1293348) (not b!1293492) (not d!364801) (not d!364793) (not b!1293512) (not b!1293561) (not b_next!31335) (not b!1293567) (not b_next!31341) (not b_next!31347) (not b!1293516) (not b!1293376) b_and!86243 (not b!1293477) (not d!364763) (not d!364779) (not b_lambda!37029) (not b!1293504) (not b_next!31333) (not d!364697) (not d!364773) (not b!1293564) (not d!364723) (not b_lambda!37027) b_and!86247)
(check-sat b_and!86305 (not b_next!31349) b_and!86239 (not b_next!31337) b_and!86301 b_and!86303 (not b_next!31347) b_and!86243 (not b_next!31331) (not b_next!31339) b_and!86299 b_and!86297 (not b_next!31335) (not b_next!31341) (not b_next!31333) b_and!86247)
(get-model)

(declare-fun d!364879 () Bool)

(declare-fun lt!425687 () List!13006)

(assert (=> d!364879 (= (++!3282 (t!117315 lt!425591) lt!425687) (tail!1848 lt!425588))))

(declare-fun e!829703 () List!13006)

(assert (=> d!364879 (= lt!425687 e!829703)))

(declare-fun c!212933 () Bool)

(assert (=> d!364879 (= c!212933 ((_ is Cons!12940) (t!117315 lt!425591)))))

(assert (=> d!364879 (>= (size!10573 (tail!1848 lt!425588)) (size!10573 (t!117315 lt!425591)))))

(assert (=> d!364879 (= (getSuffix!399 (tail!1848 lt!425588) (t!117315 lt!425591)) lt!425687)))

(declare-fun b!1293722 () Bool)

(assert (=> b!1293722 (= e!829703 (getSuffix!399 (tail!1848 (tail!1848 lt!425588)) (t!117315 (t!117315 lt!425591))))))

(declare-fun b!1293723 () Bool)

(assert (=> b!1293723 (= e!829703 (tail!1848 lt!425588))))

(assert (= (and d!364879 c!212933) b!1293722))

(assert (= (and d!364879 (not c!212933)) b!1293723))

(declare-fun m!1444675 () Bool)

(assert (=> d!364879 m!1444675))

(assert (=> d!364879 m!1444275))

(declare-fun m!1444677 () Bool)

(assert (=> d!364879 m!1444677))

(declare-fun m!1444679 () Bool)

(assert (=> d!364879 m!1444679))

(assert (=> b!1293722 m!1444275))

(declare-fun m!1444681 () Bool)

(assert (=> b!1293722 m!1444681))

(assert (=> b!1293722 m!1444681))

(declare-fun m!1444683 () Bool)

(assert (=> b!1293722 m!1444683))

(assert (=> b!1293376 d!364879))

(declare-fun d!364881 () Bool)

(assert (=> d!364881 (= (tail!1848 lt!425588) (t!117315 lt!425588))))

(assert (=> b!1293376 d!364881))

(declare-fun d!364883 () Bool)

(declare-fun isBalanced!1249 (Conc!4251) Bool)

(assert (=> d!364883 (= (inv!17369 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))) (isBalanced!1249 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))))

(declare-fun bs!328745 () Bool)

(assert (= bs!328745 d!364883))

(declare-fun m!1444685 () Bool)

(assert (=> bs!328745 m!1444685))

(assert (=> tb!69447 d!364883))

(declare-fun b!1293727 () Bool)

(declare-fun lt!425688 () List!13006)

(declare-fun e!829704 () Bool)

(assert (=> b!1293727 (= e!829704 (or (not (= lt!425616 Nil!12940)) (= lt!425688 lt!425591)))))

(declare-fun b!1293725 () Bool)

(declare-fun e!829705 () List!13006)

(assert (=> b!1293725 (= e!829705 (Cons!12940 (h!18341 lt!425591) (++!3282 (t!117315 lt!425591) lt!425616)))))

(declare-fun b!1293726 () Bool)

(declare-fun res!579728 () Bool)

(assert (=> b!1293726 (=> (not res!579728) (not e!829704))))

(assert (=> b!1293726 (= res!579728 (= (size!10573 lt!425688) (+ (size!10573 lt!425591) (size!10573 lt!425616))))))

(declare-fun b!1293724 () Bool)

(assert (=> b!1293724 (= e!829705 lt!425616)))

(declare-fun d!364885 () Bool)

(assert (=> d!364885 e!829704))

(declare-fun res!579729 () Bool)

(assert (=> d!364885 (=> (not res!579729) (not e!829704))))

(assert (=> d!364885 (= res!579729 (= (content!1829 lt!425688) ((_ map or) (content!1829 lt!425591) (content!1829 lt!425616))))))

(assert (=> d!364885 (= lt!425688 e!829705)))

(declare-fun c!212935 () Bool)

(assert (=> d!364885 (= c!212935 ((_ is Nil!12940) lt!425591))))

(assert (=> d!364885 (= (++!3282 lt!425591 lt!425616) lt!425688)))

(assert (= (and d!364885 c!212935) b!1293724))

(assert (= (and d!364885 (not c!212935)) b!1293725))

(assert (= (and d!364885 res!579729) b!1293726))

(assert (= (and b!1293726 res!579728) b!1293727))

(declare-fun m!1444687 () Bool)

(assert (=> b!1293725 m!1444687))

(declare-fun m!1444689 () Bool)

(assert (=> b!1293726 m!1444689))

(assert (=> b!1293726 m!1444249))

(declare-fun m!1444691 () Bool)

(assert (=> b!1293726 m!1444691))

(declare-fun m!1444693 () Bool)

(assert (=> d!364885 m!1444693))

(assert (=> d!364885 m!1444255))

(declare-fun m!1444695 () Bool)

(assert (=> d!364885 m!1444695))

(assert (=> d!364713 d!364885))

(declare-fun d!364887 () Bool)

(declare-fun lt!425693 () Int)

(assert (=> d!364887 (>= lt!425693 0)))

(declare-fun e!829714 () Int)

(assert (=> d!364887 (= lt!425693 e!829714)))

(declare-fun c!212940 () Bool)

(assert (=> d!364887 (= c!212940 ((_ is Nil!12940) lt!425588))))

(assert (=> d!364887 (= (size!10573 lt!425588) lt!425693)))

(declare-fun b!1293742 () Bool)

(assert (=> b!1293742 (= e!829714 0)))

(declare-fun b!1293743 () Bool)

(assert (=> b!1293743 (= e!829714 (+ 1 (size!10573 (t!117315 lt!425588))))))

(assert (= (and d!364887 c!212940) b!1293742))

(assert (= (and d!364887 (not c!212940)) b!1293743))

(declare-fun m!1444697 () Bool)

(assert (=> b!1293743 m!1444697))

(assert (=> d!364713 d!364887))

(declare-fun d!364889 () Bool)

(declare-fun lt!425694 () Int)

(assert (=> d!364889 (>= lt!425694 0)))

(declare-fun e!829715 () Int)

(assert (=> d!364889 (= lt!425694 e!829715)))

(declare-fun c!212941 () Bool)

(assert (=> d!364889 (= c!212941 ((_ is Nil!12940) lt!425591))))

(assert (=> d!364889 (= (size!10573 lt!425591) lt!425694)))

(declare-fun b!1293744 () Bool)

(assert (=> b!1293744 (= e!829715 0)))

(declare-fun b!1293745 () Bool)

(assert (=> b!1293745 (= e!829715 (+ 1 (size!10573 (t!117315 lt!425591))))))

(assert (= (and d!364889 c!212941) b!1293744))

(assert (= (and d!364889 (not c!212941)) b!1293745))

(assert (=> b!1293745 m!1444679))

(assert (=> d!364713 d!364889))

(declare-fun b!1293749 () Bool)

(declare-fun lt!425695 () List!13006)

(declare-fun e!829716 () Bool)

(assert (=> b!1293749 (= e!829716 (or (not (= (getSuffix!399 lt!425588 lt!425591) Nil!12940)) (= lt!425695 (t!117315 lt!425591))))))

(declare-fun b!1293747 () Bool)

(declare-fun e!829717 () List!13006)

(assert (=> b!1293747 (= e!829717 (Cons!12940 (h!18341 (t!117315 lt!425591)) (++!3282 (t!117315 (t!117315 lt!425591)) (getSuffix!399 lt!425588 lt!425591))))))

(declare-fun b!1293748 () Bool)

(declare-fun res!579736 () Bool)

(assert (=> b!1293748 (=> (not res!579736) (not e!829716))))

(assert (=> b!1293748 (= res!579736 (= (size!10573 lt!425695) (+ (size!10573 (t!117315 lt!425591)) (size!10573 (getSuffix!399 lt!425588 lt!425591)))))))

(declare-fun b!1293746 () Bool)

(assert (=> b!1293746 (= e!829717 (getSuffix!399 lt!425588 lt!425591))))

(declare-fun d!364891 () Bool)

(assert (=> d!364891 e!829716))

(declare-fun res!579737 () Bool)

(assert (=> d!364891 (=> (not res!579737) (not e!829716))))

(assert (=> d!364891 (= res!579737 (= (content!1829 lt!425695) ((_ map or) (content!1829 (t!117315 lt!425591)) (content!1829 (getSuffix!399 lt!425588 lt!425591)))))))

(assert (=> d!364891 (= lt!425695 e!829717)))

(declare-fun c!212942 () Bool)

(assert (=> d!364891 (= c!212942 ((_ is Nil!12940) (t!117315 lt!425591)))))

(assert (=> d!364891 (= (++!3282 (t!117315 lt!425591) (getSuffix!399 lt!425588 lt!425591)) lt!425695)))

(assert (= (and d!364891 c!212942) b!1293746))

(assert (= (and d!364891 (not c!212942)) b!1293747))

(assert (= (and d!364891 res!579737) b!1293748))

(assert (= (and b!1293748 res!579736) b!1293749))

(assert (=> b!1293747 m!1444161))

(declare-fun m!1444699 () Bool)

(assert (=> b!1293747 m!1444699))

(declare-fun m!1444701 () Bool)

(assert (=> b!1293748 m!1444701))

(assert (=> b!1293748 m!1444679))

(assert (=> b!1293748 m!1444161))

(assert (=> b!1293748 m!1444251))

(declare-fun m!1444703 () Bool)

(assert (=> d!364891 m!1444703))

(declare-fun m!1444705 () Bool)

(assert (=> d!364891 m!1444705))

(assert (=> d!364891 m!1444161))

(assert (=> d!364891 m!1444257))

(assert (=> b!1293347 d!364891))

(declare-fun d!364893 () Bool)

(assert (=> d!364893 true))

(assert (=> d!364893 true))

(declare-fun res!579740 () Bool)

(assert (=> d!364893 (= (choose!7941 lambda!50853) res!579740)))

(assert (=> d!364761 d!364893))

(declare-fun d!364895 () Bool)

(declare-fun lt!425699 () Bool)

(assert (=> d!364895 (= lt!425699 (isEmpty!7687 (list!4837 (_2!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34)))))))))

(declare-fun isEmpty!7690 (Conc!4251) Bool)

(assert (=> d!364895 (= lt!425699 (isEmpty!7690 (c!212845 (_2!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34)))))))))

(assert (=> d!364895 (= (isEmpty!7686 (_2!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34))))) lt!425699)))

(declare-fun bs!328746 () Bool)

(assert (= bs!328746 d!364895))

(declare-fun m!1444725 () Bool)

(assert (=> bs!328746 m!1444725))

(assert (=> bs!328746 m!1444725))

(declare-fun m!1444727 () Bool)

(assert (=> bs!328746 m!1444727))

(declare-fun m!1444729 () Bool)

(assert (=> bs!328746 m!1444729))

(assert (=> b!1293479 d!364895))

(declare-fun b!1293840 () Bool)

(declare-fun e!829770 () Bool)

(declare-fun e!829771 () Bool)

(assert (=> b!1293840 (= e!829770 e!829771)))

(declare-fun res!579781 () Bool)

(declare-fun lt!425729 () tuple2!12682)

(assert (=> b!1293840 (= res!579781 (< (size!10568 (_2!7227 lt!425729)) (size!10568 (print!724 thiss!19762 (singletonSeq!814 t2!34)))))))

(assert (=> b!1293840 (=> (not res!579781) (not e!829771))))

(declare-fun b!1293841 () Bool)

(declare-fun isEmpty!7691 (BalanceConc!8446) Bool)

(assert (=> b!1293841 (= e!829771 (not (isEmpty!7691 (_1!7227 lt!425729))))))

(declare-fun d!364899 () Bool)

(declare-fun e!829769 () Bool)

(assert (=> d!364899 e!829769))

(declare-fun res!579780 () Bool)

(assert (=> d!364899 (=> (not res!579780) (not e!829769))))

(assert (=> d!364899 (= res!579780 e!829770)))

(declare-fun c!212973 () Bool)

(assert (=> d!364899 (= c!212973 (> (size!10574 (_1!7227 lt!425729)) 0))))

(declare-fun lexTailRecV2!349 (LexerInterface!1924 List!13008 BalanceConc!8442 BalanceConc!8442 BalanceConc!8442 BalanceConc!8446) tuple2!12682)

(assert (=> d!364899 (= lt!425729 (lexTailRecV2!349 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34)) (BalanceConc!8443 Empty!4251) (print!724 thiss!19762 (singletonSeq!814 t2!34)) (BalanceConc!8447 Empty!4253)))))

(assert (=> d!364899 (= (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34))) lt!425729)))

(declare-fun b!1293842 () Bool)

(declare-datatypes ((tuple2!12686 0))(
  ( (tuple2!12687 (_1!7229 List!13012) (_2!7229 List!13006)) )
))
(declare-fun lexList!500 (LexerInterface!1924 List!13008 List!13006) tuple2!12686)

(assert (=> b!1293842 (= e!829769 (= (list!4837 (_2!7227 lt!425729)) (_2!7229 (lexList!500 thiss!19762 rules!2550 (list!4837 (print!724 thiss!19762 (singletonSeq!814 t2!34)))))))))

(declare-fun b!1293843 () Bool)

(assert (=> b!1293843 (= e!829770 (= (_2!7227 lt!425729) (print!724 thiss!19762 (singletonSeq!814 t2!34))))))

(declare-fun b!1293844 () Bool)

(declare-fun res!579779 () Bool)

(assert (=> b!1293844 (=> (not res!579779) (not e!829769))))

(assert (=> b!1293844 (= res!579779 (= (list!4840 (_1!7227 lt!425729)) (_1!7229 (lexList!500 thiss!19762 rules!2550 (list!4837 (print!724 thiss!19762 (singletonSeq!814 t2!34)))))))))

(assert (= (and d!364899 c!212973) b!1293840))

(assert (= (and d!364899 (not c!212973)) b!1293843))

(assert (= (and b!1293840 res!579781) b!1293841))

(assert (= (and d!364899 res!579780) b!1293844))

(assert (= (and b!1293844 res!579779) b!1293842))

(declare-fun m!1444869 () Bool)

(assert (=> b!1293842 m!1444869))

(assert (=> b!1293842 m!1444413))

(declare-fun m!1444871 () Bool)

(assert (=> b!1293842 m!1444871))

(assert (=> b!1293842 m!1444871))

(declare-fun m!1444873 () Bool)

(assert (=> b!1293842 m!1444873))

(declare-fun m!1444875 () Bool)

(assert (=> b!1293840 m!1444875))

(assert (=> b!1293840 m!1444413))

(declare-fun m!1444877 () Bool)

(assert (=> b!1293840 m!1444877))

(declare-fun m!1444879 () Bool)

(assert (=> b!1293841 m!1444879))

(declare-fun m!1444881 () Bool)

(assert (=> b!1293844 m!1444881))

(assert (=> b!1293844 m!1444413))

(assert (=> b!1293844 m!1444871))

(assert (=> b!1293844 m!1444871))

(assert (=> b!1293844 m!1444873))

(declare-fun m!1444883 () Bool)

(assert (=> d!364899 m!1444883))

(assert (=> d!364899 m!1444413))

(assert (=> d!364899 m!1444413))

(declare-fun m!1444885 () Bool)

(assert (=> d!364899 m!1444885))

(assert (=> b!1293479 d!364899))

(declare-fun d!364947 () Bool)

(declare-fun lt!425752 () BalanceConc!8442)

(declare-fun printList!544 (LexerInterface!1924 List!13012) List!13006)

(assert (=> d!364947 (= (list!4837 lt!425752) (printList!544 thiss!19762 (list!4840 (singletonSeq!814 t2!34))))))

(declare-fun printTailRec!526 (LexerInterface!1924 BalanceConc!8446 Int BalanceConc!8442) BalanceConc!8442)

(assert (=> d!364947 (= lt!425752 (printTailRec!526 thiss!19762 (singletonSeq!814 t2!34) 0 (BalanceConc!8443 Empty!4251)))))

(assert (=> d!364947 (= (print!724 thiss!19762 (singletonSeq!814 t2!34)) lt!425752)))

(declare-fun bs!328762 () Bool)

(assert (= bs!328762 d!364947))

(declare-fun m!1444887 () Bool)

(assert (=> bs!328762 m!1444887))

(assert (=> bs!328762 m!1444409))

(assert (=> bs!328762 m!1444411))

(assert (=> bs!328762 m!1444411))

(declare-fun m!1444889 () Bool)

(assert (=> bs!328762 m!1444889))

(assert (=> bs!328762 m!1444409))

(declare-fun m!1444891 () Bool)

(assert (=> bs!328762 m!1444891))

(assert (=> b!1293479 d!364947))

(declare-fun d!364949 () Bool)

(declare-fun e!829774 () Bool)

(assert (=> d!364949 e!829774))

(declare-fun res!579784 () Bool)

(assert (=> d!364949 (=> (not res!579784) (not e!829774))))

(declare-fun lt!425765 () BalanceConc!8446)

(assert (=> d!364949 (= res!579784 (= (list!4840 lt!425765) (Cons!12946 t2!34 Nil!12946)))))

(declare-fun singleton!356 (Token!4120) BalanceConc!8446)

(assert (=> d!364949 (= lt!425765 (singleton!356 t2!34))))

(assert (=> d!364949 (= (singletonSeq!814 t2!34) lt!425765)))

(declare-fun b!1293847 () Bool)

(declare-fun isBalanced!1252 (Conc!4253) Bool)

(assert (=> b!1293847 (= e!829774 (isBalanced!1252 (c!212884 lt!425765)))))

(assert (= (and d!364949 res!579784) b!1293847))

(declare-fun m!1444919 () Bool)

(assert (=> d!364949 m!1444919))

(declare-fun m!1444921 () Bool)

(assert (=> d!364949 m!1444921))

(declare-fun m!1444923 () Bool)

(assert (=> b!1293847 m!1444923))

(assert (=> b!1293479 d!364949))

(assert (=> b!1293527 d!364785))

(declare-fun e!829775 () Bool)

(declare-fun b!1293851 () Bool)

(declare-fun lt!425766 () List!13006)

(assert (=> b!1293851 (= e!829775 (or (not (= (Cons!12940 (apply!2845 lt!425590 0) Nil!12940) Nil!12940)) (= lt!425766 (t!117315 (list!4837 lt!425587)))))))

(declare-fun b!1293849 () Bool)

(declare-fun e!829776 () List!13006)

(assert (=> b!1293849 (= e!829776 (Cons!12940 (h!18341 (t!117315 (list!4837 lt!425587))) (++!3282 (t!117315 (t!117315 (list!4837 lt!425587))) (Cons!12940 (apply!2845 lt!425590 0) Nil!12940))))))

(declare-fun b!1293850 () Bool)

(declare-fun res!579785 () Bool)

(assert (=> b!1293850 (=> (not res!579785) (not e!829775))))

(assert (=> b!1293850 (= res!579785 (= (size!10573 lt!425766) (+ (size!10573 (t!117315 (list!4837 lt!425587))) (size!10573 (Cons!12940 (apply!2845 lt!425590 0) Nil!12940)))))))

(declare-fun b!1293848 () Bool)

(assert (=> b!1293848 (= e!829776 (Cons!12940 (apply!2845 lt!425590 0) Nil!12940))))

(declare-fun d!364953 () Bool)

(assert (=> d!364953 e!829775))

(declare-fun res!579786 () Bool)

(assert (=> d!364953 (=> (not res!579786) (not e!829775))))

(assert (=> d!364953 (= res!579786 (= (content!1829 lt!425766) ((_ map or) (content!1829 (t!117315 (list!4837 lt!425587))) (content!1829 (Cons!12940 (apply!2845 lt!425590 0) Nil!12940)))))))

(assert (=> d!364953 (= lt!425766 e!829776)))

(declare-fun c!212974 () Bool)

(assert (=> d!364953 (= c!212974 ((_ is Nil!12940) (t!117315 (list!4837 lt!425587))))))

(assert (=> d!364953 (= (++!3282 (t!117315 (list!4837 lt!425587)) (Cons!12940 (apply!2845 lt!425590 0) Nil!12940)) lt!425766)))

(assert (= (and d!364953 c!212974) b!1293848))

(assert (= (and d!364953 (not c!212974)) b!1293849))

(assert (= (and d!364953 res!579786) b!1293850))

(assert (= (and b!1293850 res!579785) b!1293851))

(declare-fun m!1444925 () Bool)

(assert (=> b!1293849 m!1444925))

(declare-fun m!1444927 () Bool)

(assert (=> b!1293850 m!1444927))

(declare-fun m!1444929 () Bool)

(assert (=> b!1293850 m!1444929))

(assert (=> b!1293850 m!1444513))

(declare-fun m!1444931 () Bool)

(assert (=> d!364953 m!1444931))

(declare-fun m!1444933 () Bool)

(assert (=> d!364953 m!1444933))

(assert (=> d!364953 m!1444519))

(assert (=> b!1293516 d!364953))

(declare-fun d!364955 () Bool)

(assert (=> d!364955 true))

(declare-fun order!7883 () Int)

(declare-fun lambda!50876 () Int)

(declare-fun order!7881 () Int)

(declare-fun dynLambda!5660 (Int Int) Int)

(declare-fun dynLambda!5661 (Int Int) Int)

(assert (=> d!364955 (< (dynLambda!5660 order!7881 (toChars!3291 (transformation!2229 (rule!3968 t2!34)))) (dynLambda!5661 order!7883 lambda!50876))))

(assert (=> d!364955 true))

(declare-fun order!7885 () Int)

(declare-fun dynLambda!5662 (Int Int) Int)

(assert (=> d!364955 (< (dynLambda!5662 order!7885 (toValue!3432 (transformation!2229 (rule!3968 t2!34)))) (dynLambda!5661 order!7883 lambda!50876))))

(declare-fun Forall!507 (Int) Bool)

(assert (=> d!364955 (= (semiInverseModEq!848 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (toValue!3432 (transformation!2229 (rule!3968 t2!34)))) (Forall!507 lambda!50876))))

(declare-fun bs!328764 () Bool)

(assert (= bs!328764 d!364955))

(declare-fun m!1444949 () Bool)

(assert (=> bs!328764 m!1444949))

(assert (=> d!364731 d!364955))

(declare-fun bs!328765 () Bool)

(declare-fun d!364961 () Bool)

(assert (= bs!328765 (and d!364961 d!364955)))

(declare-fun lambda!50877 () Int)

(assert (=> bs!328765 (= (and (= (toChars!3291 (transformation!2229 (h!18343 rules!2550))) (toChars!3291 (transformation!2229 (rule!3968 t2!34)))) (= (toValue!3432 (transformation!2229 (h!18343 rules!2550))) (toValue!3432 (transformation!2229 (rule!3968 t2!34))))) (= lambda!50877 lambda!50876))))

(assert (=> d!364961 true))

(assert (=> d!364961 (< (dynLambda!5660 order!7881 (toChars!3291 (transformation!2229 (h!18343 rules!2550)))) (dynLambda!5661 order!7883 lambda!50877))))

(assert (=> d!364961 true))

(assert (=> d!364961 (< (dynLambda!5662 order!7885 (toValue!3432 (transformation!2229 (h!18343 rules!2550)))) (dynLambda!5661 order!7883 lambda!50877))))

(assert (=> d!364961 (= (semiInverseModEq!848 (toChars!3291 (transformation!2229 (h!18343 rules!2550))) (toValue!3432 (transformation!2229 (h!18343 rules!2550)))) (Forall!507 lambda!50877))))

(declare-fun bs!328766 () Bool)

(assert (= bs!328766 d!364961))

(declare-fun m!1444951 () Bool)

(assert (=> bs!328766 m!1444951))

(assert (=> d!364773 d!364961))

(declare-fun d!364963 () Bool)

(declare-fun c!212975 () Bool)

(assert (=> d!364963 (= c!212975 (isEmpty!7687 (tail!1848 lt!425591)))))

(declare-fun e!829781 () Bool)

(assert (=> d!364963 (= (prefixMatch!56 (derivativeStep!879 lt!425589 (head!2220 lt!425591)) (tail!1848 lt!425591)) e!829781)))

(declare-fun b!1293860 () Bool)

(assert (=> b!1293860 (= e!829781 (not (lostCause!256 (derivativeStep!879 lt!425589 (head!2220 lt!425591)))))))

(declare-fun b!1293861 () Bool)

(assert (=> b!1293861 (= e!829781 (prefixMatch!56 (derivativeStep!879 (derivativeStep!879 lt!425589 (head!2220 lt!425591)) (head!2220 (tail!1848 lt!425591))) (tail!1848 (tail!1848 lt!425591))))))

(assert (= (and d!364963 c!212975) b!1293860))

(assert (= (and d!364963 (not c!212975)) b!1293861))

(assert (=> d!364963 m!1444531))

(declare-fun m!1444953 () Bool)

(assert (=> d!364963 m!1444953))

(assert (=> b!1293860 m!1444529))

(declare-fun m!1444955 () Bool)

(assert (=> b!1293860 m!1444955))

(assert (=> b!1293861 m!1444531))

(declare-fun m!1444957 () Bool)

(assert (=> b!1293861 m!1444957))

(assert (=> b!1293861 m!1444529))

(assert (=> b!1293861 m!1444957))

(declare-fun m!1444959 () Bool)

(assert (=> b!1293861 m!1444959))

(assert (=> b!1293861 m!1444531))

(declare-fun m!1444961 () Bool)

(assert (=> b!1293861 m!1444961))

(assert (=> b!1293861 m!1444959))

(assert (=> b!1293861 m!1444961))

(declare-fun m!1444963 () Bool)

(assert (=> b!1293861 m!1444963))

(assert (=> b!1293524 d!364963))

(declare-fun d!364965 () Bool)

(declare-fun lt!425780 () Regex!3543)

(assert (=> d!364965 (validRegex!1529 lt!425780)))

(declare-fun e!829805 () Regex!3543)

(assert (=> d!364965 (= lt!425780 e!829805)))

(declare-fun c!212989 () Bool)

(assert (=> d!364965 (= c!212989 (or ((_ is EmptyExpr!3543) lt!425589) ((_ is EmptyLang!3543) lt!425589)))))

(assert (=> d!364965 (validRegex!1529 lt!425589)))

(assert (=> d!364965 (= (derivativeStep!879 lt!425589 (head!2220 lt!425591)) lt!425780)))

(declare-fun c!212988 () Bool)

(declare-fun c!212987 () Bool)

(declare-fun call!88763 () Regex!3543)

(declare-fun bm!88758 () Bool)

(declare-fun c!212990 () Bool)

(assert (=> bm!88758 (= call!88763 (derivativeStep!879 (ite c!212988 (regOne!7599 lt!425589) (ite c!212987 (reg!3872 lt!425589) (ite c!212990 (regTwo!7598 lt!425589) (regOne!7598 lt!425589)))) (head!2220 lt!425591)))))

(declare-fun b!1293904 () Bool)

(declare-fun e!829809 () Regex!3543)

(assert (=> b!1293904 (= e!829809 (ite (= (head!2220 lt!425591) (c!212846 lt!425589)) EmptyExpr!3543 EmptyLang!3543))))

(declare-fun bm!88759 () Bool)

(declare-fun call!88765 () Regex!3543)

(declare-fun call!88766 () Regex!3543)

(assert (=> bm!88759 (= call!88765 call!88766)))

(declare-fun b!1293905 () Bool)

(declare-fun e!829808 () Regex!3543)

(assert (=> b!1293905 (= e!829808 (Concat!5863 call!88766 lt!425589))))

(declare-fun b!1293906 () Bool)

(declare-fun nullable!1129 (Regex!3543) Bool)

(assert (=> b!1293906 (= c!212990 (nullable!1129 (regOne!7598 lt!425589)))))

(declare-fun e!829806 () Regex!3543)

(assert (=> b!1293906 (= e!829808 e!829806)))

(declare-fun bm!88760 () Bool)

(assert (=> bm!88760 (= call!88766 call!88763)))

(declare-fun b!1293907 () Bool)

(assert (=> b!1293907 (= e!829805 EmptyLang!3543)))

(declare-fun b!1293908 () Bool)

(declare-fun call!88764 () Regex!3543)

(assert (=> b!1293908 (= e!829806 (Union!3543 (Concat!5863 call!88764 (regTwo!7598 lt!425589)) call!88765))))

(declare-fun b!1293909 () Bool)

(declare-fun e!829807 () Regex!3543)

(assert (=> b!1293909 (= e!829807 (Union!3543 call!88763 call!88764))))

(declare-fun b!1293910 () Bool)

(assert (=> b!1293910 (= c!212988 ((_ is Union!3543) lt!425589))))

(assert (=> b!1293910 (= e!829809 e!829807)))

(declare-fun b!1293911 () Bool)

(assert (=> b!1293911 (= e!829807 e!829808)))

(assert (=> b!1293911 (= c!212987 ((_ is Star!3543) lt!425589))))

(declare-fun b!1293912 () Bool)

(assert (=> b!1293912 (= e!829806 (Union!3543 (Concat!5863 call!88765 (regTwo!7598 lt!425589)) EmptyLang!3543))))

(declare-fun b!1293913 () Bool)

(assert (=> b!1293913 (= e!829805 e!829809)))

(declare-fun c!212991 () Bool)

(assert (=> b!1293913 (= c!212991 ((_ is ElementMatch!3543) lt!425589))))

(declare-fun bm!88761 () Bool)

(assert (=> bm!88761 (= call!88764 (derivativeStep!879 (ite c!212988 (regTwo!7599 lt!425589) (regOne!7598 lt!425589)) (head!2220 lt!425591)))))

(assert (= (and d!364965 c!212989) b!1293907))

(assert (= (and d!364965 (not c!212989)) b!1293913))

(assert (= (and b!1293913 c!212991) b!1293904))

(assert (= (and b!1293913 (not c!212991)) b!1293910))

(assert (= (and b!1293910 c!212988) b!1293909))

(assert (= (and b!1293910 (not c!212988)) b!1293911))

(assert (= (and b!1293911 c!212987) b!1293905))

(assert (= (and b!1293911 (not c!212987)) b!1293906))

(assert (= (and b!1293906 c!212990) b!1293908))

(assert (= (and b!1293906 (not c!212990)) b!1293912))

(assert (= (or b!1293908 b!1293912) bm!88759))

(assert (= (or b!1293905 bm!88759) bm!88760))

(assert (= (or b!1293909 bm!88760) bm!88758))

(assert (= (or b!1293909 b!1293908) bm!88761))

(declare-fun m!1444985 () Bool)

(assert (=> d!364965 m!1444985))

(assert (=> d!364965 m!1444431))

(assert (=> bm!88758 m!1444527))

(declare-fun m!1444991 () Bool)

(assert (=> bm!88758 m!1444991))

(declare-fun m!1444993 () Bool)

(assert (=> b!1293906 m!1444993))

(assert (=> bm!88761 m!1444527))

(declare-fun m!1444995 () Bool)

(assert (=> bm!88761 m!1444995))

(assert (=> b!1293524 d!364965))

(declare-fun d!364979 () Bool)

(assert (=> d!364979 (= (head!2220 lt!425591) (h!18341 lt!425591))))

(assert (=> b!1293524 d!364979))

(declare-fun d!364985 () Bool)

(assert (=> d!364985 (= (tail!1848 lt!425591) (t!117315 lt!425591))))

(assert (=> b!1293524 d!364985))

(declare-fun d!364987 () Bool)

(declare-fun lt!425790 () Token!4120)

(declare-fun apply!2855 (List!13012 Int) Token!4120)

(assert (=> d!364987 (= lt!425790 (apply!2855 (list!4840 (_1!7227 lt!425641)) 0))))

(declare-fun apply!2856 (Conc!4253 Int) Token!4120)

(assert (=> d!364987 (= lt!425790 (apply!2856 (c!212884 (_1!7227 lt!425641)) 0))))

(declare-fun e!829817 () Bool)

(assert (=> d!364987 e!829817))

(declare-fun res!579809 () Bool)

(assert (=> d!364987 (=> (not res!579809) (not e!829817))))

(assert (=> d!364987 (= res!579809 (<= 0 0))))

(assert (=> d!364987 (= (apply!2849 (_1!7227 lt!425641) 0) lt!425790)))

(declare-fun b!1293926 () Bool)

(assert (=> b!1293926 (= e!829817 (< 0 (size!10574 (_1!7227 lt!425641))))))

(assert (= (and d!364987 res!579809) b!1293926))

(declare-fun m!1445029 () Bool)

(assert (=> d!364987 m!1445029))

(assert (=> d!364987 m!1445029))

(declare-fun m!1445031 () Bool)

(assert (=> d!364987 m!1445031))

(declare-fun m!1445033 () Bool)

(assert (=> d!364987 m!1445033))

(assert (=> b!1293926 m!1444417))

(assert (=> b!1293477 d!364987))

(declare-fun d!365011 () Bool)

(declare-fun charsToInt!0 (List!13007) (_ BitVec 32))

(assert (=> d!365011 (= (inv!16 (value!73159 t2!34)) (= (charsToInt!0 (text!16680 (value!73159 t2!34))) (value!73150 (value!73159 t2!34))))))

(declare-fun bs!328779 () Bool)

(assert (= bs!328779 d!365011))

(declare-fun m!1445035 () Bool)

(assert (=> bs!328779 m!1445035))

(assert (=> b!1293388 d!365011))

(declare-fun d!365013 () Bool)

(declare-fun charsToBigInt!0 (List!13007 Int) Int)

(assert (=> d!365013 (= (inv!15 (value!73159 t1!34)) (= (charsToBigInt!0 (text!16682 (value!73159 t1!34)) 0) (value!73154 (value!73159 t1!34))))))

(declare-fun bs!328780 () Bool)

(assert (= bs!328780 d!365013))

(declare-fun m!1445037 () Bool)

(assert (=> bs!328780 m!1445037))

(assert (=> b!1293513 d!365013))

(declare-fun d!365015 () Bool)

(declare-fun c!213003 () Bool)

(assert (=> d!365015 (= c!213003 ((_ is Nil!12940) lt!425613))))

(declare-fun e!829831 () (InoxSet C!7376))

(assert (=> d!365015 (= (content!1829 lt!425613) e!829831)))

(declare-fun b!1293946 () Bool)

(assert (=> b!1293946 (= e!829831 ((as const (Array C!7376 Bool)) false))))

(declare-fun b!1293947 () Bool)

(assert (=> b!1293947 (= e!829831 ((_ map or) (store ((as const (Array C!7376 Bool)) false) (h!18341 lt!425613) true) (content!1829 (t!117315 lt!425613))))))

(assert (= (and d!365015 c!213003) b!1293946))

(assert (= (and d!365015 (not c!213003)) b!1293947))

(declare-fun m!1445051 () Bool)

(assert (=> b!1293947 m!1445051))

(declare-fun m!1445053 () Bool)

(assert (=> b!1293947 m!1445053))

(assert (=> d!364697 d!365015))

(declare-fun d!365025 () Bool)

(declare-fun c!213004 () Bool)

(assert (=> d!365025 (= c!213004 ((_ is Nil!12940) lt!425591))))

(declare-fun e!829832 () (InoxSet C!7376))

(assert (=> d!365025 (= (content!1829 lt!425591) e!829832)))

(declare-fun b!1293948 () Bool)

(assert (=> b!1293948 (= e!829832 ((as const (Array C!7376 Bool)) false))))

(declare-fun b!1293949 () Bool)

(assert (=> b!1293949 (= e!829832 ((_ map or) (store ((as const (Array C!7376 Bool)) false) (h!18341 lt!425591) true) (content!1829 (t!117315 lt!425591))))))

(assert (= (and d!365025 c!213004) b!1293948))

(assert (= (and d!365025 (not c!213004)) b!1293949))

(declare-fun m!1445055 () Bool)

(assert (=> b!1293949 m!1445055))

(assert (=> b!1293949 m!1444705))

(assert (=> d!364697 d!365025))

(declare-fun d!365027 () Bool)

(declare-fun c!213005 () Bool)

(assert (=> d!365027 (= c!213005 ((_ is Nil!12940) (getSuffix!399 lt!425588 lt!425591)))))

(declare-fun e!829833 () (InoxSet C!7376))

(assert (=> d!365027 (= (content!1829 (getSuffix!399 lt!425588 lt!425591)) e!829833)))

(declare-fun b!1293950 () Bool)

(assert (=> b!1293950 (= e!829833 ((as const (Array C!7376 Bool)) false))))

(declare-fun b!1293951 () Bool)

(assert (=> b!1293951 (= e!829833 ((_ map or) (store ((as const (Array C!7376 Bool)) false) (h!18341 (getSuffix!399 lt!425588 lt!425591)) true) (content!1829 (t!117315 (getSuffix!399 lt!425588 lt!425591)))))))

(assert (= (and d!365027 c!213005) b!1293950))

(assert (= (and d!365027 (not c!213005)) b!1293951))

(declare-fun m!1445057 () Bool)

(assert (=> b!1293951 m!1445057))

(declare-fun m!1445059 () Bool)

(assert (=> b!1293951 m!1445059))

(assert (=> d!364697 d!365027))

(declare-fun b!1293996 () Bool)

(declare-fun res!579835 () Bool)

(declare-fun e!829857 () Bool)

(assert (=> b!1293996 (=> (not res!579835) (not e!829857))))

(declare-fun call!88772 () Bool)

(assert (=> b!1293996 (= res!579835 (not call!88772))))

(declare-fun bm!88767 () Bool)

(assert (=> bm!88767 (= call!88772 (isEmpty!7687 lt!425619))))

(declare-fun b!1293997 () Bool)

(declare-fun res!579839 () Bool)

(declare-fun e!829862 () Bool)

(assert (=> b!1293997 (=> res!579839 e!829862)))

(assert (=> b!1293997 (= res!579839 e!829857)))

(declare-fun res!579840 () Bool)

(assert (=> b!1293997 (=> (not res!579840) (not e!829857))))

(declare-fun lt!425801 () Bool)

(assert (=> b!1293997 (= res!579840 lt!425801)))

(declare-fun b!1293998 () Bool)

(declare-fun e!829860 () Bool)

(declare-fun e!829861 () Bool)

(assert (=> b!1293998 (= e!829860 e!829861)))

(declare-fun c!213021 () Bool)

(assert (=> b!1293998 (= c!213021 ((_ is EmptyLang!3543) lt!425589))))

(declare-fun b!1293999 () Bool)

(declare-fun e!829858 () Bool)

(assert (=> b!1293999 (= e!829862 e!829858)))

(declare-fun res!579836 () Bool)

(assert (=> b!1293999 (=> (not res!579836) (not e!829858))))

(assert (=> b!1293999 (= res!579836 (not lt!425801))))

(declare-fun b!1294000 () Bool)

(assert (=> b!1294000 (= e!829857 (= (head!2220 lt!425619) (c!212846 lt!425589)))))

(declare-fun b!1294001 () Bool)

(declare-fun res!579842 () Bool)

(assert (=> b!1294001 (=> res!579842 e!829862)))

(assert (=> b!1294001 (= res!579842 (not ((_ is ElementMatch!3543) lt!425589)))))

(assert (=> b!1294001 (= e!829861 e!829862)))

(declare-fun b!1294002 () Bool)

(declare-fun res!579838 () Bool)

(declare-fun e!829859 () Bool)

(assert (=> b!1294002 (=> res!579838 e!829859)))

(assert (=> b!1294002 (= res!579838 (not (isEmpty!7687 (tail!1848 lt!425619))))))

(declare-fun d!365029 () Bool)

(assert (=> d!365029 e!829860))

(declare-fun c!213019 () Bool)

(assert (=> d!365029 (= c!213019 ((_ is EmptyExpr!3543) lt!425589))))

(declare-fun e!829863 () Bool)

(assert (=> d!365029 (= lt!425801 e!829863)))

(declare-fun c!213020 () Bool)

(assert (=> d!365029 (= c!213020 (isEmpty!7687 lt!425619))))

(assert (=> d!365029 (validRegex!1529 lt!425589)))

(assert (=> d!365029 (= (matchR!1551 lt!425589 lt!425619) lt!425801)))

(declare-fun b!1294003 () Bool)

(assert (=> b!1294003 (= e!829863 (nullable!1129 lt!425589))))

(declare-fun b!1294004 () Bool)

(assert (=> b!1294004 (= e!829858 e!829859)))

(declare-fun res!579841 () Bool)

(assert (=> b!1294004 (=> res!579841 e!829859)))

(assert (=> b!1294004 (= res!579841 call!88772)))

(declare-fun b!1294005 () Bool)

(declare-fun res!579837 () Bool)

(assert (=> b!1294005 (=> (not res!579837) (not e!829857))))

(assert (=> b!1294005 (= res!579837 (isEmpty!7687 (tail!1848 lt!425619)))))

(declare-fun b!1294006 () Bool)

(assert (=> b!1294006 (= e!829861 (not lt!425801))))

(declare-fun b!1294007 () Bool)

(assert (=> b!1294007 (= e!829859 (not (= (head!2220 lt!425619) (c!212846 lt!425589))))))

(declare-fun b!1294008 () Bool)

(assert (=> b!1294008 (= e!829863 (matchR!1551 (derivativeStep!879 lt!425589 (head!2220 lt!425619)) (tail!1848 lt!425619)))))

(declare-fun b!1294009 () Bool)

(assert (=> b!1294009 (= e!829860 (= lt!425801 call!88772))))

(assert (= (and d!365029 c!213020) b!1294003))

(assert (= (and d!365029 (not c!213020)) b!1294008))

(assert (= (and d!365029 c!213019) b!1294009))

(assert (= (and d!365029 (not c!213019)) b!1293998))

(assert (= (and b!1293998 c!213021) b!1294006))

(assert (= (and b!1293998 (not c!213021)) b!1294001))

(assert (= (and b!1294001 (not res!579842)) b!1293997))

(assert (= (and b!1293997 res!579840) b!1293996))

(assert (= (and b!1293996 res!579835) b!1294005))

(assert (= (and b!1294005 res!579837) b!1294000))

(assert (= (and b!1293997 (not res!579839)) b!1293999))

(assert (= (and b!1293999 res!579836) b!1294004))

(assert (= (and b!1294004 (not res!579841)) b!1294002))

(assert (= (and b!1294002 (not res!579838)) b!1294007))

(assert (= (or b!1294009 b!1293996 b!1294004) bm!88767))

(declare-fun m!1445067 () Bool)

(assert (=> b!1294003 m!1445067))

(declare-fun m!1445069 () Bool)

(assert (=> b!1294008 m!1445069))

(assert (=> b!1294008 m!1445069))

(declare-fun m!1445071 () Bool)

(assert (=> b!1294008 m!1445071))

(declare-fun m!1445073 () Bool)

(assert (=> b!1294008 m!1445073))

(assert (=> b!1294008 m!1445071))

(assert (=> b!1294008 m!1445073))

(declare-fun m!1445075 () Bool)

(assert (=> b!1294008 m!1445075))

(declare-fun m!1445077 () Bool)

(assert (=> d!365029 m!1445077))

(assert (=> d!365029 m!1444431))

(assert (=> b!1294000 m!1445069))

(assert (=> bm!88767 m!1445077))

(assert (=> b!1294007 m!1445069))

(assert (=> b!1294002 m!1445073))

(assert (=> b!1294002 m!1445073))

(declare-fun m!1445079 () Bool)

(assert (=> b!1294002 m!1445079))

(assert (=> b!1294005 m!1445073))

(assert (=> b!1294005 m!1445073))

(assert (=> b!1294005 m!1445079))

(assert (=> bs!328734 d!365029))

(declare-fun bs!328785 () Bool)

(declare-fun d!365033 () Bool)

(assert (= bs!328785 (and d!365033 d!364803)))

(declare-fun lambda!50898 () Int)

(assert (=> bs!328785 (= lambda!50898 lambda!50865)))

(declare-fun lambda!50899 () Int)

(declare-fun forall!3253 (List!13014 Int) Bool)

(assert (=> d!365033 (forall!3253 (map!2818 rules!2550 lambda!50898) lambda!50899)))

(declare-fun lt!425809 () Unit!19084)

(declare-fun e!829880 () Unit!19084)

(assert (=> d!365033 (= lt!425809 e!829880)))

(declare-fun c!213034 () Bool)

(assert (=> d!365033 (= c!213034 ((_ is Nil!12942) rules!2550))))

(declare-fun rulesValidInductive!705 (LexerInterface!1924 List!13008) Bool)

(assert (=> d!365033 (rulesValidInductive!705 thiss!19762 rules!2550)))

(assert (=> d!365033 (= (lemma!50 rules!2550 thiss!19762 rules!2550) lt!425809)))

(declare-fun b!1294038 () Bool)

(declare-fun Unit!19086 () Unit!19084)

(assert (=> b!1294038 (= e!829880 Unit!19086)))

(declare-fun b!1294039 () Bool)

(declare-fun Unit!19087 () Unit!19084)

(assert (=> b!1294039 (= e!829880 Unit!19087)))

(declare-fun lt!425810 () Unit!19084)

(assert (=> b!1294039 (= lt!425810 (lemma!50 rules!2550 thiss!19762 (t!117317 rules!2550)))))

(assert (= (and d!365033 c!213034) b!1294038))

(assert (= (and d!365033 (not c!213034)) b!1294039))

(declare-fun m!1445101 () Bool)

(assert (=> d!365033 m!1445101))

(assert (=> d!365033 m!1445101))

(declare-fun m!1445103 () Bool)

(assert (=> d!365033 m!1445103))

(declare-fun m!1445105 () Bool)

(assert (=> d!365033 m!1445105))

(declare-fun m!1445107 () Bool)

(assert (=> b!1294039 m!1445107))

(assert (=> d!364803 d!365033))

(declare-fun bs!328792 () Bool)

(declare-fun d!365037 () Bool)

(assert (= bs!328792 (and d!365037 d!365033)))

(declare-fun lambda!50903 () Int)

(assert (=> bs!328792 (= lambda!50903 lambda!50899)))

(declare-fun b!1294099 () Bool)

(declare-fun e!829915 () Regex!3543)

(assert (=> b!1294099 (= e!829915 (Union!3543 (h!18349 (map!2818 rules!2550 lambda!50865)) (generalisedUnion!54 (t!117357 (map!2818 rules!2550 lambda!50865)))))))

(declare-fun b!1294100 () Bool)

(declare-fun e!829914 () Bool)

(declare-fun lt!425816 () Regex!3543)

(declare-fun isUnion!12 (Regex!3543) Bool)

(assert (=> b!1294100 (= e!829914 (isUnion!12 lt!425816))))

(declare-fun b!1294101 () Bool)

(declare-fun head!2221 (List!13014) Regex!3543)

(assert (=> b!1294101 (= e!829914 (= lt!425816 (head!2221 (map!2818 rules!2550 lambda!50865))))))

(declare-fun b!1294102 () Bool)

(declare-fun e!829913 () Bool)

(declare-fun e!829916 () Bool)

(assert (=> b!1294102 (= e!829913 e!829916)))

(declare-fun c!213045 () Bool)

(declare-fun isEmpty!7692 (List!13014) Bool)

(assert (=> b!1294102 (= c!213045 (isEmpty!7692 (map!2818 rules!2550 lambda!50865)))))

(assert (=> d!365037 e!829913))

(declare-fun res!579857 () Bool)

(assert (=> d!365037 (=> (not res!579857) (not e!829913))))

(assert (=> d!365037 (= res!579857 (validRegex!1529 lt!425816))))

(declare-fun e!829912 () Regex!3543)

(assert (=> d!365037 (= lt!425816 e!829912)))

(declare-fun c!213046 () Bool)

(declare-fun e!829911 () Bool)

(assert (=> d!365037 (= c!213046 e!829911)))

(declare-fun res!579858 () Bool)

(assert (=> d!365037 (=> (not res!579858) (not e!829911))))

(assert (=> d!365037 (= res!579858 ((_ is Cons!12948) (map!2818 rules!2550 lambda!50865)))))

(assert (=> d!365037 (forall!3253 (map!2818 rules!2550 lambda!50865) lambda!50903)))

(assert (=> d!365037 (= (generalisedUnion!54 (map!2818 rules!2550 lambda!50865)) lt!425816)))

(declare-fun b!1294103 () Bool)

(assert (=> b!1294103 (= e!829916 e!829914)))

(declare-fun c!213044 () Bool)

(declare-fun tail!1849 (List!13014) List!13014)

(assert (=> b!1294103 (= c!213044 (isEmpty!7692 (tail!1849 (map!2818 rules!2550 lambda!50865))))))

(declare-fun b!1294104 () Bool)

(assert (=> b!1294104 (= e!829912 e!829915)))

(declare-fun c!213047 () Bool)

(assert (=> b!1294104 (= c!213047 ((_ is Cons!12948) (map!2818 rules!2550 lambda!50865)))))

(declare-fun b!1294105 () Bool)

(assert (=> b!1294105 (= e!829911 (isEmpty!7692 (t!117357 (map!2818 rules!2550 lambda!50865))))))

(declare-fun b!1294106 () Bool)

(assert (=> b!1294106 (= e!829912 (h!18349 (map!2818 rules!2550 lambda!50865)))))

(declare-fun b!1294107 () Bool)

(declare-fun isEmptyLang!12 (Regex!3543) Bool)

(assert (=> b!1294107 (= e!829916 (isEmptyLang!12 lt!425816))))

(declare-fun b!1294108 () Bool)

(assert (=> b!1294108 (= e!829915 EmptyLang!3543)))

(assert (= (and d!365037 res!579858) b!1294105))

(assert (= (and d!365037 c!213046) b!1294106))

(assert (= (and d!365037 (not c!213046)) b!1294104))

(assert (= (and b!1294104 c!213047) b!1294099))

(assert (= (and b!1294104 (not c!213047)) b!1294108))

(assert (= (and d!365037 res!579857) b!1294102))

(assert (= (and b!1294102 c!213045) b!1294107))

(assert (= (and b!1294102 (not c!213045)) b!1294103))

(assert (= (and b!1294103 c!213044) b!1294101))

(assert (= (and b!1294103 (not c!213044)) b!1294100))

(assert (=> b!1294102 m!1444543))

(declare-fun m!1445141 () Bool)

(assert (=> b!1294102 m!1445141))

(assert (=> b!1294101 m!1444543))

(declare-fun m!1445143 () Bool)

(assert (=> b!1294101 m!1445143))

(declare-fun m!1445145 () Bool)

(assert (=> b!1294107 m!1445145))

(declare-fun m!1445147 () Bool)

(assert (=> b!1294099 m!1445147))

(declare-fun m!1445149 () Bool)

(assert (=> b!1294100 m!1445149))

(declare-fun m!1445151 () Bool)

(assert (=> d!365037 m!1445151))

(assert (=> d!365037 m!1444543))

(declare-fun m!1445153 () Bool)

(assert (=> d!365037 m!1445153))

(assert (=> b!1294103 m!1444543))

(declare-fun m!1445155 () Bool)

(assert (=> b!1294103 m!1445155))

(assert (=> b!1294103 m!1445155))

(declare-fun m!1445157 () Bool)

(assert (=> b!1294103 m!1445157))

(declare-fun m!1445159 () Bool)

(assert (=> b!1294105 m!1445159))

(assert (=> d!364803 d!365037))

(declare-fun d!365049 () Bool)

(declare-fun lt!425819 () List!13014)

(declare-fun size!10578 (List!13014) Int)

(declare-fun size!10579 (List!13008) Int)

(assert (=> d!365049 (= (size!10578 lt!425819) (size!10579 rules!2550))))

(declare-fun e!829939 () List!13014)

(assert (=> d!365049 (= lt!425819 e!829939)))

(declare-fun c!213050 () Bool)

(assert (=> d!365049 (= c!213050 ((_ is Nil!12942) rules!2550))))

(assert (=> d!365049 (= (map!2818 rules!2550 lambda!50865) lt!425819)))

(declare-fun b!1294166 () Bool)

(assert (=> b!1294166 (= e!829939 Nil!12948)))

(declare-fun b!1294167 () Bool)

(declare-fun $colon$colon!134 (List!13014 Regex!3543) List!13014)

(declare-fun dynLambda!5663 (Int Rule!4258) Regex!3543)

(assert (=> b!1294167 (= e!829939 ($colon$colon!134 (map!2818 (t!117317 rules!2550) lambda!50865) (dynLambda!5663 lambda!50865 (h!18343 rules!2550))))))

(assert (= (and d!365049 c!213050) b!1294166))

(assert (= (and d!365049 (not c!213050)) b!1294167))

(declare-fun b_lambda!37039 () Bool)

(assert (=> (not b_lambda!37039) (not b!1294167)))

(declare-fun m!1445175 () Bool)

(assert (=> d!365049 m!1445175))

(declare-fun m!1445177 () Bool)

(assert (=> d!365049 m!1445177))

(declare-fun m!1445179 () Bool)

(assert (=> b!1294167 m!1445179))

(declare-fun m!1445181 () Bool)

(assert (=> b!1294167 m!1445181))

(assert (=> b!1294167 m!1445179))

(assert (=> b!1294167 m!1445181))

(declare-fun m!1445183 () Bool)

(assert (=> b!1294167 m!1445183))

(assert (=> d!364803 d!365049))

(declare-fun d!365055 () Bool)

(declare-fun charsToBigInt!1 (List!13007) Int)

(assert (=> d!365055 (= (inv!17 (value!73159 t2!34)) (= (charsToBigInt!1 (text!16681 (value!73159 t2!34))) (value!73151 (value!73159 t2!34))))))

(declare-fun bs!328795 () Bool)

(assert (= bs!328795 d!365055))

(declare-fun m!1445185 () Bool)

(assert (=> bs!328795 m!1445185))

(assert (=> b!1293390 d!365055))

(declare-fun b!1294168 () Bool)

(declare-fun e!829941 () Bool)

(declare-fun e!829942 () Bool)

(assert (=> b!1294168 (= e!829941 e!829942)))

(declare-fun lt!425820 () tuple2!12682)

(declare-fun res!579862 () Bool)

(assert (=> b!1294168 (= res!579862 (< (size!10568 (_2!7227 lt!425820)) (size!10568 (print!724 thiss!19762 (singletonSeq!814 t1!34)))))))

(assert (=> b!1294168 (=> (not res!579862) (not e!829942))))

(declare-fun b!1294169 () Bool)

(assert (=> b!1294169 (= e!829942 (not (isEmpty!7691 (_1!7227 lt!425820))))))

(declare-fun d!365057 () Bool)

(declare-fun e!829940 () Bool)

(assert (=> d!365057 e!829940))

(declare-fun res!579861 () Bool)

(assert (=> d!365057 (=> (not res!579861) (not e!829940))))

(assert (=> d!365057 (= res!579861 e!829941)))

(declare-fun c!213051 () Bool)

(assert (=> d!365057 (= c!213051 (> (size!10574 (_1!7227 lt!425820)) 0))))

(assert (=> d!365057 (= lt!425820 (lexTailRecV2!349 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34)) (BalanceConc!8443 Empty!4251) (print!724 thiss!19762 (singletonSeq!814 t1!34)) (BalanceConc!8447 Empty!4253)))))

(assert (=> d!365057 (= (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34))) lt!425820)))

(declare-fun b!1294170 () Bool)

(assert (=> b!1294170 (= e!829940 (= (list!4837 (_2!7227 lt!425820)) (_2!7229 (lexList!500 thiss!19762 rules!2550 (list!4837 (print!724 thiss!19762 (singletonSeq!814 t1!34)))))))))

(declare-fun b!1294171 () Bool)

(assert (=> b!1294171 (= e!829941 (= (_2!7227 lt!425820) (print!724 thiss!19762 (singletonSeq!814 t1!34))))))

(declare-fun b!1294172 () Bool)

(declare-fun res!579860 () Bool)

(assert (=> b!1294172 (=> (not res!579860) (not e!829940))))

(assert (=> b!1294172 (= res!579860 (= (list!4840 (_1!7227 lt!425820)) (_1!7229 (lexList!500 thiss!19762 rules!2550 (list!4837 (print!724 thiss!19762 (singletonSeq!814 t1!34)))))))))

(assert (= (and d!365057 c!213051) b!1294168))

(assert (= (and d!365057 (not c!213051)) b!1294171))

(assert (= (and b!1294168 res!579862) b!1294169))

(assert (= (and d!365057 res!579861) b!1294172))

(assert (= (and b!1294172 res!579860) b!1294170))

(declare-fun m!1445187 () Bool)

(assert (=> b!1294170 m!1445187))

(assert (=> b!1294170 m!1444475))

(declare-fun m!1445189 () Bool)

(assert (=> b!1294170 m!1445189))

(assert (=> b!1294170 m!1445189))

(declare-fun m!1445191 () Bool)

(assert (=> b!1294170 m!1445191))

(declare-fun m!1445193 () Bool)

(assert (=> b!1294168 m!1445193))

(assert (=> b!1294168 m!1444475))

(declare-fun m!1445195 () Bool)

(assert (=> b!1294168 m!1445195))

(declare-fun m!1445197 () Bool)

(assert (=> b!1294169 m!1445197))

(declare-fun m!1445199 () Bool)

(assert (=> b!1294172 m!1445199))

(assert (=> b!1294172 m!1444475))

(assert (=> b!1294172 m!1445189))

(assert (=> b!1294172 m!1445189))

(assert (=> b!1294172 m!1445191))

(declare-fun m!1445201 () Bool)

(assert (=> d!365057 m!1445201))

(assert (=> d!365057 m!1444475))

(assert (=> d!365057 m!1444475))

(declare-fun m!1445203 () Bool)

(assert (=> d!365057 m!1445203))

(assert (=> d!364779 d!365057))

(declare-fun d!365059 () Bool)

(declare-fun lt!425821 () BalanceConc!8442)

(assert (=> d!365059 (= (list!4837 lt!425821) (printList!544 thiss!19762 (list!4840 (singletonSeq!814 t1!34))))))

(assert (=> d!365059 (= lt!425821 (printTailRec!526 thiss!19762 (singletonSeq!814 t1!34) 0 (BalanceConc!8443 Empty!4251)))))

(assert (=> d!365059 (= (print!724 thiss!19762 (singletonSeq!814 t1!34)) lt!425821)))

(declare-fun bs!328796 () Bool)

(assert (= bs!328796 d!365059))

(declare-fun m!1445205 () Bool)

(assert (=> bs!328796 m!1445205))

(assert (=> bs!328796 m!1444471))

(assert (=> bs!328796 m!1444473))

(assert (=> bs!328796 m!1444473))

(declare-fun m!1445207 () Bool)

(assert (=> bs!328796 m!1445207))

(assert (=> bs!328796 m!1444471))

(declare-fun m!1445209 () Bool)

(assert (=> bs!328796 m!1445209))

(assert (=> d!364779 d!365059))

(declare-fun d!365061 () Bool)

(declare-fun e!829943 () Bool)

(assert (=> d!365061 e!829943))

(declare-fun res!579863 () Bool)

(assert (=> d!365061 (=> (not res!579863) (not e!829943))))

(declare-fun lt!425822 () BalanceConc!8446)

(assert (=> d!365061 (= res!579863 (= (list!4840 lt!425822) (Cons!12946 t1!34 Nil!12946)))))

(assert (=> d!365061 (= lt!425822 (singleton!356 t1!34))))

(assert (=> d!365061 (= (singletonSeq!814 t1!34) lt!425822)))

(declare-fun b!1294173 () Bool)

(assert (=> b!1294173 (= e!829943 (isBalanced!1252 (c!212884 lt!425822)))))

(assert (= (and d!365061 res!579863) b!1294173))

(declare-fun m!1445211 () Bool)

(assert (=> d!365061 m!1445211))

(declare-fun m!1445213 () Bool)

(assert (=> d!365061 m!1445213))

(declare-fun m!1445215 () Bool)

(assert (=> b!1294173 m!1445215))

(assert (=> d!364779 d!365061))

(declare-fun d!365063 () Bool)

(declare-fun list!4844 (Conc!4253) List!13012)

(assert (=> d!365063 (= (list!4840 (_1!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34))))) (list!4844 (c!212884 (_1!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34)))))))))

(declare-fun bs!328797 () Bool)

(assert (= bs!328797 d!365063))

(declare-fun m!1445217 () Bool)

(assert (=> bs!328797 m!1445217))

(assert (=> d!364779 d!365063))

(declare-fun d!365065 () Bool)

(declare-fun lt!425825 () Int)

(declare-fun size!10580 (List!13012) Int)

(assert (=> d!365065 (= lt!425825 (size!10580 (list!4840 (_1!7227 lt!425649))))))

(declare-fun size!10581 (Conc!4253) Int)

(assert (=> d!365065 (= lt!425825 (size!10581 (c!212884 (_1!7227 lt!425649))))))

(assert (=> d!365065 (= (size!10574 (_1!7227 lt!425649)) lt!425825)))

(declare-fun bs!328798 () Bool)

(assert (= bs!328798 d!365065))

(declare-fun m!1445219 () Bool)

(assert (=> bs!328798 m!1445219))

(assert (=> bs!328798 m!1445219))

(declare-fun m!1445221 () Bool)

(assert (=> bs!328798 m!1445221))

(declare-fun m!1445223 () Bool)

(assert (=> bs!328798 m!1445223))

(assert (=> d!364779 d!365065))

(declare-fun d!365067 () Bool)

(assert (=> d!365067 (= (list!4840 (singletonSeq!814 t1!34)) (list!4844 (c!212884 (singletonSeq!814 t1!34))))))

(declare-fun bs!328799 () Bool)

(assert (= bs!328799 d!365067))

(declare-fun m!1445225 () Bool)

(assert (=> bs!328799 m!1445225))

(assert (=> d!364779 d!365067))

(assert (=> d!364779 d!364775))

(declare-fun d!365069 () Bool)

(declare-fun lt!425828 () C!7376)

(declare-fun contains!2161 (List!13006 C!7376) Bool)

(assert (=> d!365069 (contains!2161 (list!4837 lt!425590) lt!425828)))

(declare-fun e!829949 () C!7376)

(assert (=> d!365069 (= lt!425828 e!829949)))

(declare-fun c!213054 () Bool)

(assert (=> d!365069 (= c!213054 (= 0 0))))

(declare-fun e!829948 () Bool)

(assert (=> d!365069 e!829948))

(declare-fun res!579866 () Bool)

(assert (=> d!365069 (=> (not res!579866) (not e!829948))))

(assert (=> d!365069 (= res!579866 (<= 0 0))))

(assert (=> d!365069 (= (apply!2850 (list!4837 lt!425590) 0) lt!425828)))

(declare-fun b!1294180 () Bool)

(assert (=> b!1294180 (= e!829948 (< 0 (size!10573 (list!4837 lt!425590))))))

(declare-fun b!1294181 () Bool)

(assert (=> b!1294181 (= e!829949 (head!2220 (list!4837 lt!425590)))))

(declare-fun b!1294182 () Bool)

(assert (=> b!1294182 (= e!829949 (apply!2850 (tail!1848 (list!4837 lt!425590)) (- 0 1)))))

(assert (= (and d!365069 res!579866) b!1294180))

(assert (= (and d!365069 c!213054) b!1294181))

(assert (= (and d!365069 (not c!213054)) b!1294182))

(assert (=> d!365069 m!1444491))

(declare-fun m!1445227 () Bool)

(assert (=> d!365069 m!1445227))

(assert (=> b!1294180 m!1444491))

(assert (=> b!1294180 m!1444493))

(assert (=> b!1294181 m!1444491))

(declare-fun m!1445229 () Bool)

(assert (=> b!1294181 m!1445229))

(assert (=> b!1294182 m!1444491))

(declare-fun m!1445231 () Bool)

(assert (=> b!1294182 m!1445231))

(assert (=> b!1294182 m!1445231))

(declare-fun m!1445233 () Bool)

(assert (=> b!1294182 m!1445233))

(assert (=> d!364801 d!365069))

(declare-fun d!365071 () Bool)

(assert (=> d!365071 (= (list!4837 lt!425590) (list!4841 (c!212845 lt!425590)))))

(declare-fun bs!328800 () Bool)

(assert (= bs!328800 d!365071))

(declare-fun m!1445235 () Bool)

(assert (=> bs!328800 m!1445235))

(assert (=> d!364801 d!365071))

(declare-fun bm!88770 () Bool)

(declare-fun c!213061 () Bool)

(declare-fun c!213062 () Bool)

(assert (=> bm!88770 (= c!213061 c!213062)))

(declare-fun e!829959 () Int)

(declare-fun call!88775 () C!7376)

(assert (=> bm!88770 (= call!88775 (apply!2851 (ite c!213062 (left!11131 (c!212845 lt!425590)) (right!11461 (c!212845 lt!425590))) e!829959))))

(declare-fun b!1294198 () Bool)

(assert (=> b!1294198 (= e!829959 (- 0 (size!10575 (left!11131 (c!212845 lt!425590)))))))

(declare-fun b!1294199 () Bool)

(assert (=> b!1294199 (= e!829959 0)))

(declare-fun b!1294200 () Bool)

(declare-fun e!829961 () Bool)

(assert (=> b!1294200 (= e!829961 (< 0 (size!10575 (c!212845 lt!425590))))))

(declare-fun b!1294201 () Bool)

(declare-fun e!829958 () C!7376)

(declare-fun e!829960 () C!7376)

(assert (=> b!1294201 (= e!829958 e!829960)))

(declare-fun lt!425834 () Bool)

(declare-fun appendIndex!129 (List!13006 List!13006 Int) Bool)

(assert (=> b!1294201 (= lt!425834 (appendIndex!129 (list!4841 (left!11131 (c!212845 lt!425590))) (list!4841 (right!11461 (c!212845 lt!425590))) 0))))

(assert (=> b!1294201 (= c!213062 (< 0 (size!10575 (left!11131 (c!212845 lt!425590)))))))

(declare-fun b!1294202 () Bool)

(assert (=> b!1294202 (= e!829960 call!88775)))

(declare-fun b!1294203 () Bool)

(declare-fun apply!2857 (IArray!8507 Int) C!7376)

(assert (=> b!1294203 (= e!829958 (apply!2857 (xs!6962 (c!212845 lt!425590)) 0))))

(declare-fun b!1294197 () Bool)

(assert (=> b!1294197 (= e!829960 call!88775)))

(declare-fun d!365073 () Bool)

(declare-fun lt!425833 () C!7376)

(assert (=> d!365073 (= lt!425833 (apply!2850 (list!4841 (c!212845 lt!425590)) 0))))

(assert (=> d!365073 (= lt!425833 e!829958)))

(declare-fun c!213063 () Bool)

(assert (=> d!365073 (= c!213063 ((_ is Leaf!6562) (c!212845 lt!425590)))))

(assert (=> d!365073 e!829961))

(declare-fun res!579869 () Bool)

(assert (=> d!365073 (=> (not res!579869) (not e!829961))))

(assert (=> d!365073 (= res!579869 (<= 0 0))))

(assert (=> d!365073 (= (apply!2851 (c!212845 lt!425590) 0) lt!425833)))

(assert (= (and d!365073 res!579869) b!1294200))

(assert (= (and d!365073 c!213063) b!1294203))

(assert (= (and d!365073 (not c!213063)) b!1294201))

(assert (= (and b!1294201 c!213062) b!1294202))

(assert (= (and b!1294201 (not c!213062)) b!1294197))

(assert (= (or b!1294202 b!1294197) bm!88770))

(assert (= (and bm!88770 c!213061) b!1294199))

(assert (= (and bm!88770 (not c!213061)) b!1294198))

(assert (=> b!1294200 m!1444495))

(assert (=> d!365073 m!1445235))

(assert (=> d!365073 m!1445235))

(declare-fun m!1445237 () Bool)

(assert (=> d!365073 m!1445237))

(declare-fun m!1445239 () Bool)

(assert (=> b!1294201 m!1445239))

(declare-fun m!1445241 () Bool)

(assert (=> b!1294201 m!1445241))

(assert (=> b!1294201 m!1445239))

(assert (=> b!1294201 m!1445241))

(declare-fun m!1445243 () Bool)

(assert (=> b!1294201 m!1445243))

(declare-fun m!1445245 () Bool)

(assert (=> b!1294201 m!1445245))

(assert (=> b!1294198 m!1445245))

(declare-fun m!1445247 () Bool)

(assert (=> bm!88770 m!1445247))

(declare-fun m!1445249 () Bool)

(assert (=> b!1294203 m!1445249))

(assert (=> d!364801 d!365073))

(declare-fun d!365075 () Bool)

(declare-fun res!579874 () Bool)

(declare-fun e!829966 () Bool)

(assert (=> d!365075 (=> res!579874 e!829966)))

(assert (=> d!365075 (= res!579874 ((_ is Nil!12942) rules!2550))))

(assert (=> d!365075 (= (noDuplicateTag!817 thiss!19762 rules!2550 Nil!12947) e!829966)))

(declare-fun b!1294208 () Bool)

(declare-fun e!829967 () Bool)

(assert (=> b!1294208 (= e!829966 e!829967)))

(declare-fun res!579875 () Bool)

(assert (=> b!1294208 (=> (not res!579875) (not e!829967))))

(declare-fun contains!2162 (List!13013 String!15831) Bool)

(assert (=> b!1294208 (= res!579875 (not (contains!2162 Nil!12947 (tag!2491 (h!18343 rules!2550)))))))

(declare-fun b!1294209 () Bool)

(assert (=> b!1294209 (= e!829967 (noDuplicateTag!817 thiss!19762 (t!117317 rules!2550) (Cons!12947 (tag!2491 (h!18343 rules!2550)) Nil!12947)))))

(assert (= (and d!365075 (not res!579874)) b!1294208))

(assert (= (and b!1294208 res!579875) b!1294209))

(declare-fun m!1445251 () Bool)

(assert (=> b!1294208 m!1445251))

(declare-fun m!1445253 () Bool)

(assert (=> b!1294209 m!1445253))

(assert (=> b!1293509 d!365075))

(declare-fun d!365077 () Bool)

(declare-fun res!579878 () List!13006)

(assert (=> d!365077 (dynLambda!5655 lambda!50853 res!579878)))

(declare-fun e!829970 () Bool)

(assert (=> d!365077 e!829970))

(assert (=> d!365077 (= (choose!7940 lambda!50853) res!579878)))

(declare-fun b!1294212 () Bool)

(declare-fun tp!377292 () Bool)

(assert (=> b!1294212 (= e!829970 (and tp_is_empty!6579 tp!377292))))

(assert (= (and d!365077 ((_ is Cons!12940) res!579878)) b!1294212))

(declare-fun b_lambda!37041 () Bool)

(assert (=> (not b_lambda!37041) (not d!365077)))

(declare-fun m!1445255 () Bool)

(assert (=> d!365077 m!1445255))

(assert (=> d!364721 d!365077))

(assert (=> d!364721 d!364761))

(declare-fun d!365079 () Bool)

(assert (=> d!365079 (= (inv!15 (value!73159 t2!34)) (= (charsToBigInt!0 (text!16682 (value!73159 t2!34)) 0) (value!73154 (value!73159 t2!34))))))

(declare-fun bs!328801 () Bool)

(assert (= bs!328801 d!365079))

(declare-fun m!1445257 () Bool)

(assert (=> bs!328801 m!1445257))

(assert (=> b!1293391 d!365079))

(declare-fun d!365081 () Bool)

(assert (=> d!365081 (= (Exists!701 lambda!50862) (choose!7941 lambda!50862))))

(declare-fun bs!328802 () Bool)

(assert (= bs!328802 d!365081))

(declare-fun m!1445259 () Bool)

(assert (=> bs!328802 m!1445259))

(assert (=> d!364763 d!365081))

(declare-fun bs!328803 () Bool)

(declare-fun d!365083 () Bool)

(assert (= bs!328803 (and d!365083 b!1293281)))

(declare-fun lambda!50906 () Int)

(assert (=> bs!328803 (= lambda!50906 lambda!50853)))

(declare-fun bs!328804 () Bool)

(assert (= bs!328804 (and d!365083 d!364763)))

(assert (=> bs!328804 (= lambda!50906 lambda!50862)))

(assert (=> d!365083 true))

(assert (=> d!365083 true))

(assert (=> d!365083 (Exists!701 lambda!50906)))

(assert (=> d!365083 true))

(declare-fun _$103!47 () Unit!19084)

(assert (=> d!365083 (= (choose!7942 lt!425589 lt!425591) _$103!47)))

(declare-fun bs!328805 () Bool)

(assert (= bs!328805 d!365083))

(declare-fun m!1445261 () Bool)

(assert (=> bs!328805 m!1445261))

(assert (=> d!364763 d!365083))

(declare-fun b!1294233 () Bool)

(declare-fun e!829988 () Bool)

(declare-fun e!829993 () Bool)

(assert (=> b!1294233 (= e!829988 e!829993)))

(declare-fun res!579895 () Bool)

(assert (=> b!1294233 (=> (not res!579895) (not e!829993))))

(declare-fun call!88783 () Bool)

(assert (=> b!1294233 (= res!579895 call!88783)))

(declare-fun b!1294235 () Bool)

(declare-fun res!579894 () Bool)

(assert (=> b!1294235 (=> res!579894 e!829988)))

(assert (=> b!1294235 (= res!579894 (not ((_ is Concat!5863) lt!425589)))))

(declare-fun e!829987 () Bool)

(assert (=> b!1294235 (= e!829987 e!829988)))

(declare-fun b!1294236 () Bool)

(declare-fun call!88784 () Bool)

(assert (=> b!1294236 (= e!829993 call!88784)))

(declare-fun b!1294237 () Bool)

(declare-fun res!579891 () Bool)

(declare-fun e!829989 () Bool)

(assert (=> b!1294237 (=> (not res!579891) (not e!829989))))

(assert (=> b!1294237 (= res!579891 call!88783)))

(assert (=> b!1294237 (= e!829987 e!829989)))

(declare-fun b!1294238 () Bool)

(assert (=> b!1294238 (= e!829989 call!88784)))

(declare-fun bm!88777 () Bool)

(declare-fun c!213069 () Bool)

(assert (=> bm!88777 (= call!88784 (validRegex!1529 (ite c!213069 (regTwo!7599 lt!425589) (regTwo!7598 lt!425589))))))

(declare-fun b!1294239 () Bool)

(declare-fun e!829990 () Bool)

(declare-fun call!88782 () Bool)

(assert (=> b!1294239 (= e!829990 call!88782)))

(declare-fun b!1294240 () Bool)

(declare-fun e!829991 () Bool)

(assert (=> b!1294240 (= e!829991 e!829987)))

(assert (=> b!1294240 (= c!213069 ((_ is Union!3543) lt!425589))))

(declare-fun bm!88778 () Bool)

(assert (=> bm!88778 (= call!88783 call!88782)))

(declare-fun b!1294241 () Bool)

(assert (=> b!1294241 (= e!829991 e!829990)))

(declare-fun res!579893 () Bool)

(assert (=> b!1294241 (= res!579893 (not (nullable!1129 (reg!3872 lt!425589))))))

(assert (=> b!1294241 (=> (not res!579893) (not e!829990))))

(declare-fun bm!88779 () Bool)

(declare-fun c!213068 () Bool)

(assert (=> bm!88779 (= call!88782 (validRegex!1529 (ite c!213068 (reg!3872 lt!425589) (ite c!213069 (regOne!7599 lt!425589) (regOne!7598 lt!425589)))))))

(declare-fun b!1294234 () Bool)

(declare-fun e!829992 () Bool)

(assert (=> b!1294234 (= e!829992 e!829991)))

(assert (=> b!1294234 (= c!213068 ((_ is Star!3543) lt!425589))))

(declare-fun d!365085 () Bool)

(declare-fun res!579892 () Bool)

(assert (=> d!365085 (=> res!579892 e!829992)))

(assert (=> d!365085 (= res!579892 ((_ is ElementMatch!3543) lt!425589))))

(assert (=> d!365085 (= (validRegex!1529 lt!425589) e!829992)))

(assert (= (and d!365085 (not res!579892)) b!1294234))

(assert (= (and b!1294234 c!213068) b!1294241))

(assert (= (and b!1294234 (not c!213068)) b!1294240))

(assert (= (and b!1294241 res!579893) b!1294239))

(assert (= (and b!1294240 c!213069) b!1294237))

(assert (= (and b!1294240 (not c!213069)) b!1294235))

(assert (= (and b!1294237 res!579891) b!1294238))

(assert (= (and b!1294235 (not res!579894)) b!1294233))

(assert (= (and b!1294233 res!579895) b!1294236))

(assert (= (or b!1294237 b!1294233) bm!88778))

(assert (= (or b!1294238 b!1294236) bm!88777))

(assert (= (or b!1294239 bm!88778) bm!88779))

(declare-fun m!1445263 () Bool)

(assert (=> bm!88777 m!1445263))

(declare-fun m!1445265 () Bool)

(assert (=> b!1294241 m!1445265))

(declare-fun m!1445267 () Bool)

(assert (=> bm!88779 m!1445267))

(assert (=> d!364763 d!365085))

(declare-fun d!365087 () Bool)

(declare-fun lt!425835 () Bool)

(assert (=> d!365087 (= lt!425835 (isEmpty!7687 (list!4837 (_2!7227 lt!425649))))))

(assert (=> d!365087 (= lt!425835 (isEmpty!7690 (c!212845 (_2!7227 lt!425649))))))

(assert (=> d!365087 (= (isEmpty!7686 (_2!7227 lt!425649)) lt!425835)))

(declare-fun bs!328806 () Bool)

(assert (= bs!328806 d!365087))

(declare-fun m!1445269 () Bool)

(assert (=> bs!328806 m!1445269))

(assert (=> bs!328806 m!1445269))

(declare-fun m!1445271 () Bool)

(assert (=> bs!328806 m!1445271))

(declare-fun m!1445273 () Bool)

(assert (=> bs!328806 m!1445273))

(assert (=> b!1293504 d!365087))

(declare-fun d!365089 () Bool)

(assert (=> d!365089 (= (list!4837 lt!425654) (list!4841 (c!212845 lt!425654)))))

(declare-fun bs!328807 () Bool)

(assert (= bs!328807 d!365089))

(declare-fun m!1445275 () Bool)

(assert (=> bs!328807 m!1445275))

(assert (=> d!364787 d!365089))

(declare-fun d!365091 () Bool)

(declare-fun c!213070 () Bool)

(assert (=> d!365091 (= c!213070 ((_ is Nil!12940) lt!425655))))

(declare-fun e!829994 () (InoxSet C!7376))

(assert (=> d!365091 (= (content!1829 lt!425655) e!829994)))

(declare-fun b!1294242 () Bool)

(assert (=> b!1294242 (= e!829994 ((as const (Array C!7376 Bool)) false))))

(declare-fun b!1294243 () Bool)

(assert (=> b!1294243 (= e!829994 ((_ map or) (store ((as const (Array C!7376 Bool)) false) (h!18341 lt!425655) true) (content!1829 (t!117315 lt!425655))))))

(assert (= (and d!365091 c!213070) b!1294242))

(assert (= (and d!365091 (not c!213070)) b!1294243))

(declare-fun m!1445277 () Bool)

(assert (=> b!1294243 m!1445277))

(declare-fun m!1445279 () Bool)

(assert (=> b!1294243 m!1445279))

(assert (=> d!364793 d!365091))

(declare-fun d!365093 () Bool)

(declare-fun c!213071 () Bool)

(assert (=> d!365093 (= c!213071 ((_ is Nil!12940) (list!4837 lt!425587)))))

(declare-fun e!829995 () (InoxSet C!7376))

(assert (=> d!365093 (= (content!1829 (list!4837 lt!425587)) e!829995)))

(declare-fun b!1294244 () Bool)

(assert (=> b!1294244 (= e!829995 ((as const (Array C!7376 Bool)) false))))

(declare-fun b!1294245 () Bool)

(assert (=> b!1294245 (= e!829995 ((_ map or) (store ((as const (Array C!7376 Bool)) false) (h!18341 (list!4837 lt!425587)) true) (content!1829 (t!117315 (list!4837 lt!425587)))))))

(assert (= (and d!365093 c!213071) b!1294244))

(assert (= (and d!365093 (not c!213071)) b!1294245))

(declare-fun m!1445281 () Bool)

(assert (=> b!1294245 m!1445281))

(assert (=> b!1294245 m!1444933))

(assert (=> d!364793 d!365093))

(declare-fun d!365095 () Bool)

(declare-fun c!213072 () Bool)

(assert (=> d!365095 (= c!213072 ((_ is Nil!12940) (Cons!12940 (apply!2845 lt!425590 0) Nil!12940)))))

(declare-fun e!829996 () (InoxSet C!7376))

(assert (=> d!365095 (= (content!1829 (Cons!12940 (apply!2845 lt!425590 0) Nil!12940)) e!829996)))

(declare-fun b!1294246 () Bool)

(assert (=> b!1294246 (= e!829996 ((as const (Array C!7376 Bool)) false))))

(declare-fun b!1294247 () Bool)

(assert (=> b!1294247 (= e!829996 ((_ map or) (store ((as const (Array C!7376 Bool)) false) (h!18341 (Cons!12940 (apply!2845 lt!425590 0) Nil!12940)) true) (content!1829 (t!117315 (Cons!12940 (apply!2845 lt!425590 0) Nil!12940)))))))

(assert (= (and d!365095 c!213072) b!1294246))

(assert (= (and d!365095 (not c!213072)) b!1294247))

(declare-fun m!1445283 () Bool)

(assert (=> b!1294247 m!1445283))

(declare-fun m!1445285 () Bool)

(assert (=> b!1294247 m!1445285))

(assert (=> d!364793 d!365095))

(declare-fun d!365097 () Bool)

(declare-fun res!579896 () Bool)

(declare-fun e!829997 () Bool)

(assert (=> d!365097 (=> res!579896 e!829997)))

(assert (=> d!365097 (= res!579896 (not ((_ is Cons!12942) (t!117317 rules!2550))))))

(assert (=> d!365097 (= (sepAndNonSepRulesDisjointChars!602 rules!2550 (t!117317 rules!2550)) e!829997)))

(declare-fun b!1294248 () Bool)

(declare-fun e!829998 () Bool)

(assert (=> b!1294248 (= e!829997 e!829998)))

(declare-fun res!579897 () Bool)

(assert (=> b!1294248 (=> (not res!579897) (not e!829998))))

(assert (=> b!1294248 (= res!579897 (ruleDisjointCharsFromAllFromOtherType!292 (h!18343 (t!117317 rules!2550)) rules!2550))))

(declare-fun b!1294249 () Bool)

(assert (=> b!1294249 (= e!829998 (sepAndNonSepRulesDisjointChars!602 rules!2550 (t!117317 (t!117317 rules!2550))))))

(assert (= (and d!365097 (not res!579896)) b!1294248))

(assert (= (and b!1294248 res!579897) b!1294249))

(declare-fun m!1445287 () Bool)

(assert (=> b!1294248 m!1445287))

(declare-fun m!1445289 () Bool)

(assert (=> b!1294249 m!1445289))

(assert (=> b!1293501 d!365097))

(declare-fun d!365099 () Bool)

(declare-fun lt!425836 () Int)

(assert (=> d!365099 (>= lt!425836 0)))

(declare-fun e!829999 () Int)

(assert (=> d!365099 (= lt!425836 e!829999)))

(declare-fun c!213073 () Bool)

(assert (=> d!365099 (= c!213073 ((_ is Nil!12940) (originalCharacters!3091 t2!34)))))

(assert (=> d!365099 (= (size!10573 (originalCharacters!3091 t2!34)) lt!425836)))

(declare-fun b!1294250 () Bool)

(assert (=> b!1294250 (= e!829999 0)))

(declare-fun b!1294251 () Bool)

(assert (=> b!1294251 (= e!829999 (+ 1 (size!10573 (t!117315 (originalCharacters!3091 t2!34)))))))

(assert (= (and d!365099 c!213073) b!1294250))

(assert (= (and d!365099 (not c!213073)) b!1294251))

(declare-fun m!1445291 () Bool)

(assert (=> b!1294251 m!1445291))

(assert (=> b!1293494 d!365099))

(declare-fun bs!328808 () Bool)

(declare-fun d!365101 () Bool)

(assert (= bs!328808 (and d!365101 d!364955)))

(declare-fun lambda!50907 () Int)

(assert (=> bs!328808 (= (and (= (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (toChars!3291 (transformation!2229 (rule!3968 t2!34)))) (= (toValue!3432 (transformation!2229 (rule!3968 t1!34))) (toValue!3432 (transformation!2229 (rule!3968 t2!34))))) (= lambda!50907 lambda!50876))))

(declare-fun bs!328809 () Bool)

(assert (= bs!328809 (and d!365101 d!364961)))

(assert (=> bs!328809 (= (and (= (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (toChars!3291 (transformation!2229 (h!18343 rules!2550)))) (= (toValue!3432 (transformation!2229 (rule!3968 t1!34))) (toValue!3432 (transformation!2229 (h!18343 rules!2550))))) (= lambda!50907 lambda!50877))))

(assert (=> d!365101 true))

(assert (=> d!365101 (< (dynLambda!5660 order!7881 (toChars!3291 (transformation!2229 (rule!3968 t1!34)))) (dynLambda!5661 order!7883 lambda!50907))))

(assert (=> d!365101 true))

(assert (=> d!365101 (< (dynLambda!5662 order!7885 (toValue!3432 (transformation!2229 (rule!3968 t1!34)))) (dynLambda!5661 order!7883 lambda!50907))))

(assert (=> d!365101 (= (semiInverseModEq!848 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (toValue!3432 (transformation!2229 (rule!3968 t1!34)))) (Forall!507 lambda!50907))))

(declare-fun bs!328810 () Bool)

(assert (= bs!328810 d!365101))

(declare-fun m!1445293 () Bool)

(assert (=> bs!328810 m!1445293))

(assert (=> d!364783 d!365101))

(declare-fun d!365103 () Bool)

(assert (=> d!365103 (= (list!4837 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))) (list!4841 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))))

(declare-fun bs!328811 () Bool)

(assert (= bs!328811 d!365103))

(declare-fun m!1445295 () Bool)

(assert (=> bs!328811 m!1445295))

(assert (=> b!1293486 d!365103))

(declare-fun d!365105 () Bool)

(assert (=> d!365105 true))

(declare-fun order!7889 () Int)

(declare-fun lambda!50910 () Int)

(declare-fun dynLambda!5665 (Int Int) Int)

(assert (=> d!365105 (< (dynLambda!5662 order!7885 (toValue!3432 (transformation!2229 (rule!3968 t1!34)))) (dynLambda!5665 order!7889 lambda!50910))))

(declare-fun Forall2!409 (Int) Bool)

(assert (=> d!365105 (= (equivClasses!807 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (toValue!3432 (transformation!2229 (rule!3968 t1!34)))) (Forall2!409 lambda!50910))))

(declare-fun bs!328812 () Bool)

(assert (= bs!328812 d!365105))

(declare-fun m!1445297 () Bool)

(assert (=> bs!328812 m!1445297))

(assert (=> b!1293506 d!365105))

(declare-fun d!365107 () Bool)

(declare-fun lostCauseFct!102 (Regex!3543) Bool)

(assert (=> d!365107 (= (lostCause!256 lt!425589) (lostCauseFct!102 lt!425589))))

(declare-fun bs!328813 () Bool)

(assert (= bs!328813 d!365107))

(declare-fun m!1445299 () Bool)

(assert (=> bs!328813 m!1445299))

(assert (=> b!1293523 d!365107))

(declare-fun d!365109 () Bool)

(assert (=> d!365109 (= (isEmpty!7687 (originalCharacters!3091 t1!34)) ((_ is Nil!12940) (originalCharacters!3091 t1!34)))))

(assert (=> d!364765 d!365109))

(declare-fun d!365111 () Bool)

(declare-fun c!213078 () Bool)

(assert (=> d!365111 (= c!213078 ((_ is Empty!4251) (c!212845 lt!425587)))))

(declare-fun e!830006 () List!13006)

(assert (=> d!365111 (= (list!4841 (c!212845 lt!425587)) e!830006)))

(declare-fun b!1294265 () Bool)

(declare-fun e!830007 () List!13006)

(assert (=> b!1294265 (= e!830006 e!830007)))

(declare-fun c!213079 () Bool)

(assert (=> b!1294265 (= c!213079 ((_ is Leaf!6562) (c!212845 lt!425587)))))

(declare-fun b!1294266 () Bool)

(declare-fun list!4845 (IArray!8507) List!13006)

(assert (=> b!1294266 (= e!830007 (list!4845 (xs!6962 (c!212845 lt!425587))))))

(declare-fun b!1294267 () Bool)

(assert (=> b!1294267 (= e!830007 (++!3282 (list!4841 (left!11131 (c!212845 lt!425587))) (list!4841 (right!11461 (c!212845 lt!425587)))))))

(declare-fun b!1294264 () Bool)

(assert (=> b!1294264 (= e!830006 Nil!12940)))

(assert (= (and d!365111 c!213078) b!1294264))

(assert (= (and d!365111 (not c!213078)) b!1294265))

(assert (= (and b!1294265 c!213079) b!1294266))

(assert (= (and b!1294265 (not c!213079)) b!1294267))

(declare-fun m!1445301 () Bool)

(assert (=> b!1294266 m!1445301))

(declare-fun m!1445303 () Bool)

(assert (=> b!1294267 m!1445303))

(declare-fun m!1445305 () Bool)

(assert (=> b!1294267 m!1445305))

(assert (=> b!1294267 m!1445303))

(assert (=> b!1294267 m!1445305))

(declare-fun m!1445307 () Bool)

(assert (=> b!1294267 m!1445307))

(assert (=> d!364795 d!365111))

(declare-fun d!365113 () Bool)

(declare-fun lt!425837 () Int)

(assert (=> d!365113 (= lt!425837 (size!10580 (list!4840 (_1!7227 lt!425641))))))

(assert (=> d!365113 (= lt!425837 (size!10581 (c!212884 (_1!7227 lt!425641))))))

(assert (=> d!365113 (= (size!10574 (_1!7227 lt!425641)) lt!425837)))

(declare-fun bs!328814 () Bool)

(assert (= bs!328814 d!365113))

(assert (=> bs!328814 m!1445029))

(assert (=> bs!328814 m!1445029))

(declare-fun m!1445309 () Bool)

(assert (=> bs!328814 m!1445309))

(declare-fun m!1445311 () Bool)

(assert (=> bs!328814 m!1445311))

(assert (=> d!364733 d!365113))

(declare-fun d!365115 () Bool)

(assert (=> d!365115 (= (list!4840 (_1!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34))))) (list!4844 (c!212884 (_1!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34)))))))))

(declare-fun bs!328815 () Bool)

(assert (= bs!328815 d!365115))

(declare-fun m!1445313 () Bool)

(assert (=> bs!328815 m!1445313))

(assert (=> d!364733 d!365115))

(assert (=> d!364733 d!364947))

(assert (=> d!364733 d!364949))

(assert (=> d!364733 d!364775))

(assert (=> d!364733 d!364899))

(declare-fun d!365117 () Bool)

(assert (=> d!365117 (= (list!4840 (singletonSeq!814 t2!34)) (list!4844 (c!212884 (singletonSeq!814 t2!34))))))

(declare-fun bs!328816 () Bool)

(assert (= bs!328816 d!365117))

(declare-fun m!1445315 () Bool)

(assert (=> bs!328816 m!1445315))

(assert (=> d!364733 d!365117))

(declare-fun d!365119 () Bool)

(declare-fun c!213082 () Bool)

(assert (=> d!365119 (= c!213082 ((_ is Node!4251) (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))))

(declare-fun e!830012 () Bool)

(assert (=> d!365119 (= (inv!17368 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))) e!830012)))

(declare-fun b!1294274 () Bool)

(declare-fun inv!17372 (Conc!4251) Bool)

(assert (=> b!1294274 (= e!830012 (inv!17372 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))))

(declare-fun b!1294275 () Bool)

(declare-fun e!830013 () Bool)

(assert (=> b!1294275 (= e!830012 e!830013)))

(declare-fun res!579902 () Bool)

(assert (=> b!1294275 (= res!579902 (not ((_ is Leaf!6562) (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))))))

(assert (=> b!1294275 (=> res!579902 e!830013)))

(declare-fun b!1294276 () Bool)

(declare-fun inv!17373 (Conc!4251) Bool)

(assert (=> b!1294276 (= e!830013 (inv!17373 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))))

(assert (= (and d!365119 c!213082) b!1294274))

(assert (= (and d!365119 (not c!213082)) b!1294275))

(assert (= (and b!1294275 (not res!579902)) b!1294276))

(declare-fun m!1445317 () Bool)

(assert (=> b!1294274 m!1445317))

(declare-fun m!1445319 () Bool)

(assert (=> b!1294276 m!1445319))

(assert (=> b!1293492 d!365119))

(declare-fun d!365121 () Bool)

(assert (=> d!365121 (= (inv!17369 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))) (isBalanced!1249 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))))

(declare-fun bs!328817 () Bool)

(assert (= bs!328817 d!365121))

(declare-fun m!1445321 () Bool)

(assert (=> bs!328817 m!1445321))

(assert (=> tb!69441 d!365121))

(declare-fun d!365123 () Bool)

(assert (=> d!365123 (= (inv!16 (value!73159 t1!34)) (= (charsToInt!0 (text!16680 (value!73159 t1!34))) (value!73150 (value!73159 t1!34))))))

(declare-fun bs!328818 () Bool)

(assert (= bs!328818 d!365123))

(declare-fun m!1445323 () Bool)

(assert (=> bs!328818 m!1445323))

(assert (=> b!1293510 d!365123))

(declare-fun d!365125 () Bool)

(declare-fun lt!425838 () Bool)

(assert (=> d!365125 (= lt!425838 (isEmpty!7687 (list!4837 (_2!7227 lt!425641))))))

(assert (=> d!365125 (= lt!425838 (isEmpty!7690 (c!212845 (_2!7227 lt!425641))))))

(assert (=> d!365125 (= (isEmpty!7686 (_2!7227 lt!425641)) lt!425838)))

(declare-fun bs!328819 () Bool)

(assert (= bs!328819 d!365125))

(declare-fun m!1445325 () Bool)

(assert (=> bs!328819 m!1445325))

(assert (=> bs!328819 m!1445325))

(declare-fun m!1445327 () Bool)

(assert (=> bs!328819 m!1445327))

(declare-fun m!1445329 () Bool)

(assert (=> bs!328819 m!1445329))

(assert (=> b!1293478 d!365125))

(declare-fun d!365127 () Bool)

(declare-fun lt!425839 () Int)

(assert (=> d!365127 (>= lt!425839 0)))

(declare-fun e!830014 () Int)

(assert (=> d!365127 (= lt!425839 e!830014)))

(declare-fun c!213083 () Bool)

(assert (=> d!365127 (= c!213083 ((_ is Nil!12940) lt!425655))))

(assert (=> d!365127 (= (size!10573 lt!425655) lt!425839)))

(declare-fun b!1294277 () Bool)

(assert (=> b!1294277 (= e!830014 0)))

(declare-fun b!1294278 () Bool)

(assert (=> b!1294278 (= e!830014 (+ 1 (size!10573 (t!117315 lt!425655))))))

(assert (= (and d!365127 c!213083) b!1294277))

(assert (= (and d!365127 (not c!213083)) b!1294278))

(declare-fun m!1445331 () Bool)

(assert (=> b!1294278 m!1445331))

(assert (=> b!1293517 d!365127))

(declare-fun d!365129 () Bool)

(declare-fun lt!425840 () Int)

(assert (=> d!365129 (>= lt!425840 0)))

(declare-fun e!830015 () Int)

(assert (=> d!365129 (= lt!425840 e!830015)))

(declare-fun c!213084 () Bool)

(assert (=> d!365129 (= c!213084 ((_ is Nil!12940) (list!4837 lt!425587)))))

(assert (=> d!365129 (= (size!10573 (list!4837 lt!425587)) lt!425840)))

(declare-fun b!1294279 () Bool)

(assert (=> b!1294279 (= e!830015 0)))

(declare-fun b!1294280 () Bool)

(assert (=> b!1294280 (= e!830015 (+ 1 (size!10573 (t!117315 (list!4837 lt!425587)))))))

(assert (= (and d!365129 c!213084) b!1294279))

(assert (= (and d!365129 (not c!213084)) b!1294280))

(assert (=> b!1294280 m!1444929))

(assert (=> b!1293517 d!365129))

(declare-fun d!365131 () Bool)

(declare-fun lt!425841 () Int)

(assert (=> d!365131 (>= lt!425841 0)))

(declare-fun e!830016 () Int)

(assert (=> d!365131 (= lt!425841 e!830016)))

(declare-fun c!213085 () Bool)

(assert (=> d!365131 (= c!213085 ((_ is Nil!12940) (Cons!12940 (apply!2845 lt!425590 0) Nil!12940)))))

(assert (=> d!365131 (= (size!10573 (Cons!12940 (apply!2845 lt!425590 0) Nil!12940)) lt!425841)))

(declare-fun b!1294281 () Bool)

(assert (=> b!1294281 (= e!830016 0)))

(declare-fun b!1294282 () Bool)

(assert (=> b!1294282 (= e!830016 (+ 1 (size!10573 (t!117315 (Cons!12940 (apply!2845 lt!425590 0) Nil!12940)))))))

(assert (= (and d!365131 c!213085) b!1294281))

(assert (= (and d!365131 (not c!213085)) b!1294282))

(declare-fun m!1445333 () Bool)

(assert (=> b!1294282 m!1445333))

(assert (=> b!1293517 d!365131))

(declare-fun d!365133 () Bool)

(declare-fun lt!425842 () Int)

(assert (=> d!365133 (>= lt!425842 0)))

(declare-fun e!830017 () Int)

(assert (=> d!365133 (= lt!425842 e!830017)))

(declare-fun c!213086 () Bool)

(assert (=> d!365133 (= c!213086 ((_ is Nil!12940) (list!4837 lt!425590)))))

(assert (=> d!365133 (= (size!10573 (list!4837 lt!425590)) lt!425842)))

(declare-fun b!1294283 () Bool)

(assert (=> b!1294283 (= e!830017 0)))

(declare-fun b!1294284 () Bool)

(assert (=> b!1294284 (= e!830017 (+ 1 (size!10573 (t!117315 (list!4837 lt!425590)))))))

(assert (= (and d!365133 c!213086) b!1294283))

(assert (= (and d!365133 (not c!213086)) b!1294284))

(declare-fun m!1445335 () Bool)

(assert (=> b!1294284 m!1445335))

(assert (=> d!364785 d!365133))

(assert (=> d!364785 d!365071))

(declare-fun d!365135 () Bool)

(declare-fun lt!425845 () Int)

(assert (=> d!365135 (= lt!425845 (size!10573 (list!4841 (c!212845 lt!425590))))))

(assert (=> d!365135 (= lt!425845 (ite ((_ is Empty!4251) (c!212845 lt!425590)) 0 (ite ((_ is Leaf!6562) (c!212845 lt!425590)) (csize!8733 (c!212845 lt!425590)) (csize!8732 (c!212845 lt!425590)))))))

(assert (=> d!365135 (= (size!10575 (c!212845 lt!425590)) lt!425845)))

(declare-fun bs!328820 () Bool)

(assert (= bs!328820 d!365135))

(assert (=> bs!328820 m!1445235))

(assert (=> bs!328820 m!1445235))

(declare-fun m!1445337 () Bool)

(assert (=> bs!328820 m!1445337))

(assert (=> d!364785 d!365135))

(declare-fun bs!328821 () Bool)

(declare-fun d!365137 () Bool)

(assert (= bs!328821 (and d!365137 d!365105)))

(declare-fun lambda!50911 () Int)

(assert (=> bs!328821 (= (= (toValue!3432 (transformation!2229 (h!18343 rules!2550))) (toValue!3432 (transformation!2229 (rule!3968 t1!34)))) (= lambda!50911 lambda!50910))))

(assert (=> d!365137 true))

(assert (=> d!365137 (< (dynLambda!5662 order!7885 (toValue!3432 (transformation!2229 (h!18343 rules!2550)))) (dynLambda!5665 order!7889 lambda!50911))))

(assert (=> d!365137 (= (equivClasses!807 (toChars!3291 (transformation!2229 (h!18343 rules!2550))) (toValue!3432 (transformation!2229 (h!18343 rules!2550)))) (Forall2!409 lambda!50911))))

(declare-fun bs!328822 () Bool)

(assert (= bs!328822 d!365137))

(declare-fun m!1445339 () Bool)

(assert (=> bs!328822 m!1445339))

(assert (=> b!1293502 d!365137))

(declare-fun d!365139 () Bool)

(assert (=> d!365139 (= (inv!17 (value!73159 t1!34)) (= (charsToBigInt!1 (text!16681 (value!73159 t1!34))) (value!73151 (value!73159 t1!34))))))

(declare-fun bs!328823 () Bool)

(assert (= bs!328823 d!365139))

(declare-fun m!1445341 () Bool)

(assert (=> bs!328823 m!1445341))

(assert (=> b!1293512 d!365139))

(declare-fun d!365141 () Bool)

(declare-fun lt!425846 () Int)

(assert (=> d!365141 (>= lt!425846 0)))

(declare-fun e!830018 () Int)

(assert (=> d!365141 (= lt!425846 e!830018)))

(declare-fun c!213087 () Bool)

(assert (=> d!365141 (= c!213087 ((_ is Nil!12940) lt!425613))))

(assert (=> d!365141 (= (size!10573 lt!425613) lt!425846)))

(declare-fun b!1294285 () Bool)

(assert (=> b!1294285 (= e!830018 0)))

(declare-fun b!1294286 () Bool)

(assert (=> b!1294286 (= e!830018 (+ 1 (size!10573 (t!117315 lt!425613))))))

(assert (= (and d!365141 c!213087) b!1294285))

(assert (= (and d!365141 (not c!213087)) b!1294286))

(declare-fun m!1445343 () Bool)

(assert (=> b!1294286 m!1445343))

(assert (=> b!1293348 d!365141))

(assert (=> b!1293348 d!364889))

(declare-fun d!365143 () Bool)

(declare-fun lt!425847 () Int)

(assert (=> d!365143 (>= lt!425847 0)))

(declare-fun e!830019 () Int)

(assert (=> d!365143 (= lt!425847 e!830019)))

(declare-fun c!213088 () Bool)

(assert (=> d!365143 (= c!213088 ((_ is Nil!12940) (getSuffix!399 lt!425588 lt!425591)))))

(assert (=> d!365143 (= (size!10573 (getSuffix!399 lt!425588 lt!425591)) lt!425847)))

(declare-fun b!1294287 () Bool)

(assert (=> b!1294287 (= e!830019 0)))

(declare-fun b!1294288 () Bool)

(assert (=> b!1294288 (= e!830019 (+ 1 (size!10573 (t!117315 (getSuffix!399 lt!425588 lt!425591)))))))

(assert (= (and d!365143 c!213088) b!1294287))

(assert (= (and d!365143 (not c!213088)) b!1294288))

(declare-fun m!1445345 () Bool)

(assert (=> b!1294288 m!1445345))

(assert (=> b!1293348 d!365143))

(declare-fun b!1294298 () Bool)

(declare-fun res!579912 () Bool)

(declare-fun e!830022 () Bool)

(assert (=> b!1294298 (=> (not res!579912) (not e!830022))))

(declare-fun height!609 (Conc!4251) Int)

(declare-fun ++!3286 (Conc!4251 Conc!4251) Conc!4251)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1294298 (= res!579912 (<= (height!609 (++!3286 (c!212845 (charsOf!1201 t1!34)) (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))) (+ (max!0 (height!609 (c!212845 (charsOf!1201 t1!34))) (height!609 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))) 1)))))

(declare-fun d!365145 () Bool)

(assert (=> d!365145 e!830022))

(declare-fun res!579913 () Bool)

(assert (=> d!365145 (=> (not res!579913) (not e!830022))))

(declare-fun appendAssocInst!249 (Conc!4251 Conc!4251) Bool)

(assert (=> d!365145 (= res!579913 (appendAssocInst!249 (c!212845 (charsOf!1201 t1!34)) (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))))

(declare-fun lt!425850 () BalanceConc!8442)

(assert (=> d!365145 (= lt!425850 (BalanceConc!8443 (++!3286 (c!212845 (charsOf!1201 t1!34)) (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))))))

(assert (=> d!365145 (= (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))) lt!425850)))

(declare-fun b!1294297 () Bool)

(declare-fun res!579911 () Bool)

(assert (=> b!1294297 (=> (not res!579911) (not e!830022))))

(assert (=> b!1294297 (= res!579911 (isBalanced!1249 (++!3286 (c!212845 (charsOf!1201 t1!34)) (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))))))

(declare-fun b!1294299 () Bool)

(declare-fun res!579914 () Bool)

(assert (=> b!1294299 (=> (not res!579914) (not e!830022))))

(assert (=> b!1294299 (= res!579914 (>= (height!609 (++!3286 (c!212845 (charsOf!1201 t1!34)) (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))) (max!0 (height!609 (c!212845 (charsOf!1201 t1!34))) (height!609 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))))))

(declare-fun b!1294300 () Bool)

(assert (=> b!1294300 (= e!830022 (= (list!4837 lt!425850) (++!3282 (list!4837 (charsOf!1201 t1!34)) (list!4837 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))))))

(assert (= (and d!365145 res!579913) b!1294297))

(assert (= (and b!1294297 res!579911) b!1294298))

(assert (= (and b!1294298 res!579912) b!1294299))

(assert (= (and b!1294299 res!579914) b!1294300))

(declare-fun m!1445347 () Bool)

(assert (=> b!1294297 m!1445347))

(assert (=> b!1294297 m!1445347))

(declare-fun m!1445349 () Bool)

(assert (=> b!1294297 m!1445349))

(declare-fun m!1445351 () Bool)

(assert (=> b!1294300 m!1445351))

(assert (=> b!1294300 m!1444125))

(declare-fun m!1445353 () Bool)

(assert (=> b!1294300 m!1445353))

(assert (=> b!1294300 m!1444291))

(declare-fun m!1445355 () Bool)

(assert (=> b!1294300 m!1445355))

(assert (=> b!1294300 m!1445353))

(assert (=> b!1294300 m!1445355))

(declare-fun m!1445357 () Bool)

(assert (=> b!1294300 m!1445357))

(declare-fun m!1445359 () Bool)

(assert (=> b!1294299 m!1445359))

(declare-fun m!1445361 () Bool)

(assert (=> b!1294299 m!1445361))

(declare-fun m!1445363 () Bool)

(assert (=> b!1294299 m!1445363))

(assert (=> b!1294299 m!1445361))

(assert (=> b!1294299 m!1445347))

(declare-fun m!1445365 () Bool)

(assert (=> b!1294299 m!1445365))

(assert (=> b!1294299 m!1445359))

(assert (=> b!1294299 m!1445347))

(assert (=> b!1294298 m!1445359))

(assert (=> b!1294298 m!1445361))

(assert (=> b!1294298 m!1445363))

(assert (=> b!1294298 m!1445361))

(assert (=> b!1294298 m!1445347))

(assert (=> b!1294298 m!1445365))

(assert (=> b!1294298 m!1445359))

(assert (=> b!1294298 m!1445347))

(declare-fun m!1445367 () Bool)

(assert (=> d!365145 m!1445367))

(assert (=> d!365145 m!1445347))

(assert (=> d!364723 d!365145))

(declare-fun d!365147 () Bool)

(declare-fun lt!425877 () Bool)

(assert (=> d!365147 (= lt!425877 (prefixMatch!56 (rulesRegex!114 thiss!19762 rules!2550) (list!4837 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))))))

(declare-datatypes ((Context!1142 0))(
  ( (Context!1143 (exprs!1071 List!13014)) )
))
(declare-fun prefixMatchZipperSequence!148 ((InoxSet Context!1142) BalanceConc!8442 Int) Bool)

(declare-fun focus!62 (Regex!3543) (InoxSet Context!1142))

(assert (=> d!365147 (= lt!425877 (prefixMatchZipperSequence!148 (focus!62 (rulesRegex!114 thiss!19762 rules!2550)) (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))) 0))))

(declare-fun lt!425875 () Unit!19084)

(declare-fun lt!425879 () Unit!19084)

(assert (=> d!365147 (= lt!425875 lt!425879)))

(declare-fun lt!425874 () List!13006)

(declare-fun lt!425876 () (InoxSet Context!1142))

(declare-fun prefixMatchZipper!42 ((InoxSet Context!1142) List!13006) Bool)

(assert (=> d!365147 (= (prefixMatch!56 (rulesRegex!114 thiss!19762 rules!2550) lt!425874) (prefixMatchZipper!42 lt!425876 lt!425874))))

(declare-datatypes ((List!13016 0))(
  ( (Nil!12950) (Cons!12950 (h!18351 Context!1142) (t!117377 List!13016)) )
))
(declare-fun lt!425872 () List!13016)

(declare-fun prefixMatchZipperRegexEquiv!42 ((InoxSet Context!1142) List!13016 Regex!3543 List!13006) Unit!19084)

(assert (=> d!365147 (= lt!425879 (prefixMatchZipperRegexEquiv!42 lt!425876 lt!425872 (rulesRegex!114 thiss!19762 rules!2550) lt!425874))))

(assert (=> d!365147 (= lt!425874 (list!4837 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))))

(declare-fun toList!726 ((InoxSet Context!1142)) List!13016)

(assert (=> d!365147 (= lt!425872 (toList!726 (focus!62 (rulesRegex!114 thiss!19762 rules!2550))))))

(assert (=> d!365147 (= lt!425876 (focus!62 (rulesRegex!114 thiss!19762 rules!2550)))))

(declare-fun lt!425873 () Unit!19084)

(declare-fun lt!425880 () Unit!19084)

(assert (=> d!365147 (= lt!425873 lt!425880)))

(declare-fun lt!425878 () (InoxSet Context!1142))

(declare-fun lt!425871 () Int)

(declare-fun dropList!352 (BalanceConc!8442 Int) List!13006)

(assert (=> d!365147 (= (prefixMatchZipper!42 lt!425878 (dropList!352 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))) lt!425871)) (prefixMatchZipperSequence!148 lt!425878 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))) lt!425871))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!42 ((InoxSet Context!1142) BalanceConc!8442 Int) Unit!19084)

(assert (=> d!365147 (= lt!425880 (lemmaprefixMatchZipperSequenceEquivalent!42 lt!425878 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))) lt!425871))))

(assert (=> d!365147 (= lt!425871 0)))

(assert (=> d!365147 (= lt!425878 (focus!62 (rulesRegex!114 thiss!19762 rules!2550)))))

(assert (=> d!365147 (validRegex!1529 (rulesRegex!114 thiss!19762 rules!2550))))

(assert (=> d!365147 (= (prefixMatchZipperSequence!146 (rulesRegex!114 thiss!19762 rules!2550) (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))) lt!425877)))

(declare-fun bs!328824 () Bool)

(assert (= bs!328824 d!365147))

(assert (=> bs!328824 m!1444131))

(declare-fun m!1445369 () Bool)

(assert (=> bs!328824 m!1445369))

(declare-fun m!1445371 () Bool)

(assert (=> bs!328824 m!1445371))

(declare-fun m!1445373 () Bool)

(assert (=> bs!328824 m!1445373))

(declare-fun m!1445375 () Bool)

(assert (=> bs!328824 m!1445375))

(declare-fun m!1445377 () Bool)

(assert (=> bs!328824 m!1445377))

(assert (=> bs!328824 m!1444131))

(assert (=> bs!328824 m!1445375))

(assert (=> bs!328824 m!1444293))

(declare-fun m!1445379 () Bool)

(assert (=> bs!328824 m!1445379))

(assert (=> bs!328824 m!1445375))

(assert (=> bs!328824 m!1444293))

(declare-fun m!1445381 () Bool)

(assert (=> bs!328824 m!1445381))

(assert (=> bs!328824 m!1444131))

(declare-fun m!1445383 () Bool)

(assert (=> bs!328824 m!1445383))

(declare-fun m!1445385 () Bool)

(assert (=> bs!328824 m!1445385))

(assert (=> bs!328824 m!1444293))

(assert (=> bs!328824 m!1445371))

(assert (=> bs!328824 m!1444293))

(assert (=> bs!328824 m!1445383))

(assert (=> bs!328824 m!1444293))

(declare-fun m!1445387 () Bool)

(assert (=> bs!328824 m!1445387))

(assert (=> bs!328824 m!1444131))

(declare-fun m!1445389 () Bool)

(assert (=> bs!328824 m!1445389))

(declare-fun m!1445391 () Bool)

(assert (=> bs!328824 m!1445391))

(assert (=> bs!328824 m!1444131))

(declare-fun m!1445393 () Bool)

(assert (=> bs!328824 m!1445393))

(assert (=> d!364723 d!365147))

(declare-fun d!365149 () Bool)

(declare-fun e!830025 () Bool)

(assert (=> d!365149 e!830025))

(declare-fun res!579917 () Bool)

(assert (=> d!365149 (=> (not res!579917) (not e!830025))))

(declare-fun lt!425883 () BalanceConc!8442)

(assert (=> d!365149 (= res!579917 (= (list!4837 lt!425883) (Cons!12940 (apply!2845 (charsOf!1201 t2!34) 0) Nil!12940)))))

(declare-fun singleton!358 (C!7376) BalanceConc!8442)

(assert (=> d!365149 (= lt!425883 (singleton!358 (apply!2845 (charsOf!1201 t2!34) 0)))))

(assert (=> d!365149 (= (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)) lt!425883)))

(declare-fun b!1294303 () Bool)

(assert (=> b!1294303 (= e!830025 (isBalanced!1249 (c!212845 lt!425883)))))

(assert (= (and d!365149 res!579917) b!1294303))

(declare-fun m!1445395 () Bool)

(assert (=> d!365149 m!1445395))

(assert (=> d!365149 m!1444297))

(declare-fun m!1445397 () Bool)

(assert (=> d!365149 m!1445397))

(declare-fun m!1445399 () Bool)

(assert (=> b!1294303 m!1445399))

(assert (=> d!364723 d!365149))

(assert (=> d!364723 d!364803))

(declare-fun d!365151 () Bool)

(declare-fun lt!425884 () C!7376)

(assert (=> d!365151 (= lt!425884 (apply!2850 (list!4837 (charsOf!1201 t2!34)) 0))))

(assert (=> d!365151 (= lt!425884 (apply!2851 (c!212845 (charsOf!1201 t2!34)) 0))))

(declare-fun e!830026 () Bool)

(assert (=> d!365151 e!830026))

(declare-fun res!579918 () Bool)

(assert (=> d!365151 (=> (not res!579918) (not e!830026))))

(assert (=> d!365151 (= res!579918 (<= 0 0))))

(assert (=> d!365151 (= (apply!2845 (charsOf!1201 t2!34) 0) lt!425884)))

(declare-fun b!1294304 () Bool)

(assert (=> b!1294304 (= e!830026 (< 0 (size!10568 (charsOf!1201 t2!34))))))

(assert (= (and d!365151 res!579918) b!1294304))

(assert (=> d!365151 m!1444157))

(declare-fun m!1445401 () Bool)

(assert (=> d!365151 m!1445401))

(assert (=> d!365151 m!1445401))

(declare-fun m!1445403 () Bool)

(assert (=> d!365151 m!1445403))

(declare-fun m!1445405 () Bool)

(assert (=> d!365151 m!1445405))

(assert (=> b!1294304 m!1444157))

(declare-fun m!1445407 () Bool)

(assert (=> b!1294304 m!1445407))

(assert (=> d!364723 d!365151))

(assert (=> d!364723 d!364799))

(assert (=> d!364723 d!364787))

(declare-fun d!365153 () Bool)

(declare-fun c!213092 () Bool)

(assert (=> d!365153 (= c!213092 ((_ is Node!4251) (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))))

(declare-fun e!830027 () Bool)

(assert (=> d!365153 (= (inv!17368 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))) e!830027)))

(declare-fun b!1294305 () Bool)

(assert (=> b!1294305 (= e!830027 (inv!17372 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))))

(declare-fun b!1294306 () Bool)

(declare-fun e!830028 () Bool)

(assert (=> b!1294306 (= e!830027 e!830028)))

(declare-fun res!579919 () Bool)

(assert (=> b!1294306 (= res!579919 (not ((_ is Leaf!6562) (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))))))

(assert (=> b!1294306 (=> res!579919 e!830028)))

(declare-fun b!1294307 () Bool)

(assert (=> b!1294307 (= e!830028 (inv!17373 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))))

(assert (= (and d!365153 c!213092) b!1294305))

(assert (= (and d!365153 (not c!213092)) b!1294306))

(assert (= (and b!1294306 (not res!579919)) b!1294307))

(declare-fun m!1445409 () Bool)

(assert (=> b!1294305 m!1445409))

(declare-fun m!1445411 () Bool)

(assert (=> b!1294307 m!1445411))

(assert (=> b!1293495 d!365153))

(declare-fun b!1294316 () Bool)

(declare-fun e!830036 () Bool)

(declare-fun e!830035 () Bool)

(assert (=> b!1294316 (= e!830036 e!830035)))

(declare-fun res!579930 () Bool)

(assert (=> b!1294316 (=> (not res!579930) (not e!830035))))

(assert (=> b!1294316 (= res!579930 (not ((_ is Nil!12940) lt!425619)))))

(declare-fun b!1294317 () Bool)

(declare-fun res!579931 () Bool)

(assert (=> b!1294317 (=> (not res!579931) (not e!830035))))

(assert (=> b!1294317 (= res!579931 (= (head!2220 lt!425591) (head!2220 lt!425619)))))

(declare-fun b!1294319 () Bool)

(declare-fun e!830037 () Bool)

(assert (=> b!1294319 (= e!830037 (>= (size!10573 lt!425619) (size!10573 lt!425591)))))

(declare-fun d!365155 () Bool)

(assert (=> d!365155 e!830037))

(declare-fun res!579928 () Bool)

(assert (=> d!365155 (=> res!579928 e!830037)))

(declare-fun lt!425887 () Bool)

(assert (=> d!365155 (= res!579928 (not lt!425887))))

(assert (=> d!365155 (= lt!425887 e!830036)))

(declare-fun res!579929 () Bool)

(assert (=> d!365155 (=> res!579929 e!830036)))

(assert (=> d!365155 (= res!579929 ((_ is Nil!12940) lt!425591))))

(assert (=> d!365155 (= (isPrefix!1054 lt!425591 lt!425619) lt!425887)))

(declare-fun b!1294318 () Bool)

(assert (=> b!1294318 (= e!830035 (isPrefix!1054 (tail!1848 lt!425591) (tail!1848 lt!425619)))))

(assert (= (and d!365155 (not res!579929)) b!1294316))

(assert (= (and b!1294316 res!579930) b!1294317))

(assert (= (and b!1294317 res!579931) b!1294318))

(assert (= (and d!365155 (not res!579928)) b!1294319))

(assert (=> b!1294317 m!1444527))

(assert (=> b!1294317 m!1445069))

(declare-fun m!1445413 () Bool)

(assert (=> b!1294319 m!1445413))

(assert (=> b!1294319 m!1444249))

(assert (=> b!1294318 m!1444531))

(assert (=> b!1294318 m!1445073))

(assert (=> b!1294318 m!1444531))

(assert (=> b!1294318 m!1445073))

(declare-fun m!1445415 () Bool)

(assert (=> b!1294318 m!1445415))

(assert (=> b!1293567 d!365155))

(declare-fun d!365157 () Bool)

(assert (=> d!365157 (= (isEmpty!7687 lt!425591) ((_ is Nil!12940) lt!425591))))

(assert (=> d!364797 d!365157))

(declare-fun d!365159 () Bool)

(assert (=> d!365159 (= (inv!17361 (tag!2491 (h!18343 (t!117317 rules!2550)))) (= (mod (str.len (value!73158 (tag!2491 (h!18343 (t!117317 rules!2550))))) 2) 0))))

(assert (=> b!1293561 d!365159))

(declare-fun d!365161 () Bool)

(declare-fun res!579932 () Bool)

(declare-fun e!830038 () Bool)

(assert (=> d!365161 (=> (not res!579932) (not e!830038))))

(assert (=> d!365161 (= res!579932 (semiInverseModEq!848 (toChars!3291 (transformation!2229 (h!18343 (t!117317 rules!2550)))) (toValue!3432 (transformation!2229 (h!18343 (t!117317 rules!2550))))))))

(assert (=> d!365161 (= (inv!17364 (transformation!2229 (h!18343 (t!117317 rules!2550)))) e!830038)))

(declare-fun b!1294320 () Bool)

(assert (=> b!1294320 (= e!830038 (equivClasses!807 (toChars!3291 (transformation!2229 (h!18343 (t!117317 rules!2550)))) (toValue!3432 (transformation!2229 (h!18343 (t!117317 rules!2550))))))))

(assert (= (and d!365161 res!579932) b!1294320))

(declare-fun m!1445417 () Bool)

(assert (=> d!365161 m!1445417))

(declare-fun m!1445419 () Bool)

(assert (=> b!1294320 m!1445419))

(assert (=> b!1293561 d!365161))

(declare-fun d!365163 () Bool)

(assert (=> d!365163 (= (isEmpty!7687 (originalCharacters!3091 t2!34)) ((_ is Nil!12940) (originalCharacters!3091 t2!34)))))

(assert (=> d!364767 d!365163))

(declare-fun bs!328825 () Bool)

(declare-fun d!365165 () Bool)

(assert (= bs!328825 (and d!365165 d!365105)))

(declare-fun lambda!50912 () Int)

(assert (=> bs!328825 (= (= (toValue!3432 (transformation!2229 (rule!3968 t2!34))) (toValue!3432 (transformation!2229 (rule!3968 t1!34)))) (= lambda!50912 lambda!50910))))

(declare-fun bs!328826 () Bool)

(assert (= bs!328826 (and d!365165 d!365137)))

(assert (=> bs!328826 (= (= (toValue!3432 (transformation!2229 (rule!3968 t2!34))) (toValue!3432 (transformation!2229 (h!18343 rules!2550)))) (= lambda!50912 lambda!50911))))

(assert (=> d!365165 true))

(assert (=> d!365165 (< (dynLambda!5662 order!7885 (toValue!3432 (transformation!2229 (rule!3968 t2!34)))) (dynLambda!5665 order!7889 lambda!50912))))

(assert (=> d!365165 (= (equivClasses!807 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (toValue!3432 (transformation!2229 (rule!3968 t2!34)))) (Forall2!409 lambda!50912))))

(declare-fun bs!328827 () Bool)

(assert (= bs!328827 d!365165))

(declare-fun m!1445421 () Bool)

(assert (=> bs!328827 m!1445421))

(assert (=> b!1293395 d!365165))

(declare-fun d!365167 () Bool)

(assert (=> d!365167 (= (list!4837 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))) (list!4841 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))))

(declare-fun bs!328828 () Bool)

(assert (= bs!328828 d!365167))

(declare-fun m!1445423 () Bool)

(assert (=> bs!328828 m!1445423))

(assert (=> b!1293493 d!365167))

(declare-fun d!365169 () Bool)

(assert (=> d!365169 true))

(declare-fun lt!425890 () Bool)

(assert (=> d!365169 (= lt!425890 (rulesValidInductive!705 thiss!19762 rules!2550))))

(declare-fun lambda!50915 () Int)

(declare-fun forall!3256 (List!13008 Int) Bool)

(assert (=> d!365169 (= lt!425890 (forall!3256 rules!2550 lambda!50915))))

(assert (=> d!365169 (= (rulesValid!817 thiss!19762 rules!2550) lt!425890)))

(declare-fun bs!328829 () Bool)

(assert (= bs!328829 d!365169))

(assert (=> bs!328829 m!1445105))

(declare-fun m!1445425 () Bool)

(assert (=> bs!328829 m!1445425))

(assert (=> d!364789 d!365169))

(declare-fun d!365171 () Bool)

(declare-fun lt!425891 () Token!4120)

(assert (=> d!365171 (= lt!425891 (apply!2855 (list!4840 (_1!7227 lt!425649)) 0))))

(assert (=> d!365171 (= lt!425891 (apply!2856 (c!212884 (_1!7227 lt!425649)) 0))))

(declare-fun e!830039 () Bool)

(assert (=> d!365171 e!830039))

(declare-fun res!579933 () Bool)

(assert (=> d!365171 (=> (not res!579933) (not e!830039))))

(assert (=> d!365171 (= res!579933 (<= 0 0))))

(assert (=> d!365171 (= (apply!2849 (_1!7227 lt!425649) 0) lt!425891)))

(declare-fun b!1294323 () Bool)

(assert (=> b!1294323 (= e!830039 (< 0 (size!10574 (_1!7227 lt!425649))))))

(assert (= (and d!365171 res!579933) b!1294323))

(assert (=> d!365171 m!1445219))

(assert (=> d!365171 m!1445219))

(declare-fun m!1445427 () Bool)

(assert (=> d!365171 m!1445427))

(declare-fun m!1445429 () Bool)

(assert (=> d!365171 m!1445429))

(assert (=> b!1294323 m!1444479))

(assert (=> b!1293503 d!365171))

(assert (=> d!364777 d!365129))

(assert (=> d!364777 d!364795))

(declare-fun d!365173 () Bool)

(declare-fun lt!425892 () Int)

(assert (=> d!365173 (= lt!425892 (size!10573 (list!4841 (c!212845 lt!425587))))))

(assert (=> d!365173 (= lt!425892 (ite ((_ is Empty!4251) (c!212845 lt!425587)) 0 (ite ((_ is Leaf!6562) (c!212845 lt!425587)) (csize!8733 (c!212845 lt!425587)) (csize!8732 (c!212845 lt!425587)))))))

(assert (=> d!365173 (= (size!10575 (c!212845 lt!425587)) lt!425892)))

(declare-fun bs!328830 () Bool)

(assert (= bs!328830 d!365173))

(assert (=> bs!328830 m!1444521))

(assert (=> bs!328830 m!1444521))

(declare-fun m!1445431 () Bool)

(assert (=> bs!328830 m!1445431))

(assert (=> d!364777 d!365173))

(declare-fun d!365175 () Bool)

(assert (=> d!365175 (= (list!4837 lt!425656) (list!4841 (c!212845 lt!425656)))))

(declare-fun bs!328831 () Bool)

(assert (= bs!328831 d!365175))

(declare-fun m!1445433 () Bool)

(assert (=> bs!328831 m!1445433))

(assert (=> d!364799 d!365175))

(declare-fun d!365177 () Bool)

(declare-fun c!213095 () Bool)

(assert (=> d!365177 (= c!213095 (and ((_ is Cons!12942) rules!2550) (not (= (isSeparator!2229 (h!18343 rules!2550)) (isSeparator!2229 (h!18343 rules!2550))))))))

(declare-fun e!830048 () Bool)

(assert (=> d!365177 (= (ruleDisjointCharsFromAllFromOtherType!292 (h!18343 rules!2550) rules!2550) e!830048)))

(declare-fun b!1294332 () Bool)

(declare-fun e!830047 () Bool)

(assert (=> b!1294332 (= e!830048 e!830047)))

(declare-fun res!579939 () Bool)

(assert (=> b!1294332 (= res!579939 (not ((_ is Cons!12942) rules!2550)))))

(assert (=> b!1294332 (=> res!579939 e!830047)))

(declare-fun bm!88782 () Bool)

(declare-fun call!88787 () Bool)

(assert (=> bm!88782 (= call!88787 (ruleDisjointCharsFromAllFromOtherType!292 (h!18343 rules!2550) (t!117317 rules!2550)))))

(declare-fun b!1294333 () Bool)

(assert (=> b!1294333 (= e!830047 call!88787)))

(declare-fun b!1294334 () Bool)

(declare-fun e!830046 () Bool)

(assert (=> b!1294334 (= e!830048 e!830046)))

(declare-fun res!579938 () Bool)

(declare-fun rulesUseDisjointChars!150 (Rule!4258 Rule!4258) Bool)

(assert (=> b!1294334 (= res!579938 (rulesUseDisjointChars!150 (h!18343 rules!2550) (h!18343 rules!2550)))))

(assert (=> b!1294334 (=> (not res!579938) (not e!830046))))

(declare-fun b!1294335 () Bool)

(assert (=> b!1294335 (= e!830046 call!88787)))

(assert (= (and d!365177 c!213095) b!1294334))

(assert (= (and d!365177 (not c!213095)) b!1294332))

(assert (= (and b!1294334 res!579938) b!1294335))

(assert (= (and b!1294332 (not res!579939)) b!1294333))

(assert (= (or b!1294335 b!1294333) bm!88782))

(declare-fun m!1445435 () Bool)

(assert (=> bm!88782 m!1445435))

(declare-fun m!1445437 () Bool)

(assert (=> b!1294334 m!1445437))

(assert (=> b!1293500 d!365177))

(declare-fun d!365179 () Bool)

(declare-fun lt!425893 () Int)

(assert (=> d!365179 (>= lt!425893 0)))

(declare-fun e!830049 () Int)

(assert (=> d!365179 (= lt!425893 e!830049)))

(declare-fun c!213096 () Bool)

(assert (=> d!365179 (= c!213096 ((_ is Nil!12940) (originalCharacters!3091 t1!34)))))

(assert (=> d!365179 (= (size!10573 (originalCharacters!3091 t1!34)) lt!425893)))

(declare-fun b!1294336 () Bool)

(assert (=> b!1294336 (= e!830049 0)))

(declare-fun b!1294337 () Bool)

(assert (=> b!1294337 (= e!830049 (+ 1 (size!10573 (t!117315 (originalCharacters!3091 t1!34)))))))

(assert (= (and d!365179 c!213096) b!1294336))

(assert (= (and d!365179 (not c!213096)) b!1294337))

(declare-fun m!1445439 () Bool)

(assert (=> b!1294337 m!1445439))

(assert (=> b!1293487 d!365179))

(declare-fun lt!425894 () Bool)

(declare-fun d!365181 () Bool)

(assert (=> d!365181 (= lt!425894 (isEmpty!7687 (list!4837 (_2!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34)))))))))

(assert (=> d!365181 (= lt!425894 (isEmpty!7690 (c!212845 (_2!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34)))))))))

(assert (=> d!365181 (= (isEmpty!7686 (_2!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34))))) lt!425894)))

(declare-fun bs!328832 () Bool)

(assert (= bs!328832 d!365181))

(declare-fun m!1445441 () Bool)

(assert (=> bs!328832 m!1445441))

(assert (=> bs!328832 m!1445441))

(declare-fun m!1445443 () Bool)

(assert (=> bs!328832 m!1445443))

(declare-fun m!1445445 () Bool)

(assert (=> bs!328832 m!1445445))

(assert (=> b!1293505 d!365181))

(assert (=> b!1293505 d!365057))

(assert (=> b!1293505 d!365059))

(assert (=> b!1293505 d!365061))

(declare-fun b!1294341 () Bool)

(declare-fun e!830050 () Bool)

(declare-fun tp!377294 () Bool)

(declare-fun tp!377297 () Bool)

(assert (=> b!1294341 (= e!830050 (and tp!377294 tp!377297))))

(declare-fun b!1294338 () Bool)

(assert (=> b!1294338 (= e!830050 tp_is_empty!6579)))

(assert (=> b!1293549 (= tp!377169 e!830050)))

(declare-fun b!1294340 () Bool)

(declare-fun tp!377296 () Bool)

(assert (=> b!1294340 (= e!830050 tp!377296)))

(declare-fun b!1294339 () Bool)

(declare-fun tp!377295 () Bool)

(declare-fun tp!377293 () Bool)

(assert (=> b!1294339 (= e!830050 (and tp!377295 tp!377293))))

(assert (= (and b!1293549 ((_ is ElementMatch!3543) (reg!3872 (regex!2229 (rule!3968 t2!34))))) b!1294338))

(assert (= (and b!1293549 ((_ is Concat!5863) (reg!3872 (regex!2229 (rule!3968 t2!34))))) b!1294339))

(assert (= (and b!1293549 ((_ is Star!3543) (reg!3872 (regex!2229 (rule!3968 t2!34))))) b!1294340))

(assert (= (and b!1293549 ((_ is Union!3543) (reg!3872 (regex!2229 (rule!3968 t2!34))))) b!1294341))

(declare-fun b!1294345 () Bool)

(declare-fun e!830051 () Bool)

(declare-fun tp!377299 () Bool)

(declare-fun tp!377302 () Bool)

(assert (=> b!1294345 (= e!830051 (and tp!377299 tp!377302))))

(declare-fun b!1294342 () Bool)

(assert (=> b!1294342 (= e!830051 tp_is_empty!6579)))

(assert (=> b!1293561 (= tp!377180 e!830051)))

(declare-fun b!1294344 () Bool)

(declare-fun tp!377301 () Bool)

(assert (=> b!1294344 (= e!830051 tp!377301)))

(declare-fun b!1294343 () Bool)

(declare-fun tp!377300 () Bool)

(declare-fun tp!377298 () Bool)

(assert (=> b!1294343 (= e!830051 (and tp!377300 tp!377298))))

(assert (= (and b!1293561 ((_ is ElementMatch!3543) (regex!2229 (h!18343 (t!117317 rules!2550))))) b!1294342))

(assert (= (and b!1293561 ((_ is Concat!5863) (regex!2229 (h!18343 (t!117317 rules!2550))))) b!1294343))

(assert (= (and b!1293561 ((_ is Star!3543) (regex!2229 (h!18343 (t!117317 rules!2550))))) b!1294344))

(assert (= (and b!1293561 ((_ is Union!3543) (regex!2229 (h!18343 (t!117317 rules!2550))))) b!1294345))

(declare-fun b!1294349 () Bool)

(declare-fun e!830052 () Bool)

(declare-fun tp!377304 () Bool)

(declare-fun tp!377307 () Bool)

(assert (=> b!1294349 (= e!830052 (and tp!377304 tp!377307))))

(declare-fun b!1294346 () Bool)

(assert (=> b!1294346 (= e!830052 tp_is_empty!6579)))

(assert (=> b!1293544 (= tp!377163 e!830052)))

(declare-fun b!1294348 () Bool)

(declare-fun tp!377306 () Bool)

(assert (=> b!1294348 (= e!830052 tp!377306)))

(declare-fun b!1294347 () Bool)

(declare-fun tp!377305 () Bool)

(declare-fun tp!377303 () Bool)

(assert (=> b!1294347 (= e!830052 (and tp!377305 tp!377303))))

(assert (= (and b!1293544 ((_ is ElementMatch!3543) (regOne!7598 (regex!2229 (rule!3968 t1!34))))) b!1294346))

(assert (= (and b!1293544 ((_ is Concat!5863) (regOne!7598 (regex!2229 (rule!3968 t1!34))))) b!1294347))

(assert (= (and b!1293544 ((_ is Star!3543) (regOne!7598 (regex!2229 (rule!3968 t1!34))))) b!1294348))

(assert (= (and b!1293544 ((_ is Union!3543) (regOne!7598 (regex!2229 (rule!3968 t1!34))))) b!1294349))

(declare-fun b!1294353 () Bool)

(declare-fun e!830053 () Bool)

(declare-fun tp!377309 () Bool)

(declare-fun tp!377312 () Bool)

(assert (=> b!1294353 (= e!830053 (and tp!377309 tp!377312))))

(declare-fun b!1294350 () Bool)

(assert (=> b!1294350 (= e!830053 tp_is_empty!6579)))

(assert (=> b!1293544 (= tp!377161 e!830053)))

(declare-fun b!1294352 () Bool)

(declare-fun tp!377311 () Bool)

(assert (=> b!1294352 (= e!830053 tp!377311)))

(declare-fun b!1294351 () Bool)

(declare-fun tp!377310 () Bool)

(declare-fun tp!377308 () Bool)

(assert (=> b!1294351 (= e!830053 (and tp!377310 tp!377308))))

(assert (= (and b!1293544 ((_ is ElementMatch!3543) (regTwo!7598 (regex!2229 (rule!3968 t1!34))))) b!1294350))

(assert (= (and b!1293544 ((_ is Concat!5863) (regTwo!7598 (regex!2229 (rule!3968 t1!34))))) b!1294351))

(assert (= (and b!1293544 ((_ is Star!3543) (regTwo!7598 (regex!2229 (rule!3968 t1!34))))) b!1294352))

(assert (= (and b!1293544 ((_ is Union!3543) (regTwo!7598 (regex!2229 (rule!3968 t1!34))))) b!1294353))

(declare-fun b!1294357 () Bool)

(declare-fun e!830054 () Bool)

(declare-fun tp!377314 () Bool)

(declare-fun tp!377317 () Bool)

(assert (=> b!1294357 (= e!830054 (and tp!377314 tp!377317))))

(declare-fun b!1294354 () Bool)

(assert (=> b!1294354 (= e!830054 tp_is_empty!6579)))

(assert (=> b!1293548 (= tp!377168 e!830054)))

(declare-fun b!1294356 () Bool)

(declare-fun tp!377316 () Bool)

(assert (=> b!1294356 (= e!830054 tp!377316)))

(declare-fun b!1294355 () Bool)

(declare-fun tp!377315 () Bool)

(declare-fun tp!377313 () Bool)

(assert (=> b!1294355 (= e!830054 (and tp!377315 tp!377313))))

(assert (= (and b!1293548 ((_ is ElementMatch!3543) (regOne!7598 (regex!2229 (rule!3968 t2!34))))) b!1294354))

(assert (= (and b!1293548 ((_ is Concat!5863) (regOne!7598 (regex!2229 (rule!3968 t2!34))))) b!1294355))

(assert (= (and b!1293548 ((_ is Star!3543) (regOne!7598 (regex!2229 (rule!3968 t2!34))))) b!1294356))

(assert (= (and b!1293548 ((_ is Union!3543) (regOne!7598 (regex!2229 (rule!3968 t2!34))))) b!1294357))

(declare-fun b!1294361 () Bool)

(declare-fun e!830055 () Bool)

(declare-fun tp!377319 () Bool)

(declare-fun tp!377322 () Bool)

(assert (=> b!1294361 (= e!830055 (and tp!377319 tp!377322))))

(declare-fun b!1294358 () Bool)

(assert (=> b!1294358 (= e!830055 tp_is_empty!6579)))

(assert (=> b!1293548 (= tp!377166 e!830055)))

(declare-fun b!1294360 () Bool)

(declare-fun tp!377321 () Bool)

(assert (=> b!1294360 (= e!830055 tp!377321)))

(declare-fun b!1294359 () Bool)

(declare-fun tp!377320 () Bool)

(declare-fun tp!377318 () Bool)

(assert (=> b!1294359 (= e!830055 (and tp!377320 tp!377318))))

(assert (= (and b!1293548 ((_ is ElementMatch!3543) (regTwo!7598 (regex!2229 (rule!3968 t2!34))))) b!1294358))

(assert (= (and b!1293548 ((_ is Concat!5863) (regTwo!7598 (regex!2229 (rule!3968 t2!34))))) b!1294359))

(assert (= (and b!1293548 ((_ is Star!3543) (regTwo!7598 (regex!2229 (rule!3968 t2!34))))) b!1294360))

(assert (= (and b!1293548 ((_ is Union!3543) (regTwo!7598 (regex!2229 (rule!3968 t2!34))))) b!1294361))

(declare-fun tp!377331 () Bool)

(declare-fun e!830060 () Bool)

(declare-fun tp!377330 () Bool)

(declare-fun b!1294370 () Bool)

(assert (=> b!1294370 (= e!830060 (and (inv!17368 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))) tp!377331 (inv!17368 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))) tp!377330))))

(declare-fun b!1294372 () Bool)

(declare-fun e!830061 () Bool)

(declare-fun tp!377329 () Bool)

(assert (=> b!1294372 (= e!830061 tp!377329)))

(declare-fun b!1294371 () Bool)

(declare-fun inv!17375 (IArray!8507) Bool)

(assert (=> b!1294371 (= e!830060 (and (inv!17375 (xs!6962 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))) e!830061))))

(assert (=> b!1293492 (= tp!377146 (and (inv!17368 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))) e!830060))))

(assert (= (and b!1293492 ((_ is Node!4251) (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))) b!1294370))

(assert (= b!1294371 b!1294372))

(assert (= (and b!1293492 ((_ is Leaf!6562) (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))) b!1294371))

(declare-fun m!1445447 () Bool)

(assert (=> b!1294370 m!1445447))

(declare-fun m!1445449 () Bool)

(assert (=> b!1294370 m!1445449))

(declare-fun m!1445451 () Bool)

(assert (=> b!1294371 m!1445451))

(assert (=> b!1293492 m!1444433))

(declare-fun b!1294375 () Bool)

(declare-fun b_free!30651 () Bool)

(declare-fun b_next!31355 () Bool)

(assert (=> b!1294375 (= b_free!30651 (not b_next!31355))))

(declare-fun tp!377334 () Bool)

(declare-fun b_and!86311 () Bool)

(assert (=> b!1294375 (= tp!377334 b_and!86311)))

(declare-fun b_free!30653 () Bool)

(declare-fun b_next!31357 () Bool)

(assert (=> b!1294375 (= b_free!30653 (not b_next!31357))))

(declare-fun tb!69461 () Bool)

(declare-fun t!117373 () Bool)

(assert (=> (and b!1294375 (= (toChars!3291 (transformation!2229 (h!18343 (t!117317 (t!117317 rules!2550))))) (toChars!3291 (transformation!2229 (rule!3968 t1!34)))) t!117373) tb!69461))

(declare-fun result!84214 () Bool)

(assert (= result!84214 result!84182))

(assert (=> b!1293486 t!117373))

(declare-fun t!117375 () Bool)

(declare-fun tb!69463 () Bool)

(assert (=> (and b!1294375 (= (toChars!3291 (transformation!2229 (h!18343 (t!117317 (t!117317 rules!2550))))) (toChars!3291 (transformation!2229 (rule!3968 t2!34)))) t!117375) tb!69463))

(declare-fun result!84216 () Bool)

(assert (= result!84216 result!84190))

(assert (=> b!1293493 t!117375))

(assert (=> d!364787 t!117375))

(assert (=> d!364799 t!117373))

(declare-fun b_and!86313 () Bool)

(declare-fun tp!377333 () Bool)

(assert (=> b!1294375 (= tp!377333 (and (=> t!117373 result!84214) (=> t!117375 result!84216) b_and!86313))))

(declare-fun e!830062 () Bool)

(assert (=> b!1294375 (= e!830062 (and tp!377334 tp!377333))))

(declare-fun e!830063 () Bool)

(declare-fun tp!377332 () Bool)

(declare-fun b!1294374 () Bool)

(assert (=> b!1294374 (= e!830063 (and tp!377332 (inv!17361 (tag!2491 (h!18343 (t!117317 (t!117317 rules!2550))))) (inv!17364 (transformation!2229 (h!18343 (t!117317 (t!117317 rules!2550))))) e!830062))))

(declare-fun b!1294373 () Bool)

(declare-fun e!830065 () Bool)

(declare-fun tp!377335 () Bool)

(assert (=> b!1294373 (= e!830065 (and e!830063 tp!377335))))

(assert (=> b!1293560 (= tp!377183 e!830065)))

(assert (= b!1294374 b!1294375))

(assert (= b!1294373 b!1294374))

(assert (= (and b!1293560 ((_ is Cons!12942) (t!117317 (t!117317 rules!2550)))) b!1294373))

(declare-fun m!1445453 () Bool)

(assert (=> b!1294374 m!1445453))

(declare-fun m!1445455 () Bool)

(assert (=> b!1294374 m!1445455))

(declare-fun b!1294379 () Bool)

(declare-fun e!830066 () Bool)

(declare-fun tp!377337 () Bool)

(declare-fun tp!377340 () Bool)

(assert (=> b!1294379 (= e!830066 (and tp!377337 tp!377340))))

(declare-fun b!1294376 () Bool)

(assert (=> b!1294376 (= e!830066 tp_is_empty!6579)))

(assert (=> b!1293546 (= tp!377162 e!830066)))

(declare-fun b!1294378 () Bool)

(declare-fun tp!377339 () Bool)

(assert (=> b!1294378 (= e!830066 tp!377339)))

(declare-fun b!1294377 () Bool)

(declare-fun tp!377338 () Bool)

(declare-fun tp!377336 () Bool)

(assert (=> b!1294377 (= e!830066 (and tp!377338 tp!377336))))

(assert (= (and b!1293546 ((_ is ElementMatch!3543) (regOne!7599 (regex!2229 (rule!3968 t1!34))))) b!1294376))

(assert (= (and b!1293546 ((_ is Concat!5863) (regOne!7599 (regex!2229 (rule!3968 t1!34))))) b!1294377))

(assert (= (and b!1293546 ((_ is Star!3543) (regOne!7599 (regex!2229 (rule!3968 t1!34))))) b!1294378))

(assert (= (and b!1293546 ((_ is Union!3543) (regOne!7599 (regex!2229 (rule!3968 t1!34))))) b!1294379))

(declare-fun b!1294383 () Bool)

(declare-fun e!830067 () Bool)

(declare-fun tp!377342 () Bool)

(declare-fun tp!377345 () Bool)

(assert (=> b!1294383 (= e!830067 (and tp!377342 tp!377345))))

(declare-fun b!1294380 () Bool)

(assert (=> b!1294380 (= e!830067 tp_is_empty!6579)))

(assert (=> b!1293546 (= tp!377165 e!830067)))

(declare-fun b!1294382 () Bool)

(declare-fun tp!377344 () Bool)

(assert (=> b!1294382 (= e!830067 tp!377344)))

(declare-fun b!1294381 () Bool)

(declare-fun tp!377343 () Bool)

(declare-fun tp!377341 () Bool)

(assert (=> b!1294381 (= e!830067 (and tp!377343 tp!377341))))

(assert (= (and b!1293546 ((_ is ElementMatch!3543) (regTwo!7599 (regex!2229 (rule!3968 t1!34))))) b!1294380))

(assert (= (and b!1293546 ((_ is Concat!5863) (regTwo!7599 (regex!2229 (rule!3968 t1!34))))) b!1294381))

(assert (= (and b!1293546 ((_ is Star!3543) (regTwo!7599 (regex!2229 (rule!3968 t1!34))))) b!1294382))

(assert (= (and b!1293546 ((_ is Union!3543) (regTwo!7599 (regex!2229 (rule!3968 t1!34))))) b!1294383))

(declare-fun b!1294387 () Bool)

(declare-fun e!830068 () Bool)

(declare-fun tp!377347 () Bool)

(declare-fun tp!377350 () Bool)

(assert (=> b!1294387 (= e!830068 (and tp!377347 tp!377350))))

(declare-fun b!1294384 () Bool)

(assert (=> b!1294384 (= e!830068 tp_is_empty!6579)))

(assert (=> b!1293545 (= tp!377164 e!830068)))

(declare-fun b!1294386 () Bool)

(declare-fun tp!377349 () Bool)

(assert (=> b!1294386 (= e!830068 tp!377349)))

(declare-fun b!1294385 () Bool)

(declare-fun tp!377348 () Bool)

(declare-fun tp!377346 () Bool)

(assert (=> b!1294385 (= e!830068 (and tp!377348 tp!377346))))

(assert (= (and b!1293545 ((_ is ElementMatch!3543) (reg!3872 (regex!2229 (rule!3968 t1!34))))) b!1294384))

(assert (= (and b!1293545 ((_ is Concat!5863) (reg!3872 (regex!2229 (rule!3968 t1!34))))) b!1294385))

(assert (= (and b!1293545 ((_ is Star!3543) (reg!3872 (regex!2229 (rule!3968 t1!34))))) b!1294386))

(assert (= (and b!1293545 ((_ is Union!3543) (reg!3872 (regex!2229 (rule!3968 t1!34))))) b!1294387))

(declare-fun b!1294391 () Bool)

(declare-fun e!830069 () Bool)

(declare-fun tp!377352 () Bool)

(declare-fun tp!377355 () Bool)

(assert (=> b!1294391 (= e!830069 (and tp!377352 tp!377355))))

(declare-fun b!1294388 () Bool)

(assert (=> b!1294388 (= e!830069 tp_is_empty!6579)))

(assert (=> b!1293550 (= tp!377167 e!830069)))

(declare-fun b!1294390 () Bool)

(declare-fun tp!377354 () Bool)

(assert (=> b!1294390 (= e!830069 tp!377354)))

(declare-fun b!1294389 () Bool)

(declare-fun tp!377353 () Bool)

(declare-fun tp!377351 () Bool)

(assert (=> b!1294389 (= e!830069 (and tp!377353 tp!377351))))

(assert (= (and b!1293550 ((_ is ElementMatch!3543) (regOne!7599 (regex!2229 (rule!3968 t2!34))))) b!1294388))

(assert (= (and b!1293550 ((_ is Concat!5863) (regOne!7599 (regex!2229 (rule!3968 t2!34))))) b!1294389))

(assert (= (and b!1293550 ((_ is Star!3543) (regOne!7599 (regex!2229 (rule!3968 t2!34))))) b!1294390))

(assert (= (and b!1293550 ((_ is Union!3543) (regOne!7599 (regex!2229 (rule!3968 t2!34))))) b!1294391))

(declare-fun b!1294395 () Bool)

(declare-fun e!830070 () Bool)

(declare-fun tp!377357 () Bool)

(declare-fun tp!377360 () Bool)

(assert (=> b!1294395 (= e!830070 (and tp!377357 tp!377360))))

(declare-fun b!1294392 () Bool)

(assert (=> b!1294392 (= e!830070 tp_is_empty!6579)))

(assert (=> b!1293550 (= tp!377170 e!830070)))

(declare-fun b!1294394 () Bool)

(declare-fun tp!377359 () Bool)

(assert (=> b!1294394 (= e!830070 tp!377359)))

(declare-fun b!1294393 () Bool)

(declare-fun tp!377358 () Bool)

(declare-fun tp!377356 () Bool)

(assert (=> b!1294393 (= e!830070 (and tp!377358 tp!377356))))

(assert (= (and b!1293550 ((_ is ElementMatch!3543) (regTwo!7599 (regex!2229 (rule!3968 t2!34))))) b!1294392))

(assert (= (and b!1293550 ((_ is Concat!5863) (regTwo!7599 (regex!2229 (rule!3968 t2!34))))) b!1294393))

(assert (= (and b!1293550 ((_ is Star!3543) (regTwo!7599 (regex!2229 (rule!3968 t2!34))))) b!1294394))

(assert (= (and b!1293550 ((_ is Union!3543) (regTwo!7599 (regex!2229 (rule!3968 t2!34))))) b!1294395))

(declare-fun b!1294399 () Bool)

(declare-fun e!830071 () Bool)

(declare-fun tp!377362 () Bool)

(declare-fun tp!377365 () Bool)

(assert (=> b!1294399 (= e!830071 (and tp!377362 tp!377365))))

(declare-fun b!1294396 () Bool)

(assert (=> b!1294396 (= e!830071 tp_is_empty!6579)))

(assert (=> b!1293564 (= tp!377186 e!830071)))

(declare-fun b!1294398 () Bool)

(declare-fun tp!377364 () Bool)

(assert (=> b!1294398 (= e!830071 tp!377364)))

(declare-fun b!1294397 () Bool)

(declare-fun tp!377363 () Bool)

(declare-fun tp!377361 () Bool)

(assert (=> b!1294397 (= e!830071 (and tp!377363 tp!377361))))

(assert (= (and b!1293564 ((_ is ElementMatch!3543) (regOne!7598 (regex!2229 (h!18343 rules!2550))))) b!1294396))

(assert (= (and b!1293564 ((_ is Concat!5863) (regOne!7598 (regex!2229 (h!18343 rules!2550))))) b!1294397))

(assert (= (and b!1293564 ((_ is Star!3543) (regOne!7598 (regex!2229 (h!18343 rules!2550))))) b!1294398))

(assert (= (and b!1293564 ((_ is Union!3543) (regOne!7598 (regex!2229 (h!18343 rules!2550))))) b!1294399))

(declare-fun b!1294403 () Bool)

(declare-fun e!830072 () Bool)

(declare-fun tp!377367 () Bool)

(declare-fun tp!377370 () Bool)

(assert (=> b!1294403 (= e!830072 (and tp!377367 tp!377370))))

(declare-fun b!1294400 () Bool)

(assert (=> b!1294400 (= e!830072 tp_is_empty!6579)))

(assert (=> b!1293564 (= tp!377184 e!830072)))

(declare-fun b!1294402 () Bool)

(declare-fun tp!377369 () Bool)

(assert (=> b!1294402 (= e!830072 tp!377369)))

(declare-fun b!1294401 () Bool)

(declare-fun tp!377368 () Bool)

(declare-fun tp!377366 () Bool)

(assert (=> b!1294401 (= e!830072 (and tp!377368 tp!377366))))

(assert (= (and b!1293564 ((_ is ElementMatch!3543) (regTwo!7598 (regex!2229 (h!18343 rules!2550))))) b!1294400))

(assert (= (and b!1293564 ((_ is Concat!5863) (regTwo!7598 (regex!2229 (h!18343 rules!2550))))) b!1294401))

(assert (= (and b!1293564 ((_ is Star!3543) (regTwo!7598 (regex!2229 (h!18343 rules!2550))))) b!1294402))

(assert (= (and b!1293564 ((_ is Union!3543) (regTwo!7598 (regex!2229 (h!18343 rules!2550))))) b!1294403))

(declare-fun b!1294404 () Bool)

(declare-fun e!830073 () Bool)

(declare-fun tp!377371 () Bool)

(assert (=> b!1294404 (= e!830073 (and tp_is_empty!6579 tp!377371))))

(assert (=> b!1293551 (= tp!377171 e!830073)))

(assert (= (and b!1293551 ((_ is Cons!12940) (t!117315 (originalCharacters!3091 t1!34)))) b!1294404))

(declare-fun tp!377374 () Bool)

(declare-fun e!830074 () Bool)

(declare-fun b!1294405 () Bool)

(declare-fun tp!377373 () Bool)

(assert (=> b!1294405 (= e!830074 (and (inv!17368 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))) tp!377374 (inv!17368 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))) tp!377373))))

(declare-fun b!1294407 () Bool)

(declare-fun e!830075 () Bool)

(declare-fun tp!377372 () Bool)

(assert (=> b!1294407 (= e!830075 tp!377372)))

(declare-fun b!1294406 () Bool)

(assert (=> b!1294406 (= e!830074 (and (inv!17375 (xs!6962 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))) e!830075))))

(assert (=> b!1293495 (= tp!377147 (and (inv!17368 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))) e!830074))))

(assert (= (and b!1293495 ((_ is Node!4251) (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))) b!1294405))

(assert (= b!1294406 b!1294407))

(assert (= (and b!1293495 ((_ is Leaf!6562) (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))) b!1294406))

(declare-fun m!1445457 () Bool)

(assert (=> b!1294405 m!1445457))

(declare-fun m!1445459 () Bool)

(assert (=> b!1294405 m!1445459))

(declare-fun m!1445461 () Bool)

(assert (=> b!1294406 m!1445461))

(assert (=> b!1293495 m!1444445))

(declare-fun b!1294408 () Bool)

(declare-fun e!830076 () Bool)

(declare-fun tp!377375 () Bool)

(assert (=> b!1294408 (= e!830076 (and tp_is_empty!6579 tp!377375))))

(assert (=> b!1293532 (= tp!377150 e!830076)))

(assert (= (and b!1293532 ((_ is Cons!12940) (t!117315 (originalCharacters!3091 t2!34)))) b!1294408))

(declare-fun b!1294412 () Bool)

(declare-fun e!830077 () Bool)

(declare-fun tp!377377 () Bool)

(declare-fun tp!377380 () Bool)

(assert (=> b!1294412 (= e!830077 (and tp!377377 tp!377380))))

(declare-fun b!1294409 () Bool)

(assert (=> b!1294409 (= e!830077 tp_is_empty!6579)))

(assert (=> b!1293566 (= tp!377185 e!830077)))

(declare-fun b!1294411 () Bool)

(declare-fun tp!377379 () Bool)

(assert (=> b!1294411 (= e!830077 tp!377379)))

(declare-fun b!1294410 () Bool)

(declare-fun tp!377378 () Bool)

(declare-fun tp!377376 () Bool)

(assert (=> b!1294410 (= e!830077 (and tp!377378 tp!377376))))

(assert (= (and b!1293566 ((_ is ElementMatch!3543) (regOne!7599 (regex!2229 (h!18343 rules!2550))))) b!1294409))

(assert (= (and b!1293566 ((_ is Concat!5863) (regOne!7599 (regex!2229 (h!18343 rules!2550))))) b!1294410))

(assert (= (and b!1293566 ((_ is Star!3543) (regOne!7599 (regex!2229 (h!18343 rules!2550))))) b!1294411))

(assert (= (and b!1293566 ((_ is Union!3543) (regOne!7599 (regex!2229 (h!18343 rules!2550))))) b!1294412))

(declare-fun b!1294416 () Bool)

(declare-fun e!830078 () Bool)

(declare-fun tp!377382 () Bool)

(declare-fun tp!377385 () Bool)

(assert (=> b!1294416 (= e!830078 (and tp!377382 tp!377385))))

(declare-fun b!1294413 () Bool)

(assert (=> b!1294413 (= e!830078 tp_is_empty!6579)))

(assert (=> b!1293566 (= tp!377188 e!830078)))

(declare-fun b!1294415 () Bool)

(declare-fun tp!377384 () Bool)

(assert (=> b!1294415 (= e!830078 tp!377384)))

(declare-fun b!1294414 () Bool)

(declare-fun tp!377383 () Bool)

(declare-fun tp!377381 () Bool)

(assert (=> b!1294414 (= e!830078 (and tp!377383 tp!377381))))

(assert (= (and b!1293566 ((_ is ElementMatch!3543) (regTwo!7599 (regex!2229 (h!18343 rules!2550))))) b!1294413))

(assert (= (and b!1293566 ((_ is Concat!5863) (regTwo!7599 (regex!2229 (h!18343 rules!2550))))) b!1294414))

(assert (= (and b!1293566 ((_ is Star!3543) (regTwo!7599 (regex!2229 (h!18343 rules!2550))))) b!1294415))

(assert (= (and b!1293566 ((_ is Union!3543) (regTwo!7599 (regex!2229 (h!18343 rules!2550))))) b!1294416))

(declare-fun b!1294420 () Bool)

(declare-fun e!830079 () Bool)

(declare-fun tp!377387 () Bool)

(declare-fun tp!377390 () Bool)

(assert (=> b!1294420 (= e!830079 (and tp!377387 tp!377390))))

(declare-fun b!1294417 () Bool)

(assert (=> b!1294417 (= e!830079 tp_is_empty!6579)))

(assert (=> b!1293565 (= tp!377187 e!830079)))

(declare-fun b!1294419 () Bool)

(declare-fun tp!377389 () Bool)

(assert (=> b!1294419 (= e!830079 tp!377389)))

(declare-fun b!1294418 () Bool)

(declare-fun tp!377388 () Bool)

(declare-fun tp!377386 () Bool)

(assert (=> b!1294418 (= e!830079 (and tp!377388 tp!377386))))

(assert (= (and b!1293565 ((_ is ElementMatch!3543) (reg!3872 (regex!2229 (h!18343 rules!2550))))) b!1294417))

(assert (= (and b!1293565 ((_ is Concat!5863) (reg!3872 (regex!2229 (h!18343 rules!2550))))) b!1294418))

(assert (= (and b!1293565 ((_ is Star!3543) (reg!3872 (regex!2229 (h!18343 rules!2550))))) b!1294419))

(assert (= (and b!1293565 ((_ is Union!3543) (reg!3872 (regex!2229 (h!18343 rules!2550))))) b!1294420))

(declare-fun b_lambda!37043 () Bool)

(assert (= b_lambda!37039 (or d!364803 b_lambda!37043)))

(declare-fun bs!328833 () Bool)

(declare-fun d!365183 () Bool)

(assert (= bs!328833 (and d!365183 d!364803)))

(assert (=> bs!328833 (= (dynLambda!5663 lambda!50865 (h!18343 rules!2550)) (regex!2229 (h!18343 rules!2550)))))

(assert (=> b!1294167 d!365183))

(declare-fun b_lambda!37045 () Bool)

(assert (= b_lambda!37041 (or b!1293281 b_lambda!37045)))

(declare-fun bs!328834 () Bool)

(declare-fun d!365185 () Bool)

(assert (= bs!328834 (and d!365185 b!1293281)))

(declare-fun res!579940 () Bool)

(declare-fun e!830080 () Bool)

(assert (=> bs!328834 (=> (not res!579940) (not e!830080))))

(assert (=> bs!328834 (= res!579940 (matchR!1551 lt!425589 res!579878))))

(assert (=> bs!328834 (= (dynLambda!5655 lambda!50853 res!579878) e!830080)))

(declare-fun b!1294421 () Bool)

(assert (=> b!1294421 (= e!830080 (isPrefix!1054 lt!425591 res!579878))))

(assert (= (and bs!328834 res!579940) b!1294421))

(declare-fun m!1445463 () Bool)

(assert (=> bs!328834 m!1445463))

(declare-fun m!1445465 () Bool)

(assert (=> b!1294421 m!1445465))

(assert (=> d!365077 d!365185))

(check-sat (not b!1294002) (not d!364961) (not b!1294323) (not b!1294303) (not d!365181) (not d!364885) (not d!365125) (not d!365165) (not b!1294008) (not b!1294337) (not b!1294411) (not d!364953) (not d!365121) (not d!365147) b_and!86311 (not d!365081) (not d!364879) (not b!1294339) (not d!364891) (not b!1294401) (not d!365123) (not b!1294348) (not b!1293722) (not b!1294355) (not d!365139) (not b!1294320) (not b!1294200) (not d!365069) (not b!1294420) (not b!1294276) (not b!1294408) (not d!365029) b_and!86305 (not b!1293844) (not d!365013) (not b!1294360) (not b!1294319) (not bm!88782) (not b!1294212) (not b!1294318) (not b!1294288) (not b!1294304) (not b!1294334) (not b!1294405) (not b!1294399) (not d!365011) (not d!365145) (not b!1294349) (not b!1294407) (not b_next!31349) (not bm!88770) (not b!1294266) (not d!364965) (not d!365101) b_and!86313 (not d!365107) (not d!365037) (not b!1294404) b_and!86239 (not b!1293850) (not b_next!31337) (not bm!88761) (not b!1294383) (not b!1294172) (not b!1294102) (not b!1293860) (not b!1294382) (not d!365103) b_and!86301 (not b_lambda!37025) (not b!1293840) (not b!1294371) (not b!1293841) (not b!1294000) (not d!365149) (not b!1294201) (not b!1294182) (not d!365033) (not b!1293745) (not b!1294421) (not b!1294373) (not b!1294386) (not b!1294393) (not d!365073) (not b!1293951) (not b!1294347) (not b!1294361) tp_is_empty!6579 (not d!364987) (not b!1294180) (not b!1294305) (not b!1294416) (not d!365057) (not b!1294317) (not b!1294099) b_and!86303 (not d!365117) (not b!1293743) (not d!365055) (not b!1294039) (not b!1293842) (not b!1293495) (not b!1294415) (not b!1294398) (not bm!88767) (not d!365089) (not b!1293747) (not b!1294379) (not d!365059) (not b!1294278) (not b!1294300) (not d!365105) (not b!1294280) (not b!1294394) (not d!365137) (not b!1294297) (not b!1294372) (not d!365071) (not d!364883) (not b!1294345) (not b!1293861) (not d!364899) (not b!1294248) (not d!365167) (not b_lambda!37021) (not b!1294101) (not b!1294356) (not d!365115) (not d!365087) (not b!1294100) (not b!1294390) (not b!1294381) (not d!365135) (not bm!88779) (not b!1294419) (not b!1294181) (not b!1293947) (not b!1294169) (not b!1294107) (not d!365065) (not b!1294357) (not b!1294340) (not b_next!31331) (not d!365067) (not b!1294391) (not b!1294374) (not b!1294359) (not b!1294344) (not b_next!31339) (not d!365169) (not d!364947) (not b!1294005) (not b!1294395) (not b!1294168) b_and!86299 (not d!364895) (not b!1294167) b_and!86297 (not bm!88758) (not b!1294198) (not d!365175) (not b!1294410) (not b!1294203) (not b!1294341) (not bm!88777) (not b!1294282) (not b!1294105) (not b!1294402) (not b!1294173) (not b!1294397) (not b!1294307) (not b_lambda!37023) (not d!364949) (not b!1294378) (not b!1294353) (not b_lambda!37043) (not b!1294007) (not b!1294418) (not b!1293726) (not b!1293492) (not b!1294245) (not d!365113) (not b!1293847) (not b_next!31357) (not b!1294241) (not b!1294370) (not b!1294274) (not b!1294003) (not b!1293906) (not d!365079) (not d!365049) (not b!1294352) (not b!1294251) (not d!365063) (not d!365171) (not b!1294286) (not d!365083) (not b!1294267) (not b!1294298) (not b!1294387) (not b!1294403) (not b_next!31335) (not b!1294412) (not b!1294103) (not b!1293849) (not b!1294343) (not b_next!31341) (not b!1293748) (not d!365173) (not b!1294351) (not b!1294170) (not b!1294389) (not d!364963) (not bs!328834) (not d!365061) (not b!1294209) (not b!1294385) (not b_next!31347) (not b!1294284) (not b!1294377) (not d!364955) (not b!1293725) (not b!1294249) (not b!1294247) (not b!1293949) (not d!365151) (not b!1294299) (not b_next!31355) (not b!1293926) (not b!1294406) (not b_lambda!37029) (not b!1294243) b_and!86243 (not b!1294208) (not b_next!31333) (not b!1294414) (not b_lambda!37045) (not b_lambda!37027) (not d!365161) b_and!86247)
(check-sat b_and!86311 b_and!86305 (not b_next!31349) (not b_next!31337) b_and!86301 b_and!86303 (not b_next!31357) (not b_next!31347) b_and!86313 b_and!86239 (not b_next!31331) (not b_next!31339) b_and!86299 b_and!86297 (not b_next!31335) (not b_next!31341) (not b_next!31355) b_and!86243 (not b_next!31333) b_and!86247)
(get-model)

(declare-fun d!365187 () Bool)

(declare-fun lt!425895 () Int)

(assert (=> d!365187 (= lt!425895 (size!10573 (list!4837 (_2!7227 lt!425729))))))

(assert (=> d!365187 (= lt!425895 (size!10575 (c!212845 (_2!7227 lt!425729))))))

(assert (=> d!365187 (= (size!10568 (_2!7227 lt!425729)) lt!425895)))

(declare-fun bs!328835 () Bool)

(assert (= bs!328835 d!365187))

(assert (=> bs!328835 m!1444869))

(assert (=> bs!328835 m!1444869))

(declare-fun m!1445467 () Bool)

(assert (=> bs!328835 m!1445467))

(declare-fun m!1445469 () Bool)

(assert (=> bs!328835 m!1445469))

(assert (=> b!1293840 d!365187))

(declare-fun d!365189 () Bool)

(declare-fun lt!425896 () Int)

(assert (=> d!365189 (= lt!425896 (size!10573 (list!4837 (print!724 thiss!19762 (singletonSeq!814 t2!34)))))))

(assert (=> d!365189 (= lt!425896 (size!10575 (c!212845 (print!724 thiss!19762 (singletonSeq!814 t2!34)))))))

(assert (=> d!365189 (= (size!10568 (print!724 thiss!19762 (singletonSeq!814 t2!34))) lt!425896)))

(declare-fun bs!328836 () Bool)

(assert (= bs!328836 d!365189))

(assert (=> bs!328836 m!1444413))

(assert (=> bs!328836 m!1444871))

(assert (=> bs!328836 m!1444871))

(declare-fun m!1445471 () Bool)

(assert (=> bs!328836 m!1445471))

(declare-fun m!1445473 () Bool)

(assert (=> bs!328836 m!1445473))

(assert (=> b!1293840 d!365189))

(declare-fun d!365191 () Bool)

(assert (=> d!365191 (= (lostCause!256 (derivativeStep!879 lt!425589 (head!2220 lt!425591))) (lostCauseFct!102 (derivativeStep!879 lt!425589 (head!2220 lt!425591))))))

(declare-fun bs!328837 () Bool)

(assert (= bs!328837 d!365191))

(assert (=> bs!328837 m!1444529))

(declare-fun m!1445475 () Bool)

(assert (=> bs!328837 m!1445475))

(assert (=> b!1293860 d!365191))

(declare-fun d!365193 () Bool)

(declare-fun lt!425899 () Bool)

(assert (=> d!365193 (= lt!425899 (select (content!1829 (list!4837 lt!425590)) lt!425828))))

(declare-fun e!830085 () Bool)

(assert (=> d!365193 (= lt!425899 e!830085)))

(declare-fun res!579950 () Bool)

(assert (=> d!365193 (=> (not res!579950) (not e!830085))))

(assert (=> d!365193 (= res!579950 ((_ is Cons!12940) (list!4837 lt!425590)))))

(assert (=> d!365193 (= (contains!2161 (list!4837 lt!425590) lt!425828) lt!425899)))

(declare-fun b!1294426 () Bool)

(declare-fun e!830086 () Bool)

(assert (=> b!1294426 (= e!830085 e!830086)))

(declare-fun res!579949 () Bool)

(assert (=> b!1294426 (=> res!579949 e!830086)))

(assert (=> b!1294426 (= res!579949 (= (h!18341 (list!4837 lt!425590)) lt!425828))))

(declare-fun b!1294427 () Bool)

(assert (=> b!1294427 (= e!830086 (contains!2161 (t!117315 (list!4837 lt!425590)) lt!425828))))

(assert (= (and d!365193 res!579950) b!1294426))

(assert (= (and b!1294426 (not res!579949)) b!1294427))

(assert (=> d!365193 m!1444491))

(declare-fun m!1445477 () Bool)

(assert (=> d!365193 m!1445477))

(declare-fun m!1445479 () Bool)

(assert (=> d!365193 m!1445479))

(declare-fun m!1445481 () Bool)

(assert (=> b!1294427 m!1445481))

(assert (=> d!365069 d!365193))

(declare-fun d!365195 () Bool)

(assert (=> d!365195 (= (isEmpty!7687 (list!4837 (_2!7227 lt!425641))) ((_ is Nil!12940) (list!4837 (_2!7227 lt!425641))))))

(assert (=> d!365125 d!365195))

(declare-fun d!365197 () Bool)

(assert (=> d!365197 (= (list!4837 (_2!7227 lt!425641)) (list!4841 (c!212845 (_2!7227 lt!425641))))))

(declare-fun bs!328838 () Bool)

(assert (= bs!328838 d!365197))

(declare-fun m!1445483 () Bool)

(assert (=> bs!328838 m!1445483))

(assert (=> d!365125 d!365197))

(declare-fun d!365199 () Bool)

(declare-fun lt!425902 () Bool)

(assert (=> d!365199 (= lt!425902 (isEmpty!7687 (list!4841 (c!212845 (_2!7227 lt!425641)))))))

(assert (=> d!365199 (= lt!425902 (= (size!10575 (c!212845 (_2!7227 lt!425641))) 0))))

(assert (=> d!365199 (= (isEmpty!7690 (c!212845 (_2!7227 lt!425641))) lt!425902)))

(declare-fun bs!328839 () Bool)

(assert (= bs!328839 d!365199))

(assert (=> bs!328839 m!1445483))

(assert (=> bs!328839 m!1445483))

(declare-fun m!1445485 () Bool)

(assert (=> bs!328839 m!1445485))

(declare-fun m!1445487 () Bool)

(assert (=> bs!328839 m!1445487))

(assert (=> d!365125 d!365199))

(declare-fun b!1294428 () Bool)

(declare-fun e!830088 () Bool)

(declare-fun e!830093 () Bool)

(assert (=> b!1294428 (= e!830088 e!830093)))

(declare-fun res!579955 () Bool)

(assert (=> b!1294428 (=> (not res!579955) (not e!830093))))

(declare-fun call!88789 () Bool)

(assert (=> b!1294428 (= res!579955 call!88789)))

(declare-fun b!1294430 () Bool)

(declare-fun res!579954 () Bool)

(assert (=> b!1294430 (=> res!579954 e!830088)))

(assert (=> b!1294430 (= res!579954 (not ((_ is Concat!5863) (ite c!213068 (reg!3872 lt!425589) (ite c!213069 (regOne!7599 lt!425589) (regOne!7598 lt!425589))))))))

(declare-fun e!830087 () Bool)

(assert (=> b!1294430 (= e!830087 e!830088)))

(declare-fun b!1294431 () Bool)

(declare-fun call!88790 () Bool)

(assert (=> b!1294431 (= e!830093 call!88790)))

(declare-fun b!1294432 () Bool)

(declare-fun res!579951 () Bool)

(declare-fun e!830089 () Bool)

(assert (=> b!1294432 (=> (not res!579951) (not e!830089))))

(assert (=> b!1294432 (= res!579951 call!88789)))

(assert (=> b!1294432 (= e!830087 e!830089)))

(declare-fun b!1294433 () Bool)

(assert (=> b!1294433 (= e!830089 call!88790)))

(declare-fun bm!88783 () Bool)

(declare-fun c!213098 () Bool)

(assert (=> bm!88783 (= call!88790 (validRegex!1529 (ite c!213098 (regTwo!7599 (ite c!213068 (reg!3872 lt!425589) (ite c!213069 (regOne!7599 lt!425589) (regOne!7598 lt!425589)))) (regTwo!7598 (ite c!213068 (reg!3872 lt!425589) (ite c!213069 (regOne!7599 lt!425589) (regOne!7598 lt!425589)))))))))

(declare-fun b!1294434 () Bool)

(declare-fun e!830090 () Bool)

(declare-fun call!88788 () Bool)

(assert (=> b!1294434 (= e!830090 call!88788)))

(declare-fun b!1294435 () Bool)

(declare-fun e!830091 () Bool)

(assert (=> b!1294435 (= e!830091 e!830087)))

(assert (=> b!1294435 (= c!213098 ((_ is Union!3543) (ite c!213068 (reg!3872 lt!425589) (ite c!213069 (regOne!7599 lt!425589) (regOne!7598 lt!425589)))))))

(declare-fun bm!88784 () Bool)

(assert (=> bm!88784 (= call!88789 call!88788)))

(declare-fun b!1294436 () Bool)

(assert (=> b!1294436 (= e!830091 e!830090)))

(declare-fun res!579953 () Bool)

(assert (=> b!1294436 (= res!579953 (not (nullable!1129 (reg!3872 (ite c!213068 (reg!3872 lt!425589) (ite c!213069 (regOne!7599 lt!425589) (regOne!7598 lt!425589)))))))))

(assert (=> b!1294436 (=> (not res!579953) (not e!830090))))

(declare-fun bm!88785 () Bool)

(declare-fun c!213097 () Bool)

(assert (=> bm!88785 (= call!88788 (validRegex!1529 (ite c!213097 (reg!3872 (ite c!213068 (reg!3872 lt!425589) (ite c!213069 (regOne!7599 lt!425589) (regOne!7598 lt!425589)))) (ite c!213098 (regOne!7599 (ite c!213068 (reg!3872 lt!425589) (ite c!213069 (regOne!7599 lt!425589) (regOne!7598 lt!425589)))) (regOne!7598 (ite c!213068 (reg!3872 lt!425589) (ite c!213069 (regOne!7599 lt!425589) (regOne!7598 lt!425589))))))))))

(declare-fun b!1294429 () Bool)

(declare-fun e!830092 () Bool)

(assert (=> b!1294429 (= e!830092 e!830091)))

(assert (=> b!1294429 (= c!213097 ((_ is Star!3543) (ite c!213068 (reg!3872 lt!425589) (ite c!213069 (regOne!7599 lt!425589) (regOne!7598 lt!425589)))))))

(declare-fun d!365201 () Bool)

(declare-fun res!579952 () Bool)

(assert (=> d!365201 (=> res!579952 e!830092)))

(assert (=> d!365201 (= res!579952 ((_ is ElementMatch!3543) (ite c!213068 (reg!3872 lt!425589) (ite c!213069 (regOne!7599 lt!425589) (regOne!7598 lt!425589)))))))

(assert (=> d!365201 (= (validRegex!1529 (ite c!213068 (reg!3872 lt!425589) (ite c!213069 (regOne!7599 lt!425589) (regOne!7598 lt!425589)))) e!830092)))

(assert (= (and d!365201 (not res!579952)) b!1294429))

(assert (= (and b!1294429 c!213097) b!1294436))

(assert (= (and b!1294429 (not c!213097)) b!1294435))

(assert (= (and b!1294436 res!579953) b!1294434))

(assert (= (and b!1294435 c!213098) b!1294432))

(assert (= (and b!1294435 (not c!213098)) b!1294430))

(assert (= (and b!1294432 res!579951) b!1294433))

(assert (= (and b!1294430 (not res!579954)) b!1294428))

(assert (= (and b!1294428 res!579955) b!1294431))

(assert (= (or b!1294432 b!1294428) bm!88784))

(assert (= (or b!1294433 b!1294431) bm!88783))

(assert (= (or b!1294434 bm!88784) bm!88785))

(declare-fun m!1445489 () Bool)

(assert (=> bm!88783 m!1445489))

(declare-fun m!1445491 () Bool)

(assert (=> b!1294436 m!1445491))

(declare-fun m!1445493 () Bool)

(assert (=> bm!88785 m!1445493))

(assert (=> bm!88779 d!365201))

(declare-fun d!365203 () Bool)

(assert (=> d!365203 (= (isEmpty!7692 (map!2818 rules!2550 lambda!50865)) ((_ is Nil!12948) (map!2818 rules!2550 lambda!50865)))))

(assert (=> b!1294102 d!365203))

(declare-fun b!1294437 () Bool)

(declare-fun e!830095 () Bool)

(declare-fun e!830094 () Bool)

(assert (=> b!1294437 (= e!830095 e!830094)))

(declare-fun res!579958 () Bool)

(assert (=> b!1294437 (=> (not res!579958) (not e!830094))))

(assert (=> b!1294437 (= res!579958 (not ((_ is Nil!12940) res!579878)))))

(declare-fun b!1294438 () Bool)

(declare-fun res!579959 () Bool)

(assert (=> b!1294438 (=> (not res!579959) (not e!830094))))

(assert (=> b!1294438 (= res!579959 (= (head!2220 lt!425591) (head!2220 res!579878)))))

(declare-fun b!1294440 () Bool)

(declare-fun e!830096 () Bool)

(assert (=> b!1294440 (= e!830096 (>= (size!10573 res!579878) (size!10573 lt!425591)))))

(declare-fun d!365205 () Bool)

(assert (=> d!365205 e!830096))

(declare-fun res!579956 () Bool)

(assert (=> d!365205 (=> res!579956 e!830096)))

(declare-fun lt!425903 () Bool)

(assert (=> d!365205 (= res!579956 (not lt!425903))))

(assert (=> d!365205 (= lt!425903 e!830095)))

(declare-fun res!579957 () Bool)

(assert (=> d!365205 (=> res!579957 e!830095)))

(assert (=> d!365205 (= res!579957 ((_ is Nil!12940) lt!425591))))

(assert (=> d!365205 (= (isPrefix!1054 lt!425591 res!579878) lt!425903)))

(declare-fun b!1294439 () Bool)

(assert (=> b!1294439 (= e!830094 (isPrefix!1054 (tail!1848 lt!425591) (tail!1848 res!579878)))))

(assert (= (and d!365205 (not res!579957)) b!1294437))

(assert (= (and b!1294437 res!579958) b!1294438))

(assert (= (and b!1294438 res!579959) b!1294439))

(assert (= (and d!365205 (not res!579956)) b!1294440))

(assert (=> b!1294438 m!1444527))

(declare-fun m!1445495 () Bool)

(assert (=> b!1294438 m!1445495))

(declare-fun m!1445497 () Bool)

(assert (=> b!1294440 m!1445497))

(assert (=> b!1294440 m!1444249))

(assert (=> b!1294439 m!1444531))

(declare-fun m!1445499 () Bool)

(assert (=> b!1294439 m!1445499))

(assert (=> b!1294439 m!1444531))

(assert (=> b!1294439 m!1445499))

(declare-fun m!1445501 () Bool)

(assert (=> b!1294439 m!1445501))

(assert (=> b!1294421 d!365205))

(declare-fun d!365207 () Bool)

(declare-fun res!579964 () Bool)

(declare-fun e!830101 () Bool)

(assert (=> d!365207 (=> res!579964 e!830101)))

(assert (=> d!365207 (= res!579964 ((_ is Nil!12948) (map!2818 rules!2550 lambda!50898)))))

(assert (=> d!365207 (= (forall!3253 (map!2818 rules!2550 lambda!50898) lambda!50899) e!830101)))

(declare-fun b!1294445 () Bool)

(declare-fun e!830102 () Bool)

(assert (=> b!1294445 (= e!830101 e!830102)))

(declare-fun res!579965 () Bool)

(assert (=> b!1294445 (=> (not res!579965) (not e!830102))))

(declare-fun dynLambda!5667 (Int Regex!3543) Bool)

(assert (=> b!1294445 (= res!579965 (dynLambda!5667 lambda!50899 (h!18349 (map!2818 rules!2550 lambda!50898))))))

(declare-fun b!1294446 () Bool)

(assert (=> b!1294446 (= e!830102 (forall!3253 (t!117357 (map!2818 rules!2550 lambda!50898)) lambda!50899))))

(assert (= (and d!365207 (not res!579964)) b!1294445))

(assert (= (and b!1294445 res!579965) b!1294446))

(declare-fun b_lambda!37047 () Bool)

(assert (=> (not b_lambda!37047) (not b!1294445)))

(declare-fun m!1445503 () Bool)

(assert (=> b!1294445 m!1445503))

(declare-fun m!1445505 () Bool)

(assert (=> b!1294446 m!1445505))

(assert (=> d!365033 d!365207))

(declare-fun d!365209 () Bool)

(declare-fun lt!425904 () List!13014)

(assert (=> d!365209 (= (size!10578 lt!425904) (size!10579 rules!2550))))

(declare-fun e!830103 () List!13014)

(assert (=> d!365209 (= lt!425904 e!830103)))

(declare-fun c!213099 () Bool)

(assert (=> d!365209 (= c!213099 ((_ is Nil!12942) rules!2550))))

(assert (=> d!365209 (= (map!2818 rules!2550 lambda!50898) lt!425904)))

(declare-fun b!1294447 () Bool)

(assert (=> b!1294447 (= e!830103 Nil!12948)))

(declare-fun b!1294448 () Bool)

(assert (=> b!1294448 (= e!830103 ($colon$colon!134 (map!2818 (t!117317 rules!2550) lambda!50898) (dynLambda!5663 lambda!50898 (h!18343 rules!2550))))))

(assert (= (and d!365209 c!213099) b!1294447))

(assert (= (and d!365209 (not c!213099)) b!1294448))

(declare-fun b_lambda!37049 () Bool)

(assert (=> (not b_lambda!37049) (not b!1294448)))

(declare-fun m!1445507 () Bool)

(assert (=> d!365209 m!1445507))

(assert (=> d!365209 m!1445177))

(declare-fun m!1445509 () Bool)

(assert (=> b!1294448 m!1445509))

(declare-fun m!1445511 () Bool)

(assert (=> b!1294448 m!1445511))

(assert (=> b!1294448 m!1445509))

(assert (=> b!1294448 m!1445511))

(declare-fun m!1445513 () Bool)

(assert (=> b!1294448 m!1445513))

(assert (=> d!365033 d!365209))

(declare-fun bs!328840 () Bool)

(declare-fun d!365211 () Bool)

(assert (= bs!328840 (and d!365211 d!365169)))

(declare-fun lambda!50918 () Int)

(assert (=> bs!328840 (= lambda!50918 lambda!50915)))

(assert (=> d!365211 true))

(declare-fun lt!425907 () Bool)

(assert (=> d!365211 (= lt!425907 (forall!3256 rules!2550 lambda!50918))))

(declare-fun e!830109 () Bool)

(assert (=> d!365211 (= lt!425907 e!830109)))

(declare-fun res!579970 () Bool)

(assert (=> d!365211 (=> res!579970 e!830109)))

(assert (=> d!365211 (= res!579970 (not ((_ is Cons!12942) rules!2550)))))

(assert (=> d!365211 (= (rulesValidInductive!705 thiss!19762 rules!2550) lt!425907)))

(declare-fun b!1294453 () Bool)

(declare-fun e!830108 () Bool)

(assert (=> b!1294453 (= e!830109 e!830108)))

(declare-fun res!579971 () Bool)

(assert (=> b!1294453 (=> (not res!579971) (not e!830108))))

(declare-fun ruleValid!546 (LexerInterface!1924 Rule!4258) Bool)

(assert (=> b!1294453 (= res!579971 (ruleValid!546 thiss!19762 (h!18343 rules!2550)))))

(declare-fun b!1294454 () Bool)

(assert (=> b!1294454 (= e!830108 (rulesValidInductive!705 thiss!19762 (t!117317 rules!2550)))))

(assert (= (and d!365211 (not res!579970)) b!1294453))

(assert (= (and b!1294453 res!579971) b!1294454))

(declare-fun m!1445515 () Bool)

(assert (=> d!365211 m!1445515))

(declare-fun m!1445517 () Bool)

(assert (=> b!1294453 m!1445517))

(declare-fun m!1445519 () Bool)

(assert (=> b!1294454 m!1445519))

(assert (=> d!365033 d!365211))

(declare-fun d!365213 () Bool)

(declare-fun c!213102 () Bool)

(assert (=> d!365213 (= c!213102 ((_ is Nil!12941) (text!16682 (value!73159 t1!34))))))

(declare-fun e!830112 () Int)

(assert (=> d!365213 (= (charsToBigInt!0 (text!16682 (value!73159 t1!34)) 0) e!830112)))

(declare-fun b!1294459 () Bool)

(assert (=> b!1294459 (= e!830112 0)))

(declare-fun b!1294460 () Bool)

(declare-fun charToBigInt!0 ((_ BitVec 16)) Int)

(assert (=> b!1294460 (= e!830112 (charsToBigInt!0 (t!117316 (text!16682 (value!73159 t1!34))) (+ (* 0 10) (charToBigInt!0 (h!18342 (text!16682 (value!73159 t1!34)))))))))

(assert (= (and d!365213 c!213102) b!1294459))

(assert (= (and d!365213 (not c!213102)) b!1294460))

(declare-fun m!1445521 () Bool)

(assert (=> b!1294460 m!1445521))

(declare-fun m!1445523 () Bool)

(assert (=> b!1294460 m!1445523))

(assert (=> d!365013 d!365213))

(declare-fun d!365215 () Bool)

(assert (=> d!365215 (= ($colon$colon!134 (map!2818 (t!117317 rules!2550) lambda!50865) (dynLambda!5663 lambda!50865 (h!18343 rules!2550))) (Cons!12948 (dynLambda!5663 lambda!50865 (h!18343 rules!2550)) (map!2818 (t!117317 rules!2550) lambda!50865)))))

(assert (=> b!1294167 d!365215))

(declare-fun d!365217 () Bool)

(declare-fun lt!425908 () List!13014)

(assert (=> d!365217 (= (size!10578 lt!425908) (size!10579 (t!117317 rules!2550)))))

(declare-fun e!830113 () List!13014)

(assert (=> d!365217 (= lt!425908 e!830113)))

(declare-fun c!213103 () Bool)

(assert (=> d!365217 (= c!213103 ((_ is Nil!12942) (t!117317 rules!2550)))))

(assert (=> d!365217 (= (map!2818 (t!117317 rules!2550) lambda!50865) lt!425908)))

(declare-fun b!1294461 () Bool)

(assert (=> b!1294461 (= e!830113 Nil!12948)))

(declare-fun b!1294462 () Bool)

(assert (=> b!1294462 (= e!830113 ($colon$colon!134 (map!2818 (t!117317 (t!117317 rules!2550)) lambda!50865) (dynLambda!5663 lambda!50865 (h!18343 (t!117317 rules!2550)))))))

(assert (= (and d!365217 c!213103) b!1294461))

(assert (= (and d!365217 (not c!213103)) b!1294462))

(declare-fun b_lambda!37051 () Bool)

(assert (=> (not b_lambda!37051) (not b!1294462)))

(declare-fun m!1445525 () Bool)

(assert (=> d!365217 m!1445525))

(declare-fun m!1445527 () Bool)

(assert (=> d!365217 m!1445527))

(declare-fun m!1445529 () Bool)

(assert (=> b!1294462 m!1445529))

(declare-fun m!1445531 () Bool)

(assert (=> b!1294462 m!1445531))

(assert (=> b!1294462 m!1445529))

(assert (=> b!1294462 m!1445531))

(declare-fun m!1445533 () Bool)

(assert (=> b!1294462 m!1445533))

(assert (=> b!1294167 d!365217))

(declare-fun d!365219 () Bool)

(assert (=> d!365219 (= (list!4840 (_1!7227 lt!425729)) (list!4844 (c!212884 (_1!7227 lt!425729))))))

(declare-fun bs!328841 () Bool)

(assert (= bs!328841 d!365219))

(declare-fun m!1445535 () Bool)

(assert (=> bs!328841 m!1445535))

(assert (=> b!1293844 d!365219))

(declare-fun b!1294473 () Bool)

(declare-fun e!830121 () tuple2!12686)

(assert (=> b!1294473 (= e!830121 (tuple2!12687 Nil!12946 (list!4837 (print!724 thiss!19762 (singletonSeq!814 t2!34)))))))

(declare-fun b!1294474 () Bool)

(declare-fun e!830120 () Bool)

(declare-fun e!830122 () Bool)

(assert (=> b!1294474 (= e!830120 e!830122)))

(declare-fun res!579974 () Bool)

(declare-fun lt!425915 () tuple2!12686)

(assert (=> b!1294474 (= res!579974 (< (size!10573 (_2!7229 lt!425915)) (size!10573 (list!4837 (print!724 thiss!19762 (singletonSeq!814 t2!34))))))))

(assert (=> b!1294474 (=> (not res!579974) (not e!830122))))

(declare-fun d!365221 () Bool)

(assert (=> d!365221 e!830120))

(declare-fun c!213108 () Bool)

(assert (=> d!365221 (= c!213108 (> (size!10580 (_1!7229 lt!425915)) 0))))

(assert (=> d!365221 (= lt!425915 e!830121)))

(declare-fun c!213109 () Bool)

(declare-datatypes ((tuple2!12688 0))(
  ( (tuple2!12689 (_1!7230 Token!4120) (_2!7230 List!13006)) )
))
(declare-datatypes ((Option!2533 0))(
  ( (None!2532) (Some!2532 (v!21013 tuple2!12688)) )
))
(declare-fun lt!425917 () Option!2533)

(assert (=> d!365221 (= c!213109 ((_ is Some!2532) lt!425917))))

(declare-fun maxPrefix!979 (LexerInterface!1924 List!13008 List!13006) Option!2533)

(assert (=> d!365221 (= lt!425917 (maxPrefix!979 thiss!19762 rules!2550 (list!4837 (print!724 thiss!19762 (singletonSeq!814 t2!34)))))))

(assert (=> d!365221 (= (lexList!500 thiss!19762 rules!2550 (list!4837 (print!724 thiss!19762 (singletonSeq!814 t2!34)))) lt!425915)))

(declare-fun b!1294475 () Bool)

(declare-fun isEmpty!7694 (List!13012) Bool)

(assert (=> b!1294475 (= e!830122 (not (isEmpty!7694 (_1!7229 lt!425915))))))

(declare-fun b!1294476 () Bool)

(declare-fun lt!425916 () tuple2!12686)

(assert (=> b!1294476 (= e!830121 (tuple2!12687 (Cons!12946 (_1!7230 (v!21013 lt!425917)) (_1!7229 lt!425916)) (_2!7229 lt!425916)))))

(assert (=> b!1294476 (= lt!425916 (lexList!500 thiss!19762 rules!2550 (_2!7230 (v!21013 lt!425917))))))

(declare-fun b!1294477 () Bool)

(assert (=> b!1294477 (= e!830120 (= (_2!7229 lt!425915) (list!4837 (print!724 thiss!19762 (singletonSeq!814 t2!34)))))))

(assert (= (and d!365221 c!213109) b!1294476))

(assert (= (and d!365221 (not c!213109)) b!1294473))

(assert (= (and d!365221 c!213108) b!1294474))

(assert (= (and d!365221 (not c!213108)) b!1294477))

(assert (= (and b!1294474 res!579974) b!1294475))

(declare-fun m!1445537 () Bool)

(assert (=> b!1294474 m!1445537))

(assert (=> b!1294474 m!1444871))

(assert (=> b!1294474 m!1445471))

(declare-fun m!1445539 () Bool)

(assert (=> d!365221 m!1445539))

(assert (=> d!365221 m!1444871))

(declare-fun m!1445541 () Bool)

(assert (=> d!365221 m!1445541))

(declare-fun m!1445543 () Bool)

(assert (=> b!1294475 m!1445543))

(declare-fun m!1445545 () Bool)

(assert (=> b!1294476 m!1445545))

(assert (=> b!1293844 d!365221))

(declare-fun d!365225 () Bool)

(assert (=> d!365225 (= (list!4837 (print!724 thiss!19762 (singletonSeq!814 t2!34))) (list!4841 (c!212845 (print!724 thiss!19762 (singletonSeq!814 t2!34)))))))

(declare-fun bs!328842 () Bool)

(assert (= bs!328842 d!365225))

(declare-fun m!1445547 () Bool)

(assert (=> bs!328842 m!1445547))

(assert (=> b!1293844 d!365225))

(declare-fun d!365227 () Bool)

(assert (=> d!365227 (= (isEmpty!7687 (tail!1848 lt!425619)) ((_ is Nil!12940) (tail!1848 lt!425619)))))

(assert (=> b!1294005 d!365227))

(declare-fun d!365229 () Bool)

(assert (=> d!365229 (= (tail!1848 lt!425619) (t!117315 lt!425619))))

(assert (=> b!1294005 d!365229))

(declare-fun d!365231 () Bool)

(assert (=> d!365231 (= (inv!17361 (tag!2491 (h!18343 (t!117317 (t!117317 rules!2550))))) (= (mod (str.len (value!73158 (tag!2491 (h!18343 (t!117317 (t!117317 rules!2550)))))) 2) 0))))

(assert (=> b!1294374 d!365231))

(declare-fun d!365233 () Bool)

(declare-fun res!579975 () Bool)

(declare-fun e!830123 () Bool)

(assert (=> d!365233 (=> (not res!579975) (not e!830123))))

(assert (=> d!365233 (= res!579975 (semiInverseModEq!848 (toChars!3291 (transformation!2229 (h!18343 (t!117317 (t!117317 rules!2550))))) (toValue!3432 (transformation!2229 (h!18343 (t!117317 (t!117317 rules!2550)))))))))

(assert (=> d!365233 (= (inv!17364 (transformation!2229 (h!18343 (t!117317 (t!117317 rules!2550))))) e!830123)))

(declare-fun b!1294478 () Bool)

(assert (=> b!1294478 (= e!830123 (equivClasses!807 (toChars!3291 (transformation!2229 (h!18343 (t!117317 (t!117317 rules!2550))))) (toValue!3432 (transformation!2229 (h!18343 (t!117317 (t!117317 rules!2550)))))))))

(assert (= (and d!365233 res!579975) b!1294478))

(declare-fun m!1445549 () Bool)

(assert (=> d!365233 m!1445549))

(declare-fun m!1445551 () Bool)

(assert (=> b!1294478 m!1445551))

(assert (=> b!1294374 d!365233))

(declare-fun b!1294479 () Bool)

(declare-fun e!830125 () Bool)

(declare-fun e!830130 () Bool)

(assert (=> b!1294479 (= e!830125 e!830130)))

(declare-fun res!579980 () Bool)

(assert (=> b!1294479 (=> (not res!579980) (not e!830130))))

(declare-fun call!88792 () Bool)

(assert (=> b!1294479 (= res!579980 call!88792)))

(declare-fun b!1294481 () Bool)

(declare-fun res!579979 () Bool)

(assert (=> b!1294481 (=> res!579979 e!830125)))

(assert (=> b!1294481 (= res!579979 (not ((_ is Concat!5863) lt!425816)))))

(declare-fun e!830124 () Bool)

(assert (=> b!1294481 (= e!830124 e!830125)))

(declare-fun b!1294482 () Bool)

(declare-fun call!88793 () Bool)

(assert (=> b!1294482 (= e!830130 call!88793)))

(declare-fun b!1294483 () Bool)

(declare-fun res!579976 () Bool)

(declare-fun e!830126 () Bool)

(assert (=> b!1294483 (=> (not res!579976) (not e!830126))))

(assert (=> b!1294483 (= res!579976 call!88792)))

(assert (=> b!1294483 (= e!830124 e!830126)))

(declare-fun b!1294484 () Bool)

(assert (=> b!1294484 (= e!830126 call!88793)))

(declare-fun bm!88786 () Bool)

(declare-fun c!213111 () Bool)

(assert (=> bm!88786 (= call!88793 (validRegex!1529 (ite c!213111 (regTwo!7599 lt!425816) (regTwo!7598 lt!425816))))))

(declare-fun b!1294485 () Bool)

(declare-fun e!830127 () Bool)

(declare-fun call!88791 () Bool)

(assert (=> b!1294485 (= e!830127 call!88791)))

(declare-fun b!1294486 () Bool)

(declare-fun e!830128 () Bool)

(assert (=> b!1294486 (= e!830128 e!830124)))

(assert (=> b!1294486 (= c!213111 ((_ is Union!3543) lt!425816))))

(declare-fun bm!88787 () Bool)

(assert (=> bm!88787 (= call!88792 call!88791)))

(declare-fun b!1294487 () Bool)

(assert (=> b!1294487 (= e!830128 e!830127)))

(declare-fun res!579978 () Bool)

(assert (=> b!1294487 (= res!579978 (not (nullable!1129 (reg!3872 lt!425816))))))

(assert (=> b!1294487 (=> (not res!579978) (not e!830127))))

(declare-fun c!213110 () Bool)

(declare-fun bm!88788 () Bool)

(assert (=> bm!88788 (= call!88791 (validRegex!1529 (ite c!213110 (reg!3872 lt!425816) (ite c!213111 (regOne!7599 lt!425816) (regOne!7598 lt!425816)))))))

(declare-fun b!1294480 () Bool)

(declare-fun e!830129 () Bool)

(assert (=> b!1294480 (= e!830129 e!830128)))

(assert (=> b!1294480 (= c!213110 ((_ is Star!3543) lt!425816))))

(declare-fun d!365235 () Bool)

(declare-fun res!579977 () Bool)

(assert (=> d!365235 (=> res!579977 e!830129)))

(assert (=> d!365235 (= res!579977 ((_ is ElementMatch!3543) lt!425816))))

(assert (=> d!365235 (= (validRegex!1529 lt!425816) e!830129)))

(assert (= (and d!365235 (not res!579977)) b!1294480))

(assert (= (and b!1294480 c!213110) b!1294487))

(assert (= (and b!1294480 (not c!213110)) b!1294486))

(assert (= (and b!1294487 res!579978) b!1294485))

(assert (= (and b!1294486 c!213111) b!1294483))

(assert (= (and b!1294486 (not c!213111)) b!1294481))

(assert (= (and b!1294483 res!579976) b!1294484))

(assert (= (and b!1294481 (not res!579979)) b!1294479))

(assert (= (and b!1294479 res!579980) b!1294482))

(assert (= (or b!1294483 b!1294479) bm!88787))

(assert (= (or b!1294484 b!1294482) bm!88786))

(assert (= (or b!1294485 bm!88787) bm!88788))

(declare-fun m!1445555 () Bool)

(assert (=> bm!88786 m!1445555))

(declare-fun m!1445557 () Bool)

(assert (=> b!1294487 m!1445557))

(declare-fun m!1445559 () Bool)

(assert (=> bm!88788 m!1445559))

(assert (=> d!365037 d!365235))

(declare-fun d!365239 () Bool)

(declare-fun res!579981 () Bool)

(declare-fun e!830132 () Bool)

(assert (=> d!365239 (=> res!579981 e!830132)))

(assert (=> d!365239 (= res!579981 ((_ is Nil!12948) (map!2818 rules!2550 lambda!50865)))))

(assert (=> d!365239 (= (forall!3253 (map!2818 rules!2550 lambda!50865) lambda!50903) e!830132)))

(declare-fun b!1294490 () Bool)

(declare-fun e!830133 () Bool)

(assert (=> b!1294490 (= e!830132 e!830133)))

(declare-fun res!579982 () Bool)

(assert (=> b!1294490 (=> (not res!579982) (not e!830133))))

(assert (=> b!1294490 (= res!579982 (dynLambda!5667 lambda!50903 (h!18349 (map!2818 rules!2550 lambda!50865))))))

(declare-fun b!1294491 () Bool)

(assert (=> b!1294491 (= e!830133 (forall!3253 (t!117357 (map!2818 rules!2550 lambda!50865)) lambda!50903))))

(assert (= (and d!365239 (not res!579981)) b!1294490))

(assert (= (and b!1294490 res!579982) b!1294491))

(declare-fun b_lambda!37053 () Bool)

(assert (=> (not b_lambda!37053) (not b!1294490)))

(declare-fun m!1445563 () Bool)

(assert (=> b!1294490 m!1445563))

(declare-fun m!1445565 () Bool)

(assert (=> b!1294491 m!1445565))

(assert (=> d!365037 d!365239))

(declare-fun d!365243 () Bool)

(declare-fun c!213113 () Bool)

(assert (=> d!365243 (= c!213113 ((_ is Node!4251) (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))))))

(declare-fun e!830134 () Bool)

(assert (=> d!365243 (= (inv!17368 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))) e!830134)))

(declare-fun b!1294492 () Bool)

(assert (=> b!1294492 (= e!830134 (inv!17372 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))))))

(declare-fun b!1294493 () Bool)

(declare-fun e!830135 () Bool)

(assert (=> b!1294493 (= e!830134 e!830135)))

(declare-fun res!579983 () Bool)

(assert (=> b!1294493 (= res!579983 (not ((_ is Leaf!6562) (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))))))

(assert (=> b!1294493 (=> res!579983 e!830135)))

(declare-fun b!1294494 () Bool)

(assert (=> b!1294494 (= e!830135 (inv!17373 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))))))

(assert (= (and d!365243 c!213113) b!1294492))

(assert (= (and d!365243 (not c!213113)) b!1294493))

(assert (= (and b!1294493 (not res!579983)) b!1294494))

(declare-fun m!1445567 () Bool)

(assert (=> b!1294492 m!1445567))

(declare-fun m!1445569 () Bool)

(assert (=> b!1294494 m!1445569))

(assert (=> b!1294405 d!365243))

(declare-fun d!365247 () Bool)

(declare-fun c!213114 () Bool)

(assert (=> d!365247 (= c!213114 ((_ is Node!4251) (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))))))

(declare-fun e!830136 () Bool)

(assert (=> d!365247 (= (inv!17368 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))) e!830136)))

(declare-fun b!1294495 () Bool)

(assert (=> b!1294495 (= e!830136 (inv!17372 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))))))

(declare-fun b!1294496 () Bool)

(declare-fun e!830137 () Bool)

(assert (=> b!1294496 (= e!830136 e!830137)))

(declare-fun res!579984 () Bool)

(assert (=> b!1294496 (= res!579984 (not ((_ is Leaf!6562) (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))))))

(assert (=> b!1294496 (=> res!579984 e!830137)))

(declare-fun b!1294497 () Bool)

(assert (=> b!1294497 (= e!830137 (inv!17373 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))))))

(assert (= (and d!365247 c!213114) b!1294495))

(assert (= (and d!365247 (not c!213114)) b!1294496))

(assert (= (and b!1294496 (not res!579984)) b!1294497))

(declare-fun m!1445571 () Bool)

(assert (=> b!1294495 m!1445571))

(declare-fun m!1445573 () Bool)

(assert (=> b!1294497 m!1445573))

(assert (=> b!1294405 d!365247))

(declare-fun d!365249 () Bool)

(declare-fun lt!425919 () Int)

(assert (=> d!365249 (>= lt!425919 0)))

(declare-fun e!830138 () Int)

(assert (=> d!365249 (= lt!425919 e!830138)))

(declare-fun c!213115 () Bool)

(assert (=> d!365249 (= c!213115 ((_ is Nil!12940) (t!117315 lt!425613)))))

(assert (=> d!365249 (= (size!10573 (t!117315 lt!425613)) lt!425919)))

(declare-fun b!1294498 () Bool)

(assert (=> b!1294498 (= e!830138 0)))

(declare-fun b!1294499 () Bool)

(assert (=> b!1294499 (= e!830138 (+ 1 (size!10573 (t!117315 (t!117315 lt!425613)))))))

(assert (= (and d!365249 c!213115) b!1294498))

(assert (= (and d!365249 (not c!213115)) b!1294499))

(declare-fun m!1445575 () Bool)

(assert (=> b!1294499 m!1445575))

(assert (=> b!1294286 d!365249))

(declare-fun d!365251 () Bool)

(declare-fun c!213116 () Bool)

(assert (=> d!365251 (= c!213116 ((_ is Nil!12940) (t!117315 (getSuffix!399 lt!425588 lt!425591))))))

(declare-fun e!830139 () (InoxSet C!7376))

(assert (=> d!365251 (= (content!1829 (t!117315 (getSuffix!399 lt!425588 lt!425591))) e!830139)))

(declare-fun b!1294500 () Bool)

(assert (=> b!1294500 (= e!830139 ((as const (Array C!7376 Bool)) false))))

(declare-fun b!1294501 () Bool)

(assert (=> b!1294501 (= e!830139 ((_ map or) (store ((as const (Array C!7376 Bool)) false) (h!18341 (t!117315 (getSuffix!399 lt!425588 lt!425591))) true) (content!1829 (t!117315 (t!117315 (getSuffix!399 lt!425588 lt!425591))))))))

(assert (= (and d!365251 c!213116) b!1294500))

(assert (= (and d!365251 (not c!213116)) b!1294501))

(declare-fun m!1445579 () Bool)

(assert (=> b!1294501 m!1445579))

(declare-fun m!1445581 () Bool)

(assert (=> b!1294501 m!1445581))

(assert (=> b!1293951 d!365251))

(assert (=> b!1293926 d!365113))

(declare-fun d!365255 () Bool)

(declare-fun choose!7945 (Int) Bool)

(assert (=> d!365255 (= (Forall!507 lambda!50907) (choose!7945 lambda!50907))))

(declare-fun bs!328847 () Bool)

(assert (= bs!328847 d!365255))

(declare-fun m!1445587 () Bool)

(assert (=> bs!328847 m!1445587))

(assert (=> d!365101 d!365255))

(declare-fun d!365263 () Bool)

(declare-fun c!213117 () Bool)

(assert (=> d!365263 (= c!213117 ((_ is Nil!12940) lt!425695))))

(declare-fun e!830140 () (InoxSet C!7376))

(assert (=> d!365263 (= (content!1829 lt!425695) e!830140)))

(declare-fun b!1294502 () Bool)

(assert (=> b!1294502 (= e!830140 ((as const (Array C!7376 Bool)) false))))

(declare-fun b!1294503 () Bool)

(assert (=> b!1294503 (= e!830140 ((_ map or) (store ((as const (Array C!7376 Bool)) false) (h!18341 lt!425695) true) (content!1829 (t!117315 lt!425695))))))

(assert (= (and d!365263 c!213117) b!1294502))

(assert (= (and d!365263 (not c!213117)) b!1294503))

(declare-fun m!1445589 () Bool)

(assert (=> b!1294503 m!1445589))

(declare-fun m!1445591 () Bool)

(assert (=> b!1294503 m!1445591))

(assert (=> d!364891 d!365263))

(declare-fun d!365265 () Bool)

(declare-fun c!213118 () Bool)

(assert (=> d!365265 (= c!213118 ((_ is Nil!12940) (t!117315 lt!425591)))))

(declare-fun e!830141 () (InoxSet C!7376))

(assert (=> d!365265 (= (content!1829 (t!117315 lt!425591)) e!830141)))

(declare-fun b!1294504 () Bool)

(assert (=> b!1294504 (= e!830141 ((as const (Array C!7376 Bool)) false))))

(declare-fun b!1294505 () Bool)

(assert (=> b!1294505 (= e!830141 ((_ map or) (store ((as const (Array C!7376 Bool)) false) (h!18341 (t!117315 lt!425591)) true) (content!1829 (t!117315 (t!117315 lt!425591)))))))

(assert (= (and d!365265 c!213118) b!1294504))

(assert (= (and d!365265 (not c!213118)) b!1294505))

(declare-fun m!1445593 () Bool)

(assert (=> b!1294505 m!1445593))

(declare-fun m!1445595 () Bool)

(assert (=> b!1294505 m!1445595))

(assert (=> d!364891 d!365265))

(assert (=> d!364891 d!365027))

(declare-fun d!365267 () Bool)

(declare-fun choose!7946 (Int) Bool)

(assert (=> d!365267 (= (Forall2!409 lambda!50911) (choose!7946 lambda!50911))))

(declare-fun bs!328848 () Bool)

(assert (= bs!328848 d!365267))

(declare-fun m!1445597 () Bool)

(assert (=> bs!328848 m!1445597))

(assert (=> d!365137 d!365267))

(declare-fun d!365269 () Bool)

(assert (=> d!365269 (= (list!4837 lt!425821) (list!4841 (c!212845 lt!425821)))))

(declare-fun bs!328849 () Bool)

(assert (= bs!328849 d!365269))

(declare-fun m!1445599 () Bool)

(assert (=> bs!328849 m!1445599))

(assert (=> d!365059 d!365269))

(declare-fun d!365271 () Bool)

(declare-fun c!213121 () Bool)

(assert (=> d!365271 (= c!213121 ((_ is Cons!12946) (list!4840 (singletonSeq!814 t1!34))))))

(declare-fun e!830144 () List!13006)

(assert (=> d!365271 (= (printList!544 thiss!19762 (list!4840 (singletonSeq!814 t1!34))) e!830144)))

(declare-fun b!1294510 () Bool)

(assert (=> b!1294510 (= e!830144 (++!3282 (list!4837 (charsOf!1201 (h!18347 (list!4840 (singletonSeq!814 t1!34))))) (printList!544 thiss!19762 (t!117355 (list!4840 (singletonSeq!814 t1!34))))))))

(declare-fun b!1294511 () Bool)

(assert (=> b!1294511 (= e!830144 Nil!12940)))

(assert (= (and d!365271 c!213121) b!1294510))

(assert (= (and d!365271 (not c!213121)) b!1294511))

(declare-fun m!1445607 () Bool)

(assert (=> b!1294510 m!1445607))

(assert (=> b!1294510 m!1445607))

(declare-fun m!1445609 () Bool)

(assert (=> b!1294510 m!1445609))

(declare-fun m!1445611 () Bool)

(assert (=> b!1294510 m!1445611))

(assert (=> b!1294510 m!1445609))

(assert (=> b!1294510 m!1445611))

(declare-fun m!1445613 () Bool)

(assert (=> b!1294510 m!1445613))

(assert (=> d!365059 d!365271))

(assert (=> d!365059 d!365067))

(declare-fun d!365279 () Bool)

(declare-fun lt!425953 () BalanceConc!8442)

(declare-fun printListTailRec!226 (LexerInterface!1924 List!13012 List!13006) List!13006)

(declare-fun dropList!353 (BalanceConc!8446 Int) List!13012)

(assert (=> d!365279 (= (list!4837 lt!425953) (printListTailRec!226 thiss!19762 (dropList!353 (singletonSeq!814 t1!34) 0) (list!4837 (BalanceConc!8443 Empty!4251))))))

(declare-fun e!830168 () BalanceConc!8442)

(assert (=> d!365279 (= lt!425953 e!830168)))

(declare-fun c!213133 () Bool)

(assert (=> d!365279 (= c!213133 (>= 0 (size!10574 (singletonSeq!814 t1!34))))))

(declare-fun e!830167 () Bool)

(assert (=> d!365279 e!830167))

(declare-fun res!579996 () Bool)

(assert (=> d!365279 (=> (not res!579996) (not e!830167))))

(assert (=> d!365279 (= res!579996 (>= 0 0))))

(assert (=> d!365279 (= (printTailRec!526 thiss!19762 (singletonSeq!814 t1!34) 0 (BalanceConc!8443 Empty!4251)) lt!425953)))

(declare-fun b!1294545 () Bool)

(assert (=> b!1294545 (= e!830167 (<= 0 (size!10574 (singletonSeq!814 t1!34))))))

(declare-fun b!1294546 () Bool)

(assert (=> b!1294546 (= e!830168 (BalanceConc!8443 Empty!4251))))

(declare-fun b!1294547 () Bool)

(assert (=> b!1294547 (= e!830168 (printTailRec!526 thiss!19762 (singletonSeq!814 t1!34) (+ 0 1) (++!3284 (BalanceConc!8443 Empty!4251) (charsOf!1201 (apply!2849 (singletonSeq!814 t1!34) 0)))))))

(declare-fun lt!425952 () List!13012)

(assert (=> b!1294547 (= lt!425952 (list!4840 (singletonSeq!814 t1!34)))))

(declare-fun lt!425956 () Unit!19084)

(declare-fun lemmaDropApply!417 (List!13012 Int) Unit!19084)

(assert (=> b!1294547 (= lt!425956 (lemmaDropApply!417 lt!425952 0))))

(declare-fun head!2223 (List!13012) Token!4120)

(declare-fun drop!654 (List!13012 Int) List!13012)

(assert (=> b!1294547 (= (head!2223 (drop!654 lt!425952 0)) (apply!2855 lt!425952 0))))

(declare-fun lt!425951 () Unit!19084)

(assert (=> b!1294547 (= lt!425951 lt!425956)))

(declare-fun lt!425954 () List!13012)

(assert (=> b!1294547 (= lt!425954 (list!4840 (singletonSeq!814 t1!34)))))

(declare-fun lt!425955 () Unit!19084)

(declare-fun lemmaDropTail!397 (List!13012 Int) Unit!19084)

(assert (=> b!1294547 (= lt!425955 (lemmaDropTail!397 lt!425954 0))))

(declare-fun tail!1851 (List!13012) List!13012)

(assert (=> b!1294547 (= (tail!1851 (drop!654 lt!425954 0)) (drop!654 lt!425954 (+ 0 1)))))

(declare-fun lt!425957 () Unit!19084)

(assert (=> b!1294547 (= lt!425957 lt!425955)))

(assert (= (and d!365279 res!579996) b!1294545))

(assert (= (and d!365279 c!213133) b!1294546))

(assert (= (and d!365279 (not c!213133)) b!1294547))

(assert (=> d!365279 m!1444471))

(declare-fun m!1445659 () Bool)

(assert (=> d!365279 m!1445659))

(assert (=> d!365279 m!1444471))

(declare-fun m!1445661 () Bool)

(assert (=> d!365279 m!1445661))

(declare-fun m!1445663 () Bool)

(assert (=> d!365279 m!1445663))

(declare-fun m!1445665 () Bool)

(assert (=> d!365279 m!1445665))

(assert (=> d!365279 m!1445661))

(assert (=> d!365279 m!1445665))

(declare-fun m!1445667 () Bool)

(assert (=> d!365279 m!1445667))

(assert (=> b!1294545 m!1444471))

(assert (=> b!1294545 m!1445659))

(declare-fun m!1445669 () Bool)

(assert (=> b!1294547 m!1445669))

(declare-fun m!1445671 () Bool)

(assert (=> b!1294547 m!1445671))

(assert (=> b!1294547 m!1444471))

(declare-fun m!1445673 () Bool)

(assert (=> b!1294547 m!1445673))

(declare-fun m!1445675 () Bool)

(assert (=> b!1294547 m!1445675))

(declare-fun m!1445679 () Bool)

(assert (=> b!1294547 m!1445679))

(declare-fun m!1445681 () Bool)

(assert (=> b!1294547 m!1445681))

(declare-fun m!1445685 () Bool)

(assert (=> b!1294547 m!1445685))

(declare-fun m!1445687 () Bool)

(assert (=> b!1294547 m!1445687))

(declare-fun m!1445689 () Bool)

(assert (=> b!1294547 m!1445689))

(assert (=> b!1294547 m!1445669))

(assert (=> b!1294547 m!1445679))

(declare-fun m!1445691 () Bool)

(assert (=> b!1294547 m!1445691))

(declare-fun m!1445693 () Bool)

(assert (=> b!1294547 m!1445693))

(declare-fun m!1445695 () Bool)

(assert (=> b!1294547 m!1445695))

(assert (=> b!1294547 m!1445689))

(assert (=> b!1294547 m!1445673))

(assert (=> b!1294547 m!1444471))

(assert (=> b!1294547 m!1444473))

(assert (=> b!1294547 m!1444471))

(assert (=> b!1294547 m!1445687))

(assert (=> d!365059 d!365279))

(declare-fun e!830181 () List!13012)

(declare-fun b!1294572 () Bool)

(declare-fun list!4846 (IArray!8511) List!13012)

(assert (=> b!1294572 (= e!830181 (list!4846 (xs!6964 (c!212884 (_1!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34))))))))))

(declare-fun b!1294571 () Bool)

(declare-fun e!830180 () List!13012)

(assert (=> b!1294571 (= e!830180 e!830181)))

(declare-fun c!213146 () Bool)

(assert (=> b!1294571 (= c!213146 ((_ is Leaf!6564) (c!212884 (_1!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34)))))))))

(declare-fun b!1294570 () Bool)

(assert (=> b!1294570 (= e!830180 Nil!12946)))

(declare-fun c!213145 () Bool)

(declare-fun d!365295 () Bool)

(assert (=> d!365295 (= c!213145 ((_ is Empty!4253) (c!212884 (_1!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34)))))))))

(assert (=> d!365295 (= (list!4844 (c!212884 (_1!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34)))))) e!830180)))

(declare-fun b!1294573 () Bool)

(declare-fun ++!3287 (List!13012 List!13012) List!13012)

(assert (=> b!1294573 (= e!830181 (++!3287 (list!4844 (left!11133 (c!212884 (_1!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34))))))) (list!4844 (right!11463 (c!212884 (_1!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34)))))))))))

(assert (= (and d!365295 c!213145) b!1294570))

(assert (= (and d!365295 (not c!213145)) b!1294571))

(assert (= (and b!1294571 c!213146) b!1294572))

(assert (= (and b!1294571 (not c!213146)) b!1294573))

(declare-fun m!1445715 () Bool)

(assert (=> b!1294572 m!1445715))

(declare-fun m!1445717 () Bool)

(assert (=> b!1294573 m!1445717))

(declare-fun m!1445719 () Bool)

(assert (=> b!1294573 m!1445719))

(assert (=> b!1294573 m!1445717))

(assert (=> b!1294573 m!1445719))

(declare-fun m!1445723 () Bool)

(assert (=> b!1294573 m!1445723))

(assert (=> d!365115 d!365295))

(assert (=> b!1294200 d!365135))

(declare-fun bs!328862 () Bool)

(declare-fun d!365305 () Bool)

(assert (= bs!328862 (and d!365305 d!364955)))

(declare-fun lambda!50922 () Int)

(assert (=> bs!328862 (= (and (= (toChars!3291 (transformation!2229 (h!18343 (t!117317 rules!2550)))) (toChars!3291 (transformation!2229 (rule!3968 t2!34)))) (= (toValue!3432 (transformation!2229 (h!18343 (t!117317 rules!2550)))) (toValue!3432 (transformation!2229 (rule!3968 t2!34))))) (= lambda!50922 lambda!50876))))

(declare-fun bs!328863 () Bool)

(assert (= bs!328863 (and d!365305 d!364961)))

(assert (=> bs!328863 (= (and (= (toChars!3291 (transformation!2229 (h!18343 (t!117317 rules!2550)))) (toChars!3291 (transformation!2229 (h!18343 rules!2550)))) (= (toValue!3432 (transformation!2229 (h!18343 (t!117317 rules!2550)))) (toValue!3432 (transformation!2229 (h!18343 rules!2550))))) (= lambda!50922 lambda!50877))))

(declare-fun bs!328864 () Bool)

(assert (= bs!328864 (and d!365305 d!365101)))

(assert (=> bs!328864 (= (and (= (toChars!3291 (transformation!2229 (h!18343 (t!117317 rules!2550)))) (toChars!3291 (transformation!2229 (rule!3968 t1!34)))) (= (toValue!3432 (transformation!2229 (h!18343 (t!117317 rules!2550)))) (toValue!3432 (transformation!2229 (rule!3968 t1!34))))) (= lambda!50922 lambda!50907))))

(assert (=> d!365305 true))

(assert (=> d!365305 (< (dynLambda!5660 order!7881 (toChars!3291 (transformation!2229 (h!18343 (t!117317 rules!2550))))) (dynLambda!5661 order!7883 lambda!50922))))

(assert (=> d!365305 true))

(assert (=> d!365305 (< (dynLambda!5662 order!7885 (toValue!3432 (transformation!2229 (h!18343 (t!117317 rules!2550))))) (dynLambda!5661 order!7883 lambda!50922))))

(assert (=> d!365305 (= (semiInverseModEq!848 (toChars!3291 (transformation!2229 (h!18343 (t!117317 rules!2550)))) (toValue!3432 (transformation!2229 (h!18343 (t!117317 rules!2550))))) (Forall!507 lambda!50922))))

(declare-fun bs!328865 () Bool)

(assert (= bs!328865 d!365305))

(declare-fun m!1445739 () Bool)

(assert (=> bs!328865 m!1445739))

(assert (=> d!365161 d!365305))

(declare-fun d!365313 () Bool)

(declare-fun res!579997 () Bool)

(declare-fun e!830186 () Bool)

(assert (=> d!365313 (=> res!579997 e!830186)))

(assert (=> d!365313 (= res!579997 ((_ is Nil!12942) (t!117317 rules!2550)))))

(assert (=> d!365313 (= (noDuplicateTag!817 thiss!19762 (t!117317 rules!2550) (Cons!12947 (tag!2491 (h!18343 rules!2550)) Nil!12947)) e!830186)))

(declare-fun b!1294582 () Bool)

(declare-fun e!830187 () Bool)

(assert (=> b!1294582 (= e!830186 e!830187)))

(declare-fun res!579998 () Bool)

(assert (=> b!1294582 (=> (not res!579998) (not e!830187))))

(assert (=> b!1294582 (= res!579998 (not (contains!2162 (Cons!12947 (tag!2491 (h!18343 rules!2550)) Nil!12947) (tag!2491 (h!18343 (t!117317 rules!2550))))))))

(declare-fun b!1294583 () Bool)

(assert (=> b!1294583 (= e!830187 (noDuplicateTag!817 thiss!19762 (t!117317 (t!117317 rules!2550)) (Cons!12947 (tag!2491 (h!18343 (t!117317 rules!2550))) (Cons!12947 (tag!2491 (h!18343 rules!2550)) Nil!12947))))))

(assert (= (and d!365313 (not res!579997)) b!1294582))

(assert (= (and b!1294582 res!579998) b!1294583))

(declare-fun m!1445741 () Bool)

(assert (=> b!1294582 m!1445741))

(declare-fun m!1445747 () Bool)

(assert (=> b!1294583 m!1445747))

(assert (=> b!1294209 d!365313))

(declare-fun d!365317 () Bool)

(assert (=> d!365317 (= (list!4837 lt!425850) (list!4841 (c!212845 lt!425850)))))

(declare-fun bs!328866 () Bool)

(assert (= bs!328866 d!365317))

(declare-fun m!1445753 () Bool)

(assert (=> bs!328866 m!1445753))

(assert (=> b!1294300 d!365317))

(declare-fun b!1294587 () Bool)

(declare-fun e!830190 () Bool)

(declare-fun lt!425962 () List!13006)

(assert (=> b!1294587 (= e!830190 (or (not (= (list!4837 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))) Nil!12940)) (= lt!425962 (list!4837 (charsOf!1201 t1!34)))))))

(declare-fun b!1294585 () Bool)

(declare-fun e!830191 () List!13006)

(assert (=> b!1294585 (= e!830191 (Cons!12940 (h!18341 (list!4837 (charsOf!1201 t1!34))) (++!3282 (t!117315 (list!4837 (charsOf!1201 t1!34))) (list!4837 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))))))

(declare-fun b!1294586 () Bool)

(declare-fun res!580000 () Bool)

(assert (=> b!1294586 (=> (not res!580000) (not e!830190))))

(assert (=> b!1294586 (= res!580000 (= (size!10573 lt!425962) (+ (size!10573 (list!4837 (charsOf!1201 t1!34))) (size!10573 (list!4837 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))))))

(declare-fun b!1294584 () Bool)

(assert (=> b!1294584 (= e!830191 (list!4837 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))))

(declare-fun d!365319 () Bool)

(assert (=> d!365319 e!830190))

(declare-fun res!580001 () Bool)

(assert (=> d!365319 (=> (not res!580001) (not e!830190))))

(assert (=> d!365319 (= res!580001 (= (content!1829 lt!425962) ((_ map or) (content!1829 (list!4837 (charsOf!1201 t1!34))) (content!1829 (list!4837 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))))))

(assert (=> d!365319 (= lt!425962 e!830191)))

(declare-fun c!213151 () Bool)

(assert (=> d!365319 (= c!213151 ((_ is Nil!12940) (list!4837 (charsOf!1201 t1!34))))))

(assert (=> d!365319 (= (++!3282 (list!4837 (charsOf!1201 t1!34)) (list!4837 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))) lt!425962)))

(assert (= (and d!365319 c!213151) b!1294584))

(assert (= (and d!365319 (not c!213151)) b!1294585))

(assert (= (and d!365319 res!580001) b!1294586))

(assert (= (and b!1294586 res!580000) b!1294587))

(assert (=> b!1294585 m!1445355))

(declare-fun m!1445757 () Bool)

(assert (=> b!1294585 m!1445757))

(declare-fun m!1445759 () Bool)

(assert (=> b!1294586 m!1445759))

(assert (=> b!1294586 m!1445353))

(declare-fun m!1445761 () Bool)

(assert (=> b!1294586 m!1445761))

(assert (=> b!1294586 m!1445355))

(declare-fun m!1445763 () Bool)

(assert (=> b!1294586 m!1445763))

(declare-fun m!1445765 () Bool)

(assert (=> d!365319 m!1445765))

(assert (=> d!365319 m!1445353))

(declare-fun m!1445767 () Bool)

(assert (=> d!365319 m!1445767))

(assert (=> d!365319 m!1445355))

(declare-fun m!1445769 () Bool)

(assert (=> d!365319 m!1445769))

(assert (=> b!1294300 d!365319))

(declare-fun d!365323 () Bool)

(assert (=> d!365323 (= (list!4837 (charsOf!1201 t1!34)) (list!4841 (c!212845 (charsOf!1201 t1!34))))))

(declare-fun bs!328867 () Bool)

(assert (= bs!328867 d!365323))

(declare-fun m!1445771 () Bool)

(assert (=> bs!328867 m!1445771))

(assert (=> b!1294300 d!365323))

(declare-fun d!365325 () Bool)

(assert (=> d!365325 (= (list!4837 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))) (list!4841 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))))

(declare-fun bs!328868 () Bool)

(assert (= bs!328868 d!365325))

(declare-fun m!1445773 () Bool)

(assert (=> bs!328868 m!1445773))

(assert (=> b!1294300 d!365325))

(declare-fun d!365327 () Bool)

(declare-fun choose!625 (List!13007) (_ BitVec 32))

(assert (=> d!365327 (= (charsToInt!0 (text!16680 (value!73159 t2!34))) (choose!625 (text!16680 (value!73159 t2!34))))))

(declare-fun bs!328869 () Bool)

(assert (= bs!328869 d!365327))

(declare-fun m!1445789 () Bool)

(assert (=> bs!328869 m!1445789))

(assert (=> d!365011 d!365327))

(declare-fun d!365331 () Bool)

(declare-fun c!213160 () Bool)

(assert (=> d!365331 (= c!213160 ((_ is Empty!4251) (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))))

(declare-fun e!830202 () List!13006)

(assert (=> d!365331 (= (list!4841 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))) e!830202)))

(declare-fun b!1294612 () Bool)

(declare-fun e!830203 () List!13006)

(assert (=> b!1294612 (= e!830202 e!830203)))

(declare-fun c!213161 () Bool)

(assert (=> b!1294612 (= c!213161 ((_ is Leaf!6562) (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))))

(declare-fun b!1294614 () Bool)

(assert (=> b!1294614 (= e!830203 (list!4845 (xs!6962 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))))))

(declare-fun b!1294615 () Bool)

(assert (=> b!1294615 (= e!830203 (++!3282 (list!4841 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))) (list!4841 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))))))

(declare-fun b!1294610 () Bool)

(assert (=> b!1294610 (= e!830202 Nil!12940)))

(assert (= (and d!365331 c!213160) b!1294610))

(assert (= (and d!365331 (not c!213160)) b!1294612))

(assert (= (and b!1294612 c!213161) b!1294614))

(assert (= (and b!1294612 (not c!213161)) b!1294615))

(declare-fun m!1445791 () Bool)

(assert (=> b!1294614 m!1445791))

(declare-fun m!1445793 () Bool)

(assert (=> b!1294615 m!1445793))

(declare-fun m!1445795 () Bool)

(assert (=> b!1294615 m!1445795))

(assert (=> b!1294615 m!1445793))

(assert (=> b!1294615 m!1445795))

(declare-fun m!1445797 () Bool)

(assert (=> b!1294615 m!1445797))

(assert (=> d!365103 d!365331))

(declare-fun b!1294619 () Bool)

(declare-fun lt!425965 () List!13006)

(declare-fun e!830204 () Bool)

(assert (=> b!1294619 (= e!830204 (or (not (= (getSuffix!399 lt!425588 lt!425591) Nil!12940)) (= lt!425965 (t!117315 (t!117315 lt!425591)))))))

(declare-fun b!1294617 () Bool)

(declare-fun e!830205 () List!13006)

(assert (=> b!1294617 (= e!830205 (Cons!12940 (h!18341 (t!117315 (t!117315 lt!425591))) (++!3282 (t!117315 (t!117315 (t!117315 lt!425591))) (getSuffix!399 lt!425588 lt!425591))))))

(declare-fun b!1294618 () Bool)

(declare-fun res!580009 () Bool)

(assert (=> b!1294618 (=> (not res!580009) (not e!830204))))

(assert (=> b!1294618 (= res!580009 (= (size!10573 lt!425965) (+ (size!10573 (t!117315 (t!117315 lt!425591))) (size!10573 (getSuffix!399 lt!425588 lt!425591)))))))

(declare-fun b!1294616 () Bool)

(assert (=> b!1294616 (= e!830205 (getSuffix!399 lt!425588 lt!425591))))

(declare-fun d!365333 () Bool)

(assert (=> d!365333 e!830204))

(declare-fun res!580010 () Bool)

(assert (=> d!365333 (=> (not res!580010) (not e!830204))))

(assert (=> d!365333 (= res!580010 (= (content!1829 lt!425965) ((_ map or) (content!1829 (t!117315 (t!117315 lt!425591))) (content!1829 (getSuffix!399 lt!425588 lt!425591)))))))

(assert (=> d!365333 (= lt!425965 e!830205)))

(declare-fun c!213162 () Bool)

(assert (=> d!365333 (= c!213162 ((_ is Nil!12940) (t!117315 (t!117315 lt!425591))))))

(assert (=> d!365333 (= (++!3282 (t!117315 (t!117315 lt!425591)) (getSuffix!399 lt!425588 lt!425591)) lt!425965)))

(assert (= (and d!365333 c!213162) b!1294616))

(assert (= (and d!365333 (not c!213162)) b!1294617))

(assert (= (and d!365333 res!580010) b!1294618))

(assert (= (and b!1294618 res!580009) b!1294619))

(assert (=> b!1294617 m!1444161))

(declare-fun m!1445803 () Bool)

(assert (=> b!1294617 m!1445803))

(declare-fun m!1445807 () Bool)

(assert (=> b!1294618 m!1445807))

(declare-fun m!1445809 () Bool)

(assert (=> b!1294618 m!1445809))

(assert (=> b!1294618 m!1444161))

(assert (=> b!1294618 m!1444251))

(declare-fun m!1445811 () Bool)

(assert (=> d!365333 m!1445811))

(assert (=> d!365333 m!1445595))

(assert (=> d!365333 m!1444161))

(assert (=> d!365333 m!1444257))

(assert (=> b!1293747 d!365333))

(declare-fun d!365339 () Bool)

(assert (=> d!365339 (= (Forall!507 lambda!50877) (choose!7945 lambda!50877))))

(declare-fun bs!328870 () Bool)

(assert (= bs!328870 d!365339))

(declare-fun m!1445813 () Bool)

(assert (=> bs!328870 m!1445813))

(assert (=> d!364961 d!365339))

(declare-fun d!365343 () Bool)

(declare-fun c!213163 () Bool)

(assert (=> d!365343 (= c!213163 ((_ is Empty!4251) (c!212845 lt!425590)))))

(declare-fun e!830206 () List!13006)

(assert (=> d!365343 (= (list!4841 (c!212845 lt!425590)) e!830206)))

(declare-fun b!1294621 () Bool)

(declare-fun e!830207 () List!13006)

(assert (=> b!1294621 (= e!830206 e!830207)))

(declare-fun c!213164 () Bool)

(assert (=> b!1294621 (= c!213164 ((_ is Leaf!6562) (c!212845 lt!425590)))))

(declare-fun b!1294622 () Bool)

(assert (=> b!1294622 (= e!830207 (list!4845 (xs!6962 (c!212845 lt!425590))))))

(declare-fun b!1294623 () Bool)

(assert (=> b!1294623 (= e!830207 (++!3282 (list!4841 (left!11131 (c!212845 lt!425590))) (list!4841 (right!11461 (c!212845 lt!425590)))))))

(declare-fun b!1294620 () Bool)

(assert (=> b!1294620 (= e!830206 Nil!12940)))

(assert (= (and d!365343 c!213163) b!1294620))

(assert (= (and d!365343 (not c!213163)) b!1294621))

(assert (= (and b!1294621 c!213164) b!1294622))

(assert (= (and b!1294621 (not c!213164)) b!1294623))

(declare-fun m!1445815 () Bool)

(assert (=> b!1294622 m!1445815))

(assert (=> b!1294623 m!1445239))

(assert (=> b!1294623 m!1445241))

(assert (=> b!1294623 m!1445239))

(assert (=> b!1294623 m!1445241))

(declare-fun m!1445817 () Bool)

(assert (=> b!1294623 m!1445817))

(assert (=> d!365071 d!365343))

(declare-fun lt!425966 () List!13006)

(declare-fun e!830208 () Bool)

(declare-fun b!1294627 () Bool)

(assert (=> b!1294627 (= e!830208 (or (not (= lt!425687 Nil!12940)) (= lt!425966 (t!117315 lt!425591))))))

(declare-fun b!1294625 () Bool)

(declare-fun e!830209 () List!13006)

(assert (=> b!1294625 (= e!830209 (Cons!12940 (h!18341 (t!117315 lt!425591)) (++!3282 (t!117315 (t!117315 lt!425591)) lt!425687)))))

(declare-fun b!1294626 () Bool)

(declare-fun res!580011 () Bool)

(assert (=> b!1294626 (=> (not res!580011) (not e!830208))))

(assert (=> b!1294626 (= res!580011 (= (size!10573 lt!425966) (+ (size!10573 (t!117315 lt!425591)) (size!10573 lt!425687))))))

(declare-fun b!1294624 () Bool)

(assert (=> b!1294624 (= e!830209 lt!425687)))

(declare-fun d!365345 () Bool)

(assert (=> d!365345 e!830208))

(declare-fun res!580012 () Bool)

(assert (=> d!365345 (=> (not res!580012) (not e!830208))))

(assert (=> d!365345 (= res!580012 (= (content!1829 lt!425966) ((_ map or) (content!1829 (t!117315 lt!425591)) (content!1829 lt!425687))))))

(assert (=> d!365345 (= lt!425966 e!830209)))

(declare-fun c!213165 () Bool)

(assert (=> d!365345 (= c!213165 ((_ is Nil!12940) (t!117315 lt!425591)))))

(assert (=> d!365345 (= (++!3282 (t!117315 lt!425591) lt!425687) lt!425966)))

(assert (= (and d!365345 c!213165) b!1294624))

(assert (= (and d!365345 (not c!213165)) b!1294625))

(assert (= (and d!365345 res!580012) b!1294626))

(assert (= (and b!1294626 res!580011) b!1294627))

(declare-fun m!1445819 () Bool)

(assert (=> b!1294625 m!1445819))

(declare-fun m!1445821 () Bool)

(assert (=> b!1294626 m!1445821))

(assert (=> b!1294626 m!1444679))

(declare-fun m!1445823 () Bool)

(assert (=> b!1294626 m!1445823))

(declare-fun m!1445825 () Bool)

(assert (=> d!365345 m!1445825))

(assert (=> d!365345 m!1444705))

(declare-fun m!1445827 () Bool)

(assert (=> d!365345 m!1445827))

(assert (=> d!364879 d!365345))

(declare-fun d!365347 () Bool)

(declare-fun lt!425967 () Int)

(assert (=> d!365347 (>= lt!425967 0)))

(declare-fun e!830210 () Int)

(assert (=> d!365347 (= lt!425967 e!830210)))

(declare-fun c!213166 () Bool)

(assert (=> d!365347 (= c!213166 ((_ is Nil!12940) (tail!1848 lt!425588)))))

(assert (=> d!365347 (= (size!10573 (tail!1848 lt!425588)) lt!425967)))

(declare-fun b!1294628 () Bool)

(assert (=> b!1294628 (= e!830210 0)))

(declare-fun b!1294629 () Bool)

(assert (=> b!1294629 (= e!830210 (+ 1 (size!10573 (t!117315 (tail!1848 lt!425588)))))))

(assert (= (and d!365347 c!213166) b!1294628))

(assert (= (and d!365347 (not c!213166)) b!1294629))

(declare-fun m!1445829 () Bool)

(assert (=> b!1294629 m!1445829))

(assert (=> d!364879 d!365347))

(declare-fun d!365349 () Bool)

(declare-fun lt!425968 () Int)

(assert (=> d!365349 (>= lt!425968 0)))

(declare-fun e!830213 () Int)

(assert (=> d!365349 (= lt!425968 e!830213)))

(declare-fun c!213167 () Bool)

(assert (=> d!365349 (= c!213167 ((_ is Nil!12940) (t!117315 lt!425591)))))

(assert (=> d!365349 (= (size!10573 (t!117315 lt!425591)) lt!425968)))

(declare-fun b!1294634 () Bool)

(assert (=> b!1294634 (= e!830213 0)))

(declare-fun b!1294635 () Bool)

(assert (=> b!1294635 (= e!830213 (+ 1 (size!10573 (t!117315 (t!117315 lt!425591)))))))

(assert (= (and d!365349 c!213167) b!1294634))

(assert (= (and d!365349 (not c!213167)) b!1294635))

(assert (=> b!1294635 m!1445809))

(assert (=> d!364879 d!365349))

(declare-fun b!1294638 () Bool)

(declare-fun e!830215 () List!13012)

(assert (=> b!1294638 (= e!830215 (list!4846 (xs!6964 (c!212884 (singletonSeq!814 t2!34)))))))

(declare-fun b!1294637 () Bool)

(declare-fun e!830214 () List!13012)

(assert (=> b!1294637 (= e!830214 e!830215)))

(declare-fun c!213169 () Bool)

(assert (=> b!1294637 (= c!213169 ((_ is Leaf!6564) (c!212884 (singletonSeq!814 t2!34))))))

(declare-fun b!1294636 () Bool)

(assert (=> b!1294636 (= e!830214 Nil!12946)))

(declare-fun d!365351 () Bool)

(declare-fun c!213168 () Bool)

(assert (=> d!365351 (= c!213168 ((_ is Empty!4253) (c!212884 (singletonSeq!814 t2!34))))))

(assert (=> d!365351 (= (list!4844 (c!212884 (singletonSeq!814 t2!34))) e!830214)))

(declare-fun b!1294639 () Bool)

(assert (=> b!1294639 (= e!830215 (++!3287 (list!4844 (left!11133 (c!212884 (singletonSeq!814 t2!34)))) (list!4844 (right!11463 (c!212884 (singletonSeq!814 t2!34))))))))

(assert (= (and d!365351 c!213168) b!1294636))

(assert (= (and d!365351 (not c!213168)) b!1294637))

(assert (= (and b!1294637 c!213169) b!1294638))

(assert (= (and b!1294637 (not c!213169)) b!1294639))

(declare-fun m!1445831 () Bool)

(assert (=> b!1294638 m!1445831))

(declare-fun m!1445833 () Bool)

(assert (=> b!1294639 m!1445833))

(declare-fun m!1445835 () Bool)

(assert (=> b!1294639 m!1445835))

(assert (=> b!1294639 m!1445833))

(assert (=> b!1294639 m!1445835))

(declare-fun m!1445837 () Bool)

(assert (=> b!1294639 m!1445837))

(assert (=> d!365117 d!365351))

(declare-fun d!365353 () Bool)

(declare-fun lt!425969 () Int)

(assert (=> d!365353 (= lt!425969 (size!10580 (list!4840 (_1!7227 lt!425729))))))

(assert (=> d!365353 (= lt!425969 (size!10581 (c!212884 (_1!7227 lt!425729))))))

(assert (=> d!365353 (= (size!10574 (_1!7227 lt!425729)) lt!425969)))

(declare-fun bs!328871 () Bool)

(assert (= bs!328871 d!365353))

(assert (=> bs!328871 m!1444881))

(assert (=> bs!328871 m!1444881))

(declare-fun m!1445839 () Bool)

(assert (=> bs!328871 m!1445839))

(declare-fun m!1445841 () Bool)

(assert (=> bs!328871 m!1445841))

(assert (=> d!364899 d!365353))

(declare-fun lt!426084 () BalanceConc!8442)

(declare-datatypes ((tuple2!12692 0))(
  ( (tuple2!12693 (_1!7232 Token!4120) (_2!7232 BalanceConc!8442)) )
))
(declare-datatypes ((Option!2535 0))(
  ( (None!2534) (Some!2534 (v!21015 tuple2!12692)) )
))
(declare-fun lt!426086 () Option!2535)

(declare-fun b!1294809 () Bool)

(declare-fun e!830305 () tuple2!12682)

(declare-fun append!377 (BalanceConc!8446 Token!4120) BalanceConc!8446)

(assert (=> b!1294809 (= e!830305 (lexTailRecV2!349 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34)) lt!426084 (_2!7232 (v!21015 lt!426086)) (append!377 (BalanceConc!8447 Empty!4253) (_1!7232 (v!21015 lt!426086)))))))

(declare-fun lt!426096 () tuple2!12682)

(declare-fun lexRec!256 (LexerInterface!1924 List!13008 BalanceConc!8442) tuple2!12682)

(assert (=> b!1294809 (= lt!426096 (lexRec!256 thiss!19762 rules!2550 (_2!7232 (v!21015 lt!426086))))))

(declare-fun lt!426079 () List!13006)

(assert (=> b!1294809 (= lt!426079 (list!4837 (BalanceConc!8443 Empty!4251)))))

(declare-fun lt!426072 () List!13006)

(assert (=> b!1294809 (= lt!426072 (list!4837 (charsOf!1201 (_1!7232 (v!21015 lt!426086)))))))

(declare-fun lt!426074 () List!13006)

(assert (=> b!1294809 (= lt!426074 (list!4837 (_2!7232 (v!21015 lt!426086))))))

(declare-fun lt!426080 () Unit!19084)

(declare-fun lemmaConcatAssociativity!811 (List!13006 List!13006 List!13006) Unit!19084)

(assert (=> b!1294809 (= lt!426080 (lemmaConcatAssociativity!811 lt!426079 lt!426072 lt!426074))))

(assert (=> b!1294809 (= (++!3282 (++!3282 lt!426079 lt!426072) lt!426074) (++!3282 lt!426079 (++!3282 lt!426072 lt!426074)))))

(declare-fun lt!426075 () Unit!19084)

(assert (=> b!1294809 (= lt!426075 lt!426080)))

(declare-fun lt!426092 () Option!2535)

(declare-fun maxPrefixZipperSequence!529 (LexerInterface!1924 List!13008 BalanceConc!8442) Option!2535)

(assert (=> b!1294809 (= lt!426092 (maxPrefixZipperSequence!529 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34))))))

(declare-fun c!213227 () Bool)

(assert (=> b!1294809 (= c!213227 ((_ is Some!2534) lt!426092))))

(declare-fun e!830304 () tuple2!12682)

(assert (=> b!1294809 (= (lexRec!256 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34))) e!830304)))

(declare-fun lt!426085 () Unit!19084)

(declare-fun Unit!19092 () Unit!19084)

(assert (=> b!1294809 (= lt!426085 Unit!19092)))

(declare-fun lt!426088 () List!13012)

(assert (=> b!1294809 (= lt!426088 (list!4840 (BalanceConc!8447 Empty!4253)))))

(declare-fun lt!426100 () List!13012)

(assert (=> b!1294809 (= lt!426100 (Cons!12946 (_1!7232 (v!21015 lt!426086)) Nil!12946))))

(declare-fun lt!426083 () List!13012)

(assert (=> b!1294809 (= lt!426083 (list!4840 (_1!7227 lt!426096)))))

(declare-fun lt!426082 () Unit!19084)

(declare-fun lemmaConcatAssociativity!812 (List!13012 List!13012 List!13012) Unit!19084)

(assert (=> b!1294809 (= lt!426082 (lemmaConcatAssociativity!812 lt!426088 lt!426100 lt!426083))))

(assert (=> b!1294809 (= (++!3287 (++!3287 lt!426088 lt!426100) lt!426083) (++!3287 lt!426088 (++!3287 lt!426100 lt!426083)))))

(declare-fun lt!426081 () Unit!19084)

(assert (=> b!1294809 (= lt!426081 lt!426082)))

(declare-fun lt!426073 () List!13006)

(assert (=> b!1294809 (= lt!426073 (++!3282 (list!4837 (BalanceConc!8443 Empty!4251)) (list!4837 (charsOf!1201 (_1!7232 (v!21015 lt!426086))))))))

(declare-fun lt!426098 () List!13006)

(assert (=> b!1294809 (= lt!426098 (list!4837 (_2!7232 (v!21015 lt!426086))))))

(declare-fun lt!426101 () List!13012)

(assert (=> b!1294809 (= lt!426101 (list!4840 (append!377 (BalanceConc!8447 Empty!4253) (_1!7232 (v!21015 lt!426086)))))))

(declare-fun lt!426087 () Unit!19084)

(declare-fun lemmaLexThenLexPrefix!171 (LexerInterface!1924 List!13008 List!13006 List!13006 List!13012 List!13012 List!13006) Unit!19084)

(assert (=> b!1294809 (= lt!426087 (lemmaLexThenLexPrefix!171 thiss!19762 rules!2550 lt!426073 lt!426098 lt!426101 (list!4840 (_1!7227 lt!426096)) (list!4837 (_2!7227 lt!426096))))))

(assert (=> b!1294809 (= (lexList!500 thiss!19762 rules!2550 lt!426073) (tuple2!12687 lt!426101 Nil!12940))))

(declare-fun lt!426104 () Unit!19084)

(assert (=> b!1294809 (= lt!426104 lt!426087)))

(declare-fun lt!426102 () BalanceConc!8442)

(assert (=> b!1294809 (= lt!426102 (++!3284 (BalanceConc!8443 Empty!4251) (charsOf!1201 (_1!7232 (v!21015 lt!426086)))))))

(declare-fun lt!426097 () Option!2535)

(assert (=> b!1294809 (= lt!426097 (maxPrefixZipperSequence!529 thiss!19762 rules!2550 lt!426102))))

(declare-fun c!213228 () Bool)

(assert (=> b!1294809 (= c!213228 ((_ is Some!2534) lt!426097))))

(declare-fun e!830303 () tuple2!12682)

(assert (=> b!1294809 (= (lexRec!256 thiss!19762 rules!2550 (++!3284 (BalanceConc!8443 Empty!4251) (charsOf!1201 (_1!7232 (v!21015 lt!426086))))) e!830303)))

(declare-fun lt!426091 () Unit!19084)

(declare-fun Unit!19093 () Unit!19084)

(assert (=> b!1294809 (= lt!426091 Unit!19093)))

(assert (=> b!1294809 (= lt!426084 (++!3284 (BalanceConc!8443 Empty!4251) (charsOf!1201 (_1!7232 (v!21015 lt!426086)))))))

(declare-fun lt!426095 () List!13006)

(assert (=> b!1294809 (= lt!426095 (list!4837 lt!426084))))

(declare-fun lt!426089 () List!13006)

(assert (=> b!1294809 (= lt!426089 (list!4837 (_2!7232 (v!21015 lt!426086))))))

(declare-fun lt!426071 () Unit!19084)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!212 (List!13006 List!13006) Unit!19084)

(assert (=> b!1294809 (= lt!426071 (lemmaConcatTwoListThenFSndIsSuffix!212 lt!426095 lt!426089))))

(declare-fun isSuffix!234 (List!13006 List!13006) Bool)

(assert (=> b!1294809 (isSuffix!234 lt!426089 (++!3282 lt!426095 lt!426089))))

(declare-fun lt!426076 () Unit!19084)

(assert (=> b!1294809 (= lt!426076 lt!426071)))

(declare-fun b!1294810 () Bool)

(assert (=> b!1294810 (= e!830305 (tuple2!12683 (BalanceConc!8447 Empty!4253) (print!724 thiss!19762 (singletonSeq!814 t2!34))))))

(declare-fun lt!426094 () tuple2!12682)

(declare-fun b!1294811 () Bool)

(assert (=> b!1294811 (= lt!426094 (lexRec!256 thiss!19762 rules!2550 (_2!7232 (v!21015 lt!426092))))))

(declare-fun prepend!341 (BalanceConc!8446 Token!4120) BalanceConc!8446)

(assert (=> b!1294811 (= e!830304 (tuple2!12683 (prepend!341 (_1!7227 lt!426094) (_1!7232 (v!21015 lt!426092))) (_2!7227 lt!426094)))))

(declare-fun lt!426090 () tuple2!12682)

(declare-fun b!1294812 () Bool)

(assert (=> b!1294812 (= lt!426090 (lexRec!256 thiss!19762 rules!2550 (_2!7232 (v!21015 lt!426097))))))

(assert (=> b!1294812 (= e!830303 (tuple2!12683 (prepend!341 (_1!7227 lt!426090) (_1!7232 (v!21015 lt!426097))) (_2!7227 lt!426090)))))

(declare-fun b!1294813 () Bool)

(declare-fun lt!426103 () tuple2!12682)

(declare-fun e!830306 () Bool)

(assert (=> b!1294813 (= e!830306 (= (list!4837 (_2!7227 lt!426103)) (list!4837 (_2!7227 (lexRec!256 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34)))))))))

(declare-fun b!1294814 () Bool)

(assert (=> b!1294814 (= e!830304 (tuple2!12683 (BalanceConc!8447 Empty!4253) (print!724 thiss!19762 (singletonSeq!814 t2!34))))))

(declare-fun b!1294815 () Bool)

(assert (=> b!1294815 (= e!830303 (tuple2!12683 (BalanceConc!8447 Empty!4253) lt!426102))))

(declare-fun d!365355 () Bool)

(assert (=> d!365355 e!830306))

(declare-fun res!580072 () Bool)

(assert (=> d!365355 (=> (not res!580072) (not e!830306))))

(assert (=> d!365355 (= res!580072 (= (list!4840 (_1!7227 lt!426103)) (list!4840 (_1!7227 (lexRec!256 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34)))))))))

(assert (=> d!365355 (= lt!426103 e!830305)))

(declare-fun c!213229 () Bool)

(assert (=> d!365355 (= c!213229 ((_ is Some!2534) lt!426086))))

(declare-fun maxPrefixZipperSequenceV2!201 (LexerInterface!1924 List!13008 BalanceConc!8442 BalanceConc!8442) Option!2535)

(assert (=> d!365355 (= lt!426086 (maxPrefixZipperSequenceV2!201 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34)) (print!724 thiss!19762 (singletonSeq!814 t2!34))))))

(declare-fun lt!426099 () Unit!19084)

(declare-fun lt!426078 () Unit!19084)

(assert (=> d!365355 (= lt!426099 lt!426078)))

(declare-fun lt!426093 () List!13006)

(declare-fun lt!426077 () List!13006)

(assert (=> d!365355 (isSuffix!234 lt!426093 (++!3282 lt!426077 lt!426093))))

(assert (=> d!365355 (= lt!426078 (lemmaConcatTwoListThenFSndIsSuffix!212 lt!426077 lt!426093))))

(assert (=> d!365355 (= lt!426093 (list!4837 (print!724 thiss!19762 (singletonSeq!814 t2!34))))))

(assert (=> d!365355 (= lt!426077 (list!4837 (BalanceConc!8443 Empty!4251)))))

(assert (=> d!365355 (= (lexTailRecV2!349 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34)) (BalanceConc!8443 Empty!4251) (print!724 thiss!19762 (singletonSeq!814 t2!34)) (BalanceConc!8447 Empty!4253)) lt!426103)))

(assert (= (and d!365355 c!213229) b!1294809))

(assert (= (and d!365355 (not c!213229)) b!1294810))

(assert (= (and b!1294809 c!213227) b!1294811))

(assert (= (and b!1294809 (not c!213227)) b!1294814))

(assert (= (and b!1294809 c!213228) b!1294812))

(assert (= (and b!1294809 (not c!213228)) b!1294815))

(assert (= (and d!365355 res!580072) b!1294813))

(declare-fun m!1446001 () Bool)

(assert (=> b!1294812 m!1446001))

(declare-fun m!1446003 () Bool)

(assert (=> b!1294812 m!1446003))

(declare-fun m!1446005 () Bool)

(assert (=> b!1294809 m!1446005))

(declare-fun m!1446007 () Bool)

(assert (=> b!1294809 m!1446007))

(declare-fun m!1446009 () Bool)

(assert (=> b!1294809 m!1446009))

(assert (=> b!1294809 m!1445665))

(declare-fun m!1446011 () Bool)

(assert (=> b!1294809 m!1446011))

(declare-fun m!1446013 () Bool)

(assert (=> b!1294809 m!1446013))

(declare-fun m!1446015 () Bool)

(assert (=> b!1294809 m!1446015))

(assert (=> b!1294809 m!1444413))

(assert (=> b!1294809 m!1446007))

(declare-fun m!1446017 () Bool)

(assert (=> b!1294809 m!1446017))

(assert (=> b!1294809 m!1444413))

(declare-fun m!1446019 () Bool)

(assert (=> b!1294809 m!1446019))

(declare-fun m!1446021 () Bool)

(assert (=> b!1294809 m!1446021))

(declare-fun m!1446023 () Bool)

(assert (=> b!1294809 m!1446023))

(declare-fun m!1446025 () Bool)

(assert (=> b!1294809 m!1446025))

(assert (=> b!1294809 m!1444413))

(declare-fun m!1446027 () Bool)

(assert (=> b!1294809 m!1446027))

(assert (=> b!1294809 m!1446025))

(declare-fun m!1446029 () Bool)

(assert (=> b!1294809 m!1446029))

(declare-fun m!1446031 () Bool)

(assert (=> b!1294809 m!1446031))

(declare-fun m!1446033 () Bool)

(assert (=> b!1294809 m!1446033))

(declare-fun m!1446035 () Bool)

(assert (=> b!1294809 m!1446035))

(assert (=> b!1294809 m!1445665))

(declare-fun m!1446037 () Bool)

(assert (=> b!1294809 m!1446037))

(declare-fun m!1446039 () Bool)

(assert (=> b!1294809 m!1446039))

(declare-fun m!1446041 () Bool)

(assert (=> b!1294809 m!1446041))

(assert (=> b!1294809 m!1446033))

(declare-fun m!1446043 () Bool)

(assert (=> b!1294809 m!1446043))

(declare-fun m!1446045 () Bool)

(assert (=> b!1294809 m!1446045))

(declare-fun m!1446047 () Bool)

(assert (=> b!1294809 m!1446047))

(assert (=> b!1294809 m!1446021))

(declare-fun m!1446049 () Bool)

(assert (=> b!1294809 m!1446049))

(assert (=> b!1294809 m!1446005))

(declare-fun m!1446051 () Bool)

(assert (=> b!1294809 m!1446051))

(assert (=> b!1294809 m!1446047))

(declare-fun m!1446053 () Bool)

(assert (=> b!1294809 m!1446053))

(declare-fun m!1446055 () Bool)

(assert (=> b!1294809 m!1446055))

(declare-fun m!1446057 () Bool)

(assert (=> b!1294809 m!1446057))

(assert (=> b!1294809 m!1446007))

(declare-fun m!1446059 () Bool)

(assert (=> b!1294809 m!1446059))

(assert (=> b!1294809 m!1446025))

(assert (=> b!1294809 m!1446037))

(assert (=> b!1294809 m!1446049))

(assert (=> b!1294809 m!1446045))

(declare-fun m!1446061 () Bool)

(assert (=> b!1294809 m!1446061))

(declare-fun m!1446063 () Bool)

(assert (=> b!1294809 m!1446063))

(declare-fun m!1446065 () Bool)

(assert (=> b!1294809 m!1446065))

(assert (=> b!1294809 m!1446011))

(assert (=> b!1294809 m!1446029))

(declare-fun m!1446067 () Bool)

(assert (=> b!1294809 m!1446067))

(declare-fun m!1446069 () Bool)

(assert (=> b!1294813 m!1446069))

(assert (=> b!1294813 m!1444413))

(assert (=> b!1294813 m!1446019))

(declare-fun m!1446071 () Bool)

(assert (=> b!1294813 m!1446071))

(assert (=> d!365355 m!1444413))

(assert (=> d!365355 m!1446019))

(declare-fun m!1446073 () Bool)

(assert (=> d!365355 m!1446073))

(assert (=> d!365355 m!1445665))

(assert (=> d!365355 m!1444413))

(assert (=> d!365355 m!1444871))

(assert (=> d!365355 m!1446073))

(declare-fun m!1446075 () Bool)

(assert (=> d!365355 m!1446075))

(declare-fun m!1446077 () Bool)

(assert (=> d!365355 m!1446077))

(assert (=> d!365355 m!1444413))

(assert (=> d!365355 m!1444413))

(declare-fun m!1446079 () Bool)

(assert (=> d!365355 m!1446079))

(declare-fun m!1446081 () Bool)

(assert (=> d!365355 m!1446081))

(declare-fun m!1446083 () Bool)

(assert (=> d!365355 m!1446083))

(declare-fun m!1446085 () Bool)

(assert (=> b!1294811 m!1446085))

(declare-fun m!1446087 () Bool)

(assert (=> b!1294811 m!1446087))

(assert (=> d!364899 d!365355))

(declare-fun b!1294816 () Bool)

(declare-fun res!580073 () Bool)

(declare-fun e!830307 () Bool)

(assert (=> b!1294816 (=> (not res!580073) (not e!830307))))

(declare-fun call!88859 () Bool)

(assert (=> b!1294816 (= res!580073 (not call!88859))))

(declare-fun bm!88854 () Bool)

(assert (=> bm!88854 (= call!88859 (isEmpty!7687 res!579878))))

(declare-fun b!1294817 () Bool)

(declare-fun res!580077 () Bool)

(declare-fun e!830312 () Bool)

(assert (=> b!1294817 (=> res!580077 e!830312)))

(assert (=> b!1294817 (= res!580077 e!830307)))

(declare-fun res!580078 () Bool)

(assert (=> b!1294817 (=> (not res!580078) (not e!830307))))

(declare-fun lt!426105 () Bool)

(assert (=> b!1294817 (= res!580078 lt!426105)))

(declare-fun b!1294818 () Bool)

(declare-fun e!830310 () Bool)

(declare-fun e!830311 () Bool)

(assert (=> b!1294818 (= e!830310 e!830311)))

(declare-fun c!213232 () Bool)

(assert (=> b!1294818 (= c!213232 ((_ is EmptyLang!3543) lt!425589))))

(declare-fun b!1294819 () Bool)

(declare-fun e!830308 () Bool)

(assert (=> b!1294819 (= e!830312 e!830308)))

(declare-fun res!580074 () Bool)

(assert (=> b!1294819 (=> (not res!580074) (not e!830308))))

(assert (=> b!1294819 (= res!580074 (not lt!426105))))

(declare-fun b!1294820 () Bool)

(assert (=> b!1294820 (= e!830307 (= (head!2220 res!579878) (c!212846 lt!425589)))))

(declare-fun b!1294821 () Bool)

(declare-fun res!580080 () Bool)

(assert (=> b!1294821 (=> res!580080 e!830312)))

(assert (=> b!1294821 (= res!580080 (not ((_ is ElementMatch!3543) lt!425589)))))

(assert (=> b!1294821 (= e!830311 e!830312)))

(declare-fun b!1294822 () Bool)

(declare-fun res!580076 () Bool)

(declare-fun e!830309 () Bool)

(assert (=> b!1294822 (=> res!580076 e!830309)))

(assert (=> b!1294822 (= res!580076 (not (isEmpty!7687 (tail!1848 res!579878))))))

(declare-fun d!365423 () Bool)

(assert (=> d!365423 e!830310))

(declare-fun c!213230 () Bool)

(assert (=> d!365423 (= c!213230 ((_ is EmptyExpr!3543) lt!425589))))

(declare-fun e!830313 () Bool)

(assert (=> d!365423 (= lt!426105 e!830313)))

(declare-fun c!213231 () Bool)

(assert (=> d!365423 (= c!213231 (isEmpty!7687 res!579878))))

(assert (=> d!365423 (validRegex!1529 lt!425589)))

(assert (=> d!365423 (= (matchR!1551 lt!425589 res!579878) lt!426105)))

(declare-fun b!1294823 () Bool)

(assert (=> b!1294823 (= e!830313 (nullable!1129 lt!425589))))

(declare-fun b!1294824 () Bool)

(assert (=> b!1294824 (= e!830308 e!830309)))

(declare-fun res!580079 () Bool)

(assert (=> b!1294824 (=> res!580079 e!830309)))

(assert (=> b!1294824 (= res!580079 call!88859)))

(declare-fun b!1294825 () Bool)

(declare-fun res!580075 () Bool)

(assert (=> b!1294825 (=> (not res!580075) (not e!830307))))

(assert (=> b!1294825 (= res!580075 (isEmpty!7687 (tail!1848 res!579878)))))

(declare-fun b!1294826 () Bool)

(assert (=> b!1294826 (= e!830311 (not lt!426105))))

(declare-fun b!1294827 () Bool)

(assert (=> b!1294827 (= e!830309 (not (= (head!2220 res!579878) (c!212846 lt!425589))))))

(declare-fun b!1294828 () Bool)

(assert (=> b!1294828 (= e!830313 (matchR!1551 (derivativeStep!879 lt!425589 (head!2220 res!579878)) (tail!1848 res!579878)))))

(declare-fun b!1294829 () Bool)

(assert (=> b!1294829 (= e!830310 (= lt!426105 call!88859))))

(assert (= (and d!365423 c!213231) b!1294823))

(assert (= (and d!365423 (not c!213231)) b!1294828))

(assert (= (and d!365423 c!213230) b!1294829))

(assert (= (and d!365423 (not c!213230)) b!1294818))

(assert (= (and b!1294818 c!213232) b!1294826))

(assert (= (and b!1294818 (not c!213232)) b!1294821))

(assert (= (and b!1294821 (not res!580080)) b!1294817))

(assert (= (and b!1294817 res!580078) b!1294816))

(assert (= (and b!1294816 res!580073) b!1294825))

(assert (= (and b!1294825 res!580075) b!1294820))

(assert (= (and b!1294817 (not res!580077)) b!1294819))

(assert (= (and b!1294819 res!580074) b!1294824))

(assert (= (and b!1294824 (not res!580079)) b!1294822))

(assert (= (and b!1294822 (not res!580076)) b!1294827))

(assert (= (or b!1294829 b!1294816 b!1294824) bm!88854))

(assert (=> b!1294823 m!1445067))

(assert (=> b!1294828 m!1445495))

(assert (=> b!1294828 m!1445495))

(declare-fun m!1446089 () Bool)

(assert (=> b!1294828 m!1446089))

(assert (=> b!1294828 m!1445499))

(assert (=> b!1294828 m!1446089))

(assert (=> b!1294828 m!1445499))

(declare-fun m!1446091 () Bool)

(assert (=> b!1294828 m!1446091))

(declare-fun m!1446093 () Bool)

(assert (=> d!365423 m!1446093))

(assert (=> d!365423 m!1444431))

(assert (=> b!1294820 m!1445495))

(assert (=> bm!88854 m!1446093))

(assert (=> b!1294827 m!1445495))

(assert (=> b!1294822 m!1445499))

(assert (=> b!1294822 m!1445499))

(declare-fun m!1446095 () Bool)

(assert (=> b!1294822 m!1446095))

(assert (=> b!1294825 m!1445499))

(assert (=> b!1294825 m!1445499))

(assert (=> b!1294825 m!1446095))

(assert (=> bs!328834 d!365423))

(declare-fun b!1294830 () Bool)

(declare-fun e!830315 () Bool)

(declare-fun e!830320 () Bool)

(assert (=> b!1294830 (= e!830315 e!830320)))

(declare-fun res!580085 () Bool)

(assert (=> b!1294830 (=> (not res!580085) (not e!830320))))

(declare-fun call!88861 () Bool)

(assert (=> b!1294830 (= res!580085 call!88861)))

(declare-fun b!1294832 () Bool)

(declare-fun res!580084 () Bool)

(assert (=> b!1294832 (=> res!580084 e!830315)))

(assert (=> b!1294832 (= res!580084 (not ((_ is Concat!5863) lt!425780)))))

(declare-fun e!830314 () Bool)

(assert (=> b!1294832 (= e!830314 e!830315)))

(declare-fun b!1294833 () Bool)

(declare-fun call!88862 () Bool)

(assert (=> b!1294833 (= e!830320 call!88862)))

(declare-fun b!1294834 () Bool)

(declare-fun res!580081 () Bool)

(declare-fun e!830316 () Bool)

(assert (=> b!1294834 (=> (not res!580081) (not e!830316))))

(assert (=> b!1294834 (= res!580081 call!88861)))

(assert (=> b!1294834 (= e!830314 e!830316)))

(declare-fun b!1294835 () Bool)

(assert (=> b!1294835 (= e!830316 call!88862)))

(declare-fun bm!88855 () Bool)

(declare-fun c!213234 () Bool)

(assert (=> bm!88855 (= call!88862 (validRegex!1529 (ite c!213234 (regTwo!7599 lt!425780) (regTwo!7598 lt!425780))))))

(declare-fun b!1294836 () Bool)

(declare-fun e!830317 () Bool)

(declare-fun call!88860 () Bool)

(assert (=> b!1294836 (= e!830317 call!88860)))

(declare-fun b!1294837 () Bool)

(declare-fun e!830318 () Bool)

(assert (=> b!1294837 (= e!830318 e!830314)))

(assert (=> b!1294837 (= c!213234 ((_ is Union!3543) lt!425780))))

(declare-fun bm!88856 () Bool)

(assert (=> bm!88856 (= call!88861 call!88860)))

(declare-fun b!1294838 () Bool)

(assert (=> b!1294838 (= e!830318 e!830317)))

(declare-fun res!580083 () Bool)

(assert (=> b!1294838 (= res!580083 (not (nullable!1129 (reg!3872 lt!425780))))))

(assert (=> b!1294838 (=> (not res!580083) (not e!830317))))

(declare-fun c!213233 () Bool)

(declare-fun bm!88857 () Bool)

(assert (=> bm!88857 (= call!88860 (validRegex!1529 (ite c!213233 (reg!3872 lt!425780) (ite c!213234 (regOne!7599 lt!425780) (regOne!7598 lt!425780)))))))

(declare-fun b!1294831 () Bool)

(declare-fun e!830319 () Bool)

(assert (=> b!1294831 (= e!830319 e!830318)))

(assert (=> b!1294831 (= c!213233 ((_ is Star!3543) lt!425780))))

(declare-fun d!365425 () Bool)

(declare-fun res!580082 () Bool)

(assert (=> d!365425 (=> res!580082 e!830319)))

(assert (=> d!365425 (= res!580082 ((_ is ElementMatch!3543) lt!425780))))

(assert (=> d!365425 (= (validRegex!1529 lt!425780) e!830319)))

(assert (= (and d!365425 (not res!580082)) b!1294831))

(assert (= (and b!1294831 c!213233) b!1294838))

(assert (= (and b!1294831 (not c!213233)) b!1294837))

(assert (= (and b!1294838 res!580083) b!1294836))

(assert (= (and b!1294837 c!213234) b!1294834))

(assert (= (and b!1294837 (not c!213234)) b!1294832))

(assert (= (and b!1294834 res!580081) b!1294835))

(assert (= (and b!1294832 (not res!580084)) b!1294830))

(assert (= (and b!1294830 res!580085) b!1294833))

(assert (= (or b!1294834 b!1294830) bm!88856))

(assert (= (or b!1294835 b!1294833) bm!88855))

(assert (= (or b!1294836 bm!88856) bm!88857))

(declare-fun m!1446097 () Bool)

(assert (=> bm!88855 m!1446097))

(declare-fun m!1446099 () Bool)

(assert (=> b!1294838 m!1446099))

(declare-fun m!1446101 () Bool)

(assert (=> bm!88857 m!1446101))

(assert (=> d!364965 d!365425))

(assert (=> d!364965 d!365085))

(declare-fun bm!88862 () Bool)

(declare-fun call!88867 () Bool)

(declare-fun c!213237 () Bool)

(assert (=> bm!88862 (= call!88867 (lostCause!256 (ite c!213237 (regOne!7599 lt!425589) (regOne!7598 lt!425589))))))

(declare-fun b!1294853 () Bool)

(declare-fun e!830336 () Bool)

(declare-fun e!830334 () Bool)

(assert (=> b!1294853 (= e!830336 e!830334)))

(declare-fun res!580100 () Bool)

(assert (=> b!1294853 (=> res!580100 e!830334)))

(assert (=> b!1294853 (= res!580100 ((_ is EmptyLang!3543) lt!425589))))

(declare-fun b!1294854 () Bool)

(declare-fun e!830333 () Bool)

(assert (=> b!1294854 (= e!830334 e!830333)))

(declare-fun res!580098 () Bool)

(assert (=> b!1294854 (=> (not res!580098) (not e!830333))))

(assert (=> b!1294854 (= res!580098 (and (not ((_ is ElementMatch!3543) lt!425589)) (not ((_ is Star!3543) lt!425589))))))

(declare-fun b!1294855 () Bool)

(declare-fun e!830337 () Bool)

(declare-fun e!830335 () Bool)

(assert (=> b!1294855 (= e!830337 e!830335)))

(declare-fun res!580097 () Bool)

(assert (=> b!1294855 (= res!580097 call!88867)))

(assert (=> b!1294855 (=> res!580097 e!830335)))

(declare-fun b!1294856 () Bool)

(declare-fun e!830338 () Bool)

(assert (=> b!1294856 (= e!830337 e!830338)))

(declare-fun res!580096 () Bool)

(assert (=> b!1294856 (= res!580096 call!88867)))

(assert (=> b!1294856 (=> (not res!580096) (not e!830338))))

(declare-fun d!365427 () Bool)

(declare-fun lt!426108 () Bool)

(declare-datatypes ((Option!2536 0))(
  ( (None!2535) (Some!2535 (v!21016 List!13006)) )
))
(declare-fun isEmpty!7697 (Option!2536) Bool)

(declare-fun getLanguageWitness!68 (Regex!3543) Option!2536)

(assert (=> d!365427 (= lt!426108 (isEmpty!7697 (getLanguageWitness!68 lt!425589)))))

(assert (=> d!365427 (= lt!426108 e!830336)))

(declare-fun res!580099 () Bool)

(assert (=> d!365427 (=> (not res!580099) (not e!830336))))

(assert (=> d!365427 (= res!580099 (not ((_ is EmptyExpr!3543) lt!425589)))))

(assert (=> d!365427 (= (lostCauseFct!102 lt!425589) lt!426108)))

(declare-fun b!1294857 () Bool)

(declare-fun call!88868 () Bool)

(assert (=> b!1294857 (= e!830338 call!88868)))

(declare-fun bm!88863 () Bool)

(assert (=> bm!88863 (= call!88868 (lostCause!256 (ite c!213237 (regTwo!7599 lt!425589) (regTwo!7598 lt!425589))))))

(declare-fun b!1294858 () Bool)

(assert (=> b!1294858 (= e!830335 call!88868)))

(declare-fun b!1294859 () Bool)

(assert (=> b!1294859 (= e!830333 e!830337)))

(assert (=> b!1294859 (= c!213237 ((_ is Union!3543) lt!425589))))

(assert (= (and d!365427 res!580099) b!1294853))

(assert (= (and b!1294853 (not res!580100)) b!1294854))

(assert (= (and b!1294854 res!580098) b!1294859))

(assert (= (and b!1294859 c!213237) b!1294856))

(assert (= (and b!1294859 (not c!213237)) b!1294855))

(assert (= (and b!1294856 res!580096) b!1294857))

(assert (= (and b!1294855 (not res!580097)) b!1294858))

(assert (= (or b!1294857 b!1294858) bm!88863))

(assert (= (or b!1294856 b!1294855) bm!88862))

(declare-fun m!1446103 () Bool)

(assert (=> bm!88862 m!1446103))

(declare-fun m!1446105 () Bool)

(assert (=> d!365427 m!1446105))

(assert (=> d!365427 m!1446105))

(declare-fun m!1446107 () Bool)

(assert (=> d!365427 m!1446107))

(declare-fun m!1446109 () Bool)

(assert (=> bm!88863 m!1446109))

(assert (=> d!365107 d!365427))

(declare-fun bs!328877 () Bool)

(declare-fun d!365429 () Bool)

(assert (= bs!328877 (and d!365429 d!365033)))

(declare-fun lambda!50923 () Int)

(assert (=> bs!328877 (= lambda!50923 lambda!50899)))

(declare-fun bs!328878 () Bool)

(assert (= bs!328878 (and d!365429 d!365037)))

(assert (=> bs!328878 (= lambda!50923 lambda!50903)))

(declare-fun b!1294860 () Bool)

(declare-fun e!830343 () Regex!3543)

(assert (=> b!1294860 (= e!830343 (Union!3543 (h!18349 (t!117357 (map!2818 rules!2550 lambda!50865))) (generalisedUnion!54 (t!117357 (t!117357 (map!2818 rules!2550 lambda!50865))))))))

(declare-fun b!1294861 () Bool)

(declare-fun e!830342 () Bool)

(declare-fun lt!426109 () Regex!3543)

(assert (=> b!1294861 (= e!830342 (isUnion!12 lt!426109))))

(declare-fun b!1294862 () Bool)

(assert (=> b!1294862 (= e!830342 (= lt!426109 (head!2221 (t!117357 (map!2818 rules!2550 lambda!50865)))))))

(declare-fun b!1294863 () Bool)

(declare-fun e!830341 () Bool)

(declare-fun e!830344 () Bool)

(assert (=> b!1294863 (= e!830341 e!830344)))

(declare-fun c!213239 () Bool)

(assert (=> b!1294863 (= c!213239 (isEmpty!7692 (t!117357 (map!2818 rules!2550 lambda!50865))))))

(assert (=> d!365429 e!830341))

(declare-fun res!580101 () Bool)

(assert (=> d!365429 (=> (not res!580101) (not e!830341))))

(assert (=> d!365429 (= res!580101 (validRegex!1529 lt!426109))))

(declare-fun e!830340 () Regex!3543)

(assert (=> d!365429 (= lt!426109 e!830340)))

(declare-fun c!213240 () Bool)

(declare-fun e!830339 () Bool)

(assert (=> d!365429 (= c!213240 e!830339)))

(declare-fun res!580102 () Bool)

(assert (=> d!365429 (=> (not res!580102) (not e!830339))))

(assert (=> d!365429 (= res!580102 ((_ is Cons!12948) (t!117357 (map!2818 rules!2550 lambda!50865))))))

(assert (=> d!365429 (forall!3253 (t!117357 (map!2818 rules!2550 lambda!50865)) lambda!50923)))

(assert (=> d!365429 (= (generalisedUnion!54 (t!117357 (map!2818 rules!2550 lambda!50865))) lt!426109)))

(declare-fun b!1294864 () Bool)

(assert (=> b!1294864 (= e!830344 e!830342)))

(declare-fun c!213238 () Bool)

(assert (=> b!1294864 (= c!213238 (isEmpty!7692 (tail!1849 (t!117357 (map!2818 rules!2550 lambda!50865)))))))

(declare-fun b!1294865 () Bool)

(assert (=> b!1294865 (= e!830340 e!830343)))

(declare-fun c!213241 () Bool)

(assert (=> b!1294865 (= c!213241 ((_ is Cons!12948) (t!117357 (map!2818 rules!2550 lambda!50865))))))

(declare-fun b!1294866 () Bool)

(assert (=> b!1294866 (= e!830339 (isEmpty!7692 (t!117357 (t!117357 (map!2818 rules!2550 lambda!50865)))))))

(declare-fun b!1294867 () Bool)

(assert (=> b!1294867 (= e!830340 (h!18349 (t!117357 (map!2818 rules!2550 lambda!50865))))))

(declare-fun b!1294868 () Bool)

(assert (=> b!1294868 (= e!830344 (isEmptyLang!12 lt!426109))))

(declare-fun b!1294869 () Bool)

(assert (=> b!1294869 (= e!830343 EmptyLang!3543)))

(assert (= (and d!365429 res!580102) b!1294866))

(assert (= (and d!365429 c!213240) b!1294867))

(assert (= (and d!365429 (not c!213240)) b!1294865))

(assert (= (and b!1294865 c!213241) b!1294860))

(assert (= (and b!1294865 (not c!213241)) b!1294869))

(assert (= (and d!365429 res!580101) b!1294863))

(assert (= (and b!1294863 c!213239) b!1294868))

(assert (= (and b!1294863 (not c!213239)) b!1294864))

(assert (= (and b!1294864 c!213238) b!1294862))

(assert (= (and b!1294864 (not c!213238)) b!1294861))

(assert (=> b!1294863 m!1445159))

(declare-fun m!1446111 () Bool)

(assert (=> b!1294862 m!1446111))

(declare-fun m!1446113 () Bool)

(assert (=> b!1294868 m!1446113))

(declare-fun m!1446115 () Bool)

(assert (=> b!1294860 m!1446115))

(declare-fun m!1446117 () Bool)

(assert (=> b!1294861 m!1446117))

(declare-fun m!1446119 () Bool)

(assert (=> d!365429 m!1446119))

(declare-fun m!1446121 () Bool)

(assert (=> d!365429 m!1446121))

(declare-fun m!1446123 () Bool)

(assert (=> b!1294864 m!1446123))

(assert (=> b!1294864 m!1446123))

(declare-fun m!1446125 () Bool)

(assert (=> b!1294864 m!1446125))

(declare-fun m!1446127 () Bool)

(assert (=> b!1294866 m!1446127))

(assert (=> b!1294099 d!365429))

(declare-fun d!365431 () Bool)

(declare-fun c!213242 () Bool)

(assert (=> d!365431 (= c!213242 ((_ is Empty!4251) (c!212845 lt!425656)))))

(declare-fun e!830345 () List!13006)

(assert (=> d!365431 (= (list!4841 (c!212845 lt!425656)) e!830345)))

(declare-fun b!1294871 () Bool)

(declare-fun e!830346 () List!13006)

(assert (=> b!1294871 (= e!830345 e!830346)))

(declare-fun c!213243 () Bool)

(assert (=> b!1294871 (= c!213243 ((_ is Leaf!6562) (c!212845 lt!425656)))))

(declare-fun b!1294872 () Bool)

(assert (=> b!1294872 (= e!830346 (list!4845 (xs!6962 (c!212845 lt!425656))))))

(declare-fun b!1294873 () Bool)

(assert (=> b!1294873 (= e!830346 (++!3282 (list!4841 (left!11131 (c!212845 lt!425656))) (list!4841 (right!11461 (c!212845 lt!425656)))))))

(declare-fun b!1294870 () Bool)

(assert (=> b!1294870 (= e!830345 Nil!12940)))

(assert (= (and d!365431 c!213242) b!1294870))

(assert (= (and d!365431 (not c!213242)) b!1294871))

(assert (= (and b!1294871 c!213243) b!1294872))

(assert (= (and b!1294871 (not c!213243)) b!1294873))

(declare-fun m!1446129 () Bool)

(assert (=> b!1294872 m!1446129))

(declare-fun m!1446131 () Bool)

(assert (=> b!1294873 m!1446131))

(declare-fun m!1446133 () Bool)

(assert (=> b!1294873 m!1446133))

(assert (=> b!1294873 m!1446131))

(assert (=> b!1294873 m!1446133))

(declare-fun m!1446135 () Bool)

(assert (=> b!1294873 m!1446135))

(assert (=> d!365175 d!365431))

(assert (=> b!1293492 d!365119))

(declare-fun d!365433 () Bool)

(declare-fun c!213244 () Bool)

(assert (=> d!365433 (= c!213244 (and ((_ is Cons!12942) (t!117317 rules!2550)) (not (= (isSeparator!2229 (h!18343 (t!117317 rules!2550))) (isSeparator!2229 (h!18343 rules!2550))))))))

(declare-fun e!830349 () Bool)

(assert (=> d!365433 (= (ruleDisjointCharsFromAllFromOtherType!292 (h!18343 rules!2550) (t!117317 rules!2550)) e!830349)))

(declare-fun b!1294874 () Bool)

(declare-fun e!830348 () Bool)

(assert (=> b!1294874 (= e!830349 e!830348)))

(declare-fun res!580104 () Bool)

(assert (=> b!1294874 (= res!580104 (not ((_ is Cons!12942) (t!117317 rules!2550))))))

(assert (=> b!1294874 (=> res!580104 e!830348)))

(declare-fun bm!88864 () Bool)

(declare-fun call!88869 () Bool)

(assert (=> bm!88864 (= call!88869 (ruleDisjointCharsFromAllFromOtherType!292 (h!18343 rules!2550) (t!117317 (t!117317 rules!2550))))))

(declare-fun b!1294875 () Bool)

(assert (=> b!1294875 (= e!830348 call!88869)))

(declare-fun b!1294876 () Bool)

(declare-fun e!830347 () Bool)

(assert (=> b!1294876 (= e!830349 e!830347)))

(declare-fun res!580103 () Bool)

(assert (=> b!1294876 (= res!580103 (rulesUseDisjointChars!150 (h!18343 rules!2550) (h!18343 (t!117317 rules!2550))))))

(assert (=> b!1294876 (=> (not res!580103) (not e!830347))))

(declare-fun b!1294877 () Bool)

(assert (=> b!1294877 (= e!830347 call!88869)))

(assert (= (and d!365433 c!213244) b!1294876))

(assert (= (and d!365433 (not c!213244)) b!1294874))

(assert (= (and b!1294876 res!580103) b!1294877))

(assert (= (and b!1294874 (not res!580104)) b!1294875))

(assert (= (or b!1294877 b!1294875) bm!88864))

(declare-fun m!1446137 () Bool)

(assert (=> bm!88864 m!1446137))

(declare-fun m!1446139 () Bool)

(assert (=> b!1294876 m!1446139))

(assert (=> bm!88782 d!365433))

(assert (=> b!1293949 d!365265))

(declare-fun d!365435 () Bool)

(assert (=> d!365435 (= (Forall2!409 lambda!50910) (choose!7946 lambda!50910))))

(declare-fun bs!328879 () Bool)

(assert (= bs!328879 d!365435))

(declare-fun m!1446141 () Bool)

(assert (=> bs!328879 m!1446141))

(assert (=> d!365105 d!365435))

(declare-fun b!1294896 () Bool)

(declare-fun e!830375 () Bool)

(declare-fun e!830369 () Bool)

(assert (=> b!1294896 (= e!830375 e!830369)))

(declare-fun res!580127 () Bool)

(assert (=> b!1294896 (=> res!580127 e!830369)))

(assert (=> b!1294896 (= res!580127 (not ((_ is Node!4251) (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))))))

(declare-fun b!1294897 () Bool)

(declare-fun e!830373 () Bool)

(declare-fun e!830370 () Bool)

(assert (=> b!1294897 (= e!830373 e!830370)))

(declare-fun res!580129 () Bool)

(assert (=> b!1294897 (=> res!580129 e!830370)))

(assert (=> b!1294897 (= res!580129 (not ((_ is Node!4251) (right!11461 (c!212845 (charsOf!1201 t1!34))))))))

(declare-fun b!1294898 () Bool)

(declare-fun e!830374 () Bool)

(declare-fun appendAssoc!59 (List!13006 List!13006 List!13006) Bool)

(assert (=> b!1294898 (= e!830374 (appendAssoc!59 (++!3282 (list!4841 (c!212845 (charsOf!1201 t1!34))) (list!4841 (left!11131 (left!11131 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))))) (list!4841 (right!11461 (left!11131 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))) (list!4841 (right!11461 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))))))

(declare-fun b!1294899 () Bool)

(declare-fun e!830372 () Bool)

(declare-fun e!830371 () Bool)

(assert (=> b!1294899 (= e!830372 e!830371)))

(declare-fun res!580130 () Bool)

(assert (=> b!1294899 (=> res!580130 e!830371)))

(assert (=> b!1294899 (= res!580130 (not ((_ is Node!4251) (left!11131 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))))))

(declare-fun b!1294900 () Bool)

(assert (=> b!1294900 (= e!830371 e!830374)))

(declare-fun res!580128 () Bool)

(assert (=> b!1294900 (=> (not res!580128) (not e!830374))))

(assert (=> b!1294900 (= res!580128 (appendAssoc!59 (list!4841 (c!212845 (charsOf!1201 t1!34))) (list!4841 (left!11131 (left!11131 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))) (list!4841 (right!11461 (left!11131 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))))))))

(declare-fun b!1294901 () Bool)

(declare-fun e!830376 () Bool)

(assert (=> b!1294901 (= e!830370 e!830376)))

(declare-fun res!580123 () Bool)

(assert (=> b!1294901 (=> (not res!580123) (not e!830376))))

(assert (=> b!1294901 (= res!580123 (appendAssoc!59 (list!4841 (left!11131 (right!11461 (c!212845 (charsOf!1201 t1!34))))) (list!4841 (right!11461 (right!11461 (c!212845 (charsOf!1201 t1!34))))) (list!4841 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))))))

(declare-fun b!1294902 () Bool)

(declare-fun e!830368 () Bool)

(assert (=> b!1294902 (= e!830368 e!830373)))

(declare-fun res!580131 () Bool)

(assert (=> b!1294902 (=> (not res!580131) (not e!830373))))

(assert (=> b!1294902 (= res!580131 (appendAssoc!59 (list!4841 (left!11131 (c!212845 (charsOf!1201 t1!34)))) (list!4841 (right!11461 (c!212845 (charsOf!1201 t1!34)))) (list!4841 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))))))

(declare-fun d!365437 () Bool)

(assert (=> d!365437 e!830375))

(declare-fun res!580126 () Bool)

(assert (=> d!365437 (=> (not res!580126) (not e!830375))))

(assert (=> d!365437 (= res!580126 e!830368)))

(declare-fun res!580125 () Bool)

(assert (=> d!365437 (=> res!580125 e!830368)))

(assert (=> d!365437 (= res!580125 (not ((_ is Node!4251) (c!212845 (charsOf!1201 t1!34)))))))

(assert (=> d!365437 (= (appendAssocInst!249 (c!212845 (charsOf!1201 t1!34)) (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))) true)))

(declare-fun b!1294903 () Bool)

(assert (=> b!1294903 (= e!830369 e!830372)))

(declare-fun res!580124 () Bool)

(assert (=> b!1294903 (=> (not res!580124) (not e!830372))))

(assert (=> b!1294903 (= res!580124 (appendAssoc!59 (list!4841 (c!212845 (charsOf!1201 t1!34))) (list!4841 (left!11131 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))) (list!4841 (right!11461 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))))))

(declare-fun b!1294904 () Bool)

(assert (=> b!1294904 (= e!830376 (appendAssoc!59 (list!4841 (left!11131 (c!212845 (charsOf!1201 t1!34)))) (list!4841 (left!11131 (right!11461 (c!212845 (charsOf!1201 t1!34))))) (++!3282 (list!4841 (right!11461 (right!11461 (c!212845 (charsOf!1201 t1!34))))) (list!4841 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))))))

(assert (= (and d!365437 (not res!580125)) b!1294902))

(assert (= (and b!1294902 res!580131) b!1294897))

(assert (= (and b!1294897 (not res!580129)) b!1294901))

(assert (= (and b!1294901 res!580123) b!1294904))

(assert (= (and d!365437 res!580126) b!1294896))

(assert (= (and b!1294896 (not res!580127)) b!1294903))

(assert (= (and b!1294903 res!580124) b!1294899))

(assert (= (and b!1294899 (not res!580130)) b!1294900))

(assert (= (and b!1294900 res!580128) b!1294898))

(declare-fun m!1446143 () Bool)

(assert (=> b!1294904 m!1446143))

(assert (=> b!1294904 m!1445773))

(declare-fun m!1446145 () Bool)

(assert (=> b!1294904 m!1446145))

(declare-fun m!1446147 () Bool)

(assert (=> b!1294904 m!1446147))

(declare-fun m!1446149 () Bool)

(assert (=> b!1294904 m!1446149))

(assert (=> b!1294904 m!1446147))

(assert (=> b!1294904 m!1446145))

(declare-fun m!1446151 () Bool)

(assert (=> b!1294904 m!1446151))

(assert (=> b!1294904 m!1445773))

(assert (=> b!1294904 m!1446149))

(assert (=> b!1294904 m!1446143))

(assert (=> b!1294902 m!1446149))

(declare-fun m!1446153 () Bool)

(assert (=> b!1294902 m!1446153))

(assert (=> b!1294902 m!1445773))

(assert (=> b!1294902 m!1446149))

(assert (=> b!1294902 m!1446153))

(assert (=> b!1294902 m!1445773))

(declare-fun m!1446155 () Bool)

(assert (=> b!1294902 m!1446155))

(assert (=> b!1294900 m!1445771))

(declare-fun m!1446157 () Bool)

(assert (=> b!1294900 m!1446157))

(declare-fun m!1446159 () Bool)

(assert (=> b!1294900 m!1446159))

(assert (=> b!1294900 m!1445771))

(assert (=> b!1294900 m!1446157))

(assert (=> b!1294900 m!1446159))

(declare-fun m!1446161 () Bool)

(assert (=> b!1294900 m!1446161))

(assert (=> b!1294901 m!1446147))

(assert (=> b!1294901 m!1446143))

(assert (=> b!1294901 m!1445773))

(assert (=> b!1294901 m!1446147))

(assert (=> b!1294901 m!1446143))

(assert (=> b!1294901 m!1445773))

(declare-fun m!1446163 () Bool)

(assert (=> b!1294901 m!1446163))

(assert (=> b!1294903 m!1445771))

(declare-fun m!1446165 () Bool)

(assert (=> b!1294903 m!1446165))

(declare-fun m!1446167 () Bool)

(assert (=> b!1294903 m!1446167))

(assert (=> b!1294903 m!1445771))

(assert (=> b!1294903 m!1446165))

(assert (=> b!1294903 m!1446167))

(declare-fun m!1446169 () Bool)

(assert (=> b!1294903 m!1446169))

(assert (=> b!1294898 m!1445771))

(assert (=> b!1294898 m!1446157))

(declare-fun m!1446171 () Bool)

(assert (=> b!1294898 m!1446171))

(assert (=> b!1294898 m!1446159))

(assert (=> b!1294898 m!1445771))

(assert (=> b!1294898 m!1446167))

(assert (=> b!1294898 m!1446157))

(assert (=> b!1294898 m!1446171))

(assert (=> b!1294898 m!1446159))

(assert (=> b!1294898 m!1446167))

(declare-fun m!1446173 () Bool)

(assert (=> b!1294898 m!1446173))

(assert (=> d!365145 d!365437))

(declare-fun c!213270 () Bool)

(declare-fun lt!426186 () Conc!4251)

(declare-fun bm!88897 () Bool)

(declare-fun lt!426187 () Conc!4251)

(declare-fun call!88911 () Int)

(assert (=> bm!88897 (= call!88911 (height!609 (ite c!213270 lt!426186 lt!426187)))))

(declare-fun b!1294961 () Bool)

(declare-fun c!213271 () Bool)

(declare-fun call!88908 () Int)

(declare-fun call!88915 () Int)

(assert (=> b!1294961 (= c!213271 (>= call!88908 call!88915))))

(declare-fun e!830409 () Conc!4251)

(declare-fun e!830412 () Conc!4251)

(assert (=> b!1294961 (= e!830409 e!830412)))

(declare-fun b!1294962 () Bool)

(declare-fun res!580146 () Bool)

(declare-fun e!830411 () Bool)

(assert (=> b!1294962 (=> (not res!580146) (not e!830411))))

(declare-fun lt!426189 () Conc!4251)

(assert (=> b!1294962 (= res!580146 (<= (height!609 lt!426189) (+ (max!0 (height!609 (c!212845 (charsOf!1201 t1!34))) (height!609 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))) 1)))))

(declare-fun b!1294963 () Bool)

(assert (=> b!1294963 (= e!830411 (= (list!4841 lt!426189) (++!3282 (list!4841 (c!212845 (charsOf!1201 t1!34))) (list!4841 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))))))

(declare-fun b!1294964 () Bool)

(declare-fun e!830408 () Conc!4251)

(declare-fun e!830414 () Conc!4251)

(assert (=> b!1294964 (= e!830408 e!830414)))

(declare-fun call!88917 () Conc!4251)

(assert (=> b!1294964 (= lt!426187 call!88917)))

(declare-fun c!213273 () Bool)

(assert (=> b!1294964 (= c!213273 (= call!88911 (- call!88915 3)))))

(declare-fun bm!88898 () Bool)

(declare-fun call!88913 () Conc!4251)

(declare-fun call!88905 () Conc!4251)

(assert (=> bm!88898 (= call!88913 call!88905)))

(declare-fun b!1294965 () Bool)

(declare-fun e!830410 () Conc!4251)

(assert (=> b!1294965 (= e!830410 e!830409)))

(declare-fun lt!426188 () Int)

(assert (=> b!1294965 (= c!213270 (< lt!426188 (- 1)))))

(declare-fun b!1294966 () Bool)

(declare-fun e!830406 () Conc!4251)

(declare-fun e!830407 () Conc!4251)

(assert (=> b!1294966 (= e!830406 e!830407)))

(declare-fun c!213269 () Bool)

(assert (=> b!1294966 (= c!213269 (= (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))) Empty!4251))))

(declare-fun call!88910 () Conc!4251)

(declare-fun bm!88899 () Bool)

(declare-fun call!88902 () Conc!4251)

(declare-fun c!213274 () Bool)

(declare-fun <>!87 (Conc!4251 Conc!4251) Conc!4251)

(assert (=> bm!88899 (= call!88902 (<>!87 (ite c!213270 (ite c!213274 (left!11131 (c!212845 (charsOf!1201 t1!34))) call!88910) (ite c!213273 lt!426187 (right!11461 (left!11131 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))))) (ite c!213270 (ite c!213274 call!88910 lt!426186) (ite c!213273 (right!11461 (left!11131 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))) (right!11461 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))))))))

(declare-fun b!1294967 () Bool)

(assert (=> b!1294967 (= e!830406 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))))

(declare-fun b!1294968 () Bool)

(declare-fun c!213272 () Bool)

(assert (=> b!1294968 (= c!213272 (and (<= (- 1) lt!426188) (<= lt!426188 1)))))

(assert (=> b!1294968 (= lt!426188 (- (height!609 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))) (height!609 (c!212845 (charsOf!1201 t1!34)))))))

(assert (=> b!1294968 (= e!830407 e!830410)))

(declare-fun b!1294969 () Bool)

(declare-fun e!830405 () Conc!4251)

(assert (=> b!1294969 (= e!830412 e!830405)))

(declare-fun call!88912 () Conc!4251)

(assert (=> b!1294969 (= lt!426186 call!88912)))

(declare-fun call!88906 () Int)

(assert (=> b!1294969 (= c!213274 (= call!88911 (- call!88906 3)))))

(declare-fun b!1294970 () Bool)

(declare-fun e!830413 () Bool)

(assert (=> b!1294970 (= e!830413 (isBalanced!1249 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))))

(declare-fun bm!88900 () Bool)

(declare-fun call!88909 () Conc!4251)

(assert (=> bm!88900 (= call!88905 call!88909)))

(declare-fun b!1294971 () Bool)

(assert (=> b!1294971 (= e!830414 call!88913)))

(declare-fun b!1294972 () Bool)

(assert (=> b!1294972 (= e!830407 (c!212845 (charsOf!1201 t1!34)))))

(declare-fun d!365439 () Bool)

(assert (=> d!365439 e!830411))

(declare-fun res!580144 () Bool)

(assert (=> d!365439 (=> (not res!580144) (not e!830411))))

(assert (=> d!365439 (= res!580144 (appendAssocInst!249 (c!212845 (charsOf!1201 t1!34)) (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))))

(assert (=> d!365439 (= lt!426189 e!830406)))

(declare-fun c!213268 () Bool)

(assert (=> d!365439 (= c!213268 (= (c!212845 (charsOf!1201 t1!34)) Empty!4251))))

(assert (=> d!365439 e!830413))

(declare-fun res!580145 () Bool)

(assert (=> d!365439 (=> (not res!580145) (not e!830413))))

(assert (=> d!365439 (= res!580145 (isBalanced!1249 (c!212845 (charsOf!1201 t1!34))))))

(assert (=> d!365439 (= (++!3286 (c!212845 (charsOf!1201 t1!34)) (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))) lt!426189)))

(declare-fun b!1294973 () Bool)

(declare-fun call!88904 () Conc!4251)

(assert (=> b!1294973 (= e!830405 call!88904)))

(declare-fun b!1294974 () Bool)

(assert (=> b!1294974 (= e!830408 call!88905)))

(declare-fun bm!88901 () Bool)

(assert (=> bm!88901 (= call!88915 (height!609 (ite c!213270 (right!11461 (c!212845 (charsOf!1201 t1!34))) (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))))))

(declare-fun bm!88902 () Bool)

(assert (=> bm!88902 (= call!88904 call!88902)))

(declare-fun bm!88903 () Bool)

(assert (=> bm!88903 (= call!88908 (height!609 (ite c!213270 (left!11131 (c!212845 (charsOf!1201 t1!34))) (right!11461 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))))))

(declare-fun call!88914 () Conc!4251)

(declare-fun bm!88904 () Bool)

(declare-fun c!213267 () Bool)

(assert (=> bm!88904 (= call!88914 (++!3286 (ite c!213270 (ite c!213271 (right!11461 (c!212845 (charsOf!1201 t1!34))) (right!11461 (right!11461 (c!212845 (charsOf!1201 t1!34))))) (c!212845 (charsOf!1201 t1!34))) (ite c!213270 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))) (ite c!213267 (left!11131 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))) (left!11131 (left!11131 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))))))))

(declare-fun bm!88905 () Bool)

(declare-fun call!88903 () Conc!4251)

(assert (=> bm!88905 (= call!88903 call!88902)))

(declare-fun bm!88906 () Bool)

(declare-fun call!88916 () Conc!4251)

(assert (=> bm!88906 (= call!88916 call!88909)))

(declare-fun b!1294975 () Bool)

(declare-fun res!580147 () Bool)

(assert (=> b!1294975 (=> (not res!580147) (not e!830411))))

(assert (=> b!1294975 (= res!580147 (>= (height!609 lt!426189) (max!0 (height!609 (c!212845 (charsOf!1201 t1!34))) (height!609 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))))))

(declare-fun b!1294976 () Bool)

(declare-fun res!580148 () Bool)

(assert (=> b!1294976 (=> (not res!580148) (not e!830411))))

(assert (=> b!1294976 (= res!580148 (isBalanced!1249 lt!426189))))

(declare-fun bm!88907 () Bool)

(assert (=> bm!88907 (= call!88910 call!88916)))

(declare-fun b!1294977 () Bool)

(assert (=> b!1294977 (= e!830412 call!88916)))

(declare-fun b!1294978 () Bool)

(assert (=> b!1294978 (= e!830414 call!88913)))

(declare-fun b!1294979 () Bool)

(declare-fun call!88907 () Conc!4251)

(assert (=> b!1294979 (= e!830410 call!88907)))

(declare-fun bm!88908 () Bool)

(assert (=> bm!88908 (= call!88907 (<>!87 (ite c!213272 (c!212845 (charsOf!1201 t1!34)) (ite c!213270 (ite c!213271 (left!11131 (c!212845 (charsOf!1201 t1!34))) (ite c!213274 (left!11131 (right!11461 (c!212845 (charsOf!1201 t1!34)))) (left!11131 (c!212845 (charsOf!1201 t1!34))))) (ite c!213267 call!88917 (ite c!213273 call!88903 lt!426187)))) (ite c!213272 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))) (ite c!213270 (ite c!213271 call!88912 (ite c!213274 lt!426186 (left!11131 (right!11461 (c!212845 (charsOf!1201 t1!34)))))) (ite (or c!213267 c!213273) (right!11461 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))) call!88903)))))))

(declare-fun b!1294980 () Bool)

(assert (=> b!1294980 (= e!830405 call!88904)))

(declare-fun b!1294981 () Bool)

(assert (=> b!1294981 (= c!213267 (>= call!88908 call!88906))))

(assert (=> b!1294981 (= e!830409 e!830408)))

(declare-fun bm!88909 () Bool)

(assert (=> bm!88909 (= call!88906 (height!609 (ite c!213270 (c!212845 (charsOf!1201 t1!34)) (left!11131 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))))))

(declare-fun bm!88910 () Bool)

(assert (=> bm!88910 (= call!88917 call!88914)))

(declare-fun bm!88911 () Bool)

(assert (=> bm!88911 (= call!88909 call!88907)))

(declare-fun bm!88912 () Bool)

(assert (=> bm!88912 (= call!88912 call!88914)))

(assert (= (and d!365439 res!580145) b!1294970))

(assert (= (and d!365439 c!213268) b!1294967))

(assert (= (and d!365439 (not c!213268)) b!1294966))

(assert (= (and b!1294966 c!213269) b!1294972))

(assert (= (and b!1294966 (not c!213269)) b!1294968))

(assert (= (and b!1294968 c!213272) b!1294979))

(assert (= (and b!1294968 (not c!213272)) b!1294965))

(assert (= (and b!1294965 c!213270) b!1294961))

(assert (= (and b!1294965 (not c!213270)) b!1294981))

(assert (= (and b!1294961 c!213271) b!1294977))

(assert (= (and b!1294961 (not c!213271)) b!1294969))

(assert (= (and b!1294969 c!213274) b!1294973))

(assert (= (and b!1294969 (not c!213274)) b!1294980))

(assert (= (or b!1294973 b!1294980) bm!88907))

(assert (= (or b!1294973 b!1294980) bm!88902))

(assert (= (or b!1294977 b!1294969) bm!88912))

(assert (= (or b!1294977 bm!88907) bm!88906))

(assert (= (and b!1294981 c!213267) b!1294974))

(assert (= (and b!1294981 (not c!213267)) b!1294964))

(assert (= (and b!1294964 c!213273) b!1294971))

(assert (= (and b!1294964 (not c!213273)) b!1294978))

(assert (= (or b!1294971 b!1294978) bm!88905))

(assert (= (or b!1294971 b!1294978) bm!88898))

(assert (= (or b!1294974 b!1294964) bm!88910))

(assert (= (or b!1294974 bm!88898) bm!88900))

(assert (= (or b!1294961 b!1294964) bm!88901))

(assert (= (or bm!88902 bm!88905) bm!88899))

(assert (= (or b!1294969 b!1294981) bm!88909))

(assert (= (or bm!88912 bm!88910) bm!88904))

(assert (= (or bm!88906 bm!88900) bm!88911))

(assert (= (or b!1294961 b!1294981) bm!88903))

(assert (= (or b!1294969 b!1294964) bm!88897))

(assert (= (or b!1294979 bm!88911) bm!88908))

(assert (= (and d!365439 res!580144) b!1294976))

(assert (= (and b!1294976 res!580148) b!1294962))

(assert (= (and b!1294962 res!580146) b!1294975))

(assert (= (and b!1294975 res!580147) b!1294963))

(declare-fun m!1446175 () Bool)

(assert (=> bm!88897 m!1446175))

(declare-fun m!1446177 () Bool)

(assert (=> b!1294976 m!1446177))

(declare-fun m!1446179 () Bool)

(assert (=> b!1294963 m!1446179))

(assert (=> b!1294963 m!1445771))

(assert (=> b!1294963 m!1445773))

(assert (=> b!1294963 m!1445771))

(assert (=> b!1294963 m!1445773))

(declare-fun m!1446181 () Bool)

(assert (=> b!1294963 m!1446181))

(declare-fun m!1446183 () Bool)

(assert (=> bm!88901 m!1446183))

(declare-fun m!1446185 () Bool)

(assert (=> b!1294975 m!1446185))

(assert (=> b!1294975 m!1445359))

(assert (=> b!1294975 m!1445361))

(assert (=> b!1294975 m!1445359))

(assert (=> b!1294975 m!1445361))

(assert (=> b!1294975 m!1445363))

(assert (=> d!365439 m!1445367))

(declare-fun m!1446187 () Bool)

(assert (=> d!365439 m!1446187))

(declare-fun m!1446189 () Bool)

(assert (=> bm!88903 m!1446189))

(declare-fun m!1446191 () Bool)

(assert (=> b!1294970 m!1446191))

(assert (=> b!1294962 m!1446185))

(assert (=> b!1294962 m!1445359))

(assert (=> b!1294962 m!1445361))

(assert (=> b!1294962 m!1445359))

(assert (=> b!1294962 m!1445361))

(assert (=> b!1294962 m!1445363))

(assert (=> b!1294968 m!1445361))

(assert (=> b!1294968 m!1445359))

(declare-fun m!1446193 () Bool)

(assert (=> bm!88909 m!1446193))

(declare-fun m!1446195 () Bool)

(assert (=> bm!88908 m!1446195))

(declare-fun m!1446197 () Bool)

(assert (=> bm!88904 m!1446197))

(declare-fun m!1446199 () Bool)

(assert (=> bm!88899 m!1446199))

(assert (=> d!365145 d!365439))

(declare-fun d!365441 () Bool)

(declare-fun lt!426226 () Bool)

(assert (=> d!365441 (= lt!426226 (isEmpty!7694 (list!4840 (_1!7227 lt!425729))))))

(declare-fun isEmpty!7698 (Conc!4253) Bool)

(assert (=> d!365441 (= lt!426226 (isEmpty!7698 (c!212884 (_1!7227 lt!425729))))))

(assert (=> d!365441 (= (isEmpty!7691 (_1!7227 lt!425729)) lt!426226)))

(declare-fun bs!328880 () Bool)

(assert (= bs!328880 d!365441))

(assert (=> bs!328880 m!1444881))

(assert (=> bs!328880 m!1444881))

(declare-fun m!1446201 () Bool)

(assert (=> bs!328880 m!1446201))

(declare-fun m!1446203 () Bool)

(assert (=> bs!328880 m!1446203))

(assert (=> b!1293841 d!365441))

(declare-fun d!365443 () Bool)

(declare-fun c!213278 () Bool)

(assert (=> d!365443 (= c!213278 (isEmpty!7687 (tail!1848 (tail!1848 lt!425591))))))

(declare-fun e!830419 () Bool)

(assert (=> d!365443 (= (prefixMatch!56 (derivativeStep!879 (derivativeStep!879 lt!425589 (head!2220 lt!425591)) (head!2220 (tail!1848 lt!425591))) (tail!1848 (tail!1848 lt!425591))) e!830419)))

(declare-fun b!1294989 () Bool)

(assert (=> b!1294989 (= e!830419 (not (lostCause!256 (derivativeStep!879 (derivativeStep!879 lt!425589 (head!2220 lt!425591)) (head!2220 (tail!1848 lt!425591))))))))

(declare-fun b!1294990 () Bool)

(assert (=> b!1294990 (= e!830419 (prefixMatch!56 (derivativeStep!879 (derivativeStep!879 (derivativeStep!879 lt!425589 (head!2220 lt!425591)) (head!2220 (tail!1848 lt!425591))) (head!2220 (tail!1848 (tail!1848 lt!425591)))) (tail!1848 (tail!1848 (tail!1848 lt!425591)))))))

(assert (= (and d!365443 c!213278) b!1294989))

(assert (= (and d!365443 (not c!213278)) b!1294990))

(assert (=> d!365443 m!1444961))

(declare-fun m!1446227 () Bool)

(assert (=> d!365443 m!1446227))

(assert (=> b!1294989 m!1444959))

(declare-fun m!1446231 () Bool)

(assert (=> b!1294989 m!1446231))

(assert (=> b!1294990 m!1444961))

(declare-fun m!1446233 () Bool)

(assert (=> b!1294990 m!1446233))

(assert (=> b!1294990 m!1444959))

(assert (=> b!1294990 m!1446233))

(declare-fun m!1446237 () Bool)

(assert (=> b!1294990 m!1446237))

(assert (=> b!1294990 m!1444961))

(declare-fun m!1446243 () Bool)

(assert (=> b!1294990 m!1446243))

(assert (=> b!1294990 m!1446237))

(assert (=> b!1294990 m!1446243))

(declare-fun m!1446251 () Bool)

(assert (=> b!1294990 m!1446251))

(assert (=> b!1293861 d!365443))

(declare-fun d!365445 () Bool)

(declare-fun lt!426227 () Regex!3543)

(assert (=> d!365445 (validRegex!1529 lt!426227)))

(declare-fun e!830420 () Regex!3543)

(assert (=> d!365445 (= lt!426227 e!830420)))

(declare-fun c!213281 () Bool)

(assert (=> d!365445 (= c!213281 (or ((_ is EmptyExpr!3543) (derivativeStep!879 lt!425589 (head!2220 lt!425591))) ((_ is EmptyLang!3543) (derivativeStep!879 lt!425589 (head!2220 lt!425591)))))))

(assert (=> d!365445 (validRegex!1529 (derivativeStep!879 lt!425589 (head!2220 lt!425591)))))

(assert (=> d!365445 (= (derivativeStep!879 (derivativeStep!879 lt!425589 (head!2220 lt!425591)) (head!2220 (tail!1848 lt!425591))) lt!426227)))

(declare-fun c!213280 () Bool)

(declare-fun c!213282 () Bool)

(declare-fun call!88918 () Regex!3543)

(declare-fun c!213279 () Bool)

(declare-fun bm!88913 () Bool)

(assert (=> bm!88913 (= call!88918 (derivativeStep!879 (ite c!213280 (regOne!7599 (derivativeStep!879 lt!425589 (head!2220 lt!425591))) (ite c!213279 (reg!3872 (derivativeStep!879 lt!425589 (head!2220 lt!425591))) (ite c!213282 (regTwo!7598 (derivativeStep!879 lt!425589 (head!2220 lt!425591))) (regOne!7598 (derivativeStep!879 lt!425589 (head!2220 lt!425591)))))) (head!2220 (tail!1848 lt!425591))))))

(declare-fun b!1294991 () Bool)

(declare-fun e!830424 () Regex!3543)

(assert (=> b!1294991 (= e!830424 (ite (= (head!2220 (tail!1848 lt!425591)) (c!212846 (derivativeStep!879 lt!425589 (head!2220 lt!425591)))) EmptyExpr!3543 EmptyLang!3543))))

(declare-fun bm!88914 () Bool)

(declare-fun call!88920 () Regex!3543)

(declare-fun call!88921 () Regex!3543)

(assert (=> bm!88914 (= call!88920 call!88921)))

(declare-fun e!830423 () Regex!3543)

(declare-fun b!1294992 () Bool)

(assert (=> b!1294992 (= e!830423 (Concat!5863 call!88921 (derivativeStep!879 lt!425589 (head!2220 lt!425591))))))

(declare-fun b!1294993 () Bool)

(assert (=> b!1294993 (= c!213282 (nullable!1129 (regOne!7598 (derivativeStep!879 lt!425589 (head!2220 lt!425591)))))))

(declare-fun e!830421 () Regex!3543)

(assert (=> b!1294993 (= e!830423 e!830421)))

(declare-fun bm!88915 () Bool)

(assert (=> bm!88915 (= call!88921 call!88918)))

(declare-fun b!1294994 () Bool)

(assert (=> b!1294994 (= e!830420 EmptyLang!3543)))

(declare-fun call!88919 () Regex!3543)

(declare-fun b!1294995 () Bool)

(assert (=> b!1294995 (= e!830421 (Union!3543 (Concat!5863 call!88919 (regTwo!7598 (derivativeStep!879 lt!425589 (head!2220 lt!425591)))) call!88920))))

(declare-fun b!1294996 () Bool)

(declare-fun e!830422 () Regex!3543)

(assert (=> b!1294996 (= e!830422 (Union!3543 call!88918 call!88919))))

(declare-fun b!1294997 () Bool)

(assert (=> b!1294997 (= c!213280 ((_ is Union!3543) (derivativeStep!879 lt!425589 (head!2220 lt!425591))))))

(assert (=> b!1294997 (= e!830424 e!830422)))

(declare-fun b!1294998 () Bool)

(assert (=> b!1294998 (= e!830422 e!830423)))

(assert (=> b!1294998 (= c!213279 ((_ is Star!3543) (derivativeStep!879 lt!425589 (head!2220 lt!425591))))))

(declare-fun b!1294999 () Bool)

(assert (=> b!1294999 (= e!830421 (Union!3543 (Concat!5863 call!88920 (regTwo!7598 (derivativeStep!879 lt!425589 (head!2220 lt!425591)))) EmptyLang!3543))))

(declare-fun b!1295000 () Bool)

(assert (=> b!1295000 (= e!830420 e!830424)))

(declare-fun c!213283 () Bool)

(assert (=> b!1295000 (= c!213283 ((_ is ElementMatch!3543) (derivativeStep!879 lt!425589 (head!2220 lt!425591))))))

(declare-fun bm!88916 () Bool)

(assert (=> bm!88916 (= call!88919 (derivativeStep!879 (ite c!213280 (regTwo!7599 (derivativeStep!879 lt!425589 (head!2220 lt!425591))) (regOne!7598 (derivativeStep!879 lt!425589 (head!2220 lt!425591)))) (head!2220 (tail!1848 lt!425591))))))

(assert (= (and d!365445 c!213281) b!1294994))

(assert (= (and d!365445 (not c!213281)) b!1295000))

(assert (= (and b!1295000 c!213283) b!1294991))

(assert (= (and b!1295000 (not c!213283)) b!1294997))

(assert (= (and b!1294997 c!213280) b!1294996))

(assert (= (and b!1294997 (not c!213280)) b!1294998))

(assert (= (and b!1294998 c!213279) b!1294992))

(assert (= (and b!1294998 (not c!213279)) b!1294993))

(assert (= (and b!1294993 c!213282) b!1294995))

(assert (= (and b!1294993 (not c!213282)) b!1294999))

(assert (= (or b!1294995 b!1294999) bm!88914))

(assert (= (or b!1294992 bm!88914) bm!88915))

(assert (= (or b!1294996 bm!88915) bm!88913))

(assert (= (or b!1294996 b!1294995) bm!88916))

(declare-fun m!1446299 () Bool)

(assert (=> d!365445 m!1446299))

(assert (=> d!365445 m!1444529))

(declare-fun m!1446303 () Bool)

(assert (=> d!365445 m!1446303))

(assert (=> bm!88913 m!1444957))

(declare-fun m!1446311 () Bool)

(assert (=> bm!88913 m!1446311))

(declare-fun m!1446313 () Bool)

(assert (=> b!1294993 m!1446313))

(assert (=> bm!88916 m!1444957))

(declare-fun m!1446315 () Bool)

(assert (=> bm!88916 m!1446315))

(assert (=> b!1293861 d!365445))

(declare-fun d!365447 () Bool)

(assert (=> d!365447 (= (head!2220 (tail!1848 lt!425591)) (h!18341 (tail!1848 lt!425591)))))

(assert (=> b!1293861 d!365447))

(declare-fun d!365451 () Bool)

(assert (=> d!365451 (= (tail!1848 (tail!1848 lt!425591)) (t!117315 (tail!1848 lt!425591)))))

(assert (=> b!1293861 d!365451))

(declare-fun d!365453 () Bool)

(declare-fun lt!426234 () Int)

(assert (=> d!365453 (>= lt!426234 0)))

(declare-fun e!830429 () Int)

(assert (=> d!365453 (= lt!426234 e!830429)))

(declare-fun c!213288 () Bool)

(assert (=> d!365453 (= c!213288 ((_ is Nil!12946) (list!4840 (_1!7227 lt!425649))))))

(assert (=> d!365453 (= (size!10580 (list!4840 (_1!7227 lt!425649))) lt!426234)))

(declare-fun b!1295009 () Bool)

(assert (=> b!1295009 (= e!830429 0)))

(declare-fun b!1295010 () Bool)

(assert (=> b!1295010 (= e!830429 (+ 1 (size!10580 (t!117355 (list!4840 (_1!7227 lt!425649))))))))

(assert (= (and d!365453 c!213288) b!1295009))

(assert (= (and d!365453 (not c!213288)) b!1295010))

(declare-fun m!1446323 () Bool)

(assert (=> b!1295010 m!1446323))

(assert (=> d!365065 d!365453))

(declare-fun d!365461 () Bool)

(assert (=> d!365461 (= (list!4840 (_1!7227 lt!425649)) (list!4844 (c!212884 (_1!7227 lt!425649))))))

(declare-fun bs!328883 () Bool)

(assert (= bs!328883 d!365461))

(declare-fun m!1446325 () Bool)

(assert (=> bs!328883 m!1446325))

(assert (=> d!365065 d!365461))

(declare-fun d!365463 () Bool)

(declare-fun lt!426240 () Int)

(assert (=> d!365463 (= lt!426240 (size!10580 (list!4844 (c!212884 (_1!7227 lt!425649)))))))

(assert (=> d!365463 (= lt!426240 (ite ((_ is Empty!4253) (c!212884 (_1!7227 lt!425649))) 0 (ite ((_ is Leaf!6564) (c!212884 (_1!7227 lt!425649))) (csize!8737 (c!212884 (_1!7227 lt!425649))) (csize!8736 (c!212884 (_1!7227 lt!425649))))))))

(assert (=> d!365463 (= (size!10581 (c!212884 (_1!7227 lt!425649))) lt!426240)))

(declare-fun bs!328884 () Bool)

(assert (= bs!328884 d!365463))

(assert (=> bs!328884 m!1446325))

(assert (=> bs!328884 m!1446325))

(declare-fun m!1446329 () Bool)

(assert (=> bs!328884 m!1446329))

(assert (=> d!365065 d!365463))

(declare-fun d!365467 () Bool)

(assert (=> d!365467 (= (list!4837 lt!425883) (list!4841 (c!212845 lt!425883)))))

(declare-fun bs!328885 () Bool)

(assert (= bs!328885 d!365467))

(declare-fun m!1446331 () Bool)

(assert (=> bs!328885 m!1446331))

(assert (=> d!365149 d!365467))

(declare-fun d!365469 () Bool)

(declare-fun e!830445 () Bool)

(assert (=> d!365469 e!830445))

(declare-fun res!580153 () Bool)

(assert (=> d!365469 (=> (not res!580153) (not e!830445))))

(declare-fun lt!426246 () BalanceConc!8442)

(assert (=> d!365469 (= res!580153 (= (list!4837 lt!426246) (Cons!12940 (apply!2845 (charsOf!1201 t2!34) 0) Nil!12940)))))

(declare-fun choose!7947 (C!7376) BalanceConc!8442)

(assert (=> d!365469 (= lt!426246 (choose!7947 (apply!2845 (charsOf!1201 t2!34) 0)))))

(assert (=> d!365469 (= (singleton!358 (apply!2845 (charsOf!1201 t2!34) 0)) lt!426246)))

(declare-fun b!1295039 () Bool)

(assert (=> b!1295039 (= e!830445 (isBalanced!1249 (c!212845 lt!426246)))))

(assert (= (and d!365469 res!580153) b!1295039))

(declare-fun m!1446345 () Bool)

(assert (=> d!365469 m!1446345))

(assert (=> d!365469 m!1444297))

(declare-fun m!1446347 () Bool)

(assert (=> d!365469 m!1446347))

(declare-fun m!1446349 () Bool)

(assert (=> b!1295039 m!1446349))

(assert (=> d!365149 d!365469))

(assert (=> b!1294002 d!365227))

(assert (=> b!1294002 d!365229))

(declare-fun d!365487 () Bool)

(declare-fun lt!426247 () C!7376)

(assert (=> d!365487 (contains!2161 (list!4841 (c!212845 lt!425590)) lt!426247)))

(declare-fun e!830447 () C!7376)

(assert (=> d!365487 (= lt!426247 e!830447)))

(declare-fun c!213302 () Bool)

(assert (=> d!365487 (= c!213302 (= 0 0))))

(declare-fun e!830446 () Bool)

(assert (=> d!365487 e!830446))

(declare-fun res!580154 () Bool)

(assert (=> d!365487 (=> (not res!580154) (not e!830446))))

(assert (=> d!365487 (= res!580154 (<= 0 0))))

(assert (=> d!365487 (= (apply!2850 (list!4841 (c!212845 lt!425590)) 0) lt!426247)))

(declare-fun b!1295040 () Bool)

(assert (=> b!1295040 (= e!830446 (< 0 (size!10573 (list!4841 (c!212845 lt!425590)))))))

(declare-fun b!1295041 () Bool)

(assert (=> b!1295041 (= e!830447 (head!2220 (list!4841 (c!212845 lt!425590))))))

(declare-fun b!1295042 () Bool)

(assert (=> b!1295042 (= e!830447 (apply!2850 (tail!1848 (list!4841 (c!212845 lt!425590))) (- 0 1)))))

(assert (= (and d!365487 res!580154) b!1295040))

(assert (= (and d!365487 c!213302) b!1295041))

(assert (= (and d!365487 (not c!213302)) b!1295042))

(assert (=> d!365487 m!1445235))

(declare-fun m!1446361 () Bool)

(assert (=> d!365487 m!1446361))

(assert (=> b!1295040 m!1445235))

(assert (=> b!1295040 m!1445337))

(assert (=> b!1295041 m!1445235))

(declare-fun m!1446363 () Bool)

(assert (=> b!1295041 m!1446363))

(assert (=> b!1295042 m!1445235))

(declare-fun m!1446365 () Bool)

(assert (=> b!1295042 m!1446365))

(assert (=> b!1295042 m!1446365))

(declare-fun m!1446367 () Bool)

(assert (=> b!1295042 m!1446367))

(assert (=> d!365073 d!365487))

(assert (=> d!365073 d!365343))

(declare-fun d!365491 () Bool)

(declare-fun res!580169 () Bool)

(declare-fun e!830457 () Bool)

(assert (=> d!365491 (=> (not res!580169) (not e!830457))))

(assert (=> d!365491 (= res!580169 (= (csize!8732 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))) (+ (size!10575 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))) (size!10575 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))))))))

(assert (=> d!365491 (= (inv!17372 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))) e!830457)))

(declare-fun b!1295063 () Bool)

(declare-fun res!580170 () Bool)

(assert (=> b!1295063 (=> (not res!580170) (not e!830457))))

(assert (=> b!1295063 (= res!580170 (and (not (= (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))) Empty!4251)) (not (= (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))) Empty!4251))))))

(declare-fun b!1295064 () Bool)

(declare-fun res!580171 () Bool)

(assert (=> b!1295064 (=> (not res!580171) (not e!830457))))

(assert (=> b!1295064 (= res!580171 (= (cheight!4462 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))) (+ (max!0 (height!609 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))) (height!609 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))) 1)))))

(declare-fun b!1295065 () Bool)

(assert (=> b!1295065 (= e!830457 (<= 0 (cheight!4462 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))))))

(assert (= (and d!365491 res!580169) b!1295063))

(assert (= (and b!1295063 res!580170) b!1295064))

(assert (= (and b!1295064 res!580171) b!1295065))

(declare-fun m!1446377 () Bool)

(assert (=> d!365491 m!1446377))

(declare-fun m!1446379 () Bool)

(assert (=> d!365491 m!1446379))

(declare-fun m!1446381 () Bool)

(assert (=> b!1295064 m!1446381))

(declare-fun m!1446383 () Bool)

(assert (=> b!1295064 m!1446383))

(assert (=> b!1295064 m!1446381))

(assert (=> b!1295064 m!1446383))

(declare-fun m!1446385 () Bool)

(assert (=> b!1295064 m!1446385))

(assert (=> b!1294305 d!365491))

(declare-fun d!365495 () Bool)

(assert (=> d!365495 (= (isEmpty!7692 (tail!1849 (map!2818 rules!2550 lambda!50865))) ((_ is Nil!12948) (tail!1849 (map!2818 rules!2550 lambda!50865))))))

(assert (=> b!1294103 d!365495))

(declare-fun d!365497 () Bool)

(assert (=> d!365497 (= (tail!1849 (map!2818 rules!2550 lambda!50865)) (t!117357 (map!2818 rules!2550 lambda!50865)))))

(assert (=> b!1294103 d!365497))

(declare-fun d!365499 () Bool)

(declare-fun lt!426249 () Int)

(assert (=> d!365499 (= lt!426249 (size!10580 (list!4840 (_1!7227 lt!425820))))))

(assert (=> d!365499 (= lt!426249 (size!10581 (c!212884 (_1!7227 lt!425820))))))

(assert (=> d!365499 (= (size!10574 (_1!7227 lt!425820)) lt!426249)))

(declare-fun bs!328886 () Bool)

(assert (= bs!328886 d!365499))

(assert (=> bs!328886 m!1445199))

(assert (=> bs!328886 m!1445199))

(declare-fun m!1446387 () Bool)

(assert (=> bs!328886 m!1446387))

(declare-fun m!1446389 () Bool)

(assert (=> bs!328886 m!1446389))

(assert (=> d!365057 d!365499))

(declare-fun lt!426263 () BalanceConc!8442)

(declare-fun lt!426265 () Option!2535)

(declare-fun b!1295068 () Bool)

(declare-fun e!830462 () tuple2!12682)

(assert (=> b!1295068 (= e!830462 (lexTailRecV2!349 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34)) lt!426263 (_2!7232 (v!21015 lt!426265)) (append!377 (BalanceConc!8447 Empty!4253) (_1!7232 (v!21015 lt!426265)))))))

(declare-fun lt!426275 () tuple2!12682)

(assert (=> b!1295068 (= lt!426275 (lexRec!256 thiss!19762 rules!2550 (_2!7232 (v!21015 lt!426265))))))

(declare-fun lt!426258 () List!13006)

(assert (=> b!1295068 (= lt!426258 (list!4837 (BalanceConc!8443 Empty!4251)))))

(declare-fun lt!426251 () List!13006)

(assert (=> b!1295068 (= lt!426251 (list!4837 (charsOf!1201 (_1!7232 (v!21015 lt!426265)))))))

(declare-fun lt!426253 () List!13006)

(assert (=> b!1295068 (= lt!426253 (list!4837 (_2!7232 (v!21015 lt!426265))))))

(declare-fun lt!426259 () Unit!19084)

(assert (=> b!1295068 (= lt!426259 (lemmaConcatAssociativity!811 lt!426258 lt!426251 lt!426253))))

(assert (=> b!1295068 (= (++!3282 (++!3282 lt!426258 lt!426251) lt!426253) (++!3282 lt!426258 (++!3282 lt!426251 lt!426253)))))

(declare-fun lt!426254 () Unit!19084)

(assert (=> b!1295068 (= lt!426254 lt!426259)))

(declare-fun lt!426271 () Option!2535)

(assert (=> b!1295068 (= lt!426271 (maxPrefixZipperSequence!529 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34))))))

(declare-fun c!213310 () Bool)

(assert (=> b!1295068 (= c!213310 ((_ is Some!2534) lt!426271))))

(declare-fun e!830461 () tuple2!12682)

(assert (=> b!1295068 (= (lexRec!256 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34))) e!830461)))

(declare-fun lt!426264 () Unit!19084)

(declare-fun Unit!19094 () Unit!19084)

(assert (=> b!1295068 (= lt!426264 Unit!19094)))

(declare-fun lt!426267 () List!13012)

(assert (=> b!1295068 (= lt!426267 (list!4840 (BalanceConc!8447 Empty!4253)))))

(declare-fun lt!426279 () List!13012)

(assert (=> b!1295068 (= lt!426279 (Cons!12946 (_1!7232 (v!21015 lt!426265)) Nil!12946))))

(declare-fun lt!426262 () List!13012)

(assert (=> b!1295068 (= lt!426262 (list!4840 (_1!7227 lt!426275)))))

(declare-fun lt!426261 () Unit!19084)

(assert (=> b!1295068 (= lt!426261 (lemmaConcatAssociativity!812 lt!426267 lt!426279 lt!426262))))

(assert (=> b!1295068 (= (++!3287 (++!3287 lt!426267 lt!426279) lt!426262) (++!3287 lt!426267 (++!3287 lt!426279 lt!426262)))))

(declare-fun lt!426260 () Unit!19084)

(assert (=> b!1295068 (= lt!426260 lt!426261)))

(declare-fun lt!426252 () List!13006)

(assert (=> b!1295068 (= lt!426252 (++!3282 (list!4837 (BalanceConc!8443 Empty!4251)) (list!4837 (charsOf!1201 (_1!7232 (v!21015 lt!426265))))))))

(declare-fun lt!426277 () List!13006)

(assert (=> b!1295068 (= lt!426277 (list!4837 (_2!7232 (v!21015 lt!426265))))))

(declare-fun lt!426280 () List!13012)

(assert (=> b!1295068 (= lt!426280 (list!4840 (append!377 (BalanceConc!8447 Empty!4253) (_1!7232 (v!21015 lt!426265)))))))

(declare-fun lt!426266 () Unit!19084)

(assert (=> b!1295068 (= lt!426266 (lemmaLexThenLexPrefix!171 thiss!19762 rules!2550 lt!426252 lt!426277 lt!426280 (list!4840 (_1!7227 lt!426275)) (list!4837 (_2!7227 lt!426275))))))

(assert (=> b!1295068 (= (lexList!500 thiss!19762 rules!2550 lt!426252) (tuple2!12687 lt!426280 Nil!12940))))

(declare-fun lt!426283 () Unit!19084)

(assert (=> b!1295068 (= lt!426283 lt!426266)))

(declare-fun lt!426281 () BalanceConc!8442)

(assert (=> b!1295068 (= lt!426281 (++!3284 (BalanceConc!8443 Empty!4251) (charsOf!1201 (_1!7232 (v!21015 lt!426265)))))))

(declare-fun lt!426276 () Option!2535)

(assert (=> b!1295068 (= lt!426276 (maxPrefixZipperSequence!529 thiss!19762 rules!2550 lt!426281))))

(declare-fun c!213311 () Bool)

(assert (=> b!1295068 (= c!213311 ((_ is Some!2534) lt!426276))))

(declare-fun e!830460 () tuple2!12682)

(assert (=> b!1295068 (= (lexRec!256 thiss!19762 rules!2550 (++!3284 (BalanceConc!8443 Empty!4251) (charsOf!1201 (_1!7232 (v!21015 lt!426265))))) e!830460)))

(declare-fun lt!426270 () Unit!19084)

(declare-fun Unit!19095 () Unit!19084)

(assert (=> b!1295068 (= lt!426270 Unit!19095)))

(assert (=> b!1295068 (= lt!426263 (++!3284 (BalanceConc!8443 Empty!4251) (charsOf!1201 (_1!7232 (v!21015 lt!426265)))))))

(declare-fun lt!426274 () List!13006)

(assert (=> b!1295068 (= lt!426274 (list!4837 lt!426263))))

(declare-fun lt!426268 () List!13006)

(assert (=> b!1295068 (= lt!426268 (list!4837 (_2!7232 (v!21015 lt!426265))))))

(declare-fun lt!426250 () Unit!19084)

(assert (=> b!1295068 (= lt!426250 (lemmaConcatTwoListThenFSndIsSuffix!212 lt!426274 lt!426268))))

(assert (=> b!1295068 (isSuffix!234 lt!426268 (++!3282 lt!426274 lt!426268))))

(declare-fun lt!426255 () Unit!19084)

(assert (=> b!1295068 (= lt!426255 lt!426250)))

(declare-fun b!1295069 () Bool)

(assert (=> b!1295069 (= e!830462 (tuple2!12683 (BalanceConc!8447 Empty!4253) (print!724 thiss!19762 (singletonSeq!814 t1!34))))))

(declare-fun lt!426273 () tuple2!12682)

(declare-fun b!1295070 () Bool)

(assert (=> b!1295070 (= lt!426273 (lexRec!256 thiss!19762 rules!2550 (_2!7232 (v!21015 lt!426271))))))

(assert (=> b!1295070 (= e!830461 (tuple2!12683 (prepend!341 (_1!7227 lt!426273) (_1!7232 (v!21015 lt!426271))) (_2!7227 lt!426273)))))

(declare-fun b!1295071 () Bool)

(declare-fun lt!426269 () tuple2!12682)

(assert (=> b!1295071 (= lt!426269 (lexRec!256 thiss!19762 rules!2550 (_2!7232 (v!21015 lt!426276))))))

(assert (=> b!1295071 (= e!830460 (tuple2!12683 (prepend!341 (_1!7227 lt!426269) (_1!7232 (v!21015 lt!426276))) (_2!7227 lt!426269)))))

(declare-fun e!830463 () Bool)

(declare-fun lt!426282 () tuple2!12682)

(declare-fun b!1295072 () Bool)

(assert (=> b!1295072 (= e!830463 (= (list!4837 (_2!7227 lt!426282)) (list!4837 (_2!7227 (lexRec!256 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34)))))))))

(declare-fun b!1295073 () Bool)

(assert (=> b!1295073 (= e!830461 (tuple2!12683 (BalanceConc!8447 Empty!4253) (print!724 thiss!19762 (singletonSeq!814 t1!34))))))

(declare-fun b!1295074 () Bool)

(assert (=> b!1295074 (= e!830460 (tuple2!12683 (BalanceConc!8447 Empty!4253) lt!426281))))

(declare-fun d!365501 () Bool)

(assert (=> d!365501 e!830463))

(declare-fun res!580174 () Bool)

(assert (=> d!365501 (=> (not res!580174) (not e!830463))))

(assert (=> d!365501 (= res!580174 (= (list!4840 (_1!7227 lt!426282)) (list!4840 (_1!7227 (lexRec!256 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34)))))))))

(assert (=> d!365501 (= lt!426282 e!830462)))

(declare-fun c!213312 () Bool)

(assert (=> d!365501 (= c!213312 ((_ is Some!2534) lt!426265))))

(assert (=> d!365501 (= lt!426265 (maxPrefixZipperSequenceV2!201 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34)) (print!724 thiss!19762 (singletonSeq!814 t1!34))))))

(declare-fun lt!426278 () Unit!19084)

(declare-fun lt!426257 () Unit!19084)

(assert (=> d!365501 (= lt!426278 lt!426257)))

(declare-fun lt!426272 () List!13006)

(declare-fun lt!426256 () List!13006)

(assert (=> d!365501 (isSuffix!234 lt!426272 (++!3282 lt!426256 lt!426272))))

(assert (=> d!365501 (= lt!426257 (lemmaConcatTwoListThenFSndIsSuffix!212 lt!426256 lt!426272))))

(assert (=> d!365501 (= lt!426272 (list!4837 (print!724 thiss!19762 (singletonSeq!814 t1!34))))))

(assert (=> d!365501 (= lt!426256 (list!4837 (BalanceConc!8443 Empty!4251)))))

(assert (=> d!365501 (= (lexTailRecV2!349 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34)) (BalanceConc!8443 Empty!4251) (print!724 thiss!19762 (singletonSeq!814 t1!34)) (BalanceConc!8447 Empty!4253)) lt!426282)))

(assert (= (and d!365501 c!213312) b!1295068))

(assert (= (and d!365501 (not c!213312)) b!1295069))

(assert (= (and b!1295068 c!213310) b!1295070))

(assert (= (and b!1295068 (not c!213310)) b!1295073))

(assert (= (and b!1295068 c!213311) b!1295071))

(assert (= (and b!1295068 (not c!213311)) b!1295074))

(assert (= (and d!365501 res!580174) b!1295072))

(declare-fun m!1446391 () Bool)

(assert (=> b!1295071 m!1446391))

(declare-fun m!1446393 () Bool)

(assert (=> b!1295071 m!1446393))

(declare-fun m!1446395 () Bool)

(assert (=> b!1295068 m!1446395))

(declare-fun m!1446397 () Bool)

(assert (=> b!1295068 m!1446397))

(declare-fun m!1446399 () Bool)

(assert (=> b!1295068 m!1446399))

(assert (=> b!1295068 m!1445665))

(declare-fun m!1446401 () Bool)

(assert (=> b!1295068 m!1446401))

(declare-fun m!1446403 () Bool)

(assert (=> b!1295068 m!1446403))

(declare-fun m!1446405 () Bool)

(assert (=> b!1295068 m!1446405))

(assert (=> b!1295068 m!1444475))

(assert (=> b!1295068 m!1446397))

(declare-fun m!1446407 () Bool)

(assert (=> b!1295068 m!1446407))

(assert (=> b!1295068 m!1444475))

(declare-fun m!1446409 () Bool)

(assert (=> b!1295068 m!1446409))

(declare-fun m!1446411 () Bool)

(assert (=> b!1295068 m!1446411))

(declare-fun m!1446413 () Bool)

(assert (=> b!1295068 m!1446413))

(declare-fun m!1446415 () Bool)

(assert (=> b!1295068 m!1446415))

(assert (=> b!1295068 m!1444475))

(declare-fun m!1446417 () Bool)

(assert (=> b!1295068 m!1446417))

(assert (=> b!1295068 m!1446415))

(declare-fun m!1446419 () Bool)

(assert (=> b!1295068 m!1446419))

(declare-fun m!1446421 () Bool)

(assert (=> b!1295068 m!1446421))

(declare-fun m!1446423 () Bool)

(assert (=> b!1295068 m!1446423))

(assert (=> b!1295068 m!1446035))

(assert (=> b!1295068 m!1445665))

(declare-fun m!1446425 () Bool)

(assert (=> b!1295068 m!1446425))

(declare-fun m!1446427 () Bool)

(assert (=> b!1295068 m!1446427))

(declare-fun m!1446429 () Bool)

(assert (=> b!1295068 m!1446429))

(assert (=> b!1295068 m!1446423))

(declare-fun m!1446431 () Bool)

(assert (=> b!1295068 m!1446431))

(declare-fun m!1446433 () Bool)

(assert (=> b!1295068 m!1446433))

(declare-fun m!1446435 () Bool)

(assert (=> b!1295068 m!1446435))

(assert (=> b!1295068 m!1446411))

(declare-fun m!1446437 () Bool)

(assert (=> b!1295068 m!1446437))

(assert (=> b!1295068 m!1446395))

(declare-fun m!1446439 () Bool)

(assert (=> b!1295068 m!1446439))

(assert (=> b!1295068 m!1446435))

(declare-fun m!1446441 () Bool)

(assert (=> b!1295068 m!1446441))

(declare-fun m!1446443 () Bool)

(assert (=> b!1295068 m!1446443))

(declare-fun m!1446445 () Bool)

(assert (=> b!1295068 m!1446445))

(assert (=> b!1295068 m!1446397))

(declare-fun m!1446447 () Bool)

(assert (=> b!1295068 m!1446447))

(assert (=> b!1295068 m!1446415))

(assert (=> b!1295068 m!1446425))

(assert (=> b!1295068 m!1446437))

(assert (=> b!1295068 m!1446433))

(declare-fun m!1446449 () Bool)

(assert (=> b!1295068 m!1446449))

(declare-fun m!1446451 () Bool)

(assert (=> b!1295068 m!1446451))

(declare-fun m!1446453 () Bool)

(assert (=> b!1295068 m!1446453))

(assert (=> b!1295068 m!1446401))

(assert (=> b!1295068 m!1446419))

(declare-fun m!1446455 () Bool)

(assert (=> b!1295068 m!1446455))

(declare-fun m!1446457 () Bool)

(assert (=> b!1295072 m!1446457))

(assert (=> b!1295072 m!1444475))

(assert (=> b!1295072 m!1446409))

(declare-fun m!1446461 () Bool)

(assert (=> b!1295072 m!1446461))

(assert (=> d!365501 m!1444475))

(assert (=> d!365501 m!1446409))

(declare-fun m!1446465 () Bool)

(assert (=> d!365501 m!1446465))

(assert (=> d!365501 m!1445665))

(assert (=> d!365501 m!1444475))

(assert (=> d!365501 m!1445189))

(assert (=> d!365501 m!1446465))

(declare-fun m!1446467 () Bool)

(assert (=> d!365501 m!1446467))

(declare-fun m!1446469 () Bool)

(assert (=> d!365501 m!1446469))

(assert (=> d!365501 m!1444475))

(assert (=> d!365501 m!1444475))

(declare-fun m!1446471 () Bool)

(assert (=> d!365501 m!1446471))

(declare-fun m!1446473 () Bool)

(assert (=> d!365501 m!1446473))

(declare-fun m!1446475 () Bool)

(assert (=> d!365501 m!1446475))

(declare-fun m!1446477 () Bool)

(assert (=> b!1295070 m!1446477))

(declare-fun m!1446479 () Bool)

(assert (=> b!1295070 m!1446479))

(assert (=> d!365057 d!365501))

(declare-fun d!365505 () Bool)

(declare-fun lt!426284 () List!13006)

(assert (=> d!365505 (= (++!3282 (t!117315 (t!117315 lt!425591)) lt!426284) (tail!1848 (tail!1848 lt!425588)))))

(declare-fun e!830474 () List!13006)

(assert (=> d!365505 (= lt!426284 e!830474)))

(declare-fun c!213314 () Bool)

(assert (=> d!365505 (= c!213314 ((_ is Cons!12940) (t!117315 (t!117315 lt!425591))))))

(assert (=> d!365505 (>= (size!10573 (tail!1848 (tail!1848 lt!425588))) (size!10573 (t!117315 (t!117315 lt!425591))))))

(assert (=> d!365505 (= (getSuffix!399 (tail!1848 (tail!1848 lt!425588)) (t!117315 (t!117315 lt!425591))) lt!426284)))

(declare-fun b!1295088 () Bool)

(assert (=> b!1295088 (= e!830474 (getSuffix!399 (tail!1848 (tail!1848 (tail!1848 lt!425588))) (t!117315 (t!117315 (t!117315 lt!425591)))))))

(declare-fun b!1295089 () Bool)

(assert (=> b!1295089 (= e!830474 (tail!1848 (tail!1848 lt!425588)))))

(assert (= (and d!365505 c!213314) b!1295088))

(assert (= (and d!365505 (not c!213314)) b!1295089))

(declare-fun m!1446485 () Bool)

(assert (=> d!365505 m!1446485))

(assert (=> d!365505 m!1444681))

(declare-fun m!1446487 () Bool)

(assert (=> d!365505 m!1446487))

(assert (=> d!365505 m!1445809))

(assert (=> b!1295088 m!1444681))

(declare-fun m!1446489 () Bool)

(assert (=> b!1295088 m!1446489))

(assert (=> b!1295088 m!1446489))

(declare-fun m!1446491 () Bool)

(assert (=> b!1295088 m!1446491))

(assert (=> b!1293722 d!365505))

(declare-fun d!365509 () Bool)

(assert (=> d!365509 (= (tail!1848 (tail!1848 lt!425588)) (t!117315 (tail!1848 lt!425588)))))

(assert (=> b!1293722 d!365509))

(assert (=> b!1294317 d!364979))

(declare-fun d!365513 () Bool)

(assert (=> d!365513 (= (head!2220 lt!425619) (h!18341 lt!425619))))

(assert (=> b!1294317 d!365513))

(declare-fun d!365515 () Bool)

(declare-fun lt!426288 () Token!4120)

(declare-fun contains!2164 (List!13012 Token!4120) Bool)

(assert (=> d!365515 (contains!2164 (list!4840 (_1!7227 lt!425641)) lt!426288)))

(declare-fun e!830498 () Token!4120)

(assert (=> d!365515 (= lt!426288 e!830498)))

(declare-fun c!213326 () Bool)

(assert (=> d!365515 (= c!213326 (= 0 0))))

(declare-fun e!830499 () Bool)

(assert (=> d!365515 e!830499))

(declare-fun res!580191 () Bool)

(assert (=> d!365515 (=> (not res!580191) (not e!830499))))

(assert (=> d!365515 (= res!580191 (<= 0 0))))

(assert (=> d!365515 (= (apply!2855 (list!4840 (_1!7227 lt!425641)) 0) lt!426288)))

(declare-fun b!1295125 () Bool)

(assert (=> b!1295125 (= e!830499 (< 0 (size!10580 (list!4840 (_1!7227 lt!425641)))))))

(declare-fun b!1295126 () Bool)

(assert (=> b!1295126 (= e!830498 (head!2223 (list!4840 (_1!7227 lt!425641))))))

(declare-fun b!1295127 () Bool)

(assert (=> b!1295127 (= e!830498 (apply!2855 (tail!1851 (list!4840 (_1!7227 lt!425641))) (- 0 1)))))

(assert (= (and d!365515 res!580191) b!1295125))

(assert (= (and d!365515 c!213326) b!1295126))

(assert (= (and d!365515 (not c!213326)) b!1295127))

(assert (=> d!365515 m!1445029))

(declare-fun m!1446537 () Bool)

(assert (=> d!365515 m!1446537))

(assert (=> b!1295125 m!1445029))

(assert (=> b!1295125 m!1445309))

(assert (=> b!1295126 m!1445029))

(declare-fun m!1446539 () Bool)

(assert (=> b!1295126 m!1446539))

(assert (=> b!1295127 m!1445029))

(declare-fun m!1446541 () Bool)

(assert (=> b!1295127 m!1446541))

(assert (=> b!1295127 m!1446541))

(declare-fun m!1446543 () Bool)

(assert (=> b!1295127 m!1446543))

(assert (=> d!364987 d!365515))

(declare-fun d!365527 () Bool)

(assert (=> d!365527 (= (list!4840 (_1!7227 lt!425641)) (list!4844 (c!212884 (_1!7227 lt!425641))))))

(declare-fun bs!328887 () Bool)

(assert (= bs!328887 d!365527))

(declare-fun m!1446549 () Bool)

(assert (=> bs!328887 m!1446549))

(assert (=> d!364987 d!365527))

(declare-fun b!1295149 () Bool)

(declare-fun e!830516 () Int)

(assert (=> b!1295149 (= e!830516 0)))

(declare-fun d!365531 () Bool)

(declare-fun lt!426297 () Token!4120)

(assert (=> d!365531 (= lt!426297 (apply!2855 (list!4844 (c!212884 (_1!7227 lt!425641))) 0))))

(declare-fun e!830513 () Token!4120)

(assert (=> d!365531 (= lt!426297 e!830513)))

(declare-fun c!213337 () Bool)

(assert (=> d!365531 (= c!213337 ((_ is Leaf!6564) (c!212884 (_1!7227 lt!425641))))))

(declare-fun e!830514 () Bool)

(assert (=> d!365531 e!830514))

(declare-fun res!580197 () Bool)

(assert (=> d!365531 (=> (not res!580197) (not e!830514))))

(assert (=> d!365531 (= res!580197 (<= 0 0))))

(assert (=> d!365531 (= (apply!2856 (c!212884 (_1!7227 lt!425641)) 0) lt!426297)))

(declare-fun bm!88928 () Bool)

(declare-fun c!213335 () Bool)

(declare-fun c!213336 () Bool)

(assert (=> bm!88928 (= c!213335 c!213336)))

(declare-fun call!88933 () Token!4120)

(assert (=> bm!88928 (= call!88933 (apply!2856 (ite c!213336 (left!11133 (c!212884 (_1!7227 lt!425641))) (right!11463 (c!212884 (_1!7227 lt!425641)))) e!830516))))

(declare-fun b!1295150 () Bool)

(declare-fun apply!2858 (IArray!8511 Int) Token!4120)

(assert (=> b!1295150 (= e!830513 (apply!2858 (xs!6964 (c!212884 (_1!7227 lt!425641))) 0))))

(declare-fun b!1295151 () Bool)

(declare-fun e!830515 () Token!4120)

(assert (=> b!1295151 (= e!830515 call!88933)))

(declare-fun b!1295152 () Bool)

(assert (=> b!1295152 (= e!830513 e!830515)))

(declare-fun lt!426298 () Bool)

(declare-fun appendIndex!130 (List!13012 List!13012 Int) Bool)

(assert (=> b!1295152 (= lt!426298 (appendIndex!130 (list!4844 (left!11133 (c!212884 (_1!7227 lt!425641)))) (list!4844 (right!11463 (c!212884 (_1!7227 lt!425641)))) 0))))

(assert (=> b!1295152 (= c!213336 (< 0 (size!10581 (left!11133 (c!212884 (_1!7227 lt!425641))))))))

(declare-fun b!1295153 () Bool)

(assert (=> b!1295153 (= e!830514 (< 0 (size!10581 (c!212884 (_1!7227 lt!425641)))))))

(declare-fun b!1295154 () Bool)

(assert (=> b!1295154 (= e!830515 call!88933)))

(declare-fun b!1295155 () Bool)

(assert (=> b!1295155 (= e!830516 (- 0 (size!10581 (left!11133 (c!212884 (_1!7227 lt!425641))))))))

(assert (= (and d!365531 res!580197) b!1295153))

(assert (= (and d!365531 c!213337) b!1295150))

(assert (= (and d!365531 (not c!213337)) b!1295152))

(assert (= (and b!1295152 c!213336) b!1295154))

(assert (= (and b!1295152 (not c!213336)) b!1295151))

(assert (= (or b!1295154 b!1295151) bm!88928))

(assert (= (and bm!88928 c!213335) b!1295149))

(assert (= (and bm!88928 (not c!213335)) b!1295155))

(declare-fun m!1446573 () Bool)

(assert (=> b!1295155 m!1446573))

(assert (=> d!365531 m!1446549))

(assert (=> d!365531 m!1446549))

(declare-fun m!1446575 () Bool)

(assert (=> d!365531 m!1446575))

(declare-fun m!1446577 () Bool)

(assert (=> b!1295152 m!1446577))

(declare-fun m!1446579 () Bool)

(assert (=> b!1295152 m!1446579))

(assert (=> b!1295152 m!1446577))

(assert (=> b!1295152 m!1446579))

(declare-fun m!1446581 () Bool)

(assert (=> b!1295152 m!1446581))

(assert (=> b!1295152 m!1446573))

(declare-fun m!1446583 () Bool)

(assert (=> b!1295150 m!1446583))

(declare-fun m!1446585 () Bool)

(assert (=> bm!88928 m!1446585))

(assert (=> b!1295153 m!1445311))

(assert (=> d!364987 d!365531))

(declare-fun d!365547 () Bool)

(declare-fun lt!426299 () Int)

(assert (=> d!365547 (>= lt!426299 0)))

(declare-fun e!830517 () Int)

(assert (=> d!365547 (= lt!426299 e!830517)))

(declare-fun c!213338 () Bool)

(assert (=> d!365547 (= c!213338 ((_ is Nil!12940) (t!117315 (originalCharacters!3091 t2!34))))))

(assert (=> d!365547 (= (size!10573 (t!117315 (originalCharacters!3091 t2!34))) lt!426299)))

(declare-fun b!1295156 () Bool)

(assert (=> b!1295156 (= e!830517 0)))

(declare-fun b!1295157 () Bool)

(assert (=> b!1295157 (= e!830517 (+ 1 (size!10573 (t!117315 (t!117315 (originalCharacters!3091 t2!34))))))))

(assert (= (and d!365547 c!213338) b!1295156))

(assert (= (and d!365547 (not c!213338)) b!1295157))

(declare-fun m!1446587 () Bool)

(assert (=> b!1295157 m!1446587))

(assert (=> b!1294251 d!365547))

(declare-fun d!365549 () Bool)

(declare-fun res!580204 () Bool)

(declare-fun e!830522 () Bool)

(assert (=> d!365549 (=> (not res!580204) (not e!830522))))

(assert (=> d!365549 (= res!580204 (<= (size!10573 (list!4845 (xs!6962 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))) 512))))

(assert (=> d!365549 (= (inv!17373 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))) e!830522)))

(declare-fun b!1295164 () Bool)

(declare-fun res!580205 () Bool)

(assert (=> b!1295164 (=> (not res!580205) (not e!830522))))

(assert (=> b!1295164 (= res!580205 (= (csize!8733 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))) (size!10573 (list!4845 (xs!6962 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))))))))

(declare-fun b!1295165 () Bool)

(assert (=> b!1295165 (= e!830522 (and (> (csize!8733 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))) 0) (<= (csize!8733 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))) 512)))))

(assert (= (and d!365549 res!580204) b!1295164))

(assert (= (and b!1295164 res!580205) b!1295165))

(assert (=> d!365549 m!1445791))

(assert (=> d!365549 m!1445791))

(declare-fun m!1446589 () Bool)

(assert (=> d!365549 m!1446589))

(assert (=> b!1295164 m!1445791))

(assert (=> b!1295164 m!1445791))

(assert (=> b!1295164 m!1446589))

(assert (=> b!1294276 d!365549))

(assert (=> b!1294180 d!365133))

(declare-fun d!365551 () Bool)

(assert (=> d!365551 (= (isEmptyLang!12 lt!425816) ((_ is EmptyLang!3543) lt!425816))))

(assert (=> b!1294107 d!365551))

(declare-fun d!365555 () Bool)

(declare-fun lt!426303 () Int)

(assert (=> d!365555 (>= lt!426303 0)))

(declare-fun e!830524 () Int)

(assert (=> d!365555 (= lt!426303 e!830524)))

(declare-fun c!213339 () Bool)

(assert (=> d!365555 (= c!213339 ((_ is Nil!12946) (list!4840 (_1!7227 lt!425641))))))

(assert (=> d!365555 (= (size!10580 (list!4840 (_1!7227 lt!425641))) lt!426303)))

(declare-fun b!1295167 () Bool)

(assert (=> b!1295167 (= e!830524 0)))

(declare-fun b!1295168 () Bool)

(assert (=> b!1295168 (= e!830524 (+ 1 (size!10580 (t!117355 (list!4840 (_1!7227 lt!425641))))))))

(assert (= (and d!365555 c!213339) b!1295167))

(assert (= (and d!365555 (not c!213339)) b!1295168))

(declare-fun m!1446595 () Bool)

(assert (=> b!1295168 m!1446595))

(assert (=> d!365113 d!365555))

(assert (=> d!365113 d!365527))

(declare-fun d!365557 () Bool)

(declare-fun lt!426304 () Int)

(assert (=> d!365557 (= lt!426304 (size!10580 (list!4844 (c!212884 (_1!7227 lt!425641)))))))

(assert (=> d!365557 (= lt!426304 (ite ((_ is Empty!4253) (c!212884 (_1!7227 lt!425641))) 0 (ite ((_ is Leaf!6564) (c!212884 (_1!7227 lt!425641))) (csize!8737 (c!212884 (_1!7227 lt!425641))) (csize!8736 (c!212884 (_1!7227 lt!425641))))))))

(assert (=> d!365557 (= (size!10581 (c!212884 (_1!7227 lt!425641))) lt!426304)))

(declare-fun bs!328893 () Bool)

(assert (= bs!328893 d!365557))

(assert (=> bs!328893 m!1446549))

(assert (=> bs!328893 m!1446549))

(declare-fun m!1446597 () Bool)

(assert (=> bs!328893 m!1446597))

(assert (=> d!365113 d!365557))

(declare-fun d!365559 () Bool)

(assert (=> d!365559 (= (inv!17375 (xs!6962 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))) (<= (size!10573 (innerList!4311 (xs!6962 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))) 2147483647))))

(declare-fun bs!328894 () Bool)

(assert (= bs!328894 d!365559))

(declare-fun m!1446599 () Bool)

(assert (=> bs!328894 m!1446599))

(assert (=> b!1294406 d!365559))

(assert (=> b!1294323 d!365065))

(declare-fun d!365561 () Bool)

(declare-fun lt!426305 () Int)

(assert (=> d!365561 (>= lt!426305 0)))

(declare-fun e!830525 () Int)

(assert (=> d!365561 (= lt!426305 e!830525)))

(declare-fun c!213340 () Bool)

(assert (=> d!365561 (= c!213340 ((_ is Nil!12940) (t!117315 (Cons!12940 (apply!2845 lt!425590 0) Nil!12940))))))

(assert (=> d!365561 (= (size!10573 (t!117315 (Cons!12940 (apply!2845 lt!425590 0) Nil!12940))) lt!426305)))

(declare-fun b!1295169 () Bool)

(assert (=> b!1295169 (= e!830525 0)))

(declare-fun b!1295170 () Bool)

(assert (=> b!1295170 (= e!830525 (+ 1 (size!10573 (t!117315 (t!117315 (Cons!12940 (apply!2845 lt!425590 0) Nil!12940))))))))

(assert (= (and d!365561 c!213340) b!1295169))

(assert (= (and d!365561 (not c!213340)) b!1295170))

(declare-fun m!1446601 () Bool)

(assert (=> b!1295170 m!1446601))

(assert (=> b!1294282 d!365561))

(declare-fun d!365563 () Bool)

(declare-fun res!580223 () Bool)

(declare-fun e!830534 () Bool)

(assert (=> d!365563 (=> res!580223 e!830534)))

(assert (=> d!365563 (= res!580223 (not ((_ is Node!4251) (++!3286 (c!212845 (charsOf!1201 t1!34)) (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))))))

(assert (=> d!365563 (= (isBalanced!1249 (++!3286 (c!212845 (charsOf!1201 t1!34)) (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))) e!830534)))

(declare-fun b!1295189 () Bool)

(declare-fun res!580219 () Bool)

(declare-fun e!830533 () Bool)

(assert (=> b!1295189 (=> (not res!580219) (not e!830533))))

(assert (=> b!1295189 (= res!580219 (isBalanced!1249 (right!11461 (++!3286 (c!212845 (charsOf!1201 t1!34)) (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))))))

(declare-fun b!1295190 () Bool)

(declare-fun res!580224 () Bool)

(assert (=> b!1295190 (=> (not res!580224) (not e!830533))))

(assert (=> b!1295190 (= res!580224 (not (isEmpty!7690 (left!11131 (++!3286 (c!212845 (charsOf!1201 t1!34)) (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))))))))

(declare-fun b!1295191 () Bool)

(declare-fun res!580221 () Bool)

(assert (=> b!1295191 (=> (not res!580221) (not e!830533))))

(assert (=> b!1295191 (= res!580221 (isBalanced!1249 (left!11131 (++!3286 (c!212845 (charsOf!1201 t1!34)) (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))))))

(declare-fun b!1295192 () Bool)

(assert (=> b!1295192 (= e!830534 e!830533)))

(declare-fun res!580222 () Bool)

(assert (=> b!1295192 (=> (not res!580222) (not e!830533))))

(assert (=> b!1295192 (= res!580222 (<= (- 1) (- (height!609 (left!11131 (++!3286 (c!212845 (charsOf!1201 t1!34)) (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))) (height!609 (right!11461 (++!3286 (c!212845 (charsOf!1201 t1!34)) (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))))))))

(declare-fun b!1295193 () Bool)

(declare-fun res!580220 () Bool)

(assert (=> b!1295193 (=> (not res!580220) (not e!830533))))

(assert (=> b!1295193 (= res!580220 (<= (- (height!609 (left!11131 (++!3286 (c!212845 (charsOf!1201 t1!34)) (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))) (height!609 (right!11461 (++!3286 (c!212845 (charsOf!1201 t1!34)) (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))))) 1))))

(declare-fun b!1295194 () Bool)

(assert (=> b!1295194 (= e!830533 (not (isEmpty!7690 (right!11461 (++!3286 (c!212845 (charsOf!1201 t1!34)) (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))))))))

(assert (= (and d!365563 (not res!580223)) b!1295192))

(assert (= (and b!1295192 res!580222) b!1295193))

(assert (= (and b!1295193 res!580220) b!1295191))

(assert (= (and b!1295191 res!580221) b!1295189))

(assert (= (and b!1295189 res!580219) b!1295190))

(assert (= (and b!1295190 res!580224) b!1295194))

(declare-fun m!1446615 () Bool)

(assert (=> b!1295193 m!1446615))

(declare-fun m!1446617 () Bool)

(assert (=> b!1295193 m!1446617))

(declare-fun m!1446619 () Bool)

(assert (=> b!1295194 m!1446619))

(declare-fun m!1446621 () Bool)

(assert (=> b!1295190 m!1446621))

(declare-fun m!1446623 () Bool)

(assert (=> b!1295189 m!1446623))

(assert (=> b!1295192 m!1446615))

(assert (=> b!1295192 m!1446617))

(declare-fun m!1446625 () Bool)

(assert (=> b!1295191 m!1446625))

(assert (=> b!1294297 d!365563))

(assert (=> b!1294297 d!365439))

(declare-fun d!365567 () Bool)

(declare-fun lt!426306 () Int)

(assert (=> d!365567 (= lt!426306 (size!10573 (list!4837 (_2!7227 lt!425820))))))

(assert (=> d!365567 (= lt!426306 (size!10575 (c!212845 (_2!7227 lt!425820))))))

(assert (=> d!365567 (= (size!10568 (_2!7227 lt!425820)) lt!426306)))

(declare-fun bs!328896 () Bool)

(assert (= bs!328896 d!365567))

(assert (=> bs!328896 m!1445187))

(assert (=> bs!328896 m!1445187))

(declare-fun m!1446631 () Bool)

(assert (=> bs!328896 m!1446631))

(declare-fun m!1446633 () Bool)

(assert (=> bs!328896 m!1446633))

(assert (=> b!1294168 d!365567))

(declare-fun d!365571 () Bool)

(declare-fun lt!426307 () Int)

(assert (=> d!365571 (= lt!426307 (size!10573 (list!4837 (print!724 thiss!19762 (singletonSeq!814 t1!34)))))))

(assert (=> d!365571 (= lt!426307 (size!10575 (c!212845 (print!724 thiss!19762 (singletonSeq!814 t1!34)))))))

(assert (=> d!365571 (= (size!10568 (print!724 thiss!19762 (singletonSeq!814 t1!34))) lt!426307)))

(declare-fun bs!328897 () Bool)

(assert (= bs!328897 d!365571))

(assert (=> bs!328897 m!1444475))

(assert (=> bs!328897 m!1445189))

(assert (=> bs!328897 m!1445189))

(declare-fun m!1446635 () Bool)

(assert (=> bs!328897 m!1446635))

(declare-fun m!1446637 () Bool)

(assert (=> bs!328897 m!1446637))

(assert (=> b!1294168 d!365571))

(declare-fun bm!88929 () Bool)

(declare-fun c!213344 () Bool)

(declare-fun c!213345 () Bool)

(assert (=> bm!88929 (= c!213344 c!213345)))

(declare-fun call!88934 () C!7376)

(declare-fun e!830536 () Int)

(assert (=> bm!88929 (= call!88934 (apply!2851 (ite c!213345 (left!11131 (ite c!213062 (left!11131 (c!212845 lt!425590)) (right!11461 (c!212845 lt!425590)))) (right!11461 (ite c!213062 (left!11131 (c!212845 lt!425590)) (right!11461 (c!212845 lt!425590))))) e!830536))))

(declare-fun b!1295196 () Bool)

(assert (=> b!1295196 (= e!830536 (- e!829959 (size!10575 (left!11131 (ite c!213062 (left!11131 (c!212845 lt!425590)) (right!11461 (c!212845 lt!425590)))))))))

(declare-fun b!1295197 () Bool)

(assert (=> b!1295197 (= e!830536 e!829959)))

(declare-fun b!1295198 () Bool)

(declare-fun e!830538 () Bool)

(assert (=> b!1295198 (= e!830538 (< e!829959 (size!10575 (ite c!213062 (left!11131 (c!212845 lt!425590)) (right!11461 (c!212845 lt!425590))))))))

(declare-fun b!1295199 () Bool)

(declare-fun e!830535 () C!7376)

(declare-fun e!830537 () C!7376)

(assert (=> b!1295199 (= e!830535 e!830537)))

(declare-fun lt!426309 () Bool)

(assert (=> b!1295199 (= lt!426309 (appendIndex!129 (list!4841 (left!11131 (ite c!213062 (left!11131 (c!212845 lt!425590)) (right!11461 (c!212845 lt!425590))))) (list!4841 (right!11461 (ite c!213062 (left!11131 (c!212845 lt!425590)) (right!11461 (c!212845 lt!425590))))) e!829959))))

(assert (=> b!1295199 (= c!213345 (< e!829959 (size!10575 (left!11131 (ite c!213062 (left!11131 (c!212845 lt!425590)) (right!11461 (c!212845 lt!425590)))))))))

(declare-fun b!1295200 () Bool)

(assert (=> b!1295200 (= e!830537 call!88934)))

(declare-fun b!1295201 () Bool)

(assert (=> b!1295201 (= e!830535 (apply!2857 (xs!6962 (ite c!213062 (left!11131 (c!212845 lt!425590)) (right!11461 (c!212845 lt!425590)))) e!829959))))

(declare-fun b!1295195 () Bool)

(assert (=> b!1295195 (= e!830537 call!88934)))

(declare-fun d!365573 () Bool)

(declare-fun lt!426308 () C!7376)

(assert (=> d!365573 (= lt!426308 (apply!2850 (list!4841 (ite c!213062 (left!11131 (c!212845 lt!425590)) (right!11461 (c!212845 lt!425590)))) e!829959))))

(assert (=> d!365573 (= lt!426308 e!830535)))

(declare-fun c!213346 () Bool)

(assert (=> d!365573 (= c!213346 ((_ is Leaf!6562) (ite c!213062 (left!11131 (c!212845 lt!425590)) (right!11461 (c!212845 lt!425590)))))))

(assert (=> d!365573 e!830538))

(declare-fun res!580225 () Bool)

(assert (=> d!365573 (=> (not res!580225) (not e!830538))))

(assert (=> d!365573 (= res!580225 (<= 0 e!829959))))

(assert (=> d!365573 (= (apply!2851 (ite c!213062 (left!11131 (c!212845 lt!425590)) (right!11461 (c!212845 lt!425590))) e!829959) lt!426308)))

(assert (= (and d!365573 res!580225) b!1295198))

(assert (= (and d!365573 c!213346) b!1295201))

(assert (= (and d!365573 (not c!213346)) b!1295199))

(assert (= (and b!1295199 c!213345) b!1295200))

(assert (= (and b!1295199 (not c!213345)) b!1295195))

(assert (= (or b!1295200 b!1295195) bm!88929))

(assert (= (and bm!88929 c!213344) b!1295197))

(assert (= (and bm!88929 (not c!213344)) b!1295196))

(declare-fun m!1446639 () Bool)

(assert (=> b!1295198 m!1446639))

(declare-fun m!1446641 () Bool)

(assert (=> d!365573 m!1446641))

(assert (=> d!365573 m!1446641))

(declare-fun m!1446643 () Bool)

(assert (=> d!365573 m!1446643))

(declare-fun m!1446645 () Bool)

(assert (=> b!1295199 m!1446645))

(declare-fun m!1446647 () Bool)

(assert (=> b!1295199 m!1446647))

(assert (=> b!1295199 m!1446645))

(assert (=> b!1295199 m!1446647))

(declare-fun m!1446649 () Bool)

(assert (=> b!1295199 m!1446649))

(declare-fun m!1446651 () Bool)

(assert (=> b!1295199 m!1446651))

(assert (=> b!1295196 m!1446651))

(declare-fun m!1446653 () Bool)

(assert (=> bm!88929 m!1446653))

(declare-fun m!1446655 () Bool)

(assert (=> b!1295201 m!1446655))

(assert (=> bm!88770 d!365573))

(declare-fun d!365575 () Bool)

(declare-fun c!213347 () Bool)

(assert (=> d!365575 (= c!213347 (and ((_ is Cons!12942) rules!2550) (not (= (isSeparator!2229 (h!18343 rules!2550)) (isSeparator!2229 (h!18343 (t!117317 rules!2550)))))))))

(declare-fun e!830541 () Bool)

(assert (=> d!365575 (= (ruleDisjointCharsFromAllFromOtherType!292 (h!18343 (t!117317 rules!2550)) rules!2550) e!830541)))

(declare-fun b!1295202 () Bool)

(declare-fun e!830540 () Bool)

(assert (=> b!1295202 (= e!830541 e!830540)))

(declare-fun res!580227 () Bool)

(assert (=> b!1295202 (= res!580227 (not ((_ is Cons!12942) rules!2550)))))

(assert (=> b!1295202 (=> res!580227 e!830540)))

(declare-fun bm!88930 () Bool)

(declare-fun call!88935 () Bool)

(assert (=> bm!88930 (= call!88935 (ruleDisjointCharsFromAllFromOtherType!292 (h!18343 (t!117317 rules!2550)) (t!117317 rules!2550)))))

(declare-fun b!1295203 () Bool)

(assert (=> b!1295203 (= e!830540 call!88935)))

(declare-fun b!1295204 () Bool)

(declare-fun e!830539 () Bool)

(assert (=> b!1295204 (= e!830541 e!830539)))

(declare-fun res!580226 () Bool)

(assert (=> b!1295204 (= res!580226 (rulesUseDisjointChars!150 (h!18343 (t!117317 rules!2550)) (h!18343 rules!2550)))))

(assert (=> b!1295204 (=> (not res!580226) (not e!830539))))

(declare-fun b!1295205 () Bool)

(assert (=> b!1295205 (= e!830539 call!88935)))

(assert (= (and d!365575 c!213347) b!1295204))

(assert (= (and d!365575 (not c!213347)) b!1295202))

(assert (= (and b!1295204 res!580226) b!1295205))

(assert (= (and b!1295202 (not res!580227)) b!1295203))

(assert (= (or b!1295205 b!1295203) bm!88930))

(declare-fun m!1446657 () Bool)

(assert (=> bm!88930 m!1446657))

(declare-fun m!1446659 () Bool)

(assert (=> b!1295204 m!1446659))

(assert (=> b!1294248 d!365575))

(declare-fun e!830543 () List!13012)

(declare-fun b!1295208 () Bool)

(assert (=> b!1295208 (= e!830543 (list!4846 (xs!6964 (c!212884 (_1!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34))))))))))

(declare-fun b!1295207 () Bool)

(declare-fun e!830542 () List!13012)

(assert (=> b!1295207 (= e!830542 e!830543)))

(declare-fun c!213349 () Bool)

(assert (=> b!1295207 (= c!213349 ((_ is Leaf!6564) (c!212884 (_1!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34)))))))))

(declare-fun b!1295206 () Bool)

(assert (=> b!1295206 (= e!830542 Nil!12946)))

(declare-fun c!213348 () Bool)

(declare-fun d!365577 () Bool)

(assert (=> d!365577 (= c!213348 ((_ is Empty!4253) (c!212884 (_1!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34)))))))))

(assert (=> d!365577 (= (list!4844 (c!212884 (_1!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34)))))) e!830542)))

(declare-fun b!1295209 () Bool)

(assert (=> b!1295209 (= e!830543 (++!3287 (list!4844 (left!11133 (c!212884 (_1!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34))))))) (list!4844 (right!11463 (c!212884 (_1!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34)))))))))))

(assert (= (and d!365577 c!213348) b!1295206))

(assert (= (and d!365577 (not c!213348)) b!1295207))

(assert (= (and b!1295207 c!213349) b!1295208))

(assert (= (and b!1295207 (not c!213349)) b!1295209))

(declare-fun m!1446661 () Bool)

(assert (=> b!1295208 m!1446661))

(declare-fun m!1446663 () Bool)

(assert (=> b!1295209 m!1446663))

(declare-fun m!1446665 () Bool)

(assert (=> b!1295209 m!1446665))

(assert (=> b!1295209 m!1446663))

(assert (=> b!1295209 m!1446665))

(declare-fun m!1446667 () Bool)

(assert (=> b!1295209 m!1446667))

(assert (=> d!365063 d!365577))

(declare-fun d!365579 () Bool)

(declare-fun lt!426312 () Int)

(assert (=> d!365579 (>= lt!426312 0)))

(declare-fun e!830546 () Int)

(assert (=> d!365579 (= lt!426312 e!830546)))

(declare-fun c!213352 () Bool)

(assert (=> d!365579 (= c!213352 ((_ is Nil!12948) lt!425819))))

(assert (=> d!365579 (= (size!10578 lt!425819) lt!426312)))

(declare-fun b!1295214 () Bool)

(assert (=> b!1295214 (= e!830546 0)))

(declare-fun b!1295215 () Bool)

(assert (=> b!1295215 (= e!830546 (+ 1 (size!10578 (t!117357 lt!425819))))))

(assert (= (and d!365579 c!213352) b!1295214))

(assert (= (and d!365579 (not c!213352)) b!1295215))

(declare-fun m!1446669 () Bool)

(assert (=> b!1295215 m!1446669))

(assert (=> d!365049 d!365579))

(declare-fun d!365581 () Bool)

(declare-fun lt!426315 () Int)

(assert (=> d!365581 (>= lt!426315 0)))

(declare-fun e!830551 () Int)

(assert (=> d!365581 (= lt!426315 e!830551)))

(declare-fun c!213357 () Bool)

(assert (=> d!365581 (= c!213357 ((_ is Nil!12942) rules!2550))))

(assert (=> d!365581 (= (size!10579 rules!2550) lt!426315)))

(declare-fun b!1295224 () Bool)

(assert (=> b!1295224 (= e!830551 0)))

(declare-fun b!1295225 () Bool)

(assert (=> b!1295225 (= e!830551 (+ 1 (size!10579 (t!117317 rules!2550))))))

(assert (= (and d!365581 c!213357) b!1295224))

(assert (= (and d!365581 (not c!213357)) b!1295225))

(assert (=> b!1295225 m!1445527))

(assert (=> d!365049 d!365581))

(declare-fun d!365583 () Bool)

(assert (=> d!365583 (= (isEmpty!7687 (tail!1848 lt!425591)) ((_ is Nil!12940) (tail!1848 lt!425591)))))

(assert (=> d!364963 d!365583))

(declare-fun d!365585 () Bool)

(declare-fun choose!644 (List!13007) Int)

(assert (=> d!365585 (= (charsToBigInt!1 (text!16681 (value!73159 t2!34))) (choose!644 (text!16681 (value!73159 t2!34))))))

(declare-fun bs!328898 () Bool)

(assert (= bs!328898 d!365585))

(declare-fun m!1446671 () Bool)

(assert (=> bs!328898 m!1446671))

(assert (=> d!365055 d!365585))

(declare-fun d!365587 () Bool)

(assert (=> d!365587 (= (list!4840 (_1!7227 lt!425820)) (list!4844 (c!212884 (_1!7227 lt!425820))))))

(declare-fun bs!328899 () Bool)

(assert (= bs!328899 d!365587))

(declare-fun m!1446673 () Bool)

(assert (=> bs!328899 m!1446673))

(assert (=> b!1294172 d!365587))

(declare-fun b!1295228 () Bool)

(declare-fun e!830554 () tuple2!12686)

(assert (=> b!1295228 (= e!830554 (tuple2!12687 Nil!12946 (list!4837 (print!724 thiss!19762 (singletonSeq!814 t1!34)))))))

(declare-fun b!1295229 () Bool)

(declare-fun e!830553 () Bool)

(declare-fun e!830555 () Bool)

(assert (=> b!1295229 (= e!830553 e!830555)))

(declare-fun lt!426316 () tuple2!12686)

(declare-fun res!580228 () Bool)

(assert (=> b!1295229 (= res!580228 (< (size!10573 (_2!7229 lt!426316)) (size!10573 (list!4837 (print!724 thiss!19762 (singletonSeq!814 t1!34))))))))

(assert (=> b!1295229 (=> (not res!580228) (not e!830555))))

(declare-fun d!365589 () Bool)

(assert (=> d!365589 e!830553))

(declare-fun c!213359 () Bool)

(assert (=> d!365589 (= c!213359 (> (size!10580 (_1!7229 lt!426316)) 0))))

(assert (=> d!365589 (= lt!426316 e!830554)))

(declare-fun c!213360 () Bool)

(declare-fun lt!426318 () Option!2533)

(assert (=> d!365589 (= c!213360 ((_ is Some!2532) lt!426318))))

(assert (=> d!365589 (= lt!426318 (maxPrefix!979 thiss!19762 rules!2550 (list!4837 (print!724 thiss!19762 (singletonSeq!814 t1!34)))))))

(assert (=> d!365589 (= (lexList!500 thiss!19762 rules!2550 (list!4837 (print!724 thiss!19762 (singletonSeq!814 t1!34)))) lt!426316)))

(declare-fun b!1295230 () Bool)

(assert (=> b!1295230 (= e!830555 (not (isEmpty!7694 (_1!7229 lt!426316))))))

(declare-fun b!1295231 () Bool)

(declare-fun lt!426317 () tuple2!12686)

(assert (=> b!1295231 (= e!830554 (tuple2!12687 (Cons!12946 (_1!7230 (v!21013 lt!426318)) (_1!7229 lt!426317)) (_2!7229 lt!426317)))))

(assert (=> b!1295231 (= lt!426317 (lexList!500 thiss!19762 rules!2550 (_2!7230 (v!21013 lt!426318))))))

(declare-fun b!1295232 () Bool)

(assert (=> b!1295232 (= e!830553 (= (_2!7229 lt!426316) (list!4837 (print!724 thiss!19762 (singletonSeq!814 t1!34)))))))

(assert (= (and d!365589 c!213360) b!1295231))

(assert (= (and d!365589 (not c!213360)) b!1295228))

(assert (= (and d!365589 c!213359) b!1295229))

(assert (= (and d!365589 (not c!213359)) b!1295232))

(assert (= (and b!1295229 res!580228) b!1295230))

(declare-fun m!1446683 () Bool)

(assert (=> b!1295229 m!1446683))

(assert (=> b!1295229 m!1445189))

(assert (=> b!1295229 m!1446635))

(declare-fun m!1446685 () Bool)

(assert (=> d!365589 m!1446685))

(assert (=> d!365589 m!1445189))

(declare-fun m!1446687 () Bool)

(assert (=> d!365589 m!1446687))

(declare-fun m!1446689 () Bool)

(assert (=> b!1295230 m!1446689))

(declare-fun m!1446691 () Bool)

(assert (=> b!1295231 m!1446691))

(assert (=> b!1294172 d!365589))

(declare-fun d!365593 () Bool)

(assert (=> d!365593 (= (list!4837 (print!724 thiss!19762 (singletonSeq!814 t1!34))) (list!4841 (c!212845 (print!724 thiss!19762 (singletonSeq!814 t1!34)))))))

(declare-fun bs!328900 () Bool)

(assert (= bs!328900 d!365593))

(declare-fun m!1446695 () Bool)

(assert (=> bs!328900 m!1446695))

(assert (=> b!1294172 d!365593))

(declare-fun d!365595 () Bool)

(declare-fun lt!426319 () Int)

(assert (=> d!365595 (>= lt!426319 0)))

(declare-fun e!830557 () Int)

(assert (=> d!365595 (= lt!426319 e!830557)))

(declare-fun c!213362 () Bool)

(assert (=> d!365595 (= c!213362 ((_ is Nil!12940) lt!425695))))

(assert (=> d!365595 (= (size!10573 lt!425695) lt!426319)))

(declare-fun b!1295235 () Bool)

(assert (=> b!1295235 (= e!830557 0)))

(declare-fun b!1295236 () Bool)

(assert (=> b!1295236 (= e!830557 (+ 1 (size!10573 (t!117315 lt!425695))))))

(assert (= (and d!365595 c!213362) b!1295235))

(assert (= (and d!365595 (not c!213362)) b!1295236))

(declare-fun m!1446705 () Bool)

(assert (=> b!1295236 m!1446705))

(assert (=> b!1293748 d!365595))

(assert (=> b!1293748 d!365349))

(assert (=> b!1293748 d!365143))

(declare-fun d!365597 () Bool)

(declare-fun c!213363 () Bool)

(assert (=> d!365597 (= c!213363 ((_ is Empty!4251) (c!212845 lt!425654)))))

(declare-fun e!830558 () List!13006)

(assert (=> d!365597 (= (list!4841 (c!212845 lt!425654)) e!830558)))

(declare-fun b!1295238 () Bool)

(declare-fun e!830559 () List!13006)

(assert (=> b!1295238 (= e!830558 e!830559)))

(declare-fun c!213364 () Bool)

(assert (=> b!1295238 (= c!213364 ((_ is Leaf!6562) (c!212845 lt!425654)))))

(declare-fun b!1295239 () Bool)

(assert (=> b!1295239 (= e!830559 (list!4845 (xs!6962 (c!212845 lt!425654))))))

(declare-fun b!1295240 () Bool)

(assert (=> b!1295240 (= e!830559 (++!3282 (list!4841 (left!11131 (c!212845 lt!425654))) (list!4841 (right!11461 (c!212845 lt!425654)))))))

(declare-fun b!1295237 () Bool)

(assert (=> b!1295237 (= e!830558 Nil!12940)))

(assert (= (and d!365597 c!213363) b!1295237))

(assert (= (and d!365597 (not c!213363)) b!1295238))

(assert (= (and b!1295238 c!213364) b!1295239))

(assert (= (and b!1295238 (not c!213364)) b!1295240))

(declare-fun m!1446709 () Bool)

(assert (=> b!1295239 m!1446709))

(declare-fun m!1446711 () Bool)

(assert (=> b!1295240 m!1446711))

(declare-fun m!1446713 () Bool)

(assert (=> b!1295240 m!1446713))

(assert (=> b!1295240 m!1446711))

(assert (=> b!1295240 m!1446713))

(declare-fun m!1446715 () Bool)

(assert (=> b!1295240 m!1446715))

(assert (=> d!365089 d!365597))

(declare-fun b!1295271 () Bool)

(declare-fun e!830581 () Bool)

(assert (=> b!1295271 (= e!830581 (appendIndex!129 (t!117315 (list!4841 (left!11131 (c!212845 lt!425590)))) (list!4841 (right!11461 (c!212845 lt!425590))) (- 0 1)))))

(declare-fun bm!88936 () Bool)

(declare-fun call!88941 () C!7376)

(declare-fun c!213375 () Bool)

(declare-fun e!830583 () Int)

(assert (=> bm!88936 (= call!88941 (apply!2850 (ite c!213375 (list!4841 (left!11131 (c!212845 lt!425590))) (list!4841 (right!11461 (c!212845 lt!425590)))) e!830583))))

(declare-fun c!213374 () Bool)

(assert (=> bm!88936 (= c!213374 c!213375)))

(declare-fun d!365601 () Bool)

(declare-fun e!830582 () C!7376)

(assert (=> d!365601 (= (apply!2850 (++!3282 (list!4841 (left!11131 (c!212845 lt!425590))) (list!4841 (right!11461 (c!212845 lt!425590)))) 0) e!830582)))

(assert (=> d!365601 (= c!213375 (< 0 (size!10573 (list!4841 (left!11131 (c!212845 lt!425590))))))))

(declare-fun lt!426322 () Bool)

(assert (=> d!365601 (= lt!426322 e!830581)))

(declare-fun res!580242 () Bool)

(assert (=> d!365601 (=> res!580242 e!830581)))

(assert (=> d!365601 (= res!580242 (or ((_ is Nil!12940) (list!4841 (left!11131 (c!212845 lt!425590)))) (= 0 0)))))

(declare-fun e!830584 () Bool)

(assert (=> d!365601 e!830584))

(declare-fun res!580243 () Bool)

(assert (=> d!365601 (=> (not res!580243) (not e!830584))))

(assert (=> d!365601 (= res!580243 (<= 0 0))))

(assert (=> d!365601 (= (appendIndex!129 (list!4841 (left!11131 (c!212845 lt!425590))) (list!4841 (right!11461 (c!212845 lt!425590))) 0) true)))

(declare-fun b!1295272 () Bool)

(assert (=> b!1295272 (= e!830584 (< 0 (+ (size!10573 (list!4841 (left!11131 (c!212845 lt!425590)))) (size!10573 (list!4841 (right!11461 (c!212845 lt!425590)))))))))

(declare-fun b!1295273 () Bool)

(assert (=> b!1295273 (= e!830582 call!88941)))

(declare-fun b!1295274 () Bool)

(assert (=> b!1295274 (= e!830583 (- 0 (size!10573 (list!4841 (left!11131 (c!212845 lt!425590))))))))

(declare-fun b!1295275 () Bool)

(assert (=> b!1295275 (= e!830583 0)))

(declare-fun b!1295276 () Bool)

(assert (=> b!1295276 (= e!830582 call!88941)))

(assert (= (and d!365601 res!580243) b!1295272))

(assert (= (and d!365601 (not res!580242)) b!1295271))

(assert (= (and d!365601 c!213375) b!1295273))

(assert (= (and d!365601 (not c!213375)) b!1295276))

(assert (= (or b!1295273 b!1295276) bm!88936))

(assert (= (and bm!88936 c!213374) b!1295275))

(assert (= (and bm!88936 (not c!213374)) b!1295274))

(assert (=> b!1295272 m!1445239))

(declare-fun m!1446751 () Bool)

(assert (=> b!1295272 m!1446751))

(assert (=> b!1295272 m!1445241))

(declare-fun m!1446753 () Bool)

(assert (=> b!1295272 m!1446753))

(assert (=> b!1295274 m!1445239))

(assert (=> b!1295274 m!1446751))

(assert (=> d!365601 m!1445239))

(assert (=> d!365601 m!1445241))

(assert (=> d!365601 m!1445817))

(assert (=> d!365601 m!1445817))

(declare-fun m!1446755 () Bool)

(assert (=> d!365601 m!1446755))

(assert (=> d!365601 m!1445239))

(assert (=> d!365601 m!1446751))

(assert (=> b!1295271 m!1445241))

(declare-fun m!1446757 () Bool)

(assert (=> b!1295271 m!1446757))

(declare-fun m!1446759 () Bool)

(assert (=> bm!88936 m!1446759))

(assert (=> b!1294201 d!365601))

(declare-fun d!365615 () Bool)

(declare-fun c!213376 () Bool)

(assert (=> d!365615 (= c!213376 ((_ is Empty!4251) (left!11131 (c!212845 lt!425590))))))

(declare-fun e!830585 () List!13006)

(assert (=> d!365615 (= (list!4841 (left!11131 (c!212845 lt!425590))) e!830585)))

(declare-fun b!1295278 () Bool)

(declare-fun e!830586 () List!13006)

(assert (=> b!1295278 (= e!830585 e!830586)))

(declare-fun c!213377 () Bool)

(assert (=> b!1295278 (= c!213377 ((_ is Leaf!6562) (left!11131 (c!212845 lt!425590))))))

(declare-fun b!1295279 () Bool)

(assert (=> b!1295279 (= e!830586 (list!4845 (xs!6962 (left!11131 (c!212845 lt!425590)))))))

(declare-fun b!1295280 () Bool)

(assert (=> b!1295280 (= e!830586 (++!3282 (list!4841 (left!11131 (left!11131 (c!212845 lt!425590)))) (list!4841 (right!11461 (left!11131 (c!212845 lt!425590))))))))

(declare-fun b!1295277 () Bool)

(assert (=> b!1295277 (= e!830585 Nil!12940)))

(assert (= (and d!365615 c!213376) b!1295277))

(assert (= (and d!365615 (not c!213376)) b!1295278))

(assert (= (and b!1295278 c!213377) b!1295279))

(assert (= (and b!1295278 (not c!213377)) b!1295280))

(declare-fun m!1446761 () Bool)

(assert (=> b!1295279 m!1446761))

(declare-fun m!1446763 () Bool)

(assert (=> b!1295280 m!1446763))

(declare-fun m!1446765 () Bool)

(assert (=> b!1295280 m!1446765))

(assert (=> b!1295280 m!1446763))

(assert (=> b!1295280 m!1446765))

(declare-fun m!1446767 () Bool)

(assert (=> b!1295280 m!1446767))

(assert (=> b!1294201 d!365615))

(declare-fun d!365617 () Bool)

(declare-fun c!213378 () Bool)

(assert (=> d!365617 (= c!213378 ((_ is Empty!4251) (right!11461 (c!212845 lt!425590))))))

(declare-fun e!830587 () List!13006)

(assert (=> d!365617 (= (list!4841 (right!11461 (c!212845 lt!425590))) e!830587)))

(declare-fun b!1295282 () Bool)

(declare-fun e!830588 () List!13006)

(assert (=> b!1295282 (= e!830587 e!830588)))

(declare-fun c!213379 () Bool)

(assert (=> b!1295282 (= c!213379 ((_ is Leaf!6562) (right!11461 (c!212845 lt!425590))))))

(declare-fun b!1295283 () Bool)

(assert (=> b!1295283 (= e!830588 (list!4845 (xs!6962 (right!11461 (c!212845 lt!425590)))))))

(declare-fun b!1295284 () Bool)

(assert (=> b!1295284 (= e!830588 (++!3282 (list!4841 (left!11131 (right!11461 (c!212845 lt!425590)))) (list!4841 (right!11461 (right!11461 (c!212845 lt!425590))))))))

(declare-fun b!1295281 () Bool)

(assert (=> b!1295281 (= e!830587 Nil!12940)))

(assert (= (and d!365617 c!213378) b!1295281))

(assert (= (and d!365617 (not c!213378)) b!1295282))

(assert (= (and b!1295282 c!213379) b!1295283))

(assert (= (and b!1295282 (not c!213379)) b!1295284))

(declare-fun m!1446769 () Bool)

(assert (=> b!1295283 m!1446769))

(declare-fun m!1446771 () Bool)

(assert (=> b!1295284 m!1446771))

(declare-fun m!1446773 () Bool)

(assert (=> b!1295284 m!1446773))

(assert (=> b!1295284 m!1446771))

(assert (=> b!1295284 m!1446773))

(declare-fun m!1446775 () Bool)

(assert (=> b!1295284 m!1446775))

(assert (=> b!1294201 d!365617))

(declare-fun d!365619 () Bool)

(declare-fun lt!426323 () Int)

(assert (=> d!365619 (= lt!426323 (size!10573 (list!4841 (left!11131 (c!212845 lt!425590)))))))

(assert (=> d!365619 (= lt!426323 (ite ((_ is Empty!4251) (left!11131 (c!212845 lt!425590))) 0 (ite ((_ is Leaf!6562) (left!11131 (c!212845 lt!425590))) (csize!8733 (left!11131 (c!212845 lt!425590))) (csize!8732 (left!11131 (c!212845 lt!425590))))))))

(assert (=> d!365619 (= (size!10575 (left!11131 (c!212845 lt!425590))) lt!426323)))

(declare-fun bs!328902 () Bool)

(assert (= bs!328902 d!365619))

(assert (=> bs!328902 m!1445239))

(assert (=> bs!328902 m!1445239))

(assert (=> bs!328902 m!1446751))

(assert (=> b!1294201 d!365619))

(declare-fun d!365621 () Bool)

(declare-fun lt!426324 () Int)

(assert (=> d!365621 (>= lt!426324 0)))

(declare-fun e!830589 () Int)

(assert (=> d!365621 (= lt!426324 e!830589)))

(declare-fun c!213380 () Bool)

(assert (=> d!365621 (= c!213380 ((_ is Nil!12940) (t!117315 (getSuffix!399 lt!425588 lt!425591))))))

(assert (=> d!365621 (= (size!10573 (t!117315 (getSuffix!399 lt!425588 lt!425591))) lt!426324)))

(declare-fun b!1295285 () Bool)

(assert (=> b!1295285 (= e!830589 0)))

(declare-fun b!1295286 () Bool)

(assert (=> b!1295286 (= e!830589 (+ 1 (size!10573 (t!117315 (t!117315 (getSuffix!399 lt!425588 lt!425591))))))))

(assert (= (and d!365621 c!213380) b!1295285))

(assert (= (and d!365621 (not c!213380)) b!1295286))

(declare-fun m!1446777 () Bool)

(assert (=> b!1295286 m!1446777))

(assert (=> b!1294288 d!365621))

(declare-fun d!365623 () Bool)

(declare-fun lt!426325 () Int)

(assert (=> d!365623 (>= lt!426325 0)))

(declare-fun e!830590 () Int)

(assert (=> d!365623 (= lt!426325 e!830590)))

(declare-fun c!213381 () Bool)

(assert (=> d!365623 (= c!213381 ((_ is Nil!12940) (t!117315 (list!4837 lt!425590))))))

(assert (=> d!365623 (= (size!10573 (t!117315 (list!4837 lt!425590))) lt!426325)))

(declare-fun b!1295287 () Bool)

(assert (=> b!1295287 (= e!830590 0)))

(declare-fun b!1295288 () Bool)

(assert (=> b!1295288 (= e!830590 (+ 1 (size!10573 (t!117315 (t!117315 (list!4837 lt!425590))))))))

(assert (= (and d!365623 c!213381) b!1295287))

(assert (= (and d!365623 (not c!213381)) b!1295288))

(declare-fun m!1446779 () Bool)

(assert (=> b!1295288 m!1446779))

(assert (=> b!1294284 d!365623))

(declare-fun d!365625 () Bool)

(declare-fun c!213382 () Bool)

(assert (=> d!365625 (= c!213382 ((_ is Nil!12940) lt!425766))))

(declare-fun e!830591 () (InoxSet C!7376))

(assert (=> d!365625 (= (content!1829 lt!425766) e!830591)))

(declare-fun b!1295289 () Bool)

(assert (=> b!1295289 (= e!830591 ((as const (Array C!7376 Bool)) false))))

(declare-fun b!1295290 () Bool)

(assert (=> b!1295290 (= e!830591 ((_ map or) (store ((as const (Array C!7376 Bool)) false) (h!18341 lt!425766) true) (content!1829 (t!117315 lt!425766))))))

(assert (= (and d!365625 c!213382) b!1295289))

(assert (= (and d!365625 (not c!213382)) b!1295290))

(declare-fun m!1446781 () Bool)

(assert (=> b!1295290 m!1446781))

(declare-fun m!1446783 () Bool)

(assert (=> b!1295290 m!1446783))

(assert (=> d!364953 d!365625))

(declare-fun d!365627 () Bool)

(declare-fun c!213383 () Bool)

(assert (=> d!365627 (= c!213383 ((_ is Nil!12940) (t!117315 (list!4837 lt!425587))))))

(declare-fun e!830592 () (InoxSet C!7376))

(assert (=> d!365627 (= (content!1829 (t!117315 (list!4837 lt!425587))) e!830592)))

(declare-fun b!1295291 () Bool)

(assert (=> b!1295291 (= e!830592 ((as const (Array C!7376 Bool)) false))))

(declare-fun b!1295292 () Bool)

(assert (=> b!1295292 (= e!830592 ((_ map or) (store ((as const (Array C!7376 Bool)) false) (h!18341 (t!117315 (list!4837 lt!425587))) true) (content!1829 (t!117315 (t!117315 (list!4837 lt!425587))))))))

(assert (= (and d!365627 c!213383) b!1295291))

(assert (= (and d!365627 (not c!213383)) b!1295292))

(declare-fun m!1446785 () Bool)

(assert (=> b!1295292 m!1446785))

(declare-fun m!1446787 () Bool)

(assert (=> b!1295292 m!1446787))

(assert (=> d!364953 d!365627))

(assert (=> d!364953 d!365095))

(declare-fun d!365629 () Bool)

(declare-fun res!580248 () Bool)

(declare-fun e!830594 () Bool)

(assert (=> d!365629 (=> res!580248 e!830594)))

(assert (=> d!365629 (= res!580248 (not ((_ is Node!4251) (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))))))

(assert (=> d!365629 (= (isBalanced!1249 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))) e!830594)))

(declare-fun b!1295293 () Bool)

(declare-fun res!580244 () Bool)

(declare-fun e!830593 () Bool)

(assert (=> b!1295293 (=> (not res!580244) (not e!830593))))

(assert (=> b!1295293 (= res!580244 (isBalanced!1249 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))))))

(declare-fun b!1295294 () Bool)

(declare-fun res!580249 () Bool)

(assert (=> b!1295294 (=> (not res!580249) (not e!830593))))

(assert (=> b!1295294 (= res!580249 (not (isEmpty!7690 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))))))

(declare-fun b!1295295 () Bool)

(declare-fun res!580246 () Bool)

(assert (=> b!1295295 (=> (not res!580246) (not e!830593))))

(assert (=> b!1295295 (= res!580246 (isBalanced!1249 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))))))

(declare-fun b!1295296 () Bool)

(assert (=> b!1295296 (= e!830594 e!830593)))

(declare-fun res!580247 () Bool)

(assert (=> b!1295296 (=> (not res!580247) (not e!830593))))

(assert (=> b!1295296 (= res!580247 (<= (- 1) (- (height!609 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))) (height!609 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))))))))

(declare-fun b!1295297 () Bool)

(declare-fun res!580245 () Bool)

(assert (=> b!1295297 (=> (not res!580245) (not e!830593))))

(assert (=> b!1295297 (= res!580245 (<= (- (height!609 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))) (height!609 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))) 1))))

(declare-fun b!1295298 () Bool)

(assert (=> b!1295298 (= e!830593 (not (isEmpty!7690 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))))))

(assert (= (and d!365629 (not res!580248)) b!1295296))

(assert (= (and b!1295296 res!580247) b!1295297))

(assert (= (and b!1295297 res!580245) b!1295295))

(assert (= (and b!1295295 res!580246) b!1295293))

(assert (= (and b!1295293 res!580244) b!1295294))

(assert (= (and b!1295294 res!580249) b!1295298))

(assert (=> b!1295297 m!1446381))

(assert (=> b!1295297 m!1446383))

(declare-fun m!1446789 () Bool)

(assert (=> b!1295298 m!1446789))

(declare-fun m!1446791 () Bool)

(assert (=> b!1295294 m!1446791))

(declare-fun m!1446793 () Bool)

(assert (=> b!1295293 m!1446793))

(assert (=> b!1295296 m!1446381))

(assert (=> b!1295296 m!1446383))

(declare-fun m!1446795 () Bool)

(assert (=> b!1295295 m!1446795))

(assert (=> d!364883 d!365629))

(declare-fun d!365631 () Bool)

(declare-fun lt!426326 () Int)

(assert (=> d!365631 (>= lt!426326 0)))

(declare-fun e!830595 () Int)

(assert (=> d!365631 (= lt!426326 e!830595)))

(declare-fun c!213384 () Bool)

(assert (=> d!365631 (= c!213384 ((_ is Nil!12940) (t!117315 lt!425588)))))

(assert (=> d!365631 (= (size!10573 (t!117315 lt!425588)) lt!426326)))

(declare-fun b!1295299 () Bool)

(assert (=> b!1295299 (= e!830595 0)))

(declare-fun b!1295300 () Bool)

(assert (=> b!1295300 (= e!830595 (+ 1 (size!10573 (t!117315 (t!117315 lt!425588)))))))

(assert (= (and d!365631 c!213384) b!1295299))

(assert (= (and d!365631 (not c!213384)) b!1295300))

(declare-fun m!1446797 () Bool)

(assert (=> b!1295300 m!1446797))

(assert (=> b!1293743 d!365631))

(declare-fun d!365633 () Bool)

(declare-fun lt!426327 () Regex!3543)

(assert (=> d!365633 (validRegex!1529 lt!426327)))

(declare-fun e!830596 () Regex!3543)

(assert (=> d!365633 (= lt!426327 e!830596)))

(declare-fun c!213387 () Bool)

(assert (=> d!365633 (= c!213387 (or ((_ is EmptyExpr!3543) (ite c!212988 (regOne!7599 lt!425589) (ite c!212987 (reg!3872 lt!425589) (ite c!212990 (regTwo!7598 lt!425589) (regOne!7598 lt!425589))))) ((_ is EmptyLang!3543) (ite c!212988 (regOne!7599 lt!425589) (ite c!212987 (reg!3872 lt!425589) (ite c!212990 (regTwo!7598 lt!425589) (regOne!7598 lt!425589)))))))))

(assert (=> d!365633 (validRegex!1529 (ite c!212988 (regOne!7599 lt!425589) (ite c!212987 (reg!3872 lt!425589) (ite c!212990 (regTwo!7598 lt!425589) (regOne!7598 lt!425589)))))))

(assert (=> d!365633 (= (derivativeStep!879 (ite c!212988 (regOne!7599 lt!425589) (ite c!212987 (reg!3872 lt!425589) (ite c!212990 (regTwo!7598 lt!425589) (regOne!7598 lt!425589)))) (head!2220 lt!425591)) lt!426327)))

(declare-fun c!213385 () Bool)

(declare-fun c!213386 () Bool)

(declare-fun call!88942 () Regex!3543)

(declare-fun c!213388 () Bool)

(declare-fun bm!88937 () Bool)

(assert (=> bm!88937 (= call!88942 (derivativeStep!879 (ite c!213386 (regOne!7599 (ite c!212988 (regOne!7599 lt!425589) (ite c!212987 (reg!3872 lt!425589) (ite c!212990 (regTwo!7598 lt!425589) (regOne!7598 lt!425589))))) (ite c!213385 (reg!3872 (ite c!212988 (regOne!7599 lt!425589) (ite c!212987 (reg!3872 lt!425589) (ite c!212990 (regTwo!7598 lt!425589) (regOne!7598 lt!425589))))) (ite c!213388 (regTwo!7598 (ite c!212988 (regOne!7599 lt!425589) (ite c!212987 (reg!3872 lt!425589) (ite c!212990 (regTwo!7598 lt!425589) (regOne!7598 lt!425589))))) (regOne!7598 (ite c!212988 (regOne!7599 lt!425589) (ite c!212987 (reg!3872 lt!425589) (ite c!212990 (regTwo!7598 lt!425589) (regOne!7598 lt!425589)))))))) (head!2220 lt!425591)))))

(declare-fun b!1295301 () Bool)

(declare-fun e!830600 () Regex!3543)

(assert (=> b!1295301 (= e!830600 (ite (= (head!2220 lt!425591) (c!212846 (ite c!212988 (regOne!7599 lt!425589) (ite c!212987 (reg!3872 lt!425589) (ite c!212990 (regTwo!7598 lt!425589) (regOne!7598 lt!425589)))))) EmptyExpr!3543 EmptyLang!3543))))

(declare-fun bm!88938 () Bool)

(declare-fun call!88944 () Regex!3543)

(declare-fun call!88945 () Regex!3543)

(assert (=> bm!88938 (= call!88944 call!88945)))

(declare-fun e!830599 () Regex!3543)

(declare-fun b!1295302 () Bool)

(assert (=> b!1295302 (= e!830599 (Concat!5863 call!88945 (ite c!212988 (regOne!7599 lt!425589) (ite c!212987 (reg!3872 lt!425589) (ite c!212990 (regTwo!7598 lt!425589) (regOne!7598 lt!425589))))))))

(declare-fun b!1295303 () Bool)

(assert (=> b!1295303 (= c!213388 (nullable!1129 (regOne!7598 (ite c!212988 (regOne!7599 lt!425589) (ite c!212987 (reg!3872 lt!425589) (ite c!212990 (regTwo!7598 lt!425589) (regOne!7598 lt!425589)))))))))

(declare-fun e!830597 () Regex!3543)

(assert (=> b!1295303 (= e!830599 e!830597)))

(declare-fun bm!88939 () Bool)

(assert (=> bm!88939 (= call!88945 call!88942)))

(declare-fun b!1295304 () Bool)

(assert (=> b!1295304 (= e!830596 EmptyLang!3543)))

(declare-fun call!88943 () Regex!3543)

(declare-fun b!1295305 () Bool)

(assert (=> b!1295305 (= e!830597 (Union!3543 (Concat!5863 call!88943 (regTwo!7598 (ite c!212988 (regOne!7599 lt!425589) (ite c!212987 (reg!3872 lt!425589) (ite c!212990 (regTwo!7598 lt!425589) (regOne!7598 lt!425589)))))) call!88944))))

(declare-fun b!1295306 () Bool)

(declare-fun e!830598 () Regex!3543)

(assert (=> b!1295306 (= e!830598 (Union!3543 call!88942 call!88943))))

(declare-fun b!1295307 () Bool)

(assert (=> b!1295307 (= c!213386 ((_ is Union!3543) (ite c!212988 (regOne!7599 lt!425589) (ite c!212987 (reg!3872 lt!425589) (ite c!212990 (regTwo!7598 lt!425589) (regOne!7598 lt!425589))))))))

(assert (=> b!1295307 (= e!830600 e!830598)))

(declare-fun b!1295308 () Bool)

(assert (=> b!1295308 (= e!830598 e!830599)))

(assert (=> b!1295308 (= c!213385 ((_ is Star!3543) (ite c!212988 (regOne!7599 lt!425589) (ite c!212987 (reg!3872 lt!425589) (ite c!212990 (regTwo!7598 lt!425589) (regOne!7598 lt!425589))))))))

(declare-fun b!1295309 () Bool)

(assert (=> b!1295309 (= e!830597 (Union!3543 (Concat!5863 call!88944 (regTwo!7598 (ite c!212988 (regOne!7599 lt!425589) (ite c!212987 (reg!3872 lt!425589) (ite c!212990 (regTwo!7598 lt!425589) (regOne!7598 lt!425589)))))) EmptyLang!3543))))

(declare-fun b!1295310 () Bool)

(assert (=> b!1295310 (= e!830596 e!830600)))

(declare-fun c!213389 () Bool)

(assert (=> b!1295310 (= c!213389 ((_ is ElementMatch!3543) (ite c!212988 (regOne!7599 lt!425589) (ite c!212987 (reg!3872 lt!425589) (ite c!212990 (regTwo!7598 lt!425589) (regOne!7598 lt!425589))))))))

(declare-fun bm!88940 () Bool)

(assert (=> bm!88940 (= call!88943 (derivativeStep!879 (ite c!213386 (regTwo!7599 (ite c!212988 (regOne!7599 lt!425589) (ite c!212987 (reg!3872 lt!425589) (ite c!212990 (regTwo!7598 lt!425589) (regOne!7598 lt!425589))))) (regOne!7598 (ite c!212988 (regOne!7599 lt!425589) (ite c!212987 (reg!3872 lt!425589) (ite c!212990 (regTwo!7598 lt!425589) (regOne!7598 lt!425589)))))) (head!2220 lt!425591)))))

(assert (= (and d!365633 c!213387) b!1295304))

(assert (= (and d!365633 (not c!213387)) b!1295310))

(assert (= (and b!1295310 c!213389) b!1295301))

(assert (= (and b!1295310 (not c!213389)) b!1295307))

(assert (= (and b!1295307 c!213386) b!1295306))

(assert (= (and b!1295307 (not c!213386)) b!1295308))

(assert (= (and b!1295308 c!213385) b!1295302))

(assert (= (and b!1295308 (not c!213385)) b!1295303))

(assert (= (and b!1295303 c!213388) b!1295305))

(assert (= (and b!1295303 (not c!213388)) b!1295309))

(assert (= (or b!1295305 b!1295309) bm!88938))

(assert (= (or b!1295302 bm!88938) bm!88939))

(assert (= (or b!1295306 bm!88939) bm!88937))

(assert (= (or b!1295306 b!1295305) bm!88940))

(declare-fun m!1446799 () Bool)

(assert (=> d!365633 m!1446799))

(declare-fun m!1446801 () Bool)

(assert (=> d!365633 m!1446801))

(assert (=> bm!88937 m!1444527))

(declare-fun m!1446803 () Bool)

(assert (=> bm!88937 m!1446803))

(declare-fun m!1446805 () Bool)

(assert (=> b!1295303 m!1446805))

(assert (=> bm!88940 m!1444527))

(declare-fun m!1446807 () Bool)

(assert (=> bm!88940 m!1446807))

(assert (=> bm!88758 d!365633))

(declare-fun d!365635 () Bool)

(assert (=> d!365635 (= (isUnion!12 lt!425816) ((_ is Union!3543) lt!425816))))

(assert (=> b!1294100 d!365635))

(declare-fun d!365637 () Bool)

(declare-fun c!213390 () Bool)

(assert (=> d!365637 (= c!213390 ((_ is Nil!12941) (text!16682 (value!73159 t2!34))))))

(declare-fun e!830601 () Int)

(assert (=> d!365637 (= (charsToBigInt!0 (text!16682 (value!73159 t2!34)) 0) e!830601)))

(declare-fun b!1295311 () Bool)

(assert (=> b!1295311 (= e!830601 0)))

(declare-fun b!1295312 () Bool)

(assert (=> b!1295312 (= e!830601 (charsToBigInt!0 (t!117316 (text!16682 (value!73159 t2!34))) (+ (* 0 10) (charToBigInt!0 (h!18342 (text!16682 (value!73159 t2!34)))))))))

(assert (= (and d!365637 c!213390) b!1295311))

(assert (= (and d!365637 (not c!213390)) b!1295312))

(declare-fun m!1446809 () Bool)

(assert (=> b!1295312 m!1446809))

(declare-fun m!1446811 () Bool)

(assert (=> b!1295312 m!1446811))

(assert (=> d!365079 d!365637))

(declare-fun d!365639 () Bool)

(declare-fun nullableFct!255 (Regex!3543) Bool)

(assert (=> d!365639 (= (nullable!1129 lt!425589) (nullableFct!255 lt!425589))))

(declare-fun bs!328903 () Bool)

(assert (= bs!328903 d!365639))

(declare-fun m!1446813 () Bool)

(assert (=> bs!328903 m!1446813))

(assert (=> b!1294003 d!365639))

(declare-fun d!365641 () Bool)

(declare-fun lt!426331 () Int)

(assert (=> d!365641 (>= lt!426331 0)))

(declare-fun e!830602 () Int)

(assert (=> d!365641 (= lt!426331 e!830602)))

(declare-fun c!213391 () Bool)

(assert (=> d!365641 (= c!213391 ((_ is Nil!12940) (list!4841 (c!212845 lt!425590))))))

(assert (=> d!365641 (= (size!10573 (list!4841 (c!212845 lt!425590))) lt!426331)))

(declare-fun b!1295313 () Bool)

(assert (=> b!1295313 (= e!830602 0)))

(declare-fun b!1295314 () Bool)

(assert (=> b!1295314 (= e!830602 (+ 1 (size!10573 (t!117315 (list!4841 (c!212845 lt!425590))))))))

(assert (= (and d!365641 c!213391) b!1295313))

(assert (= (and d!365641 (not c!213391)) b!1295314))

(declare-fun m!1446817 () Bool)

(assert (=> b!1295314 m!1446817))

(assert (=> d!365135 d!365641))

(assert (=> d!365135 d!365343))

(declare-fun d!365645 () Bool)

(assert (=> d!365645 (= (list!4837 (_2!7227 lt!425729)) (list!4841 (c!212845 (_2!7227 lt!425729))))))

(declare-fun bs!328905 () Bool)

(assert (= bs!328905 d!365645))

(declare-fun m!1446819 () Bool)

(assert (=> bs!328905 m!1446819))

(assert (=> b!1293842 d!365645))

(assert (=> b!1293842 d!365221))

(assert (=> b!1293842 d!365225))

(declare-fun d!365647 () Bool)

(assert (=> d!365647 (= (list!4840 lt!425822) (list!4844 (c!212884 lt!425822)))))

(declare-fun bs!328906 () Bool)

(assert (= bs!328906 d!365647))

(declare-fun m!1446821 () Bool)

(assert (=> bs!328906 m!1446821))

(assert (=> d!365061 d!365647))

(declare-fun d!365649 () Bool)

(declare-fun e!830615 () Bool)

(assert (=> d!365649 e!830615))

(declare-fun res!580260 () Bool)

(assert (=> d!365649 (=> (not res!580260) (not e!830615))))

(declare-fun lt!426337 () BalanceConc!8446)

(assert (=> d!365649 (= res!580260 (= (list!4840 lt!426337) (Cons!12946 t1!34 Nil!12946)))))

(declare-fun choose!7950 (Token!4120) BalanceConc!8446)

(assert (=> d!365649 (= lt!426337 (choose!7950 t1!34))))

(assert (=> d!365649 (= (singleton!356 t1!34) lt!426337)))

(declare-fun b!1295329 () Bool)

(assert (=> b!1295329 (= e!830615 (isBalanced!1252 (c!212884 lt!426337)))))

(assert (= (and d!365649 res!580260) b!1295329))

(declare-fun m!1446835 () Bool)

(assert (=> d!365649 m!1446835))

(declare-fun m!1446837 () Bool)

(assert (=> d!365649 m!1446837))

(declare-fun m!1446839 () Bool)

(assert (=> b!1295329 m!1446839))

(assert (=> d!365061 d!365649))

(declare-fun d!365655 () Bool)

(declare-fun lt!426338 () Token!4120)

(assert (=> d!365655 (contains!2164 (list!4840 (_1!7227 lt!425649)) lt!426338)))

(declare-fun e!830617 () Token!4120)

(assert (=> d!365655 (= lt!426338 e!830617)))

(declare-fun c!213394 () Bool)

(assert (=> d!365655 (= c!213394 (= 0 0))))

(declare-fun e!830618 () Bool)

(assert (=> d!365655 e!830618))

(declare-fun res!580263 () Bool)

(assert (=> d!365655 (=> (not res!580263) (not e!830618))))

(assert (=> d!365655 (= res!580263 (<= 0 0))))

(assert (=> d!365655 (= (apply!2855 (list!4840 (_1!7227 lt!425649)) 0) lt!426338)))

(declare-fun b!1295332 () Bool)

(assert (=> b!1295332 (= e!830618 (< 0 (size!10580 (list!4840 (_1!7227 lt!425649)))))))

(declare-fun b!1295333 () Bool)

(assert (=> b!1295333 (= e!830617 (head!2223 (list!4840 (_1!7227 lt!425649))))))

(declare-fun b!1295334 () Bool)

(assert (=> b!1295334 (= e!830617 (apply!2855 (tail!1851 (list!4840 (_1!7227 lt!425649))) (- 0 1)))))

(assert (= (and d!365655 res!580263) b!1295332))

(assert (= (and d!365655 c!213394) b!1295333))

(assert (= (and d!365655 (not c!213394)) b!1295334))

(assert (=> d!365655 m!1445219))

(declare-fun m!1446847 () Bool)

(assert (=> d!365655 m!1446847))

(assert (=> b!1295332 m!1445219))

(assert (=> b!1295332 m!1445221))

(assert (=> b!1295333 m!1445219))

(declare-fun m!1446849 () Bool)

(assert (=> b!1295333 m!1446849))

(assert (=> b!1295334 m!1445219))

(declare-fun m!1446851 () Bool)

(assert (=> b!1295334 m!1446851))

(assert (=> b!1295334 m!1446851))

(declare-fun m!1446855 () Bool)

(assert (=> b!1295334 m!1446855))

(assert (=> d!365171 d!365655))

(assert (=> d!365171 d!365461))

(declare-fun b!1295341 () Bool)

(declare-fun e!830625 () Int)

(assert (=> b!1295341 (= e!830625 0)))

(declare-fun d!365663 () Bool)

(declare-fun lt!426342 () Token!4120)

(assert (=> d!365663 (= lt!426342 (apply!2855 (list!4844 (c!212884 (_1!7227 lt!425649))) 0))))

(declare-fun e!830622 () Token!4120)

(assert (=> d!365663 (= lt!426342 e!830622)))

(declare-fun c!213400 () Bool)

(assert (=> d!365663 (= c!213400 ((_ is Leaf!6564) (c!212884 (_1!7227 lt!425649))))))

(declare-fun e!830623 () Bool)

(assert (=> d!365663 e!830623))

(declare-fun res!580264 () Bool)

(assert (=> d!365663 (=> (not res!580264) (not e!830623))))

(assert (=> d!365663 (= res!580264 (<= 0 0))))

(assert (=> d!365663 (= (apply!2856 (c!212884 (_1!7227 lt!425649)) 0) lt!426342)))

(declare-fun bm!88944 () Bool)

(declare-fun c!213398 () Bool)

(declare-fun c!213399 () Bool)

(assert (=> bm!88944 (= c!213398 c!213399)))

(declare-fun call!88949 () Token!4120)

(assert (=> bm!88944 (= call!88949 (apply!2856 (ite c!213399 (left!11133 (c!212884 (_1!7227 lt!425649))) (right!11463 (c!212884 (_1!7227 lt!425649)))) e!830625))))

(declare-fun b!1295342 () Bool)

(assert (=> b!1295342 (= e!830622 (apply!2858 (xs!6964 (c!212884 (_1!7227 lt!425649))) 0))))

(declare-fun b!1295343 () Bool)

(declare-fun e!830624 () Token!4120)

(assert (=> b!1295343 (= e!830624 call!88949)))

(declare-fun b!1295344 () Bool)

(assert (=> b!1295344 (= e!830622 e!830624)))

(declare-fun lt!426343 () Bool)

(assert (=> b!1295344 (= lt!426343 (appendIndex!130 (list!4844 (left!11133 (c!212884 (_1!7227 lt!425649)))) (list!4844 (right!11463 (c!212884 (_1!7227 lt!425649)))) 0))))

(assert (=> b!1295344 (= c!213399 (< 0 (size!10581 (left!11133 (c!212884 (_1!7227 lt!425649))))))))

(declare-fun b!1295345 () Bool)

(assert (=> b!1295345 (= e!830623 (< 0 (size!10581 (c!212884 (_1!7227 lt!425649)))))))

(declare-fun b!1295346 () Bool)

(assert (=> b!1295346 (= e!830624 call!88949)))

(declare-fun b!1295347 () Bool)

(assert (=> b!1295347 (= e!830625 (- 0 (size!10581 (left!11133 (c!212884 (_1!7227 lt!425649))))))))

(assert (= (and d!365663 res!580264) b!1295345))

(assert (= (and d!365663 c!213400) b!1295342))

(assert (= (and d!365663 (not c!213400)) b!1295344))

(assert (= (and b!1295344 c!213399) b!1295346))

(assert (= (and b!1295344 (not c!213399)) b!1295343))

(assert (= (or b!1295346 b!1295343) bm!88944))

(assert (= (and bm!88944 c!213398) b!1295341))

(assert (= (and bm!88944 (not c!213398)) b!1295347))

(declare-fun m!1446865 () Bool)

(assert (=> b!1295347 m!1446865))

(assert (=> d!365663 m!1446325))

(assert (=> d!365663 m!1446325))

(declare-fun m!1446867 () Bool)

(assert (=> d!365663 m!1446867))

(declare-fun m!1446869 () Bool)

(assert (=> b!1295344 m!1446869))

(declare-fun m!1446871 () Bool)

(assert (=> b!1295344 m!1446871))

(assert (=> b!1295344 m!1446869))

(assert (=> b!1295344 m!1446871))

(declare-fun m!1446875 () Bool)

(assert (=> b!1295344 m!1446875))

(assert (=> b!1295344 m!1446865))

(declare-fun m!1446877 () Bool)

(assert (=> b!1295342 m!1446877))

(declare-fun m!1446879 () Bool)

(assert (=> bm!88944 m!1446879))

(assert (=> b!1295345 m!1445223))

(assert (=> d!365171 d!365663))

(assert (=> b!1294007 d!365513))

(declare-fun d!365675 () Bool)

(declare-fun c!213402 () Bool)

(assert (=> d!365675 (= c!213402 ((_ is Nil!12940) (t!117315 lt!425655)))))

(declare-fun e!830627 () (InoxSet C!7376))

(assert (=> d!365675 (= (content!1829 (t!117315 lt!425655)) e!830627)))

(declare-fun b!1295350 () Bool)

(assert (=> b!1295350 (= e!830627 ((as const (Array C!7376 Bool)) false))))

(declare-fun b!1295351 () Bool)

(assert (=> b!1295351 (= e!830627 ((_ map or) (store ((as const (Array C!7376 Bool)) false) (h!18341 (t!117315 lt!425655)) true) (content!1829 (t!117315 (t!117315 lt!425655)))))))

(assert (= (and d!365675 c!213402) b!1295350))

(assert (= (and d!365675 (not c!213402)) b!1295351))

(declare-fun m!1446885 () Bool)

(assert (=> b!1295351 m!1446885))

(declare-fun m!1446887 () Bool)

(assert (=> b!1295351 m!1446887))

(assert (=> b!1294243 d!365675))

(declare-fun b!1295355 () Bool)

(declare-fun e!830631 () Bool)

(declare-fun e!830630 () Bool)

(assert (=> b!1295355 (= e!830631 e!830630)))

(declare-fun res!580268 () Bool)

(assert (=> b!1295355 (=> (not res!580268) (not e!830630))))

(assert (=> b!1295355 (= res!580268 (not ((_ is Nil!12940) (tail!1848 lt!425619))))))

(declare-fun b!1295356 () Bool)

(declare-fun res!580269 () Bool)

(assert (=> b!1295356 (=> (not res!580269) (not e!830630))))

(assert (=> b!1295356 (= res!580269 (= (head!2220 (tail!1848 lt!425591)) (head!2220 (tail!1848 lt!425619))))))

(declare-fun b!1295358 () Bool)

(declare-fun e!830632 () Bool)

(assert (=> b!1295358 (= e!830632 (>= (size!10573 (tail!1848 lt!425619)) (size!10573 (tail!1848 lt!425591))))))

(declare-fun d!365679 () Bool)

(assert (=> d!365679 e!830632))

(declare-fun res!580266 () Bool)

(assert (=> d!365679 (=> res!580266 e!830632)))

(declare-fun lt!426348 () Bool)

(assert (=> d!365679 (= res!580266 (not lt!426348))))

(assert (=> d!365679 (= lt!426348 e!830631)))

(declare-fun res!580267 () Bool)

(assert (=> d!365679 (=> res!580267 e!830631)))

(assert (=> d!365679 (= res!580267 ((_ is Nil!12940) (tail!1848 lt!425591)))))

(assert (=> d!365679 (= (isPrefix!1054 (tail!1848 lt!425591) (tail!1848 lt!425619)) lt!426348)))

(declare-fun b!1295357 () Bool)

(assert (=> b!1295357 (= e!830630 (isPrefix!1054 (tail!1848 (tail!1848 lt!425591)) (tail!1848 (tail!1848 lt!425619))))))

(assert (= (and d!365679 (not res!580267)) b!1295355))

(assert (= (and b!1295355 res!580268) b!1295356))

(assert (= (and b!1295356 res!580269) b!1295357))

(assert (= (and d!365679 (not res!580266)) b!1295358))

(assert (=> b!1295356 m!1444531))

(assert (=> b!1295356 m!1444957))

(assert (=> b!1295356 m!1445073))

(declare-fun m!1446899 () Bool)

(assert (=> b!1295356 m!1446899))

(assert (=> b!1295358 m!1445073))

(declare-fun m!1446901 () Bool)

(assert (=> b!1295358 m!1446901))

(assert (=> b!1295358 m!1444531))

(declare-fun m!1446903 () Bool)

(assert (=> b!1295358 m!1446903))

(assert (=> b!1295357 m!1444531))

(assert (=> b!1295357 m!1444961))

(assert (=> b!1295357 m!1445073))

(declare-fun m!1446905 () Bool)

(assert (=> b!1295357 m!1446905))

(assert (=> b!1295357 m!1444961))

(assert (=> b!1295357 m!1446905))

(declare-fun m!1446909 () Bool)

(assert (=> b!1295357 m!1446909))

(assert (=> b!1294318 d!365679))

(assert (=> b!1294318 d!364985))

(assert (=> b!1294318 d!365229))

(declare-fun b!1295368 () Bool)

(declare-fun lt!426350 () List!13006)

(declare-fun e!830636 () Bool)

(assert (=> b!1295368 (= e!830636 (or (not (= (Cons!12940 (apply!2845 lt!425590 0) Nil!12940) Nil!12940)) (= lt!426350 (t!117315 (t!117315 (list!4837 lt!425587))))))))

(declare-fun b!1295366 () Bool)

(declare-fun e!830637 () List!13006)

(assert (=> b!1295366 (= e!830637 (Cons!12940 (h!18341 (t!117315 (t!117315 (list!4837 lt!425587)))) (++!3282 (t!117315 (t!117315 (t!117315 (list!4837 lt!425587)))) (Cons!12940 (apply!2845 lt!425590 0) Nil!12940))))))

(declare-fun b!1295367 () Bool)

(declare-fun res!580270 () Bool)

(assert (=> b!1295367 (=> (not res!580270) (not e!830636))))

(assert (=> b!1295367 (= res!580270 (= (size!10573 lt!426350) (+ (size!10573 (t!117315 (t!117315 (list!4837 lt!425587)))) (size!10573 (Cons!12940 (apply!2845 lt!425590 0) Nil!12940)))))))

(declare-fun b!1295365 () Bool)

(assert (=> b!1295365 (= e!830637 (Cons!12940 (apply!2845 lt!425590 0) Nil!12940))))

(declare-fun d!365687 () Bool)

(assert (=> d!365687 e!830636))

(declare-fun res!580271 () Bool)

(assert (=> d!365687 (=> (not res!580271) (not e!830636))))

(assert (=> d!365687 (= res!580271 (= (content!1829 lt!426350) ((_ map or) (content!1829 (t!117315 (t!117315 (list!4837 lt!425587)))) (content!1829 (Cons!12940 (apply!2845 lt!425590 0) Nil!12940)))))))

(assert (=> d!365687 (= lt!426350 e!830637)))

(declare-fun c!213407 () Bool)

(assert (=> d!365687 (= c!213407 ((_ is Nil!12940) (t!117315 (t!117315 (list!4837 lt!425587)))))))

(assert (=> d!365687 (= (++!3282 (t!117315 (t!117315 (list!4837 lt!425587))) (Cons!12940 (apply!2845 lt!425590 0) Nil!12940)) lt!426350)))

(assert (= (and d!365687 c!213407) b!1295365))

(assert (= (and d!365687 (not c!213407)) b!1295366))

(assert (= (and d!365687 res!580271) b!1295367))

(assert (= (and b!1295367 res!580270) b!1295368))

(declare-fun m!1446917 () Bool)

(assert (=> b!1295366 m!1446917))

(declare-fun m!1446919 () Bool)

(assert (=> b!1295367 m!1446919))

(declare-fun m!1446921 () Bool)

(assert (=> b!1295367 m!1446921))

(assert (=> b!1295367 m!1444513))

(declare-fun m!1446923 () Bool)

(assert (=> d!365687 m!1446923))

(assert (=> d!365687 m!1446787))

(assert (=> d!365687 m!1444519))

(assert (=> b!1293849 d!365687))

(declare-fun b!1295404 () Bool)

(declare-fun res!580304 () Bool)

(declare-fun e!830655 () Bool)

(assert (=> b!1295404 (=> (not res!580304) (not e!830655))))

(assert (=> b!1295404 (= res!580304 (not (isEmpty!7698 (left!11133 (c!212884 lt!425822)))))))

(declare-fun b!1295405 () Bool)

(declare-fun res!580301 () Bool)

(assert (=> b!1295405 (=> (not res!580301) (not e!830655))))

(assert (=> b!1295405 (= res!580301 (isBalanced!1252 (right!11463 (c!212884 lt!425822))))))

(declare-fun b!1295406 () Bool)

(declare-fun e!830654 () Bool)

(assert (=> b!1295406 (= e!830654 e!830655)))

(declare-fun res!580306 () Bool)

(assert (=> b!1295406 (=> (not res!580306) (not e!830655))))

(declare-fun height!611 (Conc!4253) Int)

(assert (=> b!1295406 (= res!580306 (<= (- 1) (- (height!611 (left!11133 (c!212884 lt!425822))) (height!611 (right!11463 (c!212884 lt!425822))))))))

(declare-fun d!365691 () Bool)

(declare-fun res!580303 () Bool)

(assert (=> d!365691 (=> res!580303 e!830654)))

(assert (=> d!365691 (= res!580303 (not ((_ is Node!4253) (c!212884 lt!425822))))))

(assert (=> d!365691 (= (isBalanced!1252 (c!212884 lt!425822)) e!830654)))

(declare-fun b!1295407 () Bool)

(declare-fun res!580305 () Bool)

(assert (=> b!1295407 (=> (not res!580305) (not e!830655))))

(assert (=> b!1295407 (= res!580305 (isBalanced!1252 (left!11133 (c!212884 lt!425822))))))

(declare-fun b!1295408 () Bool)

(assert (=> b!1295408 (= e!830655 (not (isEmpty!7698 (right!11463 (c!212884 lt!425822)))))))

(declare-fun b!1295409 () Bool)

(declare-fun res!580302 () Bool)

(assert (=> b!1295409 (=> (not res!580302) (not e!830655))))

(assert (=> b!1295409 (= res!580302 (<= (- (height!611 (left!11133 (c!212884 lt!425822))) (height!611 (right!11463 (c!212884 lt!425822)))) 1))))

(assert (= (and d!365691 (not res!580303)) b!1295406))

(assert (= (and b!1295406 res!580306) b!1295409))

(assert (= (and b!1295409 res!580302) b!1295407))

(assert (= (and b!1295407 res!580305) b!1295405))

(assert (= (and b!1295405 res!580301) b!1295404))

(assert (= (and b!1295404 res!580304) b!1295408))

(declare-fun m!1446933 () Bool)

(assert (=> b!1295405 m!1446933))

(declare-fun m!1446935 () Bool)

(assert (=> b!1295404 m!1446935))

(declare-fun m!1446937 () Bool)

(assert (=> b!1295408 m!1446937))

(declare-fun m!1446939 () Bool)

(assert (=> b!1295409 m!1446939))

(declare-fun m!1446941 () Bool)

(assert (=> b!1295409 m!1446941))

(assert (=> b!1295406 m!1446939))

(assert (=> b!1295406 m!1446941))

(declare-fun m!1446943 () Bool)

(assert (=> b!1295407 m!1446943))

(assert (=> b!1294173 d!365691))

(declare-fun d!365699 () Bool)

(assert (=> d!365699 (= (nullable!1129 (regOne!7598 lt!425589)) (nullableFct!255 (regOne!7598 lt!425589)))))

(declare-fun bs!328910 () Bool)

(assert (= bs!328910 d!365699))

(declare-fun m!1446945 () Bool)

(assert (=> bs!328910 m!1446945))

(assert (=> b!1293906 d!365699))

(declare-fun d!365701 () Bool)

(assert (=> d!365701 (= (head!2220 (list!4837 lt!425590)) (h!18341 (list!4837 lt!425590)))))

(assert (=> b!1294181 d!365701))

(declare-fun d!365703 () Bool)

(declare-fun lt!426352 () Int)

(assert (=> d!365703 (= lt!426352 (size!10573 (list!4837 (charsOf!1201 t2!34))))))

(assert (=> d!365703 (= lt!426352 (size!10575 (c!212845 (charsOf!1201 t2!34))))))

(assert (=> d!365703 (= (size!10568 (charsOf!1201 t2!34)) lt!426352)))

(declare-fun bs!328911 () Bool)

(assert (= bs!328911 d!365703))

(assert (=> bs!328911 m!1444157))

(assert (=> bs!328911 m!1445401))

(assert (=> bs!328911 m!1445401))

(declare-fun m!1446947 () Bool)

(assert (=> bs!328911 m!1446947))

(declare-fun m!1446949 () Bool)

(assert (=> bs!328911 m!1446949))

(assert (=> b!1294304 d!365703))

(declare-fun d!365705 () Bool)

(declare-fun c!213411 () Bool)

(assert (=> d!365705 (= c!213411 ((_ is Nil!12940) lt!425688))))

(declare-fun e!830658 () (InoxSet C!7376))

(assert (=> d!365705 (= (content!1829 lt!425688) e!830658)))

(declare-fun b!1295416 () Bool)

(assert (=> b!1295416 (= e!830658 ((as const (Array C!7376 Bool)) false))))

(declare-fun b!1295417 () Bool)

(assert (=> b!1295417 (= e!830658 ((_ map or) (store ((as const (Array C!7376 Bool)) false) (h!18341 lt!425688) true) (content!1829 (t!117315 lt!425688))))))

(assert (= (and d!365705 c!213411) b!1295416))

(assert (= (and d!365705 (not c!213411)) b!1295417))

(declare-fun m!1446951 () Bool)

(assert (=> b!1295417 m!1446951))

(declare-fun m!1446953 () Bool)

(assert (=> b!1295417 m!1446953))

(assert (=> d!364885 d!365705))

(assert (=> d!364885 d!365025))

(declare-fun d!365707 () Bool)

(declare-fun c!213412 () Bool)

(assert (=> d!365707 (= c!213412 ((_ is Nil!12940) lt!425616))))

(declare-fun e!830659 () (InoxSet C!7376))

(assert (=> d!365707 (= (content!1829 lt!425616) e!830659)))

(declare-fun b!1295418 () Bool)

(assert (=> b!1295418 (= e!830659 ((as const (Array C!7376 Bool)) false))))

(declare-fun b!1295419 () Bool)

(assert (=> b!1295419 (= e!830659 ((_ map or) (store ((as const (Array C!7376 Bool)) false) (h!18341 lt!425616) true) (content!1829 (t!117315 lt!425616))))))

(assert (= (and d!365707 c!213412) b!1295418))

(assert (= (and d!365707 (not c!213412)) b!1295419))

(declare-fun m!1446963 () Bool)

(assert (=> b!1295419 m!1446963))

(declare-fun m!1446967 () Bool)

(assert (=> b!1295419 m!1446967))

(assert (=> d!364885 d!365707))

(declare-fun d!365709 () Bool)

(declare-fun lt!426353 () Int)

(assert (=> d!365709 (>= lt!426353 0)))

(declare-fun e!830660 () Int)

(assert (=> d!365709 (= lt!426353 e!830660)))

(declare-fun c!213413 () Bool)

(assert (=> d!365709 (= c!213413 ((_ is Nil!12940) lt!425766))))

(assert (=> d!365709 (= (size!10573 lt!425766) lt!426353)))

(declare-fun b!1295420 () Bool)

(assert (=> b!1295420 (= e!830660 0)))

(declare-fun b!1295421 () Bool)

(assert (=> b!1295421 (= e!830660 (+ 1 (size!10573 (t!117315 lt!425766))))))

(assert (= (and d!365709 c!213413) b!1295420))

(assert (= (and d!365709 (not c!213413)) b!1295421))

(declare-fun m!1446973 () Bool)

(assert (=> b!1295421 m!1446973))

(assert (=> b!1293850 d!365709))

(declare-fun d!365713 () Bool)

(declare-fun lt!426354 () Int)

(assert (=> d!365713 (>= lt!426354 0)))

(declare-fun e!830661 () Int)

(assert (=> d!365713 (= lt!426354 e!830661)))

(declare-fun c!213414 () Bool)

(assert (=> d!365713 (= c!213414 ((_ is Nil!12940) (t!117315 (list!4837 lt!425587))))))

(assert (=> d!365713 (= (size!10573 (t!117315 (list!4837 lt!425587))) lt!426354)))

(declare-fun b!1295422 () Bool)

(assert (=> b!1295422 (= e!830661 0)))

(declare-fun b!1295423 () Bool)

(assert (=> b!1295423 (= e!830661 (+ 1 (size!10573 (t!117315 (t!117315 (list!4837 lt!425587))))))))

(assert (= (and d!365713 c!213414) b!1295422))

(assert (= (and d!365713 (not c!213414)) b!1295423))

(assert (=> b!1295423 m!1446921))

(assert (=> b!1293850 d!365713))

(assert (=> b!1293850 d!365131))

(declare-fun b!1295424 () Bool)

(declare-fun res!580316 () Bool)

(declare-fun e!830663 () Bool)

(assert (=> b!1295424 (=> (not res!580316) (not e!830663))))

(assert (=> b!1295424 (= res!580316 (not (isEmpty!7698 (left!11133 (c!212884 lt!425765)))))))

(declare-fun b!1295425 () Bool)

(declare-fun res!580313 () Bool)

(assert (=> b!1295425 (=> (not res!580313) (not e!830663))))

(assert (=> b!1295425 (= res!580313 (isBalanced!1252 (right!11463 (c!212884 lt!425765))))))

(declare-fun b!1295426 () Bool)

(declare-fun e!830662 () Bool)

(assert (=> b!1295426 (= e!830662 e!830663)))

(declare-fun res!580318 () Bool)

(assert (=> b!1295426 (=> (not res!580318) (not e!830663))))

(assert (=> b!1295426 (= res!580318 (<= (- 1) (- (height!611 (left!11133 (c!212884 lt!425765))) (height!611 (right!11463 (c!212884 lt!425765))))))))

(declare-fun d!365719 () Bool)

(declare-fun res!580315 () Bool)

(assert (=> d!365719 (=> res!580315 e!830662)))

(assert (=> d!365719 (= res!580315 (not ((_ is Node!4253) (c!212884 lt!425765))))))

(assert (=> d!365719 (= (isBalanced!1252 (c!212884 lt!425765)) e!830662)))

(declare-fun b!1295427 () Bool)

(declare-fun res!580317 () Bool)

(assert (=> b!1295427 (=> (not res!580317) (not e!830663))))

(assert (=> b!1295427 (= res!580317 (isBalanced!1252 (left!11133 (c!212884 lt!425765))))))

(declare-fun b!1295428 () Bool)

(assert (=> b!1295428 (= e!830663 (not (isEmpty!7698 (right!11463 (c!212884 lt!425765)))))))

(declare-fun b!1295429 () Bool)

(declare-fun res!580314 () Bool)

(assert (=> b!1295429 (=> (not res!580314) (not e!830663))))

(assert (=> b!1295429 (= res!580314 (<= (- (height!611 (left!11133 (c!212884 lt!425765))) (height!611 (right!11463 (c!212884 lt!425765)))) 1))))

(assert (= (and d!365719 (not res!580315)) b!1295426))

(assert (= (and b!1295426 res!580318) b!1295429))

(assert (= (and b!1295429 res!580314) b!1295427))

(assert (= (and b!1295427 res!580317) b!1295425))

(assert (= (and b!1295425 res!580313) b!1295424))

(assert (= (and b!1295424 res!580316) b!1295428))

(declare-fun m!1446977 () Bool)

(assert (=> b!1295425 m!1446977))

(declare-fun m!1446979 () Bool)

(assert (=> b!1295424 m!1446979))

(declare-fun m!1446981 () Bool)

(assert (=> b!1295428 m!1446981))

(declare-fun m!1446983 () Bool)

(assert (=> b!1295429 m!1446983))

(declare-fun m!1446985 () Bool)

(assert (=> b!1295429 m!1446985))

(assert (=> b!1295426 m!1446983))

(assert (=> b!1295426 m!1446985))

(declare-fun m!1446987 () Bool)

(assert (=> b!1295427 m!1446987))

(assert (=> b!1293847 d!365719))

(declare-fun d!365721 () Bool)

(declare-fun res!580325 () Bool)

(declare-fun e!830671 () Bool)

(assert (=> d!365721 (=> res!580325 e!830671)))

(assert (=> d!365721 (= res!580325 (not ((_ is Node!4251) (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))))))

(assert (=> d!365721 (= (isBalanced!1249 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))) e!830671)))

(declare-fun b!1295440 () Bool)

(declare-fun res!580321 () Bool)

(declare-fun e!830670 () Bool)

(assert (=> b!1295440 (=> (not res!580321) (not e!830670))))

(assert (=> b!1295440 (= res!580321 (isBalanced!1249 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))))))

(declare-fun b!1295441 () Bool)

(declare-fun res!580326 () Bool)

(assert (=> b!1295441 (=> (not res!580326) (not e!830670))))

(assert (=> b!1295441 (= res!580326 (not (isEmpty!7690 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))))))

(declare-fun b!1295442 () Bool)

(declare-fun res!580323 () Bool)

(assert (=> b!1295442 (=> (not res!580323) (not e!830670))))

(assert (=> b!1295442 (= res!580323 (isBalanced!1249 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))))))

(declare-fun b!1295443 () Bool)

(assert (=> b!1295443 (= e!830671 e!830670)))

(declare-fun res!580324 () Bool)

(assert (=> b!1295443 (=> (not res!580324) (not e!830670))))

(assert (=> b!1295443 (= res!580324 (<= (- 1) (- (height!609 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))) (height!609 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))))))))

(declare-fun b!1295444 () Bool)

(declare-fun res!580322 () Bool)

(assert (=> b!1295444 (=> (not res!580322) (not e!830670))))

(assert (=> b!1295444 (= res!580322 (<= (- (height!609 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))) (height!609 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))) 1))))

(declare-fun b!1295445 () Bool)

(assert (=> b!1295445 (= e!830670 (not (isEmpty!7690 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))))))

(assert (= (and d!365721 (not res!580325)) b!1295443))

(assert (= (and b!1295443 res!580324) b!1295444))

(assert (= (and b!1295444 res!580322) b!1295442))

(assert (= (and b!1295442 res!580323) b!1295440))

(assert (= (and b!1295440 res!580321) b!1295441))

(assert (= (and b!1295441 res!580326) b!1295445))

(declare-fun m!1446989 () Bool)

(assert (=> b!1295444 m!1446989))

(declare-fun m!1446991 () Bool)

(assert (=> b!1295444 m!1446991))

(declare-fun m!1446993 () Bool)

(assert (=> b!1295445 m!1446993))

(declare-fun m!1446995 () Bool)

(assert (=> b!1295441 m!1446995))

(declare-fun m!1446997 () Bool)

(assert (=> b!1295440 m!1446997))

(assert (=> b!1295443 m!1446989))

(assert (=> b!1295443 m!1446991))

(declare-fun m!1447003 () Bool)

(assert (=> b!1295442 m!1447003))

(assert (=> d!365121 d!365721))

(declare-fun d!365723 () Bool)

(declare-fun lt!426356 () Regex!3543)

(assert (=> d!365723 (validRegex!1529 lt!426356)))

(declare-fun e!830672 () Regex!3543)

(assert (=> d!365723 (= lt!426356 e!830672)))

(declare-fun c!213421 () Bool)

(assert (=> d!365723 (= c!213421 (or ((_ is EmptyExpr!3543) (ite c!212988 (regTwo!7599 lt!425589) (regOne!7598 lt!425589))) ((_ is EmptyLang!3543) (ite c!212988 (regTwo!7599 lt!425589) (regOne!7598 lt!425589)))))))

(assert (=> d!365723 (validRegex!1529 (ite c!212988 (regTwo!7599 lt!425589) (regOne!7598 lt!425589)))))

(assert (=> d!365723 (= (derivativeStep!879 (ite c!212988 (regTwo!7599 lt!425589) (regOne!7598 lt!425589)) (head!2220 lt!425591)) lt!426356)))

(declare-fun c!213420 () Bool)

(declare-fun c!213422 () Bool)

(declare-fun call!88953 () Regex!3543)

(declare-fun bm!88948 () Bool)

(declare-fun c!213419 () Bool)

(assert (=> bm!88948 (= call!88953 (derivativeStep!879 (ite c!213420 (regOne!7599 (ite c!212988 (regTwo!7599 lt!425589) (regOne!7598 lt!425589))) (ite c!213419 (reg!3872 (ite c!212988 (regTwo!7599 lt!425589) (regOne!7598 lt!425589))) (ite c!213422 (regTwo!7598 (ite c!212988 (regTwo!7599 lt!425589) (regOne!7598 lt!425589))) (regOne!7598 (ite c!212988 (regTwo!7599 lt!425589) (regOne!7598 lt!425589)))))) (head!2220 lt!425591)))))

(declare-fun b!1295446 () Bool)

(declare-fun e!830676 () Regex!3543)

(assert (=> b!1295446 (= e!830676 (ite (= (head!2220 lt!425591) (c!212846 (ite c!212988 (regTwo!7599 lt!425589) (regOne!7598 lt!425589)))) EmptyExpr!3543 EmptyLang!3543))))

(declare-fun bm!88949 () Bool)

(declare-fun call!88955 () Regex!3543)

(declare-fun call!88956 () Regex!3543)

(assert (=> bm!88949 (= call!88955 call!88956)))

(declare-fun e!830675 () Regex!3543)

(declare-fun b!1295447 () Bool)

(assert (=> b!1295447 (= e!830675 (Concat!5863 call!88956 (ite c!212988 (regTwo!7599 lt!425589) (regOne!7598 lt!425589))))))

(declare-fun b!1295448 () Bool)

(assert (=> b!1295448 (= c!213422 (nullable!1129 (regOne!7598 (ite c!212988 (regTwo!7599 lt!425589) (regOne!7598 lt!425589)))))))

(declare-fun e!830673 () Regex!3543)

(assert (=> b!1295448 (= e!830675 e!830673)))

(declare-fun bm!88950 () Bool)

(assert (=> bm!88950 (= call!88956 call!88953)))

(declare-fun b!1295449 () Bool)

(assert (=> b!1295449 (= e!830672 EmptyLang!3543)))

(declare-fun call!88954 () Regex!3543)

(declare-fun b!1295450 () Bool)

(assert (=> b!1295450 (= e!830673 (Union!3543 (Concat!5863 call!88954 (regTwo!7598 (ite c!212988 (regTwo!7599 lt!425589) (regOne!7598 lt!425589)))) call!88955))))

(declare-fun b!1295451 () Bool)

(declare-fun e!830674 () Regex!3543)

(assert (=> b!1295451 (= e!830674 (Union!3543 call!88953 call!88954))))

(declare-fun b!1295452 () Bool)

(assert (=> b!1295452 (= c!213420 ((_ is Union!3543) (ite c!212988 (regTwo!7599 lt!425589) (regOne!7598 lt!425589))))))

(assert (=> b!1295452 (= e!830676 e!830674)))

(declare-fun b!1295453 () Bool)

(assert (=> b!1295453 (= e!830674 e!830675)))

(assert (=> b!1295453 (= c!213419 ((_ is Star!3543) (ite c!212988 (regTwo!7599 lt!425589) (regOne!7598 lt!425589))))))

(declare-fun b!1295454 () Bool)

(assert (=> b!1295454 (= e!830673 (Union!3543 (Concat!5863 call!88955 (regTwo!7598 (ite c!212988 (regTwo!7599 lt!425589) (regOne!7598 lt!425589)))) EmptyLang!3543))))

(declare-fun b!1295455 () Bool)

(assert (=> b!1295455 (= e!830672 e!830676)))

(declare-fun c!213423 () Bool)

(assert (=> b!1295455 (= c!213423 ((_ is ElementMatch!3543) (ite c!212988 (regTwo!7599 lt!425589) (regOne!7598 lt!425589))))))

(declare-fun bm!88951 () Bool)

(assert (=> bm!88951 (= call!88954 (derivativeStep!879 (ite c!213420 (regTwo!7599 (ite c!212988 (regTwo!7599 lt!425589) (regOne!7598 lt!425589))) (regOne!7598 (ite c!212988 (regTwo!7599 lt!425589) (regOne!7598 lt!425589)))) (head!2220 lt!425591)))))

(assert (= (and d!365723 c!213421) b!1295449))

(assert (= (and d!365723 (not c!213421)) b!1295455))

(assert (= (and b!1295455 c!213423) b!1295446))

(assert (= (and b!1295455 (not c!213423)) b!1295452))

(assert (= (and b!1295452 c!213420) b!1295451))

(assert (= (and b!1295452 (not c!213420)) b!1295453))

(assert (= (and b!1295453 c!213419) b!1295447))

(assert (= (and b!1295453 (not c!213419)) b!1295448))

(assert (= (and b!1295448 c!213422) b!1295450))

(assert (= (and b!1295448 (not c!213422)) b!1295454))

(assert (= (or b!1295450 b!1295454) bm!88949))

(assert (= (or b!1295447 bm!88949) bm!88950))

(assert (= (or b!1295451 bm!88950) bm!88948))

(assert (= (or b!1295451 b!1295450) bm!88951))

(declare-fun m!1447025 () Bool)

(assert (=> d!365723 m!1447025))

(declare-fun m!1447029 () Bool)

(assert (=> d!365723 m!1447029))

(assert (=> bm!88948 m!1444527))

(declare-fun m!1447031 () Bool)

(assert (=> bm!88948 m!1447031))

(declare-fun m!1447033 () Bool)

(assert (=> b!1295448 m!1447033))

(assert (=> bm!88951 m!1444527))

(declare-fun m!1447035 () Bool)

(assert (=> bm!88951 m!1447035))

(assert (=> bm!88761 d!365723))

(declare-fun d!365733 () Bool)

(assert (=> d!365733 (= (isEmpty!7687 lt!425619) ((_ is Nil!12940) lt!425619))))

(assert (=> d!365029 d!365733))

(assert (=> d!365029 d!365085))

(declare-fun d!365735 () Bool)

(assert (=> d!365735 (= (height!609 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))) (ite ((_ is Empty!4251) (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))) 0 (ite ((_ is Leaf!6562) (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))) 1 (cheight!4462 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))))))

(assert (=> b!1294298 d!365735))

(declare-fun d!365743 () Bool)

(assert (=> d!365743 (= (max!0 (height!609 (c!212845 (charsOf!1201 t1!34))) (height!609 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))) (ite (< (height!609 (c!212845 (charsOf!1201 t1!34))) (height!609 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))) (height!609 (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))) (height!609 (c!212845 (charsOf!1201 t1!34)))))))

(assert (=> b!1294298 d!365743))

(assert (=> b!1294298 d!365439))

(declare-fun d!365745 () Bool)

(assert (=> d!365745 (= (height!609 (++!3286 (c!212845 (charsOf!1201 t1!34)) (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))) (ite ((_ is Empty!4251) (++!3286 (c!212845 (charsOf!1201 t1!34)) (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))) 0 (ite ((_ is Leaf!6562) (++!3286 (c!212845 (charsOf!1201 t1!34)) (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))) 1 (cheight!4462 (++!3286 (c!212845 (charsOf!1201 t1!34)) (c!212845 (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))))))))

(assert (=> b!1294298 d!365745))

(declare-fun d!365747 () Bool)

(assert (=> d!365747 (= (height!609 (c!212845 (charsOf!1201 t1!34))) (ite ((_ is Empty!4251) (c!212845 (charsOf!1201 t1!34))) 0 (ite ((_ is Leaf!6562) (c!212845 (charsOf!1201 t1!34))) 1 (cheight!4462 (c!212845 (charsOf!1201 t1!34))))))))

(assert (=> b!1294298 d!365747))

(declare-fun d!365749 () Bool)

(declare-fun lt!426357 () Bool)

(assert (=> d!365749 (= lt!426357 (isEmpty!7694 (list!4840 (_1!7227 lt!425820))))))

(assert (=> d!365749 (= lt!426357 (isEmpty!7698 (c!212884 (_1!7227 lt!425820))))))

(assert (=> d!365749 (= (isEmpty!7691 (_1!7227 lt!425820)) lt!426357)))

(declare-fun bs!328919 () Bool)

(assert (= bs!328919 d!365749))

(assert (=> bs!328919 m!1445199))

(assert (=> bs!328919 m!1445199))

(declare-fun m!1447053 () Bool)

(assert (=> bs!328919 m!1447053))

(declare-fun m!1447055 () Bool)

(assert (=> bs!328919 m!1447055))

(assert (=> b!1294169 d!365749))

(declare-fun d!365751 () Bool)

(declare-fun lt!426358 () Int)

(assert (=> d!365751 (>= lt!426358 0)))

(declare-fun e!830684 () Int)

(assert (=> d!365751 (= lt!426358 e!830684)))

(declare-fun c!213429 () Bool)

(assert (=> d!365751 (= c!213429 ((_ is Nil!12940) (t!117315 lt!425655)))))

(assert (=> d!365751 (= (size!10573 (t!117315 lt!425655)) lt!426358)))

(declare-fun b!1295468 () Bool)

(assert (=> b!1295468 (= e!830684 0)))

(declare-fun b!1295469 () Bool)

(assert (=> b!1295469 (= e!830684 (+ 1 (size!10573 (t!117315 (t!117315 lt!425655)))))))

(assert (= (and d!365751 c!213429) b!1295468))

(assert (= (and d!365751 (not c!213429)) b!1295469))

(declare-fun m!1447057 () Bool)

(assert (=> b!1295469 m!1447057))

(assert (=> b!1294278 d!365751))

(declare-fun d!365753 () Bool)

(declare-fun res!580329 () Bool)

(declare-fun e!830685 () Bool)

(assert (=> d!365753 (=> res!580329 e!830685)))

(assert (=> d!365753 (= res!580329 (not ((_ is Cons!12942) (t!117317 (t!117317 rules!2550)))))))

(assert (=> d!365753 (= (sepAndNonSepRulesDisjointChars!602 rules!2550 (t!117317 (t!117317 rules!2550))) e!830685)))

(declare-fun b!1295470 () Bool)

(declare-fun e!830686 () Bool)

(assert (=> b!1295470 (= e!830685 e!830686)))

(declare-fun res!580330 () Bool)

(assert (=> b!1295470 (=> (not res!580330) (not e!830686))))

(assert (=> b!1295470 (= res!580330 (ruleDisjointCharsFromAllFromOtherType!292 (h!18343 (t!117317 (t!117317 rules!2550))) rules!2550))))

(declare-fun b!1295471 () Bool)

(assert (=> b!1295471 (= e!830686 (sepAndNonSepRulesDisjointChars!602 rules!2550 (t!117317 (t!117317 (t!117317 rules!2550)))))))

(assert (= (and d!365753 (not res!580329)) b!1295470))

(assert (= (and b!1295470 res!580330) b!1295471))

(declare-fun m!1447059 () Bool)

(assert (=> b!1295470 m!1447059))

(declare-fun m!1447061 () Bool)

(assert (=> b!1295471 m!1447061))

(assert (=> b!1294249 d!365753))

(declare-fun d!365755 () Bool)

(declare-fun c!213430 () Bool)

(assert (=> d!365755 (= c!213430 ((_ is Empty!4251) (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))))

(declare-fun e!830687 () List!13006)

(assert (=> d!365755 (= (list!4841 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))) e!830687)))

(declare-fun b!1295473 () Bool)

(declare-fun e!830688 () List!13006)

(assert (=> b!1295473 (= e!830687 e!830688)))

(declare-fun c!213431 () Bool)

(assert (=> b!1295473 (= c!213431 ((_ is Leaf!6562) (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))))

(declare-fun b!1295474 () Bool)

(assert (=> b!1295474 (= e!830688 (list!4845 (xs!6962 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))))))

(declare-fun b!1295475 () Bool)

(assert (=> b!1295475 (= e!830688 (++!3282 (list!4841 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))) (list!4841 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))))))

(declare-fun b!1295472 () Bool)

(assert (=> b!1295472 (= e!830687 Nil!12940)))

(assert (= (and d!365755 c!213430) b!1295472))

(assert (= (and d!365755 (not c!213430)) b!1295473))

(assert (= (and b!1295473 c!213431) b!1295474))

(assert (= (and b!1295473 (not c!213431)) b!1295475))

(declare-fun m!1447063 () Bool)

(assert (=> b!1295474 m!1447063))

(declare-fun m!1447065 () Bool)

(assert (=> b!1295475 m!1447065))

(declare-fun m!1447067 () Bool)

(assert (=> b!1295475 m!1447067))

(assert (=> b!1295475 m!1447065))

(assert (=> b!1295475 m!1447067))

(declare-fun m!1447069 () Bool)

(assert (=> b!1295475 m!1447069))

(assert (=> d!365167 d!365755))

(assert (=> b!1294198 d!365619))

(declare-fun d!365757 () Bool)

(assert (=> d!365757 (= (list!4845 (xs!6962 (c!212845 lt!425587))) (innerList!4311 (xs!6962 (c!212845 lt!425587))))))

(assert (=> b!1294266 d!365757))

(declare-fun e!830691 () Bool)

(declare-fun b!1295481 () Bool)

(declare-fun lt!426361 () List!13006)

(assert (=> b!1295481 (= e!830691 (or (not (= lt!425616 Nil!12940)) (= lt!426361 (t!117315 lt!425591))))))

(declare-fun b!1295479 () Bool)

(declare-fun e!830692 () List!13006)

(assert (=> b!1295479 (= e!830692 (Cons!12940 (h!18341 (t!117315 lt!425591)) (++!3282 (t!117315 (t!117315 lt!425591)) lt!425616)))))

(declare-fun b!1295480 () Bool)

(declare-fun res!580333 () Bool)

(assert (=> b!1295480 (=> (not res!580333) (not e!830691))))

(assert (=> b!1295480 (= res!580333 (= (size!10573 lt!426361) (+ (size!10573 (t!117315 lt!425591)) (size!10573 lt!425616))))))

(declare-fun b!1295478 () Bool)

(assert (=> b!1295478 (= e!830692 lt!425616)))

(declare-fun d!365759 () Bool)

(assert (=> d!365759 e!830691))

(declare-fun res!580334 () Bool)

(assert (=> d!365759 (=> (not res!580334) (not e!830691))))

(assert (=> d!365759 (= res!580334 (= (content!1829 lt!426361) ((_ map or) (content!1829 (t!117315 lt!425591)) (content!1829 lt!425616))))))

(assert (=> d!365759 (= lt!426361 e!830692)))

(declare-fun c!213432 () Bool)

(assert (=> d!365759 (= c!213432 ((_ is Nil!12940) (t!117315 lt!425591)))))

(assert (=> d!365759 (= (++!3282 (t!117315 lt!425591) lt!425616) lt!426361)))

(assert (= (and d!365759 c!213432) b!1295478))

(assert (= (and d!365759 (not c!213432)) b!1295479))

(assert (= (and d!365759 res!580334) b!1295480))

(assert (= (and b!1295480 res!580333) b!1295481))

(declare-fun m!1447071 () Bool)

(assert (=> b!1295479 m!1447071))

(declare-fun m!1447073 () Bool)

(assert (=> b!1295480 m!1447073))

(assert (=> b!1295480 m!1444679))

(assert (=> b!1295480 m!1444691))

(declare-fun m!1447075 () Bool)

(assert (=> d!365759 m!1447075))

(assert (=> d!365759 m!1444705))

(assert (=> d!365759 m!1444695))

(assert (=> b!1293725 d!365759))

(declare-fun d!365761 () Bool)

(declare-fun lt!426366 () C!7376)

(assert (=> d!365761 (= lt!426366 (apply!2850 (list!4845 (xs!6962 (c!212845 lt!425590))) 0))))

(declare-fun choose!7953 (IArray!8507 Int) C!7376)

(assert (=> d!365761 (= lt!426366 (choose!7953 (xs!6962 (c!212845 lt!425590)) 0))))

(declare-fun e!830702 () Bool)

(assert (=> d!365761 e!830702))

(declare-fun res!580342 () Bool)

(assert (=> d!365761 (=> (not res!580342) (not e!830702))))

(assert (=> d!365761 (= res!580342 (<= 0 0))))

(assert (=> d!365761 (= (apply!2857 (xs!6962 (c!212845 lt!425590)) 0) lt!426366)))

(declare-fun b!1295493 () Bool)

(declare-fun size!10584 (IArray!8507) Int)

(assert (=> b!1295493 (= e!830702 (< 0 (size!10584 (xs!6962 (c!212845 lt!425590)))))))

(assert (= (and d!365761 res!580342) b!1295493))

(assert (=> d!365761 m!1445815))

(assert (=> d!365761 m!1445815))

(declare-fun m!1447103 () Bool)

(assert (=> d!365761 m!1447103))

(declare-fun m!1447105 () Bool)

(assert (=> d!365761 m!1447105))

(declare-fun m!1447107 () Bool)

(assert (=> b!1295493 m!1447107))

(assert (=> b!1294203 d!365761))

(assert (=> d!365169 d!365211))

(declare-fun d!365779 () Bool)

(declare-fun res!580347 () Bool)

(declare-fun e!830711 () Bool)

(assert (=> d!365779 (=> res!580347 e!830711)))

(assert (=> d!365779 (= res!580347 ((_ is Nil!12942) rules!2550))))

(assert (=> d!365779 (= (forall!3256 rules!2550 lambda!50915) e!830711)))

(declare-fun b!1295506 () Bool)

(declare-fun e!830712 () Bool)

(assert (=> b!1295506 (= e!830711 e!830712)))

(declare-fun res!580348 () Bool)

(assert (=> b!1295506 (=> (not res!580348) (not e!830712))))

(declare-fun dynLambda!5670 (Int Rule!4258) Bool)

(assert (=> b!1295506 (= res!580348 (dynLambda!5670 lambda!50915 (h!18343 rules!2550)))))

(declare-fun b!1295507 () Bool)

(assert (=> b!1295507 (= e!830712 (forall!3256 (t!117317 rules!2550) lambda!50915))))

(assert (= (and d!365779 (not res!580347)) b!1295506))

(assert (= (and b!1295506 res!580348) b!1295507))

(declare-fun b_lambda!37059 () Bool)

(assert (=> (not b_lambda!37059) (not b!1295506)))

(declare-fun m!1447109 () Bool)

(assert (=> b!1295506 m!1447109))

(declare-fun m!1447111 () Bool)

(assert (=> b!1295507 m!1447111))

(assert (=> d!365169 d!365779))

(declare-fun d!365781 () Bool)

(declare-fun c!213441 () Bool)

(assert (=> d!365781 (= c!213441 (isEmpty!7687 (list!4837 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))))))

(declare-fun e!830715 () Bool)

(assert (=> d!365781 (= (prefixMatch!56 (rulesRegex!114 thiss!19762 rules!2550) (list!4837 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))) e!830715)))

(declare-fun b!1295512 () Bool)

(assert (=> b!1295512 (= e!830715 (not (lostCause!256 (rulesRegex!114 thiss!19762 rules!2550))))))

(declare-fun b!1295513 () Bool)

(assert (=> b!1295513 (= e!830715 (prefixMatch!56 (derivativeStep!879 (rulesRegex!114 thiss!19762 rules!2550) (head!2220 (list!4837 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))) (tail!1848 (list!4837 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))))))))

(assert (= (and d!365781 c!213441) b!1295512))

(assert (= (and d!365781 (not c!213441)) b!1295513))

(assert (=> d!365781 m!1445383))

(declare-fun m!1447121 () Bool)

(assert (=> d!365781 m!1447121))

(assert (=> b!1295512 m!1444131))

(declare-fun m!1447123 () Bool)

(assert (=> b!1295512 m!1447123))

(assert (=> b!1295513 m!1445383))

(declare-fun m!1447125 () Bool)

(assert (=> b!1295513 m!1447125))

(assert (=> b!1295513 m!1444131))

(assert (=> b!1295513 m!1447125))

(declare-fun m!1447127 () Bool)

(assert (=> b!1295513 m!1447127))

(assert (=> b!1295513 m!1445383))

(declare-fun m!1447129 () Bool)

(assert (=> b!1295513 m!1447129))

(assert (=> b!1295513 m!1447127))

(assert (=> b!1295513 m!1447129))

(declare-fun m!1447131 () Bool)

(assert (=> b!1295513 m!1447131))

(assert (=> d!365147 d!365781))

(declare-fun d!365785 () Bool)

(assert (=> d!365785 (= (list!4837 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0)))) (list!4841 (c!212845 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))))))

(declare-fun bs!328923 () Bool)

(assert (= bs!328923 d!365785))

(declare-fun m!1447133 () Bool)

(assert (=> bs!328923 m!1447133))

(assert (=> d!365147 d!365785))

(declare-fun d!365787 () Bool)

(declare-fun drop!656 (List!13006 Int) List!13006)

(assert (=> d!365787 (= (dropList!352 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))) lt!425871) (drop!656 (list!4841 (c!212845 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))) lt!425871))))

(declare-fun bs!328924 () Bool)

(assert (= bs!328924 d!365787))

(assert (=> bs!328924 m!1447133))

(assert (=> bs!328924 m!1447133))

(declare-fun m!1447139 () Bool)

(assert (=> bs!328924 m!1447139))

(assert (=> d!365147 d!365787))

(declare-fun c!213450 () Bool)

(declare-fun d!365791 () Bool)

(assert (=> d!365791 (= c!213450 (isEmpty!7687 (dropList!352 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))) lt!425871)))))

(declare-fun e!830729 () Bool)

(assert (=> d!365791 (= (prefixMatchZipper!42 lt!425878 (dropList!352 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))) lt!425871)) e!830729)))

(declare-fun b!1295543 () Bool)

(declare-fun lostCauseZipper!13 ((InoxSet Context!1142)) Bool)

(assert (=> b!1295543 (= e!830729 (not (lostCauseZipper!13 lt!425878)))))

(declare-fun b!1295544 () Bool)

(declare-fun derivationStepZipper!37 ((InoxSet Context!1142) C!7376) (InoxSet Context!1142))

(assert (=> b!1295544 (= e!830729 (prefixMatchZipper!42 (derivationStepZipper!37 lt!425878 (head!2220 (dropList!352 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))) lt!425871))) (tail!1848 (dropList!352 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))) lt!425871))))))

(assert (= (and d!365791 c!213450) b!1295543))

(assert (= (and d!365791 (not c!213450)) b!1295544))

(assert (=> d!365791 m!1445371))

(declare-fun m!1447183 () Bool)

(assert (=> d!365791 m!1447183))

(declare-fun m!1447185 () Bool)

(assert (=> b!1295543 m!1447185))

(assert (=> b!1295544 m!1445371))

(declare-fun m!1447187 () Bool)

(assert (=> b!1295544 m!1447187))

(assert (=> b!1295544 m!1447187))

(declare-fun m!1447189 () Bool)

(assert (=> b!1295544 m!1447189))

(assert (=> b!1295544 m!1445371))

(declare-fun m!1447191 () Bool)

(assert (=> b!1295544 m!1447191))

(assert (=> b!1295544 m!1447189))

(assert (=> b!1295544 m!1447191))

(declare-fun m!1447195 () Bool)

(assert (=> b!1295544 m!1447195))

(assert (=> d!365147 d!365791))

(declare-fun b!1295548 () Bool)

(declare-fun e!830733 () Bool)

(declare-fun e!830738 () Bool)

(assert (=> b!1295548 (= e!830733 e!830738)))

(declare-fun res!580367 () Bool)

(assert (=> b!1295548 (=> (not res!580367) (not e!830738))))

(declare-fun call!88958 () Bool)

(assert (=> b!1295548 (= res!580367 call!88958)))

(declare-fun b!1295550 () Bool)

(declare-fun res!580366 () Bool)

(assert (=> b!1295550 (=> res!580366 e!830733)))

(assert (=> b!1295550 (= res!580366 (not ((_ is Concat!5863) (rulesRegex!114 thiss!19762 rules!2550))))))

(declare-fun e!830732 () Bool)

(assert (=> b!1295550 (= e!830732 e!830733)))

(declare-fun b!1295551 () Bool)

(declare-fun call!88959 () Bool)

(assert (=> b!1295551 (= e!830738 call!88959)))

(declare-fun b!1295552 () Bool)

(declare-fun res!580363 () Bool)

(declare-fun e!830734 () Bool)

(assert (=> b!1295552 (=> (not res!580363) (not e!830734))))

(assert (=> b!1295552 (= res!580363 call!88958)))

(assert (=> b!1295552 (= e!830732 e!830734)))

(declare-fun b!1295553 () Bool)

(assert (=> b!1295553 (= e!830734 call!88959)))

(declare-fun c!213453 () Bool)

(declare-fun bm!88952 () Bool)

(assert (=> bm!88952 (= call!88959 (validRegex!1529 (ite c!213453 (regTwo!7599 (rulesRegex!114 thiss!19762 rules!2550)) (regTwo!7598 (rulesRegex!114 thiss!19762 rules!2550)))))))

(declare-fun b!1295554 () Bool)

(declare-fun e!830735 () Bool)

(declare-fun call!88957 () Bool)

(assert (=> b!1295554 (= e!830735 call!88957)))

(declare-fun b!1295555 () Bool)

(declare-fun e!830736 () Bool)

(assert (=> b!1295555 (= e!830736 e!830732)))

(assert (=> b!1295555 (= c!213453 ((_ is Union!3543) (rulesRegex!114 thiss!19762 rules!2550)))))

(declare-fun bm!88953 () Bool)

(assert (=> bm!88953 (= call!88958 call!88957)))

(declare-fun b!1295556 () Bool)

(assert (=> b!1295556 (= e!830736 e!830735)))

(declare-fun res!580365 () Bool)

(assert (=> b!1295556 (= res!580365 (not (nullable!1129 (reg!3872 (rulesRegex!114 thiss!19762 rules!2550)))))))

(assert (=> b!1295556 (=> (not res!580365) (not e!830735))))

(declare-fun bm!88954 () Bool)

(declare-fun c!213452 () Bool)

(assert (=> bm!88954 (= call!88957 (validRegex!1529 (ite c!213452 (reg!3872 (rulesRegex!114 thiss!19762 rules!2550)) (ite c!213453 (regOne!7599 (rulesRegex!114 thiss!19762 rules!2550)) (regOne!7598 (rulesRegex!114 thiss!19762 rules!2550))))))))

(declare-fun b!1295549 () Bool)

(declare-fun e!830737 () Bool)

(assert (=> b!1295549 (= e!830737 e!830736)))

(assert (=> b!1295549 (= c!213452 ((_ is Star!3543) (rulesRegex!114 thiss!19762 rules!2550)))))

(declare-fun d!365811 () Bool)

(declare-fun res!580364 () Bool)

(assert (=> d!365811 (=> res!580364 e!830737)))

(assert (=> d!365811 (= res!580364 ((_ is ElementMatch!3543) (rulesRegex!114 thiss!19762 rules!2550)))))

(assert (=> d!365811 (= (validRegex!1529 (rulesRegex!114 thiss!19762 rules!2550)) e!830737)))

(assert (= (and d!365811 (not res!580364)) b!1295549))

(assert (= (and b!1295549 c!213452) b!1295556))

(assert (= (and b!1295549 (not c!213452)) b!1295555))

(assert (= (and b!1295556 res!580365) b!1295554))

(assert (= (and b!1295555 c!213453) b!1295552))

(assert (= (and b!1295555 (not c!213453)) b!1295550))

(assert (= (and b!1295552 res!580363) b!1295553))

(assert (= (and b!1295550 (not res!580366)) b!1295548))

(assert (= (and b!1295548 res!580367) b!1295551))

(assert (= (or b!1295552 b!1295548) bm!88953))

(assert (= (or b!1295553 b!1295551) bm!88952))

(assert (= (or b!1295554 bm!88953) bm!88954))

(declare-fun m!1447205 () Bool)

(assert (=> bm!88952 m!1447205))

(declare-fun m!1447207 () Bool)

(assert (=> b!1295556 m!1447207))

(declare-fun m!1447209 () Bool)

(assert (=> bm!88954 m!1447209))

(assert (=> d!365147 d!365811))

(declare-fun d!365817 () Bool)

(assert (=> d!365817 (= (prefixMatch!56 (rulesRegex!114 thiss!19762 rules!2550) lt!425874) (prefixMatchZipper!42 lt!425876 lt!425874))))

(declare-fun lt!426375 () Unit!19084)

(declare-fun choose!7954 ((InoxSet Context!1142) List!13016 Regex!3543 List!13006) Unit!19084)

(assert (=> d!365817 (= lt!426375 (choose!7954 lt!425876 lt!425872 (rulesRegex!114 thiss!19762 rules!2550) lt!425874))))

(assert (=> d!365817 (validRegex!1529 (rulesRegex!114 thiss!19762 rules!2550))))

(assert (=> d!365817 (= (prefixMatchZipperRegexEquiv!42 lt!425876 lt!425872 (rulesRegex!114 thiss!19762 rules!2550) lt!425874) lt!426375)))

(declare-fun bs!328932 () Bool)

(assert (= bs!328932 d!365817))

(assert (=> bs!328932 m!1444131))

(assert (=> bs!328932 m!1445369))

(assert (=> bs!328932 m!1445391))

(assert (=> bs!328932 m!1444131))

(declare-fun m!1447235 () Bool)

(assert (=> bs!328932 m!1447235))

(assert (=> bs!328932 m!1444131))

(assert (=> bs!328932 m!1445389))

(assert (=> d!365147 d!365817))

(declare-fun d!365825 () Bool)

(declare-fun c!213462 () Bool)

(assert (=> d!365825 (= c!213462 (= lt!425871 (size!10568 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))))))

(declare-fun e!830748 () Bool)

(assert (=> d!365825 (= (prefixMatchZipperSequence!148 lt!425878 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))) lt!425871) e!830748)))

(declare-fun b!1295574 () Bool)

(assert (=> b!1295574 (= e!830748 (not (lostCauseZipper!13 lt!425878)))))

(declare-fun b!1295575 () Bool)

(assert (=> b!1295575 (= e!830748 (prefixMatchZipperSequence!148 (derivationStepZipper!37 lt!425878 (apply!2845 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))) lt!425871)) (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))) (+ lt!425871 1)))))

(assert (= (and d!365825 c!213462) b!1295574))

(assert (= (and d!365825 (not c!213462)) b!1295575))

(assert (=> d!365825 m!1444293))

(declare-fun m!1447237 () Bool)

(assert (=> d!365825 m!1447237))

(assert (=> b!1295574 m!1447185))

(assert (=> b!1295575 m!1444293))

(declare-fun m!1447239 () Bool)

(assert (=> b!1295575 m!1447239))

(assert (=> b!1295575 m!1447239))

(declare-fun m!1447241 () Bool)

(assert (=> b!1295575 m!1447241))

(assert (=> b!1295575 m!1447241))

(assert (=> b!1295575 m!1444293))

(declare-fun m!1447243 () Bool)

(assert (=> b!1295575 m!1447243))

(assert (=> d!365147 d!365825))

(declare-fun d!365827 () Bool)

(declare-fun e!830751 () Bool)

(assert (=> d!365827 e!830751))

(declare-fun res!580371 () Bool)

(assert (=> d!365827 (=> (not res!580371) (not e!830751))))

(declare-fun lt!426378 () List!13016)

(declare-fun noDuplicate!216 (List!13016) Bool)

(assert (=> d!365827 (= res!580371 (noDuplicate!216 lt!426378))))

(declare-fun choose!7955 ((InoxSet Context!1142)) List!13016)

(assert (=> d!365827 (= lt!426378 (choose!7955 (focus!62 (rulesRegex!114 thiss!19762 rules!2550))))))

(assert (=> d!365827 (= (toList!726 (focus!62 (rulesRegex!114 thiss!19762 rules!2550))) lt!426378)))

(declare-fun b!1295578 () Bool)

(declare-fun content!1831 (List!13016) (InoxSet Context!1142))

(assert (=> b!1295578 (= e!830751 (= (content!1831 lt!426378) (focus!62 (rulesRegex!114 thiss!19762 rules!2550))))))

(assert (= (and d!365827 res!580371) b!1295578))

(declare-fun m!1447245 () Bool)

(assert (=> d!365827 m!1447245))

(assert (=> d!365827 m!1445375))

(declare-fun m!1447247 () Bool)

(assert (=> d!365827 m!1447247))

(declare-fun m!1447249 () Bool)

(assert (=> b!1295578 m!1447249))

(assert (=> d!365147 d!365827))

(declare-fun d!365829 () Bool)

(declare-fun c!213463 () Bool)

(assert (=> d!365829 (= c!213463 (isEmpty!7687 lt!425874))))

(declare-fun e!830752 () Bool)

(assert (=> d!365829 (= (prefixMatchZipper!42 lt!425876 lt!425874) e!830752)))

(declare-fun b!1295579 () Bool)

(assert (=> b!1295579 (= e!830752 (not (lostCauseZipper!13 lt!425876)))))

(declare-fun b!1295580 () Bool)

(assert (=> b!1295580 (= e!830752 (prefixMatchZipper!42 (derivationStepZipper!37 lt!425876 (head!2220 lt!425874)) (tail!1848 lt!425874)))))

(assert (= (and d!365829 c!213463) b!1295579))

(assert (= (and d!365829 (not c!213463)) b!1295580))

(declare-fun m!1447251 () Bool)

(assert (=> d!365829 m!1447251))

(declare-fun m!1447253 () Bool)

(assert (=> b!1295579 m!1447253))

(declare-fun m!1447255 () Bool)

(assert (=> b!1295580 m!1447255))

(assert (=> b!1295580 m!1447255))

(declare-fun m!1447257 () Bool)

(assert (=> b!1295580 m!1447257))

(declare-fun m!1447259 () Bool)

(assert (=> b!1295580 m!1447259))

(assert (=> b!1295580 m!1447257))

(assert (=> b!1295580 m!1447259))

(declare-fun m!1447261 () Bool)

(assert (=> b!1295580 m!1447261))

(assert (=> d!365147 d!365829))

(declare-fun d!365831 () Bool)

(declare-fun c!213464 () Bool)

(assert (=> d!365831 (= c!213464 (= 0 (size!10568 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))))))

(declare-fun e!830753 () Bool)

(assert (=> d!365831 (= (prefixMatchZipperSequence!148 (focus!62 (rulesRegex!114 thiss!19762 rules!2550)) (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))) 0) e!830753)))

(declare-fun b!1295581 () Bool)

(assert (=> b!1295581 (= e!830753 (not (lostCauseZipper!13 (focus!62 (rulesRegex!114 thiss!19762 rules!2550)))))))

(declare-fun b!1295582 () Bool)

(assert (=> b!1295582 (= e!830753 (prefixMatchZipperSequence!148 (derivationStepZipper!37 (focus!62 (rulesRegex!114 thiss!19762 rules!2550)) (apply!2845 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))) 0)) (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))) (+ 0 1)))))

(assert (= (and d!365831 c!213464) b!1295581))

(assert (= (and d!365831 (not c!213464)) b!1295582))

(assert (=> d!365831 m!1444293))

(assert (=> d!365831 m!1447237))

(assert (=> b!1295581 m!1445375))

(declare-fun m!1447263 () Bool)

(assert (=> b!1295581 m!1447263))

(assert (=> b!1295582 m!1444293))

(declare-fun m!1447265 () Bool)

(assert (=> b!1295582 m!1447265))

(assert (=> b!1295582 m!1445375))

(assert (=> b!1295582 m!1447265))

(declare-fun m!1447267 () Bool)

(assert (=> b!1295582 m!1447267))

(assert (=> b!1295582 m!1447267))

(assert (=> b!1295582 m!1444293))

(declare-fun m!1447269 () Bool)

(assert (=> b!1295582 m!1447269))

(assert (=> d!365147 d!365831))

(declare-fun d!365833 () Bool)

(assert (=> d!365833 (= (prefixMatchZipper!42 lt!425878 (dropList!352 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))) lt!425871)) (prefixMatchZipperSequence!148 lt!425878 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))) lt!425871))))

(declare-fun lt!426405 () Unit!19084)

(declare-fun choose!7956 ((InoxSet Context!1142) BalanceConc!8442 Int) Unit!19084)

(assert (=> d!365833 (= lt!426405 (choose!7956 lt!425878 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))) lt!425871))))

(declare-fun e!830768 () Bool)

(assert (=> d!365833 e!830768))

(declare-fun res!580380 () Bool)

(assert (=> d!365833 (=> (not res!580380) (not e!830768))))

(assert (=> d!365833 (= res!580380 (>= lt!425871 0))))

(assert (=> d!365833 (= (lemmaprefixMatchZipperSequenceEquivalent!42 lt!425878 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))) lt!425871) lt!426405)))

(declare-fun b!1295603 () Bool)

(assert (=> b!1295603 (= e!830768 (<= lt!425871 (size!10568 (++!3284 (charsOf!1201 t1!34) (singletonSeq!813 (apply!2845 (charsOf!1201 t2!34) 0))))))))

(assert (= (and d!365833 res!580380) b!1295603))

(assert (=> d!365833 m!1444293))

(assert (=> d!365833 m!1445371))

(assert (=> d!365833 m!1445371))

(assert (=> d!365833 m!1445373))

(assert (=> d!365833 m!1444293))

(assert (=> d!365833 m!1445387))

(assert (=> d!365833 m!1444293))

(declare-fun m!1447317 () Bool)

(assert (=> d!365833 m!1447317))

(assert (=> b!1295603 m!1444293))

(assert (=> b!1295603 m!1447237))

(assert (=> d!365147 d!365833))

(declare-fun d!365845 () Bool)

(declare-fun e!830773 () Bool)

(assert (=> d!365845 e!830773))

(declare-fun res!580385 () Bool)

(assert (=> d!365845 (=> (not res!580385) (not e!830773))))

(assert (=> d!365845 (= res!580385 (validRegex!1529 (rulesRegex!114 thiss!19762 rules!2550)))))

(assert (=> d!365845 (= (focus!62 (rulesRegex!114 thiss!19762 rules!2550)) (store ((as const (Array Context!1142 Bool)) false) (Context!1143 (Cons!12948 (rulesRegex!114 thiss!19762 rules!2550) Nil!12948)) true))))

(declare-fun b!1295609 () Bool)

(declare-fun unfocusZipper!13 (List!13016) Regex!3543)

(assert (=> b!1295609 (= e!830773 (= (unfocusZipper!13 (toList!726 (store ((as const (Array Context!1142 Bool)) false) (Context!1143 (Cons!12948 (rulesRegex!114 thiss!19762 rules!2550) Nil!12948)) true))) (rulesRegex!114 thiss!19762 rules!2550)))))

(assert (= (and d!365845 res!580385) b!1295609))

(assert (=> d!365845 m!1444131))

(assert (=> d!365845 m!1445389))

(declare-fun m!1447329 () Bool)

(assert (=> d!365845 m!1447329))

(assert (=> b!1295609 m!1447329))

(assert (=> b!1295609 m!1447329))

(declare-fun m!1447331 () Bool)

(assert (=> b!1295609 m!1447331))

(assert (=> b!1295609 m!1447331))

(declare-fun m!1447333 () Bool)

(assert (=> b!1295609 m!1447333))

(assert (=> d!365147 d!365845))

(declare-fun d!365851 () Bool)

(declare-fun c!213472 () Bool)

(assert (=> d!365851 (= c!213472 (isEmpty!7687 lt!425874))))

(declare-fun e!830774 () Bool)

(assert (=> d!365851 (= (prefixMatch!56 (rulesRegex!114 thiss!19762 rules!2550) lt!425874) e!830774)))

(declare-fun b!1295610 () Bool)

(assert (=> b!1295610 (= e!830774 (not (lostCause!256 (rulesRegex!114 thiss!19762 rules!2550))))))

(declare-fun b!1295611 () Bool)

(assert (=> b!1295611 (= e!830774 (prefixMatch!56 (derivativeStep!879 (rulesRegex!114 thiss!19762 rules!2550) (head!2220 lt!425874)) (tail!1848 lt!425874)))))

(assert (= (and d!365851 c!213472) b!1295610))

(assert (= (and d!365851 (not c!213472)) b!1295611))

(assert (=> d!365851 m!1447251))

(assert (=> b!1295610 m!1444131))

(assert (=> b!1295610 m!1447123))

(assert (=> b!1295611 m!1447255))

(assert (=> b!1295611 m!1444131))

(assert (=> b!1295611 m!1447255))

(declare-fun m!1447335 () Bool)

(assert (=> b!1295611 m!1447335))

(assert (=> b!1295611 m!1447259))

(assert (=> b!1295611 m!1447335))

(assert (=> b!1295611 m!1447259))

(declare-fun m!1447337 () Bool)

(assert (=> b!1295611 m!1447337))

(assert (=> d!365147 d!365851))

(declare-fun d!365853 () Bool)

(assert (=> d!365853 (= (Forall!507 lambda!50876) (choose!7945 lambda!50876))))

(declare-fun bs!328936 () Bool)

(assert (= bs!328936 d!365853))

(declare-fun m!1447339 () Bool)

(assert (=> bs!328936 m!1447339))

(assert (=> d!364955 d!365853))

(declare-fun d!365855 () Bool)

(assert (=> d!365855 (= (nullable!1129 (reg!3872 lt!425589)) (nullableFct!255 (reg!3872 lt!425589)))))

(declare-fun bs!328937 () Bool)

(assert (= bs!328937 d!365855))

(declare-fun m!1447341 () Bool)

(assert (=> bs!328937 m!1447341))

(assert (=> b!1294241 d!365855))

(assert (=> b!1294000 d!365513))

(declare-fun d!365857 () Bool)

(assert (=> d!365857 (= (charsToBigInt!1 (text!16681 (value!73159 t1!34))) (choose!644 (text!16681 (value!73159 t1!34))))))

(declare-fun bs!328938 () Bool)

(assert (= bs!328938 d!365857))

(declare-fun m!1447343 () Bool)

(assert (=> bs!328938 m!1447343))

(assert (=> d!365139 d!365857))

(declare-fun bs!328939 () Bool)

(declare-fun d!365859 () Bool)

(assert (= bs!328939 (and d!365859 d!365105)))

(declare-fun lambda!50930 () Int)

(assert (=> bs!328939 (= (= (toValue!3432 (transformation!2229 (h!18343 (t!117317 rules!2550)))) (toValue!3432 (transformation!2229 (rule!3968 t1!34)))) (= lambda!50930 lambda!50910))))

(declare-fun bs!328940 () Bool)

(assert (= bs!328940 (and d!365859 d!365137)))

(assert (=> bs!328940 (= (= (toValue!3432 (transformation!2229 (h!18343 (t!117317 rules!2550)))) (toValue!3432 (transformation!2229 (h!18343 rules!2550)))) (= lambda!50930 lambda!50911))))

(declare-fun bs!328941 () Bool)

(assert (= bs!328941 (and d!365859 d!365165)))

(assert (=> bs!328941 (= (= (toValue!3432 (transformation!2229 (h!18343 (t!117317 rules!2550)))) (toValue!3432 (transformation!2229 (rule!3968 t2!34)))) (= lambda!50930 lambda!50912))))

(assert (=> d!365859 true))

(assert (=> d!365859 (< (dynLambda!5662 order!7885 (toValue!3432 (transformation!2229 (h!18343 (t!117317 rules!2550))))) (dynLambda!5665 order!7889 lambda!50930))))

(assert (=> d!365859 (= (equivClasses!807 (toChars!3291 (transformation!2229 (h!18343 (t!117317 rules!2550)))) (toValue!3432 (transformation!2229 (h!18343 (t!117317 rules!2550))))) (Forall2!409 lambda!50930))))

(declare-fun bs!328942 () Bool)

(assert (= bs!328942 d!365859))

(declare-fun m!1447345 () Bool)

(assert (=> bs!328942 m!1447345))

(assert (=> b!1294320 d!365859))

(declare-fun d!365861 () Bool)

(assert (=> d!365861 (= (list!4837 lt!425752) (list!4841 (c!212845 lt!425752)))))

(declare-fun bs!328943 () Bool)

(assert (= bs!328943 d!365861))

(declare-fun m!1447347 () Bool)

(assert (=> bs!328943 m!1447347))

(assert (=> d!364947 d!365861))

(declare-fun d!365863 () Bool)

(declare-fun c!213479 () Bool)

(assert (=> d!365863 (= c!213479 ((_ is Cons!12946) (list!4840 (singletonSeq!814 t2!34))))))

(declare-fun e!830783 () List!13006)

(assert (=> d!365863 (= (printList!544 thiss!19762 (list!4840 (singletonSeq!814 t2!34))) e!830783)))

(declare-fun b!1295626 () Bool)

(assert (=> b!1295626 (= e!830783 (++!3282 (list!4837 (charsOf!1201 (h!18347 (list!4840 (singletonSeq!814 t2!34))))) (printList!544 thiss!19762 (t!117355 (list!4840 (singletonSeq!814 t2!34))))))))

(declare-fun b!1295627 () Bool)

(assert (=> b!1295627 (= e!830783 Nil!12940)))

(assert (= (and d!365863 c!213479) b!1295626))

(assert (= (and d!365863 (not c!213479)) b!1295627))

(declare-fun m!1447349 () Bool)

(assert (=> b!1295626 m!1447349))

(assert (=> b!1295626 m!1447349))

(declare-fun m!1447351 () Bool)

(assert (=> b!1295626 m!1447351))

(declare-fun m!1447353 () Bool)

(assert (=> b!1295626 m!1447353))

(assert (=> b!1295626 m!1447351))

(assert (=> b!1295626 m!1447353))

(declare-fun m!1447355 () Bool)

(assert (=> b!1295626 m!1447355))

(assert (=> d!364947 d!365863))

(assert (=> d!364947 d!365117))

(declare-fun d!365865 () Bool)

(declare-fun lt!426413 () BalanceConc!8442)

(assert (=> d!365865 (= (list!4837 lt!426413) (printListTailRec!226 thiss!19762 (dropList!353 (singletonSeq!814 t2!34) 0) (list!4837 (BalanceConc!8443 Empty!4251))))))

(declare-fun e!830785 () BalanceConc!8442)

(assert (=> d!365865 (= lt!426413 e!830785)))

(declare-fun c!213480 () Bool)

(assert (=> d!365865 (= c!213480 (>= 0 (size!10574 (singletonSeq!814 t2!34))))))

(declare-fun e!830784 () Bool)

(assert (=> d!365865 e!830784))

(declare-fun res!580388 () Bool)

(assert (=> d!365865 (=> (not res!580388) (not e!830784))))

(assert (=> d!365865 (= res!580388 (>= 0 0))))

(assert (=> d!365865 (= (printTailRec!526 thiss!19762 (singletonSeq!814 t2!34) 0 (BalanceConc!8443 Empty!4251)) lt!426413)))

(declare-fun b!1295628 () Bool)

(assert (=> b!1295628 (= e!830784 (<= 0 (size!10574 (singletonSeq!814 t2!34))))))

(declare-fun b!1295629 () Bool)

(assert (=> b!1295629 (= e!830785 (BalanceConc!8443 Empty!4251))))

(declare-fun b!1295630 () Bool)

(assert (=> b!1295630 (= e!830785 (printTailRec!526 thiss!19762 (singletonSeq!814 t2!34) (+ 0 1) (++!3284 (BalanceConc!8443 Empty!4251) (charsOf!1201 (apply!2849 (singletonSeq!814 t2!34) 0)))))))

(declare-fun lt!426412 () List!13012)

(assert (=> b!1295630 (= lt!426412 (list!4840 (singletonSeq!814 t2!34)))))

(declare-fun lt!426416 () Unit!19084)

(assert (=> b!1295630 (= lt!426416 (lemmaDropApply!417 lt!426412 0))))

(assert (=> b!1295630 (= (head!2223 (drop!654 lt!426412 0)) (apply!2855 lt!426412 0))))

(declare-fun lt!426411 () Unit!19084)

(assert (=> b!1295630 (= lt!426411 lt!426416)))

(declare-fun lt!426414 () List!13012)

(assert (=> b!1295630 (= lt!426414 (list!4840 (singletonSeq!814 t2!34)))))

(declare-fun lt!426415 () Unit!19084)

(assert (=> b!1295630 (= lt!426415 (lemmaDropTail!397 lt!426414 0))))

(assert (=> b!1295630 (= (tail!1851 (drop!654 lt!426414 0)) (drop!654 lt!426414 (+ 0 1)))))

(declare-fun lt!426417 () Unit!19084)

(assert (=> b!1295630 (= lt!426417 lt!426415)))

(assert (= (and d!365865 res!580388) b!1295628))

(assert (= (and d!365865 c!213480) b!1295629))

(assert (= (and d!365865 (not c!213480)) b!1295630))

(assert (=> d!365865 m!1444409))

(declare-fun m!1447357 () Bool)

(assert (=> d!365865 m!1447357))

(assert (=> d!365865 m!1444409))

(declare-fun m!1447359 () Bool)

(assert (=> d!365865 m!1447359))

(declare-fun m!1447361 () Bool)

(assert (=> d!365865 m!1447361))

(assert (=> d!365865 m!1445665))

(assert (=> d!365865 m!1447359))

(assert (=> d!365865 m!1445665))

(declare-fun m!1447363 () Bool)

(assert (=> d!365865 m!1447363))

(assert (=> b!1295628 m!1444409))

(assert (=> b!1295628 m!1447357))

(declare-fun m!1447365 () Bool)

(assert (=> b!1295630 m!1447365))

(declare-fun m!1447367 () Bool)

(assert (=> b!1295630 m!1447367))

(assert (=> b!1295630 m!1444409))

(declare-fun m!1447369 () Bool)

(assert (=> b!1295630 m!1447369))

(declare-fun m!1447371 () Bool)

(assert (=> b!1295630 m!1447371))

(declare-fun m!1447373 () Bool)

(assert (=> b!1295630 m!1447373))

(declare-fun m!1447375 () Bool)

(assert (=> b!1295630 m!1447375))

(declare-fun m!1447377 () Bool)

(assert (=> b!1295630 m!1447377))

(declare-fun m!1447379 () Bool)

(assert (=> b!1295630 m!1447379))

(declare-fun m!1447381 () Bool)

(assert (=> b!1295630 m!1447381))

(assert (=> b!1295630 m!1447365))

(assert (=> b!1295630 m!1447373))

(declare-fun m!1447383 () Bool)

(assert (=> b!1295630 m!1447383))

(declare-fun m!1447385 () Bool)

(assert (=> b!1295630 m!1447385))

(declare-fun m!1447387 () Bool)

(assert (=> b!1295630 m!1447387))

(assert (=> b!1295630 m!1447381))

(assert (=> b!1295630 m!1447369))

(assert (=> b!1295630 m!1444409))

(assert (=> b!1295630 m!1444411))

(assert (=> b!1295630 m!1444409))

(assert (=> b!1295630 m!1447379))

(assert (=> d!364947 d!365865))

(declare-fun b!1295668 () Bool)

(declare-fun e!830810 () Bool)

(assert (=> b!1295668 (= e!830810 true)))

(declare-fun b!1295667 () Bool)

(declare-fun e!830809 () Bool)

(assert (=> b!1295667 (= e!830809 e!830810)))

(declare-fun d!365867 () Bool)

(assert (=> d!365867 e!830809))

(assert (= b!1295667 b!1295668))

(assert (= d!365867 b!1295667))

(declare-fun order!7893 () Int)

(declare-fun lambda!50935 () Int)

(declare-fun dynLambda!5671 (Int Int) Int)

(assert (=> b!1295668 (< (dynLambda!5662 order!7885 (toValue!3432 (transformation!2229 (h!18343 rules!2550)))) (dynLambda!5671 order!7893 lambda!50935))))

(assert (=> b!1295668 (< (dynLambda!5660 order!7881 (toChars!3291 (transformation!2229 (h!18343 rules!2550)))) (dynLambda!5671 order!7893 lambda!50935))))

(declare-fun res!580396 () Bool)

(declare-fun e!830798 () Bool)

(assert (=> d!365867 (=> (not res!580396) (not e!830798))))

(declare-fun forall!3258 (List!13006 Int) Bool)

(declare-fun usedCharacters!176 (Regex!3543) List!13006)

(assert (=> d!365867 (= res!580396 (forall!3258 (usedCharacters!176 (regex!2229 (h!18343 rules!2550))) lambda!50935))))

(assert (=> d!365867 (= (rulesUseDisjointChars!150 (h!18343 rules!2550) (h!18343 rules!2550)) e!830798)))

(declare-fun b!1295650 () Bool)

(assert (=> b!1295650 (= e!830798 (forall!3258 (usedCharacters!176 (regex!2229 (h!18343 rules!2550))) lambda!50935))))

(assert (= (and d!365867 res!580396) b!1295650))

(declare-fun m!1447455 () Bool)

(assert (=> d!365867 m!1447455))

(assert (=> d!365867 m!1447455))

(declare-fun m!1447457 () Bool)

(assert (=> d!365867 m!1447457))

(assert (=> b!1295650 m!1447455))

(assert (=> b!1295650 m!1447455))

(assert (=> b!1295650 m!1447457))

(assert (=> b!1294334 d!365867))

(declare-fun d!365889 () Bool)

(assert (=> d!365889 (= (list!4840 lt!425765) (list!4844 (c!212884 lt!425765)))))

(declare-fun bs!328947 () Bool)

(assert (= bs!328947 d!365889))

(declare-fun m!1447459 () Bool)

(assert (=> bs!328947 m!1447459))

(assert (=> d!364949 d!365889))

(declare-fun d!365891 () Bool)

(declare-fun e!830811 () Bool)

(assert (=> d!365891 e!830811))

(declare-fun res!580399 () Bool)

(assert (=> d!365891 (=> (not res!580399) (not e!830811))))

(declare-fun lt!426428 () BalanceConc!8446)

(assert (=> d!365891 (= res!580399 (= (list!4840 lt!426428) (Cons!12946 t2!34 Nil!12946)))))

(assert (=> d!365891 (= lt!426428 (choose!7950 t2!34))))

(assert (=> d!365891 (= (singleton!356 t2!34) lt!426428)))

(declare-fun b!1295669 () Bool)

(assert (=> b!1295669 (= e!830811 (isBalanced!1252 (c!212884 lt!426428)))))

(assert (= (and d!365891 res!580399) b!1295669))

(declare-fun m!1447461 () Bool)

(assert (=> d!365891 m!1447461))

(declare-fun m!1447463 () Bool)

(assert (=> d!365891 m!1447463))

(declare-fun m!1447465 () Bool)

(assert (=> b!1295669 m!1447465))

(assert (=> d!364949 d!365891))

(declare-fun d!365893 () Bool)

(assert (=> d!365893 (= (head!2221 (map!2818 rules!2550 lambda!50865)) (h!18349 (map!2818 rules!2550 lambda!50865)))))

(assert (=> b!1294101 d!365893))

(assert (=> b!1294280 d!365713))

(declare-fun d!365895 () Bool)

(declare-fun res!580400 () Bool)

(declare-fun e!830814 () Bool)

(assert (=> d!365895 (=> (not res!580400) (not e!830814))))

(assert (=> d!365895 (= res!580400 (<= (size!10573 (list!4845 (xs!6962 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))) 512))))

(assert (=> d!365895 (= (inv!17373 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))) e!830814)))

(declare-fun b!1295674 () Bool)

(declare-fun res!580401 () Bool)

(assert (=> b!1295674 (=> (not res!580401) (not e!830814))))

(assert (=> b!1295674 (= res!580401 (= (csize!8733 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))) (size!10573 (list!4845 (xs!6962 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))))))))

(declare-fun b!1295675 () Bool)

(assert (=> b!1295675 (= e!830814 (and (> (csize!8733 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))) 0) (<= (csize!8733 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))) 512)))))

(assert (= (and d!365895 res!580400) b!1295674))

(assert (= (and b!1295674 res!580401) b!1295675))

(assert (=> d!365895 m!1447063))

(assert (=> d!365895 m!1447063))

(declare-fun m!1447467 () Bool)

(assert (=> d!365895 m!1447467))

(assert (=> b!1295674 m!1447063))

(assert (=> b!1295674 m!1447063))

(assert (=> b!1295674 m!1447467))

(assert (=> b!1294307 d!365895))

(declare-fun d!365897 () Bool)

(declare-fun c!213498 () Bool)

(assert (=> d!365897 (= c!213498 ((_ is Nil!12940) (t!117315 (Cons!12940 (apply!2845 lt!425590 0) Nil!12940))))))

(declare-fun e!830816 () (InoxSet C!7376))

(assert (=> d!365897 (= (content!1829 (t!117315 (Cons!12940 (apply!2845 lt!425590 0) Nil!12940))) e!830816)))

(declare-fun b!1295678 () Bool)

(assert (=> b!1295678 (= e!830816 ((as const (Array C!7376 Bool)) false))))

(declare-fun b!1295679 () Bool)

(assert (=> b!1295679 (= e!830816 ((_ map or) (store ((as const (Array C!7376 Bool)) false) (h!18341 (t!117315 (Cons!12940 (apply!2845 lt!425590 0) Nil!12940))) true) (content!1829 (t!117315 (t!117315 (Cons!12940 (apply!2845 lt!425590 0) Nil!12940))))))))

(assert (= (and d!365897 c!213498) b!1295678))

(assert (= (and d!365897 (not c!213498)) b!1295679))

(declare-fun m!1447471 () Bool)

(assert (=> b!1295679 m!1447471))

(declare-fun m!1447473 () Bool)

(assert (=> b!1295679 m!1447473))

(assert (=> b!1294247 d!365897))

(declare-fun d!365901 () Bool)

(declare-fun res!580402 () Bool)

(declare-fun e!830817 () Bool)

(assert (=> d!365901 (=> (not res!580402) (not e!830817))))

(assert (=> d!365901 (= res!580402 (= (csize!8732 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))) (+ (size!10575 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))) (size!10575 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))))))))

(assert (=> d!365901 (= (inv!17372 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))) e!830817)))

(declare-fun b!1295680 () Bool)

(declare-fun res!580403 () Bool)

(assert (=> b!1295680 (=> (not res!580403) (not e!830817))))

(assert (=> b!1295680 (= res!580403 (and (not (= (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))) Empty!4251)) (not (= (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))) Empty!4251))))))

(declare-fun b!1295681 () Bool)

(declare-fun res!580404 () Bool)

(assert (=> b!1295681 (=> (not res!580404) (not e!830817))))

(assert (=> b!1295681 (= res!580404 (= (cheight!4462 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))) (+ (max!0 (height!609 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))) (height!609 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))) 1)))))

(declare-fun b!1295682 () Bool)

(assert (=> b!1295682 (= e!830817 (<= 0 (cheight!4462 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))))))

(assert (= (and d!365901 res!580402) b!1295680))

(assert (= (and b!1295680 res!580403) b!1295681))

(assert (= (and b!1295681 res!580404) b!1295682))

(declare-fun m!1447475 () Bool)

(assert (=> d!365901 m!1447475))

(declare-fun m!1447477 () Bool)

(assert (=> d!365901 m!1447477))

(assert (=> b!1295681 m!1446989))

(assert (=> b!1295681 m!1446991))

(assert (=> b!1295681 m!1446989))

(assert (=> b!1295681 m!1446991))

(declare-fun m!1447479 () Bool)

(assert (=> b!1295681 m!1447479))

(assert (=> b!1294274 d!365901))

(declare-fun d!365903 () Bool)

(declare-fun lt!426432 () C!7376)

(assert (=> d!365903 (contains!2161 (list!4837 (charsOf!1201 t2!34)) lt!426432)))

(declare-fun e!830819 () C!7376)

(assert (=> d!365903 (= lt!426432 e!830819)))

(declare-fun c!213499 () Bool)

(assert (=> d!365903 (= c!213499 (= 0 0))))

(declare-fun e!830818 () Bool)

(assert (=> d!365903 e!830818))

(declare-fun res!580405 () Bool)

(assert (=> d!365903 (=> (not res!580405) (not e!830818))))

(assert (=> d!365903 (= res!580405 (<= 0 0))))

(assert (=> d!365903 (= (apply!2850 (list!4837 (charsOf!1201 t2!34)) 0) lt!426432)))

(declare-fun b!1295683 () Bool)

(assert (=> b!1295683 (= e!830818 (< 0 (size!10573 (list!4837 (charsOf!1201 t2!34)))))))

(declare-fun b!1295684 () Bool)

(assert (=> b!1295684 (= e!830819 (head!2220 (list!4837 (charsOf!1201 t2!34))))))

(declare-fun b!1295685 () Bool)

(assert (=> b!1295685 (= e!830819 (apply!2850 (tail!1848 (list!4837 (charsOf!1201 t2!34))) (- 0 1)))))

(assert (= (and d!365903 res!580405) b!1295683))

(assert (= (and d!365903 c!213499) b!1295684))

(assert (= (and d!365903 (not c!213499)) b!1295685))

(assert (=> d!365903 m!1445401))

(declare-fun m!1447481 () Bool)

(assert (=> d!365903 m!1447481))

(assert (=> b!1295683 m!1445401))

(assert (=> b!1295683 m!1446947))

(assert (=> b!1295684 m!1445401))

(declare-fun m!1447483 () Bool)

(assert (=> b!1295684 m!1447483))

(assert (=> b!1295685 m!1445401))

(declare-fun m!1447485 () Bool)

(assert (=> b!1295685 m!1447485))

(assert (=> b!1295685 m!1447485))

(declare-fun m!1447487 () Bool)

(assert (=> b!1295685 m!1447487))

(assert (=> d!365151 d!365903))

(declare-fun d!365905 () Bool)

(assert (=> d!365905 (= (list!4837 (charsOf!1201 t2!34)) (list!4841 (c!212845 (charsOf!1201 t2!34))))))

(declare-fun bs!328948 () Bool)

(assert (= bs!328948 d!365905))

(declare-fun m!1447489 () Bool)

(assert (=> bs!328948 m!1447489))

(assert (=> d!365151 d!365905))

(declare-fun bm!88960 () Bool)

(declare-fun c!213500 () Bool)

(declare-fun c!213501 () Bool)

(assert (=> bm!88960 (= c!213500 c!213501)))

(declare-fun e!830821 () Int)

(declare-fun call!88965 () C!7376)

(assert (=> bm!88960 (= call!88965 (apply!2851 (ite c!213501 (left!11131 (c!212845 (charsOf!1201 t2!34))) (right!11461 (c!212845 (charsOf!1201 t2!34)))) e!830821))))

(declare-fun b!1295687 () Bool)

(assert (=> b!1295687 (= e!830821 (- 0 (size!10575 (left!11131 (c!212845 (charsOf!1201 t2!34))))))))

(declare-fun b!1295688 () Bool)

(assert (=> b!1295688 (= e!830821 0)))

(declare-fun b!1295689 () Bool)

(declare-fun e!830823 () Bool)

(assert (=> b!1295689 (= e!830823 (< 0 (size!10575 (c!212845 (charsOf!1201 t2!34)))))))

(declare-fun b!1295690 () Bool)

(declare-fun e!830820 () C!7376)

(declare-fun e!830822 () C!7376)

(assert (=> b!1295690 (= e!830820 e!830822)))

(declare-fun lt!426436 () Bool)

(assert (=> b!1295690 (= lt!426436 (appendIndex!129 (list!4841 (left!11131 (c!212845 (charsOf!1201 t2!34)))) (list!4841 (right!11461 (c!212845 (charsOf!1201 t2!34)))) 0))))

(assert (=> b!1295690 (= c!213501 (< 0 (size!10575 (left!11131 (c!212845 (charsOf!1201 t2!34))))))))

(declare-fun b!1295691 () Bool)

(assert (=> b!1295691 (= e!830822 call!88965)))

(declare-fun b!1295692 () Bool)

(assert (=> b!1295692 (= e!830820 (apply!2857 (xs!6962 (c!212845 (charsOf!1201 t2!34))) 0))))

(declare-fun b!1295686 () Bool)

(assert (=> b!1295686 (= e!830822 call!88965)))

(declare-fun d!365907 () Bool)

(declare-fun lt!426435 () C!7376)

(assert (=> d!365907 (= lt!426435 (apply!2850 (list!4841 (c!212845 (charsOf!1201 t2!34))) 0))))

(assert (=> d!365907 (= lt!426435 e!830820)))

(declare-fun c!213502 () Bool)

(assert (=> d!365907 (= c!213502 ((_ is Leaf!6562) (c!212845 (charsOf!1201 t2!34))))))

(assert (=> d!365907 e!830823))

(declare-fun res!580406 () Bool)

(assert (=> d!365907 (=> (not res!580406) (not e!830823))))

(assert (=> d!365907 (= res!580406 (<= 0 0))))

(assert (=> d!365907 (= (apply!2851 (c!212845 (charsOf!1201 t2!34)) 0) lt!426435)))

(assert (= (and d!365907 res!580406) b!1295689))

(assert (= (and d!365907 c!213502) b!1295692))

(assert (= (and d!365907 (not c!213502)) b!1295690))

(assert (= (and b!1295690 c!213501) b!1295691))

(assert (= (and b!1295690 (not c!213501)) b!1295686))

(assert (= (or b!1295691 b!1295686) bm!88960))

(assert (= (and bm!88960 c!213500) b!1295688))

(assert (= (and bm!88960 (not c!213500)) b!1295687))

(assert (=> b!1295689 m!1446949))

(assert (=> d!365907 m!1447489))

(assert (=> d!365907 m!1447489))

(declare-fun m!1447493 () Bool)

(assert (=> d!365907 m!1447493))

(declare-fun m!1447495 () Bool)

(assert (=> b!1295690 m!1447495))

(declare-fun m!1447497 () Bool)

(assert (=> b!1295690 m!1447497))

(assert (=> b!1295690 m!1447495))

(assert (=> b!1295690 m!1447497))

(declare-fun m!1447499 () Bool)

(assert (=> b!1295690 m!1447499))

(declare-fun m!1447503 () Bool)

(assert (=> b!1295690 m!1447503))

(assert (=> b!1295687 m!1447503))

(declare-fun m!1447505 () Bool)

(assert (=> bm!88960 m!1447505))

(declare-fun m!1447507 () Bool)

(assert (=> b!1295692 m!1447507))

(assert (=> d!365151 d!365907))

(assert (=> b!1293495 d!365153))

(assert (=> b!1293745 d!365349))

(declare-fun d!365913 () Bool)

(assert (=> d!365913 true))

(assert (=> d!365913 true))

(declare-fun res!580407 () Bool)

(assert (=> d!365913 (= (choose!7941 lambda!50862) res!580407)))

(assert (=> d!365081 d!365913))

(declare-fun d!365917 () Bool)

(assert (=> d!365917 (= (isEmpty!7692 (t!117357 (map!2818 rules!2550 lambda!50865))) ((_ is Nil!12948) (t!117357 (map!2818 rules!2550 lambda!50865))))))

(assert (=> b!1294105 d!365917))

(declare-fun d!365919 () Bool)

(declare-fun lt!426439 () C!7376)

(assert (=> d!365919 (contains!2161 (tail!1848 (list!4837 lt!425590)) lt!426439)))

(declare-fun e!830826 () C!7376)

(assert (=> d!365919 (= lt!426439 e!830826)))

(declare-fun c!213504 () Bool)

(assert (=> d!365919 (= c!213504 (= (- 0 1) 0))))

(declare-fun e!830825 () Bool)

(assert (=> d!365919 e!830825))

(declare-fun res!580408 () Bool)

(assert (=> d!365919 (=> (not res!580408) (not e!830825))))

(assert (=> d!365919 (= res!580408 (<= 0 (- 0 1)))))

(assert (=> d!365919 (= (apply!2850 (tail!1848 (list!4837 lt!425590)) (- 0 1)) lt!426439)))

(declare-fun b!1295695 () Bool)

(assert (=> b!1295695 (= e!830825 (< (- 0 1) (size!10573 (tail!1848 (list!4837 lt!425590)))))))

(declare-fun b!1295696 () Bool)

(assert (=> b!1295696 (= e!830826 (head!2220 (tail!1848 (list!4837 lt!425590))))))

(declare-fun b!1295697 () Bool)

(assert (=> b!1295697 (= e!830826 (apply!2850 (tail!1848 (tail!1848 (list!4837 lt!425590))) (- (- 0 1) 1)))))

(assert (= (and d!365919 res!580408) b!1295695))

(assert (= (and d!365919 c!213504) b!1295696))

(assert (= (and d!365919 (not c!213504)) b!1295697))

(assert (=> d!365919 m!1445231))

(declare-fun m!1447509 () Bool)

(assert (=> d!365919 m!1447509))

(assert (=> b!1295695 m!1445231))

(declare-fun m!1447511 () Bool)

(assert (=> b!1295695 m!1447511))

(assert (=> b!1295696 m!1445231))

(declare-fun m!1447513 () Bool)

(assert (=> b!1295696 m!1447513))

(assert (=> b!1295697 m!1445231))

(declare-fun m!1447515 () Bool)

(assert (=> b!1295697 m!1447515))

(assert (=> b!1295697 m!1447515))

(declare-fun m!1447517 () Bool)

(assert (=> b!1295697 m!1447517))

(assert (=> b!1294182 d!365919))

(declare-fun d!365923 () Bool)

(assert (=> d!365923 (= (tail!1848 (list!4837 lt!425590)) (t!117315 (list!4837 lt!425590)))))

(assert (=> b!1294182 d!365923))

(declare-fun d!365925 () Bool)

(declare-fun c!213507 () Bool)

(assert (=> d!365925 (= c!213507 ((_ is Node!4251) (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))))))

(declare-fun e!830834 () Bool)

(assert (=> d!365925 (= (inv!17368 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))) e!830834)))

(declare-fun b!1295707 () Bool)

(assert (=> b!1295707 (= e!830834 (inv!17372 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))))))

(declare-fun b!1295708 () Bool)

(declare-fun e!830835 () Bool)

(assert (=> b!1295708 (= e!830834 e!830835)))

(declare-fun res!580414 () Bool)

(assert (=> b!1295708 (= res!580414 (not ((_ is Leaf!6562) (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))))))

(assert (=> b!1295708 (=> res!580414 e!830835)))

(declare-fun b!1295709 () Bool)

(assert (=> b!1295709 (= e!830835 (inv!17373 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))))))

(assert (= (and d!365925 c!213507) b!1295707))

(assert (= (and d!365925 (not c!213507)) b!1295708))

(assert (= (and b!1295708 (not res!580414)) b!1295709))

(declare-fun m!1447521 () Bool)

(assert (=> b!1295707 m!1447521))

(declare-fun m!1447523 () Bool)

(assert (=> b!1295709 m!1447523))

(assert (=> b!1294370 d!365925))

(declare-fun d!365927 () Bool)

(declare-fun c!213508 () Bool)

(assert (=> d!365927 (= c!213508 ((_ is Node!4251) (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))))))

(declare-fun e!830836 () Bool)

(assert (=> d!365927 (= (inv!17368 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))) e!830836)))

(declare-fun b!1295710 () Bool)

(assert (=> b!1295710 (= e!830836 (inv!17372 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))))))

(declare-fun b!1295711 () Bool)

(declare-fun e!830837 () Bool)

(assert (=> b!1295711 (= e!830836 e!830837)))

(declare-fun res!580415 () Bool)

(assert (=> b!1295711 (= res!580415 (not ((_ is Leaf!6562) (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))))))

(assert (=> b!1295711 (=> res!580415 e!830837)))

(declare-fun b!1295712 () Bool)

(assert (=> b!1295712 (= e!830837 (inv!17373 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))))))

(assert (= (and d!365927 c!213508) b!1295710))

(assert (= (and d!365927 (not c!213508)) b!1295711))

(assert (= (and b!1295711 (not res!580415)) b!1295712))

(declare-fun m!1447529 () Bool)

(assert (=> b!1295710 m!1447529))

(declare-fun m!1447531 () Bool)

(assert (=> b!1295712 m!1447531))

(assert (=> b!1294370 d!365927))

(declare-fun b!1295719 () Bool)

(declare-fun res!580422 () Bool)

(declare-fun e!830840 () Bool)

(assert (=> b!1295719 (=> (not res!580422) (not e!830840))))

(declare-fun call!88969 () Bool)

(assert (=> b!1295719 (= res!580422 (not call!88969))))

(declare-fun bm!88964 () Bool)

(assert (=> bm!88964 (= call!88969 (isEmpty!7687 (tail!1848 lt!425619)))))

(declare-fun b!1295720 () Bool)

(declare-fun res!580426 () Bool)

(declare-fun e!830845 () Bool)

(assert (=> b!1295720 (=> res!580426 e!830845)))

(assert (=> b!1295720 (= res!580426 e!830840)))

(declare-fun res!580427 () Bool)

(assert (=> b!1295720 (=> (not res!580427) (not e!830840))))

(declare-fun lt!426440 () Bool)

(assert (=> b!1295720 (= res!580427 lt!426440)))

(declare-fun b!1295721 () Bool)

(declare-fun e!830843 () Bool)

(declare-fun e!830844 () Bool)

(assert (=> b!1295721 (= e!830843 e!830844)))

(declare-fun c!213511 () Bool)

(assert (=> b!1295721 (= c!213511 ((_ is EmptyLang!3543) (derivativeStep!879 lt!425589 (head!2220 lt!425619))))))

(declare-fun b!1295722 () Bool)

(declare-fun e!830841 () Bool)

(assert (=> b!1295722 (= e!830845 e!830841)))

(declare-fun res!580423 () Bool)

(assert (=> b!1295722 (=> (not res!580423) (not e!830841))))

(assert (=> b!1295722 (= res!580423 (not lt!426440))))

(declare-fun b!1295723 () Bool)

(assert (=> b!1295723 (= e!830840 (= (head!2220 (tail!1848 lt!425619)) (c!212846 (derivativeStep!879 lt!425589 (head!2220 lt!425619)))))))

(declare-fun b!1295724 () Bool)

(declare-fun res!580429 () Bool)

(assert (=> b!1295724 (=> res!580429 e!830845)))

(assert (=> b!1295724 (= res!580429 (not ((_ is ElementMatch!3543) (derivativeStep!879 lt!425589 (head!2220 lt!425619)))))))

(assert (=> b!1295724 (= e!830844 e!830845)))

(declare-fun b!1295725 () Bool)

(declare-fun res!580425 () Bool)

(declare-fun e!830842 () Bool)

(assert (=> b!1295725 (=> res!580425 e!830842)))

(assert (=> b!1295725 (= res!580425 (not (isEmpty!7687 (tail!1848 (tail!1848 lt!425619)))))))

(declare-fun d!365931 () Bool)

(assert (=> d!365931 e!830843))

(declare-fun c!213509 () Bool)

(assert (=> d!365931 (= c!213509 ((_ is EmptyExpr!3543) (derivativeStep!879 lt!425589 (head!2220 lt!425619))))))

(declare-fun e!830846 () Bool)

(assert (=> d!365931 (= lt!426440 e!830846)))

(declare-fun c!213510 () Bool)

(assert (=> d!365931 (= c!213510 (isEmpty!7687 (tail!1848 lt!425619)))))

(assert (=> d!365931 (validRegex!1529 (derivativeStep!879 lt!425589 (head!2220 lt!425619)))))

(assert (=> d!365931 (= (matchR!1551 (derivativeStep!879 lt!425589 (head!2220 lt!425619)) (tail!1848 lt!425619)) lt!426440)))

(declare-fun b!1295726 () Bool)

(assert (=> b!1295726 (= e!830846 (nullable!1129 (derivativeStep!879 lt!425589 (head!2220 lt!425619))))))

(declare-fun b!1295727 () Bool)

(assert (=> b!1295727 (= e!830841 e!830842)))

(declare-fun res!580428 () Bool)

(assert (=> b!1295727 (=> res!580428 e!830842)))

(assert (=> b!1295727 (= res!580428 call!88969)))

(declare-fun b!1295728 () Bool)

(declare-fun res!580424 () Bool)

(assert (=> b!1295728 (=> (not res!580424) (not e!830840))))

(assert (=> b!1295728 (= res!580424 (isEmpty!7687 (tail!1848 (tail!1848 lt!425619))))))

(declare-fun b!1295729 () Bool)

(assert (=> b!1295729 (= e!830844 (not lt!426440))))

(declare-fun b!1295730 () Bool)

(assert (=> b!1295730 (= e!830842 (not (= (head!2220 (tail!1848 lt!425619)) (c!212846 (derivativeStep!879 lt!425589 (head!2220 lt!425619))))))))

(declare-fun b!1295731 () Bool)

(assert (=> b!1295731 (= e!830846 (matchR!1551 (derivativeStep!879 (derivativeStep!879 lt!425589 (head!2220 lt!425619)) (head!2220 (tail!1848 lt!425619))) (tail!1848 (tail!1848 lt!425619))))))

(declare-fun b!1295732 () Bool)

(assert (=> b!1295732 (= e!830843 (= lt!426440 call!88969))))

(assert (= (and d!365931 c!213510) b!1295726))

(assert (= (and d!365931 (not c!213510)) b!1295731))

(assert (= (and d!365931 c!213509) b!1295732))

(assert (= (and d!365931 (not c!213509)) b!1295721))

(assert (= (and b!1295721 c!213511) b!1295729))

(assert (= (and b!1295721 (not c!213511)) b!1295724))

(assert (= (and b!1295724 (not res!580429)) b!1295720))

(assert (= (and b!1295720 res!580427) b!1295719))

(assert (= (and b!1295719 res!580422) b!1295728))

(assert (= (and b!1295728 res!580424) b!1295723))

(assert (= (and b!1295720 (not res!580426)) b!1295722))

(assert (= (and b!1295722 res!580423) b!1295727))

(assert (= (and b!1295727 (not res!580428)) b!1295725))

(assert (= (and b!1295725 (not res!580425)) b!1295730))

(assert (= (or b!1295732 b!1295719 b!1295727) bm!88964))

(assert (=> b!1295726 m!1445071))

(declare-fun m!1447545 () Bool)

(assert (=> b!1295726 m!1447545))

(assert (=> b!1295731 m!1445073))

(assert (=> b!1295731 m!1446899))

(assert (=> b!1295731 m!1445071))

(assert (=> b!1295731 m!1446899))

(declare-fun m!1447547 () Bool)

(assert (=> b!1295731 m!1447547))

(assert (=> b!1295731 m!1445073))

(assert (=> b!1295731 m!1446905))

(assert (=> b!1295731 m!1447547))

(assert (=> b!1295731 m!1446905))

(declare-fun m!1447549 () Bool)

(assert (=> b!1295731 m!1447549))

(assert (=> d!365931 m!1445073))

(assert (=> d!365931 m!1445079))

(assert (=> d!365931 m!1445071))

(declare-fun m!1447551 () Bool)

(assert (=> d!365931 m!1447551))

(assert (=> b!1295723 m!1445073))

(assert (=> b!1295723 m!1446899))

(assert (=> bm!88964 m!1445073))

(assert (=> bm!88964 m!1445079))

(assert (=> b!1295730 m!1445073))

(assert (=> b!1295730 m!1446899))

(assert (=> b!1295725 m!1445073))

(assert (=> b!1295725 m!1446905))

(assert (=> b!1295725 m!1446905))

(declare-fun m!1447553 () Bool)

(assert (=> b!1295725 m!1447553))

(assert (=> b!1295728 m!1445073))

(assert (=> b!1295728 m!1446905))

(assert (=> b!1295728 m!1446905))

(assert (=> b!1295728 m!1447553))

(assert (=> b!1294008 d!365931))

(declare-fun d!365935 () Bool)

(declare-fun lt!426441 () Regex!3543)

(assert (=> d!365935 (validRegex!1529 lt!426441)))

(declare-fun e!830847 () Regex!3543)

(assert (=> d!365935 (= lt!426441 e!830847)))

(declare-fun c!213514 () Bool)

(assert (=> d!365935 (= c!213514 (or ((_ is EmptyExpr!3543) lt!425589) ((_ is EmptyLang!3543) lt!425589)))))

(assert (=> d!365935 (validRegex!1529 lt!425589)))

(assert (=> d!365935 (= (derivativeStep!879 lt!425589 (head!2220 lt!425619)) lt!426441)))

(declare-fun call!88970 () Regex!3543)

(declare-fun c!213513 () Bool)

(declare-fun c!213515 () Bool)

(declare-fun c!213512 () Bool)

(declare-fun bm!88965 () Bool)

(assert (=> bm!88965 (= call!88970 (derivativeStep!879 (ite c!213513 (regOne!7599 lt!425589) (ite c!213512 (reg!3872 lt!425589) (ite c!213515 (regTwo!7598 lt!425589) (regOne!7598 lt!425589)))) (head!2220 lt!425619)))))

(declare-fun b!1295733 () Bool)

(declare-fun e!830851 () Regex!3543)

(assert (=> b!1295733 (= e!830851 (ite (= (head!2220 lt!425619) (c!212846 lt!425589)) EmptyExpr!3543 EmptyLang!3543))))

(declare-fun bm!88966 () Bool)

(declare-fun call!88972 () Regex!3543)

(declare-fun call!88973 () Regex!3543)

(assert (=> bm!88966 (= call!88972 call!88973)))

(declare-fun b!1295734 () Bool)

(declare-fun e!830850 () Regex!3543)

(assert (=> b!1295734 (= e!830850 (Concat!5863 call!88973 lt!425589))))

(declare-fun b!1295735 () Bool)

(assert (=> b!1295735 (= c!213515 (nullable!1129 (regOne!7598 lt!425589)))))

(declare-fun e!830848 () Regex!3543)

(assert (=> b!1295735 (= e!830850 e!830848)))

(declare-fun bm!88967 () Bool)

(assert (=> bm!88967 (= call!88973 call!88970)))

(declare-fun b!1295736 () Bool)

(assert (=> b!1295736 (= e!830847 EmptyLang!3543)))

(declare-fun b!1295737 () Bool)

(declare-fun call!88971 () Regex!3543)

(assert (=> b!1295737 (= e!830848 (Union!3543 (Concat!5863 call!88971 (regTwo!7598 lt!425589)) call!88972))))

(declare-fun b!1295738 () Bool)

(declare-fun e!830849 () Regex!3543)

(assert (=> b!1295738 (= e!830849 (Union!3543 call!88970 call!88971))))

(declare-fun b!1295739 () Bool)

(assert (=> b!1295739 (= c!213513 ((_ is Union!3543) lt!425589))))

(assert (=> b!1295739 (= e!830851 e!830849)))

(declare-fun b!1295740 () Bool)

(assert (=> b!1295740 (= e!830849 e!830850)))

(assert (=> b!1295740 (= c!213512 ((_ is Star!3543) lt!425589))))

(declare-fun b!1295741 () Bool)

(assert (=> b!1295741 (= e!830848 (Union!3543 (Concat!5863 call!88972 (regTwo!7598 lt!425589)) EmptyLang!3543))))

(declare-fun b!1295742 () Bool)

(assert (=> b!1295742 (= e!830847 e!830851)))

(declare-fun c!213516 () Bool)

(assert (=> b!1295742 (= c!213516 ((_ is ElementMatch!3543) lt!425589))))

(declare-fun bm!88968 () Bool)

(assert (=> bm!88968 (= call!88971 (derivativeStep!879 (ite c!213513 (regTwo!7599 lt!425589) (regOne!7598 lt!425589)) (head!2220 lt!425619)))))

(assert (= (and d!365935 c!213514) b!1295736))

(assert (= (and d!365935 (not c!213514)) b!1295742))

(assert (= (and b!1295742 c!213516) b!1295733))

(assert (= (and b!1295742 (not c!213516)) b!1295739))

(assert (= (and b!1295739 c!213513) b!1295738))

(assert (= (and b!1295739 (not c!213513)) b!1295740))

(assert (= (and b!1295740 c!213512) b!1295734))

(assert (= (and b!1295740 (not c!213512)) b!1295735))

(assert (= (and b!1295735 c!213515) b!1295737))

(assert (= (and b!1295735 (not c!213515)) b!1295741))

(assert (= (or b!1295737 b!1295741) bm!88966))

(assert (= (or b!1295734 bm!88966) bm!88967))

(assert (= (or b!1295738 bm!88967) bm!88965))

(assert (= (or b!1295738 b!1295737) bm!88968))

(declare-fun m!1447555 () Bool)

(assert (=> d!365935 m!1447555))

(assert (=> d!365935 m!1444431))

(assert (=> bm!88965 m!1445069))

(declare-fun m!1447557 () Bool)

(assert (=> bm!88965 m!1447557))

(assert (=> b!1295735 m!1444993))

(assert (=> bm!88968 m!1445069))

(declare-fun m!1447559 () Bool)

(assert (=> bm!88968 m!1447559))

(assert (=> b!1294008 d!365935))

(assert (=> b!1294008 d!365513))

(assert (=> b!1294008 d!365229))

(declare-fun d!365937 () Bool)

(assert (=> d!365937 (= (Forall2!409 lambda!50912) (choose!7946 lambda!50912))))

(declare-fun bs!328950 () Bool)

(assert (= bs!328950 d!365937))

(declare-fun m!1447561 () Bool)

(assert (=> bs!328950 m!1447561))

(assert (=> d!365165 d!365937))

(declare-fun d!365939 () Bool)

(declare-fun c!213517 () Bool)

(assert (=> d!365939 (= c!213517 ((_ is Nil!12940) (t!117315 lt!425613)))))

(declare-fun e!830852 () (InoxSet C!7376))

(assert (=> d!365939 (= (content!1829 (t!117315 lt!425613)) e!830852)))

(declare-fun b!1295743 () Bool)

(assert (=> b!1295743 (= e!830852 ((as const (Array C!7376 Bool)) false))))

(declare-fun b!1295744 () Bool)

(assert (=> b!1295744 (= e!830852 ((_ map or) (store ((as const (Array C!7376 Bool)) false) (h!18341 (t!117315 lt!425613)) true) (content!1829 (t!117315 (t!117315 lt!425613)))))))

(assert (= (and d!365939 c!213517) b!1295743))

(assert (= (and d!365939 (not c!213517)) b!1295744))

(declare-fun m!1447563 () Bool)

(assert (=> b!1295744 m!1447563))

(declare-fun m!1447565 () Bool)

(assert (=> b!1295744 m!1447565))

(assert (=> b!1293947 d!365939))

(declare-fun d!365941 () Bool)

(declare-fun lt!426442 () Int)

(assert (=> d!365941 (>= lt!426442 0)))

(declare-fun e!830853 () Int)

(assert (=> d!365941 (= lt!426442 e!830853)))

(declare-fun c!213518 () Bool)

(assert (=> d!365941 (= c!213518 ((_ is Nil!12940) lt!425619))))

(assert (=> d!365941 (= (size!10573 lt!425619) lt!426442)))

(declare-fun b!1295745 () Bool)

(assert (=> b!1295745 (= e!830853 0)))

(declare-fun b!1295746 () Bool)

(assert (=> b!1295746 (= e!830853 (+ 1 (size!10573 (t!117315 lt!425619))))))

(assert (= (and d!365941 c!213518) b!1295745))

(assert (= (and d!365941 (not c!213518)) b!1295746))

(declare-fun m!1447567 () Bool)

(assert (=> b!1295746 m!1447567))

(assert (=> b!1294319 d!365941))

(assert (=> b!1294319 d!364889))

(declare-fun d!365943 () Bool)

(assert (=> d!365943 (= (isEmpty!7687 (list!4837 (_2!7227 lt!425649))) ((_ is Nil!12940) (list!4837 (_2!7227 lt!425649))))))

(assert (=> d!365087 d!365943))

(declare-fun d!365945 () Bool)

(assert (=> d!365945 (= (list!4837 (_2!7227 lt!425649)) (list!4841 (c!212845 (_2!7227 lt!425649))))))

(declare-fun bs!328951 () Bool)

(assert (= bs!328951 d!365945))

(declare-fun m!1447569 () Bool)

(assert (=> bs!328951 m!1447569))

(assert (=> d!365087 d!365945))

(declare-fun d!365947 () Bool)

(declare-fun lt!426443 () Bool)

(assert (=> d!365947 (= lt!426443 (isEmpty!7687 (list!4841 (c!212845 (_2!7227 lt!425649)))))))

(assert (=> d!365947 (= lt!426443 (= (size!10575 (c!212845 (_2!7227 lt!425649))) 0))))

(assert (=> d!365947 (= (isEmpty!7690 (c!212845 (_2!7227 lt!425649))) lt!426443)))

(declare-fun bs!328952 () Bool)

(assert (= bs!328952 d!365947))

(assert (=> bs!328952 m!1447569))

(assert (=> bs!328952 m!1447569))

(declare-fun m!1447571 () Bool)

(assert (=> bs!328952 m!1447571))

(declare-fun m!1447573 () Bool)

(assert (=> bs!328952 m!1447573))

(assert (=> d!365087 d!365947))

(declare-fun d!365949 () Bool)

(assert (=> d!365949 (= (inv!17375 (xs!6962 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))) (<= (size!10573 (innerList!4311 (xs!6962 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))) 2147483647))))

(declare-fun bs!328953 () Bool)

(assert (= bs!328953 d!365949))

(declare-fun m!1447575 () Bool)

(assert (=> bs!328953 m!1447575))

(assert (=> b!1294371 d!365949))

(declare-fun d!365951 () Bool)

(assert (=> d!365951 (= (Exists!701 lambda!50906) (choose!7941 lambda!50906))))

(declare-fun bs!328954 () Bool)

(assert (= bs!328954 d!365951))

(declare-fun m!1447577 () Bool)

(assert (=> bs!328954 m!1447577))

(assert (=> d!365083 d!365951))

(declare-fun bs!328955 () Bool)

(declare-fun d!365953 () Bool)

(assert (= bs!328955 (and d!365953 d!364803)))

(declare-fun lambda!50936 () Int)

(assert (=> bs!328955 (= lambda!50936 lambda!50865)))

(declare-fun bs!328956 () Bool)

(assert (= bs!328956 (and d!365953 d!365033)))

(assert (=> bs!328956 (= lambda!50936 lambda!50898)))

(declare-fun lambda!50937 () Int)

(assert (=> bs!328956 (= lambda!50937 lambda!50899)))

(declare-fun bs!328957 () Bool)

(assert (= bs!328957 (and d!365953 d!365037)))

(assert (=> bs!328957 (= lambda!50937 lambda!50903)))

(declare-fun bs!328958 () Bool)

(assert (= bs!328958 (and d!365953 d!365429)))

(assert (=> bs!328958 (= lambda!50937 lambda!50923)))

(assert (=> d!365953 (forall!3253 (map!2818 (t!117317 rules!2550) lambda!50936) lambda!50937)))

(declare-fun lt!426444 () Unit!19084)

(declare-fun e!830854 () Unit!19084)

(assert (=> d!365953 (= lt!426444 e!830854)))

(declare-fun c!213519 () Bool)

(assert (=> d!365953 (= c!213519 ((_ is Nil!12942) (t!117317 rules!2550)))))

(assert (=> d!365953 (rulesValidInductive!705 thiss!19762 (t!117317 rules!2550))))

(assert (=> d!365953 (= (lemma!50 rules!2550 thiss!19762 (t!117317 rules!2550)) lt!426444)))

(declare-fun b!1295747 () Bool)

(declare-fun Unit!19098 () Unit!19084)

(assert (=> b!1295747 (= e!830854 Unit!19098)))

(declare-fun b!1295748 () Bool)

(declare-fun Unit!19099 () Unit!19084)

(assert (=> b!1295748 (= e!830854 Unit!19099)))

(declare-fun lt!426445 () Unit!19084)

(assert (=> b!1295748 (= lt!426445 (lemma!50 rules!2550 thiss!19762 (t!117317 (t!117317 rules!2550))))))

(assert (= (and d!365953 c!213519) b!1295747))

(assert (= (and d!365953 (not c!213519)) b!1295748))

(declare-fun m!1447579 () Bool)

(assert (=> d!365953 m!1447579))

(assert (=> d!365953 m!1447579))

(declare-fun m!1447581 () Bool)

(assert (=> d!365953 m!1447581))

(assert (=> d!365953 m!1445519))

(declare-fun m!1447583 () Bool)

(assert (=> b!1295748 m!1447583))

(assert (=> b!1294039 d!365953))

(declare-fun d!365955 () Bool)

(assert (=> d!365955 (= (list!4837 (_2!7227 lt!425820)) (list!4841 (c!212845 (_2!7227 lt!425820))))))

(declare-fun bs!328959 () Bool)

(assert (= bs!328959 d!365955))

(declare-fun m!1447585 () Bool)

(assert (=> bs!328959 m!1447585))

(assert (=> b!1294170 d!365955))

(assert (=> b!1294170 d!365589))

(assert (=> b!1294170 d!365593))

(declare-fun d!365957 () Bool)

(declare-fun lt!426446 () Int)

(assert (=> d!365957 (>= lt!426446 0)))

(declare-fun e!830855 () Int)

(assert (=> d!365957 (= lt!426446 e!830855)))

(declare-fun c!213520 () Bool)

(assert (=> d!365957 (= c!213520 ((_ is Nil!12940) (t!117315 (originalCharacters!3091 t1!34))))))

(assert (=> d!365957 (= (size!10573 (t!117315 (originalCharacters!3091 t1!34))) lt!426446)))

(declare-fun b!1295749 () Bool)

(assert (=> b!1295749 (= e!830855 0)))

(declare-fun b!1295750 () Bool)

(assert (=> b!1295750 (= e!830855 (+ 1 (size!10573 (t!117315 (t!117315 (originalCharacters!3091 t1!34))))))))

(assert (= (and d!365957 c!213520) b!1295749))

(assert (= (and d!365957 (not c!213520)) b!1295750))

(declare-fun m!1447587 () Bool)

(assert (=> b!1295750 m!1447587))

(assert (=> b!1294337 d!365957))

(declare-fun d!365959 () Bool)

(assert (=> d!365959 (= (isEmpty!7687 (list!4837 (_2!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34)))))) ((_ is Nil!12940) (list!4837 (_2!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34)))))))))

(assert (=> d!364895 d!365959))

(declare-fun d!365961 () Bool)

(assert (=> d!365961 (= (list!4837 (_2!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34))))) (list!4841 (c!212845 (_2!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34)))))))))

(declare-fun bs!328960 () Bool)

(assert (= bs!328960 d!365961))

(declare-fun m!1447589 () Bool)

(assert (=> bs!328960 m!1447589))

(assert (=> d!364895 d!365961))

(declare-fun lt!426447 () Bool)

(declare-fun d!365963 () Bool)

(assert (=> d!365963 (= lt!426447 (isEmpty!7687 (list!4841 (c!212845 (_2!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34))))))))))

(assert (=> d!365963 (= lt!426447 (= (size!10575 (c!212845 (_2!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34)))))) 0))))

(assert (=> d!365963 (= (isEmpty!7690 (c!212845 (_2!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t2!34)))))) lt!426447)))

(declare-fun bs!328961 () Bool)

(assert (= bs!328961 d!365963))

(assert (=> bs!328961 m!1447589))

(assert (=> bs!328961 m!1447589))

(declare-fun m!1447591 () Bool)

(assert (=> bs!328961 m!1447591))

(declare-fun m!1447593 () Bool)

(assert (=> bs!328961 m!1447593))

(assert (=> d!364895 d!365963))

(declare-fun d!365965 () Bool)

(declare-fun lt!426450 () Bool)

(declare-fun content!1832 (List!13013) (InoxSet String!15831))

(assert (=> d!365965 (= lt!426450 (select (content!1832 Nil!12947) (tag!2491 (h!18343 rules!2550))))))

(declare-fun e!830879 () Bool)

(assert (=> d!365965 (= lt!426450 e!830879)))

(declare-fun res!580452 () Bool)

(assert (=> d!365965 (=> (not res!580452) (not e!830879))))

(assert (=> d!365965 (= res!580452 ((_ is Cons!12947) Nil!12947))))

(assert (=> d!365965 (= (contains!2162 Nil!12947 (tag!2491 (h!18343 rules!2550))) lt!426450)))

(declare-fun b!1295773 () Bool)

(declare-fun e!830878 () Bool)

(assert (=> b!1295773 (= e!830879 e!830878)))

(declare-fun res!580453 () Bool)

(assert (=> b!1295773 (=> res!580453 e!830878)))

(assert (=> b!1295773 (= res!580453 (= (h!18348 Nil!12947) (tag!2491 (h!18343 rules!2550))))))

(declare-fun b!1295774 () Bool)

(assert (=> b!1295774 (= e!830878 (contains!2162 (t!117356 Nil!12947) (tag!2491 (h!18343 rules!2550))))))

(assert (= (and d!365965 res!580452) b!1295773))

(assert (= (and b!1295773 (not res!580453)) b!1295774))

(declare-fun m!1447595 () Bool)

(assert (=> d!365965 m!1447595))

(declare-fun m!1447597 () Bool)

(assert (=> d!365965 m!1447597))

(declare-fun m!1447599 () Bool)

(assert (=> b!1295774 m!1447599))

(assert (=> b!1294208 d!365965))

(assert (=> b!1294299 d!365735))

(assert (=> b!1294299 d!365743))

(assert (=> b!1294299 d!365439))

(assert (=> b!1294299 d!365745))

(assert (=> b!1294299 d!365747))

(declare-fun d!365967 () Bool)

(declare-fun lt!426451 () Int)

(assert (=> d!365967 (>= lt!426451 0)))

(declare-fun e!830880 () Int)

(assert (=> d!365967 (= lt!426451 e!830880)))

(declare-fun c!213521 () Bool)

(assert (=> d!365967 (= c!213521 ((_ is Nil!12940) (list!4841 (c!212845 lt!425587))))))

(assert (=> d!365967 (= (size!10573 (list!4841 (c!212845 lt!425587))) lt!426451)))

(declare-fun b!1295775 () Bool)

(assert (=> b!1295775 (= e!830880 0)))

(declare-fun b!1295776 () Bool)

(assert (=> b!1295776 (= e!830880 (+ 1 (size!10573 (t!117315 (list!4841 (c!212845 lt!425587))))))))

(assert (= (and d!365967 c!213521) b!1295775))

(assert (= (and d!365967 (not c!213521)) b!1295776))

(declare-fun m!1447601 () Bool)

(assert (=> b!1295776 m!1447601))

(assert (=> d!365173 d!365967))

(assert (=> d!365173 d!365111))

(declare-fun b!1295777 () Bool)

(declare-fun e!830882 () Bool)

(declare-fun e!830887 () Bool)

(assert (=> b!1295777 (= e!830882 e!830887)))

(declare-fun res!580458 () Bool)

(assert (=> b!1295777 (=> (not res!580458) (not e!830887))))

(declare-fun call!88975 () Bool)

(assert (=> b!1295777 (= res!580458 call!88975)))

(declare-fun b!1295779 () Bool)

(declare-fun res!580457 () Bool)

(assert (=> b!1295779 (=> res!580457 e!830882)))

(assert (=> b!1295779 (= res!580457 (not ((_ is Concat!5863) (ite c!213069 (regTwo!7599 lt!425589) (regTwo!7598 lt!425589)))))))

(declare-fun e!830881 () Bool)

(assert (=> b!1295779 (= e!830881 e!830882)))

(declare-fun b!1295780 () Bool)

(declare-fun call!88976 () Bool)

(assert (=> b!1295780 (= e!830887 call!88976)))

(declare-fun b!1295781 () Bool)

(declare-fun res!580454 () Bool)

(declare-fun e!830883 () Bool)

(assert (=> b!1295781 (=> (not res!580454) (not e!830883))))

(assert (=> b!1295781 (= res!580454 call!88975)))

(assert (=> b!1295781 (= e!830881 e!830883)))

(declare-fun b!1295782 () Bool)

(assert (=> b!1295782 (= e!830883 call!88976)))

(declare-fun bm!88969 () Bool)

(declare-fun c!213523 () Bool)

(assert (=> bm!88969 (= call!88976 (validRegex!1529 (ite c!213523 (regTwo!7599 (ite c!213069 (regTwo!7599 lt!425589) (regTwo!7598 lt!425589))) (regTwo!7598 (ite c!213069 (regTwo!7599 lt!425589) (regTwo!7598 lt!425589))))))))

(declare-fun b!1295783 () Bool)

(declare-fun e!830884 () Bool)

(declare-fun call!88974 () Bool)

(assert (=> b!1295783 (= e!830884 call!88974)))

(declare-fun b!1295784 () Bool)

(declare-fun e!830885 () Bool)

(assert (=> b!1295784 (= e!830885 e!830881)))

(assert (=> b!1295784 (= c!213523 ((_ is Union!3543) (ite c!213069 (regTwo!7599 lt!425589) (regTwo!7598 lt!425589))))))

(declare-fun bm!88970 () Bool)

(assert (=> bm!88970 (= call!88975 call!88974)))

(declare-fun b!1295785 () Bool)

(assert (=> b!1295785 (= e!830885 e!830884)))

(declare-fun res!580456 () Bool)

(assert (=> b!1295785 (= res!580456 (not (nullable!1129 (reg!3872 (ite c!213069 (regTwo!7599 lt!425589) (regTwo!7598 lt!425589))))))))

(assert (=> b!1295785 (=> (not res!580456) (not e!830884))))

(declare-fun c!213522 () Bool)

(declare-fun bm!88971 () Bool)

(assert (=> bm!88971 (= call!88974 (validRegex!1529 (ite c!213522 (reg!3872 (ite c!213069 (regTwo!7599 lt!425589) (regTwo!7598 lt!425589))) (ite c!213523 (regOne!7599 (ite c!213069 (regTwo!7599 lt!425589) (regTwo!7598 lt!425589))) (regOne!7598 (ite c!213069 (regTwo!7599 lt!425589) (regTwo!7598 lt!425589)))))))))

(declare-fun b!1295778 () Bool)

(declare-fun e!830886 () Bool)

(assert (=> b!1295778 (= e!830886 e!830885)))

(assert (=> b!1295778 (= c!213522 ((_ is Star!3543) (ite c!213069 (regTwo!7599 lt!425589) (regTwo!7598 lt!425589))))))

(declare-fun d!365969 () Bool)

(declare-fun res!580455 () Bool)

(assert (=> d!365969 (=> res!580455 e!830886)))

(assert (=> d!365969 (= res!580455 ((_ is ElementMatch!3543) (ite c!213069 (regTwo!7599 lt!425589) (regTwo!7598 lt!425589))))))

(assert (=> d!365969 (= (validRegex!1529 (ite c!213069 (regTwo!7599 lt!425589) (regTwo!7598 lt!425589))) e!830886)))

(assert (= (and d!365969 (not res!580455)) b!1295778))

(assert (= (and b!1295778 c!213522) b!1295785))

(assert (= (and b!1295778 (not c!213522)) b!1295784))

(assert (= (and b!1295785 res!580456) b!1295783))

(assert (= (and b!1295784 c!213523) b!1295781))

(assert (= (and b!1295784 (not c!213523)) b!1295779))

(assert (= (and b!1295781 res!580454) b!1295782))

(assert (= (and b!1295779 (not res!580457)) b!1295777))

(assert (= (and b!1295777 res!580458) b!1295780))

(assert (= (or b!1295781 b!1295777) bm!88970))

(assert (= (or b!1295782 b!1295780) bm!88969))

(assert (= (or b!1295783 bm!88970) bm!88971))

(declare-fun m!1447603 () Bool)

(assert (=> bm!88969 m!1447603))

(declare-fun m!1447605 () Bool)

(assert (=> b!1295785 m!1447605))

(declare-fun m!1447607 () Bool)

(assert (=> bm!88971 m!1447607))

(assert (=> bm!88777 d!365969))

(declare-fun d!365971 () Bool)

(declare-fun lt!426452 () Int)

(assert (=> d!365971 (>= lt!426452 0)))

(declare-fun e!830888 () Int)

(assert (=> d!365971 (= lt!426452 e!830888)))

(declare-fun c!213524 () Bool)

(assert (=> d!365971 (= c!213524 ((_ is Nil!12940) lt!425688))))

(assert (=> d!365971 (= (size!10573 lt!425688) lt!426452)))

(declare-fun b!1295786 () Bool)

(assert (=> b!1295786 (= e!830888 0)))

(declare-fun b!1295787 () Bool)

(assert (=> b!1295787 (= e!830888 (+ 1 (size!10573 (t!117315 lt!425688))))))

(assert (= (and d!365971 c!213524) b!1295786))

(assert (= (and d!365971 (not c!213524)) b!1295787))

(declare-fun m!1447609 () Bool)

(assert (=> b!1295787 m!1447609))

(assert (=> b!1293726 d!365971))

(assert (=> b!1293726 d!364889))

(declare-fun d!365973 () Bool)

(declare-fun lt!426453 () Int)

(assert (=> d!365973 (>= lt!426453 0)))

(declare-fun e!830889 () Int)

(assert (=> d!365973 (= lt!426453 e!830889)))

(declare-fun c!213525 () Bool)

(assert (=> d!365973 (= c!213525 ((_ is Nil!12940) lt!425616))))

(assert (=> d!365973 (= (size!10573 lt!425616) lt!426453)))

(declare-fun b!1295788 () Bool)

(assert (=> b!1295788 (= e!830889 0)))

(declare-fun b!1295789 () Bool)

(assert (=> b!1295789 (= e!830889 (+ 1 (size!10573 (t!117315 lt!425616))))))

(assert (= (and d!365973 c!213525) b!1295788))

(assert (= (and d!365973 (not c!213525)) b!1295789))

(declare-fun m!1447611 () Bool)

(assert (=> b!1295789 m!1447611))

(assert (=> b!1293726 d!365973))

(assert (=> bm!88767 d!365733))

(declare-fun d!365975 () Bool)

(assert (=> d!365975 (= (charsToInt!0 (text!16680 (value!73159 t1!34))) (choose!625 (text!16680 (value!73159 t1!34))))))

(declare-fun bs!328962 () Bool)

(assert (= bs!328962 d!365975))

(declare-fun m!1447613 () Bool)

(assert (=> bs!328962 m!1447613))

(assert (=> d!365123 d!365975))

(assert (=> b!1294245 d!365627))

(declare-fun b!1295793 () Bool)

(declare-fun e!830890 () Bool)

(declare-fun lt!426454 () List!13006)

(assert (=> b!1295793 (= e!830890 (or (not (= (list!4841 (right!11461 (c!212845 lt!425587))) Nil!12940)) (= lt!426454 (list!4841 (left!11131 (c!212845 lt!425587))))))))

(declare-fun b!1295791 () Bool)

(declare-fun e!830891 () List!13006)

(assert (=> b!1295791 (= e!830891 (Cons!12940 (h!18341 (list!4841 (left!11131 (c!212845 lt!425587)))) (++!3282 (t!117315 (list!4841 (left!11131 (c!212845 lt!425587)))) (list!4841 (right!11461 (c!212845 lt!425587))))))))

(declare-fun b!1295792 () Bool)

(declare-fun res!580459 () Bool)

(assert (=> b!1295792 (=> (not res!580459) (not e!830890))))

(assert (=> b!1295792 (= res!580459 (= (size!10573 lt!426454) (+ (size!10573 (list!4841 (left!11131 (c!212845 lt!425587)))) (size!10573 (list!4841 (right!11461 (c!212845 lt!425587)))))))))

(declare-fun b!1295790 () Bool)

(assert (=> b!1295790 (= e!830891 (list!4841 (right!11461 (c!212845 lt!425587))))))

(declare-fun d!365977 () Bool)

(assert (=> d!365977 e!830890))

(declare-fun res!580460 () Bool)

(assert (=> d!365977 (=> (not res!580460) (not e!830890))))

(assert (=> d!365977 (= res!580460 (= (content!1829 lt!426454) ((_ map or) (content!1829 (list!4841 (left!11131 (c!212845 lt!425587)))) (content!1829 (list!4841 (right!11461 (c!212845 lt!425587)))))))))

(assert (=> d!365977 (= lt!426454 e!830891)))

(declare-fun c!213526 () Bool)

(assert (=> d!365977 (= c!213526 ((_ is Nil!12940) (list!4841 (left!11131 (c!212845 lt!425587)))))))

(assert (=> d!365977 (= (++!3282 (list!4841 (left!11131 (c!212845 lt!425587))) (list!4841 (right!11461 (c!212845 lt!425587)))) lt!426454)))

(assert (= (and d!365977 c!213526) b!1295790))

(assert (= (and d!365977 (not c!213526)) b!1295791))

(assert (= (and d!365977 res!580460) b!1295792))

(assert (= (and b!1295792 res!580459) b!1295793))

(assert (=> b!1295791 m!1445305))

(declare-fun m!1447615 () Bool)

(assert (=> b!1295791 m!1447615))

(declare-fun m!1447617 () Bool)

(assert (=> b!1295792 m!1447617))

(assert (=> b!1295792 m!1445303))

(declare-fun m!1447619 () Bool)

(assert (=> b!1295792 m!1447619))

(assert (=> b!1295792 m!1445305))

(declare-fun m!1447621 () Bool)

(assert (=> b!1295792 m!1447621))

(declare-fun m!1447623 () Bool)

(assert (=> d!365977 m!1447623))

(assert (=> d!365977 m!1445303))

(declare-fun m!1447625 () Bool)

(assert (=> d!365977 m!1447625))

(assert (=> d!365977 m!1445305))

(declare-fun m!1447627 () Bool)

(assert (=> d!365977 m!1447627))

(assert (=> b!1294267 d!365977))

(declare-fun d!365979 () Bool)

(declare-fun c!213527 () Bool)

(assert (=> d!365979 (= c!213527 ((_ is Empty!4251) (left!11131 (c!212845 lt!425587))))))

(declare-fun e!830901 () List!13006)

(assert (=> d!365979 (= (list!4841 (left!11131 (c!212845 lt!425587))) e!830901)))

(declare-fun b!1295804 () Bool)

(declare-fun e!830902 () List!13006)

(assert (=> b!1295804 (= e!830901 e!830902)))

(declare-fun c!213528 () Bool)

(assert (=> b!1295804 (= c!213528 ((_ is Leaf!6562) (left!11131 (c!212845 lt!425587))))))

(declare-fun b!1295805 () Bool)

(assert (=> b!1295805 (= e!830902 (list!4845 (xs!6962 (left!11131 (c!212845 lt!425587)))))))

(declare-fun b!1295806 () Bool)

(assert (=> b!1295806 (= e!830902 (++!3282 (list!4841 (left!11131 (left!11131 (c!212845 lt!425587)))) (list!4841 (right!11461 (left!11131 (c!212845 lt!425587))))))))

(declare-fun b!1295803 () Bool)

(assert (=> b!1295803 (= e!830901 Nil!12940)))

(assert (= (and d!365979 c!213527) b!1295803))

(assert (= (and d!365979 (not c!213527)) b!1295804))

(assert (= (and b!1295804 c!213528) b!1295805))

(assert (= (and b!1295804 (not c!213528)) b!1295806))

(declare-fun m!1447629 () Bool)

(assert (=> b!1295805 m!1447629))

(declare-fun m!1447631 () Bool)

(assert (=> b!1295806 m!1447631))

(declare-fun m!1447633 () Bool)

(assert (=> b!1295806 m!1447633))

(assert (=> b!1295806 m!1447631))

(assert (=> b!1295806 m!1447633))

(declare-fun m!1447635 () Bool)

(assert (=> b!1295806 m!1447635))

(assert (=> b!1294267 d!365979))

(declare-fun d!365981 () Bool)

(declare-fun c!213529 () Bool)

(assert (=> d!365981 (= c!213529 ((_ is Empty!4251) (right!11461 (c!212845 lt!425587))))))

(declare-fun e!830903 () List!13006)

(assert (=> d!365981 (= (list!4841 (right!11461 (c!212845 lt!425587))) e!830903)))

(declare-fun b!1295808 () Bool)

(declare-fun e!830904 () List!13006)

(assert (=> b!1295808 (= e!830903 e!830904)))

(declare-fun c!213530 () Bool)

(assert (=> b!1295808 (= c!213530 ((_ is Leaf!6562) (right!11461 (c!212845 lt!425587))))))

(declare-fun b!1295809 () Bool)

(assert (=> b!1295809 (= e!830904 (list!4845 (xs!6962 (right!11461 (c!212845 lt!425587)))))))

(declare-fun b!1295810 () Bool)

(assert (=> b!1295810 (= e!830904 (++!3282 (list!4841 (left!11131 (right!11461 (c!212845 lt!425587)))) (list!4841 (right!11461 (right!11461 (c!212845 lt!425587))))))))

(declare-fun b!1295807 () Bool)

(assert (=> b!1295807 (= e!830903 Nil!12940)))

(assert (= (and d!365981 c!213529) b!1295807))

(assert (= (and d!365981 (not c!213529)) b!1295808))

(assert (= (and b!1295808 c!213530) b!1295809))

(assert (= (and b!1295808 (not c!213530)) b!1295810))

(declare-fun m!1447637 () Bool)

(assert (=> b!1295809 m!1447637))

(declare-fun m!1447639 () Bool)

(assert (=> b!1295810 m!1447639))

(declare-fun m!1447641 () Bool)

(assert (=> b!1295810 m!1447641))

(assert (=> b!1295810 m!1447639))

(assert (=> b!1295810 m!1447641))

(declare-fun m!1447643 () Bool)

(assert (=> b!1295810 m!1447643))

(assert (=> b!1294267 d!365981))

(declare-fun d!365983 () Bool)

(assert (=> d!365983 (= (isEmpty!7687 (list!4837 (_2!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34)))))) ((_ is Nil!12940) (list!4837 (_2!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34)))))))))

(assert (=> d!365181 d!365983))

(declare-fun d!365985 () Bool)

(assert (=> d!365985 (= (list!4837 (_2!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34))))) (list!4841 (c!212845 (_2!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34)))))))))

(declare-fun bs!328963 () Bool)

(assert (= bs!328963 d!365985))

(declare-fun m!1447645 () Bool)

(assert (=> bs!328963 m!1447645))

(assert (=> d!365181 d!365985))

(declare-fun lt!426455 () Bool)

(declare-fun d!365987 () Bool)

(assert (=> d!365987 (= lt!426455 (isEmpty!7687 (list!4841 (c!212845 (_2!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34))))))))))

(assert (=> d!365987 (= lt!426455 (= (size!10575 (c!212845 (_2!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34)))))) 0))))

(assert (=> d!365987 (= (isEmpty!7690 (c!212845 (_2!7227 (lex!787 thiss!19762 rules!2550 (print!724 thiss!19762 (singletonSeq!814 t1!34)))))) lt!426455)))

(declare-fun bs!328964 () Bool)

(assert (= bs!328964 d!365987))

(assert (=> bs!328964 m!1447645))

(assert (=> bs!328964 m!1447645))

(declare-fun m!1447647 () Bool)

(assert (=> bs!328964 m!1447647))

(declare-fun m!1447649 () Bool)

(assert (=> bs!328964 m!1447649))

(assert (=> d!365181 d!365987))

(declare-fun d!365989 () Bool)

(declare-fun res!580474 () Bool)

(declare-fun e!830906 () Bool)

(assert (=> d!365989 (=> res!580474 e!830906)))

(assert (=> d!365989 (= res!580474 (not ((_ is Node!4251) (c!212845 lt!425883))))))

(assert (=> d!365989 (= (isBalanced!1249 (c!212845 lt!425883)) e!830906)))

(declare-fun b!1295811 () Bool)

(declare-fun res!580470 () Bool)

(declare-fun e!830905 () Bool)

(assert (=> b!1295811 (=> (not res!580470) (not e!830905))))

(assert (=> b!1295811 (= res!580470 (isBalanced!1249 (right!11461 (c!212845 lt!425883))))))

(declare-fun b!1295812 () Bool)

(declare-fun res!580475 () Bool)

(assert (=> b!1295812 (=> (not res!580475) (not e!830905))))

(assert (=> b!1295812 (= res!580475 (not (isEmpty!7690 (left!11131 (c!212845 lt!425883)))))))

(declare-fun b!1295813 () Bool)

(declare-fun res!580472 () Bool)

(assert (=> b!1295813 (=> (not res!580472) (not e!830905))))

(assert (=> b!1295813 (= res!580472 (isBalanced!1249 (left!11131 (c!212845 lt!425883))))))

(declare-fun b!1295814 () Bool)

(assert (=> b!1295814 (= e!830906 e!830905)))

(declare-fun res!580473 () Bool)

(assert (=> b!1295814 (=> (not res!580473) (not e!830905))))

(assert (=> b!1295814 (= res!580473 (<= (- 1) (- (height!609 (left!11131 (c!212845 lt!425883))) (height!609 (right!11461 (c!212845 lt!425883))))))))

(declare-fun b!1295815 () Bool)

(declare-fun res!580471 () Bool)

(assert (=> b!1295815 (=> (not res!580471) (not e!830905))))

(assert (=> b!1295815 (= res!580471 (<= (- (height!609 (left!11131 (c!212845 lt!425883))) (height!609 (right!11461 (c!212845 lt!425883)))) 1))))

(declare-fun b!1295816 () Bool)

(assert (=> b!1295816 (= e!830905 (not (isEmpty!7690 (right!11461 (c!212845 lt!425883)))))))

(assert (= (and d!365989 (not res!580474)) b!1295814))

(assert (= (and b!1295814 res!580473) b!1295815))

(assert (= (and b!1295815 res!580471) b!1295813))

(assert (= (and b!1295813 res!580472) b!1295811))

(assert (= (and b!1295811 res!580470) b!1295812))

(assert (= (and b!1295812 res!580475) b!1295816))

(declare-fun m!1447665 () Bool)

(assert (=> b!1295815 m!1447665))

(declare-fun m!1447667 () Bool)

(assert (=> b!1295815 m!1447667))

(declare-fun m!1447669 () Bool)

(assert (=> b!1295816 m!1447669))

(declare-fun m!1447673 () Bool)

(assert (=> b!1295812 m!1447673))

(declare-fun m!1447675 () Bool)

(assert (=> b!1295811 m!1447675))

(assert (=> b!1295814 m!1447665))

(assert (=> b!1295814 m!1447667))

(declare-fun m!1447677 () Bool)

(assert (=> b!1295813 m!1447677))

(assert (=> b!1294303 d!365989))

(declare-fun b!1295819 () Bool)

(declare-fun e!830908 () List!13012)

(assert (=> b!1295819 (= e!830908 (list!4846 (xs!6964 (c!212884 (singletonSeq!814 t1!34)))))))

(declare-fun b!1295818 () Bool)

(declare-fun e!830907 () List!13012)

(assert (=> b!1295818 (= e!830907 e!830908)))

(declare-fun c!213532 () Bool)

(assert (=> b!1295818 (= c!213532 ((_ is Leaf!6564) (c!212884 (singletonSeq!814 t1!34))))))

(declare-fun b!1295817 () Bool)

(assert (=> b!1295817 (= e!830907 Nil!12946)))

(declare-fun d!365991 () Bool)

(declare-fun c!213531 () Bool)

(assert (=> d!365991 (= c!213531 ((_ is Empty!4253) (c!212884 (singletonSeq!814 t1!34))))))

(assert (=> d!365991 (= (list!4844 (c!212884 (singletonSeq!814 t1!34))) e!830907)))

(declare-fun b!1295820 () Bool)

(assert (=> b!1295820 (= e!830908 (++!3287 (list!4844 (left!11133 (c!212884 (singletonSeq!814 t1!34)))) (list!4844 (right!11463 (c!212884 (singletonSeq!814 t1!34))))))))

(assert (= (and d!365991 c!213531) b!1295817))

(assert (= (and d!365991 (not c!213531)) b!1295818))

(assert (= (and b!1295818 c!213532) b!1295819))

(assert (= (and b!1295818 (not c!213532)) b!1295820))

(declare-fun m!1447687 () Bool)

(assert (=> b!1295819 m!1447687))

(declare-fun m!1447689 () Bool)

(assert (=> b!1295820 m!1447689))

(declare-fun m!1447691 () Bool)

(assert (=> b!1295820 m!1447691))

(assert (=> b!1295820 m!1447689))

(assert (=> b!1295820 m!1447691))

(declare-fun m!1447693 () Bool)

(assert (=> b!1295820 m!1447693))

(assert (=> d!365067 d!365991))

(declare-fun b!1295825 () Bool)

(declare-fun e!830910 () Bool)

(declare-fun tp!377392 () Bool)

(declare-fun tp!377395 () Bool)

(assert (=> b!1295825 (= e!830910 (and tp!377392 tp!377395))))

(declare-fun b!1295822 () Bool)

(assert (=> b!1295822 (= e!830910 tp_is_empty!6579)))

(assert (=> b!1294415 (= tp!377384 e!830910)))

(declare-fun b!1295824 () Bool)

(declare-fun tp!377394 () Bool)

(assert (=> b!1295824 (= e!830910 tp!377394)))

(declare-fun b!1295823 () Bool)

(declare-fun tp!377393 () Bool)

(declare-fun tp!377391 () Bool)

(assert (=> b!1295823 (= e!830910 (and tp!377393 tp!377391))))

(assert (= (and b!1294415 ((_ is ElementMatch!3543) (reg!3872 (regTwo!7599 (regex!2229 (h!18343 rules!2550)))))) b!1295822))

(assert (= (and b!1294415 ((_ is Concat!5863) (reg!3872 (regTwo!7599 (regex!2229 (h!18343 rules!2550)))))) b!1295823))

(assert (= (and b!1294415 ((_ is Star!3543) (reg!3872 (regTwo!7599 (regex!2229 (h!18343 rules!2550)))))) b!1295824))

(assert (= (and b!1294415 ((_ is Union!3543) (reg!3872 (regTwo!7599 (regex!2229 (h!18343 rules!2550)))))) b!1295825))

(declare-fun b!1295829 () Bool)

(declare-fun e!830911 () Bool)

(declare-fun tp!377397 () Bool)

(declare-fun tp!377400 () Bool)

(assert (=> b!1295829 (= e!830911 (and tp!377397 tp!377400))))

(declare-fun b!1295826 () Bool)

(assert (=> b!1295826 (= e!830911 tp_is_empty!6579)))

(assert (=> b!1294377 (= tp!377338 e!830911)))

(declare-fun b!1295828 () Bool)

(declare-fun tp!377399 () Bool)

(assert (=> b!1295828 (= e!830911 tp!377399)))

(declare-fun b!1295827 () Bool)

(declare-fun tp!377398 () Bool)

(declare-fun tp!377396 () Bool)

(assert (=> b!1295827 (= e!830911 (and tp!377398 tp!377396))))

(assert (= (and b!1294377 ((_ is ElementMatch!3543) (regOne!7598 (regOne!7599 (regex!2229 (rule!3968 t1!34)))))) b!1295826))

(assert (= (and b!1294377 ((_ is Concat!5863) (regOne!7598 (regOne!7599 (regex!2229 (rule!3968 t1!34)))))) b!1295827))

(assert (= (and b!1294377 ((_ is Star!3543) (regOne!7598 (regOne!7599 (regex!2229 (rule!3968 t1!34)))))) b!1295828))

(assert (= (and b!1294377 ((_ is Union!3543) (regOne!7598 (regOne!7599 (regex!2229 (rule!3968 t1!34)))))) b!1295829))

(declare-fun b!1295837 () Bool)

(declare-fun e!830914 () Bool)

(declare-fun tp!377402 () Bool)

(declare-fun tp!377405 () Bool)

(assert (=> b!1295837 (= e!830914 (and tp!377402 tp!377405))))

(declare-fun b!1295834 () Bool)

(assert (=> b!1295834 (= e!830914 tp_is_empty!6579)))

(assert (=> b!1294377 (= tp!377336 e!830914)))

(declare-fun b!1295836 () Bool)

(declare-fun tp!377404 () Bool)

(assert (=> b!1295836 (= e!830914 tp!377404)))

(declare-fun b!1295835 () Bool)

(declare-fun tp!377403 () Bool)

(declare-fun tp!377401 () Bool)

(assert (=> b!1295835 (= e!830914 (and tp!377403 tp!377401))))

(assert (= (and b!1294377 ((_ is ElementMatch!3543) (regTwo!7598 (regOne!7599 (regex!2229 (rule!3968 t1!34)))))) b!1295834))

(assert (= (and b!1294377 ((_ is Concat!5863) (regTwo!7598 (regOne!7599 (regex!2229 (rule!3968 t1!34)))))) b!1295835))

(assert (= (and b!1294377 ((_ is Star!3543) (regTwo!7598 (regOne!7599 (regex!2229 (rule!3968 t1!34)))))) b!1295836))

(assert (= (and b!1294377 ((_ is Union!3543) (regTwo!7598 (regOne!7599 (regex!2229 (rule!3968 t1!34)))))) b!1295837))

(declare-fun b!1295841 () Bool)

(declare-fun e!830915 () Bool)

(declare-fun tp!377407 () Bool)

(declare-fun tp!377410 () Bool)

(assert (=> b!1295841 (= e!830915 (and tp!377407 tp!377410))))

(declare-fun b!1295838 () Bool)

(assert (=> b!1295838 (= e!830915 tp_is_empty!6579)))

(assert (=> b!1294359 (= tp!377320 e!830915)))

(declare-fun b!1295840 () Bool)

(declare-fun tp!377409 () Bool)

(assert (=> b!1295840 (= e!830915 tp!377409)))

(declare-fun b!1295839 () Bool)

(declare-fun tp!377408 () Bool)

(declare-fun tp!377406 () Bool)

(assert (=> b!1295839 (= e!830915 (and tp!377408 tp!377406))))

(assert (= (and b!1294359 ((_ is ElementMatch!3543) (regOne!7598 (regTwo!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295838))

(assert (= (and b!1294359 ((_ is Concat!5863) (regOne!7598 (regTwo!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295839))

(assert (= (and b!1294359 ((_ is Star!3543) (regOne!7598 (regTwo!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295840))

(assert (= (and b!1294359 ((_ is Union!3543) (regOne!7598 (regTwo!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295841))

(declare-fun b!1295845 () Bool)

(declare-fun e!830916 () Bool)

(declare-fun tp!377412 () Bool)

(declare-fun tp!377415 () Bool)

(assert (=> b!1295845 (= e!830916 (and tp!377412 tp!377415))))

(declare-fun b!1295842 () Bool)

(assert (=> b!1295842 (= e!830916 tp_is_empty!6579)))

(assert (=> b!1294359 (= tp!377318 e!830916)))

(declare-fun b!1295844 () Bool)

(declare-fun tp!377414 () Bool)

(assert (=> b!1295844 (= e!830916 tp!377414)))

(declare-fun b!1295843 () Bool)

(declare-fun tp!377413 () Bool)

(declare-fun tp!377411 () Bool)

(assert (=> b!1295843 (= e!830916 (and tp!377413 tp!377411))))

(assert (= (and b!1294359 ((_ is ElementMatch!3543) (regTwo!7598 (regTwo!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295842))

(assert (= (and b!1294359 ((_ is Concat!5863) (regTwo!7598 (regTwo!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295843))

(assert (= (and b!1294359 ((_ is Star!3543) (regTwo!7598 (regTwo!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295844))

(assert (= (and b!1294359 ((_ is Union!3543) (regTwo!7598 (regTwo!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295845))

(declare-fun b!1295849 () Bool)

(declare-fun e!830917 () Bool)

(declare-fun tp!377417 () Bool)

(declare-fun tp!377420 () Bool)

(assert (=> b!1295849 (= e!830917 (and tp!377417 tp!377420))))

(declare-fun b!1295846 () Bool)

(assert (=> b!1295846 (= e!830917 tp_is_empty!6579)))

(assert (=> b!1294395 (= tp!377357 e!830917)))

(declare-fun b!1295848 () Bool)

(declare-fun tp!377419 () Bool)

(assert (=> b!1295848 (= e!830917 tp!377419)))

(declare-fun b!1295847 () Bool)

(declare-fun tp!377418 () Bool)

(declare-fun tp!377416 () Bool)

(assert (=> b!1295847 (= e!830917 (and tp!377418 tp!377416))))

(assert (= (and b!1294395 ((_ is ElementMatch!3543) (regOne!7599 (regTwo!7599 (regex!2229 (rule!3968 t2!34)))))) b!1295846))

(assert (= (and b!1294395 ((_ is Concat!5863) (regOne!7599 (regTwo!7599 (regex!2229 (rule!3968 t2!34)))))) b!1295847))

(assert (= (and b!1294395 ((_ is Star!3543) (regOne!7599 (regTwo!7599 (regex!2229 (rule!3968 t2!34)))))) b!1295848))

(assert (= (and b!1294395 ((_ is Union!3543) (regOne!7599 (regTwo!7599 (regex!2229 (rule!3968 t2!34)))))) b!1295849))

(declare-fun b!1295853 () Bool)

(declare-fun e!830918 () Bool)

(declare-fun tp!377422 () Bool)

(declare-fun tp!377425 () Bool)

(assert (=> b!1295853 (= e!830918 (and tp!377422 tp!377425))))

(declare-fun b!1295850 () Bool)

(assert (=> b!1295850 (= e!830918 tp_is_empty!6579)))

(assert (=> b!1294395 (= tp!377360 e!830918)))

(declare-fun b!1295852 () Bool)

(declare-fun tp!377424 () Bool)

(assert (=> b!1295852 (= e!830918 tp!377424)))

(declare-fun b!1295851 () Bool)

(declare-fun tp!377423 () Bool)

(declare-fun tp!377421 () Bool)

(assert (=> b!1295851 (= e!830918 (and tp!377423 tp!377421))))

(assert (= (and b!1294395 ((_ is ElementMatch!3543) (regTwo!7599 (regTwo!7599 (regex!2229 (rule!3968 t2!34)))))) b!1295850))

(assert (= (and b!1294395 ((_ is Concat!5863) (regTwo!7599 (regTwo!7599 (regex!2229 (rule!3968 t2!34)))))) b!1295851))

(assert (= (and b!1294395 ((_ is Star!3543) (regTwo!7599 (regTwo!7599 (regex!2229 (rule!3968 t2!34)))))) b!1295852))

(assert (= (and b!1294395 ((_ is Union!3543) (regTwo!7599 (regTwo!7599 (regex!2229 (rule!3968 t2!34)))))) b!1295853))

(declare-fun b!1295857 () Bool)

(declare-fun e!830919 () Bool)

(declare-fun tp!377427 () Bool)

(declare-fun tp!377430 () Bool)

(assert (=> b!1295857 (= e!830919 (and tp!377427 tp!377430))))

(declare-fun b!1295854 () Bool)

(assert (=> b!1295854 (= e!830919 tp_is_empty!6579)))

(assert (=> b!1294386 (= tp!377349 e!830919)))

(declare-fun b!1295856 () Bool)

(declare-fun tp!377429 () Bool)

(assert (=> b!1295856 (= e!830919 tp!377429)))

(declare-fun b!1295855 () Bool)

(declare-fun tp!377428 () Bool)

(declare-fun tp!377426 () Bool)

(assert (=> b!1295855 (= e!830919 (and tp!377428 tp!377426))))

(assert (= (and b!1294386 ((_ is ElementMatch!3543) (reg!3872 (reg!3872 (regex!2229 (rule!3968 t1!34)))))) b!1295854))

(assert (= (and b!1294386 ((_ is Concat!5863) (reg!3872 (reg!3872 (regex!2229 (rule!3968 t1!34)))))) b!1295855))

(assert (= (and b!1294386 ((_ is Star!3543) (reg!3872 (reg!3872 (regex!2229 (rule!3968 t1!34)))))) b!1295856))

(assert (= (and b!1294386 ((_ is Union!3543) (reg!3872 (reg!3872 (regex!2229 (rule!3968 t1!34)))))) b!1295857))

(declare-fun b!1295861 () Bool)

(declare-fun e!830920 () Bool)

(declare-fun tp!377432 () Bool)

(declare-fun tp!377435 () Bool)

(assert (=> b!1295861 (= e!830920 (and tp!377432 tp!377435))))

(declare-fun b!1295858 () Bool)

(assert (=> b!1295858 (= e!830920 tp_is_empty!6579)))

(assert (=> b!1294361 (= tp!377319 e!830920)))

(declare-fun b!1295860 () Bool)

(declare-fun tp!377434 () Bool)

(assert (=> b!1295860 (= e!830920 tp!377434)))

(declare-fun b!1295859 () Bool)

(declare-fun tp!377433 () Bool)

(declare-fun tp!377431 () Bool)

(assert (=> b!1295859 (= e!830920 (and tp!377433 tp!377431))))

(assert (= (and b!1294361 ((_ is ElementMatch!3543) (regOne!7599 (regTwo!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295858))

(assert (= (and b!1294361 ((_ is Concat!5863) (regOne!7599 (regTwo!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295859))

(assert (= (and b!1294361 ((_ is Star!3543) (regOne!7599 (regTwo!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295860))

(assert (= (and b!1294361 ((_ is Union!3543) (regOne!7599 (regTwo!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295861))

(declare-fun b!1295865 () Bool)

(declare-fun e!830921 () Bool)

(declare-fun tp!377437 () Bool)

(declare-fun tp!377440 () Bool)

(assert (=> b!1295865 (= e!830921 (and tp!377437 tp!377440))))

(declare-fun b!1295862 () Bool)

(assert (=> b!1295862 (= e!830921 tp_is_empty!6579)))

(assert (=> b!1294361 (= tp!377322 e!830921)))

(declare-fun b!1295864 () Bool)

(declare-fun tp!377439 () Bool)

(assert (=> b!1295864 (= e!830921 tp!377439)))

(declare-fun b!1295863 () Bool)

(declare-fun tp!377438 () Bool)

(declare-fun tp!377436 () Bool)

(assert (=> b!1295863 (= e!830921 (and tp!377438 tp!377436))))

(assert (= (and b!1294361 ((_ is ElementMatch!3543) (regTwo!7599 (regTwo!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295862))

(assert (= (and b!1294361 ((_ is Concat!5863) (regTwo!7599 (regTwo!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295863))

(assert (= (and b!1294361 ((_ is Star!3543) (regTwo!7599 (regTwo!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295864))

(assert (= (and b!1294361 ((_ is Union!3543) (regTwo!7599 (regTwo!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295865))

(declare-fun b!1295876 () Bool)

(declare-fun e!830926 () Bool)

(declare-fun tp!377442 () Bool)

(declare-fun tp!377445 () Bool)

(assert (=> b!1295876 (= e!830926 (and tp!377442 tp!377445))))

(declare-fun b!1295873 () Bool)

(assert (=> b!1295873 (= e!830926 tp_is_empty!6579)))

(assert (=> b!1294352 (= tp!377311 e!830926)))

(declare-fun b!1295875 () Bool)

(declare-fun tp!377444 () Bool)

(assert (=> b!1295875 (= e!830926 tp!377444)))

(declare-fun b!1295874 () Bool)

(declare-fun tp!377443 () Bool)

(declare-fun tp!377441 () Bool)

(assert (=> b!1295874 (= e!830926 (and tp!377443 tp!377441))))

(assert (= (and b!1294352 ((_ is ElementMatch!3543) (reg!3872 (regTwo!7598 (regex!2229 (rule!3968 t1!34)))))) b!1295873))

(assert (= (and b!1294352 ((_ is Concat!5863) (reg!3872 (regTwo!7598 (regex!2229 (rule!3968 t1!34)))))) b!1295874))

(assert (= (and b!1294352 ((_ is Star!3543) (reg!3872 (regTwo!7598 (regex!2229 (rule!3968 t1!34)))))) b!1295875))

(assert (= (and b!1294352 ((_ is Union!3543) (reg!3872 (regTwo!7598 (regex!2229 (rule!3968 t1!34)))))) b!1295876))

(declare-fun b!1295877 () Bool)

(declare-fun e!830927 () Bool)

(declare-fun tp!377446 () Bool)

(assert (=> b!1295877 (= e!830927 (and tp_is_empty!6579 tp!377446))))

(assert (=> b!1294404 (= tp!377371 e!830927)))

(assert (= (and b!1294404 ((_ is Cons!12940) (t!117315 (t!117315 (originalCharacters!3091 t1!34))))) b!1295877))

(declare-fun b!1295881 () Bool)

(declare-fun e!830928 () Bool)

(declare-fun tp!377448 () Bool)

(declare-fun tp!377451 () Bool)

(assert (=> b!1295881 (= e!830928 (and tp!377448 tp!377451))))

(declare-fun b!1295878 () Bool)

(assert (=> b!1295878 (= e!830928 tp_is_empty!6579)))

(assert (=> b!1294343 (= tp!377300 e!830928)))

(declare-fun b!1295880 () Bool)

(declare-fun tp!377450 () Bool)

(assert (=> b!1295880 (= e!830928 tp!377450)))

(declare-fun b!1295879 () Bool)

(declare-fun tp!377449 () Bool)

(declare-fun tp!377447 () Bool)

(assert (=> b!1295879 (= e!830928 (and tp!377449 tp!377447))))

(assert (= (and b!1294343 ((_ is ElementMatch!3543) (regOne!7598 (regex!2229 (h!18343 (t!117317 rules!2550)))))) b!1295878))

(assert (= (and b!1294343 ((_ is Concat!5863) (regOne!7598 (regex!2229 (h!18343 (t!117317 rules!2550)))))) b!1295879))

(assert (= (and b!1294343 ((_ is Star!3543) (regOne!7598 (regex!2229 (h!18343 (t!117317 rules!2550)))))) b!1295880))

(assert (= (and b!1294343 ((_ is Union!3543) (regOne!7598 (regex!2229 (h!18343 (t!117317 rules!2550)))))) b!1295881))

(declare-fun b!1295885 () Bool)

(declare-fun e!830929 () Bool)

(declare-fun tp!377453 () Bool)

(declare-fun tp!377456 () Bool)

(assert (=> b!1295885 (= e!830929 (and tp!377453 tp!377456))))

(declare-fun b!1295882 () Bool)

(assert (=> b!1295882 (= e!830929 tp_is_empty!6579)))

(assert (=> b!1294343 (= tp!377298 e!830929)))

(declare-fun b!1295884 () Bool)

(declare-fun tp!377455 () Bool)

(assert (=> b!1295884 (= e!830929 tp!377455)))

(declare-fun b!1295883 () Bool)

(declare-fun tp!377454 () Bool)

(declare-fun tp!377452 () Bool)

(assert (=> b!1295883 (= e!830929 (and tp!377454 tp!377452))))

(assert (= (and b!1294343 ((_ is ElementMatch!3543) (regTwo!7598 (regex!2229 (h!18343 (t!117317 rules!2550)))))) b!1295882))

(assert (= (and b!1294343 ((_ is Concat!5863) (regTwo!7598 (regex!2229 (h!18343 (t!117317 rules!2550)))))) b!1295883))

(assert (= (and b!1294343 ((_ is Star!3543) (regTwo!7598 (regex!2229 (h!18343 (t!117317 rules!2550)))))) b!1295884))

(assert (= (and b!1294343 ((_ is Union!3543) (regTwo!7598 (regex!2229 (h!18343 (t!117317 rules!2550)))))) b!1295885))

(declare-fun b!1295889 () Bool)

(declare-fun e!830930 () Bool)

(declare-fun tp!377458 () Bool)

(declare-fun tp!377461 () Bool)

(assert (=> b!1295889 (= e!830930 (and tp!377458 tp!377461))))

(declare-fun b!1295886 () Bool)

(assert (=> b!1295886 (= e!830930 tp_is_empty!6579)))

(assert (=> b!1294379 (= tp!377337 e!830930)))

(declare-fun b!1295888 () Bool)

(declare-fun tp!377460 () Bool)

(assert (=> b!1295888 (= e!830930 tp!377460)))

(declare-fun b!1295887 () Bool)

(declare-fun tp!377459 () Bool)

(declare-fun tp!377457 () Bool)

(assert (=> b!1295887 (= e!830930 (and tp!377459 tp!377457))))

(assert (= (and b!1294379 ((_ is ElementMatch!3543) (regOne!7599 (regOne!7599 (regex!2229 (rule!3968 t1!34)))))) b!1295886))

(assert (= (and b!1294379 ((_ is Concat!5863) (regOne!7599 (regOne!7599 (regex!2229 (rule!3968 t1!34)))))) b!1295887))

(assert (= (and b!1294379 ((_ is Star!3543) (regOne!7599 (regOne!7599 (regex!2229 (rule!3968 t1!34)))))) b!1295888))

(assert (= (and b!1294379 ((_ is Union!3543) (regOne!7599 (regOne!7599 (regex!2229 (rule!3968 t1!34)))))) b!1295889))

(declare-fun b!1295893 () Bool)

(declare-fun e!830931 () Bool)

(declare-fun tp!377463 () Bool)

(declare-fun tp!377466 () Bool)

(assert (=> b!1295893 (= e!830931 (and tp!377463 tp!377466))))

(declare-fun b!1295890 () Bool)

(assert (=> b!1295890 (= e!830931 tp_is_empty!6579)))

(assert (=> b!1294379 (= tp!377340 e!830931)))

(declare-fun b!1295892 () Bool)

(declare-fun tp!377465 () Bool)

(assert (=> b!1295892 (= e!830931 tp!377465)))

(declare-fun b!1295891 () Bool)

(declare-fun tp!377464 () Bool)

(declare-fun tp!377462 () Bool)

(assert (=> b!1295891 (= e!830931 (and tp!377464 tp!377462))))

(assert (= (and b!1294379 ((_ is ElementMatch!3543) (regTwo!7599 (regOne!7599 (regex!2229 (rule!3968 t1!34)))))) b!1295890))

(assert (= (and b!1294379 ((_ is Concat!5863) (regTwo!7599 (regOne!7599 (regex!2229 (rule!3968 t1!34)))))) b!1295891))

(assert (= (and b!1294379 ((_ is Star!3543) (regTwo!7599 (regOne!7599 (regex!2229 (rule!3968 t1!34)))))) b!1295892))

(assert (= (and b!1294379 ((_ is Union!3543) (regTwo!7599 (regOne!7599 (regex!2229 (rule!3968 t1!34)))))) b!1295893))

(declare-fun b!1295897 () Bool)

(declare-fun e!830932 () Bool)

(declare-fun tp!377468 () Bool)

(declare-fun tp!377471 () Bool)

(assert (=> b!1295897 (= e!830932 (and tp!377468 tp!377471))))

(declare-fun b!1295894 () Bool)

(assert (=> b!1295894 (= e!830932 tp_is_empty!6579)))

(assert (=> b!1294345 (= tp!377299 e!830932)))

(declare-fun b!1295896 () Bool)

(declare-fun tp!377470 () Bool)

(assert (=> b!1295896 (= e!830932 tp!377470)))

(declare-fun b!1295895 () Bool)

(declare-fun tp!377469 () Bool)

(declare-fun tp!377467 () Bool)

(assert (=> b!1295895 (= e!830932 (and tp!377469 tp!377467))))

(assert (= (and b!1294345 ((_ is ElementMatch!3543) (regOne!7599 (regex!2229 (h!18343 (t!117317 rules!2550)))))) b!1295894))

(assert (= (and b!1294345 ((_ is Concat!5863) (regOne!7599 (regex!2229 (h!18343 (t!117317 rules!2550)))))) b!1295895))

(assert (= (and b!1294345 ((_ is Star!3543) (regOne!7599 (regex!2229 (h!18343 (t!117317 rules!2550)))))) b!1295896))

(assert (= (and b!1294345 ((_ is Union!3543) (regOne!7599 (regex!2229 (h!18343 (t!117317 rules!2550)))))) b!1295897))

(declare-fun b!1295901 () Bool)

(declare-fun e!830933 () Bool)

(declare-fun tp!377473 () Bool)

(declare-fun tp!377476 () Bool)

(assert (=> b!1295901 (= e!830933 (and tp!377473 tp!377476))))

(declare-fun b!1295898 () Bool)

(assert (=> b!1295898 (= e!830933 tp_is_empty!6579)))

(assert (=> b!1294345 (= tp!377302 e!830933)))

(declare-fun b!1295900 () Bool)

(declare-fun tp!377475 () Bool)

(assert (=> b!1295900 (= e!830933 tp!377475)))

(declare-fun b!1295899 () Bool)

(declare-fun tp!377474 () Bool)

(declare-fun tp!377472 () Bool)

(assert (=> b!1295899 (= e!830933 (and tp!377474 tp!377472))))

(assert (= (and b!1294345 ((_ is ElementMatch!3543) (regTwo!7599 (regex!2229 (h!18343 (t!117317 rules!2550)))))) b!1295898))

(assert (= (and b!1294345 ((_ is Concat!5863) (regTwo!7599 (regex!2229 (h!18343 (t!117317 rules!2550)))))) b!1295899))

(assert (= (and b!1294345 ((_ is Star!3543) (regTwo!7599 (regex!2229 (h!18343 (t!117317 rules!2550)))))) b!1295900))

(assert (= (and b!1294345 ((_ is Union!3543) (regTwo!7599 (regex!2229 (h!18343 (t!117317 rules!2550)))))) b!1295901))

(declare-fun b!1295905 () Bool)

(declare-fun e!830934 () Bool)

(declare-fun tp!377478 () Bool)

(declare-fun tp!377481 () Bool)

(assert (=> b!1295905 (= e!830934 (and tp!377478 tp!377481))))

(declare-fun b!1295902 () Bool)

(assert (=> b!1295902 (= e!830934 tp_is_empty!6579)))

(assert (=> b!1294410 (= tp!377378 e!830934)))

(declare-fun b!1295904 () Bool)

(declare-fun tp!377480 () Bool)

(assert (=> b!1295904 (= e!830934 tp!377480)))

(declare-fun b!1295903 () Bool)

(declare-fun tp!377479 () Bool)

(declare-fun tp!377477 () Bool)

(assert (=> b!1295903 (= e!830934 (and tp!377479 tp!377477))))

(assert (= (and b!1294410 ((_ is ElementMatch!3543) (regOne!7598 (regOne!7599 (regex!2229 (h!18343 rules!2550)))))) b!1295902))

(assert (= (and b!1294410 ((_ is Concat!5863) (regOne!7598 (regOne!7599 (regex!2229 (h!18343 rules!2550)))))) b!1295903))

(assert (= (and b!1294410 ((_ is Star!3543) (regOne!7598 (regOne!7599 (regex!2229 (h!18343 rules!2550)))))) b!1295904))

(assert (= (and b!1294410 ((_ is Union!3543) (regOne!7598 (regOne!7599 (regex!2229 (h!18343 rules!2550)))))) b!1295905))

(declare-fun b!1295909 () Bool)

(declare-fun e!830935 () Bool)

(declare-fun tp!377483 () Bool)

(declare-fun tp!377486 () Bool)

(assert (=> b!1295909 (= e!830935 (and tp!377483 tp!377486))))

(declare-fun b!1295906 () Bool)

(assert (=> b!1295906 (= e!830935 tp_is_empty!6579)))

(assert (=> b!1294410 (= tp!377376 e!830935)))

(declare-fun b!1295908 () Bool)

(declare-fun tp!377485 () Bool)

(assert (=> b!1295908 (= e!830935 tp!377485)))

(declare-fun b!1295907 () Bool)

(declare-fun tp!377484 () Bool)

(declare-fun tp!377482 () Bool)

(assert (=> b!1295907 (= e!830935 (and tp!377484 tp!377482))))

(assert (= (and b!1294410 ((_ is ElementMatch!3543) (regTwo!7598 (regOne!7599 (regex!2229 (h!18343 rules!2550)))))) b!1295906))

(assert (= (and b!1294410 ((_ is Concat!5863) (regTwo!7598 (regOne!7599 (regex!2229 (h!18343 rules!2550)))))) b!1295907))

(assert (= (and b!1294410 ((_ is Star!3543) (regTwo!7598 (regOne!7599 (regex!2229 (h!18343 rules!2550)))))) b!1295908))

(assert (= (and b!1294410 ((_ is Union!3543) (regTwo!7598 (regOne!7599 (regex!2229 (h!18343 rules!2550)))))) b!1295909))

(declare-fun b!1295913 () Bool)

(declare-fun e!830936 () Bool)

(declare-fun tp!377488 () Bool)

(declare-fun tp!377491 () Bool)

(assert (=> b!1295913 (= e!830936 (and tp!377488 tp!377491))))

(declare-fun b!1295910 () Bool)

(assert (=> b!1295910 (= e!830936 tp_is_empty!6579)))

(assert (=> b!1294374 (= tp!377332 e!830936)))

(declare-fun b!1295912 () Bool)

(declare-fun tp!377490 () Bool)

(assert (=> b!1295912 (= e!830936 tp!377490)))

(declare-fun b!1295911 () Bool)

(declare-fun tp!377489 () Bool)

(declare-fun tp!377487 () Bool)

(assert (=> b!1295911 (= e!830936 (and tp!377489 tp!377487))))

(assert (= (and b!1294374 ((_ is ElementMatch!3543) (regex!2229 (h!18343 (t!117317 (t!117317 rules!2550)))))) b!1295910))

(assert (= (and b!1294374 ((_ is Concat!5863) (regex!2229 (h!18343 (t!117317 (t!117317 rules!2550)))))) b!1295911))

(assert (= (and b!1294374 ((_ is Star!3543) (regex!2229 (h!18343 (t!117317 (t!117317 rules!2550)))))) b!1295912))

(assert (= (and b!1294374 ((_ is Union!3543) (regex!2229 (h!18343 (t!117317 (t!117317 rules!2550)))))) b!1295913))

(declare-fun tp!377493 () Bool)

(declare-fun b!1295914 () Bool)

(declare-fun tp!377494 () Bool)

(declare-fun e!830937 () Bool)

(assert (=> b!1295914 (= e!830937 (and (inv!17368 (left!11131 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))) tp!377494 (inv!17368 (right!11461 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))) tp!377493))))

(declare-fun b!1295916 () Bool)

(declare-fun e!830938 () Bool)

(declare-fun tp!377492 () Bool)

(assert (=> b!1295916 (= e!830938 tp!377492)))

(declare-fun b!1295915 () Bool)

(assert (=> b!1295915 (= e!830937 (and (inv!17375 (xs!6962 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))) e!830938))))

(assert (=> b!1294405 (= tp!377374 (and (inv!17368 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))) e!830937))))

(assert (= (and b!1294405 ((_ is Node!4251) (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))) b!1295914))

(assert (= b!1295915 b!1295916))

(assert (= (and b!1294405 ((_ is Leaf!6562) (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))) b!1295915))

(declare-fun m!1447721 () Bool)

(assert (=> b!1295914 m!1447721))

(declare-fun m!1447723 () Bool)

(assert (=> b!1295914 m!1447723))

(declare-fun m!1447725 () Bool)

(assert (=> b!1295915 m!1447725))

(assert (=> b!1294405 m!1445457))

(declare-fun b!1295917 () Bool)

(declare-fun tp!377497 () Bool)

(declare-fun tp!377496 () Bool)

(declare-fun e!830939 () Bool)

(assert (=> b!1295917 (= e!830939 (and (inv!17368 (left!11131 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))) tp!377497 (inv!17368 (right!11461 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))) tp!377496))))

(declare-fun b!1295919 () Bool)

(declare-fun e!830940 () Bool)

(declare-fun tp!377495 () Bool)

(assert (=> b!1295919 (= e!830940 tp!377495)))

(declare-fun b!1295918 () Bool)

(assert (=> b!1295918 (= e!830939 (and (inv!17375 (xs!6962 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))) e!830940))))

(assert (=> b!1294405 (= tp!377373 (and (inv!17368 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))) e!830939))))

(assert (= (and b!1294405 ((_ is Node!4251) (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))) b!1295917))

(assert (= b!1295918 b!1295919))

(assert (= (and b!1294405 ((_ is Leaf!6562) (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34)))))) b!1295918))

(declare-fun m!1447739 () Bool)

(assert (=> b!1295917 m!1447739))

(declare-fun m!1447743 () Bool)

(assert (=> b!1295917 m!1447743))

(declare-fun m!1447747 () Bool)

(assert (=> b!1295918 m!1447747))

(assert (=> b!1294405 m!1445459))

(declare-fun b!1295923 () Bool)

(declare-fun e!830941 () Bool)

(declare-fun tp!377499 () Bool)

(declare-fun tp!377502 () Bool)

(assert (=> b!1295923 (= e!830941 (and tp!377499 tp!377502))))

(declare-fun b!1295920 () Bool)

(assert (=> b!1295920 (= e!830941 tp_is_empty!6579)))

(assert (=> b!1294412 (= tp!377377 e!830941)))

(declare-fun b!1295922 () Bool)

(declare-fun tp!377501 () Bool)

(assert (=> b!1295922 (= e!830941 tp!377501)))

(declare-fun b!1295921 () Bool)

(declare-fun tp!377500 () Bool)

(declare-fun tp!377498 () Bool)

(assert (=> b!1295921 (= e!830941 (and tp!377500 tp!377498))))

(assert (= (and b!1294412 ((_ is ElementMatch!3543) (regOne!7599 (regOne!7599 (regex!2229 (h!18343 rules!2550)))))) b!1295920))

(assert (= (and b!1294412 ((_ is Concat!5863) (regOne!7599 (regOne!7599 (regex!2229 (h!18343 rules!2550)))))) b!1295921))

(assert (= (and b!1294412 ((_ is Star!3543) (regOne!7599 (regOne!7599 (regex!2229 (h!18343 rules!2550)))))) b!1295922))

(assert (= (and b!1294412 ((_ is Union!3543) (regOne!7599 (regOne!7599 (regex!2229 (h!18343 rules!2550)))))) b!1295923))

(declare-fun b!1295927 () Bool)

(declare-fun e!830942 () Bool)

(declare-fun tp!377504 () Bool)

(declare-fun tp!377507 () Bool)

(assert (=> b!1295927 (= e!830942 (and tp!377504 tp!377507))))

(declare-fun b!1295924 () Bool)

(assert (=> b!1295924 (= e!830942 tp_is_empty!6579)))

(assert (=> b!1294412 (= tp!377380 e!830942)))

(declare-fun b!1295926 () Bool)

(declare-fun tp!377506 () Bool)

(assert (=> b!1295926 (= e!830942 tp!377506)))

(declare-fun b!1295925 () Bool)

(declare-fun tp!377505 () Bool)

(declare-fun tp!377503 () Bool)

(assert (=> b!1295925 (= e!830942 (and tp!377505 tp!377503))))

(assert (= (and b!1294412 ((_ is ElementMatch!3543) (regTwo!7599 (regOne!7599 (regex!2229 (h!18343 rules!2550)))))) b!1295924))

(assert (= (and b!1294412 ((_ is Concat!5863) (regTwo!7599 (regOne!7599 (regex!2229 (h!18343 rules!2550)))))) b!1295925))

(assert (= (and b!1294412 ((_ is Star!3543) (regTwo!7599 (regOne!7599 (regex!2229 (h!18343 rules!2550)))))) b!1295926))

(assert (= (and b!1294412 ((_ is Union!3543) (regTwo!7599 (regOne!7599 (regex!2229 (h!18343 rules!2550)))))) b!1295927))

(declare-fun b!1295931 () Bool)

(declare-fun e!830943 () Bool)

(declare-fun tp!377509 () Bool)

(declare-fun tp!377512 () Bool)

(assert (=> b!1295931 (= e!830943 (and tp!377509 tp!377512))))

(declare-fun b!1295928 () Bool)

(assert (=> b!1295928 (= e!830943 tp_is_empty!6579)))

(assert (=> b!1294397 (= tp!377363 e!830943)))

(declare-fun b!1295930 () Bool)

(declare-fun tp!377511 () Bool)

(assert (=> b!1295930 (= e!830943 tp!377511)))

(declare-fun b!1295929 () Bool)

(declare-fun tp!377510 () Bool)

(declare-fun tp!377508 () Bool)

(assert (=> b!1295929 (= e!830943 (and tp!377510 tp!377508))))

(assert (= (and b!1294397 ((_ is ElementMatch!3543) (regOne!7598 (regOne!7598 (regex!2229 (h!18343 rules!2550)))))) b!1295928))

(assert (= (and b!1294397 ((_ is Concat!5863) (regOne!7598 (regOne!7598 (regex!2229 (h!18343 rules!2550)))))) b!1295929))

(assert (= (and b!1294397 ((_ is Star!3543) (regOne!7598 (regOne!7598 (regex!2229 (h!18343 rules!2550)))))) b!1295930))

(assert (= (and b!1294397 ((_ is Union!3543) (regOne!7598 (regOne!7598 (regex!2229 (h!18343 rules!2550)))))) b!1295931))

(declare-fun b!1295935 () Bool)

(declare-fun e!830944 () Bool)

(declare-fun tp!377514 () Bool)

(declare-fun tp!377517 () Bool)

(assert (=> b!1295935 (= e!830944 (and tp!377514 tp!377517))))

(declare-fun b!1295932 () Bool)

(assert (=> b!1295932 (= e!830944 tp_is_empty!6579)))

(assert (=> b!1294397 (= tp!377361 e!830944)))

(declare-fun b!1295934 () Bool)

(declare-fun tp!377516 () Bool)

(assert (=> b!1295934 (= e!830944 tp!377516)))

(declare-fun b!1295933 () Bool)

(declare-fun tp!377515 () Bool)

(declare-fun tp!377513 () Bool)

(assert (=> b!1295933 (= e!830944 (and tp!377515 tp!377513))))

(assert (= (and b!1294397 ((_ is ElementMatch!3543) (regTwo!7598 (regOne!7598 (regex!2229 (h!18343 rules!2550)))))) b!1295932))

(assert (= (and b!1294397 ((_ is Concat!5863) (regTwo!7598 (regOne!7598 (regex!2229 (h!18343 rules!2550)))))) b!1295933))

(assert (= (and b!1294397 ((_ is Star!3543) (regTwo!7598 (regOne!7598 (regex!2229 (h!18343 rules!2550)))))) b!1295934))

(assert (= (and b!1294397 ((_ is Union!3543) (regTwo!7598 (regOne!7598 (regex!2229 (h!18343 rules!2550)))))) b!1295935))

(declare-fun b!1295939 () Bool)

(declare-fun e!830945 () Bool)

(declare-fun tp!377519 () Bool)

(declare-fun tp!377522 () Bool)

(assert (=> b!1295939 (= e!830945 (and tp!377519 tp!377522))))

(declare-fun b!1295936 () Bool)

(assert (=> b!1295936 (= e!830945 tp_is_empty!6579)))

(assert (=> b!1294419 (= tp!377389 e!830945)))

(declare-fun b!1295938 () Bool)

(declare-fun tp!377521 () Bool)

(assert (=> b!1295938 (= e!830945 tp!377521)))

(declare-fun b!1295937 () Bool)

(declare-fun tp!377520 () Bool)

(declare-fun tp!377518 () Bool)

(assert (=> b!1295937 (= e!830945 (and tp!377520 tp!377518))))

(assert (= (and b!1294419 ((_ is ElementMatch!3543) (reg!3872 (reg!3872 (regex!2229 (h!18343 rules!2550)))))) b!1295936))

(assert (= (and b!1294419 ((_ is Concat!5863) (reg!3872 (reg!3872 (regex!2229 (h!18343 rules!2550)))))) b!1295937))

(assert (= (and b!1294419 ((_ is Star!3543) (reg!3872 (reg!3872 (regex!2229 (h!18343 rules!2550)))))) b!1295938))

(assert (= (and b!1294419 ((_ is Union!3543) (reg!3872 (reg!3872 (regex!2229 (h!18343 rules!2550)))))) b!1295939))

(declare-fun b!1295943 () Bool)

(declare-fun e!830946 () Bool)

(declare-fun tp!377524 () Bool)

(declare-fun tp!377527 () Bool)

(assert (=> b!1295943 (= e!830946 (and tp!377524 tp!377527))))

(declare-fun b!1295940 () Bool)

(assert (=> b!1295940 (= e!830946 tp_is_empty!6579)))

(assert (=> b!1294389 (= tp!377353 e!830946)))

(declare-fun b!1295942 () Bool)

(declare-fun tp!377526 () Bool)

(assert (=> b!1295942 (= e!830946 tp!377526)))

(declare-fun b!1295941 () Bool)

(declare-fun tp!377525 () Bool)

(declare-fun tp!377523 () Bool)

(assert (=> b!1295941 (= e!830946 (and tp!377525 tp!377523))))

(assert (= (and b!1294389 ((_ is ElementMatch!3543) (regOne!7598 (regOne!7599 (regex!2229 (rule!3968 t2!34)))))) b!1295940))

(assert (= (and b!1294389 ((_ is Concat!5863) (regOne!7598 (regOne!7599 (regex!2229 (rule!3968 t2!34)))))) b!1295941))

(assert (= (and b!1294389 ((_ is Star!3543) (regOne!7598 (regOne!7599 (regex!2229 (rule!3968 t2!34)))))) b!1295942))

(assert (= (and b!1294389 ((_ is Union!3543) (regOne!7598 (regOne!7599 (regex!2229 (rule!3968 t2!34)))))) b!1295943))

(declare-fun b!1295947 () Bool)

(declare-fun e!830947 () Bool)

(declare-fun tp!377529 () Bool)

(declare-fun tp!377532 () Bool)

(assert (=> b!1295947 (= e!830947 (and tp!377529 tp!377532))))

(declare-fun b!1295944 () Bool)

(assert (=> b!1295944 (= e!830947 tp_is_empty!6579)))

(assert (=> b!1294389 (= tp!377351 e!830947)))

(declare-fun b!1295946 () Bool)

(declare-fun tp!377531 () Bool)

(assert (=> b!1295946 (= e!830947 tp!377531)))

(declare-fun b!1295945 () Bool)

(declare-fun tp!377530 () Bool)

(declare-fun tp!377528 () Bool)

(assert (=> b!1295945 (= e!830947 (and tp!377530 tp!377528))))

(assert (= (and b!1294389 ((_ is ElementMatch!3543) (regTwo!7598 (regOne!7599 (regex!2229 (rule!3968 t2!34)))))) b!1295944))

(assert (= (and b!1294389 ((_ is Concat!5863) (regTwo!7598 (regOne!7599 (regex!2229 (rule!3968 t2!34)))))) b!1295945))

(assert (= (and b!1294389 ((_ is Star!3543) (regTwo!7598 (regOne!7599 (regex!2229 (rule!3968 t2!34)))))) b!1295946))

(assert (= (and b!1294389 ((_ is Union!3543) (regTwo!7598 (regOne!7599 (regex!2229 (rule!3968 t2!34)))))) b!1295947))

(declare-fun b!1295951 () Bool)

(declare-fun e!830948 () Bool)

(declare-fun tp!377534 () Bool)

(declare-fun tp!377537 () Bool)

(assert (=> b!1295951 (= e!830948 (and tp!377534 tp!377537))))

(declare-fun b!1295948 () Bool)

(assert (=> b!1295948 (= e!830948 tp_is_empty!6579)))

(assert (=> b!1294420 (= tp!377387 e!830948)))

(declare-fun b!1295950 () Bool)

(declare-fun tp!377536 () Bool)

(assert (=> b!1295950 (= e!830948 tp!377536)))

(declare-fun b!1295949 () Bool)

(declare-fun tp!377535 () Bool)

(declare-fun tp!377533 () Bool)

(assert (=> b!1295949 (= e!830948 (and tp!377535 tp!377533))))

(assert (= (and b!1294420 ((_ is ElementMatch!3543) (regOne!7599 (reg!3872 (regex!2229 (h!18343 rules!2550)))))) b!1295948))

(assert (= (and b!1294420 ((_ is Concat!5863) (regOne!7599 (reg!3872 (regex!2229 (h!18343 rules!2550)))))) b!1295949))

(assert (= (and b!1294420 ((_ is Star!3543) (regOne!7599 (reg!3872 (regex!2229 (h!18343 rules!2550)))))) b!1295950))

(assert (= (and b!1294420 ((_ is Union!3543) (regOne!7599 (reg!3872 (regex!2229 (h!18343 rules!2550)))))) b!1295951))

(declare-fun b!1295955 () Bool)

(declare-fun e!830949 () Bool)

(declare-fun tp!377539 () Bool)

(declare-fun tp!377542 () Bool)

(assert (=> b!1295955 (= e!830949 (and tp!377539 tp!377542))))

(declare-fun b!1295952 () Bool)

(assert (=> b!1295952 (= e!830949 tp_is_empty!6579)))

(assert (=> b!1294420 (= tp!377390 e!830949)))

(declare-fun b!1295954 () Bool)

(declare-fun tp!377541 () Bool)

(assert (=> b!1295954 (= e!830949 tp!377541)))

(declare-fun b!1295953 () Bool)

(declare-fun tp!377540 () Bool)

(declare-fun tp!377538 () Bool)

(assert (=> b!1295953 (= e!830949 (and tp!377540 tp!377538))))

(assert (= (and b!1294420 ((_ is ElementMatch!3543) (regTwo!7599 (reg!3872 (regex!2229 (h!18343 rules!2550)))))) b!1295952))

(assert (= (and b!1294420 ((_ is Concat!5863) (regTwo!7599 (reg!3872 (regex!2229 (h!18343 rules!2550)))))) b!1295953))

(assert (= (and b!1294420 ((_ is Star!3543) (regTwo!7599 (reg!3872 (regex!2229 (h!18343 rules!2550)))))) b!1295954))

(assert (= (and b!1294420 ((_ is Union!3543) (regTwo!7599 (reg!3872 (regex!2229 (h!18343 rules!2550)))))) b!1295955))

(declare-fun b!1295959 () Bool)

(declare-fun e!830950 () Bool)

(declare-fun tp!377544 () Bool)

(declare-fun tp!377547 () Bool)

(assert (=> b!1295959 (= e!830950 (and tp!377544 tp!377547))))

(declare-fun b!1295956 () Bool)

(assert (=> b!1295956 (= e!830950 tp_is_empty!6579)))

(assert (=> b!1294355 (= tp!377315 e!830950)))

(declare-fun b!1295958 () Bool)

(declare-fun tp!377546 () Bool)

(assert (=> b!1295958 (= e!830950 tp!377546)))

(declare-fun b!1295957 () Bool)

(declare-fun tp!377545 () Bool)

(declare-fun tp!377543 () Bool)

(assert (=> b!1295957 (= e!830950 (and tp!377545 tp!377543))))

(assert (= (and b!1294355 ((_ is ElementMatch!3543) (regOne!7598 (regOne!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295956))

(assert (= (and b!1294355 ((_ is Concat!5863) (regOne!7598 (regOne!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295957))

(assert (= (and b!1294355 ((_ is Star!3543) (regOne!7598 (regOne!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295958))

(assert (= (and b!1294355 ((_ is Union!3543) (regOne!7598 (regOne!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295959))

(declare-fun b!1295963 () Bool)

(declare-fun e!830951 () Bool)

(declare-fun tp!377549 () Bool)

(declare-fun tp!377552 () Bool)

(assert (=> b!1295963 (= e!830951 (and tp!377549 tp!377552))))

(declare-fun b!1295960 () Bool)

(assert (=> b!1295960 (= e!830951 tp_is_empty!6579)))

(assert (=> b!1294355 (= tp!377313 e!830951)))

(declare-fun b!1295962 () Bool)

(declare-fun tp!377551 () Bool)

(assert (=> b!1295962 (= e!830951 tp!377551)))

(declare-fun b!1295961 () Bool)

(declare-fun tp!377550 () Bool)

(declare-fun tp!377548 () Bool)

(assert (=> b!1295961 (= e!830951 (and tp!377550 tp!377548))))

(assert (= (and b!1294355 ((_ is ElementMatch!3543) (regTwo!7598 (regOne!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295960))

(assert (= (and b!1294355 ((_ is Concat!5863) (regTwo!7598 (regOne!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295961))

(assert (= (and b!1294355 ((_ is Star!3543) (regTwo!7598 (regOne!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295962))

(assert (= (and b!1294355 ((_ is Union!3543) (regTwo!7598 (regOne!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295963))

(declare-fun b!1295973 () Bool)

(declare-fun e!830954 () Bool)

(declare-fun tp!377554 () Bool)

(declare-fun tp!377557 () Bool)

(assert (=> b!1295973 (= e!830954 (and tp!377554 tp!377557))))

(declare-fun b!1295970 () Bool)

(assert (=> b!1295970 (= e!830954 tp_is_empty!6579)))

(assert (=> b!1294391 (= tp!377352 e!830954)))

(declare-fun b!1295972 () Bool)

(declare-fun tp!377556 () Bool)

(assert (=> b!1295972 (= e!830954 tp!377556)))

(declare-fun b!1295971 () Bool)

(declare-fun tp!377555 () Bool)

(declare-fun tp!377553 () Bool)

(assert (=> b!1295971 (= e!830954 (and tp!377555 tp!377553))))

(assert (= (and b!1294391 ((_ is ElementMatch!3543) (regOne!7599 (regOne!7599 (regex!2229 (rule!3968 t2!34)))))) b!1295970))

(assert (= (and b!1294391 ((_ is Concat!5863) (regOne!7599 (regOne!7599 (regex!2229 (rule!3968 t2!34)))))) b!1295971))

(assert (= (and b!1294391 ((_ is Star!3543) (regOne!7599 (regOne!7599 (regex!2229 (rule!3968 t2!34)))))) b!1295972))

(assert (= (and b!1294391 ((_ is Union!3543) (regOne!7599 (regOne!7599 (regex!2229 (rule!3968 t2!34)))))) b!1295973))

(declare-fun b!1295977 () Bool)

(declare-fun e!830955 () Bool)

(declare-fun tp!377559 () Bool)

(declare-fun tp!377562 () Bool)

(assert (=> b!1295977 (= e!830955 (and tp!377559 tp!377562))))

(declare-fun b!1295974 () Bool)

(assert (=> b!1295974 (= e!830955 tp_is_empty!6579)))

(assert (=> b!1294391 (= tp!377355 e!830955)))

(declare-fun b!1295976 () Bool)

(declare-fun tp!377561 () Bool)

(assert (=> b!1295976 (= e!830955 tp!377561)))

(declare-fun b!1295975 () Bool)

(declare-fun tp!377560 () Bool)

(declare-fun tp!377558 () Bool)

(assert (=> b!1295975 (= e!830955 (and tp!377560 tp!377558))))

(assert (= (and b!1294391 ((_ is ElementMatch!3543) (regTwo!7599 (regOne!7599 (regex!2229 (rule!3968 t2!34)))))) b!1295974))

(assert (= (and b!1294391 ((_ is Concat!5863) (regTwo!7599 (regOne!7599 (regex!2229 (rule!3968 t2!34)))))) b!1295975))

(assert (= (and b!1294391 ((_ is Star!3543) (regTwo!7599 (regOne!7599 (regex!2229 (rule!3968 t2!34)))))) b!1295976))

(assert (= (and b!1294391 ((_ is Union!3543) (regTwo!7599 (regOne!7599 (regex!2229 (rule!3968 t2!34)))))) b!1295977))

(declare-fun b!1295981 () Bool)

(declare-fun e!830956 () Bool)

(declare-fun tp!377564 () Bool)

(declare-fun tp!377567 () Bool)

(assert (=> b!1295981 (= e!830956 (and tp!377564 tp!377567))))

(declare-fun b!1295978 () Bool)

(assert (=> b!1295978 (= e!830956 tp_is_empty!6579)))

(assert (=> b!1294382 (= tp!377344 e!830956)))

(declare-fun b!1295980 () Bool)

(declare-fun tp!377566 () Bool)

(assert (=> b!1295980 (= e!830956 tp!377566)))

(declare-fun b!1295979 () Bool)

(declare-fun tp!377565 () Bool)

(declare-fun tp!377563 () Bool)

(assert (=> b!1295979 (= e!830956 (and tp!377565 tp!377563))))

(assert (= (and b!1294382 ((_ is ElementMatch!3543) (reg!3872 (regTwo!7599 (regex!2229 (rule!3968 t1!34)))))) b!1295978))

(assert (= (and b!1294382 ((_ is Concat!5863) (reg!3872 (regTwo!7599 (regex!2229 (rule!3968 t1!34)))))) b!1295979))

(assert (= (and b!1294382 ((_ is Star!3543) (reg!3872 (regTwo!7599 (regex!2229 (rule!3968 t1!34)))))) b!1295980))

(assert (= (and b!1294382 ((_ is Union!3543) (reg!3872 (regTwo!7599 (regex!2229 (rule!3968 t1!34)))))) b!1295981))

(declare-fun b!1295982 () Bool)

(declare-fun e!830957 () Bool)

(declare-fun tp!377568 () Bool)

(assert (=> b!1295982 (= e!830957 (and tp_is_empty!6579 tp!377568))))

(assert (=> b!1294372 (= tp!377329 e!830957)))

(assert (= (and b!1294372 ((_ is Cons!12940) (innerList!4311 (xs!6962 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))))) b!1295982))

(declare-fun b!1295986 () Bool)

(declare-fun e!830958 () Bool)

(declare-fun tp!377570 () Bool)

(declare-fun tp!377573 () Bool)

(assert (=> b!1295986 (= e!830958 (and tp!377570 tp!377573))))

(declare-fun b!1295983 () Bool)

(assert (=> b!1295983 (= e!830958 tp_is_empty!6579)))

(assert (=> b!1294339 (= tp!377295 e!830958)))

(declare-fun b!1295985 () Bool)

(declare-fun tp!377572 () Bool)

(assert (=> b!1295985 (= e!830958 tp!377572)))

(declare-fun b!1295984 () Bool)

(declare-fun tp!377571 () Bool)

(declare-fun tp!377569 () Bool)

(assert (=> b!1295984 (= e!830958 (and tp!377571 tp!377569))))

(assert (= (and b!1294339 ((_ is ElementMatch!3543) (regOne!7598 (reg!3872 (regex!2229 (rule!3968 t2!34)))))) b!1295983))

(assert (= (and b!1294339 ((_ is Concat!5863) (regOne!7598 (reg!3872 (regex!2229 (rule!3968 t2!34)))))) b!1295984))

(assert (= (and b!1294339 ((_ is Star!3543) (regOne!7598 (reg!3872 (regex!2229 (rule!3968 t2!34)))))) b!1295985))

(assert (= (and b!1294339 ((_ is Union!3543) (regOne!7598 (reg!3872 (regex!2229 (rule!3968 t2!34)))))) b!1295986))

(declare-fun b!1295992 () Bool)

(declare-fun e!830960 () Bool)

(declare-fun tp!377575 () Bool)

(declare-fun tp!377578 () Bool)

(assert (=> b!1295992 (= e!830960 (and tp!377575 tp!377578))))

(declare-fun b!1295989 () Bool)

(assert (=> b!1295989 (= e!830960 tp_is_empty!6579)))

(assert (=> b!1294339 (= tp!377293 e!830960)))

(declare-fun b!1295991 () Bool)

(declare-fun tp!377577 () Bool)

(assert (=> b!1295991 (= e!830960 tp!377577)))

(declare-fun b!1295990 () Bool)

(declare-fun tp!377576 () Bool)

(declare-fun tp!377574 () Bool)

(assert (=> b!1295990 (= e!830960 (and tp!377576 tp!377574))))

(assert (= (and b!1294339 ((_ is ElementMatch!3543) (regTwo!7598 (reg!3872 (regex!2229 (rule!3968 t2!34)))))) b!1295989))

(assert (= (and b!1294339 ((_ is Concat!5863) (regTwo!7598 (reg!3872 (regex!2229 (rule!3968 t2!34)))))) b!1295990))

(assert (= (and b!1294339 ((_ is Star!3543) (regTwo!7598 (reg!3872 (regex!2229 (rule!3968 t2!34)))))) b!1295991))

(assert (= (and b!1294339 ((_ is Union!3543) (regTwo!7598 (reg!3872 (regex!2229 (rule!3968 t2!34)))))) b!1295992))

(declare-fun b!1295996 () Bool)

(declare-fun e!830961 () Bool)

(declare-fun tp!377580 () Bool)

(declare-fun tp!377583 () Bool)

(assert (=> b!1295996 (= e!830961 (and tp!377580 tp!377583))))

(declare-fun b!1295993 () Bool)

(assert (=> b!1295993 (= e!830961 tp_is_empty!6579)))

(assert (=> b!1294357 (= tp!377314 e!830961)))

(declare-fun b!1295995 () Bool)

(declare-fun tp!377582 () Bool)

(assert (=> b!1295995 (= e!830961 tp!377582)))

(declare-fun b!1295994 () Bool)

(declare-fun tp!377581 () Bool)

(declare-fun tp!377579 () Bool)

(assert (=> b!1295994 (= e!830961 (and tp!377581 tp!377579))))

(assert (= (and b!1294357 ((_ is ElementMatch!3543) (regOne!7599 (regOne!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295993))

(assert (= (and b!1294357 ((_ is Concat!5863) (regOne!7599 (regOne!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295994))

(assert (= (and b!1294357 ((_ is Star!3543) (regOne!7599 (regOne!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295995))

(assert (= (and b!1294357 ((_ is Union!3543) (regOne!7599 (regOne!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295996))

(declare-fun b!1296000 () Bool)

(declare-fun e!830962 () Bool)

(declare-fun tp!377585 () Bool)

(declare-fun tp!377588 () Bool)

(assert (=> b!1296000 (= e!830962 (and tp!377585 tp!377588))))

(declare-fun b!1295997 () Bool)

(assert (=> b!1295997 (= e!830962 tp_is_empty!6579)))

(assert (=> b!1294357 (= tp!377317 e!830962)))

(declare-fun b!1295999 () Bool)

(declare-fun tp!377587 () Bool)

(assert (=> b!1295999 (= e!830962 tp!377587)))

(declare-fun b!1295998 () Bool)

(declare-fun tp!377586 () Bool)

(declare-fun tp!377584 () Bool)

(assert (=> b!1295998 (= e!830962 (and tp!377586 tp!377584))))

(assert (= (and b!1294357 ((_ is ElementMatch!3543) (regTwo!7599 (regOne!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295997))

(assert (= (and b!1294357 ((_ is Concat!5863) (regTwo!7599 (regOne!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295998))

(assert (= (and b!1294357 ((_ is Star!3543) (regTwo!7599 (regOne!7598 (regex!2229 (rule!3968 t2!34)))))) b!1295999))

(assert (= (and b!1294357 ((_ is Union!3543) (regTwo!7599 (regOne!7598 (regex!2229 (rule!3968 t2!34)))))) b!1296000))

(declare-fun b!1296004 () Bool)

(declare-fun e!830963 () Bool)

(declare-fun tp!377590 () Bool)

(declare-fun tp!377593 () Bool)

(assert (=> b!1296004 (= e!830963 (and tp!377590 tp!377593))))

(declare-fun b!1296001 () Bool)

(assert (=> b!1296001 (= e!830963 tp_is_empty!6579)))

(assert (=> b!1294348 (= tp!377306 e!830963)))

(declare-fun b!1296003 () Bool)

(declare-fun tp!377592 () Bool)

(assert (=> b!1296003 (= e!830963 tp!377592)))

(declare-fun b!1296002 () Bool)

(declare-fun tp!377591 () Bool)

(declare-fun tp!377589 () Bool)

(assert (=> b!1296002 (= e!830963 (and tp!377591 tp!377589))))

(assert (= (and b!1294348 ((_ is ElementMatch!3543) (reg!3872 (regOne!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296001))

(assert (= (and b!1294348 ((_ is Concat!5863) (reg!3872 (regOne!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296002))

(assert (= (and b!1294348 ((_ is Star!3543) (reg!3872 (regOne!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296003))

(assert (= (and b!1294348 ((_ is Union!3543) (reg!3872 (regOne!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296004))

(declare-fun b!1296005 () Bool)

(declare-fun e!830964 () Bool)

(declare-fun tp!377594 () Bool)

(assert (=> b!1296005 (= e!830964 (and tp_is_empty!6579 tp!377594))))

(assert (=> b!1294212 (= tp!377292 e!830964)))

(assert (= (and b!1294212 ((_ is Cons!12940) (t!117315 res!579878))) b!1296005))

(declare-fun b!1296009 () Bool)

(declare-fun e!830965 () Bool)

(declare-fun tp!377596 () Bool)

(declare-fun tp!377599 () Bool)

(assert (=> b!1296009 (= e!830965 (and tp!377596 tp!377599))))

(declare-fun b!1296006 () Bool)

(assert (=> b!1296006 (= e!830965 tp_is_empty!6579)))

(assert (=> b!1294341 (= tp!377294 e!830965)))

(declare-fun b!1296008 () Bool)

(declare-fun tp!377598 () Bool)

(assert (=> b!1296008 (= e!830965 tp!377598)))

(declare-fun b!1296007 () Bool)

(declare-fun tp!377597 () Bool)

(declare-fun tp!377595 () Bool)

(assert (=> b!1296007 (= e!830965 (and tp!377597 tp!377595))))

(assert (= (and b!1294341 ((_ is ElementMatch!3543) (regOne!7599 (reg!3872 (regex!2229 (rule!3968 t2!34)))))) b!1296006))

(assert (= (and b!1294341 ((_ is Concat!5863) (regOne!7599 (reg!3872 (regex!2229 (rule!3968 t2!34)))))) b!1296007))

(assert (= (and b!1294341 ((_ is Star!3543) (regOne!7599 (reg!3872 (regex!2229 (rule!3968 t2!34)))))) b!1296008))

(assert (= (and b!1294341 ((_ is Union!3543) (regOne!7599 (reg!3872 (regex!2229 (rule!3968 t2!34)))))) b!1296009))

(declare-fun b!1296013 () Bool)

(declare-fun e!830966 () Bool)

(declare-fun tp!377601 () Bool)

(declare-fun tp!377604 () Bool)

(assert (=> b!1296013 (= e!830966 (and tp!377601 tp!377604))))

(declare-fun b!1296010 () Bool)

(assert (=> b!1296010 (= e!830966 tp_is_empty!6579)))

(assert (=> b!1294341 (= tp!377297 e!830966)))

(declare-fun b!1296012 () Bool)

(declare-fun tp!377603 () Bool)

(assert (=> b!1296012 (= e!830966 tp!377603)))

(declare-fun b!1296011 () Bool)

(declare-fun tp!377602 () Bool)

(declare-fun tp!377600 () Bool)

(assert (=> b!1296011 (= e!830966 (and tp!377602 tp!377600))))

(assert (= (and b!1294341 ((_ is ElementMatch!3543) (regTwo!7599 (reg!3872 (regex!2229 (rule!3968 t2!34)))))) b!1296010))

(assert (= (and b!1294341 ((_ is Concat!5863) (regTwo!7599 (reg!3872 (regex!2229 (rule!3968 t2!34)))))) b!1296011))

(assert (= (and b!1294341 ((_ is Star!3543) (regTwo!7599 (reg!3872 (regex!2229 (rule!3968 t2!34)))))) b!1296012))

(assert (= (and b!1294341 ((_ is Union!3543) (regTwo!7599 (reg!3872 (regex!2229 (rule!3968 t2!34)))))) b!1296013))

(declare-fun b!1296017 () Bool)

(declare-fun e!830967 () Bool)

(declare-fun tp!377606 () Bool)

(declare-fun tp!377609 () Bool)

(assert (=> b!1296017 (= e!830967 (and tp!377606 tp!377609))))

(declare-fun b!1296014 () Bool)

(assert (=> b!1296014 (= e!830967 tp_is_empty!6579)))

(assert (=> b!1294393 (= tp!377358 e!830967)))

(declare-fun b!1296016 () Bool)

(declare-fun tp!377608 () Bool)

(assert (=> b!1296016 (= e!830967 tp!377608)))

(declare-fun b!1296015 () Bool)

(declare-fun tp!377607 () Bool)

(declare-fun tp!377605 () Bool)

(assert (=> b!1296015 (= e!830967 (and tp!377607 tp!377605))))

(assert (= (and b!1294393 ((_ is ElementMatch!3543) (regOne!7598 (regTwo!7599 (regex!2229 (rule!3968 t2!34)))))) b!1296014))

(assert (= (and b!1294393 ((_ is Concat!5863) (regOne!7598 (regTwo!7599 (regex!2229 (rule!3968 t2!34)))))) b!1296015))

(assert (= (and b!1294393 ((_ is Star!3543) (regOne!7598 (regTwo!7599 (regex!2229 (rule!3968 t2!34)))))) b!1296016))

(assert (= (and b!1294393 ((_ is Union!3543) (regOne!7598 (regTwo!7599 (regex!2229 (rule!3968 t2!34)))))) b!1296017))

(declare-fun b!1296021 () Bool)

(declare-fun e!830968 () Bool)

(declare-fun tp!377611 () Bool)

(declare-fun tp!377614 () Bool)

(assert (=> b!1296021 (= e!830968 (and tp!377611 tp!377614))))

(declare-fun b!1296018 () Bool)

(assert (=> b!1296018 (= e!830968 tp_is_empty!6579)))

(assert (=> b!1294393 (= tp!377356 e!830968)))

(declare-fun b!1296020 () Bool)

(declare-fun tp!377613 () Bool)

(assert (=> b!1296020 (= e!830968 tp!377613)))

(declare-fun b!1296019 () Bool)

(declare-fun tp!377612 () Bool)

(declare-fun tp!377610 () Bool)

(assert (=> b!1296019 (= e!830968 (and tp!377612 tp!377610))))

(assert (= (and b!1294393 ((_ is ElementMatch!3543) (regTwo!7598 (regTwo!7599 (regex!2229 (rule!3968 t2!34)))))) b!1296018))

(assert (= (and b!1294393 ((_ is Concat!5863) (regTwo!7598 (regTwo!7599 (regex!2229 (rule!3968 t2!34)))))) b!1296019))

(assert (= (and b!1294393 ((_ is Star!3543) (regTwo!7598 (regTwo!7599 (regex!2229 (rule!3968 t2!34)))))) b!1296020))

(assert (= (and b!1294393 ((_ is Union!3543) (regTwo!7598 (regTwo!7599 (regex!2229 (rule!3968 t2!34)))))) b!1296021))

(declare-fun b!1296022 () Bool)

(declare-fun e!830969 () Bool)

(declare-fun tp!377615 () Bool)

(assert (=> b!1296022 (= e!830969 (and tp_is_empty!6579 tp!377615))))

(assert (=> b!1294408 (= tp!377375 e!830969)))

(assert (= (and b!1294408 ((_ is Cons!12940) (t!117315 (t!117315 (originalCharacters!3091 t2!34))))) b!1296022))

(declare-fun b!1296026 () Bool)

(declare-fun e!830970 () Bool)

(declare-fun tp!377617 () Bool)

(declare-fun tp!377620 () Bool)

(assert (=> b!1296026 (= e!830970 (and tp!377617 tp!377620))))

(declare-fun b!1296023 () Bool)

(assert (=> b!1296023 (= e!830970 tp_is_empty!6579)))

(assert (=> b!1294402 (= tp!377369 e!830970)))

(declare-fun b!1296025 () Bool)

(declare-fun tp!377619 () Bool)

(assert (=> b!1296025 (= e!830970 tp!377619)))

(declare-fun b!1296024 () Bool)

(declare-fun tp!377618 () Bool)

(declare-fun tp!377616 () Bool)

(assert (=> b!1296024 (= e!830970 (and tp!377618 tp!377616))))

(assert (= (and b!1294402 ((_ is ElementMatch!3543) (reg!3872 (regTwo!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296023))

(assert (= (and b!1294402 ((_ is Concat!5863) (reg!3872 (regTwo!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296024))

(assert (= (and b!1294402 ((_ is Star!3543) (reg!3872 (regTwo!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296025))

(assert (= (and b!1294402 ((_ is Union!3543) (reg!3872 (regTwo!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296026))

(declare-fun b!1296032 () Bool)

(declare-fun e!830975 () Bool)

(declare-fun tp!377622 () Bool)

(declare-fun tp!377625 () Bool)

(assert (=> b!1296032 (= e!830975 (and tp!377622 tp!377625))))

(declare-fun b!1296029 () Bool)

(assert (=> b!1296029 (= e!830975 tp_is_empty!6579)))

(assert (=> b!1294385 (= tp!377348 e!830975)))

(declare-fun b!1296031 () Bool)

(declare-fun tp!377624 () Bool)

(assert (=> b!1296031 (= e!830975 tp!377624)))

(declare-fun b!1296030 () Bool)

(declare-fun tp!377623 () Bool)

(declare-fun tp!377621 () Bool)

(assert (=> b!1296030 (= e!830975 (and tp!377623 tp!377621))))

(assert (= (and b!1294385 ((_ is ElementMatch!3543) (regOne!7598 (reg!3872 (regex!2229 (rule!3968 t1!34)))))) b!1296029))

(assert (= (and b!1294385 ((_ is Concat!5863) (regOne!7598 (reg!3872 (regex!2229 (rule!3968 t1!34)))))) b!1296030))

(assert (= (and b!1294385 ((_ is Star!3543) (regOne!7598 (reg!3872 (regex!2229 (rule!3968 t1!34)))))) b!1296031))

(assert (= (and b!1294385 ((_ is Union!3543) (regOne!7598 (reg!3872 (regex!2229 (rule!3968 t1!34)))))) b!1296032))

(declare-fun b!1296038 () Bool)

(declare-fun e!830976 () Bool)

(declare-fun tp!377627 () Bool)

(declare-fun tp!377630 () Bool)

(assert (=> b!1296038 (= e!830976 (and tp!377627 tp!377630))))

(declare-fun b!1296035 () Bool)

(assert (=> b!1296035 (= e!830976 tp_is_empty!6579)))

(assert (=> b!1294385 (= tp!377346 e!830976)))

(declare-fun b!1296037 () Bool)

(declare-fun tp!377629 () Bool)

(assert (=> b!1296037 (= e!830976 tp!377629)))

(declare-fun b!1296036 () Bool)

(declare-fun tp!377628 () Bool)

(declare-fun tp!377626 () Bool)

(assert (=> b!1296036 (= e!830976 (and tp!377628 tp!377626))))

(assert (= (and b!1294385 ((_ is ElementMatch!3543) (regTwo!7598 (reg!3872 (regex!2229 (rule!3968 t1!34)))))) b!1296035))

(assert (= (and b!1294385 ((_ is Concat!5863) (regTwo!7598 (reg!3872 (regex!2229 (rule!3968 t1!34)))))) b!1296036))

(assert (= (and b!1294385 ((_ is Star!3543) (regTwo!7598 (reg!3872 (regex!2229 (rule!3968 t1!34)))))) b!1296037))

(assert (= (and b!1294385 ((_ is Union!3543) (regTwo!7598 (reg!3872 (regex!2229 (rule!3968 t1!34)))))) b!1296038))

(declare-fun b!1296042 () Bool)

(declare-fun e!830977 () Bool)

(declare-fun tp!377632 () Bool)

(declare-fun tp!377635 () Bool)

(assert (=> b!1296042 (= e!830977 (and tp!377632 tp!377635))))

(declare-fun b!1296039 () Bool)

(assert (=> b!1296039 (= e!830977 tp_is_empty!6579)))

(assert (=> b!1294403 (= tp!377367 e!830977)))

(declare-fun b!1296041 () Bool)

(declare-fun tp!377634 () Bool)

(assert (=> b!1296041 (= e!830977 tp!377634)))

(declare-fun b!1296040 () Bool)

(declare-fun tp!377633 () Bool)

(declare-fun tp!377631 () Bool)

(assert (=> b!1296040 (= e!830977 (and tp!377633 tp!377631))))

(assert (= (and b!1294403 ((_ is ElementMatch!3543) (regOne!7599 (regTwo!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296039))

(assert (= (and b!1294403 ((_ is Concat!5863) (regOne!7599 (regTwo!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296040))

(assert (= (and b!1294403 ((_ is Star!3543) (regOne!7599 (regTwo!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296041))

(assert (= (and b!1294403 ((_ is Union!3543) (regOne!7599 (regTwo!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296042))

(declare-fun b!1296046 () Bool)

(declare-fun e!830978 () Bool)

(declare-fun tp!377637 () Bool)

(declare-fun tp!377640 () Bool)

(assert (=> b!1296046 (= e!830978 (and tp!377637 tp!377640))))

(declare-fun b!1296043 () Bool)

(assert (=> b!1296043 (= e!830978 tp_is_empty!6579)))

(assert (=> b!1294403 (= tp!377370 e!830978)))

(declare-fun b!1296045 () Bool)

(declare-fun tp!377639 () Bool)

(assert (=> b!1296045 (= e!830978 tp!377639)))

(declare-fun b!1296044 () Bool)

(declare-fun tp!377638 () Bool)

(declare-fun tp!377636 () Bool)

(assert (=> b!1296044 (= e!830978 (and tp!377638 tp!377636))))

(assert (= (and b!1294403 ((_ is ElementMatch!3543) (regTwo!7599 (regTwo!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296043))

(assert (= (and b!1294403 ((_ is Concat!5863) (regTwo!7599 (regTwo!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296044))

(assert (= (and b!1294403 ((_ is Star!3543) (regTwo!7599 (regTwo!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296045))

(assert (= (and b!1294403 ((_ is Union!3543) (regTwo!7599 (regTwo!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296046))

(declare-fun b!1296050 () Bool)

(declare-fun e!830979 () Bool)

(declare-fun tp!377642 () Bool)

(declare-fun tp!377645 () Bool)

(assert (=> b!1296050 (= e!830979 (and tp!377642 tp!377645))))

(declare-fun b!1296047 () Bool)

(assert (=> b!1296047 (= e!830979 tp_is_empty!6579)))

(assert (=> b!1294394 (= tp!377359 e!830979)))

(declare-fun b!1296049 () Bool)

(declare-fun tp!377644 () Bool)

(assert (=> b!1296049 (= e!830979 tp!377644)))

(declare-fun b!1296048 () Bool)

(declare-fun tp!377643 () Bool)

(declare-fun tp!377641 () Bool)

(assert (=> b!1296048 (= e!830979 (and tp!377643 tp!377641))))

(assert (= (and b!1294394 ((_ is ElementMatch!3543) (reg!3872 (regTwo!7599 (regex!2229 (rule!3968 t2!34)))))) b!1296047))

(assert (= (and b!1294394 ((_ is Concat!5863) (reg!3872 (regTwo!7599 (regex!2229 (rule!3968 t2!34)))))) b!1296048))

(assert (= (and b!1294394 ((_ is Star!3543) (reg!3872 (regTwo!7599 (regex!2229 (rule!3968 t2!34)))))) b!1296049))

(assert (= (and b!1294394 ((_ is Union!3543) (reg!3872 (regTwo!7599 (regex!2229 (rule!3968 t2!34)))))) b!1296050))

(declare-fun b!1296054 () Bool)

(declare-fun e!830980 () Bool)

(declare-fun tp!377647 () Bool)

(declare-fun tp!377650 () Bool)

(assert (=> b!1296054 (= e!830980 (and tp!377647 tp!377650))))

(declare-fun b!1296051 () Bool)

(assert (=> b!1296051 (= e!830980 tp_is_empty!6579)))

(assert (=> b!1294360 (= tp!377321 e!830980)))

(declare-fun b!1296053 () Bool)

(declare-fun tp!377649 () Bool)

(assert (=> b!1296053 (= e!830980 tp!377649)))

(declare-fun b!1296052 () Bool)

(declare-fun tp!377648 () Bool)

(declare-fun tp!377646 () Bool)

(assert (=> b!1296052 (= e!830980 (and tp!377648 tp!377646))))

(assert (= (and b!1294360 ((_ is ElementMatch!3543) (reg!3872 (regTwo!7598 (regex!2229 (rule!3968 t2!34)))))) b!1296051))

(assert (= (and b!1294360 ((_ is Concat!5863) (reg!3872 (regTwo!7598 (regex!2229 (rule!3968 t2!34)))))) b!1296052))

(assert (= (and b!1294360 ((_ is Star!3543) (reg!3872 (regTwo!7598 (regex!2229 (rule!3968 t2!34)))))) b!1296053))

(assert (= (and b!1294360 ((_ is Union!3543) (reg!3872 (regTwo!7598 (regex!2229 (rule!3968 t2!34)))))) b!1296054))

(declare-fun b!1296060 () Bool)

(declare-fun e!830983 () Bool)

(declare-fun tp!377652 () Bool)

(declare-fun tp!377655 () Bool)

(assert (=> b!1296060 (= e!830983 (and tp!377652 tp!377655))))

(declare-fun b!1296057 () Bool)

(assert (=> b!1296057 (= e!830983 tp_is_empty!6579)))

(assert (=> b!1294416 (= tp!377382 e!830983)))

(declare-fun b!1296059 () Bool)

(declare-fun tp!377654 () Bool)

(assert (=> b!1296059 (= e!830983 tp!377654)))

(declare-fun b!1296058 () Bool)

(declare-fun tp!377653 () Bool)

(declare-fun tp!377651 () Bool)

(assert (=> b!1296058 (= e!830983 (and tp!377653 tp!377651))))

(assert (= (and b!1294416 ((_ is ElementMatch!3543) (regOne!7599 (regTwo!7599 (regex!2229 (h!18343 rules!2550)))))) b!1296057))

(assert (= (and b!1294416 ((_ is Concat!5863) (regOne!7599 (regTwo!7599 (regex!2229 (h!18343 rules!2550)))))) b!1296058))

(assert (= (and b!1294416 ((_ is Star!3543) (regOne!7599 (regTwo!7599 (regex!2229 (h!18343 rules!2550)))))) b!1296059))

(assert (= (and b!1294416 ((_ is Union!3543) (regOne!7599 (regTwo!7599 (regex!2229 (h!18343 rules!2550)))))) b!1296060))

(declare-fun b!1296064 () Bool)

(declare-fun e!830984 () Bool)

(declare-fun tp!377657 () Bool)

(declare-fun tp!377660 () Bool)

(assert (=> b!1296064 (= e!830984 (and tp!377657 tp!377660))))

(declare-fun b!1296061 () Bool)

(assert (=> b!1296061 (= e!830984 tp_is_empty!6579)))

(assert (=> b!1294416 (= tp!377385 e!830984)))

(declare-fun b!1296063 () Bool)

(declare-fun tp!377659 () Bool)

(assert (=> b!1296063 (= e!830984 tp!377659)))

(declare-fun b!1296062 () Bool)

(declare-fun tp!377658 () Bool)

(declare-fun tp!377656 () Bool)

(assert (=> b!1296062 (= e!830984 (and tp!377658 tp!377656))))

(assert (= (and b!1294416 ((_ is ElementMatch!3543) (regTwo!7599 (regTwo!7599 (regex!2229 (h!18343 rules!2550)))))) b!1296061))

(assert (= (and b!1294416 ((_ is Concat!5863) (regTwo!7599 (regTwo!7599 (regex!2229 (h!18343 rules!2550)))))) b!1296062))

(assert (= (and b!1294416 ((_ is Star!3543) (regTwo!7599 (regTwo!7599 (regex!2229 (h!18343 rules!2550)))))) b!1296063))

(assert (= (and b!1294416 ((_ is Union!3543) (regTwo!7599 (regTwo!7599 (regex!2229 (h!18343 rules!2550)))))) b!1296064))

(declare-fun b!1296068 () Bool)

(declare-fun e!830985 () Bool)

(declare-fun tp!377662 () Bool)

(declare-fun tp!377665 () Bool)

(assert (=> b!1296068 (= e!830985 (and tp!377662 tp!377665))))

(declare-fun b!1296065 () Bool)

(assert (=> b!1296065 (= e!830985 tp_is_empty!6579)))

(assert (=> b!1294351 (= tp!377310 e!830985)))

(declare-fun b!1296067 () Bool)

(declare-fun tp!377664 () Bool)

(assert (=> b!1296067 (= e!830985 tp!377664)))

(declare-fun b!1296066 () Bool)

(declare-fun tp!377663 () Bool)

(declare-fun tp!377661 () Bool)

(assert (=> b!1296066 (= e!830985 (and tp!377663 tp!377661))))

(assert (= (and b!1294351 ((_ is ElementMatch!3543) (regOne!7598 (regTwo!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296065))

(assert (= (and b!1294351 ((_ is Concat!5863) (regOne!7598 (regTwo!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296066))

(assert (= (and b!1294351 ((_ is Star!3543) (regOne!7598 (regTwo!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296067))

(assert (= (and b!1294351 ((_ is Union!3543) (regOne!7598 (regTwo!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296068))

(declare-fun b!1296072 () Bool)

(declare-fun e!830986 () Bool)

(declare-fun tp!377667 () Bool)

(declare-fun tp!377670 () Bool)

(assert (=> b!1296072 (= e!830986 (and tp!377667 tp!377670))))

(declare-fun b!1296069 () Bool)

(assert (=> b!1296069 (= e!830986 tp_is_empty!6579)))

(assert (=> b!1294351 (= tp!377308 e!830986)))

(declare-fun b!1296071 () Bool)

(declare-fun tp!377669 () Bool)

(assert (=> b!1296071 (= e!830986 tp!377669)))

(declare-fun b!1296070 () Bool)

(declare-fun tp!377668 () Bool)

(declare-fun tp!377666 () Bool)

(assert (=> b!1296070 (= e!830986 (and tp!377668 tp!377666))))

(assert (= (and b!1294351 ((_ is ElementMatch!3543) (regTwo!7598 (regTwo!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296069))

(assert (= (and b!1294351 ((_ is Concat!5863) (regTwo!7598 (regTwo!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296070))

(assert (= (and b!1294351 ((_ is Star!3543) (regTwo!7598 (regTwo!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296071))

(assert (= (and b!1294351 ((_ is Union!3543) (regTwo!7598 (regTwo!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296072))

(declare-fun b!1296076 () Bool)

(declare-fun e!830987 () Bool)

(declare-fun tp!377672 () Bool)

(declare-fun tp!377675 () Bool)

(assert (=> b!1296076 (= e!830987 (and tp!377672 tp!377675))))

(declare-fun b!1296073 () Bool)

(assert (=> b!1296073 (= e!830987 tp_is_empty!6579)))

(assert (=> b!1294387 (= tp!377347 e!830987)))

(declare-fun b!1296075 () Bool)

(declare-fun tp!377674 () Bool)

(assert (=> b!1296075 (= e!830987 tp!377674)))

(declare-fun b!1296074 () Bool)

(declare-fun tp!377673 () Bool)

(declare-fun tp!377671 () Bool)

(assert (=> b!1296074 (= e!830987 (and tp!377673 tp!377671))))

(assert (= (and b!1294387 ((_ is ElementMatch!3543) (regOne!7599 (reg!3872 (regex!2229 (rule!3968 t1!34)))))) b!1296073))

(assert (= (and b!1294387 ((_ is Concat!5863) (regOne!7599 (reg!3872 (regex!2229 (rule!3968 t1!34)))))) b!1296074))

(assert (= (and b!1294387 ((_ is Star!3543) (regOne!7599 (reg!3872 (regex!2229 (rule!3968 t1!34)))))) b!1296075))

(assert (= (and b!1294387 ((_ is Union!3543) (regOne!7599 (reg!3872 (regex!2229 (rule!3968 t1!34)))))) b!1296076))

(declare-fun b!1296080 () Bool)

(declare-fun e!830988 () Bool)

(declare-fun tp!377677 () Bool)

(declare-fun tp!377680 () Bool)

(assert (=> b!1296080 (= e!830988 (and tp!377677 tp!377680))))

(declare-fun b!1296077 () Bool)

(assert (=> b!1296077 (= e!830988 tp_is_empty!6579)))

(assert (=> b!1294387 (= tp!377350 e!830988)))

(declare-fun b!1296079 () Bool)

(declare-fun tp!377679 () Bool)

(assert (=> b!1296079 (= e!830988 tp!377679)))

(declare-fun b!1296078 () Bool)

(declare-fun tp!377678 () Bool)

(declare-fun tp!377676 () Bool)

(assert (=> b!1296078 (= e!830988 (and tp!377678 tp!377676))))

(assert (= (and b!1294387 ((_ is ElementMatch!3543) (regTwo!7599 (reg!3872 (regex!2229 (rule!3968 t1!34)))))) b!1296077))

(assert (= (and b!1294387 ((_ is Concat!5863) (regTwo!7599 (reg!3872 (regex!2229 (rule!3968 t1!34)))))) b!1296078))

(assert (= (and b!1294387 ((_ is Star!3543) (regTwo!7599 (reg!3872 (regex!2229 (rule!3968 t1!34)))))) b!1296079))

(assert (= (and b!1294387 ((_ is Union!3543) (regTwo!7599 (reg!3872 (regex!2229 (rule!3968 t1!34)))))) b!1296080))

(declare-fun b!1296084 () Bool)

(declare-fun e!830989 () Bool)

(declare-fun tp!377682 () Bool)

(declare-fun tp!377685 () Bool)

(assert (=> b!1296084 (= e!830989 (and tp!377682 tp!377685))))

(declare-fun b!1296081 () Bool)

(assert (=> b!1296081 (= e!830989 tp_is_empty!6579)))

(assert (=> b!1294378 (= tp!377339 e!830989)))

(declare-fun b!1296083 () Bool)

(declare-fun tp!377684 () Bool)

(assert (=> b!1296083 (= e!830989 tp!377684)))

(declare-fun b!1296082 () Bool)

(declare-fun tp!377683 () Bool)

(declare-fun tp!377681 () Bool)

(assert (=> b!1296082 (= e!830989 (and tp!377683 tp!377681))))

(assert (= (and b!1294378 ((_ is ElementMatch!3543) (reg!3872 (regOne!7599 (regex!2229 (rule!3968 t1!34)))))) b!1296081))

(assert (= (and b!1294378 ((_ is Concat!5863) (reg!3872 (regOne!7599 (regex!2229 (rule!3968 t1!34)))))) b!1296082))

(assert (= (and b!1294378 ((_ is Star!3543) (reg!3872 (regOne!7599 (regex!2229 (rule!3968 t1!34)))))) b!1296083))

(assert (= (and b!1294378 ((_ is Union!3543) (reg!3872 (regOne!7599 (regex!2229 (rule!3968 t1!34)))))) b!1296084))

(declare-fun b!1296088 () Bool)

(declare-fun e!830990 () Bool)

(declare-fun tp!377687 () Bool)

(declare-fun tp!377690 () Bool)

(assert (=> b!1296088 (= e!830990 (and tp!377687 tp!377690))))

(declare-fun b!1296085 () Bool)

(assert (=> b!1296085 (= e!830990 tp_is_empty!6579)))

(assert (=> b!1294353 (= tp!377309 e!830990)))

(declare-fun b!1296087 () Bool)

(declare-fun tp!377689 () Bool)

(assert (=> b!1296087 (= e!830990 tp!377689)))

(declare-fun b!1296086 () Bool)

(declare-fun tp!377688 () Bool)

(declare-fun tp!377686 () Bool)

(assert (=> b!1296086 (= e!830990 (and tp!377688 tp!377686))))

(assert (= (and b!1294353 ((_ is ElementMatch!3543) (regOne!7599 (regTwo!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296085))

(assert (= (and b!1294353 ((_ is Concat!5863) (regOne!7599 (regTwo!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296086))

(assert (= (and b!1294353 ((_ is Star!3543) (regOne!7599 (regTwo!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296087))

(assert (= (and b!1294353 ((_ is Union!3543) (regOne!7599 (regTwo!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296088))

(declare-fun b!1296092 () Bool)

(declare-fun e!830991 () Bool)

(declare-fun tp!377692 () Bool)

(declare-fun tp!377695 () Bool)

(assert (=> b!1296092 (= e!830991 (and tp!377692 tp!377695))))

(declare-fun b!1296089 () Bool)

(assert (=> b!1296089 (= e!830991 tp_is_empty!6579)))

(assert (=> b!1294353 (= tp!377312 e!830991)))

(declare-fun b!1296091 () Bool)

(declare-fun tp!377694 () Bool)

(assert (=> b!1296091 (= e!830991 tp!377694)))

(declare-fun b!1296090 () Bool)

(declare-fun tp!377693 () Bool)

(declare-fun tp!377691 () Bool)

(assert (=> b!1296090 (= e!830991 (and tp!377693 tp!377691))))

(assert (= (and b!1294353 ((_ is ElementMatch!3543) (regTwo!7599 (regTwo!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296089))

(assert (= (and b!1294353 ((_ is Concat!5863) (regTwo!7599 (regTwo!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296090))

(assert (= (and b!1294353 ((_ is Star!3543) (regTwo!7599 (regTwo!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296091))

(assert (= (and b!1294353 ((_ is Union!3543) (regTwo!7599 (regTwo!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296092))

(declare-fun b!1296096 () Bool)

(declare-fun e!830992 () Bool)

(declare-fun tp!377697 () Bool)

(declare-fun tp!377700 () Bool)

(assert (=> b!1296096 (= e!830992 (and tp!377697 tp!377700))))

(declare-fun b!1296093 () Bool)

(assert (=> b!1296093 (= e!830992 tp_is_empty!6579)))

(assert (=> b!1294344 (= tp!377301 e!830992)))

(declare-fun b!1296095 () Bool)

(declare-fun tp!377699 () Bool)

(assert (=> b!1296095 (= e!830992 tp!377699)))

(declare-fun b!1296094 () Bool)

(declare-fun tp!377698 () Bool)

(declare-fun tp!377696 () Bool)

(assert (=> b!1296094 (= e!830992 (and tp!377698 tp!377696))))

(assert (= (and b!1294344 ((_ is ElementMatch!3543) (reg!3872 (regex!2229 (h!18343 (t!117317 rules!2550)))))) b!1296093))

(assert (= (and b!1294344 ((_ is Concat!5863) (reg!3872 (regex!2229 (h!18343 (t!117317 rules!2550)))))) b!1296094))

(assert (= (and b!1294344 ((_ is Star!3543) (reg!3872 (regex!2229 (h!18343 (t!117317 rules!2550)))))) b!1296095))

(assert (= (and b!1294344 ((_ is Union!3543) (reg!3872 (regex!2229 (h!18343 (t!117317 rules!2550)))))) b!1296096))

(declare-fun b!1296099 () Bool)

(declare-fun b_free!30655 () Bool)

(declare-fun b_next!31359 () Bool)

(assert (=> b!1296099 (= b_free!30655 (not b_next!31359))))

(declare-fun tp!377703 () Bool)

(declare-fun b_and!86315 () Bool)

(assert (=> b!1296099 (= tp!377703 b_and!86315)))

(declare-fun b_free!30657 () Bool)

(declare-fun b_next!31361 () Bool)

(assert (=> b!1296099 (= b_free!30657 (not b_next!31361))))

(declare-fun t!117399 () Bool)

(declare-fun tb!69465 () Bool)

(assert (=> (and b!1296099 (= (toChars!3291 (transformation!2229 (h!18343 (t!117317 (t!117317 (t!117317 rules!2550)))))) (toChars!3291 (transformation!2229 (rule!3968 t1!34)))) t!117399) tb!69465))

(declare-fun result!84218 () Bool)

(assert (= result!84218 result!84182))

(assert (=> b!1293486 t!117399))

(declare-fun tb!69467 () Bool)

(declare-fun t!117401 () Bool)

(assert (=> (and b!1296099 (= (toChars!3291 (transformation!2229 (h!18343 (t!117317 (t!117317 (t!117317 rules!2550)))))) (toChars!3291 (transformation!2229 (rule!3968 t2!34)))) t!117401) tb!69467))

(declare-fun result!84220 () Bool)

(assert (= result!84220 result!84190))

(assert (=> b!1293493 t!117401))

(assert (=> d!364787 t!117401))

(assert (=> d!364799 t!117399))

(declare-fun b_and!86317 () Bool)

(declare-fun tp!377702 () Bool)

(assert (=> b!1296099 (= tp!377702 (and (=> t!117399 result!84218) (=> t!117401 result!84220) b_and!86317))))

(declare-fun e!830993 () Bool)

(assert (=> b!1296099 (= e!830993 (and tp!377703 tp!377702))))

(declare-fun tp!377701 () Bool)

(declare-fun e!830994 () Bool)

(declare-fun b!1296098 () Bool)

(assert (=> b!1296098 (= e!830994 (and tp!377701 (inv!17361 (tag!2491 (h!18343 (t!117317 (t!117317 (t!117317 rules!2550)))))) (inv!17364 (transformation!2229 (h!18343 (t!117317 (t!117317 (t!117317 rules!2550)))))) e!830993))))

(declare-fun b!1296097 () Bool)

(declare-fun e!830996 () Bool)

(declare-fun tp!377704 () Bool)

(assert (=> b!1296097 (= e!830996 (and e!830994 tp!377704))))

(assert (=> b!1294373 (= tp!377335 e!830996)))

(assert (= b!1296098 b!1296099))

(assert (= b!1296097 b!1296098))

(assert (= (and b!1294373 ((_ is Cons!12942) (t!117317 (t!117317 (t!117317 rules!2550))))) b!1296097))

(declare-fun m!1447837 () Bool)

(assert (=> b!1296098 m!1447837))

(declare-fun m!1447839 () Bool)

(assert (=> b!1296098 m!1447839))

(declare-fun b!1296103 () Bool)

(declare-fun e!830997 () Bool)

(declare-fun tp!377706 () Bool)

(declare-fun tp!377709 () Bool)

(assert (=> b!1296103 (= e!830997 (and tp!377706 tp!377709))))

(declare-fun b!1296100 () Bool)

(assert (=> b!1296100 (= e!830997 tp_is_empty!6579)))

(assert (=> b!1294411 (= tp!377379 e!830997)))

(declare-fun b!1296102 () Bool)

(declare-fun tp!377708 () Bool)

(assert (=> b!1296102 (= e!830997 tp!377708)))

(declare-fun b!1296101 () Bool)

(declare-fun tp!377707 () Bool)

(declare-fun tp!377705 () Bool)

(assert (=> b!1296101 (= e!830997 (and tp!377707 tp!377705))))

(assert (= (and b!1294411 ((_ is ElementMatch!3543) (reg!3872 (regOne!7599 (regex!2229 (h!18343 rules!2550)))))) b!1296100))

(assert (= (and b!1294411 ((_ is Concat!5863) (reg!3872 (regOne!7599 (regex!2229 (h!18343 rules!2550)))))) b!1296101))

(assert (= (and b!1294411 ((_ is Star!3543) (reg!3872 (regOne!7599 (regex!2229 (h!18343 rules!2550)))))) b!1296102))

(assert (= (and b!1294411 ((_ is Union!3543) (reg!3872 (regOne!7599 (regex!2229 (h!18343 rules!2550)))))) b!1296103))

(declare-fun b!1296104 () Bool)

(declare-fun tp!377711 () Bool)

(declare-fun e!830998 () Bool)

(declare-fun tp!377712 () Bool)

(assert (=> b!1296104 (= e!830998 (and (inv!17368 (left!11131 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))) tp!377712 (inv!17368 (right!11461 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))) tp!377711))))

(declare-fun b!1296106 () Bool)

(declare-fun e!830999 () Bool)

(declare-fun tp!377710 () Bool)

(assert (=> b!1296106 (= e!830999 tp!377710)))

(declare-fun b!1296105 () Bool)

(assert (=> b!1296105 (= e!830998 (and (inv!17375 (xs!6962 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))) e!830999))))

(assert (=> b!1294370 (= tp!377331 (and (inv!17368 (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))) e!830998))))

(assert (= (and b!1294370 ((_ is Node!4251) (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))) b!1296104))

(assert (= b!1296105 b!1296106))

(assert (= (and b!1294370 ((_ is Leaf!6562) (left!11131 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))) b!1296105))

(declare-fun m!1447841 () Bool)

(assert (=> b!1296104 m!1447841))

(declare-fun m!1447843 () Bool)

(assert (=> b!1296104 m!1447843))

(declare-fun m!1447845 () Bool)

(assert (=> b!1296105 m!1447845))

(assert (=> b!1294370 m!1445447))

(declare-fun e!831000 () Bool)

(declare-fun b!1296107 () Bool)

(declare-fun tp!377715 () Bool)

(declare-fun tp!377714 () Bool)

(assert (=> b!1296107 (= e!831000 (and (inv!17368 (left!11131 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))) tp!377715 (inv!17368 (right!11461 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))) tp!377714))))

(declare-fun b!1296109 () Bool)

(declare-fun e!831001 () Bool)

(declare-fun tp!377713 () Bool)

(assert (=> b!1296109 (= e!831001 tp!377713)))

(declare-fun b!1296108 () Bool)

(assert (=> b!1296108 (= e!831000 (and (inv!17375 (xs!6962 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))) e!831001))))

(assert (=> b!1294370 (= tp!377330 (and (inv!17368 (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34))))) e!831000))))

(assert (= (and b!1294370 ((_ is Node!4251) (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))) b!1296107))

(assert (= b!1296108 b!1296109))

(assert (= (and b!1294370 ((_ is Leaf!6562) (right!11461 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t1!34))) (value!73159 t1!34)))))) b!1296108))

(declare-fun m!1447847 () Bool)

(assert (=> b!1296107 m!1447847))

(declare-fun m!1447849 () Bool)

(assert (=> b!1296107 m!1447849))

(declare-fun m!1447851 () Bool)

(assert (=> b!1296108 m!1447851))

(assert (=> b!1294370 m!1445449))

(declare-fun b!1296123 () Bool)

(declare-fun e!831010 () Bool)

(declare-fun tp!377717 () Bool)

(declare-fun tp!377720 () Bool)

(assert (=> b!1296123 (= e!831010 (and tp!377717 tp!377720))))

(declare-fun b!1296120 () Bool)

(assert (=> b!1296120 (= e!831010 tp_is_empty!6579)))

(assert (=> b!1294398 (= tp!377364 e!831010)))

(declare-fun b!1296122 () Bool)

(declare-fun tp!377719 () Bool)

(assert (=> b!1296122 (= e!831010 tp!377719)))

(declare-fun b!1296121 () Bool)

(declare-fun tp!377718 () Bool)

(declare-fun tp!377716 () Bool)

(assert (=> b!1296121 (= e!831010 (and tp!377718 tp!377716))))

(assert (= (and b!1294398 ((_ is ElementMatch!3543) (reg!3872 (regOne!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296120))

(assert (= (and b!1294398 ((_ is Concat!5863) (reg!3872 (regOne!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296121))

(assert (= (and b!1294398 ((_ is Star!3543) (reg!3872 (regOne!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296122))

(assert (= (and b!1294398 ((_ is Union!3543) (reg!3872 (regOne!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296123))

(declare-fun b!1296131 () Bool)

(declare-fun e!831015 () Bool)

(declare-fun tp!377722 () Bool)

(declare-fun tp!377725 () Bool)

(assert (=> b!1296131 (= e!831015 (and tp!377722 tp!377725))))

(declare-fun b!1296128 () Bool)

(assert (=> b!1296128 (= e!831015 tp_is_empty!6579)))

(assert (=> b!1294418 (= tp!377388 e!831015)))

(declare-fun b!1296130 () Bool)

(declare-fun tp!377724 () Bool)

(assert (=> b!1296130 (= e!831015 tp!377724)))

(declare-fun b!1296129 () Bool)

(declare-fun tp!377723 () Bool)

(declare-fun tp!377721 () Bool)

(assert (=> b!1296129 (= e!831015 (and tp!377723 tp!377721))))

(assert (= (and b!1294418 ((_ is ElementMatch!3543) (regOne!7598 (reg!3872 (regex!2229 (h!18343 rules!2550)))))) b!1296128))

(assert (= (and b!1294418 ((_ is Concat!5863) (regOne!7598 (reg!3872 (regex!2229 (h!18343 rules!2550)))))) b!1296129))

(assert (= (and b!1294418 ((_ is Star!3543) (regOne!7598 (reg!3872 (regex!2229 (h!18343 rules!2550)))))) b!1296130))

(assert (= (and b!1294418 ((_ is Union!3543) (regOne!7598 (reg!3872 (regex!2229 (h!18343 rules!2550)))))) b!1296131))

(declare-fun b!1296135 () Bool)

(declare-fun e!831016 () Bool)

(declare-fun tp!377727 () Bool)

(declare-fun tp!377730 () Bool)

(assert (=> b!1296135 (= e!831016 (and tp!377727 tp!377730))))

(declare-fun b!1296132 () Bool)

(assert (=> b!1296132 (= e!831016 tp_is_empty!6579)))

(assert (=> b!1294418 (= tp!377386 e!831016)))

(declare-fun b!1296134 () Bool)

(declare-fun tp!377729 () Bool)

(assert (=> b!1296134 (= e!831016 tp!377729)))

(declare-fun b!1296133 () Bool)

(declare-fun tp!377728 () Bool)

(declare-fun tp!377726 () Bool)

(assert (=> b!1296133 (= e!831016 (and tp!377728 tp!377726))))

(assert (= (and b!1294418 ((_ is ElementMatch!3543) (regTwo!7598 (reg!3872 (regex!2229 (h!18343 rules!2550)))))) b!1296132))

(assert (= (and b!1294418 ((_ is Concat!5863) (regTwo!7598 (reg!3872 (regex!2229 (h!18343 rules!2550)))))) b!1296133))

(assert (= (and b!1294418 ((_ is Star!3543) (regTwo!7598 (reg!3872 (regex!2229 (h!18343 rules!2550)))))) b!1296134))

(assert (= (and b!1294418 ((_ is Union!3543) (regTwo!7598 (reg!3872 (regex!2229 (h!18343 rules!2550)))))) b!1296135))

(declare-fun b!1296139 () Bool)

(declare-fun e!831017 () Bool)

(declare-fun tp!377732 () Bool)

(declare-fun tp!377735 () Bool)

(assert (=> b!1296139 (= e!831017 (and tp!377732 tp!377735))))

(declare-fun b!1296136 () Bool)

(assert (=> b!1296136 (= e!831017 tp_is_empty!6579)))

(assert (=> b!1294399 (= tp!377362 e!831017)))

(declare-fun b!1296138 () Bool)

(declare-fun tp!377734 () Bool)

(assert (=> b!1296138 (= e!831017 tp!377734)))

(declare-fun b!1296137 () Bool)

(declare-fun tp!377733 () Bool)

(declare-fun tp!377731 () Bool)

(assert (=> b!1296137 (= e!831017 (and tp!377733 tp!377731))))

(assert (= (and b!1294399 ((_ is ElementMatch!3543) (regOne!7599 (regOne!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296136))

(assert (= (and b!1294399 ((_ is Concat!5863) (regOne!7599 (regOne!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296137))

(assert (= (and b!1294399 ((_ is Star!3543) (regOne!7599 (regOne!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296138))

(assert (= (and b!1294399 ((_ is Union!3543) (regOne!7599 (regOne!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296139))

(declare-fun b!1296143 () Bool)

(declare-fun e!831018 () Bool)

(declare-fun tp!377737 () Bool)

(declare-fun tp!377740 () Bool)

(assert (=> b!1296143 (= e!831018 (and tp!377737 tp!377740))))

(declare-fun b!1296140 () Bool)

(assert (=> b!1296140 (= e!831018 tp_is_empty!6579)))

(assert (=> b!1294399 (= tp!377365 e!831018)))

(declare-fun b!1296142 () Bool)

(declare-fun tp!377739 () Bool)

(assert (=> b!1296142 (= e!831018 tp!377739)))

(declare-fun b!1296141 () Bool)

(declare-fun tp!377738 () Bool)

(declare-fun tp!377736 () Bool)

(assert (=> b!1296141 (= e!831018 (and tp!377738 tp!377736))))

(assert (= (and b!1294399 ((_ is ElementMatch!3543) (regTwo!7599 (regOne!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296140))

(assert (= (and b!1294399 ((_ is Concat!5863) (regTwo!7599 (regOne!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296141))

(assert (= (and b!1294399 ((_ is Star!3543) (regTwo!7599 (regOne!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296142))

(assert (= (and b!1294399 ((_ is Union!3543) (regTwo!7599 (regOne!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296143))

(declare-fun b!1296144 () Bool)

(declare-fun e!831019 () Bool)

(declare-fun tp!377741 () Bool)

(assert (=> b!1296144 (= e!831019 (and tp_is_empty!6579 tp!377741))))

(assert (=> b!1294407 (= tp!377372 e!831019)))

(assert (= (and b!1294407 ((_ is Cons!12940) (innerList!4311 (xs!6962 (c!212845 (dynLambda!5656 (toChars!3291 (transformation!2229 (rule!3968 t2!34))) (value!73159 t2!34))))))) b!1296144))

(declare-fun b!1296148 () Bool)

(declare-fun e!831020 () Bool)

(declare-fun tp!377743 () Bool)

(declare-fun tp!377746 () Bool)

(assert (=> b!1296148 (= e!831020 (and tp!377743 tp!377746))))

(declare-fun b!1296145 () Bool)

(assert (=> b!1296145 (= e!831020 tp_is_empty!6579)))

(assert (=> b!1294390 (= tp!377354 e!831020)))

(declare-fun b!1296147 () Bool)

(declare-fun tp!377745 () Bool)

(assert (=> b!1296147 (= e!831020 tp!377745)))

(declare-fun b!1296146 () Bool)

(declare-fun tp!377744 () Bool)

(declare-fun tp!377742 () Bool)

(assert (=> b!1296146 (= e!831020 (and tp!377744 tp!377742))))

(assert (= (and b!1294390 ((_ is ElementMatch!3543) (reg!3872 (regOne!7599 (regex!2229 (rule!3968 t2!34)))))) b!1296145))

(assert (= (and b!1294390 ((_ is Concat!5863) (reg!3872 (regOne!7599 (regex!2229 (rule!3968 t2!34)))))) b!1296146))

(assert (= (and b!1294390 ((_ is Star!3543) (reg!3872 (regOne!7599 (regex!2229 (rule!3968 t2!34)))))) b!1296147))

(assert (= (and b!1294390 ((_ is Union!3543) (reg!3872 (regOne!7599 (regex!2229 (rule!3968 t2!34)))))) b!1296148))

(declare-fun b!1296152 () Bool)

(declare-fun e!831021 () Bool)

(declare-fun tp!377748 () Bool)

(declare-fun tp!377751 () Bool)

(assert (=> b!1296152 (= e!831021 (and tp!377748 tp!377751))))

(declare-fun b!1296149 () Bool)

(assert (=> b!1296149 (= e!831021 tp_is_empty!6579)))

(assert (=> b!1294381 (= tp!377343 e!831021)))

(declare-fun b!1296151 () Bool)

(declare-fun tp!377750 () Bool)

(assert (=> b!1296151 (= e!831021 tp!377750)))

(declare-fun b!1296150 () Bool)

(declare-fun tp!377749 () Bool)

(declare-fun tp!377747 () Bool)

(assert (=> b!1296150 (= e!831021 (and tp!377749 tp!377747))))

(assert (= (and b!1294381 ((_ is ElementMatch!3543) (regOne!7598 (regTwo!7599 (regex!2229 (rule!3968 t1!34)))))) b!1296149))

(assert (= (and b!1294381 ((_ is Concat!5863) (regOne!7598 (regTwo!7599 (regex!2229 (rule!3968 t1!34)))))) b!1296150))

(assert (= (and b!1294381 ((_ is Star!3543) (regOne!7598 (regTwo!7599 (regex!2229 (rule!3968 t1!34)))))) b!1296151))

(assert (= (and b!1294381 ((_ is Union!3543) (regOne!7598 (regTwo!7599 (regex!2229 (rule!3968 t1!34)))))) b!1296152))

(declare-fun b!1296156 () Bool)

(declare-fun e!831022 () Bool)

(declare-fun tp!377753 () Bool)

(declare-fun tp!377756 () Bool)

(assert (=> b!1296156 (= e!831022 (and tp!377753 tp!377756))))

(declare-fun b!1296153 () Bool)

(assert (=> b!1296153 (= e!831022 tp_is_empty!6579)))

(assert (=> b!1294381 (= tp!377341 e!831022)))

(declare-fun b!1296155 () Bool)

(declare-fun tp!377755 () Bool)

(assert (=> b!1296155 (= e!831022 tp!377755)))

(declare-fun b!1296154 () Bool)

(declare-fun tp!377754 () Bool)

(declare-fun tp!377752 () Bool)

(assert (=> b!1296154 (= e!831022 (and tp!377754 tp!377752))))

(assert (= (and b!1294381 ((_ is ElementMatch!3543) (regTwo!7598 (regTwo!7599 (regex!2229 (rule!3968 t1!34)))))) b!1296153))

(assert (= (and b!1294381 ((_ is Concat!5863) (regTwo!7598 (regTwo!7599 (regex!2229 (rule!3968 t1!34)))))) b!1296154))

(assert (= (and b!1294381 ((_ is Star!3543) (regTwo!7598 (regTwo!7599 (regex!2229 (rule!3968 t1!34)))))) b!1296155))

(assert (= (and b!1294381 ((_ is Union!3543) (regTwo!7598 (regTwo!7599 (regex!2229 (rule!3968 t1!34)))))) b!1296156))

(declare-fun b!1296160 () Bool)

(declare-fun e!831023 () Bool)

(declare-fun tp!377758 () Bool)

(declare-fun tp!377761 () Bool)

(assert (=> b!1296160 (= e!831023 (and tp!377758 tp!377761))))

(declare-fun b!1296157 () Bool)

(assert (=> b!1296157 (= e!831023 tp_is_empty!6579)))

(assert (=> b!1294347 (= tp!377305 e!831023)))

(declare-fun b!1296159 () Bool)

(declare-fun tp!377760 () Bool)

(assert (=> b!1296159 (= e!831023 tp!377760)))

(declare-fun b!1296158 () Bool)

(declare-fun tp!377759 () Bool)

(declare-fun tp!377757 () Bool)

(assert (=> b!1296158 (= e!831023 (and tp!377759 tp!377757))))

(assert (= (and b!1294347 ((_ is ElementMatch!3543) (regOne!7598 (regOne!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296157))

(assert (= (and b!1294347 ((_ is Concat!5863) (regOne!7598 (regOne!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296158))

(assert (= (and b!1294347 ((_ is Star!3543) (regOne!7598 (regOne!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296159))

(assert (= (and b!1294347 ((_ is Union!3543) (regOne!7598 (regOne!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296160))

(declare-fun b!1296164 () Bool)

(declare-fun e!831024 () Bool)

(declare-fun tp!377763 () Bool)

(declare-fun tp!377766 () Bool)

(assert (=> b!1296164 (= e!831024 (and tp!377763 tp!377766))))

(declare-fun b!1296161 () Bool)

(assert (=> b!1296161 (= e!831024 tp_is_empty!6579)))

(assert (=> b!1294347 (= tp!377303 e!831024)))

(declare-fun b!1296163 () Bool)

(declare-fun tp!377765 () Bool)

(assert (=> b!1296163 (= e!831024 tp!377765)))

(declare-fun b!1296162 () Bool)

(declare-fun tp!377764 () Bool)

(declare-fun tp!377762 () Bool)

(assert (=> b!1296162 (= e!831024 (and tp!377764 tp!377762))))

(assert (= (and b!1294347 ((_ is ElementMatch!3543) (regTwo!7598 (regOne!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296161))

(assert (= (and b!1294347 ((_ is Concat!5863) (regTwo!7598 (regOne!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296162))

(assert (= (and b!1294347 ((_ is Star!3543) (regTwo!7598 (regOne!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296163))

(assert (= (and b!1294347 ((_ is Union!3543) (regTwo!7598 (regOne!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296164))

(declare-fun b!1296168 () Bool)

(declare-fun e!831025 () Bool)

(declare-fun tp!377768 () Bool)

(declare-fun tp!377771 () Bool)

(assert (=> b!1296168 (= e!831025 (and tp!377768 tp!377771))))

(declare-fun b!1296165 () Bool)

(assert (=> b!1296165 (= e!831025 tp_is_empty!6579)))

(assert (=> b!1294383 (= tp!377342 e!831025)))

(declare-fun b!1296167 () Bool)

(declare-fun tp!377770 () Bool)

(assert (=> b!1296167 (= e!831025 tp!377770)))

(declare-fun b!1296166 () Bool)

(declare-fun tp!377769 () Bool)

(declare-fun tp!377767 () Bool)

(assert (=> b!1296166 (= e!831025 (and tp!377769 tp!377767))))

(assert (= (and b!1294383 ((_ is ElementMatch!3543) (regOne!7599 (regTwo!7599 (regex!2229 (rule!3968 t1!34)))))) b!1296165))

(assert (= (and b!1294383 ((_ is Concat!5863) (regOne!7599 (regTwo!7599 (regex!2229 (rule!3968 t1!34)))))) b!1296166))

(assert (= (and b!1294383 ((_ is Star!3543) (regOne!7599 (regTwo!7599 (regex!2229 (rule!3968 t1!34)))))) b!1296167))

(assert (= (and b!1294383 ((_ is Union!3543) (regOne!7599 (regTwo!7599 (regex!2229 (rule!3968 t1!34)))))) b!1296168))

(declare-fun b!1296172 () Bool)

(declare-fun e!831026 () Bool)

(declare-fun tp!377773 () Bool)

(declare-fun tp!377776 () Bool)

(assert (=> b!1296172 (= e!831026 (and tp!377773 tp!377776))))

(declare-fun b!1296169 () Bool)

(assert (=> b!1296169 (= e!831026 tp_is_empty!6579)))

(assert (=> b!1294383 (= tp!377345 e!831026)))

(declare-fun b!1296171 () Bool)

(declare-fun tp!377775 () Bool)

(assert (=> b!1296171 (= e!831026 tp!377775)))

(declare-fun b!1296170 () Bool)

(declare-fun tp!377774 () Bool)

(declare-fun tp!377772 () Bool)

(assert (=> b!1296170 (= e!831026 (and tp!377774 tp!377772))))

(assert (= (and b!1294383 ((_ is ElementMatch!3543) (regTwo!7599 (regTwo!7599 (regex!2229 (rule!3968 t1!34)))))) b!1296169))

(assert (= (and b!1294383 ((_ is Concat!5863) (regTwo!7599 (regTwo!7599 (regex!2229 (rule!3968 t1!34)))))) b!1296170))

(assert (= (and b!1294383 ((_ is Star!3543) (regTwo!7599 (regTwo!7599 (regex!2229 (rule!3968 t1!34)))))) b!1296171))

(assert (= (and b!1294383 ((_ is Union!3543) (regTwo!7599 (regTwo!7599 (regex!2229 (rule!3968 t1!34)))))) b!1296172))

(declare-fun b!1296176 () Bool)

(declare-fun e!831027 () Bool)

(declare-fun tp!377778 () Bool)

(declare-fun tp!377781 () Bool)

(assert (=> b!1296176 (= e!831027 (and tp!377778 tp!377781))))

(declare-fun b!1296173 () Bool)

(assert (=> b!1296173 (= e!831027 tp_is_empty!6579)))

(assert (=> b!1294356 (= tp!377316 e!831027)))

(declare-fun b!1296175 () Bool)

(declare-fun tp!377780 () Bool)

(assert (=> b!1296175 (= e!831027 tp!377780)))

(declare-fun b!1296174 () Bool)

(declare-fun tp!377779 () Bool)

(declare-fun tp!377777 () Bool)

(assert (=> b!1296174 (= e!831027 (and tp!377779 tp!377777))))

(assert (= (and b!1294356 ((_ is ElementMatch!3543) (reg!3872 (regOne!7598 (regex!2229 (rule!3968 t2!34)))))) b!1296173))

(assert (= (and b!1294356 ((_ is Concat!5863) (reg!3872 (regOne!7598 (regex!2229 (rule!3968 t2!34)))))) b!1296174))

(assert (= (and b!1294356 ((_ is Star!3543) (reg!3872 (regOne!7598 (regex!2229 (rule!3968 t2!34)))))) b!1296175))

(assert (= (and b!1294356 ((_ is Union!3543) (reg!3872 (regOne!7598 (regex!2229 (rule!3968 t2!34)))))) b!1296176))

(declare-fun b!1296180 () Bool)

(declare-fun e!831028 () Bool)

(declare-fun tp!377783 () Bool)

(declare-fun tp!377786 () Bool)

(assert (=> b!1296180 (= e!831028 (and tp!377783 tp!377786))))

(declare-fun b!1296177 () Bool)

(assert (=> b!1296177 (= e!831028 tp_is_empty!6579)))

(assert (=> b!1294349 (= tp!377304 e!831028)))

(declare-fun b!1296179 () Bool)

(declare-fun tp!377785 () Bool)

(assert (=> b!1296179 (= e!831028 tp!377785)))

(declare-fun b!1296178 () Bool)

(declare-fun tp!377784 () Bool)

(declare-fun tp!377782 () Bool)

(assert (=> b!1296178 (= e!831028 (and tp!377784 tp!377782))))

(assert (= (and b!1294349 ((_ is ElementMatch!3543) (regOne!7599 (regOne!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296177))

(assert (= (and b!1294349 ((_ is Concat!5863) (regOne!7599 (regOne!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296178))

(assert (= (and b!1294349 ((_ is Star!3543) (regOne!7599 (regOne!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296179))

(assert (= (and b!1294349 ((_ is Union!3543) (regOne!7599 (regOne!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296180))

(declare-fun b!1296184 () Bool)

(declare-fun e!831029 () Bool)

(declare-fun tp!377788 () Bool)

(declare-fun tp!377791 () Bool)

(assert (=> b!1296184 (= e!831029 (and tp!377788 tp!377791))))

(declare-fun b!1296181 () Bool)

(assert (=> b!1296181 (= e!831029 tp_is_empty!6579)))

(assert (=> b!1294349 (= tp!377307 e!831029)))

(declare-fun b!1296183 () Bool)

(declare-fun tp!377790 () Bool)

(assert (=> b!1296183 (= e!831029 tp!377790)))

(declare-fun b!1296182 () Bool)

(declare-fun tp!377789 () Bool)

(declare-fun tp!377787 () Bool)

(assert (=> b!1296182 (= e!831029 (and tp!377789 tp!377787))))

(assert (= (and b!1294349 ((_ is ElementMatch!3543) (regTwo!7599 (regOne!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296181))

(assert (= (and b!1294349 ((_ is Concat!5863) (regTwo!7599 (regOne!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296182))

(assert (= (and b!1294349 ((_ is Star!3543) (regTwo!7599 (regOne!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296183))

(assert (= (and b!1294349 ((_ is Union!3543) (regTwo!7599 (regOne!7598 (regex!2229 (rule!3968 t1!34)))))) b!1296184))

(declare-fun b!1296188 () Bool)

(declare-fun e!831030 () Bool)

(declare-fun tp!377793 () Bool)

(declare-fun tp!377796 () Bool)

(assert (=> b!1296188 (= e!831030 (and tp!377793 tp!377796))))

(declare-fun b!1296185 () Bool)

(assert (=> b!1296185 (= e!831030 tp_is_empty!6579)))

(assert (=> b!1294340 (= tp!377296 e!831030)))

(declare-fun b!1296187 () Bool)

(declare-fun tp!377795 () Bool)

(assert (=> b!1296187 (= e!831030 tp!377795)))

(declare-fun b!1296186 () Bool)

(declare-fun tp!377794 () Bool)

(declare-fun tp!377792 () Bool)

(assert (=> b!1296186 (= e!831030 (and tp!377794 tp!377792))))

(assert (= (and b!1294340 ((_ is ElementMatch!3543) (reg!3872 (reg!3872 (regex!2229 (rule!3968 t2!34)))))) b!1296185))

(assert (= (and b!1294340 ((_ is Concat!5863) (reg!3872 (reg!3872 (regex!2229 (rule!3968 t2!34)))))) b!1296186))

(assert (= (and b!1294340 ((_ is Star!3543) (reg!3872 (reg!3872 (regex!2229 (rule!3968 t2!34)))))) b!1296187))

(assert (= (and b!1294340 ((_ is Union!3543) (reg!3872 (reg!3872 (regex!2229 (rule!3968 t2!34)))))) b!1296188))

(declare-fun b!1296192 () Bool)

(declare-fun e!831033 () Bool)

(declare-fun tp!377798 () Bool)

(declare-fun tp!377801 () Bool)

(assert (=> b!1296192 (= e!831033 (and tp!377798 tp!377801))))

(declare-fun b!1296189 () Bool)

(assert (=> b!1296189 (= e!831033 tp_is_empty!6579)))

(assert (=> b!1294401 (= tp!377368 e!831033)))

(declare-fun b!1296191 () Bool)

(declare-fun tp!377800 () Bool)

(assert (=> b!1296191 (= e!831033 tp!377800)))

(declare-fun b!1296190 () Bool)

(declare-fun tp!377799 () Bool)

(declare-fun tp!377797 () Bool)

(assert (=> b!1296190 (= e!831033 (and tp!377799 tp!377797))))

(assert (= (and b!1294401 ((_ is ElementMatch!3543) (regOne!7598 (regTwo!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296189))

(assert (= (and b!1294401 ((_ is Concat!5863) (regOne!7598 (regTwo!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296190))

(assert (= (and b!1294401 ((_ is Star!3543) (regOne!7598 (regTwo!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296191))

(assert (= (and b!1294401 ((_ is Union!3543) (regOne!7598 (regTwo!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296192))

(declare-fun b!1296203 () Bool)

(declare-fun e!831038 () Bool)

(declare-fun tp!377803 () Bool)

(declare-fun tp!377806 () Bool)

(assert (=> b!1296203 (= e!831038 (and tp!377803 tp!377806))))

(declare-fun b!1296200 () Bool)

(assert (=> b!1296200 (= e!831038 tp_is_empty!6579)))

(assert (=> b!1294401 (= tp!377366 e!831038)))

(declare-fun b!1296202 () Bool)

(declare-fun tp!377805 () Bool)

(assert (=> b!1296202 (= e!831038 tp!377805)))

(declare-fun b!1296201 () Bool)

(declare-fun tp!377804 () Bool)

(declare-fun tp!377802 () Bool)

(assert (=> b!1296201 (= e!831038 (and tp!377804 tp!377802))))

(assert (= (and b!1294401 ((_ is ElementMatch!3543) (regTwo!7598 (regTwo!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296200))

(assert (= (and b!1294401 ((_ is Concat!5863) (regTwo!7598 (regTwo!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296201))

(assert (= (and b!1294401 ((_ is Star!3543) (regTwo!7598 (regTwo!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296202))

(assert (= (and b!1294401 ((_ is Union!3543) (regTwo!7598 (regTwo!7598 (regex!2229 (h!18343 rules!2550)))))) b!1296203))

(declare-fun b!1296207 () Bool)

(declare-fun e!831039 () Bool)

(declare-fun tp!377808 () Bool)

(declare-fun tp!377811 () Bool)

(assert (=> b!1296207 (= e!831039 (and tp!377808 tp!377811))))

(declare-fun b!1296204 () Bool)

(assert (=> b!1296204 (= e!831039 tp_is_empty!6579)))

(assert (=> b!1294414 (= tp!377383 e!831039)))

(declare-fun b!1296206 () Bool)

(declare-fun tp!377810 () Bool)

(assert (=> b!1296206 (= e!831039 tp!377810)))

(declare-fun b!1296205 () Bool)

(declare-fun tp!377809 () Bool)

(declare-fun tp!377807 () Bool)

(assert (=> b!1296205 (= e!831039 (and tp!377809 tp!377807))))

(assert (= (and b!1294414 ((_ is ElementMatch!3543) (regOne!7598 (regTwo!7599 (regex!2229 (h!18343 rules!2550)))))) b!1296204))

(assert (= (and b!1294414 ((_ is Concat!5863) (regOne!7598 (regTwo!7599 (regex!2229 (h!18343 rules!2550)))))) b!1296205))

(assert (= (and b!1294414 ((_ is Star!3543) (regOne!7598 (regTwo!7599 (regex!2229 (h!18343 rules!2550)))))) b!1296206))

(assert (= (and b!1294414 ((_ is Union!3543) (regOne!7598 (regTwo!7599 (regex!2229 (h!18343 rules!2550)))))) b!1296207))

(declare-fun b!1296211 () Bool)

(declare-fun e!831040 () Bool)

(declare-fun tp!377813 () Bool)

(declare-fun tp!377816 () Bool)

(assert (=> b!1296211 (= e!831040 (and tp!377813 tp!377816))))

(declare-fun b!1296208 () Bool)

(assert (=> b!1296208 (= e!831040 tp_is_empty!6579)))

(assert (=> b!1294414 (= tp!377381 e!831040)))

(declare-fun b!1296210 () Bool)

(declare-fun tp!377815 () Bool)

(assert (=> b!1296210 (= e!831040 tp!377815)))

(declare-fun b!1296209 () Bool)

(declare-fun tp!377814 () Bool)

(declare-fun tp!377812 () Bool)

(assert (=> b!1296209 (= e!831040 (and tp!377814 tp!377812))))

(assert (= (and b!1294414 ((_ is ElementMatch!3543) (regTwo!7598 (regTwo!7599 (regex!2229 (h!18343 rules!2550)))))) b!1296208))

(assert (= (and b!1294414 ((_ is Concat!5863) (regTwo!7598 (regTwo!7599 (regex!2229 (h!18343 rules!2550)))))) b!1296209))

(assert (= (and b!1294414 ((_ is Star!3543) (regTwo!7598 (regTwo!7599 (regex!2229 (h!18343 rules!2550)))))) b!1296210))

(assert (= (and b!1294414 ((_ is Union!3543) (regTwo!7598 (regTwo!7599 (regex!2229 (h!18343 rules!2550)))))) b!1296211))

(declare-fun b_lambda!37061 () Bool)

(assert (= b_lambda!37049 (or d!365033 b_lambda!37061)))

(declare-fun bs!328967 () Bool)

(declare-fun d!366017 () Bool)

(assert (= bs!328967 (and d!366017 d!365033)))

(assert (=> bs!328967 (= (dynLambda!5663 lambda!50898 (h!18343 rules!2550)) (regex!2229 (h!18343 rules!2550)))))

(assert (=> b!1294448 d!366017))

(declare-fun b_lambda!37063 () Bool)

(assert (= b_lambda!37023 (or (and b!1294375 b_free!30653 (= (toChars!3291 (transformation!2229 (h!18343 (t!117317 (t!117317 rules!2550))))) (toChars!3291 (transformation!2229 (rule!3968 t2!34))))) (and b!1296099 b_free!30657 (= (toChars!3291 (transformation!2229 (h!18343 (t!117317 (t!117317 (t!117317 rules!2550)))))) (toChars!3291 (transformation!2229 (rule!3968 t2!34))))) b_lambda!37063)))

(declare-fun b_lambda!37065 () Bool)

(assert (= b_lambda!37059 (or d!365169 b_lambda!37065)))

(declare-fun bs!328968 () Bool)

(declare-fun d!366019 () Bool)

(assert (= bs!328968 (and d!366019 d!365169)))

(assert (=> bs!328968 (= (dynLambda!5670 lambda!50915 (h!18343 rules!2550)) (ruleValid!546 thiss!19762 (h!18343 rules!2550)))))

(assert (=> bs!328968 m!1445517))

(assert (=> b!1295506 d!366019))

(declare-fun b_lambda!37067 () Bool)

(assert (= b_lambda!37051 (or d!364803 b_lambda!37067)))

(declare-fun bs!328969 () Bool)

(declare-fun d!366023 () Bool)

(assert (= bs!328969 (and d!366023 d!364803)))

(assert (=> bs!328969 (= (dynLambda!5663 lambda!50865 (h!18343 (t!117317 rules!2550))) (regex!2229 (h!18343 (t!117317 rules!2550))))))

(assert (=> b!1294462 d!366023))

(declare-fun b_lambda!37069 () Bool)

(assert (= b_lambda!37025 (or (and b!1294375 b_free!30653 (= (toChars!3291 (transformation!2229 (h!18343 (t!117317 (t!117317 rules!2550))))) (toChars!3291 (transformation!2229 (rule!3968 t2!34))))) (and b!1296099 b_free!30657 (= (toChars!3291 (transformation!2229 (h!18343 (t!117317 (t!117317 (t!117317 rules!2550)))))) (toChars!3291 (transformation!2229 (rule!3968 t2!34))))) b_lambda!37069)))

(declare-fun b_lambda!37071 () Bool)

(assert (= b_lambda!37053 (or d!365037 b_lambda!37071)))

(declare-fun bs!328971 () Bool)

(declare-fun d!366025 () Bool)

(assert (= bs!328971 (and d!366025 d!365037)))

(assert (=> bs!328971 (= (dynLambda!5667 lambda!50903 (h!18349 (map!2818 rules!2550 lambda!50865))) (validRegex!1529 (h!18349 (map!2818 rules!2550 lambda!50865))))))

(declare-fun m!1447873 () Bool)

(assert (=> bs!328971 m!1447873))

(assert (=> b!1294490 d!366025))

(declare-fun b_lambda!37073 () Bool)

(assert (= b_lambda!37047 (or d!365033 b_lambda!37073)))

(declare-fun bs!328972 () Bool)

(declare-fun d!366029 () Bool)

(assert (= bs!328972 (and d!366029 d!365033)))

(assert (=> bs!328972 (= (dynLambda!5667 lambda!50899 (h!18349 (map!2818 rules!2550 lambda!50898))) (validRegex!1529 (h!18349 (map!2818 rules!2550 lambda!50898))))))

(declare-fun m!1447875 () Bool)

(assert (=> bs!328972 m!1447875))

(assert (=> b!1294445 d!366029))

(declare-fun b_lambda!37075 () Bool)

(assert (= b_lambda!37027 (or (and b!1294375 b_free!30653 (= (toChars!3291 (transformation!2229 (h!18343 (t!117317 (t!117317 rules!2550))))) (toChars!3291 (transformation!2229 (rule!3968 t1!34))))) (and b!1296099 b_free!30657 (= (toChars!3291 (transformation!2229 (h!18343 (t!117317 (t!117317 (t!117317 rules!2550)))))) (toChars!3291 (transformation!2229 (rule!3968 t1!34))))) b_lambda!37075)))

(declare-fun b_lambda!37077 () Bool)

(assert (= b_lambda!37029 (or (and b!1294375 b_free!30653 (= (toChars!3291 (transformation!2229 (h!18343 (t!117317 (t!117317 rules!2550))))) (toChars!3291 (transformation!2229 (rule!3968 t1!34))))) (and b!1296099 b_free!30657 (= (toChars!3291 (transformation!2229 (h!18343 (t!117317 (t!117317 (t!117317 rules!2550)))))) (toChars!3291 (transformation!2229 (rule!3968 t1!34))))) b_lambda!37077)))

(check-sat (not b!1295825) (not b!1294476) (not b!1296091) (not b!1295709) (not b!1296141) (not b!1295996) (not b!1296101) (not d!365429) (not d!365935) (not d!365759) (not b!1295880) (not b!1295937) (not bm!88903) (not b!1295429) (not d!365945) (not b!1294968) (not b!1296180) (not b!1296167) (not b!1296002) (not b!1295961) (not b!1296122) (not b!1296146) (not d!365557) (not b!1295915) (not d!365327) (not b!1294439) (not b!1295626) (not b!1295574) (not b!1295474) (not bm!88951) (not b!1295630) b_and!86311 (not b!1295930) (not b!1295728) (not b!1296026) (not b!1296179) (not bm!88864) (not b!1295153) (not b!1295610) (not b!1296086) (not d!365861) (not b!1294586) (not bm!88904) (not d!365355) (not b!1295332) (not d!365953) (not b!1296082) (not b!1295582) (not d!365191) (not b!1295603) (not d!365601) (not b!1295357) (not b!1296024) (not b!1295805) (not d!365965) (not bm!88960) (not b!1295958) (not d!365931) (not b!1296050) (not b!1295345) (not b!1295827) (not bm!88971) (not b!1296060) (not b!1295931) (not b!1295423) (not b!1295810) (not b_lambda!37077) (not b!1295417) (not b!1296079) b_and!86317 (not b!1295152) (not b!1294625) (not bm!88862) (not d!365867) (not b!1295333) (not b!1294822) (not b_lambda!37061) (not b!1296123) (not b!1295513) (not b!1295972) (not b!1295746) (not b!1295976) (not bm!88940) (not b!1295284) (not b!1295820) (not b!1295448) (not b!1294989) (not b!1294585) (not b!1294868) (not b!1296083) (not b!1296158) (not b!1296175) (not b!1294862) (not d!365559) (not b!1294583) (not d!365439) (not b!1296159) (not b!1295407) (not d!365505) b_and!86305 (not b!1295904) (not bm!88855) (not b!1295913) (not b!1295900) (not b!1295689) (not b!1295982) (not d!365199) (not b!1295408) (not b!1296170) (not b!1295911) (not b!1296025) (not b!1294962) (not b!1295814) (not b!1296066) (not b!1294838) (not b!1295859) (not d!365463) (not b!1295471) (not b!1296022) (not b!1295864) (not b!1296156) (not b!1295150) (not b_lambda!37075) (not bm!88786) (not b!1295650) (not b!1295687) (not d!365855) (not d!365423) (not b!1295935) (not b!1295480) (not d!365853) (not b!1296074) (not b!1296076) (not b!1295272) (not d!365639) (not b!1294405) (not b_lambda!37065) (not b!1295787) (not b!1295909) (not d!365905) (not b!1296203) (not b!1295189) (not b!1296134) (not b!1294454) (not b!1295201) (not b!1296016) (not b!1295579) (not b!1294499) (not b!1295225) (not b!1294861) (not b!1296151) (not b!1295979) (not b!1295406) (not bs!328968) (not b!1295283) (not b!1294820) (not d!365587) (not b!1295938) (not d!365889) (not b!1294629) (not b!1295440) (not b!1295819) (not b!1295875) (not b!1294898) (not d!365937) (not b!1295294) (not b!1296184) (not b!1295712) (not b!1296152) (not bm!88783) (not b!1295342) (not b!1295774) (not d!365339) (not d!365749) (not b_next!31349) (not b!1294478) (not b!1295984) (not b!1295581) (not b!1295041) (not bm!88913) b_and!86313 (not b!1294453) (not bs!328971) (not b!1294903) (not b!1295298) (not b!1296168) (not b!1296201) (not b!1295726) (not b!1294503) (not b!1295923) (not b!1294545) (not b!1295962) b_and!86239 (not b!1294446) (not b!1295892) (not b!1295841) (not b!1296130) (not b!1294460) (not b!1295628) (not b!1295300) (not d!365279) (not b!1295959) (not b!1295419) (not b!1294501) (not b!1295690) (not b!1295945) (not d!365985) (not d!365817) (not b!1295856) (not b!1296071) (not b_next!31337) (not b!1295986) (not bm!88916) (not bm!88897) (not d!365827) (not b!1295884) (not d!365501) (not b!1295851) b_and!86315 (not b!1295857) (not b!1295707) (not d!365189) (not b!1296020) (not b!1295861) (not b!1295955) (not b!1295922) (not d!365687) (not b!1296162) (not b!1296109) (not b!1295424) (not bm!88968) (not d!365317) (not b!1294866) (not b!1294901) (not d!365857) (not b_next!31361) b_and!86301 (not b!1296072) (not d!365219) (not b_lambda!37067) (not bm!88854) (not b!1296048) (not b!1295896) (not b!1295917) (not b!1296078) (not b!1296210) (not b!1294510) (not b!1295933) (not bm!88857) (not b!1294626) (not b!1294487) (not b!1295999) (not b!1295907) (not b!1295888) (not b!1296144) (not b!1295791) (not b!1295809) (not b!1296160) (not d!365901) (not b!1294639) (not b!1295442) (not d!365723) (not b!1296174) (not b!1295914) (not d!365761) (not b!1296147) (not b!1295669) (not b!1295863) (not b!1296037) (not d!365323) (not b!1295835) (not bm!88948) (not d!365467) (not b!1296088) (not bm!88929) (not d!365647) (not d!365963) (not d!365919) tp_is_empty!6579 (not d!365491) (not b!1295125) (not b!1294622) (not b!1295975) (not b!1295578) (not b!1296143) (not b!1296155) (not b!1295891) (not b!1296004) (not b!1295744) (not b!1295198) (not b!1294617) (not d!365197) (not b!1296095) (not b!1294970) (not d!365791) (not bm!88785) (not b!1295887) (not d!365987) (not b!1295899) (not b!1295042) (not b!1295881) (not b!1296009) (not b!1296107) (not b!1295811) (not d!365217) (not b!1296087) b_and!86303 (not b!1296038) (not b!1296191) (not d!365975) (not b!1296211) (not b!1296045) (not b!1295995) (not b!1295837) (not b!1296011) (not b!1294474) (not b!1294904) (not b!1296013) (not bm!88952) (not b!1296138) (not b!1295231) (not b!1296209) (not d!365353) (not b!1296172) (not b!1294582) (not b!1294811) (not b!1295697) (not b!1295853) (not b!1295991) (not b!1295990) (not b!1295792) (not d!365825) (not b!1295879) (not b!1295296) (not b!1296040) (not d!365649) (not b!1294638) (not b!1295927) (not b!1295848) (not b!1295816) (not b!1295954) (not b!1295942) (not d!365619) (not b!1296190) (not b!1296207) (not d!365571) (not d!365951) (not b!1296148) (not b!1295912) (not b!1295877) (not b!1295845) (not b!1296094) (not b!1294618) (not d!365655) (not b!1296166) (not bm!88930) (not bm!88969) (not b!1295072) (not d!365567) (not b!1295918) (not d!365345) (not b!1295977) (not b!1295314) (not b!1296030) (not b!1296063) (not b!1295681) (not b!1295901) (not b!1294990) (not d!365785) (not b!1295611) (not b!1295312) (not d!365443) (not b!1294809) (not d!365845) (not d!365441) (not b!1295946) (not bm!88908) (not b!1295941) (not b!1295735) (not d!365663) (not b!1295926) (not b!1295839) (not b!1295425) (not b!1296106) (not b!1296154) (not b!1295824) (not b!1295240) (not b!1294975) (not b!1296041) (not b!1295949) (not b!1295730) (not b!1296031) (not b!1296206) (not b!1295445) (not b!1295874) (not bm!88863) (not b!1296142) (not d!365833) (not b!1294497) (not b!1296098) (not b!1296059) (not d!365699) (not b!1295064) (not b!1295829) (not d!365589) (not d!365573) (not b_lambda!37021) (not b!1295725) (not d!365787) (not d!365325) (not b!1295679) (not b!1296104) (not b!1296012) (not d!365859) (not b!1295208) (not b!1295274) (not b!1296068) (not b!1296121) (not b!1295785) (not b!1295916) (not b!1295723) (not b!1295860) (not b!1295836) (not b!1296187) (not b!1295367) (not b!1295919) (not d!365645) (not b!1295750) (not d!365781) (not b!1296171) (not b!1295358) (not d!365445) (not b!1294492) (not b!1295170) (not bm!88936) (not b!1295280) (not b!1295271) (not b!1294440) (not b!1295229) (not b!1294495) (not d!365269) (not b!1295334) (not b!1295950) (not b!1294976) (not b!1294462) (not b!1296032) (not b!1295806) (not bm!88937) (not b!1295812) (not b!1295512) (not b!1294572) (not b_next!31331) (not b!1295469) (not b!1296019) (not b!1295876) (not b!1294615) (not b!1295157) (not b!1296067) (not b!1296084) (not b!1295441) (not b!1295443) (not b_next!31339) (not b!1296183) (not b!1295684) (not b!1295844) (not b_lambda!37071) (not b!1294812) (not b!1294623) (not b!1295683) (not b!1295957) (not bm!88965) (not b!1296186) b_and!86299 (not d!365891) (not b!1296054) (not d!365499) (not d!365903) (not b!1295409) (not b!1296164) (not b!1295815) (not bs!328972) (not b!1295192) (not b!1295329) (not b!1295475) (not b!1296042) (not b!1295885) (not d!365955) (not b!1295789) b_and!86297 (not b!1295710) (not b!1295366) (not b!1294475) (not b!1295823) (not b!1295351) (not b_next!31359) (not d!365961) (not b!1295199) (not b!1295947) (not b!1296131) (not b!1294494) (not b!1294872) (not b!1295010) (not b!1295943) (not d!365549) (not b!1295236) (not d!365193) (not b!1295897) (not bm!88954) (not b!1296000) (not b!1295070) (not d!365305) (not b!1296036) (not b!1295985) (not b!1295088) (not b!1296108) (not b!1295279) (not b!1295929) (not b_lambda!37043) (not b!1295295) (not b!1295575) (not b!1295963) (not b!1296188) (not b!1295748) (not b!1295921) (not bm!88944) (not b!1295847) (not b!1295980) (not b!1296003) (not b!1295852) (not b!1295731) (not b!1294614) (not d!365593) (not d!365187) (not b!1295204) (not d!365527) (not b!1295685) (not b!1294505) (not b!1295692) (not b!1295426) (not b!1296097) (not b!1295493) (not b!1295303) (not b!1295356) (not b!1294370) (not b!1295828) (not b!1295695) (not d!365703) (not b!1295903) (not b!1294827) (not b!1295239) (not b!1295813) (not b!1294864) (not b!1295290) (not b_next!31357) (not b!1295428) (not b!1295849) (not b!1296092) (not b!1295068) (not b!1296176) (not d!365225) (not b!1294427) (not b!1295040) (not b!1295840) (not b!1294813) (not b!1294448) (not b!1295421) (not b!1296007) (not b!1296080) (not bm!88909) (not b!1295293) (not b!1295194) (not b!1296044) (not d!365469) (not b!1296015) (not b!1294902) (not b!1295998) (not b!1296021) (not b!1295674) (not b!1296090) (not b!1296052) (not b!1295953) (not b!1294547) (not d!365211) (not b!1295209) (not d!365907) (not b!1295196) (not b!1296049) (not d!365977) (not b!1296064) (not b!1295071) (not b!1296008) (not b!1296135) (not b!1295215) (not b!1294825) (not b!1296133) (not d!365895) (not b!1295286) (not b!1295344) (not d!365255) (not b!1295992) (not b!1294993) (not b!1295981) (not b_next!31335) (not b!1295908) (not d!365461) (not b!1295543) (not bm!88901) (not d!365947) (not b!1294823) (not d!365487) (not b!1295895) (not b!1295479) (not b!1296053) (not b!1295939) (not b!1295126) (not b!1294863) (not b!1296178) (not b!1295776) (not b!1296075) (not d!365233) (not b!1294635) (not b!1295925) (not b_lambda!37063) (not b_next!31341) (not bm!88899) (not b!1295347) (not d!365829) (not d!365267) (not b!1294491) (not b!1296192) (not b!1294573) (not b!1294963) (not b!1295893) (not b!1295190) (not b!1296182) (not b!1295191) (not b!1296137) (not b!1296046) (not b!1295865) (not b!1295855) (not d!365831) (not b!1295973) (not b!1294876) (not b!1295905) (not b!1294860) (not b!1295507) (not b!1295934) (not b!1295427) (not b!1295155) (not d!365949) (not b!1295470) (not b!1295168) (not b!1295230) (not bm!88928) (not b!1295292) (not b!1295883) (not b_next!31347) (not b!1296017) (not b!1294900) (not b!1294828) (not b!1294438) (not d!365531) (not b!1295580) (not b!1295297) (not b!1296062) (not d!365209) (not b!1296005) (not d!365585) (not b!1295696) (not b!1296205) (not d!365515) (not b!1295127) (not b!1296096) (not b!1296058) (not b_next!31355) (not d!365319) (not b!1295405) (not b!1295609) b_and!86243 (not d!365865) (not b!1296139) (not d!365333) (not d!365435) (not b!1295193) (not b_lambda!37073) (not b!1296103) (not d!365851) (not d!365221) (not b!1295994) (not b!1295889) (not b!1296070) (not b!1295288) (not bm!88964) (not b!1295971) (not b!1295444) (not b!1295404) (not b!1296105) (not b_lambda!37069) (not d!365633) (not d!365427) (not b!1294873) (not b!1295843) b_and!86247 (not b!1295951) (not b!1295039) (not b!1296102) (not b_next!31333) (not b!1296202) (not b!1295556) (not b!1294436) (not b_lambda!37045) (not b!1296129) (not b!1295544) (not b!1296163) (not b!1296150) (not b!1295164) (not bm!88788))
(check-sat b_and!86311 b_and!86317 b_and!86305 (not b_next!31349) b_and!86303 (not b_next!31359) (not b_next!31357) (not b_next!31347) b_and!86313 b_and!86239 (not b_next!31337) b_and!86315 (not b_next!31361) b_and!86301 (not b_next!31331) (not b_next!31339) b_and!86299 b_and!86297 (not b_next!31335) (not b_next!31341) (not b_next!31355) b_and!86243 (not b_next!31333) b_and!86247)

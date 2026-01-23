; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!59290 () Bool)

(assert start!59290)

(declare-fun b!618165 () Bool)

(declare-fun b_free!17849 () Bool)

(declare-fun b_next!17865 () Bool)

(assert (=> b!618165 (= b_free!17849 (not b_next!17865))))

(declare-fun tp!191381 () Bool)

(declare-fun b_and!61363 () Bool)

(assert (=> b!618165 (= tp!191381 b_and!61363)))

(declare-fun b_free!17851 () Bool)

(declare-fun b_next!17867 () Bool)

(assert (=> b!618165 (= b_free!17851 (not b_next!17867))))

(declare-fun tp!191376 () Bool)

(declare-fun b_and!61365 () Bool)

(assert (=> b!618165 (= tp!191376 b_and!61365)))

(declare-fun b!618160 () Bool)

(declare-fun b_free!17853 () Bool)

(declare-fun b_next!17869 () Bool)

(assert (=> b!618160 (= b_free!17853 (not b_next!17869))))

(declare-fun tp!191384 () Bool)

(declare-fun b_and!61367 () Bool)

(assert (=> b!618160 (= tp!191384 b_and!61367)))

(declare-fun b_free!17855 () Bool)

(declare-fun b_next!17871 () Bool)

(assert (=> b!618160 (= b_free!17855 (not b_next!17871))))

(declare-fun tp!191383 () Bool)

(declare-fun b_and!61369 () Bool)

(assert (=> b!618160 (= tp!191383 b_and!61369)))

(declare-fun res!269211 () Bool)

(declare-fun e!374966 () Bool)

(assert (=> start!59290 (=> (not res!269211) (not e!374966))))

(declare-datatypes ((LexerInterface!1156 0))(
  ( (LexerInterfaceExt!1153 (__x!4484 Int)) (Lexer!1154) )
))
(declare-fun thiss!25598 () LexerInterface!1156)

(assert (=> start!59290 (= res!269211 (is-Lexer!1154 thiss!25598))))

(assert (=> start!59290 e!374966))

(declare-fun e!374962 () Bool)

(assert (=> start!59290 e!374962))

(declare-fun e!374960 () Bool)

(assert (=> start!59290 e!374960))

(declare-fun e!374961 () Bool)

(assert (=> start!59290 e!374961))

(assert (=> start!59290 true))

(declare-fun e!374967 () Bool)

(assert (=> start!59290 e!374967))

(declare-fun b!618156 () Bool)

(declare-fun tp_is_empty!3563 () Bool)

(declare-fun tp!191380 () Bool)

(assert (=> b!618156 (= e!374967 (and tp_is_empty!3563 tp!191380))))

(declare-fun b!618157 () Bool)

(declare-fun e!374963 () Bool)

(declare-fun tp!191382 () Bool)

(assert (=> b!618157 (= e!374961 (and e!374963 tp!191382))))

(declare-fun b!618158 () Bool)

(declare-fun res!269210 () Bool)

(assert (=> b!618158 (=> (not res!269210) (not e!374966))))

(declare-datatypes ((List!6271 0))(
  ( (Nil!6261) (Cons!6261 (h!11662 (_ BitVec 16)) (t!81510 List!6271)) )
))
(declare-datatypes ((TokenValue!1292 0))(
  ( (FloatLiteralValue!2584 (text!9489 List!6271)) (TokenValueExt!1291 (__x!4485 Int)) (Broken!6460 (value!40977 List!6271)) (Object!1301) (End!1292) (Def!1292) (Underscore!1292) (Match!1292) (Else!1292) (Error!1292) (Case!1292) (If!1292) (Extends!1292) (Abstract!1292) (Class!1292) (Val!1292) (DelimiterValue!2584 (del!1352 List!6271)) (KeywordValue!1298 (value!40978 List!6271)) (CommentValue!2584 (value!40979 List!6271)) (WhitespaceValue!2584 (value!40980 List!6271)) (IndentationValue!1292 (value!40981 List!6271)) (String!8209) (Int32!1292) (Broken!6461 (value!40982 List!6271)) (Boolean!1293) (Unit!11400) (OperatorValue!1295 (op!1352 List!6271)) (IdentifierValue!2584 (value!40983 List!6271)) (IdentifierValue!2585 (value!40984 List!6271)) (WhitespaceValue!2585 (value!40985 List!6271)) (True!2584) (False!2584) (Broken!6462 (value!40986 List!6271)) (Broken!6463 (value!40987 List!6271)) (True!2585) (RightBrace!1292) (RightBracket!1292) (Colon!1292) (Null!1292) (Comma!1292) (LeftBracket!1292) (False!2585) (LeftBrace!1292) (ImaginaryLiteralValue!1292 (text!9490 List!6271)) (StringLiteralValue!3876 (value!40988 List!6271)) (EOFValue!1292 (value!40989 List!6271)) (IdentValue!1292 (value!40990 List!6271)) (DelimiterValue!2585 (value!40991 List!6271)) (DedentValue!1292 (value!40992 List!6271)) (NewLineValue!1292 (value!40993 List!6271)) (IntegerValue!3876 (value!40994 (_ BitVec 32)) (text!9491 List!6271)) (IntegerValue!3877 (value!40995 Int) (text!9492 List!6271)) (Times!1292) (Or!1292) (Equal!1292) (Minus!1292) (Broken!6464 (value!40996 List!6271)) (And!1292) (Div!1292) (LessEqual!1292) (Mod!1292) (Concat!2894) (Not!1292) (Plus!1292) (SpaceValue!1292 (value!40997 List!6271)) (IntegerValue!3878 (value!40998 Int) (text!9493 List!6271)) (StringLiteralValue!3877 (text!9494 List!6271)) (FloatLiteralValue!2585 (text!9495 List!6271)) (BytesLiteralValue!1292 (value!40999 List!6271)) (CommentValue!2585 (value!41000 List!6271)) (StringLiteralValue!3878 (value!41001 List!6271)) (ErrorTokenValue!1292 (msg!1353 List!6271)) )
))
(declare-datatypes ((C!4130 0))(
  ( (C!4131 (val!2291 Int)) )
))
(declare-datatypes ((Regex!1602 0))(
  ( (ElementMatch!1602 (c!113855 C!4130)) (Concat!2895 (regOne!3716 Regex!1602) (regTwo!3716 Regex!1602)) (EmptyExpr!1602) (Star!1602 (reg!1931 Regex!1602)) (EmptyLang!1602) (Union!1602 (regOne!3717 Regex!1602) (regTwo!3717 Regex!1602)) )
))
(declare-datatypes ((String!8210 0))(
  ( (String!8211 (value!41002 String)) )
))
(declare-datatypes ((List!6272 0))(
  ( (Nil!6262) (Cons!6262 (h!11663 C!4130) (t!81511 List!6272)) )
))
(declare-datatypes ((IArray!3971 0))(
  ( (IArray!3972 (innerList!2043 List!6272)) )
))
(declare-datatypes ((Conc!1985 0))(
  ( (Node!1985 (left!4977 Conc!1985) (right!5307 Conc!1985) (csize!4200 Int) (cheight!2196 Int)) (Leaf!3128 (xs!4622 IArray!3971) (csize!4201 Int)) (Empty!1985) )
))
(declare-datatypes ((BalanceConc!3978 0))(
  ( (BalanceConc!3979 (c!113856 Conc!1985)) )
))
(declare-datatypes ((TokenValueInjection!2352 0))(
  ( (TokenValueInjection!2353 (toValue!2181 Int) (toChars!2040 Int)) )
))
(declare-datatypes ((Rule!2336 0))(
  ( (Rule!2337 (regex!1268 Regex!1602) (tag!1530 String!8210) (isSeparator!1268 Bool) (transformation!1268 TokenValueInjection!2352)) )
))
(declare-datatypes ((List!6273 0))(
  ( (Nil!6263) (Cons!6263 (h!11664 Rule!2336) (t!81512 List!6273)) )
))
(declare-fun rules!3744 () List!6273)

(declare-fun input!3215 () List!6272)

(declare-datatypes ((Token!2260 0))(
  ( (Token!2261 (value!41003 TokenValue!1292) (rule!2058 Rule!2336) (size!4878 Int) (originalCharacters!1301 List!6272)) )
))
(declare-datatypes ((tuple2!7068 0))(
  ( (tuple2!7069 (_1!3798 Token!2260) (_2!3798 List!6272)) )
))
(declare-datatypes ((Option!1613 0))(
  ( (None!1612) (Some!1612 (v!16535 tuple2!7068)) )
))
(declare-fun isEmpty!4505 (Option!1613) Bool)

(declare-fun maxPrefix!846 (LexerInterface!1156 List!6273 List!6272) Option!1613)

(assert (=> b!618158 (= res!269210 (isEmpty!4505 (maxPrefix!846 thiss!25598 rules!3744 input!3215)))))

(declare-fun r!3983 () Rule!2336)

(declare-fun e!374968 () Bool)

(declare-fun tp!191377 () Bool)

(declare-fun b!618159 () Bool)

(declare-fun inv!7940 (String!8210) Bool)

(declare-fun inv!7943 (TokenValueInjection!2352) Bool)

(assert (=> b!618159 (= e!374962 (and tp!191377 (inv!7940 (tag!1530 r!3983)) (inv!7943 (transformation!1268 r!3983)) e!374968))))

(declare-fun e!374959 () Bool)

(assert (=> b!618160 (= e!374959 (and tp!191384 tp!191383))))

(declare-fun b!618161 () Bool)

(declare-fun res!269212 () Bool)

(assert (=> b!618161 (=> (not res!269212) (not e!374966))))

(declare-fun rulesInvariant!1117 (LexerInterface!1156 List!6273) Bool)

(assert (=> b!618161 (= res!269212 (rulesInvariant!1117 thiss!25598 rules!3744))))

(declare-fun b!618162 () Bool)

(declare-fun rulesValidInductive!485 (LexerInterface!1156 List!6273) Bool)

(assert (=> b!618162 (= e!374966 (not (rulesValidInductive!485 thiss!25598 rules!3744)))))

(declare-fun ruleValid!447 (LexerInterface!1156 Rule!2336) Bool)

(assert (=> b!618162 (ruleValid!447 thiss!25598 r!3983)))

(declare-datatypes ((Unit!11401 0))(
  ( (Unit!11402) )
))
(declare-fun lt!264675 () Unit!11401)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!291 (LexerInterface!1156 Rule!2336 List!6273) Unit!11401)

(assert (=> b!618162 (= lt!264675 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!291 thiss!25598 r!3983 rules!3744))))

(declare-fun b!618163 () Bool)

(declare-fun tp!191378 () Bool)

(assert (=> b!618163 (= e!374960 (and tp_is_empty!3563 tp!191378))))

(declare-fun b!618164 () Bool)

(declare-fun tp!191379 () Bool)

(assert (=> b!618164 (= e!374963 (and tp!191379 (inv!7940 (tag!1530 (h!11664 rules!3744))) (inv!7943 (transformation!1268 (h!11664 rules!3744))) e!374959))))

(assert (=> b!618165 (= e!374968 (and tp!191381 tp!191376))))

(declare-fun b!618166 () Bool)

(declare-fun res!269213 () Bool)

(assert (=> b!618166 (=> (not res!269213) (not e!374966))))

(declare-fun isEmpty!4506 (List!6273) Bool)

(assert (=> b!618166 (= res!269213 (not (isEmpty!4506 rules!3744)))))

(declare-fun b!618167 () Bool)

(declare-fun res!269208 () Bool)

(assert (=> b!618167 (=> (not res!269208) (not e!374966))))

(declare-fun contains!1485 (List!6273 Rule!2336) Bool)

(assert (=> b!618167 (= res!269208 (contains!1485 rules!3744 r!3983))))

(declare-fun b!618168 () Bool)

(declare-fun res!269209 () Bool)

(assert (=> b!618168 (=> (not res!269209) (not e!374966))))

(declare-fun p!2908 () List!6272)

(declare-fun isPrefix!898 (List!6272 List!6272) Bool)

(assert (=> b!618168 (= res!269209 (isPrefix!898 p!2908 input!3215))))

(assert (= (and start!59290 res!269211) b!618168))

(assert (= (and b!618168 res!269209) b!618166))

(assert (= (and b!618166 res!269213) b!618161))

(assert (= (and b!618161 res!269212) b!618167))

(assert (= (and b!618167 res!269208) b!618158))

(assert (= (and b!618158 res!269210) b!618162))

(assert (= b!618159 b!618165))

(assert (= start!59290 b!618159))

(assert (= (and start!59290 (is-Cons!6262 p!2908)) b!618163))

(assert (= b!618164 b!618160))

(assert (= b!618157 b!618164))

(assert (= (and start!59290 (is-Cons!6263 rules!3744)) b!618157))

(assert (= (and start!59290 (is-Cons!6262 input!3215)) b!618156))

(declare-fun m!886243 () Bool)

(assert (=> b!618168 m!886243))

(declare-fun m!886245 () Bool)

(assert (=> b!618164 m!886245))

(declare-fun m!886247 () Bool)

(assert (=> b!618164 m!886247))

(declare-fun m!886249 () Bool)

(assert (=> b!618161 m!886249))

(declare-fun m!886251 () Bool)

(assert (=> b!618159 m!886251))

(declare-fun m!886253 () Bool)

(assert (=> b!618159 m!886253))

(declare-fun m!886255 () Bool)

(assert (=> b!618158 m!886255))

(assert (=> b!618158 m!886255))

(declare-fun m!886257 () Bool)

(assert (=> b!618158 m!886257))

(declare-fun m!886259 () Bool)

(assert (=> b!618166 m!886259))

(declare-fun m!886261 () Bool)

(assert (=> b!618167 m!886261))

(declare-fun m!886263 () Bool)

(assert (=> b!618162 m!886263))

(declare-fun m!886265 () Bool)

(assert (=> b!618162 m!886265))

(declare-fun m!886267 () Bool)

(assert (=> b!618162 m!886267))

(push 1)

(assert (not b!618168))

(assert b_and!61365)

(assert b_and!61369)

(assert (not b_next!17865))

(assert (not b!618167))

(assert b_and!61367)

(assert tp_is_empty!3563)

(assert (not b_next!17871))

(assert (not b!618162))

(assert b_and!61363)

(assert (not b!618158))

(assert (not b!618163))

(assert (not b!618164))

(assert (not b_next!17869))

(assert (not b!618161))

(assert (not b!618157))

(assert (not b!618166))

(assert (not b!618159))

(assert (not b!618156))

(assert (not b_next!17867))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!17869))

(assert b_and!61365)

(assert b_and!61369)

(assert (not b_next!17865))

(assert b_and!61367)

(assert (not b_next!17871))

(assert (not b_next!17867))

(assert b_and!61363)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!216807 () Bool)

(assert (=> d!216807 true))

(declare-fun lt!264704 () Bool)

(declare-fun lambda!16245 () Int)

(declare-fun forall!1568 (List!6273 Int) Bool)

(assert (=> d!216807 (= lt!264704 (forall!1568 rules!3744 lambda!16245))))

(declare-fun e!375038 () Bool)

(assert (=> d!216807 (= lt!264704 e!375038)))

(declare-fun res!269291 () Bool)

(assert (=> d!216807 (=> res!269291 e!375038)))

(assert (=> d!216807 (= res!269291 (not (is-Cons!6263 rules!3744)))))

(assert (=> d!216807 (= (rulesValidInductive!485 thiss!25598 rules!3744) lt!264704)))

(declare-fun b!618268 () Bool)

(declare-fun e!375039 () Bool)

(assert (=> b!618268 (= e!375038 e!375039)))

(declare-fun res!269290 () Bool)

(assert (=> b!618268 (=> (not res!269290) (not e!375039))))

(assert (=> b!618268 (= res!269290 (ruleValid!447 thiss!25598 (h!11664 rules!3744)))))

(declare-fun b!618269 () Bool)

(assert (=> b!618269 (= e!375039 (rulesValidInductive!485 thiss!25598 (t!81512 rules!3744)))))

(assert (= (and d!216807 (not res!269291)) b!618268))

(assert (= (and b!618268 res!269290) b!618269))

(declare-fun m!886357 () Bool)

(assert (=> d!216807 m!886357))

(declare-fun m!886359 () Bool)

(assert (=> b!618268 m!886359))

(declare-fun m!886361 () Bool)

(assert (=> b!618269 m!886361))

(assert (=> b!618162 d!216807))

(declare-fun d!216829 () Bool)

(declare-fun res!269296 () Bool)

(declare-fun e!375042 () Bool)

(assert (=> d!216829 (=> (not res!269296) (not e!375042))))

(declare-fun validRegex!554 (Regex!1602) Bool)

(assert (=> d!216829 (= res!269296 (validRegex!554 (regex!1268 r!3983)))))

(assert (=> d!216829 (= (ruleValid!447 thiss!25598 r!3983) e!375042)))

(declare-fun b!618276 () Bool)

(declare-fun res!269297 () Bool)

(assert (=> b!618276 (=> (not res!269297) (not e!375042))))

(declare-fun nullable!459 (Regex!1602) Bool)

(assert (=> b!618276 (= res!269297 (not (nullable!459 (regex!1268 r!3983))))))

(declare-fun b!618277 () Bool)

(assert (=> b!618277 (= e!375042 (not (= (tag!1530 r!3983) (String!8211 ""))))))

(assert (= (and d!216829 res!269296) b!618276))

(assert (= (and b!618276 res!269297) b!618277))

(declare-fun m!886363 () Bool)

(assert (=> d!216829 m!886363))

(declare-fun m!886365 () Bool)

(assert (=> b!618276 m!886365))

(assert (=> b!618162 d!216829))

(declare-fun d!216831 () Bool)

(assert (=> d!216831 (ruleValid!447 thiss!25598 r!3983)))

(declare-fun lt!264707 () Unit!11401)

(declare-fun choose!4533 (LexerInterface!1156 Rule!2336 List!6273) Unit!11401)

(assert (=> d!216831 (= lt!264707 (choose!4533 thiss!25598 r!3983 rules!3744))))

(assert (=> d!216831 (contains!1485 rules!3744 r!3983)))

(assert (=> d!216831 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!291 thiss!25598 r!3983 rules!3744) lt!264707)))

(declare-fun bs!71867 () Bool)

(assert (= bs!71867 d!216831))

(assert (=> bs!71867 m!886265))

(declare-fun m!886367 () Bool)

(assert (=> bs!71867 m!886367))

(assert (=> bs!71867 m!886261))

(assert (=> b!618162 d!216831))

(declare-fun d!216833 () Bool)

(declare-fun lt!264710 () Bool)

(declare-fun content!1140 (List!6273) (Set Rule!2336))

(assert (=> d!216833 (= lt!264710 (set.member r!3983 (content!1140 rules!3744)))))

(declare-fun e!375048 () Bool)

(assert (=> d!216833 (= lt!264710 e!375048)))

(declare-fun res!269303 () Bool)

(assert (=> d!216833 (=> (not res!269303) (not e!375048))))

(assert (=> d!216833 (= res!269303 (is-Cons!6263 rules!3744))))

(assert (=> d!216833 (= (contains!1485 rules!3744 r!3983) lt!264710)))

(declare-fun b!618282 () Bool)

(declare-fun e!375047 () Bool)

(assert (=> b!618282 (= e!375048 e!375047)))

(declare-fun res!269302 () Bool)

(assert (=> b!618282 (=> res!269302 e!375047)))

(assert (=> b!618282 (= res!269302 (= (h!11664 rules!3744) r!3983))))

(declare-fun b!618283 () Bool)

(assert (=> b!618283 (= e!375047 (contains!1485 (t!81512 rules!3744) r!3983))))

(assert (= (and d!216833 res!269303) b!618282))

(assert (= (and b!618282 (not res!269302)) b!618283))

(declare-fun m!886369 () Bool)

(assert (=> d!216833 m!886369))

(declare-fun m!886371 () Bool)

(assert (=> d!216833 m!886371))

(declare-fun m!886373 () Bool)

(assert (=> b!618283 m!886373))

(assert (=> b!618167 d!216833))

(declare-fun d!216835 () Bool)

(assert (=> d!216835 (= (isEmpty!4505 (maxPrefix!846 thiss!25598 rules!3744 input!3215)) (not (is-Some!1612 (maxPrefix!846 thiss!25598 rules!3744 input!3215))))))

(assert (=> b!618158 d!216835))

(declare-fun b!618302 () Bool)

(declare-fun e!375056 () Bool)

(declare-fun lt!264721 () Option!1613)

(declare-fun get!2401 (Option!1613) tuple2!7068)

(assert (=> b!618302 (= e!375056 (contains!1485 rules!3744 (rule!2058 (_1!3798 (get!2401 lt!264721)))))))

(declare-fun bm!41088 () Bool)

(declare-fun call!41093 () Option!1613)

(declare-fun maxPrefixOneRule!498 (LexerInterface!1156 Rule!2336 List!6272) Option!1613)

(assert (=> bm!41088 (= call!41093 (maxPrefixOneRule!498 thiss!25598 (h!11664 rules!3744) input!3215))))

(declare-fun b!618303 () Bool)

(declare-fun res!269319 () Bool)

(assert (=> b!618303 (=> (not res!269319) (not e!375056))))

(declare-fun matchR!686 (Regex!1602 List!6272) Bool)

(declare-fun list!2612 (BalanceConc!3978) List!6272)

(declare-fun charsOf!880 (Token!2260) BalanceConc!3978)

(assert (=> b!618303 (= res!269319 (matchR!686 (regex!1268 (rule!2058 (_1!3798 (get!2401 lt!264721)))) (list!2612 (charsOf!880 (_1!3798 (get!2401 lt!264721))))))))

(declare-fun b!618304 () Bool)

(declare-fun res!269318 () Bool)

(assert (=> b!618304 (=> (not res!269318) (not e!375056))))

(declare-fun ++!1739 (List!6272 List!6272) List!6272)

(assert (=> b!618304 (= res!269318 (= (++!1739 (list!2612 (charsOf!880 (_1!3798 (get!2401 lt!264721)))) (_2!3798 (get!2401 lt!264721))) input!3215))))

(declare-fun b!618305 () Bool)

(declare-fun e!375057 () Option!1613)

(declare-fun lt!264725 () Option!1613)

(declare-fun lt!264723 () Option!1613)

(assert (=> b!618305 (= e!375057 (ite (and (is-None!1612 lt!264725) (is-None!1612 lt!264723)) None!1612 (ite (is-None!1612 lt!264723) lt!264725 (ite (is-None!1612 lt!264725) lt!264723 (ite (>= (size!4878 (_1!3798 (v!16535 lt!264725))) (size!4878 (_1!3798 (v!16535 lt!264723)))) lt!264725 lt!264723)))))))

(assert (=> b!618305 (= lt!264725 call!41093)))

(assert (=> b!618305 (= lt!264723 (maxPrefix!846 thiss!25598 (t!81512 rules!3744) input!3215))))

(declare-fun b!618306 () Bool)

(declare-fun e!375055 () Bool)

(assert (=> b!618306 (= e!375055 e!375056)))

(declare-fun res!269324 () Bool)

(assert (=> b!618306 (=> (not res!269324) (not e!375056))))

(declare-fun isDefined!1413 (Option!1613) Bool)

(assert (=> b!618306 (= res!269324 (isDefined!1413 lt!264721))))

(declare-fun b!618307 () Bool)

(declare-fun res!269323 () Bool)

(assert (=> b!618307 (=> (not res!269323) (not e!375056))))

(declare-fun size!4880 (List!6272) Int)

(assert (=> b!618307 (= res!269323 (< (size!4880 (_2!3798 (get!2401 lt!264721))) (size!4880 input!3215)))))

(declare-fun b!618308 () Bool)

(declare-fun res!269322 () Bool)

(assert (=> b!618308 (=> (not res!269322) (not e!375056))))

(assert (=> b!618308 (= res!269322 (= (list!2612 (charsOf!880 (_1!3798 (get!2401 lt!264721)))) (originalCharacters!1301 (_1!3798 (get!2401 lt!264721)))))))

(declare-fun d!216837 () Bool)

(assert (=> d!216837 e!375055))

(declare-fun res!269321 () Bool)

(assert (=> d!216837 (=> res!269321 e!375055)))

(assert (=> d!216837 (= res!269321 (isEmpty!4505 lt!264721))))

(assert (=> d!216837 (= lt!264721 e!375057)))

(declare-fun c!113865 () Bool)

(assert (=> d!216837 (= c!113865 (and (is-Cons!6263 rules!3744) (is-Nil!6263 (t!81512 rules!3744))))))

(declare-fun lt!264724 () Unit!11401)

(declare-fun lt!264722 () Unit!11401)

(assert (=> d!216837 (= lt!264724 lt!264722)))

(assert (=> d!216837 (isPrefix!898 input!3215 input!3215)))

(declare-fun lemmaIsPrefixRefl!613 (List!6272 List!6272) Unit!11401)

(assert (=> d!216837 (= lt!264722 (lemmaIsPrefixRefl!613 input!3215 input!3215))))

(assert (=> d!216837 (rulesValidInductive!485 thiss!25598 rules!3744)))

(assert (=> d!216837 (= (maxPrefix!846 thiss!25598 rules!3744 input!3215) lt!264721)))

(declare-fun b!618309 () Bool)

(declare-fun res!269320 () Bool)

(assert (=> b!618309 (=> (not res!269320) (not e!375056))))

(declare-fun apply!1502 (TokenValueInjection!2352 BalanceConc!3978) TokenValue!1292)

(declare-fun seqFromList!1425 (List!6272) BalanceConc!3978)

(assert (=> b!618309 (= res!269320 (= (value!41003 (_1!3798 (get!2401 lt!264721))) (apply!1502 (transformation!1268 (rule!2058 (_1!3798 (get!2401 lt!264721)))) (seqFromList!1425 (originalCharacters!1301 (_1!3798 (get!2401 lt!264721)))))))))

(declare-fun b!618310 () Bool)

(assert (=> b!618310 (= e!375057 call!41093)))

(assert (= (and d!216837 c!113865) b!618310))

(assert (= (and d!216837 (not c!113865)) b!618305))

(assert (= (or b!618310 b!618305) bm!41088))

(assert (= (and d!216837 (not res!269321)) b!618306))

(assert (= (and b!618306 res!269324) b!618308))

(assert (= (and b!618308 res!269322) b!618307))

(assert (= (and b!618307 res!269323) b!618304))

(assert (= (and b!618304 res!269318) b!618309))

(assert (= (and b!618309 res!269320) b!618303))

(assert (= (and b!618303 res!269319) b!618302))

(declare-fun m!886375 () Bool)

(assert (=> b!618304 m!886375))

(declare-fun m!886377 () Bool)

(assert (=> b!618304 m!886377))

(assert (=> b!618304 m!886377))

(declare-fun m!886379 () Bool)

(assert (=> b!618304 m!886379))

(assert (=> b!618304 m!886379))

(declare-fun m!886381 () Bool)

(assert (=> b!618304 m!886381))

(assert (=> b!618307 m!886375))

(declare-fun m!886383 () Bool)

(assert (=> b!618307 m!886383))

(declare-fun m!886385 () Bool)

(assert (=> b!618307 m!886385))

(declare-fun m!886387 () Bool)

(assert (=> bm!41088 m!886387))

(declare-fun m!886389 () Bool)

(assert (=> d!216837 m!886389))

(declare-fun m!886391 () Bool)

(assert (=> d!216837 m!886391))

(declare-fun m!886393 () Bool)

(assert (=> d!216837 m!886393))

(assert (=> d!216837 m!886263))

(assert (=> b!618308 m!886375))

(assert (=> b!618308 m!886377))

(assert (=> b!618308 m!886377))

(assert (=> b!618308 m!886379))

(assert (=> b!618303 m!886375))

(assert (=> b!618303 m!886377))

(assert (=> b!618303 m!886377))

(assert (=> b!618303 m!886379))

(assert (=> b!618303 m!886379))

(declare-fun m!886395 () Bool)

(assert (=> b!618303 m!886395))

(declare-fun m!886397 () Bool)

(assert (=> b!618306 m!886397))

(assert (=> b!618302 m!886375))

(declare-fun m!886399 () Bool)

(assert (=> b!618302 m!886399))

(assert (=> b!618309 m!886375))

(declare-fun m!886401 () Bool)

(assert (=> b!618309 m!886401))

(assert (=> b!618309 m!886401))

(declare-fun m!886403 () Bool)

(assert (=> b!618309 m!886403))

(declare-fun m!886405 () Bool)

(assert (=> b!618305 m!886405))

(assert (=> b!618158 d!216837))

(declare-fun b!618321 () Bool)

(declare-fun e!375066 () Bool)

(declare-fun tail!837 (List!6272) List!6272)

(assert (=> b!618321 (= e!375066 (isPrefix!898 (tail!837 p!2908) (tail!837 input!3215)))))

(declare-fun b!618320 () Bool)

(declare-fun res!269335 () Bool)

(assert (=> b!618320 (=> (not res!269335) (not e!375066))))

(declare-fun head!1308 (List!6272) C!4130)

(assert (=> b!618320 (= res!269335 (= (head!1308 p!2908) (head!1308 input!3215)))))

(declare-fun b!618322 () Bool)

(declare-fun e!375065 () Bool)

(assert (=> b!618322 (= e!375065 (>= (size!4880 input!3215) (size!4880 p!2908)))))

(declare-fun d!216839 () Bool)

(assert (=> d!216839 e!375065))

(declare-fun res!269333 () Bool)

(assert (=> d!216839 (=> res!269333 e!375065)))

(declare-fun lt!264728 () Bool)

(assert (=> d!216839 (= res!269333 (not lt!264728))))

(declare-fun e!375064 () Bool)

(assert (=> d!216839 (= lt!264728 e!375064)))

(declare-fun res!269336 () Bool)

(assert (=> d!216839 (=> res!269336 e!375064)))

(assert (=> d!216839 (= res!269336 (is-Nil!6262 p!2908))))

(assert (=> d!216839 (= (isPrefix!898 p!2908 input!3215) lt!264728)))

(declare-fun b!618319 () Bool)

(assert (=> b!618319 (= e!375064 e!375066)))

(declare-fun res!269334 () Bool)

(assert (=> b!618319 (=> (not res!269334) (not e!375066))))

(assert (=> b!618319 (= res!269334 (not (is-Nil!6262 input!3215)))))

(assert (= (and d!216839 (not res!269336)) b!618319))

(assert (= (and b!618319 res!269334) b!618320))

(assert (= (and b!618320 res!269335) b!618321))

(assert (= (and d!216839 (not res!269333)) b!618322))

(declare-fun m!886407 () Bool)

(assert (=> b!618321 m!886407))

(declare-fun m!886409 () Bool)

(assert (=> b!618321 m!886409))

(assert (=> b!618321 m!886407))

(assert (=> b!618321 m!886409))

(declare-fun m!886411 () Bool)

(assert (=> b!618321 m!886411))

(declare-fun m!886413 () Bool)

(assert (=> b!618320 m!886413))

(declare-fun m!886415 () Bool)

(assert (=> b!618320 m!886415))

(assert (=> b!618322 m!886385))

(declare-fun m!886417 () Bool)

(assert (=> b!618322 m!886417))

(assert (=> b!618168 d!216839))

(declare-fun d!216841 () Bool)

(assert (=> d!216841 (= (inv!7940 (tag!1530 (h!11664 rules!3744))) (= (mod (str.len (value!41002 (tag!1530 (h!11664 rules!3744)))) 2) 0))))

(assert (=> b!618164 d!216841))

(declare-fun d!216843 () Bool)

(declare-fun res!269339 () Bool)

(declare-fun e!375069 () Bool)

(assert (=> d!216843 (=> (not res!269339) (not e!375069))))

(declare-fun semiInverseModEq!510 (Int Int) Bool)

(assert (=> d!216843 (= res!269339 (semiInverseModEq!510 (toChars!2040 (transformation!1268 (h!11664 rules!3744))) (toValue!2181 (transformation!1268 (h!11664 rules!3744)))))))

(assert (=> d!216843 (= (inv!7943 (transformation!1268 (h!11664 rules!3744))) e!375069)))

(declare-fun b!618325 () Bool)

(declare-fun equivClasses!493 (Int Int) Bool)

(assert (=> b!618325 (= e!375069 (equivClasses!493 (toChars!2040 (transformation!1268 (h!11664 rules!3744))) (toValue!2181 (transformation!1268 (h!11664 rules!3744)))))))

(assert (= (and d!216843 res!269339) b!618325))

(declare-fun m!886419 () Bool)

(assert (=> d!216843 m!886419))

(declare-fun m!886421 () Bool)

(assert (=> b!618325 m!886421))

(assert (=> b!618164 d!216843))

(declare-fun d!216845 () Bool)

(assert (=> d!216845 (= (inv!7940 (tag!1530 r!3983)) (= (mod (str.len (value!41002 (tag!1530 r!3983))) 2) 0))))

(assert (=> b!618159 d!216845))

(declare-fun d!216847 () Bool)

(declare-fun res!269340 () Bool)

(declare-fun e!375070 () Bool)

(assert (=> d!216847 (=> (not res!269340) (not e!375070))))

(assert (=> d!216847 (= res!269340 (semiInverseModEq!510 (toChars!2040 (transformation!1268 r!3983)) (toValue!2181 (transformation!1268 r!3983))))))

(assert (=> d!216847 (= (inv!7943 (transformation!1268 r!3983)) e!375070)))

(declare-fun b!618326 () Bool)

(assert (=> b!618326 (= e!375070 (equivClasses!493 (toChars!2040 (transformation!1268 r!3983)) (toValue!2181 (transformation!1268 r!3983))))))

(assert (= (and d!216847 res!269340) b!618326))

(declare-fun m!886423 () Bool)

(assert (=> d!216847 m!886423))

(declare-fun m!886425 () Bool)

(assert (=> b!618326 m!886425))

(assert (=> b!618159 d!216847))

(declare-fun d!216849 () Bool)

(assert (=> d!216849 (= (isEmpty!4506 rules!3744) (is-Nil!6263 rules!3744))))

(assert (=> b!618166 d!216849))

(declare-fun d!216851 () Bool)

(declare-fun res!269343 () Bool)

(declare-fun e!375073 () Bool)

(assert (=> d!216851 (=> (not res!269343) (not e!375073))))

(declare-fun rulesValid!472 (LexerInterface!1156 List!6273) Bool)

(assert (=> d!216851 (= res!269343 (rulesValid!472 thiss!25598 rules!3744))))

(assert (=> d!216851 (= (rulesInvariant!1117 thiss!25598 rules!3744) e!375073)))

(declare-fun b!618329 () Bool)

(declare-datatypes ((List!6277 0))(
  ( (Nil!6267) (Cons!6267 (h!11668 String!8210) (t!81516 List!6277)) )
))
(declare-fun noDuplicateTag!472 (LexerInterface!1156 List!6273 List!6277) Bool)

(assert (=> b!618329 (= e!375073 (noDuplicateTag!472 thiss!25598 rules!3744 Nil!6267))))

(assert (= (and d!216851 res!269343) b!618329))

(declare-fun m!886427 () Bool)

(assert (=> d!216851 m!886427))

(declare-fun m!886429 () Bool)

(assert (=> b!618329 m!886429))

(assert (=> b!618161 d!216851))

(declare-fun b!618340 () Bool)

(declare-fun b_free!17865 () Bool)

(declare-fun b_next!17881 () Bool)

(assert (=> b!618340 (= b_free!17865 (not b_next!17881))))

(declare-fun tp!191420 () Bool)

(declare-fun b_and!61379 () Bool)

(assert (=> b!618340 (= tp!191420 b_and!61379)))

(declare-fun b_free!17867 () Bool)

(declare-fun b_next!17883 () Bool)

(assert (=> b!618340 (= b_free!17867 (not b_next!17883))))

(declare-fun tp!191422 () Bool)

(declare-fun b_and!61381 () Bool)

(assert (=> b!618340 (= tp!191422 b_and!61381)))

(declare-fun e!375082 () Bool)

(assert (=> b!618340 (= e!375082 (and tp!191420 tp!191422))))

(declare-fun b!618339 () Bool)

(declare-fun tp!191423 () Bool)

(declare-fun e!375085 () Bool)

(assert (=> b!618339 (= e!375085 (and tp!191423 (inv!7940 (tag!1530 (h!11664 (t!81512 rules!3744)))) (inv!7943 (transformation!1268 (h!11664 (t!81512 rules!3744)))) e!375082))))

(declare-fun b!618338 () Bool)

(declare-fun e!375083 () Bool)

(declare-fun tp!191421 () Bool)

(assert (=> b!618338 (= e!375083 (and e!375085 tp!191421))))

(assert (=> b!618157 (= tp!191382 e!375083)))

(assert (= b!618339 b!618340))

(assert (= b!618338 b!618339))

(assert (= (and b!618157 (is-Cons!6263 (t!81512 rules!3744))) b!618338))

(declare-fun m!886431 () Bool)

(assert (=> b!618339 m!886431))

(declare-fun m!886433 () Bool)

(assert (=> b!618339 m!886433))

(declare-fun b!618345 () Bool)

(declare-fun e!375088 () Bool)

(declare-fun tp!191426 () Bool)

(assert (=> b!618345 (= e!375088 (and tp_is_empty!3563 tp!191426))))

(assert (=> b!618156 (= tp!191380 e!375088)))

(assert (= (and b!618156 (is-Cons!6262 (t!81511 input!3215))) b!618345))

(declare-fun b!618346 () Bool)

(declare-fun e!375089 () Bool)

(declare-fun tp!191427 () Bool)

(assert (=> b!618346 (= e!375089 (and tp_is_empty!3563 tp!191427))))

(assert (=> b!618163 (= tp!191378 e!375089)))

(assert (= (and b!618163 (is-Cons!6262 (t!81511 p!2908))) b!618346))

(declare-fun b!618359 () Bool)

(declare-fun e!375092 () Bool)

(declare-fun tp!191439 () Bool)

(assert (=> b!618359 (= e!375092 tp!191439)))

(assert (=> b!618164 (= tp!191379 e!375092)))

(declare-fun b!618357 () Bool)

(assert (=> b!618357 (= e!375092 tp_is_empty!3563)))

(declare-fun b!618360 () Bool)

(declare-fun tp!191442 () Bool)

(declare-fun tp!191438 () Bool)

(assert (=> b!618360 (= e!375092 (and tp!191442 tp!191438))))

(declare-fun b!618358 () Bool)

(declare-fun tp!191440 () Bool)

(declare-fun tp!191441 () Bool)

(assert (=> b!618358 (= e!375092 (and tp!191440 tp!191441))))

(assert (= (and b!618164 (is-ElementMatch!1602 (regex!1268 (h!11664 rules!3744)))) b!618357))

(assert (= (and b!618164 (is-Concat!2895 (regex!1268 (h!11664 rules!3744)))) b!618358))

(assert (= (and b!618164 (is-Star!1602 (regex!1268 (h!11664 rules!3744)))) b!618359))

(assert (= (and b!618164 (is-Union!1602 (regex!1268 (h!11664 rules!3744)))) b!618360))

(declare-fun b!618363 () Bool)

(declare-fun e!375093 () Bool)

(declare-fun tp!191444 () Bool)

(assert (=> b!618363 (= e!375093 tp!191444)))

(assert (=> b!618159 (= tp!191377 e!375093)))

(declare-fun b!618361 () Bool)

(assert (=> b!618361 (= e!375093 tp_is_empty!3563)))

(declare-fun b!618364 () Bool)

(declare-fun tp!191447 () Bool)

(declare-fun tp!191443 () Bool)

(assert (=> b!618364 (= e!375093 (and tp!191447 tp!191443))))

(declare-fun b!618362 () Bool)

(declare-fun tp!191445 () Bool)

(declare-fun tp!191446 () Bool)

(assert (=> b!618362 (= e!375093 (and tp!191445 tp!191446))))

(assert (= (and b!618159 (is-ElementMatch!1602 (regex!1268 r!3983))) b!618361))

(assert (= (and b!618159 (is-Concat!2895 (regex!1268 r!3983))) b!618362))

(assert (= (and b!618159 (is-Star!1602 (regex!1268 r!3983))) b!618363))

(assert (= (and b!618159 (is-Union!1602 (regex!1268 r!3983))) b!618364))

(push 1)

(assert (not b_next!17869))

(assert (not b!618360))

(assert (not b!618325))

(assert (not d!216843))

(assert (not d!216829))

(assert (not b_next!17871))

(assert (not b!618276))

(assert (not b!618305))

(assert (not b!618269))

(assert (not d!216833))

(assert (not b!618268))

(assert (not b_next!17883))

(assert (not b!618362))

(assert (not b!618329))

(assert (not b!618358))

(assert (not b!618303))

(assert (not b!618338))

(assert b_and!61365)

(assert b_and!61369)

(assert (not b!618306))

(assert (not b!618320))

(assert b_and!61381)

(assert (not b_next!17865))

(assert (not b!618345))

(assert (not bm!41088))

(assert (not d!216851))

(assert (not b!618364))

(assert b_and!61367)

(assert (not d!216847))

(assert (not b!618304))

(assert (not b!618363))

(assert tp_is_empty!3563)

(assert (not d!216837))

(assert (not b!618359))

(assert (not b_next!17881))

(assert (not b!618321))

(assert (not b!618307))

(assert b_and!61379)

(assert (not b!618302))

(assert (not b!618346))

(assert (not d!216807))

(assert (not b!618283))

(assert (not b!618326))

(assert (not b!618309))

(assert (not b_next!17867))

(assert (not b!618308))

(assert (not d!216831))

(assert (not b!618339))

(assert (not b!618322))

(assert b_and!61363)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!17869))

(assert (not b_next!17883))

(assert b_and!61365)

(assert b_and!61369)

(assert b_and!61367)

(assert (not b_next!17871))

(assert (not b_next!17881))

(assert b_and!61379)

(assert (not b_next!17867))

(assert b_and!61363)

(assert b_and!61381)

(assert (not b_next!17865))

(check-sat)

(pop 1)


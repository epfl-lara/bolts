; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757504 () Bool)

(assert start!757504)

(declare-fun b!8045253 () Bool)

(declare-fun b_free!136299 () Bool)

(declare-fun b_next!137089 () Bool)

(assert (=> b!8045253 (= b_free!136299 (not b_next!137089))))

(declare-fun tp!2411374 () Bool)

(declare-fun b_and!354735 () Bool)

(assert (=> b!8045253 (= tp!2411374 b_and!354735)))

(declare-fun b_free!136301 () Bool)

(declare-fun b_next!137091 () Bool)

(assert (=> b!8045253 (= b_free!136301 (not b_next!137091))))

(declare-fun tp!2411375 () Bool)

(declare-fun b_and!354737 () Bool)

(assert (=> b!8045253 (= tp!2411375 b_and!354737)))

(declare-fun b!8045250 () Bool)

(declare-fun b_free!136303 () Bool)

(declare-fun b_next!137093 () Bool)

(assert (=> b!8045250 (= b_free!136303 (not b_next!137093))))

(declare-fun tp!2411371 () Bool)

(declare-fun b_and!354739 () Bool)

(assert (=> b!8045250 (= tp!2411371 b_and!354739)))

(declare-fun b_free!136305 () Bool)

(declare-fun b_next!137095 () Bool)

(assert (=> b!8045250 (= b_free!136305 (not b_next!137095))))

(declare-fun tp!2411373 () Bool)

(declare-fun b_and!354741 () Bool)

(assert (=> b!8045250 (= tp!2411373 b_and!354741)))

(declare-fun b!8045245 () Bool)

(declare-fun e!4739535 () Bool)

(declare-fun e!4739541 () Bool)

(declare-fun tp!2411370 () Bool)

(assert (=> b!8045245 (= e!4739535 (and e!4739541 tp!2411370))))

(declare-fun e!4739540 () Bool)

(declare-fun tp!2411369 () Bool)

(declare-datatypes ((C!43976 0))(
  ( (C!43977 (val!32764 Int)) )
))
(declare-datatypes ((List!75408 0))(
  ( (Nil!75282) (Cons!75282 (h!81730 C!43976) (t!391178 List!75408)) )
))
(declare-datatypes ((IArray!32093 0))(
  ( (IArray!32094 (innerList!16104 List!75408)) )
))
(declare-datatypes ((Conc!16016 0))(
  ( (Node!16016 (left!57351 Conc!16016) (right!57681 Conc!16016) (csize!32262 Int) (cheight!16227 Int)) (Leaf!30700 (xs!19414 IArray!32093) (csize!32263 Int)) (Empty!16016) )
))
(declare-datatypes ((List!75409 0))(
  ( (Nil!75283) (Cons!75283 (h!81731 (_ BitVec 16)) (t!391179 List!75409)) )
))
(declare-datatypes ((TokenValue!9068 0))(
  ( (FloatLiteralValue!18136 (text!63921 List!75409)) (TokenValueExt!9067 (__x!35417 Int)) (Broken!45340 (value!292336 List!75409)) (Object!9193) (End!9068) (Def!9068) (Underscore!9068) (Match!9068) (Else!9068) (Error!9068) (Case!9068) (If!9068) (Extends!9068) (Abstract!9068) (Class!9068) (Val!9068) (DelimiterValue!18136 (del!9128 List!75409)) (KeywordValue!9074 (value!292337 List!75409)) (CommentValue!18136 (value!292338 List!75409)) (WhitespaceValue!18136 (value!292339 List!75409)) (IndentationValue!9068 (value!292340 List!75409)) (String!85113) (Int32!9068) (Broken!45341 (value!292341 List!75409)) (Boolean!9069) (Unit!171115) (OperatorValue!9071 (op!9128 List!75409)) (IdentifierValue!18136 (value!292342 List!75409)) (IdentifierValue!18137 (value!292343 List!75409)) (WhitespaceValue!18137 (value!292344 List!75409)) (True!18136) (False!18136) (Broken!45342 (value!292345 List!75409)) (Broken!45343 (value!292346 List!75409)) (True!18137) (RightBrace!9068) (RightBracket!9068) (Colon!9068) (Null!9068) (Comma!9068) (LeftBracket!9068) (False!18137) (LeftBrace!9068) (ImaginaryLiteralValue!9068 (text!63922 List!75409)) (StringLiteralValue!27204 (value!292347 List!75409)) (EOFValue!9068 (value!292348 List!75409)) (IdentValue!9068 (value!292349 List!75409)) (DelimiterValue!18137 (value!292350 List!75409)) (DedentValue!9068 (value!292351 List!75409)) (NewLineValue!9068 (value!292352 List!75409)) (IntegerValue!27204 (value!292353 (_ BitVec 32)) (text!63923 List!75409)) (IntegerValue!27205 (value!292354 Int) (text!63924 List!75409)) (Times!9068) (Or!9068) (Equal!9068) (Minus!9068) (Broken!45344 (value!292355 List!75409)) (And!9068) (Div!9068) (LessEqual!9068) (Mod!9068) (Concat!30887) (Not!9068) (Plus!9068) (SpaceValue!9068 (value!292356 List!75409)) (IntegerValue!27206 (value!292357 Int) (text!63925 List!75409)) (StringLiteralValue!27205 (text!63926 List!75409)) (FloatLiteralValue!18137 (text!63927 List!75409)) (BytesLiteralValue!9068 (value!292358 List!75409)) (CommentValue!18137 (value!292359 List!75409)) (StringLiteralValue!27206 (value!292360 List!75409)) (ErrorTokenValue!9068 (msg!9129 List!75409)) )
))
(declare-datatypes ((BalanceConc!30988 0))(
  ( (BalanceConc!30989 (c!1475409 Conc!16016)) )
))
(declare-datatypes ((TokenValueInjection!17444 0))(
  ( (TokenValueInjection!17445 (toValue!11827 Int) (toChars!11686 Int)) )
))
(declare-datatypes ((Regex!21819 0))(
  ( (ElementMatch!21819 (c!1475410 C!43976)) (Concat!30888 (regOne!44150 Regex!21819) (regTwo!44150 Regex!21819)) (EmptyExpr!21819) (Star!21819 (reg!22148 Regex!21819)) (EmptyLang!21819) (Union!21819 (regOne!44151 Regex!21819) (regTwo!44151 Regex!21819)) )
))
(declare-datatypes ((String!85114 0))(
  ( (String!85115 (value!292361 String)) )
))
(declare-datatypes ((Rule!17296 0))(
  ( (Rule!17297 (regex!8748 Regex!21819) (tag!9612 String!85114) (isSeparator!8748 Bool) (transformation!8748 TokenValueInjection!17444)) )
))
(declare-datatypes ((List!75410 0))(
  ( (Nil!75284) (Cons!75284 (h!81732 Rule!17296) (t!391180 List!75410)) )
))
(declare-fun rules!4030 () List!75410)

(declare-fun b!8045247 () Bool)

(declare-fun inv!97037 (String!85114) Bool)

(declare-fun inv!97039 (TokenValueInjection!17444) Bool)

(assert (=> b!8045247 (= e!4739541 (and tp!2411369 (inv!97037 (tag!9612 (h!81732 rules!4030))) (inv!97039 (transformation!8748 (h!81732 rules!4030))) e!4739540))))

(declare-fun b!8045248 () Bool)

(declare-fun res!3180257 () Bool)

(declare-fun e!4739539 () Bool)

(assert (=> b!8045248 (=> (not res!3180257) (not e!4739539))))

(declare-datatypes ((LexerInterface!8338 0))(
  ( (LexerInterfaceExt!8335 (__x!35418 Int)) (Lexer!8336) )
))
(declare-fun thiss!26855 () LexerInterface!8338)

(declare-fun lt!2722656 () List!75410)

(declare-datatypes ((List!75411 0))(
  ( (Nil!75285) (Cons!75285 (h!81733 String!85114) (t!391181 List!75411)) )
))
(declare-fun noDuplicateTag!3326 (LexerInterface!8338 List!75410 List!75411) Bool)

(assert (=> b!8045248 (= res!3180257 (noDuplicateTag!3326 thiss!26855 lt!2722656 Nil!75285))))

(declare-fun b!8045249 () Bool)

(declare-fun e!4739537 () Bool)

(assert (=> b!8045249 (= e!4739537 e!4739539)))

(declare-fun res!3180258 () Bool)

(assert (=> b!8045249 (=> (not res!3180258) (not e!4739539))))

(declare-fun rulesInvariant!6806 (LexerInterface!8338 List!75410) Bool)

(assert (=> b!8045249 (= res!3180258 (rulesInvariant!6806 thiss!26855 lt!2722656))))

(declare-fun r!4387 () Rule!17296)

(assert (=> b!8045249 (= lt!2722656 (Cons!75284 r!4387 rules!4030))))

(assert (=> b!8045250 (= e!4739540 (and tp!2411371 tp!2411373))))

(declare-fun res!3180256 () Bool)

(assert (=> start!757504 (=> (not res!3180256) (not e!4739537))))

(get-info :version)

(assert (=> start!757504 (= res!3180256 ((_ is Lexer!8336) thiss!26855))))

(assert (=> start!757504 e!4739537))

(assert (=> start!757504 true))

(declare-fun e!4739542 () Bool)

(assert (=> start!757504 e!4739542))

(assert (=> start!757504 e!4739535))

(declare-fun e!4739536 () Bool)

(declare-fun b!8045246 () Bool)

(declare-fun tp!2411372 () Bool)

(assert (=> b!8045246 (= e!4739542 (and tp!2411372 (inv!97037 (tag!9612 r!4387)) (inv!97039 (transformation!8748 r!4387)) e!4739536))))

(declare-fun b!8045251 () Bool)

(declare-fun res!3180259 () Bool)

(assert (=> b!8045251 (=> (not res!3180259) (not e!4739539))))

(declare-fun rulesValidInductive!3467 (LexerInterface!8338 List!75410) Bool)

(assert (=> b!8045251 (= res!3180259 (rulesValidInductive!3467 thiss!26855 lt!2722656))))

(declare-fun b!8045252 () Bool)

(assert (=> b!8045252 (= e!4739539 (not (rulesValidInductive!3467 thiss!26855 rules!4030)))))

(assert (=> b!8045253 (= e!4739536 (and tp!2411374 tp!2411375))))

(assert (= (and start!757504 res!3180256) b!8045249))

(assert (= (and b!8045249 res!3180258) b!8045251))

(assert (= (and b!8045251 res!3180259) b!8045248))

(assert (= (and b!8045248 res!3180257) b!8045252))

(assert (= b!8045246 b!8045253))

(assert (= start!757504 b!8045246))

(assert (= b!8045247 b!8045250))

(assert (= b!8045245 b!8045247))

(assert (= (and start!757504 ((_ is Cons!75284) rules!4030)) b!8045245))

(declare-fun m!8397862 () Bool)

(assert (=> b!8045249 m!8397862))

(declare-fun m!8397864 () Bool)

(assert (=> b!8045247 m!8397864))

(declare-fun m!8397866 () Bool)

(assert (=> b!8045247 m!8397866))

(declare-fun m!8397868 () Bool)

(assert (=> b!8045251 m!8397868))

(declare-fun m!8397870 () Bool)

(assert (=> b!8045248 m!8397870))

(declare-fun m!8397872 () Bool)

(assert (=> b!8045246 m!8397872))

(declare-fun m!8397874 () Bool)

(assert (=> b!8045246 m!8397874))

(declare-fun m!8397876 () Bool)

(assert (=> b!8045252 m!8397876))

(check-sat (not b!8045246) (not b!8045252) (not b!8045247) (not b!8045248) (not b_next!137089) b_and!354739 b_and!354741 (not b!8045251) (not b_next!137091) b_and!354735 (not b!8045245) (not b_next!137093) b_and!354737 (not b!8045249) (not b_next!137095))
(check-sat b_and!354741 (not b_next!137089) b_and!354739 (not b_next!137095) (not b_next!137091) b_and!354735 (not b_next!137093) b_and!354737)
(get-model)

(declare-fun d!2396330 () Bool)

(assert (=> d!2396330 true))

(declare-fun lt!2722661 () Bool)

(declare-fun lambda!472718 () Int)

(declare-fun forall!18468 (List!75410 Int) Bool)

(assert (=> d!2396330 (= lt!2722661 (forall!18468 lt!2722656 lambda!472718))))

(declare-fun e!4739564 () Bool)

(assert (=> d!2396330 (= lt!2722661 e!4739564)))

(declare-fun res!3180284 () Bool)

(assert (=> d!2396330 (=> res!3180284 e!4739564)))

(assert (=> d!2396330 (= res!3180284 (not ((_ is Cons!75284) lt!2722656)))))

(assert (=> d!2396330 (= (rulesValidInductive!3467 thiss!26855 lt!2722656) lt!2722661)))

(declare-fun b!8045274 () Bool)

(declare-fun e!4739565 () Bool)

(assert (=> b!8045274 (= e!4739564 e!4739565)))

(declare-fun res!3180285 () Bool)

(assert (=> b!8045274 (=> (not res!3180285) (not e!4739565))))

(declare-fun ruleValid!3992 (LexerInterface!8338 Rule!17296) Bool)

(assert (=> b!8045274 (= res!3180285 (ruleValid!3992 thiss!26855 (h!81732 lt!2722656)))))

(declare-fun b!8045275 () Bool)

(assert (=> b!8045275 (= e!4739565 (rulesValidInductive!3467 thiss!26855 (t!391180 lt!2722656)))))

(assert (= (and d!2396330 (not res!3180284)) b!8045274))

(assert (= (and b!8045274 res!3180285) b!8045275))

(declare-fun m!8397888 () Bool)

(assert (=> d!2396330 m!8397888))

(declare-fun m!8397890 () Bool)

(assert (=> b!8045274 m!8397890))

(declare-fun m!8397892 () Bool)

(assert (=> b!8045275 m!8397892))

(assert (=> b!8045251 d!2396330))

(declare-fun d!2396342 () Bool)

(assert (=> d!2396342 (= (inv!97037 (tag!9612 (h!81732 rules!4030))) (= (mod (str.len (value!292361 (tag!9612 (h!81732 rules!4030)))) 2) 0))))

(assert (=> b!8045247 d!2396342))

(declare-fun d!2396344 () Bool)

(declare-fun res!3180288 () Bool)

(declare-fun e!4739568 () Bool)

(assert (=> d!2396344 (=> (not res!3180288) (not e!4739568))))

(declare-fun semiInverseModEq!3883 (Int Int) Bool)

(assert (=> d!2396344 (= res!3180288 (semiInverseModEq!3883 (toChars!11686 (transformation!8748 (h!81732 rules!4030))) (toValue!11827 (transformation!8748 (h!81732 rules!4030)))))))

(assert (=> d!2396344 (= (inv!97039 (transformation!8748 (h!81732 rules!4030))) e!4739568)))

(declare-fun b!8045280 () Bool)

(declare-fun equivClasses!3698 (Int Int) Bool)

(assert (=> b!8045280 (= e!4739568 (equivClasses!3698 (toChars!11686 (transformation!8748 (h!81732 rules!4030))) (toValue!11827 (transformation!8748 (h!81732 rules!4030)))))))

(assert (= (and d!2396344 res!3180288) b!8045280))

(declare-fun m!8397894 () Bool)

(assert (=> d!2396344 m!8397894))

(declare-fun m!8397896 () Bool)

(assert (=> b!8045280 m!8397896))

(assert (=> b!8045247 d!2396344))

(declare-fun bs!1971677 () Bool)

(declare-fun d!2396346 () Bool)

(assert (= bs!1971677 (and d!2396346 d!2396330)))

(declare-fun lambda!472722 () Int)

(assert (=> bs!1971677 (= lambda!472722 lambda!472718)))

(assert (=> d!2396346 true))

(declare-fun lt!2722663 () Bool)

(assert (=> d!2396346 (= lt!2722663 (forall!18468 rules!4030 lambda!472722))))

(declare-fun e!4739571 () Bool)

(assert (=> d!2396346 (= lt!2722663 e!4739571)))

(declare-fun res!3180291 () Bool)

(assert (=> d!2396346 (=> res!3180291 e!4739571)))

(assert (=> d!2396346 (= res!3180291 (not ((_ is Cons!75284) rules!4030)))))

(assert (=> d!2396346 (= (rulesValidInductive!3467 thiss!26855 rules!4030) lt!2722663)))

(declare-fun b!8045283 () Bool)

(declare-fun e!4739572 () Bool)

(assert (=> b!8045283 (= e!4739571 e!4739572)))

(declare-fun res!3180292 () Bool)

(assert (=> b!8045283 (=> (not res!3180292) (not e!4739572))))

(assert (=> b!8045283 (= res!3180292 (ruleValid!3992 thiss!26855 (h!81732 rules!4030)))))

(declare-fun b!8045284 () Bool)

(assert (=> b!8045284 (= e!4739572 (rulesValidInductive!3467 thiss!26855 (t!391180 rules!4030)))))

(assert (= (and d!2396346 (not res!3180291)) b!8045283))

(assert (= (and b!8045283 res!3180292) b!8045284))

(declare-fun m!8397904 () Bool)

(assert (=> d!2396346 m!8397904))

(declare-fun m!8397906 () Bool)

(assert (=> b!8045283 m!8397906))

(declare-fun m!8397908 () Bool)

(assert (=> b!8045284 m!8397908))

(assert (=> b!8045252 d!2396346))

(declare-fun d!2396350 () Bool)

(assert (=> d!2396350 (= (inv!97037 (tag!9612 r!4387)) (= (mod (str.len (value!292361 (tag!9612 r!4387))) 2) 0))))

(assert (=> b!8045246 d!2396350))

(declare-fun d!2396352 () Bool)

(declare-fun res!3180295 () Bool)

(declare-fun e!4739575 () Bool)

(assert (=> d!2396352 (=> (not res!3180295) (not e!4739575))))

(assert (=> d!2396352 (= res!3180295 (semiInverseModEq!3883 (toChars!11686 (transformation!8748 r!4387)) (toValue!11827 (transformation!8748 r!4387))))))

(assert (=> d!2396352 (= (inv!97039 (transformation!8748 r!4387)) e!4739575)))

(declare-fun b!8045289 () Bool)

(assert (=> b!8045289 (= e!4739575 (equivClasses!3698 (toChars!11686 (transformation!8748 r!4387)) (toValue!11827 (transformation!8748 r!4387))))))

(assert (= (and d!2396352 res!3180295) b!8045289))

(declare-fun m!8397910 () Bool)

(assert (=> d!2396352 m!8397910))

(declare-fun m!8397912 () Bool)

(assert (=> b!8045289 m!8397912))

(assert (=> b!8045246 d!2396352))

(declare-fun d!2396354 () Bool)

(declare-fun res!3180301 () Bool)

(declare-fun e!4739593 () Bool)

(assert (=> d!2396354 (=> res!3180301 e!4739593)))

(assert (=> d!2396354 (= res!3180301 ((_ is Nil!75284) lt!2722656))))

(assert (=> d!2396354 (= (noDuplicateTag!3326 thiss!26855 lt!2722656 Nil!75285) e!4739593)))

(declare-fun b!8045306 () Bool)

(declare-fun e!4739594 () Bool)

(assert (=> b!8045306 (= e!4739593 e!4739594)))

(declare-fun res!3180302 () Bool)

(assert (=> b!8045306 (=> (not res!3180302) (not e!4739594))))

(declare-fun contains!21058 (List!75411 String!85114) Bool)

(assert (=> b!8045306 (= res!3180302 (not (contains!21058 Nil!75285 (tag!9612 (h!81732 lt!2722656)))))))

(declare-fun b!8045307 () Bool)

(assert (=> b!8045307 (= e!4739594 (noDuplicateTag!3326 thiss!26855 (t!391180 lt!2722656) (Cons!75285 (tag!9612 (h!81732 lt!2722656)) Nil!75285)))))

(assert (= (and d!2396354 (not res!3180301)) b!8045306))

(assert (= (and b!8045306 res!3180302) b!8045307))

(declare-fun m!8397924 () Bool)

(assert (=> b!8045306 m!8397924))

(declare-fun m!8397928 () Bool)

(assert (=> b!8045307 m!8397928))

(assert (=> b!8045248 d!2396354))

(declare-fun d!2396360 () Bool)

(declare-fun res!3180305 () Bool)

(declare-fun e!4739601 () Bool)

(assert (=> d!2396360 (=> (not res!3180305) (not e!4739601))))

(declare-fun rulesValid!3157 (LexerInterface!8338 List!75410) Bool)

(assert (=> d!2396360 (= res!3180305 (rulesValid!3157 thiss!26855 lt!2722656))))

(assert (=> d!2396360 (= (rulesInvariant!6806 thiss!26855 lt!2722656) e!4739601)))

(declare-fun b!8045328 () Bool)

(assert (=> b!8045328 (= e!4739601 (noDuplicateTag!3326 thiss!26855 lt!2722656 Nil!75285))))

(assert (= (and d!2396360 res!3180305) b!8045328))

(declare-fun m!8397932 () Bool)

(assert (=> d!2396360 m!8397932))

(assert (=> b!8045328 m!8397870))

(assert (=> b!8045249 d!2396360))

(declare-fun b!8045339 () Bool)

(declare-fun b_free!136311 () Bool)

(declare-fun b_next!137101 () Bool)

(assert (=> b!8045339 (= b_free!136311 (not b_next!137101))))

(declare-fun tp!2411418 () Bool)

(declare-fun b_and!354747 () Bool)

(assert (=> b!8045339 (= tp!2411418 b_and!354747)))

(declare-fun b_free!136313 () Bool)

(declare-fun b_next!137103 () Bool)

(assert (=> b!8045339 (= b_free!136313 (not b_next!137103))))

(declare-fun tp!2411417 () Bool)

(declare-fun b_and!354749 () Bool)

(assert (=> b!8045339 (= tp!2411417 b_and!354749)))

(declare-fun e!4739610 () Bool)

(assert (=> b!8045339 (= e!4739610 (and tp!2411418 tp!2411417))))

(declare-fun e!4739611 () Bool)

(declare-fun b!8045338 () Bool)

(declare-fun tp!2411419 () Bool)

(assert (=> b!8045338 (= e!4739611 (and tp!2411419 (inv!97037 (tag!9612 (h!81732 (t!391180 rules!4030)))) (inv!97039 (transformation!8748 (h!81732 (t!391180 rules!4030)))) e!4739610))))

(declare-fun b!8045337 () Bool)

(declare-fun e!4739612 () Bool)

(declare-fun tp!2411416 () Bool)

(assert (=> b!8045337 (= e!4739612 (and e!4739611 tp!2411416))))

(assert (=> b!8045245 (= tp!2411370 e!4739612)))

(assert (= b!8045338 b!8045339))

(assert (= b!8045337 b!8045338))

(assert (= (and b!8045245 ((_ is Cons!75284) (t!391180 rules!4030))) b!8045337))

(declare-fun m!8397934 () Bool)

(assert (=> b!8045338 m!8397934))

(declare-fun m!8397936 () Bool)

(assert (=> b!8045338 m!8397936))

(declare-fun b!8045350 () Bool)

(declare-fun e!4739616 () Bool)

(declare-fun tp_is_empty!54613 () Bool)

(assert (=> b!8045350 (= e!4739616 tp_is_empty!54613)))

(declare-fun b!8045352 () Bool)

(declare-fun tp!2411432 () Bool)

(assert (=> b!8045352 (= e!4739616 tp!2411432)))

(declare-fun b!8045351 () Bool)

(declare-fun tp!2411433 () Bool)

(declare-fun tp!2411434 () Bool)

(assert (=> b!8045351 (= e!4739616 (and tp!2411433 tp!2411434))))

(assert (=> b!8045247 (= tp!2411369 e!4739616)))

(declare-fun b!8045353 () Bool)

(declare-fun tp!2411431 () Bool)

(declare-fun tp!2411430 () Bool)

(assert (=> b!8045353 (= e!4739616 (and tp!2411431 tp!2411430))))

(assert (= (and b!8045247 ((_ is ElementMatch!21819) (regex!8748 (h!81732 rules!4030)))) b!8045350))

(assert (= (and b!8045247 ((_ is Concat!30888) (regex!8748 (h!81732 rules!4030)))) b!8045351))

(assert (= (and b!8045247 ((_ is Star!21819) (regex!8748 (h!81732 rules!4030)))) b!8045352))

(assert (= (and b!8045247 ((_ is Union!21819) (regex!8748 (h!81732 rules!4030)))) b!8045353))

(declare-fun b!8045354 () Bool)

(declare-fun e!4739617 () Bool)

(assert (=> b!8045354 (= e!4739617 tp_is_empty!54613)))

(declare-fun b!8045356 () Bool)

(declare-fun tp!2411437 () Bool)

(assert (=> b!8045356 (= e!4739617 tp!2411437)))

(declare-fun b!8045355 () Bool)

(declare-fun tp!2411438 () Bool)

(declare-fun tp!2411439 () Bool)

(assert (=> b!8045355 (= e!4739617 (and tp!2411438 tp!2411439))))

(assert (=> b!8045246 (= tp!2411372 e!4739617)))

(declare-fun b!8045357 () Bool)

(declare-fun tp!2411436 () Bool)

(declare-fun tp!2411435 () Bool)

(assert (=> b!8045357 (= e!4739617 (and tp!2411436 tp!2411435))))

(assert (= (and b!8045246 ((_ is ElementMatch!21819) (regex!8748 r!4387))) b!8045354))

(assert (= (and b!8045246 ((_ is Concat!30888) (regex!8748 r!4387))) b!8045355))

(assert (= (and b!8045246 ((_ is Star!21819) (regex!8748 r!4387))) b!8045356))

(assert (= (and b!8045246 ((_ is Union!21819) (regex!8748 r!4387))) b!8045357))

(check-sat b_and!354749 (not b!8045306) (not b!8045284) b_and!354741 (not b!8045274) (not d!2396344) (not d!2396352) (not b_next!137089) (not b!8045357) (not b!8045328) (not b!8045289) b_and!354747 (not b!8045307) (not d!2396330) (not b!8045353) (not b!8045280) (not d!2396346) (not b!8045352) (not b_next!137101) (not b_next!137103) (not b_next!137091) b_and!354735 (not b!8045337) (not d!2396360) (not b!8045283) (not b!8045351) (not b!8045275) (not b_next!137093) b_and!354737 tp_is_empty!54613 (not b!8045338) b_and!354739 (not b!8045356) (not b_next!137095) (not b!8045355))
(check-sat b_and!354749 b_and!354741 (not b_next!137089) b_and!354747 b_and!354739 (not b_next!137095) (not b_next!137101) (not b_next!137103) (not b_next!137091) b_and!354735 (not b_next!137093) b_and!354737)

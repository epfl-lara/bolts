; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351426 () Bool)

(assert start!351426)

(declare-fun b!3743483 () Bool)

(declare-fun b_free!99317 () Bool)

(declare-fun b_next!100021 () Bool)

(assert (=> b!3743483 (= b_free!99317 (not b_next!100021))))

(declare-fun tp!1141205 () Bool)

(declare-fun b_and!277551 () Bool)

(assert (=> b!3743483 (= tp!1141205 b_and!277551)))

(declare-fun b_free!99319 () Bool)

(declare-fun b_next!100023 () Bool)

(assert (=> b!3743483 (= b_free!99319 (not b_next!100023))))

(declare-fun tp!1141211 () Bool)

(declare-fun b_and!277553 () Bool)

(assert (=> b!3743483 (= tp!1141211 b_and!277553)))

(declare-fun b!3743470 () Bool)

(declare-fun b_free!99321 () Bool)

(declare-fun b_next!100025 () Bool)

(assert (=> b!3743470 (= b_free!99321 (not b_next!100025))))

(declare-fun tp!1141210 () Bool)

(declare-fun b_and!277555 () Bool)

(assert (=> b!3743470 (= tp!1141210 b_and!277555)))

(declare-fun b_free!99323 () Bool)

(declare-fun b_next!100027 () Bool)

(assert (=> b!3743470 (= b_free!99323 (not b_next!100027))))

(declare-fun tp!1141212 () Bool)

(declare-fun b_and!277557 () Bool)

(assert (=> b!3743470 (= tp!1141212 b_and!277557)))

(declare-fun b!3743474 () Bool)

(declare-fun b_free!99325 () Bool)

(declare-fun b_next!100029 () Bool)

(assert (=> b!3743474 (= b_free!99325 (not b_next!100029))))

(declare-fun tp!1141209 () Bool)

(declare-fun b_and!277559 () Bool)

(assert (=> b!3743474 (= tp!1141209 b_and!277559)))

(declare-fun b_free!99327 () Bool)

(declare-fun b_next!100031 () Bool)

(assert (=> b!3743474 (= b_free!99327 (not b_next!100031))))

(declare-fun tp!1141207 () Bool)

(declare-fun b_and!277561 () Bool)

(assert (=> b!3743474 (= tp!1141207 b_and!277561)))

(declare-fun b!3743485 () Bool)

(declare-fun b_free!99329 () Bool)

(declare-fun b_next!100033 () Bool)

(assert (=> b!3743485 (= b_free!99329 (not b_next!100033))))

(declare-fun tp!1141203 () Bool)

(declare-fun b_and!277563 () Bool)

(assert (=> b!3743485 (= tp!1141203 b_and!277563)))

(declare-fun b_free!99331 () Bool)

(declare-fun b_next!100035 () Bool)

(assert (=> b!3743485 (= b_free!99331 (not b_next!100035))))

(declare-fun tp!1141208 () Bool)

(declare-fun b_and!277565 () Bool)

(assert (=> b!3743485 (= tp!1141208 b_and!277565)))

(declare-fun e!2314560 () Bool)

(assert (=> b!3743470 (= e!2314560 (and tp!1141210 tp!1141212))))

(declare-fun e!2314551 () Bool)

(declare-fun tp!1141213 () Bool)

(declare-fun e!2314552 () Bool)

(declare-datatypes ((List!39856 0))(
  ( (Nil!39732) (Cons!39732 (h!45152 (_ BitVec 16)) (t!302539 List!39856)) )
))
(declare-datatypes ((TokenValue!6280 0))(
  ( (FloatLiteralValue!12560 (text!44405 List!39856)) (TokenValueExt!6279 (__x!24777 Int)) (Broken!31400 (value!193007 List!39856)) (Object!6403) (End!6280) (Def!6280) (Underscore!6280) (Match!6280) (Else!6280) (Error!6280) (Case!6280) (If!6280) (Extends!6280) (Abstract!6280) (Class!6280) (Val!6280) (DelimiterValue!12560 (del!6340 List!39856)) (KeywordValue!6286 (value!193008 List!39856)) (CommentValue!12560 (value!193009 List!39856)) (WhitespaceValue!12560 (value!193010 List!39856)) (IndentationValue!6280 (value!193011 List!39856)) (String!45025) (Int32!6280) (Broken!31401 (value!193012 List!39856)) (Boolean!6281) (Unit!57615) (OperatorValue!6283 (op!6340 List!39856)) (IdentifierValue!12560 (value!193013 List!39856)) (IdentifierValue!12561 (value!193014 List!39856)) (WhitespaceValue!12561 (value!193015 List!39856)) (True!12560) (False!12560) (Broken!31402 (value!193016 List!39856)) (Broken!31403 (value!193017 List!39856)) (True!12561) (RightBrace!6280) (RightBracket!6280) (Colon!6280) (Null!6280) (Comma!6280) (LeftBracket!6280) (False!12561) (LeftBrace!6280) (ImaginaryLiteralValue!6280 (text!44406 List!39856)) (StringLiteralValue!18840 (value!193018 List!39856)) (EOFValue!6280 (value!193019 List!39856)) (IdentValue!6280 (value!193020 List!39856)) (DelimiterValue!12561 (value!193021 List!39856)) (DedentValue!6280 (value!193022 List!39856)) (NewLineValue!6280 (value!193023 List!39856)) (IntegerValue!18840 (value!193024 (_ BitVec 32)) (text!44407 List!39856)) (IntegerValue!18841 (value!193025 Int) (text!44408 List!39856)) (Times!6280) (Or!6280) (Equal!6280) (Minus!6280) (Broken!31404 (value!193026 List!39856)) (And!6280) (Div!6280) (LessEqual!6280) (Mod!6280) (Concat!17235) (Not!6280) (Plus!6280) (SpaceValue!6280 (value!193027 List!39856)) (IntegerValue!18842 (value!193028 Int) (text!44409 List!39856)) (StringLiteralValue!18841 (text!44410 List!39856)) (FloatLiteralValue!12561 (text!44411 List!39856)) (BytesLiteralValue!6280 (value!193029 List!39856)) (CommentValue!12561 (value!193030 List!39856)) (StringLiteralValue!18842 (value!193031 List!39856)) (ErrorTokenValue!6280 (msg!6341 List!39856)) )
))
(declare-datatypes ((C!22096 0))(
  ( (C!22097 (val!13096 Int)) )
))
(declare-datatypes ((List!39857 0))(
  ( (Nil!39733) (Cons!39733 (h!45153 C!22096) (t!302540 List!39857)) )
))
(declare-datatypes ((IArray!24299 0))(
  ( (IArray!24300 (innerList!12207 List!39857)) )
))
(declare-datatypes ((Conc!12147 0))(
  ( (Node!12147 (left!30803 Conc!12147) (right!31133 Conc!12147) (csize!24524 Int) (cheight!12358 Int)) (Leaf!18856 (xs!15349 IArray!24299) (csize!24525 Int)) (Empty!12147) )
))
(declare-datatypes ((Regex!10955 0))(
  ( (ElementMatch!10955 (c!648520 C!22096)) (Concat!17236 (regOne!22422 Regex!10955) (regTwo!22422 Regex!10955)) (EmptyExpr!10955) (Star!10955 (reg!11284 Regex!10955)) (EmptyLang!10955) (Union!10955 (regOne!22423 Regex!10955) (regTwo!22423 Regex!10955)) )
))
(declare-datatypes ((String!45026 0))(
  ( (String!45027 (value!193032 String)) )
))
(declare-datatypes ((BalanceConc!23908 0))(
  ( (BalanceConc!23909 (c!648521 Conc!12147)) )
))
(declare-datatypes ((TokenValueInjection!11988 0))(
  ( (TokenValueInjection!11989 (toValue!8394 Int) (toChars!8253 Int)) )
))
(declare-datatypes ((Rule!11900 0))(
  ( (Rule!11901 (regex!6050 Regex!10955) (tag!6910 String!45026) (isSeparator!6050 Bool) (transformation!6050 TokenValueInjection!11988)) )
))
(declare-datatypes ((List!39858 0))(
  ( (Nil!39734) (Cons!39734 (h!45154 Rule!11900) (t!302541 List!39858)) )
))
(declare-fun rules!4189 () List!39858)

(declare-fun b!3743471 () Bool)

(declare-fun inv!53282 (String!45026) Bool)

(declare-fun inv!53284 (TokenValueInjection!11988) Bool)

(assert (=> b!3743471 (= e!2314552 (and tp!1141213 (inv!53282 (tag!6910 (h!45154 rules!4189))) (inv!53284 (transformation!6050 (h!45154 rules!4189))) e!2314551))))

(declare-fun b!3743472 () Bool)

(declare-fun res!1517369 () Bool)

(declare-fun e!2314553 () Bool)

(assert (=> b!3743472 (=> (not res!1517369) (not e!2314553))))

(declare-datatypes ((LexerInterface!5639 0))(
  ( (LexerInterfaceExt!5636 (__x!24778 Int)) (Lexer!5637) )
))
(declare-fun thiss!27143 () LexerInterface!5639)

(declare-fun rulesInvariant!5036 (LexerInterface!5639 List!39858) Bool)

(assert (=> b!3743472 (= res!1517369 (rulesInvariant!5036 thiss!27143 rules!4189))))

(declare-fun res!1517370 () Bool)

(assert (=> start!351426 (=> (not res!1517370) (not e!2314553))))

(get-info :version)

(assert (=> start!351426 (= res!1517370 ((_ is Lexer!5637) thiss!27143))))

(assert (=> start!351426 e!2314553))

(assert (=> start!351426 true))

(declare-fun e!2314558 () Bool)

(assert (=> start!351426 e!2314558))

(declare-fun e!2314563 () Bool)

(assert (=> start!351426 e!2314563))

(declare-fun e!2314557 () Bool)

(assert (=> start!351426 e!2314557))

(declare-fun tp_is_empty!18925 () Bool)

(assert (=> start!351426 tp_is_empty!18925))

(declare-fun e!2314564 () Bool)

(assert (=> start!351426 e!2314564))

(declare-fun e!2314561 () Bool)

(declare-fun tp!1141214 () Bool)

(declare-fun rNSep!159 () Rule!11900)

(declare-fun b!3743473 () Bool)

(assert (=> b!3743473 (= e!2314564 (and tp!1141214 (inv!53282 (tag!6910 rNSep!159)) (inv!53284 (transformation!6050 rNSep!159)) e!2314561))))

(assert (=> b!3743474 (= e!2314561 (and tp!1141209 tp!1141207))))

(declare-fun b!3743475 () Bool)

(declare-fun res!1517371 () Bool)

(assert (=> b!3743475 (=> (not res!1517371) (not e!2314553))))

(declare-fun rSep!159 () Rule!11900)

(assert (=> b!3743475 (= res!1517371 (and (not (isSeparator!6050 rNSep!159)) (isSeparator!6050 rSep!159)))))

(declare-fun b!3743476 () Bool)

(declare-fun res!1517372 () Bool)

(assert (=> b!3743476 (=> (not res!1517372) (not e!2314553))))

(declare-fun contains!8057 (List!39858 Rule!11900) Bool)

(assert (=> b!3743476 (= res!1517372 (contains!8057 rules!4189 rSep!159))))

(declare-fun b!3743477 () Bool)

(declare-fun res!1517367 () Bool)

(assert (=> b!3743477 (=> (not res!1517367) (not e!2314553))))

(assert (=> b!3743477 (= res!1517367 (contains!8057 rules!4189 rNSep!159))))

(declare-fun b!3743478 () Bool)

(declare-fun e!2314555 () Bool)

(declare-fun tp!1141206 () Bool)

(assert (=> b!3743478 (= e!2314557 (and e!2314555 tp!1141206))))

(declare-fun b!3743479 () Bool)

(declare-fun ruleDisjointCharsFromAllFromOtherType!927 (Rule!11900 List!39858) Bool)

(assert (=> b!3743479 (= e!2314553 (not (ruleDisjointCharsFromAllFromOtherType!927 rNSep!159 rules!4189)))))

(declare-fun b!3743480 () Bool)

(declare-fun res!1517374 () Bool)

(assert (=> b!3743480 (=> (not res!1517374) (not e!2314553))))

(declare-fun rulesRec!198 () List!39858)

(assert (=> b!3743480 (= res!1517374 (and ((_ is Cons!39734) rulesRec!198) (= (h!45154 rulesRec!198) rNSep!159)))))

(declare-fun e!2314554 () Bool)

(declare-fun tp!1141216 () Bool)

(declare-fun b!3743481 () Bool)

(assert (=> b!3743481 (= e!2314563 (and tp!1141216 (inv!53282 (tag!6910 rSep!159)) (inv!53284 (transformation!6050 rSep!159)) e!2314554))))

(declare-fun b!3743482 () Bool)

(declare-fun tp!1141204 () Bool)

(assert (=> b!3743482 (= e!2314558 (and e!2314552 tp!1141204))))

(assert (=> b!3743483 (= e!2314554 (and tp!1141205 tp!1141211))))

(declare-fun b!3743484 () Bool)

(declare-fun res!1517368 () Bool)

(assert (=> b!3743484 (=> (not res!1517368) (not e!2314553))))

(assert (=> b!3743484 (= res!1517368 (contains!8057 rulesRec!198 rNSep!159))))

(assert (=> b!3743485 (= e!2314551 (and tp!1141203 tp!1141208))))

(declare-fun b!3743486 () Bool)

(declare-fun tp!1141215 () Bool)

(assert (=> b!3743486 (= e!2314555 (and tp!1141215 (inv!53282 (tag!6910 (h!45154 rulesRec!198))) (inv!53284 (transformation!6050 (h!45154 rulesRec!198))) e!2314560))))

(declare-fun b!3743487 () Bool)

(declare-fun res!1517373 () Bool)

(assert (=> b!3743487 (=> (not res!1517373) (not e!2314553))))

(declare-fun sepAndNonSepRulesDisjointChars!2028 (List!39858 List!39858) Bool)

(assert (=> b!3743487 (= res!1517373 (sepAndNonSepRulesDisjointChars!2028 rules!4189 rulesRec!198))))

(declare-fun b!3743488 () Bool)

(declare-fun res!1517366 () Bool)

(assert (=> b!3743488 (=> (not res!1517366) (not e!2314553))))

(declare-fun c!6900 () C!22096)

(declare-fun contains!8058 (List!39857 C!22096) Bool)

(declare-fun usedCharacters!1218 (Regex!10955) List!39857)

(assert (=> b!3743488 (= res!1517366 (contains!8058 (usedCharacters!1218 (regex!6050 rNSep!159)) c!6900))))

(assert (= (and start!351426 res!1517370) b!3743472))

(assert (= (and b!3743472 res!1517369) b!3743476))

(assert (= (and b!3743476 res!1517372) b!3743484))

(assert (= (and b!3743484 res!1517368) b!3743477))

(assert (= (and b!3743477 res!1517367) b!3743475))

(assert (= (and b!3743475 res!1517371) b!3743488))

(assert (= (and b!3743488 res!1517366) b!3743487))

(assert (= (and b!3743487 res!1517373) b!3743480))

(assert (= (and b!3743480 res!1517374) b!3743479))

(assert (= b!3743471 b!3743485))

(assert (= b!3743482 b!3743471))

(assert (= (and start!351426 ((_ is Cons!39734) rules!4189)) b!3743482))

(assert (= b!3743481 b!3743483))

(assert (= start!351426 b!3743481))

(assert (= b!3743486 b!3743470))

(assert (= b!3743478 b!3743486))

(assert (= (and start!351426 ((_ is Cons!39734) rulesRec!198)) b!3743478))

(assert (= b!3743473 b!3743474))

(assert (= start!351426 b!3743473))

(declare-fun m!4237193 () Bool)

(assert (=> b!3743472 m!4237193))

(declare-fun m!4237195 () Bool)

(assert (=> b!3743488 m!4237195))

(assert (=> b!3743488 m!4237195))

(declare-fun m!4237197 () Bool)

(assert (=> b!3743488 m!4237197))

(declare-fun m!4237199 () Bool)

(assert (=> b!3743479 m!4237199))

(declare-fun m!4237201 () Bool)

(assert (=> b!3743484 m!4237201))

(declare-fun m!4237203 () Bool)

(assert (=> b!3743476 m!4237203))

(declare-fun m!4237205 () Bool)

(assert (=> b!3743487 m!4237205))

(declare-fun m!4237207 () Bool)

(assert (=> b!3743477 m!4237207))

(declare-fun m!4237209 () Bool)

(assert (=> b!3743486 m!4237209))

(declare-fun m!4237211 () Bool)

(assert (=> b!3743486 m!4237211))

(declare-fun m!4237213 () Bool)

(assert (=> b!3743473 m!4237213))

(declare-fun m!4237215 () Bool)

(assert (=> b!3743473 m!4237215))

(declare-fun m!4237217 () Bool)

(assert (=> b!3743481 m!4237217))

(declare-fun m!4237219 () Bool)

(assert (=> b!3743481 m!4237219))

(declare-fun m!4237221 () Bool)

(assert (=> b!3743471 m!4237221))

(declare-fun m!4237223 () Bool)

(assert (=> b!3743471 m!4237223))

(check-sat b_and!277563 (not b!3743472) (not b!3743484) b_and!277553 (not b!3743481) (not b_next!100029) (not b!3743478) (not b_next!100023) (not b!3743479) (not b!3743487) (not b_next!100031) (not b!3743471) (not b_next!100025) b_and!277559 (not b_next!100035) b_and!277565 (not b!3743477) (not b!3743473) (not b!3743488) b_and!277555 b_and!277551 (not b_next!100021) (not b_next!100033) (not b_next!100027) b_and!277557 (not b!3743482) b_and!277561 (not b!3743486) (not b!3743476) tp_is_empty!18925)
(check-sat b_and!277563 (not b_next!100031) b_and!277553 b_and!277555 (not b_next!100029) (not b_next!100023) b_and!277557 b_and!277561 (not b_next!100025) b_and!277559 (not b_next!100035) b_and!277565 b_and!277551 (not b_next!100021) (not b_next!100033) (not b_next!100027))
(get-model)

(declare-fun d!1092875 () Bool)

(declare-fun c!648532 () Bool)

(assert (=> d!1092875 (= c!648532 (and ((_ is Cons!39734) rules!4189) (not (= (isSeparator!6050 (h!45154 rules!4189)) (isSeparator!6050 rNSep!159)))))))

(declare-fun e!2314586 () Bool)

(assert (=> d!1092875 (= (ruleDisjointCharsFromAllFromOtherType!927 rNSep!159 rules!4189) e!2314586)))

(declare-fun bm!274870 () Bool)

(declare-fun call!274875 () Bool)

(assert (=> bm!274870 (= call!274875 (ruleDisjointCharsFromAllFromOtherType!927 rNSep!159 (t!302541 rules!4189)))))

(declare-fun b!3743519 () Bool)

(declare-fun e!2314587 () Bool)

(assert (=> b!3743519 (= e!2314586 e!2314587)))

(declare-fun res!1517394 () Bool)

(assert (=> b!3743519 (= res!1517394 (not ((_ is Cons!39734) rules!4189)))))

(assert (=> b!3743519 (=> res!1517394 e!2314587)))

(declare-fun b!3743520 () Bool)

(assert (=> b!3743520 (= e!2314587 call!274875)))

(declare-fun b!3743521 () Bool)

(declare-fun e!2314585 () Bool)

(assert (=> b!3743521 (= e!2314585 call!274875)))

(declare-fun b!3743522 () Bool)

(assert (=> b!3743522 (= e!2314586 e!2314585)))

(declare-fun res!1517393 () Bool)

(declare-fun rulesUseDisjointChars!373 (Rule!11900 Rule!11900) Bool)

(assert (=> b!3743522 (= res!1517393 (rulesUseDisjointChars!373 rNSep!159 (h!45154 rules!4189)))))

(assert (=> b!3743522 (=> (not res!1517393) (not e!2314585))))

(assert (= (and d!1092875 c!648532) b!3743522))

(assert (= (and d!1092875 (not c!648532)) b!3743519))

(assert (= (and b!3743522 res!1517393) b!3743521))

(assert (= (and b!3743519 (not res!1517394)) b!3743520))

(assert (= (or b!3743521 b!3743520) bm!274870))

(declare-fun m!4237231 () Bool)

(assert (=> bm!274870 m!4237231))

(declare-fun m!4237233 () Bool)

(assert (=> b!3743522 m!4237233))

(assert (=> b!3743479 d!1092875))

(declare-fun d!1092877 () Bool)

(declare-fun lt!1299316 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5808 (List!39858) (InoxSet Rule!11900))

(assert (=> d!1092877 (= lt!1299316 (select (content!5808 rules!4189) rSep!159))))

(declare-fun e!2314596 () Bool)

(assert (=> d!1092877 (= lt!1299316 e!2314596)))

(declare-fun res!1517399 () Bool)

(assert (=> d!1092877 (=> (not res!1517399) (not e!2314596))))

(assert (=> d!1092877 (= res!1517399 ((_ is Cons!39734) rules!4189))))

(assert (=> d!1092877 (= (contains!8057 rules!4189 rSep!159) lt!1299316)))

(declare-fun b!3743535 () Bool)

(declare-fun e!2314597 () Bool)

(assert (=> b!3743535 (= e!2314596 e!2314597)))

(declare-fun res!1517400 () Bool)

(assert (=> b!3743535 (=> res!1517400 e!2314597)))

(assert (=> b!3743535 (= res!1517400 (= (h!45154 rules!4189) rSep!159))))

(declare-fun b!3743536 () Bool)

(assert (=> b!3743536 (= e!2314597 (contains!8057 (t!302541 rules!4189) rSep!159))))

(assert (= (and d!1092877 res!1517399) b!3743535))

(assert (= (and b!3743535 (not res!1517400)) b!3743536))

(declare-fun m!4237241 () Bool)

(assert (=> d!1092877 m!4237241))

(declare-fun m!4237243 () Bool)

(assert (=> d!1092877 m!4237243))

(declare-fun m!4237245 () Bool)

(assert (=> b!3743536 m!4237245))

(assert (=> b!3743476 d!1092877))

(declare-fun d!1092881 () Bool)

(assert (=> d!1092881 (= (inv!53282 (tag!6910 rSep!159)) (= (mod (str.len (value!193032 (tag!6910 rSep!159))) 2) 0))))

(assert (=> b!3743481 d!1092881))

(declare-fun d!1092883 () Bool)

(declare-fun res!1517409 () Bool)

(declare-fun e!2314606 () Bool)

(assert (=> d!1092883 (=> (not res!1517409) (not e!2314606))))

(declare-fun semiInverseModEq!2587 (Int Int) Bool)

(assert (=> d!1092883 (= res!1517409 (semiInverseModEq!2587 (toChars!8253 (transformation!6050 rSep!159)) (toValue!8394 (transformation!6050 rSep!159))))))

(assert (=> d!1092883 (= (inv!53284 (transformation!6050 rSep!159)) e!2314606)))

(declare-fun b!3743545 () Bool)

(declare-fun equivClasses!2486 (Int Int) Bool)

(assert (=> b!3743545 (= e!2314606 (equivClasses!2486 (toChars!8253 (transformation!6050 rSep!159)) (toValue!8394 (transformation!6050 rSep!159))))))

(assert (= (and d!1092883 res!1517409) b!3743545))

(declare-fun m!4237253 () Bool)

(assert (=> d!1092883 m!4237253))

(declare-fun m!4237255 () Bool)

(assert (=> b!3743545 m!4237255))

(assert (=> b!3743481 d!1092883))

(declare-fun d!1092889 () Bool)

(assert (=> d!1092889 (= (inv!53282 (tag!6910 (h!45154 rulesRec!198))) (= (mod (str.len (value!193032 (tag!6910 (h!45154 rulesRec!198)))) 2) 0))))

(assert (=> b!3743486 d!1092889))

(declare-fun d!1092891 () Bool)

(declare-fun res!1517410 () Bool)

(declare-fun e!2314607 () Bool)

(assert (=> d!1092891 (=> (not res!1517410) (not e!2314607))))

(assert (=> d!1092891 (= res!1517410 (semiInverseModEq!2587 (toChars!8253 (transformation!6050 (h!45154 rulesRec!198))) (toValue!8394 (transformation!6050 (h!45154 rulesRec!198)))))))

(assert (=> d!1092891 (= (inv!53284 (transformation!6050 (h!45154 rulesRec!198))) e!2314607)))

(declare-fun b!3743546 () Bool)

(assert (=> b!3743546 (= e!2314607 (equivClasses!2486 (toChars!8253 (transformation!6050 (h!45154 rulesRec!198))) (toValue!8394 (transformation!6050 (h!45154 rulesRec!198)))))))

(assert (= (and d!1092891 res!1517410) b!3743546))

(declare-fun m!4237257 () Bool)

(assert (=> d!1092891 m!4237257))

(declare-fun m!4237259 () Bool)

(assert (=> b!3743546 m!4237259))

(assert (=> b!3743486 d!1092891))

(declare-fun d!1092893 () Bool)

(declare-fun res!1517416 () Bool)

(declare-fun e!2314613 () Bool)

(assert (=> d!1092893 (=> (not res!1517416) (not e!2314613))))

(declare-fun rulesValid!2343 (LexerInterface!5639 List!39858) Bool)

(assert (=> d!1092893 (= res!1517416 (rulesValid!2343 thiss!27143 rules!4189))))

(assert (=> d!1092893 (= (rulesInvariant!5036 thiss!27143 rules!4189) e!2314613)))

(declare-fun b!3743552 () Bool)

(declare-datatypes ((List!39860 0))(
  ( (Nil!39736) (Cons!39736 (h!45156 String!45026) (t!302543 List!39860)) )
))
(declare-fun noDuplicateTag!2344 (LexerInterface!5639 List!39858 List!39860) Bool)

(assert (=> b!3743552 (= e!2314613 (noDuplicateTag!2344 thiss!27143 rules!4189 Nil!39736))))

(assert (= (and d!1092893 res!1517416) b!3743552))

(declare-fun m!4237265 () Bool)

(assert (=> d!1092893 m!4237265))

(declare-fun m!4237267 () Bool)

(assert (=> b!3743552 m!4237267))

(assert (=> b!3743472 d!1092893))

(declare-fun d!1092897 () Bool)

(declare-fun lt!1299322 () Bool)

(declare-fun content!5810 (List!39857) (InoxSet C!22096))

(assert (=> d!1092897 (= lt!1299322 (select (content!5810 (usedCharacters!1218 (regex!6050 rNSep!159))) c!6900))))

(declare-fun e!2314622 () Bool)

(assert (=> d!1092897 (= lt!1299322 e!2314622)))

(declare-fun res!1517425 () Bool)

(assert (=> d!1092897 (=> (not res!1517425) (not e!2314622))))

(assert (=> d!1092897 (= res!1517425 ((_ is Cons!39733) (usedCharacters!1218 (regex!6050 rNSep!159))))))

(assert (=> d!1092897 (= (contains!8058 (usedCharacters!1218 (regex!6050 rNSep!159)) c!6900) lt!1299322)))

(declare-fun b!3743560 () Bool)

(declare-fun e!2314624 () Bool)

(assert (=> b!3743560 (= e!2314622 e!2314624)))

(declare-fun res!1517424 () Bool)

(assert (=> b!3743560 (=> res!1517424 e!2314624)))

(assert (=> b!3743560 (= res!1517424 (= (h!45153 (usedCharacters!1218 (regex!6050 rNSep!159))) c!6900))))

(declare-fun b!3743562 () Bool)

(assert (=> b!3743562 (= e!2314624 (contains!8058 (t!302540 (usedCharacters!1218 (regex!6050 rNSep!159))) c!6900))))

(assert (= (and d!1092897 res!1517425) b!3743560))

(assert (= (and b!3743560 (not res!1517424)) b!3743562))

(assert (=> d!1092897 m!4237195))

(declare-fun m!4237277 () Bool)

(assert (=> d!1092897 m!4237277))

(declare-fun m!4237281 () Bool)

(assert (=> d!1092897 m!4237281))

(declare-fun m!4237283 () Bool)

(assert (=> b!3743562 m!4237283))

(assert (=> b!3743488 d!1092897))

(declare-fun bm!274885 () Bool)

(declare-fun call!274892 () List!39857)

(declare-fun call!274893 () List!39857)

(declare-fun call!274890 () List!39857)

(declare-fun ++!9873 (List!39857 List!39857) List!39857)

(assert (=> bm!274885 (= call!274892 (++!9873 call!274893 call!274890))))

(declare-fun d!1092903 () Bool)

(declare-fun c!648550 () Bool)

(assert (=> d!1092903 (= c!648550 (or ((_ is EmptyExpr!10955) (regex!6050 rNSep!159)) ((_ is EmptyLang!10955) (regex!6050 rNSep!159))))))

(declare-fun e!2314653 () List!39857)

(assert (=> d!1092903 (= (usedCharacters!1218 (regex!6050 rNSep!159)) e!2314653)))

(declare-fun b!3743599 () Bool)

(declare-fun e!2314650 () List!39857)

(assert (=> b!3743599 (= e!2314650 call!274892)))

(declare-fun b!3743600 () Bool)

(declare-fun e!2314652 () List!39857)

(assert (=> b!3743600 (= e!2314653 e!2314652)))

(declare-fun c!648547 () Bool)

(assert (=> b!3743600 (= c!648547 ((_ is ElementMatch!10955) (regex!6050 rNSep!159)))))

(declare-fun b!3743601 () Bool)

(declare-fun e!2314651 () List!39857)

(declare-fun call!274891 () List!39857)

(assert (=> b!3743601 (= e!2314651 call!274891)))

(declare-fun b!3743602 () Bool)

(declare-fun c!648549 () Bool)

(assert (=> b!3743602 (= c!648549 ((_ is Star!10955) (regex!6050 rNSep!159)))))

(assert (=> b!3743602 (= e!2314652 e!2314651)))

(declare-fun bm!274886 () Bool)

(assert (=> bm!274886 (= call!274893 call!274891)))

(declare-fun b!3743603 () Bool)

(assert (=> b!3743603 (= e!2314653 Nil!39733)))

(declare-fun b!3743604 () Bool)

(assert (=> b!3743604 (= e!2314651 e!2314650)))

(declare-fun c!648548 () Bool)

(assert (=> b!3743604 (= c!648548 ((_ is Union!10955) (regex!6050 rNSep!159)))))

(declare-fun bm!274887 () Bool)

(assert (=> bm!274887 (= call!274890 (usedCharacters!1218 (ite c!648548 (regTwo!22423 (regex!6050 rNSep!159)) (regTwo!22422 (regex!6050 rNSep!159)))))))

(declare-fun b!3743605 () Bool)

(assert (=> b!3743605 (= e!2314650 call!274892)))

(declare-fun b!3743606 () Bool)

(assert (=> b!3743606 (= e!2314652 (Cons!39733 (c!648520 (regex!6050 rNSep!159)) Nil!39733))))

(declare-fun bm!274888 () Bool)

(assert (=> bm!274888 (= call!274891 (usedCharacters!1218 (ite c!648549 (reg!11284 (regex!6050 rNSep!159)) (ite c!648548 (regOne!22423 (regex!6050 rNSep!159)) (regOne!22422 (regex!6050 rNSep!159))))))))

(assert (= (and d!1092903 c!648550) b!3743603))

(assert (= (and d!1092903 (not c!648550)) b!3743600))

(assert (= (and b!3743600 c!648547) b!3743606))

(assert (= (and b!3743600 (not c!648547)) b!3743602))

(assert (= (and b!3743602 c!648549) b!3743601))

(assert (= (and b!3743602 (not c!648549)) b!3743604))

(assert (= (and b!3743604 c!648548) b!3743599))

(assert (= (and b!3743604 (not c!648548)) b!3743605))

(assert (= (or b!3743599 b!3743605) bm!274886))

(assert (= (or b!3743599 b!3743605) bm!274887))

(assert (= (or b!3743599 b!3743605) bm!274885))

(assert (= (or b!3743601 bm!274886) bm!274888))

(declare-fun m!4237305 () Bool)

(assert (=> bm!274885 m!4237305))

(declare-fun m!4237307 () Bool)

(assert (=> bm!274887 m!4237307))

(declare-fun m!4237313 () Bool)

(assert (=> bm!274888 m!4237313))

(assert (=> b!3743488 d!1092903))

(declare-fun d!1092921 () Bool)

(declare-fun lt!1299325 () Bool)

(assert (=> d!1092921 (= lt!1299325 (select (content!5808 rules!4189) rNSep!159))))

(declare-fun e!2314657 () Bool)

(assert (=> d!1092921 (= lt!1299325 e!2314657)))

(declare-fun res!1517445 () Bool)

(assert (=> d!1092921 (=> (not res!1517445) (not e!2314657))))

(assert (=> d!1092921 (= res!1517445 ((_ is Cons!39734) rules!4189))))

(assert (=> d!1092921 (= (contains!8057 rules!4189 rNSep!159) lt!1299325)))

(declare-fun b!3743615 () Bool)

(declare-fun e!2314660 () Bool)

(assert (=> b!3743615 (= e!2314657 e!2314660)))

(declare-fun res!1517446 () Bool)

(assert (=> b!3743615 (=> res!1517446 e!2314660)))

(assert (=> b!3743615 (= res!1517446 (= (h!45154 rules!4189) rNSep!159))))

(declare-fun b!3743616 () Bool)

(assert (=> b!3743616 (= e!2314660 (contains!8057 (t!302541 rules!4189) rNSep!159))))

(assert (= (and d!1092921 res!1517445) b!3743615))

(assert (= (and b!3743615 (not res!1517446)) b!3743616))

(assert (=> d!1092921 m!4237241))

(declare-fun m!4237315 () Bool)

(assert (=> d!1092921 m!4237315))

(declare-fun m!4237317 () Bool)

(assert (=> b!3743616 m!4237317))

(assert (=> b!3743477 d!1092921))

(declare-fun d!1092923 () Bool)

(assert (=> d!1092923 (= (inv!53282 (tag!6910 (h!45154 rules!4189))) (= (mod (str.len (value!193032 (tag!6910 (h!45154 rules!4189)))) 2) 0))))

(assert (=> b!3743471 d!1092923))

(declare-fun d!1092925 () Bool)

(declare-fun res!1517447 () Bool)

(declare-fun e!2314661 () Bool)

(assert (=> d!1092925 (=> (not res!1517447) (not e!2314661))))

(assert (=> d!1092925 (= res!1517447 (semiInverseModEq!2587 (toChars!8253 (transformation!6050 (h!45154 rules!4189))) (toValue!8394 (transformation!6050 (h!45154 rules!4189)))))))

(assert (=> d!1092925 (= (inv!53284 (transformation!6050 (h!45154 rules!4189))) e!2314661)))

(declare-fun b!3743623 () Bool)

(assert (=> b!3743623 (= e!2314661 (equivClasses!2486 (toChars!8253 (transformation!6050 (h!45154 rules!4189))) (toValue!8394 (transformation!6050 (h!45154 rules!4189)))))))

(assert (= (and d!1092925 res!1517447) b!3743623))

(declare-fun m!4237319 () Bool)

(assert (=> d!1092925 m!4237319))

(declare-fun m!4237321 () Bool)

(assert (=> b!3743623 m!4237321))

(assert (=> b!3743471 d!1092925))

(declare-fun d!1092927 () Bool)

(declare-fun res!1517452 () Bool)

(declare-fun e!2314686 () Bool)

(assert (=> d!1092927 (=> res!1517452 e!2314686)))

(assert (=> d!1092927 (= res!1517452 (not ((_ is Cons!39734) rulesRec!198)))))

(assert (=> d!1092927 (= (sepAndNonSepRulesDisjointChars!2028 rules!4189 rulesRec!198) e!2314686)))

(declare-fun b!3743658 () Bool)

(declare-fun e!2314687 () Bool)

(assert (=> b!3743658 (= e!2314686 e!2314687)))

(declare-fun res!1517453 () Bool)

(assert (=> b!3743658 (=> (not res!1517453) (not e!2314687))))

(assert (=> b!3743658 (= res!1517453 (ruleDisjointCharsFromAllFromOtherType!927 (h!45154 rulesRec!198) rules!4189))))

(declare-fun b!3743659 () Bool)

(assert (=> b!3743659 (= e!2314687 (sepAndNonSepRulesDisjointChars!2028 rules!4189 (t!302541 rulesRec!198)))))

(assert (= (and d!1092927 (not res!1517452)) b!3743658))

(assert (= (and b!3743658 res!1517453) b!3743659))

(declare-fun m!4237331 () Bool)

(assert (=> b!3743658 m!4237331))

(declare-fun m!4237333 () Bool)

(assert (=> b!3743659 m!4237333))

(assert (=> b!3743487 d!1092927))

(declare-fun d!1092929 () Bool)

(declare-fun lt!1299326 () Bool)

(assert (=> d!1092929 (= lt!1299326 (select (content!5808 rulesRec!198) rNSep!159))))

(declare-fun e!2314688 () Bool)

(assert (=> d!1092929 (= lt!1299326 e!2314688)))

(declare-fun res!1517454 () Bool)

(assert (=> d!1092929 (=> (not res!1517454) (not e!2314688))))

(assert (=> d!1092929 (= res!1517454 ((_ is Cons!39734) rulesRec!198))))

(assert (=> d!1092929 (= (contains!8057 rulesRec!198 rNSep!159) lt!1299326)))

(declare-fun b!3743660 () Bool)

(declare-fun e!2314689 () Bool)

(assert (=> b!3743660 (= e!2314688 e!2314689)))

(declare-fun res!1517455 () Bool)

(assert (=> b!3743660 (=> res!1517455 e!2314689)))

(assert (=> b!3743660 (= res!1517455 (= (h!45154 rulesRec!198) rNSep!159))))

(declare-fun b!3743661 () Bool)

(assert (=> b!3743661 (= e!2314689 (contains!8057 (t!302541 rulesRec!198) rNSep!159))))

(assert (= (and d!1092929 res!1517454) b!3743660))

(assert (= (and b!3743660 (not res!1517455)) b!3743661))

(declare-fun m!4237335 () Bool)

(assert (=> d!1092929 m!4237335))

(declare-fun m!4237337 () Bool)

(assert (=> d!1092929 m!4237337))

(declare-fun m!4237339 () Bool)

(assert (=> b!3743661 m!4237339))

(assert (=> b!3743484 d!1092929))

(declare-fun d!1092931 () Bool)

(assert (=> d!1092931 (= (inv!53282 (tag!6910 rNSep!159)) (= (mod (str.len (value!193032 (tag!6910 rNSep!159))) 2) 0))))

(assert (=> b!3743473 d!1092931))

(declare-fun d!1092933 () Bool)

(declare-fun res!1517456 () Bool)

(declare-fun e!2314690 () Bool)

(assert (=> d!1092933 (=> (not res!1517456) (not e!2314690))))

(assert (=> d!1092933 (= res!1517456 (semiInverseModEq!2587 (toChars!8253 (transformation!6050 rNSep!159)) (toValue!8394 (transformation!6050 rNSep!159))))))

(assert (=> d!1092933 (= (inv!53284 (transformation!6050 rNSep!159)) e!2314690)))

(declare-fun b!3743662 () Bool)

(assert (=> b!3743662 (= e!2314690 (equivClasses!2486 (toChars!8253 (transformation!6050 rNSep!159)) (toValue!8394 (transformation!6050 rNSep!159))))))

(assert (= (and d!1092933 res!1517456) b!3743662))

(declare-fun m!4237341 () Bool)

(assert (=> d!1092933 m!4237341))

(declare-fun m!4237343 () Bool)

(assert (=> b!3743662 m!4237343))

(assert (=> b!3743473 d!1092933))

(declare-fun b!3743674 () Bool)

(declare-fun e!2314693 () Bool)

(declare-fun tp!1141277 () Bool)

(declare-fun tp!1141274 () Bool)

(assert (=> b!3743674 (= e!2314693 (and tp!1141277 tp!1141274))))

(assert (=> b!3743481 (= tp!1141216 e!2314693)))

(declare-fun b!3743675 () Bool)

(declare-fun tp!1141275 () Bool)

(assert (=> b!3743675 (= e!2314693 tp!1141275)))

(declare-fun b!3743673 () Bool)

(assert (=> b!3743673 (= e!2314693 tp_is_empty!18925)))

(declare-fun b!3743676 () Bool)

(declare-fun tp!1141273 () Bool)

(declare-fun tp!1141276 () Bool)

(assert (=> b!3743676 (= e!2314693 (and tp!1141273 tp!1141276))))

(assert (= (and b!3743481 ((_ is ElementMatch!10955) (regex!6050 rSep!159))) b!3743673))

(assert (= (and b!3743481 ((_ is Concat!17236) (regex!6050 rSep!159))) b!3743674))

(assert (= (and b!3743481 ((_ is Star!10955) (regex!6050 rSep!159))) b!3743675))

(assert (= (and b!3743481 ((_ is Union!10955) (regex!6050 rSep!159))) b!3743676))

(declare-fun b!3743678 () Bool)

(declare-fun e!2314694 () Bool)

(declare-fun tp!1141282 () Bool)

(declare-fun tp!1141279 () Bool)

(assert (=> b!3743678 (= e!2314694 (and tp!1141282 tp!1141279))))

(assert (=> b!3743486 (= tp!1141215 e!2314694)))

(declare-fun b!3743679 () Bool)

(declare-fun tp!1141280 () Bool)

(assert (=> b!3743679 (= e!2314694 tp!1141280)))

(declare-fun b!3743677 () Bool)

(assert (=> b!3743677 (= e!2314694 tp_is_empty!18925)))

(declare-fun b!3743680 () Bool)

(declare-fun tp!1141278 () Bool)

(declare-fun tp!1141281 () Bool)

(assert (=> b!3743680 (= e!2314694 (and tp!1141278 tp!1141281))))

(assert (= (and b!3743486 ((_ is ElementMatch!10955) (regex!6050 (h!45154 rulesRec!198)))) b!3743677))

(assert (= (and b!3743486 ((_ is Concat!17236) (regex!6050 (h!45154 rulesRec!198)))) b!3743678))

(assert (= (and b!3743486 ((_ is Star!10955) (regex!6050 (h!45154 rulesRec!198)))) b!3743679))

(assert (= (and b!3743486 ((_ is Union!10955) (regex!6050 (h!45154 rulesRec!198)))) b!3743680))

(declare-fun b!3743691 () Bool)

(declare-fun b_free!99341 () Bool)

(declare-fun b_next!100045 () Bool)

(assert (=> b!3743691 (= b_free!99341 (not b_next!100045))))

(declare-fun tp!1141293 () Bool)

(declare-fun b_and!277575 () Bool)

(assert (=> b!3743691 (= tp!1141293 b_and!277575)))

(declare-fun b_free!99343 () Bool)

(declare-fun b_next!100047 () Bool)

(assert (=> b!3743691 (= b_free!99343 (not b_next!100047))))

(declare-fun tp!1141291 () Bool)

(declare-fun b_and!277577 () Bool)

(assert (=> b!3743691 (= tp!1141291 b_and!277577)))

(declare-fun e!2314704 () Bool)

(assert (=> b!3743691 (= e!2314704 (and tp!1141293 tp!1141291))))

(declare-fun tp!1141294 () Bool)

(declare-fun e!2314703 () Bool)

(declare-fun b!3743690 () Bool)

(assert (=> b!3743690 (= e!2314703 (and tp!1141294 (inv!53282 (tag!6910 (h!45154 (t!302541 rules!4189)))) (inv!53284 (transformation!6050 (h!45154 (t!302541 rules!4189)))) e!2314704))))

(declare-fun b!3743689 () Bool)

(declare-fun e!2314705 () Bool)

(declare-fun tp!1141292 () Bool)

(assert (=> b!3743689 (= e!2314705 (and e!2314703 tp!1141292))))

(assert (=> b!3743482 (= tp!1141204 e!2314705)))

(assert (= b!3743690 b!3743691))

(assert (= b!3743689 b!3743690))

(assert (= (and b!3743482 ((_ is Cons!39734) (t!302541 rules!4189))) b!3743689))

(declare-fun m!4237345 () Bool)

(assert (=> b!3743690 m!4237345))

(declare-fun m!4237347 () Bool)

(assert (=> b!3743690 m!4237347))

(declare-fun b!3743693 () Bool)

(declare-fun e!2314707 () Bool)

(declare-fun tp!1141299 () Bool)

(declare-fun tp!1141296 () Bool)

(assert (=> b!3743693 (= e!2314707 (and tp!1141299 tp!1141296))))

(assert (=> b!3743471 (= tp!1141213 e!2314707)))

(declare-fun b!3743694 () Bool)

(declare-fun tp!1141297 () Bool)

(assert (=> b!3743694 (= e!2314707 tp!1141297)))

(declare-fun b!3743692 () Bool)

(assert (=> b!3743692 (= e!2314707 tp_is_empty!18925)))

(declare-fun b!3743695 () Bool)

(declare-fun tp!1141295 () Bool)

(declare-fun tp!1141298 () Bool)

(assert (=> b!3743695 (= e!2314707 (and tp!1141295 tp!1141298))))

(assert (= (and b!3743471 ((_ is ElementMatch!10955) (regex!6050 (h!45154 rules!4189)))) b!3743692))

(assert (= (and b!3743471 ((_ is Concat!17236) (regex!6050 (h!45154 rules!4189)))) b!3743693))

(assert (= (and b!3743471 ((_ is Star!10955) (regex!6050 (h!45154 rules!4189)))) b!3743694))

(assert (= (and b!3743471 ((_ is Union!10955) (regex!6050 (h!45154 rules!4189)))) b!3743695))

(declare-fun b!3743697 () Bool)

(declare-fun e!2314708 () Bool)

(declare-fun tp!1141304 () Bool)

(declare-fun tp!1141301 () Bool)

(assert (=> b!3743697 (= e!2314708 (and tp!1141304 tp!1141301))))

(assert (=> b!3743473 (= tp!1141214 e!2314708)))

(declare-fun b!3743698 () Bool)

(declare-fun tp!1141302 () Bool)

(assert (=> b!3743698 (= e!2314708 tp!1141302)))

(declare-fun b!3743696 () Bool)

(assert (=> b!3743696 (= e!2314708 tp_is_empty!18925)))

(declare-fun b!3743699 () Bool)

(declare-fun tp!1141300 () Bool)

(declare-fun tp!1141303 () Bool)

(assert (=> b!3743699 (= e!2314708 (and tp!1141300 tp!1141303))))

(assert (= (and b!3743473 ((_ is ElementMatch!10955) (regex!6050 rNSep!159))) b!3743696))

(assert (= (and b!3743473 ((_ is Concat!17236) (regex!6050 rNSep!159))) b!3743697))

(assert (= (and b!3743473 ((_ is Star!10955) (regex!6050 rNSep!159))) b!3743698))

(assert (= (and b!3743473 ((_ is Union!10955) (regex!6050 rNSep!159))) b!3743699))

(declare-fun b!3743702 () Bool)

(declare-fun b_free!99345 () Bool)

(declare-fun b_next!100049 () Bool)

(assert (=> b!3743702 (= b_free!99345 (not b_next!100049))))

(declare-fun tp!1141307 () Bool)

(declare-fun b_and!277579 () Bool)

(assert (=> b!3743702 (= tp!1141307 b_and!277579)))

(declare-fun b_free!99347 () Bool)

(declare-fun b_next!100051 () Bool)

(assert (=> b!3743702 (= b_free!99347 (not b_next!100051))))

(declare-fun tp!1141305 () Bool)

(declare-fun b_and!277581 () Bool)

(assert (=> b!3743702 (= tp!1141305 b_and!277581)))

(declare-fun e!2314710 () Bool)

(assert (=> b!3743702 (= e!2314710 (and tp!1141307 tp!1141305))))

(declare-fun e!2314709 () Bool)

(declare-fun tp!1141308 () Bool)

(declare-fun b!3743701 () Bool)

(assert (=> b!3743701 (= e!2314709 (and tp!1141308 (inv!53282 (tag!6910 (h!45154 (t!302541 rulesRec!198)))) (inv!53284 (transformation!6050 (h!45154 (t!302541 rulesRec!198)))) e!2314710))))

(declare-fun b!3743700 () Bool)

(declare-fun e!2314711 () Bool)

(declare-fun tp!1141306 () Bool)

(assert (=> b!3743700 (= e!2314711 (and e!2314709 tp!1141306))))

(assert (=> b!3743478 (= tp!1141206 e!2314711)))

(assert (= b!3743701 b!3743702))

(assert (= b!3743700 b!3743701))

(assert (= (and b!3743478 ((_ is Cons!39734) (t!302541 rulesRec!198))) b!3743700))

(declare-fun m!4237349 () Bool)

(assert (=> b!3743701 m!4237349))

(declare-fun m!4237351 () Bool)

(assert (=> b!3743701 m!4237351))

(check-sat (not b!3743697) (not b!3743546) (not bm!274870) b_and!277561 (not b!3743700) (not bm!274885) (not d!1092883) (not b!3743689) (not b!3743623) b_and!277563 (not b!3743675) (not b_next!100051) (not b!3743694) (not b!3743661) (not b_next!100031) (not b_next!100025) b_and!277559 (not b!3743699) (not b_next!100035) b_and!277565 (not d!1092893) (not b!3743698) b_and!277553 (not b_next!100047) b_and!277577 b_and!277555 (not bm!274887) (not d!1092877) (not b_next!100049) (not d!1092929) (not b_next!100029) (not b!3743679) (not b!3743693) b_and!277551 (not b_next!100021) (not d!1092925) (not b!3743545) b_and!277581 (not b!3743616) (not b!3743658) (not d!1092933) b_and!277575 (not b_next!100033) (not b_next!100027) (not b!3743562) (not b_next!100045) (not b!3743695) (not b!3743659) b_and!277579 (not b!3743678) (not bm!274888) (not b!3743680) (not b!3743701) (not b!3743552) (not b_next!100023) (not b!3743536) (not b!3743674) (not d!1092897) b_and!277557 (not b!3743662) (not b!3743690) (not b!3743676) (not d!1092891) (not d!1092921) (not b!3743522) tp_is_empty!18925)
(check-sat b_and!277563 (not b_next!100051) (not b_next!100031) (not b_next!100029) b_and!277581 b_and!277575 b_and!277579 (not b_next!100023) b_and!277557 b_and!277561 (not b_next!100025) b_and!277559 (not b_next!100035) b_and!277565 b_and!277553 (not b_next!100047) b_and!277577 b_and!277555 (not b_next!100049) b_and!277551 (not b_next!100021) (not b_next!100033) (not b_next!100027) (not b_next!100045))

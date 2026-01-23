; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757284 () Bool)

(assert start!757284)

(declare-fun b!8043386 () Bool)

(declare-fun b_free!136015 () Bool)

(declare-fun b_next!136805 () Bool)

(assert (=> b!8043386 (= b_free!136015 (not b_next!136805))))

(declare-fun tp!2410297 () Bool)

(declare-fun b_and!354451 () Bool)

(assert (=> b!8043386 (= tp!2410297 b_and!354451)))

(declare-fun b_free!136017 () Bool)

(declare-fun b_next!136807 () Bool)

(assert (=> b!8043386 (= b_free!136017 (not b_next!136807))))

(declare-fun tp!2410303 () Bool)

(declare-fun b_and!354453 () Bool)

(assert (=> b!8043386 (= tp!2410303 b_and!354453)))

(declare-fun b!8043381 () Bool)

(declare-fun b_free!136019 () Bool)

(declare-fun b_next!136809 () Bool)

(assert (=> b!8043381 (= b_free!136019 (not b_next!136809))))

(declare-fun tp!2410295 () Bool)

(declare-fun b_and!354455 () Bool)

(assert (=> b!8043381 (= tp!2410295 b_and!354455)))

(declare-fun b_free!136021 () Bool)

(declare-fun b_next!136811 () Bool)

(assert (=> b!8043381 (= b_free!136021 (not b_next!136811))))

(declare-fun tp!2410301 () Bool)

(declare-fun b_and!354457 () Bool)

(assert (=> b!8043381 (= tp!2410301 b_and!354457)))

(declare-fun b!8043385 () Bool)

(declare-fun b_free!136023 () Bool)

(declare-fun b_next!136813 () Bool)

(assert (=> b!8043385 (= b_free!136023 (not b_next!136813))))

(declare-fun tp!2410298 () Bool)

(declare-fun b_and!354459 () Bool)

(assert (=> b!8043385 (= tp!2410298 b_and!354459)))

(declare-fun b_free!136025 () Bool)

(declare-fun b_next!136815 () Bool)

(assert (=> b!8043385 (= b_free!136025 (not b_next!136815))))

(declare-fun tp!2410299 () Bool)

(declare-fun b_and!354461 () Bool)

(assert (=> b!8043385 (= tp!2410299 b_and!354461)))

(declare-fun b!8043374 () Bool)

(declare-fun e!4738143 () Bool)

(declare-fun e!4738146 () Bool)

(declare-fun tp!2410294 () Bool)

(declare-datatypes ((C!43928 0))(
  ( (C!43929 (val!32740 Int)) )
))
(declare-datatypes ((List!75318 0))(
  ( (Nil!75192) (Cons!75192 (h!81640 C!43928) (t!391088 List!75318)) )
))
(declare-datatypes ((IArray!32045 0))(
  ( (IArray!32046 (innerList!16080 List!75318)) )
))
(declare-datatypes ((Conc!15992 0))(
  ( (Node!15992 (left!57311 Conc!15992) (right!57641 Conc!15992) (csize!32214 Int) (cheight!16203 Int)) (Leaf!30664 (xs!19390 IArray!32045) (csize!32215 Int)) (Empty!15992) )
))
(declare-datatypes ((List!75319 0))(
  ( (Nil!75193) (Cons!75193 (h!81641 (_ BitVec 16)) (t!391089 List!75319)) )
))
(declare-datatypes ((Regex!21795 0))(
  ( (ElementMatch!21795 (c!1475221 C!43928)) (Concat!30839 (regOne!44102 Regex!21795) (regTwo!44102 Regex!21795)) (EmptyExpr!21795) (Star!21795 (reg!22124 Regex!21795)) (EmptyLang!21795) (Union!21795 (regOne!44103 Regex!21795) (regTwo!44103 Regex!21795)) )
))
(declare-datatypes ((String!84993 0))(
  ( (String!84994 (value!291676 String)) )
))
(declare-datatypes ((TokenValue!9044 0))(
  ( (FloatLiteralValue!18088 (text!63753 List!75319)) (TokenValueExt!9043 (__x!35369 Int)) (Broken!45220 (value!291677 List!75319)) (Object!9169) (End!9044) (Def!9044) (Underscore!9044) (Match!9044) (Else!9044) (Error!9044) (Case!9044) (If!9044) (Extends!9044) (Abstract!9044) (Class!9044) (Val!9044) (DelimiterValue!18088 (del!9104 List!75319)) (KeywordValue!9050 (value!291678 List!75319)) (CommentValue!18088 (value!291679 List!75319)) (WhitespaceValue!18088 (value!291680 List!75319)) (IndentationValue!9044 (value!291681 List!75319)) (String!84995) (Int32!9044) (Broken!45221 (value!291682 List!75319)) (Boolean!9045) (Unit!171069) (OperatorValue!9047 (op!9104 List!75319)) (IdentifierValue!18088 (value!291683 List!75319)) (IdentifierValue!18089 (value!291684 List!75319)) (WhitespaceValue!18089 (value!291685 List!75319)) (True!18088) (False!18088) (Broken!45222 (value!291686 List!75319)) (Broken!45223 (value!291687 List!75319)) (True!18089) (RightBrace!9044) (RightBracket!9044) (Colon!9044) (Null!9044) (Comma!9044) (LeftBracket!9044) (False!18089) (LeftBrace!9044) (ImaginaryLiteralValue!9044 (text!63754 List!75319)) (StringLiteralValue!27132 (value!291688 List!75319)) (EOFValue!9044 (value!291689 List!75319)) (IdentValue!9044 (value!291690 List!75319)) (DelimiterValue!18089 (value!291691 List!75319)) (DedentValue!9044 (value!291692 List!75319)) (NewLineValue!9044 (value!291693 List!75319)) (IntegerValue!27132 (value!291694 (_ BitVec 32)) (text!63755 List!75319)) (IntegerValue!27133 (value!291695 Int) (text!63756 List!75319)) (Times!9044) (Or!9044) (Equal!9044) (Minus!9044) (Broken!45224 (value!291696 List!75319)) (And!9044) (Div!9044) (LessEqual!9044) (Mod!9044) (Concat!30840) (Not!9044) (Plus!9044) (SpaceValue!9044 (value!291697 List!75319)) (IntegerValue!27134 (value!291698 Int) (text!63757 List!75319)) (StringLiteralValue!27133 (text!63758 List!75319)) (FloatLiteralValue!18089 (text!63759 List!75319)) (BytesLiteralValue!9044 (value!291699 List!75319)) (CommentValue!18089 (value!291700 List!75319)) (StringLiteralValue!27134 (value!291701 List!75319)) (ErrorTokenValue!9044 (msg!9105 List!75319)) )
))
(declare-datatypes ((BalanceConc!30940 0))(
  ( (BalanceConc!30941 (c!1475222 Conc!15992)) )
))
(declare-datatypes ((TokenValueInjection!17396 0))(
  ( (TokenValueInjection!17397 (toValue!11799 Int) (toChars!11658 Int)) )
))
(declare-datatypes ((Rule!17248 0))(
  ( (Rule!17249 (regex!8724 Regex!21795) (tag!9588 String!84993) (isSeparator!8724 Bool) (transformation!8724 TokenValueInjection!17396)) )
))
(declare-fun rSep!153 () Rule!17248)

(declare-fun inv!96977 (String!84993) Bool)

(declare-fun inv!96979 (TokenValueInjection!17396) Bool)

(assert (=> b!8043374 (= e!4738146 (and tp!2410294 (inv!96977 (tag!9588 rSep!153)) (inv!96979 (transformation!8724 rSep!153)) e!4738143))))

(declare-datatypes ((List!75320 0))(
  ( (Nil!75194) (Cons!75194 (h!81642 Rule!17248) (t!391090 List!75320)) )
))
(declare-fun rules!4166 () List!75320)

(declare-fun e!4738144 () Bool)

(declare-fun tp!2410300 () Bool)

(declare-fun e!4738145 () Bool)

(declare-fun b!8043375 () Bool)

(assert (=> b!8043375 (= e!4738145 (and tp!2410300 (inv!96977 (tag!9588 (h!81642 rules!4166))) (inv!96979 (transformation!8724 (h!81642 rules!4166))) e!4738144))))

(declare-fun e!4738137 () Bool)

(declare-fun b!8043376 () Bool)

(declare-fun e!4738142 () Bool)

(declare-fun rNSep!153 () Rule!17248)

(declare-fun tp!2410296 () Bool)

(assert (=> b!8043376 (= e!4738142 (and tp!2410296 (inv!96977 (tag!9588 rNSep!153)) (inv!96979 (transformation!8724 rNSep!153)) e!4738137))))

(declare-fun b!8043377 () Bool)

(declare-fun res!3179477 () Bool)

(declare-fun e!4738139 () Bool)

(assert (=> b!8043377 (=> (not res!3179477) (not e!4738139))))

(declare-fun contains!21033 (List!75320 Rule!17248) Bool)

(assert (=> b!8043377 (= res!3179477 (contains!21033 rules!4166 rSep!153))))

(declare-fun b!8043378 () Bool)

(declare-fun res!3179478 () Bool)

(assert (=> b!8043378 (=> (not res!3179478) (not e!4738139))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!998 (Rule!17248 List!75320) Bool)

(assert (=> b!8043378 (= res!3179478 (ruleDisjointCharsFromAllFromOtherType!998 rNSep!153 rules!4166))))

(declare-fun res!3179474 () Bool)

(assert (=> start!757284 (=> (not res!3179474) (not e!4738139))))

(declare-datatypes ((LexerInterface!8314 0))(
  ( (LexerInterfaceExt!8311 (__x!35370 Int)) (Lexer!8312) )
))
(declare-fun thiss!27104 () LexerInterface!8314)

(get-info :version)

(assert (=> start!757284 (= res!3179474 ((_ is Lexer!8312) thiss!27104))))

(assert (=> start!757284 e!4738139))

(declare-fun e!4738138 () Bool)

(assert (=> start!757284 e!4738138))

(declare-fun tp_is_empty!54585 () Bool)

(assert (=> start!757284 tp_is_empty!54585))

(assert (=> start!757284 true))

(assert (=> start!757284 e!4738142))

(assert (=> start!757284 e!4738146))

(declare-fun b!8043379 () Bool)

(declare-fun res!3179475 () Bool)

(assert (=> b!8043379 (=> (not res!3179475) (not e!4738139))))

(assert (=> b!8043379 (= res!3179475 (and (not (isSeparator!8724 rNSep!153)) (isSeparator!8724 rSep!153)))))

(declare-fun b!8043380 () Bool)

(declare-fun res!3179479 () Bool)

(assert (=> b!8043380 (=> (not res!3179479) (not e!4738139))))

(declare-fun c!6885 () C!43928)

(declare-fun contains!21034 (List!75318 C!43928) Bool)

(declare-fun usedCharacters!1302 (Regex!21795) List!75318)

(assert (=> b!8043380 (= res!3179479 (contains!21034 (usedCharacters!1302 (regex!8724 rSep!153)) c!6885))))

(assert (=> b!8043381 (= e!4738144 (and tp!2410295 tp!2410301))))

(declare-fun b!8043382 () Bool)

(declare-fun res!3179476 () Bool)

(assert (=> b!8043382 (=> (not res!3179476) (not e!4738139))))

(declare-fun rulesInvariant!6782 (LexerInterface!8314 List!75320) Bool)

(assert (=> b!8043382 (= res!3179476 (rulesInvariant!6782 thiss!27104 rules!4166))))

(declare-fun b!8043383 () Bool)

(assert (=> b!8043383 (= e!4738139 (not (contains!21033 (t!391090 rules!4166) rSep!153)))))

(assert (=> b!8043383 (rulesInvariant!6782 thiss!27104 (t!391090 rules!4166))))

(declare-datatypes ((Unit!171070 0))(
  ( (Unit!171071) )
))
(declare-fun lt!2722446 () Unit!171070)

(declare-fun lemmaInvariantOnRulesThenOnTail!890 (LexerInterface!8314 Rule!17248 List!75320) Unit!171070)

(assert (=> b!8043383 (= lt!2722446 (lemmaInvariantOnRulesThenOnTail!890 thiss!27104 (h!81642 rules!4166) (t!391090 rules!4166)))))

(declare-fun b!8043384 () Bool)

(declare-fun tp!2410302 () Bool)

(assert (=> b!8043384 (= e!4738138 (and e!4738145 tp!2410302))))

(assert (=> b!8043385 (= e!4738143 (and tp!2410298 tp!2410299))))

(assert (=> b!8043386 (= e!4738137 (and tp!2410297 tp!2410303))))

(declare-fun b!8043387 () Bool)

(declare-fun res!3179480 () Bool)

(assert (=> b!8043387 (=> (not res!3179480) (not e!4738139))))

(assert (=> b!8043387 (= res!3179480 (and (or (not ((_ is Cons!75194) rules!4166)) (not (= (h!81642 rules!4166) rSep!153))) ((_ is Cons!75194) rules!4166)))))

(assert (= (and start!757284 res!3179474) b!8043382))

(assert (= (and b!8043382 res!3179476) b!8043377))

(assert (= (and b!8043377 res!3179477) b!8043380))

(assert (= (and b!8043380 res!3179479) b!8043379))

(assert (= (and b!8043379 res!3179475) b!8043378))

(assert (= (and b!8043378 res!3179478) b!8043387))

(assert (= (and b!8043387 res!3179480) b!8043383))

(assert (= b!8043375 b!8043381))

(assert (= b!8043384 b!8043375))

(assert (= (and start!757284 ((_ is Cons!75194) rules!4166)) b!8043384))

(assert (= b!8043376 b!8043386))

(assert (= start!757284 b!8043376))

(assert (= b!8043374 b!8043385))

(assert (= start!757284 b!8043374))

(declare-fun m!8396742 () Bool)

(assert (=> b!8043374 m!8396742))

(declare-fun m!8396744 () Bool)

(assert (=> b!8043374 m!8396744))

(declare-fun m!8396746 () Bool)

(assert (=> b!8043382 m!8396746))

(declare-fun m!8396748 () Bool)

(assert (=> b!8043375 m!8396748))

(declare-fun m!8396750 () Bool)

(assert (=> b!8043375 m!8396750))

(declare-fun m!8396752 () Bool)

(assert (=> b!8043378 m!8396752))

(declare-fun m!8396754 () Bool)

(assert (=> b!8043376 m!8396754))

(declare-fun m!8396756 () Bool)

(assert (=> b!8043376 m!8396756))

(declare-fun m!8396758 () Bool)

(assert (=> b!8043380 m!8396758))

(assert (=> b!8043380 m!8396758))

(declare-fun m!8396760 () Bool)

(assert (=> b!8043380 m!8396760))

(declare-fun m!8396762 () Bool)

(assert (=> b!8043383 m!8396762))

(declare-fun m!8396764 () Bool)

(assert (=> b!8043383 m!8396764))

(declare-fun m!8396766 () Bool)

(assert (=> b!8043383 m!8396766))

(declare-fun m!8396768 () Bool)

(assert (=> b!8043377 m!8396768))

(check-sat (not b!8043377) (not b_next!136809) (not b!8043384) (not b!8043374) (not b!8043383) (not b_next!136805) b_and!354455 (not b_next!136811) (not b_next!136807) b_and!354451 (not b_next!136813) b_and!354459 b_and!354457 (not b!8043378) b_and!354453 tp_is_empty!54585 (not b_next!136815) b_and!354461 (not b!8043376) (not b!8043375) (not b!8043382) (not b!8043380))
(check-sat (not b_next!136809) (not b_next!136805) b_and!354455 (not b_next!136811) (not b_next!136807) b_and!354451 (not b_next!136813) b_and!354459 b_and!354453 b_and!354457 (not b_next!136815) b_and!354461)
(get-model)

(declare-fun d!2396008 () Bool)

(declare-fun lt!2722449 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16055 (List!75320) (InoxSet Rule!17248))

(assert (=> d!2396008 (= lt!2722449 (select (content!16055 rules!4166) rSep!153))))

(declare-fun e!4738166 () Bool)

(assert (=> d!2396008 (= lt!2722449 e!4738166)))

(declare-fun res!3179505 () Bool)

(assert (=> d!2396008 (=> (not res!3179505) (not e!4738166))))

(assert (=> d!2396008 (= res!3179505 ((_ is Cons!75194) rules!4166))))

(assert (=> d!2396008 (= (contains!21033 rules!4166 rSep!153) lt!2722449)))

(declare-fun b!8043408 () Bool)

(declare-fun e!4738165 () Bool)

(assert (=> b!8043408 (= e!4738166 e!4738165)))

(declare-fun res!3179506 () Bool)

(assert (=> b!8043408 (=> res!3179506 e!4738165)))

(assert (=> b!8043408 (= res!3179506 (= (h!81642 rules!4166) rSep!153))))

(declare-fun b!8043409 () Bool)

(assert (=> b!8043409 (= e!4738165 (contains!21033 (t!391090 rules!4166) rSep!153))))

(assert (= (and d!2396008 res!3179505) b!8043408))

(assert (= (and b!8043408 (not res!3179506)) b!8043409))

(declare-fun m!8396782 () Bool)

(assert (=> d!2396008 m!8396782))

(declare-fun m!8396784 () Bool)

(assert (=> d!2396008 m!8396784))

(assert (=> b!8043409 m!8396762))

(assert (=> b!8043377 d!2396008))

(declare-fun b!8043427 () Bool)

(declare-fun e!4738182 () Bool)

(declare-fun e!4738184 () Bool)

(assert (=> b!8043427 (= e!4738182 e!4738184)))

(declare-fun res!3179521 () Bool)

(declare-fun rulesUseDisjointChars!397 (Rule!17248 Rule!17248) Bool)

(assert (=> b!8043427 (= res!3179521 (rulesUseDisjointChars!397 rNSep!153 (h!81642 rules!4166)))))

(assert (=> b!8043427 (=> (not res!3179521) (not e!4738184))))

(declare-fun d!2396016 () Bool)

(declare-fun c!1475228 () Bool)

(assert (=> d!2396016 (= c!1475228 (and ((_ is Cons!75194) rules!4166) (not (= (isSeparator!8724 (h!81642 rules!4166)) (isSeparator!8724 rNSep!153)))))))

(assert (=> d!2396016 (= (ruleDisjointCharsFromAllFromOtherType!998 rNSep!153 rules!4166) e!4738182)))

(declare-fun b!8043428 () Bool)

(declare-fun e!4738183 () Bool)

(declare-fun call!746582 () Bool)

(assert (=> b!8043428 (= e!4738183 call!746582)))

(declare-fun b!8043429 () Bool)

(assert (=> b!8043429 (= e!4738182 e!4738183)))

(declare-fun res!3179520 () Bool)

(assert (=> b!8043429 (= res!3179520 (not ((_ is Cons!75194) rules!4166)))))

(assert (=> b!8043429 (=> res!3179520 e!4738183)))

(declare-fun bm!746577 () Bool)

(assert (=> bm!746577 (= call!746582 (ruleDisjointCharsFromAllFromOtherType!998 rNSep!153 (t!391090 rules!4166)))))

(declare-fun b!8043430 () Bool)

(assert (=> b!8043430 (= e!4738184 call!746582)))

(assert (= (and d!2396016 c!1475228) b!8043427))

(assert (= (and d!2396016 (not c!1475228)) b!8043429))

(assert (= (and b!8043427 res!3179521) b!8043430))

(assert (= (and b!8043429 (not res!3179520)) b!8043428))

(assert (= (or b!8043430 b!8043428) bm!746577))

(declare-fun m!8396796 () Bool)

(assert (=> b!8043427 m!8396796))

(declare-fun m!8396798 () Bool)

(assert (=> bm!746577 m!8396798))

(assert (=> b!8043378 d!2396016))

(declare-fun d!2396022 () Bool)

(declare-fun lt!2722453 () Bool)

(assert (=> d!2396022 (= lt!2722453 (select (content!16055 (t!391090 rules!4166)) rSep!153))))

(declare-fun e!4738186 () Bool)

(assert (=> d!2396022 (= lt!2722453 e!4738186)))

(declare-fun res!3179522 () Bool)

(assert (=> d!2396022 (=> (not res!3179522) (not e!4738186))))

(assert (=> d!2396022 (= res!3179522 ((_ is Cons!75194) (t!391090 rules!4166)))))

(assert (=> d!2396022 (= (contains!21033 (t!391090 rules!4166) rSep!153) lt!2722453)))

(declare-fun b!8043431 () Bool)

(declare-fun e!4738185 () Bool)

(assert (=> b!8043431 (= e!4738186 e!4738185)))

(declare-fun res!3179523 () Bool)

(assert (=> b!8043431 (=> res!3179523 e!4738185)))

(assert (=> b!8043431 (= res!3179523 (= (h!81642 (t!391090 rules!4166)) rSep!153))))

(declare-fun b!8043432 () Bool)

(assert (=> b!8043432 (= e!4738185 (contains!21033 (t!391090 (t!391090 rules!4166)) rSep!153))))

(assert (= (and d!2396022 res!3179522) b!8043431))

(assert (= (and b!8043431 (not res!3179523)) b!8043432))

(declare-fun m!8396800 () Bool)

(assert (=> d!2396022 m!8396800))

(declare-fun m!8396802 () Bool)

(assert (=> d!2396022 m!8396802))

(declare-fun m!8396804 () Bool)

(assert (=> b!8043432 m!8396804))

(assert (=> b!8043383 d!2396022))

(declare-fun d!2396024 () Bool)

(declare-fun res!3179526 () Bool)

(declare-fun e!4738189 () Bool)

(assert (=> d!2396024 (=> (not res!3179526) (not e!4738189))))

(declare-fun rulesValid!3148 (LexerInterface!8314 List!75320) Bool)

(assert (=> d!2396024 (= res!3179526 (rulesValid!3148 thiss!27104 (t!391090 rules!4166)))))

(assert (=> d!2396024 (= (rulesInvariant!6782 thiss!27104 (t!391090 rules!4166)) e!4738189)))

(declare-fun b!8043435 () Bool)

(declare-datatypes ((List!75322 0))(
  ( (Nil!75196) (Cons!75196 (h!81644 String!84993) (t!391092 List!75322)) )
))
(declare-fun noDuplicateTag!3309 (LexerInterface!8314 List!75320 List!75322) Bool)

(assert (=> b!8043435 (= e!4738189 (noDuplicateTag!3309 thiss!27104 (t!391090 rules!4166) Nil!75196))))

(assert (= (and d!2396024 res!3179526) b!8043435))

(declare-fun m!8396810 () Bool)

(assert (=> d!2396024 m!8396810))

(declare-fun m!8396814 () Bool)

(assert (=> b!8043435 m!8396814))

(assert (=> b!8043383 d!2396024))

(declare-fun d!2396030 () Bool)

(assert (=> d!2396030 (rulesInvariant!6782 thiss!27104 (t!391090 rules!4166))))

(declare-fun lt!2722462 () Unit!171070)

(declare-fun choose!60479 (LexerInterface!8314 Rule!17248 List!75320) Unit!171070)

(assert (=> d!2396030 (= lt!2722462 (choose!60479 thiss!27104 (h!81642 rules!4166) (t!391090 rules!4166)))))

(assert (=> d!2396030 (rulesInvariant!6782 thiss!27104 (Cons!75194 (h!81642 rules!4166) (t!391090 rules!4166)))))

(assert (=> d!2396030 (= (lemmaInvariantOnRulesThenOnTail!890 thiss!27104 (h!81642 rules!4166) (t!391090 rules!4166)) lt!2722462)))

(declare-fun bs!1971626 () Bool)

(assert (= bs!1971626 d!2396030))

(assert (=> bs!1971626 m!8396764))

(declare-fun m!8396824 () Bool)

(assert (=> bs!1971626 m!8396824))

(declare-fun m!8396826 () Bool)

(assert (=> bs!1971626 m!8396826))

(assert (=> b!8043383 d!2396030))

(declare-fun d!2396034 () Bool)

(assert (=> d!2396034 (= (inv!96977 (tag!9588 rSep!153)) (= (mod (str.len (value!291676 (tag!9588 rSep!153))) 2) 0))))

(assert (=> b!8043374 d!2396034))

(declare-fun d!2396036 () Bool)

(declare-fun res!3179536 () Bool)

(declare-fun e!4738207 () Bool)

(assert (=> d!2396036 (=> (not res!3179536) (not e!4738207))))

(declare-fun semiInverseModEq!3873 (Int Int) Bool)

(assert (=> d!2396036 (= res!3179536 (semiInverseModEq!3873 (toChars!11658 (transformation!8724 rSep!153)) (toValue!11799 (transformation!8724 rSep!153))))))

(assert (=> d!2396036 (= (inv!96979 (transformation!8724 rSep!153)) e!4738207)))

(declare-fun b!8043461 () Bool)

(declare-fun equivClasses!3688 (Int Int) Bool)

(assert (=> b!8043461 (= e!4738207 (equivClasses!3688 (toChars!11658 (transformation!8724 rSep!153)) (toValue!11799 (transformation!8724 rSep!153))))))

(assert (= (and d!2396036 res!3179536) b!8043461))

(declare-fun m!8396828 () Bool)

(assert (=> d!2396036 m!8396828))

(declare-fun m!8396830 () Bool)

(assert (=> b!8043461 m!8396830))

(assert (=> b!8043374 d!2396036))

(declare-fun d!2396038 () Bool)

(declare-fun lt!2722466 () Bool)

(declare-fun content!16057 (List!75318) (InoxSet C!43928))

(assert (=> d!2396038 (= lt!2722466 (select (content!16057 (usedCharacters!1302 (regex!8724 rSep!153))) c!6885))))

(declare-fun e!4738219 () Bool)

(assert (=> d!2396038 (= lt!2722466 e!4738219)))

(declare-fun res!3179544 () Bool)

(assert (=> d!2396038 (=> (not res!3179544) (not e!4738219))))

(assert (=> d!2396038 (= res!3179544 ((_ is Cons!75192) (usedCharacters!1302 (regex!8724 rSep!153))))))

(assert (=> d!2396038 (= (contains!21034 (usedCharacters!1302 (regex!8724 rSep!153)) c!6885) lt!2722466)))

(declare-fun b!8043477 () Bool)

(declare-fun e!4738220 () Bool)

(assert (=> b!8043477 (= e!4738219 e!4738220)))

(declare-fun res!3179545 () Bool)

(assert (=> b!8043477 (=> res!3179545 e!4738220)))

(assert (=> b!8043477 (= res!3179545 (= (h!81640 (usedCharacters!1302 (regex!8724 rSep!153))) c!6885))))

(declare-fun b!8043478 () Bool)

(assert (=> b!8043478 (= e!4738220 (contains!21034 (t!391088 (usedCharacters!1302 (regex!8724 rSep!153))) c!6885))))

(assert (= (and d!2396038 res!3179544) b!8043477))

(assert (= (and b!8043477 (not res!3179545)) b!8043478))

(assert (=> d!2396038 m!8396758))

(declare-fun m!8396846 () Bool)

(assert (=> d!2396038 m!8396846))

(declare-fun m!8396848 () Bool)

(assert (=> d!2396038 m!8396848))

(declare-fun m!8396850 () Bool)

(assert (=> b!8043478 m!8396850))

(assert (=> b!8043380 d!2396038))

(declare-fun b!8043528 () Bool)

(declare-fun e!4738249 () List!75318)

(declare-fun call!746603 () List!75318)

(assert (=> b!8043528 (= e!4738249 call!746603)))

(declare-fun b!8043529 () Bool)

(declare-fun e!4738246 () List!75318)

(assert (=> b!8043529 (= e!4738246 (Cons!75192 (c!1475221 (regex!8724 rSep!153)) Nil!75192))))

(declare-fun c!1475250 () Bool)

(declare-fun bm!746598 () Bool)

(declare-fun call!746605 () List!75318)

(declare-fun c!1475249 () Bool)

(assert (=> bm!746598 (= call!746605 (usedCharacters!1302 (ite c!1475249 (reg!22124 (regex!8724 rSep!153)) (ite c!1475250 (regTwo!44103 (regex!8724 rSep!153)) (regOne!44102 (regex!8724 rSep!153))))))))

(declare-fun b!8043530 () Bool)

(assert (=> b!8043530 (= e!4738249 call!746603)))

(declare-fun b!8043531 () Bool)

(declare-fun e!4738247 () List!75318)

(assert (=> b!8043531 (= e!4738247 call!746605)))

(declare-fun b!8043532 () Bool)

(assert (=> b!8043532 (= c!1475249 ((_ is Star!21795) (regex!8724 rSep!153)))))

(assert (=> b!8043532 (= e!4738246 e!4738247)))

(declare-fun b!8043533 () Bool)

(declare-fun e!4738248 () List!75318)

(assert (=> b!8043533 (= e!4738248 Nil!75192)))

(declare-fun bm!746600 () Bool)

(declare-fun call!746604 () List!75318)

(assert (=> bm!746600 (= call!746604 (usedCharacters!1302 (ite c!1475250 (regOne!44103 (regex!8724 rSep!153)) (regTwo!44102 (regex!8724 rSep!153)))))))

(declare-fun bm!746601 () Bool)

(declare-fun call!746606 () List!75318)

(declare-fun ++!18633 (List!75318 List!75318) List!75318)

(assert (=> bm!746601 (= call!746603 (++!18633 (ite c!1475250 call!746604 call!746606) (ite c!1475250 call!746606 call!746604)))))

(declare-fun bm!746599 () Bool)

(assert (=> bm!746599 (= call!746606 call!746605)))

(declare-fun d!2396046 () Bool)

(declare-fun c!1475251 () Bool)

(assert (=> d!2396046 (= c!1475251 (or ((_ is EmptyExpr!21795) (regex!8724 rSep!153)) ((_ is EmptyLang!21795) (regex!8724 rSep!153))))))

(assert (=> d!2396046 (= (usedCharacters!1302 (regex!8724 rSep!153)) e!4738248)))

(declare-fun b!8043534 () Bool)

(assert (=> b!8043534 (= e!4738248 e!4738246)))

(declare-fun c!1475252 () Bool)

(assert (=> b!8043534 (= c!1475252 ((_ is ElementMatch!21795) (regex!8724 rSep!153)))))

(declare-fun b!8043535 () Bool)

(assert (=> b!8043535 (= e!4738247 e!4738249)))

(assert (=> b!8043535 (= c!1475250 ((_ is Union!21795) (regex!8724 rSep!153)))))

(assert (= (and d!2396046 c!1475251) b!8043533))

(assert (= (and d!2396046 (not c!1475251)) b!8043534))

(assert (= (and b!8043534 c!1475252) b!8043529))

(assert (= (and b!8043534 (not c!1475252)) b!8043532))

(assert (= (and b!8043532 c!1475249) b!8043531))

(assert (= (and b!8043532 (not c!1475249)) b!8043535))

(assert (= (and b!8043535 c!1475250) b!8043530))

(assert (= (and b!8043535 (not c!1475250)) b!8043528))

(assert (= (or b!8043530 b!8043528) bm!746600))

(assert (= (or b!8043530 b!8043528) bm!746599))

(assert (= (or b!8043530 b!8043528) bm!746601))

(assert (= (or b!8043531 bm!746599) bm!746598))

(declare-fun m!8396856 () Bool)

(assert (=> bm!746598 m!8396856))

(declare-fun m!8396858 () Bool)

(assert (=> bm!746600 m!8396858))

(declare-fun m!8396860 () Bool)

(assert (=> bm!746601 m!8396860))

(assert (=> b!8043380 d!2396046))

(declare-fun d!2396048 () Bool)

(assert (=> d!2396048 (= (inv!96977 (tag!9588 (h!81642 rules!4166))) (= (mod (str.len (value!291676 (tag!9588 (h!81642 rules!4166)))) 2) 0))))

(assert (=> b!8043375 d!2396048))

(declare-fun d!2396050 () Bool)

(declare-fun res!3179546 () Bool)

(declare-fun e!4738250 () Bool)

(assert (=> d!2396050 (=> (not res!3179546) (not e!4738250))))

(assert (=> d!2396050 (= res!3179546 (semiInverseModEq!3873 (toChars!11658 (transformation!8724 (h!81642 rules!4166))) (toValue!11799 (transformation!8724 (h!81642 rules!4166)))))))

(assert (=> d!2396050 (= (inv!96979 (transformation!8724 (h!81642 rules!4166))) e!4738250)))

(declare-fun b!8043536 () Bool)

(assert (=> b!8043536 (= e!4738250 (equivClasses!3688 (toChars!11658 (transformation!8724 (h!81642 rules!4166))) (toValue!11799 (transformation!8724 (h!81642 rules!4166)))))))

(assert (= (and d!2396050 res!3179546) b!8043536))

(declare-fun m!8396862 () Bool)

(assert (=> d!2396050 m!8396862))

(declare-fun m!8396864 () Bool)

(assert (=> b!8043536 m!8396864))

(assert (=> b!8043375 d!2396050))

(declare-fun d!2396052 () Bool)

(assert (=> d!2396052 (= (inv!96977 (tag!9588 rNSep!153)) (= (mod (str.len (value!291676 (tag!9588 rNSep!153))) 2) 0))))

(assert (=> b!8043376 d!2396052))

(declare-fun d!2396054 () Bool)

(declare-fun res!3179547 () Bool)

(declare-fun e!4738251 () Bool)

(assert (=> d!2396054 (=> (not res!3179547) (not e!4738251))))

(assert (=> d!2396054 (= res!3179547 (semiInverseModEq!3873 (toChars!11658 (transformation!8724 rNSep!153)) (toValue!11799 (transformation!8724 rNSep!153))))))

(assert (=> d!2396054 (= (inv!96979 (transformation!8724 rNSep!153)) e!4738251)))

(declare-fun b!8043537 () Bool)

(assert (=> b!8043537 (= e!4738251 (equivClasses!3688 (toChars!11658 (transformation!8724 rNSep!153)) (toValue!11799 (transformation!8724 rNSep!153))))))

(assert (= (and d!2396054 res!3179547) b!8043537))

(declare-fun m!8396866 () Bool)

(assert (=> d!2396054 m!8396866))

(declare-fun m!8396868 () Bool)

(assert (=> b!8043537 m!8396868))

(assert (=> b!8043376 d!2396054))

(declare-fun d!2396056 () Bool)

(declare-fun res!3179548 () Bool)

(declare-fun e!4738252 () Bool)

(assert (=> d!2396056 (=> (not res!3179548) (not e!4738252))))

(assert (=> d!2396056 (= res!3179548 (rulesValid!3148 thiss!27104 rules!4166))))

(assert (=> d!2396056 (= (rulesInvariant!6782 thiss!27104 rules!4166) e!4738252)))

(declare-fun b!8043538 () Bool)

(assert (=> b!8043538 (= e!4738252 (noDuplicateTag!3309 thiss!27104 rules!4166 Nil!75196))))

(assert (= (and d!2396056 res!3179548) b!8043538))

(declare-fun m!8396870 () Bool)

(assert (=> d!2396056 m!8396870))

(declare-fun m!8396872 () Bool)

(assert (=> b!8043538 m!8396872))

(assert (=> b!8043382 d!2396056))

(declare-fun b!8043549 () Bool)

(declare-fun b_free!136031 () Bool)

(declare-fun b_next!136821 () Bool)

(assert (=> b!8043549 (= b_free!136031 (not b_next!136821))))

(declare-fun tp!2410351 () Bool)

(declare-fun b_and!354467 () Bool)

(assert (=> b!8043549 (= tp!2410351 b_and!354467)))

(declare-fun b_free!136033 () Bool)

(declare-fun b_next!136823 () Bool)

(assert (=> b!8043549 (= b_free!136033 (not b_next!136823))))

(declare-fun tp!2410352 () Bool)

(declare-fun b_and!354469 () Bool)

(assert (=> b!8043549 (= tp!2410352 b_and!354469)))

(declare-fun e!4738264 () Bool)

(assert (=> b!8043549 (= e!4738264 (and tp!2410351 tp!2410352))))

(declare-fun b!8043548 () Bool)

(declare-fun e!4738261 () Bool)

(declare-fun tp!2410350 () Bool)

(assert (=> b!8043548 (= e!4738261 (and tp!2410350 (inv!96977 (tag!9588 (h!81642 (t!391090 rules!4166)))) (inv!96979 (transformation!8724 (h!81642 (t!391090 rules!4166)))) e!4738264))))

(declare-fun b!8043547 () Bool)

(declare-fun e!4738262 () Bool)

(declare-fun tp!2410349 () Bool)

(assert (=> b!8043547 (= e!4738262 (and e!4738261 tp!2410349))))

(assert (=> b!8043384 (= tp!2410302 e!4738262)))

(assert (= b!8043548 b!8043549))

(assert (= b!8043547 b!8043548))

(assert (= (and b!8043384 ((_ is Cons!75194) (t!391090 rules!4166))) b!8043547))

(declare-fun m!8396874 () Bool)

(assert (=> b!8043548 m!8396874))

(declare-fun m!8396876 () Bool)

(assert (=> b!8043548 m!8396876))

(declare-fun b!8043563 () Bool)

(declare-fun e!4738267 () Bool)

(declare-fun tp!2410366 () Bool)

(declare-fun tp!2410364 () Bool)

(assert (=> b!8043563 (= e!4738267 (and tp!2410366 tp!2410364))))

(declare-fun b!8043560 () Bool)

(assert (=> b!8043560 (= e!4738267 tp_is_empty!54585)))

(declare-fun b!8043562 () Bool)

(declare-fun tp!2410363 () Bool)

(assert (=> b!8043562 (= e!4738267 tp!2410363)))

(assert (=> b!8043374 (= tp!2410294 e!4738267)))

(declare-fun b!8043561 () Bool)

(declare-fun tp!2410365 () Bool)

(declare-fun tp!2410367 () Bool)

(assert (=> b!8043561 (= e!4738267 (and tp!2410365 tp!2410367))))

(assert (= (and b!8043374 ((_ is ElementMatch!21795) (regex!8724 rSep!153))) b!8043560))

(assert (= (and b!8043374 ((_ is Concat!30839) (regex!8724 rSep!153))) b!8043561))

(assert (= (and b!8043374 ((_ is Star!21795) (regex!8724 rSep!153))) b!8043562))

(assert (= (and b!8043374 ((_ is Union!21795) (regex!8724 rSep!153))) b!8043563))

(declare-fun b!8043567 () Bool)

(declare-fun e!4738268 () Bool)

(declare-fun tp!2410371 () Bool)

(declare-fun tp!2410369 () Bool)

(assert (=> b!8043567 (= e!4738268 (and tp!2410371 tp!2410369))))

(declare-fun b!8043564 () Bool)

(assert (=> b!8043564 (= e!4738268 tp_is_empty!54585)))

(declare-fun b!8043566 () Bool)

(declare-fun tp!2410368 () Bool)

(assert (=> b!8043566 (= e!4738268 tp!2410368)))

(assert (=> b!8043375 (= tp!2410300 e!4738268)))

(declare-fun b!8043565 () Bool)

(declare-fun tp!2410370 () Bool)

(declare-fun tp!2410372 () Bool)

(assert (=> b!8043565 (= e!4738268 (and tp!2410370 tp!2410372))))

(assert (= (and b!8043375 ((_ is ElementMatch!21795) (regex!8724 (h!81642 rules!4166)))) b!8043564))

(assert (= (and b!8043375 ((_ is Concat!30839) (regex!8724 (h!81642 rules!4166)))) b!8043565))

(assert (= (and b!8043375 ((_ is Star!21795) (regex!8724 (h!81642 rules!4166)))) b!8043566))

(assert (= (and b!8043375 ((_ is Union!21795) (regex!8724 (h!81642 rules!4166)))) b!8043567))

(declare-fun b!8043571 () Bool)

(declare-fun e!4738269 () Bool)

(declare-fun tp!2410376 () Bool)

(declare-fun tp!2410374 () Bool)

(assert (=> b!8043571 (= e!4738269 (and tp!2410376 tp!2410374))))

(declare-fun b!8043568 () Bool)

(assert (=> b!8043568 (= e!4738269 tp_is_empty!54585)))

(declare-fun b!8043570 () Bool)

(declare-fun tp!2410373 () Bool)

(assert (=> b!8043570 (= e!4738269 tp!2410373)))

(assert (=> b!8043376 (= tp!2410296 e!4738269)))

(declare-fun b!8043569 () Bool)

(declare-fun tp!2410375 () Bool)

(declare-fun tp!2410377 () Bool)

(assert (=> b!8043569 (= e!4738269 (and tp!2410375 tp!2410377))))

(assert (= (and b!8043376 ((_ is ElementMatch!21795) (regex!8724 rNSep!153))) b!8043568))

(assert (= (and b!8043376 ((_ is Concat!30839) (regex!8724 rNSep!153))) b!8043569))

(assert (= (and b!8043376 ((_ is Star!21795) (regex!8724 rNSep!153))) b!8043570))

(assert (= (and b!8043376 ((_ is Union!21795) (regex!8724 rNSep!153))) b!8043571))

(check-sat (not b!8043538) (not b!8043570) (not d!2396022) (not b!8043563) (not d!2396008) b_and!354469 b_and!354455 (not d!2396024) (not b_next!136811) (not d!2396054) (not b!8043461) (not b_next!136813) (not b!8043537) b_and!354459 b_and!354453 b_and!354457 (not b!8043565) tp_is_empty!54585 (not b_next!136815) b_and!354461 (not b_next!136823) (not b!8043566) (not b!8043478) (not b!8043567) (not b_next!136809) (not b!8043562) (not d!2396036) (not b!8043435) (not bm!746601) (not b!8043427) (not b!8043547) (not d!2396056) (not b_next!136805) (not bm!746600) (not d!2396038) (not b!8043432) (not b_next!136821) (not b!8043561) (not bm!746598) (not d!2396030) (not bm!746577) (not b!8043571) (not b!8043536) b_and!354467 (not b_next!136807) (not b!8043409) (not b!8043548) b_and!354451 (not d!2396050) (not b!8043569))
(check-sat (not b_next!136823) (not b_next!136809) b_and!354469 (not b_next!136805) (not b_next!136821) b_and!354455 (not b_next!136811) b_and!354451 (not b_next!136813) b_and!354459 b_and!354453 b_and!354457 (not b_next!136815) b_and!354461 b_and!354467 (not b_next!136807))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351682 () Bool)

(assert start!351682)

(declare-fun b!3746191 () Bool)

(declare-fun b_free!99737 () Bool)

(declare-fun b_next!100441 () Bool)

(assert (=> b!3746191 (= b_free!99737 (not b_next!100441))))

(declare-fun tp!1142739 () Bool)

(declare-fun b_and!277971 () Bool)

(assert (=> b!3746191 (= tp!1142739 b_and!277971)))

(declare-fun b_free!99739 () Bool)

(declare-fun b_next!100443 () Bool)

(assert (=> b!3746191 (= b_free!99739 (not b_next!100443))))

(declare-fun tp!1142737 () Bool)

(declare-fun b_and!277973 () Bool)

(assert (=> b!3746191 (= tp!1142737 b_and!277973)))

(declare-fun b!3746196 () Bool)

(declare-fun b_free!99741 () Bool)

(declare-fun b_next!100445 () Bool)

(assert (=> b!3746196 (= b_free!99741 (not b_next!100445))))

(declare-fun tp!1142746 () Bool)

(declare-fun b_and!277975 () Bool)

(assert (=> b!3746196 (= tp!1142746 b_and!277975)))

(declare-fun b_free!99743 () Bool)

(declare-fun b_next!100447 () Bool)

(assert (=> b!3746196 (= b_free!99743 (not b_next!100447))))

(declare-fun tp!1142745 () Bool)

(declare-fun b_and!277977 () Bool)

(assert (=> b!3746196 (= tp!1142745 b_and!277977)))

(declare-fun b!3746190 () Bool)

(declare-fun b_free!99745 () Bool)

(declare-fun b_next!100449 () Bool)

(assert (=> b!3746190 (= b_free!99745 (not b_next!100449))))

(declare-fun tp!1142744 () Bool)

(declare-fun b_and!277979 () Bool)

(assert (=> b!3746190 (= tp!1142744 b_and!277979)))

(declare-fun b_free!99747 () Bool)

(declare-fun b_next!100451 () Bool)

(assert (=> b!3746190 (= b_free!99747 (not b_next!100451))))

(declare-fun tp!1142738 () Bool)

(declare-fun b_and!277981 () Bool)

(assert (=> b!3746190 (= tp!1142738 b_and!277981)))

(declare-fun b!3746184 () Bool)

(declare-fun res!1518482 () Bool)

(declare-fun e!2316451 () Bool)

(assert (=> b!3746184 (=> (not res!1518482) (not e!2316451))))

(declare-datatypes ((LexerInterface!5661 0))(
  ( (LexerInterfaceExt!5658 (__x!24821 Int)) (Lexer!5659) )
))
(declare-fun thiss!27193 () LexerInterface!5661)

(declare-datatypes ((List!39934 0))(
  ( (Nil!39810) (Cons!39810 (h!45230 (_ BitVec 16)) (t!302617 List!39934)) )
))
(declare-datatypes ((TokenValue!6302 0))(
  ( (FloatLiteralValue!12604 (text!44559 List!39934)) (TokenValueExt!6301 (__x!24822 Int)) (Broken!31510 (value!193612 List!39934)) (Object!6425) (End!6302) (Def!6302) (Underscore!6302) (Match!6302) (Else!6302) (Error!6302) (Case!6302) (If!6302) (Extends!6302) (Abstract!6302) (Class!6302) (Val!6302) (DelimiterValue!12604 (del!6362 List!39934)) (KeywordValue!6308 (value!193613 List!39934)) (CommentValue!12604 (value!193614 List!39934)) (WhitespaceValue!12604 (value!193615 List!39934)) (IndentationValue!6302 (value!193616 List!39934)) (String!45135) (Int32!6302) (Broken!31511 (value!193617 List!39934)) (Boolean!6303) (Unit!57649) (OperatorValue!6305 (op!6362 List!39934)) (IdentifierValue!12604 (value!193618 List!39934)) (IdentifierValue!12605 (value!193619 List!39934)) (WhitespaceValue!12605 (value!193620 List!39934)) (True!12604) (False!12604) (Broken!31512 (value!193621 List!39934)) (Broken!31513 (value!193622 List!39934)) (True!12605) (RightBrace!6302) (RightBracket!6302) (Colon!6302) (Null!6302) (Comma!6302) (LeftBracket!6302) (False!12605) (LeftBrace!6302) (ImaginaryLiteralValue!6302 (text!44560 List!39934)) (StringLiteralValue!18906 (value!193623 List!39934)) (EOFValue!6302 (value!193624 List!39934)) (IdentValue!6302 (value!193625 List!39934)) (DelimiterValue!12605 (value!193626 List!39934)) (DedentValue!6302 (value!193627 List!39934)) (NewLineValue!6302 (value!193628 List!39934)) (IntegerValue!18906 (value!193629 (_ BitVec 32)) (text!44561 List!39934)) (IntegerValue!18907 (value!193630 Int) (text!44562 List!39934)) (Times!6302) (Or!6302) (Equal!6302) (Minus!6302) (Broken!31514 (value!193631 List!39934)) (And!6302) (Div!6302) (LessEqual!6302) (Mod!6302) (Concat!17279) (Not!6302) (Plus!6302) (SpaceValue!6302 (value!193632 List!39934)) (IntegerValue!18908 (value!193633 Int) (text!44563 List!39934)) (StringLiteralValue!18907 (text!44564 List!39934)) (FloatLiteralValue!12605 (text!44565 List!39934)) (BytesLiteralValue!6302 (value!193634 List!39934)) (CommentValue!12605 (value!193635 List!39934)) (StringLiteralValue!18908 (value!193636 List!39934)) (ErrorTokenValue!6302 (msg!6363 List!39934)) )
))
(declare-datatypes ((C!22140 0))(
  ( (C!22141 (val!13118 Int)) )
))
(declare-datatypes ((List!39935 0))(
  ( (Nil!39811) (Cons!39811 (h!45231 C!22140) (t!302618 List!39935)) )
))
(declare-datatypes ((IArray!24343 0))(
  ( (IArray!24344 (innerList!12229 List!39935)) )
))
(declare-datatypes ((Conc!12169 0))(
  ( (Node!12169 (left!30840 Conc!12169) (right!31170 Conc!12169) (csize!24568 Int) (cheight!12380 Int)) (Leaf!18889 (xs!15371 IArray!24343) (csize!24569 Int)) (Empty!12169) )
))
(declare-datatypes ((BalanceConc!23952 0))(
  ( (BalanceConc!23953 (c!648788 Conc!12169)) )
))
(declare-datatypes ((TokenValueInjection!12032 0))(
  ( (TokenValueInjection!12033 (toValue!8420 Int) (toChars!8279 Int)) )
))
(declare-datatypes ((Regex!10977 0))(
  ( (ElementMatch!10977 (c!648789 C!22140)) (Concat!17280 (regOne!22466 Regex!10977) (regTwo!22466 Regex!10977)) (EmptyExpr!10977) (Star!10977 (reg!11306 Regex!10977)) (EmptyLang!10977) (Union!10977 (regOne!22467 Regex!10977) (regTwo!22467 Regex!10977)) )
))
(declare-datatypes ((String!45136 0))(
  ( (String!45137 (value!193637 String)) )
))
(declare-datatypes ((Rule!11944 0))(
  ( (Rule!11945 (regex!6072 Regex!10977) (tag!6932 String!45136) (isSeparator!6072 Bool) (transformation!6072 TokenValueInjection!12032)) )
))
(declare-datatypes ((List!39936 0))(
  ( (Nil!39812) (Cons!39812 (h!45232 Rule!11944) (t!302619 List!39936)) )
))
(declare-fun rules!4213 () List!39936)

(declare-fun rulesInvariant!5058 (LexerInterface!5661 List!39936) Bool)

(assert (=> b!3746184 (= res!1518482 (rulesInvariant!5058 thiss!27193 rules!4213))))

(declare-fun b!3746185 () Bool)

(declare-fun res!1518481 () Bool)

(assert (=> b!3746185 (=> (not res!1518481) (not e!2316451))))

(declare-fun rNSep!170 () Rule!11944)

(declare-fun rSep!170 () Rule!11944)

(assert (=> b!3746185 (= res!1518481 (and (not (isSeparator!6072 rNSep!170)) (isSeparator!6072 rSep!170)))))

(declare-fun e!2316453 () Bool)

(declare-fun b!3746186 () Bool)

(declare-fun e!2316459 () Bool)

(declare-fun tp!1142743 () Bool)

(declare-fun inv!53337 (String!45136) Bool)

(declare-fun inv!53339 (TokenValueInjection!12032) Bool)

(assert (=> b!3746186 (= e!2316459 (and tp!1142743 (inv!53337 (tag!6932 (h!45232 rules!4213))) (inv!53339 (transformation!6072 (h!45232 rules!4213))) e!2316453))))

(declare-fun b!3746187 () Bool)

(declare-fun e!2316457 () Bool)

(declare-fun tp!1142742 () Bool)

(assert (=> b!3746187 (= e!2316457 (and e!2316459 tp!1142742))))

(declare-fun b!3746188 () Bool)

(declare-fun res!1518485 () Bool)

(assert (=> b!3746188 (=> (not res!1518485) (not e!2316451))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!945 (Rule!11944 List!39936) Bool)

(assert (=> b!3746188 (= res!1518485 (ruleDisjointCharsFromAllFromOtherType!945 rNSep!170 rules!4213))))

(declare-fun b!3746189 () Bool)

(declare-fun res!1518486 () Bool)

(assert (=> b!3746189 (=> (not res!1518486) (not e!2316451))))

(declare-fun c!6920 () C!22140)

(declare-fun contains!8103 (List!39935 C!22140) Bool)

(declare-fun usedCharacters!1240 (Regex!10977) List!39935)

(assert (=> b!3746189 (= res!1518486 (contains!8103 (usedCharacters!1240 (regex!6072 rNSep!170)) c!6920))))

(declare-fun e!2316452 () Bool)

(assert (=> b!3746190 (= e!2316452 (and tp!1142744 tp!1142738))))

(assert (=> b!3746191 (= e!2316453 (and tp!1142739 tp!1142737))))

(declare-fun e!2316455 () Bool)

(declare-fun e!2316454 () Bool)

(declare-fun b!3746192 () Bool)

(declare-fun tp!1142740 () Bool)

(assert (=> b!3746192 (= e!2316454 (and tp!1142740 (inv!53337 (tag!6932 rNSep!170)) (inv!53339 (transformation!6072 rNSep!170)) e!2316455))))

(declare-fun b!3746193 () Bool)

(declare-fun e!2316460 () Bool)

(declare-fun tp!1142741 () Bool)

(assert (=> b!3746193 (= e!2316460 (and tp!1142741 (inv!53337 (tag!6932 rSep!170)) (inv!53339 (transformation!6072 rSep!170)) e!2316452))))

(declare-fun b!3746195 () Bool)

(declare-fun ListPrimitiveSize!259 (List!39936) Int)

(assert (=> b!3746195 (= e!2316451 (< (ListPrimitiveSize!259 rules!4213) 0))))

(assert (=> b!3746196 (= e!2316455 (and tp!1142746 tp!1142745))))

(declare-fun res!1518483 () Bool)

(assert (=> start!351682 (=> (not res!1518483) (not e!2316451))))

(get-info :version)

(assert (=> start!351682 (= res!1518483 ((_ is Lexer!5659) thiss!27193))))

(assert (=> start!351682 e!2316451))

(assert (=> start!351682 e!2316454))

(assert (=> start!351682 e!2316457))

(assert (=> start!351682 true))

(declare-fun tp_is_empty!18969 () Bool)

(assert (=> start!351682 tp_is_empty!18969))

(assert (=> start!351682 e!2316460))

(declare-fun b!3746194 () Bool)

(declare-fun res!1518484 () Bool)

(assert (=> b!3746194 (=> (not res!1518484) (not e!2316451))))

(declare-fun contains!8104 (List!39936 Rule!11944) Bool)

(assert (=> b!3746194 (= res!1518484 (contains!8104 rules!4213 rSep!170))))

(assert (= (and start!351682 res!1518483) b!3746184))

(assert (= (and b!3746184 res!1518482) b!3746194))

(assert (= (and b!3746194 res!1518484) b!3746189))

(assert (= (and b!3746189 res!1518486) b!3746185))

(assert (= (and b!3746185 res!1518481) b!3746188))

(assert (= (and b!3746188 res!1518485) b!3746195))

(assert (= b!3746192 b!3746196))

(assert (= start!351682 b!3746192))

(assert (= b!3746186 b!3746191))

(assert (= b!3746187 b!3746186))

(assert (= (and start!351682 ((_ is Cons!39812) rules!4213)) b!3746187))

(assert (= b!3746193 b!3746190))

(assert (= start!351682 b!3746193))

(declare-fun m!4238861 () Bool)

(assert (=> b!3746194 m!4238861))

(declare-fun m!4238863 () Bool)

(assert (=> b!3746192 m!4238863))

(declare-fun m!4238865 () Bool)

(assert (=> b!3746192 m!4238865))

(declare-fun m!4238867 () Bool)

(assert (=> b!3746184 m!4238867))

(declare-fun m!4238869 () Bool)

(assert (=> b!3746195 m!4238869))

(declare-fun m!4238871 () Bool)

(assert (=> b!3746188 m!4238871))

(declare-fun m!4238873 () Bool)

(assert (=> b!3746193 m!4238873))

(declare-fun m!4238875 () Bool)

(assert (=> b!3746193 m!4238875))

(declare-fun m!4238877 () Bool)

(assert (=> b!3746186 m!4238877))

(declare-fun m!4238879 () Bool)

(assert (=> b!3746186 m!4238879))

(declare-fun m!4238881 () Bool)

(assert (=> b!3746189 m!4238881))

(assert (=> b!3746189 m!4238881))

(declare-fun m!4238883 () Bool)

(assert (=> b!3746189 m!4238883))

(check-sat (not b!3746187) (not b_next!100449) (not b_next!100447) (not b!3746195) (not b_next!100451) (not b!3746192) (not b!3746186) b_and!277973 (not b_next!100441) (not b!3746189) b_and!277979 (not b!3746188) b_and!277981 b_and!277975 (not b!3746194) b_and!277977 (not b!3746193) tp_is_empty!18969 (not b_next!100443) (not b!3746184) b_and!277971 (not b_next!100445))
(check-sat b_and!277977 (not b_next!100443) (not b_next!100449) (not b_next!100447) (not b_next!100451) b_and!277973 (not b_next!100441) b_and!277979 b_and!277981 b_and!277975 b_and!277971 (not b_next!100445))
(get-model)

(declare-fun d!1093368 () Bool)

(declare-fun lt!1299481 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5831 (List!39936) (InoxSet Rule!11944))

(assert (=> d!1093368 (= lt!1299481 (select (content!5831 rules!4213) rSep!170))))

(declare-fun e!2316465 () Bool)

(assert (=> d!1093368 (= lt!1299481 e!2316465)))

(declare-fun res!1518499 () Bool)

(assert (=> d!1093368 (=> (not res!1518499) (not e!2316465))))

(assert (=> d!1093368 (= res!1518499 ((_ is Cons!39812) rules!4213))))

(assert (=> d!1093368 (= (contains!8104 rules!4213 rSep!170) lt!1299481)))

(declare-fun b!3746201 () Bool)

(declare-fun e!2316466 () Bool)

(assert (=> b!3746201 (= e!2316465 e!2316466)))

(declare-fun res!1518500 () Bool)

(assert (=> b!3746201 (=> res!1518500 e!2316466)))

(assert (=> b!3746201 (= res!1518500 (= (h!45232 rules!4213) rSep!170))))

(declare-fun b!3746202 () Bool)

(assert (=> b!3746202 (= e!2316466 (contains!8104 (t!302619 rules!4213) rSep!170))))

(assert (= (and d!1093368 res!1518499) b!3746201))

(assert (= (and b!3746201 (not res!1518500)) b!3746202))

(declare-fun m!4238885 () Bool)

(assert (=> d!1093368 m!4238885))

(declare-fun m!4238887 () Bool)

(assert (=> d!1093368 m!4238887))

(declare-fun m!4238889 () Bool)

(assert (=> b!3746202 m!4238889))

(assert (=> b!3746194 d!1093368))

(declare-fun b!3746222 () Bool)

(declare-fun e!2316483 () Bool)

(declare-fun e!2316482 () Bool)

(assert (=> b!3746222 (= e!2316483 e!2316482)))

(declare-fun res!1518512 () Bool)

(declare-fun rulesUseDisjointChars!378 (Rule!11944 Rule!11944) Bool)

(assert (=> b!3746222 (= res!1518512 (rulesUseDisjointChars!378 rNSep!170 (h!45232 rules!4213)))))

(assert (=> b!3746222 (=> (not res!1518512) (not e!2316482))))

(declare-fun bm!275054 () Bool)

(declare-fun call!275059 () Bool)

(assert (=> bm!275054 (= call!275059 (ruleDisjointCharsFromAllFromOtherType!945 rNSep!170 (t!302619 rules!4213)))))

(declare-fun b!3746223 () Bool)

(declare-fun e!2316484 () Bool)

(assert (=> b!3746223 (= e!2316483 e!2316484)))

(declare-fun res!1518513 () Bool)

(assert (=> b!3746223 (= res!1518513 (not ((_ is Cons!39812) rules!4213)))))

(assert (=> b!3746223 (=> res!1518513 e!2316484)))

(declare-fun d!1093372 () Bool)

(declare-fun c!648794 () Bool)

(assert (=> d!1093372 (= c!648794 (and ((_ is Cons!39812) rules!4213) (not (= (isSeparator!6072 (h!45232 rules!4213)) (isSeparator!6072 rNSep!170)))))))

(assert (=> d!1093372 (= (ruleDisjointCharsFromAllFromOtherType!945 rNSep!170 rules!4213) e!2316483)))

(declare-fun b!3746224 () Bool)

(assert (=> b!3746224 (= e!2316482 call!275059)))

(declare-fun b!3746225 () Bool)

(assert (=> b!3746225 (= e!2316484 call!275059)))

(assert (= (and d!1093372 c!648794) b!3746222))

(assert (= (and d!1093372 (not c!648794)) b!3746223))

(assert (= (and b!3746222 res!1518512) b!3746224))

(assert (= (and b!3746223 (not res!1518513)) b!3746225))

(assert (= (or b!3746224 b!3746225) bm!275054))

(declare-fun m!4238895 () Bool)

(assert (=> b!3746222 m!4238895))

(declare-fun m!4238897 () Bool)

(assert (=> bm!275054 m!4238897))

(assert (=> b!3746188 d!1093372))

(declare-fun d!1093376 () Bool)

(assert (=> d!1093376 (= (inv!53337 (tag!6932 rSep!170)) (= (mod (str.len (value!193637 (tag!6932 rSep!170))) 2) 0))))

(assert (=> b!3746193 d!1093376))

(declare-fun d!1093378 () Bool)

(declare-fun res!1518524 () Bool)

(declare-fun e!2316496 () Bool)

(assert (=> d!1093378 (=> (not res!1518524) (not e!2316496))))

(declare-fun semiInverseModEq!2599 (Int Int) Bool)

(assert (=> d!1093378 (= res!1518524 (semiInverseModEq!2599 (toChars!8279 (transformation!6072 rSep!170)) (toValue!8420 (transformation!6072 rSep!170))))))

(assert (=> d!1093378 (= (inv!53339 (transformation!6072 rSep!170)) e!2316496)))

(declare-fun b!3746238 () Bool)

(declare-fun equivClasses!2498 (Int Int) Bool)

(assert (=> b!3746238 (= e!2316496 (equivClasses!2498 (toChars!8279 (transformation!6072 rSep!170)) (toValue!8420 (transformation!6072 rSep!170))))))

(assert (= (and d!1093378 res!1518524) b!3746238))

(declare-fun m!4238909 () Bool)

(assert (=> d!1093378 m!4238909))

(declare-fun m!4238911 () Bool)

(assert (=> b!3746238 m!4238911))

(assert (=> b!3746193 d!1093378))

(declare-fun d!1093384 () Bool)

(declare-fun lt!1299490 () Int)

(assert (=> d!1093384 (>= lt!1299490 0)))

(declare-fun e!2316502 () Int)

(assert (=> d!1093384 (= lt!1299490 e!2316502)))

(declare-fun c!648801 () Bool)

(assert (=> d!1093384 (= c!648801 ((_ is Nil!39812) rules!4213))))

(assert (=> d!1093384 (= (ListPrimitiveSize!259 rules!4213) lt!1299490)))

(declare-fun b!3746249 () Bool)

(assert (=> b!3746249 (= e!2316502 0)))

(declare-fun b!3746250 () Bool)

(assert (=> b!3746250 (= e!2316502 (+ 1 (ListPrimitiveSize!259 (t!302619 rules!4213))))))

(assert (= (and d!1093384 c!648801) b!3746249))

(assert (= (and d!1093384 (not c!648801)) b!3746250))

(declare-fun m!4238915 () Bool)

(assert (=> b!3746250 m!4238915))

(assert (=> b!3746195 d!1093384))

(declare-fun d!1093388 () Bool)

(declare-fun res!1518531 () Bool)

(declare-fun e!2316509 () Bool)

(assert (=> d!1093388 (=> (not res!1518531) (not e!2316509))))

(declare-fun rulesValid!2354 (LexerInterface!5661 List!39936) Bool)

(assert (=> d!1093388 (= res!1518531 (rulesValid!2354 thiss!27193 rules!4213))))

(assert (=> d!1093388 (= (rulesInvariant!5058 thiss!27193 rules!4213) e!2316509)))

(declare-fun b!3746257 () Bool)

(declare-datatypes ((List!39937 0))(
  ( (Nil!39813) (Cons!39813 (h!45233 String!45136) (t!302620 List!39937)) )
))
(declare-fun noDuplicateTag!2355 (LexerInterface!5661 List!39936 List!39937) Bool)

(assert (=> b!3746257 (= e!2316509 (noDuplicateTag!2355 thiss!27193 rules!4213 Nil!39813))))

(assert (= (and d!1093388 res!1518531) b!3746257))

(declare-fun m!4238917 () Bool)

(assert (=> d!1093388 m!4238917))

(declare-fun m!4238919 () Bool)

(assert (=> b!3746257 m!4238919))

(assert (=> b!3746184 d!1093388))

(declare-fun d!1093390 () Bool)

(declare-fun lt!1299496 () Bool)

(declare-fun content!5834 (List!39935) (InoxSet C!22140))

(assert (=> d!1093390 (= lt!1299496 (select (content!5834 (usedCharacters!1240 (regex!6072 rNSep!170))) c!6920))))

(declare-fun e!2316519 () Bool)

(assert (=> d!1093390 (= lt!1299496 e!2316519)))

(declare-fun res!1518538 () Bool)

(assert (=> d!1093390 (=> (not res!1518538) (not e!2316519))))

(assert (=> d!1093390 (= res!1518538 ((_ is Cons!39811) (usedCharacters!1240 (regex!6072 rNSep!170))))))

(assert (=> d!1093390 (= (contains!8103 (usedCharacters!1240 (regex!6072 rNSep!170)) c!6920) lt!1299496)))

(declare-fun b!3746268 () Bool)

(declare-fun e!2316518 () Bool)

(assert (=> b!3746268 (= e!2316519 e!2316518)))

(declare-fun res!1518539 () Bool)

(assert (=> b!3746268 (=> res!1518539 e!2316518)))

(assert (=> b!3746268 (= res!1518539 (= (h!45231 (usedCharacters!1240 (regex!6072 rNSep!170))) c!6920))))

(declare-fun b!3746269 () Bool)

(assert (=> b!3746269 (= e!2316518 (contains!8103 (t!302618 (usedCharacters!1240 (regex!6072 rNSep!170))) c!6920))))

(assert (= (and d!1093390 res!1518538) b!3746268))

(assert (= (and b!3746268 (not res!1518539)) b!3746269))

(assert (=> d!1093390 m!4238881))

(declare-fun m!4238927 () Bool)

(assert (=> d!1093390 m!4238927))

(declare-fun m!4238929 () Bool)

(assert (=> d!1093390 m!4238929))

(declare-fun m!4238931 () Bool)

(assert (=> b!3746269 m!4238931))

(assert (=> b!3746189 d!1093390))

(declare-fun c!648823 () Bool)

(declare-fun call!275081 () List!39935)

(declare-fun c!648824 () Bool)

(declare-fun bm!275076 () Bool)

(assert (=> bm!275076 (= call!275081 (usedCharacters!1240 (ite c!648823 (reg!11306 (regex!6072 rNSep!170)) (ite c!648824 (regOne!22467 (regex!6072 rNSep!170)) (regOne!22466 (regex!6072 rNSep!170))))))))

(declare-fun b!3746308 () Bool)

(declare-fun e!2316540 () List!39935)

(assert (=> b!3746308 (= e!2316540 call!275081)))

(declare-fun b!3746309 () Bool)

(declare-fun e!2316543 () List!39935)

(assert (=> b!3746309 (= e!2316540 e!2316543)))

(assert (=> b!3746309 (= c!648824 ((_ is Union!10977) (regex!6072 rNSep!170)))))

(declare-fun b!3746310 () Bool)

(declare-fun call!275083 () List!39935)

(assert (=> b!3746310 (= e!2316543 call!275083)))

(declare-fun bm!275077 () Bool)

(declare-fun call!275084 () List!39935)

(assert (=> bm!275077 (= call!275084 call!275081)))

(declare-fun b!3746311 () Bool)

(assert (=> b!3746311 (= c!648823 ((_ is Star!10977) (regex!6072 rNSep!170)))))

(declare-fun e!2316542 () List!39935)

(assert (=> b!3746311 (= e!2316542 e!2316540)))

(declare-fun b!3746312 () Bool)

(assert (=> b!3746312 (= e!2316543 call!275083)))

(declare-fun d!1093394 () Bool)

(declare-fun c!648822 () Bool)

(assert (=> d!1093394 (= c!648822 (or ((_ is EmptyExpr!10977) (regex!6072 rNSep!170)) ((_ is EmptyLang!10977) (regex!6072 rNSep!170))))))

(declare-fun e!2316541 () List!39935)

(assert (=> d!1093394 (= (usedCharacters!1240 (regex!6072 rNSep!170)) e!2316541)))

(declare-fun b!3746313 () Bool)

(assert (=> b!3746313 (= e!2316542 (Cons!39811 (c!648789 (regex!6072 rNSep!170)) Nil!39811))))

(declare-fun bm!275078 () Bool)

(declare-fun call!275082 () List!39935)

(declare-fun ++!9885 (List!39935 List!39935) List!39935)

(assert (=> bm!275078 (= call!275083 (++!9885 call!275084 call!275082))))

(declare-fun b!3746314 () Bool)

(assert (=> b!3746314 (= e!2316541 Nil!39811)))

(declare-fun bm!275079 () Bool)

(assert (=> bm!275079 (= call!275082 (usedCharacters!1240 (ite c!648824 (regTwo!22467 (regex!6072 rNSep!170)) (regTwo!22466 (regex!6072 rNSep!170)))))))

(declare-fun b!3746315 () Bool)

(assert (=> b!3746315 (= e!2316541 e!2316542)))

(declare-fun c!648825 () Bool)

(assert (=> b!3746315 (= c!648825 ((_ is ElementMatch!10977) (regex!6072 rNSep!170)))))

(assert (= (and d!1093394 c!648822) b!3746314))

(assert (= (and d!1093394 (not c!648822)) b!3746315))

(assert (= (and b!3746315 c!648825) b!3746313))

(assert (= (and b!3746315 (not c!648825)) b!3746311))

(assert (= (and b!3746311 c!648823) b!3746308))

(assert (= (and b!3746311 (not c!648823)) b!3746309))

(assert (= (and b!3746309 c!648824) b!3746312))

(assert (= (and b!3746309 (not c!648824)) b!3746310))

(assert (= (or b!3746312 b!3746310) bm!275077))

(assert (= (or b!3746312 b!3746310) bm!275079))

(assert (= (or b!3746312 b!3746310) bm!275078))

(assert (= (or b!3746308 bm!275077) bm!275076))

(declare-fun m!4238943 () Bool)

(assert (=> bm!275076 m!4238943))

(declare-fun m!4238945 () Bool)

(assert (=> bm!275078 m!4238945))

(declare-fun m!4238947 () Bool)

(assert (=> bm!275079 m!4238947))

(assert (=> b!3746189 d!1093394))

(declare-fun d!1093402 () Bool)

(assert (=> d!1093402 (= (inv!53337 (tag!6932 (h!45232 rules!4213))) (= (mod (str.len (value!193637 (tag!6932 (h!45232 rules!4213)))) 2) 0))))

(assert (=> b!3746186 d!1093402))

(declare-fun d!1093404 () Bool)

(declare-fun res!1518544 () Bool)

(declare-fun e!2316546 () Bool)

(assert (=> d!1093404 (=> (not res!1518544) (not e!2316546))))

(assert (=> d!1093404 (= res!1518544 (semiInverseModEq!2599 (toChars!8279 (transformation!6072 (h!45232 rules!4213))) (toValue!8420 (transformation!6072 (h!45232 rules!4213)))))))

(assert (=> d!1093404 (= (inv!53339 (transformation!6072 (h!45232 rules!4213))) e!2316546)))

(declare-fun b!3746318 () Bool)

(assert (=> b!3746318 (= e!2316546 (equivClasses!2498 (toChars!8279 (transformation!6072 (h!45232 rules!4213))) (toValue!8420 (transformation!6072 (h!45232 rules!4213)))))))

(assert (= (and d!1093404 res!1518544) b!3746318))

(declare-fun m!4238953 () Bool)

(assert (=> d!1093404 m!4238953))

(declare-fun m!4238955 () Bool)

(assert (=> b!3746318 m!4238955))

(assert (=> b!3746186 d!1093404))

(declare-fun d!1093410 () Bool)

(assert (=> d!1093410 (= (inv!53337 (tag!6932 rNSep!170)) (= (mod (str.len (value!193637 (tag!6932 rNSep!170))) 2) 0))))

(assert (=> b!3746192 d!1093410))

(declare-fun d!1093412 () Bool)

(declare-fun res!1518546 () Bool)

(declare-fun e!2316548 () Bool)

(assert (=> d!1093412 (=> (not res!1518546) (not e!2316548))))

(assert (=> d!1093412 (= res!1518546 (semiInverseModEq!2599 (toChars!8279 (transformation!6072 rNSep!170)) (toValue!8420 (transformation!6072 rNSep!170))))))

(assert (=> d!1093412 (= (inv!53339 (transformation!6072 rNSep!170)) e!2316548)))

(declare-fun b!3746320 () Bool)

(assert (=> b!3746320 (= e!2316548 (equivClasses!2498 (toChars!8279 (transformation!6072 rNSep!170)) (toValue!8420 (transformation!6072 rNSep!170))))))

(assert (= (and d!1093412 res!1518546) b!3746320))

(declare-fun m!4238961 () Bool)

(assert (=> d!1093412 m!4238961))

(declare-fun m!4238963 () Bool)

(assert (=> b!3746320 m!4238963))

(assert (=> b!3746192 d!1093412))

(declare-fun b!3746345 () Bool)

(declare-fun e!2316554 () Bool)

(assert (=> b!3746345 (= e!2316554 tp_is_empty!18969)))

(declare-fun b!3746346 () Bool)

(declare-fun tp!1142773 () Bool)

(declare-fun tp!1142772 () Bool)

(assert (=> b!3746346 (= e!2316554 (and tp!1142773 tp!1142772))))

(declare-fun b!3746348 () Bool)

(declare-fun tp!1142775 () Bool)

(declare-fun tp!1142774 () Bool)

(assert (=> b!3746348 (= e!2316554 (and tp!1142775 tp!1142774))))

(assert (=> b!3746193 (= tp!1142741 e!2316554)))

(declare-fun b!3746347 () Bool)

(declare-fun tp!1142776 () Bool)

(assert (=> b!3746347 (= e!2316554 tp!1142776)))

(assert (= (and b!3746193 ((_ is ElementMatch!10977) (regex!6072 rSep!170))) b!3746345))

(assert (= (and b!3746193 ((_ is Concat!17280) (regex!6072 rSep!170))) b!3746346))

(assert (= (and b!3746193 ((_ is Star!10977) (regex!6072 rSep!170))) b!3746347))

(assert (= (and b!3746193 ((_ is Union!10977) (regex!6072 rSep!170))) b!3746348))

(declare-fun b!3746353 () Bool)

(declare-fun e!2316557 () Bool)

(assert (=> b!3746353 (= e!2316557 tp_is_empty!18969)))

(declare-fun b!3746354 () Bool)

(declare-fun tp!1142778 () Bool)

(declare-fun tp!1142777 () Bool)

(assert (=> b!3746354 (= e!2316557 (and tp!1142778 tp!1142777))))

(declare-fun b!3746356 () Bool)

(declare-fun tp!1142780 () Bool)

(declare-fun tp!1142779 () Bool)

(assert (=> b!3746356 (= e!2316557 (and tp!1142780 tp!1142779))))

(assert (=> b!3746186 (= tp!1142743 e!2316557)))

(declare-fun b!3746355 () Bool)

(declare-fun tp!1142781 () Bool)

(assert (=> b!3746355 (= e!2316557 tp!1142781)))

(assert (= (and b!3746186 ((_ is ElementMatch!10977) (regex!6072 (h!45232 rules!4213)))) b!3746353))

(assert (= (and b!3746186 ((_ is Concat!17280) (regex!6072 (h!45232 rules!4213)))) b!3746354))

(assert (= (and b!3746186 ((_ is Star!10977) (regex!6072 (h!45232 rules!4213)))) b!3746355))

(assert (= (and b!3746186 ((_ is Union!10977) (regex!6072 (h!45232 rules!4213)))) b!3746356))

(declare-fun b!3746382 () Bool)

(declare-fun b_free!99753 () Bool)

(declare-fun b_next!100457 () Bool)

(assert (=> b!3746382 (= b_free!99753 (not b_next!100457))))

(declare-fun tp!1142814 () Bool)

(declare-fun b_and!277987 () Bool)

(assert (=> b!3746382 (= tp!1142814 b_and!277987)))

(declare-fun b_free!99755 () Bool)

(declare-fun b_next!100459 () Bool)

(assert (=> b!3746382 (= b_free!99755 (not b_next!100459))))

(declare-fun tp!1142813 () Bool)

(declare-fun b_and!277989 () Bool)

(assert (=> b!3746382 (= tp!1142813 b_and!277989)))

(declare-fun e!2316581 () Bool)

(assert (=> b!3746382 (= e!2316581 (and tp!1142814 tp!1142813))))

(declare-fun b!3746381 () Bool)

(declare-fun tp!1142815 () Bool)

(declare-fun e!2316578 () Bool)

(assert (=> b!3746381 (= e!2316578 (and tp!1142815 (inv!53337 (tag!6932 (h!45232 (t!302619 rules!4213)))) (inv!53339 (transformation!6072 (h!45232 (t!302619 rules!4213)))) e!2316581))))

(declare-fun b!3746380 () Bool)

(declare-fun e!2316579 () Bool)

(declare-fun tp!1142812 () Bool)

(assert (=> b!3746380 (= e!2316579 (and e!2316578 tp!1142812))))

(assert (=> b!3746187 (= tp!1142742 e!2316579)))

(assert (= b!3746381 b!3746382))

(assert (= b!3746380 b!3746381))

(assert (= (and b!3746187 ((_ is Cons!39812) (t!302619 rules!4213))) b!3746380))

(declare-fun m!4238969 () Bool)

(assert (=> b!3746381 m!4238969))

(declare-fun m!4238971 () Bool)

(assert (=> b!3746381 m!4238971))

(declare-fun b!3746383 () Bool)

(declare-fun e!2316582 () Bool)

(assert (=> b!3746383 (= e!2316582 tp_is_empty!18969)))

(declare-fun b!3746384 () Bool)

(declare-fun tp!1142817 () Bool)

(declare-fun tp!1142816 () Bool)

(assert (=> b!3746384 (= e!2316582 (and tp!1142817 tp!1142816))))

(declare-fun b!3746386 () Bool)

(declare-fun tp!1142819 () Bool)

(declare-fun tp!1142818 () Bool)

(assert (=> b!3746386 (= e!2316582 (and tp!1142819 tp!1142818))))

(assert (=> b!3746192 (= tp!1142740 e!2316582)))

(declare-fun b!3746385 () Bool)

(declare-fun tp!1142820 () Bool)

(assert (=> b!3746385 (= e!2316582 tp!1142820)))

(assert (= (and b!3746192 ((_ is ElementMatch!10977) (regex!6072 rNSep!170))) b!3746383))

(assert (= (and b!3746192 ((_ is Concat!17280) (regex!6072 rNSep!170))) b!3746384))

(assert (= (and b!3746192 ((_ is Star!10977) (regex!6072 rNSep!170))) b!3746385))

(assert (= (and b!3746192 ((_ is Union!10977) (regex!6072 rNSep!170))) b!3746386))

(check-sat (not b!3746318) (not b_next!100451) (not b!3746356) (not b!3746355) b_and!277973 (not b!3746202) (not b!3746380) b_and!277981 b_and!277977 (not b!3746384) (not d!1093390) (not b_next!100459) (not d!1093368) tp_is_empty!18969 (not b_next!100443) (not b!3746238) (not b!3746381) (not b_next!100449) (not d!1093388) (not bm!275079) (not b_next!100447) (not b!3746385) (not b!3746269) (not d!1093404) (not b!3746320) (not bm!275078) b_and!277971 (not b_next!100445) (not b!3746386) (not bm!275054) (not b!3746250) (not bm!275076) (not b!3746257) (not b!3746346) (not b_next!100441) (not d!1093412) b_and!277987 b_and!277979 (not d!1093378) (not b!3746222) (not b!3746347) b_and!277975 (not b!3746348) b_and!277989 (not b_next!100457) (not b!3746354))
(check-sat (not b_next!100443) (not b_next!100449) (not b_next!100447) (not b_next!100451) b_and!277973 (not b_next!100441) b_and!277981 b_and!277975 b_and!277977 (not b_next!100459) b_and!277971 (not b_next!100445) b_and!277987 b_and!277979 b_and!277989 (not b_next!100457))

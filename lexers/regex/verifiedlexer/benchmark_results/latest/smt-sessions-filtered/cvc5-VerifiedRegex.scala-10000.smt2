; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!522772 () Bool)

(assert start!522772)

(declare-fun b!4959011 () Bool)

(declare-fun b_free!132451 () Bool)

(declare-fun b_next!133241 () Bool)

(assert (=> b!4959011 (= b_free!132451 (not b_next!133241))))

(declare-fun tp!1390853 () Bool)

(declare-fun b_and!347303 () Bool)

(assert (=> b!4959011 (= tp!1390853 b_and!347303)))

(declare-fun b_free!132453 () Bool)

(declare-fun b_next!133243 () Bool)

(assert (=> b!4959011 (= b_free!132453 (not b_next!133243))))

(declare-fun tp!1390852 () Bool)

(declare-fun b_and!347305 () Bool)

(assert (=> b!4959011 (= tp!1390852 b_and!347305)))

(declare-fun b!4959009 () Bool)

(declare-fun e!3099271 () Bool)

(declare-fun e!3099266 () Bool)

(assert (=> b!4959009 (= e!3099271 e!3099266)))

(declare-fun res!2116308 () Bool)

(assert (=> b!4959009 (=> res!2116308 e!3099266)))

(declare-datatypes ((List!57439 0))(
  ( (Nil!57315) (Cons!57315 (h!63763 (_ BitVec 16)) (t!368005 List!57439)) )
))
(declare-datatypes ((TokenValue!8661 0))(
  ( (FloatLiteralValue!17322 (text!61072 List!57439)) (TokenValueExt!8660 (__x!34615 Int)) (Broken!43305 (value!267421 List!57439)) (Object!8784) (End!8661) (Def!8661) (Underscore!8661) (Match!8661) (Else!8661) (Error!8661) (Case!8661) (If!8661) (Extends!8661) (Abstract!8661) (Class!8661) (Val!8661) (DelimiterValue!17322 (del!8721 List!57439)) (KeywordValue!8667 (value!267422 List!57439)) (CommentValue!17322 (value!267423 List!57439)) (WhitespaceValue!17322 (value!267424 List!57439)) (IndentationValue!8661 (value!267425 List!57439)) (String!65180) (Int32!8661) (Broken!43306 (value!267426 List!57439)) (Boolean!8662) (Unit!148209) (OperatorValue!8664 (op!8721 List!57439)) (IdentifierValue!17322 (value!267427 List!57439)) (IdentifierValue!17323 (value!267428 List!57439)) (WhitespaceValue!17323 (value!267429 List!57439)) (True!17322) (False!17322) (Broken!43307 (value!267430 List!57439)) (Broken!43308 (value!267431 List!57439)) (True!17323) (RightBrace!8661) (RightBracket!8661) (Colon!8661) (Null!8661) (Comma!8661) (LeftBracket!8661) (False!17323) (LeftBrace!8661) (ImaginaryLiteralValue!8661 (text!61073 List!57439)) (StringLiteralValue!25983 (value!267432 List!57439)) (EOFValue!8661 (value!267433 List!57439)) (IdentValue!8661 (value!267434 List!57439)) (DelimiterValue!17323 (value!267435 List!57439)) (DedentValue!8661 (value!267436 List!57439)) (NewLineValue!8661 (value!267437 List!57439)) (IntegerValue!25983 (value!267438 (_ BitVec 32)) (text!61074 List!57439)) (IntegerValue!25984 (value!267439 Int) (text!61075 List!57439)) (Times!8661) (Or!8661) (Equal!8661) (Minus!8661) (Broken!43309 (value!267440 List!57439)) (And!8661) (Div!8661) (LessEqual!8661) (Mod!8661) (Concat!22245) (Not!8661) (Plus!8661) (SpaceValue!8661 (value!267441 List!57439)) (IntegerValue!25985 (value!267442 Int) (text!61076 List!57439)) (StringLiteralValue!25984 (text!61077 List!57439)) (FloatLiteralValue!17323 (text!61078 List!57439)) (BytesLiteralValue!8661 (value!267443 List!57439)) (CommentValue!17323 (value!267444 List!57439)) (StringLiteralValue!25985 (value!267445 List!57439)) (ErrorTokenValue!8661 (msg!8722 List!57439)) )
))
(declare-datatypes ((C!27418 0))(
  ( (C!27419 (val!23075 Int)) )
))
(declare-datatypes ((Regex!13584 0))(
  ( (ElementMatch!13584 (c!846388 C!27418)) (Concat!22246 (regOne!27680 Regex!13584) (regTwo!27680 Regex!13584)) (EmptyExpr!13584) (Star!13584 (reg!13913 Regex!13584)) (EmptyLang!13584) (Union!13584 (regOne!27681 Regex!13584) (regTwo!27681 Regex!13584)) )
))
(declare-datatypes ((String!65181 0))(
  ( (String!65182 (value!267446 String)) )
))
(declare-datatypes ((List!57440 0))(
  ( (Nil!57316) (Cons!57316 (h!63764 C!27418) (t!368006 List!57440)) )
))
(declare-datatypes ((IArray!30267 0))(
  ( (IArray!30268 (innerList!15191 List!57440)) )
))
(declare-datatypes ((Conc!15103 0))(
  ( (Node!15103 (left!41797 Conc!15103) (right!42127 Conc!15103) (csize!30436 Int) (cheight!15314 Int)) (Leaf!25104 (xs!18429 IArray!30267) (csize!30437 Int)) (Empty!15103) )
))
(declare-datatypes ((BalanceConc!29636 0))(
  ( (BalanceConc!29637 (c!846389 Conc!15103)) )
))
(declare-datatypes ((TokenValueInjection!16630 0))(
  ( (TokenValueInjection!16631 (toValue!11302 Int) (toChars!11161 Int)) )
))
(declare-datatypes ((Rule!16502 0))(
  ( (Rule!16503 (regex!8351 Regex!13584) (tag!9215 String!65181) (isSeparator!8351 Bool) (transformation!8351 TokenValueInjection!16630)) )
))
(declare-datatypes ((Token!15202 0))(
  ( (Token!15203 (value!267447 TokenValue!8661) (rule!11575 Rule!16502) (size!37989 Int) (originalCharacters!8632 List!57440)) )
))
(declare-datatypes ((tuple2!61952 0))(
  ( (tuple2!61953 (_1!34279 Token!15202) (_2!34279 BalanceConc!29636)) )
))
(declare-fun lt!2047183 () tuple2!61952)

(declare-datatypes ((tuple2!61954 0))(
  ( (tuple2!61955 (_1!34280 Token!15202) (_2!34280 List!57440)) )
))
(declare-fun lt!2047179 () tuple2!61954)

(assert (=> b!4959009 (= res!2116308 (not (= (_1!34279 lt!2047183) (_1!34280 lt!2047179))))))

(declare-datatypes ((Option!14371 0))(
  ( (None!14370) (Some!14370 (v!50355 tuple2!61954)) )
))
(declare-fun lt!2047180 () Option!14371)

(declare-fun get!19855 (Option!14371) tuple2!61954)

(assert (=> b!4959009 (= lt!2047179 (get!19855 lt!2047180))))

(declare-datatypes ((Option!14372 0))(
  ( (None!14371) (Some!14371 (v!50356 tuple2!61952)) )
))
(declare-fun lt!2047181 () Option!14372)

(declare-fun get!19856 (Option!14372) tuple2!61952)

(assert (=> b!4959009 (= lt!2047183 (get!19856 lt!2047181))))

(declare-fun b!4959010 () Bool)

(declare-fun e!3099267 () Bool)

(declare-fun e!3099264 () Bool)

(assert (=> b!4959010 (= e!3099267 (not e!3099264))))

(declare-fun res!2116314 () Bool)

(assert (=> b!4959010 (=> res!2116314 e!3099264)))

(declare-datatypes ((List!57441 0))(
  ( (Nil!57317) (Cons!57317 (h!63765 Rule!16502) (t!368007 List!57441)) )
))
(declare-fun rulesArg!259 () List!57441)

(assert (=> b!4959010 (= res!2116314 (or (and (is-Cons!57317 rulesArg!259) (is-Nil!57317 (t!368007 rulesArg!259))) (not (is-Cons!57317 rulesArg!259))))))

(declare-fun lt!2047184 () List!57440)

(declare-fun isPrefix!5204 (List!57440 List!57440) Bool)

(assert (=> b!4959010 (isPrefix!5204 lt!2047184 lt!2047184)))

(declare-datatypes ((Unit!148210 0))(
  ( (Unit!148211) )
))
(declare-fun lt!2047178 () Unit!148210)

(declare-fun lemmaIsPrefixRefl!3528 (List!57440 List!57440) Unit!148210)

(assert (=> b!4959010 (= lt!2047178 (lemmaIsPrefixRefl!3528 lt!2047184 lt!2047184))))

(declare-fun e!3099265 () Bool)

(assert (=> b!4959011 (= e!3099265 (and tp!1390853 tp!1390852))))

(declare-fun b!4959012 () Bool)

(declare-fun res!2116311 () Bool)

(declare-fun e!3099268 () Bool)

(assert (=> b!4959012 (=> res!2116311 e!3099268)))

(declare-fun lt!2047185 () Bool)

(assert (=> b!4959012 (= res!2116311 lt!2047185)))

(declare-fun b!4959013 () Bool)

(declare-fun e!3099262 () Bool)

(assert (=> b!4959013 (= e!3099262 e!3099267)))

(declare-fun res!2116312 () Bool)

(assert (=> b!4959013 (=> (not res!2116312) (not e!3099267))))

(declare-fun totalInput!464 () BalanceConc!29636)

(declare-fun isSuffix!1150 (List!57440 List!57440) Bool)

(declare-fun list!18300 (BalanceConc!29636) List!57440)

(assert (=> b!4959013 (= res!2116312 (isSuffix!1150 lt!2047184 (list!18300 totalInput!464)))))

(declare-fun input!1342 () BalanceConc!29636)

(assert (=> b!4959013 (= lt!2047184 (list!18300 input!1342))))

(declare-fun b!4959014 () Bool)

(declare-datatypes ((LexerInterface!7943 0))(
  ( (LexerInterfaceExt!7940 (__x!34616 Int)) (Lexer!7941) )
))
(declare-fun thiss!15247 () LexerInterface!7943)

(declare-fun isDefined!11290 (Option!14371) Bool)

(declare-fun maxPrefix!4638 (LexerInterface!7943 List!57441 List!57440) Option!14371)

(assert (=> b!4959014 (= e!3099268 (isDefined!11290 (maxPrefix!4638 thiss!15247 rulesArg!259 lt!2047184)))))

(declare-fun b!4959015 () Bool)

(declare-fun e!3099275 () Bool)

(declare-fun e!3099272 () Bool)

(declare-fun tp!1390851 () Bool)

(assert (=> b!4959015 (= e!3099275 (and e!3099272 tp!1390851))))

(declare-fun b!4959016 () Bool)

(declare-fun tp!1390849 () Bool)

(declare-fun inv!74814 (String!65181) Bool)

(declare-fun inv!74817 (TokenValueInjection!16630) Bool)

(assert (=> b!4959016 (= e!3099272 (and tp!1390849 (inv!74814 (tag!9215 (h!63765 rulesArg!259))) (inv!74817 (transformation!8351 (h!63765 rulesArg!259))) e!3099265))))

(declare-fun b!4959017 () Bool)

(declare-fun e!3099270 () Bool)

(declare-fun tp!1390854 () Bool)

(declare-fun inv!74818 (Conc!15103) Bool)

(assert (=> b!4959017 (= e!3099270 (and (inv!74818 (c!846389 totalInput!464)) tp!1390854))))

(declare-fun b!4959018 () Bool)

(declare-fun e!3099274 () Bool)

(assert (=> b!4959018 (= e!3099264 e!3099274)))

(declare-fun res!2116313 () Bool)

(assert (=> b!4959018 (=> res!2116313 e!3099274)))

(declare-fun lt!2047182 () Option!14372)

(assert (=> b!4959018 (= res!2116313 (or (and (is-None!14371 lt!2047181) (is-None!14371 lt!2047182)) (is-None!14371 lt!2047182) (is-None!14371 lt!2047181) (< (size!37989 (_1!34279 (v!50356 lt!2047181))) (size!37989 (_1!34279 (v!50356 lt!2047182))))))))

(declare-fun maxPrefixZipperSequenceV2!682 (LexerInterface!7943 List!57441 BalanceConc!29636 BalanceConc!29636) Option!14372)

(assert (=> b!4959018 (= lt!2047182 (maxPrefixZipperSequenceV2!682 thiss!15247 (t!368007 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!335 (LexerInterface!7943 Rule!16502 BalanceConc!29636 BalanceConc!29636) Option!14372)

(assert (=> b!4959018 (= lt!2047181 (maxPrefixOneRuleZipperSequenceV2!335 thiss!15247 (h!63765 rulesArg!259) input!1342 totalInput!464))))

(declare-fun res!2116315 () Bool)

(assert (=> start!522772 (=> (not res!2116315) (not e!3099262))))

(assert (=> start!522772 (= res!2116315 (is-Lexer!7941 thiss!15247))))

(assert (=> start!522772 e!3099262))

(assert (=> start!522772 true))

(assert (=> start!522772 e!3099275))

(declare-fun e!3099263 () Bool)

(declare-fun inv!74819 (BalanceConc!29636) Bool)

(assert (=> start!522772 (and (inv!74819 input!1342) e!3099263)))

(assert (=> start!522772 (and (inv!74819 totalInput!464) e!3099270)))

(declare-fun b!4959019 () Bool)

(declare-fun res!2116310 () Bool)

(assert (=> b!4959019 (=> (not res!2116310) (not e!3099262))))

(declare-fun rulesValidInductive!3254 (LexerInterface!7943 List!57441) Bool)

(assert (=> b!4959019 (= res!2116310 (rulesValidInductive!3254 thiss!15247 rulesArg!259))))

(declare-fun b!4959020 () Bool)

(declare-fun e!3099269 () Bool)

(assert (=> b!4959020 (= e!3099274 e!3099269)))

(declare-fun res!2116317 () Bool)

(assert (=> b!4959020 (=> res!2116317 e!3099269)))

(declare-fun lt!2047177 () Bool)

(assert (=> b!4959020 (= res!2116317 (not (= lt!2047177 (isDefined!11290 lt!2047180))))))

(declare-fun isDefined!11291 (Option!14372) Bool)

(assert (=> b!4959020 (= lt!2047177 (isDefined!11291 lt!2047181))))

(declare-fun maxPrefixZipper!748 (LexerInterface!7943 List!57441 List!57440) Option!14371)

(assert (=> b!4959020 (= lt!2047180 (maxPrefixZipper!748 thiss!15247 rulesArg!259 lt!2047184))))

(declare-fun b!4959021 () Bool)

(assert (=> b!4959021 (= e!3099266 (not (= (list!18300 (_2!34279 lt!2047183)) (_2!34280 lt!2047179))))))

(declare-fun b!4959022 () Bool)

(assert (=> b!4959022 (= e!3099269 e!3099268)))

(declare-fun res!2116309 () Bool)

(assert (=> b!4959022 (=> res!2116309 e!3099268)))

(assert (=> b!4959022 (= res!2116309 e!3099271)))

(declare-fun res!2116307 () Bool)

(assert (=> b!4959022 (=> (not res!2116307) (not e!3099271))))

(assert (=> b!4959022 (= res!2116307 (not lt!2047185))))

(assert (=> b!4959022 (= lt!2047185 (not lt!2047177))))

(declare-fun b!4959023 () Bool)

(declare-fun tp!1390850 () Bool)

(assert (=> b!4959023 (= e!3099263 (and (inv!74818 (c!846389 input!1342)) tp!1390850))))

(declare-fun b!4959024 () Bool)

(declare-fun res!2116316 () Bool)

(assert (=> b!4959024 (=> (not res!2116316) (not e!3099262))))

(declare-fun isEmpty!30823 (List!57441) Bool)

(assert (=> b!4959024 (= res!2116316 (not (isEmpty!30823 rulesArg!259)))))

(assert (= (and start!522772 res!2116315) b!4959019))

(assert (= (and b!4959019 res!2116310) b!4959024))

(assert (= (and b!4959024 res!2116316) b!4959013))

(assert (= (and b!4959013 res!2116312) b!4959010))

(assert (= (and b!4959010 (not res!2116314)) b!4959018))

(assert (= (and b!4959018 (not res!2116313)) b!4959020))

(assert (= (and b!4959020 (not res!2116317)) b!4959022))

(assert (= (and b!4959022 res!2116307) b!4959009))

(assert (= (and b!4959009 (not res!2116308)) b!4959021))

(assert (= (and b!4959022 (not res!2116309)) b!4959012))

(assert (= (and b!4959012 (not res!2116311)) b!4959014))

(assert (= b!4959016 b!4959011))

(assert (= b!4959015 b!4959016))

(assert (= (and start!522772 (is-Cons!57317 rulesArg!259)) b!4959015))

(assert (= start!522772 b!4959023))

(assert (= start!522772 b!4959017))

(declare-fun m!5983576 () Bool)

(assert (=> b!4959019 m!5983576))

(declare-fun m!5983578 () Bool)

(assert (=> b!4959013 m!5983578))

(assert (=> b!4959013 m!5983578))

(declare-fun m!5983580 () Bool)

(assert (=> b!4959013 m!5983580))

(declare-fun m!5983582 () Bool)

(assert (=> b!4959013 m!5983582))

(declare-fun m!5983584 () Bool)

(assert (=> b!4959020 m!5983584))

(declare-fun m!5983586 () Bool)

(assert (=> b!4959020 m!5983586))

(declare-fun m!5983588 () Bool)

(assert (=> b!4959020 m!5983588))

(declare-fun m!5983590 () Bool)

(assert (=> b!4959023 m!5983590))

(declare-fun m!5983592 () Bool)

(assert (=> b!4959009 m!5983592))

(declare-fun m!5983594 () Bool)

(assert (=> b!4959009 m!5983594))

(declare-fun m!5983596 () Bool)

(assert (=> start!522772 m!5983596))

(declare-fun m!5983598 () Bool)

(assert (=> start!522772 m!5983598))

(declare-fun m!5983600 () Bool)

(assert (=> b!4959024 m!5983600))

(declare-fun m!5983602 () Bool)

(assert (=> b!4959016 m!5983602))

(declare-fun m!5983604 () Bool)

(assert (=> b!4959016 m!5983604))

(declare-fun m!5983606 () Bool)

(assert (=> b!4959017 m!5983606))

(declare-fun m!5983608 () Bool)

(assert (=> b!4959018 m!5983608))

(declare-fun m!5983610 () Bool)

(assert (=> b!4959018 m!5983610))

(declare-fun m!5983612 () Bool)

(assert (=> b!4959021 m!5983612))

(declare-fun m!5983614 () Bool)

(assert (=> b!4959014 m!5983614))

(assert (=> b!4959014 m!5983614))

(declare-fun m!5983616 () Bool)

(assert (=> b!4959014 m!5983616))

(declare-fun m!5983618 () Bool)

(assert (=> b!4959010 m!5983618))

(declare-fun m!5983620 () Bool)

(assert (=> b!4959010 m!5983620))

(push 1)

(assert (not b!4959010))

(assert (not b!4959021))

(assert (not b!4959016))

(assert b_and!347305)

(assert (not b!4959020))

(assert (not b!4959024))

(assert (not b!4959009))

(assert (not b!4959023))

(assert (not b_next!133241))

(assert (not b!4959019))

(assert b_and!347303)

(assert (not b!4959014))

(assert (not b!4959018))

(assert (not b!4959015))

(assert (not start!522772))

(assert (not b_next!133243))

(assert (not b!4959017))

(assert (not b!4959013))

(check-sat)

(pop 1)

(push 1)

(assert b_and!347303)

(assert b_and!347305)

(assert (not b_next!133241))

(assert (not b_next!133243))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4959101 () Bool)

(declare-fun e!3099341 () Option!14372)

(declare-fun lt!2047228 () Option!14372)

(declare-fun lt!2047231 () Option!14372)

(assert (=> b!4959101 (= e!3099341 (ite (and (is-None!14371 lt!2047228) (is-None!14371 lt!2047231)) None!14371 (ite (is-None!14371 lt!2047231) lt!2047228 (ite (is-None!14371 lt!2047228) lt!2047231 (ite (>= (size!37989 (_1!34279 (v!50356 lt!2047228))) (size!37989 (_1!34279 (v!50356 lt!2047231)))) lt!2047228 lt!2047231)))))))

(declare-fun call!345958 () Option!14372)

(assert (=> b!4959101 (= lt!2047228 call!345958)))

(assert (=> b!4959101 (= lt!2047231 (maxPrefixZipperSequenceV2!682 thiss!15247 (t!368007 (t!368007 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun b!4959102 () Bool)

(declare-fun lt!2047230 () Option!14372)

(declare-fun e!3099343 () Bool)

(assert (=> b!4959102 (= e!3099343 (= (list!18300 (_2!34279 (get!19856 lt!2047230))) (_2!34280 (get!19855 (maxPrefix!4638 thiss!15247 (t!368007 rulesArg!259) (list!18300 input!1342))))))))

(declare-fun b!4959103 () Bool)

(declare-fun e!3099340 () Bool)

(assert (=> b!4959103 (= e!3099340 e!3099343)))

(declare-fun res!2116381 () Bool)

(assert (=> b!4959103 (=> (not res!2116381) (not e!3099343))))

(assert (=> b!4959103 (= res!2116381 (= (_1!34279 (get!19856 lt!2047230)) (_1!34280 (get!19855 (maxPrefix!4638 thiss!15247 (t!368007 rulesArg!259) (list!18300 input!1342))))))))

(declare-fun bm!345953 () Bool)

(assert (=> bm!345953 (= call!345958 (maxPrefixOneRuleZipperSequenceV2!335 thiss!15247 (h!63765 (t!368007 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun d!1595993 () Bool)

(declare-fun e!3099339 () Bool)

(assert (=> d!1595993 e!3099339))

(declare-fun res!2116383 () Bool)

(assert (=> d!1595993 (=> (not res!2116383) (not e!3099339))))

(assert (=> d!1595993 (= res!2116383 (= (isDefined!11291 lt!2047230) (isDefined!11290 (maxPrefixZipper!748 thiss!15247 (t!368007 rulesArg!259) (list!18300 input!1342)))))))

(assert (=> d!1595993 (= lt!2047230 e!3099341)))

(declare-fun c!846399 () Bool)

(assert (=> d!1595993 (= c!846399 (and (is-Cons!57317 (t!368007 rulesArg!259)) (is-Nil!57317 (t!368007 (t!368007 rulesArg!259)))))))

(declare-fun lt!2047232 () Unit!148210)

(declare-fun lt!2047227 () Unit!148210)

(assert (=> d!1595993 (= lt!2047232 lt!2047227)))

(declare-fun lt!2047229 () List!57440)

(declare-fun lt!2047233 () List!57440)

(assert (=> d!1595993 (isPrefix!5204 lt!2047229 lt!2047233)))

(assert (=> d!1595993 (= lt!2047227 (lemmaIsPrefixRefl!3528 lt!2047229 lt!2047233))))

(assert (=> d!1595993 (= lt!2047233 (list!18300 input!1342))))

(assert (=> d!1595993 (= lt!2047229 (list!18300 input!1342))))

(assert (=> d!1595993 (rulesValidInductive!3254 thiss!15247 (t!368007 rulesArg!259))))

(assert (=> d!1595993 (= (maxPrefixZipperSequenceV2!682 thiss!15247 (t!368007 rulesArg!259) input!1342 totalInput!464) lt!2047230)))

(declare-fun b!4959104 () Bool)

(assert (=> b!4959104 (= e!3099339 e!3099340)))

(declare-fun res!2116385 () Bool)

(assert (=> b!4959104 (=> res!2116385 e!3099340)))

(assert (=> b!4959104 (= res!2116385 (not (isDefined!11291 lt!2047230)))))

(declare-fun b!4959105 () Bool)

(declare-fun e!3099342 () Bool)

(declare-fun e!3099338 () Bool)

(assert (=> b!4959105 (= e!3099342 e!3099338)))

(declare-fun res!2116384 () Bool)

(assert (=> b!4959105 (=> (not res!2116384) (not e!3099338))))

(assert (=> b!4959105 (= res!2116384 (= (_1!34279 (get!19856 lt!2047230)) (_1!34280 (get!19855 (maxPrefixZipper!748 thiss!15247 (t!368007 rulesArg!259) (list!18300 input!1342))))))))

(declare-fun b!4959106 () Bool)

(assert (=> b!4959106 (= e!3099341 call!345958)))

(declare-fun b!4959107 () Bool)

(assert (=> b!4959107 (= e!3099338 (= (list!18300 (_2!34279 (get!19856 lt!2047230))) (_2!34280 (get!19855 (maxPrefixZipper!748 thiss!15247 (t!368007 rulesArg!259) (list!18300 input!1342))))))))

(declare-fun b!4959108 () Bool)

(declare-fun res!2116382 () Bool)

(assert (=> b!4959108 (=> (not res!2116382) (not e!3099339))))

(assert (=> b!4959108 (= res!2116382 e!3099342)))

(declare-fun res!2116386 () Bool)

(assert (=> b!4959108 (=> res!2116386 e!3099342)))

(assert (=> b!4959108 (= res!2116386 (not (isDefined!11291 lt!2047230)))))

(assert (= (and d!1595993 c!846399) b!4959106))

(assert (= (and d!1595993 (not c!846399)) b!4959101))

(assert (= (or b!4959106 b!4959101) bm!345953))

(assert (= (and d!1595993 res!2116383) b!4959108))

(assert (= (and b!4959108 (not res!2116386)) b!4959105))

(assert (= (and b!4959105 res!2116384) b!4959107))

(assert (= (and b!4959108 res!2116382) b!4959104))

(assert (= (and b!4959104 (not res!2116385)) b!4959103))

(assert (= (and b!4959103 res!2116381) b!4959102))

(declare-fun m!5983680 () Bool)

(assert (=> b!4959103 m!5983680))

(assert (=> b!4959103 m!5983582))

(assert (=> b!4959103 m!5983582))

(declare-fun m!5983682 () Bool)

(assert (=> b!4959103 m!5983682))

(assert (=> b!4959103 m!5983682))

(declare-fun m!5983684 () Bool)

(assert (=> b!4959103 m!5983684))

(declare-fun m!5983686 () Bool)

(assert (=> b!4959108 m!5983686))

(assert (=> b!4959102 m!5983682))

(assert (=> b!4959102 m!5983684))

(declare-fun m!5983688 () Bool)

(assert (=> b!4959102 m!5983688))

(assert (=> b!4959102 m!5983582))

(assert (=> b!4959102 m!5983680))

(assert (=> b!4959102 m!5983582))

(assert (=> b!4959102 m!5983682))

(declare-fun m!5983690 () Bool)

(assert (=> b!4959101 m!5983690))

(declare-fun m!5983692 () Bool)

(assert (=> d!1595993 m!5983692))

(declare-fun m!5983694 () Bool)

(assert (=> d!1595993 m!5983694))

(assert (=> d!1595993 m!5983686))

(assert (=> d!1595993 m!5983582))

(declare-fun m!5983696 () Bool)

(assert (=> d!1595993 m!5983696))

(assert (=> d!1595993 m!5983582))

(assert (=> d!1595993 m!5983696))

(declare-fun m!5983698 () Bool)

(assert (=> d!1595993 m!5983698))

(declare-fun m!5983700 () Bool)

(assert (=> d!1595993 m!5983700))

(assert (=> b!4959105 m!5983680))

(assert (=> b!4959105 m!5983582))

(assert (=> b!4959105 m!5983582))

(assert (=> b!4959105 m!5983696))

(assert (=> b!4959105 m!5983696))

(declare-fun m!5983702 () Bool)

(assert (=> b!4959105 m!5983702))

(assert (=> b!4959104 m!5983686))

(declare-fun m!5983704 () Bool)

(assert (=> bm!345953 m!5983704))

(assert (=> b!4959107 m!5983582))

(assert (=> b!4959107 m!5983696))

(assert (=> b!4959107 m!5983702))

(assert (=> b!4959107 m!5983680))

(assert (=> b!4959107 m!5983582))

(assert (=> b!4959107 m!5983696))

(assert (=> b!4959107 m!5983688))

(assert (=> b!4959018 d!1595993))

(declare-fun b!4959144 () Bool)

(declare-fun e!3099371 () Bool)

(assert (=> b!4959144 (= e!3099371 true)))

(declare-fun b!4959143 () Bool)

(declare-fun e!3099370 () Bool)

(assert (=> b!4959143 (= e!3099370 e!3099371)))

(declare-fun b!4959133 () Bool)

(assert (=> b!4959133 e!3099370))

(assert (= b!4959143 b!4959144))

(assert (= b!4959133 b!4959143))

(declare-fun order!26113 () Int)

(declare-fun order!26111 () Int)

(declare-fun lambda!247169 () Int)

(declare-fun dynLambda!23093 (Int Int) Int)

(declare-fun dynLambda!23094 (Int Int) Int)

(assert (=> b!4959144 (< (dynLambda!23093 order!26111 (toValue!11302 (transformation!8351 (h!63765 rulesArg!259)))) (dynLambda!23094 order!26113 lambda!247169))))

(declare-fun order!26115 () Int)

(declare-fun dynLambda!23095 (Int Int) Int)

(assert (=> b!4959144 (< (dynLambda!23095 order!26115 (toChars!11161 (transformation!8351 (h!63765 rulesArg!259)))) (dynLambda!23094 order!26113 lambda!247169))))

(declare-fun b!4959131 () Bool)

(declare-fun e!3099363 () Option!14372)

(assert (=> b!4959131 (= e!3099363 None!14371)))

(declare-fun b!4959132 () Bool)

(declare-fun e!3099362 () Bool)

(declare-fun lt!2047276 () List!57440)

(declare-fun matchR!6618 (Regex!13584 List!57440) Bool)

(declare-datatypes ((tuple2!61960 0))(
  ( (tuple2!61961 (_1!34283 List!57440) (_2!34283 List!57440)) )
))
(declare-fun findLongestMatchInner!1841 (Regex!13584 List!57440 Int List!57440 List!57440 Int) tuple2!61960)

(declare-fun size!37991 (List!57440) Int)

(assert (=> b!4959132 (= e!3099362 (matchR!6618 (regex!8351 (h!63765 rulesArg!259)) (_1!34283 (findLongestMatchInner!1841 (regex!8351 (h!63765 rulesArg!259)) Nil!57316 (size!37991 Nil!57316) lt!2047276 lt!2047276 (size!37991 lt!2047276)))))))

(declare-datatypes ((tuple2!61962 0))(
  ( (tuple2!61963 (_1!34284 BalanceConc!29636) (_2!34284 BalanceConc!29636)) )
))
(declare-fun lt!2047271 () tuple2!61962)

(declare-fun apply!13886 (TokenValueInjection!16630 BalanceConc!29636) TokenValue!8661)

(declare-fun size!37992 (BalanceConc!29636) Int)

(assert (=> b!4959133 (= e!3099363 (Some!14371 (tuple2!61953 (Token!15203 (apply!13886 (transformation!8351 (h!63765 rulesArg!259)) (_1!34284 lt!2047271)) (h!63765 rulesArg!259) (size!37992 (_1!34284 lt!2047271)) (list!18300 (_1!34284 lt!2047271))) (_2!34284 lt!2047271))))))

(assert (=> b!4959133 (= lt!2047276 (list!18300 input!1342))))

(declare-fun lt!2047277 () Unit!148210)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1802 (Regex!13584 List!57440) Unit!148210)

(assert (=> b!4959133 (= lt!2047277 (longestMatchIsAcceptedByMatchOrIsEmpty!1802 (regex!8351 (h!63765 rulesArg!259)) lt!2047276))))

(declare-fun res!2116400 () Bool)

(declare-fun isEmpty!30825 (List!57440) Bool)

(assert (=> b!4959133 (= res!2116400 (isEmpty!30825 (_1!34283 (findLongestMatchInner!1841 (regex!8351 (h!63765 rulesArg!259)) Nil!57316 (size!37991 Nil!57316) lt!2047276 lt!2047276 (size!37991 lt!2047276)))))))

(assert (=> b!4959133 (=> res!2116400 e!3099362)))

(assert (=> b!4959133 e!3099362))

(declare-fun lt!2047279 () Unit!148210)

(assert (=> b!4959133 (= lt!2047279 lt!2047277)))

(declare-fun lt!2047278 () Unit!148210)

(declare-fun lemmaInv!1320 (TokenValueInjection!16630) Unit!148210)

(assert (=> b!4959133 (= lt!2047278 (lemmaInv!1320 (transformation!8351 (h!63765 rulesArg!259))))))

(declare-fun lt!2047272 () Unit!148210)

(declare-fun ForallOf!1213 (Int BalanceConc!29636) Unit!148210)

(assert (=> b!4959133 (= lt!2047272 (ForallOf!1213 lambda!247169 (_1!34284 lt!2047271)))))

(declare-fun lt!2047273 () Unit!148210)

(declare-fun seqFromList!6018 (List!57440) BalanceConc!29636)

(assert (=> b!4959133 (= lt!2047273 (ForallOf!1213 lambda!247169 (seqFromList!6018 (list!18300 (_1!34284 lt!2047271)))))))

(declare-fun lt!2047274 () Option!14372)

(assert (=> b!4959133 (= lt!2047274 (Some!14371 (tuple2!61953 (Token!15203 (apply!13886 (transformation!8351 (h!63765 rulesArg!259)) (_1!34284 lt!2047271)) (h!63765 rulesArg!259) (size!37992 (_1!34284 lt!2047271)) (list!18300 (_1!34284 lt!2047271))) (_2!34284 lt!2047271))))))

(declare-fun lt!2047280 () Unit!148210)

(declare-fun lemmaEqSameImage!1154 (TokenValueInjection!16630 BalanceConc!29636 BalanceConc!29636) Unit!148210)

(assert (=> b!4959133 (= lt!2047280 (lemmaEqSameImage!1154 (transformation!8351 (h!63765 rulesArg!259)) (_1!34284 lt!2047271) (seqFromList!6018 (list!18300 (_1!34284 lt!2047271)))))))

(declare-fun d!1596005 () Bool)

(declare-fun e!3099365 () Bool)

(assert (=> d!1596005 e!3099365))

(declare-fun res!2116402 () Bool)

(assert (=> d!1596005 (=> (not res!2116402) (not e!3099365))))

(declare-fun lt!2047275 () Option!14372)

(declare-fun maxPrefixOneRule!3611 (LexerInterface!7943 Rule!16502 List!57440) Option!14371)

(assert (=> d!1596005 (= res!2116402 (= (isDefined!11291 lt!2047275) (isDefined!11290 (maxPrefixOneRule!3611 thiss!15247 (h!63765 rulesArg!259) (list!18300 input!1342)))))))

(assert (=> d!1596005 (= lt!2047275 e!3099363)))

(declare-fun c!846405 () Bool)

(declare-fun isEmpty!30826 (BalanceConc!29636) Bool)

(assert (=> d!1596005 (= c!846405 (isEmpty!30826 (_1!34284 lt!2047271)))))

(declare-fun findLongestMatchWithZipperSequenceV2!150 (Regex!13584 BalanceConc!29636 BalanceConc!29636) tuple2!61962)

(assert (=> d!1596005 (= lt!2047271 (findLongestMatchWithZipperSequenceV2!150 (regex!8351 (h!63765 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun ruleValid!3783 (LexerInterface!7943 Rule!16502) Bool)

(assert (=> d!1596005 (ruleValid!3783 thiss!15247 (h!63765 rulesArg!259))))

(assert (=> d!1596005 (= (maxPrefixOneRuleZipperSequenceV2!335 thiss!15247 (h!63765 rulesArg!259) input!1342 totalInput!464) lt!2047275)))

(declare-fun b!4959134 () Bool)

(declare-fun e!3099364 () Bool)

(assert (=> b!4959134 (= e!3099365 e!3099364)))

(declare-fun res!2116401 () Bool)

(assert (=> b!4959134 (=> res!2116401 e!3099364)))

(assert (=> b!4959134 (= res!2116401 (not (isDefined!11291 lt!2047275)))))

(declare-fun b!4959135 () Bool)

(declare-fun e!3099361 () Bool)

(assert (=> b!4959135 (= e!3099364 e!3099361)))

(declare-fun res!2116399 () Bool)

(assert (=> b!4959135 (=> (not res!2116399) (not e!3099361))))

(assert (=> b!4959135 (= res!2116399 (= (_1!34279 (get!19856 lt!2047275)) (_1!34280 (get!19855 (maxPrefixOneRule!3611 thiss!15247 (h!63765 rulesArg!259) (list!18300 input!1342))))))))

(declare-fun b!4959136 () Bool)

(assert (=> b!4959136 (= e!3099361 (= (list!18300 (_2!34279 (get!19856 lt!2047275))) (_2!34280 (get!19855 (maxPrefixOneRule!3611 thiss!15247 (h!63765 rulesArg!259) (list!18300 input!1342))))))))

(assert (= (and d!1596005 c!846405) b!4959131))

(assert (= (and d!1596005 (not c!846405)) b!4959133))

(assert (= (and b!4959133 (not res!2116400)) b!4959132))

(assert (= (and d!1596005 res!2116402) b!4959134))

(assert (= (and b!4959134 (not res!2116401)) b!4959135))

(assert (= (and b!4959135 res!2116399) b!4959136))

(declare-fun m!5983712 () Bool)

(assert (=> b!4959133 m!5983712))

(declare-fun m!5983714 () Bool)

(assert (=> b!4959133 m!5983714))

(declare-fun m!5983716 () Bool)

(assert (=> b!4959133 m!5983716))

(declare-fun m!5983718 () Bool)

(assert (=> b!4959133 m!5983718))

(declare-fun m!5983720 () Bool)

(assert (=> b!4959133 m!5983720))

(declare-fun m!5983722 () Bool)

(assert (=> b!4959133 m!5983722))

(declare-fun m!5983724 () Bool)

(assert (=> b!4959133 m!5983724))

(declare-fun m!5983726 () Bool)

(assert (=> b!4959133 m!5983726))

(assert (=> b!4959133 m!5983712))

(assert (=> b!4959133 m!5983718))

(declare-fun m!5983728 () Bool)

(assert (=> b!4959133 m!5983728))

(declare-fun m!5983730 () Bool)

(assert (=> b!4959133 m!5983730))

(assert (=> b!4959133 m!5983714))

(declare-fun m!5983732 () Bool)

(assert (=> b!4959133 m!5983732))

(assert (=> b!4959133 m!5983582))

(assert (=> b!4959133 m!5983730))

(declare-fun m!5983734 () Bool)

(assert (=> b!4959133 m!5983734))

(assert (=> b!4959133 m!5983718))

(declare-fun m!5983736 () Bool)

(assert (=> b!4959133 m!5983736))

(assert (=> b!4959132 m!5983730))

(assert (=> b!4959132 m!5983714))

(assert (=> b!4959132 m!5983730))

(assert (=> b!4959132 m!5983714))

(assert (=> b!4959132 m!5983732))

(declare-fun m!5983738 () Bool)

(assert (=> b!4959132 m!5983738))

(declare-fun m!5983740 () Bool)

(assert (=> b!4959136 m!5983740))

(assert (=> b!4959136 m!5983582))

(declare-fun m!5983742 () Bool)

(assert (=> b!4959136 m!5983742))

(declare-fun m!5983744 () Bool)

(assert (=> b!4959136 m!5983744))

(declare-fun m!5983746 () Bool)

(assert (=> b!4959136 m!5983746))

(assert (=> b!4959136 m!5983582))

(assert (=> b!4959136 m!5983742))

(assert (=> d!1596005 m!5983582))

(assert (=> d!1596005 m!5983742))

(assert (=> d!1596005 m!5983582))

(declare-fun m!5983748 () Bool)

(assert (=> d!1596005 m!5983748))

(declare-fun m!5983750 () Bool)

(assert (=> d!1596005 m!5983750))

(declare-fun m!5983752 () Bool)

(assert (=> d!1596005 m!5983752))

(assert (=> d!1596005 m!5983742))

(declare-fun m!5983754 () Bool)

(assert (=> d!1596005 m!5983754))

(declare-fun m!5983756 () Bool)

(assert (=> d!1596005 m!5983756))

(assert (=> b!4959135 m!5983740))

(assert (=> b!4959135 m!5983582))

(assert (=> b!4959135 m!5983582))

(assert (=> b!4959135 m!5983742))

(assert (=> b!4959135 m!5983742))

(assert (=> b!4959135 m!5983744))

(assert (=> b!4959134 m!5983752))

(assert (=> b!4959018 d!1596005))

(declare-fun d!1596011 () Bool)

(assert (=> d!1596011 true))

(declare-fun lt!2047283 () Bool)

(declare-fun lambda!247172 () Int)

(declare-fun forall!13309 (List!57441 Int) Bool)

(assert (=> d!1596011 (= lt!2047283 (forall!13309 rulesArg!259 lambda!247172))))

(declare-fun e!3099376 () Bool)

(assert (=> d!1596011 (= lt!2047283 e!3099376)))

(declare-fun res!2116408 () Bool)

(assert (=> d!1596011 (=> res!2116408 e!3099376)))

(assert (=> d!1596011 (= res!2116408 (not (is-Cons!57317 rulesArg!259)))))

(assert (=> d!1596011 (= (rulesValidInductive!3254 thiss!15247 rulesArg!259) lt!2047283)))

(declare-fun b!4959149 () Bool)

(declare-fun e!3099377 () Bool)

(assert (=> b!4959149 (= e!3099376 e!3099377)))

(declare-fun res!2116407 () Bool)

(assert (=> b!4959149 (=> (not res!2116407) (not e!3099377))))

(assert (=> b!4959149 (= res!2116407 (ruleValid!3783 thiss!15247 (h!63765 rulesArg!259)))))

(declare-fun b!4959150 () Bool)

(assert (=> b!4959150 (= e!3099377 (rulesValidInductive!3254 thiss!15247 (t!368007 rulesArg!259)))))

(assert (= (and d!1596011 (not res!2116408)) b!4959149))

(assert (= (and b!4959149 res!2116407) b!4959150))

(declare-fun m!5983758 () Bool)

(assert (=> d!1596011 m!5983758))

(assert (=> b!4959149 m!5983756))

(assert (=> b!4959150 m!5983694))

(assert (=> b!4959019 d!1596011))

(declare-fun d!1596013 () Bool)

(declare-fun c!846408 () Bool)

(assert (=> d!1596013 (= c!846408 (is-Node!15103 (c!846389 totalInput!464)))))

(declare-fun e!3099382 () Bool)

(assert (=> d!1596013 (= (inv!74818 (c!846389 totalInput!464)) e!3099382)))

(declare-fun b!4959159 () Bool)

(declare-fun inv!74823 (Conc!15103) Bool)

(assert (=> b!4959159 (= e!3099382 (inv!74823 (c!846389 totalInput!464)))))

(declare-fun b!4959160 () Bool)

(declare-fun e!3099383 () Bool)

(assert (=> b!4959160 (= e!3099382 e!3099383)))

(declare-fun res!2116411 () Bool)

(assert (=> b!4959160 (= res!2116411 (not (is-Leaf!25104 (c!846389 totalInput!464))))))

(assert (=> b!4959160 (=> res!2116411 e!3099383)))

(declare-fun b!4959161 () Bool)

(declare-fun inv!74824 (Conc!15103) Bool)

(assert (=> b!4959161 (= e!3099383 (inv!74824 (c!846389 totalInput!464)))))

(assert (= (and d!1596013 c!846408) b!4959159))

(assert (= (and d!1596013 (not c!846408)) b!4959160))

(assert (= (and b!4959160 (not res!2116411)) b!4959161))

(declare-fun m!5983760 () Bool)

(assert (=> b!4959159 m!5983760))

(declare-fun m!5983762 () Bool)

(assert (=> b!4959161 m!5983762))

(assert (=> b!4959017 d!1596013))

(declare-fun d!1596015 () Bool)

(declare-fun list!18302 (Conc!15103) List!57440)

(assert (=> d!1596015 (= (list!18300 (_2!34279 lt!2047183)) (list!18302 (c!846389 (_2!34279 lt!2047183))))))

(declare-fun bs!1182638 () Bool)

(assert (= bs!1182638 d!1596015))

(declare-fun m!5983764 () Bool)

(assert (=> bs!1182638 m!5983764))

(assert (=> b!4959021 d!1596015))

(declare-fun b!4959172 () Bool)

(declare-fun e!3099391 () Bool)

(declare-fun tail!9784 (List!57440) List!57440)

(assert (=> b!4959172 (= e!3099391 (isPrefix!5204 (tail!9784 lt!2047184) (tail!9784 lt!2047184)))))

(declare-fun b!4959173 () Bool)

(declare-fun e!3099390 () Bool)

(assert (=> b!4959173 (= e!3099390 (>= (size!37991 lt!2047184) (size!37991 lt!2047184)))))

(declare-fun b!4959170 () Bool)

(declare-fun e!3099392 () Bool)

(assert (=> b!4959170 (= e!3099392 e!3099391)))

(declare-fun res!2116422 () Bool)

(assert (=> b!4959170 (=> (not res!2116422) (not e!3099391))))

(assert (=> b!4959170 (= res!2116422 (not (is-Nil!57316 lt!2047184)))))

(declare-fun d!1596017 () Bool)

(assert (=> d!1596017 e!3099390))

(declare-fun res!2116421 () Bool)

(assert (=> d!1596017 (=> res!2116421 e!3099390)))

(declare-fun lt!2047286 () Bool)

(assert (=> d!1596017 (= res!2116421 (not lt!2047286))))

(assert (=> d!1596017 (= lt!2047286 e!3099392)))

(declare-fun res!2116420 () Bool)

(assert (=> d!1596017 (=> res!2116420 e!3099392)))

(assert (=> d!1596017 (= res!2116420 (is-Nil!57316 lt!2047184))))

(assert (=> d!1596017 (= (isPrefix!5204 lt!2047184 lt!2047184) lt!2047286)))

(declare-fun b!4959171 () Bool)

(declare-fun res!2116423 () Bool)

(assert (=> b!4959171 (=> (not res!2116423) (not e!3099391))))

(declare-fun head!10651 (List!57440) C!27418)

(assert (=> b!4959171 (= res!2116423 (= (head!10651 lt!2047184) (head!10651 lt!2047184)))))

(assert (= (and d!1596017 (not res!2116420)) b!4959170))

(assert (= (and b!4959170 res!2116422) b!4959171))

(assert (= (and b!4959171 res!2116423) b!4959172))

(assert (= (and d!1596017 (not res!2116421)) b!4959173))

(declare-fun m!5983766 () Bool)

(assert (=> b!4959172 m!5983766))

(assert (=> b!4959172 m!5983766))

(assert (=> b!4959172 m!5983766))

(assert (=> b!4959172 m!5983766))

(declare-fun m!5983768 () Bool)

(assert (=> b!4959172 m!5983768))

(declare-fun m!5983770 () Bool)

(assert (=> b!4959173 m!5983770))

(assert (=> b!4959173 m!5983770))

(declare-fun m!5983772 () Bool)

(assert (=> b!4959171 m!5983772))

(assert (=> b!4959171 m!5983772))

(assert (=> b!4959010 d!1596017))

(declare-fun d!1596019 () Bool)

(assert (=> d!1596019 (isPrefix!5204 lt!2047184 lt!2047184)))

(declare-fun lt!2047289 () Unit!148210)

(declare-fun choose!36631 (List!57440 List!57440) Unit!148210)

(assert (=> d!1596019 (= lt!2047289 (choose!36631 lt!2047184 lt!2047184))))

(assert (=> d!1596019 (= (lemmaIsPrefixRefl!3528 lt!2047184 lt!2047184) lt!2047289)))

(declare-fun bs!1182639 () Bool)

(assert (= bs!1182639 d!1596019))

(assert (=> bs!1182639 m!5983618))

(declare-fun m!5983774 () Bool)

(assert (=> bs!1182639 m!5983774))

(assert (=> b!4959010 d!1596019))

(declare-fun d!1596021 () Bool)

(assert (=> d!1596021 (= (get!19855 lt!2047180) (v!50355 lt!2047180))))

(assert (=> b!4959009 d!1596021))

(declare-fun d!1596023 () Bool)

(assert (=> d!1596023 (= (get!19856 lt!2047181) (v!50356 lt!2047181))))

(assert (=> b!4959009 d!1596023))

(declare-fun d!1596025 () Bool)

(declare-fun isEmpty!30827 (Option!14371) Bool)

(assert (=> d!1596025 (= (isDefined!11290 lt!2047180) (not (isEmpty!30827 lt!2047180)))))

(declare-fun bs!1182640 () Bool)

(assert (= bs!1182640 d!1596025))

(declare-fun m!5983776 () Bool)

(assert (=> bs!1182640 m!5983776))

(assert (=> b!4959020 d!1596025))

(declare-fun d!1596027 () Bool)

(declare-fun isEmpty!30828 (Option!14372) Bool)

(assert (=> d!1596027 (= (isDefined!11291 lt!2047181) (not (isEmpty!30828 lt!2047181)))))

(declare-fun bs!1182641 () Bool)

(assert (= bs!1182641 d!1596027))

(declare-fun m!5983778 () Bool)

(assert (=> bs!1182641 m!5983778))

(assert (=> b!4959020 d!1596027))

(declare-fun d!1596029 () Bool)

(declare-fun lt!2047303 () Option!14371)

(assert (=> d!1596029 (= lt!2047303 (maxPrefix!4638 thiss!15247 rulesArg!259 lt!2047184))))

(declare-fun e!3099397 () Option!14371)

(assert (=> d!1596029 (= lt!2047303 e!3099397)))

(declare-fun c!846411 () Bool)

(assert (=> d!1596029 (= c!846411 (and (is-Cons!57317 rulesArg!259) (is-Nil!57317 (t!368007 rulesArg!259))))))

(declare-fun lt!2047302 () Unit!148210)

(declare-fun lt!2047305 () Unit!148210)

(assert (=> d!1596029 (= lt!2047302 lt!2047305)))

(assert (=> d!1596029 (isPrefix!5204 lt!2047184 lt!2047184)))

(assert (=> d!1596029 (= lt!2047305 (lemmaIsPrefixRefl!3528 lt!2047184 lt!2047184))))

(assert (=> d!1596029 (rulesValidInductive!3254 thiss!15247 rulesArg!259)))

(assert (=> d!1596029 (= (maxPrefixZipper!748 thiss!15247 rulesArg!259 lt!2047184) lt!2047303)))

(declare-fun call!345964 () Option!14371)

(declare-fun bm!345959 () Bool)

(declare-fun maxPrefixOneRuleZipper!280 (LexerInterface!7943 Rule!16502 List!57440) Option!14371)

(assert (=> bm!345959 (= call!345964 (maxPrefixOneRuleZipper!280 thiss!15247 (h!63765 rulesArg!259) lt!2047184))))

(declare-fun b!4959182 () Bool)

(assert (=> b!4959182 (= e!3099397 call!345964)))

(declare-fun b!4959183 () Bool)

(declare-fun lt!2047301 () Option!14371)

(declare-fun lt!2047304 () Option!14371)

(assert (=> b!4959183 (= e!3099397 (ite (and (is-None!14370 lt!2047301) (is-None!14370 lt!2047304)) None!14370 (ite (is-None!14370 lt!2047304) lt!2047301 (ite (is-None!14370 lt!2047301) lt!2047304 (ite (>= (size!37989 (_1!34280 (v!50355 lt!2047301))) (size!37989 (_1!34280 (v!50355 lt!2047304)))) lt!2047301 lt!2047304)))))))

(assert (=> b!4959183 (= lt!2047301 call!345964)))

(assert (=> b!4959183 (= lt!2047304 (maxPrefixZipper!748 thiss!15247 (t!368007 rulesArg!259) lt!2047184))))

(assert (= (and d!1596029 c!846411) b!4959182))

(assert (= (and d!1596029 (not c!846411)) b!4959183))

(assert (= (or b!4959182 b!4959183) bm!345959))

(assert (=> d!1596029 m!5983614))

(assert (=> d!1596029 m!5983618))

(assert (=> d!1596029 m!5983620))

(assert (=> d!1596029 m!5983576))

(declare-fun m!5983790 () Bool)

(assert (=> bm!345959 m!5983790))

(declare-fun m!5983792 () Bool)

(assert (=> b!4959183 m!5983792))

(assert (=> b!4959020 d!1596029))

(declare-fun d!1596043 () Bool)

(declare-fun e!3099400 () Bool)

(assert (=> d!1596043 e!3099400))

(declare-fun res!2116428 () Bool)

(assert (=> d!1596043 (=> res!2116428 e!3099400)))

(declare-fun lt!2047308 () Bool)

(assert (=> d!1596043 (= res!2116428 (not lt!2047308))))

(declare-fun drop!2331 (List!57440 Int) List!57440)

(assert (=> d!1596043 (= lt!2047308 (= lt!2047184 (drop!2331 (list!18300 totalInput!464) (- (size!37991 (list!18300 totalInput!464)) (size!37991 lt!2047184)))))))

(assert (=> d!1596043 (= (isSuffix!1150 lt!2047184 (list!18300 totalInput!464)) lt!2047308)))

(declare-fun b!4959186 () Bool)

(assert (=> b!4959186 (= e!3099400 (>= (size!37991 (list!18300 totalInput!464)) (size!37991 lt!2047184)))))

(assert (= (and d!1596043 (not res!2116428)) b!4959186))

(assert (=> d!1596043 m!5983578))

(declare-fun m!5983794 () Bool)

(assert (=> d!1596043 m!5983794))

(assert (=> d!1596043 m!5983770))

(assert (=> d!1596043 m!5983578))

(declare-fun m!5983796 () Bool)

(assert (=> d!1596043 m!5983796))

(assert (=> b!4959186 m!5983578))

(assert (=> b!4959186 m!5983794))

(assert (=> b!4959186 m!5983770))

(assert (=> b!4959013 d!1596043))

(declare-fun d!1596045 () Bool)

(assert (=> d!1596045 (= (list!18300 totalInput!464) (list!18302 (c!846389 totalInput!464)))))

(declare-fun bs!1182644 () Bool)

(assert (= bs!1182644 d!1596045))

(declare-fun m!5983798 () Bool)

(assert (=> bs!1182644 m!5983798))

(assert (=> b!4959013 d!1596045))

(declare-fun d!1596047 () Bool)

(assert (=> d!1596047 (= (list!18300 input!1342) (list!18302 (c!846389 input!1342)))))

(declare-fun bs!1182645 () Bool)

(assert (= bs!1182645 d!1596047))

(declare-fun m!5983800 () Bool)

(assert (=> bs!1182645 m!5983800))

(assert (=> b!4959013 d!1596047))

(declare-fun d!1596049 () Bool)

(assert (=> d!1596049 (= (isEmpty!30823 rulesArg!259) (is-Nil!57317 rulesArg!259))))

(assert (=> b!4959024 d!1596049))

(declare-fun d!1596051 () Bool)

(declare-fun c!846412 () Bool)

(assert (=> d!1596051 (= c!846412 (is-Node!15103 (c!846389 input!1342)))))

(declare-fun e!3099401 () Bool)

(assert (=> d!1596051 (= (inv!74818 (c!846389 input!1342)) e!3099401)))

(declare-fun b!4959187 () Bool)

(assert (=> b!4959187 (= e!3099401 (inv!74823 (c!846389 input!1342)))))

(declare-fun b!4959188 () Bool)

(declare-fun e!3099402 () Bool)

(assert (=> b!4959188 (= e!3099401 e!3099402)))

(declare-fun res!2116429 () Bool)

(assert (=> b!4959188 (= res!2116429 (not (is-Leaf!25104 (c!846389 input!1342))))))

(assert (=> b!4959188 (=> res!2116429 e!3099402)))

(declare-fun b!4959189 () Bool)

(assert (=> b!4959189 (= e!3099402 (inv!74824 (c!846389 input!1342)))))

(assert (= (and d!1596051 c!846412) b!4959187))

(assert (= (and d!1596051 (not c!846412)) b!4959188))

(assert (= (and b!4959188 (not res!2116429)) b!4959189))

(declare-fun m!5983802 () Bool)

(assert (=> b!4959187 m!5983802))

(declare-fun m!5983804 () Bool)

(assert (=> b!4959189 m!5983804))

(assert (=> b!4959023 d!1596051))

(declare-fun d!1596053 () Bool)

(assert (=> d!1596053 (= (inv!74814 (tag!9215 (h!63765 rulesArg!259))) (= (mod (str.len (value!267446 (tag!9215 (h!63765 rulesArg!259)))) 2) 0))))

(assert (=> b!4959016 d!1596053))

(declare-fun d!1596055 () Bool)

(declare-fun res!2116432 () Bool)

(declare-fun e!3099405 () Bool)

(assert (=> d!1596055 (=> (not res!2116432) (not e!3099405))))

(declare-fun semiInverseModEq!3682 (Int Int) Bool)

(assert (=> d!1596055 (= res!2116432 (semiInverseModEq!3682 (toChars!11161 (transformation!8351 (h!63765 rulesArg!259))) (toValue!11302 (transformation!8351 (h!63765 rulesArg!259)))))))

(assert (=> d!1596055 (= (inv!74817 (transformation!8351 (h!63765 rulesArg!259))) e!3099405)))

(declare-fun b!4959192 () Bool)

(declare-fun equivClasses!3530 (Int Int) Bool)

(assert (=> b!4959192 (= e!3099405 (equivClasses!3530 (toChars!11161 (transformation!8351 (h!63765 rulesArg!259))) (toValue!11302 (transformation!8351 (h!63765 rulesArg!259)))))))

(assert (= (and d!1596055 res!2116432) b!4959192))

(declare-fun m!5983806 () Bool)

(assert (=> d!1596055 m!5983806))

(declare-fun m!5983808 () Bool)

(assert (=> b!4959192 m!5983808))

(assert (=> b!4959016 d!1596055))

(declare-fun d!1596057 () Bool)

(assert (=> d!1596057 (= (isDefined!11290 (maxPrefix!4638 thiss!15247 rulesArg!259 lt!2047184)) (not (isEmpty!30827 (maxPrefix!4638 thiss!15247 rulesArg!259 lt!2047184))))))

(declare-fun bs!1182646 () Bool)

(assert (= bs!1182646 d!1596057))

(assert (=> bs!1182646 m!5983614))

(declare-fun m!5983810 () Bool)

(assert (=> bs!1182646 m!5983810))

(assert (=> b!4959014 d!1596057))

(declare-fun b!4959235 () Bool)

(declare-fun res!2116469 () Bool)

(declare-fun e!3099430 () Bool)

(assert (=> b!4959235 (=> (not res!2116469) (not e!3099430))))

(declare-fun lt!2047341 () Option!14371)

(declare-fun charsOf!5421 (Token!15202) BalanceConc!29636)

(assert (=> b!4959235 (= res!2116469 (matchR!6618 (regex!8351 (rule!11575 (_1!34280 (get!19855 lt!2047341)))) (list!18300 (charsOf!5421 (_1!34280 (get!19855 lt!2047341))))))))

(declare-fun b!4959236 () Bool)

(declare-fun e!3099432 () Option!14371)

(declare-fun call!345970 () Option!14371)

(assert (=> b!4959236 (= e!3099432 call!345970)))

(declare-fun b!4959237 () Bool)

(declare-fun res!2116465 () Bool)

(assert (=> b!4959237 (=> (not res!2116465) (not e!3099430))))

(declare-fun ++!12516 (List!57440 List!57440) List!57440)

(assert (=> b!4959237 (= res!2116465 (= (++!12516 (list!18300 (charsOf!5421 (_1!34280 (get!19855 lt!2047341)))) (_2!34280 (get!19855 lt!2047341))) lt!2047184))))

(declare-fun b!4959238 () Bool)

(declare-fun contains!19522 (List!57441 Rule!16502) Bool)

(assert (=> b!4959238 (= e!3099430 (contains!19522 rulesArg!259 (rule!11575 (_1!34280 (get!19855 lt!2047341)))))))

(declare-fun b!4959240 () Bool)

(declare-fun res!2116466 () Bool)

(assert (=> b!4959240 (=> (not res!2116466) (not e!3099430))))

(assert (=> b!4959240 (= res!2116466 (= (list!18300 (charsOf!5421 (_1!34280 (get!19855 lt!2047341)))) (originalCharacters!8632 (_1!34280 (get!19855 lt!2047341)))))))

(declare-fun b!4959241 () Bool)

(declare-fun res!2116470 () Bool)

(assert (=> b!4959241 (=> (not res!2116470) (not e!3099430))))

(assert (=> b!4959241 (= res!2116470 (< (size!37991 (_2!34280 (get!19855 lt!2047341))) (size!37991 lt!2047184)))))

(declare-fun b!4959242 () Bool)

(declare-fun e!3099431 () Bool)

(assert (=> b!4959242 (= e!3099431 e!3099430)))

(declare-fun res!2116468 () Bool)

(assert (=> b!4959242 (=> (not res!2116468) (not e!3099430))))

(assert (=> b!4959242 (= res!2116468 (isDefined!11290 lt!2047341))))

(declare-fun b!4959243 () Bool)

(declare-fun lt!2047340 () Option!14371)

(declare-fun lt!2047342 () Option!14371)

(assert (=> b!4959243 (= e!3099432 (ite (and (is-None!14370 lt!2047340) (is-None!14370 lt!2047342)) None!14370 (ite (is-None!14370 lt!2047342) lt!2047340 (ite (is-None!14370 lt!2047340) lt!2047342 (ite (>= (size!37989 (_1!34280 (v!50355 lt!2047340))) (size!37989 (_1!34280 (v!50355 lt!2047342)))) lt!2047340 lt!2047342)))))))

(assert (=> b!4959243 (= lt!2047340 call!345970)))

(assert (=> b!4959243 (= lt!2047342 (maxPrefix!4638 thiss!15247 (t!368007 rulesArg!259) lt!2047184))))

(declare-fun bm!345965 () Bool)

(assert (=> bm!345965 (= call!345970 (maxPrefixOneRule!3611 thiss!15247 (h!63765 rulesArg!259) lt!2047184))))

(declare-fun d!1596059 () Bool)

(assert (=> d!1596059 e!3099431))

(declare-fun res!2116471 () Bool)

(assert (=> d!1596059 (=> res!2116471 e!3099431)))

(assert (=> d!1596059 (= res!2116471 (isEmpty!30827 lt!2047341))))

(assert (=> d!1596059 (= lt!2047341 e!3099432)))

(declare-fun c!846418 () Bool)

(assert (=> d!1596059 (= c!846418 (and (is-Cons!57317 rulesArg!259) (is-Nil!57317 (t!368007 rulesArg!259))))))

(declare-fun lt!2047343 () Unit!148210)

(declare-fun lt!2047344 () Unit!148210)

(assert (=> d!1596059 (= lt!2047343 lt!2047344)))

(assert (=> d!1596059 (isPrefix!5204 lt!2047184 lt!2047184)))

(assert (=> d!1596059 (= lt!2047344 (lemmaIsPrefixRefl!3528 lt!2047184 lt!2047184))))

(assert (=> d!1596059 (rulesValidInductive!3254 thiss!15247 rulesArg!259)))

(assert (=> d!1596059 (= (maxPrefix!4638 thiss!15247 rulesArg!259 lt!2047184) lt!2047341)))

(declare-fun b!4959239 () Bool)

(declare-fun res!2116467 () Bool)

(assert (=> b!4959239 (=> (not res!2116467) (not e!3099430))))

(assert (=> b!4959239 (= res!2116467 (= (value!267447 (_1!34280 (get!19855 lt!2047341))) (apply!13886 (transformation!8351 (rule!11575 (_1!34280 (get!19855 lt!2047341)))) (seqFromList!6018 (originalCharacters!8632 (_1!34280 (get!19855 lt!2047341)))))))))

(assert (= (and d!1596059 c!846418) b!4959236))

(assert (= (and d!1596059 (not c!846418)) b!4959243))

(assert (= (or b!4959236 b!4959243) bm!345965))

(assert (= (and d!1596059 (not res!2116471)) b!4959242))

(assert (= (and b!4959242 res!2116468) b!4959240))

(assert (= (and b!4959240 res!2116466) b!4959241))

(assert (= (and b!4959241 res!2116470) b!4959237))

(assert (= (and b!4959237 res!2116465) b!4959239))

(assert (= (and b!4959239 res!2116467) b!4959235))

(assert (= (and b!4959235 res!2116469) b!4959238))

(declare-fun m!5983836 () Bool)

(assert (=> b!4959239 m!5983836))

(declare-fun m!5983838 () Bool)

(assert (=> b!4959239 m!5983838))

(assert (=> b!4959239 m!5983838))

(declare-fun m!5983840 () Bool)

(assert (=> b!4959239 m!5983840))

(assert (=> b!4959240 m!5983836))

(declare-fun m!5983842 () Bool)

(assert (=> b!4959240 m!5983842))

(assert (=> b!4959240 m!5983842))

(declare-fun m!5983844 () Bool)

(assert (=> b!4959240 m!5983844))

(assert (=> b!4959237 m!5983836))

(assert (=> b!4959237 m!5983842))

(assert (=> b!4959237 m!5983842))

(assert (=> b!4959237 m!5983844))

(assert (=> b!4959237 m!5983844))

(declare-fun m!5983846 () Bool)

(assert (=> b!4959237 m!5983846))

(assert (=> b!4959238 m!5983836))

(declare-fun m!5983848 () Bool)

(assert (=> b!4959238 m!5983848))

(declare-fun m!5983850 () Bool)

(assert (=> b!4959242 m!5983850))

(assert (=> b!4959235 m!5983836))

(assert (=> b!4959235 m!5983842))

(assert (=> b!4959235 m!5983842))

(assert (=> b!4959235 m!5983844))

(assert (=> b!4959235 m!5983844))

(declare-fun m!5983852 () Bool)

(assert (=> b!4959235 m!5983852))

(declare-fun m!5983854 () Bool)

(assert (=> b!4959243 m!5983854))

(declare-fun m!5983856 () Bool)

(assert (=> bm!345965 m!5983856))

(declare-fun m!5983858 () Bool)

(assert (=> d!1596059 m!5983858))

(assert (=> d!1596059 m!5983618))

(assert (=> d!1596059 m!5983620))

(assert (=> d!1596059 m!5983576))

(assert (=> b!4959241 m!5983836))

(declare-fun m!5983860 () Bool)

(assert (=> b!4959241 m!5983860))

(assert (=> b!4959241 m!5983770))

(assert (=> b!4959014 d!1596059))

(declare-fun d!1596063 () Bool)

(declare-fun isBalanced!4183 (Conc!15103) Bool)

(assert (=> d!1596063 (= (inv!74819 input!1342) (isBalanced!4183 (c!846389 input!1342)))))

(declare-fun bs!1182647 () Bool)

(assert (= bs!1182647 d!1596063))

(declare-fun m!5983862 () Bool)

(assert (=> bs!1182647 m!5983862))

(assert (=> start!522772 d!1596063))

(declare-fun d!1596065 () Bool)

(assert (=> d!1596065 (= (inv!74819 totalInput!464) (isBalanced!4183 (c!846389 totalInput!464)))))

(declare-fun bs!1182648 () Bool)

(assert (= bs!1182648 d!1596065))

(declare-fun m!5983864 () Bool)

(assert (=> bs!1182648 m!5983864))

(assert (=> start!522772 d!1596065))

(declare-fun tp!1390879 () Bool)

(declare-fun b!4959252 () Bool)

(declare-fun tp!1390881 () Bool)

(declare-fun e!3099438 () Bool)

(assert (=> b!4959252 (= e!3099438 (and (inv!74818 (left!41797 (c!846389 totalInput!464))) tp!1390879 (inv!74818 (right!42127 (c!846389 totalInput!464))) tp!1390881))))

(declare-fun b!4959254 () Bool)

(declare-fun e!3099437 () Bool)

(declare-fun tp!1390880 () Bool)

(assert (=> b!4959254 (= e!3099437 tp!1390880)))

(declare-fun b!4959253 () Bool)

(declare-fun inv!74825 (IArray!30267) Bool)

(assert (=> b!4959253 (= e!3099438 (and (inv!74825 (xs!18429 (c!846389 totalInput!464))) e!3099437))))

(assert (=> b!4959017 (= tp!1390854 (and (inv!74818 (c!846389 totalInput!464)) e!3099438))))

(assert (= (and b!4959017 (is-Node!15103 (c!846389 totalInput!464))) b!4959252))

(assert (= b!4959253 b!4959254))

(assert (= (and b!4959017 (is-Leaf!25104 (c!846389 totalInput!464))) b!4959253))

(declare-fun m!5983866 () Bool)

(assert (=> b!4959252 m!5983866))

(declare-fun m!5983868 () Bool)

(assert (=> b!4959252 m!5983868))

(declare-fun m!5983870 () Bool)

(assert (=> b!4959253 m!5983870))

(assert (=> b!4959017 m!5983606))

(declare-fun tp!1390884 () Bool)

(declare-fun b!4959255 () Bool)

(declare-fun tp!1390882 () Bool)

(declare-fun e!3099440 () Bool)

(assert (=> b!4959255 (= e!3099440 (and (inv!74818 (left!41797 (c!846389 input!1342))) tp!1390882 (inv!74818 (right!42127 (c!846389 input!1342))) tp!1390884))))

(declare-fun b!4959257 () Bool)

(declare-fun e!3099439 () Bool)

(declare-fun tp!1390883 () Bool)

(assert (=> b!4959257 (= e!3099439 tp!1390883)))

(declare-fun b!4959256 () Bool)

(assert (=> b!4959256 (= e!3099440 (and (inv!74825 (xs!18429 (c!846389 input!1342))) e!3099439))))

(assert (=> b!4959023 (= tp!1390850 (and (inv!74818 (c!846389 input!1342)) e!3099440))))

(assert (= (and b!4959023 (is-Node!15103 (c!846389 input!1342))) b!4959255))

(assert (= b!4959256 b!4959257))

(assert (= (and b!4959023 (is-Leaf!25104 (c!846389 input!1342))) b!4959256))

(declare-fun m!5983872 () Bool)

(assert (=> b!4959255 m!5983872))

(declare-fun m!5983874 () Bool)

(assert (=> b!4959255 m!5983874))

(declare-fun m!5983876 () Bool)

(assert (=> b!4959256 m!5983876))

(assert (=> b!4959023 m!5983590))

(declare-fun b!4959270 () Bool)

(declare-fun e!3099443 () Bool)

(declare-fun tp!1390899 () Bool)

(assert (=> b!4959270 (= e!3099443 tp!1390899)))

(declare-fun b!4959268 () Bool)

(declare-fun tp_is_empty!36293 () Bool)

(assert (=> b!4959268 (= e!3099443 tp_is_empty!36293)))

(assert (=> b!4959016 (= tp!1390849 e!3099443)))

(declare-fun b!4959271 () Bool)

(declare-fun tp!1390896 () Bool)

(declare-fun tp!1390895 () Bool)

(assert (=> b!4959271 (= e!3099443 (and tp!1390896 tp!1390895))))

(declare-fun b!4959269 () Bool)

(declare-fun tp!1390897 () Bool)

(declare-fun tp!1390898 () Bool)

(assert (=> b!4959269 (= e!3099443 (and tp!1390897 tp!1390898))))

(assert (= (and b!4959016 (is-ElementMatch!13584 (regex!8351 (h!63765 rulesArg!259)))) b!4959268))

(assert (= (and b!4959016 (is-Concat!22246 (regex!8351 (h!63765 rulesArg!259)))) b!4959269))

(assert (= (and b!4959016 (is-Star!13584 (regex!8351 (h!63765 rulesArg!259)))) b!4959270))

(assert (= (and b!4959016 (is-Union!13584 (regex!8351 (h!63765 rulesArg!259)))) b!4959271))

(declare-fun b!4959282 () Bool)

(declare-fun b_free!132459 () Bool)

(declare-fun b_next!133249 () Bool)

(assert (=> b!4959282 (= b_free!132459 (not b_next!133249))))

(declare-fun tp!1390910 () Bool)

(declare-fun b_and!347311 () Bool)

(assert (=> b!4959282 (= tp!1390910 b_and!347311)))

(declare-fun b_free!132461 () Bool)

(declare-fun b_next!133251 () Bool)

(assert (=> b!4959282 (= b_free!132461 (not b_next!133251))))

(declare-fun tp!1390908 () Bool)

(declare-fun b_and!347313 () Bool)

(assert (=> b!4959282 (= tp!1390908 b_and!347313)))

(declare-fun e!3099453 () Bool)

(assert (=> b!4959282 (= e!3099453 (and tp!1390910 tp!1390908))))

(declare-fun e!3099454 () Bool)

(declare-fun b!4959281 () Bool)

(declare-fun tp!1390911 () Bool)

(assert (=> b!4959281 (= e!3099454 (and tp!1390911 (inv!74814 (tag!9215 (h!63765 (t!368007 rulesArg!259)))) (inv!74817 (transformation!8351 (h!63765 (t!368007 rulesArg!259)))) e!3099453))))

(declare-fun b!4959280 () Bool)

(declare-fun e!3099452 () Bool)

(declare-fun tp!1390909 () Bool)

(assert (=> b!4959280 (= e!3099452 (and e!3099454 tp!1390909))))

(assert (=> b!4959015 (= tp!1390851 e!3099452)))

(assert (= b!4959281 b!4959282))

(assert (= b!4959280 b!4959281))

(assert (= (and b!4959015 (is-Cons!57317 (t!368007 rulesArg!259))) b!4959280))

(declare-fun m!5983878 () Bool)

(assert (=> b!4959281 m!5983878))

(declare-fun m!5983880 () Bool)

(assert (=> b!4959281 m!5983880))

(push 1)

(assert (not d!1596047))

(assert (not d!1596055))

(assert (not b!4959253))

(assert (not b!4959271))

(assert (not d!1596019))

(assert (not b!4959023))

(assert (not b_next!133241))

(assert (not b!4959133))

(assert (not b!4959241))

(assert (not b!4959238))

(assert (not b!4959173))

(assert (not b_next!133249))

(assert (not b_next!133251))

(assert b_and!347303)

(assert (not b!4959159))

(assert (not b!4959189))

(assert (not d!1596059))

(assert (not d!1596065))

(assert (not b!4959134))

(assert (not d!1596027))

(assert (not b!4959107))

(assert (not b!4959105))

(assert (not b!4959280))

(assert (not b!4959237))

(assert (not b!4959104))

(assert (not b!4959172))

(assert (not d!1595993))

(assert b_and!347305)

(assert (not b!4959132))

(assert (not b!4959256))

(assert (not b!4959257))

(assert (not bm!345953))

(assert (not d!1596005))

(assert (not b!4959161))

(assert (not d!1596011))

(assert (not d!1596045))

(assert (not bm!345959))

(assert (not b!4959150))

(assert (not b!4959235))

(assert (not b!4959102))

(assert (not b!4959252))

(assert (not bm!345965))

(assert (not b!4959243))

(assert (not b!4959183))

(assert (not b!4959101))

(assert (not b!4959186))

(assert (not b_next!133243))

(assert (not d!1596029))

(assert b_and!347311)

(assert (not b!4959270))

(assert (not b!4959136))

(assert (not b!4959269))

(assert (not b!4959135))

(assert (not d!1596015))

(assert (not b!4959240))

(assert (not b!4959108))

(assert (not b!4959254))

(assert b_and!347313)

(assert (not b!4959239))

(assert (not b!4959103))

(assert (not b!4959242))

(assert (not d!1596057))

(assert (not b!4959171))

(assert (not b!4959017))

(assert (not b!4959192))

(assert (not b!4959187))

(assert (not d!1596043))

(assert (not b!4959255))

(assert (not b!4959149))

(assert (not d!1596063))

(assert tp_is_empty!36293)

(assert (not b!4959281))

(assert (not d!1596025))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!133249))

(assert b_and!347305)

(assert (not b_next!133241))

(assert b_and!347313)

(assert (not b_next!133251))

(assert b_and!347303)

(assert (not b_next!133243))

(assert b_and!347311)

(check-sat)

(pop 1)


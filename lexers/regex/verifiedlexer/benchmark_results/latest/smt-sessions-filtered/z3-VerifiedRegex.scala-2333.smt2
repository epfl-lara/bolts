; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115062 () Bool)

(assert start!115062)

(declare-fun b!1304304 () Bool)

(declare-fun b_free!31251 () Bool)

(declare-fun b_next!31955 () Bool)

(assert (=> b!1304304 (= b_free!31251 (not b_next!31955))))

(declare-fun tp!380712 () Bool)

(declare-fun b_and!87103 () Bool)

(assert (=> b!1304304 (= tp!380712 b_and!87103)))

(declare-fun b_free!31253 () Bool)

(declare-fun b_next!31957 () Bool)

(assert (=> b!1304304 (= b_free!31253 (not b_next!31957))))

(declare-fun tp!380711 () Bool)

(declare-fun b_and!87105 () Bool)

(assert (=> b!1304304 (= tp!380711 b_and!87105)))

(declare-fun b!1304288 () Bool)

(declare-fun b_free!31255 () Bool)

(declare-fun b_next!31959 () Bool)

(assert (=> b!1304288 (= b_free!31255 (not b_next!31959))))

(declare-fun tp!380717 () Bool)

(declare-fun b_and!87107 () Bool)

(assert (=> b!1304288 (= tp!380717 b_and!87107)))

(declare-fun b_free!31257 () Bool)

(declare-fun b_next!31961 () Bool)

(assert (=> b!1304288 (= b_free!31257 (not b_next!31961))))

(declare-fun tp!380718 () Bool)

(declare-fun b_and!87109 () Bool)

(assert (=> b!1304288 (= tp!380718 b_and!87109)))

(declare-fun b!1304303 () Bool)

(declare-fun b_free!31259 () Bool)

(declare-fun b_next!31963 () Bool)

(assert (=> b!1304303 (= b_free!31259 (not b_next!31963))))

(declare-fun tp!380720 () Bool)

(declare-fun b_and!87111 () Bool)

(assert (=> b!1304303 (= tp!380720 b_and!87111)))

(declare-fun b_free!31261 () Bool)

(declare-fun b_next!31965 () Bool)

(assert (=> b!1304303 (= b_free!31261 (not b_next!31965))))

(declare-fun tp!380719 () Bool)

(declare-fun b_and!87113 () Bool)

(assert (=> b!1304303 (= tp!380719 b_and!87113)))

(declare-fun b!1304286 () Bool)

(assert (=> b!1304286 true))

(assert (=> b!1304286 true))

(declare-fun b!1304281 () Bool)

(assert (=> b!1304281 true))

(declare-fun b!1304301 () Bool)

(assert (=> b!1304301 true))

(declare-fun b!1304274 () Bool)

(declare-fun res!584749 () Bool)

(declare-fun e!836468 () Bool)

(assert (=> b!1304274 (=> res!584749 e!836468)))

(declare-datatypes ((C!7468 0))(
  ( (C!7469 (val!4294 Int)) )
))
(declare-datatypes ((List!13222 0))(
  ( (Nil!13156) (Cons!13156 (h!18557 C!7468) (t!117783 List!13222)) )
))
(declare-fun lt!429008 () List!13222)

(declare-fun lt!429009 () C!7468)

(declare-fun contains!2234 (List!13222 C!7468) Bool)

(assert (=> b!1304274 (= res!584749 (not (contains!2234 lt!429008 lt!429009)))))

(declare-fun b!1304275 () Bool)

(declare-fun e!836478 () Bool)

(declare-fun tp!380714 () Bool)

(declare-datatypes ((List!13223 0))(
  ( (Nil!13157) (Cons!13157 (h!18558 (_ BitVec 16)) (t!117784 List!13223)) )
))
(declare-datatypes ((TokenValue!2365 0))(
  ( (FloatLiteralValue!4730 (text!17000 List!13223)) (TokenValueExt!2364 (__x!8559 Int)) (Broken!11825 (value!74444 List!13223)) (Object!2430) (End!2365) (Def!2365) (Underscore!2365) (Match!2365) (Else!2365) (Error!2365) (Case!2365) (If!2365) (Extends!2365) (Abstract!2365) (Class!2365) (Val!2365) (DelimiterValue!4730 (del!2425 List!13223)) (KeywordValue!2371 (value!74445 List!13223)) (CommentValue!4730 (value!74446 List!13223)) (WhitespaceValue!4730 (value!74447 List!13223)) (IndentationValue!2365 (value!74448 List!13223)) (String!16060) (Int32!2365) (Broken!11826 (value!74449 List!13223)) (Boolean!2366) (Unit!19245) (OperatorValue!2368 (op!2425 List!13223)) (IdentifierValue!4730 (value!74450 List!13223)) (IdentifierValue!4731 (value!74451 List!13223)) (WhitespaceValue!4731 (value!74452 List!13223)) (True!4730) (False!4730) (Broken!11827 (value!74453 List!13223)) (Broken!11828 (value!74454 List!13223)) (True!4731) (RightBrace!2365) (RightBracket!2365) (Colon!2365) (Null!2365) (Comma!2365) (LeftBracket!2365) (False!4731) (LeftBrace!2365) (ImaginaryLiteralValue!2365 (text!17001 List!13223)) (StringLiteralValue!7095 (value!74455 List!13223)) (EOFValue!2365 (value!74456 List!13223)) (IdentValue!2365 (value!74457 List!13223)) (DelimiterValue!4731 (value!74458 List!13223)) (DedentValue!2365 (value!74459 List!13223)) (NewLineValue!2365 (value!74460 List!13223)) (IntegerValue!7095 (value!74461 (_ BitVec 32)) (text!17002 List!13223)) (IntegerValue!7096 (value!74462 Int) (text!17003 List!13223)) (Times!2365) (Or!2365) (Equal!2365) (Minus!2365) (Broken!11829 (value!74463 List!13223)) (And!2365) (Div!2365) (LessEqual!2365) (Mod!2365) (Concat!5954) (Not!2365) (Plus!2365) (SpaceValue!2365 (value!74464 List!13223)) (IntegerValue!7097 (value!74465 Int) (text!17004 List!13223)) (StringLiteralValue!7096 (text!17005 List!13223)) (FloatLiteralValue!4731 (text!17006 List!13223)) (BytesLiteralValue!2365 (value!74466 List!13223)) (CommentValue!4731 (value!74467 List!13223)) (StringLiteralValue!7097 (value!74468 List!13223)) (ErrorTokenValue!2365 (msg!2426 List!13223)) )
))
(declare-datatypes ((IArray!8645 0))(
  ( (IArray!8646 (innerList!4380 List!13222)) )
))
(declare-datatypes ((Conc!4320 0))(
  ( (Node!4320 (left!11315 Conc!4320) (right!11645 Conc!4320) (csize!8870 Int) (cheight!4531 Int)) (Leaf!6654 (xs!7035 IArray!8645) (csize!8871 Int)) (Empty!4320) )
))
(declare-datatypes ((BalanceConc!8580 0))(
  ( (BalanceConc!8581 (c!214292 Conc!4320)) )
))
(declare-datatypes ((Regex!3589 0))(
  ( (ElementMatch!3589 (c!214293 C!7468)) (Concat!5955 (regOne!7690 Regex!3589) (regTwo!7690 Regex!3589)) (EmptyExpr!3589) (Star!3589 (reg!3918 Regex!3589)) (EmptyLang!3589) (Union!3589 (regOne!7691 Regex!3589) (regTwo!7691 Regex!3589)) )
))
(declare-datatypes ((String!16061 0))(
  ( (String!16062 (value!74469 String)) )
))
(declare-datatypes ((TokenValueInjection!4390 0))(
  ( (TokenValueInjection!4391 (toValue!3490 Int) (toChars!3349 Int)) )
))
(declare-datatypes ((Rule!4350 0))(
  ( (Rule!4351 (regex!2275 Regex!3589) (tag!2537 String!16061) (isSeparator!2275 Bool) (transformation!2275 TokenValueInjection!4390)) )
))
(declare-datatypes ((Token!4212 0))(
  ( (Token!4213 (value!74470 TokenValue!2365) (rule!4014 Rule!4350) (size!10716 Int) (originalCharacters!3137 List!13222)) )
))
(declare-fun t1!34 () Token!4212)

(declare-fun e!836481 () Bool)

(declare-fun inv!17560 (String!16061) Bool)

(declare-fun inv!17563 (TokenValueInjection!4390) Bool)

(assert (=> b!1304275 (= e!836481 (and tp!380714 (inv!17560 (tag!2537 (rule!4014 t1!34))) (inv!17563 (transformation!2275 (rule!4014 t1!34))) e!836478))))

(declare-fun b!1304276 () Bool)

(declare-fun res!584750 () Bool)

(declare-fun e!836483 () Bool)

(assert (=> b!1304276 (=> (not res!584750) (not e!836483))))

(declare-datatypes ((List!13224 0))(
  ( (Nil!13158) (Cons!13158 (h!18559 Rule!4350) (t!117785 List!13224)) )
))
(declare-fun rules!2550 () List!13224)

(declare-fun isEmpty!7780 (List!13224) Bool)

(assert (=> b!1304276 (= res!584750 (not (isEmpty!7780 rules!2550)))))

(declare-fun b!1304277 () Bool)

(declare-fun res!584735 () Bool)

(assert (=> b!1304277 (=> (not res!584735) (not e!836483))))

(declare-datatypes ((LexerInterface!1970 0))(
  ( (LexerInterfaceExt!1967 (__x!8560 Int)) (Lexer!1968) )
))
(declare-fun thiss!19762 () LexerInterface!1970)

(declare-fun rulesInvariant!1840 (LexerInterface!1970 List!13224) Bool)

(assert (=> b!1304277 (= res!584735 (rulesInvariant!1840 thiss!19762 rules!2550))))

(declare-fun b!1304278 () Bool)

(declare-fun res!584737 () Bool)

(assert (=> b!1304278 (=> res!584737 e!836468)))

(declare-fun lt!429010 () C!7468)

(assert (=> b!1304278 (= res!584737 (not (contains!2234 lt!429008 lt!429010)))))

(declare-fun tp!380715 () Bool)

(declare-fun b!1304279 () Bool)

(declare-fun e!836475 () Bool)

(declare-fun e!836463 () Bool)

(declare-fun t2!34 () Token!4212)

(assert (=> b!1304279 (= e!836463 (and tp!380715 (inv!17560 (tag!2537 (rule!4014 t2!34))) (inv!17563 (transformation!2275 (rule!4014 t2!34))) e!836475))))

(declare-fun b!1304280 () Bool)

(declare-fun res!584739 () Bool)

(declare-fun e!836474 () Bool)

(assert (=> b!1304280 (=> res!584739 e!836474)))

(declare-datatypes ((List!13225 0))(
  ( (Nil!13159) (Cons!13159 (h!18560 Token!4212) (t!117786 List!13225)) )
))
(declare-datatypes ((IArray!8647 0))(
  ( (IArray!8648 (innerList!4381 List!13225)) )
))
(declare-datatypes ((Conc!4321 0))(
  ( (Node!4321 (left!11316 Conc!4321) (right!11646 Conc!4321) (csize!8872 Int) (cheight!4532 Int)) (Leaf!6655 (xs!7036 IArray!8647) (csize!8873 Int)) (Empty!4321) )
))
(declare-datatypes ((BalanceConc!8582 0))(
  ( (BalanceConc!8583 (c!214294 Conc!4321)) )
))
(declare-datatypes ((tuple2!12744 0))(
  ( (tuple2!12745 (_1!7258 BalanceConc!8582) (_2!7258 BalanceConc!8580)) )
))
(declare-fun lt!429007 () tuple2!12744)

(declare-fun isEmpty!7781 (BalanceConc!8580) Bool)

(assert (=> b!1304280 (= res!584739 (not (isEmpty!7781 (_2!7258 lt!429007))))))

(declare-fun e!836465 () Bool)

(assert (=> b!1304281 (= e!836468 e!836465)))

(declare-fun res!584748 () Bool)

(assert (=> b!1304281 (=> res!584748 e!836465)))

(declare-fun lambda!52008 () Int)

(declare-fun lambda!52007 () Int)

(declare-datatypes ((List!13226 0))(
  ( (Nil!13160) (Cons!13160 (h!18561 Regex!3589) (t!117787 List!13226)) )
))
(declare-fun exists!252 (List!13226 Int) Bool)

(declare-fun map!2879 (List!13224 Int) List!13226)

(assert (=> b!1304281 (= res!584748 (not (exists!252 (map!2879 rules!2550 lambda!52007) lambda!52008)))))

(declare-fun lt!429017 () List!13226)

(assert (=> b!1304281 (exists!252 lt!429017 lambda!52008)))

(declare-fun lt!429022 () Regex!3589)

(declare-datatypes ((Unit!19246 0))(
  ( (Unit!19247) )
))
(declare-fun lt!429014 () Unit!19246)

(declare-fun matchRGenUnionSpec!26 (Regex!3589 List!13226 List!13222) Unit!19246)

(assert (=> b!1304281 (= lt!429014 (matchRGenUnionSpec!26 lt!429022 lt!429017 lt!429008))))

(assert (=> b!1304281 (= lt!429017 (map!2879 rules!2550 lambda!52007))))

(declare-fun b!1304282 () Bool)

(declare-fun res!584753 () Bool)

(assert (=> b!1304282 (=> res!584753 e!836468)))

(declare-fun matchR!1591 (Regex!3589 List!13222) Bool)

(assert (=> b!1304282 (= res!584753 (not (matchR!1591 lt!429022 lt!429008)))))

(declare-fun b!1304283 () Bool)

(declare-fun e!836484 () Bool)

(assert (=> b!1304283 (= e!836484 e!836468)))

(declare-fun res!584756 () Bool)

(assert (=> b!1304283 (=> res!584756 e!836468)))

(declare-fun lt!429015 () List!13222)

(assert (=> b!1304283 (= res!584756 (not (contains!2234 lt!429015 lt!429009)))))

(declare-fun lt!429020 () BalanceConc!8580)

(declare-fun apply!2941 (BalanceConc!8580 Int) C!7468)

(assert (=> b!1304283 (= lt!429009 (apply!2941 lt!429020 0))))

(declare-fun b!1304284 () Bool)

(declare-fun e!836464 () Bool)

(assert (=> b!1304284 (= e!836483 e!836464)))

(declare-fun res!584736 () Bool)

(assert (=> b!1304284 (=> (not res!584736) (not e!836464))))

(declare-fun lt!429012 () BalanceConc!8580)

(declare-fun size!10717 (BalanceConc!8580) Int)

(assert (=> b!1304284 (= res!584736 (> (size!10717 lt!429012) 0))))

(declare-fun charsOf!1247 (Token!4212) BalanceConc!8580)

(assert (=> b!1304284 (= lt!429012 (charsOf!1247 t2!34))))

(declare-fun b!1304285 () Bool)

(declare-fun res!584743 () Bool)

(assert (=> b!1304285 (=> (not res!584743) (not e!836483))))

(declare-fun rulesProduceIndividualToken!939 (LexerInterface!1970 List!13224 Token!4212) Bool)

(assert (=> b!1304285 (= res!584743 (rulesProduceIndividualToken!939 thiss!19762 rules!2550 t1!34))))

(declare-fun e!836473 () Bool)

(declare-fun e!836467 () Bool)

(assert (=> b!1304286 (= e!836473 (not e!836467))))

(declare-fun res!584751 () Bool)

(assert (=> b!1304286 (=> res!584751 e!836467)))

(declare-fun lambda!52006 () Int)

(declare-fun Exists!747 (Int) Bool)

(assert (=> b!1304286 (= res!584751 (not (Exists!747 lambda!52006)))))

(assert (=> b!1304286 (Exists!747 lambda!52006)))

(declare-fun lt!429013 () Unit!19246)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!65 (Regex!3589 List!13222) Unit!19246)

(assert (=> b!1304286 (= lt!429013 (lemmaPrefixMatchThenExistsStringThatMatches!65 lt!429022 lt!429015))))

(declare-fun b!1304287 () Bool)

(declare-fun res!584744 () Bool)

(assert (=> b!1304287 (=> (not res!584744) (not e!836464))))

(declare-fun sepAndNonSepRulesDisjointChars!648 (List!13224 List!13224) Bool)

(assert (=> b!1304287 (= res!584744 (sepAndNonSepRulesDisjointChars!648 rules!2550 rules!2550))))

(declare-fun e!836466 () Bool)

(assert (=> b!1304288 (= e!836466 (and tp!380717 tp!380718))))

(declare-fun b!1304289 () Bool)

(declare-fun e!836479 () Bool)

(assert (=> b!1304289 (= e!836465 e!836479)))

(declare-fun res!584755 () Bool)

(assert (=> b!1304289 (=> res!584755 e!836479)))

(declare-fun lt!429016 () Regex!3589)

(declare-fun contains!2235 (List!13226 Regex!3589) Bool)

(assert (=> b!1304289 (= res!584755 (not (contains!2235 (map!2879 rules!2550 lambda!52007) lt!429016)))))

(declare-fun getWitness!144 (List!13226 Int) Regex!3589)

(assert (=> b!1304289 (= lt!429016 (getWitness!144 (map!2879 rules!2550 lambda!52007) lambda!52008))))

(declare-fun res!584747 () Bool)

(assert (=> start!115062 (=> (not res!584747) (not e!836483))))

(get-info :version)

(assert (=> start!115062 (= res!584747 ((_ is Lexer!1968) thiss!19762))))

(assert (=> start!115062 e!836483))

(assert (=> start!115062 true))

(declare-fun e!836471 () Bool)

(assert (=> start!115062 e!836471))

(declare-fun e!836462 () Bool)

(declare-fun inv!17564 (Token!4212) Bool)

(assert (=> start!115062 (and (inv!17564 t1!34) e!836462)))

(declare-fun e!836469 () Bool)

(assert (=> start!115062 (and (inv!17564 t2!34) e!836469)))

(declare-fun b!1304290 () Bool)

(declare-fun e!836470 () Bool)

(assert (=> b!1304290 (= e!836470 e!836474)))

(declare-fun res!584734 () Bool)

(assert (=> b!1304290 (=> res!584734 e!836474)))

(declare-fun lt!429011 () List!13225)

(declare-fun list!4926 (BalanceConc!8582) List!13225)

(assert (=> b!1304290 (= res!584734 (not (= (list!4926 (_1!7258 lt!429007)) lt!429011)))))

(assert (=> b!1304290 (= lt!429011 (Cons!13159 t1!34 Nil!13159))))

(declare-fun lt!429019 () BalanceConc!8580)

(declare-fun lex!805 (LexerInterface!1970 List!13224 BalanceConc!8580) tuple2!12744)

(assert (=> b!1304290 (= lt!429007 (lex!805 thiss!19762 rules!2550 lt!429019))))

(declare-fun print!744 (LexerInterface!1970 BalanceConc!8582) BalanceConc!8580)

(declare-fun singletonSeq!844 (Token!4212) BalanceConc!8582)

(assert (=> b!1304290 (= lt!429019 (print!744 thiss!19762 (singletonSeq!844 t1!34)))))

(declare-fun lt!429021 () Rule!4350)

(declare-fun lambda!52009 () Int)

(declare-fun getWitness!145 (List!13224 Int) Rule!4350)

(assert (=> b!1304290 (= lt!429021 (getWitness!145 rules!2550 lambda!52009))))

(declare-fun b!1304291 () Bool)

(declare-fun rulesValidInductive!712 (LexerInterface!1970 List!13224) Bool)

(assert (=> b!1304291 (= e!836474 (rulesValidInductive!712 thiss!19762 rules!2550))))

(declare-fun b!1304292 () Bool)

(assert (=> b!1304292 (= e!836464 e!836473)))

(declare-fun res!584738 () Bool)

(assert (=> b!1304292 (=> (not res!584738) (not e!836473))))

(declare-fun prefixMatch!102 (Regex!3589 List!13222) Bool)

(assert (=> b!1304292 (= res!584738 (prefixMatch!102 lt!429022 lt!429015))))

(declare-fun rulesRegex!160 (LexerInterface!1970 List!13224) Regex!3589)

(assert (=> b!1304292 (= lt!429022 (rulesRegex!160 thiss!19762 rules!2550))))

(declare-fun lt!429006 () List!13222)

(declare-fun ++!3346 (List!13222 List!13222) List!13222)

(assert (=> b!1304292 (= lt!429015 (++!3346 lt!429006 (Cons!13156 lt!429010 Nil!13156)))))

(assert (=> b!1304292 (= lt!429010 (apply!2941 lt!429012 0))))

(declare-fun list!4927 (BalanceConc!8580) List!13222)

(assert (=> b!1304292 (= lt!429006 (list!4927 lt!429020))))

(assert (=> b!1304292 (= lt!429020 (charsOf!1247 t1!34))))

(declare-fun b!1304293 () Bool)

(declare-fun res!584745 () Bool)

(assert (=> b!1304293 (=> res!584745 e!836474)))

(declare-datatypes ((tuple2!12746 0))(
  ( (tuple2!12747 (_1!7259 List!13225) (_2!7259 List!13222)) )
))
(declare-fun lexList!508 (LexerInterface!1970 List!13224 List!13222) tuple2!12746)

(assert (=> b!1304293 (= res!584745 (not (= (lexList!508 thiss!19762 rules!2550 (list!4927 lt!429019)) (tuple2!12747 lt!429011 Nil!13156))))))

(declare-fun b!1304294 () Bool)

(declare-fun res!584754 () Bool)

(assert (=> b!1304294 (=> (not res!584754) (not e!836483))))

(assert (=> b!1304294 (= res!584754 (not (= (isSeparator!2275 (rule!4014 t1!34)) (isSeparator!2275 (rule!4014 t2!34)))))))

(declare-fun b!1304295 () Bool)

(declare-fun e!836477 () Bool)

(declare-fun tp!380721 () Bool)

(assert (=> b!1304295 (= e!836471 (and e!836477 tp!380721))))

(declare-fun b!1304296 () Bool)

(declare-fun tp!380713 () Bool)

(declare-fun inv!21 (TokenValue!2365) Bool)

(assert (=> b!1304296 (= e!836469 (and (inv!21 (value!74470 t2!34)) e!836463 tp!380713))))

(declare-fun b!1304297 () Bool)

(declare-fun tp!380716 () Bool)

(assert (=> b!1304297 (= e!836477 (and tp!380716 (inv!17560 (tag!2537 (h!18559 rules!2550))) (inv!17563 (transformation!2275 (h!18559 rules!2550))) e!836466))))

(declare-fun b!1304298 () Bool)

(declare-fun res!584741 () Bool)

(assert (=> b!1304298 (=> (not res!584741) (not e!836483))))

(assert (=> b!1304298 (= res!584741 (rulesProduceIndividualToken!939 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1304299 () Bool)

(assert (=> b!1304299 (= e!836467 e!836484)))

(declare-fun res!584752 () Bool)

(assert (=> b!1304299 (=> res!584752 e!836484)))

(declare-fun getSuffix!445 (List!13222 List!13222) List!13222)

(assert (=> b!1304299 (= res!584752 (not (= lt!429008 (++!3346 lt!429015 (getSuffix!445 lt!429008 lt!429015)))))))

(declare-fun pickWitness!52 (Int) List!13222)

(assert (=> b!1304299 (= lt!429008 (pickWitness!52 lambda!52006))))

(declare-fun b!1304300 () Bool)

(declare-fun tp!380722 () Bool)

(assert (=> b!1304300 (= e!836462 (and (inv!21 (value!74470 t1!34)) e!836481 tp!380722))))

(assert (=> b!1304301 (= e!836479 e!836470)))

(declare-fun res!584740 () Bool)

(assert (=> b!1304301 (=> res!584740 e!836470)))

(declare-fun exists!253 (List!13224 Int) Bool)

(assert (=> b!1304301 (= res!584740 (not (exists!253 rules!2550 lambda!52009)))))

(assert (=> b!1304301 (exists!253 rules!2550 lambda!52009)))

(declare-fun lt!429018 () Unit!19246)

(declare-fun lemmaMapContains!18 (List!13224 Int Regex!3589) Unit!19246)

(assert (=> b!1304301 (= lt!429018 (lemmaMapContains!18 rules!2550 lambda!52007 lt!429016))))

(declare-fun b!1304302 () Bool)

(declare-fun res!584742 () Bool)

(assert (=> b!1304302 (=> (not res!584742) (not e!836464))))

(declare-fun separableTokensPredicate!253 (LexerInterface!1970 Token!4212 Token!4212 List!13224) Bool)

(assert (=> b!1304302 (= res!584742 (not (separableTokensPredicate!253 thiss!19762 t1!34 t2!34 rules!2550)))))

(assert (=> b!1304303 (= e!836478 (and tp!380720 tp!380719))))

(assert (=> b!1304304 (= e!836475 (and tp!380712 tp!380711))))

(declare-fun b!1304305 () Bool)

(declare-fun res!584746 () Bool)

(assert (=> b!1304305 (=> res!584746 e!836468)))

(assert (=> b!1304305 (= res!584746 (not (contains!2234 lt!429015 lt!429010)))))

(assert (= (and start!115062 res!584747) b!1304276))

(assert (= (and b!1304276 res!584750) b!1304277))

(assert (= (and b!1304277 res!584735) b!1304285))

(assert (= (and b!1304285 res!584743) b!1304298))

(assert (= (and b!1304298 res!584741) b!1304294))

(assert (= (and b!1304294 res!584754) b!1304284))

(assert (= (and b!1304284 res!584736) b!1304287))

(assert (= (and b!1304287 res!584744) b!1304302))

(assert (= (and b!1304302 res!584742) b!1304292))

(assert (= (and b!1304292 res!584738) b!1304286))

(assert (= (and b!1304286 (not res!584751)) b!1304299))

(assert (= (and b!1304299 (not res!584752)) b!1304283))

(assert (= (and b!1304283 (not res!584756)) b!1304274))

(assert (= (and b!1304274 (not res!584749)) b!1304305))

(assert (= (and b!1304305 (not res!584746)) b!1304278))

(assert (= (and b!1304278 (not res!584737)) b!1304282))

(assert (= (and b!1304282 (not res!584753)) b!1304281))

(assert (= (and b!1304281 (not res!584748)) b!1304289))

(assert (= (and b!1304289 (not res!584755)) b!1304301))

(assert (= (and b!1304301 (not res!584740)) b!1304290))

(assert (= (and b!1304290 (not res!584734)) b!1304280))

(assert (= (and b!1304280 (not res!584739)) b!1304293))

(assert (= (and b!1304293 (not res!584745)) b!1304291))

(assert (= b!1304297 b!1304288))

(assert (= b!1304295 b!1304297))

(assert (= (and start!115062 ((_ is Cons!13158) rules!2550)) b!1304295))

(assert (= b!1304275 b!1304303))

(assert (= b!1304300 b!1304275))

(assert (= start!115062 b!1304300))

(assert (= b!1304279 b!1304304))

(assert (= b!1304296 b!1304279))

(assert (= start!115062 b!1304296))

(declare-fun m!1455483 () Bool)

(assert (=> b!1304298 m!1455483))

(declare-fun m!1455485 () Bool)

(assert (=> b!1304292 m!1455485))

(declare-fun m!1455487 () Bool)

(assert (=> b!1304292 m!1455487))

(declare-fun m!1455489 () Bool)

(assert (=> b!1304292 m!1455489))

(declare-fun m!1455491 () Bool)

(assert (=> b!1304292 m!1455491))

(declare-fun m!1455493 () Bool)

(assert (=> b!1304292 m!1455493))

(declare-fun m!1455495 () Bool)

(assert (=> b!1304292 m!1455495))

(declare-fun m!1455497 () Bool)

(assert (=> b!1304281 m!1455497))

(declare-fun m!1455499 () Bool)

(assert (=> b!1304281 m!1455499))

(declare-fun m!1455501 () Bool)

(assert (=> b!1304281 m!1455501))

(declare-fun m!1455503 () Bool)

(assert (=> b!1304281 m!1455503))

(assert (=> b!1304281 m!1455497))

(assert (=> b!1304281 m!1455497))

(declare-fun m!1455505 () Bool)

(assert (=> b!1304284 m!1455505))

(declare-fun m!1455507 () Bool)

(assert (=> b!1304284 m!1455507))

(assert (=> b!1304289 m!1455497))

(assert (=> b!1304289 m!1455497))

(declare-fun m!1455509 () Bool)

(assert (=> b!1304289 m!1455509))

(assert (=> b!1304289 m!1455497))

(assert (=> b!1304289 m!1455497))

(declare-fun m!1455511 () Bool)

(assert (=> b!1304289 m!1455511))

(declare-fun m!1455513 () Bool)

(assert (=> b!1304302 m!1455513))

(declare-fun m!1455515 () Bool)

(assert (=> b!1304277 m!1455515))

(declare-fun m!1455517 () Bool)

(assert (=> b!1304297 m!1455517))

(declare-fun m!1455519 () Bool)

(assert (=> b!1304297 m!1455519))

(declare-fun m!1455521 () Bool)

(assert (=> b!1304286 m!1455521))

(assert (=> b!1304286 m!1455521))

(declare-fun m!1455523 () Bool)

(assert (=> b!1304286 m!1455523))

(declare-fun m!1455525 () Bool)

(assert (=> b!1304296 m!1455525))

(declare-fun m!1455527 () Bool)

(assert (=> b!1304293 m!1455527))

(assert (=> b!1304293 m!1455527))

(declare-fun m!1455529 () Bool)

(assert (=> b!1304293 m!1455529))

(declare-fun m!1455531 () Bool)

(assert (=> b!1304280 m!1455531))

(declare-fun m!1455533 () Bool)

(assert (=> b!1304299 m!1455533))

(assert (=> b!1304299 m!1455533))

(declare-fun m!1455535 () Bool)

(assert (=> b!1304299 m!1455535))

(declare-fun m!1455537 () Bool)

(assert (=> b!1304299 m!1455537))

(declare-fun m!1455539 () Bool)

(assert (=> b!1304290 m!1455539))

(declare-fun m!1455541 () Bool)

(assert (=> b!1304290 m!1455541))

(declare-fun m!1455543 () Bool)

(assert (=> b!1304290 m!1455543))

(declare-fun m!1455545 () Bool)

(assert (=> b!1304290 m!1455545))

(assert (=> b!1304290 m!1455541))

(declare-fun m!1455547 () Bool)

(assert (=> b!1304290 m!1455547))

(declare-fun m!1455549 () Bool)

(assert (=> b!1304285 m!1455549))

(declare-fun m!1455551 () Bool)

(assert (=> b!1304276 m!1455551))

(declare-fun m!1455553 () Bool)

(assert (=> b!1304305 m!1455553))

(declare-fun m!1455555 () Bool)

(assert (=> b!1304279 m!1455555))

(declare-fun m!1455557 () Bool)

(assert (=> b!1304279 m!1455557))

(declare-fun m!1455559 () Bool)

(assert (=> b!1304278 m!1455559))

(declare-fun m!1455561 () Bool)

(assert (=> b!1304274 m!1455561))

(declare-fun m!1455563 () Bool)

(assert (=> b!1304300 m!1455563))

(declare-fun m!1455565 () Bool)

(assert (=> b!1304282 m!1455565))

(declare-fun m!1455567 () Bool)

(assert (=> b!1304283 m!1455567))

(declare-fun m!1455569 () Bool)

(assert (=> b!1304283 m!1455569))

(declare-fun m!1455571 () Bool)

(assert (=> b!1304287 m!1455571))

(declare-fun m!1455573 () Bool)

(assert (=> b!1304301 m!1455573))

(assert (=> b!1304301 m!1455573))

(declare-fun m!1455575 () Bool)

(assert (=> b!1304301 m!1455575))

(declare-fun m!1455577 () Bool)

(assert (=> b!1304275 m!1455577))

(declare-fun m!1455579 () Bool)

(assert (=> b!1304275 m!1455579))

(declare-fun m!1455581 () Bool)

(assert (=> b!1304291 m!1455581))

(declare-fun m!1455583 () Bool)

(assert (=> start!115062 m!1455583))

(declare-fun m!1455585 () Bool)

(assert (=> start!115062 m!1455585))

(check-sat (not b_next!31955) (not b!1304276) (not b!1304280) (not b!1304290) (not b!1304281) b_and!87107 (not b!1304286) (not b!1304292) (not b!1304283) (not b!1304291) (not b!1304289) b_and!87105 (not b!1304298) (not b!1304284) (not b!1304278) (not b!1304305) (not b_next!31957) b_and!87109 (not b!1304285) (not b!1304296) (not b_next!31961) (not b!1304299) (not b!1304282) (not b!1304287) b_and!87111 b_and!87103 (not b!1304302) (not b_next!31965) (not b!1304300) (not start!115062) (not b!1304297) (not b!1304277) (not b!1304301) (not b!1304295) (not b!1304279) (not b!1304274) (not b_next!31959) (not b_next!31963) (not b!1304293) (not b!1304275) b_and!87113)
(check-sat (not b_next!31955) b_and!87105 (not b_next!31957) b_and!87109 (not b_next!31961) b_and!87107 (not b_next!31959) (not b_next!31963) b_and!87113 b_and!87111 b_and!87103 (not b_next!31965))
(get-model)

(declare-fun b!1304380 () Bool)

(declare-fun e!836527 () Bool)

(declare-fun e!836526 () Bool)

(assert (=> b!1304380 (= e!836527 e!836526)))

(declare-fun res!584795 () Bool)

(declare-fun lt!429055 () tuple2!12746)

(declare-fun size!10722 (List!13222) Int)

(assert (=> b!1304380 (= res!584795 (< (size!10722 (_2!7259 lt!429055)) (size!10722 (list!4927 lt!429019))))))

(assert (=> b!1304380 (=> (not res!584795) (not e!836526))))

(declare-fun b!1304381 () Bool)

(declare-fun e!836528 () tuple2!12746)

(assert (=> b!1304381 (= e!836528 (tuple2!12747 Nil!13159 (list!4927 lt!429019)))))

(declare-fun b!1304382 () Bool)

(assert (=> b!1304382 (= e!836527 (= (_2!7259 lt!429055) (list!4927 lt!429019)))))

(declare-fun b!1304383 () Bool)

(declare-fun isEmpty!7785 (List!13225) Bool)

(assert (=> b!1304383 (= e!836526 (not (isEmpty!7785 (_1!7259 lt!429055))))))

(declare-fun b!1304384 () Bool)

(declare-datatypes ((tuple2!12748 0))(
  ( (tuple2!12749 (_1!7260 Token!4212) (_2!7260 List!13222)) )
))
(declare-datatypes ((Option!2539 0))(
  ( (None!2538) (Some!2538 (v!21037 tuple2!12748)) )
))
(declare-fun lt!429053 () Option!2539)

(declare-fun lt!429054 () tuple2!12746)

(assert (=> b!1304384 (= e!836528 (tuple2!12747 (Cons!13159 (_1!7260 (v!21037 lt!429053)) (_1!7259 lt!429054)) (_2!7259 lt!429054)))))

(assert (=> b!1304384 (= lt!429054 (lexList!508 thiss!19762 rules!2550 (_2!7260 (v!21037 lt!429053))))))

(declare-fun d!367566 () Bool)

(assert (=> d!367566 e!836527))

(declare-fun c!214312 () Bool)

(declare-fun size!10723 (List!13225) Int)

(assert (=> d!367566 (= c!214312 (> (size!10723 (_1!7259 lt!429055)) 0))))

(assert (=> d!367566 (= lt!429055 e!836528)))

(declare-fun c!214311 () Bool)

(assert (=> d!367566 (= c!214311 ((_ is Some!2538) lt!429053))))

(declare-fun maxPrefix!981 (LexerInterface!1970 List!13224 List!13222) Option!2539)

(assert (=> d!367566 (= lt!429053 (maxPrefix!981 thiss!19762 rules!2550 (list!4927 lt!429019)))))

(assert (=> d!367566 (= (lexList!508 thiss!19762 rules!2550 (list!4927 lt!429019)) lt!429055)))

(assert (= (and d!367566 c!214311) b!1304384))

(assert (= (and d!367566 (not c!214311)) b!1304381))

(assert (= (and d!367566 c!214312) b!1304380))

(assert (= (and d!367566 (not c!214312)) b!1304382))

(assert (= (and b!1304380 res!584795) b!1304383))

(declare-fun m!1455669 () Bool)

(assert (=> b!1304380 m!1455669))

(assert (=> b!1304380 m!1455527))

(declare-fun m!1455671 () Bool)

(assert (=> b!1304380 m!1455671))

(declare-fun m!1455673 () Bool)

(assert (=> b!1304383 m!1455673))

(declare-fun m!1455675 () Bool)

(assert (=> b!1304384 m!1455675))

(declare-fun m!1455677 () Bool)

(assert (=> d!367566 m!1455677))

(assert (=> d!367566 m!1455527))

(declare-fun m!1455679 () Bool)

(assert (=> d!367566 m!1455679))

(assert (=> b!1304293 d!367566))

(declare-fun d!367574 () Bool)

(declare-fun list!4930 (Conc!4320) List!13222)

(assert (=> d!367574 (= (list!4927 lt!429019) (list!4930 (c!214292 lt!429019)))))

(declare-fun bs!329331 () Bool)

(assert (= bs!329331 d!367574))

(declare-fun m!1455681 () Bool)

(assert (=> bs!329331 m!1455681))

(assert (=> b!1304293 d!367574))

(declare-fun d!367576 () Bool)

(assert (=> d!367576 (= (inv!17560 (tag!2537 (rule!4014 t1!34))) (= (mod (str.len (value!74469 (tag!2537 (rule!4014 t1!34)))) 2) 0))))

(assert (=> b!1304275 d!367576))

(declare-fun d!367578 () Bool)

(declare-fun res!584798 () Bool)

(declare-fun e!836531 () Bool)

(assert (=> d!367578 (=> (not res!584798) (not e!836531))))

(declare-fun semiInverseModEq!858 (Int Int) Bool)

(assert (=> d!367578 (= res!584798 (semiInverseModEq!858 (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (toValue!3490 (transformation!2275 (rule!4014 t1!34)))))))

(assert (=> d!367578 (= (inv!17563 (transformation!2275 (rule!4014 t1!34))) e!836531)))

(declare-fun b!1304387 () Bool)

(declare-fun equivClasses!817 (Int Int) Bool)

(assert (=> b!1304387 (= e!836531 (equivClasses!817 (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (toValue!3490 (transformation!2275 (rule!4014 t1!34)))))))

(assert (= (and d!367578 res!584798) b!1304387))

(declare-fun m!1455683 () Bool)

(assert (=> d!367578 m!1455683))

(declare-fun m!1455685 () Bool)

(assert (=> b!1304387 m!1455685))

(assert (=> b!1304275 d!367578))

(declare-fun d!367580 () Bool)

(assert (=> d!367580 (= (isEmpty!7780 rules!2550) ((_ is Nil!13158) rules!2550))))

(assert (=> b!1304276 d!367580))

(declare-fun d!367582 () Bool)

(assert (=> d!367582 (= (inv!17560 (tag!2537 (h!18559 rules!2550))) (= (mod (str.len (value!74469 (tag!2537 (h!18559 rules!2550)))) 2) 0))))

(assert (=> b!1304297 d!367582))

(declare-fun d!367584 () Bool)

(declare-fun res!584799 () Bool)

(declare-fun e!836532 () Bool)

(assert (=> d!367584 (=> (not res!584799) (not e!836532))))

(assert (=> d!367584 (= res!584799 (semiInverseModEq!858 (toChars!3349 (transformation!2275 (h!18559 rules!2550))) (toValue!3490 (transformation!2275 (h!18559 rules!2550)))))))

(assert (=> d!367584 (= (inv!17563 (transformation!2275 (h!18559 rules!2550))) e!836532)))

(declare-fun b!1304388 () Bool)

(assert (=> b!1304388 (= e!836532 (equivClasses!817 (toChars!3349 (transformation!2275 (h!18559 rules!2550))) (toValue!3490 (transformation!2275 (h!18559 rules!2550)))))))

(assert (= (and d!367584 res!584799) b!1304388))

(declare-fun m!1455687 () Bool)

(assert (=> d!367584 m!1455687))

(declare-fun m!1455689 () Bool)

(assert (=> b!1304388 m!1455689))

(assert (=> b!1304297 d!367584))

(declare-fun d!367586 () Bool)

(declare-fun lt!429058 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1843 (List!13222) (InoxSet C!7468))

(assert (=> d!367586 (= lt!429058 (select (content!1843 lt!429008) lt!429009))))

(declare-fun e!836538 () Bool)

(assert (=> d!367586 (= lt!429058 e!836538)))

(declare-fun res!584804 () Bool)

(assert (=> d!367586 (=> (not res!584804) (not e!836538))))

(assert (=> d!367586 (= res!584804 ((_ is Cons!13156) lt!429008))))

(assert (=> d!367586 (= (contains!2234 lt!429008 lt!429009) lt!429058)))

(declare-fun b!1304393 () Bool)

(declare-fun e!836537 () Bool)

(assert (=> b!1304393 (= e!836538 e!836537)))

(declare-fun res!584805 () Bool)

(assert (=> b!1304393 (=> res!584805 e!836537)))

(assert (=> b!1304393 (= res!584805 (= (h!18557 lt!429008) lt!429009))))

(declare-fun b!1304394 () Bool)

(assert (=> b!1304394 (= e!836537 (contains!2234 (t!117783 lt!429008) lt!429009))))

(assert (= (and d!367586 res!584804) b!1304393))

(assert (= (and b!1304393 (not res!584805)) b!1304394))

(declare-fun m!1455691 () Bool)

(assert (=> d!367586 m!1455691))

(declare-fun m!1455693 () Bool)

(assert (=> d!367586 m!1455693))

(declare-fun m!1455695 () Bool)

(assert (=> b!1304394 m!1455695))

(assert (=> b!1304274 d!367586))

(declare-fun b!1304421 () Bool)

(declare-fun e!836554 () Bool)

(declare-fun e!836556 () Bool)

(assert (=> b!1304421 (= e!836554 e!836556)))

(declare-fun c!214321 () Bool)

(assert (=> b!1304421 (= c!214321 ((_ is IntegerValue!7096) (value!74470 t2!34)))))

(declare-fun b!1304422 () Bool)

(declare-fun res!584817 () Bool)

(declare-fun e!836555 () Bool)

(assert (=> b!1304422 (=> res!584817 e!836555)))

(assert (=> b!1304422 (= res!584817 (not ((_ is IntegerValue!7097) (value!74470 t2!34))))))

(assert (=> b!1304422 (= e!836556 e!836555)))

(declare-fun b!1304423 () Bool)

(declare-fun inv!15 (TokenValue!2365) Bool)

(assert (=> b!1304423 (= e!836555 (inv!15 (value!74470 t2!34)))))

(declare-fun b!1304424 () Bool)

(declare-fun inv!16 (TokenValue!2365) Bool)

(assert (=> b!1304424 (= e!836554 (inv!16 (value!74470 t2!34)))))

(declare-fun b!1304420 () Bool)

(declare-fun inv!17 (TokenValue!2365) Bool)

(assert (=> b!1304420 (= e!836556 (inv!17 (value!74470 t2!34)))))

(declare-fun d!367588 () Bool)

(declare-fun c!214320 () Bool)

(assert (=> d!367588 (= c!214320 ((_ is IntegerValue!7095) (value!74470 t2!34)))))

(assert (=> d!367588 (= (inv!21 (value!74470 t2!34)) e!836554)))

(assert (= (and d!367588 c!214320) b!1304424))

(assert (= (and d!367588 (not c!214320)) b!1304421))

(assert (= (and b!1304421 c!214321) b!1304420))

(assert (= (and b!1304421 (not c!214321)) b!1304422))

(assert (= (and b!1304422 (not res!584817)) b!1304423))

(declare-fun m!1455711 () Bool)

(assert (=> b!1304423 m!1455711))

(declare-fun m!1455713 () Bool)

(assert (=> b!1304424 m!1455713))

(declare-fun m!1455715 () Bool)

(assert (=> b!1304420 m!1455715))

(assert (=> b!1304296 d!367588))

(declare-fun d!367592 () Bool)

(declare-fun lt!429062 () Bool)

(assert (=> d!367592 (= lt!429062 (select (content!1843 lt!429008) lt!429010))))

(declare-fun e!836558 () Bool)

(assert (=> d!367592 (= lt!429062 e!836558)))

(declare-fun res!584818 () Bool)

(assert (=> d!367592 (=> (not res!584818) (not e!836558))))

(assert (=> d!367592 (= res!584818 ((_ is Cons!13156) lt!429008))))

(assert (=> d!367592 (= (contains!2234 lt!429008 lt!429010) lt!429062)))

(declare-fun b!1304425 () Bool)

(declare-fun e!836557 () Bool)

(assert (=> b!1304425 (= e!836558 e!836557)))

(declare-fun res!584819 () Bool)

(assert (=> b!1304425 (=> res!584819 e!836557)))

(assert (=> b!1304425 (= res!584819 (= (h!18557 lt!429008) lt!429010))))

(declare-fun b!1304426 () Bool)

(assert (=> b!1304426 (= e!836557 (contains!2234 (t!117783 lt!429008) lt!429010))))

(assert (= (and d!367592 res!584818) b!1304425))

(assert (= (and b!1304425 (not res!584819)) b!1304426))

(assert (=> d!367592 m!1455691))

(declare-fun m!1455717 () Bool)

(assert (=> d!367592 m!1455717))

(declare-fun m!1455719 () Bool)

(assert (=> b!1304426 m!1455719))

(assert (=> b!1304278 d!367592))

(declare-fun d!367594 () Bool)

(declare-fun e!836573 () Bool)

(assert (=> d!367594 e!836573))

(declare-fun res!584831 () Bool)

(assert (=> d!367594 (=> (not res!584831) (not e!836573))))

(declare-fun lt!429068 () List!13222)

(assert (=> d!367594 (= res!584831 (= (content!1843 lt!429068) ((_ map or) (content!1843 lt!429015) (content!1843 (getSuffix!445 lt!429008 lt!429015)))))))

(declare-fun e!836572 () List!13222)

(assert (=> d!367594 (= lt!429068 e!836572)))

(declare-fun c!214326 () Bool)

(assert (=> d!367594 (= c!214326 ((_ is Nil!13156) lt!429015))))

(assert (=> d!367594 (= (++!3346 lt!429015 (getSuffix!445 lt!429008 lt!429015)) lt!429068)))

(declare-fun b!1304446 () Bool)

(assert (=> b!1304446 (= e!836572 (getSuffix!445 lt!429008 lt!429015))))

(declare-fun b!1304449 () Bool)

(assert (=> b!1304449 (= e!836573 (or (not (= (getSuffix!445 lt!429008 lt!429015) Nil!13156)) (= lt!429068 lt!429015)))))

(declare-fun b!1304447 () Bool)

(assert (=> b!1304447 (= e!836572 (Cons!13156 (h!18557 lt!429015) (++!3346 (t!117783 lt!429015) (getSuffix!445 lt!429008 lt!429015))))))

(declare-fun b!1304448 () Bool)

(declare-fun res!584832 () Bool)

(assert (=> b!1304448 (=> (not res!584832) (not e!836573))))

(assert (=> b!1304448 (= res!584832 (= (size!10722 lt!429068) (+ (size!10722 lt!429015) (size!10722 (getSuffix!445 lt!429008 lt!429015)))))))

(assert (= (and d!367594 c!214326) b!1304446))

(assert (= (and d!367594 (not c!214326)) b!1304447))

(assert (= (and d!367594 res!584831) b!1304448))

(assert (= (and b!1304448 res!584832) b!1304449))

(declare-fun m!1455735 () Bool)

(assert (=> d!367594 m!1455735))

(declare-fun m!1455737 () Bool)

(assert (=> d!367594 m!1455737))

(assert (=> d!367594 m!1455533))

(declare-fun m!1455739 () Bool)

(assert (=> d!367594 m!1455739))

(assert (=> b!1304447 m!1455533))

(declare-fun m!1455741 () Bool)

(assert (=> b!1304447 m!1455741))

(declare-fun m!1455743 () Bool)

(assert (=> b!1304448 m!1455743))

(declare-fun m!1455745 () Bool)

(assert (=> b!1304448 m!1455745))

(assert (=> b!1304448 m!1455533))

(declare-fun m!1455751 () Bool)

(assert (=> b!1304448 m!1455751))

(assert (=> b!1304299 d!367594))

(declare-fun d!367606 () Bool)

(declare-fun lt!429075 () List!13222)

(assert (=> d!367606 (= (++!3346 lt!429015 lt!429075) lt!429008)))

(declare-fun e!836579 () List!13222)

(assert (=> d!367606 (= lt!429075 e!836579)))

(declare-fun c!214331 () Bool)

(assert (=> d!367606 (= c!214331 ((_ is Cons!13156) lt!429015))))

(assert (=> d!367606 (>= (size!10722 lt!429008) (size!10722 lt!429015))))

(assert (=> d!367606 (= (getSuffix!445 lt!429008 lt!429015) lt!429075)))

(declare-fun b!1304460 () Bool)

(declare-fun tail!1866 (List!13222) List!13222)

(assert (=> b!1304460 (= e!836579 (getSuffix!445 (tail!1866 lt!429008) (t!117783 lt!429015)))))

(declare-fun b!1304461 () Bool)

(assert (=> b!1304461 (= e!836579 lt!429008)))

(assert (= (and d!367606 c!214331) b!1304460))

(assert (= (and d!367606 (not c!214331)) b!1304461))

(declare-fun m!1455779 () Bool)

(assert (=> d!367606 m!1455779))

(declare-fun m!1455781 () Bool)

(assert (=> d!367606 m!1455781))

(assert (=> d!367606 m!1455745))

(declare-fun m!1455783 () Bool)

(assert (=> b!1304460 m!1455783))

(assert (=> b!1304460 m!1455783))

(declare-fun m!1455785 () Bool)

(assert (=> b!1304460 m!1455785))

(assert (=> b!1304299 d!367606))

(declare-fun d!367616 () Bool)

(declare-fun lt!429080 () List!13222)

(declare-fun dynLambda!5718 (Int List!13222) Bool)

(assert (=> d!367616 (dynLambda!5718 lambda!52006 lt!429080)))

(declare-fun choose!7985 (Int) List!13222)

(assert (=> d!367616 (= lt!429080 (choose!7985 lambda!52006))))

(assert (=> d!367616 (Exists!747 lambda!52006)))

(assert (=> d!367616 (= (pickWitness!52 lambda!52006) lt!429080)))

(declare-fun b_lambda!37323 () Bool)

(assert (=> (not b_lambda!37323) (not d!367616)))

(declare-fun bs!329333 () Bool)

(assert (= bs!329333 d!367616))

(declare-fun m!1455789 () Bool)

(assert (=> bs!329333 m!1455789))

(declare-fun m!1455795 () Bool)

(assert (=> bs!329333 m!1455795))

(assert (=> bs!329333 m!1455521))

(assert (=> b!1304299 d!367616))

(declare-fun b!1304466 () Bool)

(declare-fun e!836583 () Bool)

(declare-fun e!836585 () Bool)

(assert (=> b!1304466 (= e!836583 e!836585)))

(declare-fun c!214333 () Bool)

(assert (=> b!1304466 (= c!214333 ((_ is IntegerValue!7096) (value!74470 t1!34)))))

(declare-fun b!1304467 () Bool)

(declare-fun res!584838 () Bool)

(declare-fun e!836584 () Bool)

(assert (=> b!1304467 (=> res!584838 e!836584)))

(assert (=> b!1304467 (= res!584838 (not ((_ is IntegerValue!7097) (value!74470 t1!34))))))

(assert (=> b!1304467 (= e!836585 e!836584)))

(declare-fun b!1304468 () Bool)

(assert (=> b!1304468 (= e!836584 (inv!15 (value!74470 t1!34)))))

(declare-fun b!1304469 () Bool)

(assert (=> b!1304469 (= e!836583 (inv!16 (value!74470 t1!34)))))

(declare-fun b!1304465 () Bool)

(assert (=> b!1304465 (= e!836585 (inv!17 (value!74470 t1!34)))))

(declare-fun d!367620 () Bool)

(declare-fun c!214332 () Bool)

(assert (=> d!367620 (= c!214332 ((_ is IntegerValue!7095) (value!74470 t1!34)))))

(assert (=> d!367620 (= (inv!21 (value!74470 t1!34)) e!836583)))

(assert (= (and d!367620 c!214332) b!1304469))

(assert (= (and d!367620 (not c!214332)) b!1304466))

(assert (= (and b!1304466 c!214333) b!1304465))

(assert (= (and b!1304466 (not c!214333)) b!1304467))

(assert (= (and b!1304467 (not res!584838)) b!1304468))

(declare-fun m!1455797 () Bool)

(assert (=> b!1304468 m!1455797))

(declare-fun m!1455799 () Bool)

(assert (=> b!1304469 m!1455799))

(declare-fun m!1455801 () Bool)

(assert (=> b!1304465 m!1455801))

(assert (=> b!1304300 d!367620))

(declare-fun d!367622 () Bool)

(declare-fun lt!429103 () Bool)

(declare-fun e!836607 () Bool)

(assert (=> d!367622 (= lt!429103 e!836607)))

(declare-fun res!584862 () Bool)

(assert (=> d!367622 (=> (not res!584862) (not e!836607))))

(assert (=> d!367622 (= res!584862 (= (list!4926 (_1!7258 (lex!805 thiss!19762 rules!2550 (print!744 thiss!19762 (singletonSeq!844 t2!34))))) (list!4926 (singletonSeq!844 t2!34))))))

(declare-fun e!836608 () Bool)

(assert (=> d!367622 (= lt!429103 e!836608)))

(declare-fun res!584864 () Bool)

(assert (=> d!367622 (=> (not res!584864) (not e!836608))))

(declare-fun lt!429104 () tuple2!12744)

(declare-fun size!10725 (BalanceConc!8582) Int)

(assert (=> d!367622 (= res!584864 (= (size!10725 (_1!7258 lt!429104)) 1))))

(assert (=> d!367622 (= lt!429104 (lex!805 thiss!19762 rules!2550 (print!744 thiss!19762 (singletonSeq!844 t2!34))))))

(assert (=> d!367622 (not (isEmpty!7780 rules!2550))))

(assert (=> d!367622 (= (rulesProduceIndividualToken!939 thiss!19762 rules!2550 t2!34) lt!429103)))

(declare-fun b!1304501 () Bool)

(declare-fun res!584863 () Bool)

(assert (=> b!1304501 (=> (not res!584863) (not e!836608))))

(declare-fun apply!2945 (BalanceConc!8582 Int) Token!4212)

(assert (=> b!1304501 (= res!584863 (= (apply!2945 (_1!7258 lt!429104) 0) t2!34))))

(declare-fun b!1304502 () Bool)

(assert (=> b!1304502 (= e!836608 (isEmpty!7781 (_2!7258 lt!429104)))))

(declare-fun b!1304503 () Bool)

(assert (=> b!1304503 (= e!836607 (isEmpty!7781 (_2!7258 (lex!805 thiss!19762 rules!2550 (print!744 thiss!19762 (singletonSeq!844 t2!34))))))))

(assert (= (and d!367622 res!584864) b!1304501))

(assert (= (and b!1304501 res!584863) b!1304502))

(assert (= (and d!367622 res!584862) b!1304503))

(declare-fun m!1455861 () Bool)

(assert (=> d!367622 m!1455861))

(assert (=> d!367622 m!1455551))

(declare-fun m!1455863 () Bool)

(assert (=> d!367622 m!1455863))

(declare-fun m!1455865 () Bool)

(assert (=> d!367622 m!1455865))

(declare-fun m!1455867 () Bool)

(assert (=> d!367622 m!1455867))

(assert (=> d!367622 m!1455863))

(assert (=> d!367622 m!1455863))

(declare-fun m!1455869 () Bool)

(assert (=> d!367622 m!1455869))

(assert (=> d!367622 m!1455865))

(declare-fun m!1455871 () Bool)

(assert (=> d!367622 m!1455871))

(declare-fun m!1455873 () Bool)

(assert (=> b!1304501 m!1455873))

(declare-fun m!1455875 () Bool)

(assert (=> b!1304502 m!1455875))

(assert (=> b!1304503 m!1455863))

(assert (=> b!1304503 m!1455863))

(assert (=> b!1304503 m!1455865))

(assert (=> b!1304503 m!1455865))

(assert (=> b!1304503 m!1455871))

(declare-fun m!1455877 () Bool)

(assert (=> b!1304503 m!1455877))

(assert (=> b!1304298 d!367622))

(declare-fun d!367644 () Bool)

(declare-fun res!584872 () Bool)

(declare-fun e!836622 () Bool)

(assert (=> d!367644 (=> (not res!584872) (not e!836622))))

(declare-fun rulesValid!827 (LexerInterface!1970 List!13224) Bool)

(assert (=> d!367644 (= res!584872 (rulesValid!827 thiss!19762 rules!2550))))

(assert (=> d!367644 (= (rulesInvariant!1840 thiss!19762 rules!2550) e!836622)))

(declare-fun b!1304523 () Bool)

(declare-datatypes ((List!13228 0))(
  ( (Nil!13162) (Cons!13162 (h!18563 String!16061) (t!117825 List!13228)) )
))
(declare-fun noDuplicateTag!827 (LexerInterface!1970 List!13224 List!13228) Bool)

(assert (=> b!1304523 (= e!836622 (noDuplicateTag!827 thiss!19762 rules!2550 Nil!13162))))

(assert (= (and d!367644 res!584872) b!1304523))

(declare-fun m!1455889 () Bool)

(assert (=> d!367644 m!1455889))

(declare-fun m!1455891 () Bool)

(assert (=> b!1304523 m!1455891))

(assert (=> b!1304277 d!367644))

(declare-fun d!367650 () Bool)

(declare-fun prefixMatchZipperSequence!161 (Regex!3589 BalanceConc!8580) Bool)

(declare-fun ++!3347 (BalanceConc!8580 BalanceConc!8580) BalanceConc!8580)

(declare-fun singletonSeq!845 (C!7468) BalanceConc!8580)

(assert (=> d!367650 (= (separableTokensPredicate!253 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!161 (rulesRegex!160 thiss!19762 rules!2550) (++!3347 (charsOf!1247 t1!34) (singletonSeq!845 (apply!2941 (charsOf!1247 t2!34) 0))))))))

(declare-fun bs!329354 () Bool)

(assert (= bs!329354 d!367650))

(declare-fun m!1455921 () Bool)

(assert (=> bs!329354 m!1455921))

(declare-fun m!1455923 () Bool)

(assert (=> bs!329354 m!1455923))

(assert (=> bs!329354 m!1455507))

(assert (=> bs!329354 m!1455921))

(assert (=> bs!329354 m!1455493))

(assert (=> bs!329354 m!1455923))

(declare-fun m!1455925 () Bool)

(assert (=> bs!329354 m!1455925))

(assert (=> bs!329354 m!1455507))

(assert (=> bs!329354 m!1455493))

(assert (=> bs!329354 m!1455487))

(assert (=> bs!329354 m!1455925))

(declare-fun m!1455927 () Bool)

(assert (=> bs!329354 m!1455927))

(assert (=> bs!329354 m!1455487))

(assert (=> b!1304302 d!367650))

(declare-fun bs!329355 () Bool)

(declare-fun d!367668 () Bool)

(assert (= bs!329355 (and d!367668 b!1304281)))

(declare-fun lambda!52034 () Int)

(assert (=> bs!329355 (not (= lambda!52034 lambda!52008))))

(assert (=> d!367668 true))

(declare-fun order!7933 () Int)

(declare-fun dynLambda!5721 (Int Int) Int)

(assert (=> d!367668 (< (dynLambda!5721 order!7933 lambda!52008) (dynLambda!5721 order!7933 lambda!52034))))

(declare-fun forall!3273 (List!13226 Int) Bool)

(assert (=> d!367668 (= (exists!252 lt!429017 lambda!52008) (not (forall!3273 lt!429017 lambda!52034)))))

(declare-fun bs!329356 () Bool)

(assert (= bs!329356 d!367668))

(declare-fun m!1455929 () Bool)

(assert (=> bs!329356 m!1455929))

(assert (=> b!1304281 d!367668))

(declare-fun bs!329357 () Bool)

(declare-fun d!367670 () Bool)

(assert (= bs!329357 (and d!367670 b!1304281)))

(declare-fun lambda!52035 () Int)

(assert (=> bs!329357 (not (= lambda!52035 lambda!52008))))

(declare-fun bs!329358 () Bool)

(assert (= bs!329358 (and d!367670 d!367668)))

(assert (=> bs!329358 (= lambda!52035 lambda!52034)))

(assert (=> d!367670 true))

(assert (=> d!367670 (< (dynLambda!5721 order!7933 lambda!52008) (dynLambda!5721 order!7933 lambda!52035))))

(assert (=> d!367670 (= (exists!252 (map!2879 rules!2550 lambda!52007) lambda!52008) (not (forall!3273 (map!2879 rules!2550 lambda!52007) lambda!52035)))))

(declare-fun bs!329359 () Bool)

(assert (= bs!329359 d!367670))

(assert (=> bs!329359 m!1455497))

(declare-fun m!1455931 () Bool)

(assert (=> bs!329359 m!1455931))

(assert (=> b!1304281 d!367670))

(declare-fun d!367672 () Bool)

(declare-fun lt!429120 () List!13226)

(declare-fun size!10726 (List!13226) Int)

(declare-fun size!10727 (List!13224) Int)

(assert (=> d!367672 (= (size!10726 lt!429120) (size!10727 rules!2550))))

(declare-fun e!836649 () List!13226)

(assert (=> d!367672 (= lt!429120 e!836649)))

(declare-fun c!214353 () Bool)

(assert (=> d!367672 (= c!214353 ((_ is Nil!13158) rules!2550))))

(assert (=> d!367672 (= (map!2879 rules!2550 lambda!52007) lt!429120)))

(declare-fun b!1304578 () Bool)

(assert (=> b!1304578 (= e!836649 Nil!13160)))

(declare-fun b!1304579 () Bool)

(declare-fun $colon$colon!141 (List!13226 Regex!3589) List!13226)

(declare-fun dynLambda!5722 (Int Rule!4350) Regex!3589)

(assert (=> b!1304579 (= e!836649 ($colon$colon!141 (map!2879 (t!117785 rules!2550) lambda!52007) (dynLambda!5722 lambda!52007 (h!18559 rules!2550))))))

(assert (= (and d!367672 c!214353) b!1304578))

(assert (= (and d!367672 (not c!214353)) b!1304579))

(declare-fun b_lambda!37329 () Bool)

(assert (=> (not b_lambda!37329) (not b!1304579)))

(declare-fun m!1455933 () Bool)

(assert (=> d!367672 m!1455933))

(declare-fun m!1455935 () Bool)

(assert (=> d!367672 m!1455935))

(declare-fun m!1455937 () Bool)

(assert (=> b!1304579 m!1455937))

(declare-fun m!1455939 () Bool)

(assert (=> b!1304579 m!1455939))

(assert (=> b!1304579 m!1455937))

(assert (=> b!1304579 m!1455939))

(declare-fun m!1455941 () Bool)

(assert (=> b!1304579 m!1455941))

(assert (=> b!1304281 d!367672))

(declare-fun bs!329360 () Bool)

(declare-fun d!367674 () Bool)

(assert (= bs!329360 (and d!367674 b!1304281)))

(declare-fun lambda!52040 () Int)

(assert (=> bs!329360 (not (= lambda!52040 lambda!52008))))

(declare-fun bs!329361 () Bool)

(assert (= bs!329361 (and d!367674 d!367668)))

(assert (=> bs!329361 (not (= lambda!52040 lambda!52034))))

(declare-fun bs!329363 () Bool)

(assert (= bs!329363 (and d!367674 d!367670)))

(assert (=> bs!329363 (not (= lambda!52040 lambda!52035))))

(declare-fun lambda!52041 () Int)

(assert (=> bs!329360 (= lambda!52041 lambda!52008)))

(assert (=> bs!329361 (not (= lambda!52041 lambda!52034))))

(assert (=> bs!329363 (not (= lambda!52041 lambda!52035))))

(declare-fun bs!329364 () Bool)

(assert (= bs!329364 d!367674))

(assert (=> bs!329364 (not (= lambda!52041 lambda!52040))))

(assert (=> d!367674 true))

(assert (=> d!367674 (= (matchR!1591 lt!429022 lt!429008) (exists!252 lt!429017 lambda!52041))))

(declare-fun lt!429124 () Unit!19246)

(declare-fun choose!7987 (Regex!3589 List!13226 List!13222) Unit!19246)

(assert (=> d!367674 (= lt!429124 (choose!7987 lt!429022 lt!429017 lt!429008))))

(assert (=> d!367674 (forall!3273 lt!429017 lambda!52040)))

(assert (=> d!367674 (= (matchRGenUnionSpec!26 lt!429022 lt!429017 lt!429008) lt!429124)))

(assert (=> bs!329364 m!1455565))

(declare-fun m!1455963 () Bool)

(assert (=> bs!329364 m!1455963))

(declare-fun m!1455965 () Bool)

(assert (=> bs!329364 m!1455965))

(declare-fun m!1455967 () Bool)

(assert (=> bs!329364 m!1455967))

(assert (=> b!1304281 d!367674))

(declare-fun d!367682 () Bool)

(assert (=> d!367682 (= (inv!17560 (tag!2537 (rule!4014 t2!34))) (= (mod (str.len (value!74469 (tag!2537 (rule!4014 t2!34)))) 2) 0))))

(assert (=> b!1304279 d!367682))

(declare-fun d!367684 () Bool)

(declare-fun res!584913 () Bool)

(declare-fun e!836665 () Bool)

(assert (=> d!367684 (=> (not res!584913) (not e!836665))))

(assert (=> d!367684 (= res!584913 (semiInverseModEq!858 (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (toValue!3490 (transformation!2275 (rule!4014 t2!34)))))))

(assert (=> d!367684 (= (inv!17563 (transformation!2275 (rule!4014 t2!34))) e!836665)))

(declare-fun b!1304602 () Bool)

(assert (=> b!1304602 (= e!836665 (equivClasses!817 (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (toValue!3490 (transformation!2275 (rule!4014 t2!34)))))))

(assert (= (and d!367684 res!584913) b!1304602))

(declare-fun m!1455969 () Bool)

(assert (=> d!367684 m!1455969))

(declare-fun m!1455971 () Bool)

(assert (=> b!1304602 m!1455971))

(assert (=> b!1304279 d!367684))

(declare-fun d!367686 () Bool)

(declare-fun lt!429129 () Bool)

(declare-fun isEmpty!7786 (List!13222) Bool)

(assert (=> d!367686 (= lt!429129 (isEmpty!7786 (list!4927 (_2!7258 lt!429007))))))

(declare-fun isEmpty!7787 (Conc!4320) Bool)

(assert (=> d!367686 (= lt!429129 (isEmpty!7787 (c!214292 (_2!7258 lt!429007))))))

(assert (=> d!367686 (= (isEmpty!7781 (_2!7258 lt!429007)) lt!429129)))

(declare-fun bs!329365 () Bool)

(assert (= bs!329365 d!367686))

(declare-fun m!1455973 () Bool)

(assert (=> bs!329365 m!1455973))

(assert (=> bs!329365 m!1455973))

(declare-fun m!1455975 () Bool)

(assert (=> bs!329365 m!1455975))

(declare-fun m!1455977 () Bool)

(assert (=> bs!329365 m!1455977))

(assert (=> b!1304280 d!367686))

(declare-fun bs!329368 () Bool)

(declare-fun d!367688 () Bool)

(assert (= bs!329368 (and d!367688 b!1304301)))

(declare-fun lambda!52047 () Int)

(assert (=> bs!329368 (not (= lambda!52047 lambda!52009))))

(assert (=> d!367688 true))

(declare-fun order!7935 () Int)

(declare-fun dynLambda!5723 (Int Int) Int)

(assert (=> d!367688 (< (dynLambda!5723 order!7935 lambda!52009) (dynLambda!5723 order!7935 lambda!52047))))

(declare-fun forall!3274 (List!13224 Int) Bool)

(assert (=> d!367688 (= (exists!253 rules!2550 lambda!52009) (not (forall!3274 rules!2550 lambda!52047)))))

(declare-fun bs!329369 () Bool)

(assert (= bs!329369 d!367688))

(declare-fun m!1455983 () Bool)

(assert (=> bs!329369 m!1455983))

(assert (=> b!1304301 d!367688))

(declare-fun bs!329370 () Bool)

(declare-fun d!367692 () Bool)

(assert (= bs!329370 (and d!367692 b!1304301)))

(declare-fun lambda!52050 () Int)

(assert (=> bs!329370 (not (= lambda!52050 lambda!52009))))

(declare-fun bs!329371 () Bool)

(assert (= bs!329371 (and d!367692 d!367688)))

(assert (=> bs!329371 (not (= lambda!52050 lambda!52047))))

(assert (=> d!367692 true))

(assert (=> d!367692 true))

(declare-fun order!7937 () Int)

(declare-fun dynLambda!5724 (Int Int) Int)

(assert (=> d!367692 (< (dynLambda!5724 order!7937 lambda!52007) (dynLambda!5723 order!7935 lambda!52050))))

(assert (=> d!367692 (exists!253 rules!2550 lambda!52050)))

(declare-fun lt!429138 () Unit!19246)

(declare-fun choose!7990 (List!13224 Int Regex!3589) Unit!19246)

(assert (=> d!367692 (= lt!429138 (choose!7990 rules!2550 lambda!52007 lt!429016))))

(assert (=> d!367692 (contains!2235 (map!2879 rules!2550 lambda!52007) lt!429016)))

(assert (=> d!367692 (= (lemmaMapContains!18 rules!2550 lambda!52007 lt!429016) lt!429138)))

(declare-fun bs!329372 () Bool)

(assert (= bs!329372 d!367692))

(declare-fun m!1456003 () Bool)

(assert (=> bs!329372 m!1456003))

(declare-fun m!1456005 () Bool)

(assert (=> bs!329372 m!1456005))

(assert (=> bs!329372 m!1455497))

(assert (=> bs!329372 m!1455497))

(assert (=> bs!329372 m!1455509))

(assert (=> b!1304301 d!367692))

(declare-fun d!367698 () Bool)

(declare-fun lt!429139 () Bool)

(assert (=> d!367698 (= lt!429139 (select (content!1843 lt!429015) lt!429009))))

(declare-fun e!836677 () Bool)

(assert (=> d!367698 (= lt!429139 e!836677)))

(declare-fun res!584925 () Bool)

(assert (=> d!367698 (=> (not res!584925) (not e!836677))))

(assert (=> d!367698 (= res!584925 ((_ is Cons!13156) lt!429015))))

(assert (=> d!367698 (= (contains!2234 lt!429015 lt!429009) lt!429139)))

(declare-fun b!1304620 () Bool)

(declare-fun e!836676 () Bool)

(assert (=> b!1304620 (= e!836677 e!836676)))

(declare-fun res!584926 () Bool)

(assert (=> b!1304620 (=> res!584926 e!836676)))

(assert (=> b!1304620 (= res!584926 (= (h!18557 lt!429015) lt!429009))))

(declare-fun b!1304621 () Bool)

(assert (=> b!1304621 (= e!836676 (contains!2234 (t!117783 lt!429015) lt!429009))))

(assert (= (and d!367698 res!584925) b!1304620))

(assert (= (and b!1304620 (not res!584926)) b!1304621))

(assert (=> d!367698 m!1455737))

(declare-fun m!1456007 () Bool)

(assert (=> d!367698 m!1456007))

(declare-fun m!1456009 () Bool)

(assert (=> b!1304621 m!1456009))

(assert (=> b!1304283 d!367698))

(declare-fun d!367700 () Bool)

(declare-fun lt!429146 () C!7468)

(declare-fun apply!2946 (List!13222 Int) C!7468)

(assert (=> d!367700 (= lt!429146 (apply!2946 (list!4927 lt!429020) 0))))

(declare-fun apply!2947 (Conc!4320 Int) C!7468)

(assert (=> d!367700 (= lt!429146 (apply!2947 (c!214292 lt!429020) 0))))

(declare-fun e!836688 () Bool)

(assert (=> d!367700 e!836688))

(declare-fun res!584933 () Bool)

(assert (=> d!367700 (=> (not res!584933) (not e!836688))))

(assert (=> d!367700 (= res!584933 (<= 0 0))))

(assert (=> d!367700 (= (apply!2941 lt!429020 0) lt!429146)))

(declare-fun b!1304636 () Bool)

(assert (=> b!1304636 (= e!836688 (< 0 (size!10717 lt!429020)))))

(assert (= (and d!367700 res!584933) b!1304636))

(assert (=> d!367700 m!1455485))

(assert (=> d!367700 m!1455485))

(declare-fun m!1456011 () Bool)

(assert (=> d!367700 m!1456011))

(declare-fun m!1456013 () Bool)

(assert (=> d!367700 m!1456013))

(declare-fun m!1456015 () Bool)

(assert (=> b!1304636 m!1456015))

(assert (=> b!1304283 d!367700))

(declare-fun d!367702 () Bool)

(declare-fun lt!429151 () Int)

(assert (=> d!367702 (= lt!429151 (size!10722 (list!4927 lt!429012)))))

(declare-fun size!10728 (Conc!4320) Int)

(assert (=> d!367702 (= lt!429151 (size!10728 (c!214292 lt!429012)))))

(assert (=> d!367702 (= (size!10717 lt!429012) lt!429151)))

(declare-fun bs!329373 () Bool)

(assert (= bs!329373 d!367702))

(declare-fun m!1456027 () Bool)

(assert (=> bs!329373 m!1456027))

(assert (=> bs!329373 m!1456027))

(declare-fun m!1456029 () Bool)

(assert (=> bs!329373 m!1456029))

(declare-fun m!1456031 () Bool)

(assert (=> bs!329373 m!1456031))

(assert (=> b!1304284 d!367702))

(declare-fun d!367706 () Bool)

(declare-fun lt!429154 () BalanceConc!8580)

(assert (=> d!367706 (= (list!4927 lt!429154) (originalCharacters!3137 t2!34))))

(declare-fun dynLambda!5725 (Int TokenValue!2365) BalanceConc!8580)

(assert (=> d!367706 (= lt!429154 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (value!74470 t2!34)))))

(assert (=> d!367706 (= (charsOf!1247 t2!34) lt!429154)))

(declare-fun b_lambda!37335 () Bool)

(assert (=> (not b_lambda!37335) (not d!367706)))

(declare-fun t!117804 () Bool)

(declare-fun tb!69629 () Bool)

(assert (=> (and b!1304304 (= (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (toChars!3349 (transformation!2275 (rule!4014 t2!34)))) t!117804) tb!69629))

(declare-fun b!1304647 () Bool)

(declare-fun e!836695 () Bool)

(declare-fun tp!380729 () Bool)

(declare-fun inv!17567 (Conc!4320) Bool)

(assert (=> b!1304647 (= e!836695 (and (inv!17567 (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (value!74470 t2!34)))) tp!380729))))

(declare-fun result!84456 () Bool)

(declare-fun inv!17568 (BalanceConc!8580) Bool)

(assert (=> tb!69629 (= result!84456 (and (inv!17568 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (value!74470 t2!34))) e!836695))))

(assert (= tb!69629 b!1304647))

(declare-fun m!1456033 () Bool)

(assert (=> b!1304647 m!1456033))

(declare-fun m!1456035 () Bool)

(assert (=> tb!69629 m!1456035))

(assert (=> d!367706 t!117804))

(declare-fun b_and!87139 () Bool)

(assert (= b_and!87105 (and (=> t!117804 result!84456) b_and!87139)))

(declare-fun tb!69631 () Bool)

(declare-fun t!117806 () Bool)

(assert (=> (and b!1304288 (= (toChars!3349 (transformation!2275 (h!18559 rules!2550))) (toChars!3349 (transformation!2275 (rule!4014 t2!34)))) t!117806) tb!69631))

(declare-fun result!84460 () Bool)

(assert (= result!84460 result!84456))

(assert (=> d!367706 t!117806))

(declare-fun b_and!87141 () Bool)

(assert (= b_and!87109 (and (=> t!117806 result!84460) b_and!87141)))

(declare-fun t!117808 () Bool)

(declare-fun tb!69633 () Bool)

(assert (=> (and b!1304303 (= (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (toChars!3349 (transformation!2275 (rule!4014 t2!34)))) t!117808) tb!69633))

(declare-fun result!84462 () Bool)

(assert (= result!84462 result!84456))

(assert (=> d!367706 t!117808))

(declare-fun b_and!87143 () Bool)

(assert (= b_and!87113 (and (=> t!117808 result!84462) b_and!87143)))

(declare-fun m!1456037 () Bool)

(assert (=> d!367706 m!1456037))

(declare-fun m!1456039 () Bool)

(assert (=> d!367706 m!1456039))

(assert (=> b!1304284 d!367706))

(declare-fun d!367708 () Bool)

(declare-fun lt!429155 () Bool)

(assert (=> d!367708 (= lt!429155 (select (content!1843 lt!429015) lt!429010))))

(declare-fun e!836697 () Bool)

(assert (=> d!367708 (= lt!429155 e!836697)))

(declare-fun res!584936 () Bool)

(assert (=> d!367708 (=> (not res!584936) (not e!836697))))

(assert (=> d!367708 (= res!584936 ((_ is Cons!13156) lt!429015))))

(assert (=> d!367708 (= (contains!2234 lt!429015 lt!429010) lt!429155)))

(declare-fun b!1304648 () Bool)

(declare-fun e!836696 () Bool)

(assert (=> b!1304648 (= e!836697 e!836696)))

(declare-fun res!584937 () Bool)

(assert (=> b!1304648 (=> res!584937 e!836696)))

(assert (=> b!1304648 (= res!584937 (= (h!18557 lt!429015) lt!429010))))

(declare-fun b!1304649 () Bool)

(assert (=> b!1304649 (= e!836696 (contains!2234 (t!117783 lt!429015) lt!429010))))

(assert (= (and d!367708 res!584936) b!1304648))

(assert (= (and b!1304648 (not res!584937)) b!1304649))

(assert (=> d!367708 m!1455737))

(declare-fun m!1456041 () Bool)

(assert (=> d!367708 m!1456041))

(declare-fun m!1456043 () Bool)

(assert (=> b!1304649 m!1456043))

(assert (=> b!1304305 d!367708))

(declare-fun b!1304678 () Bool)

(declare-fun res!584957 () Bool)

(declare-fun e!836712 () Bool)

(assert (=> b!1304678 (=> (not res!584957) (not e!836712))))

(declare-fun call!89143 () Bool)

(assert (=> b!1304678 (= res!584957 (not call!89143))))

(declare-fun b!1304679 () Bool)

(declare-fun e!836718 () Bool)

(declare-fun lt!429158 () Bool)

(assert (=> b!1304679 (= e!836718 (not lt!429158))))

(declare-fun bm!89138 () Bool)

(assert (=> bm!89138 (= call!89143 (isEmpty!7786 lt!429008))))

(declare-fun b!1304680 () Bool)

(declare-fun res!584961 () Bool)

(declare-fun e!836715 () Bool)

(assert (=> b!1304680 (=> res!584961 e!836715)))

(assert (=> b!1304680 (= res!584961 (not (isEmpty!7786 (tail!1866 lt!429008))))))

(declare-fun b!1304681 () Bool)

(declare-fun e!836716 () Bool)

(assert (=> b!1304681 (= e!836716 e!836718)))

(declare-fun c!214370 () Bool)

(assert (=> b!1304681 (= c!214370 ((_ is EmptyLang!3589) lt!429022))))

(declare-fun b!1304682 () Bool)

(declare-fun e!836717 () Bool)

(declare-fun nullable!1137 (Regex!3589) Bool)

(assert (=> b!1304682 (= e!836717 (nullable!1137 lt!429022))))

(declare-fun d!367710 () Bool)

(assert (=> d!367710 e!836716))

(declare-fun c!214371 () Bool)

(assert (=> d!367710 (= c!214371 ((_ is EmptyExpr!3589) lt!429022))))

(assert (=> d!367710 (= lt!429158 e!836717)))

(declare-fun c!214369 () Bool)

(assert (=> d!367710 (= c!214369 (isEmpty!7786 lt!429008))))

(declare-fun validRegex!1539 (Regex!3589) Bool)

(assert (=> d!367710 (validRegex!1539 lt!429022)))

(assert (=> d!367710 (= (matchR!1591 lt!429022 lt!429008) lt!429158)))

(declare-fun b!1304683 () Bool)

(declare-fun res!584956 () Bool)

(declare-fun e!836713 () Bool)

(assert (=> b!1304683 (=> res!584956 e!836713)))

(assert (=> b!1304683 (= res!584956 (not ((_ is ElementMatch!3589) lt!429022)))))

(assert (=> b!1304683 (= e!836718 e!836713)))

(declare-fun b!1304684 () Bool)

(declare-fun head!2240 (List!13222) C!7468)

(assert (=> b!1304684 (= e!836715 (not (= (head!2240 lt!429008) (c!214293 lt!429022))))))

(declare-fun b!1304685 () Bool)

(declare-fun derivativeStep!889 (Regex!3589 C!7468) Regex!3589)

(assert (=> b!1304685 (= e!836717 (matchR!1591 (derivativeStep!889 lt!429022 (head!2240 lt!429008)) (tail!1866 lt!429008)))))

(declare-fun b!1304686 () Bool)

(declare-fun res!584955 () Bool)

(assert (=> b!1304686 (=> (not res!584955) (not e!836712))))

(assert (=> b!1304686 (= res!584955 (isEmpty!7786 (tail!1866 lt!429008)))))

(declare-fun b!1304687 () Bool)

(declare-fun e!836714 () Bool)

(assert (=> b!1304687 (= e!836714 e!836715)))

(declare-fun res!584959 () Bool)

(assert (=> b!1304687 (=> res!584959 e!836715)))

(assert (=> b!1304687 (= res!584959 call!89143)))

(declare-fun b!1304688 () Bool)

(assert (=> b!1304688 (= e!836713 e!836714)))

(declare-fun res!584960 () Bool)

(assert (=> b!1304688 (=> (not res!584960) (not e!836714))))

(assert (=> b!1304688 (= res!584960 (not lt!429158))))

(declare-fun b!1304689 () Bool)

(assert (=> b!1304689 (= e!836712 (= (head!2240 lt!429008) (c!214293 lt!429022)))))

(declare-fun b!1304690 () Bool)

(assert (=> b!1304690 (= e!836716 (= lt!429158 call!89143))))

(declare-fun b!1304691 () Bool)

(declare-fun res!584958 () Bool)

(assert (=> b!1304691 (=> res!584958 e!836713)))

(assert (=> b!1304691 (= res!584958 e!836712)))

(declare-fun res!584954 () Bool)

(assert (=> b!1304691 (=> (not res!584954) (not e!836712))))

(assert (=> b!1304691 (= res!584954 lt!429158)))

(assert (= (and d!367710 c!214369) b!1304682))

(assert (= (and d!367710 (not c!214369)) b!1304685))

(assert (= (and d!367710 c!214371) b!1304690))

(assert (= (and d!367710 (not c!214371)) b!1304681))

(assert (= (and b!1304681 c!214370) b!1304679))

(assert (= (and b!1304681 (not c!214370)) b!1304683))

(assert (= (and b!1304683 (not res!584956)) b!1304691))

(assert (= (and b!1304691 res!584954) b!1304678))

(assert (= (and b!1304678 res!584957) b!1304686))

(assert (= (and b!1304686 res!584955) b!1304689))

(assert (= (and b!1304691 (not res!584958)) b!1304688))

(assert (= (and b!1304688 res!584960) b!1304687))

(assert (= (and b!1304687 (not res!584959)) b!1304680))

(assert (= (and b!1304680 (not res!584961)) b!1304684))

(assert (= (or b!1304690 b!1304678 b!1304687) bm!89138))

(declare-fun m!1456045 () Bool)

(assert (=> b!1304682 m!1456045))

(assert (=> b!1304680 m!1455783))

(assert (=> b!1304680 m!1455783))

(declare-fun m!1456047 () Bool)

(assert (=> b!1304680 m!1456047))

(declare-fun m!1456049 () Bool)

(assert (=> d!367710 m!1456049))

(declare-fun m!1456051 () Bool)

(assert (=> d!367710 m!1456051))

(declare-fun m!1456053 () Bool)

(assert (=> b!1304684 m!1456053))

(assert (=> bm!89138 m!1456049))

(assert (=> b!1304689 m!1456053))

(assert (=> b!1304686 m!1455783))

(assert (=> b!1304686 m!1455783))

(assert (=> b!1304686 m!1456047))

(assert (=> b!1304685 m!1456053))

(assert (=> b!1304685 m!1456053))

(declare-fun m!1456055 () Bool)

(assert (=> b!1304685 m!1456055))

(assert (=> b!1304685 m!1455783))

(assert (=> b!1304685 m!1456055))

(assert (=> b!1304685 m!1455783))

(declare-fun m!1456057 () Bool)

(assert (=> b!1304685 m!1456057))

(assert (=> b!1304282 d!367710))

(declare-fun d!367712 () Bool)

(declare-fun choose!7991 (Int) Bool)

(assert (=> d!367712 (= (Exists!747 lambda!52006) (choose!7991 lambda!52006))))

(declare-fun bs!329375 () Bool)

(assert (= bs!329375 d!367712))

(declare-fun m!1456061 () Bool)

(assert (=> bs!329375 m!1456061))

(assert (=> b!1304286 d!367712))

(declare-fun bs!329376 () Bool)

(declare-fun d!367714 () Bool)

(assert (= bs!329376 (and d!367714 b!1304286)))

(declare-fun lambda!52053 () Int)

(assert (=> bs!329376 (= lambda!52053 lambda!52006)))

(assert (=> d!367714 true))

(assert (=> d!367714 true))

(assert (=> d!367714 (Exists!747 lambda!52053)))

(declare-fun lt!429161 () Unit!19246)

(declare-fun choose!7992 (Regex!3589 List!13222) Unit!19246)

(assert (=> d!367714 (= lt!429161 (choose!7992 lt!429022 lt!429015))))

(assert (=> d!367714 (validRegex!1539 lt!429022)))

(assert (=> d!367714 (= (lemmaPrefixMatchThenExistsStringThatMatches!65 lt!429022 lt!429015) lt!429161)))

(declare-fun bs!329377 () Bool)

(assert (= bs!329377 d!367714))

(declare-fun m!1456069 () Bool)

(assert (=> bs!329377 m!1456069))

(declare-fun m!1456071 () Bool)

(assert (=> bs!329377 m!1456071))

(assert (=> bs!329377 m!1456051))

(assert (=> b!1304286 d!367714))

(declare-fun d!367718 () Bool)

(declare-fun res!584968 () Bool)

(declare-fun e!836723 () Bool)

(assert (=> d!367718 (=> (not res!584968) (not e!836723))))

(assert (=> d!367718 (= res!584968 (not (isEmpty!7786 (originalCharacters!3137 t1!34))))))

(assert (=> d!367718 (= (inv!17564 t1!34) e!836723)))

(declare-fun b!1304698 () Bool)

(declare-fun res!584969 () Bool)

(assert (=> b!1304698 (=> (not res!584969) (not e!836723))))

(assert (=> b!1304698 (= res!584969 (= (originalCharacters!3137 t1!34) (list!4927 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (value!74470 t1!34)))))))

(declare-fun b!1304699 () Bool)

(assert (=> b!1304699 (= e!836723 (= (size!10716 t1!34) (size!10722 (originalCharacters!3137 t1!34))))))

(assert (= (and d!367718 res!584968) b!1304698))

(assert (= (and b!1304698 res!584969) b!1304699))

(declare-fun b_lambda!37337 () Bool)

(assert (=> (not b_lambda!37337) (not b!1304698)))

(declare-fun t!117810 () Bool)

(declare-fun tb!69635 () Bool)

(assert (=> (and b!1304304 (= (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (toChars!3349 (transformation!2275 (rule!4014 t1!34)))) t!117810) tb!69635))

(declare-fun b!1304700 () Bool)

(declare-fun e!836724 () Bool)

(declare-fun tp!380730 () Bool)

(assert (=> b!1304700 (= e!836724 (and (inv!17567 (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (value!74470 t1!34)))) tp!380730))))

(declare-fun result!84464 () Bool)

(assert (=> tb!69635 (= result!84464 (and (inv!17568 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (value!74470 t1!34))) e!836724))))

(assert (= tb!69635 b!1304700))

(declare-fun m!1456073 () Bool)

(assert (=> b!1304700 m!1456073))

(declare-fun m!1456075 () Bool)

(assert (=> tb!69635 m!1456075))

(assert (=> b!1304698 t!117810))

(declare-fun b_and!87145 () Bool)

(assert (= b_and!87139 (and (=> t!117810 result!84464) b_and!87145)))

(declare-fun tb!69637 () Bool)

(declare-fun t!117812 () Bool)

(assert (=> (and b!1304288 (= (toChars!3349 (transformation!2275 (h!18559 rules!2550))) (toChars!3349 (transformation!2275 (rule!4014 t1!34)))) t!117812) tb!69637))

(declare-fun result!84466 () Bool)

(assert (= result!84466 result!84464))

(assert (=> b!1304698 t!117812))

(declare-fun b_and!87147 () Bool)

(assert (= b_and!87141 (and (=> t!117812 result!84466) b_and!87147)))

(declare-fun t!117814 () Bool)

(declare-fun tb!69639 () Bool)

(assert (=> (and b!1304303 (= (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (toChars!3349 (transformation!2275 (rule!4014 t1!34)))) t!117814) tb!69639))

(declare-fun result!84468 () Bool)

(assert (= result!84468 result!84464))

(assert (=> b!1304698 t!117814))

(declare-fun b_and!87149 () Bool)

(assert (= b_and!87143 (and (=> t!117814 result!84468) b_and!87149)))

(declare-fun m!1456077 () Bool)

(assert (=> d!367718 m!1456077))

(declare-fun m!1456079 () Bool)

(assert (=> b!1304698 m!1456079))

(assert (=> b!1304698 m!1456079))

(declare-fun m!1456081 () Bool)

(assert (=> b!1304698 m!1456081))

(declare-fun m!1456083 () Bool)

(assert (=> b!1304699 m!1456083))

(assert (=> start!115062 d!367718))

(declare-fun d!367720 () Bool)

(declare-fun res!584970 () Bool)

(declare-fun e!836725 () Bool)

(assert (=> d!367720 (=> (not res!584970) (not e!836725))))

(assert (=> d!367720 (= res!584970 (not (isEmpty!7786 (originalCharacters!3137 t2!34))))))

(assert (=> d!367720 (= (inv!17564 t2!34) e!836725)))

(declare-fun b!1304701 () Bool)

(declare-fun res!584971 () Bool)

(assert (=> b!1304701 (=> (not res!584971) (not e!836725))))

(assert (=> b!1304701 (= res!584971 (= (originalCharacters!3137 t2!34) (list!4927 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (value!74470 t2!34)))))))

(declare-fun b!1304702 () Bool)

(assert (=> b!1304702 (= e!836725 (= (size!10716 t2!34) (size!10722 (originalCharacters!3137 t2!34))))))

(assert (= (and d!367720 res!584970) b!1304701))

(assert (= (and b!1304701 res!584971) b!1304702))

(declare-fun b_lambda!37339 () Bool)

(assert (=> (not b_lambda!37339) (not b!1304701)))

(assert (=> b!1304701 t!117804))

(declare-fun b_and!87151 () Bool)

(assert (= b_and!87145 (and (=> t!117804 result!84456) b_and!87151)))

(assert (=> b!1304701 t!117806))

(declare-fun b_and!87153 () Bool)

(assert (= b_and!87147 (and (=> t!117806 result!84460) b_and!87153)))

(assert (=> b!1304701 t!117808))

(declare-fun b_and!87155 () Bool)

(assert (= b_and!87149 (and (=> t!117808 result!84462) b_and!87155)))

(declare-fun m!1456085 () Bool)

(assert (=> d!367720 m!1456085))

(assert (=> b!1304701 m!1456039))

(assert (=> b!1304701 m!1456039))

(declare-fun m!1456087 () Bool)

(assert (=> b!1304701 m!1456087))

(declare-fun m!1456089 () Bool)

(assert (=> b!1304702 m!1456089))

(assert (=> start!115062 d!367720))

(declare-fun d!367722 () Bool)

(declare-fun lt!429162 () Bool)

(declare-fun e!836726 () Bool)

(assert (=> d!367722 (= lt!429162 e!836726)))

(declare-fun res!584972 () Bool)

(assert (=> d!367722 (=> (not res!584972) (not e!836726))))

(assert (=> d!367722 (= res!584972 (= (list!4926 (_1!7258 (lex!805 thiss!19762 rules!2550 (print!744 thiss!19762 (singletonSeq!844 t1!34))))) (list!4926 (singletonSeq!844 t1!34))))))

(declare-fun e!836727 () Bool)

(assert (=> d!367722 (= lt!429162 e!836727)))

(declare-fun res!584974 () Bool)

(assert (=> d!367722 (=> (not res!584974) (not e!836727))))

(declare-fun lt!429163 () tuple2!12744)

(assert (=> d!367722 (= res!584974 (= (size!10725 (_1!7258 lt!429163)) 1))))

(assert (=> d!367722 (= lt!429163 (lex!805 thiss!19762 rules!2550 (print!744 thiss!19762 (singletonSeq!844 t1!34))))))

(assert (=> d!367722 (not (isEmpty!7780 rules!2550))))

(assert (=> d!367722 (= (rulesProduceIndividualToken!939 thiss!19762 rules!2550 t1!34) lt!429162)))

(declare-fun b!1304703 () Bool)

(declare-fun res!584973 () Bool)

(assert (=> b!1304703 (=> (not res!584973) (not e!836727))))

(assert (=> b!1304703 (= res!584973 (= (apply!2945 (_1!7258 lt!429163) 0) t1!34))))

(declare-fun b!1304704 () Bool)

(assert (=> b!1304704 (= e!836727 (isEmpty!7781 (_2!7258 lt!429163)))))

(declare-fun b!1304705 () Bool)

(assert (=> b!1304705 (= e!836726 (isEmpty!7781 (_2!7258 (lex!805 thiss!19762 rules!2550 (print!744 thiss!19762 (singletonSeq!844 t1!34))))))))

(assert (= (and d!367722 res!584974) b!1304703))

(assert (= (and b!1304703 res!584973) b!1304704))

(assert (= (and d!367722 res!584972) b!1304705))

(declare-fun m!1456091 () Bool)

(assert (=> d!367722 m!1456091))

(assert (=> d!367722 m!1455551))

(assert (=> d!367722 m!1455541))

(assert (=> d!367722 m!1455547))

(declare-fun m!1456093 () Bool)

(assert (=> d!367722 m!1456093))

(assert (=> d!367722 m!1455541))

(assert (=> d!367722 m!1455541))

(declare-fun m!1456095 () Bool)

(assert (=> d!367722 m!1456095))

(assert (=> d!367722 m!1455547))

(declare-fun m!1456097 () Bool)

(assert (=> d!367722 m!1456097))

(declare-fun m!1456099 () Bool)

(assert (=> b!1304703 m!1456099))

(declare-fun m!1456101 () Bool)

(assert (=> b!1304704 m!1456101))

(assert (=> b!1304705 m!1455541))

(assert (=> b!1304705 m!1455541))

(assert (=> b!1304705 m!1455547))

(assert (=> b!1304705 m!1455547))

(assert (=> b!1304705 m!1456097))

(declare-fun m!1456103 () Bool)

(assert (=> b!1304705 m!1456103))

(assert (=> b!1304285 d!367722))

(declare-fun lt!429166 () Bool)

(declare-fun d!367724 () Bool)

(declare-fun content!1845 (List!13226) (InoxSet Regex!3589))

(assert (=> d!367724 (= lt!429166 (select (content!1845 (map!2879 rules!2550 lambda!52007)) lt!429016))))

(declare-fun e!836733 () Bool)

(assert (=> d!367724 (= lt!429166 e!836733)))

(declare-fun res!584980 () Bool)

(assert (=> d!367724 (=> (not res!584980) (not e!836733))))

(assert (=> d!367724 (= res!584980 ((_ is Cons!13160) (map!2879 rules!2550 lambda!52007)))))

(assert (=> d!367724 (= (contains!2235 (map!2879 rules!2550 lambda!52007) lt!429016) lt!429166)))

(declare-fun b!1304710 () Bool)

(declare-fun e!836732 () Bool)

(assert (=> b!1304710 (= e!836733 e!836732)))

(declare-fun res!584979 () Bool)

(assert (=> b!1304710 (=> res!584979 e!836732)))

(assert (=> b!1304710 (= res!584979 (= (h!18561 (map!2879 rules!2550 lambda!52007)) lt!429016))))

(declare-fun b!1304711 () Bool)

(assert (=> b!1304711 (= e!836732 (contains!2235 (t!117787 (map!2879 rules!2550 lambda!52007)) lt!429016))))

(assert (= (and d!367724 res!584980) b!1304710))

(assert (= (and b!1304710 (not res!584979)) b!1304711))

(assert (=> d!367724 m!1455497))

(declare-fun m!1456105 () Bool)

(assert (=> d!367724 m!1456105))

(declare-fun m!1456107 () Bool)

(assert (=> d!367724 m!1456107))

(declare-fun m!1456109 () Bool)

(assert (=> b!1304711 m!1456109))

(assert (=> b!1304289 d!367724))

(assert (=> b!1304289 d!367672))

(declare-fun b!1304745 () Bool)

(declare-fun e!836758 () Regex!3589)

(assert (=> b!1304745 (= e!836758 (getWitness!144 (t!117787 (map!2879 rules!2550 lambda!52007)) lambda!52008))))

(declare-fun b!1304746 () Bool)

(declare-fun lt!429182 () Unit!19246)

(declare-fun Unit!19250 () Unit!19246)

(assert (=> b!1304746 (= lt!429182 Unit!19250)))

(assert (=> b!1304746 false))

(declare-fun head!2241 (List!13226) Regex!3589)

(assert (=> b!1304746 (= e!836758 (head!2241 (map!2879 rules!2550 lambda!52007)))))

(declare-fun e!836757 () Bool)

(declare-fun b!1304747 () Bool)

(declare-fun lt!429181 () Regex!3589)

(assert (=> b!1304747 (= e!836757 (contains!2235 (map!2879 rules!2550 lambda!52007) lt!429181))))

(declare-fun b!1304748 () Bool)

(declare-fun e!836755 () Bool)

(declare-fun dynLambda!5727 (Int Regex!3589) Bool)

(assert (=> b!1304748 (= e!836755 (dynLambda!5727 lambda!52008 (h!18561 (map!2879 rules!2550 lambda!52007))))))

(declare-fun b!1304750 () Bool)

(declare-fun e!836756 () Regex!3589)

(assert (=> b!1304750 (= e!836756 (h!18561 (map!2879 rules!2550 lambda!52007)))))

(declare-fun d!367726 () Bool)

(assert (=> d!367726 e!836757))

(declare-fun res!584990 () Bool)

(assert (=> d!367726 (=> (not res!584990) (not e!836757))))

(assert (=> d!367726 (= res!584990 (dynLambda!5727 lambda!52008 lt!429181))))

(assert (=> d!367726 (= lt!429181 e!836756)))

(declare-fun c!214383 () Bool)

(assert (=> d!367726 (= c!214383 e!836755)))

(declare-fun res!584991 () Bool)

(assert (=> d!367726 (=> (not res!584991) (not e!836755))))

(assert (=> d!367726 (= res!584991 ((_ is Cons!13160) (map!2879 rules!2550 lambda!52007)))))

(assert (=> d!367726 (exists!252 (map!2879 rules!2550 lambda!52007) lambda!52008)))

(assert (=> d!367726 (= (getWitness!144 (map!2879 rules!2550 lambda!52007) lambda!52008) lt!429181)))

(declare-fun b!1304749 () Bool)

(assert (=> b!1304749 (= e!836756 e!836758)))

(declare-fun c!214382 () Bool)

(assert (=> b!1304749 (= c!214382 ((_ is Cons!13160) (map!2879 rules!2550 lambda!52007)))))

(assert (= (and d!367726 res!584991) b!1304748))

(assert (= (and d!367726 c!214383) b!1304750))

(assert (= (and d!367726 (not c!214383)) b!1304749))

(assert (= (and b!1304749 c!214382) b!1304745))

(assert (= (and b!1304749 (not c!214382)) b!1304746))

(assert (= (and d!367726 res!584990) b!1304747))

(declare-fun b_lambda!37341 () Bool)

(assert (=> (not b_lambda!37341) (not b!1304748)))

(declare-fun b_lambda!37343 () Bool)

(assert (=> (not b_lambda!37343) (not d!367726)))

(declare-fun m!1456129 () Bool)

(assert (=> b!1304745 m!1456129))

(declare-fun m!1456131 () Bool)

(assert (=> b!1304748 m!1456131))

(assert (=> b!1304747 m!1455497))

(declare-fun m!1456133 () Bool)

(assert (=> b!1304747 m!1456133))

(declare-fun m!1456135 () Bool)

(assert (=> d!367726 m!1456135))

(assert (=> d!367726 m!1455497))

(assert (=> d!367726 m!1455499))

(assert (=> b!1304746 m!1455497))

(declare-fun m!1456137 () Bool)

(assert (=> b!1304746 m!1456137))

(assert (=> b!1304289 d!367726))

(declare-fun d!367732 () Bool)

(declare-fun res!584996 () Bool)

(declare-fun e!836780 () Bool)

(assert (=> d!367732 (=> res!584996 e!836780)))

(assert (=> d!367732 (= res!584996 (not ((_ is Cons!13158) rules!2550)))))

(assert (=> d!367732 (= (sepAndNonSepRulesDisjointChars!648 rules!2550 rules!2550) e!836780)))

(declare-fun b!1304785 () Bool)

(declare-fun e!836781 () Bool)

(assert (=> b!1304785 (= e!836780 e!836781)))

(declare-fun res!584997 () Bool)

(assert (=> b!1304785 (=> (not res!584997) (not e!836781))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!302 (Rule!4350 List!13224) Bool)

(assert (=> b!1304785 (= res!584997 (ruleDisjointCharsFromAllFromOtherType!302 (h!18559 rules!2550) rules!2550))))

(declare-fun b!1304786 () Bool)

(assert (=> b!1304786 (= e!836781 (sepAndNonSepRulesDisjointChars!648 rules!2550 (t!117785 rules!2550)))))

(assert (= (and d!367732 (not res!584996)) b!1304785))

(assert (= (and b!1304785 res!584997) b!1304786))

(declare-fun m!1456139 () Bool)

(assert (=> b!1304785 m!1456139))

(declare-fun m!1456141 () Bool)

(assert (=> b!1304786 m!1456141))

(assert (=> b!1304287 d!367732))

(declare-fun bs!329385 () Bool)

(declare-fun d!367734 () Bool)

(assert (= bs!329385 (and d!367734 b!1304301)))

(declare-fun lambda!52056 () Int)

(assert (=> bs!329385 (not (= lambda!52056 lambda!52009))))

(declare-fun bs!329386 () Bool)

(assert (= bs!329386 (and d!367734 d!367688)))

(assert (=> bs!329386 (not (= lambda!52056 lambda!52047))))

(declare-fun bs!329387 () Bool)

(assert (= bs!329387 (and d!367734 d!367692)))

(assert (=> bs!329387 (not (= lambda!52056 lambda!52050))))

(assert (=> d!367734 true))

(declare-fun lt!429185 () Bool)

(assert (=> d!367734 (= lt!429185 (forall!3274 rules!2550 lambda!52056))))

(declare-fun e!836792 () Bool)

(assert (=> d!367734 (= lt!429185 e!836792)))

(declare-fun res!585005 () Bool)

(assert (=> d!367734 (=> res!585005 e!836792)))

(assert (=> d!367734 (= res!585005 (not ((_ is Cons!13158) rules!2550)))))

(assert (=> d!367734 (= (rulesValidInductive!712 thiss!19762 rules!2550) lt!429185)))

(declare-fun b!1304799 () Bool)

(declare-fun e!836791 () Bool)

(assert (=> b!1304799 (= e!836792 e!836791)))

(declare-fun res!585006 () Bool)

(assert (=> b!1304799 (=> (not res!585006) (not e!836791))))

(declare-fun ruleValid!553 (LexerInterface!1970 Rule!4350) Bool)

(assert (=> b!1304799 (= res!585006 (ruleValid!553 thiss!19762 (h!18559 rules!2550)))))

(declare-fun b!1304800 () Bool)

(assert (=> b!1304800 (= e!836791 (rulesValidInductive!712 thiss!19762 (t!117785 rules!2550)))))

(assert (= (and d!367734 (not res!585005)) b!1304799))

(assert (= (and b!1304799 res!585006) b!1304800))

(declare-fun m!1456159 () Bool)

(assert (=> d!367734 m!1456159))

(declare-fun m!1456161 () Bool)

(assert (=> b!1304799 m!1456161))

(declare-fun m!1456163 () Bool)

(assert (=> b!1304800 m!1456163))

(assert (=> b!1304291 d!367734))

(declare-fun d!367748 () Bool)

(assert (=> d!367748 (= (list!4927 lt!429020) (list!4930 (c!214292 lt!429020)))))

(declare-fun bs!329388 () Bool)

(assert (= bs!329388 d!367748))

(declare-fun m!1456165 () Bool)

(assert (=> bs!329388 m!1456165))

(assert (=> b!1304292 d!367748))

(declare-fun d!367750 () Bool)

(declare-fun c!214386 () Bool)

(assert (=> d!367750 (= c!214386 (isEmpty!7786 lt!429015))))

(declare-fun e!836795 () Bool)

(assert (=> d!367750 (= (prefixMatch!102 lt!429022 lt!429015) e!836795)))

(declare-fun b!1304807 () Bool)

(declare-fun lostCause!266 (Regex!3589) Bool)

(assert (=> b!1304807 (= e!836795 (not (lostCause!266 lt!429022)))))

(declare-fun b!1304808 () Bool)

(assert (=> b!1304808 (= e!836795 (prefixMatch!102 (derivativeStep!889 lt!429022 (head!2240 lt!429015)) (tail!1866 lt!429015)))))

(assert (= (and d!367750 c!214386) b!1304807))

(assert (= (and d!367750 (not c!214386)) b!1304808))

(declare-fun m!1456167 () Bool)

(assert (=> d!367750 m!1456167))

(declare-fun m!1456169 () Bool)

(assert (=> b!1304807 m!1456169))

(declare-fun m!1456171 () Bool)

(assert (=> b!1304808 m!1456171))

(assert (=> b!1304808 m!1456171))

(declare-fun m!1456173 () Bool)

(assert (=> b!1304808 m!1456173))

(declare-fun m!1456175 () Bool)

(assert (=> b!1304808 m!1456175))

(assert (=> b!1304808 m!1456173))

(assert (=> b!1304808 m!1456175))

(declare-fun m!1456177 () Bool)

(assert (=> b!1304808 m!1456177))

(assert (=> b!1304292 d!367750))

(declare-fun d!367752 () Bool)

(declare-fun e!836797 () Bool)

(assert (=> d!367752 e!836797))

(declare-fun res!585007 () Bool)

(assert (=> d!367752 (=> (not res!585007) (not e!836797))))

(declare-fun lt!429186 () List!13222)

(assert (=> d!367752 (= res!585007 (= (content!1843 lt!429186) ((_ map or) (content!1843 lt!429006) (content!1843 (Cons!13156 lt!429010 Nil!13156)))))))

(declare-fun e!836796 () List!13222)

(assert (=> d!367752 (= lt!429186 e!836796)))

(declare-fun c!214387 () Bool)

(assert (=> d!367752 (= c!214387 ((_ is Nil!13156) lt!429006))))

(assert (=> d!367752 (= (++!3346 lt!429006 (Cons!13156 lt!429010 Nil!13156)) lt!429186)))

(declare-fun b!1304809 () Bool)

(assert (=> b!1304809 (= e!836796 (Cons!13156 lt!429010 Nil!13156))))

(declare-fun b!1304812 () Bool)

(assert (=> b!1304812 (= e!836797 (or (not (= (Cons!13156 lt!429010 Nil!13156) Nil!13156)) (= lt!429186 lt!429006)))))

(declare-fun b!1304810 () Bool)

(assert (=> b!1304810 (= e!836796 (Cons!13156 (h!18557 lt!429006) (++!3346 (t!117783 lt!429006) (Cons!13156 lt!429010 Nil!13156))))))

(declare-fun b!1304811 () Bool)

(declare-fun res!585008 () Bool)

(assert (=> b!1304811 (=> (not res!585008) (not e!836797))))

(assert (=> b!1304811 (= res!585008 (= (size!10722 lt!429186) (+ (size!10722 lt!429006) (size!10722 (Cons!13156 lt!429010 Nil!13156)))))))

(assert (= (and d!367752 c!214387) b!1304809))

(assert (= (and d!367752 (not c!214387)) b!1304810))

(assert (= (and d!367752 res!585007) b!1304811))

(assert (= (and b!1304811 res!585008) b!1304812))

(declare-fun m!1456179 () Bool)

(assert (=> d!367752 m!1456179))

(declare-fun m!1456181 () Bool)

(assert (=> d!367752 m!1456181))

(declare-fun m!1456183 () Bool)

(assert (=> d!367752 m!1456183))

(declare-fun m!1456185 () Bool)

(assert (=> b!1304810 m!1456185))

(declare-fun m!1456187 () Bool)

(assert (=> b!1304811 m!1456187))

(declare-fun m!1456189 () Bool)

(assert (=> b!1304811 m!1456189))

(declare-fun m!1456191 () Bool)

(assert (=> b!1304811 m!1456191))

(assert (=> b!1304292 d!367752))

(declare-fun d!367754 () Bool)

(declare-fun lt!429187 () C!7468)

(assert (=> d!367754 (= lt!429187 (apply!2946 (list!4927 lt!429012) 0))))

(assert (=> d!367754 (= lt!429187 (apply!2947 (c!214292 lt!429012) 0))))

(declare-fun e!836798 () Bool)

(assert (=> d!367754 e!836798))

(declare-fun res!585009 () Bool)

(assert (=> d!367754 (=> (not res!585009) (not e!836798))))

(assert (=> d!367754 (= res!585009 (<= 0 0))))

(assert (=> d!367754 (= (apply!2941 lt!429012 0) lt!429187)))

(declare-fun b!1304813 () Bool)

(assert (=> b!1304813 (= e!836798 (< 0 (size!10717 lt!429012)))))

(assert (= (and d!367754 res!585009) b!1304813))

(assert (=> d!367754 m!1456027))

(assert (=> d!367754 m!1456027))

(declare-fun m!1456193 () Bool)

(assert (=> d!367754 m!1456193))

(declare-fun m!1456195 () Bool)

(assert (=> d!367754 m!1456195))

(assert (=> b!1304813 m!1455505))

(assert (=> b!1304292 d!367754))

(declare-fun d!367756 () Bool)

(declare-fun lt!429188 () BalanceConc!8580)

(assert (=> d!367756 (= (list!4927 lt!429188) (originalCharacters!3137 t1!34))))

(assert (=> d!367756 (= lt!429188 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (value!74470 t1!34)))))

(assert (=> d!367756 (= (charsOf!1247 t1!34) lt!429188)))

(declare-fun b_lambda!37365 () Bool)

(assert (=> (not b_lambda!37365) (not d!367756)))

(assert (=> d!367756 t!117810))

(declare-fun b_and!87161 () Bool)

(assert (= b_and!87151 (and (=> t!117810 result!84464) b_and!87161)))

(assert (=> d!367756 t!117812))

(declare-fun b_and!87163 () Bool)

(assert (= b_and!87153 (and (=> t!117812 result!84466) b_and!87163)))

(assert (=> d!367756 t!117814))

(declare-fun b_and!87165 () Bool)

(assert (= b_and!87155 (and (=> t!117814 result!84468) b_and!87165)))

(declare-fun m!1456197 () Bool)

(assert (=> d!367756 m!1456197))

(assert (=> d!367756 m!1456079))

(assert (=> b!1304292 d!367756))

(declare-fun bs!329389 () Bool)

(declare-fun d!367758 () Bool)

(assert (= bs!329389 (and d!367758 b!1304281)))

(declare-fun lambda!52059 () Int)

(assert (=> bs!329389 (= lambda!52059 lambda!52007)))

(declare-fun lt!429191 () Unit!19246)

(declare-fun lemma!60 (List!13224 LexerInterface!1970 List!13224) Unit!19246)

(assert (=> d!367758 (= lt!429191 (lemma!60 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!68 (List!13226) Regex!3589)

(assert (=> d!367758 (= (rulesRegex!160 thiss!19762 rules!2550) (generalisedUnion!68 (map!2879 rules!2550 lambda!52059)))))

(declare-fun bs!329390 () Bool)

(assert (= bs!329390 d!367758))

(declare-fun m!1456199 () Bool)

(assert (=> bs!329390 m!1456199))

(declare-fun m!1456201 () Bool)

(assert (=> bs!329390 m!1456201))

(assert (=> bs!329390 m!1456201))

(declare-fun m!1456203 () Bool)

(assert (=> bs!329390 m!1456203))

(assert (=> b!1304292 d!367758))

(declare-fun d!367760 () Bool)

(declare-fun list!4931 (Conc!4321) List!13225)

(assert (=> d!367760 (= (list!4926 (_1!7258 lt!429007)) (list!4931 (c!214294 (_1!7258 lt!429007))))))

(declare-fun bs!329391 () Bool)

(assert (= bs!329391 d!367760))

(declare-fun m!1456205 () Bool)

(assert (=> bs!329391 m!1456205))

(assert (=> b!1304290 d!367760))

(declare-fun d!367762 () Bool)

(declare-fun lt!429194 () BalanceConc!8580)

(declare-fun printList!550 (LexerInterface!1970 List!13225) List!13222)

(assert (=> d!367762 (= (list!4927 lt!429194) (printList!550 thiss!19762 (list!4926 (singletonSeq!844 t1!34))))))

(declare-fun printTailRec!532 (LexerInterface!1970 BalanceConc!8582 Int BalanceConc!8580) BalanceConc!8580)

(assert (=> d!367762 (= lt!429194 (printTailRec!532 thiss!19762 (singletonSeq!844 t1!34) 0 (BalanceConc!8581 Empty!4320)))))

(assert (=> d!367762 (= (print!744 thiss!19762 (singletonSeq!844 t1!34)) lt!429194)))

(declare-fun bs!329392 () Bool)

(assert (= bs!329392 d!367762))

(declare-fun m!1456207 () Bool)

(assert (=> bs!329392 m!1456207))

(assert (=> bs!329392 m!1455541))

(assert (=> bs!329392 m!1456095))

(assert (=> bs!329392 m!1456095))

(declare-fun m!1456209 () Bool)

(assert (=> bs!329392 m!1456209))

(assert (=> bs!329392 m!1455541))

(declare-fun m!1456211 () Bool)

(assert (=> bs!329392 m!1456211))

(assert (=> b!1304290 d!367762))

(declare-fun b!1304824 () Bool)

(declare-fun res!585016 () Bool)

(declare-fun e!836806 () Bool)

(assert (=> b!1304824 (=> (not res!585016) (not e!836806))))

(declare-fun lt!429197 () tuple2!12744)

(assert (=> b!1304824 (= res!585016 (= (list!4926 (_1!7258 lt!429197)) (_1!7259 (lexList!508 thiss!19762 rules!2550 (list!4927 lt!429019)))))))

(declare-fun b!1304825 () Bool)

(declare-fun e!836807 () Bool)

(assert (=> b!1304825 (= e!836807 (= (_2!7258 lt!429197) lt!429019))))

(declare-fun d!367764 () Bool)

(assert (=> d!367764 e!836806))

(declare-fun res!585017 () Bool)

(assert (=> d!367764 (=> (not res!585017) (not e!836806))))

(assert (=> d!367764 (= res!585017 e!836807)))

(declare-fun c!214390 () Bool)

(assert (=> d!367764 (= c!214390 (> (size!10725 (_1!7258 lt!429197)) 0))))

(declare-fun lexTailRecV2!355 (LexerInterface!1970 List!13224 BalanceConc!8580 BalanceConc!8580 BalanceConc!8580 BalanceConc!8582) tuple2!12744)

(assert (=> d!367764 (= lt!429197 (lexTailRecV2!355 thiss!19762 rules!2550 lt!429019 (BalanceConc!8581 Empty!4320) lt!429019 (BalanceConc!8583 Empty!4321)))))

(assert (=> d!367764 (= (lex!805 thiss!19762 rules!2550 lt!429019) lt!429197)))

(declare-fun b!1304826 () Bool)

(declare-fun e!836805 () Bool)

(declare-fun isEmpty!7789 (BalanceConc!8582) Bool)

(assert (=> b!1304826 (= e!836805 (not (isEmpty!7789 (_1!7258 lt!429197))))))

(declare-fun b!1304827 () Bool)

(assert (=> b!1304827 (= e!836807 e!836805)))

(declare-fun res!585018 () Bool)

(assert (=> b!1304827 (= res!585018 (< (size!10717 (_2!7258 lt!429197)) (size!10717 lt!429019)))))

(assert (=> b!1304827 (=> (not res!585018) (not e!836805))))

(declare-fun b!1304828 () Bool)

(assert (=> b!1304828 (= e!836806 (= (list!4927 (_2!7258 lt!429197)) (_2!7259 (lexList!508 thiss!19762 rules!2550 (list!4927 lt!429019)))))))

(assert (= (and d!367764 c!214390) b!1304827))

(assert (= (and d!367764 (not c!214390)) b!1304825))

(assert (= (and b!1304827 res!585018) b!1304826))

(assert (= (and d!367764 res!585017) b!1304824))

(assert (= (and b!1304824 res!585016) b!1304828))

(declare-fun m!1456213 () Bool)

(assert (=> b!1304828 m!1456213))

(assert (=> b!1304828 m!1455527))

(assert (=> b!1304828 m!1455527))

(assert (=> b!1304828 m!1455529))

(declare-fun m!1456215 () Bool)

(assert (=> b!1304824 m!1456215))

(assert (=> b!1304824 m!1455527))

(assert (=> b!1304824 m!1455527))

(assert (=> b!1304824 m!1455529))

(declare-fun m!1456217 () Bool)

(assert (=> b!1304827 m!1456217))

(declare-fun m!1456219 () Bool)

(assert (=> b!1304827 m!1456219))

(declare-fun m!1456221 () Bool)

(assert (=> d!367764 m!1456221))

(declare-fun m!1456223 () Bool)

(assert (=> d!367764 m!1456223))

(declare-fun m!1456225 () Bool)

(assert (=> b!1304826 m!1456225))

(assert (=> b!1304290 d!367764))

(declare-fun b!1304841 () Bool)

(declare-fun e!836817 () Bool)

(declare-fun lt!429203 () Rule!4350)

(declare-fun contains!2237 (List!13224 Rule!4350) Bool)

(assert (=> b!1304841 (= e!836817 (contains!2237 rules!2550 lt!429203))))

(declare-fun b!1304842 () Bool)

(declare-fun e!836819 () Rule!4350)

(declare-fun e!836816 () Rule!4350)

(assert (=> b!1304842 (= e!836819 e!836816)))

(declare-fun c!214396 () Bool)

(assert (=> b!1304842 (= c!214396 ((_ is Cons!13158) rules!2550))))

(declare-fun d!367766 () Bool)

(assert (=> d!367766 e!836817))

(declare-fun res!585024 () Bool)

(assert (=> d!367766 (=> (not res!585024) (not e!836817))))

(declare-fun dynLambda!5728 (Int Rule!4350) Bool)

(assert (=> d!367766 (= res!585024 (dynLambda!5728 lambda!52009 lt!429203))))

(assert (=> d!367766 (= lt!429203 e!836819)))

(declare-fun c!214395 () Bool)

(declare-fun e!836818 () Bool)

(assert (=> d!367766 (= c!214395 e!836818)))

(declare-fun res!585023 () Bool)

(assert (=> d!367766 (=> (not res!585023) (not e!836818))))

(assert (=> d!367766 (= res!585023 ((_ is Cons!13158) rules!2550))))

(assert (=> d!367766 (exists!253 rules!2550 lambda!52009)))

(assert (=> d!367766 (= (getWitness!145 rules!2550 lambda!52009) lt!429203)))

(declare-fun b!1304843 () Bool)

(assert (=> b!1304843 (= e!836816 (getWitness!145 (t!117785 rules!2550) lambda!52009))))

(declare-fun b!1304844 () Bool)

(assert (=> b!1304844 (= e!836818 (dynLambda!5728 lambda!52009 (h!18559 rules!2550)))))

(declare-fun b!1304845 () Bool)

(assert (=> b!1304845 (= e!836819 (h!18559 rules!2550))))

(declare-fun b!1304846 () Bool)

(declare-fun lt!429202 () Unit!19246)

(declare-fun Unit!19251 () Unit!19246)

(assert (=> b!1304846 (= lt!429202 Unit!19251)))

(assert (=> b!1304846 false))

(declare-fun head!2242 (List!13224) Rule!4350)

(assert (=> b!1304846 (= e!836816 (head!2242 rules!2550))))

(assert (= (and d!367766 res!585023) b!1304844))

(assert (= (and d!367766 c!214395) b!1304845))

(assert (= (and d!367766 (not c!214395)) b!1304842))

(assert (= (and b!1304842 c!214396) b!1304843))

(assert (= (and b!1304842 (not c!214396)) b!1304846))

(assert (= (and d!367766 res!585024) b!1304841))

(declare-fun b_lambda!37367 () Bool)

(assert (=> (not b_lambda!37367) (not d!367766)))

(declare-fun b_lambda!37369 () Bool)

(assert (=> (not b_lambda!37369) (not b!1304844)))

(declare-fun m!1456227 () Bool)

(assert (=> b!1304841 m!1456227))

(declare-fun m!1456229 () Bool)

(assert (=> d!367766 m!1456229))

(assert (=> d!367766 m!1455573))

(declare-fun m!1456231 () Bool)

(assert (=> b!1304843 m!1456231))

(declare-fun m!1456233 () Bool)

(assert (=> b!1304846 m!1456233))

(declare-fun m!1456235 () Bool)

(assert (=> b!1304844 m!1456235))

(assert (=> b!1304290 d!367766))

(declare-fun d!367768 () Bool)

(declare-fun e!836822 () Bool)

(assert (=> d!367768 e!836822))

(declare-fun res!585027 () Bool)

(assert (=> d!367768 (=> (not res!585027) (not e!836822))))

(declare-fun lt!429206 () BalanceConc!8582)

(assert (=> d!367768 (= res!585027 (= (list!4926 lt!429206) (Cons!13159 t1!34 Nil!13159)))))

(declare-fun singleton!368 (Token!4212) BalanceConc!8582)

(assert (=> d!367768 (= lt!429206 (singleton!368 t1!34))))

(assert (=> d!367768 (= (singletonSeq!844 t1!34) lt!429206)))

(declare-fun b!1304849 () Bool)

(declare-fun isBalanced!1262 (Conc!4321) Bool)

(assert (=> b!1304849 (= e!836822 (isBalanced!1262 (c!214294 lt!429206)))))

(assert (= (and d!367768 res!585027) b!1304849))

(declare-fun m!1456237 () Bool)

(assert (=> d!367768 m!1456237))

(declare-fun m!1456239 () Bool)

(assert (=> d!367768 m!1456239))

(declare-fun m!1456241 () Bool)

(assert (=> b!1304849 m!1456241))

(assert (=> b!1304290 d!367768))

(declare-fun b!1304854 () Bool)

(declare-fun e!836825 () Bool)

(declare-fun tp_is_empty!6607 () Bool)

(declare-fun tp!380774 () Bool)

(assert (=> b!1304854 (= e!836825 (and tp_is_empty!6607 tp!380774))))

(assert (=> b!1304300 (= tp!380722 e!836825)))

(assert (= (and b!1304300 ((_ is Cons!13156) (originalCharacters!3137 t1!34))) b!1304854))

(declare-fun b!1304868 () Bool)

(declare-fun e!836828 () Bool)

(declare-fun tp!380789 () Bool)

(declare-fun tp!380788 () Bool)

(assert (=> b!1304868 (= e!836828 (and tp!380789 tp!380788))))

(declare-fun b!1304867 () Bool)

(declare-fun tp!380785 () Bool)

(assert (=> b!1304867 (= e!836828 tp!380785)))

(declare-fun b!1304866 () Bool)

(declare-fun tp!380787 () Bool)

(declare-fun tp!380786 () Bool)

(assert (=> b!1304866 (= e!836828 (and tp!380787 tp!380786))))

(assert (=> b!1304275 (= tp!380714 e!836828)))

(declare-fun b!1304865 () Bool)

(assert (=> b!1304865 (= e!836828 tp_is_empty!6607)))

(assert (= (and b!1304275 ((_ is ElementMatch!3589) (regex!2275 (rule!4014 t1!34)))) b!1304865))

(assert (= (and b!1304275 ((_ is Concat!5955) (regex!2275 (rule!4014 t1!34)))) b!1304866))

(assert (= (and b!1304275 ((_ is Star!3589) (regex!2275 (rule!4014 t1!34)))) b!1304867))

(assert (= (and b!1304275 ((_ is Union!3589) (regex!2275 (rule!4014 t1!34)))) b!1304868))

(declare-fun b!1304872 () Bool)

(declare-fun e!836829 () Bool)

(declare-fun tp!380794 () Bool)

(declare-fun tp!380793 () Bool)

(assert (=> b!1304872 (= e!836829 (and tp!380794 tp!380793))))

(declare-fun b!1304871 () Bool)

(declare-fun tp!380790 () Bool)

(assert (=> b!1304871 (= e!836829 tp!380790)))

(declare-fun b!1304870 () Bool)

(declare-fun tp!380792 () Bool)

(declare-fun tp!380791 () Bool)

(assert (=> b!1304870 (= e!836829 (and tp!380792 tp!380791))))

(assert (=> b!1304297 (= tp!380716 e!836829)))

(declare-fun b!1304869 () Bool)

(assert (=> b!1304869 (= e!836829 tp_is_empty!6607)))

(assert (= (and b!1304297 ((_ is ElementMatch!3589) (regex!2275 (h!18559 rules!2550)))) b!1304869))

(assert (= (and b!1304297 ((_ is Concat!5955) (regex!2275 (h!18559 rules!2550)))) b!1304870))

(assert (= (and b!1304297 ((_ is Star!3589) (regex!2275 (h!18559 rules!2550)))) b!1304871))

(assert (= (and b!1304297 ((_ is Union!3589) (regex!2275 (h!18559 rules!2550)))) b!1304872))

(declare-fun b!1304876 () Bool)

(declare-fun e!836830 () Bool)

(declare-fun tp!380799 () Bool)

(declare-fun tp!380798 () Bool)

(assert (=> b!1304876 (= e!836830 (and tp!380799 tp!380798))))

(declare-fun b!1304875 () Bool)

(declare-fun tp!380795 () Bool)

(assert (=> b!1304875 (= e!836830 tp!380795)))

(declare-fun b!1304874 () Bool)

(declare-fun tp!380797 () Bool)

(declare-fun tp!380796 () Bool)

(assert (=> b!1304874 (= e!836830 (and tp!380797 tp!380796))))

(assert (=> b!1304279 (= tp!380715 e!836830)))

(declare-fun b!1304873 () Bool)

(assert (=> b!1304873 (= e!836830 tp_is_empty!6607)))

(assert (= (and b!1304279 ((_ is ElementMatch!3589) (regex!2275 (rule!4014 t2!34)))) b!1304873))

(assert (= (and b!1304279 ((_ is Concat!5955) (regex!2275 (rule!4014 t2!34)))) b!1304874))

(assert (= (and b!1304279 ((_ is Star!3589) (regex!2275 (rule!4014 t2!34)))) b!1304875))

(assert (= (and b!1304279 ((_ is Union!3589) (regex!2275 (rule!4014 t2!34)))) b!1304876))

(declare-fun b!1304887 () Bool)

(declare-fun b_free!31267 () Bool)

(declare-fun b_next!31971 () Bool)

(assert (=> b!1304887 (= b_free!31267 (not b_next!31971))))

(declare-fun tp!380809 () Bool)

(declare-fun b_and!87167 () Bool)

(assert (=> b!1304887 (= tp!380809 b_and!87167)))

(declare-fun b_free!31269 () Bool)

(declare-fun b_next!31973 () Bool)

(assert (=> b!1304887 (= b_free!31269 (not b_next!31973))))

(declare-fun t!117821 () Bool)

(declare-fun tb!69645 () Bool)

(assert (=> (and b!1304887 (= (toChars!3349 (transformation!2275 (h!18559 (t!117785 rules!2550)))) (toChars!3349 (transformation!2275 (rule!4014 t2!34)))) t!117821) tb!69645))

(declare-fun result!84486 () Bool)

(assert (= result!84486 result!84456))

(assert (=> d!367706 t!117821))

(declare-fun tb!69647 () Bool)

(declare-fun t!117823 () Bool)

(assert (=> (and b!1304887 (= (toChars!3349 (transformation!2275 (h!18559 (t!117785 rules!2550)))) (toChars!3349 (transformation!2275 (rule!4014 t1!34)))) t!117823) tb!69647))

(declare-fun result!84488 () Bool)

(assert (= result!84488 result!84464))

(assert (=> b!1304698 t!117823))

(assert (=> b!1304701 t!117821))

(assert (=> d!367756 t!117823))

(declare-fun tp!380810 () Bool)

(declare-fun b_and!87169 () Bool)

(assert (=> b!1304887 (= tp!380810 (and (=> t!117821 result!84486) (=> t!117823 result!84488) b_and!87169))))

(declare-fun e!836841 () Bool)

(assert (=> b!1304887 (= e!836841 (and tp!380809 tp!380810))))

(declare-fun b!1304886 () Bool)

(declare-fun e!836840 () Bool)

(declare-fun tp!380808 () Bool)

(assert (=> b!1304886 (= e!836840 (and tp!380808 (inv!17560 (tag!2537 (h!18559 (t!117785 rules!2550)))) (inv!17563 (transformation!2275 (h!18559 (t!117785 rules!2550)))) e!836841))))

(declare-fun b!1304885 () Bool)

(declare-fun e!836842 () Bool)

(declare-fun tp!380811 () Bool)

(assert (=> b!1304885 (= e!836842 (and e!836840 tp!380811))))

(assert (=> b!1304295 (= tp!380721 e!836842)))

(assert (= b!1304886 b!1304887))

(assert (= b!1304885 b!1304886))

(assert (= (and b!1304295 ((_ is Cons!13158) (t!117785 rules!2550))) b!1304885))

(declare-fun m!1456243 () Bool)

(assert (=> b!1304886 m!1456243))

(declare-fun m!1456245 () Bool)

(assert (=> b!1304886 m!1456245))

(declare-fun b!1304888 () Bool)

(declare-fun e!836843 () Bool)

(declare-fun tp!380812 () Bool)

(assert (=> b!1304888 (= e!836843 (and tp_is_empty!6607 tp!380812))))

(assert (=> b!1304296 (= tp!380713 e!836843)))

(assert (= (and b!1304296 ((_ is Cons!13156) (originalCharacters!3137 t2!34))) b!1304888))

(declare-fun b_lambda!37371 () Bool)

(assert (= b_lambda!37365 (or (and b!1304304 b_free!31253 (= (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (toChars!3349 (transformation!2275 (rule!4014 t1!34))))) (and b!1304288 b_free!31257 (= (toChars!3349 (transformation!2275 (h!18559 rules!2550))) (toChars!3349 (transformation!2275 (rule!4014 t1!34))))) (and b!1304303 b_free!31261) (and b!1304887 b_free!31269 (= (toChars!3349 (transformation!2275 (h!18559 (t!117785 rules!2550)))) (toChars!3349 (transformation!2275 (rule!4014 t1!34))))) b_lambda!37371)))

(declare-fun b_lambda!37373 () Bool)

(assert (= b_lambda!37337 (or (and b!1304304 b_free!31253 (= (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (toChars!3349 (transformation!2275 (rule!4014 t1!34))))) (and b!1304288 b_free!31257 (= (toChars!3349 (transformation!2275 (h!18559 rules!2550))) (toChars!3349 (transformation!2275 (rule!4014 t1!34))))) (and b!1304303 b_free!31261) (and b!1304887 b_free!31269 (= (toChars!3349 (transformation!2275 (h!18559 (t!117785 rules!2550)))) (toChars!3349 (transformation!2275 (rule!4014 t1!34))))) b_lambda!37373)))

(declare-fun b_lambda!37375 () Bool)

(assert (= b_lambda!37339 (or (and b!1304304 b_free!31253) (and b!1304288 b_free!31257 (= (toChars!3349 (transformation!2275 (h!18559 rules!2550))) (toChars!3349 (transformation!2275 (rule!4014 t2!34))))) (and b!1304303 b_free!31261 (= (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (toChars!3349 (transformation!2275 (rule!4014 t2!34))))) (and b!1304887 b_free!31269 (= (toChars!3349 (transformation!2275 (h!18559 (t!117785 rules!2550)))) (toChars!3349 (transformation!2275 (rule!4014 t2!34))))) b_lambda!37375)))

(declare-fun b_lambda!37377 () Bool)

(assert (= b_lambda!37343 (or b!1304281 b_lambda!37377)))

(declare-fun bs!329393 () Bool)

(declare-fun d!367770 () Bool)

(assert (= bs!329393 (and d!367770 b!1304281)))

(declare-fun res!585028 () Bool)

(declare-fun e!836844 () Bool)

(assert (=> bs!329393 (=> (not res!585028) (not e!836844))))

(assert (=> bs!329393 (= res!585028 (validRegex!1539 lt!429181))))

(assert (=> bs!329393 (= (dynLambda!5727 lambda!52008 lt!429181) e!836844)))

(declare-fun b!1304889 () Bool)

(assert (=> b!1304889 (= e!836844 (matchR!1591 lt!429181 lt!429008))))

(assert (= (and bs!329393 res!585028) b!1304889))

(declare-fun m!1456247 () Bool)

(assert (=> bs!329393 m!1456247))

(declare-fun m!1456249 () Bool)

(assert (=> b!1304889 m!1456249))

(assert (=> d!367726 d!367770))

(declare-fun b_lambda!37379 () Bool)

(assert (= b_lambda!37367 (or b!1304301 b_lambda!37379)))

(declare-fun bs!329394 () Bool)

(declare-fun d!367772 () Bool)

(assert (= bs!329394 (and d!367772 b!1304301)))

(assert (=> bs!329394 (= (dynLambda!5728 lambda!52009 lt!429203) (= (regex!2275 lt!429203) lt!429016))))

(assert (=> d!367766 d!367772))

(declare-fun b_lambda!37381 () Bool)

(assert (= b_lambda!37335 (or (and b!1304304 b_free!31253) (and b!1304288 b_free!31257 (= (toChars!3349 (transformation!2275 (h!18559 rules!2550))) (toChars!3349 (transformation!2275 (rule!4014 t2!34))))) (and b!1304303 b_free!31261 (= (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (toChars!3349 (transformation!2275 (rule!4014 t2!34))))) (and b!1304887 b_free!31269 (= (toChars!3349 (transformation!2275 (h!18559 (t!117785 rules!2550)))) (toChars!3349 (transformation!2275 (rule!4014 t2!34))))) b_lambda!37381)))

(declare-fun b_lambda!37383 () Bool)

(assert (= b_lambda!37341 (or b!1304281 b_lambda!37383)))

(declare-fun bs!329395 () Bool)

(declare-fun d!367774 () Bool)

(assert (= bs!329395 (and d!367774 b!1304281)))

(declare-fun res!585029 () Bool)

(declare-fun e!836845 () Bool)

(assert (=> bs!329395 (=> (not res!585029) (not e!836845))))

(assert (=> bs!329395 (= res!585029 (validRegex!1539 (h!18561 (map!2879 rules!2550 lambda!52007))))))

(assert (=> bs!329395 (= (dynLambda!5727 lambda!52008 (h!18561 (map!2879 rules!2550 lambda!52007))) e!836845)))

(declare-fun b!1304890 () Bool)

(assert (=> b!1304890 (= e!836845 (matchR!1591 (h!18561 (map!2879 rules!2550 lambda!52007)) lt!429008))))

(assert (= (and bs!329395 res!585029) b!1304890))

(declare-fun m!1456251 () Bool)

(assert (=> bs!329395 m!1456251))

(declare-fun m!1456253 () Bool)

(assert (=> b!1304890 m!1456253))

(assert (=> b!1304748 d!367774))

(declare-fun b_lambda!37385 () Bool)

(assert (= b_lambda!37369 (or b!1304301 b_lambda!37385)))

(declare-fun bs!329396 () Bool)

(declare-fun d!367776 () Bool)

(assert (= bs!329396 (and d!367776 b!1304301)))

(assert (=> bs!329396 (= (dynLambda!5728 lambda!52009 (h!18559 rules!2550)) (= (regex!2275 (h!18559 rules!2550)) lt!429016))))

(assert (=> b!1304844 d!367776))

(declare-fun b_lambda!37387 () Bool)

(assert (= b_lambda!37329 (or b!1304281 b_lambda!37387)))

(declare-fun bs!329397 () Bool)

(declare-fun d!367778 () Bool)

(assert (= bs!329397 (and d!367778 b!1304281)))

(assert (=> bs!329397 (= (dynLambda!5722 lambda!52007 (h!18559 rules!2550)) (regex!2275 (h!18559 rules!2550)))))

(assert (=> b!1304579 d!367778))

(declare-fun b_lambda!37389 () Bool)

(assert (= b_lambda!37323 (or b!1304286 b_lambda!37389)))

(declare-fun bs!329398 () Bool)

(declare-fun d!367780 () Bool)

(assert (= bs!329398 (and d!367780 b!1304286)))

(declare-fun res!585030 () Bool)

(declare-fun e!836846 () Bool)

(assert (=> bs!329398 (=> (not res!585030) (not e!836846))))

(assert (=> bs!329398 (= res!585030 (matchR!1591 lt!429022 lt!429080))))

(assert (=> bs!329398 (= (dynLambda!5718 lambda!52006 lt!429080) e!836846)))

(declare-fun b!1304891 () Bool)

(declare-fun isPrefix!1064 (List!13222 List!13222) Bool)

(assert (=> b!1304891 (= e!836846 (isPrefix!1064 lt!429015 lt!429080))))

(assert (= (and bs!329398 res!585030) b!1304891))

(declare-fun m!1456255 () Bool)

(assert (=> bs!329398 m!1456255))

(declare-fun m!1456257 () Bool)

(assert (=> b!1304891 m!1456257))

(assert (=> d!367616 d!367780))

(check-sat (not b!1304684) (not d!367574) (not b!1304388) (not b!1304384) (not b!1304885) b_and!87163 (not b!1304866) (not b_next!31955) (not b_lambda!37373) (not d!367688) (not b!1304807) (not b!1304621) (not b_lambda!37383) (not b!1304685) (not b!1304826) (not b!1304424) (not d!367752) (not b_lambda!37381) (not d!367674) (not bm!89138) (not b!1304703) (not b_next!31957) (not b_lambda!37375) (not b!1304682) (not d!367700) (not b!1304383) (not d!367726) (not b!1304380) (not b!1304647) (not b!1304867) (not b!1304786) (not b!1304875) (not d!367734) (not b!1304872) (not d!367702) (not b!1304849) (not d!367762) (not d!367748) (not b!1304843) (not b_next!31961) (not b!1304460) (not b!1304890) (not b!1304888) (not b!1304886) (not b!1304423) (not d!367766) (not b!1304636) (not b!1304747) (not b!1304868) (not b!1304426) (not b!1304502) (not b!1304874) (not b!1304686) (not b!1304824) (not b!1304699) (not b!1304846) (not d!367586) (not b!1304745) (not d!367706) (not b!1304649) (not bs!329398) (not b_lambda!37371) (not b!1304465) (not b!1304811) b_and!87161 (not b!1304813) (not d!367684) (not d!367756) b_and!87165 (not d!367758) (not d!367578) (not d!367606) b_and!87167 (not b!1304447) (not d!367622) (not b_lambda!37379) (not d!367712) (not d!367594) b_and!87103 (not b_next!31965) (not b!1304800) b_and!87111 (not d!367584) (not d!367754) b_and!87107 (not b!1304698) (not bs!329393) (not b!1304841) (not d!367698) (not d!367710) (not b_next!31971) (not b!1304602) (not b!1304785) (not d!367720) (not d!367686) (not d!367708) (not tb!69629) (not b!1304501) (not bs!329395) (not d!367644) (not b!1304705) (not d!367768) (not b!1304579) (not b!1304704) (not d!367718) (not b_lambda!37385) (not b!1304702) (not d!367592) (not d!367650) (not b!1304889) (not d!367668) (not b!1304469) (not b_lambda!37387) (not b!1304746) (not b!1304876) (not d!367750) (not b_next!31959) (not b!1304700) (not b!1304828) (not b_lambda!37389) (not b!1304701) (not b!1304808) (not b!1304503) (not b_next!31963) (not d!367760) (not d!367692) tp_is_empty!6607 (not b!1304448) (not d!367764) (not b!1304468) (not b!1304689) (not b_lambda!37377) (not b!1304799) (not d!367724) (not d!367566) (not b!1304854) (not b!1304394) (not d!367670) (not b!1304810) (not b!1304420) b_and!87169 (not b_next!31973) (not b!1304891) (not b!1304711) (not d!367722) (not b!1304387) (not tb!69635) (not b!1304871) (not b!1304870) (not d!367672) (not b!1304523) (not d!367714) (not d!367616) (not b!1304827) (not b!1304680))
(check-sat (not b_next!31957) (not b_next!31961) b_and!87161 b_and!87165 b_and!87167 b_and!87107 (not b_next!31971) (not b_next!31959) (not b_next!31963) (not b_next!31955) b_and!87163 b_and!87111 b_and!87103 (not b_next!31965) b_and!87169 (not b_next!31973))
(get-model)

(declare-fun d!367870 () Bool)

(assert (=> d!367870 (= (isEmpty!7786 lt!429015) ((_ is Nil!13156) lt!429015))))

(assert (=> d!367750 d!367870))

(declare-fun d!367872 () Bool)

(assert (=> d!367872 (= (isEmpty!7785 (_1!7259 lt!429055)) ((_ is Nil!13159) (_1!7259 lt!429055)))))

(assert (=> b!1304383 d!367872))

(declare-fun d!367874 () Bool)

(assert (=> d!367874 true))

(declare-fun lambda!52076 () Int)

(declare-fun order!7947 () Int)

(declare-fun order!7949 () Int)

(declare-fun dynLambda!5733 (Int Int) Int)

(declare-fun dynLambda!5734 (Int Int) Int)

(assert (=> d!367874 (< (dynLambda!5733 order!7947 (toChars!3349 (transformation!2275 (rule!4014 t2!34)))) (dynLambda!5734 order!7949 lambda!52076))))

(assert (=> d!367874 true))

(declare-fun order!7951 () Int)

(declare-fun dynLambda!5735 (Int Int) Int)

(assert (=> d!367874 (< (dynLambda!5735 order!7951 (toValue!3490 (transformation!2275 (rule!4014 t2!34)))) (dynLambda!5734 order!7949 lambda!52076))))

(declare-fun Forall!513 (Int) Bool)

(assert (=> d!367874 (= (semiInverseModEq!858 (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (toValue!3490 (transformation!2275 (rule!4014 t2!34)))) (Forall!513 lambda!52076))))

(declare-fun bs!329429 () Bool)

(assert (= bs!329429 d!367874))

(declare-fun m!1456431 () Bool)

(assert (=> bs!329429 m!1456431))

(assert (=> d!367684 d!367874))

(declare-fun d!367876 () Bool)

(declare-fun res!585092 () Bool)

(declare-fun e!836931 () Bool)

(assert (=> d!367876 (=> res!585092 e!836931)))

(assert (=> d!367876 (= res!585092 ((_ is Nil!13158) rules!2550))))

(assert (=> d!367876 (= (forall!3274 rules!2550 lambda!52047) e!836931)))

(declare-fun b!1305029 () Bool)

(declare-fun e!836932 () Bool)

(assert (=> b!1305029 (= e!836931 e!836932)))

(declare-fun res!585093 () Bool)

(assert (=> b!1305029 (=> (not res!585093) (not e!836932))))

(assert (=> b!1305029 (= res!585093 (dynLambda!5728 lambda!52047 (h!18559 rules!2550)))))

(declare-fun b!1305030 () Bool)

(assert (=> b!1305030 (= e!836932 (forall!3274 (t!117785 rules!2550) lambda!52047))))

(assert (= (and d!367876 (not res!585092)) b!1305029))

(assert (= (and b!1305029 res!585093) b!1305030))

(declare-fun b_lambda!37399 () Bool)

(assert (=> (not b_lambda!37399) (not b!1305029)))

(declare-fun m!1456433 () Bool)

(assert (=> b!1305029 m!1456433))

(declare-fun m!1456435 () Bool)

(assert (=> b!1305030 m!1456435))

(assert (=> d!367688 d!367876))

(declare-fun d!367878 () Bool)

(assert (=> d!367878 (= (list!4927 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (value!74470 t1!34))) (list!4930 (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (value!74470 t1!34)))))))

(declare-fun bs!329430 () Bool)

(assert (= bs!329430 d!367878))

(declare-fun m!1456437 () Bool)

(assert (=> bs!329430 m!1456437))

(assert (=> b!1304698 d!367878))

(declare-fun d!367880 () Bool)

(assert (=> d!367880 (= (list!4927 lt!429188) (list!4930 (c!214292 lt!429188)))))

(declare-fun bs!329431 () Bool)

(assert (= bs!329431 d!367880))

(declare-fun m!1456439 () Bool)

(assert (=> bs!329431 m!1456439))

(assert (=> d!367756 d!367880))

(declare-fun bs!329432 () Bool)

(declare-fun d!367882 () Bool)

(assert (= bs!329432 (and d!367882 b!1304301)))

(declare-fun lambda!52077 () Int)

(assert (=> bs!329432 (not (= lambda!52077 lambda!52009))))

(declare-fun bs!329433 () Bool)

(assert (= bs!329433 (and d!367882 d!367688)))

(assert (=> bs!329433 (= (= lambda!52050 lambda!52009) (= lambda!52077 lambda!52047))))

(declare-fun bs!329434 () Bool)

(assert (= bs!329434 (and d!367882 d!367692)))

(assert (=> bs!329434 (not (= lambda!52077 lambda!52050))))

(declare-fun bs!329435 () Bool)

(assert (= bs!329435 (and d!367882 d!367734)))

(assert (=> bs!329435 (not (= lambda!52077 lambda!52056))))

(assert (=> d!367882 true))

(assert (=> d!367882 (< (dynLambda!5723 order!7935 lambda!52050) (dynLambda!5723 order!7935 lambda!52077))))

(assert (=> d!367882 (= (exists!253 rules!2550 lambda!52050) (not (forall!3274 rules!2550 lambda!52077)))))

(declare-fun bs!329436 () Bool)

(assert (= bs!329436 d!367882))

(declare-fun m!1456441 () Bool)

(assert (=> bs!329436 m!1456441))

(assert (=> d!367692 d!367882))

(declare-fun bs!329437 () Bool)

(declare-fun d!367884 () Bool)

(assert (= bs!329437 (and d!367884 d!367882)))

(declare-fun lambda!52080 () Int)

(assert (=> bs!329437 (not (= lambda!52080 lambda!52077))))

(declare-fun bs!329438 () Bool)

(assert (= bs!329438 (and d!367884 b!1304301)))

(assert (=> bs!329438 (not (= lambda!52080 lambda!52009))))

(declare-fun bs!329439 () Bool)

(assert (= bs!329439 (and d!367884 d!367734)))

(assert (=> bs!329439 (not (= lambda!52080 lambda!52056))))

(declare-fun bs!329440 () Bool)

(assert (= bs!329440 (and d!367884 d!367692)))

(assert (=> bs!329440 (= lambda!52080 lambda!52050)))

(declare-fun bs!329441 () Bool)

(assert (= bs!329441 (and d!367884 d!367688)))

(assert (=> bs!329441 (not (= lambda!52080 lambda!52047))))

(assert (=> d!367884 true))

(assert (=> d!367884 true))

(assert (=> d!367884 (< (dynLambda!5724 order!7937 lambda!52007) (dynLambda!5723 order!7935 lambda!52080))))

(assert (=> d!367884 (exists!253 rules!2550 lambda!52080)))

(assert (=> d!367884 true))

(declare-fun _$24!52 () Unit!19246)

(assert (=> d!367884 (= (choose!7990 rules!2550 lambda!52007 lt!429016) _$24!52)))

(declare-fun bs!329442 () Bool)

(assert (= bs!329442 d!367884))

(declare-fun m!1456443 () Bool)

(assert (=> bs!329442 m!1456443))

(assert (=> d!367692 d!367884))

(assert (=> d!367692 d!367724))

(assert (=> d!367692 d!367672))

(declare-fun d!367886 () Bool)

(declare-fun res!585108 () Bool)

(declare-fun e!836952 () Bool)

(assert (=> d!367886 (=> res!585108 e!836952)))

(assert (=> d!367886 (= res!585108 ((_ is ElementMatch!3589) (h!18561 (map!2879 rules!2550 lambda!52007))))))

(assert (=> d!367886 (= (validRegex!1539 (h!18561 (map!2879 rules!2550 lambda!52007))) e!836952)))

(declare-fun bm!89158 () Bool)

(declare-fun call!89163 () Bool)

(declare-fun call!89164 () Bool)

(assert (=> bm!89158 (= call!89163 call!89164)))

(declare-fun bm!89159 () Bool)

(declare-fun c!214437 () Bool)

(declare-fun c!214436 () Bool)

(assert (=> bm!89159 (= call!89164 (validRegex!1539 (ite c!214437 (reg!3918 (h!18561 (map!2879 rules!2550 lambda!52007))) (ite c!214436 (regOne!7691 (h!18561 (map!2879 rules!2550 lambda!52007))) (regOne!7690 (h!18561 (map!2879 rules!2550 lambda!52007)))))))))

(declare-fun b!1305051 () Bool)

(declare-fun e!836947 () Bool)

(declare-fun call!89165 () Bool)

(assert (=> b!1305051 (= e!836947 call!89165)))

(declare-fun bm!89160 () Bool)

(assert (=> bm!89160 (= call!89165 (validRegex!1539 (ite c!214436 (regTwo!7691 (h!18561 (map!2879 rules!2550 lambda!52007))) (regTwo!7690 (h!18561 (map!2879 rules!2550 lambda!52007))))))))

(declare-fun b!1305052 () Bool)

(declare-fun res!585106 () Bool)

(assert (=> b!1305052 (=> (not res!585106) (not e!836947))))

(assert (=> b!1305052 (= res!585106 call!89163)))

(declare-fun e!836950 () Bool)

(assert (=> b!1305052 (= e!836950 e!836947)))

(declare-fun b!1305053 () Bool)

(declare-fun res!585107 () Bool)

(declare-fun e!836951 () Bool)

(assert (=> b!1305053 (=> res!585107 e!836951)))

(assert (=> b!1305053 (= res!585107 (not ((_ is Concat!5955) (h!18561 (map!2879 rules!2550 lambda!52007)))))))

(assert (=> b!1305053 (= e!836950 e!836951)))

(declare-fun b!1305054 () Bool)

(declare-fun e!836948 () Bool)

(assert (=> b!1305054 (= e!836952 e!836948)))

(assert (=> b!1305054 (= c!214437 ((_ is Star!3589) (h!18561 (map!2879 rules!2550 lambda!52007))))))

(declare-fun b!1305055 () Bool)

(declare-fun e!836953 () Bool)

(assert (=> b!1305055 (= e!836953 call!89165)))

(declare-fun b!1305056 () Bool)

(declare-fun e!836949 () Bool)

(assert (=> b!1305056 (= e!836948 e!836949)))

(declare-fun res!585104 () Bool)

(assert (=> b!1305056 (= res!585104 (not (nullable!1137 (reg!3918 (h!18561 (map!2879 rules!2550 lambda!52007))))))))

(assert (=> b!1305056 (=> (not res!585104) (not e!836949))))

(declare-fun b!1305057 () Bool)

(assert (=> b!1305057 (= e!836948 e!836950)))

(assert (=> b!1305057 (= c!214436 ((_ is Union!3589) (h!18561 (map!2879 rules!2550 lambda!52007))))))

(declare-fun b!1305058 () Bool)

(assert (=> b!1305058 (= e!836951 e!836953)))

(declare-fun res!585105 () Bool)

(assert (=> b!1305058 (=> (not res!585105) (not e!836953))))

(assert (=> b!1305058 (= res!585105 call!89163)))

(declare-fun b!1305059 () Bool)

(assert (=> b!1305059 (= e!836949 call!89164)))

(assert (= (and d!367886 (not res!585108)) b!1305054))

(assert (= (and b!1305054 c!214437) b!1305056))

(assert (= (and b!1305054 (not c!214437)) b!1305057))

(assert (= (and b!1305056 res!585104) b!1305059))

(assert (= (and b!1305057 c!214436) b!1305052))

(assert (= (and b!1305057 (not c!214436)) b!1305053))

(assert (= (and b!1305052 res!585106) b!1305051))

(assert (= (and b!1305053 (not res!585107)) b!1305058))

(assert (= (and b!1305058 res!585105) b!1305055))

(assert (= (or b!1305052 b!1305058) bm!89158))

(assert (= (or b!1305051 b!1305055) bm!89160))

(assert (= (or b!1305059 bm!89158) bm!89159))

(declare-fun m!1456445 () Bool)

(assert (=> bm!89159 m!1456445))

(declare-fun m!1456447 () Bool)

(assert (=> bm!89160 m!1456447))

(declare-fun m!1456449 () Bool)

(assert (=> b!1305056 m!1456449))

(assert (=> bs!329395 d!367886))

(assert (=> d!367674 d!367710))

(declare-fun bs!329443 () Bool)

(declare-fun d!367888 () Bool)

(assert (= bs!329443 (and d!367888 d!367668)))

(declare-fun lambda!52081 () Int)

(assert (=> bs!329443 (= (= lambda!52041 lambda!52008) (= lambda!52081 lambda!52034))))

(declare-fun bs!329444 () Bool)

(assert (= bs!329444 (and d!367888 d!367674)))

(assert (=> bs!329444 (not (= lambda!52081 lambda!52040))))

(declare-fun bs!329445 () Bool)

(assert (= bs!329445 (and d!367888 d!367670)))

(assert (=> bs!329445 (= (= lambda!52041 lambda!52008) (= lambda!52081 lambda!52035))))

(declare-fun bs!329446 () Bool)

(assert (= bs!329446 (and d!367888 b!1304281)))

(assert (=> bs!329446 (not (= lambda!52081 lambda!52008))))

(assert (=> bs!329444 (not (= lambda!52081 lambda!52041))))

(assert (=> d!367888 true))

(assert (=> d!367888 (< (dynLambda!5721 order!7933 lambda!52041) (dynLambda!5721 order!7933 lambda!52081))))

(assert (=> d!367888 (= (exists!252 lt!429017 lambda!52041) (not (forall!3273 lt!429017 lambda!52081)))))

(declare-fun bs!329447 () Bool)

(assert (= bs!329447 d!367888))

(declare-fun m!1456451 () Bool)

(assert (=> bs!329447 m!1456451))

(assert (=> d!367674 d!367888))

(declare-fun bs!329448 () Bool)

(declare-fun d!367890 () Bool)

(assert (= bs!329448 (and d!367890 d!367668)))

(declare-fun lambda!52084 () Int)

(assert (=> bs!329448 (not (= lambda!52084 lambda!52034))))

(declare-fun bs!329449 () Bool)

(assert (= bs!329449 (and d!367890 d!367674)))

(assert (=> bs!329449 (not (= lambda!52084 lambda!52040))))

(declare-fun bs!329450 () Bool)

(assert (= bs!329450 (and d!367890 d!367670)))

(assert (=> bs!329450 (not (= lambda!52084 lambda!52035))))

(declare-fun bs!329451 () Bool)

(assert (= bs!329451 (and d!367890 d!367888)))

(assert (=> bs!329451 (not (= lambda!52084 lambda!52081))))

(declare-fun bs!329452 () Bool)

(assert (= bs!329452 (and d!367890 b!1304281)))

(assert (=> bs!329452 (= lambda!52084 lambda!52008)))

(assert (=> bs!329449 (= lambda!52084 lambda!52041)))

(assert (=> d!367890 true))

(assert (=> d!367890 (= (matchR!1591 lt!429022 lt!429008) (exists!252 lt!429017 lambda!52084))))

(assert (=> d!367890 true))

(declare-fun _$85!92 () Unit!19246)

(assert (=> d!367890 (= (choose!7987 lt!429022 lt!429017 lt!429008) _$85!92)))

(declare-fun bs!329453 () Bool)

(assert (= bs!329453 d!367890))

(assert (=> bs!329453 m!1455565))

(declare-fun m!1456453 () Bool)

(assert (=> bs!329453 m!1456453))

(assert (=> d!367674 d!367890))

(declare-fun d!367892 () Bool)

(declare-fun res!585115 () Bool)

(declare-fun e!836960 () Bool)

(assert (=> d!367892 (=> res!585115 e!836960)))

(assert (=> d!367892 (= res!585115 ((_ is Nil!13160) lt!429017))))

(assert (=> d!367892 (= (forall!3273 lt!429017 lambda!52040) e!836960)))

(declare-fun b!1305066 () Bool)

(declare-fun e!836961 () Bool)

(assert (=> b!1305066 (= e!836960 e!836961)))

(declare-fun res!585116 () Bool)

(assert (=> b!1305066 (=> (not res!585116) (not e!836961))))

(assert (=> b!1305066 (= res!585116 (dynLambda!5727 lambda!52040 (h!18561 lt!429017)))))

(declare-fun b!1305067 () Bool)

(assert (=> b!1305067 (= e!836961 (forall!3273 (t!117787 lt!429017) lambda!52040))))

(assert (= (and d!367892 (not res!585115)) b!1305066))

(assert (= (and b!1305066 res!585116) b!1305067))

(declare-fun b_lambda!37401 () Bool)

(assert (=> (not b_lambda!37401) (not b!1305066)))

(declare-fun m!1456455 () Bool)

(assert (=> b!1305066 m!1456455))

(declare-fun m!1456457 () Bool)

(assert (=> b!1305067 m!1456457))

(assert (=> d!367674 d!367892))

(declare-fun d!367894 () Bool)

(assert (=> d!367894 (= (isEmpty!7786 (originalCharacters!3137 t1!34)) ((_ is Nil!13156) (originalCharacters!3137 t1!34)))))

(assert (=> d!367718 d!367894))

(declare-fun b!1305068 () Bool)

(declare-fun e!836965 () Regex!3589)

(assert (=> b!1305068 (= e!836965 (getWitness!144 (t!117787 (t!117787 (map!2879 rules!2550 lambda!52007))) lambda!52008))))

(declare-fun b!1305069 () Bool)

(declare-fun lt!429232 () Unit!19246)

(declare-fun Unit!19255 () Unit!19246)

(assert (=> b!1305069 (= lt!429232 Unit!19255)))

(assert (=> b!1305069 false))

(assert (=> b!1305069 (= e!836965 (head!2241 (t!117787 (map!2879 rules!2550 lambda!52007))))))

(declare-fun e!836964 () Bool)

(declare-fun lt!429231 () Regex!3589)

(declare-fun b!1305070 () Bool)

(assert (=> b!1305070 (= e!836964 (contains!2235 (t!117787 (map!2879 rules!2550 lambda!52007)) lt!429231))))

(declare-fun b!1305071 () Bool)

(declare-fun e!836962 () Bool)

(assert (=> b!1305071 (= e!836962 (dynLambda!5727 lambda!52008 (h!18561 (t!117787 (map!2879 rules!2550 lambda!52007)))))))

(declare-fun b!1305073 () Bool)

(declare-fun e!836963 () Regex!3589)

(assert (=> b!1305073 (= e!836963 (h!18561 (t!117787 (map!2879 rules!2550 lambda!52007))))))

(declare-fun d!367896 () Bool)

(assert (=> d!367896 e!836964))

(declare-fun res!585117 () Bool)

(assert (=> d!367896 (=> (not res!585117) (not e!836964))))

(assert (=> d!367896 (= res!585117 (dynLambda!5727 lambda!52008 lt!429231))))

(assert (=> d!367896 (= lt!429231 e!836963)))

(declare-fun c!214439 () Bool)

(assert (=> d!367896 (= c!214439 e!836962)))

(declare-fun res!585118 () Bool)

(assert (=> d!367896 (=> (not res!585118) (not e!836962))))

(assert (=> d!367896 (= res!585118 ((_ is Cons!13160) (t!117787 (map!2879 rules!2550 lambda!52007))))))

(assert (=> d!367896 (exists!252 (t!117787 (map!2879 rules!2550 lambda!52007)) lambda!52008)))

(assert (=> d!367896 (= (getWitness!144 (t!117787 (map!2879 rules!2550 lambda!52007)) lambda!52008) lt!429231)))

(declare-fun b!1305072 () Bool)

(assert (=> b!1305072 (= e!836963 e!836965)))

(declare-fun c!214438 () Bool)

(assert (=> b!1305072 (= c!214438 ((_ is Cons!13160) (t!117787 (map!2879 rules!2550 lambda!52007))))))

(assert (= (and d!367896 res!585118) b!1305071))

(assert (= (and d!367896 c!214439) b!1305073))

(assert (= (and d!367896 (not c!214439)) b!1305072))

(assert (= (and b!1305072 c!214438) b!1305068))

(assert (= (and b!1305072 (not c!214438)) b!1305069))

(assert (= (and d!367896 res!585117) b!1305070))

(declare-fun b_lambda!37403 () Bool)

(assert (=> (not b_lambda!37403) (not b!1305071)))

(declare-fun b_lambda!37405 () Bool)

(assert (=> (not b_lambda!37405) (not d!367896)))

(declare-fun m!1456459 () Bool)

(assert (=> b!1305068 m!1456459))

(declare-fun m!1456461 () Bool)

(assert (=> b!1305071 m!1456461))

(declare-fun m!1456463 () Bool)

(assert (=> b!1305070 m!1456463))

(declare-fun m!1456465 () Bool)

(assert (=> d!367896 m!1456465))

(declare-fun m!1456467 () Bool)

(assert (=> d!367896 m!1456467))

(declare-fun m!1456469 () Bool)

(assert (=> b!1305069 m!1456469))

(assert (=> b!1304745 d!367896))

(declare-fun d!367898 () Bool)

(declare-fun lt!429233 () Bool)

(assert (=> d!367898 (= lt!429233 (select (content!1843 (t!117783 lt!429015)) lt!429009))))

(declare-fun e!836967 () Bool)

(assert (=> d!367898 (= lt!429233 e!836967)))

(declare-fun res!585119 () Bool)

(assert (=> d!367898 (=> (not res!585119) (not e!836967))))

(assert (=> d!367898 (= res!585119 ((_ is Cons!13156) (t!117783 lt!429015)))))

(assert (=> d!367898 (= (contains!2234 (t!117783 lt!429015) lt!429009) lt!429233)))

(declare-fun b!1305074 () Bool)

(declare-fun e!836966 () Bool)

(assert (=> b!1305074 (= e!836967 e!836966)))

(declare-fun res!585120 () Bool)

(assert (=> b!1305074 (=> res!585120 e!836966)))

(assert (=> b!1305074 (= res!585120 (= (h!18557 (t!117783 lt!429015)) lt!429009))))

(declare-fun b!1305075 () Bool)

(assert (=> b!1305075 (= e!836966 (contains!2234 (t!117783 (t!117783 lt!429015)) lt!429009))))

(assert (= (and d!367898 res!585119) b!1305074))

(assert (= (and b!1305074 (not res!585120)) b!1305075))

(declare-fun m!1456471 () Bool)

(assert (=> d!367898 m!1456471))

(declare-fun m!1456473 () Bool)

(assert (=> d!367898 m!1456473))

(declare-fun m!1456475 () Bool)

(assert (=> b!1305075 m!1456475))

(assert (=> b!1304621 d!367898))

(declare-fun d!367900 () Bool)

(declare-fun charsToBigInt!1 (List!13223) Int)

(assert (=> d!367900 (= (inv!17 (value!74470 t2!34)) (= (charsToBigInt!1 (text!17003 (value!74470 t2!34))) (value!74462 (value!74470 t2!34))))))

(declare-fun bs!329454 () Bool)

(assert (= bs!329454 d!367900))

(declare-fun m!1456477 () Bool)

(assert (=> bs!329454 m!1456477))

(assert (=> b!1304420 d!367900))

(declare-fun d!367902 () Bool)

(assert (=> d!367902 (= (isEmpty!7786 (list!4927 (_2!7258 lt!429007))) ((_ is Nil!13156) (list!4927 (_2!7258 lt!429007))))))

(assert (=> d!367686 d!367902))

(declare-fun d!367904 () Bool)

(assert (=> d!367904 (= (list!4927 (_2!7258 lt!429007)) (list!4930 (c!214292 (_2!7258 lt!429007))))))

(declare-fun bs!329455 () Bool)

(assert (= bs!329455 d!367904))

(declare-fun m!1456479 () Bool)

(assert (=> bs!329455 m!1456479))

(assert (=> d!367686 d!367904))

(declare-fun d!367906 () Bool)

(declare-fun lt!429236 () Bool)

(assert (=> d!367906 (= lt!429236 (isEmpty!7786 (list!4930 (c!214292 (_2!7258 lt!429007)))))))

(assert (=> d!367906 (= lt!429236 (= (size!10728 (c!214292 (_2!7258 lt!429007))) 0))))

(assert (=> d!367906 (= (isEmpty!7787 (c!214292 (_2!7258 lt!429007))) lt!429236)))

(declare-fun bs!329456 () Bool)

(assert (= bs!329456 d!367906))

(assert (=> bs!329456 m!1456479))

(assert (=> bs!329456 m!1456479))

(declare-fun m!1456481 () Bool)

(assert (=> bs!329456 m!1456481))

(declare-fun m!1456483 () Bool)

(assert (=> bs!329456 m!1456483))

(assert (=> d!367686 d!367906))

(declare-fun d!367908 () Bool)

(declare-fun lt!429237 () Bool)

(assert (=> d!367908 (= lt!429237 (isEmpty!7786 (list!4927 (_2!7258 lt!429104))))))

(assert (=> d!367908 (= lt!429237 (isEmpty!7787 (c!214292 (_2!7258 lt!429104))))))

(assert (=> d!367908 (= (isEmpty!7781 (_2!7258 lt!429104)) lt!429237)))

(declare-fun bs!329457 () Bool)

(assert (= bs!329457 d!367908))

(declare-fun m!1456485 () Bool)

(assert (=> bs!329457 m!1456485))

(assert (=> bs!329457 m!1456485))

(declare-fun m!1456487 () Bool)

(assert (=> bs!329457 m!1456487))

(declare-fun m!1456489 () Bool)

(assert (=> bs!329457 m!1456489))

(assert (=> b!1304502 d!367908))

(declare-fun bs!329458 () Bool)

(declare-fun d!367910 () Bool)

(assert (= bs!329458 (and d!367910 d!367882)))

(declare-fun lambda!52087 () Int)

(assert (=> bs!329458 (not (= lambda!52087 lambda!52077))))

(declare-fun bs!329459 () Bool)

(assert (= bs!329459 (and d!367910 b!1304301)))

(assert (=> bs!329459 (not (= lambda!52087 lambda!52009))))

(declare-fun bs!329460 () Bool)

(assert (= bs!329460 (and d!367910 d!367734)))

(assert (=> bs!329460 (= lambda!52087 lambda!52056)))

(declare-fun bs!329461 () Bool)

(assert (= bs!329461 (and d!367910 d!367884)))

(assert (=> bs!329461 (not (= lambda!52087 lambda!52080))))

(declare-fun bs!329462 () Bool)

(assert (= bs!329462 (and d!367910 d!367692)))

(assert (=> bs!329462 (not (= lambda!52087 lambda!52050))))

(declare-fun bs!329463 () Bool)

(assert (= bs!329463 (and d!367910 d!367688)))

(assert (=> bs!329463 (not (= lambda!52087 lambda!52047))))

(assert (=> d!367910 true))

(declare-fun lt!429240 () Bool)

(assert (=> d!367910 (= lt!429240 (rulesValidInductive!712 thiss!19762 rules!2550))))

(assert (=> d!367910 (= lt!429240 (forall!3274 rules!2550 lambda!52087))))

(assert (=> d!367910 (= (rulesValid!827 thiss!19762 rules!2550) lt!429240)))

(declare-fun bs!329464 () Bool)

(assert (= bs!329464 d!367910))

(assert (=> bs!329464 m!1455581))

(declare-fun m!1456491 () Bool)

(assert (=> bs!329464 m!1456491))

(assert (=> d!367644 d!367910))

(declare-fun d!367912 () Bool)

(declare-fun lt!429241 () Bool)

(assert (=> d!367912 (= lt!429241 (select (content!1843 (t!117783 lt!429015)) lt!429010))))

(declare-fun e!836969 () Bool)

(assert (=> d!367912 (= lt!429241 e!836969)))

(declare-fun res!585121 () Bool)

(assert (=> d!367912 (=> (not res!585121) (not e!836969))))

(assert (=> d!367912 (= res!585121 ((_ is Cons!13156) (t!117783 lt!429015)))))

(assert (=> d!367912 (= (contains!2234 (t!117783 lt!429015) lt!429010) lt!429241)))

(declare-fun b!1305076 () Bool)

(declare-fun e!836968 () Bool)

(assert (=> b!1305076 (= e!836969 e!836968)))

(declare-fun res!585122 () Bool)

(assert (=> b!1305076 (=> res!585122 e!836968)))

(assert (=> b!1305076 (= res!585122 (= (h!18557 (t!117783 lt!429015)) lt!429010))))

(declare-fun b!1305077 () Bool)

(assert (=> b!1305077 (= e!836968 (contains!2234 (t!117783 (t!117783 lt!429015)) lt!429010))))

(assert (= (and d!367912 res!585121) b!1305076))

(assert (= (and b!1305076 (not res!585122)) b!1305077))

(assert (=> d!367912 m!1456471))

(declare-fun m!1456493 () Bool)

(assert (=> d!367912 m!1456493))

(declare-fun m!1456495 () Bool)

(assert (=> b!1305077 m!1456495))

(assert (=> b!1304649 d!367912))

(declare-fun bs!329465 () Bool)

(declare-fun d!367914 () Bool)

(assert (= bs!329465 (and d!367914 b!1304281)))

(declare-fun lambda!52092 () Int)

(assert (=> bs!329465 (= lambda!52092 lambda!52007)))

(declare-fun bs!329466 () Bool)

(assert (= bs!329466 (and d!367914 d!367758)))

(assert (=> bs!329466 (= lambda!52092 lambda!52059)))

(declare-fun bs!329467 () Bool)

(assert (= bs!329467 (and d!367914 d!367668)))

(declare-fun lambda!52093 () Int)

(assert (=> bs!329467 (not (= lambda!52093 lambda!52034))))

(declare-fun bs!329468 () Bool)

(assert (= bs!329468 (and d!367914 d!367674)))

(assert (=> bs!329468 (= lambda!52093 lambda!52040)))

(declare-fun bs!329469 () Bool)

(assert (= bs!329469 (and d!367914 d!367670)))

(assert (=> bs!329469 (not (= lambda!52093 lambda!52035))))

(declare-fun bs!329470 () Bool)

(assert (= bs!329470 (and d!367914 d!367888)))

(assert (=> bs!329470 (not (= lambda!52093 lambda!52081))))

(declare-fun bs!329471 () Bool)

(assert (= bs!329471 (and d!367914 d!367890)))

(assert (=> bs!329471 (not (= lambda!52093 lambda!52084))))

(assert (=> bs!329465 (not (= lambda!52093 lambda!52008))))

(assert (=> bs!329468 (not (= lambda!52093 lambda!52041))))

(assert (=> d!367914 (forall!3273 (map!2879 rules!2550 lambda!52092) lambda!52093)))

(declare-fun lt!429246 () Unit!19246)

(declare-fun e!836972 () Unit!19246)

(assert (=> d!367914 (= lt!429246 e!836972)))

(declare-fun c!214442 () Bool)

(assert (=> d!367914 (= c!214442 ((_ is Nil!13158) rules!2550))))

(assert (=> d!367914 (rulesValidInductive!712 thiss!19762 rules!2550)))

(assert (=> d!367914 (= (lemma!60 rules!2550 thiss!19762 rules!2550) lt!429246)))

(declare-fun b!1305082 () Bool)

(declare-fun Unit!19256 () Unit!19246)

(assert (=> b!1305082 (= e!836972 Unit!19256)))

(declare-fun b!1305083 () Bool)

(declare-fun Unit!19257 () Unit!19246)

(assert (=> b!1305083 (= e!836972 Unit!19257)))

(declare-fun lt!429247 () Unit!19246)

(assert (=> b!1305083 (= lt!429247 (lemma!60 rules!2550 thiss!19762 (t!117785 rules!2550)))))

(assert (= (and d!367914 c!214442) b!1305082))

(assert (= (and d!367914 (not c!214442)) b!1305083))

(declare-fun m!1456497 () Bool)

(assert (=> d!367914 m!1456497))

(assert (=> d!367914 m!1456497))

(declare-fun m!1456499 () Bool)

(assert (=> d!367914 m!1456499))

(assert (=> d!367914 m!1455581))

(declare-fun m!1456501 () Bool)

(assert (=> b!1305083 m!1456501))

(assert (=> d!367758 d!367914))

(declare-fun bs!329472 () Bool)

(declare-fun d!367916 () Bool)

(assert (= bs!329472 (and d!367916 d!367668)))

(declare-fun lambda!52096 () Int)

(assert (=> bs!329472 (not (= lambda!52096 lambda!52034))))

(declare-fun bs!329473 () Bool)

(assert (= bs!329473 (and d!367916 d!367674)))

(assert (=> bs!329473 (= lambda!52096 lambda!52040)))

(declare-fun bs!329474 () Bool)

(assert (= bs!329474 (and d!367916 d!367914)))

(assert (=> bs!329474 (= lambda!52096 lambda!52093)))

(declare-fun bs!329475 () Bool)

(assert (= bs!329475 (and d!367916 d!367670)))

(assert (=> bs!329475 (not (= lambda!52096 lambda!52035))))

(declare-fun bs!329476 () Bool)

(assert (= bs!329476 (and d!367916 d!367888)))

(assert (=> bs!329476 (not (= lambda!52096 lambda!52081))))

(declare-fun bs!329477 () Bool)

(assert (= bs!329477 (and d!367916 d!367890)))

(assert (=> bs!329477 (not (= lambda!52096 lambda!52084))))

(declare-fun bs!329478 () Bool)

(assert (= bs!329478 (and d!367916 b!1304281)))

(assert (=> bs!329478 (not (= lambda!52096 lambda!52008))))

(assert (=> bs!329473 (not (= lambda!52096 lambda!52041))))

(declare-fun b!1305104 () Bool)

(declare-fun e!836986 () Bool)

(declare-fun isEmpty!7791 (List!13226) Bool)

(assert (=> b!1305104 (= e!836986 (isEmpty!7791 (t!117787 (map!2879 rules!2550 lambda!52059))))))

(declare-fun b!1305105 () Bool)

(declare-fun e!836987 () Bool)

(declare-fun e!836988 () Bool)

(assert (=> b!1305105 (= e!836987 e!836988)))

(declare-fun c!214452 () Bool)

(declare-fun tail!1867 (List!13226) List!13226)

(assert (=> b!1305105 (= c!214452 (isEmpty!7791 (tail!1867 (map!2879 rules!2550 lambda!52059))))))

(declare-fun b!1305106 () Bool)

(declare-fun e!836985 () Bool)

(assert (=> b!1305106 (= e!836985 e!836987)))

(declare-fun c!214453 () Bool)

(assert (=> b!1305106 (= c!214453 (isEmpty!7791 (map!2879 rules!2550 lambda!52059)))))

(declare-fun b!1305107 () Bool)

(declare-fun e!836989 () Regex!3589)

(assert (=> b!1305107 (= e!836989 (h!18561 (map!2879 rules!2550 lambda!52059)))))

(declare-fun b!1305108 () Bool)

(declare-fun e!836990 () Regex!3589)

(assert (=> b!1305108 (= e!836990 (Union!3589 (h!18561 (map!2879 rules!2550 lambda!52059)) (generalisedUnion!68 (t!117787 (map!2879 rules!2550 lambda!52059)))))))

(assert (=> d!367916 e!836985))

(declare-fun res!585127 () Bool)

(assert (=> d!367916 (=> (not res!585127) (not e!836985))))

(declare-fun lt!429250 () Regex!3589)

(assert (=> d!367916 (= res!585127 (validRegex!1539 lt!429250))))

(assert (=> d!367916 (= lt!429250 e!836989)))

(declare-fun c!214451 () Bool)

(assert (=> d!367916 (= c!214451 e!836986)))

(declare-fun res!585128 () Bool)

(assert (=> d!367916 (=> (not res!585128) (not e!836986))))

(assert (=> d!367916 (= res!585128 ((_ is Cons!13160) (map!2879 rules!2550 lambda!52059)))))

(assert (=> d!367916 (forall!3273 (map!2879 rules!2550 lambda!52059) lambda!52096)))

(assert (=> d!367916 (= (generalisedUnion!68 (map!2879 rules!2550 lambda!52059)) lt!429250)))

(declare-fun b!1305109 () Bool)

(assert (=> b!1305109 (= e!836989 e!836990)))

(declare-fun c!214454 () Bool)

(assert (=> b!1305109 (= c!214454 ((_ is Cons!13160) (map!2879 rules!2550 lambda!52059)))))

(declare-fun b!1305110 () Bool)

(declare-fun isUnion!18 (Regex!3589) Bool)

(assert (=> b!1305110 (= e!836988 (isUnion!18 lt!429250))))

(declare-fun b!1305111 () Bool)

(assert (=> b!1305111 (= e!836990 EmptyLang!3589)))

(declare-fun b!1305112 () Bool)

(assert (=> b!1305112 (= e!836988 (= lt!429250 (head!2241 (map!2879 rules!2550 lambda!52059))))))

(declare-fun b!1305113 () Bool)

(declare-fun isEmptyLang!18 (Regex!3589) Bool)

(assert (=> b!1305113 (= e!836987 (isEmptyLang!18 lt!429250))))

(assert (= (and d!367916 res!585128) b!1305104))

(assert (= (and d!367916 c!214451) b!1305107))

(assert (= (and d!367916 (not c!214451)) b!1305109))

(assert (= (and b!1305109 c!214454) b!1305108))

(assert (= (and b!1305109 (not c!214454)) b!1305111))

(assert (= (and d!367916 res!585127) b!1305106))

(assert (= (and b!1305106 c!214453) b!1305113))

(assert (= (and b!1305106 (not c!214453)) b!1305105))

(assert (= (and b!1305105 c!214452) b!1305112))

(assert (= (and b!1305105 (not c!214452)) b!1305110))

(assert (=> b!1305112 m!1456201))

(declare-fun m!1456503 () Bool)

(assert (=> b!1305112 m!1456503))

(assert (=> b!1305106 m!1456201))

(declare-fun m!1456505 () Bool)

(assert (=> b!1305106 m!1456505))

(declare-fun m!1456507 () Bool)

(assert (=> b!1305108 m!1456507))

(declare-fun m!1456509 () Bool)

(assert (=> b!1305110 m!1456509))

(declare-fun m!1456511 () Bool)

(assert (=> d!367916 m!1456511))

(assert (=> d!367916 m!1456201))

(declare-fun m!1456513 () Bool)

(assert (=> d!367916 m!1456513))

(declare-fun m!1456515 () Bool)

(assert (=> b!1305104 m!1456515))

(declare-fun m!1456517 () Bool)

(assert (=> b!1305113 m!1456517))

(assert (=> b!1305105 m!1456201))

(declare-fun m!1456519 () Bool)

(assert (=> b!1305105 m!1456519))

(assert (=> b!1305105 m!1456519))

(declare-fun m!1456521 () Bool)

(assert (=> b!1305105 m!1456521))

(assert (=> d!367758 d!367916))

(declare-fun d!367918 () Bool)

(declare-fun lt!429251 () List!13226)

(assert (=> d!367918 (= (size!10726 lt!429251) (size!10727 rules!2550))))

(declare-fun e!836991 () List!13226)

(assert (=> d!367918 (= lt!429251 e!836991)))

(declare-fun c!214455 () Bool)

(assert (=> d!367918 (= c!214455 ((_ is Nil!13158) rules!2550))))

(assert (=> d!367918 (= (map!2879 rules!2550 lambda!52059) lt!429251)))

(declare-fun b!1305114 () Bool)

(assert (=> b!1305114 (= e!836991 Nil!13160)))

(declare-fun b!1305115 () Bool)

(assert (=> b!1305115 (= e!836991 ($colon$colon!141 (map!2879 (t!117785 rules!2550) lambda!52059) (dynLambda!5722 lambda!52059 (h!18559 rules!2550))))))

(assert (= (and d!367918 c!214455) b!1305114))

(assert (= (and d!367918 (not c!214455)) b!1305115))

(declare-fun b_lambda!37407 () Bool)

(assert (=> (not b_lambda!37407) (not b!1305115)))

(declare-fun m!1456523 () Bool)

(assert (=> d!367918 m!1456523))

(assert (=> d!367918 m!1455935))

(declare-fun m!1456525 () Bool)

(assert (=> b!1305115 m!1456525))

(declare-fun m!1456527 () Bool)

(assert (=> b!1305115 m!1456527))

(assert (=> b!1305115 m!1456525))

(assert (=> b!1305115 m!1456527))

(declare-fun m!1456529 () Bool)

(assert (=> b!1305115 m!1456529))

(assert (=> d!367758 d!367918))

(declare-fun b!1305116 () Bool)

(declare-fun res!585132 () Bool)

(declare-fun e!836992 () Bool)

(assert (=> b!1305116 (=> (not res!585132) (not e!836992))))

(declare-fun call!89166 () Bool)

(assert (=> b!1305116 (= res!585132 (not call!89166))))

(declare-fun b!1305117 () Bool)

(declare-fun e!836998 () Bool)

(declare-fun lt!429252 () Bool)

(assert (=> b!1305117 (= e!836998 (not lt!429252))))

(declare-fun bm!89161 () Bool)

(assert (=> bm!89161 (= call!89166 (isEmpty!7786 (tail!1866 lt!429008)))))

(declare-fun b!1305118 () Bool)

(declare-fun res!585136 () Bool)

(declare-fun e!836995 () Bool)

(assert (=> b!1305118 (=> res!585136 e!836995)))

(assert (=> b!1305118 (= res!585136 (not (isEmpty!7786 (tail!1866 (tail!1866 lt!429008)))))))

(declare-fun b!1305119 () Bool)

(declare-fun e!836996 () Bool)

(assert (=> b!1305119 (= e!836996 e!836998)))

(declare-fun c!214457 () Bool)

(assert (=> b!1305119 (= c!214457 ((_ is EmptyLang!3589) (derivativeStep!889 lt!429022 (head!2240 lt!429008))))))

(declare-fun b!1305120 () Bool)

(declare-fun e!836997 () Bool)

(assert (=> b!1305120 (= e!836997 (nullable!1137 (derivativeStep!889 lt!429022 (head!2240 lt!429008))))))

(declare-fun d!367920 () Bool)

(assert (=> d!367920 e!836996))

(declare-fun c!214458 () Bool)

(assert (=> d!367920 (= c!214458 ((_ is EmptyExpr!3589) (derivativeStep!889 lt!429022 (head!2240 lt!429008))))))

(assert (=> d!367920 (= lt!429252 e!836997)))

(declare-fun c!214456 () Bool)

(assert (=> d!367920 (= c!214456 (isEmpty!7786 (tail!1866 lt!429008)))))

(assert (=> d!367920 (validRegex!1539 (derivativeStep!889 lt!429022 (head!2240 lt!429008)))))

(assert (=> d!367920 (= (matchR!1591 (derivativeStep!889 lt!429022 (head!2240 lt!429008)) (tail!1866 lt!429008)) lt!429252)))

(declare-fun b!1305121 () Bool)

(declare-fun res!585131 () Bool)

(declare-fun e!836993 () Bool)

(assert (=> b!1305121 (=> res!585131 e!836993)))

(assert (=> b!1305121 (= res!585131 (not ((_ is ElementMatch!3589) (derivativeStep!889 lt!429022 (head!2240 lt!429008)))))))

(assert (=> b!1305121 (= e!836998 e!836993)))

(declare-fun b!1305122 () Bool)

(assert (=> b!1305122 (= e!836995 (not (= (head!2240 (tail!1866 lt!429008)) (c!214293 (derivativeStep!889 lt!429022 (head!2240 lt!429008))))))))

(declare-fun b!1305123 () Bool)

(assert (=> b!1305123 (= e!836997 (matchR!1591 (derivativeStep!889 (derivativeStep!889 lt!429022 (head!2240 lt!429008)) (head!2240 (tail!1866 lt!429008))) (tail!1866 (tail!1866 lt!429008))))))

(declare-fun b!1305124 () Bool)

(declare-fun res!585130 () Bool)

(assert (=> b!1305124 (=> (not res!585130) (not e!836992))))

(assert (=> b!1305124 (= res!585130 (isEmpty!7786 (tail!1866 (tail!1866 lt!429008))))))

(declare-fun b!1305125 () Bool)

(declare-fun e!836994 () Bool)

(assert (=> b!1305125 (= e!836994 e!836995)))

(declare-fun res!585134 () Bool)

(assert (=> b!1305125 (=> res!585134 e!836995)))

(assert (=> b!1305125 (= res!585134 call!89166)))

(declare-fun b!1305126 () Bool)

(assert (=> b!1305126 (= e!836993 e!836994)))

(declare-fun res!585135 () Bool)

(assert (=> b!1305126 (=> (not res!585135) (not e!836994))))

(assert (=> b!1305126 (= res!585135 (not lt!429252))))

(declare-fun b!1305127 () Bool)

(assert (=> b!1305127 (= e!836992 (= (head!2240 (tail!1866 lt!429008)) (c!214293 (derivativeStep!889 lt!429022 (head!2240 lt!429008)))))))

(declare-fun b!1305128 () Bool)

(assert (=> b!1305128 (= e!836996 (= lt!429252 call!89166))))

(declare-fun b!1305129 () Bool)

(declare-fun res!585133 () Bool)

(assert (=> b!1305129 (=> res!585133 e!836993)))

(assert (=> b!1305129 (= res!585133 e!836992)))

(declare-fun res!585129 () Bool)

(assert (=> b!1305129 (=> (not res!585129) (not e!836992))))

(assert (=> b!1305129 (= res!585129 lt!429252)))

(assert (= (and d!367920 c!214456) b!1305120))

(assert (= (and d!367920 (not c!214456)) b!1305123))

(assert (= (and d!367920 c!214458) b!1305128))

(assert (= (and d!367920 (not c!214458)) b!1305119))

(assert (= (and b!1305119 c!214457) b!1305117))

(assert (= (and b!1305119 (not c!214457)) b!1305121))

(assert (= (and b!1305121 (not res!585131)) b!1305129))

(assert (= (and b!1305129 res!585129) b!1305116))

(assert (= (and b!1305116 res!585132) b!1305124))

(assert (= (and b!1305124 res!585130) b!1305127))

(assert (= (and b!1305129 (not res!585133)) b!1305126))

(assert (= (and b!1305126 res!585135) b!1305125))

(assert (= (and b!1305125 (not res!585134)) b!1305118))

(assert (= (and b!1305118 (not res!585136)) b!1305122))

(assert (= (or b!1305128 b!1305116 b!1305125) bm!89161))

(assert (=> b!1305120 m!1456055))

(declare-fun m!1456531 () Bool)

(assert (=> b!1305120 m!1456531))

(assert (=> b!1305118 m!1455783))

(declare-fun m!1456533 () Bool)

(assert (=> b!1305118 m!1456533))

(assert (=> b!1305118 m!1456533))

(declare-fun m!1456535 () Bool)

(assert (=> b!1305118 m!1456535))

(assert (=> d!367920 m!1455783))

(assert (=> d!367920 m!1456047))

(assert (=> d!367920 m!1456055))

(declare-fun m!1456537 () Bool)

(assert (=> d!367920 m!1456537))

(assert (=> b!1305122 m!1455783))

(declare-fun m!1456539 () Bool)

(assert (=> b!1305122 m!1456539))

(assert (=> bm!89161 m!1455783))

(assert (=> bm!89161 m!1456047))

(assert (=> b!1305127 m!1455783))

(assert (=> b!1305127 m!1456539))

(assert (=> b!1305124 m!1455783))

(assert (=> b!1305124 m!1456533))

(assert (=> b!1305124 m!1456533))

(assert (=> b!1305124 m!1456535))

(assert (=> b!1305123 m!1455783))

(assert (=> b!1305123 m!1456539))

(assert (=> b!1305123 m!1456055))

(assert (=> b!1305123 m!1456539))

(declare-fun m!1456541 () Bool)

(assert (=> b!1305123 m!1456541))

(assert (=> b!1305123 m!1455783))

(assert (=> b!1305123 m!1456533))

(assert (=> b!1305123 m!1456541))

(assert (=> b!1305123 m!1456533))

(declare-fun m!1456543 () Bool)

(assert (=> b!1305123 m!1456543))

(assert (=> b!1304685 d!367920))

(declare-fun b!1305164 () Bool)

(declare-fun e!837019 () Regex!3589)

(declare-fun e!837017 () Regex!3589)

(assert (=> b!1305164 (= e!837019 e!837017)))

(declare-fun c!214476 () Bool)

(assert (=> b!1305164 (= c!214476 ((_ is ElementMatch!3589) lt!429022))))

(declare-fun b!1305165 () Bool)

(declare-fun e!837020 () Regex!3589)

(declare-fun call!89177 () Regex!3589)

(assert (=> b!1305165 (= e!837020 (Concat!5955 call!89177 lt!429022))))

(declare-fun bm!89170 () Bool)

(declare-fun call!89175 () Regex!3589)

(assert (=> bm!89170 (= call!89177 call!89175)))

(declare-fun c!214475 () Bool)

(declare-fun c!214479 () Bool)

(declare-fun bm!89171 () Bool)

(declare-fun c!214478 () Bool)

(assert (=> bm!89171 (= call!89175 (derivativeStep!889 (ite c!214479 (regOne!7691 lt!429022) (ite c!214475 (reg!3918 lt!429022) (ite c!214478 (regTwo!7690 lt!429022) (regOne!7690 lt!429022)))) (head!2240 lt!429008)))))

(declare-fun b!1305166 () Bool)

(assert (=> b!1305166 (= c!214478 (nullable!1137 (regOne!7690 lt!429022)))))

(declare-fun e!837018 () Regex!3589)

(assert (=> b!1305166 (= e!837020 e!837018)))

(declare-fun d!367922 () Bool)

(declare-fun lt!429323 () Regex!3589)

(assert (=> d!367922 (validRegex!1539 lt!429323)))

(assert (=> d!367922 (= lt!429323 e!837019)))

(declare-fun c!214477 () Bool)

(assert (=> d!367922 (= c!214477 (or ((_ is EmptyExpr!3589) lt!429022) ((_ is EmptyLang!3589) lt!429022)))))

(assert (=> d!367922 (validRegex!1539 lt!429022)))

(assert (=> d!367922 (= (derivativeStep!889 lt!429022 (head!2240 lt!429008)) lt!429323)))

(declare-fun bm!89172 () Bool)

(declare-fun call!89178 () Regex!3589)

(assert (=> bm!89172 (= call!89178 call!89177)))

(declare-fun b!1305167 () Bool)

(declare-fun e!837021 () Regex!3589)

(declare-fun call!89176 () Regex!3589)

(assert (=> b!1305167 (= e!837021 (Union!3589 call!89175 call!89176))))

(declare-fun b!1305168 () Bool)

(assert (=> b!1305168 (= e!837018 (Union!3589 (Concat!5955 call!89178 (regTwo!7690 lt!429022)) EmptyLang!3589))))

(declare-fun b!1305169 () Bool)

(assert (=> b!1305169 (= e!837017 (ite (= (head!2240 lt!429008) (c!214293 lt!429022)) EmptyExpr!3589 EmptyLang!3589))))

(declare-fun b!1305170 () Bool)

(assert (=> b!1305170 (= e!837021 e!837020)))

(assert (=> b!1305170 (= c!214475 ((_ is Star!3589) lt!429022))))

(declare-fun b!1305171 () Bool)

(assert (=> b!1305171 (= e!837018 (Union!3589 (Concat!5955 call!89176 (regTwo!7690 lt!429022)) call!89178))))

(declare-fun b!1305172 () Bool)

(assert (=> b!1305172 (= e!837019 EmptyLang!3589)))

(declare-fun b!1305173 () Bool)

(assert (=> b!1305173 (= c!214479 ((_ is Union!3589) lt!429022))))

(assert (=> b!1305173 (= e!837017 e!837021)))

(declare-fun bm!89173 () Bool)

(assert (=> bm!89173 (= call!89176 (derivativeStep!889 (ite c!214479 (regTwo!7691 lt!429022) (regOne!7690 lt!429022)) (head!2240 lt!429008)))))

(assert (= (and d!367922 c!214477) b!1305172))

(assert (= (and d!367922 (not c!214477)) b!1305164))

(assert (= (and b!1305164 c!214476) b!1305169))

(assert (= (and b!1305164 (not c!214476)) b!1305173))

(assert (= (and b!1305173 c!214479) b!1305167))

(assert (= (and b!1305173 (not c!214479)) b!1305170))

(assert (= (and b!1305170 c!214475) b!1305165))

(assert (= (and b!1305170 (not c!214475)) b!1305166))

(assert (= (and b!1305166 c!214478) b!1305171))

(assert (= (and b!1305166 (not c!214478)) b!1305168))

(assert (= (or b!1305171 b!1305168) bm!89172))

(assert (= (or b!1305165 bm!89172) bm!89170))

(assert (= (or b!1305167 bm!89170) bm!89171))

(assert (= (or b!1305167 b!1305171) bm!89173))

(assert (=> bm!89171 m!1456053))

(declare-fun m!1456545 () Bool)

(assert (=> bm!89171 m!1456545))

(declare-fun m!1456547 () Bool)

(assert (=> b!1305166 m!1456547))

(declare-fun m!1456549 () Bool)

(assert (=> d!367922 m!1456549))

(assert (=> d!367922 m!1456051))

(assert (=> bm!89173 m!1456053))

(declare-fun m!1456551 () Bool)

(assert (=> bm!89173 m!1456551))

(assert (=> b!1304685 d!367922))

(declare-fun d!367924 () Bool)

(assert (=> d!367924 (= (head!2240 lt!429008) (h!18557 lt!429008))))

(assert (=> b!1304685 d!367924))

(declare-fun d!367926 () Bool)

(assert (=> d!367926 (= (tail!1866 lt!429008) (t!117783 lt!429008))))

(assert (=> b!1304685 d!367926))

(declare-fun d!367928 () Bool)

(declare-fun res!585139 () Bool)

(declare-fun e!837022 () Bool)

(assert (=> d!367928 (=> res!585139 e!837022)))

(assert (=> d!367928 (= res!585139 (not ((_ is Cons!13158) (t!117785 rules!2550))))))

(assert (=> d!367928 (= (sepAndNonSepRulesDisjointChars!648 rules!2550 (t!117785 rules!2550)) e!837022)))

(declare-fun b!1305174 () Bool)

(declare-fun e!837023 () Bool)

(assert (=> b!1305174 (= e!837022 e!837023)))

(declare-fun res!585140 () Bool)

(assert (=> b!1305174 (=> (not res!585140) (not e!837023))))

(assert (=> b!1305174 (= res!585140 (ruleDisjointCharsFromAllFromOtherType!302 (h!18559 (t!117785 rules!2550)) rules!2550))))

(declare-fun b!1305175 () Bool)

(assert (=> b!1305175 (= e!837023 (sepAndNonSepRulesDisjointChars!648 rules!2550 (t!117785 (t!117785 rules!2550))))))

(assert (= (and d!367928 (not res!585139)) b!1305174))

(assert (= (and b!1305174 res!585140) b!1305175))

(declare-fun m!1456553 () Bool)

(assert (=> b!1305174 m!1456553))

(declare-fun m!1456555 () Bool)

(assert (=> b!1305175 m!1456555))

(assert (=> b!1304786 d!367928))

(declare-fun d!367930 () Bool)

(declare-fun charsToBigInt!0 (List!13223 Int) Int)

(assert (=> d!367930 (= (inv!15 (value!74470 t1!34)) (= (charsToBigInt!0 (text!17004 (value!74470 t1!34)) 0) (value!74465 (value!74470 t1!34))))))

(declare-fun bs!329479 () Bool)

(assert (= bs!329479 d!367930))

(declare-fun m!1456557 () Bool)

(assert (=> bs!329479 m!1456557))

(assert (=> b!1304468 d!367930))

(declare-fun d!367932 () Bool)

(declare-fun res!585146 () Bool)

(declare-fun e!837030 () Bool)

(assert (=> d!367932 (=> (not res!585146) (not e!837030))))

(assert (=> d!367932 (= res!585146 (validRegex!1539 (regex!2275 (h!18559 rules!2550))))))

(assert (=> d!367932 (= (ruleValid!553 thiss!19762 (h!18559 rules!2550)) e!837030)))

(declare-fun b!1305187 () Bool)

(declare-fun res!585147 () Bool)

(assert (=> b!1305187 (=> (not res!585147) (not e!837030))))

(assert (=> b!1305187 (= res!585147 (not (nullable!1137 (regex!2275 (h!18559 rules!2550)))))))

(declare-fun b!1305188 () Bool)

(assert (=> b!1305188 (= e!837030 (not (= (tag!2537 (h!18559 rules!2550)) (String!16062 ""))))))

(assert (= (and d!367932 res!585146) b!1305187))

(assert (= (and b!1305187 res!585147) b!1305188))

(declare-fun m!1456579 () Bool)

(assert (=> d!367932 m!1456579))

(declare-fun m!1456583 () Bool)

(assert (=> b!1305187 m!1456583))

(assert (=> b!1304799 d!367932))

(declare-fun d!367934 () Bool)

(declare-fun charsToInt!0 (List!13223) (_ BitVec 32))

(assert (=> d!367934 (= (inv!16 (value!74470 t2!34)) (= (charsToInt!0 (text!17002 (value!74470 t2!34))) (value!74461 (value!74470 t2!34))))))

(declare-fun bs!329480 () Bool)

(assert (= bs!329480 d!367934))

(declare-fun m!1456637 () Bool)

(assert (=> bs!329480 m!1456637))

(assert (=> b!1304424 d!367934))

(declare-fun d!367936 () Bool)

(declare-fun c!214483 () Bool)

(assert (=> d!367936 (= c!214483 (isEmpty!7786 (tail!1866 lt!429015)))))

(declare-fun e!837031 () Bool)

(assert (=> d!367936 (= (prefixMatch!102 (derivativeStep!889 lt!429022 (head!2240 lt!429015)) (tail!1866 lt!429015)) e!837031)))

(declare-fun b!1305189 () Bool)

(assert (=> b!1305189 (= e!837031 (not (lostCause!266 (derivativeStep!889 lt!429022 (head!2240 lt!429015)))))))

(declare-fun b!1305190 () Bool)

(assert (=> b!1305190 (= e!837031 (prefixMatch!102 (derivativeStep!889 (derivativeStep!889 lt!429022 (head!2240 lt!429015)) (head!2240 (tail!1866 lt!429015))) (tail!1866 (tail!1866 lt!429015))))))

(assert (= (and d!367936 c!214483) b!1305189))

(assert (= (and d!367936 (not c!214483)) b!1305190))

(assert (=> d!367936 m!1456175))

(declare-fun m!1456649 () Bool)

(assert (=> d!367936 m!1456649))

(assert (=> b!1305189 m!1456173))

(declare-fun m!1456653 () Bool)

(assert (=> b!1305189 m!1456653))

(assert (=> b!1305190 m!1456175))

(declare-fun m!1456657 () Bool)

(assert (=> b!1305190 m!1456657))

(assert (=> b!1305190 m!1456173))

(assert (=> b!1305190 m!1456657))

(declare-fun m!1456661 () Bool)

(assert (=> b!1305190 m!1456661))

(assert (=> b!1305190 m!1456175))

(declare-fun m!1456663 () Bool)

(assert (=> b!1305190 m!1456663))

(assert (=> b!1305190 m!1456661))

(assert (=> b!1305190 m!1456663))

(declare-fun m!1456665 () Bool)

(assert (=> b!1305190 m!1456665))

(assert (=> b!1304808 d!367936))

(declare-fun b!1305191 () Bool)

(declare-fun e!837034 () Regex!3589)

(declare-fun e!837032 () Regex!3589)

(assert (=> b!1305191 (= e!837034 e!837032)))

(declare-fun c!214485 () Bool)

(assert (=> b!1305191 (= c!214485 ((_ is ElementMatch!3589) lt!429022))))

(declare-fun b!1305192 () Bool)

(declare-fun e!837035 () Regex!3589)

(declare-fun call!89181 () Regex!3589)

(assert (=> b!1305192 (= e!837035 (Concat!5955 call!89181 lt!429022))))

(declare-fun bm!89174 () Bool)

(declare-fun call!89179 () Regex!3589)

(assert (=> bm!89174 (= call!89181 call!89179)))

(declare-fun c!214484 () Bool)

(declare-fun c!214488 () Bool)

(declare-fun c!214487 () Bool)

(declare-fun bm!89175 () Bool)

(assert (=> bm!89175 (= call!89179 (derivativeStep!889 (ite c!214488 (regOne!7691 lt!429022) (ite c!214484 (reg!3918 lt!429022) (ite c!214487 (regTwo!7690 lt!429022) (regOne!7690 lt!429022)))) (head!2240 lt!429015)))))

(declare-fun b!1305193 () Bool)

(assert (=> b!1305193 (= c!214487 (nullable!1137 (regOne!7690 lt!429022)))))

(declare-fun e!837033 () Regex!3589)

(assert (=> b!1305193 (= e!837035 e!837033)))

(declare-fun d!367940 () Bool)

(declare-fun lt!429358 () Regex!3589)

(assert (=> d!367940 (validRegex!1539 lt!429358)))

(assert (=> d!367940 (= lt!429358 e!837034)))

(declare-fun c!214486 () Bool)

(assert (=> d!367940 (= c!214486 (or ((_ is EmptyExpr!3589) lt!429022) ((_ is EmptyLang!3589) lt!429022)))))

(assert (=> d!367940 (validRegex!1539 lt!429022)))

(assert (=> d!367940 (= (derivativeStep!889 lt!429022 (head!2240 lt!429015)) lt!429358)))

(declare-fun bm!89176 () Bool)

(declare-fun call!89182 () Regex!3589)

(assert (=> bm!89176 (= call!89182 call!89181)))

(declare-fun b!1305194 () Bool)

(declare-fun e!837036 () Regex!3589)

(declare-fun call!89180 () Regex!3589)

(assert (=> b!1305194 (= e!837036 (Union!3589 call!89179 call!89180))))

(declare-fun b!1305195 () Bool)

(assert (=> b!1305195 (= e!837033 (Union!3589 (Concat!5955 call!89182 (regTwo!7690 lt!429022)) EmptyLang!3589))))

(declare-fun b!1305196 () Bool)

(assert (=> b!1305196 (= e!837032 (ite (= (head!2240 lt!429015) (c!214293 lt!429022)) EmptyExpr!3589 EmptyLang!3589))))

(declare-fun b!1305197 () Bool)

(assert (=> b!1305197 (= e!837036 e!837035)))

(assert (=> b!1305197 (= c!214484 ((_ is Star!3589) lt!429022))))

(declare-fun b!1305198 () Bool)

(assert (=> b!1305198 (= e!837033 (Union!3589 (Concat!5955 call!89180 (regTwo!7690 lt!429022)) call!89182))))

(declare-fun b!1305199 () Bool)

(assert (=> b!1305199 (= e!837034 EmptyLang!3589)))

(declare-fun b!1305200 () Bool)

(assert (=> b!1305200 (= c!214488 ((_ is Union!3589) lt!429022))))

(assert (=> b!1305200 (= e!837032 e!837036)))

(declare-fun bm!89177 () Bool)

(assert (=> bm!89177 (= call!89180 (derivativeStep!889 (ite c!214488 (regTwo!7691 lt!429022) (regOne!7690 lt!429022)) (head!2240 lt!429015)))))

(assert (= (and d!367940 c!214486) b!1305199))

(assert (= (and d!367940 (not c!214486)) b!1305191))

(assert (= (and b!1305191 c!214485) b!1305196))

(assert (= (and b!1305191 (not c!214485)) b!1305200))

(assert (= (and b!1305200 c!214488) b!1305194))

(assert (= (and b!1305200 (not c!214488)) b!1305197))

(assert (= (and b!1305197 c!214484) b!1305192))

(assert (= (and b!1305197 (not c!214484)) b!1305193))

(assert (= (and b!1305193 c!214487) b!1305198))

(assert (= (and b!1305193 (not c!214487)) b!1305195))

(assert (= (or b!1305198 b!1305195) bm!89176))

(assert (= (or b!1305192 bm!89176) bm!89174))

(assert (= (or b!1305194 bm!89174) bm!89175))

(assert (= (or b!1305194 b!1305198) bm!89177))

(assert (=> bm!89175 m!1456171))

(declare-fun m!1456667 () Bool)

(assert (=> bm!89175 m!1456667))

(assert (=> b!1305193 m!1456547))

(declare-fun m!1456669 () Bool)

(assert (=> d!367940 m!1456669))

(assert (=> d!367940 m!1456051))

(assert (=> bm!89177 m!1456171))

(declare-fun m!1456671 () Bool)

(assert (=> bm!89177 m!1456671))

(assert (=> b!1304808 d!367940))

(declare-fun d!367942 () Bool)

(assert (=> d!367942 (= (head!2240 lt!429015) (h!18557 lt!429015))))

(assert (=> b!1304808 d!367942))

(declare-fun d!367944 () Bool)

(assert (=> d!367944 (= (tail!1866 lt!429015) (t!117783 lt!429015))))

(assert (=> b!1304808 d!367944))

(declare-fun d!367946 () Bool)

(assert (=> d!367946 (= (head!2242 rules!2550) (h!18559 rules!2550))))

(assert (=> b!1304846 d!367946))

(declare-fun d!367948 () Bool)

(declare-fun lt!429359 () Bool)

(assert (=> d!367948 (= lt!429359 (select (content!1843 (t!117783 lt!429008)) lt!429010))))

(declare-fun e!837038 () Bool)

(assert (=> d!367948 (= lt!429359 e!837038)))

(declare-fun res!585148 () Bool)

(assert (=> d!367948 (=> (not res!585148) (not e!837038))))

(assert (=> d!367948 (= res!585148 ((_ is Cons!13156) (t!117783 lt!429008)))))

(assert (=> d!367948 (= (contains!2234 (t!117783 lt!429008) lt!429010) lt!429359)))

(declare-fun b!1305201 () Bool)

(declare-fun e!837037 () Bool)

(assert (=> b!1305201 (= e!837038 e!837037)))

(declare-fun res!585149 () Bool)

(assert (=> b!1305201 (=> res!585149 e!837037)))

(assert (=> b!1305201 (= res!585149 (= (h!18557 (t!117783 lt!429008)) lt!429010))))

(declare-fun b!1305202 () Bool)

(assert (=> b!1305202 (= e!837037 (contains!2234 (t!117783 (t!117783 lt!429008)) lt!429010))))

(assert (= (and d!367948 res!585148) b!1305201))

(assert (= (and b!1305201 (not res!585149)) b!1305202))

(declare-fun m!1456673 () Bool)

(assert (=> d!367948 m!1456673))

(declare-fun m!1456675 () Bool)

(assert (=> d!367948 m!1456675))

(declare-fun m!1456677 () Bool)

(assert (=> b!1305202 m!1456677))

(assert (=> b!1304426 d!367948))

(assert (=> b!1304689 d!367924))

(declare-fun d!367950 () Bool)

(declare-fun c!214491 () Bool)

(assert (=> d!367950 (= c!214491 ((_ is Node!4320) (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (value!74470 t2!34)))))))

(declare-fun e!837047 () Bool)

(assert (=> d!367950 (= (inv!17567 (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (value!74470 t2!34)))) e!837047)))

(declare-fun b!1305221 () Bool)

(declare-fun inv!17571 (Conc!4320) Bool)

(assert (=> b!1305221 (= e!837047 (inv!17571 (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (value!74470 t2!34)))))))

(declare-fun b!1305222 () Bool)

(declare-fun e!837048 () Bool)

(assert (=> b!1305222 (= e!837047 e!837048)))

(declare-fun res!585164 () Bool)

(assert (=> b!1305222 (= res!585164 (not ((_ is Leaf!6654) (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (value!74470 t2!34))))))))

(assert (=> b!1305222 (=> res!585164 e!837048)))

(declare-fun b!1305223 () Bool)

(declare-fun inv!17572 (Conc!4320) Bool)

(assert (=> b!1305223 (= e!837048 (inv!17572 (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (value!74470 t2!34)))))))

(assert (= (and d!367950 c!214491) b!1305221))

(assert (= (and d!367950 (not c!214491)) b!1305222))

(assert (= (and b!1305222 (not res!585164)) b!1305223))

(declare-fun m!1456679 () Bool)

(assert (=> b!1305221 m!1456679))

(declare-fun m!1456681 () Bool)

(assert (=> b!1305223 m!1456681))

(assert (=> b!1304647 d!367950))

(declare-fun d!367952 () Bool)

(declare-fun c!214494 () Bool)

(assert (=> d!367952 (= c!214494 ((_ is Nil!13156) lt!429008))))

(declare-fun e!837053 () (InoxSet C!7468))

(assert (=> d!367952 (= (content!1843 lt!429008) e!837053)))

(declare-fun b!1305234 () Bool)

(assert (=> b!1305234 (= e!837053 ((as const (Array C!7468 Bool)) false))))

(declare-fun b!1305235 () Bool)

(assert (=> b!1305235 (= e!837053 ((_ map or) (store ((as const (Array C!7468 Bool)) false) (h!18557 lt!429008) true) (content!1843 (t!117783 lt!429008))))))

(assert (= (and d!367952 c!214494) b!1305234))

(assert (= (and d!367952 (not c!214494)) b!1305235))

(declare-fun m!1456695 () Bool)

(assert (=> b!1305235 m!1456695))

(assert (=> b!1305235 m!1456673))

(assert (=> d!367586 d!367952))

(declare-fun d!367956 () Bool)

(declare-fun lt!429362 () Int)

(assert (=> d!367956 (>= lt!429362 0)))

(declare-fun e!837064 () Int)

(assert (=> d!367956 (= lt!429362 e!837064)))

(declare-fun c!214500 () Bool)

(assert (=> d!367956 (= c!214500 ((_ is Nil!13156) lt!429068))))

(assert (=> d!367956 (= (size!10722 lt!429068) lt!429362)))

(declare-fun b!1305251 () Bool)

(assert (=> b!1305251 (= e!837064 0)))

(declare-fun b!1305252 () Bool)

(assert (=> b!1305252 (= e!837064 (+ 1 (size!10722 (t!117783 lt!429068))))))

(assert (= (and d!367956 c!214500) b!1305251))

(assert (= (and d!367956 (not c!214500)) b!1305252))

(declare-fun m!1456711 () Bool)

(assert (=> b!1305252 m!1456711))

(assert (=> b!1304448 d!367956))

(declare-fun d!367966 () Bool)

(declare-fun lt!429363 () Int)

(assert (=> d!367966 (>= lt!429363 0)))

(declare-fun e!837067 () Int)

(assert (=> d!367966 (= lt!429363 e!837067)))

(declare-fun c!214503 () Bool)

(assert (=> d!367966 (= c!214503 ((_ is Nil!13156) lt!429015))))

(assert (=> d!367966 (= (size!10722 lt!429015) lt!429363)))

(declare-fun b!1305256 () Bool)

(assert (=> b!1305256 (= e!837067 0)))

(declare-fun b!1305258 () Bool)

(assert (=> b!1305258 (= e!837067 (+ 1 (size!10722 (t!117783 lt!429015))))))

(assert (= (and d!367966 c!214503) b!1305256))

(assert (= (and d!367966 (not c!214503)) b!1305258))

(declare-fun m!1456713 () Bool)

(assert (=> b!1305258 m!1456713))

(assert (=> b!1304448 d!367966))

(declare-fun d!367970 () Bool)

(declare-fun lt!429364 () Int)

(assert (=> d!367970 (>= lt!429364 0)))

(declare-fun e!837068 () Int)

(assert (=> d!367970 (= lt!429364 e!837068)))

(declare-fun c!214504 () Bool)

(assert (=> d!367970 (= c!214504 ((_ is Nil!13156) (getSuffix!445 lt!429008 lt!429015)))))

(assert (=> d!367970 (= (size!10722 (getSuffix!445 lt!429008 lt!429015)) lt!429364)))

(declare-fun b!1305259 () Bool)

(assert (=> b!1305259 (= e!837068 0)))

(declare-fun b!1305260 () Bool)

(assert (=> b!1305260 (= e!837068 (+ 1 (size!10722 (t!117783 (getSuffix!445 lt!429008 lt!429015)))))))

(assert (= (and d!367970 c!214504) b!1305259))

(assert (= (and d!367970 (not c!214504)) b!1305260))

(declare-fun m!1456719 () Bool)

(assert (=> b!1305260 m!1456719))

(assert (=> b!1304448 d!367970))

(declare-fun d!367974 () Bool)

(declare-fun lt!429366 () Int)

(assert (=> d!367974 (= lt!429366 (size!10722 (list!4927 lt!429020)))))

(assert (=> d!367974 (= lt!429366 (size!10728 (c!214292 lt!429020)))))

(assert (=> d!367974 (= (size!10717 lt!429020) lt!429366)))

(declare-fun bs!329482 () Bool)

(assert (= bs!329482 d!367974))

(assert (=> bs!329482 m!1455485))

(assert (=> bs!329482 m!1455485))

(declare-fun m!1456721 () Bool)

(assert (=> bs!329482 m!1456721))

(declare-fun m!1456723 () Bool)

(assert (=> bs!329482 m!1456723))

(assert (=> b!1304636 d!367974))

(declare-fun d!367976 () Bool)

(assert (=> d!367976 true))

(assert (=> d!367976 true))

(declare-fun res!585189 () Bool)

(assert (=> d!367976 (= (choose!7991 lambda!52006) res!585189)))

(assert (=> d!367712 d!367976))

(declare-fun d!367980 () Bool)

(declare-fun lt!429367 () Bool)

(assert (=> d!367980 (= lt!429367 (select (content!1843 (t!117783 lt!429008)) lt!429009))))

(declare-fun e!837077 () Bool)

(assert (=> d!367980 (= lt!429367 e!837077)))

(declare-fun res!585190 () Bool)

(assert (=> d!367980 (=> (not res!585190) (not e!837077))))

(assert (=> d!367980 (= res!585190 ((_ is Cons!13156) (t!117783 lt!429008)))))

(assert (=> d!367980 (= (contains!2234 (t!117783 lt!429008) lt!429009) lt!429367)))

(declare-fun b!1305275 () Bool)

(declare-fun e!837076 () Bool)

(assert (=> b!1305275 (= e!837077 e!837076)))

(declare-fun res!585191 () Bool)

(assert (=> b!1305275 (=> res!585191 e!837076)))

(assert (=> b!1305275 (= res!585191 (= (h!18557 (t!117783 lt!429008)) lt!429009))))

(declare-fun b!1305276 () Bool)

(assert (=> b!1305276 (= e!837076 (contains!2234 (t!117783 (t!117783 lt!429008)) lt!429009))))

(assert (= (and d!367980 res!585190) b!1305275))

(assert (= (and b!1305275 (not res!585191)) b!1305276))

(assert (=> d!367980 m!1456673))

(declare-fun m!1456733 () Bool)

(assert (=> d!367980 m!1456733))

(declare-fun m!1456735 () Bool)

(assert (=> b!1305276 m!1456735))

(assert (=> b!1304394 d!367980))

(declare-fun d!367984 () Bool)

(assert (=> d!367984 true))

(declare-fun order!7953 () Int)

(declare-fun lambda!52099 () Int)

(declare-fun dynLambda!5736 (Int Int) Int)

(assert (=> d!367984 (< (dynLambda!5735 order!7951 (toValue!3490 (transformation!2275 (rule!4014 t2!34)))) (dynLambda!5736 order!7953 lambda!52099))))

(declare-fun Forall2!415 (Int) Bool)

(assert (=> d!367984 (= (equivClasses!817 (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (toValue!3490 (transformation!2275 (rule!4014 t2!34)))) (Forall2!415 lambda!52099))))

(declare-fun bs!329492 () Bool)

(assert (= bs!329492 d!367984))

(declare-fun m!1456777 () Bool)

(assert (=> bs!329492 m!1456777))

(assert (=> b!1304602 d!367984))

(declare-fun d!367998 () Bool)

(assert (=> d!367998 (= (list!4926 (_1!7258 lt!429197)) (list!4931 (c!214294 (_1!7258 lt!429197))))))

(declare-fun bs!329494 () Bool)

(assert (= bs!329494 d!367998))

(declare-fun m!1456779 () Bool)

(assert (=> bs!329494 m!1456779))

(assert (=> b!1304824 d!367998))

(assert (=> b!1304824 d!367566))

(assert (=> b!1304824 d!367574))

(declare-fun d!368000 () Bool)

(declare-fun isBalanced!1264 (Conc!4320) Bool)

(assert (=> d!368000 (= (inv!17568 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (value!74470 t2!34))) (isBalanced!1264 (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (value!74470 t2!34)))))))

(declare-fun bs!329495 () Bool)

(assert (= bs!329495 d!368000))

(declare-fun m!1456787 () Bool)

(assert (=> bs!329495 m!1456787))

(assert (=> tb!69629 d!368000))

(declare-fun d!368004 () Bool)

(declare-fun lt!429373 () Int)

(assert (=> d!368004 (>= lt!429373 0)))

(declare-fun e!837089 () Int)

(assert (=> d!368004 (= lt!429373 e!837089)))

(declare-fun c!214509 () Bool)

(assert (=> d!368004 (= c!214509 ((_ is Nil!13156) (originalCharacters!3137 t2!34)))))

(assert (=> d!368004 (= (size!10722 (originalCharacters!3137 t2!34)) lt!429373)))

(declare-fun b!1305292 () Bool)

(assert (=> b!1305292 (= e!837089 0)))

(declare-fun b!1305293 () Bool)

(assert (=> b!1305293 (= e!837089 (+ 1 (size!10722 (t!117783 (originalCharacters!3137 t2!34)))))))

(assert (= (and d!368004 c!214509) b!1305292))

(assert (= (and d!368004 (not c!214509)) b!1305293))

(declare-fun m!1456789 () Bool)

(assert (=> b!1305293 m!1456789))

(assert (=> b!1304702 d!368004))

(declare-fun d!368006 () Bool)

(declare-fun c!214512 () Bool)

(assert (=> d!368006 (= c!214512 ((_ is Nil!13160) (map!2879 rules!2550 lambda!52007)))))

(declare-fun e!837098 () (InoxSet Regex!3589))

(assert (=> d!368006 (= (content!1845 (map!2879 rules!2550 lambda!52007)) e!837098)))

(declare-fun b!1305306 () Bool)

(assert (=> b!1305306 (= e!837098 ((as const (Array Regex!3589 Bool)) false))))

(declare-fun b!1305307 () Bool)

(assert (=> b!1305307 (= e!837098 ((_ map or) (store ((as const (Array Regex!3589 Bool)) false) (h!18561 (map!2879 rules!2550 lambda!52007)) true) (content!1845 (t!117787 (map!2879 rules!2550 lambda!52007)))))))

(assert (= (and d!368006 c!214512) b!1305306))

(assert (= (and d!368006 (not c!214512)) b!1305307))

(declare-fun m!1456791 () Bool)

(assert (=> b!1305307 m!1456791))

(declare-fun m!1456793 () Bool)

(assert (=> b!1305307 m!1456793))

(assert (=> d!367724 d!368006))

(declare-fun d!368008 () Bool)

(assert (=> d!368008 (= (list!4927 (_2!7258 lt!429197)) (list!4930 (c!214292 (_2!7258 lt!429197))))))

(declare-fun bs!329496 () Bool)

(assert (= bs!329496 d!368008))

(declare-fun m!1456795 () Bool)

(assert (=> bs!329496 m!1456795))

(assert (=> b!1304828 d!368008))

(assert (=> b!1304828 d!367566))

(assert (=> b!1304828 d!367574))

(declare-fun d!368010 () Bool)

(assert (=> d!368010 (= (inv!17568 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (value!74470 t1!34))) (isBalanced!1264 (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (value!74470 t1!34)))))))

(declare-fun bs!329497 () Bool)

(assert (= bs!329497 d!368010))

(declare-fun m!1456797 () Bool)

(assert (=> bs!329497 m!1456797))

(assert (=> tb!69635 d!368010))

(declare-fun b!1305308 () Bool)

(declare-fun res!585214 () Bool)

(declare-fun e!837099 () Bool)

(assert (=> b!1305308 (=> (not res!585214) (not e!837099))))

(declare-fun call!89187 () Bool)

(assert (=> b!1305308 (= res!585214 (not call!89187))))

(declare-fun b!1305309 () Bool)

(declare-fun e!837105 () Bool)

(declare-fun lt!429376 () Bool)

(assert (=> b!1305309 (= e!837105 (not lt!429376))))

(declare-fun bm!89182 () Bool)

(assert (=> bm!89182 (= call!89187 (isEmpty!7786 lt!429008))))

(declare-fun b!1305310 () Bool)

(declare-fun res!585218 () Bool)

(declare-fun e!837102 () Bool)

(assert (=> b!1305310 (=> res!585218 e!837102)))

(assert (=> b!1305310 (= res!585218 (not (isEmpty!7786 (tail!1866 lt!429008))))))

(declare-fun b!1305311 () Bool)

(declare-fun e!837103 () Bool)

(assert (=> b!1305311 (= e!837103 e!837105)))

(declare-fun c!214514 () Bool)

(assert (=> b!1305311 (= c!214514 ((_ is EmptyLang!3589) (h!18561 (map!2879 rules!2550 lambda!52007))))))

(declare-fun b!1305312 () Bool)

(declare-fun e!837104 () Bool)

(assert (=> b!1305312 (= e!837104 (nullable!1137 (h!18561 (map!2879 rules!2550 lambda!52007))))))

(declare-fun d!368012 () Bool)

(assert (=> d!368012 e!837103))

(declare-fun c!214515 () Bool)

(assert (=> d!368012 (= c!214515 ((_ is EmptyExpr!3589) (h!18561 (map!2879 rules!2550 lambda!52007))))))

(assert (=> d!368012 (= lt!429376 e!837104)))

(declare-fun c!214513 () Bool)

(assert (=> d!368012 (= c!214513 (isEmpty!7786 lt!429008))))

(assert (=> d!368012 (validRegex!1539 (h!18561 (map!2879 rules!2550 lambda!52007)))))

(assert (=> d!368012 (= (matchR!1591 (h!18561 (map!2879 rules!2550 lambda!52007)) lt!429008) lt!429376)))

(declare-fun b!1305313 () Bool)

(declare-fun res!585213 () Bool)

(declare-fun e!837100 () Bool)

(assert (=> b!1305313 (=> res!585213 e!837100)))

(assert (=> b!1305313 (= res!585213 (not ((_ is ElementMatch!3589) (h!18561 (map!2879 rules!2550 lambda!52007)))))))

(assert (=> b!1305313 (= e!837105 e!837100)))

(declare-fun b!1305314 () Bool)

(assert (=> b!1305314 (= e!837102 (not (= (head!2240 lt!429008) (c!214293 (h!18561 (map!2879 rules!2550 lambda!52007))))))))

(declare-fun b!1305315 () Bool)

(assert (=> b!1305315 (= e!837104 (matchR!1591 (derivativeStep!889 (h!18561 (map!2879 rules!2550 lambda!52007)) (head!2240 lt!429008)) (tail!1866 lt!429008)))))

(declare-fun b!1305316 () Bool)

(declare-fun res!585212 () Bool)

(assert (=> b!1305316 (=> (not res!585212) (not e!837099))))

(assert (=> b!1305316 (= res!585212 (isEmpty!7786 (tail!1866 lt!429008)))))

(declare-fun b!1305317 () Bool)

(declare-fun e!837101 () Bool)

(assert (=> b!1305317 (= e!837101 e!837102)))

(declare-fun res!585216 () Bool)

(assert (=> b!1305317 (=> res!585216 e!837102)))

(assert (=> b!1305317 (= res!585216 call!89187)))

(declare-fun b!1305318 () Bool)

(assert (=> b!1305318 (= e!837100 e!837101)))

(declare-fun res!585217 () Bool)

(assert (=> b!1305318 (=> (not res!585217) (not e!837101))))

(assert (=> b!1305318 (= res!585217 (not lt!429376))))

(declare-fun b!1305319 () Bool)

(assert (=> b!1305319 (= e!837099 (= (head!2240 lt!429008) (c!214293 (h!18561 (map!2879 rules!2550 lambda!52007)))))))

(declare-fun b!1305320 () Bool)

(assert (=> b!1305320 (= e!837103 (= lt!429376 call!89187))))

(declare-fun b!1305321 () Bool)

(declare-fun res!585215 () Bool)

(assert (=> b!1305321 (=> res!585215 e!837100)))

(assert (=> b!1305321 (= res!585215 e!837099)))

(declare-fun res!585211 () Bool)

(assert (=> b!1305321 (=> (not res!585211) (not e!837099))))

(assert (=> b!1305321 (= res!585211 lt!429376)))

(assert (= (and d!368012 c!214513) b!1305312))

(assert (= (and d!368012 (not c!214513)) b!1305315))

(assert (= (and d!368012 c!214515) b!1305320))

(assert (= (and d!368012 (not c!214515)) b!1305311))

(assert (= (and b!1305311 c!214514) b!1305309))

(assert (= (and b!1305311 (not c!214514)) b!1305313))

(assert (= (and b!1305313 (not res!585213)) b!1305321))

(assert (= (and b!1305321 res!585211) b!1305308))

(assert (= (and b!1305308 res!585214) b!1305316))

(assert (= (and b!1305316 res!585212) b!1305319))

(assert (= (and b!1305321 (not res!585215)) b!1305318))

(assert (= (and b!1305318 res!585217) b!1305317))

(assert (= (and b!1305317 (not res!585216)) b!1305310))

(assert (= (and b!1305310 (not res!585218)) b!1305314))

(assert (= (or b!1305320 b!1305308 b!1305317) bm!89182))

(declare-fun m!1456803 () Bool)

(assert (=> b!1305312 m!1456803))

(assert (=> b!1305310 m!1455783))

(assert (=> b!1305310 m!1455783))

(assert (=> b!1305310 m!1456047))

(assert (=> d!368012 m!1456049))

(assert (=> d!368012 m!1456251))

(assert (=> b!1305314 m!1456053))

(assert (=> bm!89182 m!1456049))

(assert (=> b!1305319 m!1456053))

(assert (=> b!1305316 m!1455783))

(assert (=> b!1305316 m!1455783))

(assert (=> b!1305316 m!1456047))

(assert (=> b!1305315 m!1456053))

(assert (=> b!1305315 m!1456053))

(declare-fun m!1456805 () Bool)

(assert (=> b!1305315 m!1456805))

(assert (=> b!1305315 m!1455783))

(assert (=> b!1305315 m!1456805))

(assert (=> b!1305315 m!1455783))

(declare-fun m!1456807 () Bool)

(assert (=> b!1305315 m!1456807))

(assert (=> b!1304890 d!368012))

(declare-fun d!368016 () Bool)

(declare-fun e!837110 () Bool)

(assert (=> d!368016 e!837110))

(declare-fun res!585223 () Bool)

(assert (=> d!368016 (=> (not res!585223) (not e!837110))))

(declare-fun lt!429378 () List!13222)

(assert (=> d!368016 (= res!585223 (= (content!1843 lt!429378) ((_ map or) (content!1843 lt!429015) (content!1843 lt!429075))))))

(declare-fun e!837109 () List!13222)

(assert (=> d!368016 (= lt!429378 e!837109)))

(declare-fun c!214516 () Bool)

(assert (=> d!368016 (= c!214516 ((_ is Nil!13156) lt!429015))))

(assert (=> d!368016 (= (++!3346 lt!429015 lt!429075) lt!429378)))

(declare-fun b!1305326 () Bool)

(assert (=> b!1305326 (= e!837109 lt!429075)))

(declare-fun b!1305329 () Bool)

(assert (=> b!1305329 (= e!837110 (or (not (= lt!429075 Nil!13156)) (= lt!429378 lt!429015)))))

(declare-fun b!1305327 () Bool)

(assert (=> b!1305327 (= e!837109 (Cons!13156 (h!18557 lt!429015) (++!3346 (t!117783 lt!429015) lt!429075)))))

(declare-fun b!1305328 () Bool)

(declare-fun res!585224 () Bool)

(assert (=> b!1305328 (=> (not res!585224) (not e!837110))))

(assert (=> b!1305328 (= res!585224 (= (size!10722 lt!429378) (+ (size!10722 lt!429015) (size!10722 lt!429075))))))

(assert (= (and d!368016 c!214516) b!1305326))

(assert (= (and d!368016 (not c!214516)) b!1305327))

(assert (= (and d!368016 res!585223) b!1305328))

(assert (= (and b!1305328 res!585224) b!1305329))

(declare-fun m!1456809 () Bool)

(assert (=> d!368016 m!1456809))

(assert (=> d!368016 m!1455737))

(declare-fun m!1456811 () Bool)

(assert (=> d!368016 m!1456811))

(declare-fun m!1456813 () Bool)

(assert (=> b!1305327 m!1456813))

(declare-fun m!1456815 () Bool)

(assert (=> b!1305328 m!1456815))

(assert (=> b!1305328 m!1455745))

(declare-fun m!1456817 () Bool)

(assert (=> b!1305328 m!1456817))

(assert (=> d!367606 d!368016))

(declare-fun d!368018 () Bool)

(declare-fun lt!429379 () Int)

(assert (=> d!368018 (>= lt!429379 0)))

(declare-fun e!837111 () Int)

(assert (=> d!368018 (= lt!429379 e!837111)))

(declare-fun c!214517 () Bool)

(assert (=> d!368018 (= c!214517 ((_ is Nil!13156) lt!429008))))

(assert (=> d!368018 (= (size!10722 lt!429008) lt!429379)))

(declare-fun b!1305330 () Bool)

(assert (=> b!1305330 (= e!837111 0)))

(declare-fun b!1305331 () Bool)

(assert (=> b!1305331 (= e!837111 (+ 1 (size!10722 (t!117783 lt!429008))))))

(assert (= (and d!368018 c!214517) b!1305330))

(assert (= (and d!368018 (not c!214517)) b!1305331))

(declare-fun m!1456819 () Bool)

(assert (=> b!1305331 m!1456819))

(assert (=> d!367606 d!368018))

(assert (=> d!367606 d!367966))

(declare-fun d!368020 () Bool)

(assert (=> d!368020 (= (isEmpty!7786 lt!429008) ((_ is Nil!13156) lt!429008))))

(assert (=> bm!89138 d!368020))

(declare-fun bs!329498 () Bool)

(declare-fun d!368022 () Bool)

(assert (= bs!329498 (and d!368022 d!367874)))

(declare-fun lambda!52101 () Int)

(assert (=> bs!329498 (= (and (= (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (toChars!3349 (transformation!2275 (rule!4014 t2!34)))) (= (toValue!3490 (transformation!2275 (rule!4014 t1!34))) (toValue!3490 (transformation!2275 (rule!4014 t2!34))))) (= lambda!52101 lambda!52076))))

(assert (=> d!368022 true))

(assert (=> d!368022 (< (dynLambda!5733 order!7947 (toChars!3349 (transformation!2275 (rule!4014 t1!34)))) (dynLambda!5734 order!7949 lambda!52101))))

(assert (=> d!368022 true))

(assert (=> d!368022 (< (dynLambda!5735 order!7951 (toValue!3490 (transformation!2275 (rule!4014 t1!34)))) (dynLambda!5734 order!7949 lambda!52101))))

(assert (=> d!368022 (= (semiInverseModEq!858 (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (toValue!3490 (transformation!2275 (rule!4014 t1!34)))) (Forall!513 lambda!52101))))

(declare-fun bs!329499 () Bool)

(assert (= bs!329499 d!368022))

(declare-fun m!1456821 () Bool)

(assert (=> bs!329499 m!1456821))

(assert (=> d!367578 d!368022))

(declare-fun d!368024 () Bool)

(assert (=> d!368024 (= (isEmpty!7786 (tail!1866 lt!429008)) ((_ is Nil!13156) (tail!1866 lt!429008)))))

(assert (=> b!1304680 d!368024))

(assert (=> b!1304680 d!367926))

(declare-fun d!368026 () Bool)

(declare-fun lt!429386 () Token!4212)

(declare-fun apply!2950 (List!13225 Int) Token!4212)

(assert (=> d!368026 (= lt!429386 (apply!2950 (list!4926 (_1!7258 lt!429104)) 0))))

(declare-fun apply!2951 (Conc!4321 Int) Token!4212)

(assert (=> d!368026 (= lt!429386 (apply!2951 (c!214294 (_1!7258 lt!429104)) 0))))

(declare-fun e!837133 () Bool)

(assert (=> d!368026 e!837133))

(declare-fun res!585241 () Bool)

(assert (=> d!368026 (=> (not res!585241) (not e!837133))))

(assert (=> d!368026 (= res!585241 (<= 0 0))))

(assert (=> d!368026 (= (apply!2945 (_1!7258 lt!429104) 0) lt!429386)))

(declare-fun b!1305368 () Bool)

(assert (=> b!1305368 (= e!837133 (< 0 (size!10725 (_1!7258 lt!429104))))))

(assert (= (and d!368026 res!585241) b!1305368))

(declare-fun m!1456863 () Bool)

(assert (=> d!368026 m!1456863))

(assert (=> d!368026 m!1456863))

(declare-fun m!1456867 () Bool)

(assert (=> d!368026 m!1456867))

(declare-fun m!1456869 () Bool)

(assert (=> d!368026 m!1456869))

(assert (=> b!1305368 m!1455867))

(assert (=> b!1304501 d!368026))

(declare-fun d!368044 () Bool)

(declare-fun lt!429393 () Bool)

(declare-fun content!1846 (List!13224) (InoxSet Rule!4350))

(assert (=> d!368044 (= lt!429393 (select (content!1846 rules!2550) lt!429203))))

(declare-fun e!837142 () Bool)

(assert (=> d!368044 (= lt!429393 e!837142)))

(declare-fun res!585247 () Bool)

(assert (=> d!368044 (=> (not res!585247) (not e!837142))))

(assert (=> d!368044 (= res!585247 ((_ is Cons!13158) rules!2550))))

(assert (=> d!368044 (= (contains!2237 rules!2550 lt!429203) lt!429393)))

(declare-fun b!1305381 () Bool)

(declare-fun e!837143 () Bool)

(assert (=> b!1305381 (= e!837142 e!837143)))

(declare-fun res!585246 () Bool)

(assert (=> b!1305381 (=> res!585246 e!837143)))

(assert (=> b!1305381 (= res!585246 (= (h!18559 rules!2550) lt!429203))))

(declare-fun b!1305382 () Bool)

(assert (=> b!1305382 (= e!837143 (contains!2237 (t!117785 rules!2550) lt!429203))))

(assert (= (and d!368044 res!585247) b!1305381))

(assert (= (and b!1305381 (not res!585246)) b!1305382))

(declare-fun m!1456875 () Bool)

(assert (=> d!368044 m!1456875))

(declare-fun m!1456877 () Bool)

(assert (=> d!368044 m!1456877))

(declare-fun m!1456879 () Bool)

(assert (=> b!1305382 m!1456879))

(assert (=> b!1304841 d!368044))

(declare-fun d!368052 () Bool)

(declare-fun lt!429396 () Bool)

(assert (=> d!368052 (= lt!429396 (isEmpty!7786 (list!4927 (_2!7258 (lex!805 thiss!19762 rules!2550 (print!744 thiss!19762 (singletonSeq!844 t1!34)))))))))

(assert (=> d!368052 (= lt!429396 (isEmpty!7787 (c!214292 (_2!7258 (lex!805 thiss!19762 rules!2550 (print!744 thiss!19762 (singletonSeq!844 t1!34)))))))))

(assert (=> d!368052 (= (isEmpty!7781 (_2!7258 (lex!805 thiss!19762 rules!2550 (print!744 thiss!19762 (singletonSeq!844 t1!34))))) lt!429396)))

(declare-fun bs!329502 () Bool)

(assert (= bs!329502 d!368052))

(declare-fun m!1456881 () Bool)

(assert (=> bs!329502 m!1456881))

(assert (=> bs!329502 m!1456881))

(declare-fun m!1456883 () Bool)

(assert (=> bs!329502 m!1456883))

(declare-fun m!1456885 () Bool)

(assert (=> bs!329502 m!1456885))

(assert (=> b!1304705 d!368052))

(declare-fun b!1305389 () Bool)

(declare-fun res!585250 () Bool)

(declare-fun e!837149 () Bool)

(assert (=> b!1305389 (=> (not res!585250) (not e!837149))))

(declare-fun lt!429397 () tuple2!12744)

(assert (=> b!1305389 (= res!585250 (= (list!4926 (_1!7258 lt!429397)) (_1!7259 (lexList!508 thiss!19762 rules!2550 (list!4927 (print!744 thiss!19762 (singletonSeq!844 t1!34)))))))))

(declare-fun e!837150 () Bool)

(declare-fun b!1305390 () Bool)

(assert (=> b!1305390 (= e!837150 (= (_2!7258 lt!429397) (print!744 thiss!19762 (singletonSeq!844 t1!34))))))

(declare-fun d!368054 () Bool)

(assert (=> d!368054 e!837149))

(declare-fun res!585251 () Bool)

(assert (=> d!368054 (=> (not res!585251) (not e!837149))))

(assert (=> d!368054 (= res!585251 e!837150)))

(declare-fun c!214534 () Bool)

(assert (=> d!368054 (= c!214534 (> (size!10725 (_1!7258 lt!429397)) 0))))

(assert (=> d!368054 (= lt!429397 (lexTailRecV2!355 thiss!19762 rules!2550 (print!744 thiss!19762 (singletonSeq!844 t1!34)) (BalanceConc!8581 Empty!4320) (print!744 thiss!19762 (singletonSeq!844 t1!34)) (BalanceConc!8583 Empty!4321)))))

(assert (=> d!368054 (= (lex!805 thiss!19762 rules!2550 (print!744 thiss!19762 (singletonSeq!844 t1!34))) lt!429397)))

(declare-fun b!1305391 () Bool)

(declare-fun e!837148 () Bool)

(assert (=> b!1305391 (= e!837148 (not (isEmpty!7789 (_1!7258 lt!429397))))))

(declare-fun b!1305392 () Bool)

(assert (=> b!1305392 (= e!837150 e!837148)))

(declare-fun res!585252 () Bool)

(assert (=> b!1305392 (= res!585252 (< (size!10717 (_2!7258 lt!429397)) (size!10717 (print!744 thiss!19762 (singletonSeq!844 t1!34)))))))

(assert (=> b!1305392 (=> (not res!585252) (not e!837148))))

(declare-fun b!1305393 () Bool)

(assert (=> b!1305393 (= e!837149 (= (list!4927 (_2!7258 lt!429397)) (_2!7259 (lexList!508 thiss!19762 rules!2550 (list!4927 (print!744 thiss!19762 (singletonSeq!844 t1!34)))))))))

(assert (= (and d!368054 c!214534) b!1305392))

(assert (= (and d!368054 (not c!214534)) b!1305390))

(assert (= (and b!1305392 res!585252) b!1305391))

(assert (= (and d!368054 res!585251) b!1305389))

(assert (= (and b!1305389 res!585250) b!1305393))

(declare-fun m!1456887 () Bool)

(assert (=> b!1305393 m!1456887))

(assert (=> b!1305393 m!1455547))

(declare-fun m!1456889 () Bool)

(assert (=> b!1305393 m!1456889))

(assert (=> b!1305393 m!1456889))

(declare-fun m!1456891 () Bool)

(assert (=> b!1305393 m!1456891))

(declare-fun m!1456893 () Bool)

(assert (=> b!1305389 m!1456893))

(assert (=> b!1305389 m!1455547))

(assert (=> b!1305389 m!1456889))

(assert (=> b!1305389 m!1456889))

(assert (=> b!1305389 m!1456891))

(declare-fun m!1456895 () Bool)

(assert (=> b!1305392 m!1456895))

(assert (=> b!1305392 m!1455547))

(declare-fun m!1456897 () Bool)

(assert (=> b!1305392 m!1456897))

(declare-fun m!1456899 () Bool)

(assert (=> d!368054 m!1456899))

(assert (=> d!368054 m!1455547))

(assert (=> d!368054 m!1455547))

(declare-fun m!1456903 () Bool)

(assert (=> d!368054 m!1456903))

(declare-fun m!1456909 () Bool)

(assert (=> b!1305391 m!1456909))

(assert (=> b!1304705 d!368054))

(assert (=> b!1304705 d!367762))

(assert (=> b!1304705 d!367768))

(declare-fun d!368056 () Bool)

(assert (=> d!368056 (= (list!4926 lt!429206) (list!4931 (c!214294 lt!429206)))))

(declare-fun bs!329503 () Bool)

(assert (= bs!329503 d!368056))

(declare-fun m!1456913 () Bool)

(assert (=> bs!329503 m!1456913))

(assert (=> d!367768 d!368056))

(declare-fun d!368060 () Bool)

(declare-fun e!837155 () Bool)

(assert (=> d!368060 e!837155))

(declare-fun res!585256 () Bool)

(assert (=> d!368060 (=> (not res!585256) (not e!837155))))

(declare-fun lt!429401 () BalanceConc!8582)

(assert (=> d!368060 (= res!585256 (= (list!4926 lt!429401) (Cons!13159 t1!34 Nil!13159)))))

(declare-fun choose!7993 (Token!4212) BalanceConc!8582)

(assert (=> d!368060 (= lt!429401 (choose!7993 t1!34))))

(assert (=> d!368060 (= (singleton!368 t1!34) lt!429401)))

(declare-fun b!1305399 () Bool)

(assert (=> b!1305399 (= e!837155 (isBalanced!1262 (c!214294 lt!429401)))))

(assert (= (and d!368060 res!585256) b!1305399))

(declare-fun m!1456915 () Bool)

(assert (=> d!368060 m!1456915))

(declare-fun m!1456917 () Bool)

(assert (=> d!368060 m!1456917))

(declare-fun m!1456919 () Bool)

(assert (=> b!1305399 m!1456919))

(assert (=> d!367768 d!368060))

(declare-fun d!368062 () Bool)

(assert (=> d!368062 (= (list!4927 lt!429154) (list!4930 (c!214292 lt!429154)))))

(declare-fun bs!329504 () Bool)

(assert (= bs!329504 d!368062))

(declare-fun m!1456921 () Bool)

(assert (=> bs!329504 m!1456921))

(assert (=> d!367706 d!368062))

(declare-fun d!368064 () Bool)

(declare-fun res!585261 () Bool)

(declare-fun e!837161 () Bool)

(assert (=> d!368064 (=> res!585261 e!837161)))

(assert (=> d!368064 (= res!585261 ((_ is ElementMatch!3589) lt!429181))))

(assert (=> d!368064 (= (validRegex!1539 lt!429181) e!837161)))

(declare-fun bm!89184 () Bool)

(declare-fun call!89189 () Bool)

(declare-fun call!89190 () Bool)

(assert (=> bm!89184 (= call!89189 call!89190)))

(declare-fun c!214537 () Bool)

(declare-fun bm!89185 () Bool)

(declare-fun c!214536 () Bool)

(assert (=> bm!89185 (= call!89190 (validRegex!1539 (ite c!214537 (reg!3918 lt!429181) (ite c!214536 (regOne!7691 lt!429181) (regOne!7690 lt!429181)))))))

(declare-fun b!1305400 () Bool)

(declare-fun e!837156 () Bool)

(declare-fun call!89191 () Bool)

(assert (=> b!1305400 (= e!837156 call!89191)))

(declare-fun bm!89186 () Bool)

(assert (=> bm!89186 (= call!89191 (validRegex!1539 (ite c!214536 (regTwo!7691 lt!429181) (regTwo!7690 lt!429181))))))

(declare-fun b!1305401 () Bool)

(declare-fun res!585259 () Bool)

(assert (=> b!1305401 (=> (not res!585259) (not e!837156))))

(assert (=> b!1305401 (= res!585259 call!89189)))

(declare-fun e!837159 () Bool)

(assert (=> b!1305401 (= e!837159 e!837156)))

(declare-fun b!1305402 () Bool)

(declare-fun res!585260 () Bool)

(declare-fun e!837160 () Bool)

(assert (=> b!1305402 (=> res!585260 e!837160)))

(assert (=> b!1305402 (= res!585260 (not ((_ is Concat!5955) lt!429181)))))

(assert (=> b!1305402 (= e!837159 e!837160)))

(declare-fun b!1305403 () Bool)

(declare-fun e!837157 () Bool)

(assert (=> b!1305403 (= e!837161 e!837157)))

(assert (=> b!1305403 (= c!214537 ((_ is Star!3589) lt!429181))))

(declare-fun b!1305404 () Bool)

(declare-fun e!837162 () Bool)

(assert (=> b!1305404 (= e!837162 call!89191)))

(declare-fun b!1305405 () Bool)

(declare-fun e!837158 () Bool)

(assert (=> b!1305405 (= e!837157 e!837158)))

(declare-fun res!585257 () Bool)

(assert (=> b!1305405 (= res!585257 (not (nullable!1137 (reg!3918 lt!429181))))))

(assert (=> b!1305405 (=> (not res!585257) (not e!837158))))

(declare-fun b!1305406 () Bool)

(assert (=> b!1305406 (= e!837157 e!837159)))

(assert (=> b!1305406 (= c!214536 ((_ is Union!3589) lt!429181))))

(declare-fun b!1305407 () Bool)

(assert (=> b!1305407 (= e!837160 e!837162)))

(declare-fun res!585258 () Bool)

(assert (=> b!1305407 (=> (not res!585258) (not e!837162))))

(assert (=> b!1305407 (= res!585258 call!89189)))

(declare-fun b!1305408 () Bool)

(assert (=> b!1305408 (= e!837158 call!89190)))

(assert (= (and d!368064 (not res!585261)) b!1305403))

(assert (= (and b!1305403 c!214537) b!1305405))

(assert (= (and b!1305403 (not c!214537)) b!1305406))

(assert (= (and b!1305405 res!585257) b!1305408))

(assert (= (and b!1305406 c!214536) b!1305401))

(assert (= (and b!1305406 (not c!214536)) b!1305402))

(assert (= (and b!1305401 res!585259) b!1305400))

(assert (= (and b!1305402 (not res!585260)) b!1305407))

(assert (= (and b!1305407 res!585258) b!1305404))

(assert (= (or b!1305401 b!1305407) bm!89184))

(assert (= (or b!1305400 b!1305404) bm!89186))

(assert (= (or b!1305408 bm!89184) bm!89185))

(declare-fun m!1456923 () Bool)

(assert (=> bm!89185 m!1456923))

(declare-fun m!1456925 () Bool)

(assert (=> bm!89186 m!1456925))

(declare-fun m!1456927 () Bool)

(assert (=> b!1305405 m!1456927))

(assert (=> bs!329393 d!368064))

(declare-fun d!368066 () Bool)

(assert (=> d!368066 (= (inv!15 (value!74470 t2!34)) (= (charsToBigInt!0 (text!17004 (value!74470 t2!34)) 0) (value!74465 (value!74470 t2!34))))))

(declare-fun bs!329505 () Bool)

(assert (= bs!329505 d!368066))

(declare-fun m!1456929 () Bool)

(assert (=> bs!329505 m!1456929))

(assert (=> b!1304423 d!368066))

(declare-fun d!368068 () Bool)

(declare-fun c!214538 () Bool)

(assert (=> d!368068 (= c!214538 ((_ is Node!4320) (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (value!74470 t1!34)))))))

(declare-fun e!837163 () Bool)

(assert (=> d!368068 (= (inv!17567 (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (value!74470 t1!34)))) e!837163)))

(declare-fun b!1305409 () Bool)

(assert (=> b!1305409 (= e!837163 (inv!17571 (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (value!74470 t1!34)))))))

(declare-fun b!1305410 () Bool)

(declare-fun e!837164 () Bool)

(assert (=> b!1305410 (= e!837163 e!837164)))

(declare-fun res!585262 () Bool)

(assert (=> b!1305410 (= res!585262 (not ((_ is Leaf!6654) (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (value!74470 t1!34))))))))

(assert (=> b!1305410 (=> res!585262 e!837164)))

(declare-fun b!1305411 () Bool)

(assert (=> b!1305411 (= e!837164 (inv!17572 (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (value!74470 t1!34)))))))

(assert (= (and d!368068 c!214538) b!1305409))

(assert (= (and d!368068 (not c!214538)) b!1305410))

(assert (= (and b!1305410 (not res!585262)) b!1305411))

(declare-fun m!1456931 () Bool)

(assert (=> b!1305409 m!1456931))

(declare-fun m!1456933 () Bool)

(assert (=> b!1305411 m!1456933))

(assert (=> b!1304700 d!368068))

(assert (=> b!1304684 d!367924))

(declare-fun d!368070 () Bool)

(declare-fun res!585269 () Bool)

(declare-fun e!837177 () Bool)

(assert (=> d!368070 (=> res!585269 e!837177)))

(assert (=> d!368070 (= res!585269 ((_ is Nil!13158) rules!2550))))

(assert (=> d!368070 (= (noDuplicateTag!827 thiss!19762 rules!2550 Nil!13162) e!837177)))

(declare-fun b!1305430 () Bool)

(declare-fun e!837178 () Bool)

(assert (=> b!1305430 (= e!837177 e!837178)))

(declare-fun res!585270 () Bool)

(assert (=> b!1305430 (=> (not res!585270) (not e!837178))))

(declare-fun contains!2238 (List!13228 String!16061) Bool)

(assert (=> b!1305430 (= res!585270 (not (contains!2238 Nil!13162 (tag!2537 (h!18559 rules!2550)))))))

(declare-fun b!1305431 () Bool)

(assert (=> b!1305431 (= e!837178 (noDuplicateTag!827 thiss!19762 (t!117785 rules!2550) (Cons!13162 (tag!2537 (h!18559 rules!2550)) Nil!13162)))))

(assert (= (and d!368070 (not res!585269)) b!1305430))

(assert (= (and b!1305430 res!585270) b!1305431))

(declare-fun m!1456935 () Bool)

(assert (=> b!1305430 m!1456935))

(declare-fun m!1456937 () Bool)

(assert (=> b!1305431 m!1456937))

(assert (=> b!1304523 d!368070))

(declare-fun d!368072 () Bool)

(declare-fun lostCauseFct!107 (Regex!3589) Bool)

(assert (=> d!368072 (= (lostCause!266 lt!429022) (lostCauseFct!107 lt!429022))))

(declare-fun bs!329506 () Bool)

(assert (= bs!329506 d!368072))

(declare-fun m!1456939 () Bool)

(assert (=> bs!329506 m!1456939))

(assert (=> b!1304807 d!368072))

(declare-fun b!1305447 () Bool)

(declare-fun e!837187 () List!13222)

(assert (=> b!1305447 (= e!837187 Nil!13156)))

(declare-fun b!1305450 () Bool)

(declare-fun e!837188 () List!13222)

(assert (=> b!1305450 (= e!837188 (++!3346 (list!4930 (left!11315 (c!214292 lt!429020))) (list!4930 (right!11645 (c!214292 lt!429020)))))))

(declare-fun d!368074 () Bool)

(declare-fun c!214552 () Bool)

(assert (=> d!368074 (= c!214552 ((_ is Empty!4320) (c!214292 lt!429020)))))

(assert (=> d!368074 (= (list!4930 (c!214292 lt!429020)) e!837187)))

(declare-fun b!1305448 () Bool)

(assert (=> b!1305448 (= e!837187 e!837188)))

(declare-fun c!214553 () Bool)

(assert (=> b!1305448 (= c!214553 ((_ is Leaf!6654) (c!214292 lt!429020)))))

(declare-fun b!1305449 () Bool)

(declare-fun list!4934 (IArray!8645) List!13222)

(assert (=> b!1305449 (= e!837188 (list!4934 (xs!7035 (c!214292 lt!429020))))))

(assert (= (and d!368074 c!214552) b!1305447))

(assert (= (and d!368074 (not c!214552)) b!1305448))

(assert (= (and b!1305448 c!214553) b!1305449))

(assert (= (and b!1305448 (not c!214553)) b!1305450))

(declare-fun m!1456957 () Bool)

(assert (=> b!1305450 m!1456957))

(declare-fun m!1456959 () Bool)

(assert (=> b!1305450 m!1456959))

(assert (=> b!1305450 m!1456957))

(assert (=> b!1305450 m!1456959))

(declare-fun m!1456961 () Bool)

(assert (=> b!1305450 m!1456961))

(declare-fun m!1456963 () Bool)

(assert (=> b!1305449 m!1456963))

(assert (=> d!367748 d!368074))

(declare-fun d!368080 () Bool)

(declare-fun lt!429409 () List!13222)

(assert (=> d!368080 (= (++!3346 (t!117783 lt!429015) lt!429409) (tail!1866 lt!429008))))

(declare-fun e!837189 () List!13222)

(assert (=> d!368080 (= lt!429409 e!837189)))

(declare-fun c!214554 () Bool)

(assert (=> d!368080 (= c!214554 ((_ is Cons!13156) (t!117783 lt!429015)))))

(assert (=> d!368080 (>= (size!10722 (tail!1866 lt!429008)) (size!10722 (t!117783 lt!429015)))))

(assert (=> d!368080 (= (getSuffix!445 (tail!1866 lt!429008) (t!117783 lt!429015)) lt!429409)))

(declare-fun b!1305451 () Bool)

(assert (=> b!1305451 (= e!837189 (getSuffix!445 (tail!1866 (tail!1866 lt!429008)) (t!117783 (t!117783 lt!429015))))))

(declare-fun b!1305452 () Bool)

(assert (=> b!1305452 (= e!837189 (tail!1866 lt!429008))))

(assert (= (and d!368080 c!214554) b!1305451))

(assert (= (and d!368080 (not c!214554)) b!1305452))

(declare-fun m!1456971 () Bool)

(assert (=> d!368080 m!1456971))

(assert (=> d!368080 m!1455783))

(declare-fun m!1456973 () Bool)

(assert (=> d!368080 m!1456973))

(assert (=> d!368080 m!1456713))

(assert (=> b!1305451 m!1455783))

(assert (=> b!1305451 m!1456533))

(assert (=> b!1305451 m!1456533))

(declare-fun m!1456977 () Bool)

(assert (=> b!1305451 m!1456977))

(assert (=> b!1304460 d!368080))

(assert (=> b!1304460 d!367926))

(declare-fun d!368088 () Bool)

(declare-fun res!585272 () Bool)

(declare-fun e!837190 () Bool)

(assert (=> d!368088 (=> res!585272 e!837190)))

(assert (=> d!368088 (= res!585272 ((_ is Nil!13158) rules!2550))))

(assert (=> d!368088 (= (forall!3274 rules!2550 lambda!52056) e!837190)))

(declare-fun b!1305453 () Bool)

(declare-fun e!837191 () Bool)

(assert (=> b!1305453 (= e!837190 e!837191)))

(declare-fun res!585273 () Bool)

(assert (=> b!1305453 (=> (not res!585273) (not e!837191))))

(assert (=> b!1305453 (= res!585273 (dynLambda!5728 lambda!52056 (h!18559 rules!2550)))))

(declare-fun b!1305454 () Bool)

(assert (=> b!1305454 (= e!837191 (forall!3274 (t!117785 rules!2550) lambda!52056))))

(assert (= (and d!368088 (not res!585272)) b!1305453))

(assert (= (and b!1305453 res!585273) b!1305454))

(declare-fun b_lambda!37413 () Bool)

(assert (=> (not b_lambda!37413) (not b!1305453)))

(declare-fun m!1456979 () Bool)

(assert (=> b!1305453 m!1456979))

(declare-fun m!1456981 () Bool)

(assert (=> b!1305454 m!1456981))

(assert (=> d!367734 d!368088))

(declare-fun b!1305455 () Bool)

(declare-fun res!585277 () Bool)

(declare-fun e!837192 () Bool)

(assert (=> b!1305455 (=> (not res!585277) (not e!837192))))

(declare-fun call!89195 () Bool)

(assert (=> b!1305455 (= res!585277 (not call!89195))))

(declare-fun b!1305456 () Bool)

(declare-fun e!837198 () Bool)

(declare-fun lt!429411 () Bool)

(assert (=> b!1305456 (= e!837198 (not lt!429411))))

(declare-fun bm!89190 () Bool)

(assert (=> bm!89190 (= call!89195 (isEmpty!7786 lt!429080))))

(declare-fun b!1305457 () Bool)

(declare-fun res!585281 () Bool)

(declare-fun e!837195 () Bool)

(assert (=> b!1305457 (=> res!585281 e!837195)))

(assert (=> b!1305457 (= res!585281 (not (isEmpty!7786 (tail!1866 lt!429080))))))

(declare-fun b!1305458 () Bool)

(declare-fun e!837196 () Bool)

(assert (=> b!1305458 (= e!837196 e!837198)))

(declare-fun c!214556 () Bool)

(assert (=> b!1305458 (= c!214556 ((_ is EmptyLang!3589) lt!429022))))

(declare-fun b!1305459 () Bool)

(declare-fun e!837197 () Bool)

(assert (=> b!1305459 (= e!837197 (nullable!1137 lt!429022))))

(declare-fun d!368090 () Bool)

(assert (=> d!368090 e!837196))

(declare-fun c!214557 () Bool)

(assert (=> d!368090 (= c!214557 ((_ is EmptyExpr!3589) lt!429022))))

(assert (=> d!368090 (= lt!429411 e!837197)))

(declare-fun c!214555 () Bool)

(assert (=> d!368090 (= c!214555 (isEmpty!7786 lt!429080))))

(assert (=> d!368090 (validRegex!1539 lt!429022)))

(assert (=> d!368090 (= (matchR!1591 lt!429022 lt!429080) lt!429411)))

(declare-fun b!1305460 () Bool)

(declare-fun res!585276 () Bool)

(declare-fun e!837193 () Bool)

(assert (=> b!1305460 (=> res!585276 e!837193)))

(assert (=> b!1305460 (= res!585276 (not ((_ is ElementMatch!3589) lt!429022)))))

(assert (=> b!1305460 (= e!837198 e!837193)))

(declare-fun b!1305461 () Bool)

(assert (=> b!1305461 (= e!837195 (not (= (head!2240 lt!429080) (c!214293 lt!429022))))))

(declare-fun b!1305462 () Bool)

(assert (=> b!1305462 (= e!837197 (matchR!1591 (derivativeStep!889 lt!429022 (head!2240 lt!429080)) (tail!1866 lt!429080)))))

(declare-fun b!1305463 () Bool)

(declare-fun res!585275 () Bool)

(assert (=> b!1305463 (=> (not res!585275) (not e!837192))))

(assert (=> b!1305463 (= res!585275 (isEmpty!7786 (tail!1866 lt!429080)))))

(declare-fun b!1305464 () Bool)

(declare-fun e!837194 () Bool)

(assert (=> b!1305464 (= e!837194 e!837195)))

(declare-fun res!585279 () Bool)

(assert (=> b!1305464 (=> res!585279 e!837195)))

(assert (=> b!1305464 (= res!585279 call!89195)))

(declare-fun b!1305465 () Bool)

(assert (=> b!1305465 (= e!837193 e!837194)))

(declare-fun res!585280 () Bool)

(assert (=> b!1305465 (=> (not res!585280) (not e!837194))))

(assert (=> b!1305465 (= res!585280 (not lt!429411))))

(declare-fun b!1305466 () Bool)

(assert (=> b!1305466 (= e!837192 (= (head!2240 lt!429080) (c!214293 lt!429022)))))

(declare-fun b!1305467 () Bool)

(assert (=> b!1305467 (= e!837196 (= lt!429411 call!89195))))

(declare-fun b!1305468 () Bool)

(declare-fun res!585278 () Bool)

(assert (=> b!1305468 (=> res!585278 e!837193)))

(assert (=> b!1305468 (= res!585278 e!837192)))

(declare-fun res!585274 () Bool)

(assert (=> b!1305468 (=> (not res!585274) (not e!837192))))

(assert (=> b!1305468 (= res!585274 lt!429411)))

(assert (= (and d!368090 c!214555) b!1305459))

(assert (= (and d!368090 (not c!214555)) b!1305462))

(assert (= (and d!368090 c!214557) b!1305467))

(assert (= (and d!368090 (not c!214557)) b!1305458))

(assert (= (and b!1305458 c!214556) b!1305456))

(assert (= (and b!1305458 (not c!214556)) b!1305460))

(assert (= (and b!1305460 (not res!585276)) b!1305468))

(assert (= (and b!1305468 res!585274) b!1305455))

(assert (= (and b!1305455 res!585277) b!1305463))

(assert (= (and b!1305463 res!585275) b!1305466))

(assert (= (and b!1305468 (not res!585278)) b!1305465))

(assert (= (and b!1305465 res!585280) b!1305464))

(assert (= (and b!1305464 (not res!585279)) b!1305457))

(assert (= (and b!1305457 (not res!585281)) b!1305461))

(assert (= (or b!1305467 b!1305455 b!1305464) bm!89190))

(assert (=> b!1305459 m!1456045))

(declare-fun m!1456983 () Bool)

(assert (=> b!1305457 m!1456983))

(assert (=> b!1305457 m!1456983))

(declare-fun m!1456985 () Bool)

(assert (=> b!1305457 m!1456985))

(declare-fun m!1456987 () Bool)

(assert (=> d!368090 m!1456987))

(assert (=> d!368090 m!1456051))

(declare-fun m!1456989 () Bool)

(assert (=> b!1305461 m!1456989))

(assert (=> bm!89190 m!1456987))

(assert (=> b!1305466 m!1456989))

(assert (=> b!1305463 m!1456983))

(assert (=> b!1305463 m!1456983))

(assert (=> b!1305463 m!1456985))

(assert (=> b!1305462 m!1456989))

(assert (=> b!1305462 m!1456989))

(declare-fun m!1456991 () Bool)

(assert (=> b!1305462 m!1456991))

(assert (=> b!1305462 m!1456983))

(assert (=> b!1305462 m!1456991))

(assert (=> b!1305462 m!1456983))

(declare-fun m!1456993 () Bool)

(assert (=> b!1305462 m!1456993))

(assert (=> bs!329398 d!368090))

(declare-fun d!368092 () Bool)

(assert (=> d!368092 (= (inv!17560 (tag!2537 (h!18559 (t!117785 rules!2550)))) (= (mod (str.len (value!74469 (tag!2537 (h!18559 (t!117785 rules!2550))))) 2) 0))))

(assert (=> b!1304886 d!368092))

(declare-fun d!368094 () Bool)

(declare-fun res!585282 () Bool)

(declare-fun e!837201 () Bool)

(assert (=> d!368094 (=> (not res!585282) (not e!837201))))

(assert (=> d!368094 (= res!585282 (semiInverseModEq!858 (toChars!3349 (transformation!2275 (h!18559 (t!117785 rules!2550)))) (toValue!3490 (transformation!2275 (h!18559 (t!117785 rules!2550))))))))

(assert (=> d!368094 (= (inv!17563 (transformation!2275 (h!18559 (t!117785 rules!2550)))) e!837201)))

(declare-fun b!1305473 () Bool)

(assert (=> b!1305473 (= e!837201 (equivClasses!817 (toChars!3349 (transformation!2275 (h!18559 (t!117785 rules!2550)))) (toValue!3490 (transformation!2275 (h!18559 (t!117785 rules!2550))))))))

(assert (= (and d!368094 res!585282) b!1305473))

(declare-fun m!1456995 () Bool)

(assert (=> d!368094 m!1456995))

(declare-fun m!1456997 () Bool)

(assert (=> b!1305473 m!1456997))

(assert (=> b!1304886 d!368094))

(assert (=> d!367722 d!368054))

(assert (=> d!367722 d!367762))

(declare-fun d!368096 () Bool)

(declare-fun lt!429414 () Int)

(assert (=> d!368096 (= lt!429414 (size!10723 (list!4926 (_1!7258 lt!429163))))))

(declare-fun size!10731 (Conc!4321) Int)

(assert (=> d!368096 (= lt!429414 (size!10731 (c!214294 (_1!7258 lt!429163))))))

(assert (=> d!368096 (= (size!10725 (_1!7258 lt!429163)) lt!429414)))

(declare-fun bs!329512 () Bool)

(assert (= bs!329512 d!368096))

(declare-fun m!1457009 () Bool)

(assert (=> bs!329512 m!1457009))

(assert (=> bs!329512 m!1457009))

(declare-fun m!1457011 () Bool)

(assert (=> bs!329512 m!1457011))

(declare-fun m!1457013 () Bool)

(assert (=> bs!329512 m!1457013))

(assert (=> d!367722 d!368096))

(assert (=> d!367722 d!367768))

(declare-fun d!368102 () Bool)

(assert (=> d!368102 (= (list!4926 (_1!7258 (lex!805 thiss!19762 rules!2550 (print!744 thiss!19762 (singletonSeq!844 t1!34))))) (list!4931 (c!214294 (_1!7258 (lex!805 thiss!19762 rules!2550 (print!744 thiss!19762 (singletonSeq!844 t1!34)))))))))

(declare-fun bs!329513 () Bool)

(assert (= bs!329513 d!368102))

(declare-fun m!1457015 () Bool)

(assert (=> bs!329513 m!1457015))

(assert (=> d!367722 d!368102))

(declare-fun d!368104 () Bool)

(assert (=> d!368104 (= (list!4926 (singletonSeq!844 t1!34)) (list!4931 (c!214294 (singletonSeq!844 t1!34))))))

(declare-fun bs!329514 () Bool)

(assert (= bs!329514 d!368104))

(declare-fun m!1457017 () Bool)

(assert (=> bs!329514 m!1457017))

(assert (=> d!367722 d!368104))

(assert (=> d!367722 d!367580))

(assert (=> d!367766 d!367688))

(declare-fun b!1305484 () Bool)

(declare-fun e!837209 () Bool)

(declare-fun e!837210 () Bool)

(assert (=> b!1305484 (= e!837209 e!837210)))

(declare-fun res!585291 () Bool)

(assert (=> b!1305484 (=> (not res!585291) (not e!837210))))

(assert (=> b!1305484 (= res!585291 (not ((_ is Nil!13156) lt!429080)))))

(declare-fun b!1305486 () Bool)

(assert (=> b!1305486 (= e!837210 (isPrefix!1064 (tail!1866 lt!429015) (tail!1866 lt!429080)))))

(declare-fun b!1305485 () Bool)

(declare-fun res!585293 () Bool)

(assert (=> b!1305485 (=> (not res!585293) (not e!837210))))

(assert (=> b!1305485 (= res!585293 (= (head!2240 lt!429015) (head!2240 lt!429080)))))

(declare-fun d!368106 () Bool)

(declare-fun e!837211 () Bool)

(assert (=> d!368106 e!837211))

(declare-fun res!585292 () Bool)

(assert (=> d!368106 (=> res!585292 e!837211)))

(declare-fun lt!429417 () Bool)

(assert (=> d!368106 (= res!585292 (not lt!429417))))

(assert (=> d!368106 (= lt!429417 e!837209)))

(declare-fun res!585294 () Bool)

(assert (=> d!368106 (=> res!585294 e!837209)))

(assert (=> d!368106 (= res!585294 ((_ is Nil!13156) lt!429015))))

(assert (=> d!368106 (= (isPrefix!1064 lt!429015 lt!429080) lt!429417)))

(declare-fun b!1305487 () Bool)

(assert (=> b!1305487 (= e!837211 (>= (size!10722 lt!429080) (size!10722 lt!429015)))))

(assert (= (and d!368106 (not res!585294)) b!1305484))

(assert (= (and b!1305484 res!585291) b!1305485))

(assert (= (and b!1305485 res!585293) b!1305486))

(assert (= (and d!368106 (not res!585292)) b!1305487))

(assert (=> b!1305486 m!1456175))

(assert (=> b!1305486 m!1456983))

(assert (=> b!1305486 m!1456175))

(assert (=> b!1305486 m!1456983))

(declare-fun m!1457019 () Bool)

(assert (=> b!1305486 m!1457019))

(assert (=> b!1305485 m!1456171))

(assert (=> b!1305485 m!1456989))

(declare-fun m!1457021 () Bool)

(assert (=> b!1305487 m!1457021))

(assert (=> b!1305487 m!1455745))

(assert (=> b!1304891 d!368106))

(declare-fun d!368108 () Bool)

(declare-fun c!214561 () Bool)

(assert (=> d!368108 (= c!214561 ((_ is Nil!13156) lt!429068))))

(declare-fun e!837212 () (InoxSet C!7468))

(assert (=> d!368108 (= (content!1843 lt!429068) e!837212)))

(declare-fun b!1305488 () Bool)

(assert (=> b!1305488 (= e!837212 ((as const (Array C!7468 Bool)) false))))

(declare-fun b!1305489 () Bool)

(assert (=> b!1305489 (= e!837212 ((_ map or) (store ((as const (Array C!7468 Bool)) false) (h!18557 lt!429068) true) (content!1843 (t!117783 lt!429068))))))

(assert (= (and d!368108 c!214561) b!1305488))

(assert (= (and d!368108 (not c!214561)) b!1305489))

(declare-fun m!1457023 () Bool)

(assert (=> b!1305489 m!1457023))

(declare-fun m!1457025 () Bool)

(assert (=> b!1305489 m!1457025))

(assert (=> d!367594 d!368108))

(declare-fun d!368110 () Bool)

(declare-fun c!214562 () Bool)

(assert (=> d!368110 (= c!214562 ((_ is Nil!13156) lt!429015))))

(declare-fun e!837213 () (InoxSet C!7468))

(assert (=> d!368110 (= (content!1843 lt!429015) e!837213)))

(declare-fun b!1305490 () Bool)

(assert (=> b!1305490 (= e!837213 ((as const (Array C!7468 Bool)) false))))

(declare-fun b!1305491 () Bool)

(assert (=> b!1305491 (= e!837213 ((_ map or) (store ((as const (Array C!7468 Bool)) false) (h!18557 lt!429015) true) (content!1843 (t!117783 lt!429015))))))

(assert (= (and d!368110 c!214562) b!1305490))

(assert (= (and d!368110 (not c!214562)) b!1305491))

(declare-fun m!1457027 () Bool)

(assert (=> b!1305491 m!1457027))

(assert (=> b!1305491 m!1456471))

(assert (=> d!367594 d!368110))

(declare-fun d!368112 () Bool)

(declare-fun c!214563 () Bool)

(assert (=> d!368112 (= c!214563 ((_ is Nil!13156) (getSuffix!445 lt!429008 lt!429015)))))

(declare-fun e!837214 () (InoxSet C!7468))

(assert (=> d!368112 (= (content!1843 (getSuffix!445 lt!429008 lt!429015)) e!837214)))

(declare-fun b!1305492 () Bool)

(assert (=> b!1305492 (= e!837214 ((as const (Array C!7468 Bool)) false))))

(declare-fun b!1305493 () Bool)

(assert (=> b!1305493 (= e!837214 ((_ map or) (store ((as const (Array C!7468 Bool)) false) (h!18557 (getSuffix!445 lt!429008 lt!429015)) true) (content!1843 (t!117783 (getSuffix!445 lt!429008 lt!429015)))))))

(assert (= (and d!368112 c!214563) b!1305492))

(assert (= (and d!368112 (not c!214563)) b!1305493))

(declare-fun m!1457029 () Bool)

(assert (=> b!1305493 m!1457029))

(declare-fun m!1457031 () Bool)

(assert (=> b!1305493 m!1457031))

(assert (=> d!367594 d!368112))

(declare-fun d!368114 () Bool)

(assert (=> d!368114 (= (isEmpty!7786 (originalCharacters!3137 t2!34)) ((_ is Nil!13156) (originalCharacters!3137 t2!34)))))

(assert (=> d!367720 d!368114))

(declare-fun d!368116 () Bool)

(declare-fun lt!429418 () Int)

(assert (=> d!368116 (= lt!429418 (size!10723 (list!4926 (_1!7258 lt!429197))))))

(assert (=> d!368116 (= lt!429418 (size!10731 (c!214294 (_1!7258 lt!429197))))))

(assert (=> d!368116 (= (size!10725 (_1!7258 lt!429197)) lt!429418)))

(declare-fun bs!329515 () Bool)

(assert (= bs!329515 d!368116))

(assert (=> bs!329515 m!1456215))

(assert (=> bs!329515 m!1456215))

(declare-fun m!1457033 () Bool)

(assert (=> bs!329515 m!1457033))

(declare-fun m!1457035 () Bool)

(assert (=> bs!329515 m!1457035))

(assert (=> d!367764 d!368116))

(declare-fun e!837374 () Bool)

(declare-fun b!1305756 () Bool)

(declare-fun lt!429610 () tuple2!12744)

(declare-fun lexRec!259 (LexerInterface!1970 List!13224 BalanceConc!8580) tuple2!12744)

(assert (=> b!1305756 (= e!837374 (= (list!4927 (_2!7258 lt!429610)) (list!4927 (_2!7258 (lexRec!259 thiss!19762 rules!2550 lt!429019)))))))

(declare-datatypes ((tuple2!12754 0))(
  ( (tuple2!12755 (_1!7263 Token!4212) (_2!7263 BalanceConc!8580)) )
))
(declare-datatypes ((Option!2542 0))(
  ( (None!2541) (Some!2541 (v!21047 tuple2!12754)) )
))
(declare-fun lt!429600 () Option!2542)

(declare-fun lt!429606 () BalanceConc!8580)

(declare-fun b!1305757 () Bool)

(declare-fun e!837375 () tuple2!12744)

(declare-fun append!380 (BalanceConc!8582 Token!4212) BalanceConc!8582)

(assert (=> b!1305757 (= e!837375 (lexTailRecV2!355 thiss!19762 rules!2550 lt!429019 lt!429606 (_2!7263 (v!21047 lt!429600)) (append!380 (BalanceConc!8583 Empty!4321) (_1!7263 (v!21047 lt!429600)))))))

(declare-fun lt!429583 () tuple2!12744)

(assert (=> b!1305757 (= lt!429583 (lexRec!259 thiss!19762 rules!2550 (_2!7263 (v!21047 lt!429600))))))

(declare-fun lt!429605 () List!13222)

(assert (=> b!1305757 (= lt!429605 (list!4927 (BalanceConc!8581 Empty!4320)))))

(declare-fun lt!429587 () List!13222)

(assert (=> b!1305757 (= lt!429587 (list!4927 (charsOf!1247 (_1!7263 (v!21047 lt!429600)))))))

(declare-fun lt!429581 () List!13222)

(assert (=> b!1305757 (= lt!429581 (list!4927 (_2!7263 (v!21047 lt!429600))))))

(declare-fun lt!429591 () Unit!19246)

(declare-fun lemmaConcatAssociativity!817 (List!13222 List!13222 List!13222) Unit!19246)

(assert (=> b!1305757 (= lt!429591 (lemmaConcatAssociativity!817 lt!429605 lt!429587 lt!429581))))

(assert (=> b!1305757 (= (++!3346 (++!3346 lt!429605 lt!429587) lt!429581) (++!3346 lt!429605 (++!3346 lt!429587 lt!429581)))))

(declare-fun lt!429594 () Unit!19246)

(assert (=> b!1305757 (= lt!429594 lt!429591)))

(declare-fun lt!429588 () Option!2542)

(declare-fun maxPrefixZipperSequence!532 (LexerInterface!1970 List!13224 BalanceConc!8580) Option!2542)

(assert (=> b!1305757 (= lt!429588 (maxPrefixZipperSequence!532 thiss!19762 rules!2550 lt!429019))))

(declare-fun c!214650 () Bool)

(assert (=> b!1305757 (= c!214650 ((_ is Some!2541) lt!429588))))

(declare-fun e!837377 () tuple2!12744)

(assert (=> b!1305757 (= (lexRec!259 thiss!19762 rules!2550 lt!429019) e!837377)))

(declare-fun lt!429603 () Unit!19246)

(declare-fun Unit!19258 () Unit!19246)

(assert (=> b!1305757 (= lt!429603 Unit!19258)))

(declare-fun lt!429601 () List!13225)

(assert (=> b!1305757 (= lt!429601 (list!4926 (BalanceConc!8583 Empty!4321)))))

(declare-fun lt!429582 () List!13225)

(assert (=> b!1305757 (= lt!429582 (Cons!13159 (_1!7263 (v!21047 lt!429600)) Nil!13159))))

(declare-fun lt!429599 () List!13225)

(assert (=> b!1305757 (= lt!429599 (list!4926 (_1!7258 lt!429583)))))

(declare-fun lt!429590 () Unit!19246)

(declare-fun lemmaConcatAssociativity!818 (List!13225 List!13225 List!13225) Unit!19246)

(assert (=> b!1305757 (= lt!429590 (lemmaConcatAssociativity!818 lt!429601 lt!429582 lt!429599))))

(declare-fun ++!3350 (List!13225 List!13225) List!13225)

(assert (=> b!1305757 (= (++!3350 (++!3350 lt!429601 lt!429582) lt!429599) (++!3350 lt!429601 (++!3350 lt!429582 lt!429599)))))

(declare-fun lt!429598 () Unit!19246)

(assert (=> b!1305757 (= lt!429598 lt!429590)))

(declare-fun lt!429593 () List!13222)

(assert (=> b!1305757 (= lt!429593 (++!3346 (list!4927 (BalanceConc!8581 Empty!4320)) (list!4927 (charsOf!1247 (_1!7263 (v!21047 lt!429600))))))))

(declare-fun lt!429597 () List!13222)

(assert (=> b!1305757 (= lt!429597 (list!4927 (_2!7263 (v!21047 lt!429600))))))

(declare-fun lt!429592 () List!13225)

(assert (=> b!1305757 (= lt!429592 (list!4926 (append!380 (BalanceConc!8583 Empty!4321) (_1!7263 (v!21047 lt!429600)))))))

(declare-fun lt!429609 () Unit!19246)

(declare-fun lemmaLexThenLexPrefix!174 (LexerInterface!1970 List!13224 List!13222 List!13222 List!13225 List!13225 List!13222) Unit!19246)

(assert (=> b!1305757 (= lt!429609 (lemmaLexThenLexPrefix!174 thiss!19762 rules!2550 lt!429593 lt!429597 lt!429592 (list!4926 (_1!7258 lt!429583)) (list!4927 (_2!7258 lt!429583))))))

(assert (=> b!1305757 (= (lexList!508 thiss!19762 rules!2550 lt!429593) (tuple2!12747 lt!429592 Nil!13156))))

(declare-fun lt!429608 () Unit!19246)

(assert (=> b!1305757 (= lt!429608 lt!429609)))

(declare-fun lt!429604 () BalanceConc!8580)

(assert (=> b!1305757 (= lt!429604 (++!3347 (BalanceConc!8581 Empty!4320) (charsOf!1247 (_1!7263 (v!21047 lt!429600)))))))

(declare-fun lt!429589 () Option!2542)

(assert (=> b!1305757 (= lt!429589 (maxPrefixZipperSequence!532 thiss!19762 rules!2550 lt!429604))))

(declare-fun c!214649 () Bool)

(assert (=> b!1305757 (= c!214649 ((_ is Some!2541) lt!429589))))

(declare-fun e!837376 () tuple2!12744)

(assert (=> b!1305757 (= (lexRec!259 thiss!19762 rules!2550 (++!3347 (BalanceConc!8581 Empty!4320) (charsOf!1247 (_1!7263 (v!21047 lt!429600))))) e!837376)))

(declare-fun lt!429579 () Unit!19246)

(declare-fun Unit!19259 () Unit!19246)

(assert (=> b!1305757 (= lt!429579 Unit!19259)))

(assert (=> b!1305757 (= lt!429606 (++!3347 (BalanceConc!8581 Empty!4320) (charsOf!1247 (_1!7263 (v!21047 lt!429600)))))))

(declare-fun lt!429586 () List!13222)

(assert (=> b!1305757 (= lt!429586 (list!4927 lt!429606))))

(declare-fun lt!429584 () List!13222)

(assert (=> b!1305757 (= lt!429584 (list!4927 (_2!7263 (v!21047 lt!429600))))))

(declare-fun lt!429595 () Unit!19246)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!215 (List!13222 List!13222) Unit!19246)

(assert (=> b!1305757 (= lt!429595 (lemmaConcatTwoListThenFSndIsSuffix!215 lt!429586 lt!429584))))

(declare-fun isSuffix!237 (List!13222 List!13222) Bool)

(assert (=> b!1305757 (isSuffix!237 lt!429584 (++!3346 lt!429586 lt!429584))))

(declare-fun lt!429596 () Unit!19246)

(assert (=> b!1305757 (= lt!429596 lt!429595)))

(declare-fun d!368118 () Bool)

(assert (=> d!368118 e!837374))

(declare-fun res!585387 () Bool)

(assert (=> d!368118 (=> (not res!585387) (not e!837374))))

(assert (=> d!368118 (= res!585387 (= (list!4926 (_1!7258 lt!429610)) (list!4926 (_1!7258 (lexRec!259 thiss!19762 rules!2550 lt!429019)))))))

(assert (=> d!368118 (= lt!429610 e!837375)))

(declare-fun c!214651 () Bool)

(assert (=> d!368118 (= c!214651 ((_ is Some!2541) lt!429600))))

(declare-fun maxPrefixZipperSequenceV2!204 (LexerInterface!1970 List!13224 BalanceConc!8580 BalanceConc!8580) Option!2542)

(assert (=> d!368118 (= lt!429600 (maxPrefixZipperSequenceV2!204 thiss!19762 rules!2550 lt!429019 lt!429019))))

(declare-fun lt!429607 () Unit!19246)

(declare-fun lt!429578 () Unit!19246)

(assert (=> d!368118 (= lt!429607 lt!429578)))

(declare-fun lt!429585 () List!13222)

(declare-fun lt!429580 () List!13222)

(assert (=> d!368118 (isSuffix!237 lt!429585 (++!3346 lt!429580 lt!429585))))

(assert (=> d!368118 (= lt!429578 (lemmaConcatTwoListThenFSndIsSuffix!215 lt!429580 lt!429585))))

(assert (=> d!368118 (= lt!429585 (list!4927 lt!429019))))

(assert (=> d!368118 (= lt!429580 (list!4927 (BalanceConc!8581 Empty!4320)))))

(assert (=> d!368118 (= (lexTailRecV2!355 thiss!19762 rules!2550 lt!429019 (BalanceConc!8581 Empty!4320) lt!429019 (BalanceConc!8583 Empty!4321)) lt!429610)))

(declare-fun lt!429602 () tuple2!12744)

(declare-fun b!1305758 () Bool)

(assert (=> b!1305758 (= lt!429602 (lexRec!259 thiss!19762 rules!2550 (_2!7263 (v!21047 lt!429588))))))

(declare-fun prepend!344 (BalanceConc!8582 Token!4212) BalanceConc!8582)

(assert (=> b!1305758 (= e!837377 (tuple2!12745 (prepend!344 (_1!7258 lt!429602) (_1!7263 (v!21047 lt!429588))) (_2!7258 lt!429602)))))

(declare-fun b!1305759 () Bool)

(assert (=> b!1305759 (= e!837375 (tuple2!12745 (BalanceConc!8583 Empty!4321) lt!429019))))

(declare-fun b!1305760 () Bool)

(assert (=> b!1305760 (= e!837377 (tuple2!12745 (BalanceConc!8583 Empty!4321) lt!429019))))

(declare-fun b!1305761 () Bool)

(declare-fun lt!429611 () tuple2!12744)

(assert (=> b!1305761 (= lt!429611 (lexRec!259 thiss!19762 rules!2550 (_2!7263 (v!21047 lt!429589))))))

(assert (=> b!1305761 (= e!837376 (tuple2!12745 (prepend!344 (_1!7258 lt!429611) (_1!7263 (v!21047 lt!429589))) (_2!7258 lt!429611)))))

(declare-fun b!1305762 () Bool)

(assert (=> b!1305762 (= e!837376 (tuple2!12745 (BalanceConc!8583 Empty!4321) lt!429604))))

(assert (= (and d!368118 c!214651) b!1305757))

(assert (= (and d!368118 (not c!214651)) b!1305759))

(assert (= (and b!1305757 c!214650) b!1305758))

(assert (= (and b!1305757 (not c!214650)) b!1305760))

(assert (= (and b!1305757 c!214649) b!1305761))

(assert (= (and b!1305757 (not c!214649)) b!1305762))

(assert (= (and d!368118 res!585387) b!1305756))

(declare-fun m!1457337 () Bool)

(assert (=> b!1305758 m!1457337))

(declare-fun m!1457339 () Bool)

(assert (=> b!1305758 m!1457339))

(declare-fun m!1457341 () Bool)

(assert (=> d!368118 m!1457341))

(assert (=> d!368118 m!1455527))

(declare-fun m!1457343 () Bool)

(assert (=> d!368118 m!1457343))

(declare-fun m!1457345 () Bool)

(assert (=> d!368118 m!1457345))

(declare-fun m!1457347 () Bool)

(assert (=> d!368118 m!1457347))

(declare-fun m!1457349 () Bool)

(assert (=> d!368118 m!1457349))

(declare-fun m!1457351 () Bool)

(assert (=> d!368118 m!1457351))

(declare-fun m!1457353 () Bool)

(assert (=> d!368118 m!1457353))

(assert (=> d!368118 m!1457347))

(declare-fun m!1457355 () Bool)

(assert (=> d!368118 m!1457355))

(declare-fun m!1457357 () Bool)

(assert (=> b!1305761 m!1457357))

(declare-fun m!1457359 () Bool)

(assert (=> b!1305761 m!1457359))

(declare-fun m!1457361 () Bool)

(assert (=> b!1305757 m!1457361))

(assert (=> b!1305757 m!1457353))

(declare-fun m!1457363 () Bool)

(assert (=> b!1305757 m!1457363))

(declare-fun m!1457365 () Bool)

(assert (=> b!1305757 m!1457365))

(declare-fun m!1457367 () Bool)

(assert (=> b!1305757 m!1457367))

(declare-fun m!1457369 () Bool)

(assert (=> b!1305757 m!1457369))

(declare-fun m!1457371 () Bool)

(assert (=> b!1305757 m!1457371))

(declare-fun m!1457373 () Bool)

(assert (=> b!1305757 m!1457373))

(assert (=> b!1305757 m!1457363))

(declare-fun m!1457375 () Bool)

(assert (=> b!1305757 m!1457375))

(declare-fun m!1457377 () Bool)

(assert (=> b!1305757 m!1457377))

(declare-fun m!1457379 () Bool)

(assert (=> b!1305757 m!1457379))

(declare-fun m!1457381 () Bool)

(assert (=> b!1305757 m!1457381))

(declare-fun m!1457383 () Bool)

(assert (=> b!1305757 m!1457383))

(assert (=> b!1305757 m!1457381))

(declare-fun m!1457385 () Bool)

(assert (=> b!1305757 m!1457385))

(assert (=> b!1305757 m!1457385))

(declare-fun m!1457389 () Bool)

(assert (=> b!1305757 m!1457389))

(declare-fun m!1457393 () Bool)

(assert (=> b!1305757 m!1457393))

(declare-fun m!1457395 () Bool)

(assert (=> b!1305757 m!1457395))

(declare-fun m!1457399 () Bool)

(assert (=> b!1305757 m!1457399))

(declare-fun m!1457401 () Bool)

(assert (=> b!1305757 m!1457401))

(declare-fun m!1457403 () Bool)

(assert (=> b!1305757 m!1457403))

(declare-fun m!1457405 () Bool)

(assert (=> b!1305757 m!1457405))

(assert (=> b!1305757 m!1457385))

(declare-fun m!1457411 () Bool)

(assert (=> b!1305757 m!1457411))

(declare-fun m!1457417 () Bool)

(assert (=> b!1305757 m!1457417))

(declare-fun m!1457419 () Bool)

(assert (=> b!1305757 m!1457419))

(declare-fun m!1457423 () Bool)

(assert (=> b!1305757 m!1457423))

(assert (=> b!1305757 m!1457343))

(declare-fun m!1457425 () Bool)

(assert (=> b!1305757 m!1457425))

(declare-fun m!1457427 () Bool)

(assert (=> b!1305757 m!1457427))

(assert (=> b!1305757 m!1457401))

(assert (=> b!1305757 m!1457417))

(declare-fun m!1457431 () Bool)

(assert (=> b!1305757 m!1457431))

(assert (=> b!1305757 m!1457343))

(assert (=> b!1305757 m!1457403))

(declare-fun m!1457433 () Bool)

(assert (=> b!1305757 m!1457433))

(declare-fun m!1457435 () Bool)

(assert (=> b!1305757 m!1457435))

(assert (=> b!1305757 m!1457393))

(assert (=> b!1305757 m!1457405))

(declare-fun m!1457439 () Bool)

(assert (=> b!1305757 m!1457439))

(assert (=> b!1305757 m!1457379))

(assert (=> b!1305757 m!1457399))

(declare-fun m!1457443 () Bool)

(assert (=> b!1305757 m!1457443))

(assert (=> b!1305757 m!1457401))

(assert (=> b!1305757 m!1457367))

(declare-fun m!1457445 () Bool)

(assert (=> b!1305756 m!1457445))

(assert (=> b!1305756 m!1457353))

(declare-fun m!1457449 () Bool)

(assert (=> b!1305756 m!1457449))

(assert (=> d!367764 d!368118))

(declare-fun d!368258 () Bool)

(assert (=> d!368258 (= (list!4927 lt!429194) (list!4930 (c!214292 lt!429194)))))

(declare-fun bs!329572 () Bool)

(assert (= bs!329572 d!368258))

(declare-fun m!1457457 () Bool)

(assert (=> bs!329572 m!1457457))

(assert (=> d!367762 d!368258))

(declare-fun d!368262 () Bool)

(declare-fun c!214655 () Bool)

(assert (=> d!368262 (= c!214655 ((_ is Cons!13159) (list!4926 (singletonSeq!844 t1!34))))))

(declare-fun e!837385 () List!13222)

(assert (=> d!368262 (= (printList!550 thiss!19762 (list!4926 (singletonSeq!844 t1!34))) e!837385)))

(declare-fun b!1305778 () Bool)

(assert (=> b!1305778 (= e!837385 (++!3346 (list!4927 (charsOf!1247 (h!18560 (list!4926 (singletonSeq!844 t1!34))))) (printList!550 thiss!19762 (t!117786 (list!4926 (singletonSeq!844 t1!34))))))))

(declare-fun b!1305779 () Bool)

(assert (=> b!1305779 (= e!837385 Nil!13156)))

(assert (= (and d!368262 c!214655) b!1305778))

(assert (= (and d!368262 (not c!214655)) b!1305779))

(declare-fun m!1457463 () Bool)

(assert (=> b!1305778 m!1457463))

(assert (=> b!1305778 m!1457463))

(declare-fun m!1457465 () Bool)

(assert (=> b!1305778 m!1457465))

(declare-fun m!1457467 () Bool)

(assert (=> b!1305778 m!1457467))

(assert (=> b!1305778 m!1457465))

(assert (=> b!1305778 m!1457467))

(declare-fun m!1457469 () Bool)

(assert (=> b!1305778 m!1457469))

(assert (=> d!367762 d!368262))

(assert (=> d!367762 d!368104))

(declare-fun d!368266 () Bool)

(declare-fun lt!429635 () BalanceConc!8580)

(declare-fun printListTailRec!229 (LexerInterface!1970 List!13225 List!13222) List!13222)

(declare-fun dropList!360 (BalanceConc!8582 Int) List!13225)

(assert (=> d!368266 (= (list!4927 lt!429635) (printListTailRec!229 thiss!19762 (dropList!360 (singletonSeq!844 t1!34) 0) (list!4927 (BalanceConc!8581 Empty!4320))))))

(declare-fun e!837394 () BalanceConc!8580)

(assert (=> d!368266 (= lt!429635 e!837394)))

(declare-fun c!214661 () Bool)

(assert (=> d!368266 (= c!214661 (>= 0 (size!10725 (singletonSeq!844 t1!34))))))

(declare-fun e!837393 () Bool)

(assert (=> d!368266 e!837393))

(declare-fun res!585411 () Bool)

(assert (=> d!368266 (=> (not res!585411) (not e!837393))))

(assert (=> d!368266 (= res!585411 (>= 0 0))))

(assert (=> d!368266 (= (printTailRec!532 thiss!19762 (singletonSeq!844 t1!34) 0 (BalanceConc!8581 Empty!4320)) lt!429635)))

(declare-fun b!1305798 () Bool)

(assert (=> b!1305798 (= e!837393 (<= 0 (size!10725 (singletonSeq!844 t1!34))))))

(declare-fun b!1305799 () Bool)

(assert (=> b!1305799 (= e!837394 (BalanceConc!8581 Empty!4320))))

(declare-fun b!1305800 () Bool)

(assert (=> b!1305800 (= e!837394 (printTailRec!532 thiss!19762 (singletonSeq!844 t1!34) (+ 0 1) (++!3347 (BalanceConc!8581 Empty!4320) (charsOf!1247 (apply!2945 (singletonSeq!844 t1!34) 0)))))))

(declare-fun lt!429637 () List!13225)

(assert (=> b!1305800 (= lt!429637 (list!4926 (singletonSeq!844 t1!34)))))

(declare-fun lt!429640 () Unit!19246)

(declare-fun lemmaDropApply!420 (List!13225 Int) Unit!19246)

(assert (=> b!1305800 (= lt!429640 (lemmaDropApply!420 lt!429637 0))))

(declare-fun head!2244 (List!13225) Token!4212)

(declare-fun drop!659 (List!13225 Int) List!13225)

(assert (=> b!1305800 (= (head!2244 (drop!659 lt!429637 0)) (apply!2950 lt!429637 0))))

(declare-fun lt!429638 () Unit!19246)

(assert (=> b!1305800 (= lt!429638 lt!429640)))

(declare-fun lt!429639 () List!13225)

(assert (=> b!1305800 (= lt!429639 (list!4926 (singletonSeq!844 t1!34)))))

(declare-fun lt!429636 () Unit!19246)

(declare-fun lemmaDropTail!400 (List!13225 Int) Unit!19246)

(assert (=> b!1305800 (= lt!429636 (lemmaDropTail!400 lt!429639 0))))

(declare-fun tail!1870 (List!13225) List!13225)

(assert (=> b!1305800 (= (tail!1870 (drop!659 lt!429639 0)) (drop!659 lt!429639 (+ 0 1)))))

(declare-fun lt!429641 () Unit!19246)

(assert (=> b!1305800 (= lt!429641 lt!429636)))

(assert (= (and d!368266 res!585411) b!1305798))

(assert (= (and d!368266 c!214661) b!1305799))

(assert (= (and d!368266 (not c!214661)) b!1305800))

(assert (=> d!368266 m!1455541))

(declare-fun m!1457493 () Bool)

(assert (=> d!368266 m!1457493))

(assert (=> d!368266 m!1455541))

(declare-fun m!1457495 () Bool)

(assert (=> d!368266 m!1457495))

(declare-fun m!1457497 () Bool)

(assert (=> d!368266 m!1457497))

(assert (=> d!368266 m!1457343))

(assert (=> d!368266 m!1457493))

(assert (=> d!368266 m!1457343))

(declare-fun m!1457499 () Bool)

(assert (=> d!368266 m!1457499))

(assert (=> b!1305798 m!1455541))

(assert (=> b!1305798 m!1457495))

(assert (=> b!1305800 m!1455541))

(assert (=> b!1305800 m!1456095))

(declare-fun m!1457501 () Bool)

(assert (=> b!1305800 m!1457501))

(declare-fun m!1457503 () Bool)

(assert (=> b!1305800 m!1457503))

(declare-fun m!1457505 () Bool)

(assert (=> b!1305800 m!1457505))

(assert (=> b!1305800 m!1455541))

(declare-fun m!1457507 () Bool)

(assert (=> b!1305800 m!1457507))

(declare-fun m!1457509 () Bool)

(assert (=> b!1305800 m!1457509))

(assert (=> b!1305800 m!1457501))

(declare-fun m!1457511 () Bool)

(assert (=> b!1305800 m!1457511))

(declare-fun m!1457513 () Bool)

(assert (=> b!1305800 m!1457513))

(assert (=> b!1305800 m!1457507))

(declare-fun m!1457515 () Bool)

(assert (=> b!1305800 m!1457515))

(assert (=> b!1305800 m!1457503))

(declare-fun m!1457517 () Bool)

(assert (=> b!1305800 m!1457517))

(assert (=> b!1305800 m!1455541))

(declare-fun m!1457519 () Bool)

(assert (=> b!1305800 m!1457519))

(declare-fun m!1457521 () Bool)

(assert (=> b!1305800 m!1457521))

(assert (=> b!1305800 m!1457519))

(assert (=> b!1305800 m!1457513))

(declare-fun m!1457523 () Bool)

(assert (=> b!1305800 m!1457523))

(assert (=> d!367762 d!368266))

(declare-fun d!368270 () Bool)

(declare-fun lt!429642 () Int)

(assert (=> d!368270 (>= lt!429642 0)))

(declare-fun e!837395 () Int)

(assert (=> d!368270 (= lt!429642 e!837395)))

(declare-fun c!214662 () Bool)

(assert (=> d!368270 (= c!214662 ((_ is Nil!13156) (list!4927 lt!429012)))))

(assert (=> d!368270 (= (size!10722 (list!4927 lt!429012)) lt!429642)))

(declare-fun b!1305801 () Bool)

(assert (=> b!1305801 (= e!837395 0)))

(declare-fun b!1305802 () Bool)

(assert (=> b!1305802 (= e!837395 (+ 1 (size!10722 (t!117783 (list!4927 lt!429012)))))))

(assert (= (and d!368270 c!214662) b!1305801))

(assert (= (and d!368270 (not c!214662)) b!1305802))

(declare-fun m!1457525 () Bool)

(assert (=> b!1305802 m!1457525))

(assert (=> d!367702 d!368270))

(declare-fun d!368272 () Bool)

(assert (=> d!368272 (= (list!4927 lt!429012) (list!4930 (c!214292 lt!429012)))))

(declare-fun bs!329573 () Bool)

(assert (= bs!329573 d!368272))

(declare-fun m!1457527 () Bool)

(assert (=> bs!329573 m!1457527))

(assert (=> d!367702 d!368272))

(declare-fun d!368274 () Bool)

(declare-fun lt!429645 () Int)

(assert (=> d!368274 (= lt!429645 (size!10722 (list!4930 (c!214292 lt!429012))))))

(assert (=> d!368274 (= lt!429645 (ite ((_ is Empty!4320) (c!214292 lt!429012)) 0 (ite ((_ is Leaf!6654) (c!214292 lt!429012)) (csize!8871 (c!214292 lt!429012)) (csize!8870 (c!214292 lt!429012)))))))

(assert (=> d!368274 (= (size!10728 (c!214292 lt!429012)) lt!429645)))

(declare-fun bs!329574 () Bool)

(assert (= bs!329574 d!368274))

(assert (=> bs!329574 m!1457527))

(assert (=> bs!329574 m!1457527))

(declare-fun m!1457529 () Bool)

(assert (=> bs!329574 m!1457529))

(assert (=> d!367702 d!368274))

(declare-fun lt!429646 () Bool)

(declare-fun d!368276 () Bool)

(assert (=> d!368276 (= lt!429646 (select (content!1845 (map!2879 rules!2550 lambda!52007)) lt!429181))))

(declare-fun e!837397 () Bool)

(assert (=> d!368276 (= lt!429646 e!837397)))

(declare-fun res!585413 () Bool)

(assert (=> d!368276 (=> (not res!585413) (not e!837397))))

(assert (=> d!368276 (= res!585413 ((_ is Cons!13160) (map!2879 rules!2550 lambda!52007)))))

(assert (=> d!368276 (= (contains!2235 (map!2879 rules!2550 lambda!52007) lt!429181) lt!429646)))

(declare-fun b!1305803 () Bool)

(declare-fun e!837396 () Bool)

(assert (=> b!1305803 (= e!837397 e!837396)))

(declare-fun res!585412 () Bool)

(assert (=> b!1305803 (=> res!585412 e!837396)))

(assert (=> b!1305803 (= res!585412 (= (h!18561 (map!2879 rules!2550 lambda!52007)) lt!429181))))

(declare-fun b!1305804 () Bool)

(assert (=> b!1305804 (= e!837396 (contains!2235 (t!117787 (map!2879 rules!2550 lambda!52007)) lt!429181))))

(assert (= (and d!368276 res!585413) b!1305803))

(assert (= (and b!1305803 (not res!585412)) b!1305804))

(assert (=> d!368276 m!1455497))

(assert (=> d!368276 m!1456105))

(declare-fun m!1457531 () Bool)

(assert (=> d!368276 m!1457531))

(declare-fun m!1457533 () Bool)

(assert (=> b!1305804 m!1457533))

(assert (=> b!1304747 d!368276))

(declare-fun d!368278 () Bool)

(declare-fun lt!429647 () Int)

(assert (=> d!368278 (= lt!429647 (size!10722 (list!4927 (_2!7258 lt!429197))))))

(assert (=> d!368278 (= lt!429647 (size!10728 (c!214292 (_2!7258 lt!429197))))))

(assert (=> d!368278 (= (size!10717 (_2!7258 lt!429197)) lt!429647)))

(declare-fun bs!329575 () Bool)

(assert (= bs!329575 d!368278))

(assert (=> bs!329575 m!1456213))

(assert (=> bs!329575 m!1456213))

(declare-fun m!1457535 () Bool)

(assert (=> bs!329575 m!1457535))

(declare-fun m!1457537 () Bool)

(assert (=> bs!329575 m!1457537))

(assert (=> b!1304827 d!368278))

(declare-fun d!368280 () Bool)

(declare-fun lt!429648 () Int)

(assert (=> d!368280 (= lt!429648 (size!10722 (list!4927 lt!429019)))))

(assert (=> d!368280 (= lt!429648 (size!10728 (c!214292 lt!429019)))))

(assert (=> d!368280 (= (size!10717 lt!429019) lt!429648)))

(declare-fun bs!329576 () Bool)

(assert (= bs!329576 d!368280))

(assert (=> bs!329576 m!1455527))

(assert (=> bs!329576 m!1455527))

(assert (=> bs!329576 m!1455671))

(declare-fun m!1457539 () Bool)

(assert (=> bs!329576 m!1457539))

(assert (=> b!1304827 d!368280))

(assert (=> d!367708 d!368110))

(declare-fun d!368282 () Bool)

(assert (=> d!368282 (= (list!4927 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (value!74470 t2!34))) (list!4930 (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (value!74470 t2!34)))))))

(declare-fun bs!329577 () Bool)

(assert (= bs!329577 d!368282))

(declare-fun m!1457541 () Bool)

(assert (=> bs!329577 m!1457541))

(assert (=> b!1304701 d!368282))

(declare-fun d!368284 () Bool)

(declare-fun res!585416 () List!13222)

(assert (=> d!368284 (dynLambda!5718 lambda!52006 res!585416)))

(declare-fun e!837400 () Bool)

(assert (=> d!368284 e!837400))

(assert (=> d!368284 (= (choose!7985 lambda!52006) res!585416)))

(declare-fun b!1305807 () Bool)

(declare-fun tp!380818 () Bool)

(assert (=> b!1305807 (= e!837400 (and tp_is_empty!6607 tp!380818))))

(assert (= (and d!368284 ((_ is Cons!13156) res!585416)) b!1305807))

(declare-fun b_lambda!37427 () Bool)

(assert (=> (not b_lambda!37427) (not d!368284)))

(declare-fun m!1457543 () Bool)

(assert (=> d!368284 m!1457543))

(assert (=> d!367616 d!368284))

(assert (=> d!367616 d!367712))

(declare-fun d!368286 () Bool)

(declare-fun lt!429649 () Token!4212)

(assert (=> d!368286 (= lt!429649 (apply!2950 (list!4926 (_1!7258 lt!429163)) 0))))

(assert (=> d!368286 (= lt!429649 (apply!2951 (c!214294 (_1!7258 lt!429163)) 0))))

(declare-fun e!837401 () Bool)

(assert (=> d!368286 e!837401))

(declare-fun res!585417 () Bool)

(assert (=> d!368286 (=> (not res!585417) (not e!837401))))

(assert (=> d!368286 (= res!585417 (<= 0 0))))

(assert (=> d!368286 (= (apply!2945 (_1!7258 lt!429163) 0) lt!429649)))

(declare-fun b!1305808 () Bool)

(assert (=> b!1305808 (= e!837401 (< 0 (size!10725 (_1!7258 lt!429163))))))

(assert (= (and d!368286 res!585417) b!1305808))

(assert (=> d!368286 m!1457009))

(assert (=> d!368286 m!1457009))

(declare-fun m!1457545 () Bool)

(assert (=> d!368286 m!1457545))

(declare-fun m!1457547 () Bool)

(assert (=> d!368286 m!1457547))

(assert (=> b!1305808 m!1456093))

(assert (=> b!1304703 d!368286))

(declare-fun b!1305821 () Bool)

(declare-fun e!837406 () Bool)

(declare-fun isEmpty!7793 (Conc!4321) Bool)

(assert (=> b!1305821 (= e!837406 (not (isEmpty!7793 (right!11646 (c!214294 lt!429206)))))))

(declare-fun b!1305822 () Bool)

(declare-fun res!585434 () Bool)

(assert (=> b!1305822 (=> (not res!585434) (not e!837406))))

(assert (=> b!1305822 (= res!585434 (isBalanced!1262 (left!11316 (c!214294 lt!429206))))))

(declare-fun b!1305824 () Bool)

(declare-fun res!585435 () Bool)

(assert (=> b!1305824 (=> (not res!585435) (not e!837406))))

(assert (=> b!1305824 (= res!585435 (not (isEmpty!7793 (left!11316 (c!214294 lt!429206)))))))

(declare-fun b!1305825 () Bool)

(declare-fun res!585431 () Bool)

(assert (=> b!1305825 (=> (not res!585431) (not e!837406))))

(declare-fun height!617 (Conc!4321) Int)

(assert (=> b!1305825 (= res!585431 (<= (- (height!617 (left!11316 (c!214294 lt!429206))) (height!617 (right!11646 (c!214294 lt!429206)))) 1))))

(declare-fun b!1305826 () Bool)

(declare-fun e!837407 () Bool)

(assert (=> b!1305826 (= e!837407 e!837406)))

(declare-fun res!585430 () Bool)

(assert (=> b!1305826 (=> (not res!585430) (not e!837406))))

(assert (=> b!1305826 (= res!585430 (<= (- 1) (- (height!617 (left!11316 (c!214294 lt!429206))) (height!617 (right!11646 (c!214294 lt!429206))))))))

(declare-fun d!368288 () Bool)

(declare-fun res!585432 () Bool)

(assert (=> d!368288 (=> res!585432 e!837407)))

(assert (=> d!368288 (= res!585432 (not ((_ is Node!4321) (c!214294 lt!429206))))))

(assert (=> d!368288 (= (isBalanced!1262 (c!214294 lt!429206)) e!837407)))

(declare-fun b!1305823 () Bool)

(declare-fun res!585433 () Bool)

(assert (=> b!1305823 (=> (not res!585433) (not e!837406))))

(assert (=> b!1305823 (= res!585433 (isBalanced!1262 (right!11646 (c!214294 lt!429206))))))

(assert (= (and d!368288 (not res!585432)) b!1305826))

(assert (= (and b!1305826 res!585430) b!1305825))

(assert (= (and b!1305825 res!585431) b!1305822))

(assert (= (and b!1305822 res!585434) b!1305823))

(assert (= (and b!1305823 res!585433) b!1305824))

(assert (= (and b!1305824 res!585435) b!1305821))

(declare-fun m!1457549 () Bool)

(assert (=> b!1305823 m!1457549))

(declare-fun m!1457551 () Bool)

(assert (=> b!1305824 m!1457551))

(declare-fun m!1457553 () Bool)

(assert (=> b!1305826 m!1457553))

(declare-fun m!1457555 () Bool)

(assert (=> b!1305826 m!1457555))

(declare-fun m!1457557 () Bool)

(assert (=> b!1305821 m!1457557))

(assert (=> b!1305825 m!1457553))

(assert (=> b!1305825 m!1457555))

(declare-fun m!1457559 () Bool)

(assert (=> b!1305822 m!1457559))

(assert (=> b!1304849 d!368288))

(declare-fun d!368290 () Bool)

(declare-fun c!214663 () Bool)

(assert (=> d!368290 (= c!214663 ((_ is Nil!13156) lt!429186))))

(declare-fun e!837408 () (InoxSet C!7468))

(assert (=> d!368290 (= (content!1843 lt!429186) e!837408)))

(declare-fun b!1305827 () Bool)

(assert (=> b!1305827 (= e!837408 ((as const (Array C!7468 Bool)) false))))

(declare-fun b!1305828 () Bool)

(assert (=> b!1305828 (= e!837408 ((_ map or) (store ((as const (Array C!7468 Bool)) false) (h!18557 lt!429186) true) (content!1843 (t!117783 lt!429186))))))

(assert (= (and d!368290 c!214663) b!1305827))

(assert (= (and d!368290 (not c!214663)) b!1305828))

(declare-fun m!1457561 () Bool)

(assert (=> b!1305828 m!1457561))

(declare-fun m!1457563 () Bool)

(assert (=> b!1305828 m!1457563))

(assert (=> d!367752 d!368290))

(declare-fun d!368292 () Bool)

(declare-fun c!214664 () Bool)

(assert (=> d!368292 (= c!214664 ((_ is Nil!13156) lt!429006))))

(declare-fun e!837409 () (InoxSet C!7468))

(assert (=> d!368292 (= (content!1843 lt!429006) e!837409)))

(declare-fun b!1305829 () Bool)

(assert (=> b!1305829 (= e!837409 ((as const (Array C!7468 Bool)) false))))

(declare-fun b!1305830 () Bool)

(assert (=> b!1305830 (= e!837409 ((_ map or) (store ((as const (Array C!7468 Bool)) false) (h!18557 lt!429006) true) (content!1843 (t!117783 lt!429006))))))

(assert (= (and d!368292 c!214664) b!1305829))

(assert (= (and d!368292 (not c!214664)) b!1305830))

(declare-fun m!1457565 () Bool)

(assert (=> b!1305830 m!1457565))

(declare-fun m!1457567 () Bool)

(assert (=> b!1305830 m!1457567))

(assert (=> d!367752 d!368292))

(declare-fun d!368294 () Bool)

(declare-fun c!214665 () Bool)

(assert (=> d!368294 (= c!214665 ((_ is Nil!13156) (Cons!13156 lt!429010 Nil!13156)))))

(declare-fun e!837410 () (InoxSet C!7468))

(assert (=> d!368294 (= (content!1843 (Cons!13156 lt!429010 Nil!13156)) e!837410)))

(declare-fun b!1305831 () Bool)

(assert (=> b!1305831 (= e!837410 ((as const (Array C!7468 Bool)) false))))

(declare-fun b!1305832 () Bool)

(assert (=> b!1305832 (= e!837410 ((_ map or) (store ((as const (Array C!7468 Bool)) false) (h!18557 (Cons!13156 lt!429010 Nil!13156)) true) (content!1843 (t!117783 (Cons!13156 lt!429010 Nil!13156)))))))

(assert (= (and d!368294 c!214665) b!1305831))

(assert (= (and d!368294 (not c!214665)) b!1305832))

(declare-fun m!1457569 () Bool)

(assert (=> b!1305832 m!1457569))

(declare-fun m!1457571 () Bool)

(assert (=> b!1305832 m!1457571))

(assert (=> d!367752 d!368294))

(declare-fun d!368296 () Bool)

(declare-fun lt!429682 () Int)

(assert (=> d!368296 (>= lt!429682 0)))

(declare-fun e!837413 () Int)

(assert (=> d!368296 (= lt!429682 e!837413)))

(declare-fun c!214668 () Bool)

(assert (=> d!368296 (= c!214668 ((_ is Nil!13160) lt!429120))))

(assert (=> d!368296 (= (size!10726 lt!429120) lt!429682)))

(declare-fun b!1305837 () Bool)

(assert (=> b!1305837 (= e!837413 0)))

(declare-fun b!1305838 () Bool)

(assert (=> b!1305838 (= e!837413 (+ 1 (size!10726 (t!117787 lt!429120))))))

(assert (= (and d!368296 c!214668) b!1305837))

(assert (= (and d!368296 (not c!214668)) b!1305838))

(declare-fun m!1457579 () Bool)

(assert (=> b!1305838 m!1457579))

(assert (=> d!367672 d!368296))

(declare-fun d!368298 () Bool)

(declare-fun lt!429685 () Int)

(assert (=> d!368298 (>= lt!429685 0)))

(declare-fun e!837416 () Int)

(assert (=> d!368298 (= lt!429685 e!837416)))

(declare-fun c!214671 () Bool)

(assert (=> d!368298 (= c!214671 ((_ is Nil!13158) rules!2550))))

(assert (=> d!368298 (= (size!10727 rules!2550) lt!429685)))

(declare-fun b!1305843 () Bool)

(assert (=> b!1305843 (= e!837416 0)))

(declare-fun b!1305844 () Bool)

(assert (=> b!1305844 (= e!837416 (+ 1 (size!10727 (t!117785 rules!2550))))))

(assert (= (and d!368298 c!214671) b!1305843))

(assert (= (and d!368298 (not c!214671)) b!1305844))

(declare-fun m!1457601 () Bool)

(assert (=> b!1305844 m!1457601))

(assert (=> d!367672 d!368298))

(declare-fun d!368302 () Bool)

(assert (=> d!368302 (= ($colon$colon!141 (map!2879 (t!117785 rules!2550) lambda!52007) (dynLambda!5722 lambda!52007 (h!18559 rules!2550))) (Cons!13160 (dynLambda!5722 lambda!52007 (h!18559 rules!2550)) (map!2879 (t!117785 rules!2550) lambda!52007)))))

(assert (=> b!1304579 d!368302))

(declare-fun d!368304 () Bool)

(declare-fun lt!429686 () List!13226)

(assert (=> d!368304 (= (size!10726 lt!429686) (size!10727 (t!117785 rules!2550)))))

(declare-fun e!837417 () List!13226)

(assert (=> d!368304 (= lt!429686 e!837417)))

(declare-fun c!214672 () Bool)

(assert (=> d!368304 (= c!214672 ((_ is Nil!13158) (t!117785 rules!2550)))))

(assert (=> d!368304 (= (map!2879 (t!117785 rules!2550) lambda!52007) lt!429686)))

(declare-fun b!1305845 () Bool)

(assert (=> b!1305845 (= e!837417 Nil!13160)))

(declare-fun b!1305846 () Bool)

(assert (=> b!1305846 (= e!837417 ($colon$colon!141 (map!2879 (t!117785 (t!117785 rules!2550)) lambda!52007) (dynLambda!5722 lambda!52007 (h!18559 (t!117785 rules!2550)))))))

(assert (= (and d!368304 c!214672) b!1305845))

(assert (= (and d!368304 (not c!214672)) b!1305846))

(declare-fun b_lambda!37429 () Bool)

(assert (=> (not b_lambda!37429) (not b!1305846)))

(declare-fun m!1457603 () Bool)

(assert (=> d!368304 m!1457603))

(assert (=> d!368304 m!1457601))

(declare-fun m!1457605 () Bool)

(assert (=> b!1305846 m!1457605))

(declare-fun m!1457607 () Bool)

(assert (=> b!1305846 m!1457607))

(assert (=> b!1305846 m!1457605))

(assert (=> b!1305846 m!1457607))

(declare-fun m!1457609 () Bool)

(assert (=> b!1305846 m!1457609))

(assert (=> b!1304579 d!368304))

(declare-fun d!368306 () Bool)

(declare-fun lt!429689 () Bool)

(assert (=> d!368306 (= lt!429689 (isEmpty!7786 (list!4927 (_2!7258 lt!429163))))))

(assert (=> d!368306 (= lt!429689 (isEmpty!7787 (c!214292 (_2!7258 lt!429163))))))

(assert (=> d!368306 (= (isEmpty!7781 (_2!7258 lt!429163)) lt!429689)))

(declare-fun bs!329579 () Bool)

(assert (= bs!329579 d!368306))

(declare-fun m!1457611 () Bool)

(assert (=> bs!329579 m!1457611))

(assert (=> bs!329579 m!1457611))

(declare-fun m!1457613 () Bool)

(assert (=> bs!329579 m!1457613))

(declare-fun m!1457615 () Bool)

(assert (=> bs!329579 m!1457615))

(assert (=> b!1304704 d!368306))

(declare-fun bs!329580 () Bool)

(declare-fun d!368308 () Bool)

(assert (= bs!329580 (and d!368308 d!367874)))

(declare-fun lambda!52121 () Int)

(assert (=> bs!329580 (= (and (= (toChars!3349 (transformation!2275 (h!18559 rules!2550))) (toChars!3349 (transformation!2275 (rule!4014 t2!34)))) (= (toValue!3490 (transformation!2275 (h!18559 rules!2550))) (toValue!3490 (transformation!2275 (rule!4014 t2!34))))) (= lambda!52121 lambda!52076))))

(declare-fun bs!329581 () Bool)

(assert (= bs!329581 (and d!368308 d!368022)))

(assert (=> bs!329581 (= (and (= (toChars!3349 (transformation!2275 (h!18559 rules!2550))) (toChars!3349 (transformation!2275 (rule!4014 t1!34)))) (= (toValue!3490 (transformation!2275 (h!18559 rules!2550))) (toValue!3490 (transformation!2275 (rule!4014 t1!34))))) (= lambda!52121 lambda!52101))))

(assert (=> d!368308 true))

(assert (=> d!368308 (< (dynLambda!5733 order!7947 (toChars!3349 (transformation!2275 (h!18559 rules!2550)))) (dynLambda!5734 order!7949 lambda!52121))))

(assert (=> d!368308 true))

(assert (=> d!368308 (< (dynLambda!5735 order!7951 (toValue!3490 (transformation!2275 (h!18559 rules!2550)))) (dynLambda!5734 order!7949 lambda!52121))))

(assert (=> d!368308 (= (semiInverseModEq!858 (toChars!3349 (transformation!2275 (h!18559 rules!2550))) (toValue!3490 (transformation!2275 (h!18559 rules!2550)))) (Forall!513 lambda!52121))))

(declare-fun bs!329582 () Bool)

(assert (= bs!329582 d!368308))

(declare-fun m!1457623 () Bool)

(assert (=> bs!329582 m!1457623))

(assert (=> d!367584 d!368308))

(declare-fun lt!429692 () Bool)

(declare-fun d!368312 () Bool)

(assert (=> d!368312 (= lt!429692 (select (content!1845 (t!117787 (map!2879 rules!2550 lambda!52007))) lt!429016))))

(declare-fun e!837423 () Bool)

(assert (=> d!368312 (= lt!429692 e!837423)))

(declare-fun res!585441 () Bool)

(assert (=> d!368312 (=> (not res!585441) (not e!837423))))

(assert (=> d!368312 (= res!585441 ((_ is Cons!13160) (t!117787 (map!2879 rules!2550 lambda!52007))))))

(assert (=> d!368312 (= (contains!2235 (t!117787 (map!2879 rules!2550 lambda!52007)) lt!429016) lt!429692)))

(declare-fun b!1305851 () Bool)

(declare-fun e!837422 () Bool)

(assert (=> b!1305851 (= e!837423 e!837422)))

(declare-fun res!585440 () Bool)

(assert (=> b!1305851 (=> res!585440 e!837422)))

(assert (=> b!1305851 (= res!585440 (= (h!18561 (t!117787 (map!2879 rules!2550 lambda!52007))) lt!429016))))

(declare-fun b!1305852 () Bool)

(assert (=> b!1305852 (= e!837422 (contains!2235 (t!117787 (t!117787 (map!2879 rules!2550 lambda!52007))) lt!429016))))

(assert (= (and d!368312 res!585441) b!1305851))

(assert (= (and b!1305851 (not res!585440)) b!1305852))

(assert (=> d!368312 m!1456793))

(declare-fun m!1457633 () Bool)

(assert (=> d!368312 m!1457633))

(declare-fun m!1457635 () Bool)

(assert (=> b!1305852 m!1457635))

(assert (=> b!1304711 d!368312))

(declare-fun d!368314 () Bool)

(declare-fun lt!429695 () C!7468)

(assert (=> d!368314 (contains!2234 (list!4927 lt!429012) lt!429695)))

(declare-fun e!837444 () C!7468)

(assert (=> d!368314 (= lt!429695 e!837444)))

(declare-fun c!214675 () Bool)

(assert (=> d!368314 (= c!214675 (= 0 0))))

(declare-fun e!837443 () Bool)

(assert (=> d!368314 e!837443))

(declare-fun res!585444 () Bool)

(assert (=> d!368314 (=> (not res!585444) (not e!837443))))

(assert (=> d!368314 (= res!585444 (<= 0 0))))

(assert (=> d!368314 (= (apply!2946 (list!4927 lt!429012) 0) lt!429695)))

(declare-fun b!1305893 () Bool)

(assert (=> b!1305893 (= e!837443 (< 0 (size!10722 (list!4927 lt!429012))))))

(declare-fun b!1305894 () Bool)

(assert (=> b!1305894 (= e!837444 (head!2240 (list!4927 lt!429012)))))

(declare-fun b!1305895 () Bool)

(assert (=> b!1305895 (= e!837444 (apply!2946 (tail!1866 (list!4927 lt!429012)) (- 0 1)))))

(assert (= (and d!368314 res!585444) b!1305893))

(assert (= (and d!368314 c!214675) b!1305894))

(assert (= (and d!368314 (not c!214675)) b!1305895))

(assert (=> d!368314 m!1456027))

(declare-fun m!1457643 () Bool)

(assert (=> d!368314 m!1457643))

(assert (=> b!1305893 m!1456027))

(assert (=> b!1305893 m!1456029))

(assert (=> b!1305894 m!1456027))

(declare-fun m!1457647 () Bool)

(assert (=> b!1305894 m!1457647))

(assert (=> b!1305895 m!1456027))

(declare-fun m!1457651 () Bool)

(assert (=> b!1305895 m!1457651))

(assert (=> b!1305895 m!1457651))

(declare-fun m!1457653 () Bool)

(assert (=> b!1305895 m!1457653))

(assert (=> d!367754 d!368314))

(assert (=> d!367754 d!368272))

(declare-fun b!1305962 () Bool)

(declare-fun e!837471 () C!7468)

(declare-fun e!837473 () C!7468)

(assert (=> b!1305962 (= e!837471 e!837473)))

(declare-fun lt!429700 () Bool)

(declare-fun appendIndex!137 (List!13222 List!13222 Int) Bool)

(assert (=> b!1305962 (= lt!429700 (appendIndex!137 (list!4930 (left!11315 (c!214292 lt!429012))) (list!4930 (right!11645 (c!214292 lt!429012))) 0))))

(declare-fun c!214682 () Bool)

(assert (=> b!1305962 (= c!214682 (< 0 (size!10728 (left!11315 (c!214292 lt!429012)))))))

(declare-fun d!368316 () Bool)

(declare-fun lt!429701 () C!7468)

(assert (=> d!368316 (= lt!429701 (apply!2946 (list!4930 (c!214292 lt!429012)) 0))))

(assert (=> d!368316 (= lt!429701 e!837471)))

(declare-fun c!214683 () Bool)

(assert (=> d!368316 (= c!214683 ((_ is Leaf!6654) (c!214292 lt!429012)))))

(declare-fun e!837472 () Bool)

(assert (=> d!368316 e!837472))

(declare-fun res!585450 () Bool)

(assert (=> d!368316 (=> (not res!585450) (not e!837472))))

(assert (=> d!368316 (= res!585450 (<= 0 0))))

(assert (=> d!368316 (= (apply!2947 (c!214292 lt!429012) 0) lt!429701)))

(declare-fun b!1305963 () Bool)

(assert (=> b!1305963 (= e!837472 (< 0 (size!10728 (c!214292 lt!429012))))))

(declare-fun b!1305964 () Bool)

(declare-fun e!837474 () Int)

(assert (=> b!1305964 (= e!837474 (- 0 (size!10728 (left!11315 (c!214292 lt!429012)))))))

(declare-fun bm!89217 () Bool)

(declare-fun c!214684 () Bool)

(assert (=> bm!89217 (= c!214684 c!214682)))

(declare-fun call!89222 () C!7468)

(assert (=> bm!89217 (= call!89222 (apply!2947 (ite c!214682 (left!11315 (c!214292 lt!429012)) (right!11645 (c!214292 lt!429012))) e!837474))))

(declare-fun b!1305965 () Bool)

(assert (=> b!1305965 (= e!837474 0)))

(declare-fun b!1305966 () Bool)

(assert (=> b!1305966 (= e!837473 call!89222)))

(declare-fun b!1305967 () Bool)

(declare-fun apply!2953 (IArray!8645 Int) C!7468)

(assert (=> b!1305967 (= e!837471 (apply!2953 (xs!7035 (c!214292 lt!429012)) 0))))

(declare-fun b!1305968 () Bool)

(assert (=> b!1305968 (= e!837473 call!89222)))

(assert (= (and d!368316 res!585450) b!1305963))

(assert (= (and d!368316 c!214683) b!1305967))

(assert (= (and d!368316 (not c!214683)) b!1305962))

(assert (= (and b!1305962 c!214682) b!1305966))

(assert (= (and b!1305962 (not c!214682)) b!1305968))

(assert (= (or b!1305966 b!1305968) bm!89217))

(assert (= (and bm!89217 c!214684) b!1305965))

(assert (= (and bm!89217 (not c!214684)) b!1305964))

(declare-fun m!1457677 () Bool)

(assert (=> b!1305967 m!1457677))

(declare-fun m!1457679 () Bool)

(assert (=> b!1305964 m!1457679))

(declare-fun m!1457681 () Bool)

(assert (=> bm!89217 m!1457681))

(assert (=> b!1305963 m!1456031))

(declare-fun m!1457683 () Bool)

(assert (=> b!1305962 m!1457683))

(declare-fun m!1457685 () Bool)

(assert (=> b!1305962 m!1457685))

(assert (=> b!1305962 m!1457683))

(assert (=> b!1305962 m!1457685))

(declare-fun m!1457687 () Bool)

(assert (=> b!1305962 m!1457687))

(assert (=> b!1305962 m!1457679))

(assert (=> d!368316 m!1457527))

(assert (=> d!368316 m!1457527))

(declare-fun m!1457689 () Bool)

(assert (=> d!368316 m!1457689))

(assert (=> d!367754 d!368316))

(declare-fun b!1305969 () Bool)

(declare-fun e!837475 () List!13222)

(assert (=> b!1305969 (= e!837475 Nil!13156)))

(declare-fun b!1305972 () Bool)

(declare-fun e!837476 () List!13222)

(assert (=> b!1305972 (= e!837476 (++!3346 (list!4930 (left!11315 (c!214292 lt!429019))) (list!4930 (right!11645 (c!214292 lt!429019)))))))

(declare-fun d!368342 () Bool)

(declare-fun c!214685 () Bool)

(assert (=> d!368342 (= c!214685 ((_ is Empty!4320) (c!214292 lt!429019)))))

(assert (=> d!368342 (= (list!4930 (c!214292 lt!429019)) e!837475)))

(declare-fun b!1305970 () Bool)

(assert (=> b!1305970 (= e!837475 e!837476)))

(declare-fun c!214686 () Bool)

(assert (=> b!1305970 (= c!214686 ((_ is Leaf!6654) (c!214292 lt!429019)))))

(declare-fun b!1305971 () Bool)

(assert (=> b!1305971 (= e!837476 (list!4934 (xs!7035 (c!214292 lt!429019))))))

(assert (= (and d!368342 c!214685) b!1305969))

(assert (= (and d!368342 (not c!214685)) b!1305970))

(assert (= (and b!1305970 c!214686) b!1305971))

(assert (= (and b!1305970 (not c!214686)) b!1305972))

(declare-fun m!1457691 () Bool)

(assert (=> b!1305972 m!1457691))

(declare-fun m!1457693 () Bool)

(assert (=> b!1305972 m!1457693))

(assert (=> b!1305972 m!1457691))

(assert (=> b!1305972 m!1457693))

(declare-fun m!1457695 () Bool)

(assert (=> b!1305972 m!1457695))

(declare-fun m!1457697 () Bool)

(assert (=> b!1305971 m!1457697))

(assert (=> d!367574 d!368342))

(declare-fun b!1305973 () Bool)

(declare-fun res!585454 () Bool)

(declare-fun e!837477 () Bool)

(assert (=> b!1305973 (=> (not res!585454) (not e!837477))))

(declare-fun call!89223 () Bool)

(assert (=> b!1305973 (= res!585454 (not call!89223))))

(declare-fun b!1305974 () Bool)

(declare-fun e!837483 () Bool)

(declare-fun lt!429702 () Bool)

(assert (=> b!1305974 (= e!837483 (not lt!429702))))

(declare-fun bm!89218 () Bool)

(assert (=> bm!89218 (= call!89223 (isEmpty!7786 lt!429008))))

(declare-fun b!1305975 () Bool)

(declare-fun res!585458 () Bool)

(declare-fun e!837480 () Bool)

(assert (=> b!1305975 (=> res!585458 e!837480)))

(assert (=> b!1305975 (= res!585458 (not (isEmpty!7786 (tail!1866 lt!429008))))))

(declare-fun b!1305976 () Bool)

(declare-fun e!837481 () Bool)

(assert (=> b!1305976 (= e!837481 e!837483)))

(declare-fun c!214688 () Bool)

(assert (=> b!1305976 (= c!214688 ((_ is EmptyLang!3589) lt!429181))))

(declare-fun b!1305977 () Bool)

(declare-fun e!837482 () Bool)

(assert (=> b!1305977 (= e!837482 (nullable!1137 lt!429181))))

(declare-fun d!368344 () Bool)

(assert (=> d!368344 e!837481))

(declare-fun c!214689 () Bool)

(assert (=> d!368344 (= c!214689 ((_ is EmptyExpr!3589) lt!429181))))

(assert (=> d!368344 (= lt!429702 e!837482)))

(declare-fun c!214687 () Bool)

(assert (=> d!368344 (= c!214687 (isEmpty!7786 lt!429008))))

(assert (=> d!368344 (validRegex!1539 lt!429181)))

(assert (=> d!368344 (= (matchR!1591 lt!429181 lt!429008) lt!429702)))

(declare-fun b!1305978 () Bool)

(declare-fun res!585453 () Bool)

(declare-fun e!837478 () Bool)

(assert (=> b!1305978 (=> res!585453 e!837478)))

(assert (=> b!1305978 (= res!585453 (not ((_ is ElementMatch!3589) lt!429181)))))

(assert (=> b!1305978 (= e!837483 e!837478)))

(declare-fun b!1305979 () Bool)

(assert (=> b!1305979 (= e!837480 (not (= (head!2240 lt!429008) (c!214293 lt!429181))))))

(declare-fun b!1305980 () Bool)

(assert (=> b!1305980 (= e!837482 (matchR!1591 (derivativeStep!889 lt!429181 (head!2240 lt!429008)) (tail!1866 lt!429008)))))

(declare-fun b!1305981 () Bool)

(declare-fun res!585452 () Bool)

(assert (=> b!1305981 (=> (not res!585452) (not e!837477))))

(assert (=> b!1305981 (= res!585452 (isEmpty!7786 (tail!1866 lt!429008)))))

(declare-fun b!1305982 () Bool)

(declare-fun e!837479 () Bool)

(assert (=> b!1305982 (= e!837479 e!837480)))

(declare-fun res!585456 () Bool)

(assert (=> b!1305982 (=> res!585456 e!837480)))

(assert (=> b!1305982 (= res!585456 call!89223)))

(declare-fun b!1305983 () Bool)

(assert (=> b!1305983 (= e!837478 e!837479)))

(declare-fun res!585457 () Bool)

(assert (=> b!1305983 (=> (not res!585457) (not e!837479))))

(assert (=> b!1305983 (= res!585457 (not lt!429702))))

(declare-fun b!1305984 () Bool)

(assert (=> b!1305984 (= e!837477 (= (head!2240 lt!429008) (c!214293 lt!429181)))))

(declare-fun b!1305985 () Bool)

(assert (=> b!1305985 (= e!837481 (= lt!429702 call!89223))))

(declare-fun b!1305986 () Bool)

(declare-fun res!585455 () Bool)

(assert (=> b!1305986 (=> res!585455 e!837478)))

(assert (=> b!1305986 (= res!585455 e!837477)))

(declare-fun res!585451 () Bool)

(assert (=> b!1305986 (=> (not res!585451) (not e!837477))))

(assert (=> b!1305986 (= res!585451 lt!429702)))

(assert (= (and d!368344 c!214687) b!1305977))

(assert (= (and d!368344 (not c!214687)) b!1305980))

(assert (= (and d!368344 c!214689) b!1305985))

(assert (= (and d!368344 (not c!214689)) b!1305976))

(assert (= (and b!1305976 c!214688) b!1305974))

(assert (= (and b!1305976 (not c!214688)) b!1305978))

(assert (= (and b!1305978 (not res!585453)) b!1305986))

(assert (= (and b!1305986 res!585451) b!1305973))

(assert (= (and b!1305973 res!585454) b!1305981))

(assert (= (and b!1305981 res!585452) b!1305984))

(assert (= (and b!1305986 (not res!585455)) b!1305983))

(assert (= (and b!1305983 res!585457) b!1305982))

(assert (= (and b!1305982 (not res!585456)) b!1305975))

(assert (= (and b!1305975 (not res!585458)) b!1305979))

(assert (= (or b!1305985 b!1305973 b!1305982) bm!89218))

(declare-fun m!1457699 () Bool)

(assert (=> b!1305977 m!1457699))

(assert (=> b!1305975 m!1455783))

(assert (=> b!1305975 m!1455783))

(assert (=> b!1305975 m!1456047))

(assert (=> d!368344 m!1456049))

(assert (=> d!368344 m!1456247))

(assert (=> b!1305979 m!1456053))

(assert (=> bm!89218 m!1456049))

(assert (=> b!1305984 m!1456053))

(assert (=> b!1305981 m!1455783))

(assert (=> b!1305981 m!1455783))

(assert (=> b!1305981 m!1456047))

(assert (=> b!1305980 m!1456053))

(assert (=> b!1305980 m!1456053))

(declare-fun m!1457701 () Bool)

(assert (=> b!1305980 m!1457701))

(assert (=> b!1305980 m!1455783))

(assert (=> b!1305980 m!1457701))

(assert (=> b!1305980 m!1455783))

(declare-fun m!1457703 () Bool)

(assert (=> b!1305980 m!1457703))

(assert (=> b!1304889 d!368344))

(assert (=> d!367710 d!368020))

(declare-fun d!368346 () Bool)

(declare-fun res!585463 () Bool)

(declare-fun e!837489 () Bool)

(assert (=> d!368346 (=> res!585463 e!837489)))

(assert (=> d!368346 (= res!585463 ((_ is ElementMatch!3589) lt!429022))))

(assert (=> d!368346 (= (validRegex!1539 lt!429022) e!837489)))

(declare-fun bm!89219 () Bool)

(declare-fun call!89224 () Bool)

(declare-fun call!89225 () Bool)

(assert (=> bm!89219 (= call!89224 call!89225)))

(declare-fun bm!89220 () Bool)

(declare-fun c!214691 () Bool)

(declare-fun c!214690 () Bool)

(assert (=> bm!89220 (= call!89225 (validRegex!1539 (ite c!214691 (reg!3918 lt!429022) (ite c!214690 (regOne!7691 lt!429022) (regOne!7690 lt!429022)))))))

(declare-fun b!1305987 () Bool)

(declare-fun e!837484 () Bool)

(declare-fun call!89226 () Bool)

(assert (=> b!1305987 (= e!837484 call!89226)))

(declare-fun bm!89221 () Bool)

(assert (=> bm!89221 (= call!89226 (validRegex!1539 (ite c!214690 (regTwo!7691 lt!429022) (regTwo!7690 lt!429022))))))

(declare-fun b!1305988 () Bool)

(declare-fun res!585461 () Bool)

(assert (=> b!1305988 (=> (not res!585461) (not e!837484))))

(assert (=> b!1305988 (= res!585461 call!89224)))

(declare-fun e!837487 () Bool)

(assert (=> b!1305988 (= e!837487 e!837484)))

(declare-fun b!1305989 () Bool)

(declare-fun res!585462 () Bool)

(declare-fun e!837488 () Bool)

(assert (=> b!1305989 (=> res!585462 e!837488)))

(assert (=> b!1305989 (= res!585462 (not ((_ is Concat!5955) lt!429022)))))

(assert (=> b!1305989 (= e!837487 e!837488)))

(declare-fun b!1305990 () Bool)

(declare-fun e!837485 () Bool)

(assert (=> b!1305990 (= e!837489 e!837485)))

(assert (=> b!1305990 (= c!214691 ((_ is Star!3589) lt!429022))))

(declare-fun b!1305991 () Bool)

(declare-fun e!837490 () Bool)

(assert (=> b!1305991 (= e!837490 call!89226)))

(declare-fun b!1305992 () Bool)

(declare-fun e!837486 () Bool)

(assert (=> b!1305992 (= e!837485 e!837486)))

(declare-fun res!585459 () Bool)

(assert (=> b!1305992 (= res!585459 (not (nullable!1137 (reg!3918 lt!429022))))))

(assert (=> b!1305992 (=> (not res!585459) (not e!837486))))

(declare-fun b!1305993 () Bool)

(assert (=> b!1305993 (= e!837485 e!837487)))

(assert (=> b!1305993 (= c!214690 ((_ is Union!3589) lt!429022))))

(declare-fun b!1305994 () Bool)

(assert (=> b!1305994 (= e!837488 e!837490)))

(declare-fun res!585460 () Bool)

(assert (=> b!1305994 (=> (not res!585460) (not e!837490))))

(assert (=> b!1305994 (= res!585460 call!89224)))

(declare-fun b!1305995 () Bool)

(assert (=> b!1305995 (= e!837486 call!89225)))

(assert (= (and d!368346 (not res!585463)) b!1305990))

(assert (= (and b!1305990 c!214691) b!1305992))

(assert (= (and b!1305990 (not c!214691)) b!1305993))

(assert (= (and b!1305992 res!585459) b!1305995))

(assert (= (and b!1305993 c!214690) b!1305988))

(assert (= (and b!1305993 (not c!214690)) b!1305989))

(assert (= (and b!1305988 res!585461) b!1305987))

(assert (= (and b!1305989 (not res!585462)) b!1305994))

(assert (= (and b!1305994 res!585460) b!1305991))

(assert (= (or b!1305988 b!1305994) bm!89219))

(assert (= (or b!1305987 b!1305991) bm!89221))

(assert (= (or b!1305995 bm!89219) bm!89220))

(declare-fun m!1457705 () Bool)

(assert (=> bm!89220 m!1457705))

(declare-fun m!1457707 () Bool)

(assert (=> bm!89221 m!1457707))

(declare-fun m!1457709 () Bool)

(assert (=> b!1305992 m!1457709))

(assert (=> d!367710 d!368346))

(declare-fun d!368348 () Bool)

(declare-fun lt!429703 () Int)

(assert (=> d!368348 (>= lt!429703 0)))

(declare-fun e!837491 () Int)

(assert (=> d!368348 (= lt!429703 e!837491)))

(declare-fun c!214692 () Bool)

(assert (=> d!368348 (= c!214692 ((_ is Nil!13156) lt!429186))))

(assert (=> d!368348 (= (size!10722 lt!429186) lt!429703)))

(declare-fun b!1305996 () Bool)

(assert (=> b!1305996 (= e!837491 0)))

(declare-fun b!1305997 () Bool)

(assert (=> b!1305997 (= e!837491 (+ 1 (size!10722 (t!117783 lt!429186))))))

(assert (= (and d!368348 c!214692) b!1305996))

(assert (= (and d!368348 (not c!214692)) b!1305997))

(declare-fun m!1457711 () Bool)

(assert (=> b!1305997 m!1457711))

(assert (=> b!1304811 d!368348))

(declare-fun d!368350 () Bool)

(declare-fun lt!429704 () Int)

(assert (=> d!368350 (>= lt!429704 0)))

(declare-fun e!837492 () Int)

(assert (=> d!368350 (= lt!429704 e!837492)))

(declare-fun c!214693 () Bool)

(assert (=> d!368350 (= c!214693 ((_ is Nil!13156) lt!429006))))

(assert (=> d!368350 (= (size!10722 lt!429006) lt!429704)))

(declare-fun b!1305998 () Bool)

(assert (=> b!1305998 (= e!837492 0)))

(declare-fun b!1305999 () Bool)

(assert (=> b!1305999 (= e!837492 (+ 1 (size!10722 (t!117783 lt!429006))))))

(assert (= (and d!368350 c!214693) b!1305998))

(assert (= (and d!368350 (not c!214693)) b!1305999))

(declare-fun m!1457713 () Bool)

(assert (=> b!1305999 m!1457713))

(assert (=> b!1304811 d!368350))

(declare-fun d!368352 () Bool)

(declare-fun lt!429705 () Int)

(assert (=> d!368352 (>= lt!429705 0)))

(declare-fun e!837493 () Int)

(assert (=> d!368352 (= lt!429705 e!837493)))

(declare-fun c!214694 () Bool)

(assert (=> d!368352 (= c!214694 ((_ is Nil!13156) (Cons!13156 lt!429010 Nil!13156)))))

(assert (=> d!368352 (= (size!10722 (Cons!13156 lt!429010 Nil!13156)) lt!429705)))

(declare-fun b!1306000 () Bool)

(assert (=> b!1306000 (= e!837493 0)))

(declare-fun b!1306001 () Bool)

(assert (=> b!1306001 (= e!837493 (+ 1 (size!10722 (t!117783 (Cons!13156 lt!429010 Nil!13156)))))))

(assert (= (and d!368352 c!214694) b!1306000))

(assert (= (and d!368352 (not c!214694)) b!1306001))

(declare-fun m!1457715 () Bool)

(assert (=> b!1306001 m!1457715))

(assert (=> b!1304811 d!368352))

(declare-fun d!368354 () Bool)

(declare-fun e!837495 () Bool)

(assert (=> d!368354 e!837495))

(declare-fun res!585464 () Bool)

(assert (=> d!368354 (=> (not res!585464) (not e!837495))))

(declare-fun lt!429706 () List!13222)

(assert (=> d!368354 (= res!585464 (= (content!1843 lt!429706) ((_ map or) (content!1843 (t!117783 lt!429015)) (content!1843 (getSuffix!445 lt!429008 lt!429015)))))))

(declare-fun e!837494 () List!13222)

(assert (=> d!368354 (= lt!429706 e!837494)))

(declare-fun c!214695 () Bool)

(assert (=> d!368354 (= c!214695 ((_ is Nil!13156) (t!117783 lt!429015)))))

(assert (=> d!368354 (= (++!3346 (t!117783 lt!429015) (getSuffix!445 lt!429008 lt!429015)) lt!429706)))

(declare-fun b!1306002 () Bool)

(assert (=> b!1306002 (= e!837494 (getSuffix!445 lt!429008 lt!429015))))

(declare-fun b!1306005 () Bool)

(assert (=> b!1306005 (= e!837495 (or (not (= (getSuffix!445 lt!429008 lt!429015) Nil!13156)) (= lt!429706 (t!117783 lt!429015))))))

(declare-fun b!1306003 () Bool)

(assert (=> b!1306003 (= e!837494 (Cons!13156 (h!18557 (t!117783 lt!429015)) (++!3346 (t!117783 (t!117783 lt!429015)) (getSuffix!445 lt!429008 lt!429015))))))

(declare-fun b!1306004 () Bool)

(declare-fun res!585465 () Bool)

(assert (=> b!1306004 (=> (not res!585465) (not e!837495))))

(assert (=> b!1306004 (= res!585465 (= (size!10722 lt!429706) (+ (size!10722 (t!117783 lt!429015)) (size!10722 (getSuffix!445 lt!429008 lt!429015)))))))

(assert (= (and d!368354 c!214695) b!1306002))

(assert (= (and d!368354 (not c!214695)) b!1306003))

(assert (= (and d!368354 res!585464) b!1306004))

(assert (= (and b!1306004 res!585465) b!1306005))

(declare-fun m!1457717 () Bool)

(assert (=> d!368354 m!1457717))

(assert (=> d!368354 m!1456471))

(assert (=> d!368354 m!1455533))

(assert (=> d!368354 m!1455739))

(assert (=> b!1306003 m!1455533))

(declare-fun m!1457719 () Bool)

(assert (=> b!1306003 m!1457719))

(declare-fun m!1457721 () Bool)

(assert (=> b!1306004 m!1457721))

(assert (=> b!1306004 m!1456713))

(assert (=> b!1306004 m!1455533))

(assert (=> b!1306004 m!1455751))

(assert (=> b!1304447 d!368354))

(declare-fun bs!329595 () Bool)

(declare-fun d!368356 () Bool)

(assert (= bs!329595 (and d!368356 d!367984)))

(declare-fun lambda!52122 () Int)

(assert (=> bs!329595 (= (= (toValue!3490 (transformation!2275 (rule!4014 t1!34))) (toValue!3490 (transformation!2275 (rule!4014 t2!34)))) (= lambda!52122 lambda!52099))))

(assert (=> d!368356 true))

(assert (=> d!368356 (< (dynLambda!5735 order!7951 (toValue!3490 (transformation!2275 (rule!4014 t1!34)))) (dynLambda!5736 order!7953 lambda!52122))))

(assert (=> d!368356 (= (equivClasses!817 (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (toValue!3490 (transformation!2275 (rule!4014 t1!34)))) (Forall2!415 lambda!52122))))

(declare-fun bs!329596 () Bool)

(assert (= bs!329596 d!368356))

(declare-fun m!1457723 () Bool)

(assert (=> bs!329596 m!1457723))

(assert (=> b!1304387 d!368356))

(assert (=> d!367726 d!367670))

(assert (=> b!1304813 d!367702))

(declare-fun b!1306014 () Bool)

(declare-fun res!585477 () Bool)

(declare-fun e!837498 () Bool)

(assert (=> b!1306014 (=> (not res!585477) (not e!837498))))

(declare-fun ++!3352 (Conc!4320 Conc!4320) Conc!4320)

(assert (=> b!1306014 (= res!585477 (isBalanced!1264 (++!3352 (c!214292 (charsOf!1247 t1!34)) (c!214292 (singletonSeq!845 (apply!2941 (charsOf!1247 t2!34) 0))))))))

(declare-fun b!1306015 () Bool)

(declare-fun res!585475 () Bool)

(assert (=> b!1306015 (=> (not res!585475) (not e!837498))))

(declare-fun height!619 (Conc!4320) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1306015 (= res!585475 (<= (height!619 (++!3352 (c!214292 (charsOf!1247 t1!34)) (c!214292 (singletonSeq!845 (apply!2941 (charsOf!1247 t2!34) 0))))) (+ (max!0 (height!619 (c!214292 (charsOf!1247 t1!34))) (height!619 (c!214292 (singletonSeq!845 (apply!2941 (charsOf!1247 t2!34) 0))))) 1)))))

(declare-fun b!1306016 () Bool)

(declare-fun res!585476 () Bool)

(assert (=> b!1306016 (=> (not res!585476) (not e!837498))))

(assert (=> b!1306016 (= res!585476 (>= (height!619 (++!3352 (c!214292 (charsOf!1247 t1!34)) (c!214292 (singletonSeq!845 (apply!2941 (charsOf!1247 t2!34) 0))))) (max!0 (height!619 (c!214292 (charsOf!1247 t1!34))) (height!619 (c!214292 (singletonSeq!845 (apply!2941 (charsOf!1247 t2!34) 0)))))))))

(declare-fun b!1306017 () Bool)

(declare-fun lt!429709 () BalanceConc!8580)

(assert (=> b!1306017 (= e!837498 (= (list!4927 lt!429709) (++!3346 (list!4927 (charsOf!1247 t1!34)) (list!4927 (singletonSeq!845 (apply!2941 (charsOf!1247 t2!34) 0))))))))

(declare-fun d!368358 () Bool)

(assert (=> d!368358 e!837498))

(declare-fun res!585474 () Bool)

(assert (=> d!368358 (=> (not res!585474) (not e!837498))))

(declare-fun appendAssocInst!255 (Conc!4320 Conc!4320) Bool)

(assert (=> d!368358 (= res!585474 (appendAssocInst!255 (c!214292 (charsOf!1247 t1!34)) (c!214292 (singletonSeq!845 (apply!2941 (charsOf!1247 t2!34) 0)))))))

(assert (=> d!368358 (= lt!429709 (BalanceConc!8581 (++!3352 (c!214292 (charsOf!1247 t1!34)) (c!214292 (singletonSeq!845 (apply!2941 (charsOf!1247 t2!34) 0))))))))

(assert (=> d!368358 (= (++!3347 (charsOf!1247 t1!34) (singletonSeq!845 (apply!2941 (charsOf!1247 t2!34) 0))) lt!429709)))

(assert (= (and d!368358 res!585474) b!1306014))

(assert (= (and b!1306014 res!585477) b!1306015))

(assert (= (and b!1306015 res!585475) b!1306016))

(assert (= (and b!1306016 res!585476) b!1306017))

(declare-fun m!1457725 () Bool)

(assert (=> b!1306016 m!1457725))

(declare-fun m!1457727 () Bool)

(assert (=> b!1306016 m!1457727))

(assert (=> b!1306016 m!1457725))

(declare-fun m!1457729 () Bool)

(assert (=> b!1306016 m!1457729))

(declare-fun m!1457731 () Bool)

(assert (=> b!1306016 m!1457731))

(assert (=> b!1306016 m!1457731))

(assert (=> b!1306016 m!1457729))

(declare-fun m!1457733 () Bool)

(assert (=> b!1306016 m!1457733))

(assert (=> b!1306014 m!1457725))

(assert (=> b!1306014 m!1457725))

(declare-fun m!1457735 () Bool)

(assert (=> b!1306014 m!1457735))

(declare-fun m!1457737 () Bool)

(assert (=> b!1306017 m!1457737))

(assert (=> b!1306017 m!1455493))

(declare-fun m!1457739 () Bool)

(assert (=> b!1306017 m!1457739))

(assert (=> b!1306017 m!1455923))

(declare-fun m!1457741 () Bool)

(assert (=> b!1306017 m!1457741))

(assert (=> b!1306017 m!1457739))

(assert (=> b!1306017 m!1457741))

(declare-fun m!1457743 () Bool)

(assert (=> b!1306017 m!1457743))

(declare-fun m!1457745 () Bool)

(assert (=> d!368358 m!1457745))

(assert (=> d!368358 m!1457725))

(assert (=> b!1306015 m!1457725))

(assert (=> b!1306015 m!1457727))

(assert (=> b!1306015 m!1457725))

(assert (=> b!1306015 m!1457729))

(assert (=> b!1306015 m!1457731))

(assert (=> b!1306015 m!1457731))

(assert (=> b!1306015 m!1457729))

(assert (=> b!1306015 m!1457733))

(assert (=> d!367650 d!368358))

(declare-fun lt!429733 () Bool)

(declare-fun d!368360 () Bool)

(assert (=> d!368360 (= lt!429733 (prefixMatch!102 (rulesRegex!160 thiss!19762 rules!2550) (list!4927 (++!3347 (charsOf!1247 t1!34) (singletonSeq!845 (apply!2941 (charsOf!1247 t2!34) 0))))))))

(declare-datatypes ((Context!1154 0))(
  ( (Context!1155 (exprs!1077 List!13226)) )
))
(declare-fun prefixMatchZipperSequence!164 ((InoxSet Context!1154) BalanceConc!8580 Int) Bool)

(declare-fun focus!68 (Regex!3589) (InoxSet Context!1154))

(assert (=> d!368360 (= lt!429733 (prefixMatchZipperSequence!164 (focus!68 (rulesRegex!160 thiss!19762 rules!2550)) (++!3347 (charsOf!1247 t1!34) (singletonSeq!845 (apply!2941 (charsOf!1247 t2!34) 0))) 0))))

(declare-fun lt!429738 () Unit!19246)

(declare-fun lt!429730 () Unit!19246)

(assert (=> d!368360 (= lt!429738 lt!429730)))

(declare-fun lt!429736 () List!13222)

(declare-fun lt!429739 () (InoxSet Context!1154))

(declare-fun prefixMatchZipper!48 ((InoxSet Context!1154) List!13222) Bool)

(assert (=> d!368360 (= (prefixMatch!102 (rulesRegex!160 thiss!19762 rules!2550) lt!429736) (prefixMatchZipper!48 lt!429739 lt!429736))))

(declare-datatypes ((List!13230 0))(
  ( (Nil!13164) (Cons!13164 (h!18565 Context!1154) (t!117853 List!13230)) )
))
(declare-fun lt!429734 () List!13230)

(declare-fun prefixMatchZipperRegexEquiv!48 ((InoxSet Context!1154) List!13230 Regex!3589 List!13222) Unit!19246)

(assert (=> d!368360 (= lt!429730 (prefixMatchZipperRegexEquiv!48 lt!429739 lt!429734 (rulesRegex!160 thiss!19762 rules!2550) lt!429736))))

(assert (=> d!368360 (= lt!429736 (list!4927 (++!3347 (charsOf!1247 t1!34) (singletonSeq!845 (apply!2941 (charsOf!1247 t2!34) 0)))))))

(declare-fun toList!732 ((InoxSet Context!1154)) List!13230)

(assert (=> d!368360 (= lt!429734 (toList!732 (focus!68 (rulesRegex!160 thiss!19762 rules!2550))))))

(assert (=> d!368360 (= lt!429739 (focus!68 (rulesRegex!160 thiss!19762 rules!2550)))))

(declare-fun lt!429737 () Unit!19246)

(declare-fun lt!429735 () Unit!19246)

(assert (=> d!368360 (= lt!429737 lt!429735)))

(declare-fun lt!429732 () (InoxSet Context!1154))

(declare-fun lt!429731 () Int)

(declare-fun dropList!362 (BalanceConc!8580 Int) List!13222)

(assert (=> d!368360 (= (prefixMatchZipper!48 lt!429732 (dropList!362 (++!3347 (charsOf!1247 t1!34) (singletonSeq!845 (apply!2941 (charsOf!1247 t2!34) 0))) lt!429731)) (prefixMatchZipperSequence!164 lt!429732 (++!3347 (charsOf!1247 t1!34) (singletonSeq!845 (apply!2941 (charsOf!1247 t2!34) 0))) lt!429731))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!48 ((InoxSet Context!1154) BalanceConc!8580 Int) Unit!19246)

(assert (=> d!368360 (= lt!429735 (lemmaprefixMatchZipperSequenceEquivalent!48 lt!429732 (++!3347 (charsOf!1247 t1!34) (singletonSeq!845 (apply!2941 (charsOf!1247 t2!34) 0))) lt!429731))))

(assert (=> d!368360 (= lt!429731 0)))

(assert (=> d!368360 (= lt!429732 (focus!68 (rulesRegex!160 thiss!19762 rules!2550)))))

(assert (=> d!368360 (validRegex!1539 (rulesRegex!160 thiss!19762 rules!2550))))

(assert (=> d!368360 (= (prefixMatchZipperSequence!161 (rulesRegex!160 thiss!19762 rules!2550) (++!3347 (charsOf!1247 t1!34) (singletonSeq!845 (apply!2941 (charsOf!1247 t2!34) 0)))) lt!429733)))

(declare-fun bs!329597 () Bool)

(assert (= bs!329597 d!368360))

(assert (=> bs!329597 m!1455925))

(declare-fun m!1457747 () Bool)

(assert (=> bs!329597 m!1457747))

(assert (=> bs!329597 m!1455487))

(declare-fun m!1457749 () Bool)

(assert (=> bs!329597 m!1457749))

(assert (=> bs!329597 m!1455487))

(declare-fun m!1457751 () Bool)

(assert (=> bs!329597 m!1457751))

(assert (=> bs!329597 m!1455487))

(declare-fun m!1457753 () Bool)

(assert (=> bs!329597 m!1457753))

(declare-fun m!1457755 () Bool)

(assert (=> bs!329597 m!1457755))

(declare-fun m!1457757 () Bool)

(assert (=> bs!329597 m!1457757))

(assert (=> bs!329597 m!1455487))

(declare-fun m!1457759 () Bool)

(assert (=> bs!329597 m!1457759))

(assert (=> bs!329597 m!1457751))

(declare-fun m!1457761 () Bool)

(assert (=> bs!329597 m!1457761))

(assert (=> bs!329597 m!1455925))

(declare-fun m!1457763 () Bool)

(assert (=> bs!329597 m!1457763))

(assert (=> bs!329597 m!1455925))

(declare-fun m!1457765 () Bool)

(assert (=> bs!329597 m!1457765))

(assert (=> bs!329597 m!1455487))

(declare-fun m!1457767 () Bool)

(assert (=> bs!329597 m!1457767))

(assert (=> bs!329597 m!1457751))

(assert (=> bs!329597 m!1455925))

(declare-fun m!1457769 () Bool)

(assert (=> bs!329597 m!1457769))

(assert (=> bs!329597 m!1457747))

(declare-fun m!1457771 () Bool)

(assert (=> bs!329597 m!1457771))

(assert (=> bs!329597 m!1455925))

(assert (=> bs!329597 m!1457753))

(assert (=> d!367650 d!368360))

(declare-fun d!368362 () Bool)

(declare-fun e!837501 () Bool)

(assert (=> d!368362 e!837501))

(declare-fun res!585480 () Bool)

(assert (=> d!368362 (=> (not res!585480) (not e!837501))))

(declare-fun lt!429742 () BalanceConc!8580)

(assert (=> d!368362 (= res!585480 (= (list!4927 lt!429742) (Cons!13156 (apply!2941 (charsOf!1247 t2!34) 0) Nil!13156)))))

(declare-fun singleton!370 (C!7468) BalanceConc!8580)

(assert (=> d!368362 (= lt!429742 (singleton!370 (apply!2941 (charsOf!1247 t2!34) 0)))))

(assert (=> d!368362 (= (singletonSeq!845 (apply!2941 (charsOf!1247 t2!34) 0)) lt!429742)))

(declare-fun b!1306020 () Bool)

(assert (=> b!1306020 (= e!837501 (isBalanced!1264 (c!214292 lt!429742)))))

(assert (= (and d!368362 res!585480) b!1306020))

(declare-fun m!1457773 () Bool)

(assert (=> d!368362 m!1457773))

(assert (=> d!368362 m!1455921))

(declare-fun m!1457775 () Bool)

(assert (=> d!368362 m!1457775))

(declare-fun m!1457777 () Bool)

(assert (=> b!1306020 m!1457777))

(assert (=> d!367650 d!368362))

(assert (=> d!367650 d!367758))

(declare-fun d!368364 () Bool)

(declare-fun lt!429743 () C!7468)

(assert (=> d!368364 (= lt!429743 (apply!2946 (list!4927 (charsOf!1247 t2!34)) 0))))

(assert (=> d!368364 (= lt!429743 (apply!2947 (c!214292 (charsOf!1247 t2!34)) 0))))

(declare-fun e!837502 () Bool)

(assert (=> d!368364 e!837502))

(declare-fun res!585481 () Bool)

(assert (=> d!368364 (=> (not res!585481) (not e!837502))))

(assert (=> d!368364 (= res!585481 (<= 0 0))))

(assert (=> d!368364 (= (apply!2941 (charsOf!1247 t2!34) 0) lt!429743)))

(declare-fun b!1306021 () Bool)

(assert (=> b!1306021 (= e!837502 (< 0 (size!10717 (charsOf!1247 t2!34))))))

(assert (= (and d!368364 res!585481) b!1306021))

(assert (=> d!368364 m!1455507))

(declare-fun m!1457779 () Bool)

(assert (=> d!368364 m!1457779))

(assert (=> d!368364 m!1457779))

(declare-fun m!1457781 () Bool)

(assert (=> d!368364 m!1457781))

(declare-fun m!1457783 () Bool)

(assert (=> d!368364 m!1457783))

(assert (=> b!1306021 m!1455507))

(declare-fun m!1457785 () Bool)

(assert (=> b!1306021 m!1457785))

(assert (=> d!367650 d!368364))

(assert (=> d!367650 d!367756))

(assert (=> d!367650 d!367706))

(assert (=> d!367698 d!368110))

(declare-fun d!368366 () Bool)

(declare-fun lt!429744 () Int)

(assert (=> d!368366 (>= lt!429744 0)))

(declare-fun e!837503 () Int)

(assert (=> d!368366 (= lt!429744 e!837503)))

(declare-fun c!214699 () Bool)

(assert (=> d!368366 (= c!214699 ((_ is Nil!13156) (originalCharacters!3137 t1!34)))))

(assert (=> d!368366 (= (size!10722 (originalCharacters!3137 t1!34)) lt!429744)))

(declare-fun b!1306022 () Bool)

(assert (=> b!1306022 (= e!837503 0)))

(declare-fun b!1306023 () Bool)

(assert (=> b!1306023 (= e!837503 (+ 1 (size!10722 (t!117783 (originalCharacters!3137 t1!34)))))))

(assert (= (and d!368366 c!214699) b!1306022))

(assert (= (and d!368366 (not c!214699)) b!1306023))

(declare-fun m!1457787 () Bool)

(assert (=> b!1306023 m!1457787))

(assert (=> b!1304699 d!368366))

(declare-fun d!368368 () Bool)

(declare-fun res!585482 () Bool)

(declare-fun e!837504 () Bool)

(assert (=> d!368368 (=> res!585482 e!837504)))

(assert (=> d!368368 (= res!585482 ((_ is Nil!13160) (map!2879 rules!2550 lambda!52007)))))

(assert (=> d!368368 (= (forall!3273 (map!2879 rules!2550 lambda!52007) lambda!52035) e!837504)))

(declare-fun b!1306024 () Bool)

(declare-fun e!837505 () Bool)

(assert (=> b!1306024 (= e!837504 e!837505)))

(declare-fun res!585483 () Bool)

(assert (=> b!1306024 (=> (not res!585483) (not e!837505))))

(assert (=> b!1306024 (= res!585483 (dynLambda!5727 lambda!52035 (h!18561 (map!2879 rules!2550 lambda!52007))))))

(declare-fun b!1306025 () Bool)

(assert (=> b!1306025 (= e!837505 (forall!3273 (t!117787 (map!2879 rules!2550 lambda!52007)) lambda!52035))))

(assert (= (and d!368368 (not res!585482)) b!1306024))

(assert (= (and b!1306024 res!585483) b!1306025))

(declare-fun b_lambda!37461 () Bool)

(assert (=> (not b_lambda!37461) (not b!1306024)))

(declare-fun m!1457789 () Bool)

(assert (=> b!1306024 m!1457789))

(declare-fun m!1457791 () Bool)

(assert (=> b!1306025 m!1457791))

(assert (=> d!367670 d!368368))

(declare-fun b!1306026 () Bool)

(declare-fun e!837507 () Bool)

(declare-fun e!837506 () Bool)

(assert (=> b!1306026 (= e!837507 e!837506)))

(declare-fun res!585484 () Bool)

(declare-fun lt!429747 () tuple2!12746)

(assert (=> b!1306026 (= res!585484 (< (size!10722 (_2!7259 lt!429747)) (size!10722 (_2!7260 (v!21037 lt!429053)))))))

(assert (=> b!1306026 (=> (not res!585484) (not e!837506))))

(declare-fun b!1306027 () Bool)

(declare-fun e!837508 () tuple2!12746)

(assert (=> b!1306027 (= e!837508 (tuple2!12747 Nil!13159 (_2!7260 (v!21037 lt!429053))))))

(declare-fun b!1306028 () Bool)

(assert (=> b!1306028 (= e!837507 (= (_2!7259 lt!429747) (_2!7260 (v!21037 lt!429053))))))

(declare-fun b!1306029 () Bool)

(assert (=> b!1306029 (= e!837506 (not (isEmpty!7785 (_1!7259 lt!429747))))))

(declare-fun b!1306030 () Bool)

(declare-fun lt!429745 () Option!2539)

(declare-fun lt!429746 () tuple2!12746)

(assert (=> b!1306030 (= e!837508 (tuple2!12747 (Cons!13159 (_1!7260 (v!21037 lt!429745)) (_1!7259 lt!429746)) (_2!7259 lt!429746)))))

(assert (=> b!1306030 (= lt!429746 (lexList!508 thiss!19762 rules!2550 (_2!7260 (v!21037 lt!429745))))))

(declare-fun d!368370 () Bool)

(assert (=> d!368370 e!837507))

(declare-fun c!214701 () Bool)

(assert (=> d!368370 (= c!214701 (> (size!10723 (_1!7259 lt!429747)) 0))))

(assert (=> d!368370 (= lt!429747 e!837508)))

(declare-fun c!214700 () Bool)

(assert (=> d!368370 (= c!214700 ((_ is Some!2538) lt!429745))))

(assert (=> d!368370 (= lt!429745 (maxPrefix!981 thiss!19762 rules!2550 (_2!7260 (v!21037 lt!429053))))))

(assert (=> d!368370 (= (lexList!508 thiss!19762 rules!2550 (_2!7260 (v!21037 lt!429053))) lt!429747)))

(assert (= (and d!368370 c!214700) b!1306030))

(assert (= (and d!368370 (not c!214700)) b!1306027))

(assert (= (and d!368370 c!214701) b!1306026))

(assert (= (and d!368370 (not c!214701)) b!1306028))

(assert (= (and b!1306026 res!585484) b!1306029))

(declare-fun m!1457793 () Bool)

(assert (=> b!1306026 m!1457793))

(declare-fun m!1457795 () Bool)

(assert (=> b!1306026 m!1457795))

(declare-fun m!1457797 () Bool)

(assert (=> b!1306029 m!1457797))

(declare-fun m!1457799 () Bool)

(assert (=> b!1306030 m!1457799))

(declare-fun m!1457801 () Bool)

(assert (=> d!368370 m!1457801))

(declare-fun m!1457803 () Bool)

(assert (=> d!368370 m!1457803))

(assert (=> b!1304384 d!368370))

(declare-fun d!368372 () Bool)

(assert (=> d!368372 (= (list!4926 (_1!7258 (lex!805 thiss!19762 rules!2550 (print!744 thiss!19762 (singletonSeq!844 t2!34))))) (list!4931 (c!214294 (_1!7258 (lex!805 thiss!19762 rules!2550 (print!744 thiss!19762 (singletonSeq!844 t2!34)))))))))

(declare-fun bs!329598 () Bool)

(assert (= bs!329598 d!368372))

(declare-fun m!1457805 () Bool)

(assert (=> bs!329598 m!1457805))

(assert (=> d!367622 d!368372))

(declare-fun d!368374 () Bool)

(declare-fun lt!429748 () Int)

(assert (=> d!368374 (= lt!429748 (size!10723 (list!4926 (_1!7258 lt!429104))))))

(assert (=> d!368374 (= lt!429748 (size!10731 (c!214294 (_1!7258 lt!429104))))))

(assert (=> d!368374 (= (size!10725 (_1!7258 lt!429104)) lt!429748)))

(declare-fun bs!329599 () Bool)

(assert (= bs!329599 d!368374))

(assert (=> bs!329599 m!1456863))

(assert (=> bs!329599 m!1456863))

(declare-fun m!1457807 () Bool)

(assert (=> bs!329599 m!1457807))

(declare-fun m!1457809 () Bool)

(assert (=> bs!329599 m!1457809))

(assert (=> d!367622 d!368374))

(declare-fun d!368376 () Bool)

(declare-fun lt!429749 () BalanceConc!8580)

(assert (=> d!368376 (= (list!4927 lt!429749) (printList!550 thiss!19762 (list!4926 (singletonSeq!844 t2!34))))))

(assert (=> d!368376 (= lt!429749 (printTailRec!532 thiss!19762 (singletonSeq!844 t2!34) 0 (BalanceConc!8581 Empty!4320)))))

(assert (=> d!368376 (= (print!744 thiss!19762 (singletonSeq!844 t2!34)) lt!429749)))

(declare-fun bs!329600 () Bool)

(assert (= bs!329600 d!368376))

(declare-fun m!1457811 () Bool)

(assert (=> bs!329600 m!1457811))

(assert (=> bs!329600 m!1455863))

(assert (=> bs!329600 m!1455869))

(assert (=> bs!329600 m!1455869))

(declare-fun m!1457813 () Bool)

(assert (=> bs!329600 m!1457813))

(assert (=> bs!329600 m!1455863))

(declare-fun m!1457815 () Bool)

(assert (=> bs!329600 m!1457815))

(assert (=> d!367622 d!368376))

(declare-fun d!368378 () Bool)

(declare-fun e!837509 () Bool)

(assert (=> d!368378 e!837509))

(declare-fun res!585485 () Bool)

(assert (=> d!368378 (=> (not res!585485) (not e!837509))))

(declare-fun lt!429750 () BalanceConc!8582)

(assert (=> d!368378 (= res!585485 (= (list!4926 lt!429750) (Cons!13159 t2!34 Nil!13159)))))

(assert (=> d!368378 (= lt!429750 (singleton!368 t2!34))))

(assert (=> d!368378 (= (singletonSeq!844 t2!34) lt!429750)))

(declare-fun b!1306031 () Bool)

(assert (=> b!1306031 (= e!837509 (isBalanced!1262 (c!214294 lt!429750)))))

(assert (= (and d!368378 res!585485) b!1306031))

(declare-fun m!1457817 () Bool)

(assert (=> d!368378 m!1457817))

(declare-fun m!1457819 () Bool)

(assert (=> d!368378 m!1457819))

(declare-fun m!1457821 () Bool)

(assert (=> b!1306031 m!1457821))

(assert (=> d!367622 d!368378))

(assert (=> d!367622 d!367580))

(declare-fun b!1306032 () Bool)

(declare-fun res!585486 () Bool)

(declare-fun e!837511 () Bool)

(assert (=> b!1306032 (=> (not res!585486) (not e!837511))))

(declare-fun lt!429751 () tuple2!12744)

(assert (=> b!1306032 (= res!585486 (= (list!4926 (_1!7258 lt!429751)) (_1!7259 (lexList!508 thiss!19762 rules!2550 (list!4927 (print!744 thiss!19762 (singletonSeq!844 t2!34)))))))))

(declare-fun b!1306033 () Bool)

(declare-fun e!837512 () Bool)

(assert (=> b!1306033 (= e!837512 (= (_2!7258 lt!429751) (print!744 thiss!19762 (singletonSeq!844 t2!34))))))

(declare-fun d!368380 () Bool)

(assert (=> d!368380 e!837511))

(declare-fun res!585487 () Bool)

(assert (=> d!368380 (=> (not res!585487) (not e!837511))))

(assert (=> d!368380 (= res!585487 e!837512)))

(declare-fun c!214702 () Bool)

(assert (=> d!368380 (= c!214702 (> (size!10725 (_1!7258 lt!429751)) 0))))

(assert (=> d!368380 (= lt!429751 (lexTailRecV2!355 thiss!19762 rules!2550 (print!744 thiss!19762 (singletonSeq!844 t2!34)) (BalanceConc!8581 Empty!4320) (print!744 thiss!19762 (singletonSeq!844 t2!34)) (BalanceConc!8583 Empty!4321)))))

(assert (=> d!368380 (= (lex!805 thiss!19762 rules!2550 (print!744 thiss!19762 (singletonSeq!844 t2!34))) lt!429751)))

(declare-fun b!1306034 () Bool)

(declare-fun e!837510 () Bool)

(assert (=> b!1306034 (= e!837510 (not (isEmpty!7789 (_1!7258 lt!429751))))))

(declare-fun b!1306035 () Bool)

(assert (=> b!1306035 (= e!837512 e!837510)))

(declare-fun res!585488 () Bool)

(assert (=> b!1306035 (= res!585488 (< (size!10717 (_2!7258 lt!429751)) (size!10717 (print!744 thiss!19762 (singletonSeq!844 t2!34)))))))

(assert (=> b!1306035 (=> (not res!585488) (not e!837510))))

(declare-fun b!1306036 () Bool)

(assert (=> b!1306036 (= e!837511 (= (list!4927 (_2!7258 lt!429751)) (_2!7259 (lexList!508 thiss!19762 rules!2550 (list!4927 (print!744 thiss!19762 (singletonSeq!844 t2!34)))))))))

(assert (= (and d!368380 c!214702) b!1306035))

(assert (= (and d!368380 (not c!214702)) b!1306033))

(assert (= (and b!1306035 res!585488) b!1306034))

(assert (= (and d!368380 res!585487) b!1306032))

(assert (= (and b!1306032 res!585486) b!1306036))

(declare-fun m!1457823 () Bool)

(assert (=> b!1306036 m!1457823))

(assert (=> b!1306036 m!1455865))

(declare-fun m!1457825 () Bool)

(assert (=> b!1306036 m!1457825))

(assert (=> b!1306036 m!1457825))

(declare-fun m!1457827 () Bool)

(assert (=> b!1306036 m!1457827))

(declare-fun m!1457829 () Bool)

(assert (=> b!1306032 m!1457829))

(assert (=> b!1306032 m!1455865))

(assert (=> b!1306032 m!1457825))

(assert (=> b!1306032 m!1457825))

(assert (=> b!1306032 m!1457827))

(declare-fun m!1457831 () Bool)

(assert (=> b!1306035 m!1457831))

(assert (=> b!1306035 m!1455865))

(declare-fun m!1457833 () Bool)

(assert (=> b!1306035 m!1457833))

(declare-fun m!1457835 () Bool)

(assert (=> d!368380 m!1457835))

(assert (=> d!368380 m!1455865))

(assert (=> d!368380 m!1455865))

(declare-fun m!1457837 () Bool)

(assert (=> d!368380 m!1457837))

(declare-fun m!1457839 () Bool)

(assert (=> b!1306034 m!1457839))

(assert (=> d!367622 d!368380))

(declare-fun d!368382 () Bool)

(assert (=> d!368382 (= (list!4926 (singletonSeq!844 t2!34)) (list!4931 (c!214294 (singletonSeq!844 t2!34))))))

(declare-fun bs!329601 () Bool)

(assert (= bs!329601 d!368382))

(declare-fun m!1457841 () Bool)

(assert (=> bs!329601 m!1457841))

(assert (=> d!367622 d!368382))

(declare-fun d!368384 () Bool)

(assert (=> d!368384 (= (head!2241 (map!2879 rules!2550 lambda!52007)) (h!18561 (map!2879 rules!2550 lambda!52007)))))

(assert (=> b!1304746 d!368384))

(declare-fun d!368386 () Bool)

(declare-fun lt!429754 () Bool)

(assert (=> d!368386 (= lt!429754 (isEmpty!7785 (list!4926 (_1!7258 lt!429197))))))

(assert (=> d!368386 (= lt!429754 (isEmpty!7793 (c!214294 (_1!7258 lt!429197))))))

(assert (=> d!368386 (= (isEmpty!7789 (_1!7258 lt!429197)) lt!429754)))

(declare-fun bs!329602 () Bool)

(assert (= bs!329602 d!368386))

(assert (=> bs!329602 m!1456215))

(assert (=> bs!329602 m!1456215))

(declare-fun m!1457843 () Bool)

(assert (=> bs!329602 m!1457843))

(declare-fun m!1457845 () Bool)

(assert (=> bs!329602 m!1457845))

(assert (=> b!1304826 d!368386))

(declare-fun d!368388 () Bool)

(declare-fun lt!429757 () Int)

(assert (=> d!368388 (>= lt!429757 0)))

(declare-fun e!837515 () Int)

(assert (=> d!368388 (= lt!429757 e!837515)))

(declare-fun c!214705 () Bool)

(assert (=> d!368388 (= c!214705 ((_ is Nil!13159) (_1!7259 lt!429055)))))

(assert (=> d!368388 (= (size!10723 (_1!7259 lt!429055)) lt!429757)))

(declare-fun b!1306041 () Bool)

(assert (=> b!1306041 (= e!837515 0)))

(declare-fun b!1306042 () Bool)

(assert (=> b!1306042 (= e!837515 (+ 1 (size!10723 (t!117786 (_1!7259 lt!429055)))))))

(assert (= (and d!368388 c!214705) b!1306041))

(assert (= (and d!368388 (not c!214705)) b!1306042))

(declare-fun m!1457847 () Bool)

(assert (=> b!1306042 m!1457847))

(assert (=> d!367566 d!368388))

(declare-fun b!1306061 () Bool)

(declare-fun res!585505 () Bool)

(declare-fun e!837523 () Bool)

(assert (=> b!1306061 (=> (not res!585505) (not e!837523))))

(declare-fun lt!429768 () Option!2539)

(declare-fun get!4230 (Option!2539) tuple2!12748)

(declare-fun apply!2955 (TokenValueInjection!4390 BalanceConc!8580) TokenValue!2365)

(declare-fun seqFromList!1587 (List!13222) BalanceConc!8580)

(assert (=> b!1306061 (= res!585505 (= (value!74470 (_1!7260 (get!4230 lt!429768))) (apply!2955 (transformation!2275 (rule!4014 (_1!7260 (get!4230 lt!429768)))) (seqFromList!1587 (originalCharacters!3137 (_1!7260 (get!4230 lt!429768)))))))))

(declare-fun b!1306062 () Bool)

(declare-fun res!585504 () Bool)

(assert (=> b!1306062 (=> (not res!585504) (not e!837523))))

(assert (=> b!1306062 (= res!585504 (= (list!4927 (charsOf!1247 (_1!7260 (get!4230 lt!429768)))) (originalCharacters!3137 (_1!7260 (get!4230 lt!429768)))))))

(declare-fun bm!89224 () Bool)

(declare-fun call!89229 () Option!2539)

(declare-fun maxPrefixOneRule!569 (LexerInterface!1970 Rule!4350 List!13222) Option!2539)

(assert (=> bm!89224 (= call!89229 (maxPrefixOneRule!569 thiss!19762 (h!18559 rules!2550) (list!4927 lt!429019)))))

(declare-fun b!1306064 () Bool)

(declare-fun e!837524 () Option!2539)

(declare-fun lt!429771 () Option!2539)

(declare-fun lt!429769 () Option!2539)

(assert (=> b!1306064 (= e!837524 (ite (and ((_ is None!2538) lt!429771) ((_ is None!2538) lt!429769)) None!2538 (ite ((_ is None!2538) lt!429769) lt!429771 (ite ((_ is None!2538) lt!429771) lt!429769 (ite (>= (size!10716 (_1!7260 (v!21037 lt!429771))) (size!10716 (_1!7260 (v!21037 lt!429769)))) lt!429771 lt!429769)))))))

(assert (=> b!1306064 (= lt!429771 call!89229)))

(assert (=> b!1306064 (= lt!429769 (maxPrefix!981 thiss!19762 (t!117785 rules!2550) (list!4927 lt!429019)))))

(declare-fun b!1306065 () Bool)

(assert (=> b!1306065 (= e!837523 (contains!2237 rules!2550 (rule!4014 (_1!7260 (get!4230 lt!429768)))))))

(declare-fun b!1306066 () Bool)

(declare-fun res!585509 () Bool)

(assert (=> b!1306066 (=> (not res!585509) (not e!837523))))

(assert (=> b!1306066 (= res!585509 (matchR!1591 (regex!2275 (rule!4014 (_1!7260 (get!4230 lt!429768)))) (list!4927 (charsOf!1247 (_1!7260 (get!4230 lt!429768))))))))

(declare-fun b!1306067 () Bool)

(declare-fun e!837522 () Bool)

(assert (=> b!1306067 (= e!837522 e!837523)))

(declare-fun res!585503 () Bool)

(assert (=> b!1306067 (=> (not res!585503) (not e!837523))))

(declare-fun isDefined!2167 (Option!2539) Bool)

(assert (=> b!1306067 (= res!585503 (isDefined!2167 lt!429768))))

(declare-fun b!1306068 () Bool)

(assert (=> b!1306068 (= e!837524 call!89229)))

(declare-fun b!1306069 () Bool)

(declare-fun res!585507 () Bool)

(assert (=> b!1306069 (=> (not res!585507) (not e!837523))))

(assert (=> b!1306069 (= res!585507 (< (size!10722 (_2!7260 (get!4230 lt!429768))) (size!10722 (list!4927 lt!429019))))))

(declare-fun b!1306063 () Bool)

(declare-fun res!585508 () Bool)

(assert (=> b!1306063 (=> (not res!585508) (not e!837523))))

(assert (=> b!1306063 (= res!585508 (= (++!3346 (list!4927 (charsOf!1247 (_1!7260 (get!4230 lt!429768)))) (_2!7260 (get!4230 lt!429768))) (list!4927 lt!429019)))))

(declare-fun d!368390 () Bool)

(assert (=> d!368390 e!837522))

(declare-fun res!585506 () Bool)

(assert (=> d!368390 (=> res!585506 e!837522)))

(declare-fun isEmpty!7795 (Option!2539) Bool)

(assert (=> d!368390 (= res!585506 (isEmpty!7795 lt!429768))))

(assert (=> d!368390 (= lt!429768 e!837524)))

(declare-fun c!214708 () Bool)

(assert (=> d!368390 (= c!214708 (and ((_ is Cons!13158) rules!2550) ((_ is Nil!13158) (t!117785 rules!2550))))))

(declare-fun lt!429772 () Unit!19246)

(declare-fun lt!429770 () Unit!19246)

(assert (=> d!368390 (= lt!429772 lt!429770)))

(assert (=> d!368390 (isPrefix!1064 (list!4927 lt!429019) (list!4927 lt!429019))))

(declare-fun lemmaIsPrefixRefl!743 (List!13222 List!13222) Unit!19246)

(assert (=> d!368390 (= lt!429770 (lemmaIsPrefixRefl!743 (list!4927 lt!429019) (list!4927 lt!429019)))))

(assert (=> d!368390 (rulesValidInductive!712 thiss!19762 rules!2550)))

(assert (=> d!368390 (= (maxPrefix!981 thiss!19762 rules!2550 (list!4927 lt!429019)) lt!429768)))

(assert (= (and d!368390 c!214708) b!1306068))

(assert (= (and d!368390 (not c!214708)) b!1306064))

(assert (= (or b!1306068 b!1306064) bm!89224))

(assert (= (and d!368390 (not res!585506)) b!1306067))

(assert (= (and b!1306067 res!585503) b!1306062))

(assert (= (and b!1306062 res!585504) b!1306069))

(assert (= (and b!1306069 res!585507) b!1306063))

(assert (= (and b!1306063 res!585508) b!1306061))

(assert (= (and b!1306061 res!585505) b!1306066))

(assert (= (and b!1306066 res!585509) b!1306065))

(declare-fun m!1457849 () Bool)

(assert (=> b!1306063 m!1457849))

(declare-fun m!1457851 () Bool)

(assert (=> b!1306063 m!1457851))

(assert (=> b!1306063 m!1457851))

(declare-fun m!1457853 () Bool)

(assert (=> b!1306063 m!1457853))

(assert (=> b!1306063 m!1457853))

(declare-fun m!1457855 () Bool)

(assert (=> b!1306063 m!1457855))

(assert (=> b!1306064 m!1455527))

(declare-fun m!1457857 () Bool)

(assert (=> b!1306064 m!1457857))

(assert (=> b!1306061 m!1457849))

(declare-fun m!1457859 () Bool)

(assert (=> b!1306061 m!1457859))

(assert (=> b!1306061 m!1457859))

(declare-fun m!1457861 () Bool)

(assert (=> b!1306061 m!1457861))

(assert (=> b!1306065 m!1457849))

(declare-fun m!1457863 () Bool)

(assert (=> b!1306065 m!1457863))

(declare-fun m!1457865 () Bool)

(assert (=> b!1306067 m!1457865))

(declare-fun m!1457867 () Bool)

(assert (=> d!368390 m!1457867))

(assert (=> d!368390 m!1455527))

(assert (=> d!368390 m!1455527))

(declare-fun m!1457869 () Bool)

(assert (=> d!368390 m!1457869))

(assert (=> d!368390 m!1455527))

(assert (=> d!368390 m!1455527))

(declare-fun m!1457871 () Bool)

(assert (=> d!368390 m!1457871))

(assert (=> d!368390 m!1455581))

(assert (=> b!1306066 m!1457849))

(assert (=> b!1306066 m!1457851))

(assert (=> b!1306066 m!1457851))

(assert (=> b!1306066 m!1457853))

(assert (=> b!1306066 m!1457853))

(declare-fun m!1457873 () Bool)

(assert (=> b!1306066 m!1457873))

(assert (=> bm!89224 m!1455527))

(declare-fun m!1457875 () Bool)

(assert (=> bm!89224 m!1457875))

(assert (=> b!1306069 m!1457849))

(declare-fun m!1457877 () Bool)

(assert (=> b!1306069 m!1457877))

(assert (=> b!1306069 m!1455527))

(assert (=> b!1306069 m!1455671))

(assert (=> b!1306062 m!1457849))

(assert (=> b!1306062 m!1457851))

(assert (=> b!1306062 m!1457851))

(assert (=> b!1306062 m!1457853))

(assert (=> d!367566 d!368390))

(declare-fun d!368392 () Bool)

(declare-fun res!585510 () Bool)

(declare-fun e!837525 () Bool)

(assert (=> d!368392 (=> res!585510 e!837525)))

(assert (=> d!368392 (= res!585510 ((_ is Nil!13160) lt!429017))))

(assert (=> d!368392 (= (forall!3273 lt!429017 lambda!52034) e!837525)))

(declare-fun b!1306070 () Bool)

(declare-fun e!837526 () Bool)

(assert (=> b!1306070 (= e!837525 e!837526)))

(declare-fun res!585511 () Bool)

(assert (=> b!1306070 (=> (not res!585511) (not e!837526))))

(assert (=> b!1306070 (= res!585511 (dynLambda!5727 lambda!52034 (h!18561 lt!429017)))))

(declare-fun b!1306071 () Bool)

(assert (=> b!1306071 (= e!837526 (forall!3273 (t!117787 lt!429017) lambda!52034))))

(assert (= (and d!368392 (not res!585510)) b!1306070))

(assert (= (and b!1306070 res!585511) b!1306071))

(declare-fun b_lambda!37463 () Bool)

(assert (=> (not b_lambda!37463) (not b!1306070)))

(declare-fun m!1457879 () Bool)

(assert (=> b!1306070 m!1457879))

(declare-fun m!1457881 () Bool)

(assert (=> b!1306071 m!1457881))

(assert (=> d!367668 d!368392))

(declare-fun lt!429773 () Bool)

(declare-fun d!368394 () Bool)

(assert (=> d!368394 (= lt!429773 (isEmpty!7786 (list!4927 (_2!7258 (lex!805 thiss!19762 rules!2550 (print!744 thiss!19762 (singletonSeq!844 t2!34)))))))))

(assert (=> d!368394 (= lt!429773 (isEmpty!7787 (c!214292 (_2!7258 (lex!805 thiss!19762 rules!2550 (print!744 thiss!19762 (singletonSeq!844 t2!34)))))))))

(assert (=> d!368394 (= (isEmpty!7781 (_2!7258 (lex!805 thiss!19762 rules!2550 (print!744 thiss!19762 (singletonSeq!844 t2!34))))) lt!429773)))

(declare-fun bs!329603 () Bool)

(assert (= bs!329603 d!368394))

(declare-fun m!1457883 () Bool)

(assert (=> bs!329603 m!1457883))

(assert (=> bs!329603 m!1457883))

(declare-fun m!1457885 () Bool)

(assert (=> bs!329603 m!1457885))

(declare-fun m!1457887 () Bool)

(assert (=> bs!329603 m!1457887))

(assert (=> b!1304503 d!368394))

(assert (=> b!1304503 d!368380))

(assert (=> b!1304503 d!368376))

(assert (=> b!1304503 d!368378))

(declare-fun d!368396 () Bool)

(assert (=> d!368396 (= (inv!17 (value!74470 t1!34)) (= (charsToBigInt!1 (text!17003 (value!74470 t1!34))) (value!74462 (value!74470 t1!34))))))

(declare-fun bs!329604 () Bool)

(assert (= bs!329604 d!368396))

(declare-fun m!1457889 () Bool)

(assert (=> bs!329604 m!1457889))

(assert (=> b!1304465 d!368396))

(declare-fun d!368398 () Bool)

(declare-fun nullableFct!259 (Regex!3589) Bool)

(assert (=> d!368398 (= (nullable!1137 lt!429022) (nullableFct!259 lt!429022))))

(declare-fun bs!329605 () Bool)

(assert (= bs!329605 d!368398))

(declare-fun m!1457891 () Bool)

(assert (=> bs!329605 m!1457891))

(assert (=> b!1304682 d!368398))

(declare-fun bm!89227 () Bool)

(declare-fun call!89232 () Bool)

(assert (=> bm!89227 (= call!89232 (ruleDisjointCharsFromAllFromOtherType!302 (h!18559 rules!2550) (t!117785 rules!2550)))))

(declare-fun d!368400 () Bool)

(declare-fun c!214711 () Bool)

(assert (=> d!368400 (= c!214711 (and ((_ is Cons!13158) rules!2550) (not (= (isSeparator!2275 (h!18559 rules!2550)) (isSeparator!2275 (h!18559 rules!2550))))))))

(declare-fun e!837533 () Bool)

(assert (=> d!368400 (= (ruleDisjointCharsFromAllFromOtherType!302 (h!18559 rules!2550) rules!2550) e!837533)))

(declare-fun b!1306080 () Bool)

(declare-fun e!837535 () Bool)

(assert (=> b!1306080 (= e!837535 call!89232)))

(declare-fun b!1306081 () Bool)

(assert (=> b!1306081 (= e!837533 e!837535)))

(declare-fun res!585517 () Bool)

(declare-fun rulesUseDisjointChars!156 (Rule!4350 Rule!4350) Bool)

(assert (=> b!1306081 (= res!585517 (rulesUseDisjointChars!156 (h!18559 rules!2550) (h!18559 rules!2550)))))

(assert (=> b!1306081 (=> (not res!585517) (not e!837535))))

(declare-fun b!1306082 () Bool)

(declare-fun e!837534 () Bool)

(assert (=> b!1306082 (= e!837533 e!837534)))

(declare-fun res!585516 () Bool)

(assert (=> b!1306082 (= res!585516 (not ((_ is Cons!13158) rules!2550)))))

(assert (=> b!1306082 (=> res!585516 e!837534)))

(declare-fun b!1306083 () Bool)

(assert (=> b!1306083 (= e!837534 call!89232)))

(assert (= (and d!368400 c!214711) b!1306081))

(assert (= (and d!368400 (not c!214711)) b!1306082))

(assert (= (and b!1306081 res!585517) b!1306080))

(assert (= (and b!1306082 (not res!585516)) b!1306083))

(assert (= (or b!1306080 b!1306083) bm!89227))

(declare-fun m!1457893 () Bool)

(assert (=> bm!89227 m!1457893))

(declare-fun m!1457895 () Bool)

(assert (=> b!1306081 m!1457895))

(assert (=> b!1304785 d!368400))

(declare-fun bs!329606 () Bool)

(declare-fun d!368402 () Bool)

(assert (= bs!329606 (and d!368402 d!367984)))

(declare-fun lambda!52123 () Int)

(assert (=> bs!329606 (= (= (toValue!3490 (transformation!2275 (h!18559 rules!2550))) (toValue!3490 (transformation!2275 (rule!4014 t2!34)))) (= lambda!52123 lambda!52099))))

(declare-fun bs!329607 () Bool)

(assert (= bs!329607 (and d!368402 d!368356)))

(assert (=> bs!329607 (= (= (toValue!3490 (transformation!2275 (h!18559 rules!2550))) (toValue!3490 (transformation!2275 (rule!4014 t1!34)))) (= lambda!52123 lambda!52122))))

(assert (=> d!368402 true))

(assert (=> d!368402 (< (dynLambda!5735 order!7951 (toValue!3490 (transformation!2275 (h!18559 rules!2550)))) (dynLambda!5736 order!7953 lambda!52123))))

(assert (=> d!368402 (= (equivClasses!817 (toChars!3349 (transformation!2275 (h!18559 rules!2550))) (toValue!3490 (transformation!2275 (h!18559 rules!2550)))) (Forall2!415 lambda!52123))))

(declare-fun bs!329608 () Bool)

(assert (= bs!329608 d!368402))

(declare-fun m!1457897 () Bool)

(assert (=> bs!329608 m!1457897))

(assert (=> b!1304388 d!368402))

(declare-fun d!368404 () Bool)

(declare-fun lt!429774 () C!7468)

(assert (=> d!368404 (contains!2234 (list!4927 lt!429020) lt!429774)))

(declare-fun e!837537 () C!7468)

(assert (=> d!368404 (= lt!429774 e!837537)))

(declare-fun c!214712 () Bool)

(assert (=> d!368404 (= c!214712 (= 0 0))))

(declare-fun e!837536 () Bool)

(assert (=> d!368404 e!837536))

(declare-fun res!585518 () Bool)

(assert (=> d!368404 (=> (not res!585518) (not e!837536))))

(assert (=> d!368404 (= res!585518 (<= 0 0))))

(assert (=> d!368404 (= (apply!2946 (list!4927 lt!429020) 0) lt!429774)))

(declare-fun b!1306084 () Bool)

(assert (=> b!1306084 (= e!837536 (< 0 (size!10722 (list!4927 lt!429020))))))

(declare-fun b!1306085 () Bool)

(assert (=> b!1306085 (= e!837537 (head!2240 (list!4927 lt!429020)))))

(declare-fun b!1306086 () Bool)

(assert (=> b!1306086 (= e!837537 (apply!2946 (tail!1866 (list!4927 lt!429020)) (- 0 1)))))

(assert (= (and d!368404 res!585518) b!1306084))

(assert (= (and d!368404 c!214712) b!1306085))

(assert (= (and d!368404 (not c!214712)) b!1306086))

(assert (=> d!368404 m!1455485))

(declare-fun m!1457899 () Bool)

(assert (=> d!368404 m!1457899))

(assert (=> b!1306084 m!1455485))

(assert (=> b!1306084 m!1456721))

(assert (=> b!1306085 m!1455485))

(declare-fun m!1457901 () Bool)

(assert (=> b!1306085 m!1457901))

(assert (=> b!1306086 m!1455485))

(declare-fun m!1457903 () Bool)

(assert (=> b!1306086 m!1457903))

(assert (=> b!1306086 m!1457903))

(declare-fun m!1457905 () Bool)

(assert (=> b!1306086 m!1457905))

(assert (=> d!367700 d!368404))

(assert (=> d!367700 d!367748))

(declare-fun b!1306087 () Bool)

(declare-fun e!837538 () C!7468)

(declare-fun e!837540 () C!7468)

(assert (=> b!1306087 (= e!837538 e!837540)))

(declare-fun lt!429775 () Bool)

(assert (=> b!1306087 (= lt!429775 (appendIndex!137 (list!4930 (left!11315 (c!214292 lt!429020))) (list!4930 (right!11645 (c!214292 lt!429020))) 0))))

(declare-fun c!214713 () Bool)

(assert (=> b!1306087 (= c!214713 (< 0 (size!10728 (left!11315 (c!214292 lt!429020)))))))

(declare-fun d!368406 () Bool)

(declare-fun lt!429776 () C!7468)

(assert (=> d!368406 (= lt!429776 (apply!2946 (list!4930 (c!214292 lt!429020)) 0))))

(assert (=> d!368406 (= lt!429776 e!837538)))

(declare-fun c!214714 () Bool)

(assert (=> d!368406 (= c!214714 ((_ is Leaf!6654) (c!214292 lt!429020)))))

(declare-fun e!837539 () Bool)

(assert (=> d!368406 e!837539))

(declare-fun res!585519 () Bool)

(assert (=> d!368406 (=> (not res!585519) (not e!837539))))

(assert (=> d!368406 (= res!585519 (<= 0 0))))

(assert (=> d!368406 (= (apply!2947 (c!214292 lt!429020) 0) lt!429776)))

(declare-fun b!1306088 () Bool)

(assert (=> b!1306088 (= e!837539 (< 0 (size!10728 (c!214292 lt!429020))))))

(declare-fun b!1306089 () Bool)

(declare-fun e!837541 () Int)

(assert (=> b!1306089 (= e!837541 (- 0 (size!10728 (left!11315 (c!214292 lt!429020)))))))

(declare-fun bm!89228 () Bool)

(declare-fun c!214715 () Bool)

(assert (=> bm!89228 (= c!214715 c!214713)))

(declare-fun call!89233 () C!7468)

(assert (=> bm!89228 (= call!89233 (apply!2947 (ite c!214713 (left!11315 (c!214292 lt!429020)) (right!11645 (c!214292 lt!429020))) e!837541))))

(declare-fun b!1306090 () Bool)

(assert (=> b!1306090 (= e!837541 0)))

(declare-fun b!1306091 () Bool)

(assert (=> b!1306091 (= e!837540 call!89233)))

(declare-fun b!1306092 () Bool)

(assert (=> b!1306092 (= e!837538 (apply!2953 (xs!7035 (c!214292 lt!429020)) 0))))

(declare-fun b!1306093 () Bool)

(assert (=> b!1306093 (= e!837540 call!89233)))

(assert (= (and d!368406 res!585519) b!1306088))

(assert (= (and d!368406 c!214714) b!1306092))

(assert (= (and d!368406 (not c!214714)) b!1306087))

(assert (= (and b!1306087 c!214713) b!1306091))

(assert (= (and b!1306087 (not c!214713)) b!1306093))

(assert (= (or b!1306091 b!1306093) bm!89228))

(assert (= (and bm!89228 c!214715) b!1306090))

(assert (= (and bm!89228 (not c!214715)) b!1306089))

(declare-fun m!1457907 () Bool)

(assert (=> b!1306092 m!1457907))

(declare-fun m!1457909 () Bool)

(assert (=> b!1306089 m!1457909))

(declare-fun m!1457911 () Bool)

(assert (=> bm!89228 m!1457911))

(assert (=> b!1306088 m!1456723))

(assert (=> b!1306087 m!1456957))

(assert (=> b!1306087 m!1456959))

(assert (=> b!1306087 m!1456957))

(assert (=> b!1306087 m!1456959))

(declare-fun m!1457913 () Bool)

(assert (=> b!1306087 m!1457913))

(assert (=> b!1306087 m!1457909))

(assert (=> d!368406 m!1456165))

(assert (=> d!368406 m!1456165))

(declare-fun m!1457915 () Bool)

(assert (=> d!368406 m!1457915))

(assert (=> d!367700 d!368406))

(assert (=> d!367592 d!367952))

(declare-fun b!1306094 () Bool)

(declare-fun e!837543 () Bool)

(declare-fun lt!429778 () Rule!4350)

(assert (=> b!1306094 (= e!837543 (contains!2237 (t!117785 rules!2550) lt!429778))))

(declare-fun b!1306095 () Bool)

(declare-fun e!837545 () Rule!4350)

(declare-fun e!837542 () Rule!4350)

(assert (=> b!1306095 (= e!837545 e!837542)))

(declare-fun c!214717 () Bool)

(assert (=> b!1306095 (= c!214717 ((_ is Cons!13158) (t!117785 rules!2550)))))

(declare-fun d!368408 () Bool)

(assert (=> d!368408 e!837543))

(declare-fun res!585521 () Bool)

(assert (=> d!368408 (=> (not res!585521) (not e!837543))))

(assert (=> d!368408 (= res!585521 (dynLambda!5728 lambda!52009 lt!429778))))

(assert (=> d!368408 (= lt!429778 e!837545)))

(declare-fun c!214716 () Bool)

(declare-fun e!837544 () Bool)

(assert (=> d!368408 (= c!214716 e!837544)))

(declare-fun res!585520 () Bool)

(assert (=> d!368408 (=> (not res!585520) (not e!837544))))

(assert (=> d!368408 (= res!585520 ((_ is Cons!13158) (t!117785 rules!2550)))))

(assert (=> d!368408 (exists!253 (t!117785 rules!2550) lambda!52009)))

(assert (=> d!368408 (= (getWitness!145 (t!117785 rules!2550) lambda!52009) lt!429778)))

(declare-fun b!1306096 () Bool)

(assert (=> b!1306096 (= e!837542 (getWitness!145 (t!117785 (t!117785 rules!2550)) lambda!52009))))

(declare-fun b!1306097 () Bool)

(assert (=> b!1306097 (= e!837544 (dynLambda!5728 lambda!52009 (h!18559 (t!117785 rules!2550))))))

(declare-fun b!1306098 () Bool)

(assert (=> b!1306098 (= e!837545 (h!18559 (t!117785 rules!2550)))))

(declare-fun b!1306099 () Bool)

(declare-fun lt!429777 () Unit!19246)

(declare-fun Unit!19263 () Unit!19246)

(assert (=> b!1306099 (= lt!429777 Unit!19263)))

(assert (=> b!1306099 false))

(assert (=> b!1306099 (= e!837542 (head!2242 (t!117785 rules!2550)))))

(assert (= (and d!368408 res!585520) b!1306097))

(assert (= (and d!368408 c!214716) b!1306098))

(assert (= (and d!368408 (not c!214716)) b!1306095))

(assert (= (and b!1306095 c!214717) b!1306096))

(assert (= (and b!1306095 (not c!214717)) b!1306099))

(assert (= (and d!368408 res!585521) b!1306094))

(declare-fun b_lambda!37465 () Bool)

(assert (=> (not b_lambda!37465) (not d!368408)))

(declare-fun b_lambda!37467 () Bool)

(assert (=> (not b_lambda!37467) (not b!1306097)))

(declare-fun m!1457917 () Bool)

(assert (=> b!1306094 m!1457917))

(declare-fun m!1457919 () Bool)

(assert (=> d!368408 m!1457919))

(declare-fun m!1457921 () Bool)

(assert (=> d!368408 m!1457921))

(declare-fun m!1457923 () Bool)

(assert (=> b!1306096 m!1457923))

(declare-fun m!1457925 () Bool)

(assert (=> b!1306099 m!1457925))

(declare-fun m!1457927 () Bool)

(assert (=> b!1306097 m!1457927))

(assert (=> b!1304843 d!368408))

(assert (=> b!1304686 d!368024))

(assert (=> b!1304686 d!367926))

(declare-fun d!368410 () Bool)

(assert (=> d!368410 (= (Exists!747 lambda!52053) (choose!7991 lambda!52053))))

(declare-fun bs!329609 () Bool)

(assert (= bs!329609 d!368410))

(declare-fun m!1457929 () Bool)

(assert (=> bs!329609 m!1457929))

(assert (=> d!367714 d!368410))

(declare-fun bs!329610 () Bool)

(declare-fun d!368412 () Bool)

(assert (= bs!329610 (and d!368412 b!1304286)))

(declare-fun lambda!52126 () Int)

(assert (=> bs!329610 (= lambda!52126 lambda!52006)))

(declare-fun bs!329611 () Bool)

(assert (= bs!329611 (and d!368412 d!367714)))

(assert (=> bs!329611 (= lambda!52126 lambda!52053)))

(assert (=> d!368412 true))

(assert (=> d!368412 true))

(assert (=> d!368412 (Exists!747 lambda!52126)))

(assert (=> d!368412 true))

(declare-fun _$103!65 () Unit!19246)

(assert (=> d!368412 (= (choose!7992 lt!429022 lt!429015) _$103!65)))

(declare-fun bs!329612 () Bool)

(assert (= bs!329612 d!368412))

(declare-fun m!1457931 () Bool)

(assert (=> bs!329612 m!1457931))

(assert (=> d!367714 d!368412))

(assert (=> d!367714 d!368346))

(declare-fun d!368414 () Bool)

(declare-fun e!837549 () Bool)

(assert (=> d!368414 e!837549))

(declare-fun res!585524 () Bool)

(assert (=> d!368414 (=> (not res!585524) (not e!837549))))

(declare-fun lt!429779 () List!13222)

(assert (=> d!368414 (= res!585524 (= (content!1843 lt!429779) ((_ map or) (content!1843 (t!117783 lt!429006)) (content!1843 (Cons!13156 lt!429010 Nil!13156)))))))

(declare-fun e!837548 () List!13222)

(assert (=> d!368414 (= lt!429779 e!837548)))

(declare-fun c!214718 () Bool)

(assert (=> d!368414 (= c!214718 ((_ is Nil!13156) (t!117783 lt!429006)))))

(assert (=> d!368414 (= (++!3346 (t!117783 lt!429006) (Cons!13156 lt!429010 Nil!13156)) lt!429779)))

(declare-fun b!1306102 () Bool)

(assert (=> b!1306102 (= e!837548 (Cons!13156 lt!429010 Nil!13156))))

(declare-fun b!1306105 () Bool)

(assert (=> b!1306105 (= e!837549 (or (not (= (Cons!13156 lt!429010 Nil!13156) Nil!13156)) (= lt!429779 (t!117783 lt!429006))))))

(declare-fun b!1306103 () Bool)

(assert (=> b!1306103 (= e!837548 (Cons!13156 (h!18557 (t!117783 lt!429006)) (++!3346 (t!117783 (t!117783 lt!429006)) (Cons!13156 lt!429010 Nil!13156))))))

(declare-fun b!1306104 () Bool)

(declare-fun res!585525 () Bool)

(assert (=> b!1306104 (=> (not res!585525) (not e!837549))))

(assert (=> b!1306104 (= res!585525 (= (size!10722 lt!429779) (+ (size!10722 (t!117783 lt!429006)) (size!10722 (Cons!13156 lt!429010 Nil!13156)))))))

(assert (= (and d!368414 c!214718) b!1306102))

(assert (= (and d!368414 (not c!214718)) b!1306103))

(assert (= (and d!368414 res!585524) b!1306104))

(assert (= (and b!1306104 res!585525) b!1306105))

(declare-fun m!1457933 () Bool)

(assert (=> d!368414 m!1457933))

(assert (=> d!368414 m!1457567))

(assert (=> d!368414 m!1456183))

(declare-fun m!1457935 () Bool)

(assert (=> b!1306103 m!1457935))

(declare-fun m!1457937 () Bool)

(assert (=> b!1306104 m!1457937))

(assert (=> b!1306104 m!1457713))

(assert (=> b!1306104 m!1456191))

(assert (=> b!1304810 d!368414))

(declare-fun b!1306117 () Bool)

(declare-fun e!837555 () List!13225)

(assert (=> b!1306117 (= e!837555 (++!3350 (list!4931 (left!11316 (c!214294 (_1!7258 lt!429007)))) (list!4931 (right!11646 (c!214294 (_1!7258 lt!429007))))))))

(declare-fun b!1306114 () Bool)

(declare-fun e!837554 () List!13225)

(assert (=> b!1306114 (= e!837554 Nil!13159)))

(declare-fun b!1306116 () Bool)

(declare-fun list!4935 (IArray!8647) List!13225)

(assert (=> b!1306116 (= e!837555 (list!4935 (xs!7036 (c!214294 (_1!7258 lt!429007)))))))

(declare-fun b!1306115 () Bool)

(assert (=> b!1306115 (= e!837554 e!837555)))

(declare-fun c!214724 () Bool)

(assert (=> b!1306115 (= c!214724 ((_ is Leaf!6655) (c!214294 (_1!7258 lt!429007))))))

(declare-fun d!368416 () Bool)

(declare-fun c!214723 () Bool)

(assert (=> d!368416 (= c!214723 ((_ is Empty!4321) (c!214294 (_1!7258 lt!429007))))))

(assert (=> d!368416 (= (list!4931 (c!214294 (_1!7258 lt!429007))) e!837554)))

(assert (= (and d!368416 c!214723) b!1306114))

(assert (= (and d!368416 (not c!214723)) b!1306115))

(assert (= (and b!1306115 c!214724) b!1306116))

(assert (= (and b!1306115 (not c!214724)) b!1306117))

(declare-fun m!1457939 () Bool)

(assert (=> b!1306117 m!1457939))

(declare-fun m!1457941 () Bool)

(assert (=> b!1306117 m!1457941))

(assert (=> b!1306117 m!1457939))

(assert (=> b!1306117 m!1457941))

(declare-fun m!1457943 () Bool)

(assert (=> b!1306117 m!1457943))

(declare-fun m!1457945 () Bool)

(assert (=> b!1306116 m!1457945))

(assert (=> d!367760 d!368416))

(declare-fun d!368418 () Bool)

(assert (=> d!368418 (= (inv!16 (value!74470 t1!34)) (= (charsToInt!0 (text!17002 (value!74470 t1!34))) (value!74461 (value!74470 t1!34))))))

(declare-fun bs!329613 () Bool)

(assert (= bs!329613 d!368418))

(declare-fun m!1457947 () Bool)

(assert (=> bs!329613 m!1457947))

(assert (=> b!1304469 d!368418))

(declare-fun bs!329614 () Bool)

(declare-fun d!368420 () Bool)

(assert (= bs!329614 (and d!368420 d!367882)))

(declare-fun lambda!52127 () Int)

(assert (=> bs!329614 (not (= lambda!52127 lambda!52077))))

(declare-fun bs!329615 () Bool)

(assert (= bs!329615 (and d!368420 d!367910)))

(assert (=> bs!329615 (= lambda!52127 lambda!52087)))

(declare-fun bs!329616 () Bool)

(assert (= bs!329616 (and d!368420 b!1304301)))

(assert (=> bs!329616 (not (= lambda!52127 lambda!52009))))

(declare-fun bs!329617 () Bool)

(assert (= bs!329617 (and d!368420 d!367734)))

(assert (=> bs!329617 (= lambda!52127 lambda!52056)))

(declare-fun bs!329618 () Bool)

(assert (= bs!329618 (and d!368420 d!367884)))

(assert (=> bs!329618 (not (= lambda!52127 lambda!52080))))

(declare-fun bs!329619 () Bool)

(assert (= bs!329619 (and d!368420 d!367692)))

(assert (=> bs!329619 (not (= lambda!52127 lambda!52050))))

(declare-fun bs!329620 () Bool)

(assert (= bs!329620 (and d!368420 d!367688)))

(assert (=> bs!329620 (not (= lambda!52127 lambda!52047))))

(assert (=> d!368420 true))

(declare-fun lt!429780 () Bool)

(assert (=> d!368420 (= lt!429780 (forall!3274 (t!117785 rules!2550) lambda!52127))))

(declare-fun e!837557 () Bool)

(assert (=> d!368420 (= lt!429780 e!837557)))

(declare-fun res!585526 () Bool)

(assert (=> d!368420 (=> res!585526 e!837557)))

(assert (=> d!368420 (= res!585526 (not ((_ is Cons!13158) (t!117785 rules!2550))))))

(assert (=> d!368420 (= (rulesValidInductive!712 thiss!19762 (t!117785 rules!2550)) lt!429780)))

(declare-fun b!1306118 () Bool)

(declare-fun e!837556 () Bool)

(assert (=> b!1306118 (= e!837557 e!837556)))

(declare-fun res!585527 () Bool)

(assert (=> b!1306118 (=> (not res!585527) (not e!837556))))

(assert (=> b!1306118 (= res!585527 (ruleValid!553 thiss!19762 (h!18559 (t!117785 rules!2550))))))

(declare-fun b!1306119 () Bool)

(assert (=> b!1306119 (= e!837556 (rulesValidInductive!712 thiss!19762 (t!117785 (t!117785 rules!2550))))))

(assert (= (and d!368420 (not res!585526)) b!1306118))

(assert (= (and b!1306118 res!585527) b!1306119))

(declare-fun m!1457949 () Bool)

(assert (=> d!368420 m!1457949))

(declare-fun m!1457951 () Bool)

(assert (=> b!1306118 m!1457951))

(declare-fun m!1457953 () Bool)

(assert (=> b!1306119 m!1457953))

(assert (=> b!1304800 d!368420))

(declare-fun d!368422 () Bool)

(declare-fun lt!429781 () Int)

(assert (=> d!368422 (>= lt!429781 0)))

(declare-fun e!837558 () Int)

(assert (=> d!368422 (= lt!429781 e!837558)))

(declare-fun c!214725 () Bool)

(assert (=> d!368422 (= c!214725 ((_ is Nil!13156) (_2!7259 lt!429055)))))

(assert (=> d!368422 (= (size!10722 (_2!7259 lt!429055)) lt!429781)))

(declare-fun b!1306120 () Bool)

(assert (=> b!1306120 (= e!837558 0)))

(declare-fun b!1306121 () Bool)

(assert (=> b!1306121 (= e!837558 (+ 1 (size!10722 (t!117783 (_2!7259 lt!429055)))))))

(assert (= (and d!368422 c!214725) b!1306120))

(assert (= (and d!368422 (not c!214725)) b!1306121))

(declare-fun m!1457955 () Bool)

(assert (=> b!1306121 m!1457955))

(assert (=> b!1304380 d!368422))

(declare-fun d!368424 () Bool)

(declare-fun lt!429782 () Int)

(assert (=> d!368424 (>= lt!429782 0)))

(declare-fun e!837559 () Int)

(assert (=> d!368424 (= lt!429782 e!837559)))

(declare-fun c!214726 () Bool)

(assert (=> d!368424 (= c!214726 ((_ is Nil!13156) (list!4927 lt!429019)))))

(assert (=> d!368424 (= (size!10722 (list!4927 lt!429019)) lt!429782)))

(declare-fun b!1306122 () Bool)

(assert (=> b!1306122 (= e!837559 0)))

(declare-fun b!1306123 () Bool)

(assert (=> b!1306123 (= e!837559 (+ 1 (size!10722 (t!117783 (list!4927 lt!429019)))))))

(assert (= (and d!368424 c!214726) b!1306122))

(assert (= (and d!368424 (not c!214726)) b!1306123))

(declare-fun m!1457957 () Bool)

(assert (=> b!1306123 m!1457957))

(assert (=> b!1304380 d!368424))

(declare-fun b!1306124 () Bool)

(declare-fun e!837560 () Bool)

(declare-fun tp!380917 () Bool)

(assert (=> b!1306124 (= e!837560 (and tp_is_empty!6607 tp!380917))))

(assert (=> b!1304854 (= tp!380774 e!837560)))

(assert (= (and b!1304854 ((_ is Cons!13156) (t!117783 (originalCharacters!3137 t1!34)))) b!1306124))

(declare-fun b!1306125 () Bool)

(declare-fun e!837561 () Bool)

(declare-fun tp!380918 () Bool)

(assert (=> b!1306125 (= e!837561 (and tp_is_empty!6607 tp!380918))))

(assert (=> b!1304888 (= tp!380812 e!837561)))

(assert (= (and b!1304888 ((_ is Cons!13156) (t!117783 (originalCharacters!3137 t2!34)))) b!1306125))

(declare-fun b!1306129 () Bool)

(declare-fun e!837562 () Bool)

(declare-fun tp!380923 () Bool)

(declare-fun tp!380922 () Bool)

(assert (=> b!1306129 (= e!837562 (and tp!380923 tp!380922))))

(declare-fun b!1306128 () Bool)

(declare-fun tp!380919 () Bool)

(assert (=> b!1306128 (= e!837562 tp!380919)))

(declare-fun b!1306127 () Bool)

(declare-fun tp!380921 () Bool)

(declare-fun tp!380920 () Bool)

(assert (=> b!1306127 (= e!837562 (and tp!380921 tp!380920))))

(assert (=> b!1304886 (= tp!380808 e!837562)))

(declare-fun b!1306126 () Bool)

(assert (=> b!1306126 (= e!837562 tp_is_empty!6607)))

(assert (= (and b!1304886 ((_ is ElementMatch!3589) (regex!2275 (h!18559 (t!117785 rules!2550))))) b!1306126))

(assert (= (and b!1304886 ((_ is Concat!5955) (regex!2275 (h!18559 (t!117785 rules!2550))))) b!1306127))

(assert (= (and b!1304886 ((_ is Star!3589) (regex!2275 (h!18559 (t!117785 rules!2550))))) b!1306128))

(assert (= (and b!1304886 ((_ is Union!3589) (regex!2275 (h!18559 (t!117785 rules!2550))))) b!1306129))

(declare-fun b!1306138 () Bool)

(declare-fun tp!380931 () Bool)

(declare-fun e!837567 () Bool)

(declare-fun tp!380932 () Bool)

(assert (=> b!1306138 (= e!837567 (and (inv!17567 (left!11315 (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (value!74470 t2!34))))) tp!380931 (inv!17567 (right!11645 (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (value!74470 t2!34))))) tp!380932))))

(declare-fun b!1306140 () Bool)

(declare-fun e!837568 () Bool)

(declare-fun tp!380930 () Bool)

(assert (=> b!1306140 (= e!837568 tp!380930)))

(declare-fun b!1306139 () Bool)

(declare-fun inv!17574 (IArray!8645) Bool)

(assert (=> b!1306139 (= e!837567 (and (inv!17574 (xs!7035 (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (value!74470 t2!34))))) e!837568))))

(assert (=> b!1304647 (= tp!380729 (and (inv!17567 (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (value!74470 t2!34)))) e!837567))))

(assert (= (and b!1304647 ((_ is Node!4320) (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (value!74470 t2!34))))) b!1306138))

(assert (= b!1306139 b!1306140))

(assert (= (and b!1304647 ((_ is Leaf!6654) (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t2!34))) (value!74470 t2!34))))) b!1306139))

(declare-fun m!1457959 () Bool)

(assert (=> b!1306138 m!1457959))

(declare-fun m!1457961 () Bool)

(assert (=> b!1306138 m!1457961))

(declare-fun m!1457963 () Bool)

(assert (=> b!1306139 m!1457963))

(assert (=> b!1304647 m!1456033))

(declare-fun b!1306144 () Bool)

(declare-fun e!837569 () Bool)

(declare-fun tp!380937 () Bool)

(declare-fun tp!380936 () Bool)

(assert (=> b!1306144 (= e!837569 (and tp!380937 tp!380936))))

(declare-fun b!1306143 () Bool)

(declare-fun tp!380933 () Bool)

(assert (=> b!1306143 (= e!837569 tp!380933)))

(declare-fun b!1306142 () Bool)

(declare-fun tp!380935 () Bool)

(declare-fun tp!380934 () Bool)

(assert (=> b!1306142 (= e!837569 (and tp!380935 tp!380934))))

(assert (=> b!1304870 (= tp!380792 e!837569)))

(declare-fun b!1306141 () Bool)

(assert (=> b!1306141 (= e!837569 tp_is_empty!6607)))

(assert (= (and b!1304870 ((_ is ElementMatch!3589) (regOne!7690 (regex!2275 (h!18559 rules!2550))))) b!1306141))

(assert (= (and b!1304870 ((_ is Concat!5955) (regOne!7690 (regex!2275 (h!18559 rules!2550))))) b!1306142))

(assert (= (and b!1304870 ((_ is Star!3589) (regOne!7690 (regex!2275 (h!18559 rules!2550))))) b!1306143))

(assert (= (and b!1304870 ((_ is Union!3589) (regOne!7690 (regex!2275 (h!18559 rules!2550))))) b!1306144))

(declare-fun b!1306148 () Bool)

(declare-fun e!837570 () Bool)

(declare-fun tp!380942 () Bool)

(declare-fun tp!380941 () Bool)

(assert (=> b!1306148 (= e!837570 (and tp!380942 tp!380941))))

(declare-fun b!1306147 () Bool)

(declare-fun tp!380938 () Bool)

(assert (=> b!1306147 (= e!837570 tp!380938)))

(declare-fun b!1306146 () Bool)

(declare-fun tp!380940 () Bool)

(declare-fun tp!380939 () Bool)

(assert (=> b!1306146 (= e!837570 (and tp!380940 tp!380939))))

(assert (=> b!1304870 (= tp!380791 e!837570)))

(declare-fun b!1306145 () Bool)

(assert (=> b!1306145 (= e!837570 tp_is_empty!6607)))

(assert (= (and b!1304870 ((_ is ElementMatch!3589) (regTwo!7690 (regex!2275 (h!18559 rules!2550))))) b!1306145))

(assert (= (and b!1304870 ((_ is Concat!5955) (regTwo!7690 (regex!2275 (h!18559 rules!2550))))) b!1306146))

(assert (= (and b!1304870 ((_ is Star!3589) (regTwo!7690 (regex!2275 (h!18559 rules!2550))))) b!1306147))

(assert (= (and b!1304870 ((_ is Union!3589) (regTwo!7690 (regex!2275 (h!18559 rules!2550))))) b!1306148))

(declare-fun b!1306152 () Bool)

(declare-fun e!837571 () Bool)

(declare-fun tp!380947 () Bool)

(declare-fun tp!380946 () Bool)

(assert (=> b!1306152 (= e!837571 (and tp!380947 tp!380946))))

(declare-fun b!1306151 () Bool)

(declare-fun tp!380943 () Bool)

(assert (=> b!1306151 (= e!837571 tp!380943)))

(declare-fun b!1306150 () Bool)

(declare-fun tp!380945 () Bool)

(declare-fun tp!380944 () Bool)

(assert (=> b!1306150 (= e!837571 (and tp!380945 tp!380944))))

(assert (=> b!1304874 (= tp!380797 e!837571)))

(declare-fun b!1306149 () Bool)

(assert (=> b!1306149 (= e!837571 tp_is_empty!6607)))

(assert (= (and b!1304874 ((_ is ElementMatch!3589) (regOne!7690 (regex!2275 (rule!4014 t2!34))))) b!1306149))

(assert (= (and b!1304874 ((_ is Concat!5955) (regOne!7690 (regex!2275 (rule!4014 t2!34))))) b!1306150))

(assert (= (and b!1304874 ((_ is Star!3589) (regOne!7690 (regex!2275 (rule!4014 t2!34))))) b!1306151))

(assert (= (and b!1304874 ((_ is Union!3589) (regOne!7690 (regex!2275 (rule!4014 t2!34))))) b!1306152))

(declare-fun b!1306156 () Bool)

(declare-fun e!837572 () Bool)

(declare-fun tp!380952 () Bool)

(declare-fun tp!380951 () Bool)

(assert (=> b!1306156 (= e!837572 (and tp!380952 tp!380951))))

(declare-fun b!1306155 () Bool)

(declare-fun tp!380948 () Bool)

(assert (=> b!1306155 (= e!837572 tp!380948)))

(declare-fun b!1306154 () Bool)

(declare-fun tp!380950 () Bool)

(declare-fun tp!380949 () Bool)

(assert (=> b!1306154 (= e!837572 (and tp!380950 tp!380949))))

(assert (=> b!1304874 (= tp!380796 e!837572)))

(declare-fun b!1306153 () Bool)

(assert (=> b!1306153 (= e!837572 tp_is_empty!6607)))

(assert (= (and b!1304874 ((_ is ElementMatch!3589) (regTwo!7690 (regex!2275 (rule!4014 t2!34))))) b!1306153))

(assert (= (and b!1304874 ((_ is Concat!5955) (regTwo!7690 (regex!2275 (rule!4014 t2!34))))) b!1306154))

(assert (= (and b!1304874 ((_ is Star!3589) (regTwo!7690 (regex!2275 (rule!4014 t2!34))))) b!1306155))

(assert (= (and b!1304874 ((_ is Union!3589) (regTwo!7690 (regex!2275 (rule!4014 t2!34))))) b!1306156))

(declare-fun b!1306160 () Bool)

(declare-fun e!837573 () Bool)

(declare-fun tp!380957 () Bool)

(declare-fun tp!380956 () Bool)

(assert (=> b!1306160 (= e!837573 (and tp!380957 tp!380956))))

(declare-fun b!1306159 () Bool)

(declare-fun tp!380953 () Bool)

(assert (=> b!1306159 (= e!837573 tp!380953)))

(declare-fun b!1306158 () Bool)

(declare-fun tp!380955 () Bool)

(declare-fun tp!380954 () Bool)

(assert (=> b!1306158 (= e!837573 (and tp!380955 tp!380954))))

(assert (=> b!1304871 (= tp!380790 e!837573)))

(declare-fun b!1306157 () Bool)

(assert (=> b!1306157 (= e!837573 tp_is_empty!6607)))

(assert (= (and b!1304871 ((_ is ElementMatch!3589) (reg!3918 (regex!2275 (h!18559 rules!2550))))) b!1306157))

(assert (= (and b!1304871 ((_ is Concat!5955) (reg!3918 (regex!2275 (h!18559 rules!2550))))) b!1306158))

(assert (= (and b!1304871 ((_ is Star!3589) (reg!3918 (regex!2275 (h!18559 rules!2550))))) b!1306159))

(assert (= (and b!1304871 ((_ is Union!3589) (reg!3918 (regex!2275 (h!18559 rules!2550))))) b!1306160))

(declare-fun b!1306164 () Bool)

(declare-fun e!837574 () Bool)

(declare-fun tp!380962 () Bool)

(declare-fun tp!380961 () Bool)

(assert (=> b!1306164 (= e!837574 (and tp!380962 tp!380961))))

(declare-fun b!1306163 () Bool)

(declare-fun tp!380958 () Bool)

(assert (=> b!1306163 (= e!837574 tp!380958)))

(declare-fun b!1306162 () Bool)

(declare-fun tp!380960 () Bool)

(declare-fun tp!380959 () Bool)

(assert (=> b!1306162 (= e!837574 (and tp!380960 tp!380959))))

(assert (=> b!1304876 (= tp!380799 e!837574)))

(declare-fun b!1306161 () Bool)

(assert (=> b!1306161 (= e!837574 tp_is_empty!6607)))

(assert (= (and b!1304876 ((_ is ElementMatch!3589) (regOne!7691 (regex!2275 (rule!4014 t2!34))))) b!1306161))

(assert (= (and b!1304876 ((_ is Concat!5955) (regOne!7691 (regex!2275 (rule!4014 t2!34))))) b!1306162))

(assert (= (and b!1304876 ((_ is Star!3589) (regOne!7691 (regex!2275 (rule!4014 t2!34))))) b!1306163))

(assert (= (and b!1304876 ((_ is Union!3589) (regOne!7691 (regex!2275 (rule!4014 t2!34))))) b!1306164))

(declare-fun b!1306168 () Bool)

(declare-fun e!837575 () Bool)

(declare-fun tp!380967 () Bool)

(declare-fun tp!380966 () Bool)

(assert (=> b!1306168 (= e!837575 (and tp!380967 tp!380966))))

(declare-fun b!1306167 () Bool)

(declare-fun tp!380963 () Bool)

(assert (=> b!1306167 (= e!837575 tp!380963)))

(declare-fun b!1306166 () Bool)

(declare-fun tp!380965 () Bool)

(declare-fun tp!380964 () Bool)

(assert (=> b!1306166 (= e!837575 (and tp!380965 tp!380964))))

(assert (=> b!1304876 (= tp!380798 e!837575)))

(declare-fun b!1306165 () Bool)

(assert (=> b!1306165 (= e!837575 tp_is_empty!6607)))

(assert (= (and b!1304876 ((_ is ElementMatch!3589) (regTwo!7691 (regex!2275 (rule!4014 t2!34))))) b!1306165))

(assert (= (and b!1304876 ((_ is Concat!5955) (regTwo!7691 (regex!2275 (rule!4014 t2!34))))) b!1306166))

(assert (= (and b!1304876 ((_ is Star!3589) (regTwo!7691 (regex!2275 (rule!4014 t2!34))))) b!1306167))

(assert (= (and b!1304876 ((_ is Union!3589) (regTwo!7691 (regex!2275 (rule!4014 t2!34))))) b!1306168))

(declare-fun b!1306172 () Bool)

(declare-fun e!837576 () Bool)

(declare-fun tp!380972 () Bool)

(declare-fun tp!380971 () Bool)

(assert (=> b!1306172 (= e!837576 (and tp!380972 tp!380971))))

(declare-fun b!1306171 () Bool)

(declare-fun tp!380968 () Bool)

(assert (=> b!1306171 (= e!837576 tp!380968)))

(declare-fun b!1306170 () Bool)

(declare-fun tp!380970 () Bool)

(declare-fun tp!380969 () Bool)

(assert (=> b!1306170 (= e!837576 (and tp!380970 tp!380969))))

(assert (=> b!1304875 (= tp!380795 e!837576)))

(declare-fun b!1306169 () Bool)

(assert (=> b!1306169 (= e!837576 tp_is_empty!6607)))

(assert (= (and b!1304875 ((_ is ElementMatch!3589) (reg!3918 (regex!2275 (rule!4014 t2!34))))) b!1306169))

(assert (= (and b!1304875 ((_ is Concat!5955) (reg!3918 (regex!2275 (rule!4014 t2!34))))) b!1306170))

(assert (= (and b!1304875 ((_ is Star!3589) (reg!3918 (regex!2275 (rule!4014 t2!34))))) b!1306171))

(assert (= (and b!1304875 ((_ is Union!3589) (reg!3918 (regex!2275 (rule!4014 t2!34))))) b!1306172))

(declare-fun b!1306173 () Bool)

(declare-fun tp!380975 () Bool)

(declare-fun tp!380974 () Bool)

(declare-fun e!837577 () Bool)

(assert (=> b!1306173 (= e!837577 (and (inv!17567 (left!11315 (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (value!74470 t1!34))))) tp!380974 (inv!17567 (right!11645 (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (value!74470 t1!34))))) tp!380975))))

(declare-fun b!1306175 () Bool)

(declare-fun e!837578 () Bool)

(declare-fun tp!380973 () Bool)

(assert (=> b!1306175 (= e!837578 tp!380973)))

(declare-fun b!1306174 () Bool)

(assert (=> b!1306174 (= e!837577 (and (inv!17574 (xs!7035 (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (value!74470 t1!34))))) e!837578))))

(assert (=> b!1304700 (= tp!380730 (and (inv!17567 (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (value!74470 t1!34)))) e!837577))))

(assert (= (and b!1304700 ((_ is Node!4320) (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (value!74470 t1!34))))) b!1306173))

(assert (= b!1306174 b!1306175))

(assert (= (and b!1304700 ((_ is Leaf!6654) (c!214292 (dynLambda!5725 (toChars!3349 (transformation!2275 (rule!4014 t1!34))) (value!74470 t1!34))))) b!1306174))

(declare-fun m!1457965 () Bool)

(assert (=> b!1306173 m!1457965))

(declare-fun m!1457967 () Bool)

(assert (=> b!1306173 m!1457967))

(declare-fun m!1457969 () Bool)

(assert (=> b!1306174 m!1457969))

(assert (=> b!1304700 m!1456073))

(declare-fun b!1306179 () Bool)

(declare-fun e!837579 () Bool)

(declare-fun tp!380980 () Bool)

(declare-fun tp!380979 () Bool)

(assert (=> b!1306179 (= e!837579 (and tp!380980 tp!380979))))

(declare-fun b!1306178 () Bool)

(declare-fun tp!380976 () Bool)

(assert (=> b!1306178 (= e!837579 tp!380976)))

(declare-fun b!1306177 () Bool)

(declare-fun tp!380978 () Bool)

(declare-fun tp!380977 () Bool)

(assert (=> b!1306177 (= e!837579 (and tp!380978 tp!380977))))

(assert (=> b!1304866 (= tp!380787 e!837579)))

(declare-fun b!1306176 () Bool)

(assert (=> b!1306176 (= e!837579 tp_is_empty!6607)))

(assert (= (and b!1304866 ((_ is ElementMatch!3589) (regOne!7690 (regex!2275 (rule!4014 t1!34))))) b!1306176))

(assert (= (and b!1304866 ((_ is Concat!5955) (regOne!7690 (regex!2275 (rule!4014 t1!34))))) b!1306177))

(assert (= (and b!1304866 ((_ is Star!3589) (regOne!7690 (regex!2275 (rule!4014 t1!34))))) b!1306178))

(assert (= (and b!1304866 ((_ is Union!3589) (regOne!7690 (regex!2275 (rule!4014 t1!34))))) b!1306179))

(declare-fun b!1306183 () Bool)

(declare-fun e!837580 () Bool)

(declare-fun tp!380985 () Bool)

(declare-fun tp!380984 () Bool)

(assert (=> b!1306183 (= e!837580 (and tp!380985 tp!380984))))

(declare-fun b!1306182 () Bool)

(declare-fun tp!380981 () Bool)

(assert (=> b!1306182 (= e!837580 tp!380981)))

(declare-fun b!1306181 () Bool)

(declare-fun tp!380983 () Bool)

(declare-fun tp!380982 () Bool)

(assert (=> b!1306181 (= e!837580 (and tp!380983 tp!380982))))

(assert (=> b!1304866 (= tp!380786 e!837580)))

(declare-fun b!1306180 () Bool)

(assert (=> b!1306180 (= e!837580 tp_is_empty!6607)))

(assert (= (and b!1304866 ((_ is ElementMatch!3589) (regTwo!7690 (regex!2275 (rule!4014 t1!34))))) b!1306180))

(assert (= (and b!1304866 ((_ is Concat!5955) (regTwo!7690 (regex!2275 (rule!4014 t1!34))))) b!1306181))

(assert (= (and b!1304866 ((_ is Star!3589) (regTwo!7690 (regex!2275 (rule!4014 t1!34))))) b!1306182))

(assert (= (and b!1304866 ((_ is Union!3589) (regTwo!7690 (regex!2275 (rule!4014 t1!34))))) b!1306183))

(declare-fun b!1306187 () Bool)

(declare-fun e!837581 () Bool)

(declare-fun tp!380990 () Bool)

(declare-fun tp!380989 () Bool)

(assert (=> b!1306187 (= e!837581 (and tp!380990 tp!380989))))

(declare-fun b!1306186 () Bool)

(declare-fun tp!380986 () Bool)

(assert (=> b!1306186 (= e!837581 tp!380986)))

(declare-fun b!1306185 () Bool)

(declare-fun tp!380988 () Bool)

(declare-fun tp!380987 () Bool)

(assert (=> b!1306185 (= e!837581 (and tp!380988 tp!380987))))

(assert (=> b!1304868 (= tp!380789 e!837581)))

(declare-fun b!1306184 () Bool)

(assert (=> b!1306184 (= e!837581 tp_is_empty!6607)))

(assert (= (and b!1304868 ((_ is ElementMatch!3589) (regOne!7691 (regex!2275 (rule!4014 t1!34))))) b!1306184))

(assert (= (and b!1304868 ((_ is Concat!5955) (regOne!7691 (regex!2275 (rule!4014 t1!34))))) b!1306185))

(assert (= (and b!1304868 ((_ is Star!3589) (regOne!7691 (regex!2275 (rule!4014 t1!34))))) b!1306186))

(assert (= (and b!1304868 ((_ is Union!3589) (regOne!7691 (regex!2275 (rule!4014 t1!34))))) b!1306187))

(declare-fun b!1306191 () Bool)

(declare-fun e!837582 () Bool)

(declare-fun tp!380995 () Bool)

(declare-fun tp!380994 () Bool)

(assert (=> b!1306191 (= e!837582 (and tp!380995 tp!380994))))

(declare-fun b!1306190 () Bool)

(declare-fun tp!380991 () Bool)

(assert (=> b!1306190 (= e!837582 tp!380991)))

(declare-fun b!1306189 () Bool)

(declare-fun tp!380993 () Bool)

(declare-fun tp!380992 () Bool)

(assert (=> b!1306189 (= e!837582 (and tp!380993 tp!380992))))

(assert (=> b!1304868 (= tp!380788 e!837582)))

(declare-fun b!1306188 () Bool)

(assert (=> b!1306188 (= e!837582 tp_is_empty!6607)))

(assert (= (and b!1304868 ((_ is ElementMatch!3589) (regTwo!7691 (regex!2275 (rule!4014 t1!34))))) b!1306188))

(assert (= (and b!1304868 ((_ is Concat!5955) (regTwo!7691 (regex!2275 (rule!4014 t1!34))))) b!1306189))

(assert (= (and b!1304868 ((_ is Star!3589) (regTwo!7691 (regex!2275 (rule!4014 t1!34))))) b!1306190))

(assert (= (and b!1304868 ((_ is Union!3589) (regTwo!7691 (regex!2275 (rule!4014 t1!34))))) b!1306191))

(declare-fun b!1306195 () Bool)

(declare-fun e!837583 () Bool)

(declare-fun tp!381000 () Bool)

(declare-fun tp!380999 () Bool)

(assert (=> b!1306195 (= e!837583 (and tp!381000 tp!380999))))

(declare-fun b!1306194 () Bool)

(declare-fun tp!380996 () Bool)

(assert (=> b!1306194 (= e!837583 tp!380996)))

(declare-fun b!1306193 () Bool)

(declare-fun tp!380998 () Bool)

(declare-fun tp!380997 () Bool)

(assert (=> b!1306193 (= e!837583 (and tp!380998 tp!380997))))

(assert (=> b!1304867 (= tp!380785 e!837583)))

(declare-fun b!1306192 () Bool)

(assert (=> b!1306192 (= e!837583 tp_is_empty!6607)))

(assert (= (and b!1304867 ((_ is ElementMatch!3589) (reg!3918 (regex!2275 (rule!4014 t1!34))))) b!1306192))

(assert (= (and b!1304867 ((_ is Concat!5955) (reg!3918 (regex!2275 (rule!4014 t1!34))))) b!1306193))

(assert (= (and b!1304867 ((_ is Star!3589) (reg!3918 (regex!2275 (rule!4014 t1!34))))) b!1306194))

(assert (= (and b!1304867 ((_ is Union!3589) (reg!3918 (regex!2275 (rule!4014 t1!34))))) b!1306195))

(declare-fun b!1306199 () Bool)

(declare-fun e!837584 () Bool)

(declare-fun tp!381005 () Bool)

(declare-fun tp!381004 () Bool)

(assert (=> b!1306199 (= e!837584 (and tp!381005 tp!381004))))

(declare-fun b!1306198 () Bool)

(declare-fun tp!381001 () Bool)

(assert (=> b!1306198 (= e!837584 tp!381001)))

(declare-fun b!1306197 () Bool)

(declare-fun tp!381003 () Bool)

(declare-fun tp!381002 () Bool)

(assert (=> b!1306197 (= e!837584 (and tp!381003 tp!381002))))

(assert (=> b!1304872 (= tp!380794 e!837584)))

(declare-fun b!1306196 () Bool)

(assert (=> b!1306196 (= e!837584 tp_is_empty!6607)))

(assert (= (and b!1304872 ((_ is ElementMatch!3589) (regOne!7691 (regex!2275 (h!18559 rules!2550))))) b!1306196))

(assert (= (and b!1304872 ((_ is Concat!5955) (regOne!7691 (regex!2275 (h!18559 rules!2550))))) b!1306197))

(assert (= (and b!1304872 ((_ is Star!3589) (regOne!7691 (regex!2275 (h!18559 rules!2550))))) b!1306198))

(assert (= (and b!1304872 ((_ is Union!3589) (regOne!7691 (regex!2275 (h!18559 rules!2550))))) b!1306199))

(declare-fun b!1306203 () Bool)

(declare-fun e!837585 () Bool)

(declare-fun tp!381010 () Bool)

(declare-fun tp!381009 () Bool)

(assert (=> b!1306203 (= e!837585 (and tp!381010 tp!381009))))

(declare-fun b!1306202 () Bool)

(declare-fun tp!381006 () Bool)

(assert (=> b!1306202 (= e!837585 tp!381006)))

(declare-fun b!1306201 () Bool)

(declare-fun tp!381008 () Bool)

(declare-fun tp!381007 () Bool)

(assert (=> b!1306201 (= e!837585 (and tp!381008 tp!381007))))

(assert (=> b!1304872 (= tp!380793 e!837585)))

(declare-fun b!1306200 () Bool)

(assert (=> b!1306200 (= e!837585 tp_is_empty!6607)))

(assert (= (and b!1304872 ((_ is ElementMatch!3589) (regTwo!7691 (regex!2275 (h!18559 rules!2550))))) b!1306200))

(assert (= (and b!1304872 ((_ is Concat!5955) (regTwo!7691 (regex!2275 (h!18559 rules!2550))))) b!1306201))

(assert (= (and b!1304872 ((_ is Star!3589) (regTwo!7691 (regex!2275 (h!18559 rules!2550))))) b!1306202))

(assert (= (and b!1304872 ((_ is Union!3589) (regTwo!7691 (regex!2275 (h!18559 rules!2550))))) b!1306203))

(declare-fun b!1306206 () Bool)

(declare-fun b_free!31275 () Bool)

(declare-fun b_next!31979 () Bool)

(assert (=> b!1306206 (= b_free!31275 (not b_next!31979))))

(declare-fun tp!381012 () Bool)

(declare-fun b_and!87175 () Bool)

(assert (=> b!1306206 (= tp!381012 b_and!87175)))

(declare-fun b_free!31277 () Bool)

(declare-fun b_next!31981 () Bool)

(assert (=> b!1306206 (= b_free!31277 (not b_next!31981))))

(declare-fun tb!69653 () Bool)

(declare-fun t!117849 () Bool)

(assert (=> (and b!1306206 (= (toChars!3349 (transformation!2275 (h!18559 (t!117785 (t!117785 rules!2550))))) (toChars!3349 (transformation!2275 (rule!4014 t2!34)))) t!117849) tb!69653))

(declare-fun result!84498 () Bool)

(assert (= result!84498 result!84456))

(assert (=> d!367706 t!117849))

(declare-fun tb!69655 () Bool)

(declare-fun t!117851 () Bool)

(assert (=> (and b!1306206 (= (toChars!3349 (transformation!2275 (h!18559 (t!117785 (t!117785 rules!2550))))) (toChars!3349 (transformation!2275 (rule!4014 t1!34)))) t!117851) tb!69655))

(declare-fun result!84500 () Bool)

(assert (= result!84500 result!84464))

(assert (=> b!1304698 t!117851))

(assert (=> b!1304701 t!117849))

(assert (=> d!367756 t!117851))

(declare-fun b_and!87177 () Bool)

(declare-fun tp!381013 () Bool)

(assert (=> b!1306206 (= tp!381013 (and (=> t!117849 result!84498) (=> t!117851 result!84500) b_and!87177))))

(declare-fun e!837588 () Bool)

(assert (=> b!1306206 (= e!837588 (and tp!381012 tp!381013))))

(declare-fun b!1306205 () Bool)

(declare-fun e!837587 () Bool)

(declare-fun tp!381011 () Bool)

(assert (=> b!1306205 (= e!837587 (and tp!381011 (inv!17560 (tag!2537 (h!18559 (t!117785 (t!117785 rules!2550))))) (inv!17563 (transformation!2275 (h!18559 (t!117785 (t!117785 rules!2550))))) e!837588))))

(declare-fun b!1306204 () Bool)

(declare-fun e!837589 () Bool)

(declare-fun tp!381014 () Bool)

(assert (=> b!1306204 (= e!837589 (and e!837587 tp!381014))))

(assert (=> b!1304885 (= tp!380811 e!837589)))

(assert (= b!1306205 b!1306206))

(assert (= b!1306204 b!1306205))

(assert (= (and b!1304885 ((_ is Cons!13158) (t!117785 (t!117785 rules!2550)))) b!1306204))

(declare-fun m!1457971 () Bool)

(assert (=> b!1306205 m!1457971))

(declare-fun m!1457973 () Bool)

(assert (=> b!1306205 m!1457973))

(declare-fun b_lambda!37469 () Bool)

(assert (= b_lambda!37463 (or d!367668 b_lambda!37469)))

(declare-fun bs!329621 () Bool)

(declare-fun d!368426 () Bool)

(assert (= bs!329621 (and d!368426 d!367668)))

(assert (=> bs!329621 (= (dynLambda!5727 lambda!52034 (h!18561 lt!429017)) (not (dynLambda!5727 lambda!52008 (h!18561 lt!429017))))))

(declare-fun b_lambda!37493 () Bool)

(assert (=> (not b_lambda!37493) (not bs!329621)))

(declare-fun m!1457975 () Bool)

(assert (=> bs!329621 m!1457975))

(assert (=> b!1306070 d!368426))

(declare-fun b_lambda!37471 () Bool)

(assert (= b_lambda!37429 (or b!1304281 b_lambda!37471)))

(declare-fun bs!329622 () Bool)

(declare-fun d!368428 () Bool)

(assert (= bs!329622 (and d!368428 b!1304281)))

(assert (=> bs!329622 (= (dynLambda!5722 lambda!52007 (h!18559 (t!117785 rules!2550))) (regex!2275 (h!18559 (t!117785 rules!2550))))))

(assert (=> b!1305846 d!368428))

(declare-fun b_lambda!37473 () Bool)

(assert (= b_lambda!37401 (or d!367674 b_lambda!37473)))

(declare-fun bs!329623 () Bool)

(declare-fun d!368430 () Bool)

(assert (= bs!329623 (and d!368430 d!367674)))

(assert (=> bs!329623 (= (dynLambda!5727 lambda!52040 (h!18561 lt!429017)) (validRegex!1539 (h!18561 lt!429017)))))

(declare-fun m!1457977 () Bool)

(assert (=> bs!329623 m!1457977))

(assert (=> b!1305066 d!368430))

(declare-fun b_lambda!37475 () Bool)

(assert (= b_lambda!37467 (or b!1304301 b_lambda!37475)))

(declare-fun bs!329624 () Bool)

(declare-fun d!368432 () Bool)

(assert (= bs!329624 (and d!368432 b!1304301)))

(assert (=> bs!329624 (= (dynLambda!5728 lambda!52009 (h!18559 (t!117785 rules!2550))) (= (regex!2275 (h!18559 (t!117785 rules!2550))) lt!429016))))

(assert (=> b!1306097 d!368432))

(declare-fun b_lambda!37477 () Bool)

(assert (= b_lambda!37399 (or d!367688 b_lambda!37477)))

(declare-fun bs!329625 () Bool)

(declare-fun d!368434 () Bool)

(assert (= bs!329625 (and d!368434 d!367688)))

(assert (=> bs!329625 (= (dynLambda!5728 lambda!52047 (h!18559 rules!2550)) (not (dynLambda!5728 lambda!52009 (h!18559 rules!2550))))))

(declare-fun b_lambda!37495 () Bool)

(assert (=> (not b_lambda!37495) (not bs!329625)))

(assert (=> bs!329625 m!1456235))

(assert (=> b!1305029 d!368434))

(declare-fun b_lambda!37479 () Bool)

(assert (= b_lambda!37405 (or b!1304281 b_lambda!37479)))

(declare-fun bs!329626 () Bool)

(declare-fun d!368436 () Bool)

(assert (= bs!329626 (and d!368436 b!1304281)))

(declare-fun res!585528 () Bool)

(declare-fun e!837590 () Bool)

(assert (=> bs!329626 (=> (not res!585528) (not e!837590))))

(assert (=> bs!329626 (= res!585528 (validRegex!1539 lt!429231))))

(assert (=> bs!329626 (= (dynLambda!5727 lambda!52008 lt!429231) e!837590)))

(declare-fun b!1306207 () Bool)

(assert (=> b!1306207 (= e!837590 (matchR!1591 lt!429231 lt!429008))))

(assert (= (and bs!329626 res!585528) b!1306207))

(declare-fun m!1457979 () Bool)

(assert (=> bs!329626 m!1457979))

(declare-fun m!1457981 () Bool)

(assert (=> b!1306207 m!1457981))

(assert (=> d!367896 d!368436))

(declare-fun b_lambda!37481 () Bool)

(assert (= b_lambda!37403 (or b!1304281 b_lambda!37481)))

(declare-fun bs!329627 () Bool)

(declare-fun d!368438 () Bool)

(assert (= bs!329627 (and d!368438 b!1304281)))

(declare-fun res!585529 () Bool)

(declare-fun e!837591 () Bool)

(assert (=> bs!329627 (=> (not res!585529) (not e!837591))))

(assert (=> bs!329627 (= res!585529 (validRegex!1539 (h!18561 (t!117787 (map!2879 rules!2550 lambda!52007)))))))

(assert (=> bs!329627 (= (dynLambda!5727 lambda!52008 (h!18561 (t!117787 (map!2879 rules!2550 lambda!52007)))) e!837591)))

(declare-fun b!1306208 () Bool)

(assert (=> b!1306208 (= e!837591 (matchR!1591 (h!18561 (t!117787 (map!2879 rules!2550 lambda!52007))) lt!429008))))

(assert (= (and bs!329627 res!585529) b!1306208))

(declare-fun m!1457983 () Bool)

(assert (=> bs!329627 m!1457983))

(declare-fun m!1457985 () Bool)

(assert (=> b!1306208 m!1457985))

(assert (=> b!1305071 d!368438))

(declare-fun b_lambda!37483 () Bool)

(assert (= b_lambda!37413 (or d!367734 b_lambda!37483)))

(declare-fun bs!329628 () Bool)

(declare-fun d!368440 () Bool)

(assert (= bs!329628 (and d!368440 d!367734)))

(assert (=> bs!329628 (= (dynLambda!5728 lambda!52056 (h!18559 rules!2550)) (ruleValid!553 thiss!19762 (h!18559 rules!2550)))))

(assert (=> bs!329628 m!1456161))

(assert (=> b!1305453 d!368440))

(declare-fun b_lambda!37485 () Bool)

(assert (= b_lambda!37465 (or b!1304301 b_lambda!37485)))

(declare-fun bs!329629 () Bool)

(declare-fun d!368442 () Bool)

(assert (= bs!329629 (and d!368442 b!1304301)))

(assert (=> bs!329629 (= (dynLambda!5728 lambda!52009 lt!429778) (= (regex!2275 lt!429778) lt!429016))))

(assert (=> d!368408 d!368442))

(declare-fun b_lambda!37487 () Bool)

(assert (= b_lambda!37427 (or b!1304286 b_lambda!37487)))

(declare-fun bs!329630 () Bool)

(declare-fun d!368444 () Bool)

(assert (= bs!329630 (and d!368444 b!1304286)))

(declare-fun res!585530 () Bool)

(declare-fun e!837592 () Bool)

(assert (=> bs!329630 (=> (not res!585530) (not e!837592))))

(assert (=> bs!329630 (= res!585530 (matchR!1591 lt!429022 res!585416))))

(assert (=> bs!329630 (= (dynLambda!5718 lambda!52006 res!585416) e!837592)))

(declare-fun b!1306209 () Bool)

(assert (=> b!1306209 (= e!837592 (isPrefix!1064 lt!429015 res!585416))))

(assert (= (and bs!329630 res!585530) b!1306209))

(declare-fun m!1457987 () Bool)

(assert (=> bs!329630 m!1457987))

(declare-fun m!1457989 () Bool)

(assert (=> b!1306209 m!1457989))

(assert (=> d!368284 d!368444))

(declare-fun b_lambda!37489 () Bool)

(assert (= b_lambda!37407 (or d!367758 b_lambda!37489)))

(declare-fun bs!329631 () Bool)

(declare-fun d!368446 () Bool)

(assert (= bs!329631 (and d!368446 d!367758)))

(assert (=> bs!329631 (= (dynLambda!5722 lambda!52059 (h!18559 rules!2550)) (regex!2275 (h!18559 rules!2550)))))

(assert (=> b!1305115 d!368446))

(declare-fun b_lambda!37491 () Bool)

(assert (= b_lambda!37461 (or d!367670 b_lambda!37491)))

(declare-fun bs!329632 () Bool)

(declare-fun d!368448 () Bool)

(assert (= bs!329632 (and d!368448 d!367670)))

(assert (=> bs!329632 (= (dynLambda!5727 lambda!52035 (h!18561 (map!2879 rules!2550 lambda!52007))) (not (dynLambda!5727 lambda!52008 (h!18561 (map!2879 rules!2550 lambda!52007)))))))

(declare-fun b_lambda!37497 () Bool)

(assert (=> (not b_lambda!37497) (not bs!329632)))

(assert (=> bs!329632 m!1456131))

(assert (=> b!1306024 d!368448))

(check-sat (not d!367916) (not b!1306172) (not bm!89221) (not b!1306152) (not b!1305307) (not b_next!31955) (not d!368090) (not d!367878) b_and!87163 (not b!1306166) (not b!1305962) (not b_lambda!37373) (not d!368010) (not d!367898) (not d!367922) (not b!1306182) (not b!1305108) (not bm!89190) (not b!1305106) (not b!1305454) (not b!1305825) (not b!1305115) (not b!1306198) (not b_lambda!37383) (not b!1306042) (not b!1305405) (not b!1305258) (not b!1305487) (not b_lambda!37493) (not d!367934) (not b_lambda!37497) (not b!1305761) (not b!1305963) (not b!1305118) (not d!368280) (not b!1306194) (not bs!329627) (not b_lambda!37381) (not b!1305485) (not b!1306121) (not bm!89161) (not d!367948) (not b!1305276) (not d!368062) (not b!1306164) (not b!1306181) (not b!1306129) (not d!368364) (not b_next!31957) (not b_lambda!37375) (not b!1306063) (not b!1305166) (not b!1305828) (not d!368380) (not b!1305431) (not d!367874) (not b!1306171) (not b!1306118) (not b!1305392) (not bm!89159) (not d!368358) (not bm!89218) (not b!1305411) (not d!367914) (not b!1305473) (not d!367910) (not b!1305971) (not b!1306147) (not b!1305967) (not d!367930) (not b!1305069) (not b!1306128) (not b!1304647) (not bm!89186) (not b!1305331) (not b!1306085) (not b!1305328) (not b!1306162) (not d!368052) (not d!367936) (not d!368396) (not b_lambda!37485) (not b!1305110) (not b!1305757) (not b!1306175) (not b!1306174) (not b!1306155) (not b!1306173) (not b!1305461) (not b_lambda!37481) (not b!1306104) (not b!1305823) (not b_next!31961) (not b!1305459) (not b!1306205) (not b!1305984) (not bm!89217) (not b!1306170) (not b!1305852) (not b!1305822) (not d!367900) (not b!1306017) (not b!1305798) (not bs!329630) (not b!1305310) (not d!368356) (not bm!89185) (not b!1306201) (not b!1305756) (not b!1305486) (not bs!329623) (not b!1305389) (not b!1305824) (not b!1306062) (not b!1306092) (not d!368054) (not d!368080) (not b!1305293) (not b!1305895) (not d!368404) (not b!1305409) (not d!367896) b_and!87177 (not b!1306190) (not d!368418) (not d!367912) (not d!368066) (not d!368118) (not b!1306154) (not b!1305893) (not d!367908) (not d!368308) (not b!1305830) (not d!368102) (not b!1305391) (not b!1305466) (not b!1305393) (not b!1305821) (not b!1305221) (not d!368272) (not d!368420) (not b!1306127) (not d!368374) (not d!368402) (not b_next!31981) (not d!368382) (not b!1306151) (not b!1305981) (not b!1306029) (not bm!89160) (not b!1306030) (not b!1306168) (not b!1306014) (not d!368258) (not b_lambda!37371) (not b!1306031) (not b!1306032) (not b!1306163) (not b!1306183) b_and!87161 (not b!1305189) (not b_lambda!37491) (not d!368378) (not b!1306159) (not b!1305104) (not d!367884) (not b!1306156) (not b!1306139) (not b!1306179) (not d!368414) (not bm!89220) (not b!1305382) (not d!368316) (not b!1306187) b_and!87165 (not b!1306081) (not b!1306160) (not b!1305399) (not d!368370) (not d!367904) (not b!1305368) (not b!1305077) (not b!1306189) (not b!1306071) (not b!1305127) (not b!1306158) (not d!368286) (not b!1305327) (not b_lambda!37483) (not d!368360) b_and!87167 (not b!1306026) (not b!1305174) (not b!1306086) (not b_lambda!37379) (not b!1305894) (not b!1305804) (not bm!89228) (not b!1306084) (not b!1306103) (not b!1306125) (not d!368372) (not d!368408) (not b!1306117) (not b!1305319) (not b_next!31965) (not b!1305223) (not d!368016) b_and!87111 (not b!1305083) (not d!368096) b_and!87103 (not b!1306148) (not b!1306034) (not b!1306119) (not b!1306069) (not b!1306066) (not b!1306150) (not d!368008) (not b!1305844) (not d!367980) (not b!1305451) (not d!367890) (not b_lambda!37473) b_and!87107 (not d!368412) (not d!367974) (not b!1305202) (not d!368314) (not d!367880) (not b!1306089) (not b!1306096) (not d!368026) (not b_next!31971) (not d!368266) (not b!1306209) (not b!1306191) (not b_lambda!37471) (not b!1305999) (not b!1306124) (not d!367940) (not d!367918) (not b_lambda!37487) (not b!1306203) (not b!1305980) (not b!1305800) (not b!1305030) (not d!368304) (not b!1305316) (not b!1306099) (not bm!89227) (not d!368274) (not b!1305778) (not d!368104) (not bm!89182) (not d!368000) (not d!367998) (not bs!329626) (not b!1306178) (not b!1305846) (not b!1305977) (not b!1306088) (not d!368056) (not b!1305235) (not b!1306186) (not b!1305056) (not b!1306023) (not b!1306064) (not b_lambda!37479) (not b!1306036) (not d!368354) (not d!368022) (not d!368306) (not b!1305832) (not d!367882) (not b!1305314) (not b_lambda!37385) (not b!1306197) (not d!367906) (not b!1306061) (not b_lambda!37469) (not d!368072) (not b!1305489) (not b!1306199) (not d!368390) (not b!1306015) (not d!368094) (not b!1306001) (not b!1305462) (not b_lambda!37387) (not b!1305260) (not b!1305120) (not b!1306146) (not d!368376) (not b!1306020) (not d!368312) (not b!1305312) (not b!1306177) (not b!1305808) (not b!1305124) (not b!1305070) (not b!1305449) (not bm!89224) (not b!1305838) (not b!1304700) (not b!1306143) (not d!367932) (not b!1305187) (not b_next!31959) b_and!87175 (not b!1305463) (not b!1306142) (not b_lambda!37389) (not d!368394) (not b!1305758) (not b_next!31963) (not b!1306208) (not b!1305105) (not d!368060) (not b_lambda!37475) tp_is_empty!6607 (not d!368116) (not d!368278) (not b!1305450) (not b!1306094) (not b!1306202) (not b_lambda!37377) (not d!368282) (not b!1306065) (not b!1305457) (not b!1306138) (not b!1306067) (not b!1305826) (not d!367888) (not bm!89171) (not b!1305802) (not b!1306004) (not b!1305972) (not b!1306144) (not b!1305964) (not bs!329628) (not b!1306035) (not b!1305807) (not b!1306116) (not b!1306003) (not b!1305252) (not d!368276) (not b!1306021) (not d!368012) (not b_lambda!37489) (not b_next!31979) (not b!1305175) b_and!87169 (not bm!89177) (not b_lambda!37495) (not b_next!31973) (not b!1306185) (not b!1305067) (not b!1305193) (not b!1306087) (not bm!89175) (not b!1305075) (not d!368362) (not d!368344) (not b_lambda!37477) (not d!368398) (not b!1305975) (not b!1305123) (not b!1305315) (not b!1305979) (not b!1305113) (not b!1306167) (not b!1306016) (not b!1305122) (not b!1306193) (not d!368044) (not b!1305068) (not d!367920) (not d!368410) (not d!368406) (not b!1305992) (not b!1305190) (not b!1305430) (not d!367984) (not b!1305112) (not b!1306207) (not b!1306195) (not b!1306025) (not d!368386) (not b!1306204) (not b!1306123) (not b!1305997) (not b!1305491) (not b!1306140) (not bm!89173) (not b!1305493))
(check-sat (not b_next!31957) (not b_next!31961) b_and!87177 (not b_next!31981) b_and!87161 b_and!87165 b_and!87167 b_and!87107 (not b_next!31971) (not b_next!31963) (not b_next!31955) b_and!87163 b_and!87111 b_and!87103 (not b_next!31965) (not b_next!31959) b_and!87175 (not b_next!31979) b_and!87169 (not b_next!31973))

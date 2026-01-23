; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117734 () Bool)

(assert start!117734)

(declare-fun b!1324130 () Bool)

(declare-fun b_free!31915 () Bool)

(declare-fun b_next!32619 () Bool)

(assert (=> b!1324130 (= b_free!31915 (not b_next!32619))))

(declare-fun tp!384093 () Bool)

(declare-fun b_and!88439 () Bool)

(assert (=> b!1324130 (= tp!384093 b_and!88439)))

(declare-fun b_free!31917 () Bool)

(declare-fun b_next!32621 () Bool)

(assert (=> b!1324130 (= b_free!31917 (not b_next!32621))))

(declare-fun tp!384096 () Bool)

(declare-fun b_and!88441 () Bool)

(assert (=> b!1324130 (= tp!384096 b_and!88441)))

(declare-fun b!1324148 () Bool)

(declare-fun b_free!31919 () Bool)

(declare-fun b_next!32623 () Bool)

(assert (=> b!1324148 (= b_free!31919 (not b_next!32623))))

(declare-fun tp!384098 () Bool)

(declare-fun b_and!88443 () Bool)

(assert (=> b!1324148 (= tp!384098 b_and!88443)))

(declare-fun b_free!31921 () Bool)

(declare-fun b_next!32625 () Bool)

(assert (=> b!1324148 (= b_free!31921 (not b_next!32625))))

(declare-fun tp!384089 () Bool)

(declare-fun b_and!88445 () Bool)

(assert (=> b!1324148 (= tp!384089 b_and!88445)))

(declare-fun b!1324146 () Bool)

(declare-fun b_free!31923 () Bool)

(declare-fun b_next!32627 () Bool)

(assert (=> b!1324146 (= b_free!31923 (not b_next!32627))))

(declare-fun tp!384088 () Bool)

(declare-fun b_and!88447 () Bool)

(assert (=> b!1324146 (= tp!384088 b_and!88447)))

(declare-fun b_free!31925 () Bool)

(declare-fun b_next!32629 () Bool)

(assert (=> b!1324146 (= b_free!31925 (not b_next!32629))))

(declare-fun tp!384087 () Bool)

(declare-fun b_and!88449 () Bool)

(assert (=> b!1324146 (= tp!384087 b_and!88449)))

(declare-fun b!1324140 () Bool)

(assert (=> b!1324140 true))

(assert (=> b!1324140 true))

(declare-fun b!1324166 () Bool)

(assert (=> b!1324166 true))

(declare-fun b!1324157 () Bool)

(assert (=> b!1324157 true))

(declare-fun bs!331288 () Bool)

(declare-fun b!1324168 () Bool)

(assert (= bs!331288 (and b!1324168 b!1324157)))

(declare-fun lambda!54361 () Int)

(declare-fun lambda!54360 () Int)

(assert (=> bs!331288 (not (= lambda!54361 lambda!54360))))

(assert (=> b!1324168 true))

(declare-fun tp!384095 () Bool)

(declare-datatypes ((List!13480 0))(
  ( (Nil!13414) (Cons!13414 (h!18815 (_ BitVec 16)) (t!118745 List!13480)) )
))
(declare-datatypes ((TokenValue!2411 0))(
  ( (FloatLiteralValue!4822 (text!17322 List!13480)) (TokenValueExt!2410 (__x!8651 Int)) (Broken!12055 (value!75755 List!13480)) (Object!2476) (End!2411) (Def!2411) (Underscore!2411) (Match!2411) (Else!2411) (Error!2411) (Case!2411) (If!2411) (Extends!2411) (Abstract!2411) (Class!2411) (Val!2411) (DelimiterValue!4822 (del!2471 List!13480)) (KeywordValue!2417 (value!75756 List!13480)) (CommentValue!4822 (value!75757 List!13480)) (WhitespaceValue!4822 (value!75758 List!13480)) (IndentationValue!2411 (value!75759 List!13480)) (String!16290) (Int32!2411) (Broken!12056 (value!75760 List!13480)) (Boolean!2412) (Unit!19489) (OperatorValue!2414 (op!2471 List!13480)) (IdentifierValue!4822 (value!75761 List!13480)) (IdentifierValue!4823 (value!75762 List!13480)) (WhitespaceValue!4823 (value!75763 List!13480)) (True!4822) (False!4822) (Broken!12057 (value!75764 List!13480)) (Broken!12058 (value!75765 List!13480)) (True!4823) (RightBrace!2411) (RightBracket!2411) (Colon!2411) (Null!2411) (Comma!2411) (LeftBracket!2411) (False!4823) (LeftBrace!2411) (ImaginaryLiteralValue!2411 (text!17323 List!13480)) (StringLiteralValue!7233 (value!75766 List!13480)) (EOFValue!2411 (value!75767 List!13480)) (IdentValue!2411 (value!75768 List!13480)) (DelimiterValue!4823 (value!75769 List!13480)) (DedentValue!2411 (value!75770 List!13480)) (NewLineValue!2411 (value!75771 List!13480)) (IntegerValue!7233 (value!75772 (_ BitVec 32)) (text!17324 List!13480)) (IntegerValue!7234 (value!75773 Int) (text!17325 List!13480)) (Times!2411) (Or!2411) (Equal!2411) (Minus!2411) (Broken!12059 (value!75774 List!13480)) (And!2411) (Div!2411) (LessEqual!2411) (Mod!2411) (Concat!6046) (Not!2411) (Plus!2411) (SpaceValue!2411 (value!75775 List!13480)) (IntegerValue!7235 (value!75776 Int) (text!17326 List!13480)) (StringLiteralValue!7234 (text!17327 List!13480)) (FloatLiteralValue!4823 (text!17328 List!13480)) (BytesLiteralValue!2411 (value!75777 List!13480)) (CommentValue!4823 (value!75778 List!13480)) (StringLiteralValue!7235 (value!75779 List!13480)) (ErrorTokenValue!2411 (msg!2472 List!13480)) )
))
(declare-datatypes ((C!7560 0))(
  ( (C!7561 (val!4340 Int)) )
))
(declare-datatypes ((List!13481 0))(
  ( (Nil!13415) (Cons!13415 (h!18816 C!7560) (t!118746 List!13481)) )
))
(declare-datatypes ((IArray!8829 0))(
  ( (IArray!8830 (innerList!4472 List!13481)) )
))
(declare-datatypes ((Conc!4412 0))(
  ( (Node!4412 (left!11522 Conc!4412) (right!11852 Conc!4412) (csize!9054 Int) (cheight!4623 Int)) (Leaf!6769 (xs!7127 IArray!8829) (csize!9055 Int)) (Empty!4412) )
))
(declare-datatypes ((BalanceConc!8764 0))(
  ( (BalanceConc!8765 (c!217316 Conc!4412)) )
))
(declare-datatypes ((String!16291 0))(
  ( (String!16292 (value!75780 String)) )
))
(declare-datatypes ((Regex!3635 0))(
  ( (ElementMatch!3635 (c!217317 C!7560)) (Concat!6047 (regOne!7782 Regex!3635) (regTwo!7782 Regex!3635)) (EmptyExpr!3635) (Star!3635 (reg!3964 Regex!3635)) (EmptyLang!3635) (Union!3635 (regOne!7783 Regex!3635) (regTwo!7783 Regex!3635)) )
))
(declare-datatypes ((TokenValueInjection!4482 0))(
  ( (TokenValueInjection!4483 (toValue!3552 Int) (toChars!3411 Int)) )
))
(declare-datatypes ((Rule!4442 0))(
  ( (Rule!4443 (regex!2321 Regex!3635) (tag!2583 String!16291) (isSeparator!2321 Bool) (transformation!2321 TokenValueInjection!4482)) )
))
(declare-datatypes ((Token!4304 0))(
  ( (Token!4305 (value!75781 TokenValue!2411) (rule!4066 Rule!4442) (size!10936 Int) (originalCharacters!3183 List!13481)) )
))
(declare-fun t1!34 () Token!4304)

(declare-fun e!848465 () Bool)

(declare-fun e!848467 () Bool)

(declare-fun b!1324125 () Bool)

(declare-fun inv!17785 (String!16291) Bool)

(declare-fun inv!17788 (TokenValueInjection!4482) Bool)

(assert (=> b!1324125 (= e!848465 (and tp!384095 (inv!17785 (tag!2583 (rule!4066 t1!34))) (inv!17788 (transformation!2321 (rule!4066 t1!34))) e!848467))))

(declare-fun b!1324126 () Bool)

(declare-fun res!595563 () Bool)

(declare-fun e!848477 () Bool)

(assert (=> b!1324126 (=> res!595563 e!848477)))

(declare-fun t2!34 () Token!4304)

(declare-fun lt!437314 () List!13481)

(declare-fun matchR!1637 (Regex!3635 List!13481) Bool)

(assert (=> b!1324126 (= res!595563 (not (matchR!1637 (regex!2321 (rule!4066 t2!34)) lt!437314)))))

(declare-fun b!1324127 () Bool)

(declare-fun res!595545 () Bool)

(declare-fun e!848457 () Bool)

(assert (=> b!1324127 (=> res!595545 e!848457)))

(declare-fun lt!437324 () BalanceConc!8764)

(declare-datatypes ((LexerInterface!2016 0))(
  ( (LexerInterfaceExt!2013 (__x!8652 Int)) (Lexer!2014) )
))
(declare-fun thiss!19762 () LexerInterface!2016)

(declare-datatypes ((List!13482 0))(
  ( (Nil!13416) (Cons!13416 (h!18817 Token!4304) (t!118747 List!13482)) )
))
(declare-fun lt!437320 () List!13482)

(declare-datatypes ((List!13483 0))(
  ( (Nil!13417) (Cons!13417 (h!18818 Rule!4442) (t!118748 List!13483)) )
))
(declare-fun rules!2550 () List!13483)

(declare-datatypes ((tuple2!13046 0))(
  ( (tuple2!13047 (_1!7409 List!13482) (_2!7409 List!13481)) )
))
(declare-fun lexList!554 (LexerInterface!2016 List!13483 List!13481) tuple2!13046)

(declare-fun list!5074 (BalanceConc!8764) List!13481)

(assert (=> b!1324127 (= res!595545 (not (= (lexList!554 thiss!19762 rules!2550 (list!5074 lt!437324)) (tuple2!13047 lt!437320 Nil!13415))))))

(declare-fun b!1324128 () Bool)

(declare-fun res!595543 () Bool)

(declare-fun e!848461 () Bool)

(assert (=> b!1324128 (=> res!595543 e!848461)))

(declare-fun lt!437316 () List!13481)

(declare-fun lt!437302 () C!7560)

(declare-fun contains!2379 (List!13481 C!7560) Bool)

(assert (=> b!1324128 (= res!595543 (not (contains!2379 lt!437316 lt!437302)))))

(declare-fun b!1324129 () Bool)

(declare-datatypes ((Unit!19490 0))(
  ( (Unit!19491) )
))
(declare-fun e!848456 () Unit!19490)

(declare-fun Unit!19492 () Unit!19490)

(assert (=> b!1324129 (= e!848456 Unit!19492)))

(declare-fun lt!437309 () Unit!19490)

(declare-fun lt!437301 () List!13481)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!132 (Regex!3635 List!13481 C!7560) Unit!19490)

(declare-fun head!2308 (List!13481) C!7560)

(assert (=> b!1324129 (= lt!437309 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!132 (regex!2321 (rule!4066 t1!34)) lt!437301 (head!2308 lt!437301)))))

(assert (=> b!1324129 false))

(declare-fun e!848470 () Bool)

(assert (=> b!1324130 (= e!848470 (and tp!384093 tp!384096))))

(declare-fun b!1324131 () Bool)

(declare-fun res!595552 () Bool)

(declare-fun e!848474 () Bool)

(assert (=> b!1324131 (=> res!595552 e!848474)))

(declare-fun lt!437327 () List!13482)

(declare-fun lt!437304 () BalanceConc!8764)

(assert (=> b!1324131 (= res!595552 (not (= (lexList!554 thiss!19762 rules!2550 (list!5074 lt!437304)) (tuple2!13047 lt!437327 Nil!13415))))))

(declare-fun res!595566 () Bool)

(declare-fun e!848452 () Bool)

(assert (=> start!117734 (=> (not res!595566) (not e!848452))))

(get-info :version)

(assert (=> start!117734 (= res!595566 ((_ is Lexer!2014) thiss!19762))))

(assert (=> start!117734 e!848452))

(assert (=> start!117734 true))

(declare-fun e!848476 () Bool)

(assert (=> start!117734 e!848476))

(declare-fun e!848463 () Bool)

(declare-fun inv!17789 (Token!4304) Bool)

(assert (=> start!117734 (and (inv!17789 t1!34) e!848463)))

(declare-fun e!848460 () Bool)

(assert (=> start!117734 (and (inv!17789 t2!34) e!848460)))

(declare-fun b!1324132 () Bool)

(declare-fun e!848450 () Bool)

(assert (=> b!1324132 (= e!848457 e!848450)))

(declare-fun res!595556 () Bool)

(assert (=> b!1324132 (=> res!595556 e!848450)))

(declare-datatypes ((tuple2!13048 0))(
  ( (tuple2!13049 (_1!7410 Token!4304) (_2!7410 List!13481)) )
))
(declare-datatypes ((Option!2592 0))(
  ( (None!2591) (Some!2591 (v!21188 tuple2!13048)) )
))
(declare-fun maxPrefix!1026 (LexerInterface!2016 List!13483 List!13481) Option!2592)

(assert (=> b!1324132 (= res!595556 (not (= (maxPrefix!1026 thiss!19762 rules!2550 lt!437314) (Some!2591 (tuple2!13049 t2!34 Nil!13415)))))))

(declare-fun lt!437307 () BalanceConc!8764)

(assert (=> b!1324132 (= lt!437314 (list!5074 lt!437307))))

(declare-fun b!1324133 () Bool)

(declare-fun tp!384097 () Bool)

(declare-fun e!848475 () Bool)

(declare-fun e!848451 () Bool)

(assert (=> b!1324133 (= e!848451 (and tp!384097 (inv!17785 (tag!2583 (h!18818 rules!2550))) (inv!17788 (transformation!2321 (h!18818 rules!2550))) e!848475))))

(declare-fun b!1324134 () Bool)

(declare-fun e!848472 () Bool)

(declare-fun e!848468 () Bool)

(assert (=> b!1324134 (= e!848472 e!848468)))

(declare-fun res!595544 () Bool)

(assert (=> b!1324134 (=> res!595544 e!848468)))

(declare-fun lambda!54358 () Int)

(declare-fun lt!437300 () Regex!3635)

(declare-datatypes ((List!13484 0))(
  ( (Nil!13418) (Cons!13418 (h!18819 Regex!3635) (t!118749 List!13484)) )
))
(declare-fun contains!2380 (List!13484 Regex!3635) Bool)

(declare-fun map!2948 (List!13483 Int) List!13484)

(assert (=> b!1324134 (= res!595544 (not (contains!2380 (map!2948 rules!2550 lambda!54358) lt!437300)))))

(declare-fun lambda!54359 () Int)

(declare-fun getWitness!236 (List!13484 Int) Regex!3635)

(assert (=> b!1324134 (= lt!437300 (getWitness!236 (map!2948 rules!2550 lambda!54358) lambda!54359))))

(declare-fun b!1324135 () Bool)

(declare-fun e!848473 () Bool)

(assert (=> b!1324135 (= e!848473 e!848461)))

(declare-fun res!595564 () Bool)

(assert (=> b!1324135 (=> res!595564 e!848461)))

(declare-fun lt!437312 () List!13481)

(assert (=> b!1324135 (= res!595564 (not (contains!2379 lt!437312 lt!437302)))))

(declare-fun lt!437305 () BalanceConc!8764)

(declare-fun apply!3091 (BalanceConc!8764 Int) C!7560)

(assert (=> b!1324135 (= lt!437302 (apply!3091 lt!437305 0))))

(declare-fun b!1324136 () Bool)

(declare-fun res!595567 () Bool)

(assert (=> b!1324136 (=> res!595567 e!848461)))

(declare-fun lt!437311 () Regex!3635)

(assert (=> b!1324136 (= res!595567 (not (matchR!1637 lt!437311 lt!437316)))))

(declare-fun b!1324137 () Bool)

(declare-fun e!848464 () Bool)

(assert (=> b!1324137 (= e!848452 e!848464)))

(declare-fun res!595547 () Bool)

(assert (=> b!1324137 (=> (not res!595547) (not e!848464))))

(declare-fun lt!437308 () Int)

(assert (=> b!1324137 (= res!595547 (> lt!437308 0))))

(declare-fun size!10937 (BalanceConc!8764) Int)

(assert (=> b!1324137 (= lt!437308 (size!10937 lt!437307))))

(declare-fun charsOf!1293 (Token!4304) BalanceConc!8764)

(assert (=> b!1324137 (= lt!437307 (charsOf!1293 t2!34))))

(declare-fun b!1324138 () Bool)

(declare-fun res!595553 () Bool)

(assert (=> b!1324138 (=> (not res!595553) (not e!848452))))

(declare-fun rulesProduceIndividualToken!985 (LexerInterface!2016 List!13483 Token!4304) Bool)

(assert (=> b!1324138 (= res!595553 (rulesProduceIndividualToken!985 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1324139 () Bool)

(declare-fun res!595572 () Bool)

(assert (=> b!1324139 (=> (not res!595572) (not e!848452))))

(assert (=> b!1324139 (= res!595572 (not (= (isSeparator!2321 (rule!4066 t1!34)) (isSeparator!2321 (rule!4066 t2!34)))))))

(declare-fun e!848459 () Bool)

(declare-fun e!848455 () Bool)

(assert (=> b!1324140 (= e!848459 (not e!848455))))

(declare-fun res!595546 () Bool)

(assert (=> b!1324140 (=> res!595546 e!848455)))

(declare-fun lambda!54357 () Int)

(declare-fun Exists!793 (Int) Bool)

(assert (=> b!1324140 (= res!595546 (not (Exists!793 lambda!54357)))))

(assert (=> b!1324140 (Exists!793 lambda!54357)))

(declare-fun lt!437328 () Unit!19490)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!111 (Regex!3635 List!13481) Unit!19490)

(assert (=> b!1324140 (= lt!437328 (lemmaPrefixMatchThenExistsStringThatMatches!111 lt!437311 lt!437312))))

(declare-fun b!1324141 () Bool)

(declare-fun res!595568 () Bool)

(assert (=> b!1324141 (=> res!595568 e!848474)))

(assert (=> b!1324141 (= res!595568 (not (= (maxPrefix!1026 thiss!19762 rules!2550 lt!437301) (Some!2591 (tuple2!13049 t1!34 Nil!13415)))))))

(declare-fun b!1324142 () Bool)

(declare-fun e!848478 () Bool)

(assert (=> b!1324142 (= e!848477 e!848478)))

(declare-fun res!595557 () Bool)

(assert (=> b!1324142 (=> res!595557 e!848478)))

(declare-fun lt!437303 () Bool)

(assert (=> b!1324142 (= res!595557 lt!437303)))

(declare-fun lt!437325 () Unit!19490)

(assert (=> b!1324142 (= lt!437325 e!848456)))

(declare-fun c!217315 () Bool)

(assert (=> b!1324142 (= c!217315 lt!437303)))

(declare-fun usedCharacters!186 (Regex!3635) List!13481)

(assert (=> b!1324142 (= lt!437303 (not (contains!2379 (usedCharacters!186 (regex!2321 (rule!4066 t1!34))) lt!437302)))))

(declare-fun b!1324143 () Bool)

(declare-fun res!595571 () Bool)

(assert (=> b!1324143 (=> res!595571 e!848450)))

(declare-fun contains!2381 (List!13483 Rule!4442) Bool)

(assert (=> b!1324143 (= res!595571 (not (contains!2381 rules!2550 (rule!4066 t2!34))))))

(declare-fun tp!384091 () Bool)

(declare-fun b!1324144 () Bool)

(declare-fun inv!21 (TokenValue!2411) Bool)

(assert (=> b!1324144 (= e!848463 (and (inv!21 (value!75781 t1!34)) e!848465 tp!384091))))

(declare-fun b!1324145 () Bool)

(declare-fun res!595548 () Bool)

(assert (=> b!1324145 (=> res!595548 e!848474)))

(declare-datatypes ((IArray!8831 0))(
  ( (IArray!8832 (innerList!4473 List!13482)) )
))
(declare-datatypes ((Conc!4413 0))(
  ( (Node!4413 (left!11523 Conc!4413) (right!11853 Conc!4413) (csize!9056 Int) (cheight!4624 Int)) (Leaf!6770 (xs!7128 IArray!8831) (csize!9057 Int)) (Empty!4413) )
))
(declare-datatypes ((BalanceConc!8766 0))(
  ( (BalanceConc!8767 (c!217318 Conc!4413)) )
))
(declare-datatypes ((tuple2!13050 0))(
  ( (tuple2!13051 (_1!7411 BalanceConc!8766) (_2!7411 BalanceConc!8764)) )
))
(declare-fun lt!437322 () tuple2!13050)

(declare-fun isEmpty!7988 (BalanceConc!8764) Bool)

(assert (=> b!1324145 (= res!595548 (not (isEmpty!7988 (_2!7411 lt!437322))))))

(assert (=> b!1324146 (= e!848475 (and tp!384088 tp!384087))))

(declare-fun b!1324147 () Bool)

(declare-fun res!595559 () Bool)

(assert (=> b!1324147 (=> (not res!595559) (not e!848452))))

(declare-fun isEmpty!7989 (List!13483) Bool)

(assert (=> b!1324147 (= res!595559 (not (isEmpty!7989 rules!2550)))))

(assert (=> b!1324148 (= e!848467 (and tp!384098 tp!384089))))

(declare-fun b!1324149 () Bool)

(declare-fun res!595540 () Bool)

(assert (=> b!1324149 (=> res!595540 e!848461)))

(declare-fun lt!437310 () C!7560)

(assert (=> b!1324149 (= res!595540 (not (contains!2379 lt!437316 lt!437310)))))

(declare-fun b!1324150 () Bool)

(declare-fun res!595542 () Bool)

(assert (=> b!1324150 (=> (not res!595542) (not e!848464))))

(declare-fun sepAndNonSepRulesDisjointChars!694 (List!13483 List!13483) Bool)

(assert (=> b!1324150 (= res!595542 (sepAndNonSepRulesDisjointChars!694 rules!2550 rules!2550))))

(declare-fun b!1324151 () Bool)

(declare-fun e!848466 () Bool)

(assert (=> b!1324151 (= e!848466 e!848474)))

(declare-fun res!595560 () Bool)

(assert (=> b!1324151 (=> res!595560 e!848474)))

(declare-fun list!5075 (BalanceConc!8766) List!13482)

(assert (=> b!1324151 (= res!595560 (not (= (list!5075 (_1!7411 lt!437322)) lt!437327)))))

(assert (=> b!1324151 (= lt!437327 (Cons!13416 t1!34 Nil!13416))))

(declare-fun lex!851 (LexerInterface!2016 List!13483 BalanceConc!8764) tuple2!13050)

(assert (=> b!1324151 (= lt!437322 (lex!851 thiss!19762 rules!2550 lt!437304))))

(declare-fun print!790 (LexerInterface!2016 BalanceConc!8766) BalanceConc!8764)

(declare-fun singletonSeq!910 (Token!4304) BalanceConc!8766)

(assert (=> b!1324151 (= lt!437304 (print!790 thiss!19762 (singletonSeq!910 t1!34)))))

(declare-fun lt!437313 () Rule!4442)

(declare-fun getWitness!237 (List!13483 Int) Rule!4442)

(assert (=> b!1324151 (= lt!437313 (getWitness!237 rules!2550 lambda!54360))))

(declare-fun b!1324152 () Bool)

(declare-fun res!595565 () Bool)

(assert (=> b!1324152 (=> res!595565 e!848461)))

(assert (=> b!1324152 (= res!595565 (not (contains!2379 lt!437312 lt!437310)))))

(declare-fun b!1324153 () Bool)

(declare-fun res!595562 () Bool)

(assert (=> b!1324153 (=> res!595562 e!848457)))

(declare-fun lt!437318 () tuple2!13050)

(assert (=> b!1324153 (= res!595562 (not (isEmpty!7988 (_2!7411 lt!437318))))))

(declare-fun b!1324154 () Bool)

(assert (=> b!1324154 (= e!848474 e!848457)))

(declare-fun res!595561 () Bool)

(assert (=> b!1324154 (=> res!595561 e!848457)))

(assert (=> b!1324154 (= res!595561 (not (= (list!5075 (_1!7411 lt!437318)) lt!437320)))))

(assert (=> b!1324154 (= lt!437320 (Cons!13416 t2!34 Nil!13416))))

(assert (=> b!1324154 (= lt!437318 (lex!851 thiss!19762 rules!2550 lt!437324))))

(assert (=> b!1324154 (= lt!437324 (print!790 thiss!19762 (singletonSeq!910 t2!34)))))

(declare-fun b!1324155 () Bool)

(assert (=> b!1324155 (= e!848464 e!848459)))

(declare-fun res!595549 () Bool)

(assert (=> b!1324155 (=> (not res!595549) (not e!848459))))

(declare-fun prefixMatch!148 (Regex!3635 List!13481) Bool)

(assert (=> b!1324155 (= res!595549 (prefixMatch!148 lt!437311 lt!437312))))

(declare-fun rulesRegex!206 (LexerInterface!2016 List!13483) Regex!3635)

(assert (=> b!1324155 (= lt!437311 (rulesRegex!206 thiss!19762 rules!2550))))

(declare-fun ++!3428 (List!13481 List!13481) List!13481)

(assert (=> b!1324155 (= lt!437312 (++!3428 lt!437301 (Cons!13415 lt!437310 Nil!13415)))))

(assert (=> b!1324155 (= lt!437310 (apply!3091 lt!437307 0))))

(assert (=> b!1324155 (= lt!437301 (list!5074 lt!437305))))

(assert (=> b!1324155 (= lt!437305 (charsOf!1293 t1!34))))

(declare-fun b!1324156 () Bool)

(assert (=> b!1324156 (= e!848478 (< 0 lt!437308))))

(declare-fun lt!437319 () List!13481)

(assert (=> b!1324156 (= lt!437319 (usedCharacters!186 (regex!2321 (rule!4066 t2!34))))))

(assert (=> b!1324157 (= e!848468 e!848466)))

(declare-fun res!595541 () Bool)

(assert (=> b!1324157 (=> res!595541 e!848466)))

(declare-fun exists!344 (List!13483 Int) Bool)

(assert (=> b!1324157 (= res!595541 (not (exists!344 rules!2550 lambda!54360)))))

(assert (=> b!1324157 (exists!344 rules!2550 lambda!54360)))

(declare-fun lt!437323 () Unit!19490)

(declare-fun lemmaMapContains!64 (List!13483 Int Regex!3635) Unit!19490)

(assert (=> b!1324157 (= lt!437323 (lemmaMapContains!64 rules!2550 lambda!54358 lt!437300))))

(declare-fun b!1324158 () Bool)

(declare-fun res!595569 () Bool)

(assert (=> b!1324158 (=> res!595569 e!848474)))

(assert (=> b!1324158 (= res!595569 (not (contains!2381 rules!2550 (rule!4066 t1!34))))))

(declare-fun b!1324159 () Bool)

(declare-fun e!848458 () Bool)

(declare-fun tp!384090 () Bool)

(assert (=> b!1324159 (= e!848458 (and tp!384090 (inv!17785 (tag!2583 (rule!4066 t2!34))) (inv!17788 (transformation!2321 (rule!4066 t2!34))) e!848470))))

(declare-fun b!1324160 () Bool)

(declare-fun Unit!19493 () Unit!19490)

(assert (=> b!1324160 (= e!848456 Unit!19493)))

(declare-fun b!1324161 () Bool)

(declare-fun tp!384094 () Bool)

(assert (=> b!1324161 (= e!848460 (and (inv!21 (value!75781 t2!34)) e!848458 tp!384094))))

(declare-fun b!1324162 () Bool)

(declare-fun res!595550 () Bool)

(assert (=> b!1324162 (=> (not res!595550) (not e!848452))))

(assert (=> b!1324162 (= res!595550 (rulesProduceIndividualToken!985 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1324163 () Bool)

(declare-fun res!595551 () Bool)

(assert (=> b!1324163 (=> (not res!595551) (not e!848452))))

(declare-fun rulesInvariant!1886 (LexerInterface!2016 List!13483) Bool)

(assert (=> b!1324163 (= res!595551 (rulesInvariant!1886 thiss!19762 rules!2550))))

(declare-fun b!1324164 () Bool)

(declare-fun res!595570 () Bool)

(assert (=> b!1324164 (=> res!595570 e!848450)))

(assert (=> b!1324164 (= res!595570 (not (contains!2381 rules!2550 lt!437313)))))

(declare-fun b!1324165 () Bool)

(declare-fun res!595554 () Bool)

(assert (=> b!1324165 (=> (not res!595554) (not e!848464))))

(declare-fun separableTokensPredicate!299 (LexerInterface!2016 Token!4304 Token!4304 List!13483) Bool)

(assert (=> b!1324165 (= res!595554 (not (separableTokensPredicate!299 thiss!19762 t1!34 t2!34 rules!2550)))))

(assert (=> b!1324166 (= e!848461 e!848472)))

(declare-fun res!595558 () Bool)

(assert (=> b!1324166 (=> res!595558 e!848472)))

(declare-fun exists!345 (List!13484 Int) Bool)

(assert (=> b!1324166 (= res!595558 (not (exists!345 (map!2948 rules!2550 lambda!54358) lambda!54359)))))

(declare-fun lt!437317 () List!13484)

(assert (=> b!1324166 (exists!345 lt!437317 lambda!54359)))

(declare-fun lt!437315 () Unit!19490)

(declare-fun matchRGenUnionSpec!72 (Regex!3635 List!13484 List!13481) Unit!19490)

(assert (=> b!1324166 (= lt!437315 (matchRGenUnionSpec!72 lt!437311 lt!437317 lt!437316))))

(assert (=> b!1324166 (= lt!437317 (map!2948 rules!2550 lambda!54358))))

(declare-fun b!1324167 () Bool)

(declare-fun tp!384092 () Bool)

(assert (=> b!1324167 (= e!848476 (and e!848451 tp!384092))))

(assert (=> b!1324168 (= e!848450 e!848477)))

(declare-fun res!595555 () Bool)

(assert (=> b!1324168 (=> res!595555 e!848477)))

(assert (=> b!1324168 (= res!595555 (not (matchR!1637 (regex!2321 (rule!4066 t1!34)) lt!437301)))))

(declare-fun lt!437321 () Unit!19490)

(declare-fun forallContained!572 (List!13483 Int Rule!4442) Unit!19490)

(assert (=> b!1324168 (= lt!437321 (forallContained!572 rules!2550 lambda!54361 (rule!4066 t2!34)))))

(declare-fun lt!437326 () Unit!19490)

(assert (=> b!1324168 (= lt!437326 (forallContained!572 rules!2550 lambda!54361 (rule!4066 t1!34)))))

(declare-fun lt!437306 () Unit!19490)

(assert (=> b!1324168 (= lt!437306 (forallContained!572 rules!2550 lambda!54361 lt!437313))))

(declare-fun b!1324169 () Bool)

(assert (=> b!1324169 (= e!848455 e!848473)))

(declare-fun res!595573 () Bool)

(assert (=> b!1324169 (=> res!595573 e!848473)))

(declare-fun getSuffix!491 (List!13481 List!13481) List!13481)

(assert (=> b!1324169 (= res!595573 (not (= lt!437316 (++!3428 lt!437312 (getSuffix!491 lt!437316 lt!437312)))))))

(declare-fun pickWitness!98 (Int) List!13481)

(assert (=> b!1324169 (= lt!437316 (pickWitness!98 lambda!54357))))

(assert (= (and start!117734 res!595566) b!1324147))

(assert (= (and b!1324147 res!595559) b!1324163))

(assert (= (and b!1324163 res!595551) b!1324162))

(assert (= (and b!1324162 res!595550) b!1324138))

(assert (= (and b!1324138 res!595553) b!1324139))

(assert (= (and b!1324139 res!595572) b!1324137))

(assert (= (and b!1324137 res!595547) b!1324150))

(assert (= (and b!1324150 res!595542) b!1324165))

(assert (= (and b!1324165 res!595554) b!1324155))

(assert (= (and b!1324155 res!595549) b!1324140))

(assert (= (and b!1324140 (not res!595546)) b!1324169))

(assert (= (and b!1324169 (not res!595573)) b!1324135))

(assert (= (and b!1324135 (not res!595564)) b!1324128))

(assert (= (and b!1324128 (not res!595543)) b!1324152))

(assert (= (and b!1324152 (not res!595565)) b!1324149))

(assert (= (and b!1324149 (not res!595540)) b!1324136))

(assert (= (and b!1324136 (not res!595567)) b!1324166))

(assert (= (and b!1324166 (not res!595558)) b!1324134))

(assert (= (and b!1324134 (not res!595544)) b!1324157))

(assert (= (and b!1324157 (not res!595541)) b!1324151))

(assert (= (and b!1324151 (not res!595560)) b!1324145))

(assert (= (and b!1324145 (not res!595548)) b!1324131))

(assert (= (and b!1324131 (not res!595552)) b!1324141))

(assert (= (and b!1324141 (not res!595568)) b!1324158))

(assert (= (and b!1324158 (not res!595569)) b!1324154))

(assert (= (and b!1324154 (not res!595561)) b!1324153))

(assert (= (and b!1324153 (not res!595562)) b!1324127))

(assert (= (and b!1324127 (not res!595545)) b!1324132))

(assert (= (and b!1324132 (not res!595556)) b!1324143))

(assert (= (and b!1324143 (not res!595571)) b!1324164))

(assert (= (and b!1324164 (not res!595570)) b!1324168))

(assert (= (and b!1324168 (not res!595555)) b!1324126))

(assert (= (and b!1324126 (not res!595563)) b!1324142))

(assert (= (and b!1324142 c!217315) b!1324129))

(assert (= (and b!1324142 (not c!217315)) b!1324160))

(assert (= (and b!1324142 (not res!595557)) b!1324156))

(assert (= b!1324133 b!1324146))

(assert (= b!1324167 b!1324133))

(assert (= (and start!117734 ((_ is Cons!13417) rules!2550)) b!1324167))

(assert (= b!1324125 b!1324148))

(assert (= b!1324144 b!1324125))

(assert (= start!117734 b!1324144))

(assert (= b!1324159 b!1324130))

(assert (= b!1324161 b!1324159))

(assert (= start!117734 b!1324161))

(declare-fun m!1480583 () Bool)

(assert (=> b!1324143 m!1480583))

(declare-fun m!1480585 () Bool)

(assert (=> b!1324136 m!1480585))

(declare-fun m!1480587 () Bool)

(assert (=> b!1324165 m!1480587))

(declare-fun m!1480589 () Bool)

(assert (=> b!1324140 m!1480589))

(assert (=> b!1324140 m!1480589))

(declare-fun m!1480591 () Bool)

(assert (=> b!1324140 m!1480591))

(declare-fun m!1480593 () Bool)

(assert (=> b!1324149 m!1480593))

(declare-fun m!1480595 () Bool)

(assert (=> b!1324164 m!1480595))

(declare-fun m!1480597 () Bool)

(assert (=> b!1324142 m!1480597))

(assert (=> b!1324142 m!1480597))

(declare-fun m!1480599 () Bool)

(assert (=> b!1324142 m!1480599))

(declare-fun m!1480601 () Bool)

(assert (=> b!1324141 m!1480601))

(declare-fun m!1480603 () Bool)

(assert (=> b!1324133 m!1480603))

(declare-fun m!1480605 () Bool)

(assert (=> b!1324133 m!1480605))

(declare-fun m!1480607 () Bool)

(assert (=> b!1324157 m!1480607))

(assert (=> b!1324157 m!1480607))

(declare-fun m!1480609 () Bool)

(assert (=> b!1324157 m!1480609))

(declare-fun m!1480611 () Bool)

(assert (=> b!1324161 m!1480611))

(declare-fun m!1480613 () Bool)

(assert (=> b!1324128 m!1480613))

(declare-fun m!1480615 () Bool)

(assert (=> b!1324150 m!1480615))

(declare-fun m!1480617 () Bool)

(assert (=> b!1324129 m!1480617))

(assert (=> b!1324129 m!1480617))

(declare-fun m!1480619 () Bool)

(assert (=> b!1324129 m!1480619))

(declare-fun m!1480621 () Bool)

(assert (=> b!1324134 m!1480621))

(assert (=> b!1324134 m!1480621))

(declare-fun m!1480623 () Bool)

(assert (=> b!1324134 m!1480623))

(assert (=> b!1324134 m!1480621))

(assert (=> b!1324134 m!1480621))

(declare-fun m!1480625 () Bool)

(assert (=> b!1324134 m!1480625))

(declare-fun m!1480627 () Bool)

(assert (=> b!1324152 m!1480627))

(declare-fun m!1480629 () Bool)

(assert (=> b!1324169 m!1480629))

(assert (=> b!1324169 m!1480629))

(declare-fun m!1480631 () Bool)

(assert (=> b!1324169 m!1480631))

(declare-fun m!1480633 () Bool)

(assert (=> b!1324169 m!1480633))

(declare-fun m!1480635 () Bool)

(assert (=> b!1324126 m!1480635))

(declare-fun m!1480637 () Bool)

(assert (=> start!117734 m!1480637))

(declare-fun m!1480639 () Bool)

(assert (=> start!117734 m!1480639))

(declare-fun m!1480641 () Bool)

(assert (=> b!1324158 m!1480641))

(declare-fun m!1480643 () Bool)

(assert (=> b!1324131 m!1480643))

(assert (=> b!1324131 m!1480643))

(declare-fun m!1480645 () Bool)

(assert (=> b!1324131 m!1480645))

(declare-fun m!1480647 () Bool)

(assert (=> b!1324127 m!1480647))

(assert (=> b!1324127 m!1480647))

(declare-fun m!1480649 () Bool)

(assert (=> b!1324127 m!1480649))

(declare-fun m!1480651 () Bool)

(assert (=> b!1324138 m!1480651))

(declare-fun m!1480653 () Bool)

(assert (=> b!1324154 m!1480653))

(declare-fun m!1480655 () Bool)

(assert (=> b!1324154 m!1480655))

(declare-fun m!1480657 () Bool)

(assert (=> b!1324154 m!1480657))

(assert (=> b!1324154 m!1480657))

(declare-fun m!1480659 () Bool)

(assert (=> b!1324154 m!1480659))

(declare-fun m!1480661 () Bool)

(assert (=> b!1324162 m!1480661))

(declare-fun m!1480663 () Bool)

(assert (=> b!1324159 m!1480663))

(declare-fun m!1480665 () Bool)

(assert (=> b!1324159 m!1480665))

(declare-fun m!1480667 () Bool)

(assert (=> b!1324144 m!1480667))

(declare-fun m!1480669 () Bool)

(assert (=> b!1324153 m!1480669))

(declare-fun m!1480671 () Bool)

(assert (=> b!1324145 m!1480671))

(declare-fun m!1480673 () Bool)

(assert (=> b!1324163 m!1480673))

(declare-fun m!1480675 () Bool)

(assert (=> b!1324137 m!1480675))

(declare-fun m!1480677 () Bool)

(assert (=> b!1324137 m!1480677))

(declare-fun m!1480679 () Bool)

(assert (=> b!1324135 m!1480679))

(declare-fun m!1480681 () Bool)

(assert (=> b!1324135 m!1480681))

(declare-fun m!1480683 () Bool)

(assert (=> b!1324151 m!1480683))

(declare-fun m!1480685 () Bool)

(assert (=> b!1324151 m!1480685))

(declare-fun m!1480687 () Bool)

(assert (=> b!1324151 m!1480687))

(declare-fun m!1480689 () Bool)

(assert (=> b!1324151 m!1480689))

(assert (=> b!1324151 m!1480683))

(declare-fun m!1480691 () Bool)

(assert (=> b!1324151 m!1480691))

(declare-fun m!1480693 () Bool)

(assert (=> b!1324147 m!1480693))

(declare-fun m!1480695 () Bool)

(assert (=> b!1324166 m!1480695))

(declare-fun m!1480697 () Bool)

(assert (=> b!1324166 m!1480697))

(assert (=> b!1324166 m!1480621))

(assert (=> b!1324166 m!1480621))

(declare-fun m!1480699 () Bool)

(assert (=> b!1324166 m!1480699))

(assert (=> b!1324166 m!1480621))

(declare-fun m!1480701 () Bool)

(assert (=> b!1324155 m!1480701))

(declare-fun m!1480703 () Bool)

(assert (=> b!1324155 m!1480703))

(declare-fun m!1480705 () Bool)

(assert (=> b!1324155 m!1480705))

(declare-fun m!1480707 () Bool)

(assert (=> b!1324155 m!1480707))

(declare-fun m!1480709 () Bool)

(assert (=> b!1324155 m!1480709))

(declare-fun m!1480711 () Bool)

(assert (=> b!1324155 m!1480711))

(declare-fun m!1480713 () Bool)

(assert (=> b!1324168 m!1480713))

(declare-fun m!1480715 () Bool)

(assert (=> b!1324168 m!1480715))

(declare-fun m!1480717 () Bool)

(assert (=> b!1324168 m!1480717))

(declare-fun m!1480719 () Bool)

(assert (=> b!1324168 m!1480719))

(declare-fun m!1480721 () Bool)

(assert (=> b!1324125 m!1480721))

(declare-fun m!1480723 () Bool)

(assert (=> b!1324125 m!1480723))

(declare-fun m!1480725 () Bool)

(assert (=> b!1324156 m!1480725))

(declare-fun m!1480727 () Bool)

(assert (=> b!1324132 m!1480727))

(declare-fun m!1480729 () Bool)

(assert (=> b!1324132 m!1480729))

(check-sat (not b!1324141) (not b!1324157) (not b!1324149) (not b!1324144) (not b!1324156) (not b!1324168) b_and!88443 (not b!1324143) (not b_next!32627) b_and!88445 (not b_next!32623) (not b!1324158) (not b_next!32621) (not b!1324142) (not b_next!32619) (not start!117734) (not b!1324138) (not b!1324153) (not b!1324128) (not b_next!32629) (not b_next!32625) (not b!1324137) (not b!1324136) b_and!88447 (not b!1324167) (not b!1324164) (not b!1324161) b_and!88439 (not b!1324125) (not b!1324132) (not b!1324150) (not b!1324133) (not b!1324126) (not b!1324140) (not b!1324134) b_and!88449 (not b!1324154) (not b!1324131) (not b!1324166) (not b!1324162) (not b!1324155) (not b!1324169) (not b!1324165) (not b!1324159) (not b!1324163) (not b!1324135) (not b!1324152) (not b!1324147) (not b!1324145) (not b!1324129) b_and!88441 (not b!1324151) (not b!1324127))
(check-sat (not b_next!32623) (not b_next!32621) (not b_next!32619) b_and!88447 b_and!88439 b_and!88449 b_and!88443 (not b_next!32627) b_and!88441 b_and!88445 (not b_next!32629) (not b_next!32625))

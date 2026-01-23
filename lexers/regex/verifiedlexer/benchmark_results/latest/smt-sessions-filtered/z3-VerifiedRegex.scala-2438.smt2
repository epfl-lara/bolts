; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128418 () Bool)

(assert start!128418)

(declare-fun b!1407834 () Bool)

(declare-fun b_free!34387 () Bool)

(declare-fun b_next!35091 () Bool)

(assert (=> b!1407834 (= b_free!34387 (not b_next!35091))))

(declare-fun tp!399729 () Bool)

(declare-fun b_and!94259 () Bool)

(assert (=> b!1407834 (= tp!399729 b_and!94259)))

(declare-fun b_free!34389 () Bool)

(declare-fun b_next!35093 () Bool)

(assert (=> b!1407834 (= b_free!34389 (not b_next!35093))))

(declare-fun tp!399723 () Bool)

(declare-fun b_and!94261 () Bool)

(assert (=> b!1407834 (= tp!399723 b_and!94261)))

(declare-fun b!1407850 () Bool)

(declare-fun b_free!34391 () Bool)

(declare-fun b_next!35095 () Bool)

(assert (=> b!1407850 (= b_free!34391 (not b_next!35095))))

(declare-fun tp!399726 () Bool)

(declare-fun b_and!94263 () Bool)

(assert (=> b!1407850 (= tp!399726 b_and!94263)))

(declare-fun b_free!34393 () Bool)

(declare-fun b_next!35097 () Bool)

(assert (=> b!1407850 (= b_free!34393 (not b_next!35097))))

(declare-fun tp!399728 () Bool)

(declare-fun b_and!94265 () Bool)

(assert (=> b!1407850 (= tp!399728 b_and!94265)))

(declare-fun b!1407860 () Bool)

(declare-fun b_free!34395 () Bool)

(declare-fun b_next!35099 () Bool)

(assert (=> b!1407860 (= b_free!34395 (not b_next!35099))))

(declare-fun tp!399721 () Bool)

(declare-fun b_and!94267 () Bool)

(assert (=> b!1407860 (= tp!399721 b_and!94267)))

(declare-fun b_free!34397 () Bool)

(declare-fun b_next!35101 () Bool)

(assert (=> b!1407860 (= b_free!34397 (not b_next!35101))))

(declare-fun tp!399725 () Bool)

(declare-fun b_and!94269 () Bool)

(assert (=> b!1407860 (= tp!399725 b_and!94269)))

(declare-fun b!1407826 () Bool)

(assert (=> b!1407826 true))

(assert (=> b!1407826 true))

(declare-fun b!1407817 () Bool)

(assert (=> b!1407817 true))

(declare-fun b!1407830 () Bool)

(assert (=> b!1407830 true))

(declare-fun bs!338636 () Bool)

(declare-fun b!1407867 () Bool)

(assert (= bs!338636 (and b!1407867 b!1407830)))

(declare-fun lambda!62263 () Int)

(declare-fun lambda!62262 () Int)

(assert (=> bs!338636 (not (= lambda!62263 lambda!62262))))

(assert (=> b!1407867 true))

(declare-fun b!1407810 () Bool)

(declare-fun res!637553 () Bool)

(declare-fun e!898708 () Bool)

(assert (=> b!1407810 (=> (not res!637553) (not e!898708))))

(declare-datatypes ((LexerInterface!2180 0))(
  ( (LexerInterfaceExt!2177 (__x!8979 Int)) (Lexer!2178) )
))
(declare-fun thiss!19762 () LexerInterface!2180)

(declare-datatypes ((List!14404 0))(
  ( (Nil!14338) (Cons!14338 (h!19739 (_ BitVec 16)) (t!123109 List!14404)) )
))
(declare-datatypes ((TokenValue!2575 0))(
  ( (FloatLiteralValue!5150 (text!18470 List!14404)) (TokenValueExt!2574 (__x!8980 Int)) (Broken!12875 (value!80429 List!14404)) (Object!2640) (End!2575) (Def!2575) (Underscore!2575) (Match!2575) (Else!2575) (Error!2575) (Case!2575) (If!2575) (Extends!2575) (Abstract!2575) (Class!2575) (Val!2575) (DelimiterValue!5150 (del!2635 List!14404)) (KeywordValue!2581 (value!80430 List!14404)) (CommentValue!5150 (value!80431 List!14404)) (WhitespaceValue!5150 (value!80432 List!14404)) (IndentationValue!2575 (value!80433 List!14404)) (String!17110) (Int32!2575) (Broken!12876 (value!80434 List!14404)) (Boolean!2576) (Unit!20714) (OperatorValue!2578 (op!2635 List!14404)) (IdentifierValue!5150 (value!80435 List!14404)) (IdentifierValue!5151 (value!80436 List!14404)) (WhitespaceValue!5151 (value!80437 List!14404)) (True!5150) (False!5150) (Broken!12877 (value!80438 List!14404)) (Broken!12878 (value!80439 List!14404)) (True!5151) (RightBrace!2575) (RightBracket!2575) (Colon!2575) (Null!2575) (Comma!2575) (LeftBracket!2575) (False!5151) (LeftBrace!2575) (ImaginaryLiteralValue!2575 (text!18471 List!14404)) (StringLiteralValue!7725 (value!80440 List!14404)) (EOFValue!2575 (value!80441 List!14404)) (IdentValue!2575 (value!80442 List!14404)) (DelimiterValue!5151 (value!80443 List!14404)) (DedentValue!2575 (value!80444 List!14404)) (NewLineValue!2575 (value!80445 List!14404)) (IntegerValue!7725 (value!80446 (_ BitVec 32)) (text!18472 List!14404)) (IntegerValue!7726 (value!80447 Int) (text!18473 List!14404)) (Times!2575) (Or!2575) (Equal!2575) (Minus!2575) (Broken!12879 (value!80448 List!14404)) (And!2575) (Div!2575) (LessEqual!2575) (Mod!2575) (Concat!6374) (Not!2575) (Plus!2575) (SpaceValue!2575 (value!80449 List!14404)) (IntegerValue!7727 (value!80450 Int) (text!18474 List!14404)) (StringLiteralValue!7726 (text!18475 List!14404)) (FloatLiteralValue!5151 (text!18476 List!14404)) (BytesLiteralValue!2575 (value!80451 List!14404)) (CommentValue!5151 (value!80452 List!14404)) (StringLiteralValue!7727 (value!80453 List!14404)) (ErrorTokenValue!2575 (msg!2636 List!14404)) )
))
(declare-datatypes ((C!7888 0))(
  ( (C!7889 (val!4504 Int)) )
))
(declare-datatypes ((List!14405 0))(
  ( (Nil!14339) (Cons!14339 (h!19740 C!7888) (t!123110 List!14405)) )
))
(declare-datatypes ((IArray!9465 0))(
  ( (IArray!9466 (innerList!4790 List!14405)) )
))
(declare-datatypes ((Conc!4730 0))(
  ( (Node!4730 (left!12242 Conc!4730) (right!12572 Conc!4730) (csize!9690 Int) (cheight!4941 Int)) (Leaf!7169 (xs!7457 IArray!9465) (csize!9691 Int)) (Empty!4730) )
))
(declare-datatypes ((BalanceConc!9400 0))(
  ( (BalanceConc!9401 (c!231444 Conc!4730)) )
))
(declare-datatypes ((Regex!3799 0))(
  ( (ElementMatch!3799 (c!231445 C!7888)) (Concat!6375 (regOne!8110 Regex!3799) (regTwo!8110 Regex!3799)) (EmptyExpr!3799) (Star!3799 (reg!4128 Regex!3799)) (EmptyLang!3799) (Union!3799 (regOne!8111 Regex!3799) (regTwo!8111 Regex!3799)) )
))
(declare-datatypes ((String!17111 0))(
  ( (String!17112 (value!80454 String)) )
))
(declare-datatypes ((TokenValueInjection!4810 0))(
  ( (TokenValueInjection!4811 (toValue!3776 Int) (toChars!3635 Int)) )
))
(declare-datatypes ((Rule!4770 0))(
  ( (Rule!4771 (regex!2485 Regex!3799) (tag!2747 String!17111) (isSeparator!2485 Bool) (transformation!2485 TokenValueInjection!4810)) )
))
(declare-datatypes ((List!14406 0))(
  ( (Nil!14340) (Cons!14340 (h!19741 Rule!4770) (t!123111 List!14406)) )
))
(declare-fun rules!2550 () List!14406)

(declare-datatypes ((Token!4632 0))(
  ( (Token!4633 (value!80455 TokenValue!2575) (rule!4248 Rule!4770) (size!11801 Int) (originalCharacters!3347 List!14405)) )
))
(declare-fun t2!34 () Token!4632)

(declare-fun rulesProduceIndividualToken!1149 (LexerInterface!2180 List!14406 Token!4632) Bool)

(assert (=> b!1407810 (= res!637553 (rulesProduceIndividualToken!1149 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1407811 () Bool)

(declare-fun e!898715 () Bool)

(declare-fun e!898728 () Bool)

(assert (=> b!1407811 (= e!898715 e!898728)))

(declare-fun res!637561 () Bool)

(assert (=> b!1407811 (=> (not res!637561) (not e!898728))))

(declare-fun lt!470016 () Regex!3799)

(declare-fun lt!470008 () List!14405)

(declare-fun prefixMatch!308 (Regex!3799 List!14405) Bool)

(assert (=> b!1407811 (= res!637561 (prefixMatch!308 lt!470016 lt!470008))))

(declare-fun rulesRegex!368 (LexerInterface!2180 List!14406) Regex!3799)

(assert (=> b!1407811 (= lt!470016 (rulesRegex!368 thiss!19762 rules!2550))))

(declare-fun lt!470024 () List!14405)

(declare-fun lt!470026 () C!7888)

(declare-fun ++!3730 (List!14405 List!14405) List!14405)

(assert (=> b!1407811 (= lt!470008 (++!3730 lt!470024 (Cons!14339 lt!470026 Nil!14339)))))

(declare-fun lt!470021 () BalanceConc!9400)

(declare-fun apply!3677 (BalanceConc!9400 Int) C!7888)

(assert (=> b!1407811 (= lt!470026 (apply!3677 lt!470021 0))))

(declare-fun lt!470029 () BalanceConc!9400)

(declare-fun list!5605 (BalanceConc!9400) List!14405)

(assert (=> b!1407811 (= lt!470024 (list!5605 lt!470029))))

(declare-fun t1!34 () Token!4632)

(declare-fun charsOf!1457 (Token!4632) BalanceConc!9400)

(assert (=> b!1407811 (= lt!470029 (charsOf!1457 t1!34))))

(declare-fun b!1407812 () Bool)

(declare-fun res!637571 () Bool)

(declare-fun e!898732 () Bool)

(assert (=> b!1407812 (=> res!637571 e!898732)))

(declare-datatypes ((tuple2!13970 0))(
  ( (tuple2!13971 (_1!7871 Token!4632) (_2!7871 List!14405)) )
))
(declare-datatypes ((Option!2748 0))(
  ( (None!2747) (Some!2747 (v!21715 tuple2!13970)) )
))
(declare-fun maxPrefix!1154 (LexerInterface!2180 List!14406 List!14405) Option!2748)

(assert (=> b!1407812 (= res!637571 (not (= (maxPrefix!1154 thiss!19762 rules!2550 lt!470024) (Some!2747 (tuple2!13971 t1!34 Nil!14339)))))))

(declare-fun b!1407813 () Bool)

(declare-fun res!637563 () Bool)

(declare-fun e!898735 () Bool)

(assert (=> b!1407813 (=> res!637563 e!898735)))

(declare-fun lt!470007 () Rule!4770)

(declare-fun contains!2837 (List!14406 Rule!4770) Bool)

(assert (=> b!1407813 (= res!637563 (not (contains!2837 rules!2550 lt!470007)))))

(declare-fun b!1407814 () Bool)

(declare-fun e!898731 () Bool)

(assert (=> b!1407814 (= e!898731 e!898732)))

(declare-fun res!637578 () Bool)

(assert (=> b!1407814 (=> res!637578 e!898732)))

(declare-datatypes ((List!14407 0))(
  ( (Nil!14341) (Cons!14341 (h!19742 Token!4632) (t!123112 List!14407)) )
))
(declare-datatypes ((IArray!9467 0))(
  ( (IArray!9468 (innerList!4791 List!14407)) )
))
(declare-datatypes ((Conc!4731 0))(
  ( (Node!4731 (left!12243 Conc!4731) (right!12573 Conc!4731) (csize!9692 Int) (cheight!4942 Int)) (Leaf!7170 (xs!7458 IArray!9467) (csize!9693 Int)) (Empty!4731) )
))
(declare-datatypes ((BalanceConc!9402 0))(
  ( (BalanceConc!9403 (c!231446 Conc!4731)) )
))
(declare-datatypes ((tuple2!13972 0))(
  ( (tuple2!13973 (_1!7872 BalanceConc!9402) (_2!7872 BalanceConc!9400)) )
))
(declare-fun lt!469994 () tuple2!13972)

(declare-fun lt!470000 () List!14407)

(declare-fun list!5606 (BalanceConc!9402) List!14407)

(assert (=> b!1407814 (= res!637578 (not (= (list!5606 (_1!7872 lt!469994)) lt!470000)))))

(assert (=> b!1407814 (= lt!470000 (Cons!14341 t1!34 Nil!14341))))

(declare-fun lt!470015 () BalanceConc!9400)

(declare-fun lex!1005 (LexerInterface!2180 List!14406 BalanceConc!9400) tuple2!13972)

(assert (=> b!1407814 (= lt!469994 (lex!1005 thiss!19762 rules!2550 lt!470015))))

(declare-fun print!944 (LexerInterface!2180 BalanceConc!9402) BalanceConc!9400)

(declare-fun singletonSeq!1154 (Token!4632) BalanceConc!9402)

(assert (=> b!1407814 (= lt!470015 (print!944 thiss!19762 (singletonSeq!1154 t1!34)))))

(declare-fun getWitness!502 (List!14406 Int) Rule!4770)

(assert (=> b!1407814 (= lt!470007 (getWitness!502 rules!2550 lambda!62262))))

(declare-fun b!1407815 () Bool)

(declare-fun e!898727 () Bool)

(assert (=> b!1407815 (= e!898727 false)))

(declare-datatypes ((Unit!20715 0))(
  ( (Unit!20716) )
))
(declare-fun lt!469996 () Unit!20715)

(declare-fun e!898711 () Unit!20715)

(assert (=> b!1407815 (= lt!469996 e!898711)))

(declare-fun c!231439 () Bool)

(assert (=> b!1407815 (= c!231439 (isSeparator!2485 lt!470007))))

(declare-fun lt!470004 () Regex!3799)

(assert (=> b!1407815 (= (regex!2485 lt!470007) lt!470004)))

(declare-fun b!1407816 () Bool)

(declare-fun e!898729 () Unit!20715)

(declare-fun Unit!20717 () Unit!20715)

(assert (=> b!1407816 (= e!898729 Unit!20717)))

(declare-fun lt!470010 () Unit!20715)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!230 (Regex!3799 List!14405 C!7888) Unit!20715)

(declare-fun head!2627 (List!14405) C!7888)

(assert (=> b!1407816 (= lt!470010 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!230 (regex!2485 (rule!4248 t1!34)) lt!470024 (head!2627 lt!470024)))))

(assert (=> b!1407816 false))

(declare-fun e!898710 () Bool)

(declare-fun e!898720 () Bool)

(assert (=> b!1407817 (= e!898710 e!898720)))

(declare-fun res!637574 () Bool)

(assert (=> b!1407817 (=> res!637574 e!898720)))

(declare-fun lambda!62260 () Int)

(declare-fun lambda!62261 () Int)

(declare-datatypes ((List!14408 0))(
  ( (Nil!14342) (Cons!14342 (h!19743 Regex!3799) (t!123113 List!14408)) )
))
(declare-fun exists!614 (List!14408 Int) Bool)

(declare-fun map!3188 (List!14406 Int) List!14408)

(assert (=> b!1407817 (= res!637574 (not (exists!614 (map!3188 rules!2550 lambda!62260) lambda!62261)))))

(declare-fun lt!470005 () List!14408)

(assert (=> b!1407817 (exists!614 lt!470005 lambda!62261)))

(declare-fun lt!470001 () List!14405)

(declare-fun lt!469993 () Unit!20715)

(declare-fun matchRGenUnionSpec!210 (Regex!3799 List!14408 List!14405) Unit!20715)

(assert (=> b!1407817 (= lt!469993 (matchRGenUnionSpec!210 lt!470016 lt!470005 lt!470001))))

(assert (=> b!1407817 (= lt!470005 (map!3188 rules!2550 lambda!62260))))

(declare-fun bm!93839 () Bool)

(declare-fun call!93857 () Unit!20715)

(declare-fun call!93845 () Unit!20715)

(assert (=> bm!93839 (= call!93857 call!93845)))

(declare-fun b!1407818 () Bool)

(declare-fun e!898722 () Unit!20715)

(declare-fun Unit!20718 () Unit!20715)

(assert (=> b!1407818 (= e!898722 Unit!20718)))

(declare-fun lt!470022 () Unit!20715)

(declare-fun lt!470011 () List!14405)

(assert (=> b!1407818 (= lt!470022 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!230 (regex!2485 (rule!4248 t2!34)) lt!470011 (head!2627 lt!470011)))))

(assert (=> b!1407818 false))

(declare-fun bm!93840 () Bool)

(declare-fun call!93855 () Bool)

(declare-fun call!93849 () Bool)

(assert (=> bm!93840 (= call!93855 call!93849)))

(declare-fun b!1407819 () Bool)

(declare-fun res!637570 () Bool)

(assert (=> b!1407819 (=> (not res!637570) (not e!898708))))

(assert (=> b!1407819 (= res!637570 (not (= (isSeparator!2485 (rule!4248 t1!34)) (isSeparator!2485 (rule!4248 t2!34)))))))

(declare-fun b!1407820 () Bool)

(declare-fun res!637577 () Bool)

(assert (=> b!1407820 (=> res!637577 e!898732)))

(assert (=> b!1407820 (= res!637577 (not (contains!2837 rules!2550 (rule!4248 t1!34))))))

(declare-fun b!1407821 () Bool)

(declare-fun res!637550 () Bool)

(declare-fun e!898714 () Bool)

(assert (=> b!1407821 (=> res!637550 e!898714)))

(declare-fun lt!470014 () List!14407)

(declare-fun lt!469995 () BalanceConc!9400)

(declare-datatypes ((tuple2!13974 0))(
  ( (tuple2!13975 (_1!7873 List!14407) (_2!7873 List!14405)) )
))
(declare-fun lexList!694 (LexerInterface!2180 List!14406 List!14405) tuple2!13974)

(assert (=> b!1407821 (= res!637550 (not (= (lexList!694 thiss!19762 rules!2550 (list!5605 lt!469995)) (tuple2!13975 lt!470014 Nil!14339))))))

(declare-fun b!1407822 () Bool)

(declare-fun res!637562 () Bool)

(assert (=> b!1407822 (=> res!637562 e!898710)))

(declare-fun matchR!1790 (Regex!3799 List!14405) Bool)

(assert (=> b!1407822 (= res!637562 (not (matchR!1790 lt!470016 lt!470001)))))

(declare-fun b!1407823 () Bool)

(declare-fun e!898724 () Bool)

(declare-fun e!898712 () Bool)

(declare-fun tp!399727 () Bool)

(assert (=> b!1407823 (= e!898724 (and e!898712 tp!399727))))

(declare-fun b!1407824 () Bool)

(declare-fun res!637580 () Bool)

(assert (=> b!1407824 (=> (not res!637580) (not e!898708))))

(declare-fun isEmpty!8734 (List!14406) Bool)

(assert (=> b!1407824 (= res!637580 (not (isEmpty!8734 rules!2550)))))

(declare-fun b!1407825 () Bool)

(declare-fun e!898736 () Bool)

(declare-fun e!898705 () Bool)

(assert (=> b!1407825 (= e!898736 e!898705)))

(declare-fun res!637581 () Bool)

(assert (=> b!1407825 (=> res!637581 e!898705)))

(declare-fun lt!469999 () Bool)

(assert (=> b!1407825 (= res!637581 lt!469999)))

(declare-fun lt!470027 () Unit!20715)

(assert (=> b!1407825 (= lt!470027 e!898729)))

(declare-fun c!231443 () Bool)

(assert (=> b!1407825 (= c!231443 lt!469999)))

(declare-fun lt!470018 () C!7888)

(declare-fun contains!2838 (List!14405 C!7888) Bool)

(declare-fun usedCharacters!296 (Regex!3799) List!14405)

(assert (=> b!1407825 (= lt!469999 (not (contains!2838 (usedCharacters!296 (regex!2485 (rule!4248 t1!34))) lt!470018)))))

(declare-fun e!898730 () Bool)

(assert (=> b!1407826 (= e!898728 (not e!898730))))

(declare-fun res!637567 () Bool)

(assert (=> b!1407826 (=> res!637567 e!898730)))

(declare-fun lambda!62259 () Int)

(declare-fun Exists!949 (Int) Bool)

(assert (=> b!1407826 (= res!637567 (not (Exists!949 lambda!62259)))))

(assert (=> b!1407826 (Exists!949 lambda!62259)))

(declare-fun lt!470020 () Unit!20715)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!267 (Regex!3799 List!14405) Unit!20715)

(assert (=> b!1407826 (= lt!470020 (lemmaPrefixMatchThenExistsStringThatMatches!267 lt!470016 lt!470008))))

(declare-fun b!1407827 () Bool)

(declare-fun res!637548 () Bool)

(assert (=> b!1407827 (=> res!637548 e!898714)))

(declare-fun lt!470028 () tuple2!13972)

(declare-fun isEmpty!8735 (BalanceConc!9400) Bool)

(assert (=> b!1407827 (= res!637548 (not (isEmpty!8735 (_2!7872 lt!470028))))))

(declare-fun c!231442 () Bool)

(declare-fun bm!93841 () Bool)

(declare-fun call!93847 () Unit!20715)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!32 (LexerInterface!2180 List!14406 List!14406 Rule!4770 Rule!4770 C!7888) Unit!20715)

(assert (=> bm!93841 (= call!93847 (lemmaNonSepRuleNotContainsCharContainedInASepRule!32 thiss!19762 rules!2550 rules!2550 lt!470007 (ite c!231442 (rule!4248 t1!34) (rule!4248 t2!34)) (ite c!231442 lt!470018 lt!470026)))))

(declare-fun e!898717 () Bool)

(declare-fun tp!399722 () Bool)

(declare-fun b!1407828 () Bool)

(declare-fun e!898738 () Bool)

(declare-fun inv!21 (TokenValue!2575) Bool)

(assert (=> b!1407828 (= e!898717 (and (inv!21 (value!80455 t2!34)) e!898738 tp!399722))))

(declare-fun b!1407829 () Bool)

(declare-fun Unit!20719 () Unit!20715)

(assert (=> b!1407829 (= e!898729 Unit!20719)))

(declare-fun bm!93842 () Bool)

(declare-fun call!93856 () Bool)

(declare-fun call!93851 () Bool)

(assert (=> bm!93842 (= call!93856 call!93851)))

(declare-fun e!898706 () Bool)

(assert (=> b!1407830 (= e!898706 e!898731)))

(declare-fun res!637568 () Bool)

(assert (=> b!1407830 (=> res!637568 e!898731)))

(declare-fun exists!615 (List!14406 Int) Bool)

(assert (=> b!1407830 (= res!637568 (not (exists!615 rules!2550 lambda!62262)))))

(assert (=> b!1407830 (exists!615 rules!2550 lambda!62262)))

(declare-fun lt!470017 () Unit!20715)

(declare-fun lemmaMapContains!196 (List!14406 Int Regex!3799) Unit!20715)

(assert (=> b!1407830 (= lt!470017 (lemmaMapContains!196 rules!2550 lambda!62260 lt!470004))))

(declare-fun b!1407831 () Bool)

(declare-fun e!898733 () Bool)

(assert (=> b!1407831 (= e!898730 e!898733)))

(declare-fun res!637557 () Bool)

(assert (=> b!1407831 (=> res!637557 e!898733)))

(declare-fun getSuffix!645 (List!14405 List!14405) List!14405)

(assert (=> b!1407831 (= res!637557 (not (= lt!470001 (++!3730 lt!470008 (getSuffix!645 lt!470001 lt!470008)))))))

(declare-fun pickWitness!252 (Int) List!14405)

(assert (=> b!1407831 (= lt!470001 (pickWitness!252 lambda!62259))))

(declare-fun b!1407832 () Bool)

(declare-fun res!637566 () Bool)

(assert (=> b!1407832 (=> (not res!637566) (not e!898715))))

(declare-fun sepAndNonSepRulesDisjointChars!858 (List!14406 List!14406) Bool)

(assert (=> b!1407832 (= res!637566 (sepAndNonSepRulesDisjointChars!858 rules!2550 rules!2550))))

(declare-fun call!93852 () Unit!20715)

(declare-fun bm!93843 () Bool)

(declare-fun c!231440 () Bool)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!140 (LexerInterface!2180 List!14406 List!14406 Rule!4770 Rule!4770 C!7888) Unit!20715)

(assert (=> bm!93843 (= call!93852 (lemmaSepRuleNotContainsCharContainedInANonSepRule!140 thiss!19762 rules!2550 rules!2550 (ite c!231440 (rule!4248 t2!34) (rule!4248 t1!34)) lt!470007 (ite c!231440 lt!470026 lt!470018)))))

(declare-fun e!898737 () Bool)

(declare-fun b!1407833 () Bool)

(declare-fun e!898721 () Bool)

(declare-fun tp!399730 () Bool)

(assert (=> b!1407833 (= e!898721 (and (inv!21 (value!80455 t1!34)) e!898737 tp!399730))))

(declare-fun e!898719 () Bool)

(assert (=> b!1407834 (= e!898719 (and tp!399729 tp!399723))))

(declare-fun b!1407835 () Bool)

(declare-fun e!898734 () Bool)

(assert (=> b!1407835 (= e!898734 false)))

(declare-fun b!1407836 () Bool)

(declare-fun e!898704 () Bool)

(assert (=> b!1407836 e!898704))

(declare-fun res!637559 () Bool)

(assert (=> b!1407836 (=> (not res!637559) (not e!898704))))

(declare-fun call!93853 () Bool)

(assert (=> b!1407836 (= res!637559 (not call!93853))))

(declare-fun lt!470003 () Unit!20715)

(declare-fun call!93846 () Unit!20715)

(assert (=> b!1407836 (= lt!470003 call!93846)))

(assert (=> b!1407836 (not call!93855)))

(declare-fun lt!470002 () Unit!20715)

(assert (=> b!1407836 (= lt!470002 call!93852)))

(declare-fun e!898723 () Unit!20715)

(declare-fun Unit!20720 () Unit!20715)

(assert (=> b!1407836 (= e!898723 Unit!20720)))

(declare-fun b!1407837 () Bool)

(declare-fun e!898707 () Bool)

(declare-fun tp!399724 () Bool)

(declare-fun inv!18633 (String!17111) Bool)

(declare-fun inv!18636 (TokenValueInjection!4810) Bool)

(assert (=> b!1407837 (= e!898712 (and tp!399724 (inv!18633 (tag!2747 (h!19741 rules!2550))) (inv!18636 (transformation!2485 (h!19741 rules!2550))) e!898707))))

(declare-fun b!1407838 () Bool)

(assert (=> b!1407838 (= e!898732 e!898714)))

(declare-fun res!637556 () Bool)

(assert (=> b!1407838 (=> res!637556 e!898714)))

(assert (=> b!1407838 (= res!637556 (not (= (list!5606 (_1!7872 lt!470028)) lt!470014)))))

(assert (=> b!1407838 (= lt!470014 (Cons!14341 t2!34 Nil!14341))))

(assert (=> b!1407838 (= lt!470028 (lex!1005 thiss!19762 rules!2550 lt!469995))))

(assert (=> b!1407838 (= lt!469995 (print!944 thiss!19762 (singletonSeq!1154 t2!34)))))

(declare-fun b!1407839 () Bool)

(declare-fun res!637558 () Bool)

(assert (=> b!1407839 (=> res!637558 e!898732)))

(assert (=> b!1407839 (= res!637558 (not (= (lexList!694 thiss!19762 rules!2550 (list!5605 lt!470015)) (tuple2!13975 lt!470000 Nil!14339))))))

(declare-fun b!1407840 () Bool)

(declare-fun res!637584 () Bool)

(assert (=> b!1407840 (=> (not res!637584) (not e!898708))))

(assert (=> b!1407840 (= res!637584 (rulesProduceIndividualToken!1149 thiss!19762 rules!2550 t1!34))))

(declare-fun bm!93844 () Bool)

(declare-fun call!93844 () List!14405)

(assert (=> bm!93844 (= call!93844 (usedCharacters!296 (regex!2485 lt!470007)))))

(declare-fun b!1407841 () Bool)

(assert (=> b!1407841 e!898734))

(declare-fun res!637547 () Bool)

(assert (=> b!1407841 (=> (not res!637547) (not e!898734))))

(assert (=> b!1407841 (= res!637547 (not call!93856))))

(declare-fun lt!470013 () Unit!20715)

(assert (=> b!1407841 (= lt!470013 call!93857)))

(declare-fun call!93854 () Bool)

(assert (=> b!1407841 (not call!93854)))

(declare-fun lt!470023 () Unit!20715)

(assert (=> b!1407841 (= lt!470023 call!93847)))

(declare-fun e!898709 () Unit!20715)

(declare-fun Unit!20721 () Unit!20715)

(assert (=> b!1407841 (= e!898709 Unit!20721)))

(declare-fun bm!93845 () Bool)

(assert (=> bm!93845 (= call!93854 call!93849)))

(declare-fun b!1407842 () Bool)

(declare-fun e!898726 () Bool)

(assert (=> b!1407842 e!898726))

(declare-fun res!637575 () Bool)

(assert (=> b!1407842 (=> (not res!637575) (not e!898726))))

(assert (=> b!1407842 (= res!637575 (not call!93856))))

(declare-fun lt!470006 () Unit!20715)

(assert (=> b!1407842 (= lt!470006 call!93857)))

(assert (=> b!1407842 (not call!93854)))

(declare-fun lt!469998 () Unit!20715)

(assert (=> b!1407842 (= lt!469998 call!93847)))

(declare-fun Unit!20722 () Unit!20715)

(assert (=> b!1407842 (= e!898709 Unit!20722)))

(declare-fun e!898703 () Bool)

(declare-fun b!1407843 () Bool)

(declare-fun tp!399719 () Bool)

(assert (=> b!1407843 (= e!898737 (and tp!399719 (inv!18633 (tag!2747 (rule!4248 t1!34))) (inv!18636 (transformation!2485 (rule!4248 t1!34))) e!898703))))

(declare-fun b!1407844 () Bool)

(assert (=> b!1407844 (= e!898711 e!898723)))

(assert (=> b!1407844 (= c!231440 (isSeparator!2485 (rule!4248 t1!34)))))

(declare-fun b!1407845 () Bool)

(declare-fun res!637569 () Bool)

(assert (=> b!1407845 (=> res!637569 e!898732)))

(assert (=> b!1407845 (= res!637569 (not (isEmpty!8735 (_2!7872 lt!469994))))))

(declare-fun bm!93846 () Bool)

(declare-fun call!93850 () List!14405)

(assert (=> bm!93846 (= call!93850 call!93844)))

(declare-fun b!1407846 () Bool)

(assert (=> b!1407846 (= e!898705 e!898727)))

(declare-fun res!637555 () Bool)

(assert (=> b!1407846 (=> res!637555 e!898727)))

(declare-fun lt!469992 () Bool)

(assert (=> b!1407846 (= res!637555 lt!469992)))

(declare-fun lt!470030 () Unit!20715)

(assert (=> b!1407846 (= lt!470030 e!898722)))

(declare-fun c!231441 () Bool)

(assert (=> b!1407846 (= c!231441 lt!469992)))

(assert (=> b!1407846 (= lt!469992 (not (contains!2838 (usedCharacters!296 (regex!2485 (rule!4248 t2!34))) lt!470026)))))

(declare-fun b!1407847 () Bool)

(assert (=> b!1407847 (= e!898704 false)))

(declare-fun bm!93847 () Bool)

(assert (=> bm!93847 (= call!93845 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!230 lt!470004 lt!470001 (ite c!231439 (ite c!231440 lt!470026 lt!470018) (ite c!231442 lt!470018 lt!470026))))))

(declare-fun call!93848 () List!14405)

(declare-fun bm!93848 () Bool)

(assert (=> bm!93848 (= call!93849 (contains!2838 (ite c!231439 call!93848 call!93850) (ite c!231439 (ite c!231440 lt!470026 lt!470018) (ite c!231442 lt!470018 lt!470026))))))

(declare-fun res!637565 () Bool)

(assert (=> start!128418 (=> (not res!637565) (not e!898708))))

(get-info :version)

(assert (=> start!128418 (= res!637565 ((_ is Lexer!2178) thiss!19762))))

(assert (=> start!128418 e!898708))

(assert (=> start!128418 true))

(assert (=> start!128418 e!898724))

(declare-fun inv!18637 (Token!4632) Bool)

(assert (=> start!128418 (and (inv!18637 t1!34) e!898721)))

(assert (=> start!128418 (and (inv!18637 t2!34) e!898717)))

(declare-fun b!1407848 () Bool)

(assert (=> b!1407848 (= e!898714 e!898735)))

(declare-fun res!637564 () Bool)

(assert (=> b!1407848 (=> res!637564 e!898735)))

(assert (=> b!1407848 (= res!637564 (not (= (maxPrefix!1154 thiss!19762 rules!2550 lt!470011) (Some!2747 (tuple2!13971 t2!34 Nil!14339)))))))

(assert (=> b!1407848 (= lt!470011 (list!5605 lt!470021))))

(declare-fun b!1407849 () Bool)

(assert (=> b!1407849 (= e!898708 e!898715)))

(declare-fun res!637583 () Bool)

(assert (=> b!1407849 (=> (not res!637583) (not e!898715))))

(declare-fun size!11802 (BalanceConc!9400) Int)

(assert (=> b!1407849 (= res!637583 (> (size!11802 lt!470021) 0))))

(assert (=> b!1407849 (= lt!470021 (charsOf!1457 t2!34))))

(assert (=> b!1407850 (= e!898707 (and tp!399726 tp!399728))))

(declare-fun b!1407851 () Bool)

(declare-fun res!637560 () Bool)

(assert (=> b!1407851 (=> (not res!637560) (not e!898708))))

(declare-fun rulesInvariant!2050 (LexerInterface!2180 List!14406) Bool)

(assert (=> b!1407851 (= res!637560 (rulesInvariant!2050 thiss!19762 rules!2550))))

(declare-fun b!1407852 () Bool)

(declare-fun res!637551 () Bool)

(assert (=> b!1407852 (=> res!637551 e!898735)))

(assert (=> b!1407852 (= res!637551 (not (contains!2837 rules!2550 (rule!4248 t2!34))))))

(declare-fun b!1407853 () Bool)

(declare-fun e!898713 () Bool)

(assert (=> b!1407853 (= e!898713 false)))

(declare-fun b!1407854 () Bool)

(assert (=> b!1407854 (= e!898733 e!898710)))

(declare-fun res!637549 () Bool)

(assert (=> b!1407854 (=> res!637549 e!898710)))

(assert (=> b!1407854 (= res!637549 (not (contains!2838 lt!470008 lt!470018)))))

(assert (=> b!1407854 (= lt!470018 (apply!3677 lt!470029 0))))

(declare-fun bm!93849 () Bool)

(assert (=> bm!93849 (= call!93853 call!93851)))

(declare-fun b!1407855 () Bool)

(declare-fun Unit!20723 () Unit!20715)

(assert (=> b!1407855 (= e!898722 Unit!20723)))

(declare-fun tp!399720 () Bool)

(declare-fun b!1407856 () Bool)

(assert (=> b!1407856 (= e!898738 (and tp!399720 (inv!18633 (tag!2747 (rule!4248 t2!34))) (inv!18636 (transformation!2485 (rule!4248 t2!34))) e!898719))))

(declare-fun bm!93850 () Bool)

(assert (=> bm!93850 (= call!93846 call!93845)))

(declare-fun b!1407857 () Bool)

(assert (=> b!1407857 (= e!898711 e!898709)))

(assert (=> b!1407857 (= c!231442 (isSeparator!2485 (rule!4248 t1!34)))))

(declare-fun b!1407858 () Bool)

(declare-fun res!637576 () Bool)

(assert (=> b!1407858 (=> (not res!637576) (not e!898715))))

(declare-fun separableTokensPredicate!463 (LexerInterface!2180 Token!4632 Token!4632 List!14406) Bool)

(assert (=> b!1407858 (= res!637576 (not (separableTokensPredicate!463 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1407859 () Bool)

(assert (=> b!1407859 e!898713))

(declare-fun res!637552 () Bool)

(assert (=> b!1407859 (=> (not res!637552) (not e!898713))))

(assert (=> b!1407859 (= res!637552 (not call!93853))))

(declare-fun lt!470025 () Unit!20715)

(assert (=> b!1407859 (= lt!470025 call!93846)))

(assert (=> b!1407859 (not call!93855)))

(declare-fun lt!470009 () Unit!20715)

(assert (=> b!1407859 (= lt!470009 call!93852)))

(declare-fun Unit!20724 () Unit!20715)

(assert (=> b!1407859 (= e!898723 Unit!20724)))

(assert (=> b!1407860 (= e!898703 (and tp!399721 tp!399725))))

(declare-fun b!1407861 () Bool)

(declare-fun res!637573 () Bool)

(assert (=> b!1407861 (=> res!637573 e!898710)))

(assert (=> b!1407861 (= res!637573 (not (contains!2838 lt!470001 lt!470026)))))

(declare-fun bm!93851 () Bool)

(assert (=> bm!93851 (= call!93851 (matchR!1790 lt!470004 lt!470001))))

(declare-fun b!1407862 () Bool)

(declare-fun res!637585 () Bool)

(assert (=> b!1407862 (=> res!637585 e!898710)))

(assert (=> b!1407862 (= res!637585 (not (contains!2838 lt!470001 lt!470018)))))

(declare-fun b!1407863 () Bool)

(declare-fun res!637579 () Bool)

(assert (=> b!1407863 (=> res!637579 e!898710)))

(assert (=> b!1407863 (= res!637579 (not (contains!2838 lt!470008 lt!470026)))))

(declare-fun b!1407864 () Bool)

(assert (=> b!1407864 (= e!898726 false)))

(declare-fun b!1407865 () Bool)

(declare-fun res!637572 () Bool)

(assert (=> b!1407865 (=> res!637572 e!898736)))

(assert (=> b!1407865 (= res!637572 (not (matchR!1790 (regex!2485 (rule!4248 t2!34)) lt!470011)))))

(declare-fun bm!93852 () Bool)

(assert (=> bm!93852 (= call!93848 call!93844)))

(declare-fun b!1407866 () Bool)

(assert (=> b!1407866 (= e!898720 e!898706)))

(declare-fun res!637554 () Bool)

(assert (=> b!1407866 (=> res!637554 e!898706)))

(declare-fun contains!2839 (List!14408 Regex!3799) Bool)

(assert (=> b!1407866 (= res!637554 (not (contains!2839 (map!3188 rules!2550 lambda!62260) lt!470004)))))

(declare-fun getWitness!503 (List!14408 Int) Regex!3799)

(assert (=> b!1407866 (= lt!470004 (getWitness!503 (map!3188 rules!2550 lambda!62260) lambda!62261))))

(assert (=> b!1407867 (= e!898735 e!898736)))

(declare-fun res!637582 () Bool)

(assert (=> b!1407867 (=> res!637582 e!898736)))

(assert (=> b!1407867 (= res!637582 (not (matchR!1790 (regex!2485 (rule!4248 t1!34)) lt!470024)))))

(declare-fun lt!470012 () Unit!20715)

(declare-fun forallContained!680 (List!14406 Int Rule!4770) Unit!20715)

(assert (=> b!1407867 (= lt!470012 (forallContained!680 rules!2550 lambda!62263 (rule!4248 t2!34)))))

(declare-fun lt!470019 () Unit!20715)

(assert (=> b!1407867 (= lt!470019 (forallContained!680 rules!2550 lambda!62263 (rule!4248 t1!34)))))

(declare-fun lt!469997 () Unit!20715)

(assert (=> b!1407867 (= lt!469997 (forallContained!680 rules!2550 lambda!62263 lt!470007))))

(assert (= (and start!128418 res!637565) b!1407824))

(assert (= (and b!1407824 res!637580) b!1407851))

(assert (= (and b!1407851 res!637560) b!1407840))

(assert (= (and b!1407840 res!637584) b!1407810))

(assert (= (and b!1407810 res!637553) b!1407819))

(assert (= (and b!1407819 res!637570) b!1407849))

(assert (= (and b!1407849 res!637583) b!1407832))

(assert (= (and b!1407832 res!637566) b!1407858))

(assert (= (and b!1407858 res!637576) b!1407811))

(assert (= (and b!1407811 res!637561) b!1407826))

(assert (= (and b!1407826 (not res!637567)) b!1407831))

(assert (= (and b!1407831 (not res!637557)) b!1407854))

(assert (= (and b!1407854 (not res!637549)) b!1407862))

(assert (= (and b!1407862 (not res!637585)) b!1407863))

(assert (= (and b!1407863 (not res!637579)) b!1407861))

(assert (= (and b!1407861 (not res!637573)) b!1407822))

(assert (= (and b!1407822 (not res!637562)) b!1407817))

(assert (= (and b!1407817 (not res!637574)) b!1407866))

(assert (= (and b!1407866 (not res!637554)) b!1407830))

(assert (= (and b!1407830 (not res!637568)) b!1407814))

(assert (= (and b!1407814 (not res!637578)) b!1407845))

(assert (= (and b!1407845 (not res!637569)) b!1407839))

(assert (= (and b!1407839 (not res!637558)) b!1407812))

(assert (= (and b!1407812 (not res!637571)) b!1407820))

(assert (= (and b!1407820 (not res!637577)) b!1407838))

(assert (= (and b!1407838 (not res!637556)) b!1407827))

(assert (= (and b!1407827 (not res!637548)) b!1407821))

(assert (= (and b!1407821 (not res!637550)) b!1407848))

(assert (= (and b!1407848 (not res!637564)) b!1407852))

(assert (= (and b!1407852 (not res!637551)) b!1407813))

(assert (= (and b!1407813 (not res!637563)) b!1407867))

(assert (= (and b!1407867 (not res!637582)) b!1407865))

(assert (= (and b!1407865 (not res!637572)) b!1407825))

(assert (= (and b!1407825 c!231443) b!1407816))

(assert (= (and b!1407825 (not c!231443)) b!1407829))

(assert (= (and b!1407825 (not res!637581)) b!1407846))

(assert (= (and b!1407846 c!231441) b!1407818))

(assert (= (and b!1407846 (not c!231441)) b!1407855))

(assert (= (and b!1407846 (not res!637555)) b!1407815))

(assert (= (and b!1407815 c!231439) b!1407844))

(assert (= (and b!1407815 (not c!231439)) b!1407857))

(assert (= (and b!1407844 c!231440) b!1407859))

(assert (= (and b!1407844 (not c!231440)) b!1407836))

(assert (= (and b!1407859 res!637552) b!1407853))

(assert (= (and b!1407836 res!637559) b!1407847))

(assert (= (or b!1407859 b!1407836) bm!93852))

(assert (= (or b!1407859 b!1407836) bm!93850))

(assert (= (or b!1407859 b!1407836) bm!93849))

(assert (= (or b!1407859 b!1407836) bm!93843))

(assert (= (or b!1407859 b!1407836) bm!93840))

(assert (= (and b!1407857 c!231442) b!1407842))

(assert (= (and b!1407857 (not c!231442)) b!1407841))

(assert (= (and b!1407842 res!637575) b!1407864))

(assert (= (and b!1407841 res!637547) b!1407835))

(assert (= (or b!1407842 b!1407841) bm!93839))

(assert (= (or b!1407842 b!1407841) bm!93846))

(assert (= (or b!1407842 b!1407841) bm!93842))

(assert (= (or b!1407842 b!1407841) bm!93841))

(assert (= (or b!1407842 b!1407841) bm!93845))

(assert (= (or bm!93840 bm!93845) bm!93848))

(assert (= (or bm!93849 bm!93842) bm!93851))

(assert (= (or bm!93850 bm!93839) bm!93847))

(assert (= (or bm!93852 bm!93846) bm!93844))

(assert (= b!1407837 b!1407850))

(assert (= b!1407823 b!1407837))

(assert (= (and start!128418 ((_ is Cons!14340) rules!2550)) b!1407823))

(assert (= b!1407843 b!1407860))

(assert (= b!1407833 b!1407843))

(assert (= start!128418 b!1407833))

(assert (= b!1407856 b!1407834))

(assert (= b!1407828 b!1407856))

(assert (= start!128418 b!1407828))

(declare-fun m!1585517 () Bool)

(assert (=> b!1407822 m!1585517))

(declare-fun m!1585519 () Bool)

(assert (=> b!1407821 m!1585519))

(assert (=> b!1407821 m!1585519))

(declare-fun m!1585521 () Bool)

(assert (=> b!1407821 m!1585521))

(declare-fun m!1585523 () Bool)

(assert (=> b!1407840 m!1585523))

(declare-fun m!1585525 () Bool)

(assert (=> b!1407858 m!1585525))

(declare-fun m!1585527 () Bool)

(assert (=> b!1407867 m!1585527))

(declare-fun m!1585529 () Bool)

(assert (=> b!1407867 m!1585529))

(declare-fun m!1585531 () Bool)

(assert (=> b!1407867 m!1585531))

(declare-fun m!1585533 () Bool)

(assert (=> b!1407867 m!1585533))

(declare-fun m!1585535 () Bool)

(assert (=> bm!93848 m!1585535))

(declare-fun m!1585537 () Bool)

(assert (=> b!1407851 m!1585537))

(declare-fun m!1585539 () Bool)

(assert (=> b!1407865 m!1585539))

(declare-fun m!1585541 () Bool)

(assert (=> bm!93841 m!1585541))

(declare-fun m!1585543 () Bool)

(assert (=> b!1407848 m!1585543))

(declare-fun m!1585545 () Bool)

(assert (=> b!1407848 m!1585545))

(declare-fun m!1585547 () Bool)

(assert (=> start!128418 m!1585547))

(declare-fun m!1585549 () Bool)

(assert (=> start!128418 m!1585549))

(declare-fun m!1585551 () Bool)

(assert (=> b!1407839 m!1585551))

(assert (=> b!1407839 m!1585551))

(declare-fun m!1585553 () Bool)

(assert (=> b!1407839 m!1585553))

(declare-fun m!1585555 () Bool)

(assert (=> b!1407824 m!1585555))

(declare-fun m!1585557 () Bool)

(assert (=> b!1407818 m!1585557))

(assert (=> b!1407818 m!1585557))

(declare-fun m!1585559 () Bool)

(assert (=> b!1407818 m!1585559))

(declare-fun m!1585561 () Bool)

(assert (=> b!1407814 m!1585561))

(declare-fun m!1585563 () Bool)

(assert (=> b!1407814 m!1585563))

(assert (=> b!1407814 m!1585561))

(declare-fun m!1585565 () Bool)

(assert (=> b!1407814 m!1585565))

(declare-fun m!1585567 () Bool)

(assert (=> b!1407814 m!1585567))

(declare-fun m!1585569 () Bool)

(assert (=> b!1407814 m!1585569))

(declare-fun m!1585571 () Bool)

(assert (=> b!1407816 m!1585571))

(assert (=> b!1407816 m!1585571))

(declare-fun m!1585573 () Bool)

(assert (=> b!1407816 m!1585573))

(declare-fun m!1585575 () Bool)

(assert (=> b!1407831 m!1585575))

(assert (=> b!1407831 m!1585575))

(declare-fun m!1585577 () Bool)

(assert (=> b!1407831 m!1585577))

(declare-fun m!1585579 () Bool)

(assert (=> b!1407831 m!1585579))

(declare-fun m!1585581 () Bool)

(assert (=> b!1407846 m!1585581))

(assert (=> b!1407846 m!1585581))

(declare-fun m!1585583 () Bool)

(assert (=> b!1407846 m!1585583))

(declare-fun m!1585585 () Bool)

(assert (=> b!1407812 m!1585585))

(declare-fun m!1585587 () Bool)

(assert (=> b!1407866 m!1585587))

(assert (=> b!1407866 m!1585587))

(declare-fun m!1585589 () Bool)

(assert (=> b!1407866 m!1585589))

(assert (=> b!1407866 m!1585587))

(assert (=> b!1407866 m!1585587))

(declare-fun m!1585591 () Bool)

(assert (=> b!1407866 m!1585591))

(declare-fun m!1585593 () Bool)

(assert (=> b!1407845 m!1585593))

(declare-fun m!1585595 () Bool)

(assert (=> b!1407817 m!1585595))

(assert (=> b!1407817 m!1585587))

(assert (=> b!1407817 m!1585587))

(declare-fun m!1585597 () Bool)

(assert (=> b!1407817 m!1585597))

(assert (=> b!1407817 m!1585587))

(declare-fun m!1585599 () Bool)

(assert (=> b!1407817 m!1585599))

(declare-fun m!1585601 () Bool)

(assert (=> b!1407828 m!1585601))

(declare-fun m!1585603 () Bool)

(assert (=> b!1407832 m!1585603))

(declare-fun m!1585605 () Bool)

(assert (=> b!1407849 m!1585605))

(declare-fun m!1585607 () Bool)

(assert (=> b!1407849 m!1585607))

(declare-fun m!1585609 () Bool)

(assert (=> b!1407820 m!1585609))

(declare-fun m!1585611 () Bool)

(assert (=> b!1407856 m!1585611))

(declare-fun m!1585613 () Bool)

(assert (=> b!1407856 m!1585613))

(declare-fun m!1585615 () Bool)

(assert (=> bm!93844 m!1585615))

(declare-fun m!1585617 () Bool)

(assert (=> b!1407862 m!1585617))

(declare-fun m!1585619 () Bool)

(assert (=> b!1407833 m!1585619))

(declare-fun m!1585621 () Bool)

(assert (=> b!1407861 m!1585621))

(declare-fun m!1585623 () Bool)

(assert (=> bm!93847 m!1585623))

(declare-fun m!1585625 () Bool)

(assert (=> b!1407838 m!1585625))

(declare-fun m!1585627 () Bool)

(assert (=> b!1407838 m!1585627))

(declare-fun m!1585629 () Bool)

(assert (=> b!1407838 m!1585629))

(assert (=> b!1407838 m!1585629))

(declare-fun m!1585631 () Bool)

(assert (=> b!1407838 m!1585631))

(declare-fun m!1585633 () Bool)

(assert (=> b!1407854 m!1585633))

(declare-fun m!1585635 () Bool)

(assert (=> b!1407854 m!1585635))

(declare-fun m!1585637 () Bool)

(assert (=> b!1407837 m!1585637))

(declare-fun m!1585639 () Bool)

(assert (=> b!1407837 m!1585639))

(declare-fun m!1585641 () Bool)

(assert (=> b!1407827 m!1585641))

(declare-fun m!1585643 () Bool)

(assert (=> b!1407843 m!1585643))

(declare-fun m!1585645 () Bool)

(assert (=> b!1407843 m!1585645))

(declare-fun m!1585647 () Bool)

(assert (=> b!1407826 m!1585647))

(assert (=> b!1407826 m!1585647))

(declare-fun m!1585649 () Bool)

(assert (=> b!1407826 m!1585649))

(declare-fun m!1585651 () Bool)

(assert (=> b!1407825 m!1585651))

(assert (=> b!1407825 m!1585651))

(declare-fun m!1585653 () Bool)

(assert (=> b!1407825 m!1585653))

(declare-fun m!1585655 () Bool)

(assert (=> b!1407811 m!1585655))

(declare-fun m!1585657 () Bool)

(assert (=> b!1407811 m!1585657))

(declare-fun m!1585659 () Bool)

(assert (=> b!1407811 m!1585659))

(declare-fun m!1585661 () Bool)

(assert (=> b!1407811 m!1585661))

(declare-fun m!1585663 () Bool)

(assert (=> b!1407811 m!1585663))

(declare-fun m!1585665 () Bool)

(assert (=> b!1407811 m!1585665))

(declare-fun m!1585667 () Bool)

(assert (=> b!1407813 m!1585667))

(declare-fun m!1585669 () Bool)

(assert (=> b!1407852 m!1585669))

(declare-fun m!1585671 () Bool)

(assert (=> bm!93851 m!1585671))

(declare-fun m!1585673 () Bool)

(assert (=> b!1407863 m!1585673))

(declare-fun m!1585675 () Bool)

(assert (=> b!1407830 m!1585675))

(assert (=> b!1407830 m!1585675))

(declare-fun m!1585677 () Bool)

(assert (=> b!1407830 m!1585677))

(declare-fun m!1585679 () Bool)

(assert (=> b!1407810 m!1585679))

(declare-fun m!1585681 () Bool)

(assert (=> bm!93843 m!1585681))

(check-sat (not b_next!35091) (not bm!93848) (not b!1407828) (not b_next!35093) (not b!1407826) (not b!1407822) b_and!94269 (not bm!93843) (not b!1407810) (not b!1407833) (not b!1407848) (not b!1407866) (not b!1407852) (not b!1407865) (not b!1407846) (not b!1407811) (not b!1407856) (not b!1407820) b_and!94263 (not b!1407858) (not b!1407854) (not b!1407862) (not b!1407825) (not b!1407861) (not b!1407823) b_and!94267 (not b!1407817) (not bm!93841) (not b!1407813) (not b_next!35101) (not b!1407814) (not b!1407816) (not b!1407863) (not b!1407843) (not b_next!35099) (not b!1407821) (not b_next!35097) (not b!1407832) (not b!1407818) (not b_next!35095) (not b!1407845) b_and!94265 (not b!1407812) (not b!1407837) b_and!94259 (not b!1407838) (not bm!93844) (not b!1407867) (not b!1407839) (not b!1407824) (not start!128418) (not b!1407849) (not b!1407827) b_and!94261 (not bm!93851) (not b!1407840) (not b!1407831) (not b!1407830) (not b!1407851) (not bm!93847))
(check-sat (not b_next!35091) b_and!94263 (not b_next!35093) b_and!94267 (not b_next!35101) b_and!94269 (not b_next!35095) b_and!94265 b_and!94259 b_and!94261 (not b_next!35099) (not b_next!35097))

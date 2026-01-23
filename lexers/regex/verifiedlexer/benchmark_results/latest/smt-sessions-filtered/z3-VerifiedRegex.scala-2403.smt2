; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124622 () Bool)

(assert start!124622)

(declare-fun b!1377302 () Bool)

(declare-fun b_free!33371 () Bool)

(declare-fun b_next!34075 () Bool)

(assert (=> b!1377302 (= b_free!33371 (not b_next!34075))))

(declare-fun tp!394770 () Bool)

(declare-fun b_and!92251 () Bool)

(assert (=> b!1377302 (= tp!394770 b_and!92251)))

(declare-fun b_free!33373 () Bool)

(declare-fun b_next!34077 () Bool)

(assert (=> b!1377302 (= b_free!33373 (not b_next!34077))))

(declare-fun tp!394778 () Bool)

(declare-fun b_and!92253 () Bool)

(assert (=> b!1377302 (= tp!394778 b_and!92253)))

(declare-fun b!1377290 () Bool)

(declare-fun b_free!33375 () Bool)

(declare-fun b_next!34079 () Bool)

(assert (=> b!1377290 (= b_free!33375 (not b_next!34079))))

(declare-fun tp!394773 () Bool)

(declare-fun b_and!92255 () Bool)

(assert (=> b!1377290 (= tp!394773 b_and!92255)))

(declare-fun b_free!33377 () Bool)

(declare-fun b_next!34081 () Bool)

(assert (=> b!1377290 (= b_free!33377 (not b_next!34081))))

(declare-fun tp!394769 () Bool)

(declare-fun b_and!92257 () Bool)

(assert (=> b!1377290 (= tp!394769 b_and!92257)))

(declare-fun b!1377281 () Bool)

(declare-fun b_free!33379 () Bool)

(declare-fun b_next!34083 () Bool)

(assert (=> b!1377281 (= b_free!33379 (not b_next!34083))))

(declare-fun tp!394779 () Bool)

(declare-fun b_and!92259 () Bool)

(assert (=> b!1377281 (= tp!394779 b_and!92259)))

(declare-fun b_free!33381 () Bool)

(declare-fun b_next!34085 () Bool)

(assert (=> b!1377281 (= b_free!33381 (not b_next!34085))))

(declare-fun tp!394780 () Bool)

(declare-fun b_and!92261 () Bool)

(assert (=> b!1377281 (= tp!394780 b_and!92261)))

(declare-fun b!1377287 () Bool)

(assert (=> b!1377287 true))

(assert (=> b!1377287 true))

(declare-fun b!1377312 () Bool)

(assert (=> b!1377312 true))

(declare-fun b!1377278 () Bool)

(assert (=> b!1377278 true))

(declare-fun bs!336332 () Bool)

(declare-fun b!1377292 () Bool)

(assert (= bs!336332 (and b!1377292 b!1377278)))

(declare-fun lambda!58809 () Int)

(declare-fun lambda!58808 () Int)

(assert (=> bs!336332 (not (= lambda!58809 lambda!58808))))

(assert (=> b!1377292 true))

(declare-fun b!1377269 () Bool)

(declare-fun res!620881 () Bool)

(declare-fun e!880106 () Bool)

(assert (=> b!1377269 (=> (not res!620881) (not e!880106))))

(declare-datatypes ((LexerInterface!2110 0))(
  ( (LexerInterfaceExt!2107 (__x!8839 Int)) (Lexer!2108) )
))
(declare-fun thiss!19762 () LexerInterface!2110)

(declare-datatypes ((List!14012 0))(
  ( (Nil!13946) (Cons!13946 (h!19347 (_ BitVec 16)) (t!121825 List!14012)) )
))
(declare-datatypes ((TokenValue!2505 0))(
  ( (FloatLiteralValue!5010 (text!17980 List!14012)) (TokenValueExt!2504 (__x!8840 Int)) (Broken!12525 (value!78434 List!14012)) (Object!2570) (End!2505) (Def!2505) (Underscore!2505) (Match!2505) (Else!2505) (Error!2505) (Case!2505) (If!2505) (Extends!2505) (Abstract!2505) (Class!2505) (Val!2505) (DelimiterValue!5010 (del!2565 List!14012)) (KeywordValue!2511 (value!78435 List!14012)) (CommentValue!5010 (value!78436 List!14012)) (WhitespaceValue!5010 (value!78437 List!14012)) (IndentationValue!2505 (value!78438 List!14012)) (String!16760) (Int32!2505) (Broken!12526 (value!78439 List!14012)) (Boolean!2506) (Unit!20200) (OperatorValue!2508 (op!2565 List!14012)) (IdentifierValue!5010 (value!78440 List!14012)) (IdentifierValue!5011 (value!78441 List!14012)) (WhitespaceValue!5011 (value!78442 List!14012)) (True!5010) (False!5010) (Broken!12527 (value!78443 List!14012)) (Broken!12528 (value!78444 List!14012)) (True!5011) (RightBrace!2505) (RightBracket!2505) (Colon!2505) (Null!2505) (Comma!2505) (LeftBracket!2505) (False!5011) (LeftBrace!2505) (ImaginaryLiteralValue!2505 (text!17981 List!14012)) (StringLiteralValue!7515 (value!78445 List!14012)) (EOFValue!2505 (value!78446 List!14012)) (IdentValue!2505 (value!78447 List!14012)) (DelimiterValue!5011 (value!78448 List!14012)) (DedentValue!2505 (value!78449 List!14012)) (NewLineValue!2505 (value!78450 List!14012)) (IntegerValue!7515 (value!78451 (_ BitVec 32)) (text!17982 List!14012)) (IntegerValue!7516 (value!78452 Int) (text!17983 List!14012)) (Times!2505) (Or!2505) (Equal!2505) (Minus!2505) (Broken!12529 (value!78453 List!14012)) (And!2505) (Div!2505) (LessEqual!2505) (Mod!2505) (Concat!6234) (Not!2505) (Plus!2505) (SpaceValue!2505 (value!78454 List!14012)) (IntegerValue!7517 (value!78455 Int) (text!17984 List!14012)) (StringLiteralValue!7516 (text!17985 List!14012)) (FloatLiteralValue!5011 (text!17986 List!14012)) (BytesLiteralValue!2505 (value!78456 List!14012)) (CommentValue!5011 (value!78457 List!14012)) (StringLiteralValue!7517 (value!78458 List!14012)) (ErrorTokenValue!2505 (msg!2566 List!14012)) )
))
(declare-datatypes ((C!7748 0))(
  ( (C!7749 (val!4434 Int)) )
))
(declare-datatypes ((List!14013 0))(
  ( (Nil!13947) (Cons!13947 (h!19348 C!7748) (t!121826 List!14013)) )
))
(declare-datatypes ((IArray!9189 0))(
  ( (IArray!9190 (innerList!4652 List!14013)) )
))
(declare-datatypes ((String!16761 0))(
  ( (String!16762 (value!78459 String)) )
))
(declare-datatypes ((Conc!4592 0))(
  ( (Node!4592 (left!11929 Conc!4592) (right!12259 Conc!4592) (csize!9414 Int) (cheight!4803 Int)) (Leaf!6996 (xs!7319 IArray!9189) (csize!9415 Int)) (Empty!4592) )
))
(declare-datatypes ((BalanceConc!9124 0))(
  ( (BalanceConc!9125 (c!226702 Conc!4592)) )
))
(declare-datatypes ((Regex!3729 0))(
  ( (ElementMatch!3729 (c!226703 C!7748)) (Concat!6235 (regOne!7970 Regex!3729) (regTwo!7970 Regex!3729)) (EmptyExpr!3729) (Star!3729 (reg!4058 Regex!3729)) (EmptyLang!3729) (Union!3729 (regOne!7971 Regex!3729) (regTwo!7971 Regex!3729)) )
))
(declare-datatypes ((TokenValueInjection!4670 0))(
  ( (TokenValueInjection!4671 (toValue!3690 Int) (toChars!3549 Int)) )
))
(declare-datatypes ((Rule!4630 0))(
  ( (Rule!4631 (regex!2415 Regex!3729) (tag!2677 String!16761) (isSeparator!2415 Bool) (transformation!2415 TokenValueInjection!4670)) )
))
(declare-datatypes ((List!14014 0))(
  ( (Nil!13948) (Cons!13948 (h!19349 Rule!4630) (t!121827 List!14014)) )
))
(declare-fun rules!2550 () List!14014)

(declare-datatypes ((Token!4492 0))(
  ( (Token!4493 (value!78460 TokenValue!2505) (rule!4174 Rule!4630) (size!11439 Int) (originalCharacters!3277 List!14013)) )
))
(declare-fun t2!34 () Token!4492)

(declare-fun t1!34 () Token!4492)

(declare-fun separableTokensPredicate!393 (LexerInterface!2110 Token!4492 Token!4492 List!14014) Bool)

(assert (=> b!1377269 (= res!620881 (not (separableTokensPredicate!393 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1377270 () Bool)

(declare-fun res!620877 () Bool)

(declare-fun e!880102 () Bool)

(assert (=> b!1377270 (=> (not res!620877) (not e!880102))))

(declare-fun isEmpty!8418 (List!14014) Bool)

(assert (=> b!1377270 (= res!620877 (not (isEmpty!8418 rules!2550)))))

(declare-fun b!1377271 () Bool)

(declare-fun res!620867 () Bool)

(assert (=> b!1377271 (=> (not res!620867) (not e!880102))))

(assert (=> b!1377271 (= res!620867 (not (= (isSeparator!2415 (rule!4174 t1!34)) (isSeparator!2415 (rule!4174 t2!34)))))))

(declare-fun b!1377272 () Bool)

(declare-fun e!880101 () Bool)

(declare-fun e!880117 () Bool)

(assert (=> b!1377272 (= e!880101 e!880117)))

(declare-fun res!620883 () Bool)

(assert (=> b!1377272 (=> res!620883 e!880117)))

(declare-datatypes ((List!14015 0))(
  ( (Nil!13949) (Cons!13949 (h!19350 Token!4492) (t!121828 List!14015)) )
))
(declare-datatypes ((IArray!9191 0))(
  ( (IArray!9192 (innerList!4653 List!14015)) )
))
(declare-datatypes ((Conc!4593 0))(
  ( (Node!4593 (left!11930 Conc!4593) (right!12260 Conc!4593) (csize!9416 Int) (cheight!4804 Int)) (Leaf!6997 (xs!7320 IArray!9191) (csize!9417 Int)) (Empty!4593) )
))
(declare-datatypes ((BalanceConc!9126 0))(
  ( (BalanceConc!9127 (c!226704 Conc!4593)) )
))
(declare-datatypes ((tuple2!13562 0))(
  ( (tuple2!13563 (_1!7667 BalanceConc!9126) (_2!7667 BalanceConc!9124)) )
))
(declare-fun lt!457887 () tuple2!13562)

(declare-fun lt!457871 () List!14015)

(declare-fun list!5386 (BalanceConc!9126) List!14015)

(assert (=> b!1377272 (= res!620883 (not (= (list!5386 (_1!7667 lt!457887)) lt!457871)))))

(assert (=> b!1377272 (= lt!457871 (Cons!13949 t2!34 Nil!13949))))

(declare-fun lt!457877 () BalanceConc!9124)

(declare-fun lex!937 (LexerInterface!2110 List!14014 BalanceConc!9124) tuple2!13562)

(assert (=> b!1377272 (= lt!457887 (lex!937 thiss!19762 rules!2550 lt!457877))))

(declare-fun print!876 (LexerInterface!2110 BalanceConc!9126) BalanceConc!9124)

(declare-fun singletonSeq!1050 (Token!4492) BalanceConc!9126)

(assert (=> b!1377272 (= lt!457877 (print!876 thiss!19762 (singletonSeq!1050 t2!34)))))

(declare-fun b!1377273 () Bool)

(declare-fun res!620854 () Bool)

(declare-fun e!880109 () Bool)

(assert (=> b!1377273 (=> res!620854 e!880109)))

(declare-fun lt!457880 () List!14013)

(declare-fun lt!457890 () C!7748)

(declare-fun contains!2633 (List!14013 C!7748) Bool)

(assert (=> b!1377273 (= res!620854 (not (contains!2633 lt!457880 lt!457890)))))

(declare-fun e!880105 () Bool)

(declare-fun tp!394776 () Bool)

(declare-fun b!1377274 () Bool)

(declare-fun e!880125 () Bool)

(declare-fun inv!18296 (String!16761) Bool)

(declare-fun inv!18299 (TokenValueInjection!4670) Bool)

(assert (=> b!1377274 (= e!880125 (and tp!394776 (inv!18296 (tag!2677 (rule!4174 t2!34))) (inv!18299 (transformation!2415 (rule!4174 t2!34))) e!880105))))

(declare-fun b!1377275 () Bool)

(declare-fun e!880114 () Bool)

(assert (=> b!1377275 (= e!880114 e!880109)))

(declare-fun res!620879 () Bool)

(assert (=> b!1377275 (=> res!620879 e!880109)))

(declare-fun lt!457889 () List!14013)

(declare-fun lt!457878 () C!7748)

(assert (=> b!1377275 (= res!620879 (not (contains!2633 lt!457889 lt!457878)))))

(declare-fun lt!457879 () BalanceConc!9124)

(declare-fun apply!3445 (BalanceConc!9124 Int) C!7748)

(assert (=> b!1377275 (= lt!457878 (apply!3445 lt!457879 0))))

(declare-fun tp!394771 () Bool)

(declare-fun b!1377276 () Bool)

(declare-fun e!880110 () Bool)

(declare-fun e!880115 () Bool)

(declare-fun inv!21 (TokenValue!2505) Bool)

(assert (=> b!1377276 (= e!880110 (and (inv!21 (value!78460 t1!34)) e!880115 tp!394771))))

(declare-fun b!1377277 () Bool)

(declare-fun res!620880 () Bool)

(assert (=> b!1377277 (=> res!620880 e!880117)))

(declare-fun isEmpty!8419 (BalanceConc!9124) Bool)

(assert (=> b!1377277 (= res!620880 (not (isEmpty!8419 (_2!7667 lt!457887))))))

(declare-fun e!880124 () Bool)

(declare-fun e!880116 () Bool)

(assert (=> b!1377278 (= e!880124 e!880116)))

(declare-fun res!620859 () Bool)

(assert (=> b!1377278 (=> res!620859 e!880116)))

(declare-fun exists!488 (List!14014 Int) Bool)

(assert (=> b!1377278 (= res!620859 (not (exists!488 rules!2550 lambda!58808)))))

(assert (=> b!1377278 (exists!488 rules!2550 lambda!58808)))

(declare-datatypes ((Unit!20201 0))(
  ( (Unit!20202) )
))
(declare-fun lt!457864 () Unit!20201)

(declare-fun lambda!58806 () Int)

(declare-fun lt!457862 () Regex!3729)

(declare-fun lemmaMapContains!134 (List!14014 Int Regex!3729) Unit!20201)

(assert (=> b!1377278 (= lt!457864 (lemmaMapContains!134 rules!2550 lambda!58806 lt!457862))))

(declare-fun b!1377279 () Bool)

(declare-fun res!620864 () Bool)

(assert (=> b!1377279 (=> res!620864 e!880109)))

(assert (=> b!1377279 (= res!620864 (not (contains!2633 lt!457889 lt!457890)))))

(declare-fun b!1377280 () Bool)

(declare-fun e!880126 () Bool)

(declare-fun e!880100 () Bool)

(assert (=> b!1377280 (= e!880126 e!880100)))

(declare-fun res!620866 () Bool)

(assert (=> b!1377280 (=> res!620866 e!880100)))

(declare-fun lt!457868 () Bool)

(assert (=> b!1377280 (= res!620866 lt!457868)))

(declare-fun lt!457869 () Unit!20201)

(declare-fun e!880119 () Unit!20201)

(assert (=> b!1377280 (= lt!457869 e!880119)))

(declare-fun c!226700 () Bool)

(assert (=> b!1377280 (= c!226700 lt!457868)))

(declare-fun usedCharacters!234 (Regex!3729) List!14013)

(assert (=> b!1377280 (= lt!457868 (not (contains!2633 (usedCharacters!234 (regex!2415 (rule!4174 t1!34))) lt!457878)))))

(assert (=> b!1377281 (= e!880105 (and tp!394779 tp!394780))))

(declare-fun b!1377282 () Bool)

(declare-fun e!880108 () Bool)

(assert (=> b!1377282 (= e!880108 true)))

(declare-fun lt!457863 () Rule!4630)

(assert (=> b!1377282 (not (contains!2633 (usedCharacters!234 (regex!2415 lt!457863)) lt!457878))))

(declare-fun lt!457884 () Unit!20201)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!122 (LexerInterface!2110 List!14014 List!14014 Rule!4630 Rule!4630 C!7748) Unit!20201)

(assert (=> b!1377282 (= lt!457884 (lemmaSepRuleNotContainsCharContainedInANonSepRule!122 thiss!19762 rules!2550 rules!2550 (rule!4174 t1!34) lt!457863 lt!457878))))

(declare-fun b!1377283 () Bool)

(declare-fun e!880104 () Bool)

(assert (=> b!1377283 (= e!880104 e!880114)))

(declare-fun res!620869 () Bool)

(assert (=> b!1377283 (=> res!620869 e!880114)))

(declare-fun ++!3612 (List!14013 List!14013) List!14013)

(declare-fun getSuffix!577 (List!14013 List!14013) List!14013)

(assert (=> b!1377283 (= res!620869 (not (= lt!457880 (++!3612 lt!457889 (getSuffix!577 lt!457880 lt!457889)))))))

(declare-fun lambda!58805 () Int)

(declare-fun pickWitness!184 (Int) List!14013)

(assert (=> b!1377283 (= lt!457880 (pickWitness!184 lambda!58805))))

(declare-fun b!1377284 () Bool)

(declare-fun e!880112 () Unit!20201)

(declare-fun Unit!20203 () Unit!20201)

(assert (=> b!1377284 (= e!880112 Unit!20203)))

(declare-fun lt!457865 () Unit!20201)

(declare-fun lt!457870 () List!14013)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!174 (Regex!3729 List!14013 C!7748) Unit!20201)

(declare-fun head!2489 (List!14013) C!7748)

(assert (=> b!1377284 (= lt!457865 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!174 (regex!2415 (rule!4174 t2!34)) lt!457870 (head!2489 lt!457870)))))

(assert (=> b!1377284 false))

(declare-fun b!1377285 () Bool)

(declare-fun e!880118 () Bool)

(assert (=> b!1377285 (= e!880118 e!880108)))

(declare-fun res!620874 () Bool)

(assert (=> b!1377285 (=> res!620874 e!880108)))

(assert (=> b!1377285 (= res!620874 (or (not (isSeparator!2415 lt!457863)) (isSeparator!2415 (rule!4174 t1!34))))))

(assert (=> b!1377285 (= (regex!2415 lt!457863) lt!457862)))

(declare-fun b!1377286 () Bool)

(assert (=> b!1377286 (= e!880116 e!880101)))

(declare-fun res!620858 () Bool)

(assert (=> b!1377286 (=> res!620858 e!880101)))

(declare-fun lt!457886 () tuple2!13562)

(declare-fun lt!457881 () List!14015)

(assert (=> b!1377286 (= res!620858 (not (= (list!5386 (_1!7667 lt!457886)) lt!457881)))))

(assert (=> b!1377286 (= lt!457881 (Cons!13949 t1!34 Nil!13949))))

(declare-fun lt!457873 () BalanceConc!9124)

(assert (=> b!1377286 (= lt!457886 (lex!937 thiss!19762 rules!2550 lt!457873))))

(assert (=> b!1377286 (= lt!457873 (print!876 thiss!19762 (singletonSeq!1050 t1!34)))))

(declare-fun getWitness!376 (List!14014 Int) Rule!4630)

(assert (=> b!1377286 (= lt!457863 (getWitness!376 rules!2550 lambda!58808))))

(declare-fun e!880121 () Bool)

(assert (=> b!1377287 (= e!880121 (not e!880104))))

(declare-fun res!620851 () Bool)

(assert (=> b!1377287 (=> res!620851 e!880104)))

(declare-fun Exists!881 (Int) Bool)

(assert (=> b!1377287 (= res!620851 (not (Exists!881 lambda!58805)))))

(assert (=> b!1377287 (Exists!881 lambda!58805)))

(declare-fun lt!457866 () Unit!20201)

(declare-fun lt!457882 () Regex!3729)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!199 (Regex!3729 List!14013) Unit!20201)

(assert (=> b!1377287 (= lt!457866 (lemmaPrefixMatchThenExistsStringThatMatches!199 lt!457882 lt!457889))))

(declare-fun b!1377288 () Bool)

(declare-fun res!620861 () Bool)

(assert (=> b!1377288 (=> res!620861 e!880101)))

(declare-datatypes ((tuple2!13564 0))(
  ( (tuple2!13565 (_1!7668 List!14015) (_2!7668 List!14013)) )
))
(declare-fun lexList!628 (LexerInterface!2110 List!14014 List!14013) tuple2!13564)

(declare-fun list!5387 (BalanceConc!9124) List!14013)

(assert (=> b!1377288 (= res!620861 (not (= (lexList!628 thiss!19762 rules!2550 (list!5387 lt!457873)) (tuple2!13565 lt!457881 Nil!13947))))))

(declare-fun b!1377289 () Bool)

(declare-fun e!880120 () Bool)

(assert (=> b!1377289 (= e!880117 e!880120)))

(declare-fun res!620876 () Bool)

(assert (=> b!1377289 (=> res!620876 e!880120)))

(declare-datatypes ((tuple2!13566 0))(
  ( (tuple2!13567 (_1!7669 Token!4492) (_2!7669 List!14013)) )
))
(declare-datatypes ((Option!2682 0))(
  ( (None!2681) (Some!2681 (v!21511 tuple2!13566)) )
))
(declare-fun maxPrefix!1092 (LexerInterface!2110 List!14014 List!14013) Option!2682)

(assert (=> b!1377289 (= res!620876 (not (= (maxPrefix!1092 thiss!19762 rules!2550 lt!457870) (Some!2681 (tuple2!13567 t2!34 Nil!13947)))))))

(declare-fun lt!457885 () BalanceConc!9124)

(assert (=> b!1377289 (= lt!457870 (list!5387 lt!457885))))

(declare-fun e!880127 () Bool)

(assert (=> b!1377290 (= e!880127 (and tp!394773 tp!394769))))

(declare-fun b!1377291 () Bool)

(assert (=> b!1377291 (= e!880102 e!880106)))

(declare-fun res!620855 () Bool)

(assert (=> b!1377291 (=> (not res!620855) (not e!880106))))

(declare-fun size!11440 (BalanceConc!9124) Int)

(assert (=> b!1377291 (= res!620855 (> (size!11440 lt!457885) 0))))

(declare-fun charsOf!1387 (Token!4492) BalanceConc!9124)

(assert (=> b!1377291 (= lt!457885 (charsOf!1387 t2!34))))

(assert (=> b!1377292 (= e!880120 e!880126)))

(declare-fun res!620863 () Bool)

(assert (=> b!1377292 (=> res!620863 e!880126)))

(declare-fun lt!457867 () List!14013)

(declare-fun matchR!1722 (Regex!3729 List!14013) Bool)

(assert (=> b!1377292 (= res!620863 (not (matchR!1722 (regex!2415 (rule!4174 t1!34)) lt!457867)))))

(declare-fun lt!457883 () Unit!20201)

(declare-fun forallContained!618 (List!14014 Int Rule!4630) Unit!20201)

(assert (=> b!1377292 (= lt!457883 (forallContained!618 rules!2550 lambda!58809 (rule!4174 t2!34)))))

(declare-fun lt!457876 () Unit!20201)

(assert (=> b!1377292 (= lt!457876 (forallContained!618 rules!2550 lambda!58809 (rule!4174 t1!34)))))

(declare-fun lt!457888 () Unit!20201)

(assert (=> b!1377292 (= lt!457888 (forallContained!618 rules!2550 lambda!58809 lt!457863))))

(declare-fun b!1377293 () Bool)

(declare-fun res!620865 () Bool)

(assert (=> b!1377293 (=> (not res!620865) (not e!880102))))

(declare-fun rulesProduceIndividualToken!1079 (LexerInterface!2110 List!14014 Token!4492) Bool)

(assert (=> b!1377293 (= res!620865 (rulesProduceIndividualToken!1079 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1377294 () Bool)

(declare-fun res!620882 () Bool)

(assert (=> b!1377294 (=> res!620882 e!880101)))

(declare-fun contains!2634 (List!14014 Rule!4630) Bool)

(assert (=> b!1377294 (= res!620882 (not (contains!2634 rules!2550 (rule!4174 t1!34))))))

(declare-fun b!1377295 () Bool)

(declare-fun res!620856 () Bool)

(assert (=> b!1377295 (=> res!620856 e!880120)))

(assert (=> b!1377295 (= res!620856 (not (contains!2634 rules!2550 (rule!4174 t2!34))))))

(declare-fun b!1377296 () Bool)

(assert (=> b!1377296 (= e!880106 e!880121)))

(declare-fun res!620873 () Bool)

(assert (=> b!1377296 (=> (not res!620873) (not e!880121))))

(declare-fun prefixMatch!238 (Regex!3729 List!14013) Bool)

(assert (=> b!1377296 (= res!620873 (prefixMatch!238 lt!457882 lt!457889))))

(declare-fun rulesRegex!298 (LexerInterface!2110 List!14014) Regex!3729)

(assert (=> b!1377296 (= lt!457882 (rulesRegex!298 thiss!19762 rules!2550))))

(assert (=> b!1377296 (= lt!457889 (++!3612 lt!457867 (Cons!13947 lt!457890 Nil!13947)))))

(assert (=> b!1377296 (= lt!457890 (apply!3445 lt!457885 0))))

(assert (=> b!1377296 (= lt!457867 (list!5387 lt!457879))))

(assert (=> b!1377296 (= lt!457879 (charsOf!1387 t1!34))))

(declare-fun b!1377297 () Bool)

(declare-fun res!620860 () Bool)

(assert (=> b!1377297 (=> res!620860 e!880109)))

(assert (=> b!1377297 (= res!620860 (not (matchR!1722 lt!457882 lt!457880)))))

(declare-fun b!1377298 () Bool)

(declare-fun res!620850 () Bool)

(assert (=> b!1377298 (=> res!620850 e!880101)))

(assert (=> b!1377298 (= res!620850 (not (isEmpty!8419 (_2!7667 lt!457886))))))

(declare-fun b!1377299 () Bool)

(declare-fun res!620878 () Bool)

(assert (=> b!1377299 (=> (not res!620878) (not e!880102))))

(declare-fun rulesInvariant!1980 (LexerInterface!2110 List!14014) Bool)

(assert (=> b!1377299 (= res!620878 (rulesInvariant!1980 thiss!19762 rules!2550))))

(declare-fun b!1377300 () Bool)

(declare-fun res!620862 () Bool)

(assert (=> b!1377300 (=> res!620862 e!880120)))

(assert (=> b!1377300 (= res!620862 (not (contains!2634 rules!2550 lt!457863)))))

(declare-fun b!1377301 () Bool)

(declare-fun Unit!20204 () Unit!20201)

(assert (=> b!1377301 (= e!880119 Unit!20204)))

(declare-fun lt!457860 () Unit!20201)

(assert (=> b!1377301 (= lt!457860 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!174 (regex!2415 (rule!4174 t1!34)) lt!457867 (head!2489 lt!457867)))))

(assert (=> b!1377301 false))

(declare-fun e!880113 () Bool)

(assert (=> b!1377302 (= e!880113 (and tp!394770 tp!394778))))

(declare-fun b!1377303 () Bool)

(declare-fun res!620870 () Bool)

(assert (=> b!1377303 (=> res!620870 e!880126)))

(assert (=> b!1377303 (= res!620870 (not (matchR!1722 (regex!2415 (rule!4174 t2!34)) lt!457870)))))

(declare-fun b!1377304 () Bool)

(declare-fun e!880103 () Bool)

(declare-fun tp!394774 () Bool)

(assert (=> b!1377304 (= e!880103 (and tp!394774 (inv!18296 (tag!2677 (h!19349 rules!2550))) (inv!18299 (transformation!2415 (h!19349 rules!2550))) e!880113))))

(declare-fun b!1377305 () Bool)

(declare-fun res!620872 () Bool)

(assert (=> b!1377305 (=> res!620872 e!880101)))

(assert (=> b!1377305 (= res!620872 (not (= (maxPrefix!1092 thiss!19762 rules!2550 lt!457867) (Some!2681 (tuple2!13567 t1!34 Nil!13947)))))))

(declare-fun b!1377306 () Bool)

(declare-fun res!620849 () Bool)

(assert (=> b!1377306 (=> res!620849 e!880109)))

(assert (=> b!1377306 (= res!620849 (not (contains!2633 lt!457880 lt!457878)))))

(declare-fun b!1377307 () Bool)

(declare-fun res!620868 () Bool)

(assert (=> b!1377307 (=> res!620868 e!880117)))

(assert (=> b!1377307 (= res!620868 (not (= (lexList!628 thiss!19762 rules!2550 (list!5387 lt!457877)) (tuple2!13565 lt!457871 Nil!13947))))))

(declare-fun tp!394772 () Bool)

(declare-fun b!1377308 () Bool)

(assert (=> b!1377308 (= e!880115 (and tp!394772 (inv!18296 (tag!2677 (rule!4174 t1!34))) (inv!18299 (transformation!2415 (rule!4174 t1!34))) e!880127))))

(declare-fun b!1377309 () Bool)

(declare-fun Unit!20205 () Unit!20201)

(assert (=> b!1377309 (= e!880112 Unit!20205)))

(declare-fun b!1377310 () Bool)

(declare-fun Unit!20206 () Unit!20201)

(assert (=> b!1377310 (= e!880119 Unit!20206)))

(declare-fun b!1377311 () Bool)

(declare-fun res!620875 () Bool)

(assert (=> b!1377311 (=> (not res!620875) (not e!880106))))

(declare-fun sepAndNonSepRulesDisjointChars!788 (List!14014 List!14014) Bool)

(assert (=> b!1377311 (= res!620875 (sepAndNonSepRulesDisjointChars!788 rules!2550 rules!2550))))

(declare-fun e!880107 () Bool)

(assert (=> b!1377312 (= e!880109 e!880107)))

(declare-fun res!620871 () Bool)

(assert (=> b!1377312 (=> res!620871 e!880107)))

(declare-fun lambda!58807 () Int)

(declare-datatypes ((List!14016 0))(
  ( (Nil!13950) (Cons!13950 (h!19351 Regex!3729) (t!121829 List!14016)) )
))
(declare-fun exists!489 (List!14016 Int) Bool)

(declare-fun map!3083 (List!14014 Int) List!14016)

(assert (=> b!1377312 (= res!620871 (not (exists!489 (map!3083 rules!2550 lambda!58806) lambda!58807)))))

(declare-fun lt!457861 () List!14016)

(assert (=> b!1377312 (exists!489 lt!457861 lambda!58807)))

(declare-fun lt!457872 () Unit!20201)

(declare-fun matchRGenUnionSpec!146 (Regex!3729 List!14016 List!14013) Unit!20201)

(assert (=> b!1377312 (= lt!457872 (matchRGenUnionSpec!146 lt!457882 lt!457861 lt!457880))))

(assert (=> b!1377312 (= lt!457861 (map!3083 rules!2550 lambda!58806))))

(declare-fun b!1377313 () Bool)

(declare-fun res!620848 () Bool)

(assert (=> b!1377313 (=> (not res!620848) (not e!880102))))

(assert (=> b!1377313 (= res!620848 (rulesProduceIndividualToken!1079 thiss!19762 rules!2550 t2!34))))

(declare-fun res!620853 () Bool)

(assert (=> start!124622 (=> (not res!620853) (not e!880102))))

(get-info :version)

(assert (=> start!124622 (= res!620853 ((_ is Lexer!2108) thiss!19762))))

(assert (=> start!124622 e!880102))

(assert (=> start!124622 true))

(declare-fun e!880111 () Bool)

(assert (=> start!124622 e!880111))

(declare-fun inv!18300 (Token!4492) Bool)

(assert (=> start!124622 (and (inv!18300 t1!34) e!880110)))

(declare-fun e!880129 () Bool)

(assert (=> start!124622 (and (inv!18300 t2!34) e!880129)))

(declare-fun b!1377314 () Bool)

(declare-fun tp!394775 () Bool)

(assert (=> b!1377314 (= e!880111 (and e!880103 tp!394775))))

(declare-fun b!1377315 () Bool)

(assert (=> b!1377315 (= e!880107 e!880124)))

(declare-fun res!620852 () Bool)

(assert (=> b!1377315 (=> res!620852 e!880124)))

(declare-fun contains!2635 (List!14016 Regex!3729) Bool)

(assert (=> b!1377315 (= res!620852 (not (contains!2635 (map!3083 rules!2550 lambda!58806) lt!457862)))))

(declare-fun getWitness!377 (List!14016 Int) Regex!3729)

(assert (=> b!1377315 (= lt!457862 (getWitness!377 (map!3083 rules!2550 lambda!58806) lambda!58807))))

(declare-fun b!1377316 () Bool)

(assert (=> b!1377316 (= e!880100 e!880118)))

(declare-fun res!620857 () Bool)

(assert (=> b!1377316 (=> res!620857 e!880118)))

(declare-fun lt!457875 () Bool)

(assert (=> b!1377316 (= res!620857 lt!457875)))

(declare-fun lt!457874 () Unit!20201)

(assert (=> b!1377316 (= lt!457874 e!880112)))

(declare-fun c!226701 () Bool)

(assert (=> b!1377316 (= c!226701 lt!457875)))

(assert (=> b!1377316 (= lt!457875 (not (contains!2633 (usedCharacters!234 (regex!2415 (rule!4174 t2!34))) lt!457890)))))

(declare-fun tp!394777 () Bool)

(declare-fun b!1377317 () Bool)

(assert (=> b!1377317 (= e!880129 (and (inv!21 (value!78460 t2!34)) e!880125 tp!394777))))

(assert (= (and start!124622 res!620853) b!1377270))

(assert (= (and b!1377270 res!620877) b!1377299))

(assert (= (and b!1377299 res!620878) b!1377293))

(assert (= (and b!1377293 res!620865) b!1377313))

(assert (= (and b!1377313 res!620848) b!1377271))

(assert (= (and b!1377271 res!620867) b!1377291))

(assert (= (and b!1377291 res!620855) b!1377311))

(assert (= (and b!1377311 res!620875) b!1377269))

(assert (= (and b!1377269 res!620881) b!1377296))

(assert (= (and b!1377296 res!620873) b!1377287))

(assert (= (and b!1377287 (not res!620851)) b!1377283))

(assert (= (and b!1377283 (not res!620869)) b!1377275))

(assert (= (and b!1377275 (not res!620879)) b!1377306))

(assert (= (and b!1377306 (not res!620849)) b!1377279))

(assert (= (and b!1377279 (not res!620864)) b!1377273))

(assert (= (and b!1377273 (not res!620854)) b!1377297))

(assert (= (and b!1377297 (not res!620860)) b!1377312))

(assert (= (and b!1377312 (not res!620871)) b!1377315))

(assert (= (and b!1377315 (not res!620852)) b!1377278))

(assert (= (and b!1377278 (not res!620859)) b!1377286))

(assert (= (and b!1377286 (not res!620858)) b!1377298))

(assert (= (and b!1377298 (not res!620850)) b!1377288))

(assert (= (and b!1377288 (not res!620861)) b!1377305))

(assert (= (and b!1377305 (not res!620872)) b!1377294))

(assert (= (and b!1377294 (not res!620882)) b!1377272))

(assert (= (and b!1377272 (not res!620883)) b!1377277))

(assert (= (and b!1377277 (not res!620880)) b!1377307))

(assert (= (and b!1377307 (not res!620868)) b!1377289))

(assert (= (and b!1377289 (not res!620876)) b!1377295))

(assert (= (and b!1377295 (not res!620856)) b!1377300))

(assert (= (and b!1377300 (not res!620862)) b!1377292))

(assert (= (and b!1377292 (not res!620863)) b!1377303))

(assert (= (and b!1377303 (not res!620870)) b!1377280))

(assert (= (and b!1377280 c!226700) b!1377301))

(assert (= (and b!1377280 (not c!226700)) b!1377310))

(assert (= (and b!1377280 (not res!620866)) b!1377316))

(assert (= (and b!1377316 c!226701) b!1377284))

(assert (= (and b!1377316 (not c!226701)) b!1377309))

(assert (= (and b!1377316 (not res!620857)) b!1377285))

(assert (= (and b!1377285 (not res!620874)) b!1377282))

(assert (= b!1377304 b!1377302))

(assert (= b!1377314 b!1377304))

(assert (= (and start!124622 ((_ is Cons!13948) rules!2550)) b!1377314))

(assert (= b!1377308 b!1377290))

(assert (= b!1377276 b!1377308))

(assert (= start!124622 b!1377276))

(assert (= b!1377274 b!1377281))

(assert (= b!1377317 b!1377274))

(assert (= start!124622 b!1377317))

(declare-fun m!1549827 () Bool)

(assert (=> b!1377296 m!1549827))

(declare-fun m!1549829 () Bool)

(assert (=> b!1377296 m!1549829))

(declare-fun m!1549831 () Bool)

(assert (=> b!1377296 m!1549831))

(declare-fun m!1549833 () Bool)

(assert (=> b!1377296 m!1549833))

(declare-fun m!1549835 () Bool)

(assert (=> b!1377296 m!1549835))

(declare-fun m!1549837 () Bool)

(assert (=> b!1377296 m!1549837))

(declare-fun m!1549839 () Bool)

(assert (=> b!1377312 m!1549839))

(declare-fun m!1549841 () Bool)

(assert (=> b!1377312 m!1549841))

(assert (=> b!1377312 m!1549841))

(assert (=> b!1377312 m!1549841))

(declare-fun m!1549843 () Bool)

(assert (=> b!1377312 m!1549843))

(declare-fun m!1549845 () Bool)

(assert (=> b!1377312 m!1549845))

(declare-fun m!1549847 () Bool)

(assert (=> b!1377286 m!1549847))

(declare-fun m!1549849 () Bool)

(assert (=> b!1377286 m!1549849))

(declare-fun m!1549851 () Bool)

(assert (=> b!1377286 m!1549851))

(assert (=> b!1377286 m!1549849))

(declare-fun m!1549853 () Bool)

(assert (=> b!1377286 m!1549853))

(declare-fun m!1549855 () Bool)

(assert (=> b!1377286 m!1549855))

(assert (=> b!1377315 m!1549841))

(assert (=> b!1377315 m!1549841))

(declare-fun m!1549857 () Bool)

(assert (=> b!1377315 m!1549857))

(assert (=> b!1377315 m!1549841))

(assert (=> b!1377315 m!1549841))

(declare-fun m!1549859 () Bool)

(assert (=> b!1377315 m!1549859))

(declare-fun m!1549861 () Bool)

(assert (=> b!1377283 m!1549861))

(assert (=> b!1377283 m!1549861))

(declare-fun m!1549863 () Bool)

(assert (=> b!1377283 m!1549863))

(declare-fun m!1549865 () Bool)

(assert (=> b!1377283 m!1549865))

(declare-fun m!1549867 () Bool)

(assert (=> b!1377275 m!1549867))

(declare-fun m!1549869 () Bool)

(assert (=> b!1377275 m!1549869))

(declare-fun m!1549871 () Bool)

(assert (=> b!1377303 m!1549871))

(declare-fun m!1549873 () Bool)

(assert (=> b!1377311 m!1549873))

(declare-fun m!1549875 () Bool)

(assert (=> b!1377313 m!1549875))

(declare-fun m!1549877 () Bool)

(assert (=> b!1377308 m!1549877))

(declare-fun m!1549879 () Bool)

(assert (=> b!1377308 m!1549879))

(declare-fun m!1549881 () Bool)

(assert (=> b!1377289 m!1549881))

(declare-fun m!1549883 () Bool)

(assert (=> b!1377289 m!1549883))

(declare-fun m!1549885 () Bool)

(assert (=> b!1377298 m!1549885))

(declare-fun m!1549887 () Bool)

(assert (=> b!1377279 m!1549887))

(declare-fun m!1549889 () Bool)

(assert (=> b!1377280 m!1549889))

(assert (=> b!1377280 m!1549889))

(declare-fun m!1549891 () Bool)

(assert (=> b!1377280 m!1549891))

(declare-fun m!1549893 () Bool)

(assert (=> b!1377304 m!1549893))

(declare-fun m!1549895 () Bool)

(assert (=> b!1377304 m!1549895))

(declare-fun m!1549897 () Bool)

(assert (=> b!1377287 m!1549897))

(assert (=> b!1377287 m!1549897))

(declare-fun m!1549899 () Bool)

(assert (=> b!1377287 m!1549899))

(declare-fun m!1549901 () Bool)

(assert (=> b!1377297 m!1549901))

(declare-fun m!1549903 () Bool)

(assert (=> b!1377293 m!1549903))

(declare-fun m!1549905 () Bool)

(assert (=> b!1377278 m!1549905))

(assert (=> b!1377278 m!1549905))

(declare-fun m!1549907 () Bool)

(assert (=> b!1377278 m!1549907))

(declare-fun m!1549909 () Bool)

(assert (=> b!1377270 m!1549909))

(declare-fun m!1549911 () Bool)

(assert (=> b!1377284 m!1549911))

(assert (=> b!1377284 m!1549911))

(declare-fun m!1549913 () Bool)

(assert (=> b!1377284 m!1549913))

(declare-fun m!1549915 () Bool)

(assert (=> b!1377282 m!1549915))

(assert (=> b!1377282 m!1549915))

(declare-fun m!1549917 () Bool)

(assert (=> b!1377282 m!1549917))

(declare-fun m!1549919 () Bool)

(assert (=> b!1377282 m!1549919))

(declare-fun m!1549921 () Bool)

(assert (=> b!1377306 m!1549921))

(declare-fun m!1549923 () Bool)

(assert (=> b!1377273 m!1549923))

(declare-fun m!1549925 () Bool)

(assert (=> b!1377305 m!1549925))

(declare-fun m!1549927 () Bool)

(assert (=> b!1377274 m!1549927))

(declare-fun m!1549929 () Bool)

(assert (=> b!1377274 m!1549929))

(declare-fun m!1549931 () Bool)

(assert (=> b!1377288 m!1549931))

(assert (=> b!1377288 m!1549931))

(declare-fun m!1549933 () Bool)

(assert (=> b!1377288 m!1549933))

(declare-fun m!1549935 () Bool)

(assert (=> b!1377307 m!1549935))

(assert (=> b!1377307 m!1549935))

(declare-fun m!1549937 () Bool)

(assert (=> b!1377307 m!1549937))

(declare-fun m!1549939 () Bool)

(assert (=> b!1377317 m!1549939))

(declare-fun m!1549941 () Bool)

(assert (=> b!1377301 m!1549941))

(assert (=> b!1377301 m!1549941))

(declare-fun m!1549943 () Bool)

(assert (=> b!1377301 m!1549943))

(declare-fun m!1549945 () Bool)

(assert (=> start!124622 m!1549945))

(declare-fun m!1549947 () Bool)

(assert (=> start!124622 m!1549947))

(declare-fun m!1549949 () Bool)

(assert (=> b!1377316 m!1549949))

(assert (=> b!1377316 m!1549949))

(declare-fun m!1549951 () Bool)

(assert (=> b!1377316 m!1549951))

(declare-fun m!1549953 () Bool)

(assert (=> b!1377300 m!1549953))

(declare-fun m!1549955 () Bool)

(assert (=> b!1377299 m!1549955))

(declare-fun m!1549957 () Bool)

(assert (=> b!1377294 m!1549957))

(declare-fun m!1549959 () Bool)

(assert (=> b!1377291 m!1549959))

(declare-fun m!1549961 () Bool)

(assert (=> b!1377291 m!1549961))

(declare-fun m!1549963 () Bool)

(assert (=> b!1377269 m!1549963))

(declare-fun m!1549965 () Bool)

(assert (=> b!1377292 m!1549965))

(declare-fun m!1549967 () Bool)

(assert (=> b!1377292 m!1549967))

(declare-fun m!1549969 () Bool)

(assert (=> b!1377292 m!1549969))

(declare-fun m!1549971 () Bool)

(assert (=> b!1377292 m!1549971))

(declare-fun m!1549973 () Bool)

(assert (=> b!1377277 m!1549973))

(declare-fun m!1549975 () Bool)

(assert (=> b!1377276 m!1549975))

(declare-fun m!1549977 () Bool)

(assert (=> b!1377295 m!1549977))

(declare-fun m!1549979 () Bool)

(assert (=> b!1377272 m!1549979))

(declare-fun m!1549981 () Bool)

(assert (=> b!1377272 m!1549981))

(declare-fun m!1549983 () Bool)

(assert (=> b!1377272 m!1549983))

(assert (=> b!1377272 m!1549983))

(declare-fun m!1549985 () Bool)

(assert (=> b!1377272 m!1549985))

(check-sat (not b!1377275) (not b!1377276) b_and!92251 (not b!1377311) (not b!1377304) (not b!1377297) (not b!1377282) (not b!1377308) (not b!1377300) (not b_next!34081) (not b!1377293) (not b!1377288) b_and!92259 (not b!1377289) (not b!1377315) (not b!1377277) (not b!1377298) (not b!1377287) (not b!1377269) (not b!1377283) (not b_next!34075) (not start!124622) (not b!1377291) (not b!1377306) (not b!1377284) (not b!1377279) b_and!92261 (not b!1377314) (not b!1377317) (not b!1377301) (not b!1377294) (not b!1377316) (not b!1377273) (not b!1377312) (not b!1377313) (not b!1377295) (not b!1377303) b_and!92253 (not b!1377278) b_and!92257 (not b!1377299) (not b!1377286) (not b!1377305) (not b!1377272) (not b!1377307) (not b_next!34079) (not b!1377296) (not b_next!34083) (not b!1377280) (not b_next!34085) b_and!92255 (not b_next!34077) (not b!1377292) (not b!1377270) (not b!1377274))
(check-sat b_and!92259 (not b_next!34075) b_and!92261 b_and!92251 b_and!92253 b_and!92257 (not b_next!34079) (not b_next!34081) (not b_next!34083) (not b_next!34085) b_and!92255 (not b_next!34077))

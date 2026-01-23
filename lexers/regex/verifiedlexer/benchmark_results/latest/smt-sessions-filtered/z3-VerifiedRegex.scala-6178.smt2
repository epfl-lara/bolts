; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!298618 () Bool)

(assert start!298618)

(declare-fun b!3185353 () Bool)

(declare-fun b_free!84121 () Bool)

(declare-fun b_next!84825 () Bool)

(assert (=> b!3185353 (= b_free!84121 (not b_next!84825))))

(declare-fun tp!1007451 () Bool)

(declare-fun b_and!210751 () Bool)

(assert (=> b!3185353 (= tp!1007451 b_and!210751)))

(declare-fun b_free!84123 () Bool)

(declare-fun b_next!84827 () Bool)

(assert (=> b!3185353 (= b_free!84123 (not b_next!84827))))

(declare-fun tp!1007445 () Bool)

(declare-fun b_and!210753 () Bool)

(assert (=> b!3185353 (= tp!1007445 b_and!210753)))

(declare-fun b!3185354 () Bool)

(declare-fun b_free!84125 () Bool)

(declare-fun b_next!84829 () Bool)

(assert (=> b!3185354 (= b_free!84125 (not b_next!84829))))

(declare-fun tp!1007443 () Bool)

(declare-fun b_and!210755 () Bool)

(assert (=> b!3185354 (= tp!1007443 b_and!210755)))

(declare-fun b_free!84127 () Bool)

(declare-fun b_next!84831 () Bool)

(assert (=> b!3185354 (= b_free!84127 (not b_next!84831))))

(declare-fun tp!1007444 () Bool)

(declare-fun b_and!210757 () Bool)

(assert (=> b!3185354 (= tp!1007444 b_and!210757)))

(declare-fun b!3185352 () Bool)

(declare-fun b_free!84129 () Bool)

(declare-fun b_next!84833 () Bool)

(assert (=> b!3185352 (= b_free!84129 (not b_next!84833))))

(declare-fun tp!1007447 () Bool)

(declare-fun b_and!210759 () Bool)

(assert (=> b!3185352 (= tp!1007447 b_and!210759)))

(declare-fun b_free!84131 () Bool)

(declare-fun b_next!84835 () Bool)

(assert (=> b!3185352 (= b_free!84131 (not b_next!84835))))

(declare-fun tp!1007446 () Bool)

(declare-fun b_and!210761 () Bool)

(assert (=> b!3185352 (= tp!1007446 b_and!210761)))

(declare-fun b!3185348 () Bool)

(declare-datatypes ((C!19976 0))(
  ( (C!19977 (val!12036 Int)) )
))
(declare-datatypes ((Regex!9895 0))(
  ( (ElementMatch!9895 (c!534900 C!19976)) (Concat!15261 (regOne!20302 Regex!9895) (regTwo!20302 Regex!9895)) (EmptyExpr!9895) (Star!9895 (reg!10224 Regex!9895)) (EmptyLang!9895) (Union!9895 (regOne!20303 Regex!9895) (regTwo!20303 Regex!9895)) )
))
(declare-datatypes ((List!35932 0))(
  ( (Nil!35808) (Cons!35808 (h!41228 (_ BitVec 16)) (t!235525 List!35932)) )
))
(declare-datatypes ((TokenValue!5366 0))(
  ( (FloatLiteralValue!10732 (text!38007 List!35932)) (TokenValueExt!5365 (__x!22949 Int)) (Broken!26830 (value!166810 List!35932)) (Object!5489) (End!5366) (Def!5366) (Underscore!5366) (Match!5366) (Else!5366) (Error!5366) (Case!5366) (If!5366) (Extends!5366) (Abstract!5366) (Class!5366) (Val!5366) (DelimiterValue!10732 (del!5426 List!35932)) (KeywordValue!5372 (value!166811 List!35932)) (CommentValue!10732 (value!166812 List!35932)) (WhitespaceValue!10732 (value!166813 List!35932)) (IndentationValue!5366 (value!166814 List!35932)) (String!40163) (Int32!5366) (Broken!26831 (value!166815 List!35932)) (Boolean!5367) (Unit!50219) (OperatorValue!5369 (op!5426 List!35932)) (IdentifierValue!10732 (value!166816 List!35932)) (IdentifierValue!10733 (value!166817 List!35932)) (WhitespaceValue!10733 (value!166818 List!35932)) (True!10732) (False!10732) (Broken!26832 (value!166819 List!35932)) (Broken!26833 (value!166820 List!35932)) (True!10733) (RightBrace!5366) (RightBracket!5366) (Colon!5366) (Null!5366) (Comma!5366) (LeftBracket!5366) (False!10733) (LeftBrace!5366) (ImaginaryLiteralValue!5366 (text!38008 List!35932)) (StringLiteralValue!16098 (value!166821 List!35932)) (EOFValue!5366 (value!166822 List!35932)) (IdentValue!5366 (value!166823 List!35932)) (DelimiterValue!10733 (value!166824 List!35932)) (DedentValue!5366 (value!166825 List!35932)) (NewLineValue!5366 (value!166826 List!35932)) (IntegerValue!16098 (value!166827 (_ BitVec 32)) (text!38009 List!35932)) (IntegerValue!16099 (value!166828 Int) (text!38010 List!35932)) (Times!5366) (Or!5366) (Equal!5366) (Minus!5366) (Broken!26834 (value!166829 List!35932)) (And!5366) (Div!5366) (LessEqual!5366) (Mod!5366) (Concat!15262) (Not!5366) (Plus!5366) (SpaceValue!5366 (value!166830 List!35932)) (IntegerValue!16100 (value!166831 Int) (text!38011 List!35932)) (StringLiteralValue!16099 (text!38012 List!35932)) (FloatLiteralValue!10733 (text!38013 List!35932)) (BytesLiteralValue!5366 (value!166832 List!35932)) (CommentValue!10733 (value!166833 List!35932)) (StringLiteralValue!16100 (value!166834 List!35932)) (ErrorTokenValue!5366 (msg!5427 List!35932)) )
))
(declare-datatypes ((List!35933 0))(
  ( (Nil!35809) (Cons!35809 (h!41229 C!19976) (t!235526 List!35933)) )
))
(declare-datatypes ((IArray!21299 0))(
  ( (IArray!21300 (innerList!10707 List!35933)) )
))
(declare-datatypes ((Conc!10647 0))(
  ( (Node!10647 (left!27849 Conc!10647) (right!28179 Conc!10647) (csize!21524 Int) (cheight!10858 Int)) (Leaf!16826 (xs!13765 IArray!21299) (csize!21525 Int)) (Empty!10647) )
))
(declare-datatypes ((BalanceConc!20908 0))(
  ( (BalanceConc!20909 (c!534901 Conc!10647)) )
))
(declare-datatypes ((String!40164 0))(
  ( (String!40165 (value!166835 String)) )
))
(declare-datatypes ((TokenValueInjection!10160 0))(
  ( (TokenValueInjection!10161 (toValue!7196 Int) (toChars!7055 Int)) )
))
(declare-datatypes ((Rule!10072 0))(
  ( (Rule!10073 (regex!5136 Regex!9895) (tag!5650 String!40164) (isSeparator!5136 Bool) (transformation!5136 TokenValueInjection!10160)) )
))
(declare-datatypes ((Token!9638 0))(
  ( (Token!9639 (value!166836 TokenValue!5366) (rule!7558 Rule!10072) (size!27014 Int) (originalCharacters!5850 List!35933)) )
))
(declare-datatypes ((List!35934 0))(
  ( (Nil!35810) (Cons!35810 (h!41230 Token!9638) (t!235527 List!35934)) )
))
(declare-fun tokens!494 () List!35934)

(declare-fun e!1984930 () Bool)

(declare-fun tp!1007452 () Bool)

(declare-fun e!1984942 () Bool)

(declare-fun inv!48659 (Token!9638) Bool)

(assert (=> b!3185348 (= e!1984930 (and (inv!48659 (h!41230 tokens!494)) e!1984942 tp!1007452))))

(declare-fun b!3185349 () Bool)

(declare-fun e!1984933 () Bool)

(declare-fun e!1984928 () Bool)

(assert (=> b!3185349 (= e!1984933 (not e!1984928))))

(declare-fun res!1295059 () Bool)

(assert (=> b!3185349 (=> res!1295059 e!1984928)))

(declare-fun lt!1071479 () List!35933)

(declare-fun lt!1071485 () List!35933)

(assert (=> b!3185349 (= res!1295059 (not (= lt!1071479 lt!1071485)))))

(declare-datatypes ((LexerInterface!4725 0))(
  ( (LexerInterfaceExt!4722 (__x!22950 Int)) (Lexer!4723) )
))
(declare-fun thiss!18206 () LexerInterface!4725)

(declare-fun printList!1279 (LexerInterface!4725 List!35934) List!35933)

(assert (=> b!3185349 (= lt!1071485 (printList!1279 thiss!18206 (Cons!35810 (h!41230 tokens!494) Nil!35810)))))

(declare-fun lt!1071477 () BalanceConc!20908)

(declare-fun list!12713 (BalanceConc!20908) List!35933)

(assert (=> b!3185349 (= lt!1071479 (list!12713 lt!1071477))))

(declare-datatypes ((IArray!21301 0))(
  ( (IArray!21302 (innerList!10708 List!35934)) )
))
(declare-datatypes ((Conc!10648 0))(
  ( (Node!10648 (left!27850 Conc!10648) (right!28180 Conc!10648) (csize!21526 Int) (cheight!10859 Int)) (Leaf!16827 (xs!13766 IArray!21301) (csize!21527 Int)) (Empty!10648) )
))
(declare-datatypes ((BalanceConc!20910 0))(
  ( (BalanceConc!20911 (c!534902 Conc!10648)) )
))
(declare-fun lt!1071475 () BalanceConc!20910)

(declare-fun printTailRec!1224 (LexerInterface!4725 BalanceConc!20910 Int BalanceConc!20908) BalanceConc!20908)

(assert (=> b!3185349 (= lt!1071477 (printTailRec!1224 thiss!18206 lt!1071475 0 (BalanceConc!20909 Empty!10647)))))

(declare-fun print!1792 (LexerInterface!4725 BalanceConc!20910) BalanceConc!20908)

(assert (=> b!3185349 (= lt!1071477 (print!1792 thiss!18206 lt!1071475))))

(declare-fun singletonSeq!2232 (Token!9638) BalanceConc!20910)

(assert (=> b!3185349 (= lt!1071475 (singletonSeq!2232 (h!41230 tokens!494)))))

(declare-fun b!3185350 () Bool)

(declare-fun res!1295075 () Bool)

(assert (=> b!3185350 (=> (not res!1295075) (not e!1984933))))

(declare-fun lambda!116529 () Int)

(declare-fun forall!7258 (List!35934 Int) Bool)

(assert (=> b!3185350 (= res!1295075 (forall!7258 tokens!494 lambda!116529))))

(declare-fun b!3185351 () Bool)

(declare-fun res!1295061 () Bool)

(assert (=> b!3185351 (=> (not res!1295061) (not e!1984933))))

(declare-datatypes ((List!35935 0))(
  ( (Nil!35811) (Cons!35811 (h!41231 Rule!10072) (t!235528 List!35935)) )
))
(declare-fun rules!2135 () List!35935)

(declare-fun sepAndNonSepRulesDisjointChars!1330 (List!35935 List!35935) Bool)

(assert (=> b!3185351 (= res!1295061 (sepAndNonSepRulesDisjointChars!1330 rules!2135 rules!2135))))

(declare-fun e!1984923 () Bool)

(assert (=> b!3185352 (= e!1984923 (and tp!1007447 tp!1007446))))

(declare-fun e!1984940 () Bool)

(assert (=> b!3185353 (= e!1984940 (and tp!1007451 tp!1007445))))

(declare-fun e!1984924 () Bool)

(assert (=> b!3185354 (= e!1984924 (and tp!1007443 tp!1007444))))

(declare-fun b!3185355 () Bool)

(declare-fun e!1984918 () Bool)

(declare-fun e!1984941 () Bool)

(assert (=> b!3185355 (= e!1984918 e!1984941)))

(declare-fun res!1295070 () Bool)

(assert (=> b!3185355 (=> res!1295070 e!1984941)))

(declare-fun lt!1071478 () BalanceConc!20908)

(declare-fun isEmpty!19937 (BalanceConc!20910) Bool)

(declare-datatypes ((tuple2!35166 0))(
  ( (tuple2!35167 (_1!20717 BalanceConc!20910) (_2!20717 BalanceConc!20908)) )
))
(declare-fun lex!2065 (LexerInterface!4725 List!35935 BalanceConc!20908) tuple2!35166)

(assert (=> b!3185355 (= res!1295070 (isEmpty!19937 (_1!20717 (lex!2065 thiss!18206 rules!2135 lt!1071478))))))

(declare-fun lt!1071493 () List!35933)

(declare-fun seqFromList!3351 (List!35933) BalanceConc!20908)

(assert (=> b!3185355 (= lt!1071478 (seqFromList!3351 lt!1071493))))

(declare-fun res!1295058 () Bool)

(declare-fun e!1984931 () Bool)

(assert (=> start!298618 (=> (not res!1295058) (not e!1984931))))

(get-info :version)

(assert (=> start!298618 (= res!1295058 ((_ is Lexer!4723) thiss!18206))))

(assert (=> start!298618 e!1984931))

(assert (=> start!298618 true))

(declare-fun e!1984919 () Bool)

(assert (=> start!298618 e!1984919))

(declare-fun separatorToken!241 () Token!9638)

(declare-fun e!1984939 () Bool)

(assert (=> start!298618 (and (inv!48659 separatorToken!241) e!1984939)))

(assert (=> start!298618 e!1984930))

(declare-fun b!3185356 () Bool)

(declare-fun e!1984937 () Bool)

(assert (=> b!3185356 (= e!1984941 e!1984937)))

(declare-fun res!1295066 () Bool)

(assert (=> b!3185356 (=> res!1295066 e!1984937)))

(assert (=> b!3185356 (= res!1295066 (isSeparator!5136 (rule!7558 (h!41230 tokens!494))))))

(declare-datatypes ((Unit!50220 0))(
  ( (Unit!50221) )
))
(declare-fun lt!1071492 () Unit!50220)

(declare-fun forallContained!1119 (List!35934 Int Token!9638) Unit!50220)

(assert (=> b!3185356 (= lt!1071492 (forallContained!1119 tokens!494 lambda!116529 (h!41230 tokens!494)))))

(declare-fun b!3185357 () Bool)

(declare-fun tp!1007441 () Bool)

(declare-fun e!1984922 () Bool)

(declare-fun inv!48656 (String!40164) Bool)

(declare-fun inv!48660 (TokenValueInjection!10160) Bool)

(assert (=> b!3185357 (= e!1984922 (and tp!1007441 (inv!48656 (tag!5650 (h!41231 rules!2135))) (inv!48660 (transformation!5136 (h!41231 rules!2135))) e!1984940))))

(declare-fun e!1984934 () Bool)

(declare-fun b!3185358 () Bool)

(declare-fun tp!1007450 () Bool)

(assert (=> b!3185358 (= e!1984934 (and tp!1007450 (inv!48656 (tag!5650 (rule!7558 separatorToken!241))) (inv!48660 (transformation!5136 (rule!7558 separatorToken!241))) e!1984923))))

(declare-fun b!3185359 () Bool)

(declare-fun e!1984936 () Bool)

(assert (=> b!3185359 (= e!1984937 e!1984936)))

(declare-fun res!1295060 () Bool)

(assert (=> b!3185359 (=> res!1295060 e!1984936)))

(declare-fun lt!1071470 () List!35933)

(declare-fun lt!1071473 () List!35933)

(assert (=> b!3185359 (= res!1295060 (not (= lt!1071470 lt!1071473)))))

(declare-fun lt!1071487 () List!35933)

(declare-fun ++!8566 (List!35933 List!35933) List!35933)

(assert (=> b!3185359 (= lt!1071473 (++!8566 lt!1071493 lt!1071487))))

(declare-fun lt!1071490 () BalanceConc!20908)

(assert (=> b!3185359 (= lt!1071470 (list!12713 lt!1071490))))

(declare-fun charsOf!3158 (Token!9638) BalanceConc!20908)

(assert (=> b!3185359 (= lt!1071487 (list!12713 (charsOf!3158 separatorToken!241)))))

(declare-fun lt!1071489 () BalanceConc!20910)

(declare-fun printWithSeparatorToken!34 (LexerInterface!4725 BalanceConc!20910 Token!9638) BalanceConc!20908)

(assert (=> b!3185359 (= lt!1071490 (printWithSeparatorToken!34 thiss!18206 lt!1071489 separatorToken!241))))

(declare-fun e!1984946 () Bool)

(declare-fun b!3185360 () Bool)

(declare-datatypes ((tuple2!35168 0))(
  ( (tuple2!35169 (_1!20718 Token!9638) (_2!20718 List!35933)) )
))
(declare-datatypes ((Option!7003 0))(
  ( (None!7002) (Some!7002 (v!35480 tuple2!35168)) )
))
(declare-fun isDefined!5485 (Option!7003) Bool)

(declare-fun maxPrefix!2403 (LexerInterface!4725 List!35935 List!35933) Option!7003)

(assert (=> b!3185360 (= e!1984946 (isDefined!5485 (maxPrefix!2403 thiss!18206 rules!2135 lt!1071470)))))

(assert (=> b!3185360 (= (maxPrefix!2403 thiss!18206 rules!2135 lt!1071473) (Some!7002 (tuple2!35169 (h!41230 tokens!494) lt!1071487)))))

(declare-fun lt!1071482 () Unit!50220)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!114 (LexerInterface!4725 List!35935 Token!9638 Rule!10072 List!35933 Rule!10072) Unit!50220)

(assert (=> b!3185360 (= lt!1071482 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!114 thiss!18206 rules!2135 (h!41230 tokens!494) (rule!7558 (h!41230 tokens!494)) lt!1071487 (rule!7558 separatorToken!241)))))

(declare-fun lt!1071495 () C!19976)

(declare-fun contains!6351 (List!35933 C!19976) Bool)

(declare-fun usedCharacters!480 (Regex!9895) List!35933)

(assert (=> b!3185360 (not (contains!6351 (usedCharacters!480 (regex!5136 (rule!7558 (h!41230 tokens!494)))) lt!1071495))))

(declare-fun lt!1071486 () Unit!50220)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!112 (LexerInterface!4725 List!35935 List!35935 Rule!10072 Rule!10072 C!19976) Unit!50220)

(assert (=> b!3185360 (= lt!1071486 (lemmaNonSepRuleNotContainsCharContainedInASepRule!112 thiss!18206 rules!2135 rules!2135 (rule!7558 (h!41230 tokens!494)) (rule!7558 separatorToken!241) lt!1071495))))

(declare-fun b!3185361 () Bool)

(declare-fun e!1984920 () Bool)

(assert (=> b!3185361 (= e!1984920 false)))

(declare-fun b!3185362 () Bool)

(assert (=> b!3185362 (= e!1984931 e!1984933)))

(declare-fun res!1295065 () Bool)

(assert (=> b!3185362 (=> (not res!1295065) (not e!1984933))))

(declare-fun rulesProduceEachTokenIndividually!1176 (LexerInterface!4725 List!35935 BalanceConc!20910) Bool)

(assert (=> b!3185362 (= res!1295065 (rulesProduceEachTokenIndividually!1176 thiss!18206 rules!2135 lt!1071489))))

(declare-fun seqFromList!3352 (List!35934) BalanceConc!20910)

(assert (=> b!3185362 (= lt!1071489 (seqFromList!3352 tokens!494))))

(declare-fun tp!1007448 () Bool)

(declare-fun b!3185363 () Bool)

(declare-fun inv!21 (TokenValue!5366) Bool)

(assert (=> b!3185363 (= e!1984939 (and (inv!21 (value!166836 separatorToken!241)) e!1984934 tp!1007448))))

(declare-fun b!3185364 () Bool)

(declare-fun e!1984927 () Unit!50220)

(declare-fun Unit!50222 () Unit!50220)

(assert (=> b!3185364 (= e!1984927 Unit!50222)))

(declare-fun e!1984938 () Bool)

(declare-fun b!3185365 () Bool)

(declare-fun tp!1007449 () Bool)

(assert (=> b!3185365 (= e!1984942 (and (inv!21 (value!166836 (h!41230 tokens!494))) e!1984938 tp!1007449))))

(declare-fun b!3185366 () Bool)

(declare-fun res!1295064 () Bool)

(assert (=> b!3185366 (=> (not res!1295064) (not e!1984931))))

(declare-fun isEmpty!19938 (List!35935) Bool)

(assert (=> b!3185366 (= res!1295064 (not (isEmpty!19938 rules!2135)))))

(declare-fun b!3185367 () Bool)

(declare-fun res!1295071 () Bool)

(assert (=> b!3185367 (=> (not res!1295071) (not e!1984933))))

(assert (=> b!3185367 (= res!1295071 (isSeparator!5136 (rule!7558 separatorToken!241)))))

(declare-fun b!3185368 () Bool)

(declare-fun res!1295055 () Bool)

(assert (=> b!3185368 (=> (not res!1295055) (not e!1984931))))

(declare-fun rulesInvariant!4122 (LexerInterface!4725 List!35935) Bool)

(assert (=> b!3185368 (= res!1295055 (rulesInvariant!4122 thiss!18206 rules!2135))))

(declare-fun b!3185369 () Bool)

(declare-fun res!1295069 () Bool)

(assert (=> b!3185369 (=> res!1295069 e!1984918)))

(declare-fun rulesProduceIndividualToken!2217 (LexerInterface!4725 List!35935 Token!9638) Bool)

(assert (=> b!3185369 (= res!1295069 (not (rulesProduceIndividualToken!2217 thiss!18206 rules!2135 (h!41230 tokens!494))))))

(declare-fun b!3185370 () Bool)

(declare-fun e!1984921 () Bool)

(declare-fun lt!1071491 () Rule!10072)

(assert (=> b!3185370 (= e!1984921 (= (rule!7558 separatorToken!241) lt!1071491))))

(declare-fun b!3185371 () Bool)

(declare-fun e!1984932 () Bool)

(assert (=> b!3185371 (= e!1984932 e!1984921)))

(declare-fun res!1295068 () Bool)

(assert (=> b!3185371 (=> (not res!1295068) (not e!1984921))))

(declare-fun matchR!4553 (Regex!9895 List!35933) Bool)

(assert (=> b!3185371 (= res!1295068 (matchR!4553 (regex!5136 lt!1071491) lt!1071487))))

(declare-datatypes ((Option!7004 0))(
  ( (None!7003) (Some!7003 (v!35481 Rule!10072)) )
))
(declare-fun lt!1071494 () Option!7004)

(declare-fun get!11397 (Option!7004) Rule!10072)

(assert (=> b!3185371 (= lt!1071491 (get!11397 lt!1071494))))

(declare-fun b!3185372 () Bool)

(declare-fun e!1984929 () Bool)

(declare-fun e!1984944 () Bool)

(assert (=> b!3185372 (= e!1984929 e!1984944)))

(declare-fun res!1295062 () Bool)

(assert (=> b!3185372 (=> (not res!1295062) (not e!1984944))))

(declare-fun lt!1071481 () Rule!10072)

(assert (=> b!3185372 (= res!1295062 (matchR!4553 (regex!5136 lt!1071481) lt!1071493))))

(declare-fun lt!1071484 () Option!7004)

(assert (=> b!3185372 (= lt!1071481 (get!11397 lt!1071484))))

(declare-fun tp!1007440 () Bool)

(declare-fun b!3185373 () Bool)

(assert (=> b!3185373 (= e!1984938 (and tp!1007440 (inv!48656 (tag!5650 (rule!7558 (h!41230 tokens!494)))) (inv!48660 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) e!1984924))))

(declare-fun b!3185374 () Bool)

(assert (=> b!3185374 (= e!1984936 e!1984946)))

(declare-fun res!1295067 () Bool)

(assert (=> b!3185374 (=> res!1295067 e!1984946)))

(declare-fun lt!1071496 () Bool)

(assert (=> b!3185374 (= res!1295067 lt!1071496)))

(declare-fun lt!1071471 () Unit!50220)

(assert (=> b!3185374 (= lt!1071471 e!1984927)))

(declare-fun c!534899 () Bool)

(assert (=> b!3185374 (= c!534899 lt!1071496)))

(assert (=> b!3185374 (= lt!1071496 (not (contains!6351 (usedCharacters!480 (regex!5136 (rule!7558 separatorToken!241))) lt!1071495)))))

(declare-fun head!6967 (List!35933) C!19976)

(assert (=> b!3185374 (= lt!1071495 (head!6967 lt!1071487))))

(declare-fun maxPrefixOneRule!1530 (LexerInterface!4725 Rule!10072 List!35933) Option!7003)

(declare-fun apply!8064 (TokenValueInjection!10160 BalanceConc!20908) TokenValue!5366)

(declare-fun size!27015 (List!35933) Int)

(assert (=> b!3185374 (= (maxPrefixOneRule!1530 thiss!18206 (rule!7558 (h!41230 tokens!494)) lt!1071493) (Some!7002 (tuple2!35169 (Token!9639 (apply!8064 (transformation!5136 (rule!7558 (h!41230 tokens!494))) lt!1071478) (rule!7558 (h!41230 tokens!494)) (size!27015 lt!1071493) lt!1071493) Nil!35809)))))

(declare-fun lt!1071476 () Unit!50220)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!643 (LexerInterface!4725 List!35935 List!35933 List!35933 List!35933 Rule!10072) Unit!50220)

(assert (=> b!3185374 (= lt!1071476 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!643 thiss!18206 rules!2135 lt!1071493 lt!1071493 Nil!35809 (rule!7558 (h!41230 tokens!494))))))

(assert (=> b!3185374 e!1984932))

(declare-fun res!1295073 () Bool)

(assert (=> b!3185374 (=> (not res!1295073) (not e!1984932))))

(declare-fun isDefined!5486 (Option!7004) Bool)

(assert (=> b!3185374 (= res!1295073 (isDefined!5486 lt!1071494))))

(declare-fun getRuleFromTag!865 (LexerInterface!4725 List!35935 String!40164) Option!7004)

(assert (=> b!3185374 (= lt!1071494 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 separatorToken!241))))))

(declare-fun lt!1071480 () Unit!50220)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!865 (LexerInterface!4725 List!35935 List!35933 Token!9638) Unit!50220)

(assert (=> b!3185374 (= lt!1071480 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!865 thiss!18206 rules!2135 lt!1071487 separatorToken!241))))

(assert (=> b!3185374 e!1984929))

(declare-fun res!1295063 () Bool)

(assert (=> b!3185374 (=> (not res!1295063) (not e!1984929))))

(assert (=> b!3185374 (= res!1295063 (isDefined!5486 lt!1071484))))

(assert (=> b!3185374 (= lt!1071484 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 (h!41230 tokens!494)))))))

(declare-fun lt!1071472 () Unit!50220)

(assert (=> b!3185374 (= lt!1071472 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!865 thiss!18206 rules!2135 lt!1071493 (h!41230 tokens!494)))))

(declare-fun lt!1071483 () Unit!50220)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!786 (LexerInterface!4725 List!35935 List!35934 Token!9638) Unit!50220)

(assert (=> b!3185374 (= lt!1071483 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!786 thiss!18206 rules!2135 tokens!494 (h!41230 tokens!494)))))

(declare-fun isEmpty!19939 (List!35933) Bool)

(declare-fun getSuffix!1352 (List!35933 List!35933) List!35933)

(assert (=> b!3185374 (isEmpty!19939 (getSuffix!1352 lt!1071493 lt!1071493))))

(declare-fun lt!1071474 () Unit!50220)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!30 (List!35933) Unit!50220)

(assert (=> b!3185374 (= lt!1071474 (lemmaGetSuffixOnListWithItSelfIsEmpty!30 lt!1071493))))

(declare-fun b!3185375 () Bool)

(assert (=> b!3185375 (= e!1984928 e!1984918)))

(declare-fun res!1295074 () Bool)

(assert (=> b!3185375 (=> res!1295074 e!1984918)))

(assert (=> b!3185375 (= res!1295074 (or (not (= lt!1071485 lt!1071493)) (not (= lt!1071479 lt!1071493))))))

(assert (=> b!3185375 (= lt!1071493 (list!12713 (charsOf!3158 (h!41230 tokens!494))))))

(declare-fun b!3185376 () Bool)

(declare-fun res!1295057 () Bool)

(assert (=> b!3185376 (=> (not res!1295057) (not e!1984933))))

(assert (=> b!3185376 (= res!1295057 (rulesProduceIndividualToken!2217 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3185377 () Bool)

(declare-fun Unit!50223 () Unit!50220)

(assert (=> b!3185377 (= e!1984927 Unit!50223)))

(declare-fun lt!1071488 () Unit!50220)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!334 (Regex!9895 List!35933 C!19976) Unit!50220)

(assert (=> b!3185377 (= lt!1071488 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!334 (regex!5136 (rule!7558 separatorToken!241)) lt!1071487 lt!1071495))))

(declare-fun res!1295056 () Bool)

(assert (=> b!3185377 (= res!1295056 (not (matchR!4553 (regex!5136 (rule!7558 separatorToken!241)) lt!1071487)))))

(assert (=> b!3185377 (=> (not res!1295056) (not e!1984920))))

(assert (=> b!3185377 e!1984920))

(declare-fun b!3185378 () Bool)

(declare-fun res!1295072 () Bool)

(assert (=> b!3185378 (=> (not res!1295072) (not e!1984933))))

(assert (=> b!3185378 (= res!1295072 (and (not ((_ is Nil!35810) tokens!494)) ((_ is Nil!35810) (t!235527 tokens!494))))))

(declare-fun b!3185379 () Bool)

(declare-fun tp!1007442 () Bool)

(assert (=> b!3185379 (= e!1984919 (and e!1984922 tp!1007442))))

(declare-fun b!3185380 () Bool)

(assert (=> b!3185380 (= e!1984944 (= (rule!7558 (h!41230 tokens!494)) lt!1071481))))

(assert (= (and start!298618 res!1295058) b!3185366))

(assert (= (and b!3185366 res!1295064) b!3185368))

(assert (= (and b!3185368 res!1295055) b!3185362))

(assert (= (and b!3185362 res!1295065) b!3185376))

(assert (= (and b!3185376 res!1295057) b!3185367))

(assert (= (and b!3185367 res!1295071) b!3185350))

(assert (= (and b!3185350 res!1295075) b!3185351))

(assert (= (and b!3185351 res!1295061) b!3185378))

(assert (= (and b!3185378 res!1295072) b!3185349))

(assert (= (and b!3185349 (not res!1295059)) b!3185375))

(assert (= (and b!3185375 (not res!1295074)) b!3185369))

(assert (= (and b!3185369 (not res!1295069)) b!3185355))

(assert (= (and b!3185355 (not res!1295070)) b!3185356))

(assert (= (and b!3185356 (not res!1295066)) b!3185359))

(assert (= (and b!3185359 (not res!1295060)) b!3185374))

(assert (= (and b!3185374 res!1295063) b!3185372))

(assert (= (and b!3185372 res!1295062) b!3185380))

(assert (= (and b!3185374 res!1295073) b!3185371))

(assert (= (and b!3185371 res!1295068) b!3185370))

(assert (= (and b!3185374 c!534899) b!3185377))

(assert (= (and b!3185374 (not c!534899)) b!3185364))

(assert (= (and b!3185377 res!1295056) b!3185361))

(assert (= (and b!3185374 (not res!1295067)) b!3185360))

(assert (= b!3185357 b!3185353))

(assert (= b!3185379 b!3185357))

(assert (= (and start!298618 ((_ is Cons!35811) rules!2135)) b!3185379))

(assert (= b!3185358 b!3185352))

(assert (= b!3185363 b!3185358))

(assert (= start!298618 b!3185363))

(assert (= b!3185373 b!3185354))

(assert (= b!3185365 b!3185373))

(assert (= b!3185348 b!3185365))

(assert (= (and start!298618 ((_ is Cons!35810) tokens!494)) b!3185348))

(declare-fun m!3442631 () Bool)

(assert (=> b!3185356 m!3442631))

(declare-fun m!3442633 () Bool)

(assert (=> start!298618 m!3442633))

(declare-fun m!3442635 () Bool)

(assert (=> b!3185357 m!3442635))

(declare-fun m!3442637 () Bool)

(assert (=> b!3185357 m!3442637))

(declare-fun m!3442639 () Bool)

(assert (=> b!3185369 m!3442639))

(declare-fun m!3442641 () Bool)

(assert (=> b!3185376 m!3442641))

(declare-fun m!3442643 () Bool)

(assert (=> b!3185360 m!3442643))

(declare-fun m!3442645 () Bool)

(assert (=> b!3185360 m!3442645))

(declare-fun m!3442647 () Bool)

(assert (=> b!3185360 m!3442647))

(declare-fun m!3442649 () Bool)

(assert (=> b!3185360 m!3442649))

(declare-fun m!3442651 () Bool)

(assert (=> b!3185360 m!3442651))

(declare-fun m!3442653 () Bool)

(assert (=> b!3185360 m!3442653))

(assert (=> b!3185360 m!3442647))

(assert (=> b!3185360 m!3442653))

(declare-fun m!3442655 () Bool)

(assert (=> b!3185360 m!3442655))

(declare-fun m!3442657 () Bool)

(assert (=> b!3185373 m!3442657))

(declare-fun m!3442659 () Bool)

(assert (=> b!3185373 m!3442659))

(declare-fun m!3442661 () Bool)

(assert (=> b!3185365 m!3442661))

(declare-fun m!3442663 () Bool)

(assert (=> b!3185371 m!3442663))

(declare-fun m!3442665 () Bool)

(assert (=> b!3185371 m!3442665))

(declare-fun m!3442667 () Bool)

(assert (=> b!3185377 m!3442667))

(declare-fun m!3442669 () Bool)

(assert (=> b!3185377 m!3442669))

(declare-fun m!3442671 () Bool)

(assert (=> b!3185348 m!3442671))

(declare-fun m!3442673 () Bool)

(assert (=> b!3185359 m!3442673))

(declare-fun m!3442675 () Bool)

(assert (=> b!3185359 m!3442675))

(declare-fun m!3442677 () Bool)

(assert (=> b!3185359 m!3442677))

(assert (=> b!3185359 m!3442675))

(declare-fun m!3442679 () Bool)

(assert (=> b!3185359 m!3442679))

(declare-fun m!3442681 () Bool)

(assert (=> b!3185359 m!3442681))

(declare-fun m!3442683 () Bool)

(assert (=> b!3185363 m!3442683))

(declare-fun m!3442685 () Bool)

(assert (=> b!3185372 m!3442685))

(declare-fun m!3442687 () Bool)

(assert (=> b!3185372 m!3442687))

(declare-fun m!3442689 () Bool)

(assert (=> b!3185375 m!3442689))

(assert (=> b!3185375 m!3442689))

(declare-fun m!3442691 () Bool)

(assert (=> b!3185375 m!3442691))

(declare-fun m!3442693 () Bool)

(assert (=> b!3185351 m!3442693))

(declare-fun m!3442695 () Bool)

(assert (=> b!3185374 m!3442695))

(declare-fun m!3442697 () Bool)

(assert (=> b!3185374 m!3442697))

(declare-fun m!3442699 () Bool)

(assert (=> b!3185374 m!3442699))

(declare-fun m!3442701 () Bool)

(assert (=> b!3185374 m!3442701))

(declare-fun m!3442703 () Bool)

(assert (=> b!3185374 m!3442703))

(declare-fun m!3442705 () Bool)

(assert (=> b!3185374 m!3442705))

(declare-fun m!3442707 () Bool)

(assert (=> b!3185374 m!3442707))

(declare-fun m!3442709 () Bool)

(assert (=> b!3185374 m!3442709))

(declare-fun m!3442711 () Bool)

(assert (=> b!3185374 m!3442711))

(declare-fun m!3442713 () Bool)

(assert (=> b!3185374 m!3442713))

(declare-fun m!3442715 () Bool)

(assert (=> b!3185374 m!3442715))

(assert (=> b!3185374 m!3442707))

(assert (=> b!3185374 m!3442697))

(declare-fun m!3442717 () Bool)

(assert (=> b!3185374 m!3442717))

(declare-fun m!3442719 () Bool)

(assert (=> b!3185374 m!3442719))

(declare-fun m!3442721 () Bool)

(assert (=> b!3185374 m!3442721))

(declare-fun m!3442723 () Bool)

(assert (=> b!3185374 m!3442723))

(declare-fun m!3442725 () Bool)

(assert (=> b!3185374 m!3442725))

(declare-fun m!3442727 () Bool)

(assert (=> b!3185374 m!3442727))

(declare-fun m!3442729 () Bool)

(assert (=> b!3185350 m!3442729))

(declare-fun m!3442731 () Bool)

(assert (=> b!3185358 m!3442731))

(declare-fun m!3442733 () Bool)

(assert (=> b!3185358 m!3442733))

(declare-fun m!3442735 () Bool)

(assert (=> b!3185349 m!3442735))

(declare-fun m!3442737 () Bool)

(assert (=> b!3185349 m!3442737))

(declare-fun m!3442739 () Bool)

(assert (=> b!3185349 m!3442739))

(declare-fun m!3442741 () Bool)

(assert (=> b!3185349 m!3442741))

(declare-fun m!3442743 () Bool)

(assert (=> b!3185349 m!3442743))

(declare-fun m!3442745 () Bool)

(assert (=> b!3185366 m!3442745))

(declare-fun m!3442747 () Bool)

(assert (=> b!3185368 m!3442747))

(declare-fun m!3442749 () Bool)

(assert (=> b!3185362 m!3442749))

(declare-fun m!3442751 () Bool)

(assert (=> b!3185362 m!3442751))

(declare-fun m!3442753 () Bool)

(assert (=> b!3185355 m!3442753))

(declare-fun m!3442755 () Bool)

(assert (=> b!3185355 m!3442755))

(declare-fun m!3442757 () Bool)

(assert (=> b!3185355 m!3442757))

(check-sat b_and!210753 (not b!3185376) b_and!210751 (not b!3185357) (not b!3185349) (not start!298618) (not b!3185368) (not b!3185355) (not b!3185374) (not b!3185348) (not b!3185377) (not b_next!84833) (not b!3185366) (not b!3185350) (not b!3185369) b_and!210755 (not b!3185351) (not b!3185372) (not b!3185359) (not b!3185373) (not b!3185379) (not b!3185362) (not b!3185365) (not b!3185358) (not b_next!84827) (not b_next!84829) (not b!3185363) (not b!3185375) b_and!210757 b_and!210759 (not b_next!84835) (not b!3185356) b_and!210761 (not b_next!84831) (not b_next!84825) (not b!3185371) (not b!3185360))
(check-sat (not b_next!84833) b_and!210753 b_and!210755 b_and!210751 b_and!210757 (not b_next!84827) (not b_next!84829) b_and!210759 (not b_next!84835) b_and!210761 (not b_next!84831) (not b_next!84825))
(get-model)

(declare-fun bs!540033 () Bool)

(declare-fun d!871341 () Bool)

(assert (= bs!540033 (and d!871341 b!3185350)))

(declare-fun lambda!116534 () Int)

(assert (=> bs!540033 (not (= lambda!116534 lambda!116529))))

(declare-fun b!3185623 () Bool)

(declare-fun e!1985092 () Bool)

(assert (=> b!3185623 (= e!1985092 true)))

(declare-fun b!3185622 () Bool)

(declare-fun e!1985091 () Bool)

(assert (=> b!3185622 (= e!1985091 e!1985092)))

(declare-fun b!3185621 () Bool)

(declare-fun e!1985090 () Bool)

(assert (=> b!3185621 (= e!1985090 e!1985091)))

(assert (=> d!871341 e!1985090))

(assert (= b!3185622 b!3185623))

(assert (= b!3185621 b!3185622))

(assert (= (and d!871341 ((_ is Cons!35811) rules!2135)) b!3185621))

(declare-fun order!18241 () Int)

(declare-fun order!18239 () Int)

(declare-fun dynLambda!14448 (Int Int) Int)

(declare-fun dynLambda!14449 (Int Int) Int)

(assert (=> b!3185623 (< (dynLambda!14448 order!18239 (toValue!7196 (transformation!5136 (h!41231 rules!2135)))) (dynLambda!14449 order!18241 lambda!116534))))

(declare-fun order!18243 () Int)

(declare-fun dynLambda!14450 (Int Int) Int)

(assert (=> b!3185623 (< (dynLambda!14450 order!18243 (toChars!7055 (transformation!5136 (h!41231 rules!2135)))) (dynLambda!14449 order!18241 lambda!116534))))

(assert (=> d!871341 true))

(declare-fun e!1985083 () Bool)

(assert (=> d!871341 e!1985083))

(declare-fun res!1295203 () Bool)

(assert (=> d!871341 (=> (not res!1295203) (not e!1985083))))

(declare-fun lt!1071600 () Bool)

(declare-fun list!12715 (BalanceConc!20910) List!35934)

(assert (=> d!871341 (= res!1295203 (= lt!1071600 (forall!7258 (list!12715 lt!1071489) lambda!116534)))))

(declare-fun forall!7259 (BalanceConc!20910 Int) Bool)

(assert (=> d!871341 (= lt!1071600 (forall!7259 lt!1071489 lambda!116534))))

(assert (=> d!871341 (not (isEmpty!19938 rules!2135))))

(assert (=> d!871341 (= (rulesProduceEachTokenIndividually!1176 thiss!18206 rules!2135 lt!1071489) lt!1071600)))

(declare-fun b!3185612 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1706 (LexerInterface!4725 List!35935 List!35934) Bool)

(assert (=> b!3185612 (= e!1985083 (= lt!1071600 (rulesProduceEachTokenIndividuallyList!1706 thiss!18206 rules!2135 (list!12715 lt!1071489))))))

(assert (= (and d!871341 res!1295203) b!3185612))

(declare-fun m!3443049 () Bool)

(assert (=> d!871341 m!3443049))

(assert (=> d!871341 m!3443049))

(declare-fun m!3443051 () Bool)

(assert (=> d!871341 m!3443051))

(declare-fun m!3443053 () Bool)

(assert (=> d!871341 m!3443053))

(assert (=> d!871341 m!3442745))

(assert (=> b!3185612 m!3443049))

(assert (=> b!3185612 m!3443049))

(declare-fun m!3443055 () Bool)

(assert (=> b!3185612 m!3443055))

(assert (=> b!3185362 d!871341))

(declare-fun d!871417 () Bool)

(declare-fun fromListB!1508 (List!35934) BalanceConc!20910)

(assert (=> d!871417 (= (seqFromList!3352 tokens!494) (fromListB!1508 tokens!494))))

(declare-fun bs!540034 () Bool)

(assert (= bs!540034 d!871417))

(declare-fun m!3443057 () Bool)

(assert (=> bs!540034 m!3443057))

(assert (=> b!3185362 d!871417))

(declare-fun d!871419 () Bool)

(declare-fun isEmpty!19943 (Option!7003) Bool)

(assert (=> d!871419 (= (isDefined!5485 (maxPrefix!2403 thiss!18206 rules!2135 lt!1071470)) (not (isEmpty!19943 (maxPrefix!2403 thiss!18206 rules!2135 lt!1071470))))))

(declare-fun bs!540035 () Bool)

(assert (= bs!540035 d!871419))

(assert (=> bs!540035 m!3442647))

(declare-fun m!3443059 () Bool)

(assert (=> bs!540035 m!3443059))

(assert (=> b!3185360 d!871419))

(declare-fun bm!231100 () Bool)

(declare-fun call!231107 () List!35933)

(declare-fun call!231105 () List!35933)

(declare-fun call!231106 () List!35933)

(declare-fun c!534965 () Bool)

(assert (=> bm!231100 (= call!231106 (++!8566 (ite c!534965 call!231105 call!231107) (ite c!534965 call!231107 call!231105)))))

(declare-fun b!3185642 () Bool)

(declare-fun e!1985104 () List!35933)

(declare-fun e!1985103 () List!35933)

(assert (=> b!3185642 (= e!1985104 e!1985103)))

(assert (=> b!3185642 (= c!534965 ((_ is Union!9895) (regex!5136 (rule!7558 (h!41230 tokens!494)))))))

(declare-fun d!871421 () Bool)

(declare-fun c!534967 () Bool)

(assert (=> d!871421 (= c!534967 (or ((_ is EmptyExpr!9895) (regex!5136 (rule!7558 (h!41230 tokens!494)))) ((_ is EmptyLang!9895) (regex!5136 (rule!7558 (h!41230 tokens!494))))))))

(declare-fun e!1985102 () List!35933)

(assert (=> d!871421 (= (usedCharacters!480 (regex!5136 (rule!7558 (h!41230 tokens!494)))) e!1985102)))

(declare-fun b!3185643 () Bool)

(assert (=> b!3185643 (= e!1985103 call!231106)))

(declare-fun b!3185644 () Bool)

(assert (=> b!3185644 (= e!1985103 call!231106)))

(declare-fun b!3185645 () Bool)

(declare-fun e!1985101 () List!35933)

(assert (=> b!3185645 (= e!1985101 (Cons!35809 (c!534900 (regex!5136 (rule!7558 (h!41230 tokens!494)))) Nil!35809))))

(declare-fun call!231108 () List!35933)

(declare-fun c!534968 () Bool)

(declare-fun bm!231101 () Bool)

(assert (=> bm!231101 (= call!231108 (usedCharacters!480 (ite c!534968 (reg!10224 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (ite c!534965 (regTwo!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (regOne!20302 (regex!5136 (rule!7558 (h!41230 tokens!494))))))))))

(declare-fun bm!231102 () Bool)

(assert (=> bm!231102 (= call!231107 call!231108)))

(declare-fun b!3185646 () Bool)

(assert (=> b!3185646 (= e!1985102 Nil!35809)))

(declare-fun b!3185647 () Bool)

(assert (=> b!3185647 (= e!1985102 e!1985101)))

(declare-fun c!534966 () Bool)

(assert (=> b!3185647 (= c!534966 ((_ is ElementMatch!9895) (regex!5136 (rule!7558 (h!41230 tokens!494)))))))

(declare-fun b!3185648 () Bool)

(assert (=> b!3185648 (= c!534968 ((_ is Star!9895) (regex!5136 (rule!7558 (h!41230 tokens!494)))))))

(assert (=> b!3185648 (= e!1985101 e!1985104)))

(declare-fun b!3185649 () Bool)

(assert (=> b!3185649 (= e!1985104 call!231108)))

(declare-fun bm!231103 () Bool)

(assert (=> bm!231103 (= call!231105 (usedCharacters!480 (ite c!534965 (regOne!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (regTwo!20302 (regex!5136 (rule!7558 (h!41230 tokens!494)))))))))

(assert (= (and d!871421 c!534967) b!3185646))

(assert (= (and d!871421 (not c!534967)) b!3185647))

(assert (= (and b!3185647 c!534966) b!3185645))

(assert (= (and b!3185647 (not c!534966)) b!3185648))

(assert (= (and b!3185648 c!534968) b!3185649))

(assert (= (and b!3185648 (not c!534968)) b!3185642))

(assert (= (and b!3185642 c!534965) b!3185643))

(assert (= (and b!3185642 (not c!534965)) b!3185644))

(assert (= (or b!3185643 b!3185644) bm!231102))

(assert (= (or b!3185643 b!3185644) bm!231103))

(assert (= (or b!3185643 b!3185644) bm!231100))

(assert (= (or b!3185649 bm!231102) bm!231101))

(declare-fun m!3443061 () Bool)

(assert (=> bm!231100 m!3443061))

(declare-fun m!3443063 () Bool)

(assert (=> bm!231101 m!3443063))

(declare-fun m!3443065 () Bool)

(assert (=> bm!231103 m!3443065))

(assert (=> b!3185360 d!871421))

(declare-fun d!871423 () Bool)

(assert (=> d!871423 (not (contains!6351 (usedCharacters!480 (regex!5136 (rule!7558 (h!41230 tokens!494)))) lt!1071495))))

(declare-fun lt!1071603 () Unit!50220)

(declare-fun choose!18591 (LexerInterface!4725 List!35935 List!35935 Rule!10072 Rule!10072 C!19976) Unit!50220)

(assert (=> d!871423 (= lt!1071603 (choose!18591 thiss!18206 rules!2135 rules!2135 (rule!7558 (h!41230 tokens!494)) (rule!7558 separatorToken!241) lt!1071495))))

(assert (=> d!871423 (rulesInvariant!4122 thiss!18206 rules!2135)))

(assert (=> d!871423 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!112 thiss!18206 rules!2135 rules!2135 (rule!7558 (h!41230 tokens!494)) (rule!7558 separatorToken!241) lt!1071495) lt!1071603)))

(declare-fun bs!540036 () Bool)

(assert (= bs!540036 d!871423))

(assert (=> bs!540036 m!3442653))

(assert (=> bs!540036 m!3442653))

(assert (=> bs!540036 m!3442655))

(declare-fun m!3443067 () Bool)

(assert (=> bs!540036 m!3443067))

(assert (=> bs!540036 m!3442747))

(assert (=> b!3185360 d!871423))

(declare-fun d!871425 () Bool)

(declare-fun lt!1071606 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4850 (List!35933) (InoxSet C!19976))

(assert (=> d!871425 (= lt!1071606 (select (content!4850 (usedCharacters!480 (regex!5136 (rule!7558 (h!41230 tokens!494))))) lt!1071495))))

(declare-fun e!1985109 () Bool)

(assert (=> d!871425 (= lt!1071606 e!1985109)))

(declare-fun res!1295208 () Bool)

(assert (=> d!871425 (=> (not res!1295208) (not e!1985109))))

(assert (=> d!871425 (= res!1295208 ((_ is Cons!35809) (usedCharacters!480 (regex!5136 (rule!7558 (h!41230 tokens!494))))))))

(assert (=> d!871425 (= (contains!6351 (usedCharacters!480 (regex!5136 (rule!7558 (h!41230 tokens!494)))) lt!1071495) lt!1071606)))

(declare-fun b!3185654 () Bool)

(declare-fun e!1985110 () Bool)

(assert (=> b!3185654 (= e!1985109 e!1985110)))

(declare-fun res!1295209 () Bool)

(assert (=> b!3185654 (=> res!1295209 e!1985110)))

(assert (=> b!3185654 (= res!1295209 (= (h!41229 (usedCharacters!480 (regex!5136 (rule!7558 (h!41230 tokens!494))))) lt!1071495))))

(declare-fun b!3185655 () Bool)

(assert (=> b!3185655 (= e!1985110 (contains!6351 (t!235526 (usedCharacters!480 (regex!5136 (rule!7558 (h!41230 tokens!494))))) lt!1071495))))

(assert (= (and d!871425 res!1295208) b!3185654))

(assert (= (and b!3185654 (not res!1295209)) b!3185655))

(assert (=> d!871425 m!3442653))

(declare-fun m!3443069 () Bool)

(assert (=> d!871425 m!3443069))

(declare-fun m!3443071 () Bool)

(assert (=> d!871425 m!3443071))

(declare-fun m!3443073 () Bool)

(assert (=> b!3185655 m!3443073))

(assert (=> b!3185360 d!871425))

(declare-fun b!3185674 () Bool)

(declare-fun res!1295227 () Bool)

(declare-fun e!1985118 () Bool)

(assert (=> b!3185674 (=> (not res!1295227) (not e!1985118))))

(declare-fun lt!1071621 () Option!7003)

(declare-fun get!11399 (Option!7003) tuple2!35168)

(assert (=> b!3185674 (= res!1295227 (= (value!166836 (_1!20718 (get!11399 lt!1071621))) (apply!8064 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621)))) (seqFromList!3351 (originalCharacters!5850 (_1!20718 (get!11399 lt!1071621)))))))))

(declare-fun bm!231106 () Bool)

(declare-fun call!231111 () Option!7003)

(assert (=> bm!231106 (= call!231111 (maxPrefixOneRule!1530 thiss!18206 (h!41231 rules!2135) lt!1071470))))

(declare-fun b!3185675 () Bool)

(declare-fun e!1985119 () Option!7003)

(assert (=> b!3185675 (= e!1985119 call!231111)))

(declare-fun b!3185676 () Bool)

(declare-fun res!1295228 () Bool)

(assert (=> b!3185676 (=> (not res!1295228) (not e!1985118))))

(assert (=> b!3185676 (= res!1295228 (matchR!4553 (regex!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621)))) (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071621))))))))

(declare-fun d!871427 () Bool)

(declare-fun e!1985117 () Bool)

(assert (=> d!871427 e!1985117))

(declare-fun res!1295226 () Bool)

(assert (=> d!871427 (=> res!1295226 e!1985117)))

(assert (=> d!871427 (= res!1295226 (isEmpty!19943 lt!1071621))))

(assert (=> d!871427 (= lt!1071621 e!1985119)))

(declare-fun c!534972 () Bool)

(assert (=> d!871427 (= c!534972 (and ((_ is Cons!35811) rules!2135) ((_ is Nil!35811) (t!235528 rules!2135))))))

(declare-fun lt!1071619 () Unit!50220)

(declare-fun lt!1071617 () Unit!50220)

(assert (=> d!871427 (= lt!1071619 lt!1071617)))

(declare-fun isPrefix!2771 (List!35933 List!35933) Bool)

(assert (=> d!871427 (isPrefix!2771 lt!1071470 lt!1071470)))

(declare-fun lemmaIsPrefixRefl!1730 (List!35933 List!35933) Unit!50220)

(assert (=> d!871427 (= lt!1071617 (lemmaIsPrefixRefl!1730 lt!1071470 lt!1071470))))

(declare-fun rulesValidInductive!1760 (LexerInterface!4725 List!35935) Bool)

(assert (=> d!871427 (rulesValidInductive!1760 thiss!18206 rules!2135)))

(assert (=> d!871427 (= (maxPrefix!2403 thiss!18206 rules!2135 lt!1071470) lt!1071621)))

(declare-fun b!3185677 () Bool)

(declare-fun res!1295224 () Bool)

(assert (=> b!3185677 (=> (not res!1295224) (not e!1985118))))

(assert (=> b!3185677 (= res!1295224 (< (size!27015 (_2!20718 (get!11399 lt!1071621))) (size!27015 lt!1071470)))))

(declare-fun b!3185678 () Bool)

(declare-fun res!1295230 () Bool)

(assert (=> b!3185678 (=> (not res!1295230) (not e!1985118))))

(assert (=> b!3185678 (= res!1295230 (= (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071621)))) (originalCharacters!5850 (_1!20718 (get!11399 lt!1071621)))))))

(declare-fun b!3185679 () Bool)

(declare-fun lt!1071618 () Option!7003)

(declare-fun lt!1071620 () Option!7003)

(assert (=> b!3185679 (= e!1985119 (ite (and ((_ is None!7002) lt!1071618) ((_ is None!7002) lt!1071620)) None!7002 (ite ((_ is None!7002) lt!1071620) lt!1071618 (ite ((_ is None!7002) lt!1071618) lt!1071620 (ite (>= (size!27014 (_1!20718 (v!35480 lt!1071618))) (size!27014 (_1!20718 (v!35480 lt!1071620)))) lt!1071618 lt!1071620)))))))

(assert (=> b!3185679 (= lt!1071618 call!231111)))

(assert (=> b!3185679 (= lt!1071620 (maxPrefix!2403 thiss!18206 (t!235528 rules!2135) lt!1071470))))

(declare-fun b!3185680 () Bool)

(declare-fun res!1295229 () Bool)

(assert (=> b!3185680 (=> (not res!1295229) (not e!1985118))))

(assert (=> b!3185680 (= res!1295229 (= (++!8566 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071621)))) (_2!20718 (get!11399 lt!1071621))) lt!1071470))))

(declare-fun b!3185681 () Bool)

(declare-fun contains!6354 (List!35935 Rule!10072) Bool)

(assert (=> b!3185681 (= e!1985118 (contains!6354 rules!2135 (rule!7558 (_1!20718 (get!11399 lt!1071621)))))))

(declare-fun b!3185682 () Bool)

(assert (=> b!3185682 (= e!1985117 e!1985118)))

(declare-fun res!1295225 () Bool)

(assert (=> b!3185682 (=> (not res!1295225) (not e!1985118))))

(assert (=> b!3185682 (= res!1295225 (isDefined!5485 lt!1071621))))

(assert (= (and d!871427 c!534972) b!3185675))

(assert (= (and d!871427 (not c!534972)) b!3185679))

(assert (= (or b!3185675 b!3185679) bm!231106))

(assert (= (and d!871427 (not res!1295226)) b!3185682))

(assert (= (and b!3185682 res!1295225) b!3185678))

(assert (= (and b!3185678 res!1295230) b!3185677))

(assert (= (and b!3185677 res!1295224) b!3185680))

(assert (= (and b!3185680 res!1295229) b!3185674))

(assert (= (and b!3185674 res!1295227) b!3185676))

(assert (= (and b!3185676 res!1295228) b!3185681))

(declare-fun m!3443075 () Bool)

(assert (=> b!3185676 m!3443075))

(declare-fun m!3443077 () Bool)

(assert (=> b!3185676 m!3443077))

(assert (=> b!3185676 m!3443077))

(declare-fun m!3443079 () Bool)

(assert (=> b!3185676 m!3443079))

(assert (=> b!3185676 m!3443079))

(declare-fun m!3443081 () Bool)

(assert (=> b!3185676 m!3443081))

(declare-fun m!3443083 () Bool)

(assert (=> b!3185682 m!3443083))

(assert (=> b!3185680 m!3443075))

(assert (=> b!3185680 m!3443077))

(assert (=> b!3185680 m!3443077))

(assert (=> b!3185680 m!3443079))

(assert (=> b!3185680 m!3443079))

(declare-fun m!3443085 () Bool)

(assert (=> b!3185680 m!3443085))

(declare-fun m!3443087 () Bool)

(assert (=> b!3185679 m!3443087))

(declare-fun m!3443089 () Bool)

(assert (=> d!871427 m!3443089))

(declare-fun m!3443091 () Bool)

(assert (=> d!871427 m!3443091))

(declare-fun m!3443093 () Bool)

(assert (=> d!871427 m!3443093))

(declare-fun m!3443095 () Bool)

(assert (=> d!871427 m!3443095))

(declare-fun m!3443097 () Bool)

(assert (=> bm!231106 m!3443097))

(assert (=> b!3185674 m!3443075))

(declare-fun m!3443099 () Bool)

(assert (=> b!3185674 m!3443099))

(assert (=> b!3185674 m!3443099))

(declare-fun m!3443101 () Bool)

(assert (=> b!3185674 m!3443101))

(assert (=> b!3185681 m!3443075))

(declare-fun m!3443103 () Bool)

(assert (=> b!3185681 m!3443103))

(assert (=> b!3185677 m!3443075))

(declare-fun m!3443105 () Bool)

(assert (=> b!3185677 m!3443105))

(declare-fun m!3443107 () Bool)

(assert (=> b!3185677 m!3443107))

(assert (=> b!3185678 m!3443075))

(assert (=> b!3185678 m!3443077))

(assert (=> b!3185678 m!3443077))

(assert (=> b!3185678 m!3443079))

(assert (=> b!3185360 d!871427))

(declare-fun b!3185683 () Bool)

(declare-fun res!1295234 () Bool)

(declare-fun e!1985121 () Bool)

(assert (=> b!3185683 (=> (not res!1295234) (not e!1985121))))

(declare-fun lt!1071628 () Option!7003)

(assert (=> b!3185683 (= res!1295234 (= (value!166836 (_1!20718 (get!11399 lt!1071628))) (apply!8064 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628)))) (seqFromList!3351 (originalCharacters!5850 (_1!20718 (get!11399 lt!1071628)))))))))

(declare-fun call!231112 () Option!7003)

(declare-fun bm!231107 () Bool)

(assert (=> bm!231107 (= call!231112 (maxPrefixOneRule!1530 thiss!18206 (h!41231 rules!2135) lt!1071473))))

(declare-fun b!3185684 () Bool)

(declare-fun e!1985122 () Option!7003)

(assert (=> b!3185684 (= e!1985122 call!231112)))

(declare-fun b!3185685 () Bool)

(declare-fun res!1295235 () Bool)

(assert (=> b!3185685 (=> (not res!1295235) (not e!1985121))))

(assert (=> b!3185685 (= res!1295235 (matchR!4553 (regex!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628)))) (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071628))))))))

(declare-fun d!871429 () Bool)

(declare-fun e!1985120 () Bool)

(assert (=> d!871429 e!1985120))

(declare-fun res!1295233 () Bool)

(assert (=> d!871429 (=> res!1295233 e!1985120)))

(assert (=> d!871429 (= res!1295233 (isEmpty!19943 lt!1071628))))

(assert (=> d!871429 (= lt!1071628 e!1985122)))

(declare-fun c!534973 () Bool)

(assert (=> d!871429 (= c!534973 (and ((_ is Cons!35811) rules!2135) ((_ is Nil!35811) (t!235528 rules!2135))))))

(declare-fun lt!1071626 () Unit!50220)

(declare-fun lt!1071624 () Unit!50220)

(assert (=> d!871429 (= lt!1071626 lt!1071624)))

(assert (=> d!871429 (isPrefix!2771 lt!1071473 lt!1071473)))

(assert (=> d!871429 (= lt!1071624 (lemmaIsPrefixRefl!1730 lt!1071473 lt!1071473))))

(assert (=> d!871429 (rulesValidInductive!1760 thiss!18206 rules!2135)))

(assert (=> d!871429 (= (maxPrefix!2403 thiss!18206 rules!2135 lt!1071473) lt!1071628)))

(declare-fun b!3185686 () Bool)

(declare-fun res!1295231 () Bool)

(assert (=> b!3185686 (=> (not res!1295231) (not e!1985121))))

(assert (=> b!3185686 (= res!1295231 (< (size!27015 (_2!20718 (get!11399 lt!1071628))) (size!27015 lt!1071473)))))

(declare-fun b!3185687 () Bool)

(declare-fun res!1295237 () Bool)

(assert (=> b!3185687 (=> (not res!1295237) (not e!1985121))))

(assert (=> b!3185687 (= res!1295237 (= (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071628)))) (originalCharacters!5850 (_1!20718 (get!11399 lt!1071628)))))))

(declare-fun b!3185688 () Bool)

(declare-fun lt!1071625 () Option!7003)

(declare-fun lt!1071627 () Option!7003)

(assert (=> b!3185688 (= e!1985122 (ite (and ((_ is None!7002) lt!1071625) ((_ is None!7002) lt!1071627)) None!7002 (ite ((_ is None!7002) lt!1071627) lt!1071625 (ite ((_ is None!7002) lt!1071625) lt!1071627 (ite (>= (size!27014 (_1!20718 (v!35480 lt!1071625))) (size!27014 (_1!20718 (v!35480 lt!1071627)))) lt!1071625 lt!1071627)))))))

(assert (=> b!3185688 (= lt!1071625 call!231112)))

(assert (=> b!3185688 (= lt!1071627 (maxPrefix!2403 thiss!18206 (t!235528 rules!2135) lt!1071473))))

(declare-fun b!3185689 () Bool)

(declare-fun res!1295236 () Bool)

(assert (=> b!3185689 (=> (not res!1295236) (not e!1985121))))

(assert (=> b!3185689 (= res!1295236 (= (++!8566 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071628)))) (_2!20718 (get!11399 lt!1071628))) lt!1071473))))

(declare-fun b!3185690 () Bool)

(assert (=> b!3185690 (= e!1985121 (contains!6354 rules!2135 (rule!7558 (_1!20718 (get!11399 lt!1071628)))))))

(declare-fun b!3185691 () Bool)

(assert (=> b!3185691 (= e!1985120 e!1985121)))

(declare-fun res!1295232 () Bool)

(assert (=> b!3185691 (=> (not res!1295232) (not e!1985121))))

(assert (=> b!3185691 (= res!1295232 (isDefined!5485 lt!1071628))))

(assert (= (and d!871429 c!534973) b!3185684))

(assert (= (and d!871429 (not c!534973)) b!3185688))

(assert (= (or b!3185684 b!3185688) bm!231107))

(assert (= (and d!871429 (not res!1295233)) b!3185691))

(assert (= (and b!3185691 res!1295232) b!3185687))

(assert (= (and b!3185687 res!1295237) b!3185686))

(assert (= (and b!3185686 res!1295231) b!3185689))

(assert (= (and b!3185689 res!1295236) b!3185683))

(assert (= (and b!3185683 res!1295234) b!3185685))

(assert (= (and b!3185685 res!1295235) b!3185690))

(declare-fun m!3443109 () Bool)

(assert (=> b!3185685 m!3443109))

(declare-fun m!3443111 () Bool)

(assert (=> b!3185685 m!3443111))

(assert (=> b!3185685 m!3443111))

(declare-fun m!3443113 () Bool)

(assert (=> b!3185685 m!3443113))

(assert (=> b!3185685 m!3443113))

(declare-fun m!3443115 () Bool)

(assert (=> b!3185685 m!3443115))

(declare-fun m!3443117 () Bool)

(assert (=> b!3185691 m!3443117))

(assert (=> b!3185689 m!3443109))

(assert (=> b!3185689 m!3443111))

(assert (=> b!3185689 m!3443111))

(assert (=> b!3185689 m!3443113))

(assert (=> b!3185689 m!3443113))

(declare-fun m!3443119 () Bool)

(assert (=> b!3185689 m!3443119))

(declare-fun m!3443121 () Bool)

(assert (=> b!3185688 m!3443121))

(declare-fun m!3443123 () Bool)

(assert (=> d!871429 m!3443123))

(declare-fun m!3443125 () Bool)

(assert (=> d!871429 m!3443125))

(declare-fun m!3443127 () Bool)

(assert (=> d!871429 m!3443127))

(assert (=> d!871429 m!3443095))

(declare-fun m!3443129 () Bool)

(assert (=> bm!231107 m!3443129))

(assert (=> b!3185683 m!3443109))

(declare-fun m!3443131 () Bool)

(assert (=> b!3185683 m!3443131))

(assert (=> b!3185683 m!3443131))

(declare-fun m!3443133 () Bool)

(assert (=> b!3185683 m!3443133))

(assert (=> b!3185690 m!3443109))

(declare-fun m!3443135 () Bool)

(assert (=> b!3185690 m!3443135))

(assert (=> b!3185686 m!3443109))

(declare-fun m!3443137 () Bool)

(assert (=> b!3185686 m!3443137))

(declare-fun m!3443139 () Bool)

(assert (=> b!3185686 m!3443139))

(assert (=> b!3185687 m!3443109))

(assert (=> b!3185687 m!3443111))

(assert (=> b!3185687 m!3443111))

(assert (=> b!3185687 m!3443113))

(assert (=> b!3185360 d!871429))

(declare-fun d!871431 () Bool)

(assert (=> d!871431 (= (maxPrefix!2403 thiss!18206 rules!2135 (++!8566 (list!12713 (charsOf!3158 (h!41230 tokens!494))) lt!1071487)) (Some!7002 (tuple2!35169 (h!41230 tokens!494) lt!1071487)))))

(declare-fun lt!1071631 () Unit!50220)

(declare-fun choose!18594 (LexerInterface!4725 List!35935 Token!9638 Rule!10072 List!35933 Rule!10072) Unit!50220)

(assert (=> d!871431 (= lt!1071631 (choose!18594 thiss!18206 rules!2135 (h!41230 tokens!494) (rule!7558 (h!41230 tokens!494)) lt!1071487 (rule!7558 separatorToken!241)))))

(assert (=> d!871431 (not (isEmpty!19938 rules!2135))))

(assert (=> d!871431 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!114 thiss!18206 rules!2135 (h!41230 tokens!494) (rule!7558 (h!41230 tokens!494)) lt!1071487 (rule!7558 separatorToken!241)) lt!1071631)))

(declare-fun bs!540037 () Bool)

(assert (= bs!540037 d!871431))

(assert (=> bs!540037 m!3442745))

(declare-fun m!3443141 () Bool)

(assert (=> bs!540037 m!3443141))

(assert (=> bs!540037 m!3442691))

(declare-fun m!3443143 () Bool)

(assert (=> bs!540037 m!3443143))

(assert (=> bs!540037 m!3443143))

(declare-fun m!3443145 () Bool)

(assert (=> bs!540037 m!3443145))

(assert (=> bs!540037 m!3442689))

(assert (=> bs!540037 m!3442689))

(assert (=> bs!540037 m!3442691))

(assert (=> b!3185360 d!871431))

(declare-fun b!3185702 () Bool)

(declare-fun res!1295242 () Bool)

(declare-fun e!1985128 () Bool)

(assert (=> b!3185702 (=> (not res!1295242) (not e!1985128))))

(declare-fun lt!1071634 () List!35933)

(assert (=> b!3185702 (= res!1295242 (= (size!27015 lt!1071634) (+ (size!27015 lt!1071493) (size!27015 lt!1071487))))))

(declare-fun b!3185701 () Bool)

(declare-fun e!1985127 () List!35933)

(assert (=> b!3185701 (= e!1985127 (Cons!35809 (h!41229 lt!1071493) (++!8566 (t!235526 lt!1071493) lt!1071487)))))

(declare-fun b!3185700 () Bool)

(assert (=> b!3185700 (= e!1985127 lt!1071487)))

(declare-fun b!3185703 () Bool)

(assert (=> b!3185703 (= e!1985128 (or (not (= lt!1071487 Nil!35809)) (= lt!1071634 lt!1071493)))))

(declare-fun d!871433 () Bool)

(assert (=> d!871433 e!1985128))

(declare-fun res!1295243 () Bool)

(assert (=> d!871433 (=> (not res!1295243) (not e!1985128))))

(assert (=> d!871433 (= res!1295243 (= (content!4850 lt!1071634) ((_ map or) (content!4850 lt!1071493) (content!4850 lt!1071487))))))

(assert (=> d!871433 (= lt!1071634 e!1985127)))

(declare-fun c!534976 () Bool)

(assert (=> d!871433 (= c!534976 ((_ is Nil!35809) lt!1071493))))

(assert (=> d!871433 (= (++!8566 lt!1071493 lt!1071487) lt!1071634)))

(assert (= (and d!871433 c!534976) b!3185700))

(assert (= (and d!871433 (not c!534976)) b!3185701))

(assert (= (and d!871433 res!1295243) b!3185702))

(assert (= (and b!3185702 res!1295242) b!3185703))

(declare-fun m!3443147 () Bool)

(assert (=> b!3185702 m!3443147))

(assert (=> b!3185702 m!3442715))

(declare-fun m!3443149 () Bool)

(assert (=> b!3185702 m!3443149))

(declare-fun m!3443151 () Bool)

(assert (=> b!3185701 m!3443151))

(declare-fun m!3443153 () Bool)

(assert (=> d!871433 m!3443153))

(declare-fun m!3443155 () Bool)

(assert (=> d!871433 m!3443155))

(declare-fun m!3443157 () Bool)

(assert (=> d!871433 m!3443157))

(assert (=> b!3185359 d!871433))

(declare-fun d!871435 () Bool)

(declare-fun list!12717 (Conc!10647) List!35933)

(assert (=> d!871435 (= (list!12713 lt!1071490) (list!12717 (c!534901 lt!1071490)))))

(declare-fun bs!540038 () Bool)

(assert (= bs!540038 d!871435))

(declare-fun m!3443159 () Bool)

(assert (=> bs!540038 m!3443159))

(assert (=> b!3185359 d!871435))

(declare-fun lt!1071637 () BalanceConc!20908)

(declare-fun d!871437 () Bool)

(declare-fun printWithSeparatorTokenList!98 (LexerInterface!4725 List!35934 Token!9638) List!35933)

(assert (=> d!871437 (= (list!12713 lt!1071637) (printWithSeparatorTokenList!98 thiss!18206 (list!12715 lt!1071489) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!12 (LexerInterface!4725 BalanceConc!20910 Token!9638 Int BalanceConc!20908) BalanceConc!20908)

(assert (=> d!871437 (= lt!1071637 (printWithSeparatorTokenTailRec!12 thiss!18206 lt!1071489 separatorToken!241 0 (BalanceConc!20909 Empty!10647)))))

(assert (=> d!871437 (isSeparator!5136 (rule!7558 separatorToken!241))))

(assert (=> d!871437 (= (printWithSeparatorToken!34 thiss!18206 lt!1071489 separatorToken!241) lt!1071637)))

(declare-fun bs!540039 () Bool)

(assert (= bs!540039 d!871437))

(declare-fun m!3443161 () Bool)

(assert (=> bs!540039 m!3443161))

(assert (=> bs!540039 m!3443049))

(assert (=> bs!540039 m!3443049))

(declare-fun m!3443163 () Bool)

(assert (=> bs!540039 m!3443163))

(declare-fun m!3443165 () Bool)

(assert (=> bs!540039 m!3443165))

(assert (=> b!3185359 d!871437))

(declare-fun d!871439 () Bool)

(declare-fun lt!1071640 () BalanceConc!20908)

(assert (=> d!871439 (= (list!12713 lt!1071640) (originalCharacters!5850 separatorToken!241))))

(declare-fun dynLambda!14452 (Int TokenValue!5366) BalanceConc!20908)

(assert (=> d!871439 (= lt!1071640 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (value!166836 separatorToken!241)))))

(assert (=> d!871439 (= (charsOf!3158 separatorToken!241) lt!1071640)))

(declare-fun b_lambda!86835 () Bool)

(assert (=> (not b_lambda!86835) (not d!871439)))

(declare-fun tb!155473 () Bool)

(declare-fun t!235556 () Bool)

(assert (=> (and b!3185353 (= (toChars!7055 (transformation!5136 (h!41231 rules!2135))) (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241)))) t!235556) tb!155473))

(declare-fun b!3185708 () Bool)

(declare-fun e!1985131 () Bool)

(declare-fun tp!1007459 () Bool)

(declare-fun inv!48663 (Conc!10647) Bool)

(assert (=> b!3185708 (= e!1985131 (and (inv!48663 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (value!166836 separatorToken!241)))) tp!1007459))))

(declare-fun result!197610 () Bool)

(declare-fun inv!48664 (BalanceConc!20908) Bool)

(assert (=> tb!155473 (= result!197610 (and (inv!48664 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (value!166836 separatorToken!241))) e!1985131))))

(assert (= tb!155473 b!3185708))

(declare-fun m!3443167 () Bool)

(assert (=> b!3185708 m!3443167))

(declare-fun m!3443169 () Bool)

(assert (=> tb!155473 m!3443169))

(assert (=> d!871439 t!235556))

(declare-fun b_and!210781 () Bool)

(assert (= b_and!210753 (and (=> t!235556 result!197610) b_and!210781)))

(declare-fun t!235558 () Bool)

(declare-fun tb!155475 () Bool)

(assert (=> (and b!3185354 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241)))) t!235558) tb!155475))

(declare-fun result!197614 () Bool)

(assert (= result!197614 result!197610))

(assert (=> d!871439 t!235558))

(declare-fun b_and!210783 () Bool)

(assert (= b_and!210757 (and (=> t!235558 result!197614) b_and!210783)))

(declare-fun t!235560 () Bool)

(declare-fun tb!155477 () Bool)

(assert (=> (and b!3185352 (= (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241)))) t!235560) tb!155477))

(declare-fun result!197616 () Bool)

(assert (= result!197616 result!197610))

(assert (=> d!871439 t!235560))

(declare-fun b_and!210785 () Bool)

(assert (= b_and!210761 (and (=> t!235560 result!197616) b_and!210785)))

(declare-fun m!3443171 () Bool)

(assert (=> d!871439 m!3443171))

(declare-fun m!3443173 () Bool)

(assert (=> d!871439 m!3443173))

(assert (=> b!3185359 d!871439))

(declare-fun d!871441 () Bool)

(assert (=> d!871441 (= (list!12713 (charsOf!3158 separatorToken!241)) (list!12717 (c!534901 (charsOf!3158 separatorToken!241))))))

(declare-fun bs!540040 () Bool)

(assert (= bs!540040 d!871441))

(declare-fun m!3443175 () Bool)

(assert (=> bs!540040 m!3443175))

(assert (=> b!3185359 d!871441))

(declare-fun d!871443 () Bool)

(assert (=> d!871443 (= (inv!48656 (tag!5650 (rule!7558 separatorToken!241))) (= (mod (str.len (value!166835 (tag!5650 (rule!7558 separatorToken!241)))) 2) 0))))

(assert (=> b!3185358 d!871443))

(declare-fun d!871445 () Bool)

(declare-fun res!1295246 () Bool)

(declare-fun e!1985134 () Bool)

(assert (=> d!871445 (=> (not res!1295246) (not e!1985134))))

(declare-fun semiInverseModEq!2139 (Int Int) Bool)

(assert (=> d!871445 (= res!1295246 (semiInverseModEq!2139 (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (toValue!7196 (transformation!5136 (rule!7558 separatorToken!241)))))))

(assert (=> d!871445 (= (inv!48660 (transformation!5136 (rule!7558 separatorToken!241))) e!1985134)))

(declare-fun b!3185711 () Bool)

(declare-fun equivClasses!2038 (Int Int) Bool)

(assert (=> b!3185711 (= e!1985134 (equivClasses!2038 (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (toValue!7196 (transformation!5136 (rule!7558 separatorToken!241)))))))

(assert (= (and d!871445 res!1295246) b!3185711))

(declare-fun m!3443177 () Bool)

(assert (=> d!871445 m!3443177))

(declare-fun m!3443179 () Bool)

(assert (=> b!3185711 m!3443179))

(assert (=> b!3185358 d!871445))

(declare-fun d!871447 () Bool)

(assert (=> d!871447 (= (isEmpty!19938 rules!2135) ((_ is Nil!35811) rules!2135))))

(assert (=> b!3185366 d!871447))

(declare-fun b!3185722 () Bool)

(declare-fun e!1985141 () Bool)

(declare-fun inv!17 (TokenValue!5366) Bool)

(assert (=> b!3185722 (= e!1985141 (inv!17 (value!166836 (h!41230 tokens!494))))))

(declare-fun d!871449 () Bool)

(declare-fun c!534981 () Bool)

(assert (=> d!871449 (= c!534981 ((_ is IntegerValue!16098) (value!166836 (h!41230 tokens!494))))))

(declare-fun e!1985142 () Bool)

(assert (=> d!871449 (= (inv!21 (value!166836 (h!41230 tokens!494))) e!1985142)))

(declare-fun b!3185723 () Bool)

(declare-fun e!1985143 () Bool)

(declare-fun inv!15 (TokenValue!5366) Bool)

(assert (=> b!3185723 (= e!1985143 (inv!15 (value!166836 (h!41230 tokens!494))))))

(declare-fun b!3185724 () Bool)

(declare-fun res!1295249 () Bool)

(assert (=> b!3185724 (=> res!1295249 e!1985143)))

(assert (=> b!3185724 (= res!1295249 (not ((_ is IntegerValue!16100) (value!166836 (h!41230 tokens!494)))))))

(assert (=> b!3185724 (= e!1985141 e!1985143)))

(declare-fun b!3185725 () Bool)

(assert (=> b!3185725 (= e!1985142 e!1985141)))

(declare-fun c!534982 () Bool)

(assert (=> b!3185725 (= c!534982 ((_ is IntegerValue!16099) (value!166836 (h!41230 tokens!494))))))

(declare-fun b!3185726 () Bool)

(declare-fun inv!16 (TokenValue!5366) Bool)

(assert (=> b!3185726 (= e!1985142 (inv!16 (value!166836 (h!41230 tokens!494))))))

(assert (= (and d!871449 c!534981) b!3185726))

(assert (= (and d!871449 (not c!534981)) b!3185725))

(assert (= (and b!3185725 c!534982) b!3185722))

(assert (= (and b!3185725 (not c!534982)) b!3185724))

(assert (= (and b!3185724 (not res!1295249)) b!3185723))

(declare-fun m!3443181 () Bool)

(assert (=> b!3185722 m!3443181))

(declare-fun m!3443183 () Bool)

(assert (=> b!3185723 m!3443183))

(declare-fun m!3443185 () Bool)

(assert (=> b!3185726 m!3443185))

(assert (=> b!3185365 d!871449))

(declare-fun b!3185727 () Bool)

(declare-fun e!1985144 () Bool)

(assert (=> b!3185727 (= e!1985144 (inv!17 (value!166836 separatorToken!241)))))

(declare-fun d!871451 () Bool)

(declare-fun c!534983 () Bool)

(assert (=> d!871451 (= c!534983 ((_ is IntegerValue!16098) (value!166836 separatorToken!241)))))

(declare-fun e!1985145 () Bool)

(assert (=> d!871451 (= (inv!21 (value!166836 separatorToken!241)) e!1985145)))

(declare-fun b!3185728 () Bool)

(declare-fun e!1985146 () Bool)

(assert (=> b!3185728 (= e!1985146 (inv!15 (value!166836 separatorToken!241)))))

(declare-fun b!3185729 () Bool)

(declare-fun res!1295250 () Bool)

(assert (=> b!3185729 (=> res!1295250 e!1985146)))

(assert (=> b!3185729 (= res!1295250 (not ((_ is IntegerValue!16100) (value!166836 separatorToken!241))))))

(assert (=> b!3185729 (= e!1985144 e!1985146)))

(declare-fun b!3185730 () Bool)

(assert (=> b!3185730 (= e!1985145 e!1985144)))

(declare-fun c!534984 () Bool)

(assert (=> b!3185730 (= c!534984 ((_ is IntegerValue!16099) (value!166836 separatorToken!241)))))

(declare-fun b!3185731 () Bool)

(assert (=> b!3185731 (= e!1985145 (inv!16 (value!166836 separatorToken!241)))))

(assert (= (and d!871451 c!534983) b!3185731))

(assert (= (and d!871451 (not c!534983)) b!3185730))

(assert (= (and b!3185730 c!534984) b!3185727))

(assert (= (and b!3185730 (not c!534984)) b!3185729))

(assert (= (and b!3185729 (not res!1295250)) b!3185728))

(declare-fun m!3443187 () Bool)

(assert (=> b!3185727 m!3443187))

(declare-fun m!3443189 () Bool)

(assert (=> b!3185728 m!3443189))

(declare-fun m!3443191 () Bool)

(assert (=> b!3185731 m!3443191))

(assert (=> b!3185363 d!871451))

(declare-fun d!871453 () Bool)

(assert (=> d!871453 (= (inv!48656 (tag!5650 (rule!7558 (h!41230 tokens!494)))) (= (mod (str.len (value!166835 (tag!5650 (rule!7558 (h!41230 tokens!494))))) 2) 0))))

(assert (=> b!3185373 d!871453))

(declare-fun d!871455 () Bool)

(declare-fun res!1295251 () Bool)

(declare-fun e!1985147 () Bool)

(assert (=> d!871455 (=> (not res!1295251) (not e!1985147))))

(assert (=> d!871455 (= res!1295251 (semiInverseModEq!2139 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))))))

(assert (=> d!871455 (= (inv!48660 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) e!1985147)))

(declare-fun b!3185732 () Bool)

(assert (=> b!3185732 (= e!1985147 (equivClasses!2038 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))))))

(assert (= (and d!871455 res!1295251) b!3185732))

(declare-fun m!3443193 () Bool)

(assert (=> d!871455 m!3443193))

(declare-fun m!3443195 () Bool)

(assert (=> b!3185732 m!3443195))

(assert (=> b!3185373 d!871455))

(declare-fun d!871457 () Bool)

(declare-fun res!1295256 () Bool)

(declare-fun e!1985152 () Bool)

(assert (=> d!871457 (=> res!1295256 e!1985152)))

(assert (=> d!871457 (= res!1295256 (not ((_ is Cons!35811) rules!2135)))))

(assert (=> d!871457 (= (sepAndNonSepRulesDisjointChars!1330 rules!2135 rules!2135) e!1985152)))

(declare-fun b!3185737 () Bool)

(declare-fun e!1985153 () Bool)

(assert (=> b!3185737 (= e!1985152 e!1985153)))

(declare-fun res!1295257 () Bool)

(assert (=> b!3185737 (=> (not res!1295257) (not e!1985153))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!575 (Rule!10072 List!35935) Bool)

(assert (=> b!3185737 (= res!1295257 (ruleDisjointCharsFromAllFromOtherType!575 (h!41231 rules!2135) rules!2135))))

(declare-fun b!3185738 () Bool)

(assert (=> b!3185738 (= e!1985153 (sepAndNonSepRulesDisjointChars!1330 rules!2135 (t!235528 rules!2135)))))

(assert (= (and d!871457 (not res!1295256)) b!3185737))

(assert (= (and b!3185737 res!1295257) b!3185738))

(declare-fun m!3443197 () Bool)

(assert (=> b!3185737 m!3443197))

(declare-fun m!3443199 () Bool)

(assert (=> b!3185738 m!3443199))

(assert (=> b!3185351 d!871457))

(declare-fun b!3185767 () Bool)

(declare-fun e!1985172 () Bool)

(declare-fun e!1985174 () Bool)

(assert (=> b!3185767 (= e!1985172 e!1985174)))

(declare-fun res!1295275 () Bool)

(assert (=> b!3185767 (=> (not res!1295275) (not e!1985174))))

(declare-fun lt!1071643 () Bool)

(assert (=> b!3185767 (= res!1295275 (not lt!1071643))))

(declare-fun b!3185768 () Bool)

(declare-fun e!1985171 () Bool)

(assert (=> b!3185768 (= e!1985171 (not (= (head!6967 lt!1071493) (c!534900 (regex!5136 lt!1071481)))))))

(declare-fun b!3185769 () Bool)

(declare-fun res!1295277 () Bool)

(assert (=> b!3185769 (=> res!1295277 e!1985171)))

(declare-fun tail!5184 (List!35933) List!35933)

(assert (=> b!3185769 (= res!1295277 (not (isEmpty!19939 (tail!5184 lt!1071493))))))

(declare-fun d!871459 () Bool)

(declare-fun e!1985168 () Bool)

(assert (=> d!871459 e!1985168))

(declare-fun c!534992 () Bool)

(assert (=> d!871459 (= c!534992 ((_ is EmptyExpr!9895) (regex!5136 lt!1071481)))))

(declare-fun e!1985173 () Bool)

(assert (=> d!871459 (= lt!1071643 e!1985173)))

(declare-fun c!534991 () Bool)

(assert (=> d!871459 (= c!534991 (isEmpty!19939 lt!1071493))))

(declare-fun validRegex!4538 (Regex!9895) Bool)

(assert (=> d!871459 (validRegex!4538 (regex!5136 lt!1071481))))

(assert (=> d!871459 (= (matchR!4553 (regex!5136 lt!1071481) lt!1071493) lt!1071643)))

(declare-fun bm!231110 () Bool)

(declare-fun call!231115 () Bool)

(assert (=> bm!231110 (= call!231115 (isEmpty!19939 lt!1071493))))

(declare-fun b!3185770 () Bool)

(declare-fun res!1295274 () Bool)

(declare-fun e!1985169 () Bool)

(assert (=> b!3185770 (=> (not res!1295274) (not e!1985169))))

(assert (=> b!3185770 (= res!1295274 (not call!231115))))

(declare-fun b!3185771 () Bool)

(declare-fun derivativeStep!2939 (Regex!9895 C!19976) Regex!9895)

(assert (=> b!3185771 (= e!1985173 (matchR!4553 (derivativeStep!2939 (regex!5136 lt!1071481) (head!6967 lt!1071493)) (tail!5184 lt!1071493)))))

(declare-fun b!3185772 () Bool)

(declare-fun res!1295279 () Bool)

(assert (=> b!3185772 (=> res!1295279 e!1985172)))

(assert (=> b!3185772 (= res!1295279 (not ((_ is ElementMatch!9895) (regex!5136 lt!1071481))))))

(declare-fun e!1985170 () Bool)

(assert (=> b!3185772 (= e!1985170 e!1985172)))

(declare-fun b!3185773 () Bool)

(declare-fun nullable!3386 (Regex!9895) Bool)

(assert (=> b!3185773 (= e!1985173 (nullable!3386 (regex!5136 lt!1071481)))))

(declare-fun b!3185774 () Bool)

(assert (=> b!3185774 (= e!1985174 e!1985171)))

(declare-fun res!1295276 () Bool)

(assert (=> b!3185774 (=> res!1295276 e!1985171)))

(assert (=> b!3185774 (= res!1295276 call!231115)))

(declare-fun b!3185775 () Bool)

(assert (=> b!3185775 (= e!1985169 (= (head!6967 lt!1071493) (c!534900 (regex!5136 lt!1071481))))))

(declare-fun b!3185776 () Bool)

(assert (=> b!3185776 (= e!1985168 e!1985170)))

(declare-fun c!534993 () Bool)

(assert (=> b!3185776 (= c!534993 ((_ is EmptyLang!9895) (regex!5136 lt!1071481)))))

(declare-fun b!3185777 () Bool)

(assert (=> b!3185777 (= e!1985170 (not lt!1071643))))

(declare-fun b!3185778 () Bool)

(declare-fun res!1295278 () Bool)

(assert (=> b!3185778 (=> res!1295278 e!1985172)))

(assert (=> b!3185778 (= res!1295278 e!1985169)))

(declare-fun res!1295280 () Bool)

(assert (=> b!3185778 (=> (not res!1295280) (not e!1985169))))

(assert (=> b!3185778 (= res!1295280 lt!1071643)))

(declare-fun b!3185779 () Bool)

(assert (=> b!3185779 (= e!1985168 (= lt!1071643 call!231115))))

(declare-fun b!3185780 () Bool)

(declare-fun res!1295281 () Bool)

(assert (=> b!3185780 (=> (not res!1295281) (not e!1985169))))

(assert (=> b!3185780 (= res!1295281 (isEmpty!19939 (tail!5184 lt!1071493)))))

(assert (= (and d!871459 c!534991) b!3185773))

(assert (= (and d!871459 (not c!534991)) b!3185771))

(assert (= (and d!871459 c!534992) b!3185779))

(assert (= (and d!871459 (not c!534992)) b!3185776))

(assert (= (and b!3185776 c!534993) b!3185777))

(assert (= (and b!3185776 (not c!534993)) b!3185772))

(assert (= (and b!3185772 (not res!1295279)) b!3185778))

(assert (= (and b!3185778 res!1295280) b!3185770))

(assert (= (and b!3185770 res!1295274) b!3185780))

(assert (= (and b!3185780 res!1295281) b!3185775))

(assert (= (and b!3185778 (not res!1295278)) b!3185767))

(assert (= (and b!3185767 res!1295275) b!3185774))

(assert (= (and b!3185774 (not res!1295276)) b!3185769))

(assert (= (and b!3185769 (not res!1295277)) b!3185768))

(assert (= (or b!3185779 b!3185770 b!3185774) bm!231110))

(declare-fun m!3443201 () Bool)

(assert (=> b!3185771 m!3443201))

(assert (=> b!3185771 m!3443201))

(declare-fun m!3443203 () Bool)

(assert (=> b!3185771 m!3443203))

(declare-fun m!3443205 () Bool)

(assert (=> b!3185771 m!3443205))

(assert (=> b!3185771 m!3443203))

(assert (=> b!3185771 m!3443205))

(declare-fun m!3443207 () Bool)

(assert (=> b!3185771 m!3443207))

(assert (=> b!3185769 m!3443205))

(assert (=> b!3185769 m!3443205))

(declare-fun m!3443209 () Bool)

(assert (=> b!3185769 m!3443209))

(assert (=> b!3185780 m!3443205))

(assert (=> b!3185780 m!3443205))

(assert (=> b!3185780 m!3443209))

(declare-fun m!3443211 () Bool)

(assert (=> d!871459 m!3443211))

(declare-fun m!3443213 () Bool)

(assert (=> d!871459 m!3443213))

(assert (=> b!3185775 m!3443201))

(assert (=> bm!231110 m!3443211))

(declare-fun m!3443215 () Bool)

(assert (=> b!3185773 m!3443215))

(assert (=> b!3185768 m!3443201))

(assert (=> b!3185372 d!871459))

(declare-fun d!871461 () Bool)

(assert (=> d!871461 (= (get!11397 lt!1071484) (v!35481 lt!1071484))))

(assert (=> b!3185372 d!871461))

(declare-fun d!871463 () Bool)

(declare-fun res!1295286 () Bool)

(declare-fun e!1985179 () Bool)

(assert (=> d!871463 (=> res!1295286 e!1985179)))

(assert (=> d!871463 (= res!1295286 ((_ is Nil!35810) tokens!494))))

(assert (=> d!871463 (= (forall!7258 tokens!494 lambda!116529) e!1985179)))

(declare-fun b!3185785 () Bool)

(declare-fun e!1985180 () Bool)

(assert (=> b!3185785 (= e!1985179 e!1985180)))

(declare-fun res!1295287 () Bool)

(assert (=> b!3185785 (=> (not res!1295287) (not e!1985180))))

(declare-fun dynLambda!14456 (Int Token!9638) Bool)

(assert (=> b!3185785 (= res!1295287 (dynLambda!14456 lambda!116529 (h!41230 tokens!494)))))

(declare-fun b!3185786 () Bool)

(assert (=> b!3185786 (= e!1985180 (forall!7258 (t!235527 tokens!494) lambda!116529))))

(assert (= (and d!871463 (not res!1295286)) b!3185785))

(assert (= (and b!3185785 res!1295287) b!3185786))

(declare-fun b_lambda!86837 () Bool)

(assert (=> (not b_lambda!86837) (not b!3185785)))

(declare-fun m!3443217 () Bool)

(assert (=> b!3185785 m!3443217))

(declare-fun m!3443219 () Bool)

(assert (=> b!3185786 m!3443219))

(assert (=> b!3185350 d!871463))

(declare-fun b!3185787 () Bool)

(declare-fun e!1985185 () Bool)

(declare-fun e!1985187 () Bool)

(assert (=> b!3185787 (= e!1985185 e!1985187)))

(declare-fun res!1295289 () Bool)

(assert (=> b!3185787 (=> (not res!1295289) (not e!1985187))))

(declare-fun lt!1071644 () Bool)

(assert (=> b!3185787 (= res!1295289 (not lt!1071644))))

(declare-fun b!3185788 () Bool)

(declare-fun e!1985184 () Bool)

(assert (=> b!3185788 (= e!1985184 (not (= (head!6967 lt!1071487) (c!534900 (regex!5136 lt!1071491)))))))

(declare-fun b!3185789 () Bool)

(declare-fun res!1295291 () Bool)

(assert (=> b!3185789 (=> res!1295291 e!1985184)))

(assert (=> b!3185789 (= res!1295291 (not (isEmpty!19939 (tail!5184 lt!1071487))))))

(declare-fun d!871465 () Bool)

(declare-fun e!1985181 () Bool)

(assert (=> d!871465 e!1985181))

(declare-fun c!534995 () Bool)

(assert (=> d!871465 (= c!534995 ((_ is EmptyExpr!9895) (regex!5136 lt!1071491)))))

(declare-fun e!1985186 () Bool)

(assert (=> d!871465 (= lt!1071644 e!1985186)))

(declare-fun c!534994 () Bool)

(assert (=> d!871465 (= c!534994 (isEmpty!19939 lt!1071487))))

(assert (=> d!871465 (validRegex!4538 (regex!5136 lt!1071491))))

(assert (=> d!871465 (= (matchR!4553 (regex!5136 lt!1071491) lt!1071487) lt!1071644)))

(declare-fun bm!231111 () Bool)

(declare-fun call!231116 () Bool)

(assert (=> bm!231111 (= call!231116 (isEmpty!19939 lt!1071487))))

(declare-fun b!3185790 () Bool)

(declare-fun res!1295288 () Bool)

(declare-fun e!1985182 () Bool)

(assert (=> b!3185790 (=> (not res!1295288) (not e!1985182))))

(assert (=> b!3185790 (= res!1295288 (not call!231116))))

(declare-fun b!3185791 () Bool)

(assert (=> b!3185791 (= e!1985186 (matchR!4553 (derivativeStep!2939 (regex!5136 lt!1071491) (head!6967 lt!1071487)) (tail!5184 lt!1071487)))))

(declare-fun b!3185792 () Bool)

(declare-fun res!1295293 () Bool)

(assert (=> b!3185792 (=> res!1295293 e!1985185)))

(assert (=> b!3185792 (= res!1295293 (not ((_ is ElementMatch!9895) (regex!5136 lt!1071491))))))

(declare-fun e!1985183 () Bool)

(assert (=> b!3185792 (= e!1985183 e!1985185)))

(declare-fun b!3185793 () Bool)

(assert (=> b!3185793 (= e!1985186 (nullable!3386 (regex!5136 lt!1071491)))))

(declare-fun b!3185794 () Bool)

(assert (=> b!3185794 (= e!1985187 e!1985184)))

(declare-fun res!1295290 () Bool)

(assert (=> b!3185794 (=> res!1295290 e!1985184)))

(assert (=> b!3185794 (= res!1295290 call!231116)))

(declare-fun b!3185795 () Bool)

(assert (=> b!3185795 (= e!1985182 (= (head!6967 lt!1071487) (c!534900 (regex!5136 lt!1071491))))))

(declare-fun b!3185796 () Bool)

(assert (=> b!3185796 (= e!1985181 e!1985183)))

(declare-fun c!534996 () Bool)

(assert (=> b!3185796 (= c!534996 ((_ is EmptyLang!9895) (regex!5136 lt!1071491)))))

(declare-fun b!3185797 () Bool)

(assert (=> b!3185797 (= e!1985183 (not lt!1071644))))

(declare-fun b!3185798 () Bool)

(declare-fun res!1295292 () Bool)

(assert (=> b!3185798 (=> res!1295292 e!1985185)))

(assert (=> b!3185798 (= res!1295292 e!1985182)))

(declare-fun res!1295294 () Bool)

(assert (=> b!3185798 (=> (not res!1295294) (not e!1985182))))

(assert (=> b!3185798 (= res!1295294 lt!1071644)))

(declare-fun b!3185799 () Bool)

(assert (=> b!3185799 (= e!1985181 (= lt!1071644 call!231116))))

(declare-fun b!3185800 () Bool)

(declare-fun res!1295295 () Bool)

(assert (=> b!3185800 (=> (not res!1295295) (not e!1985182))))

(assert (=> b!3185800 (= res!1295295 (isEmpty!19939 (tail!5184 lt!1071487)))))

(assert (= (and d!871465 c!534994) b!3185793))

(assert (= (and d!871465 (not c!534994)) b!3185791))

(assert (= (and d!871465 c!534995) b!3185799))

(assert (= (and d!871465 (not c!534995)) b!3185796))

(assert (= (and b!3185796 c!534996) b!3185797))

(assert (= (and b!3185796 (not c!534996)) b!3185792))

(assert (= (and b!3185792 (not res!1295293)) b!3185798))

(assert (= (and b!3185798 res!1295294) b!3185790))

(assert (= (and b!3185790 res!1295288) b!3185800))

(assert (= (and b!3185800 res!1295295) b!3185795))

(assert (= (and b!3185798 (not res!1295292)) b!3185787))

(assert (= (and b!3185787 res!1295289) b!3185794))

(assert (= (and b!3185794 (not res!1295290)) b!3185789))

(assert (= (and b!3185789 (not res!1295291)) b!3185788))

(assert (= (or b!3185799 b!3185790 b!3185794) bm!231111))

(assert (=> b!3185791 m!3442711))

(assert (=> b!3185791 m!3442711))

(declare-fun m!3443221 () Bool)

(assert (=> b!3185791 m!3443221))

(declare-fun m!3443223 () Bool)

(assert (=> b!3185791 m!3443223))

(assert (=> b!3185791 m!3443221))

(assert (=> b!3185791 m!3443223))

(declare-fun m!3443225 () Bool)

(assert (=> b!3185791 m!3443225))

(assert (=> b!3185789 m!3443223))

(assert (=> b!3185789 m!3443223))

(declare-fun m!3443227 () Bool)

(assert (=> b!3185789 m!3443227))

(assert (=> b!3185800 m!3443223))

(assert (=> b!3185800 m!3443223))

(assert (=> b!3185800 m!3443227))

(declare-fun m!3443229 () Bool)

(assert (=> d!871465 m!3443229))

(declare-fun m!3443231 () Bool)

(assert (=> d!871465 m!3443231))

(assert (=> b!3185795 m!3442711))

(assert (=> bm!231111 m!3443229))

(declare-fun m!3443233 () Bool)

(assert (=> b!3185793 m!3443233))

(assert (=> b!3185788 m!3442711))

(assert (=> b!3185371 d!871465))

(declare-fun d!871467 () Bool)

(assert (=> d!871467 (= (get!11397 lt!1071494) (v!35481 lt!1071494))))

(assert (=> b!3185371 d!871467))

(declare-fun d!871469 () Bool)

(assert (=> d!871469 (= (list!12713 lt!1071477) (list!12717 (c!534901 lt!1071477)))))

(declare-fun bs!540041 () Bool)

(assert (= bs!540041 d!871469))

(declare-fun m!3443235 () Bool)

(assert (=> bs!540041 m!3443235))

(assert (=> b!3185349 d!871469))

(declare-fun d!871471 () Bool)

(declare-fun e!1985190 () Bool)

(assert (=> d!871471 e!1985190))

(declare-fun res!1295298 () Bool)

(assert (=> d!871471 (=> (not res!1295298) (not e!1985190))))

(declare-fun lt!1071647 () BalanceConc!20910)

(assert (=> d!871471 (= res!1295298 (= (list!12715 lt!1071647) (Cons!35810 (h!41230 tokens!494) Nil!35810)))))

(declare-fun singleton!978 (Token!9638) BalanceConc!20910)

(assert (=> d!871471 (= lt!1071647 (singleton!978 (h!41230 tokens!494)))))

(assert (=> d!871471 (= (singletonSeq!2232 (h!41230 tokens!494)) lt!1071647)))

(declare-fun b!3185803 () Bool)

(declare-fun isBalanced!3189 (Conc!10648) Bool)

(assert (=> b!3185803 (= e!1985190 (isBalanced!3189 (c!534902 lt!1071647)))))

(assert (= (and d!871471 res!1295298) b!3185803))

(declare-fun m!3443237 () Bool)

(assert (=> d!871471 m!3443237))

(declare-fun m!3443239 () Bool)

(assert (=> d!871471 m!3443239))

(declare-fun m!3443241 () Bool)

(assert (=> b!3185803 m!3443241))

(assert (=> b!3185349 d!871471))

(declare-fun d!871473 () Bool)

(declare-fun c!534999 () Bool)

(assert (=> d!871473 (= c!534999 ((_ is Cons!35810) (Cons!35810 (h!41230 tokens!494) Nil!35810)))))

(declare-fun e!1985193 () List!35933)

(assert (=> d!871473 (= (printList!1279 thiss!18206 (Cons!35810 (h!41230 tokens!494) Nil!35810)) e!1985193)))

(declare-fun b!3185808 () Bool)

(assert (=> b!3185808 (= e!1985193 (++!8566 (list!12713 (charsOf!3158 (h!41230 (Cons!35810 (h!41230 tokens!494) Nil!35810)))) (printList!1279 thiss!18206 (t!235527 (Cons!35810 (h!41230 tokens!494) Nil!35810)))))))

(declare-fun b!3185809 () Bool)

(assert (=> b!3185809 (= e!1985193 Nil!35809)))

(assert (= (and d!871473 c!534999) b!3185808))

(assert (= (and d!871473 (not c!534999)) b!3185809))

(declare-fun m!3443243 () Bool)

(assert (=> b!3185808 m!3443243))

(assert (=> b!3185808 m!3443243))

(declare-fun m!3443245 () Bool)

(assert (=> b!3185808 m!3443245))

(declare-fun m!3443247 () Bool)

(assert (=> b!3185808 m!3443247))

(assert (=> b!3185808 m!3443245))

(assert (=> b!3185808 m!3443247))

(declare-fun m!3443249 () Bool)

(assert (=> b!3185808 m!3443249))

(assert (=> b!3185349 d!871473))

(declare-fun d!871475 () Bool)

(declare-fun lt!1071650 () BalanceConc!20908)

(assert (=> d!871475 (= (list!12713 lt!1071650) (printList!1279 thiss!18206 (list!12715 lt!1071475)))))

(assert (=> d!871475 (= lt!1071650 (printTailRec!1224 thiss!18206 lt!1071475 0 (BalanceConc!20909 Empty!10647)))))

(assert (=> d!871475 (= (print!1792 thiss!18206 lt!1071475) lt!1071650)))

(declare-fun bs!540042 () Bool)

(assert (= bs!540042 d!871475))

(declare-fun m!3443251 () Bool)

(assert (=> bs!540042 m!3443251))

(declare-fun m!3443253 () Bool)

(assert (=> bs!540042 m!3443253))

(assert (=> bs!540042 m!3443253))

(declare-fun m!3443255 () Bool)

(assert (=> bs!540042 m!3443255))

(assert (=> bs!540042 m!3442735))

(assert (=> b!3185349 d!871475))

(declare-fun d!871477 () Bool)

(declare-fun lt!1071665 () BalanceConc!20908)

(declare-fun printListTailRec!545 (LexerInterface!4725 List!35934 List!35933) List!35933)

(declare-fun dropList!1062 (BalanceConc!20910 Int) List!35934)

(assert (=> d!871477 (= (list!12713 lt!1071665) (printListTailRec!545 thiss!18206 (dropList!1062 lt!1071475 0) (list!12713 (BalanceConc!20909 Empty!10647))))))

(declare-fun e!1985199 () BalanceConc!20908)

(assert (=> d!871477 (= lt!1071665 e!1985199)))

(declare-fun c!535002 () Bool)

(declare-fun size!27018 (BalanceConc!20910) Int)

(assert (=> d!871477 (= c!535002 (>= 0 (size!27018 lt!1071475)))))

(declare-fun e!1985198 () Bool)

(assert (=> d!871477 e!1985198))

(declare-fun res!1295301 () Bool)

(assert (=> d!871477 (=> (not res!1295301) (not e!1985198))))

(assert (=> d!871477 (= res!1295301 (>= 0 0))))

(assert (=> d!871477 (= (printTailRec!1224 thiss!18206 lt!1071475 0 (BalanceConc!20909 Empty!10647)) lt!1071665)))

(declare-fun b!3185816 () Bool)

(assert (=> b!3185816 (= e!1985198 (<= 0 (size!27018 lt!1071475)))))

(declare-fun b!3185817 () Bool)

(assert (=> b!3185817 (= e!1985199 (BalanceConc!20909 Empty!10647))))

(declare-fun b!3185818 () Bool)

(declare-fun ++!8568 (BalanceConc!20908 BalanceConc!20908) BalanceConc!20908)

(declare-fun apply!8067 (BalanceConc!20910 Int) Token!9638)

(assert (=> b!3185818 (= e!1985199 (printTailRec!1224 thiss!18206 lt!1071475 (+ 0 1) (++!8568 (BalanceConc!20909 Empty!10647) (charsOf!3158 (apply!8067 lt!1071475 0)))))))

(declare-fun lt!1071669 () List!35934)

(assert (=> b!3185818 (= lt!1071669 (list!12715 lt!1071475))))

(declare-fun lt!1071667 () Unit!50220)

(declare-fun lemmaDropApply!1021 (List!35934 Int) Unit!50220)

(assert (=> b!3185818 (= lt!1071667 (lemmaDropApply!1021 lt!1071669 0))))

(declare-fun head!6969 (List!35934) Token!9638)

(declare-fun drop!1845 (List!35934 Int) List!35934)

(declare-fun apply!8068 (List!35934 Int) Token!9638)

(assert (=> b!3185818 (= (head!6969 (drop!1845 lt!1071669 0)) (apply!8068 lt!1071669 0))))

(declare-fun lt!1071670 () Unit!50220)

(assert (=> b!3185818 (= lt!1071670 lt!1071667)))

(declare-fun lt!1071668 () List!35934)

(assert (=> b!3185818 (= lt!1071668 (list!12715 lt!1071475))))

(declare-fun lt!1071671 () Unit!50220)

(declare-fun lemmaDropTail!905 (List!35934 Int) Unit!50220)

(assert (=> b!3185818 (= lt!1071671 (lemmaDropTail!905 lt!1071668 0))))

(declare-fun tail!5185 (List!35934) List!35934)

(assert (=> b!3185818 (= (tail!5185 (drop!1845 lt!1071668 0)) (drop!1845 lt!1071668 (+ 0 1)))))

(declare-fun lt!1071666 () Unit!50220)

(assert (=> b!3185818 (= lt!1071666 lt!1071671)))

(assert (= (and d!871477 res!1295301) b!3185816))

(assert (= (and d!871477 c!535002) b!3185817))

(assert (= (and d!871477 (not c!535002)) b!3185818))

(declare-fun m!3443257 () Bool)

(assert (=> d!871477 m!3443257))

(declare-fun m!3443259 () Bool)

(assert (=> d!871477 m!3443259))

(declare-fun m!3443261 () Bool)

(assert (=> d!871477 m!3443261))

(declare-fun m!3443263 () Bool)

(assert (=> d!871477 m!3443263))

(assert (=> d!871477 m!3443263))

(assert (=> d!871477 m!3443257))

(declare-fun m!3443265 () Bool)

(assert (=> d!871477 m!3443265))

(assert (=> b!3185816 m!3443259))

(declare-fun m!3443267 () Bool)

(assert (=> b!3185818 m!3443267))

(declare-fun m!3443269 () Bool)

(assert (=> b!3185818 m!3443269))

(declare-fun m!3443271 () Bool)

(assert (=> b!3185818 m!3443271))

(declare-fun m!3443273 () Bool)

(assert (=> b!3185818 m!3443273))

(assert (=> b!3185818 m!3443269))

(assert (=> b!3185818 m!3443271))

(declare-fun m!3443275 () Bool)

(assert (=> b!3185818 m!3443275))

(declare-fun m!3443277 () Bool)

(assert (=> b!3185818 m!3443277))

(assert (=> b!3185818 m!3443275))

(declare-fun m!3443279 () Bool)

(assert (=> b!3185818 m!3443279))

(assert (=> b!3185818 m!3443253))

(declare-fun m!3443281 () Bool)

(assert (=> b!3185818 m!3443281))

(declare-fun m!3443283 () Bool)

(assert (=> b!3185818 m!3443283))

(declare-fun m!3443285 () Bool)

(assert (=> b!3185818 m!3443285))

(declare-fun m!3443287 () Bool)

(assert (=> b!3185818 m!3443287))

(declare-fun m!3443289 () Bool)

(assert (=> b!3185818 m!3443289))

(assert (=> b!3185818 m!3443281))

(assert (=> b!3185818 m!3443267))

(assert (=> b!3185349 d!871477))

(declare-fun d!871479 () Bool)

(declare-fun res!1295306 () Bool)

(declare-fun e!1985202 () Bool)

(assert (=> d!871479 (=> (not res!1295306) (not e!1985202))))

(assert (=> d!871479 (= res!1295306 (not (isEmpty!19939 (originalCharacters!5850 separatorToken!241))))))

(assert (=> d!871479 (= (inv!48659 separatorToken!241) e!1985202)))

(declare-fun b!3185823 () Bool)

(declare-fun res!1295307 () Bool)

(assert (=> b!3185823 (=> (not res!1295307) (not e!1985202))))

(assert (=> b!3185823 (= res!1295307 (= (originalCharacters!5850 separatorToken!241) (list!12713 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (value!166836 separatorToken!241)))))))

(declare-fun b!3185824 () Bool)

(assert (=> b!3185824 (= e!1985202 (= (size!27014 separatorToken!241) (size!27015 (originalCharacters!5850 separatorToken!241))))))

(assert (= (and d!871479 res!1295306) b!3185823))

(assert (= (and b!3185823 res!1295307) b!3185824))

(declare-fun b_lambda!86839 () Bool)

(assert (=> (not b_lambda!86839) (not b!3185823)))

(assert (=> b!3185823 t!235556))

(declare-fun b_and!210787 () Bool)

(assert (= b_and!210781 (and (=> t!235556 result!197610) b_and!210787)))

(assert (=> b!3185823 t!235558))

(declare-fun b_and!210789 () Bool)

(assert (= b_and!210783 (and (=> t!235558 result!197614) b_and!210789)))

(assert (=> b!3185823 t!235560))

(declare-fun b_and!210791 () Bool)

(assert (= b_and!210785 (and (=> t!235560 result!197616) b_and!210791)))

(declare-fun m!3443291 () Bool)

(assert (=> d!871479 m!3443291))

(assert (=> b!3185823 m!3443173))

(assert (=> b!3185823 m!3443173))

(declare-fun m!3443293 () Bool)

(assert (=> b!3185823 m!3443293))

(declare-fun m!3443295 () Bool)

(assert (=> b!3185824 m!3443295))

(assert (=> start!298618 d!871479))

(declare-fun d!871481 () Bool)

(declare-fun res!1295308 () Bool)

(declare-fun e!1985203 () Bool)

(assert (=> d!871481 (=> (not res!1295308) (not e!1985203))))

(assert (=> d!871481 (= res!1295308 (not (isEmpty!19939 (originalCharacters!5850 (h!41230 tokens!494)))))))

(assert (=> d!871481 (= (inv!48659 (h!41230 tokens!494)) e!1985203)))

(declare-fun b!3185825 () Bool)

(declare-fun res!1295309 () Bool)

(assert (=> b!3185825 (=> (not res!1295309) (not e!1985203))))

(assert (=> b!3185825 (= res!1295309 (= (originalCharacters!5850 (h!41230 tokens!494)) (list!12713 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (value!166836 (h!41230 tokens!494))))))))

(declare-fun b!3185826 () Bool)

(assert (=> b!3185826 (= e!1985203 (= (size!27014 (h!41230 tokens!494)) (size!27015 (originalCharacters!5850 (h!41230 tokens!494)))))))

(assert (= (and d!871481 res!1295308) b!3185825))

(assert (= (and b!3185825 res!1295309) b!3185826))

(declare-fun b_lambda!86841 () Bool)

(assert (=> (not b_lambda!86841) (not b!3185825)))

(declare-fun tb!155479 () Bool)

(declare-fun t!235563 () Bool)

(assert (=> (and b!3185353 (= (toChars!7055 (transformation!5136 (h!41231 rules!2135))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235563) tb!155479))

(declare-fun b!3185827 () Bool)

(declare-fun e!1985204 () Bool)

(declare-fun tp!1007460 () Bool)

(assert (=> b!3185827 (= e!1985204 (and (inv!48663 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (value!166836 (h!41230 tokens!494))))) tp!1007460))))

(declare-fun result!197618 () Bool)

(assert (=> tb!155479 (= result!197618 (and (inv!48664 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (value!166836 (h!41230 tokens!494)))) e!1985204))))

(assert (= tb!155479 b!3185827))

(declare-fun m!3443297 () Bool)

(assert (=> b!3185827 m!3443297))

(declare-fun m!3443299 () Bool)

(assert (=> tb!155479 m!3443299))

(assert (=> b!3185825 t!235563))

(declare-fun b_and!210793 () Bool)

(assert (= b_and!210787 (and (=> t!235563 result!197618) b_and!210793)))

(declare-fun t!235565 () Bool)

(declare-fun tb!155481 () Bool)

(assert (=> (and b!3185354 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235565) tb!155481))

(declare-fun result!197620 () Bool)

(assert (= result!197620 result!197618))

(assert (=> b!3185825 t!235565))

(declare-fun b_and!210795 () Bool)

(assert (= b_and!210789 (and (=> t!235565 result!197620) b_and!210795)))

(declare-fun t!235567 () Bool)

(declare-fun tb!155483 () Bool)

(assert (=> (and b!3185352 (= (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235567) tb!155483))

(declare-fun result!197622 () Bool)

(assert (= result!197622 result!197618))

(assert (=> b!3185825 t!235567))

(declare-fun b_and!210797 () Bool)

(assert (= b_and!210791 (and (=> t!235567 result!197622) b_and!210797)))

(declare-fun m!3443301 () Bool)

(assert (=> d!871481 m!3443301))

(declare-fun m!3443303 () Bool)

(assert (=> b!3185825 m!3443303))

(assert (=> b!3185825 m!3443303))

(declare-fun m!3443305 () Bool)

(assert (=> b!3185825 m!3443305))

(declare-fun m!3443307 () Bool)

(assert (=> b!3185826 m!3443307))

(assert (=> b!3185348 d!871481))

(declare-fun d!871483 () Bool)

(declare-fun lt!1071677 () Bool)

(declare-fun e!1985222 () Bool)

(assert (=> d!871483 (= lt!1071677 e!1985222)))

(declare-fun res!1295321 () Bool)

(assert (=> d!871483 (=> (not res!1295321) (not e!1985222))))

(assert (=> d!871483 (= res!1295321 (= (list!12715 (_1!20717 (lex!2065 thiss!18206 rules!2135 (print!1792 thiss!18206 (singletonSeq!2232 (h!41230 tokens!494)))))) (list!12715 (singletonSeq!2232 (h!41230 tokens!494)))))))

(declare-fun e!1985221 () Bool)

(assert (=> d!871483 (= lt!1071677 e!1985221)))

(declare-fun res!1295320 () Bool)

(assert (=> d!871483 (=> (not res!1295320) (not e!1985221))))

(declare-fun lt!1071678 () tuple2!35166)

(assert (=> d!871483 (= res!1295320 (= (size!27018 (_1!20717 lt!1071678)) 1))))

(assert (=> d!871483 (= lt!1071678 (lex!2065 thiss!18206 rules!2135 (print!1792 thiss!18206 (singletonSeq!2232 (h!41230 tokens!494)))))))

(assert (=> d!871483 (not (isEmpty!19938 rules!2135))))

(assert (=> d!871483 (= (rulesProduceIndividualToken!2217 thiss!18206 rules!2135 (h!41230 tokens!494)) lt!1071677)))

(declare-fun b!3185850 () Bool)

(declare-fun res!1295319 () Bool)

(assert (=> b!3185850 (=> (not res!1295319) (not e!1985221))))

(assert (=> b!3185850 (= res!1295319 (= (apply!8067 (_1!20717 lt!1071678) 0) (h!41230 tokens!494)))))

(declare-fun b!3185851 () Bool)

(declare-fun isEmpty!19946 (BalanceConc!20908) Bool)

(assert (=> b!3185851 (= e!1985221 (isEmpty!19946 (_2!20717 lt!1071678)))))

(declare-fun b!3185852 () Bool)

(assert (=> b!3185852 (= e!1985222 (isEmpty!19946 (_2!20717 (lex!2065 thiss!18206 rules!2135 (print!1792 thiss!18206 (singletonSeq!2232 (h!41230 tokens!494)))))))))

(assert (= (and d!871483 res!1295320) b!3185850))

(assert (= (and b!3185850 res!1295319) b!3185851))

(assert (= (and d!871483 res!1295321) b!3185852))

(declare-fun m!3443317 () Bool)

(assert (=> d!871483 m!3443317))

(assert (=> d!871483 m!3442745))

(declare-fun m!3443319 () Bool)

(assert (=> d!871483 m!3443319))

(assert (=> d!871483 m!3442739))

(declare-fun m!3443321 () Bool)

(assert (=> d!871483 m!3443321))

(assert (=> d!871483 m!3442739))

(assert (=> d!871483 m!3442739))

(declare-fun m!3443323 () Bool)

(assert (=> d!871483 m!3443323))

(assert (=> d!871483 m!3443321))

(declare-fun m!3443325 () Bool)

(assert (=> d!871483 m!3443325))

(declare-fun m!3443327 () Bool)

(assert (=> b!3185850 m!3443327))

(declare-fun m!3443329 () Bool)

(assert (=> b!3185851 m!3443329))

(assert (=> b!3185852 m!3442739))

(assert (=> b!3185852 m!3442739))

(assert (=> b!3185852 m!3443321))

(assert (=> b!3185852 m!3443321))

(assert (=> b!3185852 m!3443325))

(declare-fun m!3443331 () Bool)

(assert (=> b!3185852 m!3443331))

(assert (=> b!3185369 d!871483))

(declare-fun d!871489 () Bool)

(declare-fun res!1295327 () Bool)

(declare-fun e!1985234 () Bool)

(assert (=> d!871489 (=> (not res!1295327) (not e!1985234))))

(declare-fun rulesValid!1898 (LexerInterface!4725 List!35935) Bool)

(assert (=> d!871489 (= res!1295327 (rulesValid!1898 thiss!18206 rules!2135))))

(assert (=> d!871489 (= (rulesInvariant!4122 thiss!18206 rules!2135) e!1985234)))

(declare-fun b!3185870 () Bool)

(declare-datatypes ((List!35936 0))(
  ( (Nil!35812) (Cons!35812 (h!41232 String!40164) (t!235603 List!35936)) )
))
(declare-fun noDuplicateTag!1894 (LexerInterface!4725 List!35935 List!35936) Bool)

(assert (=> b!3185870 (= e!1985234 (noDuplicateTag!1894 thiss!18206 rules!2135 Nil!35812))))

(assert (= (and d!871489 res!1295327) b!3185870))

(declare-fun m!3443339 () Bool)

(assert (=> d!871489 m!3443339))

(declare-fun m!3443341 () Bool)

(assert (=> b!3185870 m!3443341))

(assert (=> b!3185368 d!871489))

(declare-fun d!871493 () Bool)

(assert (=> d!871493 (= (inv!48656 (tag!5650 (h!41231 rules!2135))) (= (mod (str.len (value!166835 (tag!5650 (h!41231 rules!2135)))) 2) 0))))

(assert (=> b!3185357 d!871493))

(declare-fun d!871495 () Bool)

(declare-fun res!1295328 () Bool)

(declare-fun e!1985235 () Bool)

(assert (=> d!871495 (=> (not res!1295328) (not e!1985235))))

(assert (=> d!871495 (= res!1295328 (semiInverseModEq!2139 (toChars!7055 (transformation!5136 (h!41231 rules!2135))) (toValue!7196 (transformation!5136 (h!41231 rules!2135)))))))

(assert (=> d!871495 (= (inv!48660 (transformation!5136 (h!41231 rules!2135))) e!1985235)))

(declare-fun b!3185871 () Bool)

(assert (=> b!3185871 (= e!1985235 (equivClasses!2038 (toChars!7055 (transformation!5136 (h!41231 rules!2135))) (toValue!7196 (transformation!5136 (h!41231 rules!2135)))))))

(assert (= (and d!871495 res!1295328) b!3185871))

(declare-fun m!3443343 () Bool)

(assert (=> d!871495 m!3443343))

(declare-fun m!3443345 () Bool)

(assert (=> b!3185871 m!3443345))

(assert (=> b!3185357 d!871495))

(declare-fun d!871497 () Bool)

(assert (=> d!871497 (dynLambda!14456 lambda!116529 (h!41230 tokens!494))))

(declare-fun lt!1071681 () Unit!50220)

(declare-fun choose!18596 (List!35934 Int Token!9638) Unit!50220)

(assert (=> d!871497 (= lt!1071681 (choose!18596 tokens!494 lambda!116529 (h!41230 tokens!494)))))

(declare-fun e!1985238 () Bool)

(assert (=> d!871497 e!1985238))

(declare-fun res!1295331 () Bool)

(assert (=> d!871497 (=> (not res!1295331) (not e!1985238))))

(assert (=> d!871497 (= res!1295331 (forall!7258 tokens!494 lambda!116529))))

(assert (=> d!871497 (= (forallContained!1119 tokens!494 lambda!116529 (h!41230 tokens!494)) lt!1071681)))

(declare-fun b!3185874 () Bool)

(declare-fun contains!6355 (List!35934 Token!9638) Bool)

(assert (=> b!3185874 (= e!1985238 (contains!6355 tokens!494 (h!41230 tokens!494)))))

(assert (= (and d!871497 res!1295331) b!3185874))

(declare-fun b_lambda!86843 () Bool)

(assert (=> (not b_lambda!86843) (not d!871497)))

(assert (=> d!871497 m!3443217))

(declare-fun m!3443347 () Bool)

(assert (=> d!871497 m!3443347))

(assert (=> d!871497 m!3442729))

(declare-fun m!3443349 () Bool)

(assert (=> b!3185874 m!3443349))

(assert (=> b!3185356 d!871497))

(declare-fun d!871499 () Bool)

(assert (=> d!871499 (not (matchR!4553 (regex!5136 (rule!7558 separatorToken!241)) lt!1071487))))

(declare-fun lt!1071684 () Unit!50220)

(declare-fun choose!18597 (Regex!9895 List!35933 C!19976) Unit!50220)

(assert (=> d!871499 (= lt!1071684 (choose!18597 (regex!5136 (rule!7558 separatorToken!241)) lt!1071487 lt!1071495))))

(assert (=> d!871499 (validRegex!4538 (regex!5136 (rule!7558 separatorToken!241)))))

(assert (=> d!871499 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!334 (regex!5136 (rule!7558 separatorToken!241)) lt!1071487 lt!1071495) lt!1071684)))

(declare-fun bs!540045 () Bool)

(assert (= bs!540045 d!871499))

(assert (=> bs!540045 m!3442669))

(declare-fun m!3443351 () Bool)

(assert (=> bs!540045 m!3443351))

(declare-fun m!3443353 () Bool)

(assert (=> bs!540045 m!3443353))

(assert (=> b!3185377 d!871499))

(declare-fun b!3185875 () Bool)

(declare-fun e!1985243 () Bool)

(declare-fun e!1985245 () Bool)

(assert (=> b!3185875 (= e!1985243 e!1985245)))

(declare-fun res!1295333 () Bool)

(assert (=> b!3185875 (=> (not res!1295333) (not e!1985245))))

(declare-fun lt!1071685 () Bool)

(assert (=> b!3185875 (= res!1295333 (not lt!1071685))))

(declare-fun b!3185876 () Bool)

(declare-fun e!1985242 () Bool)

(assert (=> b!3185876 (= e!1985242 (not (= (head!6967 lt!1071487) (c!534900 (regex!5136 (rule!7558 separatorToken!241))))))))

(declare-fun b!3185877 () Bool)

(declare-fun res!1295335 () Bool)

(assert (=> b!3185877 (=> res!1295335 e!1985242)))

(assert (=> b!3185877 (= res!1295335 (not (isEmpty!19939 (tail!5184 lt!1071487))))))

(declare-fun d!871501 () Bool)

(declare-fun e!1985239 () Bool)

(assert (=> d!871501 e!1985239))

(declare-fun c!535011 () Bool)

(assert (=> d!871501 (= c!535011 ((_ is EmptyExpr!9895) (regex!5136 (rule!7558 separatorToken!241))))))

(declare-fun e!1985244 () Bool)

(assert (=> d!871501 (= lt!1071685 e!1985244)))

(declare-fun c!535010 () Bool)

(assert (=> d!871501 (= c!535010 (isEmpty!19939 lt!1071487))))

(assert (=> d!871501 (validRegex!4538 (regex!5136 (rule!7558 separatorToken!241)))))

(assert (=> d!871501 (= (matchR!4553 (regex!5136 (rule!7558 separatorToken!241)) lt!1071487) lt!1071685)))

(declare-fun bm!231112 () Bool)

(declare-fun call!231117 () Bool)

(assert (=> bm!231112 (= call!231117 (isEmpty!19939 lt!1071487))))

(declare-fun b!3185878 () Bool)

(declare-fun res!1295332 () Bool)

(declare-fun e!1985240 () Bool)

(assert (=> b!3185878 (=> (not res!1295332) (not e!1985240))))

(assert (=> b!3185878 (= res!1295332 (not call!231117))))

(declare-fun b!3185879 () Bool)

(assert (=> b!3185879 (= e!1985244 (matchR!4553 (derivativeStep!2939 (regex!5136 (rule!7558 separatorToken!241)) (head!6967 lt!1071487)) (tail!5184 lt!1071487)))))

(declare-fun b!3185880 () Bool)

(declare-fun res!1295337 () Bool)

(assert (=> b!3185880 (=> res!1295337 e!1985243)))

(assert (=> b!3185880 (= res!1295337 (not ((_ is ElementMatch!9895) (regex!5136 (rule!7558 separatorToken!241)))))))

(declare-fun e!1985241 () Bool)

(assert (=> b!3185880 (= e!1985241 e!1985243)))

(declare-fun b!3185881 () Bool)

(assert (=> b!3185881 (= e!1985244 (nullable!3386 (regex!5136 (rule!7558 separatorToken!241))))))

(declare-fun b!3185882 () Bool)

(assert (=> b!3185882 (= e!1985245 e!1985242)))

(declare-fun res!1295334 () Bool)

(assert (=> b!3185882 (=> res!1295334 e!1985242)))

(assert (=> b!3185882 (= res!1295334 call!231117)))

(declare-fun b!3185883 () Bool)

(assert (=> b!3185883 (= e!1985240 (= (head!6967 lt!1071487) (c!534900 (regex!5136 (rule!7558 separatorToken!241)))))))

(declare-fun b!3185884 () Bool)

(assert (=> b!3185884 (= e!1985239 e!1985241)))

(declare-fun c!535012 () Bool)

(assert (=> b!3185884 (= c!535012 ((_ is EmptyLang!9895) (regex!5136 (rule!7558 separatorToken!241))))))

(declare-fun b!3185885 () Bool)

(assert (=> b!3185885 (= e!1985241 (not lt!1071685))))

(declare-fun b!3185886 () Bool)

(declare-fun res!1295336 () Bool)

(assert (=> b!3185886 (=> res!1295336 e!1985243)))

(assert (=> b!3185886 (= res!1295336 e!1985240)))

(declare-fun res!1295338 () Bool)

(assert (=> b!3185886 (=> (not res!1295338) (not e!1985240))))

(assert (=> b!3185886 (= res!1295338 lt!1071685)))

(declare-fun b!3185887 () Bool)

(assert (=> b!3185887 (= e!1985239 (= lt!1071685 call!231117))))

(declare-fun b!3185888 () Bool)

(declare-fun res!1295339 () Bool)

(assert (=> b!3185888 (=> (not res!1295339) (not e!1985240))))

(assert (=> b!3185888 (= res!1295339 (isEmpty!19939 (tail!5184 lt!1071487)))))

(assert (= (and d!871501 c!535010) b!3185881))

(assert (= (and d!871501 (not c!535010)) b!3185879))

(assert (= (and d!871501 c!535011) b!3185887))

(assert (= (and d!871501 (not c!535011)) b!3185884))

(assert (= (and b!3185884 c!535012) b!3185885))

(assert (= (and b!3185884 (not c!535012)) b!3185880))

(assert (= (and b!3185880 (not res!1295337)) b!3185886))

(assert (= (and b!3185886 res!1295338) b!3185878))

(assert (= (and b!3185878 res!1295332) b!3185888))

(assert (= (and b!3185888 res!1295339) b!3185883))

(assert (= (and b!3185886 (not res!1295336)) b!3185875))

(assert (= (and b!3185875 res!1295333) b!3185882))

(assert (= (and b!3185882 (not res!1295334)) b!3185877))

(assert (= (and b!3185877 (not res!1295335)) b!3185876))

(assert (= (or b!3185887 b!3185878 b!3185882) bm!231112))

(assert (=> b!3185879 m!3442711))

(assert (=> b!3185879 m!3442711))

(declare-fun m!3443355 () Bool)

(assert (=> b!3185879 m!3443355))

(assert (=> b!3185879 m!3443223))

(assert (=> b!3185879 m!3443355))

(assert (=> b!3185879 m!3443223))

(declare-fun m!3443357 () Bool)

(assert (=> b!3185879 m!3443357))

(assert (=> b!3185877 m!3443223))

(assert (=> b!3185877 m!3443223))

(assert (=> b!3185877 m!3443227))

(assert (=> b!3185888 m!3443223))

(assert (=> b!3185888 m!3443223))

(assert (=> b!3185888 m!3443227))

(assert (=> d!871501 m!3443229))

(assert (=> d!871501 m!3443353))

(assert (=> b!3185883 m!3442711))

(assert (=> bm!231112 m!3443229))

(declare-fun m!3443359 () Bool)

(assert (=> b!3185881 m!3443359))

(assert (=> b!3185876 m!3442711))

(assert (=> b!3185377 d!871501))

(declare-fun lt!1071688 () Bool)

(declare-fun d!871503 () Bool)

(declare-fun isEmpty!19947 (List!35934) Bool)

(assert (=> d!871503 (= lt!1071688 (isEmpty!19947 (list!12715 (_1!20717 (lex!2065 thiss!18206 rules!2135 lt!1071478)))))))

(declare-fun isEmpty!19948 (Conc!10648) Bool)

(assert (=> d!871503 (= lt!1071688 (isEmpty!19948 (c!534902 (_1!20717 (lex!2065 thiss!18206 rules!2135 lt!1071478)))))))

(assert (=> d!871503 (= (isEmpty!19937 (_1!20717 (lex!2065 thiss!18206 rules!2135 lt!1071478))) lt!1071688)))

(declare-fun bs!540046 () Bool)

(assert (= bs!540046 d!871503))

(declare-fun m!3443361 () Bool)

(assert (=> bs!540046 m!3443361))

(assert (=> bs!540046 m!3443361))

(declare-fun m!3443363 () Bool)

(assert (=> bs!540046 m!3443363))

(declare-fun m!3443365 () Bool)

(assert (=> bs!540046 m!3443365))

(assert (=> b!3185355 d!871503))

(declare-fun lt!1071699 () tuple2!35166)

(declare-fun e!1985262 () Bool)

(declare-fun b!3185911 () Bool)

(declare-datatypes ((tuple2!35174 0))(
  ( (tuple2!35175 (_1!20721 List!35934) (_2!20721 List!35933)) )
))
(declare-fun lexList!1279 (LexerInterface!4725 List!35935 List!35933) tuple2!35174)

(assert (=> b!3185911 (= e!1985262 (= (list!12713 (_2!20717 lt!1071699)) (_2!20721 (lexList!1279 thiss!18206 rules!2135 (list!12713 lt!1071478)))))))

(declare-fun b!3185912 () Bool)

(declare-fun e!1985260 () Bool)

(assert (=> b!3185912 (= e!1985260 (= (_2!20717 lt!1071699) lt!1071478))))

(declare-fun b!3185913 () Bool)

(declare-fun res!1295358 () Bool)

(assert (=> b!3185913 (=> (not res!1295358) (not e!1985262))))

(assert (=> b!3185913 (= res!1295358 (= (list!12715 (_1!20717 lt!1071699)) (_1!20721 (lexList!1279 thiss!18206 rules!2135 (list!12713 lt!1071478)))))))

(declare-fun d!871505 () Bool)

(assert (=> d!871505 e!1985262))

(declare-fun res!1295360 () Bool)

(assert (=> d!871505 (=> (not res!1295360) (not e!1985262))))

(assert (=> d!871505 (= res!1295360 e!1985260)))

(declare-fun c!535015 () Bool)

(assert (=> d!871505 (= c!535015 (> (size!27018 (_1!20717 lt!1071699)) 0))))

(declare-fun lexTailRecV2!917 (LexerInterface!4725 List!35935 BalanceConc!20908 BalanceConc!20908 BalanceConc!20908 BalanceConc!20910) tuple2!35166)

(assert (=> d!871505 (= lt!1071699 (lexTailRecV2!917 thiss!18206 rules!2135 lt!1071478 (BalanceConc!20909 Empty!10647) lt!1071478 (BalanceConc!20911 Empty!10648)))))

(assert (=> d!871505 (= (lex!2065 thiss!18206 rules!2135 lt!1071478) lt!1071699)))

(declare-fun b!3185914 () Bool)

(declare-fun e!1985261 () Bool)

(assert (=> b!3185914 (= e!1985261 (not (isEmpty!19937 (_1!20717 lt!1071699))))))

(declare-fun b!3185915 () Bool)

(assert (=> b!3185915 (= e!1985260 e!1985261)))

(declare-fun res!1295359 () Bool)

(declare-fun size!27019 (BalanceConc!20908) Int)

(assert (=> b!3185915 (= res!1295359 (< (size!27019 (_2!20717 lt!1071699)) (size!27019 lt!1071478)))))

(assert (=> b!3185915 (=> (not res!1295359) (not e!1985261))))

(assert (= (and d!871505 c!535015) b!3185915))

(assert (= (and d!871505 (not c!535015)) b!3185912))

(assert (= (and b!3185915 res!1295359) b!3185914))

(assert (= (and d!871505 res!1295360) b!3185913))

(assert (= (and b!3185913 res!1295358) b!3185911))

(declare-fun m!3443399 () Bool)

(assert (=> b!3185913 m!3443399))

(declare-fun m!3443403 () Bool)

(assert (=> b!3185913 m!3443403))

(assert (=> b!3185913 m!3443403))

(declare-fun m!3443405 () Bool)

(assert (=> b!3185913 m!3443405))

(declare-fun m!3443407 () Bool)

(assert (=> d!871505 m!3443407))

(declare-fun m!3443409 () Bool)

(assert (=> d!871505 m!3443409))

(declare-fun m!3443411 () Bool)

(assert (=> b!3185911 m!3443411))

(assert (=> b!3185911 m!3443403))

(assert (=> b!3185911 m!3443403))

(assert (=> b!3185911 m!3443405))

(declare-fun m!3443413 () Bool)

(assert (=> b!3185915 m!3443413))

(declare-fun m!3443415 () Bool)

(assert (=> b!3185915 m!3443415))

(declare-fun m!3443417 () Bool)

(assert (=> b!3185914 m!3443417))

(assert (=> b!3185355 d!871505))

(declare-fun d!871511 () Bool)

(declare-fun fromListB!1510 (List!35933) BalanceConc!20908)

(assert (=> d!871511 (= (seqFromList!3351 lt!1071493) (fromListB!1510 lt!1071493))))

(declare-fun bs!540047 () Bool)

(assert (= bs!540047 d!871511))

(declare-fun m!3443419 () Bool)

(assert (=> bs!540047 m!3443419))

(assert (=> b!3185355 d!871511))

(declare-fun d!871513 () Bool)

(declare-fun lt!1071700 () Bool)

(declare-fun e!1985270 () Bool)

(assert (=> d!871513 (= lt!1071700 e!1985270)))

(declare-fun res!1295369 () Bool)

(assert (=> d!871513 (=> (not res!1295369) (not e!1985270))))

(assert (=> d!871513 (= res!1295369 (= (list!12715 (_1!20717 (lex!2065 thiss!18206 rules!2135 (print!1792 thiss!18206 (singletonSeq!2232 separatorToken!241))))) (list!12715 (singletonSeq!2232 separatorToken!241))))))

(declare-fun e!1985269 () Bool)

(assert (=> d!871513 (= lt!1071700 e!1985269)))

(declare-fun res!1295368 () Bool)

(assert (=> d!871513 (=> (not res!1295368) (not e!1985269))))

(declare-fun lt!1071701 () tuple2!35166)

(assert (=> d!871513 (= res!1295368 (= (size!27018 (_1!20717 lt!1071701)) 1))))

(assert (=> d!871513 (= lt!1071701 (lex!2065 thiss!18206 rules!2135 (print!1792 thiss!18206 (singletonSeq!2232 separatorToken!241))))))

(assert (=> d!871513 (not (isEmpty!19938 rules!2135))))

(assert (=> d!871513 (= (rulesProduceIndividualToken!2217 thiss!18206 rules!2135 separatorToken!241) lt!1071700)))

(declare-fun b!3185922 () Bool)

(declare-fun res!1295367 () Bool)

(assert (=> b!3185922 (=> (not res!1295367) (not e!1985269))))

(assert (=> b!3185922 (= res!1295367 (= (apply!8067 (_1!20717 lt!1071701) 0) separatorToken!241))))

(declare-fun b!3185923 () Bool)

(assert (=> b!3185923 (= e!1985269 (isEmpty!19946 (_2!20717 lt!1071701)))))

(declare-fun b!3185924 () Bool)

(assert (=> b!3185924 (= e!1985270 (isEmpty!19946 (_2!20717 (lex!2065 thiss!18206 rules!2135 (print!1792 thiss!18206 (singletonSeq!2232 separatorToken!241))))))))

(assert (= (and d!871513 res!1295368) b!3185922))

(assert (= (and b!3185922 res!1295367) b!3185923))

(assert (= (and d!871513 res!1295369) b!3185924))

(declare-fun m!3443423 () Bool)

(assert (=> d!871513 m!3443423))

(assert (=> d!871513 m!3442745))

(declare-fun m!3443425 () Bool)

(assert (=> d!871513 m!3443425))

(declare-fun m!3443427 () Bool)

(assert (=> d!871513 m!3443427))

(declare-fun m!3443429 () Bool)

(assert (=> d!871513 m!3443429))

(assert (=> d!871513 m!3443427))

(assert (=> d!871513 m!3443427))

(declare-fun m!3443431 () Bool)

(assert (=> d!871513 m!3443431))

(assert (=> d!871513 m!3443429))

(declare-fun m!3443433 () Bool)

(assert (=> d!871513 m!3443433))

(declare-fun m!3443435 () Bool)

(assert (=> b!3185922 m!3443435))

(declare-fun m!3443437 () Bool)

(assert (=> b!3185923 m!3443437))

(assert (=> b!3185924 m!3443427))

(assert (=> b!3185924 m!3443427))

(assert (=> b!3185924 m!3443429))

(assert (=> b!3185924 m!3443429))

(assert (=> b!3185924 m!3443433))

(declare-fun m!3443439 () Bool)

(assert (=> b!3185924 m!3443439))

(assert (=> b!3185376 d!871513))

(declare-fun d!871517 () Bool)

(assert (=> d!871517 (= (list!12713 (charsOf!3158 (h!41230 tokens!494))) (list!12717 (c!534901 (charsOf!3158 (h!41230 tokens!494)))))))

(declare-fun bs!540048 () Bool)

(assert (= bs!540048 d!871517))

(declare-fun m!3443441 () Bool)

(assert (=> bs!540048 m!3443441))

(assert (=> b!3185375 d!871517))

(declare-fun d!871519 () Bool)

(declare-fun lt!1071703 () BalanceConc!20908)

(assert (=> d!871519 (= (list!12713 lt!1071703) (originalCharacters!5850 (h!41230 tokens!494)))))

(assert (=> d!871519 (= lt!1071703 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (value!166836 (h!41230 tokens!494))))))

(assert (=> d!871519 (= (charsOf!3158 (h!41230 tokens!494)) lt!1071703)))

(declare-fun b_lambda!86847 () Bool)

(assert (=> (not b_lambda!86847) (not d!871519)))

(assert (=> d!871519 t!235563))

(declare-fun b_and!210799 () Bool)

(assert (= b_and!210793 (and (=> t!235563 result!197618) b_and!210799)))

(assert (=> d!871519 t!235565))

(declare-fun b_and!210801 () Bool)

(assert (= b_and!210795 (and (=> t!235565 result!197620) b_and!210801)))

(assert (=> d!871519 t!235567))

(declare-fun b_and!210803 () Bool)

(assert (= b_and!210797 (and (=> t!235567 result!197622) b_and!210803)))

(declare-fun m!3443451 () Bool)

(assert (=> d!871519 m!3443451))

(assert (=> d!871519 m!3443303))

(assert (=> b!3185375 d!871519))

(declare-fun d!871523 () Bool)

(assert (=> d!871523 (rulesProduceIndividualToken!2217 thiss!18206 rules!2135 (h!41230 tokens!494))))

(declare-fun lt!1071734 () Unit!50220)

(declare-fun choose!18599 (LexerInterface!4725 List!35935 List!35934 Token!9638) Unit!50220)

(assert (=> d!871523 (= lt!1071734 (choose!18599 thiss!18206 rules!2135 tokens!494 (h!41230 tokens!494)))))

(assert (=> d!871523 (not (isEmpty!19938 rules!2135))))

(assert (=> d!871523 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!786 thiss!18206 rules!2135 tokens!494 (h!41230 tokens!494)) lt!1071734)))

(declare-fun bs!540053 () Bool)

(assert (= bs!540053 d!871523))

(assert (=> bs!540053 m!3442639))

(declare-fun m!3443577 () Bool)

(assert (=> bs!540053 m!3443577))

(assert (=> bs!540053 m!3442745))

(assert (=> b!3185374 d!871523))

(declare-fun d!871555 () Bool)

(declare-fun lt!1071737 () List!35933)

(assert (=> d!871555 (= (++!8566 lt!1071493 lt!1071737) lt!1071493)))

(declare-fun e!1985345 () List!35933)

(assert (=> d!871555 (= lt!1071737 e!1985345)))

(declare-fun c!535032 () Bool)

(assert (=> d!871555 (= c!535032 ((_ is Cons!35809) lt!1071493))))

(assert (=> d!871555 (>= (size!27015 lt!1071493) (size!27015 lt!1071493))))

(assert (=> d!871555 (= (getSuffix!1352 lt!1071493 lt!1071493) lt!1071737)))

(declare-fun b!3186053 () Bool)

(assert (=> b!3186053 (= e!1985345 (getSuffix!1352 (tail!5184 lt!1071493) (t!235526 lt!1071493)))))

(declare-fun b!3186054 () Bool)

(assert (=> b!3186054 (= e!1985345 lt!1071493)))

(assert (= (and d!871555 c!535032) b!3186053))

(assert (= (and d!871555 (not c!535032)) b!3186054))

(declare-fun m!3443579 () Bool)

(assert (=> d!871555 m!3443579))

(assert (=> d!871555 m!3442715))

(assert (=> d!871555 m!3442715))

(assert (=> b!3186053 m!3443205))

(assert (=> b!3186053 m!3443205))

(declare-fun m!3443581 () Bool)

(assert (=> b!3186053 m!3443581))

(assert (=> b!3185374 d!871555))

(declare-fun d!871557 () Bool)

(declare-fun e!1985348 () Bool)

(assert (=> d!871557 e!1985348))

(declare-fun res!1295419 () Bool)

(assert (=> d!871557 (=> (not res!1295419) (not e!1985348))))

(assert (=> d!871557 (= res!1295419 (isDefined!5486 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 separatorToken!241)))))))

(declare-fun lt!1071740 () Unit!50220)

(declare-fun choose!18600 (LexerInterface!4725 List!35935 List!35933 Token!9638) Unit!50220)

(assert (=> d!871557 (= lt!1071740 (choose!18600 thiss!18206 rules!2135 lt!1071487 separatorToken!241))))

(assert (=> d!871557 (rulesInvariant!4122 thiss!18206 rules!2135)))

(assert (=> d!871557 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!865 thiss!18206 rules!2135 lt!1071487 separatorToken!241) lt!1071740)))

(declare-fun b!3186059 () Bool)

(declare-fun res!1295420 () Bool)

(assert (=> b!3186059 (=> (not res!1295420) (not e!1985348))))

(assert (=> b!3186059 (= res!1295420 (matchR!4553 (regex!5136 (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 separatorToken!241))))) (list!12713 (charsOf!3158 separatorToken!241))))))

(declare-fun b!3186060 () Bool)

(assert (=> b!3186060 (= e!1985348 (= (rule!7558 separatorToken!241) (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 separatorToken!241))))))))

(assert (= (and d!871557 res!1295419) b!3186059))

(assert (= (and b!3186059 res!1295420) b!3186060))

(assert (=> d!871557 m!3442727))

(assert (=> d!871557 m!3442727))

(declare-fun m!3443583 () Bool)

(assert (=> d!871557 m!3443583))

(declare-fun m!3443585 () Bool)

(assert (=> d!871557 m!3443585))

(assert (=> d!871557 m!3442747))

(assert (=> b!3186059 m!3442675))

(assert (=> b!3186059 m!3442679))

(declare-fun m!3443587 () Bool)

(assert (=> b!3186059 m!3443587))

(assert (=> b!3186059 m!3442675))

(assert (=> b!3186059 m!3442679))

(assert (=> b!3186059 m!3442727))

(assert (=> b!3186059 m!3442727))

(declare-fun m!3443589 () Bool)

(assert (=> b!3186059 m!3443589))

(assert (=> b!3186060 m!3442727))

(assert (=> b!3186060 m!3442727))

(assert (=> b!3186060 m!3443589))

(assert (=> b!3185374 d!871557))

(declare-fun d!871559 () Bool)

(assert (=> d!871559 (= (maxPrefixOneRule!1530 thiss!18206 (rule!7558 (h!41230 tokens!494)) lt!1071493) (Some!7002 (tuple2!35169 (Token!9639 (apply!8064 (transformation!5136 (rule!7558 (h!41230 tokens!494))) (seqFromList!3351 lt!1071493)) (rule!7558 (h!41230 tokens!494)) (size!27015 lt!1071493) lt!1071493) Nil!35809)))))

(declare-fun lt!1071743 () Unit!50220)

(declare-fun choose!18601 (LexerInterface!4725 List!35935 List!35933 List!35933 List!35933 Rule!10072) Unit!50220)

(assert (=> d!871559 (= lt!1071743 (choose!18601 thiss!18206 rules!2135 lt!1071493 lt!1071493 Nil!35809 (rule!7558 (h!41230 tokens!494))))))

(assert (=> d!871559 (not (isEmpty!19938 rules!2135))))

(assert (=> d!871559 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!643 thiss!18206 rules!2135 lt!1071493 lt!1071493 Nil!35809 (rule!7558 (h!41230 tokens!494))) lt!1071743)))

(declare-fun bs!540055 () Bool)

(assert (= bs!540055 d!871559))

(assert (=> bs!540055 m!3442715))

(assert (=> bs!540055 m!3442703))

(assert (=> bs!540055 m!3442757))

(declare-fun m!3443591 () Bool)

(assert (=> bs!540055 m!3443591))

(assert (=> bs!540055 m!3442745))

(assert (=> bs!540055 m!3442757))

(declare-fun m!3443593 () Bool)

(assert (=> bs!540055 m!3443593))

(assert (=> b!3185374 d!871559))

(declare-fun b!3186073 () Bool)

(declare-fun e!1985359 () Bool)

(declare-fun lt!1071752 () Option!7004)

(assert (=> b!3186073 (= e!1985359 (= (tag!5650 (get!11397 lt!1071752)) (tag!5650 (rule!7558 (h!41230 tokens!494)))))))

(declare-fun b!3186074 () Bool)

(declare-fun e!1985360 () Bool)

(assert (=> b!3186074 (= e!1985360 e!1985359)))

(declare-fun res!1295426 () Bool)

(assert (=> b!3186074 (=> (not res!1295426) (not e!1985359))))

(assert (=> b!3186074 (= res!1295426 (contains!6354 rules!2135 (get!11397 lt!1071752)))))

(declare-fun d!871561 () Bool)

(assert (=> d!871561 e!1985360))

(declare-fun res!1295425 () Bool)

(assert (=> d!871561 (=> res!1295425 e!1985360)))

(declare-fun isEmpty!19949 (Option!7004) Bool)

(assert (=> d!871561 (= res!1295425 (isEmpty!19949 lt!1071752))))

(declare-fun e!1985357 () Option!7004)

(assert (=> d!871561 (= lt!1071752 e!1985357)))

(declare-fun c!535037 () Bool)

(assert (=> d!871561 (= c!535037 (and ((_ is Cons!35811) rules!2135) (= (tag!5650 (h!41231 rules!2135)) (tag!5650 (rule!7558 (h!41230 tokens!494))))))))

(assert (=> d!871561 (rulesInvariant!4122 thiss!18206 rules!2135)))

(assert (=> d!871561 (= (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 (h!41230 tokens!494)))) lt!1071752)))

(declare-fun b!3186075 () Bool)

(declare-fun e!1985358 () Option!7004)

(assert (=> b!3186075 (= e!1985357 e!1985358)))

(declare-fun c!535038 () Bool)

(assert (=> b!3186075 (= c!535038 (and ((_ is Cons!35811) rules!2135) (not (= (tag!5650 (h!41231 rules!2135)) (tag!5650 (rule!7558 (h!41230 tokens!494)))))))))

(declare-fun b!3186076 () Bool)

(assert (=> b!3186076 (= e!1985357 (Some!7003 (h!41231 rules!2135)))))

(declare-fun b!3186077 () Bool)

(assert (=> b!3186077 (= e!1985358 None!7003)))

(declare-fun b!3186078 () Bool)

(declare-fun lt!1071751 () Unit!50220)

(declare-fun lt!1071750 () Unit!50220)

(assert (=> b!3186078 (= lt!1071751 lt!1071750)))

(assert (=> b!3186078 (rulesInvariant!4122 thiss!18206 (t!235528 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!338 (LexerInterface!4725 Rule!10072 List!35935) Unit!50220)

(assert (=> b!3186078 (= lt!1071750 (lemmaInvariantOnRulesThenOnTail!338 thiss!18206 (h!41231 rules!2135) (t!235528 rules!2135)))))

(assert (=> b!3186078 (= e!1985358 (getRuleFromTag!865 thiss!18206 (t!235528 rules!2135) (tag!5650 (rule!7558 (h!41230 tokens!494)))))))

(assert (= (and d!871561 c!535037) b!3186076))

(assert (= (and d!871561 (not c!535037)) b!3186075))

(assert (= (and b!3186075 c!535038) b!3186078))

(assert (= (and b!3186075 (not c!535038)) b!3186077))

(assert (= (and d!871561 (not res!1295425)) b!3186074))

(assert (= (and b!3186074 res!1295426) b!3186073))

(declare-fun m!3443595 () Bool)

(assert (=> b!3186073 m!3443595))

(assert (=> b!3186074 m!3443595))

(assert (=> b!3186074 m!3443595))

(declare-fun m!3443597 () Bool)

(assert (=> b!3186074 m!3443597))

(declare-fun m!3443599 () Bool)

(assert (=> d!871561 m!3443599))

(assert (=> d!871561 m!3442747))

(declare-fun m!3443601 () Bool)

(assert (=> b!3186078 m!3443601))

(declare-fun m!3443603 () Bool)

(assert (=> b!3186078 m!3443603))

(declare-fun m!3443605 () Bool)

(assert (=> b!3186078 m!3443605))

(assert (=> b!3185374 d!871561))

(declare-fun b!3186079 () Bool)

(declare-fun e!1985363 () Bool)

(declare-fun lt!1071755 () Option!7004)

(assert (=> b!3186079 (= e!1985363 (= (tag!5650 (get!11397 lt!1071755)) (tag!5650 (rule!7558 separatorToken!241))))))

(declare-fun b!3186080 () Bool)

(declare-fun e!1985364 () Bool)

(assert (=> b!3186080 (= e!1985364 e!1985363)))

(declare-fun res!1295428 () Bool)

(assert (=> b!3186080 (=> (not res!1295428) (not e!1985363))))

(assert (=> b!3186080 (= res!1295428 (contains!6354 rules!2135 (get!11397 lt!1071755)))))

(declare-fun d!871563 () Bool)

(assert (=> d!871563 e!1985364))

(declare-fun res!1295427 () Bool)

(assert (=> d!871563 (=> res!1295427 e!1985364)))

(assert (=> d!871563 (= res!1295427 (isEmpty!19949 lt!1071755))))

(declare-fun e!1985361 () Option!7004)

(assert (=> d!871563 (= lt!1071755 e!1985361)))

(declare-fun c!535039 () Bool)

(assert (=> d!871563 (= c!535039 (and ((_ is Cons!35811) rules!2135) (= (tag!5650 (h!41231 rules!2135)) (tag!5650 (rule!7558 separatorToken!241)))))))

(assert (=> d!871563 (rulesInvariant!4122 thiss!18206 rules!2135)))

(assert (=> d!871563 (= (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 separatorToken!241))) lt!1071755)))

(declare-fun b!3186081 () Bool)

(declare-fun e!1985362 () Option!7004)

(assert (=> b!3186081 (= e!1985361 e!1985362)))

(declare-fun c!535040 () Bool)

(assert (=> b!3186081 (= c!535040 (and ((_ is Cons!35811) rules!2135) (not (= (tag!5650 (h!41231 rules!2135)) (tag!5650 (rule!7558 separatorToken!241))))))))

(declare-fun b!3186082 () Bool)

(assert (=> b!3186082 (= e!1985361 (Some!7003 (h!41231 rules!2135)))))

(declare-fun b!3186083 () Bool)

(assert (=> b!3186083 (= e!1985362 None!7003)))

(declare-fun b!3186084 () Bool)

(declare-fun lt!1071754 () Unit!50220)

(declare-fun lt!1071753 () Unit!50220)

(assert (=> b!3186084 (= lt!1071754 lt!1071753)))

(assert (=> b!3186084 (rulesInvariant!4122 thiss!18206 (t!235528 rules!2135))))

(assert (=> b!3186084 (= lt!1071753 (lemmaInvariantOnRulesThenOnTail!338 thiss!18206 (h!41231 rules!2135) (t!235528 rules!2135)))))

(assert (=> b!3186084 (= e!1985362 (getRuleFromTag!865 thiss!18206 (t!235528 rules!2135) (tag!5650 (rule!7558 separatorToken!241))))))

(assert (= (and d!871563 c!535039) b!3186082))

(assert (= (and d!871563 (not c!535039)) b!3186081))

(assert (= (and b!3186081 c!535040) b!3186084))

(assert (= (and b!3186081 (not c!535040)) b!3186083))

(assert (= (and d!871563 (not res!1295427)) b!3186080))

(assert (= (and b!3186080 res!1295428) b!3186079))

(declare-fun m!3443607 () Bool)

(assert (=> b!3186079 m!3443607))

(assert (=> b!3186080 m!3443607))

(assert (=> b!3186080 m!3443607))

(declare-fun m!3443609 () Bool)

(assert (=> b!3186080 m!3443609))

(declare-fun m!3443611 () Bool)

(assert (=> d!871563 m!3443611))

(assert (=> d!871563 m!3442747))

(assert (=> b!3186084 m!3443601))

(assert (=> b!3186084 m!3443603))

(declare-fun m!3443613 () Bool)

(assert (=> b!3186084 m!3443613))

(assert (=> b!3185374 d!871563))

(declare-fun d!871565 () Bool)

(assert (=> d!871565 (isEmpty!19939 (getSuffix!1352 lt!1071493 lt!1071493))))

(declare-fun lt!1071758 () Unit!50220)

(declare-fun choose!18602 (List!35933) Unit!50220)

(assert (=> d!871565 (= lt!1071758 (choose!18602 lt!1071493))))

(assert (=> d!871565 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!30 lt!1071493) lt!1071758)))

(declare-fun bs!540056 () Bool)

(assert (= bs!540056 d!871565))

(assert (=> bs!540056 m!3442707))

(assert (=> bs!540056 m!3442707))

(assert (=> bs!540056 m!3442709))

(declare-fun m!3443615 () Bool)

(assert (=> bs!540056 m!3443615))

(assert (=> b!3185374 d!871565))

(declare-fun d!871567 () Bool)

(assert (=> d!871567 (= (isDefined!5486 lt!1071494) (not (isEmpty!19949 lt!1071494)))))

(declare-fun bs!540057 () Bool)

(assert (= bs!540057 d!871567))

(declare-fun m!3443617 () Bool)

(assert (=> bs!540057 m!3443617))

(assert (=> b!3185374 d!871567))

(declare-fun d!871569 () Bool)

(declare-fun lt!1071759 () Bool)

(assert (=> d!871569 (= lt!1071759 (select (content!4850 (usedCharacters!480 (regex!5136 (rule!7558 separatorToken!241)))) lt!1071495))))

(declare-fun e!1985365 () Bool)

(assert (=> d!871569 (= lt!1071759 e!1985365)))

(declare-fun res!1295429 () Bool)

(assert (=> d!871569 (=> (not res!1295429) (not e!1985365))))

(assert (=> d!871569 (= res!1295429 ((_ is Cons!35809) (usedCharacters!480 (regex!5136 (rule!7558 separatorToken!241)))))))

(assert (=> d!871569 (= (contains!6351 (usedCharacters!480 (regex!5136 (rule!7558 separatorToken!241))) lt!1071495) lt!1071759)))

(declare-fun b!3186085 () Bool)

(declare-fun e!1985366 () Bool)

(assert (=> b!3186085 (= e!1985365 e!1985366)))

(declare-fun res!1295430 () Bool)

(assert (=> b!3186085 (=> res!1295430 e!1985366)))

(assert (=> b!3186085 (= res!1295430 (= (h!41229 (usedCharacters!480 (regex!5136 (rule!7558 separatorToken!241)))) lt!1071495))))

(declare-fun b!3186086 () Bool)

(assert (=> b!3186086 (= e!1985366 (contains!6351 (t!235526 (usedCharacters!480 (regex!5136 (rule!7558 separatorToken!241)))) lt!1071495))))

(assert (= (and d!871569 res!1295429) b!3186085))

(assert (= (and b!3186085 (not res!1295430)) b!3186086))

(assert (=> d!871569 m!3442697))

(declare-fun m!3443619 () Bool)

(assert (=> d!871569 m!3443619))

(declare-fun m!3443621 () Bool)

(assert (=> d!871569 m!3443621))

(declare-fun m!3443623 () Bool)

(assert (=> b!3186086 m!3443623))

(assert (=> b!3185374 d!871569))

(declare-fun d!871571 () Bool)

(assert (=> d!871571 (= (isDefined!5486 lt!1071484) (not (isEmpty!19949 lt!1071484)))))

(declare-fun bs!540058 () Bool)

(assert (= bs!540058 d!871571))

(declare-fun m!3443625 () Bool)

(assert (=> bs!540058 m!3443625))

(assert (=> b!3185374 d!871571))

(declare-fun b!3186105 () Bool)

(declare-fun res!1295451 () Bool)

(declare-fun e!1985378 () Bool)

(assert (=> b!3186105 (=> (not res!1295451) (not e!1985378))))

(declare-fun lt!1071771 () Option!7003)

(assert (=> b!3186105 (= res!1295451 (= (rule!7558 (_1!20718 (get!11399 lt!1071771))) (rule!7558 (h!41230 tokens!494))))))

(declare-fun d!871573 () Bool)

(declare-fun e!1985376 () Bool)

(assert (=> d!871573 e!1985376))

(declare-fun res!1295448 () Bool)

(assert (=> d!871573 (=> res!1295448 e!1985376)))

(assert (=> d!871573 (= res!1295448 (isEmpty!19943 lt!1071771))))

(declare-fun e!1985375 () Option!7003)

(assert (=> d!871573 (= lt!1071771 e!1985375)))

(declare-fun c!535043 () Bool)

(declare-datatypes ((tuple2!35176 0))(
  ( (tuple2!35177 (_1!20722 List!35933) (_2!20722 List!35933)) )
))
(declare-fun lt!1071772 () tuple2!35176)

(assert (=> d!871573 (= c!535043 (isEmpty!19939 (_1!20722 lt!1071772)))))

(declare-fun findLongestMatch!734 (Regex!9895 List!35933) tuple2!35176)

(assert (=> d!871573 (= lt!1071772 (findLongestMatch!734 (regex!5136 (rule!7558 (h!41230 tokens!494))) lt!1071493))))

(declare-fun ruleValid!1630 (LexerInterface!4725 Rule!10072) Bool)

(assert (=> d!871573 (ruleValid!1630 thiss!18206 (rule!7558 (h!41230 tokens!494)))))

(assert (=> d!871573 (= (maxPrefixOneRule!1530 thiss!18206 (rule!7558 (h!41230 tokens!494)) lt!1071493) lt!1071771)))

(declare-fun b!3186106 () Bool)

(assert (=> b!3186106 (= e!1985375 None!7002)))

(declare-fun b!3186107 () Bool)

(declare-fun res!1295446 () Bool)

(assert (=> b!3186107 (=> (not res!1295446) (not e!1985378))))

(assert (=> b!3186107 (= res!1295446 (= (value!166836 (_1!20718 (get!11399 lt!1071771))) (apply!8064 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071771)))) (seqFromList!3351 (originalCharacters!5850 (_1!20718 (get!11399 lt!1071771)))))))))

(declare-fun b!3186108 () Bool)

(assert (=> b!3186108 (= e!1985376 e!1985378)))

(declare-fun res!1295445 () Bool)

(assert (=> b!3186108 (=> (not res!1295445) (not e!1985378))))

(assert (=> b!3186108 (= res!1295445 (matchR!4553 (regex!5136 (rule!7558 (h!41230 tokens!494))) (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071771))))))))

(declare-fun b!3186109 () Bool)

(declare-fun res!1295447 () Bool)

(assert (=> b!3186109 (=> (not res!1295447) (not e!1985378))))

(assert (=> b!3186109 (= res!1295447 (< (size!27015 (_2!20718 (get!11399 lt!1071771))) (size!27015 lt!1071493)))))

(declare-fun b!3186110 () Bool)

(declare-fun e!1985377 () Bool)

(declare-fun findLongestMatchInner!819 (Regex!9895 List!35933 Int List!35933 List!35933 Int) tuple2!35176)

(assert (=> b!3186110 (= e!1985377 (matchR!4553 (regex!5136 (rule!7558 (h!41230 tokens!494))) (_1!20722 (findLongestMatchInner!819 (regex!5136 (rule!7558 (h!41230 tokens!494))) Nil!35809 (size!27015 Nil!35809) lt!1071493 lt!1071493 (size!27015 lt!1071493)))))))

(declare-fun b!3186111 () Bool)

(assert (=> b!3186111 (= e!1985378 (= (size!27014 (_1!20718 (get!11399 lt!1071771))) (size!27015 (originalCharacters!5850 (_1!20718 (get!11399 lt!1071771))))))))

(declare-fun b!3186112 () Bool)

(assert (=> b!3186112 (= e!1985375 (Some!7002 (tuple2!35169 (Token!9639 (apply!8064 (transformation!5136 (rule!7558 (h!41230 tokens!494))) (seqFromList!3351 (_1!20722 lt!1071772))) (rule!7558 (h!41230 tokens!494)) (size!27019 (seqFromList!3351 (_1!20722 lt!1071772))) (_1!20722 lt!1071772)) (_2!20722 lt!1071772))))))

(declare-fun lt!1071774 () Unit!50220)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!792 (Regex!9895 List!35933) Unit!50220)

(assert (=> b!3186112 (= lt!1071774 (longestMatchIsAcceptedByMatchOrIsEmpty!792 (regex!5136 (rule!7558 (h!41230 tokens!494))) lt!1071493))))

(declare-fun res!1295450 () Bool)

(assert (=> b!3186112 (= res!1295450 (isEmpty!19939 (_1!20722 (findLongestMatchInner!819 (regex!5136 (rule!7558 (h!41230 tokens!494))) Nil!35809 (size!27015 Nil!35809) lt!1071493 lt!1071493 (size!27015 lt!1071493)))))))

(assert (=> b!3186112 (=> res!1295450 e!1985377)))

(assert (=> b!3186112 e!1985377))

(declare-fun lt!1071773 () Unit!50220)

(assert (=> b!3186112 (= lt!1071773 lt!1071774)))

(declare-fun lt!1071770 () Unit!50220)

(declare-fun lemmaSemiInverse!1161 (TokenValueInjection!10160 BalanceConc!20908) Unit!50220)

(assert (=> b!3186112 (= lt!1071770 (lemmaSemiInverse!1161 (transformation!5136 (rule!7558 (h!41230 tokens!494))) (seqFromList!3351 (_1!20722 lt!1071772))))))

(declare-fun b!3186113 () Bool)

(declare-fun res!1295449 () Bool)

(assert (=> b!3186113 (=> (not res!1295449) (not e!1985378))))

(assert (=> b!3186113 (= res!1295449 (= (++!8566 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071771)))) (_2!20718 (get!11399 lt!1071771))) lt!1071493))))

(assert (= (and d!871573 c!535043) b!3186106))

(assert (= (and d!871573 (not c!535043)) b!3186112))

(assert (= (and b!3186112 (not res!1295450)) b!3186110))

(assert (= (and d!871573 (not res!1295448)) b!3186108))

(assert (= (and b!3186108 res!1295445) b!3186113))

(assert (= (and b!3186113 res!1295449) b!3186109))

(assert (= (and b!3186109 res!1295447) b!3186105))

(assert (= (and b!3186105 res!1295451) b!3186107))

(assert (= (and b!3186107 res!1295446) b!3186111))

(declare-fun m!3443627 () Bool)

(assert (=> b!3186105 m!3443627))

(assert (=> b!3186108 m!3443627))

(declare-fun m!3443629 () Bool)

(assert (=> b!3186108 m!3443629))

(assert (=> b!3186108 m!3443629))

(declare-fun m!3443631 () Bool)

(assert (=> b!3186108 m!3443631))

(assert (=> b!3186108 m!3443631))

(declare-fun m!3443633 () Bool)

(assert (=> b!3186108 m!3443633))

(assert (=> b!3186107 m!3443627))

(declare-fun m!3443635 () Bool)

(assert (=> b!3186107 m!3443635))

(assert (=> b!3186107 m!3443635))

(declare-fun m!3443637 () Bool)

(assert (=> b!3186107 m!3443637))

(declare-fun m!3443639 () Bool)

(assert (=> b!3186112 m!3443639))

(assert (=> b!3186112 m!3442715))

(declare-fun m!3443641 () Bool)

(assert (=> b!3186112 m!3443641))

(declare-fun m!3443643 () Bool)

(assert (=> b!3186112 m!3443643))

(assert (=> b!3186112 m!3443641))

(declare-fun m!3443645 () Bool)

(assert (=> b!3186112 m!3443645))

(declare-fun m!3443647 () Bool)

(assert (=> b!3186112 m!3443647))

(assert (=> b!3186112 m!3443647))

(assert (=> b!3186112 m!3442715))

(declare-fun m!3443649 () Bool)

(assert (=> b!3186112 m!3443649))

(assert (=> b!3186112 m!3443641))

(declare-fun m!3443651 () Bool)

(assert (=> b!3186112 m!3443651))

(assert (=> b!3186112 m!3443641))

(declare-fun m!3443653 () Bool)

(assert (=> b!3186112 m!3443653))

(assert (=> b!3186109 m!3443627))

(declare-fun m!3443655 () Bool)

(assert (=> b!3186109 m!3443655))

(assert (=> b!3186109 m!3442715))

(declare-fun m!3443657 () Bool)

(assert (=> d!871573 m!3443657))

(declare-fun m!3443659 () Bool)

(assert (=> d!871573 m!3443659))

(declare-fun m!3443661 () Bool)

(assert (=> d!871573 m!3443661))

(declare-fun m!3443663 () Bool)

(assert (=> d!871573 m!3443663))

(assert (=> b!3186113 m!3443627))

(assert (=> b!3186113 m!3443629))

(assert (=> b!3186113 m!3443629))

(assert (=> b!3186113 m!3443631))

(assert (=> b!3186113 m!3443631))

(declare-fun m!3443665 () Bool)

(assert (=> b!3186113 m!3443665))

(assert (=> b!3186111 m!3443627))

(declare-fun m!3443667 () Bool)

(assert (=> b!3186111 m!3443667))

(assert (=> b!3186110 m!3443647))

(assert (=> b!3186110 m!3442715))

(assert (=> b!3186110 m!3443647))

(assert (=> b!3186110 m!3442715))

(assert (=> b!3186110 m!3443649))

(declare-fun m!3443669 () Bool)

(assert (=> b!3186110 m!3443669))

(assert (=> b!3185374 d!871573))

(declare-fun d!871575 () Bool)

(declare-fun lt!1071777 () Int)

(assert (=> d!871575 (>= lt!1071777 0)))

(declare-fun e!1985381 () Int)

(assert (=> d!871575 (= lt!1071777 e!1985381)))

(declare-fun c!535046 () Bool)

(assert (=> d!871575 (= c!535046 ((_ is Nil!35809) lt!1071493))))

(assert (=> d!871575 (= (size!27015 lt!1071493) lt!1071777)))

(declare-fun b!3186118 () Bool)

(assert (=> b!3186118 (= e!1985381 0)))

(declare-fun b!3186119 () Bool)

(assert (=> b!3186119 (= e!1985381 (+ 1 (size!27015 (t!235526 lt!1071493))))))

(assert (= (and d!871575 c!535046) b!3186118))

(assert (= (and d!871575 (not c!535046)) b!3186119))

(declare-fun m!3443671 () Bool)

(assert (=> b!3186119 m!3443671))

(assert (=> b!3185374 d!871575))

(declare-fun c!535047 () Bool)

(declare-fun call!231128 () List!35933)

(declare-fun bm!231122 () Bool)

(declare-fun call!231127 () List!35933)

(declare-fun call!231129 () List!35933)

(assert (=> bm!231122 (= call!231128 (++!8566 (ite c!535047 call!231127 call!231129) (ite c!535047 call!231129 call!231127)))))

(declare-fun b!3186120 () Bool)

(declare-fun e!1985385 () List!35933)

(declare-fun e!1985384 () List!35933)

(assert (=> b!3186120 (= e!1985385 e!1985384)))

(assert (=> b!3186120 (= c!535047 ((_ is Union!9895) (regex!5136 (rule!7558 separatorToken!241))))))

(declare-fun d!871577 () Bool)

(declare-fun c!535049 () Bool)

(assert (=> d!871577 (= c!535049 (or ((_ is EmptyExpr!9895) (regex!5136 (rule!7558 separatorToken!241))) ((_ is EmptyLang!9895) (regex!5136 (rule!7558 separatorToken!241)))))))

(declare-fun e!1985383 () List!35933)

(assert (=> d!871577 (= (usedCharacters!480 (regex!5136 (rule!7558 separatorToken!241))) e!1985383)))

(declare-fun b!3186121 () Bool)

(assert (=> b!3186121 (= e!1985384 call!231128)))

(declare-fun b!3186122 () Bool)

(assert (=> b!3186122 (= e!1985384 call!231128)))

(declare-fun b!3186123 () Bool)

(declare-fun e!1985382 () List!35933)

(assert (=> b!3186123 (= e!1985382 (Cons!35809 (c!534900 (regex!5136 (rule!7558 separatorToken!241))) Nil!35809))))

(declare-fun bm!231123 () Bool)

(declare-fun c!535050 () Bool)

(declare-fun call!231130 () List!35933)

(assert (=> bm!231123 (= call!231130 (usedCharacters!480 (ite c!535050 (reg!10224 (regex!5136 (rule!7558 separatorToken!241))) (ite c!535047 (regTwo!20303 (regex!5136 (rule!7558 separatorToken!241))) (regOne!20302 (regex!5136 (rule!7558 separatorToken!241)))))))))

(declare-fun bm!231124 () Bool)

(assert (=> bm!231124 (= call!231129 call!231130)))

(declare-fun b!3186124 () Bool)

(assert (=> b!3186124 (= e!1985383 Nil!35809)))

(declare-fun b!3186125 () Bool)

(assert (=> b!3186125 (= e!1985383 e!1985382)))

(declare-fun c!535048 () Bool)

(assert (=> b!3186125 (= c!535048 ((_ is ElementMatch!9895) (regex!5136 (rule!7558 separatorToken!241))))))

(declare-fun b!3186126 () Bool)

(assert (=> b!3186126 (= c!535050 ((_ is Star!9895) (regex!5136 (rule!7558 separatorToken!241))))))

(assert (=> b!3186126 (= e!1985382 e!1985385)))

(declare-fun b!3186127 () Bool)

(assert (=> b!3186127 (= e!1985385 call!231130)))

(declare-fun bm!231125 () Bool)

(assert (=> bm!231125 (= call!231127 (usedCharacters!480 (ite c!535047 (regOne!20303 (regex!5136 (rule!7558 separatorToken!241))) (regTwo!20302 (regex!5136 (rule!7558 separatorToken!241))))))))

(assert (= (and d!871577 c!535049) b!3186124))

(assert (= (and d!871577 (not c!535049)) b!3186125))

(assert (= (and b!3186125 c!535048) b!3186123))

(assert (= (and b!3186125 (not c!535048)) b!3186126))

(assert (= (and b!3186126 c!535050) b!3186127))

(assert (= (and b!3186126 (not c!535050)) b!3186120))

(assert (= (and b!3186120 c!535047) b!3186121))

(assert (= (and b!3186120 (not c!535047)) b!3186122))

(assert (= (or b!3186121 b!3186122) bm!231124))

(assert (= (or b!3186121 b!3186122) bm!231125))

(assert (= (or b!3186121 b!3186122) bm!231122))

(assert (= (or b!3186127 bm!231124) bm!231123))

(declare-fun m!3443673 () Bool)

(assert (=> bm!231122 m!3443673))

(declare-fun m!3443675 () Bool)

(assert (=> bm!231123 m!3443675))

(declare-fun m!3443677 () Bool)

(assert (=> bm!231125 m!3443677))

(assert (=> b!3185374 d!871577))

(declare-fun d!871579 () Bool)

(assert (=> d!871579 (= (head!6967 lt!1071487) (h!41229 lt!1071487))))

(assert (=> b!3185374 d!871579))

(declare-fun d!871581 () Bool)

(assert (=> d!871581 (= (isEmpty!19939 (getSuffix!1352 lt!1071493 lt!1071493)) ((_ is Nil!35809) (getSuffix!1352 lt!1071493 lt!1071493)))))

(assert (=> b!3185374 d!871581))

(declare-fun d!871583 () Bool)

(declare-fun dynLambda!14457 (Int BalanceConc!20908) TokenValue!5366)

(assert (=> d!871583 (= (apply!8064 (transformation!5136 (rule!7558 (h!41230 tokens!494))) lt!1071478) (dynLambda!14457 (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) lt!1071478))))

(declare-fun b_lambda!86867 () Bool)

(assert (=> (not b_lambda!86867) (not d!871583)))

(declare-fun tb!155497 () Bool)

(declare-fun t!235586 () Bool)

(assert (=> (and b!3185353 (= (toValue!7196 (transformation!5136 (h!41231 rules!2135))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235586) tb!155497))

(declare-fun result!197644 () Bool)

(assert (=> tb!155497 (= result!197644 (inv!21 (dynLambda!14457 (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) lt!1071478)))))

(declare-fun m!3443679 () Bool)

(assert (=> tb!155497 m!3443679))

(assert (=> d!871583 t!235586))

(declare-fun b_and!210825 () Bool)

(assert (= b_and!210751 (and (=> t!235586 result!197644) b_and!210825)))

(declare-fun t!235588 () Bool)

(declare-fun tb!155499 () Bool)

(assert (=> (and b!3185354 (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235588) tb!155499))

(declare-fun result!197648 () Bool)

(assert (= result!197648 result!197644))

(assert (=> d!871583 t!235588))

(declare-fun b_and!210827 () Bool)

(assert (= b_and!210755 (and (=> t!235588 result!197648) b_and!210827)))

(declare-fun t!235590 () Bool)

(declare-fun tb!155501 () Bool)

(assert (=> (and b!3185352 (= (toValue!7196 (transformation!5136 (rule!7558 separatorToken!241))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235590) tb!155501))

(declare-fun result!197650 () Bool)

(assert (= result!197650 result!197644))

(assert (=> d!871583 t!235590))

(declare-fun b_and!210829 () Bool)

(assert (= b_and!210759 (and (=> t!235590 result!197650) b_and!210829)))

(declare-fun m!3443681 () Bool)

(assert (=> d!871583 m!3443681))

(assert (=> b!3185374 d!871583))

(declare-fun d!871585 () Bool)

(declare-fun e!1985389 () Bool)

(assert (=> d!871585 e!1985389))

(declare-fun res!1295452 () Bool)

(assert (=> d!871585 (=> (not res!1295452) (not e!1985389))))

(assert (=> d!871585 (= res!1295452 (isDefined!5486 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 (h!41230 tokens!494))))))))

(declare-fun lt!1071778 () Unit!50220)

(assert (=> d!871585 (= lt!1071778 (choose!18600 thiss!18206 rules!2135 lt!1071493 (h!41230 tokens!494)))))

(assert (=> d!871585 (rulesInvariant!4122 thiss!18206 rules!2135)))

(assert (=> d!871585 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!865 thiss!18206 rules!2135 lt!1071493 (h!41230 tokens!494)) lt!1071778)))

(declare-fun b!3186130 () Bool)

(declare-fun res!1295453 () Bool)

(assert (=> b!3186130 (=> (not res!1295453) (not e!1985389))))

(assert (=> b!3186130 (= res!1295453 (matchR!4553 (regex!5136 (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 (h!41230 tokens!494)))))) (list!12713 (charsOf!3158 (h!41230 tokens!494)))))))

(declare-fun b!3186131 () Bool)

(assert (=> b!3186131 (= e!1985389 (= (rule!7558 (h!41230 tokens!494)) (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 (h!41230 tokens!494)))))))))

(assert (= (and d!871585 res!1295452) b!3186130))

(assert (= (and b!3186130 res!1295453) b!3186131))

(assert (=> d!871585 m!3442719))

(assert (=> d!871585 m!3442719))

(declare-fun m!3443683 () Bool)

(assert (=> d!871585 m!3443683))

(declare-fun m!3443685 () Bool)

(assert (=> d!871585 m!3443685))

(assert (=> d!871585 m!3442747))

(assert (=> b!3186130 m!3442689))

(assert (=> b!3186130 m!3442691))

(declare-fun m!3443687 () Bool)

(assert (=> b!3186130 m!3443687))

(assert (=> b!3186130 m!3442689))

(assert (=> b!3186130 m!3442691))

(assert (=> b!3186130 m!3442719))

(assert (=> b!3186130 m!3442719))

(declare-fun m!3443689 () Bool)

(assert (=> b!3186130 m!3443689))

(assert (=> b!3186131 m!3442719))

(assert (=> b!3186131 m!3442719))

(assert (=> b!3186131 m!3443689))

(assert (=> b!3185374 d!871585))

(declare-fun b!3186143 () Bool)

(declare-fun e!1985392 () Bool)

(declare-fun tp!1007529 () Bool)

(declare-fun tp!1007528 () Bool)

(assert (=> b!3186143 (= e!1985392 (and tp!1007529 tp!1007528))))

(declare-fun b!3186144 () Bool)

(declare-fun tp!1007527 () Bool)

(assert (=> b!3186144 (= e!1985392 tp!1007527)))

(assert (=> b!3185357 (= tp!1007441 e!1985392)))

(declare-fun b!3186142 () Bool)

(declare-fun tp_is_empty!17265 () Bool)

(assert (=> b!3186142 (= e!1985392 tp_is_empty!17265)))

(declare-fun b!3186145 () Bool)

(declare-fun tp!1007530 () Bool)

(declare-fun tp!1007531 () Bool)

(assert (=> b!3186145 (= e!1985392 (and tp!1007530 tp!1007531))))

(assert (= (and b!3185357 ((_ is ElementMatch!9895) (regex!5136 (h!41231 rules!2135)))) b!3186142))

(assert (= (and b!3185357 ((_ is Concat!15261) (regex!5136 (h!41231 rules!2135)))) b!3186143))

(assert (= (and b!3185357 ((_ is Star!9895) (regex!5136 (h!41231 rules!2135)))) b!3186144))

(assert (= (and b!3185357 ((_ is Union!9895) (regex!5136 (h!41231 rules!2135)))) b!3186145))

(declare-fun b!3186147 () Bool)

(declare-fun e!1985393 () Bool)

(declare-fun tp!1007534 () Bool)

(declare-fun tp!1007533 () Bool)

(assert (=> b!3186147 (= e!1985393 (and tp!1007534 tp!1007533))))

(declare-fun b!3186148 () Bool)

(declare-fun tp!1007532 () Bool)

(assert (=> b!3186148 (= e!1985393 tp!1007532)))

(assert (=> b!3185373 (= tp!1007440 e!1985393)))

(declare-fun b!3186146 () Bool)

(assert (=> b!3186146 (= e!1985393 tp_is_empty!17265)))

(declare-fun b!3186149 () Bool)

(declare-fun tp!1007535 () Bool)

(declare-fun tp!1007536 () Bool)

(assert (=> b!3186149 (= e!1985393 (and tp!1007535 tp!1007536))))

(assert (= (and b!3185373 ((_ is ElementMatch!9895) (regex!5136 (rule!7558 (h!41230 tokens!494))))) b!3186146))

(assert (= (and b!3185373 ((_ is Concat!15261) (regex!5136 (rule!7558 (h!41230 tokens!494))))) b!3186147))

(assert (= (and b!3185373 ((_ is Star!9895) (regex!5136 (rule!7558 (h!41230 tokens!494))))) b!3186148))

(assert (= (and b!3185373 ((_ is Union!9895) (regex!5136 (rule!7558 (h!41230 tokens!494))))) b!3186149))

(declare-fun b!3186154 () Bool)

(declare-fun e!1985396 () Bool)

(declare-fun tp!1007539 () Bool)

(assert (=> b!3186154 (= e!1985396 (and tp_is_empty!17265 tp!1007539))))

(assert (=> b!3185365 (= tp!1007449 e!1985396)))

(assert (= (and b!3185365 ((_ is Cons!35809) (originalCharacters!5850 (h!41230 tokens!494)))) b!3186154))

(declare-fun b!3186168 () Bool)

(declare-fun b_free!84141 () Bool)

(declare-fun b_next!84845 () Bool)

(assert (=> b!3186168 (= b_free!84141 (not b_next!84845))))

(declare-fun t!235592 () Bool)

(declare-fun tb!155503 () Bool)

(assert (=> (and b!3186168 (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235592) tb!155503))

(declare-fun result!197658 () Bool)

(assert (= result!197658 result!197644))

(assert (=> d!871583 t!235592))

(declare-fun tp!1007552 () Bool)

(declare-fun b_and!210831 () Bool)

(assert (=> b!3186168 (= tp!1007552 (and (=> t!235592 result!197658) b_and!210831))))

(declare-fun b_free!84143 () Bool)

(declare-fun b_next!84847 () Bool)

(assert (=> b!3186168 (= b_free!84143 (not b_next!84847))))

(declare-fun tb!155505 () Bool)

(declare-fun t!235594 () Bool)

(assert (=> (and b!3186168 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241)))) t!235594) tb!155505))

(declare-fun result!197660 () Bool)

(assert (= result!197660 result!197610))

(assert (=> d!871439 t!235594))

(assert (=> b!3185823 t!235594))

(declare-fun t!235596 () Bool)

(declare-fun tb!155507 () Bool)

(assert (=> (and b!3186168 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235596) tb!155507))

(declare-fun result!197662 () Bool)

(assert (= result!197662 result!197618))

(assert (=> b!3185825 t!235596))

(assert (=> d!871519 t!235596))

(declare-fun tp!1007553 () Bool)

(declare-fun b_and!210833 () Bool)

(assert (=> b!3186168 (= tp!1007553 (and (=> t!235594 result!197660) (=> t!235596 result!197662) b_and!210833))))

(declare-fun e!1985413 () Bool)

(assert (=> b!3186168 (= e!1985413 (and tp!1007552 tp!1007553))))

(declare-fun e!1985412 () Bool)

(declare-fun tp!1007554 () Bool)

(declare-fun b!3186166 () Bool)

(declare-fun e!1985410 () Bool)

(assert (=> b!3186166 (= e!1985410 (and (inv!21 (value!166836 (h!41230 (t!235527 tokens!494)))) e!1985412 tp!1007554))))

(declare-fun e!1985411 () Bool)

(assert (=> b!3185348 (= tp!1007452 e!1985411)))

(declare-fun b!3186167 () Bool)

(declare-fun tp!1007550 () Bool)

(assert (=> b!3186167 (= e!1985412 (and tp!1007550 (inv!48656 (tag!5650 (rule!7558 (h!41230 (t!235527 tokens!494))))) (inv!48660 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) e!1985413))))

(declare-fun tp!1007551 () Bool)

(declare-fun b!3186165 () Bool)

(assert (=> b!3186165 (= e!1985411 (and (inv!48659 (h!41230 (t!235527 tokens!494))) e!1985410 tp!1007551))))

(assert (= b!3186167 b!3186168))

(assert (= b!3186166 b!3186167))

(assert (= b!3186165 b!3186166))

(assert (= (and b!3185348 ((_ is Cons!35810) (t!235527 tokens!494))) b!3186165))

(declare-fun m!3443691 () Bool)

(assert (=> b!3186166 m!3443691))

(declare-fun m!3443693 () Bool)

(assert (=> b!3186167 m!3443693))

(declare-fun m!3443695 () Bool)

(assert (=> b!3186167 m!3443695))

(declare-fun m!3443697 () Bool)

(assert (=> b!3186165 m!3443697))

(declare-fun b!3186170 () Bool)

(declare-fun e!1985415 () Bool)

(declare-fun tp!1007557 () Bool)

(declare-fun tp!1007556 () Bool)

(assert (=> b!3186170 (= e!1985415 (and tp!1007557 tp!1007556))))

(declare-fun b!3186171 () Bool)

(declare-fun tp!1007555 () Bool)

(assert (=> b!3186171 (= e!1985415 tp!1007555)))

(assert (=> b!3185358 (= tp!1007450 e!1985415)))

(declare-fun b!3186169 () Bool)

(assert (=> b!3186169 (= e!1985415 tp_is_empty!17265)))

(declare-fun b!3186172 () Bool)

(declare-fun tp!1007558 () Bool)

(declare-fun tp!1007559 () Bool)

(assert (=> b!3186172 (= e!1985415 (and tp!1007558 tp!1007559))))

(assert (= (and b!3185358 ((_ is ElementMatch!9895) (regex!5136 (rule!7558 separatorToken!241)))) b!3186169))

(assert (= (and b!3185358 ((_ is Concat!15261) (regex!5136 (rule!7558 separatorToken!241)))) b!3186170))

(assert (= (and b!3185358 ((_ is Star!9895) (regex!5136 (rule!7558 separatorToken!241)))) b!3186171))

(assert (= (and b!3185358 ((_ is Union!9895) (regex!5136 (rule!7558 separatorToken!241)))) b!3186172))

(declare-fun b!3186173 () Bool)

(declare-fun e!1985416 () Bool)

(declare-fun tp!1007560 () Bool)

(assert (=> b!3186173 (= e!1985416 (and tp_is_empty!17265 tp!1007560))))

(assert (=> b!3185363 (= tp!1007448 e!1985416)))

(assert (= (and b!3185363 ((_ is Cons!35809) (originalCharacters!5850 separatorToken!241))) b!3186173))

(declare-fun b!3186184 () Bool)

(declare-fun b_free!84145 () Bool)

(declare-fun b_next!84849 () Bool)

(assert (=> b!3186184 (= b_free!84145 (not b_next!84849))))

(declare-fun tb!155509 () Bool)

(declare-fun t!235598 () Bool)

(assert (=> (and b!3186184 (= (toValue!7196 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235598) tb!155509))

(declare-fun result!197666 () Bool)

(assert (= result!197666 result!197644))

(assert (=> d!871583 t!235598))

(declare-fun tp!1007570 () Bool)

(declare-fun b_and!210835 () Bool)

(assert (=> b!3186184 (= tp!1007570 (and (=> t!235598 result!197666) b_and!210835))))

(declare-fun b_free!84147 () Bool)

(declare-fun b_next!84851 () Bool)

(assert (=> b!3186184 (= b_free!84147 (not b_next!84851))))

(declare-fun tb!155511 () Bool)

(declare-fun t!235600 () Bool)

(assert (=> (and b!3186184 (= (toChars!7055 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241)))) t!235600) tb!155511))

(declare-fun result!197668 () Bool)

(assert (= result!197668 result!197610))

(assert (=> d!871439 t!235600))

(assert (=> b!3185823 t!235600))

(declare-fun t!235602 () Bool)

(declare-fun tb!155513 () Bool)

(assert (=> (and b!3186184 (= (toChars!7055 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235602) tb!155513))

(declare-fun result!197670 () Bool)

(assert (= result!197670 result!197618))

(assert (=> b!3185825 t!235602))

(assert (=> d!871519 t!235602))

(declare-fun b_and!210837 () Bool)

(declare-fun tp!1007571 () Bool)

(assert (=> b!3186184 (= tp!1007571 (and (=> t!235600 result!197668) (=> t!235602 result!197670) b_and!210837))))

(declare-fun e!1985427 () Bool)

(assert (=> b!3186184 (= e!1985427 (and tp!1007570 tp!1007571))))

(declare-fun e!1985428 () Bool)

(declare-fun tp!1007569 () Bool)

(declare-fun b!3186183 () Bool)

(assert (=> b!3186183 (= e!1985428 (and tp!1007569 (inv!48656 (tag!5650 (h!41231 (t!235528 rules!2135)))) (inv!48660 (transformation!5136 (h!41231 (t!235528 rules!2135)))) e!1985427))))

(declare-fun b!3186182 () Bool)

(declare-fun e!1985425 () Bool)

(declare-fun tp!1007572 () Bool)

(assert (=> b!3186182 (= e!1985425 (and e!1985428 tp!1007572))))

(assert (=> b!3185379 (= tp!1007442 e!1985425)))

(assert (= b!3186183 b!3186184))

(assert (= b!3186182 b!3186183))

(assert (= (and b!3185379 ((_ is Cons!35811) (t!235528 rules!2135))) b!3186182))

(declare-fun m!3443699 () Bool)

(assert (=> b!3186183 m!3443699))

(declare-fun m!3443701 () Bool)

(assert (=> b!3186183 m!3443701))

(declare-fun b_lambda!86869 () Bool)

(assert (= b_lambda!86837 (or b!3185350 b_lambda!86869)))

(declare-fun bs!540059 () Bool)

(declare-fun d!871587 () Bool)

(assert (= bs!540059 (and d!871587 b!3185350)))

(assert (=> bs!540059 (= (dynLambda!14456 lambda!116529 (h!41230 tokens!494)) (not (isSeparator!5136 (rule!7558 (h!41230 tokens!494)))))))

(assert (=> b!3185785 d!871587))

(declare-fun b_lambda!86871 () Bool)

(assert (= b_lambda!86867 (or (and b!3185354 b_free!84125) (and b!3185352 b_free!84129 (= (toValue!7196 (transformation!5136 (rule!7558 separatorToken!241))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3186184 b_free!84145 (= (toValue!7196 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3186168 b_free!84141 (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3185353 b_free!84121 (= (toValue!7196 (transformation!5136 (h!41231 rules!2135))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) b_lambda!86871)))

(declare-fun b_lambda!86873 () Bool)

(assert (= b_lambda!86843 (or b!3185350 b_lambda!86873)))

(assert (=> d!871497 d!871587))

(declare-fun b_lambda!86875 () Bool)

(assert (= b_lambda!86839 (or (and b!3185352 b_free!84131) (and b!3186184 b_free!84147 (= (toChars!7055 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))))) (and b!3185354 b_free!84127 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))))) (and b!3186168 b_free!84143 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))))) (and b!3185353 b_free!84123 (= (toChars!7055 (transformation!5136 (h!41231 rules!2135))) (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))))) b_lambda!86875)))

(declare-fun b_lambda!86877 () Bool)

(assert (= b_lambda!86847 (or (and b!3185354 b_free!84127) (and b!3185353 b_free!84123 (= (toChars!7055 (transformation!5136 (h!41231 rules!2135))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3186168 b_free!84143 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3186184 b_free!84147 (= (toChars!7055 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3185352 b_free!84131 (= (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) b_lambda!86877)))

(declare-fun b_lambda!86879 () Bool)

(assert (= b_lambda!86841 (or (and b!3185354 b_free!84127) (and b!3185353 b_free!84123 (= (toChars!7055 (transformation!5136 (h!41231 rules!2135))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3186168 b_free!84143 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3186184 b_free!84147 (= (toChars!7055 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3185352 b_free!84131 (= (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) b_lambda!86879)))

(declare-fun b_lambda!86881 () Bool)

(assert (= b_lambda!86835 (or (and b!3185352 b_free!84131) (and b!3186184 b_free!84147 (= (toChars!7055 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))))) (and b!3185354 b_free!84127 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))))) (and b!3186168 b_free!84143 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))))) (and b!3185353 b_free!84123 (= (toChars!7055 (transformation!5136 (h!41231 rules!2135))) (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))))) b_lambda!86881)))

(check-sat (not d!871517) (not b_next!84849) (not d!871423) (not tb!155473) (not d!871513) (not b!3185612) (not b!3185808) (not b!3185722) (not b!3186147) (not b!3186074) (not d!871489) (not b_next!84833) (not d!871417) (not b!3185780) (not b!3185701) (not bm!231110) (not b!3185826) (not d!871429) (not d!871571) tp_is_empty!17265 (not b_lambda!86869) (not b!3186167) (not d!871561) (not b!3186107) (not d!871445) (not d!871435) (not b!3186086) (not b!3185786) (not b!3185728) (not d!871341) (not d!871439) (not b_lambda!86873) (not d!871475) (not b!3186148) (not b!3185791) b_and!210825 (not b!3186110) (not d!871425) (not d!871441) (not b!3185923) (not bm!231101) (not b!3185690) (not d!871481) (not b!3186080) (not b!3185691) (not d!871505) (not b!3186130) (not bm!231103) (not b!3185678) (not b!3185679) (not b!3186144) (not b!3185870) (not b!3185922) (not b!3185888) (not d!871567) (not d!871519) b_and!210835 (not b!3186143) (not d!871565) (not d!871427) (not b!3186105) (not b!3185914) (not d!871497) (not b!3185913) (not b!3185685) (not b!3185824) (not b!3185727) (not b!3185686) (not b!3185682) (not b!3185768) (not b!3186131) (not b!3185827) (not b!3185850) b_and!210799 (not d!871501) (not b!3185769) (not b!3185683) (not bm!231123) (not b!3185674) (not b!3186183) (not d!871483) (not d!871499) (not b!3186079) (not d!871563) (not b!3185876) (not b!3185737) (not d!871469) (not b!3186149) (not bm!231100) (not bm!231125) (not b!3185726) (not b!3185708) (not b!3185775) (not b!3185823) (not b!3186171) (not b!3185788) (not b!3185789) (not d!871573) (not b_lambda!86881) (not b!3185688) b_and!210801 b_and!210837 (not bm!231106) (not d!871569) (not d!871455) (not d!871495) (not d!871523) (not b!3185732) (not b!3185800) (not b!3186173) (not b!3185676) b_and!210827 (not b_next!84827) (not b_next!84829) (not b!3186165) (not b_next!84847) (not d!871559) (not b!3185771) (not b!3186119) (not d!871437) (not b!3186084) (not b_lambda!86877) (not b!3185773) (not b!3185738) (not b!3185795) (not d!871433) (not b!3185621) (not b!3186170) (not bm!231111) (not b!3186078) (not d!871585) (not b!3185711) (not bm!231107) (not b!3185731) (not b!3185818) (not d!871511) (not d!871557) (not b_next!84835) (not b!3186113) (not d!871459) (not b!3185816) (not d!871431) (not b!3185915) (not b!3186182) (not b!3186166) (not b!3185793) (not bm!231122) (not b!3185874) (not b!3186059) (not d!871471) (not b!3185803) (not b!3185924) (not b!3185681) (not b_lambda!86875) (not b!3185879) (not b!3185723) (not bm!231112) (not b!3185851) (not b!3185883) (not b!3186111) (not b!3185852) (not b!3185687) (not b!3185677) (not b_lambda!86871) (not b!3186053) b_and!210831 (not d!871477) (not b_next!84831) (not b_next!84851) (not b!3185680) (not b_next!84825) b_and!210803 (not b!3185655) (not b_lambda!86879) (not b!3185702) (not d!871419) (not b!3185877) (not b!3186172) (not tb!155497) (not b!3186108) (not b!3186073) (not b!3185881) (not b!3185825) (not d!871465) (not b!3185871) (not b!3186154) (not tb!155479) (not d!871555) (not d!871503) b_and!210829 (not b!3185911) (not b!3186145) (not b!3186112) (not d!871479) (not b_next!84845) (not b!3186060) (not b!3185689) b_and!210833 (not b!3186109))
(check-sat (not b_next!84849) (not b_next!84833) b_and!210825 b_and!210835 b_and!210799 (not b_next!84847) (not b_next!84835) b_and!210803 b_and!210833 b_and!210801 b_and!210837 b_and!210827 (not b_next!84827) (not b_next!84829) b_and!210831 (not b_next!84831) (not b_next!84851) (not b_next!84825) (not b_next!84845) b_and!210829)
(get-model)

(declare-fun b!3186288 () Bool)

(declare-fun e!1985496 () Int)

(assert (=> b!3186288 (= e!1985496 0)))

(declare-fun b!3186289 () Bool)

(declare-fun e!1985495 () Int)

(declare-fun call!231141 () Int)

(assert (=> b!3186289 (= e!1985495 call!231141)))

(declare-fun b!3186290 () Bool)

(assert (=> b!3186290 (= e!1985495 e!1985496)))

(declare-fun c!535081 () Bool)

(assert (=> b!3186290 (= c!535081 (>= 0 call!231141))))

(declare-fun b!3186291 () Bool)

(declare-fun e!1985494 () List!35934)

(assert (=> b!3186291 (= e!1985494 (drop!1845 (t!235527 lt!1071669) (- 0 1)))))

(declare-fun b!3186292 () Bool)

(assert (=> b!3186292 (= e!1985494 lt!1071669)))

(declare-fun b!3186293 () Bool)

(declare-fun e!1985498 () List!35934)

(assert (=> b!3186293 (= e!1985498 Nil!35810)))

(declare-fun b!3186294 () Bool)

(assert (=> b!3186294 (= e!1985496 (- call!231141 0))))

(declare-fun d!871671 () Bool)

(declare-fun e!1985497 () Bool)

(assert (=> d!871671 e!1985497))

(declare-fun res!1295491 () Bool)

(assert (=> d!871671 (=> (not res!1295491) (not e!1985497))))

(declare-fun lt!1071818 () List!35934)

(declare-fun content!4852 (List!35934) (InoxSet Token!9638))

(assert (=> d!871671 (= res!1295491 (= ((_ map implies) (content!4852 lt!1071818) (content!4852 lt!1071669)) ((as const (InoxSet Token!9638)) true)))))

(assert (=> d!871671 (= lt!1071818 e!1985498)))

(declare-fun c!535080 () Bool)

(assert (=> d!871671 (= c!535080 ((_ is Nil!35810) lt!1071669))))

(assert (=> d!871671 (= (drop!1845 lt!1071669 0) lt!1071818)))

(declare-fun b!3186295 () Bool)

(declare-fun size!27022 (List!35934) Int)

(assert (=> b!3186295 (= e!1985497 (= (size!27022 lt!1071818) e!1985495))))

(declare-fun c!535083 () Bool)

(assert (=> b!3186295 (= c!535083 (<= 0 0))))

(declare-fun bm!231136 () Bool)

(assert (=> bm!231136 (= call!231141 (size!27022 lt!1071669))))

(declare-fun b!3186296 () Bool)

(assert (=> b!3186296 (= e!1985498 e!1985494)))

(declare-fun c!535082 () Bool)

(assert (=> b!3186296 (= c!535082 (<= 0 0))))

(assert (= (and d!871671 c!535080) b!3186293))

(assert (= (and d!871671 (not c!535080)) b!3186296))

(assert (= (and b!3186296 c!535082) b!3186292))

(assert (= (and b!3186296 (not c!535082)) b!3186291))

(assert (= (and d!871671 res!1295491) b!3186295))

(assert (= (and b!3186295 c!535083) b!3186289))

(assert (= (and b!3186295 (not c!535083)) b!3186290))

(assert (= (and b!3186290 c!535081) b!3186288))

(assert (= (and b!3186290 (not c!535081)) b!3186294))

(assert (= (or b!3186289 b!3186290 b!3186294) bm!231136))

(declare-fun m!3443837 () Bool)

(assert (=> b!3186291 m!3443837))

(declare-fun m!3443839 () Bool)

(assert (=> d!871671 m!3443839))

(declare-fun m!3443841 () Bool)

(assert (=> d!871671 m!3443841))

(declare-fun m!3443843 () Bool)

(assert (=> b!3186295 m!3443843))

(declare-fun m!3443845 () Bool)

(assert (=> bm!231136 m!3443845))

(assert (=> b!3185818 d!871671))

(declare-fun d!871673 () Bool)

(assert (=> d!871673 (= (tail!5185 (drop!1845 lt!1071668 0)) (drop!1845 lt!1071668 (+ 0 1)))))

(declare-fun lt!1071821 () Unit!50220)

(declare-fun choose!18604 (List!35934 Int) Unit!50220)

(assert (=> d!871673 (= lt!1071821 (choose!18604 lt!1071668 0))))

(declare-fun e!1985501 () Bool)

(assert (=> d!871673 e!1985501))

(declare-fun res!1295494 () Bool)

(assert (=> d!871673 (=> (not res!1295494) (not e!1985501))))

(assert (=> d!871673 (= res!1295494 (>= 0 0))))

(assert (=> d!871673 (= (lemmaDropTail!905 lt!1071668 0) lt!1071821)))

(declare-fun b!3186299 () Bool)

(assert (=> b!3186299 (= e!1985501 (< 0 (size!27022 lt!1071668)))))

(assert (= (and d!871673 res!1295494) b!3186299))

(assert (=> d!871673 m!3443275))

(assert (=> d!871673 m!3443275))

(assert (=> d!871673 m!3443277))

(assert (=> d!871673 m!3443285))

(declare-fun m!3443847 () Bool)

(assert (=> d!871673 m!3443847))

(declare-fun m!3443849 () Bool)

(assert (=> b!3186299 m!3443849))

(assert (=> b!3185818 d!871673))

(declare-fun d!871675 () Bool)

(assert (=> d!871675 (= (head!6969 (drop!1845 lt!1071669 0)) (apply!8068 lt!1071669 0))))

(declare-fun lt!1071824 () Unit!50220)

(declare-fun choose!18605 (List!35934 Int) Unit!50220)

(assert (=> d!871675 (= lt!1071824 (choose!18605 lt!1071669 0))))

(declare-fun e!1985504 () Bool)

(assert (=> d!871675 e!1985504))

(declare-fun res!1295497 () Bool)

(assert (=> d!871675 (=> (not res!1295497) (not e!1985504))))

(assert (=> d!871675 (= res!1295497 (>= 0 0))))

(assert (=> d!871675 (= (lemmaDropApply!1021 lt!1071669 0) lt!1071824)))

(declare-fun b!3186302 () Bool)

(assert (=> b!3186302 (= e!1985504 (< 0 (size!27022 lt!1071669)))))

(assert (= (and d!871675 res!1295497) b!3186302))

(assert (=> d!871675 m!3443281))

(assert (=> d!871675 m!3443281))

(assert (=> d!871675 m!3443283))

(assert (=> d!871675 m!3443279))

(declare-fun m!3443851 () Bool)

(assert (=> d!871675 m!3443851))

(assert (=> b!3186302 m!3443845))

(assert (=> b!3185818 d!871675))

(declare-fun d!871677 () Bool)

(assert (=> d!871677 (= (tail!5185 (drop!1845 lt!1071668 0)) (t!235527 (drop!1845 lt!1071668 0)))))

(assert (=> b!3185818 d!871677))

(declare-fun d!871679 () Bool)

(declare-fun lt!1071825 () BalanceConc!20908)

(assert (=> d!871679 (= (list!12713 lt!1071825) (printListTailRec!545 thiss!18206 (dropList!1062 lt!1071475 (+ 0 1)) (list!12713 (++!8568 (BalanceConc!20909 Empty!10647) (charsOf!3158 (apply!8067 lt!1071475 0))))))))

(declare-fun e!1985506 () BalanceConc!20908)

(assert (=> d!871679 (= lt!1071825 e!1985506)))

(declare-fun c!535084 () Bool)

(assert (=> d!871679 (= c!535084 (>= (+ 0 1) (size!27018 lt!1071475)))))

(declare-fun e!1985505 () Bool)

(assert (=> d!871679 e!1985505))

(declare-fun res!1295498 () Bool)

(assert (=> d!871679 (=> (not res!1295498) (not e!1985505))))

(assert (=> d!871679 (= res!1295498 (>= (+ 0 1) 0))))

(assert (=> d!871679 (= (printTailRec!1224 thiss!18206 lt!1071475 (+ 0 1) (++!8568 (BalanceConc!20909 Empty!10647) (charsOf!3158 (apply!8067 lt!1071475 0)))) lt!1071825)))

(declare-fun b!3186303 () Bool)

(assert (=> b!3186303 (= e!1985505 (<= (+ 0 1) (size!27018 lt!1071475)))))

(declare-fun b!3186304 () Bool)

(assert (=> b!3186304 (= e!1985506 (++!8568 (BalanceConc!20909 Empty!10647) (charsOf!3158 (apply!8067 lt!1071475 0))))))

(declare-fun b!3186305 () Bool)

(assert (=> b!3186305 (= e!1985506 (printTailRec!1224 thiss!18206 lt!1071475 (+ 0 1 1) (++!8568 (++!8568 (BalanceConc!20909 Empty!10647) (charsOf!3158 (apply!8067 lt!1071475 0))) (charsOf!3158 (apply!8067 lt!1071475 (+ 0 1))))))))

(declare-fun lt!1071829 () List!35934)

(assert (=> b!3186305 (= lt!1071829 (list!12715 lt!1071475))))

(declare-fun lt!1071827 () Unit!50220)

(assert (=> b!3186305 (= lt!1071827 (lemmaDropApply!1021 lt!1071829 (+ 0 1)))))

(assert (=> b!3186305 (= (head!6969 (drop!1845 lt!1071829 (+ 0 1))) (apply!8068 lt!1071829 (+ 0 1)))))

(declare-fun lt!1071830 () Unit!50220)

(assert (=> b!3186305 (= lt!1071830 lt!1071827)))

(declare-fun lt!1071828 () List!35934)

(assert (=> b!3186305 (= lt!1071828 (list!12715 lt!1071475))))

(declare-fun lt!1071831 () Unit!50220)

(assert (=> b!3186305 (= lt!1071831 (lemmaDropTail!905 lt!1071828 (+ 0 1)))))

(assert (=> b!3186305 (= (tail!5185 (drop!1845 lt!1071828 (+ 0 1))) (drop!1845 lt!1071828 (+ 0 1 1)))))

(declare-fun lt!1071826 () Unit!50220)

(assert (=> b!3186305 (= lt!1071826 lt!1071831)))

(assert (= (and d!871679 res!1295498) b!3186303))

(assert (= (and d!871679 c!535084) b!3186304))

(assert (= (and d!871679 (not c!535084)) b!3186305))

(assert (=> d!871679 m!3443271))

(declare-fun m!3443853 () Bool)

(assert (=> d!871679 m!3443853))

(assert (=> d!871679 m!3443259))

(declare-fun m!3443855 () Bool)

(assert (=> d!871679 m!3443855))

(declare-fun m!3443857 () Bool)

(assert (=> d!871679 m!3443857))

(assert (=> d!871679 m!3443857))

(assert (=> d!871679 m!3443853))

(declare-fun m!3443859 () Bool)

(assert (=> d!871679 m!3443859))

(assert (=> b!3186303 m!3443259))

(declare-fun m!3443861 () Bool)

(assert (=> b!3186305 m!3443861))

(declare-fun m!3443863 () Bool)

(assert (=> b!3186305 m!3443863))

(declare-fun m!3443865 () Bool)

(assert (=> b!3186305 m!3443865))

(declare-fun m!3443867 () Bool)

(assert (=> b!3186305 m!3443867))

(assert (=> b!3186305 m!3443271))

(assert (=> b!3186305 m!3443863))

(assert (=> b!3186305 m!3443865))

(declare-fun m!3443869 () Bool)

(assert (=> b!3186305 m!3443869))

(declare-fun m!3443871 () Bool)

(assert (=> b!3186305 m!3443871))

(assert (=> b!3186305 m!3443869))

(declare-fun m!3443873 () Bool)

(assert (=> b!3186305 m!3443873))

(assert (=> b!3186305 m!3443253))

(declare-fun m!3443875 () Bool)

(assert (=> b!3186305 m!3443875))

(declare-fun m!3443877 () Bool)

(assert (=> b!3186305 m!3443877))

(declare-fun m!3443879 () Bool)

(assert (=> b!3186305 m!3443879))

(declare-fun m!3443881 () Bool)

(assert (=> b!3186305 m!3443881))

(declare-fun m!3443883 () Bool)

(assert (=> b!3186305 m!3443883))

(assert (=> b!3186305 m!3443875))

(assert (=> b!3186305 m!3443861))

(assert (=> b!3185818 d!871679))

(declare-fun d!871681 () Bool)

(declare-fun lt!1071834 () Token!9638)

(assert (=> d!871681 (= lt!1071834 (apply!8068 (list!12715 lt!1071475) 0))))

(declare-fun apply!8070 (Conc!10648 Int) Token!9638)

(assert (=> d!871681 (= lt!1071834 (apply!8070 (c!534902 lt!1071475) 0))))

(declare-fun e!1985509 () Bool)

(assert (=> d!871681 e!1985509))

(declare-fun res!1295501 () Bool)

(assert (=> d!871681 (=> (not res!1295501) (not e!1985509))))

(assert (=> d!871681 (= res!1295501 (<= 0 0))))

(assert (=> d!871681 (= (apply!8067 lt!1071475 0) lt!1071834)))

(declare-fun b!3186308 () Bool)

(assert (=> b!3186308 (= e!1985509 (< 0 (size!27018 lt!1071475)))))

(assert (= (and d!871681 res!1295501) b!3186308))

(assert (=> d!871681 m!3443253))

(assert (=> d!871681 m!3443253))

(declare-fun m!3443885 () Bool)

(assert (=> d!871681 m!3443885))

(declare-fun m!3443887 () Bool)

(assert (=> d!871681 m!3443887))

(assert (=> b!3186308 m!3443259))

(assert (=> b!3185818 d!871681))

(declare-fun b!3186319 () Bool)

(declare-fun res!1295512 () Bool)

(declare-fun e!1985512 () Bool)

(assert (=> b!3186319 (=> (not res!1295512) (not e!1985512))))

(declare-fun height!1529 (Conc!10647) Int)

(declare-fun ++!8569 (Conc!10647 Conc!10647) Conc!10647)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3186319 (= res!1295512 (>= (height!1529 (++!8569 (c!534901 (BalanceConc!20909 Empty!10647)) (c!534901 (charsOf!3158 (apply!8067 lt!1071475 0))))) (max!0 (height!1529 (c!534901 (BalanceConc!20909 Empty!10647))) (height!1529 (c!534901 (charsOf!3158 (apply!8067 lt!1071475 0)))))))))

(declare-fun b!3186317 () Bool)

(declare-fun res!1295511 () Bool)

(assert (=> b!3186317 (=> (not res!1295511) (not e!1985512))))

(declare-fun isBalanced!3191 (Conc!10647) Bool)

(assert (=> b!3186317 (= res!1295511 (isBalanced!3191 (++!8569 (c!534901 (BalanceConc!20909 Empty!10647)) (c!534901 (charsOf!3158 (apply!8067 lt!1071475 0))))))))

(declare-fun b!3186318 () Bool)

(declare-fun res!1295510 () Bool)

(assert (=> b!3186318 (=> (not res!1295510) (not e!1985512))))

(assert (=> b!3186318 (= res!1295510 (<= (height!1529 (++!8569 (c!534901 (BalanceConc!20909 Empty!10647)) (c!534901 (charsOf!3158 (apply!8067 lt!1071475 0))))) (+ (max!0 (height!1529 (c!534901 (BalanceConc!20909 Empty!10647))) (height!1529 (c!534901 (charsOf!3158 (apply!8067 lt!1071475 0))))) 1)))))

(declare-fun b!3186320 () Bool)

(declare-fun lt!1071837 () BalanceConc!20908)

(assert (=> b!3186320 (= e!1985512 (= (list!12713 lt!1071837) (++!8566 (list!12713 (BalanceConc!20909 Empty!10647)) (list!12713 (charsOf!3158 (apply!8067 lt!1071475 0))))))))

(declare-fun d!871683 () Bool)

(assert (=> d!871683 e!1985512))

(declare-fun res!1295513 () Bool)

(assert (=> d!871683 (=> (not res!1295513) (not e!1985512))))

(declare-fun appendAssocInst!720 (Conc!10647 Conc!10647) Bool)

(assert (=> d!871683 (= res!1295513 (appendAssocInst!720 (c!534901 (BalanceConc!20909 Empty!10647)) (c!534901 (charsOf!3158 (apply!8067 lt!1071475 0)))))))

(assert (=> d!871683 (= lt!1071837 (BalanceConc!20909 (++!8569 (c!534901 (BalanceConc!20909 Empty!10647)) (c!534901 (charsOf!3158 (apply!8067 lt!1071475 0))))))))

(assert (=> d!871683 (= (++!8568 (BalanceConc!20909 Empty!10647) (charsOf!3158 (apply!8067 lt!1071475 0))) lt!1071837)))

(assert (= (and d!871683 res!1295513) b!3186317))

(assert (= (and b!3186317 res!1295511) b!3186318))

(assert (= (and b!3186318 res!1295510) b!3186319))

(assert (= (and b!3186319 res!1295512) b!3186320))

(declare-fun m!3443889 () Bool)

(assert (=> b!3186319 m!3443889))

(declare-fun m!3443891 () Bool)

(assert (=> b!3186319 m!3443891))

(assert (=> b!3186319 m!3443889))

(declare-fun m!3443893 () Bool)

(assert (=> b!3186319 m!3443893))

(assert (=> b!3186319 m!3443891))

(declare-fun m!3443895 () Bool)

(assert (=> b!3186319 m!3443895))

(declare-fun m!3443897 () Bool)

(assert (=> b!3186319 m!3443897))

(assert (=> b!3186319 m!3443895))

(assert (=> b!3186317 m!3443895))

(assert (=> b!3186317 m!3443895))

(declare-fun m!3443899 () Bool)

(assert (=> b!3186317 m!3443899))

(declare-fun m!3443901 () Bool)

(assert (=> d!871683 m!3443901))

(assert (=> d!871683 m!3443895))

(assert (=> b!3186318 m!3443889))

(assert (=> b!3186318 m!3443891))

(assert (=> b!3186318 m!3443889))

(assert (=> b!3186318 m!3443893))

(assert (=> b!3186318 m!3443891))

(assert (=> b!3186318 m!3443895))

(assert (=> b!3186318 m!3443897))

(assert (=> b!3186318 m!3443895))

(declare-fun m!3443903 () Bool)

(assert (=> b!3186320 m!3443903))

(assert (=> b!3186320 m!3443257))

(assert (=> b!3186320 m!3443269))

(declare-fun m!3443905 () Bool)

(assert (=> b!3186320 m!3443905))

(assert (=> b!3186320 m!3443257))

(assert (=> b!3186320 m!3443905))

(declare-fun m!3443907 () Bool)

(assert (=> b!3186320 m!3443907))

(assert (=> b!3185818 d!871683))

(declare-fun d!871685 () Bool)

(declare-fun lt!1071838 () BalanceConc!20908)

(assert (=> d!871685 (= (list!12713 lt!1071838) (originalCharacters!5850 (apply!8067 lt!1071475 0)))))

(assert (=> d!871685 (= lt!1071838 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (apply!8067 lt!1071475 0)))) (value!166836 (apply!8067 lt!1071475 0))))))

(assert (=> d!871685 (= (charsOf!3158 (apply!8067 lt!1071475 0)) lt!1071838)))

(declare-fun b_lambda!86891 () Bool)

(assert (=> (not b_lambda!86891) (not d!871685)))

(declare-fun t!235638 () Bool)

(declare-fun tb!155545 () Bool)

(assert (=> (and b!3186168 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (toChars!7055 (transformation!5136 (rule!7558 (apply!8067 lt!1071475 0))))) t!235638) tb!155545))

(declare-fun b!3186321 () Bool)

(declare-fun e!1985513 () Bool)

(declare-fun tp!1007573 () Bool)

(assert (=> b!3186321 (= e!1985513 (and (inv!48663 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (apply!8067 lt!1071475 0)))) (value!166836 (apply!8067 lt!1071475 0))))) tp!1007573))))

(declare-fun result!197702 () Bool)

(assert (=> tb!155545 (= result!197702 (and (inv!48664 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (apply!8067 lt!1071475 0)))) (value!166836 (apply!8067 lt!1071475 0)))) e!1985513))))

(assert (= tb!155545 b!3186321))

(declare-fun m!3443909 () Bool)

(assert (=> b!3186321 m!3443909))

(declare-fun m!3443911 () Bool)

(assert (=> tb!155545 m!3443911))

(assert (=> d!871685 t!235638))

(declare-fun b_and!210869 () Bool)

(assert (= b_and!210833 (and (=> t!235638 result!197702) b_and!210869)))

(declare-fun t!235640 () Bool)

(declare-fun tb!155547 () Bool)

(assert (=> (and b!3185354 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (toChars!7055 (transformation!5136 (rule!7558 (apply!8067 lt!1071475 0))))) t!235640) tb!155547))

(declare-fun result!197704 () Bool)

(assert (= result!197704 result!197702))

(assert (=> d!871685 t!235640))

(declare-fun b_and!210871 () Bool)

(assert (= b_and!210801 (and (=> t!235640 result!197704) b_and!210871)))

(declare-fun tb!155549 () Bool)

(declare-fun t!235642 () Bool)

(assert (=> (and b!3185353 (= (toChars!7055 (transformation!5136 (h!41231 rules!2135))) (toChars!7055 (transformation!5136 (rule!7558 (apply!8067 lt!1071475 0))))) t!235642) tb!155549))

(declare-fun result!197706 () Bool)

(assert (= result!197706 result!197702))

(assert (=> d!871685 t!235642))

(declare-fun b_and!210873 () Bool)

(assert (= b_and!210799 (and (=> t!235642 result!197706) b_and!210873)))

(declare-fun t!235644 () Bool)

(declare-fun tb!155551 () Bool)

(assert (=> (and b!3186184 (= (toChars!7055 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toChars!7055 (transformation!5136 (rule!7558 (apply!8067 lt!1071475 0))))) t!235644) tb!155551))

(declare-fun result!197708 () Bool)

(assert (= result!197708 result!197702))

(assert (=> d!871685 t!235644))

(declare-fun b_and!210875 () Bool)

(assert (= b_and!210837 (and (=> t!235644 result!197708) b_and!210875)))

(declare-fun t!235646 () Bool)

(declare-fun tb!155553 () Bool)

(assert (=> (and b!3185352 (= (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (toChars!7055 (transformation!5136 (rule!7558 (apply!8067 lt!1071475 0))))) t!235646) tb!155553))

(declare-fun result!197710 () Bool)

(assert (= result!197710 result!197702))

(assert (=> d!871685 t!235646))

(declare-fun b_and!210877 () Bool)

(assert (= b_and!210803 (and (=> t!235646 result!197710) b_and!210877)))

(declare-fun m!3443913 () Bool)

(assert (=> d!871685 m!3443913))

(declare-fun m!3443915 () Bool)

(assert (=> d!871685 m!3443915))

(assert (=> b!3185818 d!871685))

(declare-fun d!871687 () Bool)

(declare-fun list!12720 (Conc!10648) List!35934)

(assert (=> d!871687 (= (list!12715 lt!1071475) (list!12720 (c!534902 lt!1071475)))))

(declare-fun bs!540076 () Bool)

(assert (= bs!540076 d!871687))

(declare-fun m!3443917 () Bool)

(assert (=> bs!540076 m!3443917))

(assert (=> b!3185818 d!871687))

(declare-fun d!871689 () Bool)

(assert (=> d!871689 (= (head!6969 (drop!1845 lt!1071669 0)) (h!41230 (drop!1845 lt!1071669 0)))))

(assert (=> b!3185818 d!871689))

(declare-fun b!3186322 () Bool)

(declare-fun e!1985516 () Int)

(assert (=> b!3186322 (= e!1985516 0)))

(declare-fun b!3186323 () Bool)

(declare-fun e!1985515 () Int)

(declare-fun call!231142 () Int)

(assert (=> b!3186323 (= e!1985515 call!231142)))

(declare-fun b!3186324 () Bool)

(assert (=> b!3186324 (= e!1985515 e!1985516)))

(declare-fun c!535089 () Bool)

(assert (=> b!3186324 (= c!535089 (>= 0 call!231142))))

(declare-fun b!3186325 () Bool)

(declare-fun e!1985514 () List!35934)

(assert (=> b!3186325 (= e!1985514 (drop!1845 (t!235527 lt!1071668) (- 0 1)))))

(declare-fun b!3186326 () Bool)

(assert (=> b!3186326 (= e!1985514 lt!1071668)))

(declare-fun b!3186327 () Bool)

(declare-fun e!1985518 () List!35934)

(assert (=> b!3186327 (= e!1985518 Nil!35810)))

(declare-fun b!3186328 () Bool)

(assert (=> b!3186328 (= e!1985516 (- call!231142 0))))

(declare-fun d!871691 () Bool)

(declare-fun e!1985517 () Bool)

(assert (=> d!871691 e!1985517))

(declare-fun res!1295514 () Bool)

(assert (=> d!871691 (=> (not res!1295514) (not e!1985517))))

(declare-fun lt!1071839 () List!35934)

(assert (=> d!871691 (= res!1295514 (= ((_ map implies) (content!4852 lt!1071839) (content!4852 lt!1071668)) ((as const (InoxSet Token!9638)) true)))))

(assert (=> d!871691 (= lt!1071839 e!1985518)))

(declare-fun c!535088 () Bool)

(assert (=> d!871691 (= c!535088 ((_ is Nil!35810) lt!1071668))))

(assert (=> d!871691 (= (drop!1845 lt!1071668 0) lt!1071839)))

(declare-fun b!3186329 () Bool)

(assert (=> b!3186329 (= e!1985517 (= (size!27022 lt!1071839) e!1985515))))

(declare-fun c!535091 () Bool)

(assert (=> b!3186329 (= c!535091 (<= 0 0))))

(declare-fun bm!231137 () Bool)

(assert (=> bm!231137 (= call!231142 (size!27022 lt!1071668))))

(declare-fun b!3186330 () Bool)

(assert (=> b!3186330 (= e!1985518 e!1985514)))

(declare-fun c!535090 () Bool)

(assert (=> b!3186330 (= c!535090 (<= 0 0))))

(assert (= (and d!871691 c!535088) b!3186327))

(assert (= (and d!871691 (not c!535088)) b!3186330))

(assert (= (and b!3186330 c!535090) b!3186326))

(assert (= (and b!3186330 (not c!535090)) b!3186325))

(assert (= (and d!871691 res!1295514) b!3186329))

(assert (= (and b!3186329 c!535091) b!3186323))

(assert (= (and b!3186329 (not c!535091)) b!3186324))

(assert (= (and b!3186324 c!535089) b!3186322))

(assert (= (and b!3186324 (not c!535089)) b!3186328))

(assert (= (or b!3186323 b!3186324 b!3186328) bm!231137))

(declare-fun m!3443919 () Bool)

(assert (=> b!3186325 m!3443919))

(declare-fun m!3443921 () Bool)

(assert (=> d!871691 m!3443921))

(declare-fun m!3443923 () Bool)

(assert (=> d!871691 m!3443923))

(declare-fun m!3443925 () Bool)

(assert (=> b!3186329 m!3443925))

(assert (=> bm!231137 m!3443849))

(assert (=> b!3185818 d!871691))

(declare-fun b!3186331 () Bool)

(declare-fun e!1985521 () Int)

(assert (=> b!3186331 (= e!1985521 0)))

(declare-fun b!3186332 () Bool)

(declare-fun e!1985520 () Int)

(declare-fun call!231143 () Int)

(assert (=> b!3186332 (= e!1985520 call!231143)))

(declare-fun b!3186333 () Bool)

(assert (=> b!3186333 (= e!1985520 e!1985521)))

(declare-fun c!535093 () Bool)

(assert (=> b!3186333 (= c!535093 (>= (+ 0 1) call!231143))))

(declare-fun b!3186334 () Bool)

(declare-fun e!1985519 () List!35934)

(assert (=> b!3186334 (= e!1985519 (drop!1845 (t!235527 lt!1071668) (- (+ 0 1) 1)))))

(declare-fun b!3186335 () Bool)

(assert (=> b!3186335 (= e!1985519 lt!1071668)))

(declare-fun b!3186336 () Bool)

(declare-fun e!1985523 () List!35934)

(assert (=> b!3186336 (= e!1985523 Nil!35810)))

(declare-fun b!3186337 () Bool)

(assert (=> b!3186337 (= e!1985521 (- call!231143 (+ 0 1)))))

(declare-fun d!871693 () Bool)

(declare-fun e!1985522 () Bool)

(assert (=> d!871693 e!1985522))

(declare-fun res!1295515 () Bool)

(assert (=> d!871693 (=> (not res!1295515) (not e!1985522))))

(declare-fun lt!1071840 () List!35934)

(assert (=> d!871693 (= res!1295515 (= ((_ map implies) (content!4852 lt!1071840) (content!4852 lt!1071668)) ((as const (InoxSet Token!9638)) true)))))

(assert (=> d!871693 (= lt!1071840 e!1985523)))

(declare-fun c!535092 () Bool)

(assert (=> d!871693 (= c!535092 ((_ is Nil!35810) lt!1071668))))

(assert (=> d!871693 (= (drop!1845 lt!1071668 (+ 0 1)) lt!1071840)))

(declare-fun b!3186338 () Bool)

(assert (=> b!3186338 (= e!1985522 (= (size!27022 lt!1071840) e!1985520))))

(declare-fun c!535095 () Bool)

(assert (=> b!3186338 (= c!535095 (<= (+ 0 1) 0))))

(declare-fun bm!231138 () Bool)

(assert (=> bm!231138 (= call!231143 (size!27022 lt!1071668))))

(declare-fun b!3186339 () Bool)

(assert (=> b!3186339 (= e!1985523 e!1985519)))

(declare-fun c!535094 () Bool)

(assert (=> b!3186339 (= c!535094 (<= (+ 0 1) 0))))

(assert (= (and d!871693 c!535092) b!3186336))

(assert (= (and d!871693 (not c!535092)) b!3186339))

(assert (= (and b!3186339 c!535094) b!3186335))

(assert (= (and b!3186339 (not c!535094)) b!3186334))

(assert (= (and d!871693 res!1295515) b!3186338))

(assert (= (and b!3186338 c!535095) b!3186332))

(assert (= (and b!3186338 (not c!535095)) b!3186333))

(assert (= (and b!3186333 c!535093) b!3186331))

(assert (= (and b!3186333 (not c!535093)) b!3186337))

(assert (= (or b!3186332 b!3186333 b!3186337) bm!231138))

(declare-fun m!3443927 () Bool)

(assert (=> b!3186334 m!3443927))

(declare-fun m!3443929 () Bool)

(assert (=> d!871693 m!3443929))

(assert (=> d!871693 m!3443923))

(declare-fun m!3443931 () Bool)

(assert (=> b!3186338 m!3443931))

(assert (=> bm!231138 m!3443849))

(assert (=> b!3185818 d!871693))

(declare-fun d!871695 () Bool)

(declare-fun lt!1071843 () Token!9638)

(assert (=> d!871695 (contains!6355 lt!1071669 lt!1071843)))

(declare-fun e!1985528 () Token!9638)

(assert (=> d!871695 (= lt!1071843 e!1985528)))

(declare-fun c!535098 () Bool)

(assert (=> d!871695 (= c!535098 (= 0 0))))

(declare-fun e!1985529 () Bool)

(assert (=> d!871695 e!1985529))

(declare-fun res!1295518 () Bool)

(assert (=> d!871695 (=> (not res!1295518) (not e!1985529))))

(assert (=> d!871695 (= res!1295518 (<= 0 0))))

(assert (=> d!871695 (= (apply!8068 lt!1071669 0) lt!1071843)))

(declare-fun b!3186346 () Bool)

(assert (=> b!3186346 (= e!1985529 (< 0 (size!27022 lt!1071669)))))

(declare-fun b!3186347 () Bool)

(assert (=> b!3186347 (= e!1985528 (head!6969 lt!1071669))))

(declare-fun b!3186348 () Bool)

(assert (=> b!3186348 (= e!1985528 (apply!8068 (tail!5185 lt!1071669) (- 0 1)))))

(assert (= (and d!871695 res!1295518) b!3186346))

(assert (= (and d!871695 c!535098) b!3186347))

(assert (= (and d!871695 (not c!535098)) b!3186348))

(declare-fun m!3443933 () Bool)

(assert (=> d!871695 m!3443933))

(assert (=> b!3186346 m!3443845))

(declare-fun m!3443935 () Bool)

(assert (=> b!3186347 m!3443935))

(declare-fun m!3443937 () Bool)

(assert (=> b!3186348 m!3443937))

(assert (=> b!3186348 m!3443937))

(declare-fun m!3443939 () Bool)

(assert (=> b!3186348 m!3443939))

(assert (=> b!3185818 d!871695))

(declare-fun d!871697 () Bool)

(declare-fun nullableFct!958 (Regex!9895) Bool)

(assert (=> d!871697 (= (nullable!3386 (regex!5136 lt!1071481)) (nullableFct!958 (regex!5136 lt!1071481)))))

(declare-fun bs!540077 () Bool)

(assert (= bs!540077 d!871697))

(declare-fun m!3443941 () Bool)

(assert (=> bs!540077 m!3443941))

(assert (=> b!3185773 d!871697))

(declare-fun d!871699 () Bool)

(declare-fun lt!1071844 () Token!9638)

(assert (=> d!871699 (= lt!1071844 (apply!8068 (list!12715 (_1!20717 lt!1071678)) 0))))

(assert (=> d!871699 (= lt!1071844 (apply!8070 (c!534902 (_1!20717 lt!1071678)) 0))))

(declare-fun e!1985530 () Bool)

(assert (=> d!871699 e!1985530))

(declare-fun res!1295519 () Bool)

(assert (=> d!871699 (=> (not res!1295519) (not e!1985530))))

(assert (=> d!871699 (= res!1295519 (<= 0 0))))

(assert (=> d!871699 (= (apply!8067 (_1!20717 lt!1071678) 0) lt!1071844)))

(declare-fun b!3186349 () Bool)

(assert (=> b!3186349 (= e!1985530 (< 0 (size!27018 (_1!20717 lt!1071678))))))

(assert (= (and d!871699 res!1295519) b!3186349))

(declare-fun m!3443943 () Bool)

(assert (=> d!871699 m!3443943))

(assert (=> d!871699 m!3443943))

(declare-fun m!3443945 () Bool)

(assert (=> d!871699 m!3443945))

(declare-fun m!3443947 () Bool)

(assert (=> d!871699 m!3443947))

(assert (=> b!3186349 m!3443319))

(assert (=> b!3185850 d!871699))

(declare-fun d!871701 () Bool)

(declare-fun lt!1071847 () Bool)

(assert (=> d!871701 (= lt!1071847 (isEmpty!19939 (list!12713 (_2!20717 lt!1071701))))))

(declare-fun isEmpty!19950 (Conc!10647) Bool)

(assert (=> d!871701 (= lt!1071847 (isEmpty!19950 (c!534901 (_2!20717 lt!1071701))))))

(assert (=> d!871701 (= (isEmpty!19946 (_2!20717 lt!1071701)) lt!1071847)))

(declare-fun bs!540078 () Bool)

(assert (= bs!540078 d!871701))

(declare-fun m!3443949 () Bool)

(assert (=> bs!540078 m!3443949))

(assert (=> bs!540078 m!3443949))

(declare-fun m!3443951 () Bool)

(assert (=> bs!540078 m!3443951))

(declare-fun m!3443953 () Bool)

(assert (=> bs!540078 m!3443953))

(assert (=> b!3185923 d!871701))

(declare-fun d!871703 () Bool)

(declare-fun lt!1071848 () Int)

(assert (=> d!871703 (>= lt!1071848 0)))

(declare-fun e!1985531 () Int)

(assert (=> d!871703 (= lt!1071848 e!1985531)))

(declare-fun c!535099 () Bool)

(assert (=> d!871703 (= c!535099 ((_ is Nil!35809) (_2!20718 (get!11399 lt!1071628))))))

(assert (=> d!871703 (= (size!27015 (_2!20718 (get!11399 lt!1071628))) lt!1071848)))

(declare-fun b!3186350 () Bool)

(assert (=> b!3186350 (= e!1985531 0)))

(declare-fun b!3186351 () Bool)

(assert (=> b!3186351 (= e!1985531 (+ 1 (size!27015 (t!235526 (_2!20718 (get!11399 lt!1071628))))))))

(assert (= (and d!871703 c!535099) b!3186350))

(assert (= (and d!871703 (not c!535099)) b!3186351))

(declare-fun m!3443955 () Bool)

(assert (=> b!3186351 m!3443955))

(assert (=> b!3185686 d!871703))

(declare-fun d!871705 () Bool)

(assert (=> d!871705 (= (get!11399 lt!1071628) (v!35480 lt!1071628))))

(assert (=> b!3185686 d!871705))

(declare-fun d!871707 () Bool)

(declare-fun lt!1071849 () Int)

(assert (=> d!871707 (>= lt!1071849 0)))

(declare-fun e!1985532 () Int)

(assert (=> d!871707 (= lt!1071849 e!1985532)))

(declare-fun c!535100 () Bool)

(assert (=> d!871707 (= c!535100 ((_ is Nil!35809) lt!1071473))))

(assert (=> d!871707 (= (size!27015 lt!1071473) lt!1071849)))

(declare-fun b!3186352 () Bool)

(assert (=> b!3186352 (= e!1985532 0)))

(declare-fun b!3186353 () Bool)

(assert (=> b!3186353 (= e!1985532 (+ 1 (size!27015 (t!235526 lt!1071473))))))

(assert (= (and d!871707 c!535100) b!3186352))

(assert (= (and d!871707 (not c!535100)) b!3186353))

(declare-fun m!3443957 () Bool)

(assert (=> b!3186353 m!3443957))

(assert (=> b!3185686 d!871707))

(declare-fun d!871709 () Bool)

(declare-fun charsToBigInt!1 (List!35932) Int)

(assert (=> d!871709 (= (inv!17 (value!166836 (h!41230 tokens!494))) (= (charsToBigInt!1 (text!38010 (value!166836 (h!41230 tokens!494)))) (value!166828 (value!166836 (h!41230 tokens!494)))))))

(declare-fun bs!540079 () Bool)

(assert (= bs!540079 d!871709))

(declare-fun m!3443959 () Bool)

(assert (=> bs!540079 m!3443959))

(assert (=> b!3185722 d!871709))

(declare-fun d!871711 () Bool)

(assert (=> d!871711 (= (isEmpty!19939 lt!1071487) ((_ is Nil!35809) lt!1071487))))

(assert (=> bm!231111 d!871711))

(declare-fun b!3186362 () Bool)

(declare-fun e!1985541 () Bool)

(declare-fun e!1985540 () Bool)

(assert (=> b!3186362 (= e!1985541 e!1985540)))

(declare-fun res!1295524 () Bool)

(declare-fun rulesUseDisjointChars!258 (Rule!10072 Rule!10072) Bool)

(assert (=> b!3186362 (= res!1295524 (rulesUseDisjointChars!258 (h!41231 rules!2135) (h!41231 rules!2135)))))

(assert (=> b!3186362 (=> (not res!1295524) (not e!1985540))))

(declare-fun bm!231141 () Bool)

(declare-fun call!231146 () Bool)

(assert (=> bm!231141 (= call!231146 (ruleDisjointCharsFromAllFromOtherType!575 (h!41231 rules!2135) (t!235528 rules!2135)))))

(declare-fun b!3186363 () Bool)

(assert (=> b!3186363 (= e!1985540 call!231146)))

(declare-fun d!871713 () Bool)

(declare-fun c!535103 () Bool)

(assert (=> d!871713 (= c!535103 (and ((_ is Cons!35811) rules!2135) (not (= (isSeparator!5136 (h!41231 rules!2135)) (isSeparator!5136 (h!41231 rules!2135))))))))

(assert (=> d!871713 (= (ruleDisjointCharsFromAllFromOtherType!575 (h!41231 rules!2135) rules!2135) e!1985541)))

(declare-fun b!3186364 () Bool)

(declare-fun e!1985539 () Bool)

(assert (=> b!3186364 (= e!1985541 e!1985539)))

(declare-fun res!1295525 () Bool)

(assert (=> b!3186364 (= res!1295525 (not ((_ is Cons!35811) rules!2135)))))

(assert (=> b!3186364 (=> res!1295525 e!1985539)))

(declare-fun b!3186365 () Bool)

(assert (=> b!3186365 (= e!1985539 call!231146)))

(assert (= (and d!871713 c!535103) b!3186362))

(assert (= (and d!871713 (not c!535103)) b!3186364))

(assert (= (and b!3186362 res!1295524) b!3186363))

(assert (= (and b!3186364 (not res!1295525)) b!3186365))

(assert (= (or b!3186363 b!3186365) bm!231141))

(declare-fun m!3443961 () Bool)

(assert (=> b!3186362 m!3443961))

(declare-fun m!3443963 () Bool)

(assert (=> bm!231141 m!3443963))

(assert (=> b!3185737 d!871713))

(declare-fun b!3186368 () Bool)

(declare-fun res!1295526 () Bool)

(declare-fun e!1985543 () Bool)

(assert (=> b!3186368 (=> (not res!1295526) (not e!1985543))))

(declare-fun lt!1071850 () List!35933)

(assert (=> b!3186368 (= res!1295526 (= (size!27015 lt!1071850) (+ (size!27015 (ite c!535047 call!231127 call!231129)) (size!27015 (ite c!535047 call!231129 call!231127)))))))

(declare-fun e!1985542 () List!35933)

(declare-fun b!3186367 () Bool)

(assert (=> b!3186367 (= e!1985542 (Cons!35809 (h!41229 (ite c!535047 call!231127 call!231129)) (++!8566 (t!235526 (ite c!535047 call!231127 call!231129)) (ite c!535047 call!231129 call!231127))))))

(declare-fun b!3186366 () Bool)

(assert (=> b!3186366 (= e!1985542 (ite c!535047 call!231129 call!231127))))

(declare-fun b!3186369 () Bool)

(assert (=> b!3186369 (= e!1985543 (or (not (= (ite c!535047 call!231129 call!231127) Nil!35809)) (= lt!1071850 (ite c!535047 call!231127 call!231129))))))

(declare-fun d!871715 () Bool)

(assert (=> d!871715 e!1985543))

(declare-fun res!1295527 () Bool)

(assert (=> d!871715 (=> (not res!1295527) (not e!1985543))))

(assert (=> d!871715 (= res!1295527 (= (content!4850 lt!1071850) ((_ map or) (content!4850 (ite c!535047 call!231127 call!231129)) (content!4850 (ite c!535047 call!231129 call!231127)))))))

(assert (=> d!871715 (= lt!1071850 e!1985542)))

(declare-fun c!535104 () Bool)

(assert (=> d!871715 (= c!535104 ((_ is Nil!35809) (ite c!535047 call!231127 call!231129)))))

(assert (=> d!871715 (= (++!8566 (ite c!535047 call!231127 call!231129) (ite c!535047 call!231129 call!231127)) lt!1071850)))

(assert (= (and d!871715 c!535104) b!3186366))

(assert (= (and d!871715 (not c!535104)) b!3186367))

(assert (= (and d!871715 res!1295527) b!3186368))

(assert (= (and b!3186368 res!1295526) b!3186369))

(declare-fun m!3443965 () Bool)

(assert (=> b!3186368 m!3443965))

(declare-fun m!3443967 () Bool)

(assert (=> b!3186368 m!3443967))

(declare-fun m!3443969 () Bool)

(assert (=> b!3186368 m!3443969))

(declare-fun m!3443971 () Bool)

(assert (=> b!3186367 m!3443971))

(declare-fun m!3443973 () Bool)

(assert (=> d!871715 m!3443973))

(declare-fun m!3443975 () Bool)

(assert (=> d!871715 m!3443975))

(declare-fun m!3443977 () Bool)

(assert (=> d!871715 m!3443977))

(assert (=> bm!231122 d!871715))

(assert (=> d!871565 d!871581))

(assert (=> d!871565 d!871555))

(declare-fun d!871717 () Bool)

(assert (=> d!871717 (isEmpty!19939 (getSuffix!1352 lt!1071493 lt!1071493))))

(assert (=> d!871717 true))

(declare-fun _$66!335 () Unit!50220)

(assert (=> d!871717 (= (choose!18602 lt!1071493) _$66!335)))

(declare-fun bs!540080 () Bool)

(assert (= bs!540080 d!871717))

(assert (=> bs!540080 m!3442707))

(assert (=> bs!540080 m!3442707))

(assert (=> bs!540080 m!3442709))

(assert (=> d!871565 d!871717))

(declare-fun d!871719 () Bool)

(declare-fun e!1985558 () Bool)

(assert (=> d!871719 e!1985558))

(declare-fun res!1295538 () Bool)

(assert (=> d!871719 (=> res!1295538 e!1985558)))

(assert (=> d!871719 (= res!1295538 (isEmpty!19939 (_1!20722 (findLongestMatchInner!819 (regex!5136 (rule!7558 (h!41230 tokens!494))) Nil!35809 (size!27015 Nil!35809) lt!1071493 lt!1071493 (size!27015 lt!1071493)))))))

(declare-fun lt!1071856 () Unit!50220)

(declare-fun choose!18606 (Regex!9895 List!35933) Unit!50220)

(assert (=> d!871719 (= lt!1071856 (choose!18606 (regex!5136 (rule!7558 (h!41230 tokens!494))) lt!1071493))))

(assert (=> d!871719 (validRegex!4538 (regex!5136 (rule!7558 (h!41230 tokens!494))))))

(assert (=> d!871719 (= (longestMatchIsAcceptedByMatchOrIsEmpty!792 (regex!5136 (rule!7558 (h!41230 tokens!494))) lt!1071493) lt!1071856)))

(declare-fun b!3186385 () Bool)

(assert (=> b!3186385 (= e!1985558 (matchR!4553 (regex!5136 (rule!7558 (h!41230 tokens!494))) (_1!20722 (findLongestMatchInner!819 (regex!5136 (rule!7558 (h!41230 tokens!494))) Nil!35809 (size!27015 Nil!35809) lt!1071493 lt!1071493 (size!27015 lt!1071493)))))))

(assert (= (and d!871719 (not res!1295538)) b!3186385))

(assert (=> d!871719 m!3443643))

(assert (=> d!871719 m!3443647))

(assert (=> d!871719 m!3442715))

(assert (=> d!871719 m!3443649))

(assert (=> d!871719 m!3442715))

(declare-fun m!3444003 () Bool)

(assert (=> d!871719 m!3444003))

(assert (=> d!871719 m!3443647))

(declare-fun m!3444005 () Bool)

(assert (=> d!871719 m!3444005))

(assert (=> b!3186385 m!3443647))

(assert (=> b!3186385 m!3442715))

(assert (=> b!3186385 m!3443647))

(assert (=> b!3186385 m!3442715))

(assert (=> b!3186385 m!3443649))

(assert (=> b!3186385 m!3443669))

(assert (=> b!3186112 d!871719))

(declare-fun b!3186483 () Bool)

(declare-fun e!1985619 () tuple2!35176)

(assert (=> b!3186483 (= e!1985619 (tuple2!35177 Nil!35809 lt!1071493))))

(declare-fun b!3186484 () Bool)

(declare-fun e!1985625 () tuple2!35176)

(declare-fun e!1985626 () tuple2!35176)

(assert (=> b!3186484 (= e!1985625 e!1985626)))

(declare-fun c!535140 () Bool)

(assert (=> b!3186484 (= c!535140 (= (size!27015 Nil!35809) (size!27015 lt!1071493)))))

(declare-fun bm!231184 () Bool)

(declare-fun call!231195 () C!19976)

(assert (=> bm!231184 (= call!231195 (head!6967 lt!1071493))))

(declare-fun b!3186485 () Bool)

(declare-fun c!535141 () Bool)

(declare-fun call!231190 () Bool)

(assert (=> b!3186485 (= c!535141 call!231190)))

(declare-fun lt!1071978 () Unit!50220)

(declare-fun lt!1071979 () Unit!50220)

(assert (=> b!3186485 (= lt!1071978 lt!1071979)))

(assert (=> b!3186485 (= lt!1071493 Nil!35809)))

(declare-fun call!231194 () Unit!50220)

(assert (=> b!3186485 (= lt!1071979 call!231194)))

(declare-fun lt!1071976 () Unit!50220)

(declare-fun lt!1071982 () Unit!50220)

(assert (=> b!3186485 (= lt!1071976 lt!1071982)))

(declare-fun call!231193 () Bool)

(assert (=> b!3186485 call!231193))

(declare-fun call!231189 () Unit!50220)

(assert (=> b!3186485 (= lt!1071982 call!231189)))

(assert (=> b!3186485 (= e!1985626 e!1985619)))

(declare-fun d!871743 () Bool)

(declare-fun e!1985622 () Bool)

(assert (=> d!871743 e!1985622))

(declare-fun res!1295570 () Bool)

(assert (=> d!871743 (=> (not res!1295570) (not e!1985622))))

(declare-fun lt!1071993 () tuple2!35176)

(assert (=> d!871743 (= res!1295570 (= (++!8566 (_1!20722 lt!1071993) (_2!20722 lt!1071993)) lt!1071493))))

(assert (=> d!871743 (= lt!1071993 e!1985625)))

(declare-fun c!535143 () Bool)

(declare-fun lostCause!872 (Regex!9895) Bool)

(assert (=> d!871743 (= c!535143 (lostCause!872 (regex!5136 (rule!7558 (h!41230 tokens!494)))))))

(declare-fun lt!1071997 () Unit!50220)

(declare-fun Unit!50227 () Unit!50220)

(assert (=> d!871743 (= lt!1071997 Unit!50227)))

(assert (=> d!871743 (= (getSuffix!1352 lt!1071493 Nil!35809) lt!1071493)))

(declare-fun lt!1071986 () Unit!50220)

(declare-fun lt!1071977 () Unit!50220)

(assert (=> d!871743 (= lt!1071986 lt!1071977)))

(declare-fun lt!1071989 () List!35933)

(assert (=> d!871743 (= lt!1071493 lt!1071989)))

(declare-fun lemmaSamePrefixThenSameSuffix!1222 (List!35933 List!35933 List!35933 List!35933 List!35933) Unit!50220)

(assert (=> d!871743 (= lt!1071977 (lemmaSamePrefixThenSameSuffix!1222 Nil!35809 lt!1071493 Nil!35809 lt!1071989 lt!1071493))))

(assert (=> d!871743 (= lt!1071989 (getSuffix!1352 lt!1071493 Nil!35809))))

(declare-fun lt!1071980 () Unit!50220)

(declare-fun lt!1071974 () Unit!50220)

(assert (=> d!871743 (= lt!1071980 lt!1071974)))

(assert (=> d!871743 (isPrefix!2771 Nil!35809 (++!8566 Nil!35809 lt!1071493))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1756 (List!35933 List!35933) Unit!50220)

(assert (=> d!871743 (= lt!1071974 (lemmaConcatTwoListThenFirstIsPrefix!1756 Nil!35809 lt!1071493))))

(assert (=> d!871743 (validRegex!4538 (regex!5136 (rule!7558 (h!41230 tokens!494))))))

(assert (=> d!871743 (= (findLongestMatchInner!819 (regex!5136 (rule!7558 (h!41230 tokens!494))) Nil!35809 (size!27015 Nil!35809) lt!1071493 lt!1071493 (size!27015 lt!1071493)) lt!1071993)))

(declare-fun b!3186486 () Bool)

(declare-fun e!1985621 () tuple2!35176)

(declare-fun call!231191 () tuple2!35176)

(assert (=> b!3186486 (= e!1985621 call!231191)))

(declare-fun b!3186487 () Bool)

(declare-fun e!1985620 () tuple2!35176)

(declare-fun lt!1071973 () tuple2!35176)

(assert (=> b!3186487 (= e!1985620 lt!1071973)))

(declare-fun b!3186488 () Bool)

(assert (=> b!3186488 (= e!1985619 (tuple2!35177 Nil!35809 Nil!35809))))

(declare-fun b!3186489 () Bool)

(assert (=> b!3186489 (= e!1985621 e!1985620)))

(assert (=> b!3186489 (= lt!1071973 call!231191)))

(declare-fun c!535139 () Bool)

(assert (=> b!3186489 (= c!535139 (isEmpty!19939 (_1!20722 lt!1071973)))))

(declare-fun b!3186490 () Bool)

(declare-fun e!1985624 () Bool)

(assert (=> b!3186490 (= e!1985624 (>= (size!27015 (_1!20722 lt!1071993)) (size!27015 Nil!35809)))))

(declare-fun b!3186491 () Bool)

(declare-fun c!535144 () Bool)

(assert (=> b!3186491 (= c!535144 call!231190)))

(declare-fun lt!1071985 () Unit!50220)

(declare-fun lt!1071971 () Unit!50220)

(assert (=> b!3186491 (= lt!1071985 lt!1071971)))

(declare-fun lt!1071995 () C!19976)

(declare-fun lt!1071983 () List!35933)

(assert (=> b!3186491 (= (++!8566 (++!8566 Nil!35809 (Cons!35809 lt!1071995 Nil!35809)) lt!1071983) lt!1071493)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1110 (List!35933 C!19976 List!35933 List!35933) Unit!50220)

(assert (=> b!3186491 (= lt!1071971 (lemmaMoveElementToOtherListKeepsConcatEq!1110 Nil!35809 lt!1071995 lt!1071983 lt!1071493))))

(assert (=> b!3186491 (= lt!1071983 (tail!5184 lt!1071493))))

(assert (=> b!3186491 (= lt!1071995 (head!6967 lt!1071493))))

(declare-fun lt!1071990 () Unit!50220)

(declare-fun lt!1071988 () Unit!50220)

(assert (=> b!3186491 (= lt!1071990 lt!1071988)))

(assert (=> b!3186491 (isPrefix!2771 (++!8566 Nil!35809 (Cons!35809 (head!6967 (getSuffix!1352 lt!1071493 Nil!35809)) Nil!35809)) lt!1071493)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!498 (List!35933 List!35933) Unit!50220)

(assert (=> b!3186491 (= lt!1071988 (lemmaAddHeadSuffixToPrefixStillPrefix!498 Nil!35809 lt!1071493))))

(declare-fun lt!1071987 () Unit!50220)

(declare-fun lt!1071972 () Unit!50220)

(assert (=> b!3186491 (= lt!1071987 lt!1071972)))

(assert (=> b!3186491 (= lt!1071972 (lemmaAddHeadSuffixToPrefixStillPrefix!498 Nil!35809 lt!1071493))))

(declare-fun lt!1071991 () List!35933)

(assert (=> b!3186491 (= lt!1071991 (++!8566 Nil!35809 (Cons!35809 (head!6967 lt!1071493) Nil!35809)))))

(declare-fun lt!1071984 () Unit!50220)

(declare-fun e!1985623 () Unit!50220)

(assert (=> b!3186491 (= lt!1071984 e!1985623)))

(declare-fun c!535142 () Bool)

(assert (=> b!3186491 (= c!535142 (= (size!27015 Nil!35809) (size!27015 lt!1071493)))))

(declare-fun lt!1071975 () Unit!50220)

(declare-fun lt!1071996 () Unit!50220)

(assert (=> b!3186491 (= lt!1071975 lt!1071996)))

(assert (=> b!3186491 (<= (size!27015 Nil!35809) (size!27015 lt!1071493))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!306 (List!35933 List!35933) Unit!50220)

(assert (=> b!3186491 (= lt!1071996 (lemmaIsPrefixThenSmallerEqSize!306 Nil!35809 lt!1071493))))

(assert (=> b!3186491 (= e!1985626 e!1985621)))

(declare-fun bm!231185 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!505 (List!35933 List!35933 List!35933) Unit!50220)

(assert (=> bm!231185 (= call!231194 (lemmaIsPrefixSameLengthThenSameList!505 lt!1071493 Nil!35809 lt!1071493))))

(declare-fun b!3186492 () Bool)

(assert (=> b!3186492 (= e!1985620 (tuple2!35177 Nil!35809 lt!1071493))))

(declare-fun bm!231186 () Bool)

(assert (=> bm!231186 (= call!231190 (nullable!3386 (regex!5136 (rule!7558 (h!41230 tokens!494)))))))

(declare-fun b!3186493 () Bool)

(declare-fun Unit!50228 () Unit!50220)

(assert (=> b!3186493 (= e!1985623 Unit!50228)))

(declare-fun bm!231187 () Bool)

(assert (=> bm!231187 (= call!231193 (isPrefix!2771 lt!1071493 lt!1071493))))

(declare-fun bm!231188 () Bool)

(declare-fun call!231196 () List!35933)

(assert (=> bm!231188 (= call!231196 (tail!5184 lt!1071493))))

(declare-fun call!231192 () Regex!9895)

(declare-fun bm!231189 () Bool)

(assert (=> bm!231189 (= call!231191 (findLongestMatchInner!819 call!231192 lt!1071991 (+ (size!27015 Nil!35809) 1) call!231196 lt!1071493 (size!27015 lt!1071493)))))

(declare-fun bm!231190 () Bool)

(assert (=> bm!231190 (= call!231192 (derivativeStep!2939 (regex!5136 (rule!7558 (h!41230 tokens!494))) call!231195))))

(declare-fun b!3186494 () Bool)

(declare-fun Unit!50229 () Unit!50220)

(assert (=> b!3186494 (= e!1985623 Unit!50229)))

(declare-fun lt!1071992 () Unit!50220)

(assert (=> b!3186494 (= lt!1071992 call!231189)))

(assert (=> b!3186494 call!231193))

(declare-fun lt!1071994 () Unit!50220)

(assert (=> b!3186494 (= lt!1071994 lt!1071992)))

(declare-fun lt!1071970 () Unit!50220)

(assert (=> b!3186494 (= lt!1071970 call!231194)))

(assert (=> b!3186494 (= lt!1071493 Nil!35809)))

(declare-fun lt!1071981 () Unit!50220)

(assert (=> b!3186494 (= lt!1071981 lt!1071970)))

(assert (=> b!3186494 false))

(declare-fun b!3186495 () Bool)

(assert (=> b!3186495 (= e!1985625 (tuple2!35177 Nil!35809 lt!1071493))))

(declare-fun b!3186496 () Bool)

(assert (=> b!3186496 (= e!1985622 e!1985624)))

(declare-fun res!1295571 () Bool)

(assert (=> b!3186496 (=> res!1295571 e!1985624)))

(assert (=> b!3186496 (= res!1295571 (isEmpty!19939 (_1!20722 lt!1071993)))))

(declare-fun bm!231191 () Bool)

(assert (=> bm!231191 (= call!231189 (lemmaIsPrefixRefl!1730 lt!1071493 lt!1071493))))

(assert (= (and d!871743 c!535143) b!3186495))

(assert (= (and d!871743 (not c!535143)) b!3186484))

(assert (= (and b!3186484 c!535140) b!3186485))

(assert (= (and b!3186484 (not c!535140)) b!3186491))

(assert (= (and b!3186485 c!535141) b!3186488))

(assert (= (and b!3186485 (not c!535141)) b!3186483))

(assert (= (and b!3186491 c!535142) b!3186494))

(assert (= (and b!3186491 (not c!535142)) b!3186493))

(assert (= (and b!3186491 c!535144) b!3186489))

(assert (= (and b!3186491 (not c!535144)) b!3186486))

(assert (= (and b!3186489 c!535139) b!3186492))

(assert (= (and b!3186489 (not c!535139)) b!3186487))

(assert (= (or b!3186489 b!3186486) bm!231184))

(assert (= (or b!3186489 b!3186486) bm!231188))

(assert (= (or b!3186489 b!3186486) bm!231190))

(assert (= (or b!3186489 b!3186486) bm!231189))

(assert (= (or b!3186485 b!3186494) bm!231191))

(assert (= (or b!3186485 b!3186494) bm!231187))

(assert (= (or b!3186485 b!3186494) bm!231185))

(assert (= (or b!3186485 b!3186491) bm!231186))

(assert (= (and d!871743 res!1295570) b!3186496))

(assert (= (and b!3186496 (not res!1295571)) b!3186490))

(declare-fun m!3444027 () Bool)

(assert (=> b!3186496 m!3444027))

(declare-fun m!3444029 () Bool)

(assert (=> bm!231191 m!3444029))

(declare-fun m!3444031 () Bool)

(assert (=> bm!231190 m!3444031))

(assert (=> bm!231188 m!3443205))

(assert (=> bm!231189 m!3442715))

(declare-fun m!3444033 () Bool)

(assert (=> bm!231189 m!3444033))

(declare-fun m!3444035 () Bool)

(assert (=> d!871743 m!3444035))

(declare-fun m!3444037 () Bool)

(assert (=> d!871743 m!3444037))

(assert (=> d!871743 m!3444003))

(declare-fun m!3444039 () Bool)

(assert (=> d!871743 m!3444039))

(declare-fun m!3444041 () Bool)

(assert (=> d!871743 m!3444041))

(declare-fun m!3444043 () Bool)

(assert (=> d!871743 m!3444043))

(declare-fun m!3444045 () Bool)

(assert (=> d!871743 m!3444045))

(assert (=> d!871743 m!3444041))

(declare-fun m!3444047 () Bool)

(assert (=> d!871743 m!3444047))

(declare-fun m!3444049 () Bool)

(assert (=> b!3186489 m!3444049))

(declare-fun m!3444051 () Bool)

(assert (=> bm!231187 m!3444051))

(declare-fun m!3444053 () Bool)

(assert (=> bm!231186 m!3444053))

(assert (=> bm!231184 m!3443201))

(assert (=> b!3186491 m!3443205))

(declare-fun m!3444055 () Bool)

(assert (=> b!3186491 m!3444055))

(declare-fun m!3444057 () Bool)

(assert (=> b!3186491 m!3444057))

(declare-fun m!3444059 () Bool)

(assert (=> b!3186491 m!3444059))

(assert (=> b!3186491 m!3444039))

(declare-fun m!3444061 () Bool)

(assert (=> b!3186491 m!3444061))

(declare-fun m!3444063 () Bool)

(assert (=> b!3186491 m!3444063))

(declare-fun m!3444065 () Bool)

(assert (=> b!3186491 m!3444065))

(declare-fun m!3444067 () Bool)

(assert (=> b!3186491 m!3444067))

(assert (=> b!3186491 m!3444063))

(assert (=> b!3186491 m!3444055))

(assert (=> b!3186491 m!3442715))

(assert (=> b!3186491 m!3443647))

(declare-fun m!3444069 () Bool)

(assert (=> b!3186491 m!3444069))

(assert (=> b!3186491 m!3444039))

(assert (=> b!3186491 m!3443201))

(declare-fun m!3444071 () Bool)

(assert (=> b!3186491 m!3444071))

(declare-fun m!3444073 () Bool)

(assert (=> b!3186490 m!3444073))

(assert (=> b!3186490 m!3443647))

(declare-fun m!3444075 () Bool)

(assert (=> bm!231185 m!3444075))

(assert (=> b!3186112 d!871743))

(declare-fun d!871749 () Bool)

(assert (=> d!871749 (= (seqFromList!3351 (_1!20722 lt!1071772)) (fromListB!1510 (_1!20722 lt!1071772)))))

(declare-fun bs!540087 () Bool)

(assert (= bs!540087 d!871749))

(declare-fun m!3444077 () Bool)

(assert (=> bs!540087 m!3444077))

(assert (=> b!3186112 d!871749))

(declare-fun d!871751 () Bool)

(assert (=> d!871751 (= (isEmpty!19939 (_1!20722 (findLongestMatchInner!819 (regex!5136 (rule!7558 (h!41230 tokens!494))) Nil!35809 (size!27015 Nil!35809) lt!1071493 lt!1071493 (size!27015 lt!1071493)))) ((_ is Nil!35809) (_1!20722 (findLongestMatchInner!819 (regex!5136 (rule!7558 (h!41230 tokens!494))) Nil!35809 (size!27015 Nil!35809) lt!1071493 lt!1071493 (size!27015 lt!1071493)))))))

(assert (=> b!3186112 d!871751))

(assert (=> b!3186112 d!871575))

(declare-fun d!871753 () Bool)

(assert (=> d!871753 (= (apply!8064 (transformation!5136 (rule!7558 (h!41230 tokens!494))) (seqFromList!3351 (_1!20722 lt!1071772))) (dynLambda!14457 (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (seqFromList!3351 (_1!20722 lt!1071772))))))

(declare-fun b_lambda!86893 () Bool)

(assert (=> (not b_lambda!86893) (not d!871753)))

(declare-fun t!235650 () Bool)

(declare-fun tb!155555 () Bool)

(assert (=> (and b!3186168 (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235650) tb!155555))

(declare-fun result!197712 () Bool)

(assert (=> tb!155555 (= result!197712 (inv!21 (dynLambda!14457 (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (seqFromList!3351 (_1!20722 lt!1071772)))))))

(declare-fun m!3444079 () Bool)

(assert (=> tb!155555 m!3444079))

(assert (=> d!871753 t!235650))

(declare-fun b_and!210879 () Bool)

(assert (= b_and!210831 (and (=> t!235650 result!197712) b_and!210879)))

(declare-fun t!235652 () Bool)

(declare-fun tb!155557 () Bool)

(assert (=> (and b!3185352 (= (toValue!7196 (transformation!5136 (rule!7558 separatorToken!241))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235652) tb!155557))

(declare-fun result!197714 () Bool)

(assert (= result!197714 result!197712))

(assert (=> d!871753 t!235652))

(declare-fun b_and!210881 () Bool)

(assert (= b_and!210829 (and (=> t!235652 result!197714) b_and!210881)))

(declare-fun t!235654 () Bool)

(declare-fun tb!155559 () Bool)

(assert (=> (and b!3185353 (= (toValue!7196 (transformation!5136 (h!41231 rules!2135))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235654) tb!155559))

(declare-fun result!197716 () Bool)

(assert (= result!197716 result!197712))

(assert (=> d!871753 t!235654))

(declare-fun b_and!210883 () Bool)

(assert (= b_and!210825 (and (=> t!235654 result!197716) b_and!210883)))

(declare-fun tb!155561 () Bool)

(declare-fun t!235656 () Bool)

(assert (=> (and b!3186184 (= (toValue!7196 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235656) tb!155561))

(declare-fun result!197718 () Bool)

(assert (= result!197718 result!197712))

(assert (=> d!871753 t!235656))

(declare-fun b_and!210885 () Bool)

(assert (= b_and!210835 (and (=> t!235656 result!197718) b_and!210885)))

(declare-fun t!235658 () Bool)

(declare-fun tb!155563 () Bool)

(assert (=> (and b!3185354 (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235658) tb!155563))

(declare-fun result!197720 () Bool)

(assert (= result!197720 result!197712))

(assert (=> d!871753 t!235658))

(declare-fun b_and!210887 () Bool)

(assert (= b_and!210827 (and (=> t!235658 result!197720) b_and!210887)))

(assert (=> d!871753 m!3443641))

(declare-fun m!3444081 () Bool)

(assert (=> d!871753 m!3444081))

(assert (=> b!3186112 d!871753))

(declare-fun d!871755 () Bool)

(declare-fun lt!1071998 () Int)

(assert (=> d!871755 (>= lt!1071998 0)))

(declare-fun e!1985628 () Int)

(assert (=> d!871755 (= lt!1071998 e!1985628)))

(declare-fun c!535145 () Bool)

(assert (=> d!871755 (= c!535145 ((_ is Nil!35809) Nil!35809))))

(assert (=> d!871755 (= (size!27015 Nil!35809) lt!1071998)))

(declare-fun b!3186497 () Bool)

(assert (=> b!3186497 (= e!1985628 0)))

(declare-fun b!3186498 () Bool)

(assert (=> b!3186498 (= e!1985628 (+ 1 (size!27015 (t!235526 Nil!35809))))))

(assert (= (and d!871755 c!535145) b!3186497))

(assert (= (and d!871755 (not c!535145)) b!3186498))

(declare-fun m!3444083 () Bool)

(assert (=> b!3186498 m!3444083))

(assert (=> b!3186112 d!871755))

(declare-fun b!3186519 () Bool)

(declare-fun e!1985640 () Bool)

(assert (=> b!3186519 (= e!1985640 true)))

(declare-fun d!871757 () Bool)

(assert (=> d!871757 e!1985640))

(assert (= d!871757 b!3186519))

(declare-fun lambda!116554 () Int)

(declare-fun order!18255 () Int)

(declare-fun dynLambda!14460 (Int Int) Int)

(assert (=> b!3186519 (< (dynLambda!14448 order!18239 (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) (dynLambda!14460 order!18255 lambda!116554))))

(assert (=> b!3186519 (< (dynLambda!14450 order!18243 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) (dynLambda!14460 order!18255 lambda!116554))))

(assert (=> d!871757 (= (list!12713 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (dynLambda!14457 (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (seqFromList!3351 (_1!20722 lt!1071772))))) (list!12713 (seqFromList!3351 (_1!20722 lt!1071772))))))

(declare-fun lt!1072029 () Unit!50220)

(declare-fun ForallOf!543 (Int BalanceConc!20908) Unit!50220)

(assert (=> d!871757 (= lt!1072029 (ForallOf!543 lambda!116554 (seqFromList!3351 (_1!20722 lt!1071772))))))

(assert (=> d!871757 (= (lemmaSemiInverse!1161 (transformation!5136 (rule!7558 (h!41230 tokens!494))) (seqFromList!3351 (_1!20722 lt!1071772))) lt!1072029)))

(declare-fun b_lambda!86895 () Bool)

(assert (=> (not b_lambda!86895) (not d!871757)))

(declare-fun tb!155565 () Bool)

(declare-fun t!235660 () Bool)

(assert (=> (and b!3185352 (= (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235660) tb!155565))

(declare-fun tp!1007574 () Bool)

(declare-fun b!3186520 () Bool)

(declare-fun e!1985641 () Bool)

(assert (=> b!3186520 (= e!1985641 (and (inv!48663 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (dynLambda!14457 (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (seqFromList!3351 (_1!20722 lt!1071772)))))) tp!1007574))))

(declare-fun result!197722 () Bool)

(assert (=> tb!155565 (= result!197722 (and (inv!48664 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (dynLambda!14457 (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (seqFromList!3351 (_1!20722 lt!1071772))))) e!1985641))))

(assert (= tb!155565 b!3186520))

(declare-fun m!3444137 () Bool)

(assert (=> b!3186520 m!3444137))

(declare-fun m!3444139 () Bool)

(assert (=> tb!155565 m!3444139))

(assert (=> d!871757 t!235660))

(declare-fun b_and!210889 () Bool)

(assert (= b_and!210877 (and (=> t!235660 result!197722) b_and!210889)))

(declare-fun t!235662 () Bool)

(declare-fun tb!155567 () Bool)

(assert (=> (and b!3186168 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235662) tb!155567))

(declare-fun result!197724 () Bool)

(assert (= result!197724 result!197722))

(assert (=> d!871757 t!235662))

(declare-fun b_and!210891 () Bool)

(assert (= b_and!210869 (and (=> t!235662 result!197724) b_and!210891)))

(declare-fun tb!155569 () Bool)

(declare-fun t!235664 () Bool)

(assert (=> (and b!3186184 (= (toChars!7055 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235664) tb!155569))

(declare-fun result!197726 () Bool)

(assert (= result!197726 result!197722))

(assert (=> d!871757 t!235664))

(declare-fun b_and!210893 () Bool)

(assert (= b_and!210875 (and (=> t!235664 result!197726) b_and!210893)))

(declare-fun t!235666 () Bool)

(declare-fun tb!155571 () Bool)

(assert (=> (and b!3185353 (= (toChars!7055 (transformation!5136 (h!41231 rules!2135))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235666) tb!155571))

(declare-fun result!197728 () Bool)

(assert (= result!197728 result!197722))

(assert (=> d!871757 t!235666))

(declare-fun b_and!210895 () Bool)

(assert (= b_and!210873 (and (=> t!235666 result!197728) b_and!210895)))

(declare-fun t!235668 () Bool)

(declare-fun tb!155573 () Bool)

(assert (=> (and b!3185354 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235668) tb!155573))

(declare-fun result!197730 () Bool)

(assert (= result!197730 result!197722))

(assert (=> d!871757 t!235668))

(declare-fun b_and!210897 () Bool)

(assert (= b_and!210871 (and (=> t!235668 result!197730) b_and!210897)))

(declare-fun b_lambda!86897 () Bool)

(assert (=> (not b_lambda!86897) (not d!871757)))

(assert (=> d!871757 t!235652))

(declare-fun b_and!210899 () Bool)

(assert (= b_and!210881 (and (=> t!235652 result!197714) b_and!210899)))

(assert (=> d!871757 t!235656))

(declare-fun b_and!210901 () Bool)

(assert (= b_and!210885 (and (=> t!235656 result!197718) b_and!210901)))

(assert (=> d!871757 t!235658))

(declare-fun b_and!210903 () Bool)

(assert (= b_and!210887 (and (=> t!235658 result!197720) b_and!210903)))

(assert (=> d!871757 t!235654))

(declare-fun b_and!210905 () Bool)

(assert (= b_and!210883 (and (=> t!235654 result!197716) b_and!210905)))

(assert (=> d!871757 t!235650))

(declare-fun b_and!210907 () Bool)

(assert (= b_and!210879 (and (=> t!235650 result!197712) b_and!210907)))

(assert (=> d!871757 m!3443641))

(declare-fun m!3444141 () Bool)

(assert (=> d!871757 m!3444141))

(declare-fun m!3444143 () Bool)

(assert (=> d!871757 m!3444143))

(declare-fun m!3444145 () Bool)

(assert (=> d!871757 m!3444145))

(assert (=> d!871757 m!3443641))

(assert (=> d!871757 m!3444081))

(assert (=> d!871757 m!3444081))

(assert (=> d!871757 m!3444143))

(assert (=> d!871757 m!3443641))

(declare-fun m!3444147 () Bool)

(assert (=> d!871757 m!3444147))

(assert (=> b!3186112 d!871757))

(declare-fun d!871765 () Bool)

(declare-fun lt!1072033 () Int)

(assert (=> d!871765 (= lt!1072033 (size!27015 (list!12713 (seqFromList!3351 (_1!20722 lt!1071772)))))))

(declare-fun size!27023 (Conc!10647) Int)

(assert (=> d!871765 (= lt!1072033 (size!27023 (c!534901 (seqFromList!3351 (_1!20722 lt!1071772)))))))

(assert (=> d!871765 (= (size!27019 (seqFromList!3351 (_1!20722 lt!1071772))) lt!1072033)))

(declare-fun bs!540089 () Bool)

(assert (= bs!540089 d!871765))

(assert (=> bs!540089 m!3443641))

(assert (=> bs!540089 m!3444147))

(assert (=> bs!540089 m!3444147))

(declare-fun m!3444149 () Bool)

(assert (=> bs!540089 m!3444149))

(declare-fun m!3444151 () Bool)

(assert (=> bs!540089 m!3444151))

(assert (=> b!3186112 d!871765))

(declare-fun d!871767 () Bool)

(assert (=> d!871767 (= (isEmpty!19939 lt!1071493) ((_ is Nil!35809) lt!1071493))))

(assert (=> bm!231110 d!871767))

(declare-fun d!871769 () Bool)

(declare-fun lt!1072034 () Int)

(assert (=> d!871769 (>= lt!1072034 0)))

(declare-fun e!1985642 () Int)

(assert (=> d!871769 (= lt!1072034 e!1985642)))

(declare-fun c!535154 () Bool)

(assert (=> d!871769 (= c!535154 ((_ is Nil!35809) lt!1071634))))

(assert (=> d!871769 (= (size!27015 lt!1071634) lt!1072034)))

(declare-fun b!3186521 () Bool)

(assert (=> b!3186521 (= e!1985642 0)))

(declare-fun b!3186522 () Bool)

(assert (=> b!3186522 (= e!1985642 (+ 1 (size!27015 (t!235526 lt!1071634))))))

(assert (= (and d!871769 c!535154) b!3186521))

(assert (= (and d!871769 (not c!535154)) b!3186522))

(declare-fun m!3444153 () Bool)

(assert (=> b!3186522 m!3444153))

(assert (=> b!3185702 d!871769))

(assert (=> b!3185702 d!871575))

(declare-fun d!871771 () Bool)

(declare-fun lt!1072035 () Int)

(assert (=> d!871771 (>= lt!1072035 0)))

(declare-fun e!1985643 () Int)

(assert (=> d!871771 (= lt!1072035 e!1985643)))

(declare-fun c!535155 () Bool)

(assert (=> d!871771 (= c!535155 ((_ is Nil!35809) lt!1071487))))

(assert (=> d!871771 (= (size!27015 lt!1071487) lt!1072035)))

(declare-fun b!3186523 () Bool)

(assert (=> b!3186523 (= e!1985643 0)))

(declare-fun b!3186524 () Bool)

(assert (=> b!3186524 (= e!1985643 (+ 1 (size!27015 (t!235526 lt!1071487))))))

(assert (= (and d!871771 c!535155) b!3186523))

(assert (= (and d!871771 (not c!535155)) b!3186524))

(declare-fun m!3444155 () Bool)

(assert (=> b!3186524 m!3444155))

(assert (=> b!3185702 d!871771))

(declare-fun d!871773 () Bool)

(declare-fun c!535160 () Bool)

(assert (=> d!871773 (= c!535160 ((_ is Empty!10647) (c!534901 lt!1071477)))))

(declare-fun e!1985648 () List!35933)

(assert (=> d!871773 (= (list!12717 (c!534901 lt!1071477)) e!1985648)))

(declare-fun b!3186536 () Bool)

(declare-fun e!1985649 () List!35933)

(assert (=> b!3186536 (= e!1985649 (++!8566 (list!12717 (left!27849 (c!534901 lt!1071477))) (list!12717 (right!28179 (c!534901 lt!1071477)))))))

(declare-fun b!3186533 () Bool)

(assert (=> b!3186533 (= e!1985648 Nil!35809)))

(declare-fun b!3186535 () Bool)

(declare-fun list!12721 (IArray!21299) List!35933)

(assert (=> b!3186535 (= e!1985649 (list!12721 (xs!13765 (c!534901 lt!1071477))))))

(declare-fun b!3186534 () Bool)

(assert (=> b!3186534 (= e!1985648 e!1985649)))

(declare-fun c!535161 () Bool)

(assert (=> b!3186534 (= c!535161 ((_ is Leaf!16826) (c!534901 lt!1071477)))))

(assert (= (and d!871773 c!535160) b!3186533))

(assert (= (and d!871773 (not c!535160)) b!3186534))

(assert (= (and b!3186534 c!535161) b!3186535))

(assert (= (and b!3186534 (not c!535161)) b!3186536))

(declare-fun m!3444157 () Bool)

(assert (=> b!3186536 m!3444157))

(declare-fun m!3444159 () Bool)

(assert (=> b!3186536 m!3444159))

(assert (=> b!3186536 m!3444157))

(assert (=> b!3186536 m!3444159))

(declare-fun m!3444161 () Bool)

(assert (=> b!3186536 m!3444161))

(declare-fun m!3444163 () Bool)

(assert (=> b!3186535 m!3444163))

(assert (=> d!871469 d!871773))

(declare-fun d!871775 () Bool)

(assert (=> d!871775 (= (inv!48656 (tag!5650 (rule!7558 (h!41230 (t!235527 tokens!494))))) (= (mod (str.len (value!166835 (tag!5650 (rule!7558 (h!41230 (t!235527 tokens!494)))))) 2) 0))))

(assert (=> b!3186167 d!871775))

(declare-fun d!871777 () Bool)

(declare-fun res!1295574 () Bool)

(declare-fun e!1985650 () Bool)

(assert (=> d!871777 (=> (not res!1295574) (not e!1985650))))

(assert (=> d!871777 (= res!1295574 (semiInverseModEq!2139 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494)))))))))

(assert (=> d!871777 (= (inv!48660 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) e!1985650)))

(declare-fun b!3186537 () Bool)

(assert (=> b!3186537 (= e!1985650 (equivClasses!2038 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494)))))))))

(assert (= (and d!871777 res!1295574) b!3186537))

(declare-fun m!3444165 () Bool)

(assert (=> d!871777 m!3444165))

(declare-fun m!3444167 () Bool)

(assert (=> b!3186537 m!3444167))

(assert (=> b!3186167 d!871777))

(declare-fun d!871779 () Bool)

(assert (=> d!871779 (= (list!12713 lt!1071640) (list!12717 (c!534901 lt!1071640)))))

(declare-fun bs!540090 () Bool)

(assert (= bs!540090 d!871779))

(declare-fun m!3444169 () Bool)

(assert (=> bs!540090 m!3444169))

(assert (=> d!871439 d!871779))

(declare-fun d!871781 () Bool)

(declare-fun lt!1072038 () Bool)

(declare-fun content!4854 (List!35935) (InoxSet Rule!10072))

(assert (=> d!871781 (= lt!1072038 (select (content!4854 rules!2135) (rule!7558 (_1!20718 (get!11399 lt!1071628)))))))

(declare-fun e!1985655 () Bool)

(assert (=> d!871781 (= lt!1072038 e!1985655)))

(declare-fun res!1295579 () Bool)

(assert (=> d!871781 (=> (not res!1295579) (not e!1985655))))

(assert (=> d!871781 (= res!1295579 ((_ is Cons!35811) rules!2135))))

(assert (=> d!871781 (= (contains!6354 rules!2135 (rule!7558 (_1!20718 (get!11399 lt!1071628)))) lt!1072038)))

(declare-fun b!3186542 () Bool)

(declare-fun e!1985656 () Bool)

(assert (=> b!3186542 (= e!1985655 e!1985656)))

(declare-fun res!1295580 () Bool)

(assert (=> b!3186542 (=> res!1295580 e!1985656)))

(assert (=> b!3186542 (= res!1295580 (= (h!41231 rules!2135) (rule!7558 (_1!20718 (get!11399 lt!1071628)))))))

(declare-fun b!3186543 () Bool)

(assert (=> b!3186543 (= e!1985656 (contains!6354 (t!235528 rules!2135) (rule!7558 (_1!20718 (get!11399 lt!1071628)))))))

(assert (= (and d!871781 res!1295579) b!3186542))

(assert (= (and b!3186542 (not res!1295580)) b!3186543))

(declare-fun m!3444171 () Bool)

(assert (=> d!871781 m!3444171))

(declare-fun m!3444173 () Bool)

(assert (=> d!871781 m!3444173))

(declare-fun m!3444175 () Bool)

(assert (=> b!3186543 m!3444175))

(assert (=> b!3185690 d!871781))

(assert (=> b!3185690 d!871705))

(declare-fun d!871783 () Bool)

(declare-fun charsToInt!0 (List!35932) (_ BitVec 32))

(assert (=> d!871783 (= (inv!16 (value!166836 (h!41230 tokens!494))) (= (charsToInt!0 (text!38009 (value!166836 (h!41230 tokens!494)))) (value!166827 (value!166836 (h!41230 tokens!494)))))))

(declare-fun bs!540091 () Bool)

(assert (= bs!540091 d!871783))

(declare-fun m!3444177 () Bool)

(assert (=> bs!540091 m!3444177))

(assert (=> b!3185726 d!871783))

(declare-fun d!871785 () Bool)

(assert (=> d!871785 (= (nullable!3386 (regex!5136 lt!1071491)) (nullableFct!958 (regex!5136 lt!1071491)))))

(declare-fun bs!540092 () Bool)

(assert (= bs!540092 d!871785))

(declare-fun m!3444179 () Bool)

(assert (=> bs!540092 m!3444179))

(assert (=> b!3185793 d!871785))

(declare-fun d!871787 () Bool)

(assert (=> d!871787 (= (isEmpty!19949 lt!1071752) (not ((_ is Some!7003) lt!1071752)))))

(assert (=> d!871561 d!871787))

(assert (=> d!871561 d!871489))

(declare-fun d!871789 () Bool)

(assert (=> d!871789 true))

(declare-fun order!18257 () Int)

(declare-fun lambda!116557 () Int)

(declare-fun dynLambda!14461 (Int Int) Int)

(assert (=> d!871789 (< (dynLambda!14448 order!18239 (toValue!7196 (transformation!5136 (h!41231 rules!2135)))) (dynLambda!14461 order!18257 lambda!116557))))

(declare-fun Forall2!852 (Int) Bool)

(assert (=> d!871789 (= (equivClasses!2038 (toChars!7055 (transformation!5136 (h!41231 rules!2135))) (toValue!7196 (transformation!5136 (h!41231 rules!2135)))) (Forall2!852 lambda!116557))))

(declare-fun bs!540094 () Bool)

(assert (= bs!540094 d!871789))

(declare-fun m!3444195 () Bool)

(assert (=> bs!540094 m!3444195))

(assert (=> b!3185871 d!871789))

(declare-fun d!871795 () Bool)

(declare-fun lt!1072048 () Int)

(assert (=> d!871795 (>= lt!1072048 0)))

(declare-fun e!1985668 () Int)

(assert (=> d!871795 (= lt!1072048 e!1985668)))

(declare-fun c!535168 () Bool)

(assert (=> d!871795 (= c!535168 ((_ is Nil!35809) (t!235526 lt!1071493)))))

(assert (=> d!871795 (= (size!27015 (t!235526 lt!1071493)) lt!1072048)))

(declare-fun b!3186563 () Bool)

(assert (=> b!3186563 (= e!1985668 0)))

(declare-fun b!3186564 () Bool)

(assert (=> b!3186564 (= e!1985668 (+ 1 (size!27015 (t!235526 (t!235526 lt!1071493)))))))

(assert (= (and d!871795 c!535168) b!3186563))

(assert (= (and d!871795 (not c!535168)) b!3186564))

(declare-fun m!3444197 () Bool)

(assert (=> b!3186564 m!3444197))

(assert (=> b!3186119 d!871795))

(declare-fun bm!231200 () Bool)

(declare-fun call!231205 () List!35933)

(declare-fun c!535169 () Bool)

(declare-fun call!231206 () List!35933)

(declare-fun call!231207 () List!35933)

(assert (=> bm!231200 (= call!231206 (++!8566 (ite c!535169 call!231205 call!231207) (ite c!535169 call!231207 call!231205)))))

(declare-fun b!3186565 () Bool)

(declare-fun e!1985672 () List!35933)

(declare-fun e!1985671 () List!35933)

(assert (=> b!3186565 (= e!1985672 e!1985671)))

(assert (=> b!3186565 (= c!535169 ((_ is Union!9895) (ite c!534965 (regOne!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (regTwo!20302 (regex!5136 (rule!7558 (h!41230 tokens!494)))))))))

(declare-fun d!871797 () Bool)

(declare-fun c!535171 () Bool)

(assert (=> d!871797 (= c!535171 (or ((_ is EmptyExpr!9895) (ite c!534965 (regOne!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (regTwo!20302 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) ((_ is EmptyLang!9895) (ite c!534965 (regOne!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (regTwo!20302 (regex!5136 (rule!7558 (h!41230 tokens!494))))))))))

(declare-fun e!1985670 () List!35933)

(assert (=> d!871797 (= (usedCharacters!480 (ite c!534965 (regOne!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (regTwo!20302 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) e!1985670)))

(declare-fun b!3186566 () Bool)

(assert (=> b!3186566 (= e!1985671 call!231206)))

(declare-fun b!3186567 () Bool)

(assert (=> b!3186567 (= e!1985671 call!231206)))

(declare-fun b!3186568 () Bool)

(declare-fun e!1985669 () List!35933)

(assert (=> b!3186568 (= e!1985669 (Cons!35809 (c!534900 (ite c!534965 (regOne!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (regTwo!20302 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) Nil!35809))))

(declare-fun call!231208 () List!35933)

(declare-fun bm!231201 () Bool)

(declare-fun c!535172 () Bool)

(assert (=> bm!231201 (= call!231208 (usedCharacters!480 (ite c!535172 (reg!10224 (ite c!534965 (regOne!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (regTwo!20302 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) (ite c!535169 (regTwo!20303 (ite c!534965 (regOne!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (regTwo!20302 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) (regOne!20302 (ite c!534965 (regOne!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (regTwo!20302 (regex!5136 (rule!7558 (h!41230 tokens!494))))))))))))

(declare-fun bm!231202 () Bool)

(assert (=> bm!231202 (= call!231207 call!231208)))

(declare-fun b!3186569 () Bool)

(assert (=> b!3186569 (= e!1985670 Nil!35809)))

(declare-fun b!3186570 () Bool)

(assert (=> b!3186570 (= e!1985670 e!1985669)))

(declare-fun c!535170 () Bool)

(assert (=> b!3186570 (= c!535170 ((_ is ElementMatch!9895) (ite c!534965 (regOne!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (regTwo!20302 (regex!5136 (rule!7558 (h!41230 tokens!494)))))))))

(declare-fun b!3186571 () Bool)

(assert (=> b!3186571 (= c!535172 ((_ is Star!9895) (ite c!534965 (regOne!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (regTwo!20302 (regex!5136 (rule!7558 (h!41230 tokens!494)))))))))

(assert (=> b!3186571 (= e!1985669 e!1985672)))

(declare-fun b!3186572 () Bool)

(assert (=> b!3186572 (= e!1985672 call!231208)))

(declare-fun bm!231203 () Bool)

(assert (=> bm!231203 (= call!231205 (usedCharacters!480 (ite c!535169 (regOne!20303 (ite c!534965 (regOne!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (regTwo!20302 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) (regTwo!20302 (ite c!534965 (regOne!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (regTwo!20302 (regex!5136 (rule!7558 (h!41230 tokens!494)))))))))))

(assert (= (and d!871797 c!535171) b!3186569))

(assert (= (and d!871797 (not c!535171)) b!3186570))

(assert (= (and b!3186570 c!535170) b!3186568))

(assert (= (and b!3186570 (not c!535170)) b!3186571))

(assert (= (and b!3186571 c!535172) b!3186572))

(assert (= (and b!3186571 (not c!535172)) b!3186565))

(assert (= (and b!3186565 c!535169) b!3186566))

(assert (= (and b!3186565 (not c!535169)) b!3186567))

(assert (= (or b!3186566 b!3186567) bm!231202))

(assert (= (or b!3186566 b!3186567) bm!231203))

(assert (= (or b!3186566 b!3186567) bm!231200))

(assert (= (or b!3186572 bm!231202) bm!231201))

(declare-fun m!3444199 () Bool)

(assert (=> bm!231200 m!3444199))

(declare-fun m!3444201 () Bool)

(assert (=> bm!231201 m!3444201))

(declare-fun m!3444203 () Bool)

(assert (=> bm!231203 m!3444203))

(assert (=> bm!231103 d!871797))

(declare-fun d!871799 () Bool)

(assert (=> d!871799 (= (list!12713 lt!1071703) (list!12717 (c!534901 lt!1071703)))))

(declare-fun bs!540095 () Bool)

(assert (= bs!540095 d!871799))

(declare-fun m!3444205 () Bool)

(assert (=> bs!540095 m!3444205))

(assert (=> d!871519 d!871799))

(declare-fun d!871801 () Bool)

(assert (=> d!871801 (= (list!12715 (singletonSeq!2232 separatorToken!241)) (list!12720 (c!534902 (singletonSeq!2232 separatorToken!241))))))

(declare-fun bs!540096 () Bool)

(assert (= bs!540096 d!871801))

(declare-fun m!3444207 () Bool)

(assert (=> bs!540096 m!3444207))

(assert (=> d!871513 d!871801))

(declare-fun d!871803 () Bool)

(assert (=> d!871803 (= (list!12715 (_1!20717 (lex!2065 thiss!18206 rules!2135 (print!1792 thiss!18206 (singletonSeq!2232 separatorToken!241))))) (list!12720 (c!534902 (_1!20717 (lex!2065 thiss!18206 rules!2135 (print!1792 thiss!18206 (singletonSeq!2232 separatorToken!241)))))))))

(declare-fun bs!540097 () Bool)

(assert (= bs!540097 d!871803))

(declare-fun m!3444209 () Bool)

(assert (=> bs!540097 m!3444209))

(assert (=> d!871513 d!871803))

(declare-fun d!871805 () Bool)

(declare-fun e!1985673 () Bool)

(assert (=> d!871805 e!1985673))

(declare-fun res!1295586 () Bool)

(assert (=> d!871805 (=> (not res!1295586) (not e!1985673))))

(declare-fun lt!1072049 () BalanceConc!20910)

(assert (=> d!871805 (= res!1295586 (= (list!12715 lt!1072049) (Cons!35810 separatorToken!241 Nil!35810)))))

(assert (=> d!871805 (= lt!1072049 (singleton!978 separatorToken!241))))

(assert (=> d!871805 (= (singletonSeq!2232 separatorToken!241) lt!1072049)))

(declare-fun b!3186573 () Bool)

(assert (=> b!3186573 (= e!1985673 (isBalanced!3189 (c!534902 lt!1072049)))))

(assert (= (and d!871805 res!1295586) b!3186573))

(declare-fun m!3444211 () Bool)

(assert (=> d!871805 m!3444211))

(declare-fun m!3444213 () Bool)

(assert (=> d!871805 m!3444213))

(declare-fun m!3444215 () Bool)

(assert (=> b!3186573 m!3444215))

(assert (=> d!871513 d!871805))

(declare-fun d!871807 () Bool)

(declare-fun lt!1072050 () BalanceConc!20908)

(assert (=> d!871807 (= (list!12713 lt!1072050) (printList!1279 thiss!18206 (list!12715 (singletonSeq!2232 separatorToken!241))))))

(assert (=> d!871807 (= lt!1072050 (printTailRec!1224 thiss!18206 (singletonSeq!2232 separatorToken!241) 0 (BalanceConc!20909 Empty!10647)))))

(assert (=> d!871807 (= (print!1792 thiss!18206 (singletonSeq!2232 separatorToken!241)) lt!1072050)))

(declare-fun bs!540098 () Bool)

(assert (= bs!540098 d!871807))

(declare-fun m!3444217 () Bool)

(assert (=> bs!540098 m!3444217))

(assert (=> bs!540098 m!3443427))

(assert (=> bs!540098 m!3443431))

(assert (=> bs!540098 m!3443431))

(declare-fun m!3444219 () Bool)

(assert (=> bs!540098 m!3444219))

(assert (=> bs!540098 m!3443427))

(declare-fun m!3444221 () Bool)

(assert (=> bs!540098 m!3444221))

(assert (=> d!871513 d!871807))

(assert (=> d!871513 d!871447))

(declare-fun d!871809 () Bool)

(declare-fun lt!1072053 () Int)

(assert (=> d!871809 (= lt!1072053 (size!27022 (list!12715 (_1!20717 lt!1071701))))))

(declare-fun size!27024 (Conc!10648) Int)

(assert (=> d!871809 (= lt!1072053 (size!27024 (c!534902 (_1!20717 lt!1071701))))))

(assert (=> d!871809 (= (size!27018 (_1!20717 lt!1071701)) lt!1072053)))

(declare-fun bs!540099 () Bool)

(assert (= bs!540099 d!871809))

(declare-fun m!3444223 () Bool)

(assert (=> bs!540099 m!3444223))

(assert (=> bs!540099 m!3444223))

(declare-fun m!3444225 () Bool)

(assert (=> bs!540099 m!3444225))

(declare-fun m!3444227 () Bool)

(assert (=> bs!540099 m!3444227))

(assert (=> d!871513 d!871809))

(declare-fun e!1985680 () Bool)

(declare-fun b!3186586 () Bool)

(declare-fun lt!1072054 () tuple2!35166)

(assert (=> b!3186586 (= e!1985680 (= (list!12713 (_2!20717 lt!1072054)) (_2!20721 (lexList!1279 thiss!18206 rules!2135 (list!12713 (print!1792 thiss!18206 (singletonSeq!2232 separatorToken!241)))))))))

(declare-fun b!3186587 () Bool)

(declare-fun e!1985678 () Bool)

(assert (=> b!3186587 (= e!1985678 (= (_2!20717 lt!1072054) (print!1792 thiss!18206 (singletonSeq!2232 separatorToken!241))))))

(declare-fun b!3186588 () Bool)

(declare-fun res!1295599 () Bool)

(assert (=> b!3186588 (=> (not res!1295599) (not e!1985680))))

(assert (=> b!3186588 (= res!1295599 (= (list!12715 (_1!20717 lt!1072054)) (_1!20721 (lexList!1279 thiss!18206 rules!2135 (list!12713 (print!1792 thiss!18206 (singletonSeq!2232 separatorToken!241)))))))))

(declare-fun d!871811 () Bool)

(assert (=> d!871811 e!1985680))

(declare-fun res!1295601 () Bool)

(assert (=> d!871811 (=> (not res!1295601) (not e!1985680))))

(assert (=> d!871811 (= res!1295601 e!1985678)))

(declare-fun c!535173 () Bool)

(assert (=> d!871811 (= c!535173 (> (size!27018 (_1!20717 lt!1072054)) 0))))

(assert (=> d!871811 (= lt!1072054 (lexTailRecV2!917 thiss!18206 rules!2135 (print!1792 thiss!18206 (singletonSeq!2232 separatorToken!241)) (BalanceConc!20909 Empty!10647) (print!1792 thiss!18206 (singletonSeq!2232 separatorToken!241)) (BalanceConc!20911 Empty!10648)))))

(assert (=> d!871811 (= (lex!2065 thiss!18206 rules!2135 (print!1792 thiss!18206 (singletonSeq!2232 separatorToken!241))) lt!1072054)))

(declare-fun b!3186589 () Bool)

(declare-fun e!1985679 () Bool)

(assert (=> b!3186589 (= e!1985679 (not (isEmpty!19937 (_1!20717 lt!1072054))))))

(declare-fun b!3186590 () Bool)

(assert (=> b!3186590 (= e!1985678 e!1985679)))

(declare-fun res!1295600 () Bool)

(assert (=> b!3186590 (= res!1295600 (< (size!27019 (_2!20717 lt!1072054)) (size!27019 (print!1792 thiss!18206 (singletonSeq!2232 separatorToken!241)))))))

(assert (=> b!3186590 (=> (not res!1295600) (not e!1985679))))

(assert (= (and d!871811 c!535173) b!3186590))

(assert (= (and d!871811 (not c!535173)) b!3186587))

(assert (= (and b!3186590 res!1295600) b!3186589))

(assert (= (and d!871811 res!1295601) b!3186588))

(assert (= (and b!3186588 res!1295599) b!3186586))

(declare-fun m!3444229 () Bool)

(assert (=> b!3186588 m!3444229))

(assert (=> b!3186588 m!3443429))

(declare-fun m!3444231 () Bool)

(assert (=> b!3186588 m!3444231))

(assert (=> b!3186588 m!3444231))

(declare-fun m!3444233 () Bool)

(assert (=> b!3186588 m!3444233))

(declare-fun m!3444235 () Bool)

(assert (=> d!871811 m!3444235))

(assert (=> d!871811 m!3443429))

(assert (=> d!871811 m!3443429))

(declare-fun m!3444237 () Bool)

(assert (=> d!871811 m!3444237))

(declare-fun m!3444239 () Bool)

(assert (=> b!3186586 m!3444239))

(assert (=> b!3186586 m!3443429))

(assert (=> b!3186586 m!3444231))

(assert (=> b!3186586 m!3444231))

(assert (=> b!3186586 m!3444233))

(declare-fun m!3444241 () Bool)

(assert (=> b!3186590 m!3444241))

(assert (=> b!3186590 m!3443429))

(declare-fun m!3444243 () Bool)

(assert (=> b!3186590 m!3444243))

(declare-fun m!3444245 () Bool)

(assert (=> b!3186589 m!3444245))

(assert (=> d!871513 d!871811))

(declare-fun d!871813 () Bool)

(declare-fun lt!1072055 () Int)

(assert (=> d!871813 (>= lt!1072055 0)))

(declare-fun e!1985683 () Int)

(assert (=> d!871813 (= lt!1072055 e!1985683)))

(declare-fun c!535174 () Bool)

(assert (=> d!871813 (= c!535174 ((_ is Nil!35809) (originalCharacters!5850 separatorToken!241)))))

(assert (=> d!871813 (= (size!27015 (originalCharacters!5850 separatorToken!241)) lt!1072055)))

(declare-fun b!3186597 () Bool)

(assert (=> b!3186597 (= e!1985683 0)))

(declare-fun b!3186598 () Bool)

(assert (=> b!3186598 (= e!1985683 (+ 1 (size!27015 (t!235526 (originalCharacters!5850 separatorToken!241)))))))

(assert (= (and d!871813 c!535174) b!3186597))

(assert (= (and d!871813 (not c!535174)) b!3186598))

(declare-fun m!3444253 () Bool)

(assert (=> b!3186598 m!3444253))

(assert (=> b!3185824 d!871813))

(declare-fun d!871815 () Bool)

(declare-fun lt!1072056 () Int)

(assert (=> d!871815 (>= lt!1072056 0)))

(declare-fun e!1985684 () Int)

(assert (=> d!871815 (= lt!1072056 e!1985684)))

(declare-fun c!535175 () Bool)

(assert (=> d!871815 (= c!535175 ((_ is Nil!35809) (originalCharacters!5850 (h!41230 tokens!494))))))

(assert (=> d!871815 (= (size!27015 (originalCharacters!5850 (h!41230 tokens!494))) lt!1072056)))

(declare-fun b!3186599 () Bool)

(assert (=> b!3186599 (= e!1985684 0)))

(declare-fun b!3186600 () Bool)

(assert (=> b!3186600 (= e!1985684 (+ 1 (size!27015 (t!235526 (originalCharacters!5850 (h!41230 tokens!494))))))))

(assert (= (and d!871815 c!535175) b!3186599))

(assert (= (and d!871815 (not c!535175)) b!3186600))

(declare-fun m!3444261 () Bool)

(assert (=> b!3186600 m!3444261))

(assert (=> b!3185826 d!871815))

(assert (=> d!871423 d!871425))

(assert (=> d!871423 d!871421))

(declare-fun d!871819 () Bool)

(assert (=> d!871819 (not (contains!6351 (usedCharacters!480 (regex!5136 (rule!7558 (h!41230 tokens!494)))) lt!1071495))))

(assert (=> d!871819 true))

(declare-fun _$73!163 () Unit!50220)

(assert (=> d!871819 (= (choose!18591 thiss!18206 rules!2135 rules!2135 (rule!7558 (h!41230 tokens!494)) (rule!7558 separatorToken!241) lt!1071495) _$73!163)))

(declare-fun bs!540100 () Bool)

(assert (= bs!540100 d!871819))

(assert (=> bs!540100 m!3442653))

(assert (=> bs!540100 m!3442653))

(assert (=> bs!540100 m!3442655))

(assert (=> d!871423 d!871819))

(assert (=> d!871423 d!871489))

(declare-fun bs!540101 () Bool)

(declare-fun d!871821 () Bool)

(assert (= bs!540101 (and d!871821 d!871757)))

(declare-fun lambda!116560 () Int)

(assert (=> bs!540101 (= lambda!116560 lambda!116554)))

(assert (=> d!871821 true))

(assert (=> d!871821 (< (dynLambda!14450 order!18243 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) (dynLambda!14460 order!18255 lambda!116560))))

(assert (=> d!871821 true))

(assert (=> d!871821 (< (dynLambda!14448 order!18239 (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) (dynLambda!14460 order!18255 lambda!116560))))

(declare-fun Forall!1255 (Int) Bool)

(assert (=> d!871821 (= (semiInverseModEq!2139 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) (Forall!1255 lambda!116560))))

(declare-fun bs!540102 () Bool)

(assert (= bs!540102 d!871821))

(declare-fun m!3444303 () Bool)

(assert (=> bs!540102 m!3444303))

(assert (=> d!871455 d!871821))

(declare-fun d!871825 () Bool)

(assert (=> d!871825 (= (get!11399 lt!1071621) (v!35480 lt!1071621))))

(assert (=> b!3185674 d!871825))

(declare-fun d!871827 () Bool)

(assert (=> d!871827 (= (apply!8064 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621)))) (seqFromList!3351 (originalCharacters!5850 (_1!20718 (get!11399 lt!1071621))))) (dynLambda!14457 (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621))))) (seqFromList!3351 (originalCharacters!5850 (_1!20718 (get!11399 lt!1071621))))))))

(declare-fun b_lambda!86899 () Bool)

(assert (=> (not b_lambda!86899) (not d!871827)))

(declare-fun t!235672 () Bool)

(declare-fun tb!155575 () Bool)

(assert (=> (and b!3186168 (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621)))))) t!235672) tb!155575))

(declare-fun result!197732 () Bool)

(assert (=> tb!155575 (= result!197732 (inv!21 (dynLambda!14457 (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621))))) (seqFromList!3351 (originalCharacters!5850 (_1!20718 (get!11399 lt!1071621)))))))))

(declare-fun m!3444305 () Bool)

(assert (=> tb!155575 m!3444305))

(assert (=> d!871827 t!235672))

(declare-fun b_and!210909 () Bool)

(assert (= b_and!210907 (and (=> t!235672 result!197732) b_and!210909)))

(declare-fun tb!155577 () Bool)

(declare-fun t!235674 () Bool)

(assert (=> (and b!3185353 (= (toValue!7196 (transformation!5136 (h!41231 rules!2135))) (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621)))))) t!235674) tb!155577))

(declare-fun result!197734 () Bool)

(assert (= result!197734 result!197732))

(assert (=> d!871827 t!235674))

(declare-fun b_and!210911 () Bool)

(assert (= b_and!210905 (and (=> t!235674 result!197734) b_and!210911)))

(declare-fun t!235676 () Bool)

(declare-fun tb!155579 () Bool)

(assert (=> (and b!3186184 (= (toValue!7196 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621)))))) t!235676) tb!155579))

(declare-fun result!197736 () Bool)

(assert (= result!197736 result!197732))

(assert (=> d!871827 t!235676))

(declare-fun b_and!210913 () Bool)

(assert (= b_and!210901 (and (=> t!235676 result!197736) b_and!210913)))

(declare-fun tb!155581 () Bool)

(declare-fun t!235678 () Bool)

(assert (=> (and b!3185354 (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621)))))) t!235678) tb!155581))

(declare-fun result!197738 () Bool)

(assert (= result!197738 result!197732))

(assert (=> d!871827 t!235678))

(declare-fun b_and!210915 () Bool)

(assert (= b_and!210903 (and (=> t!235678 result!197738) b_and!210915)))

(declare-fun tb!155583 () Bool)

(declare-fun t!235680 () Bool)

(assert (=> (and b!3185352 (= (toValue!7196 (transformation!5136 (rule!7558 separatorToken!241))) (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621)))))) t!235680) tb!155583))

(declare-fun result!197740 () Bool)

(assert (= result!197740 result!197732))

(assert (=> d!871827 t!235680))

(declare-fun b_and!210917 () Bool)

(assert (= b_and!210899 (and (=> t!235680 result!197740) b_and!210917)))

(assert (=> d!871827 m!3443099))

(declare-fun m!3444307 () Bool)

(assert (=> d!871827 m!3444307))

(assert (=> b!3185674 d!871827))

(declare-fun d!871829 () Bool)

(assert (=> d!871829 (= (seqFromList!3351 (originalCharacters!5850 (_1!20718 (get!11399 lt!1071621)))) (fromListB!1510 (originalCharacters!5850 (_1!20718 (get!11399 lt!1071621)))))))

(declare-fun bs!540103 () Bool)

(assert (= bs!540103 d!871829))

(declare-fun m!3444309 () Bool)

(assert (=> bs!540103 m!3444309))

(assert (=> b!3185674 d!871829))

(declare-fun d!871831 () Bool)

(assert (=> d!871831 (= (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 separatorToken!241)))) (v!35481 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 separatorToken!241)))))))

(assert (=> b!3186059 d!871831))

(assert (=> b!3186059 d!871563))

(declare-fun b!3186622 () Bool)

(declare-fun e!1985698 () Bool)

(declare-fun e!1985700 () Bool)

(assert (=> b!3186622 (= e!1985698 e!1985700)))

(declare-fun res!1295616 () Bool)

(assert (=> b!3186622 (=> (not res!1295616) (not e!1985700))))

(declare-fun lt!1072064 () Bool)

(assert (=> b!3186622 (= res!1295616 (not lt!1072064))))

(declare-fun b!3186623 () Bool)

(declare-fun e!1985697 () Bool)

(assert (=> b!3186623 (= e!1985697 (not (= (head!6967 (list!12713 (charsOf!3158 separatorToken!241))) (c!534900 (regex!5136 (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 separatorToken!241)))))))))))

(declare-fun b!3186624 () Bool)

(declare-fun res!1295618 () Bool)

(assert (=> b!3186624 (=> res!1295618 e!1985697)))

(assert (=> b!3186624 (= res!1295618 (not (isEmpty!19939 (tail!5184 (list!12713 (charsOf!3158 separatorToken!241))))))))

(declare-fun d!871833 () Bool)

(declare-fun e!1985694 () Bool)

(assert (=> d!871833 e!1985694))

(declare-fun c!535183 () Bool)

(assert (=> d!871833 (= c!535183 ((_ is EmptyExpr!9895) (regex!5136 (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 separatorToken!241)))))))))

(declare-fun e!1985699 () Bool)

(assert (=> d!871833 (= lt!1072064 e!1985699)))

(declare-fun c!535182 () Bool)

(assert (=> d!871833 (= c!535182 (isEmpty!19939 (list!12713 (charsOf!3158 separatorToken!241))))))

(assert (=> d!871833 (validRegex!4538 (regex!5136 (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 separatorToken!241))))))))

(assert (=> d!871833 (= (matchR!4553 (regex!5136 (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 separatorToken!241))))) (list!12713 (charsOf!3158 separatorToken!241))) lt!1072064)))

(declare-fun bm!231204 () Bool)

(declare-fun call!231209 () Bool)

(assert (=> bm!231204 (= call!231209 (isEmpty!19939 (list!12713 (charsOf!3158 separatorToken!241))))))

(declare-fun b!3186625 () Bool)

(declare-fun res!1295615 () Bool)

(declare-fun e!1985695 () Bool)

(assert (=> b!3186625 (=> (not res!1295615) (not e!1985695))))

(assert (=> b!3186625 (= res!1295615 (not call!231209))))

(declare-fun b!3186626 () Bool)

(assert (=> b!3186626 (= e!1985699 (matchR!4553 (derivativeStep!2939 (regex!5136 (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 separatorToken!241))))) (head!6967 (list!12713 (charsOf!3158 separatorToken!241)))) (tail!5184 (list!12713 (charsOf!3158 separatorToken!241)))))))

(declare-fun b!3186627 () Bool)

(declare-fun res!1295620 () Bool)

(assert (=> b!3186627 (=> res!1295620 e!1985698)))

(assert (=> b!3186627 (= res!1295620 (not ((_ is ElementMatch!9895) (regex!5136 (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 separatorToken!241))))))))))

(declare-fun e!1985696 () Bool)

(assert (=> b!3186627 (= e!1985696 e!1985698)))

(declare-fun b!3186628 () Bool)

(assert (=> b!3186628 (= e!1985699 (nullable!3386 (regex!5136 (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 separatorToken!241)))))))))

(declare-fun b!3186629 () Bool)

(assert (=> b!3186629 (= e!1985700 e!1985697)))

(declare-fun res!1295617 () Bool)

(assert (=> b!3186629 (=> res!1295617 e!1985697)))

(assert (=> b!3186629 (= res!1295617 call!231209)))

(declare-fun b!3186630 () Bool)

(assert (=> b!3186630 (= e!1985695 (= (head!6967 (list!12713 (charsOf!3158 separatorToken!241))) (c!534900 (regex!5136 (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 separatorToken!241))))))))))

(declare-fun b!3186631 () Bool)

(assert (=> b!3186631 (= e!1985694 e!1985696)))

(declare-fun c!535184 () Bool)

(assert (=> b!3186631 (= c!535184 ((_ is EmptyLang!9895) (regex!5136 (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 separatorToken!241)))))))))

(declare-fun b!3186632 () Bool)

(assert (=> b!3186632 (= e!1985696 (not lt!1072064))))

(declare-fun b!3186633 () Bool)

(declare-fun res!1295619 () Bool)

(assert (=> b!3186633 (=> res!1295619 e!1985698)))

(assert (=> b!3186633 (= res!1295619 e!1985695)))

(declare-fun res!1295621 () Bool)

(assert (=> b!3186633 (=> (not res!1295621) (not e!1985695))))

(assert (=> b!3186633 (= res!1295621 lt!1072064)))

(declare-fun b!3186634 () Bool)

(assert (=> b!3186634 (= e!1985694 (= lt!1072064 call!231209))))

(declare-fun b!3186635 () Bool)

(declare-fun res!1295622 () Bool)

(assert (=> b!3186635 (=> (not res!1295622) (not e!1985695))))

(assert (=> b!3186635 (= res!1295622 (isEmpty!19939 (tail!5184 (list!12713 (charsOf!3158 separatorToken!241)))))))

(assert (= (and d!871833 c!535182) b!3186628))

(assert (= (and d!871833 (not c!535182)) b!3186626))

(assert (= (and d!871833 c!535183) b!3186634))

(assert (= (and d!871833 (not c!535183)) b!3186631))

(assert (= (and b!3186631 c!535184) b!3186632))

(assert (= (and b!3186631 (not c!535184)) b!3186627))

(assert (= (and b!3186627 (not res!1295620)) b!3186633))

(assert (= (and b!3186633 res!1295621) b!3186625))

(assert (= (and b!3186625 res!1295615) b!3186635))

(assert (= (and b!3186635 res!1295622) b!3186630))

(assert (= (and b!3186633 (not res!1295619)) b!3186622))

(assert (= (and b!3186622 res!1295616) b!3186629))

(assert (= (and b!3186629 (not res!1295617)) b!3186624))

(assert (= (and b!3186624 (not res!1295618)) b!3186623))

(assert (= (or b!3186634 b!3186625 b!3186629) bm!231204))

(assert (=> b!3186626 m!3442679))

(declare-fun m!3444311 () Bool)

(assert (=> b!3186626 m!3444311))

(assert (=> b!3186626 m!3444311))

(declare-fun m!3444313 () Bool)

(assert (=> b!3186626 m!3444313))

(assert (=> b!3186626 m!3442679))

(declare-fun m!3444315 () Bool)

(assert (=> b!3186626 m!3444315))

(assert (=> b!3186626 m!3444313))

(assert (=> b!3186626 m!3444315))

(declare-fun m!3444317 () Bool)

(assert (=> b!3186626 m!3444317))

(assert (=> b!3186624 m!3442679))

(assert (=> b!3186624 m!3444315))

(assert (=> b!3186624 m!3444315))

(declare-fun m!3444319 () Bool)

(assert (=> b!3186624 m!3444319))

(assert (=> b!3186635 m!3442679))

(assert (=> b!3186635 m!3444315))

(assert (=> b!3186635 m!3444315))

(assert (=> b!3186635 m!3444319))

(assert (=> d!871833 m!3442679))

(declare-fun m!3444321 () Bool)

(assert (=> d!871833 m!3444321))

(declare-fun m!3444323 () Bool)

(assert (=> d!871833 m!3444323))

(assert (=> b!3186630 m!3442679))

(assert (=> b!3186630 m!3444311))

(assert (=> bm!231204 m!3442679))

(assert (=> bm!231204 m!3444321))

(declare-fun m!3444325 () Bool)

(assert (=> b!3186628 m!3444325))

(assert (=> b!3186623 m!3442679))

(assert (=> b!3186623 m!3444311))

(assert (=> b!3186059 d!871833))

(assert (=> b!3186059 d!871439))

(assert (=> b!3186059 d!871441))

(assert (=> d!871501 d!871711))

(declare-fun b!3186677 () Bool)

(declare-fun res!1295638 () Bool)

(declare-fun e!1985730 () Bool)

(assert (=> b!3186677 (=> (not res!1295638) (not e!1985730))))

(declare-fun call!231220 () Bool)

(assert (=> b!3186677 (= res!1295638 call!231220)))

(declare-fun e!1985733 () Bool)

(assert (=> b!3186677 (= e!1985733 e!1985730)))

(declare-fun c!535199 () Bool)

(declare-fun c!535198 () Bool)

(declare-fun call!231219 () Bool)

(declare-fun bm!231214 () Bool)

(assert (=> bm!231214 (= call!231219 (validRegex!4538 (ite c!535198 (reg!10224 (regex!5136 (rule!7558 separatorToken!241))) (ite c!535199 (regTwo!20303 (regex!5136 (rule!7558 separatorToken!241))) (regTwo!20302 (regex!5136 (rule!7558 separatorToken!241)))))))))

(declare-fun b!3186678 () Bool)

(declare-fun e!1985734 () Bool)

(assert (=> b!3186678 (= e!1985734 e!1985733)))

(assert (=> b!3186678 (= c!535199 ((_ is Union!9895) (regex!5136 (rule!7558 separatorToken!241))))))

(declare-fun b!3186679 () Bool)

(declare-fun res!1295640 () Bool)

(declare-fun e!1985732 () Bool)

(assert (=> b!3186679 (=> res!1295640 e!1985732)))

(assert (=> b!3186679 (= res!1295640 (not ((_ is Concat!15261) (regex!5136 (rule!7558 separatorToken!241)))))))

(assert (=> b!3186679 (= e!1985733 e!1985732)))

(declare-fun d!871835 () Bool)

(declare-fun res!1295641 () Bool)

(declare-fun e!1985731 () Bool)

(assert (=> d!871835 (=> res!1295641 e!1985731)))

(assert (=> d!871835 (= res!1295641 ((_ is ElementMatch!9895) (regex!5136 (rule!7558 separatorToken!241))))))

(assert (=> d!871835 (= (validRegex!4538 (regex!5136 (rule!7558 separatorToken!241))) e!1985731)))

(declare-fun b!3186680 () Bool)

(declare-fun call!231221 () Bool)

(assert (=> b!3186680 (= e!1985730 call!231221)))

(declare-fun b!3186681 () Bool)

(declare-fun e!1985735 () Bool)

(assert (=> b!3186681 (= e!1985735 call!231221)))

(declare-fun bm!231215 () Bool)

(assert (=> bm!231215 (= call!231220 (validRegex!4538 (ite c!535199 (regOne!20303 (regex!5136 (rule!7558 separatorToken!241))) (regOne!20302 (regex!5136 (rule!7558 separatorToken!241))))))))

(declare-fun b!3186682 () Bool)

(declare-fun e!1985729 () Bool)

(assert (=> b!3186682 (= e!1985729 call!231219)))

(declare-fun b!3186683 () Bool)

(assert (=> b!3186683 (= e!1985734 e!1985729)))

(declare-fun res!1295639 () Bool)

(assert (=> b!3186683 (= res!1295639 (not (nullable!3386 (reg!10224 (regex!5136 (rule!7558 separatorToken!241))))))))

(assert (=> b!3186683 (=> (not res!1295639) (not e!1985729))))

(declare-fun b!3186684 () Bool)

(assert (=> b!3186684 (= e!1985732 e!1985735)))

(declare-fun res!1295637 () Bool)

(assert (=> b!3186684 (=> (not res!1295637) (not e!1985735))))

(assert (=> b!3186684 (= res!1295637 call!231220)))

(declare-fun b!3186685 () Bool)

(assert (=> b!3186685 (= e!1985731 e!1985734)))

(assert (=> b!3186685 (= c!535198 ((_ is Star!9895) (regex!5136 (rule!7558 separatorToken!241))))))

(declare-fun bm!231216 () Bool)

(assert (=> bm!231216 (= call!231221 call!231219)))

(assert (= (and d!871835 (not res!1295641)) b!3186685))

(assert (= (and b!3186685 c!535198) b!3186683))

(assert (= (and b!3186685 (not c!535198)) b!3186678))

(assert (= (and b!3186683 res!1295639) b!3186682))

(assert (= (and b!3186678 c!535199) b!3186677))

(assert (= (and b!3186678 (not c!535199)) b!3186679))

(assert (= (and b!3186677 res!1295638) b!3186680))

(assert (= (and b!3186679 (not res!1295640)) b!3186684))

(assert (= (and b!3186684 res!1295637) b!3186681))

(assert (= (or b!3186680 b!3186681) bm!231216))

(assert (= (or b!3186677 b!3186684) bm!231215))

(assert (= (or b!3186682 bm!231216) bm!231214))

(declare-fun m!3444377 () Bool)

(assert (=> bm!231214 m!3444377))

(declare-fun m!3444379 () Bool)

(assert (=> bm!231215 m!3444379))

(declare-fun m!3444381 () Bool)

(assert (=> b!3186683 m!3444381))

(assert (=> d!871501 d!871835))

(declare-fun bs!540104 () Bool)

(declare-fun d!871847 () Bool)

(assert (= bs!540104 (and d!871847 d!871757)))

(declare-fun lambda!116561 () Int)

(assert (=> bs!540104 (= (and (= (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) (= (toValue!7196 (transformation!5136 (rule!7558 separatorToken!241))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (= lambda!116561 lambda!116554))))

(declare-fun bs!540105 () Bool)

(assert (= bs!540105 (and d!871847 d!871821)))

(assert (=> bs!540105 (= (and (= (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) (= (toValue!7196 (transformation!5136 (rule!7558 separatorToken!241))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (= lambda!116561 lambda!116560))))

(assert (=> d!871847 true))

(assert (=> d!871847 (< (dynLambda!14450 order!18243 (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241)))) (dynLambda!14460 order!18255 lambda!116561))))

(assert (=> d!871847 true))

(assert (=> d!871847 (< (dynLambda!14448 order!18239 (toValue!7196 (transformation!5136 (rule!7558 separatorToken!241)))) (dynLambda!14460 order!18255 lambda!116561))))

(assert (=> d!871847 (= (semiInverseModEq!2139 (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (toValue!7196 (transformation!5136 (rule!7558 separatorToken!241)))) (Forall!1255 lambda!116561))))

(declare-fun bs!540106 () Bool)

(assert (= bs!540106 d!871847))

(declare-fun m!3444389 () Bool)

(assert (=> bs!540106 m!3444389))

(assert (=> d!871445 d!871847))

(declare-fun d!871851 () Bool)

(assert (=> d!871851 (= (isEmpty!19939 (tail!5184 lt!1071493)) ((_ is Nil!35809) (tail!5184 lt!1071493)))))

(assert (=> b!3185769 d!871851))

(declare-fun d!871853 () Bool)

(assert (=> d!871853 (= (tail!5184 lt!1071493) (t!235526 lt!1071493))))

(assert (=> b!3185769 d!871853))

(declare-fun d!871855 () Bool)

(declare-fun lt!1072075 () Bool)

(assert (=> d!871855 (= lt!1072075 (select (content!4854 rules!2135) (rule!7558 (_1!20718 (get!11399 lt!1071621)))))))

(declare-fun e!1985741 () Bool)

(assert (=> d!871855 (= lt!1072075 e!1985741)))

(declare-fun res!1295643 () Bool)

(assert (=> d!871855 (=> (not res!1295643) (not e!1985741))))

(assert (=> d!871855 (= res!1295643 ((_ is Cons!35811) rules!2135))))

(assert (=> d!871855 (= (contains!6354 rules!2135 (rule!7558 (_1!20718 (get!11399 lt!1071621)))) lt!1072075)))

(declare-fun b!3186695 () Bool)

(declare-fun e!1985742 () Bool)

(assert (=> b!3186695 (= e!1985741 e!1985742)))

(declare-fun res!1295644 () Bool)

(assert (=> b!3186695 (=> res!1295644 e!1985742)))

(assert (=> b!3186695 (= res!1295644 (= (h!41231 rules!2135) (rule!7558 (_1!20718 (get!11399 lt!1071621)))))))

(declare-fun b!3186696 () Bool)

(assert (=> b!3186696 (= e!1985742 (contains!6354 (t!235528 rules!2135) (rule!7558 (_1!20718 (get!11399 lt!1071621)))))))

(assert (= (and d!871855 res!1295643) b!3186695))

(assert (= (and b!3186695 (not res!1295644)) b!3186696))

(assert (=> d!871855 m!3444171))

(declare-fun m!3444391 () Bool)

(assert (=> d!871855 m!3444391))

(declare-fun m!3444393 () Bool)

(assert (=> b!3186696 m!3444393))

(assert (=> b!3185681 d!871855))

(assert (=> b!3185681 d!871825))

(declare-fun d!871857 () Bool)

(assert (=> d!871857 (= (inv!48664 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (value!166836 separatorToken!241))) (isBalanced!3191 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (value!166836 separatorToken!241)))))))

(declare-fun bs!540107 () Bool)

(assert (= bs!540107 d!871857))

(declare-fun m!3444395 () Bool)

(assert (=> bs!540107 m!3444395))

(assert (=> tb!155473 d!871857))

(declare-fun d!871859 () Bool)

(assert (=> d!871859 (= (get!11399 lt!1071771) (v!35480 lt!1071771))))

(assert (=> b!3186107 d!871859))

(declare-fun d!871861 () Bool)

(assert (=> d!871861 (= (apply!8064 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071771)))) (seqFromList!3351 (originalCharacters!5850 (_1!20718 (get!11399 lt!1071771))))) (dynLambda!14457 (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071771))))) (seqFromList!3351 (originalCharacters!5850 (_1!20718 (get!11399 lt!1071771))))))))

(declare-fun b_lambda!86903 () Bool)

(assert (=> (not b_lambda!86903) (not d!871861)))

(declare-fun t!235692 () Bool)

(declare-fun tb!155595 () Bool)

(assert (=> (and b!3185353 (= (toValue!7196 (transformation!5136 (h!41231 rules!2135))) (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071771)))))) t!235692) tb!155595))

(declare-fun result!197752 () Bool)

(assert (=> tb!155595 (= result!197752 (inv!21 (dynLambda!14457 (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071771))))) (seqFromList!3351 (originalCharacters!5850 (_1!20718 (get!11399 lt!1071771)))))))))

(declare-fun m!3444397 () Bool)

(assert (=> tb!155595 m!3444397))

(assert (=> d!871861 t!235692))

(declare-fun b_and!210929 () Bool)

(assert (= b_and!210911 (and (=> t!235692 result!197752) b_and!210929)))

(declare-fun tb!155597 () Bool)

(declare-fun t!235694 () Bool)

(assert (=> (and b!3185352 (= (toValue!7196 (transformation!5136 (rule!7558 separatorToken!241))) (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071771)))))) t!235694) tb!155597))

(declare-fun result!197754 () Bool)

(assert (= result!197754 result!197752))

(assert (=> d!871861 t!235694))

(declare-fun b_and!210931 () Bool)

(assert (= b_and!210917 (and (=> t!235694 result!197754) b_and!210931)))

(declare-fun t!235696 () Bool)

(declare-fun tb!155599 () Bool)

(assert (=> (and b!3186184 (= (toValue!7196 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071771)))))) t!235696) tb!155599))

(declare-fun result!197756 () Bool)

(assert (= result!197756 result!197752))

(assert (=> d!871861 t!235696))

(declare-fun b_and!210933 () Bool)

(assert (= b_and!210913 (and (=> t!235696 result!197756) b_and!210933)))

(declare-fun t!235698 () Bool)

(declare-fun tb!155601 () Bool)

(assert (=> (and b!3185354 (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071771)))))) t!235698) tb!155601))

(declare-fun result!197758 () Bool)

(assert (= result!197758 result!197752))

(assert (=> d!871861 t!235698))

(declare-fun b_and!210935 () Bool)

(assert (= b_and!210915 (and (=> t!235698 result!197758) b_and!210935)))

(declare-fun t!235700 () Bool)

(declare-fun tb!155603 () Bool)

(assert (=> (and b!3186168 (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071771)))))) t!235700) tb!155603))

(declare-fun result!197760 () Bool)

(assert (= result!197760 result!197752))

(assert (=> d!871861 t!235700))

(declare-fun b_and!210937 () Bool)

(assert (= b_and!210909 (and (=> t!235700 result!197760) b_and!210937)))

(assert (=> d!871861 m!3443635))

(declare-fun m!3444399 () Bool)

(assert (=> d!871861 m!3444399))

(assert (=> b!3186107 d!871861))

(declare-fun d!871863 () Bool)

(assert (=> d!871863 (= (seqFromList!3351 (originalCharacters!5850 (_1!20718 (get!11399 lt!1071771)))) (fromListB!1510 (originalCharacters!5850 (_1!20718 (get!11399 lt!1071771)))))))

(declare-fun bs!540108 () Bool)

(assert (= bs!540108 d!871863))

(declare-fun m!3444401 () Bool)

(assert (=> bs!540108 m!3444401))

(assert (=> b!3186107 d!871863))

(declare-fun b!3186699 () Bool)

(declare-fun res!1295645 () Bool)

(declare-fun e!1985745 () Bool)

(assert (=> b!3186699 (=> (not res!1295645) (not e!1985745))))

(declare-fun lt!1072076 () List!35933)

(assert (=> b!3186699 (= res!1295645 (= (size!27015 lt!1072076) (+ (size!27015 lt!1071493) (size!27015 lt!1071737))))))

(declare-fun b!3186698 () Bool)

(declare-fun e!1985744 () List!35933)

(assert (=> b!3186698 (= e!1985744 (Cons!35809 (h!41229 lt!1071493) (++!8566 (t!235526 lt!1071493) lt!1071737)))))

(declare-fun b!3186697 () Bool)

(assert (=> b!3186697 (= e!1985744 lt!1071737)))

(declare-fun b!3186700 () Bool)

(assert (=> b!3186700 (= e!1985745 (or (not (= lt!1071737 Nil!35809)) (= lt!1072076 lt!1071493)))))

(declare-fun d!871865 () Bool)

(assert (=> d!871865 e!1985745))

(declare-fun res!1295646 () Bool)

(assert (=> d!871865 (=> (not res!1295646) (not e!1985745))))

(assert (=> d!871865 (= res!1295646 (= (content!4850 lt!1072076) ((_ map or) (content!4850 lt!1071493) (content!4850 lt!1071737))))))

(assert (=> d!871865 (= lt!1072076 e!1985744)))

(declare-fun c!535206 () Bool)

(assert (=> d!871865 (= c!535206 ((_ is Nil!35809) lt!1071493))))

(assert (=> d!871865 (= (++!8566 lt!1071493 lt!1071737) lt!1072076)))

(assert (= (and d!871865 c!535206) b!3186697))

(assert (= (and d!871865 (not c!535206)) b!3186698))

(assert (= (and d!871865 res!1295646) b!3186699))

(assert (= (and b!3186699 res!1295645) b!3186700))

(declare-fun m!3444403 () Bool)

(assert (=> b!3186699 m!3444403))

(assert (=> b!3186699 m!3442715))

(declare-fun m!3444405 () Bool)

(assert (=> b!3186699 m!3444405))

(declare-fun m!3444407 () Bool)

(assert (=> b!3186698 m!3444407))

(declare-fun m!3444409 () Bool)

(assert (=> d!871865 m!3444409))

(assert (=> d!871865 m!3443155))

(declare-fun m!3444411 () Bool)

(assert (=> d!871865 m!3444411))

(assert (=> d!871555 d!871865))

(assert (=> d!871555 d!871575))

(assert (=> b!3186130 d!871519))

(declare-fun b!3186701 () Bool)

(declare-fun e!1985750 () Bool)

(declare-fun e!1985752 () Bool)

(assert (=> b!3186701 (= e!1985750 e!1985752)))

(declare-fun res!1295648 () Bool)

(assert (=> b!3186701 (=> (not res!1295648) (not e!1985752))))

(declare-fun lt!1072077 () Bool)

(assert (=> b!3186701 (= res!1295648 (not lt!1072077))))

(declare-fun e!1985749 () Bool)

(declare-fun b!3186702 () Bool)

(assert (=> b!3186702 (= e!1985749 (not (= (head!6967 (list!12713 (charsOf!3158 (h!41230 tokens!494)))) (c!534900 (regex!5136 (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 (h!41230 tokens!494))))))))))))

(declare-fun b!3186703 () Bool)

(declare-fun res!1295650 () Bool)

(assert (=> b!3186703 (=> res!1295650 e!1985749)))

(assert (=> b!3186703 (= res!1295650 (not (isEmpty!19939 (tail!5184 (list!12713 (charsOf!3158 (h!41230 tokens!494)))))))))

(declare-fun d!871867 () Bool)

(declare-fun e!1985746 () Bool)

(assert (=> d!871867 e!1985746))

(declare-fun c!535209 () Bool)

(assert (=> d!871867 (= c!535209 ((_ is EmptyExpr!9895) (regex!5136 (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 (h!41230 tokens!494))))))))))

(declare-fun e!1985751 () Bool)

(assert (=> d!871867 (= lt!1072077 e!1985751)))

(declare-fun c!535208 () Bool)

(assert (=> d!871867 (= c!535208 (isEmpty!19939 (list!12713 (charsOf!3158 (h!41230 tokens!494)))))))

(assert (=> d!871867 (validRegex!4538 (regex!5136 (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 (h!41230 tokens!494)))))))))

(assert (=> d!871867 (= (matchR!4553 (regex!5136 (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 (h!41230 tokens!494)))))) (list!12713 (charsOf!3158 (h!41230 tokens!494)))) lt!1072077)))

(declare-fun bm!231218 () Bool)

(declare-fun call!231223 () Bool)

(assert (=> bm!231218 (= call!231223 (isEmpty!19939 (list!12713 (charsOf!3158 (h!41230 tokens!494)))))))

(declare-fun b!3186704 () Bool)

(declare-fun res!1295647 () Bool)

(declare-fun e!1985747 () Bool)

(assert (=> b!3186704 (=> (not res!1295647) (not e!1985747))))

(assert (=> b!3186704 (= res!1295647 (not call!231223))))

(declare-fun b!3186705 () Bool)

(assert (=> b!3186705 (= e!1985751 (matchR!4553 (derivativeStep!2939 (regex!5136 (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 (h!41230 tokens!494)))))) (head!6967 (list!12713 (charsOf!3158 (h!41230 tokens!494))))) (tail!5184 (list!12713 (charsOf!3158 (h!41230 tokens!494))))))))

(declare-fun b!3186706 () Bool)

(declare-fun res!1295652 () Bool)

(assert (=> b!3186706 (=> res!1295652 e!1985750)))

(assert (=> b!3186706 (= res!1295652 (not ((_ is ElementMatch!9895) (regex!5136 (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 (h!41230 tokens!494)))))))))))

(declare-fun e!1985748 () Bool)

(assert (=> b!3186706 (= e!1985748 e!1985750)))

(declare-fun b!3186707 () Bool)

(assert (=> b!3186707 (= e!1985751 (nullable!3386 (regex!5136 (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 (h!41230 tokens!494))))))))))

(declare-fun b!3186708 () Bool)

(assert (=> b!3186708 (= e!1985752 e!1985749)))

(declare-fun res!1295649 () Bool)

(assert (=> b!3186708 (=> res!1295649 e!1985749)))

(assert (=> b!3186708 (= res!1295649 call!231223)))

(declare-fun b!3186709 () Bool)

(assert (=> b!3186709 (= e!1985747 (= (head!6967 (list!12713 (charsOf!3158 (h!41230 tokens!494)))) (c!534900 (regex!5136 (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 (h!41230 tokens!494)))))))))))

(declare-fun b!3186710 () Bool)

(assert (=> b!3186710 (= e!1985746 e!1985748)))

(declare-fun c!535210 () Bool)

(assert (=> b!3186710 (= c!535210 ((_ is EmptyLang!9895) (regex!5136 (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 (h!41230 tokens!494))))))))))

(declare-fun b!3186711 () Bool)

(assert (=> b!3186711 (= e!1985748 (not lt!1072077))))

(declare-fun b!3186712 () Bool)

(declare-fun res!1295651 () Bool)

(assert (=> b!3186712 (=> res!1295651 e!1985750)))

(assert (=> b!3186712 (= res!1295651 e!1985747)))

(declare-fun res!1295653 () Bool)

(assert (=> b!3186712 (=> (not res!1295653) (not e!1985747))))

(assert (=> b!3186712 (= res!1295653 lt!1072077)))

(declare-fun b!3186713 () Bool)

(assert (=> b!3186713 (= e!1985746 (= lt!1072077 call!231223))))

(declare-fun b!3186714 () Bool)

(declare-fun res!1295654 () Bool)

(assert (=> b!3186714 (=> (not res!1295654) (not e!1985747))))

(assert (=> b!3186714 (= res!1295654 (isEmpty!19939 (tail!5184 (list!12713 (charsOf!3158 (h!41230 tokens!494))))))))

(assert (= (and d!871867 c!535208) b!3186707))

(assert (= (and d!871867 (not c!535208)) b!3186705))

(assert (= (and d!871867 c!535209) b!3186713))

(assert (= (and d!871867 (not c!535209)) b!3186710))

(assert (= (and b!3186710 c!535210) b!3186711))

(assert (= (and b!3186710 (not c!535210)) b!3186706))

(assert (= (and b!3186706 (not res!1295652)) b!3186712))

(assert (= (and b!3186712 res!1295653) b!3186704))

(assert (= (and b!3186704 res!1295647) b!3186714))

(assert (= (and b!3186714 res!1295654) b!3186709))

(assert (= (and b!3186712 (not res!1295651)) b!3186701))

(assert (= (and b!3186701 res!1295648) b!3186708))

(assert (= (and b!3186708 (not res!1295649)) b!3186703))

(assert (= (and b!3186703 (not res!1295650)) b!3186702))

(assert (= (or b!3186713 b!3186704 b!3186708) bm!231218))

(assert (=> b!3186705 m!3442691))

(declare-fun m!3444413 () Bool)

(assert (=> b!3186705 m!3444413))

(assert (=> b!3186705 m!3444413))

(declare-fun m!3444415 () Bool)

(assert (=> b!3186705 m!3444415))

(assert (=> b!3186705 m!3442691))

(declare-fun m!3444417 () Bool)

(assert (=> b!3186705 m!3444417))

(assert (=> b!3186705 m!3444415))

(assert (=> b!3186705 m!3444417))

(declare-fun m!3444419 () Bool)

(assert (=> b!3186705 m!3444419))

(assert (=> b!3186703 m!3442691))

(assert (=> b!3186703 m!3444417))

(assert (=> b!3186703 m!3444417))

(declare-fun m!3444421 () Bool)

(assert (=> b!3186703 m!3444421))

(assert (=> b!3186714 m!3442691))

(assert (=> b!3186714 m!3444417))

(assert (=> b!3186714 m!3444417))

(assert (=> b!3186714 m!3444421))

(assert (=> d!871867 m!3442691))

(declare-fun m!3444423 () Bool)

(assert (=> d!871867 m!3444423))

(declare-fun m!3444425 () Bool)

(assert (=> d!871867 m!3444425))

(assert (=> b!3186709 m!3442691))

(assert (=> b!3186709 m!3444413))

(assert (=> bm!231218 m!3442691))

(assert (=> bm!231218 m!3444423))

(declare-fun m!3444427 () Bool)

(assert (=> b!3186707 m!3444427))

(assert (=> b!3186702 m!3442691))

(assert (=> b!3186702 m!3444413))

(assert (=> b!3186130 d!871867))

(assert (=> b!3186130 d!871561))

(declare-fun d!871869 () Bool)

(assert (=> d!871869 (= (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 (h!41230 tokens!494))))) (v!35481 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 (h!41230 tokens!494))))))))

(assert (=> b!3186130 d!871869))

(assert (=> b!3186130 d!871517))

(declare-fun d!871871 () Bool)

(declare-fun c!535213 () Bool)

(assert (=> d!871871 (= c!535213 ((_ is Node!10647) (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (value!166836 separatorToken!241)))))))

(declare-fun e!1985760 () Bool)

(assert (=> d!871871 (= (inv!48663 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (value!166836 separatorToken!241)))) e!1985760)))

(declare-fun b!3186733 () Bool)

(declare-fun inv!48667 (Conc!10647) Bool)

(assert (=> b!3186733 (= e!1985760 (inv!48667 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (value!166836 separatorToken!241)))))))

(declare-fun b!3186734 () Bool)

(declare-fun e!1985761 () Bool)

(assert (=> b!3186734 (= e!1985760 e!1985761)))

(declare-fun res!1295669 () Bool)

(assert (=> b!3186734 (= res!1295669 (not ((_ is Leaf!16826) (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (value!166836 separatorToken!241))))))))

(assert (=> b!3186734 (=> res!1295669 e!1985761)))

(declare-fun b!3186735 () Bool)

(declare-fun inv!48668 (Conc!10647) Bool)

(assert (=> b!3186735 (= e!1985761 (inv!48668 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (value!166836 separatorToken!241)))))))

(assert (= (and d!871871 c!535213) b!3186733))

(assert (= (and d!871871 (not c!535213)) b!3186734))

(assert (= (and b!3186734 (not res!1295669)) b!3186735))

(declare-fun m!3444433 () Bool)

(assert (=> b!3186733 m!3444433))

(declare-fun m!3444437 () Bool)

(assert (=> b!3186735 m!3444437))

(assert (=> b!3185708 d!871871))

(declare-fun d!871873 () Bool)

(declare-fun lt!1072081 () Int)

(assert (=> d!871873 (>= lt!1072081 0)))

(declare-fun e!1985762 () Int)

(assert (=> d!871873 (= lt!1072081 e!1985762)))

(declare-fun c!535214 () Bool)

(assert (=> d!871873 (= c!535214 ((_ is Nil!35809) (_2!20718 (get!11399 lt!1071621))))))

(assert (=> d!871873 (= (size!27015 (_2!20718 (get!11399 lt!1071621))) lt!1072081)))

(declare-fun b!3186736 () Bool)

(assert (=> b!3186736 (= e!1985762 0)))

(declare-fun b!3186737 () Bool)

(assert (=> b!3186737 (= e!1985762 (+ 1 (size!27015 (t!235526 (_2!20718 (get!11399 lt!1071621))))))))

(assert (= (and d!871873 c!535214) b!3186736))

(assert (= (and d!871873 (not c!535214)) b!3186737))

(declare-fun m!3444449 () Bool)

(assert (=> b!3186737 m!3444449))

(assert (=> b!3185677 d!871873))

(assert (=> b!3185677 d!871825))

(declare-fun d!871875 () Bool)

(declare-fun lt!1072082 () Int)

(assert (=> d!871875 (>= lt!1072082 0)))

(declare-fun e!1985763 () Int)

(assert (=> d!871875 (= lt!1072082 e!1985763)))

(declare-fun c!535215 () Bool)

(assert (=> d!871875 (= c!535215 ((_ is Nil!35809) lt!1071470))))

(assert (=> d!871875 (= (size!27015 lt!1071470) lt!1072082)))

(declare-fun b!3186738 () Bool)

(assert (=> b!3186738 (= e!1985763 0)))

(declare-fun b!3186739 () Bool)

(assert (=> b!3186739 (= e!1985763 (+ 1 (size!27015 (t!235526 lt!1071470))))))

(assert (= (and d!871875 c!535215) b!3186738))

(assert (= (and d!871875 (not c!535215)) b!3186739))

(declare-fun m!3444455 () Bool)

(assert (=> b!3186739 m!3444455))

(assert (=> b!3185677 d!871875))

(declare-fun d!871877 () Bool)

(declare-fun lt!1072083 () Int)

(assert (=> d!871877 (= lt!1072083 (size!27022 (list!12715 (_1!20717 lt!1071699))))))

(assert (=> d!871877 (= lt!1072083 (size!27024 (c!534902 (_1!20717 lt!1071699))))))

(assert (=> d!871877 (= (size!27018 (_1!20717 lt!1071699)) lt!1072083)))

(declare-fun bs!540109 () Bool)

(assert (= bs!540109 d!871877))

(assert (=> bs!540109 m!3443399))

(assert (=> bs!540109 m!3443399))

(declare-fun m!3444457 () Bool)

(assert (=> bs!540109 m!3444457))

(declare-fun m!3444459 () Bool)

(assert (=> bs!540109 m!3444459))

(assert (=> d!871505 d!871877))

(declare-fun lt!1072225 () tuple2!35166)

(declare-datatypes ((tuple2!35178 0))(
  ( (tuple2!35179 (_1!20723 Token!9638) (_2!20723 BalanceConc!20908)) )
))
(declare-datatypes ((Option!7005 0))(
  ( (None!7004) (Some!7004 (v!35496 tuple2!35178)) )
))
(declare-fun lt!1072199 () Option!7005)

(declare-fun b!3186907 () Bool)

(declare-fun lexRec!674 (LexerInterface!4725 List!35935 BalanceConc!20908) tuple2!35166)

(assert (=> b!3186907 (= lt!1072225 (lexRec!674 thiss!18206 rules!2135 (_2!20723 (v!35496 lt!1072199))))))

(declare-fun e!1985870 () tuple2!35166)

(declare-fun prepend!1162 (BalanceConc!20910 Token!9638) BalanceConc!20910)

(assert (=> b!3186907 (= e!1985870 (tuple2!35167 (prepend!1162 (_1!20717 lt!1072225) (_1!20723 (v!35496 lt!1072199))) (_2!20717 lt!1072225)))))

(declare-fun d!871881 () Bool)

(declare-fun e!1985871 () Bool)

(assert (=> d!871881 e!1985871))

(declare-fun res!1295735 () Bool)

(assert (=> d!871881 (=> (not res!1295735) (not e!1985871))))

(declare-fun lt!1072227 () tuple2!35166)

(assert (=> d!871881 (= res!1295735 (= (list!12715 (_1!20717 lt!1072227)) (list!12715 (_1!20717 (lexRec!674 thiss!18206 rules!2135 lt!1071478)))))))

(declare-fun e!1985872 () tuple2!35166)

(assert (=> d!871881 (= lt!1072227 e!1985872)))

(declare-fun c!535265 () Bool)

(declare-fun lt!1072196 () Option!7005)

(assert (=> d!871881 (= c!535265 ((_ is Some!7004) lt!1072196))))

(declare-fun maxPrefixZipperSequenceV2!461 (LexerInterface!4725 List!35935 BalanceConc!20908 BalanceConc!20908) Option!7005)

(assert (=> d!871881 (= lt!1072196 (maxPrefixZipperSequenceV2!461 thiss!18206 rules!2135 lt!1071478 lt!1071478))))

(declare-fun lt!1072224 () Unit!50220)

(declare-fun lt!1072218 () Unit!50220)

(assert (=> d!871881 (= lt!1072224 lt!1072218)))

(declare-fun lt!1072197 () List!35933)

(declare-fun lt!1072208 () List!35933)

(declare-fun isSuffix!836 (List!35933 List!35933) Bool)

(assert (=> d!871881 (isSuffix!836 lt!1072197 (++!8566 lt!1072208 lt!1072197))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!521 (List!35933 List!35933) Unit!50220)

(assert (=> d!871881 (= lt!1072218 (lemmaConcatTwoListThenFSndIsSuffix!521 lt!1072208 lt!1072197))))

(assert (=> d!871881 (= lt!1072197 (list!12713 lt!1071478))))

(assert (=> d!871881 (= lt!1072208 (list!12713 (BalanceConc!20909 Empty!10647)))))

(assert (=> d!871881 (= (lexTailRecV2!917 thiss!18206 rules!2135 lt!1071478 (BalanceConc!20909 Empty!10647) lt!1071478 (BalanceConc!20911 Empty!10648)) lt!1072227)))

(declare-fun b!3186908 () Bool)

(assert (=> b!3186908 (= e!1985870 (tuple2!35167 (BalanceConc!20911 Empty!10648) lt!1071478))))

(declare-fun lt!1072203 () Option!7005)

(declare-fun lt!1072198 () tuple2!35166)

(declare-fun b!3186909 () Bool)

(assert (=> b!3186909 (= lt!1072198 (lexRec!674 thiss!18206 rules!2135 (_2!20723 (v!35496 lt!1072203))))))

(declare-fun e!1985873 () tuple2!35166)

(assert (=> b!3186909 (= e!1985873 (tuple2!35167 (prepend!1162 (_1!20717 lt!1072198) (_1!20723 (v!35496 lt!1072203))) (_2!20717 lt!1072198)))))

(declare-fun b!3186910 () Bool)

(assert (=> b!3186910 (= e!1985871 (= (list!12713 (_2!20717 lt!1072227)) (list!12713 (_2!20717 (lexRec!674 thiss!18206 rules!2135 lt!1071478)))))))

(declare-fun b!3186911 () Bool)

(declare-fun lt!1072214 () BalanceConc!20908)

(assert (=> b!3186911 (= e!1985873 (tuple2!35167 (BalanceConc!20911 Empty!10648) lt!1072214))))

(declare-fun b!3186912 () Bool)

(assert (=> b!3186912 (= e!1985872 (tuple2!35167 (BalanceConc!20911 Empty!10648) lt!1071478))))

(declare-fun lt!1072220 () BalanceConc!20908)

(declare-fun b!3186913 () Bool)

(declare-fun append!854 (BalanceConc!20910 Token!9638) BalanceConc!20910)

(assert (=> b!3186913 (= e!1985872 (lexTailRecV2!917 thiss!18206 rules!2135 lt!1071478 lt!1072220 (_2!20723 (v!35496 lt!1072196)) (append!854 (BalanceConc!20911 Empty!10648) (_1!20723 (v!35496 lt!1072196)))))))

(declare-fun lt!1072200 () tuple2!35166)

(assert (=> b!3186913 (= lt!1072200 (lexRec!674 thiss!18206 rules!2135 (_2!20723 (v!35496 lt!1072196))))))

(declare-fun lt!1072216 () List!35933)

(assert (=> b!3186913 (= lt!1072216 (list!12713 (BalanceConc!20909 Empty!10647)))))

(declare-fun lt!1072213 () List!35933)

(assert (=> b!3186913 (= lt!1072213 (list!12713 (charsOf!3158 (_1!20723 (v!35496 lt!1072196)))))))

(declare-fun lt!1072204 () List!35933)

(assert (=> b!3186913 (= lt!1072204 (list!12713 (_2!20723 (v!35496 lt!1072196))))))

(declare-fun lt!1072202 () Unit!50220)

(declare-fun lemmaConcatAssociativity!1688 (List!35933 List!35933 List!35933) Unit!50220)

(assert (=> b!3186913 (= lt!1072202 (lemmaConcatAssociativity!1688 lt!1072216 lt!1072213 lt!1072204))))

(assert (=> b!3186913 (= (++!8566 (++!8566 lt!1072216 lt!1072213) lt!1072204) (++!8566 lt!1072216 (++!8566 lt!1072213 lt!1072204)))))

(declare-fun lt!1072222 () Unit!50220)

(assert (=> b!3186913 (= lt!1072222 lt!1072202)))

(declare-fun maxPrefixZipperSequence!1067 (LexerInterface!4725 List!35935 BalanceConc!20908) Option!7005)

(assert (=> b!3186913 (= lt!1072199 (maxPrefixZipperSequence!1067 thiss!18206 rules!2135 lt!1071478))))

(declare-fun c!535266 () Bool)

(assert (=> b!3186913 (= c!535266 ((_ is Some!7004) lt!1072199))))

(assert (=> b!3186913 (= (lexRec!674 thiss!18206 rules!2135 lt!1071478) e!1985870)))

(declare-fun lt!1072217 () Unit!50220)

(declare-fun Unit!50230 () Unit!50220)

(assert (=> b!3186913 (= lt!1072217 Unit!50230)))

(declare-fun lt!1072207 () List!35934)

(assert (=> b!3186913 (= lt!1072207 (list!12715 (BalanceConc!20911 Empty!10648)))))

(declare-fun lt!1072219 () List!35934)

(assert (=> b!3186913 (= lt!1072219 (Cons!35810 (_1!20723 (v!35496 lt!1072196)) Nil!35810))))

(declare-fun lt!1072226 () List!35934)

(assert (=> b!3186913 (= lt!1072226 (list!12715 (_1!20717 lt!1072200)))))

(declare-fun lt!1072221 () Unit!50220)

(declare-fun lemmaConcatAssociativity!1689 (List!35934 List!35934 List!35934) Unit!50220)

(assert (=> b!3186913 (= lt!1072221 (lemmaConcatAssociativity!1689 lt!1072207 lt!1072219 lt!1072226))))

(declare-fun ++!8571 (List!35934 List!35934) List!35934)

(assert (=> b!3186913 (= (++!8571 (++!8571 lt!1072207 lt!1072219) lt!1072226) (++!8571 lt!1072207 (++!8571 lt!1072219 lt!1072226)))))

(declare-fun lt!1072210 () Unit!50220)

(assert (=> b!3186913 (= lt!1072210 lt!1072221)))

(declare-fun lt!1072209 () List!35933)

(assert (=> b!3186913 (= lt!1072209 (++!8566 (list!12713 (BalanceConc!20909 Empty!10647)) (list!12713 (charsOf!3158 (_1!20723 (v!35496 lt!1072196))))))))

(declare-fun lt!1072211 () List!35933)

(assert (=> b!3186913 (= lt!1072211 (list!12713 (_2!20723 (v!35496 lt!1072196))))))

(declare-fun lt!1072201 () List!35934)

(assert (=> b!3186913 (= lt!1072201 (list!12715 (append!854 (BalanceConc!20911 Empty!10648) (_1!20723 (v!35496 lt!1072196)))))))

(declare-fun lt!1072215 () Unit!50220)

(declare-fun lemmaLexThenLexPrefix!439 (LexerInterface!4725 List!35935 List!35933 List!35933 List!35934 List!35934 List!35933) Unit!50220)

(assert (=> b!3186913 (= lt!1072215 (lemmaLexThenLexPrefix!439 thiss!18206 rules!2135 lt!1072209 lt!1072211 lt!1072201 (list!12715 (_1!20717 lt!1072200)) (list!12713 (_2!20717 lt!1072200))))))

(assert (=> b!3186913 (= (lexList!1279 thiss!18206 rules!2135 lt!1072209) (tuple2!35175 lt!1072201 Nil!35809))))

(declare-fun lt!1072212 () Unit!50220)

(assert (=> b!3186913 (= lt!1072212 lt!1072215)))

(assert (=> b!3186913 (= lt!1072214 (++!8568 (BalanceConc!20909 Empty!10647) (charsOf!3158 (_1!20723 (v!35496 lt!1072196)))))))

(assert (=> b!3186913 (= lt!1072203 (maxPrefixZipperSequence!1067 thiss!18206 rules!2135 lt!1072214))))

(declare-fun c!535267 () Bool)

(assert (=> b!3186913 (= c!535267 ((_ is Some!7004) lt!1072203))))

(assert (=> b!3186913 (= (lexRec!674 thiss!18206 rules!2135 (++!8568 (BalanceConc!20909 Empty!10647) (charsOf!3158 (_1!20723 (v!35496 lt!1072196))))) e!1985873)))

(declare-fun lt!1072223 () Unit!50220)

(declare-fun Unit!50231 () Unit!50220)

(assert (=> b!3186913 (= lt!1072223 Unit!50231)))

(assert (=> b!3186913 (= lt!1072220 (++!8568 (BalanceConc!20909 Empty!10647) (charsOf!3158 (_1!20723 (v!35496 lt!1072196)))))))

(declare-fun lt!1072206 () List!35933)

(assert (=> b!3186913 (= lt!1072206 (list!12713 lt!1072220))))

(declare-fun lt!1072195 () List!35933)

(assert (=> b!3186913 (= lt!1072195 (list!12713 (_2!20723 (v!35496 lt!1072196))))))

(declare-fun lt!1072205 () Unit!50220)

(assert (=> b!3186913 (= lt!1072205 (lemmaConcatTwoListThenFSndIsSuffix!521 lt!1072206 lt!1072195))))

(assert (=> b!3186913 (isSuffix!836 lt!1072195 (++!8566 lt!1072206 lt!1072195))))

(declare-fun lt!1072194 () Unit!50220)

(assert (=> b!3186913 (= lt!1072194 lt!1072205)))

(assert (= (and d!871881 c!535265) b!3186913))

(assert (= (and d!871881 (not c!535265)) b!3186912))

(assert (= (and b!3186913 c!535266) b!3186907))

(assert (= (and b!3186913 (not c!535266)) b!3186908))

(assert (= (and b!3186913 c!535267) b!3186909))

(assert (= (and b!3186913 (not c!535267)) b!3186911))

(assert (= (and d!871881 res!1295735) b!3186910))

(declare-fun m!3444659 () Bool)

(assert (=> b!3186907 m!3444659))

(declare-fun m!3444661 () Bool)

(assert (=> b!3186907 m!3444661))

(declare-fun m!3444663 () Bool)

(assert (=> b!3186909 m!3444663))

(declare-fun m!3444665 () Bool)

(assert (=> b!3186909 m!3444665))

(declare-fun m!3444667 () Bool)

(assert (=> b!3186910 m!3444667))

(declare-fun m!3444669 () Bool)

(assert (=> b!3186910 m!3444669))

(declare-fun m!3444671 () Bool)

(assert (=> b!3186910 m!3444671))

(declare-fun m!3444673 () Bool)

(assert (=> b!3186913 m!3444673))

(declare-fun m!3444675 () Bool)

(assert (=> b!3186913 m!3444675))

(declare-fun m!3444677 () Bool)

(assert (=> b!3186913 m!3444677))

(declare-fun m!3444679 () Bool)

(assert (=> b!3186913 m!3444679))

(declare-fun m!3444681 () Bool)

(assert (=> b!3186913 m!3444681))

(declare-fun m!3444683 () Bool)

(assert (=> b!3186913 m!3444683))

(assert (=> b!3186913 m!3443257))

(declare-fun m!3444685 () Bool)

(assert (=> b!3186913 m!3444685))

(declare-fun m!3444687 () Bool)

(assert (=> b!3186913 m!3444687))

(declare-fun m!3444689 () Bool)

(assert (=> b!3186913 m!3444689))

(declare-fun m!3444691 () Bool)

(assert (=> b!3186913 m!3444691))

(declare-fun m!3444693 () Bool)

(assert (=> b!3186913 m!3444693))

(declare-fun m!3444695 () Bool)

(assert (=> b!3186913 m!3444695))

(declare-fun m!3444697 () Bool)

(assert (=> b!3186913 m!3444697))

(assert (=> b!3186913 m!3444675))

(declare-fun m!3444699 () Bool)

(assert (=> b!3186913 m!3444699))

(declare-fun m!3444701 () Bool)

(assert (=> b!3186913 m!3444701))

(declare-fun m!3444703 () Bool)

(assert (=> b!3186913 m!3444703))

(declare-fun m!3444705 () Bool)

(assert (=> b!3186913 m!3444705))

(assert (=> b!3186913 m!3444677))

(declare-fun m!3444707 () Bool)

(assert (=> b!3186913 m!3444707))

(assert (=> b!3186913 m!3444703))

(declare-fun m!3444709 () Bool)

(assert (=> b!3186913 m!3444709))

(assert (=> b!3186913 m!3444681))

(declare-fun m!3444711 () Bool)

(assert (=> b!3186913 m!3444711))

(declare-fun m!3444713 () Bool)

(assert (=> b!3186913 m!3444713))

(declare-fun m!3444715 () Bool)

(assert (=> b!3186913 m!3444715))

(declare-fun m!3444717 () Bool)

(assert (=> b!3186913 m!3444717))

(assert (=> b!3186913 m!3444713))

(declare-fun m!3444719 () Bool)

(assert (=> b!3186913 m!3444719))

(declare-fun m!3444721 () Bool)

(assert (=> b!3186913 m!3444721))

(assert (=> b!3186913 m!3444669))

(declare-fun m!3444723 () Bool)

(assert (=> b!3186913 m!3444723))

(assert (=> b!3186913 m!3444719))

(assert (=> b!3186913 m!3444719))

(declare-fun m!3444725 () Bool)

(assert (=> b!3186913 m!3444725))

(assert (=> b!3186913 m!3444673))

(assert (=> b!3186913 m!3444685))

(assert (=> b!3186913 m!3443257))

(declare-fun m!3444727 () Bool)

(assert (=> b!3186913 m!3444727))

(declare-fun m!3444729 () Bool)

(assert (=> b!3186913 m!3444729))

(assert (=> b!3186913 m!3444727))

(declare-fun m!3444731 () Bool)

(assert (=> b!3186913 m!3444731))

(assert (=> b!3186913 m!3444673))

(assert (=> b!3186913 m!3444699))

(assert (=> b!3186913 m!3444707))

(declare-fun m!3444733 () Bool)

(assert (=> b!3186913 m!3444733))

(declare-fun m!3444735 () Bool)

(assert (=> d!871881 m!3444735))

(assert (=> d!871881 m!3444669))

(assert (=> d!871881 m!3443403))

(declare-fun m!3444737 () Bool)

(assert (=> d!871881 m!3444737))

(assert (=> d!871881 m!3444735))

(declare-fun m!3444739 () Bool)

(assert (=> d!871881 m!3444739))

(assert (=> d!871881 m!3443257))

(declare-fun m!3444741 () Bool)

(assert (=> d!871881 m!3444741))

(declare-fun m!3444743 () Bool)

(assert (=> d!871881 m!3444743))

(declare-fun m!3444745 () Bool)

(assert (=> d!871881 m!3444745))

(assert (=> d!871505 d!871881))

(declare-fun b!3186914 () Bool)

(declare-fun e!1985878 () Bool)

(declare-fun e!1985880 () Bool)

(assert (=> b!3186914 (= e!1985878 e!1985880)))

(declare-fun res!1295737 () Bool)

(assert (=> b!3186914 (=> (not res!1295737) (not e!1985880))))

(declare-fun lt!1072228 () Bool)

(assert (=> b!3186914 (= res!1295737 (not lt!1072228))))

(declare-fun b!3186915 () Bool)

(declare-fun e!1985877 () Bool)

(assert (=> b!3186915 (= e!1985877 (not (= (head!6967 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071628))))) (c!534900 (regex!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628))))))))))

(declare-fun b!3186916 () Bool)

(declare-fun res!1295739 () Bool)

(assert (=> b!3186916 (=> res!1295739 e!1985877)))

(assert (=> b!3186916 (= res!1295739 (not (isEmpty!19939 (tail!5184 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071628))))))))))

(declare-fun d!871955 () Bool)

(declare-fun e!1985874 () Bool)

(assert (=> d!871955 e!1985874))

(declare-fun c!535269 () Bool)

(assert (=> d!871955 (= c!535269 ((_ is EmptyExpr!9895) (regex!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628))))))))

(declare-fun e!1985879 () Bool)

(assert (=> d!871955 (= lt!1072228 e!1985879)))

(declare-fun c!535268 () Bool)

(assert (=> d!871955 (= c!535268 (isEmpty!19939 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071628))))))))

(assert (=> d!871955 (validRegex!4538 (regex!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628)))))))

(assert (=> d!871955 (= (matchR!4553 (regex!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628)))) (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071628))))) lt!1072228)))

(declare-fun bm!231240 () Bool)

(declare-fun call!231245 () Bool)

(assert (=> bm!231240 (= call!231245 (isEmpty!19939 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071628))))))))

(declare-fun b!3186917 () Bool)

(declare-fun res!1295736 () Bool)

(declare-fun e!1985875 () Bool)

(assert (=> b!3186917 (=> (not res!1295736) (not e!1985875))))

(assert (=> b!3186917 (= res!1295736 (not call!231245))))

(declare-fun b!3186918 () Bool)

(assert (=> b!3186918 (= e!1985879 (matchR!4553 (derivativeStep!2939 (regex!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628)))) (head!6967 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071628)))))) (tail!5184 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071628)))))))))

(declare-fun b!3186919 () Bool)

(declare-fun res!1295741 () Bool)

(assert (=> b!3186919 (=> res!1295741 e!1985878)))

(assert (=> b!3186919 (= res!1295741 (not ((_ is ElementMatch!9895) (regex!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628)))))))))

(declare-fun e!1985876 () Bool)

(assert (=> b!3186919 (= e!1985876 e!1985878)))

(declare-fun b!3186920 () Bool)

(assert (=> b!3186920 (= e!1985879 (nullable!3386 (regex!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628))))))))

(declare-fun b!3186921 () Bool)

(assert (=> b!3186921 (= e!1985880 e!1985877)))

(declare-fun res!1295738 () Bool)

(assert (=> b!3186921 (=> res!1295738 e!1985877)))

(assert (=> b!3186921 (= res!1295738 call!231245)))

(declare-fun b!3186922 () Bool)

(assert (=> b!3186922 (= e!1985875 (= (head!6967 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071628))))) (c!534900 (regex!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628)))))))))

(declare-fun b!3186923 () Bool)

(assert (=> b!3186923 (= e!1985874 e!1985876)))

(declare-fun c!535270 () Bool)

(assert (=> b!3186923 (= c!535270 ((_ is EmptyLang!9895) (regex!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628))))))))

(declare-fun b!3186924 () Bool)

(assert (=> b!3186924 (= e!1985876 (not lt!1072228))))

(declare-fun b!3186925 () Bool)

(declare-fun res!1295740 () Bool)

(assert (=> b!3186925 (=> res!1295740 e!1985878)))

(assert (=> b!3186925 (= res!1295740 e!1985875)))

(declare-fun res!1295742 () Bool)

(assert (=> b!3186925 (=> (not res!1295742) (not e!1985875))))

(assert (=> b!3186925 (= res!1295742 lt!1072228)))

(declare-fun b!3186926 () Bool)

(assert (=> b!3186926 (= e!1985874 (= lt!1072228 call!231245))))

(declare-fun b!3186927 () Bool)

(declare-fun res!1295743 () Bool)

(assert (=> b!3186927 (=> (not res!1295743) (not e!1985875))))

(assert (=> b!3186927 (= res!1295743 (isEmpty!19939 (tail!5184 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071628)))))))))

(assert (= (and d!871955 c!535268) b!3186920))

(assert (= (and d!871955 (not c!535268)) b!3186918))

(assert (= (and d!871955 c!535269) b!3186926))

(assert (= (and d!871955 (not c!535269)) b!3186923))

(assert (= (and b!3186923 c!535270) b!3186924))

(assert (= (and b!3186923 (not c!535270)) b!3186919))

(assert (= (and b!3186919 (not res!1295741)) b!3186925))

(assert (= (and b!3186925 res!1295742) b!3186917))

(assert (= (and b!3186917 res!1295736) b!3186927))

(assert (= (and b!3186927 res!1295743) b!3186922))

(assert (= (and b!3186925 (not res!1295740)) b!3186914))

(assert (= (and b!3186914 res!1295737) b!3186921))

(assert (= (and b!3186921 (not res!1295738)) b!3186916))

(assert (= (and b!3186916 (not res!1295739)) b!3186915))

(assert (= (or b!3186926 b!3186917 b!3186921) bm!231240))

(assert (=> b!3186918 m!3443113))

(declare-fun m!3444747 () Bool)

(assert (=> b!3186918 m!3444747))

(assert (=> b!3186918 m!3444747))

(declare-fun m!3444749 () Bool)

(assert (=> b!3186918 m!3444749))

(assert (=> b!3186918 m!3443113))

(declare-fun m!3444751 () Bool)

(assert (=> b!3186918 m!3444751))

(assert (=> b!3186918 m!3444749))

(assert (=> b!3186918 m!3444751))

(declare-fun m!3444753 () Bool)

(assert (=> b!3186918 m!3444753))

(assert (=> b!3186916 m!3443113))

(assert (=> b!3186916 m!3444751))

(assert (=> b!3186916 m!3444751))

(declare-fun m!3444755 () Bool)

(assert (=> b!3186916 m!3444755))

(assert (=> b!3186927 m!3443113))

(assert (=> b!3186927 m!3444751))

(assert (=> b!3186927 m!3444751))

(assert (=> b!3186927 m!3444755))

(assert (=> d!871955 m!3443113))

(declare-fun m!3444757 () Bool)

(assert (=> d!871955 m!3444757))

(declare-fun m!3444759 () Bool)

(assert (=> d!871955 m!3444759))

(assert (=> b!3186922 m!3443113))

(assert (=> b!3186922 m!3444747))

(assert (=> bm!231240 m!3443113))

(assert (=> bm!231240 m!3444757))

(declare-fun m!3444761 () Bool)

(assert (=> b!3186920 m!3444761))

(assert (=> b!3186915 m!3443113))

(assert (=> b!3186915 m!3444747))

(assert (=> b!3185685 d!871955))

(assert (=> b!3185685 d!871705))

(declare-fun d!871957 () Bool)

(assert (=> d!871957 (= (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071628)))) (list!12717 (c!534901 (charsOf!3158 (_1!20718 (get!11399 lt!1071628))))))))

(declare-fun bs!540123 () Bool)

(assert (= bs!540123 d!871957))

(declare-fun m!3444763 () Bool)

(assert (=> bs!540123 m!3444763))

(assert (=> b!3185685 d!871957))

(declare-fun d!871959 () Bool)

(declare-fun lt!1072229 () BalanceConc!20908)

(assert (=> d!871959 (= (list!12713 lt!1072229) (originalCharacters!5850 (_1!20718 (get!11399 lt!1071628))))))

(assert (=> d!871959 (= lt!1072229 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628))))) (value!166836 (_1!20718 (get!11399 lt!1071628)))))))

(assert (=> d!871959 (= (charsOf!3158 (_1!20718 (get!11399 lt!1071628))) lt!1072229)))

(declare-fun b_lambda!86915 () Bool)

(assert (=> (not b_lambda!86915) (not d!871959)))

(declare-fun t!235722 () Bool)

(declare-fun tb!155625 () Bool)

(assert (=> (and b!3185352 (= (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628)))))) t!235722) tb!155625))

(declare-fun b!3186928 () Bool)

(declare-fun e!1985881 () Bool)

(declare-fun tp!1007577 () Bool)

(assert (=> b!3186928 (= e!1985881 (and (inv!48663 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628))))) (value!166836 (_1!20718 (get!11399 lt!1071628)))))) tp!1007577))))

(declare-fun result!197782 () Bool)

(assert (=> tb!155625 (= result!197782 (and (inv!48664 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628))))) (value!166836 (_1!20718 (get!11399 lt!1071628))))) e!1985881))))

(assert (= tb!155625 b!3186928))

(declare-fun m!3444765 () Bool)

(assert (=> b!3186928 m!3444765))

(declare-fun m!3444767 () Bool)

(assert (=> tb!155625 m!3444767))

(assert (=> d!871959 t!235722))

(declare-fun b_and!210969 () Bool)

(assert (= b_and!210889 (and (=> t!235722 result!197782) b_and!210969)))

(declare-fun tb!155627 () Bool)

(declare-fun t!235724 () Bool)

(assert (=> (and b!3185353 (= (toChars!7055 (transformation!5136 (h!41231 rules!2135))) (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628)))))) t!235724) tb!155627))

(declare-fun result!197784 () Bool)

(assert (= result!197784 result!197782))

(assert (=> d!871959 t!235724))

(declare-fun b_and!210971 () Bool)

(assert (= b_and!210895 (and (=> t!235724 result!197784) b_and!210971)))

(declare-fun t!235726 () Bool)

(declare-fun tb!155629 () Bool)

(assert (=> (and b!3186168 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628)))))) t!235726) tb!155629))

(declare-fun result!197786 () Bool)

(assert (= result!197786 result!197782))

(assert (=> d!871959 t!235726))

(declare-fun b_and!210973 () Bool)

(assert (= b_and!210891 (and (=> t!235726 result!197786) b_and!210973)))

(declare-fun t!235728 () Bool)

(declare-fun tb!155631 () Bool)

(assert (=> (and b!3185354 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628)))))) t!235728) tb!155631))

(declare-fun result!197788 () Bool)

(assert (= result!197788 result!197782))

(assert (=> d!871959 t!235728))

(declare-fun b_and!210975 () Bool)

(assert (= b_and!210897 (and (=> t!235728 result!197788) b_and!210975)))

(declare-fun tb!155633 () Bool)

(declare-fun t!235730 () Bool)

(assert (=> (and b!3186184 (= (toChars!7055 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628)))))) t!235730) tb!155633))

(declare-fun result!197790 () Bool)

(assert (= result!197790 result!197782))

(assert (=> d!871959 t!235730))

(declare-fun b_and!210977 () Bool)

(assert (= b_and!210893 (and (=> t!235730 result!197790) b_and!210977)))

(declare-fun m!3444769 () Bool)

(assert (=> d!871959 m!3444769))

(declare-fun m!3444771 () Bool)

(assert (=> d!871959 m!3444771))

(assert (=> b!3185685 d!871959))

(declare-fun d!871961 () Bool)

(assert (=> d!871961 (= (isEmpty!19939 (tail!5184 lt!1071487)) ((_ is Nil!35809) (tail!5184 lt!1071487)))))

(assert (=> b!3185789 d!871961))

(declare-fun d!871963 () Bool)

(assert (=> d!871963 (= (tail!5184 lt!1071487) (t!235526 lt!1071487))))

(assert (=> b!3185789 d!871963))

(declare-fun d!871965 () Bool)

(declare-fun charsToBigInt!0 (List!35932 Int) Int)

(assert (=> d!871965 (= (inv!15 (value!166836 separatorToken!241)) (= (charsToBigInt!0 (text!38011 (value!166836 separatorToken!241)) 0) (value!166831 (value!166836 separatorToken!241))))))

(declare-fun bs!540124 () Bool)

(assert (= bs!540124 d!871965))

(declare-fun m!3444773 () Bool)

(assert (=> bs!540124 m!3444773))

(assert (=> b!3185728 d!871965))

(declare-fun d!871967 () Bool)

(declare-fun lt!1072230 () Token!9638)

(assert (=> d!871967 (= lt!1072230 (apply!8068 (list!12715 (_1!20717 lt!1071701)) 0))))

(assert (=> d!871967 (= lt!1072230 (apply!8070 (c!534902 (_1!20717 lt!1071701)) 0))))

(declare-fun e!1985882 () Bool)

(assert (=> d!871967 e!1985882))

(declare-fun res!1295744 () Bool)

(assert (=> d!871967 (=> (not res!1295744) (not e!1985882))))

(assert (=> d!871967 (= res!1295744 (<= 0 0))))

(assert (=> d!871967 (= (apply!8067 (_1!20717 lt!1071701) 0) lt!1072230)))

(declare-fun b!3186929 () Bool)

(assert (=> b!3186929 (= e!1985882 (< 0 (size!27018 (_1!20717 lt!1071701))))))

(assert (= (and d!871967 res!1295744) b!3186929))

(assert (=> d!871967 m!3444223))

(assert (=> d!871967 m!3444223))

(declare-fun m!3444775 () Bool)

(assert (=> d!871967 m!3444775))

(declare-fun m!3444777 () Bool)

(assert (=> d!871967 m!3444777))

(assert (=> b!3186929 m!3443425))

(assert (=> b!3185922 d!871967))

(declare-fun bs!540125 () Bool)

(declare-fun d!871969 () Bool)

(assert (= bs!540125 (and d!871969 d!871789)))

(declare-fun lambda!116566 () Int)

(assert (=> bs!540125 (= (= (toValue!7196 (transformation!5136 (rule!7558 separatorToken!241))) (toValue!7196 (transformation!5136 (h!41231 rules!2135)))) (= lambda!116566 lambda!116557))))

(assert (=> d!871969 true))

(assert (=> d!871969 (< (dynLambda!14448 order!18239 (toValue!7196 (transformation!5136 (rule!7558 separatorToken!241)))) (dynLambda!14461 order!18257 lambda!116566))))

(assert (=> d!871969 (= (equivClasses!2038 (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (toValue!7196 (transformation!5136 (rule!7558 separatorToken!241)))) (Forall2!852 lambda!116566))))

(declare-fun bs!540126 () Bool)

(assert (= bs!540126 d!871969))

(declare-fun m!3444779 () Bool)

(assert (=> bs!540126 m!3444779))

(assert (=> b!3185711 d!871969))

(declare-fun d!871971 () Bool)

(assert (=> d!871971 (= (isEmpty!19943 lt!1071628) (not ((_ is Some!7002) lt!1071628)))))

(assert (=> d!871429 d!871971))

(declare-fun b!3186940 () Bool)

(declare-fun e!1985890 () Bool)

(assert (=> b!3186940 (= e!1985890 (isPrefix!2771 (tail!5184 lt!1071473) (tail!5184 lt!1071473)))))

(declare-fun b!3186941 () Bool)

(declare-fun e!1985891 () Bool)

(assert (=> b!3186941 (= e!1985891 (>= (size!27015 lt!1071473) (size!27015 lt!1071473)))))

(declare-fun b!3186939 () Bool)

(declare-fun res!1295756 () Bool)

(assert (=> b!3186939 (=> (not res!1295756) (not e!1985890))))

(assert (=> b!3186939 (= res!1295756 (= (head!6967 lt!1071473) (head!6967 lt!1071473)))))

(declare-fun b!3186938 () Bool)

(declare-fun e!1985889 () Bool)

(assert (=> b!3186938 (= e!1985889 e!1985890)))

(declare-fun res!1295755 () Bool)

(assert (=> b!3186938 (=> (not res!1295755) (not e!1985890))))

(assert (=> b!3186938 (= res!1295755 (not ((_ is Nil!35809) lt!1071473)))))

(declare-fun d!871973 () Bool)

(assert (=> d!871973 e!1985891))

(declare-fun res!1295753 () Bool)

(assert (=> d!871973 (=> res!1295753 e!1985891)))

(declare-fun lt!1072233 () Bool)

(assert (=> d!871973 (= res!1295753 (not lt!1072233))))

(assert (=> d!871973 (= lt!1072233 e!1985889)))

(declare-fun res!1295754 () Bool)

(assert (=> d!871973 (=> res!1295754 e!1985889)))

(assert (=> d!871973 (= res!1295754 ((_ is Nil!35809) lt!1071473))))

(assert (=> d!871973 (= (isPrefix!2771 lt!1071473 lt!1071473) lt!1072233)))

(assert (= (and d!871973 (not res!1295754)) b!3186938))

(assert (= (and b!3186938 res!1295755) b!3186939))

(assert (= (and b!3186939 res!1295756) b!3186940))

(assert (= (and d!871973 (not res!1295753)) b!3186941))

(declare-fun m!3444781 () Bool)

(assert (=> b!3186940 m!3444781))

(assert (=> b!3186940 m!3444781))

(assert (=> b!3186940 m!3444781))

(assert (=> b!3186940 m!3444781))

(declare-fun m!3444783 () Bool)

(assert (=> b!3186940 m!3444783))

(assert (=> b!3186941 m!3443139))

(assert (=> b!3186941 m!3443139))

(declare-fun m!3444785 () Bool)

(assert (=> b!3186939 m!3444785))

(assert (=> b!3186939 m!3444785))

(assert (=> d!871429 d!871973))

(declare-fun d!871975 () Bool)

(assert (=> d!871975 (isPrefix!2771 lt!1071473 lt!1071473)))

(declare-fun lt!1072236 () Unit!50220)

(declare-fun choose!18611 (List!35933 List!35933) Unit!50220)

(assert (=> d!871975 (= lt!1072236 (choose!18611 lt!1071473 lt!1071473))))

(assert (=> d!871975 (= (lemmaIsPrefixRefl!1730 lt!1071473 lt!1071473) lt!1072236)))

(declare-fun bs!540127 () Bool)

(assert (= bs!540127 d!871975))

(assert (=> bs!540127 m!3443125))

(declare-fun m!3444787 () Bool)

(assert (=> bs!540127 m!3444787))

(assert (=> d!871429 d!871975))

(declare-fun d!871977 () Bool)

(assert (=> d!871977 true))

(declare-fun lt!1072239 () Bool)

(declare-fun lambda!116569 () Int)

(declare-fun forall!7263 (List!35935 Int) Bool)

(assert (=> d!871977 (= lt!1072239 (forall!7263 rules!2135 lambda!116569))))

(declare-fun e!1985896 () Bool)

(assert (=> d!871977 (= lt!1072239 e!1985896)))

(declare-fun res!1295762 () Bool)

(assert (=> d!871977 (=> res!1295762 e!1985896)))

(assert (=> d!871977 (= res!1295762 (not ((_ is Cons!35811) rules!2135)))))

(assert (=> d!871977 (= (rulesValidInductive!1760 thiss!18206 rules!2135) lt!1072239)))

(declare-fun b!3186946 () Bool)

(declare-fun e!1985897 () Bool)

(assert (=> b!3186946 (= e!1985896 e!1985897)))

(declare-fun res!1295761 () Bool)

(assert (=> b!3186946 (=> (not res!1295761) (not e!1985897))))

(assert (=> b!3186946 (= res!1295761 (ruleValid!1630 thiss!18206 (h!41231 rules!2135)))))

(declare-fun b!3186947 () Bool)

(assert (=> b!3186947 (= e!1985897 (rulesValidInductive!1760 thiss!18206 (t!235528 rules!2135)))))

(assert (= (and d!871977 (not res!1295762)) b!3186946))

(assert (= (and b!3186946 res!1295761) b!3186947))

(declare-fun m!3444789 () Bool)

(assert (=> d!871977 m!3444789))

(declare-fun m!3444791 () Bool)

(assert (=> b!3186946 m!3444791))

(declare-fun m!3444793 () Bool)

(assert (=> b!3186947 m!3444793))

(assert (=> d!871429 d!871977))

(declare-fun d!871979 () Bool)

(assert (=> d!871979 (= (list!12713 lt!1071650) (list!12717 (c!534901 lt!1071650)))))

(declare-fun bs!540128 () Bool)

(assert (= bs!540128 d!871979))

(declare-fun m!3444795 () Bool)

(assert (=> bs!540128 m!3444795))

(assert (=> d!871475 d!871979))

(declare-fun d!871981 () Bool)

(declare-fun c!535271 () Bool)

(assert (=> d!871981 (= c!535271 ((_ is Cons!35810) (list!12715 lt!1071475)))))

(declare-fun e!1985898 () List!35933)

(assert (=> d!871981 (= (printList!1279 thiss!18206 (list!12715 lt!1071475)) e!1985898)))

(declare-fun b!3186950 () Bool)

(assert (=> b!3186950 (= e!1985898 (++!8566 (list!12713 (charsOf!3158 (h!41230 (list!12715 lt!1071475)))) (printList!1279 thiss!18206 (t!235527 (list!12715 lt!1071475)))))))

(declare-fun b!3186951 () Bool)

(assert (=> b!3186951 (= e!1985898 Nil!35809)))

(assert (= (and d!871981 c!535271) b!3186950))

(assert (= (and d!871981 (not c!535271)) b!3186951))

(declare-fun m!3444797 () Bool)

(assert (=> b!3186950 m!3444797))

(assert (=> b!3186950 m!3444797))

(declare-fun m!3444799 () Bool)

(assert (=> b!3186950 m!3444799))

(declare-fun m!3444801 () Bool)

(assert (=> b!3186950 m!3444801))

(assert (=> b!3186950 m!3444799))

(assert (=> b!3186950 m!3444801))

(declare-fun m!3444803 () Bool)

(assert (=> b!3186950 m!3444803))

(assert (=> d!871475 d!871981))

(assert (=> d!871475 d!871687))

(assert (=> d!871475 d!871477))

(declare-fun d!871983 () Bool)

(declare-fun c!535272 () Bool)

(assert (=> d!871983 (= c!535272 ((_ is Empty!10647) (c!534901 (charsOf!3158 (h!41230 tokens!494)))))))

(declare-fun e!1985899 () List!35933)

(assert (=> d!871983 (= (list!12717 (c!534901 (charsOf!3158 (h!41230 tokens!494)))) e!1985899)))

(declare-fun b!3186955 () Bool)

(declare-fun e!1985900 () List!35933)

(assert (=> b!3186955 (= e!1985900 (++!8566 (list!12717 (left!27849 (c!534901 (charsOf!3158 (h!41230 tokens!494))))) (list!12717 (right!28179 (c!534901 (charsOf!3158 (h!41230 tokens!494)))))))))

(declare-fun b!3186952 () Bool)

(assert (=> b!3186952 (= e!1985899 Nil!35809)))

(declare-fun b!3186954 () Bool)

(assert (=> b!3186954 (= e!1985900 (list!12721 (xs!13765 (c!534901 (charsOf!3158 (h!41230 tokens!494))))))))

(declare-fun b!3186953 () Bool)

(assert (=> b!3186953 (= e!1985899 e!1985900)))

(declare-fun c!535273 () Bool)

(assert (=> b!3186953 (= c!535273 ((_ is Leaf!16826) (c!534901 (charsOf!3158 (h!41230 tokens!494)))))))

(assert (= (and d!871983 c!535272) b!3186952))

(assert (= (and d!871983 (not c!535272)) b!3186953))

(assert (= (and b!3186953 c!535273) b!3186954))

(assert (= (and b!3186953 (not c!535273)) b!3186955))

(declare-fun m!3444805 () Bool)

(assert (=> b!3186955 m!3444805))

(declare-fun m!3444807 () Bool)

(assert (=> b!3186955 m!3444807))

(assert (=> b!3186955 m!3444805))

(assert (=> b!3186955 m!3444807))

(declare-fun m!3444809 () Bool)

(assert (=> b!3186955 m!3444809))

(declare-fun m!3444811 () Bool)

(assert (=> b!3186954 m!3444811))

(assert (=> d!871517 d!871983))

(declare-fun d!871985 () Bool)

(assert (=> d!871985 (= (maxPrefixOneRule!1530 thiss!18206 (rule!7558 (h!41230 tokens!494)) lt!1071493) (Some!7002 (tuple2!35169 (Token!9639 (apply!8064 (transformation!5136 (rule!7558 (h!41230 tokens!494))) (seqFromList!3351 lt!1071493)) (rule!7558 (h!41230 tokens!494)) (size!27015 lt!1071493) lt!1071493) Nil!35809)))))

(assert (=> d!871985 true))

(declare-fun _$59!352 () Unit!50220)

(assert (=> d!871985 (= (choose!18601 thiss!18206 rules!2135 lt!1071493 lt!1071493 Nil!35809 (rule!7558 (h!41230 tokens!494))) _$59!352)))

(declare-fun bs!540129 () Bool)

(assert (= bs!540129 d!871985))

(assert (=> bs!540129 m!3442703))

(assert (=> bs!540129 m!3442757))

(assert (=> bs!540129 m!3442757))

(assert (=> bs!540129 m!3443593))

(assert (=> bs!540129 m!3442715))

(assert (=> d!871559 d!871985))

(assert (=> d!871559 d!871511))

(assert (=> d!871559 d!871573))

(declare-fun d!871987 () Bool)

(assert (=> d!871987 (= (apply!8064 (transformation!5136 (rule!7558 (h!41230 tokens!494))) (seqFromList!3351 lt!1071493)) (dynLambda!14457 (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (seqFromList!3351 lt!1071493)))))

(declare-fun b_lambda!86917 () Bool)

(assert (=> (not b_lambda!86917) (not d!871987)))

(declare-fun t!235732 () Bool)

(declare-fun tb!155635 () Bool)

(assert (=> (and b!3185354 (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235732) tb!155635))

(declare-fun result!197792 () Bool)

(assert (=> tb!155635 (= result!197792 (inv!21 (dynLambda!14457 (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (seqFromList!3351 lt!1071493))))))

(declare-fun m!3444813 () Bool)

(assert (=> tb!155635 m!3444813))

(assert (=> d!871987 t!235732))

(declare-fun b_and!210979 () Bool)

(assert (= b_and!210935 (and (=> t!235732 result!197792) b_and!210979)))

(declare-fun t!235734 () Bool)

(declare-fun tb!155637 () Bool)

(assert (=> (and b!3185353 (= (toValue!7196 (transformation!5136 (h!41231 rules!2135))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235734) tb!155637))

(declare-fun result!197794 () Bool)

(assert (= result!197794 result!197792))

(assert (=> d!871987 t!235734))

(declare-fun b_and!210981 () Bool)

(assert (= b_and!210929 (and (=> t!235734 result!197794) b_and!210981)))

(declare-fun tb!155639 () Bool)

(declare-fun t!235736 () Bool)

(assert (=> (and b!3185352 (= (toValue!7196 (transformation!5136 (rule!7558 separatorToken!241))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235736) tb!155639))

(declare-fun result!197796 () Bool)

(assert (= result!197796 result!197792))

(assert (=> d!871987 t!235736))

(declare-fun b_and!210983 () Bool)

(assert (= b_and!210931 (and (=> t!235736 result!197796) b_and!210983)))

(declare-fun tb!155641 () Bool)

(declare-fun t!235738 () Bool)

(assert (=> (and b!3186184 (= (toValue!7196 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235738) tb!155641))

(declare-fun result!197798 () Bool)

(assert (= result!197798 result!197792))

(assert (=> d!871987 t!235738))

(declare-fun b_and!210985 () Bool)

(assert (= b_and!210933 (and (=> t!235738 result!197798) b_and!210985)))

(declare-fun t!235740 () Bool)

(declare-fun tb!155643 () Bool)

(assert (=> (and b!3186168 (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235740) tb!155643))

(declare-fun result!197800 () Bool)

(assert (= result!197800 result!197792))

(assert (=> d!871987 t!235740))

(declare-fun b_and!210987 () Bool)

(assert (= b_and!210937 (and (=> t!235740 result!197800) b_and!210987)))

(assert (=> d!871987 m!3442757))

(declare-fun m!3444815 () Bool)

(assert (=> d!871987 m!3444815))

(assert (=> d!871559 d!871987))

(assert (=> d!871559 d!871575))

(assert (=> d!871559 d!871447))

(assert (=> b!3186111 d!871859))

(declare-fun d!871989 () Bool)

(declare-fun lt!1072240 () Int)

(assert (=> d!871989 (>= lt!1072240 0)))

(declare-fun e!1985902 () Int)

(assert (=> d!871989 (= lt!1072240 e!1985902)))

(declare-fun c!535274 () Bool)

(assert (=> d!871989 (= c!535274 ((_ is Nil!35809) (originalCharacters!5850 (_1!20718 (get!11399 lt!1071771)))))))

(assert (=> d!871989 (= (size!27015 (originalCharacters!5850 (_1!20718 (get!11399 lt!1071771)))) lt!1072240)))

(declare-fun b!3186956 () Bool)

(assert (=> b!3186956 (= e!1985902 0)))

(declare-fun b!3186957 () Bool)

(assert (=> b!3186957 (= e!1985902 (+ 1 (size!27015 (t!235526 (originalCharacters!5850 (_1!20718 (get!11399 lt!1071771)))))))))

(assert (= (and d!871989 c!535274) b!3186956))

(assert (= (and d!871989 (not c!535274)) b!3186957))

(declare-fun m!3444817 () Bool)

(assert (=> b!3186957 m!3444817))

(assert (=> b!3186111 d!871989))

(declare-fun b!3186958 () Bool)

(declare-fun e!1985903 () Bool)

(assert (=> b!3186958 (= e!1985903 (inv!17 (value!166836 (h!41230 (t!235527 tokens!494)))))))

(declare-fun d!871991 () Bool)

(declare-fun c!535275 () Bool)

(assert (=> d!871991 (= c!535275 ((_ is IntegerValue!16098) (value!166836 (h!41230 (t!235527 tokens!494)))))))

(declare-fun e!1985904 () Bool)

(assert (=> d!871991 (= (inv!21 (value!166836 (h!41230 (t!235527 tokens!494)))) e!1985904)))

(declare-fun b!3186959 () Bool)

(declare-fun e!1985905 () Bool)

(assert (=> b!3186959 (= e!1985905 (inv!15 (value!166836 (h!41230 (t!235527 tokens!494)))))))

(declare-fun b!3186960 () Bool)

(declare-fun res!1295763 () Bool)

(assert (=> b!3186960 (=> res!1295763 e!1985905)))

(assert (=> b!3186960 (= res!1295763 (not ((_ is IntegerValue!16100) (value!166836 (h!41230 (t!235527 tokens!494))))))))

(assert (=> b!3186960 (= e!1985903 e!1985905)))

(declare-fun b!3186961 () Bool)

(assert (=> b!3186961 (= e!1985904 e!1985903)))

(declare-fun c!535276 () Bool)

(assert (=> b!3186961 (= c!535276 ((_ is IntegerValue!16099) (value!166836 (h!41230 (t!235527 tokens!494)))))))

(declare-fun b!3186962 () Bool)

(assert (=> b!3186962 (= e!1985904 (inv!16 (value!166836 (h!41230 (t!235527 tokens!494)))))))

(assert (= (and d!871991 c!535275) b!3186962))

(assert (= (and d!871991 (not c!535275)) b!3186961))

(assert (= (and b!3186961 c!535276) b!3186958))

(assert (= (and b!3186961 (not c!535276)) b!3186960))

(assert (= (and b!3186960 (not res!1295763)) b!3186959))

(declare-fun m!3444819 () Bool)

(assert (=> b!3186958 m!3444819))

(declare-fun m!3444821 () Bool)

(assert (=> b!3186959 m!3444821))

(declare-fun m!3444823 () Bool)

(assert (=> b!3186962 m!3444823))

(assert (=> b!3186166 d!871991))

(declare-fun d!871993 () Bool)

(assert (=> d!871993 (= (isEmpty!19939 (originalCharacters!5850 (h!41230 tokens!494))) ((_ is Nil!35809) (originalCharacters!5850 (h!41230 tokens!494))))))

(assert (=> d!871481 d!871993))

(declare-fun d!871995 () Bool)

(declare-fun c!535279 () Bool)

(assert (=> d!871995 (= c!535279 ((_ is Nil!35809) (usedCharacters!480 (regex!5136 (rule!7558 (h!41230 tokens!494))))))))

(declare-fun e!1985908 () (InoxSet C!19976))

(assert (=> d!871995 (= (content!4850 (usedCharacters!480 (regex!5136 (rule!7558 (h!41230 tokens!494))))) e!1985908)))

(declare-fun b!3186967 () Bool)

(assert (=> b!3186967 (= e!1985908 ((as const (Array C!19976 Bool)) false))))

(declare-fun b!3186968 () Bool)

(assert (=> b!3186968 (= e!1985908 ((_ map or) (store ((as const (Array C!19976 Bool)) false) (h!41229 (usedCharacters!480 (regex!5136 (rule!7558 (h!41230 tokens!494))))) true) (content!4850 (t!235526 (usedCharacters!480 (regex!5136 (rule!7558 (h!41230 tokens!494))))))))))

(assert (= (and d!871995 c!535279) b!3186967))

(assert (= (and d!871995 (not c!535279)) b!3186968))

(declare-fun m!3444825 () Bool)

(assert (=> b!3186968 m!3444825))

(declare-fun m!3444827 () Bool)

(assert (=> b!3186968 m!3444827))

(assert (=> d!871425 d!871995))

(declare-fun b!3186971 () Bool)

(declare-fun res!1295764 () Bool)

(declare-fun e!1985910 () Bool)

(assert (=> b!3186971 (=> (not res!1295764) (not e!1985910))))

(declare-fun lt!1072241 () List!35933)

(assert (=> b!3186971 (= res!1295764 (= (size!27015 lt!1072241) (+ (size!27015 (t!235526 lt!1071493)) (size!27015 lt!1071487))))))

(declare-fun b!3186970 () Bool)

(declare-fun e!1985909 () List!35933)

(assert (=> b!3186970 (= e!1985909 (Cons!35809 (h!41229 (t!235526 lt!1071493)) (++!8566 (t!235526 (t!235526 lt!1071493)) lt!1071487)))))

(declare-fun b!3186969 () Bool)

(assert (=> b!3186969 (= e!1985909 lt!1071487)))

(declare-fun b!3186972 () Bool)

(assert (=> b!3186972 (= e!1985910 (or (not (= lt!1071487 Nil!35809)) (= lt!1072241 (t!235526 lt!1071493))))))

(declare-fun d!871997 () Bool)

(assert (=> d!871997 e!1985910))

(declare-fun res!1295765 () Bool)

(assert (=> d!871997 (=> (not res!1295765) (not e!1985910))))

(assert (=> d!871997 (= res!1295765 (= (content!4850 lt!1072241) ((_ map or) (content!4850 (t!235526 lt!1071493)) (content!4850 lt!1071487))))))

(assert (=> d!871997 (= lt!1072241 e!1985909)))

(declare-fun c!535280 () Bool)

(assert (=> d!871997 (= c!535280 ((_ is Nil!35809) (t!235526 lt!1071493)))))

(assert (=> d!871997 (= (++!8566 (t!235526 lt!1071493) lt!1071487) lt!1072241)))

(assert (= (and d!871997 c!535280) b!3186969))

(assert (= (and d!871997 (not c!535280)) b!3186970))

(assert (= (and d!871997 res!1295765) b!3186971))

(assert (= (and b!3186971 res!1295764) b!3186972))

(declare-fun m!3444829 () Bool)

(assert (=> b!3186971 m!3444829))

(assert (=> b!3186971 m!3443671))

(assert (=> b!3186971 m!3443149))

(declare-fun m!3444831 () Bool)

(assert (=> b!3186970 m!3444831))

(declare-fun m!3444833 () Bool)

(assert (=> d!871997 m!3444833))

(declare-fun m!3444835 () Bool)

(assert (=> d!871997 m!3444835))

(assert (=> d!871997 m!3443157))

(assert (=> b!3185701 d!871997))

(declare-fun b!3186985 () Bool)

(declare-fun res!1295778 () Bool)

(declare-fun e!1985915 () Bool)

(assert (=> b!3186985 (=> (not res!1295778) (not e!1985915))))

(declare-fun height!1532 (Conc!10648) Int)

(assert (=> b!3186985 (= res!1295778 (<= (- (height!1532 (left!27850 (c!534902 lt!1071647))) (height!1532 (right!28180 (c!534902 lt!1071647)))) 1))))

(declare-fun b!3186986 () Bool)

(declare-fun res!1295782 () Bool)

(assert (=> b!3186986 (=> (not res!1295782) (not e!1985915))))

(assert (=> b!3186986 (= res!1295782 (isBalanced!3189 (right!28180 (c!534902 lt!1071647))))))

(declare-fun b!3186987 () Bool)

(declare-fun e!1985916 () Bool)

(assert (=> b!3186987 (= e!1985916 e!1985915)))

(declare-fun res!1295780 () Bool)

(assert (=> b!3186987 (=> (not res!1295780) (not e!1985915))))

(assert (=> b!3186987 (= res!1295780 (<= (- 1) (- (height!1532 (left!27850 (c!534902 lt!1071647))) (height!1532 (right!28180 (c!534902 lt!1071647))))))))

(declare-fun b!3186988 () Bool)

(declare-fun res!1295779 () Bool)

(assert (=> b!3186988 (=> (not res!1295779) (not e!1985915))))

(assert (=> b!3186988 (= res!1295779 (isBalanced!3189 (left!27850 (c!534902 lt!1071647))))))

(declare-fun d!871999 () Bool)

(declare-fun res!1295783 () Bool)

(assert (=> d!871999 (=> res!1295783 e!1985916)))

(assert (=> d!871999 (= res!1295783 (not ((_ is Node!10648) (c!534902 lt!1071647))))))

(assert (=> d!871999 (= (isBalanced!3189 (c!534902 lt!1071647)) e!1985916)))

(declare-fun b!3186989 () Bool)

(declare-fun res!1295781 () Bool)

(assert (=> b!3186989 (=> (not res!1295781) (not e!1985915))))

(assert (=> b!3186989 (= res!1295781 (not (isEmpty!19948 (left!27850 (c!534902 lt!1071647)))))))

(declare-fun b!3186990 () Bool)

(assert (=> b!3186990 (= e!1985915 (not (isEmpty!19948 (right!28180 (c!534902 lt!1071647)))))))

(assert (= (and d!871999 (not res!1295783)) b!3186987))

(assert (= (and b!3186987 res!1295780) b!3186985))

(assert (= (and b!3186985 res!1295778) b!3186988))

(assert (= (and b!3186988 res!1295779) b!3186986))

(assert (= (and b!3186986 res!1295782) b!3186989))

(assert (= (and b!3186989 res!1295781) b!3186990))

(declare-fun m!3444837 () Bool)

(assert (=> b!3186990 m!3444837))

(declare-fun m!3444839 () Bool)

(assert (=> b!3186987 m!3444839))

(declare-fun m!3444841 () Bool)

(assert (=> b!3186987 m!3444841))

(declare-fun m!3444843 () Bool)

(assert (=> b!3186989 m!3444843))

(assert (=> b!3186985 m!3444839))

(assert (=> b!3186985 m!3444841))

(declare-fun m!3444845 () Bool)

(assert (=> b!3186986 m!3444845))

(declare-fun m!3444847 () Bool)

(assert (=> b!3186988 m!3444847))

(assert (=> b!3185803 d!871999))

(assert (=> d!871459 d!871767))

(declare-fun b!3186991 () Bool)

(declare-fun res!1295785 () Bool)

(declare-fun e!1985918 () Bool)

(assert (=> b!3186991 (=> (not res!1295785) (not e!1985918))))

(declare-fun call!231247 () Bool)

(assert (=> b!3186991 (= res!1295785 call!231247)))

(declare-fun e!1985921 () Bool)

(assert (=> b!3186991 (= e!1985921 e!1985918)))

(declare-fun bm!231241 () Bool)

(declare-fun c!535281 () Bool)

(declare-fun call!231246 () Bool)

(declare-fun c!535282 () Bool)

(assert (=> bm!231241 (= call!231246 (validRegex!4538 (ite c!535281 (reg!10224 (regex!5136 lt!1071481)) (ite c!535282 (regTwo!20303 (regex!5136 lt!1071481)) (regTwo!20302 (regex!5136 lt!1071481))))))))

(declare-fun b!3186992 () Bool)

(declare-fun e!1985922 () Bool)

(assert (=> b!3186992 (= e!1985922 e!1985921)))

(assert (=> b!3186992 (= c!535282 ((_ is Union!9895) (regex!5136 lt!1071481)))))

(declare-fun b!3186993 () Bool)

(declare-fun res!1295787 () Bool)

(declare-fun e!1985920 () Bool)

(assert (=> b!3186993 (=> res!1295787 e!1985920)))

(assert (=> b!3186993 (= res!1295787 (not ((_ is Concat!15261) (regex!5136 lt!1071481))))))

(assert (=> b!3186993 (= e!1985921 e!1985920)))

(declare-fun d!872001 () Bool)

(declare-fun res!1295788 () Bool)

(declare-fun e!1985919 () Bool)

(assert (=> d!872001 (=> res!1295788 e!1985919)))

(assert (=> d!872001 (= res!1295788 ((_ is ElementMatch!9895) (regex!5136 lt!1071481)))))

(assert (=> d!872001 (= (validRegex!4538 (regex!5136 lt!1071481)) e!1985919)))

(declare-fun b!3186994 () Bool)

(declare-fun call!231248 () Bool)

(assert (=> b!3186994 (= e!1985918 call!231248)))

(declare-fun b!3186995 () Bool)

(declare-fun e!1985923 () Bool)

(assert (=> b!3186995 (= e!1985923 call!231248)))

(declare-fun bm!231242 () Bool)

(assert (=> bm!231242 (= call!231247 (validRegex!4538 (ite c!535282 (regOne!20303 (regex!5136 lt!1071481)) (regOne!20302 (regex!5136 lt!1071481)))))))

(declare-fun b!3186996 () Bool)

(declare-fun e!1985917 () Bool)

(assert (=> b!3186996 (= e!1985917 call!231246)))

(declare-fun b!3186997 () Bool)

(assert (=> b!3186997 (= e!1985922 e!1985917)))

(declare-fun res!1295786 () Bool)

(assert (=> b!3186997 (= res!1295786 (not (nullable!3386 (reg!10224 (regex!5136 lt!1071481)))))))

(assert (=> b!3186997 (=> (not res!1295786) (not e!1985917))))

(declare-fun b!3186998 () Bool)

(assert (=> b!3186998 (= e!1985920 e!1985923)))

(declare-fun res!1295784 () Bool)

(assert (=> b!3186998 (=> (not res!1295784) (not e!1985923))))

(assert (=> b!3186998 (= res!1295784 call!231247)))

(declare-fun b!3186999 () Bool)

(assert (=> b!3186999 (= e!1985919 e!1985922)))

(assert (=> b!3186999 (= c!535281 ((_ is Star!9895) (regex!5136 lt!1071481)))))

(declare-fun bm!231243 () Bool)

(assert (=> bm!231243 (= call!231248 call!231246)))

(assert (= (and d!872001 (not res!1295788)) b!3186999))

(assert (= (and b!3186999 c!535281) b!3186997))

(assert (= (and b!3186999 (not c!535281)) b!3186992))

(assert (= (and b!3186997 res!1295786) b!3186996))

(assert (= (and b!3186992 c!535282) b!3186991))

(assert (= (and b!3186992 (not c!535282)) b!3186993))

(assert (= (and b!3186991 res!1295785) b!3186994))

(assert (= (and b!3186993 (not res!1295787)) b!3186998))

(assert (= (and b!3186998 res!1295784) b!3186995))

(assert (= (or b!3186994 b!3186995) bm!231243))

(assert (= (or b!3186991 b!3186998) bm!231242))

(assert (= (or b!3186996 bm!231243) bm!231241))

(declare-fun m!3444849 () Bool)

(assert (=> bm!231241 m!3444849))

(declare-fun m!3444851 () Bool)

(assert (=> bm!231242 m!3444851))

(declare-fun m!3444853 () Bool)

(assert (=> b!3186997 m!3444853))

(assert (=> d!871459 d!872001))

(declare-fun bs!540130 () Bool)

(declare-fun d!872003 () Bool)

(assert (= bs!540130 (and d!872003 d!871977)))

(declare-fun lambda!116572 () Int)

(assert (=> bs!540130 (= lambda!116572 lambda!116569)))

(assert (=> d!872003 true))

(declare-fun lt!1072244 () Bool)

(assert (=> d!872003 (= lt!1072244 (rulesValidInductive!1760 thiss!18206 rules!2135))))

(assert (=> d!872003 (= lt!1072244 (forall!7263 rules!2135 lambda!116572))))

(assert (=> d!872003 (= (rulesValid!1898 thiss!18206 rules!2135) lt!1072244)))

(declare-fun bs!540131 () Bool)

(assert (= bs!540131 d!872003))

(assert (=> bs!540131 m!3443095))

(declare-fun m!3444855 () Bool)

(assert (=> bs!540131 m!3444855))

(assert (=> d!871489 d!872003))

(declare-fun d!872005 () Bool)

(assert (=> d!872005 (= (list!12713 (_2!20717 lt!1071699)) (list!12717 (c!534901 (_2!20717 lt!1071699))))))

(declare-fun bs!540132 () Bool)

(assert (= bs!540132 d!872005))

(declare-fun m!3444857 () Bool)

(assert (=> bs!540132 m!3444857))

(assert (=> b!3185911 d!872005))

(declare-fun b!3187022 () Bool)

(declare-fun e!1985937 () Bool)

(declare-fun e!1985938 () Bool)

(assert (=> b!3187022 (= e!1985937 e!1985938)))

(declare-fun res!1295791 () Bool)

(declare-fun lt!1072321 () tuple2!35174)

(assert (=> b!3187022 (= res!1295791 (< (size!27015 (_2!20721 lt!1072321)) (size!27015 (list!12713 lt!1071478))))))

(assert (=> b!3187022 (=> (not res!1295791) (not e!1985938))))

(declare-fun d!872007 () Bool)

(assert (=> d!872007 e!1985937))

(declare-fun c!535294 () Bool)

(assert (=> d!872007 (= c!535294 (> (size!27022 (_1!20721 lt!1072321)) 0))))

(declare-fun e!1985936 () tuple2!35174)

(assert (=> d!872007 (= lt!1072321 e!1985936)))

(declare-fun c!535293 () Bool)

(declare-fun lt!1072320 () Option!7003)

(assert (=> d!872007 (= c!535293 ((_ is Some!7002) lt!1072320))))

(assert (=> d!872007 (= lt!1072320 (maxPrefix!2403 thiss!18206 rules!2135 (list!12713 lt!1071478)))))

(assert (=> d!872007 (= (lexList!1279 thiss!18206 rules!2135 (list!12713 lt!1071478)) lt!1072321)))

(declare-fun b!3187023 () Bool)

(assert (=> b!3187023 (= e!1985938 (not (isEmpty!19947 (_1!20721 lt!1072321))))))

(declare-fun b!3187024 () Bool)

(assert (=> b!3187024 (= e!1985936 (tuple2!35175 Nil!35810 (list!12713 lt!1071478)))))

(declare-fun b!3187025 () Bool)

(assert (=> b!3187025 (= e!1985937 (= (_2!20721 lt!1072321) (list!12713 lt!1071478)))))

(declare-fun b!3187026 () Bool)

(declare-fun lt!1072319 () tuple2!35174)

(assert (=> b!3187026 (= e!1985936 (tuple2!35175 (Cons!35810 (_1!20718 (v!35480 lt!1072320)) (_1!20721 lt!1072319)) (_2!20721 lt!1072319)))))

(assert (=> b!3187026 (= lt!1072319 (lexList!1279 thiss!18206 rules!2135 (_2!20718 (v!35480 lt!1072320))))))

(assert (= (and d!872007 c!535293) b!3187026))

(assert (= (and d!872007 (not c!535293)) b!3187024))

(assert (= (and d!872007 c!535294) b!3187022))

(assert (= (and d!872007 (not c!535294)) b!3187025))

(assert (= (and b!3187022 res!1295791) b!3187023))

(declare-fun m!3444859 () Bool)

(assert (=> b!3187022 m!3444859))

(assert (=> b!3187022 m!3443403))

(declare-fun m!3444861 () Bool)

(assert (=> b!3187022 m!3444861))

(declare-fun m!3444863 () Bool)

(assert (=> d!872007 m!3444863))

(assert (=> d!872007 m!3443403))

(declare-fun m!3444865 () Bool)

(assert (=> d!872007 m!3444865))

(declare-fun m!3444867 () Bool)

(assert (=> b!3187023 m!3444867))

(declare-fun m!3444869 () Bool)

(assert (=> b!3187026 m!3444869))

(assert (=> b!3185911 d!872007))

(declare-fun d!872009 () Bool)

(assert (=> d!872009 (= (list!12713 lt!1071478) (list!12717 (c!534901 lt!1071478)))))

(declare-fun bs!540133 () Bool)

(assert (= bs!540133 d!872009))

(declare-fun m!3444871 () Bool)

(assert (=> bs!540133 m!3444871))

(assert (=> b!3185911 d!872009))

(declare-fun b!3187031 () Bool)

(declare-fun res!1295794 () Bool)

(declare-fun e!1985942 () Bool)

(assert (=> b!3187031 (=> (not res!1295794) (not e!1985942))))

(declare-fun lt!1072322 () List!35933)

(assert (=> b!3187031 (= res!1295794 (= (size!27015 lt!1072322) (+ (size!27015 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071628))))) (size!27015 (_2!20718 (get!11399 lt!1071628))))))))

(declare-fun b!3187030 () Bool)

(declare-fun e!1985941 () List!35933)

(assert (=> b!3187030 (= e!1985941 (Cons!35809 (h!41229 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071628))))) (++!8566 (t!235526 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071628))))) (_2!20718 (get!11399 lt!1071628)))))))

(declare-fun b!3187029 () Bool)

(assert (=> b!3187029 (= e!1985941 (_2!20718 (get!11399 lt!1071628)))))

(declare-fun b!3187032 () Bool)

(assert (=> b!3187032 (= e!1985942 (or (not (= (_2!20718 (get!11399 lt!1071628)) Nil!35809)) (= lt!1072322 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071628)))))))))

(declare-fun d!872011 () Bool)

(assert (=> d!872011 e!1985942))

(declare-fun res!1295795 () Bool)

(assert (=> d!872011 (=> (not res!1295795) (not e!1985942))))

(assert (=> d!872011 (= res!1295795 (= (content!4850 lt!1072322) ((_ map or) (content!4850 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071628))))) (content!4850 (_2!20718 (get!11399 lt!1071628))))))))

(assert (=> d!872011 (= lt!1072322 e!1985941)))

(declare-fun c!535295 () Bool)

(assert (=> d!872011 (= c!535295 ((_ is Nil!35809) (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071628))))))))

(assert (=> d!872011 (= (++!8566 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071628)))) (_2!20718 (get!11399 lt!1071628))) lt!1072322)))

(assert (= (and d!872011 c!535295) b!3187029))

(assert (= (and d!872011 (not c!535295)) b!3187030))

(assert (= (and d!872011 res!1295795) b!3187031))

(assert (= (and b!3187031 res!1295794) b!3187032))

(declare-fun m!3444873 () Bool)

(assert (=> b!3187031 m!3444873))

(assert (=> b!3187031 m!3443113))

(declare-fun m!3444875 () Bool)

(assert (=> b!3187031 m!3444875))

(assert (=> b!3187031 m!3443137))

(declare-fun m!3444877 () Bool)

(assert (=> b!3187030 m!3444877))

(declare-fun m!3444879 () Bool)

(assert (=> d!872011 m!3444879))

(assert (=> d!872011 m!3443113))

(declare-fun m!3444881 () Bool)

(assert (=> d!872011 m!3444881))

(declare-fun m!3444883 () Bool)

(assert (=> d!872011 m!3444883))

(assert (=> b!3185689 d!872011))

(assert (=> b!3185689 d!871957))

(assert (=> b!3185689 d!871959))

(assert (=> b!3185689 d!871705))

(declare-fun d!872013 () Bool)

(declare-fun lt!1072323 () Bool)

(assert (=> d!872013 (= lt!1072323 (select (content!4854 rules!2135) (get!11397 lt!1071755)))))

(declare-fun e!1985943 () Bool)

(assert (=> d!872013 (= lt!1072323 e!1985943)))

(declare-fun res!1295796 () Bool)

(assert (=> d!872013 (=> (not res!1295796) (not e!1985943))))

(assert (=> d!872013 (= res!1295796 ((_ is Cons!35811) rules!2135))))

(assert (=> d!872013 (= (contains!6354 rules!2135 (get!11397 lt!1071755)) lt!1072323)))

(declare-fun b!3187033 () Bool)

(declare-fun e!1985944 () Bool)

(assert (=> b!3187033 (= e!1985943 e!1985944)))

(declare-fun res!1295797 () Bool)

(assert (=> b!3187033 (=> res!1295797 e!1985944)))

(assert (=> b!3187033 (= res!1295797 (= (h!41231 rules!2135) (get!11397 lt!1071755)))))

(declare-fun b!3187034 () Bool)

(assert (=> b!3187034 (= e!1985944 (contains!6354 (t!235528 rules!2135) (get!11397 lt!1071755)))))

(assert (= (and d!872013 res!1295796) b!3187033))

(assert (= (and b!3187033 (not res!1295797)) b!3187034))

(assert (=> d!872013 m!3444171))

(assert (=> d!872013 m!3443607))

(declare-fun m!3444885 () Bool)

(assert (=> d!872013 m!3444885))

(assert (=> b!3187034 m!3443607))

(declare-fun m!3444887 () Bool)

(assert (=> b!3187034 m!3444887))

(assert (=> b!3186080 d!872013))

(declare-fun d!872015 () Bool)

(assert (=> d!872015 (= (get!11397 lt!1071755) (v!35481 lt!1071755))))

(assert (=> b!3186080 d!872015))

(declare-fun d!872017 () Bool)

(declare-fun e!1985947 () Bool)

(assert (=> d!872017 e!1985947))

(declare-fun res!1295800 () Bool)

(assert (=> d!872017 (=> (not res!1295800) (not e!1985947))))

(declare-fun lt!1072326 () BalanceConc!20908)

(assert (=> d!872017 (= res!1295800 (= (list!12713 lt!1072326) lt!1071493))))

(declare-fun fromList!588 (List!35933) Conc!10647)

(assert (=> d!872017 (= lt!1072326 (BalanceConc!20909 (fromList!588 lt!1071493)))))

(assert (=> d!872017 (= (fromListB!1510 lt!1071493) lt!1072326)))

(declare-fun b!3187037 () Bool)

(assert (=> b!3187037 (= e!1985947 (isBalanced!3191 (fromList!588 lt!1071493)))))

(assert (= (and d!872017 res!1295800) b!3187037))

(declare-fun m!3444889 () Bool)

(assert (=> d!872017 m!3444889))

(declare-fun m!3444891 () Bool)

(assert (=> d!872017 m!3444891))

(assert (=> b!3187037 m!3444891))

(assert (=> b!3187037 m!3444891))

(declare-fun m!3444893 () Bool)

(assert (=> b!3187037 m!3444893))

(assert (=> d!871511 d!872017))

(declare-fun b!3187038 () Bool)

(declare-fun e!1985952 () Bool)

(declare-fun e!1985954 () Bool)

(assert (=> b!3187038 (= e!1985952 e!1985954)))

(declare-fun res!1295802 () Bool)

(assert (=> b!3187038 (=> (not res!1295802) (not e!1985954))))

(declare-fun lt!1072327 () Bool)

(assert (=> b!3187038 (= res!1295802 (not lt!1072327))))

(declare-fun b!3187039 () Bool)

(declare-fun e!1985951 () Bool)

(assert (=> b!3187039 (= e!1985951 (not (= (head!6967 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071621))))) (c!534900 (regex!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621))))))))))

(declare-fun b!3187040 () Bool)

(declare-fun res!1295804 () Bool)

(assert (=> b!3187040 (=> res!1295804 e!1985951)))

(assert (=> b!3187040 (= res!1295804 (not (isEmpty!19939 (tail!5184 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071621))))))))))

(declare-fun d!872019 () Bool)

(declare-fun e!1985948 () Bool)

(assert (=> d!872019 e!1985948))

(declare-fun c!535298 () Bool)

(assert (=> d!872019 (= c!535298 ((_ is EmptyExpr!9895) (regex!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621))))))))

(declare-fun e!1985953 () Bool)

(assert (=> d!872019 (= lt!1072327 e!1985953)))

(declare-fun c!535297 () Bool)

(assert (=> d!872019 (= c!535297 (isEmpty!19939 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071621))))))))

(assert (=> d!872019 (validRegex!4538 (regex!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621)))))))

(assert (=> d!872019 (= (matchR!4553 (regex!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621)))) (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071621))))) lt!1072327)))

(declare-fun bm!231244 () Bool)

(declare-fun call!231249 () Bool)

(assert (=> bm!231244 (= call!231249 (isEmpty!19939 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071621))))))))

(declare-fun b!3187041 () Bool)

(declare-fun res!1295801 () Bool)

(declare-fun e!1985949 () Bool)

(assert (=> b!3187041 (=> (not res!1295801) (not e!1985949))))

(assert (=> b!3187041 (= res!1295801 (not call!231249))))

(declare-fun b!3187042 () Bool)

(assert (=> b!3187042 (= e!1985953 (matchR!4553 (derivativeStep!2939 (regex!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621)))) (head!6967 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071621)))))) (tail!5184 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071621)))))))))

(declare-fun b!3187043 () Bool)

(declare-fun res!1295806 () Bool)

(assert (=> b!3187043 (=> res!1295806 e!1985952)))

(assert (=> b!3187043 (= res!1295806 (not ((_ is ElementMatch!9895) (regex!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621)))))))))

(declare-fun e!1985950 () Bool)

(assert (=> b!3187043 (= e!1985950 e!1985952)))

(declare-fun b!3187044 () Bool)

(assert (=> b!3187044 (= e!1985953 (nullable!3386 (regex!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621))))))))

(declare-fun b!3187045 () Bool)

(assert (=> b!3187045 (= e!1985954 e!1985951)))

(declare-fun res!1295803 () Bool)

(assert (=> b!3187045 (=> res!1295803 e!1985951)))

(assert (=> b!3187045 (= res!1295803 call!231249)))

(declare-fun b!3187046 () Bool)

(assert (=> b!3187046 (= e!1985949 (= (head!6967 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071621))))) (c!534900 (regex!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621)))))))))

(declare-fun b!3187047 () Bool)

(assert (=> b!3187047 (= e!1985948 e!1985950)))

(declare-fun c!535299 () Bool)

(assert (=> b!3187047 (= c!535299 ((_ is EmptyLang!9895) (regex!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621))))))))

(declare-fun b!3187048 () Bool)

(assert (=> b!3187048 (= e!1985950 (not lt!1072327))))

(declare-fun b!3187049 () Bool)

(declare-fun res!1295805 () Bool)

(assert (=> b!3187049 (=> res!1295805 e!1985952)))

(assert (=> b!3187049 (= res!1295805 e!1985949)))

(declare-fun res!1295807 () Bool)

(assert (=> b!3187049 (=> (not res!1295807) (not e!1985949))))

(assert (=> b!3187049 (= res!1295807 lt!1072327)))

(declare-fun b!3187050 () Bool)

(assert (=> b!3187050 (= e!1985948 (= lt!1072327 call!231249))))

(declare-fun b!3187051 () Bool)

(declare-fun res!1295808 () Bool)

(assert (=> b!3187051 (=> (not res!1295808) (not e!1985949))))

(assert (=> b!3187051 (= res!1295808 (isEmpty!19939 (tail!5184 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071621)))))))))

(assert (= (and d!872019 c!535297) b!3187044))

(assert (= (and d!872019 (not c!535297)) b!3187042))

(assert (= (and d!872019 c!535298) b!3187050))

(assert (= (and d!872019 (not c!535298)) b!3187047))

(assert (= (and b!3187047 c!535299) b!3187048))

(assert (= (and b!3187047 (not c!535299)) b!3187043))

(assert (= (and b!3187043 (not res!1295806)) b!3187049))

(assert (= (and b!3187049 res!1295807) b!3187041))

(assert (= (and b!3187041 res!1295801) b!3187051))

(assert (= (and b!3187051 res!1295808) b!3187046))

(assert (= (and b!3187049 (not res!1295805)) b!3187038))

(assert (= (and b!3187038 res!1295802) b!3187045))

(assert (= (and b!3187045 (not res!1295803)) b!3187040))

(assert (= (and b!3187040 (not res!1295804)) b!3187039))

(assert (= (or b!3187050 b!3187041 b!3187045) bm!231244))

(assert (=> b!3187042 m!3443079))

(declare-fun m!3444895 () Bool)

(assert (=> b!3187042 m!3444895))

(assert (=> b!3187042 m!3444895))

(declare-fun m!3444897 () Bool)

(assert (=> b!3187042 m!3444897))

(assert (=> b!3187042 m!3443079))

(declare-fun m!3444899 () Bool)

(assert (=> b!3187042 m!3444899))

(assert (=> b!3187042 m!3444897))

(assert (=> b!3187042 m!3444899))

(declare-fun m!3444901 () Bool)

(assert (=> b!3187042 m!3444901))

(assert (=> b!3187040 m!3443079))

(assert (=> b!3187040 m!3444899))

(assert (=> b!3187040 m!3444899))

(declare-fun m!3444903 () Bool)

(assert (=> b!3187040 m!3444903))

(assert (=> b!3187051 m!3443079))

(assert (=> b!3187051 m!3444899))

(assert (=> b!3187051 m!3444899))

(assert (=> b!3187051 m!3444903))

(assert (=> d!872019 m!3443079))

(declare-fun m!3444905 () Bool)

(assert (=> d!872019 m!3444905))

(declare-fun m!3444907 () Bool)

(assert (=> d!872019 m!3444907))

(assert (=> b!3187046 m!3443079))

(assert (=> b!3187046 m!3444895))

(assert (=> bm!231244 m!3443079))

(assert (=> bm!231244 m!3444905))

(declare-fun m!3444909 () Bool)

(assert (=> b!3187044 m!3444909))

(assert (=> b!3187039 m!3443079))

(assert (=> b!3187039 m!3444895))

(assert (=> b!3185676 d!872019))

(assert (=> b!3185676 d!871825))

(declare-fun d!872021 () Bool)

(assert (=> d!872021 (= (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071621)))) (list!12717 (c!534901 (charsOf!3158 (_1!20718 (get!11399 lt!1071621))))))))

(declare-fun bs!540134 () Bool)

(assert (= bs!540134 d!872021))

(declare-fun m!3444911 () Bool)

(assert (=> bs!540134 m!3444911))

(assert (=> b!3185676 d!872021))

(declare-fun d!872023 () Bool)

(declare-fun lt!1072328 () BalanceConc!20908)

(assert (=> d!872023 (= (list!12713 lt!1072328) (originalCharacters!5850 (_1!20718 (get!11399 lt!1071621))))))

(assert (=> d!872023 (= lt!1072328 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621))))) (value!166836 (_1!20718 (get!11399 lt!1071621)))))))

(assert (=> d!872023 (= (charsOf!3158 (_1!20718 (get!11399 lt!1071621))) lt!1072328)))

(declare-fun b_lambda!86919 () Bool)

(assert (=> (not b_lambda!86919) (not d!872023)))

(declare-fun tb!155645 () Bool)

(declare-fun t!235743 () Bool)

(assert (=> (and b!3186184 (= (toChars!7055 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621)))))) t!235743) tb!155645))

(declare-fun b!3187052 () Bool)

(declare-fun e!1985955 () Bool)

(declare-fun tp!1007578 () Bool)

(assert (=> b!3187052 (= e!1985955 (and (inv!48663 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621))))) (value!166836 (_1!20718 (get!11399 lt!1071621)))))) tp!1007578))))

(declare-fun result!197802 () Bool)

(assert (=> tb!155645 (= result!197802 (and (inv!48664 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621))))) (value!166836 (_1!20718 (get!11399 lt!1071621))))) e!1985955))))

(assert (= tb!155645 b!3187052))

(declare-fun m!3444913 () Bool)

(assert (=> b!3187052 m!3444913))

(declare-fun m!3444915 () Bool)

(assert (=> tb!155645 m!3444915))

(assert (=> d!872023 t!235743))

(declare-fun b_and!210989 () Bool)

(assert (= b_and!210977 (and (=> t!235743 result!197802) b_and!210989)))

(declare-fun t!235745 () Bool)

(declare-fun tb!155647 () Bool)

(assert (=> (and b!3185352 (= (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621)))))) t!235745) tb!155647))

(declare-fun result!197804 () Bool)

(assert (= result!197804 result!197802))

(assert (=> d!872023 t!235745))

(declare-fun b_and!210991 () Bool)

(assert (= b_and!210969 (and (=> t!235745 result!197804) b_and!210991)))

(declare-fun t!235747 () Bool)

(declare-fun tb!155649 () Bool)

(assert (=> (and b!3185354 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621)))))) t!235747) tb!155649))

(declare-fun result!197806 () Bool)

(assert (= result!197806 result!197802))

(assert (=> d!872023 t!235747))

(declare-fun b_and!210993 () Bool)

(assert (= b_and!210975 (and (=> t!235747 result!197806) b_and!210993)))

(declare-fun t!235749 () Bool)

(declare-fun tb!155651 () Bool)

(assert (=> (and b!3186168 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621)))))) t!235749) tb!155651))

(declare-fun result!197808 () Bool)

(assert (= result!197808 result!197802))

(assert (=> d!872023 t!235749))

(declare-fun b_and!210995 () Bool)

(assert (= b_and!210973 (and (=> t!235749 result!197808) b_and!210995)))

(declare-fun t!235751 () Bool)

(declare-fun tb!155653 () Bool)

(assert (=> (and b!3185353 (= (toChars!7055 (transformation!5136 (h!41231 rules!2135))) (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621)))))) t!235751) tb!155653))

(declare-fun result!197810 () Bool)

(assert (= result!197810 result!197802))

(assert (=> d!872023 t!235751))

(declare-fun b_and!210997 () Bool)

(assert (= b_and!210971 (and (=> t!235751 result!197810) b_and!210997)))

(declare-fun m!3444917 () Bool)

(assert (=> d!872023 m!3444917))

(declare-fun m!3444919 () Bool)

(assert (=> d!872023 m!3444919))

(assert (=> b!3185676 d!872023))

(declare-fun d!872025 () Bool)

(assert (=> d!872025 (= (list!12713 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (value!166836 separatorToken!241))) (list!12717 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (value!166836 separatorToken!241)))))))

(declare-fun bs!540135 () Bool)

(assert (= bs!540135 d!872025))

(declare-fun m!3444921 () Bool)

(assert (=> bs!540135 m!3444921))

(assert (=> b!3185823 d!872025))

(assert (=> b!3185800 d!871961))

(assert (=> b!3185800 d!871963))

(assert (=> bm!231112 d!871711))

(declare-fun d!872027 () Bool)

(assert (=> d!872027 (= (list!12713 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (value!166836 (h!41230 tokens!494)))) (list!12717 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (value!166836 (h!41230 tokens!494))))))))

(declare-fun bs!540136 () Bool)

(assert (= bs!540136 d!872027))

(declare-fun m!3444923 () Bool)

(assert (=> bs!540136 m!3444923))

(assert (=> b!3185825 d!872027))

(declare-fun d!872029 () Bool)

(declare-fun res!1295810 () Bool)

(declare-fun e!1985960 () Bool)

(assert (=> d!872029 (=> (not res!1295810) (not e!1985960))))

(assert (=> d!872029 (= res!1295810 (rulesValid!1898 thiss!18206 (t!235528 rules!2135)))))

(assert (=> d!872029 (= (rulesInvariant!4122 thiss!18206 (t!235528 rules!2135)) e!1985960)))

(declare-fun b!3187060 () Bool)

(assert (=> b!3187060 (= e!1985960 (noDuplicateTag!1894 thiss!18206 (t!235528 rules!2135) Nil!35812))))

(assert (= (and d!872029 res!1295810) b!3187060))

(declare-fun m!3444925 () Bool)

(assert (=> d!872029 m!3444925))

(declare-fun m!3444927 () Bool)

(assert (=> b!3187060 m!3444927))

(assert (=> b!3186084 d!872029))

(declare-fun d!872031 () Bool)

(assert (=> d!872031 (rulesInvariant!4122 thiss!18206 (t!235528 rules!2135))))

(declare-fun lt!1072365 () Unit!50220)

(declare-fun choose!18612 (LexerInterface!4725 Rule!10072 List!35935) Unit!50220)

(assert (=> d!872031 (= lt!1072365 (choose!18612 thiss!18206 (h!41231 rules!2135) (t!235528 rules!2135)))))

(assert (=> d!872031 (rulesInvariant!4122 thiss!18206 (Cons!35811 (h!41231 rules!2135) (t!235528 rules!2135)))))

(assert (=> d!872031 (= (lemmaInvariantOnRulesThenOnTail!338 thiss!18206 (h!41231 rules!2135) (t!235528 rules!2135)) lt!1072365)))

(declare-fun bs!540137 () Bool)

(assert (= bs!540137 d!872031))

(assert (=> bs!540137 m!3443601))

(declare-fun m!3444987 () Bool)

(assert (=> bs!540137 m!3444987))

(declare-fun m!3444991 () Bool)

(assert (=> bs!540137 m!3444991))

(assert (=> b!3186084 d!872031))

(declare-fun b!3187061 () Bool)

(declare-fun e!1985963 () Bool)

(declare-fun lt!1072368 () Option!7004)

(assert (=> b!3187061 (= e!1985963 (= (tag!5650 (get!11397 lt!1072368)) (tag!5650 (rule!7558 separatorToken!241))))))

(declare-fun b!3187062 () Bool)

(declare-fun e!1985964 () Bool)

(assert (=> b!3187062 (= e!1985964 e!1985963)))

(declare-fun res!1295812 () Bool)

(assert (=> b!3187062 (=> (not res!1295812) (not e!1985963))))

(assert (=> b!3187062 (= res!1295812 (contains!6354 (t!235528 rules!2135) (get!11397 lt!1072368)))))

(declare-fun d!872033 () Bool)

(assert (=> d!872033 e!1985964))

(declare-fun res!1295811 () Bool)

(assert (=> d!872033 (=> res!1295811 e!1985964)))

(assert (=> d!872033 (= res!1295811 (isEmpty!19949 lt!1072368))))

(declare-fun e!1985961 () Option!7004)

(assert (=> d!872033 (= lt!1072368 e!1985961)))

(declare-fun c!535303 () Bool)

(assert (=> d!872033 (= c!535303 (and ((_ is Cons!35811) (t!235528 rules!2135)) (= (tag!5650 (h!41231 (t!235528 rules!2135))) (tag!5650 (rule!7558 separatorToken!241)))))))

(assert (=> d!872033 (rulesInvariant!4122 thiss!18206 (t!235528 rules!2135))))

(assert (=> d!872033 (= (getRuleFromTag!865 thiss!18206 (t!235528 rules!2135) (tag!5650 (rule!7558 separatorToken!241))) lt!1072368)))

(declare-fun b!3187063 () Bool)

(declare-fun e!1985962 () Option!7004)

(assert (=> b!3187063 (= e!1985961 e!1985962)))

(declare-fun c!535304 () Bool)

(assert (=> b!3187063 (= c!535304 (and ((_ is Cons!35811) (t!235528 rules!2135)) (not (= (tag!5650 (h!41231 (t!235528 rules!2135))) (tag!5650 (rule!7558 separatorToken!241))))))))

(declare-fun b!3187064 () Bool)

(assert (=> b!3187064 (= e!1985961 (Some!7003 (h!41231 (t!235528 rules!2135))))))

(declare-fun b!3187065 () Bool)

(assert (=> b!3187065 (= e!1985962 None!7003)))

(declare-fun b!3187066 () Bool)

(declare-fun lt!1072367 () Unit!50220)

(declare-fun lt!1072366 () Unit!50220)

(assert (=> b!3187066 (= lt!1072367 lt!1072366)))

(assert (=> b!3187066 (rulesInvariant!4122 thiss!18206 (t!235528 (t!235528 rules!2135)))))

(assert (=> b!3187066 (= lt!1072366 (lemmaInvariantOnRulesThenOnTail!338 thiss!18206 (h!41231 (t!235528 rules!2135)) (t!235528 (t!235528 rules!2135))))))

(assert (=> b!3187066 (= e!1985962 (getRuleFromTag!865 thiss!18206 (t!235528 (t!235528 rules!2135)) (tag!5650 (rule!7558 separatorToken!241))))))

(assert (= (and d!872033 c!535303) b!3187064))

(assert (= (and d!872033 (not c!535303)) b!3187063))

(assert (= (and b!3187063 c!535304) b!3187066))

(assert (= (and b!3187063 (not c!535304)) b!3187065))

(assert (= (and d!872033 (not res!1295811)) b!3187062))

(assert (= (and b!3187062 res!1295812) b!3187061))

(declare-fun m!3445021 () Bool)

(assert (=> b!3187061 m!3445021))

(assert (=> b!3187062 m!3445021))

(assert (=> b!3187062 m!3445021))

(declare-fun m!3445023 () Bool)

(assert (=> b!3187062 m!3445023))

(declare-fun m!3445025 () Bool)

(assert (=> d!872033 m!3445025))

(assert (=> d!872033 m!3443601))

(declare-fun m!3445027 () Bool)

(assert (=> b!3187066 m!3445027))

(declare-fun m!3445029 () Bool)

(assert (=> b!3187066 m!3445029))

(declare-fun m!3445031 () Bool)

(assert (=> b!3187066 m!3445031))

(assert (=> b!3186084 d!872033))

(declare-fun d!872037 () Bool)

(assert (=> d!872037 (= (isEmpty!19949 lt!1071494) (not ((_ is Some!7003) lt!1071494)))))

(assert (=> d!871567 d!872037))

(declare-fun d!872041 () Bool)

(assert (=> d!872041 (= (isDefined!5486 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 (h!41230 tokens!494))))) (not (isEmpty!19949 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 (h!41230 tokens!494)))))))))

(declare-fun bs!540138 () Bool)

(assert (= bs!540138 d!872041))

(assert (=> bs!540138 m!3442719))

(declare-fun m!3445033 () Bool)

(assert (=> bs!540138 m!3445033))

(assert (=> d!871585 d!872041))

(assert (=> d!871585 d!871561))

(declare-fun d!872043 () Bool)

(declare-fun e!1985970 () Bool)

(assert (=> d!872043 e!1985970))

(declare-fun res!1295824 () Bool)

(assert (=> d!872043 (=> (not res!1295824) (not e!1985970))))

(assert (=> d!872043 (= res!1295824 (isDefined!5486 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 (h!41230 tokens!494))))))))

(assert (=> d!872043 true))

(declare-fun _$52!1487 () Unit!50220)

(assert (=> d!872043 (= (choose!18600 thiss!18206 rules!2135 lt!1071493 (h!41230 tokens!494)) _$52!1487)))

(declare-fun b!3187080 () Bool)

(declare-fun res!1295825 () Bool)

(assert (=> b!3187080 (=> (not res!1295825) (not e!1985970))))

(assert (=> b!3187080 (= res!1295825 (matchR!4553 (regex!5136 (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 (h!41230 tokens!494)))))) (list!12713 (charsOf!3158 (h!41230 tokens!494)))))))

(declare-fun b!3187081 () Bool)

(assert (=> b!3187081 (= e!1985970 (= (rule!7558 (h!41230 tokens!494)) (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 (h!41230 tokens!494)))))))))

(assert (= (and d!872043 res!1295824) b!3187080))

(assert (= (and b!3187080 res!1295825) b!3187081))

(assert (=> d!872043 m!3442719))

(assert (=> d!872043 m!3442719))

(assert (=> d!872043 m!3443683))

(assert (=> b!3187080 m!3442689))

(assert (=> b!3187080 m!3442691))

(assert (=> b!3187080 m!3443687))

(assert (=> b!3187080 m!3442689))

(assert (=> b!3187080 m!3442691))

(assert (=> b!3187080 m!3442719))

(assert (=> b!3187080 m!3442719))

(assert (=> b!3187080 m!3443689))

(assert (=> b!3187081 m!3442719))

(assert (=> b!3187081 m!3442719))

(assert (=> b!3187081 m!3443689))

(assert (=> d!871585 d!872043))

(assert (=> d!871585 d!871489))

(declare-fun d!872047 () Bool)

(declare-fun lt!1072374 () Bool)

(assert (=> d!872047 (= lt!1072374 (select (content!4850 (t!235526 (usedCharacters!480 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) lt!1071495))))

(declare-fun e!1985971 () Bool)

(assert (=> d!872047 (= lt!1072374 e!1985971)))

(declare-fun res!1295826 () Bool)

(assert (=> d!872047 (=> (not res!1295826) (not e!1985971))))

(assert (=> d!872047 (= res!1295826 ((_ is Cons!35809) (t!235526 (usedCharacters!480 (regex!5136 (rule!7558 (h!41230 tokens!494)))))))))

(assert (=> d!872047 (= (contains!6351 (t!235526 (usedCharacters!480 (regex!5136 (rule!7558 (h!41230 tokens!494))))) lt!1071495) lt!1072374)))

(declare-fun b!3187082 () Bool)

(declare-fun e!1985972 () Bool)

(assert (=> b!3187082 (= e!1985971 e!1985972)))

(declare-fun res!1295827 () Bool)

(assert (=> b!3187082 (=> res!1295827 e!1985972)))

(assert (=> b!3187082 (= res!1295827 (= (h!41229 (t!235526 (usedCharacters!480 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) lt!1071495))))

(declare-fun b!3187083 () Bool)

(assert (=> b!3187083 (= e!1985972 (contains!6351 (t!235526 (t!235526 (usedCharacters!480 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) lt!1071495))))

(assert (= (and d!872047 res!1295826) b!3187082))

(assert (= (and b!3187082 (not res!1295827)) b!3187083))

(assert (=> d!872047 m!3444827))

(declare-fun m!3445067 () Bool)

(assert (=> d!872047 m!3445067))

(declare-fun m!3445069 () Bool)

(assert (=> b!3187083 m!3445069))

(assert (=> b!3185655 d!872047))

(assert (=> b!3185780 d!871851))

(assert (=> b!3185780 d!871853))

(declare-fun d!872049 () Bool)

(declare-fun lt!1072375 () Int)

(assert (=> d!872049 (= lt!1072375 (size!27015 (list!12713 (_2!20717 lt!1071699))))))

(assert (=> d!872049 (= lt!1072375 (size!27023 (c!534901 (_2!20717 lt!1071699))))))

(assert (=> d!872049 (= (size!27019 (_2!20717 lt!1071699)) lt!1072375)))

(declare-fun bs!540139 () Bool)

(assert (= bs!540139 d!872049))

(assert (=> bs!540139 m!3443411))

(assert (=> bs!540139 m!3443411))

(declare-fun m!3445071 () Bool)

(assert (=> bs!540139 m!3445071))

(declare-fun m!3445073 () Bool)

(assert (=> bs!540139 m!3445073))

(assert (=> b!3185915 d!872049))

(declare-fun d!872051 () Bool)

(declare-fun lt!1072376 () Int)

(assert (=> d!872051 (= lt!1072376 (size!27015 (list!12713 lt!1071478)))))

(assert (=> d!872051 (= lt!1072376 (size!27023 (c!534901 lt!1071478)))))

(assert (=> d!872051 (= (size!27019 lt!1071478) lt!1072376)))

(declare-fun bs!540140 () Bool)

(assert (= bs!540140 d!872051))

(assert (=> bs!540140 m!3443403))

(assert (=> bs!540140 m!3443403))

(assert (=> bs!540140 m!3444861))

(declare-fun m!3445075 () Bool)

(assert (=> bs!540140 m!3445075))

(assert (=> b!3185915 d!872051))

(declare-fun c!535306 () Bool)

(declare-fun call!231252 () List!35933)

(declare-fun bm!231246 () Bool)

(declare-fun call!231251 () List!35933)

(declare-fun call!231253 () List!35933)

(assert (=> bm!231246 (= call!231252 (++!8566 (ite c!535306 call!231251 call!231253) (ite c!535306 call!231253 call!231251)))))

(declare-fun b!3187084 () Bool)

(declare-fun e!1985976 () List!35933)

(declare-fun e!1985975 () List!35933)

(assert (=> b!3187084 (= e!1985976 e!1985975)))

(assert (=> b!3187084 (= c!535306 ((_ is Union!9895) (ite c!535047 (regOne!20303 (regex!5136 (rule!7558 separatorToken!241))) (regTwo!20302 (regex!5136 (rule!7558 separatorToken!241))))))))

(declare-fun d!872053 () Bool)

(declare-fun c!535308 () Bool)

(assert (=> d!872053 (= c!535308 (or ((_ is EmptyExpr!9895) (ite c!535047 (regOne!20303 (regex!5136 (rule!7558 separatorToken!241))) (regTwo!20302 (regex!5136 (rule!7558 separatorToken!241))))) ((_ is EmptyLang!9895) (ite c!535047 (regOne!20303 (regex!5136 (rule!7558 separatorToken!241))) (regTwo!20302 (regex!5136 (rule!7558 separatorToken!241)))))))))

(declare-fun e!1985974 () List!35933)

(assert (=> d!872053 (= (usedCharacters!480 (ite c!535047 (regOne!20303 (regex!5136 (rule!7558 separatorToken!241))) (regTwo!20302 (regex!5136 (rule!7558 separatorToken!241))))) e!1985974)))

(declare-fun b!3187085 () Bool)

(assert (=> b!3187085 (= e!1985975 call!231252)))

(declare-fun b!3187086 () Bool)

(assert (=> b!3187086 (= e!1985975 call!231252)))

(declare-fun b!3187087 () Bool)

(declare-fun e!1985973 () List!35933)

(assert (=> b!3187087 (= e!1985973 (Cons!35809 (c!534900 (ite c!535047 (regOne!20303 (regex!5136 (rule!7558 separatorToken!241))) (regTwo!20302 (regex!5136 (rule!7558 separatorToken!241))))) Nil!35809))))

(declare-fun bm!231247 () Bool)

(declare-fun c!535309 () Bool)

(declare-fun call!231254 () List!35933)

(assert (=> bm!231247 (= call!231254 (usedCharacters!480 (ite c!535309 (reg!10224 (ite c!535047 (regOne!20303 (regex!5136 (rule!7558 separatorToken!241))) (regTwo!20302 (regex!5136 (rule!7558 separatorToken!241))))) (ite c!535306 (regTwo!20303 (ite c!535047 (regOne!20303 (regex!5136 (rule!7558 separatorToken!241))) (regTwo!20302 (regex!5136 (rule!7558 separatorToken!241))))) (regOne!20302 (ite c!535047 (regOne!20303 (regex!5136 (rule!7558 separatorToken!241))) (regTwo!20302 (regex!5136 (rule!7558 separatorToken!241)))))))))))

(declare-fun bm!231248 () Bool)

(assert (=> bm!231248 (= call!231253 call!231254)))

(declare-fun b!3187088 () Bool)

(assert (=> b!3187088 (= e!1985974 Nil!35809)))

(declare-fun b!3187089 () Bool)

(assert (=> b!3187089 (= e!1985974 e!1985973)))

(declare-fun c!535307 () Bool)

(assert (=> b!3187089 (= c!535307 ((_ is ElementMatch!9895) (ite c!535047 (regOne!20303 (regex!5136 (rule!7558 separatorToken!241))) (regTwo!20302 (regex!5136 (rule!7558 separatorToken!241))))))))

(declare-fun b!3187090 () Bool)

(assert (=> b!3187090 (= c!535309 ((_ is Star!9895) (ite c!535047 (regOne!20303 (regex!5136 (rule!7558 separatorToken!241))) (regTwo!20302 (regex!5136 (rule!7558 separatorToken!241))))))))

(assert (=> b!3187090 (= e!1985973 e!1985976)))

(declare-fun b!3187091 () Bool)

(assert (=> b!3187091 (= e!1985976 call!231254)))

(declare-fun bm!231249 () Bool)

(assert (=> bm!231249 (= call!231251 (usedCharacters!480 (ite c!535306 (regOne!20303 (ite c!535047 (regOne!20303 (regex!5136 (rule!7558 separatorToken!241))) (regTwo!20302 (regex!5136 (rule!7558 separatorToken!241))))) (regTwo!20302 (ite c!535047 (regOne!20303 (regex!5136 (rule!7558 separatorToken!241))) (regTwo!20302 (regex!5136 (rule!7558 separatorToken!241))))))))))

(assert (= (and d!872053 c!535308) b!3187088))

(assert (= (and d!872053 (not c!535308)) b!3187089))

(assert (= (and b!3187089 c!535307) b!3187087))

(assert (= (and b!3187089 (not c!535307)) b!3187090))

(assert (= (and b!3187090 c!535309) b!3187091))

(assert (= (and b!3187090 (not c!535309)) b!3187084))

(assert (= (and b!3187084 c!535306) b!3187085))

(assert (= (and b!3187084 (not c!535306)) b!3187086))

(assert (= (or b!3187085 b!3187086) bm!231248))

(assert (= (or b!3187085 b!3187086) bm!231249))

(assert (= (or b!3187085 b!3187086) bm!231246))

(assert (= (or b!3187091 bm!231248) bm!231247))

(declare-fun m!3445077 () Bool)

(assert (=> bm!231246 m!3445077))

(declare-fun m!3445079 () Bool)

(assert (=> bm!231247 m!3445079))

(declare-fun m!3445081 () Bool)

(assert (=> bm!231249 m!3445081))

(assert (=> bm!231125 d!872053))

(declare-fun d!872055 () Bool)

(declare-fun c!535310 () Bool)

(assert (=> d!872055 (= c!535310 ((_ is Nil!35809) (usedCharacters!480 (regex!5136 (rule!7558 separatorToken!241)))))))

(declare-fun e!1985977 () (InoxSet C!19976))

(assert (=> d!872055 (= (content!4850 (usedCharacters!480 (regex!5136 (rule!7558 separatorToken!241)))) e!1985977)))

(declare-fun b!3187092 () Bool)

(assert (=> b!3187092 (= e!1985977 ((as const (Array C!19976 Bool)) false))))

(declare-fun b!3187093 () Bool)

(assert (=> b!3187093 (= e!1985977 ((_ map or) (store ((as const (Array C!19976 Bool)) false) (h!41229 (usedCharacters!480 (regex!5136 (rule!7558 separatorToken!241)))) true) (content!4850 (t!235526 (usedCharacters!480 (regex!5136 (rule!7558 separatorToken!241)))))))))

(assert (= (and d!872055 c!535310) b!3187092))

(assert (= (and d!872055 (not c!535310)) b!3187093))

(declare-fun m!3445083 () Bool)

(assert (=> b!3187093 m!3445083))

(declare-fun m!3445085 () Bool)

(assert (=> b!3187093 m!3445085))

(assert (=> d!871569 d!872055))

(declare-fun d!872057 () Bool)

(assert (=> d!872057 (= (isEmpty!19943 lt!1071771) (not ((_ is Some!7002) lt!1071771)))))

(assert (=> d!871573 d!872057))

(declare-fun d!872059 () Bool)

(assert (=> d!872059 (= (isEmpty!19939 (_1!20722 lt!1071772)) ((_ is Nil!35809) (_1!20722 lt!1071772)))))

(assert (=> d!871573 d!872059))

(declare-fun d!872061 () Bool)

(declare-fun lt!1072405 () tuple2!35176)

(assert (=> d!872061 (= (++!8566 (_1!20722 lt!1072405) (_2!20722 lt!1072405)) lt!1071493)))

(declare-fun sizeTr!150 (List!35933 Int) Int)

(assert (=> d!872061 (= lt!1072405 (findLongestMatchInner!819 (regex!5136 (rule!7558 (h!41230 tokens!494))) Nil!35809 0 lt!1071493 lt!1071493 (sizeTr!150 lt!1071493 0)))))

(declare-fun lt!1072399 () Unit!50220)

(declare-fun lt!1072401 () Unit!50220)

(assert (=> d!872061 (= lt!1072399 lt!1072401)))

(declare-fun lt!1072404 () List!35933)

(declare-fun lt!1072398 () Int)

(assert (=> d!872061 (= (sizeTr!150 lt!1072404 lt!1072398) (+ (size!27015 lt!1072404) lt!1072398))))

(declare-fun lemmaSizeTrEqualsSize!149 (List!35933 Int) Unit!50220)

(assert (=> d!872061 (= lt!1072401 (lemmaSizeTrEqualsSize!149 lt!1072404 lt!1072398))))

(assert (=> d!872061 (= lt!1072398 0)))

(assert (=> d!872061 (= lt!1072404 Nil!35809)))

(declare-fun lt!1072400 () Unit!50220)

(declare-fun lt!1072402 () Unit!50220)

(assert (=> d!872061 (= lt!1072400 lt!1072402)))

(declare-fun lt!1072403 () Int)

(assert (=> d!872061 (= (sizeTr!150 lt!1071493 lt!1072403) (+ (size!27015 lt!1071493) lt!1072403))))

(assert (=> d!872061 (= lt!1072402 (lemmaSizeTrEqualsSize!149 lt!1071493 lt!1072403))))

(assert (=> d!872061 (= lt!1072403 0)))

(assert (=> d!872061 (validRegex!4538 (regex!5136 (rule!7558 (h!41230 tokens!494))))))

(assert (=> d!872061 (= (findLongestMatch!734 (regex!5136 (rule!7558 (h!41230 tokens!494))) lt!1071493) lt!1072405)))

(declare-fun bs!540144 () Bool)

(assert (= bs!540144 d!872061))

(declare-fun m!3445107 () Bool)

(assert (=> bs!540144 m!3445107))

(declare-fun m!3445109 () Bool)

(assert (=> bs!540144 m!3445109))

(declare-fun m!3445111 () Bool)

(assert (=> bs!540144 m!3445111))

(assert (=> bs!540144 m!3444003))

(declare-fun m!3445113 () Bool)

(assert (=> bs!540144 m!3445113))

(declare-fun m!3445115 () Bool)

(assert (=> bs!540144 m!3445115))

(declare-fun m!3445117 () Bool)

(assert (=> bs!540144 m!3445117))

(assert (=> bs!540144 m!3445109))

(declare-fun m!3445119 () Bool)

(assert (=> bs!540144 m!3445119))

(assert (=> bs!540144 m!3442715))

(declare-fun m!3445121 () Bool)

(assert (=> bs!540144 m!3445121))

(assert (=> d!871573 d!872061))

(declare-fun d!872077 () Bool)

(declare-fun res!1295835 () Bool)

(declare-fun e!1985987 () Bool)

(assert (=> d!872077 (=> (not res!1295835) (not e!1985987))))

(assert (=> d!872077 (= res!1295835 (validRegex!4538 (regex!5136 (rule!7558 (h!41230 tokens!494)))))))

(assert (=> d!872077 (= (ruleValid!1630 thiss!18206 (rule!7558 (h!41230 tokens!494))) e!1985987)))

(declare-fun b!3187111 () Bool)

(declare-fun res!1295836 () Bool)

(assert (=> b!3187111 (=> (not res!1295836) (not e!1985987))))

(assert (=> b!3187111 (= res!1295836 (not (nullable!3386 (regex!5136 (rule!7558 (h!41230 tokens!494))))))))

(declare-fun b!3187112 () Bool)

(assert (=> b!3187112 (= e!1985987 (not (= (tag!5650 (rule!7558 (h!41230 tokens!494))) (String!40165 ""))))))

(assert (= (and d!872077 res!1295835) b!3187111))

(assert (= (and b!3187111 res!1295836) b!3187112))

(assert (=> d!872077 m!3444003))

(assert (=> b!3187111 m!3444053))

(assert (=> d!871573 d!872077))

(declare-fun d!872085 () Bool)

(assert (=> d!872085 (= (isEmpty!19943 lt!1071621) (not ((_ is Some!7002) lt!1071621)))))

(assert (=> d!871427 d!872085))

(declare-fun b!3187115 () Bool)

(declare-fun e!1985989 () Bool)

(assert (=> b!3187115 (= e!1985989 (isPrefix!2771 (tail!5184 lt!1071470) (tail!5184 lt!1071470)))))

(declare-fun b!3187116 () Bool)

(declare-fun e!1985990 () Bool)

(assert (=> b!3187116 (= e!1985990 (>= (size!27015 lt!1071470) (size!27015 lt!1071470)))))

(declare-fun b!3187114 () Bool)

(declare-fun res!1295840 () Bool)

(assert (=> b!3187114 (=> (not res!1295840) (not e!1985989))))

(assert (=> b!3187114 (= res!1295840 (= (head!6967 lt!1071470) (head!6967 lt!1071470)))))

(declare-fun b!3187113 () Bool)

(declare-fun e!1985988 () Bool)

(assert (=> b!3187113 (= e!1985988 e!1985989)))

(declare-fun res!1295839 () Bool)

(assert (=> b!3187113 (=> (not res!1295839) (not e!1985989))))

(assert (=> b!3187113 (= res!1295839 (not ((_ is Nil!35809) lt!1071470)))))

(declare-fun d!872087 () Bool)

(assert (=> d!872087 e!1985990))

(declare-fun res!1295837 () Bool)

(assert (=> d!872087 (=> res!1295837 e!1985990)))

(declare-fun lt!1072409 () Bool)

(assert (=> d!872087 (= res!1295837 (not lt!1072409))))

(assert (=> d!872087 (= lt!1072409 e!1985988)))

(declare-fun res!1295838 () Bool)

(assert (=> d!872087 (=> res!1295838 e!1985988)))

(assert (=> d!872087 (= res!1295838 ((_ is Nil!35809) lt!1071470))))

(assert (=> d!872087 (= (isPrefix!2771 lt!1071470 lt!1071470) lt!1072409)))

(assert (= (and d!872087 (not res!1295838)) b!3187113))

(assert (= (and b!3187113 res!1295839) b!3187114))

(assert (= (and b!3187114 res!1295840) b!3187115))

(assert (= (and d!872087 (not res!1295837)) b!3187116))

(declare-fun m!3445129 () Bool)

(assert (=> b!3187115 m!3445129))

(assert (=> b!3187115 m!3445129))

(assert (=> b!3187115 m!3445129))

(assert (=> b!3187115 m!3445129))

(declare-fun m!3445131 () Bool)

(assert (=> b!3187115 m!3445131))

(assert (=> b!3187116 m!3443107))

(assert (=> b!3187116 m!3443107))

(declare-fun m!3445133 () Bool)

(assert (=> b!3187114 m!3445133))

(assert (=> b!3187114 m!3445133))

(assert (=> d!871427 d!872087))

(declare-fun d!872089 () Bool)

(assert (=> d!872089 (isPrefix!2771 lt!1071470 lt!1071470)))

(declare-fun lt!1072412 () Unit!50220)

(assert (=> d!872089 (= lt!1072412 (choose!18611 lt!1071470 lt!1071470))))

(assert (=> d!872089 (= (lemmaIsPrefixRefl!1730 lt!1071470 lt!1071470) lt!1072412)))

(declare-fun bs!540147 () Bool)

(assert (= bs!540147 d!872089))

(assert (=> bs!540147 m!3443091))

(declare-fun m!3445135 () Bool)

(assert (=> bs!540147 m!3445135))

(assert (=> d!871427 d!872089))

(assert (=> d!871427 d!871977))

(declare-fun b!3187123 () Bool)

(declare-fun res!1295845 () Bool)

(declare-fun e!1985996 () Bool)

(assert (=> b!3187123 (=> (not res!1295845) (not e!1985996))))

(declare-fun lt!1072413 () List!35933)

(assert (=> b!3187123 (= res!1295845 (= (size!27015 lt!1072413) (+ (size!27015 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071621))))) (size!27015 (_2!20718 (get!11399 lt!1071621))))))))

(declare-fun b!3187122 () Bool)

(declare-fun e!1985995 () List!35933)

(assert (=> b!3187122 (= e!1985995 (Cons!35809 (h!41229 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071621))))) (++!8566 (t!235526 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071621))))) (_2!20718 (get!11399 lt!1071621)))))))

(declare-fun b!3187121 () Bool)

(assert (=> b!3187121 (= e!1985995 (_2!20718 (get!11399 lt!1071621)))))

(declare-fun b!3187124 () Bool)

(assert (=> b!3187124 (= e!1985996 (or (not (= (_2!20718 (get!11399 lt!1071621)) Nil!35809)) (= lt!1072413 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071621)))))))))

(declare-fun d!872091 () Bool)

(assert (=> d!872091 e!1985996))

(declare-fun res!1295846 () Bool)

(assert (=> d!872091 (=> (not res!1295846) (not e!1985996))))

(assert (=> d!872091 (= res!1295846 (= (content!4850 lt!1072413) ((_ map or) (content!4850 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071621))))) (content!4850 (_2!20718 (get!11399 lt!1071621))))))))

(assert (=> d!872091 (= lt!1072413 e!1985995)))

(declare-fun c!535316 () Bool)

(assert (=> d!872091 (= c!535316 ((_ is Nil!35809) (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071621))))))))

(assert (=> d!872091 (= (++!8566 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071621)))) (_2!20718 (get!11399 lt!1071621))) lt!1072413)))

(assert (= (and d!872091 c!535316) b!3187121))

(assert (= (and d!872091 (not c!535316)) b!3187122))

(assert (= (and d!872091 res!1295846) b!3187123))

(assert (= (and b!3187123 res!1295845) b!3187124))

(declare-fun m!3445137 () Bool)

(assert (=> b!3187123 m!3445137))

(assert (=> b!3187123 m!3443079))

(declare-fun m!3445139 () Bool)

(assert (=> b!3187123 m!3445139))

(assert (=> b!3187123 m!3443105))

(declare-fun m!3445141 () Bool)

(assert (=> b!3187122 m!3445141))

(declare-fun m!3445143 () Bool)

(assert (=> d!872091 m!3445143))

(assert (=> d!872091 m!3443079))

(declare-fun m!3445145 () Bool)

(assert (=> d!872091 m!3445145))

(declare-fun m!3445147 () Bool)

(assert (=> d!872091 m!3445147))

(assert (=> b!3185680 d!872091))

(assert (=> b!3185680 d!872021))

(assert (=> b!3185680 d!872023))

(assert (=> b!3185680 d!871825))

(declare-fun d!872093 () Bool)

(assert (=> d!872093 (= (isEmpty!19939 (originalCharacters!5850 separatorToken!241)) ((_ is Nil!35809) (originalCharacters!5850 separatorToken!241)))))

(assert (=> d!871479 d!872093))

(declare-fun d!872095 () Bool)

(assert (=> d!872095 (= (head!6967 lt!1071493) (h!41229 lt!1071493))))

(assert (=> b!3185768 d!872095))

(declare-fun d!872097 () Bool)

(assert (=> d!872097 (= (nullable!3386 (regex!5136 (rule!7558 separatorToken!241))) (nullableFct!958 (regex!5136 (rule!7558 separatorToken!241))))))

(declare-fun bs!540148 () Bool)

(assert (= bs!540148 d!872097))

(declare-fun m!3445151 () Bool)

(assert (=> bs!540148 m!3445151))

(assert (=> b!3185881 d!872097))

(declare-fun bs!540149 () Bool)

(declare-fun d!872099 () Bool)

(assert (= bs!540149 (and d!872099 d!871789)))

(declare-fun lambda!116577 () Int)

(assert (=> bs!540149 (= (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (toValue!7196 (transformation!5136 (h!41231 rules!2135)))) (= lambda!116577 lambda!116557))))

(declare-fun bs!540150 () Bool)

(assert (= bs!540150 (and d!872099 d!871969)))

(assert (=> bs!540150 (= (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (toValue!7196 (transformation!5136 (rule!7558 separatorToken!241)))) (= lambda!116577 lambda!116566))))

(assert (=> d!872099 true))

(assert (=> d!872099 (< (dynLambda!14448 order!18239 (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) (dynLambda!14461 order!18257 lambda!116577))))

(assert (=> d!872099 (= (equivClasses!2038 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) (Forall2!852 lambda!116577))))

(declare-fun bs!540151 () Bool)

(assert (= bs!540151 d!872099))

(declare-fun m!3445157 () Bool)

(assert (=> bs!540151 m!3445157))

(assert (=> b!3185732 d!872099))

(declare-fun d!872103 () Bool)

(declare-fun lt!1072416 () List!35933)

(assert (=> d!872103 (= (++!8566 (t!235526 lt!1071493) lt!1072416) (tail!5184 lt!1071493))))

(declare-fun e!1986006 () List!35933)

(assert (=> d!872103 (= lt!1072416 e!1986006)))

(declare-fun c!535320 () Bool)

(assert (=> d!872103 (= c!535320 ((_ is Cons!35809) (t!235526 lt!1071493)))))

(assert (=> d!872103 (>= (size!27015 (tail!5184 lt!1071493)) (size!27015 (t!235526 lt!1071493)))))

(assert (=> d!872103 (= (getSuffix!1352 (tail!5184 lt!1071493) (t!235526 lt!1071493)) lt!1072416)))

(declare-fun b!3187141 () Bool)

(assert (=> b!3187141 (= e!1986006 (getSuffix!1352 (tail!5184 (tail!5184 lt!1071493)) (t!235526 (t!235526 lt!1071493))))))

(declare-fun b!3187142 () Bool)

(assert (=> b!3187142 (= e!1986006 (tail!5184 lt!1071493))))

(assert (= (and d!872103 c!535320) b!3187141))

(assert (= (and d!872103 (not c!535320)) b!3187142))

(declare-fun m!3445162 () Bool)

(assert (=> d!872103 m!3445162))

(assert (=> d!872103 m!3443205))

(declare-fun m!3445165 () Bool)

(assert (=> d!872103 m!3445165))

(assert (=> d!872103 m!3443671))

(assert (=> b!3187141 m!3443205))

(declare-fun m!3445169 () Bool)

(assert (=> b!3187141 m!3445169))

(assert (=> b!3187141 m!3445169))

(declare-fun m!3445173 () Bool)

(assert (=> b!3187141 m!3445173))

(assert (=> b!3186053 d!872103))

(assert (=> b!3186053 d!871853))

(declare-fun d!872105 () Bool)

(assert (=> d!872105 (= (isEmpty!19949 lt!1071755) (not ((_ is Some!7003) lt!1071755)))))

(assert (=> d!871563 d!872105))

(assert (=> d!871563 d!871489))

(declare-fun d!872107 () Bool)

(assert (=> d!872107 (= (inv!16 (value!166836 separatorToken!241)) (= (charsToInt!0 (text!38009 (value!166836 separatorToken!241))) (value!166827 (value!166836 separatorToken!241))))))

(declare-fun bs!540152 () Bool)

(assert (= bs!540152 d!872107))

(declare-fun m!3445177 () Bool)

(assert (=> bs!540152 m!3445177))

(assert (=> b!3185731 d!872107))

(declare-fun d!872109 () Bool)

(declare-fun c!535321 () Bool)

(assert (=> d!872109 (= c!535321 ((_ is Node!10647) (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (value!166836 (h!41230 tokens!494))))))))

(declare-fun e!1986007 () Bool)

(assert (=> d!872109 (= (inv!48663 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (value!166836 (h!41230 tokens!494))))) e!1986007)))

(declare-fun b!3187143 () Bool)

(assert (=> b!3187143 (= e!1986007 (inv!48667 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (value!166836 (h!41230 tokens!494))))))))

(declare-fun b!3187144 () Bool)

(declare-fun e!1986008 () Bool)

(assert (=> b!3187144 (= e!1986007 e!1986008)))

(declare-fun res!1295857 () Bool)

(assert (=> b!3187144 (= res!1295857 (not ((_ is Leaf!16826) (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (value!166836 (h!41230 tokens!494)))))))))

(assert (=> b!3187144 (=> res!1295857 e!1986008)))

(declare-fun b!3187145 () Bool)

(assert (=> b!3187145 (= e!1986008 (inv!48668 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (value!166836 (h!41230 tokens!494))))))))

(assert (= (and d!872109 c!535321) b!3187143))

(assert (= (and d!872109 (not c!535321)) b!3187144))

(assert (= (and b!3187144 (not res!1295857)) b!3187145))

(declare-fun m!3445181 () Bool)

(assert (=> b!3187143 m!3445181))

(declare-fun m!3445183 () Bool)

(assert (=> b!3187145 m!3445183))

(assert (=> b!3185827 d!872109))

(declare-fun b!3187146 () Bool)

(declare-fun res!1295861 () Bool)

(declare-fun e!1986010 () Bool)

(assert (=> b!3187146 (=> (not res!1295861) (not e!1986010))))

(declare-fun lt!1072421 () Option!7003)

(assert (=> b!3187146 (= res!1295861 (= (value!166836 (_1!20718 (get!11399 lt!1072421))) (apply!8064 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1072421)))) (seqFromList!3351 (originalCharacters!5850 (_1!20718 (get!11399 lt!1072421)))))))))

(declare-fun bm!231251 () Bool)

(declare-fun call!231256 () Option!7003)

(assert (=> bm!231251 (= call!231256 (maxPrefixOneRule!1530 thiss!18206 (h!41231 (t!235528 rules!2135)) lt!1071473))))

(declare-fun b!3187147 () Bool)

(declare-fun e!1986011 () Option!7003)

(assert (=> b!3187147 (= e!1986011 call!231256)))

(declare-fun b!3187148 () Bool)

(declare-fun res!1295862 () Bool)

(assert (=> b!3187148 (=> (not res!1295862) (not e!1986010))))

(assert (=> b!3187148 (= res!1295862 (matchR!4553 (regex!5136 (rule!7558 (_1!20718 (get!11399 lt!1072421)))) (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1072421))))))))

(declare-fun d!872113 () Bool)

(declare-fun e!1986009 () Bool)

(assert (=> d!872113 e!1986009))

(declare-fun res!1295860 () Bool)

(assert (=> d!872113 (=> res!1295860 e!1986009)))

(assert (=> d!872113 (= res!1295860 (isEmpty!19943 lt!1072421))))

(assert (=> d!872113 (= lt!1072421 e!1986011)))

(declare-fun c!535322 () Bool)

(assert (=> d!872113 (= c!535322 (and ((_ is Cons!35811) (t!235528 rules!2135)) ((_ is Nil!35811) (t!235528 (t!235528 rules!2135)))))))

(declare-fun lt!1072419 () Unit!50220)

(declare-fun lt!1072417 () Unit!50220)

(assert (=> d!872113 (= lt!1072419 lt!1072417)))

(assert (=> d!872113 (isPrefix!2771 lt!1071473 lt!1071473)))

(assert (=> d!872113 (= lt!1072417 (lemmaIsPrefixRefl!1730 lt!1071473 lt!1071473))))

(assert (=> d!872113 (rulesValidInductive!1760 thiss!18206 (t!235528 rules!2135))))

(assert (=> d!872113 (= (maxPrefix!2403 thiss!18206 (t!235528 rules!2135) lt!1071473) lt!1072421)))

(declare-fun b!3187149 () Bool)

(declare-fun res!1295858 () Bool)

(assert (=> b!3187149 (=> (not res!1295858) (not e!1986010))))

(assert (=> b!3187149 (= res!1295858 (< (size!27015 (_2!20718 (get!11399 lt!1072421))) (size!27015 lt!1071473)))))

(declare-fun b!3187150 () Bool)

(declare-fun res!1295864 () Bool)

(assert (=> b!3187150 (=> (not res!1295864) (not e!1986010))))

(assert (=> b!3187150 (= res!1295864 (= (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1072421)))) (originalCharacters!5850 (_1!20718 (get!11399 lt!1072421)))))))

(declare-fun b!3187151 () Bool)

(declare-fun lt!1072418 () Option!7003)

(declare-fun lt!1072420 () Option!7003)

(assert (=> b!3187151 (= e!1986011 (ite (and ((_ is None!7002) lt!1072418) ((_ is None!7002) lt!1072420)) None!7002 (ite ((_ is None!7002) lt!1072420) lt!1072418 (ite ((_ is None!7002) lt!1072418) lt!1072420 (ite (>= (size!27014 (_1!20718 (v!35480 lt!1072418))) (size!27014 (_1!20718 (v!35480 lt!1072420)))) lt!1072418 lt!1072420)))))))

(assert (=> b!3187151 (= lt!1072418 call!231256)))

(assert (=> b!3187151 (= lt!1072420 (maxPrefix!2403 thiss!18206 (t!235528 (t!235528 rules!2135)) lt!1071473))))

(declare-fun b!3187152 () Bool)

(declare-fun res!1295863 () Bool)

(assert (=> b!3187152 (=> (not res!1295863) (not e!1986010))))

(assert (=> b!3187152 (= res!1295863 (= (++!8566 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1072421)))) (_2!20718 (get!11399 lt!1072421))) lt!1071473))))

(declare-fun b!3187153 () Bool)

(assert (=> b!3187153 (= e!1986010 (contains!6354 (t!235528 rules!2135) (rule!7558 (_1!20718 (get!11399 lt!1072421)))))))

(declare-fun b!3187154 () Bool)

(assert (=> b!3187154 (= e!1986009 e!1986010)))

(declare-fun res!1295859 () Bool)

(assert (=> b!3187154 (=> (not res!1295859) (not e!1986010))))

(assert (=> b!3187154 (= res!1295859 (isDefined!5485 lt!1072421))))

(assert (= (and d!872113 c!535322) b!3187147))

(assert (= (and d!872113 (not c!535322)) b!3187151))

(assert (= (or b!3187147 b!3187151) bm!231251))

(assert (= (and d!872113 (not res!1295860)) b!3187154))

(assert (= (and b!3187154 res!1295859) b!3187150))

(assert (= (and b!3187150 res!1295864) b!3187149))

(assert (= (and b!3187149 res!1295858) b!3187152))

(assert (= (and b!3187152 res!1295863) b!3187146))

(assert (= (and b!3187146 res!1295861) b!3187148))

(assert (= (and b!3187148 res!1295862) b!3187153))

(declare-fun m!3445195 () Bool)

(assert (=> b!3187148 m!3445195))

(declare-fun m!3445197 () Bool)

(assert (=> b!3187148 m!3445197))

(assert (=> b!3187148 m!3445197))

(declare-fun m!3445199 () Bool)

(assert (=> b!3187148 m!3445199))

(assert (=> b!3187148 m!3445199))

(declare-fun m!3445201 () Bool)

(assert (=> b!3187148 m!3445201))

(declare-fun m!3445203 () Bool)

(assert (=> b!3187154 m!3445203))

(assert (=> b!3187152 m!3445195))

(assert (=> b!3187152 m!3445197))

(assert (=> b!3187152 m!3445197))

(assert (=> b!3187152 m!3445199))

(assert (=> b!3187152 m!3445199))

(declare-fun m!3445205 () Bool)

(assert (=> b!3187152 m!3445205))

(declare-fun m!3445207 () Bool)

(assert (=> b!3187151 m!3445207))

(declare-fun m!3445209 () Bool)

(assert (=> d!872113 m!3445209))

(assert (=> d!872113 m!3443125))

(assert (=> d!872113 m!3443127))

(assert (=> d!872113 m!3444793))

(declare-fun m!3445211 () Bool)

(assert (=> bm!231251 m!3445211))

(assert (=> b!3187146 m!3445195))

(declare-fun m!3445213 () Bool)

(assert (=> b!3187146 m!3445213))

(assert (=> b!3187146 m!3445213))

(declare-fun m!3445215 () Bool)

(assert (=> b!3187146 m!3445215))

(assert (=> b!3187153 m!3445195))

(declare-fun m!3445217 () Bool)

(assert (=> b!3187153 m!3445217))

(assert (=> b!3187149 m!3445195))

(declare-fun m!3445219 () Bool)

(assert (=> b!3187149 m!3445219))

(assert (=> b!3187149 m!3443139))

(assert (=> b!3187150 m!3445195))

(assert (=> b!3187150 m!3445197))

(assert (=> b!3187150 m!3445197))

(assert (=> b!3187150 m!3445199))

(assert (=> b!3185688 d!872113))

(declare-fun b!3187156 () Bool)

(declare-fun e!1986017 () Bool)

(declare-fun e!1986019 () Bool)

(assert (=> b!3187156 (= e!1986017 e!1986019)))

(declare-fun res!1295866 () Bool)

(assert (=> b!3187156 (=> (not res!1295866) (not e!1986019))))

(declare-fun lt!1072425 () Bool)

(assert (=> b!3187156 (= res!1295866 (not lt!1072425))))

(declare-fun b!3187157 () Bool)

(declare-fun e!1986016 () Bool)

(assert (=> b!3187157 (= e!1986016 (not (= (head!6967 (tail!5184 lt!1071487)) (c!534900 (derivativeStep!2939 (regex!5136 lt!1071491) (head!6967 lt!1071487))))))))

(declare-fun b!3187158 () Bool)

(declare-fun res!1295868 () Bool)

(assert (=> b!3187158 (=> res!1295868 e!1986016)))

(assert (=> b!3187158 (= res!1295868 (not (isEmpty!19939 (tail!5184 (tail!5184 lt!1071487)))))))

(declare-fun d!872119 () Bool)

(declare-fun e!1986013 () Bool)

(assert (=> d!872119 e!1986013))

(declare-fun c!535324 () Bool)

(assert (=> d!872119 (= c!535324 ((_ is EmptyExpr!9895) (derivativeStep!2939 (regex!5136 lt!1071491) (head!6967 lt!1071487))))))

(declare-fun e!1986018 () Bool)

(assert (=> d!872119 (= lt!1072425 e!1986018)))

(declare-fun c!535323 () Bool)

(assert (=> d!872119 (= c!535323 (isEmpty!19939 (tail!5184 lt!1071487)))))

(assert (=> d!872119 (validRegex!4538 (derivativeStep!2939 (regex!5136 lt!1071491) (head!6967 lt!1071487)))))

(assert (=> d!872119 (= (matchR!4553 (derivativeStep!2939 (regex!5136 lt!1071491) (head!6967 lt!1071487)) (tail!5184 lt!1071487)) lt!1072425)))

(declare-fun bm!231252 () Bool)

(declare-fun call!231257 () Bool)

(assert (=> bm!231252 (= call!231257 (isEmpty!19939 (tail!5184 lt!1071487)))))

(declare-fun b!3187159 () Bool)

(declare-fun res!1295865 () Bool)

(declare-fun e!1986014 () Bool)

(assert (=> b!3187159 (=> (not res!1295865) (not e!1986014))))

(assert (=> b!3187159 (= res!1295865 (not call!231257))))

(declare-fun b!3187160 () Bool)

(assert (=> b!3187160 (= e!1986018 (matchR!4553 (derivativeStep!2939 (derivativeStep!2939 (regex!5136 lt!1071491) (head!6967 lt!1071487)) (head!6967 (tail!5184 lt!1071487))) (tail!5184 (tail!5184 lt!1071487))))))

(declare-fun b!3187161 () Bool)

(declare-fun res!1295870 () Bool)

(assert (=> b!3187161 (=> res!1295870 e!1986017)))

(assert (=> b!3187161 (= res!1295870 (not ((_ is ElementMatch!9895) (derivativeStep!2939 (regex!5136 lt!1071491) (head!6967 lt!1071487)))))))

(declare-fun e!1986015 () Bool)

(assert (=> b!3187161 (= e!1986015 e!1986017)))

(declare-fun b!3187162 () Bool)

(assert (=> b!3187162 (= e!1986018 (nullable!3386 (derivativeStep!2939 (regex!5136 lt!1071491) (head!6967 lt!1071487))))))

(declare-fun b!3187163 () Bool)

(assert (=> b!3187163 (= e!1986019 e!1986016)))

(declare-fun res!1295867 () Bool)

(assert (=> b!3187163 (=> res!1295867 e!1986016)))

(assert (=> b!3187163 (= res!1295867 call!231257)))

(declare-fun b!3187164 () Bool)

(assert (=> b!3187164 (= e!1986014 (= (head!6967 (tail!5184 lt!1071487)) (c!534900 (derivativeStep!2939 (regex!5136 lt!1071491) (head!6967 lt!1071487)))))))

(declare-fun b!3187165 () Bool)

(assert (=> b!3187165 (= e!1986013 e!1986015)))

(declare-fun c!535325 () Bool)

(assert (=> b!3187165 (= c!535325 ((_ is EmptyLang!9895) (derivativeStep!2939 (regex!5136 lt!1071491) (head!6967 lt!1071487))))))

(declare-fun b!3187166 () Bool)

(assert (=> b!3187166 (= e!1986015 (not lt!1072425))))

(declare-fun b!3187167 () Bool)

(declare-fun res!1295869 () Bool)

(assert (=> b!3187167 (=> res!1295869 e!1986017)))

(assert (=> b!3187167 (= res!1295869 e!1986014)))

(declare-fun res!1295871 () Bool)

(assert (=> b!3187167 (=> (not res!1295871) (not e!1986014))))

(assert (=> b!3187167 (= res!1295871 lt!1072425)))

(declare-fun b!3187168 () Bool)

(assert (=> b!3187168 (= e!1986013 (= lt!1072425 call!231257))))

(declare-fun b!3187169 () Bool)

(declare-fun res!1295872 () Bool)

(assert (=> b!3187169 (=> (not res!1295872) (not e!1986014))))

(assert (=> b!3187169 (= res!1295872 (isEmpty!19939 (tail!5184 (tail!5184 lt!1071487))))))

(assert (= (and d!872119 c!535323) b!3187162))

(assert (= (and d!872119 (not c!535323)) b!3187160))

(assert (= (and d!872119 c!535324) b!3187168))

(assert (= (and d!872119 (not c!535324)) b!3187165))

(assert (= (and b!3187165 c!535325) b!3187166))

(assert (= (and b!3187165 (not c!535325)) b!3187161))

(assert (= (and b!3187161 (not res!1295870)) b!3187167))

(assert (= (and b!3187167 res!1295871) b!3187159))

(assert (= (and b!3187159 res!1295865) b!3187169))

(assert (= (and b!3187169 res!1295872) b!3187164))

(assert (= (and b!3187167 (not res!1295869)) b!3187156))

(assert (= (and b!3187156 res!1295866) b!3187163))

(assert (= (and b!3187163 (not res!1295867)) b!3187158))

(assert (= (and b!3187158 (not res!1295868)) b!3187157))

(assert (= (or b!3187168 b!3187159 b!3187163) bm!231252))

(assert (=> b!3187160 m!3443223))

(declare-fun m!3445227 () Bool)

(assert (=> b!3187160 m!3445227))

(assert (=> b!3187160 m!3443221))

(assert (=> b!3187160 m!3445227))

(declare-fun m!3445229 () Bool)

(assert (=> b!3187160 m!3445229))

(assert (=> b!3187160 m!3443223))

(declare-fun m!3445231 () Bool)

(assert (=> b!3187160 m!3445231))

(assert (=> b!3187160 m!3445229))

(assert (=> b!3187160 m!3445231))

(declare-fun m!3445233 () Bool)

(assert (=> b!3187160 m!3445233))

(assert (=> b!3187158 m!3443223))

(assert (=> b!3187158 m!3445231))

(assert (=> b!3187158 m!3445231))

(declare-fun m!3445235 () Bool)

(assert (=> b!3187158 m!3445235))

(assert (=> b!3187169 m!3443223))

(assert (=> b!3187169 m!3445231))

(assert (=> b!3187169 m!3445231))

(assert (=> b!3187169 m!3445235))

(assert (=> d!872119 m!3443223))

(assert (=> d!872119 m!3443227))

(assert (=> d!872119 m!3443221))

(declare-fun m!3445237 () Bool)

(assert (=> d!872119 m!3445237))

(assert (=> b!3187164 m!3443223))

(assert (=> b!3187164 m!3445227))

(assert (=> bm!231252 m!3443223))

(assert (=> bm!231252 m!3443227))

(assert (=> b!3187162 m!3443221))

(declare-fun m!3445239 () Bool)

(assert (=> b!3187162 m!3445239))

(assert (=> b!3187157 m!3443223))

(assert (=> b!3187157 m!3445227))

(assert (=> b!3185791 d!872119))

(declare-fun bm!231262 () Bool)

(declare-fun call!231268 () Regex!9895)

(declare-fun call!231270 () Regex!9895)

(assert (=> bm!231262 (= call!231268 call!231270)))

(declare-fun b!3187204 () Bool)

(declare-fun e!1986037 () Regex!9895)

(assert (=> b!3187204 (= e!1986037 (Concat!15261 call!231270 (regex!5136 lt!1071491)))))

(declare-fun bm!231263 () Bool)

(declare-fun call!231269 () Regex!9895)

(assert (=> bm!231263 (= call!231270 call!231269)))

(declare-fun b!3187205 () Bool)

(declare-fun e!1986041 () Regex!9895)

(assert (=> b!3187205 (= e!1986041 e!1986037)))

(declare-fun c!535338 () Bool)

(assert (=> b!3187205 (= c!535338 ((_ is Star!9895) (regex!5136 lt!1071491)))))

(declare-fun b!3187206 () Bool)

(declare-fun e!1986040 () Regex!9895)

(declare-fun e!1986038 () Regex!9895)

(assert (=> b!3187206 (= e!1986040 e!1986038)))

(declare-fun c!535342 () Bool)

(assert (=> b!3187206 (= c!535342 ((_ is ElementMatch!9895) (regex!5136 lt!1071491)))))

(declare-fun b!3187207 () Bool)

(assert (=> b!3187207 (= e!1986038 (ite (= (head!6967 lt!1071487) (c!534900 (regex!5136 lt!1071491))) EmptyExpr!9895 EmptyLang!9895))))

(declare-fun e!1986039 () Regex!9895)

(declare-fun b!3187208 () Bool)

(declare-fun call!231267 () Regex!9895)

(assert (=> b!3187208 (= e!1986039 (Union!9895 (Concat!15261 call!231268 (regTwo!20302 (regex!5136 lt!1071491))) call!231267))))

(declare-fun d!872123 () Bool)

(declare-fun lt!1072436 () Regex!9895)

(assert (=> d!872123 (validRegex!4538 lt!1072436)))

(assert (=> d!872123 (= lt!1072436 e!1986040)))

(declare-fun c!535340 () Bool)

(assert (=> d!872123 (= c!535340 (or ((_ is EmptyExpr!9895) (regex!5136 lt!1071491)) ((_ is EmptyLang!9895) (regex!5136 lt!1071491))))))

(assert (=> d!872123 (validRegex!4538 (regex!5136 lt!1071491))))

(assert (=> d!872123 (= (derivativeStep!2939 (regex!5136 lt!1071491) (head!6967 lt!1071487)) lt!1072436)))

(declare-fun b!3187209 () Bool)

(assert (=> b!3187209 (= e!1986039 (Union!9895 (Concat!15261 call!231268 (regTwo!20302 (regex!5136 lt!1071491))) EmptyLang!9895))))

(declare-fun b!3187210 () Bool)

(declare-fun c!535341 () Bool)

(assert (=> b!3187210 (= c!535341 ((_ is Union!9895) (regex!5136 lt!1071491)))))

(assert (=> b!3187210 (= e!1986038 e!1986041)))

(declare-fun bm!231264 () Bool)

(assert (=> bm!231264 (= call!231267 (derivativeStep!2939 (ite c!535341 (regTwo!20303 (regex!5136 lt!1071491)) (regTwo!20302 (regex!5136 lt!1071491))) (head!6967 lt!1071487)))))

(declare-fun b!3187211 () Bool)

(declare-fun c!535339 () Bool)

(assert (=> b!3187211 (= c!535339 (nullable!3386 (regOne!20302 (regex!5136 lt!1071491))))))

(assert (=> b!3187211 (= e!1986037 e!1986039)))

(declare-fun bm!231265 () Bool)

(assert (=> bm!231265 (= call!231269 (derivativeStep!2939 (ite c!535341 (regOne!20303 (regex!5136 lt!1071491)) (ite c!535338 (reg!10224 (regex!5136 lt!1071491)) (regOne!20302 (regex!5136 lt!1071491)))) (head!6967 lt!1071487)))))

(declare-fun b!3187212 () Bool)

(assert (=> b!3187212 (= e!1986040 EmptyLang!9895)))

(declare-fun b!3187213 () Bool)

(assert (=> b!3187213 (= e!1986041 (Union!9895 call!231269 call!231267))))

(assert (= (and d!872123 c!535340) b!3187212))

(assert (= (and d!872123 (not c!535340)) b!3187206))

(assert (= (and b!3187206 c!535342) b!3187207))

(assert (= (and b!3187206 (not c!535342)) b!3187210))

(assert (= (and b!3187210 c!535341) b!3187213))

(assert (= (and b!3187210 (not c!535341)) b!3187205))

(assert (= (and b!3187205 c!535338) b!3187204))

(assert (= (and b!3187205 (not c!535338)) b!3187211))

(assert (= (and b!3187211 c!535339) b!3187208))

(assert (= (and b!3187211 (not c!535339)) b!3187209))

(assert (= (or b!3187208 b!3187209) bm!231262))

(assert (= (or b!3187204 bm!231262) bm!231263))

(assert (= (or b!3187213 bm!231263) bm!231265))

(assert (= (or b!3187213 b!3187208) bm!231264))

(declare-fun m!3445297 () Bool)

(assert (=> d!872123 m!3445297))

(assert (=> d!872123 m!3443231))

(assert (=> bm!231264 m!3442711))

(declare-fun m!3445299 () Bool)

(assert (=> bm!231264 m!3445299))

(declare-fun m!3445301 () Bool)

(assert (=> b!3187211 m!3445301))

(assert (=> bm!231265 m!3442711))

(declare-fun m!3445303 () Bool)

(assert (=> bm!231265 m!3445303))

(assert (=> b!3185791 d!872123))

(assert (=> b!3185791 d!871579))

(assert (=> b!3185791 d!871963))

(declare-fun d!872135 () Bool)

(declare-fun c!535343 () Bool)

(assert (=> d!872135 (= c!535343 ((_ is Empty!10647) (c!534901 lt!1071490)))))

(declare-fun e!1986042 () List!35933)

(assert (=> d!872135 (= (list!12717 (c!534901 lt!1071490)) e!1986042)))

(declare-fun b!3187217 () Bool)

(declare-fun e!1986043 () List!35933)

(assert (=> b!3187217 (= e!1986043 (++!8566 (list!12717 (left!27849 (c!534901 lt!1071490))) (list!12717 (right!28179 (c!534901 lt!1071490)))))))

(declare-fun b!3187214 () Bool)

(assert (=> b!3187214 (= e!1986042 Nil!35809)))

(declare-fun b!3187216 () Bool)

(assert (=> b!3187216 (= e!1986043 (list!12721 (xs!13765 (c!534901 lt!1071490))))))

(declare-fun b!3187215 () Bool)

(assert (=> b!3187215 (= e!1986042 e!1986043)))

(declare-fun c!535344 () Bool)

(assert (=> b!3187215 (= c!535344 ((_ is Leaf!16826) (c!534901 lt!1071490)))))

(assert (= (and d!872135 c!535343) b!3187214))

(assert (= (and d!872135 (not c!535343)) b!3187215))

(assert (= (and b!3187215 c!535344) b!3187216))

(assert (= (and b!3187215 (not c!535344)) b!3187217))

(declare-fun m!3445305 () Bool)

(assert (=> b!3187217 m!3445305))

(declare-fun m!3445307 () Bool)

(assert (=> b!3187217 m!3445307))

(assert (=> b!3187217 m!3445305))

(assert (=> b!3187217 m!3445307))

(declare-fun m!3445309 () Bool)

(assert (=> b!3187217 m!3445309))

(declare-fun m!3445311 () Bool)

(assert (=> b!3187216 m!3445311))

(assert (=> d!871435 d!872135))

(declare-fun d!872137 () Bool)

(declare-fun c!535345 () Bool)

(assert (=> d!872137 (= c!535345 ((_ is Empty!10647) (c!534901 (charsOf!3158 separatorToken!241))))))

(declare-fun e!1986044 () List!35933)

(assert (=> d!872137 (= (list!12717 (c!534901 (charsOf!3158 separatorToken!241))) e!1986044)))

(declare-fun b!3187221 () Bool)

(declare-fun e!1986045 () List!35933)

(assert (=> b!3187221 (= e!1986045 (++!8566 (list!12717 (left!27849 (c!534901 (charsOf!3158 separatorToken!241)))) (list!12717 (right!28179 (c!534901 (charsOf!3158 separatorToken!241))))))))

(declare-fun b!3187218 () Bool)

(assert (=> b!3187218 (= e!1986044 Nil!35809)))

(declare-fun b!3187220 () Bool)

(assert (=> b!3187220 (= e!1986045 (list!12721 (xs!13765 (c!534901 (charsOf!3158 separatorToken!241)))))))

(declare-fun b!3187219 () Bool)

(assert (=> b!3187219 (= e!1986044 e!1986045)))

(declare-fun c!535346 () Bool)

(assert (=> b!3187219 (= c!535346 ((_ is Leaf!16826) (c!534901 (charsOf!3158 separatorToken!241))))))

(assert (= (and d!872137 c!535345) b!3187218))

(assert (= (and d!872137 (not c!535345)) b!3187219))

(assert (= (and b!3187219 c!535346) b!3187220))

(assert (= (and b!3187219 (not c!535346)) b!3187221))

(declare-fun m!3445313 () Bool)

(assert (=> b!3187221 m!3445313))

(declare-fun m!3445315 () Bool)

(assert (=> b!3187221 m!3445315))

(assert (=> b!3187221 m!3445313))

(assert (=> b!3187221 m!3445315))

(declare-fun m!3445317 () Bool)

(assert (=> b!3187221 m!3445317))

(declare-fun m!3445319 () Bool)

(assert (=> b!3187220 m!3445319))

(assert (=> d!871441 d!872137))

(declare-fun d!872139 () Bool)

(declare-fun lt!1072437 () Int)

(assert (=> d!872139 (= lt!1072437 (size!27022 (list!12715 lt!1071475)))))

(assert (=> d!872139 (= lt!1072437 (size!27024 (c!534902 lt!1071475)))))

(assert (=> d!872139 (= (size!27018 lt!1071475) lt!1072437)))

(declare-fun bs!540157 () Bool)

(assert (= bs!540157 d!872139))

(assert (=> bs!540157 m!3443253))

(assert (=> bs!540157 m!3443253))

(declare-fun m!3445321 () Bool)

(assert (=> bs!540157 m!3445321))

(declare-fun m!3445323 () Bool)

(assert (=> bs!540157 m!3445323))

(assert (=> b!3185816 d!872139))

(declare-fun b!3187222 () Bool)

(declare-fun e!1986050 () Bool)

(declare-fun e!1986052 () Bool)

(assert (=> b!3187222 (= e!1986050 e!1986052)))

(declare-fun res!1295884 () Bool)

(assert (=> b!3187222 (=> (not res!1295884) (not e!1986052))))

(declare-fun lt!1072438 () Bool)

(assert (=> b!3187222 (= res!1295884 (not lt!1072438))))

(declare-fun b!3187223 () Bool)

(declare-fun e!1986049 () Bool)

(assert (=> b!3187223 (= e!1986049 (not (= (head!6967 (_1!20722 (findLongestMatchInner!819 (regex!5136 (rule!7558 (h!41230 tokens!494))) Nil!35809 (size!27015 Nil!35809) lt!1071493 lt!1071493 (size!27015 lt!1071493)))) (c!534900 (regex!5136 (rule!7558 (h!41230 tokens!494)))))))))

(declare-fun b!3187224 () Bool)

(declare-fun res!1295886 () Bool)

(assert (=> b!3187224 (=> res!1295886 e!1986049)))

(assert (=> b!3187224 (= res!1295886 (not (isEmpty!19939 (tail!5184 (_1!20722 (findLongestMatchInner!819 (regex!5136 (rule!7558 (h!41230 tokens!494))) Nil!35809 (size!27015 Nil!35809) lt!1071493 lt!1071493 (size!27015 lt!1071493)))))))))

(declare-fun d!872141 () Bool)

(declare-fun e!1986046 () Bool)

(assert (=> d!872141 e!1986046))

(declare-fun c!535348 () Bool)

(assert (=> d!872141 (= c!535348 ((_ is EmptyExpr!9895) (regex!5136 (rule!7558 (h!41230 tokens!494)))))))

(declare-fun e!1986051 () Bool)

(assert (=> d!872141 (= lt!1072438 e!1986051)))

(declare-fun c!535347 () Bool)

(assert (=> d!872141 (= c!535347 (isEmpty!19939 (_1!20722 (findLongestMatchInner!819 (regex!5136 (rule!7558 (h!41230 tokens!494))) Nil!35809 (size!27015 Nil!35809) lt!1071493 lt!1071493 (size!27015 lt!1071493)))))))

(assert (=> d!872141 (validRegex!4538 (regex!5136 (rule!7558 (h!41230 tokens!494))))))

(assert (=> d!872141 (= (matchR!4553 (regex!5136 (rule!7558 (h!41230 tokens!494))) (_1!20722 (findLongestMatchInner!819 (regex!5136 (rule!7558 (h!41230 tokens!494))) Nil!35809 (size!27015 Nil!35809) lt!1071493 lt!1071493 (size!27015 lt!1071493)))) lt!1072438)))

(declare-fun bm!231266 () Bool)

(declare-fun call!231271 () Bool)

(assert (=> bm!231266 (= call!231271 (isEmpty!19939 (_1!20722 (findLongestMatchInner!819 (regex!5136 (rule!7558 (h!41230 tokens!494))) Nil!35809 (size!27015 Nil!35809) lt!1071493 lt!1071493 (size!27015 lt!1071493)))))))

(declare-fun b!3187225 () Bool)

(declare-fun res!1295883 () Bool)

(declare-fun e!1986047 () Bool)

(assert (=> b!3187225 (=> (not res!1295883) (not e!1986047))))

(assert (=> b!3187225 (= res!1295883 (not call!231271))))

(declare-fun b!3187226 () Bool)

(assert (=> b!3187226 (= e!1986051 (matchR!4553 (derivativeStep!2939 (regex!5136 (rule!7558 (h!41230 tokens!494))) (head!6967 (_1!20722 (findLongestMatchInner!819 (regex!5136 (rule!7558 (h!41230 tokens!494))) Nil!35809 (size!27015 Nil!35809) lt!1071493 lt!1071493 (size!27015 lt!1071493))))) (tail!5184 (_1!20722 (findLongestMatchInner!819 (regex!5136 (rule!7558 (h!41230 tokens!494))) Nil!35809 (size!27015 Nil!35809) lt!1071493 lt!1071493 (size!27015 lt!1071493))))))))

(declare-fun b!3187227 () Bool)

(declare-fun res!1295888 () Bool)

(assert (=> b!3187227 (=> res!1295888 e!1986050)))

(assert (=> b!3187227 (= res!1295888 (not ((_ is ElementMatch!9895) (regex!5136 (rule!7558 (h!41230 tokens!494))))))))

(declare-fun e!1986048 () Bool)

(assert (=> b!3187227 (= e!1986048 e!1986050)))

(declare-fun b!3187228 () Bool)

(assert (=> b!3187228 (= e!1986051 (nullable!3386 (regex!5136 (rule!7558 (h!41230 tokens!494)))))))

(declare-fun b!3187229 () Bool)

(assert (=> b!3187229 (= e!1986052 e!1986049)))

(declare-fun res!1295885 () Bool)

(assert (=> b!3187229 (=> res!1295885 e!1986049)))

(assert (=> b!3187229 (= res!1295885 call!231271)))

(declare-fun b!3187230 () Bool)

(assert (=> b!3187230 (= e!1986047 (= (head!6967 (_1!20722 (findLongestMatchInner!819 (regex!5136 (rule!7558 (h!41230 tokens!494))) Nil!35809 (size!27015 Nil!35809) lt!1071493 lt!1071493 (size!27015 lt!1071493)))) (c!534900 (regex!5136 (rule!7558 (h!41230 tokens!494))))))))

(declare-fun b!3187231 () Bool)

(assert (=> b!3187231 (= e!1986046 e!1986048)))

(declare-fun c!535349 () Bool)

(assert (=> b!3187231 (= c!535349 ((_ is EmptyLang!9895) (regex!5136 (rule!7558 (h!41230 tokens!494)))))))

(declare-fun b!3187232 () Bool)

(assert (=> b!3187232 (= e!1986048 (not lt!1072438))))

(declare-fun b!3187233 () Bool)

(declare-fun res!1295887 () Bool)

(assert (=> b!3187233 (=> res!1295887 e!1986050)))

(assert (=> b!3187233 (= res!1295887 e!1986047)))

(declare-fun res!1295889 () Bool)

(assert (=> b!3187233 (=> (not res!1295889) (not e!1986047))))

(assert (=> b!3187233 (= res!1295889 lt!1072438)))

(declare-fun b!3187234 () Bool)

(assert (=> b!3187234 (= e!1986046 (= lt!1072438 call!231271))))

(declare-fun b!3187235 () Bool)

(declare-fun res!1295890 () Bool)

(assert (=> b!3187235 (=> (not res!1295890) (not e!1986047))))

(assert (=> b!3187235 (= res!1295890 (isEmpty!19939 (tail!5184 (_1!20722 (findLongestMatchInner!819 (regex!5136 (rule!7558 (h!41230 tokens!494))) Nil!35809 (size!27015 Nil!35809) lt!1071493 lt!1071493 (size!27015 lt!1071493))))))))

(assert (= (and d!872141 c!535347) b!3187228))

(assert (= (and d!872141 (not c!535347)) b!3187226))

(assert (= (and d!872141 c!535348) b!3187234))

(assert (= (and d!872141 (not c!535348)) b!3187231))

(assert (= (and b!3187231 c!535349) b!3187232))

(assert (= (and b!3187231 (not c!535349)) b!3187227))

(assert (= (and b!3187227 (not res!1295888)) b!3187233))

(assert (= (and b!3187233 res!1295889) b!3187225))

(assert (= (and b!3187225 res!1295883) b!3187235))

(assert (= (and b!3187235 res!1295890) b!3187230))

(assert (= (and b!3187233 (not res!1295887)) b!3187222))

(assert (= (and b!3187222 res!1295884) b!3187229))

(assert (= (and b!3187229 (not res!1295885)) b!3187224))

(assert (= (and b!3187224 (not res!1295886)) b!3187223))

(assert (= (or b!3187234 b!3187225 b!3187229) bm!231266))

(declare-fun m!3445325 () Bool)

(assert (=> b!3187226 m!3445325))

(assert (=> b!3187226 m!3445325))

(declare-fun m!3445327 () Bool)

(assert (=> b!3187226 m!3445327))

(declare-fun m!3445329 () Bool)

(assert (=> b!3187226 m!3445329))

(assert (=> b!3187226 m!3445327))

(assert (=> b!3187226 m!3445329))

(declare-fun m!3445331 () Bool)

(assert (=> b!3187226 m!3445331))

(assert (=> b!3187224 m!3445329))

(assert (=> b!3187224 m!3445329))

(declare-fun m!3445333 () Bool)

(assert (=> b!3187224 m!3445333))

(assert (=> b!3187235 m!3445329))

(assert (=> b!3187235 m!3445329))

(assert (=> b!3187235 m!3445333))

(assert (=> d!872141 m!3443643))

(assert (=> d!872141 m!3444003))

(assert (=> b!3187230 m!3445325))

(assert (=> bm!231266 m!3443643))

(assert (=> b!3187228 m!3444053))

(assert (=> b!3187223 m!3445325))

(assert (=> b!3186110 d!872141))

(assert (=> b!3186110 d!871743))

(assert (=> b!3186110 d!871755))

(assert (=> b!3186110 d!871575))

(declare-fun b!3187236 () Bool)

(declare-fun e!1986057 () Bool)

(declare-fun e!1986059 () Bool)

(assert (=> b!3187236 (= e!1986057 e!1986059)))

(declare-fun res!1295892 () Bool)

(assert (=> b!3187236 (=> (not res!1295892) (not e!1986059))))

(declare-fun lt!1072439 () Bool)

(assert (=> b!3187236 (= res!1295892 (not lt!1072439))))

(declare-fun b!3187237 () Bool)

(declare-fun e!1986056 () Bool)

(assert (=> b!3187237 (= e!1986056 (not (= (head!6967 (tail!5184 lt!1071493)) (c!534900 (derivativeStep!2939 (regex!5136 lt!1071481) (head!6967 lt!1071493))))))))

(declare-fun b!3187238 () Bool)

(declare-fun res!1295894 () Bool)

(assert (=> b!3187238 (=> res!1295894 e!1986056)))

(assert (=> b!3187238 (= res!1295894 (not (isEmpty!19939 (tail!5184 (tail!5184 lt!1071493)))))))

(declare-fun d!872143 () Bool)

(declare-fun e!1986053 () Bool)

(assert (=> d!872143 e!1986053))

(declare-fun c!535351 () Bool)

(assert (=> d!872143 (= c!535351 ((_ is EmptyExpr!9895) (derivativeStep!2939 (regex!5136 lt!1071481) (head!6967 lt!1071493))))))

(declare-fun e!1986058 () Bool)

(assert (=> d!872143 (= lt!1072439 e!1986058)))

(declare-fun c!535350 () Bool)

(assert (=> d!872143 (= c!535350 (isEmpty!19939 (tail!5184 lt!1071493)))))

(assert (=> d!872143 (validRegex!4538 (derivativeStep!2939 (regex!5136 lt!1071481) (head!6967 lt!1071493)))))

(assert (=> d!872143 (= (matchR!4553 (derivativeStep!2939 (regex!5136 lt!1071481) (head!6967 lt!1071493)) (tail!5184 lt!1071493)) lt!1072439)))

(declare-fun bm!231267 () Bool)

(declare-fun call!231272 () Bool)

(assert (=> bm!231267 (= call!231272 (isEmpty!19939 (tail!5184 lt!1071493)))))

(declare-fun b!3187239 () Bool)

(declare-fun res!1295891 () Bool)

(declare-fun e!1986054 () Bool)

(assert (=> b!3187239 (=> (not res!1295891) (not e!1986054))))

(assert (=> b!3187239 (= res!1295891 (not call!231272))))

(declare-fun b!3187240 () Bool)

(assert (=> b!3187240 (= e!1986058 (matchR!4553 (derivativeStep!2939 (derivativeStep!2939 (regex!5136 lt!1071481) (head!6967 lt!1071493)) (head!6967 (tail!5184 lt!1071493))) (tail!5184 (tail!5184 lt!1071493))))))

(declare-fun b!3187241 () Bool)

(declare-fun res!1295896 () Bool)

(assert (=> b!3187241 (=> res!1295896 e!1986057)))

(assert (=> b!3187241 (= res!1295896 (not ((_ is ElementMatch!9895) (derivativeStep!2939 (regex!5136 lt!1071481) (head!6967 lt!1071493)))))))

(declare-fun e!1986055 () Bool)

(assert (=> b!3187241 (= e!1986055 e!1986057)))

(declare-fun b!3187242 () Bool)

(assert (=> b!3187242 (= e!1986058 (nullable!3386 (derivativeStep!2939 (regex!5136 lt!1071481) (head!6967 lt!1071493))))))

(declare-fun b!3187243 () Bool)

(assert (=> b!3187243 (= e!1986059 e!1986056)))

(declare-fun res!1295893 () Bool)

(assert (=> b!3187243 (=> res!1295893 e!1986056)))

(assert (=> b!3187243 (= res!1295893 call!231272)))

(declare-fun b!3187244 () Bool)

(assert (=> b!3187244 (= e!1986054 (= (head!6967 (tail!5184 lt!1071493)) (c!534900 (derivativeStep!2939 (regex!5136 lt!1071481) (head!6967 lt!1071493)))))))

(declare-fun b!3187245 () Bool)

(assert (=> b!3187245 (= e!1986053 e!1986055)))

(declare-fun c!535352 () Bool)

(assert (=> b!3187245 (= c!535352 ((_ is EmptyLang!9895) (derivativeStep!2939 (regex!5136 lt!1071481) (head!6967 lt!1071493))))))

(declare-fun b!3187246 () Bool)

(assert (=> b!3187246 (= e!1986055 (not lt!1072439))))

(declare-fun b!3187247 () Bool)

(declare-fun res!1295895 () Bool)

(assert (=> b!3187247 (=> res!1295895 e!1986057)))

(assert (=> b!3187247 (= res!1295895 e!1986054)))

(declare-fun res!1295897 () Bool)

(assert (=> b!3187247 (=> (not res!1295897) (not e!1986054))))

(assert (=> b!3187247 (= res!1295897 lt!1072439)))

(declare-fun b!3187248 () Bool)

(assert (=> b!3187248 (= e!1986053 (= lt!1072439 call!231272))))

(declare-fun b!3187249 () Bool)

(declare-fun res!1295898 () Bool)

(assert (=> b!3187249 (=> (not res!1295898) (not e!1986054))))

(assert (=> b!3187249 (= res!1295898 (isEmpty!19939 (tail!5184 (tail!5184 lt!1071493))))))

(assert (= (and d!872143 c!535350) b!3187242))

(assert (= (and d!872143 (not c!535350)) b!3187240))

(assert (= (and d!872143 c!535351) b!3187248))

(assert (= (and d!872143 (not c!535351)) b!3187245))

(assert (= (and b!3187245 c!535352) b!3187246))

(assert (= (and b!3187245 (not c!535352)) b!3187241))

(assert (= (and b!3187241 (not res!1295896)) b!3187247))

(assert (= (and b!3187247 res!1295897) b!3187239))

(assert (= (and b!3187239 res!1295891) b!3187249))

(assert (= (and b!3187249 res!1295898) b!3187244))

(assert (= (and b!3187247 (not res!1295895)) b!3187236))

(assert (= (and b!3187236 res!1295892) b!3187243))

(assert (= (and b!3187243 (not res!1295893)) b!3187238))

(assert (= (and b!3187238 (not res!1295894)) b!3187237))

(assert (= (or b!3187248 b!3187239 b!3187243) bm!231267))

(assert (=> b!3187240 m!3443205))

(declare-fun m!3445335 () Bool)

(assert (=> b!3187240 m!3445335))

(assert (=> b!3187240 m!3443203))

(assert (=> b!3187240 m!3445335))

(declare-fun m!3445337 () Bool)

(assert (=> b!3187240 m!3445337))

(assert (=> b!3187240 m!3443205))

(assert (=> b!3187240 m!3445169))

(assert (=> b!3187240 m!3445337))

(assert (=> b!3187240 m!3445169))

(declare-fun m!3445339 () Bool)

(assert (=> b!3187240 m!3445339))

(assert (=> b!3187238 m!3443205))

(assert (=> b!3187238 m!3445169))

(assert (=> b!3187238 m!3445169))

(declare-fun m!3445341 () Bool)

(assert (=> b!3187238 m!3445341))

(assert (=> b!3187249 m!3443205))

(assert (=> b!3187249 m!3445169))

(assert (=> b!3187249 m!3445169))

(assert (=> b!3187249 m!3445341))

(assert (=> d!872143 m!3443205))

(assert (=> d!872143 m!3443209))

(assert (=> d!872143 m!3443203))

(declare-fun m!3445343 () Bool)

(assert (=> d!872143 m!3445343))

(assert (=> b!3187244 m!3443205))

(assert (=> b!3187244 m!3445335))

(assert (=> bm!231267 m!3443205))

(assert (=> bm!231267 m!3443209))

(assert (=> b!3187242 m!3443203))

(declare-fun m!3445345 () Bool)

(assert (=> b!3187242 m!3445345))

(assert (=> b!3187237 m!3443205))

(assert (=> b!3187237 m!3445335))

(assert (=> b!3185771 d!872143))

(declare-fun bm!231268 () Bool)

(declare-fun call!231274 () Regex!9895)

(declare-fun call!231276 () Regex!9895)

(assert (=> bm!231268 (= call!231274 call!231276)))

(declare-fun b!3187250 () Bool)

(declare-fun e!1986060 () Regex!9895)

(assert (=> b!3187250 (= e!1986060 (Concat!15261 call!231276 (regex!5136 lt!1071481)))))

(declare-fun bm!231269 () Bool)

(declare-fun call!231275 () Regex!9895)

(assert (=> bm!231269 (= call!231276 call!231275)))

(declare-fun b!3187251 () Bool)

(declare-fun e!1986064 () Regex!9895)

(assert (=> b!3187251 (= e!1986064 e!1986060)))

(declare-fun c!535353 () Bool)

(assert (=> b!3187251 (= c!535353 ((_ is Star!9895) (regex!5136 lt!1071481)))))

(declare-fun b!3187252 () Bool)

(declare-fun e!1986063 () Regex!9895)

(declare-fun e!1986061 () Regex!9895)

(assert (=> b!3187252 (= e!1986063 e!1986061)))

(declare-fun c!535357 () Bool)

(assert (=> b!3187252 (= c!535357 ((_ is ElementMatch!9895) (regex!5136 lt!1071481)))))

(declare-fun b!3187253 () Bool)

(assert (=> b!3187253 (= e!1986061 (ite (= (head!6967 lt!1071493) (c!534900 (regex!5136 lt!1071481))) EmptyExpr!9895 EmptyLang!9895))))

(declare-fun e!1986062 () Regex!9895)

(declare-fun b!3187254 () Bool)

(declare-fun call!231273 () Regex!9895)

(assert (=> b!3187254 (= e!1986062 (Union!9895 (Concat!15261 call!231274 (regTwo!20302 (regex!5136 lt!1071481))) call!231273))))

(declare-fun d!872147 () Bool)

(declare-fun lt!1072440 () Regex!9895)

(assert (=> d!872147 (validRegex!4538 lt!1072440)))

(assert (=> d!872147 (= lt!1072440 e!1986063)))

(declare-fun c!535355 () Bool)

(assert (=> d!872147 (= c!535355 (or ((_ is EmptyExpr!9895) (regex!5136 lt!1071481)) ((_ is EmptyLang!9895) (regex!5136 lt!1071481))))))

(assert (=> d!872147 (validRegex!4538 (regex!5136 lt!1071481))))

(assert (=> d!872147 (= (derivativeStep!2939 (regex!5136 lt!1071481) (head!6967 lt!1071493)) lt!1072440)))

(declare-fun b!3187255 () Bool)

(assert (=> b!3187255 (= e!1986062 (Union!9895 (Concat!15261 call!231274 (regTwo!20302 (regex!5136 lt!1071481))) EmptyLang!9895))))

(declare-fun b!3187256 () Bool)

(declare-fun c!535356 () Bool)

(assert (=> b!3187256 (= c!535356 ((_ is Union!9895) (regex!5136 lt!1071481)))))

(assert (=> b!3187256 (= e!1986061 e!1986064)))

(declare-fun bm!231270 () Bool)

(assert (=> bm!231270 (= call!231273 (derivativeStep!2939 (ite c!535356 (regTwo!20303 (regex!5136 lt!1071481)) (regTwo!20302 (regex!5136 lt!1071481))) (head!6967 lt!1071493)))))

(declare-fun b!3187257 () Bool)

(declare-fun c!535354 () Bool)

(assert (=> b!3187257 (= c!535354 (nullable!3386 (regOne!20302 (regex!5136 lt!1071481))))))

(assert (=> b!3187257 (= e!1986060 e!1986062)))

(declare-fun bm!231271 () Bool)

(assert (=> bm!231271 (= call!231275 (derivativeStep!2939 (ite c!535356 (regOne!20303 (regex!5136 lt!1071481)) (ite c!535353 (reg!10224 (regex!5136 lt!1071481)) (regOne!20302 (regex!5136 lt!1071481)))) (head!6967 lt!1071493)))))

(declare-fun b!3187258 () Bool)

(assert (=> b!3187258 (= e!1986063 EmptyLang!9895)))

(declare-fun b!3187259 () Bool)

(assert (=> b!3187259 (= e!1986064 (Union!9895 call!231275 call!231273))))

(assert (= (and d!872147 c!535355) b!3187258))

(assert (= (and d!872147 (not c!535355)) b!3187252))

(assert (= (and b!3187252 c!535357) b!3187253))

(assert (= (and b!3187252 (not c!535357)) b!3187256))

(assert (= (and b!3187256 c!535356) b!3187259))

(assert (= (and b!3187256 (not c!535356)) b!3187251))

(assert (= (and b!3187251 c!535353) b!3187250))

(assert (= (and b!3187251 (not c!535353)) b!3187257))

(assert (= (and b!3187257 c!535354) b!3187254))

(assert (= (and b!3187257 (not c!535354)) b!3187255))

(assert (= (or b!3187254 b!3187255) bm!231268))

(assert (= (or b!3187250 bm!231268) bm!231269))

(assert (= (or b!3187259 bm!231269) bm!231271))

(assert (= (or b!3187259 b!3187254) bm!231270))

(declare-fun m!3445355 () Bool)

(assert (=> d!872147 m!3445355))

(assert (=> d!872147 m!3443213))

(assert (=> bm!231270 m!3443201))

(declare-fun m!3445357 () Bool)

(assert (=> bm!231270 m!3445357))

(declare-fun m!3445359 () Bool)

(assert (=> b!3187257 m!3445359))

(assert (=> bm!231271 m!3443201))

(declare-fun m!3445363 () Bool)

(assert (=> bm!231271 m!3445363))

(assert (=> b!3185771 d!872147))

(assert (=> b!3185771 d!872095))

(assert (=> b!3185771 d!871853))

(declare-fun d!872155 () Bool)

(assert (=> d!872155 (= (inv!17 (value!166836 separatorToken!241)) (= (charsToBigInt!1 (text!38010 (value!166836 separatorToken!241))) (value!166828 (value!166836 separatorToken!241))))))

(declare-fun bs!540161 () Bool)

(assert (= bs!540161 d!872155))

(declare-fun m!3445365 () Bool)

(assert (=> bs!540161 m!3445365))

(assert (=> b!3185727 d!872155))

(declare-fun bm!231272 () Bool)

(declare-fun call!231279 () List!35933)

(declare-fun call!231277 () List!35933)

(declare-fun call!231278 () List!35933)

(declare-fun c!535360 () Bool)

(assert (=> bm!231272 (= call!231278 (++!8566 (ite c!535360 call!231277 call!231279) (ite c!535360 call!231279 call!231277)))))

(declare-fun b!3187265 () Bool)

(declare-fun e!1986071 () List!35933)

(declare-fun e!1986070 () List!35933)

(assert (=> b!3187265 (= e!1986071 e!1986070)))

(assert (=> b!3187265 (= c!535360 ((_ is Union!9895) (ite c!534968 (reg!10224 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (ite c!534965 (regTwo!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (regOne!20302 (regex!5136 (rule!7558 (h!41230 tokens!494))))))))))

(declare-fun c!535362 () Bool)

(declare-fun d!872157 () Bool)

(assert (=> d!872157 (= c!535362 (or ((_ is EmptyExpr!9895) (ite c!534968 (reg!10224 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (ite c!534965 (regTwo!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (regOne!20302 (regex!5136 (rule!7558 (h!41230 tokens!494))))))) ((_ is EmptyLang!9895) (ite c!534968 (reg!10224 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (ite c!534965 (regTwo!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (regOne!20302 (regex!5136 (rule!7558 (h!41230 tokens!494)))))))))))

(declare-fun e!1986069 () List!35933)

(assert (=> d!872157 (= (usedCharacters!480 (ite c!534968 (reg!10224 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (ite c!534965 (regTwo!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (regOne!20302 (regex!5136 (rule!7558 (h!41230 tokens!494))))))) e!1986069)))

(declare-fun b!3187266 () Bool)

(assert (=> b!3187266 (= e!1986070 call!231278)))

(declare-fun b!3187267 () Bool)

(assert (=> b!3187267 (= e!1986070 call!231278)))

(declare-fun e!1986068 () List!35933)

(declare-fun b!3187268 () Bool)

(assert (=> b!3187268 (= e!1986068 (Cons!35809 (c!534900 (ite c!534968 (reg!10224 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (ite c!534965 (regTwo!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (regOne!20302 (regex!5136 (rule!7558 (h!41230 tokens!494))))))) Nil!35809))))

(declare-fun bm!231273 () Bool)

(declare-fun c!535363 () Bool)

(declare-fun call!231280 () List!35933)

(assert (=> bm!231273 (= call!231280 (usedCharacters!480 (ite c!535363 (reg!10224 (ite c!534968 (reg!10224 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (ite c!534965 (regTwo!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (regOne!20302 (regex!5136 (rule!7558 (h!41230 tokens!494))))))) (ite c!535360 (regTwo!20303 (ite c!534968 (reg!10224 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (ite c!534965 (regTwo!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (regOne!20302 (regex!5136 (rule!7558 (h!41230 tokens!494))))))) (regOne!20302 (ite c!534968 (reg!10224 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (ite c!534965 (regTwo!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (regOne!20302 (regex!5136 (rule!7558 (h!41230 tokens!494)))))))))))))

(declare-fun bm!231274 () Bool)

(assert (=> bm!231274 (= call!231279 call!231280)))

(declare-fun b!3187269 () Bool)

(assert (=> b!3187269 (= e!1986069 Nil!35809)))

(declare-fun b!3187270 () Bool)

(assert (=> b!3187270 (= e!1986069 e!1986068)))

(declare-fun c!535361 () Bool)

(assert (=> b!3187270 (= c!535361 ((_ is ElementMatch!9895) (ite c!534968 (reg!10224 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (ite c!534965 (regTwo!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (regOne!20302 (regex!5136 (rule!7558 (h!41230 tokens!494))))))))))

(declare-fun b!3187271 () Bool)

(assert (=> b!3187271 (= c!535363 ((_ is Star!9895) (ite c!534968 (reg!10224 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (ite c!534965 (regTwo!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (regOne!20302 (regex!5136 (rule!7558 (h!41230 tokens!494))))))))))

(assert (=> b!3187271 (= e!1986068 e!1986071)))

(declare-fun b!3187272 () Bool)

(assert (=> b!3187272 (= e!1986071 call!231280)))

(declare-fun bm!231275 () Bool)

(assert (=> bm!231275 (= call!231277 (usedCharacters!480 (ite c!535360 (regOne!20303 (ite c!534968 (reg!10224 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (ite c!534965 (regTwo!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (regOne!20302 (regex!5136 (rule!7558 (h!41230 tokens!494))))))) (regTwo!20302 (ite c!534968 (reg!10224 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (ite c!534965 (regTwo!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))) (regOne!20302 (regex!5136 (rule!7558 (h!41230 tokens!494))))))))))))

(assert (= (and d!872157 c!535362) b!3187269))

(assert (= (and d!872157 (not c!535362)) b!3187270))

(assert (= (and b!3187270 c!535361) b!3187268))

(assert (= (and b!3187270 (not c!535361)) b!3187271))

(assert (= (and b!3187271 c!535363) b!3187272))

(assert (= (and b!3187271 (not c!535363)) b!3187265))

(assert (= (and b!3187265 c!535360) b!3187266))

(assert (= (and b!3187265 (not c!535360)) b!3187267))

(assert (= (or b!3187266 b!3187267) bm!231274))

(assert (= (or b!3187266 b!3187267) bm!231275))

(assert (= (or b!3187266 b!3187267) bm!231272))

(assert (= (or b!3187272 bm!231274) bm!231273))

(declare-fun m!3445367 () Bool)

(assert (=> bm!231272 m!3445367))

(declare-fun m!3445369 () Bool)

(assert (=> bm!231273 m!3445369))

(declare-fun m!3445371 () Bool)

(assert (=> bm!231275 m!3445371))

(assert (=> bm!231101 d!872157))

(assert (=> b!3185788 d!871579))

(declare-fun d!872159 () Bool)

(declare-fun lt!1072441 () Bool)

(assert (=> d!872159 (= lt!1072441 (isEmpty!19947 (list!12715 (_1!20717 lt!1071699))))))

(assert (=> d!872159 (= lt!1072441 (isEmpty!19948 (c!534902 (_1!20717 lt!1071699))))))

(assert (=> d!872159 (= (isEmpty!19937 (_1!20717 lt!1071699)) lt!1072441)))

(declare-fun bs!540162 () Bool)

(assert (= bs!540162 d!872159))

(assert (=> bs!540162 m!3443399))

(assert (=> bs!540162 m!3443399))

(declare-fun m!3445373 () Bool)

(assert (=> bs!540162 m!3445373))

(declare-fun m!3445375 () Bool)

(assert (=> bs!540162 m!3445375))

(assert (=> b!3185914 d!872159))

(declare-fun d!872161 () Bool)

(declare-fun res!1295900 () Bool)

(declare-fun e!1986072 () Bool)

(assert (=> d!872161 (=> (not res!1295900) (not e!1986072))))

(assert (=> d!872161 (= res!1295900 (not (isEmpty!19939 (originalCharacters!5850 (h!41230 (t!235527 tokens!494))))))))

(assert (=> d!872161 (= (inv!48659 (h!41230 (t!235527 tokens!494))) e!1986072)))

(declare-fun b!3187273 () Bool)

(declare-fun res!1295901 () Bool)

(assert (=> b!3187273 (=> (not res!1295901) (not e!1986072))))

(assert (=> b!3187273 (= res!1295901 (= (originalCharacters!5850 (h!41230 (t!235527 tokens!494))) (list!12713 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (value!166836 (h!41230 (t!235527 tokens!494)))))))))

(declare-fun b!3187274 () Bool)

(assert (=> b!3187274 (= e!1986072 (= (size!27014 (h!41230 (t!235527 tokens!494))) (size!27015 (originalCharacters!5850 (h!41230 (t!235527 tokens!494))))))))

(assert (= (and d!872161 res!1295900) b!3187273))

(assert (= (and b!3187273 res!1295901) b!3187274))

(declare-fun b_lambda!86925 () Bool)

(assert (=> (not b_lambda!86925) (not b!3187273)))

(declare-fun tb!155675 () Bool)

(declare-fun t!235773 () Bool)

(assert (=> (and b!3186184 (= (toChars!7055 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494)))))) t!235773) tb!155675))

(declare-fun b!3187275 () Bool)

(declare-fun e!1986073 () Bool)

(declare-fun tp!1007580 () Bool)

(assert (=> b!3187275 (= e!1986073 (and (inv!48663 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (value!166836 (h!41230 (t!235527 tokens!494)))))) tp!1007580))))

(declare-fun result!197832 () Bool)

(assert (=> tb!155675 (= result!197832 (and (inv!48664 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (value!166836 (h!41230 (t!235527 tokens!494))))) e!1986073))))

(assert (= tb!155675 b!3187275))

(declare-fun m!3445377 () Bool)

(assert (=> b!3187275 m!3445377))

(declare-fun m!3445379 () Bool)

(assert (=> tb!155675 m!3445379))

(assert (=> b!3187273 t!235773))

(declare-fun b_and!211019 () Bool)

(assert (= b_and!210989 (and (=> t!235773 result!197832) b_and!211019)))

(declare-fun t!235775 () Bool)

(declare-fun tb!155677 () Bool)

(assert (=> (and b!3186168 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494)))))) t!235775) tb!155677))

(declare-fun result!197834 () Bool)

(assert (= result!197834 result!197832))

(assert (=> b!3187273 t!235775))

(declare-fun b_and!211021 () Bool)

(assert (= b_and!210995 (and (=> t!235775 result!197834) b_and!211021)))

(declare-fun tb!155679 () Bool)

(declare-fun t!235777 () Bool)

(assert (=> (and b!3185352 (= (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494)))))) t!235777) tb!155679))

(declare-fun result!197836 () Bool)

(assert (= result!197836 result!197832))

(assert (=> b!3187273 t!235777))

(declare-fun b_and!211023 () Bool)

(assert (= b_and!210991 (and (=> t!235777 result!197836) b_and!211023)))

(declare-fun t!235779 () Bool)

(declare-fun tb!155681 () Bool)

(assert (=> (and b!3185354 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494)))))) t!235779) tb!155681))

(declare-fun result!197838 () Bool)

(assert (= result!197838 result!197832))

(assert (=> b!3187273 t!235779))

(declare-fun b_and!211025 () Bool)

(assert (= b_and!210993 (and (=> t!235779 result!197838) b_and!211025)))

(declare-fun t!235781 () Bool)

(declare-fun tb!155683 () Bool)

(assert (=> (and b!3185353 (= (toChars!7055 (transformation!5136 (h!41231 rules!2135))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494)))))) t!235781) tb!155683))

(declare-fun result!197840 () Bool)

(assert (= result!197840 result!197832))

(assert (=> b!3187273 t!235781))

(declare-fun b_and!211027 () Bool)

(assert (= b_and!210997 (and (=> t!235781 result!197840) b_and!211027)))

(declare-fun m!3445381 () Bool)

(assert (=> d!872161 m!3445381))

(declare-fun m!3445383 () Bool)

(assert (=> b!3187273 m!3445383))

(assert (=> b!3187273 m!3445383))

(declare-fun m!3445385 () Bool)

(assert (=> b!3187273 m!3445385))

(declare-fun m!3445387 () Bool)

(assert (=> b!3187274 m!3445387))

(assert (=> b!3186165 d!872161))

(assert (=> b!3185795 d!871579))

(declare-fun d!872163 () Bool)

(declare-fun lt!1072444 () Bool)

(assert (=> d!872163 (= lt!1072444 (select (content!4852 tokens!494) (h!41230 tokens!494)))))

(declare-fun e!1986080 () Bool)

(assert (=> d!872163 (= lt!1072444 e!1986080)))

(declare-fun res!1295911 () Bool)

(assert (=> d!872163 (=> (not res!1295911) (not e!1986080))))

(assert (=> d!872163 (= res!1295911 ((_ is Cons!35810) tokens!494))))

(assert (=> d!872163 (= (contains!6355 tokens!494 (h!41230 tokens!494)) lt!1072444)))

(declare-fun b!3187284 () Bool)

(declare-fun e!1986081 () Bool)

(assert (=> b!3187284 (= e!1986080 e!1986081)))

(declare-fun res!1295910 () Bool)

(assert (=> b!3187284 (=> res!1295910 e!1986081)))

(assert (=> b!3187284 (= res!1295910 (= (h!41230 tokens!494) (h!41230 tokens!494)))))

(declare-fun b!3187285 () Bool)

(assert (=> b!3187285 (= e!1986081 (contains!6355 (t!235527 tokens!494) (h!41230 tokens!494)))))

(assert (= (and d!872163 res!1295911) b!3187284))

(assert (= (and b!3187284 (not res!1295910)) b!3187285))

(declare-fun m!3445389 () Bool)

(assert (=> d!872163 m!3445389))

(declare-fun m!3445391 () Bool)

(assert (=> d!872163 m!3445391))

(declare-fun m!3445393 () Bool)

(assert (=> b!3187285 m!3445393))

(assert (=> b!3185874 d!872163))

(declare-fun lt!1072445 () Bool)

(declare-fun d!872165 () Bool)

(assert (=> d!872165 (= lt!1072445 (isEmpty!19939 (list!12713 (_2!20717 (lex!2065 thiss!18206 rules!2135 (print!1792 thiss!18206 (singletonSeq!2232 (h!41230 tokens!494))))))))))

(assert (=> d!872165 (= lt!1072445 (isEmpty!19950 (c!534901 (_2!20717 (lex!2065 thiss!18206 rules!2135 (print!1792 thiss!18206 (singletonSeq!2232 (h!41230 tokens!494))))))))))

(assert (=> d!872165 (= (isEmpty!19946 (_2!20717 (lex!2065 thiss!18206 rules!2135 (print!1792 thiss!18206 (singletonSeq!2232 (h!41230 tokens!494)))))) lt!1072445)))

(declare-fun bs!540163 () Bool)

(assert (= bs!540163 d!872165))

(declare-fun m!3445395 () Bool)

(assert (=> bs!540163 m!3445395))

(assert (=> bs!540163 m!3445395))

(declare-fun m!3445397 () Bool)

(assert (=> bs!540163 m!3445397))

(declare-fun m!3445399 () Bool)

(assert (=> bs!540163 m!3445399))

(assert (=> b!3185852 d!872165))

(declare-fun lt!1072446 () tuple2!35166)

(declare-fun e!1986085 () Bool)

(declare-fun b!3187288 () Bool)

(assert (=> b!3187288 (= e!1986085 (= (list!12713 (_2!20717 lt!1072446)) (_2!20721 (lexList!1279 thiss!18206 rules!2135 (list!12713 (print!1792 thiss!18206 (singletonSeq!2232 (h!41230 tokens!494))))))))))

(declare-fun b!3187289 () Bool)

(declare-fun e!1986083 () Bool)

(assert (=> b!3187289 (= e!1986083 (= (_2!20717 lt!1072446) (print!1792 thiss!18206 (singletonSeq!2232 (h!41230 tokens!494)))))))

(declare-fun b!3187290 () Bool)

(declare-fun res!1295914 () Bool)

(assert (=> b!3187290 (=> (not res!1295914) (not e!1986085))))

(assert (=> b!3187290 (= res!1295914 (= (list!12715 (_1!20717 lt!1072446)) (_1!20721 (lexList!1279 thiss!18206 rules!2135 (list!12713 (print!1792 thiss!18206 (singletonSeq!2232 (h!41230 tokens!494))))))))))

(declare-fun d!872167 () Bool)

(assert (=> d!872167 e!1986085))

(declare-fun res!1295916 () Bool)

(assert (=> d!872167 (=> (not res!1295916) (not e!1986085))))

(assert (=> d!872167 (= res!1295916 e!1986083)))

(declare-fun c!535364 () Bool)

(assert (=> d!872167 (= c!535364 (> (size!27018 (_1!20717 lt!1072446)) 0))))

(assert (=> d!872167 (= lt!1072446 (lexTailRecV2!917 thiss!18206 rules!2135 (print!1792 thiss!18206 (singletonSeq!2232 (h!41230 tokens!494))) (BalanceConc!20909 Empty!10647) (print!1792 thiss!18206 (singletonSeq!2232 (h!41230 tokens!494))) (BalanceConc!20911 Empty!10648)))))

(assert (=> d!872167 (= (lex!2065 thiss!18206 rules!2135 (print!1792 thiss!18206 (singletonSeq!2232 (h!41230 tokens!494)))) lt!1072446)))

(declare-fun b!3187291 () Bool)

(declare-fun e!1986084 () Bool)

(assert (=> b!3187291 (= e!1986084 (not (isEmpty!19937 (_1!20717 lt!1072446))))))

(declare-fun b!3187292 () Bool)

(assert (=> b!3187292 (= e!1986083 e!1986084)))

(declare-fun res!1295915 () Bool)

(assert (=> b!3187292 (= res!1295915 (< (size!27019 (_2!20717 lt!1072446)) (size!27019 (print!1792 thiss!18206 (singletonSeq!2232 (h!41230 tokens!494))))))))

(assert (=> b!3187292 (=> (not res!1295915) (not e!1986084))))

(assert (= (and d!872167 c!535364) b!3187292))

(assert (= (and d!872167 (not c!535364)) b!3187289))

(assert (= (and b!3187292 res!1295915) b!3187291))

(assert (= (and d!872167 res!1295916) b!3187290))

(assert (= (and b!3187290 res!1295914) b!3187288))

(declare-fun m!3445401 () Bool)

(assert (=> b!3187290 m!3445401))

(assert (=> b!3187290 m!3443321))

(declare-fun m!3445403 () Bool)

(assert (=> b!3187290 m!3445403))

(assert (=> b!3187290 m!3445403))

(declare-fun m!3445405 () Bool)

(assert (=> b!3187290 m!3445405))

(declare-fun m!3445407 () Bool)

(assert (=> d!872167 m!3445407))

(assert (=> d!872167 m!3443321))

(assert (=> d!872167 m!3443321))

(declare-fun m!3445409 () Bool)

(assert (=> d!872167 m!3445409))

(declare-fun m!3445411 () Bool)

(assert (=> b!3187288 m!3445411))

(assert (=> b!3187288 m!3443321))

(assert (=> b!3187288 m!3445403))

(assert (=> b!3187288 m!3445403))

(assert (=> b!3187288 m!3445405))

(declare-fun m!3445418 () Bool)

(assert (=> b!3187292 m!3445418))

(assert (=> b!3187292 m!3443321))

(declare-fun m!3445421 () Bool)

(assert (=> b!3187292 m!3445421))

(declare-fun m!3445423 () Bool)

(assert (=> b!3187291 m!3445423))

(assert (=> b!3185852 d!872167))

(declare-fun d!872175 () Bool)

(declare-fun lt!1072447 () BalanceConc!20908)

(assert (=> d!872175 (= (list!12713 lt!1072447) (printList!1279 thiss!18206 (list!12715 (singletonSeq!2232 (h!41230 tokens!494)))))))

(assert (=> d!872175 (= lt!1072447 (printTailRec!1224 thiss!18206 (singletonSeq!2232 (h!41230 tokens!494)) 0 (BalanceConc!20909 Empty!10647)))))

(assert (=> d!872175 (= (print!1792 thiss!18206 (singletonSeq!2232 (h!41230 tokens!494))) lt!1072447)))

(declare-fun bs!540164 () Bool)

(assert (= bs!540164 d!872175))

(declare-fun m!3445425 () Bool)

(assert (=> bs!540164 m!3445425))

(assert (=> bs!540164 m!3442739))

(assert (=> bs!540164 m!3443323))

(assert (=> bs!540164 m!3443323))

(declare-fun m!3445427 () Bool)

(assert (=> bs!540164 m!3445427))

(assert (=> bs!540164 m!3442739))

(declare-fun m!3445429 () Bool)

(assert (=> bs!540164 m!3445429))

(assert (=> b!3185852 d!872175))

(assert (=> b!3185852 d!871471))

(assert (=> d!871523 d!871483))

(declare-fun d!872177 () Bool)

(assert (=> d!872177 (rulesProduceIndividualToken!2217 thiss!18206 rules!2135 (h!41230 tokens!494))))

(assert (=> d!872177 true))

(declare-fun _$77!773 () Unit!50220)

(assert (=> d!872177 (= (choose!18599 thiss!18206 rules!2135 tokens!494 (h!41230 tokens!494)) _$77!773)))

(declare-fun bs!540191 () Bool)

(assert (= bs!540191 d!872177))

(assert (=> bs!540191 m!3442639))

(assert (=> d!871523 d!872177))

(assert (=> d!871523 d!871447))

(declare-fun bs!540200 () Bool)

(declare-fun d!872297 () Bool)

(assert (= bs!540200 (and d!872297 b!3185350)))

(declare-fun lambda!116582 () Int)

(assert (=> bs!540200 (not (= lambda!116582 lambda!116529))))

(declare-fun bs!540201 () Bool)

(assert (= bs!540201 (and d!872297 d!871341)))

(assert (=> bs!540201 (= lambda!116582 lambda!116534)))

(declare-fun b!3187478 () Bool)

(declare-fun e!1986193 () Bool)

(assert (=> b!3187478 (= e!1986193 true)))

(declare-fun b!3187477 () Bool)

(declare-fun e!1986192 () Bool)

(assert (=> b!3187477 (= e!1986192 e!1986193)))

(declare-fun b!3187476 () Bool)

(declare-fun e!1986191 () Bool)

(assert (=> b!3187476 (= e!1986191 e!1986192)))

(assert (=> d!872297 e!1986191))

(assert (= b!3187477 b!3187478))

(assert (= b!3187476 b!3187477))

(assert (= (and d!872297 ((_ is Cons!35811) rules!2135)) b!3187476))

(assert (=> b!3187478 (< (dynLambda!14448 order!18239 (toValue!7196 (transformation!5136 (h!41231 rules!2135)))) (dynLambda!14449 order!18241 lambda!116582))))

(assert (=> b!3187478 (< (dynLambda!14450 order!18243 (toChars!7055 (transformation!5136 (h!41231 rules!2135)))) (dynLambda!14449 order!18241 lambda!116582))))

(assert (=> d!872297 true))

(declare-fun lt!1072519 () Bool)

(assert (=> d!872297 (= lt!1072519 (forall!7258 (list!12715 lt!1071489) lambda!116582))))

(declare-fun e!1986190 () Bool)

(assert (=> d!872297 (= lt!1072519 e!1986190)))

(declare-fun res!1295998 () Bool)

(assert (=> d!872297 (=> res!1295998 e!1986190)))

(assert (=> d!872297 (= res!1295998 (not ((_ is Cons!35810) (list!12715 lt!1071489))))))

(assert (=> d!872297 (not (isEmpty!19938 rules!2135))))

(assert (=> d!872297 (= (rulesProduceEachTokenIndividuallyList!1706 thiss!18206 rules!2135 (list!12715 lt!1071489)) lt!1072519)))

(declare-fun b!3187474 () Bool)

(declare-fun e!1986189 () Bool)

(assert (=> b!3187474 (= e!1986190 e!1986189)))

(declare-fun res!1295997 () Bool)

(assert (=> b!3187474 (=> (not res!1295997) (not e!1986189))))

(assert (=> b!3187474 (= res!1295997 (rulesProduceIndividualToken!2217 thiss!18206 rules!2135 (h!41230 (list!12715 lt!1071489))))))

(declare-fun b!3187475 () Bool)

(assert (=> b!3187475 (= e!1986189 (rulesProduceEachTokenIndividuallyList!1706 thiss!18206 rules!2135 (t!235527 (list!12715 lt!1071489))))))

(assert (= (and d!872297 (not res!1295998)) b!3187474))

(assert (= (and b!3187474 res!1295997) b!3187475))

(assert (=> d!872297 m!3443049))

(declare-fun m!3445831 () Bool)

(assert (=> d!872297 m!3445831))

(assert (=> d!872297 m!3442745))

(declare-fun m!3445833 () Bool)

(assert (=> b!3187474 m!3445833))

(declare-fun m!3445835 () Bool)

(assert (=> b!3187475 m!3445835))

(assert (=> b!3185612 d!872297))

(declare-fun d!872329 () Bool)

(assert (=> d!872329 (= (list!12715 lt!1071489) (list!12720 (c!534902 lt!1071489)))))

(declare-fun bs!540202 () Bool)

(assert (= bs!540202 d!872329))

(declare-fun m!3445837 () Bool)

(assert (=> bs!540202 m!3445837))

(assert (=> b!3185612 d!872329))

(assert (=> b!3185775 d!872095))

(assert (=> b!3186079 d!872015))

(declare-fun d!872331 () Bool)

(assert (=> d!872331 (= (isEmpty!19949 lt!1071484) (not ((_ is Some!7003) lt!1071484)))))

(assert (=> d!871571 d!872331))

(declare-fun d!872333 () Bool)

(assert (=> d!872333 (dynLambda!14456 lambda!116529 (h!41230 tokens!494))))

(assert (=> d!872333 true))

(declare-fun _$7!1043 () Unit!50220)

(assert (=> d!872333 (= (choose!18596 tokens!494 lambda!116529 (h!41230 tokens!494)) _$7!1043)))

(declare-fun b_lambda!86933 () Bool)

(assert (=> (not b_lambda!86933) (not d!872333)))

(declare-fun bs!540203 () Bool)

(assert (= bs!540203 d!872333))

(assert (=> bs!540203 m!3443217))

(assert (=> d!871497 d!872333))

(assert (=> d!871497 d!871463))

(declare-fun d!872335 () Bool)

(declare-fun res!1295999 () Bool)

(declare-fun e!1986194 () Bool)

(assert (=> d!872335 (=> res!1295999 e!1986194)))

(assert (=> d!872335 (= res!1295999 ((_ is Nil!35810) (t!235527 tokens!494)))))

(assert (=> d!872335 (= (forall!7258 (t!235527 tokens!494) lambda!116529) e!1986194)))

(declare-fun b!3187479 () Bool)

(declare-fun e!1986195 () Bool)

(assert (=> b!3187479 (= e!1986194 e!1986195)))

(declare-fun res!1296000 () Bool)

(assert (=> b!3187479 (=> (not res!1296000) (not e!1986195))))

(assert (=> b!3187479 (= res!1296000 (dynLambda!14456 lambda!116529 (h!41230 (t!235527 tokens!494))))))

(declare-fun b!3187480 () Bool)

(assert (=> b!3187480 (= e!1986195 (forall!7258 (t!235527 (t!235527 tokens!494)) lambda!116529))))

(assert (= (and d!872335 (not res!1295999)) b!3187479))

(assert (= (and b!3187479 res!1296000) b!3187480))

(declare-fun b_lambda!86935 () Bool)

(assert (=> (not b_lambda!86935) (not b!3187479)))

(declare-fun m!3445839 () Bool)

(assert (=> b!3187479 m!3445839))

(declare-fun m!3445841 () Bool)

(assert (=> b!3187480 m!3445841))

(assert (=> b!3185786 d!872335))

(declare-fun d!872337 () Bool)

(assert (=> d!872337 (= (inv!48656 (tag!5650 (h!41231 (t!235528 rules!2135)))) (= (mod (str.len (value!166835 (tag!5650 (h!41231 (t!235528 rules!2135))))) 2) 0))))

(assert (=> b!3186183 d!872337))

(declare-fun d!872339 () Bool)

(declare-fun res!1296001 () Bool)

(declare-fun e!1986196 () Bool)

(assert (=> d!872339 (=> (not res!1296001) (not e!1986196))))

(assert (=> d!872339 (= res!1296001 (semiInverseModEq!2139 (toChars!7055 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toValue!7196 (transformation!5136 (h!41231 (t!235528 rules!2135))))))))

(assert (=> d!872339 (= (inv!48660 (transformation!5136 (h!41231 (t!235528 rules!2135)))) e!1986196)))

(declare-fun b!3187481 () Bool)

(assert (=> b!3187481 (= e!1986196 (equivClasses!2038 (toChars!7055 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toValue!7196 (transformation!5136 (h!41231 (t!235528 rules!2135))))))))

(assert (= (and d!872339 res!1296001) b!3187481))

(declare-fun m!3445843 () Bool)

(assert (=> d!872339 m!3445843))

(declare-fun m!3445845 () Bool)

(assert (=> b!3187481 m!3445845))

(assert (=> b!3186183 d!872339))

(assert (=> b!3185877 d!871961))

(assert (=> b!3185877 d!871963))

(declare-fun d!872341 () Bool)

(assert (=> d!872341 (= (list!12713 lt!1071637) (list!12717 (c!534901 lt!1071637)))))

(declare-fun bs!540204 () Bool)

(assert (= bs!540204 d!872341))

(declare-fun m!3445847 () Bool)

(assert (=> bs!540204 m!3445847))

(assert (=> d!871437 d!872341))

(declare-fun d!872343 () Bool)

(declare-fun c!535420 () Bool)

(assert (=> d!872343 (= c!535420 ((_ is Cons!35810) (list!12715 lt!1071489)))))

(declare-fun e!1986203 () List!35933)

(assert (=> d!872343 (= (printWithSeparatorTokenList!98 thiss!18206 (list!12715 lt!1071489) separatorToken!241) e!1986203)))

(declare-fun b!3187492 () Bool)

(assert (=> b!3187492 (= e!1986203 (++!8566 (++!8566 (list!12713 (charsOf!3158 (h!41230 (list!12715 lt!1071489)))) (list!12713 (charsOf!3158 separatorToken!241))) (printWithSeparatorTokenList!98 thiss!18206 (t!235527 (list!12715 lt!1071489)) separatorToken!241)))))

(declare-fun b!3187493 () Bool)

(assert (=> b!3187493 (= e!1986203 Nil!35809)))

(assert (= (and d!872343 c!535420) b!3187492))

(assert (= (and d!872343 (not c!535420)) b!3187493))

(declare-fun m!3445849 () Bool)

(assert (=> b!3187492 m!3445849))

(declare-fun m!3445851 () Bool)

(assert (=> b!3187492 m!3445851))

(declare-fun m!3445853 () Bool)

(assert (=> b!3187492 m!3445853))

(assert (=> b!3187492 m!3442675))

(assert (=> b!3187492 m!3442679))

(declare-fun m!3445855 () Bool)

(assert (=> b!3187492 m!3445855))

(assert (=> b!3187492 m!3442679))

(assert (=> b!3187492 m!3445849))

(assert (=> b!3187492 m!3445851))

(assert (=> b!3187492 m!3442675))

(declare-fun m!3445857 () Bool)

(assert (=> b!3187492 m!3445857))

(assert (=> b!3187492 m!3445857))

(assert (=> b!3187492 m!3445855))

(assert (=> d!871437 d!872343))

(assert (=> d!871437 d!872329))

(declare-fun d!872345 () Bool)

(declare-fun lt!1072569 () BalanceConc!20908)

(declare-fun printWithSeparatorTokenListTailRec!1 (LexerInterface!4725 List!35934 Token!9638 List!35933) List!35933)

(assert (=> d!872345 (= (list!12713 lt!1072569) (printWithSeparatorTokenListTailRec!1 thiss!18206 (dropList!1062 lt!1071489 0) separatorToken!241 (list!12713 (BalanceConc!20909 Empty!10647))))))

(declare-fun e!1986250 () BalanceConc!20908)

(assert (=> d!872345 (= lt!1072569 e!1986250)))

(declare-fun c!535445 () Bool)

(assert (=> d!872345 (= c!535445 (>= 0 (size!27018 lt!1071489)))))

(declare-fun e!1986251 () Bool)

(assert (=> d!872345 e!1986251))

(declare-fun res!1296037 () Bool)

(assert (=> d!872345 (=> (not res!1296037) (not e!1986251))))

(assert (=> d!872345 (= res!1296037 (>= 0 0))))

(assert (=> d!872345 (= (printWithSeparatorTokenTailRec!12 thiss!18206 lt!1071489 separatorToken!241 0 (BalanceConc!20909 Empty!10647)) lt!1072569)))

(declare-fun b!3187572 () Bool)

(assert (=> b!3187572 (= e!1986251 (<= 0 (size!27018 lt!1071489)))))

(declare-fun b!3187573 () Bool)

(assert (=> b!3187573 (= e!1986250 (BalanceConc!20909 Empty!10647))))

(declare-fun b!3187574 () Bool)

(assert (=> b!3187574 (= e!1986250 (printWithSeparatorTokenTailRec!12 thiss!18206 lt!1071489 separatorToken!241 (+ 0 1) (++!8568 (++!8568 (BalanceConc!20909 Empty!10647) (charsOf!3158 (apply!8067 lt!1071489 0))) (charsOf!3158 separatorToken!241))))))

(declare-fun lt!1072573 () List!35934)

(assert (=> b!3187574 (= lt!1072573 (list!12715 lt!1071489))))

(declare-fun lt!1072571 () Unit!50220)

(assert (=> b!3187574 (= lt!1072571 (lemmaDropApply!1021 lt!1072573 0))))

(assert (=> b!3187574 (= (head!6969 (drop!1845 lt!1072573 0)) (apply!8068 lt!1072573 0))))

(declare-fun lt!1072570 () Unit!50220)

(assert (=> b!3187574 (= lt!1072570 lt!1072571)))

(declare-fun lt!1072574 () List!35934)

(assert (=> b!3187574 (= lt!1072574 (list!12715 lt!1071489))))

(declare-fun lt!1072575 () Unit!50220)

(assert (=> b!3187574 (= lt!1072575 (lemmaDropTail!905 lt!1072574 0))))

(assert (=> b!3187574 (= (tail!5185 (drop!1845 lt!1072574 0)) (drop!1845 lt!1072574 (+ 0 1)))))

(declare-fun lt!1072572 () Unit!50220)

(assert (=> b!3187574 (= lt!1072572 lt!1072575)))

(assert (= (and d!872345 res!1296037) b!3187572))

(assert (= (and d!872345 c!535445) b!3187573))

(assert (= (and d!872345 (not c!535445)) b!3187574))

(declare-fun m!3445995 () Bool)

(assert (=> d!872345 m!3445995))

(assert (=> d!872345 m!3443257))

(declare-fun m!3445997 () Bool)

(assert (=> d!872345 m!3445997))

(declare-fun m!3445999 () Bool)

(assert (=> d!872345 m!3445999))

(assert (=> d!872345 m!3445995))

(assert (=> d!872345 m!3443257))

(declare-fun m!3446001 () Bool)

(assert (=> d!872345 m!3446001))

(assert (=> b!3187572 m!3446001))

(declare-fun m!3446003 () Bool)

(assert (=> b!3187574 m!3446003))

(declare-fun m!3446005 () Bool)

(assert (=> b!3187574 m!3446005))

(declare-fun m!3446007 () Bool)

(assert (=> b!3187574 m!3446007))

(declare-fun m!3446009 () Bool)

(assert (=> b!3187574 m!3446009))

(declare-fun m!3446011 () Bool)

(assert (=> b!3187574 m!3446011))

(assert (=> b!3187574 m!3442675))

(assert (=> b!3187574 m!3446003))

(declare-fun m!3446013 () Bool)

(assert (=> b!3187574 m!3446013))

(declare-fun m!3446015 () Bool)

(assert (=> b!3187574 m!3446015))

(assert (=> b!3187574 m!3446015))

(assert (=> b!3187574 m!3446011))

(assert (=> b!3187574 m!3446013))

(declare-fun m!3446017 () Bool)

(assert (=> b!3187574 m!3446017))

(declare-fun m!3446019 () Bool)

(assert (=> b!3187574 m!3446019))

(assert (=> b!3187574 m!3442675))

(assert (=> b!3187574 m!3446009))

(declare-fun m!3446021 () Bool)

(assert (=> b!3187574 m!3446021))

(declare-fun m!3446023 () Bool)

(assert (=> b!3187574 m!3446023))

(declare-fun m!3446025 () Bool)

(assert (=> b!3187574 m!3446025))

(assert (=> b!3187574 m!3443049))

(assert (=> b!3187574 m!3446023))

(declare-fun m!3446027 () Bool)

(assert (=> b!3187574 m!3446027))

(assert (=> d!871437 d!872345))

(declare-fun b!3187586 () Bool)

(declare-fun res!1296041 () Bool)

(declare-fun e!1986259 () Bool)

(assert (=> b!3187586 (=> (not res!1296041) (not e!1986259))))

(declare-fun lt!1072580 () Option!7003)

(assert (=> b!3187586 (= res!1296041 (= (value!166836 (_1!20718 (get!11399 lt!1072580))) (apply!8064 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1072580)))) (seqFromList!3351 (originalCharacters!5850 (_1!20718 (get!11399 lt!1072580)))))))))

(declare-fun bm!231301 () Bool)

(declare-fun call!231306 () Option!7003)

(assert (=> bm!231301 (= call!231306 (maxPrefixOneRule!1530 thiss!18206 (h!41231 rules!2135) (++!8566 (list!12713 (charsOf!3158 (h!41230 tokens!494))) lt!1071487)))))

(declare-fun b!3187587 () Bool)

(declare-fun e!1986260 () Option!7003)

(assert (=> b!3187587 (= e!1986260 call!231306)))

(declare-fun b!3187588 () Bool)

(declare-fun res!1296042 () Bool)

(assert (=> b!3187588 (=> (not res!1296042) (not e!1986259))))

(assert (=> b!3187588 (= res!1296042 (matchR!4553 (regex!5136 (rule!7558 (_1!20718 (get!11399 lt!1072580)))) (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1072580))))))))

(declare-fun d!872391 () Bool)

(declare-fun e!1986258 () Bool)

(assert (=> d!872391 e!1986258))

(declare-fun res!1296040 () Bool)

(assert (=> d!872391 (=> res!1296040 e!1986258)))

(assert (=> d!872391 (= res!1296040 (isEmpty!19943 lt!1072580))))

(assert (=> d!872391 (= lt!1072580 e!1986260)))

(declare-fun c!535446 () Bool)

(assert (=> d!872391 (= c!535446 (and ((_ is Cons!35811) rules!2135) ((_ is Nil!35811) (t!235528 rules!2135))))))

(declare-fun lt!1072578 () Unit!50220)

(declare-fun lt!1072576 () Unit!50220)

(assert (=> d!872391 (= lt!1072578 lt!1072576)))

(assert (=> d!872391 (isPrefix!2771 (++!8566 (list!12713 (charsOf!3158 (h!41230 tokens!494))) lt!1071487) (++!8566 (list!12713 (charsOf!3158 (h!41230 tokens!494))) lt!1071487))))

(assert (=> d!872391 (= lt!1072576 (lemmaIsPrefixRefl!1730 (++!8566 (list!12713 (charsOf!3158 (h!41230 tokens!494))) lt!1071487) (++!8566 (list!12713 (charsOf!3158 (h!41230 tokens!494))) lt!1071487)))))

(assert (=> d!872391 (rulesValidInductive!1760 thiss!18206 rules!2135)))

(assert (=> d!872391 (= (maxPrefix!2403 thiss!18206 rules!2135 (++!8566 (list!12713 (charsOf!3158 (h!41230 tokens!494))) lt!1071487)) lt!1072580)))

(declare-fun b!3187589 () Bool)

(declare-fun res!1296038 () Bool)

(assert (=> b!3187589 (=> (not res!1296038) (not e!1986259))))

(assert (=> b!3187589 (= res!1296038 (< (size!27015 (_2!20718 (get!11399 lt!1072580))) (size!27015 (++!8566 (list!12713 (charsOf!3158 (h!41230 tokens!494))) lt!1071487))))))

(declare-fun b!3187590 () Bool)

(declare-fun res!1296044 () Bool)

(assert (=> b!3187590 (=> (not res!1296044) (not e!1986259))))

(assert (=> b!3187590 (= res!1296044 (= (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1072580)))) (originalCharacters!5850 (_1!20718 (get!11399 lt!1072580)))))))

(declare-fun b!3187591 () Bool)

(declare-fun lt!1072577 () Option!7003)

(declare-fun lt!1072579 () Option!7003)

(assert (=> b!3187591 (= e!1986260 (ite (and ((_ is None!7002) lt!1072577) ((_ is None!7002) lt!1072579)) None!7002 (ite ((_ is None!7002) lt!1072579) lt!1072577 (ite ((_ is None!7002) lt!1072577) lt!1072579 (ite (>= (size!27014 (_1!20718 (v!35480 lt!1072577))) (size!27014 (_1!20718 (v!35480 lt!1072579)))) lt!1072577 lt!1072579)))))))

(assert (=> b!3187591 (= lt!1072577 call!231306)))

(assert (=> b!3187591 (= lt!1072579 (maxPrefix!2403 thiss!18206 (t!235528 rules!2135) (++!8566 (list!12713 (charsOf!3158 (h!41230 tokens!494))) lt!1071487)))))

(declare-fun b!3187592 () Bool)

(declare-fun res!1296043 () Bool)

(assert (=> b!3187592 (=> (not res!1296043) (not e!1986259))))

(assert (=> b!3187592 (= res!1296043 (= (++!8566 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1072580)))) (_2!20718 (get!11399 lt!1072580))) (++!8566 (list!12713 (charsOf!3158 (h!41230 tokens!494))) lt!1071487)))))

(declare-fun b!3187593 () Bool)

(assert (=> b!3187593 (= e!1986259 (contains!6354 rules!2135 (rule!7558 (_1!20718 (get!11399 lt!1072580)))))))

(declare-fun b!3187594 () Bool)

(assert (=> b!3187594 (= e!1986258 e!1986259)))

(declare-fun res!1296039 () Bool)

(assert (=> b!3187594 (=> (not res!1296039) (not e!1986259))))

(assert (=> b!3187594 (= res!1296039 (isDefined!5485 lt!1072580))))

(assert (= (and d!872391 c!535446) b!3187587))

(assert (= (and d!872391 (not c!535446)) b!3187591))

(assert (= (or b!3187587 b!3187591) bm!231301))

(assert (= (and d!872391 (not res!1296040)) b!3187594))

(assert (= (and b!3187594 res!1296039) b!3187590))

(assert (= (and b!3187590 res!1296044) b!3187589))

(assert (= (and b!3187589 res!1296038) b!3187592))

(assert (= (and b!3187592 res!1296043) b!3187586))

(assert (= (and b!3187586 res!1296041) b!3187588))

(assert (= (and b!3187588 res!1296042) b!3187593))

(declare-fun m!3446029 () Bool)

(assert (=> b!3187588 m!3446029))

(declare-fun m!3446031 () Bool)

(assert (=> b!3187588 m!3446031))

(assert (=> b!3187588 m!3446031))

(declare-fun m!3446035 () Bool)

(assert (=> b!3187588 m!3446035))

(assert (=> b!3187588 m!3446035))

(declare-fun m!3446037 () Bool)

(assert (=> b!3187588 m!3446037))

(declare-fun m!3446039 () Bool)

(assert (=> b!3187594 m!3446039))

(assert (=> b!3187592 m!3446029))

(assert (=> b!3187592 m!3446031))

(assert (=> b!3187592 m!3446031))

(assert (=> b!3187592 m!3446035))

(assert (=> b!3187592 m!3446035))

(declare-fun m!3446043 () Bool)

(assert (=> b!3187592 m!3446043))

(assert (=> b!3187591 m!3443143))

(declare-fun m!3446045 () Bool)

(assert (=> b!3187591 m!3446045))

(declare-fun m!3446047 () Bool)

(assert (=> d!872391 m!3446047))

(assert (=> d!872391 m!3443143))

(assert (=> d!872391 m!3443143))

(declare-fun m!3446049 () Bool)

(assert (=> d!872391 m!3446049))

(assert (=> d!872391 m!3443143))

(assert (=> d!872391 m!3443143))

(declare-fun m!3446051 () Bool)

(assert (=> d!872391 m!3446051))

(assert (=> d!872391 m!3443095))

(assert (=> bm!231301 m!3443143))

(declare-fun m!3446053 () Bool)

(assert (=> bm!231301 m!3446053))

(assert (=> b!3187586 m!3446029))

(declare-fun m!3446055 () Bool)

(assert (=> b!3187586 m!3446055))

(assert (=> b!3187586 m!3446055))

(declare-fun m!3446057 () Bool)

(assert (=> b!3187586 m!3446057))

(assert (=> b!3187593 m!3446029))

(declare-fun m!3446059 () Bool)

(assert (=> b!3187593 m!3446059))

(assert (=> b!3187589 m!3446029))

(declare-fun m!3446061 () Bool)

(assert (=> b!3187589 m!3446061))

(assert (=> b!3187589 m!3443143))

(declare-fun m!3446063 () Bool)

(assert (=> b!3187589 m!3446063))

(assert (=> b!3187590 m!3446029))

(assert (=> b!3187590 m!3446031))

(assert (=> b!3187590 m!3446031))

(assert (=> b!3187590 m!3446035))

(assert (=> d!871431 d!872391))

(assert (=> d!871431 d!871517))

(declare-fun d!872393 () Bool)

(assert (=> d!872393 (= (maxPrefix!2403 thiss!18206 rules!2135 (++!8566 (list!12713 (charsOf!3158 (h!41230 tokens!494))) lt!1071487)) (Some!7002 (tuple2!35169 (h!41230 tokens!494) lt!1071487)))))

(assert (=> d!872393 true))

(declare-fun _$49!190 () Unit!50220)

(assert (=> d!872393 (= (choose!18594 thiss!18206 rules!2135 (h!41230 tokens!494) (rule!7558 (h!41230 tokens!494)) lt!1071487 (rule!7558 separatorToken!241)) _$49!190)))

(declare-fun bs!540213 () Bool)

(assert (= bs!540213 d!872393))

(assert (=> bs!540213 m!3442689))

(assert (=> bs!540213 m!3442689))

(assert (=> bs!540213 m!3442691))

(assert (=> bs!540213 m!3442691))

(assert (=> bs!540213 m!3443143))

(assert (=> bs!540213 m!3443143))

(assert (=> bs!540213 m!3443145))

(assert (=> d!871431 d!872393))

(assert (=> d!871431 d!871447))

(assert (=> d!871431 d!871519))

(declare-fun b!3187681 () Bool)

(declare-fun res!1296045 () Bool)

(declare-fun e!1986297 () Bool)

(assert (=> b!3187681 (=> (not res!1296045) (not e!1986297))))

(declare-fun lt!1072581 () List!35933)

(assert (=> b!3187681 (= res!1296045 (= (size!27015 lt!1072581) (+ (size!27015 (list!12713 (charsOf!3158 (h!41230 tokens!494)))) (size!27015 lt!1071487))))))

(declare-fun b!3187680 () Bool)

(declare-fun e!1986296 () List!35933)

(assert (=> b!3187680 (= e!1986296 (Cons!35809 (h!41229 (list!12713 (charsOf!3158 (h!41230 tokens!494)))) (++!8566 (t!235526 (list!12713 (charsOf!3158 (h!41230 tokens!494)))) lt!1071487)))))

(declare-fun b!3187679 () Bool)

(assert (=> b!3187679 (= e!1986296 lt!1071487)))

(declare-fun b!3187682 () Bool)

(assert (=> b!3187682 (= e!1986297 (or (not (= lt!1071487 Nil!35809)) (= lt!1072581 (list!12713 (charsOf!3158 (h!41230 tokens!494))))))))

(declare-fun d!872399 () Bool)

(assert (=> d!872399 e!1986297))

(declare-fun res!1296046 () Bool)

(assert (=> d!872399 (=> (not res!1296046) (not e!1986297))))

(assert (=> d!872399 (= res!1296046 (= (content!4850 lt!1072581) ((_ map or) (content!4850 (list!12713 (charsOf!3158 (h!41230 tokens!494)))) (content!4850 lt!1071487))))))

(assert (=> d!872399 (= lt!1072581 e!1986296)))

(declare-fun c!535447 () Bool)

(assert (=> d!872399 (= c!535447 ((_ is Nil!35809) (list!12713 (charsOf!3158 (h!41230 tokens!494)))))))

(assert (=> d!872399 (= (++!8566 (list!12713 (charsOf!3158 (h!41230 tokens!494))) lt!1071487) lt!1072581)))

(assert (= (and d!872399 c!535447) b!3187679))

(assert (= (and d!872399 (not c!535447)) b!3187680))

(assert (= (and d!872399 res!1296046) b!3187681))

(assert (= (and b!3187681 res!1296045) b!3187682))

(declare-fun m!3446085 () Bool)

(assert (=> b!3187681 m!3446085))

(assert (=> b!3187681 m!3442691))

(declare-fun m!3446087 () Bool)

(assert (=> b!3187681 m!3446087))

(assert (=> b!3187681 m!3443149))

(declare-fun m!3446089 () Bool)

(assert (=> b!3187680 m!3446089))

(declare-fun m!3446091 () Bool)

(assert (=> d!872399 m!3446091))

(assert (=> d!872399 m!3442691))

(declare-fun m!3446093 () Bool)

(assert (=> d!872399 m!3446093))

(assert (=> d!872399 m!3443157))

(assert (=> d!871431 d!872399))

(declare-fun d!872401 () Bool)

(declare-fun lt!1072582 () Bool)

(assert (=> d!872401 (= lt!1072582 (select (content!4854 rules!2135) (get!11397 lt!1071752)))))

(declare-fun e!1986298 () Bool)

(assert (=> d!872401 (= lt!1072582 e!1986298)))

(declare-fun res!1296047 () Bool)

(assert (=> d!872401 (=> (not res!1296047) (not e!1986298))))

(assert (=> d!872401 (= res!1296047 ((_ is Cons!35811) rules!2135))))

(assert (=> d!872401 (= (contains!6354 rules!2135 (get!11397 lt!1071752)) lt!1072582)))

(declare-fun b!3187683 () Bool)

(declare-fun e!1986299 () Bool)

(assert (=> b!3187683 (= e!1986298 e!1986299)))

(declare-fun res!1296048 () Bool)

(assert (=> b!3187683 (=> res!1296048 e!1986299)))

(assert (=> b!3187683 (= res!1296048 (= (h!41231 rules!2135) (get!11397 lt!1071752)))))

(declare-fun b!3187684 () Bool)

(assert (=> b!3187684 (= e!1986299 (contains!6354 (t!235528 rules!2135) (get!11397 lt!1071752)))))

(assert (= (and d!872401 res!1296047) b!3187683))

(assert (= (and b!3187683 (not res!1296048)) b!3187684))

(assert (=> d!872401 m!3444171))

(assert (=> d!872401 m!3443595))

(declare-fun m!3446095 () Bool)

(assert (=> d!872401 m!3446095))

(assert (=> b!3187684 m!3443595))

(declare-fun m!3446097 () Bool)

(assert (=> b!3187684 m!3446097))

(assert (=> b!3186074 d!872401))

(declare-fun d!872403 () Bool)

(assert (=> d!872403 (= (get!11397 lt!1071752) (v!35481 lt!1071752))))

(assert (=> b!3186074 d!872403))

(declare-fun b!3187685 () Bool)

(declare-fun res!1296055 () Bool)

(declare-fun e!1986303 () Bool)

(assert (=> b!3187685 (=> (not res!1296055) (not e!1986303))))

(declare-fun lt!1072584 () Option!7003)

(assert (=> b!3187685 (= res!1296055 (= (rule!7558 (_1!20718 (get!11399 lt!1072584))) (h!41231 rules!2135)))))

(declare-fun d!872405 () Bool)

(declare-fun e!1986301 () Bool)

(assert (=> d!872405 e!1986301))

(declare-fun res!1296052 () Bool)

(assert (=> d!872405 (=> res!1296052 e!1986301)))

(assert (=> d!872405 (= res!1296052 (isEmpty!19943 lt!1072584))))

(declare-fun e!1986300 () Option!7003)

(assert (=> d!872405 (= lt!1072584 e!1986300)))

(declare-fun c!535448 () Bool)

(declare-fun lt!1072585 () tuple2!35176)

(assert (=> d!872405 (= c!535448 (isEmpty!19939 (_1!20722 lt!1072585)))))

(assert (=> d!872405 (= lt!1072585 (findLongestMatch!734 (regex!5136 (h!41231 rules!2135)) lt!1071473))))

(assert (=> d!872405 (ruleValid!1630 thiss!18206 (h!41231 rules!2135))))

(assert (=> d!872405 (= (maxPrefixOneRule!1530 thiss!18206 (h!41231 rules!2135) lt!1071473) lt!1072584)))

(declare-fun b!3187686 () Bool)

(assert (=> b!3187686 (= e!1986300 None!7002)))

(declare-fun b!3187687 () Bool)

(declare-fun res!1296050 () Bool)

(assert (=> b!3187687 (=> (not res!1296050) (not e!1986303))))

(assert (=> b!3187687 (= res!1296050 (= (value!166836 (_1!20718 (get!11399 lt!1072584))) (apply!8064 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1072584)))) (seqFromList!3351 (originalCharacters!5850 (_1!20718 (get!11399 lt!1072584)))))))))

(declare-fun b!3187688 () Bool)

(assert (=> b!3187688 (= e!1986301 e!1986303)))

(declare-fun res!1296049 () Bool)

(assert (=> b!3187688 (=> (not res!1296049) (not e!1986303))))

(assert (=> b!3187688 (= res!1296049 (matchR!4553 (regex!5136 (h!41231 rules!2135)) (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1072584))))))))

(declare-fun b!3187689 () Bool)

(declare-fun res!1296051 () Bool)

(assert (=> b!3187689 (=> (not res!1296051) (not e!1986303))))

(assert (=> b!3187689 (= res!1296051 (< (size!27015 (_2!20718 (get!11399 lt!1072584))) (size!27015 lt!1071473)))))

(declare-fun b!3187690 () Bool)

(declare-fun e!1986302 () Bool)

(assert (=> b!3187690 (= e!1986302 (matchR!4553 (regex!5136 (h!41231 rules!2135)) (_1!20722 (findLongestMatchInner!819 (regex!5136 (h!41231 rules!2135)) Nil!35809 (size!27015 Nil!35809) lt!1071473 lt!1071473 (size!27015 lt!1071473)))))))

(declare-fun b!3187691 () Bool)

(assert (=> b!3187691 (= e!1986303 (= (size!27014 (_1!20718 (get!11399 lt!1072584))) (size!27015 (originalCharacters!5850 (_1!20718 (get!11399 lt!1072584))))))))

(declare-fun b!3187692 () Bool)

(assert (=> b!3187692 (= e!1986300 (Some!7002 (tuple2!35169 (Token!9639 (apply!8064 (transformation!5136 (h!41231 rules!2135)) (seqFromList!3351 (_1!20722 lt!1072585))) (h!41231 rules!2135) (size!27019 (seqFromList!3351 (_1!20722 lt!1072585))) (_1!20722 lt!1072585)) (_2!20722 lt!1072585))))))

(declare-fun lt!1072587 () Unit!50220)

(assert (=> b!3187692 (= lt!1072587 (longestMatchIsAcceptedByMatchOrIsEmpty!792 (regex!5136 (h!41231 rules!2135)) lt!1071473))))

(declare-fun res!1296054 () Bool)

(assert (=> b!3187692 (= res!1296054 (isEmpty!19939 (_1!20722 (findLongestMatchInner!819 (regex!5136 (h!41231 rules!2135)) Nil!35809 (size!27015 Nil!35809) lt!1071473 lt!1071473 (size!27015 lt!1071473)))))))

(assert (=> b!3187692 (=> res!1296054 e!1986302)))

(assert (=> b!3187692 e!1986302))

(declare-fun lt!1072586 () Unit!50220)

(assert (=> b!3187692 (= lt!1072586 lt!1072587)))

(declare-fun lt!1072583 () Unit!50220)

(assert (=> b!3187692 (= lt!1072583 (lemmaSemiInverse!1161 (transformation!5136 (h!41231 rules!2135)) (seqFromList!3351 (_1!20722 lt!1072585))))))

(declare-fun b!3187693 () Bool)

(declare-fun res!1296053 () Bool)

(assert (=> b!3187693 (=> (not res!1296053) (not e!1986303))))

(assert (=> b!3187693 (= res!1296053 (= (++!8566 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1072584)))) (_2!20718 (get!11399 lt!1072584))) lt!1071473))))

(assert (= (and d!872405 c!535448) b!3187686))

(assert (= (and d!872405 (not c!535448)) b!3187692))

(assert (= (and b!3187692 (not res!1296054)) b!3187690))

(assert (= (and d!872405 (not res!1296052)) b!3187688))

(assert (= (and b!3187688 res!1296049) b!3187693))

(assert (= (and b!3187693 res!1296053) b!3187689))

(assert (= (and b!3187689 res!1296051) b!3187685))

(assert (= (and b!3187685 res!1296055) b!3187687))

(assert (= (and b!3187687 res!1296050) b!3187691))

(declare-fun m!3446099 () Bool)

(assert (=> b!3187685 m!3446099))

(assert (=> b!3187688 m!3446099))

(declare-fun m!3446101 () Bool)

(assert (=> b!3187688 m!3446101))

(assert (=> b!3187688 m!3446101))

(declare-fun m!3446103 () Bool)

(assert (=> b!3187688 m!3446103))

(assert (=> b!3187688 m!3446103))

(declare-fun m!3446105 () Bool)

(assert (=> b!3187688 m!3446105))

(assert (=> b!3187687 m!3446099))

(declare-fun m!3446107 () Bool)

(assert (=> b!3187687 m!3446107))

(assert (=> b!3187687 m!3446107))

(declare-fun m!3446109 () Bool)

(assert (=> b!3187687 m!3446109))

(declare-fun m!3446111 () Bool)

(assert (=> b!3187692 m!3446111))

(assert (=> b!3187692 m!3443139))

(declare-fun m!3446113 () Bool)

(assert (=> b!3187692 m!3446113))

(declare-fun m!3446115 () Bool)

(assert (=> b!3187692 m!3446115))

(assert (=> b!3187692 m!3446113))

(declare-fun m!3446117 () Bool)

(assert (=> b!3187692 m!3446117))

(assert (=> b!3187692 m!3443647))

(assert (=> b!3187692 m!3443647))

(assert (=> b!3187692 m!3443139))

(declare-fun m!3446119 () Bool)

(assert (=> b!3187692 m!3446119))

(assert (=> b!3187692 m!3446113))

(declare-fun m!3446121 () Bool)

(assert (=> b!3187692 m!3446121))

(assert (=> b!3187692 m!3446113))

(declare-fun m!3446123 () Bool)

(assert (=> b!3187692 m!3446123))

(assert (=> b!3187689 m!3446099))

(declare-fun m!3446125 () Bool)

(assert (=> b!3187689 m!3446125))

(assert (=> b!3187689 m!3443139))

(declare-fun m!3446127 () Bool)

(assert (=> d!872405 m!3446127))

(declare-fun m!3446129 () Bool)

(assert (=> d!872405 m!3446129))

(declare-fun m!3446131 () Bool)

(assert (=> d!872405 m!3446131))

(assert (=> d!872405 m!3444791))

(assert (=> b!3187693 m!3446099))

(assert (=> b!3187693 m!3446101))

(assert (=> b!3187693 m!3446101))

(assert (=> b!3187693 m!3446103))

(assert (=> b!3187693 m!3446103))

(declare-fun m!3446133 () Bool)

(assert (=> b!3187693 m!3446133))

(assert (=> b!3187691 m!3446099))

(declare-fun m!3446135 () Bool)

(assert (=> b!3187691 m!3446135))

(assert (=> b!3187690 m!3443647))

(assert (=> b!3187690 m!3443139))

(assert (=> b!3187690 m!3443647))

(assert (=> b!3187690 m!3443139))

(assert (=> b!3187690 m!3446119))

(declare-fun m!3446137 () Bool)

(assert (=> b!3187690 m!3446137))

(assert (=> bm!231107 d!872405))

(declare-fun b!3187694 () Bool)

(declare-fun e!1986304 () Bool)

(assert (=> b!3187694 (= e!1986304 (inv!17 (dynLambda!14457 (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) lt!1071478)))))

(declare-fun d!872407 () Bool)

(declare-fun c!535449 () Bool)

(assert (=> d!872407 (= c!535449 ((_ is IntegerValue!16098) (dynLambda!14457 (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) lt!1071478)))))

(declare-fun e!1986305 () Bool)

(assert (=> d!872407 (= (inv!21 (dynLambda!14457 (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) lt!1071478)) e!1986305)))

(declare-fun b!3187695 () Bool)

(declare-fun e!1986306 () Bool)

(assert (=> b!3187695 (= e!1986306 (inv!15 (dynLambda!14457 (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) lt!1071478)))))

(declare-fun b!3187696 () Bool)

(declare-fun res!1296056 () Bool)

(assert (=> b!3187696 (=> res!1296056 e!1986306)))

(assert (=> b!3187696 (= res!1296056 (not ((_ is IntegerValue!16100) (dynLambda!14457 (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) lt!1071478))))))

(assert (=> b!3187696 (= e!1986304 e!1986306)))

(declare-fun b!3187697 () Bool)

(assert (=> b!3187697 (= e!1986305 e!1986304)))

(declare-fun c!535450 () Bool)

(assert (=> b!3187697 (= c!535450 ((_ is IntegerValue!16099) (dynLambda!14457 (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) lt!1071478)))))

(declare-fun b!3187698 () Bool)

(assert (=> b!3187698 (= e!1986305 (inv!16 (dynLambda!14457 (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) lt!1071478)))))

(assert (= (and d!872407 c!535449) b!3187698))

(assert (= (and d!872407 (not c!535449)) b!3187697))

(assert (= (and b!3187697 c!535450) b!3187694))

(assert (= (and b!3187697 (not c!535450)) b!3187696))

(assert (= (and b!3187696 (not res!1296056)) b!3187695))

(declare-fun m!3446139 () Bool)

(assert (=> b!3187694 m!3446139))

(declare-fun m!3446141 () Bool)

(assert (=> b!3187695 m!3446141))

(declare-fun m!3446143 () Bool)

(assert (=> b!3187698 m!3446143))

(assert (=> tb!155497 d!872407))

(declare-fun d!872409 () Bool)

(declare-fun lt!1072588 () Int)

(assert (=> d!872409 (>= lt!1072588 0)))

(declare-fun e!1986307 () Int)

(assert (=> d!872409 (= lt!1072588 e!1986307)))

(declare-fun c!535451 () Bool)

(assert (=> d!872409 (= c!535451 ((_ is Nil!35809) (_2!20718 (get!11399 lt!1071771))))))

(assert (=> d!872409 (= (size!27015 (_2!20718 (get!11399 lt!1071771))) lt!1072588)))

(declare-fun b!3187699 () Bool)

(assert (=> b!3187699 (= e!1986307 0)))

(declare-fun b!3187700 () Bool)

(assert (=> b!3187700 (= e!1986307 (+ 1 (size!27015 (t!235526 (_2!20718 (get!11399 lt!1071771))))))))

(assert (= (and d!872409 c!535451) b!3187699))

(assert (= (and d!872409 (not c!535451)) b!3187700))

(declare-fun m!3446145 () Bool)

(assert (=> b!3187700 m!3446145))

(assert (=> b!3186109 d!872409))

(assert (=> b!3186109 d!871859))

(assert (=> b!3186109 d!871575))

(declare-fun d!872411 () Bool)

(declare-fun res!1296061 () Bool)

(declare-fun e!1986312 () Bool)

(assert (=> d!872411 (=> res!1296061 e!1986312)))

(assert (=> d!872411 (= res!1296061 ((_ is Nil!35811) rules!2135))))

(assert (=> d!872411 (= (noDuplicateTag!1894 thiss!18206 rules!2135 Nil!35812) e!1986312)))

(declare-fun b!3187705 () Bool)

(declare-fun e!1986313 () Bool)

(assert (=> b!3187705 (= e!1986312 e!1986313)))

(declare-fun res!1296062 () Bool)

(assert (=> b!3187705 (=> (not res!1296062) (not e!1986313))))

(declare-fun contains!6357 (List!35936 String!40164) Bool)

(assert (=> b!3187705 (= res!1296062 (not (contains!6357 Nil!35812 (tag!5650 (h!41231 rules!2135)))))))

(declare-fun b!3187706 () Bool)

(assert (=> b!3187706 (= e!1986313 (noDuplicateTag!1894 thiss!18206 (t!235528 rules!2135) (Cons!35812 (tag!5650 (h!41231 rules!2135)) Nil!35812)))))

(assert (= (and d!872411 (not res!1296061)) b!3187705))

(assert (= (and b!3187705 res!1296062) b!3187706))

(declare-fun m!3446147 () Bool)

(assert (=> b!3187705 m!3446147))

(declare-fun m!3446149 () Bool)

(assert (=> b!3187706 m!3446149))

(assert (=> b!3185870 d!872411))

(assert (=> b!3186105 d!871859))

(declare-fun b!3187707 () Bool)

(declare-fun res!1296066 () Bool)

(declare-fun e!1986315 () Bool)

(assert (=> b!3187707 (=> (not res!1296066) (not e!1986315))))

(declare-fun lt!1072593 () Option!7003)

(assert (=> b!3187707 (= res!1296066 (= (value!166836 (_1!20718 (get!11399 lt!1072593))) (apply!8064 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1072593)))) (seqFromList!3351 (originalCharacters!5850 (_1!20718 (get!11399 lt!1072593)))))))))

(declare-fun call!231307 () Option!7003)

(declare-fun bm!231302 () Bool)

(assert (=> bm!231302 (= call!231307 (maxPrefixOneRule!1530 thiss!18206 (h!41231 (t!235528 rules!2135)) lt!1071470))))

(declare-fun b!3187708 () Bool)

(declare-fun e!1986316 () Option!7003)

(assert (=> b!3187708 (= e!1986316 call!231307)))

(declare-fun b!3187709 () Bool)

(declare-fun res!1296067 () Bool)

(assert (=> b!3187709 (=> (not res!1296067) (not e!1986315))))

(assert (=> b!3187709 (= res!1296067 (matchR!4553 (regex!5136 (rule!7558 (_1!20718 (get!11399 lt!1072593)))) (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1072593))))))))

(declare-fun d!872413 () Bool)

(declare-fun e!1986314 () Bool)

(assert (=> d!872413 e!1986314))

(declare-fun res!1296065 () Bool)

(assert (=> d!872413 (=> res!1296065 e!1986314)))

(assert (=> d!872413 (= res!1296065 (isEmpty!19943 lt!1072593))))

(assert (=> d!872413 (= lt!1072593 e!1986316)))

(declare-fun c!535452 () Bool)

(assert (=> d!872413 (= c!535452 (and ((_ is Cons!35811) (t!235528 rules!2135)) ((_ is Nil!35811) (t!235528 (t!235528 rules!2135)))))))

(declare-fun lt!1072591 () Unit!50220)

(declare-fun lt!1072589 () Unit!50220)

(assert (=> d!872413 (= lt!1072591 lt!1072589)))

(assert (=> d!872413 (isPrefix!2771 lt!1071470 lt!1071470)))

(assert (=> d!872413 (= lt!1072589 (lemmaIsPrefixRefl!1730 lt!1071470 lt!1071470))))

(assert (=> d!872413 (rulesValidInductive!1760 thiss!18206 (t!235528 rules!2135))))

(assert (=> d!872413 (= (maxPrefix!2403 thiss!18206 (t!235528 rules!2135) lt!1071470) lt!1072593)))

(declare-fun b!3187710 () Bool)

(declare-fun res!1296063 () Bool)

(assert (=> b!3187710 (=> (not res!1296063) (not e!1986315))))

(assert (=> b!3187710 (= res!1296063 (< (size!27015 (_2!20718 (get!11399 lt!1072593))) (size!27015 lt!1071470)))))

(declare-fun b!3187711 () Bool)

(declare-fun res!1296069 () Bool)

(assert (=> b!3187711 (=> (not res!1296069) (not e!1986315))))

(assert (=> b!3187711 (= res!1296069 (= (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1072593)))) (originalCharacters!5850 (_1!20718 (get!11399 lt!1072593)))))))

(declare-fun b!3187712 () Bool)

(declare-fun lt!1072590 () Option!7003)

(declare-fun lt!1072592 () Option!7003)

(assert (=> b!3187712 (= e!1986316 (ite (and ((_ is None!7002) lt!1072590) ((_ is None!7002) lt!1072592)) None!7002 (ite ((_ is None!7002) lt!1072592) lt!1072590 (ite ((_ is None!7002) lt!1072590) lt!1072592 (ite (>= (size!27014 (_1!20718 (v!35480 lt!1072590))) (size!27014 (_1!20718 (v!35480 lt!1072592)))) lt!1072590 lt!1072592)))))))

(assert (=> b!3187712 (= lt!1072590 call!231307)))

(assert (=> b!3187712 (= lt!1072592 (maxPrefix!2403 thiss!18206 (t!235528 (t!235528 rules!2135)) lt!1071470))))

(declare-fun b!3187713 () Bool)

(declare-fun res!1296068 () Bool)

(assert (=> b!3187713 (=> (not res!1296068) (not e!1986315))))

(assert (=> b!3187713 (= res!1296068 (= (++!8566 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1072593)))) (_2!20718 (get!11399 lt!1072593))) lt!1071470))))

(declare-fun b!3187714 () Bool)

(assert (=> b!3187714 (= e!1986315 (contains!6354 (t!235528 rules!2135) (rule!7558 (_1!20718 (get!11399 lt!1072593)))))))

(declare-fun b!3187715 () Bool)

(assert (=> b!3187715 (= e!1986314 e!1986315)))

(declare-fun res!1296064 () Bool)

(assert (=> b!3187715 (=> (not res!1296064) (not e!1986315))))

(assert (=> b!3187715 (= res!1296064 (isDefined!5485 lt!1072593))))

(assert (= (and d!872413 c!535452) b!3187708))

(assert (= (and d!872413 (not c!535452)) b!3187712))

(assert (= (or b!3187708 b!3187712) bm!231302))

(assert (= (and d!872413 (not res!1296065)) b!3187715))

(assert (= (and b!3187715 res!1296064) b!3187711))

(assert (= (and b!3187711 res!1296069) b!3187710))

(assert (= (and b!3187710 res!1296063) b!3187713))

(assert (= (and b!3187713 res!1296068) b!3187707))

(assert (= (and b!3187707 res!1296066) b!3187709))

(assert (= (and b!3187709 res!1296067) b!3187714))

(declare-fun m!3446151 () Bool)

(assert (=> b!3187709 m!3446151))

(declare-fun m!3446153 () Bool)

(assert (=> b!3187709 m!3446153))

(assert (=> b!3187709 m!3446153))

(declare-fun m!3446155 () Bool)

(assert (=> b!3187709 m!3446155))

(assert (=> b!3187709 m!3446155))

(declare-fun m!3446157 () Bool)

(assert (=> b!3187709 m!3446157))

(declare-fun m!3446159 () Bool)

(assert (=> b!3187715 m!3446159))

(assert (=> b!3187713 m!3446151))

(assert (=> b!3187713 m!3446153))

(assert (=> b!3187713 m!3446153))

(assert (=> b!3187713 m!3446155))

(assert (=> b!3187713 m!3446155))

(declare-fun m!3446161 () Bool)

(assert (=> b!3187713 m!3446161))

(declare-fun m!3446163 () Bool)

(assert (=> b!3187712 m!3446163))

(declare-fun m!3446165 () Bool)

(assert (=> d!872413 m!3446165))

(assert (=> d!872413 m!3443091))

(assert (=> d!872413 m!3443093))

(assert (=> d!872413 m!3444793))

(declare-fun m!3446167 () Bool)

(assert (=> bm!231302 m!3446167))

(assert (=> b!3187707 m!3446151))

(declare-fun m!3446169 () Bool)

(assert (=> b!3187707 m!3446169))

(assert (=> b!3187707 m!3446169))

(declare-fun m!3446171 () Bool)

(assert (=> b!3187707 m!3446171))

(assert (=> b!3187714 m!3446151))

(declare-fun m!3446173 () Bool)

(assert (=> b!3187714 m!3446173))

(assert (=> b!3187710 m!3446151))

(declare-fun m!3446175 () Bool)

(assert (=> b!3187710 m!3446175))

(assert (=> b!3187710 m!3443107))

(assert (=> b!3187711 m!3446151))

(assert (=> b!3187711 m!3446153))

(assert (=> b!3187711 m!3446153))

(assert (=> b!3187711 m!3446155))

(assert (=> b!3185679 d!872413))

(declare-fun b!3187718 () Bool)

(declare-fun res!1296070 () Bool)

(declare-fun e!1986318 () Bool)

(assert (=> b!3187718 (=> (not res!1296070) (not e!1986318))))

(declare-fun lt!1072594 () List!35933)

(assert (=> b!3187718 (= res!1296070 (= (size!27015 lt!1072594) (+ (size!27015 (ite c!534965 call!231105 call!231107)) (size!27015 (ite c!534965 call!231107 call!231105)))))))

(declare-fun b!3187717 () Bool)

(declare-fun e!1986317 () List!35933)

(assert (=> b!3187717 (= e!1986317 (Cons!35809 (h!41229 (ite c!534965 call!231105 call!231107)) (++!8566 (t!235526 (ite c!534965 call!231105 call!231107)) (ite c!534965 call!231107 call!231105))))))

(declare-fun b!3187716 () Bool)

(assert (=> b!3187716 (= e!1986317 (ite c!534965 call!231107 call!231105))))

(declare-fun b!3187719 () Bool)

(assert (=> b!3187719 (= e!1986318 (or (not (= (ite c!534965 call!231107 call!231105) Nil!35809)) (= lt!1072594 (ite c!534965 call!231105 call!231107))))))

(declare-fun d!872415 () Bool)

(assert (=> d!872415 e!1986318))

(declare-fun res!1296071 () Bool)

(assert (=> d!872415 (=> (not res!1296071) (not e!1986318))))

(assert (=> d!872415 (= res!1296071 (= (content!4850 lt!1072594) ((_ map or) (content!4850 (ite c!534965 call!231105 call!231107)) (content!4850 (ite c!534965 call!231107 call!231105)))))))

(assert (=> d!872415 (= lt!1072594 e!1986317)))

(declare-fun c!535453 () Bool)

(assert (=> d!872415 (= c!535453 ((_ is Nil!35809) (ite c!534965 call!231105 call!231107)))))

(assert (=> d!872415 (= (++!8566 (ite c!534965 call!231105 call!231107) (ite c!534965 call!231107 call!231105)) lt!1072594)))

(assert (= (and d!872415 c!535453) b!3187716))

(assert (= (and d!872415 (not c!535453)) b!3187717))

(assert (= (and d!872415 res!1296071) b!3187718))

(assert (= (and b!3187718 res!1296070) b!3187719))

(declare-fun m!3446177 () Bool)

(assert (=> b!3187718 m!3446177))

(declare-fun m!3446179 () Bool)

(assert (=> b!3187718 m!3446179))

(declare-fun m!3446181 () Bool)

(assert (=> b!3187718 m!3446181))

(declare-fun m!3446183 () Bool)

(assert (=> b!3187717 m!3446183))

(declare-fun m!3446185 () Bool)

(assert (=> d!872415 m!3446185))

(declare-fun m!3446187 () Bool)

(assert (=> d!872415 m!3446187))

(declare-fun m!3446189 () Bool)

(assert (=> d!872415 m!3446189))

(assert (=> bm!231100 d!872415))

(assert (=> d!871499 d!871501))

(declare-fun d!872417 () Bool)

(assert (=> d!872417 (not (matchR!4553 (regex!5136 (rule!7558 separatorToken!241)) lt!1071487))))

(assert (=> d!872417 true))

(declare-fun _$127!246 () Unit!50220)

(assert (=> d!872417 (= (choose!18597 (regex!5136 (rule!7558 separatorToken!241)) lt!1071487 lt!1071495) _$127!246)))

(declare-fun bs!540214 () Bool)

(assert (= bs!540214 d!872417))

(assert (=> bs!540214 m!3442669))

(assert (=> d!871499 d!872417))

(assert (=> d!871499 d!871835))

(declare-fun d!872419 () Bool)

(assert (=> d!872419 (= (isDefined!5486 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 separatorToken!241)))) (not (isEmpty!19949 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 separatorToken!241))))))))

(declare-fun bs!540215 () Bool)

(assert (= bs!540215 d!872419))

(assert (=> bs!540215 m!3442727))

(declare-fun m!3446191 () Bool)

(assert (=> bs!540215 m!3446191))

(assert (=> d!871557 d!872419))

(assert (=> d!871557 d!871563))

(declare-fun d!872421 () Bool)

(declare-fun e!1986319 () Bool)

(assert (=> d!872421 e!1986319))

(declare-fun res!1296072 () Bool)

(assert (=> d!872421 (=> (not res!1296072) (not e!1986319))))

(assert (=> d!872421 (= res!1296072 (isDefined!5486 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 separatorToken!241)))))))

(assert (=> d!872421 true))

(declare-fun _$52!1492 () Unit!50220)

(assert (=> d!872421 (= (choose!18600 thiss!18206 rules!2135 lt!1071487 separatorToken!241) _$52!1492)))

(declare-fun b!3187720 () Bool)

(declare-fun res!1296073 () Bool)

(assert (=> b!3187720 (=> (not res!1296073) (not e!1986319))))

(assert (=> b!3187720 (= res!1296073 (matchR!4553 (regex!5136 (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 separatorToken!241))))) (list!12713 (charsOf!3158 separatorToken!241))))))

(declare-fun b!3187721 () Bool)

(assert (=> b!3187721 (= e!1986319 (= (rule!7558 separatorToken!241) (get!11397 (getRuleFromTag!865 thiss!18206 rules!2135 (tag!5650 (rule!7558 separatorToken!241))))))))

(assert (= (and d!872421 res!1296072) b!3187720))

(assert (= (and b!3187720 res!1296073) b!3187721))

(assert (=> d!872421 m!3442727))

(assert (=> d!872421 m!3442727))

(assert (=> d!872421 m!3443583))

(assert (=> b!3187720 m!3442675))

(assert (=> b!3187720 m!3442679))

(assert (=> b!3187720 m!3443587))

(assert (=> b!3187720 m!3442675))

(assert (=> b!3187720 m!3442679))

(assert (=> b!3187720 m!3442727))

(assert (=> b!3187720 m!3442727))

(assert (=> b!3187720 m!3443589))

(assert (=> b!3187721 m!3442727))

(assert (=> b!3187721 m!3442727))

(assert (=> b!3187721 m!3443589))

(assert (=> d!871557 d!872421))

(assert (=> d!871557 d!871489))

(declare-fun bs!540216 () Bool)

(declare-fun d!872423 () Bool)

(assert (= bs!540216 (and d!872423 d!871757)))

(declare-fun lambda!116583 () Int)

(assert (=> bs!540216 (= (and (= (toChars!7055 (transformation!5136 (h!41231 rules!2135))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) (= (toValue!7196 (transformation!5136 (h!41231 rules!2135))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (= lambda!116583 lambda!116554))))

(declare-fun bs!540217 () Bool)

(assert (= bs!540217 (and d!872423 d!871821)))

(assert (=> bs!540217 (= (and (= (toChars!7055 (transformation!5136 (h!41231 rules!2135))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) (= (toValue!7196 (transformation!5136 (h!41231 rules!2135))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (= lambda!116583 lambda!116560))))

(declare-fun bs!540218 () Bool)

(assert (= bs!540218 (and d!872423 d!871847)))

(assert (=> bs!540218 (= (and (= (toChars!7055 (transformation!5136 (h!41231 rules!2135))) (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241)))) (= (toValue!7196 (transformation!5136 (h!41231 rules!2135))) (toValue!7196 (transformation!5136 (rule!7558 separatorToken!241))))) (= lambda!116583 lambda!116561))))

(assert (=> d!872423 true))

(assert (=> d!872423 (< (dynLambda!14450 order!18243 (toChars!7055 (transformation!5136 (h!41231 rules!2135)))) (dynLambda!14460 order!18255 lambda!116583))))

(assert (=> d!872423 true))

(assert (=> d!872423 (< (dynLambda!14448 order!18239 (toValue!7196 (transformation!5136 (h!41231 rules!2135)))) (dynLambda!14460 order!18255 lambda!116583))))

(assert (=> d!872423 (= (semiInverseModEq!2139 (toChars!7055 (transformation!5136 (h!41231 rules!2135))) (toValue!7196 (transformation!5136 (h!41231 rules!2135)))) (Forall!1255 lambda!116583))))

(declare-fun bs!540219 () Bool)

(assert (= bs!540219 d!872423))

(declare-fun m!3446193 () Bool)

(assert (=> bs!540219 m!3446193))

(assert (=> d!871495 d!872423))

(declare-fun b!3187724 () Bool)

(declare-fun res!1296074 () Bool)

(declare-fun e!1986321 () Bool)

(assert (=> b!3187724 (=> (not res!1296074) (not e!1986321))))

(declare-fun lt!1072595 () List!35933)

(assert (=> b!3187724 (= res!1296074 (= (size!27015 lt!1072595) (+ (size!27015 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071771))))) (size!27015 (_2!20718 (get!11399 lt!1071771))))))))

(declare-fun b!3187723 () Bool)

(declare-fun e!1986320 () List!35933)

(assert (=> b!3187723 (= e!1986320 (Cons!35809 (h!41229 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071771))))) (++!8566 (t!235526 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071771))))) (_2!20718 (get!11399 lt!1071771)))))))

(declare-fun b!3187722 () Bool)

(assert (=> b!3187722 (= e!1986320 (_2!20718 (get!11399 lt!1071771)))))

(declare-fun b!3187725 () Bool)

(assert (=> b!3187725 (= e!1986321 (or (not (= (_2!20718 (get!11399 lt!1071771)) Nil!35809)) (= lt!1072595 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071771)))))))))

(declare-fun d!872425 () Bool)

(assert (=> d!872425 e!1986321))

(declare-fun res!1296075 () Bool)

(assert (=> d!872425 (=> (not res!1296075) (not e!1986321))))

(assert (=> d!872425 (= res!1296075 (= (content!4850 lt!1072595) ((_ map or) (content!4850 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071771))))) (content!4850 (_2!20718 (get!11399 lt!1071771))))))))

(assert (=> d!872425 (= lt!1072595 e!1986320)))

(declare-fun c!535455 () Bool)

(assert (=> d!872425 (= c!535455 ((_ is Nil!35809) (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071771))))))))

(assert (=> d!872425 (= (++!8566 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071771)))) (_2!20718 (get!11399 lt!1071771))) lt!1072595)))

(assert (= (and d!872425 c!535455) b!3187722))

(assert (= (and d!872425 (not c!535455)) b!3187723))

(assert (= (and d!872425 res!1296075) b!3187724))

(assert (= (and b!3187724 res!1296074) b!3187725))

(declare-fun m!3446195 () Bool)

(assert (=> b!3187724 m!3446195))

(assert (=> b!3187724 m!3443631))

(declare-fun m!3446197 () Bool)

(assert (=> b!3187724 m!3446197))

(assert (=> b!3187724 m!3443655))

(declare-fun m!3446199 () Bool)

(assert (=> b!3187723 m!3446199))

(declare-fun m!3446201 () Bool)

(assert (=> d!872425 m!3446201))

(assert (=> d!872425 m!3443631))

(declare-fun m!3446203 () Bool)

(assert (=> d!872425 m!3446203))

(declare-fun m!3446205 () Bool)

(assert (=> d!872425 m!3446205))

(assert (=> b!3186113 d!872425))

(declare-fun d!872427 () Bool)

(assert (=> d!872427 (= (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071771)))) (list!12717 (c!534901 (charsOf!3158 (_1!20718 (get!11399 lt!1071771))))))))

(declare-fun bs!540220 () Bool)

(assert (= bs!540220 d!872427))

(declare-fun m!3446207 () Bool)

(assert (=> bs!540220 m!3446207))

(assert (=> b!3186113 d!872427))

(declare-fun d!872429 () Bool)

(declare-fun lt!1072596 () BalanceConc!20908)

(assert (=> d!872429 (= (list!12713 lt!1072596) (originalCharacters!5850 (_1!20718 (get!11399 lt!1071771))))))

(assert (=> d!872429 (= lt!1072596 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071771))))) (value!166836 (_1!20718 (get!11399 lt!1071771)))))))

(assert (=> d!872429 (= (charsOf!3158 (_1!20718 (get!11399 lt!1071771))) lt!1072596)))

(declare-fun b_lambda!86955 () Bool)

(assert (=> (not b_lambda!86955) (not d!872429)))

(declare-fun tb!155785 () Bool)

(declare-fun t!235888 () Bool)

(assert (=> (and b!3185354 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071771)))))) t!235888) tb!155785))

(declare-fun b!3187726 () Bool)

(declare-fun e!1986322 () Bool)

(declare-fun tp!1007694 () Bool)

(assert (=> b!3187726 (= e!1986322 (and (inv!48663 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071771))))) (value!166836 (_1!20718 (get!11399 lt!1071771)))))) tp!1007694))))

(declare-fun result!197944 () Bool)

(assert (=> tb!155785 (= result!197944 (and (inv!48664 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071771))))) (value!166836 (_1!20718 (get!11399 lt!1071771))))) e!1986322))))

(assert (= tb!155785 b!3187726))

(declare-fun m!3446209 () Bool)

(assert (=> b!3187726 m!3446209))

(declare-fun m!3446211 () Bool)

(assert (=> tb!155785 m!3446211))

(assert (=> d!872429 t!235888))

(declare-fun b_and!211077 () Bool)

(assert (= b_and!211025 (and (=> t!235888 result!197944) b_and!211077)))

(declare-fun t!235890 () Bool)

(declare-fun tb!155787 () Bool)

(assert (=> (and b!3185352 (= (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071771)))))) t!235890) tb!155787))

(declare-fun result!197946 () Bool)

(assert (= result!197946 result!197944))

(assert (=> d!872429 t!235890))

(declare-fun b_and!211079 () Bool)

(assert (= b_and!211023 (and (=> t!235890 result!197946) b_and!211079)))

(declare-fun t!235892 () Bool)

(declare-fun tb!155789 () Bool)

(assert (=> (and b!3186184 (= (toChars!7055 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071771)))))) t!235892) tb!155789))

(declare-fun result!197948 () Bool)

(assert (= result!197948 result!197944))

(assert (=> d!872429 t!235892))

(declare-fun b_and!211081 () Bool)

(assert (= b_and!211019 (and (=> t!235892 result!197948) b_and!211081)))

(declare-fun tb!155791 () Bool)

(declare-fun t!235894 () Bool)

(assert (=> (and b!3186168 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071771)))))) t!235894) tb!155791))

(declare-fun result!197950 () Bool)

(assert (= result!197950 result!197944))

(assert (=> d!872429 t!235894))

(declare-fun b_and!211083 () Bool)

(assert (= b_and!211021 (and (=> t!235894 result!197950) b_and!211083)))

(declare-fun tb!155793 () Bool)

(declare-fun t!235896 () Bool)

(assert (=> (and b!3185353 (= (toChars!7055 (transformation!5136 (h!41231 rules!2135))) (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071771)))))) t!235896) tb!155793))

(declare-fun result!197952 () Bool)

(assert (= result!197952 result!197944))

(assert (=> d!872429 t!235896))

(declare-fun b_and!211085 () Bool)

(assert (= b_and!211027 (and (=> t!235896 result!197952) b_and!211085)))

(declare-fun m!3446213 () Bool)

(assert (=> d!872429 m!3446213))

(declare-fun m!3446215 () Bool)

(assert (=> d!872429 m!3446215))

(assert (=> b!3186113 d!872429))

(assert (=> b!3186113 d!871859))

(declare-fun d!872431 () Bool)

(declare-fun lt!1072597 () Bool)

(assert (=> d!872431 (= lt!1072597 (select (content!4850 (t!235526 (usedCharacters!480 (regex!5136 (rule!7558 separatorToken!241))))) lt!1071495))))

(declare-fun e!1986323 () Bool)

(assert (=> d!872431 (= lt!1072597 e!1986323)))

(declare-fun res!1296076 () Bool)

(assert (=> d!872431 (=> (not res!1296076) (not e!1986323))))

(assert (=> d!872431 (= res!1296076 ((_ is Cons!35809) (t!235526 (usedCharacters!480 (regex!5136 (rule!7558 separatorToken!241))))))))

(assert (=> d!872431 (= (contains!6351 (t!235526 (usedCharacters!480 (regex!5136 (rule!7558 separatorToken!241)))) lt!1071495) lt!1072597)))

(declare-fun b!3187727 () Bool)

(declare-fun e!1986324 () Bool)

(assert (=> b!3187727 (= e!1986323 e!1986324)))

(declare-fun res!1296077 () Bool)

(assert (=> b!3187727 (=> res!1296077 e!1986324)))

(assert (=> b!3187727 (= res!1296077 (= (h!41229 (t!235526 (usedCharacters!480 (regex!5136 (rule!7558 separatorToken!241))))) lt!1071495))))

(declare-fun b!3187728 () Bool)

(assert (=> b!3187728 (= e!1986324 (contains!6351 (t!235526 (t!235526 (usedCharacters!480 (regex!5136 (rule!7558 separatorToken!241))))) lt!1071495))))

(assert (= (and d!872431 res!1296076) b!3187727))

(assert (= (and b!3187727 (not res!1296077)) b!3187728))

(assert (=> d!872431 m!3445085))

(declare-fun m!3446217 () Bool)

(assert (=> d!872431 m!3446217))

(declare-fun m!3446219 () Bool)

(assert (=> b!3187728 m!3446219))

(assert (=> b!3186086 d!872431))

(declare-fun d!872433 () Bool)

(declare-fun res!1296078 () Bool)

(declare-fun e!1986325 () Bool)

(assert (=> d!872433 (=> res!1296078 e!1986325)))

(assert (=> d!872433 (= res!1296078 (not ((_ is Cons!35811) (t!235528 rules!2135))))))

(assert (=> d!872433 (= (sepAndNonSepRulesDisjointChars!1330 rules!2135 (t!235528 rules!2135)) e!1986325)))

(declare-fun b!3187729 () Bool)

(declare-fun e!1986326 () Bool)

(assert (=> b!3187729 (= e!1986325 e!1986326)))

(declare-fun res!1296079 () Bool)

(assert (=> b!3187729 (=> (not res!1296079) (not e!1986326))))

(assert (=> b!3187729 (= res!1296079 (ruleDisjointCharsFromAllFromOtherType!575 (h!41231 (t!235528 rules!2135)) rules!2135))))

(declare-fun b!3187730 () Bool)

(assert (=> b!3187730 (= e!1986326 (sepAndNonSepRulesDisjointChars!1330 rules!2135 (t!235528 (t!235528 rules!2135))))))

(assert (= (and d!872433 (not res!1296078)) b!3187729))

(assert (= (and b!3187729 res!1296079) b!3187730))

(declare-fun m!3446221 () Bool)

(assert (=> b!3187729 m!3446221))

(declare-fun m!3446223 () Bool)

(assert (=> b!3187730 m!3446223))

(assert (=> b!3185738 d!872433))

(assert (=> b!3185888 d!871961))

(assert (=> b!3185888 d!871963))

(assert (=> b!3185687 d!871957))

(assert (=> b!3185687 d!871959))

(assert (=> b!3185687 d!871705))

(declare-fun d!872435 () Bool)

(assert (=> d!872435 (= (inv!15 (value!166836 (h!41230 tokens!494))) (= (charsToBigInt!0 (text!38011 (value!166836 (h!41230 tokens!494))) 0) (value!166831 (value!166836 (h!41230 tokens!494)))))))

(declare-fun bs!540221 () Bool)

(assert (= bs!540221 d!872435))

(declare-fun m!3446225 () Bool)

(assert (=> bs!540221 m!3446225))

(assert (=> b!3185723 d!872435))

(declare-fun d!872437 () Bool)

(declare-fun lt!1072598 () Bool)

(assert (=> d!872437 (= lt!1072598 (isEmpty!19939 (list!12713 (_2!20717 (lex!2065 thiss!18206 rules!2135 (print!1792 thiss!18206 (singletonSeq!2232 separatorToken!241)))))))))

(assert (=> d!872437 (= lt!1072598 (isEmpty!19950 (c!534901 (_2!20717 (lex!2065 thiss!18206 rules!2135 (print!1792 thiss!18206 (singletonSeq!2232 separatorToken!241)))))))))

(assert (=> d!872437 (= (isEmpty!19946 (_2!20717 (lex!2065 thiss!18206 rules!2135 (print!1792 thiss!18206 (singletonSeq!2232 separatorToken!241))))) lt!1072598)))

(declare-fun bs!540222 () Bool)

(assert (= bs!540222 d!872437))

(declare-fun m!3446227 () Bool)

(assert (=> bs!540222 m!3446227))

(assert (=> bs!540222 m!3446227))

(declare-fun m!3446229 () Bool)

(assert (=> bs!540222 m!3446229))

(declare-fun m!3446231 () Bool)

(assert (=> bs!540222 m!3446231))

(assert (=> b!3185924 d!872437))

(assert (=> b!3185924 d!871811))

(assert (=> b!3185924 d!871807))

(assert (=> b!3185924 d!871805))

(assert (=> d!871465 d!871711))

(declare-fun b!3187731 () Bool)

(declare-fun res!1296081 () Bool)

(declare-fun e!1986328 () Bool)

(assert (=> b!3187731 (=> (not res!1296081) (not e!1986328))))

(declare-fun call!231309 () Bool)

(assert (=> b!3187731 (= res!1296081 call!231309)))

(declare-fun e!1986331 () Bool)

(assert (=> b!3187731 (= e!1986331 e!1986328)))

(declare-fun c!535457 () Bool)

(declare-fun c!535456 () Bool)

(declare-fun call!231308 () Bool)

(declare-fun bm!231303 () Bool)

(assert (=> bm!231303 (= call!231308 (validRegex!4538 (ite c!535456 (reg!10224 (regex!5136 lt!1071491)) (ite c!535457 (regTwo!20303 (regex!5136 lt!1071491)) (regTwo!20302 (regex!5136 lt!1071491))))))))

(declare-fun b!3187732 () Bool)

(declare-fun e!1986332 () Bool)

(assert (=> b!3187732 (= e!1986332 e!1986331)))

(assert (=> b!3187732 (= c!535457 ((_ is Union!9895) (regex!5136 lt!1071491)))))

(declare-fun b!3187733 () Bool)

(declare-fun res!1296083 () Bool)

(declare-fun e!1986330 () Bool)

(assert (=> b!3187733 (=> res!1296083 e!1986330)))

(assert (=> b!3187733 (= res!1296083 (not ((_ is Concat!15261) (regex!5136 lt!1071491))))))

(assert (=> b!3187733 (= e!1986331 e!1986330)))

(declare-fun d!872439 () Bool)

(declare-fun res!1296084 () Bool)

(declare-fun e!1986329 () Bool)

(assert (=> d!872439 (=> res!1296084 e!1986329)))

(assert (=> d!872439 (= res!1296084 ((_ is ElementMatch!9895) (regex!5136 lt!1071491)))))

(assert (=> d!872439 (= (validRegex!4538 (regex!5136 lt!1071491)) e!1986329)))

(declare-fun b!3187734 () Bool)

(declare-fun call!231310 () Bool)

(assert (=> b!3187734 (= e!1986328 call!231310)))

(declare-fun b!3187735 () Bool)

(declare-fun e!1986333 () Bool)

(assert (=> b!3187735 (= e!1986333 call!231310)))

(declare-fun bm!231304 () Bool)

(assert (=> bm!231304 (= call!231309 (validRegex!4538 (ite c!535457 (regOne!20303 (regex!5136 lt!1071491)) (regOne!20302 (regex!5136 lt!1071491)))))))

(declare-fun b!3187736 () Bool)

(declare-fun e!1986327 () Bool)

(assert (=> b!3187736 (= e!1986327 call!231308)))

(declare-fun b!3187737 () Bool)

(assert (=> b!3187737 (= e!1986332 e!1986327)))

(declare-fun res!1296082 () Bool)

(assert (=> b!3187737 (= res!1296082 (not (nullable!3386 (reg!10224 (regex!5136 lt!1071491)))))))

(assert (=> b!3187737 (=> (not res!1296082) (not e!1986327))))

(declare-fun b!3187738 () Bool)

(assert (=> b!3187738 (= e!1986330 e!1986333)))

(declare-fun res!1296080 () Bool)

(assert (=> b!3187738 (=> (not res!1296080) (not e!1986333))))

(assert (=> b!3187738 (= res!1296080 call!231309)))

(declare-fun b!3187739 () Bool)

(assert (=> b!3187739 (= e!1986329 e!1986332)))

(assert (=> b!3187739 (= c!535456 ((_ is Star!9895) (regex!5136 lt!1071491)))))

(declare-fun bm!231305 () Bool)

(assert (=> bm!231305 (= call!231310 call!231308)))

(assert (= (and d!872439 (not res!1296084)) b!3187739))

(assert (= (and b!3187739 c!535456) b!3187737))

(assert (= (and b!3187739 (not c!535456)) b!3187732))

(assert (= (and b!3187737 res!1296082) b!3187736))

(assert (= (and b!3187732 c!535457) b!3187731))

(assert (= (and b!3187732 (not c!535457)) b!3187733))

(assert (= (and b!3187731 res!1296081) b!3187734))

(assert (= (and b!3187733 (not res!1296083)) b!3187738))

(assert (= (and b!3187738 res!1296080) b!3187735))

(assert (= (or b!3187734 b!3187735) bm!231305))

(assert (= (or b!3187731 b!3187738) bm!231304))

(assert (= (or b!3187736 bm!231305) bm!231303))

(declare-fun m!3446233 () Bool)

(assert (=> bm!231303 m!3446233))

(declare-fun m!3446235 () Bool)

(assert (=> bm!231304 m!3446235))

(declare-fun m!3446237 () Bool)

(assert (=> b!3187737 m!3446237))

(assert (=> d!871465 d!872439))

(declare-fun d!872441 () Bool)

(assert (=> d!872441 (= (inv!48664 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (value!166836 (h!41230 tokens!494)))) (isBalanced!3191 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (value!166836 (h!41230 tokens!494))))))))

(declare-fun bs!540223 () Bool)

(assert (= bs!540223 d!872441))

(declare-fun m!3446239 () Bool)

(assert (=> bs!540223 m!3446239))

(assert (=> tb!155479 d!872441))

(assert (=> b!3186078 d!872029))

(assert (=> b!3186078 d!872031))

(declare-fun b!3187740 () Bool)

(declare-fun e!1986336 () Bool)

(declare-fun lt!1072601 () Option!7004)

(assert (=> b!3187740 (= e!1986336 (= (tag!5650 (get!11397 lt!1072601)) (tag!5650 (rule!7558 (h!41230 tokens!494)))))))

(declare-fun b!3187741 () Bool)

(declare-fun e!1986337 () Bool)

(assert (=> b!3187741 (= e!1986337 e!1986336)))

(declare-fun res!1296086 () Bool)

(assert (=> b!3187741 (=> (not res!1296086) (not e!1986336))))

(assert (=> b!3187741 (= res!1296086 (contains!6354 (t!235528 rules!2135) (get!11397 lt!1072601)))))

(declare-fun d!872443 () Bool)

(assert (=> d!872443 e!1986337))

(declare-fun res!1296085 () Bool)

(assert (=> d!872443 (=> res!1296085 e!1986337)))

(assert (=> d!872443 (= res!1296085 (isEmpty!19949 lt!1072601))))

(declare-fun e!1986334 () Option!7004)

(assert (=> d!872443 (= lt!1072601 e!1986334)))

(declare-fun c!535458 () Bool)

(assert (=> d!872443 (= c!535458 (and ((_ is Cons!35811) (t!235528 rules!2135)) (= (tag!5650 (h!41231 (t!235528 rules!2135))) (tag!5650 (rule!7558 (h!41230 tokens!494))))))))

(assert (=> d!872443 (rulesInvariant!4122 thiss!18206 (t!235528 rules!2135))))

(assert (=> d!872443 (= (getRuleFromTag!865 thiss!18206 (t!235528 rules!2135) (tag!5650 (rule!7558 (h!41230 tokens!494)))) lt!1072601)))

(declare-fun b!3187742 () Bool)

(declare-fun e!1986335 () Option!7004)

(assert (=> b!3187742 (= e!1986334 e!1986335)))

(declare-fun c!535459 () Bool)

(assert (=> b!3187742 (= c!535459 (and ((_ is Cons!35811) (t!235528 rules!2135)) (not (= (tag!5650 (h!41231 (t!235528 rules!2135))) (tag!5650 (rule!7558 (h!41230 tokens!494)))))))))

(declare-fun b!3187743 () Bool)

(assert (=> b!3187743 (= e!1986334 (Some!7003 (h!41231 (t!235528 rules!2135))))))

(declare-fun b!3187744 () Bool)

(assert (=> b!3187744 (= e!1986335 None!7003)))

(declare-fun b!3187745 () Bool)

(declare-fun lt!1072600 () Unit!50220)

(declare-fun lt!1072599 () Unit!50220)

(assert (=> b!3187745 (= lt!1072600 lt!1072599)))

(assert (=> b!3187745 (rulesInvariant!4122 thiss!18206 (t!235528 (t!235528 rules!2135)))))

(assert (=> b!3187745 (= lt!1072599 (lemmaInvariantOnRulesThenOnTail!338 thiss!18206 (h!41231 (t!235528 rules!2135)) (t!235528 (t!235528 rules!2135))))))

(assert (=> b!3187745 (= e!1986335 (getRuleFromTag!865 thiss!18206 (t!235528 (t!235528 rules!2135)) (tag!5650 (rule!7558 (h!41230 tokens!494)))))))

(assert (= (and d!872443 c!535458) b!3187743))

(assert (= (and d!872443 (not c!535458)) b!3187742))

(assert (= (and b!3187742 c!535459) b!3187745))

(assert (= (and b!3187742 (not c!535459)) b!3187744))

(assert (= (and d!872443 (not res!1296085)) b!3187741))

(assert (= (and b!3187741 res!1296086) b!3187740))

(declare-fun m!3446241 () Bool)

(assert (=> b!3187740 m!3446241))

(assert (=> b!3187741 m!3446241))

(assert (=> b!3187741 m!3446241))

(declare-fun m!3446243 () Bool)

(assert (=> b!3187741 m!3446243))

(declare-fun m!3446245 () Bool)

(assert (=> d!872443 m!3446245))

(assert (=> d!872443 m!3443601))

(assert (=> b!3187745 m!3445027))

(assert (=> b!3187745 m!3445029))

(declare-fun m!3446247 () Bool)

(assert (=> b!3187745 m!3446247))

(assert (=> b!3186078 d!872443))

(declare-fun d!872445 () Bool)

(declare-fun e!1986340 () Bool)

(assert (=> d!872445 e!1986340))

(declare-fun res!1296089 () Bool)

(assert (=> d!872445 (=> (not res!1296089) (not e!1986340))))

(declare-fun lt!1072604 () BalanceConc!20910)

(assert (=> d!872445 (= res!1296089 (= (list!12715 lt!1072604) tokens!494))))

(declare-fun fromList!590 (List!35934) Conc!10648)

(assert (=> d!872445 (= lt!1072604 (BalanceConc!20911 (fromList!590 tokens!494)))))

(assert (=> d!872445 (= (fromListB!1508 tokens!494) lt!1072604)))

(declare-fun b!3187748 () Bool)

(assert (=> b!3187748 (= e!1986340 (isBalanced!3189 (fromList!590 tokens!494)))))

(assert (= (and d!872445 res!1296089) b!3187748))

(declare-fun m!3446249 () Bool)

(assert (=> d!872445 m!3446249))

(declare-fun m!3446251 () Bool)

(assert (=> d!872445 m!3446251))

(assert (=> b!3187748 m!3446251))

(assert (=> b!3187748 m!3446251))

(declare-fun m!3446253 () Bool)

(assert (=> b!3187748 m!3446253))

(assert (=> d!871417 d!872445))

(declare-fun d!872447 () Bool)

(assert (=> d!872447 (= (isEmpty!19943 (maxPrefix!2403 thiss!18206 rules!2135 lt!1071470)) (not ((_ is Some!7002) (maxPrefix!2403 thiss!18206 rules!2135 lt!1071470))))))

(assert (=> d!871419 d!872447))

(declare-fun d!872449 () Bool)

(assert (=> d!872449 (= (list!12715 (_1!20717 lt!1071699)) (list!12720 (c!534902 (_1!20717 lt!1071699))))))

(declare-fun bs!540224 () Bool)

(assert (= bs!540224 d!872449))

(declare-fun m!3446255 () Bool)

(assert (=> bs!540224 m!3446255))

(assert (=> b!3185913 d!872449))

(assert (=> b!3185913 d!872007))

(assert (=> b!3185913 d!872009))

(declare-fun call!231313 () List!35933)

(declare-fun bm!231306 () Bool)

(declare-fun c!535461 () Bool)

(declare-fun call!231312 () List!35933)

(declare-fun call!231311 () List!35933)

(assert (=> bm!231306 (= call!231312 (++!8566 (ite c!535461 call!231311 call!231313) (ite c!535461 call!231313 call!231311)))))

(declare-fun b!3187749 () Bool)

(declare-fun e!1986344 () List!35933)

(declare-fun e!1986343 () List!35933)

(assert (=> b!3187749 (= e!1986344 e!1986343)))

(assert (=> b!3187749 (= c!535461 ((_ is Union!9895) (ite c!535050 (reg!10224 (regex!5136 (rule!7558 separatorToken!241))) (ite c!535047 (regTwo!20303 (regex!5136 (rule!7558 separatorToken!241))) (regOne!20302 (regex!5136 (rule!7558 separatorToken!241)))))))))

(declare-fun d!872451 () Bool)

(declare-fun c!535463 () Bool)

(assert (=> d!872451 (= c!535463 (or ((_ is EmptyExpr!9895) (ite c!535050 (reg!10224 (regex!5136 (rule!7558 separatorToken!241))) (ite c!535047 (regTwo!20303 (regex!5136 (rule!7558 separatorToken!241))) (regOne!20302 (regex!5136 (rule!7558 separatorToken!241)))))) ((_ is EmptyLang!9895) (ite c!535050 (reg!10224 (regex!5136 (rule!7558 separatorToken!241))) (ite c!535047 (regTwo!20303 (regex!5136 (rule!7558 separatorToken!241))) (regOne!20302 (regex!5136 (rule!7558 separatorToken!241))))))))))

(declare-fun e!1986342 () List!35933)

(assert (=> d!872451 (= (usedCharacters!480 (ite c!535050 (reg!10224 (regex!5136 (rule!7558 separatorToken!241))) (ite c!535047 (regTwo!20303 (regex!5136 (rule!7558 separatorToken!241))) (regOne!20302 (regex!5136 (rule!7558 separatorToken!241)))))) e!1986342)))

(declare-fun b!3187750 () Bool)

(assert (=> b!3187750 (= e!1986343 call!231312)))

(declare-fun b!3187751 () Bool)

(assert (=> b!3187751 (= e!1986343 call!231312)))

(declare-fun b!3187752 () Bool)

(declare-fun e!1986341 () List!35933)

(assert (=> b!3187752 (= e!1986341 (Cons!35809 (c!534900 (ite c!535050 (reg!10224 (regex!5136 (rule!7558 separatorToken!241))) (ite c!535047 (regTwo!20303 (regex!5136 (rule!7558 separatorToken!241))) (regOne!20302 (regex!5136 (rule!7558 separatorToken!241)))))) Nil!35809))))

(declare-fun c!535464 () Bool)

(declare-fun call!231314 () List!35933)

(declare-fun bm!231307 () Bool)

(assert (=> bm!231307 (= call!231314 (usedCharacters!480 (ite c!535464 (reg!10224 (ite c!535050 (reg!10224 (regex!5136 (rule!7558 separatorToken!241))) (ite c!535047 (regTwo!20303 (regex!5136 (rule!7558 separatorToken!241))) (regOne!20302 (regex!5136 (rule!7558 separatorToken!241)))))) (ite c!535461 (regTwo!20303 (ite c!535050 (reg!10224 (regex!5136 (rule!7558 separatorToken!241))) (ite c!535047 (regTwo!20303 (regex!5136 (rule!7558 separatorToken!241))) (regOne!20302 (regex!5136 (rule!7558 separatorToken!241)))))) (regOne!20302 (ite c!535050 (reg!10224 (regex!5136 (rule!7558 separatorToken!241))) (ite c!535047 (regTwo!20303 (regex!5136 (rule!7558 separatorToken!241))) (regOne!20302 (regex!5136 (rule!7558 separatorToken!241))))))))))))

(declare-fun bm!231308 () Bool)

(assert (=> bm!231308 (= call!231313 call!231314)))

(declare-fun b!3187753 () Bool)

(assert (=> b!3187753 (= e!1986342 Nil!35809)))

(declare-fun b!3187754 () Bool)

(assert (=> b!3187754 (= e!1986342 e!1986341)))

(declare-fun c!535462 () Bool)

(assert (=> b!3187754 (= c!535462 ((_ is ElementMatch!9895) (ite c!535050 (reg!10224 (regex!5136 (rule!7558 separatorToken!241))) (ite c!535047 (regTwo!20303 (regex!5136 (rule!7558 separatorToken!241))) (regOne!20302 (regex!5136 (rule!7558 separatorToken!241)))))))))

(declare-fun b!3187755 () Bool)

(assert (=> b!3187755 (= c!535464 ((_ is Star!9895) (ite c!535050 (reg!10224 (regex!5136 (rule!7558 separatorToken!241))) (ite c!535047 (regTwo!20303 (regex!5136 (rule!7558 separatorToken!241))) (regOne!20302 (regex!5136 (rule!7558 separatorToken!241)))))))))

(assert (=> b!3187755 (= e!1986341 e!1986344)))

(declare-fun b!3187756 () Bool)

(assert (=> b!3187756 (= e!1986344 call!231314)))

(declare-fun bm!231309 () Bool)

(assert (=> bm!231309 (= call!231311 (usedCharacters!480 (ite c!535461 (regOne!20303 (ite c!535050 (reg!10224 (regex!5136 (rule!7558 separatorToken!241))) (ite c!535047 (regTwo!20303 (regex!5136 (rule!7558 separatorToken!241))) (regOne!20302 (regex!5136 (rule!7558 separatorToken!241)))))) (regTwo!20302 (ite c!535050 (reg!10224 (regex!5136 (rule!7558 separatorToken!241))) (ite c!535047 (regTwo!20303 (regex!5136 (rule!7558 separatorToken!241))) (regOne!20302 (regex!5136 (rule!7558 separatorToken!241)))))))))))

(assert (= (and d!872451 c!535463) b!3187753))

(assert (= (and d!872451 (not c!535463)) b!3187754))

(assert (= (and b!3187754 c!535462) b!3187752))

(assert (= (and b!3187754 (not c!535462)) b!3187755))

(assert (= (and b!3187755 c!535464) b!3187756))

(assert (= (and b!3187755 (not c!535464)) b!3187749))

(assert (= (and b!3187749 c!535461) b!3187750))

(assert (= (and b!3187749 (not c!535461)) b!3187751))

(assert (= (or b!3187750 b!3187751) bm!231308))

(assert (= (or b!3187750 b!3187751) bm!231309))

(assert (= (or b!3187750 b!3187751) bm!231306))

(assert (= (or b!3187756 bm!231308) bm!231307))

(declare-fun m!3446257 () Bool)

(assert (=> bm!231306 m!3446257))

(declare-fun m!3446259 () Bool)

(assert (=> bm!231307 m!3446259))

(declare-fun m!3446261 () Bool)

(assert (=> bm!231309 m!3446261))

(assert (=> bm!231123 d!872451))

(declare-fun d!872453 () Bool)

(assert (=> d!872453 (= (isDefined!5485 lt!1071628) (not (isEmpty!19943 lt!1071628)))))

(declare-fun bs!540225 () Bool)

(assert (= bs!540225 d!872453))

(assert (=> bs!540225 m!3443123))

(assert (=> b!3185691 d!872453))

(declare-fun d!872455 () Bool)

(declare-fun lt!1072605 () Bool)

(assert (=> d!872455 (= lt!1072605 (isEmpty!19939 (list!12713 (_2!20717 lt!1071678))))))

(assert (=> d!872455 (= lt!1072605 (isEmpty!19950 (c!534901 (_2!20717 lt!1071678))))))

(assert (=> d!872455 (= (isEmpty!19946 (_2!20717 lt!1071678)) lt!1072605)))

(declare-fun bs!540226 () Bool)

(assert (= bs!540226 d!872455))

(declare-fun m!3446263 () Bool)

(assert (=> bs!540226 m!3446263))

(assert (=> bs!540226 m!3446263))

(declare-fun m!3446265 () Bool)

(assert (=> bs!540226 m!3446265))

(declare-fun m!3446267 () Bool)

(assert (=> bs!540226 m!3446267))

(assert (=> b!3185851 d!872455))

(declare-fun d!872457 () Bool)

(assert (=> d!872457 (= (list!12715 (_1!20717 (lex!2065 thiss!18206 rules!2135 (print!1792 thiss!18206 (singletonSeq!2232 (h!41230 tokens!494)))))) (list!12720 (c!534902 (_1!20717 (lex!2065 thiss!18206 rules!2135 (print!1792 thiss!18206 (singletonSeq!2232 (h!41230 tokens!494))))))))))

(declare-fun bs!540227 () Bool)

(assert (= bs!540227 d!872457))

(declare-fun m!3446269 () Bool)

(assert (=> bs!540227 m!3446269))

(assert (=> d!871483 d!872457))

(assert (=> d!871483 d!872167))

(assert (=> d!871483 d!872175))

(declare-fun d!872459 () Bool)

(declare-fun lt!1072606 () Int)

(assert (=> d!872459 (= lt!1072606 (size!27022 (list!12715 (_1!20717 lt!1071678))))))

(assert (=> d!872459 (= lt!1072606 (size!27024 (c!534902 (_1!20717 lt!1071678))))))

(assert (=> d!872459 (= (size!27018 (_1!20717 lt!1071678)) lt!1072606)))

(declare-fun bs!540228 () Bool)

(assert (= bs!540228 d!872459))

(assert (=> bs!540228 m!3443943))

(assert (=> bs!540228 m!3443943))

(declare-fun m!3446271 () Bool)

(assert (=> bs!540228 m!3446271))

(declare-fun m!3446273 () Bool)

(assert (=> bs!540228 m!3446273))

(assert (=> d!871483 d!872459))

(declare-fun d!872461 () Bool)

(assert (=> d!872461 (= (list!12715 (singletonSeq!2232 (h!41230 tokens!494))) (list!12720 (c!534902 (singletonSeq!2232 (h!41230 tokens!494)))))))

(declare-fun bs!540229 () Bool)

(assert (= bs!540229 d!872461))

(declare-fun m!3446275 () Bool)

(assert (=> bs!540229 m!3446275))

(assert (=> d!871483 d!872461))

(assert (=> d!871483 d!871471))

(assert (=> d!871483 d!871447))

(declare-fun b!3187757 () Bool)

(declare-fun e!1986349 () Bool)

(declare-fun e!1986351 () Bool)

(assert (=> b!3187757 (= e!1986349 e!1986351)))

(declare-fun res!1296091 () Bool)

(assert (=> b!3187757 (=> (not res!1296091) (not e!1986351))))

(declare-fun lt!1072607 () Bool)

(assert (=> b!3187757 (= res!1296091 (not lt!1072607))))

(declare-fun b!3187758 () Bool)

(declare-fun e!1986348 () Bool)

(assert (=> b!3187758 (= e!1986348 (not (= (head!6967 (tail!5184 lt!1071487)) (c!534900 (derivativeStep!2939 (regex!5136 (rule!7558 separatorToken!241)) (head!6967 lt!1071487))))))))

(declare-fun b!3187759 () Bool)

(declare-fun res!1296093 () Bool)

(assert (=> b!3187759 (=> res!1296093 e!1986348)))

(assert (=> b!3187759 (= res!1296093 (not (isEmpty!19939 (tail!5184 (tail!5184 lt!1071487)))))))

(declare-fun d!872463 () Bool)

(declare-fun e!1986345 () Bool)

(assert (=> d!872463 e!1986345))

(declare-fun c!535466 () Bool)

(assert (=> d!872463 (= c!535466 ((_ is EmptyExpr!9895) (derivativeStep!2939 (regex!5136 (rule!7558 separatorToken!241)) (head!6967 lt!1071487))))))

(declare-fun e!1986350 () Bool)

(assert (=> d!872463 (= lt!1072607 e!1986350)))

(declare-fun c!535465 () Bool)

(assert (=> d!872463 (= c!535465 (isEmpty!19939 (tail!5184 lt!1071487)))))

(assert (=> d!872463 (validRegex!4538 (derivativeStep!2939 (regex!5136 (rule!7558 separatorToken!241)) (head!6967 lt!1071487)))))

(assert (=> d!872463 (= (matchR!4553 (derivativeStep!2939 (regex!5136 (rule!7558 separatorToken!241)) (head!6967 lt!1071487)) (tail!5184 lt!1071487)) lt!1072607)))

(declare-fun bm!231310 () Bool)

(declare-fun call!231315 () Bool)

(assert (=> bm!231310 (= call!231315 (isEmpty!19939 (tail!5184 lt!1071487)))))

(declare-fun b!3187760 () Bool)

(declare-fun res!1296090 () Bool)

(declare-fun e!1986346 () Bool)

(assert (=> b!3187760 (=> (not res!1296090) (not e!1986346))))

(assert (=> b!3187760 (= res!1296090 (not call!231315))))

(declare-fun b!3187761 () Bool)

(assert (=> b!3187761 (= e!1986350 (matchR!4553 (derivativeStep!2939 (derivativeStep!2939 (regex!5136 (rule!7558 separatorToken!241)) (head!6967 lt!1071487)) (head!6967 (tail!5184 lt!1071487))) (tail!5184 (tail!5184 lt!1071487))))))

(declare-fun b!3187762 () Bool)

(declare-fun res!1296095 () Bool)

(assert (=> b!3187762 (=> res!1296095 e!1986349)))

(assert (=> b!3187762 (= res!1296095 (not ((_ is ElementMatch!9895) (derivativeStep!2939 (regex!5136 (rule!7558 separatorToken!241)) (head!6967 lt!1071487)))))))

(declare-fun e!1986347 () Bool)

(assert (=> b!3187762 (= e!1986347 e!1986349)))

(declare-fun b!3187763 () Bool)

(assert (=> b!3187763 (= e!1986350 (nullable!3386 (derivativeStep!2939 (regex!5136 (rule!7558 separatorToken!241)) (head!6967 lt!1071487))))))

(declare-fun b!3187764 () Bool)

(assert (=> b!3187764 (= e!1986351 e!1986348)))

(declare-fun res!1296092 () Bool)

(assert (=> b!3187764 (=> res!1296092 e!1986348)))

(assert (=> b!3187764 (= res!1296092 call!231315)))

(declare-fun b!3187765 () Bool)

(assert (=> b!3187765 (= e!1986346 (= (head!6967 (tail!5184 lt!1071487)) (c!534900 (derivativeStep!2939 (regex!5136 (rule!7558 separatorToken!241)) (head!6967 lt!1071487)))))))

(declare-fun b!3187766 () Bool)

(assert (=> b!3187766 (= e!1986345 e!1986347)))

(declare-fun c!535467 () Bool)

(assert (=> b!3187766 (= c!535467 ((_ is EmptyLang!9895) (derivativeStep!2939 (regex!5136 (rule!7558 separatorToken!241)) (head!6967 lt!1071487))))))

(declare-fun b!3187767 () Bool)

(assert (=> b!3187767 (= e!1986347 (not lt!1072607))))

(declare-fun b!3187768 () Bool)

(declare-fun res!1296094 () Bool)

(assert (=> b!3187768 (=> res!1296094 e!1986349)))

(assert (=> b!3187768 (= res!1296094 e!1986346)))

(declare-fun res!1296096 () Bool)

(assert (=> b!3187768 (=> (not res!1296096) (not e!1986346))))

(assert (=> b!3187768 (= res!1296096 lt!1072607)))

(declare-fun b!3187769 () Bool)

(assert (=> b!3187769 (= e!1986345 (= lt!1072607 call!231315))))

(declare-fun b!3187770 () Bool)

(declare-fun res!1296097 () Bool)

(assert (=> b!3187770 (=> (not res!1296097) (not e!1986346))))

(assert (=> b!3187770 (= res!1296097 (isEmpty!19939 (tail!5184 (tail!5184 lt!1071487))))))

(assert (= (and d!872463 c!535465) b!3187763))

(assert (= (and d!872463 (not c!535465)) b!3187761))

(assert (= (and d!872463 c!535466) b!3187769))

(assert (= (and d!872463 (not c!535466)) b!3187766))

(assert (= (and b!3187766 c!535467) b!3187767))

(assert (= (and b!3187766 (not c!535467)) b!3187762))

(assert (= (and b!3187762 (not res!1296095)) b!3187768))

(assert (= (and b!3187768 res!1296096) b!3187760))

(assert (= (and b!3187760 res!1296090) b!3187770))

(assert (= (and b!3187770 res!1296097) b!3187765))

(assert (= (and b!3187768 (not res!1296094)) b!3187757))

(assert (= (and b!3187757 res!1296091) b!3187764))

(assert (= (and b!3187764 (not res!1296092)) b!3187759))

(assert (= (and b!3187759 (not res!1296093)) b!3187758))

(assert (= (or b!3187769 b!3187760 b!3187764) bm!231310))

(assert (=> b!3187761 m!3443223))

(assert (=> b!3187761 m!3445227))

(assert (=> b!3187761 m!3443355))

(assert (=> b!3187761 m!3445227))

(declare-fun m!3446277 () Bool)

(assert (=> b!3187761 m!3446277))

(assert (=> b!3187761 m!3443223))

(assert (=> b!3187761 m!3445231))

(assert (=> b!3187761 m!3446277))

(assert (=> b!3187761 m!3445231))

(declare-fun m!3446279 () Bool)

(assert (=> b!3187761 m!3446279))

(assert (=> b!3187759 m!3443223))

(assert (=> b!3187759 m!3445231))

(assert (=> b!3187759 m!3445231))

(assert (=> b!3187759 m!3445235))

(assert (=> b!3187770 m!3443223))

(assert (=> b!3187770 m!3445231))

(assert (=> b!3187770 m!3445231))

(assert (=> b!3187770 m!3445235))

(assert (=> d!872463 m!3443223))

(assert (=> d!872463 m!3443227))

(assert (=> d!872463 m!3443355))

(declare-fun m!3446281 () Bool)

(assert (=> d!872463 m!3446281))

(assert (=> b!3187765 m!3443223))

(assert (=> b!3187765 m!3445227))

(assert (=> bm!231310 m!3443223))

(assert (=> bm!231310 m!3443227))

(assert (=> b!3187763 m!3443355))

(declare-fun m!3446283 () Bool)

(assert (=> b!3187763 m!3446283))

(assert (=> b!3187758 m!3443223))

(assert (=> b!3187758 m!3445227))

(assert (=> b!3185879 d!872463))

(declare-fun bm!231311 () Bool)

(declare-fun call!231317 () Regex!9895)

(declare-fun call!231319 () Regex!9895)

(assert (=> bm!231311 (= call!231317 call!231319)))

(declare-fun b!3187771 () Bool)

(declare-fun e!1986352 () Regex!9895)

(assert (=> b!3187771 (= e!1986352 (Concat!15261 call!231319 (regex!5136 (rule!7558 separatorToken!241))))))

(declare-fun bm!231312 () Bool)

(declare-fun call!231318 () Regex!9895)

(assert (=> bm!231312 (= call!231319 call!231318)))

(declare-fun b!3187772 () Bool)

(declare-fun e!1986356 () Regex!9895)

(assert (=> b!3187772 (= e!1986356 e!1986352)))

(declare-fun c!535468 () Bool)

(assert (=> b!3187772 (= c!535468 ((_ is Star!9895) (regex!5136 (rule!7558 separatorToken!241))))))

(declare-fun b!3187773 () Bool)

(declare-fun e!1986355 () Regex!9895)

(declare-fun e!1986353 () Regex!9895)

(assert (=> b!3187773 (= e!1986355 e!1986353)))

(declare-fun c!535472 () Bool)

(assert (=> b!3187773 (= c!535472 ((_ is ElementMatch!9895) (regex!5136 (rule!7558 separatorToken!241))))))

(declare-fun b!3187774 () Bool)

(assert (=> b!3187774 (= e!1986353 (ite (= (head!6967 lt!1071487) (c!534900 (regex!5136 (rule!7558 separatorToken!241)))) EmptyExpr!9895 EmptyLang!9895))))

(declare-fun b!3187775 () Bool)

(declare-fun e!1986354 () Regex!9895)

(declare-fun call!231316 () Regex!9895)

(assert (=> b!3187775 (= e!1986354 (Union!9895 (Concat!15261 call!231317 (regTwo!20302 (regex!5136 (rule!7558 separatorToken!241)))) call!231316))))

(declare-fun d!872465 () Bool)

(declare-fun lt!1072608 () Regex!9895)

(assert (=> d!872465 (validRegex!4538 lt!1072608)))

(assert (=> d!872465 (= lt!1072608 e!1986355)))

(declare-fun c!535470 () Bool)

(assert (=> d!872465 (= c!535470 (or ((_ is EmptyExpr!9895) (regex!5136 (rule!7558 separatorToken!241))) ((_ is EmptyLang!9895) (regex!5136 (rule!7558 separatorToken!241)))))))

(assert (=> d!872465 (validRegex!4538 (regex!5136 (rule!7558 separatorToken!241)))))

(assert (=> d!872465 (= (derivativeStep!2939 (regex!5136 (rule!7558 separatorToken!241)) (head!6967 lt!1071487)) lt!1072608)))

(declare-fun b!3187776 () Bool)

(assert (=> b!3187776 (= e!1986354 (Union!9895 (Concat!15261 call!231317 (regTwo!20302 (regex!5136 (rule!7558 separatorToken!241)))) EmptyLang!9895))))

(declare-fun b!3187777 () Bool)

(declare-fun c!535471 () Bool)

(assert (=> b!3187777 (= c!535471 ((_ is Union!9895) (regex!5136 (rule!7558 separatorToken!241))))))

(assert (=> b!3187777 (= e!1986353 e!1986356)))

(declare-fun bm!231313 () Bool)

(assert (=> bm!231313 (= call!231316 (derivativeStep!2939 (ite c!535471 (regTwo!20303 (regex!5136 (rule!7558 separatorToken!241))) (regTwo!20302 (regex!5136 (rule!7558 separatorToken!241)))) (head!6967 lt!1071487)))))

(declare-fun b!3187778 () Bool)

(declare-fun c!535469 () Bool)

(assert (=> b!3187778 (= c!535469 (nullable!3386 (regOne!20302 (regex!5136 (rule!7558 separatorToken!241)))))))

(assert (=> b!3187778 (= e!1986352 e!1986354)))

(declare-fun bm!231314 () Bool)

(assert (=> bm!231314 (= call!231318 (derivativeStep!2939 (ite c!535471 (regOne!20303 (regex!5136 (rule!7558 separatorToken!241))) (ite c!535468 (reg!10224 (regex!5136 (rule!7558 separatorToken!241))) (regOne!20302 (regex!5136 (rule!7558 separatorToken!241))))) (head!6967 lt!1071487)))))

(declare-fun b!3187779 () Bool)

(assert (=> b!3187779 (= e!1986355 EmptyLang!9895)))

(declare-fun b!3187780 () Bool)

(assert (=> b!3187780 (= e!1986356 (Union!9895 call!231318 call!231316))))

(assert (= (and d!872465 c!535470) b!3187779))

(assert (= (and d!872465 (not c!535470)) b!3187773))

(assert (= (and b!3187773 c!535472) b!3187774))

(assert (= (and b!3187773 (not c!535472)) b!3187777))

(assert (= (and b!3187777 c!535471) b!3187780))

(assert (= (and b!3187777 (not c!535471)) b!3187772))

(assert (= (and b!3187772 c!535468) b!3187771))

(assert (= (and b!3187772 (not c!535468)) b!3187778))

(assert (= (and b!3187778 c!535469) b!3187775))

(assert (= (and b!3187778 (not c!535469)) b!3187776))

(assert (= (or b!3187775 b!3187776) bm!231311))

(assert (= (or b!3187771 bm!231311) bm!231312))

(assert (= (or b!3187780 bm!231312) bm!231314))

(assert (= (or b!3187780 b!3187775) bm!231313))

(declare-fun m!3446285 () Bool)

(assert (=> d!872465 m!3446285))

(assert (=> d!872465 m!3443353))

(assert (=> bm!231313 m!3442711))

(declare-fun m!3446287 () Bool)

(assert (=> bm!231313 m!3446287))

(declare-fun m!3446289 () Bool)

(assert (=> b!3187778 m!3446289))

(assert (=> bm!231314 m!3442711))

(declare-fun m!3446291 () Bool)

(assert (=> bm!231314 m!3446291))

(assert (=> b!3185879 d!872465))

(assert (=> b!3185879 d!871579))

(assert (=> b!3185879 d!871963))

(declare-fun d!872467 () Bool)

(assert (=> d!872467 (= (list!12715 lt!1071647) (list!12720 (c!534902 lt!1071647)))))

(declare-fun bs!540230 () Bool)

(assert (= bs!540230 d!872467))

(declare-fun m!3446293 () Bool)

(assert (=> bs!540230 m!3446293))

(assert (=> d!871471 d!872467))

(declare-fun d!872469 () Bool)

(declare-fun e!1986359 () Bool)

(assert (=> d!872469 e!1986359))

(declare-fun res!1296100 () Bool)

(assert (=> d!872469 (=> (not res!1296100) (not e!1986359))))

(declare-fun lt!1072611 () BalanceConc!20910)

(assert (=> d!872469 (= res!1296100 (= (list!12715 lt!1072611) (Cons!35810 (h!41230 tokens!494) Nil!35810)))))

(declare-fun choose!18614 (Token!9638) BalanceConc!20910)

(assert (=> d!872469 (= lt!1072611 (choose!18614 (h!41230 tokens!494)))))

(assert (=> d!872469 (= (singleton!978 (h!41230 tokens!494)) lt!1072611)))

(declare-fun b!3187783 () Bool)

(assert (=> b!3187783 (= e!1986359 (isBalanced!3189 (c!534902 lt!1072611)))))

(assert (= (and d!872469 res!1296100) b!3187783))

(declare-fun m!3446295 () Bool)

(assert (=> d!872469 m!3446295))

(declare-fun m!3446297 () Bool)

(assert (=> d!872469 m!3446297))

(declare-fun m!3446299 () Bool)

(assert (=> b!3187783 m!3446299))

(assert (=> d!871471 d!872469))

(assert (=> b!3186060 d!871831))

(assert (=> b!3186060 d!871563))

(declare-fun b!3187784 () Bool)

(declare-fun res!1296107 () Bool)

(declare-fun e!1986363 () Bool)

(assert (=> b!3187784 (=> (not res!1296107) (not e!1986363))))

(declare-fun lt!1072613 () Option!7003)

(assert (=> b!3187784 (= res!1296107 (= (rule!7558 (_1!20718 (get!11399 lt!1072613))) (h!41231 rules!2135)))))

(declare-fun d!872471 () Bool)

(declare-fun e!1986361 () Bool)

(assert (=> d!872471 e!1986361))

(declare-fun res!1296104 () Bool)

(assert (=> d!872471 (=> res!1296104 e!1986361)))

(assert (=> d!872471 (= res!1296104 (isEmpty!19943 lt!1072613))))

(declare-fun e!1986360 () Option!7003)

(assert (=> d!872471 (= lt!1072613 e!1986360)))

(declare-fun c!535473 () Bool)

(declare-fun lt!1072614 () tuple2!35176)

(assert (=> d!872471 (= c!535473 (isEmpty!19939 (_1!20722 lt!1072614)))))

(assert (=> d!872471 (= lt!1072614 (findLongestMatch!734 (regex!5136 (h!41231 rules!2135)) lt!1071470))))

(assert (=> d!872471 (ruleValid!1630 thiss!18206 (h!41231 rules!2135))))

(assert (=> d!872471 (= (maxPrefixOneRule!1530 thiss!18206 (h!41231 rules!2135) lt!1071470) lt!1072613)))

(declare-fun b!3187785 () Bool)

(assert (=> b!3187785 (= e!1986360 None!7002)))

(declare-fun b!3187786 () Bool)

(declare-fun res!1296102 () Bool)

(assert (=> b!3187786 (=> (not res!1296102) (not e!1986363))))

(assert (=> b!3187786 (= res!1296102 (= (value!166836 (_1!20718 (get!11399 lt!1072613))) (apply!8064 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1072613)))) (seqFromList!3351 (originalCharacters!5850 (_1!20718 (get!11399 lt!1072613)))))))))

(declare-fun b!3187787 () Bool)

(assert (=> b!3187787 (= e!1986361 e!1986363)))

(declare-fun res!1296101 () Bool)

(assert (=> b!3187787 (=> (not res!1296101) (not e!1986363))))

(assert (=> b!3187787 (= res!1296101 (matchR!4553 (regex!5136 (h!41231 rules!2135)) (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1072613))))))))

(declare-fun b!3187788 () Bool)

(declare-fun res!1296103 () Bool)

(assert (=> b!3187788 (=> (not res!1296103) (not e!1986363))))

(assert (=> b!3187788 (= res!1296103 (< (size!27015 (_2!20718 (get!11399 lt!1072613))) (size!27015 lt!1071470)))))

(declare-fun b!3187789 () Bool)

(declare-fun e!1986362 () Bool)

(assert (=> b!3187789 (= e!1986362 (matchR!4553 (regex!5136 (h!41231 rules!2135)) (_1!20722 (findLongestMatchInner!819 (regex!5136 (h!41231 rules!2135)) Nil!35809 (size!27015 Nil!35809) lt!1071470 lt!1071470 (size!27015 lt!1071470)))))))

(declare-fun b!3187790 () Bool)

(assert (=> b!3187790 (= e!1986363 (= (size!27014 (_1!20718 (get!11399 lt!1072613))) (size!27015 (originalCharacters!5850 (_1!20718 (get!11399 lt!1072613))))))))

(declare-fun b!3187791 () Bool)

(assert (=> b!3187791 (= e!1986360 (Some!7002 (tuple2!35169 (Token!9639 (apply!8064 (transformation!5136 (h!41231 rules!2135)) (seqFromList!3351 (_1!20722 lt!1072614))) (h!41231 rules!2135) (size!27019 (seqFromList!3351 (_1!20722 lt!1072614))) (_1!20722 lt!1072614)) (_2!20722 lt!1072614))))))

(declare-fun lt!1072616 () Unit!50220)

(assert (=> b!3187791 (= lt!1072616 (longestMatchIsAcceptedByMatchOrIsEmpty!792 (regex!5136 (h!41231 rules!2135)) lt!1071470))))

(declare-fun res!1296106 () Bool)

(assert (=> b!3187791 (= res!1296106 (isEmpty!19939 (_1!20722 (findLongestMatchInner!819 (regex!5136 (h!41231 rules!2135)) Nil!35809 (size!27015 Nil!35809) lt!1071470 lt!1071470 (size!27015 lt!1071470)))))))

(assert (=> b!3187791 (=> res!1296106 e!1986362)))

(assert (=> b!3187791 e!1986362))

(declare-fun lt!1072615 () Unit!50220)

(assert (=> b!3187791 (= lt!1072615 lt!1072616)))

(declare-fun lt!1072612 () Unit!50220)

(assert (=> b!3187791 (= lt!1072612 (lemmaSemiInverse!1161 (transformation!5136 (h!41231 rules!2135)) (seqFromList!3351 (_1!20722 lt!1072614))))))

(declare-fun b!3187792 () Bool)

(declare-fun res!1296105 () Bool)

(assert (=> b!3187792 (=> (not res!1296105) (not e!1986363))))

(assert (=> b!3187792 (= res!1296105 (= (++!8566 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1072613)))) (_2!20718 (get!11399 lt!1072613))) lt!1071470))))

(assert (= (and d!872471 c!535473) b!3187785))

(assert (= (and d!872471 (not c!535473)) b!3187791))

(assert (= (and b!3187791 (not res!1296106)) b!3187789))

(assert (= (and d!872471 (not res!1296104)) b!3187787))

(assert (= (and b!3187787 res!1296101) b!3187792))

(assert (= (and b!3187792 res!1296105) b!3187788))

(assert (= (and b!3187788 res!1296103) b!3187784))

(assert (= (and b!3187784 res!1296107) b!3187786))

(assert (= (and b!3187786 res!1296102) b!3187790))

(declare-fun m!3446301 () Bool)

(assert (=> b!3187784 m!3446301))

(assert (=> b!3187787 m!3446301))

(declare-fun m!3446303 () Bool)

(assert (=> b!3187787 m!3446303))

(assert (=> b!3187787 m!3446303))

(declare-fun m!3446305 () Bool)

(assert (=> b!3187787 m!3446305))

(assert (=> b!3187787 m!3446305))

(declare-fun m!3446307 () Bool)

(assert (=> b!3187787 m!3446307))

(assert (=> b!3187786 m!3446301))

(declare-fun m!3446309 () Bool)

(assert (=> b!3187786 m!3446309))

(assert (=> b!3187786 m!3446309))

(declare-fun m!3446311 () Bool)

(assert (=> b!3187786 m!3446311))

(declare-fun m!3446313 () Bool)

(assert (=> b!3187791 m!3446313))

(assert (=> b!3187791 m!3443107))

(declare-fun m!3446315 () Bool)

(assert (=> b!3187791 m!3446315))

(declare-fun m!3446317 () Bool)

(assert (=> b!3187791 m!3446317))

(assert (=> b!3187791 m!3446315))

(declare-fun m!3446319 () Bool)

(assert (=> b!3187791 m!3446319))

(assert (=> b!3187791 m!3443647))

(assert (=> b!3187791 m!3443647))

(assert (=> b!3187791 m!3443107))

(declare-fun m!3446321 () Bool)

(assert (=> b!3187791 m!3446321))

(assert (=> b!3187791 m!3446315))

(declare-fun m!3446323 () Bool)

(assert (=> b!3187791 m!3446323))

(assert (=> b!3187791 m!3446315))

(declare-fun m!3446325 () Bool)

(assert (=> b!3187791 m!3446325))

(assert (=> b!3187788 m!3446301))

(declare-fun m!3446327 () Bool)

(assert (=> b!3187788 m!3446327))

(assert (=> b!3187788 m!3443107))

(declare-fun m!3446329 () Bool)

(assert (=> d!872471 m!3446329))

(declare-fun m!3446331 () Bool)

(assert (=> d!872471 m!3446331))

(declare-fun m!3446333 () Bool)

(assert (=> d!872471 m!3446333))

(assert (=> d!872471 m!3444791))

(assert (=> b!3187792 m!3446301))

(assert (=> b!3187792 m!3446303))

(assert (=> b!3187792 m!3446303))

(assert (=> b!3187792 m!3446305))

(assert (=> b!3187792 m!3446305))

(declare-fun m!3446335 () Bool)

(assert (=> b!3187792 m!3446335))

(assert (=> b!3187790 m!3446301))

(declare-fun m!3446337 () Bool)

(assert (=> b!3187790 m!3446337))

(assert (=> b!3187789 m!3443647))

(assert (=> b!3187789 m!3443107))

(assert (=> b!3187789 m!3443647))

(assert (=> b!3187789 m!3443107))

(assert (=> b!3187789 m!3446321))

(declare-fun m!3446339 () Bool)

(assert (=> b!3187789 m!3446339))

(assert (=> bm!231106 d!872471))

(declare-fun b!3187795 () Bool)

(declare-fun res!1296108 () Bool)

(declare-fun e!1986365 () Bool)

(assert (=> b!3187795 (=> (not res!1296108) (not e!1986365))))

(declare-fun lt!1072617 () List!35933)

(assert (=> b!3187795 (= res!1296108 (= (size!27015 lt!1072617) (+ (size!27015 (list!12713 (charsOf!3158 (h!41230 (Cons!35810 (h!41230 tokens!494) Nil!35810))))) (size!27015 (printList!1279 thiss!18206 (t!235527 (Cons!35810 (h!41230 tokens!494) Nil!35810)))))))))

(declare-fun b!3187794 () Bool)

(declare-fun e!1986364 () List!35933)

(assert (=> b!3187794 (= e!1986364 (Cons!35809 (h!41229 (list!12713 (charsOf!3158 (h!41230 (Cons!35810 (h!41230 tokens!494) Nil!35810))))) (++!8566 (t!235526 (list!12713 (charsOf!3158 (h!41230 (Cons!35810 (h!41230 tokens!494) Nil!35810))))) (printList!1279 thiss!18206 (t!235527 (Cons!35810 (h!41230 tokens!494) Nil!35810))))))))

(declare-fun b!3187793 () Bool)

(assert (=> b!3187793 (= e!1986364 (printList!1279 thiss!18206 (t!235527 (Cons!35810 (h!41230 tokens!494) Nil!35810))))))

(declare-fun b!3187796 () Bool)

(assert (=> b!3187796 (= e!1986365 (or (not (= (printList!1279 thiss!18206 (t!235527 (Cons!35810 (h!41230 tokens!494) Nil!35810))) Nil!35809)) (= lt!1072617 (list!12713 (charsOf!3158 (h!41230 (Cons!35810 (h!41230 tokens!494) Nil!35810)))))))))

(declare-fun d!872473 () Bool)

(assert (=> d!872473 e!1986365))

(declare-fun res!1296109 () Bool)

(assert (=> d!872473 (=> (not res!1296109) (not e!1986365))))

(assert (=> d!872473 (= res!1296109 (= (content!4850 lt!1072617) ((_ map or) (content!4850 (list!12713 (charsOf!3158 (h!41230 (Cons!35810 (h!41230 tokens!494) Nil!35810))))) (content!4850 (printList!1279 thiss!18206 (t!235527 (Cons!35810 (h!41230 tokens!494) Nil!35810)))))))))

(assert (=> d!872473 (= lt!1072617 e!1986364)))

(declare-fun c!535474 () Bool)

(assert (=> d!872473 (= c!535474 ((_ is Nil!35809) (list!12713 (charsOf!3158 (h!41230 (Cons!35810 (h!41230 tokens!494) Nil!35810))))))))

(assert (=> d!872473 (= (++!8566 (list!12713 (charsOf!3158 (h!41230 (Cons!35810 (h!41230 tokens!494) Nil!35810)))) (printList!1279 thiss!18206 (t!235527 (Cons!35810 (h!41230 tokens!494) Nil!35810)))) lt!1072617)))

(assert (= (and d!872473 c!535474) b!3187793))

(assert (= (and d!872473 (not c!535474)) b!3187794))

(assert (= (and d!872473 res!1296109) b!3187795))

(assert (= (and b!3187795 res!1296108) b!3187796))

(declare-fun m!3446341 () Bool)

(assert (=> b!3187795 m!3446341))

(assert (=> b!3187795 m!3443245))

(declare-fun m!3446343 () Bool)

(assert (=> b!3187795 m!3446343))

(assert (=> b!3187795 m!3443247))

(declare-fun m!3446345 () Bool)

(assert (=> b!3187795 m!3446345))

(assert (=> b!3187794 m!3443247))

(declare-fun m!3446347 () Bool)

(assert (=> b!3187794 m!3446347))

(declare-fun m!3446349 () Bool)

(assert (=> d!872473 m!3446349))

(assert (=> d!872473 m!3443245))

(declare-fun m!3446351 () Bool)

(assert (=> d!872473 m!3446351))

(assert (=> d!872473 m!3443247))

(declare-fun m!3446353 () Bool)

(assert (=> d!872473 m!3446353))

(assert (=> b!3185808 d!872473))

(declare-fun d!872475 () Bool)

(assert (=> d!872475 (= (list!12713 (charsOf!3158 (h!41230 (Cons!35810 (h!41230 tokens!494) Nil!35810)))) (list!12717 (c!534901 (charsOf!3158 (h!41230 (Cons!35810 (h!41230 tokens!494) Nil!35810))))))))

(declare-fun bs!540231 () Bool)

(assert (= bs!540231 d!872475))

(declare-fun m!3446355 () Bool)

(assert (=> bs!540231 m!3446355))

(assert (=> b!3185808 d!872475))

(declare-fun d!872477 () Bool)

(declare-fun lt!1072618 () BalanceConc!20908)

(assert (=> d!872477 (= (list!12713 lt!1072618) (originalCharacters!5850 (h!41230 (Cons!35810 (h!41230 tokens!494) Nil!35810))))))

(assert (=> d!872477 (= lt!1072618 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (Cons!35810 (h!41230 tokens!494) Nil!35810))))) (value!166836 (h!41230 (Cons!35810 (h!41230 tokens!494) Nil!35810)))))))

(assert (=> d!872477 (= (charsOf!3158 (h!41230 (Cons!35810 (h!41230 tokens!494) Nil!35810))) lt!1072618)))

(declare-fun b_lambda!86957 () Bool)

(assert (=> (not b_lambda!86957) (not d!872477)))

(declare-fun t!235899 () Bool)

(declare-fun tb!155795 () Bool)

(assert (=> (and b!3186168 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (Cons!35810 (h!41230 tokens!494) Nil!35810)))))) t!235899) tb!155795))

(declare-fun b!3187797 () Bool)

(declare-fun e!1986366 () Bool)

(declare-fun tp!1007695 () Bool)

(assert (=> b!3187797 (= e!1986366 (and (inv!48663 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (Cons!35810 (h!41230 tokens!494) Nil!35810))))) (value!166836 (h!41230 (Cons!35810 (h!41230 tokens!494) Nil!35810)))))) tp!1007695))))

(declare-fun result!197954 () Bool)

(assert (=> tb!155795 (= result!197954 (and (inv!48664 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (Cons!35810 (h!41230 tokens!494) Nil!35810))))) (value!166836 (h!41230 (Cons!35810 (h!41230 tokens!494) Nil!35810))))) e!1986366))))

(assert (= tb!155795 b!3187797))

(declare-fun m!3446357 () Bool)

(assert (=> b!3187797 m!3446357))

(declare-fun m!3446359 () Bool)

(assert (=> tb!155795 m!3446359))

(assert (=> d!872477 t!235899))

(declare-fun b_and!211087 () Bool)

(assert (= b_and!211083 (and (=> t!235899 result!197954) b_and!211087)))

(declare-fun t!235901 () Bool)

(declare-fun tb!155797 () Bool)

(assert (=> (and b!3186184 (= (toChars!7055 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (Cons!35810 (h!41230 tokens!494) Nil!35810)))))) t!235901) tb!155797))

(declare-fun result!197956 () Bool)

(assert (= result!197956 result!197954))

(assert (=> d!872477 t!235901))

(declare-fun b_and!211089 () Bool)

(assert (= b_and!211081 (and (=> t!235901 result!197956) b_and!211089)))

(declare-fun t!235903 () Bool)

(declare-fun tb!155799 () Bool)

(assert (=> (and b!3185354 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (Cons!35810 (h!41230 tokens!494) Nil!35810)))))) t!235903) tb!155799))

(declare-fun result!197958 () Bool)

(assert (= result!197958 result!197954))

(assert (=> d!872477 t!235903))

(declare-fun b_and!211091 () Bool)

(assert (= b_and!211077 (and (=> t!235903 result!197958) b_and!211091)))

(declare-fun tb!155801 () Bool)

(declare-fun t!235905 () Bool)

(assert (=> (and b!3185352 (= (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (Cons!35810 (h!41230 tokens!494) Nil!35810)))))) t!235905) tb!155801))

(declare-fun result!197960 () Bool)

(assert (= result!197960 result!197954))

(assert (=> d!872477 t!235905))

(declare-fun b_and!211093 () Bool)

(assert (= b_and!211079 (and (=> t!235905 result!197960) b_and!211093)))

(declare-fun tb!155803 () Bool)

(declare-fun t!235907 () Bool)

(assert (=> (and b!3185353 (= (toChars!7055 (transformation!5136 (h!41231 rules!2135))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (Cons!35810 (h!41230 tokens!494) Nil!35810)))))) t!235907) tb!155803))

(declare-fun result!197962 () Bool)

(assert (= result!197962 result!197954))

(assert (=> d!872477 t!235907))

(declare-fun b_and!211095 () Bool)

(assert (= b_and!211085 (and (=> t!235907 result!197962) b_and!211095)))

(declare-fun m!3446361 () Bool)

(assert (=> d!872477 m!3446361))

(declare-fun m!3446363 () Bool)

(assert (=> d!872477 m!3446363))

(assert (=> b!3185808 d!872477))

(declare-fun d!872479 () Bool)

(declare-fun c!535475 () Bool)

(assert (=> d!872479 (= c!535475 ((_ is Cons!35810) (t!235527 (Cons!35810 (h!41230 tokens!494) Nil!35810))))))

(declare-fun e!1986367 () List!35933)

(assert (=> d!872479 (= (printList!1279 thiss!18206 (t!235527 (Cons!35810 (h!41230 tokens!494) Nil!35810))) e!1986367)))

(declare-fun b!3187798 () Bool)

(assert (=> b!3187798 (= e!1986367 (++!8566 (list!12713 (charsOf!3158 (h!41230 (t!235527 (Cons!35810 (h!41230 tokens!494) Nil!35810))))) (printList!1279 thiss!18206 (t!235527 (t!235527 (Cons!35810 (h!41230 tokens!494) Nil!35810))))))))

(declare-fun b!3187799 () Bool)

(assert (=> b!3187799 (= e!1986367 Nil!35809)))

(assert (= (and d!872479 c!535475) b!3187798))

(assert (= (and d!872479 (not c!535475)) b!3187799))

(declare-fun m!3446365 () Bool)

(assert (=> b!3187798 m!3446365))

(assert (=> b!3187798 m!3446365))

(declare-fun m!3446367 () Bool)

(assert (=> b!3187798 m!3446367))

(declare-fun m!3446369 () Bool)

(assert (=> b!3187798 m!3446369))

(assert (=> b!3187798 m!3446367))

(assert (=> b!3187798 m!3446369))

(declare-fun m!3446371 () Bool)

(assert (=> b!3187798 m!3446371))

(assert (=> b!3185808 d!872479))

(declare-fun d!872481 () Bool)

(assert (=> d!872481 (= (isEmpty!19947 (list!12715 (_1!20717 (lex!2065 thiss!18206 rules!2135 lt!1071478)))) ((_ is Nil!35810) (list!12715 (_1!20717 (lex!2065 thiss!18206 rules!2135 lt!1071478)))))))

(assert (=> d!871503 d!872481))

(declare-fun d!872483 () Bool)

(assert (=> d!872483 (= (list!12715 (_1!20717 (lex!2065 thiss!18206 rules!2135 lt!1071478))) (list!12720 (c!534902 (_1!20717 (lex!2065 thiss!18206 rules!2135 lt!1071478)))))))

(declare-fun bs!540232 () Bool)

(assert (= bs!540232 d!872483))

(declare-fun m!3446373 () Bool)

(assert (=> bs!540232 m!3446373))

(assert (=> d!871503 d!872483))

(declare-fun d!872485 () Bool)

(declare-fun lt!1072621 () Bool)

(assert (=> d!872485 (= lt!1072621 (isEmpty!19947 (list!12720 (c!534902 (_1!20717 (lex!2065 thiss!18206 rules!2135 lt!1071478))))))))

(assert (=> d!872485 (= lt!1072621 (= (size!27024 (c!534902 (_1!20717 (lex!2065 thiss!18206 rules!2135 lt!1071478)))) 0))))

(assert (=> d!872485 (= (isEmpty!19948 (c!534902 (_1!20717 (lex!2065 thiss!18206 rules!2135 lt!1071478)))) lt!1072621)))

(declare-fun bs!540233 () Bool)

(assert (= bs!540233 d!872485))

(assert (=> bs!540233 m!3446373))

(assert (=> bs!540233 m!3446373))

(declare-fun m!3446375 () Bool)

(assert (=> bs!540233 m!3446375))

(declare-fun m!3446377 () Bool)

(assert (=> bs!540233 m!3446377))

(assert (=> d!871503 d!872485))

(assert (=> b!3185876 d!871579))

(declare-fun b!3187800 () Bool)

(declare-fun e!1986372 () Bool)

(declare-fun e!1986374 () Bool)

(assert (=> b!3187800 (= e!1986372 e!1986374)))

(declare-fun res!1296111 () Bool)

(assert (=> b!3187800 (=> (not res!1296111) (not e!1986374))))

(declare-fun lt!1072622 () Bool)

(assert (=> b!3187800 (= res!1296111 (not lt!1072622))))

(declare-fun b!3187801 () Bool)

(declare-fun e!1986371 () Bool)

(assert (=> b!3187801 (= e!1986371 (not (= (head!6967 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071771))))) (c!534900 (regex!5136 (rule!7558 (h!41230 tokens!494)))))))))

(declare-fun b!3187802 () Bool)

(declare-fun res!1296113 () Bool)

(assert (=> b!3187802 (=> res!1296113 e!1986371)))

(assert (=> b!3187802 (= res!1296113 (not (isEmpty!19939 (tail!5184 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071771))))))))))

(declare-fun d!872487 () Bool)

(declare-fun e!1986368 () Bool)

(assert (=> d!872487 e!1986368))

(declare-fun c!535477 () Bool)

(assert (=> d!872487 (= c!535477 ((_ is EmptyExpr!9895) (regex!5136 (rule!7558 (h!41230 tokens!494)))))))

(declare-fun e!1986373 () Bool)

(assert (=> d!872487 (= lt!1072622 e!1986373)))

(declare-fun c!535476 () Bool)

(assert (=> d!872487 (= c!535476 (isEmpty!19939 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071771))))))))

(assert (=> d!872487 (validRegex!4538 (regex!5136 (rule!7558 (h!41230 tokens!494))))))

(assert (=> d!872487 (= (matchR!4553 (regex!5136 (rule!7558 (h!41230 tokens!494))) (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071771))))) lt!1072622)))

(declare-fun bm!231315 () Bool)

(declare-fun call!231320 () Bool)

(assert (=> bm!231315 (= call!231320 (isEmpty!19939 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071771))))))))

(declare-fun b!3187803 () Bool)

(declare-fun res!1296110 () Bool)

(declare-fun e!1986369 () Bool)

(assert (=> b!3187803 (=> (not res!1296110) (not e!1986369))))

(assert (=> b!3187803 (= res!1296110 (not call!231320))))

(declare-fun b!3187804 () Bool)

(assert (=> b!3187804 (= e!1986373 (matchR!4553 (derivativeStep!2939 (regex!5136 (rule!7558 (h!41230 tokens!494))) (head!6967 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071771)))))) (tail!5184 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071771)))))))))

(declare-fun b!3187805 () Bool)

(declare-fun res!1296115 () Bool)

(assert (=> b!3187805 (=> res!1296115 e!1986372)))

(assert (=> b!3187805 (= res!1296115 (not ((_ is ElementMatch!9895) (regex!5136 (rule!7558 (h!41230 tokens!494))))))))

(declare-fun e!1986370 () Bool)

(assert (=> b!3187805 (= e!1986370 e!1986372)))

(declare-fun b!3187806 () Bool)

(assert (=> b!3187806 (= e!1986373 (nullable!3386 (regex!5136 (rule!7558 (h!41230 tokens!494)))))))

(declare-fun b!3187807 () Bool)

(assert (=> b!3187807 (= e!1986374 e!1986371)))

(declare-fun res!1296112 () Bool)

(assert (=> b!3187807 (=> res!1296112 e!1986371)))

(assert (=> b!3187807 (= res!1296112 call!231320)))

(declare-fun b!3187808 () Bool)

(assert (=> b!3187808 (= e!1986369 (= (head!6967 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071771))))) (c!534900 (regex!5136 (rule!7558 (h!41230 tokens!494))))))))

(declare-fun b!3187809 () Bool)

(assert (=> b!3187809 (= e!1986368 e!1986370)))

(declare-fun c!535478 () Bool)

(assert (=> b!3187809 (= c!535478 ((_ is EmptyLang!9895) (regex!5136 (rule!7558 (h!41230 tokens!494)))))))

(declare-fun b!3187810 () Bool)

(assert (=> b!3187810 (= e!1986370 (not lt!1072622))))

(declare-fun b!3187811 () Bool)

(declare-fun res!1296114 () Bool)

(assert (=> b!3187811 (=> res!1296114 e!1986372)))

(assert (=> b!3187811 (= res!1296114 e!1986369)))

(declare-fun res!1296116 () Bool)

(assert (=> b!3187811 (=> (not res!1296116) (not e!1986369))))

(assert (=> b!3187811 (= res!1296116 lt!1072622)))

(declare-fun b!3187812 () Bool)

(assert (=> b!3187812 (= e!1986368 (= lt!1072622 call!231320))))

(declare-fun b!3187813 () Bool)

(declare-fun res!1296117 () Bool)

(assert (=> b!3187813 (=> (not res!1296117) (not e!1986369))))

(assert (=> b!3187813 (= res!1296117 (isEmpty!19939 (tail!5184 (list!12713 (charsOf!3158 (_1!20718 (get!11399 lt!1071771)))))))))

(assert (= (and d!872487 c!535476) b!3187806))

(assert (= (and d!872487 (not c!535476)) b!3187804))

(assert (= (and d!872487 c!535477) b!3187812))

(assert (= (and d!872487 (not c!535477)) b!3187809))

(assert (= (and b!3187809 c!535478) b!3187810))

(assert (= (and b!3187809 (not c!535478)) b!3187805))

(assert (= (and b!3187805 (not res!1296115)) b!3187811))

(assert (= (and b!3187811 res!1296116) b!3187803))

(assert (= (and b!3187803 res!1296110) b!3187813))

(assert (= (and b!3187813 res!1296117) b!3187808))

(assert (= (and b!3187811 (not res!1296114)) b!3187800))

(assert (= (and b!3187800 res!1296111) b!3187807))

(assert (= (and b!3187807 (not res!1296112)) b!3187802))

(assert (= (and b!3187802 (not res!1296113)) b!3187801))

(assert (= (or b!3187812 b!3187803 b!3187807) bm!231315))

(assert (=> b!3187804 m!3443631))

(declare-fun m!3446379 () Bool)

(assert (=> b!3187804 m!3446379))

(assert (=> b!3187804 m!3446379))

(declare-fun m!3446381 () Bool)

(assert (=> b!3187804 m!3446381))

(assert (=> b!3187804 m!3443631))

(declare-fun m!3446383 () Bool)

(assert (=> b!3187804 m!3446383))

(assert (=> b!3187804 m!3446381))

(assert (=> b!3187804 m!3446383))

(declare-fun m!3446385 () Bool)

(assert (=> b!3187804 m!3446385))

(assert (=> b!3187802 m!3443631))

(assert (=> b!3187802 m!3446383))

(assert (=> b!3187802 m!3446383))

(declare-fun m!3446387 () Bool)

(assert (=> b!3187802 m!3446387))

(assert (=> b!3187813 m!3443631))

(assert (=> b!3187813 m!3446383))

(assert (=> b!3187813 m!3446383))

(assert (=> b!3187813 m!3446387))

(assert (=> d!872487 m!3443631))

(declare-fun m!3446389 () Bool)

(assert (=> d!872487 m!3446389))

(assert (=> d!872487 m!3444003))

(assert (=> b!3187808 m!3443631))

(assert (=> b!3187808 m!3446379))

(assert (=> bm!231315 m!3443631))

(assert (=> bm!231315 m!3446389))

(assert (=> b!3187806 m!3444053))

(assert (=> b!3187801 m!3443631))

(assert (=> b!3187801 m!3446379))

(assert (=> b!3186108 d!872487))

(assert (=> b!3186108 d!872427))

(assert (=> b!3186108 d!872429))

(assert (=> b!3186108 d!871859))

(assert (=> b!3185683 d!871705))

(declare-fun d!872489 () Bool)

(assert (=> d!872489 (= (apply!8064 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628)))) (seqFromList!3351 (originalCharacters!5850 (_1!20718 (get!11399 lt!1071628))))) (dynLambda!14457 (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628))))) (seqFromList!3351 (originalCharacters!5850 (_1!20718 (get!11399 lt!1071628))))))))

(declare-fun b_lambda!86959 () Bool)

(assert (=> (not b_lambda!86959) (not d!872489)))

(declare-fun tb!155805 () Bool)

(declare-fun t!235910 () Bool)

(assert (=> (and b!3185354 (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628)))))) t!235910) tb!155805))

(declare-fun result!197964 () Bool)

(assert (=> tb!155805 (= result!197964 (inv!21 (dynLambda!14457 (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628))))) (seqFromList!3351 (originalCharacters!5850 (_1!20718 (get!11399 lt!1071628)))))))))

(declare-fun m!3446391 () Bool)

(assert (=> tb!155805 m!3446391))

(assert (=> d!872489 t!235910))

(declare-fun b_and!211097 () Bool)

(assert (= b_and!210979 (and (=> t!235910 result!197964) b_and!211097)))

(declare-fun t!235912 () Bool)

(declare-fun tb!155807 () Bool)

(assert (=> (and b!3186184 (= (toValue!7196 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628)))))) t!235912) tb!155807))

(declare-fun result!197966 () Bool)

(assert (= result!197966 result!197964))

(assert (=> d!872489 t!235912))

(declare-fun b_and!211099 () Bool)

(assert (= b_and!210985 (and (=> t!235912 result!197966) b_and!211099)))

(declare-fun tb!155809 () Bool)

(declare-fun t!235914 () Bool)

(assert (=> (and b!3185353 (= (toValue!7196 (transformation!5136 (h!41231 rules!2135))) (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628)))))) t!235914) tb!155809))

(declare-fun result!197968 () Bool)

(assert (= result!197968 result!197964))

(assert (=> d!872489 t!235914))

(declare-fun b_and!211101 () Bool)

(assert (= b_and!210981 (and (=> t!235914 result!197968) b_and!211101)))

(declare-fun t!235916 () Bool)

(declare-fun tb!155811 () Bool)

(assert (=> (and b!3186168 (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628)))))) t!235916) tb!155811))

(declare-fun result!197970 () Bool)

(assert (= result!197970 result!197964))

(assert (=> d!872489 t!235916))

(declare-fun b_and!211103 () Bool)

(assert (= b_and!210987 (and (=> t!235916 result!197970) b_and!211103)))

(declare-fun t!235918 () Bool)

(declare-fun tb!155813 () Bool)

(assert (=> (and b!3185352 (= (toValue!7196 (transformation!5136 (rule!7558 separatorToken!241))) (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628)))))) t!235918) tb!155813))

(declare-fun result!197972 () Bool)

(assert (= result!197972 result!197964))

(assert (=> d!872489 t!235918))

(declare-fun b_and!211105 () Bool)

(assert (= b_and!210983 (and (=> t!235918 result!197972) b_and!211105)))

(assert (=> d!872489 m!3443131))

(declare-fun m!3446393 () Bool)

(assert (=> d!872489 m!3446393))

(assert (=> b!3185683 d!872489))

(declare-fun d!872491 () Bool)

(assert (=> d!872491 (= (seqFromList!3351 (originalCharacters!5850 (_1!20718 (get!11399 lt!1071628)))) (fromListB!1510 (originalCharacters!5850 (_1!20718 (get!11399 lt!1071628)))))))

(declare-fun bs!540234 () Bool)

(assert (= bs!540234 d!872491))

(declare-fun m!3446395 () Bool)

(assert (=> bs!540234 m!3446395))

(assert (=> b!3185683 d!872491))

(declare-fun d!872493 () Bool)

(assert (=> d!872493 (= (isDefined!5485 lt!1071621) (not (isEmpty!19943 lt!1071621)))))

(declare-fun bs!540235 () Bool)

(assert (= bs!540235 d!872493))

(assert (=> bs!540235 m!3443089))

(assert (=> b!3185682 d!872493))

(declare-fun d!872495 () Bool)

(declare-fun c!535479 () Bool)

(assert (=> d!872495 (= c!535479 ((_ is Nil!35809) lt!1071634))))

(declare-fun e!1986376 () (InoxSet C!19976))

(assert (=> d!872495 (= (content!4850 lt!1071634) e!1986376)))

(declare-fun b!3187814 () Bool)

(assert (=> b!3187814 (= e!1986376 ((as const (Array C!19976 Bool)) false))))

(declare-fun b!3187815 () Bool)

(assert (=> b!3187815 (= e!1986376 ((_ map or) (store ((as const (Array C!19976 Bool)) false) (h!41229 lt!1071634) true) (content!4850 (t!235526 lt!1071634))))))

(assert (= (and d!872495 c!535479) b!3187814))

(assert (= (and d!872495 (not c!535479)) b!3187815))

(declare-fun m!3446397 () Bool)

(assert (=> b!3187815 m!3446397))

(declare-fun m!3446399 () Bool)

(assert (=> b!3187815 m!3446399))

(assert (=> d!871433 d!872495))

(declare-fun d!872497 () Bool)

(declare-fun c!535480 () Bool)

(assert (=> d!872497 (= c!535480 ((_ is Nil!35809) lt!1071493))))

(declare-fun e!1986377 () (InoxSet C!19976))

(assert (=> d!872497 (= (content!4850 lt!1071493) e!1986377)))

(declare-fun b!3187816 () Bool)

(assert (=> b!3187816 (= e!1986377 ((as const (Array C!19976 Bool)) false))))

(declare-fun b!3187817 () Bool)

(assert (=> b!3187817 (= e!1986377 ((_ map or) (store ((as const (Array C!19976 Bool)) false) (h!41229 lt!1071493) true) (content!4850 (t!235526 lt!1071493))))))

(assert (= (and d!872497 c!535480) b!3187816))

(assert (= (and d!872497 (not c!535480)) b!3187817))

(declare-fun m!3446401 () Bool)

(assert (=> b!3187817 m!3446401))

(assert (=> b!3187817 m!3444835))

(assert (=> d!871433 d!872497))

(declare-fun d!872499 () Bool)

(declare-fun c!535481 () Bool)

(assert (=> d!872499 (= c!535481 ((_ is Nil!35809) lt!1071487))))

(declare-fun e!1986378 () (InoxSet C!19976))

(assert (=> d!872499 (= (content!4850 lt!1071487) e!1986378)))

(declare-fun b!3187818 () Bool)

(assert (=> b!3187818 (= e!1986378 ((as const (Array C!19976 Bool)) false))))

(declare-fun b!3187819 () Bool)

(assert (=> b!3187819 (= e!1986378 ((_ map or) (store ((as const (Array C!19976 Bool)) false) (h!41229 lt!1071487) true) (content!4850 (t!235526 lt!1071487))))))

(assert (= (and d!872499 c!535481) b!3187818))

(assert (= (and d!872499 (not c!535481)) b!3187819))

(declare-fun m!3446403 () Bool)

(assert (=> b!3187819 m!3446403))

(declare-fun m!3446405 () Bool)

(assert (=> b!3187819 m!3446405))

(assert (=> d!871433 d!872499))

(assert (=> b!3185883 d!871579))

(assert (=> b!3186131 d!871869))

(assert (=> b!3186131 d!871561))

(declare-fun d!872501 () Bool)

(assert (=> d!872501 (= (list!12713 lt!1071665) (list!12717 (c!534901 lt!1071665)))))

(declare-fun bs!540236 () Bool)

(assert (= bs!540236 d!872501))

(declare-fun m!3446407 () Bool)

(assert (=> bs!540236 m!3446407))

(assert (=> d!871477 d!872501))

(declare-fun d!872503 () Bool)

(assert (=> d!872503 (= (dropList!1062 lt!1071475 0) (drop!1845 (list!12720 (c!534902 lt!1071475)) 0))))

(declare-fun bs!540237 () Bool)

(assert (= bs!540237 d!872503))

(assert (=> bs!540237 m!3443917))

(assert (=> bs!540237 m!3443917))

(declare-fun m!3446409 () Bool)

(assert (=> bs!540237 m!3446409))

(assert (=> d!871477 d!872503))

(assert (=> d!871477 d!872139))

(declare-fun d!872505 () Bool)

(assert (=> d!872505 (= (list!12713 (BalanceConc!20909 Empty!10647)) (list!12717 (c!534901 (BalanceConc!20909 Empty!10647))))))

(declare-fun bs!540238 () Bool)

(assert (= bs!540238 d!872505))

(declare-fun m!3446411 () Bool)

(assert (=> bs!540238 m!3446411))

(assert (=> d!871477 d!872505))

(declare-fun d!872507 () Bool)

(declare-fun lt!1072637 () List!35933)

(assert (=> d!872507 (= lt!1072637 (++!8566 (list!12713 (BalanceConc!20909 Empty!10647)) (printList!1279 thiss!18206 (dropList!1062 lt!1071475 0))))))

(declare-fun e!1986381 () List!35933)

(assert (=> d!872507 (= lt!1072637 e!1986381)))

(declare-fun c!535484 () Bool)

(assert (=> d!872507 (= c!535484 ((_ is Cons!35810) (dropList!1062 lt!1071475 0)))))

(assert (=> d!872507 (= (printListTailRec!545 thiss!18206 (dropList!1062 lt!1071475 0) (list!12713 (BalanceConc!20909 Empty!10647))) lt!1072637)))

(declare-fun b!3187824 () Bool)

(assert (=> b!3187824 (= e!1986381 (printListTailRec!545 thiss!18206 (t!235527 (dropList!1062 lt!1071475 0)) (++!8566 (list!12713 (BalanceConc!20909 Empty!10647)) (list!12713 (charsOf!3158 (h!41230 (dropList!1062 lt!1071475 0)))))))))

(declare-fun lt!1072633 () List!35933)

(assert (=> b!3187824 (= lt!1072633 (list!12713 (charsOf!3158 (h!41230 (dropList!1062 lt!1071475 0)))))))

(declare-fun lt!1072634 () List!35933)

(assert (=> b!3187824 (= lt!1072634 (printList!1279 thiss!18206 (t!235527 (dropList!1062 lt!1071475 0))))))

(declare-fun lt!1072635 () Unit!50220)

(assert (=> b!3187824 (= lt!1072635 (lemmaConcatAssociativity!1688 (list!12713 (BalanceConc!20909 Empty!10647)) lt!1072633 lt!1072634))))

(assert (=> b!3187824 (= (++!8566 (++!8566 (list!12713 (BalanceConc!20909 Empty!10647)) lt!1072633) lt!1072634) (++!8566 (list!12713 (BalanceConc!20909 Empty!10647)) (++!8566 lt!1072633 lt!1072634)))))

(declare-fun lt!1072636 () Unit!50220)

(assert (=> b!3187824 (= lt!1072636 lt!1072635)))

(declare-fun b!3187825 () Bool)

(assert (=> b!3187825 (= e!1986381 (list!12713 (BalanceConc!20909 Empty!10647)))))

(assert (= (and d!872507 c!535484) b!3187824))

(assert (= (and d!872507 (not c!535484)) b!3187825))

(assert (=> d!872507 m!3443263))

(declare-fun m!3446413 () Bool)

(assert (=> d!872507 m!3446413))

(assert (=> d!872507 m!3443257))

(assert (=> d!872507 m!3446413))

(declare-fun m!3446415 () Bool)

(assert (=> d!872507 m!3446415))

(assert (=> b!3187824 m!3443257))

(declare-fun m!3446417 () Bool)

(assert (=> b!3187824 m!3446417))

(declare-fun m!3446419 () Bool)

(assert (=> b!3187824 m!3446419))

(declare-fun m!3446421 () Bool)

(assert (=> b!3187824 m!3446421))

(declare-fun m!3446423 () Bool)

(assert (=> b!3187824 m!3446423))

(assert (=> b!3187824 m!3446419))

(declare-fun m!3446425 () Bool)

(assert (=> b!3187824 m!3446425))

(declare-fun m!3446427 () Bool)

(assert (=> b!3187824 m!3446427))

(declare-fun m!3446429 () Bool)

(assert (=> b!3187824 m!3446429))

(assert (=> b!3187824 m!3443257))

(declare-fun m!3446431 () Bool)

(assert (=> b!3187824 m!3446431))

(assert (=> b!3187824 m!3446427))

(assert (=> b!3187824 m!3446417))

(assert (=> b!3187824 m!3443257))

(assert (=> b!3187824 m!3446421))

(declare-fun m!3446433 () Bool)

(assert (=> b!3187824 m!3446433))

(assert (=> b!3187824 m!3443257))

(assert (=> b!3187824 m!3446429))

(declare-fun m!3446435 () Bool)

(assert (=> b!3187824 m!3446435))

(assert (=> d!871477 d!872507))

(declare-fun d!872509 () Bool)

(declare-fun res!1296118 () Bool)

(declare-fun e!1986382 () Bool)

(assert (=> d!872509 (=> res!1296118 e!1986382)))

(assert (=> d!872509 (= res!1296118 ((_ is Nil!35810) (list!12715 lt!1071489)))))

(assert (=> d!872509 (= (forall!7258 (list!12715 lt!1071489) lambda!116534) e!1986382)))

(declare-fun b!3187826 () Bool)

(declare-fun e!1986383 () Bool)

(assert (=> b!3187826 (= e!1986382 e!1986383)))

(declare-fun res!1296119 () Bool)

(assert (=> b!3187826 (=> (not res!1296119) (not e!1986383))))

(assert (=> b!3187826 (= res!1296119 (dynLambda!14456 lambda!116534 (h!41230 (list!12715 lt!1071489))))))

(declare-fun b!3187827 () Bool)

(assert (=> b!3187827 (= e!1986383 (forall!7258 (t!235527 (list!12715 lt!1071489)) lambda!116534))))

(assert (= (and d!872509 (not res!1296118)) b!3187826))

(assert (= (and b!3187826 res!1296119) b!3187827))

(declare-fun b_lambda!86961 () Bool)

(assert (=> (not b_lambda!86961) (not b!3187826)))

(declare-fun m!3446437 () Bool)

(assert (=> b!3187826 m!3446437))

(declare-fun m!3446439 () Bool)

(assert (=> b!3187827 m!3446439))

(assert (=> d!871341 d!872509))

(assert (=> d!871341 d!872329))

(declare-fun d!872511 () Bool)

(declare-fun lt!1072640 () Bool)

(assert (=> d!872511 (= lt!1072640 (forall!7258 (list!12715 lt!1071489) lambda!116534))))

(declare-fun forall!7264 (Conc!10648 Int) Bool)

(assert (=> d!872511 (= lt!1072640 (forall!7264 (c!534902 lt!1071489) lambda!116534))))

(assert (=> d!872511 (= (forall!7259 lt!1071489 lambda!116534) lt!1072640)))

(declare-fun bs!540239 () Bool)

(assert (= bs!540239 d!872511))

(assert (=> bs!540239 m!3443049))

(assert (=> bs!540239 m!3443049))

(assert (=> bs!540239 m!3443051))

(declare-fun m!3446441 () Bool)

(assert (=> bs!540239 m!3446441))

(assert (=> d!871341 d!872511))

(assert (=> d!871341 d!871447))

(assert (=> b!3186073 d!872403))

(assert (=> b!3185678 d!872021))

(assert (=> b!3185678 d!872023))

(assert (=> b!3185678 d!871825))

(declare-fun b!3187836 () Bool)

(declare-fun tp!1007703 () Bool)

(declare-fun tp!1007704 () Bool)

(declare-fun e!1986389 () Bool)

(assert (=> b!3187836 (= e!1986389 (and (inv!48663 (left!27849 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (value!166836 (h!41230 tokens!494)))))) tp!1007703 (inv!48663 (right!28179 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (value!166836 (h!41230 tokens!494)))))) tp!1007704))))

(declare-fun b!3187838 () Bool)

(declare-fun e!1986388 () Bool)

(declare-fun tp!1007702 () Bool)

(assert (=> b!3187838 (= e!1986388 tp!1007702)))

(declare-fun b!3187837 () Bool)

(declare-fun inv!48669 (IArray!21299) Bool)

(assert (=> b!3187837 (= e!1986389 (and (inv!48669 (xs!13765 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (value!166836 (h!41230 tokens!494)))))) e!1986388))))

(assert (=> b!3185827 (= tp!1007460 (and (inv!48663 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (value!166836 (h!41230 tokens!494))))) e!1986389))))

(assert (= (and b!3185827 ((_ is Node!10647) (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (value!166836 (h!41230 tokens!494)))))) b!3187836))

(assert (= b!3187837 b!3187838))

(assert (= (and b!3185827 ((_ is Leaf!16826) (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (value!166836 (h!41230 tokens!494)))))) b!3187837))

(declare-fun m!3446443 () Bool)

(assert (=> b!3187836 m!3446443))

(declare-fun m!3446445 () Bool)

(assert (=> b!3187836 m!3446445))

(declare-fun m!3446447 () Bool)

(assert (=> b!3187837 m!3446447))

(assert (=> b!3185827 m!3443297))

(declare-fun b!3187839 () Bool)

(declare-fun e!1986390 () Bool)

(declare-fun tp!1007705 () Bool)

(assert (=> b!3187839 (= e!1986390 (and tp_is_empty!17265 tp!1007705))))

(assert (=> b!3186154 (= tp!1007539 e!1986390)))

(assert (= (and b!3186154 ((_ is Cons!35809) (t!235526 (originalCharacters!5850 (h!41230 tokens!494))))) b!3187839))

(declare-fun b!3187842 () Bool)

(declare-fun e!1986393 () Bool)

(assert (=> b!3187842 (= e!1986393 true)))

(declare-fun b!3187841 () Bool)

(declare-fun e!1986392 () Bool)

(assert (=> b!3187841 (= e!1986392 e!1986393)))

(declare-fun b!3187840 () Bool)

(declare-fun e!1986391 () Bool)

(assert (=> b!3187840 (= e!1986391 e!1986392)))

(assert (=> b!3185621 e!1986391))

(assert (= b!3187841 b!3187842))

(assert (= b!3187840 b!3187841))

(assert (= (and b!3185621 ((_ is Cons!35811) (t!235528 rules!2135))) b!3187840))

(assert (=> b!3187842 (< (dynLambda!14448 order!18239 (toValue!7196 (transformation!5136 (h!41231 (t!235528 rules!2135))))) (dynLambda!14449 order!18241 lambda!116534))))

(assert (=> b!3187842 (< (dynLambda!14450 order!18243 (toChars!7055 (transformation!5136 (h!41231 (t!235528 rules!2135))))) (dynLambda!14449 order!18241 lambda!116534))))

(declare-fun b!3187844 () Bool)

(declare-fun e!1986394 () Bool)

(declare-fun tp!1007708 () Bool)

(declare-fun tp!1007707 () Bool)

(assert (=> b!3187844 (= e!1986394 (and tp!1007708 tp!1007707))))

(declare-fun b!3187845 () Bool)

(declare-fun tp!1007706 () Bool)

(assert (=> b!3187845 (= e!1986394 tp!1007706)))

(assert (=> b!3186149 (= tp!1007535 e!1986394)))

(declare-fun b!3187843 () Bool)

(assert (=> b!3187843 (= e!1986394 tp_is_empty!17265)))

(declare-fun b!3187846 () Bool)

(declare-fun tp!1007709 () Bool)

(declare-fun tp!1007710 () Bool)

(assert (=> b!3187846 (= e!1986394 (and tp!1007709 tp!1007710))))

(assert (= (and b!3186149 ((_ is ElementMatch!9895) (regOne!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) b!3187843))

(assert (= (and b!3186149 ((_ is Concat!15261) (regOne!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) b!3187844))

(assert (= (and b!3186149 ((_ is Star!9895) (regOne!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) b!3187845))

(assert (= (and b!3186149 ((_ is Union!9895) (regOne!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) b!3187846))

(declare-fun b!3187848 () Bool)

(declare-fun e!1986395 () Bool)

(declare-fun tp!1007713 () Bool)

(declare-fun tp!1007712 () Bool)

(assert (=> b!3187848 (= e!1986395 (and tp!1007713 tp!1007712))))

(declare-fun b!3187849 () Bool)

(declare-fun tp!1007711 () Bool)

(assert (=> b!3187849 (= e!1986395 tp!1007711)))

(assert (=> b!3186149 (= tp!1007536 e!1986395)))

(declare-fun b!3187847 () Bool)

(assert (=> b!3187847 (= e!1986395 tp_is_empty!17265)))

(declare-fun b!3187850 () Bool)

(declare-fun tp!1007714 () Bool)

(declare-fun tp!1007715 () Bool)

(assert (=> b!3187850 (= e!1986395 (and tp!1007714 tp!1007715))))

(assert (= (and b!3186149 ((_ is ElementMatch!9895) (regTwo!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) b!3187847))

(assert (= (and b!3186149 ((_ is Concat!15261) (regTwo!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) b!3187848))

(assert (= (and b!3186149 ((_ is Star!9895) (regTwo!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) b!3187849))

(assert (= (and b!3186149 ((_ is Union!9895) (regTwo!20303 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) b!3187850))

(declare-fun b!3187851 () Bool)

(declare-fun e!1986396 () Bool)

(declare-fun tp!1007716 () Bool)

(assert (=> b!3187851 (= e!1986396 (and tp_is_empty!17265 tp!1007716))))

(assert (=> b!3186166 (= tp!1007554 e!1986396)))

(assert (= (and b!3186166 ((_ is Cons!35809) (originalCharacters!5850 (h!41230 (t!235527 tokens!494))))) b!3187851))

(declare-fun b!3187853 () Bool)

(declare-fun e!1986397 () Bool)

(declare-fun tp!1007719 () Bool)

(declare-fun tp!1007718 () Bool)

(assert (=> b!3187853 (= e!1986397 (and tp!1007719 tp!1007718))))

(declare-fun b!3187854 () Bool)

(declare-fun tp!1007717 () Bool)

(assert (=> b!3187854 (= e!1986397 tp!1007717)))

(assert (=> b!3186148 (= tp!1007532 e!1986397)))

(declare-fun b!3187852 () Bool)

(assert (=> b!3187852 (= e!1986397 tp_is_empty!17265)))

(declare-fun b!3187855 () Bool)

(declare-fun tp!1007720 () Bool)

(declare-fun tp!1007721 () Bool)

(assert (=> b!3187855 (= e!1986397 (and tp!1007720 tp!1007721))))

(assert (= (and b!3186148 ((_ is ElementMatch!9895) (reg!10224 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) b!3187852))

(assert (= (and b!3186148 ((_ is Concat!15261) (reg!10224 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) b!3187853))

(assert (= (and b!3186148 ((_ is Star!9895) (reg!10224 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) b!3187854))

(assert (= (and b!3186148 ((_ is Union!9895) (reg!10224 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) b!3187855))

(declare-fun b!3187859 () Bool)

(declare-fun b_free!84157 () Bool)

(declare-fun b_next!84861 () Bool)

(assert (=> b!3187859 (= b_free!84157 (not b_next!84861))))

(declare-fun tb!155815 () Bool)

(declare-fun t!235920 () Bool)

(assert (=> (and b!3187859 (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 (t!235527 (t!235527 tokens!494)))))) (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628)))))) t!235920) tb!155815))

(declare-fun result!197976 () Bool)

(assert (= result!197976 result!197964))

(assert (=> d!872489 t!235920))

(declare-fun t!235922 () Bool)

(declare-fun tb!155817 () Bool)

(assert (=> (and b!3187859 (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 (t!235527 (t!235527 tokens!494)))))) (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071771)))))) t!235922) tb!155817))

(declare-fun result!197978 () Bool)

(assert (= result!197978 result!197752))

(assert (=> d!871861 t!235922))

(declare-fun t!235924 () Bool)

(declare-fun tb!155819 () Bool)

(assert (=> (and b!3187859 (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 (t!235527 (t!235527 tokens!494)))))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235924) tb!155819))

(declare-fun result!197980 () Bool)

(assert (= result!197980 result!197712))

(assert (=> d!871757 t!235924))

(declare-fun t!235926 () Bool)

(declare-fun tb!155821 () Bool)

(assert (=> (and b!3187859 (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 (t!235527 (t!235527 tokens!494)))))) (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621)))))) t!235926) tb!155821))

(declare-fun result!197982 () Bool)

(assert (= result!197982 result!197732))

(assert (=> d!871827 t!235926))

(declare-fun t!235928 () Bool)

(declare-fun tb!155823 () Bool)

(assert (=> (and b!3187859 (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 (t!235527 (t!235527 tokens!494)))))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235928) tb!155823))

(declare-fun result!197984 () Bool)

(assert (= result!197984 result!197792))

(assert (=> d!871987 t!235928))

(declare-fun t!235930 () Bool)

(declare-fun tb!155825 () Bool)

(assert (=> (and b!3187859 (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 (t!235527 (t!235527 tokens!494)))))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235930) tb!155825))

(declare-fun result!197986 () Bool)

(assert (= result!197986 result!197644))

(assert (=> d!871583 t!235930))

(assert (=> d!871753 t!235924))

(declare-fun b_and!211107 () Bool)

(declare-fun tp!1007724 () Bool)

(assert (=> b!3187859 (= tp!1007724 (and (=> t!235922 result!197978) (=> t!235924 result!197980) (=> t!235926 result!197982) (=> t!235930 result!197986) (=> t!235928 result!197984) (=> t!235920 result!197976) b_and!211107))))

(declare-fun b_free!84159 () Bool)

(declare-fun b_next!84863 () Bool)

(assert (=> b!3187859 (= b_free!84159 (not b_next!84863))))

(declare-fun tb!155827 () Bool)

(declare-fun t!235932 () Bool)

(assert (=> (and b!3187859 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 (t!235527 tokens!494)))))) (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628)))))) t!235932) tb!155827))

(declare-fun result!197988 () Bool)

(assert (= result!197988 result!197782))

(assert (=> d!871959 t!235932))

(declare-fun tb!155829 () Bool)

(declare-fun t!235934 () Bool)

(assert (=> (and b!3187859 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 (t!235527 tokens!494)))))) (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241)))) t!235934) tb!155829))

(declare-fun result!197990 () Bool)

(assert (= result!197990 result!197610))

(assert (=> d!871439 t!235934))

(declare-fun t!235936 () Bool)

(declare-fun tb!155831 () Bool)

(assert (=> (and b!3187859 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 (t!235527 tokens!494)))))) (toChars!7055 (transformation!5136 (rule!7558 (apply!8067 lt!1071475 0))))) t!235936) tb!155831))

(declare-fun result!197992 () Bool)

(assert (= result!197992 result!197702))

(assert (=> d!871685 t!235936))

(declare-fun t!235938 () Bool)

(declare-fun tb!155833 () Bool)

(assert (=> (and b!3187859 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 (t!235527 tokens!494)))))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (Cons!35810 (h!41230 tokens!494) Nil!35810)))))) t!235938) tb!155833))

(declare-fun result!197994 () Bool)

(assert (= result!197994 result!197954))

(assert (=> d!872477 t!235938))

(declare-fun t!235940 () Bool)

(declare-fun tb!155835 () Bool)

(assert (=> (and b!3187859 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 (t!235527 tokens!494)))))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235940) tb!155835))

(declare-fun result!197996 () Bool)

(assert (= result!197996 result!197618))

(assert (=> b!3185825 t!235940))

(assert (=> b!3185823 t!235934))

(assert (=> d!871519 t!235940))

(declare-fun t!235942 () Bool)

(declare-fun tb!155837 () Bool)

(assert (=> (and b!3187859 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 (t!235527 tokens!494)))))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235942) tb!155837))

(declare-fun result!197998 () Bool)

(assert (= result!197998 result!197722))

(assert (=> d!871757 t!235942))

(declare-fun t!235944 () Bool)

(declare-fun tb!155839 () Bool)

(assert (=> (and b!3187859 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 (t!235527 tokens!494)))))) (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621)))))) t!235944) tb!155839))

(declare-fun result!198000 () Bool)

(assert (= result!198000 result!197802))

(assert (=> d!872023 t!235944))

(declare-fun t!235946 () Bool)

(declare-fun tb!155841 () Bool)

(assert (=> (and b!3187859 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 (t!235527 tokens!494)))))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494)))))) t!235946) tb!155841))

(declare-fun result!198002 () Bool)

(assert (= result!198002 result!197832))

(assert (=> b!3187273 t!235946))

(declare-fun tb!155843 () Bool)

(declare-fun t!235948 () Bool)

(assert (=> (and b!3187859 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 (t!235527 tokens!494)))))) (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071771)))))) t!235948) tb!155843))

(declare-fun result!198004 () Bool)

(assert (= result!198004 result!197944))

(assert (=> d!872429 t!235948))

(declare-fun tp!1007725 () Bool)

(declare-fun b_and!211109 () Bool)

(assert (=> b!3187859 (= tp!1007725 (and (=> t!235946 result!198002) (=> t!235944 result!198000) (=> t!235942 result!197998) (=> t!235938 result!197994) (=> t!235936 result!197992) (=> t!235940 result!197996) (=> t!235932 result!197988) (=> t!235948 result!198004) (=> t!235934 result!197990) b_and!211109))))

(declare-fun e!1986402 () Bool)

(assert (=> b!3187859 (= e!1986402 (and tp!1007724 tp!1007725))))

(declare-fun b!3187857 () Bool)

(declare-fun e!1986401 () Bool)

(declare-fun e!1986399 () Bool)

(declare-fun tp!1007726 () Bool)

(assert (=> b!3187857 (= e!1986399 (and (inv!21 (value!166836 (h!41230 (t!235527 (t!235527 tokens!494))))) e!1986401 tp!1007726))))

(declare-fun e!1986400 () Bool)

(assert (=> b!3186165 (= tp!1007551 e!1986400)))

(declare-fun b!3187858 () Bool)

(declare-fun tp!1007722 () Bool)

(assert (=> b!3187858 (= e!1986401 (and tp!1007722 (inv!48656 (tag!5650 (rule!7558 (h!41230 (t!235527 (t!235527 tokens!494)))))) (inv!48660 (transformation!5136 (rule!7558 (h!41230 (t!235527 (t!235527 tokens!494)))))) e!1986402))))

(declare-fun b!3187856 () Bool)

(declare-fun tp!1007723 () Bool)

(assert (=> b!3187856 (= e!1986400 (and (inv!48659 (h!41230 (t!235527 (t!235527 tokens!494)))) e!1986399 tp!1007723))))

(assert (= b!3187858 b!3187859))

(assert (= b!3187857 b!3187858))

(assert (= b!3187856 b!3187857))

(assert (= (and b!3186165 ((_ is Cons!35810) (t!235527 (t!235527 tokens!494)))) b!3187856))

(declare-fun m!3446449 () Bool)

(assert (=> b!3187857 m!3446449))

(declare-fun m!3446451 () Bool)

(assert (=> b!3187858 m!3446451))

(declare-fun m!3446453 () Bool)

(assert (=> b!3187858 m!3446453))

(declare-fun m!3446455 () Bool)

(assert (=> b!3187856 m!3446455))

(declare-fun b!3187861 () Bool)

(declare-fun e!1986404 () Bool)

(declare-fun tp!1007729 () Bool)

(declare-fun tp!1007728 () Bool)

(assert (=> b!3187861 (= e!1986404 (and tp!1007729 tp!1007728))))

(declare-fun b!3187862 () Bool)

(declare-fun tp!1007727 () Bool)

(assert (=> b!3187862 (= e!1986404 tp!1007727)))

(assert (=> b!3186167 (= tp!1007550 e!1986404)))

(declare-fun b!3187860 () Bool)

(assert (=> b!3187860 (= e!1986404 tp_is_empty!17265)))

(declare-fun b!3187863 () Bool)

(declare-fun tp!1007730 () Bool)

(declare-fun tp!1007731 () Bool)

(assert (=> b!3187863 (= e!1986404 (and tp!1007730 tp!1007731))))

(assert (= (and b!3186167 ((_ is ElementMatch!9895) (regex!5136 (rule!7558 (h!41230 (t!235527 tokens!494)))))) b!3187860))

(assert (= (and b!3186167 ((_ is Concat!15261) (regex!5136 (rule!7558 (h!41230 (t!235527 tokens!494)))))) b!3187861))

(assert (= (and b!3186167 ((_ is Star!9895) (regex!5136 (rule!7558 (h!41230 (t!235527 tokens!494)))))) b!3187862))

(assert (= (and b!3186167 ((_ is Union!9895) (regex!5136 (rule!7558 (h!41230 (t!235527 tokens!494)))))) b!3187863))

(declare-fun b!3187865 () Bool)

(declare-fun e!1986405 () Bool)

(declare-fun tp!1007734 () Bool)

(declare-fun tp!1007733 () Bool)

(assert (=> b!3187865 (= e!1986405 (and tp!1007734 tp!1007733))))

(declare-fun b!3187866 () Bool)

(declare-fun tp!1007732 () Bool)

(assert (=> b!3187866 (= e!1986405 tp!1007732)))

(assert (=> b!3186147 (= tp!1007534 e!1986405)))

(declare-fun b!3187864 () Bool)

(assert (=> b!3187864 (= e!1986405 tp_is_empty!17265)))

(declare-fun b!3187867 () Bool)

(declare-fun tp!1007735 () Bool)

(declare-fun tp!1007736 () Bool)

(assert (=> b!3187867 (= e!1986405 (and tp!1007735 tp!1007736))))

(assert (= (and b!3186147 ((_ is ElementMatch!9895) (regOne!20302 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) b!3187864))

(assert (= (and b!3186147 ((_ is Concat!15261) (regOne!20302 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) b!3187865))

(assert (= (and b!3186147 ((_ is Star!9895) (regOne!20302 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) b!3187866))

(assert (= (and b!3186147 ((_ is Union!9895) (regOne!20302 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) b!3187867))

(declare-fun b!3187869 () Bool)

(declare-fun e!1986406 () Bool)

(declare-fun tp!1007739 () Bool)

(declare-fun tp!1007738 () Bool)

(assert (=> b!3187869 (= e!1986406 (and tp!1007739 tp!1007738))))

(declare-fun b!3187870 () Bool)

(declare-fun tp!1007737 () Bool)

(assert (=> b!3187870 (= e!1986406 tp!1007737)))

(assert (=> b!3186147 (= tp!1007533 e!1986406)))

(declare-fun b!3187868 () Bool)

(assert (=> b!3187868 (= e!1986406 tp_is_empty!17265)))

(declare-fun b!3187871 () Bool)

(declare-fun tp!1007740 () Bool)

(declare-fun tp!1007741 () Bool)

(assert (=> b!3187871 (= e!1986406 (and tp!1007740 tp!1007741))))

(assert (= (and b!3186147 ((_ is ElementMatch!9895) (regTwo!20302 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) b!3187868))

(assert (= (and b!3186147 ((_ is Concat!15261) (regTwo!20302 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) b!3187869))

(assert (= (and b!3186147 ((_ is Star!9895) (regTwo!20302 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) b!3187870))

(assert (= (and b!3186147 ((_ is Union!9895) (regTwo!20302 (regex!5136 (rule!7558 (h!41230 tokens!494)))))) b!3187871))

(declare-fun b!3187873 () Bool)

(declare-fun e!1986407 () Bool)

(declare-fun tp!1007744 () Bool)

(declare-fun tp!1007743 () Bool)

(assert (=> b!3187873 (= e!1986407 (and tp!1007744 tp!1007743))))

(declare-fun b!3187874 () Bool)

(declare-fun tp!1007742 () Bool)

(assert (=> b!3187874 (= e!1986407 tp!1007742)))

(assert (=> b!3186170 (= tp!1007557 e!1986407)))

(declare-fun b!3187872 () Bool)

(assert (=> b!3187872 (= e!1986407 tp_is_empty!17265)))

(declare-fun b!3187875 () Bool)

(declare-fun tp!1007745 () Bool)

(declare-fun tp!1007746 () Bool)

(assert (=> b!3187875 (= e!1986407 (and tp!1007745 tp!1007746))))

(assert (= (and b!3186170 ((_ is ElementMatch!9895) (regOne!20302 (regex!5136 (rule!7558 separatorToken!241))))) b!3187872))

(assert (= (and b!3186170 ((_ is Concat!15261) (regOne!20302 (regex!5136 (rule!7558 separatorToken!241))))) b!3187873))

(assert (= (and b!3186170 ((_ is Star!9895) (regOne!20302 (regex!5136 (rule!7558 separatorToken!241))))) b!3187874))

(assert (= (and b!3186170 ((_ is Union!9895) (regOne!20302 (regex!5136 (rule!7558 separatorToken!241))))) b!3187875))

(declare-fun b!3187877 () Bool)

(declare-fun e!1986408 () Bool)

(declare-fun tp!1007749 () Bool)

(declare-fun tp!1007748 () Bool)

(assert (=> b!3187877 (= e!1986408 (and tp!1007749 tp!1007748))))

(declare-fun b!3187878 () Bool)

(declare-fun tp!1007747 () Bool)

(assert (=> b!3187878 (= e!1986408 tp!1007747)))

(assert (=> b!3186170 (= tp!1007556 e!1986408)))

(declare-fun b!3187876 () Bool)

(assert (=> b!3187876 (= e!1986408 tp_is_empty!17265)))

(declare-fun b!3187879 () Bool)

(declare-fun tp!1007750 () Bool)

(declare-fun tp!1007751 () Bool)

(assert (=> b!3187879 (= e!1986408 (and tp!1007750 tp!1007751))))

(assert (= (and b!3186170 ((_ is ElementMatch!9895) (regTwo!20302 (regex!5136 (rule!7558 separatorToken!241))))) b!3187876))

(assert (= (and b!3186170 ((_ is Concat!15261) (regTwo!20302 (regex!5136 (rule!7558 separatorToken!241))))) b!3187877))

(assert (= (and b!3186170 ((_ is Star!9895) (regTwo!20302 (regex!5136 (rule!7558 separatorToken!241))))) b!3187878))

(assert (= (and b!3186170 ((_ is Union!9895) (regTwo!20302 (regex!5136 (rule!7558 separatorToken!241))))) b!3187879))

(declare-fun b!3187882 () Bool)

(declare-fun b_free!84161 () Bool)

(declare-fun b_next!84865 () Bool)

(assert (=> b!3187882 (= b_free!84161 (not b_next!84865))))

(declare-fun t!235950 () Bool)

(declare-fun tb!155845 () Bool)

(assert (=> (and b!3187882 (= (toValue!7196 (transformation!5136 (h!41231 (t!235528 (t!235528 rules!2135))))) (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628)))))) t!235950) tb!155845))

(declare-fun result!198006 () Bool)

(assert (= result!198006 result!197964))

(assert (=> d!872489 t!235950))

(declare-fun t!235952 () Bool)

(declare-fun tb!155847 () Bool)

(assert (=> (and b!3187882 (= (toValue!7196 (transformation!5136 (h!41231 (t!235528 (t!235528 rules!2135))))) (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071771)))))) t!235952) tb!155847))

(declare-fun result!198008 () Bool)

(assert (= result!198008 result!197752))

(assert (=> d!871861 t!235952))

(declare-fun t!235954 () Bool)

(declare-fun tb!155849 () Bool)

(assert (=> (and b!3187882 (= (toValue!7196 (transformation!5136 (h!41231 (t!235528 (t!235528 rules!2135))))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235954) tb!155849))

(declare-fun result!198010 () Bool)

(assert (= result!198010 result!197712))

(assert (=> d!871757 t!235954))

(declare-fun t!235956 () Bool)

(declare-fun tb!155851 () Bool)

(assert (=> (and b!3187882 (= (toValue!7196 (transformation!5136 (h!41231 (t!235528 (t!235528 rules!2135))))) (toValue!7196 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621)))))) t!235956) tb!155851))

(declare-fun result!198012 () Bool)

(assert (= result!198012 result!197732))

(assert (=> d!871827 t!235956))

(declare-fun tb!155853 () Bool)

(declare-fun t!235958 () Bool)

(assert (=> (and b!3187882 (= (toValue!7196 (transformation!5136 (h!41231 (t!235528 (t!235528 rules!2135))))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235958) tb!155853))

(declare-fun result!198014 () Bool)

(assert (= result!198014 result!197792))

(assert (=> d!871987 t!235958))

(declare-fun t!235960 () Bool)

(declare-fun tb!155855 () Bool)

(assert (=> (and b!3187882 (= (toValue!7196 (transformation!5136 (h!41231 (t!235528 (t!235528 rules!2135))))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235960) tb!155855))

(declare-fun result!198016 () Bool)

(assert (= result!198016 result!197644))

(assert (=> d!871583 t!235960))

(assert (=> d!871753 t!235954))

(declare-fun tp!1007753 () Bool)

(declare-fun b_and!211111 () Bool)

(assert (=> b!3187882 (= tp!1007753 (and (=> t!235954 result!198010) (=> t!235950 result!198006) (=> t!235956 result!198012) (=> t!235958 result!198014) (=> t!235960 result!198016) (=> t!235952 result!198008) b_and!211111))))

(declare-fun b_free!84163 () Bool)

(declare-fun b_next!84867 () Bool)

(assert (=> b!3187882 (= b_free!84163 (not b_next!84867))))

(declare-fun tb!155857 () Bool)

(declare-fun t!235962 () Bool)

(assert (=> (and b!3187882 (= (toChars!7055 (transformation!5136 (h!41231 (t!235528 (t!235528 rules!2135))))) (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071628)))))) t!235962) tb!155857))

(declare-fun result!198018 () Bool)

(assert (= result!198018 result!197782))

(assert (=> d!871959 t!235962))

(declare-fun t!235964 () Bool)

(declare-fun tb!155859 () Bool)

(assert (=> (and b!3187882 (= (toChars!7055 (transformation!5136 (h!41231 (t!235528 (t!235528 rules!2135))))) (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241)))) t!235964) tb!155859))

(declare-fun result!198020 () Bool)

(assert (= result!198020 result!197610))

(assert (=> d!871439 t!235964))

(declare-fun t!235966 () Bool)

(declare-fun tb!155861 () Bool)

(assert (=> (and b!3187882 (= (toChars!7055 (transformation!5136 (h!41231 (t!235528 (t!235528 rules!2135))))) (toChars!7055 (transformation!5136 (rule!7558 (apply!8067 lt!1071475 0))))) t!235966) tb!155861))

(declare-fun result!198022 () Bool)

(assert (= result!198022 result!197702))

(assert (=> d!871685 t!235966))

(declare-fun t!235968 () Bool)

(declare-fun tb!155863 () Bool)

(assert (=> (and b!3187882 (= (toChars!7055 (transformation!5136 (h!41231 (t!235528 (t!235528 rules!2135))))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (Cons!35810 (h!41230 tokens!494) Nil!35810)))))) t!235968) tb!155863))

(declare-fun result!198024 () Bool)

(assert (= result!198024 result!197954))

(assert (=> d!872477 t!235968))

(declare-fun t!235970 () Bool)

(declare-fun tb!155865 () Bool)

(assert (=> (and b!3187882 (= (toChars!7055 (transformation!5136 (h!41231 (t!235528 (t!235528 rules!2135))))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235970) tb!155865))

(declare-fun result!198026 () Bool)

(assert (= result!198026 result!197618))

(assert (=> b!3185825 t!235970))

(assert (=> b!3185823 t!235964))

(assert (=> d!871519 t!235970))

(declare-fun tb!155867 () Bool)

(declare-fun t!235972 () Bool)

(assert (=> (and b!3187882 (= (toChars!7055 (transformation!5136 (h!41231 (t!235528 (t!235528 rules!2135))))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494))))) t!235972) tb!155867))

(declare-fun result!198028 () Bool)

(assert (= result!198028 result!197722))

(assert (=> d!871757 t!235972))

(declare-fun tb!155869 () Bool)

(declare-fun t!235974 () Bool)

(assert (=> (and b!3187882 (= (toChars!7055 (transformation!5136 (h!41231 (t!235528 (t!235528 rules!2135))))) (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071621)))))) t!235974) tb!155869))

(declare-fun result!198030 () Bool)

(assert (= result!198030 result!197802))

(assert (=> d!872023 t!235974))

(declare-fun t!235976 () Bool)

(declare-fun tb!155871 () Bool)

(assert (=> (and b!3187882 (= (toChars!7055 (transformation!5136 (h!41231 (t!235528 (t!235528 rules!2135))))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494)))))) t!235976) tb!155871))

(declare-fun result!198032 () Bool)

(assert (= result!198032 result!197832))

(assert (=> b!3187273 t!235976))

(declare-fun tb!155873 () Bool)

(declare-fun t!235978 () Bool)

(assert (=> (and b!3187882 (= (toChars!7055 (transformation!5136 (h!41231 (t!235528 (t!235528 rules!2135))))) (toChars!7055 (transformation!5136 (rule!7558 (_1!20718 (get!11399 lt!1071771)))))) t!235978) tb!155873))

(declare-fun result!198034 () Bool)

(assert (= result!198034 result!197944))

(assert (=> d!872429 t!235978))

(declare-fun b_and!211113 () Bool)

(declare-fun tp!1007754 () Bool)

(assert (=> b!3187882 (= tp!1007754 (and (=> t!235970 result!198026) (=> t!235972 result!198028) (=> t!235966 result!198022) (=> t!235968 result!198024) (=> t!235974 result!198030) (=> t!235964 result!198020) (=> t!235962 result!198018) (=> t!235978 result!198034) (=> t!235976 result!198032) b_and!211113))))

(declare-fun e!1986411 () Bool)

(assert (=> b!3187882 (= e!1986411 (and tp!1007753 tp!1007754))))

(declare-fun b!3187881 () Bool)

(declare-fun e!1986412 () Bool)

(declare-fun tp!1007752 () Bool)

(assert (=> b!3187881 (= e!1986412 (and tp!1007752 (inv!48656 (tag!5650 (h!41231 (t!235528 (t!235528 rules!2135))))) (inv!48660 (transformation!5136 (h!41231 (t!235528 (t!235528 rules!2135))))) e!1986411))))

(declare-fun b!3187880 () Bool)

(declare-fun e!1986409 () Bool)

(declare-fun tp!1007755 () Bool)

(assert (=> b!3187880 (= e!1986409 (and e!1986412 tp!1007755))))

(assert (=> b!3186182 (= tp!1007572 e!1986409)))

(assert (= b!3187881 b!3187882))

(assert (= b!3187880 b!3187881))

(assert (= (and b!3186182 ((_ is Cons!35811) (t!235528 (t!235528 rules!2135)))) b!3187880))

(declare-fun m!3446457 () Bool)

(assert (=> b!3187881 m!3446457))

(declare-fun m!3446459 () Bool)

(assert (=> b!3187881 m!3446459))

(declare-fun b!3187884 () Bool)

(declare-fun e!1986413 () Bool)

(declare-fun tp!1007758 () Bool)

(declare-fun tp!1007757 () Bool)

(assert (=> b!3187884 (= e!1986413 (and tp!1007758 tp!1007757))))

(declare-fun b!3187885 () Bool)

(declare-fun tp!1007756 () Bool)

(assert (=> b!3187885 (= e!1986413 tp!1007756)))

(assert (=> b!3186171 (= tp!1007555 e!1986413)))

(declare-fun b!3187883 () Bool)

(assert (=> b!3187883 (= e!1986413 tp_is_empty!17265)))

(declare-fun b!3187886 () Bool)

(declare-fun tp!1007759 () Bool)

(declare-fun tp!1007760 () Bool)

(assert (=> b!3187886 (= e!1986413 (and tp!1007759 tp!1007760))))

(assert (= (and b!3186171 ((_ is ElementMatch!9895) (reg!10224 (regex!5136 (rule!7558 separatorToken!241))))) b!3187883))

(assert (= (and b!3186171 ((_ is Concat!15261) (reg!10224 (regex!5136 (rule!7558 separatorToken!241))))) b!3187884))

(assert (= (and b!3186171 ((_ is Star!9895) (reg!10224 (regex!5136 (rule!7558 separatorToken!241))))) b!3187885))

(assert (= (and b!3186171 ((_ is Union!9895) (reg!10224 (regex!5136 (rule!7558 separatorToken!241))))) b!3187886))

(declare-fun b!3187888 () Bool)

(declare-fun e!1986414 () Bool)

(declare-fun tp!1007763 () Bool)

(declare-fun tp!1007762 () Bool)

(assert (=> b!3187888 (= e!1986414 (and tp!1007763 tp!1007762))))

(declare-fun b!3187889 () Bool)

(declare-fun tp!1007761 () Bool)

(assert (=> b!3187889 (= e!1986414 tp!1007761)))

(assert (=> b!3186183 (= tp!1007569 e!1986414)))

(declare-fun b!3187887 () Bool)

(assert (=> b!3187887 (= e!1986414 tp_is_empty!17265)))

(declare-fun b!3187890 () Bool)

(declare-fun tp!1007764 () Bool)

(declare-fun tp!1007765 () Bool)

(assert (=> b!3187890 (= e!1986414 (and tp!1007764 tp!1007765))))

(assert (= (and b!3186183 ((_ is ElementMatch!9895) (regex!5136 (h!41231 (t!235528 rules!2135))))) b!3187887))

(assert (= (and b!3186183 ((_ is Concat!15261) (regex!5136 (h!41231 (t!235528 rules!2135))))) b!3187888))

(assert (= (and b!3186183 ((_ is Star!9895) (regex!5136 (h!41231 (t!235528 rules!2135))))) b!3187889))

(assert (= (and b!3186183 ((_ is Union!9895) (regex!5136 (h!41231 (t!235528 rules!2135))))) b!3187890))

(declare-fun b!3187892 () Bool)

(declare-fun e!1986415 () Bool)

(declare-fun tp!1007768 () Bool)

(declare-fun tp!1007767 () Bool)

(assert (=> b!3187892 (= e!1986415 (and tp!1007768 tp!1007767))))

(declare-fun b!3187893 () Bool)

(declare-fun tp!1007766 () Bool)

(assert (=> b!3187893 (= e!1986415 tp!1007766)))

(assert (=> b!3186144 (= tp!1007527 e!1986415)))

(declare-fun b!3187891 () Bool)

(assert (=> b!3187891 (= e!1986415 tp_is_empty!17265)))

(declare-fun b!3187894 () Bool)

(declare-fun tp!1007769 () Bool)

(declare-fun tp!1007770 () Bool)

(assert (=> b!3187894 (= e!1986415 (and tp!1007769 tp!1007770))))

(assert (= (and b!3186144 ((_ is ElementMatch!9895) (reg!10224 (regex!5136 (h!41231 rules!2135))))) b!3187891))

(assert (= (and b!3186144 ((_ is Concat!15261) (reg!10224 (regex!5136 (h!41231 rules!2135))))) b!3187892))

(assert (= (and b!3186144 ((_ is Star!9895) (reg!10224 (regex!5136 (h!41231 rules!2135))))) b!3187893))

(assert (= (and b!3186144 ((_ is Union!9895) (reg!10224 (regex!5136 (h!41231 rules!2135))))) b!3187894))

(declare-fun b!3187895 () Bool)

(declare-fun e!1986416 () Bool)

(declare-fun tp!1007771 () Bool)

(assert (=> b!3187895 (= e!1986416 (and tp_is_empty!17265 tp!1007771))))

(assert (=> b!3186173 (= tp!1007560 e!1986416)))

(assert (= (and b!3186173 ((_ is Cons!35809) (t!235526 (originalCharacters!5850 separatorToken!241)))) b!3187895))

(declare-fun b!3187897 () Bool)

(declare-fun e!1986417 () Bool)

(declare-fun tp!1007774 () Bool)

(declare-fun tp!1007773 () Bool)

(assert (=> b!3187897 (= e!1986417 (and tp!1007774 tp!1007773))))

(declare-fun b!3187898 () Bool)

(declare-fun tp!1007772 () Bool)

(assert (=> b!3187898 (= e!1986417 tp!1007772)))

(assert (=> b!3186145 (= tp!1007530 e!1986417)))

(declare-fun b!3187896 () Bool)

(assert (=> b!3187896 (= e!1986417 tp_is_empty!17265)))

(declare-fun b!3187899 () Bool)

(declare-fun tp!1007775 () Bool)

(declare-fun tp!1007776 () Bool)

(assert (=> b!3187899 (= e!1986417 (and tp!1007775 tp!1007776))))

(assert (= (and b!3186145 ((_ is ElementMatch!9895) (regOne!20303 (regex!5136 (h!41231 rules!2135))))) b!3187896))

(assert (= (and b!3186145 ((_ is Concat!15261) (regOne!20303 (regex!5136 (h!41231 rules!2135))))) b!3187897))

(assert (= (and b!3186145 ((_ is Star!9895) (regOne!20303 (regex!5136 (h!41231 rules!2135))))) b!3187898))

(assert (= (and b!3186145 ((_ is Union!9895) (regOne!20303 (regex!5136 (h!41231 rules!2135))))) b!3187899))

(declare-fun b!3187901 () Bool)

(declare-fun e!1986418 () Bool)

(declare-fun tp!1007779 () Bool)

(declare-fun tp!1007778 () Bool)

(assert (=> b!3187901 (= e!1986418 (and tp!1007779 tp!1007778))))

(declare-fun b!3187902 () Bool)

(declare-fun tp!1007777 () Bool)

(assert (=> b!3187902 (= e!1986418 tp!1007777)))

(assert (=> b!3186145 (= tp!1007531 e!1986418)))

(declare-fun b!3187900 () Bool)

(assert (=> b!3187900 (= e!1986418 tp_is_empty!17265)))

(declare-fun b!3187903 () Bool)

(declare-fun tp!1007780 () Bool)

(declare-fun tp!1007781 () Bool)

(assert (=> b!3187903 (= e!1986418 (and tp!1007780 tp!1007781))))

(assert (= (and b!3186145 ((_ is ElementMatch!9895) (regTwo!20303 (regex!5136 (h!41231 rules!2135))))) b!3187900))

(assert (= (and b!3186145 ((_ is Concat!15261) (regTwo!20303 (regex!5136 (h!41231 rules!2135))))) b!3187901))

(assert (= (and b!3186145 ((_ is Star!9895) (regTwo!20303 (regex!5136 (h!41231 rules!2135))))) b!3187902))

(assert (= (and b!3186145 ((_ is Union!9895) (regTwo!20303 (regex!5136 (h!41231 rules!2135))))) b!3187903))

(declare-fun b!3187905 () Bool)

(declare-fun e!1986419 () Bool)

(declare-fun tp!1007784 () Bool)

(declare-fun tp!1007783 () Bool)

(assert (=> b!3187905 (= e!1986419 (and tp!1007784 tp!1007783))))

(declare-fun b!3187906 () Bool)

(declare-fun tp!1007782 () Bool)

(assert (=> b!3187906 (= e!1986419 tp!1007782)))

(assert (=> b!3186172 (= tp!1007558 e!1986419)))

(declare-fun b!3187904 () Bool)

(assert (=> b!3187904 (= e!1986419 tp_is_empty!17265)))

(declare-fun b!3187907 () Bool)

(declare-fun tp!1007785 () Bool)

(declare-fun tp!1007786 () Bool)

(assert (=> b!3187907 (= e!1986419 (and tp!1007785 tp!1007786))))

(assert (= (and b!3186172 ((_ is ElementMatch!9895) (regOne!20303 (regex!5136 (rule!7558 separatorToken!241))))) b!3187904))

(assert (= (and b!3186172 ((_ is Concat!15261) (regOne!20303 (regex!5136 (rule!7558 separatorToken!241))))) b!3187905))

(assert (= (and b!3186172 ((_ is Star!9895) (regOne!20303 (regex!5136 (rule!7558 separatorToken!241))))) b!3187906))

(assert (= (and b!3186172 ((_ is Union!9895) (regOne!20303 (regex!5136 (rule!7558 separatorToken!241))))) b!3187907))

(declare-fun b!3187909 () Bool)

(declare-fun e!1986420 () Bool)

(declare-fun tp!1007789 () Bool)

(declare-fun tp!1007788 () Bool)

(assert (=> b!3187909 (= e!1986420 (and tp!1007789 tp!1007788))))

(declare-fun b!3187910 () Bool)

(declare-fun tp!1007787 () Bool)

(assert (=> b!3187910 (= e!1986420 tp!1007787)))

(assert (=> b!3186172 (= tp!1007559 e!1986420)))

(declare-fun b!3187908 () Bool)

(assert (=> b!3187908 (= e!1986420 tp_is_empty!17265)))

(declare-fun b!3187911 () Bool)

(declare-fun tp!1007790 () Bool)

(declare-fun tp!1007791 () Bool)

(assert (=> b!3187911 (= e!1986420 (and tp!1007790 tp!1007791))))

(assert (= (and b!3186172 ((_ is ElementMatch!9895) (regTwo!20303 (regex!5136 (rule!7558 separatorToken!241))))) b!3187908))

(assert (= (and b!3186172 ((_ is Concat!15261) (regTwo!20303 (regex!5136 (rule!7558 separatorToken!241))))) b!3187909))

(assert (= (and b!3186172 ((_ is Star!9895) (regTwo!20303 (regex!5136 (rule!7558 separatorToken!241))))) b!3187910))

(assert (= (and b!3186172 ((_ is Union!9895) (regTwo!20303 (regex!5136 (rule!7558 separatorToken!241))))) b!3187911))

(declare-fun e!1986422 () Bool)

(declare-fun b!3187912 () Bool)

(declare-fun tp!1007793 () Bool)

(declare-fun tp!1007794 () Bool)

(assert (=> b!3187912 (= e!1986422 (and (inv!48663 (left!27849 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (value!166836 separatorToken!241))))) tp!1007793 (inv!48663 (right!28179 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (value!166836 separatorToken!241))))) tp!1007794))))

(declare-fun b!3187914 () Bool)

(declare-fun e!1986421 () Bool)

(declare-fun tp!1007792 () Bool)

(assert (=> b!3187914 (= e!1986421 tp!1007792)))

(declare-fun b!3187913 () Bool)

(assert (=> b!3187913 (= e!1986422 (and (inv!48669 (xs!13765 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (value!166836 separatorToken!241))))) e!1986421))))

(assert (=> b!3185708 (= tp!1007459 (and (inv!48663 (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (value!166836 separatorToken!241)))) e!1986422))))

(assert (= (and b!3185708 ((_ is Node!10647) (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (value!166836 separatorToken!241))))) b!3187912))

(assert (= b!3187913 b!3187914))

(assert (= (and b!3185708 ((_ is Leaf!16826) (c!534901 (dynLambda!14452 (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (value!166836 separatorToken!241))))) b!3187913))

(declare-fun m!3446461 () Bool)

(assert (=> b!3187912 m!3446461))

(declare-fun m!3446463 () Bool)

(assert (=> b!3187912 m!3446463))

(declare-fun m!3446465 () Bool)

(assert (=> b!3187913 m!3446465))

(assert (=> b!3185708 m!3443167))

(declare-fun b!3187916 () Bool)

(declare-fun e!1986423 () Bool)

(declare-fun tp!1007797 () Bool)

(declare-fun tp!1007796 () Bool)

(assert (=> b!3187916 (= e!1986423 (and tp!1007797 tp!1007796))))

(declare-fun b!3187917 () Bool)

(declare-fun tp!1007795 () Bool)

(assert (=> b!3187917 (= e!1986423 tp!1007795)))

(assert (=> b!3186143 (= tp!1007529 e!1986423)))

(declare-fun b!3187915 () Bool)

(assert (=> b!3187915 (= e!1986423 tp_is_empty!17265)))

(declare-fun b!3187918 () Bool)

(declare-fun tp!1007798 () Bool)

(declare-fun tp!1007799 () Bool)

(assert (=> b!3187918 (= e!1986423 (and tp!1007798 tp!1007799))))

(assert (= (and b!3186143 ((_ is ElementMatch!9895) (regOne!20302 (regex!5136 (h!41231 rules!2135))))) b!3187915))

(assert (= (and b!3186143 ((_ is Concat!15261) (regOne!20302 (regex!5136 (h!41231 rules!2135))))) b!3187916))

(assert (= (and b!3186143 ((_ is Star!9895) (regOne!20302 (regex!5136 (h!41231 rules!2135))))) b!3187917))

(assert (= (and b!3186143 ((_ is Union!9895) (regOne!20302 (regex!5136 (h!41231 rules!2135))))) b!3187918))

(declare-fun b!3187920 () Bool)

(declare-fun e!1986424 () Bool)

(declare-fun tp!1007802 () Bool)

(declare-fun tp!1007801 () Bool)

(assert (=> b!3187920 (= e!1986424 (and tp!1007802 tp!1007801))))

(declare-fun b!3187921 () Bool)

(declare-fun tp!1007800 () Bool)

(assert (=> b!3187921 (= e!1986424 tp!1007800)))

(assert (=> b!3186143 (= tp!1007528 e!1986424)))

(declare-fun b!3187919 () Bool)

(assert (=> b!3187919 (= e!1986424 tp_is_empty!17265)))

(declare-fun b!3187922 () Bool)

(declare-fun tp!1007803 () Bool)

(declare-fun tp!1007804 () Bool)

(assert (=> b!3187922 (= e!1986424 (and tp!1007803 tp!1007804))))

(assert (= (and b!3186143 ((_ is ElementMatch!9895) (regTwo!20302 (regex!5136 (h!41231 rules!2135))))) b!3187919))

(assert (= (and b!3186143 ((_ is Concat!15261) (regTwo!20302 (regex!5136 (h!41231 rules!2135))))) b!3187920))

(assert (= (and b!3186143 ((_ is Star!9895) (regTwo!20302 (regex!5136 (h!41231 rules!2135))))) b!3187921))

(assert (= (and b!3186143 ((_ is Union!9895) (regTwo!20302 (regex!5136 (h!41231 rules!2135))))) b!3187922))

(declare-fun b_lambda!86963 () Bool)

(assert (= b_lambda!86961 (or d!871341 b_lambda!86963)))

(declare-fun bs!540240 () Bool)

(declare-fun d!872513 () Bool)

(assert (= bs!540240 (and d!872513 d!871341)))

(assert (=> bs!540240 (= (dynLambda!14456 lambda!116534 (h!41230 (list!12715 lt!1071489))) (rulesProduceIndividualToken!2217 thiss!18206 rules!2135 (h!41230 (list!12715 lt!1071489))))))

(assert (=> bs!540240 m!3445833))

(assert (=> b!3187826 d!872513))

(declare-fun b_lambda!86965 () Bool)

(assert (= b_lambda!86925 (or (and b!3187882 b_free!84163 (= (toChars!7055 (transformation!5136 (h!41231 (t!235528 (t!235528 rules!2135))))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))))) (and b!3185353 b_free!84123 (= (toChars!7055 (transformation!5136 (h!41231 rules!2135))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))))) (and b!3186184 b_free!84147 (= (toChars!7055 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))))) (and b!3187859 b_free!84159 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 (t!235527 tokens!494)))))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))))) (and b!3185352 b_free!84131 (= (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))))) (and b!3186168 b_free!84143) (and b!3185354 b_free!84127 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))))) b_lambda!86965)))

(declare-fun b_lambda!86967 () Bool)

(assert (= b_lambda!86933 (or b!3185350 b_lambda!86967)))

(assert (=> d!872333 d!871587))

(declare-fun b_lambda!86969 () Bool)

(assert (= b_lambda!86893 (or (and b!3185354 b_free!84125) (and b!3185352 b_free!84129 (= (toValue!7196 (transformation!5136 (rule!7558 separatorToken!241))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3186184 b_free!84145 (= (toValue!7196 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3187882 b_free!84161 (= (toValue!7196 (transformation!5136 (h!41231 (t!235528 (t!235528 rules!2135))))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3186168 b_free!84141 (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3187859 b_free!84157 (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 (t!235527 (t!235527 tokens!494)))))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3185353 b_free!84121 (= (toValue!7196 (transformation!5136 (h!41231 rules!2135))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) b_lambda!86969)))

(declare-fun b_lambda!86971 () Bool)

(assert (= b_lambda!86917 (or (and b!3185354 b_free!84125) (and b!3185352 b_free!84129 (= (toValue!7196 (transformation!5136 (rule!7558 separatorToken!241))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3186184 b_free!84145 (= (toValue!7196 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3187882 b_free!84161 (= (toValue!7196 (transformation!5136 (h!41231 (t!235528 (t!235528 rules!2135))))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3186168 b_free!84141 (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3187859 b_free!84157 (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 (t!235527 (t!235527 tokens!494)))))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3185353 b_free!84121 (= (toValue!7196 (transformation!5136 (h!41231 rules!2135))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) b_lambda!86971)))

(declare-fun b_lambda!86973 () Bool)

(assert (= b_lambda!86935 (or b!3185350 b_lambda!86973)))

(declare-fun bs!540241 () Bool)

(declare-fun d!872515 () Bool)

(assert (= bs!540241 (and d!872515 b!3185350)))

(assert (=> bs!540241 (= (dynLambda!14456 lambda!116529 (h!41230 (t!235527 tokens!494))) (not (isSeparator!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))))))

(assert (=> b!3187479 d!872515))

(declare-fun b_lambda!86975 () Bool)

(assert (= b_lambda!86897 (or (and b!3185354 b_free!84125) (and b!3185352 b_free!84129 (= (toValue!7196 (transformation!5136 (rule!7558 separatorToken!241))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3186184 b_free!84145 (= (toValue!7196 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3187882 b_free!84161 (= (toValue!7196 (transformation!5136 (h!41231 (t!235528 (t!235528 rules!2135))))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3186168 b_free!84141 (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3187859 b_free!84157 (= (toValue!7196 (transformation!5136 (rule!7558 (h!41230 (t!235527 (t!235527 tokens!494)))))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3185353 b_free!84121 (= (toValue!7196 (transformation!5136 (h!41231 rules!2135))) (toValue!7196 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) b_lambda!86975)))

(declare-fun b_lambda!86977 () Bool)

(assert (= b_lambda!86895 (or (and b!3187859 b_free!84159 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 (t!235527 tokens!494)))))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3185354 b_free!84127) (and b!3185353 b_free!84123 (= (toChars!7055 (transformation!5136 (h!41231 rules!2135))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3186168 b_free!84143 (= (toChars!7055 (transformation!5136 (rule!7558 (h!41230 (t!235527 tokens!494))))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3187882 b_free!84163 (= (toChars!7055 (transformation!5136 (h!41231 (t!235528 (t!235528 rules!2135))))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3186184 b_free!84147 (= (toChars!7055 (transformation!5136 (h!41231 (t!235528 rules!2135)))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) (and b!3185352 b_free!84131 (= (toChars!7055 (transformation!5136 (rule!7558 separatorToken!241))) (toChars!7055 (transformation!5136 (rule!7558 (h!41230 tokens!494)))))) b_lambda!86977)))

(check-sat (not b_next!84849) (not d!872507) (not b!3187474) (not b!3187886) (not b!3187730) (not b!3187026) (not b!3187149) (not b!3186491) (not bs!540240) (not b!3187854) (not b!3187713) (not b!3187922) (not b!3187481) (not d!871821) (not b!3187827) (not b!3186955) (not d!872341) (not d!872401) (not b!3187770) (not b!3187274) (not b!3186305) (not b!3187022) (not b!3186970) (not bm!231271) (not b!3187158) (not b!3187154) (not b!3186737) (not d!872043) (not d!871715) (not bm!231249) (not b!3187150) (not b!3186739) (not b!3187717) (not b!3187911) (not d!872047) (not b!3186968) (not b!3187691) (not b!3186588) (not b!3186915) (not b!3186927) (not b!3186600) (not b!3187765) (not b_next!84833) (not b!3186522) (not d!872177) (not b!3186733) (not b!3186696) (not bm!231136) (not d!872025) (not b!3187909) (not d!872029) (not b!3186348) (not b!3187784) (not b_lambda!86969) (not b!3186985) (not d!872449) (not d!872139) (not b_lambda!86891) (not b!3186573) (not b!3187574) (not b!3187795) (not d!872147) (not d!872041) (not b!3186498) (not bm!231275) (not b!3187813) (not d!872463) (not b!3187141) (not b!3187856) (not d!871803) b_and!211111 (not d!872503) (not b!3187729) (not d!872161) (not d!872393) (not b!3187888) (not d!871701) (not b!3186291) (not b_lambda!86967) tp_is_empty!17265 (not b!3187761) (not b_lambda!86869) (not b!3186338) (not d!872441) (not d!872475) (not d!872143) (not b!3186986) (not b!3186368) (not bm!231218) (not d!872017) (not d!871975) (not b!3187151) (not b!3187060) (not d!871867) (not b!3187116) (not bm!231189) (not tb!155625) (not b!3187858) (not b!3186987) (not bm!231215) (not bm!231310) (not b!3186971) (not b!3186353) (not b!3187788) (not d!872003) (not b!3187688) (not d!871807) (not b!3187912) (not b_lambda!86873) (not b!3186962) (not d!871847) (not b!3186537) (not b!3187228) b_and!211103 (not d!871881) (not b!3187257) (not b!3187709) (not b!3187039) (not b_next!84863) (not b!3187894) (not b!3187808) (not b!3186302) (not b!3186334) (not b!3187040) (not b!3187892) (not b!3186630) (not d!872175) (not d!872405) b_and!211107 (not b!3186913) (not d!872391) (not b!3187849) (not bm!231272) (not bm!231138) (not d!871765) (not bm!231303) (not b!3187914) (not b!3186947) (not b!3187492) (not b!3186346) (not d!871969) (not b_next!84867) b_and!211093 (not d!872473) (not d!872107) (not b!3187226) (not b!3187114) (not d!872091) (not b!3186535) (not b!3186946) (not b!3187874) (not d!872453) (not b!3187031) (not b!3186318) (not b!3187160) b_and!211087 (not b!3187093) (not b!3187870) (not b!3187037) (not bm!231265) (not b!3187903) (not b!3186922) (not bm!231246) (not d!871997) (not b!3186683) (not b!3187162) (not b!3187223) (not d!871811) (not b!3186957) (not b!3187714) (not b!3186564) (not b!3186319) (not b!3187819) (not d!872123) (not b!3187918) (not b!3187692) (not d!871717) (not bm!231264) (not b!3187275) (not b!3186918) (not b!3187871) (not d!872089) (not d!872113) (not b!3186299) (not b!3186714) (not b!3186989) (not b!3185827) (not b!3186954) (not b!3186496) (not b!3187291) (not bm!231266) (not b!3187290) (not b!3186349) (not b!3187726) (not b!3187824) (not d!871743) (not b!3187292) (not b!3187244) (not b!3187044) (not b!3187030) (not b!3187855) (not b!3187476) b_and!211099 (not b!3187880) (not b_lambda!86973) (not tb!155675) (not b!3187217) (not d!871819) b_and!211101 (not tb!155645) (not b!3187052) (not d!872159) (not b!3187123) (not d!871959) (not d!871757) (not d!872049) (not d!872413) (not d!872435) (not bm!231203) (not b!3187288) (not bm!231306) (not b!3187586) (not b!3187475) (not d!871671) (not d!871673) (not b!3186586) (not b!3187066) (not b!3187152) (not d!872445) (not b!3187741) (not b!3187684) (not d!872505) (not d!872437) (not bm!231190) (not d!872487) (not b!3186320) (not b!3187899) (not d!872459) (not d!871709) (not b!3186940) (not d!872099) (not d!872465) (not bm!231184) (not b!3187893) (not b!3187238) (not d!872051) (not b!3187224) (not bm!231302) (not b!3187897) (not b!3187740) (not b!3187895) (not bm!231137) (not b!3187798) (not b!3186635) (not b!3187758) (not b!3187728) (not b!3187705) (not b!3186907) (not b!3187695) (not d!872483) (not b!3186385) (not b!3187791) (not d!872423) (not b_lambda!86977) (not d!871857) (not d!871699) (not b!3187211) (not b!3187681) (not b!3187790) (not bm!231247) (not b_next!84865) (not b!3187902) (not b!3187885) (not b!3186589) (not d!872431) (not b!3187594) (not d!872061) (not b!3185708) (not b!3186928) (not d!872425) (not d!872419) (not b!3186351) (not bm!231240) (not b_lambda!86975) (not bm!231242) (not b!3186536) (not d!872415) (not d!872477) (not b!3187721) (not b!3187220) (not b!3187240) (not b!3187906) (not d!872485) (not b!3187062) (not d!872417) (not b!3186929) (not b_lambda!86881) (not b!3187862) (not b!3186543) b_and!211109 (not b!3187143) (not b_lambda!86957) (not b!3187712) (not d!871863) (not b!3187783) (not d!871675) (not b!3187111) (not b!3186939) (not b!3187146) (not b!3186598) (not b!3187815) (not b!3186520) (not d!871781) (not d!872471) (not b!3187572) (not b_lambda!86971) (not d!872467) (not d!872455) (not b!3187273) (not b!3186703) (not bm!231301) (not b!3186916) (not b!3186489) (not b!3187706) (not d!872421) (not d!871865) (not b!3186735) (not b!3187853) (not b!3187901) (not b!3187115) (not d!872031) (not b!3187051) (not b!3187042) (not b!3187878) (not d!872469) (not b_next!84827) (not b_next!84829) (not bm!231204) (not b!3187792) (not tb!155565) (not b!3187889) (not b!3186295) b_and!211113 (not d!871789) (not d!871685) (not b!3187759) (not b_next!84847) (not d!872511) (not bm!231214) (not d!872163) (not d!871779) (not b!3186308) (not b_lambda!86955) (not b!3187046) (not b!3187837) (not b!3187723) (not tb!155805) (not d!872027) (not bm!231200) (not b!3187789) (not b!3186362) (not b_lambda!86877) (not d!872427) (not b!3187588) (not d!871697) (not d!872019) (not d!871695) (not d!871801) (not b_lambda!86903) (not d!872345) (not b!3187748) (not b!3187913) (not b!3187080) (not b!3187235) (not tb!155795) (not b_lambda!86959) (not bm!231201) (not b!3187237) (not b!3187861) (not b!3187687) (not b!3187794) (not bm!231309) (not b!3186626) (not b!3187081) (not b!3187787) (not d!871967) (not d!871809) (not b!3187921) (not d!871965) (not d!871877) (not d!872297) (not bm!231252) (not b!3186702) (not d!872501) (not bm!231191) (not b!3187680) (not b_next!84835) (not b!3187242) (not b!3186959) (not d!871977) b_and!211089 (not bm!231244) (not b!3187591) (not b!3186303) (not b!3186590) (not b!3187839) (not b!3187715) (not bm!231304) (not d!871985) (not d!871679) (not b!3187745) (not b!3187846) (not d!871693) (not b!3186367) (not d!872033) (not b!3187690) (not b!3186698) (not b!3187153) (not b!3187838) b_and!211095 (not b!3187724) (not bm!231314) (not b!3187917) (not b!3187707) (not d!872103) (not b!3187589) (not b!3186909) (not b!3187480) (not b!3186347) (not b!3187221) (not b!3186707) (not b!3187844) (not b_next!84861) (not b_lambda!86899) (not b!3187804) (not bm!231307) (not d!872165) (not d!872011) (not b!3186628) (not b!3187590) (not b!3186705) (not bm!231270) (not d!872021) (not b!3187061) (not b!3187916) (not b!3187873) (not b!3187866) (not b!3187230) (not b!3187689) (not b!3187865) (not d!872023) (not b!3186321) (not b_lambda!86875) (not d!871833) (not d!871691) (not d!871979) (not b_lambda!86919) (not b!3186624) (not b_lambda!86965) (not b!3186329) (not bm!231185) (not b!3186920) (not b!3187700) (not tb!155635) (not b!3187164) (not d!872491) (not b!3187693) (not d!872493) (not b!3186988) (not bm!231141) (not bm!231186) (not b!3187806) (not b!3187169) (not b!3187786) (not b!3186317) (not b!3186941) (not d!871957) (not bm!231267) (not b!3186709) (not b!3187850) (not b!3187797) (not b!3187720) (not b!3187122) (not d!871719) (not b!3187898) (not d!871777) (not d!872005) (not b!3187890) (not bm!231187) (not b!3187593) (not tb!155555) (not b!3187698) (not b!3187881) (not d!872013) (not d!872461) (not b!3187148) (not d!871683) (not b_next!84851) (not b!3187905) (not tb!155595) (not b!3186325) (not b_lambda!86871) (not d!872399) (not b!3187840) (not b!3186490) (not b_next!84831) (not tb!155575) (not b_next!84825) b_and!211105 (not b!3187285) (not d!871681) (not b!3186623) (not b!3187910) (not tb!155545) (not b!3186990) (not b_lambda!86879) (not b!3187801) (not b!3187907) (not b!3186997) (not b!3187216) (not b!3187763) (not b!3186524) (not b!3187920) (not b!3187869) (not b!3187694) (not bm!231315) (not bm!231188) (not tb!155785) (not b!3186958) b_and!211091 (not b!3187718) (not b!3187249) (not d!872339) (not d!872167) (not b!3187877) (not b!3187802) (not d!872007) (not d!871805) b_and!211097 (not d!872077) (not b!3187145) (not d!871783) (not d!872443) (not b!3187817) (not b!3187851) (not bm!231273) (not d!872457) (not d!872119) (not d!872141) (not b!3187023) (not d!871955) (not b!3187867) (not d!871687) (not b!3187875) (not b!3187685) (not d!872329) (not b_next!84845) (not b!3187157) (not b!3187863) (not d!871829) (not d!871785) (not b_lambda!86915) (not bm!231251) (not d!871799) (not d!872097) (not b!3187737) (not d!872155) (not b!3187083) (not b!3186699) (not b!3187711) (not b!3187836) (not b!3186950) (not b!3187879) (not b!3186910) (not b!3187884) (not b!3187845) (not b!3187848) (not bm!231313) (not d!871855) (not b!3187710) (not b!3187034) (not b!3187778) (not d!871749) (not d!872009) (not b!3187857) (not b_lambda!86963) (not d!872429) (not b!3187592) (not bm!231241))
(check-sat (not b_next!84849) (not b_next!84833) b_and!211111 b_and!211107 b_and!211087 b_and!211099 b_and!211101 (not b_next!84865) b_and!211109 (not b_next!84847) b_and!211091 b_and!211097 (not b_next!84845) (not b_next!84863) b_and!211103 (not b_next!84867) b_and!211093 b_and!211113 (not b_next!84827) (not b_next!84829) b_and!211089 (not b_next!84835) (not b_next!84861) b_and!211095 (not b_next!84831) (not b_next!84851) (not b_next!84825) b_and!211105)

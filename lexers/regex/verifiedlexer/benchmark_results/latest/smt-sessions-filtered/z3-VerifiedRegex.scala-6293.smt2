; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!314726 () Bool)

(assert start!314726)

(declare-fun b!3378920 () Bool)

(declare-fun b_free!88385 () Bool)

(declare-fun b_next!89089 () Bool)

(assert (=> b!3378920 (= b_free!88385 (not b_next!89089))))

(declare-fun tp!1056548 () Bool)

(declare-fun b_and!234679 () Bool)

(assert (=> b!3378920 (= tp!1056548 b_and!234679)))

(declare-fun b_free!88387 () Bool)

(declare-fun b_next!89091 () Bool)

(assert (=> b!3378920 (= b_free!88387 (not b_next!89091))))

(declare-fun tp!1056545 () Bool)

(declare-fun b_and!234681 () Bool)

(assert (=> b!3378920 (= tp!1056545 b_and!234681)))

(declare-fun b!3378908 () Bool)

(declare-fun b_free!88389 () Bool)

(declare-fun b_next!89093 () Bool)

(assert (=> b!3378908 (= b_free!88389 (not b_next!89093))))

(declare-fun tp!1056550 () Bool)

(declare-fun b_and!234683 () Bool)

(assert (=> b!3378908 (= tp!1056550 b_and!234683)))

(declare-fun b_free!88391 () Bool)

(declare-fun b_next!89095 () Bool)

(assert (=> b!3378908 (= b_free!88391 (not b_next!89095))))

(declare-fun tp!1056540 () Bool)

(declare-fun b_and!234685 () Bool)

(assert (=> b!3378908 (= tp!1056540 b_and!234685)))

(declare-fun b!3378927 () Bool)

(declare-fun b_free!88393 () Bool)

(declare-fun b_next!89097 () Bool)

(assert (=> b!3378927 (= b_free!88393 (not b_next!89097))))

(declare-fun tp!1056547 () Bool)

(declare-fun b_and!234687 () Bool)

(assert (=> b!3378927 (= tp!1056547 b_and!234687)))

(declare-fun b_free!88395 () Bool)

(declare-fun b_next!89099 () Bool)

(assert (=> b!3378927 (= b_free!88395 (not b_next!89099))))

(declare-fun tp!1056538 () Bool)

(declare-fun b_and!234689 () Bool)

(assert (=> b!3378927 (= tp!1056538 b_and!234689)))

(declare-fun b!3378898 () Bool)

(declare-fun e!2097360 () Bool)

(declare-fun e!2097375 () Bool)

(assert (=> b!3378898 (= e!2097360 e!2097375)))

(declare-fun res!1366771 () Bool)

(assert (=> b!3378898 (=> (not res!1366771) (not e!2097375))))

(declare-datatypes ((C!20436 0))(
  ( (C!20437 (val!12266 Int)) )
))
(declare-datatypes ((Regex!10125 0))(
  ( (ElementMatch!10125 (c!575362 C!20436)) (Concat!15721 (regOne!20762 Regex!10125) (regTwo!20762 Regex!10125)) (EmptyExpr!10125) (Star!10125 (reg!10454 Regex!10125)) (EmptyLang!10125) (Union!10125 (regOne!20763 Regex!10125) (regTwo!20763 Regex!10125)) )
))
(declare-datatypes ((List!36952 0))(
  ( (Nil!36828) (Cons!36828 (h!42248 (_ BitVec 16)) (t!262995 List!36952)) )
))
(declare-datatypes ((TokenValue!5596 0))(
  ( (FloatLiteralValue!11192 (text!39617 List!36952)) (TokenValueExt!5595 (__x!23409 Int)) (Broken!27980 (value!173365 List!36952)) (Object!5719) (End!5596) (Def!5596) (Underscore!5596) (Match!5596) (Else!5596) (Error!5596) (Case!5596) (If!5596) (Extends!5596) (Abstract!5596) (Class!5596) (Val!5596) (DelimiterValue!11192 (del!5656 List!36952)) (KeywordValue!5602 (value!173366 List!36952)) (CommentValue!11192 (value!173367 List!36952)) (WhitespaceValue!11192 (value!173368 List!36952)) (IndentationValue!5596 (value!173369 List!36952)) (String!41313) (Int32!5596) (Broken!27981 (value!173370 List!36952)) (Boolean!5597) (Unit!51931) (OperatorValue!5599 (op!5656 List!36952)) (IdentifierValue!11192 (value!173371 List!36952)) (IdentifierValue!11193 (value!173372 List!36952)) (WhitespaceValue!11193 (value!173373 List!36952)) (True!11192) (False!11192) (Broken!27982 (value!173374 List!36952)) (Broken!27983 (value!173375 List!36952)) (True!11193) (RightBrace!5596) (RightBracket!5596) (Colon!5596) (Null!5596) (Comma!5596) (LeftBracket!5596) (False!11193) (LeftBrace!5596) (ImaginaryLiteralValue!5596 (text!39618 List!36952)) (StringLiteralValue!16788 (value!173376 List!36952)) (EOFValue!5596 (value!173377 List!36952)) (IdentValue!5596 (value!173378 List!36952)) (DelimiterValue!11193 (value!173379 List!36952)) (DedentValue!5596 (value!173380 List!36952)) (NewLineValue!5596 (value!173381 List!36952)) (IntegerValue!16788 (value!173382 (_ BitVec 32)) (text!39619 List!36952)) (IntegerValue!16789 (value!173383 Int) (text!39620 List!36952)) (Times!5596) (Or!5596) (Equal!5596) (Minus!5596) (Broken!27984 (value!173384 List!36952)) (And!5596) (Div!5596) (LessEqual!5596) (Mod!5596) (Concat!15722) (Not!5596) (Plus!5596) (SpaceValue!5596 (value!173385 List!36952)) (IntegerValue!16790 (value!173386 Int) (text!39621 List!36952)) (StringLiteralValue!16789 (text!39622 List!36952)) (FloatLiteralValue!11193 (text!39623 List!36952)) (BytesLiteralValue!5596 (value!173387 List!36952)) (CommentValue!11193 (value!173388 List!36952)) (StringLiteralValue!16790 (value!173389 List!36952)) (ErrorTokenValue!5596 (msg!5657 List!36952)) )
))
(declare-datatypes ((List!36953 0))(
  ( (Nil!36829) (Cons!36829 (h!42249 C!20436) (t!262996 List!36953)) )
))
(declare-datatypes ((IArray!22219 0))(
  ( (IArray!22220 (innerList!11167 List!36953)) )
))
(declare-datatypes ((Conc!11107 0))(
  ( (Node!11107 (left!28712 Conc!11107) (right!29042 Conc!11107) (csize!22444 Int) (cheight!11318 Int)) (Leaf!17401 (xs!14261 IArray!22219) (csize!22445 Int)) (Empty!11107) )
))
(declare-datatypes ((BalanceConc!21828 0))(
  ( (BalanceConc!21829 (c!575363 Conc!11107)) )
))
(declare-datatypes ((String!41314 0))(
  ( (String!41315 (value!173390 String)) )
))
(declare-datatypes ((TokenValueInjection!10620 0))(
  ( (TokenValueInjection!10621 (toValue!7550 Int) (toChars!7409 Int)) )
))
(declare-datatypes ((Rule!10532 0))(
  ( (Rule!10533 (regex!5366 Regex!10125) (tag!5938 String!41314) (isSeparator!5366 Bool) (transformation!5366 TokenValueInjection!10620)) )
))
(declare-fun lt!1147105 () Rule!10532)

(declare-fun lt!1147094 () List!36953)

(declare-fun matchR!4717 (Regex!10125 List!36953) Bool)

(assert (=> b!3378898 (= res!1366771 (matchR!4717 (regex!5366 lt!1147105) lt!1147094))))

(declare-datatypes ((Option!7379 0))(
  ( (None!7378) (Some!7378 (v!36446 Rule!10532)) )
))
(declare-fun lt!1147087 () Option!7379)

(declare-fun get!11752 (Option!7379) Rule!10532)

(assert (=> b!3378898 (= lt!1147105 (get!11752 lt!1147087))))

(declare-datatypes ((Token!10098 0))(
  ( (Token!10099 (value!173391 TokenValue!5596) (rule!7914 Rule!10532) (size!27870 Int) (originalCharacters!6080 List!36953)) )
))
(declare-datatypes ((List!36954 0))(
  ( (Nil!36830) (Cons!36830 (h!42250 Token!10098) (t!262997 List!36954)) )
))
(declare-fun tokens!494 () List!36954)

(declare-fun e!2097365 () Bool)

(declare-fun tp!1056544 () Bool)

(declare-fun b!3378899 () Bool)

(declare-fun e!2097362 () Bool)

(declare-fun inv!49896 (String!41314) Bool)

(declare-fun inv!49899 (TokenValueInjection!10620) Bool)

(assert (=> b!3378899 (= e!2097365 (and tp!1056544 (inv!49896 (tag!5938 (rule!7914 (h!42250 tokens!494)))) (inv!49899 (transformation!5366 (rule!7914 (h!42250 tokens!494)))) e!2097362))))

(declare-fun b!3378900 () Bool)

(declare-datatypes ((Unit!51932 0))(
  ( (Unit!51933) )
))
(declare-fun e!2097373 () Unit!51932)

(declare-fun Unit!51934 () Unit!51932)

(assert (=> b!3378900 (= e!2097373 Unit!51934)))

(declare-fun b!3378901 () Bool)

(declare-fun res!1366766 () Bool)

(declare-fun e!2097356 () Bool)

(assert (=> b!3378901 (=> res!1366766 e!2097356)))

(declare-datatypes ((LexerInterface!4955 0))(
  ( (LexerInterfaceExt!4952 (__x!23410 Int)) (Lexer!4953) )
))
(declare-fun thiss!18206 () LexerInterface!4955)

(declare-datatypes ((List!36955 0))(
  ( (Nil!36831) (Cons!36831 (h!42251 Rule!10532) (t!262998 List!36955)) )
))
(declare-fun rules!2135 () List!36955)

(declare-fun rulesProduceIndividualToken!2447 (LexerInterface!4955 List!36955 Token!10098) Bool)

(assert (=> b!3378901 (= res!1366766 (not (rulesProduceIndividualToken!2447 thiss!18206 rules!2135 (h!42250 tokens!494))))))

(declare-fun b!3378903 () Bool)

(declare-fun res!1366759 () Bool)

(declare-fun e!2097358 () Bool)

(assert (=> b!3378903 (=> (not res!1366759) (not e!2097358))))

(declare-fun lambda!120425 () Int)

(declare-fun forall!7745 (List!36954 Int) Bool)

(assert (=> b!3378903 (= res!1366759 (forall!7745 tokens!494 lambda!120425))))

(declare-fun b!3378904 () Bool)

(declare-fun res!1366763 () Bool)

(assert (=> b!3378904 (=> (not res!1366763) (not e!2097358))))

(declare-fun separatorToken!241 () Token!10098)

(assert (=> b!3378904 (= res!1366763 (rulesProduceIndividualToken!2447 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3378905 () Bool)

(declare-fun e!2097374 () Bool)

(assert (=> b!3378905 (= e!2097356 e!2097374)))

(declare-fun res!1366770 () Bool)

(assert (=> b!3378905 (=> res!1366770 e!2097374)))

(declare-fun lt!1147088 () BalanceConc!21828)

(declare-datatypes ((IArray!22221 0))(
  ( (IArray!22222 (innerList!11168 List!36954)) )
))
(declare-datatypes ((Conc!11108 0))(
  ( (Node!11108 (left!28713 Conc!11108) (right!29043 Conc!11108) (csize!22446 Int) (cheight!11319 Int)) (Leaf!17402 (xs!14262 IArray!22221) (csize!22447 Int)) (Empty!11108) )
))
(declare-datatypes ((BalanceConc!21830 0))(
  ( (BalanceConc!21831 (c!575364 Conc!11108)) )
))
(declare-fun isEmpty!21059 (BalanceConc!21830) Bool)

(declare-datatypes ((tuple2!36404 0))(
  ( (tuple2!36405 (_1!21336 BalanceConc!21830) (_2!21336 BalanceConc!21828)) )
))
(declare-fun lex!2281 (LexerInterface!4955 List!36955 BalanceConc!21828) tuple2!36404)

(assert (=> b!3378905 (= res!1366770 (isEmpty!21059 (_1!21336 (lex!2281 thiss!18206 rules!2135 lt!1147088))))))

(declare-fun seqFromList!3785 (List!36953) BalanceConc!21828)

(assert (=> b!3378905 (= lt!1147088 (seqFromList!3785 lt!1147094))))

(declare-fun b!3378906 () Bool)

(declare-fun e!2097377 () Bool)

(assert (=> b!3378906 (= e!2097374 e!2097377)))

(declare-fun res!1366773 () Bool)

(assert (=> b!3378906 (=> res!1366773 e!2097377)))

(assert (=> b!3378906 (= res!1366773 (isSeparator!5366 (rule!7914 (h!42250 tokens!494))))))

(declare-fun lt!1147095 () Unit!51932)

(declare-fun forallContained!1313 (List!36954 Int Token!10098) Unit!51932)

(assert (=> b!3378906 (= lt!1147095 (forallContained!1313 tokens!494 lambda!120425 (h!42250 tokens!494)))))

(declare-fun b!3378907 () Bool)

(declare-fun e!2097378 () Bool)

(assert (=> b!3378907 (= e!2097378 e!2097358)))

(declare-fun res!1366768 () Bool)

(assert (=> b!3378907 (=> (not res!1366768) (not e!2097358))))

(declare-fun lt!1147099 () BalanceConc!21830)

(declare-fun rulesProduceEachTokenIndividually!1406 (LexerInterface!4955 List!36955 BalanceConc!21830) Bool)

(assert (=> b!3378907 (= res!1366768 (rulesProduceEachTokenIndividually!1406 thiss!18206 rules!2135 lt!1147099))))

(declare-fun seqFromList!3786 (List!36954) BalanceConc!21830)

(assert (=> b!3378907 (= lt!1147099 (seqFromList!3786 tokens!494))))

(declare-fun e!2097376 () Bool)

(assert (=> b!3378908 (= e!2097376 (and tp!1056550 tp!1056540))))

(declare-fun b!3378909 () Bool)

(declare-fun res!1366769 () Bool)

(assert (=> b!3378909 (=> (not res!1366769) (not e!2097378))))

(declare-fun rulesInvariant!4352 (LexerInterface!4955 List!36955) Bool)

(assert (=> b!3378909 (= res!1366769 (rulesInvariant!4352 thiss!18206 rules!2135))))

(declare-fun b!3378910 () Bool)

(declare-fun e!2097367 () Bool)

(declare-fun e!2097350 () Bool)

(assert (=> b!3378910 (= e!2097367 e!2097350)))

(declare-fun res!1366778 () Bool)

(assert (=> b!3378910 (=> res!1366778 e!2097350)))

(declare-fun lt!1147089 () Bool)

(assert (=> b!3378910 (= res!1366778 lt!1147089)))

(declare-fun lt!1147101 () Unit!51932)

(assert (=> b!3378910 (= lt!1147101 e!2097373)))

(declare-fun c!575361 () Bool)

(assert (=> b!3378910 (= c!575361 lt!1147089)))

(declare-fun lt!1147091 () C!20436)

(declare-fun contains!6723 (List!36953 C!20436) Bool)

(declare-fun usedCharacters!622 (Regex!10125) List!36953)

(assert (=> b!3378910 (= lt!1147089 (not (contains!6723 (usedCharacters!622 (regex!5366 (rule!7914 separatorToken!241))) lt!1147091)))))

(declare-fun lt!1147096 () List!36953)

(declare-fun head!7213 (List!36953) C!20436)

(assert (=> b!3378910 (= lt!1147091 (head!7213 lt!1147096))))

(declare-datatypes ((tuple2!36406 0))(
  ( (tuple2!36407 (_1!21337 Token!10098) (_2!21337 List!36953)) )
))
(declare-datatypes ((Option!7380 0))(
  ( (None!7379) (Some!7379 (v!36447 tuple2!36406)) )
))
(declare-fun maxPrefixOneRule!1678 (LexerInterface!4955 Rule!10532 List!36953) Option!7380)

(declare-fun apply!8557 (TokenValueInjection!10620 BalanceConc!21828) TokenValue!5596)

(declare-fun size!27871 (List!36953) Int)

(assert (=> b!3378910 (= (maxPrefixOneRule!1678 thiss!18206 (rule!7914 (h!42250 tokens!494)) lt!1147094) (Some!7379 (tuple2!36407 (Token!10099 (apply!8557 (transformation!5366 (rule!7914 (h!42250 tokens!494))) lt!1147088) (rule!7914 (h!42250 tokens!494)) (size!27871 lt!1147094) lt!1147094) Nil!36829)))))

(declare-fun lt!1147108 () Unit!51932)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!777 (LexerInterface!4955 List!36955 List!36953 List!36953 List!36953 Rule!10532) Unit!51932)

(assert (=> b!3378910 (= lt!1147108 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!777 thiss!18206 rules!2135 lt!1147094 lt!1147094 Nil!36829 (rule!7914 (h!42250 tokens!494))))))

(declare-fun e!2097369 () Bool)

(assert (=> b!3378910 e!2097369))

(declare-fun res!1366758 () Bool)

(assert (=> b!3378910 (=> (not res!1366758) (not e!2097369))))

(declare-fun lt!1147092 () Option!7379)

(declare-fun isDefined!5704 (Option!7379) Bool)

(assert (=> b!3378910 (= res!1366758 (isDefined!5704 lt!1147092))))

(declare-fun getRuleFromTag!1021 (LexerInterface!4955 List!36955 String!41314) Option!7379)

(assert (=> b!3378910 (= lt!1147092 (getRuleFromTag!1021 thiss!18206 rules!2135 (tag!5938 (rule!7914 separatorToken!241))))))

(declare-fun lt!1147100 () Unit!51932)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1021 (LexerInterface!4955 List!36955 List!36953 Token!10098) Unit!51932)

(assert (=> b!3378910 (= lt!1147100 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1021 thiss!18206 rules!2135 lt!1147096 separatorToken!241))))

(assert (=> b!3378910 e!2097360))

(declare-fun res!1366775 () Bool)

(assert (=> b!3378910 (=> (not res!1366775) (not e!2097360))))

(assert (=> b!3378910 (= res!1366775 (isDefined!5704 lt!1147087))))

(assert (=> b!3378910 (= lt!1147087 (getRuleFromTag!1021 thiss!18206 rules!2135 (tag!5938 (rule!7914 (h!42250 tokens!494)))))))

(declare-fun lt!1147104 () Unit!51932)

(assert (=> b!3378910 (= lt!1147104 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1021 thiss!18206 rules!2135 lt!1147094 (h!42250 tokens!494)))))

(declare-fun lt!1147090 () Unit!51932)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!950 (LexerInterface!4955 List!36955 List!36954 Token!10098) Unit!51932)

(assert (=> b!3378910 (= lt!1147090 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!950 thiss!18206 rules!2135 tokens!494 (h!42250 tokens!494)))))

(declare-fun isEmpty!21060 (List!36953) Bool)

(declare-fun getSuffix!1460 (List!36953 List!36953) List!36953)

(assert (=> b!3378910 (isEmpty!21060 (getSuffix!1460 lt!1147094 lt!1147094))))

(declare-fun lt!1147110 () Unit!51932)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!118 (List!36953) Unit!51932)

(assert (=> b!3378910 (= lt!1147110 (lemmaGetSuffixOnListWithItSelfIsEmpty!118 lt!1147094))))

(declare-fun b!3378911 () Bool)

(assert (=> b!3378911 (= e!2097350 true)))

(assert (=> b!3378911 (not (contains!6723 (usedCharacters!622 (regex!5366 (rule!7914 (h!42250 tokens!494)))) lt!1147091))))

(declare-fun lt!1147107 () Unit!51932)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!206 (LexerInterface!4955 List!36955 List!36955 Rule!10532 Rule!10532 C!20436) Unit!51932)

(assert (=> b!3378911 (= lt!1147107 (lemmaNonSepRuleNotContainsCharContainedInASepRule!206 thiss!18206 rules!2135 rules!2135 (rule!7914 (h!42250 tokens!494)) (rule!7914 separatorToken!241) lt!1147091))))

(declare-fun b!3378912 () Bool)

(declare-fun e!2097361 () Bool)

(assert (=> b!3378912 (= e!2097369 e!2097361)))

(declare-fun res!1366760 () Bool)

(assert (=> b!3378912 (=> (not res!1366760) (not e!2097361))))

(declare-fun lt!1147102 () Rule!10532)

(assert (=> b!3378912 (= res!1366760 (matchR!4717 (regex!5366 lt!1147102) lt!1147096))))

(assert (=> b!3378912 (= lt!1147102 (get!11752 lt!1147092))))

(declare-fun b!3378913 () Bool)

(declare-fun e!2097352 () Bool)

(assert (=> b!3378913 (= e!2097352 false)))

(declare-fun b!3378914 () Bool)

(declare-fun e!2097371 () Bool)

(assert (=> b!3378914 (= e!2097358 (not e!2097371))))

(declare-fun res!1366761 () Bool)

(assert (=> b!3378914 (=> res!1366761 e!2097371)))

(declare-fun lt!1147109 () List!36953)

(declare-fun lt!1147098 () List!36953)

(assert (=> b!3378914 (= res!1366761 (not (= lt!1147109 lt!1147098)))))

(declare-fun printList!1503 (LexerInterface!4955 List!36954) List!36953)

(assert (=> b!3378914 (= lt!1147098 (printList!1503 thiss!18206 (Cons!36830 (h!42250 tokens!494) Nil!36830)))))

(declare-fun lt!1147103 () BalanceConc!21828)

(declare-fun list!13315 (BalanceConc!21828) List!36953)

(assert (=> b!3378914 (= lt!1147109 (list!13315 lt!1147103))))

(declare-fun lt!1147097 () BalanceConc!21830)

(declare-fun printTailRec!1450 (LexerInterface!4955 BalanceConc!21830 Int BalanceConc!21828) BalanceConc!21828)

(assert (=> b!3378914 (= lt!1147103 (printTailRec!1450 thiss!18206 lt!1147097 0 (BalanceConc!21829 Empty!11107)))))

(declare-fun print!2020 (LexerInterface!4955 BalanceConc!21830) BalanceConc!21828)

(assert (=> b!3378914 (= lt!1147103 (print!2020 thiss!18206 lt!1147097))))

(declare-fun singletonSeq!2462 (Token!10098) BalanceConc!21830)

(assert (=> b!3378914 (= lt!1147097 (singletonSeq!2462 (h!42250 tokens!494)))))

(declare-fun e!2097366 () Bool)

(declare-fun b!3378902 () Bool)

(declare-fun tp!1056546 () Bool)

(declare-fun inv!21 (TokenValue!5596) Bool)

(assert (=> b!3378902 (= e!2097366 (and (inv!21 (value!173391 (h!42250 tokens!494))) e!2097365 tp!1056546))))

(declare-fun res!1366765 () Bool)

(assert (=> start!314726 (=> (not res!1366765) (not e!2097378))))

(get-info :version)

(assert (=> start!314726 (= res!1366765 ((_ is Lexer!4953) thiss!18206))))

(assert (=> start!314726 e!2097378))

(assert (=> start!314726 true))

(declare-fun e!2097359 () Bool)

(assert (=> start!314726 e!2097359))

(declare-fun e!2097353 () Bool)

(declare-fun inv!49900 (Token!10098) Bool)

(assert (=> start!314726 (and (inv!49900 separatorToken!241) e!2097353)))

(declare-fun e!2097357 () Bool)

(assert (=> start!314726 e!2097357))

(declare-fun b!3378915 () Bool)

(assert (=> b!3378915 (= e!2097377 e!2097367)))

(declare-fun res!1366764 () Bool)

(assert (=> b!3378915 (=> res!1366764 e!2097367)))

(declare-fun lt!1147093 () BalanceConc!21828)

(declare-fun ++!8997 (List!36953 List!36953) List!36953)

(assert (=> b!3378915 (= res!1366764 (not (= (list!13315 lt!1147093) (++!8997 lt!1147094 lt!1147096))))))

(declare-fun charsOf!3380 (Token!10098) BalanceConc!21828)

(assert (=> b!3378915 (= lt!1147096 (list!13315 (charsOf!3380 separatorToken!241)))))

(declare-fun printWithSeparatorToken!146 (LexerInterface!4955 BalanceConc!21830 Token!10098) BalanceConc!21828)

(assert (=> b!3378915 (= lt!1147093 (printWithSeparatorToken!146 thiss!18206 lt!1147099 separatorToken!241))))

(declare-fun b!3378916 () Bool)

(declare-fun res!1366772 () Bool)

(assert (=> b!3378916 (=> (not res!1366772) (not e!2097358))))

(declare-fun sepAndNonSepRulesDisjointChars!1560 (List!36955 List!36955) Bool)

(assert (=> b!3378916 (= res!1366772 (sepAndNonSepRulesDisjointChars!1560 rules!2135 rules!2135))))

(declare-fun b!3378917 () Bool)

(declare-fun e!2097351 () Bool)

(declare-fun tp!1056539 () Bool)

(assert (=> b!3378917 (= e!2097351 (and tp!1056539 (inv!49896 (tag!5938 (h!42251 rules!2135))) (inv!49899 (transformation!5366 (h!42251 rules!2135))) e!2097376))))

(declare-fun b!3378918 () Bool)

(declare-fun res!1366767 () Bool)

(assert (=> b!3378918 (=> (not res!1366767) (not e!2097378))))

(declare-fun isEmpty!21061 (List!36955) Bool)

(assert (=> b!3378918 (= res!1366767 (not (isEmpty!21061 rules!2135)))))

(declare-fun b!3378919 () Bool)

(assert (=> b!3378919 (= e!2097375 (= (rule!7914 (h!42250 tokens!494)) lt!1147105))))

(declare-fun e!2097363 () Bool)

(assert (=> b!3378920 (= e!2097363 (and tp!1056548 tp!1056545))))

(declare-fun b!3378921 () Bool)

(declare-fun res!1366777 () Bool)

(assert (=> b!3378921 (=> (not res!1366777) (not e!2097358))))

(assert (=> b!3378921 (= res!1366777 (and (not ((_ is Nil!36830) tokens!494)) ((_ is Nil!36830) (t!262997 tokens!494))))))

(declare-fun e!2097355 () Bool)

(declare-fun b!3378922 () Bool)

(declare-fun tp!1056549 () Bool)

(assert (=> b!3378922 (= e!2097353 (and (inv!21 (value!173391 separatorToken!241)) e!2097355 tp!1056549))))

(declare-fun b!3378923 () Bool)

(assert (=> b!3378923 (= e!2097361 (= (rule!7914 separatorToken!241) lt!1147102))))

(declare-fun b!3378924 () Bool)

(declare-fun tp!1056541 () Bool)

(assert (=> b!3378924 (= e!2097357 (and (inv!49900 (h!42250 tokens!494)) e!2097366 tp!1056541))))

(declare-fun b!3378925 () Bool)

(declare-fun tp!1056542 () Bool)

(assert (=> b!3378925 (= e!2097355 (and tp!1056542 (inv!49896 (tag!5938 (rule!7914 separatorToken!241))) (inv!49899 (transformation!5366 (rule!7914 separatorToken!241))) e!2097363))))

(declare-fun b!3378926 () Bool)

(assert (=> b!3378926 (= e!2097371 e!2097356)))

(declare-fun res!1366774 () Bool)

(assert (=> b!3378926 (=> res!1366774 e!2097356)))

(assert (=> b!3378926 (= res!1366774 (or (not (= lt!1147098 lt!1147094)) (not (= lt!1147109 lt!1147094))))))

(assert (=> b!3378926 (= lt!1147094 (list!13315 (charsOf!3380 (h!42250 tokens!494))))))

(assert (=> b!3378927 (= e!2097362 (and tp!1056547 tp!1056538))))

(declare-fun b!3378928 () Bool)

(declare-fun Unit!51935 () Unit!51932)

(assert (=> b!3378928 (= e!2097373 Unit!51935)))

(declare-fun lt!1147106 () Unit!51932)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!456 (Regex!10125 List!36953 C!20436) Unit!51932)

(assert (=> b!3378928 (= lt!1147106 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!456 (regex!5366 (rule!7914 separatorToken!241)) lt!1147096 lt!1147091))))

(declare-fun res!1366776 () Bool)

(assert (=> b!3378928 (= res!1366776 (not (matchR!4717 (regex!5366 (rule!7914 separatorToken!241)) lt!1147096)))))

(assert (=> b!3378928 (=> (not res!1366776) (not e!2097352))))

(assert (=> b!3378928 e!2097352))

(declare-fun b!3378929 () Bool)

(declare-fun res!1366762 () Bool)

(assert (=> b!3378929 (=> (not res!1366762) (not e!2097358))))

(assert (=> b!3378929 (= res!1366762 (isSeparator!5366 (rule!7914 separatorToken!241)))))

(declare-fun b!3378930 () Bool)

(declare-fun tp!1056543 () Bool)

(assert (=> b!3378930 (= e!2097359 (and e!2097351 tp!1056543))))

(assert (= (and start!314726 res!1366765) b!3378918))

(assert (= (and b!3378918 res!1366767) b!3378909))

(assert (= (and b!3378909 res!1366769) b!3378907))

(assert (= (and b!3378907 res!1366768) b!3378904))

(assert (= (and b!3378904 res!1366763) b!3378929))

(assert (= (and b!3378929 res!1366762) b!3378903))

(assert (= (and b!3378903 res!1366759) b!3378916))

(assert (= (and b!3378916 res!1366772) b!3378921))

(assert (= (and b!3378921 res!1366777) b!3378914))

(assert (= (and b!3378914 (not res!1366761)) b!3378926))

(assert (= (and b!3378926 (not res!1366774)) b!3378901))

(assert (= (and b!3378901 (not res!1366766)) b!3378905))

(assert (= (and b!3378905 (not res!1366770)) b!3378906))

(assert (= (and b!3378906 (not res!1366773)) b!3378915))

(assert (= (and b!3378915 (not res!1366764)) b!3378910))

(assert (= (and b!3378910 res!1366775) b!3378898))

(assert (= (and b!3378898 res!1366771) b!3378919))

(assert (= (and b!3378910 res!1366758) b!3378912))

(assert (= (and b!3378912 res!1366760) b!3378923))

(assert (= (and b!3378910 c!575361) b!3378928))

(assert (= (and b!3378910 (not c!575361)) b!3378900))

(assert (= (and b!3378928 res!1366776) b!3378913))

(assert (= (and b!3378910 (not res!1366778)) b!3378911))

(assert (= b!3378917 b!3378908))

(assert (= b!3378930 b!3378917))

(assert (= (and start!314726 ((_ is Cons!36831) rules!2135)) b!3378930))

(assert (= b!3378925 b!3378920))

(assert (= b!3378922 b!3378925))

(assert (= start!314726 b!3378922))

(assert (= b!3378899 b!3378927))

(assert (= b!3378902 b!3378899))

(assert (= b!3378924 b!3378902))

(assert (= (and start!314726 ((_ is Cons!36830) tokens!494)) b!3378924))

(declare-fun m!3742689 () Bool)

(assert (=> b!3378907 m!3742689))

(declare-fun m!3742691 () Bool)

(assert (=> b!3378907 m!3742691))

(declare-fun m!3742693 () Bool)

(assert (=> b!3378902 m!3742693))

(declare-fun m!3742695 () Bool)

(assert (=> b!3378916 m!3742695))

(declare-fun m!3742697 () Bool)

(assert (=> b!3378905 m!3742697))

(declare-fun m!3742699 () Bool)

(assert (=> b!3378905 m!3742699))

(declare-fun m!3742701 () Bool)

(assert (=> b!3378905 m!3742701))

(declare-fun m!3742703 () Bool)

(assert (=> b!3378903 m!3742703))

(declare-fun m!3742705 () Bool)

(assert (=> b!3378909 m!3742705))

(declare-fun m!3742707 () Bool)

(assert (=> b!3378926 m!3742707))

(assert (=> b!3378926 m!3742707))

(declare-fun m!3742709 () Bool)

(assert (=> b!3378926 m!3742709))

(declare-fun m!3742711 () Bool)

(assert (=> b!3378915 m!3742711))

(declare-fun m!3742713 () Bool)

(assert (=> b!3378915 m!3742713))

(assert (=> b!3378915 m!3742711))

(declare-fun m!3742715 () Bool)

(assert (=> b!3378915 m!3742715))

(declare-fun m!3742717 () Bool)

(assert (=> b!3378915 m!3742717))

(declare-fun m!3742719 () Bool)

(assert (=> b!3378915 m!3742719))

(declare-fun m!3742721 () Bool)

(assert (=> b!3378924 m!3742721))

(declare-fun m!3742723 () Bool)

(assert (=> b!3378922 m!3742723))

(declare-fun m!3742725 () Bool)

(assert (=> b!3378898 m!3742725))

(declare-fun m!3742727 () Bool)

(assert (=> b!3378898 m!3742727))

(declare-fun m!3742729 () Bool)

(assert (=> b!3378912 m!3742729))

(declare-fun m!3742731 () Bool)

(assert (=> b!3378912 m!3742731))

(declare-fun m!3742733 () Bool)

(assert (=> b!3378911 m!3742733))

(assert (=> b!3378911 m!3742733))

(declare-fun m!3742735 () Bool)

(assert (=> b!3378911 m!3742735))

(declare-fun m!3742737 () Bool)

(assert (=> b!3378911 m!3742737))

(declare-fun m!3742739 () Bool)

(assert (=> b!3378918 m!3742739))

(declare-fun m!3742741 () Bool)

(assert (=> b!3378904 m!3742741))

(declare-fun m!3742743 () Bool)

(assert (=> b!3378914 m!3742743))

(declare-fun m!3742745 () Bool)

(assert (=> b!3378914 m!3742745))

(declare-fun m!3742747 () Bool)

(assert (=> b!3378914 m!3742747))

(declare-fun m!3742749 () Bool)

(assert (=> b!3378914 m!3742749))

(declare-fun m!3742751 () Bool)

(assert (=> b!3378914 m!3742751))

(declare-fun m!3742753 () Bool)

(assert (=> start!314726 m!3742753))

(declare-fun m!3742755 () Bool)

(assert (=> b!3378906 m!3742755))

(declare-fun m!3742757 () Bool)

(assert (=> b!3378910 m!3742757))

(declare-fun m!3742759 () Bool)

(assert (=> b!3378910 m!3742759))

(declare-fun m!3742761 () Bool)

(assert (=> b!3378910 m!3742761))

(declare-fun m!3742763 () Bool)

(assert (=> b!3378910 m!3742763))

(declare-fun m!3742765 () Bool)

(assert (=> b!3378910 m!3742765))

(declare-fun m!3742767 () Bool)

(assert (=> b!3378910 m!3742767))

(declare-fun m!3742769 () Bool)

(assert (=> b!3378910 m!3742769))

(declare-fun m!3742771 () Bool)

(assert (=> b!3378910 m!3742771))

(declare-fun m!3742773 () Bool)

(assert (=> b!3378910 m!3742773))

(declare-fun m!3742775 () Bool)

(assert (=> b!3378910 m!3742775))

(declare-fun m!3742777 () Bool)

(assert (=> b!3378910 m!3742777))

(declare-fun m!3742779 () Bool)

(assert (=> b!3378910 m!3742779))

(assert (=> b!3378910 m!3742761))

(declare-fun m!3742781 () Bool)

(assert (=> b!3378910 m!3742781))

(declare-fun m!3742783 () Bool)

(assert (=> b!3378910 m!3742783))

(declare-fun m!3742785 () Bool)

(assert (=> b!3378910 m!3742785))

(assert (=> b!3378910 m!3742765))

(declare-fun m!3742787 () Bool)

(assert (=> b!3378910 m!3742787))

(declare-fun m!3742789 () Bool)

(assert (=> b!3378910 m!3742789))

(declare-fun m!3742791 () Bool)

(assert (=> b!3378925 m!3742791))

(declare-fun m!3742793 () Bool)

(assert (=> b!3378925 m!3742793))

(declare-fun m!3742795 () Bool)

(assert (=> b!3378899 m!3742795))

(declare-fun m!3742797 () Bool)

(assert (=> b!3378899 m!3742797))

(declare-fun m!3742799 () Bool)

(assert (=> b!3378917 m!3742799))

(declare-fun m!3742801 () Bool)

(assert (=> b!3378917 m!3742801))

(declare-fun m!3742803 () Bool)

(assert (=> b!3378928 m!3742803))

(declare-fun m!3742805 () Bool)

(assert (=> b!3378928 m!3742805))

(declare-fun m!3742807 () Bool)

(assert (=> b!3378901 m!3742807))

(check-sat (not b_next!89095) b_and!234681 (not b!3378902) (not b!3378904) b_and!234687 (not b!3378915) (not b!3378901) (not b!3378909) (not b!3378912) (not b!3378899) (not b!3378928) b_and!234679 (not b!3378922) (not b!3378914) (not b!3378898) (not b_next!89097) (not b!3378925) b_and!234683 (not b!3378930) (not b!3378906) (not b_next!89093) (not b_next!89089) b_and!234689 (not start!314726) (not b!3378910) (not b_next!89091) (not b!3378917) b_and!234685 (not b!3378916) (not b!3378911) (not b!3378926) (not b_next!89099) (not b!3378905) (not b!3378918) (not b!3378903) (not b!3378907) (not b!3378924))
(check-sat (not b_next!89095) b_and!234681 b_and!234679 (not b_next!89097) b_and!234683 b_and!234687 (not b_next!89091) b_and!234685 (not b_next!89099) b_and!234689 (not b_next!89093) (not b_next!89089))

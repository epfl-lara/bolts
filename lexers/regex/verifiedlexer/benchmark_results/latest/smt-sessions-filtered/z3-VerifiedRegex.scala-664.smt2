; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24502 () Bool)

(assert start!24502)

(declare-fun b!229598 () Bool)

(declare-fun b_free!8609 () Bool)

(declare-fun b_next!8609 () Bool)

(assert (=> b!229598 (= b_free!8609 (not b_next!8609))))

(declare-fun tp!93883 () Bool)

(declare-fun b_and!17021 () Bool)

(assert (=> b!229598 (= tp!93883 b_and!17021)))

(declare-fun b_free!8611 () Bool)

(declare-fun b_next!8611 () Bool)

(assert (=> b!229598 (= b_free!8611 (not b_next!8611))))

(declare-fun tp!93885 () Bool)

(declare-fun b_and!17023 () Bool)

(assert (=> b!229598 (= tp!93885 b_and!17023)))

(declare-fun b!229586 () Bool)

(declare-fun b_free!8613 () Bool)

(declare-fun b_next!8613 () Bool)

(assert (=> b!229586 (= b_free!8613 (not b_next!8613))))

(declare-fun tp!93877 () Bool)

(declare-fun b_and!17025 () Bool)

(assert (=> b!229586 (= tp!93877 b_and!17025)))

(declare-fun b_free!8615 () Bool)

(declare-fun b_next!8615 () Bool)

(assert (=> b!229586 (= b_free!8615 (not b_next!8615))))

(declare-fun tp!93888 () Bool)

(declare-fun b_and!17027 () Bool)

(assert (=> b!229586 (= tp!93888 b_and!17027)))

(declare-fun b!229604 () Bool)

(declare-fun b_free!8617 () Bool)

(declare-fun b_next!8617 () Bool)

(assert (=> b!229604 (= b_free!8617 (not b_next!8617))))

(declare-fun tp!93882 () Bool)

(declare-fun b_and!17029 () Bool)

(assert (=> b!229604 (= tp!93882 b_and!17029)))

(declare-fun b_free!8619 () Bool)

(declare-fun b_next!8619 () Bool)

(assert (=> b!229604 (= b_free!8619 (not b_next!8619))))

(declare-fun tp!93880 () Bool)

(declare-fun b_and!17031 () Bool)

(assert (=> b!229604 (= tp!93880 b_and!17031)))

(declare-fun bs!24350 () Bool)

(declare-fun b!229597 () Bool)

(declare-fun b!229565 () Bool)

(assert (= bs!24350 (and b!229597 b!229565)))

(declare-fun lambda!7304 () Int)

(declare-fun lambda!7303 () Int)

(assert (=> bs!24350 (not (= lambda!7304 lambda!7303))))

(declare-fun b!229622 () Bool)

(declare-fun e!142047 () Bool)

(assert (=> b!229622 (= e!142047 true)))

(declare-fun b!229621 () Bool)

(declare-fun e!142046 () Bool)

(assert (=> b!229621 (= e!142046 e!142047)))

(declare-fun b!229620 () Bool)

(declare-fun e!142045 () Bool)

(assert (=> b!229620 (= e!142045 e!142046)))

(assert (=> b!229597 e!142045))

(assert (= b!229621 b!229622))

(assert (= b!229620 b!229621))

(declare-datatypes ((List!3481 0))(
  ( (Nil!3471) (Cons!3471 (h!8868 (_ BitVec 16)) (t!33469 List!3481)) )
))
(declare-datatypes ((TokenValue!673 0))(
  ( (FloatLiteralValue!1346 (text!5156 List!3481)) (TokenValueExt!672 (__x!2833 Int)) (Broken!3365 (value!22843 List!3481)) (Object!682) (End!673) (Def!673) (Underscore!673) (Match!673) (Else!673) (Error!673) (Case!673) (If!673) (Extends!673) (Abstract!673) (Class!673) (Val!673) (DelimiterValue!1346 (del!733 List!3481)) (KeywordValue!679 (value!22844 List!3481)) (CommentValue!1346 (value!22845 List!3481)) (WhitespaceValue!1346 (value!22846 List!3481)) (IndentationValue!673 (value!22847 List!3481)) (String!4444) (Int32!673) (Broken!3366 (value!22848 List!3481)) (Boolean!674) (Unit!3993) (OperatorValue!676 (op!733 List!3481)) (IdentifierValue!1346 (value!22849 List!3481)) (IdentifierValue!1347 (value!22850 List!3481)) (WhitespaceValue!1347 (value!22851 List!3481)) (True!1346) (False!1346) (Broken!3367 (value!22852 List!3481)) (Broken!3368 (value!22853 List!3481)) (True!1347) (RightBrace!673) (RightBracket!673) (Colon!673) (Null!673) (Comma!673) (LeftBracket!673) (False!1347) (LeftBrace!673) (ImaginaryLiteralValue!673 (text!5157 List!3481)) (StringLiteralValue!2019 (value!22854 List!3481)) (EOFValue!673 (value!22855 List!3481)) (IdentValue!673 (value!22856 List!3481)) (DelimiterValue!1347 (value!22857 List!3481)) (DedentValue!673 (value!22858 List!3481)) (NewLineValue!673 (value!22859 List!3481)) (IntegerValue!2019 (value!22860 (_ BitVec 32)) (text!5158 List!3481)) (IntegerValue!2020 (value!22861 Int) (text!5159 List!3481)) (Times!673) (Or!673) (Equal!673) (Minus!673) (Broken!3369 (value!22862 List!3481)) (And!673) (Div!673) (LessEqual!673) (Mod!673) (Concat!1548) (Not!673) (Plus!673) (SpaceValue!673 (value!22863 List!3481)) (IntegerValue!2021 (value!22864 Int) (text!5160 List!3481)) (StringLiteralValue!2020 (text!5161 List!3481)) (FloatLiteralValue!1347 (text!5162 List!3481)) (BytesLiteralValue!673 (value!22865 List!3481)) (CommentValue!1347 (value!22866 List!3481)) (StringLiteralValue!2021 (value!22867 List!3481)) (ErrorTokenValue!673 (msg!734 List!3481)) )
))
(declare-datatypes ((C!2672 0))(
  ( (C!2673 (val!1222 Int)) )
))
(declare-datatypes ((List!3482 0))(
  ( (Nil!3472) (Cons!3472 (h!8869 C!2672) (t!33470 List!3482)) )
))
(declare-datatypes ((IArray!2249 0))(
  ( (IArray!2250 (innerList!1182 List!3482)) )
))
(declare-datatypes ((Conc!1124 0))(
  ( (Node!1124 (left!2808 Conc!1124) (right!3138 Conc!1124) (csize!2478 Int) (cheight!1335 Int)) (Leaf!1789 (xs!3719 IArray!2249) (csize!2479 Int)) (Empty!1124) )
))
(declare-datatypes ((BalanceConc!2256 0))(
  ( (BalanceConc!2257 (c!43907 Conc!1124)) )
))
(declare-datatypes ((TokenValueInjection!1118 0))(
  ( (TokenValueInjection!1119 (toValue!1346 Int) (toChars!1205 Int)) )
))
(declare-datatypes ((Regex!875 0))(
  ( (ElementMatch!875 (c!43908 C!2672)) (Concat!1549 (regOne!2262 Regex!875) (regTwo!2262 Regex!875)) (EmptyExpr!875) (Star!875 (reg!1204 Regex!875)) (EmptyLang!875) (Union!875 (regOne!2263 Regex!875) (regTwo!2263 Regex!875)) )
))
(declare-datatypes ((String!4445 0))(
  ( (String!4446 (value!22868 String)) )
))
(declare-datatypes ((Rule!1102 0))(
  ( (Rule!1103 (regex!651 Regex!875) (tag!851 String!4445) (isSeparator!651 Bool) (transformation!651 TokenValueInjection!1118)) )
))
(declare-datatypes ((List!3483 0))(
  ( (Nil!3473) (Cons!3473 (h!8870 Rule!1102) (t!33471 List!3483)) )
))
(declare-fun rules!1920 () List!3483)

(get-info :version)

(assert (= (and b!229597 ((_ is Cons!3473) rules!1920)) b!229620))

(declare-fun order!2431 () Int)

(declare-fun order!2429 () Int)

(declare-fun dynLambda!1623 (Int Int) Int)

(declare-fun dynLambda!1624 (Int Int) Int)

(assert (=> b!229622 (< (dynLambda!1623 order!2429 (toValue!1346 (transformation!651 (h!8870 rules!1920)))) (dynLambda!1624 order!2431 lambda!7304))))

(declare-fun order!2433 () Int)

(declare-fun dynLambda!1625 (Int Int) Int)

(assert (=> b!229622 (< (dynLambda!1625 order!2433 (toChars!1205 (transformation!651 (h!8870 rules!1920)))) (dynLambda!1624 order!2431 lambda!7304))))

(assert (=> b!229597 true))

(declare-fun b!229562 () Bool)

(declare-fun e!142027 () Bool)

(declare-fun e!142037 () Bool)

(assert (=> b!229562 (= e!142027 e!142037)))

(declare-fun res!105872 () Bool)

(assert (=> b!229562 (=> (not res!105872) (not e!142037))))

(declare-fun lt!89827 () Rule!1102)

(declare-fun lt!89795 () List!3482)

(declare-fun matchR!213 (Regex!875 List!3482) Bool)

(assert (=> b!229562 (= res!105872 (matchR!213 (regex!651 lt!89827) lt!89795))))

(declare-datatypes ((Option!645 0))(
  ( (None!644) (Some!644 (v!14335 Rule!1102)) )
))
(declare-fun lt!89830 () Option!645)

(declare-fun get!1104 (Option!645) Rule!1102)

(assert (=> b!229562 (= lt!89827 (get!1104 lt!89830))))

(declare-fun b!229563 () Bool)

(declare-fun e!142030 () Bool)

(declare-fun e!142035 () Bool)

(assert (=> b!229563 (= e!142030 e!142035)))

(declare-fun res!105878 () Bool)

(assert (=> b!229563 (=> res!105878 e!142035)))

(declare-fun e!142029 () Bool)

(assert (=> b!229563 (= res!105878 e!142029)))

(declare-fun res!105873 () Bool)

(assert (=> b!229563 (=> (not res!105873) (not e!142029))))

(declare-fun lt!89842 () Bool)

(assert (=> b!229563 (= res!105873 (not lt!89842))))

(declare-fun lt!89826 () List!3482)

(declare-fun lt!89813 () List!3482)

(assert (=> b!229563 (= lt!89842 (= lt!89826 lt!89813))))

(declare-fun res!105868 () Bool)

(declare-fun e!142014 () Bool)

(assert (=> b!229565 (=> (not res!105868) (not e!142014))))

(declare-datatypes ((Token!1046 0))(
  ( (Token!1047 (value!22869 TokenValue!673) (rule!1208 Rule!1102) (size!2778 Int) (originalCharacters!694 List!3482)) )
))
(declare-datatypes ((List!3484 0))(
  ( (Nil!3474) (Cons!3474 (h!8871 Token!1046) (t!33472 List!3484)) )
))
(declare-fun tokens!465 () List!3484)

(declare-fun forall!783 (List!3484 Int) Bool)

(assert (=> b!229565 (= res!105868 (forall!783 tokens!465 lambda!7303))))

(declare-fun b!229566 () Bool)

(declare-fun res!105882 () Bool)

(declare-fun e!142038 () Bool)

(assert (=> b!229566 (=> res!105882 e!142038)))

(declare-datatypes ((LexerInterface!537 0))(
  ( (LexerInterfaceExt!534 (__x!2834 Int)) (Lexer!535) )
))
(declare-fun thiss!17480 () LexerInterface!537)

(declare-fun rulesProduceIndividualToken!286 (LexerInterface!537 List!3483 Token!1046) Bool)

(assert (=> b!229566 (= res!105882 (not (rulesProduceIndividualToken!286 thiss!17480 rules!1920 (h!8871 tokens!465))))))

(declare-fun b!229567 () Bool)

(assert (=> b!229567 (= e!142035 e!142038)))

(declare-fun res!105883 () Bool)

(assert (=> b!229567 (=> res!105883 e!142038)))

(declare-fun lt!89809 () List!3482)

(declare-fun lt!89843 () List!3482)

(declare-fun lt!89837 () List!3482)

(assert (=> b!229567 (= res!105883 (or (not (= lt!89837 lt!89843)) (not (= lt!89843 lt!89809)) (not (= lt!89837 lt!89809))))))

(declare-fun printList!221 (LexerInterface!537 List!3484) List!3482)

(assert (=> b!229567 (= lt!89843 (printList!221 thiss!17480 (Cons!3474 (h!8871 tokens!465) Nil!3474)))))

(declare-fun lt!89801 () BalanceConc!2256)

(declare-fun list!1340 (BalanceConc!2256) List!3482)

(assert (=> b!229567 (= lt!89837 (list!1340 lt!89801))))

(declare-datatypes ((IArray!2251 0))(
  ( (IArray!2252 (innerList!1183 List!3484)) )
))
(declare-datatypes ((Conc!1125 0))(
  ( (Node!1125 (left!2809 Conc!1125) (right!3139 Conc!1125) (csize!2480 Int) (cheight!1336 Int)) (Leaf!1790 (xs!3720 IArray!2251) (csize!2481 Int)) (Empty!1125) )
))
(declare-datatypes ((BalanceConc!2258 0))(
  ( (BalanceConc!2259 (c!43909 Conc!1125)) )
))
(declare-fun lt!89815 () BalanceConc!2258)

(declare-fun printTailRec!231 (LexerInterface!537 BalanceConc!2258 Int BalanceConc!2256) BalanceConc!2256)

(assert (=> b!229567 (= lt!89801 (printTailRec!231 thiss!17480 lt!89815 0 (BalanceConc!2257 Empty!1124)))))

(declare-fun print!268 (LexerInterface!537 BalanceConc!2258) BalanceConc!2256)

(assert (=> b!229567 (= lt!89801 (print!268 thiss!17480 lt!89815))))

(declare-fun singletonSeq!203 (Token!1046) BalanceConc!2258)

(assert (=> b!229567 (= lt!89815 (singletonSeq!203 (h!8871 tokens!465)))))

(declare-fun b!229568 () Bool)

(declare-fun e!142008 () Bool)

(assert (=> b!229568 (= e!142008 false)))

(declare-fun b!229569 () Bool)

(declare-fun e!142020 () Bool)

(declare-datatypes ((tuple2!3760 0))(
  ( (tuple2!3761 (_1!2096 Token!1046) (_2!2096 List!3482)) )
))
(declare-datatypes ((Option!646 0))(
  ( (None!645) (Some!645 (v!14336 tuple2!3760)) )
))
(declare-fun lt!89833 () Option!646)

(declare-fun get!1105 (Option!646) tuple2!3760)

(declare-fun head!797 (List!3484) Token!1046)

(assert (=> b!229569 (= e!142020 (= (_1!2096 (get!1105 lt!89833)) (head!797 tokens!465)))))

(declare-fun b!229570 () Bool)

(declare-fun res!105898 () Bool)

(declare-fun e!142007 () Bool)

(assert (=> b!229570 (=> (not res!105898) (not e!142007))))

(declare-fun isEmpty!2008 (List!3483) Bool)

(assert (=> b!229570 (= res!105898 (not (isEmpty!2008 rules!1920)))))

(declare-fun separatorToken!170 () Token!1046)

(declare-fun e!142022 () Bool)

(declare-fun e!142016 () Bool)

(declare-fun b!229571 () Bool)

(declare-fun tp!93889 () Bool)

(declare-fun inv!21 (TokenValue!673) Bool)

(assert (=> b!229571 (= e!142022 (and (inv!21 (value!22869 separatorToken!170)) e!142016 tp!93889))))

(declare-fun b!229572 () Bool)

(declare-fun e!142033 () Bool)

(declare-fun e!142002 () Bool)

(assert (=> b!229572 (= e!142033 e!142002)))

(declare-fun res!105895 () Bool)

(assert (=> b!229572 (=> res!105895 e!142002)))

(declare-fun lt!89829 () List!3484)

(declare-fun filter!45 (List!3484 Int) List!3484)

(assert (=> b!229572 (= res!105895 (not (= (filter!45 lt!89829 lambda!7303) (t!33472 tokens!465))))))

(assert (=> b!229572 (= (filter!45 lt!89829 lambda!7303) (t!33472 tokens!465))))

(declare-fun lt!89794 () BalanceConc!2256)

(declare-fun list!1341 (BalanceConc!2258) List!3484)

(declare-datatypes ((tuple2!3762 0))(
  ( (tuple2!3763 (_1!2097 BalanceConc!2258) (_2!2097 BalanceConc!2256)) )
))
(declare-fun lex!337 (LexerInterface!537 List!3483 BalanceConc!2256) tuple2!3762)

(assert (=> b!229572 (= lt!89829 (list!1341 (_1!2097 (lex!337 thiss!17480 rules!1920 lt!89794))))))

(declare-datatypes ((Unit!3994 0))(
  ( (Unit!3995) )
))
(declare-fun lt!89818 () Unit!3994)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!36 (LexerInterface!537 List!3483 List!3484 Token!1046) Unit!3994)

(assert (=> b!229572 (= lt!89818 (theoremInvertabilityFromTokensSepTokenWhenNeeded!36 thiss!17480 rules!1920 (t!33472 tokens!465) separatorToken!170))))

(declare-fun lt!89817 () Option!646)

(declare-fun lt!89806 () List!3482)

(assert (=> b!229572 (= lt!89817 (Some!645 (tuple2!3761 separatorToken!170 lt!89806)))))

(declare-fun lt!89832 () Unit!3994)

(declare-fun lt!89807 () Token!1046)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!42 (LexerInterface!537 List!3483 Token!1046 Rule!1102 List!3482 Rule!1102) Unit!3994)

(assert (=> b!229572 (= lt!89832 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!42 thiss!17480 rules!1920 separatorToken!170 (rule!1208 separatorToken!170) lt!89806 (rule!1208 lt!89807)))))

(declare-fun lt!89836 () Unit!3994)

(declare-fun e!142017 () Unit!3994)

(assert (=> b!229572 (= lt!89836 e!142017)))

(declare-fun c!43906 () Bool)

(declare-fun lt!89844 () C!2672)

(declare-fun contains!626 (List!3482 C!2672) Bool)

(declare-fun usedCharacters!56 (Regex!875) List!3482)

(assert (=> b!229572 (= c!43906 (contains!626 (usedCharacters!56 (regex!651 (rule!1208 separatorToken!170))) lt!89844))))

(declare-fun head!798 (List!3482) C!2672)

(assert (=> b!229572 (= lt!89844 (head!798 lt!89806))))

(declare-fun lt!89841 () Unit!3994)

(declare-fun e!142003 () Unit!3994)

(assert (=> b!229572 (= lt!89841 e!142003)))

(declare-fun c!43904 () Bool)

(declare-fun lt!89804 () C!2672)

(assert (=> b!229572 (= c!43904 (not (contains!626 (usedCharacters!56 (regex!651 (rule!1208 lt!89807))) lt!89804)))))

(assert (=> b!229572 (= lt!89804 (head!798 lt!89795))))

(assert (=> b!229572 e!142027))

(declare-fun res!105879 () Bool)

(assert (=> b!229572 (=> (not res!105879) (not e!142027))))

(declare-fun isDefined!496 (Option!645) Bool)

(assert (=> b!229572 (= res!105879 (isDefined!496 lt!89830))))

(declare-fun getRuleFromTag!92 (LexerInterface!537 List!3483 String!4445) Option!645)

(assert (=> b!229572 (= lt!89830 (getRuleFromTag!92 thiss!17480 rules!1920 (tag!851 (rule!1208 lt!89807))))))

(declare-fun lt!89803 () Unit!3994)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!92 (LexerInterface!537 List!3483 List!3482 Token!1046) Unit!3994)

(assert (=> b!229572 (= lt!89803 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!92 thiss!17480 rules!1920 lt!89795 lt!89807))))

(declare-fun charsOf!306 (Token!1046) BalanceConc!2256)

(assert (=> b!229572 (= lt!89795 (list!1340 (charsOf!306 lt!89807)))))

(declare-fun lt!89824 () Unit!3994)

(declare-fun forallContained!218 (List!3484 Int Token!1046) Unit!3994)

(assert (=> b!229572 (= lt!89824 (forallContained!218 tokens!465 lambda!7304 lt!89807))))

(declare-fun e!142004 () Bool)

(assert (=> b!229572 e!142004))

(declare-fun res!105891 () Bool)

(assert (=> b!229572 (=> (not res!105891) (not e!142004))))

(declare-fun lt!89825 () tuple2!3762)

(declare-fun size!2779 (BalanceConc!2258) Int)

(assert (=> b!229572 (= res!105891 (= (size!2779 (_1!2097 lt!89825)) 1))))

(declare-fun lt!89805 () BalanceConc!2256)

(assert (=> b!229572 (= lt!89825 (lex!337 thiss!17480 rules!1920 lt!89805))))

(declare-fun lt!89828 () BalanceConc!2258)

(assert (=> b!229572 (= lt!89805 (printTailRec!231 thiss!17480 lt!89828 0 (BalanceConc!2257 Empty!1124)))))

(assert (=> b!229572 (= lt!89805 (print!268 thiss!17480 lt!89828))))

(assert (=> b!229572 (= lt!89828 (singletonSeq!203 lt!89807))))

(declare-fun e!142011 () Bool)

(assert (=> b!229572 e!142011))

(declare-fun res!105877 () Bool)

(assert (=> b!229572 (=> (not res!105877) (not e!142011))))

(declare-fun lt!89797 () Option!645)

(assert (=> b!229572 (= res!105877 (isDefined!496 lt!89797))))

(assert (=> b!229572 (= lt!89797 (getRuleFromTag!92 thiss!17480 rules!1920 (tag!851 (rule!1208 separatorToken!170))))))

(declare-fun lt!89802 () Unit!3994)

(declare-fun lt!89796 () List!3482)

(assert (=> b!229572 (= lt!89802 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!92 thiss!17480 rules!1920 lt!89796 separatorToken!170))))

(declare-fun e!142025 () Bool)

(assert (=> b!229572 e!142025))

(declare-fun res!105889 () Bool)

(assert (=> b!229572 (=> (not res!105889) (not e!142025))))

(declare-fun lt!89823 () tuple2!3762)

(assert (=> b!229572 (= res!105889 (= (size!2779 (_1!2097 lt!89823)) 1))))

(declare-fun lt!89822 () BalanceConc!2256)

(assert (=> b!229572 (= lt!89823 (lex!337 thiss!17480 rules!1920 lt!89822))))

(declare-fun lt!89821 () BalanceConc!2258)

(assert (=> b!229572 (= lt!89822 (printTailRec!231 thiss!17480 lt!89821 0 (BalanceConc!2257 Empty!1124)))))

(assert (=> b!229572 (= lt!89822 (print!268 thiss!17480 lt!89821))))

(assert (=> b!229572 (= lt!89821 (singletonSeq!203 separatorToken!170))))

(assert (=> b!229572 (rulesProduceIndividualToken!286 thiss!17480 rules!1920 lt!89807)))

(declare-fun lt!89798 () Unit!3994)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!104 (LexerInterface!537 List!3483 List!3484 Token!1046) Unit!3994)

(assert (=> b!229572 (= lt!89798 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!104 thiss!17480 rules!1920 tokens!465 lt!89807))))

(assert (=> b!229572 (= lt!89807 (head!797 (t!33472 tokens!465)))))

(declare-fun lt!89793 () Unit!3994)

(declare-fun e!142031 () Unit!3994)

(assert (=> b!229572 (= lt!89793 e!142031)))

(declare-fun c!43905 () Bool)

(declare-fun isEmpty!2009 (List!3484) Bool)

(assert (=> b!229572 (= c!43905 (isEmpty!2009 (t!33472 tokens!465)))))

(declare-fun lt!89834 () List!3482)

(declare-fun maxPrefix!267 (LexerInterface!537 List!3483 List!3482) Option!646)

(assert (=> b!229572 (= lt!89817 (maxPrefix!267 thiss!17480 rules!1920 lt!89834))))

(declare-fun lt!89812 () tuple2!3760)

(assert (=> b!229572 (= lt!89834 (_2!2096 lt!89812))))

(declare-fun lt!89811 () Unit!3994)

(declare-fun lemmaSamePrefixThenSameSuffix!172 (List!3482 List!3482 List!3482 List!3482 List!3482) Unit!3994)

(assert (=> b!229572 (= lt!89811 (lemmaSamePrefixThenSameSuffix!172 lt!89809 lt!89834 lt!89809 (_2!2096 lt!89812) lt!89826))))

(assert (=> b!229572 (= lt!89812 (get!1105 (maxPrefix!267 thiss!17480 rules!1920 lt!89826)))))

(declare-fun isPrefix!347 (List!3482 List!3482) Bool)

(assert (=> b!229572 (isPrefix!347 lt!89809 lt!89813)))

(declare-fun lt!89839 () Unit!3994)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!242 (List!3482 List!3482) Unit!3994)

(assert (=> b!229572 (= lt!89839 (lemmaConcatTwoListThenFirstIsPrefix!242 lt!89809 lt!89834))))

(declare-fun e!142024 () Bool)

(assert (=> b!229572 e!142024))

(declare-fun res!105900 () Bool)

(assert (=> b!229572 (=> res!105900 e!142024)))

(assert (=> b!229572 (= res!105900 (isEmpty!2009 tokens!465))))

(declare-fun lt!89820 () Unit!3994)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!112 (LexerInterface!537 List!3483 List!3484 Token!1046) Unit!3994)

(assert (=> b!229572 (= lt!89820 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!112 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!229573 () Bool)

(declare-fun e!142009 () Bool)

(assert (=> b!229573 (= e!142009 (not e!142030))))

(declare-fun res!105885 () Bool)

(assert (=> b!229573 (=> res!105885 e!142030)))

(assert (=> b!229573 (= res!105885 (not (= lt!89806 (list!1340 lt!89794))))))

(declare-fun printWithSeparatorTokenWhenNeededRec!220 (LexerInterface!537 List!3483 BalanceConc!2258 Token!1046 Int) BalanceConc!2256)

(declare-fun seqFromList!679 (List!3484) BalanceConc!2258)

(assert (=> b!229573 (= lt!89794 (printWithSeparatorTokenWhenNeededRec!220 thiss!17480 rules!1920 (seqFromList!679 (t!33472 tokens!465)) separatorToken!170 0))))

(declare-fun lt!89831 () List!3482)

(assert (=> b!229573 (= lt!89831 lt!89813)))

(declare-fun ++!872 (List!3482 List!3482) List!3482)

(assert (=> b!229573 (= lt!89813 (++!872 lt!89809 lt!89834))))

(assert (=> b!229573 (= lt!89831 (++!872 (++!872 lt!89809 lt!89796) lt!89806))))

(declare-fun lt!89810 () Unit!3994)

(declare-fun lemmaConcatAssociativity!352 (List!3482 List!3482 List!3482) Unit!3994)

(assert (=> b!229573 (= lt!89810 (lemmaConcatAssociativity!352 lt!89809 lt!89796 lt!89806))))

(assert (=> b!229573 (= lt!89809 (list!1340 (charsOf!306 (h!8871 tokens!465))))))

(assert (=> b!229573 (= lt!89834 (++!872 lt!89796 lt!89806))))

(declare-fun printWithSeparatorTokenWhenNeededList!230 (LexerInterface!537 List!3483 List!3484 Token!1046) List!3482)

(assert (=> b!229573 (= lt!89806 (printWithSeparatorTokenWhenNeededList!230 thiss!17480 rules!1920 (t!33472 tokens!465) separatorToken!170))))

(assert (=> b!229573 (= lt!89796 (list!1340 (charsOf!306 separatorToken!170)))))

(declare-fun b!229574 () Bool)

(declare-fun isEmpty!2010 (BalanceConc!2256) Bool)

(assert (=> b!229574 (= e!142004 (isEmpty!2010 (_2!2097 lt!89825)))))

(declare-fun b!229575 () Bool)

(declare-fun res!105880 () Bool)

(assert (=> b!229575 (=> (not res!105880) (not e!142007))))

(declare-fun rulesInvariant!503 (LexerInterface!537 List!3483) Bool)

(assert (=> b!229575 (= res!105880 (rulesInvariant!503 thiss!17480 rules!1920))))

(declare-fun tp!93886 () Bool)

(declare-fun e!142023 () Bool)

(declare-fun e!142015 () Bool)

(declare-fun b!229576 () Bool)

(declare-fun inv!4320 (String!4445) Bool)

(declare-fun inv!4323 (TokenValueInjection!1118) Bool)

(assert (=> b!229576 (= e!142015 (and tp!93886 (inv!4320 (tag!851 (rule!1208 (h!8871 tokens!465)))) (inv!4323 (transformation!651 (rule!1208 (h!8871 tokens!465)))) e!142023))))

(declare-fun b!229577 () Bool)

(declare-fun res!105892 () Bool)

(assert (=> b!229577 (=> (not res!105892) (not e!142009))))

(declare-fun lt!89840 () List!3482)

(declare-fun seqFromList!680 (List!3482) BalanceConc!2256)

(assert (=> b!229577 (= res!105892 (= (list!1340 (seqFromList!680 lt!89826)) lt!89840))))

(declare-fun b!229578 () Bool)

(declare-fun e!142019 () Bool)

(assert (=> b!229578 (= e!142019 e!142033)))

(declare-fun res!105888 () Bool)

(assert (=> b!229578 (=> res!105888 e!142033)))

(assert (=> b!229578 (= res!105888 (not lt!89842))))

(declare-fun e!142018 () Bool)

(assert (=> b!229578 e!142018))

(declare-fun res!105897 () Bool)

(assert (=> b!229578 (=> (not res!105897) (not e!142018))))

(declare-fun lt!89800 () tuple2!3760)

(assert (=> b!229578 (= res!105897 (= (_1!2096 lt!89800) (h!8871 tokens!465)))))

(declare-fun lt!89819 () Option!646)

(assert (=> b!229578 (= lt!89800 (get!1105 lt!89819))))

(declare-fun isDefined!497 (Option!646) Bool)

(assert (=> b!229578 (isDefined!497 lt!89819)))

(assert (=> b!229578 (= lt!89819 (maxPrefix!267 thiss!17480 rules!1920 lt!89809))))

(declare-fun b!229579 () Bool)

(assert (=> b!229579 (= e!142025 (isEmpty!2010 (_2!2097 lt!89823)))))

(declare-fun b!229580 () Bool)

(declare-fun res!105890 () Bool)

(assert (=> b!229580 (=> (not res!105890) (not e!142025))))

(declare-fun apply!628 (BalanceConc!2258 Int) Token!1046)

(assert (=> b!229580 (= res!105890 (= (apply!628 (_1!2097 lt!89823) 0) separatorToken!170))))

(declare-fun b!229581 () Bool)

(declare-fun Unit!3996 () Unit!3994)

(assert (=> b!229581 (= e!142031 Unit!3996)))

(declare-fun b!229582 () Bool)

(assert (=> b!229582 (= e!142007 e!142014)))

(declare-fun res!105887 () Bool)

(assert (=> b!229582 (=> (not res!105887) (not e!142014))))

(declare-fun lt!89816 () BalanceConc!2258)

(declare-fun rulesProduceEachTokenIndividually!329 (LexerInterface!537 List!3483 BalanceConc!2258) Bool)

(assert (=> b!229582 (= res!105887 (rulesProduceEachTokenIndividually!329 thiss!17480 rules!1920 lt!89816))))

(assert (=> b!229582 (= lt!89816 (seqFromList!679 tokens!465))))

(declare-fun b!229583 () Bool)

(declare-fun tp!93879 () Bool)

(declare-fun e!142028 () Bool)

(declare-fun e!142001 () Bool)

(declare-fun inv!4324 (Token!1046) Bool)

(assert (=> b!229583 (= e!142028 (and (inv!4324 (h!8871 tokens!465)) e!142001 tp!93879))))

(declare-fun b!229584 () Bool)

(declare-fun res!105893 () Bool)

(assert (=> b!229584 (=> (not res!105893) (not e!142014))))

(declare-fun sepAndNonSepRulesDisjointChars!240 (List!3483 List!3483) Bool)

(assert (=> b!229584 (= res!105893 (sepAndNonSepRulesDisjointChars!240 rules!1920 rules!1920))))

(declare-fun b!229585 () Bool)

(assert (=> b!229585 (= e!142018 (matchR!213 (regex!651 (rule!1208 (h!8871 tokens!465))) lt!89809))))

(declare-fun b!229564 () Bool)

(declare-fun e!142032 () Bool)

(declare-fun lt!89835 () Rule!1102)

(assert (=> b!229564 (= e!142032 (= (rule!1208 separatorToken!170) lt!89835))))

(declare-fun res!105881 () Bool)

(assert (=> start!24502 (=> (not res!105881) (not e!142007))))

(assert (=> start!24502 (= res!105881 ((_ is Lexer!535) thiss!17480))))

(assert (=> start!24502 e!142007))

(assert (=> start!24502 true))

(declare-fun e!142034 () Bool)

(assert (=> start!24502 e!142034))

(assert (=> start!24502 (and (inv!4324 separatorToken!170) e!142022)))

(assert (=> start!24502 e!142028))

(assert (=> b!229586 (= e!142023 (and tp!93877 tp!93888))))

(declare-fun b!229587 () Bool)

(declare-fun Unit!3997 () Unit!3994)

(assert (=> b!229587 (= e!142003 Unit!3997)))

(declare-fun lt!89799 () Unit!3994)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!50 (Regex!875 List!3482 C!2672) Unit!3994)

(assert (=> b!229587 (= lt!89799 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!50 (regex!651 (rule!1208 lt!89807)) lt!89795 lt!89804))))

(declare-fun res!105870 () Bool)

(assert (=> b!229587 (= res!105870 (not (matchR!213 (regex!651 (rule!1208 lt!89807)) lt!89795)))))

(assert (=> b!229587 (=> (not res!105870) (not e!142008))))

(assert (=> b!229587 e!142008))

(declare-fun b!229588 () Bool)

(declare-fun e!142036 () Bool)

(declare-fun tp!93878 () Bool)

(assert (=> b!229588 (= e!142034 (and e!142036 tp!93878))))

(declare-fun b!229589 () Bool)

(declare-fun res!105896 () Bool)

(assert (=> b!229589 (=> (not res!105896) (not e!142014))))

(assert (=> b!229589 (= res!105896 (isSeparator!651 (rule!1208 separatorToken!170)))))

(declare-fun b!229590 () Bool)

(assert (=> b!229590 (= e!142014 e!142009)))

(declare-fun res!105886 () Bool)

(assert (=> b!229590 (=> (not res!105886) (not e!142009))))

(assert (=> b!229590 (= res!105886 (= lt!89826 lt!89840))))

(assert (=> b!229590 (= lt!89840 (list!1340 (printWithSeparatorTokenWhenNeededRec!220 thiss!17480 rules!1920 lt!89816 separatorToken!170 0)))))

(assert (=> b!229590 (= lt!89826 (printWithSeparatorTokenWhenNeededList!230 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!229591 () Bool)

(declare-fun res!105867 () Bool)

(assert (=> b!229591 (=> (not res!105867) (not e!142014))))

(assert (=> b!229591 (= res!105867 ((_ is Cons!3474) tokens!465))))

(declare-fun b!229592 () Bool)

(assert (=> b!229592 (= e!142024 e!142020)))

(declare-fun res!105874 () Bool)

(assert (=> b!229592 (=> (not res!105874) (not e!142020))))

(assert (=> b!229592 (= res!105874 (isDefined!497 lt!89833))))

(assert (=> b!229592 (= lt!89833 (maxPrefix!267 thiss!17480 rules!1920 lt!89826))))

(declare-fun b!229593 () Bool)

(declare-fun tp!93881 () Bool)

(declare-fun e!142012 () Bool)

(assert (=> b!229593 (= e!142036 (and tp!93881 (inv!4320 (tag!851 (h!8870 rules!1920))) (inv!4323 (transformation!651 (h!8870 rules!1920))) e!142012))))

(declare-fun b!229594 () Bool)

(declare-fun res!105876 () Bool)

(assert (=> b!229594 (=> res!105876 e!142002)))

(declare-datatypes ((tuple2!3764 0))(
  ( (tuple2!3765 (_1!2098 List!3484) (_2!2098 List!3482)) )
))
(declare-fun lexList!165 (LexerInterface!537 List!3483 List!3482) tuple2!3764)

(assert (=> b!229594 (= res!105876 (not (= (filter!45 (_1!2098 (lexList!165 thiss!17480 rules!1920 lt!89806)) lambda!7303) (t!33472 tokens!465))))))

(declare-fun b!229595 () Bool)

(declare-fun res!105869 () Bool)

(assert (=> b!229595 (=> (not res!105869) (not e!142018))))

(declare-fun isEmpty!2011 (List!3482) Bool)

(assert (=> b!229595 (= res!105869 (isEmpty!2011 (_2!2096 lt!89800)))))

(declare-fun b!229596 () Bool)

(declare-fun res!105899 () Bool)

(assert (=> b!229596 (=> (not res!105899) (not e!142014))))

(assert (=> b!229596 (= res!105899 (rulesProduceIndividualToken!286 thiss!17480 rules!1920 separatorToken!170))))

(assert (=> b!229597 (= e!142038 e!142019)))

(declare-fun res!105871 () Bool)

(assert (=> b!229597 (=> res!105871 e!142019)))

(declare-datatypes ((tuple2!3766 0))(
  ( (tuple2!3767 (_1!2099 Token!1046) (_2!2099 BalanceConc!2256)) )
))
(declare-datatypes ((Option!647 0))(
  ( (None!646) (Some!646 (v!14337 tuple2!3766)) )
))
(declare-fun isDefined!498 (Option!647) Bool)

(declare-fun maxPrefixZipperSequence!230 (LexerInterface!537 List!3483 BalanceConc!2256) Option!647)

(assert (=> b!229597 (= res!105871 (not (isDefined!498 (maxPrefixZipperSequence!230 thiss!17480 rules!1920 (seqFromList!680 (originalCharacters!694 (h!8871 tokens!465)))))))))

(declare-fun lt!89814 () Unit!3994)

(assert (=> b!229597 (= lt!89814 (forallContained!218 tokens!465 lambda!7304 (h!8871 tokens!465)))))

(assert (=> b!229597 (= lt!89809 (originalCharacters!694 (h!8871 tokens!465)))))

(assert (=> b!229598 (= e!142012 (and tp!93883 tp!93885))))

(declare-fun b!229599 () Bool)

(declare-fun tp!93887 () Bool)

(assert (=> b!229599 (= e!142001 (and (inv!21 (value!22869 (h!8871 tokens!465))) e!142015 tp!93887))))

(declare-fun b!229600 () Bool)

(assert (=> b!229600 (= e!142037 (= (rule!1208 lt!89807) lt!89827))))

(declare-fun b!229601 () Bool)

(declare-fun res!105875 () Bool)

(assert (=> b!229601 (=> res!105875 e!142038)))

(declare-fun isEmpty!2012 (BalanceConc!2258) Bool)

(assert (=> b!229601 (= res!105875 (isEmpty!2012 (_1!2097 (lex!337 thiss!17480 rules!1920 (seqFromList!680 lt!89809)))))))

(declare-fun b!229602 () Bool)

(declare-fun Unit!3998 () Unit!3994)

(assert (=> b!229602 (= e!142017 Unit!3998)))

(declare-fun lt!89808 () Unit!3994)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!44 (LexerInterface!537 List!3483 List!3483 Rule!1102 Rule!1102 C!2672) Unit!3994)

(assert (=> b!229602 (= lt!89808 (lemmaSepRuleNotContainsCharContainedInANonSepRule!44 thiss!17480 rules!1920 rules!1920 (rule!1208 lt!89807) (rule!1208 separatorToken!170) lt!89844))))

(assert (=> b!229602 false))

(declare-fun b!229603 () Bool)

(assert (=> b!229603 (= e!142002 true)))

(declare-fun lt!89838 () List!3484)

(assert (=> b!229603 (= lt!89838 (filter!45 (_1!2098 (lexList!165 thiss!17480 rules!1920 lt!89826)) lambda!7303))))

(declare-fun e!142005 () Bool)

(assert (=> b!229604 (= e!142005 (and tp!93882 tp!93880))))

(declare-fun b!229605 () Bool)

(assert (=> b!229605 (= e!142029 (not (= lt!89826 (++!872 lt!89809 lt!89806))))))

(declare-fun b!229606 () Bool)

(declare-fun Unit!3999 () Unit!3994)

(assert (=> b!229606 (= e!142031 Unit!3999)))

(assert (=> b!229606 false))

(declare-fun b!229607 () Bool)

(declare-fun Unit!4000 () Unit!3994)

(assert (=> b!229607 (= e!142003 Unit!4000)))

(declare-fun tp!93884 () Bool)

(declare-fun b!229608 () Bool)

(assert (=> b!229608 (= e!142016 (and tp!93884 (inv!4320 (tag!851 (rule!1208 separatorToken!170))) (inv!4323 (transformation!651 (rule!1208 separatorToken!170))) e!142005))))

(declare-fun b!229609 () Bool)

(assert (=> b!229609 (= e!142011 e!142032)))

(declare-fun res!105894 () Bool)

(assert (=> b!229609 (=> (not res!105894) (not e!142032))))

(assert (=> b!229609 (= res!105894 (matchR!213 (regex!651 lt!89835) lt!89796))))

(assert (=> b!229609 (= lt!89835 (get!1104 lt!89797))))

(declare-fun b!229610 () Bool)

(declare-fun res!105884 () Bool)

(assert (=> b!229610 (=> (not res!105884) (not e!142004))))

(assert (=> b!229610 (= res!105884 (= (apply!628 (_1!2097 lt!89825) 0) lt!89807))))

(declare-fun b!229611 () Bool)

(declare-fun Unit!4001 () Unit!3994)

(assert (=> b!229611 (= e!142017 Unit!4001)))

(assert (= (and start!24502 res!105881) b!229570))

(assert (= (and b!229570 res!105898) b!229575))

(assert (= (and b!229575 res!105880) b!229582))

(assert (= (and b!229582 res!105887) b!229596))

(assert (= (and b!229596 res!105899) b!229589))

(assert (= (and b!229589 res!105896) b!229565))

(assert (= (and b!229565 res!105868) b!229584))

(assert (= (and b!229584 res!105893) b!229591))

(assert (= (and b!229591 res!105867) b!229590))

(assert (= (and b!229590 res!105886) b!229577))

(assert (= (and b!229577 res!105892) b!229573))

(assert (= (and b!229573 (not res!105885)) b!229563))

(assert (= (and b!229563 res!105873) b!229605))

(assert (= (and b!229563 (not res!105878)) b!229567))

(assert (= (and b!229567 (not res!105883)) b!229566))

(assert (= (and b!229566 (not res!105882)) b!229601))

(assert (= (and b!229601 (not res!105875)) b!229597))

(assert (= (and b!229597 (not res!105871)) b!229578))

(assert (= (and b!229578 res!105897) b!229595))

(assert (= (and b!229595 res!105869) b!229585))

(assert (= (and b!229578 (not res!105888)) b!229572))

(assert (= (and b!229572 (not res!105900)) b!229592))

(assert (= (and b!229592 res!105874) b!229569))

(assert (= (and b!229572 c!43905) b!229606))

(assert (= (and b!229572 (not c!43905)) b!229581))

(assert (= (and b!229572 res!105889) b!229580))

(assert (= (and b!229580 res!105890) b!229579))

(assert (= (and b!229572 res!105877) b!229609))

(assert (= (and b!229609 res!105894) b!229564))

(assert (= (and b!229572 res!105891) b!229610))

(assert (= (and b!229610 res!105884) b!229574))

(assert (= (and b!229572 res!105879) b!229562))

(assert (= (and b!229562 res!105872) b!229600))

(assert (= (and b!229572 c!43904) b!229587))

(assert (= (and b!229572 (not c!43904)) b!229607))

(assert (= (and b!229587 res!105870) b!229568))

(assert (= (and b!229572 c!43906) b!229602))

(assert (= (and b!229572 (not c!43906)) b!229611))

(assert (= (and b!229572 (not res!105895)) b!229594))

(assert (= (and b!229594 (not res!105876)) b!229603))

(assert (= b!229593 b!229598))

(assert (= b!229588 b!229593))

(assert (= (and start!24502 ((_ is Cons!3473) rules!1920)) b!229588))

(assert (= b!229608 b!229604))

(assert (= b!229571 b!229608))

(assert (= start!24502 b!229571))

(assert (= b!229576 b!229586))

(assert (= b!229599 b!229576))

(assert (= b!229583 b!229599))

(assert (= (and start!24502 ((_ is Cons!3474) tokens!465)) b!229583))

(declare-fun m!270787 () Bool)

(assert (=> b!229602 m!270787))

(declare-fun m!270789 () Bool)

(assert (=> b!229573 m!270789))

(declare-fun m!270791 () Bool)

(assert (=> b!229573 m!270791))

(declare-fun m!270793 () Bool)

(assert (=> b!229573 m!270793))

(declare-fun m!270795 () Bool)

(assert (=> b!229573 m!270795))

(declare-fun m!270797 () Bool)

(assert (=> b!229573 m!270797))

(declare-fun m!270799 () Bool)

(assert (=> b!229573 m!270799))

(declare-fun m!270801 () Bool)

(assert (=> b!229573 m!270801))

(declare-fun m!270803 () Bool)

(assert (=> b!229573 m!270803))

(declare-fun m!270805 () Bool)

(assert (=> b!229573 m!270805))

(assert (=> b!229573 m!270803))

(assert (=> b!229573 m!270795))

(declare-fun m!270807 () Bool)

(assert (=> b!229573 m!270807))

(assert (=> b!229573 m!270797))

(declare-fun m!270809 () Bool)

(assert (=> b!229573 m!270809))

(declare-fun m!270811 () Bool)

(assert (=> b!229573 m!270811))

(assert (=> b!229573 m!270789))

(declare-fun m!270813 () Bool)

(assert (=> b!229573 m!270813))

(declare-fun m!270815 () Bool)

(assert (=> b!229594 m!270815))

(declare-fun m!270817 () Bool)

(assert (=> b!229594 m!270817))

(declare-fun m!270819 () Bool)

(assert (=> b!229599 m!270819))

(declare-fun m!270821 () Bool)

(assert (=> b!229569 m!270821))

(declare-fun m!270823 () Bool)

(assert (=> b!229569 m!270823))

(declare-fun m!270825 () Bool)

(assert (=> b!229609 m!270825))

(declare-fun m!270827 () Bool)

(assert (=> b!229609 m!270827))

(declare-fun m!270829 () Bool)

(assert (=> b!229593 m!270829))

(declare-fun m!270831 () Bool)

(assert (=> b!229593 m!270831))

(declare-fun m!270833 () Bool)

(assert (=> b!229610 m!270833))

(declare-fun m!270835 () Bool)

(assert (=> b!229601 m!270835))

(assert (=> b!229601 m!270835))

(declare-fun m!270837 () Bool)

(assert (=> b!229601 m!270837))

(declare-fun m!270839 () Bool)

(assert (=> b!229601 m!270839))

(declare-fun m!270841 () Bool)

(assert (=> b!229595 m!270841))

(declare-fun m!270843 () Bool)

(assert (=> b!229578 m!270843))

(declare-fun m!270845 () Bool)

(assert (=> b!229578 m!270845))

(declare-fun m!270847 () Bool)

(assert (=> b!229578 m!270847))

(declare-fun m!270849 () Bool)

(assert (=> b!229582 m!270849))

(declare-fun m!270851 () Bool)

(assert (=> b!229582 m!270851))

(declare-fun m!270853 () Bool)

(assert (=> b!229579 m!270853))

(declare-fun m!270855 () Bool)

(assert (=> b!229592 m!270855))

(declare-fun m!270857 () Bool)

(assert (=> b!229592 m!270857))

(declare-fun m!270859 () Bool)

(assert (=> b!229603 m!270859))

(declare-fun m!270861 () Bool)

(assert (=> b!229603 m!270861))

(declare-fun m!270863 () Bool)

(assert (=> b!229608 m!270863))

(declare-fun m!270865 () Bool)

(assert (=> b!229608 m!270865))

(declare-fun m!270867 () Bool)

(assert (=> b!229584 m!270867))

(declare-fun m!270869 () Bool)

(assert (=> start!24502 m!270869))

(declare-fun m!270871 () Bool)

(assert (=> b!229597 m!270871))

(assert (=> b!229597 m!270871))

(declare-fun m!270873 () Bool)

(assert (=> b!229597 m!270873))

(assert (=> b!229597 m!270873))

(declare-fun m!270875 () Bool)

(assert (=> b!229597 m!270875))

(declare-fun m!270877 () Bool)

(assert (=> b!229597 m!270877))

(declare-fun m!270879 () Bool)

(assert (=> b!229562 m!270879))

(declare-fun m!270881 () Bool)

(assert (=> b!229562 m!270881))

(declare-fun m!270883 () Bool)

(assert (=> b!229572 m!270883))

(declare-fun m!270885 () Bool)

(assert (=> b!229572 m!270885))

(declare-fun m!270887 () Bool)

(assert (=> b!229572 m!270887))

(declare-fun m!270889 () Bool)

(assert (=> b!229572 m!270889))

(declare-fun m!270891 () Bool)

(assert (=> b!229572 m!270891))

(declare-fun m!270893 () Bool)

(assert (=> b!229572 m!270893))

(declare-fun m!270895 () Bool)

(assert (=> b!229572 m!270895))

(declare-fun m!270897 () Bool)

(assert (=> b!229572 m!270897))

(declare-fun m!270899 () Bool)

(assert (=> b!229572 m!270899))

(declare-fun m!270901 () Bool)

(assert (=> b!229572 m!270901))

(declare-fun m!270903 () Bool)

(assert (=> b!229572 m!270903))

(declare-fun m!270905 () Bool)

(assert (=> b!229572 m!270905))

(declare-fun m!270907 () Bool)

(assert (=> b!229572 m!270907))

(declare-fun m!270909 () Bool)

(assert (=> b!229572 m!270909))

(declare-fun m!270911 () Bool)

(assert (=> b!229572 m!270911))

(assert (=> b!229572 m!270905))

(assert (=> b!229572 m!270857))

(declare-fun m!270913 () Bool)

(assert (=> b!229572 m!270913))

(declare-fun m!270915 () Bool)

(assert (=> b!229572 m!270915))

(declare-fun m!270917 () Bool)

(assert (=> b!229572 m!270917))

(declare-fun m!270919 () Bool)

(assert (=> b!229572 m!270919))

(declare-fun m!270921 () Bool)

(assert (=> b!229572 m!270921))

(declare-fun m!270923 () Bool)

(assert (=> b!229572 m!270923))

(declare-fun m!270925 () Bool)

(assert (=> b!229572 m!270925))

(assert (=> b!229572 m!270899))

(declare-fun m!270927 () Bool)

(assert (=> b!229572 m!270927))

(declare-fun m!270929 () Bool)

(assert (=> b!229572 m!270929))

(declare-fun m!270931 () Bool)

(assert (=> b!229572 m!270931))

(declare-fun m!270933 () Bool)

(assert (=> b!229572 m!270933))

(declare-fun m!270935 () Bool)

(assert (=> b!229572 m!270935))

(assert (=> b!229572 m!270857))

(declare-fun m!270937 () Bool)

(assert (=> b!229572 m!270937))

(declare-fun m!270939 () Bool)

(assert (=> b!229572 m!270939))

(declare-fun m!270941 () Bool)

(assert (=> b!229572 m!270941))

(declare-fun m!270943 () Bool)

(assert (=> b!229572 m!270943))

(assert (=> b!229572 m!270897))

(declare-fun m!270945 () Bool)

(assert (=> b!229572 m!270945))

(assert (=> b!229572 m!270937))

(declare-fun m!270947 () Bool)

(assert (=> b!229572 m!270947))

(declare-fun m!270949 () Bool)

(assert (=> b!229572 m!270949))

(declare-fun m!270951 () Bool)

(assert (=> b!229572 m!270951))

(declare-fun m!270953 () Bool)

(assert (=> b!229572 m!270953))

(declare-fun m!270955 () Bool)

(assert (=> b!229572 m!270955))

(declare-fun m!270957 () Bool)

(assert (=> b!229572 m!270957))

(declare-fun m!270959 () Bool)

(assert (=> b!229572 m!270959))

(declare-fun m!270961 () Bool)

(assert (=> b!229572 m!270961))

(declare-fun m!270963 () Bool)

(assert (=> b!229572 m!270963))

(declare-fun m!270965 () Bool)

(assert (=> b!229570 m!270965))

(declare-fun m!270967 () Bool)

(assert (=> b!229567 m!270967))

(declare-fun m!270969 () Bool)

(assert (=> b!229567 m!270969))

(declare-fun m!270971 () Bool)

(assert (=> b!229567 m!270971))

(declare-fun m!270973 () Bool)

(assert (=> b!229567 m!270973))

(declare-fun m!270975 () Bool)

(assert (=> b!229567 m!270975))

(declare-fun m!270977 () Bool)

(assert (=> b!229585 m!270977))

(declare-fun m!270979 () Bool)

(assert (=> b!229605 m!270979))

(declare-fun m!270981 () Bool)

(assert (=> b!229571 m!270981))

(declare-fun m!270983 () Bool)

(assert (=> b!229590 m!270983))

(assert (=> b!229590 m!270983))

(declare-fun m!270985 () Bool)

(assert (=> b!229590 m!270985))

(declare-fun m!270987 () Bool)

(assert (=> b!229590 m!270987))

(declare-fun m!270989 () Bool)

(assert (=> b!229566 m!270989))

(declare-fun m!270991 () Bool)

(assert (=> b!229574 m!270991))

(declare-fun m!270993 () Bool)

(assert (=> b!229587 m!270993))

(declare-fun m!270995 () Bool)

(assert (=> b!229587 m!270995))

(declare-fun m!270997 () Bool)

(assert (=> b!229583 m!270997))

(declare-fun m!270999 () Bool)

(assert (=> b!229580 m!270999))

(declare-fun m!271001 () Bool)

(assert (=> b!229577 m!271001))

(assert (=> b!229577 m!271001))

(declare-fun m!271003 () Bool)

(assert (=> b!229577 m!271003))

(declare-fun m!271005 () Bool)

(assert (=> b!229576 m!271005))

(declare-fun m!271007 () Bool)

(assert (=> b!229576 m!271007))

(declare-fun m!271009 () Bool)

(assert (=> b!229596 m!271009))

(declare-fun m!271011 () Bool)

(assert (=> b!229565 m!271011))

(declare-fun m!271013 () Bool)

(assert (=> b!229575 m!271013))

(check-sat (not b_next!8617) (not b!229595) (not b!229574) b_and!17027 (not b!229582) (not b!229590) (not b!229609) (not b!229566) b_and!17023 (not start!24502) (not b!229579) b_and!17029 (not b!229596) (not b!229583) (not b!229597) (not b_next!8619) b_and!17031 (not b_next!8611) (not b!229573) (not b_next!8609) (not b!229602) (not b!229562) (not b!229569) (not b!229605) (not b!229567) (not b!229599) (not b!229608) (not b!229576) (not b!229610) (not b!229603) (not b!229601) (not b!229580) (not b_next!8613) (not b!229592) (not b!229571) (not b!229575) (not b!229620) (not b_next!8615) (not b!229572) b_and!17025 b_and!17021 (not b!229588) (not b!229593) (not b!229578) (not b!229585) (not b!229584) (not b!229570) (not b!229594) (not b!229587) (not b!229577) (not b!229565))
(check-sat b_and!17023 (not b_next!8617) b_and!17029 (not b_next!8609) b_and!17027 (not b_next!8613) (not b_next!8615) b_and!17025 b_and!17021 (not b_next!8619) b_and!17031 (not b_next!8611))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22290 () Bool)

(assert start!22290)

(declare-fun b!207656 () Bool)

(declare-fun b_free!8033 () Bool)

(declare-fun b_next!8033 () Bool)

(assert (=> b!207656 (= b_free!8033 (not b_next!8033))))

(declare-fun tp!90990 () Bool)

(declare-fun b_and!15005 () Bool)

(assert (=> b!207656 (= tp!90990 b_and!15005)))

(declare-fun b_free!8035 () Bool)

(declare-fun b_next!8035 () Bool)

(assert (=> b!207656 (= b_free!8035 (not b_next!8035))))

(declare-fun tp!90988 () Bool)

(declare-fun b_and!15007 () Bool)

(assert (=> b!207656 (= tp!90988 b_and!15007)))

(declare-fun b!207661 () Bool)

(declare-fun b_free!8037 () Bool)

(declare-fun b_next!8037 () Bool)

(assert (=> b!207661 (= b_free!8037 (not b_next!8037))))

(declare-fun tp!90995 () Bool)

(declare-fun b_and!15009 () Bool)

(assert (=> b!207661 (= tp!90995 b_and!15009)))

(declare-fun b_free!8039 () Bool)

(declare-fun b_next!8039 () Bool)

(assert (=> b!207661 (= b_free!8039 (not b_next!8039))))

(declare-fun tp!90997 () Bool)

(declare-fun b_and!15011 () Bool)

(assert (=> b!207661 (= tp!90997 b_and!15011)))

(declare-fun b!207651 () Bool)

(declare-fun b_free!8041 () Bool)

(declare-fun b_next!8041 () Bool)

(assert (=> b!207651 (= b_free!8041 (not b_next!8041))))

(declare-fun tp!90987 () Bool)

(declare-fun b_and!15013 () Bool)

(assert (=> b!207651 (= tp!90987 b_and!15013)))

(declare-fun b_free!8043 () Bool)

(declare-fun b_next!8043 () Bool)

(assert (=> b!207651 (= b_free!8043 (not b_next!8043))))

(declare-fun tp!90985 () Bool)

(declare-fun b_and!15015 () Bool)

(assert (=> b!207651 (= tp!90985 b_and!15015)))

(declare-fun bs!21030 () Bool)

(declare-fun b!207691 () Bool)

(declare-fun b!207657 () Bool)

(assert (= bs!21030 (and b!207691 b!207657)))

(declare-fun lambda!6380 () Int)

(declare-fun lambda!6379 () Int)

(assert (=> bs!21030 (not (= lambda!6380 lambda!6379))))

(declare-fun b!207704 () Bool)

(declare-fun e!127977 () Bool)

(assert (=> b!207704 (= e!127977 true)))

(declare-fun b!207703 () Bool)

(declare-fun e!127976 () Bool)

(assert (=> b!207703 (= e!127976 e!127977)))

(declare-fun b!207702 () Bool)

(declare-fun e!127975 () Bool)

(assert (=> b!207702 (= e!127975 e!127976)))

(assert (=> b!207691 e!127975))

(assert (= b!207703 b!207704))

(assert (= b!207702 b!207703))

(declare-datatypes ((List!3325 0))(
  ( (Nil!3315) (Cons!3315 (h!8712 (_ BitVec 16)) (t!31077 List!3325)) )
))
(declare-datatypes ((TokenValue!637 0))(
  ( (FloatLiteralValue!1274 (text!4904 List!3325)) (TokenValueExt!636 (__x!2761 Int)) (Broken!3185 (value!21817 List!3325)) (Object!646) (End!637) (Def!637) (Underscore!637) (Match!637) (Else!637) (Error!637) (Case!637) (If!637) (Extends!637) (Abstract!637) (Class!637) (Val!637) (DelimiterValue!1274 (del!697 List!3325)) (KeywordValue!643 (value!21818 List!3325)) (CommentValue!1274 (value!21819 List!3325)) (WhitespaceValue!1274 (value!21820 List!3325)) (IndentationValue!637 (value!21821 List!3325)) (String!4264) (Int32!637) (Broken!3186 (value!21822 List!3325)) (Boolean!638) (Unit!3409) (OperatorValue!640 (op!697 List!3325)) (IdentifierValue!1274 (value!21823 List!3325)) (IdentifierValue!1275 (value!21824 List!3325)) (WhitespaceValue!1275 (value!21825 List!3325)) (True!1274) (False!1274) (Broken!3187 (value!21826 List!3325)) (Broken!3188 (value!21827 List!3325)) (True!1275) (RightBrace!637) (RightBracket!637) (Colon!637) (Null!637) (Comma!637) (LeftBracket!637) (False!1275) (LeftBrace!637) (ImaginaryLiteralValue!637 (text!4905 List!3325)) (StringLiteralValue!1911 (value!21828 List!3325)) (EOFValue!637 (value!21829 List!3325)) (IdentValue!637 (value!21830 List!3325)) (DelimiterValue!1275 (value!21831 List!3325)) (DedentValue!637 (value!21832 List!3325)) (NewLineValue!637 (value!21833 List!3325)) (IntegerValue!1911 (value!21834 (_ BitVec 32)) (text!4906 List!3325)) (IntegerValue!1912 (value!21835 Int) (text!4907 List!3325)) (Times!637) (Or!637) (Equal!637) (Minus!637) (Broken!3189 (value!21836 List!3325)) (And!637) (Div!637) (LessEqual!637) (Mod!637) (Concat!1476) (Not!637) (Plus!637) (SpaceValue!637 (value!21837 List!3325)) (IntegerValue!1913 (value!21838 Int) (text!4908 List!3325)) (StringLiteralValue!1912 (text!4909 List!3325)) (FloatLiteralValue!1275 (text!4910 List!3325)) (BytesLiteralValue!637 (value!21839 List!3325)) (CommentValue!1275 (value!21840 List!3325)) (StringLiteralValue!1913 (value!21841 List!3325)) (ErrorTokenValue!637 (msg!698 List!3325)) )
))
(declare-datatypes ((C!2600 0))(
  ( (C!2601 (val!1186 Int)) )
))
(declare-datatypes ((List!3326 0))(
  ( (Nil!3316) (Cons!3316 (h!8713 C!2600) (t!31078 List!3326)) )
))
(declare-datatypes ((IArray!2105 0))(
  ( (IArray!2106 (innerList!1110 List!3326)) )
))
(declare-datatypes ((Conc!1052 0))(
  ( (Node!1052 (left!2646 Conc!1052) (right!2976 Conc!1052) (csize!2334 Int) (cheight!1263 Int)) (Leaf!1699 (xs!3647 IArray!2105) (csize!2335 Int)) (Empty!1052) )
))
(declare-datatypes ((BalanceConc!2112 0))(
  ( (BalanceConc!2113 (c!39669 Conc!1052)) )
))
(declare-datatypes ((TokenValueInjection!1046 0))(
  ( (TokenValueInjection!1047 (toValue!1298 Int) (toChars!1157 Int)) )
))
(declare-datatypes ((String!4265 0))(
  ( (String!4266 (value!21842 String)) )
))
(declare-datatypes ((Regex!839 0))(
  ( (ElementMatch!839 (c!39670 C!2600)) (Concat!1477 (regOne!2190 Regex!839) (regTwo!2190 Regex!839)) (EmptyExpr!839) (Star!839 (reg!1168 Regex!839)) (EmptyLang!839) (Union!839 (regOne!2191 Regex!839) (regTwo!2191 Regex!839)) )
))
(declare-datatypes ((Rule!1030 0))(
  ( (Rule!1031 (regex!615 Regex!839) (tag!803 String!4265) (isSeparator!615 Bool) (transformation!615 TokenValueInjection!1046)) )
))
(declare-datatypes ((List!3327 0))(
  ( (Nil!3317) (Cons!3317 (h!8714 Rule!1030) (t!31079 List!3327)) )
))
(declare-fun rules!1920 () List!3327)

(get-info :version)

(assert (= (and b!207691 ((_ is Cons!3317) rules!1920)) b!207702))

(declare-fun order!2189 () Int)

(declare-fun order!2191 () Int)

(declare-fun dynLambda!1473 (Int Int) Int)

(declare-fun dynLambda!1474 (Int Int) Int)

(assert (=> b!207704 (< (dynLambda!1473 order!2189 (toValue!1298 (transformation!615 (h!8714 rules!1920)))) (dynLambda!1474 order!2191 lambda!6380))))

(declare-fun order!2193 () Int)

(declare-fun dynLambda!1475 (Int Int) Int)

(assert (=> b!207704 (< (dynLambda!1475 order!2193 (toChars!1157 (transformation!615 (h!8714 rules!1920)))) (dynLambda!1474 order!2191 lambda!6380))))

(assert (=> b!207691 true))

(declare-fun b!207645 () Bool)

(declare-fun e!127937 () Bool)

(declare-datatypes ((Token!974 0))(
  ( (Token!975 (value!21843 TokenValue!637) (rule!1142 Rule!1030) (size!2652 Int) (originalCharacters!658 List!3326)) )
))
(declare-datatypes ((List!3328 0))(
  ( (Nil!3318) (Cons!3318 (h!8715 Token!974) (t!31080 List!3328)) )
))
(declare-fun tokens!465 () List!3328)

(declare-fun lt!75738 () List!3326)

(declare-fun matchR!177 (Regex!839 List!3326) Bool)

(assert (=> b!207645 (= e!127937 (matchR!177 (regex!615 (rule!1142 (h!8715 tokens!465))) lt!75738))))

(declare-fun b!207646 () Bool)

(declare-fun e!127953 () Bool)

(declare-datatypes ((IArray!2107 0))(
  ( (IArray!2108 (innerList!1111 List!3328)) )
))
(declare-datatypes ((Conc!1053 0))(
  ( (Node!1053 (left!2647 Conc!1053) (right!2977 Conc!1053) (csize!2336 Int) (cheight!1264 Int)) (Leaf!1700 (xs!3648 IArray!2107) (csize!2337 Int)) (Empty!1053) )
))
(declare-datatypes ((BalanceConc!2114 0))(
  ( (BalanceConc!2115 (c!39671 Conc!1053)) )
))
(declare-datatypes ((tuple2!3478 0))(
  ( (tuple2!3479 (_1!1955 BalanceConc!2114) (_2!1955 BalanceConc!2112)) )
))
(declare-fun lt!75726 () tuple2!3478)

(declare-fun isEmpty!1768 (BalanceConc!2112) Bool)

(assert (=> b!207646 (= e!127953 (isEmpty!1768 (_2!1955 lt!75726)))))

(declare-fun b!207647 () Bool)

(declare-fun e!127934 () Bool)

(declare-fun e!127966 () Bool)

(assert (=> b!207647 (= e!127934 e!127966)))

(declare-fun res!95433 () Bool)

(assert (=> b!207647 (=> (not res!95433) (not e!127966))))

(declare-fun lt!75717 () BalanceConc!2114)

(declare-datatypes ((LexerInterface!501 0))(
  ( (LexerInterfaceExt!498 (__x!2762 Int)) (Lexer!499) )
))
(declare-fun thiss!17480 () LexerInterface!501)

(declare-fun rulesProduceEachTokenIndividually!293 (LexerInterface!501 List!3327 BalanceConc!2114) Bool)

(assert (=> b!207647 (= res!95433 (rulesProduceEachTokenIndividually!293 thiss!17480 rules!1920 lt!75717))))

(declare-fun seqFromList!607 (List!3328) BalanceConc!2114)

(assert (=> b!207647 (= lt!75717 (seqFromList!607 tokens!465))))

(declare-fun b!207648 () Bool)

(declare-fun e!127956 () Bool)

(declare-datatypes ((tuple2!3480 0))(
  ( (tuple2!3481 (_1!1956 Token!974) (_2!1956 List!3326)) )
))
(declare-datatypes ((Option!537 0))(
  ( (None!536) (Some!536 (v!14095 tuple2!3480)) )
))
(declare-fun lt!75709 () Option!537)

(declare-fun get!1002 (Option!537) tuple2!3480)

(declare-fun head!725 (List!3328) Token!974)

(assert (=> b!207648 (= e!127956 (= (_1!1956 (get!1002 lt!75709)) (head!725 tokens!465)))))

(declare-fun b!207649 () Bool)

(declare-fun res!95429 () Bool)

(assert (=> b!207649 (=> (not res!95429) (not e!127966))))

(declare-fun separatorToken!170 () Token!974)

(assert (=> b!207649 (= res!95429 (isSeparator!615 (rule!1142 separatorToken!170)))))

(declare-fun b!207650 () Bool)

(declare-fun res!95437 () Bool)

(assert (=> b!207650 (=> (not res!95437) (not e!127953))))

(declare-fun apply!550 (BalanceConc!2114 Int) Token!974)

(assert (=> b!207650 (= res!95437 (= (apply!550 (_1!1955 lt!75726) 0) separatorToken!170))))

(declare-fun e!127947 () Bool)

(assert (=> b!207651 (= e!127947 (and tp!90987 tp!90985))))

(declare-fun b!207652 () Bool)

(declare-fun res!95444 () Bool)

(assert (=> b!207652 (=> (not res!95444) (not e!127934))))

(declare-fun rulesInvariant!467 (LexerInterface!501 List!3327) Bool)

(assert (=> b!207652 (= res!95444 (rulesInvariant!467 thiss!17480 rules!1920))))

(declare-fun b!207653 () Bool)

(declare-datatypes ((Unit!3410 0))(
  ( (Unit!3411) )
))
(declare-fun e!127951 () Unit!3410)

(declare-fun Unit!3412 () Unit!3410)

(assert (=> b!207653 (= e!127951 Unit!3412)))

(declare-fun lt!75745 () Unit!3410)

(declare-fun lt!75734 () Token!974)

(declare-fun lt!75733 () C!2600)

(declare-fun lt!75715 () List!3326)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!14 (Regex!839 List!3326 C!2600) Unit!3410)

(assert (=> b!207653 (= lt!75745 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!14 (regex!615 (rule!1142 lt!75734)) lt!75715 lt!75733))))

(declare-fun res!95451 () Bool)

(assert (=> b!207653 (= res!95451 (not (matchR!177 (regex!615 (rule!1142 lt!75734)) lt!75715)))))

(declare-fun e!127965 () Bool)

(assert (=> b!207653 (=> (not res!95451) (not e!127965))))

(assert (=> b!207653 e!127965))

(declare-fun b!207654 () Bool)

(declare-fun e!127964 () Bool)

(declare-fun lt!75749 () List!3326)

(declare-fun lt!75727 () List!3326)

(declare-fun ++!812 (List!3326 List!3326) List!3326)

(assert (=> b!207654 (= e!127964 (not (= lt!75727 (++!812 lt!75738 lt!75749))))))

(declare-fun b!207655 () Bool)

(declare-fun res!95430 () Bool)

(declare-fun e!127952 () Bool)

(assert (=> b!207655 (=> (not res!95430) (not e!127952))))

(declare-fun lt!75716 () List!3326)

(declare-fun list!1233 (BalanceConc!2112) List!3326)

(declare-fun seqFromList!608 (List!3326) BalanceConc!2112)

(assert (=> b!207655 (= res!95430 (= (list!1233 (seqFromList!608 lt!75727)) lt!75716))))

(declare-fun e!127931 () Bool)

(assert (=> b!207656 (= e!127931 (and tp!90990 tp!90988))))

(declare-fun res!95440 () Bool)

(assert (=> b!207657 (=> (not res!95440) (not e!127966))))

(declare-fun forall!719 (List!3328 Int) Bool)

(assert (=> b!207657 (= res!95440 (forall!719 tokens!465 lambda!6379))))

(declare-fun b!207658 () Bool)

(declare-fun e!127945 () Bool)

(declare-fun e!127932 () Bool)

(assert (=> b!207658 (= e!127945 e!127932)))

(declare-fun res!95449 () Bool)

(assert (=> b!207658 (=> (not res!95449) (not e!127932))))

(declare-fun lt!75735 () Rule!1030)

(declare-fun lt!75740 () List!3326)

(assert (=> b!207658 (= res!95449 (matchR!177 (regex!615 lt!75735) lt!75740))))

(declare-datatypes ((Option!538 0))(
  ( (None!537) (Some!537 (v!14096 Rule!1030)) )
))
(declare-fun lt!75744 () Option!538)

(declare-fun get!1003 (Option!538) Rule!1030)

(assert (=> b!207658 (= lt!75735 (get!1003 lt!75744))))

(declare-fun b!207659 () Bool)

(declare-fun e!127962 () Bool)

(declare-fun e!127944 () Bool)

(assert (=> b!207659 (= e!127962 e!127944)))

(declare-fun res!95445 () Bool)

(assert (=> b!207659 (=> res!95445 e!127944)))

(declare-fun lt!75739 () BalanceConc!2114)

(assert (=> b!207659 (= res!95445 (not (rulesProduceEachTokenIndividually!293 thiss!17480 rules!1920 lt!75739)))))

(declare-fun lt!75720 () Option!537)

(assert (=> b!207659 (= lt!75720 (Some!536 (tuple2!3481 separatorToken!170 lt!75749)))))

(declare-fun lt!75736 () Unit!3410)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!6 (LexerInterface!501 List!3327 Token!974 Rule!1030 List!3326 Rule!1030) Unit!3410)

(assert (=> b!207659 (= lt!75736 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!6 thiss!17480 rules!1920 separatorToken!170 (rule!1142 separatorToken!170) lt!75749 (rule!1142 lt!75734)))))

(declare-fun lt!75702 () Unit!3410)

(declare-fun e!127948 () Unit!3410)

(assert (=> b!207659 (= lt!75702 e!127948)))

(declare-fun c!39667 () Bool)

(declare-fun lt!75729 () C!2600)

(declare-fun contains!560 (List!3326 C!2600) Bool)

(declare-fun usedCharacters!20 (Regex!839) List!3326)

(assert (=> b!207659 (= c!39667 (contains!560 (usedCharacters!20 (regex!615 (rule!1142 separatorToken!170))) lt!75729))))

(declare-fun head!726 (List!3326) C!2600)

(assert (=> b!207659 (= lt!75729 (head!726 lt!75749))))

(declare-fun lt!75718 () Unit!3410)

(assert (=> b!207659 (= lt!75718 e!127951)))

(declare-fun c!39666 () Bool)

(assert (=> b!207659 (= c!39666 (not (contains!560 (usedCharacters!20 (regex!615 (rule!1142 lt!75734))) lt!75733)))))

(assert (=> b!207659 (= lt!75733 (head!726 lt!75715))))

(declare-fun e!127935 () Bool)

(assert (=> b!207659 e!127935))

(declare-fun res!95453 () Bool)

(assert (=> b!207659 (=> (not res!95453) (not e!127935))))

(declare-fun lt!75728 () Option!538)

(declare-fun isDefined!388 (Option!538) Bool)

(assert (=> b!207659 (= res!95453 (isDefined!388 lt!75728))))

(declare-fun getRuleFromTag!56 (LexerInterface!501 List!3327 String!4265) Option!538)

(assert (=> b!207659 (= lt!75728 (getRuleFromTag!56 thiss!17480 rules!1920 (tag!803 (rule!1142 lt!75734))))))

(declare-fun lt!75747 () Unit!3410)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!56 (LexerInterface!501 List!3327 List!3326 Token!974) Unit!3410)

(assert (=> b!207659 (= lt!75747 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!56 thiss!17480 rules!1920 lt!75715 lt!75734))))

(declare-fun charsOf!270 (Token!974) BalanceConc!2112)

(assert (=> b!207659 (= lt!75715 (list!1233 (charsOf!270 lt!75734)))))

(declare-fun lt!75742 () Unit!3410)

(declare-fun forallContained!182 (List!3328 Int Token!974) Unit!3410)

(assert (=> b!207659 (= lt!75742 (forallContained!182 tokens!465 lambda!6380 lt!75734))))

(declare-fun e!127949 () Bool)

(assert (=> b!207659 e!127949))

(declare-fun res!95421 () Bool)

(assert (=> b!207659 (=> (not res!95421) (not e!127949))))

(declare-fun lt!75748 () tuple2!3478)

(declare-fun size!2653 (BalanceConc!2114) Int)

(assert (=> b!207659 (= res!95421 (= (size!2653 (_1!1955 lt!75748)) 1))))

(declare-fun lt!75725 () BalanceConc!2112)

(declare-fun lex!301 (LexerInterface!501 List!3327 BalanceConc!2112) tuple2!3478)

(assert (=> b!207659 (= lt!75748 (lex!301 thiss!17480 rules!1920 lt!75725))))

(declare-fun lt!75707 () BalanceConc!2114)

(declare-fun printTailRec!195 (LexerInterface!501 BalanceConc!2114 Int BalanceConc!2112) BalanceConc!2112)

(assert (=> b!207659 (= lt!75725 (printTailRec!195 thiss!17480 lt!75707 0 (BalanceConc!2113 Empty!1052)))))

(declare-fun print!232 (LexerInterface!501 BalanceConc!2114) BalanceConc!2112)

(assert (=> b!207659 (= lt!75725 (print!232 thiss!17480 lt!75707))))

(declare-fun singletonSeq!167 (Token!974) BalanceConc!2114)

(assert (=> b!207659 (= lt!75707 (singletonSeq!167 lt!75734))))

(assert (=> b!207659 e!127945))

(declare-fun res!95441 () Bool)

(assert (=> b!207659 (=> (not res!95441) (not e!127945))))

(assert (=> b!207659 (= res!95441 (isDefined!388 lt!75744))))

(assert (=> b!207659 (= lt!75744 (getRuleFromTag!56 thiss!17480 rules!1920 (tag!803 (rule!1142 separatorToken!170))))))

(declare-fun lt!75714 () Unit!3410)

(assert (=> b!207659 (= lt!75714 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!56 thiss!17480 rules!1920 lt!75740 separatorToken!170))))

(assert (=> b!207659 e!127953))

(declare-fun res!95438 () Bool)

(assert (=> b!207659 (=> (not res!95438) (not e!127953))))

(assert (=> b!207659 (= res!95438 (= (size!2653 (_1!1955 lt!75726)) 1))))

(declare-fun lt!75704 () BalanceConc!2112)

(assert (=> b!207659 (= lt!75726 (lex!301 thiss!17480 rules!1920 lt!75704))))

(declare-fun lt!75712 () BalanceConc!2114)

(assert (=> b!207659 (= lt!75704 (printTailRec!195 thiss!17480 lt!75712 0 (BalanceConc!2113 Empty!1052)))))

(assert (=> b!207659 (= lt!75704 (print!232 thiss!17480 lt!75712))))

(assert (=> b!207659 (= lt!75712 (singletonSeq!167 separatorToken!170))))

(declare-fun rulesProduceIndividualToken!250 (LexerInterface!501 List!3327 Token!974) Bool)

(assert (=> b!207659 (rulesProduceIndividualToken!250 thiss!17480 rules!1920 lt!75734)))

(declare-fun lt!75706 () Unit!3410)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!68 (LexerInterface!501 List!3327 List!3328 Token!974) Unit!3410)

(assert (=> b!207659 (= lt!75706 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!68 thiss!17480 rules!1920 tokens!465 lt!75734))))

(assert (=> b!207659 (= lt!75734 (head!725 (t!31080 tokens!465)))))

(declare-fun lt!75722 () Unit!3410)

(declare-fun e!127942 () Unit!3410)

(assert (=> b!207659 (= lt!75722 e!127942)))

(declare-fun c!39668 () Bool)

(declare-fun isEmpty!1769 (List!3328) Bool)

(assert (=> b!207659 (= c!39668 (isEmpty!1769 (t!31080 tokens!465)))))

(declare-fun lt!75711 () List!3326)

(declare-fun maxPrefix!231 (LexerInterface!501 List!3327 List!3326) Option!537)

(assert (=> b!207659 (= lt!75720 (maxPrefix!231 thiss!17480 rules!1920 lt!75711))))

(declare-fun lt!75713 () tuple2!3480)

(assert (=> b!207659 (= lt!75711 (_2!1956 lt!75713))))

(declare-fun lt!75731 () Unit!3410)

(declare-fun lemmaSamePrefixThenSameSuffix!136 (List!3326 List!3326 List!3326 List!3326 List!3326) Unit!3410)

(assert (=> b!207659 (= lt!75731 (lemmaSamePrefixThenSameSuffix!136 lt!75738 lt!75711 lt!75738 (_2!1956 lt!75713) lt!75727))))

(assert (=> b!207659 (= lt!75713 (get!1002 (maxPrefix!231 thiss!17480 rules!1920 lt!75727)))))

(declare-fun lt!75746 () List!3326)

(declare-fun isPrefix!311 (List!3326 List!3326) Bool)

(assert (=> b!207659 (isPrefix!311 lt!75738 lt!75746)))

(declare-fun lt!75724 () Unit!3410)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!206 (List!3326 List!3326) Unit!3410)

(assert (=> b!207659 (= lt!75724 (lemmaConcatTwoListThenFirstIsPrefix!206 lt!75738 lt!75711))))

(declare-fun e!127957 () Bool)

(assert (=> b!207659 e!127957))

(declare-fun res!95431 () Bool)

(assert (=> b!207659 (=> res!95431 e!127957)))

(assert (=> b!207659 (= res!95431 (isEmpty!1769 tokens!465))))

(declare-fun lt!75708 () Unit!3410)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!76 (LexerInterface!501 List!3327 List!3328 Token!974) Unit!3410)

(assert (=> b!207659 (= lt!75708 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!76 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!207660 () Bool)

(declare-fun res!95439 () Bool)

(assert (=> b!207660 (=> (not res!95439) (not e!127966))))

(assert (=> b!207660 (= res!95439 (rulesProduceIndividualToken!250 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun e!127939 () Bool)

(assert (=> b!207661 (= e!127939 (and tp!90995 tp!90997))))

(declare-fun b!207662 () Bool)

(assert (=> b!207662 (= e!127957 e!127956)))

(declare-fun res!95426 () Bool)

(assert (=> b!207662 (=> (not res!95426) (not e!127956))))

(declare-fun isDefined!389 (Option!537) Bool)

(assert (=> b!207662 (= res!95426 (isDefined!389 lt!75709))))

(assert (=> b!207662 (= lt!75709 (maxPrefix!231 thiss!17480 rules!1920 lt!75727))))

(declare-fun e!127960 () Bool)

(declare-fun b!207663 () Bool)

(declare-fun tp!90991 () Bool)

(declare-fun inv!4152 (String!4265) Bool)

(declare-fun inv!4155 (TokenValueInjection!1046) Bool)

(assert (=> b!207663 (= e!127960 (and tp!90991 (inv!4152 (tag!803 (h!8714 rules!1920))) (inv!4155 (transformation!615 (h!8714 rules!1920))) e!127947))))

(declare-fun b!207664 () Bool)

(declare-fun res!95423 () Bool)

(assert (=> b!207664 (=> (not res!95423) (not e!127934))))

(declare-fun isEmpty!1770 (List!3327) Bool)

(assert (=> b!207664 (= res!95423 (not (isEmpty!1770 rules!1920)))))

(declare-fun b!207665 () Bool)

(declare-fun res!95425 () Bool)

(declare-fun e!127933 () Bool)

(assert (=> b!207665 (=> res!95425 e!127933)))

(assert (=> b!207665 (= res!95425 (not (rulesProduceIndividualToken!250 thiss!17480 rules!1920 (h!8715 tokens!465))))))

(declare-fun b!207666 () Bool)

(declare-fun res!95442 () Bool)

(assert (=> b!207666 (=> (not res!95442) (not e!127949))))

(assert (=> b!207666 (= res!95442 (= (apply!550 (_1!1955 lt!75748) 0) lt!75734))))

(declare-fun b!207667 () Bool)

(declare-fun res!95450 () Bool)

(assert (=> b!207667 (=> (not res!95450) (not e!127966))))

(assert (=> b!207667 (= res!95450 ((_ is Cons!3318) tokens!465))))

(declare-fun b!207668 () Bool)

(declare-fun e!127940 () Bool)

(assert (=> b!207668 (= e!127935 e!127940)))

(declare-fun res!95436 () Bool)

(assert (=> b!207668 (=> (not res!95436) (not e!127940))))

(declare-fun lt!75730 () Rule!1030)

(assert (=> b!207668 (= res!95436 (matchR!177 (regex!615 lt!75730) lt!75715))))

(assert (=> b!207668 (= lt!75730 (get!1003 lt!75728))))

(declare-fun b!207669 () Bool)

(assert (=> b!207669 (= e!127965 false)))

(declare-fun tp!90986 () Bool)

(declare-fun e!127936 () Bool)

(declare-fun b!207670 () Bool)

(assert (=> b!207670 (= e!127936 (and tp!90986 (inv!4152 (tag!803 (rule!1142 (h!8715 tokens!465)))) (inv!4155 (transformation!615 (rule!1142 (h!8715 tokens!465)))) e!127939))))

(declare-fun b!207671 () Bool)

(declare-fun res!95424 () Bool)

(assert (=> b!207671 (=> (not res!95424) (not e!127937))))

(declare-fun lt!75723 () tuple2!3480)

(declare-fun isEmpty!1771 (List!3326) Bool)

(assert (=> b!207671 (= res!95424 (isEmpty!1771 (_2!1956 lt!75723)))))

(declare-fun b!207672 () Bool)

(declare-fun Unit!3413 () Unit!3410)

(assert (=> b!207672 (= e!127942 Unit!3413)))

(declare-fun b!207673 () Bool)

(declare-fun e!127959 () Bool)

(assert (=> b!207673 (= e!127952 (not e!127959))))

(declare-fun res!95427 () Bool)

(assert (=> b!207673 (=> res!95427 e!127959)))

(declare-fun printWithSeparatorTokenWhenNeededRec!184 (LexerInterface!501 List!3327 BalanceConc!2114 Token!974 Int) BalanceConc!2112)

(assert (=> b!207673 (= res!95427 (not (= lt!75749 (list!1233 (printWithSeparatorTokenWhenNeededRec!184 thiss!17480 rules!1920 lt!75739 separatorToken!170 0)))))))

(assert (=> b!207673 (= lt!75739 (seqFromList!607 (t!31080 tokens!465)))))

(declare-fun lt!75737 () List!3326)

(assert (=> b!207673 (= lt!75737 lt!75746)))

(assert (=> b!207673 (= lt!75746 (++!812 lt!75738 lt!75711))))

(assert (=> b!207673 (= lt!75737 (++!812 (++!812 lt!75738 lt!75740) lt!75749))))

(declare-fun lt!75743 () Unit!3410)

(declare-fun lemmaConcatAssociativity!310 (List!3326 List!3326 List!3326) Unit!3410)

(assert (=> b!207673 (= lt!75743 (lemmaConcatAssociativity!310 lt!75738 lt!75740 lt!75749))))

(assert (=> b!207673 (= lt!75738 (list!1233 (charsOf!270 (h!8715 tokens!465))))))

(assert (=> b!207673 (= lt!75711 (++!812 lt!75740 lt!75749))))

(declare-fun printWithSeparatorTokenWhenNeededList!194 (LexerInterface!501 List!3327 List!3328 Token!974) List!3326)

(assert (=> b!207673 (= lt!75749 (printWithSeparatorTokenWhenNeededList!194 thiss!17480 rules!1920 (t!31080 tokens!465) separatorToken!170))))

(assert (=> b!207673 (= lt!75740 (list!1233 (charsOf!270 separatorToken!170)))))

(declare-fun b!207674 () Bool)

(assert (=> b!207674 (= e!127944 true)))

(declare-fun b!207675 () Bool)

(declare-fun e!127967 () Bool)

(declare-fun tp!90993 () Bool)

(assert (=> b!207675 (= e!127967 (and e!127960 tp!90993))))

(declare-fun b!207676 () Bool)

(assert (=> b!207676 (= e!127940 (= (rule!1142 lt!75734) lt!75730))))

(declare-fun b!207677 () Bool)

(declare-fun e!127963 () Bool)

(assert (=> b!207677 (= e!127963 e!127962)))

(declare-fun res!95435 () Bool)

(assert (=> b!207677 (=> res!95435 e!127962)))

(declare-fun lt!75705 () Bool)

(assert (=> b!207677 (= res!95435 (not lt!75705))))

(assert (=> b!207677 e!127937))

(declare-fun res!95447 () Bool)

(assert (=> b!207677 (=> (not res!95447) (not e!127937))))

(assert (=> b!207677 (= res!95447 (= (_1!1956 lt!75723) (h!8715 tokens!465)))))

(declare-fun lt!75719 () Option!537)

(assert (=> b!207677 (= lt!75723 (get!1002 lt!75719))))

(assert (=> b!207677 (isDefined!389 lt!75719)))

(assert (=> b!207677 (= lt!75719 (maxPrefix!231 thiss!17480 rules!1920 lt!75738))))

(declare-fun e!127943 () Bool)

(declare-fun tp!90994 () Bool)

(declare-fun b!207678 () Bool)

(assert (=> b!207678 (= e!127943 (and tp!90994 (inv!4152 (tag!803 (rule!1142 separatorToken!170))) (inv!4155 (transformation!615 (rule!1142 separatorToken!170))) e!127931))))

(declare-fun tp!90992 () Bool)

(declare-fun b!207679 () Bool)

(declare-fun e!127950 () Bool)

(declare-fun inv!21 (TokenValue!637) Bool)

(assert (=> b!207679 (= e!127950 (and (inv!21 (value!21843 separatorToken!170)) e!127943 tp!90992))))

(declare-fun tp!90996 () Bool)

(declare-fun e!127955 () Bool)

(declare-fun b!207680 () Bool)

(assert (=> b!207680 (= e!127955 (and (inv!21 (value!21843 (h!8715 tokens!465))) e!127936 tp!90996))))

(declare-fun b!207681 () Bool)

(declare-fun Unit!3414 () Unit!3410)

(assert (=> b!207681 (= e!127942 Unit!3414)))

(assert (=> b!207681 false))

(declare-fun b!207682 () Bool)

(declare-fun res!95434 () Bool)

(assert (=> b!207682 (=> (not res!95434) (not e!127966))))

(declare-fun sepAndNonSepRulesDisjointChars!204 (List!3327 List!3327) Bool)

(assert (=> b!207682 (= res!95434 (sepAndNonSepRulesDisjointChars!204 rules!1920 rules!1920))))

(declare-fun b!207683 () Bool)

(declare-fun e!127961 () Bool)

(assert (=> b!207683 (= e!127961 e!127933)))

(declare-fun res!95452 () Bool)

(assert (=> b!207683 (=> res!95452 e!127933)))

(declare-fun lt!75703 () List!3326)

(declare-fun lt!75710 () List!3326)

(assert (=> b!207683 (= res!95452 (or (not (= lt!75710 lt!75703)) (not (= lt!75703 lt!75738)) (not (= lt!75710 lt!75738))))))

(declare-fun printList!185 (LexerInterface!501 List!3328) List!3326)

(assert (=> b!207683 (= lt!75703 (printList!185 thiss!17480 (Cons!3318 (h!8715 tokens!465) Nil!3318)))))

(declare-fun lt!75721 () BalanceConc!2112)

(assert (=> b!207683 (= lt!75710 (list!1233 lt!75721))))

(declare-fun lt!75732 () BalanceConc!2114)

(assert (=> b!207683 (= lt!75721 (printTailRec!195 thiss!17480 lt!75732 0 (BalanceConc!2113 Empty!1052)))))

(assert (=> b!207683 (= lt!75721 (print!232 thiss!17480 lt!75732))))

(assert (=> b!207683 (= lt!75732 (singletonSeq!167 (h!8715 tokens!465)))))

(declare-fun res!95428 () Bool)

(assert (=> start!22290 (=> (not res!95428) (not e!127934))))

(assert (=> start!22290 (= res!95428 ((_ is Lexer!499) thiss!17480))))

(assert (=> start!22290 e!127934))

(assert (=> start!22290 true))

(assert (=> start!22290 e!127967))

(declare-fun inv!4156 (Token!974) Bool)

(assert (=> start!22290 (and (inv!4156 separatorToken!170) e!127950)))

(declare-fun e!127968 () Bool)

(assert (=> start!22290 e!127968))

(declare-fun b!207684 () Bool)

(declare-fun Unit!3415 () Unit!3410)

(assert (=> b!207684 (= e!127948 Unit!3415)))

(declare-fun b!207685 () Bool)

(declare-fun Unit!3416 () Unit!3410)

(assert (=> b!207685 (= e!127951 Unit!3416)))

(declare-fun b!207686 () Bool)

(assert (=> b!207686 (= e!127966 e!127952)))

(declare-fun res!95446 () Bool)

(assert (=> b!207686 (=> (not res!95446) (not e!127952))))

(assert (=> b!207686 (= res!95446 (= lt!75727 lt!75716))))

(assert (=> b!207686 (= lt!75716 (list!1233 (printWithSeparatorTokenWhenNeededRec!184 thiss!17480 rules!1920 lt!75717 separatorToken!170 0)))))

(assert (=> b!207686 (= lt!75727 (printWithSeparatorTokenWhenNeededList!194 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!207687 () Bool)

(declare-fun Unit!3417 () Unit!3410)

(assert (=> b!207687 (= e!127948 Unit!3417)))

(declare-fun lt!75741 () Unit!3410)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!8 (LexerInterface!501 List!3327 List!3327 Rule!1030 Rule!1030 C!2600) Unit!3410)

(assert (=> b!207687 (= lt!75741 (lemmaSepRuleNotContainsCharContainedInANonSepRule!8 thiss!17480 rules!1920 rules!1920 (rule!1142 lt!75734) (rule!1142 separatorToken!170) lt!75729))))

(assert (=> b!207687 false))

(declare-fun b!207688 () Bool)

(assert (=> b!207688 (= e!127949 (isEmpty!1768 (_2!1955 lt!75748)))))

(declare-fun b!207689 () Bool)

(declare-fun res!95422 () Bool)

(assert (=> b!207689 (=> res!95422 e!127933)))

(declare-fun isEmpty!1772 (BalanceConc!2114) Bool)

(assert (=> b!207689 (= res!95422 (isEmpty!1772 (_1!1955 (lex!301 thiss!17480 rules!1920 (seqFromList!608 lt!75738)))))))

(declare-fun b!207690 () Bool)

(assert (=> b!207690 (= e!127959 e!127961)))

(declare-fun res!95432 () Bool)

(assert (=> b!207690 (=> res!95432 e!127961)))

(assert (=> b!207690 (= res!95432 e!127964)))

(declare-fun res!95448 () Bool)

(assert (=> b!207690 (=> (not res!95448) (not e!127964))))

(assert (=> b!207690 (= res!95448 (not lt!75705))))

(assert (=> b!207690 (= lt!75705 (= lt!75727 lt!75746))))

(assert (=> b!207691 (= e!127933 e!127963)))

(declare-fun res!95443 () Bool)

(assert (=> b!207691 (=> res!95443 e!127963)))

(declare-datatypes ((tuple2!3482 0))(
  ( (tuple2!3483 (_1!1957 Token!974) (_2!1957 BalanceConc!2112)) )
))
(declare-datatypes ((Option!539 0))(
  ( (None!538) (Some!538 (v!14097 tuple2!3482)) )
))
(declare-fun isDefined!390 (Option!539) Bool)

(declare-fun maxPrefixZipperSequence!194 (LexerInterface!501 List!3327 BalanceConc!2112) Option!539)

(assert (=> b!207691 (= res!95443 (not (isDefined!390 (maxPrefixZipperSequence!194 thiss!17480 rules!1920 (seqFromList!608 (originalCharacters!658 (h!8715 tokens!465)))))))))

(declare-fun lt!75750 () Unit!3410)

(assert (=> b!207691 (= lt!75750 (forallContained!182 tokens!465 lambda!6380 (h!8715 tokens!465)))))

(assert (=> b!207691 (= lt!75738 (originalCharacters!658 (h!8715 tokens!465)))))

(declare-fun tp!90989 () Bool)

(declare-fun b!207692 () Bool)

(assert (=> b!207692 (= e!127968 (and (inv!4156 (h!8715 tokens!465)) e!127955 tp!90989))))

(declare-fun b!207693 () Bool)

(assert (=> b!207693 (= e!127932 (= (rule!1142 separatorToken!170) lt!75735))))

(assert (= (and start!22290 res!95428) b!207664))

(assert (= (and b!207664 res!95423) b!207652))

(assert (= (and b!207652 res!95444) b!207647))

(assert (= (and b!207647 res!95433) b!207660))

(assert (= (and b!207660 res!95439) b!207649))

(assert (= (and b!207649 res!95429) b!207657))

(assert (= (and b!207657 res!95440) b!207682))

(assert (= (and b!207682 res!95434) b!207667))

(assert (= (and b!207667 res!95450) b!207686))

(assert (= (and b!207686 res!95446) b!207655))

(assert (= (and b!207655 res!95430) b!207673))

(assert (= (and b!207673 (not res!95427)) b!207690))

(assert (= (and b!207690 res!95448) b!207654))

(assert (= (and b!207690 (not res!95432)) b!207683))

(assert (= (and b!207683 (not res!95452)) b!207665))

(assert (= (and b!207665 (not res!95425)) b!207689))

(assert (= (and b!207689 (not res!95422)) b!207691))

(assert (= (and b!207691 (not res!95443)) b!207677))

(assert (= (and b!207677 res!95447) b!207671))

(assert (= (and b!207671 res!95424) b!207645))

(assert (= (and b!207677 (not res!95435)) b!207659))

(assert (= (and b!207659 (not res!95431)) b!207662))

(assert (= (and b!207662 res!95426) b!207648))

(assert (= (and b!207659 c!39668) b!207681))

(assert (= (and b!207659 (not c!39668)) b!207672))

(assert (= (and b!207659 res!95438) b!207650))

(assert (= (and b!207650 res!95437) b!207646))

(assert (= (and b!207659 res!95441) b!207658))

(assert (= (and b!207658 res!95449) b!207693))

(assert (= (and b!207659 res!95421) b!207666))

(assert (= (and b!207666 res!95442) b!207688))

(assert (= (and b!207659 res!95453) b!207668))

(assert (= (and b!207668 res!95436) b!207676))

(assert (= (and b!207659 c!39666) b!207653))

(assert (= (and b!207659 (not c!39666)) b!207685))

(assert (= (and b!207653 res!95451) b!207669))

(assert (= (and b!207659 c!39667) b!207687))

(assert (= (and b!207659 (not c!39667)) b!207684))

(assert (= (and b!207659 (not res!95445)) b!207674))

(assert (= b!207663 b!207651))

(assert (= b!207675 b!207663))

(assert (= (and start!22290 ((_ is Cons!3317) rules!1920)) b!207675))

(assert (= b!207678 b!207656))

(assert (= b!207679 b!207678))

(assert (= start!22290 b!207679))

(assert (= b!207670 b!207661))

(assert (= b!207680 b!207670))

(assert (= b!207692 b!207680))

(assert (= (and start!22290 ((_ is Cons!3318) tokens!465)) b!207692))

(declare-fun m!229285 () Bool)

(assert (=> b!207683 m!229285))

(declare-fun m!229287 () Bool)

(assert (=> b!207683 m!229287))

(declare-fun m!229289 () Bool)

(assert (=> b!207683 m!229289))

(declare-fun m!229291 () Bool)

(assert (=> b!207683 m!229291))

(declare-fun m!229293 () Bool)

(assert (=> b!207683 m!229293))

(declare-fun m!229295 () Bool)

(assert (=> start!22290 m!229295))

(declare-fun m!229297 () Bool)

(assert (=> b!207678 m!229297))

(declare-fun m!229299 () Bool)

(assert (=> b!207678 m!229299))

(declare-fun m!229301 () Bool)

(assert (=> b!207666 m!229301))

(declare-fun m!229303 () Bool)

(assert (=> b!207677 m!229303))

(declare-fun m!229305 () Bool)

(assert (=> b!207677 m!229305))

(declare-fun m!229307 () Bool)

(assert (=> b!207677 m!229307))

(declare-fun m!229309 () Bool)

(assert (=> b!207645 m!229309))

(declare-fun m!229311 () Bool)

(assert (=> b!207679 m!229311))

(declare-fun m!229313 () Bool)

(assert (=> b!207682 m!229313))

(declare-fun m!229315 () Bool)

(assert (=> b!207670 m!229315))

(declare-fun m!229317 () Bool)

(assert (=> b!207670 m!229317))

(declare-fun m!229319 () Bool)

(assert (=> b!207650 m!229319))

(declare-fun m!229321 () Bool)

(assert (=> b!207673 m!229321))

(declare-fun m!229323 () Bool)

(assert (=> b!207673 m!229323))

(declare-fun m!229325 () Bool)

(assert (=> b!207673 m!229325))

(declare-fun m!229327 () Bool)

(assert (=> b!207673 m!229327))

(declare-fun m!229329 () Bool)

(assert (=> b!207673 m!229329))

(declare-fun m!229331 () Bool)

(assert (=> b!207673 m!229331))

(declare-fun m!229333 () Bool)

(assert (=> b!207673 m!229333))

(assert (=> b!207673 m!229329))

(declare-fun m!229335 () Bool)

(assert (=> b!207673 m!229335))

(declare-fun m!229337 () Bool)

(assert (=> b!207673 m!229337))

(assert (=> b!207673 m!229335))

(declare-fun m!229339 () Bool)

(assert (=> b!207673 m!229339))

(assert (=> b!207673 m!229333))

(declare-fun m!229341 () Bool)

(assert (=> b!207673 m!229341))

(declare-fun m!229343 () Bool)

(assert (=> b!207673 m!229343))

(declare-fun m!229345 () Bool)

(assert (=> b!207673 m!229345))

(assert (=> b!207673 m!229343))

(declare-fun m!229347 () Bool)

(assert (=> b!207665 m!229347))

(declare-fun m!229349 () Bool)

(assert (=> b!207680 m!229349))

(declare-fun m!229351 () Bool)

(assert (=> b!207647 m!229351))

(declare-fun m!229353 () Bool)

(assert (=> b!207647 m!229353))

(declare-fun m!229355 () Bool)

(assert (=> b!207648 m!229355))

(declare-fun m!229357 () Bool)

(assert (=> b!207648 m!229357))

(declare-fun m!229359 () Bool)

(assert (=> b!207658 m!229359))

(declare-fun m!229361 () Bool)

(assert (=> b!207658 m!229361))

(declare-fun m!229363 () Bool)

(assert (=> b!207663 m!229363))

(declare-fun m!229365 () Bool)

(assert (=> b!207663 m!229365))

(declare-fun m!229367 () Bool)

(assert (=> b!207664 m!229367))

(declare-fun m!229369 () Bool)

(assert (=> b!207654 m!229369))

(declare-fun m!229371 () Bool)

(assert (=> b!207688 m!229371))

(declare-fun m!229373 () Bool)

(assert (=> b!207660 m!229373))

(declare-fun m!229375 () Bool)

(assert (=> b!207655 m!229375))

(assert (=> b!207655 m!229375))

(declare-fun m!229377 () Bool)

(assert (=> b!207655 m!229377))

(declare-fun m!229379 () Bool)

(assert (=> b!207671 m!229379))

(declare-fun m!229381 () Bool)

(assert (=> b!207686 m!229381))

(assert (=> b!207686 m!229381))

(declare-fun m!229383 () Bool)

(assert (=> b!207686 m!229383))

(declare-fun m!229385 () Bool)

(assert (=> b!207686 m!229385))

(declare-fun m!229387 () Bool)

(assert (=> b!207668 m!229387))

(declare-fun m!229389 () Bool)

(assert (=> b!207668 m!229389))

(declare-fun m!229391 () Bool)

(assert (=> b!207659 m!229391))

(declare-fun m!229393 () Bool)

(assert (=> b!207659 m!229393))

(declare-fun m!229395 () Bool)

(assert (=> b!207659 m!229395))

(declare-fun m!229397 () Bool)

(assert (=> b!207659 m!229397))

(declare-fun m!229399 () Bool)

(assert (=> b!207659 m!229399))

(declare-fun m!229401 () Bool)

(assert (=> b!207659 m!229401))

(declare-fun m!229403 () Bool)

(assert (=> b!207659 m!229403))

(declare-fun m!229405 () Bool)

(assert (=> b!207659 m!229405))

(declare-fun m!229407 () Bool)

(assert (=> b!207659 m!229407))

(declare-fun m!229409 () Bool)

(assert (=> b!207659 m!229409))

(declare-fun m!229411 () Bool)

(assert (=> b!207659 m!229411))

(assert (=> b!207659 m!229407))

(declare-fun m!229413 () Bool)

(assert (=> b!207659 m!229413))

(declare-fun m!229415 () Bool)

(assert (=> b!207659 m!229415))

(declare-fun m!229417 () Bool)

(assert (=> b!207659 m!229417))

(declare-fun m!229419 () Bool)

(assert (=> b!207659 m!229419))

(declare-fun m!229421 () Bool)

(assert (=> b!207659 m!229421))

(declare-fun m!229423 () Bool)

(assert (=> b!207659 m!229423))

(declare-fun m!229425 () Bool)

(assert (=> b!207659 m!229425))

(declare-fun m!229427 () Bool)

(assert (=> b!207659 m!229427))

(declare-fun m!229429 () Bool)

(assert (=> b!207659 m!229429))

(declare-fun m!229431 () Bool)

(assert (=> b!207659 m!229431))

(declare-fun m!229433 () Bool)

(assert (=> b!207659 m!229433))

(declare-fun m!229435 () Bool)

(assert (=> b!207659 m!229435))

(declare-fun m!229437 () Bool)

(assert (=> b!207659 m!229437))

(declare-fun m!229439 () Bool)

(assert (=> b!207659 m!229439))

(declare-fun m!229441 () Bool)

(assert (=> b!207659 m!229441))

(declare-fun m!229443 () Bool)

(assert (=> b!207659 m!229443))

(declare-fun m!229445 () Bool)

(assert (=> b!207659 m!229445))

(declare-fun m!229447 () Bool)

(assert (=> b!207659 m!229447))

(assert (=> b!207659 m!229439))

(declare-fun m!229449 () Bool)

(assert (=> b!207659 m!229449))

(declare-fun m!229451 () Bool)

(assert (=> b!207659 m!229451))

(declare-fun m!229453 () Bool)

(assert (=> b!207659 m!229453))

(declare-fun m!229455 () Bool)

(assert (=> b!207659 m!229455))

(assert (=> b!207659 m!229393))

(declare-fun m!229457 () Bool)

(assert (=> b!207659 m!229457))

(declare-fun m!229459 () Bool)

(assert (=> b!207659 m!229459))

(assert (=> b!207659 m!229457))

(declare-fun m!229461 () Bool)

(assert (=> b!207659 m!229461))

(declare-fun m!229463 () Bool)

(assert (=> b!207659 m!229463))

(declare-fun m!229465 () Bool)

(assert (=> b!207659 m!229465))

(declare-fun m!229467 () Bool)

(assert (=> b!207659 m!229467))

(declare-fun m!229469 () Bool)

(assert (=> b!207687 m!229469))

(declare-fun m!229471 () Bool)

(assert (=> b!207657 m!229471))

(declare-fun m!229473 () Bool)

(assert (=> b!207691 m!229473))

(assert (=> b!207691 m!229473))

(declare-fun m!229475 () Bool)

(assert (=> b!207691 m!229475))

(assert (=> b!207691 m!229475))

(declare-fun m!229477 () Bool)

(assert (=> b!207691 m!229477))

(declare-fun m!229479 () Bool)

(assert (=> b!207691 m!229479))

(declare-fun m!229481 () Bool)

(assert (=> b!207689 m!229481))

(assert (=> b!207689 m!229481))

(declare-fun m!229483 () Bool)

(assert (=> b!207689 m!229483))

(declare-fun m!229485 () Bool)

(assert (=> b!207689 m!229485))

(declare-fun m!229487 () Bool)

(assert (=> b!207653 m!229487))

(declare-fun m!229489 () Bool)

(assert (=> b!207653 m!229489))

(declare-fun m!229491 () Bool)

(assert (=> b!207692 m!229491))

(declare-fun m!229493 () Bool)

(assert (=> b!207662 m!229493))

(assert (=> b!207662 m!229457))

(declare-fun m!229495 () Bool)

(assert (=> b!207652 m!229495))

(declare-fun m!229497 () Bool)

(assert (=> b!207646 m!229497))

(check-sat (not b_next!8035) (not b!207650) (not b!207662) (not b!207689) (not b!207646) (not b!207653) b_and!15007 (not b!207663) (not b!207666) (not b!207657) (not b!207660) b_and!15011 (not b!207682) (not b!207652) (not b!207671) (not b!207675) (not b_next!8041) (not b!207688) (not b!207678) (not b!207645) (not b_next!8033) (not b!207659) (not b!207665) b_and!15013 (not b!207686) (not b!207683) (not b_next!8039) b_and!15009 (not b!207668) (not b!207692) (not b!207679) (not b!207647) (not b!207680) (not b!207655) (not b!207673) (not b!207670) (not b!207677) (not b!207648) (not b!207664) (not b!207691) (not b!207687) (not b_next!8043) b_and!15005 (not b_next!8037) (not b!207702) (not start!22290) b_and!15015 (not b!207658) (not b!207654))
(check-sat b_and!15011 (not b_next!8041) (not b_next!8033) (not b_next!8035) b_and!15013 (not b_next!8039) b_and!15009 (not b_next!8043) b_and!15007 b_and!15015 b_and!15005 (not b_next!8037))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24490 () Bool)

(assert start!24490)

(declare-fun b!228610 () Bool)

(declare-fun b_free!8537 () Bool)

(declare-fun b_next!8537 () Bool)

(assert (=> b!228610 (= b_free!8537 (not b_next!8537))))

(declare-fun tp!93649 () Bool)

(declare-fun b_and!16949 () Bool)

(assert (=> b!228610 (= tp!93649 b_and!16949)))

(declare-fun b_free!8539 () Bool)

(declare-fun b_next!8539 () Bool)

(assert (=> b!228610 (= b_free!8539 (not b_next!8539))))

(declare-fun tp!93645 () Bool)

(declare-fun b_and!16951 () Bool)

(assert (=> b!228610 (= tp!93645 b_and!16951)))

(declare-fun b!228588 () Bool)

(declare-fun b_free!8541 () Bool)

(declare-fun b_next!8541 () Bool)

(assert (=> b!228588 (= b_free!8541 (not b_next!8541))))

(declare-fun tp!93653 () Bool)

(declare-fun b_and!16953 () Bool)

(assert (=> b!228588 (= tp!93653 b_and!16953)))

(declare-fun b_free!8543 () Bool)

(declare-fun b_next!8543 () Bool)

(assert (=> b!228588 (= b_free!8543 (not b_next!8543))))

(declare-fun tp!93650 () Bool)

(declare-fun b_and!16955 () Bool)

(assert (=> b!228588 (= tp!93650 b_and!16955)))

(declare-fun b!228586 () Bool)

(declare-fun b_free!8545 () Bool)

(declare-fun b_next!8545 () Bool)

(assert (=> b!228586 (= b_free!8545 (not b_next!8545))))

(declare-fun tp!93644 () Bool)

(declare-fun b_and!16957 () Bool)

(assert (=> b!228586 (= tp!93644 b_and!16957)))

(declare-fun b_free!8547 () Bool)

(declare-fun b_next!8547 () Bool)

(assert (=> b!228586 (= b_free!8547 (not b_next!8547))))

(declare-fun tp!93647 () Bool)

(declare-fun b_and!16959 () Bool)

(assert (=> b!228586 (= tp!93647 b_and!16959)))

(declare-fun bs!24338 () Bool)

(declare-fun b!228572 () Bool)

(declare-fun b!228576 () Bool)

(assert (= bs!24338 (and b!228572 b!228576)))

(declare-fun lambda!7212 () Int)

(declare-fun lambda!7211 () Int)

(assert (=> bs!24338 (not (= lambda!7212 lambda!7211))))

(declare-fun b!228632 () Bool)

(declare-fun e!141309 () Bool)

(assert (=> b!228632 (= e!141309 true)))

(declare-fun b!228631 () Bool)

(declare-fun e!141308 () Bool)

(assert (=> b!228631 (= e!141308 e!141309)))

(declare-fun b!228630 () Bool)

(declare-fun e!141307 () Bool)

(assert (=> b!228630 (= e!141307 e!141308)))

(assert (=> b!228572 e!141307))

(assert (= b!228631 b!228632))

(assert (= b!228630 b!228631))

(declare-datatypes ((C!2660 0))(
  ( (C!2661 (val!1216 Int)) )
))
(declare-datatypes ((List!3457 0))(
  ( (Nil!3447) (Cons!3447 (h!8844 (_ BitVec 16)) (t!33421 List!3457)) )
))
(declare-datatypes ((TokenValue!667 0))(
  ( (FloatLiteralValue!1334 (text!5114 List!3457)) (TokenValueExt!666 (__x!2821 Int)) (Broken!3335 (value!22672 List!3457)) (Object!676) (End!667) (Def!667) (Underscore!667) (Match!667) (Else!667) (Error!667) (Case!667) (If!667) (Extends!667) (Abstract!667) (Class!667) (Val!667) (DelimiterValue!1334 (del!727 List!3457)) (KeywordValue!673 (value!22673 List!3457)) (CommentValue!1334 (value!22674 List!3457)) (WhitespaceValue!1334 (value!22675 List!3457)) (IndentationValue!667 (value!22676 List!3457)) (String!4414) (Int32!667) (Broken!3336 (value!22677 List!3457)) (Boolean!668) (Unit!3939) (OperatorValue!670 (op!727 List!3457)) (IdentifierValue!1334 (value!22678 List!3457)) (IdentifierValue!1335 (value!22679 List!3457)) (WhitespaceValue!1335 (value!22680 List!3457)) (True!1334) (False!1334) (Broken!3337 (value!22681 List!3457)) (Broken!3338 (value!22682 List!3457)) (True!1335) (RightBrace!667) (RightBracket!667) (Colon!667) (Null!667) (Comma!667) (LeftBracket!667) (False!1335) (LeftBrace!667) (ImaginaryLiteralValue!667 (text!5115 List!3457)) (StringLiteralValue!2001 (value!22683 List!3457)) (EOFValue!667 (value!22684 List!3457)) (IdentValue!667 (value!22685 List!3457)) (DelimiterValue!1335 (value!22686 List!3457)) (DedentValue!667 (value!22687 List!3457)) (NewLineValue!667 (value!22688 List!3457)) (IntegerValue!2001 (value!22689 (_ BitVec 32)) (text!5116 List!3457)) (IntegerValue!2002 (value!22690 Int) (text!5117 List!3457)) (Times!667) (Or!667) (Equal!667) (Minus!667) (Broken!3339 (value!22691 List!3457)) (And!667) (Div!667) (LessEqual!667) (Mod!667) (Concat!1536) (Not!667) (Plus!667) (SpaceValue!667 (value!22692 List!3457)) (IntegerValue!2003 (value!22693 Int) (text!5118 List!3457)) (StringLiteralValue!2002 (text!5119 List!3457)) (FloatLiteralValue!1335 (text!5120 List!3457)) (BytesLiteralValue!667 (value!22694 List!3457)) (CommentValue!1335 (value!22695 List!3457)) (StringLiteralValue!2003 (value!22696 List!3457)) (ErrorTokenValue!667 (msg!728 List!3457)) )
))
(declare-datatypes ((List!3458 0))(
  ( (Nil!3448) (Cons!3448 (h!8845 C!2660) (t!33422 List!3458)) )
))
(declare-datatypes ((IArray!2225 0))(
  ( (IArray!2226 (innerList!1170 List!3458)) )
))
(declare-datatypes ((Conc!1112 0))(
  ( (Node!1112 (left!2781 Conc!1112) (right!3111 Conc!1112) (csize!2454 Int) (cheight!1323 Int)) (Leaf!1774 (xs!3707 IArray!2225) (csize!2455 Int)) (Empty!1112) )
))
(declare-datatypes ((BalanceConc!2232 0))(
  ( (BalanceConc!2233 (c!43829 Conc!1112)) )
))
(declare-datatypes ((TokenValueInjection!1106 0))(
  ( (TokenValueInjection!1107 (toValue!1340 Int) (toChars!1199 Int)) )
))
(declare-datatypes ((Regex!869 0))(
  ( (ElementMatch!869 (c!43830 C!2660)) (Concat!1537 (regOne!2250 Regex!869) (regTwo!2250 Regex!869)) (EmptyExpr!869) (Star!869 (reg!1198 Regex!869)) (EmptyLang!869) (Union!869 (regOne!2251 Regex!869) (regTwo!2251 Regex!869)) )
))
(declare-datatypes ((String!4415 0))(
  ( (String!4416 (value!22697 String)) )
))
(declare-datatypes ((Rule!1090 0))(
  ( (Rule!1091 (regex!645 Regex!869) (tag!845 String!4415) (isSeparator!645 Bool) (transformation!645 TokenValueInjection!1106)) )
))
(declare-datatypes ((List!3459 0))(
  ( (Nil!3449) (Cons!3449 (h!8846 Rule!1090) (t!33423 List!3459)) )
))
(declare-fun rules!1920 () List!3459)

(get-info :version)

(assert (= (and b!228572 ((_ is Cons!3449) rules!1920)) b!228630))

(declare-fun order!2395 () Int)

(declare-fun order!2393 () Int)

(declare-fun dynLambda!1605 (Int Int) Int)

(declare-fun dynLambda!1606 (Int Int) Int)

(assert (=> b!228632 (< (dynLambda!1605 order!2393 (toValue!1340 (transformation!645 (h!8846 rules!1920)))) (dynLambda!1606 order!2395 lambda!7212))))

(declare-fun order!2397 () Int)

(declare-fun dynLambda!1607 (Int Int) Int)

(assert (=> b!228632 (< (dynLambda!1607 order!2397 (toChars!1199 (transformation!645 (h!8846 rules!1920)))) (dynLambda!1606 order!2395 lambda!7212))))

(assert (=> b!228572 true))

(declare-fun e!141291 () Bool)

(declare-fun e!141298 () Bool)

(assert (=> b!228572 (= e!141291 e!141298)))

(declare-fun res!105270 () Bool)

(assert (=> b!228572 (=> res!105270 e!141298)))

(declare-datatypes ((Token!1034 0))(
  ( (Token!1035 (value!22698 TokenValue!667) (rule!1202 Rule!1090) (size!2766 Int) (originalCharacters!688 List!3458)) )
))
(declare-datatypes ((List!3460 0))(
  ( (Nil!3450) (Cons!3450 (h!8847 Token!1034) (t!33424 List!3460)) )
))
(declare-fun tokens!465 () List!3460)

(declare-datatypes ((LexerInterface!531 0))(
  ( (LexerInterfaceExt!528 (__x!2822 Int)) (Lexer!529) )
))
(declare-fun thiss!17480 () LexerInterface!531)

(declare-datatypes ((tuple2!3712 0))(
  ( (tuple2!3713 (_1!2072 Token!1034) (_2!2072 BalanceConc!2232)) )
))
(declare-datatypes ((Option!627 0))(
  ( (None!626) (Some!626 (v!14317 tuple2!3712)) )
))
(declare-fun isDefined!478 (Option!627) Bool)

(declare-fun maxPrefixZipperSequence!224 (LexerInterface!531 List!3459 BalanceConc!2232) Option!627)

(declare-fun seqFromList!667 (List!3458) BalanceConc!2232)

(assert (=> b!228572 (= res!105270 (not (isDefined!478 (maxPrefixZipperSequence!224 thiss!17480 rules!1920 (seqFromList!667 (originalCharacters!688 (h!8847 tokens!465)))))))))

(declare-datatypes ((Unit!3940 0))(
  ( (Unit!3941) )
))
(declare-fun lt!88917 () Unit!3940)

(declare-fun forallContained!212 (List!3460 Int Token!1034) Unit!3940)

(assert (=> b!228572 (= lt!88917 (forallContained!212 tokens!465 lambda!7212 (h!8847 tokens!465)))))

(declare-fun lt!88899 () List!3458)

(assert (=> b!228572 (= lt!88899 (originalCharacters!688 (h!8847 tokens!465)))))

(declare-fun b!228573 () Bool)

(declare-fun res!105252 () Bool)

(assert (=> b!228573 (=> res!105252 e!141291)))

(declare-fun rulesProduceIndividualToken!280 (LexerInterface!531 List!3459 Token!1034) Bool)

(assert (=> b!228573 (= res!105252 (not (rulesProduceIndividualToken!280 thiss!17480 rules!1920 (h!8847 tokens!465))))))

(declare-fun b!228574 () Bool)

(declare-fun e!141288 () Bool)

(assert (=> b!228574 (= e!141288 false)))

(declare-fun b!228575 () Bool)

(declare-fun res!105266 () Bool)

(declare-fun e!141265 () Bool)

(assert (=> b!228575 (=> (not res!105266) (not e!141265))))

(declare-fun rulesInvariant!497 (LexerInterface!531 List!3459) Bool)

(assert (=> b!228575 (= res!105266 (rulesInvariant!497 thiss!17480 rules!1920))))

(declare-fun res!105261 () Bool)

(declare-fun e!141269 () Bool)

(assert (=> b!228576 (=> (not res!105261) (not e!141269))))

(declare-fun forall!777 (List!3460 Int) Bool)

(assert (=> b!228576 (= res!105261 (forall!777 tokens!465 lambda!7211))))

(declare-fun tp!93646 () Bool)

(declare-fun e!141300 () Bool)

(declare-fun separatorToken!170 () Token!1034)

(declare-fun e!141285 () Bool)

(declare-fun b!228577 () Bool)

(declare-fun inv!21 (TokenValue!667) Bool)

(assert (=> b!228577 (= e!141300 (and (inv!21 (value!22698 separatorToken!170)) e!141285 tp!93646))))

(declare-fun b!228578 () Bool)

(declare-fun e!141295 () Bool)

(declare-fun e!141296 () Bool)

(assert (=> b!228578 (= e!141295 e!141296)))

(declare-fun res!105245 () Bool)

(assert (=> b!228578 (=> (not res!105245) (not e!141296))))

(declare-datatypes ((tuple2!3714 0))(
  ( (tuple2!3715 (_1!2073 Token!1034) (_2!2073 List!3458)) )
))
(declare-datatypes ((Option!628 0))(
  ( (None!627) (Some!627 (v!14318 tuple2!3714)) )
))
(declare-fun lt!88875 () Option!628)

(declare-fun isDefined!479 (Option!628) Bool)

(assert (=> b!228578 (= res!105245 (isDefined!479 lt!88875))))

(declare-fun lt!88909 () List!3458)

(declare-fun maxPrefix!261 (LexerInterface!531 List!3459 List!3458) Option!628)

(assert (=> b!228578 (= lt!88875 (maxPrefix!261 thiss!17480 rules!1920 lt!88909))))

(declare-fun b!228579 () Bool)

(declare-fun e!141278 () Bool)

(declare-fun e!141290 () Bool)

(assert (=> b!228579 (= e!141278 e!141290)))

(declare-fun res!105275 () Bool)

(assert (=> b!228579 (=> (not res!105275) (not e!141290))))

(declare-fun lt!88885 () Rule!1090)

(declare-fun lt!88897 () List!3458)

(declare-fun matchR!207 (Regex!869 List!3458) Bool)

(assert (=> b!228579 (= res!105275 (matchR!207 (regex!645 lt!88885) lt!88897))))

(declare-datatypes ((Option!629 0))(
  ( (None!628) (Some!628 (v!14319 Rule!1090)) )
))
(declare-fun lt!88919 () Option!629)

(declare-fun get!1089 (Option!629) Rule!1090)

(assert (=> b!228579 (= lt!88885 (get!1089 lt!88919))))

(declare-fun b!228580 () Bool)

(declare-fun res!105272 () Bool)

(assert (=> b!228580 (=> (not res!105272) (not e!141269))))

(declare-fun sepAndNonSepRulesDisjointChars!234 (List!3459 List!3459) Bool)

(assert (=> b!228580 (= res!105272 (sepAndNonSepRulesDisjointChars!234 rules!1920 rules!1920))))

(declare-fun b!228581 () Bool)

(declare-fun e!141263 () Unit!3940)

(declare-fun Unit!3942 () Unit!3940)

(assert (=> b!228581 (= e!141263 Unit!3942)))

(declare-fun b!228582 () Bool)

(declare-fun res!105246 () Bool)

(declare-fun e!141287 () Bool)

(assert (=> b!228582 (=> res!105246 e!141287)))

(declare-fun lt!88908 () List!3458)

(declare-fun filter!39 (List!3460 Int) List!3460)

(declare-datatypes ((tuple2!3716 0))(
  ( (tuple2!3717 (_1!2074 List!3460) (_2!2074 List!3458)) )
))
(declare-fun lexList!159 (LexerInterface!531 List!3459 List!3458) tuple2!3716)

(assert (=> b!228582 (= res!105246 (not (= (filter!39 (_1!2074 (lexList!159 thiss!17480 rules!1920 lt!88908)) lambda!7211) (t!33424 tokens!465))))))

(declare-fun b!228583 () Bool)

(declare-fun e!141289 () Unit!3940)

(declare-fun Unit!3943 () Unit!3940)

(assert (=> b!228583 (= e!141289 Unit!3943)))

(declare-fun lt!88874 () C!2660)

(declare-fun lt!88910 () Token!1034)

(declare-fun lt!88898 () Unit!3940)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!38 (LexerInterface!531 List!3459 List!3459 Rule!1090 Rule!1090 C!2660) Unit!3940)

(assert (=> b!228583 (= lt!88898 (lemmaSepRuleNotContainsCharContainedInANonSepRule!38 thiss!17480 rules!1920 rules!1920 (rule!1202 lt!88910) (rule!1202 separatorToken!170) lt!88874))))

(assert (=> b!228583 false))

(declare-fun b!228584 () Bool)

(declare-fun get!1090 (Option!628) tuple2!3714)

(declare-fun head!785 (List!3460) Token!1034)

(assert (=> b!228584 (= e!141296 (= (_1!2073 (get!1090 lt!88875)) (head!785 tokens!465)))))

(declare-fun b!228585 () Bool)

(declare-fun e!141284 () Bool)

(assert (=> b!228585 (= e!141284 e!141287)))

(declare-fun res!105255 () Bool)

(assert (=> b!228585 (=> res!105255 e!141287)))

(declare-fun lt!88918 () List!3460)

(assert (=> b!228585 (= res!105255 (not (= (filter!39 lt!88918 lambda!7211) (t!33424 tokens!465))))))

(assert (=> b!228585 (= (filter!39 lt!88918 lambda!7211) (t!33424 tokens!465))))

(declare-fun lt!88904 () BalanceConc!2232)

(declare-datatypes ((IArray!2227 0))(
  ( (IArray!2228 (innerList!1171 List!3460)) )
))
(declare-datatypes ((Conc!1113 0))(
  ( (Node!1113 (left!2782 Conc!1113) (right!3112 Conc!1113) (csize!2456 Int) (cheight!1324 Int)) (Leaf!1775 (xs!3708 IArray!2227) (csize!2457 Int)) (Empty!1113) )
))
(declare-datatypes ((BalanceConc!2234 0))(
  ( (BalanceConc!2235 (c!43831 Conc!1113)) )
))
(declare-fun list!1328 (BalanceConc!2234) List!3460)

(declare-datatypes ((tuple2!3718 0))(
  ( (tuple2!3719 (_1!2075 BalanceConc!2234) (_2!2075 BalanceConc!2232)) )
))
(declare-fun lex!331 (LexerInterface!531 List!3459 BalanceConc!2232) tuple2!3718)

(assert (=> b!228585 (= lt!88918 (list!1328 (_1!2075 (lex!331 thiss!17480 rules!1920 lt!88904))))))

(declare-fun lt!88895 () Unit!3940)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!30 (LexerInterface!531 List!3459 List!3460 Token!1034) Unit!3940)

(assert (=> b!228585 (= lt!88895 (theoremInvertabilityFromTokensSepTokenWhenNeeded!30 thiss!17480 rules!1920 (t!33424 tokens!465) separatorToken!170))))

(declare-fun lt!88896 () Option!628)

(assert (=> b!228585 (= lt!88896 (Some!627 (tuple2!3715 separatorToken!170 lt!88908)))))

(declare-fun lt!88892 () Unit!3940)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!36 (LexerInterface!531 List!3459 Token!1034 Rule!1090 List!3458 Rule!1090) Unit!3940)

(assert (=> b!228585 (= lt!88892 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!36 thiss!17480 rules!1920 separatorToken!170 (rule!1202 separatorToken!170) lt!88908 (rule!1202 lt!88910)))))

(declare-fun lt!88884 () Unit!3940)

(assert (=> b!228585 (= lt!88884 e!141289)))

(declare-fun c!43826 () Bool)

(declare-fun contains!620 (List!3458 C!2660) Bool)

(declare-fun usedCharacters!50 (Regex!869) List!3458)

(assert (=> b!228585 (= c!43826 (contains!620 (usedCharacters!50 (regex!645 (rule!1202 separatorToken!170))) lt!88874))))

(declare-fun head!786 (List!3458) C!2660)

(assert (=> b!228585 (= lt!88874 (head!786 lt!88908))))

(declare-fun lt!88878 () Unit!3940)

(declare-fun e!141274 () Unit!3940)

(assert (=> b!228585 (= lt!88878 e!141274)))

(declare-fun c!43828 () Bool)

(declare-fun lt!88894 () C!2660)

(assert (=> b!228585 (= c!43828 (not (contains!620 (usedCharacters!50 (regex!645 (rule!1202 lt!88910))) lt!88894)))))

(assert (=> b!228585 (= lt!88894 (head!786 lt!88897))))

(assert (=> b!228585 e!141278))

(declare-fun res!105249 () Bool)

(assert (=> b!228585 (=> (not res!105249) (not e!141278))))

(declare-fun isDefined!480 (Option!629) Bool)

(assert (=> b!228585 (= res!105249 (isDefined!480 lt!88919))))

(declare-fun getRuleFromTag!86 (LexerInterface!531 List!3459 String!4415) Option!629)

(assert (=> b!228585 (= lt!88919 (getRuleFromTag!86 thiss!17480 rules!1920 (tag!845 (rule!1202 lt!88910))))))

(declare-fun lt!88914 () Unit!3940)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!86 (LexerInterface!531 List!3459 List!3458 Token!1034) Unit!3940)

(assert (=> b!228585 (= lt!88914 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!86 thiss!17480 rules!1920 lt!88897 lt!88910))))

(declare-fun list!1329 (BalanceConc!2232) List!3458)

(declare-fun charsOf!300 (Token!1034) BalanceConc!2232)

(assert (=> b!228585 (= lt!88897 (list!1329 (charsOf!300 lt!88910)))))

(declare-fun lt!88891 () Unit!3940)

(assert (=> b!228585 (= lt!88891 (forallContained!212 tokens!465 lambda!7212 lt!88910))))

(declare-fun e!141294 () Bool)

(assert (=> b!228585 e!141294))

(declare-fun res!105267 () Bool)

(assert (=> b!228585 (=> (not res!105267) (not e!141294))))

(declare-fun lt!88887 () tuple2!3718)

(declare-fun size!2767 (BalanceConc!2234) Int)

(assert (=> b!228585 (= res!105267 (= (size!2767 (_1!2075 lt!88887)) 1))))

(declare-fun lt!88880 () BalanceConc!2232)

(assert (=> b!228585 (= lt!88887 (lex!331 thiss!17480 rules!1920 lt!88880))))

(declare-fun lt!88903 () BalanceConc!2234)

(declare-fun printTailRec!225 (LexerInterface!531 BalanceConc!2234 Int BalanceConc!2232) BalanceConc!2232)

(assert (=> b!228585 (= lt!88880 (printTailRec!225 thiss!17480 lt!88903 0 (BalanceConc!2233 Empty!1112)))))

(declare-fun print!262 (LexerInterface!531 BalanceConc!2234) BalanceConc!2232)

(assert (=> b!228585 (= lt!88880 (print!262 thiss!17480 lt!88903))))

(declare-fun singletonSeq!197 (Token!1034) BalanceConc!2234)

(assert (=> b!228585 (= lt!88903 (singletonSeq!197 lt!88910))))

(declare-fun e!141299 () Bool)

(assert (=> b!228585 e!141299))

(declare-fun res!105248 () Bool)

(assert (=> b!228585 (=> (not res!105248) (not e!141299))))

(declare-fun lt!88882 () Option!629)

(assert (=> b!228585 (= res!105248 (isDefined!480 lt!88882))))

(assert (=> b!228585 (= lt!88882 (getRuleFromTag!86 thiss!17480 rules!1920 (tag!845 (rule!1202 separatorToken!170))))))

(declare-fun lt!88879 () List!3458)

(declare-fun lt!88901 () Unit!3940)

(assert (=> b!228585 (= lt!88901 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!86 thiss!17480 rules!1920 lt!88879 separatorToken!170))))

(declare-fun e!141277 () Bool)

(assert (=> b!228585 e!141277))

(declare-fun res!105274 () Bool)

(assert (=> b!228585 (=> (not res!105274) (not e!141277))))

(declare-fun lt!88889 () tuple2!3718)

(assert (=> b!228585 (= res!105274 (= (size!2767 (_1!2075 lt!88889)) 1))))

(declare-fun lt!88886 () BalanceConc!2232)

(assert (=> b!228585 (= lt!88889 (lex!331 thiss!17480 rules!1920 lt!88886))))

(declare-fun lt!88883 () BalanceConc!2234)

(assert (=> b!228585 (= lt!88886 (printTailRec!225 thiss!17480 lt!88883 0 (BalanceConc!2233 Empty!1112)))))

(assert (=> b!228585 (= lt!88886 (print!262 thiss!17480 lt!88883))))

(assert (=> b!228585 (= lt!88883 (singletonSeq!197 separatorToken!170))))

(assert (=> b!228585 (rulesProduceIndividualToken!280 thiss!17480 rules!1920 lt!88910)))

(declare-fun lt!88905 () Unit!3940)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!98 (LexerInterface!531 List!3459 List!3460 Token!1034) Unit!3940)

(assert (=> b!228585 (= lt!88905 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!98 thiss!17480 rules!1920 tokens!465 lt!88910))))

(assert (=> b!228585 (= lt!88910 (head!785 (t!33424 tokens!465)))))

(declare-fun lt!88893 () Unit!3940)

(assert (=> b!228585 (= lt!88893 e!141263)))

(declare-fun c!43827 () Bool)

(declare-fun isEmpty!1978 (List!3460) Bool)

(assert (=> b!228585 (= c!43827 (isEmpty!1978 (t!33424 tokens!465)))))

(declare-fun lt!88888 () List!3458)

(assert (=> b!228585 (= lt!88896 (maxPrefix!261 thiss!17480 rules!1920 lt!88888))))

(declare-fun lt!88906 () tuple2!3714)

(assert (=> b!228585 (= lt!88888 (_2!2073 lt!88906))))

(declare-fun lt!88912 () Unit!3940)

(declare-fun lemmaSamePrefixThenSameSuffix!166 (List!3458 List!3458 List!3458 List!3458 List!3458) Unit!3940)

(assert (=> b!228585 (= lt!88912 (lemmaSamePrefixThenSameSuffix!166 lt!88899 lt!88888 lt!88899 (_2!2073 lt!88906) lt!88909))))

(assert (=> b!228585 (= lt!88906 (get!1090 (maxPrefix!261 thiss!17480 rules!1920 lt!88909)))))

(declare-fun lt!88890 () List!3458)

(declare-fun isPrefix!341 (List!3458 List!3458) Bool)

(assert (=> b!228585 (isPrefix!341 lt!88899 lt!88890)))

(declare-fun lt!88872 () Unit!3940)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!236 (List!3458 List!3458) Unit!3940)

(assert (=> b!228585 (= lt!88872 (lemmaConcatTwoListThenFirstIsPrefix!236 lt!88899 lt!88888))))

(assert (=> b!228585 e!141295))

(declare-fun res!105254 () Bool)

(assert (=> b!228585 (=> res!105254 e!141295)))

(assert (=> b!228585 (= res!105254 (isEmpty!1978 tokens!465))))

(declare-fun lt!88913 () Unit!3940)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!106 (LexerInterface!531 List!3459 List!3460 Token!1034) Unit!3940)

(assert (=> b!228585 (= lt!88913 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!106 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun e!141267 () Bool)

(assert (=> b!228586 (= e!141267 (and tp!93644 tp!93647))))

(declare-fun b!228587 () Bool)

(declare-fun res!105268 () Bool)

(assert (=> b!228587 (=> (not res!105268) (not e!141269))))

(assert (=> b!228587 (= res!105268 ((_ is Cons!3450) tokens!465))))

(declare-fun e!141268 () Bool)

(assert (=> b!228588 (= e!141268 (and tp!93653 tp!93650))))

(declare-fun b!228589 () Bool)

(declare-fun isEmpty!1979 (BalanceConc!2232) Bool)

(assert (=> b!228589 (= e!141277 (isEmpty!1979 (_2!2075 lt!88889)))))

(declare-fun e!141292 () Bool)

(declare-fun e!141276 () Bool)

(declare-fun b!228590 () Bool)

(declare-fun tp!93655 () Bool)

(declare-fun inv!4299 (String!4415) Bool)

(declare-fun inv!4302 (TokenValueInjection!1106) Bool)

(assert (=> b!228590 (= e!141276 (and tp!93655 (inv!4299 (tag!845 (h!8846 rules!1920))) (inv!4302 (transformation!645 (h!8846 rules!1920))) e!141292))))

(declare-fun b!228591 () Bool)

(declare-fun e!141270 () Bool)

(assert (=> b!228591 (= e!141299 e!141270)))

(declare-fun res!105258 () Bool)

(assert (=> b!228591 (=> (not res!105258) (not e!141270))))

(declare-fun lt!88873 () Rule!1090)

(assert (=> b!228591 (= res!105258 (matchR!207 (regex!645 lt!88873) lt!88879))))

(assert (=> b!228591 (= lt!88873 (get!1089 lt!88882))))

(declare-fun b!228592 () Bool)

(declare-fun Unit!3944 () Unit!3940)

(assert (=> b!228592 (= e!141274 Unit!3944)))

(declare-fun e!141280 () Bool)

(declare-fun tp!93651 () Bool)

(declare-fun b!228593 () Bool)

(declare-fun e!141273 () Bool)

(declare-fun inv!4303 (Token!1034) Bool)

(assert (=> b!228593 (= e!141273 (and (inv!4303 (h!8847 tokens!465)) e!141280 tp!93651))))

(declare-fun b!228594 () Bool)

(declare-fun Unit!3945 () Unit!3940)

(assert (=> b!228594 (= e!141274 Unit!3945)))

(declare-fun lt!88900 () Unit!3940)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!44 (Regex!869 List!3458 C!2660) Unit!3940)

(assert (=> b!228594 (= lt!88900 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!44 (regex!645 (rule!1202 lt!88910)) lt!88897 lt!88894))))

(declare-fun res!105271 () Bool)

(assert (=> b!228594 (= res!105271 (not (matchR!207 (regex!645 (rule!1202 lt!88910)) lt!88897)))))

(assert (=> b!228594 (=> (not res!105271) (not e!141288))))

(assert (=> b!228594 e!141288))

(declare-fun b!228595 () Bool)

(declare-fun e!141271 () Bool)

(declare-fun tp!93652 () Bool)

(assert (=> b!228595 (= e!141271 (and e!141276 tp!93652))))

(declare-fun tp!93643 () Bool)

(declare-fun b!228596 () Bool)

(assert (=> b!228596 (= e!141285 (and tp!93643 (inv!4299 (tag!845 (rule!1202 separatorToken!170))) (inv!4302 (transformation!645 (rule!1202 separatorToken!170))) e!141268))))

(declare-fun b!228597 () Bool)

(declare-fun res!105244 () Bool)

(declare-fun e!141282 () Bool)

(assert (=> b!228597 (=> (not res!105244) (not e!141282))))

(declare-fun lt!88907 () List!3458)

(assert (=> b!228597 (= res!105244 (= (list!1329 (seqFromList!667 lt!88909)) lt!88907))))

(declare-fun b!228598 () Bool)

(assert (=> b!228598 (= e!141265 e!141269)))

(declare-fun res!105247 () Bool)

(assert (=> b!228598 (=> (not res!105247) (not e!141269))))

(declare-fun lt!88915 () BalanceConc!2234)

(declare-fun rulesProduceEachTokenIndividually!323 (LexerInterface!531 List!3459 BalanceConc!2234) Bool)

(assert (=> b!228598 (= res!105247 (rulesProduceEachTokenIndividually!323 thiss!17480 rules!1920 lt!88915))))

(declare-fun seqFromList!668 (List!3460) BalanceConc!2234)

(assert (=> b!228598 (= lt!88915 (seqFromList!668 tokens!465))))

(declare-fun b!228599 () Bool)

(declare-fun e!141272 () Bool)

(assert (=> b!228599 (= e!141272 e!141291)))

(declare-fun res!105273 () Bool)

(assert (=> b!228599 (=> res!105273 e!141291)))

(declare-fun lt!88920 () List!3458)

(declare-fun lt!88870 () List!3458)

(assert (=> b!228599 (= res!105273 (or (not (= lt!88920 lt!88870)) (not (= lt!88870 lt!88899)) (not (= lt!88920 lt!88899))))))

(declare-fun printList!215 (LexerInterface!531 List!3460) List!3458)

(assert (=> b!228599 (= lt!88870 (printList!215 thiss!17480 (Cons!3450 (h!8847 tokens!465) Nil!3450)))))

(declare-fun lt!88869 () BalanceConc!2232)

(assert (=> b!228599 (= lt!88920 (list!1329 lt!88869))))

(declare-fun lt!88876 () BalanceConc!2234)

(assert (=> b!228599 (= lt!88869 (printTailRec!225 thiss!17480 lt!88876 0 (BalanceConc!2233 Empty!1112)))))

(assert (=> b!228599 (= lt!88869 (print!262 thiss!17480 lt!88876))))

(assert (=> b!228599 (= lt!88876 (singletonSeq!197 (h!8847 tokens!465)))))

(declare-fun b!228600 () Bool)

(declare-fun res!105243 () Bool)

(assert (=> b!228600 (=> (not res!105243) (not e!141265))))

(declare-fun isEmpty!1980 (List!3459) Bool)

(assert (=> b!228600 (= res!105243 (not (isEmpty!1980 rules!1920)))))

(declare-fun b!228601 () Bool)

(assert (=> b!228601 (= e!141290 (= (rule!1202 lt!88910) lt!88885))))

(declare-fun b!228602 () Bool)

(declare-fun Unit!3946 () Unit!3940)

(assert (=> b!228602 (= e!141289 Unit!3946)))

(declare-fun b!228603 () Bool)

(declare-fun res!105263 () Bool)

(assert (=> b!228603 (=> res!105263 e!141291)))

(declare-fun isEmpty!1981 (BalanceConc!2234) Bool)

(assert (=> b!228603 (= res!105263 (isEmpty!1981 (_1!2075 (lex!331 thiss!17480 rules!1920 (seqFromList!667 lt!88899)))))))

(declare-fun b!228604 () Bool)

(declare-fun res!105269 () Bool)

(assert (=> b!228604 (=> (not res!105269) (not e!141294))))

(declare-fun apply!622 (BalanceConc!2234 Int) Token!1034)

(assert (=> b!228604 (= res!105269 (= (apply!622 (_1!2075 lt!88887) 0) lt!88910))))

(declare-fun b!228605 () Bool)

(declare-fun e!141266 () Bool)

(assert (=> b!228605 (= e!141282 (not e!141266))))

(declare-fun res!105264 () Bool)

(assert (=> b!228605 (=> res!105264 e!141266)))

(assert (=> b!228605 (= res!105264 (not (= lt!88908 (list!1329 lt!88904))))))

(declare-fun printWithSeparatorTokenWhenNeededRec!214 (LexerInterface!531 List!3459 BalanceConc!2234 Token!1034 Int) BalanceConc!2232)

(assert (=> b!228605 (= lt!88904 (printWithSeparatorTokenWhenNeededRec!214 thiss!17480 rules!1920 (seqFromList!668 (t!33424 tokens!465)) separatorToken!170 0))))

(declare-fun lt!88881 () List!3458)

(assert (=> b!228605 (= lt!88881 lt!88890)))

(declare-fun ++!866 (List!3458 List!3458) List!3458)

(assert (=> b!228605 (= lt!88890 (++!866 lt!88899 lt!88888))))

(assert (=> b!228605 (= lt!88881 (++!866 (++!866 lt!88899 lt!88879) lt!88908))))

(declare-fun lt!88911 () Unit!3940)

(declare-fun lemmaConcatAssociativity!346 (List!3458 List!3458 List!3458) Unit!3940)

(assert (=> b!228605 (= lt!88911 (lemmaConcatAssociativity!346 lt!88899 lt!88879 lt!88908))))

(assert (=> b!228605 (= lt!88899 (list!1329 (charsOf!300 (h!8847 tokens!465))))))

(assert (=> b!228605 (= lt!88888 (++!866 lt!88879 lt!88908))))

(declare-fun printWithSeparatorTokenWhenNeededList!224 (LexerInterface!531 List!3459 List!3460 Token!1034) List!3458)

(assert (=> b!228605 (= lt!88908 (printWithSeparatorTokenWhenNeededList!224 thiss!17480 rules!1920 (t!33424 tokens!465) separatorToken!170))))

(assert (=> b!228605 (= lt!88879 (list!1329 (charsOf!300 separatorToken!170)))))

(declare-fun b!228606 () Bool)

(assert (=> b!228606 (= e!141287 true)))

(declare-fun lt!88871 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!181 (LexerInterface!531 List!3459 List!3460) Bool)

(assert (=> b!228606 (= lt!88871 (rulesProduceEachTokenIndividuallyList!181 thiss!17480 rules!1920 tokens!465))))

(declare-fun b!228607 () Bool)

(assert (=> b!228607 (= e!141266 e!141272)))

(declare-fun res!105260 () Bool)

(assert (=> b!228607 (=> res!105260 e!141272)))

(declare-fun e!141281 () Bool)

(assert (=> b!228607 (= res!105260 e!141281)))

(declare-fun res!105265 () Bool)

(assert (=> b!228607 (=> (not res!105265) (not e!141281))))

(declare-fun lt!88902 () Bool)

(assert (=> b!228607 (= res!105265 (not lt!88902))))

(assert (=> b!228607 (= lt!88902 (= lt!88909 lt!88890))))

(declare-fun b!228608 () Bool)

(declare-fun Unit!3947 () Unit!3940)

(assert (=> b!228608 (= e!141263 Unit!3947)))

(assert (=> b!228608 false))

(declare-fun res!105276 () Bool)

(assert (=> start!24490 (=> (not res!105276) (not e!141265))))

(assert (=> start!24490 (= res!105276 ((_ is Lexer!529) thiss!17480))))

(assert (=> start!24490 e!141265))

(assert (=> start!24490 true))

(assert (=> start!24490 e!141271))

(assert (=> start!24490 (and (inv!4303 separatorToken!170) e!141300)))

(assert (=> start!24490 e!141273))

(declare-fun b!228609 () Bool)

(assert (=> b!228609 (= e!141269 e!141282)))

(declare-fun res!105251 () Bool)

(assert (=> b!228609 (=> (not res!105251) (not e!141282))))

(assert (=> b!228609 (= res!105251 (= lt!88909 lt!88907))))

(assert (=> b!228609 (= lt!88907 (list!1329 (printWithSeparatorTokenWhenNeededRec!214 thiss!17480 rules!1920 lt!88915 separatorToken!170 0)))))

(assert (=> b!228609 (= lt!88909 (printWithSeparatorTokenWhenNeededList!224 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> b!228610 (= e!141292 (and tp!93649 tp!93645))))

(declare-fun b!228611 () Bool)

(declare-fun e!141293 () Bool)

(assert (=> b!228611 (= e!141293 (matchR!207 (regex!645 (rule!1202 (h!8847 tokens!465))) lt!88899))))

(declare-fun b!228612 () Bool)

(declare-fun e!141283 () Bool)

(declare-fun tp!93654 () Bool)

(assert (=> b!228612 (= e!141283 (and tp!93654 (inv!4299 (tag!845 (rule!1202 (h!8847 tokens!465)))) (inv!4302 (transformation!645 (rule!1202 (h!8847 tokens!465)))) e!141267))))

(declare-fun b!228613 () Bool)

(declare-fun res!105257 () Bool)

(assert (=> b!228613 (=> (not res!105257) (not e!141293))))

(declare-fun lt!88916 () tuple2!3714)

(declare-fun isEmpty!1982 (List!3458) Bool)

(assert (=> b!228613 (= res!105257 (isEmpty!1982 (_2!2073 lt!88916)))))

(declare-fun b!228614 () Bool)

(assert (=> b!228614 (= e!141294 (isEmpty!1979 (_2!2075 lt!88887)))))

(declare-fun b!228615 () Bool)

(assert (=> b!228615 (= e!141281 (not (= lt!88909 (++!866 lt!88899 lt!88908))))))

(declare-fun b!228616 () Bool)

(assert (=> b!228616 (= e!141270 (= (rule!1202 separatorToken!170) lt!88873))))

(declare-fun b!228617 () Bool)

(declare-fun res!105253 () Bool)

(assert (=> b!228617 (=> (not res!105253) (not e!141269))))

(assert (=> b!228617 (= res!105253 (rulesProduceIndividualToken!280 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!228618 () Bool)

(declare-fun res!105262 () Bool)

(assert (=> b!228618 (=> (not res!105262) (not e!141277))))

(assert (=> b!228618 (= res!105262 (= (apply!622 (_1!2075 lt!88889) 0) separatorToken!170))))

(declare-fun b!228619 () Bool)

(declare-fun res!105259 () Bool)

(assert (=> b!228619 (=> (not res!105259) (not e!141269))))

(assert (=> b!228619 (= res!105259 (isSeparator!645 (rule!1202 separatorToken!170)))))

(declare-fun b!228620 () Bool)

(declare-fun tp!93648 () Bool)

(assert (=> b!228620 (= e!141280 (and (inv!21 (value!22698 (h!8847 tokens!465))) e!141283 tp!93648))))

(declare-fun b!228621 () Bool)

(assert (=> b!228621 (= e!141298 e!141284)))

(declare-fun res!105256 () Bool)

(assert (=> b!228621 (=> res!105256 e!141284)))

(assert (=> b!228621 (= res!105256 (not lt!88902))))

(assert (=> b!228621 e!141293))

(declare-fun res!105250 () Bool)

(assert (=> b!228621 (=> (not res!105250) (not e!141293))))

(assert (=> b!228621 (= res!105250 (= (_1!2073 lt!88916) (h!8847 tokens!465)))))

(declare-fun lt!88877 () Option!628)

(assert (=> b!228621 (= lt!88916 (get!1090 lt!88877))))

(assert (=> b!228621 (isDefined!479 lt!88877)))

(assert (=> b!228621 (= lt!88877 (maxPrefix!261 thiss!17480 rules!1920 lt!88899))))

(assert (= (and start!24490 res!105276) b!228600))

(assert (= (and b!228600 res!105243) b!228575))

(assert (= (and b!228575 res!105266) b!228598))

(assert (= (and b!228598 res!105247) b!228617))

(assert (= (and b!228617 res!105253) b!228619))

(assert (= (and b!228619 res!105259) b!228576))

(assert (= (and b!228576 res!105261) b!228580))

(assert (= (and b!228580 res!105272) b!228587))

(assert (= (and b!228587 res!105268) b!228609))

(assert (= (and b!228609 res!105251) b!228597))

(assert (= (and b!228597 res!105244) b!228605))

(assert (= (and b!228605 (not res!105264)) b!228607))

(assert (= (and b!228607 res!105265) b!228615))

(assert (= (and b!228607 (not res!105260)) b!228599))

(assert (= (and b!228599 (not res!105273)) b!228573))

(assert (= (and b!228573 (not res!105252)) b!228603))

(assert (= (and b!228603 (not res!105263)) b!228572))

(assert (= (and b!228572 (not res!105270)) b!228621))

(assert (= (and b!228621 res!105250) b!228613))

(assert (= (and b!228613 res!105257) b!228611))

(assert (= (and b!228621 (not res!105256)) b!228585))

(assert (= (and b!228585 (not res!105254)) b!228578))

(assert (= (and b!228578 res!105245) b!228584))

(assert (= (and b!228585 c!43827) b!228608))

(assert (= (and b!228585 (not c!43827)) b!228581))

(assert (= (and b!228585 res!105274) b!228618))

(assert (= (and b!228618 res!105262) b!228589))

(assert (= (and b!228585 res!105248) b!228591))

(assert (= (and b!228591 res!105258) b!228616))

(assert (= (and b!228585 res!105267) b!228604))

(assert (= (and b!228604 res!105269) b!228614))

(assert (= (and b!228585 res!105249) b!228579))

(assert (= (and b!228579 res!105275) b!228601))

(assert (= (and b!228585 c!43828) b!228594))

(assert (= (and b!228585 (not c!43828)) b!228592))

(assert (= (and b!228594 res!105271) b!228574))

(assert (= (and b!228585 c!43826) b!228583))

(assert (= (and b!228585 (not c!43826)) b!228602))

(assert (= (and b!228585 (not res!105255)) b!228582))

(assert (= (and b!228582 (not res!105246)) b!228606))

(assert (= b!228590 b!228610))

(assert (= b!228595 b!228590))

(assert (= (and start!24490 ((_ is Cons!3449) rules!1920)) b!228595))

(assert (= b!228596 b!228588))

(assert (= b!228577 b!228596))

(assert (= start!24490 b!228577))

(assert (= b!228612 b!228586))

(assert (= b!228620 b!228612))

(assert (= b!228593 b!228620))

(assert (= (and start!24490 ((_ is Cons!3450) tokens!465)) b!228593))

(declare-fun m!269429 () Bool)

(assert (=> b!228579 m!269429))

(declare-fun m!269431 () Bool)

(assert (=> b!228579 m!269431))

(declare-fun m!269433 () Bool)

(assert (=> b!228594 m!269433))

(declare-fun m!269435 () Bool)

(assert (=> b!228594 m!269435))

(declare-fun m!269437 () Bool)

(assert (=> b!228618 m!269437))

(declare-fun m!269439 () Bool)

(assert (=> b!228606 m!269439))

(declare-fun m!269441 () Bool)

(assert (=> b!228585 m!269441))

(declare-fun m!269443 () Bool)

(assert (=> b!228585 m!269443))

(declare-fun m!269445 () Bool)

(assert (=> b!228585 m!269445))

(declare-fun m!269447 () Bool)

(assert (=> b!228585 m!269447))

(declare-fun m!269449 () Bool)

(assert (=> b!228585 m!269449))

(declare-fun m!269451 () Bool)

(assert (=> b!228585 m!269451))

(declare-fun m!269453 () Bool)

(assert (=> b!228585 m!269453))

(declare-fun m!269455 () Bool)

(assert (=> b!228585 m!269455))

(declare-fun m!269457 () Bool)

(assert (=> b!228585 m!269457))

(declare-fun m!269459 () Bool)

(assert (=> b!228585 m!269459))

(assert (=> b!228585 m!269457))

(declare-fun m!269461 () Bool)

(assert (=> b!228585 m!269461))

(assert (=> b!228585 m!269453))

(declare-fun m!269463 () Bool)

(assert (=> b!228585 m!269463))

(declare-fun m!269465 () Bool)

(assert (=> b!228585 m!269465))

(declare-fun m!269467 () Bool)

(assert (=> b!228585 m!269467))

(declare-fun m!269469 () Bool)

(assert (=> b!228585 m!269469))

(declare-fun m!269471 () Bool)

(assert (=> b!228585 m!269471))

(declare-fun m!269473 () Bool)

(assert (=> b!228585 m!269473))

(declare-fun m!269475 () Bool)

(assert (=> b!228585 m!269475))

(declare-fun m!269477 () Bool)

(assert (=> b!228585 m!269477))

(declare-fun m!269479 () Bool)

(assert (=> b!228585 m!269479))

(declare-fun m!269481 () Bool)

(assert (=> b!228585 m!269481))

(declare-fun m!269483 () Bool)

(assert (=> b!228585 m!269483))

(declare-fun m!269485 () Bool)

(assert (=> b!228585 m!269485))

(declare-fun m!269487 () Bool)

(assert (=> b!228585 m!269487))

(declare-fun m!269489 () Bool)

(assert (=> b!228585 m!269489))

(declare-fun m!269491 () Bool)

(assert (=> b!228585 m!269491))

(declare-fun m!269493 () Bool)

(assert (=> b!228585 m!269493))

(declare-fun m!269495 () Bool)

(assert (=> b!228585 m!269495))

(assert (=> b!228585 m!269447))

(declare-fun m!269497 () Bool)

(assert (=> b!228585 m!269497))

(declare-fun m!269499 () Bool)

(assert (=> b!228585 m!269499))

(declare-fun m!269501 () Bool)

(assert (=> b!228585 m!269501))

(assert (=> b!228585 m!269481))

(declare-fun m!269503 () Bool)

(assert (=> b!228585 m!269503))

(declare-fun m!269505 () Bool)

(assert (=> b!228585 m!269505))

(declare-fun m!269507 () Bool)

(assert (=> b!228585 m!269507))

(declare-fun m!269509 () Bool)

(assert (=> b!228585 m!269509))

(declare-fun m!269511 () Bool)

(assert (=> b!228585 m!269511))

(declare-fun m!269513 () Bool)

(assert (=> b!228585 m!269513))

(assert (=> b!228585 m!269461))

(declare-fun m!269515 () Bool)

(assert (=> b!228585 m!269515))

(declare-fun m!269517 () Bool)

(assert (=> b!228585 m!269517))

(declare-fun m!269519 () Bool)

(assert (=> b!228585 m!269519))

(declare-fun m!269521 () Bool)

(assert (=> b!228585 m!269521))

(declare-fun m!269523 () Bool)

(assert (=> b!228585 m!269523))

(declare-fun m!269525 () Bool)

(assert (=> b!228577 m!269525))

(declare-fun m!269527 () Bool)

(assert (=> b!228596 m!269527))

(declare-fun m!269529 () Bool)

(assert (=> b!228596 m!269529))

(declare-fun m!269531 () Bool)

(assert (=> b!228578 m!269531))

(assert (=> b!228578 m!269447))

(declare-fun m!269533 () Bool)

(assert (=> b!228590 m!269533))

(declare-fun m!269535 () Bool)

(assert (=> b!228590 m!269535))

(declare-fun m!269537 () Bool)

(assert (=> b!228582 m!269537))

(declare-fun m!269539 () Bool)

(assert (=> b!228582 m!269539))

(declare-fun m!269541 () Bool)

(assert (=> b!228621 m!269541))

(declare-fun m!269543 () Bool)

(assert (=> b!228621 m!269543))

(declare-fun m!269545 () Bool)

(assert (=> b!228621 m!269545))

(declare-fun m!269547 () Bool)

(assert (=> b!228603 m!269547))

(assert (=> b!228603 m!269547))

(declare-fun m!269549 () Bool)

(assert (=> b!228603 m!269549))

(declare-fun m!269551 () Bool)

(assert (=> b!228603 m!269551))

(declare-fun m!269553 () Bool)

(assert (=> b!228614 m!269553))

(declare-fun m!269555 () Bool)

(assert (=> b!228604 m!269555))

(declare-fun m!269557 () Bool)

(assert (=> b!228615 m!269557))

(declare-fun m!269559 () Bool)

(assert (=> b!228593 m!269559))

(declare-fun m!269561 () Bool)

(assert (=> b!228575 m!269561))

(declare-fun m!269563 () Bool)

(assert (=> b!228580 m!269563))

(declare-fun m!269565 () Bool)

(assert (=> b!228573 m!269565))

(declare-fun m!269567 () Bool)

(assert (=> b!228617 m!269567))

(declare-fun m!269569 () Bool)

(assert (=> b!228620 m!269569))

(declare-fun m!269571 () Bool)

(assert (=> b!228599 m!269571))

(declare-fun m!269573 () Bool)

(assert (=> b!228599 m!269573))

(declare-fun m!269575 () Bool)

(assert (=> b!228599 m!269575))

(declare-fun m!269577 () Bool)

(assert (=> b!228599 m!269577))

(declare-fun m!269579 () Bool)

(assert (=> b!228599 m!269579))

(declare-fun m!269581 () Bool)

(assert (=> b!228597 m!269581))

(assert (=> b!228597 m!269581))

(declare-fun m!269583 () Bool)

(assert (=> b!228597 m!269583))

(declare-fun m!269585 () Bool)

(assert (=> b!228583 m!269585))

(declare-fun m!269587 () Bool)

(assert (=> b!228589 m!269587))

(declare-fun m!269589 () Bool)

(assert (=> b!228576 m!269589))

(declare-fun m!269591 () Bool)

(assert (=> b!228600 m!269591))

(declare-fun m!269593 () Bool)

(assert (=> b!228598 m!269593))

(declare-fun m!269595 () Bool)

(assert (=> b!228598 m!269595))

(declare-fun m!269597 () Bool)

(assert (=> b!228605 m!269597))

(declare-fun m!269599 () Bool)

(assert (=> b!228605 m!269599))

(declare-fun m!269601 () Bool)

(assert (=> b!228605 m!269601))

(declare-fun m!269603 () Bool)

(assert (=> b!228605 m!269603))

(declare-fun m!269605 () Bool)

(assert (=> b!228605 m!269605))

(declare-fun m!269607 () Bool)

(assert (=> b!228605 m!269607))

(assert (=> b!228605 m!269605))

(declare-fun m!269609 () Bool)

(assert (=> b!228605 m!269609))

(declare-fun m!269611 () Bool)

(assert (=> b!228605 m!269611))

(declare-fun m!269613 () Bool)

(assert (=> b!228605 m!269613))

(declare-fun m!269615 () Bool)

(assert (=> b!228605 m!269615))

(assert (=> b!228605 m!269599))

(declare-fun m!269617 () Bool)

(assert (=> b!228605 m!269617))

(assert (=> b!228605 m!269609))

(declare-fun m!269619 () Bool)

(assert (=> b!228605 m!269619))

(assert (=> b!228605 m!269613))

(declare-fun m!269621 () Bool)

(assert (=> b!228605 m!269621))

(declare-fun m!269623 () Bool)

(assert (=> b!228613 m!269623))

(declare-fun m!269625 () Bool)

(assert (=> b!228584 m!269625))

(declare-fun m!269627 () Bool)

(assert (=> b!228584 m!269627))

(declare-fun m!269629 () Bool)

(assert (=> b!228612 m!269629))

(declare-fun m!269631 () Bool)

(assert (=> b!228612 m!269631))

(declare-fun m!269633 () Bool)

(assert (=> b!228611 m!269633))

(declare-fun m!269635 () Bool)

(assert (=> b!228572 m!269635))

(assert (=> b!228572 m!269635))

(declare-fun m!269637 () Bool)

(assert (=> b!228572 m!269637))

(assert (=> b!228572 m!269637))

(declare-fun m!269639 () Bool)

(assert (=> b!228572 m!269639))

(declare-fun m!269641 () Bool)

(assert (=> b!228572 m!269641))

(declare-fun m!269643 () Bool)

(assert (=> b!228609 m!269643))

(assert (=> b!228609 m!269643))

(declare-fun m!269645 () Bool)

(assert (=> b!228609 m!269645))

(declare-fun m!269647 () Bool)

(assert (=> b!228609 m!269647))

(declare-fun m!269649 () Bool)

(assert (=> b!228591 m!269649))

(declare-fun m!269651 () Bool)

(assert (=> b!228591 m!269651))

(declare-fun m!269653 () Bool)

(assert (=> start!24490 m!269653))

(check-sat b_and!16953 (not b!228597) (not b!228573) (not b!228585) (not b_next!8541) (not b!228577) (not b_next!8547) (not b!228572) (not b!228617) (not b!228618) (not b_next!8543) b_and!16957 (not b!228584) (not b!228614) (not b!228591) (not b!228595) (not b!228593) (not b!228578) (not b!228596) (not b!228630) (not b!228612) (not b!228621) (not b!228580) b_and!16949 (not b!228613) (not b_next!8545) (not b!228604) (not b_next!8537) (not b!228582) (not b!228606) (not start!24490) (not b!228589) (not b!228576) (not b!228600) (not b!228594) (not b!228615) b_and!16951 (not b!228611) (not b!228575) (not b!228603) (not b!228599) b_and!16955 (not b!228579) (not b_next!8539) (not b!228609) (not b!228620) (not b!228583) (not b!228598) (not b!228605) (not b!228590) b_and!16959)
(check-sat b_and!16957 b_and!16953 b_and!16949 (not b_next!8545) (not b_next!8537) (not b_next!8541) b_and!16951 (not b_next!8547) b_and!16955 (not b_next!8539) (not b_next!8543) b_and!16959)

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!192494 () Bool)

(assert start!192494)

(declare-fun b!1921989 () Bool)

(declare-fun b_free!55045 () Bool)

(declare-fun b_next!55749 () Bool)

(assert (=> b!1921989 (= b_free!55045 (not b_next!55749))))

(declare-fun tp!549501 () Bool)

(declare-fun b_and!150323 () Bool)

(assert (=> b!1921989 (= tp!549501 b_and!150323)))

(declare-fun b_free!55047 () Bool)

(declare-fun b_next!55751 () Bool)

(assert (=> b!1921989 (= b_free!55047 (not b_next!55751))))

(declare-fun tp!549493 () Bool)

(declare-fun b_and!150325 () Bool)

(assert (=> b!1921989 (= tp!549493 b_and!150325)))

(declare-fun b!1921993 () Bool)

(declare-fun b_free!55049 () Bool)

(declare-fun b_next!55753 () Bool)

(assert (=> b!1921993 (= b_free!55049 (not b_next!55753))))

(declare-fun tp!549491 () Bool)

(declare-fun b_and!150327 () Bool)

(assert (=> b!1921993 (= tp!549491 b_and!150327)))

(declare-fun b_free!55051 () Bool)

(declare-fun b_next!55755 () Bool)

(assert (=> b!1921993 (= b_free!55051 (not b_next!55755))))

(declare-fun tp!549490 () Bool)

(declare-fun b_and!150329 () Bool)

(assert (=> b!1921993 (= tp!549490 b_and!150329)))

(declare-fun b!1921973 () Bool)

(declare-fun b_free!55053 () Bool)

(declare-fun b_next!55757 () Bool)

(assert (=> b!1921973 (= b_free!55053 (not b_next!55757))))

(declare-fun tp!549499 () Bool)

(declare-fun b_and!150331 () Bool)

(assert (=> b!1921973 (= tp!549499 b_and!150331)))

(declare-fun b_free!55055 () Bool)

(declare-fun b_next!55759 () Bool)

(assert (=> b!1921973 (= b_free!55055 (not b_next!55759))))

(declare-fun tp!549492 () Bool)

(declare-fun b_and!150333 () Bool)

(assert (=> b!1921973 (= tp!549492 b_and!150333)))

(declare-fun b!1921969 () Bool)

(declare-fun res!859518 () Bool)

(declare-fun e!1228655 () Bool)

(assert (=> b!1921969 (=> (not res!859518) (not e!1228655))))

(declare-datatypes ((List!21974 0))(
  ( (Nil!21892) (Cons!21892 (h!27293 (_ BitVec 16)) (t!178917 List!21974)) )
))
(declare-datatypes ((TokenValue!4061 0))(
  ( (FloatLiteralValue!8122 (text!28872 List!21974)) (TokenValueExt!4060 (__x!13620 Int)) (Broken!20305 (value!123429 List!21974)) (Object!4142) (End!4061) (Def!4061) (Underscore!4061) (Match!4061) (Else!4061) (Error!4061) (Case!4061) (If!4061) (Extends!4061) (Abstract!4061) (Class!4061) (Val!4061) (DelimiterValue!8122 (del!4121 List!21974)) (KeywordValue!4067 (value!123430 List!21974)) (CommentValue!8122 (value!123431 List!21974)) (WhitespaceValue!8122 (value!123432 List!21974)) (IndentationValue!4061 (value!123433 List!21974)) (String!25424) (Int32!4061) (Broken!20306 (value!123434 List!21974)) (Boolean!4062) (Unit!36212) (OperatorValue!4064 (op!4121 List!21974)) (IdentifierValue!8122 (value!123435 List!21974)) (IdentifierValue!8123 (value!123436 List!21974)) (WhitespaceValue!8123 (value!123437 List!21974)) (True!8122) (False!8122) (Broken!20307 (value!123438 List!21974)) (Broken!20308 (value!123439 List!21974)) (True!8123) (RightBrace!4061) (RightBracket!4061) (Colon!4061) (Null!4061) (Comma!4061) (LeftBracket!4061) (False!8123) (LeftBrace!4061) (ImaginaryLiteralValue!4061 (text!28873 List!21974)) (StringLiteralValue!12183 (value!123440 List!21974)) (EOFValue!4061 (value!123441 List!21974)) (IdentValue!4061 (value!123442 List!21974)) (DelimiterValue!8123 (value!123443 List!21974)) (DedentValue!4061 (value!123444 List!21974)) (NewLineValue!4061 (value!123445 List!21974)) (IntegerValue!12183 (value!123446 (_ BitVec 32)) (text!28874 List!21974)) (IntegerValue!12184 (value!123447 Int) (text!28875 List!21974)) (Times!4061) (Or!4061) (Equal!4061) (Minus!4061) (Broken!20309 (value!123448 List!21974)) (And!4061) (Div!4061) (LessEqual!4061) (Mod!4061) (Concat!9411) (Not!4061) (Plus!4061) (SpaceValue!4061 (value!123449 List!21974)) (IntegerValue!12185 (value!123450 Int) (text!28876 List!21974)) (StringLiteralValue!12184 (text!28877 List!21974)) (FloatLiteralValue!8123 (text!28878 List!21974)) (BytesLiteralValue!4061 (value!123451 List!21974)) (CommentValue!8123 (value!123452 List!21974)) (StringLiteralValue!12185 (value!123453 List!21974)) (ErrorTokenValue!4061 (msg!4122 List!21974)) )
))
(declare-datatypes ((C!10846 0))(
  ( (C!10847 (val!6375 Int)) )
))
(declare-datatypes ((List!21975 0))(
  ( (Nil!21893) (Cons!21893 (h!27294 C!10846) (t!178918 List!21975)) )
))
(declare-datatypes ((Regex!5350 0))(
  ( (ElementMatch!5350 (c!312333 C!10846)) (Concat!9412 (regOne!11212 Regex!5350) (regTwo!11212 Regex!5350)) (EmptyExpr!5350) (Star!5350 (reg!5679 Regex!5350)) (EmptyLang!5350) (Union!5350 (regOne!11213 Regex!5350) (regTwo!11213 Regex!5350)) )
))
(declare-datatypes ((String!25425 0))(
  ( (String!25426 (value!123454 String)) )
))
(declare-datatypes ((IArray!14613 0))(
  ( (IArray!14614 (innerList!7364 List!21975)) )
))
(declare-datatypes ((Conc!7304 0))(
  ( (Node!7304 (left!17413 Conc!7304) (right!17743 Conc!7304) (csize!14838 Int) (cheight!7515 Int)) (Leaf!10730 (xs!10198 IArray!14613) (csize!14839 Int)) (Empty!7304) )
))
(declare-datatypes ((BalanceConc!14424 0))(
  ( (BalanceConc!14425 (c!312334 Conc!7304)) )
))
(declare-datatypes ((TokenValueInjection!7706 0))(
  ( (TokenValueInjection!7707 (toValue!5554 Int) (toChars!5413 Int)) )
))
(declare-datatypes ((Rule!7650 0))(
  ( (Rule!7651 (regex!3925 Regex!5350) (tag!4365 String!25425) (isSeparator!3925 Bool) (transformation!3925 TokenValueInjection!7706)) )
))
(declare-datatypes ((Token!7402 0))(
  ( (Token!7403 (value!123455 TokenValue!4061) (rule!6128 Rule!7650) (size!17081 Int) (originalCharacters!4732 List!21975)) )
))
(declare-datatypes ((List!21976 0))(
  ( (Nil!21894) (Cons!21894 (h!27295 Token!7402) (t!178919 List!21976)) )
))
(declare-fun tokens!598 () List!21976)

(assert (=> b!1921969 (= res!859518 (is-Cons!21894 tokens!598))))

(declare-fun b!1921970 () Bool)

(declare-fun res!859516 () Bool)

(assert (=> b!1921970 (=> (not res!859516) (not e!1228655))))

(declare-datatypes ((List!21977 0))(
  ( (Nil!21895) (Cons!21895 (h!27296 Rule!7650) (t!178920 List!21977)) )
))
(declare-fun rules!3198 () List!21977)

(declare-fun isEmpty!13467 (List!21977) Bool)

(assert (=> b!1921970 (= res!859516 (not (isEmpty!13467 rules!3198)))))

(declare-fun b!1921971 () Bool)

(declare-datatypes ((Unit!36213 0))(
  ( (Unit!36214) )
))
(declare-fun e!1228666 () Unit!36213)

(declare-fun Unit!36215 () Unit!36213)

(assert (=> b!1921971 (= e!1228666 Unit!36215)))

(declare-fun b!1921972 () Bool)

(declare-fun e!1228654 () Bool)

(declare-fun e!1228653 () Bool)

(assert (=> b!1921972 (= e!1228654 e!1228653)))

(declare-fun res!859521 () Bool)

(assert (=> b!1921972 (=> (not res!859521) (not e!1228653))))

(declare-fun lt!736601 () Rule!7650)

(declare-fun lt!736595 () List!21975)

(declare-fun matchR!2618 (Regex!5350 List!21975) Bool)

(assert (=> b!1921972 (= res!859521 (matchR!2618 (regex!3925 lt!736601) lt!736595))))

(declare-datatypes ((Option!4525 0))(
  ( (None!4524) (Some!4524 (v!26597 Rule!7650)) )
))
(declare-fun lt!736587 () Option!4525)

(declare-fun get!6885 (Option!4525) Rule!7650)

(assert (=> b!1921972 (= lt!736601 (get!6885 lt!736587))))

(declare-fun e!1228652 () Bool)

(assert (=> b!1921973 (= e!1228652 (and tp!549499 tp!549492))))

(declare-fun b!1921974 () Bool)

(declare-fun res!859510 () Bool)

(assert (=> b!1921974 (=> (not res!859510) (not e!1228655))))

(declare-datatypes ((LexerInterface!3538 0))(
  ( (LexerInterfaceExt!3535 (__x!13621 Int)) (Lexer!3536) )
))
(declare-fun thiss!23328 () LexerInterface!3538)

(declare-fun rulesProduceEachTokenIndividuallyList!1269 (LexerInterface!3538 List!21977 List!21976) Bool)

(assert (=> b!1921974 (= res!859510 (rulesProduceEachTokenIndividuallyList!1269 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1921975 () Bool)

(declare-fun e!1228672 () Bool)

(assert (=> b!1921975 (= e!1228655 (not e!1228672))))

(declare-fun res!859524 () Bool)

(assert (=> b!1921975 (=> res!859524 e!1228672)))

(declare-fun lt!736593 () Bool)

(declare-datatypes ((tuple2!20508 0))(
  ( (tuple2!20509 (_1!11723 Token!7402) (_2!11723 List!21975)) )
))
(declare-datatypes ((Option!4526 0))(
  ( (None!4525) (Some!4525 (v!26598 tuple2!20508)) )
))
(declare-fun lt!736588 () Option!4526)

(assert (=> b!1921975 (= res!859524 (or (and (not lt!736593) (= (_1!11723 (v!26598 lt!736588)) (h!27295 tokens!598))) lt!736593 (= (_1!11723 (v!26598 lt!736588)) (h!27295 tokens!598))))))

(assert (=> b!1921975 (= lt!736593 (not (is-Some!4525 lt!736588)))))

(declare-fun lt!736585 () List!21975)

(declare-fun lt!736598 () List!21975)

(declare-fun maxPrefix!1976 (LexerInterface!3538 List!21977 List!21975) Option!4526)

(declare-fun ++!5864 (List!21975 List!21975) List!21975)

(assert (=> b!1921975 (= lt!736588 (maxPrefix!1976 thiss!23328 rules!3198 (++!5864 lt!736598 lt!736585)))))

(declare-fun separatorToken!354 () Token!7402)

(declare-fun printWithSeparatorTokenWhenNeededList!577 (LexerInterface!3538 List!21977 List!21976 Token!7402) List!21975)

(assert (=> b!1921975 (= lt!736585 (printWithSeparatorTokenWhenNeededList!577 thiss!23328 rules!3198 (t!178919 tokens!598) separatorToken!354))))

(declare-fun e!1228663 () Bool)

(assert (=> b!1921975 e!1228663))

(declare-fun res!859517 () Bool)

(assert (=> b!1921975 (=> (not res!859517) (not e!1228663))))

(declare-fun lt!736590 () Option!4525)

(declare-fun isDefined!3819 (Option!4525) Bool)

(assert (=> b!1921975 (= res!859517 (isDefined!3819 lt!736590))))

(declare-fun getRuleFromTag!746 (LexerInterface!3538 List!21977 String!25425) Option!4525)

(assert (=> b!1921975 (= lt!736590 (getRuleFromTag!746 thiss!23328 rules!3198 (tag!4365 (rule!6128 (h!27295 tokens!598)))))))

(declare-fun lt!736582 () Unit!36213)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!746 (LexerInterface!3538 List!21977 List!21975 Token!7402) Unit!36213)

(assert (=> b!1921975 (= lt!736582 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!746 thiss!23328 rules!3198 lt!736598 (h!27295 tokens!598)))))

(declare-fun e!1228665 () Bool)

(assert (=> b!1921975 e!1228665))

(declare-fun res!859513 () Bool)

(assert (=> b!1921975 (=> (not res!859513) (not e!1228665))))

(declare-fun lt!736589 () Option!4526)

(declare-fun isDefined!3820 (Option!4526) Bool)

(assert (=> b!1921975 (= res!859513 (isDefined!3820 lt!736589))))

(assert (=> b!1921975 (= lt!736589 (maxPrefix!1976 thiss!23328 rules!3198 lt!736598))))

(declare-fun lt!736599 () BalanceConc!14424)

(declare-fun list!8846 (BalanceConc!14424) List!21975)

(assert (=> b!1921975 (= lt!736598 (list!8846 lt!736599))))

(assert (=> b!1921975 e!1228654))

(declare-fun res!859511 () Bool)

(assert (=> b!1921975 (=> (not res!859511) (not e!1228654))))

(assert (=> b!1921975 (= res!859511 (isDefined!3819 lt!736587))))

(assert (=> b!1921975 (= lt!736587 (getRuleFromTag!746 thiss!23328 rules!3198 (tag!4365 (rule!6128 separatorToken!354))))))

(declare-fun lt!736600 () Unit!36213)

(assert (=> b!1921975 (= lt!736600 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!746 thiss!23328 rules!3198 lt!736595 separatorToken!354))))

(declare-fun charsOf!2465 (Token!7402) BalanceConc!14424)

(assert (=> b!1921975 (= lt!736595 (list!8846 (charsOf!2465 separatorToken!354)))))

(declare-fun lt!736591 () Unit!36213)

(declare-fun lemmaEqSameImage!611 (TokenValueInjection!7706 BalanceConc!14424 BalanceConc!14424) Unit!36213)

(declare-fun seqFromList!2779 (List!21975) BalanceConc!14424)

(assert (=> b!1921975 (= lt!736591 (lemmaEqSameImage!611 (transformation!3925 (rule!6128 (h!27295 tokens!598))) lt!736599 (seqFromList!2779 (originalCharacters!4732 (h!27295 tokens!598)))))))

(declare-fun lt!736586 () Unit!36213)

(declare-fun lemmaSemiInverse!882 (TokenValueInjection!7706 BalanceConc!14424) Unit!36213)

(assert (=> b!1921975 (= lt!736586 (lemmaSemiInverse!882 (transformation!3925 (rule!6128 (h!27295 tokens!598))) lt!736599))))

(assert (=> b!1921975 (= lt!736599 (charsOf!2465 (h!27295 tokens!598)))))

(declare-fun b!1921976 () Bool)

(assert (=> b!1921976 (= e!1228653 (= (rule!6128 separatorToken!354) lt!736601))))

(declare-fun tp!549498 () Bool)

(declare-fun e!1228651 () Bool)

(declare-fun b!1921977 () Bool)

(declare-fun e!1228661 () Bool)

(declare-fun inv!28964 (String!25425) Bool)

(declare-fun inv!28967 (TokenValueInjection!7706) Bool)

(assert (=> b!1921977 (= e!1228661 (and tp!549498 (inv!28964 (tag!4365 (rule!6128 (h!27295 tokens!598)))) (inv!28967 (transformation!3925 (rule!6128 (h!27295 tokens!598)))) e!1228651))))

(declare-fun b!1921978 () Bool)

(declare-fun res!859522 () Bool)

(assert (=> b!1921978 (=> (not res!859522) (not e!1228655))))

(declare-fun sepAndNonSepRulesDisjointChars!1023 (List!21977 List!21977) Bool)

(assert (=> b!1921978 (= res!859522 (sepAndNonSepRulesDisjointChars!1023 rules!3198 rules!3198))))

(declare-fun res!859519 () Bool)

(assert (=> start!192494 (=> (not res!859519) (not e!1228655))))

(assert (=> start!192494 (= res!859519 (is-Lexer!3536 thiss!23328))))

(assert (=> start!192494 e!1228655))

(assert (=> start!192494 true))

(declare-fun e!1228650 () Bool)

(assert (=> start!192494 e!1228650))

(declare-fun e!1228664 () Bool)

(assert (=> start!192494 e!1228664))

(declare-fun e!1228656 () Bool)

(declare-fun inv!28968 (Token!7402) Bool)

(assert (=> start!192494 (and (inv!28968 separatorToken!354) e!1228656)))

(declare-fun tp!549500 () Bool)

(declare-fun b!1921979 () Bool)

(declare-fun e!1228659 () Bool)

(assert (=> b!1921979 (= e!1228659 (and tp!549500 (inv!28964 (tag!4365 (rule!6128 separatorToken!354))) (inv!28967 (transformation!3925 (rule!6128 separatorToken!354))) e!1228652))))

(declare-fun b!1921980 () Bool)

(declare-fun e!1228657 () Bool)

(declare-fun tp!549497 () Bool)

(assert (=> b!1921980 (= e!1228650 (and e!1228657 tp!549497))))

(declare-fun b!1921981 () Bool)

(declare-fun Unit!36216 () Unit!36213)

(assert (=> b!1921981 (= e!1228666 Unit!36216)))

(declare-fun lt!736596 () C!10846)

(declare-fun lt!736581 () Unit!36213)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!277 (Regex!5350 List!21975 C!10846) Unit!36213)

(assert (=> b!1921981 (= lt!736581 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!277 (regex!3925 (rule!6128 separatorToken!354)) lt!736595 lt!736596))))

(declare-fun res!859523 () Bool)

(assert (=> b!1921981 (= res!859523 (not (matchR!2618 (regex!3925 (rule!6128 separatorToken!354)) lt!736595)))))

(declare-fun e!1228660 () Bool)

(assert (=> b!1921981 (=> (not res!859523) (not e!1228660))))

(assert (=> b!1921981 e!1228660))

(declare-fun b!1921982 () Bool)

(declare-fun res!859520 () Bool)

(assert (=> b!1921982 (=> (not res!859520) (not e!1228655))))

(assert (=> b!1921982 (= res!859520 (isSeparator!3925 (rule!6128 separatorToken!354)))))

(declare-fun b!1921983 () Bool)

(declare-fun get!6886 (Option!4526) tuple2!20508)

(assert (=> b!1921983 (= e!1228665 (= (_1!11723 (get!6886 lt!736589)) (h!27295 tokens!598)))))

(declare-fun e!1228670 () Bool)

(declare-fun b!1921984 () Bool)

(declare-fun tp!549494 () Bool)

(declare-fun inv!21 (TokenValue!4061) Bool)

(assert (=> b!1921984 (= e!1228670 (and (inv!21 (value!123455 (h!27295 tokens!598))) e!1228661 tp!549494))))

(declare-fun b!1921985 () Bool)

(declare-fun e!1228649 () Bool)

(declare-fun lt!736583 () Rule!7650)

(assert (=> b!1921985 (= e!1228649 (= (rule!6128 (h!27295 tokens!598)) lt!736583))))

(declare-fun lt!736594 () BalanceConc!14424)

(declare-fun b!1921986 () Bool)

(declare-fun printList!1073 (LexerInterface!3538 List!21976) List!21975)

(assert (=> b!1921986 (= e!1228672 (= (list!8846 lt!736594) (printList!1073 thiss!23328 (Cons!21894 (h!27295 tokens!598) Nil!21894))))))

(declare-datatypes ((IArray!14615 0))(
  ( (IArray!14616 (innerList!7365 List!21976)) )
))
(declare-datatypes ((Conc!7305 0))(
  ( (Node!7305 (left!17414 Conc!7305) (right!17744 Conc!7305) (csize!14840 Int) (cheight!7516 Int)) (Leaf!10731 (xs!10199 IArray!14615) (csize!14841 Int)) (Empty!7305) )
))
(declare-datatypes ((BalanceConc!14426 0))(
  ( (BalanceConc!14427 (c!312335 Conc!7305)) )
))
(declare-fun lt!736592 () BalanceConc!14426)

(declare-fun printTailRec!1014 (LexerInterface!3538 BalanceConc!14426 Int BalanceConc!14424) BalanceConc!14424)

(assert (=> b!1921986 (= lt!736594 (printTailRec!1014 thiss!23328 lt!736592 0 (BalanceConc!14425 Empty!7304)))))

(declare-fun print!1508 (LexerInterface!3538 BalanceConc!14426) BalanceConc!14424)

(assert (=> b!1921986 (= lt!736594 (print!1508 thiss!23328 lt!736592))))

(declare-fun singletonSeq!1909 (Token!7402) BalanceConc!14426)

(assert (=> b!1921986 (= lt!736592 (singletonSeq!1909 (h!27295 tokens!598)))))

(declare-fun contains!3946 (List!21975 C!10846) Bool)

(declare-fun usedCharacters!377 (Regex!5350) List!21975)

(assert (=> b!1921986 (not (contains!3946 (usedCharacters!377 (regex!3925 (rule!6128 (h!27295 tokens!598)))) lt!736596))))

(declare-fun lt!736602 () Unit!36213)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!73 (LexerInterface!3538 List!21977 List!21977 Rule!7650 Rule!7650 C!10846) Unit!36213)

(assert (=> b!1921986 (= lt!736602 (lemmaNonSepRuleNotContainsCharContainedInASepRule!73 thiss!23328 rules!3198 rules!3198 (rule!6128 (h!27295 tokens!598)) (rule!6128 separatorToken!354) lt!736596))))

(declare-fun lt!736597 () Unit!36213)

(assert (=> b!1921986 (= lt!736597 e!1228666)))

(declare-fun c!312332 () Bool)

(assert (=> b!1921986 (= c!312332 (not (contains!3946 (usedCharacters!377 (regex!3925 (rule!6128 separatorToken!354))) lt!736596)))))

(declare-fun head!4479 (List!21975) C!10846)

(assert (=> b!1921986 (= lt!736596 (head!4479 lt!736595))))

(assert (=> b!1921986 (= (++!5864 (++!5864 lt!736598 lt!736595) lt!736585) (++!5864 lt!736598 (++!5864 lt!736595 lt!736585)))))

(declare-fun lt!736584 () Unit!36213)

(declare-fun lemmaConcatAssociativity!1184 (List!21975 List!21975 List!21975) Unit!36213)

(assert (=> b!1921986 (= lt!736584 (lemmaConcatAssociativity!1184 lt!736598 lt!736595 lt!736585))))

(declare-fun b!1921987 () Bool)

(declare-fun res!859512 () Bool)

(assert (=> b!1921987 (=> (not res!859512) (not e!1228655))))

(declare-fun lambda!75038 () Int)

(declare-fun forall!4625 (List!21976 Int) Bool)

(assert (=> b!1921987 (= res!859512 (forall!4625 tokens!598 lambda!75038))))

(declare-fun b!1921988 () Bool)

(declare-fun tp!549495 () Bool)

(assert (=> b!1921988 (= e!1228656 (and (inv!21 (value!123455 separatorToken!354)) e!1228659 tp!549495))))

(declare-fun e!1228669 () Bool)

(assert (=> b!1921989 (= e!1228669 (and tp!549501 tp!549493))))

(declare-fun tp!549489 () Bool)

(declare-fun b!1921990 () Bool)

(assert (=> b!1921990 (= e!1228664 (and (inv!28968 (h!27295 tokens!598)) e!1228670 tp!549489))))

(declare-fun b!1921991 () Bool)

(declare-fun res!859509 () Bool)

(assert (=> b!1921991 (=> (not res!859509) (not e!1228655))))

(declare-fun rulesInvariant!3145 (LexerInterface!3538 List!21977) Bool)

(assert (=> b!1921991 (= res!859509 (rulesInvariant!3145 thiss!23328 rules!3198))))

(declare-fun b!1921992 () Bool)

(assert (=> b!1921992 (= e!1228660 false)))

(assert (=> b!1921993 (= e!1228651 (and tp!549491 tp!549490))))

(declare-fun tp!549496 () Bool)

(declare-fun b!1921994 () Bool)

(assert (=> b!1921994 (= e!1228657 (and tp!549496 (inv!28964 (tag!4365 (h!27296 rules!3198))) (inv!28967 (transformation!3925 (h!27296 rules!3198))) e!1228669))))

(declare-fun b!1921995 () Bool)

(assert (=> b!1921995 (= e!1228663 e!1228649)))

(declare-fun res!859515 () Bool)

(assert (=> b!1921995 (=> (not res!859515) (not e!1228649))))

(assert (=> b!1921995 (= res!859515 (matchR!2618 (regex!3925 lt!736583) lt!736598))))

(assert (=> b!1921995 (= lt!736583 (get!6885 lt!736590))))

(declare-fun b!1921996 () Bool)

(declare-fun res!859514 () Bool)

(assert (=> b!1921996 (=> (not res!859514) (not e!1228655))))

(declare-fun rulesProduceIndividualToken!1710 (LexerInterface!3538 List!21977 Token!7402) Bool)

(assert (=> b!1921996 (= res!859514 (rulesProduceIndividualToken!1710 thiss!23328 rules!3198 separatorToken!354))))

(assert (= (and start!192494 res!859519) b!1921970))

(assert (= (and b!1921970 res!859516) b!1921991))

(assert (= (and b!1921991 res!859509) b!1921974))

(assert (= (and b!1921974 res!859510) b!1921996))

(assert (= (and b!1921996 res!859514) b!1921982))

(assert (= (and b!1921982 res!859520) b!1921987))

(assert (= (and b!1921987 res!859512) b!1921978))

(assert (= (and b!1921978 res!859522) b!1921969))

(assert (= (and b!1921969 res!859518) b!1921975))

(assert (= (and b!1921975 res!859511) b!1921972))

(assert (= (and b!1921972 res!859521) b!1921976))

(assert (= (and b!1921975 res!859513) b!1921983))

(assert (= (and b!1921975 res!859517) b!1921995))

(assert (= (and b!1921995 res!859515) b!1921985))

(assert (= (and b!1921975 (not res!859524)) b!1921986))

(assert (= (and b!1921986 c!312332) b!1921981))

(assert (= (and b!1921986 (not c!312332)) b!1921971))

(assert (= (and b!1921981 res!859523) b!1921992))

(assert (= b!1921994 b!1921989))

(assert (= b!1921980 b!1921994))

(assert (= (and start!192494 (is-Cons!21895 rules!3198)) b!1921980))

(assert (= b!1921977 b!1921993))

(assert (= b!1921984 b!1921977))

(assert (= b!1921990 b!1921984))

(assert (= (and start!192494 (is-Cons!21894 tokens!598)) b!1921990))

(assert (= b!1921979 b!1921973))

(assert (= b!1921988 b!1921979))

(assert (= start!192494 b!1921988))

(declare-fun m!2356741 () Bool)

(assert (=> start!192494 m!2356741))

(declare-fun m!2356743 () Bool)

(assert (=> b!1921972 m!2356743))

(declare-fun m!2356745 () Bool)

(assert (=> b!1921972 m!2356745))

(declare-fun m!2356747 () Bool)

(assert (=> b!1921986 m!2356747))

(declare-fun m!2356749 () Bool)

(assert (=> b!1921986 m!2356749))

(declare-fun m!2356751 () Bool)

(assert (=> b!1921986 m!2356751))

(declare-fun m!2356753 () Bool)

(assert (=> b!1921986 m!2356753))

(declare-fun m!2356755 () Bool)

(assert (=> b!1921986 m!2356755))

(declare-fun m!2356757 () Bool)

(assert (=> b!1921986 m!2356757))

(declare-fun m!2356759 () Bool)

(assert (=> b!1921986 m!2356759))

(declare-fun m!2356761 () Bool)

(assert (=> b!1921986 m!2356761))

(declare-fun m!2356763 () Bool)

(assert (=> b!1921986 m!2356763))

(declare-fun m!2356765 () Bool)

(assert (=> b!1921986 m!2356765))

(assert (=> b!1921986 m!2356765))

(declare-fun m!2356767 () Bool)

(assert (=> b!1921986 m!2356767))

(declare-fun m!2356769 () Bool)

(assert (=> b!1921986 m!2356769))

(declare-fun m!2356771 () Bool)

(assert (=> b!1921986 m!2356771))

(assert (=> b!1921986 m!2356761))

(assert (=> b!1921986 m!2356749))

(assert (=> b!1921986 m!2356771))

(declare-fun m!2356773 () Bool)

(assert (=> b!1921986 m!2356773))

(declare-fun m!2356775 () Bool)

(assert (=> b!1921986 m!2356775))

(declare-fun m!2356777 () Bool)

(assert (=> b!1921986 m!2356777))

(declare-fun m!2356779 () Bool)

(assert (=> b!1921978 m!2356779))

(declare-fun m!2356781 () Bool)

(assert (=> b!1921994 m!2356781))

(declare-fun m!2356783 () Bool)

(assert (=> b!1921994 m!2356783))

(declare-fun m!2356785 () Bool)

(assert (=> b!1921988 m!2356785))

(declare-fun m!2356787 () Bool)

(assert (=> b!1921979 m!2356787))

(declare-fun m!2356789 () Bool)

(assert (=> b!1921979 m!2356789))

(declare-fun m!2356791 () Bool)

(assert (=> b!1921974 m!2356791))

(declare-fun m!2356793 () Bool)

(assert (=> b!1921995 m!2356793))

(declare-fun m!2356795 () Bool)

(assert (=> b!1921995 m!2356795))

(declare-fun m!2356797 () Bool)

(assert (=> b!1921970 m!2356797))

(declare-fun m!2356799 () Bool)

(assert (=> b!1921987 m!2356799))

(declare-fun m!2356801 () Bool)

(assert (=> b!1921977 m!2356801))

(declare-fun m!2356803 () Bool)

(assert (=> b!1921977 m!2356803))

(declare-fun m!2356805 () Bool)

(assert (=> b!1921975 m!2356805))

(declare-fun m!2356807 () Bool)

(assert (=> b!1921975 m!2356807))

(declare-fun m!2356809 () Bool)

(assert (=> b!1921975 m!2356809))

(declare-fun m!2356811 () Bool)

(assert (=> b!1921975 m!2356811))

(declare-fun m!2356813 () Bool)

(assert (=> b!1921975 m!2356813))

(declare-fun m!2356815 () Bool)

(assert (=> b!1921975 m!2356815))

(declare-fun m!2356817 () Bool)

(assert (=> b!1921975 m!2356817))

(declare-fun m!2356819 () Bool)

(assert (=> b!1921975 m!2356819))

(assert (=> b!1921975 m!2356811))

(declare-fun m!2356821 () Bool)

(assert (=> b!1921975 m!2356821))

(declare-fun m!2356823 () Bool)

(assert (=> b!1921975 m!2356823))

(declare-fun m!2356825 () Bool)

(assert (=> b!1921975 m!2356825))

(assert (=> b!1921975 m!2356823))

(declare-fun m!2356827 () Bool)

(assert (=> b!1921975 m!2356827))

(declare-fun m!2356829 () Bool)

(assert (=> b!1921975 m!2356829))

(declare-fun m!2356831 () Bool)

(assert (=> b!1921975 m!2356831))

(declare-fun m!2356833 () Bool)

(assert (=> b!1921975 m!2356833))

(declare-fun m!2356835 () Bool)

(assert (=> b!1921975 m!2356835))

(declare-fun m!2356837 () Bool)

(assert (=> b!1921975 m!2356837))

(assert (=> b!1921975 m!2356817))

(declare-fun m!2356839 () Bool)

(assert (=> b!1921975 m!2356839))

(declare-fun m!2356841 () Bool)

(assert (=> b!1921983 m!2356841))

(declare-fun m!2356843 () Bool)

(assert (=> b!1921990 m!2356843))

(declare-fun m!2356845 () Bool)

(assert (=> b!1921996 m!2356845))

(declare-fun m!2356847 () Bool)

(assert (=> b!1921991 m!2356847))

(declare-fun m!2356849 () Bool)

(assert (=> b!1921981 m!2356849))

(declare-fun m!2356851 () Bool)

(assert (=> b!1921981 m!2356851))

(declare-fun m!2356853 () Bool)

(assert (=> b!1921984 m!2356853))

(push 1)

(assert (not b!1921977))

(assert (not b!1921970))

(assert (not b!1921991))

(assert (not b_next!55753))

(assert (not b!1921986))

(assert (not start!192494))

(assert (not b!1921994))

(assert b_and!150327)

(assert (not b!1921972))

(assert (not b!1921983))

(assert (not b!1921984))

(assert (not b!1921990))

(assert b_and!150325)

(assert (not b!1921980))

(assert b_and!150329)

(assert (not b_next!55759))

(assert (not b!1921979))

(assert (not b!1921975))

(assert (not b!1921995))

(assert b_and!150333)

(assert b_and!150323)

(assert (not b!1921978))

(assert (not b_next!55749))

(assert (not b_next!55751))

(assert (not b!1921974))

(assert (not b_next!55757))

(assert (not b!1921987))

(assert (not b!1921981))

(assert (not b_next!55755))

(assert (not b!1921988))

(assert (not b!1921996))

(assert b_and!150331)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!55759))

(assert (not b_next!55753))

(assert (not b_next!55749))

(assert (not b_next!55751))

(assert (not b_next!55757))

(assert (not b_next!55755))

(assert b_and!150331)

(assert b_and!150327)

(assert b_and!150325)

(assert b_and!150329)

(assert b_and!150333)

(assert b_and!150323)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!585606 () Bool)

(assert (=> d!585606 (= (isEmpty!13467 rules!3198) (is-Nil!21895 rules!3198))))

(assert (=> b!1921970 d!585606))

(declare-fun d!585608 () Bool)

(assert (=> d!585608 (not (matchR!2618 (regex!3925 (rule!6128 separatorToken!354)) lt!736595))))

(declare-fun lt!736671 () Unit!36213)

(declare-fun choose!11925 (Regex!5350 List!21975 C!10846) Unit!36213)

(assert (=> d!585608 (= lt!736671 (choose!11925 (regex!3925 (rule!6128 separatorToken!354)) lt!736595 lt!736596))))

(declare-fun validRegex!2128 (Regex!5350) Bool)

(assert (=> d!585608 (validRegex!2128 (regex!3925 (rule!6128 separatorToken!354)))))

(assert (=> d!585608 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!277 (regex!3925 (rule!6128 separatorToken!354)) lt!736595 lt!736596) lt!736671)))

(declare-fun bs!414395 () Bool)

(assert (= bs!414395 d!585608))

(assert (=> bs!414395 m!2356851))

(declare-fun m!2356969 () Bool)

(assert (=> bs!414395 m!2356969))

(declare-fun m!2356971 () Bool)

(assert (=> bs!414395 m!2356971))

(assert (=> b!1921981 d!585608))

(declare-fun b!1922109 () Bool)

(declare-fun res!859600 () Bool)

(declare-fun e!1228761 () Bool)

(assert (=> b!1922109 (=> res!859600 e!1228761)))

(declare-fun e!1228760 () Bool)

(assert (=> b!1922109 (= res!859600 e!1228760)))

(declare-fun res!859601 () Bool)

(assert (=> b!1922109 (=> (not res!859601) (not e!1228760))))

(declare-fun lt!736674 () Bool)

(assert (=> b!1922109 (= res!859601 lt!736674)))

(declare-fun b!1922110 () Bool)

(declare-fun e!1228765 () Bool)

(declare-fun e!1228759 () Bool)

(assert (=> b!1922110 (= e!1228765 e!1228759)))

(declare-fun res!859597 () Bool)

(assert (=> b!1922110 (=> res!859597 e!1228759)))

(declare-fun call!118073 () Bool)

(assert (=> b!1922110 (= res!859597 call!118073)))

(declare-fun b!1922111 () Bool)

(declare-fun e!1228762 () Bool)

(declare-fun nullable!1602 (Regex!5350) Bool)

(assert (=> b!1922111 (= e!1228762 (nullable!1602 (regex!3925 (rule!6128 separatorToken!354))))))

(declare-fun b!1922112 () Bool)

(assert (=> b!1922112 (= e!1228759 (not (= (head!4479 lt!736595) (c!312333 (regex!3925 (rule!6128 separatorToken!354))))))))

(declare-fun b!1922113 () Bool)

(declare-fun res!859598 () Bool)

(assert (=> b!1922113 (=> (not res!859598) (not e!1228760))))

(assert (=> b!1922113 (= res!859598 (not call!118073))))

(declare-fun b!1922114 () Bool)

(assert (=> b!1922114 (= e!1228760 (= (head!4479 lt!736595) (c!312333 (regex!3925 (rule!6128 separatorToken!354)))))))

(declare-fun d!585610 () Bool)

(declare-fun e!1228764 () Bool)

(assert (=> d!585610 e!1228764))

(declare-fun c!312350 () Bool)

(assert (=> d!585610 (= c!312350 (is-EmptyExpr!5350 (regex!3925 (rule!6128 separatorToken!354))))))

(assert (=> d!585610 (= lt!736674 e!1228762)))

(declare-fun c!312352 () Bool)

(declare-fun isEmpty!13469 (List!21975) Bool)

(assert (=> d!585610 (= c!312352 (isEmpty!13469 lt!736595))))

(assert (=> d!585610 (validRegex!2128 (regex!3925 (rule!6128 separatorToken!354)))))

(assert (=> d!585610 (= (matchR!2618 (regex!3925 (rule!6128 separatorToken!354)) lt!736595) lt!736674)))

(declare-fun b!1922115 () Bool)

(declare-fun res!859599 () Bool)

(assert (=> b!1922115 (=> res!859599 e!1228759)))

(declare-fun tail!2967 (List!21975) List!21975)

(assert (=> b!1922115 (= res!859599 (not (isEmpty!13469 (tail!2967 lt!736595))))))

(declare-fun b!1922116 () Bool)

(declare-fun res!859596 () Bool)

(assert (=> b!1922116 (=> (not res!859596) (not e!1228760))))

(assert (=> b!1922116 (= res!859596 (isEmpty!13469 (tail!2967 lt!736595)))))

(declare-fun b!1922117 () Bool)

(declare-fun res!859602 () Bool)

(assert (=> b!1922117 (=> res!859602 e!1228761)))

(assert (=> b!1922117 (= res!859602 (not (is-ElementMatch!5350 (regex!3925 (rule!6128 separatorToken!354)))))))

(declare-fun e!1228763 () Bool)

(assert (=> b!1922117 (= e!1228763 e!1228761)))

(declare-fun b!1922118 () Bool)

(declare-fun derivativeStep!1361 (Regex!5350 C!10846) Regex!5350)

(assert (=> b!1922118 (= e!1228762 (matchR!2618 (derivativeStep!1361 (regex!3925 (rule!6128 separatorToken!354)) (head!4479 lt!736595)) (tail!2967 lt!736595)))))

(declare-fun b!1922119 () Bool)

(assert (=> b!1922119 (= e!1228763 (not lt!736674))))

(declare-fun b!1922120 () Bool)

(assert (=> b!1922120 (= e!1228764 e!1228763)))

(declare-fun c!312351 () Bool)

(assert (=> b!1922120 (= c!312351 (is-EmptyLang!5350 (regex!3925 (rule!6128 separatorToken!354))))))

(declare-fun b!1922121 () Bool)

(assert (=> b!1922121 (= e!1228764 (= lt!736674 call!118073))))

(declare-fun b!1922122 () Bool)

(assert (=> b!1922122 (= e!1228761 e!1228765)))

(declare-fun res!859595 () Bool)

(assert (=> b!1922122 (=> (not res!859595) (not e!1228765))))

(assert (=> b!1922122 (= res!859595 (not lt!736674))))

(declare-fun bm!118068 () Bool)

(assert (=> bm!118068 (= call!118073 (isEmpty!13469 lt!736595))))

(assert (= (and d!585610 c!312352) b!1922111))

(assert (= (and d!585610 (not c!312352)) b!1922118))

(assert (= (and d!585610 c!312350) b!1922121))

(assert (= (and d!585610 (not c!312350)) b!1922120))

(assert (= (and b!1922120 c!312351) b!1922119))

(assert (= (and b!1922120 (not c!312351)) b!1922117))

(assert (= (and b!1922117 (not res!859602)) b!1922109))

(assert (= (and b!1922109 res!859601) b!1922113))

(assert (= (and b!1922113 res!859598) b!1922116))

(assert (= (and b!1922116 res!859596) b!1922114))

(assert (= (and b!1922109 (not res!859600)) b!1922122))

(assert (= (and b!1922122 res!859595) b!1922110))

(assert (= (and b!1922110 (not res!859597)) b!1922115))

(assert (= (and b!1922115 (not res!859599)) b!1922112))

(assert (= (or b!1922121 b!1922110 b!1922113) bm!118068))

(declare-fun m!2356973 () Bool)

(assert (=> bm!118068 m!2356973))

(assert (=> b!1922118 m!2356759))

(assert (=> b!1922118 m!2356759))

(declare-fun m!2356975 () Bool)

(assert (=> b!1922118 m!2356975))

(declare-fun m!2356977 () Bool)

(assert (=> b!1922118 m!2356977))

(assert (=> b!1922118 m!2356975))

(assert (=> b!1922118 m!2356977))

(declare-fun m!2356979 () Bool)

(assert (=> b!1922118 m!2356979))

(declare-fun m!2356981 () Bool)

(assert (=> b!1922111 m!2356981))

(assert (=> b!1922116 m!2356977))

(assert (=> b!1922116 m!2356977))

(declare-fun m!2356983 () Bool)

(assert (=> b!1922116 m!2356983))

(assert (=> b!1922114 m!2356759))

(assert (=> b!1922115 m!2356977))

(assert (=> b!1922115 m!2356977))

(assert (=> b!1922115 m!2356983))

(assert (=> b!1922112 m!2356759))

(assert (=> d!585610 m!2356973))

(assert (=> d!585610 m!2356971))

(assert (=> b!1921981 d!585610))

(declare-fun b!1922123 () Bool)

(declare-fun res!859609 () Bool)

(declare-fun e!1228768 () Bool)

(assert (=> b!1922123 (=> res!859609 e!1228768)))

(declare-fun e!1228767 () Bool)

(assert (=> b!1922123 (= res!859609 e!1228767)))

(declare-fun res!859610 () Bool)

(assert (=> b!1922123 (=> (not res!859610) (not e!1228767))))

(declare-fun lt!736675 () Bool)

(assert (=> b!1922123 (= res!859610 lt!736675)))

(declare-fun b!1922124 () Bool)

(declare-fun e!1228772 () Bool)

(declare-fun e!1228766 () Bool)

(assert (=> b!1922124 (= e!1228772 e!1228766)))

(declare-fun res!859606 () Bool)

(assert (=> b!1922124 (=> res!859606 e!1228766)))

(declare-fun call!118074 () Bool)

(assert (=> b!1922124 (= res!859606 call!118074)))

(declare-fun b!1922125 () Bool)

(declare-fun e!1228769 () Bool)

(assert (=> b!1922125 (= e!1228769 (nullable!1602 (regex!3925 lt!736601)))))

(declare-fun b!1922126 () Bool)

(assert (=> b!1922126 (= e!1228766 (not (= (head!4479 lt!736595) (c!312333 (regex!3925 lt!736601)))))))

(declare-fun b!1922127 () Bool)

(declare-fun res!859607 () Bool)

(assert (=> b!1922127 (=> (not res!859607) (not e!1228767))))

(assert (=> b!1922127 (= res!859607 (not call!118074))))

(declare-fun b!1922128 () Bool)

(assert (=> b!1922128 (= e!1228767 (= (head!4479 lt!736595) (c!312333 (regex!3925 lt!736601))))))

(declare-fun d!585612 () Bool)

(declare-fun e!1228771 () Bool)

(assert (=> d!585612 e!1228771))

(declare-fun c!312353 () Bool)

(assert (=> d!585612 (= c!312353 (is-EmptyExpr!5350 (regex!3925 lt!736601)))))

(assert (=> d!585612 (= lt!736675 e!1228769)))

(declare-fun c!312355 () Bool)

(assert (=> d!585612 (= c!312355 (isEmpty!13469 lt!736595))))

(assert (=> d!585612 (validRegex!2128 (regex!3925 lt!736601))))

(assert (=> d!585612 (= (matchR!2618 (regex!3925 lt!736601) lt!736595) lt!736675)))

(declare-fun b!1922129 () Bool)

(declare-fun res!859608 () Bool)

(assert (=> b!1922129 (=> res!859608 e!1228766)))

(assert (=> b!1922129 (= res!859608 (not (isEmpty!13469 (tail!2967 lt!736595))))))

(declare-fun b!1922130 () Bool)

(declare-fun res!859605 () Bool)

(assert (=> b!1922130 (=> (not res!859605) (not e!1228767))))

(assert (=> b!1922130 (= res!859605 (isEmpty!13469 (tail!2967 lt!736595)))))

(declare-fun b!1922131 () Bool)

(declare-fun res!859611 () Bool)

(assert (=> b!1922131 (=> res!859611 e!1228768)))

(assert (=> b!1922131 (= res!859611 (not (is-ElementMatch!5350 (regex!3925 lt!736601))))))

(declare-fun e!1228770 () Bool)

(assert (=> b!1922131 (= e!1228770 e!1228768)))

(declare-fun b!1922132 () Bool)

(assert (=> b!1922132 (= e!1228769 (matchR!2618 (derivativeStep!1361 (regex!3925 lt!736601) (head!4479 lt!736595)) (tail!2967 lt!736595)))))

(declare-fun b!1922133 () Bool)

(assert (=> b!1922133 (= e!1228770 (not lt!736675))))

(declare-fun b!1922134 () Bool)

(assert (=> b!1922134 (= e!1228771 e!1228770)))

(declare-fun c!312354 () Bool)

(assert (=> b!1922134 (= c!312354 (is-EmptyLang!5350 (regex!3925 lt!736601)))))

(declare-fun b!1922135 () Bool)

(assert (=> b!1922135 (= e!1228771 (= lt!736675 call!118074))))

(declare-fun b!1922136 () Bool)

(assert (=> b!1922136 (= e!1228768 e!1228772)))

(declare-fun res!859604 () Bool)

(assert (=> b!1922136 (=> (not res!859604) (not e!1228772))))

(assert (=> b!1922136 (= res!859604 (not lt!736675))))

(declare-fun bm!118069 () Bool)

(assert (=> bm!118069 (= call!118074 (isEmpty!13469 lt!736595))))

(assert (= (and d!585612 c!312355) b!1922125))

(assert (= (and d!585612 (not c!312355)) b!1922132))

(assert (= (and d!585612 c!312353) b!1922135))

(assert (= (and d!585612 (not c!312353)) b!1922134))

(assert (= (and b!1922134 c!312354) b!1922133))

(assert (= (and b!1922134 (not c!312354)) b!1922131))

(assert (= (and b!1922131 (not res!859611)) b!1922123))

(assert (= (and b!1922123 res!859610) b!1922127))

(assert (= (and b!1922127 res!859607) b!1922130))

(assert (= (and b!1922130 res!859605) b!1922128))

(assert (= (and b!1922123 (not res!859609)) b!1922136))

(assert (= (and b!1922136 res!859604) b!1922124))

(assert (= (and b!1922124 (not res!859606)) b!1922129))

(assert (= (and b!1922129 (not res!859608)) b!1922126))

(assert (= (or b!1922135 b!1922124 b!1922127) bm!118069))

(assert (=> bm!118069 m!2356973))

(assert (=> b!1922132 m!2356759))

(assert (=> b!1922132 m!2356759))

(declare-fun m!2356985 () Bool)

(assert (=> b!1922132 m!2356985))

(assert (=> b!1922132 m!2356977))

(assert (=> b!1922132 m!2356985))

(assert (=> b!1922132 m!2356977))

(declare-fun m!2356987 () Bool)

(assert (=> b!1922132 m!2356987))

(declare-fun m!2356989 () Bool)

(assert (=> b!1922125 m!2356989))

(assert (=> b!1922130 m!2356977))

(assert (=> b!1922130 m!2356977))

(assert (=> b!1922130 m!2356983))

(assert (=> b!1922128 m!2356759))

(assert (=> b!1922129 m!2356977))

(assert (=> b!1922129 m!2356977))

(assert (=> b!1922129 m!2356983))

(assert (=> b!1922126 m!2356759))

(assert (=> d!585612 m!2356973))

(declare-fun m!2356991 () Bool)

(assert (=> d!585612 m!2356991))

(assert (=> b!1921972 d!585612))

(declare-fun d!585614 () Bool)

(assert (=> d!585614 (= (get!6885 lt!736587) (v!26597 lt!736587))))

(assert (=> b!1921972 d!585614))

(declare-fun d!585616 () Bool)

(assert (=> d!585616 (= (get!6886 lt!736589) (v!26598 lt!736589))))

(assert (=> b!1921983 d!585616))

(declare-fun d!585618 () Bool)

(declare-fun res!859619 () Bool)

(declare-fun e!1228775 () Bool)

(assert (=> d!585618 (=> (not res!859619) (not e!1228775))))

(assert (=> d!585618 (= res!859619 (not (isEmpty!13469 (originalCharacters!4732 separatorToken!354))))))

(assert (=> d!585618 (= (inv!28968 separatorToken!354) e!1228775)))

(declare-fun b!1922141 () Bool)

(declare-fun res!859620 () Bool)

(assert (=> b!1922141 (=> (not res!859620) (not e!1228775))))

(declare-fun dynLambda!10566 (Int TokenValue!4061) BalanceConc!14424)

(assert (=> b!1922141 (= res!859620 (= (originalCharacters!4732 separatorToken!354) (list!8846 (dynLambda!10566 (toChars!5413 (transformation!3925 (rule!6128 separatorToken!354))) (value!123455 separatorToken!354)))))))

(declare-fun b!1922142 () Bool)

(declare-fun size!17083 (List!21975) Int)

(assert (=> b!1922142 (= e!1228775 (= (size!17081 separatorToken!354) (size!17083 (originalCharacters!4732 separatorToken!354))))))

(assert (= (and d!585618 res!859619) b!1922141))

(assert (= (and b!1922141 res!859620) b!1922142))

(declare-fun b_lambda!63497 () Bool)

(assert (=> (not b_lambda!63497) (not b!1922141)))

(declare-fun t!178926 () Bool)

(declare-fun tb!117393 () Bool)

(assert (=> (and b!1921989 (= (toChars!5413 (transformation!3925 (h!27296 rules!3198))) (toChars!5413 (transformation!3925 (rule!6128 separatorToken!354)))) t!178926) tb!117393))

(declare-fun b!1922147 () Bool)

(declare-fun e!1228778 () Bool)

(declare-fun tp!549543 () Bool)

(declare-fun inv!28971 (Conc!7304) Bool)

(assert (=> b!1922147 (= e!1228778 (and (inv!28971 (c!312334 (dynLambda!10566 (toChars!5413 (transformation!3925 (rule!6128 separatorToken!354))) (value!123455 separatorToken!354)))) tp!549543))))

(declare-fun result!141884 () Bool)

(declare-fun inv!28972 (BalanceConc!14424) Bool)

(assert (=> tb!117393 (= result!141884 (and (inv!28972 (dynLambda!10566 (toChars!5413 (transformation!3925 (rule!6128 separatorToken!354))) (value!123455 separatorToken!354))) e!1228778))))

(assert (= tb!117393 b!1922147))

(declare-fun m!2356993 () Bool)

(assert (=> b!1922147 m!2356993))

(declare-fun m!2356995 () Bool)

(assert (=> tb!117393 m!2356995))

(assert (=> b!1922141 t!178926))

(declare-fun b_and!150347 () Bool)

(assert (= b_and!150325 (and (=> t!178926 result!141884) b_and!150347)))

(declare-fun t!178928 () Bool)

(declare-fun tb!117395 () Bool)

(assert (=> (and b!1921993 (= (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598)))) (toChars!5413 (transformation!3925 (rule!6128 separatorToken!354)))) t!178928) tb!117395))

(declare-fun result!141888 () Bool)

(assert (= result!141888 result!141884))

(assert (=> b!1922141 t!178928))

(declare-fun b_and!150349 () Bool)

(assert (= b_and!150329 (and (=> t!178928 result!141888) b_and!150349)))

(declare-fun t!178930 () Bool)

(declare-fun tb!117397 () Bool)

(assert (=> (and b!1921973 (= (toChars!5413 (transformation!3925 (rule!6128 separatorToken!354))) (toChars!5413 (transformation!3925 (rule!6128 separatorToken!354)))) t!178930) tb!117397))

(declare-fun result!141890 () Bool)

(assert (= result!141890 result!141884))

(assert (=> b!1922141 t!178930))

(declare-fun b_and!150351 () Bool)

(assert (= b_and!150333 (and (=> t!178930 result!141890) b_and!150351)))

(declare-fun m!2356997 () Bool)

(assert (=> d!585618 m!2356997))

(declare-fun m!2356999 () Bool)

(assert (=> b!1922141 m!2356999))

(assert (=> b!1922141 m!2356999))

(declare-fun m!2357001 () Bool)

(assert (=> b!1922141 m!2357001))

(declare-fun m!2357003 () Bool)

(assert (=> b!1922142 m!2357003))

(assert (=> start!192494 d!585618))

(declare-fun b!1922158 () Bool)

(declare-fun e!1228785 () Bool)

(declare-fun inv!15 (TokenValue!4061) Bool)

(assert (=> b!1922158 (= e!1228785 (inv!15 (value!123455 (h!27295 tokens!598))))))

(declare-fun b!1922159 () Bool)

(declare-fun e!1228787 () Bool)

(declare-fun inv!16 (TokenValue!4061) Bool)

(assert (=> b!1922159 (= e!1228787 (inv!16 (value!123455 (h!27295 tokens!598))))))

(declare-fun b!1922160 () Bool)

(declare-fun e!1228786 () Bool)

(assert (=> b!1922160 (= e!1228787 e!1228786)))

(declare-fun c!312360 () Bool)

(assert (=> b!1922160 (= c!312360 (is-IntegerValue!12184 (value!123455 (h!27295 tokens!598))))))

(declare-fun d!585620 () Bool)

(declare-fun c!312361 () Bool)

(assert (=> d!585620 (= c!312361 (is-IntegerValue!12183 (value!123455 (h!27295 tokens!598))))))

(assert (=> d!585620 (= (inv!21 (value!123455 (h!27295 tokens!598))) e!1228787)))

(declare-fun b!1922161 () Bool)

(declare-fun inv!17 (TokenValue!4061) Bool)

(assert (=> b!1922161 (= e!1228786 (inv!17 (value!123455 (h!27295 tokens!598))))))

(declare-fun b!1922162 () Bool)

(declare-fun res!859623 () Bool)

(assert (=> b!1922162 (=> res!859623 e!1228785)))

(assert (=> b!1922162 (= res!859623 (not (is-IntegerValue!12185 (value!123455 (h!27295 tokens!598)))))))

(assert (=> b!1922162 (= e!1228786 e!1228785)))

(assert (= (and d!585620 c!312361) b!1922159))

(assert (= (and d!585620 (not c!312361)) b!1922160))

(assert (= (and b!1922160 c!312360) b!1922161))

(assert (= (and b!1922160 (not c!312360)) b!1922162))

(assert (= (and b!1922162 (not res!859623)) b!1922158))

(declare-fun m!2357005 () Bool)

(assert (=> b!1922158 m!2357005))

(declare-fun m!2357007 () Bool)

(assert (=> b!1922159 m!2357007))

(declare-fun m!2357009 () Bool)

(assert (=> b!1922161 m!2357009))

(assert (=> b!1921984 d!585620))

(declare-fun b!1922163 () Bool)

(declare-fun res!859629 () Bool)

(declare-fun e!1228790 () Bool)

(assert (=> b!1922163 (=> res!859629 e!1228790)))

(declare-fun e!1228789 () Bool)

(assert (=> b!1922163 (= res!859629 e!1228789)))

(declare-fun res!859630 () Bool)

(assert (=> b!1922163 (=> (not res!859630) (not e!1228789))))

(declare-fun lt!736676 () Bool)

(assert (=> b!1922163 (= res!859630 lt!736676)))

(declare-fun b!1922164 () Bool)

(declare-fun e!1228794 () Bool)

(declare-fun e!1228788 () Bool)

(assert (=> b!1922164 (= e!1228794 e!1228788)))

(declare-fun res!859626 () Bool)

(assert (=> b!1922164 (=> res!859626 e!1228788)))

(declare-fun call!118075 () Bool)

(assert (=> b!1922164 (= res!859626 call!118075)))

(declare-fun b!1922165 () Bool)

(declare-fun e!1228791 () Bool)

(assert (=> b!1922165 (= e!1228791 (nullable!1602 (regex!3925 lt!736583)))))

(declare-fun b!1922166 () Bool)

(assert (=> b!1922166 (= e!1228788 (not (= (head!4479 lt!736598) (c!312333 (regex!3925 lt!736583)))))))

(declare-fun b!1922167 () Bool)

(declare-fun res!859627 () Bool)

(assert (=> b!1922167 (=> (not res!859627) (not e!1228789))))

(assert (=> b!1922167 (= res!859627 (not call!118075))))

(declare-fun b!1922168 () Bool)

(assert (=> b!1922168 (= e!1228789 (= (head!4479 lt!736598) (c!312333 (regex!3925 lt!736583))))))

(declare-fun d!585622 () Bool)

(declare-fun e!1228793 () Bool)

(assert (=> d!585622 e!1228793))

(declare-fun c!312362 () Bool)

(assert (=> d!585622 (= c!312362 (is-EmptyExpr!5350 (regex!3925 lt!736583)))))

(assert (=> d!585622 (= lt!736676 e!1228791)))

(declare-fun c!312364 () Bool)

(assert (=> d!585622 (= c!312364 (isEmpty!13469 lt!736598))))

(assert (=> d!585622 (validRegex!2128 (regex!3925 lt!736583))))

(assert (=> d!585622 (= (matchR!2618 (regex!3925 lt!736583) lt!736598) lt!736676)))

(declare-fun b!1922169 () Bool)

(declare-fun res!859628 () Bool)

(assert (=> b!1922169 (=> res!859628 e!1228788)))

(assert (=> b!1922169 (= res!859628 (not (isEmpty!13469 (tail!2967 lt!736598))))))

(declare-fun b!1922170 () Bool)

(declare-fun res!859625 () Bool)

(assert (=> b!1922170 (=> (not res!859625) (not e!1228789))))

(assert (=> b!1922170 (= res!859625 (isEmpty!13469 (tail!2967 lt!736598)))))

(declare-fun b!1922171 () Bool)

(declare-fun res!859631 () Bool)

(assert (=> b!1922171 (=> res!859631 e!1228790)))

(assert (=> b!1922171 (= res!859631 (not (is-ElementMatch!5350 (regex!3925 lt!736583))))))

(declare-fun e!1228792 () Bool)

(assert (=> b!1922171 (= e!1228792 e!1228790)))

(declare-fun b!1922172 () Bool)

(assert (=> b!1922172 (= e!1228791 (matchR!2618 (derivativeStep!1361 (regex!3925 lt!736583) (head!4479 lt!736598)) (tail!2967 lt!736598)))))

(declare-fun b!1922173 () Bool)

(assert (=> b!1922173 (= e!1228792 (not lt!736676))))

(declare-fun b!1922174 () Bool)

(assert (=> b!1922174 (= e!1228793 e!1228792)))

(declare-fun c!312363 () Bool)

(assert (=> b!1922174 (= c!312363 (is-EmptyLang!5350 (regex!3925 lt!736583)))))

(declare-fun b!1922175 () Bool)

(assert (=> b!1922175 (= e!1228793 (= lt!736676 call!118075))))

(declare-fun b!1922176 () Bool)

(assert (=> b!1922176 (= e!1228790 e!1228794)))

(declare-fun res!859624 () Bool)

(assert (=> b!1922176 (=> (not res!859624) (not e!1228794))))

(assert (=> b!1922176 (= res!859624 (not lt!736676))))

(declare-fun bm!118070 () Bool)

(assert (=> bm!118070 (= call!118075 (isEmpty!13469 lt!736598))))

(assert (= (and d!585622 c!312364) b!1922165))

(assert (= (and d!585622 (not c!312364)) b!1922172))

(assert (= (and d!585622 c!312362) b!1922175))

(assert (= (and d!585622 (not c!312362)) b!1922174))

(assert (= (and b!1922174 c!312363) b!1922173))

(assert (= (and b!1922174 (not c!312363)) b!1922171))

(assert (= (and b!1922171 (not res!859631)) b!1922163))

(assert (= (and b!1922163 res!859630) b!1922167))

(assert (= (and b!1922167 res!859627) b!1922170))

(assert (= (and b!1922170 res!859625) b!1922168))

(assert (= (and b!1922163 (not res!859629)) b!1922176))

(assert (= (and b!1922176 res!859624) b!1922164))

(assert (= (and b!1922164 (not res!859626)) b!1922169))

(assert (= (and b!1922169 (not res!859628)) b!1922166))

(assert (= (or b!1922175 b!1922164 b!1922167) bm!118070))

(declare-fun m!2357011 () Bool)

(assert (=> bm!118070 m!2357011))

(declare-fun m!2357013 () Bool)

(assert (=> b!1922172 m!2357013))

(assert (=> b!1922172 m!2357013))

(declare-fun m!2357015 () Bool)

(assert (=> b!1922172 m!2357015))

(declare-fun m!2357017 () Bool)

(assert (=> b!1922172 m!2357017))

(assert (=> b!1922172 m!2357015))

(assert (=> b!1922172 m!2357017))

(declare-fun m!2357019 () Bool)

(assert (=> b!1922172 m!2357019))

(declare-fun m!2357021 () Bool)

(assert (=> b!1922165 m!2357021))

(assert (=> b!1922170 m!2357017))

(assert (=> b!1922170 m!2357017))

(declare-fun m!2357023 () Bool)

(assert (=> b!1922170 m!2357023))

(assert (=> b!1922168 m!2357013))

(assert (=> b!1922169 m!2357017))

(assert (=> b!1922169 m!2357017))

(assert (=> b!1922169 m!2357023))

(assert (=> b!1922166 m!2357013))

(assert (=> d!585622 m!2357011))

(declare-fun m!2357025 () Bool)

(assert (=> d!585622 m!2357025))

(assert (=> b!1921995 d!585622))

(declare-fun d!585624 () Bool)

(assert (=> d!585624 (= (get!6885 lt!736590) (v!26597 lt!736590))))

(assert (=> b!1921995 d!585624))

(declare-fun d!585626 () Bool)

(assert (=> d!585626 (= (inv!28964 (tag!4365 (h!27296 rules!3198))) (= (mod (str.len (value!123454 (tag!4365 (h!27296 rules!3198)))) 2) 0))))

(assert (=> b!1921994 d!585626))

(declare-fun d!585628 () Bool)

(declare-fun res!859634 () Bool)

(declare-fun e!1228797 () Bool)

(assert (=> d!585628 (=> (not res!859634) (not e!1228797))))

(declare-fun semiInverseModEq!1558 (Int Int) Bool)

(assert (=> d!585628 (= res!859634 (semiInverseModEq!1558 (toChars!5413 (transformation!3925 (h!27296 rules!3198))) (toValue!5554 (transformation!3925 (h!27296 rules!3198)))))))

(assert (=> d!585628 (= (inv!28967 (transformation!3925 (h!27296 rules!3198))) e!1228797)))

(declare-fun b!1922179 () Bool)

(declare-fun equivClasses!1485 (Int Int) Bool)

(assert (=> b!1922179 (= e!1228797 (equivClasses!1485 (toChars!5413 (transformation!3925 (h!27296 rules!3198))) (toValue!5554 (transformation!3925 (h!27296 rules!3198)))))))

(assert (= (and d!585628 res!859634) b!1922179))

(declare-fun m!2357027 () Bool)

(assert (=> d!585628 m!2357027))

(declare-fun m!2357029 () Bool)

(assert (=> b!1922179 m!2357029))

(assert (=> b!1921994 d!585628))

(declare-fun d!585630 () Bool)

(declare-fun lt!736684 () Bool)

(declare-fun e!1228827 () Bool)

(assert (=> d!585630 (= lt!736684 e!1228827)))

(declare-fun res!859658 () Bool)

(assert (=> d!585630 (=> (not res!859658) (not e!1228827))))

(declare-fun list!8848 (BalanceConc!14426) List!21976)

(declare-datatypes ((tuple2!20512 0))(
  ( (tuple2!20513 (_1!11725 BalanceConc!14426) (_2!11725 BalanceConc!14424)) )
))
(declare-fun lex!1566 (LexerInterface!3538 List!21977 BalanceConc!14424) tuple2!20512)

(assert (=> d!585630 (= res!859658 (= (list!8848 (_1!11725 (lex!1566 thiss!23328 rules!3198 (print!1508 thiss!23328 (singletonSeq!1909 separatorToken!354))))) (list!8848 (singletonSeq!1909 separatorToken!354))))))

(declare-fun e!1228828 () Bool)

(assert (=> d!585630 (= lt!736684 e!1228828)))

(declare-fun res!859660 () Bool)

(assert (=> d!585630 (=> (not res!859660) (not e!1228828))))

(declare-fun lt!736683 () tuple2!20512)

(declare-fun size!17084 (BalanceConc!14426) Int)

(assert (=> d!585630 (= res!859660 (= (size!17084 (_1!11725 lt!736683)) 1))))

(assert (=> d!585630 (= lt!736683 (lex!1566 thiss!23328 rules!3198 (print!1508 thiss!23328 (singletonSeq!1909 separatorToken!354))))))

(assert (=> d!585630 (not (isEmpty!13467 rules!3198))))

(assert (=> d!585630 (= (rulesProduceIndividualToken!1710 thiss!23328 rules!3198 separatorToken!354) lt!736684)))

(declare-fun b!1922222 () Bool)

(declare-fun res!859659 () Bool)

(assert (=> b!1922222 (=> (not res!859659) (not e!1228828))))

(declare-fun apply!5672 (BalanceConc!14426 Int) Token!7402)

(assert (=> b!1922222 (= res!859659 (= (apply!5672 (_1!11725 lt!736683) 0) separatorToken!354))))

(declare-fun b!1922223 () Bool)

(declare-fun isEmpty!13470 (BalanceConc!14424) Bool)

(assert (=> b!1922223 (= e!1228828 (isEmpty!13470 (_2!11725 lt!736683)))))

(declare-fun b!1922224 () Bool)

(assert (=> b!1922224 (= e!1228827 (isEmpty!13470 (_2!11725 (lex!1566 thiss!23328 rules!3198 (print!1508 thiss!23328 (singletonSeq!1909 separatorToken!354))))))))

(assert (= (and d!585630 res!859660) b!1922222))

(assert (= (and b!1922222 res!859659) b!1922223))

(assert (= (and d!585630 res!859658) b!1922224))

(declare-fun m!2357053 () Bool)

(assert (=> d!585630 m!2357053))

(assert (=> d!585630 m!2357053))

(declare-fun m!2357055 () Bool)

(assert (=> d!585630 m!2357055))

(assert (=> d!585630 m!2357053))

(declare-fun m!2357057 () Bool)

(assert (=> d!585630 m!2357057))

(declare-fun m!2357059 () Bool)

(assert (=> d!585630 m!2357059))

(assert (=> d!585630 m!2356797))

(declare-fun m!2357061 () Bool)

(assert (=> d!585630 m!2357061))

(assert (=> d!585630 m!2357057))

(declare-fun m!2357063 () Bool)

(assert (=> d!585630 m!2357063))

(declare-fun m!2357065 () Bool)

(assert (=> b!1922222 m!2357065))

(declare-fun m!2357067 () Bool)

(assert (=> b!1922223 m!2357067))

(assert (=> b!1922224 m!2357053))

(assert (=> b!1922224 m!2357053))

(assert (=> b!1922224 m!2357057))

(assert (=> b!1922224 m!2357057))

(assert (=> b!1922224 m!2357063))

(declare-fun m!2357069 () Bool)

(assert (=> b!1922224 m!2357069))

(assert (=> b!1921996 d!585630))

(declare-fun d!585642 () Bool)

(declare-fun e!1228833 () Bool)

(assert (=> d!585642 e!1228833))

(declare-fun res!859669 () Bool)

(assert (=> d!585642 (=> (not res!859669) (not e!1228833))))

(assert (=> d!585642 (= res!859669 (isDefined!3819 (getRuleFromTag!746 thiss!23328 rules!3198 (tag!4365 (rule!6128 separatorToken!354)))))))

(declare-fun lt!736688 () Unit!36213)

(declare-fun choose!11926 (LexerInterface!3538 List!21977 List!21975 Token!7402) Unit!36213)

(assert (=> d!585642 (= lt!736688 (choose!11926 thiss!23328 rules!3198 lt!736595 separatorToken!354))))

(assert (=> d!585642 (rulesInvariant!3145 thiss!23328 rules!3198)))

(assert (=> d!585642 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!746 thiss!23328 rules!3198 lt!736595 separatorToken!354) lt!736688)))

(declare-fun b!1922237 () Bool)

(declare-fun res!859670 () Bool)

(assert (=> b!1922237 (=> (not res!859670) (not e!1228833))))

(assert (=> b!1922237 (= res!859670 (matchR!2618 (regex!3925 (get!6885 (getRuleFromTag!746 thiss!23328 rules!3198 (tag!4365 (rule!6128 separatorToken!354))))) (list!8846 (charsOf!2465 separatorToken!354))))))

(declare-fun b!1922238 () Bool)

(assert (=> b!1922238 (= e!1228833 (= (rule!6128 separatorToken!354) (get!6885 (getRuleFromTag!746 thiss!23328 rules!3198 (tag!4365 (rule!6128 separatorToken!354))))))))

(assert (= (and d!585642 res!859669) b!1922237))

(assert (= (and b!1922237 res!859670) b!1922238))

(assert (=> d!585642 m!2356815))

(assert (=> d!585642 m!2356815))

(declare-fun m!2357089 () Bool)

(assert (=> d!585642 m!2357089))

(declare-fun m!2357091 () Bool)

(assert (=> d!585642 m!2357091))

(assert (=> d!585642 m!2356847))

(assert (=> b!1922237 m!2356815))

(declare-fun m!2357093 () Bool)

(assert (=> b!1922237 m!2357093))

(assert (=> b!1922237 m!2356817))

(assert (=> b!1922237 m!2356839))

(assert (=> b!1922237 m!2356817))

(assert (=> b!1922237 m!2356839))

(declare-fun m!2357095 () Bool)

(assert (=> b!1922237 m!2357095))

(assert (=> b!1922237 m!2356815))

(assert (=> b!1922238 m!2356815))

(assert (=> b!1922238 m!2356815))

(assert (=> b!1922238 m!2357093))

(assert (=> b!1921975 d!585642))

(declare-fun d!585650 () Bool)

(declare-fun e!1228841 () Bool)

(assert (=> d!585650 e!1228841))

(declare-fun res!859687 () Bool)

(assert (=> d!585650 (=> res!859687 e!1228841)))

(declare-fun lt!736701 () Option!4526)

(declare-fun isEmpty!13471 (Option!4526) Bool)

(assert (=> d!585650 (= res!859687 (isEmpty!13471 lt!736701))))

(declare-fun e!1228842 () Option!4526)

(assert (=> d!585650 (= lt!736701 e!1228842)))

(declare-fun c!312376 () Bool)

(assert (=> d!585650 (= c!312376 (and (is-Cons!21895 rules!3198) (is-Nil!21895 (t!178920 rules!3198))))))

(declare-fun lt!736703 () Unit!36213)

(declare-fun lt!736699 () Unit!36213)

(assert (=> d!585650 (= lt!736703 lt!736699)))

(declare-fun isPrefix!1934 (List!21975 List!21975) Bool)

(assert (=> d!585650 (isPrefix!1934 lt!736598 lt!736598)))

(declare-fun lemmaIsPrefixRefl!1252 (List!21975 List!21975) Unit!36213)

(assert (=> d!585650 (= lt!736699 (lemmaIsPrefixRefl!1252 lt!736598 lt!736598))))

(declare-fun rulesValidInductive!1333 (LexerInterface!3538 List!21977) Bool)

(assert (=> d!585650 (rulesValidInductive!1333 thiss!23328 rules!3198)))

(assert (=> d!585650 (= (maxPrefix!1976 thiss!23328 rules!3198 lt!736598) lt!736701)))

(declare-fun b!1922257 () Bool)

(declare-fun res!859688 () Bool)

(declare-fun e!1228840 () Bool)

(assert (=> b!1922257 (=> (not res!859688) (not e!1228840))))

(assert (=> b!1922257 (= res!859688 (matchR!2618 (regex!3925 (rule!6128 (_1!11723 (get!6886 lt!736701)))) (list!8846 (charsOf!2465 (_1!11723 (get!6886 lt!736701))))))))

(declare-fun b!1922258 () Bool)

(declare-fun lt!736702 () Option!4526)

(declare-fun lt!736700 () Option!4526)

(assert (=> b!1922258 (= e!1228842 (ite (and (is-None!4525 lt!736702) (is-None!4525 lt!736700)) None!4525 (ite (is-None!4525 lt!736700) lt!736702 (ite (is-None!4525 lt!736702) lt!736700 (ite (>= (size!17081 (_1!11723 (v!26598 lt!736702))) (size!17081 (_1!11723 (v!26598 lt!736700)))) lt!736702 lt!736700)))))))

(declare-fun call!118078 () Option!4526)

(assert (=> b!1922258 (= lt!736702 call!118078)))

(assert (=> b!1922258 (= lt!736700 (maxPrefix!1976 thiss!23328 (t!178920 rules!3198) lt!736598))))

(declare-fun b!1922259 () Bool)

(assert (=> b!1922259 (= e!1228842 call!118078)))

(declare-fun bm!118073 () Bool)

(declare-fun maxPrefixOneRule!1216 (LexerInterface!3538 Rule!7650 List!21975) Option!4526)

(assert (=> bm!118073 (= call!118078 (maxPrefixOneRule!1216 thiss!23328 (h!27296 rules!3198) lt!736598))))

(declare-fun b!1922260 () Bool)

(declare-fun res!859691 () Bool)

(assert (=> b!1922260 (=> (not res!859691) (not e!1228840))))

(declare-fun apply!5673 (TokenValueInjection!7706 BalanceConc!14424) TokenValue!4061)

(assert (=> b!1922260 (= res!859691 (= (value!123455 (_1!11723 (get!6886 lt!736701))) (apply!5673 (transformation!3925 (rule!6128 (_1!11723 (get!6886 lt!736701)))) (seqFromList!2779 (originalCharacters!4732 (_1!11723 (get!6886 lt!736701)))))))))

(declare-fun b!1922261 () Bool)

(declare-fun contains!3948 (List!21977 Rule!7650) Bool)

(assert (=> b!1922261 (= e!1228840 (contains!3948 rules!3198 (rule!6128 (_1!11723 (get!6886 lt!736701)))))))

(declare-fun b!1922262 () Bool)

(declare-fun res!859690 () Bool)

(assert (=> b!1922262 (=> (not res!859690) (not e!1228840))))

(assert (=> b!1922262 (= res!859690 (< (size!17083 (_2!11723 (get!6886 lt!736701))) (size!17083 lt!736598)))))

(declare-fun b!1922263 () Bool)

(declare-fun res!859685 () Bool)

(assert (=> b!1922263 (=> (not res!859685) (not e!1228840))))

(assert (=> b!1922263 (= res!859685 (= (list!8846 (charsOf!2465 (_1!11723 (get!6886 lt!736701)))) (originalCharacters!4732 (_1!11723 (get!6886 lt!736701)))))))

(declare-fun b!1922264 () Bool)

(declare-fun res!859689 () Bool)

(assert (=> b!1922264 (=> (not res!859689) (not e!1228840))))

(assert (=> b!1922264 (= res!859689 (= (++!5864 (list!8846 (charsOf!2465 (_1!11723 (get!6886 lt!736701)))) (_2!11723 (get!6886 lt!736701))) lt!736598))))

(declare-fun b!1922265 () Bool)

(assert (=> b!1922265 (= e!1228841 e!1228840)))

(declare-fun res!859686 () Bool)

(assert (=> b!1922265 (=> (not res!859686) (not e!1228840))))

(assert (=> b!1922265 (= res!859686 (isDefined!3820 lt!736701))))

(assert (= (and d!585650 c!312376) b!1922259))

(assert (= (and d!585650 (not c!312376)) b!1922258))

(assert (= (or b!1922259 b!1922258) bm!118073))

(assert (= (and d!585650 (not res!859687)) b!1922265))

(assert (= (and b!1922265 res!859686) b!1922263))

(assert (= (and b!1922263 res!859685) b!1922262))

(assert (= (and b!1922262 res!859690) b!1922264))

(assert (= (and b!1922264 res!859689) b!1922260))

(assert (= (and b!1922260 res!859691) b!1922257))

(assert (= (and b!1922257 res!859688) b!1922261))

(declare-fun m!2357097 () Bool)

(assert (=> b!1922265 m!2357097))

(declare-fun m!2357099 () Bool)

(assert (=> b!1922262 m!2357099))

(declare-fun m!2357101 () Bool)

(assert (=> b!1922262 m!2357101))

(declare-fun m!2357103 () Bool)

(assert (=> b!1922262 m!2357103))

(declare-fun m!2357105 () Bool)

(assert (=> bm!118073 m!2357105))

(assert (=> b!1922260 m!2357099))

(declare-fun m!2357107 () Bool)

(assert (=> b!1922260 m!2357107))

(assert (=> b!1922260 m!2357107))

(declare-fun m!2357109 () Bool)

(assert (=> b!1922260 m!2357109))

(declare-fun m!2357111 () Bool)

(assert (=> b!1922258 m!2357111))

(assert (=> b!1922263 m!2357099))

(declare-fun m!2357113 () Bool)

(assert (=> b!1922263 m!2357113))

(assert (=> b!1922263 m!2357113))

(declare-fun m!2357115 () Bool)

(assert (=> b!1922263 m!2357115))

(assert (=> b!1922261 m!2357099))

(declare-fun m!2357117 () Bool)

(assert (=> b!1922261 m!2357117))

(assert (=> b!1922264 m!2357099))

(assert (=> b!1922264 m!2357113))

(assert (=> b!1922264 m!2357113))

(assert (=> b!1922264 m!2357115))

(assert (=> b!1922264 m!2357115))

(declare-fun m!2357119 () Bool)

(assert (=> b!1922264 m!2357119))

(declare-fun m!2357121 () Bool)

(assert (=> d!585650 m!2357121))

(declare-fun m!2357123 () Bool)

(assert (=> d!585650 m!2357123))

(declare-fun m!2357125 () Bool)

(assert (=> d!585650 m!2357125))

(declare-fun m!2357127 () Bool)

(assert (=> d!585650 m!2357127))

(assert (=> b!1922257 m!2357099))

(assert (=> b!1922257 m!2357113))

(assert (=> b!1922257 m!2357113))

(assert (=> b!1922257 m!2357115))

(assert (=> b!1922257 m!2357115))

(declare-fun m!2357129 () Bool)

(assert (=> b!1922257 m!2357129))

(assert (=> b!1921975 d!585650))

(declare-fun d!585652 () Bool)

(declare-fun e!1228843 () Bool)

(assert (=> d!585652 e!1228843))

(declare-fun res!859692 () Bool)

(assert (=> d!585652 (=> (not res!859692) (not e!1228843))))

(assert (=> d!585652 (= res!859692 (isDefined!3819 (getRuleFromTag!746 thiss!23328 rules!3198 (tag!4365 (rule!6128 (h!27295 tokens!598))))))))

(declare-fun lt!736704 () Unit!36213)

(assert (=> d!585652 (= lt!736704 (choose!11926 thiss!23328 rules!3198 lt!736598 (h!27295 tokens!598)))))

(assert (=> d!585652 (rulesInvariant!3145 thiss!23328 rules!3198)))

(assert (=> d!585652 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!746 thiss!23328 rules!3198 lt!736598 (h!27295 tokens!598)) lt!736704)))

(declare-fun b!1922266 () Bool)

(declare-fun res!859693 () Bool)

(assert (=> b!1922266 (=> (not res!859693) (not e!1228843))))

(assert (=> b!1922266 (= res!859693 (matchR!2618 (regex!3925 (get!6885 (getRuleFromTag!746 thiss!23328 rules!3198 (tag!4365 (rule!6128 (h!27295 tokens!598)))))) (list!8846 (charsOf!2465 (h!27295 tokens!598)))))))

(declare-fun b!1922267 () Bool)

(assert (=> b!1922267 (= e!1228843 (= (rule!6128 (h!27295 tokens!598)) (get!6885 (getRuleFromTag!746 thiss!23328 rules!3198 (tag!4365 (rule!6128 (h!27295 tokens!598)))))))))

(assert (= (and d!585652 res!859692) b!1922266))

(assert (= (and b!1922266 res!859693) b!1922267))

(assert (=> d!585652 m!2356819))

(assert (=> d!585652 m!2356819))

(declare-fun m!2357131 () Bool)

(assert (=> d!585652 m!2357131))

(declare-fun m!2357133 () Bool)

(assert (=> d!585652 m!2357133))

(assert (=> d!585652 m!2356847))

(assert (=> b!1922266 m!2356819))

(declare-fun m!2357135 () Bool)

(assert (=> b!1922266 m!2357135))

(assert (=> b!1922266 m!2356835))

(declare-fun m!2357137 () Bool)

(assert (=> b!1922266 m!2357137))

(assert (=> b!1922266 m!2356835))

(assert (=> b!1922266 m!2357137))

(declare-fun m!2357139 () Bool)

(assert (=> b!1922266 m!2357139))

(assert (=> b!1922266 m!2356819))

(assert (=> b!1922267 m!2356819))

(assert (=> b!1922267 m!2356819))

(assert (=> b!1922267 m!2357135))

(assert (=> b!1921975 d!585652))

(declare-fun bs!414398 () Bool)

(declare-fun b!1922322 () Bool)

(assert (= bs!414398 (and b!1922322 b!1921987)))

(declare-fun lambda!75044 () Int)

(assert (=> bs!414398 (not (= lambda!75044 lambda!75038))))

(declare-fun b!1922333 () Bool)

(declare-fun e!1228875 () Bool)

(assert (=> b!1922333 (= e!1228875 true)))

(declare-fun b!1922332 () Bool)

(declare-fun e!1228874 () Bool)

(assert (=> b!1922332 (= e!1228874 e!1228875)))

(declare-fun b!1922331 () Bool)

(declare-fun e!1228873 () Bool)

(assert (=> b!1922331 (= e!1228873 e!1228874)))

(assert (=> b!1922322 e!1228873))

(assert (= b!1922332 b!1922333))

(assert (= b!1922331 b!1922332))

(assert (= (and b!1922322 (is-Cons!21895 rules!3198)) b!1922331))

(declare-fun order!13697 () Int)

(declare-fun order!13699 () Int)

(declare-fun dynLambda!10567 (Int Int) Int)

(declare-fun dynLambda!10568 (Int Int) Int)

(assert (=> b!1922333 (< (dynLambda!10567 order!13697 (toValue!5554 (transformation!3925 (h!27296 rules!3198)))) (dynLambda!10568 order!13699 lambda!75044))))

(declare-fun order!13701 () Int)

(declare-fun dynLambda!10569 (Int Int) Int)

(assert (=> b!1922333 (< (dynLambda!10569 order!13701 (toChars!5413 (transformation!3925 (h!27296 rules!3198)))) (dynLambda!10568 order!13699 lambda!75044))))

(assert (=> b!1922322 true))

(declare-fun b!1922315 () Bool)

(declare-fun e!1228865 () List!21975)

(declare-fun call!118093 () List!21975)

(declare-fun lt!736739 () List!21975)

(assert (=> b!1922315 (= e!1228865 (++!5864 call!118093 lt!736739))))

(declare-fun b!1922316 () Bool)

(declare-fun c!312393 () Bool)

(declare-fun lt!736735 () Option!4526)

(assert (=> b!1922316 (= c!312393 (and (is-Some!4525 lt!736735) (not (= (_1!11723 (v!26598 lt!736735)) (h!27295 (t!178919 tokens!598))))))))

(declare-fun e!1228864 () List!21975)

(assert (=> b!1922316 (= e!1228864 e!1228865)))

(declare-fun d!585654 () Bool)

(declare-fun c!312391 () Bool)

(assert (=> d!585654 (= c!312391 (is-Cons!21894 (t!178919 tokens!598)))))

(declare-fun e!1228863 () List!21975)

(assert (=> d!585654 (= (printWithSeparatorTokenWhenNeededList!577 thiss!23328 rules!3198 (t!178919 tokens!598) separatorToken!354) e!1228863)))

(declare-fun b!1922317 () Bool)

(assert (=> b!1922317 (= e!1228864 call!118093)))

(declare-fun b!1922318 () Bool)

(declare-fun e!1228866 () List!21975)

(declare-fun call!118095 () List!21975)

(assert (=> b!1922318 (= e!1228866 call!118095)))

(declare-fun bm!118087 () Bool)

(declare-fun call!118094 () BalanceConc!14424)

(declare-fun c!312390 () Bool)

(assert (=> bm!118087 (= call!118094 (charsOf!2465 (ite c!312390 (h!27295 (t!178919 tokens!598)) (ite c!312393 separatorToken!354 (h!27295 (t!178919 tokens!598))))))))

(declare-fun b!1922319 () Bool)

(assert (=> b!1922319 (= e!1228863 Nil!21893)))

(declare-fun b!1922320 () Bool)

(assert (=> b!1922320 (= e!1228865 Nil!21893)))

(assert (=> b!1922320 (= (print!1508 thiss!23328 (singletonSeq!1909 (h!27295 (t!178919 tokens!598)))) (printTailRec!1014 thiss!23328 (singletonSeq!1909 (h!27295 (t!178919 tokens!598))) 0 (BalanceConc!14425 Empty!7304)))))

(declare-fun lt!736734 () Unit!36213)

(declare-fun Unit!36222 () Unit!36213)

(assert (=> b!1922320 (= lt!736734 Unit!36222)))

(declare-fun lt!736737 () Unit!36213)

(declare-fun call!118092 () List!21975)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!736 (LexerInterface!3538 List!21977 List!21975 List!21975) Unit!36213)

(assert (=> b!1922320 (= lt!736737 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!736 thiss!23328 rules!3198 call!118092 lt!736739))))

(assert (=> b!1922320 false))

(declare-fun lt!736738 () Unit!36213)

(declare-fun Unit!36223 () Unit!36213)

(assert (=> b!1922320 (= lt!736738 Unit!36223)))

(declare-fun call!118096 () BalanceConc!14424)

(declare-fun bm!118088 () Bool)

(assert (=> bm!118088 (= call!118095 (list!8846 (ite c!312390 call!118094 call!118096)))))

(declare-fun bm!118089 () Bool)

(assert (=> bm!118089 (= call!118096 call!118094)))

(declare-fun b!1922321 () Bool)

(assert (=> b!1922321 (= e!1228866 (list!8846 (charsOf!2465 (h!27295 (t!178919 tokens!598)))))))

(declare-fun bm!118090 () Bool)

(declare-fun c!312392 () Bool)

(assert (=> bm!118090 (= c!312392 c!312390)))

(assert (=> bm!118090 (= call!118093 (++!5864 e!1228866 (ite c!312390 lt!736739 call!118092)))))

(declare-fun bm!118091 () Bool)

(assert (=> bm!118091 (= call!118092 call!118095)))

(assert (=> b!1922322 (= e!1228863 e!1228864)))

(declare-fun lt!736736 () Unit!36213)

(declare-fun forallContained!705 (List!21976 Int Token!7402) Unit!36213)

(assert (=> b!1922322 (= lt!736736 (forallContained!705 (t!178919 tokens!598) lambda!75044 (h!27295 (t!178919 tokens!598))))))

(assert (=> b!1922322 (= lt!736739 (printWithSeparatorTokenWhenNeededList!577 thiss!23328 rules!3198 (t!178919 (t!178919 tokens!598)) separatorToken!354))))

(assert (=> b!1922322 (= lt!736735 (maxPrefix!1976 thiss!23328 rules!3198 (++!5864 (list!8846 (charsOf!2465 (h!27295 (t!178919 tokens!598)))) lt!736739)))))

(assert (=> b!1922322 (= c!312390 (and (is-Some!4525 lt!736735) (= (_1!11723 (v!26598 lt!736735)) (h!27295 (t!178919 tokens!598)))))))

(assert (= (and d!585654 c!312391) b!1922322))

(assert (= (and d!585654 (not c!312391)) b!1922319))

(assert (= (and b!1922322 c!312390) b!1922317))

(assert (= (and b!1922322 (not c!312390)) b!1922316))

(assert (= (and b!1922316 c!312393) b!1922315))

(assert (= (and b!1922316 (not c!312393)) b!1922320))

(assert (= (or b!1922315 b!1922320) bm!118089))

(assert (= (or b!1922315 b!1922320) bm!118091))

(assert (= (or b!1922317 bm!118089) bm!118087))

(assert (= (or b!1922317 bm!118091) bm!118088))

(assert (= (or b!1922317 b!1922315) bm!118090))

(assert (= (and bm!118090 c!312392) b!1922318))

(assert (= (and bm!118090 (not c!312392)) b!1922321))

(declare-fun m!2357175 () Bool)

(assert (=> b!1922322 m!2357175))

(declare-fun m!2357177 () Bool)

(assert (=> b!1922322 m!2357177))

(declare-fun m!2357179 () Bool)

(assert (=> b!1922322 m!2357179))

(declare-fun m!2357181 () Bool)

(assert (=> b!1922322 m!2357181))

(declare-fun m!2357183 () Bool)

(assert (=> b!1922322 m!2357183))

(assert (=> b!1922322 m!2357183))

(assert (=> b!1922322 m!2357175))

(assert (=> b!1922322 m!2357181))

(declare-fun m!2357185 () Bool)

(assert (=> b!1922322 m!2357185))

(assert (=> b!1922321 m!2357181))

(assert (=> b!1922321 m!2357181))

(assert (=> b!1922321 m!2357183))

(declare-fun m!2357187 () Bool)

(assert (=> bm!118088 m!2357187))

(declare-fun m!2357189 () Bool)

(assert (=> b!1922320 m!2357189))

(assert (=> b!1922320 m!2357189))

(declare-fun m!2357191 () Bool)

(assert (=> b!1922320 m!2357191))

(assert (=> b!1922320 m!2357189))

(declare-fun m!2357193 () Bool)

(assert (=> b!1922320 m!2357193))

(declare-fun m!2357195 () Bool)

(assert (=> b!1922320 m!2357195))

(declare-fun m!2357197 () Bool)

(assert (=> bm!118090 m!2357197))

(declare-fun m!2357199 () Bool)

(assert (=> b!1922315 m!2357199))

(declare-fun m!2357201 () Bool)

(assert (=> bm!118087 m!2357201))

(assert (=> b!1921975 d!585654))

(declare-fun d!585658 () Bool)

(declare-fun list!8849 (Conc!7304) List!21975)

(assert (=> d!585658 (= (list!8846 (charsOf!2465 separatorToken!354)) (list!8849 (c!312334 (charsOf!2465 separatorToken!354))))))

(declare-fun bs!414399 () Bool)

(assert (= bs!414399 d!585658))

(declare-fun m!2357203 () Bool)

(assert (=> bs!414399 m!2357203))

(assert (=> b!1921975 d!585658))

(declare-fun b!1922340 () Bool)

(declare-fun e!1228878 () Bool)

(assert (=> b!1922340 (= e!1228878 true)))

(declare-fun d!585660 () Bool)

(assert (=> d!585660 e!1228878))

(assert (= d!585660 b!1922340))

(declare-fun order!13703 () Int)

(declare-fun lambda!75047 () Int)

(declare-fun dynLambda!10570 (Int Int) Int)

(assert (=> b!1922340 (< (dynLambda!10567 order!13697 (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598))))) (dynLambda!10570 order!13703 lambda!75047))))

(assert (=> b!1922340 (< (dynLambda!10569 order!13701 (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598))))) (dynLambda!10570 order!13703 lambda!75047))))

(declare-fun dynLambda!10571 (Int BalanceConc!14424) TokenValue!4061)

(assert (=> d!585660 (= (list!8846 (dynLambda!10566 (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598)))) (dynLambda!10571 (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598)))) lt!736599))) (list!8846 lt!736599))))

(declare-fun lt!736742 () Unit!36213)

(declare-fun ForallOf!398 (Int BalanceConc!14424) Unit!36213)

(assert (=> d!585660 (= lt!736742 (ForallOf!398 lambda!75047 lt!736599))))

(assert (=> d!585660 (= (lemmaSemiInverse!882 (transformation!3925 (rule!6128 (h!27295 tokens!598))) lt!736599) lt!736742)))

(declare-fun b_lambda!63501 () Bool)

(assert (=> (not b_lambda!63501) (not d!585660)))

(declare-fun t!178943 () Bool)

(declare-fun tb!117405 () Bool)

(assert (=> (and b!1921989 (= (toChars!5413 (transformation!3925 (h!27296 rules!3198))) (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598))))) t!178943) tb!117405))

(declare-fun b!1922341 () Bool)

(declare-fun e!1228879 () Bool)

(declare-fun tp!549547 () Bool)

(assert (=> b!1922341 (= e!1228879 (and (inv!28971 (c!312334 (dynLambda!10566 (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598)))) (dynLambda!10571 (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598)))) lt!736599)))) tp!549547))))

(declare-fun result!141900 () Bool)

(assert (=> tb!117405 (= result!141900 (and (inv!28972 (dynLambda!10566 (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598)))) (dynLambda!10571 (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598)))) lt!736599))) e!1228879))))

(assert (= tb!117405 b!1922341))

(declare-fun m!2357205 () Bool)

(assert (=> b!1922341 m!2357205))

(declare-fun m!2357207 () Bool)

(assert (=> tb!117405 m!2357207))

(assert (=> d!585660 t!178943))

(declare-fun b_and!150359 () Bool)

(assert (= b_and!150347 (and (=> t!178943 result!141900) b_and!150359)))

(declare-fun t!178945 () Bool)

(declare-fun tb!117407 () Bool)

(assert (=> (and b!1921993 (= (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598)))) (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598))))) t!178945) tb!117407))

(declare-fun result!141902 () Bool)

(assert (= result!141902 result!141900))

(assert (=> d!585660 t!178945))

(declare-fun b_and!150361 () Bool)

(assert (= b_and!150349 (and (=> t!178945 result!141902) b_and!150361)))

(declare-fun tb!117409 () Bool)

(declare-fun t!178947 () Bool)

(assert (=> (and b!1921973 (= (toChars!5413 (transformation!3925 (rule!6128 separatorToken!354))) (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598))))) t!178947) tb!117409))

(declare-fun result!141904 () Bool)

(assert (= result!141904 result!141900))

(assert (=> d!585660 t!178947))

(declare-fun b_and!150363 () Bool)

(assert (= b_and!150351 (and (=> t!178947 result!141904) b_and!150363)))

(declare-fun b_lambda!63503 () Bool)

(assert (=> (not b_lambda!63503) (not d!585660)))

(declare-fun t!178949 () Bool)

(declare-fun tb!117411 () Bool)

(assert (=> (and b!1921989 (= (toValue!5554 (transformation!3925 (h!27296 rules!3198))) (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598))))) t!178949) tb!117411))

(declare-fun result!141906 () Bool)

(assert (=> tb!117411 (= result!141906 (inv!21 (dynLambda!10571 (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598)))) lt!736599)))))

(declare-fun m!2357209 () Bool)

(assert (=> tb!117411 m!2357209))

(assert (=> d!585660 t!178949))

(declare-fun b_and!150365 () Bool)

(assert (= b_and!150323 (and (=> t!178949 result!141906) b_and!150365)))

(declare-fun t!178951 () Bool)

(declare-fun tb!117413 () Bool)

(assert (=> (and b!1921993 (= (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598)))) (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598))))) t!178951) tb!117413))

(declare-fun result!141910 () Bool)

(assert (= result!141910 result!141906))

(assert (=> d!585660 t!178951))

(declare-fun b_and!150367 () Bool)

(assert (= b_and!150327 (and (=> t!178951 result!141910) b_and!150367)))

(declare-fun tb!117415 () Bool)

(declare-fun t!178953 () Bool)

(assert (=> (and b!1921973 (= (toValue!5554 (transformation!3925 (rule!6128 separatorToken!354))) (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598))))) t!178953) tb!117415))

(declare-fun result!141912 () Bool)

(assert (= result!141912 result!141906))

(assert (=> d!585660 t!178953))

(declare-fun b_and!150369 () Bool)

(assert (= b_and!150331 (and (=> t!178953 result!141912) b_and!150369)))

(assert (=> d!585660 m!2356837))

(declare-fun m!2357211 () Bool)

(assert (=> d!585660 m!2357211))

(declare-fun m!2357213 () Bool)

(assert (=> d!585660 m!2357213))

(declare-fun m!2357215 () Bool)

(assert (=> d!585660 m!2357215))

(declare-fun m!2357217 () Bool)

(assert (=> d!585660 m!2357217))

(assert (=> d!585660 m!2357215))

(assert (=> d!585660 m!2357211))

(assert (=> b!1921975 d!585660))

(declare-fun d!585662 () Bool)

(declare-fun isEmpty!13472 (Option!4525) Bool)

(assert (=> d!585662 (= (isDefined!3819 lt!736587) (not (isEmpty!13472 lt!736587)))))

(declare-fun bs!414400 () Bool)

(assert (= bs!414400 d!585662))

(declare-fun m!2357219 () Bool)

(assert (=> bs!414400 m!2357219))

(assert (=> b!1921975 d!585662))

(declare-fun d!585664 () Bool)

(declare-fun e!1228884 () Bool)

(assert (=> d!585664 e!1228884))

(declare-fun res!859717 () Bool)

(assert (=> d!585664 (=> res!859717 e!1228884)))

(declare-fun lt!736745 () Option!4526)

(assert (=> d!585664 (= res!859717 (isEmpty!13471 lt!736745))))

(declare-fun e!1228885 () Option!4526)

(assert (=> d!585664 (= lt!736745 e!1228885)))

(declare-fun c!312395 () Bool)

(assert (=> d!585664 (= c!312395 (and (is-Cons!21895 rules!3198) (is-Nil!21895 (t!178920 rules!3198))))))

(declare-fun lt!736747 () Unit!36213)

(declare-fun lt!736743 () Unit!36213)

(assert (=> d!585664 (= lt!736747 lt!736743)))

(assert (=> d!585664 (isPrefix!1934 (++!5864 lt!736598 lt!736585) (++!5864 lt!736598 lt!736585))))

(assert (=> d!585664 (= lt!736743 (lemmaIsPrefixRefl!1252 (++!5864 lt!736598 lt!736585) (++!5864 lt!736598 lt!736585)))))

(assert (=> d!585664 (rulesValidInductive!1333 thiss!23328 rules!3198)))

(assert (=> d!585664 (= (maxPrefix!1976 thiss!23328 rules!3198 (++!5864 lt!736598 lt!736585)) lt!736745)))

(declare-fun b!1922344 () Bool)

(declare-fun res!859718 () Bool)

(declare-fun e!1228883 () Bool)

(assert (=> b!1922344 (=> (not res!859718) (not e!1228883))))

(assert (=> b!1922344 (= res!859718 (matchR!2618 (regex!3925 (rule!6128 (_1!11723 (get!6886 lt!736745)))) (list!8846 (charsOf!2465 (_1!11723 (get!6886 lt!736745))))))))

(declare-fun b!1922345 () Bool)

(declare-fun lt!736746 () Option!4526)

(declare-fun lt!736744 () Option!4526)

(assert (=> b!1922345 (= e!1228885 (ite (and (is-None!4525 lt!736746) (is-None!4525 lt!736744)) None!4525 (ite (is-None!4525 lt!736744) lt!736746 (ite (is-None!4525 lt!736746) lt!736744 (ite (>= (size!17081 (_1!11723 (v!26598 lt!736746))) (size!17081 (_1!11723 (v!26598 lt!736744)))) lt!736746 lt!736744)))))))

(declare-fun call!118097 () Option!4526)

(assert (=> b!1922345 (= lt!736746 call!118097)))

(assert (=> b!1922345 (= lt!736744 (maxPrefix!1976 thiss!23328 (t!178920 rules!3198) (++!5864 lt!736598 lt!736585)))))

(declare-fun b!1922346 () Bool)

(assert (=> b!1922346 (= e!1228885 call!118097)))

(declare-fun bm!118092 () Bool)

(assert (=> bm!118092 (= call!118097 (maxPrefixOneRule!1216 thiss!23328 (h!27296 rules!3198) (++!5864 lt!736598 lt!736585)))))

(declare-fun b!1922347 () Bool)

(declare-fun res!859721 () Bool)

(assert (=> b!1922347 (=> (not res!859721) (not e!1228883))))

(assert (=> b!1922347 (= res!859721 (= (value!123455 (_1!11723 (get!6886 lt!736745))) (apply!5673 (transformation!3925 (rule!6128 (_1!11723 (get!6886 lt!736745)))) (seqFromList!2779 (originalCharacters!4732 (_1!11723 (get!6886 lt!736745)))))))))

(declare-fun b!1922348 () Bool)

(assert (=> b!1922348 (= e!1228883 (contains!3948 rules!3198 (rule!6128 (_1!11723 (get!6886 lt!736745)))))))

(declare-fun b!1922349 () Bool)

(declare-fun res!859720 () Bool)

(assert (=> b!1922349 (=> (not res!859720) (not e!1228883))))

(assert (=> b!1922349 (= res!859720 (< (size!17083 (_2!11723 (get!6886 lt!736745))) (size!17083 (++!5864 lt!736598 lt!736585))))))

(declare-fun b!1922350 () Bool)

(declare-fun res!859715 () Bool)

(assert (=> b!1922350 (=> (not res!859715) (not e!1228883))))

(assert (=> b!1922350 (= res!859715 (= (list!8846 (charsOf!2465 (_1!11723 (get!6886 lt!736745)))) (originalCharacters!4732 (_1!11723 (get!6886 lt!736745)))))))

(declare-fun b!1922351 () Bool)

(declare-fun res!859719 () Bool)

(assert (=> b!1922351 (=> (not res!859719) (not e!1228883))))

(assert (=> b!1922351 (= res!859719 (= (++!5864 (list!8846 (charsOf!2465 (_1!11723 (get!6886 lt!736745)))) (_2!11723 (get!6886 lt!736745))) (++!5864 lt!736598 lt!736585)))))

(declare-fun b!1922352 () Bool)

(assert (=> b!1922352 (= e!1228884 e!1228883)))

(declare-fun res!859716 () Bool)

(assert (=> b!1922352 (=> (not res!859716) (not e!1228883))))

(assert (=> b!1922352 (= res!859716 (isDefined!3820 lt!736745))))

(assert (= (and d!585664 c!312395) b!1922346))

(assert (= (and d!585664 (not c!312395)) b!1922345))

(assert (= (or b!1922346 b!1922345) bm!118092))

(assert (= (and d!585664 (not res!859717)) b!1922352))

(assert (= (and b!1922352 res!859716) b!1922350))

(assert (= (and b!1922350 res!859715) b!1922349))

(assert (= (and b!1922349 res!859720) b!1922351))

(assert (= (and b!1922351 res!859719) b!1922347))

(assert (= (and b!1922347 res!859721) b!1922344))

(assert (= (and b!1922344 res!859718) b!1922348))

(declare-fun m!2357221 () Bool)

(assert (=> b!1922352 m!2357221))

(declare-fun m!2357223 () Bool)

(assert (=> b!1922349 m!2357223))

(declare-fun m!2357225 () Bool)

(assert (=> b!1922349 m!2357225))

(assert (=> b!1922349 m!2356811))

(declare-fun m!2357227 () Bool)

(assert (=> b!1922349 m!2357227))

(assert (=> bm!118092 m!2356811))

(declare-fun m!2357229 () Bool)

(assert (=> bm!118092 m!2357229))

(assert (=> b!1922347 m!2357223))

(declare-fun m!2357231 () Bool)

(assert (=> b!1922347 m!2357231))

(assert (=> b!1922347 m!2357231))

(declare-fun m!2357233 () Bool)

(assert (=> b!1922347 m!2357233))

(assert (=> b!1922345 m!2356811))

(declare-fun m!2357235 () Bool)

(assert (=> b!1922345 m!2357235))

(assert (=> b!1922350 m!2357223))

(declare-fun m!2357237 () Bool)

(assert (=> b!1922350 m!2357237))

(assert (=> b!1922350 m!2357237))

(declare-fun m!2357239 () Bool)

(assert (=> b!1922350 m!2357239))

(assert (=> b!1922348 m!2357223))

(declare-fun m!2357241 () Bool)

(assert (=> b!1922348 m!2357241))

(assert (=> b!1922351 m!2357223))

(assert (=> b!1922351 m!2357237))

(assert (=> b!1922351 m!2357237))

(assert (=> b!1922351 m!2357239))

(assert (=> b!1922351 m!2357239))

(declare-fun m!2357243 () Bool)

(assert (=> b!1922351 m!2357243))

(declare-fun m!2357245 () Bool)

(assert (=> d!585664 m!2357245))

(assert (=> d!585664 m!2356811))

(assert (=> d!585664 m!2356811))

(declare-fun m!2357247 () Bool)

(assert (=> d!585664 m!2357247))

(assert (=> d!585664 m!2356811))

(assert (=> d!585664 m!2356811))

(declare-fun m!2357249 () Bool)

(assert (=> d!585664 m!2357249))

(assert (=> d!585664 m!2357127))

(assert (=> b!1922344 m!2357223))

(assert (=> b!1922344 m!2357237))

(assert (=> b!1922344 m!2357237))

(assert (=> b!1922344 m!2357239))

(assert (=> b!1922344 m!2357239))

(declare-fun m!2357251 () Bool)

(assert (=> b!1922344 m!2357251))

(assert (=> b!1921975 d!585664))

(declare-fun d!585666 () Bool)

(declare-fun lt!736750 () BalanceConc!14424)

(assert (=> d!585666 (= (list!8846 lt!736750) (originalCharacters!4732 separatorToken!354))))

(assert (=> d!585666 (= lt!736750 (dynLambda!10566 (toChars!5413 (transformation!3925 (rule!6128 separatorToken!354))) (value!123455 separatorToken!354)))))

(assert (=> d!585666 (= (charsOf!2465 separatorToken!354) lt!736750)))

(declare-fun b_lambda!63505 () Bool)

(assert (=> (not b_lambda!63505) (not d!585666)))

(assert (=> d!585666 t!178926))

(declare-fun b_and!150371 () Bool)

(assert (= b_and!150359 (and (=> t!178926 result!141884) b_and!150371)))

(assert (=> d!585666 t!178928))

(declare-fun b_and!150373 () Bool)

(assert (= b_and!150361 (and (=> t!178928 result!141888) b_and!150373)))

(assert (=> d!585666 t!178930))

(declare-fun b_and!150375 () Bool)

(assert (= b_and!150363 (and (=> t!178930 result!141890) b_and!150375)))

(declare-fun m!2357253 () Bool)

(assert (=> d!585666 m!2357253))

(assert (=> d!585666 m!2356999))

(assert (=> b!1921975 d!585666))

(declare-fun d!585668 () Bool)

(assert (=> d!585668 (= (isDefined!3819 lt!736590) (not (isEmpty!13472 lt!736590)))))

(declare-fun bs!414401 () Bool)

(assert (= bs!414401 d!585668))

(declare-fun m!2357255 () Bool)

(assert (=> bs!414401 m!2357255))

(assert (=> b!1921975 d!585668))

(declare-fun b!1922365 () Bool)

(declare-fun e!1228897 () Bool)

(declare-fun e!1228896 () Bool)

(assert (=> b!1922365 (= e!1228897 e!1228896)))

(declare-fun res!859727 () Bool)

(assert (=> b!1922365 (=> (not res!859727) (not e!1228896))))

(declare-fun lt!736757 () Option!4525)

(assert (=> b!1922365 (= res!859727 (contains!3948 rules!3198 (get!6885 lt!736757)))))

(declare-fun d!585670 () Bool)

(assert (=> d!585670 e!1228897))

(declare-fun res!859726 () Bool)

(assert (=> d!585670 (=> res!859726 e!1228897)))

(assert (=> d!585670 (= res!859726 (isEmpty!13472 lt!736757))))

(declare-fun e!1228894 () Option!4525)

(assert (=> d!585670 (= lt!736757 e!1228894)))

(declare-fun c!312401 () Bool)

(assert (=> d!585670 (= c!312401 (and (is-Cons!21895 rules!3198) (= (tag!4365 (h!27296 rules!3198)) (tag!4365 (rule!6128 separatorToken!354)))))))

(assert (=> d!585670 (rulesInvariant!3145 thiss!23328 rules!3198)))

(assert (=> d!585670 (= (getRuleFromTag!746 thiss!23328 rules!3198 (tag!4365 (rule!6128 separatorToken!354))) lt!736757)))

(declare-fun b!1922366 () Bool)

(assert (=> b!1922366 (= e!1228896 (= (tag!4365 (get!6885 lt!736757)) (tag!4365 (rule!6128 separatorToken!354))))))

(declare-fun b!1922367 () Bool)

(declare-fun e!1228895 () Option!4525)

(assert (=> b!1922367 (= e!1228895 None!4524)))

(declare-fun b!1922368 () Bool)

(assert (=> b!1922368 (= e!1228894 e!1228895)))

(declare-fun c!312400 () Bool)

(assert (=> b!1922368 (= c!312400 (and (is-Cons!21895 rules!3198) (not (= (tag!4365 (h!27296 rules!3198)) (tag!4365 (rule!6128 separatorToken!354))))))))

(declare-fun b!1922369 () Bool)

(declare-fun lt!736758 () Unit!36213)

(declare-fun lt!736759 () Unit!36213)

(assert (=> b!1922369 (= lt!736758 lt!736759)))

(assert (=> b!1922369 (rulesInvariant!3145 thiss!23328 (t!178920 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!263 (LexerInterface!3538 Rule!7650 List!21977) Unit!36213)

(assert (=> b!1922369 (= lt!736759 (lemmaInvariantOnRulesThenOnTail!263 thiss!23328 (h!27296 rules!3198) (t!178920 rules!3198)))))

(assert (=> b!1922369 (= e!1228895 (getRuleFromTag!746 thiss!23328 (t!178920 rules!3198) (tag!4365 (rule!6128 separatorToken!354))))))

(declare-fun b!1922370 () Bool)

(assert (=> b!1922370 (= e!1228894 (Some!4524 (h!27296 rules!3198)))))

(assert (= (and d!585670 c!312401) b!1922370))

(assert (= (and d!585670 (not c!312401)) b!1922368))

(assert (= (and b!1922368 c!312400) b!1922369))

(assert (= (and b!1922368 (not c!312400)) b!1922367))

(assert (= (and d!585670 (not res!859726)) b!1922365))

(assert (= (and b!1922365 res!859727) b!1922366))

(declare-fun m!2357257 () Bool)

(assert (=> b!1922365 m!2357257))

(assert (=> b!1922365 m!2357257))

(declare-fun m!2357259 () Bool)

(assert (=> b!1922365 m!2357259))

(declare-fun m!2357261 () Bool)

(assert (=> d!585670 m!2357261))

(assert (=> d!585670 m!2356847))

(assert (=> b!1922366 m!2357257))

(declare-fun m!2357263 () Bool)

(assert (=> b!1922369 m!2357263))

(declare-fun m!2357265 () Bool)

(assert (=> b!1922369 m!2357265))

(declare-fun m!2357267 () Bool)

(assert (=> b!1922369 m!2357267))

(assert (=> b!1921975 d!585670))

(declare-fun b!1922371 () Bool)

(declare-fun e!1228901 () Bool)

(declare-fun e!1228900 () Bool)

(assert (=> b!1922371 (= e!1228901 e!1228900)))

(declare-fun res!859729 () Bool)

(assert (=> b!1922371 (=> (not res!859729) (not e!1228900))))

(declare-fun lt!736760 () Option!4525)

(assert (=> b!1922371 (= res!859729 (contains!3948 rules!3198 (get!6885 lt!736760)))))

(declare-fun d!585672 () Bool)

(assert (=> d!585672 e!1228901))

(declare-fun res!859728 () Bool)

(assert (=> d!585672 (=> res!859728 e!1228901)))

(assert (=> d!585672 (= res!859728 (isEmpty!13472 lt!736760))))

(declare-fun e!1228898 () Option!4525)

(assert (=> d!585672 (= lt!736760 e!1228898)))

(declare-fun c!312403 () Bool)

(assert (=> d!585672 (= c!312403 (and (is-Cons!21895 rules!3198) (= (tag!4365 (h!27296 rules!3198)) (tag!4365 (rule!6128 (h!27295 tokens!598))))))))

(assert (=> d!585672 (rulesInvariant!3145 thiss!23328 rules!3198)))

(assert (=> d!585672 (= (getRuleFromTag!746 thiss!23328 rules!3198 (tag!4365 (rule!6128 (h!27295 tokens!598)))) lt!736760)))

(declare-fun b!1922372 () Bool)

(assert (=> b!1922372 (= e!1228900 (= (tag!4365 (get!6885 lt!736760)) (tag!4365 (rule!6128 (h!27295 tokens!598)))))))

(declare-fun b!1922373 () Bool)

(declare-fun e!1228899 () Option!4525)

(assert (=> b!1922373 (= e!1228899 None!4524)))

(declare-fun b!1922374 () Bool)

(assert (=> b!1922374 (= e!1228898 e!1228899)))

(declare-fun c!312402 () Bool)

(assert (=> b!1922374 (= c!312402 (and (is-Cons!21895 rules!3198) (not (= (tag!4365 (h!27296 rules!3198)) (tag!4365 (rule!6128 (h!27295 tokens!598)))))))))

(declare-fun b!1922375 () Bool)

(declare-fun lt!736761 () Unit!36213)

(declare-fun lt!736762 () Unit!36213)

(assert (=> b!1922375 (= lt!736761 lt!736762)))

(assert (=> b!1922375 (rulesInvariant!3145 thiss!23328 (t!178920 rules!3198))))

(assert (=> b!1922375 (= lt!736762 (lemmaInvariantOnRulesThenOnTail!263 thiss!23328 (h!27296 rules!3198) (t!178920 rules!3198)))))

(assert (=> b!1922375 (= e!1228899 (getRuleFromTag!746 thiss!23328 (t!178920 rules!3198) (tag!4365 (rule!6128 (h!27295 tokens!598)))))))

(declare-fun b!1922376 () Bool)

(assert (=> b!1922376 (= e!1228898 (Some!4524 (h!27296 rules!3198)))))

(assert (= (and d!585672 c!312403) b!1922376))

(assert (= (and d!585672 (not c!312403)) b!1922374))

(assert (= (and b!1922374 c!312402) b!1922375))

(assert (= (and b!1922374 (not c!312402)) b!1922373))

(assert (= (and d!585672 (not res!859728)) b!1922371))

(assert (= (and b!1922371 res!859729) b!1922372))

(declare-fun m!2357269 () Bool)

(assert (=> b!1922371 m!2357269))

(assert (=> b!1922371 m!2357269))

(declare-fun m!2357271 () Bool)

(assert (=> b!1922371 m!2357271))

(declare-fun m!2357273 () Bool)

(assert (=> d!585672 m!2357273))

(assert (=> d!585672 m!2356847))

(assert (=> b!1922372 m!2357269))

(assert (=> b!1922375 m!2357263))

(assert (=> b!1922375 m!2357265))

(declare-fun m!2357275 () Bool)

(assert (=> b!1922375 m!2357275))

(assert (=> b!1921975 d!585672))

(declare-fun b!1922383 () Bool)

(declare-fun e!1228906 () Bool)

(assert (=> b!1922383 (= e!1228906 true)))

(declare-fun d!585674 () Bool)

(assert (=> d!585674 e!1228906))

(assert (= d!585674 b!1922383))

(declare-fun order!13705 () Int)

(declare-fun lambda!75050 () Int)

(declare-fun dynLambda!10573 (Int Int) Int)

(assert (=> b!1922383 (< (dynLambda!10567 order!13697 (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598))))) (dynLambda!10573 order!13705 lambda!75050))))

(assert (=> b!1922383 (< (dynLambda!10569 order!13701 (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598))))) (dynLambda!10573 order!13705 lambda!75050))))

(assert (=> d!585674 (= (dynLambda!10571 (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598)))) lt!736599) (dynLambda!10571 (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598)))) (seqFromList!2779 (originalCharacters!4732 (h!27295 tokens!598)))))))

(declare-fun lt!736765 () Unit!36213)

(declare-fun Forall2of!194 (Int BalanceConc!14424 BalanceConc!14424) Unit!36213)

(assert (=> d!585674 (= lt!736765 (Forall2of!194 lambda!75050 lt!736599 (seqFromList!2779 (originalCharacters!4732 (h!27295 tokens!598)))))))

(assert (=> d!585674 (= (list!8846 lt!736599) (list!8846 (seqFromList!2779 (originalCharacters!4732 (h!27295 tokens!598)))))))

(assert (=> d!585674 (= (lemmaEqSameImage!611 (transformation!3925 (rule!6128 (h!27295 tokens!598))) lt!736599 (seqFromList!2779 (originalCharacters!4732 (h!27295 tokens!598)))) lt!736765)))

(declare-fun b_lambda!63507 () Bool)

(assert (=> (not b_lambda!63507) (not d!585674)))

(assert (=> d!585674 t!178949))

(declare-fun b_and!150377 () Bool)

(assert (= b_and!150365 (and (=> t!178949 result!141906) b_and!150377)))

(assert (=> d!585674 t!178951))

(declare-fun b_and!150379 () Bool)

(assert (= b_and!150367 (and (=> t!178951 result!141910) b_and!150379)))

(assert (=> d!585674 t!178953))

(declare-fun b_and!150381 () Bool)

(assert (= b_and!150369 (and (=> t!178953 result!141912) b_and!150381)))

(declare-fun b_lambda!63509 () Bool)

(assert (=> (not b_lambda!63509) (not d!585674)))

(declare-fun t!178955 () Bool)

(declare-fun tb!117417 () Bool)

(assert (=> (and b!1921989 (= (toValue!5554 (transformation!3925 (h!27296 rules!3198))) (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598))))) t!178955) tb!117417))

(declare-fun result!141914 () Bool)

(assert (=> tb!117417 (= result!141914 (inv!21 (dynLambda!10571 (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598)))) (seqFromList!2779 (originalCharacters!4732 (h!27295 tokens!598))))))))

(declare-fun m!2357277 () Bool)

(assert (=> tb!117417 m!2357277))

(assert (=> d!585674 t!178955))

(declare-fun b_and!150383 () Bool)

(assert (= b_and!150377 (and (=> t!178955 result!141914) b_and!150383)))

(declare-fun t!178957 () Bool)

(declare-fun tb!117419 () Bool)

(assert (=> (and b!1921993 (= (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598)))) (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598))))) t!178957) tb!117419))

(declare-fun result!141916 () Bool)

(assert (= result!141916 result!141914))

(assert (=> d!585674 t!178957))

(declare-fun b_and!150385 () Bool)

(assert (= b_and!150379 (and (=> t!178957 result!141916) b_and!150385)))

(declare-fun t!178959 () Bool)

(declare-fun tb!117421 () Bool)

(assert (=> (and b!1921973 (= (toValue!5554 (transformation!3925 (rule!6128 separatorToken!354))) (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598))))) t!178959) tb!117421))

(declare-fun result!141918 () Bool)

(assert (= result!141918 result!141914))

(assert (=> d!585674 t!178959))

(declare-fun b_and!150387 () Bool)

(assert (= b_and!150381 (and (=> t!178959 result!141918) b_and!150387)))

(assert (=> d!585674 m!2357215))

(assert (=> d!585674 m!2356823))

(declare-fun m!2357279 () Bool)

(assert (=> d!585674 m!2357279))

(assert (=> d!585674 m!2356823))

(declare-fun m!2357281 () Bool)

(assert (=> d!585674 m!2357281))

(assert (=> d!585674 m!2356823))

(declare-fun m!2357283 () Bool)

(assert (=> d!585674 m!2357283))

(assert (=> d!585674 m!2356837))

(assert (=> b!1921975 d!585674))

(declare-fun d!585676 () Bool)

(assert (=> d!585676 (= (isDefined!3820 lt!736589) (not (isEmpty!13471 lt!736589)))))

(declare-fun bs!414402 () Bool)

(assert (= bs!414402 d!585676))

(declare-fun m!2357285 () Bool)

(assert (=> bs!414402 m!2357285))

(assert (=> b!1921975 d!585676))

(declare-fun d!585678 () Bool)

(assert (=> d!585678 (= (list!8846 lt!736599) (list!8849 (c!312334 lt!736599)))))

(declare-fun bs!414403 () Bool)

(assert (= bs!414403 d!585678))

(declare-fun m!2357287 () Bool)

(assert (=> bs!414403 m!2357287))

(assert (=> b!1921975 d!585678))

(declare-fun b!1922392 () Bool)

(declare-fun e!1228913 () List!21975)

(assert (=> b!1922392 (= e!1228913 lt!736585)))

(declare-fun b!1922395 () Bool)

(declare-fun lt!736768 () List!21975)

(declare-fun e!1228912 () Bool)

(assert (=> b!1922395 (= e!1228912 (or (not (= lt!736585 Nil!21893)) (= lt!736768 lt!736598)))))

(declare-fun b!1922394 () Bool)

(declare-fun res!859737 () Bool)

(assert (=> b!1922394 (=> (not res!859737) (not e!1228912))))

(assert (=> b!1922394 (= res!859737 (= (size!17083 lt!736768) (+ (size!17083 lt!736598) (size!17083 lt!736585))))))

(declare-fun b!1922393 () Bool)

(assert (=> b!1922393 (= e!1228913 (Cons!21893 (h!27294 lt!736598) (++!5864 (t!178918 lt!736598) lt!736585)))))

(declare-fun d!585680 () Bool)

(assert (=> d!585680 e!1228912))

(declare-fun res!859736 () Bool)

(assert (=> d!585680 (=> (not res!859736) (not e!1228912))))

(declare-fun content!3161 (List!21975) (Set C!10846))

(assert (=> d!585680 (= res!859736 (= (content!3161 lt!736768) (set.union (content!3161 lt!736598) (content!3161 lt!736585))))))

(assert (=> d!585680 (= lt!736768 e!1228913)))

(declare-fun c!312406 () Bool)

(assert (=> d!585680 (= c!312406 (is-Nil!21893 lt!736598))))

(assert (=> d!585680 (= (++!5864 lt!736598 lt!736585) lt!736768)))

(assert (= (and d!585680 c!312406) b!1922392))

(assert (= (and d!585680 (not c!312406)) b!1922393))

(assert (= (and d!585680 res!859736) b!1922394))

(assert (= (and b!1922394 res!859737) b!1922395))

(declare-fun m!2357289 () Bool)

(assert (=> b!1922394 m!2357289))

(assert (=> b!1922394 m!2357103))

(declare-fun m!2357291 () Bool)

(assert (=> b!1922394 m!2357291))

(declare-fun m!2357293 () Bool)

(assert (=> b!1922393 m!2357293))

(declare-fun m!2357295 () Bool)

(assert (=> d!585680 m!2357295))

(declare-fun m!2357297 () Bool)

(assert (=> d!585680 m!2357297))

(declare-fun m!2357299 () Bool)

(assert (=> d!585680 m!2357299))

(assert (=> b!1921975 d!585680))

(declare-fun d!585682 () Bool)

(declare-fun lt!736769 () BalanceConc!14424)

(assert (=> d!585682 (= (list!8846 lt!736769) (originalCharacters!4732 (h!27295 tokens!598)))))

(assert (=> d!585682 (= lt!736769 (dynLambda!10566 (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598)))) (value!123455 (h!27295 tokens!598))))))

(assert (=> d!585682 (= (charsOf!2465 (h!27295 tokens!598)) lt!736769)))

(declare-fun b_lambda!63511 () Bool)

(assert (=> (not b_lambda!63511) (not d!585682)))

(declare-fun tb!117423 () Bool)

(declare-fun t!178961 () Bool)

(assert (=> (and b!1921989 (= (toChars!5413 (transformation!3925 (h!27296 rules!3198))) (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598))))) t!178961) tb!117423))

(declare-fun b!1922396 () Bool)

(declare-fun e!1228914 () Bool)

(declare-fun tp!549548 () Bool)

(assert (=> b!1922396 (= e!1228914 (and (inv!28971 (c!312334 (dynLambda!10566 (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598)))) (value!123455 (h!27295 tokens!598))))) tp!549548))))

(declare-fun result!141920 () Bool)

(assert (=> tb!117423 (= result!141920 (and (inv!28972 (dynLambda!10566 (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598)))) (value!123455 (h!27295 tokens!598)))) e!1228914))))

(assert (= tb!117423 b!1922396))

(declare-fun m!2357301 () Bool)

(assert (=> b!1922396 m!2357301))

(declare-fun m!2357303 () Bool)

(assert (=> tb!117423 m!2357303))

(assert (=> d!585682 t!178961))

(declare-fun b_and!150389 () Bool)

(assert (= b_and!150371 (and (=> t!178961 result!141920) b_and!150389)))

(declare-fun t!178963 () Bool)

(declare-fun tb!117425 () Bool)

(assert (=> (and b!1921993 (= (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598)))) (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598))))) t!178963) tb!117425))

(declare-fun result!141922 () Bool)

(assert (= result!141922 result!141920))

(assert (=> d!585682 t!178963))

(declare-fun b_and!150391 () Bool)

(assert (= b_and!150373 (and (=> t!178963 result!141922) b_and!150391)))

(declare-fun t!178965 () Bool)

(declare-fun tb!117427 () Bool)

(assert (=> (and b!1921973 (= (toChars!5413 (transformation!3925 (rule!6128 separatorToken!354))) (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598))))) t!178965) tb!117427))

(declare-fun result!141924 () Bool)

(assert (= result!141924 result!141920))

(assert (=> d!585682 t!178965))

(declare-fun b_and!150393 () Bool)

(assert (= b_and!150375 (and (=> t!178965 result!141924) b_and!150393)))

(declare-fun m!2357305 () Bool)

(assert (=> d!585682 m!2357305))

(declare-fun m!2357307 () Bool)

(assert (=> d!585682 m!2357307))

(assert (=> b!1921975 d!585682))

(declare-fun d!585684 () Bool)

(declare-fun fromListB!1231 (List!21975) BalanceConc!14424)

(assert (=> d!585684 (= (seqFromList!2779 (originalCharacters!4732 (h!27295 tokens!598))) (fromListB!1231 (originalCharacters!4732 (h!27295 tokens!598))))))

(declare-fun bs!414404 () Bool)

(assert (= bs!414404 d!585684))

(declare-fun m!2357309 () Bool)

(assert (=> bs!414404 m!2357309))

(assert (=> b!1921975 d!585684))

(declare-fun bs!414411 () Bool)

(declare-fun d!585686 () Bool)

(assert (= bs!414411 (and d!585686 b!1921987)))

(declare-fun lambda!75062 () Int)

(assert (=> bs!414411 (not (= lambda!75062 lambda!75038))))

(declare-fun bs!414412 () Bool)

(assert (= bs!414412 (and d!585686 b!1922322)))

(assert (=> bs!414412 (= lambda!75062 lambda!75044)))

(declare-fun b!1922564 () Bool)

(declare-fun e!1229014 () Bool)

(assert (=> b!1922564 (= e!1229014 true)))

(declare-fun b!1922563 () Bool)

(declare-fun e!1229013 () Bool)

(assert (=> b!1922563 (= e!1229013 e!1229014)))

(declare-fun b!1922562 () Bool)

(declare-fun e!1229012 () Bool)

(assert (=> b!1922562 (= e!1229012 e!1229013)))

(assert (=> d!585686 e!1229012))

(assert (= b!1922563 b!1922564))

(assert (= b!1922562 b!1922563))

(assert (= (and d!585686 (is-Cons!21895 rules!3198)) b!1922562))

(assert (=> b!1922564 (< (dynLambda!10567 order!13697 (toValue!5554 (transformation!3925 (h!27296 rules!3198)))) (dynLambda!10568 order!13699 lambda!75062))))

(assert (=> b!1922564 (< (dynLambda!10569 order!13701 (toChars!5413 (transformation!3925 (h!27296 rules!3198)))) (dynLambda!10568 order!13699 lambda!75062))))

(assert (=> d!585686 true))

(declare-fun lt!736826 () Bool)

(assert (=> d!585686 (= lt!736826 (forall!4625 tokens!598 lambda!75062))))

(declare-fun e!1229010 () Bool)

(assert (=> d!585686 (= lt!736826 e!1229010)))

(declare-fun res!859803 () Bool)

(assert (=> d!585686 (=> res!859803 e!1229010)))

(assert (=> d!585686 (= res!859803 (not (is-Cons!21894 tokens!598)))))

(assert (=> d!585686 (not (isEmpty!13467 rules!3198))))

(assert (=> d!585686 (= (rulesProduceEachTokenIndividuallyList!1269 thiss!23328 rules!3198 tokens!598) lt!736826)))

(declare-fun b!1922560 () Bool)

(declare-fun e!1229011 () Bool)

(assert (=> b!1922560 (= e!1229010 e!1229011)))

(declare-fun res!859802 () Bool)

(assert (=> b!1922560 (=> (not res!859802) (not e!1229011))))

(assert (=> b!1922560 (= res!859802 (rulesProduceIndividualToken!1710 thiss!23328 rules!3198 (h!27295 tokens!598)))))

(declare-fun b!1922561 () Bool)

(assert (=> b!1922561 (= e!1229011 (rulesProduceEachTokenIndividuallyList!1269 thiss!23328 rules!3198 (t!178919 tokens!598)))))

(assert (= (and d!585686 (not res!859803)) b!1922560))

(assert (= (and b!1922560 res!859802) b!1922561))

(declare-fun m!2357491 () Bool)

(assert (=> d!585686 m!2357491))

(assert (=> d!585686 m!2356797))

(declare-fun m!2357493 () Bool)

(assert (=> b!1922560 m!2357493))

(declare-fun m!2357495 () Bool)

(assert (=> b!1922561 m!2357495))

(assert (=> b!1921974 d!585686))

(declare-fun d!585732 () Bool)

(declare-fun res!859808 () Bool)

(declare-fun e!1229019 () Bool)

(assert (=> d!585732 (=> res!859808 e!1229019)))

(assert (=> d!585732 (= res!859808 (is-Nil!21894 tokens!598))))

(assert (=> d!585732 (= (forall!4625 tokens!598 lambda!75038) e!1229019)))

(declare-fun b!1922569 () Bool)

(declare-fun e!1229020 () Bool)

(assert (=> b!1922569 (= e!1229019 e!1229020)))

(declare-fun res!859809 () Bool)

(assert (=> b!1922569 (=> (not res!859809) (not e!1229020))))

(declare-fun dynLambda!10577 (Int Token!7402) Bool)

(assert (=> b!1922569 (= res!859809 (dynLambda!10577 lambda!75038 (h!27295 tokens!598)))))

(declare-fun b!1922570 () Bool)

(assert (=> b!1922570 (= e!1229020 (forall!4625 (t!178919 tokens!598) lambda!75038))))

(assert (= (and d!585732 (not res!859808)) b!1922569))

(assert (= (and b!1922569 res!859809) b!1922570))

(declare-fun b_lambda!63527 () Bool)

(assert (=> (not b_lambda!63527) (not b!1922569)))

(declare-fun m!2357497 () Bool)

(assert (=> b!1922569 m!2357497))

(declare-fun m!2357499 () Bool)

(assert (=> b!1922570 m!2357499))

(assert (=> b!1921987 d!585732))

(declare-fun c!312454 () Bool)

(declare-fun bm!118121 () Bool)

(declare-fun call!118127 () List!21975)

(declare-fun call!118128 () List!21975)

(declare-fun call!118126 () List!21975)

(assert (=> bm!118121 (= call!118128 (++!5864 (ite c!312454 call!118126 call!118127) (ite c!312454 call!118127 call!118126)))))

(declare-fun b!1922587 () Bool)

(declare-fun e!1229029 () List!21975)

(declare-fun call!118129 () List!21975)

(assert (=> b!1922587 (= e!1229029 call!118129)))

(declare-fun bm!118122 () Bool)

(assert (=> bm!118122 (= call!118126 (usedCharacters!377 (ite c!312454 (regOne!11213 (regex!3925 (rule!6128 separatorToken!354))) (regTwo!11212 (regex!3925 (rule!6128 separatorToken!354))))))))

(declare-fun b!1922588 () Bool)

(declare-fun e!1229030 () List!21975)

(declare-fun e!1229032 () List!21975)

(assert (=> b!1922588 (= e!1229030 e!1229032)))

(declare-fun c!312456 () Bool)

(assert (=> b!1922588 (= c!312456 (is-ElementMatch!5350 (regex!3925 (rule!6128 separatorToken!354))))))

(declare-fun b!1922589 () Bool)

(declare-fun e!1229031 () List!21975)

(assert (=> b!1922589 (= e!1229031 call!118128)))

(declare-fun b!1922590 () Bool)

(assert (=> b!1922590 (= e!1229029 e!1229031)))

(assert (=> b!1922590 (= c!312454 (is-Union!5350 (regex!3925 (rule!6128 separatorToken!354))))))

(declare-fun bm!118123 () Bool)

(assert (=> bm!118123 (= call!118127 call!118129)))

(declare-fun b!1922591 () Bool)

(assert (=> b!1922591 (= e!1229032 (Cons!21893 (c!312333 (regex!3925 (rule!6128 separatorToken!354))) Nil!21893))))

(declare-fun d!585734 () Bool)

(declare-fun c!312455 () Bool)

(assert (=> d!585734 (= c!312455 (or (is-EmptyExpr!5350 (regex!3925 (rule!6128 separatorToken!354))) (is-EmptyLang!5350 (regex!3925 (rule!6128 separatorToken!354)))))))

(assert (=> d!585734 (= (usedCharacters!377 (regex!3925 (rule!6128 separatorToken!354))) e!1229030)))

(declare-fun bm!118124 () Bool)

(declare-fun c!312453 () Bool)

(assert (=> bm!118124 (= call!118129 (usedCharacters!377 (ite c!312453 (reg!5679 (regex!3925 (rule!6128 separatorToken!354))) (ite c!312454 (regTwo!11213 (regex!3925 (rule!6128 separatorToken!354))) (regOne!11212 (regex!3925 (rule!6128 separatorToken!354)))))))))

(declare-fun b!1922592 () Bool)

(assert (=> b!1922592 (= c!312453 (is-Star!5350 (regex!3925 (rule!6128 separatorToken!354))))))

(assert (=> b!1922592 (= e!1229032 e!1229029)))

(declare-fun b!1922593 () Bool)

(assert (=> b!1922593 (= e!1229030 Nil!21893)))

(declare-fun b!1922594 () Bool)

(assert (=> b!1922594 (= e!1229031 call!118128)))

(assert (= (and d!585734 c!312455) b!1922593))

(assert (= (and d!585734 (not c!312455)) b!1922588))

(assert (= (and b!1922588 c!312456) b!1922591))

(assert (= (and b!1922588 (not c!312456)) b!1922592))

(assert (= (and b!1922592 c!312453) b!1922587))

(assert (= (and b!1922592 (not c!312453)) b!1922590))

(assert (= (and b!1922590 c!312454) b!1922589))

(assert (= (and b!1922590 (not c!312454)) b!1922594))

(assert (= (or b!1922589 b!1922594) bm!118122))

(assert (= (or b!1922589 b!1922594) bm!118123))

(assert (= (or b!1922589 b!1922594) bm!118121))

(assert (= (or b!1922587 bm!118123) bm!118124))

(declare-fun m!2357501 () Bool)

(assert (=> bm!118121 m!2357501))

(declare-fun m!2357503 () Bool)

(assert (=> bm!118122 m!2357503))

(declare-fun m!2357505 () Bool)

(assert (=> bm!118124 m!2357505))

(assert (=> b!1921986 d!585734))

(declare-fun d!585736 () Bool)

(declare-fun lt!736843 () BalanceConc!14424)

(assert (=> d!585736 (= (list!8846 lt!736843) (printList!1073 thiss!23328 (list!8848 lt!736592)))))

(assert (=> d!585736 (= lt!736843 (printTailRec!1014 thiss!23328 lt!736592 0 (BalanceConc!14425 Empty!7304)))))

(assert (=> d!585736 (= (print!1508 thiss!23328 lt!736592) lt!736843)))

(declare-fun bs!414413 () Bool)

(assert (= bs!414413 d!585736))

(declare-fun m!2357507 () Bool)

(assert (=> bs!414413 m!2357507))

(declare-fun m!2357509 () Bool)

(assert (=> bs!414413 m!2357509))

(assert (=> bs!414413 m!2357509))

(declare-fun m!2357511 () Bool)

(assert (=> bs!414413 m!2357511))

(assert (=> bs!414413 m!2356777))

(assert (=> b!1921986 d!585736))

(declare-fun d!585738 () Bool)

(assert (=> d!585738 (= (head!4479 lt!736595) (h!27294 lt!736595))))

(assert (=> b!1921986 d!585738))

(declare-fun d!585740 () Bool)

(declare-fun e!1229041 () Bool)

(assert (=> d!585740 e!1229041))

(declare-fun res!859815 () Bool)

(assert (=> d!585740 (=> (not res!859815) (not e!1229041))))

(declare-fun lt!736853 () BalanceConc!14426)

(assert (=> d!585740 (= res!859815 (= (list!8848 lt!736853) (Cons!21894 (h!27295 tokens!598) Nil!21894)))))

(declare-fun singleton!841 (Token!7402) BalanceConc!14426)

(assert (=> d!585740 (= lt!736853 (singleton!841 (h!27295 tokens!598)))))

(assert (=> d!585740 (= (singletonSeq!1909 (h!27295 tokens!598)) lt!736853)))

(declare-fun b!1922606 () Bool)

(declare-fun isBalanced!2250 (Conc!7305) Bool)

(assert (=> b!1922606 (= e!1229041 (isBalanced!2250 (c!312335 lt!736853)))))

(assert (= (and d!585740 res!859815) b!1922606))

(declare-fun m!2357549 () Bool)

(assert (=> d!585740 m!2357549))

(declare-fun m!2357551 () Bool)

(assert (=> d!585740 m!2357551))

(declare-fun m!2357553 () Bool)

(assert (=> b!1922606 m!2357553))

(assert (=> b!1921986 d!585740))

(declare-fun b!1922607 () Bool)

(declare-fun e!1229043 () List!21975)

(assert (=> b!1922607 (= e!1229043 lt!736585)))

(declare-fun b!1922610 () Bool)

(declare-fun e!1229042 () Bool)

(declare-fun lt!736854 () List!21975)

(assert (=> b!1922610 (= e!1229042 (or (not (= lt!736585 Nil!21893)) (= lt!736854 lt!736595)))))

(declare-fun b!1922609 () Bool)

(declare-fun res!859817 () Bool)

(assert (=> b!1922609 (=> (not res!859817) (not e!1229042))))

(assert (=> b!1922609 (= res!859817 (= (size!17083 lt!736854) (+ (size!17083 lt!736595) (size!17083 lt!736585))))))

(declare-fun b!1922608 () Bool)

(assert (=> b!1922608 (= e!1229043 (Cons!21893 (h!27294 lt!736595) (++!5864 (t!178918 lt!736595) lt!736585)))))

(declare-fun d!585744 () Bool)

(assert (=> d!585744 e!1229042))

(declare-fun res!859816 () Bool)

(assert (=> d!585744 (=> (not res!859816) (not e!1229042))))

(assert (=> d!585744 (= res!859816 (= (content!3161 lt!736854) (set.union (content!3161 lt!736595) (content!3161 lt!736585))))))

(assert (=> d!585744 (= lt!736854 e!1229043)))

(declare-fun c!312460 () Bool)

(assert (=> d!585744 (= c!312460 (is-Nil!21893 lt!736595))))

(assert (=> d!585744 (= (++!5864 lt!736595 lt!736585) lt!736854)))

(assert (= (and d!585744 c!312460) b!1922607))

(assert (= (and d!585744 (not c!312460)) b!1922608))

(assert (= (and d!585744 res!859816) b!1922609))

(assert (= (and b!1922609 res!859817) b!1922610))

(declare-fun m!2357555 () Bool)

(assert (=> b!1922609 m!2357555))

(declare-fun m!2357557 () Bool)

(assert (=> b!1922609 m!2357557))

(assert (=> b!1922609 m!2357291))

(declare-fun m!2357559 () Bool)

(assert (=> b!1922608 m!2357559))

(declare-fun m!2357561 () Bool)

(assert (=> d!585744 m!2357561))

(declare-fun m!2357563 () Bool)

(assert (=> d!585744 m!2357563))

(assert (=> d!585744 m!2357299))

(assert (=> b!1921986 d!585744))

(declare-fun d!585746 () Bool)

(assert (=> d!585746 (not (contains!3946 (usedCharacters!377 (regex!3925 (rule!6128 (h!27295 tokens!598)))) lt!736596))))

(declare-fun lt!736857 () Unit!36213)

(declare-fun choose!11928 (LexerInterface!3538 List!21977 List!21977 Rule!7650 Rule!7650 C!10846) Unit!36213)

(assert (=> d!585746 (= lt!736857 (choose!11928 thiss!23328 rules!3198 rules!3198 (rule!6128 (h!27295 tokens!598)) (rule!6128 separatorToken!354) lt!736596))))

(assert (=> d!585746 (rulesInvariant!3145 thiss!23328 rules!3198)))

(assert (=> d!585746 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!73 thiss!23328 rules!3198 rules!3198 (rule!6128 (h!27295 tokens!598)) (rule!6128 separatorToken!354) lt!736596) lt!736857)))

(declare-fun bs!414414 () Bool)

(assert (= bs!414414 d!585746))

(assert (=> bs!414414 m!2356771))

(assert (=> bs!414414 m!2356771))

(assert (=> bs!414414 m!2356773))

(declare-fun m!2357565 () Bool)

(assert (=> bs!414414 m!2357565))

(assert (=> bs!414414 m!2356847))

(assert (=> b!1921986 d!585746))

(declare-fun d!585748 () Bool)

(declare-fun c!312476 () Bool)

(assert (=> d!585748 (= c!312476 (is-Cons!21894 (Cons!21894 (h!27295 tokens!598) Nil!21894)))))

(declare-fun e!1229058 () List!21975)

(assert (=> d!585748 (= (printList!1073 thiss!23328 (Cons!21894 (h!27295 tokens!598) Nil!21894)) e!1229058)))

(declare-fun b!1922639 () Bool)

(assert (=> b!1922639 (= e!1229058 (++!5864 (list!8846 (charsOf!2465 (h!27295 (Cons!21894 (h!27295 tokens!598) Nil!21894)))) (printList!1073 thiss!23328 (t!178919 (Cons!21894 (h!27295 tokens!598) Nil!21894)))))))

(declare-fun b!1922640 () Bool)

(assert (=> b!1922640 (= e!1229058 Nil!21893)))

(assert (= (and d!585748 c!312476) b!1922639))

(assert (= (and d!585748 (not c!312476)) b!1922640))

(declare-fun m!2357573 () Bool)

(assert (=> b!1922639 m!2357573))

(assert (=> b!1922639 m!2357573))

(declare-fun m!2357575 () Bool)

(assert (=> b!1922639 m!2357575))

(declare-fun m!2357577 () Bool)

(assert (=> b!1922639 m!2357577))

(assert (=> b!1922639 m!2357575))

(assert (=> b!1922639 m!2357577))

(declare-fun m!2357579 () Bool)

(assert (=> b!1922639 m!2357579))

(assert (=> b!1921986 d!585748))

(declare-fun d!585752 () Bool)

(assert (=> d!585752 (= (list!8846 lt!736594) (list!8849 (c!312334 lt!736594)))))

(declare-fun bs!414415 () Bool)

(assert (= bs!414415 d!585752))

(declare-fun m!2357581 () Bool)

(assert (=> bs!414415 m!2357581))

(assert (=> b!1921986 d!585752))

(declare-fun d!585754 () Bool)

(assert (=> d!585754 (= (++!5864 (++!5864 lt!736598 lt!736595) lt!736585) (++!5864 lt!736598 (++!5864 lt!736595 lt!736585)))))

(declare-fun lt!736862 () Unit!36213)

(declare-fun choose!11929 (List!21975 List!21975 List!21975) Unit!36213)

(assert (=> d!585754 (= lt!736862 (choose!11929 lt!736598 lt!736595 lt!736585))))

(assert (=> d!585754 (= (lemmaConcatAssociativity!1184 lt!736598 lt!736595 lt!736585) lt!736862)))

(declare-fun bs!414416 () Bool)

(assert (= bs!414416 d!585754))

(assert (=> bs!414416 m!2356765))

(assert (=> bs!414416 m!2356767))

(declare-fun m!2357583 () Bool)

(assert (=> bs!414416 m!2357583))

(assert (=> bs!414416 m!2356761))

(assert (=> bs!414416 m!2356763))

(assert (=> bs!414416 m!2356765))

(assert (=> bs!414416 m!2356761))

(assert (=> b!1921986 d!585754))

(declare-fun d!585756 () Bool)

(declare-fun lt!736868 () Bool)

(assert (=> d!585756 (= lt!736868 (set.member lt!736596 (content!3161 (usedCharacters!377 (regex!3925 (rule!6128 separatorToken!354))))))))

(declare-fun e!1229070 () Bool)

(assert (=> d!585756 (= lt!736868 e!1229070)))

(declare-fun res!859829 () Bool)

(assert (=> d!585756 (=> (not res!859829) (not e!1229070))))

(assert (=> d!585756 (= res!859829 (is-Cons!21893 (usedCharacters!377 (regex!3925 (rule!6128 separatorToken!354)))))))

(assert (=> d!585756 (= (contains!3946 (usedCharacters!377 (regex!3925 (rule!6128 separatorToken!354))) lt!736596) lt!736868)))

(declare-fun b!1922656 () Bool)

(declare-fun e!1229071 () Bool)

(assert (=> b!1922656 (= e!1229070 e!1229071)))

(declare-fun res!859830 () Bool)

(assert (=> b!1922656 (=> res!859830 e!1229071)))

(assert (=> b!1922656 (= res!859830 (= (h!27294 (usedCharacters!377 (regex!3925 (rule!6128 separatorToken!354)))) lt!736596))))

(declare-fun b!1922657 () Bool)

(assert (=> b!1922657 (= e!1229071 (contains!3946 (t!178918 (usedCharacters!377 (regex!3925 (rule!6128 separatorToken!354)))) lt!736596))))

(assert (= (and d!585756 res!859829) b!1922656))

(assert (= (and b!1922656 (not res!859830)) b!1922657))

(assert (=> d!585756 m!2356749))

(declare-fun m!2357607 () Bool)

(assert (=> d!585756 m!2357607))

(declare-fun m!2357609 () Bool)

(assert (=> d!585756 m!2357609))

(declare-fun m!2357611 () Bool)

(assert (=> b!1922657 m!2357611))

(assert (=> b!1921986 d!585756))

(declare-fun b!1922662 () Bool)

(declare-fun e!1229077 () List!21975)

(assert (=> b!1922662 (= e!1229077 (++!5864 lt!736595 lt!736585))))

(declare-fun lt!736871 () List!21975)

(declare-fun b!1922665 () Bool)

(declare-fun e!1229076 () Bool)

(assert (=> b!1922665 (= e!1229076 (or (not (= (++!5864 lt!736595 lt!736585) Nil!21893)) (= lt!736871 lt!736598)))))

(declare-fun b!1922664 () Bool)

(declare-fun res!859836 () Bool)

(assert (=> b!1922664 (=> (not res!859836) (not e!1229076))))

(assert (=> b!1922664 (= res!859836 (= (size!17083 lt!736871) (+ (size!17083 lt!736598) (size!17083 (++!5864 lt!736595 lt!736585)))))))

(declare-fun b!1922663 () Bool)

(assert (=> b!1922663 (= e!1229077 (Cons!21893 (h!27294 lt!736598) (++!5864 (t!178918 lt!736598) (++!5864 lt!736595 lt!736585))))))

(declare-fun d!585764 () Bool)

(assert (=> d!585764 e!1229076))

(declare-fun res!859835 () Bool)

(assert (=> d!585764 (=> (not res!859835) (not e!1229076))))

(assert (=> d!585764 (= res!859835 (= (content!3161 lt!736871) (set.union (content!3161 lt!736598) (content!3161 (++!5864 lt!736595 lt!736585)))))))

(assert (=> d!585764 (= lt!736871 e!1229077)))

(declare-fun c!312479 () Bool)

(assert (=> d!585764 (= c!312479 (is-Nil!21893 lt!736598))))

(assert (=> d!585764 (= (++!5864 lt!736598 (++!5864 lt!736595 lt!736585)) lt!736871)))

(assert (= (and d!585764 c!312479) b!1922662))

(assert (= (and d!585764 (not c!312479)) b!1922663))

(assert (= (and d!585764 res!859835) b!1922664))

(assert (= (and b!1922664 res!859836) b!1922665))

(declare-fun m!2357613 () Bool)

(assert (=> b!1922664 m!2357613))

(assert (=> b!1922664 m!2357103))

(assert (=> b!1922664 m!2356761))

(declare-fun m!2357615 () Bool)

(assert (=> b!1922664 m!2357615))

(assert (=> b!1922663 m!2356761))

(declare-fun m!2357617 () Bool)

(assert (=> b!1922663 m!2357617))

(declare-fun m!2357619 () Bool)

(assert (=> d!585764 m!2357619))

(assert (=> d!585764 m!2357297))

(assert (=> d!585764 m!2356761))

(declare-fun m!2357621 () Bool)

(assert (=> d!585764 m!2357621))

(assert (=> b!1921986 d!585764))

(declare-fun c!312481 () Bool)

(declare-fun bm!118137 () Bool)

(declare-fun call!118144 () List!21975)

(declare-fun call!118143 () List!21975)

(declare-fun call!118142 () List!21975)

(assert (=> bm!118137 (= call!118144 (++!5864 (ite c!312481 call!118142 call!118143) (ite c!312481 call!118143 call!118142)))))

(declare-fun b!1922666 () Bool)

(declare-fun e!1229078 () List!21975)

(declare-fun call!118145 () List!21975)

(assert (=> b!1922666 (= e!1229078 call!118145)))

(declare-fun bm!118138 () Bool)

(assert (=> bm!118138 (= call!118142 (usedCharacters!377 (ite c!312481 (regOne!11213 (regex!3925 (rule!6128 (h!27295 tokens!598)))) (regTwo!11212 (regex!3925 (rule!6128 (h!27295 tokens!598)))))))))

(declare-fun b!1922667 () Bool)

(declare-fun e!1229079 () List!21975)

(declare-fun e!1229081 () List!21975)

(assert (=> b!1922667 (= e!1229079 e!1229081)))

(declare-fun c!312483 () Bool)

(assert (=> b!1922667 (= c!312483 (is-ElementMatch!5350 (regex!3925 (rule!6128 (h!27295 tokens!598)))))))

(declare-fun b!1922668 () Bool)

(declare-fun e!1229080 () List!21975)

(assert (=> b!1922668 (= e!1229080 call!118144)))

(declare-fun b!1922669 () Bool)

(assert (=> b!1922669 (= e!1229078 e!1229080)))

(assert (=> b!1922669 (= c!312481 (is-Union!5350 (regex!3925 (rule!6128 (h!27295 tokens!598)))))))

(declare-fun bm!118139 () Bool)

(assert (=> bm!118139 (= call!118143 call!118145)))

(declare-fun b!1922670 () Bool)

(assert (=> b!1922670 (= e!1229081 (Cons!21893 (c!312333 (regex!3925 (rule!6128 (h!27295 tokens!598)))) Nil!21893))))

(declare-fun d!585766 () Bool)

(declare-fun c!312482 () Bool)

(assert (=> d!585766 (= c!312482 (or (is-EmptyExpr!5350 (regex!3925 (rule!6128 (h!27295 tokens!598)))) (is-EmptyLang!5350 (regex!3925 (rule!6128 (h!27295 tokens!598))))))))

(assert (=> d!585766 (= (usedCharacters!377 (regex!3925 (rule!6128 (h!27295 tokens!598)))) e!1229079)))

(declare-fun c!312480 () Bool)

(declare-fun bm!118140 () Bool)

(assert (=> bm!118140 (= call!118145 (usedCharacters!377 (ite c!312480 (reg!5679 (regex!3925 (rule!6128 (h!27295 tokens!598)))) (ite c!312481 (regTwo!11213 (regex!3925 (rule!6128 (h!27295 tokens!598)))) (regOne!11212 (regex!3925 (rule!6128 (h!27295 tokens!598))))))))))

(declare-fun b!1922671 () Bool)

(assert (=> b!1922671 (= c!312480 (is-Star!5350 (regex!3925 (rule!6128 (h!27295 tokens!598)))))))

(assert (=> b!1922671 (= e!1229081 e!1229078)))

(declare-fun b!1922672 () Bool)

(assert (=> b!1922672 (= e!1229079 Nil!21893)))

(declare-fun b!1922673 () Bool)

(assert (=> b!1922673 (= e!1229080 call!118144)))

(assert (= (and d!585766 c!312482) b!1922672))

(assert (= (and d!585766 (not c!312482)) b!1922667))

(assert (= (and b!1922667 c!312483) b!1922670))

(assert (= (and b!1922667 (not c!312483)) b!1922671))

(assert (= (and b!1922671 c!312480) b!1922666))

(assert (= (and b!1922671 (not c!312480)) b!1922669))

(assert (= (and b!1922669 c!312481) b!1922668))

(assert (= (and b!1922669 (not c!312481)) b!1922673))

(assert (= (or b!1922668 b!1922673) bm!118138))

(assert (= (or b!1922668 b!1922673) bm!118139))

(assert (= (or b!1922668 b!1922673) bm!118137))

(assert (= (or b!1922666 bm!118139) bm!118140))

(declare-fun m!2357623 () Bool)

(assert (=> bm!118137 m!2357623))

(declare-fun m!2357625 () Bool)

(assert (=> bm!118138 m!2357625))

(declare-fun m!2357629 () Bool)

(assert (=> bm!118140 m!2357629))

(assert (=> b!1921986 d!585766))

(declare-fun b!1922676 () Bool)

(declare-fun e!1229085 () List!21975)

(assert (=> b!1922676 (= e!1229085 lt!736595)))

(declare-fun b!1922679 () Bool)

(declare-fun lt!736873 () List!21975)

(declare-fun e!1229084 () Bool)

(assert (=> b!1922679 (= e!1229084 (or (not (= lt!736595 Nil!21893)) (= lt!736873 lt!736598)))))

(declare-fun b!1922678 () Bool)

(declare-fun res!859840 () Bool)

(assert (=> b!1922678 (=> (not res!859840) (not e!1229084))))

(assert (=> b!1922678 (= res!859840 (= (size!17083 lt!736873) (+ (size!17083 lt!736598) (size!17083 lt!736595))))))

(declare-fun b!1922677 () Bool)

(assert (=> b!1922677 (= e!1229085 (Cons!21893 (h!27294 lt!736598) (++!5864 (t!178918 lt!736598) lt!736595)))))

(declare-fun d!585768 () Bool)

(assert (=> d!585768 e!1229084))

(declare-fun res!859839 () Bool)

(assert (=> d!585768 (=> (not res!859839) (not e!1229084))))

(assert (=> d!585768 (= res!859839 (= (content!3161 lt!736873) (set.union (content!3161 lt!736598) (content!3161 lt!736595))))))

(assert (=> d!585768 (= lt!736873 e!1229085)))

(declare-fun c!312484 () Bool)

(assert (=> d!585768 (= c!312484 (is-Nil!21893 lt!736598))))

(assert (=> d!585768 (= (++!5864 lt!736598 lt!736595) lt!736873)))

(assert (= (and d!585768 c!312484) b!1922676))

(assert (= (and d!585768 (not c!312484)) b!1922677))

(assert (= (and d!585768 res!859839) b!1922678))

(assert (= (and b!1922678 res!859840) b!1922679))

(declare-fun m!2357635 () Bool)

(assert (=> b!1922678 m!2357635))

(assert (=> b!1922678 m!2357103))

(assert (=> b!1922678 m!2357557))

(declare-fun m!2357637 () Bool)

(assert (=> b!1922677 m!2357637))

(declare-fun m!2357639 () Bool)

(assert (=> d!585768 m!2357639))

(assert (=> d!585768 m!2357297))

(assert (=> d!585768 m!2357563))

(assert (=> b!1921986 d!585768))

(declare-fun b!1922680 () Bool)

(declare-fun e!1229087 () List!21975)

(assert (=> b!1922680 (= e!1229087 lt!736585)))

(declare-fun e!1229086 () Bool)

(declare-fun lt!736874 () List!21975)

(declare-fun b!1922683 () Bool)

(assert (=> b!1922683 (= e!1229086 (or (not (= lt!736585 Nil!21893)) (= lt!736874 (++!5864 lt!736598 lt!736595))))))

(declare-fun b!1922682 () Bool)

(declare-fun res!859842 () Bool)

(assert (=> b!1922682 (=> (not res!859842) (not e!1229086))))

(assert (=> b!1922682 (= res!859842 (= (size!17083 lt!736874) (+ (size!17083 (++!5864 lt!736598 lt!736595)) (size!17083 lt!736585))))))

(declare-fun b!1922681 () Bool)

(assert (=> b!1922681 (= e!1229087 (Cons!21893 (h!27294 (++!5864 lt!736598 lt!736595)) (++!5864 (t!178918 (++!5864 lt!736598 lt!736595)) lt!736585)))))

(declare-fun d!585772 () Bool)

(assert (=> d!585772 e!1229086))

(declare-fun res!859841 () Bool)

(assert (=> d!585772 (=> (not res!859841) (not e!1229086))))

(assert (=> d!585772 (= res!859841 (= (content!3161 lt!736874) (set.union (content!3161 (++!5864 lt!736598 lt!736595)) (content!3161 lt!736585))))))

(assert (=> d!585772 (= lt!736874 e!1229087)))

(declare-fun c!312485 () Bool)

(assert (=> d!585772 (= c!312485 (is-Nil!21893 (++!5864 lt!736598 lt!736595)))))

(assert (=> d!585772 (= (++!5864 (++!5864 lt!736598 lt!736595) lt!736585) lt!736874)))

(assert (= (and d!585772 c!312485) b!1922680))

(assert (= (and d!585772 (not c!312485)) b!1922681))

(assert (= (and d!585772 res!859841) b!1922682))

(assert (= (and b!1922682 res!859842) b!1922683))

(declare-fun m!2357641 () Bool)

(assert (=> b!1922682 m!2357641))

(assert (=> b!1922682 m!2356765))

(declare-fun m!2357643 () Bool)

(assert (=> b!1922682 m!2357643))

(assert (=> b!1922682 m!2357291))

(declare-fun m!2357645 () Bool)

(assert (=> b!1922681 m!2357645))

(declare-fun m!2357647 () Bool)

(assert (=> d!585772 m!2357647))

(assert (=> d!585772 m!2356765))

(declare-fun m!2357649 () Bool)

(assert (=> d!585772 m!2357649))

(assert (=> d!585772 m!2357299))

(assert (=> b!1921986 d!585772))

(declare-fun d!585774 () Bool)

(declare-fun lt!736903 () BalanceConc!14424)

(declare-fun printListTailRec!446 (LexerInterface!3538 List!21976 List!21975) List!21975)

(declare-fun dropList!777 (BalanceConc!14426 Int) List!21976)

(assert (=> d!585774 (= (list!8846 lt!736903) (printListTailRec!446 thiss!23328 (dropList!777 lt!736592 0) (list!8846 (BalanceConc!14425 Empty!7304))))))

(declare-fun e!1229109 () BalanceConc!14424)

(assert (=> d!585774 (= lt!736903 e!1229109)))

(declare-fun c!312498 () Bool)

(assert (=> d!585774 (= c!312498 (>= 0 (size!17084 lt!736592)))))

(declare-fun e!1229110 () Bool)

(assert (=> d!585774 e!1229110))

(declare-fun res!859859 () Bool)

(assert (=> d!585774 (=> (not res!859859) (not e!1229110))))

(assert (=> d!585774 (= res!859859 (>= 0 0))))

(assert (=> d!585774 (= (printTailRec!1014 thiss!23328 lt!736592 0 (BalanceConc!14425 Empty!7304)) lt!736903)))

(declare-fun b!1922722 () Bool)

(assert (=> b!1922722 (= e!1229110 (<= 0 (size!17084 lt!736592)))))

(declare-fun b!1922723 () Bool)

(assert (=> b!1922723 (= e!1229109 (BalanceConc!14425 Empty!7304))))

(declare-fun b!1922724 () Bool)

(declare-fun ++!5866 (BalanceConc!14424 BalanceConc!14424) BalanceConc!14424)

(assert (=> b!1922724 (= e!1229109 (printTailRec!1014 thiss!23328 lt!736592 (+ 0 1) (++!5866 (BalanceConc!14425 Empty!7304) (charsOf!2465 (apply!5672 lt!736592 0)))))))

(declare-fun lt!736907 () List!21976)

(assert (=> b!1922724 (= lt!736907 (list!8848 lt!736592))))

(declare-fun lt!736905 () Unit!36213)

(declare-fun lemmaDropApply!701 (List!21976 Int) Unit!36213)

(assert (=> b!1922724 (= lt!736905 (lemmaDropApply!701 lt!736907 0))))

(declare-fun head!4481 (List!21976) Token!7402)

(declare-fun drop!1068 (List!21976 Int) List!21976)

(declare-fun apply!5675 (List!21976 Int) Token!7402)

(assert (=> b!1922724 (= (head!4481 (drop!1068 lt!736907 0)) (apply!5675 lt!736907 0))))

(declare-fun lt!736902 () Unit!36213)

(assert (=> b!1922724 (= lt!736902 lt!736905)))

(declare-fun lt!736906 () List!21976)

(assert (=> b!1922724 (= lt!736906 (list!8848 lt!736592))))

(declare-fun lt!736908 () Unit!36213)

(declare-fun lemmaDropTail!677 (List!21976 Int) Unit!36213)

(assert (=> b!1922724 (= lt!736908 (lemmaDropTail!677 lt!736906 0))))

(declare-fun tail!2968 (List!21976) List!21976)

(assert (=> b!1922724 (= (tail!2968 (drop!1068 lt!736906 0)) (drop!1068 lt!736906 (+ 0 1)))))

(declare-fun lt!736904 () Unit!36213)

(assert (=> b!1922724 (= lt!736904 lt!736908)))

(assert (= (and d!585774 res!859859) b!1922722))

(assert (= (and d!585774 c!312498) b!1922723))

(assert (= (and d!585774 (not c!312498)) b!1922724))

(declare-fun m!2357709 () Bool)

(assert (=> d!585774 m!2357709))

(declare-fun m!2357711 () Bool)

(assert (=> d!585774 m!2357711))

(declare-fun m!2357713 () Bool)

(assert (=> d!585774 m!2357713))

(declare-fun m!2357715 () Bool)

(assert (=> d!585774 m!2357715))

(assert (=> d!585774 m!2357713))

(declare-fun m!2357717 () Bool)

(assert (=> d!585774 m!2357717))

(assert (=> d!585774 m!2357711))

(assert (=> b!1922722 m!2357709))

(declare-fun m!2357719 () Bool)

(assert (=> b!1922724 m!2357719))

(declare-fun m!2357721 () Bool)

(assert (=> b!1922724 m!2357721))

(declare-fun m!2357723 () Bool)

(assert (=> b!1922724 m!2357723))

(declare-fun m!2357725 () Bool)

(assert (=> b!1922724 m!2357725))

(assert (=> b!1922724 m!2357719))

(declare-fun m!2357727 () Bool)

(assert (=> b!1922724 m!2357727))

(declare-fun m!2357729 () Bool)

(assert (=> b!1922724 m!2357729))

(declare-fun m!2357731 () Bool)

(assert (=> b!1922724 m!2357731))

(assert (=> b!1922724 m!2357509))

(declare-fun m!2357733 () Bool)

(assert (=> b!1922724 m!2357733))

(assert (=> b!1922724 m!2357727))

(declare-fun m!2357735 () Bool)

(assert (=> b!1922724 m!2357735))

(declare-fun m!2357737 () Bool)

(assert (=> b!1922724 m!2357737))

(declare-fun m!2357739 () Bool)

(assert (=> b!1922724 m!2357739))

(assert (=> b!1922724 m!2357737))

(assert (=> b!1922724 m!2357735))

(assert (=> b!1922724 m!2357729))

(declare-fun m!2357741 () Bool)

(assert (=> b!1922724 m!2357741))

(assert (=> b!1921986 d!585774))

(declare-fun d!585798 () Bool)

(declare-fun lt!736909 () Bool)

(assert (=> d!585798 (= lt!736909 (set.member lt!736596 (content!3161 (usedCharacters!377 (regex!3925 (rule!6128 (h!27295 tokens!598)))))))))

(declare-fun e!1229111 () Bool)

(assert (=> d!585798 (= lt!736909 e!1229111)))

(declare-fun res!859860 () Bool)

(assert (=> d!585798 (=> (not res!859860) (not e!1229111))))

(assert (=> d!585798 (= res!859860 (is-Cons!21893 (usedCharacters!377 (regex!3925 (rule!6128 (h!27295 tokens!598))))))))

(assert (=> d!585798 (= (contains!3946 (usedCharacters!377 (regex!3925 (rule!6128 (h!27295 tokens!598)))) lt!736596) lt!736909)))

(declare-fun b!1922725 () Bool)

(declare-fun e!1229112 () Bool)

(assert (=> b!1922725 (= e!1229111 e!1229112)))

(declare-fun res!859861 () Bool)

(assert (=> b!1922725 (=> res!859861 e!1229112)))

(assert (=> b!1922725 (= res!859861 (= (h!27294 (usedCharacters!377 (regex!3925 (rule!6128 (h!27295 tokens!598))))) lt!736596))))

(declare-fun b!1922726 () Bool)

(assert (=> b!1922726 (= e!1229112 (contains!3946 (t!178918 (usedCharacters!377 (regex!3925 (rule!6128 (h!27295 tokens!598))))) lt!736596))))

(assert (= (and d!585798 res!859860) b!1922725))

(assert (= (and b!1922725 (not res!859861)) b!1922726))

(assert (=> d!585798 m!2356771))

(declare-fun m!2357743 () Bool)

(assert (=> d!585798 m!2357743))

(declare-fun m!2357745 () Bool)

(assert (=> d!585798 m!2357745))

(declare-fun m!2357747 () Bool)

(assert (=> b!1922726 m!2357747))

(assert (=> b!1921986 d!585798))

(declare-fun b!1922727 () Bool)

(declare-fun e!1229113 () Bool)

(assert (=> b!1922727 (= e!1229113 (inv!15 (value!123455 separatorToken!354)))))

(declare-fun b!1922728 () Bool)

(declare-fun e!1229115 () Bool)

(assert (=> b!1922728 (= e!1229115 (inv!16 (value!123455 separatorToken!354)))))

(declare-fun b!1922729 () Bool)

(declare-fun e!1229114 () Bool)

(assert (=> b!1922729 (= e!1229115 e!1229114)))

(declare-fun c!312499 () Bool)

(assert (=> b!1922729 (= c!312499 (is-IntegerValue!12184 (value!123455 separatorToken!354)))))

(declare-fun d!585800 () Bool)

(declare-fun c!312500 () Bool)

(assert (=> d!585800 (= c!312500 (is-IntegerValue!12183 (value!123455 separatorToken!354)))))

(assert (=> d!585800 (= (inv!21 (value!123455 separatorToken!354)) e!1229115)))

(declare-fun b!1922730 () Bool)

(assert (=> b!1922730 (= e!1229114 (inv!17 (value!123455 separatorToken!354)))))

(declare-fun b!1922731 () Bool)

(declare-fun res!859862 () Bool)

(assert (=> b!1922731 (=> res!859862 e!1229113)))

(assert (=> b!1922731 (= res!859862 (not (is-IntegerValue!12185 (value!123455 separatorToken!354))))))

(assert (=> b!1922731 (= e!1229114 e!1229113)))

(assert (= (and d!585800 c!312500) b!1922728))

(assert (= (and d!585800 (not c!312500)) b!1922729))

(assert (= (and b!1922729 c!312499) b!1922730))

(assert (= (and b!1922729 (not c!312499)) b!1922731))

(assert (= (and b!1922731 (not res!859862)) b!1922727))

(declare-fun m!2357749 () Bool)

(assert (=> b!1922727 m!2357749))

(declare-fun m!2357751 () Bool)

(assert (=> b!1922728 m!2357751))

(declare-fun m!2357753 () Bool)

(assert (=> b!1922730 m!2357753))

(assert (=> b!1921988 d!585800))

(declare-fun d!585802 () Bool)

(assert (=> d!585802 (= (inv!28964 (tag!4365 (rule!6128 (h!27295 tokens!598)))) (= (mod (str.len (value!123454 (tag!4365 (rule!6128 (h!27295 tokens!598))))) 2) 0))))

(assert (=> b!1921977 d!585802))

(declare-fun d!585804 () Bool)

(declare-fun res!859863 () Bool)

(declare-fun e!1229116 () Bool)

(assert (=> d!585804 (=> (not res!859863) (not e!1229116))))

(assert (=> d!585804 (= res!859863 (semiInverseModEq!1558 (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598)))) (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598))))))))

(assert (=> d!585804 (= (inv!28967 (transformation!3925 (rule!6128 (h!27295 tokens!598)))) e!1229116)))

(declare-fun b!1922732 () Bool)

(assert (=> b!1922732 (= e!1229116 (equivClasses!1485 (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598)))) (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598))))))))

(assert (= (and d!585804 res!859863) b!1922732))

(declare-fun m!2357755 () Bool)

(assert (=> d!585804 m!2357755))

(declare-fun m!2357757 () Bool)

(assert (=> b!1922732 m!2357757))

(assert (=> b!1921977 d!585804))

(declare-fun d!585806 () Bool)

(assert (=> d!585806 (= (inv!28964 (tag!4365 (rule!6128 separatorToken!354))) (= (mod (str.len (value!123454 (tag!4365 (rule!6128 separatorToken!354)))) 2) 0))))

(assert (=> b!1921979 d!585806))

(declare-fun d!585808 () Bool)

(declare-fun res!859864 () Bool)

(declare-fun e!1229117 () Bool)

(assert (=> d!585808 (=> (not res!859864) (not e!1229117))))

(assert (=> d!585808 (= res!859864 (semiInverseModEq!1558 (toChars!5413 (transformation!3925 (rule!6128 separatorToken!354))) (toValue!5554 (transformation!3925 (rule!6128 separatorToken!354)))))))

(assert (=> d!585808 (= (inv!28967 (transformation!3925 (rule!6128 separatorToken!354))) e!1229117)))

(declare-fun b!1922733 () Bool)

(assert (=> b!1922733 (= e!1229117 (equivClasses!1485 (toChars!5413 (transformation!3925 (rule!6128 separatorToken!354))) (toValue!5554 (transformation!3925 (rule!6128 separatorToken!354)))))))

(assert (= (and d!585808 res!859864) b!1922733))

(declare-fun m!2357759 () Bool)

(assert (=> d!585808 m!2357759))

(declare-fun m!2357761 () Bool)

(assert (=> b!1922733 m!2357761))

(assert (=> b!1921979 d!585808))

(declare-fun d!585810 () Bool)

(declare-fun res!859869 () Bool)

(declare-fun e!1229122 () Bool)

(assert (=> d!585810 (=> res!859869 e!1229122)))

(assert (=> d!585810 (= res!859869 (not (is-Cons!21895 rules!3198)))))

(assert (=> d!585810 (= (sepAndNonSepRulesDisjointChars!1023 rules!3198 rules!3198) e!1229122)))

(declare-fun b!1922738 () Bool)

(declare-fun e!1229123 () Bool)

(assert (=> b!1922738 (= e!1229122 e!1229123)))

(declare-fun res!859870 () Bool)

(assert (=> b!1922738 (=> (not res!859870) (not e!1229123))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!443 (Rule!7650 List!21977) Bool)

(assert (=> b!1922738 (= res!859870 (ruleDisjointCharsFromAllFromOtherType!443 (h!27296 rules!3198) rules!3198))))

(declare-fun b!1922739 () Bool)

(assert (=> b!1922739 (= e!1229123 (sepAndNonSepRulesDisjointChars!1023 rules!3198 (t!178920 rules!3198)))))

(assert (= (and d!585810 (not res!859869)) b!1922738))

(assert (= (and b!1922738 res!859870) b!1922739))

(declare-fun m!2357763 () Bool)

(assert (=> b!1922738 m!2357763))

(declare-fun m!2357765 () Bool)

(assert (=> b!1922739 m!2357765))

(assert (=> b!1921978 d!585810))

(declare-fun d!585812 () Bool)

(declare-fun res!859873 () Bool)

(declare-fun e!1229126 () Bool)

(assert (=> d!585812 (=> (not res!859873) (not e!1229126))))

(declare-fun rulesValid!1445 (LexerInterface!3538 List!21977) Bool)

(assert (=> d!585812 (= res!859873 (rulesValid!1445 thiss!23328 rules!3198))))

(assert (=> d!585812 (= (rulesInvariant!3145 thiss!23328 rules!3198) e!1229126)))

(declare-fun b!1922742 () Bool)

(declare-datatypes ((List!21982 0))(
  ( (Nil!21900) (Cons!21900 (h!27301 String!25425) (t!179037 List!21982)) )
))
(declare-fun noDuplicateTag!1443 (LexerInterface!3538 List!21977 List!21982) Bool)

(assert (=> b!1922742 (= e!1229126 (noDuplicateTag!1443 thiss!23328 rules!3198 Nil!21900))))

(assert (= (and d!585812 res!859873) b!1922742))

(declare-fun m!2357767 () Bool)

(assert (=> d!585812 m!2357767))

(declare-fun m!2357769 () Bool)

(assert (=> b!1922742 m!2357769))

(assert (=> b!1921991 d!585812))

(declare-fun d!585814 () Bool)

(declare-fun res!859874 () Bool)

(declare-fun e!1229127 () Bool)

(assert (=> d!585814 (=> (not res!859874) (not e!1229127))))

(assert (=> d!585814 (= res!859874 (not (isEmpty!13469 (originalCharacters!4732 (h!27295 tokens!598)))))))

(assert (=> d!585814 (= (inv!28968 (h!27295 tokens!598)) e!1229127)))

(declare-fun b!1922743 () Bool)

(declare-fun res!859875 () Bool)

(assert (=> b!1922743 (=> (not res!859875) (not e!1229127))))

(assert (=> b!1922743 (= res!859875 (= (originalCharacters!4732 (h!27295 tokens!598)) (list!8846 (dynLambda!10566 (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598)))) (value!123455 (h!27295 tokens!598))))))))

(declare-fun b!1922744 () Bool)

(assert (=> b!1922744 (= e!1229127 (= (size!17081 (h!27295 tokens!598)) (size!17083 (originalCharacters!4732 (h!27295 tokens!598)))))))

(assert (= (and d!585814 res!859874) b!1922743))

(assert (= (and b!1922743 res!859875) b!1922744))

(declare-fun b_lambda!63529 () Bool)

(assert (=> (not b_lambda!63529) (not b!1922743)))

(assert (=> b!1922743 t!178961))

(declare-fun b_and!150437 () Bool)

(assert (= b_and!150389 (and (=> t!178961 result!141920) b_and!150437)))

(assert (=> b!1922743 t!178963))

(declare-fun b_and!150439 () Bool)

(assert (= b_and!150391 (and (=> t!178963 result!141922) b_and!150439)))

(assert (=> b!1922743 t!178965))

(declare-fun b_and!150441 () Bool)

(assert (= b_and!150393 (and (=> t!178965 result!141924) b_and!150441)))

(declare-fun m!2357771 () Bool)

(assert (=> d!585814 m!2357771))

(assert (=> b!1922743 m!2357307))

(assert (=> b!1922743 m!2357307))

(declare-fun m!2357773 () Bool)

(assert (=> b!1922743 m!2357773))

(declare-fun m!2357775 () Bool)

(assert (=> b!1922744 m!2357775))

(assert (=> b!1921990 d!585814))

(declare-fun b!1922749 () Bool)

(declare-fun e!1229130 () Bool)

(declare-fun tp_is_empty!9123 () Bool)

(declare-fun tp!549553 () Bool)

(assert (=> b!1922749 (= e!1229130 (and tp_is_empty!9123 tp!549553))))

(assert (=> b!1921984 (= tp!549494 e!1229130)))

(assert (= (and b!1921984 (is-Cons!21893 (originalCharacters!4732 (h!27295 tokens!598)))) b!1922749))

(declare-fun b!1922763 () Bool)

(declare-fun e!1229133 () Bool)

(declare-fun tp!549565 () Bool)

(declare-fun tp!549564 () Bool)

(assert (=> b!1922763 (= e!1229133 (and tp!549565 tp!549564))))

(declare-fun b!1922762 () Bool)

(declare-fun tp!549567 () Bool)

(assert (=> b!1922762 (= e!1229133 tp!549567)))

(declare-fun b!1922760 () Bool)

(assert (=> b!1922760 (= e!1229133 tp_is_empty!9123)))

(assert (=> b!1921994 (= tp!549496 e!1229133)))

(declare-fun b!1922761 () Bool)

(declare-fun tp!549568 () Bool)

(declare-fun tp!549566 () Bool)

(assert (=> b!1922761 (= e!1229133 (and tp!549568 tp!549566))))

(assert (= (and b!1921994 (is-ElementMatch!5350 (regex!3925 (h!27296 rules!3198)))) b!1922760))

(assert (= (and b!1921994 (is-Concat!9412 (regex!3925 (h!27296 rules!3198)))) b!1922761))

(assert (= (and b!1921994 (is-Star!5350 (regex!3925 (h!27296 rules!3198)))) b!1922762))

(assert (= (and b!1921994 (is-Union!5350 (regex!3925 (h!27296 rules!3198)))) b!1922763))

(declare-fun b!1922764 () Bool)

(declare-fun e!1229134 () Bool)

(declare-fun tp!549569 () Bool)

(assert (=> b!1922764 (= e!1229134 (and tp_is_empty!9123 tp!549569))))

(assert (=> b!1921988 (= tp!549495 e!1229134)))

(assert (= (and b!1921988 (is-Cons!21893 (originalCharacters!4732 separatorToken!354))) b!1922764))

(declare-fun b!1922768 () Bool)

(declare-fun e!1229135 () Bool)

(declare-fun tp!549571 () Bool)

(declare-fun tp!549570 () Bool)

(assert (=> b!1922768 (= e!1229135 (and tp!549571 tp!549570))))

(declare-fun b!1922767 () Bool)

(declare-fun tp!549573 () Bool)

(assert (=> b!1922767 (= e!1229135 tp!549573)))

(declare-fun b!1922765 () Bool)

(assert (=> b!1922765 (= e!1229135 tp_is_empty!9123)))

(assert (=> b!1921977 (= tp!549498 e!1229135)))

(declare-fun b!1922766 () Bool)

(declare-fun tp!549574 () Bool)

(declare-fun tp!549572 () Bool)

(assert (=> b!1922766 (= e!1229135 (and tp!549574 tp!549572))))

(assert (= (and b!1921977 (is-ElementMatch!5350 (regex!3925 (rule!6128 (h!27295 tokens!598))))) b!1922765))

(assert (= (and b!1921977 (is-Concat!9412 (regex!3925 (rule!6128 (h!27295 tokens!598))))) b!1922766))

(assert (= (and b!1921977 (is-Star!5350 (regex!3925 (rule!6128 (h!27295 tokens!598))))) b!1922767))

(assert (= (and b!1921977 (is-Union!5350 (regex!3925 (rule!6128 (h!27295 tokens!598))))) b!1922768))

(declare-fun b!1922772 () Bool)

(declare-fun e!1229136 () Bool)

(declare-fun tp!549576 () Bool)

(declare-fun tp!549575 () Bool)

(assert (=> b!1922772 (= e!1229136 (and tp!549576 tp!549575))))

(declare-fun b!1922771 () Bool)

(declare-fun tp!549578 () Bool)

(assert (=> b!1922771 (= e!1229136 tp!549578)))

(declare-fun b!1922769 () Bool)

(assert (=> b!1922769 (= e!1229136 tp_is_empty!9123)))

(assert (=> b!1921979 (= tp!549500 e!1229136)))

(declare-fun b!1922770 () Bool)

(declare-fun tp!549579 () Bool)

(declare-fun tp!549577 () Bool)

(assert (=> b!1922770 (= e!1229136 (and tp!549579 tp!549577))))

(assert (= (and b!1921979 (is-ElementMatch!5350 (regex!3925 (rule!6128 separatorToken!354)))) b!1922769))

(assert (= (and b!1921979 (is-Concat!9412 (regex!3925 (rule!6128 separatorToken!354)))) b!1922770))

(assert (= (and b!1921979 (is-Star!5350 (regex!3925 (rule!6128 separatorToken!354)))) b!1922771))

(assert (= (and b!1921979 (is-Union!5350 (regex!3925 (rule!6128 separatorToken!354)))) b!1922772))

(declare-fun b!1922783 () Bool)

(declare-fun b_free!55069 () Bool)

(declare-fun b_next!55773 () Bool)

(assert (=> b!1922783 (= b_free!55069 (not b_next!55773))))

(declare-fun t!178995 () Bool)

(declare-fun tb!117453 () Bool)

(assert (=> (and b!1922783 (= (toValue!5554 (transformation!3925 (h!27296 (t!178920 rules!3198)))) (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598))))) t!178995) tb!117453))

(declare-fun result!141958 () Bool)

(assert (= result!141958 result!141906))

(assert (=> d!585660 t!178995))

(assert (=> d!585674 t!178995))

(declare-fun t!178997 () Bool)

(declare-fun tb!117455 () Bool)

(assert (=> (and b!1922783 (= (toValue!5554 (transformation!3925 (h!27296 (t!178920 rules!3198)))) (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598))))) t!178997) tb!117455))

(declare-fun result!141960 () Bool)

(assert (= result!141960 result!141914))

(assert (=> d!585674 t!178997))

(declare-fun b_and!150443 () Bool)

(declare-fun tp!549591 () Bool)

(assert (=> b!1922783 (= tp!549591 (and (=> t!178995 result!141958) (=> t!178997 result!141960) b_and!150443))))

(declare-fun b_free!55071 () Bool)

(declare-fun b_next!55775 () Bool)

(assert (=> b!1922783 (= b_free!55071 (not b_next!55775))))

(declare-fun tb!117457 () Bool)

(declare-fun t!178999 () Bool)

(assert (=> (and b!1922783 (= (toChars!5413 (transformation!3925 (h!27296 (t!178920 rules!3198)))) (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598))))) t!178999) tb!117457))

(declare-fun result!141962 () Bool)

(assert (= result!141962 result!141920))

(assert (=> b!1922743 t!178999))

(declare-fun tb!117459 () Bool)

(declare-fun t!179001 () Bool)

(assert (=> (and b!1922783 (= (toChars!5413 (transformation!3925 (h!27296 (t!178920 rules!3198)))) (toChars!5413 (transformation!3925 (rule!6128 separatorToken!354)))) t!179001) tb!117459))

(declare-fun result!141964 () Bool)

(assert (= result!141964 result!141884))

(assert (=> d!585666 t!179001))

(assert (=> b!1922141 t!179001))

(declare-fun t!179003 () Bool)

(declare-fun tb!117461 () Bool)

(assert (=> (and b!1922783 (= (toChars!5413 (transformation!3925 (h!27296 (t!178920 rules!3198)))) (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598))))) t!179003) tb!117461))

(declare-fun result!141966 () Bool)

(assert (= result!141966 result!141900))

(assert (=> d!585660 t!179003))

(assert (=> d!585682 t!178999))

(declare-fun b_and!150445 () Bool)

(declare-fun tp!549588 () Bool)

(assert (=> b!1922783 (= tp!549588 (and (=> t!178999 result!141962) (=> t!179003 result!141966) (=> t!179001 result!141964) b_and!150445))))

(declare-fun e!1229148 () Bool)

(assert (=> b!1922783 (= e!1229148 (and tp!549591 tp!549588))))

(declare-fun b!1922782 () Bool)

(declare-fun e!1229147 () Bool)

(declare-fun tp!549589 () Bool)

(assert (=> b!1922782 (= e!1229147 (and tp!549589 (inv!28964 (tag!4365 (h!27296 (t!178920 rules!3198)))) (inv!28967 (transformation!3925 (h!27296 (t!178920 rules!3198)))) e!1229148))))

(declare-fun b!1922781 () Bool)

(declare-fun e!1229146 () Bool)

(declare-fun tp!549590 () Bool)

(assert (=> b!1922781 (= e!1229146 (and e!1229147 tp!549590))))

(assert (=> b!1921980 (= tp!549497 e!1229146)))

(assert (= b!1922782 b!1922783))

(assert (= b!1922781 b!1922782))

(assert (= (and b!1921980 (is-Cons!21895 (t!178920 rules!3198))) b!1922781))

(declare-fun m!2357777 () Bool)

(assert (=> b!1922782 m!2357777))

(declare-fun m!2357779 () Bool)

(assert (=> b!1922782 m!2357779))

(declare-fun b!1922797 () Bool)

(declare-fun b_free!55073 () Bool)

(declare-fun b_next!55777 () Bool)

(assert (=> b!1922797 (= b_free!55073 (not b_next!55777))))

(declare-fun t!179005 () Bool)

(declare-fun tb!117463 () Bool)

(assert (=> (and b!1922797 (= (toValue!5554 (transformation!3925 (rule!6128 (h!27295 (t!178919 tokens!598))))) (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598))))) t!179005) tb!117463))

(declare-fun result!141970 () Bool)

(assert (= result!141970 result!141906))

(assert (=> d!585660 t!179005))

(assert (=> d!585674 t!179005))

(declare-fun t!179007 () Bool)

(declare-fun tb!117465 () Bool)

(assert (=> (and b!1922797 (= (toValue!5554 (transformation!3925 (rule!6128 (h!27295 (t!178919 tokens!598))))) (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598))))) t!179007) tb!117465))

(declare-fun result!141972 () Bool)

(assert (= result!141972 result!141914))

(assert (=> d!585674 t!179007))

(declare-fun b_and!150447 () Bool)

(declare-fun tp!549603 () Bool)

(assert (=> b!1922797 (= tp!549603 (and (=> t!179005 result!141970) (=> t!179007 result!141972) b_and!150447))))

(declare-fun b_free!55075 () Bool)

(declare-fun b_next!55779 () Bool)

(assert (=> b!1922797 (= b_free!55075 (not b_next!55779))))

(declare-fun t!179009 () Bool)

(declare-fun tb!117467 () Bool)

(assert (=> (and b!1922797 (= (toChars!5413 (transformation!3925 (rule!6128 (h!27295 (t!178919 tokens!598))))) (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598))))) t!179009) tb!117467))

(declare-fun result!141974 () Bool)

(assert (= result!141974 result!141920))

(assert (=> b!1922743 t!179009))

(declare-fun t!179011 () Bool)

(declare-fun tb!117469 () Bool)

(assert (=> (and b!1922797 (= (toChars!5413 (transformation!3925 (rule!6128 (h!27295 (t!178919 tokens!598))))) (toChars!5413 (transformation!3925 (rule!6128 separatorToken!354)))) t!179011) tb!117469))

(declare-fun result!141976 () Bool)

(assert (= result!141976 result!141884))

(assert (=> d!585666 t!179011))

(assert (=> b!1922141 t!179011))

(declare-fun t!179013 () Bool)

(declare-fun tb!117471 () Bool)

(assert (=> (and b!1922797 (= (toChars!5413 (transformation!3925 (rule!6128 (h!27295 (t!178919 tokens!598))))) (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598))))) t!179013) tb!117471))

(declare-fun result!141978 () Bool)

(assert (= result!141978 result!141900))

(assert (=> d!585660 t!179013))

(assert (=> d!585682 t!179009))

(declare-fun tp!549604 () Bool)

(declare-fun b_and!150449 () Bool)

(assert (=> b!1922797 (= tp!549604 (and (=> t!179009 result!141974) (=> t!179011 result!141976) (=> t!179013 result!141978) b_and!150449))))

(declare-fun b!1922794 () Bool)

(declare-fun e!1229163 () Bool)

(declare-fun e!1229162 () Bool)

(declare-fun tp!549606 () Bool)

(assert (=> b!1922794 (= e!1229162 (and (inv!28968 (h!27295 (t!178919 tokens!598))) e!1229163 tp!549606))))

(declare-fun e!1229166 () Bool)

(declare-fun tp!549602 () Bool)

(declare-fun b!1922795 () Bool)

(assert (=> b!1922795 (= e!1229163 (and (inv!21 (value!123455 (h!27295 (t!178919 tokens!598)))) e!1229166 tp!549602))))

(assert (=> b!1921990 (= tp!549489 e!1229162)))

(declare-fun e!1229161 () Bool)

(assert (=> b!1922797 (= e!1229161 (and tp!549603 tp!549604))))

(declare-fun tp!549605 () Bool)

(declare-fun b!1922796 () Bool)

(assert (=> b!1922796 (= e!1229166 (and tp!549605 (inv!28964 (tag!4365 (rule!6128 (h!27295 (t!178919 tokens!598))))) (inv!28967 (transformation!3925 (rule!6128 (h!27295 (t!178919 tokens!598))))) e!1229161))))

(assert (= b!1922796 b!1922797))

(assert (= b!1922795 b!1922796))

(assert (= b!1922794 b!1922795))

(assert (= (and b!1921990 (is-Cons!21894 (t!178919 tokens!598))) b!1922794))

(declare-fun m!2357781 () Bool)

(assert (=> b!1922794 m!2357781))

(declare-fun m!2357783 () Bool)

(assert (=> b!1922795 m!2357783))

(declare-fun m!2357785 () Bool)

(assert (=> b!1922796 m!2357785))

(declare-fun m!2357787 () Bool)

(assert (=> b!1922796 m!2357787))

(declare-fun b_lambda!63531 () Bool)

(assert (= b_lambda!63507 (or (and b!1921973 b_free!55053 (= (toValue!5554 (transformation!3925 (rule!6128 separatorToken!354))) (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598)))))) (and b!1921989 b_free!55045 (= (toValue!5554 (transformation!3925 (h!27296 rules!3198))) (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598)))))) (and b!1922797 b_free!55073 (= (toValue!5554 (transformation!3925 (rule!6128 (h!27295 (t!178919 tokens!598))))) (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598)))))) (and b!1922783 b_free!55069 (= (toValue!5554 (transformation!3925 (h!27296 (t!178920 rules!3198)))) (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598)))))) (and b!1921993 b_free!55049) b_lambda!63531)))

(declare-fun b_lambda!63533 () Bool)

(assert (= b_lambda!63509 (or (and b!1921973 b_free!55053 (= (toValue!5554 (transformation!3925 (rule!6128 separatorToken!354))) (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598)))))) (and b!1921989 b_free!55045 (= (toValue!5554 (transformation!3925 (h!27296 rules!3198))) (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598)))))) (and b!1922797 b_free!55073 (= (toValue!5554 (transformation!3925 (rule!6128 (h!27295 (t!178919 tokens!598))))) (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598)))))) (and b!1922783 b_free!55069 (= (toValue!5554 (transformation!3925 (h!27296 (t!178920 rules!3198)))) (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598)))))) (and b!1921993 b_free!55049) b_lambda!63533)))

(declare-fun b_lambda!63535 () Bool)

(assert (= b_lambda!63497 (or (and b!1922797 b_free!55075 (= (toChars!5413 (transformation!3925 (rule!6128 (h!27295 (t!178919 tokens!598))))) (toChars!5413 (transformation!3925 (rule!6128 separatorToken!354))))) (and b!1921993 b_free!55051 (= (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598)))) (toChars!5413 (transformation!3925 (rule!6128 separatorToken!354))))) (and b!1922783 b_free!55071 (= (toChars!5413 (transformation!3925 (h!27296 (t!178920 rules!3198)))) (toChars!5413 (transformation!3925 (rule!6128 separatorToken!354))))) (and b!1921989 b_free!55047 (= (toChars!5413 (transformation!3925 (h!27296 rules!3198))) (toChars!5413 (transformation!3925 (rule!6128 separatorToken!354))))) (and b!1921973 b_free!55055) b_lambda!63535)))

(declare-fun b_lambda!63537 () Bool)

(assert (= b_lambda!63501 (or (and b!1921993 b_free!55051) (and b!1922797 b_free!55075 (= (toChars!5413 (transformation!3925 (rule!6128 (h!27295 (t!178919 tokens!598))))) (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598)))))) (and b!1921989 b_free!55047 (= (toChars!5413 (transformation!3925 (h!27296 rules!3198))) (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598)))))) (and b!1921973 b_free!55055 (= (toChars!5413 (transformation!3925 (rule!6128 separatorToken!354))) (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598)))))) (and b!1922783 b_free!55071 (= (toChars!5413 (transformation!3925 (h!27296 (t!178920 rules!3198)))) (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598)))))) b_lambda!63537)))

(declare-fun b_lambda!63539 () Bool)

(assert (= b_lambda!63505 (or (and b!1922797 b_free!55075 (= (toChars!5413 (transformation!3925 (rule!6128 (h!27295 (t!178919 tokens!598))))) (toChars!5413 (transformation!3925 (rule!6128 separatorToken!354))))) (and b!1921993 b_free!55051 (= (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598)))) (toChars!5413 (transformation!3925 (rule!6128 separatorToken!354))))) (and b!1922783 b_free!55071 (= (toChars!5413 (transformation!3925 (h!27296 (t!178920 rules!3198)))) (toChars!5413 (transformation!3925 (rule!6128 separatorToken!354))))) (and b!1921989 b_free!55047 (= (toChars!5413 (transformation!3925 (h!27296 rules!3198))) (toChars!5413 (transformation!3925 (rule!6128 separatorToken!354))))) (and b!1921973 b_free!55055) b_lambda!63539)))

(declare-fun b_lambda!63541 () Bool)

(assert (= b_lambda!63527 (or b!1921987 b_lambda!63541)))

(declare-fun bs!414421 () Bool)

(declare-fun d!585816 () Bool)

(assert (= bs!414421 (and d!585816 b!1921987)))

(assert (=> bs!414421 (= (dynLambda!10577 lambda!75038 (h!27295 tokens!598)) (not (isSeparator!3925 (rule!6128 (h!27295 tokens!598)))))))

(assert (=> b!1922569 d!585816))

(declare-fun b_lambda!63543 () Bool)

(assert (= b_lambda!63503 (or (and b!1921973 b_free!55053 (= (toValue!5554 (transformation!3925 (rule!6128 separatorToken!354))) (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598)))))) (and b!1921989 b_free!55045 (= (toValue!5554 (transformation!3925 (h!27296 rules!3198))) (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598)))))) (and b!1922797 b_free!55073 (= (toValue!5554 (transformation!3925 (rule!6128 (h!27295 (t!178919 tokens!598))))) (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598)))))) (and b!1922783 b_free!55069 (= (toValue!5554 (transformation!3925 (h!27296 (t!178920 rules!3198)))) (toValue!5554 (transformation!3925 (rule!6128 (h!27295 tokens!598)))))) (and b!1921993 b_free!55049) b_lambda!63543)))

(declare-fun b_lambda!63545 () Bool)

(assert (= b_lambda!63511 (or (and b!1921993 b_free!55051) (and b!1922797 b_free!55075 (= (toChars!5413 (transformation!3925 (rule!6128 (h!27295 (t!178919 tokens!598))))) (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598)))))) (and b!1921989 b_free!55047 (= (toChars!5413 (transformation!3925 (h!27296 rules!3198))) (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598)))))) (and b!1921973 b_free!55055 (= (toChars!5413 (transformation!3925 (rule!6128 separatorToken!354))) (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598)))))) (and b!1922783 b_free!55071 (= (toChars!5413 (transformation!3925 (h!27296 (t!178920 rules!3198)))) (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598)))))) b_lambda!63545)))

(declare-fun b_lambda!63547 () Bool)

(assert (= b_lambda!63529 (or (and b!1921993 b_free!55051) (and b!1922797 b_free!55075 (= (toChars!5413 (transformation!3925 (rule!6128 (h!27295 (t!178919 tokens!598))))) (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598)))))) (and b!1921989 b_free!55047 (= (toChars!5413 (transformation!3925 (h!27296 rules!3198))) (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598)))))) (and b!1921973 b_free!55055 (= (toChars!5413 (transformation!3925 (rule!6128 separatorToken!354))) (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598)))))) (and b!1922783 b_free!55071 (= (toChars!5413 (transformation!3925 (h!27296 (t!178920 rules!3198)))) (toChars!5413 (transformation!3925 (rule!6128 (h!27295 tokens!598)))))) b_lambda!63547)))

(push 1)

(assert (not d!585736))

(assert (not d!585658))

(assert (not b!1922166))

(assert (not tb!117411))

(assert (not d!585754))

(assert (not d!585812))

(assert (not bm!118138))

(assert (not b!1922348))

(assert (not b_lambda!63537))

(assert (not b!1922749))

(assert (not bm!118073))

(assert (not b!1922375))

(assert b_and!150445)

(assert (not b!1922739))

(assert (not bm!118070))

(assert (not b!1922114))

(assert (not b_lambda!63543))

(assert (not b!1922664))

(assert (not bm!118121))

(assert (not d!585772))

(assert (not b!1922111))

(assert (not b!1922744))

(assert (not d!585768))

(assert (not d!585676))

(assert (not b_next!55777))

(assert (not b!1922639))

(assert (not b!1922770))

(assert (not b!1922396))

(assert (not b!1922761))

(assert (not b!1922224))

(assert (not b_lambda!63533))

(assert (not d!585652))

(assert (not b!1922795))

(assert (not d!585660))

(assert (not tb!117393))

(assert (not b!1922159))

(assert (not b!1922678))

(assert (not b_next!55775))

(assert (not b!1922168))

(assert (not b!1922262))

(assert (not b_lambda!63541))

(assert (not b!1922352))

(assert (not d!585674))

(assert (not b!1922179))

(assert b_and!150387)

(assert (not b_lambda!63531))

(assert (not b!1922733))

(assert (not b_next!55759))

(assert (not d!585680))

(assert (not b!1922238))

(assert (not d!585764))

(assert (not bm!118122))

(assert (not b!1922351))

(assert (not d!585622))

(assert (not b!1922349))

(assert (not b!1922261))

(assert (not b!1922315))

(assert (not bm!118069))

(assert b_and!150383)

(assert (not b!1922132))

(assert (not b!1922763))

(assert (not b!1922350))

(assert (not d!585642))

(assert (not b!1922767))

(assert (not d!585672))

(assert (not tb!117423))

(assert (not b!1922142))

(assert (not b!1922372))

(assert (not b_next!55753))

(assert (not b!1922724))

(assert (not b!1922681))

(assert (not b!1922172))

(assert (not b!1922141))

(assert (not b!1922331))

(assert (not b!1922266))

(assert (not b!1922366))

(assert (not d!585744))

(assert (not b!1922125))

(assert (not b!1922344))

(assert b_and!150437)

(assert b_and!150385)

(assert (not b!1922147))

(assert (not b!1922561))

(assert (not d!585666))

(assert (not d!585746))

(assert (not b!1922118))

(assert (not d!585664))

(assert b_and!150441)

(assert (not b!1922738))

(assert (not b!1922742))

(assert (not b!1922682))

(assert (not b!1922258))

(assert (not b!1922609))

(assert (not d!585670))

(assert (not b!1922677))

(assert (not b!1922116))

(assert (not d!585740))

(assert b_and!150447)

(assert (not b!1922663))

(assert (not b!1922782))

(assert (not b!1922727))

(assert (not d!585756))

(assert (not b_next!55749))

(assert (not b!1922223))

(assert (not b_next!55751))

(assert (not b!1922606))

(assert (not b!1922394))

(assert (not b!1922657))

(assert (not b!1922267))

(assert (not bm!118088))

(assert (not b!1922129))

(assert (not d!585682))

(assert b_and!150443)

(assert (not b_next!55757))

(assert (not d!585684))

(assert (not d!585618))

(assert (not b!1922320))

(assert (not b!1922722))

(assert (not b!1922263))

(assert (not b_lambda!63535))

(assert (not b!1922161))

(assert (not b!1922764))

(assert (not b_next!55755))

(assert (not d!585612))

(assert (not bm!118090))

(assert (not b!1922321))

(assert (not b!1922257))

(assert (not b!1922608))

(assert (not b!1922158))

(assert (not b!1922264))

(assert (not b!1922794))

(assert (not b!1922762))

(assert (not d!585668))

(assert (not d!585774))

(assert (not b!1922265))

(assert (not b!1922365))

(assert (not b!1922260))

(assert (not b!1922112))

(assert (not b!1922732))

(assert (not tb!117417))

(assert (not b_next!55773))

(assert (not d!585814))

(assert (not b!1922570))

(assert (not b!1922341))

(assert (not b!1922728))

(assert (not b!1922347))

(assert b_and!150439)

(assert b_and!150449)

(assert (not b!1922743))

(assert (not b!1922562))

(assert (not bm!118087))

(assert (not d!585804))

(assert (not d!585608))

(assert (not b!1922169))

(assert (not b!1922237))

(assert (not b!1922781))

(assert (not b!1922393))

(assert (not b!1922726))

(assert (not b!1922768))

(assert (not b!1922730))

(assert (not b_lambda!63545))

(assert (not b!1922322))

(assert tp_is_empty!9123)

(assert (not d!585798))

(assert (not b!1922345))

(assert (not b!1922771))

(assert (not d!585650))

(assert (not b!1922126))

(assert (not b!1922222))

(assert (not b!1922165))

(assert (not bm!118124))

(assert (not d!585628))

(assert (not d!585752))

(assert (not b!1922115))

(assert (not b_lambda!63539))

(assert (not d!585610))

(assert (not b!1922369))

(assert (not d!585686))

(assert (not d!585808))

(assert (not bm!118140))

(assert (not d!585662))

(assert (not b_next!55779))

(assert (not b!1922766))

(assert (not b!1922371))

(assert (not b!1922772))

(assert (not b!1922170))

(assert (not b!1922796))

(assert (not d!585678))

(assert (not bm!118137))

(assert (not bm!118092))

(assert (not tb!117405))

(assert (not b!1922560))

(assert (not bm!118068))

(assert (not b!1922130))

(assert (not d!585630))

(assert (not b_lambda!63547))

(assert (not b!1922128))

(check-sat)

(pop 1)

(push 1)

(assert b_and!150445)

(assert (not b_next!55777))

(assert (not b_next!55759))

(assert b_and!150383)

(assert (not b_next!55753))

(assert b_and!150441)

(assert b_and!150447)

(assert (not b_next!55749))

(assert (not b_next!55751))

(assert (not b_next!55755))

(assert (not b_next!55773))

(assert (not b_next!55779))

(assert (not b_next!55775))

(assert b_and!150387)

(assert b_and!150437)

(assert b_and!150385)

(assert b_and!150443)

(assert (not b_next!55757))

(assert b_and!150439)

(assert b_and!150449)

(check-sat)

(pop 1)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!335338 () Bool)

(assert start!335338)

(declare-fun b!3604459 () Bool)

(declare-fun b_free!93353 () Bool)

(declare-fun b_next!94057 () Bool)

(assert (=> b!3604459 (= b_free!93353 (not b_next!94057))))

(declare-fun tp!1102262 () Bool)

(declare-fun b_and!262251 () Bool)

(assert (=> b!3604459 (= tp!1102262 b_and!262251)))

(declare-fun b_free!93355 () Bool)

(declare-fun b_next!94059 () Bool)

(assert (=> b!3604459 (= b_free!93355 (not b_next!94059))))

(declare-fun tp!1102259 () Bool)

(declare-fun b_and!262253 () Bool)

(assert (=> b!3604459 (= tp!1102259 b_and!262253)))

(declare-fun b!3604458 () Bool)

(declare-fun b_free!93357 () Bool)

(declare-fun b_next!94061 () Bool)

(assert (=> b!3604458 (= b_free!93357 (not b_next!94061))))

(declare-fun tp!1102269 () Bool)

(declare-fun b_and!262255 () Bool)

(assert (=> b!3604458 (= tp!1102269 b_and!262255)))

(declare-fun b_free!93359 () Bool)

(declare-fun b_next!94063 () Bool)

(assert (=> b!3604458 (= b_free!93359 (not b_next!94063))))

(declare-fun tp!1102260 () Bool)

(declare-fun b_and!262257 () Bool)

(assert (=> b!3604458 (= tp!1102260 b_and!262257)))

(declare-fun b!3604484 () Bool)

(declare-fun b_free!93361 () Bool)

(declare-fun b_next!94065 () Bool)

(assert (=> b!3604484 (= b_free!93361 (not b_next!94065))))

(declare-fun tp!1102261 () Bool)

(declare-fun b_and!262259 () Bool)

(assert (=> b!3604484 (= tp!1102261 b_and!262259)))

(declare-fun b_free!93363 () Bool)

(declare-fun b_next!94067 () Bool)

(assert (=> b!3604484 (= b_free!93363 (not b_next!94067))))

(declare-fun tp!1102268 () Bool)

(declare-fun b_and!262261 () Bool)

(assert (=> b!3604484 (= tp!1102268 b_and!262261)))

(declare-fun b!3604472 () Bool)

(declare-fun b_free!93365 () Bool)

(declare-fun b_next!94069 () Bool)

(assert (=> b!3604472 (= b_free!93365 (not b_next!94069))))

(declare-fun tp!1102265 () Bool)

(declare-fun b_and!262263 () Bool)

(assert (=> b!3604472 (= tp!1102265 b_and!262263)))

(declare-fun b_free!93367 () Bool)

(declare-fun b_next!94071 () Bool)

(assert (=> b!3604472 (= b_free!93367 (not b_next!94071))))

(declare-fun tp!1102267 () Bool)

(declare-fun b_and!262265 () Bool)

(assert (=> b!3604472 (= tp!1102267 b_and!262265)))

(declare-fun b!3604454 () Bool)

(declare-fun e!2230536 () Bool)

(declare-fun e!2230526 () Bool)

(assert (=> b!3604454 (= e!2230536 e!2230526)))

(declare-fun res!1457197 () Bool)

(assert (=> b!3604454 (=> (not res!1457197) (not e!2230526))))

(declare-datatypes ((List!38041 0))(
  ( (Nil!37917) (Cons!37917 (h!43337 (_ BitVec 16)) (t!292732 List!38041)) )
))
(declare-datatypes ((TokenValue!5846 0))(
  ( (FloatLiteralValue!11692 (text!41367 List!38041)) (TokenValueExt!5845 (__x!23909 Int)) (Broken!29230 (value!180490 List!38041)) (Object!5969) (End!5846) (Def!5846) (Underscore!5846) (Match!5846) (Else!5846) (Error!5846) (Case!5846) (If!5846) (Extends!5846) (Abstract!5846) (Class!5846) (Val!5846) (DelimiterValue!11692 (del!5906 List!38041)) (KeywordValue!5852 (value!180491 List!38041)) (CommentValue!11692 (value!180492 List!38041)) (WhitespaceValue!11692 (value!180493 List!38041)) (IndentationValue!5846 (value!180494 List!38041)) (String!42563) (Int32!5846) (Broken!29231 (value!180495 List!38041)) (Boolean!5847) (Unit!53981) (OperatorValue!5849 (op!5906 List!38041)) (IdentifierValue!11692 (value!180496 List!38041)) (IdentifierValue!11693 (value!180497 List!38041)) (WhitespaceValue!11693 (value!180498 List!38041)) (True!11692) (False!11692) (Broken!29232 (value!180499 List!38041)) (Broken!29233 (value!180500 List!38041)) (True!11693) (RightBrace!5846) (RightBracket!5846) (Colon!5846) (Null!5846) (Comma!5846) (LeftBracket!5846) (False!11693) (LeftBrace!5846) (ImaginaryLiteralValue!5846 (text!41368 List!38041)) (StringLiteralValue!17538 (value!180501 List!38041)) (EOFValue!5846 (value!180502 List!38041)) (IdentValue!5846 (value!180503 List!38041)) (DelimiterValue!11693 (value!180504 List!38041)) (DedentValue!5846 (value!180505 List!38041)) (NewLineValue!5846 (value!180506 List!38041)) (IntegerValue!17538 (value!180507 (_ BitVec 32)) (text!41369 List!38041)) (IntegerValue!17539 (value!180508 Int) (text!41370 List!38041)) (Times!5846) (Or!5846) (Equal!5846) (Minus!5846) (Broken!29234 (value!180509 List!38041)) (And!5846) (Div!5846) (LessEqual!5846) (Mod!5846) (Concat!16221) (Not!5846) (Plus!5846) (SpaceValue!5846 (value!180510 List!38041)) (IntegerValue!17540 (value!180511 Int) (text!41371 List!38041)) (StringLiteralValue!17539 (text!41372 List!38041)) (FloatLiteralValue!11693 (text!41373 List!38041)) (BytesLiteralValue!5846 (value!180512 List!38041)) (CommentValue!11693 (value!180513 List!38041)) (StringLiteralValue!17540 (value!180514 List!38041)) (ErrorTokenValue!5846 (msg!5907 List!38041)) )
))
(declare-datatypes ((C!20936 0))(
  ( (C!20937 (val!12516 Int)) )
))
(declare-datatypes ((Regex!10375 0))(
  ( (ElementMatch!10375 (c!623718 C!20936)) (Concat!16222 (regOne!21262 Regex!10375) (regTwo!21262 Regex!10375)) (EmptyExpr!10375) (Star!10375 (reg!10704 Regex!10375)) (EmptyLang!10375) (Union!10375 (regOne!21263 Regex!10375) (regTwo!21263 Regex!10375)) )
))
(declare-datatypes ((String!42564 0))(
  ( (String!42565 (value!180515 String)) )
))
(declare-datatypes ((List!38042 0))(
  ( (Nil!37918) (Cons!37918 (h!43338 C!20936) (t!292733 List!38042)) )
))
(declare-datatypes ((IArray!23103 0))(
  ( (IArray!23104 (innerList!11609 List!38042)) )
))
(declare-datatypes ((Conc!11549 0))(
  ( (Node!11549 (left!29631 Conc!11549) (right!29961 Conc!11549) (csize!23328 Int) (cheight!11760 Int)) (Leaf!17968 (xs!14751 IArray!23103) (csize!23329 Int)) (Empty!11549) )
))
(declare-datatypes ((BalanceConc!22712 0))(
  ( (BalanceConc!22713 (c!623719 Conc!11549)) )
))
(declare-datatypes ((TokenValueInjection!11120 0))(
  ( (TokenValueInjection!11121 (toValue!7900 Int) (toChars!7759 Int)) )
))
(declare-datatypes ((Rule!11032 0))(
  ( (Rule!11033 (regex!5616 Regex!10375) (tag!6314 String!42564) (isSeparator!5616 Bool) (transformation!5616 TokenValueInjection!11120)) )
))
(declare-datatypes ((Token!10598 0))(
  ( (Token!10599 (value!180516 TokenValue!5846) (rule!8358 Rule!11032) (size!28897 Int) (originalCharacters!6330 List!38042)) )
))
(declare-datatypes ((tuple2!37816 0))(
  ( (tuple2!37817 (_1!22042 Token!10598) (_2!22042 List!38042)) )
))
(declare-datatypes ((Option!7862 0))(
  ( (None!7861) (Some!7861 (v!37587 tuple2!37816)) )
))
(declare-fun lt!1239090 () Option!7862)

(declare-fun isDefined!6094 (Option!7862) Bool)

(assert (=> b!3604454 (= res!1457197 (isDefined!6094 lt!1239090))))

(declare-datatypes ((List!38043 0))(
  ( (Nil!37919) (Cons!37919 (h!43339 Rule!11032) (t!292734 List!38043)) )
))
(declare-fun rules!3307 () List!38043)

(declare-fun lt!1239072 () List!38042)

(declare-datatypes ((LexerInterface!5205 0))(
  ( (LexerInterfaceExt!5202 (__x!23910 Int)) (Lexer!5203) )
))
(declare-fun thiss!23823 () LexerInterface!5205)

(declare-fun maxPrefix!2739 (LexerInterface!5205 List!38043 List!38042) Option!7862)

(assert (=> b!3604454 (= lt!1239090 (maxPrefix!2739 thiss!23823 rules!3307 lt!1239072))))

(declare-fun token!511 () Token!10598)

(declare-fun list!13976 (BalanceConc!22712) List!38042)

(declare-fun charsOf!3630 (Token!10598) BalanceConc!22712)

(assert (=> b!3604454 (= lt!1239072 (list!13976 (charsOf!3630 token!511)))))

(declare-fun b!3604455 () Bool)

(declare-fun res!1457188 () Bool)

(declare-fun e!2230538 () Bool)

(assert (=> b!3604455 (=> res!1457188 e!2230538)))

(declare-fun sepAndNonSepRulesDisjointChars!1786 (List!38043 List!38043) Bool)

(assert (=> b!3604455 (= res!1457188 (not (sepAndNonSepRulesDisjointChars!1786 rules!3307 rules!3307)))))

(declare-fun b!3604456 () Bool)

(declare-fun res!1457198 () Bool)

(assert (=> b!3604456 (=> (not res!1457198) (not e!2230536))))

(declare-fun rulesInvariant!4602 (LexerInterface!5205 List!38043) Bool)

(assert (=> b!3604456 (= res!1457198 (rulesInvariant!4602 thiss!23823 rules!3307))))

(declare-fun b!3604457 () Bool)

(declare-fun res!1457206 () Bool)

(declare-fun e!2230531 () Bool)

(assert (=> b!3604457 (=> res!1457206 e!2230531)))

(declare-fun lt!1239076 () tuple2!37816)

(declare-fun lt!1239088 () List!38042)

(declare-fun matchR!4944 (Regex!10375 List!38042) Bool)

(assert (=> b!3604457 (= res!1457206 (not (matchR!4944 (regex!5616 (rule!8358 (_1!22042 lt!1239076))) lt!1239088)))))

(declare-fun e!2230541 () Bool)

(assert (=> b!3604458 (= e!2230541 (and tp!1102269 tp!1102260))))

(declare-fun e!2230523 () Bool)

(assert (=> b!3604459 (= e!2230523 (and tp!1102262 tp!1102259))))

(declare-fun b!3604460 () Bool)

(declare-fun res!1457203 () Bool)

(assert (=> b!3604460 (=> (not res!1457203) (not e!2230536))))

(declare-fun anOtherTypeRule!33 () Rule!11032)

(declare-fun rule!403 () Rule!11032)

(assert (=> b!3604460 (= res!1457203 (not (= (isSeparator!5616 anOtherTypeRule!33) (isSeparator!5616 rule!403))))))

(declare-fun e!2230528 () Bool)

(declare-fun b!3604461 () Bool)

(declare-fun tp!1102264 () Bool)

(declare-fun e!2230532 () Bool)

(declare-fun inv!21 (TokenValue!5846) Bool)

(assert (=> b!3604461 (= e!2230528 (and (inv!21 (value!180516 token!511)) e!2230532 tp!1102264))))

(declare-fun b!3604462 () Bool)

(declare-fun res!1457191 () Bool)

(declare-fun e!2230540 () Bool)

(assert (=> b!3604462 (=> (not res!1457191) (not e!2230540))))

(declare-fun lt!1239069 () tuple2!37816)

(declare-fun isEmpty!22378 (List!38042) Bool)

(assert (=> b!3604462 (= res!1457191 (isEmpty!22378 (_2!22042 lt!1239069)))))

(declare-fun b!3604463 () Bool)

(declare-fun res!1457195 () Bool)

(assert (=> b!3604463 (=> (not res!1457195) (not e!2230536))))

(declare-fun contains!7295 (List!38043 Rule!11032) Bool)

(assert (=> b!3604463 (= res!1457195 (contains!7295 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3604464 () Bool)

(declare-fun res!1457204 () Bool)

(assert (=> b!3604464 (=> (not res!1457204) (not e!2230536))))

(declare-fun isEmpty!22379 (List!38043) Bool)

(assert (=> b!3604464 (= res!1457204 (not (isEmpty!22379 rules!3307)))))

(declare-fun b!3604465 () Bool)

(declare-fun res!1457210 () Bool)

(declare-fun e!2230519 () Bool)

(assert (=> b!3604465 (=> res!1457210 e!2230519)))

(declare-fun lt!1239082 () C!20936)

(declare-fun contains!7296 (List!38042 C!20936) Bool)

(assert (=> b!3604465 (= res!1457210 (not (contains!7296 lt!1239072 lt!1239082)))))

(declare-fun b!3604466 () Bool)

(declare-fun res!1457207 () Bool)

(assert (=> b!3604466 (=> res!1457207 e!2230538)))

(declare-fun lt!1239065 () C!20936)

(declare-fun usedCharacters!830 (Regex!10375) List!38042)

(assert (=> b!3604466 (= res!1457207 (not (contains!7296 (usedCharacters!830 (regex!5616 anOtherTypeRule!33)) lt!1239065)))))

(declare-fun res!1457196 () Bool)

(assert (=> start!335338 (=> (not res!1457196) (not e!2230536))))

(get-info :version)

(assert (=> start!335338 (= res!1457196 ((_ is Lexer!5203) thiss!23823))))

(assert (=> start!335338 e!2230536))

(declare-fun e!2230515 () Bool)

(assert (=> start!335338 e!2230515))

(declare-fun e!2230530 () Bool)

(assert (=> start!335338 e!2230530))

(assert (=> start!335338 true))

(declare-fun inv!51281 (Token!10598) Bool)

(assert (=> start!335338 (and (inv!51281 token!511) e!2230528)))

(declare-fun e!2230516 () Bool)

(assert (=> start!335338 e!2230516))

(declare-fun e!2230534 () Bool)

(assert (=> start!335338 e!2230534))

(declare-fun b!3604467 () Bool)

(assert (=> b!3604467 (= e!2230538 e!2230531)))

(declare-fun res!1457211 () Bool)

(assert (=> b!3604467 (=> res!1457211 e!2230531)))

(declare-fun lt!1239091 () List!38042)

(declare-fun isPrefix!2979 (List!38042 List!38042) Bool)

(assert (=> b!3604467 (= res!1457211 (not (isPrefix!2979 lt!1239088 lt!1239091)))))

(declare-fun ++!9432 (List!38042 List!38042) List!38042)

(assert (=> b!3604467 (isPrefix!2979 lt!1239088 (++!9432 lt!1239088 (_2!22042 lt!1239076)))))

(declare-datatypes ((Unit!53982 0))(
  ( (Unit!53983) )
))
(declare-fun lt!1239068 () Unit!53982)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1900 (List!38042 List!38042) Unit!53982)

(assert (=> b!3604467 (= lt!1239068 (lemmaConcatTwoListThenFirstIsPrefix!1900 lt!1239088 (_2!22042 lt!1239076)))))

(declare-fun lt!1239070 () BalanceConc!22712)

(assert (=> b!3604467 (= lt!1239088 (list!13976 lt!1239070))))

(assert (=> b!3604467 (= lt!1239070 (charsOf!3630 (_1!22042 lt!1239076)))))

(declare-fun e!2230542 () Bool)

(assert (=> b!3604467 e!2230542))

(declare-fun res!1457201 () Bool)

(assert (=> b!3604467 (=> (not res!1457201) (not e!2230542))))

(declare-datatypes ((Option!7863 0))(
  ( (None!7862) (Some!7862 (v!37588 Rule!11032)) )
))
(declare-fun lt!1239092 () Option!7863)

(declare-fun isDefined!6095 (Option!7863) Bool)

(assert (=> b!3604467 (= res!1457201 (isDefined!6095 lt!1239092))))

(declare-fun getRuleFromTag!1222 (LexerInterface!5205 List!38043 String!42564) Option!7863)

(assert (=> b!3604467 (= lt!1239092 (getRuleFromTag!1222 thiss!23823 rules!3307 (tag!6314 (rule!8358 (_1!22042 lt!1239076)))))))

(declare-fun lt!1239074 () Unit!53982)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1222 (LexerInterface!5205 List!38043 List!38042 Token!10598) Unit!53982)

(assert (=> b!3604467 (= lt!1239074 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1222 thiss!23823 rules!3307 lt!1239091 (_1!22042 lt!1239076)))))

(declare-fun lt!1239081 () Option!7862)

(declare-fun get!12280 (Option!7862) tuple2!37816)

(assert (=> b!3604467 (= lt!1239076 (get!12280 lt!1239081))))

(declare-fun suffix!1395 () List!38042)

(declare-fun lt!1239084 () Unit!53982)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!885 (LexerInterface!5205 List!38043 List!38042 List!38042) Unit!53982)

(assert (=> b!3604467 (= lt!1239084 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!885 thiss!23823 rules!3307 lt!1239072 suffix!1395))))

(assert (=> b!3604467 (= lt!1239081 (maxPrefix!2739 thiss!23823 rules!3307 lt!1239091))))

(assert (=> b!3604467 (isPrefix!2979 lt!1239072 lt!1239091)))

(declare-fun lt!1239093 () Unit!53982)

(assert (=> b!3604467 (= lt!1239093 (lemmaConcatTwoListThenFirstIsPrefix!1900 lt!1239072 suffix!1395))))

(assert (=> b!3604467 (= lt!1239091 (++!9432 lt!1239072 suffix!1395))))

(declare-fun b!3604468 () Bool)

(declare-fun e!2230524 () Bool)

(assert (=> b!3604468 (= e!2230531 e!2230524)))

(declare-fun res!1457199 () Bool)

(assert (=> b!3604468 (=> res!1457199 e!2230524)))

(declare-fun apply!9122 (TokenValueInjection!11120 BalanceConc!22712) TokenValue!5846)

(declare-fun size!28898 (BalanceConc!22712) Int)

(assert (=> b!3604468 (= res!1457199 (not (= lt!1239081 (Some!7861 (tuple2!37817 (Token!10599 (apply!9122 (transformation!5616 (rule!8358 (_1!22042 lt!1239076))) lt!1239070) (rule!8358 (_1!22042 lt!1239076)) (size!28898 lt!1239070) lt!1239088) (_2!22042 lt!1239076))))))))

(declare-fun lt!1239094 () Unit!53982)

(declare-fun lemmaCharactersSize!669 (Token!10598) Unit!53982)

(assert (=> b!3604468 (= lt!1239094 (lemmaCharactersSize!669 (_1!22042 lt!1239076)))))

(declare-fun lt!1239064 () Unit!53982)

(declare-fun lemmaEqSameImage!807 (TokenValueInjection!11120 BalanceConc!22712 BalanceConc!22712) Unit!53982)

(declare-fun seqFromList!4169 (List!38042) BalanceConc!22712)

(assert (=> b!3604468 (= lt!1239064 (lemmaEqSameImage!807 (transformation!5616 (rule!8358 (_1!22042 lt!1239076))) lt!1239070 (seqFromList!4169 (originalCharacters!6330 (_1!22042 lt!1239076)))))))

(declare-fun lt!1239075 () Unit!53982)

(declare-fun lemmaSemiInverse!1373 (TokenValueInjection!11120 BalanceConc!22712) Unit!53982)

(assert (=> b!3604468 (= lt!1239075 (lemmaSemiInverse!1373 (transformation!5616 (rule!8358 (_1!22042 lt!1239076))) lt!1239070))))

(declare-fun b!3604469 () Bool)

(declare-fun e!2230535 () Bool)

(assert (=> b!3604469 (= e!2230540 (not e!2230535))))

(declare-fun res!1457192 () Bool)

(assert (=> b!3604469 (=> res!1457192 e!2230535)))

(assert (=> b!3604469 (= res!1457192 (not (matchR!4944 (regex!5616 rule!403) lt!1239072)))))

(declare-fun ruleValid!1881 (LexerInterface!5205 Rule!11032) Bool)

(assert (=> b!3604469 (ruleValid!1881 thiss!23823 rule!403)))

(declare-fun lt!1239078 () Unit!53982)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1036 (LexerInterface!5205 Rule!11032 List!38043) Unit!53982)

(assert (=> b!3604469 (= lt!1239078 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1036 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3604470 () Bool)

(declare-fun e!2230521 () Bool)

(assert (=> b!3604470 (= e!2230521 e!2230519)))

(declare-fun res!1457194 () Bool)

(assert (=> b!3604470 (=> res!1457194 e!2230519)))

(assert (=> b!3604470 (= res!1457194 (or (isSeparator!5616 rule!403) (not (isSeparator!5616 (rule!8358 (_1!22042 lt!1239076))))))))

(declare-fun lt!1239087 () Unit!53982)

(declare-fun e!2230537 () Unit!53982)

(assert (=> b!3604470 (= lt!1239087 e!2230537)))

(declare-fun c!623717 () Bool)

(declare-fun lt!1239077 () Bool)

(assert (=> b!3604470 (= c!623717 lt!1239077)))

(declare-fun lt!1239071 () List!38042)

(assert (=> b!3604470 (= lt!1239077 (not (contains!7296 lt!1239071 lt!1239082)))))

(declare-fun head!7566 (List!38042) C!20936)

(assert (=> b!3604470 (= lt!1239082 (head!7566 lt!1239088))))

(declare-fun b!3604471 () Bool)

(assert (=> b!3604471 (= e!2230524 e!2230521)))

(declare-fun res!1457190 () Bool)

(assert (=> b!3604471 (=> res!1457190 e!2230521)))

(declare-fun lt!1239089 () List!38042)

(declare-fun lt!1239085 () Option!7862)

(assert (=> b!3604471 (= res!1457190 (or (not (= lt!1239089 (_2!22042 lt!1239076))) (not (= lt!1239085 (Some!7861 (tuple2!37817 (_1!22042 lt!1239076) lt!1239089))))))))

(assert (=> b!3604471 (= (_2!22042 lt!1239076) lt!1239089)))

(declare-fun lt!1239067 () Unit!53982)

(declare-fun lemmaSamePrefixThenSameSuffix!1334 (List!38042 List!38042 List!38042 List!38042 List!38042) Unit!53982)

(assert (=> b!3604471 (= lt!1239067 (lemmaSamePrefixThenSameSuffix!1334 lt!1239088 (_2!22042 lt!1239076) lt!1239088 lt!1239089 lt!1239091))))

(declare-fun getSuffix!1554 (List!38042 List!38042) List!38042)

(assert (=> b!3604471 (= lt!1239089 (getSuffix!1554 lt!1239091 lt!1239088))))

(declare-fun lt!1239066 () TokenValue!5846)

(declare-fun lt!1239080 () Int)

(assert (=> b!3604471 (= lt!1239085 (Some!7861 (tuple2!37817 (Token!10599 lt!1239066 (rule!8358 (_1!22042 lt!1239076)) lt!1239080 lt!1239088) (_2!22042 lt!1239076))))))

(declare-fun maxPrefixOneRule!1883 (LexerInterface!5205 Rule!11032 List!38042) Option!7862)

(assert (=> b!3604471 (= lt!1239085 (maxPrefixOneRule!1883 thiss!23823 (rule!8358 (_1!22042 lt!1239076)) lt!1239091))))

(declare-fun size!28899 (List!38042) Int)

(assert (=> b!3604471 (= lt!1239080 (size!28899 lt!1239088))))

(assert (=> b!3604471 (= lt!1239066 (apply!9122 (transformation!5616 (rule!8358 (_1!22042 lt!1239076))) (seqFromList!4169 lt!1239088)))))

(declare-fun lt!1239086 () Unit!53982)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!955 (LexerInterface!5205 List!38043 List!38042 List!38042 List!38042 Rule!11032) Unit!53982)

(assert (=> b!3604471 (= lt!1239086 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!955 thiss!23823 rules!3307 lt!1239088 lt!1239091 (_2!22042 lt!1239076) (rule!8358 (_1!22042 lt!1239076))))))

(declare-fun e!2230533 () Bool)

(assert (=> b!3604472 (= e!2230533 (and tp!1102265 tp!1102267))))

(declare-fun e!2230529 () Bool)

(declare-fun b!3604473 () Bool)

(declare-fun tp!1102263 () Bool)

(declare-fun e!2230522 () Bool)

(declare-fun inv!51278 (String!42564) Bool)

(declare-fun inv!51282 (TokenValueInjection!11120) Bool)

(assert (=> b!3604473 (= e!2230529 (and tp!1102263 (inv!51278 (tag!6314 (h!43339 rules!3307))) (inv!51282 (transformation!5616 (h!43339 rules!3307))) e!2230522))))

(declare-fun b!3604474 () Bool)

(assert (=> b!3604474 (= e!2230535 e!2230538)))

(declare-fun res!1457200 () Bool)

(assert (=> b!3604474 (=> res!1457200 e!2230538)))

(assert (=> b!3604474 (= res!1457200 (contains!7296 lt!1239071 lt!1239065))))

(assert (=> b!3604474 (= lt!1239065 (head!7566 suffix!1395))))

(assert (=> b!3604474 (= lt!1239071 (usedCharacters!830 (regex!5616 rule!403)))))

(declare-fun b!3604475 () Bool)

(declare-fun tp!1102257 () Bool)

(assert (=> b!3604475 (= e!2230515 (and e!2230529 tp!1102257))))

(declare-fun b!3604476 () Bool)

(declare-fun tp!1102270 () Bool)

(assert (=> b!3604476 (= e!2230532 (and tp!1102270 (inv!51278 (tag!6314 (rule!8358 token!511))) (inv!51282 (transformation!5616 (rule!8358 token!511))) e!2230541))))

(declare-fun b!3604477 () Bool)

(assert (=> b!3604477 (= e!2230526 e!2230540)))

(declare-fun res!1457209 () Bool)

(assert (=> b!3604477 (=> (not res!1457209) (not e!2230540))))

(assert (=> b!3604477 (= res!1457209 (= (_1!22042 lt!1239069) token!511))))

(assert (=> b!3604477 (= lt!1239069 (get!12280 lt!1239090))))

(declare-fun b!3604478 () Bool)

(declare-fun Unit!53984 () Unit!53982)

(assert (=> b!3604478 (= e!2230537 Unit!53984)))

(declare-fun b!3604479 () Bool)

(declare-fun res!1457205 () Bool)

(assert (=> b!3604479 (=> (not res!1457205) (not e!2230536))))

(assert (=> b!3604479 (= res!1457205 (contains!7295 rules!3307 rule!403))))

(declare-fun b!3604480 () Bool)

(declare-fun res!1457189 () Bool)

(assert (=> b!3604480 (=> res!1457189 e!2230519)))

(assert (=> b!3604480 (= res!1457189 lt!1239077)))

(declare-fun b!3604481 () Bool)

(declare-fun res!1457193 () Bool)

(assert (=> b!3604481 (=> (not res!1457193) (not e!2230540))))

(assert (=> b!3604481 (= res!1457193 (= (rule!8358 token!511) rule!403))))

(declare-fun b!3604482 () Bool)

(assert (=> b!3604482 (= e!2230519 true)))

(declare-fun lt!1239083 () Bool)

(assert (=> b!3604482 (= lt!1239083 (contains!7295 rules!3307 (rule!8358 (_1!22042 lt!1239076))))))

(declare-fun b!3604483 () Bool)

(declare-fun tp_is_empty!17833 () Bool)

(declare-fun tp!1102266 () Bool)

(assert (=> b!3604483 (= e!2230530 (and tp_is_empty!17833 tp!1102266))))

(assert (=> b!3604484 (= e!2230522 (and tp!1102261 tp!1102268))))

(declare-fun tp!1102256 () Bool)

(declare-fun b!3604485 () Bool)

(assert (=> b!3604485 (= e!2230534 (and tp!1102256 (inv!51278 (tag!6314 anOtherTypeRule!33)) (inv!51282 (transformation!5616 anOtherTypeRule!33)) e!2230523))))

(declare-fun b!3604486 () Bool)

(declare-fun res!1457208 () Bool)

(assert (=> b!3604486 (=> res!1457208 e!2230535)))

(assert (=> b!3604486 (= res!1457208 (isEmpty!22378 suffix!1395))))

(declare-fun b!3604487 () Bool)

(declare-fun e!2230517 () Bool)

(assert (=> b!3604487 (= e!2230542 e!2230517)))

(declare-fun res!1457202 () Bool)

(assert (=> b!3604487 (=> (not res!1457202) (not e!2230517))))

(declare-fun lt!1239079 () Rule!11032)

(assert (=> b!3604487 (= res!1457202 (matchR!4944 (regex!5616 lt!1239079) (list!13976 (charsOf!3630 (_1!22042 lt!1239076)))))))

(declare-fun get!12281 (Option!7863) Rule!11032)

(assert (=> b!3604487 (= lt!1239079 (get!12281 lt!1239092))))

(declare-fun b!3604488 () Bool)

(declare-fun Unit!53985 () Unit!53982)

(assert (=> b!3604488 (= e!2230537 Unit!53985)))

(declare-fun lt!1239073 () Unit!53982)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!600 (Regex!10375 List!38042 C!20936) Unit!53982)

(assert (=> b!3604488 (= lt!1239073 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!600 (regex!5616 rule!403) lt!1239072 lt!1239082))))

(assert (=> b!3604488 false))

(declare-fun b!3604489 () Bool)

(assert (=> b!3604489 (= e!2230517 (= (rule!8358 (_1!22042 lt!1239076)) lt!1239079))))

(declare-fun b!3604490 () Bool)

(declare-fun tp!1102258 () Bool)

(assert (=> b!3604490 (= e!2230516 (and tp!1102258 (inv!51278 (tag!6314 rule!403)) (inv!51282 (transformation!5616 rule!403)) e!2230533))))

(assert (= (and start!335338 res!1457196) b!3604464))

(assert (= (and b!3604464 res!1457204) b!3604456))

(assert (= (and b!3604456 res!1457198) b!3604479))

(assert (= (and b!3604479 res!1457205) b!3604463))

(assert (= (and b!3604463 res!1457195) b!3604460))

(assert (= (and b!3604460 res!1457203) b!3604454))

(assert (= (and b!3604454 res!1457197) b!3604477))

(assert (= (and b!3604477 res!1457209) b!3604462))

(assert (= (and b!3604462 res!1457191) b!3604481))

(assert (= (and b!3604481 res!1457193) b!3604469))

(assert (= (and b!3604469 (not res!1457192)) b!3604486))

(assert (= (and b!3604486 (not res!1457208)) b!3604474))

(assert (= (and b!3604474 (not res!1457200)) b!3604466))

(assert (= (and b!3604466 (not res!1457207)) b!3604455))

(assert (= (and b!3604455 (not res!1457188)) b!3604467))

(assert (= (and b!3604467 res!1457201) b!3604487))

(assert (= (and b!3604487 res!1457202) b!3604489))

(assert (= (and b!3604467 (not res!1457211)) b!3604457))

(assert (= (and b!3604457 (not res!1457206)) b!3604468))

(assert (= (and b!3604468 (not res!1457199)) b!3604471))

(assert (= (and b!3604471 (not res!1457190)) b!3604470))

(assert (= (and b!3604470 c!623717) b!3604488))

(assert (= (and b!3604470 (not c!623717)) b!3604478))

(assert (= (and b!3604470 (not res!1457194)) b!3604465))

(assert (= (and b!3604465 (not res!1457210)) b!3604480))

(assert (= (and b!3604480 (not res!1457189)) b!3604482))

(assert (= b!3604473 b!3604484))

(assert (= b!3604475 b!3604473))

(assert (= (and start!335338 ((_ is Cons!37919) rules!3307)) b!3604475))

(assert (= (and start!335338 ((_ is Cons!37918) suffix!1395)) b!3604483))

(assert (= b!3604476 b!3604458))

(assert (= b!3604461 b!3604476))

(assert (= start!335338 b!3604461))

(assert (= b!3604490 b!3604472))

(assert (= start!335338 b!3604490))

(assert (= b!3604485 b!3604459))

(assert (= start!335338 b!3604485))

(declare-fun m!4100939 () Bool)

(assert (=> b!3604454 m!4100939))

(declare-fun m!4100941 () Bool)

(assert (=> b!3604454 m!4100941))

(declare-fun m!4100943 () Bool)

(assert (=> b!3604454 m!4100943))

(assert (=> b!3604454 m!4100943))

(declare-fun m!4100945 () Bool)

(assert (=> b!3604454 m!4100945))

(declare-fun m!4100947 () Bool)

(assert (=> b!3604462 m!4100947))

(declare-fun m!4100949 () Bool)

(assert (=> b!3604465 m!4100949))

(declare-fun m!4100951 () Bool)

(assert (=> b!3604456 m!4100951))

(declare-fun m!4100953 () Bool)

(assert (=> b!3604461 m!4100953))

(declare-fun m!4100955 () Bool)

(assert (=> b!3604477 m!4100955))

(declare-fun m!4100957 () Bool)

(assert (=> b!3604476 m!4100957))

(declare-fun m!4100959 () Bool)

(assert (=> b!3604476 m!4100959))

(declare-fun m!4100961 () Bool)

(assert (=> b!3604486 m!4100961))

(declare-fun m!4100963 () Bool)

(assert (=> b!3604487 m!4100963))

(assert (=> b!3604487 m!4100963))

(declare-fun m!4100965 () Bool)

(assert (=> b!3604487 m!4100965))

(assert (=> b!3604487 m!4100965))

(declare-fun m!4100967 () Bool)

(assert (=> b!3604487 m!4100967))

(declare-fun m!4100969 () Bool)

(assert (=> b!3604487 m!4100969))

(declare-fun m!4100971 () Bool)

(assert (=> b!3604474 m!4100971))

(declare-fun m!4100973 () Bool)

(assert (=> b!3604474 m!4100973))

(declare-fun m!4100975 () Bool)

(assert (=> b!3604474 m!4100975))

(declare-fun m!4100977 () Bool)

(assert (=> b!3604468 m!4100977))

(assert (=> b!3604468 m!4100977))

(declare-fun m!4100979 () Bool)

(assert (=> b!3604468 m!4100979))

(declare-fun m!4100981 () Bool)

(assert (=> b!3604468 m!4100981))

(declare-fun m!4100983 () Bool)

(assert (=> b!3604468 m!4100983))

(declare-fun m!4100985 () Bool)

(assert (=> b!3604468 m!4100985))

(declare-fun m!4100987 () Bool)

(assert (=> b!3604468 m!4100987))

(declare-fun m!4100989 () Bool)

(assert (=> b!3604464 m!4100989))

(declare-fun m!4100991 () Bool)

(assert (=> b!3604490 m!4100991))

(declare-fun m!4100993 () Bool)

(assert (=> b!3604490 m!4100993))

(declare-fun m!4100995 () Bool)

(assert (=> b!3604466 m!4100995))

(assert (=> b!3604466 m!4100995))

(declare-fun m!4100997 () Bool)

(assert (=> b!3604466 m!4100997))

(declare-fun m!4100999 () Bool)

(assert (=> b!3604463 m!4100999))

(declare-fun m!4101001 () Bool)

(assert (=> b!3604471 m!4101001))

(assert (=> b!3604471 m!4101001))

(declare-fun m!4101003 () Bool)

(assert (=> b!3604471 m!4101003))

(declare-fun m!4101005 () Bool)

(assert (=> b!3604471 m!4101005))

(declare-fun m!4101007 () Bool)

(assert (=> b!3604471 m!4101007))

(declare-fun m!4101009 () Bool)

(assert (=> b!3604471 m!4101009))

(declare-fun m!4101011 () Bool)

(assert (=> b!3604471 m!4101011))

(declare-fun m!4101013 () Bool)

(assert (=> b!3604471 m!4101013))

(declare-fun m!4101015 () Bool)

(assert (=> b!3604482 m!4101015))

(declare-fun m!4101017 () Bool)

(assert (=> b!3604457 m!4101017))

(declare-fun m!4101019 () Bool)

(assert (=> b!3604473 m!4101019))

(declare-fun m!4101021 () Bool)

(assert (=> b!3604473 m!4101021))

(declare-fun m!4101023 () Bool)

(assert (=> b!3604469 m!4101023))

(declare-fun m!4101025 () Bool)

(assert (=> b!3604469 m!4101025))

(declare-fun m!4101027 () Bool)

(assert (=> b!3604469 m!4101027))

(declare-fun m!4101029 () Bool)

(assert (=> b!3604470 m!4101029))

(declare-fun m!4101031 () Bool)

(assert (=> b!3604470 m!4101031))

(declare-fun m!4101033 () Bool)

(assert (=> b!3604455 m!4101033))

(declare-fun m!4101035 () Bool)

(assert (=> b!3604467 m!4101035))

(declare-fun m!4101037 () Bool)

(assert (=> b!3604467 m!4101037))

(assert (=> b!3604467 m!4100963))

(declare-fun m!4101039 () Bool)

(assert (=> b!3604467 m!4101039))

(declare-fun m!4101041 () Bool)

(assert (=> b!3604467 m!4101041))

(declare-fun m!4101043 () Bool)

(assert (=> b!3604467 m!4101043))

(declare-fun m!4101045 () Bool)

(assert (=> b!3604467 m!4101045))

(declare-fun m!4101047 () Bool)

(assert (=> b!3604467 m!4101047))

(declare-fun m!4101049 () Bool)

(assert (=> b!3604467 m!4101049))

(declare-fun m!4101051 () Bool)

(assert (=> b!3604467 m!4101051))

(declare-fun m!4101053 () Bool)

(assert (=> b!3604467 m!4101053))

(declare-fun m!4101055 () Bool)

(assert (=> b!3604467 m!4101055))

(declare-fun m!4101057 () Bool)

(assert (=> b!3604467 m!4101057))

(assert (=> b!3604467 m!4101039))

(declare-fun m!4101059 () Bool)

(assert (=> b!3604467 m!4101059))

(declare-fun m!4101061 () Bool)

(assert (=> b!3604467 m!4101061))

(declare-fun m!4101063 () Bool)

(assert (=> start!335338 m!4101063))

(declare-fun m!4101065 () Bool)

(assert (=> b!3604479 m!4101065))

(declare-fun m!4101067 () Bool)

(assert (=> b!3604485 m!4101067))

(declare-fun m!4101069 () Bool)

(assert (=> b!3604485 m!4101069))

(declare-fun m!4101071 () Bool)

(assert (=> b!3604488 m!4101071))

(check-sat (not b!3604469) (not b_next!94065) (not b!3604475) (not b_next!94057) (not b!3604476) (not b_next!94071) (not b!3604454) (not b_next!94059) (not b!3604455) (not b!3604479) b_and!262265 b_and!262263 (not b!3604468) (not b_next!94067) (not b!3604483) (not b!3604465) (not b!3604464) (not b_next!94061) b_and!262251 (not b!3604463) (not b!3604486) (not b!3604457) (not b!3604487) (not b!3604467) (not b!3604488) (not b!3604490) (not b!3604482) b_and!262253 (not b_next!94063) tp_is_empty!17833 (not b!3604466) b_and!262261 (not start!335338) (not b!3604471) (not b!3604461) (not b!3604470) b_and!262255 (not b!3604485) (not b!3604473) (not b!3604462) (not b!3604474) (not b!3604456) (not b_next!94069) (not b!3604477) b_and!262257 b_and!262259)
(check-sat (not b_next!94065) (not b_next!94067) (not b_next!94061) b_and!262251 (not b_next!94057) (not b_next!94071) (not b_next!94059) b_and!262261 b_and!262255 b_and!262265 (not b_next!94069) b_and!262263 b_and!262253 (not b_next!94063) b_and!262257 b_and!262259)

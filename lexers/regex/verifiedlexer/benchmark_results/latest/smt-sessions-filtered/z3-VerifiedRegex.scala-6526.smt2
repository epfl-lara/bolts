; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!344422 () Bool)

(assert start!344422)

(declare-fun b!3674402 () Bool)

(declare-fun b_free!97225 () Bool)

(declare-fun b_next!97929 () Bool)

(assert (=> b!3674402 (= b_free!97225 (not b_next!97929))))

(declare-fun tp!1117772 () Bool)

(declare-fun b_and!273915 () Bool)

(assert (=> b!3674402 (= tp!1117772 b_and!273915)))

(declare-fun b_free!97227 () Bool)

(declare-fun b_next!97931 () Bool)

(assert (=> b!3674402 (= b_free!97227 (not b_next!97931))))

(declare-fun tp!1117776 () Bool)

(declare-fun b_and!273917 () Bool)

(assert (=> b!3674402 (= tp!1117776 b_and!273917)))

(declare-fun b!3674393 () Bool)

(declare-fun b_free!97229 () Bool)

(declare-fun b_next!97933 () Bool)

(assert (=> b!3674393 (= b_free!97229 (not b_next!97933))))

(declare-fun tp!1117764 () Bool)

(declare-fun b_and!273919 () Bool)

(assert (=> b!3674393 (= tp!1117764 b_and!273919)))

(declare-fun b_free!97231 () Bool)

(declare-fun b_next!97935 () Bool)

(assert (=> b!3674393 (= b_free!97231 (not b_next!97935))))

(declare-fun tp!1117777 () Bool)

(declare-fun b_and!273921 () Bool)

(assert (=> b!3674393 (= tp!1117777 b_and!273921)))

(declare-fun b!3674398 () Bool)

(declare-fun b_free!97233 () Bool)

(declare-fun b_next!97937 () Bool)

(assert (=> b!3674398 (= b_free!97233 (not b_next!97937))))

(declare-fun tp!1117769 () Bool)

(declare-fun b_and!273923 () Bool)

(assert (=> b!3674398 (= tp!1117769 b_and!273923)))

(declare-fun b_free!97235 () Bool)

(declare-fun b_next!97939 () Bool)

(assert (=> b!3674398 (= b_free!97235 (not b_next!97939))))

(declare-fun tp!1117778 () Bool)

(declare-fun b_and!273925 () Bool)

(assert (=> b!3674398 (= tp!1117778 b_and!273925)))

(declare-fun b!3674399 () Bool)

(declare-fun b_free!97237 () Bool)

(declare-fun b_next!97941 () Bool)

(assert (=> b!3674399 (= b_free!97237 (not b_next!97941))))

(declare-fun tp!1117773 () Bool)

(declare-fun b_and!273927 () Bool)

(assert (=> b!3674399 (= tp!1117773 b_and!273927)))

(declare-fun b_free!97239 () Bool)

(declare-fun b_next!97943 () Bool)

(assert (=> b!3674399 (= b_free!97239 (not b_next!97943))))

(declare-fun tp!1117774 () Bool)

(declare-fun b_and!273929 () Bool)

(assert (=> b!3674399 (= tp!1117774 b_and!273929)))

(declare-fun b!3674374 () Bool)

(declare-fun e!2275262 () Bool)

(declare-fun e!2275264 () Bool)

(assert (=> b!3674374 (= e!2275262 e!2275264)))

(declare-fun res!1492474 () Bool)

(assert (=> b!3674374 (=> res!1492474 e!2275264)))

(declare-datatypes ((C!21368 0))(
  ( (C!21369 (val!12732 Int)) )
))
(declare-datatypes ((List!38883 0))(
  ( (Nil!38759) (Cons!38759 (h!44179 C!21368) (t!299958 List!38883)) )
))
(declare-fun lt!1282379 () List!38883)

(declare-fun lt!1282401 () List!38883)

(declare-fun isPrefix!3195 (List!38883 List!38883) Bool)

(assert (=> b!3674374 (= res!1492474 (not (isPrefix!3195 lt!1282379 lt!1282401)))))

(declare-datatypes ((List!38884 0))(
  ( (Nil!38760) (Cons!38760 (h!44180 (_ BitVec 16)) (t!299959 List!38884)) )
))
(declare-datatypes ((TokenValue!6062 0))(
  ( (FloatLiteralValue!12124 (text!42879 List!38884)) (TokenValueExt!6061 (__x!24341 Int)) (Broken!30310 (value!186646 List!38884)) (Object!6185) (End!6062) (Def!6062) (Underscore!6062) (Match!6062) (Else!6062) (Error!6062) (Case!6062) (If!6062) (Extends!6062) (Abstract!6062) (Class!6062) (Val!6062) (DelimiterValue!12124 (del!6122 List!38884)) (KeywordValue!6068 (value!186647 List!38884)) (CommentValue!12124 (value!186648 List!38884)) (WhitespaceValue!12124 (value!186649 List!38884)) (IndentationValue!6062 (value!186650 List!38884)) (String!43643) (Int32!6062) (Broken!30311 (value!186651 List!38884)) (Boolean!6063) (Unit!56536) (OperatorValue!6065 (op!6122 List!38884)) (IdentifierValue!12124 (value!186652 List!38884)) (IdentifierValue!12125 (value!186653 List!38884)) (WhitespaceValue!12125 (value!186654 List!38884)) (True!12124) (False!12124) (Broken!30312 (value!186655 List!38884)) (Broken!30313 (value!186656 List!38884)) (True!12125) (RightBrace!6062) (RightBracket!6062) (Colon!6062) (Null!6062) (Comma!6062) (LeftBracket!6062) (False!12125) (LeftBrace!6062) (ImaginaryLiteralValue!6062 (text!42880 List!38884)) (StringLiteralValue!18186 (value!186657 List!38884)) (EOFValue!6062 (value!186658 List!38884)) (IdentValue!6062 (value!186659 List!38884)) (DelimiterValue!12125 (value!186660 List!38884)) (DedentValue!6062 (value!186661 List!38884)) (NewLineValue!6062 (value!186662 List!38884)) (IntegerValue!18186 (value!186663 (_ BitVec 32)) (text!42881 List!38884)) (IntegerValue!18187 (value!186664 Int) (text!42882 List!38884)) (Times!6062) (Or!6062) (Equal!6062) (Minus!6062) (Broken!30314 (value!186665 List!38884)) (And!6062) (Div!6062) (LessEqual!6062) (Mod!6062) (Concat!16653) (Not!6062) (Plus!6062) (SpaceValue!6062 (value!186666 List!38884)) (IntegerValue!18188 (value!186667 Int) (text!42883 List!38884)) (StringLiteralValue!18187 (text!42884 List!38884)) (FloatLiteralValue!12125 (text!42885 List!38884)) (BytesLiteralValue!6062 (value!186668 List!38884)) (CommentValue!12125 (value!186669 List!38884)) (StringLiteralValue!18188 (value!186670 List!38884)) (ErrorTokenValue!6062 (msg!6123 List!38884)) )
))
(declare-datatypes ((Regex!10591 0))(
  ( (ElementMatch!10591 (c!635392 C!21368)) (Concat!16654 (regOne!21694 Regex!10591) (regTwo!21694 Regex!10591)) (EmptyExpr!10591) (Star!10591 (reg!10920 Regex!10591)) (EmptyLang!10591) (Union!10591 (regOne!21695 Regex!10591) (regTwo!21695 Regex!10591)) )
))
(declare-datatypes ((String!43644 0))(
  ( (String!43645 (value!186671 String)) )
))
(declare-datatypes ((IArray!23727 0))(
  ( (IArray!23728 (innerList!11921 List!38883)) )
))
(declare-datatypes ((Conc!11861 0))(
  ( (Node!11861 (left!30243 Conc!11861) (right!30573 Conc!11861) (csize!23952 Int) (cheight!12072 Int)) (Leaf!18388 (xs!15063 IArray!23727) (csize!23953 Int)) (Empty!11861) )
))
(declare-datatypes ((BalanceConc!23336 0))(
  ( (BalanceConc!23337 (c!635393 Conc!11861)) )
))
(declare-datatypes ((TokenValueInjection!11552 0))(
  ( (TokenValueInjection!11553 (toValue!8128 Int) (toChars!7987 Int)) )
))
(declare-datatypes ((Rule!11464 0))(
  ( (Rule!11465 (regex!5832 Regex!10591) (tag!6626 String!43644) (isSeparator!5832 Bool) (transformation!5832 TokenValueInjection!11552)) )
))
(declare-datatypes ((Token!11030 0))(
  ( (Token!11031 (value!186672 TokenValue!6062) (rule!8660 Rule!11464) (size!29631 Int) (originalCharacters!6546 List!38883)) )
))
(declare-datatypes ((tuple2!38624 0))(
  ( (tuple2!38625 (_1!22446 Token!11030) (_2!22446 List!38883)) )
))
(declare-fun lt!1282410 () tuple2!38624)

(declare-fun ++!9648 (List!38883 List!38883) List!38883)

(assert (=> b!3674374 (isPrefix!3195 lt!1282379 (++!9648 lt!1282379 (_2!22446 lt!1282410)))))

(declare-datatypes ((Unit!56537 0))(
  ( (Unit!56538) )
))
(declare-fun lt!1282393 () Unit!56537)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2114 (List!38883 List!38883) Unit!56537)

(assert (=> b!3674374 (= lt!1282393 (lemmaConcatTwoListThenFirstIsPrefix!2114 lt!1282379 (_2!22446 lt!1282410)))))

(declare-fun lt!1282383 () BalanceConc!23336)

(declare-fun list!14398 (BalanceConc!23336) List!38883)

(assert (=> b!3674374 (= lt!1282379 (list!14398 lt!1282383))))

(declare-fun charsOf!3846 (Token!11030) BalanceConc!23336)

(assert (=> b!3674374 (= lt!1282383 (charsOf!3846 (_1!22446 lt!1282410)))))

(declare-fun e!2275280 () Bool)

(assert (=> b!3674374 e!2275280))

(declare-fun res!1492470 () Bool)

(assert (=> b!3674374 (=> (not res!1492470) (not e!2275280))))

(declare-datatypes ((Option!8292 0))(
  ( (None!8291) (Some!8291 (v!38211 Rule!11464)) )
))
(declare-fun lt!1282363 () Option!8292)

(declare-fun isDefined!6524 (Option!8292) Bool)

(assert (=> b!3674374 (= res!1492470 (isDefined!6524 lt!1282363))))

(declare-datatypes ((List!38885 0))(
  ( (Nil!38761) (Cons!38761 (h!44181 Rule!11464) (t!299960 List!38885)) )
))
(declare-fun rules!3307 () List!38885)

(declare-datatypes ((LexerInterface!5421 0))(
  ( (LexerInterfaceExt!5418 (__x!24342 Int)) (Lexer!5419) )
))
(declare-fun thiss!23823 () LexerInterface!5421)

(declare-fun getRuleFromTag!1436 (LexerInterface!5421 List!38885 String!43644) Option!8292)

(assert (=> b!3674374 (= lt!1282363 (getRuleFromTag!1436 thiss!23823 rules!3307 (tag!6626 (rule!8660 (_1!22446 lt!1282410)))))))

(declare-fun lt!1282370 () Unit!56537)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1436 (LexerInterface!5421 List!38885 List!38883 Token!11030) Unit!56537)

(assert (=> b!3674374 (= lt!1282370 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1436 thiss!23823 rules!3307 lt!1282401 (_1!22446 lt!1282410)))))

(declare-datatypes ((Option!8293 0))(
  ( (None!8292) (Some!8292 (v!38212 tuple2!38624)) )
))
(declare-fun lt!1282405 () Option!8293)

(declare-fun get!12818 (Option!8293) tuple2!38624)

(assert (=> b!3674374 (= lt!1282410 (get!12818 lt!1282405))))

(declare-fun lt!1282377 () Unit!56537)

(declare-fun lt!1282365 () List!38883)

(declare-fun suffix!1395 () List!38883)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1099 (LexerInterface!5421 List!38885 List!38883 List!38883) Unit!56537)

(assert (=> b!3674374 (= lt!1282377 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1099 thiss!23823 rules!3307 lt!1282365 suffix!1395))))

(declare-fun maxPrefix!2955 (LexerInterface!5421 List!38885 List!38883) Option!8293)

(assert (=> b!3674374 (= lt!1282405 (maxPrefix!2955 thiss!23823 rules!3307 lt!1282401))))

(assert (=> b!3674374 (isPrefix!3195 lt!1282365 lt!1282401)))

(declare-fun lt!1282392 () Unit!56537)

(assert (=> b!3674374 (= lt!1282392 (lemmaConcatTwoListThenFirstIsPrefix!2114 lt!1282365 suffix!1395))))

(assert (=> b!3674374 (= lt!1282401 (++!9648 lt!1282365 suffix!1395))))

(declare-fun b!3674375 () Bool)

(declare-fun e!2275252 () Unit!56537)

(declare-fun Unit!56539 () Unit!56537)

(assert (=> b!3674375 (= e!2275252 Unit!56539)))

(declare-fun b!3674376 () Bool)

(declare-fun e!2275259 () Unit!56537)

(declare-fun e!2275251 () Unit!56537)

(assert (=> b!3674376 (= e!2275259 e!2275251)))

(declare-fun lt!1282384 () Unit!56537)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!140 (List!38883 List!38883 List!38883 List!38883) Unit!56537)

(assert (=> b!3674376 (= lt!1282384 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!140 lt!1282365 suffix!1395 lt!1282379 lt!1282401))))

(declare-fun lt!1282408 () C!21368)

(declare-fun contains!7731 (List!38883 C!21368) Bool)

(assert (=> b!3674376 (contains!7731 lt!1282379 lt!1282408)))

(declare-fun c!635390 () Bool)

(declare-fun rule!403 () Rule!11464)

(assert (=> b!3674376 (= c!635390 (isSeparator!5832 rule!403))))

(declare-fun b!3674377 () Bool)

(declare-fun e!2275278 () Unit!56537)

(declare-fun Unit!56540 () Unit!56537)

(assert (=> b!3674377 (= e!2275278 Unit!56540)))

(declare-fun b!3674378 () Bool)

(declare-fun e!2275281 () Unit!56537)

(declare-fun e!2275260 () Unit!56537)

(assert (=> b!3674378 (= e!2275281 e!2275260)))

(declare-fun c!635385 () Bool)

(assert (=> b!3674378 (= c!635385 (not (isSeparator!5832 (rule!8660 (_1!22446 lt!1282410)))))))

(declare-fun b!3674379 () Bool)

(declare-fun Unit!56541 () Unit!56537)

(assert (=> b!3674379 (= e!2275259 Unit!56541)))

(declare-fun b!3674380 () Bool)

(declare-fun e!2275267 () Bool)

(assert (=> b!3674380 (= e!2275267 false)))

(declare-fun e!2275248 () Bool)

(declare-fun e!2275268 () Bool)

(declare-fun tp!1117771 () Bool)

(declare-fun b!3674381 () Bool)

(declare-fun inv!52247 (String!43644) Bool)

(declare-fun inv!52250 (TokenValueInjection!11552) Bool)

(assert (=> b!3674381 (= e!2275248 (and tp!1117771 (inv!52247 (tag!6626 (h!44181 rules!3307))) (inv!52250 (transformation!5832 (h!44181 rules!3307))) e!2275268))))

(declare-fun b!3674382 () Bool)

(declare-fun res!1492488 () Bool)

(assert (=> b!3674382 (=> res!1492488 e!2275262)))

(declare-fun anOtherTypeRule!33 () Rule!11464)

(declare-fun usedCharacters!1044 (Regex!10591) List!38883)

(assert (=> b!3674382 (= res!1492488 (not (contains!7731 (usedCharacters!1044 (regex!5832 anOtherTypeRule!33)) lt!1282408)))))

(declare-fun bm!266075 () Bool)

(declare-fun call!266083 () List!38883)

(assert (=> bm!266075 (= call!266083 (usedCharacters!1044 (regex!5832 (rule!8660 (_1!22446 lt!1282410)))))))

(declare-fun b!3674383 () Bool)

(declare-fun e!2275277 () Unit!56537)

(declare-fun Unit!56542 () Unit!56537)

(assert (=> b!3674383 (= e!2275277 Unit!56542)))

(declare-fun b!3674384 () Bool)

(declare-fun res!1492485 () Bool)

(declare-fun e!2275270 () Bool)

(assert (=> b!3674384 (=> res!1492485 e!2275270)))

(declare-fun isEmpty!23010 (List!38883) Bool)

(assert (=> b!3674384 (= res!1492485 (isEmpty!23010 suffix!1395))))

(declare-fun b!3674385 () Bool)

(declare-fun e!2275253 () Bool)

(declare-fun tp_is_empty!18265 () Bool)

(declare-fun tp!1117775 () Bool)

(assert (=> b!3674385 (= e!2275253 (and tp_is_empty!18265 tp!1117775))))

(declare-fun b!3674386 () Bool)

(declare-fun res!1492486 () Bool)

(declare-fun e!2275274 () Bool)

(assert (=> b!3674386 (=> (not res!1492486) (not e!2275274))))

(declare-fun contains!7732 (List!38885 Rule!11464) Bool)

(assert (=> b!3674386 (= res!1492486 (contains!7732 rules!3307 rule!403))))

(declare-fun b!3674387 () Bool)

(declare-fun res!1492480 () Bool)

(assert (=> b!3674387 (=> res!1492480 e!2275262)))

(declare-fun sepAndNonSepRulesDisjointChars!2000 (List!38885 List!38885) Bool)

(assert (=> b!3674387 (= res!1492480 (not (sepAndNonSepRulesDisjointChars!2000 rules!3307 rules!3307)))))

(declare-fun b!3674388 () Bool)

(declare-fun e!2275265 () Bool)

(assert (=> b!3674388 (= e!2275264 e!2275265)))

(declare-fun res!1492472 () Bool)

(assert (=> b!3674388 (=> res!1492472 e!2275265)))

(declare-fun lt!1282385 () TokenValue!6062)

(declare-fun lt!1282406 () Int)

(assert (=> b!3674388 (= res!1492472 (not (= lt!1282405 (Some!8292 (tuple2!38625 (Token!11031 lt!1282385 (rule!8660 (_1!22446 lt!1282410)) lt!1282406 lt!1282379) (_2!22446 lt!1282410))))))))

(declare-fun size!29632 (BalanceConc!23336) Int)

(assert (=> b!3674388 (= lt!1282406 (size!29632 lt!1282383))))

(declare-fun apply!9334 (TokenValueInjection!11552 BalanceConc!23336) TokenValue!6062)

(assert (=> b!3674388 (= lt!1282385 (apply!9334 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))) lt!1282383))))

(declare-fun lt!1282372 () Unit!56537)

(declare-fun lemmaCharactersSize!877 (Token!11030) Unit!56537)

(assert (=> b!3674388 (= lt!1282372 (lemmaCharactersSize!877 (_1!22446 lt!1282410)))))

(declare-fun lt!1282374 () Unit!56537)

(declare-fun lemmaEqSameImage!1015 (TokenValueInjection!11552 BalanceConc!23336 BalanceConc!23336) Unit!56537)

(declare-fun seqFromList!4381 (List!38883) BalanceConc!23336)

(assert (=> b!3674388 (= lt!1282374 (lemmaEqSameImage!1015 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))) lt!1282383 (seqFromList!4381 (originalCharacters!6546 (_1!22446 lt!1282410)))))))

(declare-fun lt!1282367 () Unit!56537)

(declare-fun lemmaSemiInverse!1581 (TokenValueInjection!11552 BalanceConc!23336) Unit!56537)

(assert (=> b!3674388 (= lt!1282367 (lemmaSemiInverse!1581 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))) lt!1282383))))

(declare-fun b!3674389 () Bool)

(declare-fun e!2275247 () Bool)

(assert (=> b!3674389 (= e!2275247 (not e!2275270))))

(declare-fun res!1492489 () Bool)

(assert (=> b!3674389 (=> res!1492489 e!2275270)))

(declare-fun matchR!5160 (Regex!10591 List!38883) Bool)

(assert (=> b!3674389 (= res!1492489 (not (matchR!5160 (regex!5832 rule!403) lt!1282365)))))

(declare-fun ruleValid!2096 (LexerInterface!5421 Rule!11464) Bool)

(assert (=> b!3674389 (ruleValid!2096 thiss!23823 rule!403)))

(declare-fun lt!1282390 () Unit!56537)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1250 (LexerInterface!5421 Rule!11464 List!38885) Unit!56537)

(assert (=> b!3674389 (= lt!1282390 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1250 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3674390 () Bool)

(declare-fun res!1492484 () Bool)

(assert (=> b!3674390 (=> (not res!1492484) (not e!2275274))))

(assert (=> b!3674390 (= res!1492484 (not (= (isSeparator!5832 anOtherTypeRule!33) (isSeparator!5832 rule!403))))))

(declare-fun b!3674391 () Bool)

(declare-fun e!2275279 () Bool)

(declare-fun lt!1282364 () Rule!11464)

(assert (=> b!3674391 (= e!2275279 (= (rule!8660 (_1!22446 lt!1282410)) lt!1282364))))

(declare-fun bm!266076 () Bool)

(declare-fun call!266082 () Unit!56537)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!780 (Regex!10591 List!38883 C!21368) Unit!56537)

(assert (=> bm!266076 (= call!266082 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!780 (regex!5832 (rule!8660 (_1!22446 lt!1282410))) lt!1282379 lt!1282408))))

(declare-fun b!3674392 () Bool)

(declare-fun res!1492482 () Bool)

(assert (=> b!3674392 (=> (not res!1492482) (not e!2275247))))

(declare-fun lt!1282369 () tuple2!38624)

(assert (=> b!3674392 (= res!1492482 (isEmpty!23010 (_2!22446 lt!1282369)))))

(declare-fun e!2275246 () Bool)

(assert (=> b!3674393 (= e!2275246 (and tp!1117764 tp!1117777))))

(declare-fun b!3674394 () Bool)

(declare-fun e!2275271 () Unit!56537)

(declare-fun Unit!56543 () Unit!56537)

(assert (=> b!3674394 (= e!2275271 Unit!56543)))

(declare-fun b!3674395 () Bool)

(assert (=> b!3674395 (= e!2275280 e!2275279)))

(declare-fun res!1492475 () Bool)

(assert (=> b!3674395 (=> (not res!1492475) (not e!2275279))))

(assert (=> b!3674395 (= res!1492475 (matchR!5160 (regex!5832 lt!1282364) (list!14398 (charsOf!3846 (_1!22446 lt!1282410)))))))

(declare-fun get!12819 (Option!8292) Rule!11464)

(assert (=> b!3674395 (= lt!1282364 (get!12819 lt!1282363))))

(declare-fun b!3674396 () Bool)

(assert (=> b!3674396 false))

(declare-fun lt!1282371 () Unit!56537)

(assert (=> b!3674396 (= lt!1282371 call!266082)))

(declare-fun call!266079 () Bool)

(assert (=> b!3674396 (not call!266079)))

(declare-fun lt!1282404 () Unit!56537)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!478 (LexerInterface!5421 List!38885 List!38885 Rule!11464 Rule!11464 C!21368) Unit!56537)

(assert (=> b!3674396 (= lt!1282404 (lemmaNonSepRuleNotContainsCharContainedInASepRule!478 thiss!23823 rules!3307 rules!3307 (rule!8660 (_1!22446 lt!1282410)) anOtherTypeRule!33 lt!1282408))))

(declare-fun Unit!56544 () Unit!56537)

(assert (=> b!3674396 (= e!2275251 Unit!56544)))

(declare-fun b!3674397 () Bool)

(declare-fun res!1492481 () Bool)

(assert (=> b!3674397 (=> (not res!1492481) (not e!2275274))))

(declare-fun isEmpty!23011 (List!38885) Bool)

(assert (=> b!3674397 (= res!1492481 (not (isEmpty!23011 rules!3307)))))

(declare-fun e!2275272 () Bool)

(assert (=> b!3674398 (= e!2275272 (and tp!1117769 tp!1117778))))

(assert (=> b!3674399 (= e!2275268 (and tp!1117773 tp!1117774))))

(declare-fun b!3674400 () Bool)

(declare-fun Unit!56545 () Unit!56537)

(assert (=> b!3674400 (= e!2275260 Unit!56545)))

(declare-fun b!3674401 () Bool)

(assert (=> b!3674401 false))

(declare-fun lt!1282389 () Unit!56537)

(declare-fun call!266084 () Unit!56537)

(assert (=> b!3674401 (= lt!1282389 call!266084)))

(declare-fun call!266080 () Bool)

(assert (=> b!3674401 (not call!266080)))

(declare-fun lt!1282417 () C!21368)

(declare-fun lt!1282388 () Unit!56537)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!360 (LexerInterface!5421 List!38885 List!38885 Rule!11464 Rule!11464 C!21368) Unit!56537)

(assert (=> b!3674401 (= lt!1282388 (lemmaSepRuleNotContainsCharContainedInANonSepRule!360 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8660 (_1!22446 lt!1282410)) lt!1282417))))

(declare-fun Unit!56546 () Unit!56537)

(assert (=> b!3674401 (= e!2275277 Unit!56546)))

(declare-fun e!2275250 () Bool)

(assert (=> b!3674402 (= e!2275250 (and tp!1117772 tp!1117776))))

(declare-fun bm!266077 () Bool)

(declare-fun call!266081 () List!38883)

(assert (=> bm!266077 (= call!266081 (usedCharacters!1044 (regex!5832 (rule!8660 (_1!22446 lt!1282410)))))))

(declare-fun e!2275282 () Bool)

(declare-fun b!3674403 () Bool)

(declare-fun tp!1117770 () Bool)

(declare-fun token!511 () Token!11030)

(assert (=> b!3674403 (= e!2275282 (and tp!1117770 (inv!52247 (tag!6626 (rule!8660 token!511))) (inv!52250 (transformation!5832 (rule!8660 token!511))) e!2275272))))

(declare-fun b!3674404 () Bool)

(assert (=> b!3674404 (= e!2275270 e!2275262)))

(declare-fun res!1492491 () Bool)

(assert (=> b!3674404 (=> res!1492491 e!2275262)))

(declare-fun lt!1282378 () List!38883)

(assert (=> b!3674404 (= res!1492491 (contains!7731 lt!1282378 lt!1282408))))

(declare-fun head!7876 (List!38883) C!21368)

(assert (=> b!3674404 (= lt!1282408 (head!7876 suffix!1395))))

(assert (=> b!3674404 (= lt!1282378 (usedCharacters!1044 (regex!5832 rule!403)))))

(declare-fun b!3674405 () Bool)

(declare-fun e!2275254 () Unit!56537)

(declare-fun Unit!56547 () Unit!56537)

(assert (=> b!3674405 (= e!2275254 Unit!56547)))

(declare-fun b!3674406 () Bool)

(declare-fun e!2275261 () Bool)

(assert (=> b!3674406 (= e!2275274 e!2275261)))

(declare-fun res!1492487 () Bool)

(assert (=> b!3674406 (=> (not res!1492487) (not e!2275261))))

(declare-fun lt!1282381 () Option!8293)

(declare-fun isDefined!6525 (Option!8293) Bool)

(assert (=> b!3674406 (= res!1492487 (isDefined!6525 lt!1282381))))

(assert (=> b!3674406 (= lt!1282381 (maxPrefix!2955 thiss!23823 rules!3307 lt!1282365))))

(declare-fun lt!1282366 () BalanceConc!23336)

(assert (=> b!3674406 (= lt!1282365 (list!14398 lt!1282366))))

(assert (=> b!3674406 (= lt!1282366 (charsOf!3846 token!511))))

(declare-fun res!1492490 () Bool)

(assert (=> start!344422 (=> (not res!1492490) (not e!2275274))))

(get-info :version)

(assert (=> start!344422 (= res!1492490 ((_ is Lexer!5419) thiss!23823))))

(assert (=> start!344422 e!2275274))

(declare-fun e!2275269 () Bool)

(assert (=> start!344422 e!2275269))

(assert (=> start!344422 e!2275253))

(assert (=> start!344422 true))

(declare-fun e!2275257 () Bool)

(declare-fun inv!52251 (Token!11030) Bool)

(assert (=> start!344422 (and (inv!52251 token!511) e!2275257)))

(declare-fun e!2275256 () Bool)

(assert (=> start!344422 e!2275256))

(declare-fun e!2275249 () Bool)

(assert (=> start!344422 e!2275249))

(declare-fun bm!266074 () Bool)

(assert (=> bm!266074 (= call!266079 (contains!7731 call!266081 lt!1282408))))

(declare-fun tp!1117765 () Bool)

(declare-fun b!3674407 () Bool)

(declare-fun inv!21 (TokenValue!6062) Bool)

(assert (=> b!3674407 (= e!2275257 (and (inv!21 (value!186672 token!511)) e!2275282 tp!1117765))))

(declare-fun b!3674408 () Bool)

(declare-fun tp!1117767 () Bool)

(assert (=> b!3674408 (= e!2275269 (and e!2275248 tp!1117767))))

(declare-fun b!3674409 () Bool)

(declare-fun e!2275258 () Unit!56537)

(declare-fun Unit!56548 () Unit!56537)

(assert (=> b!3674409 (= e!2275258 Unit!56548)))

(declare-fun lt!1282418 () Unit!56537)

(assert (=> b!3674409 (= lt!1282418 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!780 (regex!5832 rule!403) lt!1282365 lt!1282417))))

(assert (=> b!3674409 false))

(declare-fun b!3674410 () Bool)

(declare-fun e!2275263 () Bool)

(assert (=> b!3674410 (= e!2275265 e!2275263)))

(declare-fun res!1492478 () Bool)

(assert (=> b!3674410 (=> res!1492478 e!2275263)))

(declare-fun lt!1282395 () Option!8293)

(declare-fun lt!1282412 () List!38883)

(assert (=> b!3674410 (= res!1492478 (or (not (= lt!1282412 (_2!22446 lt!1282410))) (not (= lt!1282395 (Some!8292 (tuple2!38625 (_1!22446 lt!1282410) lt!1282412))))))))

(assert (=> b!3674410 (= (_2!22446 lt!1282410) lt!1282412)))

(declare-fun lt!1282394 () Unit!56537)

(declare-fun lemmaSamePrefixThenSameSuffix!1522 (List!38883 List!38883 List!38883 List!38883 List!38883) Unit!56537)

(assert (=> b!3674410 (= lt!1282394 (lemmaSamePrefixThenSameSuffix!1522 lt!1282379 (_2!22446 lt!1282410) lt!1282379 lt!1282412 lt!1282401))))

(declare-fun getSuffix!1748 (List!38883 List!38883) List!38883)

(assert (=> b!3674410 (= lt!1282412 (getSuffix!1748 lt!1282401 lt!1282379))))

(declare-fun lt!1282380 () Int)

(declare-fun lt!1282407 () TokenValue!6062)

(assert (=> b!3674410 (= lt!1282395 (Some!8292 (tuple2!38625 (Token!11031 lt!1282407 (rule!8660 (_1!22446 lt!1282410)) lt!1282380 lt!1282379) (_2!22446 lt!1282410))))))

(declare-fun maxPrefixOneRule!2093 (LexerInterface!5421 Rule!11464 List!38883) Option!8293)

(assert (=> b!3674410 (= lt!1282395 (maxPrefixOneRule!2093 thiss!23823 (rule!8660 (_1!22446 lt!1282410)) lt!1282401))))

(declare-fun size!29633 (List!38883) Int)

(assert (=> b!3674410 (= lt!1282380 (size!29633 lt!1282379))))

(assert (=> b!3674410 (= lt!1282407 (apply!9334 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))) (seqFromList!4381 lt!1282379)))))

(declare-fun lt!1282414 () Unit!56537)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1149 (LexerInterface!5421 List!38885 List!38883 List!38883 List!38883 Rule!11464) Unit!56537)

(assert (=> b!3674410 (= lt!1282414 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1149 thiss!23823 rules!3307 lt!1282379 lt!1282401 (_2!22446 lt!1282410) (rule!8660 (_1!22446 lt!1282410))))))

(declare-fun b!3674411 () Bool)

(declare-fun res!1492476 () Bool)

(assert (=> b!3674411 (=> (not res!1492476) (not e!2275274))))

(declare-fun rulesInvariant!4818 (LexerInterface!5421 List!38885) Bool)

(assert (=> b!3674411 (= res!1492476 (rulesInvariant!4818 thiss!23823 rules!3307))))

(declare-fun b!3674412 () Bool)

(assert (=> b!3674412 (= e!2275281 e!2275277)))

(declare-fun c!635383 () Bool)

(assert (=> b!3674412 (= c!635383 (isSeparator!5832 (rule!8660 (_1!22446 lt!1282410))))))

(declare-fun b!3674413 () Bool)

(declare-fun res!1492479 () Bool)

(assert (=> b!3674413 (=> (not res!1492479) (not e!2275247))))

(assert (=> b!3674413 (= res!1492479 (= (rule!8660 token!511) rule!403))))

(declare-fun b!3674414 () Bool)

(declare-fun Unit!56549 () Unit!56537)

(assert (=> b!3674414 (= e!2275258 Unit!56549)))

(declare-fun b!3674415 () Bool)

(assert (=> b!3674415 (= e!2275263 (= lt!1282401 (++!9648 lt!1282365 (getSuffix!1748 lt!1282401 lt!1282365))))))

(declare-fun lt!1282397 () Unit!56537)

(assert (=> b!3674415 (= lt!1282397 e!2275252)))

(declare-fun c!635387 () Bool)

(assert (=> b!3674415 (= c!635387 (not (= (rule!8660 (_1!22446 lt!1282410)) (rule!8660 token!511))))))

(assert (=> b!3674415 (= lt!1282379 lt!1282365)))

(declare-fun lt!1282368 () Unit!56537)

(declare-fun lemmaIsPrefixSameLengthThenSameList!657 (List!38883 List!38883 List!38883) Unit!56537)

(assert (=> b!3674415 (= lt!1282368 (lemmaIsPrefixSameLengthThenSameList!657 lt!1282379 lt!1282365 lt!1282401))))

(declare-fun lt!1282382 () Unit!56537)

(assert (=> b!3674415 (= lt!1282382 e!2275278)))

(declare-fun c!635384 () Bool)

(declare-fun lt!1282400 () Int)

(assert (=> b!3674415 (= c!635384 (< lt!1282406 lt!1282400))))

(declare-fun lt!1282411 () Unit!56537)

(assert (=> b!3674415 (= lt!1282411 e!2275259)))

(declare-fun c!635388 () Bool)

(assert (=> b!3674415 (= c!635388 (> lt!1282406 lt!1282400))))

(assert (=> b!3674415 (= lt!1282400 (size!29632 lt!1282366))))

(declare-fun lt!1282376 () Unit!56537)

(assert (=> b!3674415 (= lt!1282376 e!2275281)))

(declare-fun c!635382 () Bool)

(assert (=> b!3674415 (= c!635382 (isSeparator!5832 rule!403))))

(declare-fun lt!1282386 () Unit!56537)

(assert (=> b!3674415 (= lt!1282386 e!2275258)))

(declare-fun c!635386 () Bool)

(assert (=> b!3674415 (= c!635386 (not (contains!7731 lt!1282378 lt!1282417)))))

(assert (=> b!3674415 (= lt!1282417 (head!7876 lt!1282379))))

(declare-fun bm!266078 () Bool)

(assert (=> bm!266078 (= call!266080 (contains!7731 call!266083 lt!1282417))))

(declare-fun b!3674416 () Bool)

(declare-fun Unit!56550 () Unit!56537)

(assert (=> b!3674416 (= e!2275252 Unit!56550)))

(declare-fun lt!1282375 () Int)

(declare-fun getIndex!500 (List!38885 Rule!11464) Int)

(assert (=> b!3674416 (= lt!1282375 (getIndex!500 rules!3307 (rule!8660 (_1!22446 lt!1282410))))))

(declare-fun lt!1282416 () Int)

(assert (=> b!3674416 (= lt!1282416 (getIndex!500 rules!3307 rule!403))))

(declare-fun c!635389 () Bool)

(assert (=> b!3674416 (= c!635389 (< lt!1282375 lt!1282416))))

(declare-fun lt!1282403 () Unit!56537)

(assert (=> b!3674416 (= lt!1282403 e!2275254)))

(declare-fun c!635391 () Bool)

(assert (=> b!3674416 (= c!635391 (< lt!1282416 lt!1282375))))

(declare-fun lt!1282413 () Unit!56537)

(assert (=> b!3674416 (= lt!1282413 e!2275271)))

(declare-fun lt!1282391 () Unit!56537)

(declare-fun lemmaSameIndexThenSameElement!232 (List!38885 Rule!11464 Rule!11464) Unit!56537)

(assert (=> b!3674416 (= lt!1282391 (lemmaSameIndexThenSameElement!232 rules!3307 (rule!8660 (_1!22446 lt!1282410)) rule!403))))

(assert (=> b!3674416 false))

(declare-fun b!3674417 () Bool)

(assert (=> b!3674417 e!2275267))

(declare-fun res!1492483 () Bool)

(assert (=> b!3674417 (=> (not res!1492483) (not e!2275267))))

(assert (=> b!3674417 (= res!1492483 (not (matchR!5160 (regex!5832 (rule!8660 (_1!22446 lt!1282410))) lt!1282365)))))

(declare-fun lt!1282409 () Unit!56537)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!240 (LexerInterface!5421 List!38885 Rule!11464 List!38883 List!38883 Rule!11464) Unit!56537)

(assert (=> b!3674417 (= lt!1282409 (lemmaMaxPrefNoSmallerRuleMatches!240 thiss!23823 rules!3307 rule!403 lt!1282365 lt!1282365 (rule!8660 (_1!22446 lt!1282410))))))

(assert (=> b!3674417 (isEmpty!23010 (getSuffix!1748 lt!1282365 lt!1282365))))

(declare-fun lt!1282396 () Unit!56537)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!212 (List!38883) Unit!56537)

(assert (=> b!3674417 (= lt!1282396 (lemmaGetSuffixOnListWithItSelfIsEmpty!212 lt!1282365))))

(declare-fun Unit!56551 () Unit!56537)

(assert (=> b!3674417 (= e!2275254 Unit!56551)))

(declare-fun bm!266079 () Bool)

(assert (=> bm!266079 (= call!266084 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!780 (regex!5832 (rule!8660 (_1!22446 lt!1282410))) lt!1282379 lt!1282417))))

(declare-fun b!3674418 () Bool)

(declare-fun res!1492477 () Bool)

(assert (=> b!3674418 (=> res!1492477 e!2275264)))

(assert (=> b!3674418 (= res!1492477 (not (matchR!5160 (regex!5832 (rule!8660 (_1!22446 lt!1282410))) lt!1282379)))))

(declare-fun tp!1117768 () Bool)

(declare-fun b!3674419 () Bool)

(assert (=> b!3674419 (= e!2275256 (and tp!1117768 (inv!52247 (tag!6626 rule!403)) (inv!52250 (transformation!5832 rule!403)) e!2275246))))

(declare-fun b!3674420 () Bool)

(assert (=> b!3674420 false))

(declare-fun lt!1282398 () Unit!56537)

(assert (=> b!3674420 (= lt!1282398 call!266084)))

(assert (=> b!3674420 (not call!266080)))

(declare-fun lt!1282373 () Unit!56537)

(assert (=> b!3674420 (= lt!1282373 (lemmaNonSepRuleNotContainsCharContainedInASepRule!478 thiss!23823 rules!3307 rules!3307 (rule!8660 (_1!22446 lt!1282410)) rule!403 lt!1282417))))

(declare-fun Unit!56552 () Unit!56537)

(assert (=> b!3674420 (= e!2275260 Unit!56552)))

(declare-fun b!3674421 () Bool)

(declare-fun res!1492473 () Bool)

(assert (=> b!3674421 (=> (not res!1492473) (not e!2275274))))

(assert (=> b!3674421 (= res!1492473 (contains!7732 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3674422 () Bool)

(assert (=> b!3674422 (= e!2275261 e!2275247)))

(declare-fun res!1492471 () Bool)

(assert (=> b!3674422 (=> (not res!1492471) (not e!2275247))))

(assert (=> b!3674422 (= res!1492471 (= (_1!22446 lt!1282369) token!511))))

(assert (=> b!3674422 (= lt!1282369 (get!12818 lt!1282381))))

(declare-fun b!3674423 () Bool)

(assert (=> b!3674423 false))

(declare-fun lt!1282387 () Unit!56537)

(assert (=> b!3674423 (= lt!1282387 (lemmaMaxPrefNoSmallerRuleMatches!240 thiss!23823 rules!3307 (rule!8660 (_1!22446 lt!1282410)) lt!1282365 lt!1282401 rule!403))))

(declare-fun Unit!56553 () Unit!56537)

(assert (=> b!3674423 (= e!2275271 Unit!56553)))

(declare-fun b!3674424 () Bool)

(declare-fun tp!1117766 () Bool)

(assert (=> b!3674424 (= e!2275249 (and tp!1117766 (inv!52247 (tag!6626 anOtherTypeRule!33)) (inv!52250 (transformation!5832 anOtherTypeRule!33)) e!2275250))))

(declare-fun b!3674425 () Bool)

(assert (=> b!3674425 false))

(declare-fun lt!1282399 () Unit!56537)

(assert (=> b!3674425 (= lt!1282399 call!266082)))

(assert (=> b!3674425 (not call!266079)))

(declare-fun lt!1282402 () Unit!56537)

(assert (=> b!3674425 (= lt!1282402 (lemmaSepRuleNotContainsCharContainedInANonSepRule!360 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8660 (_1!22446 lt!1282410)) lt!1282408))))

(declare-fun Unit!56554 () Unit!56537)

(assert (=> b!3674425 (= e!2275251 Unit!56554)))

(declare-fun b!3674426 () Bool)

(declare-fun Unit!56555 () Unit!56537)

(assert (=> b!3674426 (= e!2275278 Unit!56555)))

(declare-fun lt!1282415 () Unit!56537)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!374 (LexerInterface!5421 List!38885 Rule!11464 List!38883 List!38883 List!38883 Rule!11464) Unit!56537)

(assert (=> b!3674426 (= lt!1282415 (lemmaMaxPrefixOutputsMaxPrefix!374 thiss!23823 rules!3307 (rule!8660 (_1!22446 lt!1282410)) lt!1282379 lt!1282401 lt!1282365 rule!403))))

(assert (=> b!3674426 false))

(assert (= (and start!344422 res!1492490) b!3674397))

(assert (= (and b!3674397 res!1492481) b!3674411))

(assert (= (and b!3674411 res!1492476) b!3674386))

(assert (= (and b!3674386 res!1492486) b!3674421))

(assert (= (and b!3674421 res!1492473) b!3674390))

(assert (= (and b!3674390 res!1492484) b!3674406))

(assert (= (and b!3674406 res!1492487) b!3674422))

(assert (= (and b!3674422 res!1492471) b!3674392))

(assert (= (and b!3674392 res!1492482) b!3674413))

(assert (= (and b!3674413 res!1492479) b!3674389))

(assert (= (and b!3674389 (not res!1492489)) b!3674384))

(assert (= (and b!3674384 (not res!1492485)) b!3674404))

(assert (= (and b!3674404 (not res!1492491)) b!3674382))

(assert (= (and b!3674382 (not res!1492488)) b!3674387))

(assert (= (and b!3674387 (not res!1492480)) b!3674374))

(assert (= (and b!3674374 res!1492470) b!3674395))

(assert (= (and b!3674395 res!1492475) b!3674391))

(assert (= (and b!3674374 (not res!1492474)) b!3674418))

(assert (= (and b!3674418 (not res!1492477)) b!3674388))

(assert (= (and b!3674388 (not res!1492472)) b!3674410))

(assert (= (and b!3674410 (not res!1492478)) b!3674415))

(assert (= (and b!3674415 c!635386) b!3674409))

(assert (= (and b!3674415 (not c!635386)) b!3674414))

(assert (= (and b!3674415 c!635382) b!3674378))

(assert (= (and b!3674415 (not c!635382)) b!3674412))

(assert (= (and b!3674378 c!635385) b!3674420))

(assert (= (and b!3674378 (not c!635385)) b!3674400))

(assert (= (and b!3674412 c!635383) b!3674401))

(assert (= (and b!3674412 (not c!635383)) b!3674383))

(assert (= (or b!3674420 b!3674401) bm!266079))

(assert (= (or b!3674420 b!3674401) bm!266075))

(assert (= (or b!3674420 b!3674401) bm!266078))

(assert (= (and b!3674415 c!635388) b!3674376))

(assert (= (and b!3674415 (not c!635388)) b!3674379))

(assert (= (and b!3674376 c!635390) b!3674425))

(assert (= (and b!3674376 (not c!635390)) b!3674396))

(assert (= (or b!3674425 b!3674396) bm!266076))

(assert (= (or b!3674425 b!3674396) bm!266077))

(assert (= (or b!3674425 b!3674396) bm!266074))

(assert (= (and b!3674415 c!635384) b!3674426))

(assert (= (and b!3674415 (not c!635384)) b!3674377))

(assert (= (and b!3674415 c!635387) b!3674416))

(assert (= (and b!3674415 (not c!635387)) b!3674375))

(assert (= (and b!3674416 c!635389) b!3674417))

(assert (= (and b!3674416 (not c!635389)) b!3674405))

(assert (= (and b!3674417 res!1492483) b!3674380))

(assert (= (and b!3674416 c!635391) b!3674423))

(assert (= (and b!3674416 (not c!635391)) b!3674394))

(assert (= b!3674381 b!3674399))

(assert (= b!3674408 b!3674381))

(assert (= (and start!344422 ((_ is Cons!38761) rules!3307)) b!3674408))

(assert (= (and start!344422 ((_ is Cons!38759) suffix!1395)) b!3674385))

(assert (= b!3674403 b!3674398))

(assert (= b!3674407 b!3674403))

(assert (= start!344422 b!3674407))

(assert (= b!3674419 b!3674393))

(assert (= start!344422 b!3674419))

(assert (= b!3674424 b!3674402))

(assert (= start!344422 b!3674424))

(declare-fun m!4183525 () Bool)

(assert (=> b!3674416 m!4183525))

(declare-fun m!4183527 () Bool)

(assert (=> b!3674416 m!4183527))

(declare-fun m!4183529 () Bool)

(assert (=> b!3674416 m!4183529))

(declare-fun m!4183531 () Bool)

(assert (=> b!3674409 m!4183531))

(declare-fun m!4183533 () Bool)

(assert (=> b!3674374 m!4183533))

(declare-fun m!4183535 () Bool)

(assert (=> b!3674374 m!4183535))

(declare-fun m!4183537 () Bool)

(assert (=> b!3674374 m!4183537))

(declare-fun m!4183539 () Bool)

(assert (=> b!3674374 m!4183539))

(declare-fun m!4183541 () Bool)

(assert (=> b!3674374 m!4183541))

(declare-fun m!4183543 () Bool)

(assert (=> b!3674374 m!4183543))

(declare-fun m!4183545 () Bool)

(assert (=> b!3674374 m!4183545))

(declare-fun m!4183547 () Bool)

(assert (=> b!3674374 m!4183547))

(declare-fun m!4183549 () Bool)

(assert (=> b!3674374 m!4183549))

(declare-fun m!4183551 () Bool)

(assert (=> b!3674374 m!4183551))

(declare-fun m!4183553 () Bool)

(assert (=> b!3674374 m!4183553))

(declare-fun m!4183555 () Bool)

(assert (=> b!3674374 m!4183555))

(declare-fun m!4183557 () Bool)

(assert (=> b!3674374 m!4183557))

(assert (=> b!3674374 m!4183539))

(declare-fun m!4183559 () Bool)

(assert (=> b!3674374 m!4183559))

(declare-fun m!4183561 () Bool)

(assert (=> b!3674374 m!4183561))

(declare-fun m!4183563 () Bool)

(assert (=> b!3674404 m!4183563))

(declare-fun m!4183565 () Bool)

(assert (=> b!3674404 m!4183565))

(declare-fun m!4183567 () Bool)

(assert (=> b!3674404 m!4183567))

(declare-fun m!4183569 () Bool)

(assert (=> b!3674426 m!4183569))

(declare-fun m!4183571 () Bool)

(assert (=> b!3674423 m!4183571))

(declare-fun m!4183573 () Bool)

(assert (=> b!3674406 m!4183573))

(declare-fun m!4183575 () Bool)

(assert (=> b!3674406 m!4183575))

(declare-fun m!4183577 () Bool)

(assert (=> b!3674406 m!4183577))

(declare-fun m!4183579 () Bool)

(assert (=> b!3674406 m!4183579))

(declare-fun m!4183581 () Bool)

(assert (=> b!3674424 m!4183581))

(declare-fun m!4183583 () Bool)

(assert (=> b!3674424 m!4183583))

(declare-fun m!4183585 () Bool)

(assert (=> b!3674415 m!4183585))

(declare-fun m!4183587 () Bool)

(assert (=> b!3674415 m!4183587))

(declare-fun m!4183589 () Bool)

(assert (=> b!3674415 m!4183589))

(declare-fun m!4183591 () Bool)

(assert (=> b!3674415 m!4183591))

(declare-fun m!4183593 () Bool)

(assert (=> b!3674415 m!4183593))

(assert (=> b!3674415 m!4183587))

(declare-fun m!4183595 () Bool)

(assert (=> b!3674415 m!4183595))

(declare-fun m!4183597 () Bool)

(assert (=> b!3674386 m!4183597))

(declare-fun m!4183599 () Bool)

(assert (=> b!3674417 m!4183599))

(declare-fun m!4183601 () Bool)

(assert (=> b!3674417 m!4183601))

(declare-fun m!4183603 () Bool)

(assert (=> b!3674417 m!4183603))

(declare-fun m!4183605 () Bool)

(assert (=> b!3674417 m!4183605))

(assert (=> b!3674417 m!4183599))

(declare-fun m!4183607 () Bool)

(assert (=> b!3674417 m!4183607))

(declare-fun m!4183609 () Bool)

(assert (=> bm!266074 m!4183609))

(declare-fun m!4183611 () Bool)

(assert (=> b!3674376 m!4183611))

(declare-fun m!4183613 () Bool)

(assert (=> b!3674376 m!4183613))

(declare-fun m!4183615 () Bool)

(assert (=> start!344422 m!4183615))

(declare-fun m!4183617 () Bool)

(assert (=> bm!266075 m!4183617))

(declare-fun m!4183619 () Bool)

(assert (=> b!3674421 m!4183619))

(declare-fun m!4183621 () Bool)

(assert (=> b!3674401 m!4183621))

(declare-fun m!4183623 () Bool)

(assert (=> b!3674411 m!4183623))

(declare-fun m!4183625 () Bool)

(assert (=> b!3674387 m!4183625))

(declare-fun m!4183627 () Bool)

(assert (=> b!3674422 m!4183627))

(declare-fun m!4183629 () Bool)

(assert (=> b!3674388 m!4183629))

(declare-fun m!4183631 () Bool)

(assert (=> b!3674388 m!4183631))

(declare-fun m!4183633 () Bool)

(assert (=> b!3674388 m!4183633))

(declare-fun m!4183635 () Bool)

(assert (=> b!3674388 m!4183635))

(assert (=> b!3674388 m!4183633))

(declare-fun m!4183637 () Bool)

(assert (=> b!3674388 m!4183637))

(declare-fun m!4183639 () Bool)

(assert (=> b!3674388 m!4183639))

(declare-fun m!4183641 () Bool)

(assert (=> b!3674384 m!4183641))

(declare-fun m!4183643 () Bool)

(assert (=> b!3674403 m!4183643))

(declare-fun m!4183645 () Bool)

(assert (=> b!3674403 m!4183645))

(declare-fun m!4183647 () Bool)

(assert (=> b!3674425 m!4183647))

(declare-fun m!4183649 () Bool)

(assert (=> b!3674382 m!4183649))

(assert (=> b!3674382 m!4183649))

(declare-fun m!4183651 () Bool)

(assert (=> b!3674382 m!4183651))

(declare-fun m!4183653 () Bool)

(assert (=> b!3674420 m!4183653))

(declare-fun m!4183655 () Bool)

(assert (=> b!3674381 m!4183655))

(declare-fun m!4183657 () Bool)

(assert (=> b!3674381 m!4183657))

(declare-fun m!4183659 () Bool)

(assert (=> b!3674392 m!4183659))

(declare-fun m!4183661 () Bool)

(assert (=> b!3674418 m!4183661))

(declare-fun m!4183663 () Bool)

(assert (=> b!3674397 m!4183663))

(declare-fun m!4183665 () Bool)

(assert (=> bm!266079 m!4183665))

(declare-fun m!4183667 () Bool)

(assert (=> b!3674396 m!4183667))

(assert (=> b!3674395 m!4183549))

(assert (=> b!3674395 m!4183549))

(declare-fun m!4183669 () Bool)

(assert (=> b!3674395 m!4183669))

(assert (=> b!3674395 m!4183669))

(declare-fun m!4183671 () Bool)

(assert (=> b!3674395 m!4183671))

(declare-fun m!4183673 () Bool)

(assert (=> b!3674395 m!4183673))

(declare-fun m!4183675 () Bool)

(assert (=> b!3674407 m!4183675))

(assert (=> bm!266077 m!4183617))

(declare-fun m!4183677 () Bool)

(assert (=> bm!266076 m!4183677))

(declare-fun m!4183679 () Bool)

(assert (=> b!3674410 m!4183679))

(declare-fun m!4183681 () Bool)

(assert (=> b!3674410 m!4183681))

(declare-fun m!4183683 () Bool)

(assert (=> b!3674410 m!4183683))

(declare-fun m!4183685 () Bool)

(assert (=> b!3674410 m!4183685))

(declare-fun m!4183687 () Bool)

(assert (=> b!3674410 m!4183687))

(assert (=> b!3674410 m!4183679))

(declare-fun m!4183689 () Bool)

(assert (=> b!3674410 m!4183689))

(declare-fun m!4183691 () Bool)

(assert (=> b!3674410 m!4183691))

(declare-fun m!4183693 () Bool)

(assert (=> bm!266078 m!4183693))

(declare-fun m!4183695 () Bool)

(assert (=> b!3674389 m!4183695))

(declare-fun m!4183697 () Bool)

(assert (=> b!3674389 m!4183697))

(declare-fun m!4183699 () Bool)

(assert (=> b!3674389 m!4183699))

(declare-fun m!4183701 () Bool)

(assert (=> b!3674419 m!4183701))

(declare-fun m!4183703 () Bool)

(assert (=> b!3674419 m!4183703))

(check-sat (not b!3674418) (not bm!266076) (not b!3674386) (not b!3674420) (not b!3674382) (not b!3674424) (not b!3674409) b_and!273919 (not b!3674416) tp_is_empty!18265 (not b!3674376) b_and!273921 (not b_next!97937) (not b!3674423) (not b!3674381) b_and!273923 b_and!273915 (not b!3674389) (not b!3674392) (not b!3674385) (not b!3674396) (not b!3674415) (not b!3674426) (not b!3674410) (not b!3674408) (not b!3674417) (not bm!266077) (not b_next!97935) (not b_next!97941) (not bm!266074) b_and!273927 (not bm!266079) (not bm!266078) b_and!273925 (not b_next!97939) (not b_next!97943) (not start!344422) (not b_next!97931) (not b!3674395) (not b!3674374) b_and!273929 (not b!3674388) b_and!273917 (not b_next!97933) (not b!3674384) (not b!3674411) (not b!3674387) (not b!3674406) (not b!3674419) (not b!3674404) (not b!3674407) (not b_next!97929) (not bm!266075) (not b!3674421) (not b!3674397) (not b!3674401) (not b!3674422) (not b!3674403) (not b!3674425))
(check-sat b_and!273919 b_and!273927 (not b_next!97931) b_and!273929 (not b_next!97929) b_and!273921 (not b_next!97937) b_and!273923 b_and!273915 (not b_next!97935) (not b_next!97941) (not b_next!97943) b_and!273925 (not b_next!97939) b_and!273917 (not b_next!97933))
(get-model)

(declare-fun d!1078763 () Bool)

(assert (=> d!1078763 (not (matchR!5160 (regex!5832 rule!403) lt!1282365))))

(declare-fun lt!1282471 () Unit!56537)

(declare-fun choose!21883 (LexerInterface!5421 List!38885 Rule!11464 List!38883 List!38883 Rule!11464) Unit!56537)

(assert (=> d!1078763 (= lt!1282471 (choose!21883 thiss!23823 rules!3307 (rule!8660 (_1!22446 lt!1282410)) lt!1282365 lt!1282401 rule!403))))

(assert (=> d!1078763 (isPrefix!3195 lt!1282365 lt!1282401)))

(assert (=> d!1078763 (= (lemmaMaxPrefNoSmallerRuleMatches!240 thiss!23823 rules!3307 (rule!8660 (_1!22446 lt!1282410)) lt!1282365 lt!1282401 rule!403) lt!1282471)))

(declare-fun bs!573290 () Bool)

(assert (= bs!573290 d!1078763))

(assert (=> bs!573290 m!4183695))

(declare-fun m!4183833 () Bool)

(assert (=> bs!573290 m!4183833))

(assert (=> bs!573290 m!4183557))

(assert (=> b!3674423 d!1078763))

(declare-fun d!1078777 () Bool)

(declare-fun lt!1282477 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5614 (List!38883) (InoxSet C!21368))

(assert (=> d!1078777 (= lt!1282477 (select (content!5614 lt!1282378) lt!1282408))))

(declare-fun e!2275373 () Bool)

(assert (=> d!1078777 (= lt!1282477 e!2275373)))

(declare-fun res!1492570 () Bool)

(assert (=> d!1078777 (=> (not res!1492570) (not e!2275373))))

(assert (=> d!1078777 (= res!1492570 ((_ is Cons!38759) lt!1282378))))

(assert (=> d!1078777 (= (contains!7731 lt!1282378 lt!1282408) lt!1282477)))

(declare-fun b!3674571 () Bool)

(declare-fun e!2275374 () Bool)

(assert (=> b!3674571 (= e!2275373 e!2275374)))

(declare-fun res!1492571 () Bool)

(assert (=> b!3674571 (=> res!1492571 e!2275374)))

(assert (=> b!3674571 (= res!1492571 (= (h!44179 lt!1282378) lt!1282408))))

(declare-fun b!3674572 () Bool)

(assert (=> b!3674572 (= e!2275374 (contains!7731 (t!299958 lt!1282378) lt!1282408))))

(assert (= (and d!1078777 res!1492570) b!3674571))

(assert (= (and b!3674571 (not res!1492571)) b!3674572))

(declare-fun m!4183843 () Bool)

(assert (=> d!1078777 m!4183843))

(declare-fun m!4183845 () Bool)

(assert (=> d!1078777 m!4183845))

(declare-fun m!4183847 () Bool)

(assert (=> b!3674572 m!4183847))

(assert (=> b!3674404 d!1078777))

(declare-fun d!1078781 () Bool)

(assert (=> d!1078781 (= (head!7876 suffix!1395) (h!44179 suffix!1395))))

(assert (=> b!3674404 d!1078781))

(declare-fun b!3674595 () Bool)

(declare-fun e!2275388 () List!38883)

(declare-fun call!266110 () List!38883)

(assert (=> b!3674595 (= e!2275388 call!266110)))

(declare-fun d!1078783 () Bool)

(declare-fun c!635439 () Bool)

(assert (=> d!1078783 (= c!635439 (or ((_ is EmptyExpr!10591) (regex!5832 rule!403)) ((_ is EmptyLang!10591) (regex!5832 rule!403))))))

(declare-fun e!2275386 () List!38883)

(assert (=> d!1078783 (= (usedCharacters!1044 (regex!5832 rule!403)) e!2275386)))

(declare-fun bm!266103 () Bool)

(declare-fun call!266109 () List!38883)

(declare-fun c!635440 () Bool)

(assert (=> bm!266103 (= call!266109 (usedCharacters!1044 (ite c!635440 (regTwo!21695 (regex!5832 rule!403)) (regOne!21694 (regex!5832 rule!403)))))))

(declare-fun bm!266104 () Bool)

(declare-fun c!635438 () Bool)

(declare-fun call!266111 () List!38883)

(assert (=> bm!266104 (= call!266111 (usedCharacters!1044 (ite c!635438 (reg!10920 (regex!5832 rule!403)) (ite c!635440 (regOne!21695 (regex!5832 rule!403)) (regTwo!21694 (regex!5832 rule!403))))))))

(declare-fun bm!266105 () Bool)

(declare-fun call!266108 () List!38883)

(assert (=> bm!266105 (= call!266108 call!266111)))

(declare-fun b!3674596 () Bool)

(assert (=> b!3674596 (= c!635438 ((_ is Star!10591) (regex!5832 rule!403)))))

(declare-fun e!2275389 () List!38883)

(declare-fun e!2275387 () List!38883)

(assert (=> b!3674596 (= e!2275389 e!2275387)))

(declare-fun b!3674597 () Bool)

(assert (=> b!3674597 (= e!2275387 call!266111)))

(declare-fun b!3674598 () Bool)

(assert (=> b!3674598 (= e!2275386 e!2275389)))

(declare-fun c!635441 () Bool)

(assert (=> b!3674598 (= c!635441 ((_ is ElementMatch!10591) (regex!5832 rule!403)))))

(declare-fun b!3674599 () Bool)

(assert (=> b!3674599 (= e!2275386 Nil!38759)))

(declare-fun bm!266106 () Bool)

(assert (=> bm!266106 (= call!266110 (++!9648 (ite c!635440 call!266108 call!266109) (ite c!635440 call!266109 call!266108)))))

(declare-fun b!3674600 () Bool)

(assert (=> b!3674600 (= e!2275388 call!266110)))

(declare-fun b!3674601 () Bool)

(assert (=> b!3674601 (= e!2275389 (Cons!38759 (c!635392 (regex!5832 rule!403)) Nil!38759))))

(declare-fun b!3674602 () Bool)

(assert (=> b!3674602 (= e!2275387 e!2275388)))

(assert (=> b!3674602 (= c!635440 ((_ is Union!10591) (regex!5832 rule!403)))))

(assert (= (and d!1078783 c!635439) b!3674599))

(assert (= (and d!1078783 (not c!635439)) b!3674598))

(assert (= (and b!3674598 c!635441) b!3674601))

(assert (= (and b!3674598 (not c!635441)) b!3674596))

(assert (= (and b!3674596 c!635438) b!3674597))

(assert (= (and b!3674596 (not c!635438)) b!3674602))

(assert (= (and b!3674602 c!635440) b!3674600))

(assert (= (and b!3674602 (not c!635440)) b!3674595))

(assert (= (or b!3674600 b!3674595) bm!266105))

(assert (= (or b!3674600 b!3674595) bm!266103))

(assert (= (or b!3674600 b!3674595) bm!266106))

(assert (= (or b!3674597 bm!266105) bm!266104))

(declare-fun m!4183857 () Bool)

(assert (=> bm!266103 m!4183857))

(declare-fun m!4183859 () Bool)

(assert (=> bm!266104 m!4183859))

(declare-fun m!4183861 () Bool)

(assert (=> bm!266106 m!4183861))

(assert (=> b!3674404 d!1078783))

(declare-fun d!1078787 () Bool)

(assert (=> d!1078787 (= (inv!52247 (tag!6626 anOtherTypeRule!33)) (= (mod (str.len (value!186671 (tag!6626 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3674424 d!1078787))

(declare-fun d!1078789 () Bool)

(declare-fun res!1492594 () Bool)

(declare-fun e!2275398 () Bool)

(assert (=> d!1078789 (=> (not res!1492594) (not e!2275398))))

(declare-fun semiInverseModEq!2487 (Int Int) Bool)

(assert (=> d!1078789 (= res!1492594 (semiInverseModEq!2487 (toChars!7987 (transformation!5832 anOtherTypeRule!33)) (toValue!8128 (transformation!5832 anOtherTypeRule!33))))))

(assert (=> d!1078789 (= (inv!52250 (transformation!5832 anOtherTypeRule!33)) e!2275398)))

(declare-fun b!3674623 () Bool)

(declare-fun equivClasses!2386 (Int Int) Bool)

(assert (=> b!3674623 (= e!2275398 (equivClasses!2386 (toChars!7987 (transformation!5832 anOtherTypeRule!33)) (toValue!8128 (transformation!5832 anOtherTypeRule!33))))))

(assert (= (and d!1078789 res!1492594) b!3674623))

(declare-fun m!4183863 () Bool)

(assert (=> d!1078789 m!4183863))

(declare-fun m!4183865 () Bool)

(assert (=> b!3674623 m!4183865))

(assert (=> b!3674424 d!1078789))

(declare-fun d!1078791 () Bool)

(assert (=> d!1078791 (= (get!12818 lt!1282381) (v!38212 lt!1282381))))

(assert (=> b!3674422 d!1078791))

(declare-fun d!1078793 () Bool)

(assert (=> d!1078793 (= (inv!52247 (tag!6626 (rule!8660 token!511))) (= (mod (str.len (value!186671 (tag!6626 (rule!8660 token!511)))) 2) 0))))

(assert (=> b!3674403 d!1078793))

(declare-fun d!1078795 () Bool)

(declare-fun res!1492595 () Bool)

(declare-fun e!2275399 () Bool)

(assert (=> d!1078795 (=> (not res!1492595) (not e!2275399))))

(assert (=> d!1078795 (= res!1492595 (semiInverseModEq!2487 (toChars!7987 (transformation!5832 (rule!8660 token!511))) (toValue!8128 (transformation!5832 (rule!8660 token!511)))))))

(assert (=> d!1078795 (= (inv!52250 (transformation!5832 (rule!8660 token!511))) e!2275399)))

(declare-fun b!3674624 () Bool)

(assert (=> b!3674624 (= e!2275399 (equivClasses!2386 (toChars!7987 (transformation!5832 (rule!8660 token!511))) (toValue!8128 (transformation!5832 (rule!8660 token!511)))))))

(assert (= (and d!1078795 res!1492595) b!3674624))

(declare-fun m!4183867 () Bool)

(assert (=> d!1078795 m!4183867))

(declare-fun m!4183869 () Bool)

(assert (=> b!3674624 m!4183869))

(assert (=> b!3674403 d!1078795))

(declare-fun d!1078797 () Bool)

(assert (=> d!1078797 (= (isEmpty!23010 suffix!1395) ((_ is Nil!38759) suffix!1395))))

(assert (=> b!3674384 d!1078797))

(declare-fun b!3674625 () Bool)

(declare-fun e!2275402 () List!38883)

(declare-fun call!266116 () List!38883)

(assert (=> b!3674625 (= e!2275402 call!266116)))

(declare-fun d!1078799 () Bool)

(declare-fun c!635445 () Bool)

(assert (=> d!1078799 (= c!635445 (or ((_ is EmptyExpr!10591) (regex!5832 (rule!8660 (_1!22446 lt!1282410)))) ((_ is EmptyLang!10591) (regex!5832 (rule!8660 (_1!22446 lt!1282410))))))))

(declare-fun e!2275400 () List!38883)

(assert (=> d!1078799 (= (usedCharacters!1044 (regex!5832 (rule!8660 (_1!22446 lt!1282410)))) e!2275400)))

(declare-fun bm!266109 () Bool)

(declare-fun call!266115 () List!38883)

(declare-fun c!635446 () Bool)

(assert (=> bm!266109 (= call!266115 (usedCharacters!1044 (ite c!635446 (regTwo!21695 (regex!5832 (rule!8660 (_1!22446 lt!1282410)))) (regOne!21694 (regex!5832 (rule!8660 (_1!22446 lt!1282410)))))))))

(declare-fun call!266117 () List!38883)

(declare-fun c!635444 () Bool)

(declare-fun bm!266110 () Bool)

(assert (=> bm!266110 (= call!266117 (usedCharacters!1044 (ite c!635444 (reg!10920 (regex!5832 (rule!8660 (_1!22446 lt!1282410)))) (ite c!635446 (regOne!21695 (regex!5832 (rule!8660 (_1!22446 lt!1282410)))) (regTwo!21694 (regex!5832 (rule!8660 (_1!22446 lt!1282410))))))))))

(declare-fun bm!266111 () Bool)

(declare-fun call!266114 () List!38883)

(assert (=> bm!266111 (= call!266114 call!266117)))

(declare-fun b!3674626 () Bool)

(assert (=> b!3674626 (= c!635444 ((_ is Star!10591) (regex!5832 (rule!8660 (_1!22446 lt!1282410)))))))

(declare-fun e!2275403 () List!38883)

(declare-fun e!2275401 () List!38883)

(assert (=> b!3674626 (= e!2275403 e!2275401)))

(declare-fun b!3674627 () Bool)

(assert (=> b!3674627 (= e!2275401 call!266117)))

(declare-fun b!3674628 () Bool)

(assert (=> b!3674628 (= e!2275400 e!2275403)))

(declare-fun c!635447 () Bool)

(assert (=> b!3674628 (= c!635447 ((_ is ElementMatch!10591) (regex!5832 (rule!8660 (_1!22446 lt!1282410)))))))

(declare-fun b!3674629 () Bool)

(assert (=> b!3674629 (= e!2275400 Nil!38759)))

(declare-fun bm!266112 () Bool)

(assert (=> bm!266112 (= call!266116 (++!9648 (ite c!635446 call!266114 call!266115) (ite c!635446 call!266115 call!266114)))))

(declare-fun b!3674630 () Bool)

(assert (=> b!3674630 (= e!2275402 call!266116)))

(declare-fun b!3674631 () Bool)

(assert (=> b!3674631 (= e!2275403 (Cons!38759 (c!635392 (regex!5832 (rule!8660 (_1!22446 lt!1282410)))) Nil!38759))))

(declare-fun b!3674632 () Bool)

(assert (=> b!3674632 (= e!2275401 e!2275402)))

(assert (=> b!3674632 (= c!635446 ((_ is Union!10591) (regex!5832 (rule!8660 (_1!22446 lt!1282410)))))))

(assert (= (and d!1078799 c!635445) b!3674629))

(assert (= (and d!1078799 (not c!635445)) b!3674628))

(assert (= (and b!3674628 c!635447) b!3674631))

(assert (= (and b!3674628 (not c!635447)) b!3674626))

(assert (= (and b!3674626 c!635444) b!3674627))

(assert (= (and b!3674626 (not c!635444)) b!3674632))

(assert (= (and b!3674632 c!635446) b!3674630))

(assert (= (and b!3674632 (not c!635446)) b!3674625))

(assert (= (or b!3674630 b!3674625) bm!266111))

(assert (= (or b!3674630 b!3674625) bm!266109))

(assert (= (or b!3674630 b!3674625) bm!266112))

(assert (= (or b!3674627 bm!266111) bm!266110))

(declare-fun m!4183871 () Bool)

(assert (=> bm!266109 m!4183871))

(declare-fun m!4183873 () Bool)

(assert (=> bm!266110 m!4183873))

(declare-fun m!4183875 () Bool)

(assert (=> bm!266112 m!4183875))

(assert (=> bm!266075 d!1078799))

(declare-fun d!1078801 () Bool)

(declare-fun lt!1282503 () Bool)

(declare-fun content!5615 (List!38885) (InoxSet Rule!11464))

(assert (=> d!1078801 (= lt!1282503 (select (content!5615 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2275422 () Bool)

(assert (=> d!1078801 (= lt!1282503 e!2275422)))

(declare-fun res!1492620 () Bool)

(assert (=> d!1078801 (=> (not res!1492620) (not e!2275422))))

(assert (=> d!1078801 (= res!1492620 ((_ is Cons!38761) rules!3307))))

(assert (=> d!1078801 (= (contains!7732 rules!3307 anOtherTypeRule!33) lt!1282503)))

(declare-fun b!3674662 () Bool)

(declare-fun e!2275421 () Bool)

(assert (=> b!3674662 (= e!2275422 e!2275421)))

(declare-fun res!1492619 () Bool)

(assert (=> b!3674662 (=> res!1492619 e!2275421)))

(assert (=> b!3674662 (= res!1492619 (= (h!44181 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3674663 () Bool)

(assert (=> b!3674663 (= e!2275421 (contains!7732 (t!299960 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1078801 res!1492620) b!3674662))

(assert (= (and b!3674662 (not res!1492619)) b!3674663))

(declare-fun m!4183943 () Bool)

(assert (=> d!1078801 m!4183943))

(declare-fun m!4183945 () Bool)

(assert (=> d!1078801 m!4183945))

(declare-fun m!4183947 () Bool)

(assert (=> b!3674663 m!4183947))

(assert (=> b!3674421 d!1078801))

(assert (=> bm!266077 d!1078799))

(declare-fun d!1078815 () Bool)

(assert (=> d!1078815 (= (inv!52247 (tag!6626 rule!403)) (= (mod (str.len (value!186671 (tag!6626 rule!403))) 2) 0))))

(assert (=> b!3674419 d!1078815))

(declare-fun d!1078817 () Bool)

(declare-fun res!1492621 () Bool)

(declare-fun e!2275423 () Bool)

(assert (=> d!1078817 (=> (not res!1492621) (not e!2275423))))

(assert (=> d!1078817 (= res!1492621 (semiInverseModEq!2487 (toChars!7987 (transformation!5832 rule!403)) (toValue!8128 (transformation!5832 rule!403))))))

(assert (=> d!1078817 (= (inv!52250 (transformation!5832 rule!403)) e!2275423)))

(declare-fun b!3674664 () Bool)

(assert (=> b!3674664 (= e!2275423 (equivClasses!2386 (toChars!7987 (transformation!5832 rule!403)) (toValue!8128 (transformation!5832 rule!403))))))

(assert (= (and d!1078817 res!1492621) b!3674664))

(declare-fun m!4183949 () Bool)

(assert (=> d!1078817 m!4183949))

(declare-fun m!4183951 () Bool)

(assert (=> b!3674664 m!4183951))

(assert (=> b!3674419 d!1078817))

(declare-fun d!1078819 () Bool)

(assert (=> d!1078819 (not (contains!7731 (usedCharacters!1044 (regex!5832 (rule!8660 (_1!22446 lt!1282410)))) lt!1282417))))

(declare-fun lt!1282506 () Unit!56537)

(declare-fun choose!21884 (LexerInterface!5421 List!38885 List!38885 Rule!11464 Rule!11464 C!21368) Unit!56537)

(assert (=> d!1078819 (= lt!1282506 (choose!21884 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8660 (_1!22446 lt!1282410)) lt!1282417))))

(assert (=> d!1078819 (rulesInvariant!4818 thiss!23823 rules!3307)))

(assert (=> d!1078819 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!360 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8660 (_1!22446 lt!1282410)) lt!1282417) lt!1282506)))

(declare-fun bs!573292 () Bool)

(assert (= bs!573292 d!1078819))

(assert (=> bs!573292 m!4183617))

(assert (=> bs!573292 m!4183617))

(declare-fun m!4183953 () Bool)

(assert (=> bs!573292 m!4183953))

(declare-fun m!4183955 () Bool)

(assert (=> bs!573292 m!4183955))

(assert (=> bs!573292 m!4183623))

(assert (=> b!3674401 d!1078819))

(declare-fun d!1078821 () Bool)

(declare-fun lt!1282507 () Bool)

(assert (=> d!1078821 (= lt!1282507 (select (content!5614 (usedCharacters!1044 (regex!5832 anOtherTypeRule!33))) lt!1282408))))

(declare-fun e!2275424 () Bool)

(assert (=> d!1078821 (= lt!1282507 e!2275424)))

(declare-fun res!1492622 () Bool)

(assert (=> d!1078821 (=> (not res!1492622) (not e!2275424))))

(assert (=> d!1078821 (= res!1492622 ((_ is Cons!38759) (usedCharacters!1044 (regex!5832 anOtherTypeRule!33))))))

(assert (=> d!1078821 (= (contains!7731 (usedCharacters!1044 (regex!5832 anOtherTypeRule!33)) lt!1282408) lt!1282507)))

(declare-fun b!3674665 () Bool)

(declare-fun e!2275425 () Bool)

(assert (=> b!3674665 (= e!2275424 e!2275425)))

(declare-fun res!1492623 () Bool)

(assert (=> b!3674665 (=> res!1492623 e!2275425)))

(assert (=> b!3674665 (= res!1492623 (= (h!44179 (usedCharacters!1044 (regex!5832 anOtherTypeRule!33))) lt!1282408))))

(declare-fun b!3674666 () Bool)

(assert (=> b!3674666 (= e!2275425 (contains!7731 (t!299958 (usedCharacters!1044 (regex!5832 anOtherTypeRule!33))) lt!1282408))))

(assert (= (and d!1078821 res!1492622) b!3674665))

(assert (= (and b!3674665 (not res!1492623)) b!3674666))

(assert (=> d!1078821 m!4183649))

(declare-fun m!4183957 () Bool)

(assert (=> d!1078821 m!4183957))

(declare-fun m!4183959 () Bool)

(assert (=> d!1078821 m!4183959))

(declare-fun m!4183961 () Bool)

(assert (=> b!3674666 m!4183961))

(assert (=> b!3674382 d!1078821))

(declare-fun b!3674667 () Bool)

(declare-fun e!2275428 () List!38883)

(declare-fun call!266121 () List!38883)

(assert (=> b!3674667 (= e!2275428 call!266121)))

(declare-fun d!1078823 () Bool)

(declare-fun c!635453 () Bool)

(assert (=> d!1078823 (= c!635453 (or ((_ is EmptyExpr!10591) (regex!5832 anOtherTypeRule!33)) ((_ is EmptyLang!10591) (regex!5832 anOtherTypeRule!33))))))

(declare-fun e!2275426 () List!38883)

(assert (=> d!1078823 (= (usedCharacters!1044 (regex!5832 anOtherTypeRule!33)) e!2275426)))

(declare-fun bm!266114 () Bool)

(declare-fun call!266120 () List!38883)

(declare-fun c!635454 () Bool)

(assert (=> bm!266114 (= call!266120 (usedCharacters!1044 (ite c!635454 (regTwo!21695 (regex!5832 anOtherTypeRule!33)) (regOne!21694 (regex!5832 anOtherTypeRule!33)))))))

(declare-fun call!266122 () List!38883)

(declare-fun c!635452 () Bool)

(declare-fun bm!266115 () Bool)

(assert (=> bm!266115 (= call!266122 (usedCharacters!1044 (ite c!635452 (reg!10920 (regex!5832 anOtherTypeRule!33)) (ite c!635454 (regOne!21695 (regex!5832 anOtherTypeRule!33)) (regTwo!21694 (regex!5832 anOtherTypeRule!33))))))))

(declare-fun bm!266116 () Bool)

(declare-fun call!266119 () List!38883)

(assert (=> bm!266116 (= call!266119 call!266122)))

(declare-fun b!3674668 () Bool)

(assert (=> b!3674668 (= c!635452 ((_ is Star!10591) (regex!5832 anOtherTypeRule!33)))))

(declare-fun e!2275429 () List!38883)

(declare-fun e!2275427 () List!38883)

(assert (=> b!3674668 (= e!2275429 e!2275427)))

(declare-fun b!3674669 () Bool)

(assert (=> b!3674669 (= e!2275427 call!266122)))

(declare-fun b!3674670 () Bool)

(assert (=> b!3674670 (= e!2275426 e!2275429)))

(declare-fun c!635455 () Bool)

(assert (=> b!3674670 (= c!635455 ((_ is ElementMatch!10591) (regex!5832 anOtherTypeRule!33)))))

(declare-fun b!3674671 () Bool)

(assert (=> b!3674671 (= e!2275426 Nil!38759)))

(declare-fun bm!266117 () Bool)

(assert (=> bm!266117 (= call!266121 (++!9648 (ite c!635454 call!266119 call!266120) (ite c!635454 call!266120 call!266119)))))

(declare-fun b!3674672 () Bool)

(assert (=> b!3674672 (= e!2275428 call!266121)))

(declare-fun b!3674673 () Bool)

(assert (=> b!3674673 (= e!2275429 (Cons!38759 (c!635392 (regex!5832 anOtherTypeRule!33)) Nil!38759))))

(declare-fun b!3674674 () Bool)

(assert (=> b!3674674 (= e!2275427 e!2275428)))

(assert (=> b!3674674 (= c!635454 ((_ is Union!10591) (regex!5832 anOtherTypeRule!33)))))

(assert (= (and d!1078823 c!635453) b!3674671))

(assert (= (and d!1078823 (not c!635453)) b!3674670))

(assert (= (and b!3674670 c!635455) b!3674673))

(assert (= (and b!3674670 (not c!635455)) b!3674668))

(assert (= (and b!3674668 c!635452) b!3674669))

(assert (= (and b!3674668 (not c!635452)) b!3674674))

(assert (= (and b!3674674 c!635454) b!3674672))

(assert (= (and b!3674674 (not c!635454)) b!3674667))

(assert (= (or b!3674672 b!3674667) bm!266116))

(assert (= (or b!3674672 b!3674667) bm!266114))

(assert (= (or b!3674672 b!3674667) bm!266117))

(assert (= (or b!3674669 bm!266116) bm!266115))

(declare-fun m!4183963 () Bool)

(assert (=> bm!266114 m!4183963))

(declare-fun m!4183965 () Bool)

(assert (=> bm!266115 m!4183965))

(declare-fun m!4183967 () Bool)

(assert (=> bm!266117 m!4183967))

(assert (=> b!3674382 d!1078823))

(declare-fun d!1078825 () Bool)

(assert (=> d!1078825 (not (contains!7731 (usedCharacters!1044 (regex!5832 (rule!8660 (_1!22446 lt!1282410)))) lt!1282417))))

(declare-fun lt!1282510 () Unit!56537)

(declare-fun choose!21885 (LexerInterface!5421 List!38885 List!38885 Rule!11464 Rule!11464 C!21368) Unit!56537)

(assert (=> d!1078825 (= lt!1282510 (choose!21885 thiss!23823 rules!3307 rules!3307 (rule!8660 (_1!22446 lt!1282410)) rule!403 lt!1282417))))

(assert (=> d!1078825 (rulesInvariant!4818 thiss!23823 rules!3307)))

(assert (=> d!1078825 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!478 thiss!23823 rules!3307 rules!3307 (rule!8660 (_1!22446 lt!1282410)) rule!403 lt!1282417) lt!1282510)))

(declare-fun bs!573293 () Bool)

(assert (= bs!573293 d!1078825))

(assert (=> bs!573293 m!4183617))

(assert (=> bs!573293 m!4183617))

(assert (=> bs!573293 m!4183953))

(declare-fun m!4183969 () Bool)

(assert (=> bs!573293 m!4183969))

(assert (=> bs!573293 m!4183623))

(assert (=> b!3674420 d!1078825))

(declare-fun d!1078827 () Bool)

(assert (=> d!1078827 (not (matchR!5160 (regex!5832 rule!403) lt!1282365))))

(declare-fun lt!1282513 () Unit!56537)

(declare-fun choose!21886 (Regex!10591 List!38883 C!21368) Unit!56537)

(assert (=> d!1078827 (= lt!1282513 (choose!21886 (regex!5832 rule!403) lt!1282365 lt!1282417))))

(declare-fun validRegex!4849 (Regex!10591) Bool)

(assert (=> d!1078827 (validRegex!4849 (regex!5832 rule!403))))

(assert (=> d!1078827 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!780 (regex!5832 rule!403) lt!1282365 lt!1282417) lt!1282513)))

(declare-fun bs!573294 () Bool)

(assert (= bs!573294 d!1078827))

(assert (=> bs!573294 m!4183695))

(declare-fun m!4183971 () Bool)

(assert (=> bs!573294 m!4183971))

(declare-fun m!4183973 () Bool)

(assert (=> bs!573294 m!4183973))

(assert (=> b!3674409 d!1078827))

(declare-fun d!1078829 () Bool)

(assert (=> d!1078829 (= (_2!22446 lt!1282410) lt!1282412)))

(declare-fun lt!1282516 () Unit!56537)

(declare-fun choose!21887 (List!38883 List!38883 List!38883 List!38883 List!38883) Unit!56537)

(assert (=> d!1078829 (= lt!1282516 (choose!21887 lt!1282379 (_2!22446 lt!1282410) lt!1282379 lt!1282412 lt!1282401))))

(assert (=> d!1078829 (isPrefix!3195 lt!1282379 lt!1282401)))

(assert (=> d!1078829 (= (lemmaSamePrefixThenSameSuffix!1522 lt!1282379 (_2!22446 lt!1282410) lt!1282379 lt!1282412 lt!1282401) lt!1282516)))

(declare-fun bs!573295 () Bool)

(assert (= bs!573295 d!1078829))

(declare-fun m!4183975 () Bool)

(assert (=> bs!573295 m!4183975))

(assert (=> bs!573295 m!4183537))

(assert (=> b!3674410 d!1078829))

(declare-fun b!3674701 () Bool)

(declare-fun e!2275442 () Bool)

(declare-datatypes ((tuple2!38628 0))(
  ( (tuple2!38629 (_1!22448 List!38883) (_2!22448 List!38883)) )
))
(declare-fun findLongestMatchInner!1082 (Regex!10591 List!38883 Int List!38883 List!38883 Int) tuple2!38628)

(assert (=> b!3674701 (= e!2275442 (matchR!5160 (regex!5832 (rule!8660 (_1!22446 lt!1282410))) (_1!22448 (findLongestMatchInner!1082 (regex!5832 (rule!8660 (_1!22446 lt!1282410))) Nil!38759 (size!29633 Nil!38759) lt!1282401 lt!1282401 (size!29633 lt!1282401)))))))

(declare-fun b!3674702 () Bool)

(declare-fun e!2275445 () Option!8293)

(assert (=> b!3674702 (= e!2275445 None!8292)))

(declare-fun b!3674703 () Bool)

(declare-fun res!1492647 () Bool)

(declare-fun e!2275444 () Bool)

(assert (=> b!3674703 (=> (not res!1492647) (not e!2275444))))

(declare-fun lt!1282565 () Option!8293)

(assert (=> b!3674703 (= res!1492647 (= (rule!8660 (_1!22446 (get!12818 lt!1282565))) (rule!8660 (_1!22446 lt!1282410))))))

(declare-fun b!3674704 () Bool)

(declare-fun res!1492645 () Bool)

(assert (=> b!3674704 (=> (not res!1492645) (not e!2275444))))

(assert (=> b!3674704 (= res!1492645 (= (++!9648 (list!14398 (charsOf!3846 (_1!22446 (get!12818 lt!1282565)))) (_2!22446 (get!12818 lt!1282565))) lt!1282401))))

(declare-fun b!3674705 () Bool)

(declare-fun res!1492642 () Bool)

(assert (=> b!3674705 (=> (not res!1492642) (not e!2275444))))

(assert (=> b!3674705 (= res!1492642 (< (size!29633 (_2!22446 (get!12818 lt!1282565))) (size!29633 lt!1282401)))))

(declare-fun b!3674706 () Bool)

(declare-fun res!1492646 () Bool)

(assert (=> b!3674706 (=> (not res!1492646) (not e!2275444))))

(assert (=> b!3674706 (= res!1492646 (= (value!186672 (_1!22446 (get!12818 lt!1282565))) (apply!9334 (transformation!5832 (rule!8660 (_1!22446 (get!12818 lt!1282565)))) (seqFromList!4381 (originalCharacters!6546 (_1!22446 (get!12818 lt!1282565)))))))))

(declare-fun d!1078831 () Bool)

(declare-fun e!2275443 () Bool)

(assert (=> d!1078831 e!2275443))

(declare-fun res!1492643 () Bool)

(assert (=> d!1078831 (=> res!1492643 e!2275443)))

(declare-fun isEmpty!23014 (Option!8293) Bool)

(assert (=> d!1078831 (= res!1492643 (isEmpty!23014 lt!1282565))))

(assert (=> d!1078831 (= lt!1282565 e!2275445)))

(declare-fun c!635462 () Bool)

(declare-fun lt!1282562 () tuple2!38628)

(assert (=> d!1078831 (= c!635462 (isEmpty!23010 (_1!22448 lt!1282562)))))

(declare-fun findLongestMatch!997 (Regex!10591 List!38883) tuple2!38628)

(assert (=> d!1078831 (= lt!1282562 (findLongestMatch!997 (regex!5832 (rule!8660 (_1!22446 lt!1282410))) lt!1282401))))

(assert (=> d!1078831 (ruleValid!2096 thiss!23823 (rule!8660 (_1!22446 lt!1282410)))))

(assert (=> d!1078831 (= (maxPrefixOneRule!2093 thiss!23823 (rule!8660 (_1!22446 lt!1282410)) lt!1282401) lt!1282565)))

(declare-fun b!3674707 () Bool)

(assert (=> b!3674707 (= e!2275445 (Some!8292 (tuple2!38625 (Token!11031 (apply!9334 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))) (seqFromList!4381 (_1!22448 lt!1282562))) (rule!8660 (_1!22446 lt!1282410)) (size!29632 (seqFromList!4381 (_1!22448 lt!1282562))) (_1!22448 lt!1282562)) (_2!22448 lt!1282562))))))

(declare-fun lt!1282561 () Unit!56537)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1055 (Regex!10591 List!38883) Unit!56537)

(assert (=> b!3674707 (= lt!1282561 (longestMatchIsAcceptedByMatchOrIsEmpty!1055 (regex!5832 (rule!8660 (_1!22446 lt!1282410))) lt!1282401))))

(declare-fun res!1492644 () Bool)

(assert (=> b!3674707 (= res!1492644 (isEmpty!23010 (_1!22448 (findLongestMatchInner!1082 (regex!5832 (rule!8660 (_1!22446 lt!1282410))) Nil!38759 (size!29633 Nil!38759) lt!1282401 lt!1282401 (size!29633 lt!1282401)))))))

(assert (=> b!3674707 (=> res!1492644 e!2275442)))

(assert (=> b!3674707 e!2275442))

(declare-fun lt!1282564 () Unit!56537)

(assert (=> b!3674707 (= lt!1282564 lt!1282561)))

(declare-fun lt!1282563 () Unit!56537)

(assert (=> b!3674707 (= lt!1282563 (lemmaSemiInverse!1581 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))) (seqFromList!4381 (_1!22448 lt!1282562))))))

(declare-fun b!3674708 () Bool)

(assert (=> b!3674708 (= e!2275444 (= (size!29631 (_1!22446 (get!12818 lt!1282565))) (size!29633 (originalCharacters!6546 (_1!22446 (get!12818 lt!1282565))))))))

(declare-fun b!3674709 () Bool)

(assert (=> b!3674709 (= e!2275443 e!2275444)))

(declare-fun res!1492648 () Bool)

(assert (=> b!3674709 (=> (not res!1492648) (not e!2275444))))

(assert (=> b!3674709 (= res!1492648 (matchR!5160 (regex!5832 (rule!8660 (_1!22446 lt!1282410))) (list!14398 (charsOf!3846 (_1!22446 (get!12818 lt!1282565))))))))

(assert (= (and d!1078831 c!635462) b!3674702))

(assert (= (and d!1078831 (not c!635462)) b!3674707))

(assert (= (and b!3674707 (not res!1492644)) b!3674701))

(assert (= (and d!1078831 (not res!1492643)) b!3674709))

(assert (= (and b!3674709 res!1492648) b!3674704))

(assert (= (and b!3674704 res!1492645) b!3674705))

(assert (= (and b!3674705 res!1492642) b!3674703))

(assert (= (and b!3674703 res!1492647) b!3674706))

(assert (= (and b!3674706 res!1492646) b!3674708))

(declare-fun m!4183977 () Bool)

(assert (=> b!3674706 m!4183977))

(declare-fun m!4183979 () Bool)

(assert (=> b!3674706 m!4183979))

(assert (=> b!3674706 m!4183979))

(declare-fun m!4183981 () Bool)

(assert (=> b!3674706 m!4183981))

(assert (=> b!3674709 m!4183977))

(declare-fun m!4183983 () Bool)

(assert (=> b!3674709 m!4183983))

(assert (=> b!3674709 m!4183983))

(declare-fun m!4183985 () Bool)

(assert (=> b!3674709 m!4183985))

(assert (=> b!3674709 m!4183985))

(declare-fun m!4183987 () Bool)

(assert (=> b!3674709 m!4183987))

(assert (=> b!3674704 m!4183977))

(assert (=> b!3674704 m!4183983))

(assert (=> b!3674704 m!4183983))

(assert (=> b!3674704 m!4183985))

(assert (=> b!3674704 m!4183985))

(declare-fun m!4183989 () Bool)

(assert (=> b!3674704 m!4183989))

(declare-fun m!4183991 () Bool)

(assert (=> b!3674701 m!4183991))

(declare-fun m!4183993 () Bool)

(assert (=> b!3674701 m!4183993))

(assert (=> b!3674701 m!4183991))

(assert (=> b!3674701 m!4183993))

(declare-fun m!4183995 () Bool)

(assert (=> b!3674701 m!4183995))

(declare-fun m!4183997 () Bool)

(assert (=> b!3674701 m!4183997))

(declare-fun m!4183999 () Bool)

(assert (=> d!1078831 m!4183999))

(declare-fun m!4184001 () Bool)

(assert (=> d!1078831 m!4184001))

(declare-fun m!4184003 () Bool)

(assert (=> d!1078831 m!4184003))

(declare-fun m!4184005 () Bool)

(assert (=> d!1078831 m!4184005))

(declare-fun m!4184007 () Bool)

(assert (=> b!3674707 m!4184007))

(declare-fun m!4184009 () Bool)

(assert (=> b!3674707 m!4184009))

(assert (=> b!3674707 m!4183991))

(assert (=> b!3674707 m!4183993))

(assert (=> b!3674707 m!4183995))

(assert (=> b!3674707 m!4184007))

(declare-fun m!4184011 () Bool)

(assert (=> b!3674707 m!4184011))

(declare-fun m!4184013 () Bool)

(assert (=> b!3674707 m!4184013))

(assert (=> b!3674707 m!4184007))

(assert (=> b!3674707 m!4183991))

(assert (=> b!3674707 m!4184007))

(declare-fun m!4184015 () Bool)

(assert (=> b!3674707 m!4184015))

(declare-fun m!4184017 () Bool)

(assert (=> b!3674707 m!4184017))

(assert (=> b!3674707 m!4183993))

(assert (=> b!3674703 m!4183977))

(assert (=> b!3674708 m!4183977))

(declare-fun m!4184019 () Bool)

(assert (=> b!3674708 m!4184019))

(assert (=> b!3674705 m!4183977))

(declare-fun m!4184021 () Bool)

(assert (=> b!3674705 m!4184021))

(assert (=> b!3674705 m!4183993))

(assert (=> b!3674410 d!1078831))

(declare-fun d!1078833 () Bool)

(declare-fun lt!1282585 () List!38883)

(assert (=> d!1078833 (= (++!9648 lt!1282379 lt!1282585) lt!1282401)))

(declare-fun e!2275450 () List!38883)

(assert (=> d!1078833 (= lt!1282585 e!2275450)))

(declare-fun c!635466 () Bool)

(assert (=> d!1078833 (= c!635466 ((_ is Cons!38759) lt!1282379))))

(assert (=> d!1078833 (>= (size!29633 lt!1282401) (size!29633 lt!1282379))))

(assert (=> d!1078833 (= (getSuffix!1748 lt!1282401 lt!1282379) lt!1282585)))

(declare-fun b!3674718 () Bool)

(declare-fun tail!5685 (List!38883) List!38883)

(assert (=> b!3674718 (= e!2275450 (getSuffix!1748 (tail!5685 lt!1282401) (t!299958 lt!1282379)))))

(declare-fun b!3674719 () Bool)

(assert (=> b!3674719 (= e!2275450 lt!1282401)))

(assert (= (and d!1078833 c!635466) b!3674718))

(assert (= (and d!1078833 (not c!635466)) b!3674719))

(declare-fun m!4184031 () Bool)

(assert (=> d!1078833 m!4184031))

(assert (=> d!1078833 m!4183993))

(assert (=> d!1078833 m!4183687))

(declare-fun m!4184035 () Bool)

(assert (=> b!3674718 m!4184035))

(assert (=> b!3674718 m!4184035))

(declare-fun m!4184039 () Bool)

(assert (=> b!3674718 m!4184039))

(assert (=> b!3674410 d!1078833))

(declare-fun d!1078835 () Bool)

(declare-fun lt!1282588 () Int)

(assert (=> d!1078835 (>= lt!1282588 0)))

(declare-fun e!2275453 () Int)

(assert (=> d!1078835 (= lt!1282588 e!2275453)))

(declare-fun c!635469 () Bool)

(assert (=> d!1078835 (= c!635469 ((_ is Nil!38759) lt!1282379))))

(assert (=> d!1078835 (= (size!29633 lt!1282379) lt!1282588)))

(declare-fun b!3674724 () Bool)

(assert (=> b!3674724 (= e!2275453 0)))

(declare-fun b!3674725 () Bool)

(assert (=> b!3674725 (= e!2275453 (+ 1 (size!29633 (t!299958 lt!1282379))))))

(assert (= (and d!1078835 c!635469) b!3674724))

(assert (= (and d!1078835 (not c!635469)) b!3674725))

(declare-fun m!4184079 () Bool)

(assert (=> b!3674725 m!4184079))

(assert (=> b!3674410 d!1078835))

(declare-fun d!1078839 () Bool)

(declare-fun fromListB!2022 (List!38883) BalanceConc!23336)

(assert (=> d!1078839 (= (seqFromList!4381 lt!1282379) (fromListB!2022 lt!1282379))))

(declare-fun bs!573296 () Bool)

(assert (= bs!573296 d!1078839))

(declare-fun m!4184081 () Bool)

(assert (=> bs!573296 m!4184081))

(assert (=> b!3674410 d!1078839))

(declare-fun d!1078841 () Bool)

(declare-fun dynLambda!16967 (Int BalanceConc!23336) TokenValue!6062)

(assert (=> d!1078841 (= (apply!9334 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))) (seqFromList!4381 lt!1282379)) (dynLambda!16967 (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410)))) (seqFromList!4381 lt!1282379)))))

(declare-fun b_lambda!109093 () Bool)

(assert (=> (not b_lambda!109093) (not d!1078841)))

(declare-fun tb!212837 () Bool)

(declare-fun t!299970 () Bool)

(assert (=> (and b!3674402 (= (toValue!8128 (transformation!5832 anOtherTypeRule!33)) (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) t!299970) tb!212837))

(declare-fun result!259004 () Bool)

(assert (=> tb!212837 (= result!259004 (inv!21 (dynLambda!16967 (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410)))) (seqFromList!4381 lt!1282379))))))

(declare-fun m!4184083 () Bool)

(assert (=> tb!212837 m!4184083))

(assert (=> d!1078841 t!299970))

(declare-fun b_and!273939 () Bool)

(assert (= b_and!273915 (and (=> t!299970 result!259004) b_and!273939)))

(declare-fun tb!212839 () Bool)

(declare-fun t!299972 () Bool)

(assert (=> (and b!3674393 (= (toValue!8128 (transformation!5832 rule!403)) (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) t!299972) tb!212839))

(declare-fun result!259008 () Bool)

(assert (= result!259008 result!259004))

(assert (=> d!1078841 t!299972))

(declare-fun b_and!273941 () Bool)

(assert (= b_and!273919 (and (=> t!299972 result!259008) b_and!273941)))

(declare-fun tb!212841 () Bool)

(declare-fun t!299974 () Bool)

(assert (=> (and b!3674398 (= (toValue!8128 (transformation!5832 (rule!8660 token!511))) (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) t!299974) tb!212841))

(declare-fun result!259010 () Bool)

(assert (= result!259010 result!259004))

(assert (=> d!1078841 t!299974))

(declare-fun b_and!273943 () Bool)

(assert (= b_and!273923 (and (=> t!299974 result!259010) b_and!273943)))

(declare-fun tb!212843 () Bool)

(declare-fun t!299976 () Bool)

(assert (=> (and b!3674399 (= (toValue!8128 (transformation!5832 (h!44181 rules!3307))) (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) t!299976) tb!212843))

(declare-fun result!259012 () Bool)

(assert (= result!259012 result!259004))

(assert (=> d!1078841 t!299976))

(declare-fun b_and!273945 () Bool)

(assert (= b_and!273927 (and (=> t!299976 result!259012) b_and!273945)))

(assert (=> d!1078841 m!4183679))

(declare-fun m!4184085 () Bool)

(assert (=> d!1078841 m!4184085))

(assert (=> b!3674410 d!1078841))

(declare-fun d!1078843 () Bool)

(assert (=> d!1078843 (= (maxPrefixOneRule!2093 thiss!23823 (rule!8660 (_1!22446 lt!1282410)) lt!1282401) (Some!8292 (tuple2!38625 (Token!11031 (apply!9334 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))) (seqFromList!4381 lt!1282379)) (rule!8660 (_1!22446 lt!1282410)) (size!29633 lt!1282379) lt!1282379) (_2!22446 lt!1282410))))))

(declare-fun lt!1282602 () Unit!56537)

(declare-fun choose!21890 (LexerInterface!5421 List!38885 List!38883 List!38883 List!38883 Rule!11464) Unit!56537)

(assert (=> d!1078843 (= lt!1282602 (choose!21890 thiss!23823 rules!3307 lt!1282379 lt!1282401 (_2!22446 lt!1282410) (rule!8660 (_1!22446 lt!1282410))))))

(assert (=> d!1078843 (not (isEmpty!23011 rules!3307))))

(assert (=> d!1078843 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1149 thiss!23823 rules!3307 lt!1282379 lt!1282401 (_2!22446 lt!1282410) (rule!8660 (_1!22446 lt!1282410))) lt!1282602)))

(declare-fun bs!573298 () Bool)

(assert (= bs!573298 d!1078843))

(declare-fun m!4184103 () Bool)

(assert (=> bs!573298 m!4184103))

(assert (=> bs!573298 m!4183687))

(assert (=> bs!573298 m!4183679))

(assert (=> bs!573298 m!4183663))

(assert (=> bs!573298 m!4183689))

(assert (=> bs!573298 m!4183679))

(assert (=> bs!573298 m!4183681))

(assert (=> b!3674410 d!1078843))

(declare-fun b!3674817 () Bool)

(declare-fun e!2275510 () Bool)

(declare-fun e!2275514 () Bool)

(assert (=> b!3674817 (= e!2275510 e!2275514)))

(declare-fun res!1492693 () Bool)

(assert (=> b!3674817 (=> res!1492693 e!2275514)))

(declare-fun call!266130 () Bool)

(assert (=> b!3674817 (= res!1492693 call!266130)))

(declare-fun bm!266125 () Bool)

(assert (=> bm!266125 (= call!266130 (isEmpty!23010 lt!1282365))))

(declare-fun b!3674818 () Bool)

(declare-fun e!2275509 () Bool)

(assert (=> b!3674818 (= e!2275509 e!2275510)))

(declare-fun res!1492691 () Bool)

(assert (=> b!3674818 (=> (not res!1492691) (not e!2275510))))

(declare-fun lt!1282617 () Bool)

(assert (=> b!3674818 (= res!1492691 (not lt!1282617))))

(declare-fun b!3674819 () Bool)

(declare-fun res!1492687 () Bool)

(declare-fun e!2275511 () Bool)

(assert (=> b!3674819 (=> (not res!1492687) (not e!2275511))))

(assert (=> b!3674819 (= res!1492687 (not call!266130))))

(declare-fun b!3674820 () Bool)

(declare-fun e!2275508 () Bool)

(declare-fun nullable!3687 (Regex!10591) Bool)

(assert (=> b!3674820 (= e!2275508 (nullable!3687 (regex!5832 rule!403)))))

(declare-fun b!3674821 () Bool)

(declare-fun res!1492690 () Bool)

(assert (=> b!3674821 (=> res!1492690 e!2275509)))

(assert (=> b!3674821 (= res!1492690 e!2275511)))

(declare-fun res!1492689 () Bool)

(assert (=> b!3674821 (=> (not res!1492689) (not e!2275511))))

(assert (=> b!3674821 (= res!1492689 lt!1282617)))

(declare-fun b!3674822 () Bool)

(declare-fun res!1492688 () Bool)

(assert (=> b!3674822 (=> res!1492688 e!2275514)))

(assert (=> b!3674822 (= res!1492688 (not (isEmpty!23010 (tail!5685 lt!1282365))))))

(declare-fun b!3674823 () Bool)

(declare-fun res!1492686 () Bool)

(assert (=> b!3674823 (=> (not res!1492686) (not e!2275511))))

(assert (=> b!3674823 (= res!1492686 (isEmpty!23010 (tail!5685 lt!1282365)))))

(declare-fun b!3674824 () Bool)

(assert (=> b!3674824 (= e!2275514 (not (= (head!7876 lt!1282365) (c!635392 (regex!5832 rule!403)))))))

(declare-fun b!3674825 () Bool)

(assert (=> b!3674825 (= e!2275511 (= (head!7876 lt!1282365) (c!635392 (regex!5832 rule!403))))))

(declare-fun d!1078851 () Bool)

(declare-fun e!2275512 () Bool)

(assert (=> d!1078851 e!2275512))

(declare-fun c!635499 () Bool)

(assert (=> d!1078851 (= c!635499 ((_ is EmptyExpr!10591) (regex!5832 rule!403)))))

(assert (=> d!1078851 (= lt!1282617 e!2275508)))

(declare-fun c!635498 () Bool)

(assert (=> d!1078851 (= c!635498 (isEmpty!23010 lt!1282365))))

(assert (=> d!1078851 (validRegex!4849 (regex!5832 rule!403))))

(assert (=> d!1078851 (= (matchR!5160 (regex!5832 rule!403) lt!1282365) lt!1282617)))

(declare-fun b!3674826 () Bool)

(declare-fun e!2275513 () Bool)

(assert (=> b!3674826 (= e!2275512 e!2275513)))

(declare-fun c!635500 () Bool)

(assert (=> b!3674826 (= c!635500 ((_ is EmptyLang!10591) (regex!5832 rule!403)))))

(declare-fun b!3674827 () Bool)

(declare-fun res!1492692 () Bool)

(assert (=> b!3674827 (=> res!1492692 e!2275509)))

(assert (=> b!3674827 (= res!1492692 (not ((_ is ElementMatch!10591) (regex!5832 rule!403))))))

(assert (=> b!3674827 (= e!2275513 e!2275509)))

(declare-fun b!3674828 () Bool)

(assert (=> b!3674828 (= e!2275512 (= lt!1282617 call!266130))))

(declare-fun b!3674829 () Bool)

(assert (=> b!3674829 (= e!2275513 (not lt!1282617))))

(declare-fun b!3674830 () Bool)

(declare-fun derivativeStep!3236 (Regex!10591 C!21368) Regex!10591)

(assert (=> b!3674830 (= e!2275508 (matchR!5160 (derivativeStep!3236 (regex!5832 rule!403) (head!7876 lt!1282365)) (tail!5685 lt!1282365)))))

(assert (= (and d!1078851 c!635498) b!3674820))

(assert (= (and d!1078851 (not c!635498)) b!3674830))

(assert (= (and d!1078851 c!635499) b!3674828))

(assert (= (and d!1078851 (not c!635499)) b!3674826))

(assert (= (and b!3674826 c!635500) b!3674829))

(assert (= (and b!3674826 (not c!635500)) b!3674827))

(assert (= (and b!3674827 (not res!1492692)) b!3674821))

(assert (= (and b!3674821 res!1492689) b!3674819))

(assert (= (and b!3674819 res!1492687) b!3674823))

(assert (= (and b!3674823 res!1492686) b!3674825))

(assert (= (and b!3674821 (not res!1492690)) b!3674818))

(assert (= (and b!3674818 res!1492691) b!3674817))

(assert (= (and b!3674817 (not res!1492693)) b!3674822))

(assert (= (and b!3674822 (not res!1492688)) b!3674824))

(assert (= (or b!3674828 b!3674817 b!3674819) bm!266125))

(declare-fun m!4184141 () Bool)

(assert (=> bm!266125 m!4184141))

(assert (=> d!1078851 m!4184141))

(assert (=> d!1078851 m!4183973))

(declare-fun m!4184143 () Bool)

(assert (=> b!3674830 m!4184143))

(assert (=> b!3674830 m!4184143))

(declare-fun m!4184145 () Bool)

(assert (=> b!3674830 m!4184145))

(declare-fun m!4184147 () Bool)

(assert (=> b!3674830 m!4184147))

(assert (=> b!3674830 m!4184145))

(assert (=> b!3674830 m!4184147))

(declare-fun m!4184149 () Bool)

(assert (=> b!3674830 m!4184149))

(assert (=> b!3674824 m!4184143))

(declare-fun m!4184151 () Bool)

(assert (=> b!3674820 m!4184151))

(assert (=> b!3674823 m!4184147))

(assert (=> b!3674823 m!4184147))

(declare-fun m!4184153 () Bool)

(assert (=> b!3674823 m!4184153))

(assert (=> b!3674822 m!4184147))

(assert (=> b!3674822 m!4184147))

(assert (=> b!3674822 m!4184153))

(assert (=> b!3674825 m!4184143))

(assert (=> b!3674389 d!1078851))

(declare-fun d!1078871 () Bool)

(declare-fun res!1492705 () Bool)

(declare-fun e!2275522 () Bool)

(assert (=> d!1078871 (=> (not res!1492705) (not e!2275522))))

(assert (=> d!1078871 (= res!1492705 (validRegex!4849 (regex!5832 rule!403)))))

(assert (=> d!1078871 (= (ruleValid!2096 thiss!23823 rule!403) e!2275522)))

(declare-fun b!3674843 () Bool)

(declare-fun res!1492706 () Bool)

(assert (=> b!3674843 (=> (not res!1492706) (not e!2275522))))

(assert (=> b!3674843 (= res!1492706 (not (nullable!3687 (regex!5832 rule!403))))))

(declare-fun b!3674844 () Bool)

(assert (=> b!3674844 (= e!2275522 (not (= (tag!6626 rule!403) (String!43645 ""))))))

(assert (= (and d!1078871 res!1492705) b!3674843))

(assert (= (and b!3674843 res!1492706) b!3674844))

(assert (=> d!1078871 m!4183973))

(assert (=> b!3674843 m!4184151))

(assert (=> b!3674389 d!1078871))

(declare-fun d!1078879 () Bool)

(assert (=> d!1078879 (ruleValid!2096 thiss!23823 rule!403)))

(declare-fun lt!1282620 () Unit!56537)

(declare-fun choose!21891 (LexerInterface!5421 Rule!11464 List!38885) Unit!56537)

(assert (=> d!1078879 (= lt!1282620 (choose!21891 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1078879 (contains!7732 rules!3307 rule!403)))

(assert (=> d!1078879 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1250 thiss!23823 rule!403 rules!3307) lt!1282620)))

(declare-fun bs!573302 () Bool)

(assert (= bs!573302 d!1078879))

(assert (=> bs!573302 m!4183697))

(declare-fun m!4184175 () Bool)

(assert (=> bs!573302 m!4184175))

(assert (=> bs!573302 m!4183597))

(assert (=> b!3674389 d!1078879))

(declare-fun d!1078883 () Bool)

(declare-fun res!1492711 () Bool)

(declare-fun e!2275530 () Bool)

(assert (=> d!1078883 (=> res!1492711 e!2275530)))

(assert (=> d!1078883 (= res!1492711 (not ((_ is Cons!38761) rules!3307)))))

(assert (=> d!1078883 (= (sepAndNonSepRulesDisjointChars!2000 rules!3307 rules!3307) e!2275530)))

(declare-fun b!3674851 () Bool)

(declare-fun e!2275531 () Bool)

(assert (=> b!3674851 (= e!2275530 e!2275531)))

(declare-fun res!1492712 () Bool)

(assert (=> b!3674851 (=> (not res!1492712) (not e!2275531))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!910 (Rule!11464 List!38885) Bool)

(assert (=> b!3674851 (= res!1492712 (ruleDisjointCharsFromAllFromOtherType!910 (h!44181 rules!3307) rules!3307))))

(declare-fun b!3674852 () Bool)

(assert (=> b!3674852 (= e!2275531 (sepAndNonSepRulesDisjointChars!2000 rules!3307 (t!299960 rules!3307)))))

(assert (= (and d!1078883 (not res!1492711)) b!3674851))

(assert (= (and b!3674851 res!1492712) b!3674852))

(declare-fun m!4184185 () Bool)

(assert (=> b!3674851 m!4184185))

(declare-fun m!4184187 () Bool)

(assert (=> b!3674852 m!4184187))

(assert (=> b!3674387 d!1078883))

(declare-fun d!1078891 () Bool)

(assert (=> d!1078891 (not (matchR!5160 (regex!5832 rule!403) lt!1282365))))

(declare-fun lt!1282626 () Unit!56537)

(declare-fun choose!21892 (LexerInterface!5421 List!38885 Rule!11464 List!38883 List!38883 List!38883 Rule!11464) Unit!56537)

(assert (=> d!1078891 (= lt!1282626 (choose!21892 thiss!23823 rules!3307 (rule!8660 (_1!22446 lt!1282410)) lt!1282379 lt!1282401 lt!1282365 rule!403))))

(assert (=> d!1078891 (isPrefix!3195 lt!1282379 lt!1282401)))

(assert (=> d!1078891 (= (lemmaMaxPrefixOutputsMaxPrefix!374 thiss!23823 rules!3307 (rule!8660 (_1!22446 lt!1282410)) lt!1282379 lt!1282401 lt!1282365 rule!403) lt!1282626)))

(declare-fun bs!573306 () Bool)

(assert (= bs!573306 d!1078891))

(assert (=> bs!573306 m!4183695))

(declare-fun m!4184189 () Bool)

(assert (=> bs!573306 m!4184189))

(assert (=> bs!573306 m!4183537))

(assert (=> b!3674426 d!1078891))

(declare-fun d!1078893 () Bool)

(declare-fun res!1492717 () Bool)

(declare-fun e!2275534 () Bool)

(assert (=> d!1078893 (=> (not res!1492717) (not e!2275534))))

(assert (=> d!1078893 (= res!1492717 (not (isEmpty!23010 (originalCharacters!6546 token!511))))))

(assert (=> d!1078893 (= (inv!52251 token!511) e!2275534)))

(declare-fun b!3674857 () Bool)

(declare-fun res!1492718 () Bool)

(assert (=> b!3674857 (=> (not res!1492718) (not e!2275534))))

(declare-fun dynLambda!16968 (Int TokenValue!6062) BalanceConc!23336)

(assert (=> b!3674857 (= res!1492718 (= (originalCharacters!6546 token!511) (list!14398 (dynLambda!16968 (toChars!7987 (transformation!5832 (rule!8660 token!511))) (value!186672 token!511)))))))

(declare-fun b!3674858 () Bool)

(assert (=> b!3674858 (= e!2275534 (= (size!29631 token!511) (size!29633 (originalCharacters!6546 token!511))))))

(assert (= (and d!1078893 res!1492717) b!3674857))

(assert (= (and b!3674857 res!1492718) b!3674858))

(declare-fun b_lambda!109099 () Bool)

(assert (=> (not b_lambda!109099) (not b!3674857)))

(declare-fun t!299994 () Bool)

(declare-fun tb!212861 () Bool)

(assert (=> (and b!3674402 (= (toChars!7987 (transformation!5832 anOtherTypeRule!33)) (toChars!7987 (transformation!5832 (rule!8660 token!511)))) t!299994) tb!212861))

(declare-fun b!3674863 () Bool)

(declare-fun e!2275537 () Bool)

(declare-fun tp!1117785 () Bool)

(declare-fun inv!52254 (Conc!11861) Bool)

(assert (=> b!3674863 (= e!2275537 (and (inv!52254 (c!635393 (dynLambda!16968 (toChars!7987 (transformation!5832 (rule!8660 token!511))) (value!186672 token!511)))) tp!1117785))))

(declare-fun result!259032 () Bool)

(declare-fun inv!52255 (BalanceConc!23336) Bool)

(assert (=> tb!212861 (= result!259032 (and (inv!52255 (dynLambda!16968 (toChars!7987 (transformation!5832 (rule!8660 token!511))) (value!186672 token!511))) e!2275537))))

(assert (= tb!212861 b!3674863))

(declare-fun m!4184191 () Bool)

(assert (=> b!3674863 m!4184191))

(declare-fun m!4184193 () Bool)

(assert (=> tb!212861 m!4184193))

(assert (=> b!3674857 t!299994))

(declare-fun b_and!273963 () Bool)

(assert (= b_and!273917 (and (=> t!299994 result!259032) b_and!273963)))

(declare-fun tb!212863 () Bool)

(declare-fun t!299996 () Bool)

(assert (=> (and b!3674393 (= (toChars!7987 (transformation!5832 rule!403)) (toChars!7987 (transformation!5832 (rule!8660 token!511)))) t!299996) tb!212863))

(declare-fun result!259036 () Bool)

(assert (= result!259036 result!259032))

(assert (=> b!3674857 t!299996))

(declare-fun b_and!273965 () Bool)

(assert (= b_and!273921 (and (=> t!299996 result!259036) b_and!273965)))

(declare-fun t!299998 () Bool)

(declare-fun tb!212865 () Bool)

(assert (=> (and b!3674398 (= (toChars!7987 (transformation!5832 (rule!8660 token!511))) (toChars!7987 (transformation!5832 (rule!8660 token!511)))) t!299998) tb!212865))

(declare-fun result!259038 () Bool)

(assert (= result!259038 result!259032))

(assert (=> b!3674857 t!299998))

(declare-fun b_and!273967 () Bool)

(assert (= b_and!273925 (and (=> t!299998 result!259038) b_and!273967)))

(declare-fun tb!212867 () Bool)

(declare-fun t!300000 () Bool)

(assert (=> (and b!3674399 (= (toChars!7987 (transformation!5832 (h!44181 rules!3307))) (toChars!7987 (transformation!5832 (rule!8660 token!511)))) t!300000) tb!212867))

(declare-fun result!259040 () Bool)

(assert (= result!259040 result!259032))

(assert (=> b!3674857 t!300000))

(declare-fun b_and!273969 () Bool)

(assert (= b_and!273929 (and (=> t!300000 result!259040) b_and!273969)))

(declare-fun m!4184195 () Bool)

(assert (=> d!1078893 m!4184195))

(declare-fun m!4184197 () Bool)

(assert (=> b!3674857 m!4184197))

(assert (=> b!3674857 m!4184197))

(declare-fun m!4184199 () Bool)

(assert (=> b!3674857 m!4184199))

(declare-fun m!4184201 () Bool)

(assert (=> b!3674858 m!4184201))

(assert (=> start!344422 d!1078893))

(declare-fun b!3674874 () Bool)

(declare-fun e!2275546 () Bool)

(declare-fun inv!16 (TokenValue!6062) Bool)

(assert (=> b!3674874 (= e!2275546 (inv!16 (value!186672 token!511)))))

(declare-fun d!1078895 () Bool)

(declare-fun c!635506 () Bool)

(assert (=> d!1078895 (= c!635506 ((_ is IntegerValue!18186) (value!186672 token!511)))))

(assert (=> d!1078895 (= (inv!21 (value!186672 token!511)) e!2275546)))

(declare-fun b!3674875 () Bool)

(declare-fun res!1492721 () Bool)

(declare-fun e!2275544 () Bool)

(assert (=> b!3674875 (=> res!1492721 e!2275544)))

(assert (=> b!3674875 (= res!1492721 (not ((_ is IntegerValue!18188) (value!186672 token!511))))))

(declare-fun e!2275545 () Bool)

(assert (=> b!3674875 (= e!2275545 e!2275544)))

(declare-fun b!3674876 () Bool)

(assert (=> b!3674876 (= e!2275546 e!2275545)))

(declare-fun c!635505 () Bool)

(assert (=> b!3674876 (= c!635505 ((_ is IntegerValue!18187) (value!186672 token!511)))))

(declare-fun b!3674877 () Bool)

(declare-fun inv!15 (TokenValue!6062) Bool)

(assert (=> b!3674877 (= e!2275544 (inv!15 (value!186672 token!511)))))

(declare-fun b!3674878 () Bool)

(declare-fun inv!17 (TokenValue!6062) Bool)

(assert (=> b!3674878 (= e!2275545 (inv!17 (value!186672 token!511)))))

(assert (= (and d!1078895 c!635506) b!3674874))

(assert (= (and d!1078895 (not c!635506)) b!3674876))

(assert (= (and b!3674876 c!635505) b!3674878))

(assert (= (and b!3674876 (not c!635505)) b!3674875))

(assert (= (and b!3674875 (not res!1492721)) b!3674877))

(declare-fun m!4184203 () Bool)

(assert (=> b!3674874 m!4184203))

(declare-fun m!4184205 () Bool)

(assert (=> b!3674877 m!4184205))

(declare-fun m!4184207 () Bool)

(assert (=> b!3674878 m!4184207))

(assert (=> b!3674407 d!1078895))

(declare-fun d!1078897 () Bool)

(declare-fun lt!1282629 () Int)

(assert (=> d!1078897 (= lt!1282629 (size!29633 (list!14398 lt!1282383)))))

(declare-fun size!29635 (Conc!11861) Int)

(assert (=> d!1078897 (= lt!1282629 (size!29635 (c!635393 lt!1282383)))))

(assert (=> d!1078897 (= (size!29632 lt!1282383) lt!1282629)))

(declare-fun bs!573307 () Bool)

(assert (= bs!573307 d!1078897))

(assert (=> bs!573307 m!4183543))

(assert (=> bs!573307 m!4183543))

(declare-fun m!4184209 () Bool)

(assert (=> bs!573307 m!4184209))

(declare-fun m!4184211 () Bool)

(assert (=> bs!573307 m!4184211))

(assert (=> b!3674388 d!1078897))

(declare-fun b!3674949 () Bool)

(declare-fun e!2275591 () Bool)

(assert (=> b!3674949 (= e!2275591 true)))

(declare-fun d!1078899 () Bool)

(assert (=> d!1078899 e!2275591))

(assert (= d!1078899 b!3674949))

(declare-fun order!21453 () Int)

(declare-fun order!21451 () Int)

(declare-fun lambda!124712 () Int)

(declare-fun dynLambda!16970 (Int Int) Int)

(declare-fun dynLambda!16971 (Int Int) Int)

(assert (=> b!3674949 (< (dynLambda!16970 order!21451 (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) (dynLambda!16971 order!21453 lambda!124712))))

(declare-fun order!21455 () Int)

(declare-fun dynLambda!16972 (Int Int) Int)

(assert (=> b!3674949 (< (dynLambda!16972 order!21455 (toChars!7987 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) (dynLambda!16971 order!21453 lambda!124712))))

(assert (=> d!1078899 (= (dynLambda!16967 (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410)))) lt!1282383) (dynLambda!16967 (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410)))) (seqFromList!4381 (originalCharacters!6546 (_1!22446 lt!1282410)))))))

(declare-fun lt!1282644 () Unit!56537)

(declare-fun Forall2of!401 (Int BalanceConc!23336 BalanceConc!23336) Unit!56537)

(assert (=> d!1078899 (= lt!1282644 (Forall2of!401 lambda!124712 lt!1282383 (seqFromList!4381 (originalCharacters!6546 (_1!22446 lt!1282410)))))))

(assert (=> d!1078899 (= (list!14398 lt!1282383) (list!14398 (seqFromList!4381 (originalCharacters!6546 (_1!22446 lt!1282410)))))))

(assert (=> d!1078899 (= (lemmaEqSameImage!1015 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))) lt!1282383 (seqFromList!4381 (originalCharacters!6546 (_1!22446 lt!1282410)))) lt!1282644)))

(declare-fun b_lambda!109109 () Bool)

(assert (=> (not b_lambda!109109) (not d!1078899)))

(declare-fun t!300018 () Bool)

(declare-fun tb!212885 () Bool)

(assert (=> (and b!3674402 (= (toValue!8128 (transformation!5832 anOtherTypeRule!33)) (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) t!300018) tb!212885))

(declare-fun result!259058 () Bool)

(assert (=> tb!212885 (= result!259058 (inv!21 (dynLambda!16967 (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410)))) lt!1282383)))))

(declare-fun m!4184285 () Bool)

(assert (=> tb!212885 m!4184285))

(assert (=> d!1078899 t!300018))

(declare-fun b_and!274003 () Bool)

(assert (= b_and!273939 (and (=> t!300018 result!259058) b_and!274003)))

(declare-fun tb!212887 () Bool)

(declare-fun t!300020 () Bool)

(assert (=> (and b!3674393 (= (toValue!8128 (transformation!5832 rule!403)) (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) t!300020) tb!212887))

(declare-fun result!259060 () Bool)

(assert (= result!259060 result!259058))

(assert (=> d!1078899 t!300020))

(declare-fun b_and!274005 () Bool)

(assert (= b_and!273941 (and (=> t!300020 result!259060) b_and!274005)))

(declare-fun tb!212889 () Bool)

(declare-fun t!300022 () Bool)

(assert (=> (and b!3674398 (= (toValue!8128 (transformation!5832 (rule!8660 token!511))) (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) t!300022) tb!212889))

(declare-fun result!259062 () Bool)

(assert (= result!259062 result!259058))

(assert (=> d!1078899 t!300022))

(declare-fun b_and!274007 () Bool)

(assert (= b_and!273943 (and (=> t!300022 result!259062) b_and!274007)))

(declare-fun t!300024 () Bool)

(declare-fun tb!212891 () Bool)

(assert (=> (and b!3674399 (= (toValue!8128 (transformation!5832 (h!44181 rules!3307))) (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) t!300024) tb!212891))

(declare-fun result!259064 () Bool)

(assert (= result!259064 result!259058))

(assert (=> d!1078899 t!300024))

(declare-fun b_and!274009 () Bool)

(assert (= b_and!273945 (and (=> t!300024 result!259064) b_and!274009)))

(declare-fun b_lambda!109111 () Bool)

(assert (=> (not b_lambda!109111) (not d!1078899)))

(declare-fun t!300026 () Bool)

(declare-fun tb!212893 () Bool)

(assert (=> (and b!3674402 (= (toValue!8128 (transformation!5832 anOtherTypeRule!33)) (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) t!300026) tb!212893))

(declare-fun result!259066 () Bool)

(assert (=> tb!212893 (= result!259066 (inv!21 (dynLambda!16967 (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410)))) (seqFromList!4381 (originalCharacters!6546 (_1!22446 lt!1282410))))))))

(declare-fun m!4184291 () Bool)

(assert (=> tb!212893 m!4184291))

(assert (=> d!1078899 t!300026))

(declare-fun b_and!274011 () Bool)

(assert (= b_and!274003 (and (=> t!300026 result!259066) b_and!274011)))

(declare-fun t!300028 () Bool)

(declare-fun tb!212895 () Bool)

(assert (=> (and b!3674393 (= (toValue!8128 (transformation!5832 rule!403)) (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) t!300028) tb!212895))

(declare-fun result!259068 () Bool)

(assert (= result!259068 result!259066))

(assert (=> d!1078899 t!300028))

(declare-fun b_and!274013 () Bool)

(assert (= b_and!274005 (and (=> t!300028 result!259068) b_and!274013)))

(declare-fun t!300030 () Bool)

(declare-fun tb!212897 () Bool)

(assert (=> (and b!3674398 (= (toValue!8128 (transformation!5832 (rule!8660 token!511))) (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) t!300030) tb!212897))

(declare-fun result!259070 () Bool)

(assert (= result!259070 result!259066))

(assert (=> d!1078899 t!300030))

(declare-fun b_and!274015 () Bool)

(assert (= b_and!274007 (and (=> t!300030 result!259070) b_and!274015)))

(declare-fun tb!212899 () Bool)

(declare-fun t!300032 () Bool)

(assert (=> (and b!3674399 (= (toValue!8128 (transformation!5832 (h!44181 rules!3307))) (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) t!300032) tb!212899))

(declare-fun result!259072 () Bool)

(assert (= result!259072 result!259066))

(assert (=> d!1078899 t!300032))

(declare-fun b_and!274017 () Bool)

(assert (= b_and!274009 (and (=> t!300032 result!259072) b_and!274017)))

(assert (=> d!1078899 m!4183633))

(declare-fun m!4184293 () Bool)

(assert (=> d!1078899 m!4184293))

(assert (=> d!1078899 m!4183543))

(assert (=> d!1078899 m!4183633))

(declare-fun m!4184295 () Bool)

(assert (=> d!1078899 m!4184295))

(assert (=> d!1078899 m!4183633))

(declare-fun m!4184297 () Bool)

(assert (=> d!1078899 m!4184297))

(declare-fun m!4184299 () Bool)

(assert (=> d!1078899 m!4184299))

(assert (=> b!3674388 d!1078899))

(declare-fun d!1078939 () Bool)

(assert (=> d!1078939 (= (seqFromList!4381 (originalCharacters!6546 (_1!22446 lt!1282410))) (fromListB!2022 (originalCharacters!6546 (_1!22446 lt!1282410))))))

(declare-fun bs!573314 () Bool)

(assert (= bs!573314 d!1078939))

(declare-fun m!4184301 () Bool)

(assert (=> bs!573314 m!4184301))

(assert (=> b!3674388 d!1078939))

(declare-fun d!1078941 () Bool)

(assert (=> d!1078941 (= (apply!9334 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))) lt!1282383) (dynLambda!16967 (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410)))) lt!1282383))))

(declare-fun b_lambda!109113 () Bool)

(assert (=> (not b_lambda!109113) (not d!1078941)))

(assert (=> d!1078941 t!300018))

(declare-fun b_and!274019 () Bool)

(assert (= b_and!274011 (and (=> t!300018 result!259058) b_and!274019)))

(assert (=> d!1078941 t!300020))

(declare-fun b_and!274021 () Bool)

(assert (= b_and!274013 (and (=> t!300020 result!259060) b_and!274021)))

(assert (=> d!1078941 t!300022))

(declare-fun b_and!274023 () Bool)

(assert (= b_and!274015 (and (=> t!300022 result!259062) b_and!274023)))

(assert (=> d!1078941 t!300024))

(declare-fun b_and!274025 () Bool)

(assert (= b_and!274017 (and (=> t!300024 result!259064) b_and!274025)))

(assert (=> d!1078941 m!4184299))

(assert (=> b!3674388 d!1078941))

(declare-fun b!3674956 () Bool)

(declare-fun e!2275597 () Bool)

(assert (=> b!3674956 (= e!2275597 true)))

(declare-fun d!1078943 () Bool)

(assert (=> d!1078943 e!2275597))

(assert (= d!1078943 b!3674956))

(declare-fun order!21457 () Int)

(declare-fun lambda!124715 () Int)

(declare-fun dynLambda!16977 (Int Int) Int)

(assert (=> b!3674956 (< (dynLambda!16970 order!21451 (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) (dynLambda!16977 order!21457 lambda!124715))))

(assert (=> b!3674956 (< (dynLambda!16972 order!21455 (toChars!7987 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) (dynLambda!16977 order!21457 lambda!124715))))

(assert (=> d!1078943 (= (list!14398 (dynLambda!16968 (toChars!7987 (transformation!5832 (rule!8660 (_1!22446 lt!1282410)))) (dynLambda!16967 (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410)))) lt!1282383))) (list!14398 lt!1282383))))

(declare-fun lt!1282651 () Unit!56537)

(declare-fun ForallOf!744 (Int BalanceConc!23336) Unit!56537)

(assert (=> d!1078943 (= lt!1282651 (ForallOf!744 lambda!124715 lt!1282383))))

(assert (=> d!1078943 (= (lemmaSemiInverse!1581 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))) lt!1282383) lt!1282651)))

(declare-fun b_lambda!109115 () Bool)

(assert (=> (not b_lambda!109115) (not d!1078943)))

(declare-fun t!300034 () Bool)

(declare-fun tb!212901 () Bool)

(assert (=> (and b!3674402 (= (toChars!7987 (transformation!5832 anOtherTypeRule!33)) (toChars!7987 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) t!300034) tb!212901))

(declare-fun e!2275598 () Bool)

(declare-fun b!3674957 () Bool)

(declare-fun tp!1117787 () Bool)

(assert (=> b!3674957 (= e!2275598 (and (inv!52254 (c!635393 (dynLambda!16968 (toChars!7987 (transformation!5832 (rule!8660 (_1!22446 lt!1282410)))) (dynLambda!16967 (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410)))) lt!1282383)))) tp!1117787))))

(declare-fun result!259074 () Bool)

(assert (=> tb!212901 (= result!259074 (and (inv!52255 (dynLambda!16968 (toChars!7987 (transformation!5832 (rule!8660 (_1!22446 lt!1282410)))) (dynLambda!16967 (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410)))) lt!1282383))) e!2275598))))

(assert (= tb!212901 b!3674957))

(declare-fun m!4184303 () Bool)

(assert (=> b!3674957 m!4184303))

(declare-fun m!4184305 () Bool)

(assert (=> tb!212901 m!4184305))

(assert (=> d!1078943 t!300034))

(declare-fun b_and!274027 () Bool)

(assert (= b_and!273963 (and (=> t!300034 result!259074) b_and!274027)))

(declare-fun t!300036 () Bool)

(declare-fun tb!212903 () Bool)

(assert (=> (and b!3674393 (= (toChars!7987 (transformation!5832 rule!403)) (toChars!7987 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) t!300036) tb!212903))

(declare-fun result!259076 () Bool)

(assert (= result!259076 result!259074))

(assert (=> d!1078943 t!300036))

(declare-fun b_and!274029 () Bool)

(assert (= b_and!273965 (and (=> t!300036 result!259076) b_and!274029)))

(declare-fun tb!212905 () Bool)

(declare-fun t!300038 () Bool)

(assert (=> (and b!3674398 (= (toChars!7987 (transformation!5832 (rule!8660 token!511))) (toChars!7987 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) t!300038) tb!212905))

(declare-fun result!259078 () Bool)

(assert (= result!259078 result!259074))

(assert (=> d!1078943 t!300038))

(declare-fun b_and!274031 () Bool)

(assert (= b_and!273967 (and (=> t!300038 result!259078) b_and!274031)))

(declare-fun tb!212907 () Bool)

(declare-fun t!300040 () Bool)

(assert (=> (and b!3674399 (= (toChars!7987 (transformation!5832 (h!44181 rules!3307))) (toChars!7987 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) t!300040) tb!212907))

(declare-fun result!259080 () Bool)

(assert (= result!259080 result!259074))

(assert (=> d!1078943 t!300040))

(declare-fun b_and!274033 () Bool)

(assert (= b_and!273969 (and (=> t!300040 result!259080) b_and!274033)))

(declare-fun b_lambda!109117 () Bool)

(assert (=> (not b_lambda!109117) (not d!1078943)))

(assert (=> d!1078943 t!300018))

(declare-fun b_and!274035 () Bool)

(assert (= b_and!274019 (and (=> t!300018 result!259058) b_and!274035)))

(assert (=> d!1078943 t!300020))

(declare-fun b_and!274037 () Bool)

(assert (= b_and!274021 (and (=> t!300020 result!259060) b_and!274037)))

(assert (=> d!1078943 t!300022))

(declare-fun b_and!274039 () Bool)

(assert (= b_and!274023 (and (=> t!300022 result!259062) b_and!274039)))

(assert (=> d!1078943 t!300024))

(declare-fun b_and!274041 () Bool)

(assert (= b_and!274025 (and (=> t!300024 result!259064) b_and!274041)))

(assert (=> d!1078943 m!4184299))

(declare-fun m!4184307 () Bool)

(assert (=> d!1078943 m!4184307))

(assert (=> d!1078943 m!4183543))

(assert (=> d!1078943 m!4184307))

(declare-fun m!4184309 () Bool)

(assert (=> d!1078943 m!4184309))

(declare-fun m!4184311 () Bool)

(assert (=> d!1078943 m!4184311))

(assert (=> d!1078943 m!4184299))

(assert (=> b!3674388 d!1078943))

(declare-fun d!1078945 () Bool)

(assert (=> d!1078945 (= (size!29631 (_1!22446 lt!1282410)) (size!29633 (originalCharacters!6546 (_1!22446 lt!1282410))))))

(declare-fun Unit!56559 () Unit!56537)

(assert (=> d!1078945 (= (lemmaCharactersSize!877 (_1!22446 lt!1282410)) Unit!56559)))

(declare-fun bs!573315 () Bool)

(assert (= bs!573315 d!1078945))

(declare-fun m!4184313 () Bool)

(assert (=> bs!573315 m!4184313))

(assert (=> b!3674388 d!1078945))

(declare-fun d!1078947 () Bool)

(declare-fun lt!1282652 () Bool)

(assert (=> d!1078947 (= lt!1282652 (select (content!5615 rules!3307) rule!403))))

(declare-fun e!2275600 () Bool)

(assert (=> d!1078947 (= lt!1282652 e!2275600)))

(declare-fun res!1492758 () Bool)

(assert (=> d!1078947 (=> (not res!1492758) (not e!2275600))))

(assert (=> d!1078947 (= res!1492758 ((_ is Cons!38761) rules!3307))))

(assert (=> d!1078947 (= (contains!7732 rules!3307 rule!403) lt!1282652)))

(declare-fun b!3674958 () Bool)

(declare-fun e!2275599 () Bool)

(assert (=> b!3674958 (= e!2275600 e!2275599)))

(declare-fun res!1492757 () Bool)

(assert (=> b!3674958 (=> res!1492757 e!2275599)))

(assert (=> b!3674958 (= res!1492757 (= (h!44181 rules!3307) rule!403))))

(declare-fun b!3674959 () Bool)

(assert (=> b!3674959 (= e!2275599 (contains!7732 (t!299960 rules!3307) rule!403))))

(assert (= (and d!1078947 res!1492758) b!3674958))

(assert (= (and b!3674958 (not res!1492757)) b!3674959))

(assert (=> d!1078947 m!4183943))

(declare-fun m!4184315 () Bool)

(assert (=> d!1078947 m!4184315))

(declare-fun m!4184317 () Bool)

(assert (=> b!3674959 m!4184317))

(assert (=> b!3674386 d!1078947))

(declare-fun d!1078949 () Bool)

(assert (=> d!1078949 (not (contains!7731 (usedCharacters!1044 (regex!5832 (rule!8660 (_1!22446 lt!1282410)))) lt!1282408))))

(declare-fun lt!1282653 () Unit!56537)

(assert (=> d!1078949 (= lt!1282653 (choose!21884 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8660 (_1!22446 lt!1282410)) lt!1282408))))

(assert (=> d!1078949 (rulesInvariant!4818 thiss!23823 rules!3307)))

(assert (=> d!1078949 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!360 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8660 (_1!22446 lt!1282410)) lt!1282408) lt!1282653)))

(declare-fun bs!573316 () Bool)

(assert (= bs!573316 d!1078949))

(assert (=> bs!573316 m!4183617))

(assert (=> bs!573316 m!4183617))

(declare-fun m!4184319 () Bool)

(assert (=> bs!573316 m!4184319))

(declare-fun m!4184321 () Bool)

(assert (=> bs!573316 m!4184321))

(assert (=> bs!573316 m!4183623))

(assert (=> b!3674425 d!1078949))

(declare-fun d!1078951 () Bool)

(assert (=> d!1078951 (= (isDefined!6525 lt!1282381) (not (isEmpty!23014 lt!1282381)))))

(declare-fun bs!573317 () Bool)

(assert (= bs!573317 d!1078951))

(declare-fun m!4184323 () Bool)

(assert (=> bs!573317 m!4184323))

(assert (=> b!3674406 d!1078951))

(declare-fun b!3674978 () Bool)

(declare-fun res!1492778 () Bool)

(declare-fun e!2275607 () Bool)

(assert (=> b!3674978 (=> (not res!1492778) (not e!2275607))))

(declare-fun lt!1282666 () Option!8293)

(assert (=> b!3674978 (= res!1492778 (= (list!14398 (charsOf!3846 (_1!22446 (get!12818 lt!1282666)))) (originalCharacters!6546 (_1!22446 (get!12818 lt!1282666)))))))

(declare-fun b!3674979 () Bool)

(declare-fun res!1492775 () Bool)

(assert (=> b!3674979 (=> (not res!1492775) (not e!2275607))))

(assert (=> b!3674979 (= res!1492775 (< (size!29633 (_2!22446 (get!12818 lt!1282666))) (size!29633 lt!1282365)))))

(declare-fun b!3674980 () Bool)

(declare-fun e!2275609 () Option!8293)

(declare-fun lt!1282664 () Option!8293)

(declare-fun lt!1282665 () Option!8293)

(assert (=> b!3674980 (= e!2275609 (ite (and ((_ is None!8292) lt!1282664) ((_ is None!8292) lt!1282665)) None!8292 (ite ((_ is None!8292) lt!1282665) lt!1282664 (ite ((_ is None!8292) lt!1282664) lt!1282665 (ite (>= (size!29631 (_1!22446 (v!38212 lt!1282664))) (size!29631 (_1!22446 (v!38212 lt!1282665)))) lt!1282664 lt!1282665)))))))

(declare-fun call!266139 () Option!8293)

(assert (=> b!3674980 (= lt!1282664 call!266139)))

(assert (=> b!3674980 (= lt!1282665 (maxPrefix!2955 thiss!23823 (t!299960 rules!3307) lt!1282365))))

(declare-fun b!3674981 () Bool)

(declare-fun e!2275608 () Bool)

(assert (=> b!3674981 (= e!2275608 e!2275607)))

(declare-fun res!1492773 () Bool)

(assert (=> b!3674981 (=> (not res!1492773) (not e!2275607))))

(assert (=> b!3674981 (= res!1492773 (isDefined!6525 lt!1282666))))

(declare-fun d!1078953 () Bool)

(assert (=> d!1078953 e!2275608))

(declare-fun res!1492774 () Bool)

(assert (=> d!1078953 (=> res!1492774 e!2275608)))

(assert (=> d!1078953 (= res!1492774 (isEmpty!23014 lt!1282666))))

(assert (=> d!1078953 (= lt!1282666 e!2275609)))

(declare-fun c!635522 () Bool)

(assert (=> d!1078953 (= c!635522 (and ((_ is Cons!38761) rules!3307) ((_ is Nil!38761) (t!299960 rules!3307))))))

(declare-fun lt!1282667 () Unit!56537)

(declare-fun lt!1282668 () Unit!56537)

(assert (=> d!1078953 (= lt!1282667 lt!1282668)))

(assert (=> d!1078953 (isPrefix!3195 lt!1282365 lt!1282365)))

(declare-fun lemmaIsPrefixRefl!2010 (List!38883 List!38883) Unit!56537)

(assert (=> d!1078953 (= lt!1282668 (lemmaIsPrefixRefl!2010 lt!1282365 lt!1282365))))

(declare-fun rulesValidInductive!2073 (LexerInterface!5421 List!38885) Bool)

(assert (=> d!1078953 (rulesValidInductive!2073 thiss!23823 rules!3307)))

(assert (=> d!1078953 (= (maxPrefix!2955 thiss!23823 rules!3307 lt!1282365) lt!1282666)))

(declare-fun bm!266134 () Bool)

(assert (=> bm!266134 (= call!266139 (maxPrefixOneRule!2093 thiss!23823 (h!44181 rules!3307) lt!1282365))))

(declare-fun b!3674982 () Bool)

(declare-fun res!1492779 () Bool)

(assert (=> b!3674982 (=> (not res!1492779) (not e!2275607))))

(assert (=> b!3674982 (= res!1492779 (= (value!186672 (_1!22446 (get!12818 lt!1282666))) (apply!9334 (transformation!5832 (rule!8660 (_1!22446 (get!12818 lt!1282666)))) (seqFromList!4381 (originalCharacters!6546 (_1!22446 (get!12818 lt!1282666)))))))))

(declare-fun b!3674983 () Bool)

(declare-fun res!1492776 () Bool)

(assert (=> b!3674983 (=> (not res!1492776) (not e!2275607))))

(assert (=> b!3674983 (= res!1492776 (matchR!5160 (regex!5832 (rule!8660 (_1!22446 (get!12818 lt!1282666)))) (list!14398 (charsOf!3846 (_1!22446 (get!12818 lt!1282666))))))))

(declare-fun b!3674984 () Bool)

(assert (=> b!3674984 (= e!2275607 (contains!7732 rules!3307 (rule!8660 (_1!22446 (get!12818 lt!1282666)))))))

(declare-fun b!3674985 () Bool)

(assert (=> b!3674985 (= e!2275609 call!266139)))

(declare-fun b!3674986 () Bool)

(declare-fun res!1492777 () Bool)

(assert (=> b!3674986 (=> (not res!1492777) (not e!2275607))))

(assert (=> b!3674986 (= res!1492777 (= (++!9648 (list!14398 (charsOf!3846 (_1!22446 (get!12818 lt!1282666)))) (_2!22446 (get!12818 lt!1282666))) lt!1282365))))

(assert (= (and d!1078953 c!635522) b!3674985))

(assert (= (and d!1078953 (not c!635522)) b!3674980))

(assert (= (or b!3674985 b!3674980) bm!266134))

(assert (= (and d!1078953 (not res!1492774)) b!3674981))

(assert (= (and b!3674981 res!1492773) b!3674978))

(assert (= (and b!3674978 res!1492778) b!3674979))

(assert (= (and b!3674979 res!1492775) b!3674986))

(assert (= (and b!3674986 res!1492777) b!3674982))

(assert (= (and b!3674982 res!1492779) b!3674983))

(assert (= (and b!3674983 res!1492776) b!3674984))

(declare-fun m!4184325 () Bool)

(assert (=> b!3674979 m!4184325))

(declare-fun m!4184327 () Bool)

(assert (=> b!3674979 m!4184327))

(declare-fun m!4184329 () Bool)

(assert (=> b!3674979 m!4184329))

(assert (=> b!3674984 m!4184325))

(declare-fun m!4184331 () Bool)

(assert (=> b!3674984 m!4184331))

(declare-fun m!4184333 () Bool)

(assert (=> b!3674980 m!4184333))

(declare-fun m!4184335 () Bool)

(assert (=> b!3674981 m!4184335))

(assert (=> b!3674978 m!4184325))

(declare-fun m!4184337 () Bool)

(assert (=> b!3674978 m!4184337))

(assert (=> b!3674978 m!4184337))

(declare-fun m!4184339 () Bool)

(assert (=> b!3674978 m!4184339))

(assert (=> b!3674982 m!4184325))

(declare-fun m!4184341 () Bool)

(assert (=> b!3674982 m!4184341))

(assert (=> b!3674982 m!4184341))

(declare-fun m!4184343 () Bool)

(assert (=> b!3674982 m!4184343))

(assert (=> b!3674983 m!4184325))

(assert (=> b!3674983 m!4184337))

(assert (=> b!3674983 m!4184337))

(assert (=> b!3674983 m!4184339))

(assert (=> b!3674983 m!4184339))

(declare-fun m!4184345 () Bool)

(assert (=> b!3674983 m!4184345))

(declare-fun m!4184347 () Bool)

(assert (=> bm!266134 m!4184347))

(declare-fun m!4184349 () Bool)

(assert (=> d!1078953 m!4184349))

(declare-fun m!4184351 () Bool)

(assert (=> d!1078953 m!4184351))

(declare-fun m!4184353 () Bool)

(assert (=> d!1078953 m!4184353))

(declare-fun m!4184355 () Bool)

(assert (=> d!1078953 m!4184355))

(assert (=> b!3674986 m!4184325))

(assert (=> b!3674986 m!4184337))

(assert (=> b!3674986 m!4184337))

(assert (=> b!3674986 m!4184339))

(assert (=> b!3674986 m!4184339))

(declare-fun m!4184357 () Bool)

(assert (=> b!3674986 m!4184357))

(assert (=> b!3674406 d!1078953))

(declare-fun d!1078955 () Bool)

(declare-fun list!14401 (Conc!11861) List!38883)

(assert (=> d!1078955 (= (list!14398 lt!1282366) (list!14401 (c!635393 lt!1282366)))))

(declare-fun bs!573318 () Bool)

(assert (= bs!573318 d!1078955))

(declare-fun m!4184359 () Bool)

(assert (=> bs!573318 m!4184359))

(assert (=> b!3674406 d!1078955))

(declare-fun d!1078957 () Bool)

(declare-fun lt!1282681 () BalanceConc!23336)

(assert (=> d!1078957 (= (list!14398 lt!1282681) (originalCharacters!6546 token!511))))

(assert (=> d!1078957 (= lt!1282681 (dynLambda!16968 (toChars!7987 (transformation!5832 (rule!8660 token!511))) (value!186672 token!511)))))

(assert (=> d!1078957 (= (charsOf!3846 token!511) lt!1282681)))

(declare-fun b_lambda!109119 () Bool)

(assert (=> (not b_lambda!109119) (not d!1078957)))

(assert (=> d!1078957 t!299994))

(declare-fun b_and!274043 () Bool)

(assert (= b_and!274027 (and (=> t!299994 result!259032) b_and!274043)))

(assert (=> d!1078957 t!299996))

(declare-fun b_and!274045 () Bool)

(assert (= b_and!274029 (and (=> t!299996 result!259036) b_and!274045)))

(assert (=> d!1078957 t!299998))

(declare-fun b_and!274047 () Bool)

(assert (= b_and!274031 (and (=> t!299998 result!259038) b_and!274047)))

(assert (=> d!1078957 t!300000))

(declare-fun b_and!274049 () Bool)

(assert (= b_and!274033 (and (=> t!300000 result!259040) b_and!274049)))

(declare-fun m!4184361 () Bool)

(assert (=> d!1078957 m!4184361))

(assert (=> d!1078957 m!4184197))

(assert (=> b!3674406 d!1078957))

(declare-fun d!1078959 () Bool)

(assert (=> d!1078959 (contains!7731 lt!1282379 (head!7876 suffix!1395))))

(declare-fun lt!1282689 () Unit!56537)

(declare-fun choose!21893 (List!38883 List!38883 List!38883 List!38883) Unit!56537)

(assert (=> d!1078959 (= lt!1282689 (choose!21893 lt!1282365 suffix!1395 lt!1282379 lt!1282401))))

(assert (=> d!1078959 (isPrefix!3195 lt!1282379 lt!1282401)))

(assert (=> d!1078959 (= (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!140 lt!1282365 suffix!1395 lt!1282379 lt!1282401) lt!1282689)))

(declare-fun bs!573319 () Bool)

(assert (= bs!573319 d!1078959))

(assert (=> bs!573319 m!4183565))

(assert (=> bs!573319 m!4183565))

(declare-fun m!4184363 () Bool)

(assert (=> bs!573319 m!4184363))

(declare-fun m!4184365 () Bool)

(assert (=> bs!573319 m!4184365))

(assert (=> bs!573319 m!4183537))

(assert (=> b!3674376 d!1078959))

(declare-fun d!1078961 () Bool)

(declare-fun lt!1282690 () Bool)

(assert (=> d!1078961 (= lt!1282690 (select (content!5614 lt!1282379) lt!1282408))))

(declare-fun e!2275622 () Bool)

(assert (=> d!1078961 (= lt!1282690 e!2275622)))

(declare-fun res!1492801 () Bool)

(assert (=> d!1078961 (=> (not res!1492801) (not e!2275622))))

(assert (=> d!1078961 (= res!1492801 ((_ is Cons!38759) lt!1282379))))

(assert (=> d!1078961 (= (contains!7731 lt!1282379 lt!1282408) lt!1282690)))

(declare-fun b!3675014 () Bool)

(declare-fun e!2275623 () Bool)

(assert (=> b!3675014 (= e!2275622 e!2275623)))

(declare-fun res!1492802 () Bool)

(assert (=> b!3675014 (=> res!1492802 e!2275623)))

(assert (=> b!3675014 (= res!1492802 (= (h!44179 lt!1282379) lt!1282408))))

(declare-fun b!3675015 () Bool)

(assert (=> b!3675015 (= e!2275623 (contains!7731 (t!299958 lt!1282379) lt!1282408))))

(assert (= (and d!1078961 res!1492801) b!3675014))

(assert (= (and b!3675014 (not res!1492802)) b!3675015))

(declare-fun m!4184367 () Bool)

(assert (=> d!1078961 m!4184367))

(declare-fun m!4184369 () Bool)

(assert (=> d!1078961 m!4184369))

(declare-fun m!4184371 () Bool)

(assert (=> b!3675015 m!4184371))

(assert (=> b!3674376 d!1078961))

(declare-fun d!1078963 () Bool)

(declare-fun lt!1282691 () List!38883)

(assert (=> d!1078963 (= (++!9648 lt!1282365 lt!1282691) lt!1282401)))

(declare-fun e!2275624 () List!38883)

(assert (=> d!1078963 (= lt!1282691 e!2275624)))

(declare-fun c!635526 () Bool)

(assert (=> d!1078963 (= c!635526 ((_ is Cons!38759) lt!1282365))))

(assert (=> d!1078963 (>= (size!29633 lt!1282401) (size!29633 lt!1282365))))

(assert (=> d!1078963 (= (getSuffix!1748 lt!1282401 lt!1282365) lt!1282691)))

(declare-fun b!3675016 () Bool)

(assert (=> b!3675016 (= e!2275624 (getSuffix!1748 (tail!5685 lt!1282401) (t!299958 lt!1282365)))))

(declare-fun b!3675017 () Bool)

(assert (=> b!3675017 (= e!2275624 lt!1282401)))

(assert (= (and d!1078963 c!635526) b!3675016))

(assert (= (and d!1078963 (not c!635526)) b!3675017))

(declare-fun m!4184373 () Bool)

(assert (=> d!1078963 m!4184373))

(assert (=> d!1078963 m!4183993))

(assert (=> d!1078963 m!4184329))

(assert (=> b!3675016 m!4184035))

(assert (=> b!3675016 m!4184035))

(declare-fun m!4184375 () Bool)

(assert (=> b!3675016 m!4184375))

(assert (=> b!3674415 d!1078963))

(declare-fun d!1078965 () Bool)

(assert (=> d!1078965 (= (head!7876 lt!1282379) (h!44179 lt!1282379))))

(assert (=> b!3674415 d!1078965))

(declare-fun d!1078967 () Bool)

(declare-fun lt!1282692 () Bool)

(assert (=> d!1078967 (= lt!1282692 (select (content!5614 lt!1282378) lt!1282417))))

(declare-fun e!2275625 () Bool)

(assert (=> d!1078967 (= lt!1282692 e!2275625)))

(declare-fun res!1492803 () Bool)

(assert (=> d!1078967 (=> (not res!1492803) (not e!2275625))))

(assert (=> d!1078967 (= res!1492803 ((_ is Cons!38759) lt!1282378))))

(assert (=> d!1078967 (= (contains!7731 lt!1282378 lt!1282417) lt!1282692)))

(declare-fun b!3675018 () Bool)

(declare-fun e!2275626 () Bool)

(assert (=> b!3675018 (= e!2275625 e!2275626)))

(declare-fun res!1492804 () Bool)

(assert (=> b!3675018 (=> res!1492804 e!2275626)))

(assert (=> b!3675018 (= res!1492804 (= (h!44179 lt!1282378) lt!1282417))))

(declare-fun b!3675019 () Bool)

(assert (=> b!3675019 (= e!2275626 (contains!7731 (t!299958 lt!1282378) lt!1282417))))

(assert (= (and d!1078967 res!1492803) b!3675018))

(assert (= (and b!3675018 (not res!1492804)) b!3675019))

(assert (=> d!1078967 m!4183843))

(declare-fun m!4184377 () Bool)

(assert (=> d!1078967 m!4184377))

(declare-fun m!4184379 () Bool)

(assert (=> b!3675019 m!4184379))

(assert (=> b!3674415 d!1078967))

(declare-fun d!1078969 () Bool)

(declare-fun lt!1282693 () Int)

(assert (=> d!1078969 (= lt!1282693 (size!29633 (list!14398 lt!1282366)))))

(assert (=> d!1078969 (= lt!1282693 (size!29635 (c!635393 lt!1282366)))))

(assert (=> d!1078969 (= (size!29632 lt!1282366) lt!1282693)))

(declare-fun bs!573320 () Bool)

(assert (= bs!573320 d!1078969))

(assert (=> bs!573320 m!4183577))

(assert (=> bs!573320 m!4183577))

(declare-fun m!4184381 () Bool)

(assert (=> bs!573320 m!4184381))

(declare-fun m!4184383 () Bool)

(assert (=> bs!573320 m!4184383))

(assert (=> b!3674415 d!1078969))

(declare-fun d!1078971 () Bool)

(assert (=> d!1078971 (= lt!1282379 lt!1282365)))

(declare-fun lt!1282696 () Unit!56537)

(declare-fun choose!21895 (List!38883 List!38883 List!38883) Unit!56537)

(assert (=> d!1078971 (= lt!1282696 (choose!21895 lt!1282379 lt!1282365 lt!1282401))))

(assert (=> d!1078971 (isPrefix!3195 lt!1282379 lt!1282401)))

(assert (=> d!1078971 (= (lemmaIsPrefixSameLengthThenSameList!657 lt!1282379 lt!1282365 lt!1282401) lt!1282696)))

(declare-fun bs!573321 () Bool)

(assert (= bs!573321 d!1078971))

(declare-fun m!4184429 () Bool)

(assert (=> bs!573321 m!4184429))

(assert (=> bs!573321 m!4183537))

(assert (=> b!3674415 d!1078971))

(declare-fun b!3675029 () Bool)

(declare-fun e!2275631 () List!38883)

(assert (=> b!3675029 (= e!2275631 (Cons!38759 (h!44179 lt!1282365) (++!9648 (t!299958 lt!1282365) (getSuffix!1748 lt!1282401 lt!1282365))))))

(declare-fun b!3675030 () Bool)

(declare-fun res!1492809 () Bool)

(declare-fun e!2275632 () Bool)

(assert (=> b!3675030 (=> (not res!1492809) (not e!2275632))))

(declare-fun lt!1282699 () List!38883)

(assert (=> b!3675030 (= res!1492809 (= (size!29633 lt!1282699) (+ (size!29633 lt!1282365) (size!29633 (getSuffix!1748 lt!1282401 lt!1282365)))))))

(declare-fun b!3675028 () Bool)

(assert (=> b!3675028 (= e!2275631 (getSuffix!1748 lt!1282401 lt!1282365))))

(declare-fun b!3675031 () Bool)

(assert (=> b!3675031 (= e!2275632 (or (not (= (getSuffix!1748 lt!1282401 lt!1282365) Nil!38759)) (= lt!1282699 lt!1282365)))))

(declare-fun d!1078975 () Bool)

(assert (=> d!1078975 e!2275632))

(declare-fun res!1492810 () Bool)

(assert (=> d!1078975 (=> (not res!1492810) (not e!2275632))))

(assert (=> d!1078975 (= res!1492810 (= (content!5614 lt!1282699) ((_ map or) (content!5614 lt!1282365) (content!5614 (getSuffix!1748 lt!1282401 lt!1282365)))))))

(assert (=> d!1078975 (= lt!1282699 e!2275631)))

(declare-fun c!635529 () Bool)

(assert (=> d!1078975 (= c!635529 ((_ is Nil!38759) lt!1282365))))

(assert (=> d!1078975 (= (++!9648 lt!1282365 (getSuffix!1748 lt!1282401 lt!1282365)) lt!1282699)))

(assert (= (and d!1078975 c!635529) b!3675028))

(assert (= (and d!1078975 (not c!635529)) b!3675029))

(assert (= (and d!1078975 res!1492810) b!3675030))

(assert (= (and b!3675030 res!1492809) b!3675031))

(assert (=> b!3675029 m!4183587))

(declare-fun m!4184431 () Bool)

(assert (=> b!3675029 m!4184431))

(declare-fun m!4184433 () Bool)

(assert (=> b!3675030 m!4184433))

(assert (=> b!3675030 m!4184329))

(assert (=> b!3675030 m!4183587))

(declare-fun m!4184435 () Bool)

(assert (=> b!3675030 m!4184435))

(declare-fun m!4184437 () Bool)

(assert (=> d!1078975 m!4184437))

(declare-fun m!4184439 () Bool)

(assert (=> d!1078975 m!4184439))

(assert (=> d!1078975 m!4183587))

(declare-fun m!4184441 () Bool)

(assert (=> d!1078975 m!4184441))

(assert (=> b!3674415 d!1078975))

(declare-fun b!3675032 () Bool)

(declare-fun e!2275635 () Bool)

(declare-fun e!2275639 () Bool)

(assert (=> b!3675032 (= e!2275635 e!2275639)))

(declare-fun res!1492818 () Bool)

(assert (=> b!3675032 (=> res!1492818 e!2275639)))

(declare-fun call!266140 () Bool)

(assert (=> b!3675032 (= res!1492818 call!266140)))

(declare-fun bm!266135 () Bool)

(assert (=> bm!266135 (= call!266140 (isEmpty!23010 (list!14398 (charsOf!3846 (_1!22446 lt!1282410)))))))

(declare-fun b!3675033 () Bool)

(declare-fun e!2275634 () Bool)

(assert (=> b!3675033 (= e!2275634 e!2275635)))

(declare-fun res!1492816 () Bool)

(assert (=> b!3675033 (=> (not res!1492816) (not e!2275635))))

(declare-fun lt!1282700 () Bool)

(assert (=> b!3675033 (= res!1492816 (not lt!1282700))))

(declare-fun b!3675034 () Bool)

(declare-fun res!1492812 () Bool)

(declare-fun e!2275636 () Bool)

(assert (=> b!3675034 (=> (not res!1492812) (not e!2275636))))

(assert (=> b!3675034 (= res!1492812 (not call!266140))))

(declare-fun b!3675035 () Bool)

(declare-fun e!2275633 () Bool)

(assert (=> b!3675035 (= e!2275633 (nullable!3687 (regex!5832 lt!1282364)))))

(declare-fun b!3675036 () Bool)

(declare-fun res!1492815 () Bool)

(assert (=> b!3675036 (=> res!1492815 e!2275634)))

(assert (=> b!3675036 (= res!1492815 e!2275636)))

(declare-fun res!1492814 () Bool)

(assert (=> b!3675036 (=> (not res!1492814) (not e!2275636))))

(assert (=> b!3675036 (= res!1492814 lt!1282700)))

(declare-fun b!3675037 () Bool)

(declare-fun res!1492813 () Bool)

(assert (=> b!3675037 (=> res!1492813 e!2275639)))

(assert (=> b!3675037 (= res!1492813 (not (isEmpty!23010 (tail!5685 (list!14398 (charsOf!3846 (_1!22446 lt!1282410)))))))))

(declare-fun b!3675038 () Bool)

(declare-fun res!1492811 () Bool)

(assert (=> b!3675038 (=> (not res!1492811) (not e!2275636))))

(assert (=> b!3675038 (= res!1492811 (isEmpty!23010 (tail!5685 (list!14398 (charsOf!3846 (_1!22446 lt!1282410))))))))

(declare-fun b!3675039 () Bool)

(assert (=> b!3675039 (= e!2275639 (not (= (head!7876 (list!14398 (charsOf!3846 (_1!22446 lt!1282410)))) (c!635392 (regex!5832 lt!1282364)))))))

(declare-fun b!3675040 () Bool)

(assert (=> b!3675040 (= e!2275636 (= (head!7876 (list!14398 (charsOf!3846 (_1!22446 lt!1282410)))) (c!635392 (regex!5832 lt!1282364))))))

(declare-fun d!1078977 () Bool)

(declare-fun e!2275637 () Bool)

(assert (=> d!1078977 e!2275637))

(declare-fun c!635531 () Bool)

(assert (=> d!1078977 (= c!635531 ((_ is EmptyExpr!10591) (regex!5832 lt!1282364)))))

(assert (=> d!1078977 (= lt!1282700 e!2275633)))

(declare-fun c!635530 () Bool)

(assert (=> d!1078977 (= c!635530 (isEmpty!23010 (list!14398 (charsOf!3846 (_1!22446 lt!1282410)))))))

(assert (=> d!1078977 (validRegex!4849 (regex!5832 lt!1282364))))

(assert (=> d!1078977 (= (matchR!5160 (regex!5832 lt!1282364) (list!14398 (charsOf!3846 (_1!22446 lt!1282410)))) lt!1282700)))

(declare-fun b!3675041 () Bool)

(declare-fun e!2275638 () Bool)

(assert (=> b!3675041 (= e!2275637 e!2275638)))

(declare-fun c!635532 () Bool)

(assert (=> b!3675041 (= c!635532 ((_ is EmptyLang!10591) (regex!5832 lt!1282364)))))

(declare-fun b!3675042 () Bool)

(declare-fun res!1492817 () Bool)

(assert (=> b!3675042 (=> res!1492817 e!2275634)))

(assert (=> b!3675042 (= res!1492817 (not ((_ is ElementMatch!10591) (regex!5832 lt!1282364))))))

(assert (=> b!3675042 (= e!2275638 e!2275634)))

(declare-fun b!3675043 () Bool)

(assert (=> b!3675043 (= e!2275637 (= lt!1282700 call!266140))))

(declare-fun b!3675044 () Bool)

(assert (=> b!3675044 (= e!2275638 (not lt!1282700))))

(declare-fun b!3675045 () Bool)

(assert (=> b!3675045 (= e!2275633 (matchR!5160 (derivativeStep!3236 (regex!5832 lt!1282364) (head!7876 (list!14398 (charsOf!3846 (_1!22446 lt!1282410))))) (tail!5685 (list!14398 (charsOf!3846 (_1!22446 lt!1282410))))))))

(assert (= (and d!1078977 c!635530) b!3675035))

(assert (= (and d!1078977 (not c!635530)) b!3675045))

(assert (= (and d!1078977 c!635531) b!3675043))

(assert (= (and d!1078977 (not c!635531)) b!3675041))

(assert (= (and b!3675041 c!635532) b!3675044))

(assert (= (and b!3675041 (not c!635532)) b!3675042))

(assert (= (and b!3675042 (not res!1492817)) b!3675036))

(assert (= (and b!3675036 res!1492814) b!3675034))

(assert (= (and b!3675034 res!1492812) b!3675038))

(assert (= (and b!3675038 res!1492811) b!3675040))

(assert (= (and b!3675036 (not res!1492815)) b!3675033))

(assert (= (and b!3675033 res!1492816) b!3675032))

(assert (= (and b!3675032 (not res!1492818)) b!3675037))

(assert (= (and b!3675037 (not res!1492813)) b!3675039))

(assert (= (or b!3675043 b!3675032 b!3675034) bm!266135))

(assert (=> bm!266135 m!4183669))

(declare-fun m!4184443 () Bool)

(assert (=> bm!266135 m!4184443))

(assert (=> d!1078977 m!4183669))

(assert (=> d!1078977 m!4184443))

(declare-fun m!4184445 () Bool)

(assert (=> d!1078977 m!4184445))

(assert (=> b!3675045 m!4183669))

(declare-fun m!4184447 () Bool)

(assert (=> b!3675045 m!4184447))

(assert (=> b!3675045 m!4184447))

(declare-fun m!4184449 () Bool)

(assert (=> b!3675045 m!4184449))

(assert (=> b!3675045 m!4183669))

(declare-fun m!4184451 () Bool)

(assert (=> b!3675045 m!4184451))

(assert (=> b!3675045 m!4184449))

(assert (=> b!3675045 m!4184451))

(declare-fun m!4184453 () Bool)

(assert (=> b!3675045 m!4184453))

(assert (=> b!3675039 m!4183669))

(assert (=> b!3675039 m!4184447))

(declare-fun m!4184455 () Bool)

(assert (=> b!3675035 m!4184455))

(assert (=> b!3675038 m!4183669))

(assert (=> b!3675038 m!4184451))

(assert (=> b!3675038 m!4184451))

(declare-fun m!4184457 () Bool)

(assert (=> b!3675038 m!4184457))

(assert (=> b!3675037 m!4183669))

(assert (=> b!3675037 m!4184451))

(assert (=> b!3675037 m!4184451))

(assert (=> b!3675037 m!4184457))

(assert (=> b!3675040 m!4183669))

(assert (=> b!3675040 m!4184447))

(assert (=> b!3674395 d!1078977))

(declare-fun d!1078979 () Bool)

(assert (=> d!1078979 (= (list!14398 (charsOf!3846 (_1!22446 lt!1282410))) (list!14401 (c!635393 (charsOf!3846 (_1!22446 lt!1282410)))))))

(declare-fun bs!573322 () Bool)

(assert (= bs!573322 d!1078979))

(declare-fun m!4184459 () Bool)

(assert (=> bs!573322 m!4184459))

(assert (=> b!3674395 d!1078979))

(declare-fun d!1078981 () Bool)

(declare-fun lt!1282701 () BalanceConc!23336)

(assert (=> d!1078981 (= (list!14398 lt!1282701) (originalCharacters!6546 (_1!22446 lt!1282410)))))

(assert (=> d!1078981 (= lt!1282701 (dynLambda!16968 (toChars!7987 (transformation!5832 (rule!8660 (_1!22446 lt!1282410)))) (value!186672 (_1!22446 lt!1282410))))))

(assert (=> d!1078981 (= (charsOf!3846 (_1!22446 lt!1282410)) lt!1282701)))

(declare-fun b_lambda!109121 () Bool)

(assert (=> (not b_lambda!109121) (not d!1078981)))

(declare-fun t!300042 () Bool)

(declare-fun tb!212909 () Bool)

(assert (=> (and b!3674402 (= (toChars!7987 (transformation!5832 anOtherTypeRule!33)) (toChars!7987 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) t!300042) tb!212909))

(declare-fun b!3675046 () Bool)

(declare-fun e!2275640 () Bool)

(declare-fun tp!1117788 () Bool)

(assert (=> b!3675046 (= e!2275640 (and (inv!52254 (c!635393 (dynLambda!16968 (toChars!7987 (transformation!5832 (rule!8660 (_1!22446 lt!1282410)))) (value!186672 (_1!22446 lt!1282410))))) tp!1117788))))

(declare-fun result!259082 () Bool)

(assert (=> tb!212909 (= result!259082 (and (inv!52255 (dynLambda!16968 (toChars!7987 (transformation!5832 (rule!8660 (_1!22446 lt!1282410)))) (value!186672 (_1!22446 lt!1282410)))) e!2275640))))

(assert (= tb!212909 b!3675046))

(declare-fun m!4184461 () Bool)

(assert (=> b!3675046 m!4184461))

(declare-fun m!4184463 () Bool)

(assert (=> tb!212909 m!4184463))

(assert (=> d!1078981 t!300042))

(declare-fun b_and!274051 () Bool)

(assert (= b_and!274043 (and (=> t!300042 result!259082) b_and!274051)))

(declare-fun tb!212911 () Bool)

(declare-fun t!300044 () Bool)

(assert (=> (and b!3674393 (= (toChars!7987 (transformation!5832 rule!403)) (toChars!7987 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) t!300044) tb!212911))

(declare-fun result!259084 () Bool)

(assert (= result!259084 result!259082))

(assert (=> d!1078981 t!300044))

(declare-fun b_and!274053 () Bool)

(assert (= b_and!274045 (and (=> t!300044 result!259084) b_and!274053)))

(declare-fun tb!212913 () Bool)

(declare-fun t!300046 () Bool)

(assert (=> (and b!3674398 (= (toChars!7987 (transformation!5832 (rule!8660 token!511))) (toChars!7987 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) t!300046) tb!212913))

(declare-fun result!259086 () Bool)

(assert (= result!259086 result!259082))

(assert (=> d!1078981 t!300046))

(declare-fun b_and!274055 () Bool)

(assert (= b_and!274047 (and (=> t!300046 result!259086) b_and!274055)))

(declare-fun t!300048 () Bool)

(declare-fun tb!212915 () Bool)

(assert (=> (and b!3674399 (= (toChars!7987 (transformation!5832 (h!44181 rules!3307))) (toChars!7987 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) t!300048) tb!212915))

(declare-fun result!259088 () Bool)

(assert (= result!259088 result!259082))

(assert (=> d!1078981 t!300048))

(declare-fun b_and!274057 () Bool)

(assert (= b_and!274049 (and (=> t!300048 result!259088) b_and!274057)))

(declare-fun m!4184465 () Bool)

(assert (=> d!1078981 m!4184465))

(declare-fun m!4184467 () Bool)

(assert (=> d!1078981 m!4184467))

(assert (=> b!3674395 d!1078981))

(declare-fun d!1078983 () Bool)

(assert (=> d!1078983 (= (get!12819 lt!1282363) (v!38211 lt!1282363))))

(assert (=> b!3674395 d!1078983))

(declare-fun d!1078985 () Bool)

(assert (=> d!1078985 (= (isEmpty!23010 (_2!22446 lt!1282369)) ((_ is Nil!38759) (_2!22446 lt!1282369)))))

(assert (=> b!3674392 d!1078985))

(declare-fun d!1078987 () Bool)

(assert (=> d!1078987 (isPrefix!3195 lt!1282365 (++!9648 lt!1282365 suffix!1395))))

(declare-fun lt!1282704 () Unit!56537)

(declare-fun choose!21897 (List!38883 List!38883) Unit!56537)

(assert (=> d!1078987 (= lt!1282704 (choose!21897 lt!1282365 suffix!1395))))

(assert (=> d!1078987 (= (lemmaConcatTwoListThenFirstIsPrefix!2114 lt!1282365 suffix!1395) lt!1282704)))

(declare-fun bs!573323 () Bool)

(assert (= bs!573323 d!1078987))

(assert (=> bs!573323 m!4183533))

(assert (=> bs!573323 m!4183533))

(declare-fun m!4184469 () Bool)

(assert (=> bs!573323 m!4184469))

(declare-fun m!4184471 () Bool)

(assert (=> bs!573323 m!4184471))

(assert (=> b!3674374 d!1078987))

(declare-fun b!3675062 () Bool)

(declare-fun e!2275649 () Bool)

(assert (=> b!3675062 (= e!2275649 (>= (size!29633 lt!1282401) (size!29633 lt!1282379)))))

(declare-fun b!3675060 () Bool)

(declare-fun res!1492830 () Bool)

(declare-fun e!2275651 () Bool)

(assert (=> b!3675060 (=> (not res!1492830) (not e!2275651))))

(assert (=> b!3675060 (= res!1492830 (= (head!7876 lt!1282379) (head!7876 lt!1282401)))))

(declare-fun b!3675059 () Bool)

(declare-fun e!2275650 () Bool)

(assert (=> b!3675059 (= e!2275650 e!2275651)))

(declare-fun res!1492827 () Bool)

(assert (=> b!3675059 (=> (not res!1492827) (not e!2275651))))

(assert (=> b!3675059 (= res!1492827 (not ((_ is Nil!38759) lt!1282401)))))

(declare-fun b!3675061 () Bool)

(assert (=> b!3675061 (= e!2275651 (isPrefix!3195 (tail!5685 lt!1282379) (tail!5685 lt!1282401)))))

(declare-fun d!1078989 () Bool)

(assert (=> d!1078989 e!2275649))

(declare-fun res!1492829 () Bool)

(assert (=> d!1078989 (=> res!1492829 e!2275649)))

(declare-fun lt!1282712 () Bool)

(assert (=> d!1078989 (= res!1492829 (not lt!1282712))))

(assert (=> d!1078989 (= lt!1282712 e!2275650)))

(declare-fun res!1492828 () Bool)

(assert (=> d!1078989 (=> res!1492828 e!2275650)))

(assert (=> d!1078989 (= res!1492828 ((_ is Nil!38759) lt!1282379))))

(assert (=> d!1078989 (= (isPrefix!3195 lt!1282379 lt!1282401) lt!1282712)))

(assert (= (and d!1078989 (not res!1492828)) b!3675059))

(assert (= (and b!3675059 res!1492827) b!3675060))

(assert (= (and b!3675060 res!1492830) b!3675061))

(assert (= (and d!1078989 (not res!1492829)) b!3675062))

(assert (=> b!3675062 m!4183993))

(assert (=> b!3675062 m!4183687))

(assert (=> b!3675060 m!4183585))

(declare-fun m!4184477 () Bool)

(assert (=> b!3675060 m!4184477))

(declare-fun m!4184479 () Bool)

(assert (=> b!3675061 m!4184479))

(assert (=> b!3675061 m!4184035))

(assert (=> b!3675061 m!4184479))

(assert (=> b!3675061 m!4184035))

(declare-fun m!4184481 () Bool)

(assert (=> b!3675061 m!4184481))

(assert (=> b!3674374 d!1078989))

(declare-fun d!1078995 () Bool)

(assert (=> d!1078995 (= (list!14398 lt!1282383) (list!14401 (c!635393 lt!1282383)))))

(declare-fun bs!573325 () Bool)

(assert (= bs!573325 d!1078995))

(declare-fun m!4184483 () Bool)

(assert (=> bs!573325 m!4184483))

(assert (=> b!3674374 d!1078995))

(declare-fun b!3675066 () Bool)

(declare-fun e!2275653 () List!38883)

(assert (=> b!3675066 (= e!2275653 (Cons!38759 (h!44179 lt!1282365) (++!9648 (t!299958 lt!1282365) suffix!1395)))))

(declare-fun b!3675067 () Bool)

(declare-fun res!1492831 () Bool)

(declare-fun e!2275654 () Bool)

(assert (=> b!3675067 (=> (not res!1492831) (not e!2275654))))

(declare-fun lt!1282714 () List!38883)

(assert (=> b!3675067 (= res!1492831 (= (size!29633 lt!1282714) (+ (size!29633 lt!1282365) (size!29633 suffix!1395))))))

(declare-fun b!3675065 () Bool)

(assert (=> b!3675065 (= e!2275653 suffix!1395)))

(declare-fun b!3675068 () Bool)

(assert (=> b!3675068 (= e!2275654 (or (not (= suffix!1395 Nil!38759)) (= lt!1282714 lt!1282365)))))

(declare-fun d!1078997 () Bool)

(assert (=> d!1078997 e!2275654))

(declare-fun res!1492832 () Bool)

(assert (=> d!1078997 (=> (not res!1492832) (not e!2275654))))

(assert (=> d!1078997 (= res!1492832 (= (content!5614 lt!1282714) ((_ map or) (content!5614 lt!1282365) (content!5614 suffix!1395))))))

(assert (=> d!1078997 (= lt!1282714 e!2275653)))

(declare-fun c!635536 () Bool)

(assert (=> d!1078997 (= c!635536 ((_ is Nil!38759) lt!1282365))))

(assert (=> d!1078997 (= (++!9648 lt!1282365 suffix!1395) lt!1282714)))

(assert (= (and d!1078997 c!635536) b!3675065))

(assert (= (and d!1078997 (not c!635536)) b!3675066))

(assert (= (and d!1078997 res!1492832) b!3675067))

(assert (= (and b!3675067 res!1492831) b!3675068))

(declare-fun m!4184487 () Bool)

(assert (=> b!3675066 m!4184487))

(declare-fun m!4184489 () Bool)

(assert (=> b!3675067 m!4184489))

(assert (=> b!3675067 m!4184329))

(declare-fun m!4184491 () Bool)

(assert (=> b!3675067 m!4184491))

(declare-fun m!4184493 () Bool)

(assert (=> d!1078997 m!4184493))

(assert (=> d!1078997 m!4184439))

(declare-fun m!4184495 () Bool)

(assert (=> d!1078997 m!4184495))

(assert (=> b!3674374 d!1078997))

(declare-fun b!3675134 () Bool)

(declare-fun e!2275687 () Unit!56537)

(declare-fun Unit!56560 () Unit!56537)

(assert (=> b!3675134 (= e!2275687 Unit!56560)))

(declare-fun b!3675132 () Bool)

(declare-fun lt!1282765 () Token!11030)

(declare-fun e!2275688 () Bool)

(assert (=> b!3675132 (= e!2275688 (= (rule!8660 lt!1282765) (get!12819 (getRuleFromTag!1436 thiss!23823 rules!3307 (tag!6626 (rule!8660 lt!1282765))))))))

(declare-fun b!3675133 () Bool)

(declare-fun Unit!56561 () Unit!56537)

(assert (=> b!3675133 (= e!2275687 Unit!56561)))

(declare-fun lt!1282759 () List!38883)

(assert (=> b!3675133 (= lt!1282759 (++!9648 lt!1282365 suffix!1395))))

(declare-fun lt!1282756 () Unit!56537)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!574 (LexerInterface!5421 Rule!11464 List!38885 List!38883) Unit!56537)

(assert (=> b!3675133 (= lt!1282756 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!574 thiss!23823 (rule!8660 lt!1282765) rules!3307 lt!1282759))))

(assert (=> b!3675133 (isEmpty!23014 (maxPrefixOneRule!2093 thiss!23823 (rule!8660 lt!1282765) lt!1282759))))

(declare-fun lt!1282761 () Unit!56537)

(assert (=> b!3675133 (= lt!1282761 lt!1282756)))

(declare-fun lt!1282757 () List!38883)

(assert (=> b!3675133 (= lt!1282757 (list!14398 (charsOf!3846 lt!1282765)))))

(declare-fun lt!1282767 () Unit!56537)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!562 (LexerInterface!5421 Rule!11464 List!38883 List!38883) Unit!56537)

(assert (=> b!3675133 (= lt!1282767 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!562 thiss!23823 (rule!8660 lt!1282765) lt!1282757 (++!9648 lt!1282365 suffix!1395)))))

(assert (=> b!3675133 (not (matchR!5160 (regex!5832 (rule!8660 lt!1282765)) lt!1282757))))

(declare-fun lt!1282769 () Unit!56537)

(assert (=> b!3675133 (= lt!1282769 lt!1282767)))

(assert (=> b!3675133 false))

(declare-fun d!1078999 () Bool)

(assert (=> d!1078999 (isDefined!6525 (maxPrefix!2955 thiss!23823 rules!3307 (++!9648 lt!1282365 suffix!1395)))))

(declare-fun lt!1282772 () Unit!56537)

(assert (=> d!1078999 (= lt!1282772 e!2275687)))

(declare-fun c!635540 () Bool)

(assert (=> d!1078999 (= c!635540 (isEmpty!23014 (maxPrefix!2955 thiss!23823 rules!3307 (++!9648 lt!1282365 suffix!1395))))))

(declare-fun lt!1282758 () Unit!56537)

(declare-fun lt!1282764 () Unit!56537)

(assert (=> d!1078999 (= lt!1282758 lt!1282764)))

(assert (=> d!1078999 e!2275688))

(declare-fun res!1492846 () Bool)

(assert (=> d!1078999 (=> (not res!1492846) (not e!2275688))))

(assert (=> d!1078999 (= res!1492846 (isDefined!6524 (getRuleFromTag!1436 thiss!23823 rules!3307 (tag!6626 (rule!8660 lt!1282765)))))))

(assert (=> d!1078999 (= lt!1282764 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1436 thiss!23823 rules!3307 lt!1282365 lt!1282765))))

(declare-fun lt!1282766 () Unit!56537)

(declare-fun lt!1282770 () Unit!56537)

(assert (=> d!1078999 (= lt!1282766 lt!1282770)))

(declare-fun lt!1282760 () List!38883)

(assert (=> d!1078999 (isPrefix!3195 lt!1282760 (++!9648 lt!1282365 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!538 (List!38883 List!38883 List!38883) Unit!56537)

(assert (=> d!1078999 (= lt!1282770 (lemmaPrefixStaysPrefixWhenAddingToSuffix!538 lt!1282760 lt!1282365 suffix!1395))))

(assert (=> d!1078999 (= lt!1282760 (list!14398 (charsOf!3846 lt!1282765)))))

(declare-fun lt!1282771 () Unit!56537)

(declare-fun lt!1282768 () Unit!56537)

(assert (=> d!1078999 (= lt!1282771 lt!1282768)))

(declare-fun lt!1282762 () List!38883)

(declare-fun lt!1282763 () List!38883)

(assert (=> d!1078999 (isPrefix!3195 lt!1282762 (++!9648 lt!1282762 lt!1282763))))

(assert (=> d!1078999 (= lt!1282768 (lemmaConcatTwoListThenFirstIsPrefix!2114 lt!1282762 lt!1282763))))

(assert (=> d!1078999 (= lt!1282763 (_2!22446 (get!12818 (maxPrefix!2955 thiss!23823 rules!3307 lt!1282365))))))

(assert (=> d!1078999 (= lt!1282762 (list!14398 (charsOf!3846 lt!1282765)))))

(declare-datatypes ((List!38888 0))(
  ( (Nil!38764) (Cons!38764 (h!44184 Token!11030) (t!300083 List!38888)) )
))
(declare-fun head!7878 (List!38888) Token!11030)

(declare-datatypes ((IArray!23731 0))(
  ( (IArray!23732 (innerList!11923 List!38888)) )
))
(declare-datatypes ((Conc!11863 0))(
  ( (Node!11863 (left!30249 Conc!11863) (right!30579 Conc!11863) (csize!23956 Int) (cheight!12074 Int)) (Leaf!18390 (xs!15065 IArray!23731) (csize!23957 Int)) (Empty!11863) )
))
(declare-datatypes ((BalanceConc!23340 0))(
  ( (BalanceConc!23341 (c!635565 Conc!11863)) )
))
(declare-fun list!14402 (BalanceConc!23340) List!38888)

(declare-datatypes ((tuple2!38632 0))(
  ( (tuple2!38633 (_1!22450 BalanceConc!23340) (_2!22450 BalanceConc!23336)) )
))
(declare-fun lex!2570 (LexerInterface!5421 List!38885 BalanceConc!23336) tuple2!38632)

(assert (=> d!1078999 (= lt!1282765 (head!7878 (list!14402 (_1!22450 (lex!2570 thiss!23823 rules!3307 (seqFromList!4381 lt!1282365))))))))

(assert (=> d!1078999 (not (isEmpty!23011 rules!3307))))

(assert (=> d!1078999 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1099 thiss!23823 rules!3307 lt!1282365 suffix!1395) lt!1282772)))

(declare-fun b!3675131 () Bool)

(declare-fun res!1492847 () Bool)

(assert (=> b!3675131 (=> (not res!1492847) (not e!2275688))))

(assert (=> b!3675131 (= res!1492847 (matchR!5160 (regex!5832 (get!12819 (getRuleFromTag!1436 thiss!23823 rules!3307 (tag!6626 (rule!8660 lt!1282765))))) (list!14398 (charsOf!3846 lt!1282765))))))

(assert (= (and d!1078999 res!1492846) b!3675131))

(assert (= (and b!3675131 res!1492847) b!3675132))

(assert (= (and d!1078999 c!635540) b!3675133))

(assert (= (and d!1078999 (not c!635540)) b!3675134))

(declare-fun m!4184543 () Bool)

(assert (=> b!3675132 m!4184543))

(assert (=> b!3675132 m!4184543))

(declare-fun m!4184545 () Bool)

(assert (=> b!3675132 m!4184545))

(declare-fun m!4184547 () Bool)

(assert (=> b!3675133 m!4184547))

(declare-fun m!4184549 () Bool)

(assert (=> b!3675133 m!4184549))

(declare-fun m!4184551 () Bool)

(assert (=> b!3675133 m!4184551))

(declare-fun m!4184553 () Bool)

(assert (=> b!3675133 m!4184553))

(assert (=> b!3675133 m!4184551))

(declare-fun m!4184555 () Bool)

(assert (=> b!3675133 m!4184555))

(assert (=> b!3675133 m!4183533))

(declare-fun m!4184557 () Bool)

(assert (=> b!3675133 m!4184557))

(assert (=> b!3675133 m!4183533))

(assert (=> b!3675133 m!4184547))

(declare-fun m!4184559 () Bool)

(assert (=> b!3675133 m!4184559))

(declare-fun m!4184561 () Bool)

(assert (=> d!1078999 m!4184561))

(declare-fun m!4184563 () Bool)

(assert (=> d!1078999 m!4184563))

(assert (=> d!1078999 m!4184543))

(declare-fun m!4184565 () Bool)

(assert (=> d!1078999 m!4184565))

(assert (=> d!1078999 m!4184551))

(assert (=> d!1078999 m!4183575))

(assert (=> d!1078999 m!4183533))

(declare-fun m!4184567 () Bool)

(assert (=> d!1078999 m!4184567))

(assert (=> d!1078999 m!4184567))

(declare-fun m!4184569 () Bool)

(assert (=> d!1078999 m!4184569))

(assert (=> d!1078999 m!4183533))

(assert (=> d!1078999 m!4184551))

(assert (=> d!1078999 m!4184555))

(assert (=> d!1078999 m!4184561))

(declare-fun m!4184571 () Bool)

(assert (=> d!1078999 m!4184571))

(assert (=> d!1078999 m!4183575))

(declare-fun m!4184573 () Bool)

(assert (=> d!1078999 m!4184573))

(assert (=> d!1078999 m!4183663))

(declare-fun m!4184575 () Bool)

(assert (=> d!1078999 m!4184575))

(assert (=> d!1078999 m!4184563))

(declare-fun m!4184577 () Bool)

(assert (=> d!1078999 m!4184577))

(assert (=> d!1078999 m!4183533))

(declare-fun m!4184579 () Bool)

(assert (=> d!1078999 m!4184579))

(assert (=> d!1078999 m!4184543))

(declare-fun m!4184581 () Bool)

(assert (=> d!1078999 m!4184581))

(declare-fun m!4184583 () Bool)

(assert (=> d!1078999 m!4184583))

(declare-fun m!4184585 () Bool)

(assert (=> d!1078999 m!4184585))

(assert (=> d!1078999 m!4184583))

(assert (=> d!1078999 m!4184567))

(declare-fun m!4184587 () Bool)

(assert (=> d!1078999 m!4184587))

(declare-fun m!4184589 () Bool)

(assert (=> d!1078999 m!4184589))

(assert (=> b!3675131 m!4184543))

(assert (=> b!3675131 m!4184545))

(assert (=> b!3675131 m!4184555))

(declare-fun m!4184591 () Bool)

(assert (=> b!3675131 m!4184591))

(assert (=> b!3675131 m!4184543))

(assert (=> b!3675131 m!4184551))

(assert (=> b!3675131 m!4184551))

(assert (=> b!3675131 m!4184555))

(assert (=> b!3674374 d!1078999))

(declare-fun d!1079011 () Bool)

(declare-fun isEmpty!23015 (Option!8292) Bool)

(assert (=> d!1079011 (= (isDefined!6524 lt!1282363) (not (isEmpty!23015 lt!1282363)))))

(declare-fun bs!573328 () Bool)

(assert (= bs!573328 d!1079011))

(declare-fun m!4184593 () Bool)

(assert (=> bs!573328 m!4184593))

(assert (=> b!3674374 d!1079011))

(assert (=> b!3674374 d!1078981))

(declare-fun b!3675138 () Bool)

(declare-fun e!2275689 () Bool)

(assert (=> b!3675138 (= e!2275689 (>= (size!29633 lt!1282401) (size!29633 lt!1282365)))))

(declare-fun b!3675136 () Bool)

(declare-fun res!1492851 () Bool)

(declare-fun e!2275691 () Bool)

(assert (=> b!3675136 (=> (not res!1492851) (not e!2275691))))

(assert (=> b!3675136 (= res!1492851 (= (head!7876 lt!1282365) (head!7876 lt!1282401)))))

(declare-fun b!3675135 () Bool)

(declare-fun e!2275690 () Bool)

(assert (=> b!3675135 (= e!2275690 e!2275691)))

(declare-fun res!1492848 () Bool)

(assert (=> b!3675135 (=> (not res!1492848) (not e!2275691))))

(assert (=> b!3675135 (= res!1492848 (not ((_ is Nil!38759) lt!1282401)))))

(declare-fun b!3675137 () Bool)

(assert (=> b!3675137 (= e!2275691 (isPrefix!3195 (tail!5685 lt!1282365) (tail!5685 lt!1282401)))))

(declare-fun d!1079013 () Bool)

(assert (=> d!1079013 e!2275689))

(declare-fun res!1492850 () Bool)

(assert (=> d!1079013 (=> res!1492850 e!2275689)))

(declare-fun lt!1282773 () Bool)

(assert (=> d!1079013 (= res!1492850 (not lt!1282773))))

(assert (=> d!1079013 (= lt!1282773 e!2275690)))

(declare-fun res!1492849 () Bool)

(assert (=> d!1079013 (=> res!1492849 e!2275690)))

(assert (=> d!1079013 (= res!1492849 ((_ is Nil!38759) lt!1282365))))

(assert (=> d!1079013 (= (isPrefix!3195 lt!1282365 lt!1282401) lt!1282773)))

(assert (= (and d!1079013 (not res!1492849)) b!3675135))

(assert (= (and b!3675135 res!1492848) b!3675136))

(assert (= (and b!3675136 res!1492851) b!3675137))

(assert (= (and d!1079013 (not res!1492850)) b!3675138))

(assert (=> b!3675138 m!4183993))

(assert (=> b!3675138 m!4184329))

(assert (=> b!3675136 m!4184143))

(assert (=> b!3675136 m!4184477))

(assert (=> b!3675137 m!4184147))

(assert (=> b!3675137 m!4184035))

(assert (=> b!3675137 m!4184147))

(assert (=> b!3675137 m!4184035))

(declare-fun m!4184595 () Bool)

(assert (=> b!3675137 m!4184595))

(assert (=> b!3674374 d!1079013))

(declare-fun d!1079015 () Bool)

(declare-fun e!2275694 () Bool)

(assert (=> d!1079015 e!2275694))

(declare-fun res!1492856 () Bool)

(assert (=> d!1079015 (=> (not res!1492856) (not e!2275694))))

(assert (=> d!1079015 (= res!1492856 (isDefined!6524 (getRuleFromTag!1436 thiss!23823 rules!3307 (tag!6626 (rule!8660 (_1!22446 lt!1282410))))))))

(declare-fun lt!1282776 () Unit!56537)

(declare-fun choose!21899 (LexerInterface!5421 List!38885 List!38883 Token!11030) Unit!56537)

(assert (=> d!1079015 (= lt!1282776 (choose!21899 thiss!23823 rules!3307 lt!1282401 (_1!22446 lt!1282410)))))

(assert (=> d!1079015 (rulesInvariant!4818 thiss!23823 rules!3307)))

(assert (=> d!1079015 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1436 thiss!23823 rules!3307 lt!1282401 (_1!22446 lt!1282410)) lt!1282776)))

(declare-fun b!3675143 () Bool)

(declare-fun res!1492857 () Bool)

(assert (=> b!3675143 (=> (not res!1492857) (not e!2275694))))

(assert (=> b!3675143 (= res!1492857 (matchR!5160 (regex!5832 (get!12819 (getRuleFromTag!1436 thiss!23823 rules!3307 (tag!6626 (rule!8660 (_1!22446 lt!1282410)))))) (list!14398 (charsOf!3846 (_1!22446 lt!1282410)))))))

(declare-fun b!3675144 () Bool)

(assert (=> b!3675144 (= e!2275694 (= (rule!8660 (_1!22446 lt!1282410)) (get!12819 (getRuleFromTag!1436 thiss!23823 rules!3307 (tag!6626 (rule!8660 (_1!22446 lt!1282410)))))))))

(assert (= (and d!1079015 res!1492856) b!3675143))

(assert (= (and b!3675143 res!1492857) b!3675144))

(assert (=> d!1079015 m!4183553))

(assert (=> d!1079015 m!4183553))

(declare-fun m!4184597 () Bool)

(assert (=> d!1079015 m!4184597))

(declare-fun m!4184599 () Bool)

(assert (=> d!1079015 m!4184599))

(assert (=> d!1079015 m!4183623))

(assert (=> b!3675143 m!4183553))

(declare-fun m!4184601 () Bool)

(assert (=> b!3675143 m!4184601))

(assert (=> b!3675143 m!4183549))

(assert (=> b!3675143 m!4183549))

(assert (=> b!3675143 m!4183669))

(assert (=> b!3675143 m!4183669))

(declare-fun m!4184603 () Bool)

(assert (=> b!3675143 m!4184603))

(assert (=> b!3675143 m!4183553))

(assert (=> b!3675144 m!4183553))

(assert (=> b!3675144 m!4183553))

(assert (=> b!3675144 m!4184601))

(assert (=> b!3674374 d!1079015))

(declare-fun b!3675157 () Bool)

(declare-fun e!2275706 () Option!8292)

(declare-fun e!2275704 () Option!8292)

(assert (=> b!3675157 (= e!2275706 e!2275704)))

(declare-fun c!635545 () Bool)

(assert (=> b!3675157 (= c!635545 (and ((_ is Cons!38761) rules!3307) (not (= (tag!6626 (h!44181 rules!3307)) (tag!6626 (rule!8660 (_1!22446 lt!1282410)))))))))

(declare-fun b!3675158 () Bool)

(declare-fun e!2275703 () Bool)

(declare-fun lt!1282783 () Option!8292)

(assert (=> b!3675158 (= e!2275703 (= (tag!6626 (get!12819 lt!1282783)) (tag!6626 (rule!8660 (_1!22446 lt!1282410)))))))

(declare-fun b!3675159 () Bool)

(declare-fun e!2275705 () Bool)

(assert (=> b!3675159 (= e!2275705 e!2275703)))

(declare-fun res!1492862 () Bool)

(assert (=> b!3675159 (=> (not res!1492862) (not e!2275703))))

(assert (=> b!3675159 (= res!1492862 (contains!7732 rules!3307 (get!12819 lt!1282783)))))

(declare-fun d!1079017 () Bool)

(assert (=> d!1079017 e!2275705))

(declare-fun res!1492863 () Bool)

(assert (=> d!1079017 (=> res!1492863 e!2275705)))

(assert (=> d!1079017 (= res!1492863 (isEmpty!23015 lt!1282783))))

(assert (=> d!1079017 (= lt!1282783 e!2275706)))

(declare-fun c!635546 () Bool)

(assert (=> d!1079017 (= c!635546 (and ((_ is Cons!38761) rules!3307) (= (tag!6626 (h!44181 rules!3307)) (tag!6626 (rule!8660 (_1!22446 lt!1282410))))))))

(assert (=> d!1079017 (rulesInvariant!4818 thiss!23823 rules!3307)))

(assert (=> d!1079017 (= (getRuleFromTag!1436 thiss!23823 rules!3307 (tag!6626 (rule!8660 (_1!22446 lt!1282410)))) lt!1282783)))

(declare-fun b!3675160 () Bool)

(declare-fun lt!1282784 () Unit!56537)

(declare-fun lt!1282785 () Unit!56537)

(assert (=> b!3675160 (= lt!1282784 lt!1282785)))

(assert (=> b!3675160 (rulesInvariant!4818 thiss!23823 (t!299960 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!617 (LexerInterface!5421 Rule!11464 List!38885) Unit!56537)

(assert (=> b!3675160 (= lt!1282785 (lemmaInvariantOnRulesThenOnTail!617 thiss!23823 (h!44181 rules!3307) (t!299960 rules!3307)))))

(assert (=> b!3675160 (= e!2275704 (getRuleFromTag!1436 thiss!23823 (t!299960 rules!3307) (tag!6626 (rule!8660 (_1!22446 lt!1282410)))))))

(declare-fun b!3675161 () Bool)

(assert (=> b!3675161 (= e!2275704 None!8291)))

(declare-fun b!3675162 () Bool)

(assert (=> b!3675162 (= e!2275706 (Some!8291 (h!44181 rules!3307)))))

(assert (= (and d!1079017 c!635546) b!3675162))

(assert (= (and d!1079017 (not c!635546)) b!3675157))

(assert (= (and b!3675157 c!635545) b!3675160))

(assert (= (and b!3675157 (not c!635545)) b!3675161))

(assert (= (and d!1079017 (not res!1492863)) b!3675159))

(assert (= (and b!3675159 res!1492862) b!3675158))

(declare-fun m!4184605 () Bool)

(assert (=> b!3675158 m!4184605))

(assert (=> b!3675159 m!4184605))

(assert (=> b!3675159 m!4184605))

(declare-fun m!4184607 () Bool)

(assert (=> b!3675159 m!4184607))

(declare-fun m!4184609 () Bool)

(assert (=> d!1079017 m!4184609))

(assert (=> d!1079017 m!4183623))

(declare-fun m!4184611 () Bool)

(assert (=> b!3675160 m!4184611))

(declare-fun m!4184613 () Bool)

(assert (=> b!3675160 m!4184613))

(declare-fun m!4184615 () Bool)

(assert (=> b!3675160 m!4184615))

(assert (=> b!3674374 d!1079017))

(declare-fun b!3675166 () Bool)

(declare-fun e!2275707 () Bool)

(assert (=> b!3675166 (= e!2275707 (>= (size!29633 (++!9648 lt!1282379 (_2!22446 lt!1282410))) (size!29633 lt!1282379)))))

(declare-fun b!3675164 () Bool)

(declare-fun res!1492867 () Bool)

(declare-fun e!2275709 () Bool)

(assert (=> b!3675164 (=> (not res!1492867) (not e!2275709))))

(assert (=> b!3675164 (= res!1492867 (= (head!7876 lt!1282379) (head!7876 (++!9648 lt!1282379 (_2!22446 lt!1282410)))))))

(declare-fun b!3675163 () Bool)

(declare-fun e!2275708 () Bool)

(assert (=> b!3675163 (= e!2275708 e!2275709)))

(declare-fun res!1492864 () Bool)

(assert (=> b!3675163 (=> (not res!1492864) (not e!2275709))))

(assert (=> b!3675163 (= res!1492864 (not ((_ is Nil!38759) (++!9648 lt!1282379 (_2!22446 lt!1282410)))))))

(declare-fun b!3675165 () Bool)

(assert (=> b!3675165 (= e!2275709 (isPrefix!3195 (tail!5685 lt!1282379) (tail!5685 (++!9648 lt!1282379 (_2!22446 lt!1282410)))))))

(declare-fun d!1079019 () Bool)

(assert (=> d!1079019 e!2275707))

(declare-fun res!1492866 () Bool)

(assert (=> d!1079019 (=> res!1492866 e!2275707)))

(declare-fun lt!1282786 () Bool)

(assert (=> d!1079019 (= res!1492866 (not lt!1282786))))

(assert (=> d!1079019 (= lt!1282786 e!2275708)))

(declare-fun res!1492865 () Bool)

(assert (=> d!1079019 (=> res!1492865 e!2275708)))

(assert (=> d!1079019 (= res!1492865 ((_ is Nil!38759) lt!1282379))))

(assert (=> d!1079019 (= (isPrefix!3195 lt!1282379 (++!9648 lt!1282379 (_2!22446 lt!1282410))) lt!1282786)))

(assert (= (and d!1079019 (not res!1492865)) b!3675163))

(assert (= (and b!3675163 res!1492864) b!3675164))

(assert (= (and b!3675164 res!1492867) b!3675165))

(assert (= (and d!1079019 (not res!1492866)) b!3675166))

(assert (=> b!3675166 m!4183539))

(declare-fun m!4184617 () Bool)

(assert (=> b!3675166 m!4184617))

(assert (=> b!3675166 m!4183687))

(assert (=> b!3675164 m!4183585))

(assert (=> b!3675164 m!4183539))

(declare-fun m!4184619 () Bool)

(assert (=> b!3675164 m!4184619))

(assert (=> b!3675165 m!4184479))

(assert (=> b!3675165 m!4183539))

(declare-fun m!4184621 () Bool)

(assert (=> b!3675165 m!4184621))

(assert (=> b!3675165 m!4184479))

(assert (=> b!3675165 m!4184621))

(declare-fun m!4184623 () Bool)

(assert (=> b!3675165 m!4184623))

(assert (=> b!3674374 d!1079019))

(declare-fun d!1079021 () Bool)

(assert (=> d!1079021 (= (get!12818 lt!1282405) (v!38212 lt!1282405))))

(assert (=> b!3674374 d!1079021))

(declare-fun b!3675168 () Bool)

(declare-fun e!2275710 () List!38883)

(assert (=> b!3675168 (= e!2275710 (Cons!38759 (h!44179 lt!1282379) (++!9648 (t!299958 lt!1282379) (_2!22446 lt!1282410))))))

(declare-fun b!3675169 () Bool)

(declare-fun res!1492868 () Bool)

(declare-fun e!2275711 () Bool)

(assert (=> b!3675169 (=> (not res!1492868) (not e!2275711))))

(declare-fun lt!1282787 () List!38883)

(assert (=> b!3675169 (= res!1492868 (= (size!29633 lt!1282787) (+ (size!29633 lt!1282379) (size!29633 (_2!22446 lt!1282410)))))))

(declare-fun b!3675167 () Bool)

(assert (=> b!3675167 (= e!2275710 (_2!22446 lt!1282410))))

(declare-fun b!3675170 () Bool)

(assert (=> b!3675170 (= e!2275711 (or (not (= (_2!22446 lt!1282410) Nil!38759)) (= lt!1282787 lt!1282379)))))

(declare-fun d!1079023 () Bool)

(assert (=> d!1079023 e!2275711))

(declare-fun res!1492869 () Bool)

(assert (=> d!1079023 (=> (not res!1492869) (not e!2275711))))

(assert (=> d!1079023 (= res!1492869 (= (content!5614 lt!1282787) ((_ map or) (content!5614 lt!1282379) (content!5614 (_2!22446 lt!1282410)))))))

(assert (=> d!1079023 (= lt!1282787 e!2275710)))

(declare-fun c!635547 () Bool)

(assert (=> d!1079023 (= c!635547 ((_ is Nil!38759) lt!1282379))))

(assert (=> d!1079023 (= (++!9648 lt!1282379 (_2!22446 lt!1282410)) lt!1282787)))

(assert (= (and d!1079023 c!635547) b!3675167))

(assert (= (and d!1079023 (not c!635547)) b!3675168))

(assert (= (and d!1079023 res!1492869) b!3675169))

(assert (= (and b!3675169 res!1492868) b!3675170))

(declare-fun m!4184625 () Bool)

(assert (=> b!3675168 m!4184625))

(declare-fun m!4184627 () Bool)

(assert (=> b!3675169 m!4184627))

(assert (=> b!3675169 m!4183687))

(declare-fun m!4184629 () Bool)

(assert (=> b!3675169 m!4184629))

(declare-fun m!4184631 () Bool)

(assert (=> d!1079023 m!4184631))

(assert (=> d!1079023 m!4184367))

(declare-fun m!4184633 () Bool)

(assert (=> d!1079023 m!4184633))

(assert (=> b!3674374 d!1079023))

(declare-fun b!3675171 () Bool)

(declare-fun res!1492875 () Bool)

(declare-fun e!2275712 () Bool)

(assert (=> b!3675171 (=> (not res!1492875) (not e!2275712))))

(declare-fun lt!1282790 () Option!8293)

(assert (=> b!3675171 (= res!1492875 (= (list!14398 (charsOf!3846 (_1!22446 (get!12818 lt!1282790)))) (originalCharacters!6546 (_1!22446 (get!12818 lt!1282790)))))))

(declare-fun b!3675172 () Bool)

(declare-fun res!1492872 () Bool)

(assert (=> b!3675172 (=> (not res!1492872) (not e!2275712))))

(assert (=> b!3675172 (= res!1492872 (< (size!29633 (_2!22446 (get!12818 lt!1282790))) (size!29633 lt!1282401)))))

(declare-fun b!3675173 () Bool)

(declare-fun e!2275714 () Option!8293)

(declare-fun lt!1282788 () Option!8293)

(declare-fun lt!1282789 () Option!8293)

(assert (=> b!3675173 (= e!2275714 (ite (and ((_ is None!8292) lt!1282788) ((_ is None!8292) lt!1282789)) None!8292 (ite ((_ is None!8292) lt!1282789) lt!1282788 (ite ((_ is None!8292) lt!1282788) lt!1282789 (ite (>= (size!29631 (_1!22446 (v!38212 lt!1282788))) (size!29631 (_1!22446 (v!38212 lt!1282789)))) lt!1282788 lt!1282789)))))))

(declare-fun call!266142 () Option!8293)

(assert (=> b!3675173 (= lt!1282788 call!266142)))

(assert (=> b!3675173 (= lt!1282789 (maxPrefix!2955 thiss!23823 (t!299960 rules!3307) lt!1282401))))

(declare-fun b!3675174 () Bool)

(declare-fun e!2275713 () Bool)

(assert (=> b!3675174 (= e!2275713 e!2275712)))

(declare-fun res!1492870 () Bool)

(assert (=> b!3675174 (=> (not res!1492870) (not e!2275712))))

(assert (=> b!3675174 (= res!1492870 (isDefined!6525 lt!1282790))))

(declare-fun d!1079025 () Bool)

(assert (=> d!1079025 e!2275713))

(declare-fun res!1492871 () Bool)

(assert (=> d!1079025 (=> res!1492871 e!2275713)))

(assert (=> d!1079025 (= res!1492871 (isEmpty!23014 lt!1282790))))

(assert (=> d!1079025 (= lt!1282790 e!2275714)))

(declare-fun c!635548 () Bool)

(assert (=> d!1079025 (= c!635548 (and ((_ is Cons!38761) rules!3307) ((_ is Nil!38761) (t!299960 rules!3307))))))

(declare-fun lt!1282791 () Unit!56537)

(declare-fun lt!1282792 () Unit!56537)

(assert (=> d!1079025 (= lt!1282791 lt!1282792)))

(assert (=> d!1079025 (isPrefix!3195 lt!1282401 lt!1282401)))

(assert (=> d!1079025 (= lt!1282792 (lemmaIsPrefixRefl!2010 lt!1282401 lt!1282401))))

(assert (=> d!1079025 (rulesValidInductive!2073 thiss!23823 rules!3307)))

(assert (=> d!1079025 (= (maxPrefix!2955 thiss!23823 rules!3307 lt!1282401) lt!1282790)))

(declare-fun bm!266137 () Bool)

(assert (=> bm!266137 (= call!266142 (maxPrefixOneRule!2093 thiss!23823 (h!44181 rules!3307) lt!1282401))))

(declare-fun b!3675175 () Bool)

(declare-fun res!1492876 () Bool)

(assert (=> b!3675175 (=> (not res!1492876) (not e!2275712))))

(assert (=> b!3675175 (= res!1492876 (= (value!186672 (_1!22446 (get!12818 lt!1282790))) (apply!9334 (transformation!5832 (rule!8660 (_1!22446 (get!12818 lt!1282790)))) (seqFromList!4381 (originalCharacters!6546 (_1!22446 (get!12818 lt!1282790)))))))))

(declare-fun b!3675176 () Bool)

(declare-fun res!1492873 () Bool)

(assert (=> b!3675176 (=> (not res!1492873) (not e!2275712))))

(assert (=> b!3675176 (= res!1492873 (matchR!5160 (regex!5832 (rule!8660 (_1!22446 (get!12818 lt!1282790)))) (list!14398 (charsOf!3846 (_1!22446 (get!12818 lt!1282790))))))))

(declare-fun b!3675177 () Bool)

(assert (=> b!3675177 (= e!2275712 (contains!7732 rules!3307 (rule!8660 (_1!22446 (get!12818 lt!1282790)))))))

(declare-fun b!3675178 () Bool)

(assert (=> b!3675178 (= e!2275714 call!266142)))

(declare-fun b!3675179 () Bool)

(declare-fun res!1492874 () Bool)

(assert (=> b!3675179 (=> (not res!1492874) (not e!2275712))))

(assert (=> b!3675179 (= res!1492874 (= (++!9648 (list!14398 (charsOf!3846 (_1!22446 (get!12818 lt!1282790)))) (_2!22446 (get!12818 lt!1282790))) lt!1282401))))

(assert (= (and d!1079025 c!635548) b!3675178))

(assert (= (and d!1079025 (not c!635548)) b!3675173))

(assert (= (or b!3675178 b!3675173) bm!266137))

(assert (= (and d!1079025 (not res!1492871)) b!3675174))

(assert (= (and b!3675174 res!1492870) b!3675171))

(assert (= (and b!3675171 res!1492875) b!3675172))

(assert (= (and b!3675172 res!1492872) b!3675179))

(assert (= (and b!3675179 res!1492874) b!3675175))

(assert (= (and b!3675175 res!1492876) b!3675176))

(assert (= (and b!3675176 res!1492873) b!3675177))

(declare-fun m!4184635 () Bool)

(assert (=> b!3675172 m!4184635))

(declare-fun m!4184637 () Bool)

(assert (=> b!3675172 m!4184637))

(assert (=> b!3675172 m!4183993))

(assert (=> b!3675177 m!4184635))

(declare-fun m!4184639 () Bool)

(assert (=> b!3675177 m!4184639))

(declare-fun m!4184641 () Bool)

(assert (=> b!3675173 m!4184641))

(declare-fun m!4184643 () Bool)

(assert (=> b!3675174 m!4184643))

(assert (=> b!3675171 m!4184635))

(declare-fun m!4184645 () Bool)

(assert (=> b!3675171 m!4184645))

(assert (=> b!3675171 m!4184645))

(declare-fun m!4184647 () Bool)

(assert (=> b!3675171 m!4184647))

(assert (=> b!3675175 m!4184635))

(declare-fun m!4184649 () Bool)

(assert (=> b!3675175 m!4184649))

(assert (=> b!3675175 m!4184649))

(declare-fun m!4184651 () Bool)

(assert (=> b!3675175 m!4184651))

(assert (=> b!3675176 m!4184635))

(assert (=> b!3675176 m!4184645))

(assert (=> b!3675176 m!4184645))

(assert (=> b!3675176 m!4184647))

(assert (=> b!3675176 m!4184647))

(declare-fun m!4184653 () Bool)

(assert (=> b!3675176 m!4184653))

(declare-fun m!4184655 () Bool)

(assert (=> bm!266137 m!4184655))

(declare-fun m!4184657 () Bool)

(assert (=> d!1079025 m!4184657))

(declare-fun m!4184659 () Bool)

(assert (=> d!1079025 m!4184659))

(declare-fun m!4184661 () Bool)

(assert (=> d!1079025 m!4184661))

(assert (=> d!1079025 m!4184355))

(assert (=> b!3675179 m!4184635))

(assert (=> b!3675179 m!4184645))

(assert (=> b!3675179 m!4184645))

(assert (=> b!3675179 m!4184647))

(assert (=> b!3675179 m!4184647))

(declare-fun m!4184663 () Bool)

(assert (=> b!3675179 m!4184663))

(assert (=> b!3674374 d!1079025))

(declare-fun d!1079027 () Bool)

(assert (=> d!1079027 (isPrefix!3195 lt!1282379 (++!9648 lt!1282379 (_2!22446 lt!1282410)))))

(declare-fun lt!1282793 () Unit!56537)

(assert (=> d!1079027 (= lt!1282793 (choose!21897 lt!1282379 (_2!22446 lt!1282410)))))

(assert (=> d!1079027 (= (lemmaConcatTwoListThenFirstIsPrefix!2114 lt!1282379 (_2!22446 lt!1282410)) lt!1282793)))

(declare-fun bs!573329 () Bool)

(assert (= bs!573329 d!1079027))

(assert (=> bs!573329 m!4183539))

(assert (=> bs!573329 m!4183539))

(assert (=> bs!573329 m!4183541))

(declare-fun m!4184665 () Bool)

(assert (=> bs!573329 m!4184665))

(assert (=> b!3674374 d!1079027))

(declare-fun d!1079029 () Bool)

(declare-fun res!1492879 () Bool)

(declare-fun e!2275717 () Bool)

(assert (=> d!1079029 (=> (not res!1492879) (not e!2275717))))

(declare-fun rulesValid!2244 (LexerInterface!5421 List!38885) Bool)

(assert (=> d!1079029 (= res!1492879 (rulesValid!2244 thiss!23823 rules!3307))))

(assert (=> d!1079029 (= (rulesInvariant!4818 thiss!23823 rules!3307) e!2275717)))

(declare-fun b!3675182 () Bool)

(declare-datatypes ((List!38889 0))(
  ( (Nil!38765) (Cons!38765 (h!44185 String!43644) (t!300084 List!38889)) )
))
(declare-fun noDuplicateTag!2240 (LexerInterface!5421 List!38885 List!38889) Bool)

(assert (=> b!3675182 (= e!2275717 (noDuplicateTag!2240 thiss!23823 rules!3307 Nil!38765))))

(assert (= (and d!1079029 res!1492879) b!3675182))

(declare-fun m!4184667 () Bool)

(assert (=> d!1079029 m!4184667))

(declare-fun m!4184669 () Bool)

(assert (=> b!3675182 m!4184669))

(assert (=> b!3674411 d!1079029))

(declare-fun d!1079031 () Bool)

(assert (=> d!1079031 (not (matchR!5160 (regex!5832 (rule!8660 (_1!22446 lt!1282410))) lt!1282379))))

(declare-fun lt!1282794 () Unit!56537)

(assert (=> d!1079031 (= lt!1282794 (choose!21886 (regex!5832 (rule!8660 (_1!22446 lt!1282410))) lt!1282379 lt!1282408))))

(assert (=> d!1079031 (validRegex!4849 (regex!5832 (rule!8660 (_1!22446 lt!1282410))))))

(assert (=> d!1079031 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!780 (regex!5832 (rule!8660 (_1!22446 lt!1282410))) lt!1282379 lt!1282408) lt!1282794)))

(declare-fun bs!573330 () Bool)

(assert (= bs!573330 d!1079031))

(assert (=> bs!573330 m!4183661))

(declare-fun m!4184671 () Bool)

(assert (=> bs!573330 m!4184671))

(declare-fun m!4184673 () Bool)

(assert (=> bs!573330 m!4184673))

(assert (=> bm!266076 d!1079031))

(declare-fun b!3675183 () Bool)

(declare-fun e!2275720 () Bool)

(declare-fun e!2275724 () Bool)

(assert (=> b!3675183 (= e!2275720 e!2275724)))

(declare-fun res!1492887 () Bool)

(assert (=> b!3675183 (=> res!1492887 e!2275724)))

(declare-fun call!266143 () Bool)

(assert (=> b!3675183 (= res!1492887 call!266143)))

(declare-fun bm!266138 () Bool)

(assert (=> bm!266138 (= call!266143 (isEmpty!23010 lt!1282379))))

(declare-fun b!3675184 () Bool)

(declare-fun e!2275719 () Bool)

(assert (=> b!3675184 (= e!2275719 e!2275720)))

(declare-fun res!1492885 () Bool)

(assert (=> b!3675184 (=> (not res!1492885) (not e!2275720))))

(declare-fun lt!1282795 () Bool)

(assert (=> b!3675184 (= res!1492885 (not lt!1282795))))

(declare-fun b!3675185 () Bool)

(declare-fun res!1492881 () Bool)

(declare-fun e!2275721 () Bool)

(assert (=> b!3675185 (=> (not res!1492881) (not e!2275721))))

(assert (=> b!3675185 (= res!1492881 (not call!266143))))

(declare-fun b!3675186 () Bool)

(declare-fun e!2275718 () Bool)

(assert (=> b!3675186 (= e!2275718 (nullable!3687 (regex!5832 (rule!8660 (_1!22446 lt!1282410)))))))

(declare-fun b!3675187 () Bool)

(declare-fun res!1492884 () Bool)

(assert (=> b!3675187 (=> res!1492884 e!2275719)))

(assert (=> b!3675187 (= res!1492884 e!2275721)))

(declare-fun res!1492883 () Bool)

(assert (=> b!3675187 (=> (not res!1492883) (not e!2275721))))

(assert (=> b!3675187 (= res!1492883 lt!1282795)))

(declare-fun b!3675188 () Bool)

(declare-fun res!1492882 () Bool)

(assert (=> b!3675188 (=> res!1492882 e!2275724)))

(assert (=> b!3675188 (= res!1492882 (not (isEmpty!23010 (tail!5685 lt!1282379))))))

(declare-fun b!3675189 () Bool)

(declare-fun res!1492880 () Bool)

(assert (=> b!3675189 (=> (not res!1492880) (not e!2275721))))

(assert (=> b!3675189 (= res!1492880 (isEmpty!23010 (tail!5685 lt!1282379)))))

(declare-fun b!3675190 () Bool)

(assert (=> b!3675190 (= e!2275724 (not (= (head!7876 lt!1282379) (c!635392 (regex!5832 (rule!8660 (_1!22446 lt!1282410)))))))))

(declare-fun b!3675191 () Bool)

(assert (=> b!3675191 (= e!2275721 (= (head!7876 lt!1282379) (c!635392 (regex!5832 (rule!8660 (_1!22446 lt!1282410))))))))

(declare-fun d!1079033 () Bool)

(declare-fun e!2275722 () Bool)

(assert (=> d!1079033 e!2275722))

(declare-fun c!635550 () Bool)

(assert (=> d!1079033 (= c!635550 ((_ is EmptyExpr!10591) (regex!5832 (rule!8660 (_1!22446 lt!1282410)))))))

(assert (=> d!1079033 (= lt!1282795 e!2275718)))

(declare-fun c!635549 () Bool)

(assert (=> d!1079033 (= c!635549 (isEmpty!23010 lt!1282379))))

(assert (=> d!1079033 (validRegex!4849 (regex!5832 (rule!8660 (_1!22446 lt!1282410))))))

(assert (=> d!1079033 (= (matchR!5160 (regex!5832 (rule!8660 (_1!22446 lt!1282410))) lt!1282379) lt!1282795)))

(declare-fun b!3675192 () Bool)

(declare-fun e!2275723 () Bool)

(assert (=> b!3675192 (= e!2275722 e!2275723)))

(declare-fun c!635551 () Bool)

(assert (=> b!3675192 (= c!635551 ((_ is EmptyLang!10591) (regex!5832 (rule!8660 (_1!22446 lt!1282410)))))))

(declare-fun b!3675193 () Bool)

(declare-fun res!1492886 () Bool)

(assert (=> b!3675193 (=> res!1492886 e!2275719)))

(assert (=> b!3675193 (= res!1492886 (not ((_ is ElementMatch!10591) (regex!5832 (rule!8660 (_1!22446 lt!1282410))))))))

(assert (=> b!3675193 (= e!2275723 e!2275719)))

(declare-fun b!3675194 () Bool)

(assert (=> b!3675194 (= e!2275722 (= lt!1282795 call!266143))))

(declare-fun b!3675195 () Bool)

(assert (=> b!3675195 (= e!2275723 (not lt!1282795))))

(declare-fun b!3675196 () Bool)

(assert (=> b!3675196 (= e!2275718 (matchR!5160 (derivativeStep!3236 (regex!5832 (rule!8660 (_1!22446 lt!1282410))) (head!7876 lt!1282379)) (tail!5685 lt!1282379)))))

(assert (= (and d!1079033 c!635549) b!3675186))

(assert (= (and d!1079033 (not c!635549)) b!3675196))

(assert (= (and d!1079033 c!635550) b!3675194))

(assert (= (and d!1079033 (not c!635550)) b!3675192))

(assert (= (and b!3675192 c!635551) b!3675195))

(assert (= (and b!3675192 (not c!635551)) b!3675193))

(assert (= (and b!3675193 (not res!1492886)) b!3675187))

(assert (= (and b!3675187 res!1492883) b!3675185))

(assert (= (and b!3675185 res!1492881) b!3675189))

(assert (= (and b!3675189 res!1492880) b!3675191))

(assert (= (and b!3675187 (not res!1492884)) b!3675184))

(assert (= (and b!3675184 res!1492885) b!3675183))

(assert (= (and b!3675183 (not res!1492887)) b!3675188))

(assert (= (and b!3675188 (not res!1492882)) b!3675190))

(assert (= (or b!3675194 b!3675183 b!3675185) bm!266138))

(declare-fun m!4184675 () Bool)

(assert (=> bm!266138 m!4184675))

(assert (=> d!1079033 m!4184675))

(assert (=> d!1079033 m!4184673))

(assert (=> b!3675196 m!4183585))

(assert (=> b!3675196 m!4183585))

(declare-fun m!4184677 () Bool)

(assert (=> b!3675196 m!4184677))

(assert (=> b!3675196 m!4184479))

(assert (=> b!3675196 m!4184677))

(assert (=> b!3675196 m!4184479))

(declare-fun m!4184679 () Bool)

(assert (=> b!3675196 m!4184679))

(assert (=> b!3675190 m!4183585))

(declare-fun m!4184681 () Bool)

(assert (=> b!3675186 m!4184681))

(assert (=> b!3675189 m!4184479))

(assert (=> b!3675189 m!4184479))

(declare-fun m!4184683 () Bool)

(assert (=> b!3675189 m!4184683))

(assert (=> b!3675188 m!4184479))

(assert (=> b!3675188 m!4184479))

(assert (=> b!3675188 m!4184683))

(assert (=> b!3675191 m!4183585))

(assert (=> b!3674418 d!1079033))

(declare-fun d!1079035 () Bool)

(assert (=> d!1079035 (= (inv!52247 (tag!6626 (h!44181 rules!3307))) (= (mod (str.len (value!186671 (tag!6626 (h!44181 rules!3307)))) 2) 0))))

(assert (=> b!3674381 d!1079035))

(declare-fun d!1079037 () Bool)

(declare-fun res!1492888 () Bool)

(declare-fun e!2275725 () Bool)

(assert (=> d!1079037 (=> (not res!1492888) (not e!2275725))))

(assert (=> d!1079037 (= res!1492888 (semiInverseModEq!2487 (toChars!7987 (transformation!5832 (h!44181 rules!3307))) (toValue!8128 (transformation!5832 (h!44181 rules!3307)))))))

(assert (=> d!1079037 (= (inv!52250 (transformation!5832 (h!44181 rules!3307))) e!2275725)))

(declare-fun b!3675197 () Bool)

(assert (=> b!3675197 (= e!2275725 (equivClasses!2386 (toChars!7987 (transformation!5832 (h!44181 rules!3307))) (toValue!8128 (transformation!5832 (h!44181 rules!3307)))))))

(assert (= (and d!1079037 res!1492888) b!3675197))

(declare-fun m!4184685 () Bool)

(assert (=> d!1079037 m!4184685))

(declare-fun m!4184687 () Bool)

(assert (=> b!3675197 m!4184687))

(assert (=> b!3674381 d!1079037))

(declare-fun d!1079039 () Bool)

(assert (=> d!1079039 (not (matchR!5160 (regex!5832 (rule!8660 (_1!22446 lt!1282410))) lt!1282379))))

(declare-fun lt!1282796 () Unit!56537)

(assert (=> d!1079039 (= lt!1282796 (choose!21886 (regex!5832 (rule!8660 (_1!22446 lt!1282410))) lt!1282379 lt!1282417))))

(assert (=> d!1079039 (validRegex!4849 (regex!5832 (rule!8660 (_1!22446 lt!1282410))))))

(assert (=> d!1079039 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!780 (regex!5832 (rule!8660 (_1!22446 lt!1282410))) lt!1282379 lt!1282417) lt!1282796)))

(declare-fun bs!573331 () Bool)

(assert (= bs!573331 d!1079039))

(assert (=> bs!573331 m!4183661))

(declare-fun m!4184689 () Bool)

(assert (=> bs!573331 m!4184689))

(assert (=> bs!573331 m!4184673))

(assert (=> bm!266079 d!1079039))

(declare-fun b!3675208 () Bool)

(declare-fun e!2275731 () Int)

(assert (=> b!3675208 (= e!2275731 (+ 1 (getIndex!500 (t!299960 rules!3307) (rule!8660 (_1!22446 lt!1282410)))))))

(declare-fun b!3675209 () Bool)

(assert (=> b!3675209 (= e!2275731 (- 1))))

(declare-fun b!3675206 () Bool)

(declare-fun e!2275732 () Int)

(assert (=> b!3675206 (= e!2275732 0)))

(declare-fun d!1079041 () Bool)

(declare-fun lt!1282799 () Int)

(assert (=> d!1079041 (>= lt!1282799 0)))

(assert (=> d!1079041 (= lt!1282799 e!2275732)))

(declare-fun c!635556 () Bool)

(assert (=> d!1079041 (= c!635556 (and ((_ is Cons!38761) rules!3307) (= (h!44181 rules!3307) (rule!8660 (_1!22446 lt!1282410)))))))

(assert (=> d!1079041 (contains!7732 rules!3307 (rule!8660 (_1!22446 lt!1282410)))))

(assert (=> d!1079041 (= (getIndex!500 rules!3307 (rule!8660 (_1!22446 lt!1282410))) lt!1282799)))

(declare-fun b!3675207 () Bool)

(assert (=> b!3675207 (= e!2275732 e!2275731)))

(declare-fun c!635557 () Bool)

(assert (=> b!3675207 (= c!635557 (and ((_ is Cons!38761) rules!3307) (not (= (h!44181 rules!3307) (rule!8660 (_1!22446 lt!1282410))))))))

(assert (= (and d!1079041 c!635556) b!3675206))

(assert (= (and d!1079041 (not c!635556)) b!3675207))

(assert (= (and b!3675207 c!635557) b!3675208))

(assert (= (and b!3675207 (not c!635557)) b!3675209))

(declare-fun m!4184691 () Bool)

(assert (=> b!3675208 m!4184691))

(declare-fun m!4184693 () Bool)

(assert (=> d!1079041 m!4184693))

(assert (=> b!3674416 d!1079041))

(declare-fun b!3675212 () Bool)

(declare-fun e!2275733 () Int)

(assert (=> b!3675212 (= e!2275733 (+ 1 (getIndex!500 (t!299960 rules!3307) rule!403)))))

(declare-fun b!3675213 () Bool)

(assert (=> b!3675213 (= e!2275733 (- 1))))

(declare-fun b!3675210 () Bool)

(declare-fun e!2275734 () Int)

(assert (=> b!3675210 (= e!2275734 0)))

(declare-fun d!1079043 () Bool)

(declare-fun lt!1282800 () Int)

(assert (=> d!1079043 (>= lt!1282800 0)))

(assert (=> d!1079043 (= lt!1282800 e!2275734)))

(declare-fun c!635558 () Bool)

(assert (=> d!1079043 (= c!635558 (and ((_ is Cons!38761) rules!3307) (= (h!44181 rules!3307) rule!403)))))

(assert (=> d!1079043 (contains!7732 rules!3307 rule!403)))

(assert (=> d!1079043 (= (getIndex!500 rules!3307 rule!403) lt!1282800)))

(declare-fun b!3675211 () Bool)

(assert (=> b!3675211 (= e!2275734 e!2275733)))

(declare-fun c!635559 () Bool)

(assert (=> b!3675211 (= c!635559 (and ((_ is Cons!38761) rules!3307) (not (= (h!44181 rules!3307) rule!403))))))

(assert (= (and d!1079043 c!635558) b!3675210))

(assert (= (and d!1079043 (not c!635558)) b!3675211))

(assert (= (and b!3675211 c!635559) b!3675212))

(assert (= (and b!3675211 (not c!635559)) b!3675213))

(declare-fun m!4184695 () Bool)

(assert (=> b!3675212 m!4184695))

(assert (=> d!1079043 m!4183597))

(assert (=> b!3674416 d!1079043))

(declare-fun d!1079045 () Bool)

(assert (=> d!1079045 (= (rule!8660 (_1!22446 lt!1282410)) rule!403)))

(declare-fun lt!1282803 () Unit!56537)

(declare-fun choose!21900 (List!38885 Rule!11464 Rule!11464) Unit!56537)

(assert (=> d!1079045 (= lt!1282803 (choose!21900 rules!3307 (rule!8660 (_1!22446 lt!1282410)) rule!403))))

(assert (=> d!1079045 (contains!7732 rules!3307 (rule!8660 (_1!22446 lt!1282410)))))

(assert (=> d!1079045 (= (lemmaSameIndexThenSameElement!232 rules!3307 (rule!8660 (_1!22446 lt!1282410)) rule!403) lt!1282803)))

(declare-fun bs!573332 () Bool)

(assert (= bs!573332 d!1079045))

(declare-fun m!4184697 () Bool)

(assert (=> bs!573332 m!4184697))

(assert (=> bs!573332 m!4184693))

(assert (=> b!3674416 d!1079045))

(declare-fun d!1079047 () Bool)

(assert (=> d!1079047 (= (isEmpty!23011 rules!3307) ((_ is Nil!38761) rules!3307))))

(assert (=> b!3674397 d!1079047))

(declare-fun b!3675214 () Bool)

(declare-fun e!2275737 () Bool)

(declare-fun e!2275741 () Bool)

(assert (=> b!3675214 (= e!2275737 e!2275741)))

(declare-fun res!1492896 () Bool)

(assert (=> b!3675214 (=> res!1492896 e!2275741)))

(declare-fun call!266144 () Bool)

(assert (=> b!3675214 (= res!1492896 call!266144)))

(declare-fun bm!266139 () Bool)

(assert (=> bm!266139 (= call!266144 (isEmpty!23010 lt!1282365))))

(declare-fun b!3675215 () Bool)

(declare-fun e!2275736 () Bool)

(assert (=> b!3675215 (= e!2275736 e!2275737)))

(declare-fun res!1492894 () Bool)

(assert (=> b!3675215 (=> (not res!1492894) (not e!2275737))))

(declare-fun lt!1282804 () Bool)

(assert (=> b!3675215 (= res!1492894 (not lt!1282804))))

(declare-fun b!3675216 () Bool)

(declare-fun res!1492890 () Bool)

(declare-fun e!2275738 () Bool)

(assert (=> b!3675216 (=> (not res!1492890) (not e!2275738))))

(assert (=> b!3675216 (= res!1492890 (not call!266144))))

(declare-fun b!3675217 () Bool)

(declare-fun e!2275735 () Bool)

(assert (=> b!3675217 (= e!2275735 (nullable!3687 (regex!5832 (rule!8660 (_1!22446 lt!1282410)))))))

(declare-fun b!3675218 () Bool)

(declare-fun res!1492893 () Bool)

(assert (=> b!3675218 (=> res!1492893 e!2275736)))

(assert (=> b!3675218 (= res!1492893 e!2275738)))

(declare-fun res!1492892 () Bool)

(assert (=> b!3675218 (=> (not res!1492892) (not e!2275738))))

(assert (=> b!3675218 (= res!1492892 lt!1282804)))

(declare-fun b!3675219 () Bool)

(declare-fun res!1492891 () Bool)

(assert (=> b!3675219 (=> res!1492891 e!2275741)))

(assert (=> b!3675219 (= res!1492891 (not (isEmpty!23010 (tail!5685 lt!1282365))))))

(declare-fun b!3675220 () Bool)

(declare-fun res!1492889 () Bool)

(assert (=> b!3675220 (=> (not res!1492889) (not e!2275738))))

(assert (=> b!3675220 (= res!1492889 (isEmpty!23010 (tail!5685 lt!1282365)))))

(declare-fun b!3675221 () Bool)

(assert (=> b!3675221 (= e!2275741 (not (= (head!7876 lt!1282365) (c!635392 (regex!5832 (rule!8660 (_1!22446 lt!1282410)))))))))

(declare-fun b!3675222 () Bool)

(assert (=> b!3675222 (= e!2275738 (= (head!7876 lt!1282365) (c!635392 (regex!5832 (rule!8660 (_1!22446 lt!1282410))))))))

(declare-fun d!1079049 () Bool)

(declare-fun e!2275739 () Bool)

(assert (=> d!1079049 e!2275739))

(declare-fun c!635561 () Bool)

(assert (=> d!1079049 (= c!635561 ((_ is EmptyExpr!10591) (regex!5832 (rule!8660 (_1!22446 lt!1282410)))))))

(assert (=> d!1079049 (= lt!1282804 e!2275735)))

(declare-fun c!635560 () Bool)

(assert (=> d!1079049 (= c!635560 (isEmpty!23010 lt!1282365))))

(assert (=> d!1079049 (validRegex!4849 (regex!5832 (rule!8660 (_1!22446 lt!1282410))))))

(assert (=> d!1079049 (= (matchR!5160 (regex!5832 (rule!8660 (_1!22446 lt!1282410))) lt!1282365) lt!1282804)))

(declare-fun b!3675223 () Bool)

(declare-fun e!2275740 () Bool)

(assert (=> b!3675223 (= e!2275739 e!2275740)))

(declare-fun c!635562 () Bool)

(assert (=> b!3675223 (= c!635562 ((_ is EmptyLang!10591) (regex!5832 (rule!8660 (_1!22446 lt!1282410)))))))

(declare-fun b!3675224 () Bool)

(declare-fun res!1492895 () Bool)

(assert (=> b!3675224 (=> res!1492895 e!2275736)))

(assert (=> b!3675224 (= res!1492895 (not ((_ is ElementMatch!10591) (regex!5832 (rule!8660 (_1!22446 lt!1282410))))))))

(assert (=> b!3675224 (= e!2275740 e!2275736)))

(declare-fun b!3675225 () Bool)

(assert (=> b!3675225 (= e!2275739 (= lt!1282804 call!266144))))

(declare-fun b!3675226 () Bool)

(assert (=> b!3675226 (= e!2275740 (not lt!1282804))))

(declare-fun b!3675227 () Bool)

(assert (=> b!3675227 (= e!2275735 (matchR!5160 (derivativeStep!3236 (regex!5832 (rule!8660 (_1!22446 lt!1282410))) (head!7876 lt!1282365)) (tail!5685 lt!1282365)))))

(assert (= (and d!1079049 c!635560) b!3675217))

(assert (= (and d!1079049 (not c!635560)) b!3675227))

(assert (= (and d!1079049 c!635561) b!3675225))

(assert (= (and d!1079049 (not c!635561)) b!3675223))

(assert (= (and b!3675223 c!635562) b!3675226))

(assert (= (and b!3675223 (not c!635562)) b!3675224))

(assert (= (and b!3675224 (not res!1492895)) b!3675218))

(assert (= (and b!3675218 res!1492892) b!3675216))

(assert (= (and b!3675216 res!1492890) b!3675220))

(assert (= (and b!3675220 res!1492889) b!3675222))

(assert (= (and b!3675218 (not res!1492893)) b!3675215))

(assert (= (and b!3675215 res!1492894) b!3675214))

(assert (= (and b!3675214 (not res!1492896)) b!3675219))

(assert (= (and b!3675219 (not res!1492891)) b!3675221))

(assert (= (or b!3675225 b!3675214 b!3675216) bm!266139))

(assert (=> bm!266139 m!4184141))

(assert (=> d!1079049 m!4184141))

(assert (=> d!1079049 m!4184673))

(assert (=> b!3675227 m!4184143))

(assert (=> b!3675227 m!4184143))

(declare-fun m!4184699 () Bool)

(assert (=> b!3675227 m!4184699))

(assert (=> b!3675227 m!4184147))

(assert (=> b!3675227 m!4184699))

(assert (=> b!3675227 m!4184147))

(declare-fun m!4184701 () Bool)

(assert (=> b!3675227 m!4184701))

(assert (=> b!3675221 m!4184143))

(assert (=> b!3675217 m!4184681))

(assert (=> b!3675220 m!4184147))

(assert (=> b!3675220 m!4184147))

(assert (=> b!3675220 m!4184153))

(assert (=> b!3675219 m!4184147))

(assert (=> b!3675219 m!4184147))

(assert (=> b!3675219 m!4184153))

(assert (=> b!3675222 m!4184143))

(assert (=> b!3674417 d!1079049))

(declare-fun d!1079051 () Bool)

(assert (=> d!1079051 (= (isEmpty!23010 (getSuffix!1748 lt!1282365 lt!1282365)) ((_ is Nil!38759) (getSuffix!1748 lt!1282365 lt!1282365)))))

(assert (=> b!3674417 d!1079051))

(declare-fun d!1079053 () Bool)

(declare-fun lt!1282805 () List!38883)

(assert (=> d!1079053 (= (++!9648 lt!1282365 lt!1282805) lt!1282365)))

(declare-fun e!2275742 () List!38883)

(assert (=> d!1079053 (= lt!1282805 e!2275742)))

(declare-fun c!635563 () Bool)

(assert (=> d!1079053 (= c!635563 ((_ is Cons!38759) lt!1282365))))

(assert (=> d!1079053 (>= (size!29633 lt!1282365) (size!29633 lt!1282365))))

(assert (=> d!1079053 (= (getSuffix!1748 lt!1282365 lt!1282365) lt!1282805)))

(declare-fun b!3675228 () Bool)

(assert (=> b!3675228 (= e!2275742 (getSuffix!1748 (tail!5685 lt!1282365) (t!299958 lt!1282365)))))

(declare-fun b!3675229 () Bool)

(assert (=> b!3675229 (= e!2275742 lt!1282365)))

(assert (= (and d!1079053 c!635563) b!3675228))

(assert (= (and d!1079053 (not c!635563)) b!3675229))

(declare-fun m!4184703 () Bool)

(assert (=> d!1079053 m!4184703))

(assert (=> d!1079053 m!4184329))

(assert (=> d!1079053 m!4184329))

(assert (=> b!3675228 m!4184147))

(assert (=> b!3675228 m!4184147))

(declare-fun m!4184705 () Bool)

(assert (=> b!3675228 m!4184705))

(assert (=> b!3674417 d!1079053))

(declare-fun d!1079055 () Bool)

(assert (=> d!1079055 (isEmpty!23010 (getSuffix!1748 lt!1282365 lt!1282365))))

(declare-fun lt!1282808 () Unit!56537)

(declare-fun choose!21901 (List!38883) Unit!56537)

(assert (=> d!1079055 (= lt!1282808 (choose!21901 lt!1282365))))

(assert (=> d!1079055 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!212 lt!1282365) lt!1282808)))

(declare-fun bs!573333 () Bool)

(assert (= bs!573333 d!1079055))

(assert (=> bs!573333 m!4183599))

(assert (=> bs!573333 m!4183599))

(assert (=> bs!573333 m!4183607))

(declare-fun m!4184707 () Bool)

(assert (=> bs!573333 m!4184707))

(assert (=> b!3674417 d!1079055))

(declare-fun d!1079057 () Bool)

(assert (=> d!1079057 (not (matchR!5160 (regex!5832 (rule!8660 (_1!22446 lt!1282410))) lt!1282365))))

(declare-fun lt!1282809 () Unit!56537)

(assert (=> d!1079057 (= lt!1282809 (choose!21883 thiss!23823 rules!3307 rule!403 lt!1282365 lt!1282365 (rule!8660 (_1!22446 lt!1282410))))))

(assert (=> d!1079057 (isPrefix!3195 lt!1282365 lt!1282365)))

(assert (=> d!1079057 (= (lemmaMaxPrefNoSmallerRuleMatches!240 thiss!23823 rules!3307 rule!403 lt!1282365 lt!1282365 (rule!8660 (_1!22446 lt!1282410))) lt!1282809)))

(declare-fun bs!573334 () Bool)

(assert (= bs!573334 d!1079057))

(assert (=> bs!573334 m!4183605))

(declare-fun m!4184709 () Bool)

(assert (=> bs!573334 m!4184709))

(assert (=> bs!573334 m!4184351))

(assert (=> b!3674417 d!1079057))

(declare-fun d!1079059 () Bool)

(declare-fun lt!1282810 () Bool)

(assert (=> d!1079059 (= lt!1282810 (select (content!5614 call!266083) lt!1282417))))

(declare-fun e!2275743 () Bool)

(assert (=> d!1079059 (= lt!1282810 e!2275743)))

(declare-fun res!1492897 () Bool)

(assert (=> d!1079059 (=> (not res!1492897) (not e!2275743))))

(assert (=> d!1079059 (= res!1492897 ((_ is Cons!38759) call!266083))))

(assert (=> d!1079059 (= (contains!7731 call!266083 lt!1282417) lt!1282810)))

(declare-fun b!3675230 () Bool)

(declare-fun e!2275744 () Bool)

(assert (=> b!3675230 (= e!2275743 e!2275744)))

(declare-fun res!1492898 () Bool)

(assert (=> b!3675230 (=> res!1492898 e!2275744)))

(assert (=> b!3675230 (= res!1492898 (= (h!44179 call!266083) lt!1282417))))

(declare-fun b!3675231 () Bool)

(assert (=> b!3675231 (= e!2275744 (contains!7731 (t!299958 call!266083) lt!1282417))))

(assert (= (and d!1079059 res!1492897) b!3675230))

(assert (= (and b!3675230 (not res!1492898)) b!3675231))

(declare-fun m!4184711 () Bool)

(assert (=> d!1079059 m!4184711))

(declare-fun m!4184713 () Bool)

(assert (=> d!1079059 m!4184713))

(declare-fun m!4184715 () Bool)

(assert (=> b!3675231 m!4184715))

(assert (=> bm!266078 d!1079059))

(declare-fun d!1079061 () Bool)

(assert (=> d!1079061 (not (contains!7731 (usedCharacters!1044 (regex!5832 (rule!8660 (_1!22446 lt!1282410)))) lt!1282408))))

(declare-fun lt!1282811 () Unit!56537)

(assert (=> d!1079061 (= lt!1282811 (choose!21885 thiss!23823 rules!3307 rules!3307 (rule!8660 (_1!22446 lt!1282410)) anOtherTypeRule!33 lt!1282408))))

(assert (=> d!1079061 (rulesInvariant!4818 thiss!23823 rules!3307)))

(assert (=> d!1079061 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!478 thiss!23823 rules!3307 rules!3307 (rule!8660 (_1!22446 lt!1282410)) anOtherTypeRule!33 lt!1282408) lt!1282811)))

(declare-fun bs!573335 () Bool)

(assert (= bs!573335 d!1079061))

(assert (=> bs!573335 m!4183617))

(assert (=> bs!573335 m!4183617))

(assert (=> bs!573335 m!4184319))

(declare-fun m!4184717 () Bool)

(assert (=> bs!573335 m!4184717))

(assert (=> bs!573335 m!4183623))

(assert (=> b!3674396 d!1079061))

(declare-fun d!1079063 () Bool)

(declare-fun lt!1282812 () Bool)

(assert (=> d!1079063 (= lt!1282812 (select (content!5614 call!266081) lt!1282408))))

(declare-fun e!2275745 () Bool)

(assert (=> d!1079063 (= lt!1282812 e!2275745)))

(declare-fun res!1492899 () Bool)

(assert (=> d!1079063 (=> (not res!1492899) (not e!2275745))))

(assert (=> d!1079063 (= res!1492899 ((_ is Cons!38759) call!266081))))

(assert (=> d!1079063 (= (contains!7731 call!266081 lt!1282408) lt!1282812)))

(declare-fun b!3675232 () Bool)

(declare-fun e!2275746 () Bool)

(assert (=> b!3675232 (= e!2275745 e!2275746)))

(declare-fun res!1492900 () Bool)

(assert (=> b!3675232 (=> res!1492900 e!2275746)))

(assert (=> b!3675232 (= res!1492900 (= (h!44179 call!266081) lt!1282408))))

(declare-fun b!3675233 () Bool)

(assert (=> b!3675233 (= e!2275746 (contains!7731 (t!299958 call!266081) lt!1282408))))

(assert (= (and d!1079063 res!1492899) b!3675232))

(assert (= (and b!3675232 (not res!1492900)) b!3675233))

(declare-fun m!4184719 () Bool)

(assert (=> d!1079063 m!4184719))

(declare-fun m!4184721 () Bool)

(assert (=> d!1079063 m!4184721))

(declare-fun m!4184723 () Bool)

(assert (=> b!3675233 m!4184723))

(assert (=> bm!266074 d!1079063))

(declare-fun b!3675238 () Bool)

(declare-fun e!2275749 () Bool)

(declare-fun tp!1117837 () Bool)

(assert (=> b!3675238 (= e!2275749 (and tp_is_empty!18265 tp!1117837))))

(assert (=> b!3674385 (= tp!1117775 e!2275749)))

(assert (= (and b!3674385 ((_ is Cons!38759) (t!299958 suffix!1395))) b!3675238))

(declare-fun b!3675249 () Bool)

(declare-fun e!2275752 () Bool)

(assert (=> b!3675249 (= e!2275752 tp_is_empty!18265)))

(declare-fun b!3675252 () Bool)

(declare-fun tp!1117851 () Bool)

(declare-fun tp!1117852 () Bool)

(assert (=> b!3675252 (= e!2275752 (and tp!1117851 tp!1117852))))

(declare-fun b!3675250 () Bool)

(declare-fun tp!1117848 () Bool)

(declare-fun tp!1117850 () Bool)

(assert (=> b!3675250 (= e!2275752 (and tp!1117848 tp!1117850))))

(declare-fun b!3675251 () Bool)

(declare-fun tp!1117849 () Bool)

(assert (=> b!3675251 (= e!2275752 tp!1117849)))

(assert (=> b!3674424 (= tp!1117766 e!2275752)))

(assert (= (and b!3674424 ((_ is ElementMatch!10591) (regex!5832 anOtherTypeRule!33))) b!3675249))

(assert (= (and b!3674424 ((_ is Concat!16654) (regex!5832 anOtherTypeRule!33))) b!3675250))

(assert (= (and b!3674424 ((_ is Star!10591) (regex!5832 anOtherTypeRule!33))) b!3675251))

(assert (= (and b!3674424 ((_ is Union!10591) (regex!5832 anOtherTypeRule!33))) b!3675252))

(declare-fun b!3675253 () Bool)

(declare-fun e!2275753 () Bool)

(assert (=> b!3675253 (= e!2275753 tp_is_empty!18265)))

(declare-fun b!3675256 () Bool)

(declare-fun tp!1117856 () Bool)

(declare-fun tp!1117857 () Bool)

(assert (=> b!3675256 (= e!2275753 (and tp!1117856 tp!1117857))))

(declare-fun b!3675254 () Bool)

(declare-fun tp!1117853 () Bool)

(declare-fun tp!1117855 () Bool)

(assert (=> b!3675254 (= e!2275753 (and tp!1117853 tp!1117855))))

(declare-fun b!3675255 () Bool)

(declare-fun tp!1117854 () Bool)

(assert (=> b!3675255 (= e!2275753 tp!1117854)))

(assert (=> b!3674381 (= tp!1117771 e!2275753)))

(assert (= (and b!3674381 ((_ is ElementMatch!10591) (regex!5832 (h!44181 rules!3307)))) b!3675253))

(assert (= (and b!3674381 ((_ is Concat!16654) (regex!5832 (h!44181 rules!3307)))) b!3675254))

(assert (= (and b!3674381 ((_ is Star!10591) (regex!5832 (h!44181 rules!3307)))) b!3675255))

(assert (= (and b!3674381 ((_ is Union!10591) (regex!5832 (h!44181 rules!3307)))) b!3675256))

(declare-fun b!3675267 () Bool)

(declare-fun b_free!97245 () Bool)

(declare-fun b_next!97949 () Bool)

(assert (=> b!3675267 (= b_free!97245 (not b_next!97949))))

(declare-fun tb!212937 () Bool)

(declare-fun t!300070 () Bool)

(assert (=> (and b!3675267 (= (toValue!8128 (transformation!5832 (h!44181 (t!299960 rules!3307)))) (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) t!300070) tb!212937))

(declare-fun result!259122 () Bool)

(assert (= result!259122 result!259004))

(assert (=> d!1078841 t!300070))

(declare-fun t!300072 () Bool)

(declare-fun tb!212939 () Bool)

(assert (=> (and b!3675267 (= (toValue!8128 (transformation!5832 (h!44181 (t!299960 rules!3307)))) (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) t!300072) tb!212939))

(declare-fun result!259124 () Bool)

(assert (= result!259124 result!259058))

(assert (=> d!1078941 t!300072))

(assert (=> d!1078943 t!300072))

(assert (=> d!1078899 t!300072))

(declare-fun tb!212941 () Bool)

(declare-fun t!300074 () Bool)

(assert (=> (and b!3675267 (= (toValue!8128 (transformation!5832 (h!44181 (t!299960 rules!3307)))) (toValue!8128 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) t!300074) tb!212941))

(declare-fun result!259126 () Bool)

(assert (= result!259126 result!259066))

(assert (=> d!1078899 t!300074))

(declare-fun tp!1117866 () Bool)

(declare-fun b_and!274079 () Bool)

(assert (=> b!3675267 (= tp!1117866 (and (=> t!300074 result!259126) (=> t!300070 result!259122) (=> t!300072 result!259124) b_and!274079))))

(declare-fun b_free!97247 () Bool)

(declare-fun b_next!97951 () Bool)

(assert (=> b!3675267 (= b_free!97247 (not b_next!97951))))

(declare-fun tb!212943 () Bool)

(declare-fun t!300076 () Bool)

(assert (=> (and b!3675267 (= (toChars!7987 (transformation!5832 (h!44181 (t!299960 rules!3307)))) (toChars!7987 (transformation!5832 (rule!8660 token!511)))) t!300076) tb!212943))

(declare-fun result!259128 () Bool)

(assert (= result!259128 result!259032))

(assert (=> b!3674857 t!300076))

(declare-fun tb!212945 () Bool)

(declare-fun t!300078 () Bool)

(assert (=> (and b!3675267 (= (toChars!7987 (transformation!5832 (h!44181 (t!299960 rules!3307)))) (toChars!7987 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) t!300078) tb!212945))

(declare-fun result!259130 () Bool)

(assert (= result!259130 result!259074))

(assert (=> d!1078943 t!300078))

(assert (=> d!1078957 t!300076))

(declare-fun t!300080 () Bool)

(declare-fun tb!212947 () Bool)

(assert (=> (and b!3675267 (= (toChars!7987 (transformation!5832 (h!44181 (t!299960 rules!3307)))) (toChars!7987 (transformation!5832 (rule!8660 (_1!22446 lt!1282410))))) t!300080) tb!212947))

(declare-fun result!259132 () Bool)

(assert (= result!259132 result!259082))

(assert (=> d!1078981 t!300080))

(declare-fun b_and!274081 () Bool)

(declare-fun tp!1117868 () Bool)

(assert (=> b!3675267 (= tp!1117868 (and (=> t!300076 result!259128) (=> t!300078 result!259130) (=> t!300080 result!259132) b_and!274081))))

(declare-fun e!2275764 () Bool)

(assert (=> b!3675267 (= e!2275764 (and tp!1117866 tp!1117868))))

(declare-fun tp!1117867 () Bool)

(declare-fun b!3675266 () Bool)

(declare-fun e!2275762 () Bool)

(assert (=> b!3675266 (= e!2275762 (and tp!1117867 (inv!52247 (tag!6626 (h!44181 (t!299960 rules!3307)))) (inv!52250 (transformation!5832 (h!44181 (t!299960 rules!3307)))) e!2275764))))

(declare-fun b!3675265 () Bool)

(declare-fun e!2275765 () Bool)

(declare-fun tp!1117869 () Bool)

(assert (=> b!3675265 (= e!2275765 (and e!2275762 tp!1117869))))

(assert (=> b!3674408 (= tp!1117767 e!2275765)))

(assert (= b!3675266 b!3675267))

(assert (= b!3675265 b!3675266))

(assert (= (and b!3674408 ((_ is Cons!38761) (t!299960 rules!3307))) b!3675265))

(declare-fun m!4184725 () Bool)

(assert (=> b!3675266 m!4184725))

(declare-fun m!4184727 () Bool)

(assert (=> b!3675266 m!4184727))

(declare-fun b!3675268 () Bool)

(declare-fun e!2275766 () Bool)

(assert (=> b!3675268 (= e!2275766 tp_is_empty!18265)))

(declare-fun b!3675271 () Bool)

(declare-fun tp!1117873 () Bool)

(declare-fun tp!1117874 () Bool)

(assert (=> b!3675271 (= e!2275766 (and tp!1117873 tp!1117874))))

(declare-fun b!3675269 () Bool)

(declare-fun tp!1117870 () Bool)

(declare-fun tp!1117872 () Bool)

(assert (=> b!3675269 (= e!2275766 (and tp!1117870 tp!1117872))))

(declare-fun b!3675270 () Bool)

(declare-fun tp!1117871 () Bool)

(assert (=> b!3675270 (= e!2275766 tp!1117871)))

(assert (=> b!3674403 (= tp!1117770 e!2275766)))

(assert (= (and b!3674403 ((_ is ElementMatch!10591) (regex!5832 (rule!8660 token!511)))) b!3675268))

(assert (= (and b!3674403 ((_ is Concat!16654) (regex!5832 (rule!8660 token!511)))) b!3675269))

(assert (= (and b!3674403 ((_ is Star!10591) (regex!5832 (rule!8660 token!511)))) b!3675270))

(assert (= (and b!3674403 ((_ is Union!10591) (regex!5832 (rule!8660 token!511)))) b!3675271))

(declare-fun b!3675272 () Bool)

(declare-fun e!2275767 () Bool)

(declare-fun tp!1117875 () Bool)

(assert (=> b!3675272 (= e!2275767 (and tp_is_empty!18265 tp!1117875))))

(assert (=> b!3674407 (= tp!1117765 e!2275767)))

(assert (= (and b!3674407 ((_ is Cons!38759) (originalCharacters!6546 token!511))) b!3675272))

(declare-fun b!3675273 () Bool)

(declare-fun e!2275768 () Bool)

(assert (=> b!3675273 (= e!2275768 tp_is_empty!18265)))

(declare-fun b!3675276 () Bool)

(declare-fun tp!1117879 () Bool)

(declare-fun tp!1117880 () Bool)

(assert (=> b!3675276 (= e!2275768 (and tp!1117879 tp!1117880))))

(declare-fun b!3675274 () Bool)

(declare-fun tp!1117876 () Bool)

(declare-fun tp!1117878 () Bool)

(assert (=> b!3675274 (= e!2275768 (and tp!1117876 tp!1117878))))

(declare-fun b!3675275 () Bool)

(declare-fun tp!1117877 () Bool)

(assert (=> b!3675275 (= e!2275768 tp!1117877)))

(assert (=> b!3674419 (= tp!1117768 e!2275768)))

(assert (= (and b!3674419 ((_ is ElementMatch!10591) (regex!5832 rule!403))) b!3675273))

(assert (= (and b!3674419 ((_ is Concat!16654) (regex!5832 rule!403))) b!3675274))

(assert (= (and b!3674419 ((_ is Star!10591) (regex!5832 rule!403))) b!3675275))

(assert (= (and b!3674419 ((_ is Union!10591) (regex!5832 rule!403))) b!3675276))

(declare-fun b_lambda!109131 () Bool)

(assert (= b_lambda!109119 (or (and b!3674399 b_free!97239 (= (toChars!7987 (transformation!5832 (h!44181 rules!3307))) (toChars!7987 (transformation!5832 (rule!8660 token!511))))) (and b!3675267 b_free!97247 (= (toChars!7987 (transformation!5832 (h!44181 (t!299960 rules!3307)))) (toChars!7987 (transformation!5832 (rule!8660 token!511))))) (and b!3674402 b_free!97227 (= (toChars!7987 (transformation!5832 anOtherTypeRule!33)) (toChars!7987 (transformation!5832 (rule!8660 token!511))))) (and b!3674393 b_free!97231 (= (toChars!7987 (transformation!5832 rule!403)) (toChars!7987 (transformation!5832 (rule!8660 token!511))))) (and b!3674398 b_free!97235) b_lambda!109131)))

(declare-fun b_lambda!109133 () Bool)

(assert (= b_lambda!109099 (or (and b!3674399 b_free!97239 (= (toChars!7987 (transformation!5832 (h!44181 rules!3307))) (toChars!7987 (transformation!5832 (rule!8660 token!511))))) (and b!3675267 b_free!97247 (= (toChars!7987 (transformation!5832 (h!44181 (t!299960 rules!3307)))) (toChars!7987 (transformation!5832 (rule!8660 token!511))))) (and b!3674402 b_free!97227 (= (toChars!7987 (transformation!5832 anOtherTypeRule!33)) (toChars!7987 (transformation!5832 (rule!8660 token!511))))) (and b!3674393 b_free!97231 (= (toChars!7987 (transformation!5832 rule!403)) (toChars!7987 (transformation!5832 (rule!8660 token!511))))) (and b!3674398 b_free!97235) b_lambda!109133)))

(check-sat (not d!1079017) (not b!3675133) (not b!3675227) (not b_lambda!109093) (not bm!266104) tp_is_empty!18265 (not d!1078795) (not b!3675196) (not b!3675039) (not d!1078829) (not d!1078843) (not d!1078959) (not b!3675136) (not d!1079011) (not b!3675270) (not d!1079031) (not d!1078971) (not b!3674823) (not d!1079033) (not d!1078871) (not b_next!97937) (not d!1078997) (not d!1078817) (not b!3675219) (not b!3674980) (not tb!212901) (not d!1079045) (not b!3675176) (not b!3675138) b_and!274035 (not b!3674981) (not b!3675173) (not b!3674874) (not b!3674663) (not b!3675160) (not d!1079037) (not d!1078949) (not tb!212837) (not bm!266117) (not b!3675231) (not b!3675159) (not b!3675062) (not b!3675228) (not d!1079043) (not d!1078999) (not b!3675274) (not b!3675172) (not b!3675016) (not b!3674708) (not d!1078899) (not b!3675275) (not b!3675171) (not b!3675158) (not b!3675221) (not bm!266114) (not b_lambda!109113) (not d!1078839) (not d!1079055) (not b!3675220) (not d!1078827) (not d!1078763) (not d!1078897) b_and!274041 (not bm!266115) (not b!3674572) (not b!3675168) (not b_lambda!109121) (not b!3674978) (not d!1078995) (not b!3675038) (not d!1078893) (not b!3675131) (not d!1078801) (not b!3675164) (not b!3675256) (not b!3675251) (not b!3674666) (not b!3674822) (not d!1078819) (not d!1079039) (not b!3675272) (not d!1078987) (not b!3674983) (not b!3675174) (not b!3674959) (not d!1078963) (not bm!266137) (not b_next!97941) b_and!274037 (not b!3675029) (not b!3675144) (not d!1078961) (not b_next!97935) (not d!1078789) (not d!1079057) (not d!1078851) (not b!3675030) (not bm!266135) (not d!1079041) b_and!274039 (not b!3675233) (not b_lambda!109133) (not d!1078977) (not d!1078945) (not b!3675177) (not b!3674825) (not b!3675060) (not tb!212893) (not d!1079027) (not b!3675132) (not d!1079025) (not d!1078939) (not b!3675190) (not b!3674878) (not b!3674624) (not d!1079015) (not b_next!97943) (not b_lambda!109115) (not d!1079053) (not b_next!97939) (not b!3675186) (not b_next!97931) (not d!1078951) (not d!1079059) (not b_lambda!109131) (not tb!212885) (not bm!266110) (not d!1078969) b_and!274051 (not bm!266138) b_and!274079 (not b!3674824) (not d!1078831) (not b!3674664) (not b!3675254) (not b!3675250) (not b!3675019) (not d!1078891) (not bm!266139) (not b!3675045) (not d!1078967) (not d!1078975) (not b!3674820) (not tb!212909) (not b!3675191) (not bm!266112) (not d!1078957) (not b!3674704) (not d!1079063) (not b!3675265) (not b!3675061) (not b!3674979) (not b!3674830) (not b!3675037) (not b_lambda!109111) (not tb!212861) (not d!1078777) (not b!3675169) (not d!1079029) (not b!3674706) (not bm!266125) (not b!3675208) (not b_next!97951) (not b!3674725) (not b!3675182) (not d!1078825) (not b!3675266) (not b!3675166) (not b_next!97933) (not b!3675067) (not d!1078979) (not b!3674701) (not b!3674851) (not b!3674843) (not d!1078821) (not d!1078943) (not b!3674982) b_and!274053 (not b!3675222) (not b!3674852) b_and!274081 (not b!3675046) (not d!1079049) (not d!1078879) (not d!1078955) (not b!3675252) (not b!3675276) (not b!3675015) (not b!3675175) (not b!3674986) (not b!3675217) (not d!1078833) (not b_next!97949) (not b!3675137) (not b!3675269) (not bm!266109) (not b_lambda!109109) (not bm!266134) (not b!3675212) (not b!3675035) (not b!3674858) (not b!3674703) (not b!3674623) (not b!3675197) b_and!274055 (not b!3674984) (not b!3675255) b_and!274057 (not b_next!97929) (not b!3674709) (not b!3675143) (not b!3675271) (not b_lambda!109117) (not bm!266103) (not b!3674718) (not d!1078947) (not d!1078953) (not d!1079061) (not b!3675040) (not b!3674857) (not d!1078981) (not b!3675238) (not b!3674707) (not b!3675189) (not b!3674705) (not b!3674957) (not b!3675066) (not b!3675165) (not b!3674877) (not bm!266106) (not b!3674863) (not d!1079023) (not b!3675179) (not b!3675188))
(check-sat (not b_next!97937) b_and!274035 b_and!274041 b_and!274039 (not b_next!97951) (not b_next!97933) (not b_next!97949) (not b_next!97935) (not b_next!97941) b_and!274037 (not b_next!97943) (not b_next!97939) (not b_next!97931) b_and!274051 b_and!274079 b_and!274053 b_and!274081 b_and!274055 b_and!274057 (not b_next!97929))

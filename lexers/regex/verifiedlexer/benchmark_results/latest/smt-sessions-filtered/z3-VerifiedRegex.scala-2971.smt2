; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!176494 () Bool)

(assert start!176494)

(declare-fun b!1776633 () Bool)

(declare-fun b_free!49255 () Bool)

(declare-fun b_next!49959 () Bool)

(assert (=> b!1776633 (= b_free!49255 (not b_next!49959))))

(declare-fun tp!503372 () Bool)

(declare-fun b_and!135719 () Bool)

(assert (=> b!1776633 (= tp!503372 b_and!135719)))

(declare-fun b_free!49257 () Bool)

(declare-fun b_next!49961 () Bool)

(assert (=> b!1776633 (= b_free!49257 (not b_next!49961))))

(declare-fun tp!503368 () Bool)

(declare-fun b_and!135721 () Bool)

(assert (=> b!1776633 (= tp!503368 b_and!135721)))

(declare-fun b!1776634 () Bool)

(declare-fun b_free!49259 () Bool)

(declare-fun b_next!49963 () Bool)

(assert (=> b!1776634 (= b_free!49259 (not b_next!49963))))

(declare-fun tp!503376 () Bool)

(declare-fun b_and!135723 () Bool)

(assert (=> b!1776634 (= tp!503376 b_and!135723)))

(declare-fun b_free!49261 () Bool)

(declare-fun b_next!49965 () Bool)

(assert (=> b!1776634 (= b_free!49261 (not b_next!49965))))

(declare-fun tp!503375 () Bool)

(declare-fun b_and!135725 () Bool)

(assert (=> b!1776634 (= tp!503375 b_and!135725)))

(declare-fun b!1776623 () Bool)

(declare-fun b_free!49263 () Bool)

(declare-fun b_next!49967 () Bool)

(assert (=> b!1776623 (= b_free!49263 (not b_next!49967))))

(declare-fun tp!503371 () Bool)

(declare-fun b_and!135727 () Bool)

(assert (=> b!1776623 (= tp!503371 b_and!135727)))

(declare-fun b_free!49265 () Bool)

(declare-fun b_next!49969 () Bool)

(assert (=> b!1776623 (= b_free!49265 (not b_next!49969))))

(declare-fun tp!503374 () Bool)

(declare-fun b_and!135729 () Bool)

(assert (=> b!1776623 (= tp!503374 b_and!135729)))

(declare-fun b!1776654 () Bool)

(declare-fun e!1136973 () Bool)

(assert (=> b!1776654 (= e!1136973 true)))

(declare-fun b!1776653 () Bool)

(declare-fun e!1136972 () Bool)

(assert (=> b!1776653 (= e!1136972 e!1136973)))

(declare-fun b!1776652 () Bool)

(declare-fun e!1136971 () Bool)

(assert (=> b!1776652 (= e!1136971 e!1136972)))

(declare-fun b!1776621 () Bool)

(assert (=> b!1776621 e!1136971))

(assert (= b!1776653 b!1776654))

(assert (= b!1776652 b!1776653))

(assert (= b!1776621 b!1776652))

(declare-fun order!12569 () Int)

(declare-datatypes ((List!19637 0))(
  ( (Nil!19567) (Cons!19567 (h!24968 (_ BitVec 16)) (t!166036 List!19637)) )
))
(declare-datatypes ((TokenValue!3593 0))(
  ( (FloatLiteralValue!7186 (text!25596 List!19637)) (TokenValueExt!3592 (__x!12488 Int)) (Broken!17965 (value!109482 List!19637)) (Object!3662) (End!3593) (Def!3593) (Underscore!3593) (Match!3593) (Else!3593) (Error!3593) (Case!3593) (If!3593) (Extends!3593) (Abstract!3593) (Class!3593) (Val!3593) (DelimiterValue!7186 (del!3653 List!19637)) (KeywordValue!3599 (value!109483 List!19637)) (CommentValue!7186 (value!109484 List!19637)) (WhitespaceValue!7186 (value!109485 List!19637)) (IndentationValue!3593 (value!109486 List!19637)) (String!22296) (Int32!3593) (Broken!17966 (value!109487 List!19637)) (Boolean!3594) (Unit!33807) (OperatorValue!3596 (op!3653 List!19637)) (IdentifierValue!7186 (value!109488 List!19637)) (IdentifierValue!7187 (value!109489 List!19637)) (WhitespaceValue!7187 (value!109490 List!19637)) (True!7186) (False!7186) (Broken!17967 (value!109491 List!19637)) (Broken!17968 (value!109492 List!19637)) (True!7187) (RightBrace!3593) (RightBracket!3593) (Colon!3593) (Null!3593) (Comma!3593) (LeftBracket!3593) (False!7187) (LeftBrace!3593) (ImaginaryLiteralValue!3593 (text!25597 List!19637)) (StringLiteralValue!10779 (value!109493 List!19637)) (EOFValue!3593 (value!109494 List!19637)) (IdentValue!3593 (value!109495 List!19637)) (DelimiterValue!7187 (value!109496 List!19637)) (DedentValue!3593 (value!109497 List!19637)) (NewLineValue!3593 (value!109498 List!19637)) (IntegerValue!10779 (value!109499 (_ BitVec 32)) (text!25598 List!19637)) (IntegerValue!10780 (value!109500 Int) (text!25599 List!19637)) (Times!3593) (Or!3593) (Equal!3593) (Minus!3593) (Broken!17969 (value!109501 List!19637)) (And!3593) (Div!3593) (LessEqual!3593) (Mod!3593) (Concat!8424) (Not!3593) (Plus!3593) (SpaceValue!3593 (value!109502 List!19637)) (IntegerValue!10781 (value!109503 Int) (text!25600 List!19637)) (StringLiteralValue!10780 (text!25601 List!19637)) (FloatLiteralValue!7187 (text!25602 List!19637)) (BytesLiteralValue!3593 (value!109504 List!19637)) (CommentValue!7187 (value!109505 List!19637)) (StringLiteralValue!10781 (value!109506 List!19637)) (ErrorTokenValue!3593 (msg!3654 List!19637)) )
))
(declare-datatypes ((C!9836 0))(
  ( (C!9837 (val!5514 Int)) )
))
(declare-datatypes ((List!19638 0))(
  ( (Nil!19568) (Cons!19568 (h!24969 C!9836) (t!166037 List!19638)) )
))
(declare-datatypes ((Regex!4831 0))(
  ( (ElementMatch!4831 (c!289166 C!9836)) (Concat!8425 (regOne!10174 Regex!4831) (regTwo!10174 Regex!4831)) (EmptyExpr!4831) (Star!4831 (reg!5160 Regex!4831)) (EmptyLang!4831) (Union!4831 (regOne!10175 Regex!4831) (regTwo!10175 Regex!4831)) )
))
(declare-datatypes ((String!22297 0))(
  ( (String!22298 (value!109507 String)) )
))
(declare-datatypes ((IArray!13023 0))(
  ( (IArray!13024 (innerList!6569 List!19638)) )
))
(declare-datatypes ((Conc!6509 0))(
  ( (Node!6509 (left!15678 Conc!6509) (right!16008 Conc!6509) (csize!13248 Int) (cheight!6720 Int)) (Leaf!9481 (xs!9385 IArray!13023) (csize!13249 Int)) (Empty!6509) )
))
(declare-datatypes ((BalanceConc!12962 0))(
  ( (BalanceConc!12963 (c!289167 Conc!6509)) )
))
(declare-datatypes ((TokenValueInjection!6846 0))(
  ( (TokenValueInjection!6847 (toValue!5030 Int) (toChars!4889 Int)) )
))
(declare-datatypes ((Rule!6806 0))(
  ( (Rule!6807 (regex!3503 Regex!4831) (tag!3891 String!22297) (isSeparator!3503 Bool) (transformation!3503 TokenValueInjection!6846)) )
))
(declare-datatypes ((Token!6572 0))(
  ( (Token!6573 (value!109508 TokenValue!3593) (rule!5563 Rule!6806) (size!15546 Int) (originalCharacters!4317 List!19638)) )
))
(declare-datatypes ((tuple2!19166 0))(
  ( (tuple2!19167 (_1!10985 Token!6572) (_2!10985 List!19638)) )
))
(declare-fun lt!689238 () tuple2!19166)

(declare-fun order!12567 () Int)

(declare-fun lambda!70564 () Int)

(declare-fun dynLambda!9562 (Int Int) Int)

(declare-fun dynLambda!9563 (Int Int) Int)

(assert (=> b!1776654 (< (dynLambda!9562 order!12567 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) (dynLambda!9563 order!12569 lambda!70564))))

(declare-fun order!12571 () Int)

(declare-fun dynLambda!9564 (Int Int) Int)

(assert (=> b!1776654 (< (dynLambda!9564 order!12571 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) (dynLambda!9563 order!12569 lambda!70564))))

(declare-fun b!1776609 () Bool)

(declare-fun e!1136961 () Bool)

(declare-fun e!1136943 () Bool)

(assert (=> b!1776609 (= e!1136961 e!1136943)))

(declare-fun res!800480 () Bool)

(assert (=> b!1776609 (=> res!800480 e!1136943)))

(declare-datatypes ((Option!4028 0))(
  ( (None!4027) (Some!4027 (v!25510 tuple2!19166)) )
))
(declare-fun lt!689218 () Option!4028)

(declare-fun lt!689233 () Option!4028)

(assert (=> b!1776609 (= res!800480 (not (= lt!689218 lt!689233)))))

(declare-fun lt!689252 () Token!6572)

(declare-fun lt!689249 () List!19638)

(assert (=> b!1776609 (= lt!689233 (Some!4027 (tuple2!19167 lt!689252 lt!689249)))))

(declare-fun lt!689236 () List!19638)

(declare-fun isPrefix!1743 (List!19638 List!19638) Bool)

(assert (=> b!1776609 (isPrefix!1743 lt!689236 lt!689236)))

(declare-datatypes ((Unit!33808 0))(
  ( (Unit!33809) )
))
(declare-fun lt!689226 () Unit!33808)

(declare-fun lemmaIsPrefixRefl!1152 (List!19638 List!19638) Unit!33808)

(assert (=> b!1776609 (= lt!689226 (lemmaIsPrefixRefl!1152 lt!689236 lt!689236))))

(declare-fun lt!689251 () Unit!33808)

(declare-fun lt!689217 () BalanceConc!12962)

(declare-fun lemmaSemiInverse!641 (TokenValueInjection!6846 BalanceConc!12962) Unit!33808)

(assert (=> b!1776609 (= lt!689251 (lemmaSemiInverse!641 (transformation!3503 (rule!5563 (_1!10985 lt!689238))) lt!689217))))

(declare-datatypes ((LexerInterface!3132 0))(
  ( (LexerInterfaceExt!3129 (__x!12489 Int)) (Lexer!3130) )
))
(declare-fun thiss!24550 () LexerInterface!3132)

(declare-fun ruleValid!1001 (LexerInterface!3132 Rule!6806) Bool)

(assert (=> b!1776609 (ruleValid!1001 thiss!24550 (rule!5563 (_1!10985 lt!689238)))))

(declare-datatypes ((List!19639 0))(
  ( (Nil!19569) (Cons!19569 (h!24970 Rule!6806) (t!166038 List!19639)) )
))
(declare-fun rules!3447 () List!19639)

(declare-fun lt!689227 () Unit!33808)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!524 (LexerInterface!3132 Rule!6806 List!19639) Unit!33808)

(assert (=> b!1776609 (= lt!689227 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!524 thiss!24550 (rule!5563 (_1!10985 lt!689238)) rules!3447))))

(declare-fun b!1776610 () Bool)

(declare-fun e!1136953 () Bool)

(declare-fun e!1136952 () Bool)

(assert (=> b!1776610 (= e!1136953 e!1136952)))

(declare-fun res!800479 () Bool)

(assert (=> b!1776610 (=> res!800479 e!1136952)))

(declare-fun lt!689254 () List!19638)

(declare-fun lt!689256 () TokenValue!3593)

(declare-fun lt!689247 () Int)

(declare-fun lt!689231 () Option!4028)

(assert (=> b!1776610 (= res!800479 (not (= lt!689231 (Some!4027 (tuple2!19167 (Token!6573 lt!689256 (rule!5563 (_1!10985 lt!689238)) lt!689247 lt!689254) (_2!10985 lt!689238))))))))

(declare-fun lt!689221 () BalanceConc!12962)

(declare-fun size!15547 (BalanceConc!12962) Int)

(assert (=> b!1776610 (= lt!689247 (size!15547 lt!689221))))

(declare-fun apply!5303 (TokenValueInjection!6846 BalanceConc!12962) TokenValue!3593)

(assert (=> b!1776610 (= lt!689256 (apply!5303 (transformation!3503 (rule!5563 (_1!10985 lt!689238))) lt!689221))))

(declare-fun lt!689224 () Unit!33808)

(declare-fun lemmaCharactersSize!561 (Token!6572) Unit!33808)

(assert (=> b!1776610 (= lt!689224 (lemmaCharactersSize!561 (_1!10985 lt!689238)))))

(declare-fun lt!689219 () Unit!33808)

(declare-fun lemmaEqSameImage!414 (TokenValueInjection!6846 BalanceConc!12962 BalanceConc!12962) Unit!33808)

(declare-fun seqFromList!2472 (List!19638) BalanceConc!12962)

(assert (=> b!1776610 (= lt!689219 (lemmaEqSameImage!414 (transformation!3503 (rule!5563 (_1!10985 lt!689238))) lt!689221 (seqFromList!2472 (originalCharacters!4317 (_1!10985 lt!689238)))))))

(declare-fun b!1776611 () Bool)

(declare-fun e!1136944 () Bool)

(declare-fun e!1136939 () Bool)

(assert (=> b!1776611 (= e!1136944 e!1136939)))

(declare-fun res!800467 () Bool)

(assert (=> b!1776611 (=> (not res!800467) (not e!1136939))))

(declare-fun lt!689235 () tuple2!19166)

(declare-fun token!523 () Token!6572)

(assert (=> b!1776611 (= res!800467 (= (_1!10985 lt!689235) token!523))))

(declare-fun lt!689220 () Option!4028)

(declare-fun get!5997 (Option!4028) tuple2!19166)

(assert (=> b!1776611 (= lt!689235 (get!5997 lt!689220))))

(declare-fun b!1776612 () Bool)

(declare-fun res!800465 () Bool)

(assert (=> b!1776612 (=> res!800465 e!1136943)))

(declare-fun lt!689246 () List!19638)

(declare-fun lt!689223 () Int)

(declare-fun size!15548 (List!19638) Int)

(assert (=> b!1776612 (= res!800465 (<= (size!15548 lt!689246) lt!689223))))

(declare-fun b!1776613 () Bool)

(declare-fun e!1136948 () Bool)

(assert (=> b!1776613 (= e!1136939 (not e!1136948))))

(declare-fun res!800471 () Bool)

(assert (=> b!1776613 (=> res!800471 e!1136948)))

(declare-fun rule!422 () Rule!6806)

(declare-fun matchR!2304 (Regex!4831 List!19638) Bool)

(assert (=> b!1776613 (= res!800471 (not (matchR!2304 (regex!3503 rule!422) lt!689246)))))

(assert (=> b!1776613 (ruleValid!1001 thiss!24550 rule!422)))

(declare-fun lt!689253 () Unit!33808)

(assert (=> b!1776613 (= lt!689253 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!524 thiss!24550 rule!422 rules!3447))))

(declare-fun e!1136958 () Bool)

(declare-fun tp!503366 () Bool)

(declare-fun e!1136955 () Bool)

(declare-fun b!1776614 () Bool)

(declare-fun inv!25447 (String!22297) Bool)

(declare-fun inv!25452 (TokenValueInjection!6846) Bool)

(assert (=> b!1776614 (= e!1136955 (and tp!503366 (inv!25447 (tag!3891 (rule!5563 token!523))) (inv!25452 (transformation!3503 (rule!5563 token!523))) e!1136958))))

(declare-fun b!1776615 () Bool)

(declare-fun res!800474 () Bool)

(declare-fun e!1136964 () Bool)

(assert (=> b!1776615 (=> (not res!800474) (not e!1136964))))

(declare-fun contains!3535 (List!19639 Rule!6806) Bool)

(assert (=> b!1776615 (= res!800474 (contains!3535 rules!3447 rule!422))))

(declare-fun b!1776616 () Bool)

(declare-fun e!1136937 () Unit!33808)

(declare-fun Unit!33810 () Unit!33808)

(assert (=> b!1776616 (= e!1136937 Unit!33810)))

(declare-fun lt!689240 () Unit!33808)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!210 (LexerInterface!3132 List!19639 List!19638 Token!6572 Rule!6806 List!19638) Unit!33808)

(assert (=> b!1776616 (= lt!689240 (lemmaMaxPrefixThenMatchesRulesRegex!210 thiss!24550 rules!3447 lt!689236 (_1!10985 lt!689238) (rule!5563 (_1!10985 lt!689238)) (_2!10985 lt!689238)))))

(declare-fun lt!689229 () Regex!4831)

(assert (=> b!1776616 (matchR!2304 lt!689229 lt!689254)))

(declare-fun lt!689212 () List!19638)

(declare-fun getSuffix!910 (List!19638 List!19638) List!19638)

(assert (=> b!1776616 (= lt!689212 (getSuffix!910 lt!689236 lt!689246))))

(declare-fun suffix!1421 () List!19638)

(declare-fun lt!689245 () Unit!33808)

(declare-fun lemmaSamePrefixThenSameSuffix!854 (List!19638 List!19638 List!19638 List!19638 List!19638) Unit!33808)

(assert (=> b!1776616 (= lt!689245 (lemmaSamePrefixThenSameSuffix!854 lt!689246 suffix!1421 lt!689246 lt!689212 lt!689236))))

(assert (=> b!1776616 (= suffix!1421 lt!689212)))

(declare-fun lt!689214 () Unit!33808)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!279 (List!19638 List!19638) Unit!33808)

(assert (=> b!1776616 (= lt!689214 (lemmaAddHeadSuffixToPrefixStillPrefix!279 lt!689246 lt!689236))))

(declare-fun ++!5327 (List!19638 List!19638) List!19638)

(declare-fun head!4142 (List!19638) C!9836)

(assert (=> b!1776616 (isPrefix!1743 (++!5327 lt!689246 (Cons!19568 (head!4142 lt!689212) Nil!19568)) lt!689236)))

(declare-fun lt!689213 () Unit!33808)

(declare-fun lt!689241 () List!19638)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!151 (List!19638 List!19638 List!19638) Unit!33808)

(assert (=> b!1776616 (= lt!689213 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!151 lt!689254 lt!689241 lt!689236))))

(assert (=> b!1776616 (isPrefix!1743 lt!689241 lt!689254)))

(declare-fun lt!689222 () Unit!33808)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!142 (Regex!4831 List!19638 List!19638) Unit!33808)

(assert (=> b!1776616 (= lt!689222 (lemmaNotPrefixMatchThenCannotMatchLonger!142 lt!689229 lt!689241 lt!689254))))

(assert (=> b!1776616 false))

(declare-fun b!1776617 () Bool)

(declare-fun e!1136959 () Bool)

(declare-fun e!1136954 () Bool)

(assert (=> b!1776617 (= e!1136959 e!1136954)))

(declare-fun res!800484 () Bool)

(assert (=> b!1776617 (=> res!800484 e!1136954)))

(assert (=> b!1776617 (= res!800484 (not (isPrefix!1743 lt!689254 lt!689236)))))

(assert (=> b!1776617 (isPrefix!1743 lt!689254 (++!5327 lt!689254 (_2!10985 lt!689238)))))

(declare-fun lt!689250 () Unit!33808)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1252 (List!19638 List!19638) Unit!33808)

(assert (=> b!1776617 (= lt!689250 (lemmaConcatTwoListThenFirstIsPrefix!1252 lt!689254 (_2!10985 lt!689238)))))

(declare-fun list!7953 (BalanceConc!12962) List!19638)

(assert (=> b!1776617 (= lt!689254 (list!7953 lt!689221))))

(declare-fun charsOf!2152 (Token!6572) BalanceConc!12962)

(assert (=> b!1776617 (= lt!689221 (charsOf!2152 (_1!10985 lt!689238)))))

(declare-fun e!1136951 () Bool)

(assert (=> b!1776617 e!1136951))

(declare-fun res!800470 () Bool)

(assert (=> b!1776617 (=> (not res!800470) (not e!1136951))))

(declare-datatypes ((Option!4029 0))(
  ( (None!4028) (Some!4028 (v!25511 Rule!6806)) )
))
(declare-fun lt!689244 () Option!4029)

(declare-fun isDefined!3371 (Option!4029) Bool)

(assert (=> b!1776617 (= res!800470 (isDefined!3371 lt!689244))))

(declare-fun getRuleFromTag!551 (LexerInterface!3132 List!19639 String!22297) Option!4029)

(assert (=> b!1776617 (= lt!689244 (getRuleFromTag!551 thiss!24550 rules!3447 (tag!3891 (rule!5563 (_1!10985 lt!689238)))))))

(declare-fun lt!689211 () Unit!33808)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!551 (LexerInterface!3132 List!19639 List!19638 Token!6572) Unit!33808)

(assert (=> b!1776617 (= lt!689211 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!551 thiss!24550 rules!3447 lt!689236 (_1!10985 lt!689238)))))

(assert (=> b!1776617 (= lt!689238 (get!5997 lt!689231))))

(declare-fun lt!689248 () Unit!33808)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!654 (LexerInterface!3132 List!19639 List!19638 List!19638) Unit!33808)

(assert (=> b!1776617 (= lt!689248 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!654 thiss!24550 rules!3447 lt!689246 suffix!1421))))

(declare-fun maxPrefix!1686 (LexerInterface!3132 List!19639 List!19638) Option!4028)

(assert (=> b!1776617 (= lt!689231 (maxPrefix!1686 thiss!24550 rules!3447 lt!689236))))

(assert (=> b!1776617 (isPrefix!1743 lt!689246 lt!689236)))

(declare-fun lt!689255 () Unit!33808)

(assert (=> b!1776617 (= lt!689255 (lemmaConcatTwoListThenFirstIsPrefix!1252 lt!689246 suffix!1421))))

(assert (=> b!1776617 (= lt!689236 (++!5327 lt!689246 suffix!1421))))

(declare-fun b!1776618 () Bool)

(declare-fun res!800483 () Bool)

(assert (=> b!1776618 (=> res!800483 e!1136954)))

(assert (=> b!1776618 (= res!800483 (not (matchR!2304 (regex!3503 (rule!5563 (_1!10985 lt!689238))) lt!689254)))))

(declare-fun b!1776619 () Bool)

(declare-fun res!800487 () Bool)

(assert (=> b!1776619 (=> (not res!800487) (not e!1136939))))

(declare-fun isEmpty!12362 (List!19638) Bool)

(assert (=> b!1776619 (= res!800487 (isEmpty!12362 (_2!10985 lt!689235)))))

(declare-fun b!1776620 () Bool)

(declare-fun e!1136956 () Bool)

(assert (=> b!1776620 (= e!1136956 e!1136953)))

(declare-fun res!800485 () Bool)

(assert (=> b!1776620 (=> res!800485 e!1136953)))

(declare-fun dynLambda!9565 (Int TokenValue!3593) BalanceConc!12962)

(declare-fun dynLambda!9566 (Int BalanceConc!12962) TokenValue!3593)

(assert (=> b!1776620 (= res!800485 (not (= (list!7953 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221))) lt!689254)))))

(declare-fun lt!689225 () Unit!33808)

(assert (=> b!1776620 (= lt!689225 (lemmaSemiInverse!641 (transformation!3503 (rule!5563 (_1!10985 lt!689238))) lt!689221))))

(assert (=> b!1776621 (= e!1136954 e!1136956)))

(declare-fun res!800481 () Bool)

(assert (=> b!1776621 (=> res!800481 e!1136956)))

(declare-fun Forall!870 (Int) Bool)

(assert (=> b!1776621 (= res!800481 (not (Forall!870 lambda!70564)))))

(declare-fun lt!689216 () Unit!33808)

(declare-fun lemmaInv!702 (TokenValueInjection!6846) Unit!33808)

(assert (=> b!1776621 (= lt!689216 (lemmaInv!702 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))))))

(declare-fun b!1776622 () Bool)

(declare-fun res!800472 () Bool)

(assert (=> b!1776622 (=> res!800472 e!1136953)))

(assert (=> b!1776622 (= res!800472 (not (= lt!689221 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (value!109508 (_1!10985 lt!689238))))))))

(assert (=> b!1776623 (= e!1136958 (and tp!503371 tp!503374))))

(declare-fun b!1776624 () Bool)

(declare-fun e!1136938 () Bool)

(declare-fun e!1136962 () Bool)

(declare-fun tp!503367 () Bool)

(assert (=> b!1776624 (= e!1136962 (and tp!503367 (inv!25447 (tag!3891 (h!24970 rules!3447))) (inv!25452 (transformation!3503 (h!24970 rules!3447))) e!1136938))))

(declare-fun b!1776625 () Bool)

(declare-fun e!1136941 () Bool)

(assert (=> b!1776625 (= e!1136952 e!1136941)))

(declare-fun res!800475 () Bool)

(assert (=> b!1776625 (=> res!800475 e!1136941)))

(assert (=> b!1776625 (= res!800475 (or (not (= lt!689249 (_2!10985 lt!689238))) (not (= lt!689218 (Some!4027 (tuple2!19167 (_1!10985 lt!689238) lt!689249))))))))

(assert (=> b!1776625 (= (_2!10985 lt!689238) lt!689249)))

(declare-fun lt!689232 () Unit!33808)

(assert (=> b!1776625 (= lt!689232 (lemmaSamePrefixThenSameSuffix!854 lt!689254 (_2!10985 lt!689238) lt!689254 lt!689249 lt!689236))))

(assert (=> b!1776625 (= lt!689249 (getSuffix!910 lt!689236 lt!689254))))

(assert (=> b!1776625 (= lt!689218 (Some!4027 (tuple2!19167 lt!689252 (_2!10985 lt!689238))))))

(declare-fun maxPrefixOneRule!1055 (LexerInterface!3132 Rule!6806 List!19638) Option!4028)

(assert (=> b!1776625 (= lt!689218 (maxPrefixOneRule!1055 thiss!24550 (rule!5563 (_1!10985 lt!689238)) lt!689236))))

(declare-fun lt!689237 () TokenValue!3593)

(assert (=> b!1776625 (= lt!689252 (Token!6573 lt!689237 (rule!5563 (_1!10985 lt!689238)) lt!689223 lt!689254))))

(assert (=> b!1776625 (= lt!689223 (size!15548 lt!689254))))

(assert (=> b!1776625 (= lt!689237 (apply!5303 (transformation!3503 (rule!5563 (_1!10985 lt!689238))) lt!689217))))

(assert (=> b!1776625 (= lt!689217 (seqFromList!2472 lt!689254))))

(declare-fun lt!689215 () Unit!33808)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!433 (LexerInterface!3132 List!19639 List!19638 List!19638 List!19638 Rule!6806) Unit!33808)

(assert (=> b!1776625 (= lt!689215 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!433 thiss!24550 rules!3447 lt!689254 lt!689236 (_2!10985 lt!689238) (rule!5563 (_1!10985 lt!689238))))))

(declare-fun b!1776626 () Bool)

(assert (=> b!1776626 (= e!1136948 e!1136959)))

(declare-fun res!800486 () Bool)

(assert (=> b!1776626 (=> res!800486 e!1136959)))

(declare-fun prefixMatch!714 (Regex!4831 List!19638) Bool)

(assert (=> b!1776626 (= res!800486 (prefixMatch!714 lt!689229 lt!689241))))

(assert (=> b!1776626 (= lt!689241 (++!5327 lt!689246 (Cons!19568 (head!4142 suffix!1421) Nil!19568)))))

(declare-fun rulesRegex!859 (LexerInterface!3132 List!19639) Regex!4831)

(assert (=> b!1776626 (= lt!689229 (rulesRegex!859 thiss!24550 rules!3447))))

(declare-fun b!1776627 () Bool)

(declare-fun res!800469 () Bool)

(assert (=> b!1776627 (=> (not res!800469) (not e!1136964))))

(declare-fun rulesInvariant!2801 (LexerInterface!3132 List!19639) Bool)

(assert (=> b!1776627 (= res!800469 (rulesInvariant!2801 thiss!24550 rules!3447))))

(declare-fun b!1776628 () Bool)

(assert (=> b!1776628 (= e!1136964 e!1136944)))

(declare-fun res!800476 () Bool)

(assert (=> b!1776628 (=> (not res!800476) (not e!1136944))))

(declare-fun isDefined!3372 (Option!4028) Bool)

(assert (=> b!1776628 (= res!800476 (isDefined!3372 lt!689220))))

(assert (=> b!1776628 (= lt!689220 (maxPrefix!1686 thiss!24550 rules!3447 lt!689246))))

(declare-fun lt!689230 () BalanceConc!12962)

(assert (=> b!1776628 (= lt!689246 (list!7953 lt!689230))))

(assert (=> b!1776628 (= lt!689230 (charsOf!2152 token!523))))

(declare-fun b!1776629 () Bool)

(declare-fun e!1136957 () Bool)

(assert (=> b!1776629 (= e!1136951 e!1136957)))

(declare-fun res!800478 () Bool)

(assert (=> b!1776629 (=> (not res!800478) (not e!1136957))))

(declare-fun lt!689239 () Rule!6806)

(assert (=> b!1776629 (= res!800478 (matchR!2304 (regex!3503 lt!689239) (list!7953 (charsOf!2152 (_1!10985 lt!689238)))))))

(declare-fun get!5998 (Option!4029) Rule!6806)

(assert (=> b!1776629 (= lt!689239 (get!5998 lt!689244))))

(declare-fun b!1776630 () Bool)

(declare-fun Unit!33811 () Unit!33808)

(assert (=> b!1776630 (= e!1136937 Unit!33811)))

(declare-fun res!800482 () Bool)

(assert (=> start!176494 (=> (not res!800482) (not e!1136964))))

(get-info :version)

(assert (=> start!176494 (= res!800482 ((_ is Lexer!3130) thiss!24550))))

(assert (=> start!176494 e!1136964))

(declare-fun e!1136945 () Bool)

(assert (=> start!176494 e!1136945))

(declare-fun e!1136946 () Bool)

(assert (=> start!176494 e!1136946))

(assert (=> start!176494 true))

(declare-fun e!1136949 () Bool)

(declare-fun inv!25453 (Token!6572) Bool)

(assert (=> start!176494 (and (inv!25453 token!523) e!1136949)))

(declare-fun e!1136963 () Bool)

(assert (=> start!176494 e!1136963))

(declare-fun b!1776631 () Bool)

(declare-fun tp!503373 () Bool)

(assert (=> b!1776631 (= e!1136963 (and e!1136962 tp!503373))))

(declare-fun b!1776632 () Bool)

(declare-fun tp!503369 () Bool)

(declare-fun inv!21 (TokenValue!3593) Bool)

(assert (=> b!1776632 (= e!1136949 (and (inv!21 (value!109508 token!523)) e!1136955 tp!503369))))

(assert (=> b!1776633 (= e!1136938 (and tp!503372 tp!503368))))

(declare-fun e!1136940 () Bool)

(assert (=> b!1776634 (= e!1136940 (and tp!503376 tp!503375))))

(declare-fun b!1776635 () Bool)

(declare-fun res!800468 () Bool)

(assert (=> b!1776635 (=> res!800468 e!1136948)))

(assert (=> b!1776635 (= res!800468 (isEmpty!12362 suffix!1421))))

(declare-fun b!1776636 () Bool)

(assert (=> b!1776636 (= e!1136941 e!1136961)))

(declare-fun res!800473 () Bool)

(assert (=> b!1776636 (=> res!800473 e!1136961)))

(declare-fun lt!689243 () Int)

(declare-fun lt!689228 () Bool)

(assert (=> b!1776636 (= res!800473 (or lt!689228 (>= lt!689247 lt!689243)))))

(declare-fun lt!689234 () Unit!33808)

(assert (=> b!1776636 (= lt!689234 e!1136937)))

(declare-fun c!289165 () Bool)

(assert (=> b!1776636 (= c!289165 lt!689228)))

(assert (=> b!1776636 (= lt!689228 (> lt!689247 lt!689243))))

(assert (=> b!1776636 (= lt!689243 (size!15547 lt!689230))))

(assert (=> b!1776636 (matchR!2304 lt!689229 lt!689246)))

(declare-fun lt!689242 () Unit!33808)

(assert (=> b!1776636 (= lt!689242 (lemmaMaxPrefixThenMatchesRulesRegex!210 thiss!24550 rules!3447 lt!689246 token!523 rule!422 Nil!19568))))

(declare-fun b!1776637 () Bool)

(declare-fun tp_is_empty!7905 () Bool)

(declare-fun tp!503370 () Bool)

(assert (=> b!1776637 (= e!1136945 (and tp_is_empty!7905 tp!503370))))

(declare-fun b!1776638 () Bool)

(declare-fun res!800488 () Bool)

(assert (=> b!1776638 (=> (not res!800488) (not e!1136939))))

(assert (=> b!1776638 (= res!800488 (= (rule!5563 token!523) rule!422))))

(declare-fun b!1776639 () Bool)

(declare-fun res!800466 () Bool)

(assert (=> b!1776639 (=> (not res!800466) (not e!1136964))))

(declare-fun isEmpty!12363 (List!19639) Bool)

(assert (=> b!1776639 (= res!800466 (not (isEmpty!12363 rules!3447)))))

(declare-fun b!1776640 () Bool)

(assert (=> b!1776640 (= e!1136943 (= lt!689231 lt!689233))))

(declare-fun b!1776641 () Bool)

(assert (=> b!1776641 (= e!1136957 (= (rule!5563 (_1!10985 lt!689238)) lt!689239))))

(declare-fun b!1776642 () Bool)

(declare-fun tp!503365 () Bool)

(assert (=> b!1776642 (= e!1136946 (and tp!503365 (inv!25447 (tag!3891 rule!422)) (inv!25452 (transformation!3503 rule!422)) e!1136940))))

(declare-fun b!1776643 () Bool)

(declare-fun res!800477 () Bool)

(assert (=> b!1776643 (=> res!800477 e!1136961)))

(assert (=> b!1776643 (= res!800477 (not (contains!3535 rules!3447 (rule!5563 (_1!10985 lt!689238)))))))

(assert (= (and start!176494 res!800482) b!1776639))

(assert (= (and b!1776639 res!800466) b!1776627))

(assert (= (and b!1776627 res!800469) b!1776615))

(assert (= (and b!1776615 res!800474) b!1776628))

(assert (= (and b!1776628 res!800476) b!1776611))

(assert (= (and b!1776611 res!800467) b!1776619))

(assert (= (and b!1776619 res!800487) b!1776638))

(assert (= (and b!1776638 res!800488) b!1776613))

(assert (= (and b!1776613 (not res!800471)) b!1776635))

(assert (= (and b!1776635 (not res!800468)) b!1776626))

(assert (= (and b!1776626 (not res!800486)) b!1776617))

(assert (= (and b!1776617 res!800470) b!1776629))

(assert (= (and b!1776629 res!800478) b!1776641))

(assert (= (and b!1776617 (not res!800484)) b!1776618))

(assert (= (and b!1776618 (not res!800483)) b!1776621))

(assert (= (and b!1776621 (not res!800481)) b!1776620))

(assert (= (and b!1776620 (not res!800485)) b!1776622))

(assert (= (and b!1776622 (not res!800472)) b!1776610))

(assert (= (and b!1776610 (not res!800479)) b!1776625))

(assert (= (and b!1776625 (not res!800475)) b!1776636))

(assert (= (and b!1776636 c!289165) b!1776616))

(assert (= (and b!1776636 (not c!289165)) b!1776630))

(assert (= (and b!1776636 (not res!800473)) b!1776643))

(assert (= (and b!1776643 (not res!800477)) b!1776609))

(assert (= (and b!1776609 (not res!800480)) b!1776612))

(assert (= (and b!1776612 (not res!800465)) b!1776640))

(assert (= (and start!176494 ((_ is Cons!19568) suffix!1421)) b!1776637))

(assert (= b!1776642 b!1776634))

(assert (= start!176494 b!1776642))

(assert (= b!1776614 b!1776623))

(assert (= b!1776632 b!1776614))

(assert (= start!176494 b!1776632))

(assert (= b!1776624 b!1776633))

(assert (= b!1776631 b!1776624))

(assert (= (and start!176494 ((_ is Cons!19569) rules!3447)) b!1776631))

(declare-fun b_lambda!58023 () Bool)

(assert (=> (not b_lambda!58023) (not b!1776620)))

(declare-fun tb!107791 () Bool)

(declare-fun t!166019 () Bool)

(assert (=> (and b!1776633 (= (toChars!4889 (transformation!3503 (h!24970 rules!3447))) (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) t!166019) tb!107791))

(declare-fun b!1776659 () Bool)

(declare-fun e!1136976 () Bool)

(declare-fun tp!503379 () Bool)

(declare-fun inv!25454 (Conc!6509) Bool)

(assert (=> b!1776659 (= e!1136976 (and (inv!25454 (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221)))) tp!503379))))

(declare-fun result!129666 () Bool)

(declare-fun inv!25455 (BalanceConc!12962) Bool)

(assert (=> tb!107791 (= result!129666 (and (inv!25455 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221))) e!1136976))))

(assert (= tb!107791 b!1776659))

(declare-fun m!2197355 () Bool)

(assert (=> b!1776659 m!2197355))

(declare-fun m!2197357 () Bool)

(assert (=> tb!107791 m!2197357))

(assert (=> b!1776620 t!166019))

(declare-fun b_and!135731 () Bool)

(assert (= b_and!135721 (and (=> t!166019 result!129666) b_and!135731)))

(declare-fun tb!107793 () Bool)

(declare-fun t!166021 () Bool)

(assert (=> (and b!1776634 (= (toChars!4889 (transformation!3503 rule!422)) (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) t!166021) tb!107793))

(declare-fun result!129670 () Bool)

(assert (= result!129670 result!129666))

(assert (=> b!1776620 t!166021))

(declare-fun b_and!135733 () Bool)

(assert (= b_and!135725 (and (=> t!166021 result!129670) b_and!135733)))

(declare-fun t!166023 () Bool)

(declare-fun tb!107795 () Bool)

(assert (=> (and b!1776623 (= (toChars!4889 (transformation!3503 (rule!5563 token!523))) (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) t!166023) tb!107795))

(declare-fun result!129672 () Bool)

(assert (= result!129672 result!129666))

(assert (=> b!1776620 t!166023))

(declare-fun b_and!135735 () Bool)

(assert (= b_and!135729 (and (=> t!166023 result!129672) b_and!135735)))

(declare-fun b_lambda!58025 () Bool)

(assert (=> (not b_lambda!58025) (not b!1776620)))

(declare-fun t!166025 () Bool)

(declare-fun tb!107797 () Bool)

(assert (=> (and b!1776633 (= (toValue!5030 (transformation!3503 (h!24970 rules!3447))) (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) t!166025) tb!107797))

(declare-fun result!129674 () Bool)

(assert (=> tb!107797 (= result!129674 (inv!21 (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221)))))

(declare-fun m!2197359 () Bool)

(assert (=> tb!107797 m!2197359))

(assert (=> b!1776620 t!166025))

(declare-fun b_and!135737 () Bool)

(assert (= b_and!135719 (and (=> t!166025 result!129674) b_and!135737)))

(declare-fun tb!107799 () Bool)

(declare-fun t!166027 () Bool)

(assert (=> (and b!1776634 (= (toValue!5030 (transformation!3503 rule!422)) (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) t!166027) tb!107799))

(declare-fun result!129678 () Bool)

(assert (= result!129678 result!129674))

(assert (=> b!1776620 t!166027))

(declare-fun b_and!135739 () Bool)

(assert (= b_and!135723 (and (=> t!166027 result!129678) b_and!135739)))

(declare-fun t!166029 () Bool)

(declare-fun tb!107801 () Bool)

(assert (=> (and b!1776623 (= (toValue!5030 (transformation!3503 (rule!5563 token!523))) (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) t!166029) tb!107801))

(declare-fun result!129680 () Bool)

(assert (= result!129680 result!129674))

(assert (=> b!1776620 t!166029))

(declare-fun b_and!135741 () Bool)

(assert (= b_and!135727 (and (=> t!166029 result!129680) b_and!135741)))

(declare-fun b_lambda!58027 () Bool)

(assert (=> (not b_lambda!58027) (not b!1776622)))

(declare-fun tb!107803 () Bool)

(declare-fun t!166031 () Bool)

(assert (=> (and b!1776633 (= (toChars!4889 (transformation!3503 (h!24970 rules!3447))) (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) t!166031) tb!107803))

(declare-fun b!1776662 () Bool)

(declare-fun e!1136980 () Bool)

(declare-fun tp!503380 () Bool)

(assert (=> b!1776662 (= e!1136980 (and (inv!25454 (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (value!109508 (_1!10985 lt!689238))))) tp!503380))))

(declare-fun result!129682 () Bool)

(assert (=> tb!107803 (= result!129682 (and (inv!25455 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (value!109508 (_1!10985 lt!689238)))) e!1136980))))

(assert (= tb!107803 b!1776662))

(declare-fun m!2197361 () Bool)

(assert (=> b!1776662 m!2197361))

(declare-fun m!2197363 () Bool)

(assert (=> tb!107803 m!2197363))

(assert (=> b!1776622 t!166031))

(declare-fun b_and!135743 () Bool)

(assert (= b_and!135731 (and (=> t!166031 result!129682) b_and!135743)))

(declare-fun tb!107805 () Bool)

(declare-fun t!166033 () Bool)

(assert (=> (and b!1776634 (= (toChars!4889 (transformation!3503 rule!422)) (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) t!166033) tb!107805))

(declare-fun result!129684 () Bool)

(assert (= result!129684 result!129682))

(assert (=> b!1776622 t!166033))

(declare-fun b_and!135745 () Bool)

(assert (= b_and!135733 (and (=> t!166033 result!129684) b_and!135745)))

(declare-fun tb!107807 () Bool)

(declare-fun t!166035 () Bool)

(assert (=> (and b!1776623 (= (toChars!4889 (transformation!3503 (rule!5563 token!523))) (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) t!166035) tb!107807))

(declare-fun result!129686 () Bool)

(assert (= result!129686 result!129682))

(assert (=> b!1776622 t!166035))

(declare-fun b_and!135747 () Bool)

(assert (= b_and!135735 (and (=> t!166035 result!129686) b_and!135747)))

(declare-fun m!2197365 () Bool)

(assert (=> b!1776624 m!2197365))

(declare-fun m!2197367 () Bool)

(assert (=> b!1776624 m!2197367))

(declare-fun m!2197369 () Bool)

(assert (=> b!1776616 m!2197369))

(declare-fun m!2197371 () Bool)

(assert (=> b!1776616 m!2197371))

(declare-fun m!2197373 () Bool)

(assert (=> b!1776616 m!2197373))

(declare-fun m!2197375 () Bool)

(assert (=> b!1776616 m!2197375))

(declare-fun m!2197377 () Bool)

(assert (=> b!1776616 m!2197377))

(declare-fun m!2197379 () Bool)

(assert (=> b!1776616 m!2197379))

(declare-fun m!2197381 () Bool)

(assert (=> b!1776616 m!2197381))

(declare-fun m!2197383 () Bool)

(assert (=> b!1776616 m!2197383))

(assert (=> b!1776616 m!2197377))

(declare-fun m!2197385 () Bool)

(assert (=> b!1776616 m!2197385))

(declare-fun m!2197387 () Bool)

(assert (=> b!1776616 m!2197387))

(declare-fun m!2197389 () Bool)

(assert (=> b!1776616 m!2197389))

(declare-fun m!2197391 () Bool)

(assert (=> b!1776611 m!2197391))

(declare-fun m!2197393 () Bool)

(assert (=> b!1776627 m!2197393))

(declare-fun m!2197395 () Bool)

(assert (=> b!1776629 m!2197395))

(assert (=> b!1776629 m!2197395))

(declare-fun m!2197397 () Bool)

(assert (=> b!1776629 m!2197397))

(assert (=> b!1776629 m!2197397))

(declare-fun m!2197399 () Bool)

(assert (=> b!1776629 m!2197399))

(declare-fun m!2197401 () Bool)

(assert (=> b!1776629 m!2197401))

(declare-fun m!2197403 () Bool)

(assert (=> b!1776610 m!2197403))

(declare-fun m!2197405 () Bool)

(assert (=> b!1776610 m!2197405))

(declare-fun m!2197407 () Bool)

(assert (=> b!1776610 m!2197407))

(assert (=> b!1776610 m!2197407))

(declare-fun m!2197409 () Bool)

(assert (=> b!1776610 m!2197409))

(declare-fun m!2197411 () Bool)

(assert (=> b!1776610 m!2197411))

(declare-fun m!2197413 () Bool)

(assert (=> b!1776620 m!2197413))

(assert (=> b!1776620 m!2197413))

(declare-fun m!2197415 () Bool)

(assert (=> b!1776620 m!2197415))

(assert (=> b!1776620 m!2197415))

(declare-fun m!2197417 () Bool)

(assert (=> b!1776620 m!2197417))

(declare-fun m!2197419 () Bool)

(assert (=> b!1776620 m!2197419))

(declare-fun m!2197421 () Bool)

(assert (=> b!1776625 m!2197421))

(declare-fun m!2197423 () Bool)

(assert (=> b!1776625 m!2197423))

(declare-fun m!2197425 () Bool)

(assert (=> b!1776625 m!2197425))

(declare-fun m!2197427 () Bool)

(assert (=> b!1776625 m!2197427))

(declare-fun m!2197429 () Bool)

(assert (=> b!1776625 m!2197429))

(declare-fun m!2197431 () Bool)

(assert (=> b!1776625 m!2197431))

(declare-fun m!2197433 () Bool)

(assert (=> b!1776625 m!2197433))

(declare-fun m!2197435 () Bool)

(assert (=> b!1776615 m!2197435))

(declare-fun m!2197437 () Bool)

(assert (=> b!1776628 m!2197437))

(declare-fun m!2197439 () Bool)

(assert (=> b!1776628 m!2197439))

(declare-fun m!2197441 () Bool)

(assert (=> b!1776628 m!2197441))

(declare-fun m!2197443 () Bool)

(assert (=> b!1776628 m!2197443))

(declare-fun m!2197445 () Bool)

(assert (=> start!176494 m!2197445))

(declare-fun m!2197447 () Bool)

(assert (=> b!1776618 m!2197447))

(declare-fun m!2197449 () Bool)

(assert (=> b!1776639 m!2197449))

(declare-fun m!2197451 () Bool)

(assert (=> b!1776617 m!2197451))

(declare-fun m!2197453 () Bool)

(assert (=> b!1776617 m!2197453))

(declare-fun m!2197455 () Bool)

(assert (=> b!1776617 m!2197455))

(assert (=> b!1776617 m!2197395))

(declare-fun m!2197457 () Bool)

(assert (=> b!1776617 m!2197457))

(declare-fun m!2197459 () Bool)

(assert (=> b!1776617 m!2197459))

(declare-fun m!2197461 () Bool)

(assert (=> b!1776617 m!2197461))

(declare-fun m!2197463 () Bool)

(assert (=> b!1776617 m!2197463))

(declare-fun m!2197465 () Bool)

(assert (=> b!1776617 m!2197465))

(declare-fun m!2197467 () Bool)

(assert (=> b!1776617 m!2197467))

(declare-fun m!2197469 () Bool)

(assert (=> b!1776617 m!2197469))

(declare-fun m!2197471 () Bool)

(assert (=> b!1776617 m!2197471))

(declare-fun m!2197473 () Bool)

(assert (=> b!1776617 m!2197473))

(assert (=> b!1776617 m!2197469))

(declare-fun m!2197475 () Bool)

(assert (=> b!1776617 m!2197475))

(declare-fun m!2197477 () Bool)

(assert (=> b!1776617 m!2197477))

(declare-fun m!2197479 () Bool)

(assert (=> b!1776642 m!2197479))

(declare-fun m!2197481 () Bool)

(assert (=> b!1776642 m!2197481))

(declare-fun m!2197483 () Bool)

(assert (=> b!1776619 m!2197483))

(declare-fun m!2197485 () Bool)

(assert (=> b!1776622 m!2197485))

(declare-fun m!2197487 () Bool)

(assert (=> b!1776632 m!2197487))

(declare-fun m!2197489 () Bool)

(assert (=> b!1776612 m!2197489))

(declare-fun m!2197491 () Bool)

(assert (=> b!1776636 m!2197491))

(declare-fun m!2197493 () Bool)

(assert (=> b!1776636 m!2197493))

(declare-fun m!2197495 () Bool)

(assert (=> b!1776636 m!2197495))

(declare-fun m!2197497 () Bool)

(assert (=> b!1776609 m!2197497))

(declare-fun m!2197499 () Bool)

(assert (=> b!1776609 m!2197499))

(declare-fun m!2197501 () Bool)

(assert (=> b!1776609 m!2197501))

(declare-fun m!2197503 () Bool)

(assert (=> b!1776609 m!2197503))

(declare-fun m!2197505 () Bool)

(assert (=> b!1776609 m!2197505))

(declare-fun m!2197507 () Bool)

(assert (=> b!1776613 m!2197507))

(declare-fun m!2197509 () Bool)

(assert (=> b!1776613 m!2197509))

(declare-fun m!2197511 () Bool)

(assert (=> b!1776613 m!2197511))

(declare-fun m!2197513 () Bool)

(assert (=> b!1776621 m!2197513))

(declare-fun m!2197515 () Bool)

(assert (=> b!1776621 m!2197515))

(declare-fun m!2197517 () Bool)

(assert (=> b!1776626 m!2197517))

(declare-fun m!2197519 () Bool)

(assert (=> b!1776626 m!2197519))

(declare-fun m!2197521 () Bool)

(assert (=> b!1776626 m!2197521))

(declare-fun m!2197523 () Bool)

(assert (=> b!1776626 m!2197523))

(declare-fun m!2197525 () Bool)

(assert (=> b!1776643 m!2197525))

(declare-fun m!2197527 () Bool)

(assert (=> b!1776635 m!2197527))

(declare-fun m!2197529 () Bool)

(assert (=> b!1776614 m!2197529))

(declare-fun m!2197531 () Bool)

(assert (=> b!1776614 m!2197531))

(check-sat (not b!1776639) (not tb!107791) (not b!1776629) (not b!1776632) (not b!1776625) b_and!135741 (not b!1776621) (not b_next!49965) (not b!1776626) (not b_next!49969) (not b!1776631) (not b!1776627) (not b!1776643) (not b_next!49959) (not b!1776620) (not b!1776662) tp_is_empty!7905 (not b!1776628) (not b_lambda!58025) (not b_lambda!58023) (not tb!107797) b_and!135747 (not b!1776612) (not b!1776617) b_and!135737 (not b!1776615) b_and!135743 (not b!1776616) (not start!176494) (not b!1776637) (not b_next!49961) (not b!1776618) (not tb!107803) (not b!1776636) (not b!1776619) b_and!135739 (not b_next!49963) (not b!1776642) b_and!135745 (not b!1776659) (not b!1776611) (not b!1776614) (not b_next!49967) (not b!1776613) (not b_lambda!58027) (not b!1776610) (not b!1776609) (not b!1776624) (not b!1776635))
(check-sat (not b_next!49959) b_and!135747 (not b_next!49961) b_and!135739 b_and!135741 (not b_next!49963) b_and!135745 (not b_next!49967) (not b_next!49965) (not b_next!49969) b_and!135737 b_and!135743)
(get-model)

(declare-fun d!542674 () Bool)

(declare-fun choose!11098 (Int) Bool)

(assert (=> d!542674 (= (Forall!870 lambda!70564) (choose!11098 lambda!70564))))

(declare-fun bs!404952 () Bool)

(assert (= bs!404952 d!542674))

(declare-fun m!2197537 () Bool)

(assert (=> bs!404952 m!2197537))

(assert (=> b!1776621 d!542674))

(declare-fun d!542676 () Bool)

(declare-fun e!1136996 () Bool)

(assert (=> d!542676 e!1136996))

(declare-fun res!800512 () Bool)

(assert (=> d!542676 (=> (not res!800512) (not e!1136996))))

(declare-fun semiInverseModEq!1397 (Int Int) Bool)

(assert (=> d!542676 (= res!800512 (semiInverseModEq!1397 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))))))

(declare-fun Unit!33812 () Unit!33808)

(assert (=> d!542676 (= (lemmaInv!702 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) Unit!33812)))

(declare-fun b!1776692 () Bool)

(declare-fun equivClasses!1338 (Int Int) Bool)

(assert (=> b!1776692 (= e!1136996 (equivClasses!1338 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))))))

(assert (= (and d!542676 res!800512) b!1776692))

(declare-fun m!2197583 () Bool)

(assert (=> d!542676 m!2197583))

(declare-fun m!2197585 () Bool)

(assert (=> b!1776692 m!2197585))

(assert (=> b!1776621 d!542676))

(declare-fun d!542680 () Bool)

(declare-fun c!289173 () Bool)

(assert (=> d!542680 (= c!289173 ((_ is Node!6509) (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (value!109508 (_1!10985 lt!689238))))))))

(declare-fun e!1137001 () Bool)

(assert (=> d!542680 (= (inv!25454 (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (value!109508 (_1!10985 lt!689238))))) e!1137001)))

(declare-fun b!1776699 () Bool)

(declare-fun inv!25456 (Conc!6509) Bool)

(assert (=> b!1776699 (= e!1137001 (inv!25456 (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (value!109508 (_1!10985 lt!689238))))))))

(declare-fun b!1776700 () Bool)

(declare-fun e!1137002 () Bool)

(assert (=> b!1776700 (= e!1137001 e!1137002)))

(declare-fun res!800515 () Bool)

(assert (=> b!1776700 (= res!800515 (not ((_ is Leaf!9481) (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (value!109508 (_1!10985 lt!689238)))))))))

(assert (=> b!1776700 (=> res!800515 e!1137002)))

(declare-fun b!1776701 () Bool)

(declare-fun inv!25457 (Conc!6509) Bool)

(assert (=> b!1776701 (= e!1137002 (inv!25457 (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (value!109508 (_1!10985 lt!689238))))))))

(assert (= (and d!542680 c!289173) b!1776699))

(assert (= (and d!542680 (not c!289173)) b!1776700))

(assert (= (and b!1776700 (not res!800515)) b!1776701))

(declare-fun m!2197587 () Bool)

(assert (=> b!1776699 m!2197587))

(declare-fun m!2197589 () Bool)

(assert (=> b!1776701 m!2197589))

(assert (=> b!1776662 d!542680))

(declare-fun d!542682 () Bool)

(assert (=> d!542682 (= (inv!25447 (tag!3891 rule!422)) (= (mod (str.len (value!109507 (tag!3891 rule!422))) 2) 0))))

(assert (=> b!1776642 d!542682))

(declare-fun d!542684 () Bool)

(declare-fun res!800518 () Bool)

(declare-fun e!1137005 () Bool)

(assert (=> d!542684 (=> (not res!800518) (not e!1137005))))

(assert (=> d!542684 (= res!800518 (semiInverseModEq!1397 (toChars!4889 (transformation!3503 rule!422)) (toValue!5030 (transformation!3503 rule!422))))))

(assert (=> d!542684 (= (inv!25452 (transformation!3503 rule!422)) e!1137005)))

(declare-fun b!1776704 () Bool)

(assert (=> b!1776704 (= e!1137005 (equivClasses!1338 (toChars!4889 (transformation!3503 rule!422)) (toValue!5030 (transformation!3503 rule!422))))))

(assert (= (and d!542684 res!800518) b!1776704))

(declare-fun m!2197595 () Bool)

(assert (=> d!542684 m!2197595))

(declare-fun m!2197597 () Bool)

(assert (=> b!1776704 m!2197597))

(assert (=> b!1776642 d!542684))

(declare-fun d!542688 () Bool)

(declare-fun lt!689285 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2841 (List!19639) (InoxSet Rule!6806))

(assert (=> d!542688 (= lt!689285 (select (content!2841 rules!3447) (rule!5563 (_1!10985 lt!689238))))))

(declare-fun e!1137016 () Bool)

(assert (=> d!542688 (= lt!689285 e!1137016)))

(declare-fun res!800524 () Bool)

(assert (=> d!542688 (=> (not res!800524) (not e!1137016))))

(assert (=> d!542688 (= res!800524 ((_ is Cons!19569) rules!3447))))

(assert (=> d!542688 (= (contains!3535 rules!3447 (rule!5563 (_1!10985 lt!689238))) lt!689285)))

(declare-fun b!1776719 () Bool)

(declare-fun e!1137015 () Bool)

(assert (=> b!1776719 (= e!1137016 e!1137015)))

(declare-fun res!800523 () Bool)

(assert (=> b!1776719 (=> res!800523 e!1137015)))

(assert (=> b!1776719 (= res!800523 (= (h!24970 rules!3447) (rule!5563 (_1!10985 lt!689238))))))

(declare-fun b!1776720 () Bool)

(assert (=> b!1776720 (= e!1137015 (contains!3535 (t!166038 rules!3447) (rule!5563 (_1!10985 lt!689238))))))

(assert (= (and d!542688 res!800524) b!1776719))

(assert (= (and b!1776719 (not res!800523)) b!1776720))

(declare-fun m!2197607 () Bool)

(assert (=> d!542688 m!2197607))

(declare-fun m!2197609 () Bool)

(assert (=> d!542688 m!2197609))

(declare-fun m!2197611 () Bool)

(assert (=> b!1776720 m!2197611))

(assert (=> b!1776643 d!542688))

(declare-fun b!1776743 () Bool)

(declare-fun res!800535 () Bool)

(declare-fun e!1137033 () Bool)

(assert (=> b!1776743 (=> res!800535 e!1137033)))

(assert (=> b!1776743 (= res!800535 (not ((_ is IntegerValue!10781) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221))))))

(declare-fun e!1137031 () Bool)

(assert (=> b!1776743 (= e!1137031 e!1137033)))

(declare-fun d!542694 () Bool)

(declare-fun c!289185 () Bool)

(assert (=> d!542694 (= c!289185 ((_ is IntegerValue!10779) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221)))))

(declare-fun e!1137032 () Bool)

(assert (=> d!542694 (= (inv!21 (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221)) e!1137032)))

(declare-fun b!1776744 () Bool)

(declare-fun inv!16 (TokenValue!3593) Bool)

(assert (=> b!1776744 (= e!1137032 (inv!16 (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221)))))

(declare-fun b!1776745 () Bool)

(assert (=> b!1776745 (= e!1137032 e!1137031)))

(declare-fun c!289186 () Bool)

(assert (=> b!1776745 (= c!289186 ((_ is IntegerValue!10780) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221)))))

(declare-fun b!1776746 () Bool)

(declare-fun inv!15 (TokenValue!3593) Bool)

(assert (=> b!1776746 (= e!1137033 (inv!15 (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221)))))

(declare-fun b!1776747 () Bool)

(declare-fun inv!17 (TokenValue!3593) Bool)

(assert (=> b!1776747 (= e!1137031 (inv!17 (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221)))))

(assert (= (and d!542694 c!289185) b!1776744))

(assert (= (and d!542694 (not c!289185)) b!1776745))

(assert (= (and b!1776745 c!289186) b!1776747))

(assert (= (and b!1776745 (not c!289186)) b!1776743))

(assert (= (and b!1776743 (not res!800535)) b!1776746))

(declare-fun m!2197621 () Bool)

(assert (=> b!1776744 m!2197621))

(declare-fun m!2197623 () Bool)

(assert (=> b!1776746 m!2197623))

(declare-fun m!2197625 () Bool)

(assert (=> b!1776747 m!2197625))

(assert (=> tb!107797 d!542694))

(declare-fun d!542702 () Bool)

(assert (=> d!542702 (= (inv!25447 (tag!3891 (h!24970 rules!3447))) (= (mod (str.len (value!109507 (tag!3891 (h!24970 rules!3447)))) 2) 0))))

(assert (=> b!1776624 d!542702))

(declare-fun d!542706 () Bool)

(declare-fun res!800540 () Bool)

(declare-fun e!1137037 () Bool)

(assert (=> d!542706 (=> (not res!800540) (not e!1137037))))

(assert (=> d!542706 (= res!800540 (semiInverseModEq!1397 (toChars!4889 (transformation!3503 (h!24970 rules!3447))) (toValue!5030 (transformation!3503 (h!24970 rules!3447)))))))

(assert (=> d!542706 (= (inv!25452 (transformation!3503 (h!24970 rules!3447))) e!1137037)))

(declare-fun b!1776752 () Bool)

(assert (=> b!1776752 (= e!1137037 (equivClasses!1338 (toChars!4889 (transformation!3503 (h!24970 rules!3447))) (toValue!5030 (transformation!3503 (h!24970 rules!3447)))))))

(assert (= (and d!542706 res!800540) b!1776752))

(declare-fun m!2197639 () Bool)

(assert (=> d!542706 m!2197639))

(declare-fun m!2197641 () Bool)

(assert (=> b!1776752 m!2197641))

(assert (=> b!1776624 d!542706))

(declare-fun d!542708 () Bool)

(declare-fun e!1137116 () Bool)

(assert (=> d!542708 e!1137116))

(declare-fun res!800627 () Bool)

(assert (=> d!542708 (=> res!800627 e!1137116)))

(declare-fun lt!689334 () Option!4028)

(declare-fun isEmpty!12365 (Option!4028) Bool)

(assert (=> d!542708 (= res!800627 (isEmpty!12365 lt!689334))))

(declare-fun e!1137117 () Option!4028)

(assert (=> d!542708 (= lt!689334 e!1137117)))

(declare-fun c!289214 () Bool)

(declare-datatypes ((tuple2!19170 0))(
  ( (tuple2!19171 (_1!10987 List!19638) (_2!10987 List!19638)) )
))
(declare-fun lt!689335 () tuple2!19170)

(assert (=> d!542708 (= c!289214 (isEmpty!12362 (_1!10987 lt!689335)))))

(declare-fun findLongestMatch!388 (Regex!4831 List!19638) tuple2!19170)

(assert (=> d!542708 (= lt!689335 (findLongestMatch!388 (regex!3503 (rule!5563 (_1!10985 lt!689238))) lt!689236))))

(assert (=> d!542708 (ruleValid!1001 thiss!24550 (rule!5563 (_1!10985 lt!689238)))))

(assert (=> d!542708 (= (maxPrefixOneRule!1055 thiss!24550 (rule!5563 (_1!10985 lt!689238)) lt!689236) lt!689334)))

(declare-fun b!1776890 () Bool)

(assert (=> b!1776890 (= e!1137117 None!4027)))

(declare-fun b!1776891 () Bool)

(declare-fun res!800628 () Bool)

(declare-fun e!1137118 () Bool)

(assert (=> b!1776891 (=> (not res!800628) (not e!1137118))))

(assert (=> b!1776891 (= res!800628 (= (value!109508 (_1!10985 (get!5997 lt!689334))) (apply!5303 (transformation!3503 (rule!5563 (_1!10985 (get!5997 lt!689334)))) (seqFromList!2472 (originalCharacters!4317 (_1!10985 (get!5997 lt!689334)))))))))

(declare-fun b!1776892 () Bool)

(declare-fun e!1137119 () Bool)

(declare-fun findLongestMatchInner!461 (Regex!4831 List!19638 Int List!19638 List!19638 Int) tuple2!19170)

(assert (=> b!1776892 (= e!1137119 (matchR!2304 (regex!3503 (rule!5563 (_1!10985 lt!689238))) (_1!10987 (findLongestMatchInner!461 (regex!3503 (rule!5563 (_1!10985 lt!689238))) Nil!19568 (size!15548 Nil!19568) lt!689236 lt!689236 (size!15548 lt!689236)))))))

(declare-fun b!1776893 () Bool)

(declare-fun res!800626 () Bool)

(assert (=> b!1776893 (=> (not res!800626) (not e!1137118))))

(assert (=> b!1776893 (= res!800626 (= (rule!5563 (_1!10985 (get!5997 lt!689334))) (rule!5563 (_1!10985 lt!689238))))))

(declare-fun b!1776894 () Bool)

(assert (=> b!1776894 (= e!1137118 (= (size!15546 (_1!10985 (get!5997 lt!689334))) (size!15548 (originalCharacters!4317 (_1!10985 (get!5997 lt!689334))))))))

(declare-fun b!1776895 () Bool)

(assert (=> b!1776895 (= e!1137116 e!1137118)))

(declare-fun res!800630 () Bool)

(assert (=> b!1776895 (=> (not res!800630) (not e!1137118))))

(assert (=> b!1776895 (= res!800630 (matchR!2304 (regex!3503 (rule!5563 (_1!10985 lt!689238))) (list!7953 (charsOf!2152 (_1!10985 (get!5997 lt!689334))))))))

(declare-fun b!1776896 () Bool)

(assert (=> b!1776896 (= e!1137117 (Some!4027 (tuple2!19167 (Token!6573 (apply!5303 (transformation!3503 (rule!5563 (_1!10985 lt!689238))) (seqFromList!2472 (_1!10987 lt!689335))) (rule!5563 (_1!10985 lt!689238)) (size!15547 (seqFromList!2472 (_1!10987 lt!689335))) (_1!10987 lt!689335)) (_2!10987 lt!689335))))))

(declare-fun lt!689332 () Unit!33808)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!445 (Regex!4831 List!19638) Unit!33808)

(assert (=> b!1776896 (= lt!689332 (longestMatchIsAcceptedByMatchOrIsEmpty!445 (regex!3503 (rule!5563 (_1!10985 lt!689238))) lt!689236))))

(declare-fun res!800624 () Bool)

(assert (=> b!1776896 (= res!800624 (isEmpty!12362 (_1!10987 (findLongestMatchInner!461 (regex!3503 (rule!5563 (_1!10985 lt!689238))) Nil!19568 (size!15548 Nil!19568) lt!689236 lt!689236 (size!15548 lt!689236)))))))

(assert (=> b!1776896 (=> res!800624 e!1137119)))

(assert (=> b!1776896 e!1137119))

(declare-fun lt!689333 () Unit!33808)

(assert (=> b!1776896 (= lt!689333 lt!689332)))

(declare-fun lt!689336 () Unit!33808)

(assert (=> b!1776896 (= lt!689336 (lemmaSemiInverse!641 (transformation!3503 (rule!5563 (_1!10985 lt!689238))) (seqFromList!2472 (_1!10987 lt!689335))))))

(declare-fun b!1776897 () Bool)

(declare-fun res!800625 () Bool)

(assert (=> b!1776897 (=> (not res!800625) (not e!1137118))))

(assert (=> b!1776897 (= res!800625 (= (++!5327 (list!7953 (charsOf!2152 (_1!10985 (get!5997 lt!689334)))) (_2!10985 (get!5997 lt!689334))) lt!689236))))

(declare-fun b!1776898 () Bool)

(declare-fun res!800629 () Bool)

(assert (=> b!1776898 (=> (not res!800629) (not e!1137118))))

(assert (=> b!1776898 (= res!800629 (< (size!15548 (_2!10985 (get!5997 lt!689334))) (size!15548 lt!689236)))))

(assert (= (and d!542708 c!289214) b!1776890))

(assert (= (and d!542708 (not c!289214)) b!1776896))

(assert (= (and b!1776896 (not res!800624)) b!1776892))

(assert (= (and d!542708 (not res!800627)) b!1776895))

(assert (= (and b!1776895 res!800630) b!1776897))

(assert (= (and b!1776897 res!800625) b!1776898))

(assert (= (and b!1776898 res!800629) b!1776893))

(assert (= (and b!1776893 res!800626) b!1776891))

(assert (= (and b!1776891 res!800628) b!1776894))

(declare-fun m!2197759 () Bool)

(assert (=> b!1776897 m!2197759))

(declare-fun m!2197761 () Bool)

(assert (=> b!1776897 m!2197761))

(assert (=> b!1776897 m!2197761))

(declare-fun m!2197763 () Bool)

(assert (=> b!1776897 m!2197763))

(assert (=> b!1776897 m!2197763))

(declare-fun m!2197767 () Bool)

(assert (=> b!1776897 m!2197767))

(assert (=> b!1776895 m!2197759))

(assert (=> b!1776895 m!2197761))

(assert (=> b!1776895 m!2197761))

(assert (=> b!1776895 m!2197763))

(assert (=> b!1776895 m!2197763))

(declare-fun m!2197769 () Bool)

(assert (=> b!1776895 m!2197769))

(assert (=> b!1776891 m!2197759))

(declare-fun m!2197771 () Bool)

(assert (=> b!1776891 m!2197771))

(assert (=> b!1776891 m!2197771))

(declare-fun m!2197773 () Bool)

(assert (=> b!1776891 m!2197773))

(assert (=> b!1776898 m!2197759))

(declare-fun m!2197775 () Bool)

(assert (=> b!1776898 m!2197775))

(declare-fun m!2197777 () Bool)

(assert (=> b!1776898 m!2197777))

(declare-fun m!2197779 () Bool)

(assert (=> b!1776896 m!2197779))

(declare-fun m!2197781 () Bool)

(assert (=> b!1776896 m!2197781))

(declare-fun m!2197783 () Bool)

(assert (=> b!1776896 m!2197783))

(assert (=> b!1776896 m!2197781))

(declare-fun m!2197785 () Bool)

(assert (=> b!1776896 m!2197785))

(declare-fun m!2197787 () Bool)

(assert (=> b!1776896 m!2197787))

(assert (=> b!1776896 m!2197777))

(assert (=> b!1776896 m!2197779))

(assert (=> b!1776896 m!2197777))

(declare-fun m!2197789 () Bool)

(assert (=> b!1776896 m!2197789))

(assert (=> b!1776896 m!2197781))

(declare-fun m!2197791 () Bool)

(assert (=> b!1776896 m!2197791))

(assert (=> b!1776896 m!2197781))

(declare-fun m!2197793 () Bool)

(assert (=> b!1776896 m!2197793))

(assert (=> b!1776893 m!2197759))

(declare-fun m!2197795 () Bool)

(assert (=> d!542708 m!2197795))

(declare-fun m!2197797 () Bool)

(assert (=> d!542708 m!2197797))

(declare-fun m!2197799 () Bool)

(assert (=> d!542708 m!2197799))

(assert (=> d!542708 m!2197503))

(assert (=> b!1776894 m!2197759))

(declare-fun m!2197801 () Bool)

(assert (=> b!1776894 m!2197801))

(assert (=> b!1776892 m!2197779))

(assert (=> b!1776892 m!2197777))

(assert (=> b!1776892 m!2197779))

(assert (=> b!1776892 m!2197777))

(assert (=> b!1776892 m!2197789))

(declare-fun m!2197803 () Bool)

(assert (=> b!1776892 m!2197803))

(assert (=> b!1776625 d!542708))

(declare-fun d!542762 () Bool)

(assert (=> d!542762 (= (apply!5303 (transformation!3503 (rule!5563 (_1!10985 lt!689238))) lt!689217) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689217))))

(declare-fun b_lambda!58033 () Bool)

(assert (=> (not b_lambda!58033) (not d!542762)))

(declare-fun t!166046 () Bool)

(declare-fun tb!107815 () Bool)

(assert (=> (and b!1776633 (= (toValue!5030 (transformation!3503 (h!24970 rules!3447))) (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) t!166046) tb!107815))

(declare-fun result!129694 () Bool)

(assert (=> tb!107815 (= result!129694 (inv!21 (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689217)))))

(declare-fun m!2197805 () Bool)

(assert (=> tb!107815 m!2197805))

(assert (=> d!542762 t!166046))

(declare-fun b_and!135761 () Bool)

(assert (= b_and!135737 (and (=> t!166046 result!129694) b_and!135761)))

(declare-fun t!166048 () Bool)

(declare-fun tb!107817 () Bool)

(assert (=> (and b!1776634 (= (toValue!5030 (transformation!3503 rule!422)) (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) t!166048) tb!107817))

(declare-fun result!129696 () Bool)

(assert (= result!129696 result!129694))

(assert (=> d!542762 t!166048))

(declare-fun b_and!135763 () Bool)

(assert (= b_and!135739 (and (=> t!166048 result!129696) b_and!135763)))

(declare-fun tb!107819 () Bool)

(declare-fun t!166050 () Bool)

(assert (=> (and b!1776623 (= (toValue!5030 (transformation!3503 (rule!5563 token!523))) (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) t!166050) tb!107819))

(declare-fun result!129698 () Bool)

(assert (= result!129698 result!129694))

(assert (=> d!542762 t!166050))

(declare-fun b_and!135765 () Bool)

(assert (= b_and!135741 (and (=> t!166050 result!129698) b_and!135765)))

(declare-fun m!2197807 () Bool)

(assert (=> d!542762 m!2197807))

(assert (=> b!1776625 d!542762))

(declare-fun d!542764 () Bool)

(declare-fun lt!689342 () Int)

(assert (=> d!542764 (>= lt!689342 0)))

(declare-fun e!1137123 () Int)

(assert (=> d!542764 (= lt!689342 e!1137123)))

(declare-fun c!289217 () Bool)

(assert (=> d!542764 (= c!289217 ((_ is Nil!19568) lt!689254))))

(assert (=> d!542764 (= (size!15548 lt!689254) lt!689342)))

(declare-fun b!1776903 () Bool)

(assert (=> b!1776903 (= e!1137123 0)))

(declare-fun b!1776904 () Bool)

(assert (=> b!1776904 (= e!1137123 (+ 1 (size!15548 (t!166037 lt!689254))))))

(assert (= (and d!542764 c!289217) b!1776903))

(assert (= (and d!542764 (not c!289217)) b!1776904))

(declare-fun m!2197809 () Bool)

(assert (=> b!1776904 m!2197809))

(assert (=> b!1776625 d!542764))

(declare-fun d!542766 () Bool)

(assert (=> d!542766 (= (_2!10985 lt!689238) lt!689249)))

(declare-fun lt!689347 () Unit!33808)

(declare-fun choose!11102 (List!19638 List!19638 List!19638 List!19638 List!19638) Unit!33808)

(assert (=> d!542766 (= lt!689347 (choose!11102 lt!689254 (_2!10985 lt!689238) lt!689254 lt!689249 lt!689236))))

(assert (=> d!542766 (isPrefix!1743 lt!689254 lt!689236)))

(assert (=> d!542766 (= (lemmaSamePrefixThenSameSuffix!854 lt!689254 (_2!10985 lt!689238) lt!689254 lt!689249 lt!689236) lt!689347)))

(declare-fun bs!404964 () Bool)

(assert (= bs!404964 d!542766))

(declare-fun m!2197811 () Bool)

(assert (=> bs!404964 m!2197811))

(assert (=> bs!404964 m!2197471))

(assert (=> b!1776625 d!542766))

(declare-fun d!542768 () Bool)

(assert (=> d!542768 (= (maxPrefixOneRule!1055 thiss!24550 (rule!5563 (_1!10985 lt!689238)) lt!689236) (Some!4027 (tuple2!19167 (Token!6573 (apply!5303 (transformation!3503 (rule!5563 (_1!10985 lt!689238))) (seqFromList!2472 lt!689254)) (rule!5563 (_1!10985 lt!689238)) (size!15548 lt!689254) lt!689254) (_2!10985 lt!689238))))))

(declare-fun lt!689352 () Unit!33808)

(declare-fun choose!11103 (LexerInterface!3132 List!19639 List!19638 List!19638 List!19638 Rule!6806) Unit!33808)

(assert (=> d!542768 (= lt!689352 (choose!11103 thiss!24550 rules!3447 lt!689254 lt!689236 (_2!10985 lt!689238) (rule!5563 (_1!10985 lt!689238))))))

(assert (=> d!542768 (not (isEmpty!12363 rules!3447))))

(assert (=> d!542768 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!433 thiss!24550 rules!3447 lt!689254 lt!689236 (_2!10985 lt!689238) (rule!5563 (_1!10985 lt!689238))) lt!689352)))

(declare-fun bs!404965 () Bool)

(assert (= bs!404965 d!542768))

(assert (=> bs!404965 m!2197449))

(assert (=> bs!404965 m!2197423))

(assert (=> bs!404965 m!2197423))

(declare-fun m!2197831 () Bool)

(assert (=> bs!404965 m!2197831))

(assert (=> bs!404965 m!2197431))

(assert (=> bs!404965 m!2197427))

(declare-fun m!2197833 () Bool)

(assert (=> bs!404965 m!2197833))

(assert (=> b!1776625 d!542768))

(declare-fun d!542774 () Bool)

(declare-fun fromListB!1132 (List!19638) BalanceConc!12962)

(assert (=> d!542774 (= (seqFromList!2472 lt!689254) (fromListB!1132 lt!689254))))

(declare-fun bs!404966 () Bool)

(assert (= bs!404966 d!542774))

(declare-fun m!2197835 () Bool)

(assert (=> bs!404966 m!2197835))

(assert (=> b!1776625 d!542774))

(declare-fun d!542776 () Bool)

(declare-fun lt!689355 () List!19638)

(assert (=> d!542776 (= (++!5327 lt!689254 lt!689355) lt!689236)))

(declare-fun e!1137131 () List!19638)

(assert (=> d!542776 (= lt!689355 e!1137131)))

(declare-fun c!289221 () Bool)

(assert (=> d!542776 (= c!289221 ((_ is Cons!19568) lt!689254))))

(assert (=> d!542776 (>= (size!15548 lt!689236) (size!15548 lt!689254))))

(assert (=> d!542776 (= (getSuffix!910 lt!689236 lt!689254) lt!689355)))

(declare-fun b!1776919 () Bool)

(declare-fun tail!2659 (List!19638) List!19638)

(assert (=> b!1776919 (= e!1137131 (getSuffix!910 (tail!2659 lt!689236) (t!166037 lt!689254)))))

(declare-fun b!1776920 () Bool)

(assert (=> b!1776920 (= e!1137131 lt!689236)))

(assert (= (and d!542776 c!289221) b!1776919))

(assert (= (and d!542776 (not c!289221)) b!1776920))

(declare-fun m!2197837 () Bool)

(assert (=> d!542776 m!2197837))

(assert (=> d!542776 m!2197777))

(assert (=> d!542776 m!2197431))

(declare-fun m!2197839 () Bool)

(assert (=> b!1776919 m!2197839))

(assert (=> b!1776919 m!2197839))

(declare-fun m!2197841 () Bool)

(assert (=> b!1776919 m!2197841))

(assert (=> b!1776625 d!542776))

(declare-fun d!542778 () Bool)

(declare-fun lt!689356 () List!19638)

(assert (=> d!542778 (= (++!5327 lt!689246 lt!689356) lt!689236)))

(declare-fun e!1137132 () List!19638)

(assert (=> d!542778 (= lt!689356 e!1137132)))

(declare-fun c!289222 () Bool)

(assert (=> d!542778 (= c!289222 ((_ is Cons!19568) lt!689246))))

(assert (=> d!542778 (>= (size!15548 lt!689236) (size!15548 lt!689246))))

(assert (=> d!542778 (= (getSuffix!910 lt!689236 lt!689246) lt!689356)))

(declare-fun b!1776921 () Bool)

(assert (=> b!1776921 (= e!1137132 (getSuffix!910 (tail!2659 lt!689236) (t!166037 lt!689246)))))

(declare-fun b!1776922 () Bool)

(assert (=> b!1776922 (= e!1137132 lt!689236)))

(assert (= (and d!542778 c!289222) b!1776921))

(assert (= (and d!542778 (not c!289222)) b!1776922))

(declare-fun m!2197843 () Bool)

(assert (=> d!542778 m!2197843))

(assert (=> d!542778 m!2197777))

(assert (=> d!542778 m!2197489))

(assert (=> b!1776921 m!2197839))

(assert (=> b!1776921 m!2197839))

(declare-fun m!2197845 () Bool)

(assert (=> b!1776921 m!2197845))

(assert (=> b!1776616 d!542778))

(declare-fun d!542780 () Bool)

(assert (=> d!542780 (= (head!4142 lt!689212) (h!24969 lt!689212))))

(assert (=> b!1776616 d!542780))

(declare-fun d!542782 () Bool)

(assert (=> d!542782 (isPrefix!1743 lt!689241 lt!689254)))

(declare-fun lt!689359 () Unit!33808)

(declare-fun choose!11104 (List!19638 List!19638 List!19638) Unit!33808)

(assert (=> d!542782 (= lt!689359 (choose!11104 lt!689254 lt!689241 lt!689236))))

(assert (=> d!542782 (isPrefix!1743 lt!689254 lt!689236)))

(assert (=> d!542782 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!151 lt!689254 lt!689241 lt!689236) lt!689359)))

(declare-fun bs!404967 () Bool)

(assert (= bs!404967 d!542782))

(assert (=> bs!404967 m!2197379))

(declare-fun m!2197847 () Bool)

(assert (=> bs!404967 m!2197847))

(assert (=> bs!404967 m!2197471))

(assert (=> b!1776616 d!542782))

(declare-fun d!542784 () Bool)

(assert (=> d!542784 (= suffix!1421 lt!689212)))

(declare-fun lt!689360 () Unit!33808)

(assert (=> d!542784 (= lt!689360 (choose!11102 lt!689246 suffix!1421 lt!689246 lt!689212 lt!689236))))

(assert (=> d!542784 (isPrefix!1743 lt!689246 lt!689236)))

(assert (=> d!542784 (= (lemmaSamePrefixThenSameSuffix!854 lt!689246 suffix!1421 lt!689246 lt!689212 lt!689236) lt!689360)))

(declare-fun bs!404968 () Bool)

(assert (= bs!404968 d!542784))

(declare-fun m!2197849 () Bool)

(assert (=> bs!404968 m!2197849))

(assert (=> bs!404968 m!2197461))

(assert (=> b!1776616 d!542784))

(declare-fun d!542786 () Bool)

(assert (=> d!542786 (isPrefix!1743 (++!5327 lt!689246 (Cons!19568 (head!4142 (getSuffix!910 lt!689236 lt!689246)) Nil!19568)) lt!689236)))

(declare-fun lt!689363 () Unit!33808)

(declare-fun choose!11105 (List!19638 List!19638) Unit!33808)

(assert (=> d!542786 (= lt!689363 (choose!11105 lt!689246 lt!689236))))

(assert (=> d!542786 (isPrefix!1743 lt!689246 lt!689236)))

(assert (=> d!542786 (= (lemmaAddHeadSuffixToPrefixStillPrefix!279 lt!689246 lt!689236) lt!689363)))

(declare-fun bs!404969 () Bool)

(assert (= bs!404969 d!542786))

(declare-fun m!2197851 () Bool)

(assert (=> bs!404969 m!2197851))

(assert (=> bs!404969 m!2197851))

(declare-fun m!2197853 () Bool)

(assert (=> bs!404969 m!2197853))

(assert (=> bs!404969 m!2197461))

(assert (=> bs!404969 m!2197375))

(declare-fun m!2197855 () Bool)

(assert (=> bs!404969 m!2197855))

(assert (=> bs!404969 m!2197375))

(declare-fun m!2197857 () Bool)

(assert (=> bs!404969 m!2197857))

(assert (=> b!1776616 d!542786))

(declare-fun b!1776952 () Bool)

(declare-fun e!1137147 () Bool)

(assert (=> b!1776952 (= e!1137147 (>= (size!15548 lt!689254) (size!15548 lt!689241)))))

(declare-fun b!1776949 () Bool)

(declare-fun e!1137146 () Bool)

(declare-fun e!1137145 () Bool)

(assert (=> b!1776949 (= e!1137146 e!1137145)))

(declare-fun res!800664 () Bool)

(assert (=> b!1776949 (=> (not res!800664) (not e!1137145))))

(assert (=> b!1776949 (= res!800664 (not ((_ is Nil!19568) lt!689254)))))

(declare-fun b!1776950 () Bool)

(declare-fun res!800663 () Bool)

(assert (=> b!1776950 (=> (not res!800663) (not e!1137145))))

(assert (=> b!1776950 (= res!800663 (= (head!4142 lt!689241) (head!4142 lt!689254)))))

(declare-fun d!542788 () Bool)

(assert (=> d!542788 e!1137147))

(declare-fun res!800662 () Bool)

(assert (=> d!542788 (=> res!800662 e!1137147)))

(declare-fun lt!689376 () Bool)

(assert (=> d!542788 (= res!800662 (not lt!689376))))

(assert (=> d!542788 (= lt!689376 e!1137146)))

(declare-fun res!800661 () Bool)

(assert (=> d!542788 (=> res!800661 e!1137146)))

(assert (=> d!542788 (= res!800661 ((_ is Nil!19568) lt!689241))))

(assert (=> d!542788 (= (isPrefix!1743 lt!689241 lt!689254) lt!689376)))

(declare-fun b!1776951 () Bool)

(assert (=> b!1776951 (= e!1137145 (isPrefix!1743 (tail!2659 lt!689241) (tail!2659 lt!689254)))))

(assert (= (and d!542788 (not res!800661)) b!1776949))

(assert (= (and b!1776949 res!800664) b!1776950))

(assert (= (and b!1776950 res!800663) b!1776951))

(assert (= (and d!542788 (not res!800662)) b!1776952))

(assert (=> b!1776952 m!2197431))

(declare-fun m!2197859 () Bool)

(assert (=> b!1776952 m!2197859))

(declare-fun m!2197861 () Bool)

(assert (=> b!1776950 m!2197861))

(declare-fun m!2197863 () Bool)

(assert (=> b!1776950 m!2197863))

(declare-fun m!2197865 () Bool)

(assert (=> b!1776951 m!2197865))

(declare-fun m!2197867 () Bool)

(assert (=> b!1776951 m!2197867))

(assert (=> b!1776951 m!2197865))

(assert (=> b!1776951 m!2197867))

(declare-fun m!2197869 () Bool)

(assert (=> b!1776951 m!2197869))

(assert (=> b!1776616 d!542788))

(declare-fun b!1776994 () Bool)

(declare-fun res!800693 () Bool)

(declare-fun e!1137172 () Bool)

(assert (=> b!1776994 (=> res!800693 e!1137172)))

(assert (=> b!1776994 (= res!800693 (not ((_ is ElementMatch!4831) lt!689229)))))

(declare-fun e!1137171 () Bool)

(assert (=> b!1776994 (= e!1137171 e!1137172)))

(declare-fun b!1776995 () Bool)

(declare-fun e!1137174 () Bool)

(declare-fun derivativeStep!1252 (Regex!4831 C!9836) Regex!4831)

(assert (=> b!1776995 (= e!1137174 (matchR!2304 (derivativeStep!1252 lt!689229 (head!4142 lt!689254)) (tail!2659 lt!689254)))))

(declare-fun b!1776996 () Bool)

(declare-fun e!1137170 () Bool)

(assert (=> b!1776996 (= e!1137170 e!1137171)))

(declare-fun c!289234 () Bool)

(assert (=> b!1776996 (= c!289234 ((_ is EmptyLang!4831) lt!689229))))

(declare-fun bm!111213 () Bool)

(declare-fun call!111218 () Bool)

(assert (=> bm!111213 (= call!111218 (isEmpty!12362 lt!689254))))

(declare-fun b!1776997 () Bool)

(declare-fun lt!689385 () Bool)

(assert (=> b!1776997 (= e!1137170 (= lt!689385 call!111218))))

(declare-fun b!1776998 () Bool)

(declare-fun res!800692 () Bool)

(assert (=> b!1776998 (=> res!800692 e!1137172)))

(declare-fun e!1137169 () Bool)

(assert (=> b!1776998 (= res!800692 e!1137169)))

(declare-fun res!800698 () Bool)

(assert (=> b!1776998 (=> (not res!800698) (not e!1137169))))

(assert (=> b!1776998 (= res!800698 lt!689385)))

(declare-fun b!1776999 () Bool)

(assert (=> b!1776999 (= e!1137171 (not lt!689385))))

(declare-fun b!1777000 () Bool)

(declare-fun nullable!1483 (Regex!4831) Bool)

(assert (=> b!1777000 (= e!1137174 (nullable!1483 lt!689229))))

(declare-fun b!1777002 () Bool)

(declare-fun e!1137168 () Bool)

(declare-fun e!1137173 () Bool)

(assert (=> b!1777002 (= e!1137168 e!1137173)))

(declare-fun res!800697 () Bool)

(assert (=> b!1777002 (=> res!800697 e!1137173)))

(assert (=> b!1777002 (= res!800697 call!111218)))

(declare-fun b!1777003 () Bool)

(declare-fun res!800694 () Bool)

(assert (=> b!1777003 (=> (not res!800694) (not e!1137169))))

(assert (=> b!1777003 (= res!800694 (not call!111218))))

(declare-fun b!1777004 () Bool)

(assert (=> b!1777004 (= e!1137173 (not (= (head!4142 lt!689254) (c!289166 lt!689229))))))

(declare-fun b!1777005 () Bool)

(assert (=> b!1777005 (= e!1137172 e!1137168)))

(declare-fun res!800696 () Bool)

(assert (=> b!1777005 (=> (not res!800696) (not e!1137168))))

(assert (=> b!1777005 (= res!800696 (not lt!689385))))

(declare-fun b!1777006 () Bool)

(declare-fun res!800695 () Bool)

(assert (=> b!1777006 (=> res!800695 e!1137173)))

(assert (=> b!1777006 (= res!800695 (not (isEmpty!12362 (tail!2659 lt!689254))))))

(declare-fun b!1777007 () Bool)

(assert (=> b!1777007 (= e!1137169 (= (head!4142 lt!689254) (c!289166 lt!689229)))))

(declare-fun b!1777001 () Bool)

(declare-fun res!800699 () Bool)

(assert (=> b!1777001 (=> (not res!800699) (not e!1137169))))

(assert (=> b!1777001 (= res!800699 (isEmpty!12362 (tail!2659 lt!689254)))))

(declare-fun d!542790 () Bool)

(assert (=> d!542790 e!1137170))

(declare-fun c!289232 () Bool)

(assert (=> d!542790 (= c!289232 ((_ is EmptyExpr!4831) lt!689229))))

(assert (=> d!542790 (= lt!689385 e!1137174)))

(declare-fun c!289233 () Bool)

(assert (=> d!542790 (= c!289233 (isEmpty!12362 lt!689254))))

(declare-fun validRegex!1957 (Regex!4831) Bool)

(assert (=> d!542790 (validRegex!1957 lt!689229)))

(assert (=> d!542790 (= (matchR!2304 lt!689229 lt!689254) lt!689385)))

(assert (= (and d!542790 c!289233) b!1777000))

(assert (= (and d!542790 (not c!289233)) b!1776995))

(assert (= (and d!542790 c!289232) b!1776997))

(assert (= (and d!542790 (not c!289232)) b!1776996))

(assert (= (and b!1776996 c!289234) b!1776999))

(assert (= (and b!1776996 (not c!289234)) b!1776994))

(assert (= (and b!1776994 (not res!800693)) b!1776998))

(assert (= (and b!1776998 res!800698) b!1777003))

(assert (= (and b!1777003 res!800694) b!1777001))

(assert (= (and b!1777001 res!800699) b!1777007))

(assert (= (and b!1776998 (not res!800692)) b!1777005))

(assert (= (and b!1777005 res!800696) b!1777002))

(assert (= (and b!1777002 (not res!800697)) b!1777006))

(assert (= (and b!1777006 (not res!800695)) b!1777004))

(assert (= (or b!1776997 b!1777002 b!1777003) bm!111213))

(declare-fun m!2197901 () Bool)

(assert (=> bm!111213 m!2197901))

(assert (=> d!542790 m!2197901))

(declare-fun m!2197903 () Bool)

(assert (=> d!542790 m!2197903))

(assert (=> b!1776995 m!2197863))

(assert (=> b!1776995 m!2197863))

(declare-fun m!2197905 () Bool)

(assert (=> b!1776995 m!2197905))

(assert (=> b!1776995 m!2197867))

(assert (=> b!1776995 m!2197905))

(assert (=> b!1776995 m!2197867))

(declare-fun m!2197907 () Bool)

(assert (=> b!1776995 m!2197907))

(assert (=> b!1777007 m!2197863))

(assert (=> b!1777001 m!2197867))

(assert (=> b!1777001 m!2197867))

(declare-fun m!2197909 () Bool)

(assert (=> b!1777001 m!2197909))

(assert (=> b!1777006 m!2197867))

(assert (=> b!1777006 m!2197867))

(assert (=> b!1777006 m!2197909))

(assert (=> b!1777004 m!2197863))

(declare-fun m!2197911 () Bool)

(assert (=> b!1777000 m!2197911))

(assert (=> b!1776616 d!542790))

(declare-fun d!542796 () Bool)

(assert (=> d!542796 (not (matchR!2304 lt!689229 lt!689254))))

(declare-fun lt!689394 () Unit!33808)

(declare-fun choose!11108 (Regex!4831 List!19638 List!19638) Unit!33808)

(assert (=> d!542796 (= lt!689394 (choose!11108 lt!689229 lt!689241 lt!689254))))

(assert (=> d!542796 (validRegex!1957 lt!689229)))

(assert (=> d!542796 (= (lemmaNotPrefixMatchThenCannotMatchLonger!142 lt!689229 lt!689241 lt!689254) lt!689394)))

(declare-fun bs!404970 () Bool)

(assert (= bs!404970 d!542796))

(assert (=> bs!404970 m!2197389))

(declare-fun m!2197913 () Bool)

(assert (=> bs!404970 m!2197913))

(assert (=> bs!404970 m!2197903))

(assert (=> b!1776616 d!542796))

(declare-fun b!1777040 () Bool)

(declare-fun res!800715 () Bool)

(declare-fun e!1137195 () Bool)

(assert (=> b!1777040 (=> (not res!800715) (not e!1137195))))

(declare-fun lt!689401 () List!19638)

(assert (=> b!1777040 (= res!800715 (= (size!15548 lt!689401) (+ (size!15548 lt!689246) (size!15548 (Cons!19568 (head!4142 lt!689212) Nil!19568)))))))

(declare-fun d!542798 () Bool)

(assert (=> d!542798 e!1137195))

(declare-fun res!800714 () Bool)

(assert (=> d!542798 (=> (not res!800714) (not e!1137195))))

(declare-fun content!2843 (List!19638) (InoxSet C!9836))

(assert (=> d!542798 (= res!800714 (= (content!2843 lt!689401) ((_ map or) (content!2843 lt!689246) (content!2843 (Cons!19568 (head!4142 lt!689212) Nil!19568)))))))

(declare-fun e!1137194 () List!19638)

(assert (=> d!542798 (= lt!689401 e!1137194)))

(declare-fun c!289243 () Bool)

(assert (=> d!542798 (= c!289243 ((_ is Nil!19568) lt!689246))))

(assert (=> d!542798 (= (++!5327 lt!689246 (Cons!19568 (head!4142 lt!689212) Nil!19568)) lt!689401)))

(declare-fun b!1777039 () Bool)

(assert (=> b!1777039 (= e!1137194 (Cons!19568 (h!24969 lt!689246) (++!5327 (t!166037 lt!689246) (Cons!19568 (head!4142 lt!689212) Nil!19568))))))

(declare-fun b!1777038 () Bool)

(assert (=> b!1777038 (= e!1137194 (Cons!19568 (head!4142 lt!689212) Nil!19568))))

(declare-fun b!1777041 () Bool)

(assert (=> b!1777041 (= e!1137195 (or (not (= (Cons!19568 (head!4142 lt!689212) Nil!19568) Nil!19568)) (= lt!689401 lt!689246)))))

(assert (= (and d!542798 c!289243) b!1777038))

(assert (= (and d!542798 (not c!289243)) b!1777039))

(assert (= (and d!542798 res!800714) b!1777040))

(assert (= (and b!1777040 res!800715) b!1777041))

(declare-fun m!2197929 () Bool)

(assert (=> b!1777040 m!2197929))

(assert (=> b!1777040 m!2197489))

(declare-fun m!2197931 () Bool)

(assert (=> b!1777040 m!2197931))

(declare-fun m!2197933 () Bool)

(assert (=> d!542798 m!2197933))

(declare-fun m!2197935 () Bool)

(assert (=> d!542798 m!2197935))

(declare-fun m!2197937 () Bool)

(assert (=> d!542798 m!2197937))

(declare-fun m!2197939 () Bool)

(assert (=> b!1777039 m!2197939))

(assert (=> b!1776616 d!542798))

(declare-fun d!542804 () Bool)

(assert (=> d!542804 (matchR!2304 (rulesRegex!859 thiss!24550 rules!3447) (list!7953 (charsOf!2152 (_1!10985 lt!689238))))))

(declare-fun lt!689404 () Unit!33808)

(declare-fun choose!11109 (LexerInterface!3132 List!19639 List!19638 Token!6572 Rule!6806 List!19638) Unit!33808)

(assert (=> d!542804 (= lt!689404 (choose!11109 thiss!24550 rules!3447 lt!689236 (_1!10985 lt!689238) (rule!5563 (_1!10985 lt!689238)) (_2!10985 lt!689238)))))

(assert (=> d!542804 (not (isEmpty!12363 rules!3447))))

(assert (=> d!542804 (= (lemmaMaxPrefixThenMatchesRulesRegex!210 thiss!24550 rules!3447 lt!689236 (_1!10985 lt!689238) (rule!5563 (_1!10985 lt!689238)) (_2!10985 lt!689238)) lt!689404)))

(declare-fun bs!404971 () Bool)

(assert (= bs!404971 d!542804))

(assert (=> bs!404971 m!2197449))

(assert (=> bs!404971 m!2197523))

(assert (=> bs!404971 m!2197523))

(assert (=> bs!404971 m!2197397))

(declare-fun m!2197941 () Bool)

(assert (=> bs!404971 m!2197941))

(assert (=> bs!404971 m!2197395))

(declare-fun m!2197943 () Bool)

(assert (=> bs!404971 m!2197943))

(assert (=> bs!404971 m!2197395))

(assert (=> bs!404971 m!2197397))

(assert (=> b!1776616 d!542804))

(declare-fun e!1137198 () Bool)

(declare-fun b!1777045 () Bool)

(assert (=> b!1777045 (= e!1137198 (>= (size!15548 lt!689236) (size!15548 (++!5327 lt!689246 (Cons!19568 (head!4142 lt!689212) Nil!19568)))))))

(declare-fun b!1777042 () Bool)

(declare-fun e!1137197 () Bool)

(declare-fun e!1137196 () Bool)

(assert (=> b!1777042 (= e!1137197 e!1137196)))

(declare-fun res!800719 () Bool)

(assert (=> b!1777042 (=> (not res!800719) (not e!1137196))))

(assert (=> b!1777042 (= res!800719 (not ((_ is Nil!19568) lt!689236)))))

(declare-fun b!1777043 () Bool)

(declare-fun res!800718 () Bool)

(assert (=> b!1777043 (=> (not res!800718) (not e!1137196))))

(assert (=> b!1777043 (= res!800718 (= (head!4142 (++!5327 lt!689246 (Cons!19568 (head!4142 lt!689212) Nil!19568))) (head!4142 lt!689236)))))

(declare-fun d!542806 () Bool)

(assert (=> d!542806 e!1137198))

(declare-fun res!800717 () Bool)

(assert (=> d!542806 (=> res!800717 e!1137198)))

(declare-fun lt!689405 () Bool)

(assert (=> d!542806 (= res!800717 (not lt!689405))))

(assert (=> d!542806 (= lt!689405 e!1137197)))

(declare-fun res!800716 () Bool)

(assert (=> d!542806 (=> res!800716 e!1137197)))

(assert (=> d!542806 (= res!800716 ((_ is Nil!19568) (++!5327 lt!689246 (Cons!19568 (head!4142 lt!689212) Nil!19568))))))

(assert (=> d!542806 (= (isPrefix!1743 (++!5327 lt!689246 (Cons!19568 (head!4142 lt!689212) Nil!19568)) lt!689236) lt!689405)))

(declare-fun b!1777044 () Bool)

(assert (=> b!1777044 (= e!1137196 (isPrefix!1743 (tail!2659 (++!5327 lt!689246 (Cons!19568 (head!4142 lt!689212) Nil!19568))) (tail!2659 lt!689236)))))

(assert (= (and d!542806 (not res!800716)) b!1777042))

(assert (= (and b!1777042 res!800719) b!1777043))

(assert (= (and b!1777043 res!800718) b!1777044))

(assert (= (and d!542806 (not res!800717)) b!1777045))

(assert (=> b!1777045 m!2197777))

(assert (=> b!1777045 m!2197377))

(declare-fun m!2197945 () Bool)

(assert (=> b!1777045 m!2197945))

(assert (=> b!1777043 m!2197377))

(declare-fun m!2197947 () Bool)

(assert (=> b!1777043 m!2197947))

(declare-fun m!2197949 () Bool)

(assert (=> b!1777043 m!2197949))

(assert (=> b!1777044 m!2197377))

(declare-fun m!2197951 () Bool)

(assert (=> b!1777044 m!2197951))

(assert (=> b!1777044 m!2197839))

(assert (=> b!1777044 m!2197951))

(assert (=> b!1777044 m!2197839))

(declare-fun m!2197953 () Bool)

(assert (=> b!1777044 m!2197953))

(assert (=> b!1776616 d!542806))

(declare-fun d!542808 () Bool)

(declare-fun isBalanced!2036 (Conc!6509) Bool)

(assert (=> d!542808 (= (inv!25455 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (value!109508 (_1!10985 lt!689238)))) (isBalanced!2036 (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (value!109508 (_1!10985 lt!689238))))))))

(declare-fun bs!404972 () Bool)

(assert (= bs!404972 d!542808))

(declare-fun m!2197955 () Bool)

(assert (=> bs!404972 m!2197955))

(assert (=> tb!107803 d!542808))

(declare-fun d!542810 () Bool)

(declare-fun e!1137201 () Bool)

(assert (=> d!542810 e!1137201))

(declare-fun res!800724 () Bool)

(assert (=> d!542810 (=> (not res!800724) (not e!1137201))))

(assert (=> d!542810 (= res!800724 (isDefined!3371 (getRuleFromTag!551 thiss!24550 rules!3447 (tag!3891 (rule!5563 (_1!10985 lt!689238))))))))

(declare-fun lt!689408 () Unit!33808)

(declare-fun choose!11110 (LexerInterface!3132 List!19639 List!19638 Token!6572) Unit!33808)

(assert (=> d!542810 (= lt!689408 (choose!11110 thiss!24550 rules!3447 lt!689236 (_1!10985 lt!689238)))))

(assert (=> d!542810 (rulesInvariant!2801 thiss!24550 rules!3447)))

(assert (=> d!542810 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!551 thiss!24550 rules!3447 lt!689236 (_1!10985 lt!689238)) lt!689408)))

(declare-fun b!1777050 () Bool)

(declare-fun res!800725 () Bool)

(assert (=> b!1777050 (=> (not res!800725) (not e!1137201))))

(assert (=> b!1777050 (= res!800725 (matchR!2304 (regex!3503 (get!5998 (getRuleFromTag!551 thiss!24550 rules!3447 (tag!3891 (rule!5563 (_1!10985 lt!689238)))))) (list!7953 (charsOf!2152 (_1!10985 lt!689238)))))))

(declare-fun b!1777051 () Bool)

(assert (=> b!1777051 (= e!1137201 (= (rule!5563 (_1!10985 lt!689238)) (get!5998 (getRuleFromTag!551 thiss!24550 rules!3447 (tag!3891 (rule!5563 (_1!10985 lt!689238)))))))))

(assert (= (and d!542810 res!800724) b!1777050))

(assert (= (and b!1777050 res!800725) b!1777051))

(assert (=> d!542810 m!2197477))

(assert (=> d!542810 m!2197477))

(declare-fun m!2197957 () Bool)

(assert (=> d!542810 m!2197957))

(declare-fun m!2197959 () Bool)

(assert (=> d!542810 m!2197959))

(assert (=> d!542810 m!2197393))

(assert (=> b!1777050 m!2197477))

(assert (=> b!1777050 m!2197397))

(declare-fun m!2197961 () Bool)

(assert (=> b!1777050 m!2197961))

(assert (=> b!1777050 m!2197395))

(assert (=> b!1777050 m!2197395))

(assert (=> b!1777050 m!2197397))

(assert (=> b!1777050 m!2197477))

(declare-fun m!2197963 () Bool)

(assert (=> b!1777050 m!2197963))

(assert (=> b!1777051 m!2197477))

(assert (=> b!1777051 m!2197477))

(assert (=> b!1777051 m!2197963))

(assert (=> b!1776617 d!542810))

(declare-fun d!542812 () Bool)

(assert (=> d!542812 (isDefined!3372 (maxPrefix!1686 thiss!24550 rules!3447 (++!5327 lt!689246 suffix!1421)))))

(declare-fun lt!689515 () Unit!33808)

(declare-fun e!1137225 () Unit!33808)

(assert (=> d!542812 (= lt!689515 e!1137225)))

(declare-fun c!289254 () Bool)

(assert (=> d!542812 (= c!289254 (isEmpty!12365 (maxPrefix!1686 thiss!24550 rules!3447 (++!5327 lt!689246 suffix!1421))))))

(declare-fun lt!689510 () Unit!33808)

(declare-fun lt!689513 () Unit!33808)

(assert (=> d!542812 (= lt!689510 lt!689513)))

(declare-fun e!1137226 () Bool)

(assert (=> d!542812 e!1137226))

(declare-fun res!800744 () Bool)

(assert (=> d!542812 (=> (not res!800744) (not e!1137226))))

(declare-fun lt!689505 () Token!6572)

(assert (=> d!542812 (= res!800744 (isDefined!3371 (getRuleFromTag!551 thiss!24550 rules!3447 (tag!3891 (rule!5563 lt!689505)))))))

(assert (=> d!542812 (= lt!689513 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!551 thiss!24550 rules!3447 lt!689246 lt!689505))))

(declare-fun lt!689511 () Unit!33808)

(declare-fun lt!689501 () Unit!33808)

(assert (=> d!542812 (= lt!689511 lt!689501)))

(declare-fun lt!689507 () List!19638)

(assert (=> d!542812 (isPrefix!1743 lt!689507 (++!5327 lt!689246 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!332 (List!19638 List!19638 List!19638) Unit!33808)

(assert (=> d!542812 (= lt!689501 (lemmaPrefixStaysPrefixWhenAddingToSuffix!332 lt!689507 lt!689246 suffix!1421))))

(assert (=> d!542812 (= lt!689507 (list!7953 (charsOf!2152 lt!689505)))))

(declare-fun lt!689508 () Unit!33808)

(declare-fun lt!689503 () Unit!33808)

(assert (=> d!542812 (= lt!689508 lt!689503)))

(declare-fun lt!689504 () List!19638)

(declare-fun lt!689516 () List!19638)

(assert (=> d!542812 (isPrefix!1743 lt!689504 (++!5327 lt!689504 lt!689516))))

(assert (=> d!542812 (= lt!689503 (lemmaConcatTwoListThenFirstIsPrefix!1252 lt!689504 lt!689516))))

(assert (=> d!542812 (= lt!689516 (_2!10985 (get!5997 (maxPrefix!1686 thiss!24550 rules!3447 lt!689246))))))

(assert (=> d!542812 (= lt!689504 (list!7953 (charsOf!2152 lt!689505)))))

(declare-datatypes ((List!19641 0))(
  ( (Nil!19571) (Cons!19571 (h!24972 Token!6572) (t!166116 List!19641)) )
))
(declare-fun head!4143 (List!19641) Token!6572)

(declare-datatypes ((IArray!13025 0))(
  ( (IArray!13026 (innerList!6570 List!19641)) )
))
(declare-datatypes ((Conc!6510 0))(
  ( (Node!6510 (left!15679 Conc!6510) (right!16009 Conc!6510) (csize!13250 Int) (cheight!6721 Int)) (Leaf!9482 (xs!9386 IArray!13025) (csize!13251 Int)) (Empty!6510) )
))
(declare-datatypes ((BalanceConc!12964 0))(
  ( (BalanceConc!12965 (c!289302 Conc!6510)) )
))
(declare-fun list!7954 (BalanceConc!12964) List!19641)

(declare-datatypes ((tuple2!19172 0))(
  ( (tuple2!19173 (_1!10988 BalanceConc!12964) (_2!10988 BalanceConc!12962)) )
))
(declare-fun lex!1471 (LexerInterface!3132 List!19639 BalanceConc!12962) tuple2!19172)

(assert (=> d!542812 (= lt!689505 (head!4143 (list!7954 (_1!10988 (lex!1471 thiss!24550 rules!3447 (seqFromList!2472 lt!689246))))))))

(assert (=> d!542812 (not (isEmpty!12363 rules!3447))))

(assert (=> d!542812 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!654 thiss!24550 rules!3447 lt!689246 suffix!1421) lt!689515)))

(declare-fun b!1777096 () Bool)

(declare-fun Unit!33813 () Unit!33808)

(assert (=> b!1777096 (= e!1137225 Unit!33813)))

(declare-fun b!1777095 () Bool)

(declare-fun Unit!33814 () Unit!33808)

(assert (=> b!1777095 (= e!1137225 Unit!33814)))

(declare-fun lt!689512 () List!19638)

(assert (=> b!1777095 (= lt!689512 (++!5327 lt!689246 suffix!1421))))

(declare-fun lt!689517 () Unit!33808)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!340 (LexerInterface!3132 Rule!6806 List!19639 List!19638) Unit!33808)

(assert (=> b!1777095 (= lt!689517 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!340 thiss!24550 (rule!5563 lt!689505) rules!3447 lt!689512))))

(assert (=> b!1777095 (isEmpty!12365 (maxPrefixOneRule!1055 thiss!24550 (rule!5563 lt!689505) lt!689512))))

(declare-fun lt!689514 () Unit!33808)

(assert (=> b!1777095 (= lt!689514 lt!689517)))

(declare-fun lt!689509 () List!19638)

(assert (=> b!1777095 (= lt!689509 (list!7953 (charsOf!2152 lt!689505)))))

(declare-fun lt!689506 () Unit!33808)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!336 (LexerInterface!3132 Rule!6806 List!19638 List!19638) Unit!33808)

(assert (=> b!1777095 (= lt!689506 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!336 thiss!24550 (rule!5563 lt!689505) lt!689509 (++!5327 lt!689246 suffix!1421)))))

(assert (=> b!1777095 (not (matchR!2304 (regex!3503 (rule!5563 lt!689505)) lt!689509))))

(declare-fun lt!689502 () Unit!33808)

(assert (=> b!1777095 (= lt!689502 lt!689506)))

(assert (=> b!1777095 false))

(declare-fun b!1777093 () Bool)

(declare-fun res!800745 () Bool)

(assert (=> b!1777093 (=> (not res!800745) (not e!1137226))))

(assert (=> b!1777093 (= res!800745 (matchR!2304 (regex!3503 (get!5998 (getRuleFromTag!551 thiss!24550 rules!3447 (tag!3891 (rule!5563 lt!689505))))) (list!7953 (charsOf!2152 lt!689505))))))

(declare-fun b!1777094 () Bool)

(assert (=> b!1777094 (= e!1137226 (= (rule!5563 lt!689505) (get!5998 (getRuleFromTag!551 thiss!24550 rules!3447 (tag!3891 (rule!5563 lt!689505))))))))

(assert (= (and d!542812 res!800744) b!1777093))

(assert (= (and b!1777093 res!800745) b!1777094))

(assert (= (and d!542812 c!289254) b!1777095))

(assert (= (and d!542812 (not c!289254)) b!1777096))

(declare-fun m!2198055 () Bool)

(assert (=> d!542812 m!2198055))

(declare-fun m!2198057 () Bool)

(assert (=> d!542812 m!2198057))

(assert (=> d!542812 m!2197449))

(declare-fun m!2198059 () Bool)

(assert (=> d!542812 m!2198059))

(declare-fun m!2198061 () Bool)

(assert (=> d!542812 m!2198061))

(declare-fun m!2198063 () Bool)

(assert (=> d!542812 m!2198063))

(declare-fun m!2198065 () Bool)

(assert (=> d!542812 m!2198065))

(declare-fun m!2198067 () Bool)

(assert (=> d!542812 m!2198067))

(assert (=> d!542812 m!2198063))

(declare-fun m!2198069 () Bool)

(assert (=> d!542812 m!2198069))

(assert (=> d!542812 m!2198055))

(declare-fun m!2198071 () Bool)

(assert (=> d!542812 m!2198071))

(declare-fun m!2198073 () Bool)

(assert (=> d!542812 m!2198073))

(declare-fun m!2198075 () Bool)

(assert (=> d!542812 m!2198075))

(assert (=> d!542812 m!2198065))

(declare-fun m!2198077 () Bool)

(assert (=> d!542812 m!2198077))

(assert (=> d!542812 m!2197451))

(assert (=> d!542812 m!2198065))

(assert (=> d!542812 m!2197451))

(assert (=> d!542812 m!2197439))

(assert (=> d!542812 m!2198071))

(declare-fun m!2198079 () Bool)

(assert (=> d!542812 m!2198079))

(assert (=> d!542812 m!2198075))

(declare-fun m!2198081 () Bool)

(assert (=> d!542812 m!2198081))

(assert (=> d!542812 m!2197439))

(declare-fun m!2198085 () Bool)

(assert (=> d!542812 m!2198085))

(declare-fun m!2198089 () Bool)

(assert (=> d!542812 m!2198089))

(assert (=> d!542812 m!2198061))

(declare-fun m!2198091 () Bool)

(assert (=> d!542812 m!2198091))

(assert (=> d!542812 m!2197451))

(declare-fun m!2198095 () Bool)

(assert (=> d!542812 m!2198095))

(assert (=> b!1777095 m!2198075))

(assert (=> b!1777095 m!2197451))

(assert (=> b!1777095 m!2198075))

(assert (=> b!1777095 m!2198081))

(declare-fun m!2198097 () Bool)

(assert (=> b!1777095 m!2198097))

(declare-fun m!2198099 () Bool)

(assert (=> b!1777095 m!2198099))

(assert (=> b!1777095 m!2197451))

(declare-fun m!2198101 () Bool)

(assert (=> b!1777095 m!2198101))

(assert (=> b!1777095 m!2198097))

(declare-fun m!2198103 () Bool)

(assert (=> b!1777095 m!2198103))

(declare-fun m!2198105 () Bool)

(assert (=> b!1777095 m!2198105))

(assert (=> b!1777093 m!2198063))

(declare-fun m!2198107 () Bool)

(assert (=> b!1777093 m!2198107))

(assert (=> b!1777093 m!2198075))

(assert (=> b!1777093 m!2198081))

(assert (=> b!1777093 m!2198063))

(assert (=> b!1777093 m!2198075))

(assert (=> b!1777093 m!2198081))

(declare-fun m!2198109 () Bool)

(assert (=> b!1777093 m!2198109))

(assert (=> b!1777094 m!2198063))

(assert (=> b!1777094 m!2198063))

(assert (=> b!1777094 m!2198107))

(assert (=> b!1776617 d!542812))

(declare-fun d!542840 () Bool)

(assert (=> d!542840 (isPrefix!1743 lt!689254 (++!5327 lt!689254 (_2!10985 lt!689238)))))

(declare-fun lt!689523 () Unit!33808)

(declare-fun choose!11111 (List!19638 List!19638) Unit!33808)

(assert (=> d!542840 (= lt!689523 (choose!11111 lt!689254 (_2!10985 lt!689238)))))

(assert (=> d!542840 (= (lemmaConcatTwoListThenFirstIsPrefix!1252 lt!689254 (_2!10985 lt!689238)) lt!689523)))

(declare-fun bs!404980 () Bool)

(assert (= bs!404980 d!542840))

(assert (=> bs!404980 m!2197469))

(assert (=> bs!404980 m!2197469))

(assert (=> bs!404980 m!2197475))

(declare-fun m!2198113 () Bool)

(assert (=> bs!404980 m!2198113))

(assert (=> b!1776617 d!542840))

(declare-fun b!1777102 () Bool)

(declare-fun e!1137231 () Bool)

(assert (=> b!1777102 (= e!1137231 (>= (size!15548 lt!689236) (size!15548 lt!689246)))))

(declare-fun b!1777099 () Bool)

(declare-fun e!1137230 () Bool)

(declare-fun e!1137229 () Bool)

(assert (=> b!1777099 (= e!1137230 e!1137229)))

(declare-fun res!800751 () Bool)

(assert (=> b!1777099 (=> (not res!800751) (not e!1137229))))

(assert (=> b!1777099 (= res!800751 (not ((_ is Nil!19568) lt!689236)))))

(declare-fun b!1777100 () Bool)

(declare-fun res!800750 () Bool)

(assert (=> b!1777100 (=> (not res!800750) (not e!1137229))))

(assert (=> b!1777100 (= res!800750 (= (head!4142 lt!689246) (head!4142 lt!689236)))))

(declare-fun d!542844 () Bool)

(assert (=> d!542844 e!1137231))

(declare-fun res!800749 () Bool)

(assert (=> d!542844 (=> res!800749 e!1137231)))

(declare-fun lt!689524 () Bool)

(assert (=> d!542844 (= res!800749 (not lt!689524))))

(assert (=> d!542844 (= lt!689524 e!1137230)))

(declare-fun res!800748 () Bool)

(assert (=> d!542844 (=> res!800748 e!1137230)))

(assert (=> d!542844 (= res!800748 ((_ is Nil!19568) lt!689246))))

(assert (=> d!542844 (= (isPrefix!1743 lt!689246 lt!689236) lt!689524)))

(declare-fun b!1777101 () Bool)

(assert (=> b!1777101 (= e!1137229 (isPrefix!1743 (tail!2659 lt!689246) (tail!2659 lt!689236)))))

(assert (= (and d!542844 (not res!800748)) b!1777099))

(assert (= (and b!1777099 res!800751) b!1777100))

(assert (= (and b!1777100 res!800750) b!1777101))

(assert (= (and d!542844 (not res!800749)) b!1777102))

(assert (=> b!1777102 m!2197777))

(assert (=> b!1777102 m!2197489))

(declare-fun m!2198115 () Bool)

(assert (=> b!1777100 m!2198115))

(assert (=> b!1777100 m!2197949))

(declare-fun m!2198117 () Bool)

(assert (=> b!1777101 m!2198117))

(assert (=> b!1777101 m!2197839))

(assert (=> b!1777101 m!2198117))

(assert (=> b!1777101 m!2197839))

(declare-fun m!2198119 () Bool)

(assert (=> b!1777101 m!2198119))

(assert (=> b!1776617 d!542844))

(declare-fun d!542846 () Bool)

(declare-fun isEmpty!12367 (Option!4029) Bool)

(assert (=> d!542846 (= (isDefined!3371 lt!689244) (not (isEmpty!12367 lt!689244)))))

(declare-fun bs!404981 () Bool)

(assert (= bs!404981 d!542846))

(declare-fun m!2198125 () Bool)

(assert (=> bs!404981 m!2198125))

(assert (=> b!1776617 d!542846))

(declare-fun b!1777121 () Bool)

(declare-fun e!1137242 () Bool)

(assert (=> b!1777121 (= e!1137242 (>= (size!15548 (++!5327 lt!689254 (_2!10985 lt!689238))) (size!15548 lt!689254)))))

(declare-fun b!1777118 () Bool)

(declare-fun e!1137241 () Bool)

(declare-fun e!1137240 () Bool)

(assert (=> b!1777118 (= e!1137241 e!1137240)))

(declare-fun res!800764 () Bool)

(assert (=> b!1777118 (=> (not res!800764) (not e!1137240))))

(assert (=> b!1777118 (= res!800764 (not ((_ is Nil!19568) (++!5327 lt!689254 (_2!10985 lt!689238)))))))

(declare-fun b!1777119 () Bool)

(declare-fun res!800763 () Bool)

(assert (=> b!1777119 (=> (not res!800763) (not e!1137240))))

(assert (=> b!1777119 (= res!800763 (= (head!4142 lt!689254) (head!4142 (++!5327 lt!689254 (_2!10985 lt!689238)))))))

(declare-fun d!542850 () Bool)

(assert (=> d!542850 e!1137242))

(declare-fun res!800762 () Bool)

(assert (=> d!542850 (=> res!800762 e!1137242)))

(declare-fun lt!689526 () Bool)

(assert (=> d!542850 (= res!800762 (not lt!689526))))

(assert (=> d!542850 (= lt!689526 e!1137241)))

(declare-fun res!800761 () Bool)

(assert (=> d!542850 (=> res!800761 e!1137241)))

(assert (=> d!542850 (= res!800761 ((_ is Nil!19568) lt!689254))))

(assert (=> d!542850 (= (isPrefix!1743 lt!689254 (++!5327 lt!689254 (_2!10985 lt!689238))) lt!689526)))

(declare-fun b!1777120 () Bool)

(assert (=> b!1777120 (= e!1137240 (isPrefix!1743 (tail!2659 lt!689254) (tail!2659 (++!5327 lt!689254 (_2!10985 lt!689238)))))))

(assert (= (and d!542850 (not res!800761)) b!1777118))

(assert (= (and b!1777118 res!800764) b!1777119))

(assert (= (and b!1777119 res!800763) b!1777120))

(assert (= (and d!542850 (not res!800762)) b!1777121))

(assert (=> b!1777121 m!2197469))

(declare-fun m!2198127 () Bool)

(assert (=> b!1777121 m!2198127))

(assert (=> b!1777121 m!2197431))

(assert (=> b!1777119 m!2197863))

(assert (=> b!1777119 m!2197469))

(declare-fun m!2198129 () Bool)

(assert (=> b!1777119 m!2198129))

(assert (=> b!1777120 m!2197867))

(assert (=> b!1777120 m!2197469))

(declare-fun m!2198131 () Bool)

(assert (=> b!1777120 m!2198131))

(assert (=> b!1777120 m!2197867))

(assert (=> b!1777120 m!2198131))

(declare-fun m!2198133 () Bool)

(assert (=> b!1777120 m!2198133))

(assert (=> b!1776617 d!542850))

(declare-fun b!1777171 () Bool)

(declare-fun e!1137272 () Option!4029)

(declare-fun e!1137270 () Option!4029)

(assert (=> b!1777171 (= e!1137272 e!1137270)))

(declare-fun c!289269 () Bool)

(assert (=> b!1777171 (= c!289269 (and ((_ is Cons!19569) rules!3447) (not (= (tag!3891 (h!24970 rules!3447)) (tag!3891 (rule!5563 (_1!10985 lt!689238)))))))))

(declare-fun b!1777172 () Bool)

(assert (=> b!1777172 (= e!1137272 (Some!4028 (h!24970 rules!3447)))))

(declare-fun b!1777173 () Bool)

(declare-fun e!1137273 () Bool)

(declare-fun lt!689541 () Option!4029)

(assert (=> b!1777173 (= e!1137273 (= (tag!3891 (get!5998 lt!689541)) (tag!3891 (rule!5563 (_1!10985 lt!689238)))))))

(declare-fun b!1777174 () Bool)

(declare-fun lt!689540 () Unit!33808)

(declare-fun lt!689542 () Unit!33808)

(assert (=> b!1777174 (= lt!689540 lt!689542)))

(assert (=> b!1777174 (rulesInvariant!2801 thiss!24550 (t!166038 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!212 (LexerInterface!3132 Rule!6806 List!19639) Unit!33808)

(assert (=> b!1777174 (= lt!689542 (lemmaInvariantOnRulesThenOnTail!212 thiss!24550 (h!24970 rules!3447) (t!166038 rules!3447)))))

(assert (=> b!1777174 (= e!1137270 (getRuleFromTag!551 thiss!24550 (t!166038 rules!3447) (tag!3891 (rule!5563 (_1!10985 lt!689238)))))))

(declare-fun d!542852 () Bool)

(declare-fun e!1137271 () Bool)

(assert (=> d!542852 e!1137271))

(declare-fun res!800792 () Bool)

(assert (=> d!542852 (=> res!800792 e!1137271)))

(assert (=> d!542852 (= res!800792 (isEmpty!12367 lt!689541))))

(assert (=> d!542852 (= lt!689541 e!1137272)))

(declare-fun c!289270 () Bool)

(assert (=> d!542852 (= c!289270 (and ((_ is Cons!19569) rules!3447) (= (tag!3891 (h!24970 rules!3447)) (tag!3891 (rule!5563 (_1!10985 lt!689238))))))))

(assert (=> d!542852 (rulesInvariant!2801 thiss!24550 rules!3447)))

(assert (=> d!542852 (= (getRuleFromTag!551 thiss!24550 rules!3447 (tag!3891 (rule!5563 (_1!10985 lt!689238)))) lt!689541)))

(declare-fun b!1777175 () Bool)

(assert (=> b!1777175 (= e!1137271 e!1137273)))

(declare-fun res!800793 () Bool)

(assert (=> b!1777175 (=> (not res!800793) (not e!1137273))))

(assert (=> b!1777175 (= res!800793 (contains!3535 rules!3447 (get!5998 lt!689541)))))

(declare-fun b!1777176 () Bool)

(assert (=> b!1777176 (= e!1137270 None!4028)))

(assert (= (and d!542852 c!289270) b!1777172))

(assert (= (and d!542852 (not c!289270)) b!1777171))

(assert (= (and b!1777171 c!289269) b!1777174))

(assert (= (and b!1777171 (not c!289269)) b!1777176))

(assert (= (and d!542852 (not res!800792)) b!1777175))

(assert (= (and b!1777175 res!800793) b!1777173))

(declare-fun m!2198185 () Bool)

(assert (=> b!1777173 m!2198185))

(declare-fun m!2198189 () Bool)

(assert (=> b!1777174 m!2198189))

(declare-fun m!2198191 () Bool)

(assert (=> b!1777174 m!2198191))

(declare-fun m!2198193 () Bool)

(assert (=> b!1777174 m!2198193))

(declare-fun m!2198195 () Bool)

(assert (=> d!542852 m!2198195))

(assert (=> d!542852 m!2197393))

(assert (=> b!1777175 m!2198185))

(assert (=> b!1777175 m!2198185))

(declare-fun m!2198197 () Bool)

(assert (=> b!1777175 m!2198197))

(assert (=> b!1776617 d!542852))

(declare-fun d!542876 () Bool)

(declare-fun list!7957 (Conc!6509) List!19638)

(assert (=> d!542876 (= (list!7953 lt!689221) (list!7957 (c!289167 lt!689221)))))

(declare-fun bs!404987 () Bool)

(assert (= bs!404987 d!542876))

(declare-fun m!2198209 () Bool)

(assert (=> bs!404987 m!2198209))

(assert (=> b!1776617 d!542876))

(declare-fun b!1777189 () Bool)

(declare-fun res!800802 () Bool)

(declare-fun e!1137279 () Bool)

(assert (=> b!1777189 (=> (not res!800802) (not e!1137279))))

(declare-fun lt!689548 () List!19638)

(assert (=> b!1777189 (= res!800802 (= (size!15548 lt!689548) (+ (size!15548 lt!689254) (size!15548 (_2!10985 lt!689238)))))))

(declare-fun d!542882 () Bool)

(assert (=> d!542882 e!1137279))

(declare-fun res!800801 () Bool)

(assert (=> d!542882 (=> (not res!800801) (not e!1137279))))

(assert (=> d!542882 (= res!800801 (= (content!2843 lt!689548) ((_ map or) (content!2843 lt!689254) (content!2843 (_2!10985 lt!689238)))))))

(declare-fun e!1137278 () List!19638)

(assert (=> d!542882 (= lt!689548 e!1137278)))

(declare-fun c!289272 () Bool)

(assert (=> d!542882 (= c!289272 ((_ is Nil!19568) lt!689254))))

(assert (=> d!542882 (= (++!5327 lt!689254 (_2!10985 lt!689238)) lt!689548)))

(declare-fun b!1777188 () Bool)

(assert (=> b!1777188 (= e!1137278 (Cons!19568 (h!24969 lt!689254) (++!5327 (t!166037 lt!689254) (_2!10985 lt!689238))))))

(declare-fun b!1777187 () Bool)

(assert (=> b!1777187 (= e!1137278 (_2!10985 lt!689238))))

(declare-fun b!1777190 () Bool)

(assert (=> b!1777190 (= e!1137279 (or (not (= (_2!10985 lt!689238) Nil!19568)) (= lt!689548 lt!689254)))))

(assert (= (and d!542882 c!289272) b!1777187))

(assert (= (and d!542882 (not c!289272)) b!1777188))

(assert (= (and d!542882 res!800801) b!1777189))

(assert (= (and b!1777189 res!800802) b!1777190))

(declare-fun m!2198211 () Bool)

(assert (=> b!1777189 m!2198211))

(assert (=> b!1777189 m!2197431))

(declare-fun m!2198213 () Bool)

(assert (=> b!1777189 m!2198213))

(declare-fun m!2198215 () Bool)

(assert (=> d!542882 m!2198215))

(declare-fun m!2198217 () Bool)

(assert (=> d!542882 m!2198217))

(declare-fun m!2198219 () Bool)

(assert (=> d!542882 m!2198219))

(declare-fun m!2198221 () Bool)

(assert (=> b!1777188 m!2198221))

(assert (=> b!1776617 d!542882))

(declare-fun d!542884 () Bool)

(assert (=> d!542884 (isPrefix!1743 lt!689246 (++!5327 lt!689246 suffix!1421))))

(declare-fun lt!689549 () Unit!33808)

(assert (=> d!542884 (= lt!689549 (choose!11111 lt!689246 suffix!1421))))

(assert (=> d!542884 (= (lemmaConcatTwoListThenFirstIsPrefix!1252 lt!689246 suffix!1421) lt!689549)))

(declare-fun bs!404988 () Bool)

(assert (= bs!404988 d!542884))

(assert (=> bs!404988 m!2197451))

(assert (=> bs!404988 m!2197451))

(declare-fun m!2198223 () Bool)

(assert (=> bs!404988 m!2198223))

(declare-fun m!2198225 () Bool)

(assert (=> bs!404988 m!2198225))

(assert (=> b!1776617 d!542884))

(declare-fun d!542886 () Bool)

(assert (=> d!542886 (= (get!5997 lt!689231) (v!25510 lt!689231))))

(assert (=> b!1776617 d!542886))

(declare-fun d!542888 () Bool)

(declare-fun lt!689553 () BalanceConc!12962)

(assert (=> d!542888 (= (list!7953 lt!689553) (originalCharacters!4317 (_1!10985 lt!689238)))))

(assert (=> d!542888 (= lt!689553 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (value!109508 (_1!10985 lt!689238))))))

(assert (=> d!542888 (= (charsOf!2152 (_1!10985 lt!689238)) lt!689553)))

(declare-fun b_lambda!58043 () Bool)

(assert (=> (not b_lambda!58043) (not d!542888)))

(assert (=> d!542888 t!166031))

(declare-fun b_and!135791 () Bool)

(assert (= b_and!135743 (and (=> t!166031 result!129682) b_and!135791)))

(assert (=> d!542888 t!166033))

(declare-fun b_and!135795 () Bool)

(assert (= b_and!135745 (and (=> t!166033 result!129684) b_and!135795)))

(assert (=> d!542888 t!166035))

(declare-fun b_and!135799 () Bool)

(assert (= b_and!135747 (and (=> t!166035 result!129686) b_and!135799)))

(declare-fun m!2198261 () Bool)

(assert (=> d!542888 m!2198261))

(assert (=> d!542888 m!2197485))

(assert (=> b!1776617 d!542888))

(declare-fun b!1777285 () Bool)

(declare-fun res!800829 () Bool)

(declare-fun e!1137332 () Bool)

(assert (=> b!1777285 (=> (not res!800829) (not e!1137332))))

(declare-fun lt!689577 () Option!4028)

(assert (=> b!1777285 (= res!800829 (< (size!15548 (_2!10985 (get!5997 lt!689577))) (size!15548 lt!689236)))))

(declare-fun b!1777286 () Bool)

(assert (=> b!1777286 (= e!1137332 (contains!3535 rules!3447 (rule!5563 (_1!10985 (get!5997 lt!689577)))))))

(declare-fun b!1777287 () Bool)

(declare-fun res!800833 () Bool)

(assert (=> b!1777287 (=> (not res!800833) (not e!1137332))))

(assert (=> b!1777287 (= res!800833 (= (value!109508 (_1!10985 (get!5997 lt!689577))) (apply!5303 (transformation!3503 (rule!5563 (_1!10985 (get!5997 lt!689577)))) (seqFromList!2472 (originalCharacters!4317 (_1!10985 (get!5997 lt!689577)))))))))

(declare-fun b!1777288 () Bool)

(declare-fun res!800830 () Bool)

(assert (=> b!1777288 (=> (not res!800830) (not e!1137332))))

(assert (=> b!1777288 (= res!800830 (matchR!2304 (regex!3503 (rule!5563 (_1!10985 (get!5997 lt!689577)))) (list!7953 (charsOf!2152 (_1!10985 (get!5997 lt!689577))))))))

(declare-fun b!1777289 () Bool)

(declare-fun res!800831 () Bool)

(assert (=> b!1777289 (=> (not res!800831) (not e!1137332))))

(assert (=> b!1777289 (= res!800831 (= (++!5327 (list!7953 (charsOf!2152 (_1!10985 (get!5997 lt!689577)))) (_2!10985 (get!5997 lt!689577))) lt!689236))))

(declare-fun b!1777290 () Bool)

(declare-fun e!1137333 () Option!4028)

(declare-fun call!111225 () Option!4028)

(assert (=> b!1777290 (= e!1137333 call!111225)))

(declare-fun b!1777291 () Bool)

(declare-fun lt!689574 () Option!4028)

(declare-fun lt!689578 () Option!4028)

(assert (=> b!1777291 (= e!1137333 (ite (and ((_ is None!4027) lt!689574) ((_ is None!4027) lt!689578)) None!4027 (ite ((_ is None!4027) lt!689578) lt!689574 (ite ((_ is None!4027) lt!689574) lt!689578 (ite (>= (size!15546 (_1!10985 (v!25510 lt!689574))) (size!15546 (_1!10985 (v!25510 lt!689578)))) lt!689574 lt!689578)))))))

(assert (=> b!1777291 (= lt!689574 call!111225)))

(assert (=> b!1777291 (= lt!689578 (maxPrefix!1686 thiss!24550 (t!166038 rules!3447) lt!689236))))

(declare-fun b!1777292 () Bool)

(declare-fun e!1137334 () Bool)

(assert (=> b!1777292 (= e!1137334 e!1137332)))

(declare-fun res!800827 () Bool)

(assert (=> b!1777292 (=> (not res!800827) (not e!1137332))))

(assert (=> b!1777292 (= res!800827 (isDefined!3372 lt!689577))))

(declare-fun bm!111220 () Bool)

(assert (=> bm!111220 (= call!111225 (maxPrefixOneRule!1055 thiss!24550 (h!24970 rules!3447) lt!689236))))

(declare-fun d!542898 () Bool)

(assert (=> d!542898 e!1137334))

(declare-fun res!800828 () Bool)

(assert (=> d!542898 (=> res!800828 e!1137334)))

(assert (=> d!542898 (= res!800828 (isEmpty!12365 lt!689577))))

(assert (=> d!542898 (= lt!689577 e!1137333)))

(declare-fun c!289278 () Bool)

(assert (=> d!542898 (= c!289278 (and ((_ is Cons!19569) rules!3447) ((_ is Nil!19569) (t!166038 rules!3447))))))

(declare-fun lt!689575 () Unit!33808)

(declare-fun lt!689576 () Unit!33808)

(assert (=> d!542898 (= lt!689575 lt!689576)))

(assert (=> d!542898 (isPrefix!1743 lt!689236 lt!689236)))

(assert (=> d!542898 (= lt!689576 (lemmaIsPrefixRefl!1152 lt!689236 lt!689236))))

(declare-fun rulesValidInductive!1188 (LexerInterface!3132 List!19639) Bool)

(assert (=> d!542898 (rulesValidInductive!1188 thiss!24550 rules!3447)))

(assert (=> d!542898 (= (maxPrefix!1686 thiss!24550 rules!3447 lt!689236) lt!689577)))

(declare-fun b!1777293 () Bool)

(declare-fun res!800832 () Bool)

(assert (=> b!1777293 (=> (not res!800832) (not e!1137332))))

(assert (=> b!1777293 (= res!800832 (= (list!7953 (charsOf!2152 (_1!10985 (get!5997 lt!689577)))) (originalCharacters!4317 (_1!10985 (get!5997 lt!689577)))))))

(assert (= (and d!542898 c!289278) b!1777290))

(assert (= (and d!542898 (not c!289278)) b!1777291))

(assert (= (or b!1777290 b!1777291) bm!111220))

(assert (= (and d!542898 (not res!800828)) b!1777292))

(assert (= (and b!1777292 res!800827) b!1777293))

(assert (= (and b!1777293 res!800832) b!1777285))

(assert (= (and b!1777285 res!800829) b!1777289))

(assert (= (and b!1777289 res!800831) b!1777287))

(assert (= (and b!1777287 res!800833) b!1777288))

(assert (= (and b!1777288 res!800830) b!1777286))

(declare-fun m!2198323 () Bool)

(assert (=> b!1777293 m!2198323))

(declare-fun m!2198325 () Bool)

(assert (=> b!1777293 m!2198325))

(assert (=> b!1777293 m!2198325))

(declare-fun m!2198327 () Bool)

(assert (=> b!1777293 m!2198327))

(assert (=> b!1777286 m!2198323))

(declare-fun m!2198329 () Bool)

(assert (=> b!1777286 m!2198329))

(declare-fun m!2198331 () Bool)

(assert (=> d!542898 m!2198331))

(assert (=> d!542898 m!2197497))

(assert (=> d!542898 m!2197499))

(declare-fun m!2198333 () Bool)

(assert (=> d!542898 m!2198333))

(assert (=> b!1777289 m!2198323))

(assert (=> b!1777289 m!2198325))

(assert (=> b!1777289 m!2198325))

(assert (=> b!1777289 m!2198327))

(assert (=> b!1777289 m!2198327))

(declare-fun m!2198335 () Bool)

(assert (=> b!1777289 m!2198335))

(assert (=> b!1777287 m!2198323))

(declare-fun m!2198337 () Bool)

(assert (=> b!1777287 m!2198337))

(assert (=> b!1777287 m!2198337))

(declare-fun m!2198339 () Bool)

(assert (=> b!1777287 m!2198339))

(declare-fun m!2198341 () Bool)

(assert (=> b!1777291 m!2198341))

(assert (=> b!1777285 m!2198323))

(declare-fun m!2198343 () Bool)

(assert (=> b!1777285 m!2198343))

(assert (=> b!1777285 m!2197777))

(declare-fun m!2198345 () Bool)

(assert (=> bm!111220 m!2198345))

(declare-fun m!2198347 () Bool)

(assert (=> b!1777292 m!2198347))

(assert (=> b!1777288 m!2198323))

(assert (=> b!1777288 m!2198325))

(assert (=> b!1777288 m!2198325))

(assert (=> b!1777288 m!2198327))

(assert (=> b!1777288 m!2198327))

(declare-fun m!2198349 () Bool)

(assert (=> b!1777288 m!2198349))

(assert (=> b!1776617 d!542898))

(declare-fun b!1777297 () Bool)

(declare-fun e!1137337 () Bool)

(assert (=> b!1777297 (= e!1137337 (>= (size!15548 lt!689236) (size!15548 lt!689254)))))

(declare-fun b!1777294 () Bool)

(declare-fun e!1137336 () Bool)

(declare-fun e!1137335 () Bool)

(assert (=> b!1777294 (= e!1137336 e!1137335)))

(declare-fun res!800837 () Bool)

(assert (=> b!1777294 (=> (not res!800837) (not e!1137335))))

(assert (=> b!1777294 (= res!800837 (not ((_ is Nil!19568) lt!689236)))))

(declare-fun b!1777295 () Bool)

(declare-fun res!800836 () Bool)

(assert (=> b!1777295 (=> (not res!800836) (not e!1137335))))

(assert (=> b!1777295 (= res!800836 (= (head!4142 lt!689254) (head!4142 lt!689236)))))

(declare-fun d!542924 () Bool)

(assert (=> d!542924 e!1137337))

(declare-fun res!800835 () Bool)

(assert (=> d!542924 (=> res!800835 e!1137337)))

(declare-fun lt!689579 () Bool)

(assert (=> d!542924 (= res!800835 (not lt!689579))))

(assert (=> d!542924 (= lt!689579 e!1137336)))

(declare-fun res!800834 () Bool)

(assert (=> d!542924 (=> res!800834 e!1137336)))

(assert (=> d!542924 (= res!800834 ((_ is Nil!19568) lt!689254))))

(assert (=> d!542924 (= (isPrefix!1743 lt!689254 lt!689236) lt!689579)))

(declare-fun b!1777296 () Bool)

(assert (=> b!1777296 (= e!1137335 (isPrefix!1743 (tail!2659 lt!689254) (tail!2659 lt!689236)))))

(assert (= (and d!542924 (not res!800834)) b!1777294))

(assert (= (and b!1777294 res!800837) b!1777295))

(assert (= (and b!1777295 res!800836) b!1777296))

(assert (= (and d!542924 (not res!800835)) b!1777297))

(assert (=> b!1777297 m!2197777))

(assert (=> b!1777297 m!2197431))

(assert (=> b!1777295 m!2197863))

(assert (=> b!1777295 m!2197949))

(assert (=> b!1777296 m!2197867))

(assert (=> b!1777296 m!2197839))

(assert (=> b!1777296 m!2197867))

(assert (=> b!1777296 m!2197839))

(declare-fun m!2198351 () Bool)

(assert (=> b!1777296 m!2198351))

(assert (=> b!1776617 d!542924))

(declare-fun b!1777300 () Bool)

(declare-fun res!800839 () Bool)

(declare-fun e!1137339 () Bool)

(assert (=> b!1777300 (=> (not res!800839) (not e!1137339))))

(declare-fun lt!689580 () List!19638)

(assert (=> b!1777300 (= res!800839 (= (size!15548 lt!689580) (+ (size!15548 lt!689246) (size!15548 suffix!1421))))))

(declare-fun d!542926 () Bool)

(assert (=> d!542926 e!1137339))

(declare-fun res!800838 () Bool)

(assert (=> d!542926 (=> (not res!800838) (not e!1137339))))

(assert (=> d!542926 (= res!800838 (= (content!2843 lt!689580) ((_ map or) (content!2843 lt!689246) (content!2843 suffix!1421))))))

(declare-fun e!1137338 () List!19638)

(assert (=> d!542926 (= lt!689580 e!1137338)))

(declare-fun c!289279 () Bool)

(assert (=> d!542926 (= c!289279 ((_ is Nil!19568) lt!689246))))

(assert (=> d!542926 (= (++!5327 lt!689246 suffix!1421) lt!689580)))

(declare-fun b!1777299 () Bool)

(assert (=> b!1777299 (= e!1137338 (Cons!19568 (h!24969 lt!689246) (++!5327 (t!166037 lt!689246) suffix!1421)))))

(declare-fun b!1777298 () Bool)

(assert (=> b!1777298 (= e!1137338 suffix!1421)))

(declare-fun b!1777301 () Bool)

(assert (=> b!1777301 (= e!1137339 (or (not (= suffix!1421 Nil!19568)) (= lt!689580 lt!689246)))))

(assert (= (and d!542926 c!289279) b!1777298))

(assert (= (and d!542926 (not c!289279)) b!1777299))

(assert (= (and d!542926 res!800838) b!1777300))

(assert (= (and b!1777300 res!800839) b!1777301))

(declare-fun m!2198353 () Bool)

(assert (=> b!1777300 m!2198353))

(assert (=> b!1777300 m!2197489))

(declare-fun m!2198355 () Bool)

(assert (=> b!1777300 m!2198355))

(declare-fun m!2198357 () Bool)

(assert (=> d!542926 m!2198357))

(assert (=> d!542926 m!2197935))

(declare-fun m!2198359 () Bool)

(assert (=> d!542926 m!2198359))

(declare-fun m!2198361 () Bool)

(assert (=> b!1777299 m!2198361))

(assert (=> b!1776617 d!542926))

(declare-fun d!542928 () Bool)

(assert (=> d!542928 (= (isEmpty!12363 rules!3447) ((_ is Nil!19569) rules!3447))))

(assert (=> b!1776639 d!542928))

(declare-fun d!542930 () Bool)

(declare-fun res!800844 () Bool)

(declare-fun e!1137342 () Bool)

(assert (=> d!542930 (=> (not res!800844) (not e!1137342))))

(assert (=> d!542930 (= res!800844 (not (isEmpty!12362 (originalCharacters!4317 token!523))))))

(assert (=> d!542930 (= (inv!25453 token!523) e!1137342)))

(declare-fun b!1777306 () Bool)

(declare-fun res!800845 () Bool)

(assert (=> b!1777306 (=> (not res!800845) (not e!1137342))))

(assert (=> b!1777306 (= res!800845 (= (originalCharacters!4317 token!523) (list!7953 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 token!523))) (value!109508 token!523)))))))

(declare-fun b!1777307 () Bool)

(assert (=> b!1777307 (= e!1137342 (= (size!15546 token!523) (size!15548 (originalCharacters!4317 token!523))))))

(assert (= (and d!542930 res!800844) b!1777306))

(assert (= (and b!1777306 res!800845) b!1777307))

(declare-fun b_lambda!58065 () Bool)

(assert (=> (not b_lambda!58065) (not b!1777306)))

(declare-fun tb!107853 () Bool)

(declare-fun t!166084 () Bool)

(assert (=> (and b!1776633 (= (toChars!4889 (transformation!3503 (h!24970 rules!3447))) (toChars!4889 (transformation!3503 (rule!5563 token!523)))) t!166084) tb!107853))

(declare-fun b!1777308 () Bool)

(declare-fun e!1137343 () Bool)

(declare-fun tp!503436 () Bool)

(assert (=> b!1777308 (= e!1137343 (and (inv!25454 (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 token!523))) (value!109508 token!523)))) tp!503436))))

(declare-fun result!129740 () Bool)

(assert (=> tb!107853 (= result!129740 (and (inv!25455 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 token!523))) (value!109508 token!523))) e!1137343))))

(assert (= tb!107853 b!1777308))

(declare-fun m!2198363 () Bool)

(assert (=> b!1777308 m!2198363))

(declare-fun m!2198365 () Bool)

(assert (=> tb!107853 m!2198365))

(assert (=> b!1777306 t!166084))

(declare-fun b_and!135831 () Bool)

(assert (= b_and!135791 (and (=> t!166084 result!129740) b_and!135831)))

(declare-fun tb!107855 () Bool)

(declare-fun t!166086 () Bool)

(assert (=> (and b!1776634 (= (toChars!4889 (transformation!3503 rule!422)) (toChars!4889 (transformation!3503 (rule!5563 token!523)))) t!166086) tb!107855))

(declare-fun result!129742 () Bool)

(assert (= result!129742 result!129740))

(assert (=> b!1777306 t!166086))

(declare-fun b_and!135833 () Bool)

(assert (= b_and!135795 (and (=> t!166086 result!129742) b_and!135833)))

(declare-fun t!166088 () Bool)

(declare-fun tb!107857 () Bool)

(assert (=> (and b!1776623 (= (toChars!4889 (transformation!3503 (rule!5563 token!523))) (toChars!4889 (transformation!3503 (rule!5563 token!523)))) t!166088) tb!107857))

(declare-fun result!129744 () Bool)

(assert (= result!129744 result!129740))

(assert (=> b!1777306 t!166088))

(declare-fun b_and!135835 () Bool)

(assert (= b_and!135799 (and (=> t!166088 result!129744) b_and!135835)))

(declare-fun m!2198367 () Bool)

(assert (=> d!542930 m!2198367))

(declare-fun m!2198369 () Bool)

(assert (=> b!1777306 m!2198369))

(assert (=> b!1777306 m!2198369))

(declare-fun m!2198371 () Bool)

(assert (=> b!1777306 m!2198371))

(declare-fun m!2198373 () Bool)

(assert (=> b!1777307 m!2198373))

(assert (=> start!176494 d!542930))

(declare-fun b!1777309 () Bool)

(declare-fun res!800847 () Bool)

(declare-fun e!1137348 () Bool)

(assert (=> b!1777309 (=> res!800847 e!1137348)))

(assert (=> b!1777309 (= res!800847 (not ((_ is ElementMatch!4831) (regex!3503 (rule!5563 (_1!10985 lt!689238))))))))

(declare-fun e!1137347 () Bool)

(assert (=> b!1777309 (= e!1137347 e!1137348)))

(declare-fun b!1777310 () Bool)

(declare-fun e!1137350 () Bool)

(assert (=> b!1777310 (= e!1137350 (matchR!2304 (derivativeStep!1252 (regex!3503 (rule!5563 (_1!10985 lt!689238))) (head!4142 lt!689254)) (tail!2659 lt!689254)))))

(declare-fun b!1777311 () Bool)

(declare-fun e!1137346 () Bool)

(assert (=> b!1777311 (= e!1137346 e!1137347)))

(declare-fun c!289282 () Bool)

(assert (=> b!1777311 (= c!289282 ((_ is EmptyLang!4831) (regex!3503 (rule!5563 (_1!10985 lt!689238)))))))

(declare-fun bm!111221 () Bool)

(declare-fun call!111226 () Bool)

(assert (=> bm!111221 (= call!111226 (isEmpty!12362 lt!689254))))

(declare-fun b!1777312 () Bool)

(declare-fun lt!689581 () Bool)

(assert (=> b!1777312 (= e!1137346 (= lt!689581 call!111226))))

(declare-fun b!1777313 () Bool)

(declare-fun res!800846 () Bool)

(assert (=> b!1777313 (=> res!800846 e!1137348)))

(declare-fun e!1137345 () Bool)

(assert (=> b!1777313 (= res!800846 e!1137345)))

(declare-fun res!800852 () Bool)

(assert (=> b!1777313 (=> (not res!800852) (not e!1137345))))

(assert (=> b!1777313 (= res!800852 lt!689581)))

(declare-fun b!1777314 () Bool)

(assert (=> b!1777314 (= e!1137347 (not lt!689581))))

(declare-fun b!1777315 () Bool)

(assert (=> b!1777315 (= e!1137350 (nullable!1483 (regex!3503 (rule!5563 (_1!10985 lt!689238)))))))

(declare-fun b!1777317 () Bool)

(declare-fun e!1137344 () Bool)

(declare-fun e!1137349 () Bool)

(assert (=> b!1777317 (= e!1137344 e!1137349)))

(declare-fun res!800851 () Bool)

(assert (=> b!1777317 (=> res!800851 e!1137349)))

(assert (=> b!1777317 (= res!800851 call!111226)))

(declare-fun b!1777318 () Bool)

(declare-fun res!800848 () Bool)

(assert (=> b!1777318 (=> (not res!800848) (not e!1137345))))

(assert (=> b!1777318 (= res!800848 (not call!111226))))

(declare-fun b!1777319 () Bool)

(assert (=> b!1777319 (= e!1137349 (not (= (head!4142 lt!689254) (c!289166 (regex!3503 (rule!5563 (_1!10985 lt!689238)))))))))

(declare-fun b!1777320 () Bool)

(assert (=> b!1777320 (= e!1137348 e!1137344)))

(declare-fun res!800850 () Bool)

(assert (=> b!1777320 (=> (not res!800850) (not e!1137344))))

(assert (=> b!1777320 (= res!800850 (not lt!689581))))

(declare-fun b!1777321 () Bool)

(declare-fun res!800849 () Bool)

(assert (=> b!1777321 (=> res!800849 e!1137349)))

(assert (=> b!1777321 (= res!800849 (not (isEmpty!12362 (tail!2659 lt!689254))))))

(declare-fun b!1777322 () Bool)

(assert (=> b!1777322 (= e!1137345 (= (head!4142 lt!689254) (c!289166 (regex!3503 (rule!5563 (_1!10985 lt!689238))))))))

(declare-fun b!1777316 () Bool)

(declare-fun res!800853 () Bool)

(assert (=> b!1777316 (=> (not res!800853) (not e!1137345))))

(assert (=> b!1777316 (= res!800853 (isEmpty!12362 (tail!2659 lt!689254)))))

(declare-fun d!542932 () Bool)

(assert (=> d!542932 e!1137346))

(declare-fun c!289280 () Bool)

(assert (=> d!542932 (= c!289280 ((_ is EmptyExpr!4831) (regex!3503 (rule!5563 (_1!10985 lt!689238)))))))

(assert (=> d!542932 (= lt!689581 e!1137350)))

(declare-fun c!289281 () Bool)

(assert (=> d!542932 (= c!289281 (isEmpty!12362 lt!689254))))

(assert (=> d!542932 (validRegex!1957 (regex!3503 (rule!5563 (_1!10985 lt!689238))))))

(assert (=> d!542932 (= (matchR!2304 (regex!3503 (rule!5563 (_1!10985 lt!689238))) lt!689254) lt!689581)))

(assert (= (and d!542932 c!289281) b!1777315))

(assert (= (and d!542932 (not c!289281)) b!1777310))

(assert (= (and d!542932 c!289280) b!1777312))

(assert (= (and d!542932 (not c!289280)) b!1777311))

(assert (= (and b!1777311 c!289282) b!1777314))

(assert (= (and b!1777311 (not c!289282)) b!1777309))

(assert (= (and b!1777309 (not res!800847)) b!1777313))

(assert (= (and b!1777313 res!800852) b!1777318))

(assert (= (and b!1777318 res!800848) b!1777316))

(assert (= (and b!1777316 res!800853) b!1777322))

(assert (= (and b!1777313 (not res!800846)) b!1777320))

(assert (= (and b!1777320 res!800850) b!1777317))

(assert (= (and b!1777317 (not res!800851)) b!1777321))

(assert (= (and b!1777321 (not res!800849)) b!1777319))

(assert (= (or b!1777312 b!1777317 b!1777318) bm!111221))

(assert (=> bm!111221 m!2197901))

(assert (=> d!542932 m!2197901))

(declare-fun m!2198375 () Bool)

(assert (=> d!542932 m!2198375))

(assert (=> b!1777310 m!2197863))

(assert (=> b!1777310 m!2197863))

(declare-fun m!2198377 () Bool)

(assert (=> b!1777310 m!2198377))

(assert (=> b!1777310 m!2197867))

(assert (=> b!1777310 m!2198377))

(assert (=> b!1777310 m!2197867))

(declare-fun m!2198379 () Bool)

(assert (=> b!1777310 m!2198379))

(assert (=> b!1777322 m!2197863))

(assert (=> b!1777316 m!2197867))

(assert (=> b!1777316 m!2197867))

(assert (=> b!1777316 m!2197909))

(assert (=> b!1777321 m!2197867))

(assert (=> b!1777321 m!2197867))

(assert (=> b!1777321 m!2197909))

(assert (=> b!1777319 m!2197863))

(declare-fun m!2198381 () Bool)

(assert (=> b!1777315 m!2198381))

(assert (=> b!1776618 d!542932))

(declare-fun d!542934 () Bool)

(assert (=> d!542934 (= (isEmpty!12362 (_2!10985 lt!689235)) ((_ is Nil!19568) (_2!10985 lt!689235)))))

(assert (=> b!1776619 d!542934))

(declare-fun d!542936 () Bool)

(assert (=> d!542936 (= (inv!25455 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221))) (isBalanced!2036 (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221)))))))

(declare-fun bs!404997 () Bool)

(assert (= bs!404997 d!542936))

(declare-fun m!2198383 () Bool)

(assert (=> bs!404997 m!2198383))

(assert (=> tb!107791 d!542936))

(declare-fun d!542938 () Bool)

(assert (=> d!542938 (= (list!7953 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221))) (list!7957 (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221)))))))

(declare-fun bs!404998 () Bool)

(assert (= bs!404998 d!542938))

(declare-fun m!2198385 () Bool)

(assert (=> bs!404998 m!2198385))

(assert (=> b!1776620 d!542938))

(declare-fun bs!404999 () Bool)

(declare-fun d!542940 () Bool)

(assert (= bs!404999 (and d!542940 b!1776621)))

(declare-fun lambda!70577 () Int)

(assert (=> bs!404999 (= lambda!70577 lambda!70564)))

(declare-fun b!1777327 () Bool)

(declare-fun e!1137353 () Bool)

(assert (=> b!1777327 (= e!1137353 true)))

(assert (=> d!542940 e!1137353))

(assert (= d!542940 b!1777327))

(assert (=> b!1777327 (< (dynLambda!9562 order!12567 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) (dynLambda!9563 order!12569 lambda!70577))))

(assert (=> b!1777327 (< (dynLambda!9564 order!12571 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) (dynLambda!9563 order!12569 lambda!70577))))

(assert (=> d!542940 (= (list!7953 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221))) (list!7953 lt!689221))))

(declare-fun lt!689584 () Unit!33808)

(declare-fun ForallOf!335 (Int BalanceConc!12962) Unit!33808)

(assert (=> d!542940 (= lt!689584 (ForallOf!335 lambda!70577 lt!689221))))

(assert (=> d!542940 (= (lemmaSemiInverse!641 (transformation!3503 (rule!5563 (_1!10985 lt!689238))) lt!689221) lt!689584)))

(declare-fun b_lambda!58067 () Bool)

(assert (=> (not b_lambda!58067) (not d!542940)))

(assert (=> d!542940 t!166019))

(declare-fun b_and!135837 () Bool)

(assert (= b_and!135831 (and (=> t!166019 result!129666) b_and!135837)))

(assert (=> d!542940 t!166021))

(declare-fun b_and!135839 () Bool)

(assert (= b_and!135833 (and (=> t!166021 result!129670) b_and!135839)))

(assert (=> d!542940 t!166023))

(declare-fun b_and!135841 () Bool)

(assert (= b_and!135835 (and (=> t!166023 result!129672) b_and!135841)))

(declare-fun b_lambda!58069 () Bool)

(assert (=> (not b_lambda!58069) (not d!542940)))

(assert (=> d!542940 t!166025))

(declare-fun b_and!135843 () Bool)

(assert (= b_and!135761 (and (=> t!166025 result!129674) b_and!135843)))

(assert (=> d!542940 t!166027))

(declare-fun b_and!135845 () Bool)

(assert (= b_and!135763 (and (=> t!166027 result!129678) b_and!135845)))

(assert (=> d!542940 t!166029))

(declare-fun b_and!135847 () Bool)

(assert (= b_and!135765 (and (=> t!166029 result!129680) b_and!135847)))

(assert (=> d!542940 m!2197473))

(assert (=> d!542940 m!2197413))

(assert (=> d!542940 m!2197415))

(assert (=> d!542940 m!2197415))

(assert (=> d!542940 m!2197417))

(declare-fun m!2198387 () Bool)

(assert (=> d!542940 m!2198387))

(assert (=> d!542940 m!2197413))

(assert (=> b!1776620 d!542940))

(declare-fun d!542942 () Bool)

(declare-fun lt!689587 () Int)

(assert (=> d!542942 (= lt!689587 (size!15548 (list!7953 lt!689221)))))

(declare-fun size!15549 (Conc!6509) Int)

(assert (=> d!542942 (= lt!689587 (size!15549 (c!289167 lt!689221)))))

(assert (=> d!542942 (= (size!15547 lt!689221) lt!689587)))

(declare-fun bs!405000 () Bool)

(assert (= bs!405000 d!542942))

(assert (=> bs!405000 m!2197473))

(assert (=> bs!405000 m!2197473))

(declare-fun m!2198389 () Bool)

(assert (=> bs!405000 m!2198389))

(declare-fun m!2198391 () Bool)

(assert (=> bs!405000 m!2198391))

(assert (=> b!1776610 d!542942))

(declare-fun d!542944 () Bool)

(assert (=> d!542944 (= (apply!5303 (transformation!3503 (rule!5563 (_1!10985 lt!689238))) lt!689221) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221))))

(declare-fun b_lambda!58071 () Bool)

(assert (=> (not b_lambda!58071) (not d!542944)))

(assert (=> d!542944 t!166025))

(declare-fun b_and!135849 () Bool)

(assert (= b_and!135843 (and (=> t!166025 result!129674) b_and!135849)))

(assert (=> d!542944 t!166027))

(declare-fun b_and!135851 () Bool)

(assert (= b_and!135845 (and (=> t!166027 result!129678) b_and!135851)))

(assert (=> d!542944 t!166029))

(declare-fun b_and!135853 () Bool)

(assert (= b_and!135847 (and (=> t!166029 result!129680) b_and!135853)))

(assert (=> d!542944 m!2197413))

(assert (=> b!1776610 d!542944))

(declare-fun d!542946 () Bool)

(assert (=> d!542946 (= (seqFromList!2472 (originalCharacters!4317 (_1!10985 lt!689238))) (fromListB!1132 (originalCharacters!4317 (_1!10985 lt!689238))))))

(declare-fun bs!405001 () Bool)

(assert (= bs!405001 d!542946))

(declare-fun m!2198393 () Bool)

(assert (=> bs!405001 m!2198393))

(assert (=> b!1776610 d!542946))

(declare-fun b!1777334 () Bool)

(declare-fun e!1137358 () Bool)

(assert (=> b!1777334 (= e!1137358 true)))

(declare-fun d!542948 () Bool)

(assert (=> d!542948 e!1137358))

(assert (= d!542948 b!1777334))

(declare-fun order!12575 () Int)

(declare-fun lambda!70580 () Int)

(declare-fun dynLambda!9567 (Int Int) Int)

(assert (=> b!1777334 (< (dynLambda!9562 order!12567 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) (dynLambda!9567 order!12575 lambda!70580))))

(assert (=> b!1777334 (< (dynLambda!9564 order!12571 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) (dynLambda!9567 order!12575 lambda!70580))))

(assert (=> d!542948 (= (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (seqFromList!2472 (originalCharacters!4317 (_1!10985 lt!689238)))))))

(declare-fun lt!689590 () Unit!33808)

(declare-fun Forall2of!143 (Int BalanceConc!12962 BalanceConc!12962) Unit!33808)

(assert (=> d!542948 (= lt!689590 (Forall2of!143 lambda!70580 lt!689221 (seqFromList!2472 (originalCharacters!4317 (_1!10985 lt!689238)))))))

(assert (=> d!542948 (= (list!7953 lt!689221) (list!7953 (seqFromList!2472 (originalCharacters!4317 (_1!10985 lt!689238)))))))

(assert (=> d!542948 (= (lemmaEqSameImage!414 (transformation!3503 (rule!5563 (_1!10985 lt!689238))) lt!689221 (seqFromList!2472 (originalCharacters!4317 (_1!10985 lt!689238)))) lt!689590)))

(declare-fun b_lambda!58073 () Bool)

(assert (=> (not b_lambda!58073) (not d!542948)))

(assert (=> d!542948 t!166025))

(declare-fun b_and!135855 () Bool)

(assert (= b_and!135849 (and (=> t!166025 result!129674) b_and!135855)))

(assert (=> d!542948 t!166027))

(declare-fun b_and!135857 () Bool)

(assert (= b_and!135851 (and (=> t!166027 result!129678) b_and!135857)))

(assert (=> d!542948 t!166029))

(declare-fun b_and!135859 () Bool)

(assert (= b_and!135853 (and (=> t!166029 result!129680) b_and!135859)))

(declare-fun b_lambda!58075 () Bool)

(assert (=> (not b_lambda!58075) (not d!542948)))

(declare-fun tb!107859 () Bool)

(declare-fun t!166090 () Bool)

(assert (=> (and b!1776633 (= (toValue!5030 (transformation!3503 (h!24970 rules!3447))) (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) t!166090) tb!107859))

(declare-fun result!129746 () Bool)

(assert (=> tb!107859 (= result!129746 (inv!21 (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (seqFromList!2472 (originalCharacters!4317 (_1!10985 lt!689238))))))))

(declare-fun m!2198395 () Bool)

(assert (=> tb!107859 m!2198395))

(assert (=> d!542948 t!166090))

(declare-fun b_and!135861 () Bool)

(assert (= b_and!135855 (and (=> t!166090 result!129746) b_and!135861)))

(declare-fun t!166092 () Bool)

(declare-fun tb!107861 () Bool)

(assert (=> (and b!1776634 (= (toValue!5030 (transformation!3503 rule!422)) (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) t!166092) tb!107861))

(declare-fun result!129748 () Bool)

(assert (= result!129748 result!129746))

(assert (=> d!542948 t!166092))

(declare-fun b_and!135863 () Bool)

(assert (= b_and!135857 (and (=> t!166092 result!129748) b_and!135863)))

(declare-fun t!166094 () Bool)

(declare-fun tb!107863 () Bool)

(assert (=> (and b!1776623 (= (toValue!5030 (transformation!3503 (rule!5563 token!523))) (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) t!166094) tb!107863))

(declare-fun result!129750 () Bool)

(assert (= result!129750 result!129746))

(assert (=> d!542948 t!166094))

(declare-fun b_and!135865 () Bool)

(assert (= b_and!135859 (and (=> t!166094 result!129750) b_and!135865)))

(assert (=> d!542948 m!2197407))

(declare-fun m!2198397 () Bool)

(assert (=> d!542948 m!2198397))

(assert (=> d!542948 m!2197407))

(declare-fun m!2198399 () Bool)

(assert (=> d!542948 m!2198399))

(assert (=> d!542948 m!2197407))

(declare-fun m!2198401 () Bool)

(assert (=> d!542948 m!2198401))

(assert (=> d!542948 m!2197473))

(assert (=> d!542948 m!2197413))

(assert (=> b!1776610 d!542948))

(declare-fun d!542950 () Bool)

(assert (=> d!542950 (= (size!15546 (_1!10985 lt!689238)) (size!15548 (originalCharacters!4317 (_1!10985 lt!689238))))))

(declare-fun Unit!33818 () Unit!33808)

(assert (=> d!542950 (= (lemmaCharactersSize!561 (_1!10985 lt!689238)) Unit!33818)))

(declare-fun bs!405002 () Bool)

(assert (= bs!405002 d!542950))

(declare-fun m!2198403 () Bool)

(assert (=> bs!405002 m!2198403))

(assert (=> b!1776610 d!542950))

(declare-fun d!542952 () Bool)

(assert (=> d!542952 (= (get!5997 lt!689220) (v!25510 lt!689220))))

(assert (=> b!1776611 d!542952))

(declare-fun b!1777335 () Bool)

(declare-fun res!800856 () Bool)

(declare-fun e!1137362 () Bool)

(assert (=> b!1777335 (=> res!800856 e!1137362)))

(assert (=> b!1777335 (= res!800856 (not ((_ is IntegerValue!10781) (value!109508 token!523))))))

(declare-fun e!1137360 () Bool)

(assert (=> b!1777335 (= e!1137360 e!1137362)))

(declare-fun d!542954 () Bool)

(declare-fun c!289284 () Bool)

(assert (=> d!542954 (= c!289284 ((_ is IntegerValue!10779) (value!109508 token!523)))))

(declare-fun e!1137361 () Bool)

(assert (=> d!542954 (= (inv!21 (value!109508 token!523)) e!1137361)))

(declare-fun b!1777336 () Bool)

(assert (=> b!1777336 (= e!1137361 (inv!16 (value!109508 token!523)))))

(declare-fun b!1777337 () Bool)

(assert (=> b!1777337 (= e!1137361 e!1137360)))

(declare-fun c!289285 () Bool)

(assert (=> b!1777337 (= c!289285 ((_ is IntegerValue!10780) (value!109508 token!523)))))

(declare-fun b!1777338 () Bool)

(assert (=> b!1777338 (= e!1137362 (inv!15 (value!109508 token!523)))))

(declare-fun b!1777339 () Bool)

(assert (=> b!1777339 (= e!1137360 (inv!17 (value!109508 token!523)))))

(assert (= (and d!542954 c!289284) b!1777336))

(assert (= (and d!542954 (not c!289284)) b!1777337))

(assert (= (and b!1777337 c!289285) b!1777339))

(assert (= (and b!1777337 (not c!289285)) b!1777335))

(assert (= (and b!1777335 (not res!800856)) b!1777338))

(declare-fun m!2198405 () Bool)

(assert (=> b!1777336 m!2198405))

(declare-fun m!2198407 () Bool)

(assert (=> b!1777338 m!2198407))

(declare-fun m!2198409 () Bool)

(assert (=> b!1777339 m!2198409))

(assert (=> b!1776632 d!542954))

(declare-fun d!542956 () Bool)

(declare-fun lt!689591 () Int)

(assert (=> d!542956 (>= lt!689591 0)))

(declare-fun e!1137363 () Int)

(assert (=> d!542956 (= lt!689591 e!1137363)))

(declare-fun c!289286 () Bool)

(assert (=> d!542956 (= c!289286 ((_ is Nil!19568) lt!689246))))

(assert (=> d!542956 (= (size!15548 lt!689246) lt!689591)))

(declare-fun b!1777340 () Bool)

(assert (=> b!1777340 (= e!1137363 0)))

(declare-fun b!1777341 () Bool)

(assert (=> b!1777341 (= e!1137363 (+ 1 (size!15548 (t!166037 lt!689246))))))

(assert (= (and d!542956 c!289286) b!1777340))

(assert (= (and d!542956 (not c!289286)) b!1777341))

(declare-fun m!2198411 () Bool)

(assert (=> b!1777341 m!2198411))

(assert (=> b!1776612 d!542956))

(declare-fun b!1777342 () Bool)

(declare-fun res!800858 () Bool)

(declare-fun e!1137368 () Bool)

(assert (=> b!1777342 (=> res!800858 e!1137368)))

(assert (=> b!1777342 (= res!800858 (not ((_ is ElementMatch!4831) (regex!3503 rule!422))))))

(declare-fun e!1137367 () Bool)

(assert (=> b!1777342 (= e!1137367 e!1137368)))

(declare-fun b!1777343 () Bool)

(declare-fun e!1137370 () Bool)

(assert (=> b!1777343 (= e!1137370 (matchR!2304 (derivativeStep!1252 (regex!3503 rule!422) (head!4142 lt!689246)) (tail!2659 lt!689246)))))

(declare-fun b!1777344 () Bool)

(declare-fun e!1137366 () Bool)

(assert (=> b!1777344 (= e!1137366 e!1137367)))

(declare-fun c!289289 () Bool)

(assert (=> b!1777344 (= c!289289 ((_ is EmptyLang!4831) (regex!3503 rule!422)))))

(declare-fun bm!111222 () Bool)

(declare-fun call!111227 () Bool)

(assert (=> bm!111222 (= call!111227 (isEmpty!12362 lt!689246))))

(declare-fun b!1777345 () Bool)

(declare-fun lt!689592 () Bool)

(assert (=> b!1777345 (= e!1137366 (= lt!689592 call!111227))))

(declare-fun b!1777346 () Bool)

(declare-fun res!800857 () Bool)

(assert (=> b!1777346 (=> res!800857 e!1137368)))

(declare-fun e!1137365 () Bool)

(assert (=> b!1777346 (= res!800857 e!1137365)))

(declare-fun res!800863 () Bool)

(assert (=> b!1777346 (=> (not res!800863) (not e!1137365))))

(assert (=> b!1777346 (= res!800863 lt!689592)))

(declare-fun b!1777347 () Bool)

(assert (=> b!1777347 (= e!1137367 (not lt!689592))))

(declare-fun b!1777348 () Bool)

(assert (=> b!1777348 (= e!1137370 (nullable!1483 (regex!3503 rule!422)))))

(declare-fun b!1777350 () Bool)

(declare-fun e!1137364 () Bool)

(declare-fun e!1137369 () Bool)

(assert (=> b!1777350 (= e!1137364 e!1137369)))

(declare-fun res!800862 () Bool)

(assert (=> b!1777350 (=> res!800862 e!1137369)))

(assert (=> b!1777350 (= res!800862 call!111227)))

(declare-fun b!1777351 () Bool)

(declare-fun res!800859 () Bool)

(assert (=> b!1777351 (=> (not res!800859) (not e!1137365))))

(assert (=> b!1777351 (= res!800859 (not call!111227))))

(declare-fun b!1777352 () Bool)

(assert (=> b!1777352 (= e!1137369 (not (= (head!4142 lt!689246) (c!289166 (regex!3503 rule!422)))))))

(declare-fun b!1777353 () Bool)

(assert (=> b!1777353 (= e!1137368 e!1137364)))

(declare-fun res!800861 () Bool)

(assert (=> b!1777353 (=> (not res!800861) (not e!1137364))))

(assert (=> b!1777353 (= res!800861 (not lt!689592))))

(declare-fun b!1777354 () Bool)

(declare-fun res!800860 () Bool)

(assert (=> b!1777354 (=> res!800860 e!1137369)))

(assert (=> b!1777354 (= res!800860 (not (isEmpty!12362 (tail!2659 lt!689246))))))

(declare-fun b!1777355 () Bool)

(assert (=> b!1777355 (= e!1137365 (= (head!4142 lt!689246) (c!289166 (regex!3503 rule!422))))))

(declare-fun b!1777349 () Bool)

(declare-fun res!800864 () Bool)

(assert (=> b!1777349 (=> (not res!800864) (not e!1137365))))

(assert (=> b!1777349 (= res!800864 (isEmpty!12362 (tail!2659 lt!689246)))))

(declare-fun d!542958 () Bool)

(assert (=> d!542958 e!1137366))

(declare-fun c!289287 () Bool)

(assert (=> d!542958 (= c!289287 ((_ is EmptyExpr!4831) (regex!3503 rule!422)))))

(assert (=> d!542958 (= lt!689592 e!1137370)))

(declare-fun c!289288 () Bool)

(assert (=> d!542958 (= c!289288 (isEmpty!12362 lt!689246))))

(assert (=> d!542958 (validRegex!1957 (regex!3503 rule!422))))

(assert (=> d!542958 (= (matchR!2304 (regex!3503 rule!422) lt!689246) lt!689592)))

(assert (= (and d!542958 c!289288) b!1777348))

(assert (= (and d!542958 (not c!289288)) b!1777343))

(assert (= (and d!542958 c!289287) b!1777345))

(assert (= (and d!542958 (not c!289287)) b!1777344))

(assert (= (and b!1777344 c!289289) b!1777347))

(assert (= (and b!1777344 (not c!289289)) b!1777342))

(assert (= (and b!1777342 (not res!800858)) b!1777346))

(assert (= (and b!1777346 res!800863) b!1777351))

(assert (= (and b!1777351 res!800859) b!1777349))

(assert (= (and b!1777349 res!800864) b!1777355))

(assert (= (and b!1777346 (not res!800857)) b!1777353))

(assert (= (and b!1777353 res!800861) b!1777350))

(assert (= (and b!1777350 (not res!800862)) b!1777354))

(assert (= (and b!1777354 (not res!800860)) b!1777352))

(assert (= (or b!1777345 b!1777350 b!1777351) bm!111222))

(declare-fun m!2198413 () Bool)

(assert (=> bm!111222 m!2198413))

(assert (=> d!542958 m!2198413))

(declare-fun m!2198415 () Bool)

(assert (=> d!542958 m!2198415))

(assert (=> b!1777343 m!2198115))

(assert (=> b!1777343 m!2198115))

(declare-fun m!2198417 () Bool)

(assert (=> b!1777343 m!2198417))

(assert (=> b!1777343 m!2198117))

(assert (=> b!1777343 m!2198417))

(assert (=> b!1777343 m!2198117))

(declare-fun m!2198419 () Bool)

(assert (=> b!1777343 m!2198419))

(assert (=> b!1777355 m!2198115))

(assert (=> b!1777349 m!2198117))

(assert (=> b!1777349 m!2198117))

(declare-fun m!2198421 () Bool)

(assert (=> b!1777349 m!2198421))

(assert (=> b!1777354 m!2198117))

(assert (=> b!1777354 m!2198117))

(assert (=> b!1777354 m!2198421))

(assert (=> b!1777352 m!2198115))

(declare-fun m!2198423 () Bool)

(assert (=> b!1777348 m!2198423))

(assert (=> b!1776613 d!542958))

(declare-fun d!542960 () Bool)

(declare-fun res!800869 () Bool)

(declare-fun e!1137373 () Bool)

(assert (=> d!542960 (=> (not res!800869) (not e!1137373))))

(assert (=> d!542960 (= res!800869 (validRegex!1957 (regex!3503 rule!422)))))

(assert (=> d!542960 (= (ruleValid!1001 thiss!24550 rule!422) e!1137373)))

(declare-fun b!1777360 () Bool)

(declare-fun res!800870 () Bool)

(assert (=> b!1777360 (=> (not res!800870) (not e!1137373))))

(assert (=> b!1777360 (= res!800870 (not (nullable!1483 (regex!3503 rule!422))))))

(declare-fun b!1777361 () Bool)

(assert (=> b!1777361 (= e!1137373 (not (= (tag!3891 rule!422) (String!22298 ""))))))

(assert (= (and d!542960 res!800869) b!1777360))

(assert (= (and b!1777360 res!800870) b!1777361))

(assert (=> d!542960 m!2198415))

(assert (=> b!1777360 m!2198423))

(assert (=> b!1776613 d!542960))

(declare-fun d!542962 () Bool)

(assert (=> d!542962 (ruleValid!1001 thiss!24550 rule!422)))

(declare-fun lt!689595 () Unit!33808)

(declare-fun choose!11113 (LexerInterface!3132 Rule!6806 List!19639) Unit!33808)

(assert (=> d!542962 (= lt!689595 (choose!11113 thiss!24550 rule!422 rules!3447))))

(assert (=> d!542962 (contains!3535 rules!3447 rule!422)))

(assert (=> d!542962 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!524 thiss!24550 rule!422 rules!3447) lt!689595)))

(declare-fun bs!405003 () Bool)

(assert (= bs!405003 d!542962))

(assert (=> bs!405003 m!2197509))

(declare-fun m!2198425 () Bool)

(assert (=> bs!405003 m!2198425))

(assert (=> bs!405003 m!2197435))

(assert (=> b!1776613 d!542962))

(declare-fun d!542964 () Bool)

(assert (=> d!542964 (= (isEmpty!12362 suffix!1421) ((_ is Nil!19568) suffix!1421))))

(assert (=> b!1776635 d!542964))

(declare-fun d!542966 () Bool)

(assert (=> d!542966 (= (inv!25447 (tag!3891 (rule!5563 token!523))) (= (mod (str.len (value!109507 (tag!3891 (rule!5563 token!523)))) 2) 0))))

(assert (=> b!1776614 d!542966))

(declare-fun d!542968 () Bool)

(declare-fun res!800871 () Bool)

(declare-fun e!1137374 () Bool)

(assert (=> d!542968 (=> (not res!800871) (not e!1137374))))

(assert (=> d!542968 (= res!800871 (semiInverseModEq!1397 (toChars!4889 (transformation!3503 (rule!5563 token!523))) (toValue!5030 (transformation!3503 (rule!5563 token!523)))))))

(assert (=> d!542968 (= (inv!25452 (transformation!3503 (rule!5563 token!523))) e!1137374)))

(declare-fun b!1777362 () Bool)

(assert (=> b!1777362 (= e!1137374 (equivClasses!1338 (toChars!4889 (transformation!3503 (rule!5563 token!523))) (toValue!5030 (transformation!3503 (rule!5563 token!523)))))))

(assert (= (and d!542968 res!800871) b!1777362))

(declare-fun m!2198427 () Bool)

(assert (=> d!542968 m!2198427))

(declare-fun m!2198429 () Bool)

(assert (=> b!1777362 m!2198429))

(assert (=> b!1776614 d!542968))

(declare-fun d!542970 () Bool)

(declare-fun lt!689596 () Bool)

(assert (=> d!542970 (= lt!689596 (select (content!2841 rules!3447) rule!422))))

(declare-fun e!1137376 () Bool)

(assert (=> d!542970 (= lt!689596 e!1137376)))

(declare-fun res!800873 () Bool)

(assert (=> d!542970 (=> (not res!800873) (not e!1137376))))

(assert (=> d!542970 (= res!800873 ((_ is Cons!19569) rules!3447))))

(assert (=> d!542970 (= (contains!3535 rules!3447 rule!422) lt!689596)))

(declare-fun b!1777363 () Bool)

(declare-fun e!1137375 () Bool)

(assert (=> b!1777363 (= e!1137376 e!1137375)))

(declare-fun res!800872 () Bool)

(assert (=> b!1777363 (=> res!800872 e!1137375)))

(assert (=> b!1777363 (= res!800872 (= (h!24970 rules!3447) rule!422))))

(declare-fun b!1777364 () Bool)

(assert (=> b!1777364 (= e!1137375 (contains!3535 (t!166038 rules!3447) rule!422))))

(assert (= (and d!542970 res!800873) b!1777363))

(assert (= (and b!1777363 (not res!800872)) b!1777364))

(assert (=> d!542970 m!2197607))

(declare-fun m!2198431 () Bool)

(assert (=> d!542970 m!2198431))

(declare-fun m!2198433 () Bool)

(assert (=> b!1777364 m!2198433))

(assert (=> b!1776615 d!542970))

(declare-fun d!542972 () Bool)

(declare-fun c!289290 () Bool)

(assert (=> d!542972 (= c!289290 ((_ is Node!6509) (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221)))))))

(declare-fun e!1137377 () Bool)

(assert (=> d!542972 (= (inv!25454 (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221)))) e!1137377)))

(declare-fun b!1777365 () Bool)

(assert (=> b!1777365 (= e!1137377 (inv!25456 (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221)))))))

(declare-fun b!1777366 () Bool)

(declare-fun e!1137378 () Bool)

(assert (=> b!1777366 (= e!1137377 e!1137378)))

(declare-fun res!800874 () Bool)

(assert (=> b!1777366 (= res!800874 (not ((_ is Leaf!9481) (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221))))))))

(assert (=> b!1777366 (=> res!800874 e!1137378)))

(declare-fun b!1777367 () Bool)

(assert (=> b!1777367 (= e!1137378 (inv!25457 (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221)))))))

(assert (= (and d!542972 c!289290) b!1777365))

(assert (= (and d!542972 (not c!289290)) b!1777366))

(assert (= (and b!1777366 (not res!800874)) b!1777367))

(declare-fun m!2198435 () Bool)

(assert (=> b!1777365 m!2198435))

(declare-fun m!2198437 () Bool)

(assert (=> b!1777367 m!2198437))

(assert (=> b!1776659 d!542972))

(declare-fun d!542974 () Bool)

(declare-fun lt!689597 () Int)

(assert (=> d!542974 (= lt!689597 (size!15548 (list!7953 lt!689230)))))

(assert (=> d!542974 (= lt!689597 (size!15549 (c!289167 lt!689230)))))

(assert (=> d!542974 (= (size!15547 lt!689230) lt!689597)))

(declare-fun bs!405004 () Bool)

(assert (= bs!405004 d!542974))

(assert (=> bs!405004 m!2197441))

(assert (=> bs!405004 m!2197441))

(declare-fun m!2198439 () Bool)

(assert (=> bs!405004 m!2198439))

(declare-fun m!2198441 () Bool)

(assert (=> bs!405004 m!2198441))

(assert (=> b!1776636 d!542974))

(declare-fun b!1777368 () Bool)

(declare-fun res!800876 () Bool)

(declare-fun e!1137383 () Bool)

(assert (=> b!1777368 (=> res!800876 e!1137383)))

(assert (=> b!1777368 (= res!800876 (not ((_ is ElementMatch!4831) lt!689229)))))

(declare-fun e!1137382 () Bool)

(assert (=> b!1777368 (= e!1137382 e!1137383)))

(declare-fun b!1777369 () Bool)

(declare-fun e!1137385 () Bool)

(assert (=> b!1777369 (= e!1137385 (matchR!2304 (derivativeStep!1252 lt!689229 (head!4142 lt!689246)) (tail!2659 lt!689246)))))

(declare-fun b!1777370 () Bool)

(declare-fun e!1137381 () Bool)

(assert (=> b!1777370 (= e!1137381 e!1137382)))

(declare-fun c!289293 () Bool)

(assert (=> b!1777370 (= c!289293 ((_ is EmptyLang!4831) lt!689229))))

(declare-fun bm!111223 () Bool)

(declare-fun call!111228 () Bool)

(assert (=> bm!111223 (= call!111228 (isEmpty!12362 lt!689246))))

(declare-fun b!1777371 () Bool)

(declare-fun lt!689598 () Bool)

(assert (=> b!1777371 (= e!1137381 (= lt!689598 call!111228))))

(declare-fun b!1777372 () Bool)

(declare-fun res!800875 () Bool)

(assert (=> b!1777372 (=> res!800875 e!1137383)))

(declare-fun e!1137380 () Bool)

(assert (=> b!1777372 (= res!800875 e!1137380)))

(declare-fun res!800881 () Bool)

(assert (=> b!1777372 (=> (not res!800881) (not e!1137380))))

(assert (=> b!1777372 (= res!800881 lt!689598)))

(declare-fun b!1777373 () Bool)

(assert (=> b!1777373 (= e!1137382 (not lt!689598))))

(declare-fun b!1777374 () Bool)

(assert (=> b!1777374 (= e!1137385 (nullable!1483 lt!689229))))

(declare-fun b!1777376 () Bool)

(declare-fun e!1137379 () Bool)

(declare-fun e!1137384 () Bool)

(assert (=> b!1777376 (= e!1137379 e!1137384)))

(declare-fun res!800880 () Bool)

(assert (=> b!1777376 (=> res!800880 e!1137384)))

(assert (=> b!1777376 (= res!800880 call!111228)))

(declare-fun b!1777377 () Bool)

(declare-fun res!800877 () Bool)

(assert (=> b!1777377 (=> (not res!800877) (not e!1137380))))

(assert (=> b!1777377 (= res!800877 (not call!111228))))

(declare-fun b!1777378 () Bool)

(assert (=> b!1777378 (= e!1137384 (not (= (head!4142 lt!689246) (c!289166 lt!689229))))))

(declare-fun b!1777379 () Bool)

(assert (=> b!1777379 (= e!1137383 e!1137379)))

(declare-fun res!800879 () Bool)

(assert (=> b!1777379 (=> (not res!800879) (not e!1137379))))

(assert (=> b!1777379 (= res!800879 (not lt!689598))))

(declare-fun b!1777380 () Bool)

(declare-fun res!800878 () Bool)

(assert (=> b!1777380 (=> res!800878 e!1137384)))

(assert (=> b!1777380 (= res!800878 (not (isEmpty!12362 (tail!2659 lt!689246))))))

(declare-fun b!1777381 () Bool)

(assert (=> b!1777381 (= e!1137380 (= (head!4142 lt!689246) (c!289166 lt!689229)))))

(declare-fun b!1777375 () Bool)

(declare-fun res!800882 () Bool)

(assert (=> b!1777375 (=> (not res!800882) (not e!1137380))))

(assert (=> b!1777375 (= res!800882 (isEmpty!12362 (tail!2659 lt!689246)))))

(declare-fun d!542976 () Bool)

(assert (=> d!542976 e!1137381))

(declare-fun c!289291 () Bool)

(assert (=> d!542976 (= c!289291 ((_ is EmptyExpr!4831) lt!689229))))

(assert (=> d!542976 (= lt!689598 e!1137385)))

(declare-fun c!289292 () Bool)

(assert (=> d!542976 (= c!289292 (isEmpty!12362 lt!689246))))

(assert (=> d!542976 (validRegex!1957 lt!689229)))

(assert (=> d!542976 (= (matchR!2304 lt!689229 lt!689246) lt!689598)))

(assert (= (and d!542976 c!289292) b!1777374))

(assert (= (and d!542976 (not c!289292)) b!1777369))

(assert (= (and d!542976 c!289291) b!1777371))

(assert (= (and d!542976 (not c!289291)) b!1777370))

(assert (= (and b!1777370 c!289293) b!1777373))

(assert (= (and b!1777370 (not c!289293)) b!1777368))

(assert (= (and b!1777368 (not res!800876)) b!1777372))

(assert (= (and b!1777372 res!800881) b!1777377))

(assert (= (and b!1777377 res!800877) b!1777375))

(assert (= (and b!1777375 res!800882) b!1777381))

(assert (= (and b!1777372 (not res!800875)) b!1777379))

(assert (= (and b!1777379 res!800879) b!1777376))

(assert (= (and b!1777376 (not res!800880)) b!1777380))

(assert (= (and b!1777380 (not res!800878)) b!1777378))

(assert (= (or b!1777371 b!1777376 b!1777377) bm!111223))

(assert (=> bm!111223 m!2198413))

(assert (=> d!542976 m!2198413))

(assert (=> d!542976 m!2197903))

(assert (=> b!1777369 m!2198115))

(assert (=> b!1777369 m!2198115))

(declare-fun m!2198443 () Bool)

(assert (=> b!1777369 m!2198443))

(assert (=> b!1777369 m!2198117))

(assert (=> b!1777369 m!2198443))

(assert (=> b!1777369 m!2198117))

(declare-fun m!2198445 () Bool)

(assert (=> b!1777369 m!2198445))

(assert (=> b!1777381 m!2198115))

(assert (=> b!1777375 m!2198117))

(assert (=> b!1777375 m!2198117))

(assert (=> b!1777375 m!2198421))

(assert (=> b!1777380 m!2198117))

(assert (=> b!1777380 m!2198117))

(assert (=> b!1777380 m!2198421))

(assert (=> b!1777378 m!2198115))

(assert (=> b!1777374 m!2197911))

(assert (=> b!1776636 d!542976))

(declare-fun d!542978 () Bool)

(assert (=> d!542978 (matchR!2304 (rulesRegex!859 thiss!24550 rules!3447) (list!7953 (charsOf!2152 token!523)))))

(declare-fun lt!689599 () Unit!33808)

(assert (=> d!542978 (= lt!689599 (choose!11109 thiss!24550 rules!3447 lt!689246 token!523 rule!422 Nil!19568))))

(assert (=> d!542978 (not (isEmpty!12363 rules!3447))))

(assert (=> d!542978 (= (lemmaMaxPrefixThenMatchesRulesRegex!210 thiss!24550 rules!3447 lt!689246 token!523 rule!422 Nil!19568) lt!689599)))

(declare-fun bs!405005 () Bool)

(assert (= bs!405005 d!542978))

(assert (=> bs!405005 m!2197449))

(assert (=> bs!405005 m!2197523))

(assert (=> bs!405005 m!2197523))

(declare-fun m!2198447 () Bool)

(assert (=> bs!405005 m!2198447))

(declare-fun m!2198449 () Bool)

(assert (=> bs!405005 m!2198449))

(assert (=> bs!405005 m!2197443))

(declare-fun m!2198451 () Bool)

(assert (=> bs!405005 m!2198451))

(assert (=> bs!405005 m!2197443))

(assert (=> bs!405005 m!2198447))

(assert (=> b!1776636 d!542978))

(declare-fun d!542980 () Bool)

(declare-fun c!289296 () Bool)

(assert (=> d!542980 (= c!289296 (isEmpty!12362 lt!689241))))

(declare-fun e!1137388 () Bool)

(assert (=> d!542980 (= (prefixMatch!714 lt!689229 lt!689241) e!1137388)))

(declare-fun b!1777386 () Bool)

(declare-fun lostCause!594 (Regex!4831) Bool)

(assert (=> b!1777386 (= e!1137388 (not (lostCause!594 lt!689229)))))

(declare-fun b!1777387 () Bool)

(assert (=> b!1777387 (= e!1137388 (prefixMatch!714 (derivativeStep!1252 lt!689229 (head!4142 lt!689241)) (tail!2659 lt!689241)))))

(assert (= (and d!542980 c!289296) b!1777386))

(assert (= (and d!542980 (not c!289296)) b!1777387))

(declare-fun m!2198453 () Bool)

(assert (=> d!542980 m!2198453))

(declare-fun m!2198455 () Bool)

(assert (=> b!1777386 m!2198455))

(assert (=> b!1777387 m!2197861))

(assert (=> b!1777387 m!2197861))

(declare-fun m!2198457 () Bool)

(assert (=> b!1777387 m!2198457))

(assert (=> b!1777387 m!2197865))

(assert (=> b!1777387 m!2198457))

(assert (=> b!1777387 m!2197865))

(declare-fun m!2198459 () Bool)

(assert (=> b!1777387 m!2198459))

(assert (=> b!1776626 d!542980))

(declare-fun b!1777390 () Bool)

(declare-fun res!800884 () Bool)

(declare-fun e!1137390 () Bool)

(assert (=> b!1777390 (=> (not res!800884) (not e!1137390))))

(declare-fun lt!689600 () List!19638)

(assert (=> b!1777390 (= res!800884 (= (size!15548 lt!689600) (+ (size!15548 lt!689246) (size!15548 (Cons!19568 (head!4142 suffix!1421) Nil!19568)))))))

(declare-fun d!542982 () Bool)

(assert (=> d!542982 e!1137390))

(declare-fun res!800883 () Bool)

(assert (=> d!542982 (=> (not res!800883) (not e!1137390))))

(assert (=> d!542982 (= res!800883 (= (content!2843 lt!689600) ((_ map or) (content!2843 lt!689246) (content!2843 (Cons!19568 (head!4142 suffix!1421) Nil!19568)))))))

(declare-fun e!1137389 () List!19638)

(assert (=> d!542982 (= lt!689600 e!1137389)))

(declare-fun c!289297 () Bool)

(assert (=> d!542982 (= c!289297 ((_ is Nil!19568) lt!689246))))

(assert (=> d!542982 (= (++!5327 lt!689246 (Cons!19568 (head!4142 suffix!1421) Nil!19568)) lt!689600)))

(declare-fun b!1777389 () Bool)

(assert (=> b!1777389 (= e!1137389 (Cons!19568 (h!24969 lt!689246) (++!5327 (t!166037 lt!689246) (Cons!19568 (head!4142 suffix!1421) Nil!19568))))))

(declare-fun b!1777388 () Bool)

(assert (=> b!1777388 (= e!1137389 (Cons!19568 (head!4142 suffix!1421) Nil!19568))))

(declare-fun b!1777391 () Bool)

(assert (=> b!1777391 (= e!1137390 (or (not (= (Cons!19568 (head!4142 suffix!1421) Nil!19568) Nil!19568)) (= lt!689600 lt!689246)))))

(assert (= (and d!542982 c!289297) b!1777388))

(assert (= (and d!542982 (not c!289297)) b!1777389))

(assert (= (and d!542982 res!800883) b!1777390))

(assert (= (and b!1777390 res!800884) b!1777391))

(declare-fun m!2198461 () Bool)

(assert (=> b!1777390 m!2198461))

(assert (=> b!1777390 m!2197489))

(declare-fun m!2198463 () Bool)

(assert (=> b!1777390 m!2198463))

(declare-fun m!2198465 () Bool)

(assert (=> d!542982 m!2198465))

(assert (=> d!542982 m!2197935))

(declare-fun m!2198467 () Bool)

(assert (=> d!542982 m!2198467))

(declare-fun m!2198469 () Bool)

(assert (=> b!1777389 m!2198469))

(assert (=> b!1776626 d!542982))

(declare-fun d!542984 () Bool)

(assert (=> d!542984 (= (head!4142 suffix!1421) (h!24969 suffix!1421))))

(assert (=> b!1776626 d!542984))

(declare-fun d!542986 () Bool)

(declare-fun lt!689603 () Unit!33808)

(declare-fun lemma!407 (List!19639 LexerInterface!3132 List!19639) Unit!33808)

(assert (=> d!542986 (= lt!689603 (lemma!407 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!70583 () Int)

(declare-datatypes ((List!19644 0))(
  ( (Nil!19574) (Cons!19574 (h!24975 Regex!4831) (t!166119 List!19644)) )
))
(declare-fun generalisedUnion!415 (List!19644) Regex!4831)

(declare-fun map!4038 (List!19639 Int) List!19644)

(assert (=> d!542986 (= (rulesRegex!859 thiss!24550 rules!3447) (generalisedUnion!415 (map!4038 rules!3447 lambda!70583)))))

(declare-fun bs!405006 () Bool)

(assert (= bs!405006 d!542986))

(declare-fun m!2198471 () Bool)

(assert (=> bs!405006 m!2198471))

(declare-fun m!2198473 () Bool)

(assert (=> bs!405006 m!2198473))

(assert (=> bs!405006 m!2198473))

(declare-fun m!2198475 () Bool)

(assert (=> bs!405006 m!2198475))

(assert (=> b!1776626 d!542986))

(declare-fun d!542988 () Bool)

(declare-fun res!800887 () Bool)

(declare-fun e!1137393 () Bool)

(assert (=> d!542988 (=> (not res!800887) (not e!1137393))))

(declare-fun rulesValid!1324 (LexerInterface!3132 List!19639) Bool)

(assert (=> d!542988 (= res!800887 (rulesValid!1324 thiss!24550 rules!3447))))

(assert (=> d!542988 (= (rulesInvariant!2801 thiss!24550 rules!3447) e!1137393)))

(declare-fun b!1777394 () Bool)

(declare-datatypes ((List!19645 0))(
  ( (Nil!19575) (Cons!19575 (h!24976 String!22297) (t!166120 List!19645)) )
))
(declare-fun noDuplicateTag!1324 (LexerInterface!3132 List!19639 List!19645) Bool)

(assert (=> b!1777394 (= e!1137393 (noDuplicateTag!1324 thiss!24550 rules!3447 Nil!19575))))

(assert (= (and d!542988 res!800887) b!1777394))

(declare-fun m!2198477 () Bool)

(assert (=> d!542988 m!2198477))

(declare-fun m!2198479 () Bool)

(assert (=> b!1777394 m!2198479))

(assert (=> b!1776627 d!542988))

(declare-fun d!542990 () Bool)

(assert (=> d!542990 (= (isDefined!3372 lt!689220) (not (isEmpty!12365 lt!689220)))))

(declare-fun bs!405007 () Bool)

(assert (= bs!405007 d!542990))

(declare-fun m!2198481 () Bool)

(assert (=> bs!405007 m!2198481))

(assert (=> b!1776628 d!542990))

(declare-fun b!1777395 () Bool)

(declare-fun res!800890 () Bool)

(declare-fun e!1137394 () Bool)

(assert (=> b!1777395 (=> (not res!800890) (not e!1137394))))

(declare-fun lt!689607 () Option!4028)

(assert (=> b!1777395 (= res!800890 (< (size!15548 (_2!10985 (get!5997 lt!689607))) (size!15548 lt!689246)))))

(declare-fun b!1777396 () Bool)

(assert (=> b!1777396 (= e!1137394 (contains!3535 rules!3447 (rule!5563 (_1!10985 (get!5997 lt!689607)))))))

(declare-fun b!1777397 () Bool)

(declare-fun res!800894 () Bool)

(assert (=> b!1777397 (=> (not res!800894) (not e!1137394))))

(assert (=> b!1777397 (= res!800894 (= (value!109508 (_1!10985 (get!5997 lt!689607))) (apply!5303 (transformation!3503 (rule!5563 (_1!10985 (get!5997 lt!689607)))) (seqFromList!2472 (originalCharacters!4317 (_1!10985 (get!5997 lt!689607)))))))))

(declare-fun b!1777398 () Bool)

(declare-fun res!800891 () Bool)

(assert (=> b!1777398 (=> (not res!800891) (not e!1137394))))

(assert (=> b!1777398 (= res!800891 (matchR!2304 (regex!3503 (rule!5563 (_1!10985 (get!5997 lt!689607)))) (list!7953 (charsOf!2152 (_1!10985 (get!5997 lt!689607))))))))

(declare-fun b!1777399 () Bool)

(declare-fun res!800892 () Bool)

(assert (=> b!1777399 (=> (not res!800892) (not e!1137394))))

(assert (=> b!1777399 (= res!800892 (= (++!5327 (list!7953 (charsOf!2152 (_1!10985 (get!5997 lt!689607)))) (_2!10985 (get!5997 lt!689607))) lt!689246))))

(declare-fun b!1777400 () Bool)

(declare-fun e!1137395 () Option!4028)

(declare-fun call!111229 () Option!4028)

(assert (=> b!1777400 (= e!1137395 call!111229)))

(declare-fun b!1777401 () Bool)

(declare-fun lt!689604 () Option!4028)

(declare-fun lt!689608 () Option!4028)

(assert (=> b!1777401 (= e!1137395 (ite (and ((_ is None!4027) lt!689604) ((_ is None!4027) lt!689608)) None!4027 (ite ((_ is None!4027) lt!689608) lt!689604 (ite ((_ is None!4027) lt!689604) lt!689608 (ite (>= (size!15546 (_1!10985 (v!25510 lt!689604))) (size!15546 (_1!10985 (v!25510 lt!689608)))) lt!689604 lt!689608)))))))

(assert (=> b!1777401 (= lt!689604 call!111229)))

(assert (=> b!1777401 (= lt!689608 (maxPrefix!1686 thiss!24550 (t!166038 rules!3447) lt!689246))))

(declare-fun b!1777402 () Bool)

(declare-fun e!1137396 () Bool)

(assert (=> b!1777402 (= e!1137396 e!1137394)))

(declare-fun res!800888 () Bool)

(assert (=> b!1777402 (=> (not res!800888) (not e!1137394))))

(assert (=> b!1777402 (= res!800888 (isDefined!3372 lt!689607))))

(declare-fun bm!111224 () Bool)

(assert (=> bm!111224 (= call!111229 (maxPrefixOneRule!1055 thiss!24550 (h!24970 rules!3447) lt!689246))))

(declare-fun d!542992 () Bool)

(assert (=> d!542992 e!1137396))

(declare-fun res!800889 () Bool)

(assert (=> d!542992 (=> res!800889 e!1137396)))

(assert (=> d!542992 (= res!800889 (isEmpty!12365 lt!689607))))

(assert (=> d!542992 (= lt!689607 e!1137395)))

(declare-fun c!289298 () Bool)

(assert (=> d!542992 (= c!289298 (and ((_ is Cons!19569) rules!3447) ((_ is Nil!19569) (t!166038 rules!3447))))))

(declare-fun lt!689605 () Unit!33808)

(declare-fun lt!689606 () Unit!33808)

(assert (=> d!542992 (= lt!689605 lt!689606)))

(assert (=> d!542992 (isPrefix!1743 lt!689246 lt!689246)))

(assert (=> d!542992 (= lt!689606 (lemmaIsPrefixRefl!1152 lt!689246 lt!689246))))

(assert (=> d!542992 (rulesValidInductive!1188 thiss!24550 rules!3447)))

(assert (=> d!542992 (= (maxPrefix!1686 thiss!24550 rules!3447 lt!689246) lt!689607)))

(declare-fun b!1777403 () Bool)

(declare-fun res!800893 () Bool)

(assert (=> b!1777403 (=> (not res!800893) (not e!1137394))))

(assert (=> b!1777403 (= res!800893 (= (list!7953 (charsOf!2152 (_1!10985 (get!5997 lt!689607)))) (originalCharacters!4317 (_1!10985 (get!5997 lt!689607)))))))

(assert (= (and d!542992 c!289298) b!1777400))

(assert (= (and d!542992 (not c!289298)) b!1777401))

(assert (= (or b!1777400 b!1777401) bm!111224))

(assert (= (and d!542992 (not res!800889)) b!1777402))

(assert (= (and b!1777402 res!800888) b!1777403))

(assert (= (and b!1777403 res!800893) b!1777395))

(assert (= (and b!1777395 res!800890) b!1777399))

(assert (= (and b!1777399 res!800892) b!1777397))

(assert (= (and b!1777397 res!800894) b!1777398))

(assert (= (and b!1777398 res!800891) b!1777396))

(declare-fun m!2198483 () Bool)

(assert (=> b!1777403 m!2198483))

(declare-fun m!2198485 () Bool)

(assert (=> b!1777403 m!2198485))

(assert (=> b!1777403 m!2198485))

(declare-fun m!2198487 () Bool)

(assert (=> b!1777403 m!2198487))

(assert (=> b!1777396 m!2198483))

(declare-fun m!2198489 () Bool)

(assert (=> b!1777396 m!2198489))

(declare-fun m!2198491 () Bool)

(assert (=> d!542992 m!2198491))

(declare-fun m!2198493 () Bool)

(assert (=> d!542992 m!2198493))

(declare-fun m!2198495 () Bool)

(assert (=> d!542992 m!2198495))

(assert (=> d!542992 m!2198333))

(assert (=> b!1777399 m!2198483))

(assert (=> b!1777399 m!2198485))

(assert (=> b!1777399 m!2198485))

(assert (=> b!1777399 m!2198487))

(assert (=> b!1777399 m!2198487))

(declare-fun m!2198497 () Bool)

(assert (=> b!1777399 m!2198497))

(assert (=> b!1777397 m!2198483))

(declare-fun m!2198499 () Bool)

(assert (=> b!1777397 m!2198499))

(assert (=> b!1777397 m!2198499))

(declare-fun m!2198501 () Bool)

(assert (=> b!1777397 m!2198501))

(declare-fun m!2198503 () Bool)

(assert (=> b!1777401 m!2198503))

(assert (=> b!1777395 m!2198483))

(declare-fun m!2198505 () Bool)

(assert (=> b!1777395 m!2198505))

(assert (=> b!1777395 m!2197489))

(declare-fun m!2198507 () Bool)

(assert (=> bm!111224 m!2198507))

(declare-fun m!2198509 () Bool)

(assert (=> b!1777402 m!2198509))

(assert (=> b!1777398 m!2198483))

(assert (=> b!1777398 m!2198485))

(assert (=> b!1777398 m!2198485))

(assert (=> b!1777398 m!2198487))

(assert (=> b!1777398 m!2198487))

(declare-fun m!2198511 () Bool)

(assert (=> b!1777398 m!2198511))

(assert (=> b!1776628 d!542992))

(declare-fun d!542994 () Bool)

(assert (=> d!542994 (= (list!7953 lt!689230) (list!7957 (c!289167 lt!689230)))))

(declare-fun bs!405008 () Bool)

(assert (= bs!405008 d!542994))

(declare-fun m!2198513 () Bool)

(assert (=> bs!405008 m!2198513))

(assert (=> b!1776628 d!542994))

(declare-fun d!542996 () Bool)

(declare-fun lt!689609 () BalanceConc!12962)

(assert (=> d!542996 (= (list!7953 lt!689609) (originalCharacters!4317 token!523))))

(assert (=> d!542996 (= lt!689609 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 token!523))) (value!109508 token!523)))))

(assert (=> d!542996 (= (charsOf!2152 token!523) lt!689609)))

(declare-fun b_lambda!58077 () Bool)

(assert (=> (not b_lambda!58077) (not d!542996)))

(assert (=> d!542996 t!166084))

(declare-fun b_and!135867 () Bool)

(assert (= b_and!135837 (and (=> t!166084 result!129740) b_and!135867)))

(assert (=> d!542996 t!166086))

(declare-fun b_and!135869 () Bool)

(assert (= b_and!135839 (and (=> t!166086 result!129742) b_and!135869)))

(assert (=> d!542996 t!166088))

(declare-fun b_and!135871 () Bool)

(assert (= b_and!135841 (and (=> t!166088 result!129744) b_and!135871)))

(declare-fun m!2198515 () Bool)

(assert (=> d!542996 m!2198515))

(assert (=> d!542996 m!2198369))

(assert (=> b!1776628 d!542996))

(declare-fun b!1777404 () Bool)

(declare-fun res!800896 () Bool)

(declare-fun e!1137401 () Bool)

(assert (=> b!1777404 (=> res!800896 e!1137401)))

(assert (=> b!1777404 (= res!800896 (not ((_ is ElementMatch!4831) (regex!3503 lt!689239))))))

(declare-fun e!1137400 () Bool)

(assert (=> b!1777404 (= e!1137400 e!1137401)))

(declare-fun b!1777405 () Bool)

(declare-fun e!1137403 () Bool)

(assert (=> b!1777405 (= e!1137403 (matchR!2304 (derivativeStep!1252 (regex!3503 lt!689239) (head!4142 (list!7953 (charsOf!2152 (_1!10985 lt!689238))))) (tail!2659 (list!7953 (charsOf!2152 (_1!10985 lt!689238))))))))

(declare-fun b!1777406 () Bool)

(declare-fun e!1137399 () Bool)

(assert (=> b!1777406 (= e!1137399 e!1137400)))

(declare-fun c!289301 () Bool)

(assert (=> b!1777406 (= c!289301 ((_ is EmptyLang!4831) (regex!3503 lt!689239)))))

(declare-fun bm!111225 () Bool)

(declare-fun call!111230 () Bool)

(assert (=> bm!111225 (= call!111230 (isEmpty!12362 (list!7953 (charsOf!2152 (_1!10985 lt!689238)))))))

(declare-fun b!1777407 () Bool)

(declare-fun lt!689610 () Bool)

(assert (=> b!1777407 (= e!1137399 (= lt!689610 call!111230))))

(declare-fun b!1777408 () Bool)

(declare-fun res!800895 () Bool)

(assert (=> b!1777408 (=> res!800895 e!1137401)))

(declare-fun e!1137398 () Bool)

(assert (=> b!1777408 (= res!800895 e!1137398)))

(declare-fun res!800901 () Bool)

(assert (=> b!1777408 (=> (not res!800901) (not e!1137398))))

(assert (=> b!1777408 (= res!800901 lt!689610)))

(declare-fun b!1777409 () Bool)

(assert (=> b!1777409 (= e!1137400 (not lt!689610))))

(declare-fun b!1777410 () Bool)

(assert (=> b!1777410 (= e!1137403 (nullable!1483 (regex!3503 lt!689239)))))

(declare-fun b!1777412 () Bool)

(declare-fun e!1137397 () Bool)

(declare-fun e!1137402 () Bool)

(assert (=> b!1777412 (= e!1137397 e!1137402)))

(declare-fun res!800900 () Bool)

(assert (=> b!1777412 (=> res!800900 e!1137402)))

(assert (=> b!1777412 (= res!800900 call!111230)))

(declare-fun b!1777413 () Bool)

(declare-fun res!800897 () Bool)

(assert (=> b!1777413 (=> (not res!800897) (not e!1137398))))

(assert (=> b!1777413 (= res!800897 (not call!111230))))

(declare-fun b!1777414 () Bool)

(assert (=> b!1777414 (= e!1137402 (not (= (head!4142 (list!7953 (charsOf!2152 (_1!10985 lt!689238)))) (c!289166 (regex!3503 lt!689239)))))))

(declare-fun b!1777415 () Bool)

(assert (=> b!1777415 (= e!1137401 e!1137397)))

(declare-fun res!800899 () Bool)

(assert (=> b!1777415 (=> (not res!800899) (not e!1137397))))

(assert (=> b!1777415 (= res!800899 (not lt!689610))))

(declare-fun b!1777416 () Bool)

(declare-fun res!800898 () Bool)

(assert (=> b!1777416 (=> res!800898 e!1137402)))

(assert (=> b!1777416 (= res!800898 (not (isEmpty!12362 (tail!2659 (list!7953 (charsOf!2152 (_1!10985 lt!689238)))))))))

(declare-fun b!1777417 () Bool)

(assert (=> b!1777417 (= e!1137398 (= (head!4142 (list!7953 (charsOf!2152 (_1!10985 lt!689238)))) (c!289166 (regex!3503 lt!689239))))))

(declare-fun b!1777411 () Bool)

(declare-fun res!800902 () Bool)

(assert (=> b!1777411 (=> (not res!800902) (not e!1137398))))

(assert (=> b!1777411 (= res!800902 (isEmpty!12362 (tail!2659 (list!7953 (charsOf!2152 (_1!10985 lt!689238))))))))

(declare-fun d!542998 () Bool)

(assert (=> d!542998 e!1137399))

(declare-fun c!289299 () Bool)

(assert (=> d!542998 (= c!289299 ((_ is EmptyExpr!4831) (regex!3503 lt!689239)))))

(assert (=> d!542998 (= lt!689610 e!1137403)))

(declare-fun c!289300 () Bool)

(assert (=> d!542998 (= c!289300 (isEmpty!12362 (list!7953 (charsOf!2152 (_1!10985 lt!689238)))))))

(assert (=> d!542998 (validRegex!1957 (regex!3503 lt!689239))))

(assert (=> d!542998 (= (matchR!2304 (regex!3503 lt!689239) (list!7953 (charsOf!2152 (_1!10985 lt!689238)))) lt!689610)))

(assert (= (and d!542998 c!289300) b!1777410))

(assert (= (and d!542998 (not c!289300)) b!1777405))

(assert (= (and d!542998 c!289299) b!1777407))

(assert (= (and d!542998 (not c!289299)) b!1777406))

(assert (= (and b!1777406 c!289301) b!1777409))

(assert (= (and b!1777406 (not c!289301)) b!1777404))

(assert (= (and b!1777404 (not res!800896)) b!1777408))

(assert (= (and b!1777408 res!800901) b!1777413))

(assert (= (and b!1777413 res!800897) b!1777411))

(assert (= (and b!1777411 res!800902) b!1777417))

(assert (= (and b!1777408 (not res!800895)) b!1777415))

(assert (= (and b!1777415 res!800899) b!1777412))

(assert (= (and b!1777412 (not res!800900)) b!1777416))

(assert (= (and b!1777416 (not res!800898)) b!1777414))

(assert (= (or b!1777407 b!1777412 b!1777413) bm!111225))

(assert (=> bm!111225 m!2197397))

(declare-fun m!2198517 () Bool)

(assert (=> bm!111225 m!2198517))

(assert (=> d!542998 m!2197397))

(assert (=> d!542998 m!2198517))

(declare-fun m!2198519 () Bool)

(assert (=> d!542998 m!2198519))

(assert (=> b!1777405 m!2197397))

(declare-fun m!2198521 () Bool)

(assert (=> b!1777405 m!2198521))

(assert (=> b!1777405 m!2198521))

(declare-fun m!2198523 () Bool)

(assert (=> b!1777405 m!2198523))

(assert (=> b!1777405 m!2197397))

(declare-fun m!2198525 () Bool)

(assert (=> b!1777405 m!2198525))

(assert (=> b!1777405 m!2198523))

(assert (=> b!1777405 m!2198525))

(declare-fun m!2198527 () Bool)

(assert (=> b!1777405 m!2198527))

(assert (=> b!1777417 m!2197397))

(assert (=> b!1777417 m!2198521))

(assert (=> b!1777411 m!2197397))

(assert (=> b!1777411 m!2198525))

(assert (=> b!1777411 m!2198525))

(declare-fun m!2198529 () Bool)

(assert (=> b!1777411 m!2198529))

(assert (=> b!1777416 m!2197397))

(assert (=> b!1777416 m!2198525))

(assert (=> b!1777416 m!2198525))

(assert (=> b!1777416 m!2198529))

(assert (=> b!1777414 m!2197397))

(assert (=> b!1777414 m!2198521))

(declare-fun m!2198531 () Bool)

(assert (=> b!1777410 m!2198531))

(assert (=> b!1776629 d!542998))

(declare-fun d!543000 () Bool)

(assert (=> d!543000 (= (list!7953 (charsOf!2152 (_1!10985 lt!689238))) (list!7957 (c!289167 (charsOf!2152 (_1!10985 lt!689238)))))))

(declare-fun bs!405009 () Bool)

(assert (= bs!405009 d!543000))

(declare-fun m!2198533 () Bool)

(assert (=> bs!405009 m!2198533))

(assert (=> b!1776629 d!543000))

(assert (=> b!1776629 d!542888))

(declare-fun d!543002 () Bool)

(assert (=> d!543002 (= (get!5998 lt!689244) (v!25511 lt!689244))))

(assert (=> b!1776629 d!543002))

(declare-fun d!543004 () Bool)

(declare-fun res!800903 () Bool)

(declare-fun e!1137404 () Bool)

(assert (=> d!543004 (=> (not res!800903) (not e!1137404))))

(assert (=> d!543004 (= res!800903 (validRegex!1957 (regex!3503 (rule!5563 (_1!10985 lt!689238)))))))

(assert (=> d!543004 (= (ruleValid!1001 thiss!24550 (rule!5563 (_1!10985 lt!689238))) e!1137404)))

(declare-fun b!1777418 () Bool)

(declare-fun res!800904 () Bool)

(assert (=> b!1777418 (=> (not res!800904) (not e!1137404))))

(assert (=> b!1777418 (= res!800904 (not (nullable!1483 (regex!3503 (rule!5563 (_1!10985 lt!689238))))))))

(declare-fun b!1777419 () Bool)

(assert (=> b!1777419 (= e!1137404 (not (= (tag!3891 (rule!5563 (_1!10985 lt!689238))) (String!22298 ""))))))

(assert (= (and d!543004 res!800903) b!1777418))

(assert (= (and b!1777418 res!800904) b!1777419))

(assert (=> d!543004 m!2198375))

(assert (=> b!1777418 m!2198381))

(assert (=> b!1776609 d!543004))

(declare-fun d!543006 () Bool)

(assert (=> d!543006 (isPrefix!1743 lt!689236 lt!689236)))

(declare-fun lt!689613 () Unit!33808)

(declare-fun choose!11115 (List!19638 List!19638) Unit!33808)

(assert (=> d!543006 (= lt!689613 (choose!11115 lt!689236 lt!689236))))

(assert (=> d!543006 (= (lemmaIsPrefixRefl!1152 lt!689236 lt!689236) lt!689613)))

(declare-fun bs!405010 () Bool)

(assert (= bs!405010 d!543006))

(assert (=> bs!405010 m!2197497))

(declare-fun m!2198535 () Bool)

(assert (=> bs!405010 m!2198535))

(assert (=> b!1776609 d!543006))

(declare-fun b!1777423 () Bool)

(declare-fun e!1137407 () Bool)

(assert (=> b!1777423 (= e!1137407 (>= (size!15548 lt!689236) (size!15548 lt!689236)))))

(declare-fun b!1777420 () Bool)

(declare-fun e!1137406 () Bool)

(declare-fun e!1137405 () Bool)

(assert (=> b!1777420 (= e!1137406 e!1137405)))

(declare-fun res!800908 () Bool)

(assert (=> b!1777420 (=> (not res!800908) (not e!1137405))))

(assert (=> b!1777420 (= res!800908 (not ((_ is Nil!19568) lt!689236)))))

(declare-fun b!1777421 () Bool)

(declare-fun res!800907 () Bool)

(assert (=> b!1777421 (=> (not res!800907) (not e!1137405))))

(assert (=> b!1777421 (= res!800907 (= (head!4142 lt!689236) (head!4142 lt!689236)))))

(declare-fun d!543008 () Bool)

(assert (=> d!543008 e!1137407))

(declare-fun res!800906 () Bool)

(assert (=> d!543008 (=> res!800906 e!1137407)))

(declare-fun lt!689614 () Bool)

(assert (=> d!543008 (= res!800906 (not lt!689614))))

(assert (=> d!543008 (= lt!689614 e!1137406)))

(declare-fun res!800905 () Bool)

(assert (=> d!543008 (=> res!800905 e!1137406)))

(assert (=> d!543008 (= res!800905 ((_ is Nil!19568) lt!689236))))

(assert (=> d!543008 (= (isPrefix!1743 lt!689236 lt!689236) lt!689614)))

(declare-fun b!1777422 () Bool)

(assert (=> b!1777422 (= e!1137405 (isPrefix!1743 (tail!2659 lt!689236) (tail!2659 lt!689236)))))

(assert (= (and d!543008 (not res!800905)) b!1777420))

(assert (= (and b!1777420 res!800908) b!1777421))

(assert (= (and b!1777421 res!800907) b!1777422))

(assert (= (and d!543008 (not res!800906)) b!1777423))

(assert (=> b!1777423 m!2197777))

(assert (=> b!1777423 m!2197777))

(assert (=> b!1777421 m!2197949))

(assert (=> b!1777421 m!2197949))

(assert (=> b!1777422 m!2197839))

(assert (=> b!1777422 m!2197839))

(assert (=> b!1777422 m!2197839))

(assert (=> b!1777422 m!2197839))

(declare-fun m!2198537 () Bool)

(assert (=> b!1777422 m!2198537))

(assert (=> b!1776609 d!543008))

(declare-fun d!543010 () Bool)

(assert (=> d!543010 (ruleValid!1001 thiss!24550 (rule!5563 (_1!10985 lt!689238)))))

(declare-fun lt!689615 () Unit!33808)

(assert (=> d!543010 (= lt!689615 (choose!11113 thiss!24550 (rule!5563 (_1!10985 lt!689238)) rules!3447))))

(assert (=> d!543010 (contains!3535 rules!3447 (rule!5563 (_1!10985 lt!689238)))))

(assert (=> d!543010 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!524 thiss!24550 (rule!5563 (_1!10985 lt!689238)) rules!3447) lt!689615)))

(declare-fun bs!405011 () Bool)

(assert (= bs!405011 d!543010))

(assert (=> bs!405011 m!2197503))

(declare-fun m!2198539 () Bool)

(assert (=> bs!405011 m!2198539))

(assert (=> bs!405011 m!2197525))

(assert (=> b!1776609 d!543010))

(declare-fun bs!405012 () Bool)

(declare-fun d!543012 () Bool)

(assert (= bs!405012 (and d!543012 b!1776621)))

(declare-fun lambda!70584 () Int)

(assert (=> bs!405012 (= lambda!70584 lambda!70564)))

(declare-fun bs!405013 () Bool)

(assert (= bs!405013 (and d!543012 d!542940)))

(assert (=> bs!405013 (= lambda!70584 lambda!70577)))

(declare-fun b!1777424 () Bool)

(declare-fun e!1137408 () Bool)

(assert (=> b!1777424 (= e!1137408 true)))

(assert (=> d!543012 e!1137408))

(assert (= d!543012 b!1777424))

(assert (=> b!1777424 (< (dynLambda!9562 order!12567 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) (dynLambda!9563 order!12569 lambda!70584))))

(assert (=> b!1777424 (< (dynLambda!9564 order!12571 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) (dynLambda!9563 order!12569 lambda!70584))))

(assert (=> d!543012 (= (list!7953 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689217))) (list!7953 lt!689217))))

(declare-fun lt!689616 () Unit!33808)

(assert (=> d!543012 (= lt!689616 (ForallOf!335 lambda!70584 lt!689217))))

(assert (=> d!543012 (= (lemmaSemiInverse!641 (transformation!3503 (rule!5563 (_1!10985 lt!689238))) lt!689217) lt!689616)))

(declare-fun b_lambda!58079 () Bool)

(assert (=> (not b_lambda!58079) (not d!543012)))

(declare-fun t!166096 () Bool)

(declare-fun tb!107865 () Bool)

(assert (=> (and b!1776633 (= (toChars!4889 (transformation!3503 (h!24970 rules!3447))) (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) t!166096) tb!107865))

(declare-fun tp!503437 () Bool)

(declare-fun b!1777425 () Bool)

(declare-fun e!1137409 () Bool)

(assert (=> b!1777425 (= e!1137409 (and (inv!25454 (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689217)))) tp!503437))))

(declare-fun result!129752 () Bool)

(assert (=> tb!107865 (= result!129752 (and (inv!25455 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689217))) e!1137409))))

(assert (= tb!107865 b!1777425))

(declare-fun m!2198541 () Bool)

(assert (=> b!1777425 m!2198541))

(declare-fun m!2198543 () Bool)

(assert (=> tb!107865 m!2198543))

(assert (=> d!543012 t!166096))

(declare-fun b_and!135873 () Bool)

(assert (= b_and!135867 (and (=> t!166096 result!129752) b_and!135873)))

(declare-fun tb!107867 () Bool)

(declare-fun t!166098 () Bool)

(assert (=> (and b!1776634 (= (toChars!4889 (transformation!3503 rule!422)) (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) t!166098) tb!107867))

(declare-fun result!129754 () Bool)

(assert (= result!129754 result!129752))

(assert (=> d!543012 t!166098))

(declare-fun b_and!135875 () Bool)

(assert (= b_and!135869 (and (=> t!166098 result!129754) b_and!135875)))

(declare-fun t!166100 () Bool)

(declare-fun tb!107869 () Bool)

(assert (=> (and b!1776623 (= (toChars!4889 (transformation!3503 (rule!5563 token!523))) (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) t!166100) tb!107869))

(declare-fun result!129756 () Bool)

(assert (= result!129756 result!129752))

(assert (=> d!543012 t!166100))

(declare-fun b_and!135877 () Bool)

(assert (= b_and!135871 (and (=> t!166100 result!129756) b_and!135877)))

(declare-fun b_lambda!58081 () Bool)

(assert (=> (not b_lambda!58081) (not d!543012)))

(assert (=> d!543012 t!166046))

(declare-fun b_and!135879 () Bool)

(assert (= b_and!135861 (and (=> t!166046 result!129694) b_and!135879)))

(assert (=> d!543012 t!166048))

(declare-fun b_and!135881 () Bool)

(assert (= b_and!135863 (and (=> t!166048 result!129696) b_and!135881)))

(assert (=> d!543012 t!166050))

(declare-fun b_and!135883 () Bool)

(assert (= b_and!135865 (and (=> t!166050 result!129698) b_and!135883)))

(declare-fun m!2198545 () Bool)

(assert (=> d!543012 m!2198545))

(assert (=> d!543012 m!2197807))

(declare-fun m!2198547 () Bool)

(assert (=> d!543012 m!2198547))

(assert (=> d!543012 m!2198547))

(declare-fun m!2198549 () Bool)

(assert (=> d!543012 m!2198549))

(declare-fun m!2198551 () Bool)

(assert (=> d!543012 m!2198551))

(assert (=> d!543012 m!2197807))

(assert (=> b!1776609 d!543012))

(declare-fun b!1777430 () Bool)

(declare-fun e!1137412 () Bool)

(declare-fun tp!503440 () Bool)

(assert (=> b!1777430 (= e!1137412 (and tp_is_empty!7905 tp!503440))))

(assert (=> b!1776637 (= tp!503370 e!1137412)))

(assert (= (and b!1776637 ((_ is Cons!19568) (t!166037 suffix!1421))) b!1777430))

(declare-fun b!1777439 () Bool)

(declare-fun e!1137418 () Bool)

(declare-fun tp!503448 () Bool)

(declare-fun tp!503447 () Bool)

(assert (=> b!1777439 (= e!1137418 (and (inv!25454 (left!15678 (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (value!109508 (_1!10985 lt!689238)))))) tp!503447 (inv!25454 (right!16008 (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (value!109508 (_1!10985 lt!689238)))))) tp!503448))))

(declare-fun b!1777441 () Bool)

(declare-fun e!1137417 () Bool)

(declare-fun tp!503449 () Bool)

(assert (=> b!1777441 (= e!1137417 tp!503449)))

(declare-fun b!1777440 () Bool)

(declare-fun inv!25461 (IArray!13023) Bool)

(assert (=> b!1777440 (= e!1137418 (and (inv!25461 (xs!9385 (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (value!109508 (_1!10985 lt!689238)))))) e!1137417))))

(assert (=> b!1776662 (= tp!503380 (and (inv!25454 (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (value!109508 (_1!10985 lt!689238))))) e!1137418))))

(assert (= (and b!1776662 ((_ is Node!6509) (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (value!109508 (_1!10985 lt!689238)))))) b!1777439))

(assert (= b!1777440 b!1777441))

(assert (= (and b!1776662 ((_ is Leaf!9481) (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (value!109508 (_1!10985 lt!689238)))))) b!1777440))

(declare-fun m!2198553 () Bool)

(assert (=> b!1777439 m!2198553))

(declare-fun m!2198555 () Bool)

(assert (=> b!1777439 m!2198555))

(declare-fun m!2198557 () Bool)

(assert (=> b!1777440 m!2198557))

(assert (=> b!1776662 m!2197361))

(declare-fun b!1777452 () Bool)

(declare-fun e!1137421 () Bool)

(assert (=> b!1777452 (= e!1137421 tp_is_empty!7905)))

(declare-fun b!1777455 () Bool)

(declare-fun tp!503462 () Bool)

(declare-fun tp!503460 () Bool)

(assert (=> b!1777455 (= e!1137421 (and tp!503462 tp!503460))))

(declare-fun b!1777453 () Bool)

(declare-fun tp!503463 () Bool)

(declare-fun tp!503464 () Bool)

(assert (=> b!1777453 (= e!1137421 (and tp!503463 tp!503464))))

(declare-fun b!1777454 () Bool)

(declare-fun tp!503461 () Bool)

(assert (=> b!1777454 (= e!1137421 tp!503461)))

(assert (=> b!1776642 (= tp!503365 e!1137421)))

(assert (= (and b!1776642 ((_ is ElementMatch!4831) (regex!3503 rule!422))) b!1777452))

(assert (= (and b!1776642 ((_ is Concat!8425) (regex!3503 rule!422))) b!1777453))

(assert (= (and b!1776642 ((_ is Star!4831) (regex!3503 rule!422))) b!1777454))

(assert (= (and b!1776642 ((_ is Union!4831) (regex!3503 rule!422))) b!1777455))

(declare-fun b!1777456 () Bool)

(declare-fun e!1137422 () Bool)

(declare-fun tp!503465 () Bool)

(assert (=> b!1777456 (= e!1137422 (and tp_is_empty!7905 tp!503465))))

(assert (=> b!1776632 (= tp!503369 e!1137422)))

(assert (= (and b!1776632 ((_ is Cons!19568) (originalCharacters!4317 token!523))) b!1777456))

(declare-fun b!1777457 () Bool)

(declare-fun e!1137423 () Bool)

(assert (=> b!1777457 (= e!1137423 tp_is_empty!7905)))

(declare-fun b!1777460 () Bool)

(declare-fun tp!503468 () Bool)

(declare-fun tp!503466 () Bool)

(assert (=> b!1777460 (= e!1137423 (and tp!503468 tp!503466))))

(declare-fun b!1777458 () Bool)

(declare-fun tp!503469 () Bool)

(declare-fun tp!503470 () Bool)

(assert (=> b!1777458 (= e!1137423 (and tp!503469 tp!503470))))

(declare-fun b!1777459 () Bool)

(declare-fun tp!503467 () Bool)

(assert (=> b!1777459 (= e!1137423 tp!503467)))

(assert (=> b!1776624 (= tp!503367 e!1137423)))

(assert (= (and b!1776624 ((_ is ElementMatch!4831) (regex!3503 (h!24970 rules!3447)))) b!1777457))

(assert (= (and b!1776624 ((_ is Concat!8425) (regex!3503 (h!24970 rules!3447)))) b!1777458))

(assert (= (and b!1776624 ((_ is Star!4831) (regex!3503 (h!24970 rules!3447)))) b!1777459))

(assert (= (and b!1776624 ((_ is Union!4831) (regex!3503 (h!24970 rules!3447)))) b!1777460))

(declare-fun b!1777461 () Bool)

(declare-fun e!1137424 () Bool)

(assert (=> b!1777461 (= e!1137424 tp_is_empty!7905)))

(declare-fun b!1777464 () Bool)

(declare-fun tp!503473 () Bool)

(declare-fun tp!503471 () Bool)

(assert (=> b!1777464 (= e!1137424 (and tp!503473 tp!503471))))

(declare-fun b!1777462 () Bool)

(declare-fun tp!503474 () Bool)

(declare-fun tp!503475 () Bool)

(assert (=> b!1777462 (= e!1137424 (and tp!503474 tp!503475))))

(declare-fun b!1777463 () Bool)

(declare-fun tp!503472 () Bool)

(assert (=> b!1777463 (= e!1137424 tp!503472)))

(assert (=> b!1776614 (= tp!503366 e!1137424)))

(assert (= (and b!1776614 ((_ is ElementMatch!4831) (regex!3503 (rule!5563 token!523)))) b!1777461))

(assert (= (and b!1776614 ((_ is Concat!8425) (regex!3503 (rule!5563 token!523)))) b!1777462))

(assert (= (and b!1776614 ((_ is Star!4831) (regex!3503 (rule!5563 token!523)))) b!1777463))

(assert (= (and b!1776614 ((_ is Union!4831) (regex!3503 (rule!5563 token!523)))) b!1777464))

(declare-fun b!1777475 () Bool)

(declare-fun b_free!49271 () Bool)

(declare-fun b_next!49975 () Bool)

(assert (=> b!1777475 (= b_free!49271 (not b_next!49975))))

(declare-fun t!166102 () Bool)

(declare-fun tb!107871 () Bool)

(assert (=> (and b!1777475 (= (toValue!5030 (transformation!3503 (h!24970 (t!166038 rules!3447)))) (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) t!166102) tb!107871))

(declare-fun result!129766 () Bool)

(assert (= result!129766 result!129674))

(assert (=> d!542944 t!166102))

(assert (=> d!542940 t!166102))

(declare-fun tb!107873 () Bool)

(declare-fun t!166104 () Bool)

(assert (=> (and b!1777475 (= (toValue!5030 (transformation!3503 (h!24970 (t!166038 rules!3447)))) (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) t!166104) tb!107873))

(declare-fun result!129768 () Bool)

(assert (= result!129768 result!129746))

(assert (=> d!542948 t!166104))

(declare-fun t!166106 () Bool)

(declare-fun tb!107875 () Bool)

(assert (=> (and b!1777475 (= (toValue!5030 (transformation!3503 (h!24970 (t!166038 rules!3447)))) (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) t!166106) tb!107875))

(declare-fun result!129770 () Bool)

(assert (= result!129770 result!129694))

(assert (=> d!543012 t!166106))

(assert (=> d!542948 t!166102))

(assert (=> b!1776620 t!166102))

(assert (=> d!542762 t!166106))

(declare-fun tp!503485 () Bool)

(declare-fun b_and!135885 () Bool)

(assert (=> b!1777475 (= tp!503485 (and (=> t!166106 result!129770) (=> t!166104 result!129768) (=> t!166102 result!129766) b_and!135885))))

(declare-fun b_free!49273 () Bool)

(declare-fun b_next!49977 () Bool)

(assert (=> b!1777475 (= b_free!49273 (not b_next!49977))))

(declare-fun tb!107877 () Bool)

(declare-fun t!166108 () Bool)

(assert (=> (and b!1777475 (= (toChars!4889 (transformation!3503 (h!24970 (t!166038 rules!3447)))) (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) t!166108) tb!107877))

(declare-fun result!129772 () Bool)

(assert (= result!129772 result!129666))

(assert (=> d!542940 t!166108))

(declare-fun t!166110 () Bool)

(declare-fun tb!107879 () Bool)

(assert (=> (and b!1777475 (= (toChars!4889 (transformation!3503 (h!24970 (t!166038 rules!3447)))) (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) t!166110) tb!107879))

(declare-fun result!129774 () Bool)

(assert (= result!129774 result!129682))

(assert (=> b!1776622 t!166110))

(declare-fun tb!107881 () Bool)

(declare-fun t!166112 () Bool)

(assert (=> (and b!1777475 (= (toChars!4889 (transformation!3503 (h!24970 (t!166038 rules!3447)))) (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238))))) t!166112) tb!107881))

(declare-fun result!129776 () Bool)

(assert (= result!129776 result!129752))

(assert (=> d!543012 t!166112))

(declare-fun t!166114 () Bool)

(declare-fun tb!107883 () Bool)

(assert (=> (and b!1777475 (= (toChars!4889 (transformation!3503 (h!24970 (t!166038 rules!3447)))) (toChars!4889 (transformation!3503 (rule!5563 token!523)))) t!166114) tb!107883))

(declare-fun result!129778 () Bool)

(assert (= result!129778 result!129740))

(assert (=> d!542996 t!166114))

(assert (=> b!1776620 t!166108))

(assert (=> b!1777306 t!166114))

(assert (=> d!542888 t!166110))

(declare-fun b_and!135887 () Bool)

(declare-fun tp!503486 () Bool)

(assert (=> b!1777475 (= tp!503486 (and (=> t!166114 result!129778) (=> t!166110 result!129774) (=> t!166112 result!129776) (=> t!166108 result!129772) b_and!135887))))

(declare-fun e!1137434 () Bool)

(assert (=> b!1777475 (= e!1137434 (and tp!503485 tp!503486))))

(declare-fun tp!503487 () Bool)

(declare-fun b!1777474 () Bool)

(declare-fun e!1137435 () Bool)

(assert (=> b!1777474 (= e!1137435 (and tp!503487 (inv!25447 (tag!3891 (h!24970 (t!166038 rules!3447)))) (inv!25452 (transformation!3503 (h!24970 (t!166038 rules!3447)))) e!1137434))))

(declare-fun b!1777473 () Bool)

(declare-fun e!1137433 () Bool)

(declare-fun tp!503484 () Bool)

(assert (=> b!1777473 (= e!1137433 (and e!1137435 tp!503484))))

(assert (=> b!1776631 (= tp!503373 e!1137433)))

(assert (= b!1777474 b!1777475))

(assert (= b!1777473 b!1777474))

(assert (= (and b!1776631 ((_ is Cons!19569) (t!166038 rules!3447))) b!1777473))

(declare-fun m!2198559 () Bool)

(assert (=> b!1777474 m!2198559))

(declare-fun m!2198561 () Bool)

(assert (=> b!1777474 m!2198561))

(declare-fun b!1777476 () Bool)

(declare-fun tp!503489 () Bool)

(declare-fun tp!503488 () Bool)

(declare-fun e!1137438 () Bool)

(assert (=> b!1777476 (= e!1137438 (and (inv!25454 (left!15678 (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221))))) tp!503488 (inv!25454 (right!16008 (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221))))) tp!503489))))

(declare-fun b!1777478 () Bool)

(declare-fun e!1137437 () Bool)

(declare-fun tp!503490 () Bool)

(assert (=> b!1777478 (= e!1137437 tp!503490)))

(declare-fun b!1777477 () Bool)

(assert (=> b!1777477 (= e!1137438 (and (inv!25461 (xs!9385 (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221))))) e!1137437))))

(assert (=> b!1776659 (= tp!503379 (and (inv!25454 (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221)))) e!1137438))))

(assert (= (and b!1776659 ((_ is Node!6509) (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221))))) b!1777476))

(assert (= b!1777477 b!1777478))

(assert (= (and b!1776659 ((_ is Leaf!9481) (c!289167 (dynLambda!9565 (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) (dynLambda!9566 (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))) lt!689221))))) b!1777477))

(declare-fun m!2198563 () Bool)

(assert (=> b!1777476 m!2198563))

(declare-fun m!2198565 () Bool)

(assert (=> b!1777476 m!2198565))

(declare-fun m!2198567 () Bool)

(assert (=> b!1777477 m!2198567))

(assert (=> b!1776659 m!2197355))

(declare-fun b_lambda!58083 () Bool)

(assert (= b_lambda!58023 (or (and b!1776633 b_free!49257 (= (toChars!4889 (transformation!3503 (h!24970 rules!3447))) (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))))) (and b!1776634 b_free!49261 (= (toChars!4889 (transformation!3503 rule!422)) (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))))) (and b!1776623 b_free!49265 (= (toChars!4889 (transformation!3503 (rule!5563 token!523))) (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))))) (and b!1777475 b_free!49273 (= (toChars!4889 (transformation!3503 (h!24970 (t!166038 rules!3447)))) (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))))) b_lambda!58083)))

(declare-fun b_lambda!58085 () Bool)

(assert (= b_lambda!58077 (or (and b!1776633 b_free!49257 (= (toChars!4889 (transformation!3503 (h!24970 rules!3447))) (toChars!4889 (transformation!3503 (rule!5563 token!523))))) (and b!1776634 b_free!49261 (= (toChars!4889 (transformation!3503 rule!422)) (toChars!4889 (transformation!3503 (rule!5563 token!523))))) (and b!1776623 b_free!49265) (and b!1777475 b_free!49273 (= (toChars!4889 (transformation!3503 (h!24970 (t!166038 rules!3447)))) (toChars!4889 (transformation!3503 (rule!5563 token!523))))) b_lambda!58085)))

(declare-fun b_lambda!58087 () Bool)

(assert (= b_lambda!58027 (or (and b!1776633 b_free!49257 (= (toChars!4889 (transformation!3503 (h!24970 rules!3447))) (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))))) (and b!1776634 b_free!49261 (= (toChars!4889 (transformation!3503 rule!422)) (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))))) (and b!1776623 b_free!49265 (= (toChars!4889 (transformation!3503 (rule!5563 token!523))) (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))))) (and b!1777475 b_free!49273 (= (toChars!4889 (transformation!3503 (h!24970 (t!166038 rules!3447)))) (toChars!4889 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))))) b_lambda!58087)))

(declare-fun b_lambda!58089 () Bool)

(assert (= b_lambda!58025 (or (and b!1776633 b_free!49255 (= (toValue!5030 (transformation!3503 (h!24970 rules!3447))) (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))))) (and b!1776634 b_free!49259 (= (toValue!5030 (transformation!3503 rule!422)) (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))))) (and b!1776623 b_free!49263 (= (toValue!5030 (transformation!3503 (rule!5563 token!523))) (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))))) (and b!1777475 b_free!49271 (= (toValue!5030 (transformation!3503 (h!24970 (t!166038 rules!3447)))) (toValue!5030 (transformation!3503 (rule!5563 (_1!10985 lt!689238)))))) b_lambda!58089)))

(declare-fun b_lambda!58091 () Bool)

(assert (= b_lambda!58065 (or (and b!1776633 b_free!49257 (= (toChars!4889 (transformation!3503 (h!24970 rules!3447))) (toChars!4889 (transformation!3503 (rule!5563 token!523))))) (and b!1776634 b_free!49261 (= (toChars!4889 (transformation!3503 rule!422)) (toChars!4889 (transformation!3503 (rule!5563 token!523))))) (and b!1776623 b_free!49265) (and b!1777475 b_free!49273 (= (toChars!4889 (transformation!3503 (h!24970 (t!166038 rules!3447)))) (toChars!4889 (transformation!3503 (rule!5563 token!523))))) b_lambda!58091)))

(check-sat (not b!1777039) (not d!543000) (not b!1777423) (not b!1777349) (not tb!107853) (not d!542798) (not b!1777352) (not b!1776752) (not d!542986) (not b_next!49959) (not b!1777422) (not b!1776662) tp_is_empty!7905 (not b!1777339) (not d!542980) (not b!1777319) (not b!1777459) (not b!1777101) (not d!542888) (not tb!107815) (not b!1777478) (not d!542708) (not b!1777369) (not b!1777321) (not d!542786) (not b_lambda!58073) (not b!1777402) (not d!542882) (not b!1776921) (not b!1777430) (not d!542804) (not d!542784) (not b!1776952) (not b!1777396) (not d!543010) (not b!1777173) (not b!1776950) (not tb!107865) (not b!1777310) (not d!542960) (not b!1777398) (not d!542766) (not b!1776898) (not d!542808) (not bm!111213) (not b!1777360) (not b!1777343) (not b!1777440) (not b_lambda!58043) (not b!1777397) (not b!1776893) (not b!1777417) (not b!1777292) (not b!1777189) (not b!1776951) (not b!1777410) (not d!543006) (not b!1776904) (not b!1777004) (not d!542994) (not b!1776897) b_and!135887 (not b!1777336) (not b!1777418) (not d!542988) (not b_lambda!58091) (not d!542938) (not b!1777414) (not d!542942) (not b!1776744) (not bm!111220) (not d!542846) (not b!1777405) (not b!1776894) (not b!1776720) b_and!135883 (not b!1777307) (not b!1777174) (not d!542876) (not d!542948) (not b!1777455) (not b!1777367) (not b!1777381) (not b!1777175) (not b_next!49961) (not b!1776701) (not b!1777006) (not d!542688) (not b!1777476) (not d!542898) (not b!1776919) (not b!1777341) (not d!542684) (not b!1777043) (not b!1777286) (not b!1777365) (not b!1776746) (not b_next!49975) (not d!542976) (not b!1777300) (not b!1777421) (not b_lambda!58071) (not b!1777306) (not b!1777453) (not b!1777362) (not b!1777045) (not b!1776704) (not d!542768) (not b_lambda!58081) (not b!1776892) (not b!1777390) (not b_lambda!58087) (not d!542946) (not b!1777454) (not d!542970) (not b!1777001) (not b!1777007) (not b!1777040) (not b_next!49963) (not b!1777458) (not b!1777288) (not d!542674) (not b!1777394) (not b!1777050) (not b!1777094) (not b!1777460) b_and!135879 (not b!1777188) (not b!1776659) (not b!1777474) (not b!1777464) (not b_lambda!58085) (not b!1776699) (not b!1777287) (not b_lambda!58033) (not b_next!49967) (not d!542992) (not b!1777000) (not b!1777477) (not b!1777386) (not b!1777378) (not b_lambda!58089) b_and!135881 (not bm!111222) (not d!542782) (not b!1777322) (not b!1777354) (not b!1777462) (not b!1777051) (not bm!111223) (not b!1776692) (not b!1777293) (not b!1777296) (not b!1776891) (not d!542774) (not b!1777463) (not d!542996) (not b!1777380) (not bm!111221) (not b!1777399) (not b!1777297) (not b!1777401) (not d!542940) (not d!542930) (not d!542926) (not b!1777338) (not b_next!49965) (not d!542978) (not d!542990) b_and!135875 (not b!1777395) (not b!1777403) (not b!1777389) (not b_lambda!58075) (not b!1777439) (not d!542998) (not d!542852) (not b!1777291) (not d!542974) (not d!542936) (not d!543004) (not b_lambda!58067) (not d!542778) (not b!1777374) (not b!1777387) (not d!542962) (not d!542706) (not d!542676) (not b!1777456) (not b!1776895) (not b!1777095) (not bm!111225) (not b!1776995) (not b_next!49969) (not d!542958) (not b!1777285) (not bm!111224) (not d!542810) (not b!1777411) (not b!1777289) (not b!1777299) (not b!1777375) (not b!1777441) (not b_lambda!58083) (not b!1777093) b_and!135885 (not b!1777425) (not b!1777348) (not b!1777355) (not b_lambda!58079) (not b!1777102) (not d!542790) (not b!1777044) b_and!135877 (not b!1777315) (not d!542932) (not b!1777121) (not b!1777120) b_and!135873 (not d!542968) (not b!1777295) (not b!1777364) (not b!1777308) (not d!542812) (not b!1777473) (not b!1777416) (not d!542982) (not d!542840) (not d!542796) (not b_next!49977) (not d!542884) (not b!1777100) (not b!1776896) (not d!543012) (not b!1777316) (not b!1777119) (not tb!107859) (not d!542950) (not b!1776747) (not b_lambda!58069) (not d!542776))
(check-sat (not b_next!49959) b_and!135887 b_and!135883 (not b_next!49961) (not b_next!49975) (not b_next!49963) b_and!135879 (not b_next!49967) b_and!135881 (not b_next!49969) b_and!135885 (not b_next!49977) (not b_next!49965) b_and!135875 b_and!135877 b_and!135873)

; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!199570 () Bool)

(assert start!199570)

(declare-fun b!2028173 () Bool)

(declare-fun b_free!56581 () Bool)

(declare-fun b_next!57285 () Bool)

(assert (=> b!2028173 (= b_free!56581 (not b_next!57285))))

(declare-fun tp!603166 () Bool)

(declare-fun b_and!161397 () Bool)

(assert (=> b!2028173 (= tp!603166 b_and!161397)))

(declare-fun b_free!56583 () Bool)

(declare-fun b_next!57287 () Bool)

(assert (=> b!2028173 (= b_free!56583 (not b_next!57287))))

(declare-fun tp!603163 () Bool)

(declare-fun b_and!161399 () Bool)

(assert (=> b!2028173 (= tp!603163 b_and!161399)))

(declare-fun b!2028151 () Bool)

(declare-fun b_free!56585 () Bool)

(declare-fun b_next!57289 () Bool)

(assert (=> b!2028151 (= b_free!56585 (not b_next!57289))))

(declare-fun tp!603162 () Bool)

(declare-fun b_and!161401 () Bool)

(assert (=> b!2028151 (= tp!603162 b_and!161401)))

(declare-fun b_free!56587 () Bool)

(declare-fun b_next!57291 () Bool)

(assert (=> b!2028151 (= b_free!56587 (not b_next!57291))))

(declare-fun tp!603164 () Bool)

(declare-fun b_and!161403 () Bool)

(assert (=> b!2028151 (= tp!603164 b_and!161403)))

(declare-fun b!2028164 () Bool)

(declare-fun b_free!56589 () Bool)

(declare-fun b_next!57293 () Bool)

(assert (=> b!2028164 (= b_free!56589 (not b_next!57293))))

(declare-fun tp!603167 () Bool)

(declare-fun b_and!161405 () Bool)

(assert (=> b!2028164 (= tp!603167 b_and!161405)))

(declare-fun b_free!56591 () Bool)

(declare-fun b_next!57295 () Bool)

(assert (=> b!2028164 (= b_free!56591 (not b_next!57295))))

(declare-fun tp!603168 () Bool)

(declare-fun b_and!161407 () Bool)

(assert (=> b!2028164 (= tp!603168 b_and!161407)))

(declare-fun b!2028141 () Bool)

(declare-fun res!889359 () Bool)

(declare-fun e!1281137 () Bool)

(assert (=> b!2028141 (=> res!889359 e!1281137)))

(declare-datatypes ((List!22288 0))(
  ( (Nil!22206) (Cons!22206 (h!27607 (_ BitVec 16)) (t!190123 List!22288)) )
))
(declare-datatypes ((TokenValue!4127 0))(
  ( (FloatLiteralValue!8254 (text!29334 List!22288)) (TokenValueExt!4126 (__x!13752 Int)) (Broken!20635 (value!125310 List!22288)) (Object!4208) (End!4127) (Def!4127) (Underscore!4127) (Match!4127) (Else!4127) (Error!4127) (Case!4127) (If!4127) (Extends!4127) (Abstract!4127) (Class!4127) (Val!4127) (DelimiterValue!8254 (del!4187 List!22288)) (KeywordValue!4133 (value!125311 List!22288)) (CommentValue!8254 (value!125312 List!22288)) (WhitespaceValue!8254 (value!125313 List!22288)) (IndentationValue!4127 (value!125314 List!22288)) (String!25754) (Int32!4127) (Broken!20636 (value!125315 List!22288)) (Boolean!4128) (Unit!36864) (OperatorValue!4130 (op!4187 List!22288)) (IdentifierValue!8254 (value!125316 List!22288)) (IdentifierValue!8255 (value!125317 List!22288)) (WhitespaceValue!8255 (value!125318 List!22288)) (True!8254) (False!8254) (Broken!20637 (value!125319 List!22288)) (Broken!20638 (value!125320 List!22288)) (True!8255) (RightBrace!4127) (RightBracket!4127) (Colon!4127) (Null!4127) (Comma!4127) (LeftBracket!4127) (False!8255) (LeftBrace!4127) (ImaginaryLiteralValue!4127 (text!29335 List!22288)) (StringLiteralValue!12381 (value!125321 List!22288)) (EOFValue!4127 (value!125322 List!22288)) (IdentValue!4127 (value!125323 List!22288)) (DelimiterValue!8255 (value!125324 List!22288)) (DedentValue!4127 (value!125325 List!22288)) (NewLineValue!4127 (value!125326 List!22288)) (IntegerValue!12381 (value!125327 (_ BitVec 32)) (text!29336 List!22288)) (IntegerValue!12382 (value!125328 Int) (text!29337 List!22288)) (Times!4127) (Or!4127) (Equal!4127) (Minus!4127) (Broken!20639 (value!125329 List!22288)) (And!4127) (Div!4127) (LessEqual!4127) (Mod!4127) (Concat!9543) (Not!4127) (Plus!4127) (SpaceValue!4127 (value!125330 List!22288)) (IntegerValue!12383 (value!125331 Int) (text!29338 List!22288)) (StringLiteralValue!12382 (text!29339 List!22288)) (FloatLiteralValue!8255 (text!29340 List!22288)) (BytesLiteralValue!4127 (value!125332 List!22288)) (CommentValue!8255 (value!125333 List!22288)) (StringLiteralValue!12383 (value!125334 List!22288)) (ErrorTokenValue!4127 (msg!4188 List!22288)) )
))
(declare-datatypes ((C!10978 0))(
  ( (C!10979 (val!6441 Int)) )
))
(declare-datatypes ((List!22289 0))(
  ( (Nil!22207) (Cons!22207 (h!27608 C!10978) (t!190124 List!22289)) )
))
(declare-datatypes ((IArray!14861 0))(
  ( (IArray!14862 (innerList!7488 List!22289)) )
))
(declare-datatypes ((Conc!7428 0))(
  ( (Node!7428 (left!17670 Conc!7428) (right!18000 Conc!7428) (csize!15086 Int) (cheight!7639 Int)) (Leaf!10887 (xs!10330 IArray!14861) (csize!15087 Int)) (Empty!7428) )
))
(declare-datatypes ((BalanceConc!14672 0))(
  ( (BalanceConc!14673 (c!328191 Conc!7428)) )
))
(declare-datatypes ((TokenValueInjection!7838 0))(
  ( (TokenValueInjection!7839 (toValue!5664 Int) (toChars!5523 Int)) )
))
(declare-datatypes ((Regex!5416 0))(
  ( (ElementMatch!5416 (c!328192 C!10978)) (Concat!9544 (regOne!11344 Regex!5416) (regTwo!11344 Regex!5416)) (EmptyExpr!5416) (Star!5416 (reg!5745 Regex!5416)) (EmptyLang!5416) (Union!5416 (regOne!11345 Regex!5416) (regTwo!11345 Regex!5416)) )
))
(declare-datatypes ((String!25755 0))(
  ( (String!25756 (value!125335 String)) )
))
(declare-datatypes ((Rule!7782 0))(
  ( (Rule!7783 (regex!3991 Regex!5416) (tag!4477 String!25755) (isSeparator!3991 Bool) (transformation!3991 TokenValueInjection!7838)) )
))
(declare-datatypes ((List!22290 0))(
  ( (Nil!22208) (Cons!22208 (h!27609 Rule!7782) (t!190125 List!22290)) )
))
(declare-fun rules!3198 () List!22290)

(declare-datatypes ((Token!7534 0))(
  ( (Token!7535 (value!125336 TokenValue!4127) (rule!6220 Rule!7782) (size!17347 Int) (originalCharacters!4798 List!22289)) )
))
(declare-datatypes ((List!22291 0))(
  ( (Nil!22209) (Cons!22209 (h!27610 Token!7534) (t!190126 List!22291)) )
))
(declare-fun tokens!598 () List!22291)

(declare-fun contains!4097 (List!22290 Rule!7782) Bool)

(assert (=> b!2028141 (= res!889359 (not (contains!4097 rules!3198 (rule!6220 (h!27610 tokens!598)))))))

(declare-fun b!2028142 () Bool)

(declare-fun res!889348 () Bool)

(assert (=> b!2028142 (=> res!889348 e!1281137)))

(declare-datatypes ((LexerInterface!3604 0))(
  ( (LexerInterfaceExt!3601 (__x!13753 Int)) (Lexer!3602) )
))
(declare-fun thiss!23328 () LexerInterface!3604)

(declare-fun rulesProduceIndividualToken!1776 (LexerInterface!3604 List!22290 Token!7534) Bool)

(assert (=> b!2028142 (= res!889348 (not (rulesProduceIndividualToken!1776 thiss!23328 rules!3198 (h!27610 tokens!598))))))

(declare-fun b!2028143 () Bool)

(declare-fun res!889341 () Bool)

(assert (=> b!2028143 (=> res!889341 e!1281137)))

(assert (=> b!2028143 (= res!889341 (isSeparator!3991 (rule!6220 (h!27610 tokens!598))))))

(declare-fun b!2028144 () Bool)

(declare-fun e!1281123 () Bool)

(declare-fun e!1281121 () Bool)

(assert (=> b!2028144 (= e!1281123 e!1281121)))

(declare-fun res!889352 () Bool)

(assert (=> b!2028144 (=> res!889352 e!1281121)))

(declare-fun isEmpty!13853 (List!22291) Bool)

(assert (=> b!2028144 (= res!889352 (isEmpty!13853 tokens!598))))

(declare-fun lt!761715 () List!22289)

(declare-fun lt!761719 () List!22289)

(declare-datatypes ((tuple2!20888 0))(
  ( (tuple2!20889 (_1!11913 Token!7534) (_2!11913 List!22289)) )
))
(declare-datatypes ((Option!4665 0))(
  ( (None!4664) (Some!4664 (v!26989 tuple2!20888)) )
))
(declare-fun maxPrefix!2040 (LexerInterface!3604 List!22290 List!22289) Option!4665)

(assert (=> b!2028144 (= (maxPrefix!2040 thiss!23328 rules!3198 lt!761719) (Some!4664 (tuple2!20889 (h!27610 tokens!598) lt!761715)))))

(declare-fun separatorToken!354 () Token!7534)

(declare-datatypes ((Unit!36865 0))(
  ( (Unit!36866) )
))
(declare-fun lt!761734 () Unit!36865)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!105 (LexerInterface!3604 List!22290 Token!7534 Rule!7782 List!22289 Rule!7782) Unit!36865)

(assert (=> b!2028144 (= lt!761734 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!105 thiss!23328 rules!3198 (h!27610 tokens!598) (rule!6220 (h!27610 tokens!598)) lt!761715 (rule!6220 separatorToken!354)))))

(declare-fun e!1281130 () Bool)

(declare-fun e!1281124 () Bool)

(declare-fun b!2028145 () Bool)

(declare-fun tp!603165 () Bool)

(declare-fun inv!29386 (String!25755) Bool)

(declare-fun inv!29389 (TokenValueInjection!7838) Bool)

(assert (=> b!2028145 (= e!1281130 (and tp!603165 (inv!29386 (tag!4477 (rule!6220 (h!27610 tokens!598)))) (inv!29389 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) e!1281124))))

(declare-fun b!2028146 () Bool)

(declare-fun e!1281127 () Bool)

(declare-fun lt!761721 () Rule!7782)

(assert (=> b!2028146 (= e!1281127 (= (rule!6220 (h!27610 tokens!598)) lt!761721))))

(declare-fun b!2028147 () Bool)

(declare-fun e!1281138 () Bool)

(declare-fun e!1281133 () Bool)

(assert (=> b!2028147 (= e!1281138 e!1281133)))

(declare-fun res!889357 () Bool)

(assert (=> b!2028147 (=> (not res!889357) (not e!1281133))))

(declare-fun lt!761717 () Rule!7782)

(declare-fun lt!761716 () List!22289)

(declare-fun matchR!2682 (Regex!5416 List!22289) Bool)

(assert (=> b!2028147 (= res!889357 (matchR!2682 (regex!3991 lt!761717) lt!761716))))

(declare-datatypes ((Option!4666 0))(
  ( (None!4665) (Some!4665 (v!26990 Rule!7782)) )
))
(declare-fun lt!761702 () Option!4666)

(declare-fun get!7052 (Option!4666) Rule!7782)

(assert (=> b!2028147 (= lt!761717 (get!7052 lt!761702))))

(declare-fun b!2028148 () Bool)

(declare-fun tp!603170 () Bool)

(declare-fun e!1281136 () Bool)

(declare-fun e!1281135 () Bool)

(declare-fun inv!21 (TokenValue!4127) Bool)

(assert (=> b!2028148 (= e!1281136 (and (inv!21 (value!125336 separatorToken!354)) e!1281135 tp!603170))))

(declare-fun b!2028149 () Bool)

(declare-fun res!889338 () Bool)

(declare-fun e!1281120 () Bool)

(assert (=> b!2028149 (=> (not res!889338) (not e!1281120))))

(assert (=> b!2028149 (= res!889338 (is-Cons!22209 tokens!598))))

(declare-fun b!2028150 () Bool)

(declare-fun res!889350 () Bool)

(assert (=> b!2028150 (=> (not res!889350) (not e!1281120))))

(declare-fun rulesInvariant!3211 (LexerInterface!3604 List!22290) Bool)

(assert (=> b!2028150 (= res!889350 (rulesInvariant!3211 thiss!23328 rules!3198))))

(declare-fun e!1281126 () Bool)

(assert (=> b!2028151 (= e!1281126 (and tp!603162 tp!603164))))

(declare-fun b!2028152 () Bool)

(declare-fun res!889356 () Bool)

(assert (=> b!2028152 (=> (not res!889356) (not e!1281120))))

(declare-fun sepAndNonSepRulesDisjointChars!1089 (List!22290 List!22290) Bool)

(assert (=> b!2028152 (= res!889356 (sepAndNonSepRulesDisjointChars!1089 rules!3198 rules!3198))))

(declare-fun b!2028153 () Bool)

(declare-fun e!1281117 () Bool)

(assert (=> b!2028153 (= e!1281137 e!1281117)))

(declare-fun res!889351 () Bool)

(assert (=> b!2028153 (=> res!889351 e!1281117)))

(declare-fun lt!761718 () List!22289)

(assert (=> b!2028153 (= res!889351 (not (matchR!2682 (regex!3991 (rule!6220 (h!27610 tokens!598))) lt!761718)))))

(declare-fun ruleValid!1222 (LexerInterface!3604 Rule!7782) Bool)

(assert (=> b!2028153 (ruleValid!1222 thiss!23328 (rule!6220 (h!27610 tokens!598)))))

(declare-fun lt!761726 () Unit!36865)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!693 (LexerInterface!3604 Rule!7782 List!22290) Unit!36865)

(assert (=> b!2028153 (= lt!761726 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!693 thiss!23328 (rule!6220 (h!27610 tokens!598)) rules!3198))))

(declare-fun b!2028154 () Bool)

(declare-fun res!889347 () Bool)

(assert (=> b!2028154 (=> (not res!889347) (not e!1281120))))

(assert (=> b!2028154 (= res!889347 (isSeparator!3991 (rule!6220 separatorToken!354)))))

(declare-fun b!2028155 () Bool)

(declare-fun e!1281143 () Bool)

(assert (=> b!2028155 (= e!1281120 (not e!1281143))))

(declare-fun res!889362 () Bool)

(assert (=> b!2028155 (=> res!889362 e!1281143)))

(declare-fun lt!761720 () Bool)

(declare-fun lt!761708 () Option!4665)

(assert (=> b!2028155 (= res!889362 (or (and (not lt!761720) (= (_1!11913 (v!26989 lt!761708)) (h!27610 tokens!598))) lt!761720 (= (_1!11913 (v!26989 lt!761708)) (h!27610 tokens!598))))))

(assert (=> b!2028155 (= lt!761720 (not (is-Some!4664 lt!761708)))))

(declare-fun lt!761704 () List!22289)

(declare-fun ++!6004 (List!22289 List!22289) List!22289)

(assert (=> b!2028155 (= lt!761708 (maxPrefix!2040 thiss!23328 rules!3198 (++!6004 lt!761718 lt!761704)))))

(declare-fun printWithSeparatorTokenWhenNeededList!633 (LexerInterface!3604 List!22290 List!22291 Token!7534) List!22289)

(assert (=> b!2028155 (= lt!761704 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 (t!190126 tokens!598) separatorToken!354))))

(declare-fun e!1281140 () Bool)

(assert (=> b!2028155 e!1281140))

(declare-fun res!889353 () Bool)

(assert (=> b!2028155 (=> (not res!889353) (not e!1281140))))

(declare-fun lt!761710 () Option!4666)

(declare-fun isDefined!3953 (Option!4666) Bool)

(assert (=> b!2028155 (= res!889353 (isDefined!3953 lt!761710))))

(declare-fun getRuleFromTag!806 (LexerInterface!3604 List!22290 String!25755) Option!4666)

(assert (=> b!2028155 (= lt!761710 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 (h!27610 tokens!598)))))))

(declare-fun lt!761724 () Unit!36865)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!806 (LexerInterface!3604 List!22290 List!22289 Token!7534) Unit!36865)

(assert (=> b!2028155 (= lt!761724 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!806 thiss!23328 rules!3198 lt!761718 (h!27610 tokens!598)))))

(declare-fun lt!761723 () tuple2!20888)

(assert (=> b!2028155 (= (_1!11913 lt!761723) (h!27610 tokens!598))))

(declare-fun lt!761730 () Option!4665)

(declare-fun get!7053 (Option!4665) tuple2!20888)

(assert (=> b!2028155 (= lt!761723 (get!7053 lt!761730))))

(declare-fun isDefined!3954 (Option!4665) Bool)

(assert (=> b!2028155 (isDefined!3954 lt!761730)))

(assert (=> b!2028155 (= lt!761730 (maxPrefix!2040 thiss!23328 rules!3198 lt!761718))))

(declare-fun lt!761729 () BalanceConc!14672)

(declare-fun list!9066 (BalanceConc!14672) List!22289)

(assert (=> b!2028155 (= lt!761718 (list!9066 lt!761729))))

(assert (=> b!2028155 e!1281138))

(declare-fun res!889339 () Bool)

(assert (=> b!2028155 (=> (not res!889339) (not e!1281138))))

(assert (=> b!2028155 (= res!889339 (isDefined!3953 lt!761702))))

(assert (=> b!2028155 (= lt!761702 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 separatorToken!354))))))

(declare-fun lt!761733 () Unit!36865)

(assert (=> b!2028155 (= lt!761733 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!806 thiss!23328 rules!3198 lt!761716 separatorToken!354))))

(declare-fun charsOf!2531 (Token!7534) BalanceConc!14672)

(assert (=> b!2028155 (= lt!761716 (list!9066 (charsOf!2531 separatorToken!354)))))

(declare-fun lt!761705 () Unit!36865)

(declare-fun lemmaEqSameImage!677 (TokenValueInjection!7838 BalanceConc!14672 BalanceConc!14672) Unit!36865)

(declare-fun seqFromList!2845 (List!22289) BalanceConc!14672)

(assert (=> b!2028155 (= lt!761705 (lemmaEqSameImage!677 (transformation!3991 (rule!6220 (h!27610 tokens!598))) lt!761729 (seqFromList!2845 (originalCharacters!4798 (h!27610 tokens!598)))))))

(declare-fun lt!761701 () Unit!36865)

(declare-fun lemmaSemiInverse!948 (TokenValueInjection!7838 BalanceConc!14672) Unit!36865)

(assert (=> b!2028155 (= lt!761701 (lemmaSemiInverse!948 (transformation!3991 (rule!6220 (h!27610 tokens!598))) lt!761729))))

(assert (=> b!2028155 (= lt!761729 (charsOf!2531 (h!27610 tokens!598)))))

(declare-fun b!2028156 () Bool)

(declare-fun e!1281144 () Unit!36865)

(declare-fun Unit!36867 () Unit!36865)

(assert (=> b!2028156 (= e!1281144 Unit!36867)))

(declare-fun b!2028157 () Bool)

(declare-fun tp!603171 () Bool)

(declare-fun e!1281134 () Bool)

(assert (=> b!2028157 (= e!1281134 (and (inv!21 (value!125336 (h!27610 tokens!598))) e!1281130 tp!603171))))

(declare-fun b!2028158 () Bool)

(declare-fun e!1281119 () Bool)

(assert (=> b!2028158 (= e!1281121 e!1281119)))

(declare-fun res!889345 () Bool)

(assert (=> b!2028158 (=> (not res!889345) (not e!1281119))))

(declare-fun lt!761735 () Option!4665)

(assert (=> b!2028158 (= res!889345 (isDefined!3954 lt!761735))))

(assert (=> b!2028158 (= lt!761735 (maxPrefix!2040 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun b!2028159 () Bool)

(declare-fun res!889363 () Bool)

(assert (=> b!2028159 (=> res!889363 e!1281117)))

(declare-fun isEmpty!13854 (List!22289) Bool)

(assert (=> b!2028159 (= res!889363 (isEmpty!13854 lt!761715))))

(declare-fun b!2028160 () Bool)

(declare-fun res!889360 () Bool)

(assert (=> b!2028160 (=> (not res!889360) (not e!1281120))))

(declare-fun rulesProduceEachTokenIndividuallyList!1335 (LexerInterface!3604 List!22290 List!22291) Bool)

(assert (=> b!2028160 (= res!889360 (rulesProduceEachTokenIndividuallyList!1335 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!2028161 () Bool)

(assert (=> b!2028161 (= e!1281140 e!1281127)))

(declare-fun res!889346 () Bool)

(assert (=> b!2028161 (=> (not res!889346) (not e!1281127))))

(assert (=> b!2028161 (= res!889346 (matchR!2682 (regex!3991 lt!761721) lt!761718))))

(assert (=> b!2028161 (= lt!761721 (get!7052 lt!761710))))

(declare-fun b!2028162 () Bool)

(assert (=> b!2028162 (= e!1281133 (= (rule!6220 separatorToken!354) lt!761717))))

(declare-fun b!2028163 () Bool)

(declare-fun head!4583 (List!22291) Token!7534)

(assert (=> b!2028163 (= e!1281119 (= (_1!11913 (get!7053 lt!761735)) (head!4583 tokens!598)))))

(assert (=> b!2028164 (= e!1281124 (and tp!603167 tp!603168))))

(declare-fun e!1281128 () Bool)

(declare-fun b!2028165 () Bool)

(declare-fun tp!603173 () Bool)

(declare-fun inv!29390 (Token!7534) Bool)

(assert (=> b!2028165 (= e!1281128 (and (inv!29390 (h!27610 tokens!598)) e!1281134 tp!603173))))

(declare-fun b!2028166 () Bool)

(declare-fun res!889340 () Bool)

(assert (=> b!2028166 (=> (not res!889340) (not e!1281120))))

(declare-fun lambda!76480 () Int)

(declare-fun forall!4723 (List!22291 Int) Bool)

(assert (=> b!2028166 (= res!889340 (forall!4723 tokens!598 lambda!76480))))

(declare-fun b!2028167 () Bool)

(declare-fun e!1281132 () Bool)

(declare-fun e!1281141 () Bool)

(declare-fun tp!603161 () Bool)

(assert (=> b!2028167 (= e!1281141 (and tp!603161 (inv!29386 (tag!4477 (h!27609 rules!3198))) (inv!29389 (transformation!3991 (h!27609 rules!3198))) e!1281132))))

(declare-fun b!2028168 () Bool)

(declare-fun e!1281125 () Bool)

(assert (=> b!2028168 (= e!1281125 false)))

(declare-fun b!2028169 () Bool)

(assert (=> b!2028169 (= e!1281117 e!1281123)))

(declare-fun res!889343 () Bool)

(assert (=> b!2028169 (=> res!889343 e!1281123)))

(declare-fun lt!761703 () List!22289)

(declare-fun lt!761712 () C!10978)

(declare-fun contains!4098 (List!22289 C!10978) Bool)

(assert (=> b!2028169 (= res!889343 (contains!4098 lt!761703 lt!761712))))

(declare-fun head!4584 (List!22289) C!10978)

(assert (=> b!2028169 (= lt!761712 (head!4584 lt!761715))))

(declare-fun b!2028170 () Bool)

(declare-fun res!889342 () Bool)

(assert (=> b!2028170 (=> res!889342 e!1281137)))

(declare-datatypes ((IArray!14863 0))(
  ( (IArray!14864 (innerList!7489 List!22291)) )
))
(declare-datatypes ((Conc!7429 0))(
  ( (Node!7429 (left!17671 Conc!7429) (right!18001 Conc!7429) (csize!15088 Int) (cheight!7640 Int)) (Leaf!10888 (xs!10331 IArray!14863) (csize!15089 Int)) (Empty!7429) )
))
(declare-datatypes ((BalanceConc!14674 0))(
  ( (BalanceConc!14675 (c!328193 Conc!7429)) )
))
(declare-fun isEmpty!13855 (BalanceConc!14674) Bool)

(declare-datatypes ((tuple2!20890 0))(
  ( (tuple2!20891 (_1!11914 BalanceConc!14674) (_2!11914 BalanceConc!14672)) )
))
(declare-fun lex!1620 (LexerInterface!3604 List!22290 BalanceConc!14672) tuple2!20890)

(assert (=> b!2028170 (= res!889342 (isEmpty!13855 (_1!11914 (lex!1620 thiss!23328 rules!3198 (seqFromList!2845 lt!761718)))))))

(declare-fun res!889365 () Bool)

(assert (=> start!199570 (=> (not res!889365) (not e!1281120))))

(assert (=> start!199570 (= res!889365 (is-Lexer!3602 thiss!23328))))

(assert (=> start!199570 e!1281120))

(assert (=> start!199570 true))

(declare-fun e!1281118 () Bool)

(assert (=> start!199570 e!1281118))

(assert (=> start!199570 e!1281128))

(assert (=> start!199570 (and (inv!29390 separatorToken!354) e!1281136)))

(declare-fun b!2028171 () Bool)

(declare-fun res!889355 () Bool)

(assert (=> b!2028171 (=> res!889355 e!1281137)))

(assert (=> b!2028171 (= res!889355 (not (contains!4097 rules!3198 (rule!6220 separatorToken!354))))))

(declare-fun b!2028172 () Bool)

(assert (=> b!2028172 (= e!1281143 e!1281137)))

(declare-fun res!889358 () Bool)

(assert (=> b!2028172 (=> res!889358 e!1281137)))

(declare-fun lt!761732 () List!22289)

(declare-fun lt!761711 () List!22289)

(assert (=> b!2028172 (= res!889358 (or (not (= lt!761711 lt!761732)) (not (= lt!761732 lt!761718)) (not (= lt!761711 lt!761718))))))

(declare-fun printList!1123 (LexerInterface!3604 List!22291) List!22289)

(assert (=> b!2028172 (= lt!761732 (printList!1123 thiss!23328 (Cons!22209 (h!27610 tokens!598) Nil!22209)))))

(declare-fun lt!761722 () BalanceConc!14672)

(assert (=> b!2028172 (= lt!761711 (list!9066 lt!761722))))

(declare-fun lt!761727 () BalanceConc!14674)

(declare-fun printTailRec!1072 (LexerInterface!3604 BalanceConc!14674 Int BalanceConc!14672) BalanceConc!14672)

(assert (=> b!2028172 (= lt!761722 (printTailRec!1072 thiss!23328 lt!761727 0 (BalanceConc!14673 Empty!7428)))))

(declare-fun print!1566 (LexerInterface!3604 BalanceConc!14674) BalanceConc!14672)

(assert (=> b!2028172 (= lt!761722 (print!1566 thiss!23328 lt!761727))))

(declare-fun singletonSeq!1967 (Token!7534) BalanceConc!14674)

(assert (=> b!2028172 (= lt!761727 (singletonSeq!1967 (h!27610 tokens!598)))))

(declare-fun lt!761709 () C!10978)

(assert (=> b!2028172 (not (contains!4098 lt!761703 lt!761709))))

(declare-fun usedCharacters!429 (Regex!5416) List!22289)

(assert (=> b!2028172 (= lt!761703 (usedCharacters!429 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))

(declare-fun lt!761728 () Unit!36865)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!101 (LexerInterface!3604 List!22290 List!22290 Rule!7782 Rule!7782 C!10978) Unit!36865)

(assert (=> b!2028172 (= lt!761728 (lemmaNonSepRuleNotContainsCharContainedInASepRule!101 thiss!23328 rules!3198 rules!3198 (rule!6220 (h!27610 tokens!598)) (rule!6220 separatorToken!354) lt!761709))))

(declare-fun lt!761714 () Unit!36865)

(assert (=> b!2028172 (= lt!761714 e!1281144)))

(declare-fun c!328190 () Bool)

(declare-fun lt!761707 () List!22289)

(assert (=> b!2028172 (= c!328190 (not (contains!4098 lt!761707 lt!761709)))))

(assert (=> b!2028172 (= lt!761709 (head!4584 lt!761716))))

(assert (=> b!2028172 (= lt!761707 (usedCharacters!429 (regex!3991 (rule!6220 separatorToken!354))))))

(declare-fun lt!761706 () List!22289)

(assert (=> b!2028172 (= lt!761706 lt!761719)))

(assert (=> b!2028172 (= lt!761719 (++!6004 lt!761718 lt!761715))))

(declare-fun lt!761731 () List!22289)

(assert (=> b!2028172 (= lt!761706 (++!6004 lt!761731 lt!761704))))

(assert (=> b!2028172 (= lt!761715 (++!6004 lt!761716 lt!761704))))

(assert (=> b!2028172 (= lt!761731 (++!6004 lt!761718 lt!761716))))

(declare-fun lt!761713 () Unit!36865)

(declare-fun lemmaConcatAssociativity!1256 (List!22289 List!22289 List!22289) Unit!36865)

(assert (=> b!2028172 (= lt!761713 (lemmaConcatAssociativity!1256 lt!761718 lt!761716 lt!761704))))

(assert (=> b!2028173 (= e!1281132 (and tp!603166 tp!603163))))

(declare-fun b!2028174 () Bool)

(declare-fun tp!603172 () Bool)

(assert (=> b!2028174 (= e!1281135 (and tp!603172 (inv!29386 (tag!4477 (rule!6220 separatorToken!354))) (inv!29389 (transformation!3991 (rule!6220 separatorToken!354))) e!1281126))))

(declare-fun b!2028175 () Bool)

(declare-fun res!889361 () Bool)

(assert (=> b!2028175 (=> (not res!889361) (not e!1281120))))

(assert (=> b!2028175 (= res!889361 (rulesProduceIndividualToken!1776 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!2028176 () Bool)

(declare-fun res!889344 () Bool)

(assert (=> b!2028176 (=> res!889344 e!1281123)))

(assert (=> b!2028176 (= res!889344 (not (contains!4098 lt!761707 lt!761712)))))

(declare-fun b!2028177 () Bool)

(declare-fun res!889364 () Bool)

(assert (=> b!2028177 (=> res!889364 e!1281137)))

(assert (=> b!2028177 (= res!889364 (not (isEmpty!13854 (_2!11913 lt!761723))))))

(declare-fun b!2028178 () Bool)

(declare-fun Unit!36868 () Unit!36865)

(assert (=> b!2028178 (= e!1281144 Unit!36868)))

(declare-fun lt!761725 () Unit!36865)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!317 (Regex!5416 List!22289 C!10978) Unit!36865)

(assert (=> b!2028178 (= lt!761725 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!317 (regex!3991 (rule!6220 separatorToken!354)) lt!761716 lt!761709))))

(declare-fun res!889354 () Bool)

(assert (=> b!2028178 (= res!889354 (not (matchR!2682 (regex!3991 (rule!6220 separatorToken!354)) lt!761716)))))

(assert (=> b!2028178 (=> (not res!889354) (not e!1281125))))

(assert (=> b!2028178 e!1281125))

(declare-fun b!2028179 () Bool)

(declare-fun tp!603169 () Bool)

(assert (=> b!2028179 (= e!1281118 (and e!1281141 tp!603169))))

(declare-fun b!2028180 () Bool)

(declare-fun res!889349 () Bool)

(assert (=> b!2028180 (=> (not res!889349) (not e!1281120))))

(declare-fun isEmpty!13856 (List!22290) Bool)

(assert (=> b!2028180 (= res!889349 (not (isEmpty!13856 rules!3198)))))

(assert (= (and start!199570 res!889365) b!2028180))

(assert (= (and b!2028180 res!889349) b!2028150))

(assert (= (and b!2028150 res!889350) b!2028160))

(assert (= (and b!2028160 res!889360) b!2028175))

(assert (= (and b!2028175 res!889361) b!2028154))

(assert (= (and b!2028154 res!889347) b!2028166))

(assert (= (and b!2028166 res!889340) b!2028152))

(assert (= (and b!2028152 res!889356) b!2028149))

(assert (= (and b!2028149 res!889338) b!2028155))

(assert (= (and b!2028155 res!889339) b!2028147))

(assert (= (and b!2028147 res!889357) b!2028162))

(assert (= (and b!2028155 res!889353) b!2028161))

(assert (= (and b!2028161 res!889346) b!2028146))

(assert (= (and b!2028155 (not res!889362)) b!2028172))

(assert (= (and b!2028172 c!328190) b!2028178))

(assert (= (and b!2028172 (not c!328190)) b!2028156))

(assert (= (and b!2028178 res!889354) b!2028168))

(assert (= (and b!2028172 (not res!889358)) b!2028142))

(assert (= (and b!2028142 (not res!889348)) b!2028170))

(assert (= (and b!2028170 (not res!889342)) b!2028141))

(assert (= (and b!2028141 (not res!889359)) b!2028171))

(assert (= (and b!2028171 (not res!889355)) b!2028143))

(assert (= (and b!2028143 (not res!889341)) b!2028177))

(assert (= (and b!2028177 (not res!889364)) b!2028153))

(assert (= (and b!2028153 (not res!889351)) b!2028159))

(assert (= (and b!2028159 (not res!889363)) b!2028169))

(assert (= (and b!2028169 (not res!889343)) b!2028176))

(assert (= (and b!2028176 (not res!889344)) b!2028144))

(assert (= (and b!2028144 (not res!889352)) b!2028158))

(assert (= (and b!2028158 res!889345) b!2028163))

(assert (= b!2028167 b!2028173))

(assert (= b!2028179 b!2028167))

(assert (= (and start!199570 (is-Cons!22208 rules!3198)) b!2028179))

(assert (= b!2028145 b!2028164))

(assert (= b!2028157 b!2028145))

(assert (= b!2028165 b!2028157))

(assert (= (and start!199570 (is-Cons!22209 tokens!598)) b!2028165))

(assert (= b!2028174 b!2028151))

(assert (= b!2028148 b!2028174))

(assert (= start!199570 b!2028148))

(declare-fun m!2467151 () Bool)

(assert (=> b!2028141 m!2467151))

(declare-fun m!2467153 () Bool)

(assert (=> b!2028155 m!2467153))

(declare-fun m!2467155 () Bool)

(assert (=> b!2028155 m!2467155))

(declare-fun m!2467157 () Bool)

(assert (=> b!2028155 m!2467157))

(declare-fun m!2467159 () Bool)

(assert (=> b!2028155 m!2467159))

(declare-fun m!2467161 () Bool)

(assert (=> b!2028155 m!2467161))

(declare-fun m!2467163 () Bool)

(assert (=> b!2028155 m!2467163))

(declare-fun m!2467165 () Bool)

(assert (=> b!2028155 m!2467165))

(declare-fun m!2467167 () Bool)

(assert (=> b!2028155 m!2467167))

(declare-fun m!2467169 () Bool)

(assert (=> b!2028155 m!2467169))

(declare-fun m!2467171 () Bool)

(assert (=> b!2028155 m!2467171))

(declare-fun m!2467173 () Bool)

(assert (=> b!2028155 m!2467173))

(declare-fun m!2467175 () Bool)

(assert (=> b!2028155 m!2467175))

(declare-fun m!2467177 () Bool)

(assert (=> b!2028155 m!2467177))

(assert (=> b!2028155 m!2467159))

(declare-fun m!2467179 () Bool)

(assert (=> b!2028155 m!2467179))

(declare-fun m!2467181 () Bool)

(assert (=> b!2028155 m!2467181))

(declare-fun m!2467183 () Bool)

(assert (=> b!2028155 m!2467183))

(assert (=> b!2028155 m!2467179))

(declare-fun m!2467185 () Bool)

(assert (=> b!2028155 m!2467185))

(declare-fun m!2467187 () Bool)

(assert (=> b!2028155 m!2467187))

(assert (=> b!2028155 m!2467171))

(declare-fun m!2467189 () Bool)

(assert (=> b!2028155 m!2467189))

(declare-fun m!2467191 () Bool)

(assert (=> b!2028147 m!2467191))

(declare-fun m!2467193 () Bool)

(assert (=> b!2028147 m!2467193))

(declare-fun m!2467195 () Bool)

(assert (=> b!2028176 m!2467195))

(declare-fun m!2467197 () Bool)

(assert (=> b!2028169 m!2467197))

(declare-fun m!2467199 () Bool)

(assert (=> b!2028169 m!2467199))

(declare-fun m!2467201 () Bool)

(assert (=> b!2028170 m!2467201))

(assert (=> b!2028170 m!2467201))

(declare-fun m!2467203 () Bool)

(assert (=> b!2028170 m!2467203))

(declare-fun m!2467205 () Bool)

(assert (=> b!2028170 m!2467205))

(declare-fun m!2467207 () Bool)

(assert (=> b!2028158 m!2467207))

(declare-fun m!2467209 () Bool)

(assert (=> b!2028158 m!2467209))

(assert (=> b!2028158 m!2467209))

(declare-fun m!2467211 () Bool)

(assert (=> b!2028158 m!2467211))

(declare-fun m!2467213 () Bool)

(assert (=> b!2028174 m!2467213))

(declare-fun m!2467215 () Bool)

(assert (=> b!2028174 m!2467215))

(declare-fun m!2467217 () Bool)

(assert (=> b!2028165 m!2467217))

(declare-fun m!2467219 () Bool)

(assert (=> b!2028167 m!2467219))

(declare-fun m!2467221 () Bool)

(assert (=> b!2028167 m!2467221))

(declare-fun m!2467223 () Bool)

(assert (=> b!2028150 m!2467223))

(declare-fun m!2467225 () Bool)

(assert (=> b!2028178 m!2467225))

(declare-fun m!2467227 () Bool)

(assert (=> b!2028178 m!2467227))

(declare-fun m!2467229 () Bool)

(assert (=> b!2028171 m!2467229))

(declare-fun m!2467231 () Bool)

(assert (=> b!2028145 m!2467231))

(declare-fun m!2467233 () Bool)

(assert (=> b!2028145 m!2467233))

(declare-fun m!2467235 () Bool)

(assert (=> b!2028180 m!2467235))

(declare-fun m!2467237 () Bool)

(assert (=> b!2028142 m!2467237))

(declare-fun m!2467239 () Bool)

(assert (=> b!2028177 m!2467239))

(declare-fun m!2467241 () Bool)

(assert (=> b!2028160 m!2467241))

(declare-fun m!2467243 () Bool)

(assert (=> start!199570 m!2467243))

(declare-fun m!2467245 () Bool)

(assert (=> b!2028148 m!2467245))

(declare-fun m!2467247 () Bool)

(assert (=> b!2028144 m!2467247))

(declare-fun m!2467249 () Bool)

(assert (=> b!2028144 m!2467249))

(declare-fun m!2467251 () Bool)

(assert (=> b!2028144 m!2467251))

(declare-fun m!2467253 () Bool)

(assert (=> b!2028157 m!2467253))

(declare-fun m!2467255 () Bool)

(assert (=> b!2028153 m!2467255))

(declare-fun m!2467257 () Bool)

(assert (=> b!2028153 m!2467257))

(declare-fun m!2467259 () Bool)

(assert (=> b!2028153 m!2467259))

(declare-fun m!2467261 () Bool)

(assert (=> b!2028163 m!2467261))

(declare-fun m!2467263 () Bool)

(assert (=> b!2028163 m!2467263))

(declare-fun m!2467265 () Bool)

(assert (=> b!2028172 m!2467265))

(declare-fun m!2467267 () Bool)

(assert (=> b!2028172 m!2467267))

(declare-fun m!2467269 () Bool)

(assert (=> b!2028172 m!2467269))

(declare-fun m!2467271 () Bool)

(assert (=> b!2028172 m!2467271))

(declare-fun m!2467273 () Bool)

(assert (=> b!2028172 m!2467273))

(declare-fun m!2467275 () Bool)

(assert (=> b!2028172 m!2467275))

(declare-fun m!2467277 () Bool)

(assert (=> b!2028172 m!2467277))

(declare-fun m!2467279 () Bool)

(assert (=> b!2028172 m!2467279))

(declare-fun m!2467281 () Bool)

(assert (=> b!2028172 m!2467281))

(declare-fun m!2467283 () Bool)

(assert (=> b!2028172 m!2467283))

(declare-fun m!2467285 () Bool)

(assert (=> b!2028172 m!2467285))

(declare-fun m!2467287 () Bool)

(assert (=> b!2028172 m!2467287))

(declare-fun m!2467289 () Bool)

(assert (=> b!2028172 m!2467289))

(declare-fun m!2467291 () Bool)

(assert (=> b!2028172 m!2467291))

(declare-fun m!2467293 () Bool)

(assert (=> b!2028172 m!2467293))

(declare-fun m!2467295 () Bool)

(assert (=> b!2028172 m!2467295))

(declare-fun m!2467297 () Bool)

(assert (=> b!2028159 m!2467297))

(declare-fun m!2467299 () Bool)

(assert (=> b!2028175 m!2467299))

(declare-fun m!2467301 () Bool)

(assert (=> b!2028166 m!2467301))

(declare-fun m!2467303 () Bool)

(assert (=> b!2028161 m!2467303))

(declare-fun m!2467305 () Bool)

(assert (=> b!2028161 m!2467305))

(declare-fun m!2467307 () Bool)

(assert (=> b!2028152 m!2467307))

(push 1)

(assert (not b_next!57293))

(assert (not b!2028147))

(assert (not b!2028176))

(assert (not b_next!57285))

(assert (not b!2028163))

(assert (not b_next!57291))

(assert (not b!2028153))

(assert (not b!2028171))

(assert (not b!2028144))

(assert (not b!2028158))

(assert b_and!161397)

(assert (not b!2028142))

(assert (not b!2028155))

(assert (not b!2028150))

(assert (not b!2028148))

(assert (not b_next!57289))

(assert b_and!161399)

(assert (not b!2028170))

(assert (not b!2028152))

(assert (not b!2028167))

(assert (not b!2028172))

(assert (not b!2028174))

(assert (not b!2028166))

(assert b_and!161403)

(assert (not b!2028161))

(assert b_and!161405)

(assert (not b!2028160))

(assert (not b!2028141))

(assert (not b!2028175))

(assert (not start!199570))

(assert (not b!2028165))

(assert (not b!2028177))

(assert (not b!2028169))

(assert (not b!2028159))

(assert b_and!161401)

(assert (not b_next!57287))

(assert (not b!2028180))

(assert b_and!161407)

(assert (not b_next!57295))

(assert (not b!2028145))

(assert (not b!2028157))

(assert (not b!2028179))

(assert (not b!2028178))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!57293))

(assert (not b_next!57285))

(assert (not b_next!57291))

(assert b_and!161403)

(assert b_and!161405)

(assert b_and!161401)

(assert (not b_next!57295))

(assert b_and!161397)

(assert (not b_next!57289))

(assert b_and!161399)

(assert (not b_next!57287))

(assert b_and!161407)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!620211 () Bool)

(declare-fun e!1281231 () Bool)

(assert (=> d!620211 e!1281231))

(declare-fun res!889464 () Bool)

(assert (=> d!620211 (=> (not res!889464) (not e!1281231))))

(assert (=> d!620211 (= res!889464 (isDefined!3953 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 (h!27610 tokens!598))))))))

(declare-fun lt!761843 () Unit!36865)

(declare-fun choose!12363 (LexerInterface!3604 List!22290 List!22289 Token!7534) Unit!36865)

(assert (=> d!620211 (= lt!761843 (choose!12363 thiss!23328 rules!3198 lt!761718 (h!27610 tokens!598)))))

(assert (=> d!620211 (rulesInvariant!3211 thiss!23328 rules!3198)))

(assert (=> d!620211 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!806 thiss!23328 rules!3198 lt!761718 (h!27610 tokens!598)) lt!761843)))

(declare-fun b!2028305 () Bool)

(declare-fun res!889465 () Bool)

(assert (=> b!2028305 (=> (not res!889465) (not e!1281231))))

(assert (=> b!2028305 (= res!889465 (matchR!2682 (regex!3991 (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 (h!27610 tokens!598)))))) (list!9066 (charsOf!2531 (h!27610 tokens!598)))))))

(declare-fun b!2028306 () Bool)

(assert (=> b!2028306 (= e!1281231 (= (rule!6220 (h!27610 tokens!598)) (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 (h!27610 tokens!598)))))))))

(assert (= (and d!620211 res!889464) b!2028305))

(assert (= (and b!2028305 res!889465) b!2028306))

(assert (=> d!620211 m!2467175))

(assert (=> d!620211 m!2467175))

(declare-fun m!2467467 () Bool)

(assert (=> d!620211 m!2467467))

(declare-fun m!2467469 () Bool)

(assert (=> d!620211 m!2467469))

(assert (=> d!620211 m!2467223))

(assert (=> b!2028305 m!2467173))

(declare-fun m!2467471 () Bool)

(assert (=> b!2028305 m!2467471))

(assert (=> b!2028305 m!2467173))

(assert (=> b!2028305 m!2467175))

(declare-fun m!2467473 () Bool)

(assert (=> b!2028305 m!2467473))

(assert (=> b!2028305 m!2467471))

(declare-fun m!2467475 () Bool)

(assert (=> b!2028305 m!2467475))

(assert (=> b!2028305 m!2467175))

(assert (=> b!2028306 m!2467175))

(assert (=> b!2028306 m!2467175))

(assert (=> b!2028306 m!2467473))

(assert (=> b!2028155 d!620211))

(declare-fun b!2028324 () Bool)

(declare-fun e!1281242 () Bool)

(assert (=> b!2028324 (= e!1281242 true)))

(declare-fun d!620213 () Bool)

(assert (=> d!620213 e!1281242))

(assert (= d!620213 b!2028324))

(declare-fun lambda!76486 () Int)

(declare-fun order!14219 () Int)

(declare-fun order!14217 () Int)

(declare-fun dynLambda!11037 (Int Int) Int)

(declare-fun dynLambda!11038 (Int Int) Int)

(assert (=> b!2028324 (< (dynLambda!11037 order!14217 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) (dynLambda!11038 order!14219 lambda!76486))))

(declare-fun order!14221 () Int)

(declare-fun dynLambda!11039 (Int Int) Int)

(assert (=> b!2028324 (< (dynLambda!11039 order!14221 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) (dynLambda!11038 order!14219 lambda!76486))))

(declare-fun dynLambda!11040 (Int BalanceConc!14672) TokenValue!4127)

(assert (=> d!620213 (= (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729) (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (seqFromList!2845 (originalCharacters!4798 (h!27610 tokens!598)))))))

(declare-fun lt!761852 () Unit!36865)

(declare-fun Forall2of!244 (Int BalanceConc!14672 BalanceConc!14672) Unit!36865)

(assert (=> d!620213 (= lt!761852 (Forall2of!244 lambda!76486 lt!761729 (seqFromList!2845 (originalCharacters!4798 (h!27610 tokens!598)))))))

(assert (=> d!620213 (= (list!9066 lt!761729) (list!9066 (seqFromList!2845 (originalCharacters!4798 (h!27610 tokens!598)))))))

(assert (=> d!620213 (= (lemmaEqSameImage!677 (transformation!3991 (rule!6220 (h!27610 tokens!598))) lt!761729 (seqFromList!2845 (originalCharacters!4798 (h!27610 tokens!598)))) lt!761852)))

(declare-fun b_lambda!68245 () Bool)

(assert (=> (not b_lambda!68245) (not d!620213)))

(declare-fun tb!127841 () Bool)

(declare-fun t!190133 () Bool)

(assert (=> (and b!2028173 (= (toValue!5664 (transformation!3991 (h!27609 rules!3198))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190133) tb!127841))

(declare-fun result!152980 () Bool)

(assert (=> tb!127841 (= result!152980 (inv!21 (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729)))))

(declare-fun m!2467495 () Bool)

(assert (=> tb!127841 m!2467495))

(assert (=> d!620213 t!190133))

(declare-fun b_and!161421 () Bool)

(assert (= b_and!161397 (and (=> t!190133 result!152980) b_and!161421)))

(declare-fun t!190135 () Bool)

(declare-fun tb!127843 () Bool)

(assert (=> (and b!2028151 (= (toValue!5664 (transformation!3991 (rule!6220 separatorToken!354))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190135) tb!127843))

(declare-fun result!152984 () Bool)

(assert (= result!152984 result!152980))

(assert (=> d!620213 t!190135))

(declare-fun b_and!161423 () Bool)

(assert (= b_and!161401 (and (=> t!190135 result!152984) b_and!161423)))

(declare-fun t!190137 () Bool)

(declare-fun tb!127845 () Bool)

(assert (=> (and b!2028164 (= (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190137) tb!127845))

(declare-fun result!152986 () Bool)

(assert (= result!152986 result!152980))

(assert (=> d!620213 t!190137))

(declare-fun b_and!161425 () Bool)

(assert (= b_and!161405 (and (=> t!190137 result!152986) b_and!161425)))

(declare-fun b_lambda!68247 () Bool)

(assert (=> (not b_lambda!68247) (not d!620213)))

(declare-fun t!190139 () Bool)

(declare-fun tb!127847 () Bool)

(assert (=> (and b!2028173 (= (toValue!5664 (transformation!3991 (h!27609 rules!3198))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190139) tb!127847))

(declare-fun result!152988 () Bool)

(assert (=> tb!127847 (= result!152988 (inv!21 (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (seqFromList!2845 (originalCharacters!4798 (h!27610 tokens!598))))))))

(declare-fun m!2467497 () Bool)

(assert (=> tb!127847 m!2467497))

(assert (=> d!620213 t!190139))

(declare-fun b_and!161427 () Bool)

(assert (= b_and!161421 (and (=> t!190139 result!152988) b_and!161427)))

(declare-fun t!190141 () Bool)

(declare-fun tb!127849 () Bool)

(assert (=> (and b!2028151 (= (toValue!5664 (transformation!3991 (rule!6220 separatorToken!354))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190141) tb!127849))

(declare-fun result!152990 () Bool)

(assert (= result!152990 result!152988))

(assert (=> d!620213 t!190141))

(declare-fun b_and!161429 () Bool)

(assert (= b_and!161423 (and (=> t!190141 result!152990) b_and!161429)))

(declare-fun t!190143 () Bool)

(declare-fun tb!127851 () Bool)

(assert (=> (and b!2028164 (= (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190143) tb!127851))

(declare-fun result!152992 () Bool)

(assert (= result!152992 result!152988))

(assert (=> d!620213 t!190143))

(declare-fun b_and!161431 () Bool)

(assert (= b_and!161425 (and (=> t!190143 result!152992) b_and!161431)))

(assert (=> d!620213 m!2467159))

(declare-fun m!2467499 () Bool)

(assert (=> d!620213 m!2467499))

(assert (=> d!620213 m!2467159))

(declare-fun m!2467501 () Bool)

(assert (=> d!620213 m!2467501))

(assert (=> d!620213 m!2467153))

(declare-fun m!2467503 () Bool)

(assert (=> d!620213 m!2467503))

(assert (=> d!620213 m!2467159))

(declare-fun m!2467505 () Bool)

(assert (=> d!620213 m!2467505))

(assert (=> b!2028155 d!620213))

(declare-fun b!2028375 () Bool)

(declare-fun e!1281273 () List!22289)

(assert (=> b!2028375 (= e!1281273 lt!761704)))

(declare-fun e!1281272 () Bool)

(declare-fun lt!761858 () List!22289)

(declare-fun b!2028378 () Bool)

(assert (=> b!2028378 (= e!1281272 (or (not (= lt!761704 Nil!22207)) (= lt!761858 lt!761718)))))

(declare-fun d!620219 () Bool)

(assert (=> d!620219 e!1281272))

(declare-fun res!889506 () Bool)

(assert (=> d!620219 (=> (not res!889506) (not e!1281272))))

(declare-fun content!3278 (List!22289) (Set C!10978))

(assert (=> d!620219 (= res!889506 (= (content!3278 lt!761858) (set.union (content!3278 lt!761718) (content!3278 lt!761704))))))

(assert (=> d!620219 (= lt!761858 e!1281273)))

(declare-fun c!328212 () Bool)

(assert (=> d!620219 (= c!328212 (is-Nil!22207 lt!761718))))

(assert (=> d!620219 (= (++!6004 lt!761718 lt!761704) lt!761858)))

(declare-fun b!2028376 () Bool)

(assert (=> b!2028376 (= e!1281273 (Cons!22207 (h!27608 lt!761718) (++!6004 (t!190124 lt!761718) lt!761704)))))

(declare-fun b!2028377 () Bool)

(declare-fun res!889505 () Bool)

(assert (=> b!2028377 (=> (not res!889505) (not e!1281272))))

(declare-fun size!17349 (List!22289) Int)

(assert (=> b!2028377 (= res!889505 (= (size!17349 lt!761858) (+ (size!17349 lt!761718) (size!17349 lt!761704))))))

(assert (= (and d!620219 c!328212) b!2028375))

(assert (= (and d!620219 (not c!328212)) b!2028376))

(assert (= (and d!620219 res!889506) b!2028377))

(assert (= (and b!2028377 res!889505) b!2028378))

(declare-fun m!2467523 () Bool)

(assert (=> d!620219 m!2467523))

(declare-fun m!2467525 () Bool)

(assert (=> d!620219 m!2467525))

(declare-fun m!2467527 () Bool)

(assert (=> d!620219 m!2467527))

(declare-fun m!2467529 () Bool)

(assert (=> b!2028376 m!2467529))

(declare-fun m!2467531 () Bool)

(assert (=> b!2028377 m!2467531))

(declare-fun m!2467533 () Bool)

(assert (=> b!2028377 m!2467533))

(declare-fun m!2467535 () Bool)

(assert (=> b!2028377 m!2467535))

(assert (=> b!2028155 d!620219))

(declare-fun b!2028453 () Bool)

(declare-fun res!889541 () Bool)

(declare-fun e!1281312 () Bool)

(assert (=> b!2028453 (=> (not res!889541) (not e!1281312))))

(declare-fun lt!761878 () Option!4665)

(assert (=> b!2028453 (= res!889541 (< (size!17349 (_2!11913 (get!7053 lt!761878))) (size!17349 lt!761718)))))

(declare-fun b!2028454 () Bool)

(declare-fun res!889543 () Bool)

(assert (=> b!2028454 (=> (not res!889543) (not e!1281312))))

(assert (=> b!2028454 (= res!889543 (= (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761878)))) (originalCharacters!4798 (_1!11913 (get!7053 lt!761878)))))))

(declare-fun b!2028455 () Bool)

(assert (=> b!2028455 (= e!1281312 (contains!4097 rules!3198 (rule!6220 (_1!11913 (get!7053 lt!761878)))))))

(declare-fun b!2028456 () Bool)

(declare-fun e!1281310 () Option!4665)

(declare-fun call!124435 () Option!4665)

(assert (=> b!2028456 (= e!1281310 call!124435)))

(declare-fun d!620225 () Bool)

(declare-fun e!1281311 () Bool)

(assert (=> d!620225 e!1281311))

(declare-fun res!889538 () Bool)

(assert (=> d!620225 (=> res!889538 e!1281311)))

(declare-fun isEmpty!13861 (Option!4665) Bool)

(assert (=> d!620225 (= res!889538 (isEmpty!13861 lt!761878))))

(assert (=> d!620225 (= lt!761878 e!1281310)))

(declare-fun c!328233 () Bool)

(assert (=> d!620225 (= c!328233 (and (is-Cons!22208 rules!3198) (is-Nil!22208 (t!190125 rules!3198))))))

(declare-fun lt!761882 () Unit!36865)

(declare-fun lt!761881 () Unit!36865)

(assert (=> d!620225 (= lt!761882 lt!761881)))

(declare-fun isPrefix!1984 (List!22289 List!22289) Bool)

(assert (=> d!620225 (isPrefix!1984 lt!761718 lt!761718)))

(declare-fun lemmaIsPrefixRefl!1302 (List!22289 List!22289) Unit!36865)

(assert (=> d!620225 (= lt!761881 (lemmaIsPrefixRefl!1302 lt!761718 lt!761718))))

(declare-fun rulesValidInductive!1383 (LexerInterface!3604 List!22290) Bool)

(assert (=> d!620225 (rulesValidInductive!1383 thiss!23328 rules!3198)))

(assert (=> d!620225 (= (maxPrefix!2040 thiss!23328 rules!3198 lt!761718) lt!761878)))

(declare-fun b!2028457 () Bool)

(declare-fun res!889540 () Bool)

(assert (=> b!2028457 (=> (not res!889540) (not e!1281312))))

(assert (=> b!2028457 (= res!889540 (matchR!2682 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!761878)))) (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761878))))))))

(declare-fun b!2028458 () Bool)

(declare-fun res!889542 () Bool)

(assert (=> b!2028458 (=> (not res!889542) (not e!1281312))))

(assert (=> b!2028458 (= res!889542 (= (++!6004 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761878)))) (_2!11913 (get!7053 lt!761878))) lt!761718))))

(declare-fun b!2028459 () Bool)

(declare-fun lt!761879 () Option!4665)

(declare-fun lt!761880 () Option!4665)

(assert (=> b!2028459 (= e!1281310 (ite (and (is-None!4664 lt!761879) (is-None!4664 lt!761880)) None!4664 (ite (is-None!4664 lt!761880) lt!761879 (ite (is-None!4664 lt!761879) lt!761880 (ite (>= (size!17347 (_1!11913 (v!26989 lt!761879))) (size!17347 (_1!11913 (v!26989 lt!761880)))) lt!761879 lt!761880)))))))

(assert (=> b!2028459 (= lt!761879 call!124435)))

(assert (=> b!2028459 (= lt!761880 (maxPrefix!2040 thiss!23328 (t!190125 rules!3198) lt!761718))))

(declare-fun b!2028460 () Bool)

(declare-fun res!889544 () Bool)

(assert (=> b!2028460 (=> (not res!889544) (not e!1281312))))

(declare-fun apply!5846 (TokenValueInjection!7838 BalanceConc!14672) TokenValue!4127)

(assert (=> b!2028460 (= res!889544 (= (value!125336 (_1!11913 (get!7053 lt!761878))) (apply!5846 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761878)))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!761878)))))))))

(declare-fun b!2028461 () Bool)

(assert (=> b!2028461 (= e!1281311 e!1281312)))

(declare-fun res!889539 () Bool)

(assert (=> b!2028461 (=> (not res!889539) (not e!1281312))))

(assert (=> b!2028461 (= res!889539 (isDefined!3954 lt!761878))))

(declare-fun bm!124430 () Bool)

(declare-fun maxPrefixOneRule!1266 (LexerInterface!3604 Rule!7782 List!22289) Option!4665)

(assert (=> bm!124430 (= call!124435 (maxPrefixOneRule!1266 thiss!23328 (h!27609 rules!3198) lt!761718))))

(assert (= (and d!620225 c!328233) b!2028456))

(assert (= (and d!620225 (not c!328233)) b!2028459))

(assert (= (or b!2028456 b!2028459) bm!124430))

(assert (= (and d!620225 (not res!889538)) b!2028461))

(assert (= (and b!2028461 res!889539) b!2028454))

(assert (= (and b!2028454 res!889543) b!2028453))

(assert (= (and b!2028453 res!889541) b!2028458))

(assert (= (and b!2028458 res!889542) b!2028460))

(assert (= (and b!2028460 res!889544) b!2028457))

(assert (= (and b!2028457 res!889540) b!2028455))

(declare-fun m!2467581 () Bool)

(assert (=> b!2028453 m!2467581))

(declare-fun m!2467583 () Bool)

(assert (=> b!2028453 m!2467583))

(assert (=> b!2028453 m!2467533))

(assert (=> b!2028458 m!2467581))

(declare-fun m!2467585 () Bool)

(assert (=> b!2028458 m!2467585))

(assert (=> b!2028458 m!2467585))

(declare-fun m!2467587 () Bool)

(assert (=> b!2028458 m!2467587))

(assert (=> b!2028458 m!2467587))

(declare-fun m!2467589 () Bool)

(assert (=> b!2028458 m!2467589))

(declare-fun m!2467591 () Bool)

(assert (=> bm!124430 m!2467591))

(declare-fun m!2467593 () Bool)

(assert (=> b!2028461 m!2467593))

(assert (=> b!2028460 m!2467581))

(declare-fun m!2467595 () Bool)

(assert (=> b!2028460 m!2467595))

(assert (=> b!2028460 m!2467595))

(declare-fun m!2467609 () Bool)

(assert (=> b!2028460 m!2467609))

(declare-fun m!2467613 () Bool)

(assert (=> b!2028459 m!2467613))

(assert (=> b!2028455 m!2467581))

(declare-fun m!2467615 () Bool)

(assert (=> b!2028455 m!2467615))

(declare-fun m!2467617 () Bool)

(assert (=> d!620225 m!2467617))

(declare-fun m!2467619 () Bool)

(assert (=> d!620225 m!2467619))

(declare-fun m!2467621 () Bool)

(assert (=> d!620225 m!2467621))

(declare-fun m!2467623 () Bool)

(assert (=> d!620225 m!2467623))

(assert (=> b!2028457 m!2467581))

(assert (=> b!2028457 m!2467585))

(assert (=> b!2028457 m!2467585))

(assert (=> b!2028457 m!2467587))

(assert (=> b!2028457 m!2467587))

(declare-fun m!2467625 () Bool)

(assert (=> b!2028457 m!2467625))

(assert (=> b!2028454 m!2467581))

(assert (=> b!2028454 m!2467585))

(assert (=> b!2028454 m!2467585))

(assert (=> b!2028454 m!2467587))

(assert (=> b!2028155 d!620225))

(declare-fun d!620243 () Bool)

(assert (=> d!620243 (= (isDefined!3954 lt!761730) (not (isEmpty!13861 lt!761730)))))

(declare-fun bs!420773 () Bool)

(assert (= bs!420773 d!620243))

(declare-fun m!2467627 () Bool)

(assert (=> bs!420773 m!2467627))

(assert (=> b!2028155 d!620243))

(declare-fun d!620245 () Bool)

(assert (=> d!620245 (= (get!7053 lt!761730) (v!26989 lt!761730))))

(assert (=> b!2028155 d!620245))

(declare-fun b!2028474 () Bool)

(declare-fun res!889558 () Bool)

(declare-fun e!1281323 () Bool)

(assert (=> b!2028474 (=> (not res!889558) (not e!1281323))))

(declare-fun lt!761886 () Option!4665)

(assert (=> b!2028474 (= res!889558 (< (size!17349 (_2!11913 (get!7053 lt!761886))) (size!17349 (++!6004 lt!761718 lt!761704))))))

(declare-fun b!2028475 () Bool)

(declare-fun res!889560 () Bool)

(assert (=> b!2028475 (=> (not res!889560) (not e!1281323))))

(assert (=> b!2028475 (= res!889560 (= (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761886)))) (originalCharacters!4798 (_1!11913 (get!7053 lt!761886)))))))

(declare-fun b!2028476 () Bool)

(assert (=> b!2028476 (= e!1281323 (contains!4097 rules!3198 (rule!6220 (_1!11913 (get!7053 lt!761886)))))))

(declare-fun b!2028477 () Bool)

(declare-fun e!1281321 () Option!4665)

(declare-fun call!124436 () Option!4665)

(assert (=> b!2028477 (= e!1281321 call!124436)))

(declare-fun d!620247 () Bool)

(declare-fun e!1281322 () Bool)

(assert (=> d!620247 e!1281322))

(declare-fun res!889555 () Bool)

(assert (=> d!620247 (=> res!889555 e!1281322)))

(assert (=> d!620247 (= res!889555 (isEmpty!13861 lt!761886))))

(assert (=> d!620247 (= lt!761886 e!1281321)))

(declare-fun c!328235 () Bool)

(assert (=> d!620247 (= c!328235 (and (is-Cons!22208 rules!3198) (is-Nil!22208 (t!190125 rules!3198))))))

(declare-fun lt!761890 () Unit!36865)

(declare-fun lt!761889 () Unit!36865)

(assert (=> d!620247 (= lt!761890 lt!761889)))

(assert (=> d!620247 (isPrefix!1984 (++!6004 lt!761718 lt!761704) (++!6004 lt!761718 lt!761704))))

(assert (=> d!620247 (= lt!761889 (lemmaIsPrefixRefl!1302 (++!6004 lt!761718 lt!761704) (++!6004 lt!761718 lt!761704)))))

(assert (=> d!620247 (rulesValidInductive!1383 thiss!23328 rules!3198)))

(assert (=> d!620247 (= (maxPrefix!2040 thiss!23328 rules!3198 (++!6004 lt!761718 lt!761704)) lt!761886)))

(declare-fun b!2028478 () Bool)

(declare-fun res!889557 () Bool)

(assert (=> b!2028478 (=> (not res!889557) (not e!1281323))))

(assert (=> b!2028478 (= res!889557 (matchR!2682 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!761886)))) (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761886))))))))

(declare-fun b!2028479 () Bool)

(declare-fun res!889559 () Bool)

(assert (=> b!2028479 (=> (not res!889559) (not e!1281323))))

(assert (=> b!2028479 (= res!889559 (= (++!6004 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761886)))) (_2!11913 (get!7053 lt!761886))) (++!6004 lt!761718 lt!761704)))))

(declare-fun b!2028480 () Bool)

(declare-fun lt!761887 () Option!4665)

(declare-fun lt!761888 () Option!4665)

(assert (=> b!2028480 (= e!1281321 (ite (and (is-None!4664 lt!761887) (is-None!4664 lt!761888)) None!4664 (ite (is-None!4664 lt!761888) lt!761887 (ite (is-None!4664 lt!761887) lt!761888 (ite (>= (size!17347 (_1!11913 (v!26989 lt!761887))) (size!17347 (_1!11913 (v!26989 lt!761888)))) lt!761887 lt!761888)))))))

(assert (=> b!2028480 (= lt!761887 call!124436)))

(assert (=> b!2028480 (= lt!761888 (maxPrefix!2040 thiss!23328 (t!190125 rules!3198) (++!6004 lt!761718 lt!761704)))))

(declare-fun b!2028481 () Bool)

(declare-fun res!889561 () Bool)

(assert (=> b!2028481 (=> (not res!889561) (not e!1281323))))

(assert (=> b!2028481 (= res!889561 (= (value!125336 (_1!11913 (get!7053 lt!761886))) (apply!5846 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761886)))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!761886)))))))))

(declare-fun b!2028482 () Bool)

(assert (=> b!2028482 (= e!1281322 e!1281323)))

(declare-fun res!889556 () Bool)

(assert (=> b!2028482 (=> (not res!889556) (not e!1281323))))

(assert (=> b!2028482 (= res!889556 (isDefined!3954 lt!761886))))

(declare-fun bm!124431 () Bool)

(assert (=> bm!124431 (= call!124436 (maxPrefixOneRule!1266 thiss!23328 (h!27609 rules!3198) (++!6004 lt!761718 lt!761704)))))

(assert (= (and d!620247 c!328235) b!2028477))

(assert (= (and d!620247 (not c!328235)) b!2028480))

(assert (= (or b!2028477 b!2028480) bm!124431))

(assert (= (and d!620247 (not res!889555)) b!2028482))

(assert (= (and b!2028482 res!889556) b!2028475))

(assert (= (and b!2028475 res!889560) b!2028474))

(assert (= (and b!2028474 res!889558) b!2028479))

(assert (= (and b!2028479 res!889559) b!2028481))

(assert (= (and b!2028481 res!889561) b!2028478))

(assert (= (and b!2028478 res!889557) b!2028476))

(declare-fun m!2467635 () Bool)

(assert (=> b!2028474 m!2467635))

(declare-fun m!2467637 () Bool)

(assert (=> b!2028474 m!2467637))

(assert (=> b!2028474 m!2467179))

(declare-fun m!2467639 () Bool)

(assert (=> b!2028474 m!2467639))

(assert (=> b!2028479 m!2467635))

(declare-fun m!2467641 () Bool)

(assert (=> b!2028479 m!2467641))

(assert (=> b!2028479 m!2467641))

(declare-fun m!2467643 () Bool)

(assert (=> b!2028479 m!2467643))

(assert (=> b!2028479 m!2467643))

(declare-fun m!2467647 () Bool)

(assert (=> b!2028479 m!2467647))

(assert (=> bm!124431 m!2467179))

(declare-fun m!2467649 () Bool)

(assert (=> bm!124431 m!2467649))

(declare-fun m!2467651 () Bool)

(assert (=> b!2028482 m!2467651))

(assert (=> b!2028481 m!2467635))

(declare-fun m!2467653 () Bool)

(assert (=> b!2028481 m!2467653))

(assert (=> b!2028481 m!2467653))

(declare-fun m!2467655 () Bool)

(assert (=> b!2028481 m!2467655))

(assert (=> b!2028480 m!2467179))

(declare-fun m!2467657 () Bool)

(assert (=> b!2028480 m!2467657))

(assert (=> b!2028476 m!2467635))

(declare-fun m!2467659 () Bool)

(assert (=> b!2028476 m!2467659))

(declare-fun m!2467661 () Bool)

(assert (=> d!620247 m!2467661))

(assert (=> d!620247 m!2467179))

(assert (=> d!620247 m!2467179))

(declare-fun m!2467663 () Bool)

(assert (=> d!620247 m!2467663))

(assert (=> d!620247 m!2467179))

(assert (=> d!620247 m!2467179))

(declare-fun m!2467665 () Bool)

(assert (=> d!620247 m!2467665))

(assert (=> d!620247 m!2467623))

(assert (=> b!2028478 m!2467635))

(assert (=> b!2028478 m!2467641))

(assert (=> b!2028478 m!2467641))

(assert (=> b!2028478 m!2467643))

(assert (=> b!2028478 m!2467643))

(declare-fun m!2467669 () Bool)

(assert (=> b!2028478 m!2467669))

(assert (=> b!2028475 m!2467635))

(assert (=> b!2028475 m!2467641))

(assert (=> b!2028475 m!2467641))

(assert (=> b!2028475 m!2467643))

(assert (=> b!2028155 d!620247))

(declare-fun d!620255 () Bool)

(declare-fun e!1281330 () Bool)

(assert (=> d!620255 e!1281330))

(declare-fun res!889564 () Bool)

(assert (=> d!620255 (=> (not res!889564) (not e!1281330))))

(assert (=> d!620255 (= res!889564 (isDefined!3953 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 separatorToken!354)))))))

(declare-fun lt!761892 () Unit!36865)

(assert (=> d!620255 (= lt!761892 (choose!12363 thiss!23328 rules!3198 lt!761716 separatorToken!354))))

(assert (=> d!620255 (rulesInvariant!3211 thiss!23328 rules!3198)))

(assert (=> d!620255 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!806 thiss!23328 rules!3198 lt!761716 separatorToken!354) lt!761892)))

(declare-fun b!2028493 () Bool)

(declare-fun res!889565 () Bool)

(assert (=> b!2028493 (=> (not res!889565) (not e!1281330))))

(assert (=> b!2028493 (= res!889565 (matchR!2682 (regex!3991 (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 separatorToken!354))))) (list!9066 (charsOf!2531 separatorToken!354))))))

(declare-fun b!2028494 () Bool)

(assert (=> b!2028494 (= e!1281330 (= (rule!6220 separatorToken!354) (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 separatorToken!354))))))))

(assert (= (and d!620255 res!889564) b!2028493))

(assert (= (and b!2028493 res!889565) b!2028494))

(assert (=> d!620255 m!2467167))

(assert (=> d!620255 m!2467167))

(declare-fun m!2467675 () Bool)

(assert (=> d!620255 m!2467675))

(declare-fun m!2467677 () Bool)

(assert (=> d!620255 m!2467677))

(assert (=> d!620255 m!2467223))

(assert (=> b!2028493 m!2467171))

(assert (=> b!2028493 m!2467189))

(assert (=> b!2028493 m!2467171))

(assert (=> b!2028493 m!2467167))

(declare-fun m!2467679 () Bool)

(assert (=> b!2028493 m!2467679))

(assert (=> b!2028493 m!2467189))

(declare-fun m!2467681 () Bool)

(assert (=> b!2028493 m!2467681))

(assert (=> b!2028493 m!2467167))

(assert (=> b!2028494 m!2467167))

(assert (=> b!2028494 m!2467167))

(assert (=> b!2028494 m!2467679))

(assert (=> b!2028155 d!620255))

(declare-fun bs!420777 () Bool)

(declare-fun b!2028567 () Bool)

(assert (= bs!420777 (and b!2028567 b!2028166)))

(declare-fun lambda!76489 () Int)

(assert (=> bs!420777 (not (= lambda!76489 lambda!76480))))

(declare-fun b!2028585 () Bool)

(declare-fun e!1281388 () Bool)

(assert (=> b!2028585 (= e!1281388 true)))

(declare-fun b!2028584 () Bool)

(declare-fun e!1281387 () Bool)

(assert (=> b!2028584 (= e!1281387 e!1281388)))

(declare-fun b!2028583 () Bool)

(declare-fun e!1281386 () Bool)

(assert (=> b!2028583 (= e!1281386 e!1281387)))

(assert (=> b!2028567 e!1281386))

(assert (= b!2028584 b!2028585))

(assert (= b!2028583 b!2028584))

(assert (= (and b!2028567 (is-Cons!22208 rules!3198)) b!2028583))

(declare-fun order!14223 () Int)

(declare-fun dynLambda!11041 (Int Int) Int)

(assert (=> b!2028585 (< (dynLambda!11037 order!14217 (toValue!5664 (transformation!3991 (h!27609 rules!3198)))) (dynLambda!11041 order!14223 lambda!76489))))

(assert (=> b!2028585 (< (dynLambda!11039 order!14221 (toChars!5523 (transformation!3991 (h!27609 rules!3198)))) (dynLambda!11041 order!14223 lambda!76489))))

(assert (=> b!2028567 true))

(declare-fun e!1281379 () List!22289)

(declare-fun e!1281378 () List!22289)

(assert (=> b!2028567 (= e!1281379 e!1281378)))

(declare-fun lt!761950 () Unit!36865)

(declare-fun forallContained!747 (List!22291 Int Token!7534) Unit!36865)

(assert (=> b!2028567 (= lt!761950 (forallContained!747 (t!190126 tokens!598) lambda!76489 (h!27610 (t!190126 tokens!598))))))

(declare-fun lt!761948 () List!22289)

(assert (=> b!2028567 (= lt!761948 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 (t!190126 (t!190126 tokens!598)) separatorToken!354))))

(declare-fun lt!761945 () Option!4665)

(assert (=> b!2028567 (= lt!761945 (maxPrefix!2040 thiss!23328 rules!3198 (++!6004 (list!9066 (charsOf!2531 (h!27610 (t!190126 tokens!598)))) lt!761948)))))

(declare-fun c!328261 () Bool)

(assert (=> b!2028567 (= c!328261 (and (is-Some!4664 lt!761945) (= (_1!11913 (v!26989 lt!761945)) (h!27610 (t!190126 tokens!598)))))))

(declare-fun b!2028568 () Bool)

(declare-fun e!1281376 () List!22289)

(assert (=> b!2028568 (= e!1281376 Nil!22207)))

(assert (=> b!2028568 (= (print!1566 thiss!23328 (singletonSeq!1967 (h!27610 (t!190126 tokens!598)))) (printTailRec!1072 thiss!23328 (singletonSeq!1967 (h!27610 (t!190126 tokens!598))) 0 (BalanceConc!14673 Empty!7428)))))

(declare-fun lt!761949 () Unit!36865)

(declare-fun Unit!36874 () Unit!36865)

(assert (=> b!2028568 (= lt!761949 Unit!36874)))

(declare-fun lt!761947 () Unit!36865)

(declare-fun call!124455 () List!22289)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!778 (LexerInterface!3604 List!22290 List!22289 List!22289) Unit!36865)

(assert (=> b!2028568 (= lt!761947 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!778 thiss!23328 rules!3198 call!124455 lt!761948))))

(assert (=> b!2028568 false))

(declare-fun lt!761946 () Unit!36865)

(declare-fun Unit!36875 () Unit!36865)

(assert (=> b!2028568 (= lt!761946 Unit!36875)))

(declare-fun d!620257 () Bool)

(declare-fun c!328263 () Bool)

(assert (=> d!620257 (= c!328263 (is-Cons!22209 (t!190126 tokens!598)))))

(assert (=> d!620257 (= (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 (t!190126 tokens!598) separatorToken!354) e!1281379)))

(declare-fun b!2028569 () Bool)

(declare-fun e!1281377 () List!22289)

(declare-fun call!124456 () List!22289)

(assert (=> b!2028569 (= e!1281377 call!124456)))

(declare-fun bm!124447 () Bool)

(declare-fun c!328262 () Bool)

(assert (=> bm!124447 (= c!328262 c!328261)))

(declare-fun call!124454 () List!22289)

(assert (=> bm!124447 (= call!124454 (++!6004 e!1281377 (ite c!328261 lt!761948 call!124455)))))

(declare-fun bm!124448 () Bool)

(declare-fun call!124452 () BalanceConc!14672)

(declare-fun call!124453 () BalanceConc!14672)

(assert (=> bm!124448 (= call!124452 call!124453)))

(declare-fun bm!124449 () Bool)

(assert (=> bm!124449 (= call!124455 call!124456)))

(declare-fun c!328264 () Bool)

(declare-fun bm!124450 () Bool)

(assert (=> bm!124450 (= call!124453 (charsOf!2531 (ite c!328261 (h!27610 (t!190126 tokens!598)) (ite c!328264 separatorToken!354 (h!27610 (t!190126 tokens!598))))))))

(declare-fun bm!124451 () Bool)

(assert (=> bm!124451 (= call!124456 (list!9066 (ite c!328261 call!124453 call!124452)))))

(declare-fun b!2028570 () Bool)

(assert (=> b!2028570 (= e!1281376 (++!6004 call!124454 lt!761948))))

(declare-fun b!2028571 () Bool)

(assert (=> b!2028571 (= e!1281377 (list!9066 (charsOf!2531 (h!27610 (t!190126 tokens!598)))))))

(declare-fun b!2028572 () Bool)

(assert (=> b!2028572 (= e!1281378 call!124454)))

(declare-fun b!2028573 () Bool)

(assert (=> b!2028573 (= c!328264 (and (is-Some!4664 lt!761945) (not (= (_1!11913 (v!26989 lt!761945)) (h!27610 (t!190126 tokens!598))))))))

(assert (=> b!2028573 (= e!1281378 e!1281376)))

(declare-fun b!2028574 () Bool)

(assert (=> b!2028574 (= e!1281379 Nil!22207)))

(assert (= (and d!620257 c!328263) b!2028567))

(assert (= (and d!620257 (not c!328263)) b!2028574))

(assert (= (and b!2028567 c!328261) b!2028572))

(assert (= (and b!2028567 (not c!328261)) b!2028573))

(assert (= (and b!2028573 c!328264) b!2028570))

(assert (= (and b!2028573 (not c!328264)) b!2028568))

(assert (= (or b!2028570 b!2028568) bm!124448))

(assert (= (or b!2028570 b!2028568) bm!124449))

(assert (= (or b!2028572 bm!124448) bm!124450))

(assert (= (or b!2028572 bm!124449) bm!124451))

(assert (= (or b!2028572 b!2028570) bm!124447))

(assert (= (and bm!124447 c!328262) b!2028569))

(assert (= (and bm!124447 (not c!328262)) b!2028571))

(declare-fun m!2467791 () Bool)

(assert (=> b!2028570 m!2467791))

(declare-fun m!2467793 () Bool)

(assert (=> bm!124450 m!2467793))

(declare-fun m!2467795 () Bool)

(assert (=> b!2028571 m!2467795))

(assert (=> b!2028571 m!2467795))

(declare-fun m!2467797 () Bool)

(assert (=> b!2028571 m!2467797))

(declare-fun m!2467799 () Bool)

(assert (=> b!2028568 m!2467799))

(assert (=> b!2028568 m!2467799))

(declare-fun m!2467801 () Bool)

(assert (=> b!2028568 m!2467801))

(assert (=> b!2028568 m!2467799))

(declare-fun m!2467803 () Bool)

(assert (=> b!2028568 m!2467803))

(declare-fun m!2467805 () Bool)

(assert (=> b!2028568 m!2467805))

(declare-fun m!2467807 () Bool)

(assert (=> b!2028567 m!2467807))

(declare-fun m!2467809 () Bool)

(assert (=> b!2028567 m!2467809))

(assert (=> b!2028567 m!2467797))

(assert (=> b!2028567 m!2467807))

(declare-fun m!2467811 () Bool)

(assert (=> b!2028567 m!2467811))

(assert (=> b!2028567 m!2467795))

(assert (=> b!2028567 m!2467797))

(assert (=> b!2028567 m!2467795))

(declare-fun m!2467813 () Bool)

(assert (=> b!2028567 m!2467813))

(declare-fun m!2467815 () Bool)

(assert (=> bm!124447 m!2467815))

(declare-fun m!2467817 () Bool)

(assert (=> bm!124451 m!2467817))

(assert (=> b!2028155 d!620257))

(declare-fun d!620289 () Bool)

(declare-fun list!9068 (Conc!7428) List!22289)

(assert (=> d!620289 (= (list!9066 (charsOf!2531 separatorToken!354)) (list!9068 (c!328191 (charsOf!2531 separatorToken!354))))))

(declare-fun bs!420778 () Bool)

(assert (= bs!420778 d!620289))

(declare-fun m!2467819 () Bool)

(assert (=> bs!420778 m!2467819))

(assert (=> b!2028155 d!620289))

(declare-fun d!620291 () Bool)

(declare-fun isEmpty!13862 (Option!4666) Bool)

(assert (=> d!620291 (= (isDefined!3953 lt!761710) (not (isEmpty!13862 lt!761710)))))

(declare-fun bs!420779 () Bool)

(assert (= bs!420779 d!620291))

(declare-fun m!2467821 () Bool)

(assert (=> bs!420779 m!2467821))

(assert (=> b!2028155 d!620291))

(declare-fun b!2028592 () Bool)

(declare-fun e!1281391 () Bool)

(assert (=> b!2028592 (= e!1281391 true)))

(declare-fun d!620293 () Bool)

(assert (=> d!620293 e!1281391))

(assert (= d!620293 b!2028592))

(declare-fun lambda!76492 () Int)

(declare-fun order!14225 () Int)

(declare-fun dynLambda!11042 (Int Int) Int)

(assert (=> b!2028592 (< (dynLambda!11037 order!14217 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) (dynLambda!11042 order!14225 lambda!76492))))

(assert (=> b!2028592 (< (dynLambda!11039 order!14221 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) (dynLambda!11042 order!14225 lambda!76492))))

(declare-fun dynLambda!11043 (Int TokenValue!4127) BalanceConc!14672)

(assert (=> d!620293 (= (list!9066 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729))) (list!9066 lt!761729))))

(declare-fun lt!761953 () Unit!36865)

(declare-fun ForallOf!448 (Int BalanceConc!14672) Unit!36865)

(assert (=> d!620293 (= lt!761953 (ForallOf!448 lambda!76492 lt!761729))))

(assert (=> d!620293 (= (lemmaSemiInverse!948 (transformation!3991 (rule!6220 (h!27610 tokens!598))) lt!761729) lt!761953)))

(declare-fun b_lambda!68251 () Bool)

(assert (=> (not b_lambda!68251) (not d!620293)))

(declare-fun tb!127859 () Bool)

(declare-fun t!190156 () Bool)

(assert (=> (and b!2028173 (= (toChars!5523 (transformation!3991 (h!27609 rules!3198))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190156) tb!127859))

(declare-fun b!2028597 () Bool)

(declare-fun e!1281394 () Bool)

(declare-fun tp!603218 () Bool)

(declare-fun inv!29393 (Conc!7428) Bool)

(assert (=> b!2028597 (= e!1281394 (and (inv!29393 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729)))) tp!603218))))

(declare-fun result!153002 () Bool)

(declare-fun inv!29394 (BalanceConc!14672) Bool)

(assert (=> tb!127859 (= result!153002 (and (inv!29394 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729))) e!1281394))))

(assert (= tb!127859 b!2028597))

(declare-fun m!2467823 () Bool)

(assert (=> b!2028597 m!2467823))

(declare-fun m!2467825 () Bool)

(assert (=> tb!127859 m!2467825))

(assert (=> d!620293 t!190156))

(declare-fun b_and!161439 () Bool)

(assert (= b_and!161399 (and (=> t!190156 result!153002) b_and!161439)))

(declare-fun t!190158 () Bool)

(declare-fun tb!127861 () Bool)

(assert (=> (and b!2028151 (= (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190158) tb!127861))

(declare-fun result!153006 () Bool)

(assert (= result!153006 result!153002))

(assert (=> d!620293 t!190158))

(declare-fun b_and!161441 () Bool)

(assert (= b_and!161403 (and (=> t!190158 result!153006) b_and!161441)))

(declare-fun t!190160 () Bool)

(declare-fun tb!127863 () Bool)

(assert (=> (and b!2028164 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190160) tb!127863))

(declare-fun result!153008 () Bool)

(assert (= result!153008 result!153002))

(assert (=> d!620293 t!190160))

(declare-fun b_and!161443 () Bool)

(assert (= b_and!161407 (and (=> t!190160 result!153008) b_and!161443)))

(declare-fun b_lambda!68253 () Bool)

(assert (=> (not b_lambda!68253) (not d!620293)))

(assert (=> d!620293 t!190133))

(declare-fun b_and!161445 () Bool)

(assert (= b_and!161427 (and (=> t!190133 result!152980) b_and!161445)))

(assert (=> d!620293 t!190135))

(declare-fun b_and!161447 () Bool)

(assert (= b_and!161429 (and (=> t!190135 result!152984) b_and!161447)))

(assert (=> d!620293 t!190137))

(declare-fun b_and!161449 () Bool)

(assert (= b_and!161431 (and (=> t!190137 result!152986) b_and!161449)))

(assert (=> d!620293 m!2467153))

(assert (=> d!620293 m!2467503))

(declare-fun m!2467827 () Bool)

(assert (=> d!620293 m!2467827))

(declare-fun m!2467829 () Bool)

(assert (=> d!620293 m!2467829))

(assert (=> d!620293 m!2467827))

(declare-fun m!2467831 () Bool)

(assert (=> d!620293 m!2467831))

(assert (=> d!620293 m!2467503))

(assert (=> b!2028155 d!620293))

(declare-fun b!2028611 () Bool)

(declare-fun e!1281403 () Option!4666)

(declare-fun e!1281404 () Option!4666)

(assert (=> b!2028611 (= e!1281403 e!1281404)))

(declare-fun c!328271 () Bool)

(assert (=> b!2028611 (= c!328271 (and (is-Cons!22208 rules!3198) (not (= (tag!4477 (h!27609 rules!3198)) (tag!4477 (rule!6220 separatorToken!354))))))))

(declare-fun b!2028612 () Bool)

(assert (=> b!2028612 (= e!1281403 (Some!4665 (h!27609 rules!3198)))))

(declare-fun b!2028613 () Bool)

(declare-fun lt!761962 () Unit!36865)

(declare-fun lt!761960 () Unit!36865)

(assert (=> b!2028613 (= lt!761962 lt!761960)))

(assert (=> b!2028613 (rulesInvariant!3211 thiss!23328 (t!190125 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!309 (LexerInterface!3604 Rule!7782 List!22290) Unit!36865)

(assert (=> b!2028613 (= lt!761960 (lemmaInvariantOnRulesThenOnTail!309 thiss!23328 (h!27609 rules!3198) (t!190125 rules!3198)))))

(assert (=> b!2028613 (= e!1281404 (getRuleFromTag!806 thiss!23328 (t!190125 rules!3198) (tag!4477 (rule!6220 separatorToken!354))))))

(declare-fun b!2028614 () Bool)

(declare-fun e!1281406 () Bool)

(declare-fun e!1281405 () Bool)

(assert (=> b!2028614 (= e!1281406 e!1281405)))

(declare-fun res!889603 () Bool)

(assert (=> b!2028614 (=> (not res!889603) (not e!1281405))))

(declare-fun lt!761961 () Option!4666)

(assert (=> b!2028614 (= res!889603 (contains!4097 rules!3198 (get!7052 lt!761961)))))

(declare-fun b!2028615 () Bool)

(assert (=> b!2028615 (= e!1281404 None!4665)))

(declare-fun d!620295 () Bool)

(assert (=> d!620295 e!1281406))

(declare-fun res!889602 () Bool)

(assert (=> d!620295 (=> res!889602 e!1281406)))

(assert (=> d!620295 (= res!889602 (isEmpty!13862 lt!761961))))

(assert (=> d!620295 (= lt!761961 e!1281403)))

(declare-fun c!328270 () Bool)

(assert (=> d!620295 (= c!328270 (and (is-Cons!22208 rules!3198) (= (tag!4477 (h!27609 rules!3198)) (tag!4477 (rule!6220 separatorToken!354)))))))

(assert (=> d!620295 (rulesInvariant!3211 thiss!23328 rules!3198)))

(assert (=> d!620295 (= (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 separatorToken!354))) lt!761961)))

(declare-fun b!2028610 () Bool)

(assert (=> b!2028610 (= e!1281405 (= (tag!4477 (get!7052 lt!761961)) (tag!4477 (rule!6220 separatorToken!354))))))

(assert (= (and d!620295 c!328270) b!2028612))

(assert (= (and d!620295 (not c!328270)) b!2028611))

(assert (= (and b!2028611 c!328271) b!2028613))

(assert (= (and b!2028611 (not c!328271)) b!2028615))

(assert (= (and d!620295 (not res!889602)) b!2028614))

(assert (= (and b!2028614 res!889603) b!2028610))

(declare-fun m!2467833 () Bool)

(assert (=> b!2028613 m!2467833))

(declare-fun m!2467835 () Bool)

(assert (=> b!2028613 m!2467835))

(declare-fun m!2467837 () Bool)

(assert (=> b!2028613 m!2467837))

(declare-fun m!2467839 () Bool)

(assert (=> b!2028614 m!2467839))

(assert (=> b!2028614 m!2467839))

(declare-fun m!2467841 () Bool)

(assert (=> b!2028614 m!2467841))

(declare-fun m!2467843 () Bool)

(assert (=> d!620295 m!2467843))

(assert (=> d!620295 m!2467223))

(assert (=> b!2028610 m!2467839))

(assert (=> b!2028155 d!620295))

(declare-fun b!2028617 () Bool)

(declare-fun e!1281407 () Option!4666)

(declare-fun e!1281408 () Option!4666)

(assert (=> b!2028617 (= e!1281407 e!1281408)))

(declare-fun c!328273 () Bool)

(assert (=> b!2028617 (= c!328273 (and (is-Cons!22208 rules!3198) (not (= (tag!4477 (h!27609 rules!3198)) (tag!4477 (rule!6220 (h!27610 tokens!598)))))))))

(declare-fun b!2028618 () Bool)

(assert (=> b!2028618 (= e!1281407 (Some!4665 (h!27609 rules!3198)))))

(declare-fun b!2028619 () Bool)

(declare-fun lt!761965 () Unit!36865)

(declare-fun lt!761963 () Unit!36865)

(assert (=> b!2028619 (= lt!761965 lt!761963)))

(assert (=> b!2028619 (rulesInvariant!3211 thiss!23328 (t!190125 rules!3198))))

(assert (=> b!2028619 (= lt!761963 (lemmaInvariantOnRulesThenOnTail!309 thiss!23328 (h!27609 rules!3198) (t!190125 rules!3198)))))

(assert (=> b!2028619 (= e!1281408 (getRuleFromTag!806 thiss!23328 (t!190125 rules!3198) (tag!4477 (rule!6220 (h!27610 tokens!598)))))))

(declare-fun b!2028620 () Bool)

(declare-fun e!1281410 () Bool)

(declare-fun e!1281409 () Bool)

(assert (=> b!2028620 (= e!1281410 e!1281409)))

(declare-fun res!889605 () Bool)

(assert (=> b!2028620 (=> (not res!889605) (not e!1281409))))

(declare-fun lt!761964 () Option!4666)

(assert (=> b!2028620 (= res!889605 (contains!4097 rules!3198 (get!7052 lt!761964)))))

(declare-fun b!2028621 () Bool)

(assert (=> b!2028621 (= e!1281408 None!4665)))

(declare-fun d!620297 () Bool)

(assert (=> d!620297 e!1281410))

(declare-fun res!889604 () Bool)

(assert (=> d!620297 (=> res!889604 e!1281410)))

(assert (=> d!620297 (= res!889604 (isEmpty!13862 lt!761964))))

(assert (=> d!620297 (= lt!761964 e!1281407)))

(declare-fun c!328272 () Bool)

(assert (=> d!620297 (= c!328272 (and (is-Cons!22208 rules!3198) (= (tag!4477 (h!27609 rules!3198)) (tag!4477 (rule!6220 (h!27610 tokens!598))))))))

(assert (=> d!620297 (rulesInvariant!3211 thiss!23328 rules!3198)))

(assert (=> d!620297 (= (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 (h!27610 tokens!598)))) lt!761964)))

(declare-fun b!2028616 () Bool)

(assert (=> b!2028616 (= e!1281409 (= (tag!4477 (get!7052 lt!761964)) (tag!4477 (rule!6220 (h!27610 tokens!598)))))))

(assert (= (and d!620297 c!328272) b!2028618))

(assert (= (and d!620297 (not c!328272)) b!2028617))

(assert (= (and b!2028617 c!328273) b!2028619))

(assert (= (and b!2028617 (not c!328273)) b!2028621))

(assert (= (and d!620297 (not res!889604)) b!2028620))

(assert (= (and b!2028620 res!889605) b!2028616))

(assert (=> b!2028619 m!2467833))

(assert (=> b!2028619 m!2467835))

(declare-fun m!2467845 () Bool)

(assert (=> b!2028619 m!2467845))

(declare-fun m!2467847 () Bool)

(assert (=> b!2028620 m!2467847))

(assert (=> b!2028620 m!2467847))

(declare-fun m!2467849 () Bool)

(assert (=> b!2028620 m!2467849))

(declare-fun m!2467851 () Bool)

(assert (=> d!620297 m!2467851))

(assert (=> d!620297 m!2467223))

(assert (=> b!2028616 m!2467847))

(assert (=> b!2028155 d!620297))

(declare-fun d!620299 () Bool)

(declare-fun lt!761968 () BalanceConc!14672)

(assert (=> d!620299 (= (list!9066 lt!761968) (originalCharacters!4798 (h!27610 tokens!598)))))

(assert (=> d!620299 (= lt!761968 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (value!125336 (h!27610 tokens!598))))))

(assert (=> d!620299 (= (charsOf!2531 (h!27610 tokens!598)) lt!761968)))

(declare-fun b_lambda!68255 () Bool)

(assert (=> (not b_lambda!68255) (not d!620299)))

(declare-fun t!190162 () Bool)

(declare-fun tb!127865 () Bool)

(assert (=> (and b!2028173 (= (toChars!5523 (transformation!3991 (h!27609 rules!3198))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190162) tb!127865))

(declare-fun b!2028622 () Bool)

(declare-fun e!1281411 () Bool)

(declare-fun tp!603219 () Bool)

(assert (=> b!2028622 (= e!1281411 (and (inv!29393 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (value!125336 (h!27610 tokens!598))))) tp!603219))))

(declare-fun result!153010 () Bool)

(assert (=> tb!127865 (= result!153010 (and (inv!29394 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (value!125336 (h!27610 tokens!598)))) e!1281411))))

(assert (= tb!127865 b!2028622))

(declare-fun m!2467853 () Bool)

(assert (=> b!2028622 m!2467853))

(declare-fun m!2467855 () Bool)

(assert (=> tb!127865 m!2467855))

(assert (=> d!620299 t!190162))

(declare-fun b_and!161451 () Bool)

(assert (= b_and!161439 (and (=> t!190162 result!153010) b_and!161451)))

(declare-fun tb!127867 () Bool)

(declare-fun t!190164 () Bool)

(assert (=> (and b!2028151 (= (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190164) tb!127867))

(declare-fun result!153012 () Bool)

(assert (= result!153012 result!153010))

(assert (=> d!620299 t!190164))

(declare-fun b_and!161453 () Bool)

(assert (= b_and!161441 (and (=> t!190164 result!153012) b_and!161453)))

(declare-fun t!190166 () Bool)

(declare-fun tb!127869 () Bool)

(assert (=> (and b!2028164 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190166) tb!127869))

(declare-fun result!153014 () Bool)

(assert (= result!153014 result!153010))

(assert (=> d!620299 t!190166))

(declare-fun b_and!161455 () Bool)

(assert (= b_and!161443 (and (=> t!190166 result!153014) b_and!161455)))

(declare-fun m!2467857 () Bool)

(assert (=> d!620299 m!2467857))

(declare-fun m!2467859 () Bool)

(assert (=> d!620299 m!2467859))

(assert (=> b!2028155 d!620299))

(declare-fun d!620301 () Bool)

(declare-fun fromListB!1281 (List!22289) BalanceConc!14672)

(assert (=> d!620301 (= (seqFromList!2845 (originalCharacters!4798 (h!27610 tokens!598))) (fromListB!1281 (originalCharacters!4798 (h!27610 tokens!598))))))

(declare-fun bs!420780 () Bool)

(assert (= bs!420780 d!620301))

(declare-fun m!2467861 () Bool)

(assert (=> bs!420780 m!2467861))

(assert (=> b!2028155 d!620301))

(declare-fun d!620303 () Bool)

(assert (=> d!620303 (= (isDefined!3953 lt!761702) (not (isEmpty!13862 lt!761702)))))

(declare-fun bs!420781 () Bool)

(assert (= bs!420781 d!620303))

(declare-fun m!2467863 () Bool)

(assert (=> bs!420781 m!2467863))

(assert (=> b!2028155 d!620303))

(declare-fun d!620305 () Bool)

(assert (=> d!620305 (= (list!9066 lt!761729) (list!9068 (c!328191 lt!761729)))))

(declare-fun bs!420782 () Bool)

(assert (= bs!420782 d!620305))

(declare-fun m!2467865 () Bool)

(assert (=> bs!420782 m!2467865))

(assert (=> b!2028155 d!620305))

(declare-fun d!620307 () Bool)

(declare-fun lt!761969 () BalanceConc!14672)

(assert (=> d!620307 (= (list!9066 lt!761969) (originalCharacters!4798 separatorToken!354))))

(assert (=> d!620307 (= lt!761969 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (value!125336 separatorToken!354)))))

(assert (=> d!620307 (= (charsOf!2531 separatorToken!354) lt!761969)))

(declare-fun b_lambda!68257 () Bool)

(assert (=> (not b_lambda!68257) (not d!620307)))

(declare-fun t!190168 () Bool)

(declare-fun tb!127871 () Bool)

(assert (=> (and b!2028173 (= (toChars!5523 (transformation!3991 (h!27609 rules!3198))) (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354)))) t!190168) tb!127871))

(declare-fun b!2028623 () Bool)

(declare-fun e!1281412 () Bool)

(declare-fun tp!603220 () Bool)

(assert (=> b!2028623 (= e!1281412 (and (inv!29393 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (value!125336 separatorToken!354)))) tp!603220))))

(declare-fun result!153016 () Bool)

(assert (=> tb!127871 (= result!153016 (and (inv!29394 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (value!125336 separatorToken!354))) e!1281412))))

(assert (= tb!127871 b!2028623))

(declare-fun m!2467867 () Bool)

(assert (=> b!2028623 m!2467867))

(declare-fun m!2467869 () Bool)

(assert (=> tb!127871 m!2467869))

(assert (=> d!620307 t!190168))

(declare-fun b_and!161457 () Bool)

(assert (= b_and!161451 (and (=> t!190168 result!153016) b_and!161457)))

(declare-fun t!190170 () Bool)

(declare-fun tb!127873 () Bool)

(assert (=> (and b!2028151 (= (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354)))) t!190170) tb!127873))

(declare-fun result!153018 () Bool)

(assert (= result!153018 result!153016))

(assert (=> d!620307 t!190170))

(declare-fun b_and!161459 () Bool)

(assert (= b_and!161453 (and (=> t!190170 result!153018) b_and!161459)))

(declare-fun tb!127875 () Bool)

(declare-fun t!190172 () Bool)

(assert (=> (and b!2028164 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354)))) t!190172) tb!127875))

(declare-fun result!153020 () Bool)

(assert (= result!153020 result!153016))

(assert (=> d!620307 t!190172))

(declare-fun b_and!161461 () Bool)

(assert (= b_and!161455 (and (=> t!190172 result!153020) b_and!161461)))

(declare-fun m!2467871 () Bool)

(assert (=> d!620307 m!2467871))

(declare-fun m!2467873 () Bool)

(assert (=> d!620307 m!2467873))

(assert (=> b!2028155 d!620307))

(declare-fun d!620309 () Bool)

(declare-fun lt!761972 () Bool)

(assert (=> d!620309 (= lt!761972 (set.member lt!761712 (content!3278 lt!761707)))))

(declare-fun e!1281417 () Bool)

(assert (=> d!620309 (= lt!761972 e!1281417)))

(declare-fun res!889610 () Bool)

(assert (=> d!620309 (=> (not res!889610) (not e!1281417))))

(assert (=> d!620309 (= res!889610 (is-Cons!22207 lt!761707))))

(assert (=> d!620309 (= (contains!4098 lt!761707 lt!761712) lt!761972)))

(declare-fun b!2028628 () Bool)

(declare-fun e!1281418 () Bool)

(assert (=> b!2028628 (= e!1281417 e!1281418)))

(declare-fun res!889611 () Bool)

(assert (=> b!2028628 (=> res!889611 e!1281418)))

(assert (=> b!2028628 (= res!889611 (= (h!27608 lt!761707) lt!761712))))

(declare-fun b!2028629 () Bool)

(assert (=> b!2028629 (= e!1281418 (contains!4098 (t!190124 lt!761707) lt!761712))))

(assert (= (and d!620309 res!889610) b!2028628))

(assert (= (and b!2028628 (not res!889611)) b!2028629))

(declare-fun m!2467875 () Bool)

(assert (=> d!620309 m!2467875))

(declare-fun m!2467877 () Bool)

(assert (=> d!620309 m!2467877))

(declare-fun m!2467879 () Bool)

(assert (=> b!2028629 m!2467879))

(assert (=> b!2028176 d!620309))

(declare-fun d!620311 () Bool)

(declare-fun lt!761978 () Bool)

(declare-fun e!1281423 () Bool)

(assert (=> d!620311 (= lt!761978 e!1281423)))

(declare-fun res!889620 () Bool)

(assert (=> d!620311 (=> (not res!889620) (not e!1281423))))

(declare-fun list!9070 (BalanceConc!14674) List!22291)

(assert (=> d!620311 (= res!889620 (= (list!9070 (_1!11914 (lex!1620 thiss!23328 rules!3198 (print!1566 thiss!23328 (singletonSeq!1967 separatorToken!354))))) (list!9070 (singletonSeq!1967 separatorToken!354))))))

(declare-fun e!1281424 () Bool)

(assert (=> d!620311 (= lt!761978 e!1281424)))

(declare-fun res!889619 () Bool)

(assert (=> d!620311 (=> (not res!889619) (not e!1281424))))

(declare-fun lt!761977 () tuple2!20890)

(declare-fun size!17351 (BalanceConc!14674) Int)

(assert (=> d!620311 (= res!889619 (= (size!17351 (_1!11914 lt!761977)) 1))))

(assert (=> d!620311 (= lt!761977 (lex!1620 thiss!23328 rules!3198 (print!1566 thiss!23328 (singletonSeq!1967 separatorToken!354))))))

(assert (=> d!620311 (not (isEmpty!13856 rules!3198))))

(assert (=> d!620311 (= (rulesProduceIndividualToken!1776 thiss!23328 rules!3198 separatorToken!354) lt!761978)))

(declare-fun b!2028636 () Bool)

(declare-fun res!889618 () Bool)

(assert (=> b!2028636 (=> (not res!889618) (not e!1281424))))

(declare-fun apply!5848 (BalanceConc!14674 Int) Token!7534)

(assert (=> b!2028636 (= res!889618 (= (apply!5848 (_1!11914 lt!761977) 0) separatorToken!354))))

(declare-fun b!2028637 () Bool)

(declare-fun isEmpty!13864 (BalanceConc!14672) Bool)

(assert (=> b!2028637 (= e!1281424 (isEmpty!13864 (_2!11914 lt!761977)))))

(declare-fun b!2028638 () Bool)

(assert (=> b!2028638 (= e!1281423 (isEmpty!13864 (_2!11914 (lex!1620 thiss!23328 rules!3198 (print!1566 thiss!23328 (singletonSeq!1967 separatorToken!354))))))))

(assert (= (and d!620311 res!889619) b!2028636))

(assert (= (and b!2028636 res!889618) b!2028637))

(assert (= (and d!620311 res!889620) b!2028638))

(declare-fun m!2467881 () Bool)

(assert (=> d!620311 m!2467881))

(declare-fun m!2467883 () Bool)

(assert (=> d!620311 m!2467883))

(declare-fun m!2467885 () Bool)

(assert (=> d!620311 m!2467885))

(declare-fun m!2467887 () Bool)

(assert (=> d!620311 m!2467887))

(declare-fun m!2467889 () Bool)

(assert (=> d!620311 m!2467889))

(assert (=> d!620311 m!2467235))

(assert (=> d!620311 m!2467889))

(assert (=> d!620311 m!2467885))

(assert (=> d!620311 m!2467889))

(declare-fun m!2467891 () Bool)

(assert (=> d!620311 m!2467891))

(declare-fun m!2467893 () Bool)

(assert (=> b!2028636 m!2467893))

(declare-fun m!2467895 () Bool)

(assert (=> b!2028637 m!2467895))

(assert (=> b!2028638 m!2467889))

(assert (=> b!2028638 m!2467889))

(assert (=> b!2028638 m!2467885))

(assert (=> b!2028638 m!2467885))

(assert (=> b!2028638 m!2467887))

(declare-fun m!2467897 () Bool)

(assert (=> b!2028638 m!2467897))

(assert (=> b!2028175 d!620311))

(declare-fun d!620313 () Bool)

(declare-fun e!1281444 () Bool)

(assert (=> d!620313 e!1281444))

(declare-fun c!328280 () Bool)

(assert (=> d!620313 (= c!328280 (is-EmptyExpr!5416 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))

(declare-fun lt!761981 () Bool)

(declare-fun e!1281442 () Bool)

(assert (=> d!620313 (= lt!761981 e!1281442)))

(declare-fun c!328281 () Bool)

(assert (=> d!620313 (= c!328281 (isEmpty!13854 lt!761718))))

(declare-fun validRegex!2179 (Regex!5416) Bool)

(assert (=> d!620313 (validRegex!2179 (regex!3991 (rule!6220 (h!27610 tokens!598))))))

(assert (=> d!620313 (= (matchR!2682 (regex!3991 (rule!6220 (h!27610 tokens!598))) lt!761718) lt!761981)))

(declare-fun b!2028667 () Bool)

(declare-fun derivativeStep!1412 (Regex!5416 C!10978) Regex!5416)

(declare-fun tail!3060 (List!22289) List!22289)

(assert (=> b!2028667 (= e!1281442 (matchR!2682 (derivativeStep!1412 (regex!3991 (rule!6220 (h!27610 tokens!598))) (head!4584 lt!761718)) (tail!3060 lt!761718)))))

(declare-fun b!2028668 () Bool)

(declare-fun e!1281443 () Bool)

(assert (=> b!2028668 (= e!1281443 (not lt!761981))))

(declare-fun b!2028669 () Bool)

(declare-fun res!889642 () Bool)

(declare-fun e!1281441 () Bool)

(assert (=> b!2028669 (=> res!889642 e!1281441)))

(assert (=> b!2028669 (= res!889642 (not (isEmpty!13854 (tail!3060 lt!761718))))))

(declare-fun b!2028670 () Bool)

(assert (=> b!2028670 (= e!1281441 (not (= (head!4584 lt!761718) (c!328192 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))))

(declare-fun b!2028671 () Bool)

(declare-fun e!1281445 () Bool)

(assert (=> b!2028671 (= e!1281445 e!1281441)))

(declare-fun res!889638 () Bool)

(assert (=> b!2028671 (=> res!889638 e!1281441)))

(declare-fun call!124459 () Bool)

(assert (=> b!2028671 (= res!889638 call!124459)))

(declare-fun b!2028672 () Bool)

(declare-fun res!889644 () Bool)

(declare-fun e!1281439 () Bool)

(assert (=> b!2028672 (=> (not res!889644) (not e!1281439))))

(assert (=> b!2028672 (= res!889644 (isEmpty!13854 (tail!3060 lt!761718)))))

(declare-fun b!2028673 () Bool)

(declare-fun res!889640 () Bool)

(declare-fun e!1281440 () Bool)

(assert (=> b!2028673 (=> res!889640 e!1281440)))

(assert (=> b!2028673 (= res!889640 e!1281439)))

(declare-fun res!889643 () Bool)

(assert (=> b!2028673 (=> (not res!889643) (not e!1281439))))

(assert (=> b!2028673 (= res!889643 lt!761981)))

(declare-fun b!2028674 () Bool)

(declare-fun res!889639 () Bool)

(assert (=> b!2028674 (=> (not res!889639) (not e!1281439))))

(assert (=> b!2028674 (= res!889639 (not call!124459))))

(declare-fun b!2028675 () Bool)

(assert (=> b!2028675 (= e!1281440 e!1281445)))

(declare-fun res!889637 () Bool)

(assert (=> b!2028675 (=> (not res!889637) (not e!1281445))))

(assert (=> b!2028675 (= res!889637 (not lt!761981))))

(declare-fun b!2028676 () Bool)

(assert (=> b!2028676 (= e!1281439 (= (head!4584 lt!761718) (c!328192 (regex!3991 (rule!6220 (h!27610 tokens!598))))))))

(declare-fun b!2028677 () Bool)

(declare-fun nullable!1653 (Regex!5416) Bool)

(assert (=> b!2028677 (= e!1281442 (nullable!1653 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))

(declare-fun b!2028678 () Bool)

(assert (=> b!2028678 (= e!1281444 e!1281443)))

(declare-fun c!328282 () Bool)

(assert (=> b!2028678 (= c!328282 (is-EmptyLang!5416 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))

(declare-fun bm!124454 () Bool)

(assert (=> bm!124454 (= call!124459 (isEmpty!13854 lt!761718))))

(declare-fun b!2028679 () Bool)

(declare-fun res!889641 () Bool)

(assert (=> b!2028679 (=> res!889641 e!1281440)))

(assert (=> b!2028679 (= res!889641 (not (is-ElementMatch!5416 (regex!3991 (rule!6220 (h!27610 tokens!598))))))))

(assert (=> b!2028679 (= e!1281443 e!1281440)))

(declare-fun b!2028680 () Bool)

(assert (=> b!2028680 (= e!1281444 (= lt!761981 call!124459))))

(assert (= (and d!620313 c!328281) b!2028677))

(assert (= (and d!620313 (not c!328281)) b!2028667))

(assert (= (and d!620313 c!328280) b!2028680))

(assert (= (and d!620313 (not c!328280)) b!2028678))

(assert (= (and b!2028678 c!328282) b!2028668))

(assert (= (and b!2028678 (not c!328282)) b!2028679))

(assert (= (and b!2028679 (not res!889641)) b!2028673))

(assert (= (and b!2028673 res!889643) b!2028674))

(assert (= (and b!2028674 res!889639) b!2028672))

(assert (= (and b!2028672 res!889644) b!2028676))

(assert (= (and b!2028673 (not res!889640)) b!2028675))

(assert (= (and b!2028675 res!889637) b!2028671))

(assert (= (and b!2028671 (not res!889638)) b!2028669))

(assert (= (and b!2028669 (not res!889642)) b!2028670))

(assert (= (or b!2028680 b!2028671 b!2028674) bm!124454))

(declare-fun m!2467899 () Bool)

(assert (=> b!2028672 m!2467899))

(assert (=> b!2028672 m!2467899))

(declare-fun m!2467901 () Bool)

(assert (=> b!2028672 m!2467901))

(declare-fun m!2467903 () Bool)

(assert (=> b!2028677 m!2467903))

(declare-fun m!2467905 () Bool)

(assert (=> b!2028670 m!2467905))

(assert (=> b!2028667 m!2467905))

(assert (=> b!2028667 m!2467905))

(declare-fun m!2467907 () Bool)

(assert (=> b!2028667 m!2467907))

(assert (=> b!2028667 m!2467899))

(assert (=> b!2028667 m!2467907))

(assert (=> b!2028667 m!2467899))

(declare-fun m!2467909 () Bool)

(assert (=> b!2028667 m!2467909))

(assert (=> b!2028676 m!2467905))

(declare-fun m!2467911 () Bool)

(assert (=> d!620313 m!2467911))

(declare-fun m!2467913 () Bool)

(assert (=> d!620313 m!2467913))

(assert (=> b!2028669 m!2467899))

(assert (=> b!2028669 m!2467899))

(assert (=> b!2028669 m!2467901))

(assert (=> bm!124454 m!2467911))

(assert (=> b!2028153 d!620313))

(declare-fun d!620315 () Bool)

(declare-fun res!889649 () Bool)

(declare-fun e!1281448 () Bool)

(assert (=> d!620315 (=> (not res!889649) (not e!1281448))))

(assert (=> d!620315 (= res!889649 (validRegex!2179 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))

(assert (=> d!620315 (= (ruleValid!1222 thiss!23328 (rule!6220 (h!27610 tokens!598))) e!1281448)))

(declare-fun b!2028685 () Bool)

(declare-fun res!889650 () Bool)

(assert (=> b!2028685 (=> (not res!889650) (not e!1281448))))

(assert (=> b!2028685 (= res!889650 (not (nullable!1653 (regex!3991 (rule!6220 (h!27610 tokens!598))))))))

(declare-fun b!2028686 () Bool)

(assert (=> b!2028686 (= e!1281448 (not (= (tag!4477 (rule!6220 (h!27610 tokens!598))) (String!25756 ""))))))

(assert (= (and d!620315 res!889649) b!2028685))

(assert (= (and b!2028685 res!889650) b!2028686))

(assert (=> d!620315 m!2467913))

(assert (=> b!2028685 m!2467903))

(assert (=> b!2028153 d!620315))

(declare-fun d!620317 () Bool)

(assert (=> d!620317 (ruleValid!1222 thiss!23328 (rule!6220 (h!27610 tokens!598)))))

(declare-fun lt!761984 () Unit!36865)

(declare-fun choose!12365 (LexerInterface!3604 Rule!7782 List!22290) Unit!36865)

(assert (=> d!620317 (= lt!761984 (choose!12365 thiss!23328 (rule!6220 (h!27610 tokens!598)) rules!3198))))

(assert (=> d!620317 (contains!4097 rules!3198 (rule!6220 (h!27610 tokens!598)))))

(assert (=> d!620317 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!693 thiss!23328 (rule!6220 (h!27610 tokens!598)) rules!3198) lt!761984)))

(declare-fun bs!420783 () Bool)

(assert (= bs!420783 d!620317))

(assert (=> bs!420783 m!2467257))

(declare-fun m!2467915 () Bool)

(assert (=> bs!420783 m!2467915))

(assert (=> bs!420783 m!2467151))

(assert (=> b!2028153 d!620317))

(declare-fun d!620319 () Bool)

(assert (=> d!620319 (= (inv!29386 (tag!4477 (rule!6220 separatorToken!354))) (= (mod (str.len (value!125335 (tag!4477 (rule!6220 separatorToken!354)))) 2) 0))))

(assert (=> b!2028174 d!620319))

(declare-fun d!620321 () Bool)

(declare-fun res!889653 () Bool)

(declare-fun e!1281451 () Bool)

(assert (=> d!620321 (=> (not res!889653) (not e!1281451))))

(declare-fun semiInverseModEq!1608 (Int Int) Bool)

(assert (=> d!620321 (= res!889653 (semiInverseModEq!1608 (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (toValue!5664 (transformation!3991 (rule!6220 separatorToken!354)))))))

(assert (=> d!620321 (= (inv!29389 (transformation!3991 (rule!6220 separatorToken!354))) e!1281451)))

(declare-fun b!2028689 () Bool)

(declare-fun equivClasses!1535 (Int Int) Bool)

(assert (=> b!2028689 (= e!1281451 (equivClasses!1535 (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (toValue!5664 (transformation!3991 (rule!6220 separatorToken!354)))))))

(assert (= (and d!620321 res!889653) b!2028689))

(declare-fun m!2467917 () Bool)

(assert (=> d!620321 m!2467917))

(declare-fun m!2467919 () Bool)

(assert (=> b!2028689 m!2467919))

(assert (=> b!2028174 d!620321))

(declare-fun b!2028700 () Bool)

(declare-fun e!1281458 () Bool)

(declare-fun inv!17 (TokenValue!4127) Bool)

(assert (=> b!2028700 (= e!1281458 (inv!17 (value!125336 (h!27610 tokens!598))))))

(declare-fun b!2028701 () Bool)

(declare-fun e!1281460 () Bool)

(declare-fun inv!16 (TokenValue!4127) Bool)

(assert (=> b!2028701 (= e!1281460 (inv!16 (value!125336 (h!27610 tokens!598))))))

(declare-fun d!620323 () Bool)

(declare-fun c!328287 () Bool)

(assert (=> d!620323 (= c!328287 (is-IntegerValue!12381 (value!125336 (h!27610 tokens!598))))))

(assert (=> d!620323 (= (inv!21 (value!125336 (h!27610 tokens!598))) e!1281460)))

(declare-fun b!2028702 () Bool)

(declare-fun e!1281459 () Bool)

(declare-fun inv!15 (TokenValue!4127) Bool)

(assert (=> b!2028702 (= e!1281459 (inv!15 (value!125336 (h!27610 tokens!598))))))

(declare-fun b!2028703 () Bool)

(declare-fun res!889656 () Bool)

(assert (=> b!2028703 (=> res!889656 e!1281459)))

(assert (=> b!2028703 (= res!889656 (not (is-IntegerValue!12383 (value!125336 (h!27610 tokens!598)))))))

(assert (=> b!2028703 (= e!1281458 e!1281459)))

(declare-fun b!2028704 () Bool)

(assert (=> b!2028704 (= e!1281460 e!1281458)))

(declare-fun c!328288 () Bool)

(assert (=> b!2028704 (= c!328288 (is-IntegerValue!12382 (value!125336 (h!27610 tokens!598))))))

(assert (= (and d!620323 c!328287) b!2028701))

(assert (= (and d!620323 (not c!328287)) b!2028704))

(assert (= (and b!2028704 c!328288) b!2028700))

(assert (= (and b!2028704 (not c!328288)) b!2028703))

(assert (= (and b!2028703 (not res!889656)) b!2028702))

(declare-fun m!2467921 () Bool)

(assert (=> b!2028700 m!2467921))

(declare-fun m!2467923 () Bool)

(assert (=> b!2028701 m!2467923))

(declare-fun m!2467925 () Bool)

(assert (=> b!2028702 m!2467925))

(assert (=> b!2028157 d!620323))

(declare-fun d!620325 () Bool)

(assert (=> d!620325 (not (matchR!2682 (regex!3991 (rule!6220 separatorToken!354)) lt!761716))))

(declare-fun lt!761987 () Unit!36865)

(declare-fun choose!12366 (Regex!5416 List!22289 C!10978) Unit!36865)

(assert (=> d!620325 (= lt!761987 (choose!12366 (regex!3991 (rule!6220 separatorToken!354)) lt!761716 lt!761709))))

(assert (=> d!620325 (validRegex!2179 (regex!3991 (rule!6220 separatorToken!354)))))

(assert (=> d!620325 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!317 (regex!3991 (rule!6220 separatorToken!354)) lt!761716 lt!761709) lt!761987)))

(declare-fun bs!420784 () Bool)

(assert (= bs!420784 d!620325))

(assert (=> bs!420784 m!2467227))

(declare-fun m!2467927 () Bool)

(assert (=> bs!420784 m!2467927))

(declare-fun m!2467929 () Bool)

(assert (=> bs!420784 m!2467929))

(assert (=> b!2028178 d!620325))

(declare-fun d!620327 () Bool)

(declare-fun e!1281466 () Bool)

(assert (=> d!620327 e!1281466))

(declare-fun c!328290 () Bool)

(assert (=> d!620327 (= c!328290 (is-EmptyExpr!5416 (regex!3991 (rule!6220 separatorToken!354))))))

(declare-fun lt!761988 () Bool)

(declare-fun e!1281464 () Bool)

(assert (=> d!620327 (= lt!761988 e!1281464)))

(declare-fun c!328291 () Bool)

(assert (=> d!620327 (= c!328291 (isEmpty!13854 lt!761716))))

(assert (=> d!620327 (validRegex!2179 (regex!3991 (rule!6220 separatorToken!354)))))

(assert (=> d!620327 (= (matchR!2682 (regex!3991 (rule!6220 separatorToken!354)) lt!761716) lt!761988)))

(declare-fun b!2028705 () Bool)

(assert (=> b!2028705 (= e!1281464 (matchR!2682 (derivativeStep!1412 (regex!3991 (rule!6220 separatorToken!354)) (head!4584 lt!761716)) (tail!3060 lt!761716)))))

(declare-fun b!2028706 () Bool)

(declare-fun e!1281465 () Bool)

(assert (=> b!2028706 (= e!1281465 (not lt!761988))))

(declare-fun b!2028707 () Bool)

(declare-fun res!889662 () Bool)

(declare-fun e!1281463 () Bool)

(assert (=> b!2028707 (=> res!889662 e!1281463)))

(assert (=> b!2028707 (= res!889662 (not (isEmpty!13854 (tail!3060 lt!761716))))))

(declare-fun b!2028708 () Bool)

(assert (=> b!2028708 (= e!1281463 (not (= (head!4584 lt!761716) (c!328192 (regex!3991 (rule!6220 separatorToken!354))))))))

(declare-fun b!2028709 () Bool)

(declare-fun e!1281467 () Bool)

(assert (=> b!2028709 (= e!1281467 e!1281463)))

(declare-fun res!889658 () Bool)

(assert (=> b!2028709 (=> res!889658 e!1281463)))

(declare-fun call!124460 () Bool)

(assert (=> b!2028709 (= res!889658 call!124460)))

(declare-fun b!2028710 () Bool)

(declare-fun res!889664 () Bool)

(declare-fun e!1281461 () Bool)

(assert (=> b!2028710 (=> (not res!889664) (not e!1281461))))

(assert (=> b!2028710 (= res!889664 (isEmpty!13854 (tail!3060 lt!761716)))))

(declare-fun b!2028711 () Bool)

(declare-fun res!889660 () Bool)

(declare-fun e!1281462 () Bool)

(assert (=> b!2028711 (=> res!889660 e!1281462)))

(assert (=> b!2028711 (= res!889660 e!1281461)))

(declare-fun res!889663 () Bool)

(assert (=> b!2028711 (=> (not res!889663) (not e!1281461))))

(assert (=> b!2028711 (= res!889663 lt!761988)))

(declare-fun b!2028712 () Bool)

(declare-fun res!889659 () Bool)

(assert (=> b!2028712 (=> (not res!889659) (not e!1281461))))

(assert (=> b!2028712 (= res!889659 (not call!124460))))

(declare-fun b!2028713 () Bool)

(assert (=> b!2028713 (= e!1281462 e!1281467)))

(declare-fun res!889657 () Bool)

(assert (=> b!2028713 (=> (not res!889657) (not e!1281467))))

(assert (=> b!2028713 (= res!889657 (not lt!761988))))

(declare-fun b!2028714 () Bool)

(assert (=> b!2028714 (= e!1281461 (= (head!4584 lt!761716) (c!328192 (regex!3991 (rule!6220 separatorToken!354)))))))

(declare-fun b!2028715 () Bool)

(assert (=> b!2028715 (= e!1281464 (nullable!1653 (regex!3991 (rule!6220 separatorToken!354))))))

(declare-fun b!2028716 () Bool)

(assert (=> b!2028716 (= e!1281466 e!1281465)))

(declare-fun c!328292 () Bool)

(assert (=> b!2028716 (= c!328292 (is-EmptyLang!5416 (regex!3991 (rule!6220 separatorToken!354))))))

(declare-fun bm!124455 () Bool)

(assert (=> bm!124455 (= call!124460 (isEmpty!13854 lt!761716))))

(declare-fun b!2028717 () Bool)

(declare-fun res!889661 () Bool)

(assert (=> b!2028717 (=> res!889661 e!1281462)))

(assert (=> b!2028717 (= res!889661 (not (is-ElementMatch!5416 (regex!3991 (rule!6220 separatorToken!354)))))))

(assert (=> b!2028717 (= e!1281465 e!1281462)))

(declare-fun b!2028718 () Bool)

(assert (=> b!2028718 (= e!1281466 (= lt!761988 call!124460))))

(assert (= (and d!620327 c!328291) b!2028715))

(assert (= (and d!620327 (not c!328291)) b!2028705))

(assert (= (and d!620327 c!328290) b!2028718))

(assert (= (and d!620327 (not c!328290)) b!2028716))

(assert (= (and b!2028716 c!328292) b!2028706))

(assert (= (and b!2028716 (not c!328292)) b!2028717))

(assert (= (and b!2028717 (not res!889661)) b!2028711))

(assert (= (and b!2028711 res!889663) b!2028712))

(assert (= (and b!2028712 res!889659) b!2028710))

(assert (= (and b!2028710 res!889664) b!2028714))

(assert (= (and b!2028711 (not res!889660)) b!2028713))

(assert (= (and b!2028713 res!889657) b!2028709))

(assert (= (and b!2028709 (not res!889658)) b!2028707))

(assert (= (and b!2028707 (not res!889662)) b!2028708))

(assert (= (or b!2028718 b!2028709 b!2028712) bm!124455))

(declare-fun m!2467931 () Bool)

(assert (=> b!2028710 m!2467931))

(assert (=> b!2028710 m!2467931))

(declare-fun m!2467933 () Bool)

(assert (=> b!2028710 m!2467933))

(declare-fun m!2467935 () Bool)

(assert (=> b!2028715 m!2467935))

(assert (=> b!2028708 m!2467285))

(assert (=> b!2028705 m!2467285))

(assert (=> b!2028705 m!2467285))

(declare-fun m!2467937 () Bool)

(assert (=> b!2028705 m!2467937))

(assert (=> b!2028705 m!2467931))

(assert (=> b!2028705 m!2467937))

(assert (=> b!2028705 m!2467931))

(declare-fun m!2467939 () Bool)

(assert (=> b!2028705 m!2467939))

(assert (=> b!2028714 m!2467285))

(declare-fun m!2467941 () Bool)

(assert (=> d!620327 m!2467941))

(assert (=> d!620327 m!2467929))

(assert (=> b!2028707 m!2467931))

(assert (=> b!2028707 m!2467931))

(assert (=> b!2028707 m!2467933))

(assert (=> bm!124455 m!2467941))

(assert (=> b!2028178 d!620327))

(declare-fun d!620329 () Bool)

(assert (=> d!620329 (= (isEmpty!13854 (_2!11913 lt!761723)) (is-Nil!22207 (_2!11913 lt!761723)))))

(assert (=> b!2028177 d!620329))

(declare-fun d!620331 () Bool)

(declare-fun lt!761991 () Bool)

(declare-fun content!3280 (List!22290) (Set Rule!7782))

(assert (=> d!620331 (= lt!761991 (set.member (rule!6220 separatorToken!354) (content!3280 rules!3198)))))

(declare-fun e!1281472 () Bool)

(assert (=> d!620331 (= lt!761991 e!1281472)))

(declare-fun res!889669 () Bool)

(assert (=> d!620331 (=> (not res!889669) (not e!1281472))))

(assert (=> d!620331 (= res!889669 (is-Cons!22208 rules!3198))))

(assert (=> d!620331 (= (contains!4097 rules!3198 (rule!6220 separatorToken!354)) lt!761991)))

(declare-fun b!2028723 () Bool)

(declare-fun e!1281473 () Bool)

(assert (=> b!2028723 (= e!1281472 e!1281473)))

(declare-fun res!889670 () Bool)

(assert (=> b!2028723 (=> res!889670 e!1281473)))

(assert (=> b!2028723 (= res!889670 (= (h!27609 rules!3198) (rule!6220 separatorToken!354)))))

(declare-fun b!2028724 () Bool)

(assert (=> b!2028724 (= e!1281473 (contains!4097 (t!190125 rules!3198) (rule!6220 separatorToken!354)))))

(assert (= (and d!620331 res!889669) b!2028723))

(assert (= (and b!2028723 (not res!889670)) b!2028724))

(declare-fun m!2467943 () Bool)

(assert (=> d!620331 m!2467943))

(declare-fun m!2467945 () Bool)

(assert (=> d!620331 m!2467945))

(declare-fun m!2467947 () Bool)

(assert (=> b!2028724 m!2467947))

(assert (=> b!2028171 d!620331))

(declare-fun d!620333 () Bool)

(declare-fun lt!761994 () Bool)

(assert (=> d!620333 (= lt!761994 (isEmpty!13853 (list!9070 (_1!11914 (lex!1620 thiss!23328 rules!3198 (seqFromList!2845 lt!761718))))))))

(declare-fun isEmpty!13865 (Conc!7429) Bool)

(assert (=> d!620333 (= lt!761994 (isEmpty!13865 (c!328193 (_1!11914 (lex!1620 thiss!23328 rules!3198 (seqFromList!2845 lt!761718))))))))

(assert (=> d!620333 (= (isEmpty!13855 (_1!11914 (lex!1620 thiss!23328 rules!3198 (seqFromList!2845 lt!761718)))) lt!761994)))

(declare-fun bs!420785 () Bool)

(assert (= bs!420785 d!620333))

(declare-fun m!2467949 () Bool)

(assert (=> bs!420785 m!2467949))

(assert (=> bs!420785 m!2467949))

(declare-fun m!2467951 () Bool)

(assert (=> bs!420785 m!2467951))

(declare-fun m!2467953 () Bool)

(assert (=> bs!420785 m!2467953))

(assert (=> b!2028170 d!620333))

(declare-fun e!1281493 () Bool)

(declare-fun lt!761999 () tuple2!20890)

(declare-fun b!2028752 () Bool)

(declare-datatypes ((tuple2!20896 0))(
  ( (tuple2!20897 (_1!11917 List!22291) (_2!11917 List!22289)) )
))
(declare-fun lexList!982 (LexerInterface!3604 List!22290 List!22289) tuple2!20896)

(assert (=> b!2028752 (= e!1281493 (= (list!9066 (_2!11914 lt!761999)) (_2!11917 (lexList!982 thiss!23328 rules!3198 (list!9066 (seqFromList!2845 lt!761718))))))))

(declare-fun b!2028753 () Bool)

(declare-fun e!1281494 () Bool)

(assert (=> b!2028753 (= e!1281494 (= (_2!11914 lt!761999) (seqFromList!2845 lt!761718)))))

(declare-fun b!2028754 () Bool)

(declare-fun e!1281495 () Bool)

(assert (=> b!2028754 (= e!1281495 (not (isEmpty!13855 (_1!11914 lt!761999))))))

(declare-fun b!2028755 () Bool)

(assert (=> b!2028755 (= e!1281494 e!1281495)))

(declare-fun res!889682 () Bool)

(declare-fun size!17353 (BalanceConc!14672) Int)

(assert (=> b!2028755 (= res!889682 (< (size!17353 (_2!11914 lt!761999)) (size!17353 (seqFromList!2845 lt!761718))))))

(assert (=> b!2028755 (=> (not res!889682) (not e!1281495))))

(declare-fun d!620335 () Bool)

(assert (=> d!620335 e!1281493))

(declare-fun res!889681 () Bool)

(assert (=> d!620335 (=> (not res!889681) (not e!1281493))))

(assert (=> d!620335 (= res!889681 e!1281494)))

(declare-fun c!328295 () Bool)

(assert (=> d!620335 (= c!328295 (> (size!17351 (_1!11914 lt!761999)) 0))))

(declare-fun lexTailRecV2!705 (LexerInterface!3604 List!22290 BalanceConc!14672 BalanceConc!14672 BalanceConc!14672 BalanceConc!14674) tuple2!20890)

(assert (=> d!620335 (= lt!761999 (lexTailRecV2!705 thiss!23328 rules!3198 (seqFromList!2845 lt!761718) (BalanceConc!14673 Empty!7428) (seqFromList!2845 lt!761718) (BalanceConc!14675 Empty!7429)))))

(assert (=> d!620335 (= (lex!1620 thiss!23328 rules!3198 (seqFromList!2845 lt!761718)) lt!761999)))

(declare-fun b!2028756 () Bool)

(declare-fun res!889683 () Bool)

(assert (=> b!2028756 (=> (not res!889683) (not e!1281493))))

(assert (=> b!2028756 (= res!889683 (= (list!9070 (_1!11914 lt!761999)) (_1!11917 (lexList!982 thiss!23328 rules!3198 (list!9066 (seqFromList!2845 lt!761718))))))))

(assert (= (and d!620335 c!328295) b!2028755))

(assert (= (and d!620335 (not c!328295)) b!2028753))

(assert (= (and b!2028755 res!889682) b!2028754))

(assert (= (and d!620335 res!889681) b!2028756))

(assert (= (and b!2028756 res!889683) b!2028752))

(declare-fun m!2467963 () Bool)

(assert (=> b!2028754 m!2467963))

(declare-fun m!2467965 () Bool)

(assert (=> b!2028755 m!2467965))

(assert (=> b!2028755 m!2467201))

(declare-fun m!2467967 () Bool)

(assert (=> b!2028755 m!2467967))

(declare-fun m!2467971 () Bool)

(assert (=> b!2028752 m!2467971))

(assert (=> b!2028752 m!2467201))

(declare-fun m!2467973 () Bool)

(assert (=> b!2028752 m!2467973))

(assert (=> b!2028752 m!2467973))

(declare-fun m!2467975 () Bool)

(assert (=> b!2028752 m!2467975))

(declare-fun m!2467979 () Bool)

(assert (=> d!620335 m!2467979))

(assert (=> d!620335 m!2467201))

(assert (=> d!620335 m!2467201))

(declare-fun m!2467983 () Bool)

(assert (=> d!620335 m!2467983))

(declare-fun m!2467985 () Bool)

(assert (=> b!2028756 m!2467985))

(assert (=> b!2028756 m!2467201))

(assert (=> b!2028756 m!2467973))

(assert (=> b!2028756 m!2467973))

(assert (=> b!2028756 m!2467975))

(assert (=> b!2028170 d!620335))

(declare-fun d!620345 () Bool)

(assert (=> d!620345 (= (seqFromList!2845 lt!761718) (fromListB!1281 lt!761718))))

(declare-fun bs!420788 () Bool)

(assert (= bs!420788 d!620345))

(declare-fun m!2467987 () Bool)

(assert (=> bs!420788 m!2467987))

(assert (=> b!2028170 d!620345))

(declare-fun b!2028757 () Bool)

(declare-fun e!1281496 () Bool)

(assert (=> b!2028757 (= e!1281496 (inv!17 (value!125336 separatorToken!354)))))

(declare-fun b!2028758 () Bool)

(declare-fun e!1281498 () Bool)

(assert (=> b!2028758 (= e!1281498 (inv!16 (value!125336 separatorToken!354)))))

(declare-fun d!620347 () Bool)

(declare-fun c!328296 () Bool)

(assert (=> d!620347 (= c!328296 (is-IntegerValue!12381 (value!125336 separatorToken!354)))))

(assert (=> d!620347 (= (inv!21 (value!125336 separatorToken!354)) e!1281498)))

(declare-fun b!2028759 () Bool)

(declare-fun e!1281497 () Bool)

(assert (=> b!2028759 (= e!1281497 (inv!15 (value!125336 separatorToken!354)))))

(declare-fun b!2028760 () Bool)

(declare-fun res!889684 () Bool)

(assert (=> b!2028760 (=> res!889684 e!1281497)))

(assert (=> b!2028760 (= res!889684 (not (is-IntegerValue!12383 (value!125336 separatorToken!354))))))

(assert (=> b!2028760 (= e!1281496 e!1281497)))

(declare-fun b!2028761 () Bool)

(assert (=> b!2028761 (= e!1281498 e!1281496)))

(declare-fun c!328297 () Bool)

(assert (=> b!2028761 (= c!328297 (is-IntegerValue!12382 (value!125336 separatorToken!354)))))

(assert (= (and d!620347 c!328296) b!2028758))

(assert (= (and d!620347 (not c!328296)) b!2028761))

(assert (= (and b!2028761 c!328297) b!2028757))

(assert (= (and b!2028761 (not c!328297)) b!2028760))

(assert (= (and b!2028760 (not res!889684)) b!2028759))

(declare-fun m!2467989 () Bool)

(assert (=> b!2028757 m!2467989))

(declare-fun m!2467991 () Bool)

(assert (=> b!2028758 m!2467991))

(declare-fun m!2467993 () Bool)

(assert (=> b!2028759 m!2467993))

(assert (=> b!2028148 d!620347))

(declare-fun d!620349 () Bool)

(declare-fun lt!762003 () Bool)

(assert (=> d!620349 (= lt!762003 (set.member lt!761712 (content!3278 lt!761703)))))

(declare-fun e!1281499 () Bool)

(assert (=> d!620349 (= lt!762003 e!1281499)))

(declare-fun res!889685 () Bool)

(assert (=> d!620349 (=> (not res!889685) (not e!1281499))))

(assert (=> d!620349 (= res!889685 (is-Cons!22207 lt!761703))))

(assert (=> d!620349 (= (contains!4098 lt!761703 lt!761712) lt!762003)))

(declare-fun b!2028762 () Bool)

(declare-fun e!1281500 () Bool)

(assert (=> b!2028762 (= e!1281499 e!1281500)))

(declare-fun res!889686 () Bool)

(assert (=> b!2028762 (=> res!889686 e!1281500)))

(assert (=> b!2028762 (= res!889686 (= (h!27608 lt!761703) lt!761712))))

(declare-fun b!2028763 () Bool)

(assert (=> b!2028763 (= e!1281500 (contains!4098 (t!190124 lt!761703) lt!761712))))

(assert (= (and d!620349 res!889685) b!2028762))

(assert (= (and b!2028762 (not res!889686)) b!2028763))

(declare-fun m!2467995 () Bool)

(assert (=> d!620349 m!2467995))

(declare-fun m!2467997 () Bool)

(assert (=> d!620349 m!2467997))

(declare-fun m!2467999 () Bool)

(assert (=> b!2028763 m!2467999))

(assert (=> b!2028169 d!620349))

(declare-fun d!620351 () Bool)

(assert (=> d!620351 (= (head!4584 lt!761715) (h!27608 lt!761715))))

(assert (=> b!2028169 d!620351))

(declare-fun d!620353 () Bool)

(declare-fun res!889691 () Bool)

(declare-fun e!1281505 () Bool)

(assert (=> d!620353 (=> res!889691 e!1281505)))

(assert (=> d!620353 (= res!889691 (not (is-Cons!22208 rules!3198)))))

(assert (=> d!620353 (= (sepAndNonSepRulesDisjointChars!1089 rules!3198 rules!3198) e!1281505)))

(declare-fun b!2028768 () Bool)

(declare-fun e!1281506 () Bool)

(assert (=> b!2028768 (= e!1281505 e!1281506)))

(declare-fun res!889692 () Bool)

(assert (=> b!2028768 (=> (not res!889692) (not e!1281506))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!492 (Rule!7782 List!22290) Bool)

(assert (=> b!2028768 (= res!889692 (ruleDisjointCharsFromAllFromOtherType!492 (h!27609 rules!3198) rules!3198))))

(declare-fun b!2028769 () Bool)

(assert (=> b!2028769 (= e!1281506 (sepAndNonSepRulesDisjointChars!1089 rules!3198 (t!190125 rules!3198)))))

(assert (= (and d!620353 (not res!889691)) b!2028768))

(assert (= (and b!2028768 res!889692) b!2028769))

(declare-fun m!2468001 () Bool)

(assert (=> b!2028768 m!2468001))

(declare-fun m!2468003 () Bool)

(assert (=> b!2028769 m!2468003))

(assert (=> b!2028152 d!620353))

(declare-fun b!2028770 () Bool)

(declare-fun e!1281508 () List!22289)

(assert (=> b!2028770 (= e!1281508 lt!761715)))

(declare-fun lt!762004 () List!22289)

(declare-fun b!2028773 () Bool)

(declare-fun e!1281507 () Bool)

(assert (=> b!2028773 (= e!1281507 (or (not (= lt!761715 Nil!22207)) (= lt!762004 lt!761718)))))

(declare-fun d!620355 () Bool)

(assert (=> d!620355 e!1281507))

(declare-fun res!889694 () Bool)

(assert (=> d!620355 (=> (not res!889694) (not e!1281507))))

(assert (=> d!620355 (= res!889694 (= (content!3278 lt!762004) (set.union (content!3278 lt!761718) (content!3278 lt!761715))))))

(assert (=> d!620355 (= lt!762004 e!1281508)))

(declare-fun c!328298 () Bool)

(assert (=> d!620355 (= c!328298 (is-Nil!22207 lt!761718))))

(assert (=> d!620355 (= (++!6004 lt!761718 lt!761715) lt!762004)))

(declare-fun b!2028771 () Bool)

(assert (=> b!2028771 (= e!1281508 (Cons!22207 (h!27608 lt!761718) (++!6004 (t!190124 lt!761718) lt!761715)))))

(declare-fun b!2028772 () Bool)

(declare-fun res!889693 () Bool)

(assert (=> b!2028772 (=> (not res!889693) (not e!1281507))))

(assert (=> b!2028772 (= res!889693 (= (size!17349 lt!762004) (+ (size!17349 lt!761718) (size!17349 lt!761715))))))

(assert (= (and d!620355 c!328298) b!2028770))

(assert (= (and d!620355 (not c!328298)) b!2028771))

(assert (= (and d!620355 res!889694) b!2028772))

(assert (= (and b!2028772 res!889693) b!2028773))

(declare-fun m!2468005 () Bool)

(assert (=> d!620355 m!2468005))

(assert (=> d!620355 m!2467525))

(declare-fun m!2468007 () Bool)

(assert (=> d!620355 m!2468007))

(declare-fun m!2468009 () Bool)

(assert (=> b!2028771 m!2468009))

(declare-fun m!2468011 () Bool)

(assert (=> b!2028772 m!2468011))

(assert (=> b!2028772 m!2467533))

(declare-fun m!2468013 () Bool)

(assert (=> b!2028772 m!2468013))

(assert (=> b!2028172 d!620355))

(declare-fun d!620357 () Bool)

(declare-fun lt!762007 () BalanceConc!14672)

(assert (=> d!620357 (= (list!9066 lt!762007) (printList!1123 thiss!23328 (list!9070 lt!761727)))))

(assert (=> d!620357 (= lt!762007 (printTailRec!1072 thiss!23328 lt!761727 0 (BalanceConc!14673 Empty!7428)))))

(assert (=> d!620357 (= (print!1566 thiss!23328 lt!761727) lt!762007)))

(declare-fun bs!420789 () Bool)

(assert (= bs!420789 d!620357))

(declare-fun m!2468015 () Bool)

(assert (=> bs!420789 m!2468015))

(declare-fun m!2468017 () Bool)

(assert (=> bs!420789 m!2468017))

(assert (=> bs!420789 m!2468017))

(declare-fun m!2468019 () Bool)

(assert (=> bs!420789 m!2468019))

(assert (=> bs!420789 m!2467295))

(assert (=> b!2028172 d!620357))

(declare-fun d!620359 () Bool)

(declare-fun c!328301 () Bool)

(assert (=> d!620359 (= c!328301 (is-Cons!22209 (Cons!22209 (h!27610 tokens!598) Nil!22209)))))

(declare-fun e!1281511 () List!22289)

(assert (=> d!620359 (= (printList!1123 thiss!23328 (Cons!22209 (h!27610 tokens!598) Nil!22209)) e!1281511)))

(declare-fun b!2028778 () Bool)

(assert (=> b!2028778 (= e!1281511 (++!6004 (list!9066 (charsOf!2531 (h!27610 (Cons!22209 (h!27610 tokens!598) Nil!22209)))) (printList!1123 thiss!23328 (t!190126 (Cons!22209 (h!27610 tokens!598) Nil!22209)))))))

(declare-fun b!2028779 () Bool)

(assert (=> b!2028779 (= e!1281511 Nil!22207)))

(assert (= (and d!620359 c!328301) b!2028778))

(assert (= (and d!620359 (not c!328301)) b!2028779))

(declare-fun m!2468021 () Bool)

(assert (=> b!2028778 m!2468021))

(assert (=> b!2028778 m!2468021))

(declare-fun m!2468023 () Bool)

(assert (=> b!2028778 m!2468023))

(declare-fun m!2468025 () Bool)

(assert (=> b!2028778 m!2468025))

(assert (=> b!2028778 m!2468023))

(assert (=> b!2028778 m!2468025))

(declare-fun m!2468027 () Bool)

(assert (=> b!2028778 m!2468027))

(assert (=> b!2028172 d!620359))

(declare-fun d!620361 () Bool)

(assert (=> d!620361 (not (contains!4098 (usedCharacters!429 (regex!3991 (rule!6220 (h!27610 tokens!598)))) lt!761709))))

(declare-fun lt!762010 () Unit!36865)

(declare-fun choose!12367 (LexerInterface!3604 List!22290 List!22290 Rule!7782 Rule!7782 C!10978) Unit!36865)

(assert (=> d!620361 (= lt!762010 (choose!12367 thiss!23328 rules!3198 rules!3198 (rule!6220 (h!27610 tokens!598)) (rule!6220 separatorToken!354) lt!761709))))

(assert (=> d!620361 (rulesInvariant!3211 thiss!23328 rules!3198)))

(assert (=> d!620361 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!101 thiss!23328 rules!3198 rules!3198 (rule!6220 (h!27610 tokens!598)) (rule!6220 separatorToken!354) lt!761709) lt!762010)))

(declare-fun bs!420790 () Bool)

(assert (= bs!420790 d!620361))

(assert (=> bs!420790 m!2467271))

(assert (=> bs!420790 m!2467271))

(declare-fun m!2468029 () Bool)

(assert (=> bs!420790 m!2468029))

(declare-fun m!2468031 () Bool)

(assert (=> bs!420790 m!2468031))

(assert (=> bs!420790 m!2467223))

(assert (=> b!2028172 d!620361))

(declare-fun d!620363 () Bool)

(declare-fun lt!762011 () Bool)

(assert (=> d!620363 (= lt!762011 (set.member lt!761709 (content!3278 lt!761703)))))

(declare-fun e!1281512 () Bool)

(assert (=> d!620363 (= lt!762011 e!1281512)))

(declare-fun res!889695 () Bool)

(assert (=> d!620363 (=> (not res!889695) (not e!1281512))))

(assert (=> d!620363 (= res!889695 (is-Cons!22207 lt!761703))))

(assert (=> d!620363 (= (contains!4098 lt!761703 lt!761709) lt!762011)))

(declare-fun b!2028780 () Bool)

(declare-fun e!1281513 () Bool)

(assert (=> b!2028780 (= e!1281512 e!1281513)))

(declare-fun res!889696 () Bool)

(assert (=> b!2028780 (=> res!889696 e!1281513)))

(assert (=> b!2028780 (= res!889696 (= (h!27608 lt!761703) lt!761709))))

(declare-fun b!2028781 () Bool)

(assert (=> b!2028781 (= e!1281513 (contains!4098 (t!190124 lt!761703) lt!761709))))

(assert (= (and d!620363 res!889695) b!2028780))

(assert (= (and b!2028780 (not res!889696)) b!2028781))

(assert (=> d!620363 m!2467995))

(declare-fun m!2468033 () Bool)

(assert (=> d!620363 m!2468033))

(declare-fun m!2468035 () Bool)

(assert (=> b!2028781 m!2468035))

(assert (=> b!2028172 d!620363))

(declare-fun d!620365 () Bool)

(assert (=> d!620365 (= (++!6004 (++!6004 lt!761718 lt!761716) lt!761704) (++!6004 lt!761718 (++!6004 lt!761716 lt!761704)))))

(declare-fun lt!762014 () Unit!36865)

(declare-fun choose!12368 (List!22289 List!22289 List!22289) Unit!36865)

(assert (=> d!620365 (= lt!762014 (choose!12368 lt!761718 lt!761716 lt!761704))))

(assert (=> d!620365 (= (lemmaConcatAssociativity!1256 lt!761718 lt!761716 lt!761704) lt!762014)))

(declare-fun bs!420791 () Bool)

(assert (= bs!420791 d!620365))

(assert (=> bs!420791 m!2467275))

(declare-fun m!2468037 () Bool)

(assert (=> bs!420791 m!2468037))

(assert (=> bs!420791 m!2467267))

(assert (=> bs!420791 m!2467275))

(assert (=> bs!420791 m!2467267))

(declare-fun m!2468039 () Bool)

(assert (=> bs!420791 m!2468039))

(declare-fun m!2468041 () Bool)

(assert (=> bs!420791 m!2468041))

(assert (=> b!2028172 d!620365))

(declare-fun b!2028782 () Bool)

(declare-fun e!1281515 () List!22289)

(assert (=> b!2028782 (= e!1281515 lt!761716)))

(declare-fun e!1281514 () Bool)

(declare-fun b!2028785 () Bool)

(declare-fun lt!762015 () List!22289)

(assert (=> b!2028785 (= e!1281514 (or (not (= lt!761716 Nil!22207)) (= lt!762015 lt!761718)))))

(declare-fun d!620367 () Bool)

(assert (=> d!620367 e!1281514))

(declare-fun res!889698 () Bool)

(assert (=> d!620367 (=> (not res!889698) (not e!1281514))))

(assert (=> d!620367 (= res!889698 (= (content!3278 lt!762015) (set.union (content!3278 lt!761718) (content!3278 lt!761716))))))

(assert (=> d!620367 (= lt!762015 e!1281515)))

(declare-fun c!328303 () Bool)

(assert (=> d!620367 (= c!328303 (is-Nil!22207 lt!761718))))

(assert (=> d!620367 (= (++!6004 lt!761718 lt!761716) lt!762015)))

(declare-fun b!2028783 () Bool)

(assert (=> b!2028783 (= e!1281515 (Cons!22207 (h!27608 lt!761718) (++!6004 (t!190124 lt!761718) lt!761716)))))

(declare-fun b!2028784 () Bool)

(declare-fun res!889697 () Bool)

(assert (=> b!2028784 (=> (not res!889697) (not e!1281514))))

(assert (=> b!2028784 (= res!889697 (= (size!17349 lt!762015) (+ (size!17349 lt!761718) (size!17349 lt!761716))))))

(assert (= (and d!620367 c!328303) b!2028782))

(assert (= (and d!620367 (not c!328303)) b!2028783))

(assert (= (and d!620367 res!889698) b!2028784))

(assert (= (and b!2028784 res!889697) b!2028785))

(declare-fun m!2468043 () Bool)

(assert (=> d!620367 m!2468043))

(assert (=> d!620367 m!2467525))

(declare-fun m!2468045 () Bool)

(assert (=> d!620367 m!2468045))

(declare-fun m!2468047 () Bool)

(assert (=> b!2028783 m!2468047))

(declare-fun m!2468049 () Bool)

(assert (=> b!2028784 m!2468049))

(assert (=> b!2028784 m!2467533))

(declare-fun m!2468051 () Bool)

(assert (=> b!2028784 m!2468051))

(assert (=> b!2028172 d!620367))

(declare-fun b!2028802 () Bool)

(declare-fun e!1281525 () List!22289)

(declare-fun call!124472 () List!22289)

(assert (=> b!2028802 (= e!1281525 call!124472)))

(declare-fun call!124470 () List!22289)

(declare-fun bm!124464 () Bool)

(declare-fun call!124471 () List!22289)

(declare-fun call!124469 () List!22289)

(declare-fun c!328312 () Bool)

(assert (=> bm!124464 (= call!124471 (++!6004 (ite c!328312 call!124470 call!124469) (ite c!328312 call!124469 call!124470)))))

(declare-fun bm!124465 () Bool)

(assert (=> bm!124465 (= call!124469 call!124472)))

(declare-fun b!2028803 () Bool)

(declare-fun e!1281527 () List!22289)

(assert (=> b!2028803 (= e!1281527 call!124471)))

(declare-fun d!620369 () Bool)

(declare-fun c!328313 () Bool)

(assert (=> d!620369 (= c!328313 (or (is-EmptyExpr!5416 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (is-EmptyLang!5416 (regex!3991 (rule!6220 (h!27610 tokens!598))))))))

(declare-fun e!1281526 () List!22289)

(assert (=> d!620369 (= (usedCharacters!429 (regex!3991 (rule!6220 (h!27610 tokens!598)))) e!1281526)))

(declare-fun b!2028804 () Bool)

(declare-fun c!328314 () Bool)

(assert (=> b!2028804 (= c!328314 (is-Star!5416 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))

(declare-fun e!1281524 () List!22289)

(assert (=> b!2028804 (= e!1281524 e!1281525)))

(declare-fun b!2028805 () Bool)

(assert (=> b!2028805 (= e!1281527 call!124471)))

(declare-fun bm!124466 () Bool)

(assert (=> bm!124466 (= call!124472 (usedCharacters!429 (ite c!328314 (reg!5745 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (ite c!328312 (regTwo!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regOne!11344 (regex!3991 (rule!6220 (h!27610 tokens!598))))))))))

(declare-fun b!2028806 () Bool)

(assert (=> b!2028806 (= e!1281525 e!1281527)))

(assert (=> b!2028806 (= c!328312 (is-Union!5416 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))

(declare-fun b!2028807 () Bool)

(assert (=> b!2028807 (= e!1281526 Nil!22207)))

(declare-fun b!2028808 () Bool)

(assert (=> b!2028808 (= e!1281526 e!1281524)))

(declare-fun c!328315 () Bool)

(assert (=> b!2028808 (= c!328315 (is-ElementMatch!5416 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))

(declare-fun b!2028809 () Bool)

(assert (=> b!2028809 (= e!1281524 (Cons!22207 (c!328192 (regex!3991 (rule!6220 (h!27610 tokens!598)))) Nil!22207))))

(declare-fun bm!124467 () Bool)

(assert (=> bm!124467 (= call!124470 (usedCharacters!429 (ite c!328312 (regOne!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regTwo!11344 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))))

(assert (= (and d!620369 c!328313) b!2028807))

(assert (= (and d!620369 (not c!328313)) b!2028808))

(assert (= (and b!2028808 c!328315) b!2028809))

(assert (= (and b!2028808 (not c!328315)) b!2028804))

(assert (= (and b!2028804 c!328314) b!2028802))

(assert (= (and b!2028804 (not c!328314)) b!2028806))

(assert (= (and b!2028806 c!328312) b!2028803))

(assert (= (and b!2028806 (not c!328312)) b!2028805))

(assert (= (or b!2028803 b!2028805) bm!124467))

(assert (= (or b!2028803 b!2028805) bm!124465))

(assert (= (or b!2028803 b!2028805) bm!124464))

(assert (= (or b!2028802 bm!124465) bm!124466))

(declare-fun m!2468053 () Bool)

(assert (=> bm!124464 m!2468053))

(declare-fun m!2468055 () Bool)

(assert (=> bm!124466 m!2468055))

(declare-fun m!2468057 () Bool)

(assert (=> bm!124467 m!2468057))

(assert (=> b!2028172 d!620369))

(declare-fun d!620371 () Bool)

(declare-fun lt!762036 () BalanceConc!14672)

(declare-fun printListTailRec!489 (LexerInterface!3604 List!22291 List!22289) List!22289)

(declare-fun dropList!820 (BalanceConc!14674 Int) List!22291)

(assert (=> d!620371 (= (list!9066 lt!762036) (printListTailRec!489 thiss!23328 (dropList!820 lt!761727 0) (list!9066 (BalanceConc!14673 Empty!7428))))))

(declare-fun e!1281532 () BalanceConc!14672)

(assert (=> d!620371 (= lt!762036 e!1281532)))

(declare-fun c!328318 () Bool)

(assert (=> d!620371 (= c!328318 (>= 0 (size!17351 lt!761727)))))

(declare-fun e!1281533 () Bool)

(assert (=> d!620371 e!1281533))

(declare-fun res!889701 () Bool)

(assert (=> d!620371 (=> (not res!889701) (not e!1281533))))

(assert (=> d!620371 (= res!889701 (>= 0 0))))

(assert (=> d!620371 (= (printTailRec!1072 thiss!23328 lt!761727 0 (BalanceConc!14673 Empty!7428)) lt!762036)))

(declare-fun b!2028816 () Bool)

(assert (=> b!2028816 (= e!1281533 (<= 0 (size!17351 lt!761727)))))

(declare-fun b!2028817 () Bool)

(assert (=> b!2028817 (= e!1281532 (BalanceConc!14673 Empty!7428))))

(declare-fun b!2028818 () Bool)

(declare-fun ++!6007 (BalanceConc!14672 BalanceConc!14672) BalanceConc!14672)

(assert (=> b!2028818 (= e!1281532 (printTailRec!1072 thiss!23328 lt!761727 (+ 0 1) (++!6007 (BalanceConc!14673 Empty!7428) (charsOf!2531 (apply!5848 lt!761727 0)))))))

(declare-fun lt!762031 () List!22291)

(assert (=> b!2028818 (= lt!762031 (list!9070 lt!761727))))

(declare-fun lt!762030 () Unit!36865)

(declare-fun lemmaDropApply!744 (List!22291 Int) Unit!36865)

(assert (=> b!2028818 (= lt!762030 (lemmaDropApply!744 lt!762031 0))))

(declare-fun drop!1121 (List!22291 Int) List!22291)

(declare-fun apply!5850 (List!22291 Int) Token!7534)

(assert (=> b!2028818 (= (head!4583 (drop!1121 lt!762031 0)) (apply!5850 lt!762031 0))))

(declare-fun lt!762034 () Unit!36865)

(assert (=> b!2028818 (= lt!762034 lt!762030)))

(declare-fun lt!762033 () List!22291)

(assert (=> b!2028818 (= lt!762033 (list!9070 lt!761727))))

(declare-fun lt!762032 () Unit!36865)

(declare-fun lemmaDropTail!720 (List!22291 Int) Unit!36865)

(assert (=> b!2028818 (= lt!762032 (lemmaDropTail!720 lt!762033 0))))

(declare-fun tail!3062 (List!22291) List!22291)

(assert (=> b!2028818 (= (tail!3062 (drop!1121 lt!762033 0)) (drop!1121 lt!762033 (+ 0 1)))))

(declare-fun lt!762035 () Unit!36865)

(assert (=> b!2028818 (= lt!762035 lt!762032)))

(assert (= (and d!620371 res!889701) b!2028816))

(assert (= (and d!620371 c!328318) b!2028817))

(assert (= (and d!620371 (not c!328318)) b!2028818))

(declare-fun m!2468059 () Bool)

(assert (=> d!620371 m!2468059))

(declare-fun m!2468061 () Bool)

(assert (=> d!620371 m!2468061))

(declare-fun m!2468063 () Bool)

(assert (=> d!620371 m!2468063))

(assert (=> d!620371 m!2468059))

(assert (=> d!620371 m!2468063))

(declare-fun m!2468065 () Bool)

(assert (=> d!620371 m!2468065))

(declare-fun m!2468067 () Bool)

(assert (=> d!620371 m!2468067))

(assert (=> b!2028816 m!2468061))

(declare-fun m!2468069 () Bool)

(assert (=> b!2028818 m!2468069))

(declare-fun m!2468071 () Bool)

(assert (=> b!2028818 m!2468071))

(assert (=> b!2028818 m!2468071))

(declare-fun m!2468073 () Bool)

(assert (=> b!2028818 m!2468073))

(declare-fun m!2468075 () Bool)

(assert (=> b!2028818 m!2468075))

(declare-fun m!2468077 () Bool)

(assert (=> b!2028818 m!2468077))

(declare-fun m!2468079 () Bool)

(assert (=> b!2028818 m!2468079))

(declare-fun m!2468081 () Bool)

(assert (=> b!2028818 m!2468081))

(assert (=> b!2028818 m!2468069))

(declare-fun m!2468083 () Bool)

(assert (=> b!2028818 m!2468083))

(declare-fun m!2468085 () Bool)

(assert (=> b!2028818 m!2468085))

(assert (=> b!2028818 m!2468073))

(declare-fun m!2468087 () Bool)

(assert (=> b!2028818 m!2468087))

(declare-fun m!2468089 () Bool)

(assert (=> b!2028818 m!2468089))

(assert (=> b!2028818 m!2468089))

(declare-fun m!2468091 () Bool)

(assert (=> b!2028818 m!2468091))

(assert (=> b!2028818 m!2468079))

(assert (=> b!2028818 m!2468017))

(assert (=> b!2028172 d!620371))

(declare-fun b!2028819 () Bool)

(declare-fun e!1281535 () List!22289)

(assert (=> b!2028819 (= e!1281535 lt!761704)))

(declare-fun e!1281534 () Bool)

(declare-fun b!2028822 () Bool)

(declare-fun lt!762037 () List!22289)

(assert (=> b!2028822 (= e!1281534 (or (not (= lt!761704 Nil!22207)) (= lt!762037 lt!761731)))))

(declare-fun d!620373 () Bool)

(assert (=> d!620373 e!1281534))

(declare-fun res!889703 () Bool)

(assert (=> d!620373 (=> (not res!889703) (not e!1281534))))

(assert (=> d!620373 (= res!889703 (= (content!3278 lt!762037) (set.union (content!3278 lt!761731) (content!3278 lt!761704))))))

(assert (=> d!620373 (= lt!762037 e!1281535)))

(declare-fun c!328319 () Bool)

(assert (=> d!620373 (= c!328319 (is-Nil!22207 lt!761731))))

(assert (=> d!620373 (= (++!6004 lt!761731 lt!761704) lt!762037)))

(declare-fun b!2028820 () Bool)

(assert (=> b!2028820 (= e!1281535 (Cons!22207 (h!27608 lt!761731) (++!6004 (t!190124 lt!761731) lt!761704)))))

(declare-fun b!2028821 () Bool)

(declare-fun res!889702 () Bool)

(assert (=> b!2028821 (=> (not res!889702) (not e!1281534))))

(assert (=> b!2028821 (= res!889702 (= (size!17349 lt!762037) (+ (size!17349 lt!761731) (size!17349 lt!761704))))))

(assert (= (and d!620373 c!328319) b!2028819))

(assert (= (and d!620373 (not c!328319)) b!2028820))

(assert (= (and d!620373 res!889703) b!2028821))

(assert (= (and b!2028821 res!889702) b!2028822))

(declare-fun m!2468093 () Bool)

(assert (=> d!620373 m!2468093))

(declare-fun m!2468095 () Bool)

(assert (=> d!620373 m!2468095))

(assert (=> d!620373 m!2467527))

(declare-fun m!2468097 () Bool)

(assert (=> b!2028820 m!2468097))

(declare-fun m!2468099 () Bool)

(assert (=> b!2028821 m!2468099))

(declare-fun m!2468101 () Bool)

(assert (=> b!2028821 m!2468101))

(assert (=> b!2028821 m!2467535))

(assert (=> b!2028172 d!620373))

(declare-fun b!2028823 () Bool)

(declare-fun e!1281537 () List!22289)

(declare-fun call!124476 () List!22289)

(assert (=> b!2028823 (= e!1281537 call!124476)))

(declare-fun bm!124468 () Bool)

(declare-fun c!328320 () Bool)

(declare-fun call!124474 () List!22289)

(declare-fun call!124473 () List!22289)

(declare-fun call!124475 () List!22289)

(assert (=> bm!124468 (= call!124475 (++!6004 (ite c!328320 call!124474 call!124473) (ite c!328320 call!124473 call!124474)))))

(declare-fun bm!124469 () Bool)

(assert (=> bm!124469 (= call!124473 call!124476)))

(declare-fun b!2028824 () Bool)

(declare-fun e!1281539 () List!22289)

(assert (=> b!2028824 (= e!1281539 call!124475)))

(declare-fun d!620375 () Bool)

(declare-fun c!328321 () Bool)

(assert (=> d!620375 (= c!328321 (or (is-EmptyExpr!5416 (regex!3991 (rule!6220 separatorToken!354))) (is-EmptyLang!5416 (regex!3991 (rule!6220 separatorToken!354)))))))

(declare-fun e!1281538 () List!22289)

(assert (=> d!620375 (= (usedCharacters!429 (regex!3991 (rule!6220 separatorToken!354))) e!1281538)))

(declare-fun b!2028825 () Bool)

(declare-fun c!328322 () Bool)

(assert (=> b!2028825 (= c!328322 (is-Star!5416 (regex!3991 (rule!6220 separatorToken!354))))))

(declare-fun e!1281536 () List!22289)

(assert (=> b!2028825 (= e!1281536 e!1281537)))

(declare-fun b!2028826 () Bool)

(assert (=> b!2028826 (= e!1281539 call!124475)))

(declare-fun bm!124470 () Bool)

(assert (=> bm!124470 (= call!124476 (usedCharacters!429 (ite c!328322 (reg!5745 (regex!3991 (rule!6220 separatorToken!354))) (ite c!328320 (regTwo!11345 (regex!3991 (rule!6220 separatorToken!354))) (regOne!11344 (regex!3991 (rule!6220 separatorToken!354)))))))))

(declare-fun b!2028827 () Bool)

(assert (=> b!2028827 (= e!1281537 e!1281539)))

(assert (=> b!2028827 (= c!328320 (is-Union!5416 (regex!3991 (rule!6220 separatorToken!354))))))

(declare-fun b!2028828 () Bool)

(assert (=> b!2028828 (= e!1281538 Nil!22207)))

(declare-fun b!2028829 () Bool)

(assert (=> b!2028829 (= e!1281538 e!1281536)))

(declare-fun c!328323 () Bool)

(assert (=> b!2028829 (= c!328323 (is-ElementMatch!5416 (regex!3991 (rule!6220 separatorToken!354))))))

(declare-fun b!2028830 () Bool)

(assert (=> b!2028830 (= e!1281536 (Cons!22207 (c!328192 (regex!3991 (rule!6220 separatorToken!354))) Nil!22207))))

(declare-fun bm!124471 () Bool)

(assert (=> bm!124471 (= call!124474 (usedCharacters!429 (ite c!328320 (regOne!11345 (regex!3991 (rule!6220 separatorToken!354))) (regTwo!11344 (regex!3991 (rule!6220 separatorToken!354))))))))

(assert (= (and d!620375 c!328321) b!2028828))

(assert (= (and d!620375 (not c!328321)) b!2028829))

(assert (= (and b!2028829 c!328323) b!2028830))

(assert (= (and b!2028829 (not c!328323)) b!2028825))

(assert (= (and b!2028825 c!328322) b!2028823))

(assert (= (and b!2028825 (not c!328322)) b!2028827))

(assert (= (and b!2028827 c!328320) b!2028824))

(assert (= (and b!2028827 (not c!328320)) b!2028826))

(assert (= (or b!2028824 b!2028826) bm!124471))

(assert (= (or b!2028824 b!2028826) bm!124469))

(assert (= (or b!2028824 b!2028826) bm!124468))

(assert (= (or b!2028823 bm!124469) bm!124470))

(declare-fun m!2468103 () Bool)

(assert (=> bm!124468 m!2468103))

(declare-fun m!2468105 () Bool)

(assert (=> bm!124470 m!2468105))

(declare-fun m!2468107 () Bool)

(assert (=> bm!124471 m!2468107))

(assert (=> b!2028172 d!620375))

(declare-fun d!620377 () Bool)

(assert (=> d!620377 (= (list!9066 lt!761722) (list!9068 (c!328191 lt!761722)))))

(declare-fun bs!420792 () Bool)

(assert (= bs!420792 d!620377))

(declare-fun m!2468109 () Bool)

(assert (=> bs!420792 m!2468109))

(assert (=> b!2028172 d!620377))

(declare-fun d!620379 () Bool)

(declare-fun e!1281542 () Bool)

(assert (=> d!620379 e!1281542))

(declare-fun res!889706 () Bool)

(assert (=> d!620379 (=> (not res!889706) (not e!1281542))))

(declare-fun lt!762040 () BalanceConc!14674)

(assert (=> d!620379 (= res!889706 (= (list!9070 lt!762040) (Cons!22209 (h!27610 tokens!598) Nil!22209)))))

(declare-fun singleton!884 (Token!7534) BalanceConc!14674)

(assert (=> d!620379 (= lt!762040 (singleton!884 (h!27610 tokens!598)))))

(assert (=> d!620379 (= (singletonSeq!1967 (h!27610 tokens!598)) lt!762040)))

(declare-fun b!2028833 () Bool)

(declare-fun isBalanced!2315 (Conc!7429) Bool)

(assert (=> b!2028833 (= e!1281542 (isBalanced!2315 (c!328193 lt!762040)))))

(assert (= (and d!620379 res!889706) b!2028833))

(declare-fun m!2468111 () Bool)

(assert (=> d!620379 m!2468111))

(declare-fun m!2468113 () Bool)

(assert (=> d!620379 m!2468113))

(declare-fun m!2468115 () Bool)

(assert (=> b!2028833 m!2468115))

(assert (=> b!2028172 d!620379))

(declare-fun d!620381 () Bool)

(declare-fun lt!762041 () Bool)

(assert (=> d!620381 (= lt!762041 (set.member lt!761709 (content!3278 lt!761707)))))

(declare-fun e!1281543 () Bool)

(assert (=> d!620381 (= lt!762041 e!1281543)))

(declare-fun res!889707 () Bool)

(assert (=> d!620381 (=> (not res!889707) (not e!1281543))))

(assert (=> d!620381 (= res!889707 (is-Cons!22207 lt!761707))))

(assert (=> d!620381 (= (contains!4098 lt!761707 lt!761709) lt!762041)))

(declare-fun b!2028834 () Bool)

(declare-fun e!1281544 () Bool)

(assert (=> b!2028834 (= e!1281543 e!1281544)))

(declare-fun res!889708 () Bool)

(assert (=> b!2028834 (=> res!889708 e!1281544)))

(assert (=> b!2028834 (= res!889708 (= (h!27608 lt!761707) lt!761709))))

(declare-fun b!2028835 () Bool)

(assert (=> b!2028835 (= e!1281544 (contains!4098 (t!190124 lt!761707) lt!761709))))

(assert (= (and d!620381 res!889707) b!2028834))

(assert (= (and b!2028834 (not res!889708)) b!2028835))

(assert (=> d!620381 m!2467875))

(declare-fun m!2468117 () Bool)

(assert (=> d!620381 m!2468117))

(declare-fun m!2468119 () Bool)

(assert (=> b!2028835 m!2468119))

(assert (=> b!2028172 d!620381))

(declare-fun d!620383 () Bool)

(assert (=> d!620383 (= (head!4584 lt!761716) (h!27608 lt!761716))))

(assert (=> b!2028172 d!620383))

(declare-fun b!2028836 () Bool)

(declare-fun e!1281546 () List!22289)

(assert (=> b!2028836 (= e!1281546 lt!761704)))

(declare-fun e!1281545 () Bool)

(declare-fun lt!762042 () List!22289)

(declare-fun b!2028839 () Bool)

(assert (=> b!2028839 (= e!1281545 (or (not (= lt!761704 Nil!22207)) (= lt!762042 lt!761716)))))

(declare-fun d!620385 () Bool)

(assert (=> d!620385 e!1281545))

(declare-fun res!889710 () Bool)

(assert (=> d!620385 (=> (not res!889710) (not e!1281545))))

(assert (=> d!620385 (= res!889710 (= (content!3278 lt!762042) (set.union (content!3278 lt!761716) (content!3278 lt!761704))))))

(assert (=> d!620385 (= lt!762042 e!1281546)))

(declare-fun c!328324 () Bool)

(assert (=> d!620385 (= c!328324 (is-Nil!22207 lt!761716))))

(assert (=> d!620385 (= (++!6004 lt!761716 lt!761704) lt!762042)))

(declare-fun b!2028837 () Bool)

(assert (=> b!2028837 (= e!1281546 (Cons!22207 (h!27608 lt!761716) (++!6004 (t!190124 lt!761716) lt!761704)))))

(declare-fun b!2028838 () Bool)

(declare-fun res!889709 () Bool)

(assert (=> b!2028838 (=> (not res!889709) (not e!1281545))))

(assert (=> b!2028838 (= res!889709 (= (size!17349 lt!762042) (+ (size!17349 lt!761716) (size!17349 lt!761704))))))

(assert (= (and d!620385 c!328324) b!2028836))

(assert (= (and d!620385 (not c!328324)) b!2028837))

(assert (= (and d!620385 res!889710) b!2028838))

(assert (= (and b!2028838 res!889709) b!2028839))

(declare-fun m!2468121 () Bool)

(assert (=> d!620385 m!2468121))

(assert (=> d!620385 m!2468045))

(assert (=> d!620385 m!2467527))

(declare-fun m!2468123 () Bool)

(assert (=> b!2028837 m!2468123))

(declare-fun m!2468125 () Bool)

(assert (=> b!2028838 m!2468125))

(assert (=> b!2028838 m!2468051))

(assert (=> b!2028838 m!2467535))

(assert (=> b!2028172 d!620385))

(declare-fun d!620387 () Bool)

(declare-fun res!889713 () Bool)

(declare-fun e!1281549 () Bool)

(assert (=> d!620387 (=> (not res!889713) (not e!1281549))))

(declare-fun rulesValid!1495 (LexerInterface!3604 List!22290) Bool)

(assert (=> d!620387 (= res!889713 (rulesValid!1495 thiss!23328 rules!3198))))

(assert (=> d!620387 (= (rulesInvariant!3211 thiss!23328 rules!3198) e!1281549)))

(declare-fun b!2028842 () Bool)

(declare-datatypes ((List!22296 0))(
  ( (Nil!22214) (Cons!22214 (h!27615 String!25755) (t!190243 List!22296)) )
))
(declare-fun noDuplicateTag!1493 (LexerInterface!3604 List!22290 List!22296) Bool)

(assert (=> b!2028842 (= e!1281549 (noDuplicateTag!1493 thiss!23328 rules!3198 Nil!22214))))

(assert (= (and d!620387 res!889713) b!2028842))

(declare-fun m!2468127 () Bool)

(assert (=> d!620387 m!2468127))

(declare-fun m!2468129 () Bool)

(assert (=> b!2028842 m!2468129))

(assert (=> b!2028150 d!620387))

(declare-fun d!620389 () Bool)

(assert (=> d!620389 (= (isEmpty!13853 tokens!598) (is-Nil!22209 tokens!598))))

(assert (=> b!2028144 d!620389))

(declare-fun b!2028843 () Bool)

(declare-fun res!889717 () Bool)

(declare-fun e!1281552 () Bool)

(assert (=> b!2028843 (=> (not res!889717) (not e!1281552))))

(declare-fun lt!762043 () Option!4665)

(assert (=> b!2028843 (= res!889717 (< (size!17349 (_2!11913 (get!7053 lt!762043))) (size!17349 lt!761719)))))

(declare-fun b!2028844 () Bool)

(declare-fun res!889719 () Bool)

(assert (=> b!2028844 (=> (not res!889719) (not e!1281552))))

(assert (=> b!2028844 (= res!889719 (= (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762043)))) (originalCharacters!4798 (_1!11913 (get!7053 lt!762043)))))))

(declare-fun b!2028845 () Bool)

(assert (=> b!2028845 (= e!1281552 (contains!4097 rules!3198 (rule!6220 (_1!11913 (get!7053 lt!762043)))))))

(declare-fun b!2028846 () Bool)

(declare-fun e!1281550 () Option!4665)

(declare-fun call!124477 () Option!4665)

(assert (=> b!2028846 (= e!1281550 call!124477)))

(declare-fun d!620391 () Bool)

(declare-fun e!1281551 () Bool)

(assert (=> d!620391 e!1281551))

(declare-fun res!889714 () Bool)

(assert (=> d!620391 (=> res!889714 e!1281551)))

(assert (=> d!620391 (= res!889714 (isEmpty!13861 lt!762043))))

(assert (=> d!620391 (= lt!762043 e!1281550)))

(declare-fun c!328325 () Bool)

(assert (=> d!620391 (= c!328325 (and (is-Cons!22208 rules!3198) (is-Nil!22208 (t!190125 rules!3198))))))

(declare-fun lt!762047 () Unit!36865)

(declare-fun lt!762046 () Unit!36865)

(assert (=> d!620391 (= lt!762047 lt!762046)))

(assert (=> d!620391 (isPrefix!1984 lt!761719 lt!761719)))

(assert (=> d!620391 (= lt!762046 (lemmaIsPrefixRefl!1302 lt!761719 lt!761719))))

(assert (=> d!620391 (rulesValidInductive!1383 thiss!23328 rules!3198)))

(assert (=> d!620391 (= (maxPrefix!2040 thiss!23328 rules!3198 lt!761719) lt!762043)))

(declare-fun b!2028847 () Bool)

(declare-fun res!889716 () Bool)

(assert (=> b!2028847 (=> (not res!889716) (not e!1281552))))

(assert (=> b!2028847 (= res!889716 (matchR!2682 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762043)))) (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762043))))))))

(declare-fun b!2028848 () Bool)

(declare-fun res!889718 () Bool)

(assert (=> b!2028848 (=> (not res!889718) (not e!1281552))))

(assert (=> b!2028848 (= res!889718 (= (++!6004 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762043)))) (_2!11913 (get!7053 lt!762043))) lt!761719))))

(declare-fun b!2028849 () Bool)

(declare-fun lt!762044 () Option!4665)

(declare-fun lt!762045 () Option!4665)

(assert (=> b!2028849 (= e!1281550 (ite (and (is-None!4664 lt!762044) (is-None!4664 lt!762045)) None!4664 (ite (is-None!4664 lt!762045) lt!762044 (ite (is-None!4664 lt!762044) lt!762045 (ite (>= (size!17347 (_1!11913 (v!26989 lt!762044))) (size!17347 (_1!11913 (v!26989 lt!762045)))) lt!762044 lt!762045)))))))

(assert (=> b!2028849 (= lt!762044 call!124477)))

(assert (=> b!2028849 (= lt!762045 (maxPrefix!2040 thiss!23328 (t!190125 rules!3198) lt!761719))))

(declare-fun b!2028850 () Bool)

(declare-fun res!889720 () Bool)

(assert (=> b!2028850 (=> (not res!889720) (not e!1281552))))

(assert (=> b!2028850 (= res!889720 (= (value!125336 (_1!11913 (get!7053 lt!762043))) (apply!5846 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762043)))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!762043)))))))))

(declare-fun b!2028851 () Bool)

(assert (=> b!2028851 (= e!1281551 e!1281552)))

(declare-fun res!889715 () Bool)

(assert (=> b!2028851 (=> (not res!889715) (not e!1281552))))

(assert (=> b!2028851 (= res!889715 (isDefined!3954 lt!762043))))

(declare-fun bm!124472 () Bool)

(assert (=> bm!124472 (= call!124477 (maxPrefixOneRule!1266 thiss!23328 (h!27609 rules!3198) lt!761719))))

(assert (= (and d!620391 c!328325) b!2028846))

(assert (= (and d!620391 (not c!328325)) b!2028849))

(assert (= (or b!2028846 b!2028849) bm!124472))

(assert (= (and d!620391 (not res!889714)) b!2028851))

(assert (= (and b!2028851 res!889715) b!2028844))

(assert (= (and b!2028844 res!889719) b!2028843))

(assert (= (and b!2028843 res!889717) b!2028848))

(assert (= (and b!2028848 res!889718) b!2028850))

(assert (= (and b!2028850 res!889720) b!2028847))

(assert (= (and b!2028847 res!889716) b!2028845))

(declare-fun m!2468131 () Bool)

(assert (=> b!2028843 m!2468131))

(declare-fun m!2468133 () Bool)

(assert (=> b!2028843 m!2468133))

(declare-fun m!2468135 () Bool)

(assert (=> b!2028843 m!2468135))

(assert (=> b!2028848 m!2468131))

(declare-fun m!2468137 () Bool)

(assert (=> b!2028848 m!2468137))

(assert (=> b!2028848 m!2468137))

(declare-fun m!2468139 () Bool)

(assert (=> b!2028848 m!2468139))

(assert (=> b!2028848 m!2468139))

(declare-fun m!2468141 () Bool)

(assert (=> b!2028848 m!2468141))

(declare-fun m!2468143 () Bool)

(assert (=> bm!124472 m!2468143))

(declare-fun m!2468145 () Bool)

(assert (=> b!2028851 m!2468145))

(assert (=> b!2028850 m!2468131))

(declare-fun m!2468147 () Bool)

(assert (=> b!2028850 m!2468147))

(assert (=> b!2028850 m!2468147))

(declare-fun m!2468149 () Bool)

(assert (=> b!2028850 m!2468149))

(declare-fun m!2468151 () Bool)

(assert (=> b!2028849 m!2468151))

(assert (=> b!2028845 m!2468131))

(declare-fun m!2468153 () Bool)

(assert (=> b!2028845 m!2468153))

(declare-fun m!2468155 () Bool)

(assert (=> d!620391 m!2468155))

(declare-fun m!2468157 () Bool)

(assert (=> d!620391 m!2468157))

(declare-fun m!2468159 () Bool)

(assert (=> d!620391 m!2468159))

(assert (=> d!620391 m!2467623))

(assert (=> b!2028847 m!2468131))

(assert (=> b!2028847 m!2468137))

(assert (=> b!2028847 m!2468137))

(assert (=> b!2028847 m!2468139))

(assert (=> b!2028847 m!2468139))

(declare-fun m!2468161 () Bool)

(assert (=> b!2028847 m!2468161))

(assert (=> b!2028844 m!2468131))

(assert (=> b!2028844 m!2468137))

(assert (=> b!2028844 m!2468137))

(assert (=> b!2028844 m!2468139))

(assert (=> b!2028144 d!620391))

(declare-fun d!620393 () Bool)

(assert (=> d!620393 (= (maxPrefix!2040 thiss!23328 rules!3198 (++!6004 (list!9066 (charsOf!2531 (h!27610 tokens!598))) lt!761715)) (Some!4664 (tuple2!20889 (h!27610 tokens!598) lt!761715)))))

(declare-fun lt!762057 () Unit!36865)

(declare-fun choose!12371 (LexerInterface!3604 List!22290 Token!7534 Rule!7782 List!22289 Rule!7782) Unit!36865)

(assert (=> d!620393 (= lt!762057 (choose!12371 thiss!23328 rules!3198 (h!27610 tokens!598) (rule!6220 (h!27610 tokens!598)) lt!761715 (rule!6220 separatorToken!354)))))

(assert (=> d!620393 (not (isEmpty!13856 rules!3198))))

(assert (=> d!620393 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!105 thiss!23328 rules!3198 (h!27610 tokens!598) (rule!6220 (h!27610 tokens!598)) lt!761715 (rule!6220 separatorToken!354)) lt!762057)))

(declare-fun bs!420795 () Bool)

(assert (= bs!420795 d!620393))

(assert (=> bs!420795 m!2467173))

(assert (=> bs!420795 m!2467173))

(assert (=> bs!420795 m!2467471))

(declare-fun m!2468205 () Bool)

(assert (=> bs!420795 m!2468205))

(assert (=> bs!420795 m!2467235))

(declare-fun m!2468207 () Bool)

(assert (=> bs!420795 m!2468207))

(declare-fun m!2468209 () Bool)

(assert (=> bs!420795 m!2468209))

(assert (=> bs!420795 m!2467471))

(assert (=> bs!420795 m!2468207))

(assert (=> b!2028144 d!620393))

(declare-fun d!620407 () Bool)

(declare-fun res!889759 () Bool)

(declare-fun e!1281584 () Bool)

(assert (=> d!620407 (=> (not res!889759) (not e!1281584))))

(assert (=> d!620407 (= res!889759 (not (isEmpty!13854 (originalCharacters!4798 (h!27610 tokens!598)))))))

(assert (=> d!620407 (= (inv!29390 (h!27610 tokens!598)) e!1281584)))

(declare-fun b!2028903 () Bool)

(declare-fun res!889760 () Bool)

(assert (=> b!2028903 (=> (not res!889760) (not e!1281584))))

(assert (=> b!2028903 (= res!889760 (= (originalCharacters!4798 (h!27610 tokens!598)) (list!9066 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (value!125336 (h!27610 tokens!598))))))))

(declare-fun b!2028904 () Bool)

(assert (=> b!2028904 (= e!1281584 (= (size!17347 (h!27610 tokens!598)) (size!17349 (originalCharacters!4798 (h!27610 tokens!598)))))))

(assert (= (and d!620407 res!889759) b!2028903))

(assert (= (and b!2028903 res!889760) b!2028904))

(declare-fun b_lambda!68261 () Bool)

(assert (=> (not b_lambda!68261) (not b!2028903)))

(assert (=> b!2028903 t!190162))

(declare-fun b_and!161469 () Bool)

(assert (= b_and!161457 (and (=> t!190162 result!153010) b_and!161469)))

(assert (=> b!2028903 t!190164))

(declare-fun b_and!161471 () Bool)

(assert (= b_and!161459 (and (=> t!190164 result!153012) b_and!161471)))

(assert (=> b!2028903 t!190166))

(declare-fun b_and!161473 () Bool)

(assert (= b_and!161461 (and (=> t!190166 result!153014) b_and!161473)))

(declare-fun m!2468239 () Bool)

(assert (=> d!620407 m!2468239))

(assert (=> b!2028903 m!2467859))

(assert (=> b!2028903 m!2467859))

(declare-fun m!2468241 () Bool)

(assert (=> b!2028903 m!2468241))

(declare-fun m!2468243 () Bool)

(assert (=> b!2028904 m!2468243))

(assert (=> b!2028165 d!620407))

(declare-fun d!620421 () Bool)

(declare-fun lt!762062 () Bool)

(declare-fun e!1281585 () Bool)

(assert (=> d!620421 (= lt!762062 e!1281585)))

(declare-fun res!889763 () Bool)

(assert (=> d!620421 (=> (not res!889763) (not e!1281585))))

(assert (=> d!620421 (= res!889763 (= (list!9070 (_1!11914 (lex!1620 thiss!23328 rules!3198 (print!1566 thiss!23328 (singletonSeq!1967 (h!27610 tokens!598)))))) (list!9070 (singletonSeq!1967 (h!27610 tokens!598)))))))

(declare-fun e!1281586 () Bool)

(assert (=> d!620421 (= lt!762062 e!1281586)))

(declare-fun res!889762 () Bool)

(assert (=> d!620421 (=> (not res!889762) (not e!1281586))))

(declare-fun lt!762061 () tuple2!20890)

(assert (=> d!620421 (= res!889762 (= (size!17351 (_1!11914 lt!762061)) 1))))

(assert (=> d!620421 (= lt!762061 (lex!1620 thiss!23328 rules!3198 (print!1566 thiss!23328 (singletonSeq!1967 (h!27610 tokens!598)))))))

(assert (=> d!620421 (not (isEmpty!13856 rules!3198))))

(assert (=> d!620421 (= (rulesProduceIndividualToken!1776 thiss!23328 rules!3198 (h!27610 tokens!598)) lt!762062)))

(declare-fun b!2028905 () Bool)

(declare-fun res!889761 () Bool)

(assert (=> b!2028905 (=> (not res!889761) (not e!1281586))))

(assert (=> b!2028905 (= res!889761 (= (apply!5848 (_1!11914 lt!762061) 0) (h!27610 tokens!598)))))

(declare-fun b!2028906 () Bool)

(assert (=> b!2028906 (= e!1281586 (isEmpty!13864 (_2!11914 lt!762061)))))

(declare-fun b!2028907 () Bool)

(assert (=> b!2028907 (= e!1281585 (isEmpty!13864 (_2!11914 (lex!1620 thiss!23328 rules!3198 (print!1566 thiss!23328 (singletonSeq!1967 (h!27610 tokens!598)))))))))

(assert (= (and d!620421 res!889762) b!2028905))

(assert (= (and b!2028905 res!889761) b!2028906))

(assert (= (and d!620421 res!889763) b!2028907))

(declare-fun m!2468245 () Bool)

(assert (=> d!620421 m!2468245))

(declare-fun m!2468247 () Bool)

(assert (=> d!620421 m!2468247))

(declare-fun m!2468249 () Bool)

(assert (=> d!620421 m!2468249))

(declare-fun m!2468251 () Bool)

(assert (=> d!620421 m!2468251))

(assert (=> d!620421 m!2467289))

(assert (=> d!620421 m!2467235))

(assert (=> d!620421 m!2467289))

(assert (=> d!620421 m!2468249))

(assert (=> d!620421 m!2467289))

(declare-fun m!2468253 () Bool)

(assert (=> d!620421 m!2468253))

(declare-fun m!2468255 () Bool)

(assert (=> b!2028905 m!2468255))

(declare-fun m!2468257 () Bool)

(assert (=> b!2028906 m!2468257))

(assert (=> b!2028907 m!2467289))

(assert (=> b!2028907 m!2467289))

(assert (=> b!2028907 m!2468249))

(assert (=> b!2028907 m!2468249))

(assert (=> b!2028907 m!2468251))

(declare-fun m!2468259 () Bool)

(assert (=> b!2028907 m!2468259))

(assert (=> b!2028142 d!620421))

(declare-fun d!620423 () Bool)

(declare-fun e!1281598 () Bool)

(assert (=> d!620423 e!1281598))

(declare-fun c!328336 () Bool)

(assert (=> d!620423 (= c!328336 (is-EmptyExpr!5416 (regex!3991 lt!761717)))))

(declare-fun lt!762063 () Bool)

(declare-fun e!1281596 () Bool)

(assert (=> d!620423 (= lt!762063 e!1281596)))

(declare-fun c!328337 () Bool)

(assert (=> d!620423 (= c!328337 (isEmpty!13854 lt!761716))))

(assert (=> d!620423 (validRegex!2179 (regex!3991 lt!761717))))

(assert (=> d!620423 (= (matchR!2682 (regex!3991 lt!761717) lt!761716) lt!762063)))

(declare-fun b!2028918 () Bool)

(assert (=> b!2028918 (= e!1281596 (matchR!2682 (derivativeStep!1412 (regex!3991 lt!761717) (head!4584 lt!761716)) (tail!3060 lt!761716)))))

(declare-fun b!2028919 () Bool)

(declare-fun e!1281597 () Bool)

(assert (=> b!2028919 (= e!1281597 (not lt!762063))))

(declare-fun b!2028920 () Bool)

(declare-fun res!889771 () Bool)

(declare-fun e!1281595 () Bool)

(assert (=> b!2028920 (=> res!889771 e!1281595)))

(assert (=> b!2028920 (= res!889771 (not (isEmpty!13854 (tail!3060 lt!761716))))))

(declare-fun b!2028921 () Bool)

(assert (=> b!2028921 (= e!1281595 (not (= (head!4584 lt!761716) (c!328192 (regex!3991 lt!761717)))))))

(declare-fun b!2028922 () Bool)

(declare-fun e!1281599 () Bool)

(assert (=> b!2028922 (= e!1281599 e!1281595)))

(declare-fun res!889767 () Bool)

(assert (=> b!2028922 (=> res!889767 e!1281595)))

(declare-fun call!124479 () Bool)

(assert (=> b!2028922 (= res!889767 call!124479)))

(declare-fun b!2028923 () Bool)

(declare-fun res!889773 () Bool)

(declare-fun e!1281593 () Bool)

(assert (=> b!2028923 (=> (not res!889773) (not e!1281593))))

(assert (=> b!2028923 (= res!889773 (isEmpty!13854 (tail!3060 lt!761716)))))

(declare-fun b!2028924 () Bool)

(declare-fun res!889769 () Bool)

(declare-fun e!1281594 () Bool)

(assert (=> b!2028924 (=> res!889769 e!1281594)))

(assert (=> b!2028924 (= res!889769 e!1281593)))

(declare-fun res!889772 () Bool)

(assert (=> b!2028924 (=> (not res!889772) (not e!1281593))))

(assert (=> b!2028924 (= res!889772 lt!762063)))

(declare-fun b!2028925 () Bool)

(declare-fun res!889768 () Bool)

(assert (=> b!2028925 (=> (not res!889768) (not e!1281593))))

(assert (=> b!2028925 (= res!889768 (not call!124479))))

(declare-fun b!2028926 () Bool)

(assert (=> b!2028926 (= e!1281594 e!1281599)))

(declare-fun res!889766 () Bool)

(assert (=> b!2028926 (=> (not res!889766) (not e!1281599))))

(assert (=> b!2028926 (= res!889766 (not lt!762063))))

(declare-fun b!2028927 () Bool)

(assert (=> b!2028927 (= e!1281593 (= (head!4584 lt!761716) (c!328192 (regex!3991 lt!761717))))))

(declare-fun b!2028928 () Bool)

(assert (=> b!2028928 (= e!1281596 (nullable!1653 (regex!3991 lt!761717)))))

(declare-fun b!2028929 () Bool)

(assert (=> b!2028929 (= e!1281598 e!1281597)))

(declare-fun c!328338 () Bool)

(assert (=> b!2028929 (= c!328338 (is-EmptyLang!5416 (regex!3991 lt!761717)))))

(declare-fun bm!124474 () Bool)

(assert (=> bm!124474 (= call!124479 (isEmpty!13854 lt!761716))))

(declare-fun b!2028930 () Bool)

(declare-fun res!889770 () Bool)

(assert (=> b!2028930 (=> res!889770 e!1281594)))

(assert (=> b!2028930 (= res!889770 (not (is-ElementMatch!5416 (regex!3991 lt!761717))))))

(assert (=> b!2028930 (= e!1281597 e!1281594)))

(declare-fun b!2028931 () Bool)

(assert (=> b!2028931 (= e!1281598 (= lt!762063 call!124479))))

(assert (= (and d!620423 c!328337) b!2028928))

(assert (= (and d!620423 (not c!328337)) b!2028918))

(assert (= (and d!620423 c!328336) b!2028931))

(assert (= (and d!620423 (not c!328336)) b!2028929))

(assert (= (and b!2028929 c!328338) b!2028919))

(assert (= (and b!2028929 (not c!328338)) b!2028930))

(assert (= (and b!2028930 (not res!889770)) b!2028924))

(assert (= (and b!2028924 res!889772) b!2028925))

(assert (= (and b!2028925 res!889768) b!2028923))

(assert (= (and b!2028923 res!889773) b!2028927))

(assert (= (and b!2028924 (not res!889769)) b!2028926))

(assert (= (and b!2028926 res!889766) b!2028922))

(assert (= (and b!2028922 (not res!889767)) b!2028920))

(assert (= (and b!2028920 (not res!889771)) b!2028921))

(assert (= (or b!2028931 b!2028922 b!2028925) bm!124474))

(assert (=> b!2028923 m!2467931))

(assert (=> b!2028923 m!2467931))

(assert (=> b!2028923 m!2467933))

(declare-fun m!2468261 () Bool)

(assert (=> b!2028928 m!2468261))

(assert (=> b!2028921 m!2467285))

(assert (=> b!2028918 m!2467285))

(assert (=> b!2028918 m!2467285))

(declare-fun m!2468263 () Bool)

(assert (=> b!2028918 m!2468263))

(assert (=> b!2028918 m!2467931))

(assert (=> b!2028918 m!2468263))

(assert (=> b!2028918 m!2467931))

(declare-fun m!2468265 () Bool)

(assert (=> b!2028918 m!2468265))

(assert (=> b!2028927 m!2467285))

(assert (=> d!620423 m!2467941))

(declare-fun m!2468267 () Bool)

(assert (=> d!620423 m!2468267))

(assert (=> b!2028920 m!2467931))

(assert (=> b!2028920 m!2467931))

(assert (=> b!2028920 m!2467933))

(assert (=> bm!124474 m!2467941))

(assert (=> b!2028147 d!620423))

(declare-fun d!620425 () Bool)

(assert (=> d!620425 (= (get!7052 lt!761702) (v!26990 lt!761702))))

(assert (=> b!2028147 d!620425))

(declare-fun d!620427 () Bool)

(assert (=> d!620427 (= (inv!29386 (tag!4477 (h!27609 rules!3198))) (= (mod (str.len (value!125335 (tag!4477 (h!27609 rules!3198)))) 2) 0))))

(assert (=> b!2028167 d!620427))

(declare-fun d!620431 () Bool)

(declare-fun res!889777 () Bool)

(declare-fun e!1281605 () Bool)

(assert (=> d!620431 (=> (not res!889777) (not e!1281605))))

(assert (=> d!620431 (= res!889777 (semiInverseModEq!1608 (toChars!5523 (transformation!3991 (h!27609 rules!3198))) (toValue!5664 (transformation!3991 (h!27609 rules!3198)))))))

(assert (=> d!620431 (= (inv!29389 (transformation!3991 (h!27609 rules!3198))) e!1281605)))

(declare-fun b!2028939 () Bool)

(assert (=> b!2028939 (= e!1281605 (equivClasses!1535 (toChars!5523 (transformation!3991 (h!27609 rules!3198))) (toValue!5664 (transformation!3991 (h!27609 rules!3198)))))))

(assert (= (and d!620431 res!889777) b!2028939))

(declare-fun m!2468275 () Bool)

(assert (=> d!620431 m!2468275))

(declare-fun m!2468277 () Bool)

(assert (=> b!2028939 m!2468277))

(assert (=> b!2028167 d!620431))

(declare-fun d!620433 () Bool)

(assert (=> d!620433 (= (inv!29386 (tag!4477 (rule!6220 (h!27610 tokens!598)))) (= (mod (str.len (value!125335 (tag!4477 (rule!6220 (h!27610 tokens!598))))) 2) 0))))

(assert (=> b!2028145 d!620433))

(declare-fun d!620437 () Bool)

(declare-fun res!889778 () Bool)

(declare-fun e!1281606 () Bool)

(assert (=> d!620437 (=> (not res!889778) (not e!1281606))))

(assert (=> d!620437 (= res!889778 (semiInverseModEq!1608 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598))))))))

(assert (=> d!620437 (= (inv!29389 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) e!1281606)))

(declare-fun b!2028940 () Bool)

(assert (=> b!2028940 (= e!1281606 (equivClasses!1535 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598))))))))

(assert (= (and d!620437 res!889778) b!2028940))

(declare-fun m!2468283 () Bool)

(assert (=> d!620437 m!2468283))

(declare-fun m!2468285 () Bool)

(assert (=> b!2028940 m!2468285))

(assert (=> b!2028145 d!620437))

(declare-fun d!620441 () Bool)

(declare-fun res!889788 () Bool)

(declare-fun e!1281616 () Bool)

(assert (=> d!620441 (=> res!889788 e!1281616)))

(assert (=> d!620441 (= res!889788 (is-Nil!22209 tokens!598))))

(assert (=> d!620441 (= (forall!4723 tokens!598 lambda!76480) e!1281616)))

(declare-fun b!2028950 () Bool)

(declare-fun e!1281617 () Bool)

(assert (=> b!2028950 (= e!1281616 e!1281617)))

(declare-fun res!889789 () Bool)

(assert (=> b!2028950 (=> (not res!889789) (not e!1281617))))

(declare-fun dynLambda!11048 (Int Token!7534) Bool)

(assert (=> b!2028950 (= res!889789 (dynLambda!11048 lambda!76480 (h!27610 tokens!598)))))

(declare-fun b!2028951 () Bool)

(assert (=> b!2028951 (= e!1281617 (forall!4723 (t!190126 tokens!598) lambda!76480))))

(assert (= (and d!620441 (not res!889788)) b!2028950))

(assert (= (and b!2028950 res!889789) b!2028951))

(declare-fun b_lambda!68263 () Bool)

(assert (=> (not b_lambda!68263) (not b!2028950)))

(declare-fun m!2468291 () Bool)

(assert (=> b!2028950 m!2468291))

(declare-fun m!2468293 () Bool)

(assert (=> b!2028951 m!2468293))

(assert (=> b!2028166 d!620441))

(declare-fun bs!420799 () Bool)

(declare-fun d!620447 () Bool)

(assert (= bs!420799 (and d!620447 b!2028166)))

(declare-fun lambda!76498 () Int)

(assert (=> bs!420799 (not (= lambda!76498 lambda!76480))))

(declare-fun bs!420800 () Bool)

(assert (= bs!420800 (and d!620447 b!2028567)))

(assert (=> bs!420800 (= lambda!76498 lambda!76489)))

(declare-fun b!2028993 () Bool)

(declare-fun e!1281639 () Bool)

(assert (=> b!2028993 (= e!1281639 true)))

(declare-fun b!2028992 () Bool)

(declare-fun e!1281638 () Bool)

(assert (=> b!2028992 (= e!1281638 e!1281639)))

(declare-fun b!2028991 () Bool)

(declare-fun e!1281637 () Bool)

(assert (=> b!2028991 (= e!1281637 e!1281638)))

(assert (=> d!620447 e!1281637))

(assert (= b!2028992 b!2028993))

(assert (= b!2028991 b!2028992))

(assert (= (and d!620447 (is-Cons!22208 rules!3198)) b!2028991))

(assert (=> b!2028993 (< (dynLambda!11037 order!14217 (toValue!5664 (transformation!3991 (h!27609 rules!3198)))) (dynLambda!11041 order!14223 lambda!76498))))

(assert (=> b!2028993 (< (dynLambda!11039 order!14221 (toChars!5523 (transformation!3991 (h!27609 rules!3198)))) (dynLambda!11041 order!14223 lambda!76498))))

(assert (=> d!620447 true))

(declare-fun lt!762083 () Bool)

(assert (=> d!620447 (= lt!762083 (forall!4723 tokens!598 lambda!76498))))

(declare-fun e!1281635 () Bool)

(assert (=> d!620447 (= lt!762083 e!1281635)))

(declare-fun res!889819 () Bool)

(assert (=> d!620447 (=> res!889819 e!1281635)))

(assert (=> d!620447 (= res!889819 (not (is-Cons!22209 tokens!598)))))

(assert (=> d!620447 (not (isEmpty!13856 rules!3198))))

(assert (=> d!620447 (= (rulesProduceEachTokenIndividuallyList!1335 thiss!23328 rules!3198 tokens!598) lt!762083)))

(declare-fun b!2028989 () Bool)

(declare-fun e!1281636 () Bool)

(assert (=> b!2028989 (= e!1281635 e!1281636)))

(declare-fun res!889820 () Bool)

(assert (=> b!2028989 (=> (not res!889820) (not e!1281636))))

(assert (=> b!2028989 (= res!889820 (rulesProduceIndividualToken!1776 thiss!23328 rules!3198 (h!27610 tokens!598)))))

(declare-fun b!2028990 () Bool)

(assert (=> b!2028990 (= e!1281636 (rulesProduceEachTokenIndividuallyList!1335 thiss!23328 rules!3198 (t!190126 tokens!598)))))

(assert (= (and d!620447 (not res!889819)) b!2028989))

(assert (= (and b!2028989 res!889820) b!2028990))

(declare-fun m!2468343 () Bool)

(assert (=> d!620447 m!2468343))

(assert (=> d!620447 m!2467235))

(assert (=> b!2028989 m!2467237))

(declare-fun m!2468345 () Bool)

(assert (=> b!2028990 m!2468345))

(assert (=> b!2028160 d!620447))

(declare-fun d!620463 () Bool)

(assert (=> d!620463 (= (isEmpty!13854 lt!761715) (is-Nil!22207 lt!761715))))

(assert (=> b!2028159 d!620463))

(declare-fun d!620465 () Bool)

(assert (=> d!620465 (= (isEmpty!13856 rules!3198) (is-Nil!22208 rules!3198))))

(assert (=> b!2028180 d!620465))

(declare-fun d!620467 () Bool)

(assert (=> d!620467 (= (isDefined!3954 lt!761735) (not (isEmpty!13861 lt!761735)))))

(declare-fun bs!420801 () Bool)

(assert (= bs!420801 d!620467))

(declare-fun m!2468347 () Bool)

(assert (=> bs!420801 m!2468347))

(assert (=> b!2028158 d!620467))

(declare-fun b!2028994 () Bool)

(declare-fun res!889824 () Bool)

(declare-fun e!1281642 () Bool)

(assert (=> b!2028994 (=> (not res!889824) (not e!1281642))))

(declare-fun lt!762084 () Option!4665)

(assert (=> b!2028994 (= res!889824 (< (size!17349 (_2!11913 (get!7053 lt!762084))) (size!17349 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))

(declare-fun b!2028995 () Bool)

(declare-fun res!889826 () Bool)

(assert (=> b!2028995 (=> (not res!889826) (not e!1281642))))

(assert (=> b!2028995 (= res!889826 (= (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762084)))) (originalCharacters!4798 (_1!11913 (get!7053 lt!762084)))))))

(declare-fun b!2028996 () Bool)

(assert (=> b!2028996 (= e!1281642 (contains!4097 rules!3198 (rule!6220 (_1!11913 (get!7053 lt!762084)))))))

(declare-fun b!2028997 () Bool)

(declare-fun e!1281640 () Option!4665)

(declare-fun call!124483 () Option!4665)

(assert (=> b!2028997 (= e!1281640 call!124483)))

(declare-fun d!620469 () Bool)

(declare-fun e!1281641 () Bool)

(assert (=> d!620469 e!1281641))

(declare-fun res!889821 () Bool)

(assert (=> d!620469 (=> res!889821 e!1281641)))

(assert (=> d!620469 (= res!889821 (isEmpty!13861 lt!762084))))

(assert (=> d!620469 (= lt!762084 e!1281640)))

(declare-fun c!328345 () Bool)

(assert (=> d!620469 (= c!328345 (and (is-Cons!22208 rules!3198) (is-Nil!22208 (t!190125 rules!3198))))))

(declare-fun lt!762088 () Unit!36865)

(declare-fun lt!762087 () Unit!36865)

(assert (=> d!620469 (= lt!762088 lt!762087)))

(assert (=> d!620469 (isPrefix!1984 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354))))

(assert (=> d!620469 (= lt!762087 (lemmaIsPrefixRefl!1302 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(assert (=> d!620469 (rulesValidInductive!1383 thiss!23328 rules!3198)))

(assert (=> d!620469 (= (maxPrefix!2040 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354)) lt!762084)))

(declare-fun b!2028998 () Bool)

(declare-fun res!889823 () Bool)

(assert (=> b!2028998 (=> (not res!889823) (not e!1281642))))

(assert (=> b!2028998 (= res!889823 (matchR!2682 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762084)))) (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762084))))))))

(declare-fun b!2028999 () Bool)

(declare-fun res!889825 () Bool)

(assert (=> b!2028999 (=> (not res!889825) (not e!1281642))))

(assert (=> b!2028999 (= res!889825 (= (++!6004 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762084)))) (_2!11913 (get!7053 lt!762084))) (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun b!2029000 () Bool)

(declare-fun lt!762085 () Option!4665)

(declare-fun lt!762086 () Option!4665)

(assert (=> b!2029000 (= e!1281640 (ite (and (is-None!4664 lt!762085) (is-None!4664 lt!762086)) None!4664 (ite (is-None!4664 lt!762086) lt!762085 (ite (is-None!4664 lt!762085) lt!762086 (ite (>= (size!17347 (_1!11913 (v!26989 lt!762085))) (size!17347 (_1!11913 (v!26989 lt!762086)))) lt!762085 lt!762086)))))))

(assert (=> b!2029000 (= lt!762085 call!124483)))

(assert (=> b!2029000 (= lt!762086 (maxPrefix!2040 thiss!23328 (t!190125 rules!3198) (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun b!2029001 () Bool)

(declare-fun res!889827 () Bool)

(assert (=> b!2029001 (=> (not res!889827) (not e!1281642))))

(assert (=> b!2029001 (= res!889827 (= (value!125336 (_1!11913 (get!7053 lt!762084))) (apply!5846 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762084)))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!762084)))))))))

(declare-fun b!2029002 () Bool)

(assert (=> b!2029002 (= e!1281641 e!1281642)))

(declare-fun res!889822 () Bool)

(assert (=> b!2029002 (=> (not res!889822) (not e!1281642))))

(assert (=> b!2029002 (= res!889822 (isDefined!3954 lt!762084))))

(declare-fun bm!124478 () Bool)

(assert (=> bm!124478 (= call!124483 (maxPrefixOneRule!1266 thiss!23328 (h!27609 rules!3198) (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(assert (= (and d!620469 c!328345) b!2028997))

(assert (= (and d!620469 (not c!328345)) b!2029000))

(assert (= (or b!2028997 b!2029000) bm!124478))

(assert (= (and d!620469 (not res!889821)) b!2029002))

(assert (= (and b!2029002 res!889822) b!2028995))

(assert (= (and b!2028995 res!889826) b!2028994))

(assert (= (and b!2028994 res!889824) b!2028999))

(assert (= (and b!2028999 res!889825) b!2029001))

(assert (= (and b!2029001 res!889827) b!2028998))

(assert (= (and b!2028998 res!889823) b!2028996))

(declare-fun m!2468349 () Bool)

(assert (=> b!2028994 m!2468349))

(declare-fun m!2468351 () Bool)

(assert (=> b!2028994 m!2468351))

(assert (=> b!2028994 m!2467209))

(declare-fun m!2468353 () Bool)

(assert (=> b!2028994 m!2468353))

(assert (=> b!2028999 m!2468349))

(declare-fun m!2468355 () Bool)

(assert (=> b!2028999 m!2468355))

(assert (=> b!2028999 m!2468355))

(declare-fun m!2468357 () Bool)

(assert (=> b!2028999 m!2468357))

(assert (=> b!2028999 m!2468357))

(declare-fun m!2468359 () Bool)

(assert (=> b!2028999 m!2468359))

(assert (=> bm!124478 m!2467209))

(declare-fun m!2468361 () Bool)

(assert (=> bm!124478 m!2468361))

(declare-fun m!2468363 () Bool)

(assert (=> b!2029002 m!2468363))

(assert (=> b!2029001 m!2468349))

(declare-fun m!2468365 () Bool)

(assert (=> b!2029001 m!2468365))

(assert (=> b!2029001 m!2468365))

(declare-fun m!2468367 () Bool)

(assert (=> b!2029001 m!2468367))

(assert (=> b!2029000 m!2467209))

(declare-fun m!2468369 () Bool)

(assert (=> b!2029000 m!2468369))

(assert (=> b!2028996 m!2468349))

(declare-fun m!2468371 () Bool)

(assert (=> b!2028996 m!2468371))

(declare-fun m!2468373 () Bool)

(assert (=> d!620469 m!2468373))

(assert (=> d!620469 m!2467209))

(assert (=> d!620469 m!2467209))

(declare-fun m!2468375 () Bool)

(assert (=> d!620469 m!2468375))

(assert (=> d!620469 m!2467209))

(assert (=> d!620469 m!2467209))

(declare-fun m!2468377 () Bool)

(assert (=> d!620469 m!2468377))

(assert (=> d!620469 m!2467623))

(assert (=> b!2028998 m!2468349))

(assert (=> b!2028998 m!2468355))

(assert (=> b!2028998 m!2468355))

(assert (=> b!2028998 m!2468357))

(assert (=> b!2028998 m!2468357))

(declare-fun m!2468379 () Bool)

(assert (=> b!2028998 m!2468379))

(assert (=> b!2028995 m!2468349))

(assert (=> b!2028995 m!2468355))

(assert (=> b!2028995 m!2468355))

(assert (=> b!2028995 m!2468357))

(assert (=> b!2028158 d!620469))

(declare-fun bs!420802 () Bool)

(declare-fun b!2029003 () Bool)

(assert (= bs!420802 (and b!2029003 b!2028166)))

(declare-fun lambda!76499 () Int)

(assert (=> bs!420802 (not (= lambda!76499 lambda!76480))))

(declare-fun bs!420803 () Bool)

(assert (= bs!420803 (and b!2029003 b!2028567)))

(assert (=> bs!420803 (= lambda!76499 lambda!76489)))

(declare-fun bs!420804 () Bool)

(assert (= bs!420804 (and b!2029003 d!620447)))

(assert (=> bs!420804 (= lambda!76499 lambda!76498)))

(declare-fun b!2029013 () Bool)

(declare-fun e!1281649 () Bool)

(assert (=> b!2029013 (= e!1281649 true)))

(declare-fun b!2029012 () Bool)

(declare-fun e!1281648 () Bool)

(assert (=> b!2029012 (= e!1281648 e!1281649)))

(declare-fun b!2029011 () Bool)

(declare-fun e!1281647 () Bool)

(assert (=> b!2029011 (= e!1281647 e!1281648)))

(assert (=> b!2029003 e!1281647))

(assert (= b!2029012 b!2029013))

(assert (= b!2029011 b!2029012))

(assert (= (and b!2029003 (is-Cons!22208 rules!3198)) b!2029011))

(assert (=> b!2029013 (< (dynLambda!11037 order!14217 (toValue!5664 (transformation!3991 (h!27609 rules!3198)))) (dynLambda!11041 order!14223 lambda!76499))))

(assert (=> b!2029013 (< (dynLambda!11039 order!14221 (toChars!5523 (transformation!3991 (h!27609 rules!3198)))) (dynLambda!11041 order!14223 lambda!76499))))

(assert (=> b!2029003 true))

(declare-fun e!1281646 () List!22289)

(declare-fun e!1281645 () List!22289)

(assert (=> b!2029003 (= e!1281646 e!1281645)))

(declare-fun lt!762094 () Unit!36865)

(assert (=> b!2029003 (= lt!762094 (forallContained!747 tokens!598 lambda!76499 (h!27610 tokens!598)))))

(declare-fun lt!762092 () List!22289)

(assert (=> b!2029003 (= lt!762092 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 (t!190126 tokens!598) separatorToken!354))))

(declare-fun lt!762089 () Option!4665)

(assert (=> b!2029003 (= lt!762089 (maxPrefix!2040 thiss!23328 rules!3198 (++!6004 (list!9066 (charsOf!2531 (h!27610 tokens!598))) lt!762092)))))

(declare-fun c!328346 () Bool)

(assert (=> b!2029003 (= c!328346 (and (is-Some!4664 lt!762089) (= (_1!11913 (v!26989 lt!762089)) (h!27610 tokens!598))))))

(declare-fun b!2029004 () Bool)

(declare-fun e!1281643 () List!22289)

(assert (=> b!2029004 (= e!1281643 Nil!22207)))

(assert (=> b!2029004 (= (print!1566 thiss!23328 (singletonSeq!1967 (h!27610 tokens!598))) (printTailRec!1072 thiss!23328 (singletonSeq!1967 (h!27610 tokens!598)) 0 (BalanceConc!14673 Empty!7428)))))

(declare-fun lt!762093 () Unit!36865)

(declare-fun Unit!36876 () Unit!36865)

(assert (=> b!2029004 (= lt!762093 Unit!36876)))

(declare-fun lt!762091 () Unit!36865)

(declare-fun call!124487 () List!22289)

(assert (=> b!2029004 (= lt!762091 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!778 thiss!23328 rules!3198 call!124487 lt!762092))))

(assert (=> b!2029004 false))

(declare-fun lt!762090 () Unit!36865)

(declare-fun Unit!36877 () Unit!36865)

(assert (=> b!2029004 (= lt!762090 Unit!36877)))

(declare-fun d!620471 () Bool)

(declare-fun c!328348 () Bool)

(assert (=> d!620471 (= c!328348 (is-Cons!22209 tokens!598))))

(assert (=> d!620471 (= (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354) e!1281646)))

(declare-fun b!2029005 () Bool)

(declare-fun e!1281644 () List!22289)

(declare-fun call!124488 () List!22289)

(assert (=> b!2029005 (= e!1281644 call!124488)))

(declare-fun bm!124479 () Bool)

(declare-fun c!328347 () Bool)

(assert (=> bm!124479 (= c!328347 c!328346)))

(declare-fun call!124486 () List!22289)

(assert (=> bm!124479 (= call!124486 (++!6004 e!1281644 (ite c!328346 lt!762092 call!124487)))))

(declare-fun bm!124480 () Bool)

(declare-fun call!124484 () BalanceConc!14672)

(declare-fun call!124485 () BalanceConc!14672)

(assert (=> bm!124480 (= call!124484 call!124485)))

(declare-fun bm!124481 () Bool)

(assert (=> bm!124481 (= call!124487 call!124488)))

(declare-fun bm!124482 () Bool)

(declare-fun c!328349 () Bool)

(assert (=> bm!124482 (= call!124485 (charsOf!2531 (ite c!328346 (h!27610 tokens!598) (ite c!328349 separatorToken!354 (h!27610 tokens!598)))))))

(declare-fun bm!124483 () Bool)

(assert (=> bm!124483 (= call!124488 (list!9066 (ite c!328346 call!124485 call!124484)))))

(declare-fun b!2029006 () Bool)

(assert (=> b!2029006 (= e!1281643 (++!6004 call!124486 lt!762092))))

(declare-fun b!2029007 () Bool)

(assert (=> b!2029007 (= e!1281644 (list!9066 (charsOf!2531 (h!27610 tokens!598))))))

(declare-fun b!2029008 () Bool)

(assert (=> b!2029008 (= e!1281645 call!124486)))

(declare-fun b!2029009 () Bool)

(assert (=> b!2029009 (= c!328349 (and (is-Some!4664 lt!762089) (not (= (_1!11913 (v!26989 lt!762089)) (h!27610 tokens!598)))))))

(assert (=> b!2029009 (= e!1281645 e!1281643)))

(declare-fun b!2029010 () Bool)

(assert (=> b!2029010 (= e!1281646 Nil!22207)))

(assert (= (and d!620471 c!328348) b!2029003))

(assert (= (and d!620471 (not c!328348)) b!2029010))

(assert (= (and b!2029003 c!328346) b!2029008))

(assert (= (and b!2029003 (not c!328346)) b!2029009))

(assert (= (and b!2029009 c!328349) b!2029006))

(assert (= (and b!2029009 (not c!328349)) b!2029004))

(assert (= (or b!2029006 b!2029004) bm!124480))

(assert (= (or b!2029006 b!2029004) bm!124481))

(assert (= (or b!2029008 bm!124480) bm!124482))

(assert (= (or b!2029008 bm!124481) bm!124483))

(assert (= (or b!2029008 b!2029006) bm!124479))

(assert (= (and bm!124479 c!328347) b!2029005))

(assert (= (and bm!124479 (not c!328347)) b!2029007))

(declare-fun m!2468381 () Bool)

(assert (=> b!2029006 m!2468381))

(declare-fun m!2468383 () Bool)

(assert (=> bm!124482 m!2468383))

(assert (=> b!2029007 m!2467173))

(assert (=> b!2029007 m!2467173))

(assert (=> b!2029007 m!2467471))

(assert (=> b!2029004 m!2467289))

(assert (=> b!2029004 m!2467289))

(assert (=> b!2029004 m!2468249))

(assert (=> b!2029004 m!2467289))

(declare-fun m!2468385 () Bool)

(assert (=> b!2029004 m!2468385))

(declare-fun m!2468387 () Bool)

(assert (=> b!2029004 m!2468387))

(declare-fun m!2468389 () Bool)

(assert (=> b!2029003 m!2468389))

(declare-fun m!2468391 () Bool)

(assert (=> b!2029003 m!2468391))

(assert (=> b!2029003 m!2467471))

(assert (=> b!2029003 m!2468389))

(assert (=> b!2029003 m!2467169))

(assert (=> b!2029003 m!2467173))

(assert (=> b!2029003 m!2467471))

(assert (=> b!2029003 m!2467173))

(declare-fun m!2468393 () Bool)

(assert (=> b!2029003 m!2468393))

(declare-fun m!2468395 () Bool)

(assert (=> bm!124479 m!2468395))

(declare-fun m!2468397 () Bool)

(assert (=> bm!124483 m!2468397))

(assert (=> b!2028158 d!620471))

(declare-fun d!620473 () Bool)

(assert (=> d!620473 (= (get!7053 lt!761735) (v!26989 lt!761735))))

(assert (=> b!2028163 d!620473))

(declare-fun d!620475 () Bool)

(assert (=> d!620475 (= (head!4583 tokens!598) (h!27610 tokens!598))))

(assert (=> b!2028163 d!620475))

(declare-fun d!620477 () Bool)

(declare-fun lt!762095 () Bool)

(assert (=> d!620477 (= lt!762095 (set.member (rule!6220 (h!27610 tokens!598)) (content!3280 rules!3198)))))

(declare-fun e!1281650 () Bool)

(assert (=> d!620477 (= lt!762095 e!1281650)))

(declare-fun res!889828 () Bool)

(assert (=> d!620477 (=> (not res!889828) (not e!1281650))))

(assert (=> d!620477 (= res!889828 (is-Cons!22208 rules!3198))))

(assert (=> d!620477 (= (contains!4097 rules!3198 (rule!6220 (h!27610 tokens!598))) lt!762095)))

(declare-fun b!2029014 () Bool)

(declare-fun e!1281651 () Bool)

(assert (=> b!2029014 (= e!1281650 e!1281651)))

(declare-fun res!889829 () Bool)

(assert (=> b!2029014 (=> res!889829 e!1281651)))

(assert (=> b!2029014 (= res!889829 (= (h!27609 rules!3198) (rule!6220 (h!27610 tokens!598))))))

(declare-fun b!2029015 () Bool)

(assert (=> b!2029015 (= e!1281651 (contains!4097 (t!190125 rules!3198) (rule!6220 (h!27610 tokens!598))))))

(assert (= (and d!620477 res!889828) b!2029014))

(assert (= (and b!2029014 (not res!889829)) b!2029015))

(assert (=> d!620477 m!2467943))

(declare-fun m!2468399 () Bool)

(assert (=> d!620477 m!2468399))

(declare-fun m!2468401 () Bool)

(assert (=> b!2029015 m!2468401))

(assert (=> b!2028141 d!620477))

(declare-fun d!620479 () Bool)

(declare-fun e!1281657 () Bool)

(assert (=> d!620479 e!1281657))

(declare-fun c!328350 () Bool)

(assert (=> d!620479 (= c!328350 (is-EmptyExpr!5416 (regex!3991 lt!761721)))))

(declare-fun lt!762096 () Bool)

(declare-fun e!1281655 () Bool)

(assert (=> d!620479 (= lt!762096 e!1281655)))

(declare-fun c!328351 () Bool)

(assert (=> d!620479 (= c!328351 (isEmpty!13854 lt!761718))))

(assert (=> d!620479 (validRegex!2179 (regex!3991 lt!761721))))

(assert (=> d!620479 (= (matchR!2682 (regex!3991 lt!761721) lt!761718) lt!762096)))

(declare-fun b!2029016 () Bool)

(assert (=> b!2029016 (= e!1281655 (matchR!2682 (derivativeStep!1412 (regex!3991 lt!761721) (head!4584 lt!761718)) (tail!3060 lt!761718)))))

(declare-fun b!2029017 () Bool)

(declare-fun e!1281656 () Bool)

(assert (=> b!2029017 (= e!1281656 (not lt!762096))))

(declare-fun b!2029018 () Bool)

(declare-fun res!889835 () Bool)

(declare-fun e!1281654 () Bool)

(assert (=> b!2029018 (=> res!889835 e!1281654)))

(assert (=> b!2029018 (= res!889835 (not (isEmpty!13854 (tail!3060 lt!761718))))))

(declare-fun b!2029019 () Bool)

(assert (=> b!2029019 (= e!1281654 (not (= (head!4584 lt!761718) (c!328192 (regex!3991 lt!761721)))))))

(declare-fun b!2029020 () Bool)

(declare-fun e!1281658 () Bool)

(assert (=> b!2029020 (= e!1281658 e!1281654)))

(declare-fun res!889831 () Bool)

(assert (=> b!2029020 (=> res!889831 e!1281654)))

(declare-fun call!124489 () Bool)

(assert (=> b!2029020 (= res!889831 call!124489)))

(declare-fun b!2029021 () Bool)

(declare-fun res!889837 () Bool)

(declare-fun e!1281652 () Bool)

(assert (=> b!2029021 (=> (not res!889837) (not e!1281652))))

(assert (=> b!2029021 (= res!889837 (isEmpty!13854 (tail!3060 lt!761718)))))

(declare-fun b!2029022 () Bool)

(declare-fun res!889833 () Bool)

(declare-fun e!1281653 () Bool)

(assert (=> b!2029022 (=> res!889833 e!1281653)))

(assert (=> b!2029022 (= res!889833 e!1281652)))

(declare-fun res!889836 () Bool)

(assert (=> b!2029022 (=> (not res!889836) (not e!1281652))))

(assert (=> b!2029022 (= res!889836 lt!762096)))

(declare-fun b!2029023 () Bool)

(declare-fun res!889832 () Bool)

(assert (=> b!2029023 (=> (not res!889832) (not e!1281652))))

(assert (=> b!2029023 (= res!889832 (not call!124489))))

(declare-fun b!2029024 () Bool)

(assert (=> b!2029024 (= e!1281653 e!1281658)))

(declare-fun res!889830 () Bool)

(assert (=> b!2029024 (=> (not res!889830) (not e!1281658))))

(assert (=> b!2029024 (= res!889830 (not lt!762096))))

(declare-fun b!2029025 () Bool)

(assert (=> b!2029025 (= e!1281652 (= (head!4584 lt!761718) (c!328192 (regex!3991 lt!761721))))))

(declare-fun b!2029026 () Bool)

(assert (=> b!2029026 (= e!1281655 (nullable!1653 (regex!3991 lt!761721)))))

(declare-fun b!2029027 () Bool)

(assert (=> b!2029027 (= e!1281657 e!1281656)))

(declare-fun c!328352 () Bool)

(assert (=> b!2029027 (= c!328352 (is-EmptyLang!5416 (regex!3991 lt!761721)))))

(declare-fun bm!124484 () Bool)

(assert (=> bm!124484 (= call!124489 (isEmpty!13854 lt!761718))))

(declare-fun b!2029028 () Bool)

(declare-fun res!889834 () Bool)

(assert (=> b!2029028 (=> res!889834 e!1281653)))

(assert (=> b!2029028 (= res!889834 (not (is-ElementMatch!5416 (regex!3991 lt!761721))))))

(assert (=> b!2029028 (= e!1281656 e!1281653)))

(declare-fun b!2029029 () Bool)

(assert (=> b!2029029 (= e!1281657 (= lt!762096 call!124489))))

(assert (= (and d!620479 c!328351) b!2029026))

(assert (= (and d!620479 (not c!328351)) b!2029016))

(assert (= (and d!620479 c!328350) b!2029029))

(assert (= (and d!620479 (not c!328350)) b!2029027))

(assert (= (and b!2029027 c!328352) b!2029017))

(assert (= (and b!2029027 (not c!328352)) b!2029028))

(assert (= (and b!2029028 (not res!889834)) b!2029022))

(assert (= (and b!2029022 res!889836) b!2029023))

(assert (= (and b!2029023 res!889832) b!2029021))

(assert (= (and b!2029021 res!889837) b!2029025))

(assert (= (and b!2029022 (not res!889833)) b!2029024))

(assert (= (and b!2029024 res!889830) b!2029020))

(assert (= (and b!2029020 (not res!889831)) b!2029018))

(assert (= (and b!2029018 (not res!889835)) b!2029019))

(assert (= (or b!2029029 b!2029020 b!2029023) bm!124484))

(assert (=> b!2029021 m!2467899))

(assert (=> b!2029021 m!2467899))

(assert (=> b!2029021 m!2467901))

(declare-fun m!2468403 () Bool)

(assert (=> b!2029026 m!2468403))

(assert (=> b!2029019 m!2467905))

(assert (=> b!2029016 m!2467905))

(assert (=> b!2029016 m!2467905))

(declare-fun m!2468405 () Bool)

(assert (=> b!2029016 m!2468405))

(assert (=> b!2029016 m!2467899))

(assert (=> b!2029016 m!2468405))

(assert (=> b!2029016 m!2467899))

(declare-fun m!2468407 () Bool)

(assert (=> b!2029016 m!2468407))

(assert (=> b!2029025 m!2467905))

(assert (=> d!620479 m!2467911))

(declare-fun m!2468409 () Bool)

(assert (=> d!620479 m!2468409))

(assert (=> b!2029018 m!2467899))

(assert (=> b!2029018 m!2467899))

(assert (=> b!2029018 m!2467901))

(assert (=> bm!124484 m!2467911))

(assert (=> b!2028161 d!620479))

(declare-fun d!620481 () Bool)

(assert (=> d!620481 (= (get!7052 lt!761710) (v!26990 lt!761710))))

(assert (=> b!2028161 d!620481))

(declare-fun d!620483 () Bool)

(declare-fun res!889838 () Bool)

(declare-fun e!1281659 () Bool)

(assert (=> d!620483 (=> (not res!889838) (not e!1281659))))

(assert (=> d!620483 (= res!889838 (not (isEmpty!13854 (originalCharacters!4798 separatorToken!354))))))

(assert (=> d!620483 (= (inv!29390 separatorToken!354) e!1281659)))

(declare-fun b!2029030 () Bool)

(declare-fun res!889839 () Bool)

(assert (=> b!2029030 (=> (not res!889839) (not e!1281659))))

(assert (=> b!2029030 (= res!889839 (= (originalCharacters!4798 separatorToken!354) (list!9066 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (value!125336 separatorToken!354)))))))

(declare-fun b!2029031 () Bool)

(assert (=> b!2029031 (= e!1281659 (= (size!17347 separatorToken!354) (size!17349 (originalCharacters!4798 separatorToken!354))))))

(assert (= (and d!620483 res!889838) b!2029030))

(assert (= (and b!2029030 res!889839) b!2029031))

(declare-fun b_lambda!68267 () Bool)

(assert (=> (not b_lambda!68267) (not b!2029030)))

(assert (=> b!2029030 t!190168))

(declare-fun b_and!161475 () Bool)

(assert (= b_and!161469 (and (=> t!190168 result!153016) b_and!161475)))

(assert (=> b!2029030 t!190170))

(declare-fun b_and!161477 () Bool)

(assert (= b_and!161471 (and (=> t!190170 result!153018) b_and!161477)))

(assert (=> b!2029030 t!190172))

(declare-fun b_and!161479 () Bool)

(assert (= b_and!161473 (and (=> t!190172 result!153020) b_and!161479)))

(declare-fun m!2468411 () Bool)

(assert (=> d!620483 m!2468411))

(assert (=> b!2029030 m!2467873))

(assert (=> b!2029030 m!2467873))

(declare-fun m!2468413 () Bool)

(assert (=> b!2029030 m!2468413))

(declare-fun m!2468415 () Bool)

(assert (=> b!2029031 m!2468415))

(assert (=> start!199570 d!620483))

(declare-fun b!2029045 () Bool)

(declare-fun b_free!56605 () Bool)

(declare-fun b_next!57309 () Bool)

(assert (=> b!2029045 (= b_free!56605 (not b_next!57309))))

(declare-fun t!190184 () Bool)

(declare-fun tb!127883 () Bool)

(assert (=> (and b!2029045 (= (toValue!5664 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190184) tb!127883))

(declare-fun result!153030 () Bool)

(assert (= result!153030 result!152980))

(assert (=> d!620213 t!190184))

(declare-fun t!190186 () Bool)

(declare-fun tb!127885 () Bool)

(assert (=> (and b!2029045 (= (toValue!5664 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190186) tb!127885))

(declare-fun result!153032 () Bool)

(assert (= result!153032 result!152988))

(assert (=> d!620213 t!190186))

(assert (=> d!620293 t!190184))

(declare-fun b_and!161481 () Bool)

(declare-fun tp!603232 () Bool)

(assert (=> b!2029045 (= tp!603232 (and (=> t!190184 result!153030) (=> t!190186 result!153032) b_and!161481))))

(declare-fun b_free!56607 () Bool)

(declare-fun b_next!57311 () Bool)

(assert (=> b!2029045 (= b_free!56607 (not b_next!57311))))

(declare-fun t!190188 () Bool)

(declare-fun tb!127887 () Bool)

(assert (=> (and b!2029045 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190188) tb!127887))

(declare-fun result!153034 () Bool)

(assert (= result!153034 result!153010))

(assert (=> b!2028903 t!190188))

(declare-fun t!190190 () Bool)

(declare-fun tb!127889 () Bool)

(assert (=> (and b!2029045 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354)))) t!190190) tb!127889))

(declare-fun result!153036 () Bool)

(assert (= result!153036 result!153016))

(assert (=> d!620307 t!190190))

(assert (=> b!2029030 t!190190))

(declare-fun t!190192 () Bool)

(declare-fun tb!127891 () Bool)

(assert (=> (and b!2029045 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190192) tb!127891))

(declare-fun result!153038 () Bool)

(assert (= result!153038 result!153002))

(assert (=> d!620293 t!190192))

(assert (=> d!620299 t!190188))

(declare-fun tp!603233 () Bool)

(declare-fun b_and!161483 () Bool)

(assert (=> b!2029045 (= tp!603233 (and (=> t!190190 result!153036) (=> t!190188 result!153034) (=> t!190192 result!153038) b_and!161483))))

(declare-fun b!2029042 () Bool)

(declare-fun tp!603236 () Bool)

(declare-fun e!1281674 () Bool)

(declare-fun e!1281677 () Bool)

(assert (=> b!2029042 (= e!1281674 (and (inv!29390 (h!27610 (t!190126 tokens!598))) e!1281677 tp!603236))))

(assert (=> b!2028165 (= tp!603173 e!1281674)))

(declare-fun tp!603234 () Bool)

(declare-fun e!1281676 () Bool)

(declare-fun b!2029044 () Bool)

(declare-fun e!1281673 () Bool)

(assert (=> b!2029044 (= e!1281673 (and tp!603234 (inv!29386 (tag!4477 (rule!6220 (h!27610 (t!190126 tokens!598))))) (inv!29389 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) e!1281676))))

(assert (=> b!2029045 (= e!1281676 (and tp!603232 tp!603233))))

(declare-fun b!2029043 () Bool)

(declare-fun tp!603235 () Bool)

(assert (=> b!2029043 (= e!1281677 (and (inv!21 (value!125336 (h!27610 (t!190126 tokens!598)))) e!1281673 tp!603235))))

(assert (= b!2029044 b!2029045))

(assert (= b!2029043 b!2029044))

(assert (= b!2029042 b!2029043))

(assert (= (and b!2028165 (is-Cons!22209 (t!190126 tokens!598))) b!2029042))

(declare-fun m!2468417 () Bool)

(assert (=> b!2029042 m!2468417))

(declare-fun m!2468419 () Bool)

(assert (=> b!2029044 m!2468419))

(declare-fun m!2468421 () Bool)

(assert (=> b!2029044 m!2468421))

(declare-fun m!2468423 () Bool)

(assert (=> b!2029043 m!2468423))

(declare-fun b!2029058 () Bool)

(declare-fun e!1281680 () Bool)

(declare-fun tp!603248 () Bool)

(assert (=> b!2029058 (= e!1281680 tp!603248)))

(declare-fun b!2029056 () Bool)

(declare-fun tp_is_empty!9223 () Bool)

(assert (=> b!2029056 (= e!1281680 tp_is_empty!9223)))

(declare-fun b!2029059 () Bool)

(declare-fun tp!603250 () Bool)

(declare-fun tp!603251 () Bool)

(assert (=> b!2029059 (= e!1281680 (and tp!603250 tp!603251))))

(declare-fun b!2029057 () Bool)

(declare-fun tp!603249 () Bool)

(declare-fun tp!603247 () Bool)

(assert (=> b!2029057 (= e!1281680 (and tp!603249 tp!603247))))

(assert (=> b!2028174 (= tp!603172 e!1281680)))

(assert (= (and b!2028174 (is-ElementMatch!5416 (regex!3991 (rule!6220 separatorToken!354)))) b!2029056))

(assert (= (and b!2028174 (is-Concat!9544 (regex!3991 (rule!6220 separatorToken!354)))) b!2029057))

(assert (= (and b!2028174 (is-Star!5416 (regex!3991 (rule!6220 separatorToken!354)))) b!2029058))

(assert (= (and b!2028174 (is-Union!5416 (regex!3991 (rule!6220 separatorToken!354)))) b!2029059))

(declare-fun b!2029070 () Bool)

(declare-fun b_free!56609 () Bool)

(declare-fun b_next!57313 () Bool)

(assert (=> b!2029070 (= b_free!56609 (not b_next!57313))))

(declare-fun t!190194 () Bool)

(declare-fun tb!127893 () Bool)

(assert (=> (and b!2029070 (= (toValue!5664 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190194) tb!127893))

(declare-fun result!153044 () Bool)

(assert (= result!153044 result!152980))

(assert (=> d!620213 t!190194))

(declare-fun t!190196 () Bool)

(declare-fun tb!127895 () Bool)

(assert (=> (and b!2029070 (= (toValue!5664 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190196) tb!127895))

(declare-fun result!153046 () Bool)

(assert (= result!153046 result!152988))

(assert (=> d!620213 t!190196))

(assert (=> d!620293 t!190194))

(declare-fun b_and!161485 () Bool)

(declare-fun tp!603262 () Bool)

(assert (=> b!2029070 (= tp!603262 (and (=> t!190194 result!153044) (=> t!190196 result!153046) b_and!161485))))

(declare-fun b_free!56611 () Bool)

(declare-fun b_next!57315 () Bool)

(assert (=> b!2029070 (= b_free!56611 (not b_next!57315))))

(declare-fun tb!127897 () Bool)

(declare-fun t!190198 () Bool)

(assert (=> (and b!2029070 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190198) tb!127897))

(declare-fun result!153048 () Bool)

(assert (= result!153048 result!153010))

(assert (=> b!2028903 t!190198))

(declare-fun t!190200 () Bool)

(declare-fun tb!127899 () Bool)

(assert (=> (and b!2029070 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354)))) t!190200) tb!127899))

(declare-fun result!153050 () Bool)

(assert (= result!153050 result!153016))

(assert (=> d!620307 t!190200))

(assert (=> b!2029030 t!190200))

(declare-fun t!190202 () Bool)

(declare-fun tb!127901 () Bool)

(assert (=> (and b!2029070 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190202) tb!127901))

(declare-fun result!153052 () Bool)

(assert (= result!153052 result!153002))

(assert (=> d!620293 t!190202))

(assert (=> d!620299 t!190198))

(declare-fun tp!603261 () Bool)

(declare-fun b_and!161487 () Bool)

(assert (=> b!2029070 (= tp!603261 (and (=> t!190202 result!153052) (=> t!190198 result!153048) (=> t!190200 result!153050) b_and!161487))))

(declare-fun e!1281690 () Bool)

(assert (=> b!2029070 (= e!1281690 (and tp!603262 tp!603261))))

(declare-fun e!1281689 () Bool)

(declare-fun tp!603260 () Bool)

(declare-fun b!2029069 () Bool)

(assert (=> b!2029069 (= e!1281689 (and tp!603260 (inv!29386 (tag!4477 (h!27609 (t!190125 rules!3198)))) (inv!29389 (transformation!3991 (h!27609 (t!190125 rules!3198)))) e!1281690))))

(declare-fun b!2029068 () Bool)

(declare-fun e!1281691 () Bool)

(declare-fun tp!603263 () Bool)

(assert (=> b!2029068 (= e!1281691 (and e!1281689 tp!603263))))

(assert (=> b!2028179 (= tp!603169 e!1281691)))

(assert (= b!2029069 b!2029070))

(assert (= b!2029068 b!2029069))

(assert (= (and b!2028179 (is-Cons!22208 (t!190125 rules!3198))) b!2029068))

(declare-fun m!2468425 () Bool)

(assert (=> b!2029069 m!2468425))

(declare-fun m!2468427 () Bool)

(assert (=> b!2029069 m!2468427))

(declare-fun b!2029075 () Bool)

(declare-fun e!1281695 () Bool)

(declare-fun tp!603266 () Bool)

(assert (=> b!2029075 (= e!1281695 (and tp_is_empty!9223 tp!603266))))

(assert (=> b!2028157 (= tp!603171 e!1281695)))

(assert (= (and b!2028157 (is-Cons!22207 (originalCharacters!4798 (h!27610 tokens!598)))) b!2029075))

(declare-fun b!2029078 () Bool)

(declare-fun e!1281696 () Bool)

(declare-fun tp!603268 () Bool)

(assert (=> b!2029078 (= e!1281696 tp!603268)))

(declare-fun b!2029076 () Bool)

(assert (=> b!2029076 (= e!1281696 tp_is_empty!9223)))

(declare-fun b!2029079 () Bool)

(declare-fun tp!603270 () Bool)

(declare-fun tp!603271 () Bool)

(assert (=> b!2029079 (= e!1281696 (and tp!603270 tp!603271))))

(declare-fun b!2029077 () Bool)

(declare-fun tp!603269 () Bool)

(declare-fun tp!603267 () Bool)

(assert (=> b!2029077 (= e!1281696 (and tp!603269 tp!603267))))

(assert (=> b!2028167 (= tp!603161 e!1281696)))

(assert (= (and b!2028167 (is-ElementMatch!5416 (regex!3991 (h!27609 rules!3198)))) b!2029076))

(assert (= (and b!2028167 (is-Concat!9544 (regex!3991 (h!27609 rules!3198)))) b!2029077))

(assert (= (and b!2028167 (is-Star!5416 (regex!3991 (h!27609 rules!3198)))) b!2029078))

(assert (= (and b!2028167 (is-Union!5416 (regex!3991 (h!27609 rules!3198)))) b!2029079))

(declare-fun b!2029082 () Bool)

(declare-fun e!1281697 () Bool)

(declare-fun tp!603273 () Bool)

(assert (=> b!2029082 (= e!1281697 tp!603273)))

(declare-fun b!2029080 () Bool)

(assert (=> b!2029080 (= e!1281697 tp_is_empty!9223)))

(declare-fun b!2029083 () Bool)

(declare-fun tp!603275 () Bool)

(declare-fun tp!603276 () Bool)

(assert (=> b!2029083 (= e!1281697 (and tp!603275 tp!603276))))

(declare-fun b!2029081 () Bool)

(declare-fun tp!603274 () Bool)

(declare-fun tp!603272 () Bool)

(assert (=> b!2029081 (= e!1281697 (and tp!603274 tp!603272))))

(assert (=> b!2028145 (= tp!603165 e!1281697)))

(assert (= (and b!2028145 (is-ElementMatch!5416 (regex!3991 (rule!6220 (h!27610 tokens!598))))) b!2029080))

(assert (= (and b!2028145 (is-Concat!9544 (regex!3991 (rule!6220 (h!27610 tokens!598))))) b!2029081))

(assert (= (and b!2028145 (is-Star!5416 (regex!3991 (rule!6220 (h!27610 tokens!598))))) b!2029082))

(assert (= (and b!2028145 (is-Union!5416 (regex!3991 (rule!6220 (h!27610 tokens!598))))) b!2029083))

(declare-fun b!2029084 () Bool)

(declare-fun e!1281698 () Bool)

(declare-fun tp!603277 () Bool)

(assert (=> b!2029084 (= e!1281698 (and tp_is_empty!9223 tp!603277))))

(assert (=> b!2028148 (= tp!603170 e!1281698)))

(assert (= (and b!2028148 (is-Cons!22207 (originalCharacters!4798 separatorToken!354))) b!2029084))

(declare-fun b_lambda!68269 () Bool)

(assert (= b_lambda!68267 (or (and b!2029070 b_free!56611 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))))) (and b!2028164 b_free!56591 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))))) (and b!2029045 b_free!56607 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))))) (and b!2028173 b_free!56583 (= (toChars!5523 (transformation!3991 (h!27609 rules!3198))) (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))))) (and b!2028151 b_free!56587) b_lambda!68269)))

(declare-fun b_lambda!68271 () Bool)

(assert (= b_lambda!68255 (or (and b!2028151 b_free!56587 (= (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))))) (and b!2028173 b_free!56583 (= (toChars!5523 (transformation!3991 (h!27609 rules!3198))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))))) (and b!2029070 b_free!56611 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))))) (and b!2029045 b_free!56607 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))))) (and b!2028164 b_free!56591) b_lambda!68271)))

(declare-fun b_lambda!68273 () Bool)

(assert (= b_lambda!68247 (or (and b!2029045 b_free!56605 (= (toValue!5664 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))))) (and b!2029070 b_free!56609 (= (toValue!5664 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))))) (and b!2028151 b_free!56585 (= (toValue!5664 (transformation!3991 (rule!6220 separatorToken!354))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))))) (and b!2028164 b_free!56589) (and b!2028173 b_free!56581 (= (toValue!5664 (transformation!3991 (h!27609 rules!3198))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))))) b_lambda!68273)))

(declare-fun b_lambda!68275 () Bool)

(assert (= b_lambda!68251 (or (and b!2028151 b_free!56587 (= (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))))) (and b!2028173 b_free!56583 (= (toChars!5523 (transformation!3991 (h!27609 rules!3198))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))))) (and b!2029070 b_free!56611 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))))) (and b!2029045 b_free!56607 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))))) (and b!2028164 b_free!56591) b_lambda!68275)))

(declare-fun b_lambda!68277 () Bool)

(assert (= b_lambda!68253 (or (and b!2029045 b_free!56605 (= (toValue!5664 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))))) (and b!2029070 b_free!56609 (= (toValue!5664 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))))) (and b!2028151 b_free!56585 (= (toValue!5664 (transformation!3991 (rule!6220 separatorToken!354))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))))) (and b!2028164 b_free!56589) (and b!2028173 b_free!56581 (= (toValue!5664 (transformation!3991 (h!27609 rules!3198))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))))) b_lambda!68277)))

(declare-fun b_lambda!68279 () Bool)

(assert (= b_lambda!68257 (or (and b!2029070 b_free!56611 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))))) (and b!2028164 b_free!56591 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))))) (and b!2029045 b_free!56607 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))))) (and b!2028173 b_free!56583 (= (toChars!5523 (transformation!3991 (h!27609 rules!3198))) (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))))) (and b!2028151 b_free!56587) b_lambda!68279)))

(declare-fun b_lambda!68281 () Bool)

(assert (= b_lambda!68261 (or (and b!2028151 b_free!56587 (= (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))))) (and b!2028173 b_free!56583 (= (toChars!5523 (transformation!3991 (h!27609 rules!3198))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))))) (and b!2029070 b_free!56611 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))))) (and b!2029045 b_free!56607 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))))) (and b!2028164 b_free!56591) b_lambda!68281)))

(declare-fun b_lambda!68283 () Bool)

(assert (= b_lambda!68263 (or b!2028166 b_lambda!68283)))

(declare-fun bs!420805 () Bool)

(declare-fun d!620485 () Bool)

(assert (= bs!420805 (and d!620485 b!2028166)))

(assert (=> bs!420805 (= (dynLambda!11048 lambda!76480 (h!27610 tokens!598)) (not (isSeparator!3991 (rule!6220 (h!27610 tokens!598)))))))

(assert (=> b!2028950 d!620485))

(declare-fun b_lambda!68285 () Bool)

(assert (= b_lambda!68245 (or (and b!2029045 b_free!56605 (= (toValue!5664 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))))) (and b!2029070 b_free!56609 (= (toValue!5664 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))))) (and b!2028151 b_free!56585 (= (toValue!5664 (transformation!3991 (rule!6220 separatorToken!354))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))))) (and b!2028164 b_free!56589) (and b!2028173 b_free!56581 (= (toValue!5664 (transformation!3991 (h!27609 rules!3198))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))))) b_lambda!68285)))

(push 1)

(assert (not b!2028714))

(assert (not b!2028906))

(assert (not b!2028638))

(assert (not b_next!57293))

(assert tp_is_empty!9223)

(assert (not b!2028903))

(assert (not b!2028918))

(assert (not b!2028821))

(assert b_and!161477)

(assert b_and!161485)

(assert (not b!2029019))

(assert (not b!2028769))

(assert (not d!620407))

(assert (not b!2028480))

(assert (not b!2028583))

(assert (not b!2028616))

(assert (not d!620297))

(assert (not b!2028461))

(assert (not b!2029025))

(assert (not b!2028756))

(assert b_and!161445)

(assert (not b!2028778))

(assert (not b!2028597))

(assert (not d!620219))

(assert (not d!620379))

(assert (not d!620291))

(assert (not tb!127859))

(assert (not b!2028907))

(assert (not b!2028838))

(assert (not b!2028758))

(assert (not d!620303))

(assert b_and!161481)

(assert (not b!2028570))

(assert (not b!2028939))

(assert (not d!620317))

(assert b_and!161487)

(assert (not bm!124467))

(assert (not b!2028755))

(assert (not b!2028999))

(assert (not b!2028752))

(assert (not b!2028927))

(assert (not d!620247))

(assert (not d!620421))

(assert (not b!2028849))

(assert (not d!620211))

(assert (not d!620321))

(assert (not b!2028677))

(assert (not bm!124478))

(assert (not b!2028623))

(assert (not b!2028474))

(assert (not d!620469))

(assert (not b!2028991))

(assert (not tb!127841))

(assert (not b!2028478))

(assert (not bm!124464))

(assert (not tb!127871))

(assert (not b!2028754))

(assert (not d!620289))

(assert (not d!620477))

(assert (not b_next!57285))

(assert (not bm!124468))

(assert (not d!620333))

(assert (not b!2028454))

(assert (not b_next!57309))

(assert b_and!161447)

(assert (not b!2029083))

(assert (not b_next!57289))

(assert (not d!620381))

(assert (not d!620393))

(assert (not d!620325))

(assert (not b!2029006))

(assert (not b!2028457))

(assert (not b!2028921))

(assert (not b!2028923))

(assert (not b!2028707))

(assert (not b!2028705))

(assert (not b!2028636))

(assert (not bm!124484))

(assert (not b!2028475))

(assert (not b!2028951))

(assert (not b!2029059))

(assert (not b!2028481))

(assert (not d!620299))

(assert (not tb!127865))

(assert (not b!2028305))

(assert (not b!2028637))

(assert (not b!2029082))

(assert (not b!2028689))

(assert (not b!2029018))

(assert (not d!620307))

(assert (not bm!124472))

(assert (not b!2028842))

(assert (not d!620213))

(assert (not b!2029015))

(assert (not b!2028905))

(assert (not b!2028781))

(assert (not b_next!57291))

(assert (not b!2029031))

(assert (not b!2029057))

(assert (not d!620431))

(assert (not d!620295))

(assert (not b!2028459))

(assert (not b!2028833))

(assert (not b!2028998))

(assert (not b!2028619))

(assert (not bm!124466))

(assert (not b!2028701))

(assert (not d!620309))

(assert (not b!2028784))

(assert (not bm!124483))

(assert (not d!620243))

(assert (not bm!124450))

(assert (not d!620361))

(assert (not b!2028989))

(assert (not b!2029011))

(assert (not d!620225))

(assert (not b!2028763))

(assert (not bm!124471))

(assert (not b_lambda!68281))

(assert (not d!620467))

(assert (not b!2028614))

(assert (not b_lambda!68279))

(assert (not b_next!57313))

(assert (not d!620377))

(assert (not b!2028904))

(assert (not b!2029079))

(assert (not bm!124454))

(assert (not d!620313))

(assert (not b!2029016))

(assert (not b!2028772))

(assert (not b!2028482))

(assert (not bm!124430))

(assert (not d!620305))

(assert (not d!620387))

(assert (not d!620437))

(assert (not d!620311))

(assert (not b!2029069))

(assert (not b!2029058))

(assert (not bm!124482))

(assert (not tb!127847))

(assert (not b!2028571))

(assert (not b!2029084))

(assert (not d!620367))

(assert (not d!620385))

(assert (not bm!124451))

(assert (not b!2028476))

(assert (not b_lambda!68271))

(assert (not b!2028306))

(assert (not b!2028837))

(assert (not b!2028494))

(assert (not b!2028996))

(assert (not b!2029021))

(assert (not b!2028845))

(assert (not b!2029004))

(assert (not d!620483))

(assert (not b!2029000))

(assert (not b!2028850))

(assert (not b!2028757))

(assert (not b!2029042))

(assert (not b!2028816))

(assert (not b!2028990))

(assert (not b!2028848))

(assert (not b_next!57315))

(assert (not d!620423))

(assert (not b!2028835))

(assert (not b!2028620))

(assert (not b!2028377))

(assert (not b!2028629))

(assert (not b!2029030))

(assert (not b!2028708))

(assert (not b!2028820))

(assert (not b!2029075))

(assert (not b_next!57311))

(assert (not b!2028847))

(assert (not b!2028670))

(assert (not b!2028724))

(assert (not d!620363))

(assert (not d!620335))

(assert (not b!2028493))

(assert (not b!2028700))

(assert (not b!2028843))

(assert (not b!2028622))

(assert (not b!2028568))

(assert (not d!620357))

(assert (not b_lambda!68273))

(assert (not d!620315))

(assert (not b!2028376))

(assert (not b!2029002))

(assert (not b!2028920))

(assert (not b!2028479))

(assert (not b!2029007))

(assert (not b!2028672))

(assert (not b!2028685))

(assert (not d!620301))

(assert (not b_lambda!68275))

(assert (not d!620255))

(assert (not bm!124474))

(assert (not b!2029001))

(assert b_and!161479)

(assert (not b_next!57287))

(assert (not bm!124479))

(assert (not d!620293))

(assert (not b!2028994))

(assert (not d!620373))

(assert (not b!2028702))

(assert (not b!2028759))

(assert (not b_lambda!68283))

(assert (not b!2029081))

(assert (not b!2029068))

(assert (not b!2028844))

(assert (not b!2029026))

(assert (not b!2028851))

(assert (not d!620447))

(assert (not b!2028995))

(assert (not b!2028818))

(assert (not d!620371))

(assert (not b!2028771))

(assert (not d!620331))

(assert b_and!161483)

(assert (not b_next!57295))

(assert (not b!2028455))

(assert (not b_lambda!68285))

(assert (not b!2029003))

(assert (not d!620327))

(assert (not d!620349))

(assert (not b!2028715))

(assert (not b!2028669))

(assert (not d!620479))

(assert (not b_lambda!68269))

(assert (not b!2028768))

(assert (not bm!124455))

(assert (not b!2028783))

(assert (not b!2028676))

(assert (not b!2029043))

(assert (not b!2029077))

(assert (not b_lambda!68277))

(assert (not b!2028460))

(assert (not b!2029078))

(assert (not b!2028613))

(assert b_and!161475)

(assert (not b!2028667))

(assert (not bm!124447))

(assert (not bm!124470))

(assert (not d!620365))

(assert (not d!620355))

(assert (not b!2029044))

(assert (not bm!124431))

(assert (not b!2028940))

(assert (not b!2028567))

(assert (not d!620391))

(assert (not b!2028710))

(assert (not d!620345))

(assert b_and!161449)

(assert (not b!2028610))

(assert (not b!2028458))

(assert (not b!2028928))

(assert (not b!2028453))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!57293))

(assert b_and!161445)

(assert b_and!161481)

(assert b_and!161487)

(assert (not b_next!57289))

(assert (not b_next!57291))

(assert (not b_next!57313))

(assert (not b_next!57315))

(assert (not b_next!57311))

(assert b_and!161475)

(assert b_and!161449)

(assert b_and!161477)

(assert b_and!161485)

(assert (not b_next!57285))

(assert (not b_next!57309))

(assert b_and!161447)

(assert (not b_next!57287))

(assert b_and!161479)

(assert b_and!161483)

(assert (not b_next!57295))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!620531 () Bool)

(declare-fun lt!762165 () Bool)

(assert (=> d!620531 (= lt!762165 (set.member lt!761712 (content!3278 (t!190124 lt!761703))))))

(declare-fun e!1281815 () Bool)

(assert (=> d!620531 (= lt!762165 e!1281815)))

(declare-fun res!889886 () Bool)

(assert (=> d!620531 (=> (not res!889886) (not e!1281815))))

(assert (=> d!620531 (= res!889886 (is-Cons!22207 (t!190124 lt!761703)))))

(assert (=> d!620531 (= (contains!4098 (t!190124 lt!761703) lt!761712) lt!762165)))

(declare-fun b!2029269 () Bool)

(declare-fun e!1281816 () Bool)

(assert (=> b!2029269 (= e!1281815 e!1281816)))

(declare-fun res!889887 () Bool)

(assert (=> b!2029269 (=> res!889887 e!1281816)))

(assert (=> b!2029269 (= res!889887 (= (h!27608 (t!190124 lt!761703)) lt!761712))))

(declare-fun b!2029270 () Bool)

(assert (=> b!2029270 (= e!1281816 (contains!4098 (t!190124 (t!190124 lt!761703)) lt!761712))))

(assert (= (and d!620531 res!889886) b!2029269))

(assert (= (and b!2029269 (not res!889887)) b!2029270))

(declare-fun m!2468675 () Bool)

(assert (=> d!620531 m!2468675))

(declare-fun m!2468677 () Bool)

(assert (=> d!620531 m!2468677))

(declare-fun m!2468679 () Bool)

(assert (=> b!2029270 m!2468679))

(assert (=> b!2028763 d!620531))

(declare-fun d!620533 () Bool)

(declare-fun e!1281828 () Bool)

(assert (=> d!620533 e!1281828))

(declare-fun res!889907 () Bool)

(assert (=> d!620533 (=> res!889907 e!1281828)))

(declare-fun lt!762178 () Option!4665)

(assert (=> d!620533 (= res!889907 (isEmpty!13861 lt!762178))))

(declare-fun e!1281827 () Option!4665)

(assert (=> d!620533 (= lt!762178 e!1281827)))

(declare-fun c!328389 () Bool)

(declare-datatypes ((tuple2!20900 0))(
  ( (tuple2!20901 (_1!11919 List!22289) (_2!11919 List!22289)) )
))
(declare-fun lt!762179 () tuple2!20900)

(assert (=> d!620533 (= c!328389 (isEmpty!13854 (_1!11919 lt!762179)))))

(declare-fun findLongestMatch!481 (Regex!5416 List!22289) tuple2!20900)

(assert (=> d!620533 (= lt!762179 (findLongestMatch!481 (regex!3991 (h!27609 rules!3198)) lt!761719))))

(assert (=> d!620533 (ruleValid!1222 thiss!23328 (h!27609 rules!3198))))

(assert (=> d!620533 (= (maxPrefixOneRule!1266 thiss!23328 (h!27609 rules!3198) lt!761719) lt!762178)))

(declare-fun b!2029289 () Bool)

(declare-fun res!889908 () Bool)

(declare-fun e!1281826 () Bool)

(assert (=> b!2029289 (=> (not res!889908) (not e!1281826))))

(assert (=> b!2029289 (= res!889908 (< (size!17349 (_2!11913 (get!7053 lt!762178))) (size!17349 lt!761719)))))

(declare-fun b!2029290 () Bool)

(declare-fun e!1281825 () Bool)

(declare-fun findLongestMatchInner!554 (Regex!5416 List!22289 Int List!22289 List!22289 Int) tuple2!20900)

(assert (=> b!2029290 (= e!1281825 (matchR!2682 (regex!3991 (h!27609 rules!3198)) (_1!11919 (findLongestMatchInner!554 (regex!3991 (h!27609 rules!3198)) Nil!22207 (size!17349 Nil!22207) lt!761719 lt!761719 (size!17349 lt!761719)))))))

(declare-fun b!2029291 () Bool)

(assert (=> b!2029291 (= e!1281827 (Some!4664 (tuple2!20889 (Token!7535 (apply!5846 (transformation!3991 (h!27609 rules!3198)) (seqFromList!2845 (_1!11919 lt!762179))) (h!27609 rules!3198) (size!17353 (seqFromList!2845 (_1!11919 lt!762179))) (_1!11919 lt!762179)) (_2!11919 lt!762179))))))

(declare-fun lt!762177 () Unit!36865)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!538 (Regex!5416 List!22289) Unit!36865)

(assert (=> b!2029291 (= lt!762177 (longestMatchIsAcceptedByMatchOrIsEmpty!538 (regex!3991 (h!27609 rules!3198)) lt!761719))))

(declare-fun res!889906 () Bool)

(assert (=> b!2029291 (= res!889906 (isEmpty!13854 (_1!11919 (findLongestMatchInner!554 (regex!3991 (h!27609 rules!3198)) Nil!22207 (size!17349 Nil!22207) lt!761719 lt!761719 (size!17349 lt!761719)))))))

(assert (=> b!2029291 (=> res!889906 e!1281825)))

(assert (=> b!2029291 e!1281825))

(declare-fun lt!762180 () Unit!36865)

(assert (=> b!2029291 (= lt!762180 lt!762177)))

(declare-fun lt!762176 () Unit!36865)

(assert (=> b!2029291 (= lt!762176 (lemmaSemiInverse!948 (transformation!3991 (h!27609 rules!3198)) (seqFromList!2845 (_1!11919 lt!762179))))))

(declare-fun b!2029292 () Bool)

(declare-fun res!889904 () Bool)

(assert (=> b!2029292 (=> (not res!889904) (not e!1281826))))

(assert (=> b!2029292 (= res!889904 (= (++!6004 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762178)))) (_2!11913 (get!7053 lt!762178))) lt!761719))))

(declare-fun b!2029293 () Bool)

(assert (=> b!2029293 (= e!1281826 (= (size!17347 (_1!11913 (get!7053 lt!762178))) (size!17349 (originalCharacters!4798 (_1!11913 (get!7053 lt!762178))))))))

(declare-fun b!2029294 () Bool)

(assert (=> b!2029294 (= e!1281828 e!1281826)))

(declare-fun res!889902 () Bool)

(assert (=> b!2029294 (=> (not res!889902) (not e!1281826))))

(assert (=> b!2029294 (= res!889902 (matchR!2682 (regex!3991 (h!27609 rules!3198)) (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762178))))))))

(declare-fun b!2029295 () Bool)

(declare-fun res!889903 () Bool)

(assert (=> b!2029295 (=> (not res!889903) (not e!1281826))))

(assert (=> b!2029295 (= res!889903 (= (value!125336 (_1!11913 (get!7053 lt!762178))) (apply!5846 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762178)))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!762178)))))))))

(declare-fun b!2029296 () Bool)

(declare-fun res!889905 () Bool)

(assert (=> b!2029296 (=> (not res!889905) (not e!1281826))))

(assert (=> b!2029296 (= res!889905 (= (rule!6220 (_1!11913 (get!7053 lt!762178))) (h!27609 rules!3198)))))

(declare-fun b!2029297 () Bool)

(assert (=> b!2029297 (= e!1281827 None!4664)))

(assert (= (and d!620533 c!328389) b!2029297))

(assert (= (and d!620533 (not c!328389)) b!2029291))

(assert (= (and b!2029291 (not res!889906)) b!2029290))

(assert (= (and d!620533 (not res!889907)) b!2029294))

(assert (= (and b!2029294 res!889902) b!2029292))

(assert (= (and b!2029292 res!889904) b!2029289))

(assert (= (and b!2029289 res!889908) b!2029296))

(assert (= (and b!2029296 res!889905) b!2029295))

(assert (= (and b!2029295 res!889903) b!2029293))

(declare-fun m!2468681 () Bool)

(assert (=> b!2029291 m!2468681))

(assert (=> b!2029291 m!2468135))

(declare-fun m!2468683 () Bool)

(assert (=> b!2029291 m!2468683))

(assert (=> b!2029291 m!2468135))

(declare-fun m!2468685 () Bool)

(assert (=> b!2029291 m!2468685))

(assert (=> b!2029291 m!2468685))

(declare-fun m!2468687 () Bool)

(assert (=> b!2029291 m!2468687))

(declare-fun m!2468689 () Bool)

(assert (=> b!2029291 m!2468689))

(assert (=> b!2029291 m!2468681))

(assert (=> b!2029291 m!2468685))

(declare-fun m!2468691 () Bool)

(assert (=> b!2029291 m!2468691))

(assert (=> b!2029291 m!2468685))

(declare-fun m!2468693 () Bool)

(assert (=> b!2029291 m!2468693))

(declare-fun m!2468695 () Bool)

(assert (=> b!2029291 m!2468695))

(declare-fun m!2468697 () Bool)

(assert (=> b!2029293 m!2468697))

(declare-fun m!2468699 () Bool)

(assert (=> b!2029293 m!2468699))

(assert (=> b!2029290 m!2468681))

(assert (=> b!2029290 m!2468135))

(assert (=> b!2029290 m!2468681))

(assert (=> b!2029290 m!2468135))

(assert (=> b!2029290 m!2468683))

(declare-fun m!2468701 () Bool)

(assert (=> b!2029290 m!2468701))

(assert (=> b!2029289 m!2468697))

(declare-fun m!2468703 () Bool)

(assert (=> b!2029289 m!2468703))

(assert (=> b!2029289 m!2468135))

(declare-fun m!2468705 () Bool)

(assert (=> d!620533 m!2468705))

(declare-fun m!2468707 () Bool)

(assert (=> d!620533 m!2468707))

(declare-fun m!2468709 () Bool)

(assert (=> d!620533 m!2468709))

(declare-fun m!2468711 () Bool)

(assert (=> d!620533 m!2468711))

(assert (=> b!2029296 m!2468697))

(assert (=> b!2029294 m!2468697))

(declare-fun m!2468713 () Bool)

(assert (=> b!2029294 m!2468713))

(assert (=> b!2029294 m!2468713))

(declare-fun m!2468715 () Bool)

(assert (=> b!2029294 m!2468715))

(assert (=> b!2029294 m!2468715))

(declare-fun m!2468717 () Bool)

(assert (=> b!2029294 m!2468717))

(assert (=> b!2029292 m!2468697))

(assert (=> b!2029292 m!2468713))

(assert (=> b!2029292 m!2468713))

(assert (=> b!2029292 m!2468715))

(assert (=> b!2029292 m!2468715))

(declare-fun m!2468719 () Bool)

(assert (=> b!2029292 m!2468719))

(assert (=> b!2029295 m!2468697))

(declare-fun m!2468721 () Bool)

(assert (=> b!2029295 m!2468721))

(assert (=> b!2029295 m!2468721))

(declare-fun m!2468723 () Bool)

(assert (=> b!2029295 m!2468723))

(assert (=> bm!124472 d!620533))

(declare-fun bs!420817 () Bool)

(declare-fun d!620535 () Bool)

(assert (= bs!420817 (and d!620535 d!620213)))

(declare-fun lambda!76512 () Int)

(assert (=> bs!420817 (= (= (toValue!5664 (transformation!3991 (rule!6220 separatorToken!354))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) (= lambda!76512 lambda!76486))))

(assert (=> d!620535 true))

(assert (=> d!620535 (< (dynLambda!11037 order!14217 (toValue!5664 (transformation!3991 (rule!6220 separatorToken!354)))) (dynLambda!11038 order!14219 lambda!76512))))

(declare-fun Forall2!644 (Int) Bool)

(assert (=> d!620535 (= (equivClasses!1535 (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (toValue!5664 (transformation!3991 (rule!6220 separatorToken!354)))) (Forall2!644 lambda!76512))))

(declare-fun bs!420818 () Bool)

(assert (= bs!420818 d!620535))

(declare-fun m!2468725 () Bool)

(assert (=> bs!420818 m!2468725))

(assert (=> b!2028689 d!620535))

(declare-fun d!620537 () Bool)

(declare-fun c!328392 () Bool)

(assert (=> d!620537 (= c!328392 (is-Nil!22207 lt!761707))))

(declare-fun e!1281833 () (Set C!10978))

(assert (=> d!620537 (= (content!3278 lt!761707) e!1281833)))

(declare-fun b!2029306 () Bool)

(assert (=> b!2029306 (= e!1281833 (as set.empty (Set C!10978)))))

(declare-fun b!2029307 () Bool)

(assert (=> b!2029307 (= e!1281833 (set.union (set.insert (h!27608 lt!761707) (as set.empty (Set C!10978))) (content!3278 (t!190124 lt!761707))))))

(assert (= (and d!620537 c!328392) b!2029306))

(assert (= (and d!620537 (not c!328392)) b!2029307))

(declare-fun m!2468727 () Bool)

(assert (=> b!2029307 m!2468727))

(declare-fun m!2468729 () Bool)

(assert (=> b!2029307 m!2468729))

(assert (=> d!620381 d!620537))

(declare-fun b!2029320 () Bool)

(declare-fun res!889924 () Bool)

(declare-fun e!1281839 () Bool)

(assert (=> b!2029320 (=> (not res!889924) (not e!1281839))))

(assert (=> b!2029320 (= res!889924 (not (isEmpty!13865 (left!17671 (c!328193 lt!762040)))))))

(declare-fun d!620539 () Bool)

(declare-fun res!889923 () Bool)

(declare-fun e!1281838 () Bool)

(assert (=> d!620539 (=> res!889923 e!1281838)))

(assert (=> d!620539 (= res!889923 (not (is-Node!7429 (c!328193 lt!762040))))))

(assert (=> d!620539 (= (isBalanced!2315 (c!328193 lt!762040)) e!1281838)))

(declare-fun b!2029321 () Bool)

(declare-fun res!889927 () Bool)

(assert (=> b!2029321 (=> (not res!889927) (not e!1281839))))

(declare-fun height!1139 (Conc!7429) Int)

(assert (=> b!2029321 (= res!889927 (<= (- (height!1139 (left!17671 (c!328193 lt!762040))) (height!1139 (right!18001 (c!328193 lt!762040)))) 1))))

(declare-fun b!2029322 () Bool)

(assert (=> b!2029322 (= e!1281839 (not (isEmpty!13865 (right!18001 (c!328193 lt!762040)))))))

(declare-fun b!2029323 () Bool)

(declare-fun res!889925 () Bool)

(assert (=> b!2029323 (=> (not res!889925) (not e!1281839))))

(assert (=> b!2029323 (= res!889925 (isBalanced!2315 (right!18001 (c!328193 lt!762040))))))

(declare-fun b!2029324 () Bool)

(declare-fun res!889928 () Bool)

(assert (=> b!2029324 (=> (not res!889928) (not e!1281839))))

(assert (=> b!2029324 (= res!889928 (isBalanced!2315 (left!17671 (c!328193 lt!762040))))))

(declare-fun b!2029325 () Bool)

(assert (=> b!2029325 (= e!1281838 e!1281839)))

(declare-fun res!889926 () Bool)

(assert (=> b!2029325 (=> (not res!889926) (not e!1281839))))

(assert (=> b!2029325 (= res!889926 (<= (- 1) (- (height!1139 (left!17671 (c!328193 lt!762040))) (height!1139 (right!18001 (c!328193 lt!762040))))))))

(assert (= (and d!620539 (not res!889923)) b!2029325))

(assert (= (and b!2029325 res!889926) b!2029321))

(assert (= (and b!2029321 res!889927) b!2029324))

(assert (= (and b!2029324 res!889928) b!2029323))

(assert (= (and b!2029323 res!889925) b!2029320))

(assert (= (and b!2029320 res!889924) b!2029322))

(declare-fun m!2468731 () Bool)

(assert (=> b!2029325 m!2468731))

(declare-fun m!2468733 () Bool)

(assert (=> b!2029325 m!2468733))

(declare-fun m!2468735 () Bool)

(assert (=> b!2029323 m!2468735))

(declare-fun m!2468737 () Bool)

(assert (=> b!2029322 m!2468737))

(assert (=> b!2029321 m!2468731))

(assert (=> b!2029321 m!2468733))

(declare-fun m!2468739 () Bool)

(assert (=> b!2029324 m!2468739))

(declare-fun m!2468741 () Bool)

(assert (=> b!2029320 m!2468741))

(assert (=> b!2028833 d!620539))

(declare-fun d!620541 () Bool)

(assert (=> d!620541 (= (list!9066 lt!761968) (list!9068 (c!328191 lt!761968)))))

(declare-fun bs!420819 () Bool)

(assert (= bs!420819 d!620541))

(declare-fun m!2468743 () Bool)

(assert (=> bs!420819 m!2468743))

(assert (=> d!620299 d!620541))

(declare-fun b!2029326 () Bool)

(declare-fun e!1281841 () List!22289)

(declare-fun call!124516 () List!22289)

(assert (=> b!2029326 (= e!1281841 call!124516)))

(declare-fun c!328393 () Bool)

(declare-fun call!124514 () List!22289)

(declare-fun bm!124508 () Bool)

(declare-fun call!124513 () List!22289)

(declare-fun call!124515 () List!22289)

(assert (=> bm!124508 (= call!124515 (++!6004 (ite c!328393 call!124514 call!124513) (ite c!328393 call!124513 call!124514)))))

(declare-fun bm!124509 () Bool)

(assert (=> bm!124509 (= call!124513 call!124516)))

(declare-fun b!2029327 () Bool)

(declare-fun e!1281843 () List!22289)

(assert (=> b!2029327 (= e!1281843 call!124515)))

(declare-fun d!620543 () Bool)

(declare-fun c!328394 () Bool)

(assert (=> d!620543 (= c!328394 (or (is-EmptyExpr!5416 (ite c!328312 (regOne!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regTwo!11344 (regex!3991 (rule!6220 (h!27610 tokens!598)))))) (is-EmptyLang!5416 (ite c!328312 (regOne!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regTwo!11344 (regex!3991 (rule!6220 (h!27610 tokens!598))))))))))

(declare-fun e!1281842 () List!22289)

(assert (=> d!620543 (= (usedCharacters!429 (ite c!328312 (regOne!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regTwo!11344 (regex!3991 (rule!6220 (h!27610 tokens!598)))))) e!1281842)))

(declare-fun b!2029328 () Bool)

(declare-fun c!328395 () Bool)

(assert (=> b!2029328 (= c!328395 (is-Star!5416 (ite c!328312 (regOne!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regTwo!11344 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))))

(declare-fun e!1281840 () List!22289)

(assert (=> b!2029328 (= e!1281840 e!1281841)))

(declare-fun b!2029329 () Bool)

(assert (=> b!2029329 (= e!1281843 call!124515)))

(declare-fun bm!124510 () Bool)

(assert (=> bm!124510 (= call!124516 (usedCharacters!429 (ite c!328395 (reg!5745 (ite c!328312 (regOne!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regTwo!11344 (regex!3991 (rule!6220 (h!27610 tokens!598)))))) (ite c!328393 (regTwo!11345 (ite c!328312 (regOne!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regTwo!11344 (regex!3991 (rule!6220 (h!27610 tokens!598)))))) (regOne!11344 (ite c!328312 (regOne!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regTwo!11344 (regex!3991 (rule!6220 (h!27610 tokens!598))))))))))))

(declare-fun b!2029330 () Bool)

(assert (=> b!2029330 (= e!1281841 e!1281843)))

(assert (=> b!2029330 (= c!328393 (is-Union!5416 (ite c!328312 (regOne!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regTwo!11344 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))))

(declare-fun b!2029331 () Bool)

(assert (=> b!2029331 (= e!1281842 Nil!22207)))

(declare-fun b!2029332 () Bool)

(assert (=> b!2029332 (= e!1281842 e!1281840)))

(declare-fun c!328396 () Bool)

(assert (=> b!2029332 (= c!328396 (is-ElementMatch!5416 (ite c!328312 (regOne!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regTwo!11344 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))))

(declare-fun b!2029333 () Bool)

(assert (=> b!2029333 (= e!1281840 (Cons!22207 (c!328192 (ite c!328312 (regOne!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regTwo!11344 (regex!3991 (rule!6220 (h!27610 tokens!598)))))) Nil!22207))))

(declare-fun bm!124511 () Bool)

(assert (=> bm!124511 (= call!124514 (usedCharacters!429 (ite c!328393 (regOne!11345 (ite c!328312 (regOne!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regTwo!11344 (regex!3991 (rule!6220 (h!27610 tokens!598)))))) (regTwo!11344 (ite c!328312 (regOne!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regTwo!11344 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))))))

(assert (= (and d!620543 c!328394) b!2029331))

(assert (= (and d!620543 (not c!328394)) b!2029332))

(assert (= (and b!2029332 c!328396) b!2029333))

(assert (= (and b!2029332 (not c!328396)) b!2029328))

(assert (= (and b!2029328 c!328395) b!2029326))

(assert (= (and b!2029328 (not c!328395)) b!2029330))

(assert (= (and b!2029330 c!328393) b!2029327))

(assert (= (and b!2029330 (not c!328393)) b!2029329))

(assert (= (or b!2029327 b!2029329) bm!124511))

(assert (= (or b!2029327 b!2029329) bm!124509))

(assert (= (or b!2029327 b!2029329) bm!124508))

(assert (= (or b!2029326 bm!124509) bm!124510))

(declare-fun m!2468745 () Bool)

(assert (=> bm!124508 m!2468745))

(declare-fun m!2468747 () Bool)

(assert (=> bm!124510 m!2468747))

(declare-fun m!2468749 () Bool)

(assert (=> bm!124511 m!2468749))

(assert (=> bm!124467 d!620543))

(declare-fun d!620545 () Bool)

(assert (=> d!620545 (= (list!9066 (charsOf!2531 (h!27610 (t!190126 tokens!598)))) (list!9068 (c!328191 (charsOf!2531 (h!27610 (t!190126 tokens!598))))))))

(declare-fun bs!420820 () Bool)

(assert (= bs!420820 d!620545))

(declare-fun m!2468751 () Bool)

(assert (=> bs!420820 m!2468751))

(assert (=> b!2028571 d!620545))

(declare-fun d!620547 () Bool)

(declare-fun lt!762181 () BalanceConc!14672)

(assert (=> d!620547 (= (list!9066 lt!762181) (originalCharacters!4798 (h!27610 (t!190126 tokens!598))))))

(assert (=> d!620547 (= lt!762181 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (value!125336 (h!27610 (t!190126 tokens!598)))))))

(assert (=> d!620547 (= (charsOf!2531 (h!27610 (t!190126 tokens!598))) lt!762181)))

(declare-fun b_lambda!68317 () Bool)

(assert (=> (not b_lambda!68317) (not d!620547)))

(declare-fun tb!127941 () Bool)

(declare-fun t!190247 () Bool)

(assert (=> (and b!2028173 (= (toChars!5523 (transformation!3991 (h!27609 rules!3198))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598)))))) t!190247) tb!127941))

(declare-fun b!2029334 () Bool)

(declare-fun e!1281844 () Bool)

(declare-fun tp!603335 () Bool)

(assert (=> b!2029334 (= e!1281844 (and (inv!29393 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (value!125336 (h!27610 (t!190126 tokens!598)))))) tp!603335))))

(declare-fun result!153104 () Bool)

(assert (=> tb!127941 (= result!153104 (and (inv!29394 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (value!125336 (h!27610 (t!190126 tokens!598))))) e!1281844))))

(assert (= tb!127941 b!2029334))

(declare-fun m!2468753 () Bool)

(assert (=> b!2029334 m!2468753))

(declare-fun m!2468755 () Bool)

(assert (=> tb!127941 m!2468755))

(assert (=> d!620547 t!190247))

(declare-fun b_and!161533 () Bool)

(assert (= b_and!161475 (and (=> t!190247 result!153104) b_and!161533)))

(declare-fun tb!127943 () Bool)

(declare-fun t!190249 () Bool)

(assert (=> (and b!2028151 (= (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598)))))) t!190249) tb!127943))

(declare-fun result!153106 () Bool)

(assert (= result!153106 result!153104))

(assert (=> d!620547 t!190249))

(declare-fun b_and!161535 () Bool)

(assert (= b_and!161477 (and (=> t!190249 result!153106) b_and!161535)))

(declare-fun tb!127945 () Bool)

(declare-fun t!190251 () Bool)

(assert (=> (and b!2029070 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598)))))) t!190251) tb!127945))

(declare-fun result!153108 () Bool)

(assert (= result!153108 result!153104))

(assert (=> d!620547 t!190251))

(declare-fun b_and!161537 () Bool)

(assert (= b_and!161487 (and (=> t!190251 result!153108) b_and!161537)))

(declare-fun t!190253 () Bool)

(declare-fun tb!127947 () Bool)

(assert (=> (and b!2028164 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598)))))) t!190253) tb!127947))

(declare-fun result!153110 () Bool)

(assert (= result!153110 result!153104))

(assert (=> d!620547 t!190253))

(declare-fun b_and!161539 () Bool)

(assert (= b_and!161479 (and (=> t!190253 result!153110) b_and!161539)))

(declare-fun t!190255 () Bool)

(declare-fun tb!127949 () Bool)

(assert (=> (and b!2029045 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598)))))) t!190255) tb!127949))

(declare-fun result!153112 () Bool)

(assert (= result!153112 result!153104))

(assert (=> d!620547 t!190255))

(declare-fun b_and!161541 () Bool)

(assert (= b_and!161483 (and (=> t!190255 result!153112) b_and!161541)))

(declare-fun m!2468757 () Bool)

(assert (=> d!620547 m!2468757))

(declare-fun m!2468759 () Bool)

(assert (=> d!620547 m!2468759))

(assert (=> b!2028571 d!620547))

(declare-fun d!620549 () Bool)

(assert (=> d!620549 (= (isDefined!3953 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 (h!27610 tokens!598))))) (not (isEmpty!13862 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 (h!27610 tokens!598)))))))))

(declare-fun bs!420821 () Bool)

(assert (= bs!420821 d!620549))

(assert (=> bs!420821 m!2467175))

(declare-fun m!2468761 () Bool)

(assert (=> bs!420821 m!2468761))

(assert (=> d!620211 d!620549))

(assert (=> d!620211 d!620297))

(declare-fun d!620551 () Bool)

(declare-fun e!1281847 () Bool)

(assert (=> d!620551 e!1281847))

(declare-fun res!889933 () Bool)

(assert (=> d!620551 (=> (not res!889933) (not e!1281847))))

(assert (=> d!620551 (= res!889933 (isDefined!3953 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 (h!27610 tokens!598))))))))

(assert (=> d!620551 true))

(declare-fun _$52!1315 () Unit!36865)

(assert (=> d!620551 (= (choose!12363 thiss!23328 rules!3198 lt!761718 (h!27610 tokens!598)) _$52!1315)))

(declare-fun b!2029339 () Bool)

(declare-fun res!889934 () Bool)

(assert (=> b!2029339 (=> (not res!889934) (not e!1281847))))

(assert (=> b!2029339 (= res!889934 (matchR!2682 (regex!3991 (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 (h!27610 tokens!598)))))) (list!9066 (charsOf!2531 (h!27610 tokens!598)))))))

(declare-fun b!2029340 () Bool)

(assert (=> b!2029340 (= e!1281847 (= (rule!6220 (h!27610 tokens!598)) (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 (h!27610 tokens!598)))))))))

(assert (= (and d!620551 res!889933) b!2029339))

(assert (= (and b!2029339 res!889934) b!2029340))

(assert (=> d!620551 m!2467175))

(assert (=> d!620551 m!2467175))

(assert (=> d!620551 m!2467467))

(assert (=> b!2029339 m!2467175))

(assert (=> b!2029339 m!2467173))

(assert (=> b!2029339 m!2467471))

(assert (=> b!2029339 m!2467173))

(assert (=> b!2029339 m!2467175))

(assert (=> b!2029339 m!2467473))

(assert (=> b!2029339 m!2467471))

(assert (=> b!2029339 m!2467475))

(assert (=> b!2029340 m!2467175))

(assert (=> b!2029340 m!2467175))

(assert (=> b!2029340 m!2467473))

(assert (=> d!620211 d!620551))

(assert (=> d!620211 d!620387))

(declare-fun d!620553 () Bool)

(declare-fun lt!762182 () Bool)

(assert (=> d!620553 (= lt!762182 (set.member (get!7052 lt!761961) (content!3280 rules!3198)))))

(declare-fun e!1281848 () Bool)

(assert (=> d!620553 (= lt!762182 e!1281848)))

(declare-fun res!889935 () Bool)

(assert (=> d!620553 (=> (not res!889935) (not e!1281848))))

(assert (=> d!620553 (= res!889935 (is-Cons!22208 rules!3198))))

(assert (=> d!620553 (= (contains!4097 rules!3198 (get!7052 lt!761961)) lt!762182)))

(declare-fun b!2029341 () Bool)

(declare-fun e!1281849 () Bool)

(assert (=> b!2029341 (= e!1281848 e!1281849)))

(declare-fun res!889936 () Bool)

(assert (=> b!2029341 (=> res!889936 e!1281849)))

(assert (=> b!2029341 (= res!889936 (= (h!27609 rules!3198) (get!7052 lt!761961)))))

(declare-fun b!2029342 () Bool)

(assert (=> b!2029342 (= e!1281849 (contains!4097 (t!190125 rules!3198) (get!7052 lt!761961)))))

(assert (= (and d!620553 res!889935) b!2029341))

(assert (= (and b!2029341 (not res!889936)) b!2029342))

(assert (=> d!620553 m!2467943))

(assert (=> d!620553 m!2467839))

(declare-fun m!2468763 () Bool)

(assert (=> d!620553 m!2468763))

(assert (=> b!2029342 m!2467839))

(declare-fun m!2468765 () Bool)

(assert (=> b!2029342 m!2468765))

(assert (=> b!2028614 d!620553))

(declare-fun d!620555 () Bool)

(assert (=> d!620555 (= (get!7052 lt!761961) (v!26990 lt!761961))))

(assert (=> b!2028614 d!620555))

(declare-fun d!620557 () Bool)

(declare-fun lt!762183 () Bool)

(assert (=> d!620557 (= lt!762183 (set.member (rule!6220 (h!27610 tokens!598)) (content!3280 (t!190125 rules!3198))))))

(declare-fun e!1281850 () Bool)

(assert (=> d!620557 (= lt!762183 e!1281850)))

(declare-fun res!889937 () Bool)

(assert (=> d!620557 (=> (not res!889937) (not e!1281850))))

(assert (=> d!620557 (= res!889937 (is-Cons!22208 (t!190125 rules!3198)))))

(assert (=> d!620557 (= (contains!4097 (t!190125 rules!3198) (rule!6220 (h!27610 tokens!598))) lt!762183)))

(declare-fun b!2029343 () Bool)

(declare-fun e!1281851 () Bool)

(assert (=> b!2029343 (= e!1281850 e!1281851)))

(declare-fun res!889938 () Bool)

(assert (=> b!2029343 (=> res!889938 e!1281851)))

(assert (=> b!2029343 (= res!889938 (= (h!27609 (t!190125 rules!3198)) (rule!6220 (h!27610 tokens!598))))))

(declare-fun b!2029344 () Bool)

(assert (=> b!2029344 (= e!1281851 (contains!4097 (t!190125 (t!190125 rules!3198)) (rule!6220 (h!27610 tokens!598))))))

(assert (= (and d!620557 res!889937) b!2029343))

(assert (= (and b!2029343 (not res!889938)) b!2029344))

(declare-fun m!2468767 () Bool)

(assert (=> d!620557 m!2468767))

(declare-fun m!2468769 () Bool)

(assert (=> d!620557 m!2468769))

(declare-fun m!2468771 () Bool)

(assert (=> b!2029344 m!2468771))

(assert (=> b!2029015 d!620557))

(declare-fun d!620559 () Bool)

(declare-fun lt!762186 () Int)

(assert (=> d!620559 (= lt!762186 (size!17349 (list!9066 (_2!11914 lt!761999))))))

(declare-fun size!17355 (Conc!7428) Int)

(assert (=> d!620559 (= lt!762186 (size!17355 (c!328191 (_2!11914 lt!761999))))))

(assert (=> d!620559 (= (size!17353 (_2!11914 lt!761999)) lt!762186)))

(declare-fun bs!420822 () Bool)

(assert (= bs!420822 d!620559))

(assert (=> bs!420822 m!2467971))

(assert (=> bs!420822 m!2467971))

(declare-fun m!2468773 () Bool)

(assert (=> bs!420822 m!2468773))

(declare-fun m!2468775 () Bool)

(assert (=> bs!420822 m!2468775))

(assert (=> b!2028755 d!620559))

(declare-fun d!620561 () Bool)

(declare-fun lt!762187 () Int)

(assert (=> d!620561 (= lt!762187 (size!17349 (list!9066 (seqFromList!2845 lt!761718))))))

(assert (=> d!620561 (= lt!762187 (size!17355 (c!328191 (seqFromList!2845 lt!761718))))))

(assert (=> d!620561 (= (size!17353 (seqFromList!2845 lt!761718)) lt!762187)))

(declare-fun bs!420823 () Bool)

(assert (= bs!420823 d!620561))

(assert (=> bs!420823 m!2467201))

(assert (=> bs!420823 m!2467973))

(assert (=> bs!420823 m!2467973))

(declare-fun m!2468777 () Bool)

(assert (=> bs!420823 m!2468777))

(declare-fun m!2468779 () Bool)

(assert (=> bs!420823 m!2468779))

(assert (=> b!2028755 d!620561))

(declare-fun d!620563 () Bool)

(declare-fun lt!762188 () BalanceConc!14672)

(assert (=> d!620563 (= (list!9066 lt!762188) (printList!1123 thiss!23328 (list!9070 (singletonSeq!1967 (h!27610 (t!190126 tokens!598))))))))

(assert (=> d!620563 (= lt!762188 (printTailRec!1072 thiss!23328 (singletonSeq!1967 (h!27610 (t!190126 tokens!598))) 0 (BalanceConc!14673 Empty!7428)))))

(assert (=> d!620563 (= (print!1566 thiss!23328 (singletonSeq!1967 (h!27610 (t!190126 tokens!598)))) lt!762188)))

(declare-fun bs!420824 () Bool)

(assert (= bs!420824 d!620563))

(declare-fun m!2468781 () Bool)

(assert (=> bs!420824 m!2468781))

(assert (=> bs!420824 m!2467799))

(declare-fun m!2468783 () Bool)

(assert (=> bs!420824 m!2468783))

(assert (=> bs!420824 m!2468783))

(declare-fun m!2468785 () Bool)

(assert (=> bs!420824 m!2468785))

(assert (=> bs!420824 m!2467799))

(assert (=> bs!420824 m!2467803))

(assert (=> b!2028568 d!620563))

(declare-fun d!620565 () Bool)

(declare-fun e!1281852 () Bool)

(assert (=> d!620565 e!1281852))

(declare-fun res!889939 () Bool)

(assert (=> d!620565 (=> (not res!889939) (not e!1281852))))

(declare-fun lt!762189 () BalanceConc!14674)

(assert (=> d!620565 (= res!889939 (= (list!9070 lt!762189) (Cons!22209 (h!27610 (t!190126 tokens!598)) Nil!22209)))))

(assert (=> d!620565 (= lt!762189 (singleton!884 (h!27610 (t!190126 tokens!598))))))

(assert (=> d!620565 (= (singletonSeq!1967 (h!27610 (t!190126 tokens!598))) lt!762189)))

(declare-fun b!2029345 () Bool)

(assert (=> b!2029345 (= e!1281852 (isBalanced!2315 (c!328193 lt!762189)))))

(assert (= (and d!620565 res!889939) b!2029345))

(declare-fun m!2468787 () Bool)

(assert (=> d!620565 m!2468787))

(declare-fun m!2468789 () Bool)

(assert (=> d!620565 m!2468789))

(declare-fun m!2468791 () Bool)

(assert (=> b!2029345 m!2468791))

(assert (=> b!2028568 d!620565))

(declare-fun d!620567 () Bool)

(declare-fun lt!762196 () BalanceConc!14672)

(assert (=> d!620567 (= (list!9066 lt!762196) (printListTailRec!489 thiss!23328 (dropList!820 (singletonSeq!1967 (h!27610 (t!190126 tokens!598))) 0) (list!9066 (BalanceConc!14673 Empty!7428))))))

(declare-fun e!1281853 () BalanceConc!14672)

(assert (=> d!620567 (= lt!762196 e!1281853)))

(declare-fun c!328397 () Bool)

(assert (=> d!620567 (= c!328397 (>= 0 (size!17351 (singletonSeq!1967 (h!27610 (t!190126 tokens!598))))))))

(declare-fun e!1281854 () Bool)

(assert (=> d!620567 e!1281854))

(declare-fun res!889940 () Bool)

(assert (=> d!620567 (=> (not res!889940) (not e!1281854))))

(assert (=> d!620567 (= res!889940 (>= 0 0))))

(assert (=> d!620567 (= (printTailRec!1072 thiss!23328 (singletonSeq!1967 (h!27610 (t!190126 tokens!598))) 0 (BalanceConc!14673 Empty!7428)) lt!762196)))

(declare-fun b!2029346 () Bool)

(assert (=> b!2029346 (= e!1281854 (<= 0 (size!17351 (singletonSeq!1967 (h!27610 (t!190126 tokens!598))))))))

(declare-fun b!2029347 () Bool)

(assert (=> b!2029347 (= e!1281853 (BalanceConc!14673 Empty!7428))))

(declare-fun b!2029348 () Bool)

(assert (=> b!2029348 (= e!1281853 (printTailRec!1072 thiss!23328 (singletonSeq!1967 (h!27610 (t!190126 tokens!598))) (+ 0 1) (++!6007 (BalanceConc!14673 Empty!7428) (charsOf!2531 (apply!5848 (singletonSeq!1967 (h!27610 (t!190126 tokens!598))) 0)))))))

(declare-fun lt!762191 () List!22291)

(assert (=> b!2029348 (= lt!762191 (list!9070 (singletonSeq!1967 (h!27610 (t!190126 tokens!598)))))))

(declare-fun lt!762190 () Unit!36865)

(assert (=> b!2029348 (= lt!762190 (lemmaDropApply!744 lt!762191 0))))

(assert (=> b!2029348 (= (head!4583 (drop!1121 lt!762191 0)) (apply!5850 lt!762191 0))))

(declare-fun lt!762194 () Unit!36865)

(assert (=> b!2029348 (= lt!762194 lt!762190)))

(declare-fun lt!762193 () List!22291)

(assert (=> b!2029348 (= lt!762193 (list!9070 (singletonSeq!1967 (h!27610 (t!190126 tokens!598)))))))

(declare-fun lt!762192 () Unit!36865)

(assert (=> b!2029348 (= lt!762192 (lemmaDropTail!720 lt!762193 0))))

(assert (=> b!2029348 (= (tail!3062 (drop!1121 lt!762193 0)) (drop!1121 lt!762193 (+ 0 1)))))

(declare-fun lt!762195 () Unit!36865)

(assert (=> b!2029348 (= lt!762195 lt!762192)))

(assert (= (and d!620567 res!889940) b!2029346))

(assert (= (and d!620567 c!328397) b!2029347))

(assert (= (and d!620567 (not c!328397)) b!2029348))

(assert (=> d!620567 m!2467799))

(declare-fun m!2468793 () Bool)

(assert (=> d!620567 m!2468793))

(assert (=> d!620567 m!2467799))

(declare-fun m!2468795 () Bool)

(assert (=> d!620567 m!2468795))

(assert (=> d!620567 m!2468063))

(assert (=> d!620567 m!2468793))

(assert (=> d!620567 m!2468063))

(declare-fun m!2468797 () Bool)

(assert (=> d!620567 m!2468797))

(declare-fun m!2468799 () Bool)

(assert (=> d!620567 m!2468799))

(assert (=> b!2029346 m!2467799))

(assert (=> b!2029346 m!2468795))

(declare-fun m!2468801 () Bool)

(assert (=> b!2029348 m!2468801))

(declare-fun m!2468803 () Bool)

(assert (=> b!2029348 m!2468803))

(assert (=> b!2029348 m!2468803))

(declare-fun m!2468805 () Bool)

(assert (=> b!2029348 m!2468805))

(declare-fun m!2468807 () Bool)

(assert (=> b!2029348 m!2468807))

(declare-fun m!2468809 () Bool)

(assert (=> b!2029348 m!2468809))

(declare-fun m!2468811 () Bool)

(assert (=> b!2029348 m!2468811))

(declare-fun m!2468813 () Bool)

(assert (=> b!2029348 m!2468813))

(assert (=> b!2029348 m!2467799))

(assert (=> b!2029348 m!2468801))

(declare-fun m!2468815 () Bool)

(assert (=> b!2029348 m!2468815))

(declare-fun m!2468817 () Bool)

(assert (=> b!2029348 m!2468817))

(assert (=> b!2029348 m!2467799))

(assert (=> b!2029348 m!2468805))

(declare-fun m!2468819 () Bool)

(assert (=> b!2029348 m!2468819))

(declare-fun m!2468821 () Bool)

(assert (=> b!2029348 m!2468821))

(assert (=> b!2029348 m!2468821))

(declare-fun m!2468823 () Bool)

(assert (=> b!2029348 m!2468823))

(assert (=> b!2029348 m!2468811))

(assert (=> b!2029348 m!2467799))

(assert (=> b!2029348 m!2468783))

(assert (=> b!2028568 d!620567))

(declare-fun b!2029357 () Bool)

(declare-fun res!889945 () Bool)

(declare-fun e!1281859 () Bool)

(assert (=> b!2029357 (=> (not res!889945) (not e!1281859))))

(declare-fun lt!762243 () Token!7534)

(assert (=> b!2029357 (= res!889945 (matchR!2682 (regex!3991 (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 lt!762243))))) (list!9066 (charsOf!2531 lt!762243))))))

(declare-fun b!2029360 () Bool)

(declare-fun e!1281860 () Unit!36865)

(declare-fun Unit!36882 () Unit!36865)

(assert (=> b!2029360 (= e!1281860 Unit!36882)))

(declare-fun d!620569 () Bool)

(assert (=> d!620569 (isDefined!3954 (maxPrefix!2040 thiss!23328 rules!3198 (++!6004 call!124455 lt!761948)))))

(declare-fun lt!762238 () Unit!36865)

(assert (=> d!620569 (= lt!762238 e!1281860)))

(declare-fun c!328400 () Bool)

(assert (=> d!620569 (= c!328400 (isEmpty!13861 (maxPrefix!2040 thiss!23328 rules!3198 (++!6004 call!124455 lt!761948))))))

(declare-fun lt!762247 () Unit!36865)

(declare-fun lt!762233 () Unit!36865)

(assert (=> d!620569 (= lt!762247 lt!762233)))

(assert (=> d!620569 e!1281859))

(declare-fun res!889946 () Bool)

(assert (=> d!620569 (=> (not res!889946) (not e!1281859))))

(assert (=> d!620569 (= res!889946 (isDefined!3953 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 lt!762243)))))))

(assert (=> d!620569 (= lt!762233 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!806 thiss!23328 rules!3198 call!124455 lt!762243))))

(declare-fun lt!762244 () Unit!36865)

(declare-fun lt!762234 () Unit!36865)

(assert (=> d!620569 (= lt!762244 lt!762234)))

(declare-fun lt!762241 () List!22289)

(assert (=> d!620569 (isPrefix!1984 lt!762241 (++!6004 call!124455 lt!761948))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!378 (List!22289 List!22289 List!22289) Unit!36865)

(assert (=> d!620569 (= lt!762234 (lemmaPrefixStaysPrefixWhenAddingToSuffix!378 lt!762241 call!124455 lt!761948))))

(assert (=> d!620569 (= lt!762241 (list!9066 (charsOf!2531 lt!762243)))))

(declare-fun lt!762240 () Unit!36865)

(declare-fun lt!762245 () Unit!36865)

(assert (=> d!620569 (= lt!762240 lt!762245)))

(declare-fun lt!762239 () List!22289)

(declare-fun lt!762231 () List!22289)

(assert (=> d!620569 (isPrefix!1984 lt!762239 (++!6004 lt!762239 lt!762231))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1345 (List!22289 List!22289) Unit!36865)

(assert (=> d!620569 (= lt!762245 (lemmaConcatTwoListThenFirstIsPrefix!1345 lt!762239 lt!762231))))

(assert (=> d!620569 (= lt!762231 (_2!11913 (get!7053 (maxPrefix!2040 thiss!23328 rules!3198 call!124455))))))

(assert (=> d!620569 (= lt!762239 (list!9066 (charsOf!2531 lt!762243)))))

(assert (=> d!620569 (= lt!762243 (head!4583 (list!9070 (_1!11914 (lex!1620 thiss!23328 rules!3198 (seqFromList!2845 call!124455))))))))

(assert (=> d!620569 (not (isEmpty!13856 rules!3198))))

(assert (=> d!620569 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!778 thiss!23328 rules!3198 call!124455 lt!761948) lt!762238)))

(declare-fun b!2029358 () Bool)

(assert (=> b!2029358 (= e!1281859 (= (rule!6220 lt!762243) (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 lt!762243))))))))

(declare-fun b!2029359 () Bool)

(declare-fun Unit!36883 () Unit!36865)

(assert (=> b!2029359 (= e!1281860 Unit!36883)))

(declare-fun lt!762242 () List!22289)

(assert (=> b!2029359 (= lt!762242 (++!6004 call!124455 lt!761948))))

(declare-fun lt!762236 () Unit!36865)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!386 (LexerInterface!3604 Rule!7782 List!22290 List!22289) Unit!36865)

(assert (=> b!2029359 (= lt!762236 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!386 thiss!23328 (rule!6220 lt!762243) rules!3198 lt!762242))))

(assert (=> b!2029359 (isEmpty!13861 (maxPrefixOneRule!1266 thiss!23328 (rule!6220 lt!762243) lt!762242))))

(declare-fun lt!762246 () Unit!36865)

(assert (=> b!2029359 (= lt!762246 lt!762236)))

(declare-fun lt!762235 () List!22289)

(assert (=> b!2029359 (= lt!762235 (list!9066 (charsOf!2531 lt!762243)))))

(declare-fun lt!762232 () Unit!36865)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!382 (LexerInterface!3604 Rule!7782 List!22289 List!22289) Unit!36865)

(assert (=> b!2029359 (= lt!762232 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!382 thiss!23328 (rule!6220 lt!762243) lt!762235 (++!6004 call!124455 lt!761948)))))

(assert (=> b!2029359 (not (matchR!2682 (regex!3991 (rule!6220 lt!762243)) lt!762235))))

(declare-fun lt!762237 () Unit!36865)

(assert (=> b!2029359 (= lt!762237 lt!762232)))

(assert (=> b!2029359 false))

(assert (= (and d!620569 res!889946) b!2029357))

(assert (= (and b!2029357 res!889945) b!2029358))

(assert (= (and d!620569 c!328400) b!2029359))

(assert (= (and d!620569 (not c!328400)) b!2029360))

(declare-fun m!2468825 () Bool)

(assert (=> b!2029357 m!2468825))

(declare-fun m!2468827 () Bool)

(assert (=> b!2029357 m!2468827))

(declare-fun m!2468829 () Bool)

(assert (=> b!2029357 m!2468829))

(assert (=> b!2029357 m!2468829))

(declare-fun m!2468831 () Bool)

(assert (=> b!2029357 m!2468831))

(assert (=> b!2029357 m!2468825))

(declare-fun m!2468833 () Bool)

(assert (=> b!2029357 m!2468833))

(assert (=> b!2029357 m!2468827))

(declare-fun m!2468835 () Bool)

(assert (=> d!620569 m!2468835))

(assert (=> d!620569 m!2468827))

(declare-fun m!2468837 () Bool)

(assert (=> d!620569 m!2468837))

(assert (=> d!620569 m!2467235))

(declare-fun m!2468839 () Bool)

(assert (=> d!620569 m!2468839))

(declare-fun m!2468841 () Bool)

(assert (=> d!620569 m!2468841))

(declare-fun m!2468843 () Bool)

(assert (=> d!620569 m!2468843))

(assert (=> d!620569 m!2468827))

(assert (=> d!620569 m!2468829))

(declare-fun m!2468845 () Bool)

(assert (=> d!620569 m!2468845))

(assert (=> d!620569 m!2468843))

(declare-fun m!2468847 () Bool)

(assert (=> d!620569 m!2468847))

(declare-fun m!2468849 () Bool)

(assert (=> d!620569 m!2468849))

(declare-fun m!2468851 () Bool)

(assert (=> d!620569 m!2468851))

(declare-fun m!2468853 () Bool)

(assert (=> d!620569 m!2468853))

(declare-fun m!2468855 () Bool)

(assert (=> d!620569 m!2468855))

(declare-fun m!2468857 () Bool)

(assert (=> d!620569 m!2468857))

(assert (=> d!620569 m!2468825))

(declare-fun m!2468859 () Bool)

(assert (=> d!620569 m!2468859))

(assert (=> d!620569 m!2468853))

(declare-fun m!2468861 () Bool)

(assert (=> d!620569 m!2468861))

(assert (=> d!620569 m!2468849))

(declare-fun m!2468863 () Bool)

(assert (=> d!620569 m!2468863))

(declare-fun m!2468865 () Bool)

(assert (=> d!620569 m!2468865))

(assert (=> d!620569 m!2468825))

(assert (=> d!620569 m!2468845))

(declare-fun m!2468867 () Bool)

(assert (=> d!620569 m!2468867))

(assert (=> d!620569 m!2468839))

(assert (=> d!620569 m!2468855))

(assert (=> d!620569 m!2468843))

(assert (=> d!620569 m!2468849))

(assert (=> b!2029358 m!2468825))

(assert (=> b!2029358 m!2468825))

(assert (=> b!2029358 m!2468833))

(declare-fun m!2468869 () Bool)

(assert (=> b!2029359 m!2468869))

(assert (=> b!2029359 m!2468827))

(assert (=> b!2029359 m!2468843))

(declare-fun m!2468871 () Bool)

(assert (=> b!2029359 m!2468871))

(assert (=> b!2029359 m!2468843))

(assert (=> b!2029359 m!2468827))

(assert (=> b!2029359 m!2468829))

(declare-fun m!2468873 () Bool)

(assert (=> b!2029359 m!2468873))

(declare-fun m!2468875 () Bool)

(assert (=> b!2029359 m!2468875))

(declare-fun m!2468877 () Bool)

(assert (=> b!2029359 m!2468877))

(assert (=> b!2029359 m!2468875))

(assert (=> b!2028568 d!620569))

(declare-fun d!620571 () Bool)

(declare-fun nullableFct!381 (Regex!5416) Bool)

(assert (=> d!620571 (= (nullable!1653 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (nullableFct!381 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))

(declare-fun bs!420825 () Bool)

(assert (= bs!420825 d!620571))

(declare-fun m!2468879 () Bool)

(assert (=> bs!420825 m!2468879))

(assert (=> b!2028685 d!620571))

(declare-fun lt!762248 () BalanceConc!14672)

(declare-fun d!620573 () Bool)

(assert (=> d!620573 (= (list!9066 lt!762248) (originalCharacters!4798 (ite c!328346 (h!27610 tokens!598) (ite c!328349 separatorToken!354 (h!27610 tokens!598)))))))

(assert (=> d!620573 (= lt!762248 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (ite c!328346 (h!27610 tokens!598) (ite c!328349 separatorToken!354 (h!27610 tokens!598)))))) (value!125336 (ite c!328346 (h!27610 tokens!598) (ite c!328349 separatorToken!354 (h!27610 tokens!598))))))))

(assert (=> d!620573 (= (charsOf!2531 (ite c!328346 (h!27610 tokens!598) (ite c!328349 separatorToken!354 (h!27610 tokens!598)))) lt!762248)))

(declare-fun b_lambda!68319 () Bool)

(assert (=> (not b_lambda!68319) (not d!620573)))

(declare-fun tb!127951 () Bool)

(declare-fun t!190257 () Bool)

(assert (=> (and b!2029070 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toChars!5523 (transformation!3991 (rule!6220 (ite c!328346 (h!27610 tokens!598) (ite c!328349 separatorToken!354 (h!27610 tokens!598))))))) t!190257) tb!127951))

(declare-fun e!1281861 () Bool)

(declare-fun b!2029361 () Bool)

(declare-fun tp!603336 () Bool)

(assert (=> b!2029361 (= e!1281861 (and (inv!29393 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (ite c!328346 (h!27610 tokens!598) (ite c!328349 separatorToken!354 (h!27610 tokens!598)))))) (value!125336 (ite c!328346 (h!27610 tokens!598) (ite c!328349 separatorToken!354 (h!27610 tokens!598))))))) tp!603336))))

(declare-fun result!153114 () Bool)

(assert (=> tb!127951 (= result!153114 (and (inv!29394 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (ite c!328346 (h!27610 tokens!598) (ite c!328349 separatorToken!354 (h!27610 tokens!598)))))) (value!125336 (ite c!328346 (h!27610 tokens!598) (ite c!328349 separatorToken!354 (h!27610 tokens!598)))))) e!1281861))))

(assert (= tb!127951 b!2029361))

(declare-fun m!2468881 () Bool)

(assert (=> b!2029361 m!2468881))

(declare-fun m!2468883 () Bool)

(assert (=> tb!127951 m!2468883))

(assert (=> d!620573 t!190257))

(declare-fun b_and!161543 () Bool)

(assert (= b_and!161537 (and (=> t!190257 result!153114) b_and!161543)))

(declare-fun t!190259 () Bool)

(declare-fun tb!127953 () Bool)

(assert (=> (and b!2028173 (= (toChars!5523 (transformation!3991 (h!27609 rules!3198))) (toChars!5523 (transformation!3991 (rule!6220 (ite c!328346 (h!27610 tokens!598) (ite c!328349 separatorToken!354 (h!27610 tokens!598))))))) t!190259) tb!127953))

(declare-fun result!153116 () Bool)

(assert (= result!153116 result!153114))

(assert (=> d!620573 t!190259))

(declare-fun b_and!161545 () Bool)

(assert (= b_and!161533 (and (=> t!190259 result!153116) b_and!161545)))

(declare-fun tb!127955 () Bool)

(declare-fun t!190261 () Bool)

(assert (=> (and b!2028151 (= (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (toChars!5523 (transformation!3991 (rule!6220 (ite c!328346 (h!27610 tokens!598) (ite c!328349 separatorToken!354 (h!27610 tokens!598))))))) t!190261) tb!127955))

(declare-fun result!153118 () Bool)

(assert (= result!153118 result!153114))

(assert (=> d!620573 t!190261))

(declare-fun b_and!161547 () Bool)

(assert (= b_and!161535 (and (=> t!190261 result!153118) b_and!161547)))

(declare-fun tb!127957 () Bool)

(declare-fun t!190263 () Bool)

(assert (=> (and b!2029045 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toChars!5523 (transformation!3991 (rule!6220 (ite c!328346 (h!27610 tokens!598) (ite c!328349 separatorToken!354 (h!27610 tokens!598))))))) t!190263) tb!127957))

(declare-fun result!153120 () Bool)

(assert (= result!153120 result!153114))

(assert (=> d!620573 t!190263))

(declare-fun b_and!161549 () Bool)

(assert (= b_and!161541 (and (=> t!190263 result!153120) b_and!161549)))

(declare-fun tb!127959 () Bool)

(declare-fun t!190265 () Bool)

(assert (=> (and b!2028164 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toChars!5523 (transformation!3991 (rule!6220 (ite c!328346 (h!27610 tokens!598) (ite c!328349 separatorToken!354 (h!27610 tokens!598))))))) t!190265) tb!127959))

(declare-fun result!153122 () Bool)

(assert (= result!153122 result!153114))

(assert (=> d!620573 t!190265))

(declare-fun b_and!161551 () Bool)

(assert (= b_and!161539 (and (=> t!190265 result!153122) b_and!161551)))

(declare-fun m!2468885 () Bool)

(assert (=> d!620573 m!2468885))

(declare-fun m!2468887 () Bool)

(assert (=> d!620573 m!2468887))

(assert (=> bm!124482 d!620573))

(declare-fun d!620575 () Bool)

(declare-fun c!328403 () Bool)

(assert (=> d!620575 (= c!328403 (and (is-Cons!22208 rules!3198) (not (= (isSeparator!3991 (h!27609 rules!3198)) (isSeparator!3991 (h!27609 rules!3198))))))))

(declare-fun e!1281868 () Bool)

(assert (=> d!620575 (= (ruleDisjointCharsFromAllFromOtherType!492 (h!27609 rules!3198) rules!3198) e!1281868)))

(declare-fun b!2029370 () Bool)

(declare-fun e!1281869 () Bool)

(assert (=> b!2029370 (= e!1281868 e!1281869)))

(declare-fun res!889951 () Bool)

(declare-fun rulesUseDisjointChars!225 (Rule!7782 Rule!7782) Bool)

(assert (=> b!2029370 (= res!889951 (rulesUseDisjointChars!225 (h!27609 rules!3198) (h!27609 rules!3198)))))

(assert (=> b!2029370 (=> (not res!889951) (not e!1281869))))

(declare-fun b!2029371 () Bool)

(declare-fun e!1281870 () Bool)

(assert (=> b!2029371 (= e!1281868 e!1281870)))

(declare-fun res!889952 () Bool)

(assert (=> b!2029371 (= res!889952 (not (is-Cons!22208 rules!3198)))))

(assert (=> b!2029371 (=> res!889952 e!1281870)))

(declare-fun b!2029372 () Bool)

(declare-fun call!124519 () Bool)

(assert (=> b!2029372 (= e!1281870 call!124519)))

(declare-fun b!2029373 () Bool)

(assert (=> b!2029373 (= e!1281869 call!124519)))

(declare-fun bm!124514 () Bool)

(assert (=> bm!124514 (= call!124519 (ruleDisjointCharsFromAllFromOtherType!492 (h!27609 rules!3198) (t!190125 rules!3198)))))

(assert (= (and d!620575 c!328403) b!2029370))

(assert (= (and d!620575 (not c!328403)) b!2029371))

(assert (= (and b!2029370 res!889951) b!2029373))

(assert (= (and b!2029371 (not res!889952)) b!2029372))

(assert (= (or b!2029373 b!2029372) bm!124514))

(declare-fun m!2468889 () Bool)

(assert (=> b!2029370 m!2468889))

(declare-fun m!2468891 () Bool)

(assert (=> bm!124514 m!2468891))

(assert (=> b!2028768 d!620575))

(declare-fun d!620577 () Bool)

(declare-fun e!1281874 () Bool)

(assert (=> d!620577 e!1281874))

(declare-fun res!889958 () Bool)

(assert (=> d!620577 (=> res!889958 e!1281874)))

(declare-fun lt!762251 () Option!4665)

(assert (=> d!620577 (= res!889958 (isEmpty!13861 lt!762251))))

(declare-fun e!1281873 () Option!4665)

(assert (=> d!620577 (= lt!762251 e!1281873)))

(declare-fun c!328404 () Bool)

(declare-fun lt!762252 () tuple2!20900)

(assert (=> d!620577 (= c!328404 (isEmpty!13854 (_1!11919 lt!762252)))))

(assert (=> d!620577 (= lt!762252 (findLongestMatch!481 (regex!3991 (h!27609 rules!3198)) (++!6004 lt!761718 lt!761704)))))

(assert (=> d!620577 (ruleValid!1222 thiss!23328 (h!27609 rules!3198))))

(assert (=> d!620577 (= (maxPrefixOneRule!1266 thiss!23328 (h!27609 rules!3198) (++!6004 lt!761718 lt!761704)) lt!762251)))

(declare-fun b!2029374 () Bool)

(declare-fun res!889959 () Bool)

(declare-fun e!1281872 () Bool)

(assert (=> b!2029374 (=> (not res!889959) (not e!1281872))))

(assert (=> b!2029374 (= res!889959 (< (size!17349 (_2!11913 (get!7053 lt!762251))) (size!17349 (++!6004 lt!761718 lt!761704))))))

(declare-fun e!1281871 () Bool)

(declare-fun b!2029375 () Bool)

(assert (=> b!2029375 (= e!1281871 (matchR!2682 (regex!3991 (h!27609 rules!3198)) (_1!11919 (findLongestMatchInner!554 (regex!3991 (h!27609 rules!3198)) Nil!22207 (size!17349 Nil!22207) (++!6004 lt!761718 lt!761704) (++!6004 lt!761718 lt!761704) (size!17349 (++!6004 lt!761718 lt!761704))))))))

(declare-fun b!2029376 () Bool)

(assert (=> b!2029376 (= e!1281873 (Some!4664 (tuple2!20889 (Token!7535 (apply!5846 (transformation!3991 (h!27609 rules!3198)) (seqFromList!2845 (_1!11919 lt!762252))) (h!27609 rules!3198) (size!17353 (seqFromList!2845 (_1!11919 lt!762252))) (_1!11919 lt!762252)) (_2!11919 lt!762252))))))

(declare-fun lt!762250 () Unit!36865)

(assert (=> b!2029376 (= lt!762250 (longestMatchIsAcceptedByMatchOrIsEmpty!538 (regex!3991 (h!27609 rules!3198)) (++!6004 lt!761718 lt!761704)))))

(declare-fun res!889957 () Bool)

(assert (=> b!2029376 (= res!889957 (isEmpty!13854 (_1!11919 (findLongestMatchInner!554 (regex!3991 (h!27609 rules!3198)) Nil!22207 (size!17349 Nil!22207) (++!6004 lt!761718 lt!761704) (++!6004 lt!761718 lt!761704) (size!17349 (++!6004 lt!761718 lt!761704))))))))

(assert (=> b!2029376 (=> res!889957 e!1281871)))

(assert (=> b!2029376 e!1281871))

(declare-fun lt!762253 () Unit!36865)

(assert (=> b!2029376 (= lt!762253 lt!762250)))

(declare-fun lt!762249 () Unit!36865)

(assert (=> b!2029376 (= lt!762249 (lemmaSemiInverse!948 (transformation!3991 (h!27609 rules!3198)) (seqFromList!2845 (_1!11919 lt!762252))))))

(declare-fun b!2029377 () Bool)

(declare-fun res!889955 () Bool)

(assert (=> b!2029377 (=> (not res!889955) (not e!1281872))))

(assert (=> b!2029377 (= res!889955 (= (++!6004 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762251)))) (_2!11913 (get!7053 lt!762251))) (++!6004 lt!761718 lt!761704)))))

(declare-fun b!2029378 () Bool)

(assert (=> b!2029378 (= e!1281872 (= (size!17347 (_1!11913 (get!7053 lt!762251))) (size!17349 (originalCharacters!4798 (_1!11913 (get!7053 lt!762251))))))))

(declare-fun b!2029379 () Bool)

(assert (=> b!2029379 (= e!1281874 e!1281872)))

(declare-fun res!889953 () Bool)

(assert (=> b!2029379 (=> (not res!889953) (not e!1281872))))

(assert (=> b!2029379 (= res!889953 (matchR!2682 (regex!3991 (h!27609 rules!3198)) (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762251))))))))

(declare-fun b!2029380 () Bool)

(declare-fun res!889954 () Bool)

(assert (=> b!2029380 (=> (not res!889954) (not e!1281872))))

(assert (=> b!2029380 (= res!889954 (= (value!125336 (_1!11913 (get!7053 lt!762251))) (apply!5846 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762251)))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!762251)))))))))

(declare-fun b!2029381 () Bool)

(declare-fun res!889956 () Bool)

(assert (=> b!2029381 (=> (not res!889956) (not e!1281872))))

(assert (=> b!2029381 (= res!889956 (= (rule!6220 (_1!11913 (get!7053 lt!762251))) (h!27609 rules!3198)))))

(declare-fun b!2029382 () Bool)

(assert (=> b!2029382 (= e!1281873 None!4664)))

(assert (= (and d!620577 c!328404) b!2029382))

(assert (= (and d!620577 (not c!328404)) b!2029376))

(assert (= (and b!2029376 (not res!889957)) b!2029375))

(assert (= (and d!620577 (not res!889958)) b!2029379))

(assert (= (and b!2029379 res!889953) b!2029377))

(assert (= (and b!2029377 res!889955) b!2029374))

(assert (= (and b!2029374 res!889959) b!2029381))

(assert (= (and b!2029381 res!889956) b!2029380))

(assert (= (and b!2029380 res!889954) b!2029378))

(assert (=> b!2029376 m!2468681))

(assert (=> b!2029376 m!2467179))

(assert (=> b!2029376 m!2467179))

(assert (=> b!2029376 m!2467639))

(declare-fun m!2468893 () Bool)

(assert (=> b!2029376 m!2468893))

(assert (=> b!2029376 m!2467179))

(assert (=> b!2029376 m!2467639))

(declare-fun m!2468895 () Bool)

(assert (=> b!2029376 m!2468895))

(assert (=> b!2029376 m!2468895))

(declare-fun m!2468897 () Bool)

(assert (=> b!2029376 m!2468897))

(declare-fun m!2468899 () Bool)

(assert (=> b!2029376 m!2468899))

(assert (=> b!2029376 m!2468681))

(assert (=> b!2029376 m!2468895))

(declare-fun m!2468901 () Bool)

(assert (=> b!2029376 m!2468901))

(assert (=> b!2029376 m!2468895))

(declare-fun m!2468903 () Bool)

(assert (=> b!2029376 m!2468903))

(assert (=> b!2029376 m!2467179))

(declare-fun m!2468905 () Bool)

(assert (=> b!2029376 m!2468905))

(declare-fun m!2468907 () Bool)

(assert (=> b!2029378 m!2468907))

(declare-fun m!2468909 () Bool)

(assert (=> b!2029378 m!2468909))

(assert (=> b!2029375 m!2468681))

(assert (=> b!2029375 m!2467179))

(assert (=> b!2029375 m!2467639))

(assert (=> b!2029375 m!2468681))

(assert (=> b!2029375 m!2467179))

(assert (=> b!2029375 m!2467179))

(assert (=> b!2029375 m!2467639))

(assert (=> b!2029375 m!2468893))

(declare-fun m!2468911 () Bool)

(assert (=> b!2029375 m!2468911))

(assert (=> b!2029374 m!2468907))

(declare-fun m!2468913 () Bool)

(assert (=> b!2029374 m!2468913))

(assert (=> b!2029374 m!2467179))

(assert (=> b!2029374 m!2467639))

(declare-fun m!2468915 () Bool)

(assert (=> d!620577 m!2468915))

(declare-fun m!2468917 () Bool)

(assert (=> d!620577 m!2468917))

(assert (=> d!620577 m!2467179))

(declare-fun m!2468919 () Bool)

(assert (=> d!620577 m!2468919))

(assert (=> d!620577 m!2468711))

(assert (=> b!2029381 m!2468907))

(assert (=> b!2029379 m!2468907))

(declare-fun m!2468921 () Bool)

(assert (=> b!2029379 m!2468921))

(assert (=> b!2029379 m!2468921))

(declare-fun m!2468923 () Bool)

(assert (=> b!2029379 m!2468923))

(assert (=> b!2029379 m!2468923))

(declare-fun m!2468925 () Bool)

(assert (=> b!2029379 m!2468925))

(assert (=> b!2029377 m!2468907))

(assert (=> b!2029377 m!2468921))

(assert (=> b!2029377 m!2468921))

(assert (=> b!2029377 m!2468923))

(assert (=> b!2029377 m!2468923))

(declare-fun m!2468927 () Bool)

(assert (=> b!2029377 m!2468927))

(assert (=> b!2029380 m!2468907))

(declare-fun m!2468929 () Bool)

(assert (=> b!2029380 m!2468929))

(assert (=> b!2029380 m!2468929))

(declare-fun m!2468931 () Bool)

(assert (=> b!2029380 m!2468931))

(assert (=> bm!124431 d!620577))

(declare-fun d!620579 () Bool)

(declare-fun c!328407 () Bool)

(assert (=> d!620579 (= c!328407 (is-Node!7428 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (value!125336 (h!27610 tokens!598))))))))

(declare-fun e!1281879 () Bool)

(assert (=> d!620579 (= (inv!29393 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (value!125336 (h!27610 tokens!598))))) e!1281879)))

(declare-fun b!2029389 () Bool)

(declare-fun inv!29397 (Conc!7428) Bool)

(assert (=> b!2029389 (= e!1281879 (inv!29397 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (value!125336 (h!27610 tokens!598))))))))

(declare-fun b!2029390 () Bool)

(declare-fun e!1281880 () Bool)

(assert (=> b!2029390 (= e!1281879 e!1281880)))

(declare-fun res!889962 () Bool)

(assert (=> b!2029390 (= res!889962 (not (is-Leaf!10887 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (value!125336 (h!27610 tokens!598)))))))))

(assert (=> b!2029390 (=> res!889962 e!1281880)))

(declare-fun b!2029391 () Bool)

(declare-fun inv!29398 (Conc!7428) Bool)

(assert (=> b!2029391 (= e!1281880 (inv!29398 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (value!125336 (h!27610 tokens!598))))))))

(assert (= (and d!620579 c!328407) b!2029389))

(assert (= (and d!620579 (not c!328407)) b!2029390))

(assert (= (and b!2029390 (not res!889962)) b!2029391))

(declare-fun m!2468933 () Bool)

(assert (=> b!2029389 m!2468933))

(declare-fun m!2468935 () Bool)

(assert (=> b!2029391 m!2468935))

(assert (=> b!2028622 d!620579))

(declare-fun d!620581 () Bool)

(assert (=> d!620581 (= (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762043)))) (list!9068 (c!328191 (charsOf!2531 (_1!11913 (get!7053 lt!762043))))))))

(declare-fun bs!420826 () Bool)

(assert (= bs!420826 d!620581))

(declare-fun m!2468937 () Bool)

(assert (=> bs!420826 m!2468937))

(assert (=> b!2028844 d!620581))

(declare-fun d!620583 () Bool)

(declare-fun lt!762254 () BalanceConc!14672)

(assert (=> d!620583 (= (list!9066 lt!762254) (originalCharacters!4798 (_1!11913 (get!7053 lt!762043))))))

(assert (=> d!620583 (= lt!762254 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762043))))) (value!125336 (_1!11913 (get!7053 lt!762043)))))))

(assert (=> d!620583 (= (charsOf!2531 (_1!11913 (get!7053 lt!762043))) lt!762254)))

(declare-fun b_lambda!68321 () Bool)

(assert (=> (not b_lambda!68321) (not d!620583)))

(declare-fun tb!127961 () Bool)

(declare-fun t!190267 () Bool)

(assert (=> (and b!2029070 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762043)))))) t!190267) tb!127961))

(declare-fun b!2029392 () Bool)

(declare-fun e!1281881 () Bool)

(declare-fun tp!603337 () Bool)

(assert (=> b!2029392 (= e!1281881 (and (inv!29393 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762043))))) (value!125336 (_1!11913 (get!7053 lt!762043)))))) tp!603337))))

(declare-fun result!153124 () Bool)

(assert (=> tb!127961 (= result!153124 (and (inv!29394 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762043))))) (value!125336 (_1!11913 (get!7053 lt!762043))))) e!1281881))))

(assert (= tb!127961 b!2029392))

(declare-fun m!2468939 () Bool)

(assert (=> b!2029392 m!2468939))

(declare-fun m!2468941 () Bool)

(assert (=> tb!127961 m!2468941))

(assert (=> d!620583 t!190267))

(declare-fun b_and!161553 () Bool)

(assert (= b_and!161543 (and (=> t!190267 result!153124) b_and!161553)))

(declare-fun tb!127963 () Bool)

(declare-fun t!190269 () Bool)

(assert (=> (and b!2028151 (= (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762043)))))) t!190269) tb!127963))

(declare-fun result!153126 () Bool)

(assert (= result!153126 result!153124))

(assert (=> d!620583 t!190269))

(declare-fun b_and!161555 () Bool)

(assert (= b_and!161547 (and (=> t!190269 result!153126) b_and!161555)))

(declare-fun tb!127965 () Bool)

(declare-fun t!190271 () Bool)

(assert (=> (and b!2028164 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762043)))))) t!190271) tb!127965))

(declare-fun result!153128 () Bool)

(assert (= result!153128 result!153124))

(assert (=> d!620583 t!190271))

(declare-fun b_and!161557 () Bool)

(assert (= b_and!161551 (and (=> t!190271 result!153128) b_and!161557)))

(declare-fun t!190273 () Bool)

(declare-fun tb!127967 () Bool)

(assert (=> (and b!2029045 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762043)))))) t!190273) tb!127967))

(declare-fun result!153130 () Bool)

(assert (= result!153130 result!153124))

(assert (=> d!620583 t!190273))

(declare-fun b_and!161559 () Bool)

(assert (= b_and!161549 (and (=> t!190273 result!153130) b_and!161559)))

(declare-fun t!190275 () Bool)

(declare-fun tb!127969 () Bool)

(assert (=> (and b!2028173 (= (toChars!5523 (transformation!3991 (h!27609 rules!3198))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762043)))))) t!190275) tb!127969))

(declare-fun result!153132 () Bool)

(assert (= result!153132 result!153124))

(assert (=> d!620583 t!190275))

(declare-fun b_and!161561 () Bool)

(assert (= b_and!161545 (and (=> t!190275 result!153132) b_and!161561)))

(declare-fun m!2468943 () Bool)

(assert (=> d!620583 m!2468943))

(declare-fun m!2468945 () Bool)

(assert (=> d!620583 m!2468945))

(assert (=> b!2028844 d!620583))

(declare-fun d!620585 () Bool)

(assert (=> d!620585 (= (get!7053 lt!762043) (v!26989 lt!762043))))

(assert (=> b!2028844 d!620585))

(declare-fun d!620587 () Bool)

(assert (=> d!620587 (= (isEmpty!13861 lt!761735) (not (is-Some!4664 lt!761735)))))

(assert (=> d!620467 d!620587))

(declare-fun d!620589 () Bool)

(assert (=> d!620589 (= (isEmpty!13853 (list!9070 (_1!11914 (lex!1620 thiss!23328 rules!3198 (seqFromList!2845 lt!761718))))) (is-Nil!22209 (list!9070 (_1!11914 (lex!1620 thiss!23328 rules!3198 (seqFromList!2845 lt!761718))))))))

(assert (=> d!620333 d!620589))

(declare-fun d!620591 () Bool)

(declare-fun list!9072 (Conc!7429) List!22291)

(assert (=> d!620591 (= (list!9070 (_1!11914 (lex!1620 thiss!23328 rules!3198 (seqFromList!2845 lt!761718)))) (list!9072 (c!328193 (_1!11914 (lex!1620 thiss!23328 rules!3198 (seqFromList!2845 lt!761718))))))))

(declare-fun bs!420827 () Bool)

(assert (= bs!420827 d!620591))

(declare-fun m!2468947 () Bool)

(assert (=> bs!420827 m!2468947))

(assert (=> d!620333 d!620591))

(declare-fun lt!762257 () Bool)

(declare-fun d!620593 () Bool)

(assert (=> d!620593 (= lt!762257 (isEmpty!13853 (list!9072 (c!328193 (_1!11914 (lex!1620 thiss!23328 rules!3198 (seqFromList!2845 lt!761718)))))))))

(declare-fun size!17356 (Conc!7429) Int)

(assert (=> d!620593 (= lt!762257 (= (size!17356 (c!328193 (_1!11914 (lex!1620 thiss!23328 rules!3198 (seqFromList!2845 lt!761718))))) 0))))

(assert (=> d!620593 (= (isEmpty!13865 (c!328193 (_1!11914 (lex!1620 thiss!23328 rules!3198 (seqFromList!2845 lt!761718))))) lt!762257)))

(declare-fun bs!420828 () Bool)

(assert (= bs!420828 d!620593))

(assert (=> bs!420828 m!2468947))

(assert (=> bs!420828 m!2468947))

(declare-fun m!2468949 () Bool)

(assert (=> bs!420828 m!2468949))

(declare-fun m!2468951 () Bool)

(assert (=> bs!420828 m!2468951))

(assert (=> d!620333 d!620593))

(declare-fun d!620595 () Bool)

(assert (=> d!620595 (= (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761886)))) (list!9068 (c!328191 (charsOf!2531 (_1!11913 (get!7053 lt!761886))))))))

(declare-fun bs!420829 () Bool)

(assert (= bs!420829 d!620595))

(declare-fun m!2468953 () Bool)

(assert (=> bs!420829 m!2468953))

(assert (=> b!2028475 d!620595))

(declare-fun d!620597 () Bool)

(declare-fun lt!762258 () BalanceConc!14672)

(assert (=> d!620597 (= (list!9066 lt!762258) (originalCharacters!4798 (_1!11913 (get!7053 lt!761886))))))

(assert (=> d!620597 (= lt!762258 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761886))))) (value!125336 (_1!11913 (get!7053 lt!761886)))))))

(assert (=> d!620597 (= (charsOf!2531 (_1!11913 (get!7053 lt!761886))) lt!762258)))

(declare-fun b_lambda!68323 () Bool)

(assert (=> (not b_lambda!68323) (not d!620597)))

(declare-fun tb!127971 () Bool)

(declare-fun t!190278 () Bool)

(assert (=> (and b!2029070 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761886)))))) t!190278) tb!127971))

(declare-fun b!2029393 () Bool)

(declare-fun e!1281882 () Bool)

(declare-fun tp!603338 () Bool)

(assert (=> b!2029393 (= e!1281882 (and (inv!29393 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761886))))) (value!125336 (_1!11913 (get!7053 lt!761886)))))) tp!603338))))

(declare-fun result!153134 () Bool)

(assert (=> tb!127971 (= result!153134 (and (inv!29394 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761886))))) (value!125336 (_1!11913 (get!7053 lt!761886))))) e!1281882))))

(assert (= tb!127971 b!2029393))

(declare-fun m!2468955 () Bool)

(assert (=> b!2029393 m!2468955))

(declare-fun m!2468957 () Bool)

(assert (=> tb!127971 m!2468957))

(assert (=> d!620597 t!190278))

(declare-fun b_and!161563 () Bool)

(assert (= b_and!161553 (and (=> t!190278 result!153134) b_and!161563)))

(declare-fun t!190280 () Bool)

(declare-fun tb!127973 () Bool)

(assert (=> (and b!2028173 (= (toChars!5523 (transformation!3991 (h!27609 rules!3198))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761886)))))) t!190280) tb!127973))

(declare-fun result!153136 () Bool)

(assert (= result!153136 result!153134))

(assert (=> d!620597 t!190280))

(declare-fun b_and!161565 () Bool)

(assert (= b_and!161561 (and (=> t!190280 result!153136) b_and!161565)))

(declare-fun t!190282 () Bool)

(declare-fun tb!127975 () Bool)

(assert (=> (and b!2028164 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761886)))))) t!190282) tb!127975))

(declare-fun result!153138 () Bool)

(assert (= result!153138 result!153134))

(assert (=> d!620597 t!190282))

(declare-fun b_and!161567 () Bool)

(assert (= b_and!161557 (and (=> t!190282 result!153138) b_and!161567)))

(declare-fun tb!127977 () Bool)

(declare-fun t!190284 () Bool)

(assert (=> (and b!2028151 (= (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761886)))))) t!190284) tb!127977))

(declare-fun result!153140 () Bool)

(assert (= result!153140 result!153134))

(assert (=> d!620597 t!190284))

(declare-fun b_and!161569 () Bool)

(assert (= b_and!161555 (and (=> t!190284 result!153140) b_and!161569)))

(declare-fun t!190286 () Bool)

(declare-fun tb!127979 () Bool)

(assert (=> (and b!2029045 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761886)))))) t!190286) tb!127979))

(declare-fun result!153142 () Bool)

(assert (= result!153142 result!153134))

(assert (=> d!620597 t!190286))

(declare-fun b_and!161571 () Bool)

(assert (= b_and!161559 (and (=> t!190286 result!153142) b_and!161571)))

(declare-fun m!2468959 () Bool)

(assert (=> d!620597 m!2468959))

(declare-fun m!2468961 () Bool)

(assert (=> d!620597 m!2468961))

(assert (=> b!2028475 d!620597))

(declare-fun d!620599 () Bool)

(assert (=> d!620599 (= (get!7053 lt!761886) (v!26989 lt!761886))))

(assert (=> b!2028475 d!620599))

(declare-fun d!620601 () Bool)

(declare-fun e!1281888 () Bool)

(assert (=> d!620601 e!1281888))

(declare-fun c!328408 () Bool)

(assert (=> d!620601 (= c!328408 (is-EmptyExpr!5416 (derivativeStep!1412 (regex!3991 (rule!6220 (h!27610 tokens!598))) (head!4584 lt!761718))))))

(declare-fun lt!762259 () Bool)

(declare-fun e!1281886 () Bool)

(assert (=> d!620601 (= lt!762259 e!1281886)))

(declare-fun c!328409 () Bool)

(assert (=> d!620601 (= c!328409 (isEmpty!13854 (tail!3060 lt!761718)))))

(assert (=> d!620601 (validRegex!2179 (derivativeStep!1412 (regex!3991 (rule!6220 (h!27610 tokens!598))) (head!4584 lt!761718)))))

(assert (=> d!620601 (= (matchR!2682 (derivativeStep!1412 (regex!3991 (rule!6220 (h!27610 tokens!598))) (head!4584 lt!761718)) (tail!3060 lt!761718)) lt!762259)))

(declare-fun b!2029394 () Bool)

(assert (=> b!2029394 (= e!1281886 (matchR!2682 (derivativeStep!1412 (derivativeStep!1412 (regex!3991 (rule!6220 (h!27610 tokens!598))) (head!4584 lt!761718)) (head!4584 (tail!3060 lt!761718))) (tail!3060 (tail!3060 lt!761718))))))

(declare-fun b!2029395 () Bool)

(declare-fun e!1281887 () Bool)

(assert (=> b!2029395 (= e!1281887 (not lt!762259))))

(declare-fun b!2029396 () Bool)

(declare-fun res!889968 () Bool)

(declare-fun e!1281885 () Bool)

(assert (=> b!2029396 (=> res!889968 e!1281885)))

(assert (=> b!2029396 (= res!889968 (not (isEmpty!13854 (tail!3060 (tail!3060 lt!761718)))))))

(declare-fun b!2029397 () Bool)

(assert (=> b!2029397 (= e!1281885 (not (= (head!4584 (tail!3060 lt!761718)) (c!328192 (derivativeStep!1412 (regex!3991 (rule!6220 (h!27610 tokens!598))) (head!4584 lt!761718))))))))

(declare-fun b!2029398 () Bool)

(declare-fun e!1281889 () Bool)

(assert (=> b!2029398 (= e!1281889 e!1281885)))

(declare-fun res!889964 () Bool)

(assert (=> b!2029398 (=> res!889964 e!1281885)))

(declare-fun call!124520 () Bool)

(assert (=> b!2029398 (= res!889964 call!124520)))

(declare-fun b!2029399 () Bool)

(declare-fun res!889970 () Bool)

(declare-fun e!1281883 () Bool)

(assert (=> b!2029399 (=> (not res!889970) (not e!1281883))))

(assert (=> b!2029399 (= res!889970 (isEmpty!13854 (tail!3060 (tail!3060 lt!761718))))))

(declare-fun b!2029400 () Bool)

(declare-fun res!889966 () Bool)

(declare-fun e!1281884 () Bool)

(assert (=> b!2029400 (=> res!889966 e!1281884)))

(assert (=> b!2029400 (= res!889966 e!1281883)))

(declare-fun res!889969 () Bool)

(assert (=> b!2029400 (=> (not res!889969) (not e!1281883))))

(assert (=> b!2029400 (= res!889969 lt!762259)))

(declare-fun b!2029401 () Bool)

(declare-fun res!889965 () Bool)

(assert (=> b!2029401 (=> (not res!889965) (not e!1281883))))

(assert (=> b!2029401 (= res!889965 (not call!124520))))

(declare-fun b!2029402 () Bool)

(assert (=> b!2029402 (= e!1281884 e!1281889)))

(declare-fun res!889963 () Bool)

(assert (=> b!2029402 (=> (not res!889963) (not e!1281889))))

(assert (=> b!2029402 (= res!889963 (not lt!762259))))

(declare-fun b!2029403 () Bool)

(assert (=> b!2029403 (= e!1281883 (= (head!4584 (tail!3060 lt!761718)) (c!328192 (derivativeStep!1412 (regex!3991 (rule!6220 (h!27610 tokens!598))) (head!4584 lt!761718)))))))

(declare-fun b!2029404 () Bool)

(assert (=> b!2029404 (= e!1281886 (nullable!1653 (derivativeStep!1412 (regex!3991 (rule!6220 (h!27610 tokens!598))) (head!4584 lt!761718))))))

(declare-fun b!2029405 () Bool)

(assert (=> b!2029405 (= e!1281888 e!1281887)))

(declare-fun c!328410 () Bool)

(assert (=> b!2029405 (= c!328410 (is-EmptyLang!5416 (derivativeStep!1412 (regex!3991 (rule!6220 (h!27610 tokens!598))) (head!4584 lt!761718))))))

(declare-fun bm!124515 () Bool)

(assert (=> bm!124515 (= call!124520 (isEmpty!13854 (tail!3060 lt!761718)))))

(declare-fun b!2029406 () Bool)

(declare-fun res!889967 () Bool)

(assert (=> b!2029406 (=> res!889967 e!1281884)))

(assert (=> b!2029406 (= res!889967 (not (is-ElementMatch!5416 (derivativeStep!1412 (regex!3991 (rule!6220 (h!27610 tokens!598))) (head!4584 lt!761718)))))))

(assert (=> b!2029406 (= e!1281887 e!1281884)))

(declare-fun b!2029407 () Bool)

(assert (=> b!2029407 (= e!1281888 (= lt!762259 call!124520))))

(assert (= (and d!620601 c!328409) b!2029404))

(assert (= (and d!620601 (not c!328409)) b!2029394))

(assert (= (and d!620601 c!328408) b!2029407))

(assert (= (and d!620601 (not c!328408)) b!2029405))

(assert (= (and b!2029405 c!328410) b!2029395))

(assert (= (and b!2029405 (not c!328410)) b!2029406))

(assert (= (and b!2029406 (not res!889967)) b!2029400))

(assert (= (and b!2029400 res!889969) b!2029401))

(assert (= (and b!2029401 res!889965) b!2029399))

(assert (= (and b!2029399 res!889970) b!2029403))

(assert (= (and b!2029400 (not res!889966)) b!2029402))

(assert (= (and b!2029402 res!889963) b!2029398))

(assert (= (and b!2029398 (not res!889964)) b!2029396))

(assert (= (and b!2029396 (not res!889968)) b!2029397))

(assert (= (or b!2029407 b!2029398 b!2029401) bm!124515))

(assert (=> b!2029399 m!2467899))

(declare-fun m!2468963 () Bool)

(assert (=> b!2029399 m!2468963))

(assert (=> b!2029399 m!2468963))

(declare-fun m!2468965 () Bool)

(assert (=> b!2029399 m!2468965))

(assert (=> b!2029404 m!2467907))

(declare-fun m!2468967 () Bool)

(assert (=> b!2029404 m!2468967))

(assert (=> b!2029397 m!2467899))

(declare-fun m!2468969 () Bool)

(assert (=> b!2029397 m!2468969))

(assert (=> b!2029394 m!2467899))

(assert (=> b!2029394 m!2468969))

(assert (=> b!2029394 m!2467907))

(assert (=> b!2029394 m!2468969))

(declare-fun m!2468971 () Bool)

(assert (=> b!2029394 m!2468971))

(assert (=> b!2029394 m!2467899))

(assert (=> b!2029394 m!2468963))

(assert (=> b!2029394 m!2468971))

(assert (=> b!2029394 m!2468963))

(declare-fun m!2468973 () Bool)

(assert (=> b!2029394 m!2468973))

(assert (=> b!2029403 m!2467899))

(assert (=> b!2029403 m!2468969))

(assert (=> d!620601 m!2467899))

(assert (=> d!620601 m!2467901))

(assert (=> d!620601 m!2467907))

(declare-fun m!2468975 () Bool)

(assert (=> d!620601 m!2468975))

(assert (=> b!2029396 m!2467899))

(assert (=> b!2029396 m!2468963))

(assert (=> b!2029396 m!2468963))

(assert (=> b!2029396 m!2468965))

(assert (=> bm!124515 m!2467899))

(assert (=> bm!124515 m!2467901))

(assert (=> b!2028667 d!620601))

(declare-fun call!124531 () Regex!5416)

(declare-fun bm!124524 () Bool)

(declare-fun c!328423 () Bool)

(assert (=> bm!124524 (= call!124531 (derivativeStep!1412 (ite c!328423 (regOne!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regOne!11344 (regex!3991 (rule!6220 (h!27610 tokens!598))))) (head!4584 lt!761718)))))

(declare-fun b!2029428 () Bool)

(declare-fun call!124530 () Regex!5416)

(declare-fun e!1281903 () Regex!5416)

(assert (=> b!2029428 (= e!1281903 (Union!5416 (Concat!9544 call!124531 (regTwo!11344 (regex!3991 (rule!6220 (h!27610 tokens!598))))) call!124530))))

(declare-fun b!2029429 () Bool)

(declare-fun e!1281904 () Regex!5416)

(assert (=> b!2029429 (= e!1281904 (ite (= (head!4584 lt!761718) (c!328192 (regex!3991 (rule!6220 (h!27610 tokens!598))))) EmptyExpr!5416 EmptyLang!5416))))

(declare-fun b!2029430 () Bool)

(declare-fun c!328421 () Bool)

(assert (=> b!2029430 (= c!328421 (nullable!1653 (regOne!11344 (regex!3991 (rule!6220 (h!27610 tokens!598))))))))

(declare-fun e!1281901 () Regex!5416)

(assert (=> b!2029430 (= e!1281901 e!1281903)))

(declare-fun b!2029431 () Bool)

(assert (=> b!2029431 (= e!1281903 (Union!5416 (Concat!9544 call!124530 (regTwo!11344 (regex!3991 (rule!6220 (h!27610 tokens!598))))) EmptyLang!5416))))

(declare-fun b!2029432 () Bool)

(declare-fun e!1281900 () Regex!5416)

(assert (=> b!2029432 (= e!1281900 e!1281904)))

(declare-fun c!328422 () Bool)

(assert (=> b!2029432 (= c!328422 (is-ElementMatch!5416 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))

(declare-fun b!2029433 () Bool)

(declare-fun e!1281902 () Regex!5416)

(assert (=> b!2029433 (= e!1281902 e!1281901)))

(declare-fun c!328424 () Bool)

(assert (=> b!2029433 (= c!328424 (is-Star!5416 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))

(declare-fun b!2029434 () Bool)

(assert (=> b!2029434 (= e!1281900 EmptyLang!5416)))

(declare-fun d!620603 () Bool)

(declare-fun lt!762262 () Regex!5416)

(assert (=> d!620603 (validRegex!2179 lt!762262)))

(assert (=> d!620603 (= lt!762262 e!1281900)))

(declare-fun c!328425 () Bool)

(assert (=> d!620603 (= c!328425 (or (is-EmptyExpr!5416 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (is-EmptyLang!5416 (regex!3991 (rule!6220 (h!27610 tokens!598))))))))

(assert (=> d!620603 (validRegex!2179 (regex!3991 (rule!6220 (h!27610 tokens!598))))))

(assert (=> d!620603 (= (derivativeStep!1412 (regex!3991 (rule!6220 (h!27610 tokens!598))) (head!4584 lt!761718)) lt!762262)))

(declare-fun b!2029435 () Bool)

(declare-fun call!124529 () Regex!5416)

(assert (=> b!2029435 (= e!1281901 (Concat!9544 call!124529 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))

(declare-fun call!124532 () Regex!5416)

(declare-fun bm!124525 () Bool)

(assert (=> bm!124525 (= call!124532 (derivativeStep!1412 (ite c!328423 (regTwo!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (ite c!328424 (reg!5745 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (ite c!328421 (regTwo!11344 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regOne!11344 (regex!3991 (rule!6220 (h!27610 tokens!598))))))) (head!4584 lt!761718)))))

(declare-fun b!2029436 () Bool)

(assert (=> b!2029436 (= c!328423 (is-Union!5416 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))

(assert (=> b!2029436 (= e!1281904 e!1281902)))

(declare-fun b!2029437 () Bool)

(assert (=> b!2029437 (= e!1281902 (Union!5416 call!124531 call!124532))))

(declare-fun bm!124526 () Bool)

(assert (=> bm!124526 (= call!124530 call!124529)))

(declare-fun bm!124527 () Bool)

(assert (=> bm!124527 (= call!124529 call!124532)))

(assert (= (and d!620603 c!328425) b!2029434))

(assert (= (and d!620603 (not c!328425)) b!2029432))

(assert (= (and b!2029432 c!328422) b!2029429))

(assert (= (and b!2029432 (not c!328422)) b!2029436))

(assert (= (and b!2029436 c!328423) b!2029437))

(assert (= (and b!2029436 (not c!328423)) b!2029433))

(assert (= (and b!2029433 c!328424) b!2029435))

(assert (= (and b!2029433 (not c!328424)) b!2029430))

(assert (= (and b!2029430 c!328421) b!2029428))

(assert (= (and b!2029430 (not c!328421)) b!2029431))

(assert (= (or b!2029428 b!2029431) bm!124526))

(assert (= (or b!2029435 bm!124526) bm!124527))

(assert (= (or b!2029437 b!2029428) bm!124524))

(assert (= (or b!2029437 bm!124527) bm!124525))

(assert (=> bm!124524 m!2467905))

(declare-fun m!2468977 () Bool)

(assert (=> bm!124524 m!2468977))

(declare-fun m!2468979 () Bool)

(assert (=> b!2029430 m!2468979))

(declare-fun m!2468981 () Bool)

(assert (=> d!620603 m!2468981))

(assert (=> d!620603 m!2467913))

(assert (=> bm!124525 m!2467905))

(declare-fun m!2468983 () Bool)

(assert (=> bm!124525 m!2468983))

(assert (=> b!2028667 d!620603))

(declare-fun d!620605 () Bool)

(assert (=> d!620605 (= (head!4584 lt!761718) (h!27608 lt!761718))))

(assert (=> b!2028667 d!620605))

(declare-fun d!620607 () Bool)

(assert (=> d!620607 (= (tail!3060 lt!761718) (t!190124 lt!761718))))

(assert (=> b!2028667 d!620607))

(declare-fun d!620609 () Bool)

(assert (=> d!620609 (= (list!9066 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (value!125336 (h!27610 tokens!598)))) (list!9068 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (value!125336 (h!27610 tokens!598))))))))

(declare-fun bs!420830 () Bool)

(assert (= bs!420830 d!620609))

(declare-fun m!2468985 () Bool)

(assert (=> bs!420830 m!2468985))

(assert (=> b!2028903 d!620609))

(declare-fun d!620611 () Bool)

(declare-fun lt!762263 () Bool)

(assert (=> d!620611 (= lt!762263 (set.member (rule!6220 (_1!11913 (get!7053 lt!762084))) (content!3280 rules!3198)))))

(declare-fun e!1281905 () Bool)

(assert (=> d!620611 (= lt!762263 e!1281905)))

(declare-fun res!889971 () Bool)

(assert (=> d!620611 (=> (not res!889971) (not e!1281905))))

(assert (=> d!620611 (= res!889971 (is-Cons!22208 rules!3198))))

(assert (=> d!620611 (= (contains!4097 rules!3198 (rule!6220 (_1!11913 (get!7053 lt!762084)))) lt!762263)))

(declare-fun b!2029438 () Bool)

(declare-fun e!1281906 () Bool)

(assert (=> b!2029438 (= e!1281905 e!1281906)))

(declare-fun res!889972 () Bool)

(assert (=> b!2029438 (=> res!889972 e!1281906)))

(assert (=> b!2029438 (= res!889972 (= (h!27609 rules!3198) (rule!6220 (_1!11913 (get!7053 lt!762084)))))))

(declare-fun b!2029439 () Bool)

(assert (=> b!2029439 (= e!1281906 (contains!4097 (t!190125 rules!3198) (rule!6220 (_1!11913 (get!7053 lt!762084)))))))

(assert (= (and d!620611 res!889971) b!2029438))

(assert (= (and b!2029438 (not res!889972)) b!2029439))

(assert (=> d!620611 m!2467943))

(declare-fun m!2468987 () Bool)

(assert (=> d!620611 m!2468987))

(declare-fun m!2468989 () Bool)

(assert (=> b!2029439 m!2468989))

(assert (=> b!2028996 d!620611))

(declare-fun d!620613 () Bool)

(assert (=> d!620613 (= (get!7053 lt!762084) (v!26989 lt!762084))))

(assert (=> b!2028996 d!620613))

(declare-fun d!620615 () Bool)

(assert (=> d!620615 (= (isEmpty!13861 lt!761730) (not (is-Some!4664 lt!761730)))))

(assert (=> d!620243 d!620615))

(declare-fun b!2029440 () Bool)

(declare-fun e!1281908 () List!22289)

(declare-fun call!124536 () List!22289)

(assert (=> b!2029440 (= e!1281908 call!124536)))

(declare-fun c!328426 () Bool)

(declare-fun call!124533 () List!22289)

(declare-fun call!124534 () List!22289)

(declare-fun bm!124528 () Bool)

(declare-fun call!124535 () List!22289)

(assert (=> bm!124528 (= call!124535 (++!6004 (ite c!328426 call!124534 call!124533) (ite c!328426 call!124533 call!124534)))))

(declare-fun bm!124529 () Bool)

(assert (=> bm!124529 (= call!124533 call!124536)))

(declare-fun b!2029441 () Bool)

(declare-fun e!1281910 () List!22289)

(assert (=> b!2029441 (= e!1281910 call!124535)))

(declare-fun c!328427 () Bool)

(declare-fun d!620617 () Bool)

(assert (=> d!620617 (= c!328427 (or (is-EmptyExpr!5416 (ite c!328322 (reg!5745 (regex!3991 (rule!6220 separatorToken!354))) (ite c!328320 (regTwo!11345 (regex!3991 (rule!6220 separatorToken!354))) (regOne!11344 (regex!3991 (rule!6220 separatorToken!354)))))) (is-EmptyLang!5416 (ite c!328322 (reg!5745 (regex!3991 (rule!6220 separatorToken!354))) (ite c!328320 (regTwo!11345 (regex!3991 (rule!6220 separatorToken!354))) (regOne!11344 (regex!3991 (rule!6220 separatorToken!354))))))))))

(declare-fun e!1281909 () List!22289)

(assert (=> d!620617 (= (usedCharacters!429 (ite c!328322 (reg!5745 (regex!3991 (rule!6220 separatorToken!354))) (ite c!328320 (regTwo!11345 (regex!3991 (rule!6220 separatorToken!354))) (regOne!11344 (regex!3991 (rule!6220 separatorToken!354)))))) e!1281909)))

(declare-fun c!328428 () Bool)

(declare-fun b!2029442 () Bool)

(assert (=> b!2029442 (= c!328428 (is-Star!5416 (ite c!328322 (reg!5745 (regex!3991 (rule!6220 separatorToken!354))) (ite c!328320 (regTwo!11345 (regex!3991 (rule!6220 separatorToken!354))) (regOne!11344 (regex!3991 (rule!6220 separatorToken!354)))))))))

(declare-fun e!1281907 () List!22289)

(assert (=> b!2029442 (= e!1281907 e!1281908)))

(declare-fun b!2029443 () Bool)

(assert (=> b!2029443 (= e!1281910 call!124535)))

(declare-fun bm!124530 () Bool)

(assert (=> bm!124530 (= call!124536 (usedCharacters!429 (ite c!328428 (reg!5745 (ite c!328322 (reg!5745 (regex!3991 (rule!6220 separatorToken!354))) (ite c!328320 (regTwo!11345 (regex!3991 (rule!6220 separatorToken!354))) (regOne!11344 (regex!3991 (rule!6220 separatorToken!354)))))) (ite c!328426 (regTwo!11345 (ite c!328322 (reg!5745 (regex!3991 (rule!6220 separatorToken!354))) (ite c!328320 (regTwo!11345 (regex!3991 (rule!6220 separatorToken!354))) (regOne!11344 (regex!3991 (rule!6220 separatorToken!354)))))) (regOne!11344 (ite c!328322 (reg!5745 (regex!3991 (rule!6220 separatorToken!354))) (ite c!328320 (regTwo!11345 (regex!3991 (rule!6220 separatorToken!354))) (regOne!11344 (regex!3991 (rule!6220 separatorToken!354))))))))))))

(declare-fun b!2029444 () Bool)

(assert (=> b!2029444 (= e!1281908 e!1281910)))

(assert (=> b!2029444 (= c!328426 (is-Union!5416 (ite c!328322 (reg!5745 (regex!3991 (rule!6220 separatorToken!354))) (ite c!328320 (regTwo!11345 (regex!3991 (rule!6220 separatorToken!354))) (regOne!11344 (regex!3991 (rule!6220 separatorToken!354)))))))))

(declare-fun b!2029445 () Bool)

(assert (=> b!2029445 (= e!1281909 Nil!22207)))

(declare-fun b!2029446 () Bool)

(assert (=> b!2029446 (= e!1281909 e!1281907)))

(declare-fun c!328429 () Bool)

(assert (=> b!2029446 (= c!328429 (is-ElementMatch!5416 (ite c!328322 (reg!5745 (regex!3991 (rule!6220 separatorToken!354))) (ite c!328320 (regTwo!11345 (regex!3991 (rule!6220 separatorToken!354))) (regOne!11344 (regex!3991 (rule!6220 separatorToken!354)))))))))

(declare-fun b!2029447 () Bool)

(assert (=> b!2029447 (= e!1281907 (Cons!22207 (c!328192 (ite c!328322 (reg!5745 (regex!3991 (rule!6220 separatorToken!354))) (ite c!328320 (regTwo!11345 (regex!3991 (rule!6220 separatorToken!354))) (regOne!11344 (regex!3991 (rule!6220 separatorToken!354)))))) Nil!22207))))

(declare-fun bm!124531 () Bool)

(assert (=> bm!124531 (= call!124534 (usedCharacters!429 (ite c!328426 (regOne!11345 (ite c!328322 (reg!5745 (regex!3991 (rule!6220 separatorToken!354))) (ite c!328320 (regTwo!11345 (regex!3991 (rule!6220 separatorToken!354))) (regOne!11344 (regex!3991 (rule!6220 separatorToken!354)))))) (regTwo!11344 (ite c!328322 (reg!5745 (regex!3991 (rule!6220 separatorToken!354))) (ite c!328320 (regTwo!11345 (regex!3991 (rule!6220 separatorToken!354))) (regOne!11344 (regex!3991 (rule!6220 separatorToken!354)))))))))))

(assert (= (and d!620617 c!328427) b!2029445))

(assert (= (and d!620617 (not c!328427)) b!2029446))

(assert (= (and b!2029446 c!328429) b!2029447))

(assert (= (and b!2029446 (not c!328429)) b!2029442))

(assert (= (and b!2029442 c!328428) b!2029440))

(assert (= (and b!2029442 (not c!328428)) b!2029444))

(assert (= (and b!2029444 c!328426) b!2029441))

(assert (= (and b!2029444 (not c!328426)) b!2029443))

(assert (= (or b!2029441 b!2029443) bm!124531))

(assert (= (or b!2029441 b!2029443) bm!124529))

(assert (= (or b!2029441 b!2029443) bm!124528))

(assert (= (or b!2029440 bm!124529) bm!124530))

(declare-fun m!2468991 () Bool)

(assert (=> bm!124528 m!2468991))

(declare-fun m!2468993 () Bool)

(assert (=> bm!124530 m!2468993))

(declare-fun m!2468995 () Bool)

(assert (=> bm!124531 m!2468995))

(assert (=> bm!124470 d!620617))

(declare-fun d!620619 () Bool)

(assert (=> d!620619 (= (list!9066 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729))) (list!9068 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729)))))))

(declare-fun bs!420831 () Bool)

(assert (= bs!420831 d!620619))

(declare-fun m!2468997 () Bool)

(assert (=> bs!420831 m!2468997))

(assert (=> d!620293 d!620619))

(assert (=> d!620293 d!620305))

(declare-fun d!620621 () Bool)

(declare-fun dynLambda!11053 (Int BalanceConc!14672) Bool)

(assert (=> d!620621 (dynLambda!11053 lambda!76492 lt!761729)))

(declare-fun lt!762266 () Unit!36865)

(declare-fun choose!12375 (Int BalanceConc!14672) Unit!36865)

(assert (=> d!620621 (= lt!762266 (choose!12375 lambda!76492 lt!761729))))

(declare-fun Forall!1019 (Int) Bool)

(assert (=> d!620621 (Forall!1019 lambda!76492)))

(assert (=> d!620621 (= (ForallOf!448 lambda!76492 lt!761729) lt!762266)))

(declare-fun b_lambda!68325 () Bool)

(assert (=> (not b_lambda!68325) (not d!620621)))

(declare-fun bs!420832 () Bool)

(assert (= bs!420832 d!620621))

(declare-fun m!2468999 () Bool)

(assert (=> bs!420832 m!2468999))

(declare-fun m!2469001 () Bool)

(assert (=> bs!420832 m!2469001))

(declare-fun m!2469003 () Bool)

(assert (=> bs!420832 m!2469003))

(assert (=> d!620293 d!620621))

(declare-fun d!620623 () Bool)

(declare-fun c!328430 () Bool)

(assert (=> d!620623 (= c!328430 (is-Nil!22207 lt!761703))))

(declare-fun e!1281911 () (Set C!10978))

(assert (=> d!620623 (= (content!3278 lt!761703) e!1281911)))

(declare-fun b!2029448 () Bool)

(assert (=> b!2029448 (= e!1281911 (as set.empty (Set C!10978)))))

(declare-fun b!2029449 () Bool)

(assert (=> b!2029449 (= e!1281911 (set.union (set.insert (h!27608 lt!761703) (as set.empty (Set C!10978))) (content!3278 (t!190124 lt!761703))))))

(assert (= (and d!620623 c!328430) b!2029448))

(assert (= (and d!620623 (not c!328430)) b!2029449))

(declare-fun m!2469005 () Bool)

(assert (=> b!2029449 m!2469005))

(assert (=> b!2029449 m!2468675))

(assert (=> d!620349 d!620623))

(declare-fun d!620625 () Bool)

(declare-fun lt!762267 () Bool)

(assert (=> d!620625 (= lt!762267 (set.member (rule!6220 (_1!11913 (get!7053 lt!762043))) (content!3280 rules!3198)))))

(declare-fun e!1281912 () Bool)

(assert (=> d!620625 (= lt!762267 e!1281912)))

(declare-fun res!889973 () Bool)

(assert (=> d!620625 (=> (not res!889973) (not e!1281912))))

(assert (=> d!620625 (= res!889973 (is-Cons!22208 rules!3198))))

(assert (=> d!620625 (= (contains!4097 rules!3198 (rule!6220 (_1!11913 (get!7053 lt!762043)))) lt!762267)))

(declare-fun b!2029450 () Bool)

(declare-fun e!1281913 () Bool)

(assert (=> b!2029450 (= e!1281912 e!1281913)))

(declare-fun res!889974 () Bool)

(assert (=> b!2029450 (=> res!889974 e!1281913)))

(assert (=> b!2029450 (= res!889974 (= (h!27609 rules!3198) (rule!6220 (_1!11913 (get!7053 lt!762043)))))))

(declare-fun b!2029451 () Bool)

(assert (=> b!2029451 (= e!1281913 (contains!4097 (t!190125 rules!3198) (rule!6220 (_1!11913 (get!7053 lt!762043)))))))

(assert (= (and d!620625 res!889973) b!2029450))

(assert (= (and b!2029450 (not res!889974)) b!2029451))

(assert (=> d!620625 m!2467943))

(declare-fun m!2469007 () Bool)

(assert (=> d!620625 m!2469007))

(declare-fun m!2469009 () Bool)

(assert (=> b!2029451 m!2469009))

(assert (=> b!2028845 d!620625))

(assert (=> b!2028845 d!620585))

(declare-fun d!620627 () Bool)

(declare-fun lt!762270 () Token!7534)

(assert (=> d!620627 (= lt!762270 (apply!5850 (list!9070 (_1!11914 lt!761977)) 0))))

(declare-fun apply!5852 (Conc!7429 Int) Token!7534)

(assert (=> d!620627 (= lt!762270 (apply!5852 (c!328193 (_1!11914 lt!761977)) 0))))

(declare-fun e!1281916 () Bool)

(assert (=> d!620627 e!1281916))

(declare-fun res!889977 () Bool)

(assert (=> d!620627 (=> (not res!889977) (not e!1281916))))

(assert (=> d!620627 (= res!889977 (<= 0 0))))

(assert (=> d!620627 (= (apply!5848 (_1!11914 lt!761977) 0) lt!762270)))

(declare-fun b!2029454 () Bool)

(assert (=> b!2029454 (= e!1281916 (< 0 (size!17351 (_1!11914 lt!761977))))))

(assert (= (and d!620627 res!889977) b!2029454))

(declare-fun m!2469011 () Bool)

(assert (=> d!620627 m!2469011))

(assert (=> d!620627 m!2469011))

(declare-fun m!2469013 () Bool)

(assert (=> d!620627 m!2469013))

(declare-fun m!2469015 () Bool)

(assert (=> d!620627 m!2469015))

(assert (=> b!2029454 m!2467883))

(assert (=> b!2028636 d!620627))

(declare-fun d!620629 () Bool)

(declare-fun lt!762271 () Bool)

(assert (=> d!620629 (= lt!762271 (set.member (rule!6220 separatorToken!354) (content!3280 (t!190125 rules!3198))))))

(declare-fun e!1281917 () Bool)

(assert (=> d!620629 (= lt!762271 e!1281917)))

(declare-fun res!889978 () Bool)

(assert (=> d!620629 (=> (not res!889978) (not e!1281917))))

(assert (=> d!620629 (= res!889978 (is-Cons!22208 (t!190125 rules!3198)))))

(assert (=> d!620629 (= (contains!4097 (t!190125 rules!3198) (rule!6220 separatorToken!354)) lt!762271)))

(declare-fun b!2029455 () Bool)

(declare-fun e!1281918 () Bool)

(assert (=> b!2029455 (= e!1281917 e!1281918)))

(declare-fun res!889979 () Bool)

(assert (=> b!2029455 (=> res!889979 e!1281918)))

(assert (=> b!2029455 (= res!889979 (= (h!27609 (t!190125 rules!3198)) (rule!6220 separatorToken!354)))))

(declare-fun b!2029456 () Bool)

(assert (=> b!2029456 (= e!1281918 (contains!4097 (t!190125 (t!190125 rules!3198)) (rule!6220 separatorToken!354)))))

(assert (= (and d!620629 res!889978) b!2029455))

(assert (= (and b!2029455 (not res!889979)) b!2029456))

(assert (=> d!620629 m!2468767))

(declare-fun m!2469017 () Bool)

(assert (=> d!620629 m!2469017))

(declare-fun m!2469019 () Bool)

(assert (=> b!2029456 m!2469019))

(assert (=> b!2028724 d!620629))

(declare-fun d!620631 () Bool)

(assert (=> d!620631 (= (list!9070 (_1!11914 lt!761999)) (list!9072 (c!328193 (_1!11914 lt!761999))))))

(declare-fun bs!420833 () Bool)

(assert (= bs!420833 d!620631))

(declare-fun m!2469021 () Bool)

(assert (=> bs!420833 m!2469021))

(assert (=> b!2028756 d!620631))

(declare-fun b!2029467 () Bool)

(declare-fun e!1281927 () Bool)

(declare-fun e!1281925 () Bool)

(assert (=> b!2029467 (= e!1281927 e!1281925)))

(declare-fun res!889982 () Bool)

(declare-fun lt!762278 () tuple2!20896)

(assert (=> b!2029467 (= res!889982 (< (size!17349 (_2!11917 lt!762278)) (size!17349 (list!9066 (seqFromList!2845 lt!761718)))))))

(assert (=> b!2029467 (=> (not res!889982) (not e!1281925))))

(declare-fun b!2029468 () Bool)

(declare-fun e!1281926 () tuple2!20896)

(assert (=> b!2029468 (= e!1281926 (tuple2!20897 Nil!22209 (list!9066 (seqFromList!2845 lt!761718))))))

(declare-fun b!2029469 () Bool)

(assert (=> b!2029469 (= e!1281927 (= (_2!11917 lt!762278) (list!9066 (seqFromList!2845 lt!761718))))))

(declare-fun d!620633 () Bool)

(assert (=> d!620633 e!1281927))

(declare-fun c!328436 () Bool)

(declare-fun size!17357 (List!22291) Int)

(assert (=> d!620633 (= c!328436 (> (size!17357 (_1!11917 lt!762278)) 0))))

(assert (=> d!620633 (= lt!762278 e!1281926)))

(declare-fun c!328435 () Bool)

(declare-fun lt!762280 () Option!4665)

(assert (=> d!620633 (= c!328435 (is-Some!4664 lt!762280))))

(assert (=> d!620633 (= lt!762280 (maxPrefix!2040 thiss!23328 rules!3198 (list!9066 (seqFromList!2845 lt!761718))))))

(assert (=> d!620633 (= (lexList!982 thiss!23328 rules!3198 (list!9066 (seqFromList!2845 lt!761718))) lt!762278)))

(declare-fun b!2029470 () Bool)

(declare-fun lt!762279 () tuple2!20896)

(assert (=> b!2029470 (= e!1281926 (tuple2!20897 (Cons!22209 (_1!11913 (v!26989 lt!762280)) (_1!11917 lt!762279)) (_2!11917 lt!762279)))))

(assert (=> b!2029470 (= lt!762279 (lexList!982 thiss!23328 rules!3198 (_2!11913 (v!26989 lt!762280))))))

(declare-fun b!2029471 () Bool)

(assert (=> b!2029471 (= e!1281925 (not (isEmpty!13853 (_1!11917 lt!762278))))))

(assert (= (and d!620633 c!328435) b!2029470))

(assert (= (and d!620633 (not c!328435)) b!2029468))

(assert (= (and d!620633 c!328436) b!2029467))

(assert (= (and d!620633 (not c!328436)) b!2029469))

(assert (= (and b!2029467 res!889982) b!2029471))

(declare-fun m!2469023 () Bool)

(assert (=> b!2029467 m!2469023))

(assert (=> b!2029467 m!2467973))

(assert (=> b!2029467 m!2468777))

(declare-fun m!2469025 () Bool)

(assert (=> d!620633 m!2469025))

(assert (=> d!620633 m!2467973))

(declare-fun m!2469027 () Bool)

(assert (=> d!620633 m!2469027))

(declare-fun m!2469029 () Bool)

(assert (=> b!2029470 m!2469029))

(declare-fun m!2469031 () Bool)

(assert (=> b!2029471 m!2469031))

(assert (=> b!2028756 d!620633))

(declare-fun d!620635 () Bool)

(assert (=> d!620635 (= (list!9066 (seqFromList!2845 lt!761718)) (list!9068 (c!328191 (seqFromList!2845 lt!761718))))))

(declare-fun bs!420834 () Bool)

(assert (= bs!420834 d!620635))

(declare-fun m!2469033 () Bool)

(assert (=> bs!420834 m!2469033))

(assert (=> b!2028756 d!620635))

(declare-fun d!620637 () Bool)

(assert (=> d!620637 (= (isEmpty!13854 (tail!3060 lt!761716)) (is-Nil!22207 (tail!3060 lt!761716)))))

(assert (=> b!2028923 d!620637))

(declare-fun d!620639 () Bool)

(assert (=> d!620639 (= (tail!3060 lt!761716) (t!190124 lt!761716))))

(assert (=> b!2028923 d!620639))

(declare-fun d!620641 () Bool)

(declare-fun e!1281933 () Bool)

(assert (=> d!620641 e!1281933))

(declare-fun c!328437 () Bool)

(assert (=> d!620641 (= c!328437 (is-EmptyExpr!5416 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!761878))))))))

(declare-fun lt!762281 () Bool)

(declare-fun e!1281931 () Bool)

(assert (=> d!620641 (= lt!762281 e!1281931)))

(declare-fun c!328438 () Bool)

(assert (=> d!620641 (= c!328438 (isEmpty!13854 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761878))))))))

(assert (=> d!620641 (validRegex!2179 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!761878)))))))

(assert (=> d!620641 (= (matchR!2682 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!761878)))) (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761878))))) lt!762281)))

(declare-fun b!2029472 () Bool)

(assert (=> b!2029472 (= e!1281931 (matchR!2682 (derivativeStep!1412 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!761878)))) (head!4584 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761878)))))) (tail!3060 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761878)))))))))

(declare-fun b!2029473 () Bool)

(declare-fun e!1281932 () Bool)

(assert (=> b!2029473 (= e!1281932 (not lt!762281))))

(declare-fun b!2029474 () Bool)

(declare-fun res!889988 () Bool)

(declare-fun e!1281930 () Bool)

(assert (=> b!2029474 (=> res!889988 e!1281930)))

(assert (=> b!2029474 (= res!889988 (not (isEmpty!13854 (tail!3060 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761878))))))))))

(declare-fun b!2029475 () Bool)

(assert (=> b!2029475 (= e!1281930 (not (= (head!4584 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761878))))) (c!328192 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!761878))))))))))

(declare-fun b!2029476 () Bool)

(declare-fun e!1281934 () Bool)

(assert (=> b!2029476 (= e!1281934 e!1281930)))

(declare-fun res!889984 () Bool)

(assert (=> b!2029476 (=> res!889984 e!1281930)))

(declare-fun call!124537 () Bool)

(assert (=> b!2029476 (= res!889984 call!124537)))

(declare-fun b!2029477 () Bool)

(declare-fun res!889990 () Bool)

(declare-fun e!1281928 () Bool)

(assert (=> b!2029477 (=> (not res!889990) (not e!1281928))))

(assert (=> b!2029477 (= res!889990 (isEmpty!13854 (tail!3060 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761878)))))))))

(declare-fun b!2029478 () Bool)

(declare-fun res!889986 () Bool)

(declare-fun e!1281929 () Bool)

(assert (=> b!2029478 (=> res!889986 e!1281929)))

(assert (=> b!2029478 (= res!889986 e!1281928)))

(declare-fun res!889989 () Bool)

(assert (=> b!2029478 (=> (not res!889989) (not e!1281928))))

(assert (=> b!2029478 (= res!889989 lt!762281)))

(declare-fun b!2029479 () Bool)

(declare-fun res!889985 () Bool)

(assert (=> b!2029479 (=> (not res!889985) (not e!1281928))))

(assert (=> b!2029479 (= res!889985 (not call!124537))))

(declare-fun b!2029480 () Bool)

(assert (=> b!2029480 (= e!1281929 e!1281934)))

(declare-fun res!889983 () Bool)

(assert (=> b!2029480 (=> (not res!889983) (not e!1281934))))

(assert (=> b!2029480 (= res!889983 (not lt!762281))))

(declare-fun b!2029481 () Bool)

(assert (=> b!2029481 (= e!1281928 (= (head!4584 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761878))))) (c!328192 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!761878)))))))))

(declare-fun b!2029482 () Bool)

(assert (=> b!2029482 (= e!1281931 (nullable!1653 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!761878))))))))

(declare-fun b!2029483 () Bool)

(assert (=> b!2029483 (= e!1281933 e!1281932)))

(declare-fun c!328439 () Bool)

(assert (=> b!2029483 (= c!328439 (is-EmptyLang!5416 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!761878))))))))

(declare-fun bm!124532 () Bool)

(assert (=> bm!124532 (= call!124537 (isEmpty!13854 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761878))))))))

(declare-fun b!2029484 () Bool)

(declare-fun res!889987 () Bool)

(assert (=> b!2029484 (=> res!889987 e!1281929)))

(assert (=> b!2029484 (= res!889987 (not (is-ElementMatch!5416 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!761878)))))))))

(assert (=> b!2029484 (= e!1281932 e!1281929)))

(declare-fun b!2029485 () Bool)

(assert (=> b!2029485 (= e!1281933 (= lt!762281 call!124537))))

(assert (= (and d!620641 c!328438) b!2029482))

(assert (= (and d!620641 (not c!328438)) b!2029472))

(assert (= (and d!620641 c!328437) b!2029485))

(assert (= (and d!620641 (not c!328437)) b!2029483))

(assert (= (and b!2029483 c!328439) b!2029473))

(assert (= (and b!2029483 (not c!328439)) b!2029484))

(assert (= (and b!2029484 (not res!889987)) b!2029478))

(assert (= (and b!2029478 res!889989) b!2029479))

(assert (= (and b!2029479 res!889985) b!2029477))

(assert (= (and b!2029477 res!889990) b!2029481))

(assert (= (and b!2029478 (not res!889986)) b!2029480))

(assert (= (and b!2029480 res!889983) b!2029476))

(assert (= (and b!2029476 (not res!889984)) b!2029474))

(assert (= (and b!2029474 (not res!889988)) b!2029475))

(assert (= (or b!2029485 b!2029476 b!2029479) bm!124532))

(assert (=> b!2029477 m!2467587))

(declare-fun m!2469035 () Bool)

(assert (=> b!2029477 m!2469035))

(assert (=> b!2029477 m!2469035))

(declare-fun m!2469037 () Bool)

(assert (=> b!2029477 m!2469037))

(declare-fun m!2469039 () Bool)

(assert (=> b!2029482 m!2469039))

(assert (=> b!2029475 m!2467587))

(declare-fun m!2469041 () Bool)

(assert (=> b!2029475 m!2469041))

(assert (=> b!2029472 m!2467587))

(assert (=> b!2029472 m!2469041))

(assert (=> b!2029472 m!2469041))

(declare-fun m!2469043 () Bool)

(assert (=> b!2029472 m!2469043))

(assert (=> b!2029472 m!2467587))

(assert (=> b!2029472 m!2469035))

(assert (=> b!2029472 m!2469043))

(assert (=> b!2029472 m!2469035))

(declare-fun m!2469045 () Bool)

(assert (=> b!2029472 m!2469045))

(assert (=> b!2029481 m!2467587))

(assert (=> b!2029481 m!2469041))

(assert (=> d!620641 m!2467587))

(declare-fun m!2469047 () Bool)

(assert (=> d!620641 m!2469047))

(declare-fun m!2469049 () Bool)

(assert (=> d!620641 m!2469049))

(assert (=> b!2029474 m!2467587))

(assert (=> b!2029474 m!2469035))

(assert (=> b!2029474 m!2469035))

(assert (=> b!2029474 m!2469037))

(assert (=> bm!124532 m!2467587))

(assert (=> bm!124532 m!2469047))

(assert (=> b!2028457 d!620641))

(declare-fun d!620643 () Bool)

(assert (=> d!620643 (= (get!7053 lt!761878) (v!26989 lt!761878))))

(assert (=> b!2028457 d!620643))

(declare-fun d!620645 () Bool)

(assert (=> d!620645 (= (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761878)))) (list!9068 (c!328191 (charsOf!2531 (_1!11913 (get!7053 lt!761878))))))))

(declare-fun bs!420835 () Bool)

(assert (= bs!420835 d!620645))

(declare-fun m!2469051 () Bool)

(assert (=> bs!420835 m!2469051))

(assert (=> b!2028457 d!620645))

(declare-fun d!620647 () Bool)

(declare-fun lt!762282 () BalanceConc!14672)

(assert (=> d!620647 (= (list!9066 lt!762282) (originalCharacters!4798 (_1!11913 (get!7053 lt!761878))))))

(assert (=> d!620647 (= lt!762282 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761878))))) (value!125336 (_1!11913 (get!7053 lt!761878)))))))

(assert (=> d!620647 (= (charsOf!2531 (_1!11913 (get!7053 lt!761878))) lt!762282)))

(declare-fun b_lambda!68327 () Bool)

(assert (=> (not b_lambda!68327) (not d!620647)))

(declare-fun t!190288 () Bool)

(declare-fun tb!127981 () Bool)

(assert (=> (and b!2028173 (= (toChars!5523 (transformation!3991 (h!27609 rules!3198))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761878)))))) t!190288) tb!127981))

(declare-fun b!2029486 () Bool)

(declare-fun e!1281935 () Bool)

(declare-fun tp!603339 () Bool)

(assert (=> b!2029486 (= e!1281935 (and (inv!29393 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761878))))) (value!125336 (_1!11913 (get!7053 lt!761878)))))) tp!603339))))

(declare-fun result!153144 () Bool)

(assert (=> tb!127981 (= result!153144 (and (inv!29394 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761878))))) (value!125336 (_1!11913 (get!7053 lt!761878))))) e!1281935))))

(assert (= tb!127981 b!2029486))

(declare-fun m!2469053 () Bool)

(assert (=> b!2029486 m!2469053))

(declare-fun m!2469055 () Bool)

(assert (=> tb!127981 m!2469055))

(assert (=> d!620647 t!190288))

(declare-fun b_and!161573 () Bool)

(assert (= b_and!161565 (and (=> t!190288 result!153144) b_and!161573)))

(declare-fun tb!127983 () Bool)

(declare-fun t!190290 () Bool)

(assert (=> (and b!2028151 (= (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761878)))))) t!190290) tb!127983))

(declare-fun result!153146 () Bool)

(assert (= result!153146 result!153144))

(assert (=> d!620647 t!190290))

(declare-fun b_and!161575 () Bool)

(assert (= b_and!161569 (and (=> t!190290 result!153146) b_and!161575)))

(declare-fun tb!127985 () Bool)

(declare-fun t!190292 () Bool)

(assert (=> (and b!2028164 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761878)))))) t!190292) tb!127985))

(declare-fun result!153148 () Bool)

(assert (= result!153148 result!153144))

(assert (=> d!620647 t!190292))

(declare-fun b_and!161577 () Bool)

(assert (= b_and!161567 (and (=> t!190292 result!153148) b_and!161577)))

(declare-fun tb!127987 () Bool)

(declare-fun t!190294 () Bool)

(assert (=> (and b!2029070 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761878)))))) t!190294) tb!127987))

(declare-fun result!153150 () Bool)

(assert (= result!153150 result!153144))

(assert (=> d!620647 t!190294))

(declare-fun b_and!161579 () Bool)

(assert (= b_and!161563 (and (=> t!190294 result!153150) b_and!161579)))

(declare-fun tb!127989 () Bool)

(declare-fun t!190296 () Bool)

(assert (=> (and b!2029045 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761878)))))) t!190296) tb!127989))

(declare-fun result!153152 () Bool)

(assert (= result!153152 result!153144))

(assert (=> d!620647 t!190296))

(declare-fun b_and!161581 () Bool)

(assert (= b_and!161571 (and (=> t!190296 result!153152) b_and!161581)))

(declare-fun m!2469057 () Bool)

(assert (=> d!620647 m!2469057))

(declare-fun m!2469059 () Bool)

(assert (=> d!620647 m!2469059))

(assert (=> b!2028457 d!620647))

(declare-fun d!620649 () Bool)

(declare-fun c!328442 () Bool)

(assert (=> d!620649 (= c!328442 (is-Nil!22208 rules!3198))))

(declare-fun e!1281938 () (Set Rule!7782))

(assert (=> d!620649 (= (content!3280 rules!3198) e!1281938)))

(declare-fun b!2029491 () Bool)

(assert (=> b!2029491 (= e!1281938 (as set.empty (Set Rule!7782)))))

(declare-fun b!2029492 () Bool)

(assert (=> b!2029492 (= e!1281938 (set.union (set.insert (h!27609 rules!3198) (as set.empty (Set Rule!7782))) (content!3280 (t!190125 rules!3198))))))

(assert (= (and d!620649 c!328442) b!2029491))

(assert (= (and d!620649 (not c!328442)) b!2029492))

(declare-fun m!2469061 () Bool)

(assert (=> b!2029492 m!2469061))

(assert (=> b!2029492 m!2468767))

(assert (=> d!620477 d!620649))

(declare-fun b!2029493 () Bool)

(declare-fun e!1281940 () List!22289)

(assert (=> b!2029493 (= e!1281940 lt!761704)))

(declare-fun lt!762283 () List!22289)

(declare-fun b!2029496 () Bool)

(declare-fun e!1281939 () Bool)

(assert (=> b!2029496 (= e!1281939 (or (not (= lt!761704 Nil!22207)) (= lt!762283 (t!190124 lt!761731))))))

(declare-fun d!620651 () Bool)

(assert (=> d!620651 e!1281939))

(declare-fun res!889992 () Bool)

(assert (=> d!620651 (=> (not res!889992) (not e!1281939))))

(assert (=> d!620651 (= res!889992 (= (content!3278 lt!762283) (set.union (content!3278 (t!190124 lt!761731)) (content!3278 lt!761704))))))

(assert (=> d!620651 (= lt!762283 e!1281940)))

(declare-fun c!328443 () Bool)

(assert (=> d!620651 (= c!328443 (is-Nil!22207 (t!190124 lt!761731)))))

(assert (=> d!620651 (= (++!6004 (t!190124 lt!761731) lt!761704) lt!762283)))

(declare-fun b!2029494 () Bool)

(assert (=> b!2029494 (= e!1281940 (Cons!22207 (h!27608 (t!190124 lt!761731)) (++!6004 (t!190124 (t!190124 lt!761731)) lt!761704)))))

(declare-fun b!2029495 () Bool)

(declare-fun res!889991 () Bool)

(assert (=> b!2029495 (=> (not res!889991) (not e!1281939))))

(assert (=> b!2029495 (= res!889991 (= (size!17349 lt!762283) (+ (size!17349 (t!190124 lt!761731)) (size!17349 lt!761704))))))

(assert (= (and d!620651 c!328443) b!2029493))

(assert (= (and d!620651 (not c!328443)) b!2029494))

(assert (= (and d!620651 res!889992) b!2029495))

(assert (= (and b!2029495 res!889991) b!2029496))

(declare-fun m!2469063 () Bool)

(assert (=> d!620651 m!2469063))

(declare-fun m!2469065 () Bool)

(assert (=> d!620651 m!2469065))

(assert (=> d!620651 m!2467527))

(declare-fun m!2469067 () Bool)

(assert (=> b!2029494 m!2469067))

(declare-fun m!2469069 () Bool)

(assert (=> b!2029495 m!2469069))

(declare-fun m!2469071 () Bool)

(assert (=> b!2029495 m!2469071))

(assert (=> b!2029495 m!2467535))

(assert (=> b!2028820 d!620651))

(declare-fun d!620653 () Bool)

(assert (=> d!620653 (= (list!9066 (ite c!328346 call!124485 call!124484)) (list!9068 (c!328191 (ite c!328346 call!124485 call!124484))))))

(declare-fun bs!420836 () Bool)

(assert (= bs!420836 d!620653))

(declare-fun m!2469073 () Bool)

(assert (=> bs!420836 m!2469073))

(assert (=> bm!124483 d!620653))

(assert (=> d!620331 d!620649))

(declare-fun d!620655 () Bool)

(declare-fun res!889993 () Bool)

(declare-fun e!1281941 () Bool)

(assert (=> d!620655 (=> res!889993 e!1281941)))

(assert (=> d!620655 (= res!889993 (not (is-Cons!22208 (t!190125 rules!3198))))))

(assert (=> d!620655 (= (sepAndNonSepRulesDisjointChars!1089 rules!3198 (t!190125 rules!3198)) e!1281941)))

(declare-fun b!2029497 () Bool)

(declare-fun e!1281942 () Bool)

(assert (=> b!2029497 (= e!1281941 e!1281942)))

(declare-fun res!889994 () Bool)

(assert (=> b!2029497 (=> (not res!889994) (not e!1281942))))

(assert (=> b!2029497 (= res!889994 (ruleDisjointCharsFromAllFromOtherType!492 (h!27609 (t!190125 rules!3198)) rules!3198))))

(declare-fun b!2029498 () Bool)

(assert (=> b!2029498 (= e!1281942 (sepAndNonSepRulesDisjointChars!1089 rules!3198 (t!190125 (t!190125 rules!3198))))))

(assert (= (and d!620655 (not res!889993)) b!2029497))

(assert (= (and b!2029497 res!889994) b!2029498))

(declare-fun m!2469075 () Bool)

(assert (=> b!2029497 m!2469075))

(declare-fun m!2469077 () Bool)

(assert (=> b!2029498 m!2469077))

(assert (=> b!2028769 d!620655))

(assert (=> b!2028676 d!620605))

(declare-fun d!620657 () Bool)

(declare-fun c!328444 () Bool)

(assert (=> d!620657 (= c!328444 (is-Nil!22207 lt!762037))))

(declare-fun e!1281943 () (Set C!10978))

(assert (=> d!620657 (= (content!3278 lt!762037) e!1281943)))

(declare-fun b!2029499 () Bool)

(assert (=> b!2029499 (= e!1281943 (as set.empty (Set C!10978)))))

(declare-fun b!2029500 () Bool)

(assert (=> b!2029500 (= e!1281943 (set.union (set.insert (h!27608 lt!762037) (as set.empty (Set C!10978))) (content!3278 (t!190124 lt!762037))))))

(assert (= (and d!620657 c!328444) b!2029499))

(assert (= (and d!620657 (not c!328444)) b!2029500))

(declare-fun m!2469079 () Bool)

(assert (=> b!2029500 m!2469079))

(declare-fun m!2469081 () Bool)

(assert (=> b!2029500 m!2469081))

(assert (=> d!620373 d!620657))

(declare-fun d!620659 () Bool)

(declare-fun c!328445 () Bool)

(assert (=> d!620659 (= c!328445 (is-Nil!22207 lt!761731))))

(declare-fun e!1281944 () (Set C!10978))

(assert (=> d!620659 (= (content!3278 lt!761731) e!1281944)))

(declare-fun b!2029501 () Bool)

(assert (=> b!2029501 (= e!1281944 (as set.empty (Set C!10978)))))

(declare-fun b!2029502 () Bool)

(assert (=> b!2029502 (= e!1281944 (set.union (set.insert (h!27608 lt!761731) (as set.empty (Set C!10978))) (content!3278 (t!190124 lt!761731))))))

(assert (= (and d!620659 c!328445) b!2029501))

(assert (= (and d!620659 (not c!328445)) b!2029502))

(declare-fun m!2469083 () Bool)

(assert (=> b!2029502 m!2469083))

(assert (=> b!2029502 m!2469065))

(assert (=> d!620373 d!620659))

(declare-fun d!620661 () Bool)

(declare-fun c!328446 () Bool)

(assert (=> d!620661 (= c!328446 (is-Nil!22207 lt!761704))))

(declare-fun e!1281945 () (Set C!10978))

(assert (=> d!620661 (= (content!3278 lt!761704) e!1281945)))

(declare-fun b!2029503 () Bool)

(assert (=> b!2029503 (= e!1281945 (as set.empty (Set C!10978)))))

(declare-fun b!2029504 () Bool)

(assert (=> b!2029504 (= e!1281945 (set.union (set.insert (h!27608 lt!761704) (as set.empty (Set C!10978))) (content!3278 (t!190124 lt!761704))))))

(assert (= (and d!620661 c!328446) b!2029503))

(assert (= (and d!620661 (not c!328446)) b!2029504))

(declare-fun m!2469085 () Bool)

(assert (=> b!2029504 m!2469085))

(declare-fun m!2469087 () Bool)

(assert (=> b!2029504 m!2469087))

(assert (=> d!620373 d!620661))

(declare-fun b!2029505 () Bool)

(declare-fun e!1281947 () List!22289)

(assert (=> b!2029505 (= e!1281947 lt!761715)))

(declare-fun lt!762284 () List!22289)

(declare-fun b!2029508 () Bool)

(declare-fun e!1281946 () Bool)

(assert (=> b!2029508 (= e!1281946 (or (not (= lt!761715 Nil!22207)) (= lt!762284 (list!9066 (charsOf!2531 (h!27610 tokens!598))))))))

(declare-fun d!620663 () Bool)

(assert (=> d!620663 e!1281946))

(declare-fun res!889996 () Bool)

(assert (=> d!620663 (=> (not res!889996) (not e!1281946))))

(assert (=> d!620663 (= res!889996 (= (content!3278 lt!762284) (set.union (content!3278 (list!9066 (charsOf!2531 (h!27610 tokens!598)))) (content!3278 lt!761715))))))

(assert (=> d!620663 (= lt!762284 e!1281947)))

(declare-fun c!328447 () Bool)

(assert (=> d!620663 (= c!328447 (is-Nil!22207 (list!9066 (charsOf!2531 (h!27610 tokens!598)))))))

(assert (=> d!620663 (= (++!6004 (list!9066 (charsOf!2531 (h!27610 tokens!598))) lt!761715) lt!762284)))

(declare-fun b!2029506 () Bool)

(assert (=> b!2029506 (= e!1281947 (Cons!22207 (h!27608 (list!9066 (charsOf!2531 (h!27610 tokens!598)))) (++!6004 (t!190124 (list!9066 (charsOf!2531 (h!27610 tokens!598)))) lt!761715)))))

(declare-fun b!2029507 () Bool)

(declare-fun res!889995 () Bool)

(assert (=> b!2029507 (=> (not res!889995) (not e!1281946))))

(assert (=> b!2029507 (= res!889995 (= (size!17349 lt!762284) (+ (size!17349 (list!9066 (charsOf!2531 (h!27610 tokens!598)))) (size!17349 lt!761715))))))

(assert (= (and d!620663 c!328447) b!2029505))

(assert (= (and d!620663 (not c!328447)) b!2029506))

(assert (= (and d!620663 res!889996) b!2029507))

(assert (= (and b!2029507 res!889995) b!2029508))

(declare-fun m!2469089 () Bool)

(assert (=> d!620663 m!2469089))

(assert (=> d!620663 m!2467471))

(declare-fun m!2469091 () Bool)

(assert (=> d!620663 m!2469091))

(assert (=> d!620663 m!2468007))

(declare-fun m!2469093 () Bool)

(assert (=> b!2029506 m!2469093))

(declare-fun m!2469095 () Bool)

(assert (=> b!2029507 m!2469095))

(assert (=> b!2029507 m!2467471))

(declare-fun m!2469097 () Bool)

(assert (=> b!2029507 m!2469097))

(assert (=> b!2029507 m!2468013))

(assert (=> d!620393 d!620663))

(declare-fun d!620665 () Bool)

(assert (=> d!620665 (= (maxPrefix!2040 thiss!23328 rules!3198 (++!6004 (list!9066 (charsOf!2531 (h!27610 tokens!598))) lt!761715)) (Some!4664 (tuple2!20889 (h!27610 tokens!598) lt!761715)))))

(assert (=> d!620665 true))

(declare-fun _$49!181 () Unit!36865)

(assert (=> d!620665 (= (choose!12371 thiss!23328 rules!3198 (h!27610 tokens!598) (rule!6220 (h!27610 tokens!598)) lt!761715 (rule!6220 separatorToken!354)) _$49!181)))

(declare-fun bs!420837 () Bool)

(assert (= bs!420837 d!620665))

(assert (=> bs!420837 m!2467173))

(assert (=> bs!420837 m!2467173))

(assert (=> bs!420837 m!2467471))

(assert (=> bs!420837 m!2467471))

(assert (=> bs!420837 m!2468207))

(assert (=> bs!420837 m!2468207))

(assert (=> bs!420837 m!2468209))

(assert (=> d!620393 d!620665))

(declare-fun b!2029509 () Bool)

(declare-fun res!890000 () Bool)

(declare-fun e!1281950 () Bool)

(assert (=> b!2029509 (=> (not res!890000) (not e!1281950))))

(declare-fun lt!762285 () Option!4665)

(assert (=> b!2029509 (= res!890000 (< (size!17349 (_2!11913 (get!7053 lt!762285))) (size!17349 (++!6004 (list!9066 (charsOf!2531 (h!27610 tokens!598))) lt!761715))))))

(declare-fun b!2029510 () Bool)

(declare-fun res!890002 () Bool)

(assert (=> b!2029510 (=> (not res!890002) (not e!1281950))))

(assert (=> b!2029510 (= res!890002 (= (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762285)))) (originalCharacters!4798 (_1!11913 (get!7053 lt!762285)))))))

(declare-fun b!2029511 () Bool)

(assert (=> b!2029511 (= e!1281950 (contains!4097 rules!3198 (rule!6220 (_1!11913 (get!7053 lt!762285)))))))

(declare-fun b!2029512 () Bool)

(declare-fun e!1281948 () Option!4665)

(declare-fun call!124538 () Option!4665)

(assert (=> b!2029512 (= e!1281948 call!124538)))

(declare-fun d!620667 () Bool)

(declare-fun e!1281949 () Bool)

(assert (=> d!620667 e!1281949))

(declare-fun res!889997 () Bool)

(assert (=> d!620667 (=> res!889997 e!1281949)))

(assert (=> d!620667 (= res!889997 (isEmpty!13861 lt!762285))))

(assert (=> d!620667 (= lt!762285 e!1281948)))

(declare-fun c!328448 () Bool)

(assert (=> d!620667 (= c!328448 (and (is-Cons!22208 rules!3198) (is-Nil!22208 (t!190125 rules!3198))))))

(declare-fun lt!762289 () Unit!36865)

(declare-fun lt!762288 () Unit!36865)

(assert (=> d!620667 (= lt!762289 lt!762288)))

(assert (=> d!620667 (isPrefix!1984 (++!6004 (list!9066 (charsOf!2531 (h!27610 tokens!598))) lt!761715) (++!6004 (list!9066 (charsOf!2531 (h!27610 tokens!598))) lt!761715))))

(assert (=> d!620667 (= lt!762288 (lemmaIsPrefixRefl!1302 (++!6004 (list!9066 (charsOf!2531 (h!27610 tokens!598))) lt!761715) (++!6004 (list!9066 (charsOf!2531 (h!27610 tokens!598))) lt!761715)))))

(assert (=> d!620667 (rulesValidInductive!1383 thiss!23328 rules!3198)))

(assert (=> d!620667 (= (maxPrefix!2040 thiss!23328 rules!3198 (++!6004 (list!9066 (charsOf!2531 (h!27610 tokens!598))) lt!761715)) lt!762285)))

(declare-fun b!2029513 () Bool)

(declare-fun res!889999 () Bool)

(assert (=> b!2029513 (=> (not res!889999) (not e!1281950))))

(assert (=> b!2029513 (= res!889999 (matchR!2682 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762285)))) (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762285))))))))

(declare-fun b!2029514 () Bool)

(declare-fun res!890001 () Bool)

(assert (=> b!2029514 (=> (not res!890001) (not e!1281950))))

(assert (=> b!2029514 (= res!890001 (= (++!6004 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762285)))) (_2!11913 (get!7053 lt!762285))) (++!6004 (list!9066 (charsOf!2531 (h!27610 tokens!598))) lt!761715)))))

(declare-fun b!2029515 () Bool)

(declare-fun lt!762286 () Option!4665)

(declare-fun lt!762287 () Option!4665)

(assert (=> b!2029515 (= e!1281948 (ite (and (is-None!4664 lt!762286) (is-None!4664 lt!762287)) None!4664 (ite (is-None!4664 lt!762287) lt!762286 (ite (is-None!4664 lt!762286) lt!762287 (ite (>= (size!17347 (_1!11913 (v!26989 lt!762286))) (size!17347 (_1!11913 (v!26989 lt!762287)))) lt!762286 lt!762287)))))))

(assert (=> b!2029515 (= lt!762286 call!124538)))

(assert (=> b!2029515 (= lt!762287 (maxPrefix!2040 thiss!23328 (t!190125 rules!3198) (++!6004 (list!9066 (charsOf!2531 (h!27610 tokens!598))) lt!761715)))))

(declare-fun b!2029516 () Bool)

(declare-fun res!890003 () Bool)

(assert (=> b!2029516 (=> (not res!890003) (not e!1281950))))

(assert (=> b!2029516 (= res!890003 (= (value!125336 (_1!11913 (get!7053 lt!762285))) (apply!5846 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762285)))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!762285)))))))))

(declare-fun b!2029517 () Bool)

(assert (=> b!2029517 (= e!1281949 e!1281950)))

(declare-fun res!889998 () Bool)

(assert (=> b!2029517 (=> (not res!889998) (not e!1281950))))

(assert (=> b!2029517 (= res!889998 (isDefined!3954 lt!762285))))

(declare-fun bm!124533 () Bool)

(assert (=> bm!124533 (= call!124538 (maxPrefixOneRule!1266 thiss!23328 (h!27609 rules!3198) (++!6004 (list!9066 (charsOf!2531 (h!27610 tokens!598))) lt!761715)))))

(assert (= (and d!620667 c!328448) b!2029512))

(assert (= (and d!620667 (not c!328448)) b!2029515))

(assert (= (or b!2029512 b!2029515) bm!124533))

(assert (= (and d!620667 (not res!889997)) b!2029517))

(assert (= (and b!2029517 res!889998) b!2029510))

(assert (= (and b!2029510 res!890002) b!2029509))

(assert (= (and b!2029509 res!890000) b!2029514))

(assert (= (and b!2029514 res!890001) b!2029516))

(assert (= (and b!2029516 res!890003) b!2029513))

(assert (= (and b!2029513 res!889999) b!2029511))

(declare-fun m!2469099 () Bool)

(assert (=> b!2029509 m!2469099))

(declare-fun m!2469101 () Bool)

(assert (=> b!2029509 m!2469101))

(assert (=> b!2029509 m!2468207))

(declare-fun m!2469103 () Bool)

(assert (=> b!2029509 m!2469103))

(assert (=> b!2029514 m!2469099))

(declare-fun m!2469105 () Bool)

(assert (=> b!2029514 m!2469105))

(assert (=> b!2029514 m!2469105))

(declare-fun m!2469107 () Bool)

(assert (=> b!2029514 m!2469107))

(assert (=> b!2029514 m!2469107))

(declare-fun m!2469109 () Bool)

(assert (=> b!2029514 m!2469109))

(assert (=> bm!124533 m!2468207))

(declare-fun m!2469111 () Bool)

(assert (=> bm!124533 m!2469111))

(declare-fun m!2469113 () Bool)

(assert (=> b!2029517 m!2469113))

(assert (=> b!2029516 m!2469099))

(declare-fun m!2469115 () Bool)

(assert (=> b!2029516 m!2469115))

(assert (=> b!2029516 m!2469115))

(declare-fun m!2469117 () Bool)

(assert (=> b!2029516 m!2469117))

(assert (=> b!2029515 m!2468207))

(declare-fun m!2469119 () Bool)

(assert (=> b!2029515 m!2469119))

(assert (=> b!2029511 m!2469099))

(declare-fun m!2469121 () Bool)

(assert (=> b!2029511 m!2469121))

(declare-fun m!2469123 () Bool)

(assert (=> d!620667 m!2469123))

(assert (=> d!620667 m!2468207))

(assert (=> d!620667 m!2468207))

(declare-fun m!2469125 () Bool)

(assert (=> d!620667 m!2469125))

(assert (=> d!620667 m!2468207))

(assert (=> d!620667 m!2468207))

(declare-fun m!2469127 () Bool)

(assert (=> d!620667 m!2469127))

(assert (=> d!620667 m!2467623))

(assert (=> b!2029513 m!2469099))

(assert (=> b!2029513 m!2469105))

(assert (=> b!2029513 m!2469105))

(assert (=> b!2029513 m!2469107))

(assert (=> b!2029513 m!2469107))

(declare-fun m!2469129 () Bool)

(assert (=> b!2029513 m!2469129))

(assert (=> b!2029510 m!2469099))

(assert (=> b!2029510 m!2469105))

(assert (=> b!2029510 m!2469105))

(assert (=> b!2029510 m!2469107))

(assert (=> d!620393 d!620667))

(assert (=> d!620393 d!620299))

(assert (=> d!620393 d!620465))

(declare-fun d!620669 () Bool)

(assert (=> d!620669 (= (list!9066 (charsOf!2531 (h!27610 tokens!598))) (list!9068 (c!328191 (charsOf!2531 (h!27610 tokens!598)))))))

(declare-fun bs!420838 () Bool)

(assert (= bs!420838 d!620669))

(declare-fun m!2469131 () Bool)

(assert (=> bs!420838 m!2469131))

(assert (=> d!620393 d!620669))

(declare-fun d!620671 () Bool)

(assert (=> d!620671 (= (isEmpty!13862 lt!761710) (not (is-Some!4665 lt!761710)))))

(assert (=> d!620291 d!620671))

(declare-fun d!620673 () Bool)

(declare-fun lt!762290 () Bool)

(assert (=> d!620673 (= lt!762290 (set.member (rule!6220 (_1!11913 (get!7053 lt!761886))) (content!3280 rules!3198)))))

(declare-fun e!1281951 () Bool)

(assert (=> d!620673 (= lt!762290 e!1281951)))

(declare-fun res!890004 () Bool)

(assert (=> d!620673 (=> (not res!890004) (not e!1281951))))

(assert (=> d!620673 (= res!890004 (is-Cons!22208 rules!3198))))

(assert (=> d!620673 (= (contains!4097 rules!3198 (rule!6220 (_1!11913 (get!7053 lt!761886)))) lt!762290)))

(declare-fun b!2029518 () Bool)

(declare-fun e!1281952 () Bool)

(assert (=> b!2029518 (= e!1281951 e!1281952)))

(declare-fun res!890005 () Bool)

(assert (=> b!2029518 (=> res!890005 e!1281952)))

(assert (=> b!2029518 (= res!890005 (= (h!27609 rules!3198) (rule!6220 (_1!11913 (get!7053 lt!761886)))))))

(declare-fun b!2029519 () Bool)

(assert (=> b!2029519 (= e!1281952 (contains!4097 (t!190125 rules!3198) (rule!6220 (_1!11913 (get!7053 lt!761886)))))))

(assert (= (and d!620673 res!890004) b!2029518))

(assert (= (and b!2029518 (not res!890005)) b!2029519))

(assert (=> d!620673 m!2467943))

(declare-fun m!2469133 () Bool)

(assert (=> d!620673 m!2469133))

(declare-fun m!2469135 () Bool)

(assert (=> b!2029519 m!2469135))

(assert (=> b!2028476 d!620673))

(assert (=> b!2028476 d!620599))

(declare-fun d!620675 () Bool)

(declare-fun charsToBigInt!0 (List!22288 Int) Int)

(assert (=> d!620675 (= (inv!15 (value!125336 (h!27610 tokens!598))) (= (charsToBigInt!0 (text!29338 (value!125336 (h!27610 tokens!598))) 0) (value!125331 (value!125336 (h!27610 tokens!598)))))))

(declare-fun bs!420839 () Bool)

(assert (= bs!420839 d!620675))

(declare-fun m!2469137 () Bool)

(assert (=> bs!420839 m!2469137))

(assert (=> b!2028702 d!620675))

(declare-fun d!620677 () Bool)

(declare-fun lt!762291 () Bool)

(assert (=> d!620677 (= lt!762291 (set.member lt!761709 (content!3278 (usedCharacters!429 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))))

(declare-fun e!1281953 () Bool)

(assert (=> d!620677 (= lt!762291 e!1281953)))

(declare-fun res!890006 () Bool)

(assert (=> d!620677 (=> (not res!890006) (not e!1281953))))

(assert (=> d!620677 (= res!890006 (is-Cons!22207 (usedCharacters!429 (regex!3991 (rule!6220 (h!27610 tokens!598))))))))

(assert (=> d!620677 (= (contains!4098 (usedCharacters!429 (regex!3991 (rule!6220 (h!27610 tokens!598)))) lt!761709) lt!762291)))

(declare-fun b!2029520 () Bool)

(declare-fun e!1281954 () Bool)

(assert (=> b!2029520 (= e!1281953 e!1281954)))

(declare-fun res!890007 () Bool)

(assert (=> b!2029520 (=> res!890007 e!1281954)))

(assert (=> b!2029520 (= res!890007 (= (h!27608 (usedCharacters!429 (regex!3991 (rule!6220 (h!27610 tokens!598))))) lt!761709))))

(declare-fun b!2029521 () Bool)

(assert (=> b!2029521 (= e!1281954 (contains!4098 (t!190124 (usedCharacters!429 (regex!3991 (rule!6220 (h!27610 tokens!598))))) lt!761709))))

(assert (= (and d!620677 res!890006) b!2029520))

(assert (= (and b!2029520 (not res!890007)) b!2029521))

(assert (=> d!620677 m!2467271))

(declare-fun m!2469139 () Bool)

(assert (=> d!620677 m!2469139))

(declare-fun m!2469141 () Bool)

(assert (=> d!620677 m!2469141))

(declare-fun m!2469143 () Bool)

(assert (=> b!2029521 m!2469143))

(assert (=> d!620361 d!620677))

(assert (=> d!620361 d!620369))

(declare-fun d!620679 () Bool)

(assert (=> d!620679 (not (contains!4098 (usedCharacters!429 (regex!3991 (rule!6220 (h!27610 tokens!598)))) lt!761709))))

(assert (=> d!620679 true))

(declare-fun _$73!154 () Unit!36865)

(assert (=> d!620679 (= (choose!12367 thiss!23328 rules!3198 rules!3198 (rule!6220 (h!27610 tokens!598)) (rule!6220 separatorToken!354) lt!761709) _$73!154)))

(declare-fun bs!420840 () Bool)

(assert (= bs!420840 d!620679))

(assert (=> bs!420840 m!2467271))

(assert (=> bs!420840 m!2467271))

(assert (=> bs!420840 m!2468029))

(assert (=> d!620361 d!620679))

(assert (=> d!620361 d!620387))

(declare-fun d!620681 () Bool)

(assert (=> d!620681 (= (nullable!1653 (regex!3991 lt!761717)) (nullableFct!381 (regex!3991 lt!761717)))))

(declare-fun bs!420841 () Bool)

(assert (= bs!420841 d!620681))

(declare-fun m!2469145 () Bool)

(assert (=> bs!420841 m!2469145))

(assert (=> b!2028928 d!620681))

(declare-fun d!620683 () Bool)

(assert (=> d!620683 (= (isEmpty!13854 lt!761718) (is-Nil!22207 lt!761718))))

(assert (=> d!620479 d!620683))

(declare-fun bm!124540 () Bool)

(declare-fun call!124547 () Bool)

(declare-fun call!124546 () Bool)

(assert (=> bm!124540 (= call!124547 call!124546)))

(declare-fun d!620685 () Bool)

(declare-fun res!890019 () Bool)

(declare-fun e!1281971 () Bool)

(assert (=> d!620685 (=> res!890019 e!1281971)))

(assert (=> d!620685 (= res!890019 (is-ElementMatch!5416 (regex!3991 lt!761721)))))

(assert (=> d!620685 (= (validRegex!2179 (regex!3991 lt!761721)) e!1281971)))

(declare-fun b!2029540 () Bool)

(declare-fun e!1281970 () Bool)

(assert (=> b!2029540 (= e!1281970 call!124547)))

(declare-fun b!2029541 () Bool)

(declare-fun res!890018 () Bool)

(declare-fun e!1281969 () Bool)

(assert (=> b!2029541 (=> (not res!890018) (not e!1281969))))

(declare-fun call!124545 () Bool)

(assert (=> b!2029541 (= res!890018 call!124545)))

(declare-fun e!1281974 () Bool)

(assert (=> b!2029541 (= e!1281974 e!1281969)))

(declare-fun c!328455 () Bool)

(declare-fun c!328454 () Bool)

(declare-fun bm!124541 () Bool)

(assert (=> bm!124541 (= call!124546 (validRegex!2179 (ite c!328455 (reg!5745 (regex!3991 lt!761721)) (ite c!328454 (regTwo!11345 (regex!3991 lt!761721)) (regTwo!11344 (regex!3991 lt!761721))))))))

(declare-fun b!2029542 () Bool)

(declare-fun e!1281975 () Bool)

(assert (=> b!2029542 (= e!1281975 e!1281970)))

(declare-fun res!890022 () Bool)

(assert (=> b!2029542 (=> (not res!890022) (not e!1281970))))

(assert (=> b!2029542 (= res!890022 call!124545)))

(declare-fun b!2029543 () Bool)

(declare-fun res!890020 () Bool)

(assert (=> b!2029543 (=> res!890020 e!1281975)))

(assert (=> b!2029543 (= res!890020 (not (is-Concat!9544 (regex!3991 lt!761721))))))

(assert (=> b!2029543 (= e!1281974 e!1281975)))

(declare-fun b!2029544 () Bool)

(declare-fun e!1281973 () Bool)

(assert (=> b!2029544 (= e!1281973 e!1281974)))

(assert (=> b!2029544 (= c!328454 (is-Union!5416 (regex!3991 lt!761721)))))

(declare-fun bm!124542 () Bool)

(assert (=> bm!124542 (= call!124545 (validRegex!2179 (ite c!328454 (regOne!11345 (regex!3991 lt!761721)) (regOne!11344 (regex!3991 lt!761721)))))))

(declare-fun b!2029545 () Bool)

(declare-fun e!1281972 () Bool)

(assert (=> b!2029545 (= e!1281973 e!1281972)))

(declare-fun res!890021 () Bool)

(assert (=> b!2029545 (= res!890021 (not (nullable!1653 (reg!5745 (regex!3991 lt!761721)))))))

(assert (=> b!2029545 (=> (not res!890021) (not e!1281972))))

(declare-fun b!2029546 () Bool)

(assert (=> b!2029546 (= e!1281972 call!124546)))

(declare-fun b!2029547 () Bool)

(assert (=> b!2029547 (= e!1281969 call!124547)))

(declare-fun b!2029548 () Bool)

(assert (=> b!2029548 (= e!1281971 e!1281973)))

(assert (=> b!2029548 (= c!328455 (is-Star!5416 (regex!3991 lt!761721)))))

(assert (= (and d!620685 (not res!890019)) b!2029548))

(assert (= (and b!2029548 c!328455) b!2029545))

(assert (= (and b!2029548 (not c!328455)) b!2029544))

(assert (= (and b!2029545 res!890021) b!2029546))

(assert (= (and b!2029544 c!328454) b!2029541))

(assert (= (and b!2029544 (not c!328454)) b!2029543))

(assert (= (and b!2029541 res!890018) b!2029547))

(assert (= (and b!2029543 (not res!890020)) b!2029542))

(assert (= (and b!2029542 res!890022) b!2029540))

(assert (= (or b!2029541 b!2029542) bm!124542))

(assert (= (or b!2029547 b!2029540) bm!124540))

(assert (= (or b!2029546 bm!124540) bm!124541))

(declare-fun m!2469147 () Bool)

(assert (=> bm!124541 m!2469147))

(declare-fun m!2469149 () Bool)

(assert (=> bm!124542 m!2469149))

(declare-fun m!2469151 () Bool)

(assert (=> b!2029545 m!2469151))

(assert (=> d!620479 d!620685))

(declare-fun b!2029549 () Bool)

(declare-fun e!1281977 () List!22289)

(assert (=> b!2029549 (= e!1281977 lt!761704)))

(declare-fun e!1281976 () Bool)

(declare-fun b!2029552 () Bool)

(declare-fun lt!762292 () List!22289)

(assert (=> b!2029552 (= e!1281976 (or (not (= lt!761704 Nil!22207)) (= lt!762292 (t!190124 lt!761716))))))

(declare-fun d!620687 () Bool)

(assert (=> d!620687 e!1281976))

(declare-fun res!890024 () Bool)

(assert (=> d!620687 (=> (not res!890024) (not e!1281976))))

(assert (=> d!620687 (= res!890024 (= (content!3278 lt!762292) (set.union (content!3278 (t!190124 lt!761716)) (content!3278 lt!761704))))))

(assert (=> d!620687 (= lt!762292 e!1281977)))

(declare-fun c!328456 () Bool)

(assert (=> d!620687 (= c!328456 (is-Nil!22207 (t!190124 lt!761716)))))

(assert (=> d!620687 (= (++!6004 (t!190124 lt!761716) lt!761704) lt!762292)))

(declare-fun b!2029550 () Bool)

(assert (=> b!2029550 (= e!1281977 (Cons!22207 (h!27608 (t!190124 lt!761716)) (++!6004 (t!190124 (t!190124 lt!761716)) lt!761704)))))

(declare-fun b!2029551 () Bool)

(declare-fun res!890023 () Bool)

(assert (=> b!2029551 (=> (not res!890023) (not e!1281976))))

(assert (=> b!2029551 (= res!890023 (= (size!17349 lt!762292) (+ (size!17349 (t!190124 lt!761716)) (size!17349 lt!761704))))))

(assert (= (and d!620687 c!328456) b!2029549))

(assert (= (and d!620687 (not c!328456)) b!2029550))

(assert (= (and d!620687 res!890024) b!2029551))

(assert (= (and b!2029551 res!890023) b!2029552))

(declare-fun m!2469153 () Bool)

(assert (=> d!620687 m!2469153))

(declare-fun m!2469155 () Bool)

(assert (=> d!620687 m!2469155))

(assert (=> d!620687 m!2467527))

(declare-fun m!2469157 () Bool)

(assert (=> b!2029550 m!2469157))

(declare-fun m!2469159 () Bool)

(assert (=> b!2029551 m!2469159))

(declare-fun m!2469161 () Bool)

(assert (=> b!2029551 m!2469161))

(assert (=> b!2029551 m!2467535))

(assert (=> b!2028837 d!620687))

(declare-fun d!620689 () Bool)

(assert (=> d!620689 (= (isEmpty!13854 lt!761716) (is-Nil!22207 lt!761716))))

(assert (=> d!620327 d!620689))

(declare-fun bm!124543 () Bool)

(declare-fun call!124550 () Bool)

(declare-fun call!124549 () Bool)

(assert (=> bm!124543 (= call!124550 call!124549)))

(declare-fun d!620691 () Bool)

(declare-fun res!890026 () Bool)

(declare-fun e!1281980 () Bool)

(assert (=> d!620691 (=> res!890026 e!1281980)))

(assert (=> d!620691 (= res!890026 (is-ElementMatch!5416 (regex!3991 (rule!6220 separatorToken!354))))))

(assert (=> d!620691 (= (validRegex!2179 (regex!3991 (rule!6220 separatorToken!354))) e!1281980)))

(declare-fun b!2029553 () Bool)

(declare-fun e!1281979 () Bool)

(assert (=> b!2029553 (= e!1281979 call!124550)))

(declare-fun b!2029554 () Bool)

(declare-fun res!890025 () Bool)

(declare-fun e!1281978 () Bool)

(assert (=> b!2029554 (=> (not res!890025) (not e!1281978))))

(declare-fun call!124548 () Bool)

(assert (=> b!2029554 (= res!890025 call!124548)))

(declare-fun e!1281983 () Bool)

(assert (=> b!2029554 (= e!1281983 e!1281978)))

(declare-fun c!328457 () Bool)

(declare-fun c!328458 () Bool)

(declare-fun bm!124544 () Bool)

(assert (=> bm!124544 (= call!124549 (validRegex!2179 (ite c!328458 (reg!5745 (regex!3991 (rule!6220 separatorToken!354))) (ite c!328457 (regTwo!11345 (regex!3991 (rule!6220 separatorToken!354))) (regTwo!11344 (regex!3991 (rule!6220 separatorToken!354)))))))))

(declare-fun b!2029555 () Bool)

(declare-fun e!1281984 () Bool)

(assert (=> b!2029555 (= e!1281984 e!1281979)))

(declare-fun res!890029 () Bool)

(assert (=> b!2029555 (=> (not res!890029) (not e!1281979))))

(assert (=> b!2029555 (= res!890029 call!124548)))

(declare-fun b!2029556 () Bool)

(declare-fun res!890027 () Bool)

(assert (=> b!2029556 (=> res!890027 e!1281984)))

(assert (=> b!2029556 (= res!890027 (not (is-Concat!9544 (regex!3991 (rule!6220 separatorToken!354)))))))

(assert (=> b!2029556 (= e!1281983 e!1281984)))

(declare-fun b!2029557 () Bool)

(declare-fun e!1281982 () Bool)

(assert (=> b!2029557 (= e!1281982 e!1281983)))

(assert (=> b!2029557 (= c!328457 (is-Union!5416 (regex!3991 (rule!6220 separatorToken!354))))))

(declare-fun bm!124545 () Bool)

(assert (=> bm!124545 (= call!124548 (validRegex!2179 (ite c!328457 (regOne!11345 (regex!3991 (rule!6220 separatorToken!354))) (regOne!11344 (regex!3991 (rule!6220 separatorToken!354))))))))

(declare-fun b!2029558 () Bool)

(declare-fun e!1281981 () Bool)

(assert (=> b!2029558 (= e!1281982 e!1281981)))

(declare-fun res!890028 () Bool)

(assert (=> b!2029558 (= res!890028 (not (nullable!1653 (reg!5745 (regex!3991 (rule!6220 separatorToken!354))))))))

(assert (=> b!2029558 (=> (not res!890028) (not e!1281981))))

(declare-fun b!2029559 () Bool)

(assert (=> b!2029559 (= e!1281981 call!124549)))

(declare-fun b!2029560 () Bool)

(assert (=> b!2029560 (= e!1281978 call!124550)))

(declare-fun b!2029561 () Bool)

(assert (=> b!2029561 (= e!1281980 e!1281982)))

(assert (=> b!2029561 (= c!328458 (is-Star!5416 (regex!3991 (rule!6220 separatorToken!354))))))

(assert (= (and d!620691 (not res!890026)) b!2029561))

(assert (= (and b!2029561 c!328458) b!2029558))

(assert (= (and b!2029561 (not c!328458)) b!2029557))

(assert (= (and b!2029558 res!890028) b!2029559))

(assert (= (and b!2029557 c!328457) b!2029554))

(assert (= (and b!2029557 (not c!328457)) b!2029556))

(assert (= (and b!2029554 res!890025) b!2029560))

(assert (= (and b!2029556 (not res!890027)) b!2029555))

(assert (= (and b!2029555 res!890029) b!2029553))

(assert (= (or b!2029554 b!2029555) bm!124545))

(assert (= (or b!2029560 b!2029553) bm!124543))

(assert (= (or b!2029559 bm!124543) bm!124544))

(declare-fun m!2469163 () Bool)

(assert (=> bm!124544 m!2469163))

(declare-fun m!2469165 () Bool)

(assert (=> bm!124545 m!2469165))

(declare-fun m!2469167 () Bool)

(assert (=> b!2029558 m!2469167))

(assert (=> d!620327 d!620691))

(declare-fun bs!420842 () Bool)

(declare-fun d!620693 () Bool)

(assert (= bs!420842 (and d!620693 d!620293)))

(declare-fun lambda!76515 () Int)

(assert (=> bs!420842 (= (and (= (toChars!5523 (transformation!3991 (h!27609 rules!3198))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) (= (toValue!5664 (transformation!3991 (h!27609 rules!3198))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))))) (= lambda!76515 lambda!76492))))

(assert (=> d!620693 true))

(assert (=> d!620693 (< (dynLambda!11039 order!14221 (toChars!5523 (transformation!3991 (h!27609 rules!3198)))) (dynLambda!11042 order!14225 lambda!76515))))

(assert (=> d!620693 true))

(assert (=> d!620693 (< (dynLambda!11037 order!14217 (toValue!5664 (transformation!3991 (h!27609 rules!3198)))) (dynLambda!11042 order!14225 lambda!76515))))

(assert (=> d!620693 (= (semiInverseModEq!1608 (toChars!5523 (transformation!3991 (h!27609 rules!3198))) (toValue!5664 (transformation!3991 (h!27609 rules!3198)))) (Forall!1019 lambda!76515))))

(declare-fun bs!420843 () Bool)

(assert (= bs!420843 d!620693))

(declare-fun m!2469169 () Bool)

(assert (=> bs!420843 m!2469169))

(assert (=> d!620431 d!620693))

(declare-fun d!620695 () Bool)

(declare-fun charsToBigInt!1 (List!22288) Int)

(assert (=> d!620695 (= (inv!17 (value!125336 separatorToken!354)) (= (charsToBigInt!1 (text!29337 (value!125336 separatorToken!354))) (value!125328 (value!125336 separatorToken!354))))))

(declare-fun bs!420844 () Bool)

(assert (= bs!420844 d!620695))

(declare-fun m!2469171 () Bool)

(assert (=> bs!420844 m!2469171))

(assert (=> b!2028757 d!620695))

(assert (=> d!620313 d!620683))

(declare-fun bm!124546 () Bool)

(declare-fun call!124553 () Bool)

(declare-fun call!124552 () Bool)

(assert (=> bm!124546 (= call!124553 call!124552)))

(declare-fun d!620697 () Bool)

(declare-fun res!890031 () Bool)

(declare-fun e!1281987 () Bool)

(assert (=> d!620697 (=> res!890031 e!1281987)))

(assert (=> d!620697 (= res!890031 (is-ElementMatch!5416 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))

(assert (=> d!620697 (= (validRegex!2179 (regex!3991 (rule!6220 (h!27610 tokens!598)))) e!1281987)))

(declare-fun b!2029566 () Bool)

(declare-fun e!1281986 () Bool)

(assert (=> b!2029566 (= e!1281986 call!124553)))

(declare-fun b!2029567 () Bool)

(declare-fun res!890030 () Bool)

(declare-fun e!1281985 () Bool)

(assert (=> b!2029567 (=> (not res!890030) (not e!1281985))))

(declare-fun call!124551 () Bool)

(assert (=> b!2029567 (= res!890030 call!124551)))

(declare-fun e!1281990 () Bool)

(assert (=> b!2029567 (= e!1281990 e!1281985)))

(declare-fun c!328460 () Bool)

(declare-fun bm!124547 () Bool)

(declare-fun c!328459 () Bool)

(assert (=> bm!124547 (= call!124552 (validRegex!2179 (ite c!328460 (reg!5745 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (ite c!328459 (regTwo!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regTwo!11344 (regex!3991 (rule!6220 (h!27610 tokens!598))))))))))

(declare-fun b!2029568 () Bool)

(declare-fun e!1281991 () Bool)

(assert (=> b!2029568 (= e!1281991 e!1281986)))

(declare-fun res!890034 () Bool)

(assert (=> b!2029568 (=> (not res!890034) (not e!1281986))))

(assert (=> b!2029568 (= res!890034 call!124551)))

(declare-fun b!2029569 () Bool)

(declare-fun res!890032 () Bool)

(assert (=> b!2029569 (=> res!890032 e!1281991)))

(assert (=> b!2029569 (= res!890032 (not (is-Concat!9544 (regex!3991 (rule!6220 (h!27610 tokens!598))))))))

(assert (=> b!2029569 (= e!1281990 e!1281991)))

(declare-fun b!2029570 () Bool)

(declare-fun e!1281989 () Bool)

(assert (=> b!2029570 (= e!1281989 e!1281990)))

(assert (=> b!2029570 (= c!328459 (is-Union!5416 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))

(declare-fun bm!124548 () Bool)

(assert (=> bm!124548 (= call!124551 (validRegex!2179 (ite c!328459 (regOne!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regOne!11344 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))))

(declare-fun b!2029571 () Bool)

(declare-fun e!1281988 () Bool)

(assert (=> b!2029571 (= e!1281989 e!1281988)))

(declare-fun res!890033 () Bool)

(assert (=> b!2029571 (= res!890033 (not (nullable!1653 (reg!5745 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))))

(assert (=> b!2029571 (=> (not res!890033) (not e!1281988))))

(declare-fun b!2029572 () Bool)

(assert (=> b!2029572 (= e!1281988 call!124552)))

(declare-fun b!2029573 () Bool)

(assert (=> b!2029573 (= e!1281985 call!124553)))

(declare-fun b!2029574 () Bool)

(assert (=> b!2029574 (= e!1281987 e!1281989)))

(assert (=> b!2029574 (= c!328460 (is-Star!5416 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))

(assert (= (and d!620697 (not res!890031)) b!2029574))

(assert (= (and b!2029574 c!328460) b!2029571))

(assert (= (and b!2029574 (not c!328460)) b!2029570))

(assert (= (and b!2029571 res!890033) b!2029572))

(assert (= (and b!2029570 c!328459) b!2029567))

(assert (= (and b!2029570 (not c!328459)) b!2029569))

(assert (= (and b!2029567 res!890030) b!2029573))

(assert (= (and b!2029569 (not res!890032)) b!2029568))

(assert (= (and b!2029568 res!890034) b!2029566))

(assert (= (or b!2029567 b!2029568) bm!124548))

(assert (= (or b!2029573 b!2029566) bm!124546))

(assert (= (or b!2029572 bm!124546) bm!124547))

(declare-fun m!2469173 () Bool)

(assert (=> bm!124547 m!2469173))

(declare-fun m!2469175 () Bool)

(assert (=> bm!124548 m!2469175))

(declare-fun m!2469177 () Bool)

(assert (=> b!2029571 m!2469177))

(assert (=> d!620313 d!620697))

(declare-fun d!620699 () Bool)

(assert (=> d!620699 (= (isEmpty!13861 lt!761878) (not (is-Some!4664 lt!761878)))))

(assert (=> d!620225 d!620699))

(declare-fun d!620701 () Bool)

(declare-fun e!1282000 () Bool)

(assert (=> d!620701 e!1282000))

(declare-fun res!890043 () Bool)

(assert (=> d!620701 (=> res!890043 e!1282000)))

(declare-fun lt!762295 () Bool)

(assert (=> d!620701 (= res!890043 (not lt!762295))))

(declare-fun e!1281999 () Bool)

(assert (=> d!620701 (= lt!762295 e!1281999)))

(declare-fun res!890044 () Bool)

(assert (=> d!620701 (=> res!890044 e!1281999)))

(assert (=> d!620701 (= res!890044 (is-Nil!22207 lt!761718))))

(assert (=> d!620701 (= (isPrefix!1984 lt!761718 lt!761718) lt!762295)))

(declare-fun b!2029586 () Bool)

(assert (=> b!2029586 (= e!1282000 (>= (size!17349 lt!761718) (size!17349 lt!761718)))))

(declare-fun b!2029583 () Bool)

(declare-fun e!1281998 () Bool)

(assert (=> b!2029583 (= e!1281999 e!1281998)))

(declare-fun res!890046 () Bool)

(assert (=> b!2029583 (=> (not res!890046) (not e!1281998))))

(assert (=> b!2029583 (= res!890046 (not (is-Nil!22207 lt!761718)))))

(declare-fun b!2029585 () Bool)

(assert (=> b!2029585 (= e!1281998 (isPrefix!1984 (tail!3060 lt!761718) (tail!3060 lt!761718)))))

(declare-fun b!2029584 () Bool)

(declare-fun res!890045 () Bool)

(assert (=> b!2029584 (=> (not res!890045) (not e!1281998))))

(assert (=> b!2029584 (= res!890045 (= (head!4584 lt!761718) (head!4584 lt!761718)))))

(assert (= (and d!620701 (not res!890044)) b!2029583))

(assert (= (and b!2029583 res!890046) b!2029584))

(assert (= (and b!2029584 res!890045) b!2029585))

(assert (= (and d!620701 (not res!890043)) b!2029586))

(assert (=> b!2029586 m!2467533))

(assert (=> b!2029586 m!2467533))

(assert (=> b!2029585 m!2467899))

(assert (=> b!2029585 m!2467899))

(assert (=> b!2029585 m!2467899))

(assert (=> b!2029585 m!2467899))

(declare-fun m!2469179 () Bool)

(assert (=> b!2029585 m!2469179))

(assert (=> b!2029584 m!2467905))

(assert (=> b!2029584 m!2467905))

(assert (=> d!620225 d!620701))

(declare-fun d!620703 () Bool)

(assert (=> d!620703 (isPrefix!1984 lt!761718 lt!761718)))

(declare-fun lt!762298 () Unit!36865)

(declare-fun choose!12376 (List!22289 List!22289) Unit!36865)

(assert (=> d!620703 (= lt!762298 (choose!12376 lt!761718 lt!761718))))

(assert (=> d!620703 (= (lemmaIsPrefixRefl!1302 lt!761718 lt!761718) lt!762298)))

(declare-fun bs!420845 () Bool)

(assert (= bs!420845 d!620703))

(assert (=> bs!420845 m!2467619))

(declare-fun m!2469181 () Bool)

(assert (=> bs!420845 m!2469181))

(assert (=> d!620225 d!620703))

(declare-fun d!620705 () Bool)

(assert (=> d!620705 true))

(declare-fun lt!762301 () Bool)

(declare-fun lambda!76518 () Int)

(declare-fun forall!4725 (List!22290 Int) Bool)

(assert (=> d!620705 (= lt!762301 (forall!4725 rules!3198 lambda!76518))))

(declare-fun e!1282005 () Bool)

(assert (=> d!620705 (= lt!762301 e!1282005)))

(declare-fun res!890052 () Bool)

(assert (=> d!620705 (=> res!890052 e!1282005)))

(assert (=> d!620705 (= res!890052 (not (is-Cons!22208 rules!3198)))))

(assert (=> d!620705 (= (rulesValidInductive!1383 thiss!23328 rules!3198) lt!762301)))

(declare-fun b!2029591 () Bool)

(declare-fun e!1282006 () Bool)

(assert (=> b!2029591 (= e!1282005 e!1282006)))

(declare-fun res!890051 () Bool)

(assert (=> b!2029591 (=> (not res!890051) (not e!1282006))))

(assert (=> b!2029591 (= res!890051 (ruleValid!1222 thiss!23328 (h!27609 rules!3198)))))

(declare-fun b!2029592 () Bool)

(assert (=> b!2029592 (= e!1282006 (rulesValidInductive!1383 thiss!23328 (t!190125 rules!3198)))))

(assert (= (and d!620705 (not res!890052)) b!2029591))

(assert (= (and b!2029591 res!890051) b!2029592))

(declare-fun m!2469183 () Bool)

(assert (=> d!620705 m!2469183))

(assert (=> b!2029591 m!2468711))

(declare-fun m!2469185 () Bool)

(assert (=> b!2029592 m!2469185))

(assert (=> d!620225 d!620705))

(assert (=> b!2028920 d!620637))

(assert (=> b!2028920 d!620639))

(declare-fun d!620707 () Bool)

(assert (=> d!620707 (= (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 (h!27610 tokens!598))))) (v!26990 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 (h!27610 tokens!598))))))))

(assert (=> b!2028306 d!620707))

(assert (=> b!2028306 d!620297))

(declare-fun d!620709 () Bool)

(declare-fun c!328461 () Bool)

(assert (=> d!620709 (= c!328461 (is-Nil!22207 lt!762042))))

(declare-fun e!1282007 () (Set C!10978))

(assert (=> d!620709 (= (content!3278 lt!762042) e!1282007)))

(declare-fun b!2029595 () Bool)

(assert (=> b!2029595 (= e!1282007 (as set.empty (Set C!10978)))))

(declare-fun b!2029596 () Bool)

(assert (=> b!2029596 (= e!1282007 (set.union (set.insert (h!27608 lt!762042) (as set.empty (Set C!10978))) (content!3278 (t!190124 lt!762042))))))

(assert (= (and d!620709 c!328461) b!2029595))

(assert (= (and d!620709 (not c!328461)) b!2029596))

(declare-fun m!2469187 () Bool)

(assert (=> b!2029596 m!2469187))

(declare-fun m!2469189 () Bool)

(assert (=> b!2029596 m!2469189))

(assert (=> d!620385 d!620709))

(declare-fun d!620711 () Bool)

(declare-fun c!328462 () Bool)

(assert (=> d!620711 (= c!328462 (is-Nil!22207 lt!761716))))

(declare-fun e!1282008 () (Set C!10978))

(assert (=> d!620711 (= (content!3278 lt!761716) e!1282008)))

(declare-fun b!2029597 () Bool)

(assert (=> b!2029597 (= e!1282008 (as set.empty (Set C!10978)))))

(declare-fun b!2029598 () Bool)

(assert (=> b!2029598 (= e!1282008 (set.union (set.insert (h!27608 lt!761716) (as set.empty (Set C!10978))) (content!3278 (t!190124 lt!761716))))))

(assert (= (and d!620711 c!328462) b!2029597))

(assert (= (and d!620711 (not c!328462)) b!2029598))

(declare-fun m!2469191 () Bool)

(assert (=> b!2029598 m!2469191))

(assert (=> b!2029598 m!2469155))

(assert (=> d!620385 d!620711))

(assert (=> d!620385 d!620661))

(declare-fun d!620713 () Bool)

(assert (=> d!620713 (= (list!9066 (ite c!328261 call!124453 call!124452)) (list!9068 (c!328191 (ite c!328261 call!124453 call!124452))))))

(declare-fun bs!420846 () Bool)

(assert (= bs!420846 d!620713))

(declare-fun m!2469193 () Bool)

(assert (=> bs!420846 m!2469193))

(assert (=> bm!124451 d!620713))

(declare-fun d!620715 () Bool)

(assert (=> d!620715 (= (isEmpty!13861 lt!762043) (not (is-Some!4664 lt!762043)))))

(assert (=> d!620391 d!620715))

(declare-fun d!620717 () Bool)

(declare-fun e!1282011 () Bool)

(assert (=> d!620717 e!1282011))

(declare-fun res!890053 () Bool)

(assert (=> d!620717 (=> res!890053 e!1282011)))

(declare-fun lt!762302 () Bool)

(assert (=> d!620717 (= res!890053 (not lt!762302))))

(declare-fun e!1282010 () Bool)

(assert (=> d!620717 (= lt!762302 e!1282010)))

(declare-fun res!890054 () Bool)

(assert (=> d!620717 (=> res!890054 e!1282010)))

(assert (=> d!620717 (= res!890054 (is-Nil!22207 lt!761719))))

(assert (=> d!620717 (= (isPrefix!1984 lt!761719 lt!761719) lt!762302)))

(declare-fun b!2029602 () Bool)

(assert (=> b!2029602 (= e!1282011 (>= (size!17349 lt!761719) (size!17349 lt!761719)))))

(declare-fun b!2029599 () Bool)

(declare-fun e!1282009 () Bool)

(assert (=> b!2029599 (= e!1282010 e!1282009)))

(declare-fun res!890056 () Bool)

(assert (=> b!2029599 (=> (not res!890056) (not e!1282009))))

(assert (=> b!2029599 (= res!890056 (not (is-Nil!22207 lt!761719)))))

(declare-fun b!2029601 () Bool)

(assert (=> b!2029601 (= e!1282009 (isPrefix!1984 (tail!3060 lt!761719) (tail!3060 lt!761719)))))

(declare-fun b!2029600 () Bool)

(declare-fun res!890055 () Bool)

(assert (=> b!2029600 (=> (not res!890055) (not e!1282009))))

(assert (=> b!2029600 (= res!890055 (= (head!4584 lt!761719) (head!4584 lt!761719)))))

(assert (= (and d!620717 (not res!890054)) b!2029599))

(assert (= (and b!2029599 res!890056) b!2029600))

(assert (= (and b!2029600 res!890055) b!2029601))

(assert (= (and d!620717 (not res!890053)) b!2029602))

(assert (=> b!2029602 m!2468135))

(assert (=> b!2029602 m!2468135))

(declare-fun m!2469195 () Bool)

(assert (=> b!2029601 m!2469195))

(assert (=> b!2029601 m!2469195))

(assert (=> b!2029601 m!2469195))

(assert (=> b!2029601 m!2469195))

(declare-fun m!2469197 () Bool)

(assert (=> b!2029601 m!2469197))

(declare-fun m!2469199 () Bool)

(assert (=> b!2029600 m!2469199))

(assert (=> b!2029600 m!2469199))

(assert (=> d!620391 d!620717))

(declare-fun d!620719 () Bool)

(assert (=> d!620719 (isPrefix!1984 lt!761719 lt!761719)))

(declare-fun lt!762303 () Unit!36865)

(assert (=> d!620719 (= lt!762303 (choose!12376 lt!761719 lt!761719))))

(assert (=> d!620719 (= (lemmaIsPrefixRefl!1302 lt!761719 lt!761719) lt!762303)))

(declare-fun bs!420847 () Bool)

(assert (= bs!420847 d!620719))

(assert (=> bs!420847 m!2468157))

(declare-fun m!2469201 () Bool)

(assert (=> bs!420847 m!2469201))

(assert (=> d!620391 d!620719))

(assert (=> d!620391 d!620705))

(assert (=> b!2028850 d!620585))

(declare-fun d!620721 () Bool)

(assert (=> d!620721 (= (apply!5846 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762043)))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!762043))))) (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762043))))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!762043))))))))

(declare-fun b_lambda!68329 () Bool)

(assert (=> (not b_lambda!68329) (not d!620721)))

(declare-fun t!190298 () Bool)

(declare-fun tb!127991 () Bool)

(assert (=> (and b!2028173 (= (toValue!5664 (transformation!3991 (h!27609 rules!3198))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762043)))))) t!190298) tb!127991))

(declare-fun result!153154 () Bool)

(assert (=> tb!127991 (= result!153154 (inv!21 (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762043))))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!762043)))))))))

(declare-fun m!2469203 () Bool)

(assert (=> tb!127991 m!2469203))

(assert (=> d!620721 t!190298))

(declare-fun b_and!161583 () Bool)

(assert (= b_and!161445 (and (=> t!190298 result!153154) b_and!161583)))

(declare-fun t!190300 () Bool)

(declare-fun tb!127993 () Bool)

(assert (=> (and b!2029045 (= (toValue!5664 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762043)))))) t!190300) tb!127993))

(declare-fun result!153156 () Bool)

(assert (= result!153156 result!153154))

(assert (=> d!620721 t!190300))

(declare-fun b_and!161585 () Bool)

(assert (= b_and!161481 (and (=> t!190300 result!153156) b_and!161585)))

(declare-fun tb!127995 () Bool)

(declare-fun t!190302 () Bool)

(assert (=> (and b!2029070 (= (toValue!5664 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762043)))))) t!190302) tb!127995))

(declare-fun result!153158 () Bool)

(assert (= result!153158 result!153154))

(assert (=> d!620721 t!190302))

(declare-fun b_and!161587 () Bool)

(assert (= b_and!161485 (and (=> t!190302 result!153158) b_and!161587)))

(declare-fun tb!127997 () Bool)

(declare-fun t!190304 () Bool)

(assert (=> (and b!2028164 (= (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762043)))))) t!190304) tb!127997))

(declare-fun result!153160 () Bool)

(assert (= result!153160 result!153154))

(assert (=> d!620721 t!190304))

(declare-fun b_and!161589 () Bool)

(assert (= b_and!161449 (and (=> t!190304 result!153160) b_and!161589)))

(declare-fun t!190306 () Bool)

(declare-fun tb!127999 () Bool)

(assert (=> (and b!2028151 (= (toValue!5664 (transformation!3991 (rule!6220 separatorToken!354))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762043)))))) t!190306) tb!127999))

(declare-fun result!153162 () Bool)

(assert (= result!153162 result!153154))

(assert (=> d!620721 t!190306))

(declare-fun b_and!161591 () Bool)

(assert (= b_and!161447 (and (=> t!190306 result!153162) b_and!161591)))

(assert (=> d!620721 m!2468147))

(declare-fun m!2469205 () Bool)

(assert (=> d!620721 m!2469205))

(assert (=> b!2028850 d!620721))

(declare-fun d!620723 () Bool)

(assert (=> d!620723 (= (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!762043)))) (fromListB!1281 (originalCharacters!4798 (_1!11913 (get!7053 lt!762043)))))))

(declare-fun bs!420848 () Bool)

(assert (= bs!420848 d!620723))

(declare-fun m!2469207 () Bool)

(assert (=> bs!420848 m!2469207))

(assert (=> b!2028850 d!620723))

(declare-fun d!620725 () Bool)

(declare-fun res!890057 () Bool)

(declare-fun e!1282013 () Bool)

(assert (=> d!620725 (=> res!890057 e!1282013)))

(assert (=> d!620725 (= res!890057 (is-Nil!22209 tokens!598))))

(assert (=> d!620725 (= (forall!4723 tokens!598 lambda!76498) e!1282013)))

(declare-fun b!2029603 () Bool)

(declare-fun e!1282014 () Bool)

(assert (=> b!2029603 (= e!1282013 e!1282014)))

(declare-fun res!890058 () Bool)

(assert (=> b!2029603 (=> (not res!890058) (not e!1282014))))

(assert (=> b!2029603 (= res!890058 (dynLambda!11048 lambda!76498 (h!27610 tokens!598)))))

(declare-fun b!2029604 () Bool)

(assert (=> b!2029604 (= e!1282014 (forall!4723 (t!190126 tokens!598) lambda!76498))))

(assert (= (and d!620725 (not res!890057)) b!2029603))

(assert (= (and b!2029603 res!890058) b!2029604))

(declare-fun b_lambda!68331 () Bool)

(assert (=> (not b_lambda!68331) (not b!2029603)))

(declare-fun m!2469209 () Bool)

(assert (=> b!2029603 m!2469209))

(declare-fun m!2469211 () Bool)

(assert (=> b!2029604 m!2469211))

(assert (=> d!620447 d!620725))

(assert (=> d!620447 d!620465))

(declare-fun d!620727 () Bool)

(assert (=> d!620727 (= (isEmpty!13862 lt!761964) (not (is-Some!4665 lt!761964)))))

(assert (=> d!620297 d!620727))

(assert (=> d!620297 d!620387))

(declare-fun d!620729 () Bool)

(assert (=> d!620729 (= (isEmpty!13854 (originalCharacters!4798 (h!27610 tokens!598))) (is-Nil!22207 (originalCharacters!4798 (h!27610 tokens!598))))))

(assert (=> d!620407 d!620729))

(declare-fun d!620731 () Bool)

(assert (=> d!620731 (= (list!9066 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (value!125336 separatorToken!354))) (list!9068 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (value!125336 separatorToken!354)))))))

(declare-fun bs!420849 () Bool)

(assert (= bs!420849 d!620731))

(declare-fun m!2469213 () Bool)

(assert (=> bs!420849 m!2469213))

(assert (=> b!2029030 d!620731))

(declare-fun d!620733 () Bool)

(declare-fun e!1282018 () Bool)

(assert (=> d!620733 e!1282018))

(declare-fun res!890064 () Bool)

(assert (=> d!620733 (=> res!890064 e!1282018)))

(declare-fun lt!762306 () Option!4665)

(assert (=> d!620733 (= res!890064 (isEmpty!13861 lt!762306))))

(declare-fun e!1282017 () Option!4665)

(assert (=> d!620733 (= lt!762306 e!1282017)))

(declare-fun c!328463 () Bool)

(declare-fun lt!762307 () tuple2!20900)

(assert (=> d!620733 (= c!328463 (isEmpty!13854 (_1!11919 lt!762307)))))

(assert (=> d!620733 (= lt!762307 (findLongestMatch!481 (regex!3991 (h!27609 rules!3198)) lt!761718))))

(assert (=> d!620733 (ruleValid!1222 thiss!23328 (h!27609 rules!3198))))

(assert (=> d!620733 (= (maxPrefixOneRule!1266 thiss!23328 (h!27609 rules!3198) lt!761718) lt!762306)))

(declare-fun b!2029605 () Bool)

(declare-fun res!890065 () Bool)

(declare-fun e!1282016 () Bool)

(assert (=> b!2029605 (=> (not res!890065) (not e!1282016))))

(assert (=> b!2029605 (= res!890065 (< (size!17349 (_2!11913 (get!7053 lt!762306))) (size!17349 lt!761718)))))

(declare-fun b!2029606 () Bool)

(declare-fun e!1282015 () Bool)

(assert (=> b!2029606 (= e!1282015 (matchR!2682 (regex!3991 (h!27609 rules!3198)) (_1!11919 (findLongestMatchInner!554 (regex!3991 (h!27609 rules!3198)) Nil!22207 (size!17349 Nil!22207) lt!761718 lt!761718 (size!17349 lt!761718)))))))

(declare-fun b!2029607 () Bool)

(assert (=> b!2029607 (= e!1282017 (Some!4664 (tuple2!20889 (Token!7535 (apply!5846 (transformation!3991 (h!27609 rules!3198)) (seqFromList!2845 (_1!11919 lt!762307))) (h!27609 rules!3198) (size!17353 (seqFromList!2845 (_1!11919 lt!762307))) (_1!11919 lt!762307)) (_2!11919 lt!762307))))))

(declare-fun lt!762305 () Unit!36865)

(assert (=> b!2029607 (= lt!762305 (longestMatchIsAcceptedByMatchOrIsEmpty!538 (regex!3991 (h!27609 rules!3198)) lt!761718))))

(declare-fun res!890063 () Bool)

(assert (=> b!2029607 (= res!890063 (isEmpty!13854 (_1!11919 (findLongestMatchInner!554 (regex!3991 (h!27609 rules!3198)) Nil!22207 (size!17349 Nil!22207) lt!761718 lt!761718 (size!17349 lt!761718)))))))

(assert (=> b!2029607 (=> res!890063 e!1282015)))

(assert (=> b!2029607 e!1282015))

(declare-fun lt!762308 () Unit!36865)

(assert (=> b!2029607 (= lt!762308 lt!762305)))

(declare-fun lt!762304 () Unit!36865)

(assert (=> b!2029607 (= lt!762304 (lemmaSemiInverse!948 (transformation!3991 (h!27609 rules!3198)) (seqFromList!2845 (_1!11919 lt!762307))))))

(declare-fun b!2029608 () Bool)

(declare-fun res!890061 () Bool)

(assert (=> b!2029608 (=> (not res!890061) (not e!1282016))))

(assert (=> b!2029608 (= res!890061 (= (++!6004 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762306)))) (_2!11913 (get!7053 lt!762306))) lt!761718))))

(declare-fun b!2029609 () Bool)

(assert (=> b!2029609 (= e!1282016 (= (size!17347 (_1!11913 (get!7053 lt!762306))) (size!17349 (originalCharacters!4798 (_1!11913 (get!7053 lt!762306))))))))

(declare-fun b!2029610 () Bool)

(assert (=> b!2029610 (= e!1282018 e!1282016)))

(declare-fun res!890059 () Bool)

(assert (=> b!2029610 (=> (not res!890059) (not e!1282016))))

(assert (=> b!2029610 (= res!890059 (matchR!2682 (regex!3991 (h!27609 rules!3198)) (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762306))))))))

(declare-fun b!2029611 () Bool)

(declare-fun res!890060 () Bool)

(assert (=> b!2029611 (=> (not res!890060) (not e!1282016))))

(assert (=> b!2029611 (= res!890060 (= (value!125336 (_1!11913 (get!7053 lt!762306))) (apply!5846 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762306)))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!762306)))))))))

(declare-fun b!2029612 () Bool)

(declare-fun res!890062 () Bool)

(assert (=> b!2029612 (=> (not res!890062) (not e!1282016))))

(assert (=> b!2029612 (= res!890062 (= (rule!6220 (_1!11913 (get!7053 lt!762306))) (h!27609 rules!3198)))))

(declare-fun b!2029613 () Bool)

(assert (=> b!2029613 (= e!1282017 None!4664)))

(assert (= (and d!620733 c!328463) b!2029613))

(assert (= (and d!620733 (not c!328463)) b!2029607))

(assert (= (and b!2029607 (not res!890063)) b!2029606))

(assert (= (and d!620733 (not res!890064)) b!2029610))

(assert (= (and b!2029610 res!890059) b!2029608))

(assert (= (and b!2029608 res!890061) b!2029605))

(assert (= (and b!2029605 res!890065) b!2029612))

(assert (= (and b!2029612 res!890062) b!2029611))

(assert (= (and b!2029611 res!890060) b!2029609))

(assert (=> b!2029607 m!2468681))

(assert (=> b!2029607 m!2467533))

(declare-fun m!2469215 () Bool)

(assert (=> b!2029607 m!2469215))

(assert (=> b!2029607 m!2467533))

(declare-fun m!2469217 () Bool)

(assert (=> b!2029607 m!2469217))

(assert (=> b!2029607 m!2469217))

(declare-fun m!2469219 () Bool)

(assert (=> b!2029607 m!2469219))

(declare-fun m!2469221 () Bool)

(assert (=> b!2029607 m!2469221))

(assert (=> b!2029607 m!2468681))

(assert (=> b!2029607 m!2469217))

(declare-fun m!2469223 () Bool)

(assert (=> b!2029607 m!2469223))

(assert (=> b!2029607 m!2469217))

(declare-fun m!2469225 () Bool)

(assert (=> b!2029607 m!2469225))

(declare-fun m!2469227 () Bool)

(assert (=> b!2029607 m!2469227))

(declare-fun m!2469229 () Bool)

(assert (=> b!2029609 m!2469229))

(declare-fun m!2469231 () Bool)

(assert (=> b!2029609 m!2469231))

(assert (=> b!2029606 m!2468681))

(assert (=> b!2029606 m!2467533))

(assert (=> b!2029606 m!2468681))

(assert (=> b!2029606 m!2467533))

(assert (=> b!2029606 m!2469215))

(declare-fun m!2469233 () Bool)

(assert (=> b!2029606 m!2469233))

(assert (=> b!2029605 m!2469229))

(declare-fun m!2469235 () Bool)

(assert (=> b!2029605 m!2469235))

(assert (=> b!2029605 m!2467533))

(declare-fun m!2469237 () Bool)

(assert (=> d!620733 m!2469237))

(declare-fun m!2469239 () Bool)

(assert (=> d!620733 m!2469239))

(declare-fun m!2469241 () Bool)

(assert (=> d!620733 m!2469241))

(assert (=> d!620733 m!2468711))

(assert (=> b!2029612 m!2469229))

(assert (=> b!2029610 m!2469229))

(declare-fun m!2469243 () Bool)

(assert (=> b!2029610 m!2469243))

(assert (=> b!2029610 m!2469243))

(declare-fun m!2469245 () Bool)

(assert (=> b!2029610 m!2469245))

(assert (=> b!2029610 m!2469245))

(declare-fun m!2469247 () Bool)

(assert (=> b!2029610 m!2469247))

(assert (=> b!2029608 m!2469229))

(assert (=> b!2029608 m!2469243))

(assert (=> b!2029608 m!2469243))

(assert (=> b!2029608 m!2469245))

(assert (=> b!2029608 m!2469245))

(declare-fun m!2469249 () Bool)

(assert (=> b!2029608 m!2469249))

(assert (=> b!2029611 m!2469229))

(declare-fun m!2469251 () Bool)

(assert (=> b!2029611 m!2469251))

(assert (=> b!2029611 m!2469251))

(declare-fun m!2469253 () Bool)

(assert (=> b!2029611 m!2469253))

(assert (=> bm!124430 d!620733))

(assert (=> b!2028481 d!620599))

(declare-fun d!620735 () Bool)

(assert (=> d!620735 (= (apply!5846 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761886)))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!761886))))) (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761886))))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!761886))))))))

(declare-fun b_lambda!68333 () Bool)

(assert (=> (not b_lambda!68333) (not d!620735)))

(declare-fun tb!128001 () Bool)

(declare-fun t!190308 () Bool)

(assert (=> (and b!2029070 (= (toValue!5664 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761886)))))) t!190308) tb!128001))

(declare-fun result!153164 () Bool)

(assert (=> tb!128001 (= result!153164 (inv!21 (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761886))))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!761886)))))))))

(declare-fun m!2469255 () Bool)

(assert (=> tb!128001 m!2469255))

(assert (=> d!620735 t!190308))

(declare-fun b_and!161593 () Bool)

(assert (= b_and!161587 (and (=> t!190308 result!153164) b_and!161593)))

(declare-fun tb!128003 () Bool)

(declare-fun t!190310 () Bool)

(assert (=> (and b!2028151 (= (toValue!5664 (transformation!3991 (rule!6220 separatorToken!354))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761886)))))) t!190310) tb!128003))

(declare-fun result!153166 () Bool)

(assert (= result!153166 result!153164))

(assert (=> d!620735 t!190310))

(declare-fun b_and!161595 () Bool)

(assert (= b_and!161591 (and (=> t!190310 result!153166) b_and!161595)))

(declare-fun t!190312 () Bool)

(declare-fun tb!128005 () Bool)

(assert (=> (and b!2029045 (= (toValue!5664 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761886)))))) t!190312) tb!128005))

(declare-fun result!153168 () Bool)

(assert (= result!153168 result!153164))

(assert (=> d!620735 t!190312))

(declare-fun b_and!161597 () Bool)

(assert (= b_and!161585 (and (=> t!190312 result!153168) b_and!161597)))

(declare-fun tb!128007 () Bool)

(declare-fun t!190314 () Bool)

(assert (=> (and b!2028164 (= (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761886)))))) t!190314) tb!128007))

(declare-fun result!153170 () Bool)

(assert (= result!153170 result!153164))

(assert (=> d!620735 t!190314))

(declare-fun b_and!161599 () Bool)

(assert (= b_and!161589 (and (=> t!190314 result!153170) b_and!161599)))

(declare-fun tb!128009 () Bool)

(declare-fun t!190316 () Bool)

(assert (=> (and b!2028173 (= (toValue!5664 (transformation!3991 (h!27609 rules!3198))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761886)))))) t!190316) tb!128009))

(declare-fun result!153172 () Bool)

(assert (= result!153172 result!153164))

(assert (=> d!620735 t!190316))

(declare-fun b_and!161601 () Bool)

(assert (= b_and!161583 (and (=> t!190316 result!153172) b_and!161601)))

(assert (=> d!620735 m!2467653))

(declare-fun m!2469257 () Bool)

(assert (=> d!620735 m!2469257))

(assert (=> b!2028481 d!620735))

(declare-fun d!620737 () Bool)

(assert (=> d!620737 (= (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!761886)))) (fromListB!1281 (originalCharacters!4798 (_1!11913 (get!7053 lt!761886)))))))

(declare-fun bs!420850 () Bool)

(assert (= bs!420850 d!620737))

(declare-fun m!2469259 () Bool)

(assert (=> bs!420850 m!2469259))

(assert (=> b!2028481 d!620737))

(declare-fun d!620739 () Bool)

(assert (=> d!620739 (= (isDefined!3954 lt!762084) (not (isEmpty!13861 lt!762084)))))

(declare-fun bs!420851 () Bool)

(assert (= bs!420851 d!620739))

(assert (=> bs!420851 m!2468373))

(assert (=> b!2029002 d!620739))

(declare-fun d!620741 () Bool)

(declare-fun lt!762311 () Bool)

(assert (=> d!620741 (= lt!762311 (isEmpty!13854 (list!9066 (_2!11914 lt!762061))))))

(declare-fun isEmpty!13869 (Conc!7428) Bool)

(assert (=> d!620741 (= lt!762311 (isEmpty!13869 (c!328191 (_2!11914 lt!762061))))))

(assert (=> d!620741 (= (isEmpty!13864 (_2!11914 lt!762061)) lt!762311)))

(declare-fun bs!420852 () Bool)

(assert (= bs!420852 d!620741))

(declare-fun m!2469261 () Bool)

(assert (=> bs!420852 m!2469261))

(assert (=> bs!420852 m!2469261))

(declare-fun m!2469263 () Bool)

(assert (=> bs!420852 m!2469263))

(declare-fun m!2469265 () Bool)

(assert (=> bs!420852 m!2469265))

(assert (=> b!2028906 d!620741))

(assert (=> b!2028454 d!620645))

(assert (=> b!2028454 d!620647))

(assert (=> b!2028454 d!620643))

(declare-fun d!620743 () Bool)

(declare-fun lt!762314 () Int)

(assert (=> d!620743 (>= lt!762314 0)))

(declare-fun e!1282022 () Int)

(assert (=> d!620743 (= lt!762314 e!1282022)))

(declare-fun c!328466 () Bool)

(assert (=> d!620743 (= c!328466 (is-Nil!22207 lt!762042))))

(assert (=> d!620743 (= (size!17349 lt!762042) lt!762314)))

(declare-fun b!2029618 () Bool)

(assert (=> b!2029618 (= e!1282022 0)))

(declare-fun b!2029619 () Bool)

(assert (=> b!2029619 (= e!1282022 (+ 1 (size!17349 (t!190124 lt!762042))))))

(assert (= (and d!620743 c!328466) b!2029618))

(assert (= (and d!620743 (not c!328466)) b!2029619))

(declare-fun m!2469267 () Bool)

(assert (=> b!2029619 m!2469267))

(assert (=> b!2028838 d!620743))

(declare-fun d!620745 () Bool)

(declare-fun lt!762315 () Int)

(assert (=> d!620745 (>= lt!762315 0)))

(declare-fun e!1282023 () Int)

(assert (=> d!620745 (= lt!762315 e!1282023)))

(declare-fun c!328467 () Bool)

(assert (=> d!620745 (= c!328467 (is-Nil!22207 lt!761716))))

(assert (=> d!620745 (= (size!17349 lt!761716) lt!762315)))

(declare-fun b!2029620 () Bool)

(assert (=> b!2029620 (= e!1282023 0)))

(declare-fun b!2029621 () Bool)

(assert (=> b!2029621 (= e!1282023 (+ 1 (size!17349 (t!190124 lt!761716))))))

(assert (= (and d!620745 c!328467) b!2029620))

(assert (= (and d!620745 (not c!328467)) b!2029621))

(assert (=> b!2029621 m!2469161))

(assert (=> b!2028838 d!620745))

(declare-fun d!620747 () Bool)

(declare-fun lt!762316 () Int)

(assert (=> d!620747 (>= lt!762316 0)))

(declare-fun e!1282024 () Int)

(assert (=> d!620747 (= lt!762316 e!1282024)))

(declare-fun c!328468 () Bool)

(assert (=> d!620747 (= c!328468 (is-Nil!22207 lt!761704))))

(assert (=> d!620747 (= (size!17349 lt!761704) lt!762316)))

(declare-fun b!2029622 () Bool)

(assert (=> b!2029622 (= e!1282024 0)))

(declare-fun b!2029623 () Bool)

(assert (=> b!2029623 (= e!1282024 (+ 1 (size!17349 (t!190124 lt!761704))))))

(assert (= (and d!620747 c!328468) b!2029622))

(assert (= (and d!620747 (not c!328468)) b!2029623))

(declare-fun m!2469269 () Bool)

(assert (=> b!2029623 m!2469269))

(assert (=> b!2028838 d!620747))

(declare-fun d!620749 () Bool)

(declare-fun lt!762317 () Int)

(assert (=> d!620749 (>= lt!762317 0)))

(declare-fun e!1282025 () Int)

(assert (=> d!620749 (= lt!762317 e!1282025)))

(declare-fun c!328469 () Bool)

(assert (=> d!620749 (= c!328469 (is-Nil!22207 (_2!11913 (get!7053 lt!762084))))))

(assert (=> d!620749 (= (size!17349 (_2!11913 (get!7053 lt!762084))) lt!762317)))

(declare-fun b!2029624 () Bool)

(assert (=> b!2029624 (= e!1282025 0)))

(declare-fun b!2029625 () Bool)

(assert (=> b!2029625 (= e!1282025 (+ 1 (size!17349 (t!190124 (_2!11913 (get!7053 lt!762084))))))))

(assert (= (and d!620749 c!328469) b!2029624))

(assert (= (and d!620749 (not c!328469)) b!2029625))

(declare-fun m!2469271 () Bool)

(assert (=> b!2029625 m!2469271))

(assert (=> b!2028994 d!620749))

(assert (=> b!2028994 d!620613))

(declare-fun d!620751 () Bool)

(declare-fun lt!762318 () Int)

(assert (=> d!620751 (>= lt!762318 0)))

(declare-fun e!1282026 () Int)

(assert (=> d!620751 (= lt!762318 e!1282026)))

(declare-fun c!328470 () Bool)

(assert (=> d!620751 (= c!328470 (is-Nil!22207 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(assert (=> d!620751 (= (size!17349 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354)) lt!762318)))

(declare-fun b!2029626 () Bool)

(assert (=> b!2029626 (= e!1282026 0)))

(declare-fun b!2029627 () Bool)

(assert (=> b!2029627 (= e!1282026 (+ 1 (size!17349 (t!190124 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))))

(assert (= (and d!620751 c!328470) b!2029626))

(assert (= (and d!620751 (not c!328470)) b!2029627))

(declare-fun m!2469273 () Bool)

(assert (=> b!2029627 m!2469273))

(assert (=> b!2028994 d!620751))

(assert (=> b!2028710 d!620637))

(assert (=> b!2028710 d!620639))

(declare-fun e!1282028 () List!22289)

(declare-fun b!2029628 () Bool)

(assert (=> b!2029628 (= e!1282028 (ite c!328312 call!124469 call!124470))))

(declare-fun e!1282027 () Bool)

(declare-fun b!2029631 () Bool)

(declare-fun lt!762319 () List!22289)

(assert (=> b!2029631 (= e!1282027 (or (not (= (ite c!328312 call!124469 call!124470) Nil!22207)) (= lt!762319 (ite c!328312 call!124470 call!124469))))))

(declare-fun d!620753 () Bool)

(assert (=> d!620753 e!1282027))

(declare-fun res!890067 () Bool)

(assert (=> d!620753 (=> (not res!890067) (not e!1282027))))

(assert (=> d!620753 (= res!890067 (= (content!3278 lt!762319) (set.union (content!3278 (ite c!328312 call!124470 call!124469)) (content!3278 (ite c!328312 call!124469 call!124470)))))))

(assert (=> d!620753 (= lt!762319 e!1282028)))

(declare-fun c!328471 () Bool)

(assert (=> d!620753 (= c!328471 (is-Nil!22207 (ite c!328312 call!124470 call!124469)))))

(assert (=> d!620753 (= (++!6004 (ite c!328312 call!124470 call!124469) (ite c!328312 call!124469 call!124470)) lt!762319)))

(declare-fun b!2029629 () Bool)

(assert (=> b!2029629 (= e!1282028 (Cons!22207 (h!27608 (ite c!328312 call!124470 call!124469)) (++!6004 (t!190124 (ite c!328312 call!124470 call!124469)) (ite c!328312 call!124469 call!124470))))))

(declare-fun b!2029630 () Bool)

(declare-fun res!890066 () Bool)

(assert (=> b!2029630 (=> (not res!890066) (not e!1282027))))

(assert (=> b!2029630 (= res!890066 (= (size!17349 lt!762319) (+ (size!17349 (ite c!328312 call!124470 call!124469)) (size!17349 (ite c!328312 call!124469 call!124470)))))))

(assert (= (and d!620753 c!328471) b!2029628))

(assert (= (and d!620753 (not c!328471)) b!2029629))

(assert (= (and d!620753 res!890067) b!2029630))

(assert (= (and b!2029630 res!890066) b!2029631))

(declare-fun m!2469275 () Bool)

(assert (=> d!620753 m!2469275))

(declare-fun m!2469277 () Bool)

(assert (=> d!620753 m!2469277))

(declare-fun m!2469279 () Bool)

(assert (=> d!620753 m!2469279))

(declare-fun m!2469281 () Bool)

(assert (=> b!2029629 m!2469281))

(declare-fun m!2469283 () Bool)

(assert (=> b!2029630 m!2469283))

(declare-fun m!2469285 () Bool)

(assert (=> b!2029630 m!2469285))

(declare-fun m!2469287 () Bool)

(assert (=> b!2029630 m!2469287))

(assert (=> bm!124464 d!620753))

(declare-fun d!620755 () Bool)

(assert (=> d!620755 (= (isEmpty!13861 lt!761886) (not (is-Some!4664 lt!761886)))))

(assert (=> d!620247 d!620755))

(declare-fun d!620757 () Bool)

(declare-fun e!1282031 () Bool)

(assert (=> d!620757 e!1282031))

(declare-fun res!890068 () Bool)

(assert (=> d!620757 (=> res!890068 e!1282031)))

(declare-fun lt!762320 () Bool)

(assert (=> d!620757 (= res!890068 (not lt!762320))))

(declare-fun e!1282030 () Bool)

(assert (=> d!620757 (= lt!762320 e!1282030)))

(declare-fun res!890069 () Bool)

(assert (=> d!620757 (=> res!890069 e!1282030)))

(assert (=> d!620757 (= res!890069 (is-Nil!22207 (++!6004 lt!761718 lt!761704)))))

(assert (=> d!620757 (= (isPrefix!1984 (++!6004 lt!761718 lt!761704) (++!6004 lt!761718 lt!761704)) lt!762320)))

(declare-fun b!2029635 () Bool)

(assert (=> b!2029635 (= e!1282031 (>= (size!17349 (++!6004 lt!761718 lt!761704)) (size!17349 (++!6004 lt!761718 lt!761704))))))

(declare-fun b!2029632 () Bool)

(declare-fun e!1282029 () Bool)

(assert (=> b!2029632 (= e!1282030 e!1282029)))

(declare-fun res!890071 () Bool)

(assert (=> b!2029632 (=> (not res!890071) (not e!1282029))))

(assert (=> b!2029632 (= res!890071 (not (is-Nil!22207 (++!6004 lt!761718 lt!761704))))))

(declare-fun b!2029634 () Bool)

(assert (=> b!2029634 (= e!1282029 (isPrefix!1984 (tail!3060 (++!6004 lt!761718 lt!761704)) (tail!3060 (++!6004 lt!761718 lt!761704))))))

(declare-fun b!2029633 () Bool)

(declare-fun res!890070 () Bool)

(assert (=> b!2029633 (=> (not res!890070) (not e!1282029))))

(assert (=> b!2029633 (= res!890070 (= (head!4584 (++!6004 lt!761718 lt!761704)) (head!4584 (++!6004 lt!761718 lt!761704))))))

(assert (= (and d!620757 (not res!890069)) b!2029632))

(assert (= (and b!2029632 res!890071) b!2029633))

(assert (= (and b!2029633 res!890070) b!2029634))

(assert (= (and d!620757 (not res!890068)) b!2029635))

(assert (=> b!2029635 m!2467179))

(assert (=> b!2029635 m!2467639))

(assert (=> b!2029635 m!2467179))

(assert (=> b!2029635 m!2467639))

(assert (=> b!2029634 m!2467179))

(declare-fun m!2469289 () Bool)

(assert (=> b!2029634 m!2469289))

(assert (=> b!2029634 m!2467179))

(assert (=> b!2029634 m!2469289))

(assert (=> b!2029634 m!2469289))

(assert (=> b!2029634 m!2469289))

(declare-fun m!2469291 () Bool)

(assert (=> b!2029634 m!2469291))

(assert (=> b!2029633 m!2467179))

(declare-fun m!2469293 () Bool)

(assert (=> b!2029633 m!2469293))

(assert (=> b!2029633 m!2467179))

(assert (=> b!2029633 m!2469293))

(assert (=> d!620247 d!620757))

(declare-fun d!620759 () Bool)

(assert (=> d!620759 (isPrefix!1984 (++!6004 lt!761718 lt!761704) (++!6004 lt!761718 lt!761704))))

(declare-fun lt!762321 () Unit!36865)

(assert (=> d!620759 (= lt!762321 (choose!12376 (++!6004 lt!761718 lt!761704) (++!6004 lt!761718 lt!761704)))))

(assert (=> d!620759 (= (lemmaIsPrefixRefl!1302 (++!6004 lt!761718 lt!761704) (++!6004 lt!761718 lt!761704)) lt!762321)))

(declare-fun bs!420853 () Bool)

(assert (= bs!420853 d!620759))

(assert (=> bs!420853 m!2467179))

(assert (=> bs!420853 m!2467179))

(assert (=> bs!420853 m!2467663))

(assert (=> bs!420853 m!2467179))

(assert (=> bs!420853 m!2467179))

(declare-fun m!2469295 () Bool)

(assert (=> bs!420853 m!2469295))

(assert (=> d!620247 d!620759))

(assert (=> d!620247 d!620705))

(declare-fun b!2029636 () Bool)

(declare-fun e!1282033 () List!22289)

(assert (=> b!2029636 (= e!1282033 lt!761715)))

(declare-fun e!1282032 () Bool)

(declare-fun lt!762322 () List!22289)

(declare-fun b!2029639 () Bool)

(assert (=> b!2029639 (= e!1282032 (or (not (= lt!761715 Nil!22207)) (= lt!762322 (t!190124 lt!761718))))))

(declare-fun d!620761 () Bool)

(assert (=> d!620761 e!1282032))

(declare-fun res!890073 () Bool)

(assert (=> d!620761 (=> (not res!890073) (not e!1282032))))

(assert (=> d!620761 (= res!890073 (= (content!3278 lt!762322) (set.union (content!3278 (t!190124 lt!761718)) (content!3278 lt!761715))))))

(assert (=> d!620761 (= lt!762322 e!1282033)))

(declare-fun c!328472 () Bool)

(assert (=> d!620761 (= c!328472 (is-Nil!22207 (t!190124 lt!761718)))))

(assert (=> d!620761 (= (++!6004 (t!190124 lt!761718) lt!761715) lt!762322)))

(declare-fun b!2029637 () Bool)

(assert (=> b!2029637 (= e!1282033 (Cons!22207 (h!27608 (t!190124 lt!761718)) (++!6004 (t!190124 (t!190124 lt!761718)) lt!761715)))))

(declare-fun b!2029638 () Bool)

(declare-fun res!890072 () Bool)

(assert (=> b!2029638 (=> (not res!890072) (not e!1282032))))

(assert (=> b!2029638 (= res!890072 (= (size!17349 lt!762322) (+ (size!17349 (t!190124 lt!761718)) (size!17349 lt!761715))))))

(assert (= (and d!620761 c!328472) b!2029636))

(assert (= (and d!620761 (not c!328472)) b!2029637))

(assert (= (and d!620761 res!890073) b!2029638))

(assert (= (and b!2029638 res!890072) b!2029639))

(declare-fun m!2469297 () Bool)

(assert (=> d!620761 m!2469297))

(declare-fun m!2469299 () Bool)

(assert (=> d!620761 m!2469299))

(assert (=> d!620761 m!2468007))

(declare-fun m!2469301 () Bool)

(assert (=> b!2029637 m!2469301))

(declare-fun m!2469303 () Bool)

(assert (=> b!2029638 m!2469303))

(declare-fun m!2469305 () Bool)

(assert (=> b!2029638 m!2469305))

(assert (=> b!2029638 m!2468013))

(assert (=> b!2028771 d!620761))

(declare-fun d!620763 () Bool)

(declare-fun lt!762323 () Bool)

(assert (=> d!620763 (= lt!762323 (set.member lt!761709 (content!3278 (t!190124 lt!761707))))))

(declare-fun e!1282034 () Bool)

(assert (=> d!620763 (= lt!762323 e!1282034)))

(declare-fun res!890074 () Bool)

(assert (=> d!620763 (=> (not res!890074) (not e!1282034))))

(assert (=> d!620763 (= res!890074 (is-Cons!22207 (t!190124 lt!761707)))))

(assert (=> d!620763 (= (contains!4098 (t!190124 lt!761707) lt!761709) lt!762323)))

(declare-fun b!2029640 () Bool)

(declare-fun e!1282035 () Bool)

(assert (=> b!2029640 (= e!1282034 e!1282035)))

(declare-fun res!890075 () Bool)

(assert (=> b!2029640 (=> res!890075 e!1282035)))

(assert (=> b!2029640 (= res!890075 (= (h!27608 (t!190124 lt!761707)) lt!761709))))

(declare-fun b!2029641 () Bool)

(assert (=> b!2029641 (= e!1282035 (contains!4098 (t!190124 (t!190124 lt!761707)) lt!761709))))

(assert (= (and d!620763 res!890074) b!2029640))

(assert (= (and b!2029640 (not res!890075)) b!2029641))

(assert (=> d!620763 m!2468729))

(declare-fun m!2469307 () Bool)

(assert (=> d!620763 m!2469307))

(declare-fun m!2469309 () Bool)

(assert (=> b!2029641 m!2469309))

(assert (=> b!2028835 d!620763))

(declare-fun d!620765 () Bool)

(assert (=> d!620765 (= (isEmpty!13854 (tail!3060 lt!761718)) (is-Nil!22207 (tail!3060 lt!761718)))))

(assert (=> b!2029021 d!620765))

(assert (=> b!2029021 d!620607))

(declare-fun d!620767 () Bool)

(assert (=> d!620767 (= (isDefined!3954 lt!762043) (not (isEmpty!13861 lt!762043)))))

(declare-fun bs!420854 () Bool)

(assert (= bs!420854 d!620767))

(assert (=> bs!420854 m!2468155))

(assert (=> b!2028851 d!620767))

(declare-fun d!620769 () Bool)

(declare-fun c!328473 () Bool)

(assert (=> d!620769 (= c!328473 (is-Nil!22207 lt!762004))))

(declare-fun e!1282036 () (Set C!10978))

(assert (=> d!620769 (= (content!3278 lt!762004) e!1282036)))

(declare-fun b!2029642 () Bool)

(assert (=> b!2029642 (= e!1282036 (as set.empty (Set C!10978)))))

(declare-fun b!2029643 () Bool)

(assert (=> b!2029643 (= e!1282036 (set.union (set.insert (h!27608 lt!762004) (as set.empty (Set C!10978))) (content!3278 (t!190124 lt!762004))))))

(assert (= (and d!620769 c!328473) b!2029642))

(assert (= (and d!620769 (not c!328473)) b!2029643))

(declare-fun m!2469311 () Bool)

(assert (=> b!2029643 m!2469311))

(declare-fun m!2469313 () Bool)

(assert (=> b!2029643 m!2469313))

(assert (=> d!620355 d!620769))

(declare-fun d!620771 () Bool)

(declare-fun c!328474 () Bool)

(assert (=> d!620771 (= c!328474 (is-Nil!22207 lt!761718))))

(declare-fun e!1282037 () (Set C!10978))

(assert (=> d!620771 (= (content!3278 lt!761718) e!1282037)))

(declare-fun b!2029644 () Bool)

(assert (=> b!2029644 (= e!1282037 (as set.empty (Set C!10978)))))

(declare-fun b!2029645 () Bool)

(assert (=> b!2029645 (= e!1282037 (set.union (set.insert (h!27608 lt!761718) (as set.empty (Set C!10978))) (content!3278 (t!190124 lt!761718))))))

(assert (= (and d!620771 c!328474) b!2029644))

(assert (= (and d!620771 (not c!328474)) b!2029645))

(declare-fun m!2469315 () Bool)

(assert (=> b!2029645 m!2469315))

(assert (=> b!2029645 m!2469299))

(assert (=> d!620355 d!620771))

(declare-fun d!620773 () Bool)

(declare-fun c!328475 () Bool)

(assert (=> d!620773 (= c!328475 (is-Nil!22207 lt!761715))))

(declare-fun e!1282038 () (Set C!10978))

(assert (=> d!620773 (= (content!3278 lt!761715) e!1282038)))

(declare-fun b!2029646 () Bool)

(assert (=> b!2029646 (= e!1282038 (as set.empty (Set C!10978)))))

(declare-fun b!2029647 () Bool)

(assert (=> b!2029647 (= e!1282038 (set.union (set.insert (h!27608 lt!761715) (as set.empty (Set C!10978))) (content!3278 (t!190124 lt!761715))))))

(assert (= (and d!620773 c!328475) b!2029646))

(assert (= (and d!620773 (not c!328475)) b!2029647))

(declare-fun m!2469317 () Bool)

(assert (=> b!2029647 m!2469317))

(declare-fun m!2469319 () Bool)

(assert (=> b!2029647 m!2469319))

(assert (=> d!620355 d!620773))

(declare-fun d!620775 () Bool)

(declare-fun res!890076 () Bool)

(declare-fun e!1282039 () Bool)

(assert (=> d!620775 (=> res!890076 e!1282039)))

(assert (=> d!620775 (= res!890076 (is-Nil!22209 (t!190126 tokens!598)))))

(assert (=> d!620775 (= (forall!4723 (t!190126 tokens!598) lambda!76480) e!1282039)))

(declare-fun b!2029648 () Bool)

(declare-fun e!1282040 () Bool)

(assert (=> b!2029648 (= e!1282039 e!1282040)))

(declare-fun res!890077 () Bool)

(assert (=> b!2029648 (=> (not res!890077) (not e!1282040))))

(assert (=> b!2029648 (= res!890077 (dynLambda!11048 lambda!76480 (h!27610 (t!190126 tokens!598))))))

(declare-fun b!2029649 () Bool)

(assert (=> b!2029649 (= e!1282040 (forall!4723 (t!190126 (t!190126 tokens!598)) lambda!76480))))

(assert (= (and d!620775 (not res!890076)) b!2029648))

(assert (= (and b!2029648 res!890077) b!2029649))

(declare-fun b_lambda!68335 () Bool)

(assert (=> (not b_lambda!68335) (not b!2029648)))

(declare-fun m!2469321 () Bool)

(assert (=> b!2029648 m!2469321))

(declare-fun m!2469323 () Bool)

(assert (=> b!2029649 m!2469323))

(assert (=> b!2028951 d!620775))

(declare-fun d!620777 () Bool)

(declare-fun charsToInt!0 (List!22288) (_ BitVec 32))

(assert (=> d!620777 (= (inv!16 (value!125336 separatorToken!354)) (= (charsToInt!0 (text!29336 (value!125336 separatorToken!354))) (value!125327 (value!125336 separatorToken!354))))))

(declare-fun bs!420855 () Bool)

(assert (= bs!420855 d!620777))

(declare-fun m!2469325 () Bool)

(assert (=> bs!420855 m!2469325))

(assert (=> b!2028758 d!620777))

(declare-fun d!620779 () Bool)

(declare-fun e!1282044 () Bool)

(assert (=> d!620779 e!1282044))

(declare-fun res!890083 () Bool)

(assert (=> d!620779 (=> res!890083 e!1282044)))

(declare-fun lt!762326 () Option!4665)

(assert (=> d!620779 (= res!890083 (isEmpty!13861 lt!762326))))

(declare-fun e!1282043 () Option!4665)

(assert (=> d!620779 (= lt!762326 e!1282043)))

(declare-fun c!328476 () Bool)

(declare-fun lt!762327 () tuple2!20900)

(assert (=> d!620779 (= c!328476 (isEmpty!13854 (_1!11919 lt!762327)))))

(assert (=> d!620779 (= lt!762327 (findLongestMatch!481 (regex!3991 (h!27609 rules!3198)) (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(assert (=> d!620779 (ruleValid!1222 thiss!23328 (h!27609 rules!3198))))

(assert (=> d!620779 (= (maxPrefixOneRule!1266 thiss!23328 (h!27609 rules!3198) (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354)) lt!762326)))

(declare-fun b!2029650 () Bool)

(declare-fun res!890084 () Bool)

(declare-fun e!1282042 () Bool)

(assert (=> b!2029650 (=> (not res!890084) (not e!1282042))))

(assert (=> b!2029650 (= res!890084 (< (size!17349 (_2!11913 (get!7053 lt!762326))) (size!17349 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))

(declare-fun e!1282041 () Bool)

(declare-fun b!2029651 () Bool)

(assert (=> b!2029651 (= e!1282041 (matchR!2682 (regex!3991 (h!27609 rules!3198)) (_1!11919 (findLongestMatchInner!554 (regex!3991 (h!27609 rules!3198)) Nil!22207 (size!17349 Nil!22207) (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354) (size!17349 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))))

(declare-fun b!2029652 () Bool)

(assert (=> b!2029652 (= e!1282043 (Some!4664 (tuple2!20889 (Token!7535 (apply!5846 (transformation!3991 (h!27609 rules!3198)) (seqFromList!2845 (_1!11919 lt!762327))) (h!27609 rules!3198) (size!17353 (seqFromList!2845 (_1!11919 lt!762327))) (_1!11919 lt!762327)) (_2!11919 lt!762327))))))

(declare-fun lt!762325 () Unit!36865)

(assert (=> b!2029652 (= lt!762325 (longestMatchIsAcceptedByMatchOrIsEmpty!538 (regex!3991 (h!27609 rules!3198)) (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun res!890082 () Bool)

(assert (=> b!2029652 (= res!890082 (isEmpty!13854 (_1!11919 (findLongestMatchInner!554 (regex!3991 (h!27609 rules!3198)) Nil!22207 (size!17349 Nil!22207) (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354) (size!17349 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))))

(assert (=> b!2029652 (=> res!890082 e!1282041)))

(assert (=> b!2029652 e!1282041))

(declare-fun lt!762328 () Unit!36865)

(assert (=> b!2029652 (= lt!762328 lt!762325)))

(declare-fun lt!762324 () Unit!36865)

(assert (=> b!2029652 (= lt!762324 (lemmaSemiInverse!948 (transformation!3991 (h!27609 rules!3198)) (seqFromList!2845 (_1!11919 lt!762327))))))

(declare-fun b!2029653 () Bool)

(declare-fun res!890080 () Bool)

(assert (=> b!2029653 (=> (not res!890080) (not e!1282042))))

(assert (=> b!2029653 (= res!890080 (= (++!6004 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762326)))) (_2!11913 (get!7053 lt!762326))) (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun b!2029654 () Bool)

(assert (=> b!2029654 (= e!1282042 (= (size!17347 (_1!11913 (get!7053 lt!762326))) (size!17349 (originalCharacters!4798 (_1!11913 (get!7053 lt!762326))))))))

(declare-fun b!2029655 () Bool)

(assert (=> b!2029655 (= e!1282044 e!1282042)))

(declare-fun res!890078 () Bool)

(assert (=> b!2029655 (=> (not res!890078) (not e!1282042))))

(assert (=> b!2029655 (= res!890078 (matchR!2682 (regex!3991 (h!27609 rules!3198)) (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762326))))))))

(declare-fun b!2029656 () Bool)

(declare-fun res!890079 () Bool)

(assert (=> b!2029656 (=> (not res!890079) (not e!1282042))))

(assert (=> b!2029656 (= res!890079 (= (value!125336 (_1!11913 (get!7053 lt!762326))) (apply!5846 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762326)))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!762326)))))))))

(declare-fun b!2029657 () Bool)

(declare-fun res!890081 () Bool)

(assert (=> b!2029657 (=> (not res!890081) (not e!1282042))))

(assert (=> b!2029657 (= res!890081 (= (rule!6220 (_1!11913 (get!7053 lt!762326))) (h!27609 rules!3198)))))

(declare-fun b!2029658 () Bool)

(assert (=> b!2029658 (= e!1282043 None!4664)))

(assert (= (and d!620779 c!328476) b!2029658))

(assert (= (and d!620779 (not c!328476)) b!2029652))

(assert (= (and b!2029652 (not res!890082)) b!2029651))

(assert (= (and d!620779 (not res!890083)) b!2029655))

(assert (= (and b!2029655 res!890078) b!2029653))

(assert (= (and b!2029653 res!890080) b!2029650))

(assert (= (and b!2029650 res!890084) b!2029657))

(assert (= (and b!2029657 res!890081) b!2029656))

(assert (= (and b!2029656 res!890079) b!2029654))

(assert (=> b!2029652 m!2468681))

(assert (=> b!2029652 m!2467209))

(assert (=> b!2029652 m!2467209))

(assert (=> b!2029652 m!2468353))

(declare-fun m!2469327 () Bool)

(assert (=> b!2029652 m!2469327))

(assert (=> b!2029652 m!2467209))

(assert (=> b!2029652 m!2468353))

(declare-fun m!2469329 () Bool)

(assert (=> b!2029652 m!2469329))

(assert (=> b!2029652 m!2469329))

(declare-fun m!2469331 () Bool)

(assert (=> b!2029652 m!2469331))

(declare-fun m!2469333 () Bool)

(assert (=> b!2029652 m!2469333))

(assert (=> b!2029652 m!2468681))

(assert (=> b!2029652 m!2469329))

(declare-fun m!2469335 () Bool)

(assert (=> b!2029652 m!2469335))

(assert (=> b!2029652 m!2469329))

(declare-fun m!2469337 () Bool)

(assert (=> b!2029652 m!2469337))

(assert (=> b!2029652 m!2467209))

(declare-fun m!2469339 () Bool)

(assert (=> b!2029652 m!2469339))

(declare-fun m!2469341 () Bool)

(assert (=> b!2029654 m!2469341))

(declare-fun m!2469343 () Bool)

(assert (=> b!2029654 m!2469343))

(assert (=> b!2029651 m!2468681))

(assert (=> b!2029651 m!2467209))

(assert (=> b!2029651 m!2468353))

(assert (=> b!2029651 m!2468681))

(assert (=> b!2029651 m!2467209))

(assert (=> b!2029651 m!2467209))

(assert (=> b!2029651 m!2468353))

(assert (=> b!2029651 m!2469327))

(declare-fun m!2469345 () Bool)

(assert (=> b!2029651 m!2469345))

(assert (=> b!2029650 m!2469341))

(declare-fun m!2469347 () Bool)

(assert (=> b!2029650 m!2469347))

(assert (=> b!2029650 m!2467209))

(assert (=> b!2029650 m!2468353))

(declare-fun m!2469349 () Bool)

(assert (=> d!620779 m!2469349))

(declare-fun m!2469351 () Bool)

(assert (=> d!620779 m!2469351))

(assert (=> d!620779 m!2467209))

(declare-fun m!2469353 () Bool)

(assert (=> d!620779 m!2469353))

(assert (=> d!620779 m!2468711))

(assert (=> b!2029657 m!2469341))

(assert (=> b!2029655 m!2469341))

(declare-fun m!2469355 () Bool)

(assert (=> b!2029655 m!2469355))

(assert (=> b!2029655 m!2469355))

(declare-fun m!2469357 () Bool)

(assert (=> b!2029655 m!2469357))

(assert (=> b!2029655 m!2469357))

(declare-fun m!2469359 () Bool)

(assert (=> b!2029655 m!2469359))

(assert (=> b!2029653 m!2469341))

(assert (=> b!2029653 m!2469355))

(assert (=> b!2029653 m!2469355))

(assert (=> b!2029653 m!2469357))

(assert (=> b!2029653 m!2469357))

(declare-fun m!2469361 () Bool)

(assert (=> b!2029653 m!2469361))

(assert (=> b!2029656 m!2469341))

(declare-fun m!2469363 () Bool)

(assert (=> b!2029656 m!2469363))

(assert (=> b!2029656 m!2469363))

(declare-fun m!2469365 () Bool)

(assert (=> b!2029656 m!2469365))

(assert (=> bm!124478 d!620779))

(declare-fun b!2029659 () Bool)

(declare-fun e!1282046 () List!22289)

(assert (=> b!2029659 (= e!1282046 lt!761948)))

(declare-fun b!2029662 () Bool)

(declare-fun lt!762329 () List!22289)

(declare-fun e!1282045 () Bool)

(assert (=> b!2029662 (= e!1282045 (or (not (= lt!761948 Nil!22207)) (= lt!762329 call!124454)))))

(declare-fun d!620781 () Bool)

(assert (=> d!620781 e!1282045))

(declare-fun res!890086 () Bool)

(assert (=> d!620781 (=> (not res!890086) (not e!1282045))))

(assert (=> d!620781 (= res!890086 (= (content!3278 lt!762329) (set.union (content!3278 call!124454) (content!3278 lt!761948))))))

(assert (=> d!620781 (= lt!762329 e!1282046)))

(declare-fun c!328477 () Bool)

(assert (=> d!620781 (= c!328477 (is-Nil!22207 call!124454))))

(assert (=> d!620781 (= (++!6004 call!124454 lt!761948) lt!762329)))

(declare-fun b!2029660 () Bool)

(assert (=> b!2029660 (= e!1282046 (Cons!22207 (h!27608 call!124454) (++!6004 (t!190124 call!124454) lt!761948)))))

(declare-fun b!2029661 () Bool)

(declare-fun res!890085 () Bool)

(assert (=> b!2029661 (=> (not res!890085) (not e!1282045))))

(assert (=> b!2029661 (= res!890085 (= (size!17349 lt!762329) (+ (size!17349 call!124454) (size!17349 lt!761948))))))

(assert (= (and d!620781 c!328477) b!2029659))

(assert (= (and d!620781 (not c!328477)) b!2029660))

(assert (= (and d!620781 res!890086) b!2029661))

(assert (= (and b!2029661 res!890085) b!2029662))

(declare-fun m!2469367 () Bool)

(assert (=> d!620781 m!2469367))

(declare-fun m!2469369 () Bool)

(assert (=> d!620781 m!2469369))

(declare-fun m!2469371 () Bool)

(assert (=> d!620781 m!2469371))

(declare-fun m!2469373 () Bool)

(assert (=> b!2029660 m!2469373))

(declare-fun m!2469375 () Bool)

(assert (=> b!2029661 m!2469375))

(declare-fun m!2469377 () Bool)

(assert (=> b!2029661 m!2469377))

(declare-fun m!2469379 () Bool)

(assert (=> b!2029661 m!2469379))

(assert (=> b!2028570 d!620781))

(declare-fun d!620783 () Bool)

(declare-fun res!890087 () Bool)

(declare-fun e!1282047 () Bool)

(assert (=> d!620783 (=> (not res!890087) (not e!1282047))))

(assert (=> d!620783 (= res!890087 (rulesValid!1495 thiss!23328 (t!190125 rules!3198)))))

(assert (=> d!620783 (= (rulesInvariant!3211 thiss!23328 (t!190125 rules!3198)) e!1282047)))

(declare-fun b!2029663 () Bool)

(assert (=> b!2029663 (= e!1282047 (noDuplicateTag!1493 thiss!23328 (t!190125 rules!3198) Nil!22214))))

(assert (= (and d!620783 res!890087) b!2029663))

(declare-fun m!2469381 () Bool)

(assert (=> d!620783 m!2469381))

(declare-fun m!2469383 () Bool)

(assert (=> b!2029663 m!2469383))

(assert (=> b!2028613 d!620783))

(declare-fun d!620785 () Bool)

(assert (=> d!620785 (rulesInvariant!3211 thiss!23328 (t!190125 rules!3198))))

(declare-fun lt!762332 () Unit!36865)

(declare-fun choose!12377 (LexerInterface!3604 Rule!7782 List!22290) Unit!36865)

(assert (=> d!620785 (= lt!762332 (choose!12377 thiss!23328 (h!27609 rules!3198) (t!190125 rules!3198)))))

(assert (=> d!620785 (rulesInvariant!3211 thiss!23328 (Cons!22208 (h!27609 rules!3198) (t!190125 rules!3198)))))

(assert (=> d!620785 (= (lemmaInvariantOnRulesThenOnTail!309 thiss!23328 (h!27609 rules!3198) (t!190125 rules!3198)) lt!762332)))

(declare-fun bs!420856 () Bool)

(assert (= bs!420856 d!620785))

(assert (=> bs!420856 m!2467833))

(declare-fun m!2469385 () Bool)

(assert (=> bs!420856 m!2469385))

(declare-fun m!2469387 () Bool)

(assert (=> bs!420856 m!2469387))

(assert (=> b!2028613 d!620785))

(declare-fun b!2029665 () Bool)

(declare-fun e!1282048 () Option!4666)

(declare-fun e!1282049 () Option!4666)

(assert (=> b!2029665 (= e!1282048 e!1282049)))

(declare-fun c!328479 () Bool)

(assert (=> b!2029665 (= c!328479 (and (is-Cons!22208 (t!190125 rules!3198)) (not (= (tag!4477 (h!27609 (t!190125 rules!3198))) (tag!4477 (rule!6220 separatorToken!354))))))))

(declare-fun b!2029666 () Bool)

(assert (=> b!2029666 (= e!1282048 (Some!4665 (h!27609 (t!190125 rules!3198))))))

(declare-fun b!2029667 () Bool)

(declare-fun lt!762335 () Unit!36865)

(declare-fun lt!762333 () Unit!36865)

(assert (=> b!2029667 (= lt!762335 lt!762333)))

(assert (=> b!2029667 (rulesInvariant!3211 thiss!23328 (t!190125 (t!190125 rules!3198)))))

(assert (=> b!2029667 (= lt!762333 (lemmaInvariantOnRulesThenOnTail!309 thiss!23328 (h!27609 (t!190125 rules!3198)) (t!190125 (t!190125 rules!3198))))))

(assert (=> b!2029667 (= e!1282049 (getRuleFromTag!806 thiss!23328 (t!190125 (t!190125 rules!3198)) (tag!4477 (rule!6220 separatorToken!354))))))

(declare-fun b!2029668 () Bool)

(declare-fun e!1282051 () Bool)

(declare-fun e!1282050 () Bool)

(assert (=> b!2029668 (= e!1282051 e!1282050)))

(declare-fun res!890089 () Bool)

(assert (=> b!2029668 (=> (not res!890089) (not e!1282050))))

(declare-fun lt!762334 () Option!4666)

(assert (=> b!2029668 (= res!890089 (contains!4097 (t!190125 rules!3198) (get!7052 lt!762334)))))

(declare-fun b!2029669 () Bool)

(assert (=> b!2029669 (= e!1282049 None!4665)))

(declare-fun d!620787 () Bool)

(assert (=> d!620787 e!1282051))

(declare-fun res!890088 () Bool)

(assert (=> d!620787 (=> res!890088 e!1282051)))

(assert (=> d!620787 (= res!890088 (isEmpty!13862 lt!762334))))

(assert (=> d!620787 (= lt!762334 e!1282048)))

(declare-fun c!328478 () Bool)

(assert (=> d!620787 (= c!328478 (and (is-Cons!22208 (t!190125 rules!3198)) (= (tag!4477 (h!27609 (t!190125 rules!3198))) (tag!4477 (rule!6220 separatorToken!354)))))))

(assert (=> d!620787 (rulesInvariant!3211 thiss!23328 (t!190125 rules!3198))))

(assert (=> d!620787 (= (getRuleFromTag!806 thiss!23328 (t!190125 rules!3198) (tag!4477 (rule!6220 separatorToken!354))) lt!762334)))

(declare-fun b!2029664 () Bool)

(assert (=> b!2029664 (= e!1282050 (= (tag!4477 (get!7052 lt!762334)) (tag!4477 (rule!6220 separatorToken!354))))))

(assert (= (and d!620787 c!328478) b!2029666))

(assert (= (and d!620787 (not c!328478)) b!2029665))

(assert (= (and b!2029665 c!328479) b!2029667))

(assert (= (and b!2029665 (not c!328479)) b!2029669))

(assert (= (and d!620787 (not res!890088)) b!2029668))

(assert (= (and b!2029668 res!890089) b!2029664))

(declare-fun m!2469389 () Bool)

(assert (=> b!2029667 m!2469389))

(declare-fun m!2469391 () Bool)

(assert (=> b!2029667 m!2469391))

(declare-fun m!2469393 () Bool)

(assert (=> b!2029667 m!2469393))

(declare-fun m!2469395 () Bool)

(assert (=> b!2029668 m!2469395))

(assert (=> b!2029668 m!2469395))

(declare-fun m!2469397 () Bool)

(assert (=> b!2029668 m!2469397))

(declare-fun m!2469399 () Bool)

(assert (=> d!620787 m!2469399))

(assert (=> d!620787 m!2467833))

(assert (=> b!2029664 m!2469395))

(assert (=> b!2028613 d!620787))

(assert (=> d!620315 d!620697))

(declare-fun lt!762336 () Bool)

(declare-fun d!620789 () Bool)

(assert (=> d!620789 (= lt!762336 (isEmpty!13854 (list!9066 (_2!11914 (lex!1620 thiss!23328 rules!3198 (print!1566 thiss!23328 (singletonSeq!1967 (h!27610 tokens!598))))))))))

(assert (=> d!620789 (= lt!762336 (isEmpty!13869 (c!328191 (_2!11914 (lex!1620 thiss!23328 rules!3198 (print!1566 thiss!23328 (singletonSeq!1967 (h!27610 tokens!598))))))))))

(assert (=> d!620789 (= (isEmpty!13864 (_2!11914 (lex!1620 thiss!23328 rules!3198 (print!1566 thiss!23328 (singletonSeq!1967 (h!27610 tokens!598)))))) lt!762336)))

(declare-fun bs!420857 () Bool)

(assert (= bs!420857 d!620789))

(declare-fun m!2469401 () Bool)

(assert (=> bs!420857 m!2469401))

(assert (=> bs!420857 m!2469401))

(declare-fun m!2469403 () Bool)

(assert (=> bs!420857 m!2469403))

(declare-fun m!2469405 () Bool)

(assert (=> bs!420857 m!2469405))

(assert (=> b!2028907 d!620789))

(declare-fun b!2029670 () Bool)

(declare-fun e!1282052 () Bool)

(declare-fun lt!762337 () tuple2!20890)

(assert (=> b!2029670 (= e!1282052 (= (list!9066 (_2!11914 lt!762337)) (_2!11917 (lexList!982 thiss!23328 rules!3198 (list!9066 (print!1566 thiss!23328 (singletonSeq!1967 (h!27610 tokens!598))))))))))

(declare-fun e!1282053 () Bool)

(declare-fun b!2029671 () Bool)

(assert (=> b!2029671 (= e!1282053 (= (_2!11914 lt!762337) (print!1566 thiss!23328 (singletonSeq!1967 (h!27610 tokens!598)))))))

(declare-fun b!2029672 () Bool)

(declare-fun e!1282054 () Bool)

(assert (=> b!2029672 (= e!1282054 (not (isEmpty!13855 (_1!11914 lt!762337))))))

(declare-fun b!2029673 () Bool)

(assert (=> b!2029673 (= e!1282053 e!1282054)))

(declare-fun res!890091 () Bool)

(assert (=> b!2029673 (= res!890091 (< (size!17353 (_2!11914 lt!762337)) (size!17353 (print!1566 thiss!23328 (singletonSeq!1967 (h!27610 tokens!598))))))))

(assert (=> b!2029673 (=> (not res!890091) (not e!1282054))))

(declare-fun d!620791 () Bool)

(assert (=> d!620791 e!1282052))

(declare-fun res!890090 () Bool)

(assert (=> d!620791 (=> (not res!890090) (not e!1282052))))

(assert (=> d!620791 (= res!890090 e!1282053)))

(declare-fun c!328480 () Bool)

(assert (=> d!620791 (= c!328480 (> (size!17351 (_1!11914 lt!762337)) 0))))

(assert (=> d!620791 (= lt!762337 (lexTailRecV2!705 thiss!23328 rules!3198 (print!1566 thiss!23328 (singletonSeq!1967 (h!27610 tokens!598))) (BalanceConc!14673 Empty!7428) (print!1566 thiss!23328 (singletonSeq!1967 (h!27610 tokens!598))) (BalanceConc!14675 Empty!7429)))))

(assert (=> d!620791 (= (lex!1620 thiss!23328 rules!3198 (print!1566 thiss!23328 (singletonSeq!1967 (h!27610 tokens!598)))) lt!762337)))

(declare-fun b!2029674 () Bool)

(declare-fun res!890092 () Bool)

(assert (=> b!2029674 (=> (not res!890092) (not e!1282052))))

(assert (=> b!2029674 (= res!890092 (= (list!9070 (_1!11914 lt!762337)) (_1!11917 (lexList!982 thiss!23328 rules!3198 (list!9066 (print!1566 thiss!23328 (singletonSeq!1967 (h!27610 tokens!598))))))))))

(assert (= (and d!620791 c!328480) b!2029673))

(assert (= (and d!620791 (not c!328480)) b!2029671))

(assert (= (and b!2029673 res!890091) b!2029672))

(assert (= (and d!620791 res!890090) b!2029674))

(assert (= (and b!2029674 res!890092) b!2029670))

(declare-fun m!2469407 () Bool)

(assert (=> b!2029672 m!2469407))

(declare-fun m!2469409 () Bool)

(assert (=> b!2029673 m!2469409))

(assert (=> b!2029673 m!2468249))

(declare-fun m!2469411 () Bool)

(assert (=> b!2029673 m!2469411))

(declare-fun m!2469413 () Bool)

(assert (=> b!2029670 m!2469413))

(assert (=> b!2029670 m!2468249))

(declare-fun m!2469415 () Bool)

(assert (=> b!2029670 m!2469415))

(assert (=> b!2029670 m!2469415))

(declare-fun m!2469417 () Bool)

(assert (=> b!2029670 m!2469417))

(declare-fun m!2469419 () Bool)

(assert (=> d!620791 m!2469419))

(assert (=> d!620791 m!2468249))

(assert (=> d!620791 m!2468249))

(declare-fun m!2469421 () Bool)

(assert (=> d!620791 m!2469421))

(declare-fun m!2469423 () Bool)

(assert (=> b!2029674 m!2469423))

(assert (=> b!2029674 m!2468249))

(assert (=> b!2029674 m!2469415))

(assert (=> b!2029674 m!2469415))

(assert (=> b!2029674 m!2469417))

(assert (=> b!2028907 d!620791))

(declare-fun d!620793 () Bool)

(declare-fun lt!762338 () BalanceConc!14672)

(assert (=> d!620793 (= (list!9066 lt!762338) (printList!1123 thiss!23328 (list!9070 (singletonSeq!1967 (h!27610 tokens!598)))))))

(assert (=> d!620793 (= lt!762338 (printTailRec!1072 thiss!23328 (singletonSeq!1967 (h!27610 tokens!598)) 0 (BalanceConc!14673 Empty!7428)))))

(assert (=> d!620793 (= (print!1566 thiss!23328 (singletonSeq!1967 (h!27610 tokens!598))) lt!762338)))

(declare-fun bs!420858 () Bool)

(assert (= bs!420858 d!620793))

(declare-fun m!2469425 () Bool)

(assert (=> bs!420858 m!2469425))

(assert (=> bs!420858 m!2467289))

(assert (=> bs!420858 m!2468253))

(assert (=> bs!420858 m!2468253))

(declare-fun m!2469427 () Bool)

(assert (=> bs!420858 m!2469427))

(assert (=> bs!420858 m!2467289))

(assert (=> bs!420858 m!2468385))

(assert (=> b!2028907 d!620793))

(assert (=> b!2028907 d!620379))

(declare-fun d!620795 () Bool)

(declare-fun c!328481 () Bool)

(assert (=> d!620795 (= c!328481 (is-Nil!22207 lt!761858))))

(declare-fun e!1282055 () (Set C!10978))

(assert (=> d!620795 (= (content!3278 lt!761858) e!1282055)))

(declare-fun b!2029675 () Bool)

(assert (=> b!2029675 (= e!1282055 (as set.empty (Set C!10978)))))

(declare-fun b!2029676 () Bool)

(assert (=> b!2029676 (= e!1282055 (set.union (set.insert (h!27608 lt!761858) (as set.empty (Set C!10978))) (content!3278 (t!190124 lt!761858))))))

(assert (= (and d!620795 c!328481) b!2029675))

(assert (= (and d!620795 (not c!328481)) b!2029676))

(declare-fun m!2469429 () Bool)

(assert (=> b!2029676 m!2469429))

(declare-fun m!2469431 () Bool)

(assert (=> b!2029676 m!2469431))

(assert (=> d!620219 d!620795))

(assert (=> d!620219 d!620771))

(assert (=> d!620219 d!620661))

(declare-fun d!620797 () Bool)

(declare-fun lt!762339 () Bool)

(assert (=> d!620797 (= lt!762339 (isEmpty!13853 (list!9070 (_1!11914 lt!761999))))))

(assert (=> d!620797 (= lt!762339 (isEmpty!13865 (c!328193 (_1!11914 lt!761999))))))

(assert (=> d!620797 (= (isEmpty!13855 (_1!11914 lt!761999)) lt!762339)))

(declare-fun bs!420859 () Bool)

(assert (= bs!420859 d!620797))

(assert (=> bs!420859 m!2467985))

(assert (=> bs!420859 m!2467985))

(declare-fun m!2469433 () Bool)

(assert (=> bs!420859 m!2469433))

(declare-fun m!2469435 () Bool)

(assert (=> bs!420859 m!2469435))

(assert (=> b!2028754 d!620797))

(assert (=> b!2028921 d!620383))

(declare-fun d!620799 () Bool)

(declare-fun lt!762342 () Int)

(assert (=> d!620799 (= lt!762342 (size!17357 (list!9070 (_1!11914 lt!761999))))))

(assert (=> d!620799 (= lt!762342 (size!17356 (c!328193 (_1!11914 lt!761999))))))

(assert (=> d!620799 (= (size!17351 (_1!11914 lt!761999)) lt!762342)))

(declare-fun bs!420860 () Bool)

(assert (= bs!420860 d!620799))

(assert (=> bs!420860 m!2467985))

(assert (=> bs!420860 m!2467985))

(declare-fun m!2469437 () Bool)

(assert (=> bs!420860 m!2469437))

(declare-fun m!2469439 () Bool)

(assert (=> bs!420860 m!2469439))

(assert (=> d!620335 d!620799))

(declare-fun b!2029691 () Bool)

(declare-fun lt!762442 () tuple2!20890)

(declare-fun e!1282064 () Bool)

(declare-fun lexRec!416 (LexerInterface!3604 List!22290 BalanceConc!14672) tuple2!20890)

(assert (=> b!2029691 (= e!1282064 (= (list!9066 (_2!11914 lt!762442)) (list!9066 (_2!11914 (lexRec!416 thiss!23328 rules!3198 (seqFromList!2845 lt!761718))))))))

(declare-fun b!2029692 () Bool)

(declare-fun e!1282066 () tuple2!20890)

(declare-fun lt!762413 () BalanceConc!14672)

(assert (=> b!2029692 (= e!1282066 (tuple2!20891 (BalanceConc!14675 Empty!7429) lt!762413))))

(declare-fun b!2029693 () Bool)

(declare-fun e!1282065 () tuple2!20890)

(assert (=> b!2029693 (= e!1282065 (tuple2!20891 (BalanceConc!14675 Empty!7429) (seqFromList!2845 lt!761718)))))

(declare-fun b!2029694 () Bool)

(declare-datatypes ((tuple2!20902 0))(
  ( (tuple2!20903 (_1!11920 Token!7534) (_2!11920 BalanceConc!14672)) )
))
(declare-datatypes ((Option!4669 0))(
  ( (None!4668) (Some!4668 (v!27001 tuple2!20902)) )
))
(declare-fun lt!762421 () Option!4669)

(declare-fun lt!762418 () tuple2!20890)

(assert (=> b!2029694 (= lt!762418 (lexRec!416 thiss!23328 rules!3198 (_2!11920 (v!27001 lt!762421))))))

(declare-fun e!1282067 () tuple2!20890)

(declare-fun prepend!901 (BalanceConc!14674 Token!7534) BalanceConc!14674)

(assert (=> b!2029694 (= e!1282067 (tuple2!20891 (prepend!901 (_1!11914 lt!762418) (_1!11920 (v!27001 lt!762421))) (_2!11914 lt!762418)))))

(declare-fun b!2029695 () Bool)

(assert (=> b!2029695 (= e!1282067 (tuple2!20891 (BalanceConc!14675 Empty!7429) (seqFromList!2845 lt!761718)))))

(declare-fun lt!762440 () Option!4669)

(declare-fun b!2029696 () Bool)

(declare-fun lt!762415 () tuple2!20890)

(assert (=> b!2029696 (= lt!762415 (lexRec!416 thiss!23328 rules!3198 (_2!11920 (v!27001 lt!762440))))))

(assert (=> b!2029696 (= e!1282066 (tuple2!20891 (prepend!901 (_1!11914 lt!762415) (_1!11920 (v!27001 lt!762440))) (_2!11914 lt!762415)))))

(declare-fun d!620801 () Bool)

(assert (=> d!620801 e!1282064))

(declare-fun res!890095 () Bool)

(assert (=> d!620801 (=> (not res!890095) (not e!1282064))))

(assert (=> d!620801 (= res!890095 (= (list!9070 (_1!11914 lt!762442)) (list!9070 (_1!11914 (lexRec!416 thiss!23328 rules!3198 (seqFromList!2845 lt!761718))))))))

(assert (=> d!620801 (= lt!762442 e!1282065)))

(declare-fun c!328489 () Bool)

(declare-fun lt!762416 () Option!4669)

(assert (=> d!620801 (= c!328489 (is-Some!4668 lt!762416))))

(declare-fun maxPrefixZipperSequenceV2!310 (LexerInterface!3604 List!22290 BalanceConc!14672 BalanceConc!14672) Option!4669)

(assert (=> d!620801 (= lt!762416 (maxPrefixZipperSequenceV2!310 thiss!23328 rules!3198 (seqFromList!2845 lt!761718) (seqFromList!2845 lt!761718)))))

(declare-fun lt!762438 () Unit!36865)

(declare-fun lt!762431 () Unit!36865)

(assert (=> d!620801 (= lt!762438 lt!762431)))

(declare-fun lt!762420 () List!22289)

(declare-fun lt!762411 () List!22289)

(declare-fun isSuffix!461 (List!22289 List!22289) Bool)

(assert (=> d!620801 (isSuffix!461 lt!762420 (++!6004 lt!762411 lt!762420))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!362 (List!22289 List!22289) Unit!36865)

(assert (=> d!620801 (= lt!762431 (lemmaConcatTwoListThenFSndIsSuffix!362 lt!762411 lt!762420))))

(assert (=> d!620801 (= lt!762420 (list!9066 (seqFromList!2845 lt!761718)))))

(assert (=> d!620801 (= lt!762411 (list!9066 (BalanceConc!14673 Empty!7428)))))

(assert (=> d!620801 (= (lexTailRecV2!705 thiss!23328 rules!3198 (seqFromList!2845 lt!761718) (BalanceConc!14673 Empty!7428) (seqFromList!2845 lt!761718) (BalanceConc!14675 Empty!7429)) lt!762442)))

(declare-fun b!2029697 () Bool)

(declare-fun lt!762424 () BalanceConc!14672)

(declare-fun append!622 (BalanceConc!14674 Token!7534) BalanceConc!14674)

(assert (=> b!2029697 (= e!1282065 (lexTailRecV2!705 thiss!23328 rules!3198 (seqFromList!2845 lt!761718) lt!762424 (_2!11920 (v!27001 lt!762416)) (append!622 (BalanceConc!14675 Empty!7429) (_1!11920 (v!27001 lt!762416)))))))

(declare-fun lt!762433 () tuple2!20890)

(assert (=> b!2029697 (= lt!762433 (lexRec!416 thiss!23328 rules!3198 (_2!11920 (v!27001 lt!762416))))))

(declare-fun lt!762419 () List!22289)

(assert (=> b!2029697 (= lt!762419 (list!9066 (BalanceConc!14673 Empty!7428)))))

(declare-fun lt!762429 () List!22289)

(assert (=> b!2029697 (= lt!762429 (list!9066 (charsOf!2531 (_1!11920 (v!27001 lt!762416)))))))

(declare-fun lt!762444 () List!22289)

(assert (=> b!2029697 (= lt!762444 (list!9066 (_2!11920 (v!27001 lt!762416))))))

(declare-fun lt!762436 () Unit!36865)

(assert (=> b!2029697 (= lt!762436 (lemmaConcatAssociativity!1256 lt!762419 lt!762429 lt!762444))))

(assert (=> b!2029697 (= (++!6004 (++!6004 lt!762419 lt!762429) lt!762444) (++!6004 lt!762419 (++!6004 lt!762429 lt!762444)))))

(declare-fun lt!762423 () Unit!36865)

(assert (=> b!2029697 (= lt!762423 lt!762436)))

(declare-fun maxPrefixZipperSequence!782 (LexerInterface!3604 List!22290 BalanceConc!14672) Option!4669)

(assert (=> b!2029697 (= lt!762421 (maxPrefixZipperSequence!782 thiss!23328 rules!3198 (seqFromList!2845 lt!761718)))))

(declare-fun c!328488 () Bool)

(assert (=> b!2029697 (= c!328488 (is-Some!4668 lt!762421))))

(assert (=> b!2029697 (= (lexRec!416 thiss!23328 rules!3198 (seqFromList!2845 lt!761718)) e!1282067)))

(declare-fun lt!762412 () Unit!36865)

(declare-fun Unit!36884 () Unit!36865)

(assert (=> b!2029697 (= lt!762412 Unit!36884)))

(declare-fun lt!762434 () List!22291)

(assert (=> b!2029697 (= lt!762434 (list!9070 (BalanceConc!14675 Empty!7429)))))

(declare-fun lt!762426 () List!22291)

(assert (=> b!2029697 (= lt!762426 (Cons!22209 (_1!11920 (v!27001 lt!762416)) Nil!22209))))

(declare-fun lt!762439 () List!22291)

(assert (=> b!2029697 (= lt!762439 (list!9070 (_1!11914 lt!762433)))))

(declare-fun lt!762432 () Unit!36865)

(declare-fun lemmaConcatAssociativity!1258 (List!22291 List!22291 List!22291) Unit!36865)

(assert (=> b!2029697 (= lt!762432 (lemmaConcatAssociativity!1258 lt!762434 lt!762426 lt!762439))))

(declare-fun ++!6008 (List!22291 List!22291) List!22291)

(assert (=> b!2029697 (= (++!6008 (++!6008 lt!762434 lt!762426) lt!762439) (++!6008 lt!762434 (++!6008 lt!762426 lt!762439)))))

(declare-fun lt!762437 () Unit!36865)

(assert (=> b!2029697 (= lt!762437 lt!762432)))

(declare-fun lt!762430 () List!22289)

(assert (=> b!2029697 (= lt!762430 (++!6004 (list!9066 (BalanceConc!14673 Empty!7428)) (list!9066 (charsOf!2531 (_1!11920 (v!27001 lt!762416))))))))

(declare-fun lt!762417 () List!22289)

(assert (=> b!2029697 (= lt!762417 (list!9066 (_2!11920 (v!27001 lt!762416))))))

(declare-fun lt!762428 () List!22291)

(assert (=> b!2029697 (= lt!762428 (list!9070 (append!622 (BalanceConc!14675 Empty!7429) (_1!11920 (v!27001 lt!762416)))))))

(declare-fun lt!762435 () Unit!36865)

(declare-fun lemmaLexThenLexPrefix!304 (LexerInterface!3604 List!22290 List!22289 List!22289 List!22291 List!22291 List!22289) Unit!36865)

(assert (=> b!2029697 (= lt!762435 (lemmaLexThenLexPrefix!304 thiss!23328 rules!3198 lt!762430 lt!762417 lt!762428 (list!9070 (_1!11914 lt!762433)) (list!9066 (_2!11914 lt!762433))))))

(assert (=> b!2029697 (= (lexList!982 thiss!23328 rules!3198 lt!762430) (tuple2!20897 lt!762428 Nil!22207))))

(declare-fun lt!762441 () Unit!36865)

(assert (=> b!2029697 (= lt!762441 lt!762435)))

(assert (=> b!2029697 (= lt!762413 (++!6007 (BalanceConc!14673 Empty!7428) (charsOf!2531 (_1!11920 (v!27001 lt!762416)))))))

(assert (=> b!2029697 (= lt!762440 (maxPrefixZipperSequence!782 thiss!23328 rules!3198 lt!762413))))

(declare-fun c!328490 () Bool)

(assert (=> b!2029697 (= c!328490 (is-Some!4668 lt!762440))))

(assert (=> b!2029697 (= (lexRec!416 thiss!23328 rules!3198 (++!6007 (BalanceConc!14673 Empty!7428) (charsOf!2531 (_1!11920 (v!27001 lt!762416))))) e!1282066)))

(declare-fun lt!762414 () Unit!36865)

(declare-fun Unit!36885 () Unit!36865)

(assert (=> b!2029697 (= lt!762414 Unit!36885)))

(assert (=> b!2029697 (= lt!762424 (++!6007 (BalanceConc!14673 Empty!7428) (charsOf!2531 (_1!11920 (v!27001 lt!762416)))))))

(declare-fun lt!762427 () List!22289)

(assert (=> b!2029697 (= lt!762427 (list!9066 lt!762424))))

(declare-fun lt!762422 () List!22289)

(assert (=> b!2029697 (= lt!762422 (list!9066 (_2!11920 (v!27001 lt!762416))))))

(declare-fun lt!762443 () Unit!36865)

(assert (=> b!2029697 (= lt!762443 (lemmaConcatTwoListThenFSndIsSuffix!362 lt!762427 lt!762422))))

(assert (=> b!2029697 (isSuffix!461 lt!762422 (++!6004 lt!762427 lt!762422))))

(declare-fun lt!762425 () Unit!36865)

(assert (=> b!2029697 (= lt!762425 lt!762443)))

(assert (= (and d!620801 c!328489) b!2029697))

(assert (= (and d!620801 (not c!328489)) b!2029693))

(assert (= (and b!2029697 c!328488) b!2029694))

(assert (= (and b!2029697 (not c!328488)) b!2029695))

(assert (= (and b!2029697 c!328490) b!2029696))

(assert (= (and b!2029697 (not c!328490)) b!2029692))

(assert (= (and d!620801 res!890095) b!2029691))

(declare-fun m!2469441 () Bool)

(assert (=> b!2029694 m!2469441))

(declare-fun m!2469443 () Bool)

(assert (=> b!2029694 m!2469443))

(declare-fun m!2469445 () Bool)

(assert (=> b!2029696 m!2469445))

(declare-fun m!2469447 () Bool)

(assert (=> b!2029696 m!2469447))

(declare-fun m!2469449 () Bool)

(assert (=> b!2029697 m!2469449))

(declare-fun m!2469451 () Bool)

(assert (=> b!2029697 m!2469451))

(declare-fun m!2469453 () Bool)

(assert (=> b!2029697 m!2469453))

(declare-fun m!2469455 () Bool)

(assert (=> b!2029697 m!2469455))

(declare-fun m!2469457 () Bool)

(assert (=> b!2029697 m!2469457))

(declare-fun m!2469459 () Bool)

(assert (=> b!2029697 m!2469459))

(declare-fun m!2469461 () Bool)

(assert (=> b!2029697 m!2469461))

(declare-fun m!2469463 () Bool)

(assert (=> b!2029697 m!2469463))

(declare-fun m!2469465 () Bool)

(assert (=> b!2029697 m!2469465))

(declare-fun m!2469467 () Bool)

(assert (=> b!2029697 m!2469467))

(assert (=> b!2029697 m!2468063))

(assert (=> b!2029697 m!2469463))

(declare-fun m!2469469 () Bool)

(assert (=> b!2029697 m!2469469))

(declare-fun m!2469471 () Bool)

(assert (=> b!2029697 m!2469471))

(declare-fun m!2469473 () Bool)

(assert (=> b!2029697 m!2469473))

(declare-fun m!2469475 () Bool)

(assert (=> b!2029697 m!2469475))

(declare-fun m!2469477 () Bool)

(assert (=> b!2029697 m!2469477))

(assert (=> b!2029697 m!2469471))

(declare-fun m!2469479 () Bool)

(assert (=> b!2029697 m!2469479))

(declare-fun m!2469481 () Bool)

(assert (=> b!2029697 m!2469481))

(declare-fun m!2469483 () Bool)

(assert (=> b!2029697 m!2469483))

(assert (=> b!2029697 m!2469473))

(declare-fun m!2469485 () Bool)

(assert (=> b!2029697 m!2469485))

(declare-fun m!2469487 () Bool)

(assert (=> b!2029697 m!2469487))

(declare-fun m!2469489 () Bool)

(assert (=> b!2029697 m!2469489))

(assert (=> b!2029697 m!2469461))

(declare-fun m!2469491 () Bool)

(assert (=> b!2029697 m!2469491))

(assert (=> b!2029697 m!2469461))

(assert (=> b!2029697 m!2469491))

(declare-fun m!2469493 () Bool)

(assert (=> b!2029697 m!2469493))

(assert (=> b!2029697 m!2469487))

(declare-fun m!2469495 () Bool)

(assert (=> b!2029697 m!2469495))

(declare-fun m!2469497 () Bool)

(assert (=> b!2029697 m!2469497))

(assert (=> b!2029697 m!2469497))

(assert (=> b!2029697 m!2469459))

(declare-fun m!2469499 () Bool)

(assert (=> b!2029697 m!2469499))

(assert (=> b!2029697 m!2467201))

(assert (=> b!2029697 m!2469471))

(declare-fun m!2469501 () Bool)

(assert (=> b!2029697 m!2469501))

(assert (=> b!2029697 m!2469455))

(assert (=> b!2029697 m!2469449))

(declare-fun m!2469503 () Bool)

(assert (=> b!2029697 m!2469503))

(assert (=> b!2029697 m!2468063))

(declare-fun m!2469505 () Bool)

(assert (=> b!2029697 m!2469505))

(assert (=> b!2029697 m!2467201))

(declare-fun m!2469507 () Bool)

(assert (=> b!2029697 m!2469507))

(assert (=> b!2029697 m!2469465))

(declare-fun m!2469509 () Bool)

(assert (=> b!2029697 m!2469509))

(assert (=> b!2029697 m!2467201))

(declare-fun m!2469511 () Bool)

(assert (=> b!2029697 m!2469511))

(declare-fun m!2469513 () Bool)

(assert (=> b!2029691 m!2469513))

(assert (=> b!2029691 m!2467201))

(assert (=> b!2029691 m!2469511))

(declare-fun m!2469515 () Bool)

(assert (=> b!2029691 m!2469515))

(assert (=> d!620801 m!2467201))

(assert (=> d!620801 m!2469511))

(assert (=> d!620801 m!2467201))

(assert (=> d!620801 m!2467201))

(declare-fun m!2469517 () Bool)

(assert (=> d!620801 m!2469517))

(assert (=> d!620801 m!2468063))

(declare-fun m!2469519 () Bool)

(assert (=> d!620801 m!2469519))

(declare-fun m!2469521 () Bool)

(assert (=> d!620801 m!2469521))

(declare-fun m!2469523 () Bool)

(assert (=> d!620801 m!2469523))

(declare-fun m!2469525 () Bool)

(assert (=> d!620801 m!2469525))

(assert (=> d!620801 m!2467201))

(assert (=> d!620801 m!2467973))

(assert (=> d!620801 m!2469519))

(declare-fun m!2469527 () Bool)

(assert (=> d!620801 m!2469527))

(assert (=> d!620335 d!620801))

(assert (=> d!620363 d!620623))

(declare-fun b!2029709 () Bool)

(declare-fun e!1282073 () List!22289)

(assert (=> b!2029709 (= e!1282073 (++!6004 (list!9068 (left!17670 (c!328191 lt!761729))) (list!9068 (right!18000 (c!328191 lt!761729)))))))

(declare-fun b!2029706 () Bool)

(declare-fun e!1282072 () List!22289)

(assert (=> b!2029706 (= e!1282072 Nil!22207)))

(declare-fun d!620803 () Bool)

(declare-fun c!328495 () Bool)

(assert (=> d!620803 (= c!328495 (is-Empty!7428 (c!328191 lt!761729)))))

(assert (=> d!620803 (= (list!9068 (c!328191 lt!761729)) e!1282072)))

(declare-fun b!2029707 () Bool)

(assert (=> b!2029707 (= e!1282072 e!1282073)))

(declare-fun c!328496 () Bool)

(assert (=> b!2029707 (= c!328496 (is-Leaf!10887 (c!328191 lt!761729)))))

(declare-fun b!2029708 () Bool)

(declare-fun list!9073 (IArray!14861) List!22289)

(assert (=> b!2029708 (= e!1282073 (list!9073 (xs!10330 (c!328191 lt!761729))))))

(assert (= (and d!620803 c!328495) b!2029706))

(assert (= (and d!620803 (not c!328495)) b!2029707))

(assert (= (and b!2029707 c!328496) b!2029708))

(assert (= (and b!2029707 (not c!328496)) b!2029709))

(declare-fun m!2469529 () Bool)

(assert (=> b!2029709 m!2469529))

(declare-fun m!2469531 () Bool)

(assert (=> b!2029709 m!2469531))

(assert (=> b!2029709 m!2469529))

(assert (=> b!2029709 m!2469531))

(declare-fun m!2469533 () Bool)

(assert (=> b!2029709 m!2469533))

(declare-fun m!2469535 () Bool)

(assert (=> b!2029708 m!2469535))

(assert (=> d!620305 d!620803))

(assert (=> d!620325 d!620327))

(declare-fun d!620805 () Bool)

(assert (=> d!620805 (not (matchR!2682 (regex!3991 (rule!6220 separatorToken!354)) lt!761716))))

(assert (=> d!620805 true))

(declare-fun _$127!237 () Unit!36865)

(assert (=> d!620805 (= (choose!12366 (regex!3991 (rule!6220 separatorToken!354)) lt!761716 lt!761709) _$127!237)))

(declare-fun bs!420861 () Bool)

(assert (= bs!420861 d!620805))

(assert (=> bs!420861 m!2467227))

(assert (=> d!620325 d!620805))

(assert (=> d!620325 d!620691))

(declare-fun d!620807 () Bool)

(declare-fun lt!762447 () Token!7534)

(declare-fun contains!4101 (List!22291 Token!7534) Bool)

(assert (=> d!620807 (contains!4101 lt!762031 lt!762447)))

(declare-fun e!1282079 () Token!7534)

(assert (=> d!620807 (= lt!762447 e!1282079)))

(declare-fun c!328500 () Bool)

(assert (=> d!620807 (= c!328500 (= 0 0))))

(declare-fun e!1282078 () Bool)

(assert (=> d!620807 e!1282078))

(declare-fun res!890098 () Bool)

(assert (=> d!620807 (=> (not res!890098) (not e!1282078))))

(assert (=> d!620807 (= res!890098 (<= 0 0))))

(assert (=> d!620807 (= (apply!5850 lt!762031 0) lt!762447)))

(declare-fun b!2029716 () Bool)

(assert (=> b!2029716 (= e!1282078 (< 0 (size!17357 lt!762031)))))

(declare-fun b!2029717 () Bool)

(assert (=> b!2029717 (= e!1282079 (head!4583 lt!762031))))

(declare-fun b!2029718 () Bool)

(assert (=> b!2029718 (= e!1282079 (apply!5850 (tail!3062 lt!762031) (- 0 1)))))

(assert (= (and d!620807 res!890098) b!2029716))

(assert (= (and d!620807 c!328500) b!2029717))

(assert (= (and d!620807 (not c!328500)) b!2029718))

(declare-fun m!2469537 () Bool)

(assert (=> d!620807 m!2469537))

(declare-fun m!2469539 () Bool)

(assert (=> b!2029716 m!2469539))

(declare-fun m!2469541 () Bool)

(assert (=> b!2029717 m!2469541))

(declare-fun m!2469543 () Bool)

(assert (=> b!2029718 m!2469543))

(assert (=> b!2029718 m!2469543))

(declare-fun m!2469545 () Bool)

(assert (=> b!2029718 m!2469545))

(assert (=> b!2028818 d!620807))

(declare-fun d!620809 () Bool)

(declare-fun e!1282094 () Bool)

(assert (=> d!620809 e!1282094))

(declare-fun res!890101 () Bool)

(assert (=> d!620809 (=> (not res!890101) (not e!1282094))))

(declare-fun lt!762450 () List!22291)

(declare-fun content!3282 (List!22291) (Set Token!7534))

(assert (=> d!620809 (= res!890101 (set.subset (content!3282 lt!762450) (content!3282 lt!762031)))))

(declare-fun e!1282092 () List!22291)

(assert (=> d!620809 (= lt!762450 e!1282092)))

(declare-fun c!328512 () Bool)

(assert (=> d!620809 (= c!328512 (is-Nil!22209 lt!762031))))

(assert (=> d!620809 (= (drop!1121 lt!762031 0) lt!762450)))

(declare-fun b!2029737 () Bool)

(declare-fun e!1282093 () List!22291)

(assert (=> b!2029737 (= e!1282093 lt!762031)))

(declare-fun b!2029738 () Bool)

(declare-fun e!1282091 () Int)

(assert (=> b!2029738 (= e!1282091 0)))

(declare-fun b!2029739 () Bool)

(assert (=> b!2029739 (= e!1282093 (drop!1121 (t!190126 lt!762031) (- 0 1)))))

(declare-fun b!2029740 () Bool)

(declare-fun e!1282090 () Int)

(assert (=> b!2029740 (= e!1282094 (= (size!17357 lt!762450) e!1282090))))

(declare-fun c!328509 () Bool)

(assert (=> b!2029740 (= c!328509 (<= 0 0))))

(declare-fun b!2029741 () Bool)

(assert (=> b!2029741 (= e!1282092 Nil!22209)))

(declare-fun b!2029742 () Bool)

(assert (=> b!2029742 (= e!1282092 e!1282093)))

(declare-fun c!328511 () Bool)

(assert (=> b!2029742 (= c!328511 (<= 0 0))))

(declare-fun b!2029743 () Bool)

(declare-fun call!124556 () Int)

(assert (=> b!2029743 (= e!1282091 (- call!124556 0))))

(declare-fun bm!124551 () Bool)

(assert (=> bm!124551 (= call!124556 (size!17357 lt!762031))))

(declare-fun b!2029744 () Bool)

(assert (=> b!2029744 (= e!1282090 call!124556)))

(declare-fun b!2029745 () Bool)

(assert (=> b!2029745 (= e!1282090 e!1282091)))

(declare-fun c!328510 () Bool)

(assert (=> b!2029745 (= c!328510 (>= 0 call!124556))))

(assert (= (and d!620809 c!328512) b!2029741))

(assert (= (and d!620809 (not c!328512)) b!2029742))

(assert (= (and b!2029742 c!328511) b!2029737))

(assert (= (and b!2029742 (not c!328511)) b!2029739))

(assert (= (and d!620809 res!890101) b!2029740))

(assert (= (and b!2029740 c!328509) b!2029744))

(assert (= (and b!2029740 (not c!328509)) b!2029745))

(assert (= (and b!2029745 c!328510) b!2029738))

(assert (= (and b!2029745 (not c!328510)) b!2029743))

(assert (= (or b!2029744 b!2029745 b!2029743) bm!124551))

(declare-fun m!2469547 () Bool)

(assert (=> d!620809 m!2469547))

(declare-fun m!2469549 () Bool)

(assert (=> d!620809 m!2469549))

(declare-fun m!2469551 () Bool)

(assert (=> b!2029739 m!2469551))

(declare-fun m!2469553 () Bool)

(assert (=> b!2029740 m!2469553))

(assert (=> bm!124551 m!2469539))

(assert (=> b!2028818 d!620809))

(declare-fun d!620811 () Bool)

(assert (=> d!620811 (= (head!4583 (drop!1121 lt!762031 0)) (apply!5850 lt!762031 0))))

(declare-fun lt!762453 () Unit!36865)

(declare-fun choose!12378 (List!22291 Int) Unit!36865)

(assert (=> d!620811 (= lt!762453 (choose!12378 lt!762031 0))))

(declare-fun e!1282097 () Bool)

(assert (=> d!620811 e!1282097))

(declare-fun res!890104 () Bool)

(assert (=> d!620811 (=> (not res!890104) (not e!1282097))))

(assert (=> d!620811 (= res!890104 (>= 0 0))))

(assert (=> d!620811 (= (lemmaDropApply!744 lt!762031 0) lt!762453)))

(declare-fun b!2029748 () Bool)

(assert (=> b!2029748 (= e!1282097 (< 0 (size!17357 lt!762031)))))

(assert (= (and d!620811 res!890104) b!2029748))

(assert (=> d!620811 m!2468089))

(assert (=> d!620811 m!2468089))

(assert (=> d!620811 m!2468091))

(assert (=> d!620811 m!2468075))

(declare-fun m!2469555 () Bool)

(assert (=> d!620811 m!2469555))

(assert (=> b!2029748 m!2469539))

(assert (=> b!2028818 d!620811))

(declare-fun d!620813 () Bool)

(assert (=> d!620813 (= (tail!3062 (drop!1121 lt!762033 0)) (t!190126 (drop!1121 lt!762033 0)))))

(assert (=> b!2028818 d!620813))

(declare-fun d!620815 () Bool)

(declare-fun lt!762460 () BalanceConc!14672)

(assert (=> d!620815 (= (list!9066 lt!762460) (printListTailRec!489 thiss!23328 (dropList!820 lt!761727 (+ 0 1)) (list!9066 (++!6007 (BalanceConc!14673 Empty!7428) (charsOf!2531 (apply!5848 lt!761727 0))))))))

(declare-fun e!1282098 () BalanceConc!14672)

(assert (=> d!620815 (= lt!762460 e!1282098)))

(declare-fun c!328513 () Bool)

(assert (=> d!620815 (= c!328513 (>= (+ 0 1) (size!17351 lt!761727)))))

(declare-fun e!1282099 () Bool)

(assert (=> d!620815 e!1282099))

(declare-fun res!890105 () Bool)

(assert (=> d!620815 (=> (not res!890105) (not e!1282099))))

(assert (=> d!620815 (= res!890105 (>= (+ 0 1) 0))))

(assert (=> d!620815 (= (printTailRec!1072 thiss!23328 lt!761727 (+ 0 1) (++!6007 (BalanceConc!14673 Empty!7428) (charsOf!2531 (apply!5848 lt!761727 0)))) lt!762460)))

(declare-fun b!2029749 () Bool)

(assert (=> b!2029749 (= e!1282099 (<= (+ 0 1) (size!17351 lt!761727)))))

(declare-fun b!2029750 () Bool)

(assert (=> b!2029750 (= e!1282098 (++!6007 (BalanceConc!14673 Empty!7428) (charsOf!2531 (apply!5848 lt!761727 0))))))

(declare-fun b!2029751 () Bool)

(assert (=> b!2029751 (= e!1282098 (printTailRec!1072 thiss!23328 lt!761727 (+ 0 1 1) (++!6007 (++!6007 (BalanceConc!14673 Empty!7428) (charsOf!2531 (apply!5848 lt!761727 0))) (charsOf!2531 (apply!5848 lt!761727 (+ 0 1))))))))

(declare-fun lt!762455 () List!22291)

(assert (=> b!2029751 (= lt!762455 (list!9070 lt!761727))))

(declare-fun lt!762454 () Unit!36865)

(assert (=> b!2029751 (= lt!762454 (lemmaDropApply!744 lt!762455 (+ 0 1)))))

(assert (=> b!2029751 (= (head!4583 (drop!1121 lt!762455 (+ 0 1))) (apply!5850 lt!762455 (+ 0 1)))))

(declare-fun lt!762458 () Unit!36865)

(assert (=> b!2029751 (= lt!762458 lt!762454)))

(declare-fun lt!762457 () List!22291)

(assert (=> b!2029751 (= lt!762457 (list!9070 lt!761727))))

(declare-fun lt!762456 () Unit!36865)

(assert (=> b!2029751 (= lt!762456 (lemmaDropTail!720 lt!762457 (+ 0 1)))))

(assert (=> b!2029751 (= (tail!3062 (drop!1121 lt!762457 (+ 0 1))) (drop!1121 lt!762457 (+ 0 1 1)))))

(declare-fun lt!762459 () Unit!36865)

(assert (=> b!2029751 (= lt!762459 lt!762456)))

(assert (= (and d!620815 res!890105) b!2029749))

(assert (= (and d!620815 c!328513) b!2029750))

(assert (= (and d!620815 (not c!328513)) b!2029751))

(declare-fun m!2469557 () Bool)

(assert (=> d!620815 m!2469557))

(assert (=> d!620815 m!2468061))

(assert (=> d!620815 m!2468073))

(declare-fun m!2469559 () Bool)

(assert (=> d!620815 m!2469559))

(assert (=> d!620815 m!2469557))

(assert (=> d!620815 m!2469559))

(declare-fun m!2469561 () Bool)

(assert (=> d!620815 m!2469561))

(declare-fun m!2469563 () Bool)

(assert (=> d!620815 m!2469563))

(assert (=> b!2029749 m!2468061))

(declare-fun m!2469565 () Bool)

(assert (=> b!2029751 m!2469565))

(declare-fun m!2469567 () Bool)

(assert (=> b!2029751 m!2469567))

(assert (=> b!2029751 m!2468073))

(assert (=> b!2029751 m!2469567))

(declare-fun m!2469569 () Bool)

(assert (=> b!2029751 m!2469569))

(declare-fun m!2469571 () Bool)

(assert (=> b!2029751 m!2469571))

(declare-fun m!2469573 () Bool)

(assert (=> b!2029751 m!2469573))

(declare-fun m!2469575 () Bool)

(assert (=> b!2029751 m!2469575))

(declare-fun m!2469577 () Bool)

(assert (=> b!2029751 m!2469577))

(assert (=> b!2029751 m!2469565))

(declare-fun m!2469579 () Bool)

(assert (=> b!2029751 m!2469579))

(declare-fun m!2469581 () Bool)

(assert (=> b!2029751 m!2469581))

(assert (=> b!2029751 m!2469569))

(declare-fun m!2469583 () Bool)

(assert (=> b!2029751 m!2469583))

(declare-fun m!2469585 () Bool)

(assert (=> b!2029751 m!2469585))

(assert (=> b!2029751 m!2469585))

(declare-fun m!2469587 () Bool)

(assert (=> b!2029751 m!2469587))

(assert (=> b!2029751 m!2469575))

(assert (=> b!2029751 m!2468017))

(assert (=> b!2028818 d!620815))

(declare-fun d!620817 () Bool)

(assert (=> d!620817 (= (list!9070 lt!761727) (list!9072 (c!328193 lt!761727)))))

(declare-fun bs!420862 () Bool)

(assert (= bs!420862 d!620817))

(declare-fun m!2469589 () Bool)

(assert (=> bs!420862 m!2469589))

(assert (=> b!2028818 d!620817))

(declare-fun b!2029761 () Bool)

(declare-fun res!890117 () Bool)

(declare-fun e!1282102 () Bool)

(assert (=> b!2029761 (=> (not res!890117) (not e!1282102))))

(declare-fun height!1140 (Conc!7428) Int)

(declare-fun ++!6009 (Conc!7428 Conc!7428) Conc!7428)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2029761 (= res!890117 (<= (height!1140 (++!6009 (c!328191 (BalanceConc!14673 Empty!7428)) (c!328191 (charsOf!2531 (apply!5848 lt!761727 0))))) (+ (max!0 (height!1140 (c!328191 (BalanceConc!14673 Empty!7428))) (height!1140 (c!328191 (charsOf!2531 (apply!5848 lt!761727 0))))) 1)))))

(declare-fun d!620819 () Bool)

(assert (=> d!620819 e!1282102))

(declare-fun res!890115 () Bool)

(assert (=> d!620819 (=> (not res!890115) (not e!1282102))))

(declare-fun appendAssocInst!539 (Conc!7428 Conc!7428) Bool)

(assert (=> d!620819 (= res!890115 (appendAssocInst!539 (c!328191 (BalanceConc!14673 Empty!7428)) (c!328191 (charsOf!2531 (apply!5848 lt!761727 0)))))))

(declare-fun lt!762463 () BalanceConc!14672)

(assert (=> d!620819 (= lt!762463 (BalanceConc!14673 (++!6009 (c!328191 (BalanceConc!14673 Empty!7428)) (c!328191 (charsOf!2531 (apply!5848 lt!761727 0))))))))

(assert (=> d!620819 (= (++!6007 (BalanceConc!14673 Empty!7428) (charsOf!2531 (apply!5848 lt!761727 0))) lt!762463)))

(declare-fun b!2029760 () Bool)

(declare-fun res!890116 () Bool)

(assert (=> b!2029760 (=> (not res!890116) (not e!1282102))))

(declare-fun isBalanced!2316 (Conc!7428) Bool)

(assert (=> b!2029760 (= res!890116 (isBalanced!2316 (++!6009 (c!328191 (BalanceConc!14673 Empty!7428)) (c!328191 (charsOf!2531 (apply!5848 lt!761727 0))))))))

(declare-fun b!2029762 () Bool)

(declare-fun res!890114 () Bool)

(assert (=> b!2029762 (=> (not res!890114) (not e!1282102))))

(assert (=> b!2029762 (= res!890114 (>= (height!1140 (++!6009 (c!328191 (BalanceConc!14673 Empty!7428)) (c!328191 (charsOf!2531 (apply!5848 lt!761727 0))))) (max!0 (height!1140 (c!328191 (BalanceConc!14673 Empty!7428))) (height!1140 (c!328191 (charsOf!2531 (apply!5848 lt!761727 0)))))))))

(declare-fun b!2029763 () Bool)

(assert (=> b!2029763 (= e!1282102 (= (list!9066 lt!762463) (++!6004 (list!9066 (BalanceConc!14673 Empty!7428)) (list!9066 (charsOf!2531 (apply!5848 lt!761727 0))))))))

(assert (= (and d!620819 res!890115) b!2029760))

(assert (= (and b!2029760 res!890116) b!2029761))

(assert (= (and b!2029761 res!890117) b!2029762))

(assert (= (and b!2029762 res!890114) b!2029763))

(declare-fun m!2469591 () Bool)

(assert (=> d!620819 m!2469591))

(declare-fun m!2469593 () Bool)

(assert (=> d!620819 m!2469593))

(declare-fun m!2469595 () Bool)

(assert (=> b!2029763 m!2469595))

(assert (=> b!2029763 m!2468063))

(assert (=> b!2029763 m!2468071))

(declare-fun m!2469597 () Bool)

(assert (=> b!2029763 m!2469597))

(assert (=> b!2029763 m!2468063))

(assert (=> b!2029763 m!2469597))

(declare-fun m!2469599 () Bool)

(assert (=> b!2029763 m!2469599))

(assert (=> b!2029760 m!2469593))

(assert (=> b!2029760 m!2469593))

(declare-fun m!2469601 () Bool)

(assert (=> b!2029760 m!2469601))

(assert (=> b!2029762 m!2469593))

(declare-fun m!2469603 () Bool)

(assert (=> b!2029762 m!2469603))

(assert (=> b!2029762 m!2469593))

(declare-fun m!2469605 () Bool)

(assert (=> b!2029762 m!2469605))

(declare-fun m!2469607 () Bool)

(assert (=> b!2029762 m!2469607))

(declare-fun m!2469609 () Bool)

(assert (=> b!2029762 m!2469609))

(assert (=> b!2029762 m!2469605))

(assert (=> b!2029762 m!2469607))

(assert (=> b!2029761 m!2469593))

(assert (=> b!2029761 m!2469603))

(assert (=> b!2029761 m!2469593))

(assert (=> b!2029761 m!2469605))

(assert (=> b!2029761 m!2469607))

(assert (=> b!2029761 m!2469609))

(assert (=> b!2029761 m!2469605))

(assert (=> b!2029761 m!2469607))

(assert (=> b!2028818 d!620819))

(declare-fun d!620821 () Bool)

(declare-fun lt!762464 () Token!7534)

(assert (=> d!620821 (= lt!762464 (apply!5850 (list!9070 lt!761727) 0))))

(assert (=> d!620821 (= lt!762464 (apply!5852 (c!328193 lt!761727) 0))))

(declare-fun e!1282103 () Bool)

(assert (=> d!620821 e!1282103))

(declare-fun res!890118 () Bool)

(assert (=> d!620821 (=> (not res!890118) (not e!1282103))))

(assert (=> d!620821 (= res!890118 (<= 0 0))))

(assert (=> d!620821 (= (apply!5848 lt!761727 0) lt!762464)))

(declare-fun b!2029764 () Bool)

(assert (=> b!2029764 (= e!1282103 (< 0 (size!17351 lt!761727)))))

(assert (= (and d!620821 res!890118) b!2029764))

(assert (=> d!620821 m!2468017))

(assert (=> d!620821 m!2468017))

(declare-fun m!2469611 () Bool)

(assert (=> d!620821 m!2469611))

(declare-fun m!2469613 () Bool)

(assert (=> d!620821 m!2469613))

(assert (=> b!2029764 m!2468061))

(assert (=> b!2028818 d!620821))

(declare-fun d!620823 () Bool)

(declare-fun e!1282108 () Bool)

(assert (=> d!620823 e!1282108))

(declare-fun res!890119 () Bool)

(assert (=> d!620823 (=> (not res!890119) (not e!1282108))))

(declare-fun lt!762465 () List!22291)

(assert (=> d!620823 (= res!890119 (set.subset (content!3282 lt!762465) (content!3282 lt!762033)))))

(declare-fun e!1282106 () List!22291)

(assert (=> d!620823 (= lt!762465 e!1282106)))

(declare-fun c!328520 () Bool)

(assert (=> d!620823 (= c!328520 (is-Nil!22209 lt!762033))))

(assert (=> d!620823 (= (drop!1121 lt!762033 0) lt!762465)))

(declare-fun b!2029765 () Bool)

(declare-fun e!1282107 () List!22291)

(assert (=> b!2029765 (= e!1282107 lt!762033)))

(declare-fun b!2029766 () Bool)

(declare-fun e!1282105 () Int)

(assert (=> b!2029766 (= e!1282105 0)))

(declare-fun b!2029767 () Bool)

(assert (=> b!2029767 (= e!1282107 (drop!1121 (t!190126 lt!762033) (- 0 1)))))

(declare-fun b!2029768 () Bool)

(declare-fun e!1282104 () Int)

(assert (=> b!2029768 (= e!1282108 (= (size!17357 lt!762465) e!1282104))))

(declare-fun c!328517 () Bool)

(assert (=> b!2029768 (= c!328517 (<= 0 0))))

(declare-fun b!2029769 () Bool)

(assert (=> b!2029769 (= e!1282106 Nil!22209)))

(declare-fun b!2029770 () Bool)

(assert (=> b!2029770 (= e!1282106 e!1282107)))

(declare-fun c!328519 () Bool)

(assert (=> b!2029770 (= c!328519 (<= 0 0))))

(declare-fun b!2029771 () Bool)

(declare-fun call!124557 () Int)

(assert (=> b!2029771 (= e!1282105 (- call!124557 0))))

(declare-fun bm!124552 () Bool)

(assert (=> bm!124552 (= call!124557 (size!17357 lt!762033))))

(declare-fun b!2029772 () Bool)

(assert (=> b!2029772 (= e!1282104 call!124557)))

(declare-fun b!2029773 () Bool)

(assert (=> b!2029773 (= e!1282104 e!1282105)))

(declare-fun c!328518 () Bool)

(assert (=> b!2029773 (= c!328518 (>= 0 call!124557))))

(assert (= (and d!620823 c!328520) b!2029769))

(assert (= (and d!620823 (not c!328520)) b!2029770))

(assert (= (and b!2029770 c!328519) b!2029765))

(assert (= (and b!2029770 (not c!328519)) b!2029767))

(assert (= (and d!620823 res!890119) b!2029768))

(assert (= (and b!2029768 c!328517) b!2029772))

(assert (= (and b!2029768 (not c!328517)) b!2029773))

(assert (= (and b!2029773 c!328518) b!2029766))

(assert (= (and b!2029773 (not c!328518)) b!2029771))

(assert (= (or b!2029772 b!2029773 b!2029771) bm!124552))

(declare-fun m!2469615 () Bool)

(assert (=> d!620823 m!2469615))

(declare-fun m!2469617 () Bool)

(assert (=> d!620823 m!2469617))

(declare-fun m!2469619 () Bool)

(assert (=> b!2029767 m!2469619))

(declare-fun m!2469621 () Bool)

(assert (=> b!2029768 m!2469621))

(declare-fun m!2469623 () Bool)

(assert (=> bm!124552 m!2469623))

(assert (=> b!2028818 d!620823))

(declare-fun d!620825 () Bool)

(assert (=> d!620825 (= (head!4583 (drop!1121 lt!762031 0)) (h!27610 (drop!1121 lt!762031 0)))))

(assert (=> b!2028818 d!620825))

(declare-fun d!620827 () Bool)

(declare-fun lt!762466 () BalanceConc!14672)

(assert (=> d!620827 (= (list!9066 lt!762466) (originalCharacters!4798 (apply!5848 lt!761727 0)))))

(assert (=> d!620827 (= lt!762466 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (apply!5848 lt!761727 0)))) (value!125336 (apply!5848 lt!761727 0))))))

(assert (=> d!620827 (= (charsOf!2531 (apply!5848 lt!761727 0)) lt!762466)))

(declare-fun b_lambda!68337 () Bool)

(assert (=> (not b_lambda!68337) (not d!620827)))

(declare-fun tb!128011 () Bool)

(declare-fun t!190319 () Bool)

(assert (=> (and b!2029045 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toChars!5523 (transformation!3991 (rule!6220 (apply!5848 lt!761727 0))))) t!190319) tb!128011))

(declare-fun b!2029774 () Bool)

(declare-fun e!1282109 () Bool)

(declare-fun tp!603340 () Bool)

(assert (=> b!2029774 (= e!1282109 (and (inv!29393 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (apply!5848 lt!761727 0)))) (value!125336 (apply!5848 lt!761727 0))))) tp!603340))))

(declare-fun result!153174 () Bool)

(assert (=> tb!128011 (= result!153174 (and (inv!29394 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (apply!5848 lt!761727 0)))) (value!125336 (apply!5848 lt!761727 0)))) e!1282109))))

(assert (= tb!128011 b!2029774))

(declare-fun m!2469625 () Bool)

(assert (=> b!2029774 m!2469625))

(declare-fun m!2469627 () Bool)

(assert (=> tb!128011 m!2469627))

(assert (=> d!620827 t!190319))

(declare-fun b_and!161603 () Bool)

(assert (= b_and!161581 (and (=> t!190319 result!153174) b_and!161603)))

(declare-fun tb!128013 () Bool)

(declare-fun t!190321 () Bool)

(assert (=> (and b!2028164 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toChars!5523 (transformation!3991 (rule!6220 (apply!5848 lt!761727 0))))) t!190321) tb!128013))

(declare-fun result!153176 () Bool)

(assert (= result!153176 result!153174))

(assert (=> d!620827 t!190321))

(declare-fun b_and!161605 () Bool)

(assert (= b_and!161577 (and (=> t!190321 result!153176) b_and!161605)))

(declare-fun t!190323 () Bool)

(declare-fun tb!128015 () Bool)

(assert (=> (and b!2028173 (= (toChars!5523 (transformation!3991 (h!27609 rules!3198))) (toChars!5523 (transformation!3991 (rule!6220 (apply!5848 lt!761727 0))))) t!190323) tb!128015))

(declare-fun result!153178 () Bool)

(assert (= result!153178 result!153174))

(assert (=> d!620827 t!190323))

(declare-fun b_and!161607 () Bool)

(assert (= b_and!161573 (and (=> t!190323 result!153178) b_and!161607)))

(declare-fun t!190325 () Bool)

(declare-fun tb!128017 () Bool)

(assert (=> (and b!2029070 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toChars!5523 (transformation!3991 (rule!6220 (apply!5848 lt!761727 0))))) t!190325) tb!128017))

(declare-fun result!153180 () Bool)

(assert (= result!153180 result!153174))

(assert (=> d!620827 t!190325))

(declare-fun b_and!161609 () Bool)

(assert (= b_and!161579 (and (=> t!190325 result!153180) b_and!161609)))

(declare-fun tb!128019 () Bool)

(declare-fun t!190327 () Bool)

(assert (=> (and b!2028151 (= (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (toChars!5523 (transformation!3991 (rule!6220 (apply!5848 lt!761727 0))))) t!190327) tb!128019))

(declare-fun result!153182 () Bool)

(assert (= result!153182 result!153174))

(assert (=> d!620827 t!190327))

(declare-fun b_and!161611 () Bool)

(assert (= b_and!161575 (and (=> t!190327 result!153182) b_and!161611)))

(declare-fun m!2469629 () Bool)

(assert (=> d!620827 m!2469629))

(declare-fun m!2469631 () Bool)

(assert (=> d!620827 m!2469631))

(assert (=> b!2028818 d!620827))

(declare-fun d!620829 () Bool)

(declare-fun e!1282114 () Bool)

(assert (=> d!620829 e!1282114))

(declare-fun res!890120 () Bool)

(assert (=> d!620829 (=> (not res!890120) (not e!1282114))))

(declare-fun lt!762467 () List!22291)

(assert (=> d!620829 (= res!890120 (set.subset (content!3282 lt!762467) (content!3282 lt!762033)))))

(declare-fun e!1282112 () List!22291)

(assert (=> d!620829 (= lt!762467 e!1282112)))

(declare-fun c!328524 () Bool)

(assert (=> d!620829 (= c!328524 (is-Nil!22209 lt!762033))))

(assert (=> d!620829 (= (drop!1121 lt!762033 (+ 0 1)) lt!762467)))

(declare-fun b!2029775 () Bool)

(declare-fun e!1282113 () List!22291)

(assert (=> b!2029775 (= e!1282113 lt!762033)))

(declare-fun b!2029776 () Bool)

(declare-fun e!1282111 () Int)

(assert (=> b!2029776 (= e!1282111 0)))

(declare-fun b!2029777 () Bool)

(assert (=> b!2029777 (= e!1282113 (drop!1121 (t!190126 lt!762033) (- (+ 0 1) 1)))))

(declare-fun b!2029778 () Bool)

(declare-fun e!1282110 () Int)

(assert (=> b!2029778 (= e!1282114 (= (size!17357 lt!762467) e!1282110))))

(declare-fun c!328521 () Bool)

(assert (=> b!2029778 (= c!328521 (<= (+ 0 1) 0))))

(declare-fun b!2029779 () Bool)

(assert (=> b!2029779 (= e!1282112 Nil!22209)))

(declare-fun b!2029780 () Bool)

(assert (=> b!2029780 (= e!1282112 e!1282113)))

(declare-fun c!328523 () Bool)

(assert (=> b!2029780 (= c!328523 (<= (+ 0 1) 0))))

(declare-fun b!2029781 () Bool)

(declare-fun call!124558 () Int)

(assert (=> b!2029781 (= e!1282111 (- call!124558 (+ 0 1)))))

(declare-fun bm!124553 () Bool)

(assert (=> bm!124553 (= call!124558 (size!17357 lt!762033))))

(declare-fun b!2029782 () Bool)

(assert (=> b!2029782 (= e!1282110 call!124558)))

(declare-fun b!2029783 () Bool)

(assert (=> b!2029783 (= e!1282110 e!1282111)))

(declare-fun c!328522 () Bool)

(assert (=> b!2029783 (= c!328522 (>= (+ 0 1) call!124558))))

(assert (= (and d!620829 c!328524) b!2029779))

(assert (= (and d!620829 (not c!328524)) b!2029780))

(assert (= (and b!2029780 c!328523) b!2029775))

(assert (= (and b!2029780 (not c!328523)) b!2029777))

(assert (= (and d!620829 res!890120) b!2029778))

(assert (= (and b!2029778 c!328521) b!2029782))

(assert (= (and b!2029778 (not c!328521)) b!2029783))

(assert (= (and b!2029783 c!328522) b!2029776))

(assert (= (and b!2029783 (not c!328522)) b!2029781))

(assert (= (or b!2029782 b!2029783 b!2029781) bm!124553))

(declare-fun m!2469633 () Bool)

(assert (=> d!620829 m!2469633))

(assert (=> d!620829 m!2469617))

(declare-fun m!2469635 () Bool)

(assert (=> b!2029777 m!2469635))

(declare-fun m!2469637 () Bool)

(assert (=> b!2029778 m!2469637))

(assert (=> bm!124553 m!2469623))

(assert (=> b!2028818 d!620829))

(declare-fun d!620831 () Bool)

(assert (=> d!620831 (= (tail!3062 (drop!1121 lt!762033 0)) (drop!1121 lt!762033 (+ 0 1)))))

(declare-fun lt!762470 () Unit!36865)

(declare-fun choose!12379 (List!22291 Int) Unit!36865)

(assert (=> d!620831 (= lt!762470 (choose!12379 lt!762033 0))))

(declare-fun e!1282117 () Bool)

(assert (=> d!620831 e!1282117))

(declare-fun res!890123 () Bool)

(assert (=> d!620831 (=> (not res!890123) (not e!1282117))))

(assert (=> d!620831 (= res!890123 (>= 0 0))))

(assert (=> d!620831 (= (lemmaDropTail!720 lt!762033 0) lt!762470)))

(declare-fun b!2029786 () Bool)

(assert (=> b!2029786 (= e!1282117 (< 0 (size!17357 lt!762033)))))

(assert (= (and d!620831 res!890123) b!2029786))

(assert (=> d!620831 m!2468079))

(assert (=> d!620831 m!2468079))

(assert (=> d!620831 m!2468081))

(assert (=> d!620831 m!2468083))

(declare-fun m!2469639 () Bool)

(assert (=> d!620831 m!2469639))

(assert (=> b!2029786 m!2469623))

(assert (=> b!2028818 d!620831))

(declare-fun d!620833 () Bool)

(declare-fun c!328525 () Bool)

(assert (=> d!620833 (= c!328525 (is-Node!7428 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729)))))))

(declare-fun e!1282118 () Bool)

(assert (=> d!620833 (= (inv!29393 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729)))) e!1282118)))

(declare-fun b!2029787 () Bool)

(assert (=> b!2029787 (= e!1282118 (inv!29397 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729)))))))

(declare-fun b!2029788 () Bool)

(declare-fun e!1282119 () Bool)

(assert (=> b!2029788 (= e!1282118 e!1282119)))

(declare-fun res!890124 () Bool)

(assert (=> b!2029788 (= res!890124 (not (is-Leaf!10887 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729))))))))

(assert (=> b!2029788 (=> res!890124 e!1282119)))

(declare-fun b!2029789 () Bool)

(assert (=> b!2029789 (= e!1282119 (inv!29398 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729)))))))

(assert (= (and d!620833 c!328525) b!2029787))

(assert (= (and d!620833 (not c!328525)) b!2029788))

(assert (= (and b!2029788 (not res!890124)) b!2029789))

(declare-fun m!2469641 () Bool)

(assert (=> b!2029787 m!2469641))

(declare-fun m!2469643 () Bool)

(assert (=> b!2029789 m!2469643))

(assert (=> b!2028597 d!620833))

(declare-fun d!620835 () Bool)

(declare-fun lt!762471 () Int)

(assert (=> d!620835 (>= lt!762471 0)))

(declare-fun e!1282120 () Int)

(assert (=> d!620835 (= lt!762471 e!1282120)))

(declare-fun c!328526 () Bool)

(assert (=> d!620835 (= c!328526 (is-Nil!22207 (originalCharacters!4798 separatorToken!354)))))

(assert (=> d!620835 (= (size!17349 (originalCharacters!4798 separatorToken!354)) lt!762471)))

(declare-fun b!2029790 () Bool)

(assert (=> b!2029790 (= e!1282120 0)))

(declare-fun b!2029791 () Bool)

(assert (=> b!2029791 (= e!1282120 (+ 1 (size!17349 (t!190124 (originalCharacters!4798 separatorToken!354)))))))

(assert (= (and d!620835 c!328526) b!2029790))

(assert (= (and d!620835 (not c!328526)) b!2029791))

(declare-fun m!2469645 () Bool)

(assert (=> b!2029791 m!2469645))

(assert (=> b!2029031 d!620835))

(declare-fun d!620837 () Bool)

(assert (=> d!620837 (= (isDefined!3954 lt!761886) (not (isEmpty!13861 lt!761886)))))

(declare-fun bs!420863 () Bool)

(assert (= bs!420863 d!620837))

(assert (=> bs!420863 m!2467661))

(assert (=> b!2028482 d!620837))

(declare-fun d!620839 () Bool)

(declare-fun lt!762472 () Int)

(assert (=> d!620839 (>= lt!762472 0)))

(declare-fun e!1282121 () Int)

(assert (=> d!620839 (= lt!762472 e!1282121)))

(declare-fun c!328527 () Bool)

(assert (=> d!620839 (= c!328527 (is-Nil!22207 (_2!11913 (get!7053 lt!762043))))))

(assert (=> d!620839 (= (size!17349 (_2!11913 (get!7053 lt!762043))) lt!762472)))

(declare-fun b!2029792 () Bool)

(assert (=> b!2029792 (= e!1282121 0)))

(declare-fun b!2029793 () Bool)

(assert (=> b!2029793 (= e!1282121 (+ 1 (size!17349 (t!190124 (_2!11913 (get!7053 lt!762043))))))))

(assert (= (and d!620839 c!328527) b!2029792))

(assert (= (and d!620839 (not c!328527)) b!2029793))

(declare-fun m!2469647 () Bool)

(assert (=> b!2029793 m!2469647))

(assert (=> b!2028843 d!620839))

(assert (=> b!2028843 d!620585))

(declare-fun d!620841 () Bool)

(declare-fun lt!762473 () Int)

(assert (=> d!620841 (>= lt!762473 0)))

(declare-fun e!1282122 () Int)

(assert (=> d!620841 (= lt!762473 e!1282122)))

(declare-fun c!328528 () Bool)

(assert (=> d!620841 (= c!328528 (is-Nil!22207 lt!761719))))

(assert (=> d!620841 (= (size!17349 lt!761719) lt!762473)))

(declare-fun b!2029794 () Bool)

(assert (=> b!2029794 (= e!1282122 0)))

(declare-fun b!2029795 () Bool)

(assert (=> b!2029795 (= e!1282122 (+ 1 (size!17349 (t!190124 lt!761719))))))

(assert (= (and d!620841 c!328528) b!2029794))

(assert (= (and d!620841 (not c!328528)) b!2029795))

(declare-fun m!2469649 () Bool)

(assert (=> b!2029795 m!2469649))

(assert (=> b!2028843 d!620841))

(declare-fun d!620843 () Bool)

(assert (=> d!620843 (= (inv!29394 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729))) (isBalanced!2316 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729)))))))

(declare-fun bs!420864 () Bool)

(assert (= bs!420864 d!620843))

(declare-fun m!2469651 () Bool)

(assert (=> bs!420864 m!2469651))

(assert (=> tb!127859 d!620843))

(declare-fun bs!420865 () Bool)

(declare-fun d!620845 () Bool)

(assert (= bs!420865 (and d!620845 d!620705)))

(declare-fun lambda!76521 () Int)

(assert (=> bs!420865 (= lambda!76521 lambda!76518)))

(assert (=> d!620845 true))

(declare-fun lt!762476 () Bool)

(assert (=> d!620845 (= lt!762476 (rulesValidInductive!1383 thiss!23328 rules!3198))))

(assert (=> d!620845 (= lt!762476 (forall!4725 rules!3198 lambda!76521))))

(assert (=> d!620845 (= (rulesValid!1495 thiss!23328 rules!3198) lt!762476)))

(declare-fun bs!420866 () Bool)

(assert (= bs!420866 d!620845))

(assert (=> bs!420866 m!2467623))

(declare-fun m!2469653 () Bool)

(assert (=> bs!420866 m!2469653))

(assert (=> d!620387 d!620845))

(declare-fun d!620847 () Bool)

(declare-fun lt!762477 () Int)

(assert (=> d!620847 (>= lt!762477 0)))

(declare-fun e!1282123 () Int)

(assert (=> d!620847 (= lt!762477 e!1282123)))

(declare-fun c!328529 () Bool)

(assert (=> d!620847 (= c!328529 (is-Nil!22207 (_2!11913 (get!7053 lt!761886))))))

(assert (=> d!620847 (= (size!17349 (_2!11913 (get!7053 lt!761886))) lt!762477)))

(declare-fun b!2029796 () Bool)

(assert (=> b!2029796 (= e!1282123 0)))

(declare-fun b!2029797 () Bool)

(assert (=> b!2029797 (= e!1282123 (+ 1 (size!17349 (t!190124 (_2!11913 (get!7053 lt!761886))))))))

(assert (= (and d!620847 c!328529) b!2029796))

(assert (= (and d!620847 (not c!328529)) b!2029797))

(declare-fun m!2469655 () Bool)

(assert (=> b!2029797 m!2469655))

(assert (=> b!2028474 d!620847))

(assert (=> b!2028474 d!620599))

(declare-fun d!620849 () Bool)

(declare-fun lt!762478 () Int)

(assert (=> d!620849 (>= lt!762478 0)))

(declare-fun e!1282124 () Int)

(assert (=> d!620849 (= lt!762478 e!1282124)))

(declare-fun c!328530 () Bool)

(assert (=> d!620849 (= c!328530 (is-Nil!22207 (++!6004 lt!761718 lt!761704)))))

(assert (=> d!620849 (= (size!17349 (++!6004 lt!761718 lt!761704)) lt!762478)))

(declare-fun b!2029798 () Bool)

(assert (=> b!2029798 (= e!1282124 0)))

(declare-fun b!2029799 () Bool)

(assert (=> b!2029799 (= e!1282124 (+ 1 (size!17349 (t!190124 (++!6004 lt!761718 lt!761704)))))))

(assert (= (and d!620849 c!328530) b!2029798))

(assert (= (and d!620849 (not c!328530)) b!2029799))

(declare-fun m!2469657 () Bool)

(assert (=> b!2029799 m!2469657))

(assert (=> b!2028474 d!620849))

(declare-fun d!620851 () Bool)

(assert (=> d!620851 (= (inv!15 (value!125336 separatorToken!354)) (= (charsToBigInt!0 (text!29338 (value!125336 separatorToken!354)) 0) (value!125331 (value!125336 separatorToken!354))))))

(declare-fun bs!420867 () Bool)

(assert (= bs!420867 d!620851))

(declare-fun m!2469659 () Bool)

(assert (=> bs!420867 m!2469659))

(assert (=> b!2028759 d!620851))

(declare-fun d!620853 () Bool)

(assert (=> d!620853 (= (list!9066 lt!762036) (list!9068 (c!328191 lt!762036)))))

(declare-fun bs!420868 () Bool)

(assert (= bs!420868 d!620853))

(declare-fun m!2469661 () Bool)

(assert (=> bs!420868 m!2469661))

(assert (=> d!620371 d!620853))

(declare-fun d!620855 () Bool)

(assert (=> d!620855 (= (list!9066 (BalanceConc!14673 Empty!7428)) (list!9068 (c!328191 (BalanceConc!14673 Empty!7428))))))

(declare-fun bs!420869 () Bool)

(assert (= bs!420869 d!620855))

(declare-fun m!2469663 () Bool)

(assert (=> bs!420869 m!2469663))

(assert (=> d!620371 d!620855))

(declare-fun d!620857 () Bool)

(assert (=> d!620857 (= (dropList!820 lt!761727 0) (drop!1121 (list!9072 (c!328193 lt!761727)) 0))))

(declare-fun bs!420870 () Bool)

(assert (= bs!420870 d!620857))

(assert (=> bs!420870 m!2469589))

(assert (=> bs!420870 m!2469589))

(declare-fun m!2469665 () Bool)

(assert (=> bs!420870 m!2469665))

(assert (=> d!620371 d!620857))

(declare-fun d!620861 () Bool)

(declare-fun lt!762479 () Int)

(assert (=> d!620861 (= lt!762479 (size!17357 (list!9070 lt!761727)))))

(assert (=> d!620861 (= lt!762479 (size!17356 (c!328193 lt!761727)))))

(assert (=> d!620861 (= (size!17351 lt!761727) lt!762479)))

(declare-fun bs!420871 () Bool)

(assert (= bs!420871 d!620861))

(assert (=> bs!420871 m!2468017))

(assert (=> bs!420871 m!2468017))

(declare-fun m!2469667 () Bool)

(assert (=> bs!420871 m!2469667))

(declare-fun m!2469669 () Bool)

(assert (=> bs!420871 m!2469669))

(assert (=> d!620371 d!620861))

(declare-fun d!620863 () Bool)

(declare-fun lt!762491 () List!22289)

(assert (=> d!620863 (= lt!762491 (++!6004 (list!9066 (BalanceConc!14673 Empty!7428)) (printList!1123 thiss!23328 (dropList!820 lt!761727 0))))))

(declare-fun e!1282129 () List!22289)

(assert (=> d!620863 (= lt!762491 e!1282129)))

(declare-fun c!328533 () Bool)

(assert (=> d!620863 (= c!328533 (is-Cons!22209 (dropList!820 lt!761727 0)))))

(assert (=> d!620863 (= (printListTailRec!489 thiss!23328 (dropList!820 lt!761727 0) (list!9066 (BalanceConc!14673 Empty!7428))) lt!762491)))

(declare-fun b!2029808 () Bool)

(assert (=> b!2029808 (= e!1282129 (printListTailRec!489 thiss!23328 (t!190126 (dropList!820 lt!761727 0)) (++!6004 (list!9066 (BalanceConc!14673 Empty!7428)) (list!9066 (charsOf!2531 (h!27610 (dropList!820 lt!761727 0)))))))))

(declare-fun lt!762490 () List!22289)

(assert (=> b!2029808 (= lt!762490 (list!9066 (charsOf!2531 (h!27610 (dropList!820 lt!761727 0)))))))

(declare-fun lt!762493 () List!22289)

(assert (=> b!2029808 (= lt!762493 (printList!1123 thiss!23328 (t!190126 (dropList!820 lt!761727 0))))))

(declare-fun lt!762494 () Unit!36865)

(assert (=> b!2029808 (= lt!762494 (lemmaConcatAssociativity!1256 (list!9066 (BalanceConc!14673 Empty!7428)) lt!762490 lt!762493))))

(assert (=> b!2029808 (= (++!6004 (++!6004 (list!9066 (BalanceConc!14673 Empty!7428)) lt!762490) lt!762493) (++!6004 (list!9066 (BalanceConc!14673 Empty!7428)) (++!6004 lt!762490 lt!762493)))))

(declare-fun lt!762492 () Unit!36865)

(assert (=> b!2029808 (= lt!762492 lt!762494)))

(declare-fun b!2029809 () Bool)

(assert (=> b!2029809 (= e!1282129 (list!9066 (BalanceConc!14673 Empty!7428)))))

(assert (= (and d!620863 c!328533) b!2029808))

(assert (= (and d!620863 (not c!328533)) b!2029809))

(assert (=> d!620863 m!2468059))

(declare-fun m!2469673 () Bool)

(assert (=> d!620863 m!2469673))

(assert (=> d!620863 m!2468063))

(assert (=> d!620863 m!2469673))

(declare-fun m!2469675 () Bool)

(assert (=> d!620863 m!2469675))

(declare-fun m!2469677 () Bool)

(assert (=> b!2029808 m!2469677))

(declare-fun m!2469679 () Bool)

(assert (=> b!2029808 m!2469679))

(assert (=> b!2029808 m!2468063))

(declare-fun m!2469681 () Bool)

(assert (=> b!2029808 m!2469681))

(declare-fun m!2469683 () Bool)

(assert (=> b!2029808 m!2469683))

(declare-fun m!2469685 () Bool)

(assert (=> b!2029808 m!2469685))

(declare-fun m!2469687 () Bool)

(assert (=> b!2029808 m!2469687))

(declare-fun m!2469689 () Bool)

(assert (=> b!2029808 m!2469689))

(assert (=> b!2029808 m!2468063))

(assert (=> b!2029808 m!2469687))

(declare-fun m!2469691 () Bool)

(assert (=> b!2029808 m!2469691))

(declare-fun m!2469693 () Bool)

(assert (=> b!2029808 m!2469693))

(assert (=> b!2029808 m!2468063))

(assert (=> b!2029808 m!2469693))

(declare-fun m!2469695 () Bool)

(assert (=> b!2029808 m!2469695))

(assert (=> b!2029808 m!2468063))

(assert (=> b!2029808 m!2469679))

(assert (=> b!2029808 m!2469683))

(assert (=> b!2029808 m!2469677))

(assert (=> d!620371 d!620863))

(assert (=> bm!124474 d!620689))

(declare-fun d!620867 () Bool)

(declare-fun lt!762495 () Int)

(assert (=> d!620867 (>= lt!762495 0)))

(declare-fun e!1282131 () Int)

(assert (=> d!620867 (= lt!762495 e!1282131)))

(declare-fun c!328534 () Bool)

(assert (=> d!620867 (= c!328534 (is-Nil!22207 lt!762004))))

(assert (=> d!620867 (= (size!17349 lt!762004) lt!762495)))

(declare-fun b!2029812 () Bool)

(assert (=> b!2029812 (= e!1282131 0)))

(declare-fun b!2029813 () Bool)

(assert (=> b!2029813 (= e!1282131 (+ 1 (size!17349 (t!190124 lt!762004))))))

(assert (= (and d!620867 c!328534) b!2029812))

(assert (= (and d!620867 (not c!328534)) b!2029813))

(declare-fun m!2469697 () Bool)

(assert (=> b!2029813 m!2469697))

(assert (=> b!2028772 d!620867))

(declare-fun d!620871 () Bool)

(declare-fun lt!762496 () Int)

(assert (=> d!620871 (>= lt!762496 0)))

(declare-fun e!1282132 () Int)

(assert (=> d!620871 (= lt!762496 e!1282132)))

(declare-fun c!328535 () Bool)

(assert (=> d!620871 (= c!328535 (is-Nil!22207 lt!761718))))

(assert (=> d!620871 (= (size!17349 lt!761718) lt!762496)))

(declare-fun b!2029814 () Bool)

(assert (=> b!2029814 (= e!1282132 0)))

(declare-fun b!2029815 () Bool)

(assert (=> b!2029815 (= e!1282132 (+ 1 (size!17349 (t!190124 lt!761718))))))

(assert (= (and d!620871 c!328535) b!2029814))

(assert (= (and d!620871 (not c!328535)) b!2029815))

(assert (=> b!2029815 m!2469305))

(assert (=> b!2028772 d!620871))

(declare-fun d!620875 () Bool)

(declare-fun lt!762497 () Int)

(assert (=> d!620875 (>= lt!762497 0)))

(declare-fun e!1282133 () Int)

(assert (=> d!620875 (= lt!762497 e!1282133)))

(declare-fun c!328536 () Bool)

(assert (=> d!620875 (= c!328536 (is-Nil!22207 lt!761715))))

(assert (=> d!620875 (= (size!17349 lt!761715) lt!762497)))

(declare-fun b!2029816 () Bool)

(assert (=> b!2029816 (= e!1282133 0)))

(declare-fun b!2029817 () Bool)

(assert (=> b!2029817 (= e!1282133 (+ 1 (size!17349 (t!190124 lt!761715))))))

(assert (= (and d!620875 c!328536) b!2029816))

(assert (= (and d!620875 (not c!328536)) b!2029817))

(declare-fun m!2469699 () Bool)

(assert (=> b!2029817 m!2469699))

(assert (=> b!2028772 d!620875))

(declare-fun d!620877 () Bool)

(assert (=> d!620877 (= (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762084)))) (list!9068 (c!328191 (charsOf!2531 (_1!11913 (get!7053 lt!762084))))))))

(declare-fun bs!420873 () Bool)

(assert (= bs!420873 d!620877))

(declare-fun m!2469701 () Bool)

(assert (=> bs!420873 m!2469701))

(assert (=> b!2028995 d!620877))

(declare-fun d!620879 () Bool)

(declare-fun lt!762498 () BalanceConc!14672)

(assert (=> d!620879 (= (list!9066 lt!762498) (originalCharacters!4798 (_1!11913 (get!7053 lt!762084))))))

(assert (=> d!620879 (= lt!762498 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762084))))) (value!125336 (_1!11913 (get!7053 lt!762084)))))))

(assert (=> d!620879 (= (charsOf!2531 (_1!11913 (get!7053 lt!762084))) lt!762498)))

(declare-fun b_lambda!68339 () Bool)

(assert (=> (not b_lambda!68339) (not d!620879)))

(declare-fun tb!128021 () Bool)

(declare-fun t!190329 () Bool)

(assert (=> (and b!2028173 (= (toChars!5523 (transformation!3991 (h!27609 rules!3198))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762084)))))) t!190329) tb!128021))

(declare-fun b!2029818 () Bool)

(declare-fun e!1282134 () Bool)

(declare-fun tp!603341 () Bool)

(assert (=> b!2029818 (= e!1282134 (and (inv!29393 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762084))))) (value!125336 (_1!11913 (get!7053 lt!762084)))))) tp!603341))))

(declare-fun result!153184 () Bool)

(assert (=> tb!128021 (= result!153184 (and (inv!29394 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762084))))) (value!125336 (_1!11913 (get!7053 lt!762084))))) e!1282134))))

(assert (= tb!128021 b!2029818))

(declare-fun m!2469703 () Bool)

(assert (=> b!2029818 m!2469703))

(declare-fun m!2469705 () Bool)

(assert (=> tb!128021 m!2469705))

(assert (=> d!620879 t!190329))

(declare-fun b_and!161613 () Bool)

(assert (= b_and!161607 (and (=> t!190329 result!153184) b_and!161613)))

(declare-fun tb!128023 () Bool)

(declare-fun t!190331 () Bool)

(assert (=> (and b!2029070 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762084)))))) t!190331) tb!128023))

(declare-fun result!153186 () Bool)

(assert (= result!153186 result!153184))

(assert (=> d!620879 t!190331))

(declare-fun b_and!161615 () Bool)

(assert (= b_and!161609 (and (=> t!190331 result!153186) b_and!161615)))

(declare-fun t!190333 () Bool)

(declare-fun tb!128025 () Bool)

(assert (=> (and b!2028164 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762084)))))) t!190333) tb!128025))

(declare-fun result!153188 () Bool)

(assert (= result!153188 result!153184))

(assert (=> d!620879 t!190333))

(declare-fun b_and!161617 () Bool)

(assert (= b_and!161605 (and (=> t!190333 result!153188) b_and!161617)))

(declare-fun t!190335 () Bool)

(declare-fun tb!128027 () Bool)

(assert (=> (and b!2029045 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762084)))))) t!190335) tb!128027))

(declare-fun result!153190 () Bool)

(assert (= result!153190 result!153184))

(assert (=> d!620879 t!190335))

(declare-fun b_and!161619 () Bool)

(assert (= b_and!161603 (and (=> t!190335 result!153190) b_and!161619)))

(declare-fun t!190337 () Bool)

(declare-fun tb!128029 () Bool)

(assert (=> (and b!2028151 (= (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762084)))))) t!190337) tb!128029))

(declare-fun result!153192 () Bool)

(assert (= result!153192 result!153184))

(assert (=> d!620879 t!190337))

(declare-fun b_and!161621 () Bool)

(assert (= b_and!161611 (and (=> t!190337 result!153192) b_and!161621)))

(declare-fun m!2469707 () Bool)

(assert (=> d!620879 m!2469707))

(declare-fun m!2469709 () Bool)

(assert (=> d!620879 m!2469709))

(assert (=> b!2028995 d!620879))

(assert (=> b!2028995 d!620613))

(declare-fun b!2029819 () Bool)

(declare-fun e!1282136 () List!22289)

(assert (=> b!2029819 (= e!1282136 lt!761948)))

(declare-fun b!2029824 () Bool)

(declare-fun lt!762499 () List!22289)

(declare-fun e!1282135 () Bool)

(assert (=> b!2029824 (= e!1282135 (or (not (= lt!761948 Nil!22207)) (= lt!762499 (list!9066 (charsOf!2531 (h!27610 (t!190126 tokens!598)))))))))

(declare-fun d!620881 () Bool)

(assert (=> d!620881 e!1282135))

(declare-fun res!890134 () Bool)

(assert (=> d!620881 (=> (not res!890134) (not e!1282135))))

(assert (=> d!620881 (= res!890134 (= (content!3278 lt!762499) (set.union (content!3278 (list!9066 (charsOf!2531 (h!27610 (t!190126 tokens!598))))) (content!3278 lt!761948))))))

(assert (=> d!620881 (= lt!762499 e!1282136)))

(declare-fun c!328537 () Bool)

(assert (=> d!620881 (= c!328537 (is-Nil!22207 (list!9066 (charsOf!2531 (h!27610 (t!190126 tokens!598))))))))

(assert (=> d!620881 (= (++!6004 (list!9066 (charsOf!2531 (h!27610 (t!190126 tokens!598)))) lt!761948) lt!762499)))

(declare-fun b!2029821 () Bool)

(assert (=> b!2029821 (= e!1282136 (Cons!22207 (h!27608 (list!9066 (charsOf!2531 (h!27610 (t!190126 tokens!598))))) (++!6004 (t!190124 (list!9066 (charsOf!2531 (h!27610 (t!190126 tokens!598))))) lt!761948)))))

(declare-fun b!2029823 () Bool)

(declare-fun res!890131 () Bool)

(assert (=> b!2029823 (=> (not res!890131) (not e!1282135))))

(assert (=> b!2029823 (= res!890131 (= (size!17349 lt!762499) (+ (size!17349 (list!9066 (charsOf!2531 (h!27610 (t!190126 tokens!598))))) (size!17349 lt!761948))))))

(assert (= (and d!620881 c!328537) b!2029819))

(assert (= (and d!620881 (not c!328537)) b!2029821))

(assert (= (and d!620881 res!890134) b!2029823))

(assert (= (and b!2029823 res!890131) b!2029824))

(declare-fun m!2469711 () Bool)

(assert (=> d!620881 m!2469711))

(assert (=> d!620881 m!2467797))

(declare-fun m!2469713 () Bool)

(assert (=> d!620881 m!2469713))

(assert (=> d!620881 m!2469371))

(declare-fun m!2469715 () Bool)

(assert (=> b!2029821 m!2469715))

(declare-fun m!2469717 () Bool)

(assert (=> b!2029823 m!2469717))

(assert (=> b!2029823 m!2467797))

(declare-fun m!2469719 () Bool)

(assert (=> b!2029823 m!2469719))

(assert (=> b!2029823 m!2469379))

(assert (=> b!2028567 d!620881))

(assert (=> b!2028567 d!620547))

(declare-fun bs!420874 () Bool)

(declare-fun b!2029841 () Bool)

(assert (= bs!420874 (and b!2029841 b!2028166)))

(declare-fun lambda!76522 () Int)

(assert (=> bs!420874 (not (= lambda!76522 lambda!76480))))

(declare-fun bs!420875 () Bool)

(assert (= bs!420875 (and b!2029841 b!2028567)))

(assert (=> bs!420875 (= lambda!76522 lambda!76489)))

(declare-fun bs!420876 () Bool)

(assert (= bs!420876 (and b!2029841 d!620447)))

(assert (=> bs!420876 (= lambda!76522 lambda!76498)))

(declare-fun bs!420877 () Bool)

(assert (= bs!420877 (and b!2029841 b!2029003)))

(assert (=> bs!420877 (= lambda!76522 lambda!76499)))

(declare-fun b!2029851 () Bool)

(declare-fun e!1282157 () Bool)

(assert (=> b!2029851 (= e!1282157 true)))

(declare-fun b!2029850 () Bool)

(declare-fun e!1282156 () Bool)

(assert (=> b!2029850 (= e!1282156 e!1282157)))

(declare-fun b!2029849 () Bool)

(declare-fun e!1282155 () Bool)

(assert (=> b!2029849 (= e!1282155 e!1282156)))

(assert (=> b!2029841 e!1282155))

(assert (= b!2029850 b!2029851))

(assert (= b!2029849 b!2029850))

(assert (= (and b!2029841 (is-Cons!22208 rules!3198)) b!2029849))

(assert (=> b!2029851 (< (dynLambda!11037 order!14217 (toValue!5664 (transformation!3991 (h!27609 rules!3198)))) (dynLambda!11041 order!14223 lambda!76522))))

(assert (=> b!2029851 (< (dynLambda!11039 order!14221 (toChars!5523 (transformation!3991 (h!27609 rules!3198)))) (dynLambda!11041 order!14223 lambda!76522))))

(assert (=> b!2029841 true))

(declare-fun e!1282154 () List!22289)

(declare-fun e!1282153 () List!22289)

(assert (=> b!2029841 (= e!1282154 e!1282153)))

(declare-fun lt!762505 () Unit!36865)

(assert (=> b!2029841 (= lt!762505 (forallContained!747 (t!190126 (t!190126 tokens!598)) lambda!76522 (h!27610 (t!190126 (t!190126 tokens!598)))))))

(declare-fun lt!762503 () List!22289)

(assert (=> b!2029841 (= lt!762503 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 (t!190126 (t!190126 (t!190126 tokens!598))) separatorToken!354))))

(declare-fun lt!762500 () Option!4665)

(assert (=> b!2029841 (= lt!762500 (maxPrefix!2040 thiss!23328 rules!3198 (++!6004 (list!9066 (charsOf!2531 (h!27610 (t!190126 (t!190126 tokens!598))))) lt!762503)))))

(declare-fun c!328542 () Bool)

(assert (=> b!2029841 (= c!328542 (and (is-Some!4664 lt!762500) (= (_1!11913 (v!26989 lt!762500)) (h!27610 (t!190126 (t!190126 tokens!598))))))))

(declare-fun b!2029842 () Bool)

(declare-fun e!1282151 () List!22289)

(assert (=> b!2029842 (= e!1282151 Nil!22207)))

(assert (=> b!2029842 (= (print!1566 thiss!23328 (singletonSeq!1967 (h!27610 (t!190126 (t!190126 tokens!598))))) (printTailRec!1072 thiss!23328 (singletonSeq!1967 (h!27610 (t!190126 (t!190126 tokens!598)))) 0 (BalanceConc!14673 Empty!7428)))))

(declare-fun lt!762504 () Unit!36865)

(declare-fun Unit!36886 () Unit!36865)

(assert (=> b!2029842 (= lt!762504 Unit!36886)))

(declare-fun lt!762502 () Unit!36865)

(declare-fun call!124564 () List!22289)

(assert (=> b!2029842 (= lt!762502 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!778 thiss!23328 rules!3198 call!124564 lt!762503))))

(assert (=> b!2029842 false))

(declare-fun lt!762501 () Unit!36865)

(declare-fun Unit!36887 () Unit!36865)

(assert (=> b!2029842 (= lt!762501 Unit!36887)))

(declare-fun d!620883 () Bool)

(declare-fun c!328544 () Bool)

(assert (=> d!620883 (= c!328544 (is-Cons!22209 (t!190126 (t!190126 tokens!598))))))

(assert (=> d!620883 (= (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 (t!190126 (t!190126 tokens!598)) separatorToken!354) e!1282154)))

(declare-fun b!2029843 () Bool)

(declare-fun e!1282152 () List!22289)

(declare-fun call!124565 () List!22289)

(assert (=> b!2029843 (= e!1282152 call!124565)))

(declare-fun bm!124554 () Bool)

(declare-fun c!328543 () Bool)

(assert (=> bm!124554 (= c!328543 c!328542)))

(declare-fun call!124563 () List!22289)

(assert (=> bm!124554 (= call!124563 (++!6004 e!1282152 (ite c!328542 lt!762503 call!124564)))))

(declare-fun bm!124556 () Bool)

(declare-fun call!124561 () BalanceConc!14672)

(declare-fun call!124562 () BalanceConc!14672)

(assert (=> bm!124556 (= call!124561 call!124562)))

(declare-fun bm!124558 () Bool)

(assert (=> bm!124558 (= call!124564 call!124565)))

(declare-fun bm!124559 () Bool)

(declare-fun c!328545 () Bool)

(assert (=> bm!124559 (= call!124562 (charsOf!2531 (ite c!328542 (h!27610 (t!190126 (t!190126 tokens!598))) (ite c!328545 separatorToken!354 (h!27610 (t!190126 (t!190126 tokens!598)))))))))

(declare-fun bm!124560 () Bool)

(assert (=> bm!124560 (= call!124565 (list!9066 (ite c!328542 call!124562 call!124561)))))

(declare-fun b!2029844 () Bool)

(assert (=> b!2029844 (= e!1282151 (++!6004 call!124563 lt!762503))))

(declare-fun b!2029845 () Bool)

(assert (=> b!2029845 (= e!1282152 (list!9066 (charsOf!2531 (h!27610 (t!190126 (t!190126 tokens!598))))))))

(declare-fun b!2029846 () Bool)

(assert (=> b!2029846 (= e!1282153 call!124563)))

(declare-fun b!2029847 () Bool)

(assert (=> b!2029847 (= c!328545 (and (is-Some!4664 lt!762500) (not (= (_1!11913 (v!26989 lt!762500)) (h!27610 (t!190126 (t!190126 tokens!598)))))))))

(assert (=> b!2029847 (= e!1282153 e!1282151)))

(declare-fun b!2029848 () Bool)

(assert (=> b!2029848 (= e!1282154 Nil!22207)))

(assert (= (and d!620883 c!328544) b!2029841))

(assert (= (and d!620883 (not c!328544)) b!2029848))

(assert (= (and b!2029841 c!328542) b!2029846))

(assert (= (and b!2029841 (not c!328542)) b!2029847))

(assert (= (and b!2029847 c!328545) b!2029844))

(assert (= (and b!2029847 (not c!328545)) b!2029842))

(assert (= (or b!2029844 b!2029842) bm!124556))

(assert (= (or b!2029844 b!2029842) bm!124558))

(assert (= (or b!2029846 bm!124556) bm!124559))

(assert (= (or b!2029846 bm!124558) bm!124560))

(assert (= (or b!2029846 b!2029844) bm!124554))

(assert (= (and bm!124554 c!328543) b!2029843))

(assert (= (and bm!124554 (not c!328543)) b!2029845))

(declare-fun m!2469721 () Bool)

(assert (=> b!2029844 m!2469721))

(declare-fun m!2469723 () Bool)

(assert (=> bm!124559 m!2469723))

(declare-fun m!2469725 () Bool)

(assert (=> b!2029845 m!2469725))

(assert (=> b!2029845 m!2469725))

(declare-fun m!2469727 () Bool)

(assert (=> b!2029845 m!2469727))

(declare-fun m!2469729 () Bool)

(assert (=> b!2029842 m!2469729))

(assert (=> b!2029842 m!2469729))

(declare-fun m!2469731 () Bool)

(assert (=> b!2029842 m!2469731))

(assert (=> b!2029842 m!2469729))

(declare-fun m!2469733 () Bool)

(assert (=> b!2029842 m!2469733))

(declare-fun m!2469735 () Bool)

(assert (=> b!2029842 m!2469735))

(declare-fun m!2469737 () Bool)

(assert (=> b!2029841 m!2469737))

(declare-fun m!2469739 () Bool)

(assert (=> b!2029841 m!2469739))

(assert (=> b!2029841 m!2469727))

(assert (=> b!2029841 m!2469737))

(declare-fun m!2469741 () Bool)

(assert (=> b!2029841 m!2469741))

(assert (=> b!2029841 m!2469725))

(assert (=> b!2029841 m!2469727))

(assert (=> b!2029841 m!2469725))

(declare-fun m!2469743 () Bool)

(assert (=> b!2029841 m!2469743))

(declare-fun m!2469745 () Bool)

(assert (=> bm!124554 m!2469745))

(declare-fun m!2469747 () Bool)

(assert (=> bm!124560 m!2469747))

(assert (=> b!2028567 d!620883))

(assert (=> b!2028567 d!620545))

(declare-fun b!2029852 () Bool)

(declare-fun res!890146 () Bool)

(declare-fun e!1282160 () Bool)

(assert (=> b!2029852 (=> (not res!890146) (not e!1282160))))

(declare-fun lt!762506 () Option!4665)

(assert (=> b!2029852 (= res!890146 (< (size!17349 (_2!11913 (get!7053 lt!762506))) (size!17349 (++!6004 (list!9066 (charsOf!2531 (h!27610 (t!190126 tokens!598)))) lt!761948))))))

(declare-fun b!2029853 () Bool)

(declare-fun res!890148 () Bool)

(assert (=> b!2029853 (=> (not res!890148) (not e!1282160))))

(assert (=> b!2029853 (= res!890148 (= (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762506)))) (originalCharacters!4798 (_1!11913 (get!7053 lt!762506)))))))

(declare-fun b!2029854 () Bool)

(assert (=> b!2029854 (= e!1282160 (contains!4097 rules!3198 (rule!6220 (_1!11913 (get!7053 lt!762506)))))))

(declare-fun b!2029855 () Bool)

(declare-fun e!1282158 () Option!4665)

(declare-fun call!124570 () Option!4665)

(assert (=> b!2029855 (= e!1282158 call!124570)))

(declare-fun d!620885 () Bool)

(declare-fun e!1282159 () Bool)

(assert (=> d!620885 e!1282159))

(declare-fun res!890143 () Bool)

(assert (=> d!620885 (=> res!890143 e!1282159)))

(assert (=> d!620885 (= res!890143 (isEmpty!13861 lt!762506))))

(assert (=> d!620885 (= lt!762506 e!1282158)))

(declare-fun c!328546 () Bool)

(assert (=> d!620885 (= c!328546 (and (is-Cons!22208 rules!3198) (is-Nil!22208 (t!190125 rules!3198))))))

(declare-fun lt!762510 () Unit!36865)

(declare-fun lt!762509 () Unit!36865)

(assert (=> d!620885 (= lt!762510 lt!762509)))

(assert (=> d!620885 (isPrefix!1984 (++!6004 (list!9066 (charsOf!2531 (h!27610 (t!190126 tokens!598)))) lt!761948) (++!6004 (list!9066 (charsOf!2531 (h!27610 (t!190126 tokens!598)))) lt!761948))))

(assert (=> d!620885 (= lt!762509 (lemmaIsPrefixRefl!1302 (++!6004 (list!9066 (charsOf!2531 (h!27610 (t!190126 tokens!598)))) lt!761948) (++!6004 (list!9066 (charsOf!2531 (h!27610 (t!190126 tokens!598)))) lt!761948)))))

(assert (=> d!620885 (rulesValidInductive!1383 thiss!23328 rules!3198)))

(assert (=> d!620885 (= (maxPrefix!2040 thiss!23328 rules!3198 (++!6004 (list!9066 (charsOf!2531 (h!27610 (t!190126 tokens!598)))) lt!761948)) lt!762506)))

(declare-fun b!2029856 () Bool)

(declare-fun res!890145 () Bool)

(assert (=> b!2029856 (=> (not res!890145) (not e!1282160))))

(assert (=> b!2029856 (= res!890145 (matchR!2682 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762506)))) (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762506))))))))

(declare-fun b!2029857 () Bool)

(declare-fun res!890147 () Bool)

(assert (=> b!2029857 (=> (not res!890147) (not e!1282160))))

(assert (=> b!2029857 (= res!890147 (= (++!6004 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762506)))) (_2!11913 (get!7053 lt!762506))) (++!6004 (list!9066 (charsOf!2531 (h!27610 (t!190126 tokens!598)))) lt!761948)))))

(declare-fun b!2029858 () Bool)

(declare-fun lt!762507 () Option!4665)

(declare-fun lt!762508 () Option!4665)

(assert (=> b!2029858 (= e!1282158 (ite (and (is-None!4664 lt!762507) (is-None!4664 lt!762508)) None!4664 (ite (is-None!4664 lt!762508) lt!762507 (ite (is-None!4664 lt!762507) lt!762508 (ite (>= (size!17347 (_1!11913 (v!26989 lt!762507))) (size!17347 (_1!11913 (v!26989 lt!762508)))) lt!762507 lt!762508)))))))

(assert (=> b!2029858 (= lt!762507 call!124570)))

(assert (=> b!2029858 (= lt!762508 (maxPrefix!2040 thiss!23328 (t!190125 rules!3198) (++!6004 (list!9066 (charsOf!2531 (h!27610 (t!190126 tokens!598)))) lt!761948)))))

(declare-fun b!2029859 () Bool)

(declare-fun res!890149 () Bool)

(assert (=> b!2029859 (=> (not res!890149) (not e!1282160))))

(assert (=> b!2029859 (= res!890149 (= (value!125336 (_1!11913 (get!7053 lt!762506))) (apply!5846 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762506)))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!762506)))))))))

(declare-fun b!2029860 () Bool)

(assert (=> b!2029860 (= e!1282159 e!1282160)))

(declare-fun res!890144 () Bool)

(assert (=> b!2029860 (=> (not res!890144) (not e!1282160))))

(assert (=> b!2029860 (= res!890144 (isDefined!3954 lt!762506))))

(declare-fun bm!124565 () Bool)

(assert (=> bm!124565 (= call!124570 (maxPrefixOneRule!1266 thiss!23328 (h!27609 rules!3198) (++!6004 (list!9066 (charsOf!2531 (h!27610 (t!190126 tokens!598)))) lt!761948)))))

(assert (= (and d!620885 c!328546) b!2029855))

(assert (= (and d!620885 (not c!328546)) b!2029858))

(assert (= (or b!2029855 b!2029858) bm!124565))

(assert (= (and d!620885 (not res!890143)) b!2029860))

(assert (= (and b!2029860 res!890144) b!2029853))

(assert (= (and b!2029853 res!890148) b!2029852))

(assert (= (and b!2029852 res!890146) b!2029857))

(assert (= (and b!2029857 res!890147) b!2029859))

(assert (= (and b!2029859 res!890149) b!2029856))

(assert (= (and b!2029856 res!890145) b!2029854))

(declare-fun m!2469755 () Bool)

(assert (=> b!2029852 m!2469755))

(declare-fun m!2469757 () Bool)

(assert (=> b!2029852 m!2469757))

(assert (=> b!2029852 m!2467807))

(declare-fun m!2469759 () Bool)

(assert (=> b!2029852 m!2469759))

(assert (=> b!2029857 m!2469755))

(declare-fun m!2469761 () Bool)

(assert (=> b!2029857 m!2469761))

(assert (=> b!2029857 m!2469761))

(declare-fun m!2469763 () Bool)

(assert (=> b!2029857 m!2469763))

(assert (=> b!2029857 m!2469763))

(declare-fun m!2469765 () Bool)

(assert (=> b!2029857 m!2469765))

(assert (=> bm!124565 m!2467807))

(declare-fun m!2469767 () Bool)

(assert (=> bm!124565 m!2469767))

(declare-fun m!2469769 () Bool)

(assert (=> b!2029860 m!2469769))

(assert (=> b!2029859 m!2469755))

(declare-fun m!2469771 () Bool)

(assert (=> b!2029859 m!2469771))

(assert (=> b!2029859 m!2469771))

(declare-fun m!2469773 () Bool)

(assert (=> b!2029859 m!2469773))

(assert (=> b!2029858 m!2467807))

(declare-fun m!2469777 () Bool)

(assert (=> b!2029858 m!2469777))

(assert (=> b!2029854 m!2469755))

(declare-fun m!2469781 () Bool)

(assert (=> b!2029854 m!2469781))

(declare-fun m!2469784 () Bool)

(assert (=> d!620885 m!2469784))

(assert (=> d!620885 m!2467807))

(assert (=> d!620885 m!2467807))

(declare-fun m!2469787 () Bool)

(assert (=> d!620885 m!2469787))

(assert (=> d!620885 m!2467807))

(assert (=> d!620885 m!2467807))

(declare-fun m!2469791 () Bool)

(assert (=> d!620885 m!2469791))

(assert (=> d!620885 m!2467623))

(assert (=> b!2029856 m!2469755))

(assert (=> b!2029856 m!2469761))

(assert (=> b!2029856 m!2469761))

(assert (=> b!2029856 m!2469763))

(assert (=> b!2029856 m!2469763))

(declare-fun m!2469797 () Bool)

(assert (=> b!2029856 m!2469797))

(assert (=> b!2029853 m!2469755))

(assert (=> b!2029853 m!2469761))

(assert (=> b!2029853 m!2469761))

(assert (=> b!2029853 m!2469763))

(assert (=> b!2028567 d!620885))

(declare-fun d!620889 () Bool)

(assert (=> d!620889 (dynLambda!11048 lambda!76489 (h!27610 (t!190126 tokens!598)))))

(declare-fun lt!762516 () Unit!36865)

(declare-fun choose!12380 (List!22291 Int Token!7534) Unit!36865)

(assert (=> d!620889 (= lt!762516 (choose!12380 (t!190126 tokens!598) lambda!76489 (h!27610 (t!190126 tokens!598))))))

(declare-fun e!1282179 () Bool)

(assert (=> d!620889 e!1282179))

(declare-fun res!890165 () Bool)

(assert (=> d!620889 (=> (not res!890165) (not e!1282179))))

(assert (=> d!620889 (= res!890165 (forall!4723 (t!190126 tokens!598) lambda!76489))))

(assert (=> d!620889 (= (forallContained!747 (t!190126 tokens!598) lambda!76489 (h!27610 (t!190126 tokens!598))) lt!762516)))

(declare-fun b!2029888 () Bool)

(assert (=> b!2029888 (= e!1282179 (contains!4101 (t!190126 tokens!598) (h!27610 (t!190126 tokens!598))))))

(assert (= (and d!620889 res!890165) b!2029888))

(declare-fun b_lambda!68345 () Bool)

(assert (=> (not b_lambda!68345) (not d!620889)))

(declare-fun m!2469818 () Bool)

(assert (=> d!620889 m!2469818))

(declare-fun m!2469821 () Bool)

(assert (=> d!620889 m!2469821))

(declare-fun m!2469825 () Bool)

(assert (=> d!620889 m!2469825))

(declare-fun m!2469827 () Bool)

(assert (=> b!2029888 m!2469827))

(assert (=> b!2028567 d!620889))

(declare-fun d!620901 () Bool)

(declare-fun c!328552 () Bool)

(assert (=> d!620901 (= c!328552 (is-Node!7428 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (value!125336 separatorToken!354)))))))

(declare-fun e!1282182 () Bool)

(assert (=> d!620901 (= (inv!29393 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (value!125336 separatorToken!354)))) e!1282182)))

(declare-fun b!2029891 () Bool)

(assert (=> b!2029891 (= e!1282182 (inv!29397 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (value!125336 separatorToken!354)))))))

(declare-fun b!2029892 () Bool)

(declare-fun e!1282183 () Bool)

(assert (=> b!2029892 (= e!1282182 e!1282183)))

(declare-fun res!890168 () Bool)

(assert (=> b!2029892 (= res!890168 (not (is-Leaf!10887 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (value!125336 separatorToken!354))))))))

(assert (=> b!2029892 (=> res!890168 e!1282183)))

(declare-fun b!2029893 () Bool)

(assert (=> b!2029893 (= e!1282183 (inv!29398 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (value!125336 separatorToken!354)))))))

(assert (= (and d!620901 c!328552) b!2029891))

(assert (= (and d!620901 (not c!328552)) b!2029892))

(assert (= (and b!2029892 (not res!890168)) b!2029893))

(declare-fun m!2469833 () Bool)

(assert (=> b!2029891 m!2469833))

(declare-fun m!2469837 () Bool)

(assert (=> b!2029893 m!2469837))

(assert (=> b!2028623 d!620901))

(declare-fun d!620905 () Bool)

(declare-fun lt!762518 () Bool)

(assert (=> d!620905 (= lt!762518 (set.member (rule!6220 (_1!11913 (get!7053 lt!761878))) (content!3280 rules!3198)))))

(declare-fun e!1282184 () Bool)

(assert (=> d!620905 (= lt!762518 e!1282184)))

(declare-fun res!890169 () Bool)

(assert (=> d!620905 (=> (not res!890169) (not e!1282184))))

(assert (=> d!620905 (= res!890169 (is-Cons!22208 rules!3198))))

(assert (=> d!620905 (= (contains!4097 rules!3198 (rule!6220 (_1!11913 (get!7053 lt!761878)))) lt!762518)))

(declare-fun b!2029894 () Bool)

(declare-fun e!1282185 () Bool)

(assert (=> b!2029894 (= e!1282184 e!1282185)))

(declare-fun res!890170 () Bool)

(assert (=> b!2029894 (=> res!890170 e!1282185)))

(assert (=> b!2029894 (= res!890170 (= (h!27609 rules!3198) (rule!6220 (_1!11913 (get!7053 lt!761878)))))))

(declare-fun b!2029895 () Bool)

(assert (=> b!2029895 (= e!1282185 (contains!4097 (t!190125 rules!3198) (rule!6220 (_1!11913 (get!7053 lt!761878)))))))

(assert (= (and d!620905 res!890169) b!2029894))

(assert (= (and b!2029894 (not res!890170)) b!2029895))

(assert (=> d!620905 m!2467943))

(declare-fun m!2469839 () Bool)

(assert (=> d!620905 m!2469839))

(declare-fun m!2469841 () Bool)

(assert (=> b!2029895 m!2469841))

(assert (=> b!2028455 d!620905))

(assert (=> b!2028455 d!620643))

(declare-fun d!620909 () Bool)

(assert (=> d!620909 (= (list!9066 lt!762007) (list!9068 (c!328191 lt!762007)))))

(declare-fun bs!420879 () Bool)

(assert (= bs!420879 d!620909))

(declare-fun m!2469843 () Bool)

(assert (=> bs!420879 m!2469843))

(assert (=> d!620357 d!620909))

(declare-fun d!620911 () Bool)

(declare-fun c!328553 () Bool)

(assert (=> d!620911 (= c!328553 (is-Cons!22209 (list!9070 lt!761727)))))

(declare-fun e!1282186 () List!22289)

(assert (=> d!620911 (= (printList!1123 thiss!23328 (list!9070 lt!761727)) e!1282186)))

(declare-fun b!2029896 () Bool)

(assert (=> b!2029896 (= e!1282186 (++!6004 (list!9066 (charsOf!2531 (h!27610 (list!9070 lt!761727)))) (printList!1123 thiss!23328 (t!190126 (list!9070 lt!761727)))))))

(declare-fun b!2029897 () Bool)

(assert (=> b!2029897 (= e!1282186 Nil!22207)))

(assert (= (and d!620911 c!328553) b!2029896))

(assert (= (and d!620911 (not c!328553)) b!2029897))

(declare-fun m!2469845 () Bool)

(assert (=> b!2029896 m!2469845))

(assert (=> b!2029896 m!2469845))

(declare-fun m!2469847 () Bool)

(assert (=> b!2029896 m!2469847))

(declare-fun m!2469849 () Bool)

(assert (=> b!2029896 m!2469849))

(assert (=> b!2029896 m!2469847))

(assert (=> b!2029896 m!2469849))

(declare-fun m!2469851 () Bool)

(assert (=> b!2029896 m!2469851))

(assert (=> d!620357 d!620911))

(assert (=> d!620357 d!620817))

(assert (=> d!620357 d!620371))

(declare-fun b!2029898 () Bool)

(declare-fun e!1282187 () Bool)

(assert (=> b!2029898 (= e!1282187 (inv!17 (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (seqFromList!2845 (originalCharacters!4798 (h!27610 tokens!598))))))))

(declare-fun b!2029899 () Bool)

(declare-fun e!1282189 () Bool)

(assert (=> b!2029899 (= e!1282189 (inv!16 (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (seqFromList!2845 (originalCharacters!4798 (h!27610 tokens!598))))))))

(declare-fun d!620913 () Bool)

(declare-fun c!328554 () Bool)

(assert (=> d!620913 (= c!328554 (is-IntegerValue!12381 (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (seqFromList!2845 (originalCharacters!4798 (h!27610 tokens!598))))))))

(assert (=> d!620913 (= (inv!21 (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (seqFromList!2845 (originalCharacters!4798 (h!27610 tokens!598))))) e!1282189)))

(declare-fun b!2029900 () Bool)

(declare-fun e!1282188 () Bool)

(assert (=> b!2029900 (= e!1282188 (inv!15 (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (seqFromList!2845 (originalCharacters!4798 (h!27610 tokens!598))))))))

(declare-fun b!2029901 () Bool)

(declare-fun res!890171 () Bool)

(assert (=> b!2029901 (=> res!890171 e!1282188)))

(assert (=> b!2029901 (= res!890171 (not (is-IntegerValue!12383 (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (seqFromList!2845 (originalCharacters!4798 (h!27610 tokens!598)))))))))

(assert (=> b!2029901 (= e!1282187 e!1282188)))

(declare-fun b!2029902 () Bool)

(assert (=> b!2029902 (= e!1282189 e!1282187)))

(declare-fun c!328555 () Bool)

(assert (=> b!2029902 (= c!328555 (is-IntegerValue!12382 (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (seqFromList!2845 (originalCharacters!4798 (h!27610 tokens!598))))))))

(assert (= (and d!620913 c!328554) b!2029899))

(assert (= (and d!620913 (not c!328554)) b!2029902))

(assert (= (and b!2029902 c!328555) b!2029898))

(assert (= (and b!2029902 (not c!328555)) b!2029901))

(assert (= (and b!2029901 (not res!890171)) b!2029900))

(declare-fun m!2469853 () Bool)

(assert (=> b!2029898 m!2469853))

(declare-fun m!2469855 () Bool)

(assert (=> b!2029899 m!2469855))

(declare-fun m!2469857 () Bool)

(assert (=> b!2029900 m!2469857))

(assert (=> tb!127847 d!620913))

(declare-fun d!620915 () Bool)

(assert (=> d!620915 (= (list!9066 lt!761969) (list!9068 (c!328191 lt!761969)))))

(declare-fun bs!420880 () Bool)

(assert (= bs!420880 d!620915))

(declare-fun m!2469859 () Bool)

(assert (=> bs!420880 m!2469859))

(assert (=> d!620307 d!620915))

(declare-fun d!620917 () Bool)

(declare-fun lt!762519 () Int)

(assert (=> d!620917 (>= lt!762519 0)))

(declare-fun e!1282190 () Int)

(assert (=> d!620917 (= lt!762519 e!1282190)))

(declare-fun c!328556 () Bool)

(assert (=> d!620917 (= c!328556 (is-Nil!22207 lt!762015))))

(assert (=> d!620917 (= (size!17349 lt!762015) lt!762519)))

(declare-fun b!2029903 () Bool)

(assert (=> b!2029903 (= e!1282190 0)))

(declare-fun b!2029904 () Bool)

(assert (=> b!2029904 (= e!1282190 (+ 1 (size!17349 (t!190124 lt!762015))))))

(assert (= (and d!620917 c!328556) b!2029903))

(assert (= (and d!620917 (not c!328556)) b!2029904))

(declare-fun m!2469861 () Bool)

(assert (=> b!2029904 m!2469861))

(assert (=> b!2028784 d!620917))

(assert (=> b!2028784 d!620871))

(assert (=> b!2028784 d!620745))

(declare-fun d!620919 () Bool)

(declare-fun e!1282196 () Bool)

(assert (=> d!620919 e!1282196))

(declare-fun c!328557 () Bool)

(assert (=> d!620919 (= c!328557 (is-EmptyExpr!5416 (derivativeStep!1412 (regex!3991 lt!761717) (head!4584 lt!761716))))))

(declare-fun lt!762520 () Bool)

(declare-fun e!1282194 () Bool)

(assert (=> d!620919 (= lt!762520 e!1282194)))

(declare-fun c!328558 () Bool)

(assert (=> d!620919 (= c!328558 (isEmpty!13854 (tail!3060 lt!761716)))))

(assert (=> d!620919 (validRegex!2179 (derivativeStep!1412 (regex!3991 lt!761717) (head!4584 lt!761716)))))

(assert (=> d!620919 (= (matchR!2682 (derivativeStep!1412 (regex!3991 lt!761717) (head!4584 lt!761716)) (tail!3060 lt!761716)) lt!762520)))

(declare-fun b!2029905 () Bool)

(assert (=> b!2029905 (= e!1282194 (matchR!2682 (derivativeStep!1412 (derivativeStep!1412 (regex!3991 lt!761717) (head!4584 lt!761716)) (head!4584 (tail!3060 lt!761716))) (tail!3060 (tail!3060 lt!761716))))))

(declare-fun b!2029906 () Bool)

(declare-fun e!1282195 () Bool)

(assert (=> b!2029906 (= e!1282195 (not lt!762520))))

(declare-fun b!2029907 () Bool)

(declare-fun res!890177 () Bool)

(declare-fun e!1282193 () Bool)

(assert (=> b!2029907 (=> res!890177 e!1282193)))

(assert (=> b!2029907 (= res!890177 (not (isEmpty!13854 (tail!3060 (tail!3060 lt!761716)))))))

(declare-fun b!2029908 () Bool)

(assert (=> b!2029908 (= e!1282193 (not (= (head!4584 (tail!3060 lt!761716)) (c!328192 (derivativeStep!1412 (regex!3991 lt!761717) (head!4584 lt!761716))))))))

(declare-fun b!2029909 () Bool)

(declare-fun e!1282197 () Bool)

(assert (=> b!2029909 (= e!1282197 e!1282193)))

(declare-fun res!890173 () Bool)

(assert (=> b!2029909 (=> res!890173 e!1282193)))

(declare-fun call!124575 () Bool)

(assert (=> b!2029909 (= res!890173 call!124575)))

(declare-fun b!2029910 () Bool)

(declare-fun res!890179 () Bool)

(declare-fun e!1282191 () Bool)

(assert (=> b!2029910 (=> (not res!890179) (not e!1282191))))

(assert (=> b!2029910 (= res!890179 (isEmpty!13854 (tail!3060 (tail!3060 lt!761716))))))

(declare-fun b!2029911 () Bool)

(declare-fun res!890175 () Bool)

(declare-fun e!1282192 () Bool)

(assert (=> b!2029911 (=> res!890175 e!1282192)))

(assert (=> b!2029911 (= res!890175 e!1282191)))

(declare-fun res!890178 () Bool)

(assert (=> b!2029911 (=> (not res!890178) (not e!1282191))))

(assert (=> b!2029911 (= res!890178 lt!762520)))

(declare-fun b!2029912 () Bool)

(declare-fun res!890174 () Bool)

(assert (=> b!2029912 (=> (not res!890174) (not e!1282191))))

(assert (=> b!2029912 (= res!890174 (not call!124575))))

(declare-fun b!2029913 () Bool)

(assert (=> b!2029913 (= e!1282192 e!1282197)))

(declare-fun res!890172 () Bool)

(assert (=> b!2029913 (=> (not res!890172) (not e!1282197))))

(assert (=> b!2029913 (= res!890172 (not lt!762520))))

(declare-fun b!2029914 () Bool)

(assert (=> b!2029914 (= e!1282191 (= (head!4584 (tail!3060 lt!761716)) (c!328192 (derivativeStep!1412 (regex!3991 lt!761717) (head!4584 lt!761716)))))))

(declare-fun b!2029915 () Bool)

(assert (=> b!2029915 (= e!1282194 (nullable!1653 (derivativeStep!1412 (regex!3991 lt!761717) (head!4584 lt!761716))))))

(declare-fun b!2029916 () Bool)

(assert (=> b!2029916 (= e!1282196 e!1282195)))

(declare-fun c!328559 () Bool)

(assert (=> b!2029916 (= c!328559 (is-EmptyLang!5416 (derivativeStep!1412 (regex!3991 lt!761717) (head!4584 lt!761716))))))

(declare-fun bm!124570 () Bool)

(assert (=> bm!124570 (= call!124575 (isEmpty!13854 (tail!3060 lt!761716)))))

(declare-fun b!2029917 () Bool)

(declare-fun res!890176 () Bool)

(assert (=> b!2029917 (=> res!890176 e!1282192)))

(assert (=> b!2029917 (= res!890176 (not (is-ElementMatch!5416 (derivativeStep!1412 (regex!3991 lt!761717) (head!4584 lt!761716)))))))

(assert (=> b!2029917 (= e!1282195 e!1282192)))

(declare-fun b!2029918 () Bool)

(assert (=> b!2029918 (= e!1282196 (= lt!762520 call!124575))))

(assert (= (and d!620919 c!328558) b!2029915))

(assert (= (and d!620919 (not c!328558)) b!2029905))

(assert (= (and d!620919 c!328557) b!2029918))

(assert (= (and d!620919 (not c!328557)) b!2029916))

(assert (= (and b!2029916 c!328559) b!2029906))

(assert (= (and b!2029916 (not c!328559)) b!2029917))

(assert (= (and b!2029917 (not res!890176)) b!2029911))

(assert (= (and b!2029911 res!890178) b!2029912))

(assert (= (and b!2029912 res!890174) b!2029910))

(assert (= (and b!2029910 res!890179) b!2029914))

(assert (= (and b!2029911 (not res!890175)) b!2029913))

(assert (= (and b!2029913 res!890172) b!2029909))

(assert (= (and b!2029909 (not res!890173)) b!2029907))

(assert (= (and b!2029907 (not res!890177)) b!2029908))

(assert (= (or b!2029918 b!2029909 b!2029912) bm!124570))

(assert (=> b!2029910 m!2467931))

(declare-fun m!2469863 () Bool)

(assert (=> b!2029910 m!2469863))

(assert (=> b!2029910 m!2469863))

(declare-fun m!2469865 () Bool)

(assert (=> b!2029910 m!2469865))

(assert (=> b!2029915 m!2468263))

(declare-fun m!2469867 () Bool)

(assert (=> b!2029915 m!2469867))

(assert (=> b!2029908 m!2467931))

(declare-fun m!2469869 () Bool)

(assert (=> b!2029908 m!2469869))

(assert (=> b!2029905 m!2467931))

(assert (=> b!2029905 m!2469869))

(assert (=> b!2029905 m!2468263))

(assert (=> b!2029905 m!2469869))

(declare-fun m!2469871 () Bool)

(assert (=> b!2029905 m!2469871))

(assert (=> b!2029905 m!2467931))

(assert (=> b!2029905 m!2469863))

(assert (=> b!2029905 m!2469871))

(assert (=> b!2029905 m!2469863))

(declare-fun m!2469873 () Bool)

(assert (=> b!2029905 m!2469873))

(assert (=> b!2029914 m!2467931))

(assert (=> b!2029914 m!2469869))

(assert (=> d!620919 m!2467931))

(assert (=> d!620919 m!2467933))

(assert (=> d!620919 m!2468263))

(declare-fun m!2469875 () Bool)

(assert (=> d!620919 m!2469875))

(assert (=> b!2029907 m!2467931))

(assert (=> b!2029907 m!2469863))

(assert (=> b!2029907 m!2469863))

(assert (=> b!2029907 m!2469865))

(assert (=> bm!124570 m!2467931))

(assert (=> bm!124570 m!2467933))

(assert (=> b!2028918 d!620919))

(declare-fun c!328562 () Bool)

(declare-fun bm!124571 () Bool)

(declare-fun call!124578 () Regex!5416)

(assert (=> bm!124571 (= call!124578 (derivativeStep!1412 (ite c!328562 (regOne!11345 (regex!3991 lt!761717)) (regOne!11344 (regex!3991 lt!761717))) (head!4584 lt!761716)))))

(declare-fun e!1282201 () Regex!5416)

(declare-fun b!2029919 () Bool)

(declare-fun call!124577 () Regex!5416)

(assert (=> b!2029919 (= e!1282201 (Union!5416 (Concat!9544 call!124578 (regTwo!11344 (regex!3991 lt!761717))) call!124577))))

(declare-fun b!2029920 () Bool)

(declare-fun e!1282202 () Regex!5416)

(assert (=> b!2029920 (= e!1282202 (ite (= (head!4584 lt!761716) (c!328192 (regex!3991 lt!761717))) EmptyExpr!5416 EmptyLang!5416))))

(declare-fun b!2029921 () Bool)

(declare-fun c!328560 () Bool)

(assert (=> b!2029921 (= c!328560 (nullable!1653 (regOne!11344 (regex!3991 lt!761717))))))

(declare-fun e!1282199 () Regex!5416)

(assert (=> b!2029921 (= e!1282199 e!1282201)))

(declare-fun b!2029922 () Bool)

(assert (=> b!2029922 (= e!1282201 (Union!5416 (Concat!9544 call!124577 (regTwo!11344 (regex!3991 lt!761717))) EmptyLang!5416))))

(declare-fun b!2029923 () Bool)

(declare-fun e!1282198 () Regex!5416)

(assert (=> b!2029923 (= e!1282198 e!1282202)))

(declare-fun c!328561 () Bool)

(assert (=> b!2029923 (= c!328561 (is-ElementMatch!5416 (regex!3991 lt!761717)))))

(declare-fun b!2029924 () Bool)

(declare-fun e!1282200 () Regex!5416)

(assert (=> b!2029924 (= e!1282200 e!1282199)))

(declare-fun c!328563 () Bool)

(assert (=> b!2029924 (= c!328563 (is-Star!5416 (regex!3991 lt!761717)))))

(declare-fun b!2029925 () Bool)

(assert (=> b!2029925 (= e!1282198 EmptyLang!5416)))

(declare-fun d!620921 () Bool)

(declare-fun lt!762521 () Regex!5416)

(assert (=> d!620921 (validRegex!2179 lt!762521)))

(assert (=> d!620921 (= lt!762521 e!1282198)))

(declare-fun c!328564 () Bool)

(assert (=> d!620921 (= c!328564 (or (is-EmptyExpr!5416 (regex!3991 lt!761717)) (is-EmptyLang!5416 (regex!3991 lt!761717))))))

(assert (=> d!620921 (validRegex!2179 (regex!3991 lt!761717))))

(assert (=> d!620921 (= (derivativeStep!1412 (regex!3991 lt!761717) (head!4584 lt!761716)) lt!762521)))

(declare-fun b!2029926 () Bool)

(declare-fun call!124576 () Regex!5416)

(assert (=> b!2029926 (= e!1282199 (Concat!9544 call!124576 (regex!3991 lt!761717)))))

(declare-fun bm!124572 () Bool)

(declare-fun call!124579 () Regex!5416)

(assert (=> bm!124572 (= call!124579 (derivativeStep!1412 (ite c!328562 (regTwo!11345 (regex!3991 lt!761717)) (ite c!328563 (reg!5745 (regex!3991 lt!761717)) (ite c!328560 (regTwo!11344 (regex!3991 lt!761717)) (regOne!11344 (regex!3991 lt!761717))))) (head!4584 lt!761716)))))

(declare-fun b!2029927 () Bool)

(assert (=> b!2029927 (= c!328562 (is-Union!5416 (regex!3991 lt!761717)))))

(assert (=> b!2029927 (= e!1282202 e!1282200)))

(declare-fun b!2029928 () Bool)

(assert (=> b!2029928 (= e!1282200 (Union!5416 call!124578 call!124579))))

(declare-fun bm!124573 () Bool)

(assert (=> bm!124573 (= call!124577 call!124576)))

(declare-fun bm!124574 () Bool)

(assert (=> bm!124574 (= call!124576 call!124579)))

(assert (= (and d!620921 c!328564) b!2029925))

(assert (= (and d!620921 (not c!328564)) b!2029923))

(assert (= (and b!2029923 c!328561) b!2029920))

(assert (= (and b!2029923 (not c!328561)) b!2029927))

(assert (= (and b!2029927 c!328562) b!2029928))

(assert (= (and b!2029927 (not c!328562)) b!2029924))

(assert (= (and b!2029924 c!328563) b!2029926))

(assert (= (and b!2029924 (not c!328563)) b!2029921))

(assert (= (and b!2029921 c!328560) b!2029919))

(assert (= (and b!2029921 (not c!328560)) b!2029922))

(assert (= (or b!2029919 b!2029922) bm!124573))

(assert (= (or b!2029926 bm!124573) bm!124574))

(assert (= (or b!2029928 b!2029919) bm!124571))

(assert (= (or b!2029928 bm!124574) bm!124572))

(assert (=> bm!124571 m!2467285))

(declare-fun m!2469877 () Bool)

(assert (=> bm!124571 m!2469877))

(declare-fun m!2469879 () Bool)

(assert (=> b!2029921 m!2469879))

(declare-fun m!2469881 () Bool)

(assert (=> d!620921 m!2469881))

(assert (=> d!620921 m!2468267))

(assert (=> bm!124572 m!2467285))

(declare-fun m!2469883 () Bool)

(assert (=> bm!124572 m!2469883))

(assert (=> b!2028918 d!620921))

(assert (=> b!2028918 d!620383))

(assert (=> b!2028918 d!620639))

(assert (=> bm!124454 d!620683))

(declare-fun b!2029929 () Bool)

(declare-fun e!1282204 () List!22289)

(assert (=> b!2029929 (= e!1282204 (_2!11913 (get!7053 lt!762043)))))

(declare-fun b!2029932 () Bool)

(declare-fun e!1282203 () Bool)

(declare-fun lt!762522 () List!22289)

(assert (=> b!2029932 (= e!1282203 (or (not (= (_2!11913 (get!7053 lt!762043)) Nil!22207)) (= lt!762522 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762043)))))))))

(declare-fun d!620923 () Bool)

(assert (=> d!620923 e!1282203))

(declare-fun res!890181 () Bool)

(assert (=> d!620923 (=> (not res!890181) (not e!1282203))))

(assert (=> d!620923 (= res!890181 (= (content!3278 lt!762522) (set.union (content!3278 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762043))))) (content!3278 (_2!11913 (get!7053 lt!762043))))))))

(assert (=> d!620923 (= lt!762522 e!1282204)))

(declare-fun c!328565 () Bool)

(assert (=> d!620923 (= c!328565 (is-Nil!22207 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762043))))))))

(assert (=> d!620923 (= (++!6004 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762043)))) (_2!11913 (get!7053 lt!762043))) lt!762522)))

(declare-fun b!2029930 () Bool)

(assert (=> b!2029930 (= e!1282204 (Cons!22207 (h!27608 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762043))))) (++!6004 (t!190124 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762043))))) (_2!11913 (get!7053 lt!762043)))))))

(declare-fun b!2029931 () Bool)

(declare-fun res!890180 () Bool)

(assert (=> b!2029931 (=> (not res!890180) (not e!1282203))))

(assert (=> b!2029931 (= res!890180 (= (size!17349 lt!762522) (+ (size!17349 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762043))))) (size!17349 (_2!11913 (get!7053 lt!762043))))))))

(assert (= (and d!620923 c!328565) b!2029929))

(assert (= (and d!620923 (not c!328565)) b!2029930))

(assert (= (and d!620923 res!890181) b!2029931))

(assert (= (and b!2029931 res!890180) b!2029932))

(declare-fun m!2469885 () Bool)

(assert (=> d!620923 m!2469885))

(assert (=> d!620923 m!2468139))

(declare-fun m!2469887 () Bool)

(assert (=> d!620923 m!2469887))

(declare-fun m!2469889 () Bool)

(assert (=> d!620923 m!2469889))

(declare-fun m!2469891 () Bool)

(assert (=> b!2029930 m!2469891))

(declare-fun m!2469893 () Bool)

(assert (=> b!2029931 m!2469893))

(assert (=> b!2029931 m!2468139))

(declare-fun m!2469895 () Bool)

(assert (=> b!2029931 m!2469895))

(assert (=> b!2029931 m!2468133))

(assert (=> b!2028848 d!620923))

(assert (=> b!2028848 d!620581))

(assert (=> b!2028848 d!620583))

(assert (=> b!2028848 d!620585))

(declare-fun e!1282206 () List!22289)

(declare-fun b!2029933 () Bool)

(assert (=> b!2029933 (= e!1282206 (ite c!328320 call!124473 call!124474))))

(declare-fun lt!762523 () List!22289)

(declare-fun e!1282205 () Bool)

(declare-fun b!2029936 () Bool)

(assert (=> b!2029936 (= e!1282205 (or (not (= (ite c!328320 call!124473 call!124474) Nil!22207)) (= lt!762523 (ite c!328320 call!124474 call!124473))))))

(declare-fun d!620925 () Bool)

(assert (=> d!620925 e!1282205))

(declare-fun res!890183 () Bool)

(assert (=> d!620925 (=> (not res!890183) (not e!1282205))))

(assert (=> d!620925 (= res!890183 (= (content!3278 lt!762523) (set.union (content!3278 (ite c!328320 call!124474 call!124473)) (content!3278 (ite c!328320 call!124473 call!124474)))))))

(assert (=> d!620925 (= lt!762523 e!1282206)))

(declare-fun c!328566 () Bool)

(assert (=> d!620925 (= c!328566 (is-Nil!22207 (ite c!328320 call!124474 call!124473)))))

(assert (=> d!620925 (= (++!6004 (ite c!328320 call!124474 call!124473) (ite c!328320 call!124473 call!124474)) lt!762523)))

(declare-fun b!2029934 () Bool)

(assert (=> b!2029934 (= e!1282206 (Cons!22207 (h!27608 (ite c!328320 call!124474 call!124473)) (++!6004 (t!190124 (ite c!328320 call!124474 call!124473)) (ite c!328320 call!124473 call!124474))))))

(declare-fun b!2029935 () Bool)

(declare-fun res!890182 () Bool)

(assert (=> b!2029935 (=> (not res!890182) (not e!1282205))))

(assert (=> b!2029935 (= res!890182 (= (size!17349 lt!762523) (+ (size!17349 (ite c!328320 call!124474 call!124473)) (size!17349 (ite c!328320 call!124473 call!124474)))))))

(assert (= (and d!620925 c!328566) b!2029933))

(assert (= (and d!620925 (not c!328566)) b!2029934))

(assert (= (and d!620925 res!890183) b!2029935))

(assert (= (and b!2029935 res!890182) b!2029936))

(declare-fun m!2469897 () Bool)

(assert (=> d!620925 m!2469897))

(declare-fun m!2469899 () Bool)

(assert (=> d!620925 m!2469899))

(declare-fun m!2469901 () Bool)

(assert (=> d!620925 m!2469901))

(declare-fun m!2469903 () Bool)

(assert (=> b!2029934 m!2469903))

(declare-fun m!2469905 () Bool)

(assert (=> b!2029935 m!2469905))

(declare-fun m!2469907 () Bool)

(assert (=> b!2029935 m!2469907))

(declare-fun m!2469909 () Bool)

(assert (=> b!2029935 m!2469909))

(assert (=> bm!124468 d!620925))

(declare-fun d!620927 () Bool)

(declare-fun lt!762524 () Int)

(assert (=> d!620927 (>= lt!762524 0)))

(declare-fun e!1282207 () Int)

(assert (=> d!620927 (= lt!762524 e!1282207)))

(declare-fun c!328567 () Bool)

(assert (=> d!620927 (= c!328567 (is-Nil!22207 lt!761858))))

(assert (=> d!620927 (= (size!17349 lt!761858) lt!762524)))

(declare-fun b!2029937 () Bool)

(assert (=> b!2029937 (= e!1282207 0)))

(declare-fun b!2029938 () Bool)

(assert (=> b!2029938 (= e!1282207 (+ 1 (size!17349 (t!190124 lt!761858))))))

(assert (= (and d!620927 c!328567) b!2029937))

(assert (= (and d!620927 (not c!328567)) b!2029938))

(declare-fun m!2469911 () Bool)

(assert (=> b!2029938 m!2469911))

(assert (=> b!2028377 d!620927))

(assert (=> b!2028377 d!620871))

(assert (=> b!2028377 d!620747))

(declare-fun d!620929 () Bool)

(assert (=> d!620929 (= (inv!17 (value!125336 (h!27610 tokens!598))) (= (charsToBigInt!1 (text!29337 (value!125336 (h!27610 tokens!598)))) (value!125328 (value!125336 (h!27610 tokens!598)))))))

(declare-fun bs!420881 () Bool)

(assert (= bs!420881 d!620929))

(declare-fun m!2469913 () Bool)

(assert (=> bs!420881 m!2469913))

(assert (=> b!2028700 d!620929))

(declare-fun bs!420882 () Bool)

(declare-fun d!620931 () Bool)

(assert (= bs!420882 (and d!620931 d!620293)))

(declare-fun lambda!76523 () Int)

(assert (=> bs!420882 (= (and (= (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) (= (toValue!5664 (transformation!3991 (rule!6220 separatorToken!354))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))))) (= lambda!76523 lambda!76492))))

(declare-fun bs!420883 () Bool)

(assert (= bs!420883 (and d!620931 d!620693)))

(assert (=> bs!420883 (= (and (= (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (toChars!5523 (transformation!3991 (h!27609 rules!3198)))) (= (toValue!5664 (transformation!3991 (rule!6220 separatorToken!354))) (toValue!5664 (transformation!3991 (h!27609 rules!3198))))) (= lambda!76523 lambda!76515))))

(assert (=> d!620931 true))

(assert (=> d!620931 (< (dynLambda!11039 order!14221 (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354)))) (dynLambda!11042 order!14225 lambda!76523))))

(assert (=> d!620931 true))

(assert (=> d!620931 (< (dynLambda!11037 order!14217 (toValue!5664 (transformation!3991 (rule!6220 separatorToken!354)))) (dynLambda!11042 order!14225 lambda!76523))))

(assert (=> d!620931 (= (semiInverseModEq!1608 (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (toValue!5664 (transformation!3991 (rule!6220 separatorToken!354)))) (Forall!1019 lambda!76523))))

(declare-fun bs!420884 () Bool)

(assert (= bs!420884 d!620931))

(declare-fun m!2469915 () Bool)

(assert (=> bs!420884 m!2469915))

(assert (=> d!620321 d!620931))

(declare-fun b!2029939 () Bool)

(declare-fun e!1282209 () List!22289)

(assert (=> b!2029939 (= e!1282209 (_2!11913 (get!7053 lt!761886)))))

(declare-fun b!2029942 () Bool)

(declare-fun e!1282208 () Bool)

(declare-fun lt!762525 () List!22289)

(assert (=> b!2029942 (= e!1282208 (or (not (= (_2!11913 (get!7053 lt!761886)) Nil!22207)) (= lt!762525 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761886)))))))))

(declare-fun d!620933 () Bool)

(assert (=> d!620933 e!1282208))

(declare-fun res!890185 () Bool)

(assert (=> d!620933 (=> (not res!890185) (not e!1282208))))

(assert (=> d!620933 (= res!890185 (= (content!3278 lt!762525) (set.union (content!3278 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761886))))) (content!3278 (_2!11913 (get!7053 lt!761886))))))))

(assert (=> d!620933 (= lt!762525 e!1282209)))

(declare-fun c!328568 () Bool)

(assert (=> d!620933 (= c!328568 (is-Nil!22207 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761886))))))))

(assert (=> d!620933 (= (++!6004 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761886)))) (_2!11913 (get!7053 lt!761886))) lt!762525)))

(declare-fun b!2029940 () Bool)

(assert (=> b!2029940 (= e!1282209 (Cons!22207 (h!27608 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761886))))) (++!6004 (t!190124 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761886))))) (_2!11913 (get!7053 lt!761886)))))))

(declare-fun b!2029941 () Bool)

(declare-fun res!890184 () Bool)

(assert (=> b!2029941 (=> (not res!890184) (not e!1282208))))

(assert (=> b!2029941 (= res!890184 (= (size!17349 lt!762525) (+ (size!17349 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761886))))) (size!17349 (_2!11913 (get!7053 lt!761886))))))))

(assert (= (and d!620933 c!328568) b!2029939))

(assert (= (and d!620933 (not c!328568)) b!2029940))

(assert (= (and d!620933 res!890185) b!2029941))

(assert (= (and b!2029941 res!890184) b!2029942))

(declare-fun m!2469917 () Bool)

(assert (=> d!620933 m!2469917))

(assert (=> d!620933 m!2467643))

(declare-fun m!2469919 () Bool)

(assert (=> d!620933 m!2469919))

(declare-fun m!2469921 () Bool)

(assert (=> d!620933 m!2469921))

(declare-fun m!2469923 () Bool)

(assert (=> b!2029940 m!2469923))

(declare-fun m!2469925 () Bool)

(assert (=> b!2029941 m!2469925))

(assert (=> b!2029941 m!2467643))

(declare-fun m!2469927 () Bool)

(assert (=> b!2029941 m!2469927))

(assert (=> b!2029941 m!2467637))

(assert (=> b!2028479 d!620933))

(assert (=> b!2028479 d!620595))

(assert (=> b!2028479 d!620597))

(assert (=> b!2028479 d!620599))

(declare-fun d!620935 () Bool)

(assert (=> d!620935 (= (inv!29386 (tag!4477 (rule!6220 (h!27610 (t!190126 tokens!598))))) (= (mod (str.len (value!125335 (tag!4477 (rule!6220 (h!27610 (t!190126 tokens!598)))))) 2) 0))))

(assert (=> b!2029044 d!620935))

(declare-fun d!620937 () Bool)

(declare-fun res!890186 () Bool)

(declare-fun e!1282210 () Bool)

(assert (=> d!620937 (=> (not res!890186) (not e!1282210))))

(assert (=> d!620937 (= res!890186 (semiInverseModEq!1608 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598)))))))))

(assert (=> d!620937 (= (inv!29389 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) e!1282210)))

(declare-fun b!2029943 () Bool)

(assert (=> b!2029943 (= e!1282210 (equivClasses!1535 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598)))))))))

(assert (= (and d!620937 res!890186) b!2029943))

(declare-fun m!2469929 () Bool)

(assert (=> d!620937 m!2469929))

(declare-fun m!2469931 () Bool)

(assert (=> b!2029943 m!2469931))

(assert (=> b!2029044 d!620937))

(assert (=> b!2028610 d!620555))

(declare-fun b!2029944 () Bool)

(declare-fun res!890190 () Bool)

(declare-fun e!1282213 () Bool)

(assert (=> b!2029944 (=> (not res!890190) (not e!1282213))))

(declare-fun lt!762526 () Option!4665)

(assert (=> b!2029944 (= res!890190 (< (size!17349 (_2!11913 (get!7053 lt!762526))) (size!17349 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))

(declare-fun b!2029945 () Bool)

(declare-fun res!890192 () Bool)

(assert (=> b!2029945 (=> (not res!890192) (not e!1282213))))

(assert (=> b!2029945 (= res!890192 (= (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762526)))) (originalCharacters!4798 (_1!11913 (get!7053 lt!762526)))))))

(declare-fun b!2029946 () Bool)

(assert (=> b!2029946 (= e!1282213 (contains!4097 (t!190125 rules!3198) (rule!6220 (_1!11913 (get!7053 lt!762526)))))))

(declare-fun b!2029947 () Bool)

(declare-fun e!1282211 () Option!4665)

(declare-fun call!124580 () Option!4665)

(assert (=> b!2029947 (= e!1282211 call!124580)))

(declare-fun d!620939 () Bool)

(declare-fun e!1282212 () Bool)

(assert (=> d!620939 e!1282212))

(declare-fun res!890187 () Bool)

(assert (=> d!620939 (=> res!890187 e!1282212)))

(assert (=> d!620939 (= res!890187 (isEmpty!13861 lt!762526))))

(assert (=> d!620939 (= lt!762526 e!1282211)))

(declare-fun c!328569 () Bool)

(assert (=> d!620939 (= c!328569 (and (is-Cons!22208 (t!190125 rules!3198)) (is-Nil!22208 (t!190125 (t!190125 rules!3198)))))))

(declare-fun lt!762530 () Unit!36865)

(declare-fun lt!762529 () Unit!36865)

(assert (=> d!620939 (= lt!762530 lt!762529)))

(assert (=> d!620939 (isPrefix!1984 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354))))

(assert (=> d!620939 (= lt!762529 (lemmaIsPrefixRefl!1302 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(assert (=> d!620939 (rulesValidInductive!1383 thiss!23328 (t!190125 rules!3198))))

(assert (=> d!620939 (= (maxPrefix!2040 thiss!23328 (t!190125 rules!3198) (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354)) lt!762526)))

(declare-fun b!2029948 () Bool)

(declare-fun res!890189 () Bool)

(assert (=> b!2029948 (=> (not res!890189) (not e!1282213))))

(assert (=> b!2029948 (= res!890189 (matchR!2682 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762526)))) (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762526))))))))

(declare-fun b!2029949 () Bool)

(declare-fun res!890191 () Bool)

(assert (=> b!2029949 (=> (not res!890191) (not e!1282213))))

(assert (=> b!2029949 (= res!890191 (= (++!6004 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762526)))) (_2!11913 (get!7053 lt!762526))) (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun b!2029950 () Bool)

(declare-fun lt!762527 () Option!4665)

(declare-fun lt!762528 () Option!4665)

(assert (=> b!2029950 (= e!1282211 (ite (and (is-None!4664 lt!762527) (is-None!4664 lt!762528)) None!4664 (ite (is-None!4664 lt!762528) lt!762527 (ite (is-None!4664 lt!762527) lt!762528 (ite (>= (size!17347 (_1!11913 (v!26989 lt!762527))) (size!17347 (_1!11913 (v!26989 lt!762528)))) lt!762527 lt!762528)))))))

(assert (=> b!2029950 (= lt!762527 call!124580)))

(assert (=> b!2029950 (= lt!762528 (maxPrefix!2040 thiss!23328 (t!190125 (t!190125 rules!3198)) (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun b!2029951 () Bool)

(declare-fun res!890193 () Bool)

(assert (=> b!2029951 (=> (not res!890193) (not e!1282213))))

(assert (=> b!2029951 (= res!890193 (= (value!125336 (_1!11913 (get!7053 lt!762526))) (apply!5846 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762526)))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!762526)))))))))

(declare-fun b!2029952 () Bool)

(assert (=> b!2029952 (= e!1282212 e!1282213)))

(declare-fun res!890188 () Bool)

(assert (=> b!2029952 (=> (not res!890188) (not e!1282213))))

(assert (=> b!2029952 (= res!890188 (isDefined!3954 lt!762526))))

(declare-fun bm!124575 () Bool)

(assert (=> bm!124575 (= call!124580 (maxPrefixOneRule!1266 thiss!23328 (h!27609 (t!190125 rules!3198)) (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(assert (= (and d!620939 c!328569) b!2029947))

(assert (= (and d!620939 (not c!328569)) b!2029950))

(assert (= (or b!2029947 b!2029950) bm!124575))

(assert (= (and d!620939 (not res!890187)) b!2029952))

(assert (= (and b!2029952 res!890188) b!2029945))

(assert (= (and b!2029945 res!890192) b!2029944))

(assert (= (and b!2029944 res!890190) b!2029949))

(assert (= (and b!2029949 res!890191) b!2029951))

(assert (= (and b!2029951 res!890193) b!2029948))

(assert (= (and b!2029948 res!890189) b!2029946))

(declare-fun m!2469933 () Bool)

(assert (=> b!2029944 m!2469933))

(declare-fun m!2469935 () Bool)

(assert (=> b!2029944 m!2469935))

(assert (=> b!2029944 m!2467209))

(assert (=> b!2029944 m!2468353))

(assert (=> b!2029949 m!2469933))

(declare-fun m!2469937 () Bool)

(assert (=> b!2029949 m!2469937))

(assert (=> b!2029949 m!2469937))

(declare-fun m!2469939 () Bool)

(assert (=> b!2029949 m!2469939))

(assert (=> b!2029949 m!2469939))

(declare-fun m!2469941 () Bool)

(assert (=> b!2029949 m!2469941))

(assert (=> bm!124575 m!2467209))

(declare-fun m!2469943 () Bool)

(assert (=> bm!124575 m!2469943))

(declare-fun m!2469945 () Bool)

(assert (=> b!2029952 m!2469945))

(assert (=> b!2029951 m!2469933))

(declare-fun m!2469947 () Bool)

(assert (=> b!2029951 m!2469947))

(assert (=> b!2029951 m!2469947))

(declare-fun m!2469949 () Bool)

(assert (=> b!2029951 m!2469949))

(assert (=> b!2029950 m!2467209))

(declare-fun m!2469951 () Bool)

(assert (=> b!2029950 m!2469951))

(assert (=> b!2029946 m!2469933))

(declare-fun m!2469953 () Bool)

(assert (=> b!2029946 m!2469953))

(declare-fun m!2469955 () Bool)

(assert (=> d!620939 m!2469955))

(assert (=> d!620939 m!2467209))

(assert (=> d!620939 m!2467209))

(assert (=> d!620939 m!2468375))

(assert (=> d!620939 m!2467209))

(assert (=> d!620939 m!2467209))

(assert (=> d!620939 m!2468377))

(assert (=> d!620939 m!2469185))

(assert (=> b!2029948 m!2469933))

(assert (=> b!2029948 m!2469937))

(assert (=> b!2029948 m!2469937))

(assert (=> b!2029948 m!2469939))

(assert (=> b!2029948 m!2469939))

(declare-fun m!2469957 () Bool)

(assert (=> b!2029948 m!2469957))

(assert (=> b!2029945 m!2469933))

(assert (=> b!2029945 m!2469937))

(assert (=> b!2029945 m!2469937))

(assert (=> b!2029945 m!2469939))

(assert (=> b!2029000 d!620939))

(assert (=> b!2028460 d!620643))

(declare-fun d!620941 () Bool)

(assert (=> d!620941 (= (apply!5846 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761878)))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!761878))))) (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761878))))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!761878))))))))

(declare-fun b_lambda!68347 () Bool)

(assert (=> (not b_lambda!68347) (not d!620941)))

(declare-fun tb!128051 () Bool)

(declare-fun t!190359 () Bool)

(assert (=> (and b!2029070 (= (toValue!5664 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761878)))))) t!190359) tb!128051))

(declare-fun result!153214 () Bool)

(assert (=> tb!128051 (= result!153214 (inv!21 (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761878))))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!761878)))))))))

(declare-fun m!2469959 () Bool)

(assert (=> tb!128051 m!2469959))

(assert (=> d!620941 t!190359))

(declare-fun b_and!161643 () Bool)

(assert (= b_and!161593 (and (=> t!190359 result!153214) b_and!161643)))

(declare-fun tb!128053 () Bool)

(declare-fun t!190361 () Bool)

(assert (=> (and b!2028173 (= (toValue!5664 (transformation!3991 (h!27609 rules!3198))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761878)))))) t!190361) tb!128053))

(declare-fun result!153216 () Bool)

(assert (= result!153216 result!153214))

(assert (=> d!620941 t!190361))

(declare-fun b_and!161645 () Bool)

(assert (= b_and!161601 (and (=> t!190361 result!153216) b_and!161645)))

(declare-fun tb!128055 () Bool)

(declare-fun t!190363 () Bool)

(assert (=> (and b!2029045 (= (toValue!5664 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761878)))))) t!190363) tb!128055))

(declare-fun result!153218 () Bool)

(assert (= result!153218 result!153214))

(assert (=> d!620941 t!190363))

(declare-fun b_and!161647 () Bool)

(assert (= b_and!161597 (and (=> t!190363 result!153218) b_and!161647)))

(declare-fun tb!128057 () Bool)

(declare-fun t!190365 () Bool)

(assert (=> (and b!2028164 (= (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761878)))))) t!190365) tb!128057))

(declare-fun result!153220 () Bool)

(assert (= result!153220 result!153214))

(assert (=> d!620941 t!190365))

(declare-fun b_and!161649 () Bool)

(assert (= b_and!161599 (and (=> t!190365 result!153220) b_and!161649)))

(declare-fun tb!128059 () Bool)

(declare-fun t!190367 () Bool)

(assert (=> (and b!2028151 (= (toValue!5664 (transformation!3991 (rule!6220 separatorToken!354))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761878)))))) t!190367) tb!128059))

(declare-fun result!153222 () Bool)

(assert (= result!153222 result!153214))

(assert (=> d!620941 t!190367))

(declare-fun b_and!161651 () Bool)

(assert (= b_and!161595 (and (=> t!190367 result!153222) b_and!161651)))

(assert (=> d!620941 m!2467595))

(declare-fun m!2469961 () Bool)

(assert (=> d!620941 m!2469961))

(assert (=> b!2028460 d!620941))

(declare-fun d!620943 () Bool)

(assert (=> d!620943 (= (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!761878)))) (fromListB!1281 (originalCharacters!4798 (_1!11913 (get!7053 lt!761878)))))))

(declare-fun bs!420885 () Bool)

(assert (= bs!420885 d!620943))

(declare-fun m!2469963 () Bool)

(assert (=> bs!420885 m!2469963))

(assert (=> b!2028460 d!620943))

(assert (=> b!2029019 d!620605))

(assert (=> b!2028708 d!620383))

(assert (=> b!2028619 d!620783))

(assert (=> b!2028619 d!620785))

(declare-fun b!2029954 () Bool)

(declare-fun e!1282215 () Option!4666)

(declare-fun e!1282216 () Option!4666)

(assert (=> b!2029954 (= e!1282215 e!1282216)))

(declare-fun c!328571 () Bool)

(assert (=> b!2029954 (= c!328571 (and (is-Cons!22208 (t!190125 rules!3198)) (not (= (tag!4477 (h!27609 (t!190125 rules!3198))) (tag!4477 (rule!6220 (h!27610 tokens!598)))))))))

(declare-fun b!2029955 () Bool)

(assert (=> b!2029955 (= e!1282215 (Some!4665 (h!27609 (t!190125 rules!3198))))))

(declare-fun b!2029956 () Bool)

(declare-fun lt!762533 () Unit!36865)

(declare-fun lt!762531 () Unit!36865)

(assert (=> b!2029956 (= lt!762533 lt!762531)))

(assert (=> b!2029956 (rulesInvariant!3211 thiss!23328 (t!190125 (t!190125 rules!3198)))))

(assert (=> b!2029956 (= lt!762531 (lemmaInvariantOnRulesThenOnTail!309 thiss!23328 (h!27609 (t!190125 rules!3198)) (t!190125 (t!190125 rules!3198))))))

(assert (=> b!2029956 (= e!1282216 (getRuleFromTag!806 thiss!23328 (t!190125 (t!190125 rules!3198)) (tag!4477 (rule!6220 (h!27610 tokens!598)))))))

(declare-fun b!2029957 () Bool)

(declare-fun e!1282218 () Bool)

(declare-fun e!1282217 () Bool)

(assert (=> b!2029957 (= e!1282218 e!1282217)))

(declare-fun res!890195 () Bool)

(assert (=> b!2029957 (=> (not res!890195) (not e!1282217))))

(declare-fun lt!762532 () Option!4666)

(assert (=> b!2029957 (= res!890195 (contains!4097 (t!190125 rules!3198) (get!7052 lt!762532)))))

(declare-fun b!2029958 () Bool)

(assert (=> b!2029958 (= e!1282216 None!4665)))

(declare-fun d!620945 () Bool)

(assert (=> d!620945 e!1282218))

(declare-fun res!890194 () Bool)

(assert (=> d!620945 (=> res!890194 e!1282218)))

(assert (=> d!620945 (= res!890194 (isEmpty!13862 lt!762532))))

(assert (=> d!620945 (= lt!762532 e!1282215)))

(declare-fun c!328570 () Bool)

(assert (=> d!620945 (= c!328570 (and (is-Cons!22208 (t!190125 rules!3198)) (= (tag!4477 (h!27609 (t!190125 rules!3198))) (tag!4477 (rule!6220 (h!27610 tokens!598))))))))

(assert (=> d!620945 (rulesInvariant!3211 thiss!23328 (t!190125 rules!3198))))

(assert (=> d!620945 (= (getRuleFromTag!806 thiss!23328 (t!190125 rules!3198) (tag!4477 (rule!6220 (h!27610 tokens!598)))) lt!762532)))

(declare-fun b!2029953 () Bool)

(assert (=> b!2029953 (= e!1282217 (= (tag!4477 (get!7052 lt!762532)) (tag!4477 (rule!6220 (h!27610 tokens!598)))))))

(assert (= (and d!620945 c!328570) b!2029955))

(assert (= (and d!620945 (not c!328570)) b!2029954))

(assert (= (and b!2029954 c!328571) b!2029956))

(assert (= (and b!2029954 (not c!328571)) b!2029958))

(assert (= (and d!620945 (not res!890194)) b!2029957))

(assert (= (and b!2029957 res!890195) b!2029953))

(assert (=> b!2029956 m!2469389))

(assert (=> b!2029956 m!2469391))

(declare-fun m!2469965 () Bool)

(assert (=> b!2029956 m!2469965))

(declare-fun m!2469967 () Bool)

(assert (=> b!2029957 m!2469967))

(assert (=> b!2029957 m!2469967))

(declare-fun m!2469969 () Bool)

(assert (=> b!2029957 m!2469969))

(declare-fun m!2469971 () Bool)

(assert (=> d!620945 m!2469971))

(assert (=> d!620945 m!2467833))

(assert (=> b!2029953 m!2469967))

(assert (=> b!2028619 d!620945))

(assert (=> b!2028927 d!620383))

(declare-fun d!620947 () Bool)

(assert (=> d!620947 (= (list!9066 (_2!11914 lt!761999)) (list!9068 (c!328191 (_2!11914 lt!761999))))))

(declare-fun bs!420886 () Bool)

(assert (= bs!420886 d!620947))

(declare-fun m!2469973 () Bool)

(assert (=> bs!420886 m!2469973))

(assert (=> b!2028752 d!620947))

(assert (=> b!2028752 d!620633))

(assert (=> b!2028752 d!620635))

(assert (=> bm!124455 d!620689))

(assert (=> bm!124484 d!620683))

(declare-fun b!2029962 () Bool)

(declare-fun e!1282220 () List!22289)

(assert (=> b!2029962 (= e!1282220 (++!6004 (list!9068 (left!17670 (c!328191 lt!761722))) (list!9068 (right!18000 (c!328191 lt!761722)))))))

(declare-fun b!2029959 () Bool)

(declare-fun e!1282219 () List!22289)

(assert (=> b!2029959 (= e!1282219 Nil!22207)))

(declare-fun d!620949 () Bool)

(declare-fun c!328572 () Bool)

(assert (=> d!620949 (= c!328572 (is-Empty!7428 (c!328191 lt!761722)))))

(assert (=> d!620949 (= (list!9068 (c!328191 lt!761722)) e!1282219)))

(declare-fun b!2029960 () Bool)

(assert (=> b!2029960 (= e!1282219 e!1282220)))

(declare-fun c!328573 () Bool)

(assert (=> b!2029960 (= c!328573 (is-Leaf!10887 (c!328191 lt!761722)))))

(declare-fun b!2029961 () Bool)

(assert (=> b!2029961 (= e!1282220 (list!9073 (xs!10330 (c!328191 lt!761722))))))

(assert (= (and d!620949 c!328572) b!2029959))

(assert (= (and d!620949 (not c!328572)) b!2029960))

(assert (= (and b!2029960 c!328573) b!2029961))

(assert (= (and b!2029960 (not c!328573)) b!2029962))

(declare-fun m!2469975 () Bool)

(assert (=> b!2029962 m!2469975))

(declare-fun m!2469977 () Bool)

(assert (=> b!2029962 m!2469977))

(assert (=> b!2029962 m!2469975))

(assert (=> b!2029962 m!2469977))

(declare-fun m!2469979 () Bool)

(assert (=> b!2029962 m!2469979))

(declare-fun m!2469981 () Bool)

(assert (=> b!2029961 m!2469981))

(assert (=> d!620377 d!620949))

(declare-fun d!620951 () Bool)

(assert (=> d!620951 (= (inv!16 (value!125336 (h!27610 tokens!598))) (= (charsToInt!0 (text!29336 (value!125336 (h!27610 tokens!598)))) (value!125327 (value!125336 (h!27610 tokens!598)))))))

(declare-fun bs!420887 () Bool)

(assert (= bs!420887 d!620951))

(declare-fun m!2469983 () Bool)

(assert (=> bs!420887 m!2469983))

(assert (=> b!2028701 d!620951))

(declare-fun d!620953 () Bool)

(assert (=> d!620953 (= (isDefined!3953 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 separatorToken!354)))) (not (isEmpty!13862 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 separatorToken!354))))))))

(declare-fun bs!420888 () Bool)

(assert (= bs!420888 d!620953))

(assert (=> bs!420888 m!2467167))

(declare-fun m!2469985 () Bool)

(assert (=> bs!420888 m!2469985))

(assert (=> d!620255 d!620953))

(assert (=> d!620255 d!620295))

(declare-fun d!620955 () Bool)

(declare-fun e!1282221 () Bool)

(assert (=> d!620955 e!1282221))

(declare-fun res!890196 () Bool)

(assert (=> d!620955 (=> (not res!890196) (not e!1282221))))

(assert (=> d!620955 (= res!890196 (isDefined!3953 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 separatorToken!354)))))))

(assert (=> d!620955 true))

(declare-fun _$52!1319 () Unit!36865)

(assert (=> d!620955 (= (choose!12363 thiss!23328 rules!3198 lt!761716 separatorToken!354) _$52!1319)))

(declare-fun b!2029963 () Bool)

(declare-fun res!890197 () Bool)

(assert (=> b!2029963 (=> (not res!890197) (not e!1282221))))

(assert (=> b!2029963 (= res!890197 (matchR!2682 (regex!3991 (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 separatorToken!354))))) (list!9066 (charsOf!2531 separatorToken!354))))))

(declare-fun b!2029964 () Bool)

(assert (=> b!2029964 (= e!1282221 (= (rule!6220 separatorToken!354) (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 separatorToken!354))))))))

(assert (= (and d!620955 res!890196) b!2029963))

(assert (= (and b!2029963 res!890197) b!2029964))

(assert (=> d!620955 m!2467167))

(assert (=> d!620955 m!2467167))

(assert (=> d!620955 m!2467675))

(assert (=> b!2029963 m!2467167))

(assert (=> b!2029963 m!2467171))

(assert (=> b!2029963 m!2467189))

(assert (=> b!2029963 m!2467171))

(assert (=> b!2029963 m!2467167))

(assert (=> b!2029963 m!2467679))

(assert (=> b!2029963 m!2467189))

(assert (=> b!2029963 m!2467681))

(assert (=> b!2029964 m!2467167))

(assert (=> b!2029964 m!2467167))

(assert (=> b!2029964 m!2467679))

(assert (=> d!620255 d!620955))

(assert (=> d!620255 d!620387))

(declare-fun b!2029965 () Bool)

(declare-fun res!890201 () Bool)

(declare-fun e!1282224 () Bool)

(assert (=> b!2029965 (=> (not res!890201) (not e!1282224))))

(declare-fun lt!762534 () Option!4665)

(assert (=> b!2029965 (= res!890201 (< (size!17349 (_2!11913 (get!7053 lt!762534))) (size!17349 lt!761719)))))

(declare-fun b!2029966 () Bool)

(declare-fun res!890203 () Bool)

(assert (=> b!2029966 (=> (not res!890203) (not e!1282224))))

(assert (=> b!2029966 (= res!890203 (= (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762534)))) (originalCharacters!4798 (_1!11913 (get!7053 lt!762534)))))))

(declare-fun b!2029967 () Bool)

(assert (=> b!2029967 (= e!1282224 (contains!4097 (t!190125 rules!3198) (rule!6220 (_1!11913 (get!7053 lt!762534)))))))

(declare-fun b!2029968 () Bool)

(declare-fun e!1282222 () Option!4665)

(declare-fun call!124581 () Option!4665)

(assert (=> b!2029968 (= e!1282222 call!124581)))

(declare-fun d!620957 () Bool)

(declare-fun e!1282223 () Bool)

(assert (=> d!620957 e!1282223))

(declare-fun res!890198 () Bool)

(assert (=> d!620957 (=> res!890198 e!1282223)))

(assert (=> d!620957 (= res!890198 (isEmpty!13861 lt!762534))))

(assert (=> d!620957 (= lt!762534 e!1282222)))

(declare-fun c!328574 () Bool)

(assert (=> d!620957 (= c!328574 (and (is-Cons!22208 (t!190125 rules!3198)) (is-Nil!22208 (t!190125 (t!190125 rules!3198)))))))

(declare-fun lt!762538 () Unit!36865)

(declare-fun lt!762537 () Unit!36865)

(assert (=> d!620957 (= lt!762538 lt!762537)))

(assert (=> d!620957 (isPrefix!1984 lt!761719 lt!761719)))

(assert (=> d!620957 (= lt!762537 (lemmaIsPrefixRefl!1302 lt!761719 lt!761719))))

(assert (=> d!620957 (rulesValidInductive!1383 thiss!23328 (t!190125 rules!3198))))

(assert (=> d!620957 (= (maxPrefix!2040 thiss!23328 (t!190125 rules!3198) lt!761719) lt!762534)))

(declare-fun b!2029969 () Bool)

(declare-fun res!890200 () Bool)

(assert (=> b!2029969 (=> (not res!890200) (not e!1282224))))

(assert (=> b!2029969 (= res!890200 (matchR!2682 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762534)))) (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762534))))))))

(declare-fun b!2029970 () Bool)

(declare-fun res!890202 () Bool)

(assert (=> b!2029970 (=> (not res!890202) (not e!1282224))))

(assert (=> b!2029970 (= res!890202 (= (++!6004 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762534)))) (_2!11913 (get!7053 lt!762534))) lt!761719))))

(declare-fun b!2029971 () Bool)

(declare-fun lt!762535 () Option!4665)

(declare-fun lt!762536 () Option!4665)

(assert (=> b!2029971 (= e!1282222 (ite (and (is-None!4664 lt!762535) (is-None!4664 lt!762536)) None!4664 (ite (is-None!4664 lt!762536) lt!762535 (ite (is-None!4664 lt!762535) lt!762536 (ite (>= (size!17347 (_1!11913 (v!26989 lt!762535))) (size!17347 (_1!11913 (v!26989 lt!762536)))) lt!762535 lt!762536)))))))

(assert (=> b!2029971 (= lt!762535 call!124581)))

(assert (=> b!2029971 (= lt!762536 (maxPrefix!2040 thiss!23328 (t!190125 (t!190125 rules!3198)) lt!761719))))

(declare-fun b!2029972 () Bool)

(declare-fun res!890204 () Bool)

(assert (=> b!2029972 (=> (not res!890204) (not e!1282224))))

(assert (=> b!2029972 (= res!890204 (= (value!125336 (_1!11913 (get!7053 lt!762534))) (apply!5846 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762534)))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!762534)))))))))

(declare-fun b!2029973 () Bool)

(assert (=> b!2029973 (= e!1282223 e!1282224)))

(declare-fun res!890199 () Bool)

(assert (=> b!2029973 (=> (not res!890199) (not e!1282224))))

(assert (=> b!2029973 (= res!890199 (isDefined!3954 lt!762534))))

(declare-fun bm!124576 () Bool)

(assert (=> bm!124576 (= call!124581 (maxPrefixOneRule!1266 thiss!23328 (h!27609 (t!190125 rules!3198)) lt!761719))))

(assert (= (and d!620957 c!328574) b!2029968))

(assert (= (and d!620957 (not c!328574)) b!2029971))

(assert (= (or b!2029968 b!2029971) bm!124576))

(assert (= (and d!620957 (not res!890198)) b!2029973))

(assert (= (and b!2029973 res!890199) b!2029966))

(assert (= (and b!2029966 res!890203) b!2029965))

(assert (= (and b!2029965 res!890201) b!2029970))

(assert (= (and b!2029970 res!890202) b!2029972))

(assert (= (and b!2029972 res!890204) b!2029969))

(assert (= (and b!2029969 res!890200) b!2029967))

(declare-fun m!2469987 () Bool)

(assert (=> b!2029965 m!2469987))

(declare-fun m!2469989 () Bool)

(assert (=> b!2029965 m!2469989))

(assert (=> b!2029965 m!2468135))

(assert (=> b!2029970 m!2469987))

(declare-fun m!2469991 () Bool)

(assert (=> b!2029970 m!2469991))

(assert (=> b!2029970 m!2469991))

(declare-fun m!2469993 () Bool)

(assert (=> b!2029970 m!2469993))

(assert (=> b!2029970 m!2469993))

(declare-fun m!2469995 () Bool)

(assert (=> b!2029970 m!2469995))

(declare-fun m!2469997 () Bool)

(assert (=> bm!124576 m!2469997))

(declare-fun m!2469999 () Bool)

(assert (=> b!2029973 m!2469999))

(assert (=> b!2029972 m!2469987))

(declare-fun m!2470001 () Bool)

(assert (=> b!2029972 m!2470001))

(assert (=> b!2029972 m!2470001))

(declare-fun m!2470003 () Bool)

(assert (=> b!2029972 m!2470003))

(declare-fun m!2470005 () Bool)

(assert (=> b!2029971 m!2470005))

(assert (=> b!2029967 m!2469987))

(declare-fun m!2470007 () Bool)

(assert (=> b!2029967 m!2470007))

(declare-fun m!2470009 () Bool)

(assert (=> d!620957 m!2470009))

(assert (=> d!620957 m!2468157))

(assert (=> d!620957 m!2468159))

(assert (=> d!620957 m!2469185))

(assert (=> b!2029969 m!2469987))

(assert (=> b!2029969 m!2469991))

(assert (=> b!2029969 m!2469991))

(assert (=> b!2029969 m!2469993))

(assert (=> b!2029969 m!2469993))

(declare-fun m!2470011 () Bool)

(assert (=> b!2029969 m!2470011))

(assert (=> b!2029966 m!2469987))

(assert (=> b!2029966 m!2469991))

(assert (=> b!2029966 m!2469991))

(assert (=> b!2029966 m!2469993))

(assert (=> b!2028849 d!620957))

(assert (=> b!2028816 d!620861))

(declare-fun b!2029974 () Bool)

(declare-fun res!890208 () Bool)

(declare-fun e!1282227 () Bool)

(assert (=> b!2029974 (=> (not res!890208) (not e!1282227))))

(declare-fun lt!762539 () Option!4665)

(assert (=> b!2029974 (= res!890208 (< (size!17349 (_2!11913 (get!7053 lt!762539))) (size!17349 (++!6004 lt!761718 lt!761704))))))

(declare-fun b!2029975 () Bool)

(declare-fun res!890210 () Bool)

(assert (=> b!2029975 (=> (not res!890210) (not e!1282227))))

(assert (=> b!2029975 (= res!890210 (= (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762539)))) (originalCharacters!4798 (_1!11913 (get!7053 lt!762539)))))))

(declare-fun b!2029976 () Bool)

(assert (=> b!2029976 (= e!1282227 (contains!4097 (t!190125 rules!3198) (rule!6220 (_1!11913 (get!7053 lt!762539)))))))

(declare-fun b!2029977 () Bool)

(declare-fun e!1282225 () Option!4665)

(declare-fun call!124582 () Option!4665)

(assert (=> b!2029977 (= e!1282225 call!124582)))

(declare-fun d!620959 () Bool)

(declare-fun e!1282226 () Bool)

(assert (=> d!620959 e!1282226))

(declare-fun res!890205 () Bool)

(assert (=> d!620959 (=> res!890205 e!1282226)))

(assert (=> d!620959 (= res!890205 (isEmpty!13861 lt!762539))))

(assert (=> d!620959 (= lt!762539 e!1282225)))

(declare-fun c!328575 () Bool)

(assert (=> d!620959 (= c!328575 (and (is-Cons!22208 (t!190125 rules!3198)) (is-Nil!22208 (t!190125 (t!190125 rules!3198)))))))

(declare-fun lt!762543 () Unit!36865)

(declare-fun lt!762542 () Unit!36865)

(assert (=> d!620959 (= lt!762543 lt!762542)))

(assert (=> d!620959 (isPrefix!1984 (++!6004 lt!761718 lt!761704) (++!6004 lt!761718 lt!761704))))

(assert (=> d!620959 (= lt!762542 (lemmaIsPrefixRefl!1302 (++!6004 lt!761718 lt!761704) (++!6004 lt!761718 lt!761704)))))

(assert (=> d!620959 (rulesValidInductive!1383 thiss!23328 (t!190125 rules!3198))))

(assert (=> d!620959 (= (maxPrefix!2040 thiss!23328 (t!190125 rules!3198) (++!6004 lt!761718 lt!761704)) lt!762539)))

(declare-fun b!2029978 () Bool)

(declare-fun res!890207 () Bool)

(assert (=> b!2029978 (=> (not res!890207) (not e!1282227))))

(assert (=> b!2029978 (= res!890207 (matchR!2682 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762539)))) (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762539))))))))

(declare-fun b!2029979 () Bool)

(declare-fun res!890209 () Bool)

(assert (=> b!2029979 (=> (not res!890209) (not e!1282227))))

(assert (=> b!2029979 (= res!890209 (= (++!6004 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762539)))) (_2!11913 (get!7053 lt!762539))) (++!6004 lt!761718 lt!761704)))))

(declare-fun b!2029980 () Bool)

(declare-fun lt!762540 () Option!4665)

(declare-fun lt!762541 () Option!4665)

(assert (=> b!2029980 (= e!1282225 (ite (and (is-None!4664 lt!762540) (is-None!4664 lt!762541)) None!4664 (ite (is-None!4664 lt!762541) lt!762540 (ite (is-None!4664 lt!762540) lt!762541 (ite (>= (size!17347 (_1!11913 (v!26989 lt!762540))) (size!17347 (_1!11913 (v!26989 lt!762541)))) lt!762540 lt!762541)))))))

(assert (=> b!2029980 (= lt!762540 call!124582)))

(assert (=> b!2029980 (= lt!762541 (maxPrefix!2040 thiss!23328 (t!190125 (t!190125 rules!3198)) (++!6004 lt!761718 lt!761704)))))

(declare-fun b!2029981 () Bool)

(declare-fun res!890211 () Bool)

(assert (=> b!2029981 (=> (not res!890211) (not e!1282227))))

(assert (=> b!2029981 (= res!890211 (= (value!125336 (_1!11913 (get!7053 lt!762539))) (apply!5846 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762539)))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!762539)))))))))

(declare-fun b!2029982 () Bool)

(assert (=> b!2029982 (= e!1282226 e!1282227)))

(declare-fun res!890206 () Bool)

(assert (=> b!2029982 (=> (not res!890206) (not e!1282227))))

(assert (=> b!2029982 (= res!890206 (isDefined!3954 lt!762539))))

(declare-fun bm!124577 () Bool)

(assert (=> bm!124577 (= call!124582 (maxPrefixOneRule!1266 thiss!23328 (h!27609 (t!190125 rules!3198)) (++!6004 lt!761718 lt!761704)))))

(assert (= (and d!620959 c!328575) b!2029977))

(assert (= (and d!620959 (not c!328575)) b!2029980))

(assert (= (or b!2029977 b!2029980) bm!124577))

(assert (= (and d!620959 (not res!890205)) b!2029982))

(assert (= (and b!2029982 res!890206) b!2029975))

(assert (= (and b!2029975 res!890210) b!2029974))

(assert (= (and b!2029974 res!890208) b!2029979))

(assert (= (and b!2029979 res!890209) b!2029981))

(assert (= (and b!2029981 res!890211) b!2029978))

(assert (= (and b!2029978 res!890207) b!2029976))

(declare-fun m!2470013 () Bool)

(assert (=> b!2029974 m!2470013))

(declare-fun m!2470015 () Bool)

(assert (=> b!2029974 m!2470015))

(assert (=> b!2029974 m!2467179))

(assert (=> b!2029974 m!2467639))

(assert (=> b!2029979 m!2470013))

(declare-fun m!2470017 () Bool)

(assert (=> b!2029979 m!2470017))

(assert (=> b!2029979 m!2470017))

(declare-fun m!2470019 () Bool)

(assert (=> b!2029979 m!2470019))

(assert (=> b!2029979 m!2470019))

(declare-fun m!2470021 () Bool)

(assert (=> b!2029979 m!2470021))

(assert (=> bm!124577 m!2467179))

(declare-fun m!2470023 () Bool)

(assert (=> bm!124577 m!2470023))

(declare-fun m!2470025 () Bool)

(assert (=> b!2029982 m!2470025))

(assert (=> b!2029981 m!2470013))

(declare-fun m!2470027 () Bool)

(assert (=> b!2029981 m!2470027))

(assert (=> b!2029981 m!2470027))

(declare-fun m!2470029 () Bool)

(assert (=> b!2029981 m!2470029))

(assert (=> b!2029980 m!2467179))

(declare-fun m!2470031 () Bool)

(assert (=> b!2029980 m!2470031))

(assert (=> b!2029976 m!2470013))

(declare-fun m!2470033 () Bool)

(assert (=> b!2029976 m!2470033))

(declare-fun m!2470035 () Bool)

(assert (=> d!620959 m!2470035))

(assert (=> d!620959 m!2467179))

(assert (=> d!620959 m!2467179))

(assert (=> d!620959 m!2467663))

(assert (=> d!620959 m!2467179))

(assert (=> d!620959 m!2467179))

(assert (=> d!620959 m!2467665))

(assert (=> d!620959 m!2469185))

(assert (=> b!2029978 m!2470013))

(assert (=> b!2029978 m!2470017))

(assert (=> b!2029978 m!2470017))

(assert (=> b!2029978 m!2470019))

(assert (=> b!2029978 m!2470019))

(declare-fun m!2470037 () Bool)

(assert (=> b!2029978 m!2470037))

(assert (=> b!2029975 m!2470013))

(assert (=> b!2029975 m!2470017))

(assert (=> b!2029975 m!2470017))

(assert (=> b!2029975 m!2470019))

(assert (=> b!2028480 d!620959))

(assert (=> b!2028672 d!620765))

(assert (=> b!2028672 d!620607))

(declare-fun d!620961 () Bool)

(assert (=> d!620961 (= (isEmpty!13861 lt!762084) (not (is-Some!4664 lt!762084)))))

(assert (=> d!620469 d!620961))

(declare-fun d!620963 () Bool)

(declare-fun e!1282230 () Bool)

(assert (=> d!620963 e!1282230))

(declare-fun res!890212 () Bool)

(assert (=> d!620963 (=> res!890212 e!1282230)))

(declare-fun lt!762544 () Bool)

(assert (=> d!620963 (= res!890212 (not lt!762544))))

(declare-fun e!1282229 () Bool)

(assert (=> d!620963 (= lt!762544 e!1282229)))

(declare-fun res!890213 () Bool)

(assert (=> d!620963 (=> res!890213 e!1282229)))

(assert (=> d!620963 (= res!890213 (is-Nil!22207 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(assert (=> d!620963 (= (isPrefix!1984 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354)) lt!762544)))

(declare-fun b!2029986 () Bool)

(assert (=> b!2029986 (= e!1282230 (>= (size!17349 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354)) (size!17349 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))

(declare-fun b!2029983 () Bool)

(declare-fun e!1282228 () Bool)

(assert (=> b!2029983 (= e!1282229 e!1282228)))

(declare-fun res!890215 () Bool)

(assert (=> b!2029983 (=> (not res!890215) (not e!1282228))))

(assert (=> b!2029983 (= res!890215 (not (is-Nil!22207 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))

(declare-fun b!2029985 () Bool)

(assert (=> b!2029985 (= e!1282228 (isPrefix!1984 (tail!3060 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354)) (tail!3060 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))

(declare-fun b!2029984 () Bool)

(declare-fun res!890214 () Bool)

(assert (=> b!2029984 (=> (not res!890214) (not e!1282228))))

(assert (=> b!2029984 (= res!890214 (= (head!4584 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354)) (head!4584 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))

(assert (= (and d!620963 (not res!890213)) b!2029983))

(assert (= (and b!2029983 res!890215) b!2029984))

(assert (= (and b!2029984 res!890214) b!2029985))

(assert (= (and d!620963 (not res!890212)) b!2029986))

(assert (=> b!2029986 m!2467209))

(assert (=> b!2029986 m!2468353))

(assert (=> b!2029986 m!2467209))

(assert (=> b!2029986 m!2468353))

(assert (=> b!2029985 m!2467209))

(declare-fun m!2470039 () Bool)

(assert (=> b!2029985 m!2470039))

(assert (=> b!2029985 m!2467209))

(assert (=> b!2029985 m!2470039))

(assert (=> b!2029985 m!2470039))

(assert (=> b!2029985 m!2470039))

(declare-fun m!2470041 () Bool)

(assert (=> b!2029985 m!2470041))

(assert (=> b!2029984 m!2467209))

(declare-fun m!2470043 () Bool)

(assert (=> b!2029984 m!2470043))

(assert (=> b!2029984 m!2467209))

(assert (=> b!2029984 m!2470043))

(assert (=> d!620469 d!620963))

(declare-fun d!620965 () Bool)

(assert (=> d!620965 (isPrefix!1984 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354))))

(declare-fun lt!762545 () Unit!36865)

(assert (=> d!620965 (= lt!762545 (choose!12376 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(assert (=> d!620965 (= (lemmaIsPrefixRefl!1302 (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!633 thiss!23328 rules!3198 tokens!598 separatorToken!354)) lt!762545)))

(declare-fun bs!420889 () Bool)

(assert (= bs!420889 d!620965))

(assert (=> bs!420889 m!2467209))

(assert (=> bs!420889 m!2467209))

(assert (=> bs!420889 m!2468375))

(assert (=> bs!420889 m!2467209))

(assert (=> bs!420889 m!2467209))

(declare-fun m!2470045 () Bool)

(assert (=> bs!420889 m!2470045))

(assert (=> d!620469 d!620965))

(assert (=> d!620469 d!620705))

(declare-fun bs!420890 () Bool)

(declare-fun d!620967 () Bool)

(assert (= bs!420890 (and d!620967 d!620213)))

(declare-fun lambda!76524 () Int)

(assert (=> bs!420890 (= (= (toValue!5664 (transformation!3991 (h!27609 rules!3198))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) (= lambda!76524 lambda!76486))))

(declare-fun bs!420891 () Bool)

(assert (= bs!420891 (and d!620967 d!620535)))

(assert (=> bs!420891 (= (= (toValue!5664 (transformation!3991 (h!27609 rules!3198))) (toValue!5664 (transformation!3991 (rule!6220 separatorToken!354)))) (= lambda!76524 lambda!76512))))

(assert (=> d!620967 true))

(assert (=> d!620967 (< (dynLambda!11037 order!14217 (toValue!5664 (transformation!3991 (h!27609 rules!3198)))) (dynLambda!11038 order!14219 lambda!76524))))

(assert (=> d!620967 (= (equivClasses!1535 (toChars!5523 (transformation!3991 (h!27609 rules!3198))) (toValue!5664 (transformation!3991 (h!27609 rules!3198)))) (Forall2!644 lambda!76524))))

(declare-fun bs!420892 () Bool)

(assert (= bs!420892 d!620967))

(declare-fun m!2470047 () Bool)

(assert (=> bs!420892 m!2470047))

(assert (=> b!2028939 d!620967))

(declare-fun d!620969 () Bool)

(assert (=> d!620969 (= (inv!29386 (tag!4477 (h!27609 (t!190125 rules!3198)))) (= (mod (str.len (value!125335 (tag!4477 (h!27609 (t!190125 rules!3198))))) 2) 0))))

(assert (=> b!2029069 d!620969))

(declare-fun d!620971 () Bool)

(declare-fun res!890216 () Bool)

(declare-fun e!1282231 () Bool)

(assert (=> d!620971 (=> (not res!890216) (not e!1282231))))

(assert (=> d!620971 (= res!890216 (semiInverseModEq!1608 (toChars!5523 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toValue!5664 (transformation!3991 (h!27609 (t!190125 rules!3198))))))))

(assert (=> d!620971 (= (inv!29389 (transformation!3991 (h!27609 (t!190125 rules!3198)))) e!1282231)))

(declare-fun b!2029987 () Bool)

(assert (=> b!2029987 (= e!1282231 (equivClasses!1535 (toChars!5523 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toValue!5664 (transformation!3991 (h!27609 (t!190125 rules!3198))))))))

(assert (= (and d!620971 res!890216) b!2029987))

(declare-fun m!2470049 () Bool)

(assert (=> d!620971 m!2470049))

(declare-fun m!2470051 () Bool)

(assert (=> b!2029987 m!2470051))

(assert (=> b!2029069 d!620971))

(declare-fun d!620973 () Bool)

(declare-fun e!1282237 () Bool)

(assert (=> d!620973 e!1282237))

(declare-fun c!328576 () Bool)

(assert (=> d!620973 (= c!328576 (is-EmptyExpr!5416 (regex!3991 (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 (h!27610 tokens!598))))))))))

(declare-fun lt!762546 () Bool)

(declare-fun e!1282235 () Bool)

(assert (=> d!620973 (= lt!762546 e!1282235)))

(declare-fun c!328577 () Bool)

(assert (=> d!620973 (= c!328577 (isEmpty!13854 (list!9066 (charsOf!2531 (h!27610 tokens!598)))))))

(assert (=> d!620973 (validRegex!2179 (regex!3991 (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 (h!27610 tokens!598)))))))))

(assert (=> d!620973 (= (matchR!2682 (regex!3991 (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 (h!27610 tokens!598)))))) (list!9066 (charsOf!2531 (h!27610 tokens!598)))) lt!762546)))

(declare-fun b!2029988 () Bool)

(assert (=> b!2029988 (= e!1282235 (matchR!2682 (derivativeStep!1412 (regex!3991 (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 (h!27610 tokens!598)))))) (head!4584 (list!9066 (charsOf!2531 (h!27610 tokens!598))))) (tail!3060 (list!9066 (charsOf!2531 (h!27610 tokens!598))))))))

(declare-fun b!2029989 () Bool)

(declare-fun e!1282236 () Bool)

(assert (=> b!2029989 (= e!1282236 (not lt!762546))))

(declare-fun b!2029990 () Bool)

(declare-fun res!890222 () Bool)

(declare-fun e!1282234 () Bool)

(assert (=> b!2029990 (=> res!890222 e!1282234)))

(assert (=> b!2029990 (= res!890222 (not (isEmpty!13854 (tail!3060 (list!9066 (charsOf!2531 (h!27610 tokens!598)))))))))

(declare-fun b!2029991 () Bool)

(assert (=> b!2029991 (= e!1282234 (not (= (head!4584 (list!9066 (charsOf!2531 (h!27610 tokens!598)))) (c!328192 (regex!3991 (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 (h!27610 tokens!598))))))))))))

(declare-fun b!2029992 () Bool)

(declare-fun e!1282238 () Bool)

(assert (=> b!2029992 (= e!1282238 e!1282234)))

(declare-fun res!890218 () Bool)

(assert (=> b!2029992 (=> res!890218 e!1282234)))

(declare-fun call!124583 () Bool)

(assert (=> b!2029992 (= res!890218 call!124583)))

(declare-fun b!2029993 () Bool)

(declare-fun res!890224 () Bool)

(declare-fun e!1282232 () Bool)

(assert (=> b!2029993 (=> (not res!890224) (not e!1282232))))

(assert (=> b!2029993 (= res!890224 (isEmpty!13854 (tail!3060 (list!9066 (charsOf!2531 (h!27610 tokens!598))))))))

(declare-fun b!2029994 () Bool)

(declare-fun res!890220 () Bool)

(declare-fun e!1282233 () Bool)

(assert (=> b!2029994 (=> res!890220 e!1282233)))

(assert (=> b!2029994 (= res!890220 e!1282232)))

(declare-fun res!890223 () Bool)

(assert (=> b!2029994 (=> (not res!890223) (not e!1282232))))

(assert (=> b!2029994 (= res!890223 lt!762546)))

(declare-fun b!2029995 () Bool)

(declare-fun res!890219 () Bool)

(assert (=> b!2029995 (=> (not res!890219) (not e!1282232))))

(assert (=> b!2029995 (= res!890219 (not call!124583))))

(declare-fun b!2029996 () Bool)

(assert (=> b!2029996 (= e!1282233 e!1282238)))

(declare-fun res!890217 () Bool)

(assert (=> b!2029996 (=> (not res!890217) (not e!1282238))))

(assert (=> b!2029996 (= res!890217 (not lt!762546))))

(declare-fun b!2029997 () Bool)

(assert (=> b!2029997 (= e!1282232 (= (head!4584 (list!9066 (charsOf!2531 (h!27610 tokens!598)))) (c!328192 (regex!3991 (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 (h!27610 tokens!598)))))))))))

(declare-fun b!2029998 () Bool)

(assert (=> b!2029998 (= e!1282235 (nullable!1653 (regex!3991 (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 (h!27610 tokens!598))))))))))

(declare-fun b!2029999 () Bool)

(assert (=> b!2029999 (= e!1282237 e!1282236)))

(declare-fun c!328578 () Bool)

(assert (=> b!2029999 (= c!328578 (is-EmptyLang!5416 (regex!3991 (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 (h!27610 tokens!598))))))))))

(declare-fun bm!124578 () Bool)

(assert (=> bm!124578 (= call!124583 (isEmpty!13854 (list!9066 (charsOf!2531 (h!27610 tokens!598)))))))

(declare-fun b!2030000 () Bool)

(declare-fun res!890221 () Bool)

(assert (=> b!2030000 (=> res!890221 e!1282233)))

(assert (=> b!2030000 (= res!890221 (not (is-ElementMatch!5416 (regex!3991 (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 (h!27610 tokens!598)))))))))))

(assert (=> b!2030000 (= e!1282236 e!1282233)))

(declare-fun b!2030001 () Bool)

(assert (=> b!2030001 (= e!1282237 (= lt!762546 call!124583))))

(assert (= (and d!620973 c!328577) b!2029998))

(assert (= (and d!620973 (not c!328577)) b!2029988))

(assert (= (and d!620973 c!328576) b!2030001))

(assert (= (and d!620973 (not c!328576)) b!2029999))

(assert (= (and b!2029999 c!328578) b!2029989))

(assert (= (and b!2029999 (not c!328578)) b!2030000))

(assert (= (and b!2030000 (not res!890221)) b!2029994))

(assert (= (and b!2029994 res!890223) b!2029995))

(assert (= (and b!2029995 res!890219) b!2029993))

(assert (= (and b!2029993 res!890224) b!2029997))

(assert (= (and b!2029994 (not res!890220)) b!2029996))

(assert (= (and b!2029996 res!890217) b!2029992))

(assert (= (and b!2029992 (not res!890218)) b!2029990))

(assert (= (and b!2029990 (not res!890222)) b!2029991))

(assert (= (or b!2030001 b!2029992 b!2029995) bm!124578))

(assert (=> b!2029993 m!2467471))

(declare-fun m!2470053 () Bool)

(assert (=> b!2029993 m!2470053))

(assert (=> b!2029993 m!2470053))

(declare-fun m!2470055 () Bool)

(assert (=> b!2029993 m!2470055))

(declare-fun m!2470057 () Bool)

(assert (=> b!2029998 m!2470057))

(assert (=> b!2029991 m!2467471))

(declare-fun m!2470059 () Bool)

(assert (=> b!2029991 m!2470059))

(assert (=> b!2029988 m!2467471))

(assert (=> b!2029988 m!2470059))

(assert (=> b!2029988 m!2470059))

(declare-fun m!2470061 () Bool)

(assert (=> b!2029988 m!2470061))

(assert (=> b!2029988 m!2467471))

(assert (=> b!2029988 m!2470053))

(assert (=> b!2029988 m!2470061))

(assert (=> b!2029988 m!2470053))

(declare-fun m!2470063 () Bool)

(assert (=> b!2029988 m!2470063))

(assert (=> b!2029997 m!2467471))

(assert (=> b!2029997 m!2470059))

(assert (=> d!620973 m!2467471))

(declare-fun m!2470065 () Bool)

(assert (=> d!620973 m!2470065))

(declare-fun m!2470067 () Bool)

(assert (=> d!620973 m!2470067))

(assert (=> b!2029990 m!2467471))

(assert (=> b!2029990 m!2470053))

(assert (=> b!2029990 m!2470053))

(assert (=> b!2029990 m!2470055))

(assert (=> bm!124578 m!2467471))

(assert (=> bm!124578 m!2470065))

(assert (=> b!2028305 d!620973))

(assert (=> b!2028305 d!620707))

(assert (=> b!2028305 d!620299))

(assert (=> b!2028305 d!620669))

(assert (=> b!2028305 d!620297))

(declare-fun d!620975 () Bool)

(declare-fun lt!762547 () Token!7534)

(assert (=> d!620975 (= lt!762547 (apply!5850 (list!9070 (_1!11914 lt!762061)) 0))))

(assert (=> d!620975 (= lt!762547 (apply!5852 (c!328193 (_1!11914 lt!762061)) 0))))

(declare-fun e!1282239 () Bool)

(assert (=> d!620975 e!1282239))

(declare-fun res!890225 () Bool)

(assert (=> d!620975 (=> (not res!890225) (not e!1282239))))

(assert (=> d!620975 (= res!890225 (<= 0 0))))

(assert (=> d!620975 (= (apply!5848 (_1!11914 lt!762061) 0) lt!762547)))

(declare-fun b!2030002 () Bool)

(assert (=> b!2030002 (= e!1282239 (< 0 (size!17351 (_1!11914 lt!762061))))))

(assert (= (and d!620975 res!890225) b!2030002))

(declare-fun m!2470069 () Bool)

(assert (=> d!620975 m!2470069))

(assert (=> d!620975 m!2470069))

(declare-fun m!2470071 () Bool)

(assert (=> d!620975 m!2470071))

(declare-fun m!2470073 () Bool)

(assert (=> d!620975 m!2470073))

(assert (=> b!2030002 m!2468247))

(assert (=> b!2028905 d!620975))

(declare-fun d!620977 () Bool)

(assert (=> d!620977 (= (isDefined!3954 lt!761878) (not (isEmpty!13861 lt!761878)))))

(declare-fun bs!420893 () Bool)

(assert (= bs!420893 d!620977))

(assert (=> bs!420893 m!2467617))

(assert (=> b!2028461 d!620977))

(declare-fun lt!762548 () BalanceConc!14672)

(declare-fun d!620979 () Bool)

(assert (=> d!620979 (= (list!9066 lt!762548) (originalCharacters!4798 (ite c!328261 (h!27610 (t!190126 tokens!598)) (ite c!328264 separatorToken!354 (h!27610 (t!190126 tokens!598))))))))

(assert (=> d!620979 (= lt!762548 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (ite c!328261 (h!27610 (t!190126 tokens!598)) (ite c!328264 separatorToken!354 (h!27610 (t!190126 tokens!598))))))) (value!125336 (ite c!328261 (h!27610 (t!190126 tokens!598)) (ite c!328264 separatorToken!354 (h!27610 (t!190126 tokens!598)))))))))

(assert (=> d!620979 (= (charsOf!2531 (ite c!328261 (h!27610 (t!190126 tokens!598)) (ite c!328264 separatorToken!354 (h!27610 (t!190126 tokens!598))))) lt!762548)))

(declare-fun b_lambda!68349 () Bool)

(assert (=> (not b_lambda!68349) (not d!620979)))

(declare-fun t!190369 () Bool)

(declare-fun tb!128061 () Bool)

(assert (=> (and b!2029045 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toChars!5523 (transformation!3991 (rule!6220 (ite c!328261 (h!27610 (t!190126 tokens!598)) (ite c!328264 separatorToken!354 (h!27610 (t!190126 tokens!598)))))))) t!190369) tb!128061))

(declare-fun tp!603344 () Bool)

(declare-fun b!2030003 () Bool)

(declare-fun e!1282240 () Bool)

(assert (=> b!2030003 (= e!1282240 (and (inv!29393 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (ite c!328261 (h!27610 (t!190126 tokens!598)) (ite c!328264 separatorToken!354 (h!27610 (t!190126 tokens!598))))))) (value!125336 (ite c!328261 (h!27610 (t!190126 tokens!598)) (ite c!328264 separatorToken!354 (h!27610 (t!190126 tokens!598)))))))) tp!603344))))

(declare-fun result!153224 () Bool)

(assert (=> tb!128061 (= result!153224 (and (inv!29394 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (ite c!328261 (h!27610 (t!190126 tokens!598)) (ite c!328264 separatorToken!354 (h!27610 (t!190126 tokens!598))))))) (value!125336 (ite c!328261 (h!27610 (t!190126 tokens!598)) (ite c!328264 separatorToken!354 (h!27610 (t!190126 tokens!598))))))) e!1282240))))

(assert (= tb!128061 b!2030003))

(declare-fun m!2470075 () Bool)

(assert (=> b!2030003 m!2470075))

(declare-fun m!2470077 () Bool)

(assert (=> tb!128061 m!2470077))

(assert (=> d!620979 t!190369))

(declare-fun b_and!161653 () Bool)

(assert (= b_and!161619 (and (=> t!190369 result!153224) b_and!161653)))

(declare-fun tb!128063 () Bool)

(declare-fun t!190371 () Bool)

(assert (=> (and b!2028151 (= (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (toChars!5523 (transformation!3991 (rule!6220 (ite c!328261 (h!27610 (t!190126 tokens!598)) (ite c!328264 separatorToken!354 (h!27610 (t!190126 tokens!598)))))))) t!190371) tb!128063))

(declare-fun result!153226 () Bool)

(assert (= result!153226 result!153224))

(assert (=> d!620979 t!190371))

(declare-fun b_and!161655 () Bool)

(assert (= b_and!161621 (and (=> t!190371 result!153226) b_and!161655)))

(declare-fun t!190373 () Bool)

(declare-fun tb!128065 () Bool)

(assert (=> (and b!2028173 (= (toChars!5523 (transformation!3991 (h!27609 rules!3198))) (toChars!5523 (transformation!3991 (rule!6220 (ite c!328261 (h!27610 (t!190126 tokens!598)) (ite c!328264 separatorToken!354 (h!27610 (t!190126 tokens!598)))))))) t!190373) tb!128065))

(declare-fun result!153228 () Bool)

(assert (= result!153228 result!153224))

(assert (=> d!620979 t!190373))

(declare-fun b_and!161657 () Bool)

(assert (= b_and!161613 (and (=> t!190373 result!153228) b_and!161657)))

(declare-fun tb!128067 () Bool)

(declare-fun t!190375 () Bool)

(assert (=> (and b!2028164 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toChars!5523 (transformation!3991 (rule!6220 (ite c!328261 (h!27610 (t!190126 tokens!598)) (ite c!328264 separatorToken!354 (h!27610 (t!190126 tokens!598)))))))) t!190375) tb!128067))

(declare-fun result!153230 () Bool)

(assert (= result!153230 result!153224))

(assert (=> d!620979 t!190375))

(declare-fun b_and!161659 () Bool)

(assert (= b_and!161617 (and (=> t!190375 result!153230) b_and!161659)))

(declare-fun tb!128069 () Bool)

(declare-fun t!190377 () Bool)

(assert (=> (and b!2029070 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toChars!5523 (transformation!3991 (rule!6220 (ite c!328261 (h!27610 (t!190126 tokens!598)) (ite c!328264 separatorToken!354 (h!27610 (t!190126 tokens!598)))))))) t!190377) tb!128069))

(declare-fun result!153232 () Bool)

(assert (= result!153232 result!153224))

(assert (=> d!620979 t!190377))

(declare-fun b_and!161661 () Bool)

(assert (= b_and!161615 (and (=> t!190377 result!153232) b_and!161661)))

(declare-fun m!2470079 () Bool)

(assert (=> d!620979 m!2470079))

(declare-fun m!2470081 () Bool)

(assert (=> d!620979 m!2470081))

(assert (=> bm!124450 d!620979))

(assert (=> b!2029001 d!620613))

(declare-fun d!620981 () Bool)

(assert (=> d!620981 (= (apply!5846 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762084)))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!762084))))) (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762084))))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!762084))))))))

(declare-fun b_lambda!68351 () Bool)

(assert (=> (not b_lambda!68351) (not d!620981)))

(declare-fun t!190379 () Bool)

(declare-fun tb!128071 () Bool)

(assert (=> (and b!2029045 (= (toValue!5664 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762084)))))) t!190379) tb!128071))

(declare-fun result!153234 () Bool)

(assert (=> tb!128071 (= result!153234 (inv!21 (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762084))))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!762084)))))))))

(declare-fun m!2470083 () Bool)

(assert (=> tb!128071 m!2470083))

(assert (=> d!620981 t!190379))

(declare-fun b_and!161663 () Bool)

(assert (= b_and!161647 (and (=> t!190379 result!153234) b_and!161663)))

(declare-fun tb!128073 () Bool)

(declare-fun t!190381 () Bool)

(assert (=> (and b!2028164 (= (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762084)))))) t!190381) tb!128073))

(declare-fun result!153236 () Bool)

(assert (= result!153236 result!153234))

(assert (=> d!620981 t!190381))

(declare-fun b_and!161665 () Bool)

(assert (= b_and!161649 (and (=> t!190381 result!153236) b_and!161665)))

(declare-fun tb!128075 () Bool)

(declare-fun t!190383 () Bool)

(assert (=> (and b!2028173 (= (toValue!5664 (transformation!3991 (h!27609 rules!3198))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762084)))))) t!190383) tb!128075))

(declare-fun result!153238 () Bool)

(assert (= result!153238 result!153234))

(assert (=> d!620981 t!190383))

(declare-fun b_and!161667 () Bool)

(assert (= b_and!161645 (and (=> t!190383 result!153238) b_and!161667)))

(declare-fun t!190385 () Bool)

(declare-fun tb!128077 () Bool)

(assert (=> (and b!2029070 (= (toValue!5664 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762084)))))) t!190385) tb!128077))

(declare-fun result!153240 () Bool)

(assert (= result!153240 result!153234))

(assert (=> d!620981 t!190385))

(declare-fun b_and!161669 () Bool)

(assert (= b_and!161643 (and (=> t!190385 result!153240) b_and!161669)))

(declare-fun tb!128079 () Bool)

(declare-fun t!190387 () Bool)

(assert (=> (and b!2028151 (= (toValue!5664 (transformation!3991 (rule!6220 separatorToken!354))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762084)))))) t!190387) tb!128079))

(declare-fun result!153242 () Bool)

(assert (= result!153242 result!153234))

(assert (=> d!620981 t!190387))

(declare-fun b_and!161671 () Bool)

(assert (= b_and!161651 (and (=> t!190387 result!153242) b_and!161671)))

(assert (=> d!620981 m!2468365))

(declare-fun m!2470085 () Bool)

(assert (=> d!620981 m!2470085))

(assert (=> b!2029001 d!620981))

(declare-fun d!620983 () Bool)

(assert (=> d!620983 (= (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!762084)))) (fromListB!1281 (originalCharacters!4798 (_1!11913 (get!7053 lt!762084)))))))

(declare-fun bs!420894 () Bool)

(assert (= bs!420894 d!620983))

(declare-fun m!2470087 () Bool)

(assert (=> bs!420894 m!2470087))

(assert (=> b!2029001 d!620983))

(declare-fun d!620985 () Bool)

(declare-fun lt!762549 () Int)

(assert (=> d!620985 (= lt!762549 (size!17357 (list!9070 (_1!11914 lt!762061))))))

(assert (=> d!620985 (= lt!762549 (size!17356 (c!328193 (_1!11914 lt!762061))))))

(assert (=> d!620985 (= (size!17351 (_1!11914 lt!762061)) lt!762549)))

(declare-fun bs!420895 () Bool)

(assert (= bs!420895 d!620985))

(assert (=> bs!420895 m!2470069))

(assert (=> bs!420895 m!2470069))

(declare-fun m!2470089 () Bool)

(assert (=> bs!420895 m!2470089))

(declare-fun m!2470091 () Bool)

(assert (=> bs!420895 m!2470091))

(assert (=> d!620421 d!620985))

(assert (=> d!620421 d!620791))

(assert (=> d!620421 d!620379))

(declare-fun d!620987 () Bool)

(assert (=> d!620987 (= (list!9070 (_1!11914 (lex!1620 thiss!23328 rules!3198 (print!1566 thiss!23328 (singletonSeq!1967 (h!27610 tokens!598)))))) (list!9072 (c!328193 (_1!11914 (lex!1620 thiss!23328 rules!3198 (print!1566 thiss!23328 (singletonSeq!1967 (h!27610 tokens!598))))))))))

(declare-fun bs!420896 () Bool)

(assert (= bs!420896 d!620987))

(declare-fun m!2470093 () Bool)

(assert (=> bs!420896 m!2470093))

(assert (=> d!620421 d!620987))

(assert (=> d!620421 d!620793))

(assert (=> d!620421 d!620465))

(declare-fun d!620989 () Bool)

(assert (=> d!620989 (= (list!9070 (singletonSeq!1967 (h!27610 tokens!598))) (list!9072 (c!328193 (singletonSeq!1967 (h!27610 tokens!598)))))))

(declare-fun bs!420897 () Bool)

(assert (= bs!420897 d!620989))

(declare-fun m!2470095 () Bool)

(assert (=> bs!420897 m!2470095))

(assert (=> d!620421 d!620989))

(declare-fun d!620991 () Bool)

(declare-fun lt!762550 () Int)

(assert (=> d!620991 (>= lt!762550 0)))

(declare-fun e!1282242 () Int)

(assert (=> d!620991 (= lt!762550 e!1282242)))

(declare-fun c!328579 () Bool)

(assert (=> d!620991 (= c!328579 (is-Nil!22207 (_2!11913 (get!7053 lt!761878))))))

(assert (=> d!620991 (= (size!17349 (_2!11913 (get!7053 lt!761878))) lt!762550)))

(declare-fun b!2030004 () Bool)

(assert (=> b!2030004 (= e!1282242 0)))

(declare-fun b!2030005 () Bool)

(assert (=> b!2030005 (= e!1282242 (+ 1 (size!17349 (t!190124 (_2!11913 (get!7053 lt!761878))))))))

(assert (= (and d!620991 c!328579) b!2030004))

(assert (= (and d!620991 (not c!328579)) b!2030005))

(declare-fun m!2470097 () Bool)

(assert (=> b!2030005 m!2470097))

(assert (=> b!2028453 d!620991))

(assert (=> b!2028453 d!620643))

(assert (=> b!2028453 d!620871))

(declare-fun d!620993 () Bool)

(declare-fun lt!762551 () Bool)

(assert (=> d!620993 (= lt!762551 (set.member (get!7052 lt!761964) (content!3280 rules!3198)))))

(declare-fun e!1282243 () Bool)

(assert (=> d!620993 (= lt!762551 e!1282243)))

(declare-fun res!890226 () Bool)

(assert (=> d!620993 (=> (not res!890226) (not e!1282243))))

(assert (=> d!620993 (= res!890226 (is-Cons!22208 rules!3198))))

(assert (=> d!620993 (= (contains!4097 rules!3198 (get!7052 lt!761964)) lt!762551)))

(declare-fun b!2030006 () Bool)

(declare-fun e!1282244 () Bool)

(assert (=> b!2030006 (= e!1282243 e!1282244)))

(declare-fun res!890227 () Bool)

(assert (=> b!2030006 (=> res!890227 e!1282244)))

(assert (=> b!2030006 (= res!890227 (= (h!27609 rules!3198) (get!7052 lt!761964)))))

(declare-fun b!2030007 () Bool)

(assert (=> b!2030007 (= e!1282244 (contains!4097 (t!190125 rules!3198) (get!7052 lt!761964)))))

(assert (= (and d!620993 res!890226) b!2030006))

(assert (= (and b!2030006 (not res!890227)) b!2030007))

(assert (=> d!620993 m!2467943))

(assert (=> d!620993 m!2467847))

(declare-fun m!2470099 () Bool)

(assert (=> d!620993 m!2470099))

(assert (=> b!2030007 m!2467847))

(declare-fun m!2470101 () Bool)

(assert (=> b!2030007 m!2470101))

(assert (=> b!2028620 d!620993))

(declare-fun d!620995 () Bool)

(assert (=> d!620995 (= (get!7052 lt!761964) (v!26990 lt!761964))))

(assert (=> b!2028620 d!620995))

(declare-fun d!620997 () Bool)

(declare-fun lt!762552 () Bool)

(assert (=> d!620997 (= lt!762552 (set.member lt!761709 (content!3278 (t!190124 lt!761703))))))

(declare-fun e!1282245 () Bool)

(assert (=> d!620997 (= lt!762552 e!1282245)))

(declare-fun res!890228 () Bool)

(assert (=> d!620997 (=> (not res!890228) (not e!1282245))))

(assert (=> d!620997 (= res!890228 (is-Cons!22207 (t!190124 lt!761703)))))

(assert (=> d!620997 (= (contains!4098 (t!190124 lt!761703) lt!761709) lt!762552)))

(declare-fun b!2030008 () Bool)

(declare-fun e!1282246 () Bool)

(assert (=> b!2030008 (= e!1282245 e!1282246)))

(declare-fun res!890229 () Bool)

(assert (=> b!2030008 (=> res!890229 e!1282246)))

(assert (=> b!2030008 (= res!890229 (= (h!27608 (t!190124 lt!761703)) lt!761709))))

(declare-fun b!2030009 () Bool)

(assert (=> b!2030009 (= e!1282246 (contains!4098 (t!190124 (t!190124 lt!761703)) lt!761709))))

(assert (= (and d!620997 res!890228) b!2030008))

(assert (= (and b!2030008 (not res!890229)) b!2030009))

(assert (=> d!620997 m!2468675))

(declare-fun m!2470103 () Bool)

(assert (=> d!620997 m!2470103))

(declare-fun m!2470105 () Bool)

(assert (=> b!2030009 m!2470105))

(assert (=> b!2028781 d!620997))

(declare-fun bs!420898 () Bool)

(declare-fun d!620999 () Bool)

(assert (= bs!420898 (and d!620999 d!620213)))

(declare-fun lambda!76525 () Int)

(assert (=> bs!420898 (= lambda!76525 lambda!76486)))

(declare-fun bs!420899 () Bool)

(assert (= bs!420899 (and d!620999 d!620535)))

(assert (=> bs!420899 (= (= (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toValue!5664 (transformation!3991 (rule!6220 separatorToken!354)))) (= lambda!76525 lambda!76512))))

(declare-fun bs!420900 () Bool)

(assert (= bs!420900 (and d!620999 d!620967)))

(assert (=> bs!420900 (= (= (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toValue!5664 (transformation!3991 (h!27609 rules!3198)))) (= lambda!76525 lambda!76524))))

(assert (=> d!620999 true))

(assert (=> d!620999 (< (dynLambda!11037 order!14217 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) (dynLambda!11038 order!14219 lambda!76525))))

(assert (=> d!620999 (= (equivClasses!1535 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) (Forall2!644 lambda!76525))))

(declare-fun bs!420901 () Bool)

(assert (= bs!420901 d!620999))

(declare-fun m!2470107 () Bool)

(assert (=> bs!420901 m!2470107))

(assert (=> b!2028940 d!620999))

(declare-fun b!2030010 () Bool)

(declare-fun e!1282248 () List!22289)

(declare-fun call!124587 () List!22289)

(assert (=> b!2030010 (= e!1282248 call!124587)))

(declare-fun call!124586 () List!22289)

(declare-fun call!124585 () List!22289)

(declare-fun c!328580 () Bool)

(declare-fun call!124584 () List!22289)

(declare-fun bm!124579 () Bool)

(assert (=> bm!124579 (= call!124586 (++!6004 (ite c!328580 call!124585 call!124584) (ite c!328580 call!124584 call!124585)))))

(declare-fun bm!124580 () Bool)

(assert (=> bm!124580 (= call!124584 call!124587)))

(declare-fun b!2030011 () Bool)

(declare-fun e!1282250 () List!22289)

(assert (=> b!2030011 (= e!1282250 call!124586)))

(declare-fun d!621001 () Bool)

(declare-fun c!328581 () Bool)

(assert (=> d!621001 (= c!328581 (or (is-EmptyExpr!5416 (ite c!328320 (regOne!11345 (regex!3991 (rule!6220 separatorToken!354))) (regTwo!11344 (regex!3991 (rule!6220 separatorToken!354))))) (is-EmptyLang!5416 (ite c!328320 (regOne!11345 (regex!3991 (rule!6220 separatorToken!354))) (regTwo!11344 (regex!3991 (rule!6220 separatorToken!354)))))))))

(declare-fun e!1282249 () List!22289)

(assert (=> d!621001 (= (usedCharacters!429 (ite c!328320 (regOne!11345 (regex!3991 (rule!6220 separatorToken!354))) (regTwo!11344 (regex!3991 (rule!6220 separatorToken!354))))) e!1282249)))

(declare-fun b!2030012 () Bool)

(declare-fun c!328582 () Bool)

(assert (=> b!2030012 (= c!328582 (is-Star!5416 (ite c!328320 (regOne!11345 (regex!3991 (rule!6220 separatorToken!354))) (regTwo!11344 (regex!3991 (rule!6220 separatorToken!354))))))))

(declare-fun e!1282247 () List!22289)

(assert (=> b!2030012 (= e!1282247 e!1282248)))

(declare-fun b!2030013 () Bool)

(assert (=> b!2030013 (= e!1282250 call!124586)))

(declare-fun bm!124581 () Bool)

(assert (=> bm!124581 (= call!124587 (usedCharacters!429 (ite c!328582 (reg!5745 (ite c!328320 (regOne!11345 (regex!3991 (rule!6220 separatorToken!354))) (regTwo!11344 (regex!3991 (rule!6220 separatorToken!354))))) (ite c!328580 (regTwo!11345 (ite c!328320 (regOne!11345 (regex!3991 (rule!6220 separatorToken!354))) (regTwo!11344 (regex!3991 (rule!6220 separatorToken!354))))) (regOne!11344 (ite c!328320 (regOne!11345 (regex!3991 (rule!6220 separatorToken!354))) (regTwo!11344 (regex!3991 (rule!6220 separatorToken!354)))))))))))

(declare-fun b!2030014 () Bool)

(assert (=> b!2030014 (= e!1282248 e!1282250)))

(assert (=> b!2030014 (= c!328580 (is-Union!5416 (ite c!328320 (regOne!11345 (regex!3991 (rule!6220 separatorToken!354))) (regTwo!11344 (regex!3991 (rule!6220 separatorToken!354))))))))

(declare-fun b!2030015 () Bool)

(assert (=> b!2030015 (= e!1282249 Nil!22207)))

(declare-fun b!2030016 () Bool)

(assert (=> b!2030016 (= e!1282249 e!1282247)))

(declare-fun c!328583 () Bool)

(assert (=> b!2030016 (= c!328583 (is-ElementMatch!5416 (ite c!328320 (regOne!11345 (regex!3991 (rule!6220 separatorToken!354))) (regTwo!11344 (regex!3991 (rule!6220 separatorToken!354))))))))

(declare-fun b!2030017 () Bool)

(assert (=> b!2030017 (= e!1282247 (Cons!22207 (c!328192 (ite c!328320 (regOne!11345 (regex!3991 (rule!6220 separatorToken!354))) (regTwo!11344 (regex!3991 (rule!6220 separatorToken!354))))) Nil!22207))))

(declare-fun bm!124582 () Bool)

(assert (=> bm!124582 (= call!124585 (usedCharacters!429 (ite c!328580 (regOne!11345 (ite c!328320 (regOne!11345 (regex!3991 (rule!6220 separatorToken!354))) (regTwo!11344 (regex!3991 (rule!6220 separatorToken!354))))) (regTwo!11344 (ite c!328320 (regOne!11345 (regex!3991 (rule!6220 separatorToken!354))) (regTwo!11344 (regex!3991 (rule!6220 separatorToken!354))))))))))

(assert (= (and d!621001 c!328581) b!2030015))

(assert (= (and d!621001 (not c!328581)) b!2030016))

(assert (= (and b!2030016 c!328583) b!2030017))

(assert (= (and b!2030016 (not c!328583)) b!2030012))

(assert (= (and b!2030012 c!328582) b!2030010))

(assert (= (and b!2030012 (not c!328582)) b!2030014))

(assert (= (and b!2030014 c!328580) b!2030011))

(assert (= (and b!2030014 (not c!328580)) b!2030013))

(assert (= (or b!2030011 b!2030013) bm!124582))

(assert (= (or b!2030011 b!2030013) bm!124580))

(assert (= (or b!2030011 b!2030013) bm!124579))

(assert (= (or b!2030010 bm!124580) bm!124581))

(declare-fun m!2470109 () Bool)

(assert (=> bm!124579 m!2470109))

(declare-fun m!2470111 () Bool)

(assert (=> bm!124581 m!2470111))

(declare-fun m!2470113 () Bool)

(assert (=> bm!124582 m!2470113))

(assert (=> bm!124471 d!621001))

(declare-fun e!1282252 () List!22289)

(declare-fun b!2030018 () Bool)

(assert (=> b!2030018 (= e!1282252 (ite c!328346 lt!762092 call!124487))))

(declare-fun lt!762553 () List!22289)

(declare-fun e!1282251 () Bool)

(declare-fun b!2030021 () Bool)

(assert (=> b!2030021 (= e!1282251 (or (not (= (ite c!328346 lt!762092 call!124487) Nil!22207)) (= lt!762553 e!1281644)))))

(declare-fun d!621003 () Bool)

(assert (=> d!621003 e!1282251))

(declare-fun res!890231 () Bool)

(assert (=> d!621003 (=> (not res!890231) (not e!1282251))))

(assert (=> d!621003 (= res!890231 (= (content!3278 lt!762553) (set.union (content!3278 e!1281644) (content!3278 (ite c!328346 lt!762092 call!124487)))))))

(assert (=> d!621003 (= lt!762553 e!1282252)))

(declare-fun c!328584 () Bool)

(assert (=> d!621003 (= c!328584 (is-Nil!22207 e!1281644))))

(assert (=> d!621003 (= (++!6004 e!1281644 (ite c!328346 lt!762092 call!124487)) lt!762553)))

(declare-fun b!2030019 () Bool)

(assert (=> b!2030019 (= e!1282252 (Cons!22207 (h!27608 e!1281644) (++!6004 (t!190124 e!1281644) (ite c!328346 lt!762092 call!124487))))))

(declare-fun b!2030020 () Bool)

(declare-fun res!890230 () Bool)

(assert (=> b!2030020 (=> (not res!890230) (not e!1282251))))

(assert (=> b!2030020 (= res!890230 (= (size!17349 lt!762553) (+ (size!17349 e!1281644) (size!17349 (ite c!328346 lt!762092 call!124487)))))))

(assert (= (and d!621003 c!328584) b!2030018))

(assert (= (and d!621003 (not c!328584)) b!2030019))

(assert (= (and d!621003 res!890231) b!2030020))

(assert (= (and b!2030020 res!890230) b!2030021))

(declare-fun m!2470115 () Bool)

(assert (=> d!621003 m!2470115))

(declare-fun m!2470117 () Bool)

(assert (=> d!621003 m!2470117))

(declare-fun m!2470119 () Bool)

(assert (=> d!621003 m!2470119))

(declare-fun m!2470121 () Bool)

(assert (=> b!2030019 m!2470121))

(declare-fun m!2470123 () Bool)

(assert (=> b!2030020 m!2470123))

(declare-fun m!2470125 () Bool)

(assert (=> b!2030020 m!2470125))

(declare-fun m!2470127 () Bool)

(assert (=> b!2030020 m!2470127))

(assert (=> bm!124479 d!621003))

(declare-fun b!2030025 () Bool)

(declare-fun e!1282254 () List!22289)

(assert (=> b!2030025 (= e!1282254 (++!6004 (list!9068 (left!17670 (c!328191 (charsOf!2531 separatorToken!354)))) (list!9068 (right!18000 (c!328191 (charsOf!2531 separatorToken!354))))))))

(declare-fun b!2030022 () Bool)

(declare-fun e!1282253 () List!22289)

(assert (=> b!2030022 (= e!1282253 Nil!22207)))

(declare-fun d!621005 () Bool)

(declare-fun c!328585 () Bool)

(assert (=> d!621005 (= c!328585 (is-Empty!7428 (c!328191 (charsOf!2531 separatorToken!354))))))

(assert (=> d!621005 (= (list!9068 (c!328191 (charsOf!2531 separatorToken!354))) e!1282253)))

(declare-fun b!2030023 () Bool)

(assert (=> b!2030023 (= e!1282253 e!1282254)))

(declare-fun c!328586 () Bool)

(assert (=> b!2030023 (= c!328586 (is-Leaf!10887 (c!328191 (charsOf!2531 separatorToken!354))))))

(declare-fun b!2030024 () Bool)

(assert (=> b!2030024 (= e!1282254 (list!9073 (xs!10330 (c!328191 (charsOf!2531 separatorToken!354)))))))

(assert (= (and d!621005 c!328585) b!2030022))

(assert (= (and d!621005 (not c!328585)) b!2030023))

(assert (= (and b!2030023 c!328586) b!2030024))

(assert (= (and b!2030023 (not c!328586)) b!2030025))

(declare-fun m!2470129 () Bool)

(assert (=> b!2030025 m!2470129))

(declare-fun m!2470131 () Bool)

(assert (=> b!2030025 m!2470131))

(assert (=> b!2030025 m!2470129))

(assert (=> b!2030025 m!2470131))

(declare-fun m!2470133 () Bool)

(assert (=> b!2030025 m!2470133))

(declare-fun m!2470135 () Bool)

(assert (=> b!2030024 m!2470135))

(assert (=> d!620289 d!621005))

(declare-fun d!621007 () Bool)

(assert (=> d!621007 (= (list!9070 lt!762040) (list!9072 (c!328193 lt!762040)))))

(declare-fun bs!420902 () Bool)

(assert (= bs!420902 d!621007))

(declare-fun m!2470137 () Bool)

(assert (=> bs!420902 m!2470137))

(assert (=> d!620379 d!621007))

(declare-fun d!621009 () Bool)

(declare-fun e!1282257 () Bool)

(assert (=> d!621009 e!1282257))

(declare-fun res!890234 () Bool)

(assert (=> d!621009 (=> (not res!890234) (not e!1282257))))

(declare-fun lt!762556 () BalanceConc!14674)

(assert (=> d!621009 (= res!890234 (= (list!9070 lt!762556) (Cons!22209 (h!27610 tokens!598) Nil!22209)))))

(declare-fun choose!12383 (Token!7534) BalanceConc!14674)

(assert (=> d!621009 (= lt!762556 (choose!12383 (h!27610 tokens!598)))))

(assert (=> d!621009 (= (singleton!884 (h!27610 tokens!598)) lt!762556)))

(declare-fun b!2030028 () Bool)

(assert (=> b!2030028 (= e!1282257 (isBalanced!2315 (c!328193 lt!762556)))))

(assert (= (and d!621009 res!890234) b!2030028))

(declare-fun m!2470139 () Bool)

(assert (=> d!621009 m!2470139))

(declare-fun m!2470141 () Bool)

(assert (=> d!621009 m!2470141))

(declare-fun m!2470143 () Bool)

(assert (=> b!2030028 m!2470143))

(assert (=> d!620379 d!621009))

(declare-fun d!621011 () Bool)

(declare-fun e!1282258 () Bool)

(assert (=> d!621011 e!1282258))

(declare-fun res!890235 () Bool)

(assert (=> d!621011 (=> (not res!890235) (not e!1282258))))

(declare-fun lt!762557 () BalanceConc!14674)

(assert (=> d!621011 (= res!890235 (= (list!9070 lt!762557) (Cons!22209 separatorToken!354 Nil!22209)))))

(assert (=> d!621011 (= lt!762557 (singleton!884 separatorToken!354))))

(assert (=> d!621011 (= (singletonSeq!1967 separatorToken!354) lt!762557)))

(declare-fun b!2030029 () Bool)

(assert (=> b!2030029 (= e!1282258 (isBalanced!2315 (c!328193 lt!762557)))))

(assert (= (and d!621011 res!890235) b!2030029))

(declare-fun m!2470145 () Bool)

(assert (=> d!621011 m!2470145))

(declare-fun m!2470147 () Bool)

(assert (=> d!621011 m!2470147))

(declare-fun m!2470149 () Bool)

(assert (=> b!2030029 m!2470149))

(assert (=> d!620311 d!621011))

(declare-fun d!621013 () Bool)

(declare-fun lt!762558 () BalanceConc!14672)

(assert (=> d!621013 (= (list!9066 lt!762558) (printList!1123 thiss!23328 (list!9070 (singletonSeq!1967 separatorToken!354))))))

(assert (=> d!621013 (= lt!762558 (printTailRec!1072 thiss!23328 (singletonSeq!1967 separatorToken!354) 0 (BalanceConc!14673 Empty!7428)))))

(assert (=> d!621013 (= (print!1566 thiss!23328 (singletonSeq!1967 separatorToken!354)) lt!762558)))

(declare-fun bs!420903 () Bool)

(assert (= bs!420903 d!621013))

(declare-fun m!2470151 () Bool)

(assert (=> bs!420903 m!2470151))

(assert (=> bs!420903 m!2467889))

(assert (=> bs!420903 m!2467891))

(assert (=> bs!420903 m!2467891))

(declare-fun m!2470153 () Bool)

(assert (=> bs!420903 m!2470153))

(assert (=> bs!420903 m!2467889))

(declare-fun m!2470155 () Bool)

(assert (=> bs!420903 m!2470155))

(assert (=> d!620311 d!621013))

(declare-fun d!621015 () Bool)

(assert (=> d!621015 (= (list!9070 (_1!11914 (lex!1620 thiss!23328 rules!3198 (print!1566 thiss!23328 (singletonSeq!1967 separatorToken!354))))) (list!9072 (c!328193 (_1!11914 (lex!1620 thiss!23328 rules!3198 (print!1566 thiss!23328 (singletonSeq!1967 separatorToken!354)))))))))

(declare-fun bs!420904 () Bool)

(assert (= bs!420904 d!621015))

(declare-fun m!2470157 () Bool)

(assert (=> bs!420904 m!2470157))

(assert (=> d!620311 d!621015))

(declare-fun d!621017 () Bool)

(assert (=> d!621017 (= (list!9070 (singletonSeq!1967 separatorToken!354)) (list!9072 (c!328193 (singletonSeq!1967 separatorToken!354))))))

(declare-fun bs!420905 () Bool)

(assert (= bs!420905 d!621017))

(declare-fun m!2470159 () Bool)

(assert (=> bs!420905 m!2470159))

(assert (=> d!620311 d!621017))

(declare-fun lt!762559 () tuple2!20890)

(declare-fun e!1282259 () Bool)

(declare-fun b!2030030 () Bool)

(assert (=> b!2030030 (= e!1282259 (= (list!9066 (_2!11914 lt!762559)) (_2!11917 (lexList!982 thiss!23328 rules!3198 (list!9066 (print!1566 thiss!23328 (singletonSeq!1967 separatorToken!354)))))))))

(declare-fun e!1282260 () Bool)

(declare-fun b!2030031 () Bool)

(assert (=> b!2030031 (= e!1282260 (= (_2!11914 lt!762559) (print!1566 thiss!23328 (singletonSeq!1967 separatorToken!354))))))

(declare-fun b!2030032 () Bool)

(declare-fun e!1282261 () Bool)

(assert (=> b!2030032 (= e!1282261 (not (isEmpty!13855 (_1!11914 lt!762559))))))

(declare-fun b!2030033 () Bool)

(assert (=> b!2030033 (= e!1282260 e!1282261)))

(declare-fun res!890237 () Bool)

(assert (=> b!2030033 (= res!890237 (< (size!17353 (_2!11914 lt!762559)) (size!17353 (print!1566 thiss!23328 (singletonSeq!1967 separatorToken!354)))))))

(assert (=> b!2030033 (=> (not res!890237) (not e!1282261))))

(declare-fun d!621019 () Bool)

(assert (=> d!621019 e!1282259))

(declare-fun res!890236 () Bool)

(assert (=> d!621019 (=> (not res!890236) (not e!1282259))))

(assert (=> d!621019 (= res!890236 e!1282260)))

(declare-fun c!328587 () Bool)

(assert (=> d!621019 (= c!328587 (> (size!17351 (_1!11914 lt!762559)) 0))))

(assert (=> d!621019 (= lt!762559 (lexTailRecV2!705 thiss!23328 rules!3198 (print!1566 thiss!23328 (singletonSeq!1967 separatorToken!354)) (BalanceConc!14673 Empty!7428) (print!1566 thiss!23328 (singletonSeq!1967 separatorToken!354)) (BalanceConc!14675 Empty!7429)))))

(assert (=> d!621019 (= (lex!1620 thiss!23328 rules!3198 (print!1566 thiss!23328 (singletonSeq!1967 separatorToken!354))) lt!762559)))

(declare-fun b!2030034 () Bool)

(declare-fun res!890238 () Bool)

(assert (=> b!2030034 (=> (not res!890238) (not e!1282259))))

(assert (=> b!2030034 (= res!890238 (= (list!9070 (_1!11914 lt!762559)) (_1!11917 (lexList!982 thiss!23328 rules!3198 (list!9066 (print!1566 thiss!23328 (singletonSeq!1967 separatorToken!354)))))))))

(assert (= (and d!621019 c!328587) b!2030033))

(assert (= (and d!621019 (not c!328587)) b!2030031))

(assert (= (and b!2030033 res!890237) b!2030032))

(assert (= (and d!621019 res!890236) b!2030034))

(assert (= (and b!2030034 res!890238) b!2030030))

(declare-fun m!2470161 () Bool)

(assert (=> b!2030032 m!2470161))

(declare-fun m!2470163 () Bool)

(assert (=> b!2030033 m!2470163))

(assert (=> b!2030033 m!2467885))

(declare-fun m!2470165 () Bool)

(assert (=> b!2030033 m!2470165))

(declare-fun m!2470167 () Bool)

(assert (=> b!2030030 m!2470167))

(assert (=> b!2030030 m!2467885))

(declare-fun m!2470169 () Bool)

(assert (=> b!2030030 m!2470169))

(assert (=> b!2030030 m!2470169))

(declare-fun m!2470171 () Bool)

(assert (=> b!2030030 m!2470171))

(declare-fun m!2470173 () Bool)

(assert (=> d!621019 m!2470173))

(assert (=> d!621019 m!2467885))

(assert (=> d!621019 m!2467885))

(declare-fun m!2470175 () Bool)

(assert (=> d!621019 m!2470175))

(declare-fun m!2470177 () Bool)

(assert (=> b!2030034 m!2470177))

(assert (=> b!2030034 m!2467885))

(assert (=> b!2030034 m!2470169))

(assert (=> b!2030034 m!2470169))

(assert (=> b!2030034 m!2470171))

(assert (=> d!620311 d!621019))

(assert (=> d!620311 d!620465))

(declare-fun d!621021 () Bool)

(declare-fun lt!762560 () Int)

(assert (=> d!621021 (= lt!762560 (size!17357 (list!9070 (_1!11914 lt!761977))))))

(assert (=> d!621021 (= lt!762560 (size!17356 (c!328193 (_1!11914 lt!761977))))))

(assert (=> d!621021 (= (size!17351 (_1!11914 lt!761977)) lt!762560)))

(declare-fun bs!420906 () Bool)

(assert (= bs!420906 d!621021))

(assert (=> bs!420906 m!2469011))

(assert (=> bs!420906 m!2469011))

(declare-fun m!2470179 () Bool)

(assert (=> bs!420906 m!2470179))

(declare-fun m!2470181 () Bool)

(assert (=> bs!420906 m!2470181))

(assert (=> d!620311 d!621021))

(declare-fun d!621023 () Bool)

(declare-fun e!1282267 () Bool)

(assert (=> d!621023 e!1282267))

(declare-fun c!328588 () Bool)

(assert (=> d!621023 (= c!328588 (is-EmptyExpr!5416 (regex!3991 (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 separatorToken!354)))))))))

(declare-fun lt!762565 () Bool)

(declare-fun e!1282265 () Bool)

(assert (=> d!621023 (= lt!762565 e!1282265)))

(declare-fun c!328589 () Bool)

(assert (=> d!621023 (= c!328589 (isEmpty!13854 (list!9066 (charsOf!2531 separatorToken!354))))))

(assert (=> d!621023 (validRegex!2179 (regex!3991 (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 separatorToken!354))))))))

(assert (=> d!621023 (= (matchR!2682 (regex!3991 (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 separatorToken!354))))) (list!9066 (charsOf!2531 separatorToken!354))) lt!762565)))

(declare-fun b!2030035 () Bool)

(assert (=> b!2030035 (= e!1282265 (matchR!2682 (derivativeStep!1412 (regex!3991 (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 separatorToken!354))))) (head!4584 (list!9066 (charsOf!2531 separatorToken!354)))) (tail!3060 (list!9066 (charsOf!2531 separatorToken!354)))))))

(declare-fun b!2030036 () Bool)

(declare-fun e!1282266 () Bool)

(assert (=> b!2030036 (= e!1282266 (not lt!762565))))

(declare-fun b!2030037 () Bool)

(declare-fun res!890244 () Bool)

(declare-fun e!1282264 () Bool)

(assert (=> b!2030037 (=> res!890244 e!1282264)))

(assert (=> b!2030037 (= res!890244 (not (isEmpty!13854 (tail!3060 (list!9066 (charsOf!2531 separatorToken!354))))))))

(declare-fun b!2030038 () Bool)

(assert (=> b!2030038 (= e!1282264 (not (= (head!4584 (list!9066 (charsOf!2531 separatorToken!354))) (c!328192 (regex!3991 (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 separatorToken!354)))))))))))

(declare-fun b!2030039 () Bool)

(declare-fun e!1282268 () Bool)

(assert (=> b!2030039 (= e!1282268 e!1282264)))

(declare-fun res!890240 () Bool)

(assert (=> b!2030039 (=> res!890240 e!1282264)))

(declare-fun call!124588 () Bool)

(assert (=> b!2030039 (= res!890240 call!124588)))

(declare-fun b!2030040 () Bool)

(declare-fun res!890246 () Bool)

(declare-fun e!1282262 () Bool)

(assert (=> b!2030040 (=> (not res!890246) (not e!1282262))))

(assert (=> b!2030040 (= res!890246 (isEmpty!13854 (tail!3060 (list!9066 (charsOf!2531 separatorToken!354)))))))

(declare-fun b!2030041 () Bool)

(declare-fun res!890242 () Bool)

(declare-fun e!1282263 () Bool)

(assert (=> b!2030041 (=> res!890242 e!1282263)))

(assert (=> b!2030041 (= res!890242 e!1282262)))

(declare-fun res!890245 () Bool)

(assert (=> b!2030041 (=> (not res!890245) (not e!1282262))))

(assert (=> b!2030041 (= res!890245 lt!762565)))

(declare-fun b!2030042 () Bool)

(declare-fun res!890241 () Bool)

(assert (=> b!2030042 (=> (not res!890241) (not e!1282262))))

(assert (=> b!2030042 (= res!890241 (not call!124588))))

(declare-fun b!2030043 () Bool)

(assert (=> b!2030043 (= e!1282263 e!1282268)))

(declare-fun res!890239 () Bool)

(assert (=> b!2030043 (=> (not res!890239) (not e!1282268))))

(assert (=> b!2030043 (= res!890239 (not lt!762565))))

(declare-fun b!2030044 () Bool)

(assert (=> b!2030044 (= e!1282262 (= (head!4584 (list!9066 (charsOf!2531 separatorToken!354))) (c!328192 (regex!3991 (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 separatorToken!354))))))))))

(declare-fun b!2030045 () Bool)

(assert (=> b!2030045 (= e!1282265 (nullable!1653 (regex!3991 (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 separatorToken!354)))))))))

(declare-fun b!2030046 () Bool)

(assert (=> b!2030046 (= e!1282267 e!1282266)))

(declare-fun c!328590 () Bool)

(assert (=> b!2030046 (= c!328590 (is-EmptyLang!5416 (regex!3991 (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 separatorToken!354)))))))))

(declare-fun bm!124583 () Bool)

(assert (=> bm!124583 (= call!124588 (isEmpty!13854 (list!9066 (charsOf!2531 separatorToken!354))))))

(declare-fun b!2030047 () Bool)

(declare-fun res!890243 () Bool)

(assert (=> b!2030047 (=> res!890243 e!1282263)))

(assert (=> b!2030047 (= res!890243 (not (is-ElementMatch!5416 (regex!3991 (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 separatorToken!354))))))))))

(assert (=> b!2030047 (= e!1282266 e!1282263)))

(declare-fun b!2030048 () Bool)

(assert (=> b!2030048 (= e!1282267 (= lt!762565 call!124588))))

(assert (= (and d!621023 c!328589) b!2030045))

(assert (= (and d!621023 (not c!328589)) b!2030035))

(assert (= (and d!621023 c!328588) b!2030048))

(assert (= (and d!621023 (not c!328588)) b!2030046))

(assert (= (and b!2030046 c!328590) b!2030036))

(assert (= (and b!2030046 (not c!328590)) b!2030047))

(assert (= (and b!2030047 (not res!890243)) b!2030041))

(assert (= (and b!2030041 res!890245) b!2030042))

(assert (= (and b!2030042 res!890241) b!2030040))

(assert (= (and b!2030040 res!890246) b!2030044))

(assert (= (and b!2030041 (not res!890242)) b!2030043))

(assert (= (and b!2030043 res!890239) b!2030039))

(assert (= (and b!2030039 (not res!890240)) b!2030037))

(assert (= (and b!2030037 (not res!890244)) b!2030038))

(assert (= (or b!2030048 b!2030039 b!2030042) bm!124583))

(assert (=> b!2030040 m!2467189))

(declare-fun m!2470183 () Bool)

(assert (=> b!2030040 m!2470183))

(assert (=> b!2030040 m!2470183))

(declare-fun m!2470185 () Bool)

(assert (=> b!2030040 m!2470185))

(declare-fun m!2470187 () Bool)

(assert (=> b!2030045 m!2470187))

(assert (=> b!2030038 m!2467189))

(declare-fun m!2470189 () Bool)

(assert (=> b!2030038 m!2470189))

(assert (=> b!2030035 m!2467189))

(assert (=> b!2030035 m!2470189))

(assert (=> b!2030035 m!2470189))

(declare-fun m!2470191 () Bool)

(assert (=> b!2030035 m!2470191))

(assert (=> b!2030035 m!2467189))

(assert (=> b!2030035 m!2470183))

(assert (=> b!2030035 m!2470191))

(assert (=> b!2030035 m!2470183))

(declare-fun m!2470193 () Bool)

(assert (=> b!2030035 m!2470193))

(assert (=> b!2030044 m!2467189))

(assert (=> b!2030044 m!2470189))

(assert (=> d!621023 m!2467189))

(declare-fun m!2470195 () Bool)

(assert (=> d!621023 m!2470195))

(declare-fun m!2470197 () Bool)

(assert (=> d!621023 m!2470197))

(assert (=> b!2030037 m!2467189))

(assert (=> b!2030037 m!2470183))

(assert (=> b!2030037 m!2470183))

(assert (=> b!2030037 m!2470185))

(assert (=> bm!124583 m!2467189))

(assert (=> bm!124583 m!2470195))

(assert (=> b!2028493 d!621023))

(declare-fun d!621025 () Bool)

(assert (=> d!621025 (= (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 separatorToken!354)))) (v!26990 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 separatorToken!354)))))))

(assert (=> b!2028493 d!621025))

(assert (=> b!2028493 d!620289))

(assert (=> b!2028493 d!620307))

(assert (=> b!2028493 d!620295))

(assert (=> b!2028616 d!620995))

(declare-fun d!621027 () Bool)

(declare-fun e!1282282 () Bool)

(assert (=> d!621027 e!1282282))

(declare-fun c!328593 () Bool)

(assert (=> d!621027 (= c!328593 (is-EmptyExpr!5416 (derivativeStep!1412 (regex!3991 (rule!6220 separatorToken!354)) (head!4584 lt!761716))))))

(declare-fun lt!762572 () Bool)

(declare-fun e!1282280 () Bool)

(assert (=> d!621027 (= lt!762572 e!1282280)))

(declare-fun c!328594 () Bool)

(assert (=> d!621027 (= c!328594 (isEmpty!13854 (tail!3060 lt!761716)))))

(assert (=> d!621027 (validRegex!2179 (derivativeStep!1412 (regex!3991 (rule!6220 separatorToken!354)) (head!4584 lt!761716)))))

(assert (=> d!621027 (= (matchR!2682 (derivativeStep!1412 (regex!3991 (rule!6220 separatorToken!354)) (head!4584 lt!761716)) (tail!3060 lt!761716)) lt!762572)))

(declare-fun b!2030067 () Bool)

(assert (=> b!2030067 (= e!1282280 (matchR!2682 (derivativeStep!1412 (derivativeStep!1412 (regex!3991 (rule!6220 separatorToken!354)) (head!4584 lt!761716)) (head!4584 (tail!3060 lt!761716))) (tail!3060 (tail!3060 lt!761716))))))

(declare-fun b!2030068 () Bool)

(declare-fun e!1282281 () Bool)

(assert (=> b!2030068 (= e!1282281 (not lt!762572))))

(declare-fun b!2030069 () Bool)

(declare-fun res!890266 () Bool)

(declare-fun e!1282279 () Bool)

(assert (=> b!2030069 (=> res!890266 e!1282279)))

(assert (=> b!2030069 (= res!890266 (not (isEmpty!13854 (tail!3060 (tail!3060 lt!761716)))))))

(declare-fun b!2030070 () Bool)

(assert (=> b!2030070 (= e!1282279 (not (= (head!4584 (tail!3060 lt!761716)) (c!328192 (derivativeStep!1412 (regex!3991 (rule!6220 separatorToken!354)) (head!4584 lt!761716))))))))

(declare-fun b!2030071 () Bool)

(declare-fun e!1282283 () Bool)

(assert (=> b!2030071 (= e!1282283 e!1282279)))

(declare-fun res!890262 () Bool)

(assert (=> b!2030071 (=> res!890262 e!1282279)))

(declare-fun call!124589 () Bool)

(assert (=> b!2030071 (= res!890262 call!124589)))

(declare-fun b!2030072 () Bool)

(declare-fun res!890268 () Bool)

(declare-fun e!1282277 () Bool)

(assert (=> b!2030072 (=> (not res!890268) (not e!1282277))))

(assert (=> b!2030072 (= res!890268 (isEmpty!13854 (tail!3060 (tail!3060 lt!761716))))))

(declare-fun b!2030073 () Bool)

(declare-fun res!890264 () Bool)

(declare-fun e!1282278 () Bool)

(assert (=> b!2030073 (=> res!890264 e!1282278)))

(assert (=> b!2030073 (= res!890264 e!1282277)))

(declare-fun res!890267 () Bool)

(assert (=> b!2030073 (=> (not res!890267) (not e!1282277))))

(assert (=> b!2030073 (= res!890267 lt!762572)))

(declare-fun b!2030074 () Bool)

(declare-fun res!890263 () Bool)

(assert (=> b!2030074 (=> (not res!890263) (not e!1282277))))

(assert (=> b!2030074 (= res!890263 (not call!124589))))

(declare-fun b!2030075 () Bool)

(assert (=> b!2030075 (= e!1282278 e!1282283)))

(declare-fun res!890261 () Bool)

(assert (=> b!2030075 (=> (not res!890261) (not e!1282283))))

(assert (=> b!2030075 (= res!890261 (not lt!762572))))

(declare-fun b!2030076 () Bool)

(assert (=> b!2030076 (= e!1282277 (= (head!4584 (tail!3060 lt!761716)) (c!328192 (derivativeStep!1412 (regex!3991 (rule!6220 separatorToken!354)) (head!4584 lt!761716)))))))

(declare-fun b!2030077 () Bool)

(assert (=> b!2030077 (= e!1282280 (nullable!1653 (derivativeStep!1412 (regex!3991 (rule!6220 separatorToken!354)) (head!4584 lt!761716))))))

(declare-fun b!2030078 () Bool)

(assert (=> b!2030078 (= e!1282282 e!1282281)))

(declare-fun c!328595 () Bool)

(assert (=> b!2030078 (= c!328595 (is-EmptyLang!5416 (derivativeStep!1412 (regex!3991 (rule!6220 separatorToken!354)) (head!4584 lt!761716))))))

(declare-fun bm!124584 () Bool)

(assert (=> bm!124584 (= call!124589 (isEmpty!13854 (tail!3060 lt!761716)))))

(declare-fun b!2030079 () Bool)

(declare-fun res!890265 () Bool)

(assert (=> b!2030079 (=> res!890265 e!1282278)))

(assert (=> b!2030079 (= res!890265 (not (is-ElementMatch!5416 (derivativeStep!1412 (regex!3991 (rule!6220 separatorToken!354)) (head!4584 lt!761716)))))))

(assert (=> b!2030079 (= e!1282281 e!1282278)))

(declare-fun b!2030080 () Bool)

(assert (=> b!2030080 (= e!1282282 (= lt!762572 call!124589))))

(assert (= (and d!621027 c!328594) b!2030077))

(assert (= (and d!621027 (not c!328594)) b!2030067))

(assert (= (and d!621027 c!328593) b!2030080))

(assert (= (and d!621027 (not c!328593)) b!2030078))

(assert (= (and b!2030078 c!328595) b!2030068))

(assert (= (and b!2030078 (not c!328595)) b!2030079))

(assert (= (and b!2030079 (not res!890265)) b!2030073))

(assert (= (and b!2030073 res!890267) b!2030074))

(assert (= (and b!2030074 res!890263) b!2030072))

(assert (= (and b!2030072 res!890268) b!2030076))

(assert (= (and b!2030073 (not res!890264)) b!2030075))

(assert (= (and b!2030075 res!890261) b!2030071))

(assert (= (and b!2030071 (not res!890262)) b!2030069))

(assert (= (and b!2030069 (not res!890266)) b!2030070))

(assert (= (or b!2030080 b!2030071 b!2030074) bm!124584))

(assert (=> b!2030072 m!2467931))

(assert (=> b!2030072 m!2469863))

(assert (=> b!2030072 m!2469863))

(assert (=> b!2030072 m!2469865))

(assert (=> b!2030077 m!2467937))

(declare-fun m!2470199 () Bool)

(assert (=> b!2030077 m!2470199))

(assert (=> b!2030070 m!2467931))

(assert (=> b!2030070 m!2469869))

(assert (=> b!2030067 m!2467931))

(assert (=> b!2030067 m!2469869))

(assert (=> b!2030067 m!2467937))

(assert (=> b!2030067 m!2469869))

(declare-fun m!2470201 () Bool)

(assert (=> b!2030067 m!2470201))

(assert (=> b!2030067 m!2467931))

(assert (=> b!2030067 m!2469863))

(assert (=> b!2030067 m!2470201))

(assert (=> b!2030067 m!2469863))

(declare-fun m!2470203 () Bool)

(assert (=> b!2030067 m!2470203))

(assert (=> b!2030076 m!2467931))

(assert (=> b!2030076 m!2469869))

(assert (=> d!621027 m!2467931))

(assert (=> d!621027 m!2467933))

(assert (=> d!621027 m!2467937))

(declare-fun m!2470205 () Bool)

(assert (=> d!621027 m!2470205))

(assert (=> b!2030069 m!2467931))

(assert (=> b!2030069 m!2469863))

(assert (=> b!2030069 m!2469863))

(assert (=> b!2030069 m!2469865))

(assert (=> bm!124584 m!2467931))

(assert (=> bm!124584 m!2467933))

(assert (=> b!2028705 d!621027))

(declare-fun call!124592 () Regex!5416)

(declare-fun bm!124585 () Bool)

(declare-fun c!328598 () Bool)

(assert (=> bm!124585 (= call!124592 (derivativeStep!1412 (ite c!328598 (regOne!11345 (regex!3991 (rule!6220 separatorToken!354))) (regOne!11344 (regex!3991 (rule!6220 separatorToken!354)))) (head!4584 lt!761716)))))

(declare-fun e!1282287 () Regex!5416)

(declare-fun b!2030081 () Bool)

(declare-fun call!124591 () Regex!5416)

(assert (=> b!2030081 (= e!1282287 (Union!5416 (Concat!9544 call!124592 (regTwo!11344 (regex!3991 (rule!6220 separatorToken!354)))) call!124591))))

(declare-fun b!2030082 () Bool)

(declare-fun e!1282288 () Regex!5416)

(assert (=> b!2030082 (= e!1282288 (ite (= (head!4584 lt!761716) (c!328192 (regex!3991 (rule!6220 separatorToken!354)))) EmptyExpr!5416 EmptyLang!5416))))

(declare-fun b!2030083 () Bool)

(declare-fun c!328596 () Bool)

(assert (=> b!2030083 (= c!328596 (nullable!1653 (regOne!11344 (regex!3991 (rule!6220 separatorToken!354)))))))

(declare-fun e!1282285 () Regex!5416)

(assert (=> b!2030083 (= e!1282285 e!1282287)))

(declare-fun b!2030084 () Bool)

(assert (=> b!2030084 (= e!1282287 (Union!5416 (Concat!9544 call!124591 (regTwo!11344 (regex!3991 (rule!6220 separatorToken!354)))) EmptyLang!5416))))

(declare-fun b!2030085 () Bool)

(declare-fun e!1282284 () Regex!5416)

(assert (=> b!2030085 (= e!1282284 e!1282288)))

(declare-fun c!328597 () Bool)

(assert (=> b!2030085 (= c!328597 (is-ElementMatch!5416 (regex!3991 (rule!6220 separatorToken!354))))))

(declare-fun b!2030086 () Bool)

(declare-fun e!1282286 () Regex!5416)

(assert (=> b!2030086 (= e!1282286 e!1282285)))

(declare-fun c!328599 () Bool)

(assert (=> b!2030086 (= c!328599 (is-Star!5416 (regex!3991 (rule!6220 separatorToken!354))))))

(declare-fun b!2030087 () Bool)

(assert (=> b!2030087 (= e!1282284 EmptyLang!5416)))

(declare-fun d!621029 () Bool)

(declare-fun lt!762573 () Regex!5416)

(assert (=> d!621029 (validRegex!2179 lt!762573)))

(assert (=> d!621029 (= lt!762573 e!1282284)))

(declare-fun c!328600 () Bool)

(assert (=> d!621029 (= c!328600 (or (is-EmptyExpr!5416 (regex!3991 (rule!6220 separatorToken!354))) (is-EmptyLang!5416 (regex!3991 (rule!6220 separatorToken!354)))))))

(assert (=> d!621029 (validRegex!2179 (regex!3991 (rule!6220 separatorToken!354)))))

(assert (=> d!621029 (= (derivativeStep!1412 (regex!3991 (rule!6220 separatorToken!354)) (head!4584 lt!761716)) lt!762573)))

(declare-fun b!2030088 () Bool)

(declare-fun call!124590 () Regex!5416)

(assert (=> b!2030088 (= e!1282285 (Concat!9544 call!124590 (regex!3991 (rule!6220 separatorToken!354))))))

(declare-fun call!124593 () Regex!5416)

(declare-fun bm!124586 () Bool)

(assert (=> bm!124586 (= call!124593 (derivativeStep!1412 (ite c!328598 (regTwo!11345 (regex!3991 (rule!6220 separatorToken!354))) (ite c!328599 (reg!5745 (regex!3991 (rule!6220 separatorToken!354))) (ite c!328596 (regTwo!11344 (regex!3991 (rule!6220 separatorToken!354))) (regOne!11344 (regex!3991 (rule!6220 separatorToken!354)))))) (head!4584 lt!761716)))))

(declare-fun b!2030089 () Bool)

(assert (=> b!2030089 (= c!328598 (is-Union!5416 (regex!3991 (rule!6220 separatorToken!354))))))

(assert (=> b!2030089 (= e!1282288 e!1282286)))

(declare-fun b!2030090 () Bool)

(assert (=> b!2030090 (= e!1282286 (Union!5416 call!124592 call!124593))))

(declare-fun bm!124587 () Bool)

(assert (=> bm!124587 (= call!124591 call!124590)))

(declare-fun bm!124588 () Bool)

(assert (=> bm!124588 (= call!124590 call!124593)))

(assert (= (and d!621029 c!328600) b!2030087))

(assert (= (and d!621029 (not c!328600)) b!2030085))

(assert (= (and b!2030085 c!328597) b!2030082))

(assert (= (and b!2030085 (not c!328597)) b!2030089))

(assert (= (and b!2030089 c!328598) b!2030090))

(assert (= (and b!2030089 (not c!328598)) b!2030086))

(assert (= (and b!2030086 c!328599) b!2030088))

(assert (= (and b!2030086 (not c!328599)) b!2030083))

(assert (= (and b!2030083 c!328596) b!2030081))

(assert (= (and b!2030083 (not c!328596)) b!2030084))

(assert (= (or b!2030081 b!2030084) bm!124587))

(assert (= (or b!2030088 bm!124587) bm!124588))

(assert (= (or b!2030090 b!2030081) bm!124585))

(assert (= (or b!2030090 bm!124588) bm!124586))

(assert (=> bm!124585 m!2467285))

(declare-fun m!2470207 () Bool)

(assert (=> bm!124585 m!2470207))

(declare-fun m!2470209 () Bool)

(assert (=> b!2030083 m!2470209))

(declare-fun m!2470211 () Bool)

(assert (=> d!621029 m!2470211))

(assert (=> d!621029 m!2467929))

(assert (=> bm!124586 m!2467285))

(declare-fun m!2470213 () Bool)

(assert (=> bm!124586 m!2470213))

(assert (=> b!2028705 d!621029))

(assert (=> b!2028705 d!620383))

(assert (=> b!2028705 d!620639))

(declare-fun d!621031 () Bool)

(declare-fun e!1282294 () Bool)

(assert (=> d!621031 e!1282294))

(declare-fun c!328601 () Bool)

(assert (=> d!621031 (= c!328601 (is-EmptyExpr!5416 (derivativeStep!1412 (regex!3991 lt!761721) (head!4584 lt!761718))))))

(declare-fun lt!762574 () Bool)

(declare-fun e!1282292 () Bool)

(assert (=> d!621031 (= lt!762574 e!1282292)))

(declare-fun c!328602 () Bool)

(assert (=> d!621031 (= c!328602 (isEmpty!13854 (tail!3060 lt!761718)))))

(assert (=> d!621031 (validRegex!2179 (derivativeStep!1412 (regex!3991 lt!761721) (head!4584 lt!761718)))))

(assert (=> d!621031 (= (matchR!2682 (derivativeStep!1412 (regex!3991 lt!761721) (head!4584 lt!761718)) (tail!3060 lt!761718)) lt!762574)))

(declare-fun b!2030091 () Bool)

(assert (=> b!2030091 (= e!1282292 (matchR!2682 (derivativeStep!1412 (derivativeStep!1412 (regex!3991 lt!761721) (head!4584 lt!761718)) (head!4584 (tail!3060 lt!761718))) (tail!3060 (tail!3060 lt!761718))))))

(declare-fun b!2030092 () Bool)

(declare-fun e!1282293 () Bool)

(assert (=> b!2030092 (= e!1282293 (not lt!762574))))

(declare-fun b!2030093 () Bool)

(declare-fun res!890274 () Bool)

(declare-fun e!1282291 () Bool)

(assert (=> b!2030093 (=> res!890274 e!1282291)))

(assert (=> b!2030093 (= res!890274 (not (isEmpty!13854 (tail!3060 (tail!3060 lt!761718)))))))

(declare-fun b!2030094 () Bool)

(assert (=> b!2030094 (= e!1282291 (not (= (head!4584 (tail!3060 lt!761718)) (c!328192 (derivativeStep!1412 (regex!3991 lt!761721) (head!4584 lt!761718))))))))

(declare-fun b!2030095 () Bool)

(declare-fun e!1282295 () Bool)

(assert (=> b!2030095 (= e!1282295 e!1282291)))

(declare-fun res!890270 () Bool)

(assert (=> b!2030095 (=> res!890270 e!1282291)))

(declare-fun call!124594 () Bool)

(assert (=> b!2030095 (= res!890270 call!124594)))

(declare-fun b!2030096 () Bool)

(declare-fun res!890276 () Bool)

(declare-fun e!1282289 () Bool)

(assert (=> b!2030096 (=> (not res!890276) (not e!1282289))))

(assert (=> b!2030096 (= res!890276 (isEmpty!13854 (tail!3060 (tail!3060 lt!761718))))))

(declare-fun b!2030097 () Bool)

(declare-fun res!890272 () Bool)

(declare-fun e!1282290 () Bool)

(assert (=> b!2030097 (=> res!890272 e!1282290)))

(assert (=> b!2030097 (= res!890272 e!1282289)))

(declare-fun res!890275 () Bool)

(assert (=> b!2030097 (=> (not res!890275) (not e!1282289))))

(assert (=> b!2030097 (= res!890275 lt!762574)))

(declare-fun b!2030098 () Bool)

(declare-fun res!890271 () Bool)

(assert (=> b!2030098 (=> (not res!890271) (not e!1282289))))

(assert (=> b!2030098 (= res!890271 (not call!124594))))

(declare-fun b!2030099 () Bool)

(assert (=> b!2030099 (= e!1282290 e!1282295)))

(declare-fun res!890269 () Bool)

(assert (=> b!2030099 (=> (not res!890269) (not e!1282295))))

(assert (=> b!2030099 (= res!890269 (not lt!762574))))

(declare-fun b!2030100 () Bool)

(assert (=> b!2030100 (= e!1282289 (= (head!4584 (tail!3060 lt!761718)) (c!328192 (derivativeStep!1412 (regex!3991 lt!761721) (head!4584 lt!761718)))))))

(declare-fun b!2030101 () Bool)

(assert (=> b!2030101 (= e!1282292 (nullable!1653 (derivativeStep!1412 (regex!3991 lt!761721) (head!4584 lt!761718))))))

(declare-fun b!2030102 () Bool)

(assert (=> b!2030102 (= e!1282294 e!1282293)))

(declare-fun c!328603 () Bool)

(assert (=> b!2030102 (= c!328603 (is-EmptyLang!5416 (derivativeStep!1412 (regex!3991 lt!761721) (head!4584 lt!761718))))))

(declare-fun bm!124589 () Bool)

(assert (=> bm!124589 (= call!124594 (isEmpty!13854 (tail!3060 lt!761718)))))

(declare-fun b!2030103 () Bool)

(declare-fun res!890273 () Bool)

(assert (=> b!2030103 (=> res!890273 e!1282290)))

(assert (=> b!2030103 (= res!890273 (not (is-ElementMatch!5416 (derivativeStep!1412 (regex!3991 lt!761721) (head!4584 lt!761718)))))))

(assert (=> b!2030103 (= e!1282293 e!1282290)))

(declare-fun b!2030104 () Bool)

(assert (=> b!2030104 (= e!1282294 (= lt!762574 call!124594))))

(assert (= (and d!621031 c!328602) b!2030101))

(assert (= (and d!621031 (not c!328602)) b!2030091))

(assert (= (and d!621031 c!328601) b!2030104))

(assert (= (and d!621031 (not c!328601)) b!2030102))

(assert (= (and b!2030102 c!328603) b!2030092))

(assert (= (and b!2030102 (not c!328603)) b!2030103))

(assert (= (and b!2030103 (not res!890273)) b!2030097))

(assert (= (and b!2030097 res!890275) b!2030098))

(assert (= (and b!2030098 res!890271) b!2030096))

(assert (= (and b!2030096 res!890276) b!2030100))

(assert (= (and b!2030097 (not res!890272)) b!2030099))

(assert (= (and b!2030099 res!890269) b!2030095))

(assert (= (and b!2030095 (not res!890270)) b!2030093))

(assert (= (and b!2030093 (not res!890274)) b!2030094))

(assert (= (or b!2030104 b!2030095 b!2030098) bm!124589))

(assert (=> b!2030096 m!2467899))

(assert (=> b!2030096 m!2468963))

(assert (=> b!2030096 m!2468963))

(assert (=> b!2030096 m!2468965))

(assert (=> b!2030101 m!2468405))

(declare-fun m!2470215 () Bool)

(assert (=> b!2030101 m!2470215))

(assert (=> b!2030094 m!2467899))

(assert (=> b!2030094 m!2468969))

(assert (=> b!2030091 m!2467899))

(assert (=> b!2030091 m!2468969))

(assert (=> b!2030091 m!2468405))

(assert (=> b!2030091 m!2468969))

(declare-fun m!2470217 () Bool)

(assert (=> b!2030091 m!2470217))

(assert (=> b!2030091 m!2467899))

(assert (=> b!2030091 m!2468963))

(assert (=> b!2030091 m!2470217))

(assert (=> b!2030091 m!2468963))

(declare-fun m!2470219 () Bool)

(assert (=> b!2030091 m!2470219))

(assert (=> b!2030100 m!2467899))

(assert (=> b!2030100 m!2468969))

(assert (=> d!621031 m!2467899))

(assert (=> d!621031 m!2467901))

(assert (=> d!621031 m!2468405))

(declare-fun m!2470221 () Bool)

(assert (=> d!621031 m!2470221))

(assert (=> b!2030093 m!2467899))

(assert (=> b!2030093 m!2468963))

(assert (=> b!2030093 m!2468963))

(assert (=> b!2030093 m!2468965))

(assert (=> bm!124589 m!2467899))

(assert (=> bm!124589 m!2467901))

(assert (=> b!2029016 d!621031))

(declare-fun call!124597 () Regex!5416)

(declare-fun bm!124590 () Bool)

(declare-fun c!328606 () Bool)

(assert (=> bm!124590 (= call!124597 (derivativeStep!1412 (ite c!328606 (regOne!11345 (regex!3991 lt!761721)) (regOne!11344 (regex!3991 lt!761721))) (head!4584 lt!761718)))))

(declare-fun call!124596 () Regex!5416)

(declare-fun b!2030105 () Bool)

(declare-fun e!1282299 () Regex!5416)

(assert (=> b!2030105 (= e!1282299 (Union!5416 (Concat!9544 call!124597 (regTwo!11344 (regex!3991 lt!761721))) call!124596))))

(declare-fun b!2030106 () Bool)

(declare-fun e!1282300 () Regex!5416)

(assert (=> b!2030106 (= e!1282300 (ite (= (head!4584 lt!761718) (c!328192 (regex!3991 lt!761721))) EmptyExpr!5416 EmptyLang!5416))))

(declare-fun b!2030107 () Bool)

(declare-fun c!328604 () Bool)

(assert (=> b!2030107 (= c!328604 (nullable!1653 (regOne!11344 (regex!3991 lt!761721))))))

(declare-fun e!1282297 () Regex!5416)

(assert (=> b!2030107 (= e!1282297 e!1282299)))

(declare-fun b!2030108 () Bool)

(assert (=> b!2030108 (= e!1282299 (Union!5416 (Concat!9544 call!124596 (regTwo!11344 (regex!3991 lt!761721))) EmptyLang!5416))))

(declare-fun b!2030109 () Bool)

(declare-fun e!1282296 () Regex!5416)

(assert (=> b!2030109 (= e!1282296 e!1282300)))

(declare-fun c!328605 () Bool)

(assert (=> b!2030109 (= c!328605 (is-ElementMatch!5416 (regex!3991 lt!761721)))))

(declare-fun b!2030110 () Bool)

(declare-fun e!1282298 () Regex!5416)

(assert (=> b!2030110 (= e!1282298 e!1282297)))

(declare-fun c!328607 () Bool)

(assert (=> b!2030110 (= c!328607 (is-Star!5416 (regex!3991 lt!761721)))))

(declare-fun b!2030111 () Bool)

(assert (=> b!2030111 (= e!1282296 EmptyLang!5416)))

(declare-fun d!621033 () Bool)

(declare-fun lt!762575 () Regex!5416)

(assert (=> d!621033 (validRegex!2179 lt!762575)))

(assert (=> d!621033 (= lt!762575 e!1282296)))

(declare-fun c!328608 () Bool)

(assert (=> d!621033 (= c!328608 (or (is-EmptyExpr!5416 (regex!3991 lt!761721)) (is-EmptyLang!5416 (regex!3991 lt!761721))))))

(assert (=> d!621033 (validRegex!2179 (regex!3991 lt!761721))))

(assert (=> d!621033 (= (derivativeStep!1412 (regex!3991 lt!761721) (head!4584 lt!761718)) lt!762575)))

(declare-fun b!2030112 () Bool)

(declare-fun call!124595 () Regex!5416)

(assert (=> b!2030112 (= e!1282297 (Concat!9544 call!124595 (regex!3991 lt!761721)))))

(declare-fun bm!124591 () Bool)

(declare-fun call!124598 () Regex!5416)

(assert (=> bm!124591 (= call!124598 (derivativeStep!1412 (ite c!328606 (regTwo!11345 (regex!3991 lt!761721)) (ite c!328607 (reg!5745 (regex!3991 lt!761721)) (ite c!328604 (regTwo!11344 (regex!3991 lt!761721)) (regOne!11344 (regex!3991 lt!761721))))) (head!4584 lt!761718)))))

(declare-fun b!2030113 () Bool)

(assert (=> b!2030113 (= c!328606 (is-Union!5416 (regex!3991 lt!761721)))))

(assert (=> b!2030113 (= e!1282300 e!1282298)))

(declare-fun b!2030114 () Bool)

(assert (=> b!2030114 (= e!1282298 (Union!5416 call!124597 call!124598))))

(declare-fun bm!124592 () Bool)

(assert (=> bm!124592 (= call!124596 call!124595)))

(declare-fun bm!124593 () Bool)

(assert (=> bm!124593 (= call!124595 call!124598)))

(assert (= (and d!621033 c!328608) b!2030111))

(assert (= (and d!621033 (not c!328608)) b!2030109))

(assert (= (and b!2030109 c!328605) b!2030106))

(assert (= (and b!2030109 (not c!328605)) b!2030113))

(assert (= (and b!2030113 c!328606) b!2030114))

(assert (= (and b!2030113 (not c!328606)) b!2030110))

(assert (= (and b!2030110 c!328607) b!2030112))

(assert (= (and b!2030110 (not c!328607)) b!2030107))

(assert (= (and b!2030107 c!328604) b!2030105))

(assert (= (and b!2030107 (not c!328604)) b!2030108))

(assert (= (or b!2030105 b!2030108) bm!124592))

(assert (= (or b!2030112 bm!124592) bm!124593))

(assert (= (or b!2030114 b!2030105) bm!124590))

(assert (= (or b!2030114 bm!124593) bm!124591))

(assert (=> bm!124590 m!2467905))

(declare-fun m!2470223 () Bool)

(assert (=> bm!124590 m!2470223))

(declare-fun m!2470225 () Bool)

(assert (=> b!2030107 m!2470225))

(declare-fun m!2470227 () Bool)

(assert (=> d!621033 m!2470227))

(assert (=> d!621033 m!2468409))

(assert (=> bm!124591 m!2467905))

(declare-fun m!2470229 () Bool)

(assert (=> bm!124591 m!2470229))

(assert (=> b!2029016 d!621033))

(assert (=> b!2029016 d!620605))

(assert (=> b!2029016 d!620607))

(declare-fun d!621035 () Bool)

(declare-fun lt!762576 () Bool)

(assert (=> d!621035 (= lt!762576 (isEmpty!13854 (list!9066 (_2!11914 lt!761977))))))

(assert (=> d!621035 (= lt!762576 (isEmpty!13869 (c!328191 (_2!11914 lt!761977))))))

(assert (=> d!621035 (= (isEmpty!13864 (_2!11914 lt!761977)) lt!762576)))

(declare-fun bs!420907 () Bool)

(assert (= bs!420907 d!621035))

(declare-fun m!2470231 () Bool)

(assert (=> bs!420907 m!2470231))

(assert (=> bs!420907 m!2470231))

(declare-fun m!2470233 () Bool)

(assert (=> bs!420907 m!2470233))

(declare-fun m!2470235 () Bool)

(assert (=> bs!420907 m!2470235))

(assert (=> b!2028637 d!621035))

(declare-fun d!621037 () Bool)

(declare-fun lt!762577 () Bool)

(assert (=> d!621037 (= lt!762577 (set.member lt!761712 (content!3278 (t!190124 lt!761707))))))

(declare-fun e!1282301 () Bool)

(assert (=> d!621037 (= lt!762577 e!1282301)))

(declare-fun res!890277 () Bool)

(assert (=> d!621037 (=> (not res!890277) (not e!1282301))))

(assert (=> d!621037 (= res!890277 (is-Cons!22207 (t!190124 lt!761707)))))

(assert (=> d!621037 (= (contains!4098 (t!190124 lt!761707) lt!761712) lt!762577)))

(declare-fun b!2030115 () Bool)

(declare-fun e!1282302 () Bool)

(assert (=> b!2030115 (= e!1282301 e!1282302)))

(declare-fun res!890278 () Bool)

(assert (=> b!2030115 (=> res!890278 e!1282302)))

(assert (=> b!2030115 (= res!890278 (= (h!27608 (t!190124 lt!761707)) lt!761712))))

(declare-fun b!2030116 () Bool)

(assert (=> b!2030116 (= e!1282302 (contains!4098 (t!190124 (t!190124 lt!761707)) lt!761712))))

(assert (= (and d!621037 res!890277) b!2030115))

(assert (= (and b!2030115 (not res!890278)) b!2030116))

(assert (=> d!621037 m!2468729))

(declare-fun m!2470237 () Bool)

(assert (=> d!621037 m!2470237))

(declare-fun m!2470239 () Bool)

(assert (=> b!2030116 m!2470239))

(assert (=> b!2028629 d!621037))

(declare-fun d!621039 () Bool)

(declare-fun e!1282308 () Bool)

(assert (=> d!621039 e!1282308))

(declare-fun c!328609 () Bool)

(assert (=> d!621039 (= c!328609 (is-EmptyExpr!5416 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762084))))))))

(declare-fun lt!762578 () Bool)

(declare-fun e!1282306 () Bool)

(assert (=> d!621039 (= lt!762578 e!1282306)))

(declare-fun c!328610 () Bool)

(assert (=> d!621039 (= c!328610 (isEmpty!13854 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762084))))))))

(assert (=> d!621039 (validRegex!2179 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762084)))))))

(assert (=> d!621039 (= (matchR!2682 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762084)))) (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762084))))) lt!762578)))

(declare-fun b!2030117 () Bool)

(assert (=> b!2030117 (= e!1282306 (matchR!2682 (derivativeStep!1412 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762084)))) (head!4584 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762084)))))) (tail!3060 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762084)))))))))

(declare-fun b!2030118 () Bool)

(declare-fun e!1282307 () Bool)

(assert (=> b!2030118 (= e!1282307 (not lt!762578))))

(declare-fun b!2030119 () Bool)

(declare-fun res!890284 () Bool)

(declare-fun e!1282305 () Bool)

(assert (=> b!2030119 (=> res!890284 e!1282305)))

(assert (=> b!2030119 (= res!890284 (not (isEmpty!13854 (tail!3060 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762084))))))))))

(declare-fun b!2030120 () Bool)

(assert (=> b!2030120 (= e!1282305 (not (= (head!4584 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762084))))) (c!328192 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762084))))))))))

(declare-fun b!2030121 () Bool)

(declare-fun e!1282309 () Bool)

(assert (=> b!2030121 (= e!1282309 e!1282305)))

(declare-fun res!890280 () Bool)

(assert (=> b!2030121 (=> res!890280 e!1282305)))

(declare-fun call!124599 () Bool)

(assert (=> b!2030121 (= res!890280 call!124599)))

(declare-fun b!2030122 () Bool)

(declare-fun res!890286 () Bool)

(declare-fun e!1282303 () Bool)

(assert (=> b!2030122 (=> (not res!890286) (not e!1282303))))

(assert (=> b!2030122 (= res!890286 (isEmpty!13854 (tail!3060 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762084)))))))))

(declare-fun b!2030123 () Bool)

(declare-fun res!890282 () Bool)

(declare-fun e!1282304 () Bool)

(assert (=> b!2030123 (=> res!890282 e!1282304)))

(assert (=> b!2030123 (= res!890282 e!1282303)))

(declare-fun res!890285 () Bool)

(assert (=> b!2030123 (=> (not res!890285) (not e!1282303))))

(assert (=> b!2030123 (= res!890285 lt!762578)))

(declare-fun b!2030124 () Bool)

(declare-fun res!890281 () Bool)

(assert (=> b!2030124 (=> (not res!890281) (not e!1282303))))

(assert (=> b!2030124 (= res!890281 (not call!124599))))

(declare-fun b!2030125 () Bool)

(assert (=> b!2030125 (= e!1282304 e!1282309)))

(declare-fun res!890279 () Bool)

(assert (=> b!2030125 (=> (not res!890279) (not e!1282309))))

(assert (=> b!2030125 (= res!890279 (not lt!762578))))

(declare-fun b!2030126 () Bool)

(assert (=> b!2030126 (= e!1282303 (= (head!4584 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762084))))) (c!328192 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762084)))))))))

(declare-fun b!2030127 () Bool)

(assert (=> b!2030127 (= e!1282306 (nullable!1653 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762084))))))))

(declare-fun b!2030128 () Bool)

(assert (=> b!2030128 (= e!1282308 e!1282307)))

(declare-fun c!328611 () Bool)

(assert (=> b!2030128 (= c!328611 (is-EmptyLang!5416 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762084))))))))

(declare-fun bm!124594 () Bool)

(assert (=> bm!124594 (= call!124599 (isEmpty!13854 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762084))))))))

(declare-fun b!2030129 () Bool)

(declare-fun res!890283 () Bool)

(assert (=> b!2030129 (=> res!890283 e!1282304)))

(assert (=> b!2030129 (= res!890283 (not (is-ElementMatch!5416 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762084)))))))))

(assert (=> b!2030129 (= e!1282307 e!1282304)))

(declare-fun b!2030130 () Bool)

(assert (=> b!2030130 (= e!1282308 (= lt!762578 call!124599))))

(assert (= (and d!621039 c!328610) b!2030127))

(assert (= (and d!621039 (not c!328610)) b!2030117))

(assert (= (and d!621039 c!328609) b!2030130))

(assert (= (and d!621039 (not c!328609)) b!2030128))

(assert (= (and b!2030128 c!328611) b!2030118))

(assert (= (and b!2030128 (not c!328611)) b!2030129))

(assert (= (and b!2030129 (not res!890283)) b!2030123))

(assert (= (and b!2030123 res!890285) b!2030124))

(assert (= (and b!2030124 res!890281) b!2030122))

(assert (= (and b!2030122 res!890286) b!2030126))

(assert (= (and b!2030123 (not res!890282)) b!2030125))

(assert (= (and b!2030125 res!890279) b!2030121))

(assert (= (and b!2030121 (not res!890280)) b!2030119))

(assert (= (and b!2030119 (not res!890284)) b!2030120))

(assert (= (or b!2030130 b!2030121 b!2030124) bm!124594))

(assert (=> b!2030122 m!2468357))

(declare-fun m!2470241 () Bool)

(assert (=> b!2030122 m!2470241))

(assert (=> b!2030122 m!2470241))

(declare-fun m!2470243 () Bool)

(assert (=> b!2030122 m!2470243))

(declare-fun m!2470245 () Bool)

(assert (=> b!2030127 m!2470245))

(assert (=> b!2030120 m!2468357))

(declare-fun m!2470247 () Bool)

(assert (=> b!2030120 m!2470247))

(assert (=> b!2030117 m!2468357))

(assert (=> b!2030117 m!2470247))

(assert (=> b!2030117 m!2470247))

(declare-fun m!2470249 () Bool)

(assert (=> b!2030117 m!2470249))

(assert (=> b!2030117 m!2468357))

(assert (=> b!2030117 m!2470241))

(assert (=> b!2030117 m!2470249))

(assert (=> b!2030117 m!2470241))

(declare-fun m!2470251 () Bool)

(assert (=> b!2030117 m!2470251))

(assert (=> b!2030126 m!2468357))

(assert (=> b!2030126 m!2470247))

(assert (=> d!621039 m!2468357))

(declare-fun m!2470253 () Bool)

(assert (=> d!621039 m!2470253))

(declare-fun m!2470255 () Bool)

(assert (=> d!621039 m!2470255))

(assert (=> b!2030119 m!2468357))

(assert (=> b!2030119 m!2470241))

(assert (=> b!2030119 m!2470241))

(assert (=> b!2030119 m!2470243))

(assert (=> bm!124594 m!2468357))

(assert (=> bm!124594 m!2470253))

(assert (=> b!2028998 d!621039))

(assert (=> b!2028998 d!620613))

(assert (=> b!2028998 d!620877))

(assert (=> b!2028998 d!620879))

(declare-fun e!1282315 () List!22289)

(declare-fun b!2030140 () Bool)

(assert (=> b!2030140 (= e!1282315 (ite c!328261 lt!761948 call!124455))))

(declare-fun lt!762584 () List!22289)

(declare-fun b!2030143 () Bool)

(declare-fun e!1282314 () Bool)

(assert (=> b!2030143 (= e!1282314 (or (not (= (ite c!328261 lt!761948 call!124455) Nil!22207)) (= lt!762584 e!1281377)))))

(declare-fun d!621041 () Bool)

(assert (=> d!621041 e!1282314))

(declare-fun res!890295 () Bool)

(assert (=> d!621041 (=> (not res!890295) (not e!1282314))))

(assert (=> d!621041 (= res!890295 (= (content!3278 lt!762584) (set.union (content!3278 e!1281377) (content!3278 (ite c!328261 lt!761948 call!124455)))))))

(assert (=> d!621041 (= lt!762584 e!1282315)))

(declare-fun c!328613 () Bool)

(assert (=> d!621041 (= c!328613 (is-Nil!22207 e!1281377))))

(assert (=> d!621041 (= (++!6004 e!1281377 (ite c!328261 lt!761948 call!124455)) lt!762584)))

(declare-fun b!2030141 () Bool)

(assert (=> b!2030141 (= e!1282315 (Cons!22207 (h!27608 e!1281377) (++!6004 (t!190124 e!1281377) (ite c!328261 lt!761948 call!124455))))))

(declare-fun b!2030142 () Bool)

(declare-fun res!890294 () Bool)

(assert (=> b!2030142 (=> (not res!890294) (not e!1282314))))

(assert (=> b!2030142 (= res!890294 (= (size!17349 lt!762584) (+ (size!17349 e!1281377) (size!17349 (ite c!328261 lt!761948 call!124455)))))))

(assert (= (and d!621041 c!328613) b!2030140))

(assert (= (and d!621041 (not c!328613)) b!2030141))

(assert (= (and d!621041 res!890295) b!2030142))

(assert (= (and b!2030142 res!890294) b!2030143))

(declare-fun m!2470257 () Bool)

(assert (=> d!621041 m!2470257))

(declare-fun m!2470259 () Bool)

(assert (=> d!621041 m!2470259))

(declare-fun m!2470261 () Bool)

(assert (=> d!621041 m!2470261))

(declare-fun m!2470263 () Bool)

(assert (=> b!2030141 m!2470263))

(declare-fun m!2470265 () Bool)

(assert (=> b!2030142 m!2470265))

(declare-fun m!2470267 () Bool)

(assert (=> b!2030142 m!2470267))

(declare-fun m!2470269 () Bool)

(assert (=> b!2030142 m!2470269))

(assert (=> bm!124447 d!621041))

(assert (=> b!2028714 d!620383))

(declare-fun b!2030144 () Bool)

(declare-fun e!1282317 () List!22289)

(assert (=> b!2030144 (= e!1282317 (_2!11913 (get!7053 lt!761878)))))

(declare-fun b!2030147 () Bool)

(declare-fun e!1282316 () Bool)

(declare-fun lt!762585 () List!22289)

(assert (=> b!2030147 (= e!1282316 (or (not (= (_2!11913 (get!7053 lt!761878)) Nil!22207)) (= lt!762585 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761878)))))))))

(declare-fun d!621043 () Bool)

(assert (=> d!621043 e!1282316))

(declare-fun res!890297 () Bool)

(assert (=> d!621043 (=> (not res!890297) (not e!1282316))))

(assert (=> d!621043 (= res!890297 (= (content!3278 lt!762585) (set.union (content!3278 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761878))))) (content!3278 (_2!11913 (get!7053 lt!761878))))))))

(assert (=> d!621043 (= lt!762585 e!1282317)))

(declare-fun c!328614 () Bool)

(assert (=> d!621043 (= c!328614 (is-Nil!22207 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761878))))))))

(assert (=> d!621043 (= (++!6004 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761878)))) (_2!11913 (get!7053 lt!761878))) lt!762585)))

(declare-fun b!2030145 () Bool)

(assert (=> b!2030145 (= e!1282317 (Cons!22207 (h!27608 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761878))))) (++!6004 (t!190124 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761878))))) (_2!11913 (get!7053 lt!761878)))))))

(declare-fun b!2030146 () Bool)

(declare-fun res!890296 () Bool)

(assert (=> b!2030146 (=> (not res!890296) (not e!1282316))))

(assert (=> b!2030146 (= res!890296 (= (size!17349 lt!762585) (+ (size!17349 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761878))))) (size!17349 (_2!11913 (get!7053 lt!761878))))))))

(assert (= (and d!621043 c!328614) b!2030144))

(assert (= (and d!621043 (not c!328614)) b!2030145))

(assert (= (and d!621043 res!890297) b!2030146))

(assert (= (and b!2030146 res!890296) b!2030147))

(declare-fun m!2470271 () Bool)

(assert (=> d!621043 m!2470271))

(assert (=> d!621043 m!2467587))

(declare-fun m!2470273 () Bool)

(assert (=> d!621043 m!2470273))

(declare-fun m!2470277 () Bool)

(assert (=> d!621043 m!2470277))

(declare-fun m!2470279 () Bool)

(assert (=> b!2030145 m!2470279))

(declare-fun m!2470283 () Bool)

(assert (=> b!2030146 m!2470283))

(assert (=> b!2030146 m!2467587))

(declare-fun m!2470285 () Bool)

(assert (=> b!2030146 m!2470285))

(assert (=> b!2030146 m!2467583))

(assert (=> b!2028458 d!621043))

(assert (=> b!2028458 d!620645))

(assert (=> b!2028458 d!620647))

(assert (=> b!2028458 d!620643))

(declare-fun d!621045 () Bool)

(declare-fun res!890298 () Bool)

(declare-fun e!1282318 () Bool)

(assert (=> d!621045 (=> (not res!890298) (not e!1282318))))

(assert (=> d!621045 (= res!890298 (not (isEmpty!13854 (originalCharacters!4798 (h!27610 (t!190126 tokens!598))))))))

(assert (=> d!621045 (= (inv!29390 (h!27610 (t!190126 tokens!598))) e!1282318)))

(declare-fun b!2030148 () Bool)

(declare-fun res!890299 () Bool)

(assert (=> b!2030148 (=> (not res!890299) (not e!1282318))))

(assert (=> b!2030148 (= res!890299 (= (originalCharacters!4798 (h!27610 (t!190126 tokens!598))) (list!9066 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (value!125336 (h!27610 (t!190126 tokens!598)))))))))

(declare-fun b!2030149 () Bool)

(assert (=> b!2030149 (= e!1282318 (= (size!17347 (h!27610 (t!190126 tokens!598))) (size!17349 (originalCharacters!4798 (h!27610 (t!190126 tokens!598))))))))

(assert (= (and d!621045 res!890298) b!2030148))

(assert (= (and b!2030148 res!890299) b!2030149))

(declare-fun b_lambda!68353 () Bool)

(assert (=> (not b_lambda!68353) (not b!2030148)))

(assert (=> b!2030148 t!190249))

(declare-fun b_and!161673 () Bool)

(assert (= b_and!161655 (and (=> t!190249 result!153106) b_and!161673)))

(assert (=> b!2030148 t!190251))

(declare-fun b_and!161675 () Bool)

(assert (= b_and!161661 (and (=> t!190251 result!153108) b_and!161675)))

(assert (=> b!2030148 t!190247))

(declare-fun b_and!161677 () Bool)

(assert (= b_and!161657 (and (=> t!190247 result!153104) b_and!161677)))

(assert (=> b!2030148 t!190253))

(declare-fun b_and!161679 () Bool)

(assert (= b_and!161659 (and (=> t!190253 result!153110) b_and!161679)))

(assert (=> b!2030148 t!190255))

(declare-fun b_and!161681 () Bool)

(assert (= b_and!161653 (and (=> t!190255 result!153112) b_and!161681)))

(declare-fun m!2470317 () Bool)

(assert (=> d!621045 m!2470317))

(assert (=> b!2030148 m!2468759))

(assert (=> b!2030148 m!2468759))

(declare-fun m!2470323 () Bool)

(assert (=> b!2030148 m!2470323))

(declare-fun m!2470325 () Bool)

(assert (=> b!2030149 m!2470325))

(assert (=> b!2029042 d!621045))

(assert (=> d!620309 d!620537))

(assert (=> b!2029025 d!620605))

(declare-fun d!621047 () Bool)

(declare-fun e!1282325 () Bool)

(assert (=> d!621047 e!1282325))

(declare-fun res!890304 () Bool)

(assert (=> d!621047 (=> (not res!890304) (not e!1282325))))

(declare-fun lt!762588 () BalanceConc!14672)

(assert (=> d!621047 (= res!890304 (= (list!9066 lt!762588) lt!761718))))

(declare-fun fromList!500 (List!22289) Conc!7428)

(assert (=> d!621047 (= lt!762588 (BalanceConc!14673 (fromList!500 lt!761718)))))

(assert (=> d!621047 (= (fromListB!1281 lt!761718) lt!762588)))

(declare-fun b!2030158 () Bool)

(assert (=> b!2030158 (= e!1282325 (isBalanced!2316 (fromList!500 lt!761718)))))

(assert (= (and d!621047 res!890304) b!2030158))

(declare-fun m!2470333 () Bool)

(assert (=> d!621047 m!2470333))

(declare-fun m!2470335 () Bool)

(assert (=> d!621047 m!2470335))

(assert (=> b!2030158 m!2470335))

(assert (=> b!2030158 m!2470335))

(declare-fun m!2470337 () Bool)

(assert (=> b!2030158 m!2470337))

(assert (=> d!620345 d!621047))

(assert (=> b!2028677 d!620571))

(declare-fun d!621051 () Bool)

(declare-fun lt!762589 () Int)

(assert (=> d!621051 (>= lt!762589 0)))

(declare-fun e!1282326 () Int)

(assert (=> d!621051 (= lt!762589 e!1282326)))

(declare-fun c!328618 () Bool)

(assert (=> d!621051 (= c!328618 (is-Nil!22207 lt!762037))))

(assert (=> d!621051 (= (size!17349 lt!762037) lt!762589)))

(declare-fun b!2030159 () Bool)

(assert (=> b!2030159 (= e!1282326 0)))

(declare-fun b!2030160 () Bool)

(assert (=> b!2030160 (= e!1282326 (+ 1 (size!17349 (t!190124 lt!762037))))))

(assert (= (and d!621051 c!328618) b!2030159))

(assert (= (and d!621051 (not c!328618)) b!2030160))

(declare-fun m!2470339 () Bool)

(assert (=> b!2030160 m!2470339))

(assert (=> b!2028821 d!621051))

(declare-fun d!621053 () Bool)

(declare-fun lt!762590 () Int)

(assert (=> d!621053 (>= lt!762590 0)))

(declare-fun e!1282327 () Int)

(assert (=> d!621053 (= lt!762590 e!1282327)))

(declare-fun c!328619 () Bool)

(assert (=> d!621053 (= c!328619 (is-Nil!22207 lt!761731))))

(assert (=> d!621053 (= (size!17349 lt!761731) lt!762590)))

(declare-fun b!2030161 () Bool)

(assert (=> b!2030161 (= e!1282327 0)))

(declare-fun b!2030162 () Bool)

(assert (=> b!2030162 (= e!1282327 (+ 1 (size!17349 (t!190124 lt!761731))))))

(assert (= (and d!621053 c!328619) b!2030161))

(assert (= (and d!621053 (not c!328619)) b!2030162))

(assert (=> b!2030162 m!2469071))

(assert (=> b!2028821 d!621053))

(assert (=> b!2028821 d!620747))

(declare-fun b!2030166 () Bool)

(declare-fun e!1282331 () List!22289)

(assert (=> b!2030166 (= e!1282331 lt!762092)))

(declare-fun e!1282330 () Bool)

(declare-fun lt!762591 () List!22289)

(declare-fun b!2030169 () Bool)

(assert (=> b!2030169 (= e!1282330 (or (not (= lt!762092 Nil!22207)) (= lt!762591 call!124486)))))

(declare-fun d!621055 () Bool)

(assert (=> d!621055 e!1282330))

(declare-fun res!890307 () Bool)

(assert (=> d!621055 (=> (not res!890307) (not e!1282330))))

(assert (=> d!621055 (= res!890307 (= (content!3278 lt!762591) (set.union (content!3278 call!124486) (content!3278 lt!762092))))))

(assert (=> d!621055 (= lt!762591 e!1282331)))

(declare-fun c!328621 () Bool)

(assert (=> d!621055 (= c!328621 (is-Nil!22207 call!124486))))

(assert (=> d!621055 (= (++!6004 call!124486 lt!762092) lt!762591)))

(declare-fun b!2030167 () Bool)

(assert (=> b!2030167 (= e!1282331 (Cons!22207 (h!27608 call!124486) (++!6004 (t!190124 call!124486) lt!762092)))))

(declare-fun b!2030168 () Bool)

(declare-fun res!890306 () Bool)

(assert (=> b!2030168 (=> (not res!890306) (not e!1282330))))

(assert (=> b!2030168 (= res!890306 (= (size!17349 lt!762591) (+ (size!17349 call!124486) (size!17349 lt!762092))))))

(assert (= (and d!621055 c!328621) b!2030166))

(assert (= (and d!621055 (not c!328621)) b!2030167))

(assert (= (and d!621055 res!890307) b!2030168))

(assert (= (and b!2030168 res!890306) b!2030169))

(declare-fun m!2470345 () Bool)

(assert (=> d!621055 m!2470345))

(declare-fun m!2470347 () Bool)

(assert (=> d!621055 m!2470347))

(declare-fun m!2470349 () Bool)

(assert (=> d!621055 m!2470349))

(declare-fun m!2470351 () Bool)

(assert (=> b!2030167 m!2470351))

(declare-fun m!2470353 () Bool)

(assert (=> b!2030168 m!2470353))

(declare-fun m!2470355 () Bool)

(assert (=> b!2030168 m!2470355))

(declare-fun m!2470357 () Bool)

(assert (=> b!2030168 m!2470357))

(assert (=> b!2029006 d!621055))

(declare-fun d!621059 () Bool)

(assert (=> d!621059 (= (isEmpty!13862 lt!761702) (not (is-Some!4665 lt!761702)))))

(assert (=> d!620303 d!621059))

(assert (=> b!2028669 d!620765))

(assert (=> b!2028669 d!620607))

(declare-fun d!621061 () Bool)

(declare-fun lt!762593 () Int)

(assert (=> d!621061 (>= lt!762593 0)))

(declare-fun e!1282339 () Int)

(assert (=> d!621061 (= lt!762593 e!1282339)))

(declare-fun c!328625 () Bool)

(assert (=> d!621061 (= c!328625 (is-Nil!22207 (originalCharacters!4798 (h!27610 tokens!598))))))

(assert (=> d!621061 (= (size!17349 (originalCharacters!4798 (h!27610 tokens!598))) lt!762593)))

(declare-fun b!2030184 () Bool)

(assert (=> b!2030184 (= e!1282339 0)))

(declare-fun b!2030185 () Bool)

(assert (=> b!2030185 (= e!1282339 (+ 1 (size!17349 (t!190124 (originalCharacters!4798 (h!27610 tokens!598))))))))

(assert (= (and d!621061 c!328625) b!2030184))

(assert (= (and d!621061 (not c!328625)) b!2030185))

(declare-fun m!2470359 () Bool)

(assert (=> b!2030185 m!2470359))

(assert (=> b!2028904 d!621061))

(declare-fun b!2030186 () Bool)

(declare-fun res!890319 () Bool)

(declare-fun e!1282342 () Bool)

(assert (=> b!2030186 (=> (not res!890319) (not e!1282342))))

(declare-fun lt!762594 () Option!4665)

(assert (=> b!2030186 (= res!890319 (< (size!17349 (_2!11913 (get!7053 lt!762594))) (size!17349 (++!6004 (list!9066 (charsOf!2531 (h!27610 tokens!598))) lt!762092))))))

(declare-fun b!2030187 () Bool)

(declare-fun res!890321 () Bool)

(assert (=> b!2030187 (=> (not res!890321) (not e!1282342))))

(assert (=> b!2030187 (= res!890321 (= (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762594)))) (originalCharacters!4798 (_1!11913 (get!7053 lt!762594)))))))

(declare-fun b!2030188 () Bool)

(assert (=> b!2030188 (= e!1282342 (contains!4097 rules!3198 (rule!6220 (_1!11913 (get!7053 lt!762594)))))))

(declare-fun b!2030189 () Bool)

(declare-fun e!1282340 () Option!4665)

(declare-fun call!124601 () Option!4665)

(assert (=> b!2030189 (= e!1282340 call!124601)))

(declare-fun d!621063 () Bool)

(declare-fun e!1282341 () Bool)

(assert (=> d!621063 e!1282341))

(declare-fun res!890316 () Bool)

(assert (=> d!621063 (=> res!890316 e!1282341)))

(assert (=> d!621063 (= res!890316 (isEmpty!13861 lt!762594))))

(assert (=> d!621063 (= lt!762594 e!1282340)))

(declare-fun c!328626 () Bool)

(assert (=> d!621063 (= c!328626 (and (is-Cons!22208 rules!3198) (is-Nil!22208 (t!190125 rules!3198))))))

(declare-fun lt!762598 () Unit!36865)

(declare-fun lt!762597 () Unit!36865)

(assert (=> d!621063 (= lt!762598 lt!762597)))

(assert (=> d!621063 (isPrefix!1984 (++!6004 (list!9066 (charsOf!2531 (h!27610 tokens!598))) lt!762092) (++!6004 (list!9066 (charsOf!2531 (h!27610 tokens!598))) lt!762092))))

(assert (=> d!621063 (= lt!762597 (lemmaIsPrefixRefl!1302 (++!6004 (list!9066 (charsOf!2531 (h!27610 tokens!598))) lt!762092) (++!6004 (list!9066 (charsOf!2531 (h!27610 tokens!598))) lt!762092)))))

(assert (=> d!621063 (rulesValidInductive!1383 thiss!23328 rules!3198)))

(assert (=> d!621063 (= (maxPrefix!2040 thiss!23328 rules!3198 (++!6004 (list!9066 (charsOf!2531 (h!27610 tokens!598))) lt!762092)) lt!762594)))

(declare-fun b!2030190 () Bool)

(declare-fun res!890318 () Bool)

(assert (=> b!2030190 (=> (not res!890318) (not e!1282342))))

(assert (=> b!2030190 (= res!890318 (matchR!2682 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762594)))) (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762594))))))))

(declare-fun b!2030191 () Bool)

(declare-fun res!890320 () Bool)

(assert (=> b!2030191 (=> (not res!890320) (not e!1282342))))

(assert (=> b!2030191 (= res!890320 (= (++!6004 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762594)))) (_2!11913 (get!7053 lt!762594))) (++!6004 (list!9066 (charsOf!2531 (h!27610 tokens!598))) lt!762092)))))

(declare-fun b!2030192 () Bool)

(declare-fun lt!762595 () Option!4665)

(declare-fun lt!762596 () Option!4665)

(assert (=> b!2030192 (= e!1282340 (ite (and (is-None!4664 lt!762595) (is-None!4664 lt!762596)) None!4664 (ite (is-None!4664 lt!762596) lt!762595 (ite (is-None!4664 lt!762595) lt!762596 (ite (>= (size!17347 (_1!11913 (v!26989 lt!762595))) (size!17347 (_1!11913 (v!26989 lt!762596)))) lt!762595 lt!762596)))))))

(assert (=> b!2030192 (= lt!762595 call!124601)))

(assert (=> b!2030192 (= lt!762596 (maxPrefix!2040 thiss!23328 (t!190125 rules!3198) (++!6004 (list!9066 (charsOf!2531 (h!27610 tokens!598))) lt!762092)))))

(declare-fun b!2030193 () Bool)

(declare-fun res!890322 () Bool)

(assert (=> b!2030193 (=> (not res!890322) (not e!1282342))))

(assert (=> b!2030193 (= res!890322 (= (value!125336 (_1!11913 (get!7053 lt!762594))) (apply!5846 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762594)))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!762594)))))))))

(declare-fun b!2030194 () Bool)

(assert (=> b!2030194 (= e!1282341 e!1282342)))

(declare-fun res!890317 () Bool)

(assert (=> b!2030194 (=> (not res!890317) (not e!1282342))))

(assert (=> b!2030194 (= res!890317 (isDefined!3954 lt!762594))))

(declare-fun bm!124596 () Bool)

(assert (=> bm!124596 (= call!124601 (maxPrefixOneRule!1266 thiss!23328 (h!27609 rules!3198) (++!6004 (list!9066 (charsOf!2531 (h!27610 tokens!598))) lt!762092)))))

(assert (= (and d!621063 c!328626) b!2030189))

(assert (= (and d!621063 (not c!328626)) b!2030192))

(assert (= (or b!2030189 b!2030192) bm!124596))

(assert (= (and d!621063 (not res!890316)) b!2030194))

(assert (= (and b!2030194 res!890317) b!2030187))

(assert (= (and b!2030187 res!890321) b!2030186))

(assert (= (and b!2030186 res!890319) b!2030191))

(assert (= (and b!2030191 res!890320) b!2030193))

(assert (= (and b!2030193 res!890322) b!2030190))

(assert (= (and b!2030190 res!890318) b!2030188))

(declare-fun m!2470379 () Bool)

(assert (=> b!2030186 m!2470379))

(declare-fun m!2470381 () Bool)

(assert (=> b!2030186 m!2470381))

(assert (=> b!2030186 m!2468389))

(declare-fun m!2470383 () Bool)

(assert (=> b!2030186 m!2470383))

(assert (=> b!2030191 m!2470379))

(declare-fun m!2470385 () Bool)

(assert (=> b!2030191 m!2470385))

(assert (=> b!2030191 m!2470385))

(declare-fun m!2470387 () Bool)

(assert (=> b!2030191 m!2470387))

(assert (=> b!2030191 m!2470387))

(declare-fun m!2470389 () Bool)

(assert (=> b!2030191 m!2470389))

(assert (=> bm!124596 m!2468389))

(declare-fun m!2470391 () Bool)

(assert (=> bm!124596 m!2470391))

(declare-fun m!2470393 () Bool)

(assert (=> b!2030194 m!2470393))

(assert (=> b!2030193 m!2470379))

(declare-fun m!2470395 () Bool)

(assert (=> b!2030193 m!2470395))

(assert (=> b!2030193 m!2470395))

(declare-fun m!2470399 () Bool)

(assert (=> b!2030193 m!2470399))

(assert (=> b!2030192 m!2468389))

(declare-fun m!2470403 () Bool)

(assert (=> b!2030192 m!2470403))

(assert (=> b!2030188 m!2470379))

(declare-fun m!2470405 () Bool)

(assert (=> b!2030188 m!2470405))

(declare-fun m!2470407 () Bool)

(assert (=> d!621063 m!2470407))

(assert (=> d!621063 m!2468389))

(assert (=> d!621063 m!2468389))

(declare-fun m!2470409 () Bool)

(assert (=> d!621063 m!2470409))

(assert (=> d!621063 m!2468389))

(assert (=> d!621063 m!2468389))

(declare-fun m!2470411 () Bool)

(assert (=> d!621063 m!2470411))

(assert (=> d!621063 m!2467623))

(assert (=> b!2030190 m!2470379))

(assert (=> b!2030190 m!2470385))

(assert (=> b!2030190 m!2470385))

(assert (=> b!2030190 m!2470387))

(assert (=> b!2030190 m!2470387))

(declare-fun m!2470417 () Bool)

(assert (=> b!2030190 m!2470417))

(assert (=> b!2030187 m!2470379))

(assert (=> b!2030187 m!2470385))

(assert (=> b!2030187 m!2470385))

(assert (=> b!2030187 m!2470387))

(assert (=> b!2029003 d!621063))

(assert (=> b!2029003 d!620257))

(declare-fun d!621073 () Bool)

(assert (=> d!621073 (dynLambda!11048 lambda!76499 (h!27610 tokens!598))))

(declare-fun lt!762600 () Unit!36865)

(assert (=> d!621073 (= lt!762600 (choose!12380 tokens!598 lambda!76499 (h!27610 tokens!598)))))

(declare-fun e!1282344 () Bool)

(assert (=> d!621073 e!1282344))

(declare-fun res!890323 () Bool)

(assert (=> d!621073 (=> (not res!890323) (not e!1282344))))

(assert (=> d!621073 (= res!890323 (forall!4723 tokens!598 lambda!76499))))

(assert (=> d!621073 (= (forallContained!747 tokens!598 lambda!76499 (h!27610 tokens!598)) lt!762600)))

(declare-fun b!2030196 () Bool)

(assert (=> b!2030196 (= e!1282344 (contains!4101 tokens!598 (h!27610 tokens!598)))))

(assert (= (and d!621073 res!890323) b!2030196))

(declare-fun b_lambda!68357 () Bool)

(assert (=> (not b_lambda!68357) (not d!621073)))

(declare-fun m!2470419 () Bool)

(assert (=> d!621073 m!2470419))

(declare-fun m!2470421 () Bool)

(assert (=> d!621073 m!2470421))

(declare-fun m!2470423 () Bool)

(assert (=> d!621073 m!2470423))

(declare-fun m!2470425 () Bool)

(assert (=> b!2030196 m!2470425))

(assert (=> b!2029003 d!621073))

(assert (=> b!2029003 d!620299))

(declare-fun b!2030197 () Bool)

(declare-fun e!1282346 () List!22289)

(assert (=> b!2030197 (= e!1282346 lt!762092)))

(declare-fun lt!762601 () List!22289)

(declare-fun e!1282345 () Bool)

(declare-fun b!2030200 () Bool)

(assert (=> b!2030200 (= e!1282345 (or (not (= lt!762092 Nil!22207)) (= lt!762601 (list!9066 (charsOf!2531 (h!27610 tokens!598))))))))

(declare-fun d!621075 () Bool)

(assert (=> d!621075 e!1282345))

(declare-fun res!890325 () Bool)

(assert (=> d!621075 (=> (not res!890325) (not e!1282345))))

(assert (=> d!621075 (= res!890325 (= (content!3278 lt!762601) (set.union (content!3278 (list!9066 (charsOf!2531 (h!27610 tokens!598)))) (content!3278 lt!762092))))))

(assert (=> d!621075 (= lt!762601 e!1282346)))

(declare-fun c!328627 () Bool)

(assert (=> d!621075 (= c!328627 (is-Nil!22207 (list!9066 (charsOf!2531 (h!27610 tokens!598)))))))

(assert (=> d!621075 (= (++!6004 (list!9066 (charsOf!2531 (h!27610 tokens!598))) lt!762092) lt!762601)))

(declare-fun b!2030198 () Bool)

(assert (=> b!2030198 (= e!1282346 (Cons!22207 (h!27608 (list!9066 (charsOf!2531 (h!27610 tokens!598)))) (++!6004 (t!190124 (list!9066 (charsOf!2531 (h!27610 tokens!598)))) lt!762092)))))

(declare-fun b!2030199 () Bool)

(declare-fun res!890324 () Bool)

(assert (=> b!2030199 (=> (not res!890324) (not e!1282345))))

(assert (=> b!2030199 (= res!890324 (= (size!17349 lt!762601) (+ (size!17349 (list!9066 (charsOf!2531 (h!27610 tokens!598)))) (size!17349 lt!762092))))))

(assert (= (and d!621075 c!328627) b!2030197))

(assert (= (and d!621075 (not c!328627)) b!2030198))

(assert (= (and d!621075 res!890325) b!2030199))

(assert (= (and b!2030199 res!890324) b!2030200))

(declare-fun m!2470427 () Bool)

(assert (=> d!621075 m!2470427))

(assert (=> d!621075 m!2467471))

(assert (=> d!621075 m!2469091))

(assert (=> d!621075 m!2470349))

(declare-fun m!2470429 () Bool)

(assert (=> b!2030198 m!2470429))

(declare-fun m!2470431 () Bool)

(assert (=> b!2030199 m!2470431))

(assert (=> b!2030199 m!2467471))

(assert (=> b!2030199 m!2469097))

(assert (=> b!2030199 m!2470357))

(assert (=> b!2029003 d!621075))

(assert (=> b!2029003 d!620669))

(declare-fun d!621077 () Bool)

(assert (=> d!621077 (= (isEmpty!13854 (originalCharacters!4798 separatorToken!354)) (is-Nil!22207 (originalCharacters!4798 separatorToken!354)))))

(assert (=> d!620483 d!621077))

(assert (=> d!620423 d!620689))

(declare-fun bm!124597 () Bool)

(declare-fun call!124604 () Bool)

(declare-fun call!124603 () Bool)

(assert (=> bm!124597 (= call!124604 call!124603)))

(declare-fun d!621079 () Bool)

(declare-fun res!890327 () Bool)

(declare-fun e!1282353 () Bool)

(assert (=> d!621079 (=> res!890327 e!1282353)))

(assert (=> d!621079 (= res!890327 (is-ElementMatch!5416 (regex!3991 lt!761717)))))

(assert (=> d!621079 (= (validRegex!2179 (regex!3991 lt!761717)) e!1282353)))

(declare-fun b!2030209 () Bool)

(declare-fun e!1282352 () Bool)

(assert (=> b!2030209 (= e!1282352 call!124604)))

(declare-fun b!2030210 () Bool)

(declare-fun res!890326 () Bool)

(declare-fun e!1282351 () Bool)

(assert (=> b!2030210 (=> (not res!890326) (not e!1282351))))

(declare-fun call!124602 () Bool)

(assert (=> b!2030210 (= res!890326 call!124602)))

(declare-fun e!1282356 () Bool)

(assert (=> b!2030210 (= e!1282356 e!1282351)))

(declare-fun c!328633 () Bool)

(declare-fun bm!124598 () Bool)

(declare-fun c!328632 () Bool)

(assert (=> bm!124598 (= call!124603 (validRegex!2179 (ite c!328633 (reg!5745 (regex!3991 lt!761717)) (ite c!328632 (regTwo!11345 (regex!3991 lt!761717)) (regTwo!11344 (regex!3991 lt!761717))))))))

(declare-fun b!2030211 () Bool)

(declare-fun e!1282357 () Bool)

(assert (=> b!2030211 (= e!1282357 e!1282352)))

(declare-fun res!890330 () Bool)

(assert (=> b!2030211 (=> (not res!890330) (not e!1282352))))

(assert (=> b!2030211 (= res!890330 call!124602)))

(declare-fun b!2030212 () Bool)

(declare-fun res!890328 () Bool)

(assert (=> b!2030212 (=> res!890328 e!1282357)))

(assert (=> b!2030212 (= res!890328 (not (is-Concat!9544 (regex!3991 lt!761717))))))

(assert (=> b!2030212 (= e!1282356 e!1282357)))

(declare-fun b!2030213 () Bool)

(declare-fun e!1282355 () Bool)

(assert (=> b!2030213 (= e!1282355 e!1282356)))

(assert (=> b!2030213 (= c!328632 (is-Union!5416 (regex!3991 lt!761717)))))

(declare-fun bm!124599 () Bool)

(assert (=> bm!124599 (= call!124602 (validRegex!2179 (ite c!328632 (regOne!11345 (regex!3991 lt!761717)) (regOne!11344 (regex!3991 lt!761717)))))))

(declare-fun b!2030214 () Bool)

(declare-fun e!1282354 () Bool)

(assert (=> b!2030214 (= e!1282355 e!1282354)))

(declare-fun res!890329 () Bool)

(assert (=> b!2030214 (= res!890329 (not (nullable!1653 (reg!5745 (regex!3991 lt!761717)))))))

(assert (=> b!2030214 (=> (not res!890329) (not e!1282354))))

(declare-fun b!2030215 () Bool)

(assert (=> b!2030215 (= e!1282354 call!124603)))

(declare-fun b!2030216 () Bool)

(assert (=> b!2030216 (= e!1282351 call!124604)))

(declare-fun b!2030217 () Bool)

(assert (=> b!2030217 (= e!1282353 e!1282355)))

(assert (=> b!2030217 (= c!328633 (is-Star!5416 (regex!3991 lt!761717)))))

(assert (= (and d!621079 (not res!890327)) b!2030217))

(assert (= (and b!2030217 c!328633) b!2030214))

(assert (= (and b!2030217 (not c!328633)) b!2030213))

(assert (= (and b!2030214 res!890329) b!2030215))

(assert (= (and b!2030213 c!328632) b!2030210))

(assert (= (and b!2030213 (not c!328632)) b!2030212))

(assert (= (and b!2030210 res!890326) b!2030216))

(assert (= (and b!2030212 (not res!890328)) b!2030211))

(assert (= (and b!2030211 res!890330) b!2030209))

(assert (= (or b!2030210 b!2030211) bm!124599))

(assert (= (or b!2030216 b!2030209) bm!124597))

(assert (= (or b!2030215 bm!124597) bm!124598))

(declare-fun m!2470433 () Bool)

(assert (=> bm!124598 m!2470433))

(declare-fun m!2470435 () Bool)

(assert (=> bm!124599 m!2470435))

(declare-fun m!2470437 () Bool)

(assert (=> b!2030214 m!2470437))

(assert (=> d!620423 d!621079))

(declare-fun b!2030218 () Bool)

(declare-fun e!1282358 () Bool)

(assert (=> b!2030218 (= e!1282358 (inv!17 (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729)))))

(declare-fun b!2030219 () Bool)

(declare-fun e!1282360 () Bool)

(assert (=> b!2030219 (= e!1282360 (inv!16 (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729)))))

(declare-fun d!621081 () Bool)

(declare-fun c!328634 () Bool)

(assert (=> d!621081 (= c!328634 (is-IntegerValue!12381 (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729)))))

(assert (=> d!621081 (= (inv!21 (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729)) e!1282360)))

(declare-fun b!2030220 () Bool)

(declare-fun e!1282359 () Bool)

(assert (=> b!2030220 (= e!1282359 (inv!15 (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729)))))

(declare-fun b!2030221 () Bool)

(declare-fun res!890331 () Bool)

(assert (=> b!2030221 (=> res!890331 e!1282359)))

(assert (=> b!2030221 (= res!890331 (not (is-IntegerValue!12383 (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729))))))

(assert (=> b!2030221 (= e!1282358 e!1282359)))

(declare-fun b!2030222 () Bool)

(assert (=> b!2030222 (= e!1282360 e!1282358)))

(declare-fun c!328635 () Bool)

(assert (=> b!2030222 (= c!328635 (is-IntegerValue!12382 (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729)))))

(assert (= (and d!621081 c!328634) b!2030219))

(assert (= (and d!621081 (not c!328634)) b!2030222))

(assert (= (and b!2030222 c!328635) b!2030218))

(assert (= (and b!2030222 (not c!328635)) b!2030221))

(assert (= (and b!2030221 (not res!890331)) b!2030220))

(declare-fun m!2470439 () Bool)

(assert (=> b!2030218 m!2470439))

(declare-fun m!2470441 () Bool)

(assert (=> b!2030219 m!2470441))

(declare-fun m!2470443 () Bool)

(assert (=> b!2030220 m!2470443))

(assert (=> tb!127841 d!621081))

(assert (=> b!2028494 d!621025))

(assert (=> b!2028494 d!620295))

(declare-fun bs!420909 () Bool)

(declare-fun d!621083 () Bool)

(assert (= bs!420909 (and d!621083 d!620293)))

(declare-fun lambda!76526 () Int)

(assert (=> bs!420909 (= lambda!76526 lambda!76492)))

(declare-fun bs!420910 () Bool)

(assert (= bs!420910 (and d!621083 d!620693)))

(assert (=> bs!420910 (= (and (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toChars!5523 (transformation!3991 (h!27609 rules!3198)))) (= (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toValue!5664 (transformation!3991 (h!27609 rules!3198))))) (= lambda!76526 lambda!76515))))

(declare-fun bs!420911 () Bool)

(assert (= bs!420911 (and d!621083 d!620931)))

(assert (=> bs!420911 (= (and (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354)))) (= (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toValue!5664 (transformation!3991 (rule!6220 separatorToken!354))))) (= lambda!76526 lambda!76523))))

(assert (=> d!621083 true))

(assert (=> d!621083 (< (dynLambda!11039 order!14221 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) (dynLambda!11042 order!14225 lambda!76526))))

(assert (=> d!621083 true))

(assert (=> d!621083 (< (dynLambda!11037 order!14217 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) (dynLambda!11042 order!14225 lambda!76526))))

(assert (=> d!621083 (= (semiInverseModEq!1608 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) (Forall!1019 lambda!76526))))

(declare-fun bs!420912 () Bool)

(assert (= bs!420912 d!621083))

(declare-fun m!2470461 () Bool)

(assert (=> bs!420912 m!2470461))

(assert (=> d!620437 d!621083))

(declare-fun d!621087 () Bool)

(assert (=> d!621087 (= (inv!29394 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (value!125336 separatorToken!354))) (isBalanced!2316 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (value!125336 separatorToken!354)))))))

(declare-fun bs!420913 () Bool)

(assert (= bs!420913 d!621087))

(declare-fun m!2470469 () Bool)

(assert (=> bs!420913 m!2470469))

(assert (=> tb!127871 d!621087))

(assert (=> b!2028989 d!620421))

(assert (=> d!620317 d!620315))

(declare-fun d!621091 () Bool)

(assert (=> d!621091 (ruleValid!1222 thiss!23328 (rule!6220 (h!27610 tokens!598)))))

(assert (=> d!621091 true))

(declare-fun _$65!1010 () Unit!36865)

(assert (=> d!621091 (= (choose!12365 thiss!23328 (rule!6220 (h!27610 tokens!598)) rules!3198) _$65!1010)))

(declare-fun bs!420914 () Bool)

(assert (= bs!420914 d!621091))

(assert (=> bs!420914 m!2467257))

(assert (=> d!620317 d!621091))

(assert (=> d!620317 d!620477))

(declare-fun d!621095 () Bool)

(declare-fun e!1282374 () Bool)

(assert (=> d!621095 e!1282374))

(declare-fun c!328643 () Bool)

(assert (=> d!621095 (= c!328643 (is-EmptyExpr!5416 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762043))))))))

(declare-fun lt!762603 () Bool)

(declare-fun e!1282372 () Bool)

(assert (=> d!621095 (= lt!762603 e!1282372)))

(declare-fun c!328644 () Bool)

(assert (=> d!621095 (= c!328644 (isEmpty!13854 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762043))))))))

(assert (=> d!621095 (validRegex!2179 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762043)))))))

(assert (=> d!621095 (= (matchR!2682 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762043)))) (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762043))))) lt!762603)))

(declare-fun b!2030239 () Bool)

(assert (=> b!2030239 (= e!1282372 (matchR!2682 (derivativeStep!1412 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762043)))) (head!4584 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762043)))))) (tail!3060 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762043)))))))))

(declare-fun b!2030240 () Bool)

(declare-fun e!1282373 () Bool)

(assert (=> b!2030240 (= e!1282373 (not lt!762603))))

(declare-fun b!2030241 () Bool)

(declare-fun res!890339 () Bool)

(declare-fun e!1282371 () Bool)

(assert (=> b!2030241 (=> res!890339 e!1282371)))

(assert (=> b!2030241 (= res!890339 (not (isEmpty!13854 (tail!3060 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762043))))))))))

(declare-fun b!2030242 () Bool)

(assert (=> b!2030242 (= e!1282371 (not (= (head!4584 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762043))))) (c!328192 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762043))))))))))

(declare-fun b!2030243 () Bool)

(declare-fun e!1282375 () Bool)

(assert (=> b!2030243 (= e!1282375 e!1282371)))

(declare-fun res!890335 () Bool)

(assert (=> b!2030243 (=> res!890335 e!1282371)))

(declare-fun call!124609 () Bool)

(assert (=> b!2030243 (= res!890335 call!124609)))

(declare-fun b!2030244 () Bool)

(declare-fun res!890341 () Bool)

(declare-fun e!1282369 () Bool)

(assert (=> b!2030244 (=> (not res!890341) (not e!1282369))))

(assert (=> b!2030244 (= res!890341 (isEmpty!13854 (tail!3060 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762043)))))))))

(declare-fun b!2030247 () Bool)

(declare-fun res!890337 () Bool)

(declare-fun e!1282370 () Bool)

(assert (=> b!2030247 (=> res!890337 e!1282370)))

(assert (=> b!2030247 (= res!890337 e!1282369)))

(declare-fun res!890340 () Bool)

(assert (=> b!2030247 (=> (not res!890340) (not e!1282369))))

(assert (=> b!2030247 (= res!890340 lt!762603)))

(declare-fun b!2030248 () Bool)

(declare-fun res!890336 () Bool)

(assert (=> b!2030248 (=> (not res!890336) (not e!1282369))))

(assert (=> b!2030248 (= res!890336 (not call!124609))))

(declare-fun b!2030249 () Bool)

(assert (=> b!2030249 (= e!1282370 e!1282375)))

(declare-fun res!890334 () Bool)

(assert (=> b!2030249 (=> (not res!890334) (not e!1282375))))

(assert (=> b!2030249 (= res!890334 (not lt!762603))))

(declare-fun b!2030250 () Bool)

(assert (=> b!2030250 (= e!1282369 (= (head!4584 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762043))))) (c!328192 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762043)))))))))

(declare-fun b!2030251 () Bool)

(assert (=> b!2030251 (= e!1282372 (nullable!1653 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762043))))))))

(declare-fun b!2030252 () Bool)

(assert (=> b!2030252 (= e!1282374 e!1282373)))

(declare-fun c!328645 () Bool)

(assert (=> b!2030252 (= c!328645 (is-EmptyLang!5416 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762043))))))))

(declare-fun bm!124604 () Bool)

(assert (=> bm!124604 (= call!124609 (isEmpty!13854 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762043))))))))

(declare-fun b!2030254 () Bool)

(declare-fun res!890338 () Bool)

(assert (=> b!2030254 (=> res!890338 e!1282370)))

(assert (=> b!2030254 (= res!890338 (not (is-ElementMatch!5416 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762043)))))))))

(assert (=> b!2030254 (= e!1282373 e!1282370)))

(declare-fun b!2030256 () Bool)

(assert (=> b!2030256 (= e!1282374 (= lt!762603 call!124609))))

(assert (= (and d!621095 c!328644) b!2030251))

(assert (= (and d!621095 (not c!328644)) b!2030239))

(assert (= (and d!621095 c!328643) b!2030256))

(assert (= (and d!621095 (not c!328643)) b!2030252))

(assert (= (and b!2030252 c!328645) b!2030240))

(assert (= (and b!2030252 (not c!328645)) b!2030254))

(assert (= (and b!2030254 (not res!890338)) b!2030247))

(assert (= (and b!2030247 res!890340) b!2030248))

(assert (= (and b!2030248 res!890336) b!2030244))

(assert (= (and b!2030244 res!890341) b!2030250))

(assert (= (and b!2030247 (not res!890337)) b!2030249))

(assert (= (and b!2030249 res!890334) b!2030243))

(assert (= (and b!2030243 (not res!890335)) b!2030241))

(assert (= (and b!2030241 (not res!890339)) b!2030242))

(assert (= (or b!2030256 b!2030243 b!2030248) bm!124604))

(assert (=> b!2030244 m!2468139))

(declare-fun m!2470477 () Bool)

(assert (=> b!2030244 m!2470477))

(assert (=> b!2030244 m!2470477))

(declare-fun m!2470479 () Bool)

(assert (=> b!2030244 m!2470479))

(declare-fun m!2470481 () Bool)

(assert (=> b!2030251 m!2470481))

(assert (=> b!2030242 m!2468139))

(declare-fun m!2470483 () Bool)

(assert (=> b!2030242 m!2470483))

(assert (=> b!2030239 m!2468139))

(assert (=> b!2030239 m!2470483))

(assert (=> b!2030239 m!2470483))

(declare-fun m!2470487 () Bool)

(assert (=> b!2030239 m!2470487))

(assert (=> b!2030239 m!2468139))

(assert (=> b!2030239 m!2470477))

(assert (=> b!2030239 m!2470487))

(assert (=> b!2030239 m!2470477))

(declare-fun m!2470489 () Bool)

(assert (=> b!2030239 m!2470489))

(assert (=> b!2030250 m!2468139))

(assert (=> b!2030250 m!2470483))

(assert (=> d!621095 m!2468139))

(declare-fun m!2470493 () Bool)

(assert (=> d!621095 m!2470493))

(declare-fun m!2470497 () Bool)

(assert (=> d!621095 m!2470497))

(assert (=> b!2030241 m!2468139))

(assert (=> b!2030241 m!2470477))

(assert (=> b!2030241 m!2470477))

(assert (=> b!2030241 m!2470479))

(assert (=> bm!124604 m!2468139))

(assert (=> bm!124604 m!2470493))

(assert (=> b!2028847 d!621095))

(assert (=> b!2028847 d!620585))

(assert (=> b!2028847 d!620581))

(assert (=> b!2028847 d!620583))

(declare-fun d!621101 () Bool)

(declare-fun e!1282380 () Bool)

(assert (=> d!621101 e!1282380))

(declare-fun res!890343 () Bool)

(assert (=> d!621101 (=> (not res!890343) (not e!1282380))))

(declare-fun lt!762604 () BalanceConc!14672)

(assert (=> d!621101 (= res!890343 (= (list!9066 lt!762604) (originalCharacters!4798 (h!27610 tokens!598))))))

(assert (=> d!621101 (= lt!762604 (BalanceConc!14673 (fromList!500 (originalCharacters!4798 (h!27610 tokens!598)))))))

(assert (=> d!621101 (= (fromListB!1281 (originalCharacters!4798 (h!27610 tokens!598))) lt!762604)))

(declare-fun b!2030260 () Bool)

(assert (=> b!2030260 (= e!1282380 (isBalanced!2316 (fromList!500 (originalCharacters!4798 (h!27610 tokens!598)))))))

(assert (= (and d!621101 res!890343) b!2030260))

(declare-fun m!2470499 () Bool)

(assert (=> d!621101 m!2470499))

(declare-fun m!2470501 () Bool)

(assert (=> d!621101 m!2470501))

(assert (=> b!2030260 m!2470501))

(assert (=> b!2030260 m!2470501))

(declare-fun m!2470503 () Bool)

(assert (=> b!2030260 m!2470503))

(assert (=> d!620301 d!621101))

(declare-fun d!621103 () Bool)

(declare-fun lt!762605 () Bool)

(assert (=> d!621103 (= lt!762605 (isEmpty!13854 (list!9066 (_2!11914 (lex!1620 thiss!23328 rules!3198 (print!1566 thiss!23328 (singletonSeq!1967 separatorToken!354)))))))))

(assert (=> d!621103 (= lt!762605 (isEmpty!13869 (c!328191 (_2!11914 (lex!1620 thiss!23328 rules!3198 (print!1566 thiss!23328 (singletonSeq!1967 separatorToken!354)))))))))

(assert (=> d!621103 (= (isEmpty!13864 (_2!11914 (lex!1620 thiss!23328 rules!3198 (print!1566 thiss!23328 (singletonSeq!1967 separatorToken!354))))) lt!762605)))

(declare-fun bs!420915 () Bool)

(assert (= bs!420915 d!621103))

(declare-fun m!2470505 () Bool)

(assert (=> bs!420915 m!2470505))

(assert (=> bs!420915 m!2470505))

(declare-fun m!2470507 () Bool)

(assert (=> bs!420915 m!2470507))

(declare-fun m!2470509 () Bool)

(assert (=> bs!420915 m!2470509))

(assert (=> b!2028638 d!621103))

(assert (=> b!2028638 d!621019))

(assert (=> b!2028638 d!621013))

(assert (=> b!2028638 d!621011))

(declare-fun b!2030261 () Bool)

(declare-fun e!1282382 () List!22289)

(assert (=> b!2030261 (= e!1282382 lt!761704)))

(declare-fun b!2030264 () Bool)

(declare-fun lt!762606 () List!22289)

(declare-fun e!1282381 () Bool)

(assert (=> b!2030264 (= e!1282381 (or (not (= lt!761704 Nil!22207)) (= lt!762606 (t!190124 lt!761718))))))

(declare-fun d!621105 () Bool)

(assert (=> d!621105 e!1282381))

(declare-fun res!890345 () Bool)

(assert (=> d!621105 (=> (not res!890345) (not e!1282381))))

(assert (=> d!621105 (= res!890345 (= (content!3278 lt!762606) (set.union (content!3278 (t!190124 lt!761718)) (content!3278 lt!761704))))))

(assert (=> d!621105 (= lt!762606 e!1282382)))

(declare-fun c!328649 () Bool)

(assert (=> d!621105 (= c!328649 (is-Nil!22207 (t!190124 lt!761718)))))

(assert (=> d!621105 (= (++!6004 (t!190124 lt!761718) lt!761704) lt!762606)))

(declare-fun b!2030262 () Bool)

(assert (=> b!2030262 (= e!1282382 (Cons!22207 (h!27608 (t!190124 lt!761718)) (++!6004 (t!190124 (t!190124 lt!761718)) lt!761704)))))

(declare-fun b!2030263 () Bool)

(declare-fun res!890344 () Bool)

(assert (=> b!2030263 (=> (not res!890344) (not e!1282381))))

(assert (=> b!2030263 (= res!890344 (= (size!17349 lt!762606) (+ (size!17349 (t!190124 lt!761718)) (size!17349 lt!761704))))))

(assert (= (and d!621105 c!328649) b!2030261))

(assert (= (and d!621105 (not c!328649)) b!2030262))

(assert (= (and d!621105 res!890345) b!2030263))

(assert (= (and b!2030263 res!890344) b!2030264))

(declare-fun m!2470511 () Bool)

(assert (=> d!621105 m!2470511))

(assert (=> d!621105 m!2469299))

(assert (=> d!621105 m!2467527))

(declare-fun m!2470513 () Bool)

(assert (=> b!2030262 m!2470513))

(declare-fun m!2470515 () Bool)

(assert (=> b!2030263 m!2470515))

(assert (=> b!2030263 m!2469305))

(assert (=> b!2030263 m!2467535))

(assert (=> b!2028376 d!621105))

(assert (=> d!620365 d!620367))

(declare-fun d!621107 () Bool)

(assert (=> d!621107 (= (++!6004 (++!6004 lt!761718 lt!761716) lt!761704) (++!6004 lt!761718 (++!6004 lt!761716 lt!761704)))))

(assert (=> d!621107 true))

(declare-fun _$52!1322 () Unit!36865)

(assert (=> d!621107 (= (choose!12368 lt!761718 lt!761716 lt!761704) _$52!1322)))

(declare-fun bs!420916 () Bool)

(assert (= bs!420916 d!621107))

(assert (=> bs!420916 m!2467267))

(assert (=> bs!420916 m!2467267))

(assert (=> bs!420916 m!2468039))

(assert (=> bs!420916 m!2467275))

(assert (=> bs!420916 m!2467275))

(assert (=> bs!420916 m!2468037))

(assert (=> d!620365 d!621107))

(declare-fun b!2030265 () Bool)

(declare-fun e!1282384 () List!22289)

(assert (=> b!2030265 (= e!1282384 (++!6004 lt!761716 lt!761704))))

(declare-fun lt!762610 () List!22289)

(declare-fun b!2030268 () Bool)

(declare-fun e!1282383 () Bool)

(assert (=> b!2030268 (= e!1282383 (or (not (= (++!6004 lt!761716 lt!761704) Nil!22207)) (= lt!762610 lt!761718)))))

(declare-fun d!621109 () Bool)

(assert (=> d!621109 e!1282383))

(declare-fun res!890347 () Bool)

(assert (=> d!621109 (=> (not res!890347) (not e!1282383))))

(assert (=> d!621109 (= res!890347 (= (content!3278 lt!762610) (set.union (content!3278 lt!761718) (content!3278 (++!6004 lt!761716 lt!761704)))))))

(assert (=> d!621109 (= lt!762610 e!1282384)))

(declare-fun c!328651 () Bool)

(assert (=> d!621109 (= c!328651 (is-Nil!22207 lt!761718))))

(assert (=> d!621109 (= (++!6004 lt!761718 (++!6004 lt!761716 lt!761704)) lt!762610)))

(declare-fun b!2030266 () Bool)

(assert (=> b!2030266 (= e!1282384 (Cons!22207 (h!27608 lt!761718) (++!6004 (t!190124 lt!761718) (++!6004 lt!761716 lt!761704))))))

(declare-fun b!2030267 () Bool)

(declare-fun res!890346 () Bool)

(assert (=> b!2030267 (=> (not res!890346) (not e!1282383))))

(assert (=> b!2030267 (= res!890346 (= (size!17349 lt!762610) (+ (size!17349 lt!761718) (size!17349 (++!6004 lt!761716 lt!761704)))))))

(assert (= (and d!621109 c!328651) b!2030265))

(assert (= (and d!621109 (not c!328651)) b!2030266))

(assert (= (and d!621109 res!890347) b!2030267))

(assert (= (and b!2030267 res!890346) b!2030268))

(declare-fun m!2470521 () Bool)

(assert (=> d!621109 m!2470521))

(assert (=> d!621109 m!2467525))

(assert (=> d!621109 m!2467275))

(declare-fun m!2470523 () Bool)

(assert (=> d!621109 m!2470523))

(assert (=> b!2030266 m!2467275))

(declare-fun m!2470525 () Bool)

(assert (=> b!2030266 m!2470525))

(declare-fun m!2470527 () Bool)

(assert (=> b!2030267 m!2470527))

(assert (=> b!2030267 m!2467533))

(assert (=> b!2030267 m!2467275))

(declare-fun m!2470529 () Bool)

(assert (=> b!2030267 m!2470529))

(assert (=> d!620365 d!621109))

(assert (=> d!620365 d!620385))

(declare-fun b!2030275 () Bool)

(declare-fun e!1282390 () List!22289)

(assert (=> b!2030275 (= e!1282390 lt!761704)))

(declare-fun lt!762614 () List!22289)

(declare-fun b!2030278 () Bool)

(declare-fun e!1282389 () Bool)

(assert (=> b!2030278 (= e!1282389 (or (not (= lt!761704 Nil!22207)) (= lt!762614 (++!6004 lt!761718 lt!761716))))))

(declare-fun d!621113 () Bool)

(assert (=> d!621113 e!1282389))

(declare-fun res!890351 () Bool)

(assert (=> d!621113 (=> (not res!890351) (not e!1282389))))

(assert (=> d!621113 (= res!890351 (= (content!3278 lt!762614) (set.union (content!3278 (++!6004 lt!761718 lt!761716)) (content!3278 lt!761704))))))

(assert (=> d!621113 (= lt!762614 e!1282390)))

(declare-fun c!328653 () Bool)

(assert (=> d!621113 (= c!328653 (is-Nil!22207 (++!6004 lt!761718 lt!761716)))))

(assert (=> d!621113 (= (++!6004 (++!6004 lt!761718 lt!761716) lt!761704) lt!762614)))

(declare-fun b!2030276 () Bool)

(assert (=> b!2030276 (= e!1282390 (Cons!22207 (h!27608 (++!6004 lt!761718 lt!761716)) (++!6004 (t!190124 (++!6004 lt!761718 lt!761716)) lt!761704)))))

(declare-fun b!2030277 () Bool)

(declare-fun res!890350 () Bool)

(assert (=> b!2030277 (=> (not res!890350) (not e!1282389))))

(assert (=> b!2030277 (= res!890350 (= (size!17349 lt!762614) (+ (size!17349 (++!6004 lt!761718 lt!761716)) (size!17349 lt!761704))))))

(assert (= (and d!621113 c!328653) b!2030275))

(assert (= (and d!621113 (not c!328653)) b!2030276))

(assert (= (and d!621113 res!890351) b!2030277))

(assert (= (and b!2030277 res!890350) b!2030278))

(declare-fun m!2470543 () Bool)

(assert (=> d!621113 m!2470543))

(assert (=> d!621113 m!2467267))

(declare-fun m!2470545 () Bool)

(assert (=> d!621113 m!2470545))

(assert (=> d!621113 m!2467527))

(declare-fun m!2470547 () Bool)

(assert (=> b!2030276 m!2470547))

(declare-fun m!2470549 () Bool)

(assert (=> b!2030277 m!2470549))

(assert (=> b!2030277 m!2467267))

(declare-fun m!2470551 () Bool)

(assert (=> b!2030277 m!2470551))

(assert (=> b!2030277 m!2467535))

(assert (=> d!620365 d!621113))

(declare-fun b!2030293 () Bool)

(declare-fun res!890363 () Bool)

(declare-fun e!1282400 () Bool)

(assert (=> b!2030293 (=> (not res!890363) (not e!1282400))))

(declare-fun lt!762616 () Option!4665)

(assert (=> b!2030293 (= res!890363 (< (size!17349 (_2!11913 (get!7053 lt!762616))) (size!17349 lt!761718)))))

(declare-fun b!2030294 () Bool)

(declare-fun res!890365 () Bool)

(assert (=> b!2030294 (=> (not res!890365) (not e!1282400))))

(assert (=> b!2030294 (= res!890365 (= (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762616)))) (originalCharacters!4798 (_1!11913 (get!7053 lt!762616)))))))

(declare-fun b!2030295 () Bool)

(assert (=> b!2030295 (= e!1282400 (contains!4097 (t!190125 rules!3198) (rule!6220 (_1!11913 (get!7053 lt!762616)))))))

(declare-fun b!2030296 () Bool)

(declare-fun e!1282398 () Option!4665)

(declare-fun call!124611 () Option!4665)

(assert (=> b!2030296 (= e!1282398 call!124611)))

(declare-fun d!621117 () Bool)

(declare-fun e!1282399 () Bool)

(assert (=> d!621117 e!1282399))

(declare-fun res!890360 () Bool)

(assert (=> d!621117 (=> res!890360 e!1282399)))

(assert (=> d!621117 (= res!890360 (isEmpty!13861 lt!762616))))

(assert (=> d!621117 (= lt!762616 e!1282398)))

(declare-fun c!328657 () Bool)

(assert (=> d!621117 (= c!328657 (and (is-Cons!22208 (t!190125 rules!3198)) (is-Nil!22208 (t!190125 (t!190125 rules!3198)))))))

(declare-fun lt!762620 () Unit!36865)

(declare-fun lt!762619 () Unit!36865)

(assert (=> d!621117 (= lt!762620 lt!762619)))

(assert (=> d!621117 (isPrefix!1984 lt!761718 lt!761718)))

(assert (=> d!621117 (= lt!762619 (lemmaIsPrefixRefl!1302 lt!761718 lt!761718))))

(assert (=> d!621117 (rulesValidInductive!1383 thiss!23328 (t!190125 rules!3198))))

(assert (=> d!621117 (= (maxPrefix!2040 thiss!23328 (t!190125 rules!3198) lt!761718) lt!762616)))

(declare-fun b!2030297 () Bool)

(declare-fun res!890362 () Bool)

(assert (=> b!2030297 (=> (not res!890362) (not e!1282400))))

(assert (=> b!2030297 (= res!890362 (matchR!2682 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!762616)))) (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762616))))))))

(declare-fun b!2030298 () Bool)

(declare-fun res!890364 () Bool)

(assert (=> b!2030298 (=> (not res!890364) (not e!1282400))))

(assert (=> b!2030298 (= res!890364 (= (++!6004 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762616)))) (_2!11913 (get!7053 lt!762616))) lt!761718))))

(declare-fun b!2030299 () Bool)

(declare-fun lt!762617 () Option!4665)

(declare-fun lt!762618 () Option!4665)

(assert (=> b!2030299 (= e!1282398 (ite (and (is-None!4664 lt!762617) (is-None!4664 lt!762618)) None!4664 (ite (is-None!4664 lt!762618) lt!762617 (ite (is-None!4664 lt!762617) lt!762618 (ite (>= (size!17347 (_1!11913 (v!26989 lt!762617))) (size!17347 (_1!11913 (v!26989 lt!762618)))) lt!762617 lt!762618)))))))

(assert (=> b!2030299 (= lt!762617 call!124611)))

(assert (=> b!2030299 (= lt!762618 (maxPrefix!2040 thiss!23328 (t!190125 (t!190125 rules!3198)) lt!761718))))

(declare-fun b!2030300 () Bool)

(declare-fun res!890366 () Bool)

(assert (=> b!2030300 (=> (not res!890366) (not e!1282400))))

(assert (=> b!2030300 (= res!890366 (= (value!125336 (_1!11913 (get!7053 lt!762616))) (apply!5846 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762616)))) (seqFromList!2845 (originalCharacters!4798 (_1!11913 (get!7053 lt!762616)))))))))

(declare-fun b!2030301 () Bool)

(assert (=> b!2030301 (= e!1282399 e!1282400)))

(declare-fun res!890361 () Bool)

(assert (=> b!2030301 (=> (not res!890361) (not e!1282400))))

(assert (=> b!2030301 (= res!890361 (isDefined!3954 lt!762616))))

(declare-fun bm!124606 () Bool)

(assert (=> bm!124606 (= call!124611 (maxPrefixOneRule!1266 thiss!23328 (h!27609 (t!190125 rules!3198)) lt!761718))))

(assert (= (and d!621117 c!328657) b!2030296))

(assert (= (and d!621117 (not c!328657)) b!2030299))

(assert (= (or b!2030296 b!2030299) bm!124606))

(assert (= (and d!621117 (not res!890360)) b!2030301))

(assert (= (and b!2030301 res!890361) b!2030294))

(assert (= (and b!2030294 res!890365) b!2030293))

(assert (= (and b!2030293 res!890363) b!2030298))

(assert (= (and b!2030298 res!890364) b!2030300))

(assert (= (and b!2030300 res!890366) b!2030297))

(assert (= (and b!2030297 res!890362) b!2030295))

(declare-fun m!2470569 () Bool)

(assert (=> b!2030293 m!2470569))

(declare-fun m!2470571 () Bool)

(assert (=> b!2030293 m!2470571))

(assert (=> b!2030293 m!2467533))

(assert (=> b!2030298 m!2470569))

(declare-fun m!2470575 () Bool)

(assert (=> b!2030298 m!2470575))

(assert (=> b!2030298 m!2470575))

(declare-fun m!2470577 () Bool)

(assert (=> b!2030298 m!2470577))

(assert (=> b!2030298 m!2470577))

(declare-fun m!2470579 () Bool)

(assert (=> b!2030298 m!2470579))

(declare-fun m!2470581 () Bool)

(assert (=> bm!124606 m!2470581))

(declare-fun m!2470583 () Bool)

(assert (=> b!2030301 m!2470583))

(assert (=> b!2030300 m!2470569))

(declare-fun m!2470585 () Bool)

(assert (=> b!2030300 m!2470585))

(assert (=> b!2030300 m!2470585))

(declare-fun m!2470587 () Bool)

(assert (=> b!2030300 m!2470587))

(declare-fun m!2470589 () Bool)

(assert (=> b!2030299 m!2470589))

(assert (=> b!2030295 m!2470569))

(declare-fun m!2470591 () Bool)

(assert (=> b!2030295 m!2470591))

(declare-fun m!2470593 () Bool)

(assert (=> d!621117 m!2470593))

(assert (=> d!621117 m!2467619))

(assert (=> d!621117 m!2467621))

(assert (=> d!621117 m!2469185))

(assert (=> b!2030297 m!2470569))

(assert (=> b!2030297 m!2470575))

(assert (=> b!2030297 m!2470575))

(assert (=> b!2030297 m!2470577))

(assert (=> b!2030297 m!2470577))

(declare-fun m!2470599 () Bool)

(assert (=> b!2030297 m!2470599))

(assert (=> b!2030294 m!2470569))

(assert (=> b!2030294 m!2470575))

(assert (=> b!2030294 m!2470575))

(assert (=> b!2030294 m!2470577))

(assert (=> b!2028459 d!621117))

(declare-fun b!2030303 () Bool)

(declare-fun e!1282403 () List!22289)

(assert (=> b!2030303 (= e!1282403 (_2!11913 (get!7053 lt!762084)))))

(declare-fun b!2030306 () Bool)

(declare-fun e!1282402 () Bool)

(declare-fun lt!762622 () List!22289)

(assert (=> b!2030306 (= e!1282402 (or (not (= (_2!11913 (get!7053 lt!762084)) Nil!22207)) (= lt!762622 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762084)))))))))

(declare-fun d!621125 () Bool)

(assert (=> d!621125 e!1282402))

(declare-fun res!890368 () Bool)

(assert (=> d!621125 (=> (not res!890368) (not e!1282402))))

(assert (=> d!621125 (= res!890368 (= (content!3278 lt!762622) (set.union (content!3278 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762084))))) (content!3278 (_2!11913 (get!7053 lt!762084))))))))

(assert (=> d!621125 (= lt!762622 e!1282403)))

(declare-fun c!328658 () Bool)

(assert (=> d!621125 (= c!328658 (is-Nil!22207 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762084))))))))

(assert (=> d!621125 (= (++!6004 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762084)))) (_2!11913 (get!7053 lt!762084))) lt!762622)))

(declare-fun b!2030304 () Bool)

(assert (=> b!2030304 (= e!1282403 (Cons!22207 (h!27608 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762084))))) (++!6004 (t!190124 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762084))))) (_2!11913 (get!7053 lt!762084)))))))

(declare-fun b!2030305 () Bool)

(declare-fun res!890367 () Bool)

(assert (=> b!2030305 (=> (not res!890367) (not e!1282402))))

(assert (=> b!2030305 (= res!890367 (= (size!17349 lt!762622) (+ (size!17349 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!762084))))) (size!17349 (_2!11913 (get!7053 lt!762084))))))))

(assert (= (and d!621125 c!328658) b!2030303))

(assert (= (and d!621125 (not c!328658)) b!2030304))

(assert (= (and d!621125 res!890368) b!2030305))

(assert (= (and b!2030305 res!890367) b!2030306))

(declare-fun m!2470607 () Bool)

(assert (=> d!621125 m!2470607))

(assert (=> d!621125 m!2468357))

(declare-fun m!2470609 () Bool)

(assert (=> d!621125 m!2470609))

(declare-fun m!2470611 () Bool)

(assert (=> d!621125 m!2470611))

(declare-fun m!2470613 () Bool)

(assert (=> b!2030304 m!2470613))

(declare-fun m!2470615 () Bool)

(assert (=> b!2030305 m!2470615))

(assert (=> b!2030305 m!2468357))

(declare-fun m!2470619 () Bool)

(assert (=> b!2030305 m!2470619))

(assert (=> b!2030305 m!2468351))

(assert (=> b!2028999 d!621125))

(assert (=> b!2028999 d!620877))

(assert (=> b!2028999 d!620879))

(assert (=> b!2028999 d!620613))

(declare-fun d!621133 () Bool)

(declare-fun e!1282412 () Bool)

(assert (=> d!621133 e!1282412))

(declare-fun c!328661 () Bool)

(assert (=> d!621133 (= c!328661 (is-EmptyExpr!5416 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!761886))))))))

(declare-fun lt!762623 () Bool)

(declare-fun e!1282410 () Bool)

(assert (=> d!621133 (= lt!762623 e!1282410)))

(declare-fun c!328662 () Bool)

(assert (=> d!621133 (= c!328662 (isEmpty!13854 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761886))))))))

(assert (=> d!621133 (validRegex!2179 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!761886)))))))

(assert (=> d!621133 (= (matchR!2682 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!761886)))) (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761886))))) lt!762623)))

(declare-fun b!2030312 () Bool)

(assert (=> b!2030312 (= e!1282410 (matchR!2682 (derivativeStep!1412 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!761886)))) (head!4584 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761886)))))) (tail!3060 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761886)))))))))

(declare-fun b!2030313 () Bool)

(declare-fun e!1282411 () Bool)

(assert (=> b!2030313 (= e!1282411 (not lt!762623))))

(declare-fun b!2030314 () Bool)

(declare-fun res!890375 () Bool)

(declare-fun e!1282409 () Bool)

(assert (=> b!2030314 (=> res!890375 e!1282409)))

(assert (=> b!2030314 (= res!890375 (not (isEmpty!13854 (tail!3060 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761886))))))))))

(declare-fun b!2030315 () Bool)

(assert (=> b!2030315 (= e!1282409 (not (= (head!4584 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761886))))) (c!328192 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!761886))))))))))

(declare-fun b!2030316 () Bool)

(declare-fun e!1282413 () Bool)

(assert (=> b!2030316 (= e!1282413 e!1282409)))

(declare-fun res!890371 () Bool)

(assert (=> b!2030316 (=> res!890371 e!1282409)))

(declare-fun call!124612 () Bool)

(assert (=> b!2030316 (= res!890371 call!124612)))

(declare-fun b!2030317 () Bool)

(declare-fun res!890377 () Bool)

(declare-fun e!1282407 () Bool)

(assert (=> b!2030317 (=> (not res!890377) (not e!1282407))))

(assert (=> b!2030317 (= res!890377 (isEmpty!13854 (tail!3060 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761886)))))))))

(declare-fun b!2030318 () Bool)

(declare-fun res!890373 () Bool)

(declare-fun e!1282408 () Bool)

(assert (=> b!2030318 (=> res!890373 e!1282408)))

(assert (=> b!2030318 (= res!890373 e!1282407)))

(declare-fun res!890376 () Bool)

(assert (=> b!2030318 (=> (not res!890376) (not e!1282407))))

(assert (=> b!2030318 (= res!890376 lt!762623)))

(declare-fun b!2030319 () Bool)

(declare-fun res!890372 () Bool)

(assert (=> b!2030319 (=> (not res!890372) (not e!1282407))))

(assert (=> b!2030319 (= res!890372 (not call!124612))))

(declare-fun b!2030320 () Bool)

(assert (=> b!2030320 (= e!1282408 e!1282413)))

(declare-fun res!890370 () Bool)

(assert (=> b!2030320 (=> (not res!890370) (not e!1282413))))

(assert (=> b!2030320 (= res!890370 (not lt!762623))))

(declare-fun b!2030321 () Bool)

(assert (=> b!2030321 (= e!1282407 (= (head!4584 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761886))))) (c!328192 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!761886)))))))))

(declare-fun b!2030322 () Bool)

(assert (=> b!2030322 (= e!1282410 (nullable!1653 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!761886))))))))

(declare-fun b!2030323 () Bool)

(assert (=> b!2030323 (= e!1282412 e!1282411)))

(declare-fun c!328663 () Bool)

(assert (=> b!2030323 (= c!328663 (is-EmptyLang!5416 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!761886))))))))

(declare-fun bm!124607 () Bool)

(assert (=> bm!124607 (= call!124612 (isEmpty!13854 (list!9066 (charsOf!2531 (_1!11913 (get!7053 lt!761886))))))))

(declare-fun b!2030324 () Bool)

(declare-fun res!890374 () Bool)

(assert (=> b!2030324 (=> res!890374 e!1282408)))

(assert (=> b!2030324 (= res!890374 (not (is-ElementMatch!5416 (regex!3991 (rule!6220 (_1!11913 (get!7053 lt!761886)))))))))

(assert (=> b!2030324 (= e!1282411 e!1282408)))

(declare-fun b!2030325 () Bool)

(assert (=> b!2030325 (= e!1282412 (= lt!762623 call!124612))))

(assert (= (and d!621133 c!328662) b!2030322))

(assert (= (and d!621133 (not c!328662)) b!2030312))

(assert (= (and d!621133 c!328661) b!2030325))

(assert (= (and d!621133 (not c!328661)) b!2030323))

(assert (= (and b!2030323 c!328663) b!2030313))

(assert (= (and b!2030323 (not c!328663)) b!2030324))

(assert (= (and b!2030324 (not res!890374)) b!2030318))

(assert (= (and b!2030318 res!890376) b!2030319))

(assert (= (and b!2030319 res!890372) b!2030317))

(assert (= (and b!2030317 res!890377) b!2030321))

(assert (= (and b!2030318 (not res!890373)) b!2030320))

(assert (= (and b!2030320 res!890370) b!2030316))

(assert (= (and b!2030316 (not res!890371)) b!2030314))

(assert (= (and b!2030314 (not res!890375)) b!2030315))

(assert (= (or b!2030325 b!2030316 b!2030319) bm!124607))

(assert (=> b!2030317 m!2467643))

(declare-fun m!2470637 () Bool)

(assert (=> b!2030317 m!2470637))

(assert (=> b!2030317 m!2470637))

(declare-fun m!2470641 () Bool)

(assert (=> b!2030317 m!2470641))

(declare-fun m!2470643 () Bool)

(assert (=> b!2030322 m!2470643))

(assert (=> b!2030315 m!2467643))

(declare-fun m!2470645 () Bool)

(assert (=> b!2030315 m!2470645))

(assert (=> b!2030312 m!2467643))

(assert (=> b!2030312 m!2470645))

(assert (=> b!2030312 m!2470645))

(declare-fun m!2470647 () Bool)

(assert (=> b!2030312 m!2470647))

(assert (=> b!2030312 m!2467643))

(assert (=> b!2030312 m!2470637))

(assert (=> b!2030312 m!2470647))

(assert (=> b!2030312 m!2470637))

(declare-fun m!2470649 () Bool)

(assert (=> b!2030312 m!2470649))

(assert (=> b!2030321 m!2467643))

(assert (=> b!2030321 m!2470645))

(assert (=> d!621133 m!2467643))

(declare-fun m!2470651 () Bool)

(assert (=> d!621133 m!2470651))

(declare-fun m!2470653 () Bool)

(assert (=> d!621133 m!2470653))

(assert (=> b!2030314 m!2467643))

(assert (=> b!2030314 m!2470637))

(assert (=> b!2030314 m!2470637))

(assert (=> b!2030314 m!2470641))

(assert (=> bm!124607 m!2467643))

(assert (=> bm!124607 m!2470651))

(assert (=> b!2028478 d!621133))

(assert (=> b!2028478 d!620599))

(assert (=> b!2028478 d!620595))

(assert (=> b!2028478 d!620597))

(declare-fun b!2030339 () Bool)

(declare-fun e!1282419 () Bool)

(assert (=> b!2030339 (= e!1282419 (inv!17 (value!125336 (h!27610 (t!190126 tokens!598)))))))

(declare-fun b!2030340 () Bool)

(declare-fun e!1282421 () Bool)

(assert (=> b!2030340 (= e!1282421 (inv!16 (value!125336 (h!27610 (t!190126 tokens!598)))))))

(declare-fun d!621141 () Bool)

(declare-fun c!328666 () Bool)

(assert (=> d!621141 (= c!328666 (is-IntegerValue!12381 (value!125336 (h!27610 (t!190126 tokens!598)))))))

(assert (=> d!621141 (= (inv!21 (value!125336 (h!27610 (t!190126 tokens!598)))) e!1282421)))

(declare-fun b!2030341 () Bool)

(declare-fun e!1282420 () Bool)

(assert (=> b!2030341 (= e!1282420 (inv!15 (value!125336 (h!27610 (t!190126 tokens!598)))))))

(declare-fun b!2030342 () Bool)

(declare-fun res!890387 () Bool)

(assert (=> b!2030342 (=> res!890387 e!1282420)))

(assert (=> b!2030342 (= res!890387 (not (is-IntegerValue!12383 (value!125336 (h!27610 (t!190126 tokens!598))))))))

(assert (=> b!2030342 (= e!1282419 e!1282420)))

(declare-fun b!2030343 () Bool)

(assert (=> b!2030343 (= e!1282421 e!1282419)))

(declare-fun c!328667 () Bool)

(assert (=> b!2030343 (= c!328667 (is-IntegerValue!12382 (value!125336 (h!27610 (t!190126 tokens!598)))))))

(assert (= (and d!621141 c!328666) b!2030340))

(assert (= (and d!621141 (not c!328666)) b!2030343))

(assert (= (and b!2030343 c!328667) b!2030339))

(assert (= (and b!2030343 (not c!328667)) b!2030342))

(assert (= (and b!2030342 (not res!890387)) b!2030341))

(declare-fun m!2470655 () Bool)

(assert (=> b!2030339 m!2470655))

(declare-fun m!2470657 () Bool)

(assert (=> b!2030340 m!2470657))

(declare-fun m!2470659 () Bool)

(assert (=> b!2030341 m!2470659))

(assert (=> b!2029043 d!621141))

(declare-fun b!2030344 () Bool)

(declare-fun e!1282423 () List!22289)

(assert (=> b!2030344 (= e!1282423 (printList!1123 thiss!23328 (t!190126 (Cons!22209 (h!27610 tokens!598) Nil!22209))))))

(declare-fun e!1282422 () Bool)

(declare-fun b!2030347 () Bool)

(declare-fun lt!762630 () List!22289)

(assert (=> b!2030347 (= e!1282422 (or (not (= (printList!1123 thiss!23328 (t!190126 (Cons!22209 (h!27610 tokens!598) Nil!22209))) Nil!22207)) (= lt!762630 (list!9066 (charsOf!2531 (h!27610 (Cons!22209 (h!27610 tokens!598) Nil!22209)))))))))

(declare-fun d!621143 () Bool)

(assert (=> d!621143 e!1282422))

(declare-fun res!890389 () Bool)

(assert (=> d!621143 (=> (not res!890389) (not e!1282422))))

(assert (=> d!621143 (= res!890389 (= (content!3278 lt!762630) (set.union (content!3278 (list!9066 (charsOf!2531 (h!27610 (Cons!22209 (h!27610 tokens!598) Nil!22209))))) (content!3278 (printList!1123 thiss!23328 (t!190126 (Cons!22209 (h!27610 tokens!598) Nil!22209)))))))))

(assert (=> d!621143 (= lt!762630 e!1282423)))

(declare-fun c!328668 () Bool)

(assert (=> d!621143 (= c!328668 (is-Nil!22207 (list!9066 (charsOf!2531 (h!27610 (Cons!22209 (h!27610 tokens!598) Nil!22209))))))))

(assert (=> d!621143 (= (++!6004 (list!9066 (charsOf!2531 (h!27610 (Cons!22209 (h!27610 tokens!598) Nil!22209)))) (printList!1123 thiss!23328 (t!190126 (Cons!22209 (h!27610 tokens!598) Nil!22209)))) lt!762630)))

(declare-fun b!2030345 () Bool)

(assert (=> b!2030345 (= e!1282423 (Cons!22207 (h!27608 (list!9066 (charsOf!2531 (h!27610 (Cons!22209 (h!27610 tokens!598) Nil!22209))))) (++!6004 (t!190124 (list!9066 (charsOf!2531 (h!27610 (Cons!22209 (h!27610 tokens!598) Nil!22209))))) (printList!1123 thiss!23328 (t!190126 (Cons!22209 (h!27610 tokens!598) Nil!22209))))))))

(declare-fun b!2030346 () Bool)

(declare-fun res!890388 () Bool)

(assert (=> b!2030346 (=> (not res!890388) (not e!1282422))))

(assert (=> b!2030346 (= res!890388 (= (size!17349 lt!762630) (+ (size!17349 (list!9066 (charsOf!2531 (h!27610 (Cons!22209 (h!27610 tokens!598) Nil!22209))))) (size!17349 (printList!1123 thiss!23328 (t!190126 (Cons!22209 (h!27610 tokens!598) Nil!22209)))))))))

(assert (= (and d!621143 c!328668) b!2030344))

(assert (= (and d!621143 (not c!328668)) b!2030345))

(assert (= (and d!621143 res!890389) b!2030346))

(assert (= (and b!2030346 res!890388) b!2030347))

(declare-fun m!2470661 () Bool)

(assert (=> d!621143 m!2470661))

(assert (=> d!621143 m!2468023))

(declare-fun m!2470663 () Bool)

(assert (=> d!621143 m!2470663))

(assert (=> d!621143 m!2468025))

(declare-fun m!2470665 () Bool)

(assert (=> d!621143 m!2470665))

(assert (=> b!2030345 m!2468025))

(declare-fun m!2470667 () Bool)

(assert (=> b!2030345 m!2470667))

(declare-fun m!2470669 () Bool)

(assert (=> b!2030346 m!2470669))

(assert (=> b!2030346 m!2468023))

(declare-fun m!2470671 () Bool)

(assert (=> b!2030346 m!2470671))

(assert (=> b!2030346 m!2468025))

(declare-fun m!2470673 () Bool)

(assert (=> b!2030346 m!2470673))

(assert (=> b!2028778 d!621143))

(declare-fun d!621145 () Bool)

(assert (=> d!621145 (= (list!9066 (charsOf!2531 (h!27610 (Cons!22209 (h!27610 tokens!598) Nil!22209)))) (list!9068 (c!328191 (charsOf!2531 (h!27610 (Cons!22209 (h!27610 tokens!598) Nil!22209))))))))

(declare-fun bs!420920 () Bool)

(assert (= bs!420920 d!621145))

(declare-fun m!2470679 () Bool)

(assert (=> bs!420920 m!2470679))

(assert (=> b!2028778 d!621145))

(declare-fun d!621147 () Bool)

(declare-fun lt!762631 () BalanceConc!14672)

(assert (=> d!621147 (= (list!9066 lt!762631) (originalCharacters!4798 (h!27610 (Cons!22209 (h!27610 tokens!598) Nil!22209))))))

(assert (=> d!621147 (= lt!762631 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (Cons!22209 (h!27610 tokens!598) Nil!22209))))) (value!125336 (h!27610 (Cons!22209 (h!27610 tokens!598) Nil!22209)))))))

(assert (=> d!621147 (= (charsOf!2531 (h!27610 (Cons!22209 (h!27610 tokens!598) Nil!22209))) lt!762631)))

(declare-fun b_lambda!68361 () Bool)

(assert (=> (not b_lambda!68361) (not d!621147)))

(declare-fun t!190411 () Bool)

(declare-fun tb!128101 () Bool)

(assert (=> (and b!2028164 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (Cons!22209 (h!27610 tokens!598) Nil!22209)))))) t!190411) tb!128101))

(declare-fun b!2030348 () Bool)

(declare-fun e!1282424 () Bool)

(declare-fun tp!603347 () Bool)

(assert (=> b!2030348 (= e!1282424 (and (inv!29393 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (Cons!22209 (h!27610 tokens!598) Nil!22209))))) (value!125336 (h!27610 (Cons!22209 (h!27610 tokens!598) Nil!22209)))))) tp!603347))))

(declare-fun result!153264 () Bool)

(assert (=> tb!128101 (= result!153264 (and (inv!29394 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (Cons!22209 (h!27610 tokens!598) Nil!22209))))) (value!125336 (h!27610 (Cons!22209 (h!27610 tokens!598) Nil!22209))))) e!1282424))))

(assert (= tb!128101 b!2030348))

(declare-fun m!2470697 () Bool)

(assert (=> b!2030348 m!2470697))

(declare-fun m!2470703 () Bool)

(assert (=> tb!128101 m!2470703))

(assert (=> d!621147 t!190411))

(declare-fun b_and!161703 () Bool)

(assert (= b_and!161679 (and (=> t!190411 result!153264) b_and!161703)))

(declare-fun t!190413 () Bool)

(declare-fun tb!128103 () Bool)

(assert (=> (and b!2029045 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (Cons!22209 (h!27610 tokens!598) Nil!22209)))))) t!190413) tb!128103))

(declare-fun result!153266 () Bool)

(assert (= result!153266 result!153264))

(assert (=> d!621147 t!190413))

(declare-fun b_and!161705 () Bool)

(assert (= b_and!161681 (and (=> t!190413 result!153266) b_and!161705)))

(declare-fun tb!128105 () Bool)

(declare-fun t!190415 () Bool)

(assert (=> (and b!2028173 (= (toChars!5523 (transformation!3991 (h!27609 rules!3198))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (Cons!22209 (h!27610 tokens!598) Nil!22209)))))) t!190415) tb!128105))

(declare-fun result!153268 () Bool)

(assert (= result!153268 result!153264))

(assert (=> d!621147 t!190415))

(declare-fun b_and!161707 () Bool)

(assert (= b_and!161677 (and (=> t!190415 result!153268) b_and!161707)))

(declare-fun t!190417 () Bool)

(declare-fun tb!128107 () Bool)

(assert (=> (and b!2029070 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (Cons!22209 (h!27610 tokens!598) Nil!22209)))))) t!190417) tb!128107))

(declare-fun result!153270 () Bool)

(assert (= result!153270 result!153264))

(assert (=> d!621147 t!190417))

(declare-fun b_and!161709 () Bool)

(assert (= b_and!161675 (and (=> t!190417 result!153270) b_and!161709)))

(declare-fun t!190419 () Bool)

(declare-fun tb!128109 () Bool)

(assert (=> (and b!2028151 (= (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (Cons!22209 (h!27610 tokens!598) Nil!22209)))))) t!190419) tb!128109))

(declare-fun result!153272 () Bool)

(assert (= result!153272 result!153264))

(assert (=> d!621147 t!190419))

(declare-fun b_and!161711 () Bool)

(assert (= b_and!161673 (and (=> t!190419 result!153272) b_and!161711)))

(declare-fun m!2470711 () Bool)

(assert (=> d!621147 m!2470711))

(declare-fun m!2470715 () Bool)

(assert (=> d!621147 m!2470715))

(assert (=> b!2028778 d!621147))

(declare-fun d!621149 () Bool)

(declare-fun c!328669 () Bool)

(assert (=> d!621149 (= c!328669 (is-Cons!22209 (t!190126 (Cons!22209 (h!27610 tokens!598) Nil!22209))))))

(declare-fun e!1282425 () List!22289)

(assert (=> d!621149 (= (printList!1123 thiss!23328 (t!190126 (Cons!22209 (h!27610 tokens!598) Nil!22209))) e!1282425)))

(declare-fun b!2030349 () Bool)

(assert (=> b!2030349 (= e!1282425 (++!6004 (list!9066 (charsOf!2531 (h!27610 (t!190126 (Cons!22209 (h!27610 tokens!598) Nil!22209))))) (printList!1123 thiss!23328 (t!190126 (t!190126 (Cons!22209 (h!27610 tokens!598) Nil!22209))))))))

(declare-fun b!2030350 () Bool)

(assert (=> b!2030350 (= e!1282425 Nil!22207)))

(assert (= (and d!621149 c!328669) b!2030349))

(assert (= (and d!621149 (not c!328669)) b!2030350))

(declare-fun m!2470717 () Bool)

(assert (=> b!2030349 m!2470717))

(assert (=> b!2030349 m!2470717))

(declare-fun m!2470719 () Bool)

(assert (=> b!2030349 m!2470719))

(declare-fun m!2470721 () Bool)

(assert (=> b!2030349 m!2470721))

(assert (=> b!2030349 m!2470719))

(assert (=> b!2030349 m!2470721))

(declare-fun m!2470723 () Bool)

(assert (=> b!2030349 m!2470723))

(assert (=> b!2028778 d!621149))

(declare-fun d!621153 () Bool)

(assert (=> d!621153 (= (nullable!1653 (regex!3991 (rule!6220 separatorToken!354))) (nullableFct!381 (regex!3991 (rule!6220 separatorToken!354))))))

(declare-fun bs!420921 () Bool)

(assert (= bs!420921 d!621153))

(declare-fun m!2470725 () Bool)

(assert (=> bs!420921 m!2470725))

(assert (=> b!2028715 d!621153))

(declare-fun b!2030351 () Bool)

(declare-fun e!1282427 () List!22289)

(declare-fun call!124617 () List!22289)

(assert (=> b!2030351 (= e!1282427 call!124617)))

(declare-fun call!124616 () List!22289)

(declare-fun call!124615 () List!22289)

(declare-fun c!328670 () Bool)

(declare-fun bm!124609 () Bool)

(declare-fun call!124614 () List!22289)

(assert (=> bm!124609 (= call!124616 (++!6004 (ite c!328670 call!124615 call!124614) (ite c!328670 call!124614 call!124615)))))

(declare-fun bm!124610 () Bool)

(assert (=> bm!124610 (= call!124614 call!124617)))

(declare-fun b!2030352 () Bool)

(declare-fun e!1282429 () List!22289)

(assert (=> b!2030352 (= e!1282429 call!124616)))

(declare-fun d!621155 () Bool)

(declare-fun c!328671 () Bool)

(assert (=> d!621155 (= c!328671 (or (is-EmptyExpr!5416 (ite c!328314 (reg!5745 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (ite c!328312 (regTwo!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regOne!11344 (regex!3991 (rule!6220 (h!27610 tokens!598))))))) (is-EmptyLang!5416 (ite c!328314 (reg!5745 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (ite c!328312 (regTwo!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regOne!11344 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))))))

(declare-fun e!1282428 () List!22289)

(assert (=> d!621155 (= (usedCharacters!429 (ite c!328314 (reg!5745 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (ite c!328312 (regTwo!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regOne!11344 (regex!3991 (rule!6220 (h!27610 tokens!598))))))) e!1282428)))

(declare-fun c!328672 () Bool)

(declare-fun b!2030353 () Bool)

(assert (=> b!2030353 (= c!328672 (is-Star!5416 (ite c!328314 (reg!5745 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (ite c!328312 (regTwo!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regOne!11344 (regex!3991 (rule!6220 (h!27610 tokens!598))))))))))

(declare-fun e!1282426 () List!22289)

(assert (=> b!2030353 (= e!1282426 e!1282427)))

(declare-fun b!2030354 () Bool)

(assert (=> b!2030354 (= e!1282429 call!124616)))

(declare-fun bm!124611 () Bool)

(assert (=> bm!124611 (= call!124617 (usedCharacters!429 (ite c!328672 (reg!5745 (ite c!328314 (reg!5745 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (ite c!328312 (regTwo!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regOne!11344 (regex!3991 (rule!6220 (h!27610 tokens!598))))))) (ite c!328670 (regTwo!11345 (ite c!328314 (reg!5745 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (ite c!328312 (regTwo!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regOne!11344 (regex!3991 (rule!6220 (h!27610 tokens!598))))))) (regOne!11344 (ite c!328314 (reg!5745 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (ite c!328312 (regTwo!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regOne!11344 (regex!3991 (rule!6220 (h!27610 tokens!598)))))))))))))

(declare-fun b!2030355 () Bool)

(assert (=> b!2030355 (= e!1282427 e!1282429)))

(assert (=> b!2030355 (= c!328670 (is-Union!5416 (ite c!328314 (reg!5745 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (ite c!328312 (regTwo!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regOne!11344 (regex!3991 (rule!6220 (h!27610 tokens!598))))))))))

(declare-fun b!2030356 () Bool)

(assert (=> b!2030356 (= e!1282428 Nil!22207)))

(declare-fun b!2030357 () Bool)

(assert (=> b!2030357 (= e!1282428 e!1282426)))

(declare-fun c!328673 () Bool)

(assert (=> b!2030357 (= c!328673 (is-ElementMatch!5416 (ite c!328314 (reg!5745 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (ite c!328312 (regTwo!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regOne!11344 (regex!3991 (rule!6220 (h!27610 tokens!598))))))))))

(declare-fun b!2030358 () Bool)

(assert (=> b!2030358 (= e!1282426 (Cons!22207 (c!328192 (ite c!328314 (reg!5745 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (ite c!328312 (regTwo!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regOne!11344 (regex!3991 (rule!6220 (h!27610 tokens!598))))))) Nil!22207))))

(declare-fun bm!124612 () Bool)

(assert (=> bm!124612 (= call!124615 (usedCharacters!429 (ite c!328670 (regOne!11345 (ite c!328314 (reg!5745 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (ite c!328312 (regTwo!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regOne!11344 (regex!3991 (rule!6220 (h!27610 tokens!598))))))) (regTwo!11344 (ite c!328314 (reg!5745 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (ite c!328312 (regTwo!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))) (regOne!11344 (regex!3991 (rule!6220 (h!27610 tokens!598))))))))))))

(assert (= (and d!621155 c!328671) b!2030356))

(assert (= (and d!621155 (not c!328671)) b!2030357))

(assert (= (and b!2030357 c!328673) b!2030358))

(assert (= (and b!2030357 (not c!328673)) b!2030353))

(assert (= (and b!2030353 c!328672) b!2030351))

(assert (= (and b!2030353 (not c!328672)) b!2030355))

(assert (= (and b!2030355 c!328670) b!2030352))

(assert (= (and b!2030355 (not c!328670)) b!2030354))

(assert (= (or b!2030352 b!2030354) bm!124612))

(assert (= (or b!2030352 b!2030354) bm!124610))

(assert (= (or b!2030352 b!2030354) bm!124609))

(assert (= (or b!2030351 bm!124610) bm!124611))

(declare-fun m!2470727 () Bool)

(assert (=> bm!124609 m!2470727))

(declare-fun m!2470729 () Bool)

(assert (=> bm!124611 m!2470729))

(declare-fun m!2470731 () Bool)

(assert (=> bm!124612 m!2470731))

(assert (=> bm!124466 d!621155))

(declare-fun d!621157 () Bool)

(assert (=> d!621157 (= (nullable!1653 (regex!3991 lt!761721)) (nullableFct!381 (regex!3991 lt!761721)))))

(declare-fun bs!420922 () Bool)

(assert (= bs!420922 d!621157))

(declare-fun m!2470733 () Bool)

(assert (=> bs!420922 m!2470733))

(assert (=> b!2029026 d!621157))

(declare-fun b!2030361 () Bool)

(declare-fun e!1282433 () List!22289)

(assert (=> b!2030361 (= e!1282433 lt!761716)))

(declare-fun lt!762634 () List!22289)

(declare-fun b!2030364 () Bool)

(declare-fun e!1282432 () Bool)

(assert (=> b!2030364 (= e!1282432 (or (not (= lt!761716 Nil!22207)) (= lt!762634 (t!190124 lt!761718))))))

(declare-fun d!621159 () Bool)

(assert (=> d!621159 e!1282432))

(declare-fun res!890393 () Bool)

(assert (=> d!621159 (=> (not res!890393) (not e!1282432))))

(assert (=> d!621159 (= res!890393 (= (content!3278 lt!762634) (set.union (content!3278 (t!190124 lt!761718)) (content!3278 lt!761716))))))

(assert (=> d!621159 (= lt!762634 e!1282433)))

(declare-fun c!328674 () Bool)

(assert (=> d!621159 (= c!328674 (is-Nil!22207 (t!190124 lt!761718)))))

(assert (=> d!621159 (= (++!6004 (t!190124 lt!761718) lt!761716) lt!762634)))

(declare-fun b!2030362 () Bool)

(assert (=> b!2030362 (= e!1282433 (Cons!22207 (h!27608 (t!190124 lt!761718)) (++!6004 (t!190124 (t!190124 lt!761718)) lt!761716)))))

(declare-fun b!2030363 () Bool)

(declare-fun res!890392 () Bool)

(assert (=> b!2030363 (=> (not res!890392) (not e!1282432))))

(assert (=> b!2030363 (= res!890392 (= (size!17349 lt!762634) (+ (size!17349 (t!190124 lt!761718)) (size!17349 lt!761716))))))

(assert (= (and d!621159 c!328674) b!2030361))

(assert (= (and d!621159 (not c!328674)) b!2030362))

(assert (= (and d!621159 res!890393) b!2030363))

(assert (= (and b!2030363 res!890392) b!2030364))

(declare-fun m!2470735 () Bool)

(assert (=> d!621159 m!2470735))

(assert (=> d!621159 m!2469299))

(assert (=> d!621159 m!2468045))

(declare-fun m!2470737 () Bool)

(assert (=> b!2030362 m!2470737))

(declare-fun m!2470739 () Bool)

(assert (=> b!2030363 m!2470739))

(assert (=> b!2030363 m!2469305))

(assert (=> b!2030363 m!2468051))

(assert (=> b!2028783 d!621159))

(assert (=> b!2029007 d!620669))

(assert (=> b!2029007 d!620299))

(declare-fun d!621161 () Bool)

(assert (=> d!621161 (= (isEmpty!13862 lt!761961) (not (is-Some!4665 lt!761961)))))

(assert (=> d!620295 d!621161))

(assert (=> d!620295 d!620387))

(declare-fun d!621163 () Bool)

(declare-fun res!890401 () Bool)

(declare-fun e!1282443 () Bool)

(assert (=> d!621163 (=> res!890401 e!1282443)))

(assert (=> d!621163 (= res!890401 (is-Nil!22208 rules!3198))))

(assert (=> d!621163 (= (noDuplicateTag!1493 thiss!23328 rules!3198 Nil!22214) e!1282443)))

(declare-fun b!2030378 () Bool)

(declare-fun e!1282444 () Bool)

(assert (=> b!2030378 (= e!1282443 e!1282444)))

(declare-fun res!890402 () Bool)

(assert (=> b!2030378 (=> (not res!890402) (not e!1282444))))

(declare-fun contains!4104 (List!22296 String!25755) Bool)

(assert (=> b!2030378 (= res!890402 (not (contains!4104 Nil!22214 (tag!4477 (h!27609 rules!3198)))))))

(declare-fun b!2030379 () Bool)

(assert (=> b!2030379 (= e!1282444 (noDuplicateTag!1493 thiss!23328 (t!190125 rules!3198) (Cons!22214 (tag!4477 (h!27609 rules!3198)) Nil!22214)))))

(assert (= (and d!621163 (not res!890401)) b!2030378))

(assert (= (and b!2030378 res!890402) b!2030379))

(declare-fun m!2470757 () Bool)

(assert (=> b!2030378 m!2470757))

(declare-fun m!2470759 () Bool)

(assert (=> b!2030379 m!2470759))

(assert (=> b!2028842 d!621163))

(assert (=> b!2028707 d!620637))

(assert (=> b!2028707 d!620639))

(assert (=> b!2029018 d!620765))

(assert (=> b!2029018 d!620607))

(declare-fun bs!420925 () Bool)

(declare-fun d!621177 () Bool)

(assert (= bs!420925 (and d!621177 b!2029003)))

(declare-fun lambda!76527 () Int)

(assert (=> bs!420925 (= lambda!76527 lambda!76499)))

(declare-fun bs!420926 () Bool)

(assert (= bs!420926 (and d!621177 d!620447)))

(assert (=> bs!420926 (= lambda!76527 lambda!76498)))

(declare-fun bs!420927 () Bool)

(assert (= bs!420927 (and d!621177 b!2028166)))

(assert (=> bs!420927 (not (= lambda!76527 lambda!76480))))

(declare-fun bs!420928 () Bool)

(assert (= bs!420928 (and d!621177 b!2029841)))

(assert (=> bs!420928 (= lambda!76527 lambda!76522)))

(declare-fun bs!420929 () Bool)

(assert (= bs!420929 (and d!621177 b!2028567)))

(assert (=> bs!420929 (= lambda!76527 lambda!76489)))

(declare-fun b!2030384 () Bool)

(declare-fun e!1282449 () Bool)

(assert (=> b!2030384 (= e!1282449 true)))

(declare-fun b!2030383 () Bool)

(declare-fun e!1282448 () Bool)

(assert (=> b!2030383 (= e!1282448 e!1282449)))

(declare-fun b!2030382 () Bool)

(declare-fun e!1282447 () Bool)

(assert (=> b!2030382 (= e!1282447 e!1282448)))

(assert (=> d!621177 e!1282447))

(assert (= b!2030383 b!2030384))

(assert (= b!2030382 b!2030383))

(assert (= (and d!621177 (is-Cons!22208 rules!3198)) b!2030382))

(assert (=> b!2030384 (< (dynLambda!11037 order!14217 (toValue!5664 (transformation!3991 (h!27609 rules!3198)))) (dynLambda!11041 order!14223 lambda!76527))))

(assert (=> b!2030384 (< (dynLambda!11039 order!14221 (toChars!5523 (transformation!3991 (h!27609 rules!3198)))) (dynLambda!11041 order!14223 lambda!76527))))

(assert (=> d!621177 true))

(declare-fun lt!762636 () Bool)

(assert (=> d!621177 (= lt!762636 (forall!4723 (t!190126 tokens!598) lambda!76527))))

(declare-fun e!1282445 () Bool)

(assert (=> d!621177 (= lt!762636 e!1282445)))

(declare-fun res!890403 () Bool)

(assert (=> d!621177 (=> res!890403 e!1282445)))

(assert (=> d!621177 (= res!890403 (not (is-Cons!22209 (t!190126 tokens!598))))))

(assert (=> d!621177 (not (isEmpty!13856 rules!3198))))

(assert (=> d!621177 (= (rulesProduceEachTokenIndividuallyList!1335 thiss!23328 rules!3198 (t!190126 tokens!598)) lt!762636)))

(declare-fun b!2030380 () Bool)

(declare-fun e!1282446 () Bool)

(assert (=> b!2030380 (= e!1282445 e!1282446)))

(declare-fun res!890404 () Bool)

(assert (=> b!2030380 (=> (not res!890404) (not e!1282446))))

(assert (=> b!2030380 (= res!890404 (rulesProduceIndividualToken!1776 thiss!23328 rules!3198 (h!27610 (t!190126 tokens!598))))))

(declare-fun b!2030381 () Bool)

(assert (=> b!2030381 (= e!1282446 (rulesProduceEachTokenIndividuallyList!1335 thiss!23328 rules!3198 (t!190126 (t!190126 tokens!598))))))

(assert (= (and d!621177 (not res!890403)) b!2030380))

(assert (= (and b!2030380 res!890404) b!2030381))

(declare-fun m!2470761 () Bool)

(assert (=> d!621177 m!2470761))

(assert (=> d!621177 m!2467235))

(declare-fun m!2470763 () Bool)

(assert (=> b!2030380 m!2470763))

(declare-fun m!2470765 () Bool)

(assert (=> b!2030381 m!2470765))

(assert (=> b!2028990 d!621177))

(declare-fun d!621181 () Bool)

(declare-fun c!328678 () Bool)

(assert (=> d!621181 (= c!328678 (is-Nil!22207 lt!762015))))

(declare-fun e!1282450 () (Set C!10978))

(assert (=> d!621181 (= (content!3278 lt!762015) e!1282450)))

(declare-fun b!2030385 () Bool)

(assert (=> b!2030385 (= e!1282450 (as set.empty (Set C!10978)))))

(declare-fun b!2030386 () Bool)

(assert (=> b!2030386 (= e!1282450 (set.union (set.insert (h!27608 lt!762015) (as set.empty (Set C!10978))) (content!3278 (t!190124 lt!762015))))))

(assert (= (and d!621181 c!328678) b!2030385))

(assert (= (and d!621181 (not c!328678)) b!2030386))

(declare-fun m!2470767 () Bool)

(assert (=> b!2030386 m!2470767))

(declare-fun m!2470769 () Bool)

(assert (=> b!2030386 m!2470769))

(assert (=> d!620367 d!621181))

(assert (=> d!620367 d!620771))

(assert (=> d!620367 d!620711))

(assert (=> b!2029004 d!620793))

(assert (=> b!2029004 d!620379))

(declare-fun d!621183 () Bool)

(declare-fun lt!762643 () BalanceConc!14672)

(assert (=> d!621183 (= (list!9066 lt!762643) (printListTailRec!489 thiss!23328 (dropList!820 (singletonSeq!1967 (h!27610 tokens!598)) 0) (list!9066 (BalanceConc!14673 Empty!7428))))))

(declare-fun e!1282451 () BalanceConc!14672)

(assert (=> d!621183 (= lt!762643 e!1282451)))

(declare-fun c!328679 () Bool)

(assert (=> d!621183 (= c!328679 (>= 0 (size!17351 (singletonSeq!1967 (h!27610 tokens!598)))))))

(declare-fun e!1282452 () Bool)

(assert (=> d!621183 e!1282452))

(declare-fun res!890405 () Bool)

(assert (=> d!621183 (=> (not res!890405) (not e!1282452))))

(assert (=> d!621183 (= res!890405 (>= 0 0))))

(assert (=> d!621183 (= (printTailRec!1072 thiss!23328 (singletonSeq!1967 (h!27610 tokens!598)) 0 (BalanceConc!14673 Empty!7428)) lt!762643)))

(declare-fun b!2030387 () Bool)

(assert (=> b!2030387 (= e!1282452 (<= 0 (size!17351 (singletonSeq!1967 (h!27610 tokens!598)))))))

(declare-fun b!2030388 () Bool)

(assert (=> b!2030388 (= e!1282451 (BalanceConc!14673 Empty!7428))))

(declare-fun b!2030389 () Bool)

(assert (=> b!2030389 (= e!1282451 (printTailRec!1072 thiss!23328 (singletonSeq!1967 (h!27610 tokens!598)) (+ 0 1) (++!6007 (BalanceConc!14673 Empty!7428) (charsOf!2531 (apply!5848 (singletonSeq!1967 (h!27610 tokens!598)) 0)))))))

(declare-fun lt!762638 () List!22291)

(assert (=> b!2030389 (= lt!762638 (list!9070 (singletonSeq!1967 (h!27610 tokens!598))))))

(declare-fun lt!762637 () Unit!36865)

(assert (=> b!2030389 (= lt!762637 (lemmaDropApply!744 lt!762638 0))))

(assert (=> b!2030389 (= (head!4583 (drop!1121 lt!762638 0)) (apply!5850 lt!762638 0))))

(declare-fun lt!762641 () Unit!36865)

(assert (=> b!2030389 (= lt!762641 lt!762637)))

(declare-fun lt!762640 () List!22291)

(assert (=> b!2030389 (= lt!762640 (list!9070 (singletonSeq!1967 (h!27610 tokens!598))))))

(declare-fun lt!762639 () Unit!36865)

(assert (=> b!2030389 (= lt!762639 (lemmaDropTail!720 lt!762640 0))))

(assert (=> b!2030389 (= (tail!3062 (drop!1121 lt!762640 0)) (drop!1121 lt!762640 (+ 0 1)))))

(declare-fun lt!762642 () Unit!36865)

(assert (=> b!2030389 (= lt!762642 lt!762639)))

(assert (= (and d!621183 res!890405) b!2030387))

(assert (= (and d!621183 c!328679) b!2030388))

(assert (= (and d!621183 (not c!328679)) b!2030389))

(assert (=> d!621183 m!2467289))

(declare-fun m!2470771 () Bool)

(assert (=> d!621183 m!2470771))

(assert (=> d!621183 m!2467289))

(declare-fun m!2470773 () Bool)

(assert (=> d!621183 m!2470773))

(assert (=> d!621183 m!2468063))

(assert (=> d!621183 m!2470771))

(assert (=> d!621183 m!2468063))

(declare-fun m!2470775 () Bool)

(assert (=> d!621183 m!2470775))

(declare-fun m!2470777 () Bool)

(assert (=> d!621183 m!2470777))

(assert (=> b!2030387 m!2467289))

(assert (=> b!2030387 m!2470773))

(declare-fun m!2470779 () Bool)

(assert (=> b!2030389 m!2470779))

(declare-fun m!2470781 () Bool)

(assert (=> b!2030389 m!2470781))

(assert (=> b!2030389 m!2470781))

(declare-fun m!2470783 () Bool)

(assert (=> b!2030389 m!2470783))

(declare-fun m!2470785 () Bool)

(assert (=> b!2030389 m!2470785))

(declare-fun m!2470787 () Bool)

(assert (=> b!2030389 m!2470787))

(declare-fun m!2470789 () Bool)

(assert (=> b!2030389 m!2470789))

(declare-fun m!2470791 () Bool)

(assert (=> b!2030389 m!2470791))

(assert (=> b!2030389 m!2467289))

(assert (=> b!2030389 m!2470779))

(declare-fun m!2470793 () Bool)

(assert (=> b!2030389 m!2470793))

(declare-fun m!2470795 () Bool)

(assert (=> b!2030389 m!2470795))

(assert (=> b!2030389 m!2467289))

(assert (=> b!2030389 m!2470783))

(declare-fun m!2470797 () Bool)

(assert (=> b!2030389 m!2470797))

(declare-fun m!2470799 () Bool)

(assert (=> b!2030389 m!2470799))

(assert (=> b!2030389 m!2470799))

(declare-fun m!2470801 () Bool)

(assert (=> b!2030389 m!2470801))

(assert (=> b!2030389 m!2470789))

(assert (=> b!2030389 m!2467289))

(assert (=> b!2030389 m!2468253))

(assert (=> b!2029004 d!621183))

(declare-fun b!2030394 () Bool)

(declare-fun res!890406 () Bool)

(declare-fun e!1282453 () Bool)

(assert (=> b!2030394 (=> (not res!890406) (not e!1282453))))

(declare-fun lt!762656 () Token!7534)

(assert (=> b!2030394 (= res!890406 (matchR!2682 (regex!3991 (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 lt!762656))))) (list!9066 (charsOf!2531 lt!762656))))))

(declare-fun b!2030397 () Bool)

(declare-fun e!1282454 () Unit!36865)

(declare-fun Unit!36891 () Unit!36865)

(assert (=> b!2030397 (= e!1282454 Unit!36891)))

(declare-fun d!621185 () Bool)

(assert (=> d!621185 (isDefined!3954 (maxPrefix!2040 thiss!23328 rules!3198 (++!6004 call!124487 lt!762092)))))

(declare-fun lt!762651 () Unit!36865)

(assert (=> d!621185 (= lt!762651 e!1282454)))

(declare-fun c!328680 () Bool)

(assert (=> d!621185 (= c!328680 (isEmpty!13861 (maxPrefix!2040 thiss!23328 rules!3198 (++!6004 call!124487 lt!762092))))))

(declare-fun lt!762660 () Unit!36865)

(declare-fun lt!762646 () Unit!36865)

(assert (=> d!621185 (= lt!762660 lt!762646)))

(assert (=> d!621185 e!1282453))

(declare-fun res!890407 () Bool)

(assert (=> d!621185 (=> (not res!890407) (not e!1282453))))

(assert (=> d!621185 (= res!890407 (isDefined!3953 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 lt!762656)))))))

(assert (=> d!621185 (= lt!762646 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!806 thiss!23328 rules!3198 call!124487 lt!762656))))

(declare-fun lt!762657 () Unit!36865)

(declare-fun lt!762647 () Unit!36865)

(assert (=> d!621185 (= lt!762657 lt!762647)))

(declare-fun lt!762654 () List!22289)

(assert (=> d!621185 (isPrefix!1984 lt!762654 (++!6004 call!124487 lt!762092))))

(assert (=> d!621185 (= lt!762647 (lemmaPrefixStaysPrefixWhenAddingToSuffix!378 lt!762654 call!124487 lt!762092))))

(assert (=> d!621185 (= lt!762654 (list!9066 (charsOf!2531 lt!762656)))))

(declare-fun lt!762653 () Unit!36865)

(declare-fun lt!762658 () Unit!36865)

(assert (=> d!621185 (= lt!762653 lt!762658)))

(declare-fun lt!762652 () List!22289)

(declare-fun lt!762644 () List!22289)

(assert (=> d!621185 (isPrefix!1984 lt!762652 (++!6004 lt!762652 lt!762644))))

(assert (=> d!621185 (= lt!762658 (lemmaConcatTwoListThenFirstIsPrefix!1345 lt!762652 lt!762644))))

(assert (=> d!621185 (= lt!762644 (_2!11913 (get!7053 (maxPrefix!2040 thiss!23328 rules!3198 call!124487))))))

(assert (=> d!621185 (= lt!762652 (list!9066 (charsOf!2531 lt!762656)))))

(assert (=> d!621185 (= lt!762656 (head!4583 (list!9070 (_1!11914 (lex!1620 thiss!23328 rules!3198 (seqFromList!2845 call!124487))))))))

(assert (=> d!621185 (not (isEmpty!13856 rules!3198))))

(assert (=> d!621185 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!778 thiss!23328 rules!3198 call!124487 lt!762092) lt!762651)))

(declare-fun b!2030395 () Bool)

(assert (=> b!2030395 (= e!1282453 (= (rule!6220 lt!762656) (get!7052 (getRuleFromTag!806 thiss!23328 rules!3198 (tag!4477 (rule!6220 lt!762656))))))))

(declare-fun b!2030396 () Bool)

(declare-fun Unit!36893 () Unit!36865)

(assert (=> b!2030396 (= e!1282454 Unit!36893)))

(declare-fun lt!762655 () List!22289)

(assert (=> b!2030396 (= lt!762655 (++!6004 call!124487 lt!762092))))

(declare-fun lt!762649 () Unit!36865)

(assert (=> b!2030396 (= lt!762649 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!386 thiss!23328 (rule!6220 lt!762656) rules!3198 lt!762655))))

(assert (=> b!2030396 (isEmpty!13861 (maxPrefixOneRule!1266 thiss!23328 (rule!6220 lt!762656) lt!762655))))

(declare-fun lt!762659 () Unit!36865)

(assert (=> b!2030396 (= lt!762659 lt!762649)))

(declare-fun lt!762648 () List!22289)

(assert (=> b!2030396 (= lt!762648 (list!9066 (charsOf!2531 lt!762656)))))

(declare-fun lt!762645 () Unit!36865)

(assert (=> b!2030396 (= lt!762645 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!382 thiss!23328 (rule!6220 lt!762656) lt!762648 (++!6004 call!124487 lt!762092)))))

(assert (=> b!2030396 (not (matchR!2682 (regex!3991 (rule!6220 lt!762656)) lt!762648))))

(declare-fun lt!762650 () Unit!36865)

(assert (=> b!2030396 (= lt!762650 lt!762645)))

(assert (=> b!2030396 false))

(assert (= (and d!621185 res!890407) b!2030394))

(assert (= (and b!2030394 res!890406) b!2030395))

(assert (= (and d!621185 c!328680) b!2030396))

(assert (= (and d!621185 (not c!328680)) b!2030397))

(declare-fun m!2470805 () Bool)

(assert (=> b!2030394 m!2470805))

(declare-fun m!2470807 () Bool)

(assert (=> b!2030394 m!2470807))

(declare-fun m!2470809 () Bool)

(assert (=> b!2030394 m!2470809))

(assert (=> b!2030394 m!2470809))

(declare-fun m!2470811 () Bool)

(assert (=> b!2030394 m!2470811))

(assert (=> b!2030394 m!2470805))

(declare-fun m!2470813 () Bool)

(assert (=> b!2030394 m!2470813))

(assert (=> b!2030394 m!2470807))

(declare-fun m!2470815 () Bool)

(assert (=> d!621185 m!2470815))

(assert (=> d!621185 m!2470807))

(declare-fun m!2470817 () Bool)

(assert (=> d!621185 m!2470817))

(assert (=> d!621185 m!2467235))

(declare-fun m!2470819 () Bool)

(assert (=> d!621185 m!2470819))

(declare-fun m!2470821 () Bool)

(assert (=> d!621185 m!2470821))

(declare-fun m!2470823 () Bool)

(assert (=> d!621185 m!2470823))

(assert (=> d!621185 m!2470807))

(assert (=> d!621185 m!2470809))

(declare-fun m!2470825 () Bool)

(assert (=> d!621185 m!2470825))

(assert (=> d!621185 m!2470823))

(declare-fun m!2470827 () Bool)

(assert (=> d!621185 m!2470827))

(declare-fun m!2470829 () Bool)

(assert (=> d!621185 m!2470829))

(declare-fun m!2470831 () Bool)

(assert (=> d!621185 m!2470831))

(declare-fun m!2470833 () Bool)

(assert (=> d!621185 m!2470833))

(declare-fun m!2470835 () Bool)

(assert (=> d!621185 m!2470835))

(declare-fun m!2470837 () Bool)

(assert (=> d!621185 m!2470837))

(assert (=> d!621185 m!2470805))

(declare-fun m!2470839 () Bool)

(assert (=> d!621185 m!2470839))

(assert (=> d!621185 m!2470833))

(declare-fun m!2470841 () Bool)

(assert (=> d!621185 m!2470841))

(assert (=> d!621185 m!2470829))

(declare-fun m!2470843 () Bool)

(assert (=> d!621185 m!2470843))

(declare-fun m!2470845 () Bool)

(assert (=> d!621185 m!2470845))

(assert (=> d!621185 m!2470805))

(assert (=> d!621185 m!2470825))

(declare-fun m!2470847 () Bool)

(assert (=> d!621185 m!2470847))

(assert (=> d!621185 m!2470819))

(assert (=> d!621185 m!2470835))

(assert (=> d!621185 m!2470823))

(assert (=> d!621185 m!2470829))

(assert (=> b!2030395 m!2470805))

(assert (=> b!2030395 m!2470805))

(assert (=> b!2030395 m!2470813))

(declare-fun m!2470849 () Bool)

(assert (=> b!2030396 m!2470849))

(assert (=> b!2030396 m!2470807))

(assert (=> b!2030396 m!2470823))

(declare-fun m!2470851 () Bool)

(assert (=> b!2030396 m!2470851))

(assert (=> b!2030396 m!2470823))

(assert (=> b!2030396 m!2470807))

(assert (=> b!2030396 m!2470809))

(declare-fun m!2470853 () Bool)

(assert (=> b!2030396 m!2470853))

(declare-fun m!2470855 () Bool)

(assert (=> b!2030396 m!2470855))

(declare-fun m!2470857 () Bool)

(assert (=> b!2030396 m!2470857))

(assert (=> b!2030396 m!2470855))

(assert (=> b!2029004 d!621185))

(assert (=> b!2028670 d!620605))

(declare-fun d!621189 () Bool)

(declare-fun dynLambda!11055 (Int BalanceConc!14672 BalanceConc!14672) Bool)

(assert (=> d!621189 (dynLambda!11055 lambda!76486 lt!761729 (seqFromList!2845 (originalCharacters!4798 (h!27610 tokens!598))))))

(declare-fun lt!762663 () Unit!36865)

(declare-fun choose!12385 (Int BalanceConc!14672 BalanceConc!14672) Unit!36865)

(assert (=> d!621189 (= lt!762663 (choose!12385 lambda!76486 lt!761729 (seqFromList!2845 (originalCharacters!4798 (h!27610 tokens!598)))))))

(assert (=> d!621189 (Forall2!644 lambda!76486)))

(assert (=> d!621189 (= (Forall2of!244 lambda!76486 lt!761729 (seqFromList!2845 (originalCharacters!4798 (h!27610 tokens!598)))) lt!762663)))

(declare-fun b_lambda!68365 () Bool)

(assert (=> (not b_lambda!68365) (not d!621189)))

(declare-fun bs!420934 () Bool)

(assert (= bs!420934 d!621189))

(assert (=> bs!420934 m!2467159))

(declare-fun m!2470861 () Bool)

(assert (=> bs!420934 m!2470861))

(assert (=> bs!420934 m!2467159))

(declare-fun m!2470863 () Bool)

(assert (=> bs!420934 m!2470863))

(declare-fun m!2470865 () Bool)

(assert (=> bs!420934 m!2470865))

(assert (=> d!620213 d!621189))

(assert (=> d!620213 d!620305))

(declare-fun d!621193 () Bool)

(assert (=> d!621193 (= (list!9066 (seqFromList!2845 (originalCharacters!4798 (h!27610 tokens!598)))) (list!9068 (c!328191 (seqFromList!2845 (originalCharacters!4798 (h!27610 tokens!598))))))))

(declare-fun bs!420935 () Bool)

(assert (= bs!420935 d!621193))

(declare-fun m!2470867 () Bool)

(assert (=> bs!420935 m!2470867))

(assert (=> d!620213 d!621193))

(declare-fun d!621195 () Bool)

(assert (=> d!621195 (= (inv!29394 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (value!125336 (h!27610 tokens!598)))) (isBalanced!2316 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (value!125336 (h!27610 tokens!598))))))))

(declare-fun bs!420936 () Bool)

(assert (= bs!420936 d!621195))

(declare-fun m!2470869 () Bool)

(assert (=> bs!420936 m!2470869))

(assert (=> tb!127865 d!621195))

(declare-fun b!2030405 () Bool)

(declare-fun e!1282459 () Bool)

(assert (=> b!2030405 (= e!1282459 true)))

(declare-fun b!2030404 () Bool)

(declare-fun e!1282458 () Bool)

(assert (=> b!2030404 (= e!1282458 e!1282459)))

(declare-fun b!2030403 () Bool)

(declare-fun e!1282457 () Bool)

(assert (=> b!2030403 (= e!1282457 e!1282458)))

(assert (=> b!2029011 e!1282457))

(assert (= b!2030404 b!2030405))

(assert (= b!2030403 b!2030404))

(assert (= (and b!2029011 (is-Cons!22208 (t!190125 rules!3198))) b!2030403))

(assert (=> b!2030405 (< (dynLambda!11037 order!14217 (toValue!5664 (transformation!3991 (h!27609 (t!190125 rules!3198))))) (dynLambda!11041 order!14223 lambda!76499))))

(assert (=> b!2030405 (< (dynLambda!11039 order!14221 (toChars!5523 (transformation!3991 (h!27609 (t!190125 rules!3198))))) (dynLambda!11041 order!14223 lambda!76499))))

(declare-fun b!2030412 () Bool)

(declare-fun e!1282462 () Bool)

(declare-fun tp!603349 () Bool)

(assert (=> b!2030412 (= e!1282462 tp!603349)))

(declare-fun b!2030410 () Bool)

(assert (=> b!2030410 (= e!1282462 tp_is_empty!9223)))

(declare-fun b!2030413 () Bool)

(declare-fun tp!603351 () Bool)

(declare-fun tp!603352 () Bool)

(assert (=> b!2030413 (= e!1282462 (and tp!603351 tp!603352))))

(declare-fun b!2030411 () Bool)

(declare-fun tp!603350 () Bool)

(declare-fun tp!603348 () Bool)

(assert (=> b!2030411 (= e!1282462 (and tp!603350 tp!603348))))

(assert (=> b!2029058 (= tp!603248 e!1282462)))

(assert (= (and b!2029058 (is-ElementMatch!5416 (reg!5745 (regex!3991 (rule!6220 separatorToken!354))))) b!2030410))

(assert (= (and b!2029058 (is-Concat!9544 (reg!5745 (regex!3991 (rule!6220 separatorToken!354))))) b!2030411))

(assert (= (and b!2029058 (is-Star!5416 (reg!5745 (regex!3991 (rule!6220 separatorToken!354))))) b!2030412))

(assert (= (and b!2029058 (is-Union!5416 (reg!5745 (regex!3991 (rule!6220 separatorToken!354))))) b!2030413))

(declare-fun b!2030416 () Bool)

(declare-fun e!1282463 () Bool)

(declare-fun tp!603354 () Bool)

(assert (=> b!2030416 (= e!1282463 tp!603354)))

(declare-fun b!2030414 () Bool)

(assert (=> b!2030414 (= e!1282463 tp_is_empty!9223)))

(declare-fun b!2030417 () Bool)

(declare-fun tp!603356 () Bool)

(declare-fun tp!603357 () Bool)

(assert (=> b!2030417 (= e!1282463 (and tp!603356 tp!603357))))

(declare-fun b!2030415 () Bool)

(declare-fun tp!603355 () Bool)

(declare-fun tp!603353 () Bool)

(assert (=> b!2030415 (= e!1282463 (and tp!603355 tp!603353))))

(assert (=> b!2029059 (= tp!603250 e!1282463)))

(assert (= (and b!2029059 (is-ElementMatch!5416 (regOne!11345 (regex!3991 (rule!6220 separatorToken!354))))) b!2030414))

(assert (= (and b!2029059 (is-Concat!9544 (regOne!11345 (regex!3991 (rule!6220 separatorToken!354))))) b!2030415))

(assert (= (and b!2029059 (is-Star!5416 (regOne!11345 (regex!3991 (rule!6220 separatorToken!354))))) b!2030416))

(assert (= (and b!2029059 (is-Union!5416 (regOne!11345 (regex!3991 (rule!6220 separatorToken!354))))) b!2030417))

(declare-fun b!2030420 () Bool)

(declare-fun e!1282464 () Bool)

(declare-fun tp!603359 () Bool)

(assert (=> b!2030420 (= e!1282464 tp!603359)))

(declare-fun b!2030418 () Bool)

(assert (=> b!2030418 (= e!1282464 tp_is_empty!9223)))

(declare-fun b!2030421 () Bool)

(declare-fun tp!603361 () Bool)

(declare-fun tp!603362 () Bool)

(assert (=> b!2030421 (= e!1282464 (and tp!603361 tp!603362))))

(declare-fun b!2030419 () Bool)

(declare-fun tp!603360 () Bool)

(declare-fun tp!603358 () Bool)

(assert (=> b!2030419 (= e!1282464 (and tp!603360 tp!603358))))

(assert (=> b!2029059 (= tp!603251 e!1282464)))

(assert (= (and b!2029059 (is-ElementMatch!5416 (regTwo!11345 (regex!3991 (rule!6220 separatorToken!354))))) b!2030418))

(assert (= (and b!2029059 (is-Concat!9544 (regTwo!11345 (regex!3991 (rule!6220 separatorToken!354))))) b!2030419))

(assert (= (and b!2029059 (is-Star!5416 (regTwo!11345 (regex!3991 (rule!6220 separatorToken!354))))) b!2030420))

(assert (= (and b!2029059 (is-Union!5416 (regTwo!11345 (regex!3991 (rule!6220 separatorToken!354))))) b!2030421))

(declare-fun b!2030424 () Bool)

(declare-fun e!1282465 () Bool)

(declare-fun tp!603364 () Bool)

(assert (=> b!2030424 (= e!1282465 tp!603364)))

(declare-fun b!2030422 () Bool)

(assert (=> b!2030422 (= e!1282465 tp_is_empty!9223)))

(declare-fun b!2030425 () Bool)

(declare-fun tp!603366 () Bool)

(declare-fun tp!603367 () Bool)

(assert (=> b!2030425 (= e!1282465 (and tp!603366 tp!603367))))

(declare-fun b!2030423 () Bool)

(declare-fun tp!603365 () Bool)

(declare-fun tp!603363 () Bool)

(assert (=> b!2030423 (= e!1282465 (and tp!603365 tp!603363))))

(assert (=> b!2029077 (= tp!603269 e!1282465)))

(assert (= (and b!2029077 (is-ElementMatch!5416 (regOne!11344 (regex!3991 (h!27609 rules!3198))))) b!2030422))

(assert (= (and b!2029077 (is-Concat!9544 (regOne!11344 (regex!3991 (h!27609 rules!3198))))) b!2030423))

(assert (= (and b!2029077 (is-Star!5416 (regOne!11344 (regex!3991 (h!27609 rules!3198))))) b!2030424))

(assert (= (and b!2029077 (is-Union!5416 (regOne!11344 (regex!3991 (h!27609 rules!3198))))) b!2030425))

(declare-fun b!2030428 () Bool)

(declare-fun e!1282466 () Bool)

(declare-fun tp!603369 () Bool)

(assert (=> b!2030428 (= e!1282466 tp!603369)))

(declare-fun b!2030426 () Bool)

(assert (=> b!2030426 (= e!1282466 tp_is_empty!9223)))

(declare-fun b!2030429 () Bool)

(declare-fun tp!603371 () Bool)

(declare-fun tp!603372 () Bool)

(assert (=> b!2030429 (= e!1282466 (and tp!603371 tp!603372))))

(declare-fun b!2030427 () Bool)

(declare-fun tp!603370 () Bool)

(declare-fun tp!603368 () Bool)

(assert (=> b!2030427 (= e!1282466 (and tp!603370 tp!603368))))

(assert (=> b!2029077 (= tp!603267 e!1282466)))

(assert (= (and b!2029077 (is-ElementMatch!5416 (regTwo!11344 (regex!3991 (h!27609 rules!3198))))) b!2030426))

(assert (= (and b!2029077 (is-Concat!9544 (regTwo!11344 (regex!3991 (h!27609 rules!3198))))) b!2030427))

(assert (= (and b!2029077 (is-Star!5416 (regTwo!11344 (regex!3991 (h!27609 rules!3198))))) b!2030428))

(assert (= (and b!2029077 (is-Union!5416 (regTwo!11344 (regex!3991 (h!27609 rules!3198))))) b!2030429))

(declare-fun b!2030432 () Bool)

(declare-fun e!1282467 () Bool)

(declare-fun tp!603374 () Bool)

(assert (=> b!2030432 (= e!1282467 tp!603374)))

(declare-fun b!2030430 () Bool)

(assert (=> b!2030430 (= e!1282467 tp_is_empty!9223)))

(declare-fun b!2030433 () Bool)

(declare-fun tp!603376 () Bool)

(declare-fun tp!603377 () Bool)

(assert (=> b!2030433 (= e!1282467 (and tp!603376 tp!603377))))

(declare-fun b!2030431 () Bool)

(declare-fun tp!603375 () Bool)

(declare-fun tp!603373 () Bool)

(assert (=> b!2030431 (= e!1282467 (and tp!603375 tp!603373))))

(assert (=> b!2029078 (= tp!603268 e!1282467)))

(assert (= (and b!2029078 (is-ElementMatch!5416 (reg!5745 (regex!3991 (h!27609 rules!3198))))) b!2030430))

(assert (= (and b!2029078 (is-Concat!9544 (reg!5745 (regex!3991 (h!27609 rules!3198))))) b!2030431))

(assert (= (and b!2029078 (is-Star!5416 (reg!5745 (regex!3991 (h!27609 rules!3198))))) b!2030432))

(assert (= (and b!2029078 (is-Union!5416 (reg!5745 (regex!3991 (h!27609 rules!3198))))) b!2030433))

(declare-fun b!2030436 () Bool)

(declare-fun e!1282468 () Bool)

(declare-fun tp!603379 () Bool)

(assert (=> b!2030436 (= e!1282468 tp!603379)))

(declare-fun b!2030434 () Bool)

(assert (=> b!2030434 (= e!1282468 tp_is_empty!9223)))

(declare-fun b!2030437 () Bool)

(declare-fun tp!603381 () Bool)

(declare-fun tp!603382 () Bool)

(assert (=> b!2030437 (= e!1282468 (and tp!603381 tp!603382))))

(declare-fun b!2030435 () Bool)

(declare-fun tp!603380 () Bool)

(declare-fun tp!603378 () Bool)

(assert (=> b!2030435 (= e!1282468 (and tp!603380 tp!603378))))

(assert (=> b!2029079 (= tp!603270 e!1282468)))

(assert (= (and b!2029079 (is-ElementMatch!5416 (regOne!11345 (regex!3991 (h!27609 rules!3198))))) b!2030434))

(assert (= (and b!2029079 (is-Concat!9544 (regOne!11345 (regex!3991 (h!27609 rules!3198))))) b!2030435))

(assert (= (and b!2029079 (is-Star!5416 (regOne!11345 (regex!3991 (h!27609 rules!3198))))) b!2030436))

(assert (= (and b!2029079 (is-Union!5416 (regOne!11345 (regex!3991 (h!27609 rules!3198))))) b!2030437))

(declare-fun b!2030440 () Bool)

(declare-fun e!1282469 () Bool)

(declare-fun tp!603384 () Bool)

(assert (=> b!2030440 (= e!1282469 tp!603384)))

(declare-fun b!2030438 () Bool)

(assert (=> b!2030438 (= e!1282469 tp_is_empty!9223)))

(declare-fun b!2030441 () Bool)

(declare-fun tp!603386 () Bool)

(declare-fun tp!603387 () Bool)

(assert (=> b!2030441 (= e!1282469 (and tp!603386 tp!603387))))

(declare-fun b!2030439 () Bool)

(declare-fun tp!603385 () Bool)

(declare-fun tp!603383 () Bool)

(assert (=> b!2030439 (= e!1282469 (and tp!603385 tp!603383))))

(assert (=> b!2029079 (= tp!603271 e!1282469)))

(assert (= (and b!2029079 (is-ElementMatch!5416 (regTwo!11345 (regex!3991 (h!27609 rules!3198))))) b!2030438))

(assert (= (and b!2029079 (is-Concat!9544 (regTwo!11345 (regex!3991 (h!27609 rules!3198))))) b!2030439))

(assert (= (and b!2029079 (is-Star!5416 (regTwo!11345 (regex!3991 (h!27609 rules!3198))))) b!2030440))

(assert (= (and b!2029079 (is-Union!5416 (regTwo!11345 (regex!3991 (h!27609 rules!3198))))) b!2030441))

(declare-fun b!2030442 () Bool)

(declare-fun e!1282470 () Bool)

(declare-fun tp!603388 () Bool)

(assert (=> b!2030442 (= e!1282470 (and tp_is_empty!9223 tp!603388))))

(assert (=> b!2029075 (= tp!603266 e!1282470)))

(assert (= (and b!2029075 (is-Cons!22207 (t!190124 (originalCharacters!4798 (h!27610 tokens!598))))) b!2030442))

(declare-fun b!2030443 () Bool)

(declare-fun e!1282471 () Bool)

(declare-fun tp!603389 () Bool)

(assert (=> b!2030443 (= e!1282471 (and tp_is_empty!9223 tp!603389))))

(assert (=> b!2029043 (= tp!603235 e!1282471)))

(assert (= (and b!2029043 (is-Cons!22207 (originalCharacters!4798 (h!27610 (t!190126 tokens!598))))) b!2030443))

(declare-fun b!2030446 () Bool)

(declare-fun b_free!56621 () Bool)

(declare-fun b_next!57325 () Bool)

(assert (=> b!2030446 (= b_free!56621 (not b_next!57325))))

(declare-fun t!190421 () Bool)

(declare-fun tb!128111 () Bool)

(assert (=> (and b!2030446 (= (toValue!5664 (transformation!3991 (h!27609 (t!190125 (t!190125 rules!3198))))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190421) tb!128111))

(declare-fun result!153274 () Bool)

(assert (= result!153274 result!152980))

(assert (=> d!620293 t!190421))

(declare-fun t!190423 () Bool)

(declare-fun tb!128113 () Bool)

(assert (=> (and b!2030446 (= (toValue!5664 (transformation!3991 (h!27609 (t!190125 (t!190125 rules!3198))))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190423) tb!128113))

(declare-fun result!153276 () Bool)

(assert (= result!153276 result!152988))

(assert (=> d!620213 t!190423))

(declare-fun tb!128115 () Bool)

(declare-fun t!190425 () Bool)

(assert (=> (and b!2030446 (= (toValue!5664 (transformation!3991 (h!27609 (t!190125 (t!190125 rules!3198))))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761878)))))) t!190425) tb!128115))

(declare-fun result!153278 () Bool)

(assert (= result!153278 result!153214))

(assert (=> d!620941 t!190425))

(declare-fun tb!128117 () Bool)

(declare-fun t!190427 () Bool)

(assert (=> (and b!2030446 (= (toValue!5664 (transformation!3991 (h!27609 (t!190125 (t!190125 rules!3198))))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761886)))))) t!190427) tb!128117))

(declare-fun result!153280 () Bool)

(assert (= result!153280 result!153164))

(assert (=> d!620735 t!190427))

(declare-fun tb!128119 () Bool)

(declare-fun t!190429 () Bool)

(assert (=> (and b!2030446 (= (toValue!5664 (transformation!3991 (h!27609 (t!190125 (t!190125 rules!3198))))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762043)))))) t!190429) tb!128119))

(declare-fun result!153282 () Bool)

(assert (= result!153282 result!153154))

(assert (=> d!620721 t!190429))

(declare-fun t!190431 () Bool)

(declare-fun tb!128121 () Bool)

(assert (=> (and b!2030446 (= (toValue!5664 (transformation!3991 (h!27609 (t!190125 (t!190125 rules!3198))))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762084)))))) t!190431) tb!128121))

(declare-fun result!153284 () Bool)

(assert (= result!153284 result!153234))

(assert (=> d!620981 t!190431))

(assert (=> d!620213 t!190421))

(declare-fun tp!603392 () Bool)

(declare-fun b_and!161713 () Bool)

(assert (=> b!2030446 (= tp!603392 (and (=> t!190427 result!153280) (=> t!190425 result!153278) (=> t!190421 result!153274) (=> t!190429 result!153282) (=> t!190431 result!153284) (=> t!190423 result!153276) b_and!161713))))

(declare-fun b_free!56623 () Bool)

(declare-fun b_next!57327 () Bool)

(assert (=> b!2030446 (= b_free!56623 (not b_next!57327))))

(declare-fun tb!128123 () Bool)

(declare-fun t!190433 () Bool)

(assert (=> (and b!2030446 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 (t!190125 rules!3198))))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598)))))) t!190433) tb!128123))

(declare-fun result!153286 () Bool)

(assert (= result!153286 result!153104))

(assert (=> b!2030148 t!190433))

(declare-fun tb!128125 () Bool)

(declare-fun t!190435 () Bool)

(assert (=> (and b!2030446 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 (t!190125 rules!3198))))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761878)))))) t!190435) tb!128125))

(declare-fun result!153288 () Bool)

(assert (= result!153288 result!153144))

(assert (=> d!620647 t!190435))

(declare-fun t!190437 () Bool)

(declare-fun tb!128127 () Bool)

(assert (=> (and b!2030446 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 (t!190125 rules!3198))))) (toChars!5523 (transformation!3991 (rule!6220 (apply!5848 lt!761727 0))))) t!190437) tb!128127))

(declare-fun result!153290 () Bool)

(assert (= result!153290 result!153174))

(assert (=> d!620827 t!190437))

(declare-fun tb!128129 () Bool)

(declare-fun t!190439 () Bool)

(assert (=> (and b!2030446 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 (t!190125 rules!3198))))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762043)))))) t!190439) tb!128129))

(declare-fun result!153292 () Bool)

(assert (= result!153292 result!153124))

(assert (=> d!620583 t!190439))

(assert (=> d!620547 t!190433))

(declare-fun t!190441 () Bool)

(declare-fun tb!128131 () Bool)

(assert (=> (and b!2030446 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 (t!190125 rules!3198))))) (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354)))) t!190441) tb!128131))

(declare-fun result!153294 () Bool)

(assert (= result!153294 result!153016))

(assert (=> d!620307 t!190441))

(declare-fun tb!128133 () Bool)

(declare-fun t!190443 () Bool)

(assert (=> (and b!2030446 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 (t!190125 rules!3198))))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190443) tb!128133))

(declare-fun result!153296 () Bool)

(assert (= result!153296 result!153002))

(assert (=> d!620293 t!190443))

(declare-fun t!190445 () Bool)

(declare-fun tb!128135 () Bool)

(assert (=> (and b!2030446 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 (t!190125 rules!3198))))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190445) tb!128135))

(declare-fun result!153298 () Bool)

(assert (= result!153298 result!153010))

(assert (=> b!2028903 t!190445))

(declare-fun tb!128137 () Bool)

(declare-fun t!190447 () Bool)

(assert (=> (and b!2030446 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 (t!190125 rules!3198))))) (toChars!5523 (transformation!3991 (rule!6220 (ite c!328346 (h!27610 tokens!598) (ite c!328349 separatorToken!354 (h!27610 tokens!598))))))) t!190447) tb!128137))

(declare-fun result!153300 () Bool)

(assert (= result!153300 result!153114))

(assert (=> d!620573 t!190447))

(declare-fun t!190449 () Bool)

(declare-fun tb!128139 () Bool)

(assert (=> (and b!2030446 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 (t!190125 rules!3198))))) (toChars!5523 (transformation!3991 (rule!6220 (ite c!328261 (h!27610 (t!190126 tokens!598)) (ite c!328264 separatorToken!354 (h!27610 (t!190126 tokens!598)))))))) t!190449) tb!128139))

(declare-fun result!153302 () Bool)

(assert (= result!153302 result!153224))

(assert (=> d!620979 t!190449))

(declare-fun t!190451 () Bool)

(declare-fun tb!128141 () Bool)

(assert (=> (and b!2030446 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 (t!190125 rules!3198))))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762084)))))) t!190451) tb!128141))

(declare-fun result!153304 () Bool)

(assert (= result!153304 result!153184))

(assert (=> d!620879 t!190451))

(declare-fun t!190453 () Bool)

(declare-fun tb!128143 () Bool)

(assert (=> (and b!2030446 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 (t!190125 rules!3198))))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (Cons!22209 (h!27610 tokens!598) Nil!22209)))))) t!190453) tb!128143))

(declare-fun result!153306 () Bool)

(assert (= result!153306 result!153264))

(assert (=> d!621147 t!190453))

(assert (=> b!2029030 t!190441))

(declare-fun t!190455 () Bool)

(declare-fun tb!128145 () Bool)

(assert (=> (and b!2030446 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 (t!190125 rules!3198))))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761886)))))) t!190455) tb!128145))

(declare-fun result!153308 () Bool)

(assert (= result!153308 result!153134))

(assert (=> d!620597 t!190455))

(assert (=> d!620299 t!190445))

(declare-fun b_and!161715 () Bool)

(declare-fun tp!603391 () Bool)

(assert (=> b!2030446 (= tp!603391 (and (=> t!190433 result!153286) (=> t!190447 result!153300) (=> t!190453 result!153306) (=> t!190437 result!153290) (=> t!190451 result!153304) (=> t!190435 result!153288) (=> t!190455 result!153308) (=> t!190445 result!153298) (=> t!190443 result!153296) (=> t!190441 result!153294) (=> t!190449 result!153302) (=> t!190439 result!153292) b_and!161715))))

(declare-fun e!1282473 () Bool)

(assert (=> b!2030446 (= e!1282473 (and tp!603392 tp!603391))))

(declare-fun e!1282472 () Bool)

(declare-fun b!2030445 () Bool)

(declare-fun tp!603390 () Bool)

(assert (=> b!2030445 (= e!1282472 (and tp!603390 (inv!29386 (tag!4477 (h!27609 (t!190125 (t!190125 rules!3198))))) (inv!29389 (transformation!3991 (h!27609 (t!190125 (t!190125 rules!3198))))) e!1282473))))

(declare-fun b!2030444 () Bool)

(declare-fun e!1282474 () Bool)

(declare-fun tp!603393 () Bool)

(assert (=> b!2030444 (= e!1282474 (and e!1282472 tp!603393))))

(assert (=> b!2029068 (= tp!603263 e!1282474)))

(assert (= b!2030445 b!2030446))

(assert (= b!2030444 b!2030445))

(assert (= (and b!2029068 (is-Cons!22208 (t!190125 (t!190125 rules!3198)))) b!2030444))

(declare-fun m!2470893 () Bool)

(assert (=> b!2030445 m!2470893))

(declare-fun m!2470895 () Bool)

(assert (=> b!2030445 m!2470895))

(declare-fun b!2030462 () Bool)

(declare-fun e!1282486 () Bool)

(declare-fun tp!603401 () Bool)

(declare-fun tp!603402 () Bool)

(assert (=> b!2030462 (= e!1282486 (and (inv!29393 (left!17670 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729))))) tp!603402 (inv!29393 (right!18000 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729))))) tp!603401))))

(declare-fun b!2030464 () Bool)

(declare-fun e!1282485 () Bool)

(declare-fun tp!603400 () Bool)

(assert (=> b!2030464 (= e!1282485 tp!603400)))

(declare-fun b!2030463 () Bool)

(declare-fun inv!29401 (IArray!14861) Bool)

(assert (=> b!2030463 (= e!1282486 (and (inv!29401 (xs!10330 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729))))) e!1282485))))

(assert (=> b!2028597 (= tp!603218 (and (inv!29393 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729)))) e!1282486))))

(assert (= (and b!2028597 (is-Node!7428 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729))))) b!2030462))

(assert (= b!2030463 b!2030464))

(assert (= (and b!2028597 (is-Leaf!10887 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729))))) b!2030463))

(declare-fun m!2470911 () Bool)

(assert (=> b!2030462 m!2470911))

(declare-fun m!2470913 () Bool)

(assert (=> b!2030462 m!2470913))

(declare-fun m!2470915 () Bool)

(assert (=> b!2030463 m!2470915))

(assert (=> b!2028597 m!2467823))

(declare-fun b!2030468 () Bool)

(declare-fun b_free!56625 () Bool)

(declare-fun b_next!57329 () Bool)

(assert (=> b!2030468 (= b_free!56625 (not b_next!57329))))

(declare-fun t!190457 () Bool)

(declare-fun tb!128147 () Bool)

(assert (=> (and b!2030468 (= (toValue!5664 (transformation!3991 (rule!6220 (h!27610 (t!190126 (t!190126 tokens!598)))))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190457) tb!128147))

(declare-fun result!153312 () Bool)

(assert (= result!153312 result!152980))

(assert (=> d!620293 t!190457))

(declare-fun t!190459 () Bool)

(declare-fun tb!128149 () Bool)

(assert (=> (and b!2030468 (= (toValue!5664 (transformation!3991 (rule!6220 (h!27610 (t!190126 (t!190126 tokens!598)))))) (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190459) tb!128149))

(declare-fun result!153314 () Bool)

(assert (= result!153314 result!152988))

(assert (=> d!620213 t!190459))

(declare-fun tb!128151 () Bool)

(declare-fun t!190461 () Bool)

(assert (=> (and b!2030468 (= (toValue!5664 (transformation!3991 (rule!6220 (h!27610 (t!190126 (t!190126 tokens!598)))))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761878)))))) t!190461) tb!128151))

(declare-fun result!153316 () Bool)

(assert (= result!153316 result!153214))

(assert (=> d!620941 t!190461))

(declare-fun tb!128153 () Bool)

(declare-fun t!190463 () Bool)

(assert (=> (and b!2030468 (= (toValue!5664 (transformation!3991 (rule!6220 (h!27610 (t!190126 (t!190126 tokens!598)))))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761886)))))) t!190463) tb!128153))

(declare-fun result!153318 () Bool)

(assert (= result!153318 result!153164))

(assert (=> d!620735 t!190463))

(declare-fun t!190465 () Bool)

(declare-fun tb!128155 () Bool)

(assert (=> (and b!2030468 (= (toValue!5664 (transformation!3991 (rule!6220 (h!27610 (t!190126 (t!190126 tokens!598)))))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762043)))))) t!190465) tb!128155))

(declare-fun result!153320 () Bool)

(assert (= result!153320 result!153154))

(assert (=> d!620721 t!190465))

(declare-fun t!190467 () Bool)

(declare-fun tb!128157 () Bool)

(assert (=> (and b!2030468 (= (toValue!5664 (transformation!3991 (rule!6220 (h!27610 (t!190126 (t!190126 tokens!598)))))) (toValue!5664 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762084)))))) t!190467) tb!128157))

(declare-fun result!153322 () Bool)

(assert (= result!153322 result!153234))

(assert (=> d!620981 t!190467))

(assert (=> d!620213 t!190457))

(declare-fun tp!603403 () Bool)

(declare-fun b_and!161717 () Bool)

(assert (=> b!2030468 (= tp!603403 (and (=> t!190459 result!153314) (=> t!190461 result!153316) (=> t!190457 result!153312) (=> t!190463 result!153318) (=> t!190465 result!153320) (=> t!190467 result!153322) b_and!161717))))

(declare-fun b_free!56627 () Bool)

(declare-fun b_next!57331 () Bool)

(assert (=> b!2030468 (= b_free!56627 (not b_next!57331))))

(declare-fun t!190469 () Bool)

(declare-fun tb!128159 () Bool)

(assert (=> (and b!2030468 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 (t!190126 tokens!598)))))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598)))))) t!190469) tb!128159))

(declare-fun result!153324 () Bool)

(assert (= result!153324 result!153104))

(assert (=> b!2030148 t!190469))

(declare-fun tb!128161 () Bool)

(declare-fun t!190471 () Bool)

(assert (=> (and b!2030468 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 (t!190126 tokens!598)))))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761878)))))) t!190471) tb!128161))

(declare-fun result!153326 () Bool)

(assert (= result!153326 result!153144))

(assert (=> d!620647 t!190471))

(declare-fun tb!128163 () Bool)

(declare-fun t!190473 () Bool)

(assert (=> (and b!2030468 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 (t!190126 tokens!598)))))) (toChars!5523 (transformation!3991 (rule!6220 (apply!5848 lt!761727 0))))) t!190473) tb!128163))

(declare-fun result!153328 () Bool)

(assert (= result!153328 result!153174))

(assert (=> d!620827 t!190473))

(declare-fun tb!128165 () Bool)

(declare-fun t!190475 () Bool)

(assert (=> (and b!2030468 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 (t!190126 tokens!598)))))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762043)))))) t!190475) tb!128165))

(declare-fun result!153330 () Bool)

(assert (= result!153330 result!153124))

(assert (=> d!620583 t!190475))

(assert (=> d!620547 t!190469))

(declare-fun t!190477 () Bool)

(declare-fun tb!128167 () Bool)

(assert (=> (and b!2030468 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 (t!190126 tokens!598)))))) (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354)))) t!190477) tb!128167))

(declare-fun result!153332 () Bool)

(assert (= result!153332 result!153016))

(assert (=> d!620307 t!190477))

(declare-fun t!190479 () Bool)

(declare-fun tb!128169 () Bool)

(assert (=> (and b!2030468 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 (t!190126 tokens!598)))))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190479) tb!128169))

(declare-fun result!153334 () Bool)

(assert (= result!153334 result!153002))

(assert (=> d!620293 t!190479))

(declare-fun t!190481 () Bool)

(declare-fun tb!128171 () Bool)

(assert (=> (and b!2030468 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 (t!190126 tokens!598)))))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598))))) t!190481) tb!128171))

(declare-fun result!153336 () Bool)

(assert (= result!153336 result!153010))

(assert (=> b!2028903 t!190481))

(declare-fun tb!128173 () Bool)

(declare-fun t!190483 () Bool)

(assert (=> (and b!2030468 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 (t!190126 tokens!598)))))) (toChars!5523 (transformation!3991 (rule!6220 (ite c!328346 (h!27610 tokens!598) (ite c!328349 separatorToken!354 (h!27610 tokens!598))))))) t!190483) tb!128173))

(declare-fun result!153338 () Bool)

(assert (= result!153338 result!153114))

(assert (=> d!620573 t!190483))

(declare-fun t!190485 () Bool)

(declare-fun tb!128175 () Bool)

(assert (=> (and b!2030468 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 (t!190126 tokens!598)))))) (toChars!5523 (transformation!3991 (rule!6220 (ite c!328261 (h!27610 (t!190126 tokens!598)) (ite c!328264 separatorToken!354 (h!27610 (t!190126 tokens!598)))))))) t!190485) tb!128175))

(declare-fun result!153340 () Bool)

(assert (= result!153340 result!153224))

(assert (=> d!620979 t!190485))

(declare-fun t!190487 () Bool)

(declare-fun tb!128177 () Bool)

(assert (=> (and b!2030468 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 (t!190126 tokens!598)))))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!762084)))))) t!190487) tb!128177))

(declare-fun result!153342 () Bool)

(assert (= result!153342 result!153184))

(assert (=> d!620879 t!190487))

(declare-fun t!190489 () Bool)

(declare-fun tb!128179 () Bool)

(assert (=> (and b!2030468 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 (t!190126 tokens!598)))))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (Cons!22209 (h!27610 tokens!598) Nil!22209)))))) t!190489) tb!128179))

(declare-fun result!153344 () Bool)

(assert (= result!153344 result!153264))

(assert (=> d!621147 t!190489))

(assert (=> b!2029030 t!190477))

(declare-fun t!190491 () Bool)

(declare-fun tb!128181 () Bool)

(assert (=> (and b!2030468 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 (t!190126 tokens!598)))))) (toChars!5523 (transformation!3991 (rule!6220 (_1!11913 (get!7053 lt!761886)))))) t!190491) tb!128181))

(declare-fun result!153346 () Bool)

(assert (= result!153346 result!153134))

(assert (=> d!620597 t!190491))

(assert (=> d!620299 t!190481))

(declare-fun b_and!161719 () Bool)

(declare-fun tp!603404 () Bool)

(assert (=> b!2030468 (= tp!603404 (and (=> t!190489 result!153344) (=> t!190473 result!153328) (=> t!190481 result!153336) (=> t!190475 result!153330) (=> t!190479 result!153334) (=> t!190477 result!153332) (=> t!190483 result!153338) (=> t!190469 result!153324) (=> t!190471 result!153326) (=> t!190485 result!153340) (=> t!190487 result!153342) (=> t!190491 result!153346) b_and!161719))))

(declare-fun tp!603407 () Bool)

(declare-fun e!1282492 () Bool)

(declare-fun b!2030465 () Bool)

(declare-fun e!1282489 () Bool)

(assert (=> b!2030465 (= e!1282489 (and (inv!29390 (h!27610 (t!190126 (t!190126 tokens!598)))) e!1282492 tp!603407))))

(assert (=> b!2029042 (= tp!603236 e!1282489)))

(declare-fun tp!603405 () Bool)

(declare-fun b!2030467 () Bool)

(declare-fun e!1282491 () Bool)

(declare-fun e!1282488 () Bool)

(assert (=> b!2030467 (= e!1282488 (and tp!603405 (inv!29386 (tag!4477 (rule!6220 (h!27610 (t!190126 (t!190126 tokens!598)))))) (inv!29389 (transformation!3991 (rule!6220 (h!27610 (t!190126 (t!190126 tokens!598)))))) e!1282491))))

(assert (=> b!2030468 (= e!1282491 (and tp!603403 tp!603404))))

(declare-fun tp!603406 () Bool)

(declare-fun b!2030466 () Bool)

(assert (=> b!2030466 (= e!1282492 (and (inv!21 (value!125336 (h!27610 (t!190126 (t!190126 tokens!598))))) e!1282488 tp!603406))))

(assert (= b!2030467 b!2030468))

(assert (= b!2030466 b!2030467))

(assert (= b!2030465 b!2030466))

(assert (= (and b!2029042 (is-Cons!22209 (t!190126 (t!190126 tokens!598)))) b!2030465))

(declare-fun m!2470917 () Bool)

(assert (=> b!2030465 m!2470917))

(declare-fun m!2470919 () Bool)

(assert (=> b!2030467 m!2470919))

(declare-fun m!2470921 () Bool)

(assert (=> b!2030467 m!2470921))

(declare-fun m!2470923 () Bool)

(assert (=> b!2030466 m!2470923))

(declare-fun b!2030474 () Bool)

(declare-fun e!1282496 () Bool)

(declare-fun tp!603409 () Bool)

(assert (=> b!2030474 (= e!1282496 tp!603409)))

(declare-fun b!2030472 () Bool)

(assert (=> b!2030472 (= e!1282496 tp_is_empty!9223)))

(declare-fun b!2030475 () Bool)

(declare-fun tp!603411 () Bool)

(declare-fun tp!603412 () Bool)

(assert (=> b!2030475 (= e!1282496 (and tp!603411 tp!603412))))

(declare-fun b!2030473 () Bool)

(declare-fun tp!603410 () Bool)

(declare-fun tp!603408 () Bool)

(assert (=> b!2030473 (= e!1282496 (and tp!603410 tp!603408))))

(assert (=> b!2029069 (= tp!603260 e!1282496)))

(assert (= (and b!2029069 (is-ElementMatch!5416 (regex!3991 (h!27609 (t!190125 rules!3198))))) b!2030472))

(assert (= (and b!2029069 (is-Concat!9544 (regex!3991 (h!27609 (t!190125 rules!3198))))) b!2030473))

(assert (= (and b!2029069 (is-Star!5416 (regex!3991 (h!27609 (t!190125 rules!3198))))) b!2030474))

(assert (= (and b!2029069 (is-Union!5416 (regex!3991 (h!27609 (t!190125 rules!3198))))) b!2030475))

(declare-fun b!2030476 () Bool)

(declare-fun e!1282497 () Bool)

(declare-fun tp!603413 () Bool)

(assert (=> b!2030476 (= e!1282497 (and tp_is_empty!9223 tp!603413))))

(assert (=> b!2029084 (= tp!603277 e!1282497)))

(assert (= (and b!2029084 (is-Cons!22207 (t!190124 (originalCharacters!4798 separatorToken!354)))) b!2030476))

(declare-fun b!2030479 () Bool)

(declare-fun e!1282498 () Bool)

(declare-fun tp!603415 () Bool)

(assert (=> b!2030479 (= e!1282498 tp!603415)))

(declare-fun b!2030477 () Bool)

(assert (=> b!2030477 (= e!1282498 tp_is_empty!9223)))

(declare-fun b!2030480 () Bool)

(declare-fun tp!603417 () Bool)

(declare-fun tp!603418 () Bool)

(assert (=> b!2030480 (= e!1282498 (and tp!603417 tp!603418))))

(declare-fun b!2030478 () Bool)

(declare-fun tp!603416 () Bool)

(declare-fun tp!603414 () Bool)

(assert (=> b!2030478 (= e!1282498 (and tp!603416 tp!603414))))

(assert (=> b!2029044 (= tp!603234 e!1282498)))

(assert (= (and b!2029044 (is-ElementMatch!5416 (regex!3991 (rule!6220 (h!27610 (t!190126 tokens!598)))))) b!2030477))

(assert (= (and b!2029044 (is-Concat!9544 (regex!3991 (rule!6220 (h!27610 (t!190126 tokens!598)))))) b!2030478))

(assert (= (and b!2029044 (is-Star!5416 (regex!3991 (rule!6220 (h!27610 (t!190126 tokens!598)))))) b!2030479))

(assert (= (and b!2029044 (is-Union!5416 (regex!3991 (rule!6220 (h!27610 (t!190126 tokens!598)))))) b!2030480))

(declare-fun tp!603421 () Bool)

(declare-fun b!2030481 () Bool)

(declare-fun tp!603420 () Bool)

(declare-fun e!1282500 () Bool)

(assert (=> b!2030481 (= e!1282500 (and (inv!29393 (left!17670 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (value!125336 (h!27610 tokens!598)))))) tp!603421 (inv!29393 (right!18000 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (value!125336 (h!27610 tokens!598)))))) tp!603420))))

(declare-fun b!2030483 () Bool)

(declare-fun e!1282499 () Bool)

(declare-fun tp!603419 () Bool)

(assert (=> b!2030483 (= e!1282499 tp!603419)))

(declare-fun b!2030482 () Bool)

(assert (=> b!2030482 (= e!1282500 (and (inv!29401 (xs!10330 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (value!125336 (h!27610 tokens!598)))))) e!1282499))))

(assert (=> b!2028622 (= tp!603219 (and (inv!29393 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (value!125336 (h!27610 tokens!598))))) e!1282500))))

(assert (= (and b!2028622 (is-Node!7428 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (value!125336 (h!27610 tokens!598)))))) b!2030481))

(assert (= b!2030482 b!2030483))

(assert (= (and b!2028622 (is-Leaf!10887 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (value!125336 (h!27610 tokens!598)))))) b!2030482))

(declare-fun m!2470931 () Bool)

(assert (=> b!2030481 m!2470931))

(declare-fun m!2470933 () Bool)

(assert (=> b!2030481 m!2470933))

(declare-fun m!2470935 () Bool)

(assert (=> b!2030482 m!2470935))

(assert (=> b!2028622 m!2467853))

(declare-fun b!2030486 () Bool)

(declare-fun e!1282501 () Bool)

(declare-fun tp!603423 () Bool)

(assert (=> b!2030486 (= e!1282501 tp!603423)))

(declare-fun b!2030484 () Bool)

(assert (=> b!2030484 (= e!1282501 tp_is_empty!9223)))

(declare-fun b!2030487 () Bool)

(declare-fun tp!603425 () Bool)

(declare-fun tp!603426 () Bool)

(assert (=> b!2030487 (= e!1282501 (and tp!603425 tp!603426))))

(declare-fun b!2030485 () Bool)

(declare-fun tp!603424 () Bool)

(declare-fun tp!603422 () Bool)

(assert (=> b!2030485 (= e!1282501 (and tp!603424 tp!603422))))

(assert (=> b!2029057 (= tp!603249 e!1282501)))

(assert (= (and b!2029057 (is-ElementMatch!5416 (regOne!11344 (regex!3991 (rule!6220 separatorToken!354))))) b!2030484))

(assert (= (and b!2029057 (is-Concat!9544 (regOne!11344 (regex!3991 (rule!6220 separatorToken!354))))) b!2030485))

(assert (= (and b!2029057 (is-Star!5416 (regOne!11344 (regex!3991 (rule!6220 separatorToken!354))))) b!2030486))

(assert (= (and b!2029057 (is-Union!5416 (regOne!11344 (regex!3991 (rule!6220 separatorToken!354))))) b!2030487))

(declare-fun b!2030490 () Bool)

(declare-fun e!1282502 () Bool)

(declare-fun tp!603428 () Bool)

(assert (=> b!2030490 (= e!1282502 tp!603428)))

(declare-fun b!2030488 () Bool)

(assert (=> b!2030488 (= e!1282502 tp_is_empty!9223)))

(declare-fun b!2030491 () Bool)

(declare-fun tp!603430 () Bool)

(declare-fun tp!603431 () Bool)

(assert (=> b!2030491 (= e!1282502 (and tp!603430 tp!603431))))

(declare-fun b!2030489 () Bool)

(declare-fun tp!603429 () Bool)

(declare-fun tp!603427 () Bool)

(assert (=> b!2030489 (= e!1282502 (and tp!603429 tp!603427))))

(assert (=> b!2029057 (= tp!603247 e!1282502)))

(assert (= (and b!2029057 (is-ElementMatch!5416 (regTwo!11344 (regex!3991 (rule!6220 separatorToken!354))))) b!2030488))

(assert (= (and b!2029057 (is-Concat!9544 (regTwo!11344 (regex!3991 (rule!6220 separatorToken!354))))) b!2030489))

(assert (= (and b!2029057 (is-Star!5416 (regTwo!11344 (regex!3991 (rule!6220 separatorToken!354))))) b!2030490))

(assert (= (and b!2029057 (is-Union!5416 (regTwo!11344 (regex!3991 (rule!6220 separatorToken!354))))) b!2030491))

(declare-fun b!2030494 () Bool)

(declare-fun e!1282505 () Bool)

(assert (=> b!2030494 (= e!1282505 true)))

(declare-fun b!2030493 () Bool)

(declare-fun e!1282504 () Bool)

(assert (=> b!2030493 (= e!1282504 e!1282505)))

(declare-fun b!2030492 () Bool)

(declare-fun e!1282503 () Bool)

(assert (=> b!2030492 (= e!1282503 e!1282504)))

(assert (=> b!2028583 e!1282503))

(assert (= b!2030493 b!2030494))

(assert (= b!2030492 b!2030493))

(assert (= (and b!2028583 (is-Cons!22208 (t!190125 rules!3198))) b!2030492))

(assert (=> b!2030494 (< (dynLambda!11037 order!14217 (toValue!5664 (transformation!3991 (h!27609 (t!190125 rules!3198))))) (dynLambda!11041 order!14223 lambda!76489))))

(assert (=> b!2030494 (< (dynLambda!11039 order!14221 (toChars!5523 (transformation!3991 (h!27609 (t!190125 rules!3198))))) (dynLambda!11041 order!14223 lambda!76489))))

(declare-fun b!2030497 () Bool)

(declare-fun e!1282506 () Bool)

(declare-fun tp!603433 () Bool)

(assert (=> b!2030497 (= e!1282506 tp!603433)))

(declare-fun b!2030495 () Bool)

(assert (=> b!2030495 (= e!1282506 tp_is_empty!9223)))

(declare-fun b!2030498 () Bool)

(declare-fun tp!603435 () Bool)

(declare-fun tp!603436 () Bool)

(assert (=> b!2030498 (= e!1282506 (and tp!603435 tp!603436))))

(declare-fun b!2030496 () Bool)

(declare-fun tp!603434 () Bool)

(declare-fun tp!603432 () Bool)

(assert (=> b!2030496 (= e!1282506 (and tp!603434 tp!603432))))

(assert (=> b!2029081 (= tp!603274 e!1282506)))

(assert (= (and b!2029081 (is-ElementMatch!5416 (regOne!11344 (regex!3991 (rule!6220 (h!27610 tokens!598)))))) b!2030495))

(assert (= (and b!2029081 (is-Concat!9544 (regOne!11344 (regex!3991 (rule!6220 (h!27610 tokens!598)))))) b!2030496))

(assert (= (and b!2029081 (is-Star!5416 (regOne!11344 (regex!3991 (rule!6220 (h!27610 tokens!598)))))) b!2030497))

(assert (= (and b!2029081 (is-Union!5416 (regOne!11344 (regex!3991 (rule!6220 (h!27610 tokens!598)))))) b!2030498))

(declare-fun b!2030501 () Bool)

(declare-fun e!1282508 () Bool)

(declare-fun tp!603438 () Bool)

(assert (=> b!2030501 (= e!1282508 tp!603438)))

(declare-fun b!2030499 () Bool)

(assert (=> b!2030499 (= e!1282508 tp_is_empty!9223)))

(declare-fun b!2030502 () Bool)

(declare-fun tp!603440 () Bool)

(declare-fun tp!603441 () Bool)

(assert (=> b!2030502 (= e!1282508 (and tp!603440 tp!603441))))

(declare-fun b!2030500 () Bool)

(declare-fun tp!603439 () Bool)

(declare-fun tp!603437 () Bool)

(assert (=> b!2030500 (= e!1282508 (and tp!603439 tp!603437))))

(assert (=> b!2029081 (= tp!603272 e!1282508)))

(assert (= (and b!2029081 (is-ElementMatch!5416 (regTwo!11344 (regex!3991 (rule!6220 (h!27610 tokens!598)))))) b!2030499))

(assert (= (and b!2029081 (is-Concat!9544 (regTwo!11344 (regex!3991 (rule!6220 (h!27610 tokens!598)))))) b!2030500))

(assert (= (and b!2029081 (is-Star!5416 (regTwo!11344 (regex!3991 (rule!6220 (h!27610 tokens!598)))))) b!2030501))

(assert (= (and b!2029081 (is-Union!5416 (regTwo!11344 (regex!3991 (rule!6220 (h!27610 tokens!598)))))) b!2030502))

(declare-fun b!2030505 () Bool)

(declare-fun e!1282509 () Bool)

(declare-fun tp!603443 () Bool)

(assert (=> b!2030505 (= e!1282509 tp!603443)))

(declare-fun b!2030503 () Bool)

(assert (=> b!2030503 (= e!1282509 tp_is_empty!9223)))

(declare-fun b!2030506 () Bool)

(declare-fun tp!603445 () Bool)

(declare-fun tp!603446 () Bool)

(assert (=> b!2030506 (= e!1282509 (and tp!603445 tp!603446))))

(declare-fun b!2030504 () Bool)

(declare-fun tp!603444 () Bool)

(declare-fun tp!603442 () Bool)

(assert (=> b!2030504 (= e!1282509 (and tp!603444 tp!603442))))

(assert (=> b!2029082 (= tp!603273 e!1282509)))

(assert (= (and b!2029082 (is-ElementMatch!5416 (reg!5745 (regex!3991 (rule!6220 (h!27610 tokens!598)))))) b!2030503))

(assert (= (and b!2029082 (is-Concat!9544 (reg!5745 (regex!3991 (rule!6220 (h!27610 tokens!598)))))) b!2030504))

(assert (= (and b!2029082 (is-Star!5416 (reg!5745 (regex!3991 (rule!6220 (h!27610 tokens!598)))))) b!2030505))

(assert (= (and b!2029082 (is-Union!5416 (reg!5745 (regex!3991 (rule!6220 (h!27610 tokens!598)))))) b!2030506))

(declare-fun e!1282511 () Bool)

(declare-fun tp!603449 () Bool)

(declare-fun tp!603448 () Bool)

(declare-fun b!2030507 () Bool)

(assert (=> b!2030507 (= e!1282511 (and (inv!29393 (left!17670 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (value!125336 separatorToken!354))))) tp!603449 (inv!29393 (right!18000 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (value!125336 separatorToken!354))))) tp!603448))))

(declare-fun b!2030509 () Bool)

(declare-fun e!1282510 () Bool)

(declare-fun tp!603447 () Bool)

(assert (=> b!2030509 (= e!1282510 tp!603447)))

(declare-fun b!2030508 () Bool)

(assert (=> b!2030508 (= e!1282511 (and (inv!29401 (xs!10330 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (value!125336 separatorToken!354))))) e!1282510))))

(assert (=> b!2028623 (= tp!603220 (and (inv!29393 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (value!125336 separatorToken!354)))) e!1282511))))

(assert (= (and b!2028623 (is-Node!7428 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (value!125336 separatorToken!354))))) b!2030507))

(assert (= b!2030508 b!2030509))

(assert (= (and b!2028623 (is-Leaf!10887 (c!328191 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (value!125336 separatorToken!354))))) b!2030508))

(declare-fun m!2470939 () Bool)

(assert (=> b!2030507 m!2470939))

(declare-fun m!2470941 () Bool)

(assert (=> b!2030507 m!2470941))

(declare-fun m!2470943 () Bool)

(assert (=> b!2030508 m!2470943))

(assert (=> b!2028623 m!2467867))

(declare-fun b!2030512 () Bool)

(declare-fun e!1282512 () Bool)

(declare-fun tp!603451 () Bool)

(assert (=> b!2030512 (= e!1282512 tp!603451)))

(declare-fun b!2030510 () Bool)

(assert (=> b!2030510 (= e!1282512 tp_is_empty!9223)))

(declare-fun b!2030513 () Bool)

(declare-fun tp!603453 () Bool)

(declare-fun tp!603454 () Bool)

(assert (=> b!2030513 (= e!1282512 (and tp!603453 tp!603454))))

(declare-fun b!2030511 () Bool)

(declare-fun tp!603452 () Bool)

(declare-fun tp!603450 () Bool)

(assert (=> b!2030511 (= e!1282512 (and tp!603452 tp!603450))))

(assert (=> b!2029083 (= tp!603275 e!1282512)))

(assert (= (and b!2029083 (is-ElementMatch!5416 (regOne!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))))) b!2030510))

(assert (= (and b!2029083 (is-Concat!9544 (regOne!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))))) b!2030511))

(assert (= (and b!2029083 (is-Star!5416 (regOne!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))))) b!2030512))

(assert (= (and b!2029083 (is-Union!5416 (regOne!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))))) b!2030513))

(declare-fun b!2030516 () Bool)

(declare-fun e!1282513 () Bool)

(declare-fun tp!603456 () Bool)

(assert (=> b!2030516 (= e!1282513 tp!603456)))

(declare-fun b!2030514 () Bool)

(assert (=> b!2030514 (= e!1282513 tp_is_empty!9223)))

(declare-fun b!2030517 () Bool)

(declare-fun tp!603458 () Bool)

(declare-fun tp!603459 () Bool)

(assert (=> b!2030517 (= e!1282513 (and tp!603458 tp!603459))))

(declare-fun b!2030515 () Bool)

(declare-fun tp!603457 () Bool)

(declare-fun tp!603455 () Bool)

(assert (=> b!2030515 (= e!1282513 (and tp!603457 tp!603455))))

(assert (=> b!2029083 (= tp!603276 e!1282513)))

(assert (= (and b!2029083 (is-ElementMatch!5416 (regTwo!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))))) b!2030514))

(assert (= (and b!2029083 (is-Concat!9544 (regTwo!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))))) b!2030515))

(assert (= (and b!2029083 (is-Star!5416 (regTwo!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))))) b!2030516))

(assert (= (and b!2029083 (is-Union!5416 (regTwo!11345 (regex!3991 (rule!6220 (h!27610 tokens!598)))))) b!2030517))

(declare-fun b!2030520 () Bool)

(declare-fun e!1282516 () Bool)

(assert (=> b!2030520 (= e!1282516 true)))

(declare-fun b!2030519 () Bool)

(declare-fun e!1282515 () Bool)

(assert (=> b!2030519 (= e!1282515 e!1282516)))

(declare-fun b!2030518 () Bool)

(declare-fun e!1282514 () Bool)

(assert (=> b!2030518 (= e!1282514 e!1282515)))

(assert (=> b!2028991 e!1282514))

(assert (= b!2030519 b!2030520))

(assert (= b!2030518 b!2030519))

(assert (= (and b!2028991 (is-Cons!22208 (t!190125 rules!3198))) b!2030518))

(assert (=> b!2030520 (< (dynLambda!11037 order!14217 (toValue!5664 (transformation!3991 (h!27609 (t!190125 rules!3198))))) (dynLambda!11041 order!14223 lambda!76498))))

(assert (=> b!2030520 (< (dynLambda!11039 order!14221 (toChars!5523 (transformation!3991 (h!27609 (t!190125 rules!3198))))) (dynLambda!11041 order!14223 lambda!76498))))

(declare-fun b_lambda!68369 () Bool)

(assert (= b_lambda!68365 (or d!620213 b_lambda!68369)))

(declare-fun bs!420939 () Bool)

(declare-fun d!621219 () Bool)

(assert (= bs!420939 (and d!621219 d!620213)))

(declare-fun res!890422 () Bool)

(declare-fun e!1282519 () Bool)

(assert (=> bs!420939 (=> res!890422 e!1282519)))

(assert (=> bs!420939 (= res!890422 (not (= (list!9066 lt!761729) (list!9066 (seqFromList!2845 (originalCharacters!4798 (h!27610 tokens!598)))))))))

(assert (=> bs!420939 (= (dynLambda!11055 lambda!76486 lt!761729 (seqFromList!2845 (originalCharacters!4798 (h!27610 tokens!598)))) e!1282519)))

(declare-fun b!2030525 () Bool)

(assert (=> b!2030525 (= e!1282519 (= (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729) (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (seqFromList!2845 (originalCharacters!4798 (h!27610 tokens!598))))))))

(assert (= (and bs!420939 (not res!890422)) b!2030525))

(declare-fun b_lambda!68385 () Bool)

(assert (=> (not b_lambda!68385) (not b!2030525)))

(assert (=> b!2030525 t!190194))

(declare-fun b_and!161731 () Bool)

(assert (= b_and!161669 (and (=> t!190194 result!153044) b_and!161731)))

(assert (=> b!2030525 t!190135))

(declare-fun b_and!161733 () Bool)

(assert (= b_and!161671 (and (=> t!190135 result!152984) b_and!161733)))

(assert (=> b!2030525 t!190184))

(declare-fun b_and!161735 () Bool)

(assert (= b_and!161663 (and (=> t!190184 result!153030) b_and!161735)))

(assert (=> b!2030525 t!190137))

(declare-fun b_and!161737 () Bool)

(assert (= b_and!161665 (and (=> t!190137 result!152986) b_and!161737)))

(assert (=> b!2030525 t!190457))

(declare-fun b_and!161739 () Bool)

(assert (= b_and!161717 (and (=> t!190457 result!153312) b_and!161739)))

(assert (=> b!2030525 t!190133))

(declare-fun b_and!161741 () Bool)

(assert (= b_and!161667 (and (=> t!190133 result!152980) b_and!161741)))

(assert (=> b!2030525 t!190421))

(declare-fun b_and!161743 () Bool)

(assert (= b_and!161713 (and (=> t!190421 result!153274) b_and!161743)))

(declare-fun b_lambda!68387 () Bool)

(assert (=> (not b_lambda!68387) (not b!2030525)))

(assert (=> b!2030525 t!190139))

(declare-fun b_and!161745 () Bool)

(assert (= b_and!161741 (and (=> t!190139 result!152988) b_and!161745)))

(assert (=> b!2030525 t!190423))

(declare-fun b_and!161747 () Bool)

(assert (= b_and!161743 (and (=> t!190423 result!153276) b_and!161747)))

(assert (=> b!2030525 t!190141))

(declare-fun b_and!161749 () Bool)

(assert (= b_and!161733 (and (=> t!190141 result!152990) b_and!161749)))

(assert (=> b!2030525 t!190143))

(declare-fun b_and!161751 () Bool)

(assert (= b_and!161737 (and (=> t!190143 result!152992) b_and!161751)))

(assert (=> b!2030525 t!190459))

(declare-fun b_and!161753 () Bool)

(assert (= b_and!161739 (and (=> t!190459 result!153314) b_and!161753)))

(assert (=> b!2030525 t!190196))

(declare-fun b_and!161755 () Bool)

(assert (= b_and!161731 (and (=> t!190196 result!153046) b_and!161755)))

(assert (=> b!2030525 t!190186))

(declare-fun b_and!161757 () Bool)

(assert (= b_and!161735 (and (=> t!190186 result!153032) b_and!161757)))

(assert (=> bs!420939 m!2467153))

(assert (=> bs!420939 m!2467159))

(assert (=> bs!420939 m!2467501))

(assert (=> b!2030525 m!2467503))

(assert (=> b!2030525 m!2467159))

(assert (=> b!2030525 m!2467499))

(assert (=> d!621189 d!621219))

(declare-fun b_lambda!68371 () Bool)

(assert (= b_lambda!68353 (or (and b!2030446 b_free!56623 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 (t!190125 rules!3198))))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))))) (and b!2029070 b_free!56611 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))))) (and b!2030468 b_free!56627 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 (t!190126 tokens!598)))))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))))) (and b!2028151 b_free!56587 (= (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))))) (and b!2028164 b_free!56591 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))))) (and b!2029045 b_free!56607) (and b!2028173 b_free!56583 (= (toChars!5523 (transformation!3991 (h!27609 rules!3198))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))))) b_lambda!68371)))

(declare-fun b_lambda!68373 () Bool)

(assert (= b_lambda!68357 (or b!2029003 b_lambda!68373)))

(declare-fun bs!420941 () Bool)

(declare-fun d!621227 () Bool)

(assert (= bs!420941 (and d!621227 b!2029003)))

(assert (=> bs!420941 (= (dynLambda!11048 lambda!76499 (h!27610 tokens!598)) (rulesProduceIndividualToken!1776 thiss!23328 rules!3198 (h!27610 tokens!598)))))

(assert (=> bs!420941 m!2467237))

(assert (=> d!621073 d!621227))

(declare-fun b_lambda!68375 () Bool)

(assert (= b_lambda!68345 (or b!2028567 b_lambda!68375)))

(declare-fun bs!420942 () Bool)

(declare-fun d!621229 () Bool)

(assert (= bs!420942 (and d!621229 b!2028567)))

(assert (=> bs!420942 (= (dynLambda!11048 lambda!76489 (h!27610 (t!190126 tokens!598))) (rulesProduceIndividualToken!1776 thiss!23328 rules!3198 (h!27610 (t!190126 tokens!598))))))

(assert (=> bs!420942 m!2470763))

(assert (=> d!620889 d!621229))

(declare-fun b_lambda!68377 () Bool)

(assert (= b_lambda!68317 (or (and b!2030446 b_free!56623 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 (t!190125 rules!3198))))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))))) (and b!2029070 b_free!56611 (= (toChars!5523 (transformation!3991 (h!27609 (t!190125 rules!3198)))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))))) (and b!2030468 b_free!56627 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 (t!190126 tokens!598)))))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))))) (and b!2028151 b_free!56587 (= (toChars!5523 (transformation!3991 (rule!6220 separatorToken!354))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))))) (and b!2028164 b_free!56591 (= (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))))) (and b!2029045 b_free!56607) (and b!2028173 b_free!56583 (= (toChars!5523 (transformation!3991 (h!27609 rules!3198))) (toChars!5523 (transformation!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))))) b_lambda!68377)))

(declare-fun b_lambda!68379 () Bool)

(assert (= b_lambda!68331 (or d!620447 b_lambda!68379)))

(declare-fun bs!420943 () Bool)

(declare-fun d!621231 () Bool)

(assert (= bs!420943 (and d!621231 d!620447)))

(assert (=> bs!420943 (= (dynLambda!11048 lambda!76498 (h!27610 tokens!598)) (rulesProduceIndividualToken!1776 thiss!23328 rules!3198 (h!27610 tokens!598)))))

(assert (=> bs!420943 m!2467237))

(assert (=> b!2029603 d!621231))

(declare-fun b_lambda!68381 () Bool)

(assert (= b_lambda!68325 (or d!620293 b_lambda!68381)))

(declare-fun bs!420944 () Bool)

(declare-fun d!621233 () Bool)

(assert (= bs!420944 (and d!621233 d!620293)))

(assert (=> bs!420944 (= (dynLambda!11053 lambda!76492 lt!761729) (= (list!9066 (dynLambda!11043 (toChars!5523 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) (dynLambda!11040 (toValue!5664 (transformation!3991 (rule!6220 (h!27610 tokens!598)))) lt!761729))) (list!9066 lt!761729)))))

(declare-fun b_lambda!68391 () Bool)

(assert (=> (not b_lambda!68391) (not bs!420944)))

(assert (=> bs!420944 t!190479))

(declare-fun b_and!161765 () Bool)

(assert (= b_and!161719 (and (=> t!190479 result!153334) b_and!161765)))

(assert (=> bs!420944 t!190158))

(declare-fun b_and!161769 () Bool)

(assert (= b_and!161711 (and (=> t!190158 result!153006) b_and!161769)))

(assert (=> bs!420944 t!190443))

(declare-fun b_and!161771 () Bool)

(assert (= b_and!161715 (and (=> t!190443 result!153296) b_and!161771)))

(assert (=> bs!420944 t!190160))

(declare-fun b_and!161773 () Bool)

(assert (= b_and!161703 (and (=> t!190160 result!153008) b_and!161773)))

(assert (=> bs!420944 t!190156))

(declare-fun b_and!161777 () Bool)

(assert (= b_and!161707 (and (=> t!190156 result!153002) b_and!161777)))

(assert (=> bs!420944 t!190192))

(declare-fun b_and!161779 () Bool)

(assert (= b_and!161705 (and (=> t!190192 result!153038) b_and!161779)))

(assert (=> bs!420944 t!190202))

(declare-fun b_and!161781 () Bool)

(assert (= b_and!161709 (and (=> t!190202 result!153052) b_and!161781)))

(declare-fun b_lambda!68393 () Bool)

(assert (=> (not b_lambda!68393) (not bs!420944)))

(assert (=> bs!420944 t!190194))

(declare-fun b_and!161783 () Bool)

(assert (= b_and!161755 (and (=> t!190194 result!153044) b_and!161783)))

(assert (=> bs!420944 t!190135))

(declare-fun b_and!161785 () Bool)

(assert (= b_and!161749 (and (=> t!190135 result!152984) b_and!161785)))

(assert (=> bs!420944 t!190457))

(declare-fun b_and!161787 () Bool)

(assert (= b_and!161753 (and (=> t!190457 result!153312) b_and!161787)))

(assert (=> bs!420944 t!190184))

(declare-fun b_and!161789 () Bool)

(assert (= b_and!161757 (and (=> t!190184 result!153030) b_and!161789)))

(assert (=> bs!420944 t!190421))

(declare-fun b_and!161791 () Bool)

(assert (= b_and!161747 (and (=> t!190421 result!153274) b_and!161791)))

(assert (=> bs!420944 t!190133))

(declare-fun b_and!161793 () Bool)

(assert (= b_and!161745 (and (=> t!190133 result!152980) b_and!161793)))

(assert (=> bs!420944 t!190137))

(declare-fun b_and!161795 () Bool)

(assert (= b_and!161751 (and (=> t!190137 result!152986) b_and!161795)))

(assert (=> bs!420944 m!2467503))

(assert (=> bs!420944 m!2467827))

(assert (=> bs!420944 m!2467831))

(assert (=> bs!420944 m!2467153))

(assert (=> bs!420944 m!2467503))

(assert (=> bs!420944 m!2467827))

(assert (=> d!620621 d!621233))

(declare-fun b_lambda!68383 () Bool)

(assert (= b_lambda!68335 (or b!2028166 b_lambda!68383)))

(declare-fun bs!420945 () Bool)

(declare-fun d!621237 () Bool)

(assert (= bs!420945 (and d!621237 b!2028166)))

(assert (=> bs!420945 (= (dynLambda!11048 lambda!76480 (h!27610 (t!190126 tokens!598))) (not (isSeparator!3991 (rule!6220 (h!27610 (t!190126 tokens!598))))))))

(assert (=> b!2029648 d!621237))

(push 1)

(assert (not b!2029585))

(assert (not b!2029998))

(assert (not b!2029601))

(assert (not b!2029930))

(assert (not b!2030349))

(assert (not b!2029813))

(assert (not d!620561))

(assert (not d!621177))

(assert (not b!2029605))

(assert (not d!621055))

(assert (not b!2029716))

(assert (not bm!124571))

(assert (not b!2029670))

(assert (not b!2029492))

(assert (not b!2030467))

(assert (not bm!124565))

(assert (not d!620535))

(assert (not bs!420939))

(assert (not d!620809))

(assert (not b_next!57293))

(assert (not b!2029334))

(assert (not b!2029857))

(assert (not b!2029598))

(assert tp_is_empty!9223)

(assert (not tb!128011))

(assert (not b!2030299))

(assert (not d!620583))

(assert (not d!621125))

(assert (not b!2029817))

(assert (not b!2029378))

(assert (not d!620553))

(assert (not tb!127971))

(assert (not d!620877))

(assert (not b!2029845))

(assert (not bm!124541))

(assert (not bm!124511))

(assert (not b!2029516))

(assert (not b!2030518))

(assert (not d!620597))

(assert (not tb!128101))

(assert (not b!2030239))

(assert (not d!620955))

(assert (not b!2030126))

(assert (not b!2030194))

(assert (not b!2030481))

(assert (not b!2029634))

(assert (not bm!124531))

(assert (not d!620811))

(assert (not d!620965))

(assert (not tb!128001))

(assert (not b!2030005))

(assert (not b!2029951))

(assert (not d!620959))

(assert (not d!620641))

(assert b_and!161765)

(assert (not b!2029795))

(assert b_and!161779)

(assert (not d!620739))

(assert (not b!2030427))

(assert (not b!2030345))

(assert (not b!2029495))

(assert (not b!2029592))

(assert (not d!620915))

(assert (not b_next!57331))

(assert (not b_lambda!68379))

(assert (not b!2029472))

(assert (not b!2029935))

(assert (not d!620651))

(assert (not d!620977))

(assert (not d!621147))

(assert (not b!2030019))

(assert (not d!620647))

(assert (not d!620551))

(assert (not d!620919))

(assert (not d!620763))

(assert (not b!2030403))

(assert (not b!2029474))

(assert (not bm!124542))

(assert (not d!620633))

(assert (not d!620669))

(assert (not b!2029763))

(assert (not bm!124530))

(assert (not b_lambda!68337))

(assert (not b!2030214))

(assert (not d!620687))

(assert (not b!2030441))

(assert (not d!621105))

(assert (not bm!124553))

(assert (not tb!128021))

(assert (not b!2029324))

(assert (not b!2030142))

(assert (not bm!124547))

(assert (not b!2029611))

(assert (not b!2029791))

(assert (not b!2030479))

(assert (not bm!124599))

(assert (not b!2030433))

(assert (not b!2029630))

(assert (not d!620653))

(assert (not b_lambda!68347))

(assert (not d!620731))

(assert (not b!2030038))

(assert (not b!2030380))

(assert (not bm!124590))

(assert (not d!620993))

(assert (not b_lambda!68351))

(assert (not b!2028597))

(assert (not b!2030120))

(assert (not b!2029519))

(assert (not b!2030070))

(assert (not b!2029475))

(assert (not d!620843))

(assert (not d!620705))

(assert (not b!2030413))

(assert (not d!620567))

(assert (not b!2029774))

(assert (not d!620541))

(assert (not d!620733))

(assert (not b!2030435))

(assert (not b!2029602))

(assert (not b!2029467))

(assert (not b!2030464))

(assert (not b!2029637))

(assert (not d!620923))

(assert (not b_next!57329))

(assert (not b!2030028))

(assert (not d!620861))

(assert (not b!2029905))

(assert (not b!2030508))

(assert (not b!2029842))

(assert (not b!2030277))

(assert (not b!2030188))

(assert (not b!2029325))

(assert (not b!2030262))

(assert (not b!2029586))

(assert (not bm!124528))

(assert (not d!621037))

(assert (not d!620783))

(assert (not b!2029322))

(assert (not b!2030083))

(assert (not b!2030322))

(assert (not d!620547))

(assert (not b!2030162))

(assert (not b!2030122))

(assert (not b!2030317))

(assert (not b!2029651))

(assert (not b!2030040))

(assert (not bm!124609))

(assert (not b!2030301))

(assert (not b!2030516))

(assert (not d!620611))

(assert (not b_lambda!68349))

(assert (not bm!124612))

(assert (not b!2029591))

(assert (not b!2030496))

(assert (not b!2029749))

(assert (not b!2030293))

(assert (not bm!124611))

(assert (not b!2030437))

(assert (not b!2030093))

(assert (not b!2030191))

(assert (not b!2028623))

(assert (not b!2029931))

(assert (not bm!124604))

(assert (not d!620693))

(assert (not b!2030416))

(assert (not b!2030034))

(assert (not b!2030507))

(assert (not b!2029307))

(assert (not bm!124551))

(assert (not d!620909))

(assert (not b!2030490))

(assert (not d!621013))

(assert (not d!620845))

(assert (not b!2030432))

(assert (not d!620581))

(assert (not b!2030492))

(assert (not d!620563))

(assert (not d!620939))

(assert (not b!2029893))

(assert (not b!2030160))

(assert (not b!2029290))

(assert (not d!620667))

(assert (not b!2030445))

(assert (not b!2029403))

(assert (not d!621047))

(assert (not b!2029908))

(assert (not d!620603))

(assert (not b!2030295))

(assert (not b!2030029))

(assert (not b!2030425))

(assert (not d!620565))

(assert (not b_next!57309))

(assert (not d!620975))

(assert (not b!2030501))

(assert (not b!2030158))

(assert (not b!2030389))

(assert (not b!2029470))

(assert (not d!621113))

(assert (not b_lambda!68385))

(assert (not b_next!57285))

(assert (not b!2030512))

(assert (not bs!420943))

(assert (not b!2030298))

(assert (not d!621145))

(assert (not b!2029974))

(assert (not d!621075))

(assert (not d!620593))

(assert (not tb!127961))

(assert (not b!2030395))

(assert b_and!161795)

(assert (not b!2029346))

(assert (not b!2029482))

(assert (not b!2030491))

(assert (not b!2029654))

(assert (not d!620665))

(assert (not b!2030069))

(assert (not d!620787))

(assert (not b!2030381))

(assert (not b!2029943))

(assert (not b!2029964))

(assert (not b!2030315))

(assert (not b!2029949))

(assert (not b_next!57289))

(assert (not d!621107))

(assert (not b!2030076))

(assert (not b!2029430))

(assert (not b!2029558))

(assert (not d!620827))

(assert (not d!620679))

(assert (not b!2029953))

(assert (not b!2030091))

(assert (not b!2030193))

(assert (not b!2029506))

(assert (not b!2029392))

(assert (not b!2029952))

(assert b_and!161791)

(assert (not b!2029600))

(assert (not bm!124596))

(assert (not d!620663))

(assert (not b!2029991))

(assert (not b!2030185))

(assert (not b!2030436))

(assert (not b!2029985))

(assert (not d!621043))

(assert (not b!2029970))

(assert (not bm!124607))

(assert (not d!620989))

(assert (not b!2030192))

(assert (not d!620777))

(assert (not b!2030242))

(assert (not d!620967))

(assert (not d!621021))

(assert (not b!2029609))

(assert (not d!620625))

(assert (not d!620609))

(assert (not b!2029663))

(assert (not b_lambda!68391))

(assert (not b!2030250))

(assert (not b!2029296))

(assert (not b!2029511))

(assert (not bm!124583))

(assert (not d!620781))

(assert (not b!2029777))

(assert (not b!2030504))

(assert (not b!2029821))

(assert (not b!2030251))

(assert (not b!2029963))

(assert (not b!2030044))

(assert (not b!2029764))

(assert (not b!2029293))

(assert (not b!2029971))

(assert (not b!2029962))

(assert (not b!2029638))

(assert (not b!2030067))

(assert (not d!621117))

(assert (not bm!124572))

(assert (not b!2029497))

(assert (not b!2030444))

(assert (not b!2029498))

(assert (not d!620929))

(assert (not b!2030312))

(assert (not b!2029986))

(assert (not d!620559))

(assert (not d!621015))

(assert (not b!2029860))

(assert (not b!2029596))

(assert (not b!2029799))

(assert (not d!620797))

(assert (not d!620817))

(assert (not d!620979))

(assert (not b_lambda!68373))

(assert (not b!2029509))

(assert (not b!2029635))

(assert (not b!2030072))

(assert (not b!2030466))

(assert (not bm!124525))

(assert (not b!2029376))

(assert (not b!2029321))

(assert (not b!2029619))

(assert (not bs!420942))

(assert (not b!2029377))

(assert (not bm!124594))

(assert (not d!620807))

(assert (not b!2029393))

(assert (not b!2029768))

(assert (not b!2030116))

(assert (not b!2029294))

(assert (not b!2030473))

(assert (not b!2030266))

(assert (not d!620925))

(assert (not b!2030486))

(assert (not b!2030276))

(assert (not b_next!57291))

(assert (not bm!124589))

(assert (not d!620761))

(assert (not d!621033))

(assert (not b!2030260))

(assert (not b!2029481))

(assert (not d!620549))

(assert (not b!2029891))

(assert (not b!2030474))

(assert (not bm!124554))

(assert (not tb!128051))

(assert (not b!2030339))

(assert (not b!2029292))

(assert (not bm!124579))

(assert (not d!620573))

(assert (not d!620805))

(assert (not b!2030443))

(assert (not b!2030505))

(assert (not tb!127991))

(assert (not b!2029477))

(assert (not b!2029844))

(assert (not b!2029486))

(assert (not b!2029323))

(assert (not b!2029941))

(assert (not bm!124508))

(assert (not b!2029643))

(assert (not b!2029571))

(assert (not b!2029793))

(assert (not b!2029945))

(assert (not b!2029320))

(assert (not b!2029650))

(assert (not d!620673))

(assert (not b!2030378))

(assert (not b!2030511))

(assert (not d!621193))

(assert (not d!621063))

(assert (not d!621101))

(assert (not b!2030382))

(assert (not bs!420944))

(assert (not b!2030421))

(assert (not b!2029295))

(assert (not b!2029645))

(assert (not b!2029786))

(assert (not d!620983))

(assert (not b!2029494))

(assert (not b!2030482))

(assert (not b!2030094))

(assert (not b!2030415))

(assert (not b!2029859))

(assert (not d!620621))

(assert (not d!620789))

(assert (not d!620799))

(assert (not b!2030442))

(assert (not d!620953))

(assert (not b!2029342))

(assert (not b!2029895))

(assert (not b!2030515))

(assert (not b!2029661))

(assert (not b!2029608))

(assert (not b!2029967))

(assert (not b_lambda!68279))

(assert b_and!161773)

(assert (not b!2029674))

(assert (not b!2029504))

(assert (not bm!124515))

(assert (not b_lambda!68361))

(assert (not d!621023))

(assert (not b!2029404))

(assert (not b!2029950))

(assert (not b!2030485))

(assert (not b!2029652))

(assert b_and!161783)

(assert (not b!2030196))

(assert (not b!2030440))

(assert (not b_lambda!68329))

(assert (not b!2029627))

(assert (not tb!128061))

(assert (not bm!124575))

(assert (not b_lambda!68327))

(assert (not d!620971))

(assert (not b_lambda!68281))

(assert (not d!620889))

(assert (not b_next!57313))

(assert (not d!620987))

(assert (not bm!124576))

(assert (not d!620619))

(assert (not b_lambda!68387))

(assert (not b!2029691))

(assert (not b!2030127))

(assert (not b!2029655))

(assert (not b!2029921))

(assert (not bm!124532))

(assert (not b!2030497))

(assert (not d!621143))

(assert (not b!2029500))

(assert (not b!2029451))

(assert (not d!621007))

(assert (not b!2030489))

(assert (not tb!127981))

(assert (not b!2030149))

(assert (not b!2029625))

(assert (not bm!124510))

(assert (not b!2029344))

(assert (not b!2030341))

(assert (not tb!127951))

(assert (not d!620823))

(assert (not b!2030420))

(assert (not b!2029633))

(assert (not b!2029649))

(assert (not b!2029339))

(assert (not b!2029397))

(assert (not b!2029517))

(assert (not b!2029761))

(assert (not b!2029944))

(assert (not b!2029739))

(assert (not b!2030314))

(assert (not bm!124584))

(assert (not bm!124533))

(assert (not b!2030424))

(assert (not d!620793))

(assert (not b!2029852))

(assert (not b!2029612))

(assert (not b!2029513))

(assert (not b!2029551))

(assert (not b!2029456))

(assert (not b!2029762))

(assert (not bm!124548))

(assert (not b!2030305))

(assert (not b!2030117))

(assert (not b!2030431))

(assert (not b!2030007))

(assert (not b!2029358))

(assert (not d!620531))

(assert (not b_lambda!68319))

(assert (not b!2029584))

(assert (not b!2030148))

(assert (not b!2030032))

(assert (not b!2030219))

(assert (not b!2030186))

(assert (not b!2029910))

(assert (not b!2029656))

(assert (not d!620815))

(assert (not d!620779))

(assert (not b!2030478))

(assert (not b!2029717))

(assert (not b!2030297))

(assert (not b_lambda!68271))

(assert (not b!2029709))

(assert (not d!621041))

(assert (not b!2029449))

(assert (not b_lambda!68381))

(assert (not d!620801))

(assert (not b!2029896))

(assert (not b!2029697))

(assert (not b!2030439))

(assert (not b!2030300))

(assert (not b!2029348))

(assert (not b!2029853))

(assert (not b!2029888))

(assert (not b!2030387))

(assert (not d!620627))

(assert (not b!2030009))

(assert (not tb!128071))

(assert (not b!2029507))

(assert (not d!620677))

(assert (not b!2029379))

(assert (not b!2030411))

(assert (not b!2029664))

(assert (not b!2029858))

(assert (not d!621109))

(assert (not d!620973))

(assert (not b!2029345))

(assert (not d!620791))

(assert (not b!2030077))

(assert (not b!2030190))

(assert (not b!2029938))

(assert (not d!621185))

(assert b_and!161777)

(assert (not b!2030506))

(assert (not b!2029604))

(assert (not b!2030476))

(assert (not b_lambda!68377))

(assert (not d!620595))

(assert (not b!2030423))

(assert (not b!2030340))

(assert (not b!2029975))

(assert (not b!2029673))

(assert (not b_next!57315))

(assert (not b!2029607))

(assert (not d!620931))

(assert (not b!2030396))

(assert (not d!620737))

(assert (not b!2030107))

(assert (not d!621095))

(assert (not d!620645))

(assert (not b!2029760))

(assert (not d!620831))

(assert (not d!620829))

(assert (not b_lambda!68371))

(assert (not b!2030198))

(assert (not b!2030304))

(assert (not b!2029359))

(assert (not d!621035))

(assert (not b_lambda!68375))

(assert (not d!620545))

(assert (not b!2029621))

(assert (not b!2029948))

(assert (not b!2029657))

(assert (not b!2030465))

(assert (not b!2030417))

(assert (not bm!124606))

(assert (not b!2029394))

(assert (not b!2030498))

(assert (not b!2030487))

(assert (not b!2029946))

(assert (not bm!124577))

(assert (not d!621019))

(assert (not b!2029966))

(assert (not b!2029694))

(assert (not b!2030346))

(assert (not b!2030168))

(assert (not b!2030003))

(assert (not d!621103))

(assert (not b!2029718))

(assert (not tb!127941))

(assert (not b_next!57327))

(assert (not d!620723))

(assert (not bm!124514))

(assert (not d!620819))

(assert (not b!2030463))

(assert (not b!2029340))

(assert (not b!2030267))

(assert (not d!621031))

(assert (not b_next!57311))

(assert (not d!621045))

(assert (not b!2029965))

(assert (not b_next!57325))

(assert (not d!620957))

(assert (not b!2030145))

(assert (not b!2030386))

(assert (not d!621017))

(assert (not b!2029982))

(assert (not b!2030024))

(assert (not b!2029823))

(assert (not d!621029))

(assert (not d!620855))

(assert (not d!620881))

(assert (not b!2029978))

(assert (not bm!124578))

(assert (not b!2029550))

(assert (not b!2030146))

(assert (not d!621083))

(assert (not d!620557))

(assert (not b_lambda!68369))

(assert (not b!2030379))

(assert (not d!621073))

(assert (not b!2029660))

(assert (not b!2028622))

(assert (not b!2030035))

(assert (not b!2030517))

(assert (not b!2029748))

(assert (not b!2030045))

(assert (not b!2029361))

(assert (not b!2029961))

(assert (not b!2029439))

(assert (not b!2029904))

(assert (not b!2029696))

(assert (not b!2029797))

(assert (not b!2030096))

(assert (not b!2029521))

(assert (not b!2029676))

(assert (not b!2030037))

(assert (not b!2030348))

(assert (not b!2029391))

(assert (not b!2030500))

(assert (not b!2030141))

(assert (not b!2029980))

(assert (not bm!124524))

(assert (not d!621153))

(assert (not b!2029396))

(assert (not b_lambda!68273))

(assert (not d!620577))

(assert (not b!2030363))

(assert (not b!2029471))

(assert (not bm!124559))

(assert (not b!2029708))

(assert (not b_lambda!68323))

(assert (not d!620947))

(assert (not d!620767))

(assert (not b!2030101))

(assert (not b!2030220))

(assert (not b!2029510))

(assert (not b_next!57287))

(assert (not b!2029289))

(assert (not d!620905))

(assert (not d!620601))

(assert (not b!2030394))

(assert (not b_lambda!68275))

(assert (not b!2030241))

(assert (not b!2030480))

(assert (not b!2029623))

(assert (not b!2029854))

(assert (not b!2029370))

(assert b_and!161789)

(assert (not d!621183))

(assert (not d!620719))

(assert (not d!621195))

(assert (not d!621011))

(assert (not d!620943))

(assert (not b!2029740))

(assert (not b!2030462))

(assert (not b!2030428))

(assert (not b!2029751))

(assert (not bm!124586))

(assert (not b!2030419))

(assert (not b!2029381))

(assert (not b!2029380))

(assert (not d!620997))

(assert (not b!2029545))

(assert b_and!161771)

(assert (not b!2029934))

(assert (not b!2029899))

(assert (not b!2029956))

(assert (not b!2029502))

(assert (not d!620821))

(assert (not d!620951))

(assert (not b_lambda!68283))

(assert (not b!2029969))

(assert (not b!2029808))

(assert (not b!2029515))

(assert (not b!2029907))

(assert (not d!620569))

(assert (not d!620741))

(assert (not b!2030218))

(assert (not d!620631))

(assert (not d!620853))

(assert (not b!2029915))

(assert (not b_lambda!68285))

(assert (not b!2029993))

(assert (not b_lambda!68383))

(assert (not d!620851))

(assert (not b!2029778))

(assert (not b!2029514))

(assert (not b!2029789))

(assert (not b!2029818))

(assert (not b!2029997))

(assert (not b_next!57295))

(assert (not d!620785))

(assert (not b_lambda!68333))

(assert b_and!161787)

(assert (not b!2030412))

(assert (not bm!124585))

(assert (not d!621027))

(assert (not b!2029641))

(assert (not b!2029914))

(assert (not b!2029972))

(assert (not b!2029787))

(assert (not b!2030294))

(assert (not b!2030002))

(assert (not d!620857))

(assert b_and!161769)

(assert (not b_lambda!68393))

(assert (not d!620695))

(assert (not b!2030513))

(assert (not b!2030100))

(assert (not b!2029849))

(assert (not d!620629))

(assert (not b_lambda!68277))

(assert (not b_lambda!68269))

(assert (not b!2030502))

(assert (not bm!124560))

(assert (not b!2030167))

(assert (not d!620879))

(assert (not b!2030263))

(assert (not b!2030187))

(assert (not b!2029984))

(assert (not b!2030030))

(assert (not b!2029629))

(assert (not b!2029668))

(assert (not b!2029990))

(assert (not b!2029979))

(assert (not b!2030033))

(assert (not b!2029957))

(assert (not d!620759))

(assert (not d!620945))

(assert (not b!2029898))

(assert (not b!2029610))

(assert (not d!621133))

(assert (not d!620753))

(assert (not b_lambda!68321))

(assert (not b!2029374))

(assert (not b!2030429))

(assert (not d!620985))

(assert (not b!2029900))

(assert (not bm!124598))

(assert (not d!620713))

(assert (not b!2030119))

(assert (not b!2029291))

(assert (not d!621189))

(assert (not d!620533))

(assert (not b!2029976))

(assert (not d!620675))

(assert (not d!620863))

(assert (not b!2030199))

(assert (not b!2029767))

(assert (not b!2029667))

(assert b_and!161793)

(assert (not bm!124544))

(assert (not b!2029270))

(assert (not b!2029647))

(assert (not b_lambda!68339))

(assert (not d!620571))

(assert (not b!2030362))

(assert (not b!2029672))

(assert (not b!2030321))

(assert (not b!2029987))

(assert (not d!621087))

(assert (not b!2029653))

(assert b_and!161781)

(assert (not d!621003))

(assert (not bm!124581))

(assert (not b!2029454))

(assert (not bm!124582))

(assert (not bs!420941))

(assert (not d!620885))

(assert (not d!620681))

(assert (not b!2029940))

(assert (not bm!124591))

(assert (not b!2029389))

(assert (not b!2029856))

(assert (not bm!124552))

(assert (not d!620591))

(assert (not b!2029988))

(assert (not b!2029375))

(assert (not d!620937))

(assert (not d!620703))

(assert (not b!2029841))

(assert (not d!621091))

(assert (not b!2029399))

(assert (not d!620635))

(assert (not b!2030244))

(assert (not b!2029981))

(assert (not d!621159))

(assert (not b!2030020))

(assert (not bm!124545))

(assert b_and!161785)

(assert (not d!620837))

(assert (not b!2030475))

(assert (not bm!124570))

(assert (not d!621009))

(assert (not d!620999))

(assert (not b!2029815))

(assert (not b!2030483))

(assert (not b!2029357))

(assert (not b!2029973))

(assert (not b!2029606))

(assert (not d!621157))

(assert (not b!2030509))

(assert (not d!620921))

(assert (not b!2030025))

(assert (not d!620933))

(assert (not d!621039))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!57293))

(assert (not b_next!57331))

(assert (not b_next!57329))

(assert (not b_next!57291))

(assert b_and!161771)

(assert b_and!161793)

(assert b_and!161781)

(assert b_and!161785)

(assert b_and!161765)

(assert b_and!161779)

(assert (not b_next!57285))

(assert (not b_next!57309))

(assert b_and!161795)

(assert (not b_next!57289))

(assert b_and!161791)

(assert b_and!161783)

(assert b_and!161773)

(assert (not b_next!57313))

(assert (not b_next!57315))

(assert b_and!161777)

(assert (not b_next!57311))

(assert (not b_next!57327))

(assert (not b_next!57325))

(assert (not b_next!57287))

(assert b_and!161789)

(assert (not b_next!57295))

(assert b_and!161787)

(assert b_and!161769)

(check-sat)

(pop 1)


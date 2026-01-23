; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!170510 () Bool)

(assert start!170510)

(declare-fun b!1733474 () Bool)

(declare-fun b_free!47467 () Bool)

(declare-fun b_next!48171 () Bool)

(assert (=> b!1733474 (= b_free!47467 (not b_next!48171))))

(declare-fun tp!494127 () Bool)

(declare-fun b_and!128059 () Bool)

(assert (=> b!1733474 (= tp!494127 b_and!128059)))

(declare-fun b_free!47469 () Bool)

(declare-fun b_next!48173 () Bool)

(assert (=> b!1733474 (= b_free!47469 (not b_next!48173))))

(declare-fun tp!494131 () Bool)

(declare-fun b_and!128061 () Bool)

(assert (=> b!1733474 (= tp!494131 b_and!128061)))

(declare-fun b!1733500 () Bool)

(declare-fun b_free!47471 () Bool)

(declare-fun b_next!48175 () Bool)

(assert (=> b!1733500 (= b_free!47471 (not b_next!48175))))

(declare-fun tp!494130 () Bool)

(declare-fun b_and!128063 () Bool)

(assert (=> b!1733500 (= tp!494130 b_and!128063)))

(declare-fun b_free!47473 () Bool)

(declare-fun b_next!48177 () Bool)

(assert (=> b!1733500 (= b_free!47473 (not b_next!48177))))

(declare-fun tp!494129 () Bool)

(declare-fun b_and!128065 () Bool)

(assert (=> b!1733500 (= tp!494129 b_and!128065)))

(declare-fun b!1733470 () Bool)

(declare-fun b_free!47475 () Bool)

(declare-fun b_next!48179 () Bool)

(assert (=> b!1733470 (= b_free!47475 (not b_next!48179))))

(declare-fun tp!494133 () Bool)

(declare-fun b_and!128067 () Bool)

(assert (=> b!1733470 (= tp!494133 b_and!128067)))

(declare-fun b_free!47477 () Bool)

(declare-fun b_next!48181 () Bool)

(assert (=> b!1733470 (= b_free!47477 (not b_next!48181))))

(declare-fun tp!494132 () Bool)

(declare-fun b_and!128069 () Bool)

(assert (=> b!1733470 (= tp!494132 b_and!128069)))

(declare-fun b!1733512 () Bool)

(declare-fun e!1109149 () Bool)

(assert (=> b!1733512 (= e!1109149 true)))

(declare-fun b!1733511 () Bool)

(declare-fun e!1109148 () Bool)

(assert (=> b!1733511 (= e!1109148 e!1109149)))

(declare-fun b!1733510 () Bool)

(declare-fun e!1109147 () Bool)

(assert (=> b!1733510 (= e!1109147 e!1109148)))

(declare-fun b!1733492 () Bool)

(assert (=> b!1733492 e!1109147))

(assert (= b!1733511 b!1733512))

(assert (= b!1733510 b!1733511))

(assert (= b!1733492 b!1733510))

(declare-fun order!11757 () Int)

(declare-fun order!11755 () Int)

(declare-fun lambda!69434 () Int)

(declare-datatypes ((List!19085 0))(
  ( (Nil!19015) (Cons!19015 (h!24416 (_ BitVec 16)) (t!161008 List!19085)) )
))
(declare-datatypes ((TokenValue!3467 0))(
  ( (FloatLiteralValue!6934 (text!24714 List!19085)) (TokenValueExt!3466 (__x!12236 Int)) (Broken!17335 (value!105891 List!19085)) (Object!3536) (End!3467) (Def!3467) (Underscore!3467) (Match!3467) (Else!3467) (Error!3467) (Case!3467) (If!3467) (Extends!3467) (Abstract!3467) (Class!3467) (Val!3467) (DelimiterValue!6934 (del!3527 List!19085)) (KeywordValue!3473 (value!105892 List!19085)) (CommentValue!6934 (value!105893 List!19085)) (WhitespaceValue!6934 (value!105894 List!19085)) (IndentationValue!3467 (value!105895 List!19085)) (String!21666) (Int32!3467) (Broken!17336 (value!105896 List!19085)) (Boolean!3468) (Unit!32878) (OperatorValue!3470 (op!3527 List!19085)) (IdentifierValue!6934 (value!105897 List!19085)) (IdentifierValue!6935 (value!105898 List!19085)) (WhitespaceValue!6935 (value!105899 List!19085)) (True!6934) (False!6934) (Broken!17337 (value!105900 List!19085)) (Broken!17338 (value!105901 List!19085)) (True!6935) (RightBrace!3467) (RightBracket!3467) (Colon!3467) (Null!3467) (Comma!3467) (LeftBracket!3467) (False!6935) (LeftBrace!3467) (ImaginaryLiteralValue!3467 (text!24715 List!19085)) (StringLiteralValue!10401 (value!105902 List!19085)) (EOFValue!3467 (value!105903 List!19085)) (IdentValue!3467 (value!105904 List!19085)) (DelimiterValue!6935 (value!105905 List!19085)) (DedentValue!3467 (value!105906 List!19085)) (NewLineValue!3467 (value!105907 List!19085)) (IntegerValue!10401 (value!105908 (_ BitVec 32)) (text!24716 List!19085)) (IntegerValue!10402 (value!105909 Int) (text!24717 List!19085)) (Times!3467) (Or!3467) (Equal!3467) (Minus!3467) (Broken!17339 (value!105910 List!19085)) (And!3467) (Div!3467) (LessEqual!3467) (Mod!3467) (Concat!8172) (Not!3467) (Plus!3467) (SpaceValue!3467 (value!105911 List!19085)) (IntegerValue!10403 (value!105912 Int) (text!24718 List!19085)) (StringLiteralValue!10402 (text!24719 List!19085)) (FloatLiteralValue!6935 (text!24720 List!19085)) (BytesLiteralValue!3467 (value!105913 List!19085)) (CommentValue!6935 (value!105914 List!19085)) (StringLiteralValue!10403 (value!105915 List!19085)) (ErrorTokenValue!3467 (msg!3528 List!19085)) )
))
(declare-datatypes ((C!9584 0))(
  ( (C!9585 (val!5388 Int)) )
))
(declare-datatypes ((List!19086 0))(
  ( (Nil!19016) (Cons!19016 (h!24417 C!9584) (t!161009 List!19086)) )
))
(declare-datatypes ((IArray!12655 0))(
  ( (IArray!12656 (innerList!6385 List!19086)) )
))
(declare-datatypes ((Conc!6325 0))(
  ( (Node!6325 (left!15191 Conc!6325) (right!15521 Conc!6325) (csize!12880 Int) (cheight!6536 Int)) (Leaf!9234 (xs!9201 IArray!12655) (csize!12881 Int)) (Empty!6325) )
))
(declare-datatypes ((BalanceConc!12594 0))(
  ( (BalanceConc!12595 (c!283080 Conc!6325)) )
))
(declare-datatypes ((TokenValueInjection!6594 0))(
  ( (TokenValueInjection!6595 (toValue!4884 Int) (toChars!4743 Int)) )
))
(declare-datatypes ((Regex!4705 0))(
  ( (ElementMatch!4705 (c!283081 C!9584)) (Concat!8173 (regOne!9922 Regex!4705) (regTwo!9922 Regex!4705)) (EmptyExpr!4705) (Star!4705 (reg!5034 Regex!4705)) (EmptyLang!4705) (Union!4705 (regOne!9923 Regex!4705) (regTwo!9923 Regex!4705)) )
))
(declare-datatypes ((String!21667 0))(
  ( (String!21668 (value!105916 String)) )
))
(declare-datatypes ((Rule!6554 0))(
  ( (Rule!6555 (regex!3377 Regex!4705) (tag!3707 String!21667) (isSeparator!3377 Bool) (transformation!3377 TokenValueInjection!6594)) )
))
(declare-datatypes ((Token!6320 0))(
  ( (Token!6321 (value!105917 TokenValue!3467) (rule!5363 Rule!6554) (size!15108 Int) (originalCharacters!4191 List!19086)) )
))
(declare-datatypes ((tuple2!18690 0))(
  ( (tuple2!18691 (_1!10747 Token!6320) (_2!10747 List!19086)) )
))
(declare-fun lt!665647 () tuple2!18690)

(declare-fun dynLambda!8892 (Int Int) Int)

(declare-fun dynLambda!8893 (Int Int) Int)

(assert (=> b!1733512 (< (dynLambda!8892 order!11755 (toValue!4884 (transformation!3377 (rule!5363 (_1!10747 lt!665647))))) (dynLambda!8893 order!11757 lambda!69434))))

(declare-fun order!11759 () Int)

(declare-fun dynLambda!8894 (Int Int) Int)

(assert (=> b!1733512 (< (dynLambda!8894 order!11759 (toChars!4743 (transformation!3377 (rule!5363 (_1!10747 lt!665647))))) (dynLambda!8893 order!11757 lambda!69434))))

(declare-fun b!1733468 () Bool)

(declare-fun e!1109117 () Bool)

(declare-fun e!1109129 () Bool)

(declare-fun tp!494125 () Bool)

(assert (=> b!1733468 (= e!1109117 (and e!1109129 tp!494125))))

(declare-fun b!1733469 () Bool)

(declare-fun e!1109121 () Bool)

(declare-fun e!1109127 () Bool)

(assert (=> b!1733469 (= e!1109121 e!1109127)))

(declare-fun res!778780 () Bool)

(assert (=> b!1733469 (=> res!778780 e!1109127)))

(declare-fun lt!665624 () Regex!4705)

(declare-fun lt!665650 () List!19086)

(declare-fun prefixMatch!590 (Regex!4705 List!19086) Bool)

(assert (=> b!1733469 (= res!778780 (prefixMatch!590 lt!665624 lt!665650))))

(declare-fun lt!665623 () List!19086)

(declare-fun suffix!1421 () List!19086)

(declare-fun ++!5202 (List!19086 List!19086) List!19086)

(declare-fun head!3950 (List!19086) C!9584)

(assert (=> b!1733469 (= lt!665650 (++!5202 lt!665623 (Cons!19016 (head!3950 suffix!1421) Nil!19016)))))

(declare-datatypes ((LexerInterface!3006 0))(
  ( (LexerInterfaceExt!3003 (__x!12237 Int)) (Lexer!3004) )
))
(declare-fun thiss!24550 () LexerInterface!3006)

(declare-datatypes ((List!19087 0))(
  ( (Nil!19017) (Cons!19017 (h!24418 Rule!6554) (t!161010 List!19087)) )
))
(declare-fun rules!3447 () List!19087)

(declare-fun rulesRegex!735 (LexerInterface!3006 List!19087) Regex!4705)

(assert (=> b!1733469 (= lt!665624 (rulesRegex!735 thiss!24550 rules!3447))))

(declare-fun e!1109135 () Bool)

(assert (=> b!1733470 (= e!1109135 (and tp!494133 tp!494132))))

(declare-fun b!1733471 () Bool)

(declare-fun res!778789 () Bool)

(declare-fun e!1109132 () Bool)

(assert (=> b!1733471 (=> (not res!778789) (not e!1109132))))

(declare-fun lt!665629 () tuple2!18690)

(declare-fun isEmpty!11965 (List!19086) Bool)

(assert (=> b!1733471 (= res!778789 (isEmpty!11965 (_2!10747 lt!665629)))))

(declare-fun b!1733472 () Bool)

(assert (=> b!1733472 (= e!1109132 (not e!1109121))))

(declare-fun res!778782 () Bool)

(assert (=> b!1733472 (=> res!778782 e!1109121)))

(declare-fun rule!422 () Rule!6554)

(declare-fun matchR!2179 (Regex!4705 List!19086) Bool)

(assert (=> b!1733472 (= res!778782 (not (matchR!2179 (regex!3377 rule!422) lt!665623)))))

(declare-fun ruleValid!876 (LexerInterface!3006 Rule!6554) Bool)

(assert (=> b!1733472 (ruleValid!876 thiss!24550 rule!422)))

(declare-datatypes ((Unit!32879 0))(
  ( (Unit!32880) )
))
(declare-fun lt!665660 () Unit!32879)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!400 (LexerInterface!3006 Rule!6554 List!19087) Unit!32879)

(assert (=> b!1733472 (= lt!665660 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!400 thiss!24550 rule!422 rules!3447))))

(declare-fun tp!494128 () Bool)

(declare-fun token!523 () Token!6320)

(declare-fun b!1733473 () Bool)

(declare-fun e!1109120 () Bool)

(declare-fun e!1109139 () Bool)

(declare-fun inv!21 (TokenValue!3467) Bool)

(assert (=> b!1733473 (= e!1109139 (and (inv!21 (value!105917 token!523)) e!1109120 tp!494128))))

(declare-fun e!1109133 () Bool)

(assert (=> b!1733474 (= e!1109133 (and tp!494127 tp!494131))))

(declare-fun b!1733475 () Bool)

(declare-fun res!778772 () Bool)

(declare-fun e!1109116 () Bool)

(assert (=> b!1733475 (=> res!778772 e!1109116)))

(declare-fun lt!665665 () List!19086)

(assert (=> b!1733475 (= res!778772 (not (matchR!2179 (regex!3377 (rule!5363 (_1!10747 lt!665647))) lt!665665)))))

(declare-fun b!1733476 () Bool)

(declare-fun e!1109134 () Bool)

(declare-fun e!1109128 () Bool)

(assert (=> b!1733476 (= e!1109134 e!1109128)))

(declare-fun res!778781 () Bool)

(assert (=> b!1733476 (=> res!778781 e!1109128)))

(declare-fun lt!665625 () List!19086)

(declare-fun lt!665657 () Token!6320)

(declare-datatypes ((Option!3778 0))(
  ( (None!3777) (Some!3777 (v!25200 tuple2!18690)) )
))
(declare-fun lt!665666 () Option!3778)

(assert (=> b!1733476 (= res!778781 (not (= lt!665666 (Some!3777 (tuple2!18691 lt!665657 lt!665625)))))))

(declare-fun lt!665649 () List!19086)

(declare-fun isPrefix!1618 (List!19086 List!19086) Bool)

(assert (=> b!1733476 (isPrefix!1618 lt!665649 lt!665649)))

(declare-fun lt!665648 () Unit!32879)

(declare-fun lemmaIsPrefixRefl!1089 (List!19086 List!19086) Unit!32879)

(assert (=> b!1733476 (= lt!665648 (lemmaIsPrefixRefl!1089 lt!665649 lt!665649))))

(declare-fun lt!665664 () Unit!32879)

(declare-fun lt!665630 () BalanceConc!12594)

(declare-fun lemmaSemiInverse!523 (TokenValueInjection!6594 BalanceConc!12594) Unit!32879)

(assert (=> b!1733476 (= lt!665664 (lemmaSemiInverse!523 (transformation!3377 (rule!5363 (_1!10747 lt!665647))) lt!665630))))

(assert (=> b!1733476 (ruleValid!876 thiss!24550 (rule!5363 (_1!10747 lt!665647)))))

(declare-fun lt!665646 () Unit!32879)

(assert (=> b!1733476 (= lt!665646 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!400 thiss!24550 (rule!5363 (_1!10747 lt!665647)) rules!3447))))

(declare-fun b!1733477 () Bool)

(declare-fun e!1109122 () Bool)

(assert (=> b!1733477 (= e!1109122 e!1109132)))

(declare-fun res!778785 () Bool)

(assert (=> b!1733477 (=> (not res!778785) (not e!1109132))))

(assert (=> b!1733477 (= res!778785 (= (_1!10747 lt!665629) token!523))))

(declare-fun lt!665636 () Option!3778)

(declare-fun get!5684 (Option!3778) tuple2!18690)

(assert (=> b!1733477 (= lt!665629 (get!5684 lt!665636))))

(declare-fun b!1733478 () Bool)

(declare-fun tp!494136 () Bool)

(declare-fun inv!24601 (String!21667) Bool)

(declare-fun inv!24606 (TokenValueInjection!6594) Bool)

(assert (=> b!1733478 (= e!1109120 (and tp!494136 (inv!24601 (tag!3707 (rule!5363 token!523))) (inv!24606 (transformation!3377 (rule!5363 token!523))) e!1109133))))

(declare-fun b!1733479 () Bool)

(declare-fun e!1109130 () Bool)

(declare-fun tp_is_empty!7653 () Bool)

(declare-fun tp!494134 () Bool)

(assert (=> b!1733479 (= e!1109130 (and tp_is_empty!7653 tp!494134))))

(declare-fun b!1733480 () Bool)

(declare-fun res!778777 () Bool)

(declare-fun e!1109125 () Bool)

(assert (=> b!1733480 (=> (not res!778777) (not e!1109125))))

(declare-fun contains!3399 (List!19087 Rule!6554) Bool)

(assert (=> b!1733480 (= res!778777 (contains!3399 rules!3447 rule!422))))

(declare-fun b!1733481 () Bool)

(declare-fun e!1109140 () Bool)

(assert (=> b!1733481 (= e!1109140 e!1109134)))

(declare-fun res!778776 () Bool)

(assert (=> b!1733481 (=> res!778776 e!1109134)))

(declare-fun lt!665652 () Int)

(declare-fun lt!665655 () Int)

(declare-fun lt!665632 () Bool)

(assert (=> b!1733481 (= res!778776 (or lt!665632 (>= lt!665655 lt!665652)))))

(declare-fun lt!665644 () Unit!32879)

(declare-fun e!1109138 () Unit!32879)

(assert (=> b!1733481 (= lt!665644 e!1109138)))

(declare-fun c!283079 () Bool)

(assert (=> b!1733481 (= c!283079 lt!665632)))

(assert (=> b!1733481 (= lt!665632 (> lt!665655 lt!665652))))

(declare-fun lt!665656 () BalanceConc!12594)

(declare-fun size!15109 (BalanceConc!12594) Int)

(assert (=> b!1733481 (= lt!665652 (size!15109 lt!665656))))

(assert (=> b!1733481 (matchR!2179 lt!665624 lt!665623)))

(declare-fun lt!665661 () Unit!32879)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!126 (LexerInterface!3006 List!19087 List!19086 Token!6320 Rule!6554 List!19086) Unit!32879)

(assert (=> b!1733481 (= lt!665661 (lemmaMaxPrefixThenMatchesRulesRegex!126 thiss!24550 rules!3447 lt!665623 token!523 rule!422 Nil!19016))))

(declare-fun tp!494135 () Bool)

(declare-fun e!1109137 () Bool)

(declare-fun b!1733482 () Bool)

(assert (=> b!1733482 (= e!1109137 (and tp!494135 (inv!24601 (tag!3707 rule!422)) (inv!24606 (transformation!3377 rule!422)) e!1109135))))

(declare-fun b!1733483 () Bool)

(declare-fun e!1109113 () Bool)

(declare-fun e!1109126 () Bool)

(assert (=> b!1733483 (= e!1109113 e!1109126)))

(declare-fun res!778791 () Bool)

(assert (=> b!1733483 (=> (not res!778791) (not e!1109126))))

(declare-fun lt!665628 () Rule!6554)

(declare-fun list!7690 (BalanceConc!12594) List!19086)

(declare-fun charsOf!2026 (Token!6320) BalanceConc!12594)

(assert (=> b!1733483 (= res!778791 (matchR!2179 (regex!3377 lt!665628) (list!7690 (charsOf!2026 (_1!10747 lt!665647)))))))

(declare-datatypes ((Option!3779 0))(
  ( (None!3778) (Some!3778 (v!25201 Rule!6554)) )
))
(declare-fun lt!665639 () Option!3779)

(declare-fun get!5685 (Option!3779) Rule!6554)

(assert (=> b!1733483 (= lt!665628 (get!5685 lt!665639))))

(declare-fun b!1733484 () Bool)

(declare-fun Unit!32881 () Unit!32879)

(assert (=> b!1733484 (= e!1109138 Unit!32881)))

(declare-fun lt!665635 () Unit!32879)

(assert (=> b!1733484 (= lt!665635 (lemmaMaxPrefixThenMatchesRulesRegex!126 thiss!24550 rules!3447 lt!665649 (_1!10747 lt!665647) (rule!5363 (_1!10747 lt!665647)) (_2!10747 lt!665647)))))

(assert (=> b!1733484 (matchR!2179 lt!665624 lt!665665)))

(declare-fun lt!665638 () List!19086)

(declare-fun getSuffix!812 (List!19086 List!19086) List!19086)

(assert (=> b!1733484 (= lt!665638 (getSuffix!812 lt!665649 lt!665623))))

(declare-fun lt!665641 () Unit!32879)

(declare-fun lemmaSamePrefixThenSameSuffix!762 (List!19086 List!19086 List!19086 List!19086 List!19086) Unit!32879)

(assert (=> b!1733484 (= lt!665641 (lemmaSamePrefixThenSameSuffix!762 lt!665623 suffix!1421 lt!665623 lt!665638 lt!665649))))

(assert (=> b!1733484 (= suffix!1421 lt!665638)))

(declare-fun lt!665631 () Unit!32879)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!213 (List!19086 List!19086) Unit!32879)

(assert (=> b!1733484 (= lt!665631 (lemmaAddHeadSuffixToPrefixStillPrefix!213 lt!665623 lt!665649))))

(assert (=> b!1733484 (isPrefix!1618 (++!5202 lt!665623 (Cons!19016 (head!3950 lt!665638) Nil!19016)) lt!665649)))

(declare-fun lt!665653 () Unit!32879)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!93 (List!19086 List!19086 List!19086) Unit!32879)

(assert (=> b!1733484 (= lt!665653 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!93 lt!665665 lt!665650 lt!665649))))

(assert (=> b!1733484 (isPrefix!1618 lt!665650 lt!665665)))

(declare-fun lt!665651 () Unit!32879)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!86 (Regex!4705 List!19086 List!19086) Unit!32879)

(assert (=> b!1733484 (= lt!665651 (lemmaNotPrefixMatchThenCannotMatchLonger!86 lt!665624 lt!665650 lt!665665))))

(assert (=> b!1733484 false))

(declare-fun b!1733485 () Bool)

(declare-fun res!778786 () Bool)

(assert (=> b!1733485 (=> (not res!778786) (not e!1109125))))

(declare-fun rulesInvariant!2675 (LexerInterface!3006 List!19087) Bool)

(assert (=> b!1733485 (= res!778786 (rulesInvariant!2675 thiss!24550 rules!3447))))

(declare-fun b!1733486 () Bool)

(declare-fun e!1109119 () Bool)

(assert (=> b!1733486 (= e!1109119 e!1109140)))

(declare-fun res!778784 () Bool)

(assert (=> b!1733486 (=> res!778784 e!1109140)))

(assert (=> b!1733486 (= res!778784 (or (not (= lt!665625 (_2!10747 lt!665647))) (not (= lt!665666 (Some!3777 (tuple2!18691 (_1!10747 lt!665647) lt!665625))))))))

(assert (=> b!1733486 (= (_2!10747 lt!665647) lt!665625)))

(declare-fun lt!665642 () Unit!32879)

(assert (=> b!1733486 (= lt!665642 (lemmaSamePrefixThenSameSuffix!762 lt!665665 (_2!10747 lt!665647) lt!665665 lt!665625 lt!665649))))

(assert (=> b!1733486 (= lt!665625 (getSuffix!812 lt!665649 lt!665665))))

(assert (=> b!1733486 (= lt!665666 (Some!3777 (tuple2!18691 lt!665657 (_2!10747 lt!665647))))))

(declare-fun maxPrefixOneRule!936 (LexerInterface!3006 Rule!6554 List!19086) Option!3778)

(assert (=> b!1733486 (= lt!665666 (maxPrefixOneRule!936 thiss!24550 (rule!5363 (_1!10747 lt!665647)) lt!665649))))

(declare-fun apply!5182 (TokenValueInjection!6594 BalanceConc!12594) TokenValue!3467)

(declare-fun size!15110 (List!19086) Int)

(assert (=> b!1733486 (= lt!665657 (Token!6321 (apply!5182 (transformation!3377 (rule!5363 (_1!10747 lt!665647))) lt!665630) (rule!5363 (_1!10747 lt!665647)) (size!15110 lt!665665) lt!665665))))

(declare-fun seqFromList!2351 (List!19086) BalanceConc!12594)

(assert (=> b!1733486 (= lt!665630 (seqFromList!2351 lt!665665))))

(declare-fun lt!665627 () Unit!32879)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!335 (LexerInterface!3006 List!19087 List!19086 List!19086 List!19086 Rule!6554) Unit!32879)

(assert (=> b!1733486 (= lt!665627 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!335 thiss!24550 rules!3447 lt!665665 lt!665649 (_2!10747 lt!665647) (rule!5363 (_1!10747 lt!665647))))))

(declare-fun b!1733487 () Bool)

(assert (=> b!1733487 (= e!1109125 e!1109122)))

(declare-fun res!778792 () Bool)

(assert (=> b!1733487 (=> (not res!778792) (not e!1109122))))

(declare-fun isDefined!3121 (Option!3778) Bool)

(assert (=> b!1733487 (= res!778792 (isDefined!3121 lt!665636))))

(declare-fun maxPrefix!1560 (LexerInterface!3006 List!19087 List!19086) Option!3778)

(assert (=> b!1733487 (= lt!665636 (maxPrefix!1560 thiss!24550 rules!3447 lt!665623))))

(assert (=> b!1733487 (= lt!665623 (list!7690 lt!665656))))

(assert (=> b!1733487 (= lt!665656 (charsOf!2026 token!523))))

(declare-fun b!1733488 () Bool)

(assert (=> b!1733488 (= e!1109128 true)))

(declare-fun lt!665626 () Int)

(assert (=> b!1733488 (= lt!665626 (size!15110 lt!665623))))

(declare-fun b!1733489 () Bool)

(declare-fun res!778771 () Bool)

(assert (=> b!1733489 (=> (not res!778771) (not e!1109132))))

(assert (=> b!1733489 (= res!778771 (= (rule!5363 token!523) rule!422))))

(declare-fun b!1733490 () Bool)

(declare-fun Unit!32882 () Unit!32879)

(assert (=> b!1733490 (= e!1109138 Unit!32882)))

(declare-fun b!1733491 () Bool)

(declare-fun e!1109123 () Bool)

(assert (=> b!1733491 (= e!1109123 e!1109119)))

(declare-fun res!778783 () Bool)

(assert (=> b!1733491 (=> res!778783 e!1109119)))

(declare-fun lt!665637 () TokenValue!3467)

(declare-fun lt!665659 () Option!3778)

(assert (=> b!1733491 (= res!778783 (not (= lt!665659 (Some!3777 (tuple2!18691 (Token!6321 lt!665637 (rule!5363 (_1!10747 lt!665647)) lt!665655 lt!665665) (_2!10747 lt!665647))))))))

(declare-fun lt!665645 () BalanceConc!12594)

(assert (=> b!1733491 (= lt!665655 (size!15109 lt!665645))))

(assert (=> b!1733491 (= lt!665637 (apply!5182 (transformation!3377 (rule!5363 (_1!10747 lt!665647))) lt!665645))))

(declare-fun lt!665643 () Unit!32879)

(declare-fun lemmaCharactersSize!449 (Token!6320) Unit!32879)

(assert (=> b!1733491 (= lt!665643 (lemmaCharactersSize!449 (_1!10747 lt!665647)))))

(declare-fun lt!665654 () Unit!32879)

(declare-fun lemmaEqSameImage!302 (TokenValueInjection!6594 BalanceConc!12594 BalanceConc!12594) Unit!32879)

(assert (=> b!1733491 (= lt!665654 (lemmaEqSameImage!302 (transformation!3377 (rule!5363 (_1!10747 lt!665647))) lt!665645 (seqFromList!2351 (originalCharacters!4191 (_1!10747 lt!665647)))))))

(declare-fun e!1109115 () Bool)

(assert (=> b!1733492 (= e!1109116 e!1109115)))

(declare-fun res!778788 () Bool)

(assert (=> b!1733492 (=> res!778788 e!1109115)))

(declare-fun Forall!752 (Int) Bool)

(assert (=> b!1733492 (= res!778788 (not (Forall!752 lambda!69434)))))

(declare-fun lt!665662 () Unit!32879)

(declare-fun lemmaInv!584 (TokenValueInjection!6594) Unit!32879)

(assert (=> b!1733492 (= lt!665662 (lemmaInv!584 (transformation!3377 (rule!5363 (_1!10747 lt!665647)))))))

(declare-fun b!1733493 () Bool)

(declare-fun res!778790 () Bool)

(assert (=> b!1733493 (=> (not res!778790) (not e!1109125))))

(declare-fun isEmpty!11966 (List!19087) Bool)

(assert (=> b!1733493 (= res!778790 (not (isEmpty!11966 rules!3447)))))

(declare-fun b!1733494 () Bool)

(declare-fun res!778774 () Bool)

(assert (=> b!1733494 (=> res!778774 e!1109134)))

(assert (=> b!1733494 (= res!778774 (not (contains!3399 rules!3447 (rule!5363 (_1!10747 lt!665647)))))))

(declare-fun e!1109136 () Bool)

(declare-fun b!1733495 () Bool)

(declare-fun tp!494126 () Bool)

(assert (=> b!1733495 (= e!1109129 (and tp!494126 (inv!24601 (tag!3707 (h!24418 rules!3447))) (inv!24606 (transformation!3377 (h!24418 rules!3447))) e!1109136))))

(declare-fun b!1733496 () Bool)

(assert (=> b!1733496 (= e!1109126 (= (rule!5363 (_1!10747 lt!665647)) lt!665628))))

(declare-fun b!1733497 () Bool)

(assert (=> b!1733497 (= e!1109115 e!1109123)))

(declare-fun res!778779 () Bool)

(assert (=> b!1733497 (=> res!778779 e!1109123)))

(declare-fun dynLambda!8895 (Int TokenValue!3467) BalanceConc!12594)

(declare-fun dynLambda!8896 (Int BalanceConc!12594) TokenValue!3467)

(assert (=> b!1733497 (= res!778779 (not (= (list!7690 (dynLambda!8895 (toChars!4743 (transformation!3377 (rule!5363 (_1!10747 lt!665647)))) (dynLambda!8896 (toValue!4884 (transformation!3377 (rule!5363 (_1!10747 lt!665647)))) lt!665645))) lt!665665)))))

(declare-fun lt!665633 () Unit!32879)

(assert (=> b!1733497 (= lt!665633 (lemmaSemiInverse!523 (transformation!3377 (rule!5363 (_1!10747 lt!665647))) lt!665645))))

(declare-fun b!1733498 () Bool)

(declare-fun res!778775 () Bool)

(assert (=> b!1733498 (=> res!778775 e!1109121)))

(assert (=> b!1733498 (= res!778775 (isEmpty!11965 suffix!1421))))

(declare-fun b!1733499 () Bool)

(assert (=> b!1733499 (= e!1109127 e!1109116)))

(declare-fun res!778778 () Bool)

(assert (=> b!1733499 (=> res!778778 e!1109116)))

(assert (=> b!1733499 (= res!778778 (not (isPrefix!1618 lt!665665 lt!665649)))))

(assert (=> b!1733499 (isPrefix!1618 lt!665665 (++!5202 lt!665665 (_2!10747 lt!665647)))))

(declare-fun lt!665640 () Unit!32879)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1128 (List!19086 List!19086) Unit!32879)

(assert (=> b!1733499 (= lt!665640 (lemmaConcatTwoListThenFirstIsPrefix!1128 lt!665665 (_2!10747 lt!665647)))))

(assert (=> b!1733499 (= lt!665665 (list!7690 lt!665645))))

(assert (=> b!1733499 (= lt!665645 (charsOf!2026 (_1!10747 lt!665647)))))

(assert (=> b!1733499 e!1109113))

(declare-fun res!778787 () Bool)

(assert (=> b!1733499 (=> (not res!778787) (not e!1109113))))

(declare-fun isDefined!3122 (Option!3779) Bool)

(assert (=> b!1733499 (= res!778787 (isDefined!3122 lt!665639))))

(declare-fun getRuleFromTag!427 (LexerInterface!3006 List!19087 String!21667) Option!3779)

(assert (=> b!1733499 (= lt!665639 (getRuleFromTag!427 thiss!24550 rules!3447 (tag!3707 (rule!5363 (_1!10747 lt!665647)))))))

(declare-fun lt!665663 () Unit!32879)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!427 (LexerInterface!3006 List!19087 List!19086 Token!6320) Unit!32879)

(assert (=> b!1733499 (= lt!665663 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!427 thiss!24550 rules!3447 lt!665649 (_1!10747 lt!665647)))))

(assert (=> b!1733499 (= lt!665647 (get!5684 lt!665659))))

(declare-fun lt!665658 () Unit!32879)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!530 (LexerInterface!3006 List!19087 List!19086 List!19086) Unit!32879)

(assert (=> b!1733499 (= lt!665658 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!530 thiss!24550 rules!3447 lt!665623 suffix!1421))))

(assert (=> b!1733499 (= lt!665659 (maxPrefix!1560 thiss!24550 rules!3447 lt!665649))))

(assert (=> b!1733499 (isPrefix!1618 lt!665623 lt!665649)))

(declare-fun lt!665634 () Unit!32879)

(assert (=> b!1733499 (= lt!665634 (lemmaConcatTwoListThenFirstIsPrefix!1128 lt!665623 suffix!1421))))

(assert (=> b!1733499 (= lt!665649 (++!5202 lt!665623 suffix!1421))))

(declare-fun res!778773 () Bool)

(assert (=> start!170510 (=> (not res!778773) (not e!1109125))))

(get-info :version)

(assert (=> start!170510 (= res!778773 ((_ is Lexer!3004) thiss!24550))))

(assert (=> start!170510 e!1109125))

(assert (=> start!170510 e!1109130))

(assert (=> start!170510 e!1109137))

(assert (=> start!170510 true))

(declare-fun inv!24607 (Token!6320) Bool)

(assert (=> start!170510 (and (inv!24607 token!523) e!1109139)))

(assert (=> start!170510 e!1109117))

(assert (=> b!1733500 (= e!1109136 (and tp!494130 tp!494129))))

(declare-fun b!1733501 () Bool)

(declare-fun res!778770 () Bool)

(assert (=> b!1733501 (=> res!778770 e!1109123)))

(assert (=> b!1733501 (= res!778770 (not (= lt!665645 (dynLambda!8895 (toChars!4743 (transformation!3377 (rule!5363 (_1!10747 lt!665647)))) (value!105917 (_1!10747 lt!665647))))))))

(assert (= (and start!170510 res!778773) b!1733493))

(assert (= (and b!1733493 res!778790) b!1733485))

(assert (= (and b!1733485 res!778786) b!1733480))

(assert (= (and b!1733480 res!778777) b!1733487))

(assert (= (and b!1733487 res!778792) b!1733477))

(assert (= (and b!1733477 res!778785) b!1733471))

(assert (= (and b!1733471 res!778789) b!1733489))

(assert (= (and b!1733489 res!778771) b!1733472))

(assert (= (and b!1733472 (not res!778782)) b!1733498))

(assert (= (and b!1733498 (not res!778775)) b!1733469))

(assert (= (and b!1733469 (not res!778780)) b!1733499))

(assert (= (and b!1733499 res!778787) b!1733483))

(assert (= (and b!1733483 res!778791) b!1733496))

(assert (= (and b!1733499 (not res!778778)) b!1733475))

(assert (= (and b!1733475 (not res!778772)) b!1733492))

(assert (= (and b!1733492 (not res!778788)) b!1733497))

(assert (= (and b!1733497 (not res!778779)) b!1733501))

(assert (= (and b!1733501 (not res!778770)) b!1733491))

(assert (= (and b!1733491 (not res!778783)) b!1733486))

(assert (= (and b!1733486 (not res!778784)) b!1733481))

(assert (= (and b!1733481 c!283079) b!1733484))

(assert (= (and b!1733481 (not c!283079)) b!1733490))

(assert (= (and b!1733481 (not res!778776)) b!1733494))

(assert (= (and b!1733494 (not res!778774)) b!1733476))

(assert (= (and b!1733476 (not res!778781)) b!1733488))

(assert (= (and start!170510 ((_ is Cons!19016) suffix!1421)) b!1733479))

(assert (= b!1733482 b!1733470))

(assert (= start!170510 b!1733482))

(assert (= b!1733478 b!1733474))

(assert (= b!1733473 b!1733478))

(assert (= start!170510 b!1733473))

(assert (= b!1733495 b!1733500))

(assert (= b!1733468 b!1733495))

(assert (= (and start!170510 ((_ is Cons!19017) rules!3447)) b!1733468))

(declare-fun b_lambda!55379 () Bool)

(assert (=> (not b_lambda!55379) (not b!1733497)))

(declare-fun t!160991 () Bool)

(declare-fun tb!103341 () Bool)

(assert (=> (and b!1733474 (= (toChars!4743 (transformation!3377 (rule!5363 token!523))) (toChars!4743 (transformation!3377 (rule!5363 (_1!10747 lt!665647))))) t!160991) tb!103341))

(declare-fun e!1109152 () Bool)

(declare-fun b!1733517 () Bool)

(declare-fun tp!494139 () Bool)

(declare-fun inv!24608 (Conc!6325) Bool)

(assert (=> b!1733517 (= e!1109152 (and (inv!24608 (c!283080 (dynLambda!8895 (toChars!4743 (transformation!3377 (rule!5363 (_1!10747 lt!665647)))) (dynLambda!8896 (toValue!4884 (transformation!3377 (rule!5363 (_1!10747 lt!665647)))) lt!665645)))) tp!494139))))

(declare-fun result!124264 () Bool)

(declare-fun inv!24609 (BalanceConc!12594) Bool)

(assert (=> tb!103341 (= result!124264 (and (inv!24609 (dynLambda!8895 (toChars!4743 (transformation!3377 (rule!5363 (_1!10747 lt!665647)))) (dynLambda!8896 (toValue!4884 (transformation!3377 (rule!5363 (_1!10747 lt!665647)))) lt!665645))) e!1109152))))

(assert (= tb!103341 b!1733517))

(declare-fun m!2142427 () Bool)

(assert (=> b!1733517 m!2142427))

(declare-fun m!2142429 () Bool)

(assert (=> tb!103341 m!2142429))

(assert (=> b!1733497 t!160991))

(declare-fun b_and!128071 () Bool)

(assert (= b_and!128061 (and (=> t!160991 result!124264) b_and!128071)))

(declare-fun t!160993 () Bool)

(declare-fun tb!103343 () Bool)

(assert (=> (and b!1733500 (= (toChars!4743 (transformation!3377 (h!24418 rules!3447))) (toChars!4743 (transformation!3377 (rule!5363 (_1!10747 lt!665647))))) t!160993) tb!103343))

(declare-fun result!124268 () Bool)

(assert (= result!124268 result!124264))

(assert (=> b!1733497 t!160993))

(declare-fun b_and!128073 () Bool)

(assert (= b_and!128065 (and (=> t!160993 result!124268) b_and!128073)))

(declare-fun tb!103345 () Bool)

(declare-fun t!160995 () Bool)

(assert (=> (and b!1733470 (= (toChars!4743 (transformation!3377 rule!422)) (toChars!4743 (transformation!3377 (rule!5363 (_1!10747 lt!665647))))) t!160995) tb!103345))

(declare-fun result!124270 () Bool)

(assert (= result!124270 result!124264))

(assert (=> b!1733497 t!160995))

(declare-fun b_and!128075 () Bool)

(assert (= b_and!128069 (and (=> t!160995 result!124270) b_and!128075)))

(declare-fun b_lambda!55381 () Bool)

(assert (=> (not b_lambda!55381) (not b!1733497)))

(declare-fun tb!103347 () Bool)

(declare-fun t!160997 () Bool)

(assert (=> (and b!1733474 (= (toValue!4884 (transformation!3377 (rule!5363 token!523))) (toValue!4884 (transformation!3377 (rule!5363 (_1!10747 lt!665647))))) t!160997) tb!103347))

(declare-fun result!124272 () Bool)

(assert (=> tb!103347 (= result!124272 (inv!21 (dynLambda!8896 (toValue!4884 (transformation!3377 (rule!5363 (_1!10747 lt!665647)))) lt!665645)))))

(declare-fun m!2142431 () Bool)

(assert (=> tb!103347 m!2142431))

(assert (=> b!1733497 t!160997))

(declare-fun b_and!128077 () Bool)

(assert (= b_and!128059 (and (=> t!160997 result!124272) b_and!128077)))

(declare-fun t!160999 () Bool)

(declare-fun tb!103349 () Bool)

(assert (=> (and b!1733500 (= (toValue!4884 (transformation!3377 (h!24418 rules!3447))) (toValue!4884 (transformation!3377 (rule!5363 (_1!10747 lt!665647))))) t!160999) tb!103349))

(declare-fun result!124276 () Bool)

(assert (= result!124276 result!124272))

(assert (=> b!1733497 t!160999))

(declare-fun b_and!128079 () Bool)

(assert (= b_and!128063 (and (=> t!160999 result!124276) b_and!128079)))

(declare-fun t!161001 () Bool)

(declare-fun tb!103351 () Bool)

(assert (=> (and b!1733470 (= (toValue!4884 (transformation!3377 rule!422)) (toValue!4884 (transformation!3377 (rule!5363 (_1!10747 lt!665647))))) t!161001) tb!103351))

(declare-fun result!124278 () Bool)

(assert (= result!124278 result!124272))

(assert (=> b!1733497 t!161001))

(declare-fun b_and!128081 () Bool)

(assert (= b_and!128067 (and (=> t!161001 result!124278) b_and!128081)))

(declare-fun b_lambda!55383 () Bool)

(assert (=> (not b_lambda!55383) (not b!1733501)))

(declare-fun t!161003 () Bool)

(declare-fun tb!103353 () Bool)

(assert (=> (and b!1733474 (= (toChars!4743 (transformation!3377 (rule!5363 token!523))) (toChars!4743 (transformation!3377 (rule!5363 (_1!10747 lt!665647))))) t!161003) tb!103353))

(declare-fun b!1733520 () Bool)

(declare-fun e!1109156 () Bool)

(declare-fun tp!494140 () Bool)

(assert (=> b!1733520 (= e!1109156 (and (inv!24608 (c!283080 (dynLambda!8895 (toChars!4743 (transformation!3377 (rule!5363 (_1!10747 lt!665647)))) (value!105917 (_1!10747 lt!665647))))) tp!494140))))

(declare-fun result!124280 () Bool)

(assert (=> tb!103353 (= result!124280 (and (inv!24609 (dynLambda!8895 (toChars!4743 (transformation!3377 (rule!5363 (_1!10747 lt!665647)))) (value!105917 (_1!10747 lt!665647)))) e!1109156))))

(assert (= tb!103353 b!1733520))

(declare-fun m!2142433 () Bool)

(assert (=> b!1733520 m!2142433))

(declare-fun m!2142435 () Bool)

(assert (=> tb!103353 m!2142435))

(assert (=> b!1733501 t!161003))

(declare-fun b_and!128083 () Bool)

(assert (= b_and!128071 (and (=> t!161003 result!124280) b_and!128083)))

(declare-fun tb!103355 () Bool)

(declare-fun t!161005 () Bool)

(assert (=> (and b!1733500 (= (toChars!4743 (transformation!3377 (h!24418 rules!3447))) (toChars!4743 (transformation!3377 (rule!5363 (_1!10747 lt!665647))))) t!161005) tb!103355))

(declare-fun result!124282 () Bool)

(assert (= result!124282 result!124280))

(assert (=> b!1733501 t!161005))

(declare-fun b_and!128085 () Bool)

(assert (= b_and!128073 (and (=> t!161005 result!124282) b_and!128085)))

(declare-fun t!161007 () Bool)

(declare-fun tb!103357 () Bool)

(assert (=> (and b!1733470 (= (toChars!4743 (transformation!3377 rule!422)) (toChars!4743 (transformation!3377 (rule!5363 (_1!10747 lt!665647))))) t!161007) tb!103357))

(declare-fun result!124284 () Bool)

(assert (= result!124284 result!124280))

(assert (=> b!1733501 t!161007))

(declare-fun b_and!128087 () Bool)

(assert (= b_and!128075 (and (=> t!161007 result!124284) b_and!128087)))

(declare-fun m!2142437 () Bool)

(assert (=> b!1733477 m!2142437))

(declare-fun m!2142439 () Bool)

(assert (=> b!1733485 m!2142439))

(declare-fun m!2142441 () Bool)

(assert (=> b!1733476 m!2142441))

(declare-fun m!2142443 () Bool)

(assert (=> b!1733476 m!2142443))

(declare-fun m!2142445 () Bool)

(assert (=> b!1733476 m!2142445))

(declare-fun m!2142447 () Bool)

(assert (=> b!1733476 m!2142447))

(declare-fun m!2142449 () Bool)

(assert (=> b!1733476 m!2142449))

(declare-fun m!2142451 () Bool)

(assert (=> b!1733473 m!2142451))

(declare-fun m!2142453 () Bool)

(assert (=> b!1733497 m!2142453))

(assert (=> b!1733497 m!2142453))

(declare-fun m!2142455 () Bool)

(assert (=> b!1733497 m!2142455))

(assert (=> b!1733497 m!2142455))

(declare-fun m!2142457 () Bool)

(assert (=> b!1733497 m!2142457))

(declare-fun m!2142459 () Bool)

(assert (=> b!1733497 m!2142459))

(declare-fun m!2142461 () Bool)

(assert (=> b!1733492 m!2142461))

(declare-fun m!2142463 () Bool)

(assert (=> b!1733492 m!2142463))

(declare-fun m!2142465 () Bool)

(assert (=> b!1733471 m!2142465))

(declare-fun m!2142467 () Bool)

(assert (=> start!170510 m!2142467))

(declare-fun m!2142469 () Bool)

(assert (=> b!1733475 m!2142469))

(declare-fun m!2142471 () Bool)

(assert (=> b!1733486 m!2142471))

(declare-fun m!2142473 () Bool)

(assert (=> b!1733486 m!2142473))

(declare-fun m!2142475 () Bool)

(assert (=> b!1733486 m!2142475))

(declare-fun m!2142477 () Bool)

(assert (=> b!1733486 m!2142477))

(declare-fun m!2142479 () Bool)

(assert (=> b!1733486 m!2142479))

(declare-fun m!2142481 () Bool)

(assert (=> b!1733486 m!2142481))

(declare-fun m!2142483 () Bool)

(assert (=> b!1733486 m!2142483))

(declare-fun m!2142485 () Bool)

(assert (=> b!1733484 m!2142485))

(declare-fun m!2142487 () Bool)

(assert (=> b!1733484 m!2142487))

(declare-fun m!2142489 () Bool)

(assert (=> b!1733484 m!2142489))

(declare-fun m!2142491 () Bool)

(assert (=> b!1733484 m!2142491))

(declare-fun m!2142493 () Bool)

(assert (=> b!1733484 m!2142493))

(declare-fun m!2142495 () Bool)

(assert (=> b!1733484 m!2142495))

(declare-fun m!2142497 () Bool)

(assert (=> b!1733484 m!2142497))

(declare-fun m!2142499 () Bool)

(assert (=> b!1733484 m!2142499))

(declare-fun m!2142501 () Bool)

(assert (=> b!1733484 m!2142501))

(declare-fun m!2142503 () Bool)

(assert (=> b!1733484 m!2142503))

(assert (=> b!1733484 m!2142487))

(declare-fun m!2142505 () Bool)

(assert (=> b!1733484 m!2142505))

(declare-fun m!2142507 () Bool)

(assert (=> b!1733482 m!2142507))

(declare-fun m!2142509 () Bool)

(assert (=> b!1733482 m!2142509))

(declare-fun m!2142511 () Bool)

(assert (=> b!1733483 m!2142511))

(assert (=> b!1733483 m!2142511))

(declare-fun m!2142513 () Bool)

(assert (=> b!1733483 m!2142513))

(assert (=> b!1733483 m!2142513))

(declare-fun m!2142515 () Bool)

(assert (=> b!1733483 m!2142515))

(declare-fun m!2142517 () Bool)

(assert (=> b!1733483 m!2142517))

(declare-fun m!2142519 () Bool)

(assert (=> b!1733478 m!2142519))

(declare-fun m!2142521 () Bool)

(assert (=> b!1733478 m!2142521))

(declare-fun m!2142523 () Bool)

(assert (=> b!1733499 m!2142523))

(declare-fun m!2142525 () Bool)

(assert (=> b!1733499 m!2142525))

(declare-fun m!2142527 () Bool)

(assert (=> b!1733499 m!2142527))

(declare-fun m!2142529 () Bool)

(assert (=> b!1733499 m!2142529))

(declare-fun m!2142531 () Bool)

(assert (=> b!1733499 m!2142531))

(assert (=> b!1733499 m!2142511))

(declare-fun m!2142533 () Bool)

(assert (=> b!1733499 m!2142533))

(declare-fun m!2142535 () Bool)

(assert (=> b!1733499 m!2142535))

(declare-fun m!2142537 () Bool)

(assert (=> b!1733499 m!2142537))

(declare-fun m!2142539 () Bool)

(assert (=> b!1733499 m!2142539))

(assert (=> b!1733499 m!2142531))

(declare-fun m!2142541 () Bool)

(assert (=> b!1733499 m!2142541))

(declare-fun m!2142543 () Bool)

(assert (=> b!1733499 m!2142543))

(declare-fun m!2142545 () Bool)

(assert (=> b!1733499 m!2142545))

(declare-fun m!2142547 () Bool)

(assert (=> b!1733499 m!2142547))

(declare-fun m!2142549 () Bool)

(assert (=> b!1733499 m!2142549))

(declare-fun m!2142551 () Bool)

(assert (=> b!1733469 m!2142551))

(declare-fun m!2142553 () Bool)

(assert (=> b!1733469 m!2142553))

(declare-fun m!2142555 () Bool)

(assert (=> b!1733469 m!2142555))

(declare-fun m!2142557 () Bool)

(assert (=> b!1733469 m!2142557))

(declare-fun m!2142559 () Bool)

(assert (=> b!1733493 m!2142559))

(declare-fun m!2142561 () Bool)

(assert (=> b!1733494 m!2142561))

(declare-fun m!2142563 () Bool)

(assert (=> b!1733501 m!2142563))

(declare-fun m!2142565 () Bool)

(assert (=> b!1733488 m!2142565))

(declare-fun m!2142567 () Bool)

(assert (=> b!1733487 m!2142567))

(declare-fun m!2142569 () Bool)

(assert (=> b!1733487 m!2142569))

(declare-fun m!2142571 () Bool)

(assert (=> b!1733487 m!2142571))

(declare-fun m!2142573 () Bool)

(assert (=> b!1733487 m!2142573))

(declare-fun m!2142575 () Bool)

(assert (=> b!1733498 m!2142575))

(declare-fun m!2142577 () Bool)

(assert (=> b!1733495 m!2142577))

(declare-fun m!2142579 () Bool)

(assert (=> b!1733495 m!2142579))

(declare-fun m!2142581 () Bool)

(assert (=> b!1733481 m!2142581))

(declare-fun m!2142583 () Bool)

(assert (=> b!1733481 m!2142583))

(declare-fun m!2142585 () Bool)

(assert (=> b!1733481 m!2142585))

(declare-fun m!2142587 () Bool)

(assert (=> b!1733472 m!2142587))

(declare-fun m!2142589 () Bool)

(assert (=> b!1733472 m!2142589))

(declare-fun m!2142591 () Bool)

(assert (=> b!1733472 m!2142591))

(declare-fun m!2142593 () Bool)

(assert (=> b!1733491 m!2142593))

(declare-fun m!2142595 () Bool)

(assert (=> b!1733491 m!2142595))

(declare-fun m!2142597 () Bool)

(assert (=> b!1733491 m!2142597))

(declare-fun m!2142599 () Bool)

(assert (=> b!1733491 m!2142599))

(declare-fun m!2142601 () Bool)

(assert (=> b!1733491 m!2142601))

(assert (=> b!1733491 m!2142599))

(declare-fun m!2142603 () Bool)

(assert (=> b!1733480 m!2142603))

(check-sat (not b!1733471) (not b!1733495) (not b!1733469) (not b!1733468) (not b!1733486) b_and!128077 (not b_next!48171) (not b!1733494) (not b!1733477) (not b!1733479) (not b!1733491) (not b_lambda!55383) (not b!1733520) (not b!1733475) (not b!1733499) (not b_next!48177) b_and!128079 tp_is_empty!7653 (not b!1733485) (not b!1733497) (not tb!103341) (not b!1733481) (not b!1733483) (not tb!103353) (not tb!103347) (not start!170510) (not b_lambda!55379) b_and!128087 b_and!128085 (not b!1733476) (not b!1733517) (not b!1733488) (not b!1733493) (not b!1733492) (not b!1733487) (not b_lambda!55381) (not b!1733480) (not b!1733473) (not b!1733484) b_and!128083 (not b!1733478) (not b!1733482) (not b!1733498) (not b!1733472) (not b_next!48175) b_and!128081 (not b_next!48179) (not b_next!48181) (not b_next!48173))
(check-sat (not b_next!48177) b_and!128079 b_and!128077 (not b_next!48171) b_and!128087 b_and!128085 b_and!128083 (not b_next!48175) b_and!128081 (not b_next!48179) (not b_next!48181) (not b_next!48173))

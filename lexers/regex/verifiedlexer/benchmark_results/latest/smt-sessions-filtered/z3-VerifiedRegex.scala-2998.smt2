; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!179430 () Bool)

(assert start!179430)

(declare-fun b!1814608 () Bool)

(declare-fun b_free!50023 () Bool)

(declare-fun b_next!50727 () Bool)

(assert (=> b!1814608 (= b_free!50023 (not b_next!50727))))

(declare-fun tp!512443 () Bool)

(declare-fun b_and!140307 () Bool)

(assert (=> b!1814608 (= tp!512443 b_and!140307)))

(declare-fun b_free!50025 () Bool)

(declare-fun b_next!50729 () Bool)

(assert (=> b!1814608 (= b_free!50025 (not b_next!50729))))

(declare-fun tp!512449 () Bool)

(declare-fun b_and!140309 () Bool)

(assert (=> b!1814608 (= tp!512449 b_and!140309)))

(declare-fun b!1814587 () Bool)

(declare-fun b_free!50027 () Bool)

(declare-fun b_next!50731 () Bool)

(assert (=> b!1814587 (= b_free!50027 (not b_next!50731))))

(declare-fun tp!512439 () Bool)

(declare-fun b_and!140311 () Bool)

(assert (=> b!1814587 (= tp!512439 b_and!140311)))

(declare-fun b_free!50029 () Bool)

(declare-fun b_next!50733 () Bool)

(assert (=> b!1814587 (= b_free!50029 (not b_next!50733))))

(declare-fun tp!512441 () Bool)

(declare-fun b_and!140313 () Bool)

(assert (=> b!1814587 (= tp!512441 b_and!140313)))

(declare-fun b!1814623 () Bool)

(declare-fun b_free!50031 () Bool)

(declare-fun b_next!50735 () Bool)

(assert (=> b!1814623 (= b_free!50031 (not b_next!50735))))

(declare-fun tp!512444 () Bool)

(declare-fun b_and!140315 () Bool)

(assert (=> b!1814623 (= tp!512444 b_and!140315)))

(declare-fun b_free!50033 () Bool)

(declare-fun b_next!50737 () Bool)

(assert (=> b!1814623 (= b_free!50033 (not b_next!50737))))

(declare-fun tp!512450 () Bool)

(declare-fun b_and!140317 () Bool)

(assert (=> b!1814623 (= tp!512450 b_and!140317)))

(declare-fun b!1814638 () Bool)

(declare-fun e!1159339 () Bool)

(assert (=> b!1814638 (= e!1159339 true)))

(declare-fun b!1814637 () Bool)

(declare-fun e!1159338 () Bool)

(assert (=> b!1814637 (= e!1159338 e!1159339)))

(declare-fun b!1814636 () Bool)

(declare-fun e!1159337 () Bool)

(assert (=> b!1814636 (= e!1159337 e!1159338)))

(declare-fun b!1814624 () Bool)

(assert (=> b!1814624 e!1159337))

(assert (= b!1814637 b!1814638))

(assert (= b!1814636 b!1814637))

(assert (= b!1814624 b!1814636))

(declare-fun order!12939 () Int)

(declare-fun order!12941 () Int)

(declare-fun lambda!71048 () Int)

(declare-datatypes ((List!19869 0))(
  ( (Nil!19799) (Cons!19799 (h!25200 (_ BitVec 16)) (t!169442 List!19869)) )
))
(declare-datatypes ((TokenValue!3647 0))(
  ( (FloatLiteralValue!7294 (text!25974 List!19869)) (TokenValueExt!3646 (__x!12596 Int)) (Broken!18235 (value!111021 List!19869)) (Object!3716) (End!3647) (Def!3647) (Underscore!3647) (Match!3647) (Else!3647) (Error!3647) (Case!3647) (If!3647) (Extends!3647) (Abstract!3647) (Class!3647) (Val!3647) (DelimiterValue!7294 (del!3707 List!19869)) (KeywordValue!3653 (value!111022 List!19869)) (CommentValue!7294 (value!111023 List!19869)) (WhitespaceValue!7294 (value!111024 List!19869)) (IndentationValue!3647 (value!111025 List!19869)) (String!22566) (Int32!3647) (Broken!18236 (value!111026 List!19869)) (Boolean!3648) (Unit!34470) (OperatorValue!3650 (op!3707 List!19869)) (IdentifierValue!7294 (value!111027 List!19869)) (IdentifierValue!7295 (value!111028 List!19869)) (WhitespaceValue!7295 (value!111029 List!19869)) (True!7294) (False!7294) (Broken!18237 (value!111030 List!19869)) (Broken!18238 (value!111031 List!19869)) (True!7295) (RightBrace!3647) (RightBracket!3647) (Colon!3647) (Null!3647) (Comma!3647) (LeftBracket!3647) (False!7295) (LeftBrace!3647) (ImaginaryLiteralValue!3647 (text!25975 List!19869)) (StringLiteralValue!10941 (value!111032 List!19869)) (EOFValue!3647 (value!111033 List!19869)) (IdentValue!3647 (value!111034 List!19869)) (DelimiterValue!7295 (value!111035 List!19869)) (DedentValue!3647 (value!111036 List!19869)) (NewLineValue!3647 (value!111037 List!19869)) (IntegerValue!10941 (value!111038 (_ BitVec 32)) (text!25976 List!19869)) (IntegerValue!10942 (value!111039 Int) (text!25977 List!19869)) (Times!3647) (Or!3647) (Equal!3647) (Minus!3647) (Broken!18239 (value!111040 List!19869)) (And!3647) (Div!3647) (LessEqual!3647) (Mod!3647) (Concat!8532) (Not!3647) (Plus!3647) (SpaceValue!3647 (value!111041 List!19869)) (IntegerValue!10943 (value!111042 Int) (text!25978 List!19869)) (StringLiteralValue!10942 (text!25979 List!19869)) (FloatLiteralValue!7295 (text!25980 List!19869)) (BytesLiteralValue!3647 (value!111043 List!19869)) (CommentValue!7295 (value!111044 List!19869)) (StringLiteralValue!10943 (value!111045 List!19869)) (ErrorTokenValue!3647 (msg!3708 List!19869)) )
))
(declare-datatypes ((C!9944 0))(
  ( (C!9945 (val!5568 Int)) )
))
(declare-datatypes ((List!19870 0))(
  ( (Nil!19800) (Cons!19800 (h!25201 C!9944) (t!169443 List!19870)) )
))
(declare-datatypes ((Regex!4885 0))(
  ( (ElementMatch!4885 (c!296392 C!9944)) (Concat!8533 (regOne!10282 Regex!4885) (regTwo!10282 Regex!4885)) (EmptyExpr!4885) (Star!4885 (reg!5214 Regex!4885)) (EmptyLang!4885) (Union!4885 (regOne!10283 Regex!4885) (regTwo!10283 Regex!4885)) )
))
(declare-datatypes ((String!22567 0))(
  ( (String!22568 (value!111046 String)) )
))
(declare-datatypes ((IArray!13179 0))(
  ( (IArray!13180 (innerList!6647 List!19870)) )
))
(declare-datatypes ((Conc!6587 0))(
  ( (Node!6587 (left!15891 Conc!6587) (right!16221 Conc!6587) (csize!13404 Int) (cheight!6798 Int)) (Leaf!9586 (xs!9463 IArray!13179) (csize!13405 Int)) (Empty!6587) )
))
(declare-datatypes ((BalanceConc!13118 0))(
  ( (BalanceConc!13119 (c!296393 Conc!6587)) )
))
(declare-datatypes ((TokenValueInjection!6954 0))(
  ( (TokenValueInjection!6955 (toValue!5088 Int) (toChars!4947 Int)) )
))
(declare-datatypes ((Rule!6914 0))(
  ( (Rule!6915 (regex!3557 Regex!4885) (tag!3969 String!22567) (isSeparator!3557 Bool) (transformation!3557 TokenValueInjection!6954)) )
))
(declare-datatypes ((Token!6680 0))(
  ( (Token!6681 (value!111047 TokenValue!3647) (rule!5667 Rule!6914) (size!15742 Int) (originalCharacters!4371 List!19870)) )
))
(declare-datatypes ((tuple2!19378 0))(
  ( (tuple2!19379 (_1!11091 Token!6680) (_2!11091 List!19870)) )
))
(declare-fun lt!705209 () tuple2!19378)

(declare-fun dynLambda!9865 (Int Int) Int)

(declare-fun dynLambda!9866 (Int Int) Int)

(assert (=> b!1814638 (< (dynLambda!9865 order!12939 (toValue!5088 (transformation!3557 (rule!5667 (_1!11091 lt!705209))))) (dynLambda!9866 order!12941 lambda!71048))))

(declare-fun order!12943 () Int)

(declare-fun dynLambda!9867 (Int Int) Int)

(assert (=> b!1814638 (< (dynLambda!9867 order!12943 (toChars!4947 (transformation!3557 (rule!5667 (_1!11091 lt!705209))))) (dynLambda!9866 order!12941 lambda!71048))))

(declare-fun b!1814584 () Bool)

(declare-fun e!1159328 () Bool)

(declare-fun lt!705235 () Rule!6914)

(assert (=> b!1814584 (= e!1159328 (= (rule!5667 (_1!11091 lt!705209)) lt!705235))))

(declare-fun b!1814585 () Bool)

(declare-fun e!1159318 () Bool)

(declare-fun e!1159302 () Bool)

(assert (=> b!1814585 (= e!1159318 e!1159302)))

(declare-fun res!815856 () Bool)

(assert (=> b!1814585 (=> res!815856 e!1159302)))

(declare-fun lt!705223 () List!19870)

(declare-datatypes ((Option!4140 0))(
  ( (None!4139) (Some!4139 (v!25660 tuple2!19378)) )
))
(declare-fun lt!705205 () Option!4140)

(assert (=> b!1814585 (= res!815856 (or (not (= lt!705223 (_2!11091 lt!705209))) (not (= lt!705205 (Some!4139 (tuple2!19379 (_1!11091 lt!705209) lt!705223))))))))

(assert (=> b!1814585 (= (_2!11091 lt!705209) lt!705223)))

(declare-fun lt!705237 () List!19870)

(declare-datatypes ((Unit!34471 0))(
  ( (Unit!34472) )
))
(declare-fun lt!705198 () Unit!34471)

(declare-fun lt!705241 () List!19870)

(declare-fun lemmaSamePrefixThenSameSuffix!908 (List!19870 List!19870 List!19870 List!19870 List!19870) Unit!34471)

(assert (=> b!1814585 (= lt!705198 (lemmaSamePrefixThenSameSuffix!908 lt!705241 (_2!11091 lt!705209) lt!705241 lt!705223 lt!705237))))

(declare-fun getSuffix!964 (List!19870 List!19870) List!19870)

(assert (=> b!1814585 (= lt!705223 (getSuffix!964 lt!705237 lt!705241))))

(declare-fun lt!705196 () TokenValue!3647)

(declare-fun lt!705246 () Int)

(assert (=> b!1814585 (= lt!705205 (Some!4139 (tuple2!19379 (Token!6681 lt!705196 (rule!5667 (_1!11091 lt!705209)) lt!705246 lt!705241) (_2!11091 lt!705209))))))

(declare-datatypes ((LexerInterface!3186 0))(
  ( (LexerInterfaceExt!3183 (__x!12597 Int)) (Lexer!3184) )
))
(declare-fun thiss!24550 () LexerInterface!3186)

(declare-fun maxPrefixOneRule!1109 (LexerInterface!3186 Rule!6914 List!19870) Option!4140)

(assert (=> b!1814585 (= lt!705205 (maxPrefixOneRule!1109 thiss!24550 (rule!5667 (_1!11091 lt!705209)) lt!705237))))

(declare-fun size!15743 (List!19870) Int)

(assert (=> b!1814585 (= lt!705246 (size!15743 lt!705241))))

(declare-fun apply!5357 (TokenValueInjection!6954 BalanceConc!13118) TokenValue!3647)

(declare-fun seqFromList!2526 (List!19870) BalanceConc!13118)

(assert (=> b!1814585 (= lt!705196 (apply!5357 (transformation!3557 (rule!5667 (_1!11091 lt!705209))) (seqFromList!2526 lt!705241)))))

(declare-fun lt!705245 () Unit!34471)

(declare-datatypes ((List!19871 0))(
  ( (Nil!19801) (Cons!19801 (h!25202 Rule!6914) (t!169444 List!19871)) )
))
(declare-fun rules!3447 () List!19871)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!487 (LexerInterface!3186 List!19871 List!19870 List!19870 List!19870 Rule!6914) Unit!34471)

(assert (=> b!1814585 (= lt!705245 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!487 thiss!24550 rules!3447 lt!705241 lt!705237 (_2!11091 lt!705209) (rule!5667 (_1!11091 lt!705209))))))

(declare-fun b!1814586 () Bool)

(declare-fun res!815843 () Bool)

(declare-fun e!1159305 () Bool)

(assert (=> b!1814586 (=> (not res!815843) (not e!1159305))))

(declare-fun lt!705213 () tuple2!19378)

(declare-fun isEmpty!12530 (List!19870) Bool)

(assert (=> b!1814586 (= res!815843 (isEmpty!12530 (_2!11091 lt!705213)))))

(declare-fun e!1159297 () Bool)

(assert (=> b!1814587 (= e!1159297 (and tp!512439 tp!512441))))

(declare-fun b!1814588 () Bool)

(declare-fun e!1159311 () Bool)

(declare-fun tp_is_empty!8013 () Bool)

(declare-fun tp!512445 () Bool)

(assert (=> b!1814588 (= e!1159311 (and tp_is_empty!8013 tp!512445))))

(declare-fun e!1159300 () Bool)

(declare-fun e!1159320 () Bool)

(declare-fun b!1814589 () Bool)

(declare-fun rule!422 () Rule!6914)

(declare-fun tp!512440 () Bool)

(declare-fun inv!25814 (String!22567) Bool)

(declare-fun inv!25819 (TokenValueInjection!6954) Bool)

(assert (=> b!1814589 (= e!1159320 (and tp!512440 (inv!25814 (tag!3969 rule!422)) (inv!25819 (transformation!3557 rule!422)) e!1159300))))

(declare-fun b!1814590 () Bool)

(declare-fun e!1159308 () Bool)

(assert (=> b!1814590 (= e!1159308 false)))

(declare-fun lt!705218 () Unit!34471)

(declare-fun e!1159310 () Unit!34471)

(assert (=> b!1814590 (= lt!705218 e!1159310)))

(declare-fun c!296389 () Bool)

(declare-fun lt!705230 () Int)

(declare-fun lt!705238 () Int)

(assert (=> b!1814590 (= c!296389 (= lt!705230 lt!705238))))

(declare-fun lt!705233 () Unit!34471)

(declare-fun e!1159316 () Unit!34471)

(assert (=> b!1814590 (= lt!705233 e!1159316)))

(declare-fun c!296387 () Bool)

(assert (=> b!1814590 (= c!296387 (< lt!705230 lt!705238))))

(declare-fun lt!705200 () Unit!34471)

(declare-fun e!1159299 () Unit!34471)

(assert (=> b!1814590 (= lt!705200 e!1159299)))

(declare-fun c!296388 () Bool)

(assert (=> b!1814590 (= c!296388 (< lt!705238 lt!705230))))

(declare-fun getIndex!222 (List!19871 Rule!6914) Int)

(assert (=> b!1814590 (= lt!705230 (getIndex!222 rules!3447 (rule!5667 (_1!11091 lt!705209))))))

(declare-fun token!523 () Token!6680)

(assert (=> b!1814590 (= lt!705238 (getIndex!222 rules!3447 (rule!5667 token!523)))))

(declare-fun b!1814591 () Bool)

(declare-fun e!1159304 () Unit!34471)

(declare-fun Unit!34473 () Unit!34471)

(assert (=> b!1814591 (= e!1159304 Unit!34473)))

(declare-fun b!1814592 () Bool)

(declare-fun Unit!34474 () Unit!34471)

(assert (=> b!1814592 (= e!1159299 Unit!34474)))

(declare-fun b!1814593 () Bool)

(declare-fun e!1159317 () Bool)

(assert (=> b!1814593 (= e!1159317 e!1159308)))

(declare-fun res!815849 () Bool)

(assert (=> b!1814593 (=> res!815849 e!1159308)))

(assert (=> b!1814593 (= res!815849 (= (rule!5667 (_1!11091 lt!705209)) (rule!5667 token!523)))))

(declare-fun suffix!1421 () List!19870)

(assert (=> b!1814593 (= suffix!1421 (_2!11091 lt!705209))))

(declare-fun lt!705244 () Unit!34471)

(declare-fun lt!705219 () List!19870)

(assert (=> b!1814593 (= lt!705244 (lemmaSamePrefixThenSameSuffix!908 lt!705219 suffix!1421 lt!705219 (_2!11091 lt!705209) lt!705237))))

(assert (=> b!1814593 (= lt!705241 lt!705219)))

(declare-fun lt!705236 () Unit!34471)

(declare-fun lemmaIsPrefixSameLengthThenSameList!293 (List!19870 List!19870 List!19870) Unit!34471)

(assert (=> b!1814593 (= lt!705236 (lemmaIsPrefixSameLengthThenSameList!293 lt!705241 lt!705219 lt!705237))))

(declare-fun b!1814594 () Bool)

(declare-fun Unit!34475 () Unit!34471)

(assert (=> b!1814594 (= e!1159310 Unit!34475)))

(declare-fun b!1814595 () Bool)

(declare-fun e!1159303 () Bool)

(assert (=> b!1814595 (= e!1159303 false)))

(declare-fun b!1814596 () Bool)

(declare-fun e!1159323 () Unit!34471)

(declare-fun Unit!34476 () Unit!34471)

(assert (=> b!1814596 (= e!1159323 Unit!34476)))

(declare-fun lt!705216 () Unit!34471)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!264 (LexerInterface!3186 List!19871 List!19870 Token!6680 Rule!6914 List!19870) Unit!34471)

(assert (=> b!1814596 (= lt!705216 (lemmaMaxPrefixThenMatchesRulesRegex!264 thiss!24550 rules!3447 lt!705237 (_1!11091 lt!705209) (rule!5667 (_1!11091 lt!705209)) (_2!11091 lt!705209)))))

(declare-fun lt!705243 () Regex!4885)

(declare-fun matchR!2358 (Regex!4885 List!19870) Bool)

(assert (=> b!1814596 (matchR!2358 lt!705243 lt!705241)))

(declare-fun lt!705239 () List!19870)

(assert (=> b!1814596 (= lt!705239 (getSuffix!964 lt!705237 lt!705219))))

(declare-fun lt!705225 () Unit!34471)

(assert (=> b!1814596 (= lt!705225 (lemmaSamePrefixThenSameSuffix!908 lt!705219 suffix!1421 lt!705219 lt!705239 lt!705237))))

(assert (=> b!1814596 (= suffix!1421 lt!705239)))

(declare-fun lt!705221 () Unit!34471)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!333 (List!19870 List!19870) Unit!34471)

(assert (=> b!1814596 (= lt!705221 (lemmaAddHeadSuffixToPrefixStillPrefix!333 lt!705219 lt!705237))))

(declare-fun isPrefix!1797 (List!19870 List!19870) Bool)

(declare-fun ++!5387 (List!19870 List!19870) List!19870)

(declare-fun head!4222 (List!19870) C!9944)

(assert (=> b!1814596 (isPrefix!1797 (++!5387 lt!705219 (Cons!19800 (head!4222 lt!705239) Nil!19800)) lt!705237)))

(declare-fun lt!705211 () List!19870)

(declare-fun lt!705199 () Unit!34471)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!205 (List!19870 List!19870 List!19870) Unit!34471)

(assert (=> b!1814596 (= lt!705199 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!205 lt!705241 lt!705211 lt!705237))))

(assert (=> b!1814596 (isPrefix!1797 lt!705211 lt!705241)))

(declare-fun lt!705204 () Unit!34471)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!196 (Regex!4885 List!19870 List!19870) Unit!34471)

(assert (=> b!1814596 (= lt!705204 (lemmaNotPrefixMatchThenCannotMatchLonger!196 lt!705243 lt!705211 lt!705241))))

(assert (=> b!1814596 false))

(declare-fun b!1814597 () Bool)

(declare-fun e!1159325 () Bool)

(assert (=> b!1814597 (= e!1159325 e!1159305)))

(declare-fun res!815841 () Bool)

(assert (=> b!1814597 (=> (not res!815841) (not e!1159305))))

(assert (=> b!1814597 (= res!815841 (= (_1!11091 lt!705213) token!523))))

(declare-fun lt!705226 () Option!4140)

(declare-fun get!6134 (Option!4140) tuple2!19378)

(assert (=> b!1814597 (= lt!705213 (get!6134 lt!705226))))

(declare-fun b!1814598 () Bool)

(declare-fun Unit!34477 () Unit!34471)

(assert (=> b!1814598 (= e!1159304 Unit!34477)))

(declare-fun lt!705201 () Unit!34471)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!266 (LexerInterface!3186 List!19871 Rule!6914 List!19870 List!19870 List!19870 Rule!6914) Unit!34471)

(assert (=> b!1814598 (= lt!705201 (lemmaMaxPrefixOutputsMaxPrefix!266 thiss!24550 rules!3447 (rule!5667 (_1!11091 lt!705209)) lt!705241 lt!705237 lt!705219 rule!422))))

(assert (=> b!1814598 false))

(declare-fun b!1814599 () Bool)

(declare-fun res!815835 () Bool)

(declare-fun e!1159315 () Bool)

(assert (=> b!1814599 (=> (not res!815835) (not e!1159315))))

(declare-fun rulesInvariant!2855 (LexerInterface!3186 List!19871) Bool)

(assert (=> b!1814599 (= res!815835 (rulesInvariant!2855 thiss!24550 rules!3447))))

(declare-fun e!1159319 () Bool)

(declare-fun tp!512442 () Bool)

(declare-fun b!1814600 () Bool)

(declare-fun e!1159324 () Bool)

(declare-fun inv!21 (TokenValue!3647) Bool)

(assert (=> b!1814600 (= e!1159324 (and (inv!21 (value!111047 token!523)) e!1159319 tp!512442))))

(declare-fun tp!512447 () Bool)

(declare-fun b!1814601 () Bool)

(assert (=> b!1814601 (= e!1159319 (and tp!512447 (inv!25814 (tag!3969 (rule!5667 token!523))) (inv!25819 (transformation!3557 (rule!5667 token!523))) e!1159297))))

(declare-fun b!1814602 () Bool)

(declare-fun e!1159327 () Bool)

(declare-fun e!1159312 () Bool)

(assert (=> b!1814602 (= e!1159327 e!1159312)))

(declare-fun res!815844 () Bool)

(assert (=> b!1814602 (=> res!815844 e!1159312)))

(declare-fun prefixMatch!768 (Regex!4885 List!19870) Bool)

(assert (=> b!1814602 (= res!815844 (prefixMatch!768 lt!705243 lt!705211))))

(assert (=> b!1814602 (= lt!705211 (++!5387 lt!705219 (Cons!19800 (head!4222 suffix!1421) Nil!19800)))))

(declare-fun rulesRegex!913 (LexerInterface!3186 List!19871) Regex!4885)

(assert (=> b!1814602 (= lt!705243 (rulesRegex!913 thiss!24550 rules!3447))))

(declare-fun b!1814603 () Bool)

(declare-fun res!815836 () Bool)

(assert (=> b!1814603 (=> (not res!815836) (not e!1159315))))

(declare-fun contains!3591 (List!19871 Rule!6914) Bool)

(assert (=> b!1814603 (= res!815836 (contains!3591 rules!3447 rule!422))))

(declare-fun b!1814604 () Bool)

(declare-fun res!815842 () Bool)

(declare-fun e!1159322 () Bool)

(assert (=> b!1814604 (=> res!815842 e!1159322)))

(declare-fun lt!705229 () BalanceConc!13118)

(declare-fun dynLambda!9868 (Int TokenValue!3647) BalanceConc!13118)

(assert (=> b!1814604 (= res!815842 (not (= lt!705229 (dynLambda!9868 (toChars!4947 (transformation!3557 (rule!5667 (_1!11091 lt!705209)))) (value!111047 (_1!11091 lt!705209))))))))

(declare-fun b!1814605 () Bool)

(declare-fun Unit!34478 () Unit!34471)

(assert (=> b!1814605 (= e!1159323 Unit!34478)))

(declare-fun b!1814606 () Bool)

(declare-fun e!1159321 () Bool)

(assert (=> b!1814606 (= e!1159321 e!1159322)))

(declare-fun res!815847 () Bool)

(assert (=> b!1814606 (=> res!815847 e!1159322)))

(declare-fun list!8061 (BalanceConc!13118) List!19870)

(declare-fun dynLambda!9869 (Int BalanceConc!13118) TokenValue!3647)

(assert (=> b!1814606 (= res!815847 (not (= (list!8061 (dynLambda!9868 (toChars!4947 (transformation!3557 (rule!5667 (_1!11091 lt!705209)))) (dynLambda!9869 (toValue!5088 (transformation!3557 (rule!5667 (_1!11091 lt!705209)))) lt!705229))) lt!705241)))))

(declare-fun lt!705214 () Unit!34471)

(declare-fun lemmaSemiInverse!695 (TokenValueInjection!6954 BalanceConc!13118) Unit!34471)

(assert (=> b!1814606 (= lt!705214 (lemmaSemiInverse!695 (transformation!3557 (rule!5667 (_1!11091 lt!705209))) lt!705229))))

(declare-fun b!1814607 () Bool)

(declare-fun e!1159306 () Bool)

(assert (=> b!1814607 (= e!1159312 e!1159306)))

(declare-fun res!815854 () Bool)

(assert (=> b!1814607 (=> res!815854 e!1159306)))

(assert (=> b!1814607 (= res!815854 (not (isPrefix!1797 lt!705241 lt!705237)))))

(assert (=> b!1814607 (isPrefix!1797 lt!705241 (++!5387 lt!705241 (_2!11091 lt!705209)))))

(declare-fun lt!705217 () Unit!34471)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1306 (List!19870 List!19870) Unit!34471)

(assert (=> b!1814607 (= lt!705217 (lemmaConcatTwoListThenFirstIsPrefix!1306 lt!705241 (_2!11091 lt!705209)))))

(assert (=> b!1814607 (= lt!705241 (list!8061 lt!705229))))

(declare-fun charsOf!2206 (Token!6680) BalanceConc!13118)

(assert (=> b!1814607 (= lt!705229 (charsOf!2206 (_1!11091 lt!705209)))))

(declare-fun e!1159307 () Bool)

(assert (=> b!1814607 e!1159307))

(declare-fun res!815858 () Bool)

(assert (=> b!1814607 (=> (not res!815858) (not e!1159307))))

(declare-datatypes ((Option!4141 0))(
  ( (None!4140) (Some!4140 (v!25661 Rule!6914)) )
))
(declare-fun lt!705220 () Option!4141)

(declare-fun isDefined!3481 (Option!4141) Bool)

(assert (=> b!1814607 (= res!815858 (isDefined!3481 lt!705220))))

(declare-fun getRuleFromTag!605 (LexerInterface!3186 List!19871 String!22567) Option!4141)

(assert (=> b!1814607 (= lt!705220 (getRuleFromTag!605 thiss!24550 rules!3447 (tag!3969 (rule!5667 (_1!11091 lt!705209)))))))

(declare-fun lt!705195 () Unit!34471)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!605 (LexerInterface!3186 List!19871 List!19870 Token!6680) Unit!34471)

(assert (=> b!1814607 (= lt!705195 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!605 thiss!24550 rules!3447 lt!705237 (_1!11091 lt!705209)))))

(declare-fun lt!705224 () Option!4140)

(assert (=> b!1814607 (= lt!705209 (get!6134 lt!705224))))

(declare-fun lt!705242 () Unit!34471)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!708 (LexerInterface!3186 List!19871 List!19870 List!19870) Unit!34471)

(assert (=> b!1814607 (= lt!705242 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!708 thiss!24550 rules!3447 lt!705219 suffix!1421))))

(declare-fun maxPrefix!1740 (LexerInterface!3186 List!19871 List!19870) Option!4140)

(assert (=> b!1814607 (= lt!705224 (maxPrefix!1740 thiss!24550 rules!3447 lt!705237))))

(assert (=> b!1814607 (isPrefix!1797 lt!705219 lt!705237)))

(declare-fun lt!705208 () Unit!34471)

(assert (=> b!1814607 (= lt!705208 (lemmaConcatTwoListThenFirstIsPrefix!1306 lt!705219 suffix!1421))))

(assert (=> b!1814607 (= lt!705237 (++!5387 lt!705219 suffix!1421))))

(declare-fun e!1159313 () Bool)

(assert (=> b!1814608 (= e!1159313 (and tp!512443 tp!512449))))

(declare-fun b!1814609 () Bool)

(declare-fun res!815851 () Bool)

(assert (=> b!1814609 (=> (not res!815851) (not e!1159315))))

(declare-fun isEmpty!12531 (List!19871) Bool)

(assert (=> b!1814609 (= res!815851 (not (isEmpty!12531 rules!3447)))))

(declare-fun b!1814610 () Bool)

(assert (=> b!1814610 (= e!1159315 e!1159325)))

(declare-fun res!815855 () Bool)

(assert (=> b!1814610 (=> (not res!815855) (not e!1159325))))

(declare-fun isDefined!3482 (Option!4140) Bool)

(assert (=> b!1814610 (= res!815855 (isDefined!3482 lt!705226))))

(assert (=> b!1814610 (= lt!705226 (maxPrefix!1740 thiss!24550 rules!3447 lt!705219))))

(declare-fun lt!705232 () BalanceConc!13118)

(assert (=> b!1814610 (= lt!705219 (list!8061 lt!705232))))

(assert (=> b!1814610 (= lt!705232 (charsOf!2206 token!523))))

(declare-fun b!1814611 () Bool)

(declare-fun Unit!34479 () Unit!34471)

(assert (=> b!1814611 (= e!1159316 Unit!34479)))

(declare-fun lt!705203 () Unit!34471)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!178 (LexerInterface!3186 List!19871 Rule!6914 List!19870 List!19870 Rule!6914) Unit!34471)

(assert (=> b!1814611 (= lt!705203 (lemmaMaxPrefNoSmallerRuleMatches!178 thiss!24550 rules!3447 (rule!5667 token!523) lt!705219 lt!705219 (rule!5667 (_1!11091 lt!705209))))))

(declare-fun res!815837 () Bool)

(assert (=> b!1814611 (= res!815837 (not (matchR!2358 (regex!3557 (rule!5667 (_1!11091 lt!705209))) lt!705219)))))

(declare-fun e!1159296 () Bool)

(assert (=> b!1814611 (=> (not res!815837) (not e!1159296))))

(assert (=> b!1814611 e!1159296))

(declare-fun b!1814612 () Bool)

(declare-fun res!815838 () Bool)

(assert (=> b!1814612 (=> (not res!815838) (not e!1159305))))

(assert (=> b!1814612 (= res!815838 (= (rule!5667 token!523) rule!422))))

(declare-fun b!1814613 () Bool)

(declare-fun e!1159329 () Bool)

(assert (=> b!1814613 (= e!1159329 e!1159317)))

(declare-fun res!815834 () Bool)

(assert (=> b!1814613 (=> res!815834 e!1159317)))

(declare-fun lt!705231 () Int)

(declare-fun lt!705234 () Int)

(assert (=> b!1814613 (= res!815834 (not (= lt!705231 lt!705234)))))

(declare-fun lt!705222 () Unit!34471)

(assert (=> b!1814613 (= lt!705222 e!1159304)))

(declare-fun c!296390 () Bool)

(assert (=> b!1814613 (= c!296390 (< lt!705231 lt!705234))))

(declare-fun b!1814614 () Bool)

(assert (=> b!1814614 (= e!1159307 e!1159328)))

(declare-fun res!815857 () Bool)

(assert (=> b!1814614 (=> (not res!815857) (not e!1159328))))

(assert (=> b!1814614 (= res!815857 (matchR!2358 (regex!3557 lt!705235) (list!8061 (charsOf!2206 (_1!11091 lt!705209)))))))

(declare-fun get!6135 (Option!4141) Rule!6914)

(assert (=> b!1814614 (= lt!705235 (get!6135 lt!705220))))

(declare-fun b!1814615 () Bool)

(declare-fun e!1159298 () Bool)

(declare-fun e!1159314 () Bool)

(declare-fun tp!512446 () Bool)

(assert (=> b!1814615 (= e!1159298 (and e!1159314 tp!512446))))

(declare-fun b!1814616 () Bool)

(assert (=> b!1814616 (= e!1159322 e!1159318)))

(declare-fun res!815846 () Bool)

(assert (=> b!1814616 (=> res!815846 e!1159318)))

(declare-fun lt!705197 () TokenValue!3647)

(assert (=> b!1814616 (= res!815846 (not (= lt!705224 (Some!4139 (tuple2!19379 (Token!6681 lt!705197 (rule!5667 (_1!11091 lt!705209)) lt!705231 lt!705241) (_2!11091 lt!705209))))))))

(declare-fun size!15744 (BalanceConc!13118) Int)

(assert (=> b!1814616 (= lt!705231 (size!15744 lt!705229))))

(assert (=> b!1814616 (= lt!705197 (apply!5357 (transformation!3557 (rule!5667 (_1!11091 lt!705209))) lt!705229))))

(declare-fun lt!705207 () Unit!34471)

(declare-fun lemmaCharactersSize!615 (Token!6680) Unit!34471)

(assert (=> b!1814616 (= lt!705207 (lemmaCharactersSize!615 (_1!11091 lt!705209)))))

(declare-fun lt!705227 () Unit!34471)

(declare-fun lemmaEqSameImage!468 (TokenValueInjection!6954 BalanceConc!13118 BalanceConc!13118) Unit!34471)

(assert (=> b!1814616 (= lt!705227 (lemmaEqSameImage!468 (transformation!3557 (rule!5667 (_1!11091 lt!705209))) lt!705229 (seqFromList!2526 (originalCharacters!4371 (_1!11091 lt!705209)))))))

(declare-fun b!1814617 () Bool)

(assert (=> b!1814617 (= e!1159296 false)))

(declare-fun b!1814618 () Bool)

(assert (=> b!1814618 (= e!1159305 (not e!1159327))))

(declare-fun res!815852 () Bool)

(assert (=> b!1814618 (=> res!815852 e!1159327)))

(assert (=> b!1814618 (= res!815852 (not (matchR!2358 (regex!3557 rule!422) lt!705219)))))

(declare-fun ruleValid!1055 (LexerInterface!3186 Rule!6914) Bool)

(assert (=> b!1814618 (ruleValid!1055 thiss!24550 rule!422)))

(declare-fun lt!705212 () Unit!34471)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!578 (LexerInterface!3186 Rule!6914 List!19871) Unit!34471)

(assert (=> b!1814618 (= lt!705212 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!578 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1814619 () Bool)

(assert (=> b!1814619 (= e!1159302 e!1159329)))

(declare-fun res!815850 () Bool)

(assert (=> b!1814619 (=> res!815850 e!1159329)))

(declare-fun lt!705240 () Bool)

(assert (=> b!1814619 (= res!815850 lt!705240)))

(declare-fun lt!705228 () Unit!34471)

(assert (=> b!1814619 (= lt!705228 e!1159323)))

(declare-fun c!296391 () Bool)

(assert (=> b!1814619 (= c!296391 lt!705240)))

(assert (=> b!1814619 (= lt!705240 (> lt!705231 lt!705234))))

(assert (=> b!1814619 (= lt!705234 (size!15744 lt!705232))))

(assert (=> b!1814619 (matchR!2358 lt!705243 lt!705219)))

(declare-fun lt!705202 () Unit!34471)

(assert (=> b!1814619 (= lt!705202 (lemmaMaxPrefixThenMatchesRulesRegex!264 thiss!24550 rules!3447 lt!705219 token!523 rule!422 Nil!19800))))

(declare-fun b!1814620 () Bool)

(declare-fun tp!512448 () Bool)

(assert (=> b!1814620 (= e!1159314 (and tp!512448 (inv!25814 (tag!3969 (h!25202 rules!3447))) (inv!25819 (transformation!3557 (h!25202 rules!3447))) e!1159313))))

(declare-fun b!1814621 () Bool)

(declare-fun Unit!34480 () Unit!34471)

(assert (=> b!1814621 (= e!1159316 Unit!34480)))

(declare-fun b!1814622 () Bool)

(declare-fun Unit!34481 () Unit!34471)

(assert (=> b!1814622 (= e!1159310 Unit!34481)))

(declare-fun lt!705206 () Unit!34471)

(declare-fun lemmaSameIndexThenSameElement!114 (List!19871 Rule!6914 Rule!6914) Unit!34471)

(assert (=> b!1814622 (= lt!705206 (lemmaSameIndexThenSameElement!114 rules!3447 (rule!5667 (_1!11091 lt!705209)) (rule!5667 token!523)))))

(assert (=> b!1814622 false))

(declare-fun res!815845 () Bool)

(assert (=> start!179430 (=> (not res!815845) (not e!1159315))))

(get-info :version)

(assert (=> start!179430 (= res!815845 ((_ is Lexer!3184) thiss!24550))))

(assert (=> start!179430 e!1159315))

(assert (=> start!179430 e!1159311))

(assert (=> start!179430 e!1159320))

(assert (=> start!179430 true))

(declare-fun inv!25820 (Token!6680) Bool)

(assert (=> start!179430 (and (inv!25820 token!523) e!1159324)))

(assert (=> start!179430 e!1159298))

(assert (=> b!1814623 (= e!1159300 (and tp!512444 tp!512450))))

(assert (=> b!1814624 (= e!1159306 e!1159321)))

(declare-fun res!815853 () Bool)

(assert (=> b!1814624 (=> res!815853 e!1159321)))

(declare-fun Forall!924 (Int) Bool)

(assert (=> b!1814624 (= res!815853 (not (Forall!924 lambda!71048)))))

(declare-fun lt!705215 () Unit!34471)

(declare-fun lemmaInv!756 (TokenValueInjection!6954) Unit!34471)

(assert (=> b!1814624 (= lt!705215 (lemmaInv!756 (transformation!3557 (rule!5667 (_1!11091 lt!705209)))))))

(declare-fun b!1814625 () Bool)

(declare-fun res!815839 () Bool)

(assert (=> b!1814625 (=> res!815839 e!1159327)))

(assert (=> b!1814625 (= res!815839 (isEmpty!12530 suffix!1421))))

(declare-fun b!1814626 () Bool)

(declare-fun res!815848 () Bool)

(assert (=> b!1814626 (=> res!815848 e!1159306)))

(assert (=> b!1814626 (= res!815848 (not (matchR!2358 (regex!3557 (rule!5667 (_1!11091 lt!705209))) lt!705241)))))

(declare-fun b!1814627 () Bool)

(declare-fun Unit!34482 () Unit!34471)

(assert (=> b!1814627 (= e!1159299 Unit!34482)))

(declare-fun lt!705210 () Unit!34471)

(assert (=> b!1814627 (= lt!705210 (lemmaMaxPrefNoSmallerRuleMatches!178 thiss!24550 rules!3447 (rule!5667 (_1!11091 lt!705209)) lt!705241 lt!705237 (rule!5667 token!523)))))

(declare-fun res!815840 () Bool)

(assert (=> b!1814627 (= res!815840 (not (matchR!2358 (regex!3557 (rule!5667 token!523)) lt!705241)))))

(assert (=> b!1814627 (=> (not res!815840) (not e!1159303))))

(assert (=> b!1814627 e!1159303))

(assert (= (and start!179430 res!815845) b!1814609))

(assert (= (and b!1814609 res!815851) b!1814599))

(assert (= (and b!1814599 res!815835) b!1814603))

(assert (= (and b!1814603 res!815836) b!1814610))

(assert (= (and b!1814610 res!815855) b!1814597))

(assert (= (and b!1814597 res!815841) b!1814586))

(assert (= (and b!1814586 res!815843) b!1814612))

(assert (= (and b!1814612 res!815838) b!1814618))

(assert (= (and b!1814618 (not res!815852)) b!1814625))

(assert (= (and b!1814625 (not res!815839)) b!1814602))

(assert (= (and b!1814602 (not res!815844)) b!1814607))

(assert (= (and b!1814607 res!815858) b!1814614))

(assert (= (and b!1814614 res!815857) b!1814584))

(assert (= (and b!1814607 (not res!815854)) b!1814626))

(assert (= (and b!1814626 (not res!815848)) b!1814624))

(assert (= (and b!1814624 (not res!815853)) b!1814606))

(assert (= (and b!1814606 (not res!815847)) b!1814604))

(assert (= (and b!1814604 (not res!815842)) b!1814616))

(assert (= (and b!1814616 (not res!815846)) b!1814585))

(assert (= (and b!1814585 (not res!815856)) b!1814619))

(assert (= (and b!1814619 c!296391) b!1814596))

(assert (= (and b!1814619 (not c!296391)) b!1814605))

(assert (= (and b!1814619 (not res!815850)) b!1814613))

(assert (= (and b!1814613 c!296390) b!1814598))

(assert (= (and b!1814613 (not c!296390)) b!1814591))

(assert (= (and b!1814613 (not res!815834)) b!1814593))

(assert (= (and b!1814593 (not res!815849)) b!1814590))

(assert (= (and b!1814590 c!296388) b!1814627))

(assert (= (and b!1814590 (not c!296388)) b!1814592))

(assert (= (and b!1814627 res!815840) b!1814595))

(assert (= (and b!1814590 c!296387) b!1814611))

(assert (= (and b!1814590 (not c!296387)) b!1814621))

(assert (= (and b!1814611 res!815837) b!1814617))

(assert (= (and b!1814590 c!296389) b!1814622))

(assert (= (and b!1814590 (not c!296389)) b!1814594))

(assert (= (and start!179430 ((_ is Cons!19800) suffix!1421)) b!1814588))

(assert (= b!1814589 b!1814623))

(assert (= start!179430 b!1814589))

(assert (= b!1814601 b!1814587))

(assert (= b!1814600 b!1814601))

(assert (= start!179430 b!1814600))

(assert (= b!1814620 b!1814608))

(assert (= b!1814615 b!1814620))

(assert (= (and start!179430 ((_ is Cons!19801) rules!3447)) b!1814615))

(declare-fun b_lambda!59855 () Bool)

(assert (=> (not b_lambda!59855) (not b!1814604)))

(declare-fun tb!110947 () Bool)

(declare-fun t!169425 () Bool)

(assert (=> (and b!1814608 (= (toChars!4947 (transformation!3557 (h!25202 rules!3447))) (toChars!4947 (transformation!3557 (rule!5667 (_1!11091 lt!705209))))) t!169425) tb!110947))

(declare-fun b!1814643 () Bool)

(declare-fun e!1159342 () Bool)

(declare-fun tp!512453 () Bool)

(declare-fun inv!25821 (Conc!6587) Bool)

(assert (=> b!1814643 (= e!1159342 (and (inv!25821 (c!296393 (dynLambda!9868 (toChars!4947 (transformation!3557 (rule!5667 (_1!11091 lt!705209)))) (value!111047 (_1!11091 lt!705209))))) tp!512453))))

(declare-fun result!133230 () Bool)

(declare-fun inv!25822 (BalanceConc!13118) Bool)

(assert (=> tb!110947 (= result!133230 (and (inv!25822 (dynLambda!9868 (toChars!4947 (transformation!3557 (rule!5667 (_1!11091 lt!705209)))) (value!111047 (_1!11091 lt!705209)))) e!1159342))))

(assert (= tb!110947 b!1814643))

(declare-fun m!2244069 () Bool)

(assert (=> b!1814643 m!2244069))

(declare-fun m!2244071 () Bool)

(assert (=> tb!110947 m!2244071))

(assert (=> b!1814604 t!169425))

(declare-fun b_and!140319 () Bool)

(assert (= b_and!140309 (and (=> t!169425 result!133230) b_and!140319)))

(declare-fun tb!110949 () Bool)

(declare-fun t!169427 () Bool)

(assert (=> (and b!1814587 (= (toChars!4947 (transformation!3557 (rule!5667 token!523))) (toChars!4947 (transformation!3557 (rule!5667 (_1!11091 lt!705209))))) t!169427) tb!110949))

(declare-fun result!133234 () Bool)

(assert (= result!133234 result!133230))

(assert (=> b!1814604 t!169427))

(declare-fun b_and!140321 () Bool)

(assert (= b_and!140313 (and (=> t!169427 result!133234) b_and!140321)))

(declare-fun t!169429 () Bool)

(declare-fun tb!110951 () Bool)

(assert (=> (and b!1814623 (= (toChars!4947 (transformation!3557 rule!422)) (toChars!4947 (transformation!3557 (rule!5667 (_1!11091 lt!705209))))) t!169429) tb!110951))

(declare-fun result!133236 () Bool)

(assert (= result!133236 result!133230))

(assert (=> b!1814604 t!169429))

(declare-fun b_and!140323 () Bool)

(assert (= b_and!140317 (and (=> t!169429 result!133236) b_and!140323)))

(declare-fun b_lambda!59857 () Bool)

(assert (=> (not b_lambda!59857) (not b!1814606)))

(declare-fun tb!110953 () Bool)

(declare-fun t!169431 () Bool)

(assert (=> (and b!1814608 (= (toChars!4947 (transformation!3557 (h!25202 rules!3447))) (toChars!4947 (transformation!3557 (rule!5667 (_1!11091 lt!705209))))) t!169431) tb!110953))

(declare-fun e!1159343 () Bool)

(declare-fun b!1814644 () Bool)

(declare-fun tp!512454 () Bool)

(assert (=> b!1814644 (= e!1159343 (and (inv!25821 (c!296393 (dynLambda!9868 (toChars!4947 (transformation!3557 (rule!5667 (_1!11091 lt!705209)))) (dynLambda!9869 (toValue!5088 (transformation!3557 (rule!5667 (_1!11091 lt!705209)))) lt!705229)))) tp!512454))))

(declare-fun result!133238 () Bool)

(assert (=> tb!110953 (= result!133238 (and (inv!25822 (dynLambda!9868 (toChars!4947 (transformation!3557 (rule!5667 (_1!11091 lt!705209)))) (dynLambda!9869 (toValue!5088 (transformation!3557 (rule!5667 (_1!11091 lt!705209)))) lt!705229))) e!1159343))))

(assert (= tb!110953 b!1814644))

(declare-fun m!2244073 () Bool)

(assert (=> b!1814644 m!2244073))

(declare-fun m!2244075 () Bool)

(assert (=> tb!110953 m!2244075))

(assert (=> b!1814606 t!169431))

(declare-fun b_and!140325 () Bool)

(assert (= b_and!140319 (and (=> t!169431 result!133238) b_and!140325)))

(declare-fun tb!110955 () Bool)

(declare-fun t!169433 () Bool)

(assert (=> (and b!1814587 (= (toChars!4947 (transformation!3557 (rule!5667 token!523))) (toChars!4947 (transformation!3557 (rule!5667 (_1!11091 lt!705209))))) t!169433) tb!110955))

(declare-fun result!133240 () Bool)

(assert (= result!133240 result!133238))

(assert (=> b!1814606 t!169433))

(declare-fun b_and!140327 () Bool)

(assert (= b_and!140321 (and (=> t!169433 result!133240) b_and!140327)))

(declare-fun tb!110957 () Bool)

(declare-fun t!169435 () Bool)

(assert (=> (and b!1814623 (= (toChars!4947 (transformation!3557 rule!422)) (toChars!4947 (transformation!3557 (rule!5667 (_1!11091 lt!705209))))) t!169435) tb!110957))

(declare-fun result!133242 () Bool)

(assert (= result!133242 result!133238))

(assert (=> b!1814606 t!169435))

(declare-fun b_and!140329 () Bool)

(assert (= b_and!140323 (and (=> t!169435 result!133242) b_and!140329)))

(declare-fun b_lambda!59859 () Bool)

(assert (=> (not b_lambda!59859) (not b!1814606)))

(declare-fun t!169437 () Bool)

(declare-fun tb!110959 () Bool)

(assert (=> (and b!1814608 (= (toValue!5088 (transformation!3557 (h!25202 rules!3447))) (toValue!5088 (transformation!3557 (rule!5667 (_1!11091 lt!705209))))) t!169437) tb!110959))

(declare-fun result!133244 () Bool)

(assert (=> tb!110959 (= result!133244 (inv!21 (dynLambda!9869 (toValue!5088 (transformation!3557 (rule!5667 (_1!11091 lt!705209)))) lt!705229)))))

(declare-fun m!2244077 () Bool)

(assert (=> tb!110959 m!2244077))

(assert (=> b!1814606 t!169437))

(declare-fun b_and!140331 () Bool)

(assert (= b_and!140307 (and (=> t!169437 result!133244) b_and!140331)))

(declare-fun t!169439 () Bool)

(declare-fun tb!110961 () Bool)

(assert (=> (and b!1814587 (= (toValue!5088 (transformation!3557 (rule!5667 token!523))) (toValue!5088 (transformation!3557 (rule!5667 (_1!11091 lt!705209))))) t!169439) tb!110961))

(declare-fun result!133248 () Bool)

(assert (= result!133248 result!133244))

(assert (=> b!1814606 t!169439))

(declare-fun b_and!140333 () Bool)

(assert (= b_and!140311 (and (=> t!169439 result!133248) b_and!140333)))

(declare-fun t!169441 () Bool)

(declare-fun tb!110963 () Bool)

(assert (=> (and b!1814623 (= (toValue!5088 (transformation!3557 rule!422)) (toValue!5088 (transformation!3557 (rule!5667 (_1!11091 lt!705209))))) t!169441) tb!110963))

(declare-fun result!133250 () Bool)

(assert (= result!133250 result!133244))

(assert (=> b!1814606 t!169441))

(declare-fun b_and!140335 () Bool)

(assert (= b_and!140315 (and (=> t!169441 result!133250) b_and!140335)))

(declare-fun m!2244079 () Bool)

(assert (=> b!1814603 m!2244079))

(declare-fun m!2244081 () Bool)

(assert (=> b!1814607 m!2244081))

(declare-fun m!2244083 () Bool)

(assert (=> b!1814607 m!2244083))

(declare-fun m!2244085 () Bool)

(assert (=> b!1814607 m!2244085))

(declare-fun m!2244087 () Bool)

(assert (=> b!1814607 m!2244087))

(declare-fun m!2244089 () Bool)

(assert (=> b!1814607 m!2244089))

(declare-fun m!2244091 () Bool)

(assert (=> b!1814607 m!2244091))

(declare-fun m!2244093 () Bool)

(assert (=> b!1814607 m!2244093))

(declare-fun m!2244095 () Bool)

(assert (=> b!1814607 m!2244095))

(declare-fun m!2244097 () Bool)

(assert (=> b!1814607 m!2244097))

(declare-fun m!2244099 () Bool)

(assert (=> b!1814607 m!2244099))

(declare-fun m!2244101 () Bool)

(assert (=> b!1814607 m!2244101))

(declare-fun m!2244103 () Bool)

(assert (=> b!1814607 m!2244103))

(assert (=> b!1814607 m!2244085))

(declare-fun m!2244105 () Bool)

(assert (=> b!1814607 m!2244105))

(declare-fun m!2244107 () Bool)

(assert (=> b!1814607 m!2244107))

(declare-fun m!2244109 () Bool)

(assert (=> b!1814607 m!2244109))

(declare-fun m!2244111 () Bool)

(assert (=> b!1814598 m!2244111))

(declare-fun m!2244113 () Bool)

(assert (=> b!1814596 m!2244113))

(declare-fun m!2244115 () Bool)

(assert (=> b!1814596 m!2244115))

(declare-fun m!2244117 () Bool)

(assert (=> b!1814596 m!2244117))

(declare-fun m!2244119 () Bool)

(assert (=> b!1814596 m!2244119))

(declare-fun m!2244121 () Bool)

(assert (=> b!1814596 m!2244121))

(declare-fun m!2244123 () Bool)

(assert (=> b!1814596 m!2244123))

(declare-fun m!2244125 () Bool)

(assert (=> b!1814596 m!2244125))

(declare-fun m!2244127 () Bool)

(assert (=> b!1814596 m!2244127))

(declare-fun m!2244129 () Bool)

(assert (=> b!1814596 m!2244129))

(declare-fun m!2244131 () Bool)

(assert (=> b!1814596 m!2244131))

(assert (=> b!1814596 m!2244125))

(declare-fun m!2244133 () Bool)

(assert (=> b!1814596 m!2244133))

(declare-fun m!2244135 () Bool)

(assert (=> b!1814624 m!2244135))

(declare-fun m!2244137 () Bool)

(assert (=> b!1814624 m!2244137))

(declare-fun m!2244139 () Bool)

(assert (=> b!1814589 m!2244139))

(declare-fun m!2244141 () Bool)

(assert (=> b!1814589 m!2244141))

(declare-fun m!2244143 () Bool)

(assert (=> b!1814593 m!2244143))

(declare-fun m!2244145 () Bool)

(assert (=> b!1814593 m!2244145))

(declare-fun m!2244147 () Bool)

(assert (=> start!179430 m!2244147))

(declare-fun m!2244149 () Bool)

(assert (=> b!1814606 m!2244149))

(assert (=> b!1814606 m!2244149))

(declare-fun m!2244151 () Bool)

(assert (=> b!1814606 m!2244151))

(assert (=> b!1814606 m!2244151))

(declare-fun m!2244153 () Bool)

(assert (=> b!1814606 m!2244153))

(declare-fun m!2244155 () Bool)

(assert (=> b!1814606 m!2244155))

(declare-fun m!2244157 () Bool)

(assert (=> b!1814597 m!2244157))

(declare-fun m!2244159 () Bool)

(assert (=> b!1814626 m!2244159))

(declare-fun m!2244161 () Bool)

(assert (=> b!1814611 m!2244161))

(declare-fun m!2244163 () Bool)

(assert (=> b!1814611 m!2244163))

(declare-fun m!2244165 () Bool)

(assert (=> b!1814627 m!2244165))

(declare-fun m!2244167 () Bool)

(assert (=> b!1814627 m!2244167))

(declare-fun m!2244169 () Bool)

(assert (=> b!1814602 m!2244169))

(declare-fun m!2244171 () Bool)

(assert (=> b!1814602 m!2244171))

(declare-fun m!2244173 () Bool)

(assert (=> b!1814602 m!2244173))

(declare-fun m!2244175 () Bool)

(assert (=> b!1814602 m!2244175))

(declare-fun m!2244177 () Bool)

(assert (=> b!1814599 m!2244177))

(declare-fun m!2244179 () Bool)

(assert (=> b!1814585 m!2244179))

(declare-fun m!2244181 () Bool)

(assert (=> b!1814585 m!2244181))

(declare-fun m!2244183 () Bool)

(assert (=> b!1814585 m!2244183))

(declare-fun m!2244185 () Bool)

(assert (=> b!1814585 m!2244185))

(declare-fun m!2244187 () Bool)

(assert (=> b!1814585 m!2244187))

(assert (=> b!1814585 m!2244187))

(declare-fun m!2244189 () Bool)

(assert (=> b!1814585 m!2244189))

(declare-fun m!2244191 () Bool)

(assert (=> b!1814585 m!2244191))

(declare-fun m!2244193 () Bool)

(assert (=> b!1814604 m!2244193))

(declare-fun m!2244195 () Bool)

(assert (=> b!1814609 m!2244195))

(declare-fun m!2244197 () Bool)

(assert (=> b!1814586 m!2244197))

(assert (=> b!1814614 m!2244103))

(assert (=> b!1814614 m!2244103))

(declare-fun m!2244199 () Bool)

(assert (=> b!1814614 m!2244199))

(assert (=> b!1814614 m!2244199))

(declare-fun m!2244201 () Bool)

(assert (=> b!1814614 m!2244201))

(declare-fun m!2244203 () Bool)

(assert (=> b!1814614 m!2244203))

(declare-fun m!2244205 () Bool)

(assert (=> b!1814601 m!2244205))

(declare-fun m!2244207 () Bool)

(assert (=> b!1814601 m!2244207))

(declare-fun m!2244209 () Bool)

(assert (=> b!1814622 m!2244209))

(declare-fun m!2244211 () Bool)

(assert (=> b!1814600 m!2244211))

(declare-fun m!2244213 () Bool)

(assert (=> b!1814620 m!2244213))

(declare-fun m!2244215 () Bool)

(assert (=> b!1814620 m!2244215))

(declare-fun m!2244217 () Bool)

(assert (=> b!1814625 m!2244217))

(declare-fun m!2244219 () Bool)

(assert (=> b!1814610 m!2244219))

(declare-fun m!2244221 () Bool)

(assert (=> b!1814610 m!2244221))

(declare-fun m!2244223 () Bool)

(assert (=> b!1814610 m!2244223))

(declare-fun m!2244225 () Bool)

(assert (=> b!1814610 m!2244225))

(declare-fun m!2244227 () Bool)

(assert (=> b!1814619 m!2244227))

(declare-fun m!2244229 () Bool)

(assert (=> b!1814619 m!2244229))

(declare-fun m!2244231 () Bool)

(assert (=> b!1814619 m!2244231))

(declare-fun m!2244233 () Bool)

(assert (=> b!1814618 m!2244233))

(declare-fun m!2244235 () Bool)

(assert (=> b!1814618 m!2244235))

(declare-fun m!2244237 () Bool)

(assert (=> b!1814618 m!2244237))

(declare-fun m!2244239 () Bool)

(assert (=> b!1814590 m!2244239))

(declare-fun m!2244241 () Bool)

(assert (=> b!1814590 m!2244241))

(declare-fun m!2244243 () Bool)

(assert (=> b!1814616 m!2244243))

(declare-fun m!2244245 () Bool)

(assert (=> b!1814616 m!2244245))

(declare-fun m!2244247 () Bool)

(assert (=> b!1814616 m!2244247))

(assert (=> b!1814616 m!2244243))

(declare-fun m!2244249 () Bool)

(assert (=> b!1814616 m!2244249))

(declare-fun m!2244251 () Bool)

(assert (=> b!1814616 m!2244251))

(check-sat (not b!1814610) (not b_lambda!59855) (not b!1814618) (not b_next!50733) (not b!1814606) b_and!140329 (not b!1814607) (not b!1814619) (not b_next!50727) (not b!1814626) (not b!1814622) (not b_next!50729) (not b!1814597) (not b!1814643) (not b!1814627) (not tb!110953) (not b_lambda!59859) (not b!1814601) (not b_lambda!59857) (not b!1814600) tp_is_empty!8013 (not b_next!50735) (not b!1814624) (not tb!110947) b_and!140327 (not b!1814599) b_and!140335 (not b!1814644) (not b!1814603) (not b_next!50731) (not b!1814620) (not b!1814589) (not b!1814596) (not start!179430) (not b!1814602) (not b!1814588) (not tb!110959) (not b!1814611) (not b!1814615) (not b!1814598) (not b!1814585) (not b_next!50737) (not b!1814614) b_and!140325 (not b!1814593) b_and!140333 (not b!1814609) (not b!1814590) b_and!140331 (not b!1814586) (not b!1814616) (not b!1814625))
(check-sat (not b_next!50729) (not b_next!50733) (not b_next!50735) b_and!140327 b_and!140329 b_and!140335 (not b_next!50731) (not b_next!50737) b_and!140325 (not b_next!50727) b_and!140333 b_and!140331)

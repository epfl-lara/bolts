; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!176298 () Bool)

(assert start!176298)

(declare-fun b!1775307 () Bool)

(declare-fun b_free!49199 () Bool)

(declare-fun b_next!49903 () Bool)

(assert (=> b!1775307 (= b_free!49199 (not b_next!49903))))

(declare-fun tp!503100 () Bool)

(declare-fun b_and!135459 () Bool)

(assert (=> b!1775307 (= tp!503100 b_and!135459)))

(declare-fun b_free!49201 () Bool)

(declare-fun b_next!49905 () Bool)

(assert (=> b!1775307 (= b_free!49201 (not b_next!49905))))

(declare-fun tp!503096 () Bool)

(declare-fun b_and!135461 () Bool)

(assert (=> b!1775307 (= tp!503096 b_and!135461)))

(declare-fun b!1775331 () Bool)

(declare-fun b_free!49203 () Bool)

(declare-fun b_next!49907 () Bool)

(assert (=> b!1775331 (= b_free!49203 (not b_next!49907))))

(declare-fun tp!503101 () Bool)

(declare-fun b_and!135463 () Bool)

(assert (=> b!1775331 (= tp!503101 b_and!135463)))

(declare-fun b_free!49205 () Bool)

(declare-fun b_next!49909 () Bool)

(assert (=> b!1775331 (= b_free!49205 (not b_next!49909))))

(declare-fun tp!503097 () Bool)

(declare-fun b_and!135465 () Bool)

(assert (=> b!1775331 (= tp!503097 b_and!135465)))

(declare-fun b!1775330 () Bool)

(declare-fun b_free!49207 () Bool)

(declare-fun b_next!49911 () Bool)

(assert (=> b!1775330 (= b_free!49207 (not b_next!49911))))

(declare-fun tp!503095 () Bool)

(declare-fun b_and!135467 () Bool)

(assert (=> b!1775330 (= tp!503095 b_and!135467)))

(declare-fun b_free!49209 () Bool)

(declare-fun b_next!49913 () Bool)

(assert (=> b!1775330 (= b_free!49209 (not b_next!49913))))

(declare-fun tp!503106 () Bool)

(declare-fun b_and!135469 () Bool)

(assert (=> b!1775330 (= tp!503106 b_and!135469)))

(declare-fun b!1775348 () Bool)

(declare-fun e!1136115 () Bool)

(assert (=> b!1775348 (= e!1136115 true)))

(declare-fun b!1775347 () Bool)

(declare-fun e!1136114 () Bool)

(assert (=> b!1775347 (= e!1136114 e!1136115)))

(declare-fun b!1775346 () Bool)

(declare-fun e!1136113 () Bool)

(assert (=> b!1775346 (= e!1136113 e!1136114)))

(declare-fun b!1775336 () Bool)

(assert (=> b!1775336 e!1136113))

(assert (= b!1775347 b!1775348))

(assert (= b!1775346 b!1775347))

(assert (= b!1775336 b!1775346))

(declare-datatypes ((List!19619 0))(
  ( (Nil!19549) (Cons!19549 (h!24950 (_ BitVec 16)) (t!165870 List!19619)) )
))
(declare-datatypes ((TokenValue!3589 0))(
  ( (FloatLiteralValue!7178 (text!25568 List!19619)) (TokenValueExt!3588 (__x!12480 Int)) (Broken!17945 (value!109368 List!19619)) (Object!3658) (End!3589) (Def!3589) (Underscore!3589) (Match!3589) (Else!3589) (Error!3589) (Case!3589) (If!3589) (Extends!3589) (Abstract!3589) (Class!3589) (Val!3589) (DelimiterValue!7178 (del!3649 List!19619)) (KeywordValue!3595 (value!109369 List!19619)) (CommentValue!7178 (value!109370 List!19619)) (WhitespaceValue!7178 (value!109371 List!19619)) (IndentationValue!3589 (value!109372 List!19619)) (String!22276) (Int32!3589) (Broken!17946 (value!109373 List!19619)) (Boolean!3590) (Unit!33779) (OperatorValue!3592 (op!3649 List!19619)) (IdentifierValue!7178 (value!109374 List!19619)) (IdentifierValue!7179 (value!109375 List!19619)) (WhitespaceValue!7179 (value!109376 List!19619)) (True!7178) (False!7178) (Broken!17947 (value!109377 List!19619)) (Broken!17948 (value!109378 List!19619)) (True!7179) (RightBrace!3589) (RightBracket!3589) (Colon!3589) (Null!3589) (Comma!3589) (LeftBracket!3589) (False!7179) (LeftBrace!3589) (ImaginaryLiteralValue!3589 (text!25569 List!19619)) (StringLiteralValue!10767 (value!109379 List!19619)) (EOFValue!3589 (value!109380 List!19619)) (IdentValue!3589 (value!109381 List!19619)) (DelimiterValue!7179 (value!109382 List!19619)) (DedentValue!3589 (value!109383 List!19619)) (NewLineValue!3589 (value!109384 List!19619)) (IntegerValue!10767 (value!109385 (_ BitVec 32)) (text!25570 List!19619)) (IntegerValue!10768 (value!109386 Int) (text!25571 List!19619)) (Times!3589) (Or!3589) (Equal!3589) (Minus!3589) (Broken!17949 (value!109387 List!19619)) (And!3589) (Div!3589) (LessEqual!3589) (Mod!3589) (Concat!8416) (Not!3589) (Plus!3589) (SpaceValue!3589 (value!109388 List!19619)) (IntegerValue!10769 (value!109389 Int) (text!25572 List!19619)) (StringLiteralValue!10768 (text!25573 List!19619)) (FloatLiteralValue!7179 (text!25574 List!19619)) (BytesLiteralValue!3589 (value!109390 List!19619)) (CommentValue!7179 (value!109391 List!19619)) (StringLiteralValue!10769 (value!109392 List!19619)) (ErrorTokenValue!3589 (msg!3650 List!19619)) )
))
(declare-datatypes ((C!9828 0))(
  ( (C!9829 (val!5510 Int)) )
))
(declare-datatypes ((List!19620 0))(
  ( (Nil!19550) (Cons!19550 (h!24951 C!9828) (t!165871 List!19620)) )
))
(declare-datatypes ((Regex!4827 0))(
  ( (ElementMatch!4827 (c!289006 C!9828)) (Concat!8417 (regOne!10166 Regex!4827) (regTwo!10166 Regex!4827)) (EmptyExpr!4827) (Star!4827 (reg!5156 Regex!4827)) (EmptyLang!4827) (Union!4827 (regOne!10167 Regex!4827) (regTwo!10167 Regex!4827)) )
))
(declare-datatypes ((String!22277 0))(
  ( (String!22278 (value!109393 String)) )
))
(declare-datatypes ((IArray!13011 0))(
  ( (IArray!13012 (innerList!6563 List!19620)) )
))
(declare-datatypes ((Conc!6503 0))(
  ( (Node!6503 (left!15662 Conc!6503) (right!15992 Conc!6503) (csize!13236 Int) (cheight!6714 Int)) (Leaf!9473 (xs!9379 IArray!13011) (csize!13237 Int)) (Empty!6503) )
))
(declare-datatypes ((BalanceConc!12950 0))(
  ( (BalanceConc!12951 (c!289007 Conc!6503)) )
))
(declare-datatypes ((TokenValueInjection!6838 0))(
  ( (TokenValueInjection!6839 (toValue!5026 Int) (toChars!4885 Int)) )
))
(declare-datatypes ((Rule!6798 0))(
  ( (Rule!6799 (regex!3499 Regex!4827) (tag!3885 String!22277) (isSeparator!3499 Bool) (transformation!3499 TokenValueInjection!6838)) )
))
(declare-datatypes ((Token!6564 0))(
  ( (Token!6565 (value!109394 TokenValue!3589) (rule!5555 Rule!6798) (size!15532 Int) (originalCharacters!4313 List!19620)) )
))
(declare-datatypes ((tuple2!19150 0))(
  ( (tuple2!19151 (_1!10977 Token!6564) (_2!10977 List!19620)) )
))
(declare-fun lt!688321 () tuple2!19150)

(declare-fun lambda!70532 () Int)

(declare-fun order!12539 () Int)

(declare-fun order!12541 () Int)

(declare-fun dynLambda!9540 (Int Int) Int)

(declare-fun dynLambda!9541 (Int Int) Int)

(assert (=> b!1775348 (< (dynLambda!9540 order!12539 (toValue!5026 (transformation!3499 (rule!5555 (_1!10977 lt!688321))))) (dynLambda!9541 order!12541 lambda!70532))))

(declare-fun order!12543 () Int)

(declare-fun dynLambda!9542 (Int Int) Int)

(assert (=> b!1775348 (< (dynLambda!9542 order!12543 (toChars!4885 (transformation!3499 (rule!5555 (_1!10977 lt!688321))))) (dynLambda!9541 order!12541 lambda!70532))))

(declare-fun b!1775305 () Bool)

(declare-fun res!799766 () Bool)

(declare-fun e!1136098 () Bool)

(assert (=> b!1775305 (=> res!799766 e!1136098)))

(declare-fun lt!688323 () BalanceConc!12950)

(declare-fun dynLambda!9543 (Int TokenValue!3589) BalanceConc!12950)

(assert (=> b!1775305 (= res!799766 (not (= lt!688323 (dynLambda!9543 (toChars!4885 (transformation!3499 (rule!5555 (_1!10977 lt!688321)))) (value!109394 (_1!10977 lt!688321))))))))

(declare-fun b!1775306 () Bool)

(declare-fun res!799773 () Bool)

(declare-fun e!1136105 () Bool)

(assert (=> b!1775306 (=> res!799773 e!1136105)))

(declare-fun lt!688319 () List!19620)

(declare-fun matchR!2300 (Regex!4827 List!19620) Bool)

(assert (=> b!1775306 (= res!799773 (not (matchR!2300 (regex!3499 (rule!5555 (_1!10977 lt!688321))) lt!688319)))))

(declare-fun e!1136100 () Bool)

(assert (=> b!1775307 (= e!1136100 (and tp!503100 tp!503096))))

(declare-fun b!1775308 () Bool)

(declare-fun e!1136088 () Bool)

(declare-fun e!1136104 () Bool)

(assert (=> b!1775308 (= e!1136088 e!1136104)))

(declare-fun res!799779 () Bool)

(assert (=> b!1775308 (=> res!799779 e!1136104)))

(declare-fun lt!688314 () Regex!4827)

(declare-fun lt!688330 () List!19620)

(declare-fun prefixMatch!710 (Regex!4827 List!19620) Bool)

(assert (=> b!1775308 (= res!799779 (prefixMatch!710 lt!688314 lt!688330))))

(declare-fun lt!688317 () List!19620)

(declare-fun suffix!1421 () List!19620)

(declare-fun ++!5323 (List!19620 List!19620) List!19620)

(declare-fun head!4136 (List!19620) C!9828)

(assert (=> b!1775308 (= lt!688330 (++!5323 lt!688317 (Cons!19550 (head!4136 suffix!1421) Nil!19550)))))

(declare-datatypes ((LexerInterface!3128 0))(
  ( (LexerInterfaceExt!3125 (__x!12481 Int)) (Lexer!3126) )
))
(declare-fun thiss!24550 () LexerInterface!3128)

(declare-datatypes ((List!19621 0))(
  ( (Nil!19551) (Cons!19551 (h!24952 Rule!6798) (t!165872 List!19621)) )
))
(declare-fun rules!3447 () List!19621)

(declare-fun rulesRegex!855 (LexerInterface!3128 List!19621) Regex!4827)

(assert (=> b!1775308 (= lt!688314 (rulesRegex!855 thiss!24550 rules!3447))))

(declare-fun b!1775309 () Bool)

(declare-fun e!1136097 () Bool)

(assert (=> b!1775309 (= e!1136098 e!1136097)))

(declare-fun res!799769 () Bool)

(assert (=> b!1775309 (=> res!799769 e!1136097)))

(declare-fun lt!688335 () Int)

(declare-fun lt!688329 () TokenValue!3589)

(declare-datatypes ((Option!4020 0))(
  ( (None!4019) (Some!4019 (v!25500 tuple2!19150)) )
))
(declare-fun lt!688315 () Option!4020)

(assert (=> b!1775309 (= res!799769 (not (= lt!688315 (Some!4019 (tuple2!19151 (Token!6565 lt!688329 (rule!5555 (_1!10977 lt!688321)) lt!688335 lt!688319) (_2!10977 lt!688321))))))))

(declare-fun size!15533 (BalanceConc!12950) Int)

(assert (=> b!1775309 (= lt!688335 (size!15533 lt!688323))))

(declare-fun apply!5299 (TokenValueInjection!6838 BalanceConc!12950) TokenValue!3589)

(assert (=> b!1775309 (= lt!688329 (apply!5299 (transformation!3499 (rule!5555 (_1!10977 lt!688321))) lt!688323))))

(declare-datatypes ((Unit!33780 0))(
  ( (Unit!33781) )
))
(declare-fun lt!688349 () Unit!33780)

(declare-fun lemmaCharactersSize!557 (Token!6564) Unit!33780)

(assert (=> b!1775309 (= lt!688349 (lemmaCharactersSize!557 (_1!10977 lt!688321)))))

(declare-fun lt!688327 () Unit!33780)

(declare-fun lemmaEqSameImage!410 (TokenValueInjection!6838 BalanceConc!12950 BalanceConc!12950) Unit!33780)

(declare-fun seqFromList!2468 (List!19620) BalanceConc!12950)

(assert (=> b!1775309 (= lt!688327 (lemmaEqSameImage!410 (transformation!3499 (rule!5555 (_1!10977 lt!688321))) lt!688323 (seqFromList!2468 (originalCharacters!4313 (_1!10977 lt!688321)))))))

(declare-fun lt!688325 () List!19620)

(declare-fun b!1775310 () Bool)

(declare-fun lt!688324 () Token!6564)

(declare-fun lt!688312 () Option!4020)

(declare-fun e!1136086 () Bool)

(assert (=> b!1775310 (= e!1136086 (= lt!688312 (Some!4019 (tuple2!19151 lt!688324 lt!688325))))))

(declare-fun lt!688333 () List!19620)

(declare-fun isPrefix!1739 (List!19620 List!19620) Bool)

(assert (=> b!1775310 (isPrefix!1739 lt!688333 lt!688333)))

(declare-fun lt!688348 () Unit!33780)

(declare-fun lemmaIsPrefixRefl!1148 (List!19620 List!19620) Unit!33780)

(assert (=> b!1775310 (= lt!688348 (lemmaIsPrefixRefl!1148 lt!688333 lt!688333))))

(declare-fun lt!688338 () Unit!33780)

(declare-fun lt!688331 () BalanceConc!12950)

(declare-fun lemmaSemiInverse!637 (TokenValueInjection!6838 BalanceConc!12950) Unit!33780)

(assert (=> b!1775310 (= lt!688338 (lemmaSemiInverse!637 (transformation!3499 (rule!5555 (_1!10977 lt!688321))) lt!688331))))

(declare-fun ruleValid!997 (LexerInterface!3128 Rule!6798) Bool)

(assert (=> b!1775310 (ruleValid!997 thiss!24550 (rule!5555 (_1!10977 lt!688321)))))

(declare-fun lt!688328 () Unit!33780)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!520 (LexerInterface!3128 Rule!6798 List!19621) Unit!33780)

(assert (=> b!1775310 (= lt!688328 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!520 thiss!24550 (rule!5555 (_1!10977 lt!688321)) rules!3447))))

(declare-fun b!1775311 () Bool)

(declare-fun e!1136102 () Bool)

(assert (=> b!1775311 (= e!1136102 e!1136086)))

(declare-fun res!799780 () Bool)

(assert (=> b!1775311 (=> res!799780 e!1136086)))

(declare-fun lt!688316 () Bool)

(declare-fun lt!688339 () Int)

(assert (=> b!1775311 (= res!799780 (or lt!688316 (>= lt!688335 lt!688339)))))

(declare-fun lt!688332 () Unit!33780)

(declare-fun e!1136094 () Unit!33780)

(assert (=> b!1775311 (= lt!688332 e!1136094)))

(declare-fun c!289005 () Bool)

(assert (=> b!1775311 (= c!289005 lt!688316)))

(assert (=> b!1775311 (= lt!688316 (> lt!688335 lt!688339))))

(declare-fun lt!688311 () BalanceConc!12950)

(assert (=> b!1775311 (= lt!688339 (size!15533 lt!688311))))

(assert (=> b!1775311 (matchR!2300 lt!688314 lt!688317)))

(declare-fun lt!688322 () Unit!33780)

(declare-fun rule!422 () Rule!6798)

(declare-fun token!523 () Token!6564)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!206 (LexerInterface!3128 List!19621 List!19620 Token!6564 Rule!6798 List!19620) Unit!33780)

(assert (=> b!1775311 (= lt!688322 (lemmaMaxPrefixThenMatchesRulesRegex!206 thiss!24550 rules!3447 lt!688317 token!523 rule!422 Nil!19550))))

(declare-fun b!1775312 () Bool)

(declare-fun res!799786 () Bool)

(declare-fun e!1136090 () Bool)

(assert (=> b!1775312 (=> (not res!799786) (not e!1136090))))

(declare-fun contains!3531 (List!19621 Rule!6798) Bool)

(assert (=> b!1775312 (= res!799786 (contains!3531 rules!3447 rule!422))))

(declare-fun res!799767 () Bool)

(assert (=> start!176298 (=> (not res!799767) (not e!1136090))))

(get-info :version)

(assert (=> start!176298 (= res!799767 ((_ is Lexer!3126) thiss!24550))))

(assert (=> start!176298 e!1136090))

(declare-fun e!1136092 () Bool)

(assert (=> start!176298 e!1136092))

(declare-fun e!1136089 () Bool)

(assert (=> start!176298 e!1136089))

(assert (=> start!176298 true))

(declare-fun e!1136087 () Bool)

(declare-fun inv!25424 (Token!6564) Bool)

(assert (=> start!176298 (and (inv!25424 token!523) e!1136087)))

(declare-fun e!1136096 () Bool)

(assert (=> start!176298 e!1136096))

(declare-fun tp!503098 () Bool)

(declare-fun b!1775313 () Bool)

(declare-fun e!1136080 () Bool)

(declare-fun inv!25419 (String!22277) Bool)

(declare-fun inv!25425 (TokenValueInjection!6838) Bool)

(assert (=> b!1775313 (= e!1136080 (and tp!503098 (inv!25419 (tag!3885 (h!24952 rules!3447))) (inv!25425 (transformation!3499 (h!24952 rules!3447))) e!1136100))))

(declare-fun b!1775314 () Bool)

(declare-fun res!799784 () Bool)

(assert (=> b!1775314 (=> (not res!799784) (not e!1136090))))

(declare-fun rulesInvariant!2797 (LexerInterface!3128 List!19621) Bool)

(assert (=> b!1775314 (= res!799784 (rulesInvariant!2797 thiss!24550 rules!3447))))

(declare-fun b!1775315 () Bool)

(declare-fun e!1136091 () Bool)

(declare-fun lt!688320 () Rule!6798)

(assert (=> b!1775315 (= e!1136091 (= (rule!5555 (_1!10977 lt!688321)) lt!688320))))

(declare-fun b!1775316 () Bool)

(declare-fun Unit!33782 () Unit!33780)

(assert (=> b!1775316 (= e!1136094 Unit!33782)))

(declare-fun b!1775317 () Bool)

(declare-fun res!799782 () Bool)

(assert (=> b!1775317 (=> (not res!799782) (not e!1136090))))

(declare-fun isEmpty!12350 (List!19621) Bool)

(assert (=> b!1775317 (= res!799782 (not (isEmpty!12350 rules!3447)))))

(declare-fun b!1775318 () Bool)

(declare-fun tp!503102 () Bool)

(declare-fun e!1136083 () Bool)

(declare-fun inv!21 (TokenValue!3589) Bool)

(assert (=> b!1775318 (= e!1136087 (and (inv!21 (value!109394 token!523)) e!1136083 tp!503102))))

(declare-fun b!1775319 () Bool)

(declare-fun Unit!33783 () Unit!33780)

(assert (=> b!1775319 (= e!1136094 Unit!33783)))

(declare-fun lt!688350 () Unit!33780)

(assert (=> b!1775319 (= lt!688350 (lemmaMaxPrefixThenMatchesRulesRegex!206 thiss!24550 rules!3447 lt!688333 (_1!10977 lt!688321) (rule!5555 (_1!10977 lt!688321)) (_2!10977 lt!688321)))))

(assert (=> b!1775319 (matchR!2300 lt!688314 lt!688319)))

(declare-fun lt!688340 () List!19620)

(declare-fun getSuffix!906 (List!19620 List!19620) List!19620)

(assert (=> b!1775319 (= lt!688340 (getSuffix!906 lt!688333 lt!688317))))

(declare-fun lt!688336 () Unit!33780)

(declare-fun lemmaSamePrefixThenSameSuffix!850 (List!19620 List!19620 List!19620 List!19620 List!19620) Unit!33780)

(assert (=> b!1775319 (= lt!688336 (lemmaSamePrefixThenSameSuffix!850 lt!688317 suffix!1421 lt!688317 lt!688340 lt!688333))))

(assert (=> b!1775319 (= suffix!1421 lt!688340)))

(declare-fun lt!688341 () Unit!33780)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!275 (List!19620 List!19620) Unit!33780)

(assert (=> b!1775319 (= lt!688341 (lemmaAddHeadSuffixToPrefixStillPrefix!275 lt!688317 lt!688333))))

(assert (=> b!1775319 (isPrefix!1739 (++!5323 lt!688317 (Cons!19550 (head!4136 lt!688340) Nil!19550)) lt!688333)))

(declare-fun lt!688343 () Unit!33780)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!147 (List!19620 List!19620 List!19620) Unit!33780)

(assert (=> b!1775319 (= lt!688343 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!147 lt!688319 lt!688330 lt!688333))))

(assert (=> b!1775319 (isPrefix!1739 lt!688330 lt!688319)))

(declare-fun lt!688342 () Unit!33780)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!138 (Regex!4827 List!19620 List!19620) Unit!33780)

(assert (=> b!1775319 (= lt!688342 (lemmaNotPrefixMatchThenCannotMatchLonger!138 lt!688314 lt!688330 lt!688319))))

(assert (=> b!1775319 false))

(declare-fun b!1775320 () Bool)

(declare-fun e!1136093 () Bool)

(assert (=> b!1775320 (= e!1136093 (not e!1136088))))

(declare-fun res!799781 () Bool)

(assert (=> b!1775320 (=> res!799781 e!1136088)))

(assert (=> b!1775320 (= res!799781 (not (matchR!2300 (regex!3499 rule!422) lt!688317)))))

(assert (=> b!1775320 (ruleValid!997 thiss!24550 rule!422)))

(declare-fun lt!688310 () Unit!33780)

(assert (=> b!1775320 (= lt!688310 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!520 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1775321 () Bool)

(declare-fun res!799771 () Bool)

(assert (=> b!1775321 (=> (not res!799771) (not e!1136093))))

(assert (=> b!1775321 (= res!799771 (= (rule!5555 token!523) rule!422))))

(declare-fun b!1775322 () Bool)

(declare-fun tp!503105 () Bool)

(declare-fun e!1136084 () Bool)

(assert (=> b!1775322 (= e!1136083 (and tp!503105 (inv!25419 (tag!3885 (rule!5555 token!523))) (inv!25425 (transformation!3499 (rule!5555 token!523))) e!1136084))))

(declare-fun b!1775323 () Bool)

(assert (=> b!1775323 (= e!1136097 e!1136102)))

(declare-fun res!799770 () Bool)

(assert (=> b!1775323 (=> res!799770 e!1136102)))

(assert (=> b!1775323 (= res!799770 (or (not (= lt!688325 (_2!10977 lt!688321))) (not (= lt!688312 (Some!4019 (tuple2!19151 (_1!10977 lt!688321) lt!688325))))))))

(assert (=> b!1775323 (= (_2!10977 lt!688321) lt!688325)))

(declare-fun lt!688346 () Unit!33780)

(assert (=> b!1775323 (= lt!688346 (lemmaSamePrefixThenSameSuffix!850 lt!688319 (_2!10977 lt!688321) lt!688319 lt!688325 lt!688333))))

(assert (=> b!1775323 (= lt!688325 (getSuffix!906 lt!688333 lt!688319))))

(assert (=> b!1775323 (= lt!688312 (Some!4019 (tuple2!19151 lt!688324 (_2!10977 lt!688321))))))

(declare-fun maxPrefixOneRule!1051 (LexerInterface!3128 Rule!6798 List!19620) Option!4020)

(assert (=> b!1775323 (= lt!688312 (maxPrefixOneRule!1051 thiss!24550 (rule!5555 (_1!10977 lt!688321)) lt!688333))))

(declare-fun size!15534 (List!19620) Int)

(assert (=> b!1775323 (= lt!688324 (Token!6565 (apply!5299 (transformation!3499 (rule!5555 (_1!10977 lt!688321))) lt!688331) (rule!5555 (_1!10977 lt!688321)) (size!15534 lt!688319) lt!688319))))

(assert (=> b!1775323 (= lt!688331 (seqFromList!2468 lt!688319))))

(declare-fun lt!688308 () Unit!33780)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!429 (LexerInterface!3128 List!19621 List!19620 List!19620 List!19620 Rule!6798) Unit!33780)

(assert (=> b!1775323 (= lt!688308 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!429 thiss!24550 rules!3447 lt!688319 lt!688333 (_2!10977 lt!688321) (rule!5555 (_1!10977 lt!688321))))))

(declare-fun b!1775324 () Bool)

(declare-fun res!799765 () Bool)

(assert (=> b!1775324 (=> (not res!799765) (not e!1136093))))

(declare-fun lt!688326 () tuple2!19150)

(declare-fun isEmpty!12351 (List!19620) Bool)

(assert (=> b!1775324 (= res!799765 (isEmpty!12351 (_2!10977 lt!688326)))))

(declare-fun b!1775325 () Bool)

(declare-fun e!1136099 () Bool)

(assert (=> b!1775325 (= e!1136099 e!1136093)))

(declare-fun res!799777 () Bool)

(assert (=> b!1775325 (=> (not res!799777) (not e!1136093))))

(assert (=> b!1775325 (= res!799777 (= (_1!10977 lt!688326) token!523))))

(declare-fun lt!688337 () Option!4020)

(declare-fun get!5987 (Option!4020) tuple2!19150)

(assert (=> b!1775325 (= lt!688326 (get!5987 lt!688337))))

(declare-fun b!1775326 () Bool)

(declare-fun tp_is_empty!7897 () Bool)

(declare-fun tp!503099 () Bool)

(assert (=> b!1775326 (= e!1136092 (and tp_is_empty!7897 tp!503099))))

(declare-fun b!1775327 () Bool)

(declare-fun res!799785 () Bool)

(assert (=> b!1775327 (=> res!799785 e!1136088)))

(assert (=> b!1775327 (= res!799785 (isEmpty!12351 suffix!1421))))

(declare-fun b!1775328 () Bool)

(declare-fun e!1136082 () Bool)

(declare-fun tp!503104 () Bool)

(assert (=> b!1775328 (= e!1136089 (and tp!503104 (inv!25419 (tag!3885 rule!422)) (inv!25425 (transformation!3499 rule!422)) e!1136082))))

(declare-fun b!1775329 () Bool)

(declare-fun e!1136103 () Bool)

(assert (=> b!1775329 (= e!1136103 e!1136091)))

(declare-fun res!799772 () Bool)

(assert (=> b!1775329 (=> (not res!799772) (not e!1136091))))

(declare-fun list!7945 (BalanceConc!12950) List!19620)

(declare-fun charsOf!2148 (Token!6564) BalanceConc!12950)

(assert (=> b!1775329 (= res!799772 (matchR!2300 (regex!3499 lt!688320) (list!7945 (charsOf!2148 (_1!10977 lt!688321)))))))

(declare-datatypes ((Option!4021 0))(
  ( (None!4020) (Some!4020 (v!25501 Rule!6798)) )
))
(declare-fun lt!688313 () Option!4021)

(declare-fun get!5988 (Option!4021) Rule!6798)

(assert (=> b!1775329 (= lt!688320 (get!5988 lt!688313))))

(assert (=> b!1775330 (= e!1136084 (and tp!503095 tp!503106))))

(assert (=> b!1775331 (= e!1136082 (and tp!503101 tp!503097))))

(declare-fun b!1775332 () Bool)

(declare-fun res!799768 () Bool)

(assert (=> b!1775332 (=> res!799768 e!1136086)))

(assert (=> b!1775332 (= res!799768 (not (contains!3531 rules!3447 (rule!5555 (_1!10977 lt!688321)))))))

(declare-fun b!1775333 () Bool)

(declare-fun e!1136085 () Bool)

(assert (=> b!1775333 (= e!1136085 e!1136098)))

(declare-fun res!799774 () Bool)

(assert (=> b!1775333 (=> res!799774 e!1136098)))

(declare-fun dynLambda!9544 (Int BalanceConc!12950) TokenValue!3589)

(assert (=> b!1775333 (= res!799774 (not (= (list!7945 (dynLambda!9543 (toChars!4885 (transformation!3499 (rule!5555 (_1!10977 lt!688321)))) (dynLambda!9544 (toValue!5026 (transformation!3499 (rule!5555 (_1!10977 lt!688321)))) lt!688323))) lt!688319)))))

(declare-fun lt!688334 () Unit!33780)

(assert (=> b!1775333 (= lt!688334 (lemmaSemiInverse!637 (transformation!3499 (rule!5555 (_1!10977 lt!688321))) lt!688323))))

(declare-fun b!1775334 () Bool)

(assert (=> b!1775334 (= e!1136090 e!1136099)))

(declare-fun res!799783 () Bool)

(assert (=> b!1775334 (=> (not res!799783) (not e!1136099))))

(declare-fun isDefined!3363 (Option!4020) Bool)

(assert (=> b!1775334 (= res!799783 (isDefined!3363 lt!688337))))

(declare-fun maxPrefix!1682 (LexerInterface!3128 List!19621 List!19620) Option!4020)

(assert (=> b!1775334 (= lt!688337 (maxPrefix!1682 thiss!24550 rules!3447 lt!688317))))

(assert (=> b!1775334 (= lt!688317 (list!7945 lt!688311))))

(assert (=> b!1775334 (= lt!688311 (charsOf!2148 token!523))))

(declare-fun b!1775335 () Bool)

(declare-fun tp!503103 () Bool)

(assert (=> b!1775335 (= e!1136096 (and e!1136080 tp!503103))))

(assert (=> b!1775336 (= e!1136105 e!1136085)))

(declare-fun res!799775 () Bool)

(assert (=> b!1775336 (=> res!799775 e!1136085)))

(declare-fun Forall!866 (Int) Bool)

(assert (=> b!1775336 (= res!799775 (not (Forall!866 lambda!70532)))))

(declare-fun lt!688347 () Unit!33780)

(declare-fun lemmaInv!698 (TokenValueInjection!6838) Unit!33780)

(assert (=> b!1775336 (= lt!688347 (lemmaInv!698 (transformation!3499 (rule!5555 (_1!10977 lt!688321)))))))

(declare-fun b!1775337 () Bool)

(assert (=> b!1775337 (= e!1136104 e!1136105)))

(declare-fun res!799776 () Bool)

(assert (=> b!1775337 (=> res!799776 e!1136105)))

(assert (=> b!1775337 (= res!799776 (not (isPrefix!1739 lt!688319 lt!688333)))))

(assert (=> b!1775337 (isPrefix!1739 lt!688319 (++!5323 lt!688319 (_2!10977 lt!688321)))))

(declare-fun lt!688344 () Unit!33780)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1248 (List!19620 List!19620) Unit!33780)

(assert (=> b!1775337 (= lt!688344 (lemmaConcatTwoListThenFirstIsPrefix!1248 lt!688319 (_2!10977 lt!688321)))))

(assert (=> b!1775337 (= lt!688319 (list!7945 lt!688323))))

(assert (=> b!1775337 (= lt!688323 (charsOf!2148 (_1!10977 lt!688321)))))

(assert (=> b!1775337 e!1136103))

(declare-fun res!799778 () Bool)

(assert (=> b!1775337 (=> (not res!799778) (not e!1136103))))

(declare-fun isDefined!3364 (Option!4021) Bool)

(assert (=> b!1775337 (= res!799778 (isDefined!3364 lt!688313))))

(declare-fun getRuleFromTag!547 (LexerInterface!3128 List!19621 String!22277) Option!4021)

(assert (=> b!1775337 (= lt!688313 (getRuleFromTag!547 thiss!24550 rules!3447 (tag!3885 (rule!5555 (_1!10977 lt!688321)))))))

(declare-fun lt!688309 () Unit!33780)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!547 (LexerInterface!3128 List!19621 List!19620 Token!6564) Unit!33780)

(assert (=> b!1775337 (= lt!688309 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!547 thiss!24550 rules!3447 lt!688333 (_1!10977 lt!688321)))))

(assert (=> b!1775337 (= lt!688321 (get!5987 lt!688315))))

(declare-fun lt!688345 () Unit!33780)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!650 (LexerInterface!3128 List!19621 List!19620 List!19620) Unit!33780)

(assert (=> b!1775337 (= lt!688345 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!650 thiss!24550 rules!3447 lt!688317 suffix!1421))))

(assert (=> b!1775337 (= lt!688315 (maxPrefix!1682 thiss!24550 rules!3447 lt!688333))))

(assert (=> b!1775337 (isPrefix!1739 lt!688317 lt!688333)))

(declare-fun lt!688318 () Unit!33780)

(assert (=> b!1775337 (= lt!688318 (lemmaConcatTwoListThenFirstIsPrefix!1248 lt!688317 suffix!1421))))

(assert (=> b!1775337 (= lt!688333 (++!5323 lt!688317 suffix!1421))))

(assert (= (and start!176298 res!799767) b!1775317))

(assert (= (and b!1775317 res!799782) b!1775314))

(assert (= (and b!1775314 res!799784) b!1775312))

(assert (= (and b!1775312 res!799786) b!1775334))

(assert (= (and b!1775334 res!799783) b!1775325))

(assert (= (and b!1775325 res!799777) b!1775324))

(assert (= (and b!1775324 res!799765) b!1775321))

(assert (= (and b!1775321 res!799771) b!1775320))

(assert (= (and b!1775320 (not res!799781)) b!1775327))

(assert (= (and b!1775327 (not res!799785)) b!1775308))

(assert (= (and b!1775308 (not res!799779)) b!1775337))

(assert (= (and b!1775337 res!799778) b!1775329))

(assert (= (and b!1775329 res!799772) b!1775315))

(assert (= (and b!1775337 (not res!799776)) b!1775306))

(assert (= (and b!1775306 (not res!799773)) b!1775336))

(assert (= (and b!1775336 (not res!799775)) b!1775333))

(assert (= (and b!1775333 (not res!799774)) b!1775305))

(assert (= (and b!1775305 (not res!799766)) b!1775309))

(assert (= (and b!1775309 (not res!799769)) b!1775323))

(assert (= (and b!1775323 (not res!799770)) b!1775311))

(assert (= (and b!1775311 c!289005) b!1775319))

(assert (= (and b!1775311 (not c!289005)) b!1775316))

(assert (= (and b!1775311 (not res!799780)) b!1775332))

(assert (= (and b!1775332 (not res!799768)) b!1775310))

(assert (= (and start!176298 ((_ is Cons!19550) suffix!1421)) b!1775326))

(assert (= b!1775328 b!1775331))

(assert (= start!176298 b!1775328))

(assert (= b!1775322 b!1775330))

(assert (= b!1775318 b!1775322))

(assert (= start!176298 b!1775318))

(assert (= b!1775313 b!1775307))

(assert (= b!1775335 b!1775313))

(assert (= (and start!176298 ((_ is Cons!19551) rules!3447)) b!1775335))

(declare-fun b_lambda!57935 () Bool)

(assert (=> (not b_lambda!57935) (not b!1775305)))

(declare-fun t!165853 () Bool)

(declare-fun tb!107643 () Bool)

(assert (=> (and b!1775307 (= (toChars!4885 (transformation!3499 (h!24952 rules!3447))) (toChars!4885 (transformation!3499 (rule!5555 (_1!10977 lt!688321))))) t!165853) tb!107643))

(declare-fun b!1775353 () Bool)

(declare-fun e!1136118 () Bool)

(declare-fun tp!503109 () Bool)

(declare-fun inv!25426 (Conc!6503) Bool)

(assert (=> b!1775353 (= e!1136118 (and (inv!25426 (c!289007 (dynLambda!9543 (toChars!4885 (transformation!3499 (rule!5555 (_1!10977 lt!688321)))) (value!109394 (_1!10977 lt!688321))))) tp!503109))))

(declare-fun result!129486 () Bool)

(declare-fun inv!25427 (BalanceConc!12950) Bool)

(assert (=> tb!107643 (= result!129486 (and (inv!25427 (dynLambda!9543 (toChars!4885 (transformation!3499 (rule!5555 (_1!10977 lt!688321)))) (value!109394 (_1!10977 lt!688321)))) e!1136118))))

(assert (= tb!107643 b!1775353))

(declare-fun m!2195609 () Bool)

(assert (=> b!1775353 m!2195609))

(declare-fun m!2195611 () Bool)

(assert (=> tb!107643 m!2195611))

(assert (=> b!1775305 t!165853))

(declare-fun b_and!135471 () Bool)

(assert (= b_and!135461 (and (=> t!165853 result!129486) b_and!135471)))

(declare-fun tb!107645 () Bool)

(declare-fun t!165855 () Bool)

(assert (=> (and b!1775331 (= (toChars!4885 (transformation!3499 rule!422)) (toChars!4885 (transformation!3499 (rule!5555 (_1!10977 lt!688321))))) t!165855) tb!107645))

(declare-fun result!129490 () Bool)

(assert (= result!129490 result!129486))

(assert (=> b!1775305 t!165855))

(declare-fun b_and!135473 () Bool)

(assert (= b_and!135465 (and (=> t!165855 result!129490) b_and!135473)))

(declare-fun tb!107647 () Bool)

(declare-fun t!165857 () Bool)

(assert (=> (and b!1775330 (= (toChars!4885 (transformation!3499 (rule!5555 token!523))) (toChars!4885 (transformation!3499 (rule!5555 (_1!10977 lt!688321))))) t!165857) tb!107647))

(declare-fun result!129492 () Bool)

(assert (= result!129492 result!129486))

(assert (=> b!1775305 t!165857))

(declare-fun b_and!135475 () Bool)

(assert (= b_and!135469 (and (=> t!165857 result!129492) b_and!135475)))

(declare-fun b_lambda!57937 () Bool)

(assert (=> (not b_lambda!57937) (not b!1775333)))

(declare-fun t!165859 () Bool)

(declare-fun tb!107649 () Bool)

(assert (=> (and b!1775307 (= (toChars!4885 (transformation!3499 (h!24952 rules!3447))) (toChars!4885 (transformation!3499 (rule!5555 (_1!10977 lt!688321))))) t!165859) tb!107649))

(declare-fun tp!503110 () Bool)

(declare-fun b!1775354 () Bool)

(declare-fun e!1136119 () Bool)

(assert (=> b!1775354 (= e!1136119 (and (inv!25426 (c!289007 (dynLambda!9543 (toChars!4885 (transformation!3499 (rule!5555 (_1!10977 lt!688321)))) (dynLambda!9544 (toValue!5026 (transformation!3499 (rule!5555 (_1!10977 lt!688321)))) lt!688323)))) tp!503110))))

(declare-fun result!129494 () Bool)

(assert (=> tb!107649 (= result!129494 (and (inv!25427 (dynLambda!9543 (toChars!4885 (transformation!3499 (rule!5555 (_1!10977 lt!688321)))) (dynLambda!9544 (toValue!5026 (transformation!3499 (rule!5555 (_1!10977 lt!688321)))) lt!688323))) e!1136119))))

(assert (= tb!107649 b!1775354))

(declare-fun m!2195613 () Bool)

(assert (=> b!1775354 m!2195613))

(declare-fun m!2195615 () Bool)

(assert (=> tb!107649 m!2195615))

(assert (=> b!1775333 t!165859))

(declare-fun b_and!135477 () Bool)

(assert (= b_and!135471 (and (=> t!165859 result!129494) b_and!135477)))

(declare-fun t!165861 () Bool)

(declare-fun tb!107651 () Bool)

(assert (=> (and b!1775331 (= (toChars!4885 (transformation!3499 rule!422)) (toChars!4885 (transformation!3499 (rule!5555 (_1!10977 lt!688321))))) t!165861) tb!107651))

(declare-fun result!129496 () Bool)

(assert (= result!129496 result!129494))

(assert (=> b!1775333 t!165861))

(declare-fun b_and!135479 () Bool)

(assert (= b_and!135473 (and (=> t!165861 result!129496) b_and!135479)))

(declare-fun t!165863 () Bool)

(declare-fun tb!107653 () Bool)

(assert (=> (and b!1775330 (= (toChars!4885 (transformation!3499 (rule!5555 token!523))) (toChars!4885 (transformation!3499 (rule!5555 (_1!10977 lt!688321))))) t!165863) tb!107653))

(declare-fun result!129498 () Bool)

(assert (= result!129498 result!129494))

(assert (=> b!1775333 t!165863))

(declare-fun b_and!135481 () Bool)

(assert (= b_and!135475 (and (=> t!165863 result!129498) b_and!135481)))

(declare-fun b_lambda!57939 () Bool)

(assert (=> (not b_lambda!57939) (not b!1775333)))

(declare-fun t!165865 () Bool)

(declare-fun tb!107655 () Bool)

(assert (=> (and b!1775307 (= (toValue!5026 (transformation!3499 (h!24952 rules!3447))) (toValue!5026 (transformation!3499 (rule!5555 (_1!10977 lt!688321))))) t!165865) tb!107655))

(declare-fun result!129500 () Bool)

(assert (=> tb!107655 (= result!129500 (inv!21 (dynLambda!9544 (toValue!5026 (transformation!3499 (rule!5555 (_1!10977 lt!688321)))) lt!688323)))))

(declare-fun m!2195617 () Bool)

(assert (=> tb!107655 m!2195617))

(assert (=> b!1775333 t!165865))

(declare-fun b_and!135483 () Bool)

(assert (= b_and!135459 (and (=> t!165865 result!129500) b_and!135483)))

(declare-fun t!165867 () Bool)

(declare-fun tb!107657 () Bool)

(assert (=> (and b!1775331 (= (toValue!5026 (transformation!3499 rule!422)) (toValue!5026 (transformation!3499 (rule!5555 (_1!10977 lt!688321))))) t!165867) tb!107657))

(declare-fun result!129504 () Bool)

(assert (= result!129504 result!129500))

(assert (=> b!1775333 t!165867))

(declare-fun b_and!135485 () Bool)

(assert (= b_and!135463 (and (=> t!165867 result!129504) b_and!135485)))

(declare-fun t!165869 () Bool)

(declare-fun tb!107659 () Bool)

(assert (=> (and b!1775330 (= (toValue!5026 (transformation!3499 (rule!5555 token!523))) (toValue!5026 (transformation!3499 (rule!5555 (_1!10977 lt!688321))))) t!165869) tb!107659))

(declare-fun result!129506 () Bool)

(assert (= result!129506 result!129500))

(assert (=> b!1775333 t!165869))

(declare-fun b_and!135487 () Bool)

(assert (= b_and!135467 (and (=> t!165869 result!129506) b_and!135487)))

(declare-fun m!2195619 () Bool)

(assert (=> b!1775332 m!2195619))

(declare-fun m!2195621 () Bool)

(assert (=> b!1775337 m!2195621))

(declare-fun m!2195623 () Bool)

(assert (=> b!1775337 m!2195623))

(declare-fun m!2195625 () Bool)

(assert (=> b!1775337 m!2195625))

(declare-fun m!2195627 () Bool)

(assert (=> b!1775337 m!2195627))

(declare-fun m!2195629 () Bool)

(assert (=> b!1775337 m!2195629))

(declare-fun m!2195631 () Bool)

(assert (=> b!1775337 m!2195631))

(declare-fun m!2195633 () Bool)

(assert (=> b!1775337 m!2195633))

(declare-fun m!2195635 () Bool)

(assert (=> b!1775337 m!2195635))

(declare-fun m!2195637 () Bool)

(assert (=> b!1775337 m!2195637))

(declare-fun m!2195639 () Bool)

(assert (=> b!1775337 m!2195639))

(declare-fun m!2195641 () Bool)

(assert (=> b!1775337 m!2195641))

(declare-fun m!2195643 () Bool)

(assert (=> b!1775337 m!2195643))

(declare-fun m!2195645 () Bool)

(assert (=> b!1775337 m!2195645))

(declare-fun m!2195647 () Bool)

(assert (=> b!1775337 m!2195647))

(assert (=> b!1775337 m!2195637))

(declare-fun m!2195649 () Bool)

(assert (=> b!1775337 m!2195649))

(declare-fun m!2195651 () Bool)

(assert (=> b!1775313 m!2195651))

(declare-fun m!2195653 () Bool)

(assert (=> b!1775313 m!2195653))

(declare-fun m!2195655 () Bool)

(assert (=> b!1775311 m!2195655))

(declare-fun m!2195657 () Bool)

(assert (=> b!1775311 m!2195657))

(declare-fun m!2195659 () Bool)

(assert (=> b!1775311 m!2195659))

(declare-fun m!2195661 () Bool)

(assert (=> b!1775320 m!2195661))

(declare-fun m!2195663 () Bool)

(assert (=> b!1775320 m!2195663))

(declare-fun m!2195665 () Bool)

(assert (=> b!1775320 m!2195665))

(declare-fun m!2195667 () Bool)

(assert (=> b!1775306 m!2195667))

(declare-fun m!2195669 () Bool)

(assert (=> b!1775328 m!2195669))

(declare-fun m!2195671 () Bool)

(assert (=> b!1775328 m!2195671))

(declare-fun m!2195673 () Bool)

(assert (=> start!176298 m!2195673))

(declare-fun m!2195675 () Bool)

(assert (=> b!1775312 m!2195675))

(declare-fun m!2195677 () Bool)

(assert (=> b!1775314 m!2195677))

(declare-fun m!2195679 () Bool)

(assert (=> b!1775325 m!2195679))

(declare-fun m!2195681 () Bool)

(assert (=> b!1775318 m!2195681))

(declare-fun m!2195683 () Bool)

(assert (=> b!1775334 m!2195683))

(declare-fun m!2195685 () Bool)

(assert (=> b!1775334 m!2195685))

(declare-fun m!2195687 () Bool)

(assert (=> b!1775334 m!2195687))

(declare-fun m!2195689 () Bool)

(assert (=> b!1775334 m!2195689))

(declare-fun m!2195691 () Bool)

(assert (=> b!1775319 m!2195691))

(declare-fun m!2195693 () Bool)

(assert (=> b!1775319 m!2195693))

(declare-fun m!2195695 () Bool)

(assert (=> b!1775319 m!2195695))

(declare-fun m!2195697 () Bool)

(assert (=> b!1775319 m!2195697))

(declare-fun m!2195699 () Bool)

(assert (=> b!1775319 m!2195699))

(declare-fun m!2195701 () Bool)

(assert (=> b!1775319 m!2195701))

(declare-fun m!2195703 () Bool)

(assert (=> b!1775319 m!2195703))

(declare-fun m!2195705 () Bool)

(assert (=> b!1775319 m!2195705))

(declare-fun m!2195707 () Bool)

(assert (=> b!1775319 m!2195707))

(assert (=> b!1775319 m!2195701))

(declare-fun m!2195709 () Bool)

(assert (=> b!1775319 m!2195709))

(declare-fun m!2195711 () Bool)

(assert (=> b!1775319 m!2195711))

(declare-fun m!2195713 () Bool)

(assert (=> b!1775336 m!2195713))

(declare-fun m!2195715 () Bool)

(assert (=> b!1775336 m!2195715))

(declare-fun m!2195717 () Bool)

(assert (=> b!1775324 m!2195717))

(assert (=> b!1775329 m!2195635))

(assert (=> b!1775329 m!2195635))

(declare-fun m!2195719 () Bool)

(assert (=> b!1775329 m!2195719))

(assert (=> b!1775329 m!2195719))

(declare-fun m!2195721 () Bool)

(assert (=> b!1775329 m!2195721))

(declare-fun m!2195723 () Bool)

(assert (=> b!1775329 m!2195723))

(declare-fun m!2195725 () Bool)

(assert (=> b!1775333 m!2195725))

(assert (=> b!1775333 m!2195725))

(declare-fun m!2195727 () Bool)

(assert (=> b!1775333 m!2195727))

(assert (=> b!1775333 m!2195727))

(declare-fun m!2195729 () Bool)

(assert (=> b!1775333 m!2195729))

(declare-fun m!2195731 () Bool)

(assert (=> b!1775333 m!2195731))

(declare-fun m!2195733 () Bool)

(assert (=> b!1775305 m!2195733))

(declare-fun m!2195735 () Bool)

(assert (=> b!1775308 m!2195735))

(declare-fun m!2195737 () Bool)

(assert (=> b!1775308 m!2195737))

(declare-fun m!2195739 () Bool)

(assert (=> b!1775308 m!2195739))

(declare-fun m!2195741 () Bool)

(assert (=> b!1775308 m!2195741))

(declare-fun m!2195743 () Bool)

(assert (=> b!1775317 m!2195743))

(declare-fun m!2195745 () Bool)

(assert (=> b!1775309 m!2195745))

(declare-fun m!2195747 () Bool)

(assert (=> b!1775309 m!2195747))

(declare-fun m!2195749 () Bool)

(assert (=> b!1775309 m!2195749))

(declare-fun m!2195751 () Bool)

(assert (=> b!1775309 m!2195751))

(assert (=> b!1775309 m!2195749))

(declare-fun m!2195753 () Bool)

(assert (=> b!1775309 m!2195753))

(declare-fun m!2195755 () Bool)

(assert (=> b!1775310 m!2195755))

(declare-fun m!2195757 () Bool)

(assert (=> b!1775310 m!2195757))

(declare-fun m!2195759 () Bool)

(assert (=> b!1775310 m!2195759))

(declare-fun m!2195761 () Bool)

(assert (=> b!1775310 m!2195761))

(declare-fun m!2195763 () Bool)

(assert (=> b!1775310 m!2195763))

(declare-fun m!2195765 () Bool)

(assert (=> b!1775322 m!2195765))

(declare-fun m!2195767 () Bool)

(assert (=> b!1775322 m!2195767))

(declare-fun m!2195769 () Bool)

(assert (=> b!1775323 m!2195769))

(declare-fun m!2195771 () Bool)

(assert (=> b!1775323 m!2195771))

(declare-fun m!2195773 () Bool)

(assert (=> b!1775323 m!2195773))

(declare-fun m!2195775 () Bool)

(assert (=> b!1775323 m!2195775))

(declare-fun m!2195777 () Bool)

(assert (=> b!1775323 m!2195777))

(declare-fun m!2195779 () Bool)

(assert (=> b!1775323 m!2195779))

(declare-fun m!2195781 () Bool)

(assert (=> b!1775323 m!2195781))

(declare-fun m!2195783 () Bool)

(assert (=> b!1775327 m!2195783))

(check-sat (not b!1775308) (not b!1775319) tp_is_empty!7897 (not b!1775354) (not b!1775337) (not tb!107655) (not b!1775333) (not tb!107643) b_and!135487 (not b!1775326) (not b!1775314) (not b!1775310) (not b!1775334) b_and!135479 (not b!1775322) (not b_next!49905) b_and!135485 (not b!1775353) b_and!135481 (not b_next!49911) b_and!135483 (not b_lambda!57935) b_and!135477 (not b!1775320) (not b!1775327) (not b!1775311) (not b!1775325) (not tb!107649) (not b!1775335) (not b!1775306) (not b!1775323) (not b!1775318) (not b!1775336) (not b_lambda!57939) (not b!1775324) (not b_lambda!57937) (not b!1775312) (not b!1775329) (not b_next!49913) (not b_next!49903) (not b_next!49907) (not b!1775328) (not b!1775332) (not b!1775309) (not b!1775317) (not start!176298) (not b_next!49909) (not b!1775313))
(check-sat b_and!135487 b_and!135479 (not b_next!49905) b_and!135477 (not b_next!49909) b_and!135485 b_and!135481 (not b_next!49911) b_and!135483 (not b_next!49913) (not b_next!49903) (not b_next!49907))

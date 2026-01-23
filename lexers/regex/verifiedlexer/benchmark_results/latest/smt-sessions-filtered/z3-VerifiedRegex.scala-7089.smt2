; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!375924 () Bool)

(assert start!375924)

(declare-fun b!3994179 () Bool)

(declare-fun b_free!110945 () Bool)

(declare-fun b_next!111649 () Bool)

(assert (=> b!3994179 (= b_free!110945 (not b_next!111649))))

(declare-fun tp!1216208 () Bool)

(declare-fun b_and!306815 () Bool)

(assert (=> b!3994179 (= tp!1216208 b_and!306815)))

(declare-fun b_free!110947 () Bool)

(declare-fun b_next!111651 () Bool)

(assert (=> b!3994179 (= b_free!110947 (not b_next!111651))))

(declare-fun tp!1216203 () Bool)

(declare-fun b_and!306817 () Bool)

(assert (=> b!3994179 (= tp!1216203 b_and!306817)))

(declare-fun b!3994187 () Bool)

(declare-fun b_free!110949 () Bool)

(declare-fun b_next!111653 () Bool)

(assert (=> b!3994187 (= b_free!110949 (not b_next!111653))))

(declare-fun tp!1216198 () Bool)

(declare-fun b_and!306819 () Bool)

(assert (=> b!3994187 (= tp!1216198 b_and!306819)))

(declare-fun b_free!110951 () Bool)

(declare-fun b_next!111655 () Bool)

(assert (=> b!3994187 (= b_free!110951 (not b_next!111655))))

(declare-fun tp!1216201 () Bool)

(declare-fun b_and!306821 () Bool)

(assert (=> b!3994187 (= tp!1216201 b_and!306821)))

(declare-fun b!3994165 () Bool)

(declare-fun e!2476166 () Bool)

(declare-fun e!2476176 () Bool)

(declare-fun tp!1216210 () Bool)

(assert (=> b!3994165 (= e!2476166 (and e!2476176 tp!1216210))))

(declare-fun b!3994166 () Bool)

(declare-fun e!2476164 () Bool)

(declare-fun e!2476153 () Bool)

(assert (=> b!3994166 (= e!2476164 e!2476153)))

(declare-fun res!1621588 () Bool)

(assert (=> b!3994166 (=> res!1621588 e!2476153)))

(declare-datatypes ((C!23528 0))(
  ( (C!23529 (val!13858 Int)) )
))
(declare-datatypes ((List!42842 0))(
  ( (Nil!42718) (Cons!42718 (h!48138 C!23528) (t!331929 List!42842)) )
))
(declare-fun lt!1409404 () List!42842)

(declare-fun suffix!1299 () List!42842)

(assert (=> b!3994166 (= res!1621588 (not (= lt!1409404 suffix!1299)))))

(declare-fun newSuffix!27 () List!42842)

(declare-fun lt!1409373 () List!42842)

(declare-fun ++!11168 (List!42842 List!42842) List!42842)

(assert (=> b!3994166 (= lt!1409404 (++!11168 newSuffix!27 lt!1409373))))

(declare-fun getSuffix!2284 (List!42842 List!42842) List!42842)

(assert (=> b!3994166 (= lt!1409373 (getSuffix!2284 suffix!1299 newSuffix!27))))

(declare-fun b!3994167 () Bool)

(declare-datatypes ((Unit!61548 0))(
  ( (Unit!61549) )
))
(declare-fun e!2476180 () Unit!61548)

(declare-fun Unit!61550 () Unit!61548)

(assert (=> b!3994167 (= e!2476180 Unit!61550)))

(declare-fun b!3994168 () Bool)

(declare-fun e!2476154 () Bool)

(declare-fun e!2476160 () Bool)

(assert (=> b!3994168 (= e!2476154 e!2476160)))

(declare-fun res!1621592 () Bool)

(assert (=> b!3994168 (=> res!1621592 e!2476160)))

(declare-fun lt!1409393 () List!42842)

(declare-fun lt!1409384 () List!42842)

(declare-fun isPrefix!3853 (List!42842 List!42842) Bool)

(assert (=> b!3994168 (= res!1621592 (not (isPrefix!3853 lt!1409393 lt!1409384)))))

(declare-fun lt!1409391 () List!42842)

(assert (=> b!3994168 (isPrefix!3853 lt!1409393 lt!1409391)))

(declare-fun lt!1409376 () Unit!61548)

(declare-fun lt!1409386 () List!42842)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!686 (List!42842 List!42842 List!42842) Unit!61548)

(assert (=> b!3994168 (= lt!1409376 (lemmaPrefixStaysPrefixWhenAddingToSuffix!686 lt!1409393 lt!1409386 lt!1409373))))

(declare-fun b!3994169 () Bool)

(declare-fun e!2476146 () Unit!61548)

(declare-fun Unit!61551 () Unit!61548)

(assert (=> b!3994169 (= e!2476146 Unit!61551)))

(declare-fun b!3994170 () Bool)

(declare-fun e!2476169 () Bool)

(declare-fun tp!1216204 () Bool)

(declare-datatypes ((IArray!25959 0))(
  ( (IArray!25960 (innerList!13037 List!42842)) )
))
(declare-datatypes ((Conc!12977 0))(
  ( (Node!12977 (left!32266 Conc!12977) (right!32596 Conc!12977) (csize!26184 Int) (cheight!13188 Int)) (Leaf!20067 (xs!16283 IArray!25959) (csize!26185 Int)) (Empty!12977) )
))
(declare-datatypes ((BalanceConc!25548 0))(
  ( (BalanceConc!25549 (c!691136 Conc!12977)) )
))
(declare-datatypes ((List!42843 0))(
  ( (Nil!42719) (Cons!42719 (h!48139 (_ BitVec 16)) (t!331930 List!42843)) )
))
(declare-datatypes ((TokenValue!6996 0))(
  ( (FloatLiteralValue!13992 (text!49417 List!42843)) (TokenValueExt!6995 (__x!26209 Int)) (Broken!34980 (value!213439 List!42843)) (Object!7119) (End!6996) (Def!6996) (Underscore!6996) (Match!6996) (Else!6996) (Error!6996) (Case!6996) (If!6996) (Extends!6996) (Abstract!6996) (Class!6996) (Val!6996) (DelimiterValue!13992 (del!7056 List!42843)) (KeywordValue!7002 (value!213440 List!42843)) (CommentValue!13992 (value!213441 List!42843)) (WhitespaceValue!13992 (value!213442 List!42843)) (IndentationValue!6996 (value!213443 List!42843)) (String!48697) (Int32!6996) (Broken!34981 (value!213444 List!42843)) (Boolean!6997) (Unit!61552) (OperatorValue!6999 (op!7056 List!42843)) (IdentifierValue!13992 (value!213445 List!42843)) (IdentifierValue!13993 (value!213446 List!42843)) (WhitespaceValue!13993 (value!213447 List!42843)) (True!13992) (False!13992) (Broken!34982 (value!213448 List!42843)) (Broken!34983 (value!213449 List!42843)) (True!13993) (RightBrace!6996) (RightBracket!6996) (Colon!6996) (Null!6996) (Comma!6996) (LeftBracket!6996) (False!13993) (LeftBrace!6996) (ImaginaryLiteralValue!6996 (text!49418 List!42843)) (StringLiteralValue!20988 (value!213450 List!42843)) (EOFValue!6996 (value!213451 List!42843)) (IdentValue!6996 (value!213452 List!42843)) (DelimiterValue!13993 (value!213453 List!42843)) (DedentValue!6996 (value!213454 List!42843)) (NewLineValue!6996 (value!213455 List!42843)) (IntegerValue!20988 (value!213456 (_ BitVec 32)) (text!49419 List!42843)) (IntegerValue!20989 (value!213457 Int) (text!49420 List!42843)) (Times!6996) (Or!6996) (Equal!6996) (Minus!6996) (Broken!34984 (value!213458 List!42843)) (And!6996) (Div!6996) (LessEqual!6996) (Mod!6996) (Concat!18667) (Not!6996) (Plus!6996) (SpaceValue!6996 (value!213459 List!42843)) (IntegerValue!20990 (value!213460 Int) (text!49421 List!42843)) (StringLiteralValue!20989 (text!49422 List!42843)) (FloatLiteralValue!13993 (text!49423 List!42843)) (BytesLiteralValue!6996 (value!213461 List!42843)) (CommentValue!13993 (value!213462 List!42843)) (StringLiteralValue!20990 (value!213463 List!42843)) (ErrorTokenValue!6996 (msg!7057 List!42843)) )
))
(declare-datatypes ((Regex!11671 0))(
  ( (ElementMatch!11671 (c!691137 C!23528)) (Concat!18668 (regOne!23854 Regex!11671) (regTwo!23854 Regex!11671)) (EmptyExpr!11671) (Star!11671 (reg!12000 Regex!11671)) (EmptyLang!11671) (Union!11671 (regOne!23855 Regex!11671) (regTwo!23855 Regex!11671)) )
))
(declare-datatypes ((String!48698 0))(
  ( (String!48699 (value!213464 String)) )
))
(declare-datatypes ((TokenValueInjection!13420 0))(
  ( (TokenValueInjection!13421 (toValue!9254 Int) (toChars!9113 Int)) )
))
(declare-datatypes ((Rule!13332 0))(
  ( (Rule!13333 (regex!6766 Regex!11671) (tag!7626 String!48698) (isSeparator!6766 Bool) (transformation!6766 TokenValueInjection!13420)) )
))
(declare-datatypes ((List!42844 0))(
  ( (Nil!42720) (Cons!42720 (h!48140 Rule!13332) (t!331931 List!42844)) )
))
(declare-fun rules!2999 () List!42844)

(declare-fun inv!57053 (String!48698) Bool)

(declare-fun inv!57056 (TokenValueInjection!13420) Bool)

(assert (=> b!3994170 (= e!2476176 (and tp!1216204 (inv!57053 (tag!7626 (h!48140 rules!2999))) (inv!57056 (transformation!6766 (h!48140 rules!2999))) e!2476169))))

(declare-fun b!3994171 () Bool)

(declare-fun e!2476167 () Bool)

(assert (=> b!3994171 (= e!2476167 false)))

(declare-fun b!3994172 () Bool)

(declare-fun e!2476158 () Bool)

(declare-fun e!2476148 () Bool)

(assert (=> b!3994172 (= e!2476158 e!2476148)))

(declare-fun res!1621605 () Bool)

(assert (=> b!3994172 (=> res!1621605 e!2476148)))

(declare-fun lt!1409380 () Int)

(declare-fun lt!1409383 () Int)

(assert (=> b!3994172 (= res!1621605 (not (= lt!1409380 lt!1409383)))))

(declare-fun lt!1409356 () Unit!61548)

(assert (=> b!3994172 (= lt!1409356 e!2476180)))

(declare-fun c!691135 () Bool)

(assert (=> b!3994172 (= c!691135 (< lt!1409383 lt!1409380))))

(declare-fun lt!1409348 () Unit!61548)

(declare-fun e!2476179 () Unit!61548)

(assert (=> b!3994172 (= lt!1409348 e!2476179)))

(declare-fun c!691134 () Bool)

(assert (=> b!3994172 (= c!691134 (> lt!1409383 lt!1409380))))

(declare-datatypes ((Token!12670 0))(
  ( (Token!12671 (value!213465 TokenValue!6996) (rule!9790 Rule!13332) (size!31948 Int) (originalCharacters!7366 List!42842)) )
))
(declare-datatypes ((tuple2!41916 0))(
  ( (tuple2!41917 (_1!24092 Token!12670) (_2!24092 List!42842)) )
))
(declare-datatypes ((Option!9180 0))(
  ( (None!9179) (Some!9179 (v!39537 tuple2!41916)) )
))
(declare-fun lt!1409347 () Option!9180)

(declare-fun lt!1409359 () List!42842)

(assert (=> b!3994172 (= (_2!24092 (v!39537 lt!1409347)) lt!1409359)))

(declare-fun lt!1409399 () Unit!61548)

(declare-fun lemmaSamePrefixThenSameSuffix!2040 (List!42842 List!42842 List!42842 List!42842 List!42842) Unit!61548)

(assert (=> b!3994172 (= lt!1409399 (lemmaSamePrefixThenSameSuffix!2040 lt!1409393 (_2!24092 (v!39537 lt!1409347)) lt!1409393 lt!1409359 lt!1409386))))

(declare-fun lt!1409364 () List!42842)

(assert (=> b!3994172 (isPrefix!3853 lt!1409393 lt!1409364)))

(declare-fun lt!1409379 () Unit!61548)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2696 (List!42842 List!42842) Unit!61548)

(assert (=> b!3994172 (= lt!1409379 (lemmaConcatTwoListThenFirstIsPrefix!2696 lt!1409393 lt!1409359))))

(declare-fun b!3994173 () Bool)

(declare-fun Unit!61553 () Unit!61548)

(assert (=> b!3994173 (= e!2476146 Unit!61553)))

(declare-fun token!484 () Token!12670)

(declare-fun lt!1409392 () Unit!61548)

(declare-datatypes ((LexerInterface!6355 0))(
  ( (LexerInterfaceExt!6352 (__x!26210 Int)) (Lexer!6353) )
))
(declare-fun thiss!21717 () LexerInterface!6355)

(declare-fun lt!1409363 () List!42842)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!262 (LexerInterface!6355 List!42844 Rule!13332 List!42842 List!42842 Rule!13332) Unit!61548)

(assert (=> b!3994173 (= lt!1409392 (lemmaMaxPrefNoSmallerRuleMatches!262 thiss!21717 rules!2999 (rule!9790 token!484) lt!1409363 lt!1409384 (rule!9790 (_1!24092 (v!39537 lt!1409347)))))))

(declare-fun res!1621587 () Bool)

(declare-fun matchR!5648 (Regex!11671 List!42842) Bool)

(assert (=> b!3994173 (= res!1621587 (not (matchR!5648 (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))) lt!1409363)))))

(assert (=> b!3994173 (=> (not res!1621587) (not e!2476167))))

(assert (=> b!3994173 e!2476167))

(declare-fun b!3994174 () Bool)

(declare-fun contains!8501 (List!42844 Rule!13332) Bool)

(assert (=> b!3994174 (= e!2476148 (contains!8501 rules!2999 (rule!9790 token!484)))))

(declare-fun lt!1409361 () Unit!61548)

(assert (=> b!3994174 (= lt!1409361 e!2476146)))

(declare-fun c!691133 () Bool)

(declare-fun getIndex!536 (List!42844 Rule!13332) Int)

(assert (=> b!3994174 (= c!691133 (< (getIndex!536 rules!2999 (rule!9790 (_1!24092 (v!39537 lt!1409347)))) (getIndex!536 rules!2999 (rule!9790 token!484))))))

(declare-fun newSuffixResult!27 () List!42842)

(assert (=> b!3994174 (= (_2!24092 (v!39537 lt!1409347)) newSuffixResult!27)))

(declare-fun lt!1409402 () Unit!61548)

(assert (=> b!3994174 (= lt!1409402 (lemmaSamePrefixThenSameSuffix!2040 lt!1409393 (_2!24092 (v!39537 lt!1409347)) lt!1409363 newSuffixResult!27 lt!1409386))))

(assert (=> b!3994174 (= lt!1409393 lt!1409363)))

(declare-fun lt!1409372 () Unit!61548)

(declare-fun lemmaIsPrefixSameLengthThenSameList!875 (List!42842 List!42842 List!42842) Unit!61548)

(assert (=> b!3994174 (= lt!1409372 (lemmaIsPrefixSameLengthThenSameList!875 lt!1409393 lt!1409363 lt!1409386))))

(declare-fun b!3994175 () Bool)

(declare-fun e!2476157 () Bool)

(declare-fun e!2476175 () Bool)

(assert (=> b!3994175 (= e!2476157 e!2476175)))

(declare-fun res!1621598 () Bool)

(assert (=> b!3994175 (=> res!1621598 e!2476175)))

(declare-fun lt!1409406 () List!42842)

(declare-fun lt!1409397 () List!42842)

(assert (=> b!3994175 (= res!1621598 (or (not (= lt!1409384 lt!1409397)) (not (= lt!1409384 lt!1409406))))))

(assert (=> b!3994175 (= lt!1409397 lt!1409406)))

(declare-fun lt!1409353 () List!42842)

(assert (=> b!3994175 (= lt!1409406 (++!11168 lt!1409363 lt!1409353))))

(declare-fun lt!1409409 () List!42842)

(assert (=> b!3994175 (= lt!1409397 (++!11168 lt!1409409 suffix!1299))))

(declare-fun lt!1409398 () List!42842)

(assert (=> b!3994175 (= lt!1409353 (++!11168 lt!1409398 suffix!1299))))

(declare-fun lt!1409401 () Unit!61548)

(declare-fun lemmaConcatAssociativity!2488 (List!42842 List!42842 List!42842) Unit!61548)

(assert (=> b!3994175 (= lt!1409401 (lemmaConcatAssociativity!2488 lt!1409363 lt!1409398 suffix!1299))))

(declare-fun b!3994176 () Bool)

(declare-fun res!1621599 () Bool)

(declare-fun e!2476152 () Bool)

(assert (=> b!3994176 (=> (not res!1621599) (not e!2476152))))

(assert (=> b!3994176 (= res!1621599 (isPrefix!3853 newSuffix!27 suffix!1299))))

(declare-fun b!3994177 () Bool)

(assert (=> b!3994177 (= e!2476153 e!2476154)))

(declare-fun res!1621600 () Bool)

(assert (=> b!3994177 (=> res!1621600 e!2476154)))

(assert (=> b!3994177 (= res!1621600 (not (= lt!1409391 lt!1409384)))))

(declare-fun prefix!494 () List!42842)

(assert (=> b!3994177 (= lt!1409391 (++!11168 prefix!494 lt!1409404))))

(assert (=> b!3994177 (= lt!1409391 (++!11168 lt!1409386 lt!1409373))))

(declare-fun lt!1409365 () Unit!61548)

(assert (=> b!3994177 (= lt!1409365 (lemmaConcatAssociativity!2488 prefix!494 newSuffix!27 lt!1409373))))

(declare-fun b!3994178 () Bool)

(declare-fun res!1621604 () Bool)

(assert (=> b!3994178 (=> res!1621604 e!2476160)))

(declare-fun lt!1409400 () List!42842)

(assert (=> b!3994178 (= res!1621604 (not (= lt!1409400 lt!1409386)))))

(declare-fun e!2476165 () Bool)

(assert (=> b!3994179 (= e!2476165 (and tp!1216208 tp!1216203))))

(declare-fun b!3994180 () Bool)

(assert (=> b!3994180 (= e!2476160 e!2476158)))

(declare-fun res!1621591 () Bool)

(assert (=> b!3994180 (=> res!1621591 e!2476158)))

(assert (=> b!3994180 (= res!1621591 (not (= lt!1409364 lt!1409386)))))

(assert (=> b!3994180 (= lt!1409364 (++!11168 lt!1409393 lt!1409359))))

(assert (=> b!3994180 (= lt!1409359 (getSuffix!2284 lt!1409386 lt!1409393))))

(declare-fun b!3994181 () Bool)

(declare-fun e!2476159 () Bool)

(assert (=> b!3994181 (= e!2476159 e!2476157)))

(declare-fun res!1621603 () Bool)

(assert (=> b!3994181 (=> res!1621603 e!2476157)))

(assert (=> b!3994181 (= res!1621603 (not (= lt!1409409 prefix!494)))))

(assert (=> b!3994181 (= lt!1409409 (++!11168 lt!1409363 lt!1409398))))

(assert (=> b!3994181 (= lt!1409398 (getSuffix!2284 prefix!494 lt!1409363))))

(assert (=> b!3994181 (isPrefix!3853 lt!1409363 prefix!494)))

(declare-fun lt!1409395 () Unit!61548)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!431 (List!42842 List!42842 List!42842) Unit!61548)

(assert (=> b!3994181 (= lt!1409395 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!431 prefix!494 lt!1409363 lt!1409384))))

(declare-fun b!3994182 () Bool)

(declare-fun e!2476144 () Bool)

(assert (=> b!3994182 (= e!2476175 e!2476144)))

(declare-fun res!1621586 () Bool)

(assert (=> b!3994182 (=> res!1621586 e!2476144)))

(declare-fun lt!1409405 () Option!9180)

(declare-fun lt!1409394 () Option!9180)

(assert (=> b!3994182 (= res!1621586 (not (= lt!1409405 lt!1409394)))))

(declare-fun lt!1409387 () Token!12670)

(declare-fun suffixResult!105 () List!42842)

(assert (=> b!3994182 (= lt!1409405 (Some!9179 (tuple2!41917 lt!1409387 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2687 (LexerInterface!6355 Rule!13332 List!42842) Option!9180)

(assert (=> b!3994182 (= lt!1409405 (maxPrefixOneRule!2687 thiss!21717 (rule!9790 token!484) lt!1409384))))

(declare-fun lt!1409389 () TokenValue!6996)

(assert (=> b!3994182 (= lt!1409387 (Token!12671 lt!1409389 (rule!9790 token!484) lt!1409380 lt!1409363))))

(declare-fun apply!9977 (TokenValueInjection!13420 BalanceConc!25548) TokenValue!6996)

(declare-fun seqFromList!5005 (List!42842) BalanceConc!25548)

(assert (=> b!3994182 (= lt!1409389 (apply!9977 (transformation!6766 (rule!9790 token!484)) (seqFromList!5005 lt!1409363)))))

(declare-fun lt!1409388 () Unit!61548)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1509 (LexerInterface!6355 List!42844 List!42842 List!42842 List!42842 Rule!13332) Unit!61548)

(assert (=> b!3994182 (= lt!1409388 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1509 thiss!21717 rules!2999 lt!1409363 lt!1409384 suffixResult!105 (rule!9790 token!484)))))

(assert (=> b!3994182 (= lt!1409353 suffixResult!105)))

(declare-fun lt!1409408 () Unit!61548)

(assert (=> b!3994182 (= lt!1409408 (lemmaSamePrefixThenSameSuffix!2040 lt!1409363 lt!1409353 lt!1409363 suffixResult!105 lt!1409384))))

(assert (=> b!3994182 (isPrefix!3853 lt!1409363 lt!1409406)))

(declare-fun lt!1409352 () Unit!61548)

(assert (=> b!3994182 (= lt!1409352 (lemmaConcatTwoListThenFirstIsPrefix!2696 lt!1409363 lt!1409353))))

(declare-fun b!3994183 () Bool)

(declare-fun res!1621581 () Bool)

(assert (=> b!3994183 (=> (not res!1621581) (not e!2476152))))

(declare-fun size!31949 (List!42842) Int)

(assert (=> b!3994183 (= res!1621581 (>= (size!31949 suffix!1299) (size!31949 newSuffix!27)))))

(declare-fun b!3994184 () Bool)

(declare-fun res!1621595 () Bool)

(declare-fun e!2476161 () Bool)

(assert (=> b!3994184 (=> (not res!1621595) (not e!2476161))))

(assert (=> b!3994184 (= res!1621595 (= (value!213465 token!484) lt!1409389))))

(declare-fun b!3994185 () Bool)

(declare-fun Unit!61554 () Unit!61548)

(assert (=> b!3994185 (= e!2476180 Unit!61554)))

(declare-fun lt!1409396 () Unit!61548)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!420 (LexerInterface!6355 List!42844 Rule!13332 List!42842 List!42842 List!42842 Rule!13332) Unit!61548)

(assert (=> b!3994185 (= lt!1409396 (lemmaMaxPrefixOutputsMaxPrefix!420 thiss!21717 rules!2999 (rule!9790 (_1!24092 (v!39537 lt!1409347))) lt!1409393 lt!1409386 lt!1409363 (rule!9790 token!484)))))

(assert (=> b!3994185 false))

(declare-fun b!3994186 () Bool)

(declare-fun tp!1216202 () Bool)

(declare-fun e!2476155 () Bool)

(assert (=> b!3994186 (= e!2476155 (and tp!1216202 (inv!57053 (tag!7626 (rule!9790 token!484))) (inv!57056 (transformation!6766 (rule!9790 token!484))) e!2476165))))

(assert (=> b!3994187 (= e!2476169 (and tp!1216198 tp!1216201))))

(declare-fun b!3994188 () Bool)

(declare-fun e!2476168 () Bool)

(declare-fun tp_is_empty!20313 () Bool)

(declare-fun tp!1216207 () Bool)

(assert (=> b!3994188 (= e!2476168 (and tp_is_empty!20313 tp!1216207))))

(declare-fun b!3994189 () Bool)

(declare-fun e!2476170 () Bool)

(assert (=> b!3994189 (= e!2476170 e!2476159)))

(declare-fun res!1621580 () Bool)

(assert (=> b!3994189 (=> res!1621580 e!2476159)))

(assert (=> b!3994189 (= res!1621580 (not (isPrefix!3853 lt!1409363 lt!1409384)))))

(assert (=> b!3994189 (isPrefix!3853 prefix!494 lt!1409384)))

(declare-fun lt!1409385 () Unit!61548)

(assert (=> b!3994189 (= lt!1409385 (lemmaConcatTwoListThenFirstIsPrefix!2696 prefix!494 suffix!1299))))

(declare-fun lt!1409370 () List!42842)

(assert (=> b!3994189 (isPrefix!3853 lt!1409363 lt!1409370)))

(declare-fun lt!1409360 () Unit!61548)

(assert (=> b!3994189 (= lt!1409360 (lemmaConcatTwoListThenFirstIsPrefix!2696 lt!1409363 suffixResult!105))))

(declare-fun b!3994190 () Bool)

(declare-fun e!2476149 () Bool)

(declare-fun tp!1216199 () Bool)

(assert (=> b!3994190 (= e!2476149 (and tp_is_empty!20313 tp!1216199))))

(declare-fun b!3994191 () Bool)

(declare-fun e!2476143 () Bool)

(declare-fun e!2476177 () Bool)

(assert (=> b!3994191 (= e!2476143 e!2476177)))

(declare-fun res!1621593 () Bool)

(assert (=> b!3994191 (=> (not res!1621593) (not e!2476177))))

(declare-fun lt!1409355 () List!42842)

(assert (=> b!3994191 (= res!1621593 (= lt!1409355 lt!1409386))))

(assert (=> b!3994191 (= lt!1409386 (++!11168 prefix!494 newSuffix!27))))

(assert (=> b!3994191 (= lt!1409355 (++!11168 lt!1409363 newSuffixResult!27))))

(declare-fun tp!1216206 () Bool)

(declare-fun e!2476171 () Bool)

(declare-fun b!3994192 () Bool)

(declare-fun inv!21 (TokenValue!6996) Bool)

(assert (=> b!3994192 (= e!2476171 (and (inv!21 (value!213465 token!484)) e!2476155 tp!1216206))))

(declare-fun b!3994193 () Bool)

(declare-fun e!2476156 () Bool)

(assert (=> b!3994193 (= e!2476156 (not e!2476170))))

(declare-fun res!1621583 () Bool)

(assert (=> b!3994193 (=> res!1621583 e!2476170)))

(assert (=> b!3994193 (= res!1621583 (not (= lt!1409370 lt!1409384)))))

(assert (=> b!3994193 (= lt!1409370 (++!11168 lt!1409363 suffixResult!105))))

(declare-fun lt!1409350 () Unit!61548)

(declare-fun lemmaInv!981 (TokenValueInjection!13420) Unit!61548)

(assert (=> b!3994193 (= lt!1409350 (lemmaInv!981 (transformation!6766 (rule!9790 token!484))))))

(declare-fun ruleValid!2698 (LexerInterface!6355 Rule!13332) Bool)

(assert (=> b!3994193 (ruleValid!2698 thiss!21717 (rule!9790 token!484))))

(declare-fun lt!1409354 () Unit!61548)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1772 (LexerInterface!6355 Rule!13332 List!42844) Unit!61548)

(assert (=> b!3994193 (= lt!1409354 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1772 thiss!21717 (rule!9790 token!484) rules!2999))))

(declare-fun b!3994194 () Bool)

(assert (=> b!3994194 (= e!2476161 (and (= (size!31948 token!484) lt!1409380) (= (originalCharacters!7366 token!484) lt!1409363)))))

(declare-fun b!3994195 () Bool)

(declare-fun e!2476162 () Bool)

(assert (=> b!3994195 (= e!2476162 e!2476164)))

(declare-fun res!1621597 () Bool)

(assert (=> b!3994195 (=> res!1621597 e!2476164)))

(declare-fun lt!1409362 () Option!9180)

(assert (=> b!3994195 (= res!1621597 (not (= lt!1409362 (Some!9179 (v!39537 lt!1409347)))))))

(assert (=> b!3994195 (isPrefix!3853 lt!1409393 (++!11168 lt!1409393 newSuffixResult!27))))

(declare-fun lt!1409351 () Unit!61548)

(assert (=> b!3994195 (= lt!1409351 (lemmaConcatTwoListThenFirstIsPrefix!2696 lt!1409393 newSuffixResult!27))))

(assert (=> b!3994195 (isPrefix!3853 lt!1409393 lt!1409400)))

(assert (=> b!3994195 (= lt!1409400 (++!11168 lt!1409393 (_2!24092 (v!39537 lt!1409347))))))

(declare-fun lt!1409367 () Unit!61548)

(assert (=> b!3994195 (= lt!1409367 (lemmaConcatTwoListThenFirstIsPrefix!2696 lt!1409393 (_2!24092 (v!39537 lt!1409347))))))

(declare-fun lt!1409368 () TokenValue!6996)

(assert (=> b!3994195 (= lt!1409362 (Some!9179 (tuple2!41917 (Token!12671 lt!1409368 (rule!9790 (_1!24092 (v!39537 lt!1409347))) lt!1409383 lt!1409393) (_2!24092 (v!39537 lt!1409347)))))))

(assert (=> b!3994195 (= lt!1409362 (maxPrefixOneRule!2687 thiss!21717 (rule!9790 (_1!24092 (v!39537 lt!1409347))) lt!1409386))))

(assert (=> b!3994195 (= lt!1409383 (size!31949 lt!1409393))))

(assert (=> b!3994195 (= lt!1409368 (apply!9977 (transformation!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))) (seqFromList!5005 lt!1409393)))))

(declare-fun lt!1409407 () Unit!61548)

(assert (=> b!3994195 (= lt!1409407 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1509 thiss!21717 rules!2999 lt!1409393 lt!1409386 (_2!24092 (v!39537 lt!1409347)) (rule!9790 (_1!24092 (v!39537 lt!1409347)))))))

(declare-fun list!15862 (BalanceConc!25548) List!42842)

(declare-fun charsOf!4582 (Token!12670) BalanceConc!25548)

(assert (=> b!3994195 (= lt!1409393 (list!15862 (charsOf!4582 (_1!24092 (v!39537 lt!1409347)))))))

(declare-fun lt!1409374 () Unit!61548)

(assert (=> b!3994195 (= lt!1409374 (lemmaInv!981 (transformation!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347))))))))

(assert (=> b!3994195 (ruleValid!2698 thiss!21717 (rule!9790 (_1!24092 (v!39537 lt!1409347))))))

(declare-fun lt!1409403 () Unit!61548)

(assert (=> b!3994195 (= lt!1409403 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1772 thiss!21717 (rule!9790 (_1!24092 (v!39537 lt!1409347))) rules!2999))))

(declare-fun lt!1409377 () Unit!61548)

(declare-fun lemmaCharactersSize!1361 (Token!12670) Unit!61548)

(assert (=> b!3994195 (= lt!1409377 (lemmaCharactersSize!1361 token!484))))

(declare-fun lt!1409366 () Unit!61548)

(assert (=> b!3994195 (= lt!1409366 (lemmaCharactersSize!1361 (_1!24092 (v!39537 lt!1409347))))))

(declare-fun b!3994196 () Bool)

(declare-fun e!2476147 () Bool)

(declare-fun tp!1216205 () Bool)

(assert (=> b!3994196 (= e!2476147 (and tp_is_empty!20313 tp!1216205))))

(declare-fun b!3994197 () Bool)

(declare-fun e!2476174 () Bool)

(declare-fun tp!1216200 () Bool)

(assert (=> b!3994197 (= e!2476174 (and tp_is_empty!20313 tp!1216200))))

(declare-fun b!3994198 () Bool)

(declare-fun e!2476145 () Bool)

(declare-fun tp!1216209 () Bool)

(assert (=> b!3994198 (= e!2476145 (and tp_is_empty!20313 tp!1216209))))

(declare-fun b!3994199 () Bool)

(declare-fun e!2476150 () Bool)

(assert (=> b!3994199 (= e!2476150 false)))

(declare-fun b!3994200 () Bool)

(declare-fun res!1621582 () Bool)

(assert (=> b!3994200 (=> res!1621582 e!2476148)))

(assert (=> b!3994200 (= res!1621582 (not (isPrefix!3853 lt!1409393 lt!1409386)))))

(declare-fun b!3994201 () Bool)

(declare-fun Unit!61555 () Unit!61548)

(assert (=> b!3994201 (= e!2476179 Unit!61555)))

(declare-fun b!3994202 () Bool)

(declare-fun e!2476173 () Bool)

(declare-fun e!2476151 () Bool)

(assert (=> b!3994202 (= e!2476173 e!2476151)))

(declare-fun res!1621606 () Bool)

(assert (=> b!3994202 (=> res!1621606 e!2476151)))

(declare-fun lt!1409378 () List!42842)

(assert (=> b!3994202 (= res!1621606 (not (= lt!1409378 lt!1409384)))))

(declare-fun lt!1409382 () List!42842)

(assert (=> b!3994202 (= lt!1409378 (++!11168 lt!1409363 lt!1409382))))

(assert (=> b!3994202 (= lt!1409382 (getSuffix!2284 lt!1409384 lt!1409363))))

(assert (=> b!3994202 e!2476161))

(declare-fun res!1621594 () Bool)

(assert (=> b!3994202 (=> (not res!1621594) (not e!2476161))))

(assert (=> b!3994202 (= res!1621594 (isPrefix!3853 lt!1409384 lt!1409384))))

(declare-fun lt!1409371 () Unit!61548)

(declare-fun lemmaIsPrefixRefl!2445 (List!42842 List!42842) Unit!61548)

(assert (=> b!3994202 (= lt!1409371 (lemmaIsPrefixRefl!2445 lt!1409384 lt!1409384))))

(declare-fun b!3994203 () Bool)

(assert (=> b!3994203 (= e!2476152 e!2476143)))

(declare-fun res!1621590 () Bool)

(assert (=> b!3994203 (=> (not res!1621590) (not e!2476143))))

(declare-fun lt!1409390 () Int)

(assert (=> b!3994203 (= res!1621590 (>= lt!1409390 lt!1409380))))

(assert (=> b!3994203 (= lt!1409380 (size!31949 lt!1409363))))

(assert (=> b!3994203 (= lt!1409390 (size!31949 prefix!494))))

(assert (=> b!3994203 (= lt!1409363 (list!15862 (charsOf!4582 token!484)))))

(declare-fun b!3994204 () Bool)

(declare-fun res!1621608 () Bool)

(assert (=> b!3994204 (=> (not res!1621608) (not e!2476152))))

(declare-fun rulesInvariant!5698 (LexerInterface!6355 List!42844) Bool)

(assert (=> b!3994204 (= res!1621608 (rulesInvariant!5698 thiss!21717 rules!2999))))

(declare-fun b!3994205 () Bool)

(assert (=> b!3994205 (= e!2476151 e!2476162)))

(declare-fun res!1621602 () Bool)

(assert (=> b!3994205 (=> res!1621602 e!2476162)))

(get-info :version)

(assert (=> b!3994205 (= res!1621602 (not ((_ is Some!9179) lt!1409347)))))

(declare-fun maxPrefix!3653 (LexerInterface!6355 List!42844 List!42842) Option!9180)

(assert (=> b!3994205 (= lt!1409347 (maxPrefix!3653 thiss!21717 rules!2999 lt!1409386))))

(declare-fun lt!1409381 () tuple2!41916)

(assert (=> b!3994205 (and (= suffixResult!105 lt!1409382) (= lt!1409381 (tuple2!41917 lt!1409387 lt!1409382)))))

(declare-fun lt!1409369 () Unit!61548)

(assert (=> b!3994205 (= lt!1409369 (lemmaSamePrefixThenSameSuffix!2040 lt!1409363 suffixResult!105 lt!1409363 lt!1409382 lt!1409384))))

(assert (=> b!3994205 (isPrefix!3853 lt!1409363 lt!1409378)))

(declare-fun lt!1409358 () Unit!61548)

(assert (=> b!3994205 (= lt!1409358 (lemmaConcatTwoListThenFirstIsPrefix!2696 lt!1409363 lt!1409382))))

(declare-fun b!3994206 () Bool)

(assert (=> b!3994206 (= e!2476177 e!2476156)))

(declare-fun res!1621601 () Bool)

(assert (=> b!3994206 (=> (not res!1621601) (not e!2476156))))

(assert (=> b!3994206 (= res!1621601 (= (maxPrefix!3653 thiss!21717 rules!2999 lt!1409384) lt!1409394))))

(assert (=> b!3994206 (= lt!1409394 (Some!9179 lt!1409381))))

(assert (=> b!3994206 (= lt!1409381 (tuple2!41917 token!484 suffixResult!105))))

(assert (=> b!3994206 (= lt!1409384 (++!11168 prefix!494 suffix!1299))))

(declare-fun b!3994207 () Bool)

(assert (=> b!3994207 (= e!2476144 e!2476173)))

(declare-fun res!1621585 () Bool)

(assert (=> b!3994207 (=> res!1621585 e!2476173)))

(assert (=> b!3994207 (= res!1621585 (not (matchR!5648 (regex!6766 (rule!9790 token!484)) lt!1409363)))))

(assert (=> b!3994207 (isPrefix!3853 lt!1409363 lt!1409386)))

(declare-fun lt!1409375 () Unit!61548)

(assert (=> b!3994207 (= lt!1409375 (lemmaPrefixStaysPrefixWhenAddingToSuffix!686 lt!1409363 prefix!494 newSuffix!27))))

(declare-fun lt!1409357 () Unit!61548)

(assert (=> b!3994207 (= lt!1409357 (lemmaPrefixStaysPrefixWhenAddingToSuffix!686 lt!1409363 prefix!494 suffix!1299))))

(declare-fun b!3994208 () Bool)

(declare-fun Unit!61556 () Unit!61548)

(assert (=> b!3994208 (= e!2476179 Unit!61556)))

(declare-fun lt!1409349 () Unit!61548)

(assert (=> b!3994208 (= lt!1409349 (lemmaMaxPrefixOutputsMaxPrefix!420 thiss!21717 rules!2999 (rule!9790 token!484) lt!1409363 lt!1409384 lt!1409393 (rule!9790 (_1!24092 (v!39537 lt!1409347)))))))

(declare-fun res!1621607 () Bool)

(assert (=> b!3994208 (= res!1621607 (not (matchR!5648 (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))) lt!1409393)))))

(assert (=> b!3994208 (=> (not res!1621607) (not e!2476150))))

(assert (=> b!3994208 e!2476150))

(declare-fun res!1621589 () Bool)

(assert (=> start!375924 (=> (not res!1621589) (not e!2476152))))

(assert (=> start!375924 (= res!1621589 ((_ is Lexer!6353) thiss!21717))))

(assert (=> start!375924 e!2476152))

(assert (=> start!375924 e!2476174))

(declare-fun inv!57057 (Token!12670) Bool)

(assert (=> start!375924 (and (inv!57057 token!484) e!2476171)))

(assert (=> start!375924 e!2476168))

(assert (=> start!375924 e!2476145))

(assert (=> start!375924 e!2476149))

(assert (=> start!375924 true))

(assert (=> start!375924 e!2476166))

(assert (=> start!375924 e!2476147))

(declare-fun b!3994209 () Bool)

(declare-fun res!1621584 () Bool)

(assert (=> b!3994209 (=> (not res!1621584) (not e!2476161))))

(assert (=> b!3994209 (= res!1621584 (= (size!31948 token!484) (size!31949 (originalCharacters!7366 token!484))))))

(declare-fun b!3994210 () Bool)

(declare-fun res!1621596 () Bool)

(assert (=> b!3994210 (=> (not res!1621596) (not e!2476152))))

(declare-fun isEmpty!25532 (List!42844) Bool)

(assert (=> b!3994210 (= res!1621596 (not (isEmpty!25532 rules!2999)))))

(assert (= (and start!375924 res!1621589) b!3994210))

(assert (= (and b!3994210 res!1621596) b!3994204))

(assert (= (and b!3994204 res!1621608) b!3994183))

(assert (= (and b!3994183 res!1621581) b!3994176))

(assert (= (and b!3994176 res!1621599) b!3994203))

(assert (= (and b!3994203 res!1621590) b!3994191))

(assert (= (and b!3994191 res!1621593) b!3994206))

(assert (= (and b!3994206 res!1621601) b!3994193))

(assert (= (and b!3994193 (not res!1621583)) b!3994189))

(assert (= (and b!3994189 (not res!1621580)) b!3994181))

(assert (= (and b!3994181 (not res!1621603)) b!3994175))

(assert (= (and b!3994175 (not res!1621598)) b!3994182))

(assert (= (and b!3994182 (not res!1621586)) b!3994207))

(assert (= (and b!3994207 (not res!1621585)) b!3994202))

(assert (= (and b!3994202 res!1621594) b!3994184))

(assert (= (and b!3994184 res!1621595) b!3994209))

(assert (= (and b!3994209 res!1621584) b!3994194))

(assert (= (and b!3994202 (not res!1621606)) b!3994205))

(assert (= (and b!3994205 (not res!1621602)) b!3994195))

(assert (= (and b!3994195 (not res!1621597)) b!3994166))

(assert (= (and b!3994166 (not res!1621588)) b!3994177))

(assert (= (and b!3994177 (not res!1621600)) b!3994168))

(assert (= (and b!3994168 (not res!1621592)) b!3994178))

(assert (= (and b!3994178 (not res!1621604)) b!3994180))

(assert (= (and b!3994180 (not res!1621591)) b!3994172))

(assert (= (and b!3994172 c!691134) b!3994208))

(assert (= (and b!3994172 (not c!691134)) b!3994201))

(assert (= (and b!3994208 res!1621607) b!3994199))

(assert (= (and b!3994172 c!691135) b!3994185))

(assert (= (and b!3994172 (not c!691135)) b!3994167))

(assert (= (and b!3994172 (not res!1621605)) b!3994200))

(assert (= (and b!3994200 (not res!1621582)) b!3994174))

(assert (= (and b!3994174 c!691133) b!3994173))

(assert (= (and b!3994174 (not c!691133)) b!3994169))

(assert (= (and b!3994173 res!1621587) b!3994171))

(assert (= (and start!375924 ((_ is Cons!42718) prefix!494)) b!3994197))

(assert (= b!3994186 b!3994179))

(assert (= b!3994192 b!3994186))

(assert (= start!375924 b!3994192))

(assert (= (and start!375924 ((_ is Cons!42718) suffixResult!105)) b!3994188))

(assert (= (and start!375924 ((_ is Cons!42718) suffix!1299)) b!3994198))

(assert (= (and start!375924 ((_ is Cons!42718) newSuffix!27)) b!3994190))

(assert (= b!3994170 b!3994187))

(assert (= b!3994165 b!3994170))

(assert (= (and start!375924 ((_ is Cons!42720) rules!2999)) b!3994165))

(assert (= (and start!375924 ((_ is Cons!42718) newSuffixResult!27)) b!3994196))

(declare-fun m!4574005 () Bool)

(assert (=> start!375924 m!4574005))

(declare-fun m!4574007 () Bool)

(assert (=> b!3994189 m!4574007))

(declare-fun m!4574009 () Bool)

(assert (=> b!3994189 m!4574009))

(declare-fun m!4574011 () Bool)

(assert (=> b!3994189 m!4574011))

(declare-fun m!4574013 () Bool)

(assert (=> b!3994189 m!4574013))

(declare-fun m!4574015 () Bool)

(assert (=> b!3994189 m!4574015))

(declare-fun m!4574017 () Bool)

(assert (=> b!3994200 m!4574017))

(declare-fun m!4574019 () Bool)

(assert (=> b!3994207 m!4574019))

(declare-fun m!4574021 () Bool)

(assert (=> b!3994207 m!4574021))

(declare-fun m!4574023 () Bool)

(assert (=> b!3994207 m!4574023))

(declare-fun m!4574025 () Bool)

(assert (=> b!3994207 m!4574025))

(declare-fun m!4574027 () Bool)

(assert (=> b!3994209 m!4574027))

(declare-fun m!4574029 () Bool)

(assert (=> b!3994182 m!4574029))

(declare-fun m!4574031 () Bool)

(assert (=> b!3994182 m!4574031))

(declare-fun m!4574033 () Bool)

(assert (=> b!3994182 m!4574033))

(declare-fun m!4574035 () Bool)

(assert (=> b!3994182 m!4574035))

(declare-fun m!4574037 () Bool)

(assert (=> b!3994182 m!4574037))

(declare-fun m!4574039 () Bool)

(assert (=> b!3994182 m!4574039))

(declare-fun m!4574041 () Bool)

(assert (=> b!3994182 m!4574041))

(assert (=> b!3994182 m!4574033))

(declare-fun m!4574043 () Bool)

(assert (=> b!3994168 m!4574043))

(declare-fun m!4574045 () Bool)

(assert (=> b!3994168 m!4574045))

(declare-fun m!4574047 () Bool)

(assert (=> b!3994168 m!4574047))

(declare-fun m!4574049 () Bool)

(assert (=> b!3994166 m!4574049))

(declare-fun m!4574051 () Bool)

(assert (=> b!3994166 m!4574051))

(declare-fun m!4574053 () Bool)

(assert (=> b!3994203 m!4574053))

(declare-fun m!4574055 () Bool)

(assert (=> b!3994203 m!4574055))

(declare-fun m!4574057 () Bool)

(assert (=> b!3994203 m!4574057))

(assert (=> b!3994203 m!4574057))

(declare-fun m!4574059 () Bool)

(assert (=> b!3994203 m!4574059))

(declare-fun m!4574061 () Bool)

(assert (=> b!3994202 m!4574061))

(declare-fun m!4574063 () Bool)

(assert (=> b!3994202 m!4574063))

(declare-fun m!4574065 () Bool)

(assert (=> b!3994202 m!4574065))

(declare-fun m!4574067 () Bool)

(assert (=> b!3994202 m!4574067))

(declare-fun m!4574069 () Bool)

(assert (=> b!3994191 m!4574069))

(declare-fun m!4574071 () Bool)

(assert (=> b!3994191 m!4574071))

(declare-fun m!4574073 () Bool)

(assert (=> b!3994185 m!4574073))

(declare-fun m!4574075 () Bool)

(assert (=> b!3994208 m!4574075))

(declare-fun m!4574077 () Bool)

(assert (=> b!3994208 m!4574077))

(declare-fun m!4574079 () Bool)

(assert (=> b!3994205 m!4574079))

(declare-fun m!4574081 () Bool)

(assert (=> b!3994205 m!4574081))

(declare-fun m!4574083 () Bool)

(assert (=> b!3994205 m!4574083))

(declare-fun m!4574085 () Bool)

(assert (=> b!3994205 m!4574085))

(declare-fun m!4574087 () Bool)

(assert (=> b!3994183 m!4574087))

(declare-fun m!4574089 () Bool)

(assert (=> b!3994183 m!4574089))

(declare-fun m!4574091 () Bool)

(assert (=> b!3994195 m!4574091))

(declare-fun m!4574093 () Bool)

(assert (=> b!3994195 m!4574093))

(declare-fun m!4574095 () Bool)

(assert (=> b!3994195 m!4574095))

(declare-fun m!4574097 () Bool)

(assert (=> b!3994195 m!4574097))

(declare-fun m!4574099 () Bool)

(assert (=> b!3994195 m!4574099))

(declare-fun m!4574101 () Bool)

(assert (=> b!3994195 m!4574101))

(declare-fun m!4574103 () Bool)

(assert (=> b!3994195 m!4574103))

(declare-fun m!4574105 () Bool)

(assert (=> b!3994195 m!4574105))

(declare-fun m!4574107 () Bool)

(assert (=> b!3994195 m!4574107))

(declare-fun m!4574109 () Bool)

(assert (=> b!3994195 m!4574109))

(declare-fun m!4574111 () Bool)

(assert (=> b!3994195 m!4574111))

(assert (=> b!3994195 m!4574095))

(declare-fun m!4574113 () Bool)

(assert (=> b!3994195 m!4574113))

(declare-fun m!4574115 () Bool)

(assert (=> b!3994195 m!4574115))

(declare-fun m!4574117 () Bool)

(assert (=> b!3994195 m!4574117))

(assert (=> b!3994195 m!4574103))

(declare-fun m!4574119 () Bool)

(assert (=> b!3994195 m!4574119))

(assert (=> b!3994195 m!4574109))

(declare-fun m!4574121 () Bool)

(assert (=> b!3994195 m!4574121))

(declare-fun m!4574123 () Bool)

(assert (=> b!3994195 m!4574123))

(declare-fun m!4574125 () Bool)

(assert (=> b!3994195 m!4574125))

(declare-fun m!4574127 () Bool)

(assert (=> b!3994174 m!4574127))

(declare-fun m!4574129 () Bool)

(assert (=> b!3994174 m!4574129))

(declare-fun m!4574131 () Bool)

(assert (=> b!3994174 m!4574131))

(declare-fun m!4574133 () Bool)

(assert (=> b!3994174 m!4574133))

(declare-fun m!4574135 () Bool)

(assert (=> b!3994174 m!4574135))

(declare-fun m!4574137 () Bool)

(assert (=> b!3994177 m!4574137))

(declare-fun m!4574139 () Bool)

(assert (=> b!3994177 m!4574139))

(declare-fun m!4574141 () Bool)

(assert (=> b!3994177 m!4574141))

(declare-fun m!4574143 () Bool)

(assert (=> b!3994175 m!4574143))

(declare-fun m!4574145 () Bool)

(assert (=> b!3994175 m!4574145))

(declare-fun m!4574147 () Bool)

(assert (=> b!3994175 m!4574147))

(declare-fun m!4574149 () Bool)

(assert (=> b!3994175 m!4574149))

(declare-fun m!4574151 () Bool)

(assert (=> b!3994186 m!4574151))

(declare-fun m!4574153 () Bool)

(assert (=> b!3994186 m!4574153))

(declare-fun m!4574155 () Bool)

(assert (=> b!3994206 m!4574155))

(declare-fun m!4574157 () Bool)

(assert (=> b!3994206 m!4574157))

(declare-fun m!4574159 () Bool)

(assert (=> b!3994193 m!4574159))

(declare-fun m!4574161 () Bool)

(assert (=> b!3994193 m!4574161))

(declare-fun m!4574163 () Bool)

(assert (=> b!3994193 m!4574163))

(declare-fun m!4574165 () Bool)

(assert (=> b!3994193 m!4574165))

(declare-fun m!4574167 () Bool)

(assert (=> b!3994210 m!4574167))

(declare-fun m!4574169 () Bool)

(assert (=> b!3994170 m!4574169))

(declare-fun m!4574171 () Bool)

(assert (=> b!3994170 m!4574171))

(declare-fun m!4574173 () Bool)

(assert (=> b!3994192 m!4574173))

(declare-fun m!4574175 () Bool)

(assert (=> b!3994181 m!4574175))

(declare-fun m!4574177 () Bool)

(assert (=> b!3994181 m!4574177))

(declare-fun m!4574179 () Bool)

(assert (=> b!3994181 m!4574179))

(declare-fun m!4574181 () Bool)

(assert (=> b!3994181 m!4574181))

(declare-fun m!4574183 () Bool)

(assert (=> b!3994176 m!4574183))

(declare-fun m!4574185 () Bool)

(assert (=> b!3994173 m!4574185))

(declare-fun m!4574187 () Bool)

(assert (=> b!3994173 m!4574187))

(declare-fun m!4574189 () Bool)

(assert (=> b!3994172 m!4574189))

(declare-fun m!4574191 () Bool)

(assert (=> b!3994172 m!4574191))

(declare-fun m!4574193 () Bool)

(assert (=> b!3994172 m!4574193))

(declare-fun m!4574195 () Bool)

(assert (=> b!3994204 m!4574195))

(declare-fun m!4574197 () Bool)

(assert (=> b!3994180 m!4574197))

(declare-fun m!4574199 () Bool)

(assert (=> b!3994180 m!4574199))

(check-sat (not b!3994166) b_and!306819 b_and!306815 (not b!3994175) (not b!3994172) b_and!306817 (not b!3994181) (not b_next!111653) (not b!3994193) (not b!3994207) (not b!3994170) (not b!3994165) (not b!3994185) (not start!375924) (not b!3994202) (not b!3994205) (not b!3994177) (not b!3994206) (not b!3994176) (not b!3994180) (not b!3994204) (not b!3994192) (not b!3994189) (not b!3994200) (not b!3994182) (not b!3994209) (not b_next!111649) (not b!3994186) (not b!3994208) (not b_next!111655) (not b!3994188) (not b!3994173) (not b!3994174) (not b!3994195) b_and!306821 (not b!3994168) tp_is_empty!20313 (not b!3994190) (not b!3994197) (not b!3994198) (not b!3994191) (not b!3994183) (not b!3994196) (not b_next!111651) (not b!3994210) (not b!3994203))
(check-sat b_and!306819 b_and!306815 (not b_next!111649) (not b_next!111655) b_and!306821 b_and!306817 (not b_next!111653) (not b_next!111651))
(get-model)

(declare-fun b!3994221 () Bool)

(declare-fun e!2476187 () Bool)

(declare-fun tail!6228 (List!42842) List!42842)

(assert (=> b!3994221 (= e!2476187 (isPrefix!3853 (tail!6228 lt!1409363) (tail!6228 lt!1409370)))))

(declare-fun b!3994222 () Bool)

(declare-fun e!2476188 () Bool)

(assert (=> b!3994222 (= e!2476188 (>= (size!31949 lt!1409370) (size!31949 lt!1409363)))))

(declare-fun b!3994220 () Bool)

(declare-fun res!1621621 () Bool)

(assert (=> b!3994220 (=> (not res!1621621) (not e!2476187))))

(declare-fun head!8496 (List!42842) C!23528)

(assert (=> b!3994220 (= res!1621621 (= (head!8496 lt!1409363) (head!8496 lt!1409370)))))

(declare-fun d!1181938 () Bool)

(assert (=> d!1181938 e!2476188))

(declare-fun res!1621622 () Bool)

(assert (=> d!1181938 (=> res!1621622 e!2476188)))

(declare-fun lt!1409412 () Bool)

(assert (=> d!1181938 (= res!1621622 (not lt!1409412))))

(declare-fun e!2476189 () Bool)

(assert (=> d!1181938 (= lt!1409412 e!2476189)))

(declare-fun res!1621619 () Bool)

(assert (=> d!1181938 (=> res!1621619 e!2476189)))

(assert (=> d!1181938 (= res!1621619 ((_ is Nil!42718) lt!1409363))))

(assert (=> d!1181938 (= (isPrefix!3853 lt!1409363 lt!1409370) lt!1409412)))

(declare-fun b!3994219 () Bool)

(assert (=> b!3994219 (= e!2476189 e!2476187)))

(declare-fun res!1621620 () Bool)

(assert (=> b!3994219 (=> (not res!1621620) (not e!2476187))))

(assert (=> b!3994219 (= res!1621620 (not ((_ is Nil!42718) lt!1409370)))))

(assert (= (and d!1181938 (not res!1621619)) b!3994219))

(assert (= (and b!3994219 res!1621620) b!3994220))

(assert (= (and b!3994220 res!1621621) b!3994221))

(assert (= (and d!1181938 (not res!1621622)) b!3994222))

(declare-fun m!4574201 () Bool)

(assert (=> b!3994221 m!4574201))

(declare-fun m!4574203 () Bool)

(assert (=> b!3994221 m!4574203))

(assert (=> b!3994221 m!4574201))

(assert (=> b!3994221 m!4574203))

(declare-fun m!4574205 () Bool)

(assert (=> b!3994221 m!4574205))

(declare-fun m!4574207 () Bool)

(assert (=> b!3994222 m!4574207))

(assert (=> b!3994222 m!4574053))

(declare-fun m!4574209 () Bool)

(assert (=> b!3994220 m!4574209))

(declare-fun m!4574211 () Bool)

(assert (=> b!3994220 m!4574211))

(assert (=> b!3994189 d!1181938))

(declare-fun b!3994225 () Bool)

(declare-fun e!2476190 () Bool)

(assert (=> b!3994225 (= e!2476190 (isPrefix!3853 (tail!6228 prefix!494) (tail!6228 lt!1409384)))))

(declare-fun b!3994226 () Bool)

(declare-fun e!2476191 () Bool)

(assert (=> b!3994226 (= e!2476191 (>= (size!31949 lt!1409384) (size!31949 prefix!494)))))

(declare-fun b!3994224 () Bool)

(declare-fun res!1621625 () Bool)

(assert (=> b!3994224 (=> (not res!1621625) (not e!2476190))))

(assert (=> b!3994224 (= res!1621625 (= (head!8496 prefix!494) (head!8496 lt!1409384)))))

(declare-fun d!1181940 () Bool)

(assert (=> d!1181940 e!2476191))

(declare-fun res!1621626 () Bool)

(assert (=> d!1181940 (=> res!1621626 e!2476191)))

(declare-fun lt!1409413 () Bool)

(assert (=> d!1181940 (= res!1621626 (not lt!1409413))))

(declare-fun e!2476192 () Bool)

(assert (=> d!1181940 (= lt!1409413 e!2476192)))

(declare-fun res!1621623 () Bool)

(assert (=> d!1181940 (=> res!1621623 e!2476192)))

(assert (=> d!1181940 (= res!1621623 ((_ is Nil!42718) prefix!494))))

(assert (=> d!1181940 (= (isPrefix!3853 prefix!494 lt!1409384) lt!1409413)))

(declare-fun b!3994223 () Bool)

(assert (=> b!3994223 (= e!2476192 e!2476190)))

(declare-fun res!1621624 () Bool)

(assert (=> b!3994223 (=> (not res!1621624) (not e!2476190))))

(assert (=> b!3994223 (= res!1621624 (not ((_ is Nil!42718) lt!1409384)))))

(assert (= (and d!1181940 (not res!1621623)) b!3994223))

(assert (= (and b!3994223 res!1621624) b!3994224))

(assert (= (and b!3994224 res!1621625) b!3994225))

(assert (= (and d!1181940 (not res!1621626)) b!3994226))

(declare-fun m!4574213 () Bool)

(assert (=> b!3994225 m!4574213))

(declare-fun m!4574215 () Bool)

(assert (=> b!3994225 m!4574215))

(assert (=> b!3994225 m!4574213))

(assert (=> b!3994225 m!4574215))

(declare-fun m!4574217 () Bool)

(assert (=> b!3994225 m!4574217))

(declare-fun m!4574219 () Bool)

(assert (=> b!3994226 m!4574219))

(assert (=> b!3994226 m!4574055))

(declare-fun m!4574221 () Bool)

(assert (=> b!3994224 m!4574221))

(declare-fun m!4574223 () Bool)

(assert (=> b!3994224 m!4574223))

(assert (=> b!3994189 d!1181940))

(declare-fun d!1181942 () Bool)

(assert (=> d!1181942 (isPrefix!3853 prefix!494 (++!11168 prefix!494 suffix!1299))))

(declare-fun lt!1409416 () Unit!61548)

(declare-fun choose!24054 (List!42842 List!42842) Unit!61548)

(assert (=> d!1181942 (= lt!1409416 (choose!24054 prefix!494 suffix!1299))))

(assert (=> d!1181942 (= (lemmaConcatTwoListThenFirstIsPrefix!2696 prefix!494 suffix!1299) lt!1409416)))

(declare-fun bs!588553 () Bool)

(assert (= bs!588553 d!1181942))

(assert (=> bs!588553 m!4574157))

(assert (=> bs!588553 m!4574157))

(declare-fun m!4574225 () Bool)

(assert (=> bs!588553 m!4574225))

(declare-fun m!4574227 () Bool)

(assert (=> bs!588553 m!4574227))

(assert (=> b!3994189 d!1181942))

(declare-fun b!3994229 () Bool)

(declare-fun e!2476193 () Bool)

(assert (=> b!3994229 (= e!2476193 (isPrefix!3853 (tail!6228 lt!1409363) (tail!6228 lt!1409384)))))

(declare-fun b!3994230 () Bool)

(declare-fun e!2476194 () Bool)

(assert (=> b!3994230 (= e!2476194 (>= (size!31949 lt!1409384) (size!31949 lt!1409363)))))

(declare-fun b!3994228 () Bool)

(declare-fun res!1621629 () Bool)

(assert (=> b!3994228 (=> (not res!1621629) (not e!2476193))))

(assert (=> b!3994228 (= res!1621629 (= (head!8496 lt!1409363) (head!8496 lt!1409384)))))

(declare-fun d!1181944 () Bool)

(assert (=> d!1181944 e!2476194))

(declare-fun res!1621630 () Bool)

(assert (=> d!1181944 (=> res!1621630 e!2476194)))

(declare-fun lt!1409417 () Bool)

(assert (=> d!1181944 (= res!1621630 (not lt!1409417))))

(declare-fun e!2476195 () Bool)

(assert (=> d!1181944 (= lt!1409417 e!2476195)))

(declare-fun res!1621627 () Bool)

(assert (=> d!1181944 (=> res!1621627 e!2476195)))

(assert (=> d!1181944 (= res!1621627 ((_ is Nil!42718) lt!1409363))))

(assert (=> d!1181944 (= (isPrefix!3853 lt!1409363 lt!1409384) lt!1409417)))

(declare-fun b!3994227 () Bool)

(assert (=> b!3994227 (= e!2476195 e!2476193)))

(declare-fun res!1621628 () Bool)

(assert (=> b!3994227 (=> (not res!1621628) (not e!2476193))))

(assert (=> b!3994227 (= res!1621628 (not ((_ is Nil!42718) lt!1409384)))))

(assert (= (and d!1181944 (not res!1621627)) b!3994227))

(assert (= (and b!3994227 res!1621628) b!3994228))

(assert (= (and b!3994228 res!1621629) b!3994229))

(assert (= (and d!1181944 (not res!1621630)) b!3994230))

(assert (=> b!3994229 m!4574201))

(assert (=> b!3994229 m!4574215))

(assert (=> b!3994229 m!4574201))

(assert (=> b!3994229 m!4574215))

(declare-fun m!4574229 () Bool)

(assert (=> b!3994229 m!4574229))

(assert (=> b!3994230 m!4574219))

(assert (=> b!3994230 m!4574053))

(assert (=> b!3994228 m!4574209))

(assert (=> b!3994228 m!4574223))

(assert (=> b!3994189 d!1181944))

(declare-fun d!1181946 () Bool)

(assert (=> d!1181946 (isPrefix!3853 lt!1409363 (++!11168 lt!1409363 suffixResult!105))))

(declare-fun lt!1409418 () Unit!61548)

(assert (=> d!1181946 (= lt!1409418 (choose!24054 lt!1409363 suffixResult!105))))

(assert (=> d!1181946 (= (lemmaConcatTwoListThenFirstIsPrefix!2696 lt!1409363 suffixResult!105) lt!1409418)))

(declare-fun bs!588554 () Bool)

(assert (= bs!588554 d!1181946))

(assert (=> bs!588554 m!4574159))

(assert (=> bs!588554 m!4574159))

(declare-fun m!4574231 () Bool)

(assert (=> bs!588554 m!4574231))

(declare-fun m!4574233 () Bool)

(assert (=> bs!588554 m!4574233))

(assert (=> b!3994189 d!1181946))

(declare-fun b!3994233 () Bool)

(declare-fun e!2476196 () Bool)

(assert (=> b!3994233 (= e!2476196 (isPrefix!3853 (tail!6228 lt!1409393) (tail!6228 lt!1409384)))))

(declare-fun b!3994234 () Bool)

(declare-fun e!2476197 () Bool)

(assert (=> b!3994234 (= e!2476197 (>= (size!31949 lt!1409384) (size!31949 lt!1409393)))))

(declare-fun b!3994232 () Bool)

(declare-fun res!1621633 () Bool)

(assert (=> b!3994232 (=> (not res!1621633) (not e!2476196))))

(assert (=> b!3994232 (= res!1621633 (= (head!8496 lt!1409393) (head!8496 lt!1409384)))))

(declare-fun d!1181948 () Bool)

(assert (=> d!1181948 e!2476197))

(declare-fun res!1621634 () Bool)

(assert (=> d!1181948 (=> res!1621634 e!2476197)))

(declare-fun lt!1409419 () Bool)

(assert (=> d!1181948 (= res!1621634 (not lt!1409419))))

(declare-fun e!2476198 () Bool)

(assert (=> d!1181948 (= lt!1409419 e!2476198)))

(declare-fun res!1621631 () Bool)

(assert (=> d!1181948 (=> res!1621631 e!2476198)))

(assert (=> d!1181948 (= res!1621631 ((_ is Nil!42718) lt!1409393))))

(assert (=> d!1181948 (= (isPrefix!3853 lt!1409393 lt!1409384) lt!1409419)))

(declare-fun b!3994231 () Bool)

(assert (=> b!3994231 (= e!2476198 e!2476196)))

(declare-fun res!1621632 () Bool)

(assert (=> b!3994231 (=> (not res!1621632) (not e!2476196))))

(assert (=> b!3994231 (= res!1621632 (not ((_ is Nil!42718) lt!1409384)))))

(assert (= (and d!1181948 (not res!1621631)) b!3994231))

(assert (= (and b!3994231 res!1621632) b!3994232))

(assert (= (and b!3994232 res!1621633) b!3994233))

(assert (= (and d!1181948 (not res!1621634)) b!3994234))

(declare-fun m!4574235 () Bool)

(assert (=> b!3994233 m!4574235))

(assert (=> b!3994233 m!4574215))

(assert (=> b!3994233 m!4574235))

(assert (=> b!3994233 m!4574215))

(declare-fun m!4574237 () Bool)

(assert (=> b!3994233 m!4574237))

(assert (=> b!3994234 m!4574219))

(assert (=> b!3994234 m!4574107))

(declare-fun m!4574239 () Bool)

(assert (=> b!3994232 m!4574239))

(assert (=> b!3994232 m!4574223))

(assert (=> b!3994168 d!1181948))

(declare-fun b!3994237 () Bool)

(declare-fun e!2476199 () Bool)

(assert (=> b!3994237 (= e!2476199 (isPrefix!3853 (tail!6228 lt!1409393) (tail!6228 lt!1409391)))))

(declare-fun b!3994238 () Bool)

(declare-fun e!2476200 () Bool)

(assert (=> b!3994238 (= e!2476200 (>= (size!31949 lt!1409391) (size!31949 lt!1409393)))))

(declare-fun b!3994236 () Bool)

(declare-fun res!1621637 () Bool)

(assert (=> b!3994236 (=> (not res!1621637) (not e!2476199))))

(assert (=> b!3994236 (= res!1621637 (= (head!8496 lt!1409393) (head!8496 lt!1409391)))))

(declare-fun d!1181950 () Bool)

(assert (=> d!1181950 e!2476200))

(declare-fun res!1621638 () Bool)

(assert (=> d!1181950 (=> res!1621638 e!2476200)))

(declare-fun lt!1409420 () Bool)

(assert (=> d!1181950 (= res!1621638 (not lt!1409420))))

(declare-fun e!2476201 () Bool)

(assert (=> d!1181950 (= lt!1409420 e!2476201)))

(declare-fun res!1621635 () Bool)

(assert (=> d!1181950 (=> res!1621635 e!2476201)))

(assert (=> d!1181950 (= res!1621635 ((_ is Nil!42718) lt!1409393))))

(assert (=> d!1181950 (= (isPrefix!3853 lt!1409393 lt!1409391) lt!1409420)))

(declare-fun b!3994235 () Bool)

(assert (=> b!3994235 (= e!2476201 e!2476199)))

(declare-fun res!1621636 () Bool)

(assert (=> b!3994235 (=> (not res!1621636) (not e!2476199))))

(assert (=> b!3994235 (= res!1621636 (not ((_ is Nil!42718) lt!1409391)))))

(assert (= (and d!1181950 (not res!1621635)) b!3994235))

(assert (= (and b!3994235 res!1621636) b!3994236))

(assert (= (and b!3994236 res!1621637) b!3994237))

(assert (= (and d!1181950 (not res!1621638)) b!3994238))

(assert (=> b!3994237 m!4574235))

(declare-fun m!4574241 () Bool)

(assert (=> b!3994237 m!4574241))

(assert (=> b!3994237 m!4574235))

(assert (=> b!3994237 m!4574241))

(declare-fun m!4574243 () Bool)

(assert (=> b!3994237 m!4574243))

(declare-fun m!4574245 () Bool)

(assert (=> b!3994238 m!4574245))

(assert (=> b!3994238 m!4574107))

(assert (=> b!3994236 m!4574239))

(declare-fun m!4574247 () Bool)

(assert (=> b!3994236 m!4574247))

(assert (=> b!3994168 d!1181950))

(declare-fun d!1181952 () Bool)

(assert (=> d!1181952 (isPrefix!3853 lt!1409393 (++!11168 lt!1409386 lt!1409373))))

(declare-fun lt!1409423 () Unit!61548)

(declare-fun choose!24055 (List!42842 List!42842 List!42842) Unit!61548)

(assert (=> d!1181952 (= lt!1409423 (choose!24055 lt!1409393 lt!1409386 lt!1409373))))

(assert (=> d!1181952 (isPrefix!3853 lt!1409393 lt!1409386)))

(assert (=> d!1181952 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!686 lt!1409393 lt!1409386 lt!1409373) lt!1409423)))

(declare-fun bs!588555 () Bool)

(assert (= bs!588555 d!1181952))

(assert (=> bs!588555 m!4574139))

(assert (=> bs!588555 m!4574139))

(declare-fun m!4574249 () Bool)

(assert (=> bs!588555 m!4574249))

(declare-fun m!4574251 () Bool)

(assert (=> bs!588555 m!4574251))

(assert (=> bs!588555 m!4574017))

(assert (=> b!3994168 d!1181952))

(declare-fun d!1181954 () Bool)

(assert (=> d!1181954 (= (isEmpty!25532 rules!2999) ((_ is Nil!42720) rules!2999))))

(assert (=> b!3994210 d!1181954))

(declare-fun d!1181956 () Bool)

(declare-fun lt!1409426 () Int)

(assert (=> d!1181956 (>= lt!1409426 0)))

(declare-fun e!2476204 () Int)

(assert (=> d!1181956 (= lt!1409426 e!2476204)))

(declare-fun c!691140 () Bool)

(assert (=> d!1181956 (= c!691140 ((_ is Nil!42718) (originalCharacters!7366 token!484)))))

(assert (=> d!1181956 (= (size!31949 (originalCharacters!7366 token!484)) lt!1409426)))

(declare-fun b!3994243 () Bool)

(assert (=> b!3994243 (= e!2476204 0)))

(declare-fun b!3994244 () Bool)

(assert (=> b!3994244 (= e!2476204 (+ 1 (size!31949 (t!331929 (originalCharacters!7366 token!484)))))))

(assert (= (and d!1181956 c!691140) b!3994243))

(assert (= (and d!1181956 (not c!691140)) b!3994244))

(declare-fun m!4574253 () Bool)

(assert (=> b!3994244 m!4574253))

(assert (=> b!3994209 d!1181956))

(declare-fun b!3994255 () Bool)

(declare-fun e!2476212 () Bool)

(declare-fun inv!15 (TokenValue!6996) Bool)

(assert (=> b!3994255 (= e!2476212 (inv!15 (value!213465 token!484)))))

(declare-fun d!1181958 () Bool)

(declare-fun c!691146 () Bool)

(assert (=> d!1181958 (= c!691146 ((_ is IntegerValue!20988) (value!213465 token!484)))))

(declare-fun e!2476211 () Bool)

(assert (=> d!1181958 (= (inv!21 (value!213465 token!484)) e!2476211)))

(declare-fun b!3994256 () Bool)

(declare-fun inv!16 (TokenValue!6996) Bool)

(assert (=> b!3994256 (= e!2476211 (inv!16 (value!213465 token!484)))))

(declare-fun b!3994257 () Bool)

(declare-fun res!1621641 () Bool)

(assert (=> b!3994257 (=> res!1621641 e!2476212)))

(assert (=> b!3994257 (= res!1621641 (not ((_ is IntegerValue!20990) (value!213465 token!484))))))

(declare-fun e!2476213 () Bool)

(assert (=> b!3994257 (= e!2476213 e!2476212)))

(declare-fun b!3994258 () Bool)

(assert (=> b!3994258 (= e!2476211 e!2476213)))

(declare-fun c!691145 () Bool)

(assert (=> b!3994258 (= c!691145 ((_ is IntegerValue!20989) (value!213465 token!484)))))

(declare-fun b!3994259 () Bool)

(declare-fun inv!17 (TokenValue!6996) Bool)

(assert (=> b!3994259 (= e!2476213 (inv!17 (value!213465 token!484)))))

(assert (= (and d!1181958 c!691146) b!3994256))

(assert (= (and d!1181958 (not c!691146)) b!3994258))

(assert (= (and b!3994258 c!691145) b!3994259))

(assert (= (and b!3994258 (not c!691145)) b!3994257))

(assert (= (and b!3994257 (not res!1621641)) b!3994255))

(declare-fun m!4574255 () Bool)

(assert (=> b!3994255 m!4574255))

(declare-fun m!4574257 () Bool)

(assert (=> b!3994256 m!4574257))

(declare-fun m!4574259 () Bool)

(assert (=> b!3994259 m!4574259))

(assert (=> b!3994192 d!1181958))

(declare-fun b!3994268 () Bool)

(declare-fun e!2476218 () List!42842)

(assert (=> b!3994268 (= e!2476218 newSuffix!27)))

(declare-fun b!3994270 () Bool)

(declare-fun res!1621646 () Bool)

(declare-fun e!2476219 () Bool)

(assert (=> b!3994270 (=> (not res!1621646) (not e!2476219))))

(declare-fun lt!1409429 () List!42842)

(assert (=> b!3994270 (= res!1621646 (= (size!31949 lt!1409429) (+ (size!31949 prefix!494) (size!31949 newSuffix!27))))))

(declare-fun b!3994269 () Bool)

(assert (=> b!3994269 (= e!2476218 (Cons!42718 (h!48138 prefix!494) (++!11168 (t!331929 prefix!494) newSuffix!27)))))

(declare-fun b!3994271 () Bool)

(assert (=> b!3994271 (= e!2476219 (or (not (= newSuffix!27 Nil!42718)) (= lt!1409429 prefix!494)))))

(declare-fun d!1181960 () Bool)

(assert (=> d!1181960 e!2476219))

(declare-fun res!1621647 () Bool)

(assert (=> d!1181960 (=> (not res!1621647) (not e!2476219))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6480 (List!42842) (InoxSet C!23528))

(assert (=> d!1181960 (= res!1621647 (= (content!6480 lt!1409429) ((_ map or) (content!6480 prefix!494) (content!6480 newSuffix!27))))))

(assert (=> d!1181960 (= lt!1409429 e!2476218)))

(declare-fun c!691149 () Bool)

(assert (=> d!1181960 (= c!691149 ((_ is Nil!42718) prefix!494))))

(assert (=> d!1181960 (= (++!11168 prefix!494 newSuffix!27) lt!1409429)))

(assert (= (and d!1181960 c!691149) b!3994268))

(assert (= (and d!1181960 (not c!691149)) b!3994269))

(assert (= (and d!1181960 res!1621647) b!3994270))

(assert (= (and b!3994270 res!1621646) b!3994271))

(declare-fun m!4574261 () Bool)

(assert (=> b!3994270 m!4574261))

(assert (=> b!3994270 m!4574055))

(assert (=> b!3994270 m!4574089))

(declare-fun m!4574263 () Bool)

(assert (=> b!3994269 m!4574263))

(declare-fun m!4574265 () Bool)

(assert (=> d!1181960 m!4574265))

(declare-fun m!4574267 () Bool)

(assert (=> d!1181960 m!4574267))

(declare-fun m!4574269 () Bool)

(assert (=> d!1181960 m!4574269))

(assert (=> b!3994191 d!1181960))

(declare-fun b!3994272 () Bool)

(declare-fun e!2476220 () List!42842)

(assert (=> b!3994272 (= e!2476220 newSuffixResult!27)))

(declare-fun b!3994274 () Bool)

(declare-fun res!1621648 () Bool)

(declare-fun e!2476221 () Bool)

(assert (=> b!3994274 (=> (not res!1621648) (not e!2476221))))

(declare-fun lt!1409430 () List!42842)

(assert (=> b!3994274 (= res!1621648 (= (size!31949 lt!1409430) (+ (size!31949 lt!1409363) (size!31949 newSuffixResult!27))))))

(declare-fun b!3994273 () Bool)

(assert (=> b!3994273 (= e!2476220 (Cons!42718 (h!48138 lt!1409363) (++!11168 (t!331929 lt!1409363) newSuffixResult!27)))))

(declare-fun b!3994275 () Bool)

(assert (=> b!3994275 (= e!2476221 (or (not (= newSuffixResult!27 Nil!42718)) (= lt!1409430 lt!1409363)))))

(declare-fun d!1181962 () Bool)

(assert (=> d!1181962 e!2476221))

(declare-fun res!1621649 () Bool)

(assert (=> d!1181962 (=> (not res!1621649) (not e!2476221))))

(assert (=> d!1181962 (= res!1621649 (= (content!6480 lt!1409430) ((_ map or) (content!6480 lt!1409363) (content!6480 newSuffixResult!27))))))

(assert (=> d!1181962 (= lt!1409430 e!2476220)))

(declare-fun c!691150 () Bool)

(assert (=> d!1181962 (= c!691150 ((_ is Nil!42718) lt!1409363))))

(assert (=> d!1181962 (= (++!11168 lt!1409363 newSuffixResult!27) lt!1409430)))

(assert (= (and d!1181962 c!691150) b!3994272))

(assert (= (and d!1181962 (not c!691150)) b!3994273))

(assert (= (and d!1181962 res!1621649) b!3994274))

(assert (= (and b!3994274 res!1621648) b!3994275))

(declare-fun m!4574271 () Bool)

(assert (=> b!3994274 m!4574271))

(assert (=> b!3994274 m!4574053))

(declare-fun m!4574273 () Bool)

(assert (=> b!3994274 m!4574273))

(declare-fun m!4574275 () Bool)

(assert (=> b!3994273 m!4574275))

(declare-fun m!4574277 () Bool)

(assert (=> d!1181962 m!4574277))

(declare-fun m!4574279 () Bool)

(assert (=> d!1181962 m!4574279))

(declare-fun m!4574281 () Bool)

(assert (=> d!1181962 m!4574281))

(assert (=> b!3994191 d!1181962))

(declare-fun d!1181964 () Bool)

(assert (=> d!1181964 (= (inv!57053 (tag!7626 (h!48140 rules!2999))) (= (mod (str.len (value!213464 (tag!7626 (h!48140 rules!2999)))) 2) 0))))

(assert (=> b!3994170 d!1181964))

(declare-fun d!1181966 () Bool)

(declare-fun res!1621652 () Bool)

(declare-fun e!2476224 () Bool)

(assert (=> d!1181966 (=> (not res!1621652) (not e!2476224))))

(declare-fun semiInverseModEq!2902 (Int Int) Bool)

(assert (=> d!1181966 (= res!1621652 (semiInverseModEq!2902 (toChars!9113 (transformation!6766 (h!48140 rules!2999))) (toValue!9254 (transformation!6766 (h!48140 rules!2999)))))))

(assert (=> d!1181966 (= (inv!57056 (transformation!6766 (h!48140 rules!2999))) e!2476224)))

(declare-fun b!3994278 () Bool)

(declare-fun equivClasses!2801 (Int Int) Bool)

(assert (=> b!3994278 (= e!2476224 (equivClasses!2801 (toChars!9113 (transformation!6766 (h!48140 rules!2999))) (toValue!9254 (transformation!6766 (h!48140 rules!2999)))))))

(assert (= (and d!1181966 res!1621652) b!3994278))

(declare-fun m!4574283 () Bool)

(assert (=> d!1181966 m!4574283))

(declare-fun m!4574285 () Bool)

(assert (=> b!3994278 m!4574285))

(assert (=> b!3994170 d!1181966))

(declare-fun b!3994302 () Bool)

(declare-fun e!2476235 () Bool)

(declare-fun e!2476234 () Bool)

(assert (=> b!3994302 (= e!2476235 e!2476234)))

(declare-fun res!1621672 () Bool)

(assert (=> b!3994302 (=> (not res!1621672) (not e!2476234))))

(declare-fun lt!1409447 () Option!9180)

(declare-fun isDefined!7047 (Option!9180) Bool)

(assert (=> b!3994302 (= res!1621672 (isDefined!7047 lt!1409447))))

(declare-fun d!1181968 () Bool)

(assert (=> d!1181968 e!2476235))

(declare-fun res!1621675 () Bool)

(assert (=> d!1181968 (=> res!1621675 e!2476235)))

(declare-fun isEmpty!25535 (Option!9180) Bool)

(assert (=> d!1181968 (= res!1621675 (isEmpty!25535 lt!1409447))))

(declare-fun e!2476236 () Option!9180)

(assert (=> d!1181968 (= lt!1409447 e!2476236)))

(declare-fun c!691153 () Bool)

(assert (=> d!1181968 (= c!691153 (and ((_ is Cons!42720) rules!2999) ((_ is Nil!42720) (t!331931 rules!2999))))))

(declare-fun lt!1409446 () Unit!61548)

(declare-fun lt!1409444 () Unit!61548)

(assert (=> d!1181968 (= lt!1409446 lt!1409444)))

(assert (=> d!1181968 (isPrefix!3853 lt!1409384 lt!1409384)))

(assert (=> d!1181968 (= lt!1409444 (lemmaIsPrefixRefl!2445 lt!1409384 lt!1409384))))

(declare-fun rulesValidInductive!2462 (LexerInterface!6355 List!42844) Bool)

(assert (=> d!1181968 (rulesValidInductive!2462 thiss!21717 rules!2999)))

(assert (=> d!1181968 (= (maxPrefix!3653 thiss!21717 rules!2999 lt!1409384) lt!1409447)))

(declare-fun b!3994303 () Bool)

(declare-fun res!1621673 () Bool)

(assert (=> b!3994303 (=> (not res!1621673) (not e!2476234))))

(declare-fun get!14055 (Option!9180) tuple2!41916)

(assert (=> b!3994303 (= res!1621673 (= (value!213465 (_1!24092 (get!14055 lt!1409447))) (apply!9977 (transformation!6766 (rule!9790 (_1!24092 (get!14055 lt!1409447)))) (seqFromList!5005 (originalCharacters!7366 (_1!24092 (get!14055 lt!1409447)))))))))

(declare-fun bm!285882 () Bool)

(declare-fun call!285887 () Option!9180)

(assert (=> bm!285882 (= call!285887 (maxPrefixOneRule!2687 thiss!21717 (h!48140 rules!2999) lt!1409384))))

(declare-fun b!3994304 () Bool)

(assert (=> b!3994304 (= e!2476236 call!285887)))

(declare-fun b!3994305 () Bool)

(declare-fun res!1621674 () Bool)

(assert (=> b!3994305 (=> (not res!1621674) (not e!2476234))))

(assert (=> b!3994305 (= res!1621674 (< (size!31949 (_2!24092 (get!14055 lt!1409447))) (size!31949 lt!1409384)))))

(declare-fun b!3994306 () Bool)

(declare-fun res!1621671 () Bool)

(assert (=> b!3994306 (=> (not res!1621671) (not e!2476234))))

(assert (=> b!3994306 (= res!1621671 (matchR!5648 (regex!6766 (rule!9790 (_1!24092 (get!14055 lt!1409447)))) (list!15862 (charsOf!4582 (_1!24092 (get!14055 lt!1409447))))))))

(declare-fun b!3994307 () Bool)

(declare-fun res!1621669 () Bool)

(assert (=> b!3994307 (=> (not res!1621669) (not e!2476234))))

(assert (=> b!3994307 (= res!1621669 (= (++!11168 (list!15862 (charsOf!4582 (_1!24092 (get!14055 lt!1409447)))) (_2!24092 (get!14055 lt!1409447))) lt!1409384))))

(declare-fun b!3994308 () Bool)

(assert (=> b!3994308 (= e!2476234 (contains!8501 rules!2999 (rule!9790 (_1!24092 (get!14055 lt!1409447)))))))

(declare-fun b!3994309 () Bool)

(declare-fun res!1621670 () Bool)

(assert (=> b!3994309 (=> (not res!1621670) (not e!2476234))))

(assert (=> b!3994309 (= res!1621670 (= (list!15862 (charsOf!4582 (_1!24092 (get!14055 lt!1409447)))) (originalCharacters!7366 (_1!24092 (get!14055 lt!1409447)))))))

(declare-fun b!3994310 () Bool)

(declare-fun lt!1409448 () Option!9180)

(declare-fun lt!1409445 () Option!9180)

(assert (=> b!3994310 (= e!2476236 (ite (and ((_ is None!9179) lt!1409448) ((_ is None!9179) lt!1409445)) None!9179 (ite ((_ is None!9179) lt!1409445) lt!1409448 (ite ((_ is None!9179) lt!1409448) lt!1409445 (ite (>= (size!31948 (_1!24092 (v!39537 lt!1409448))) (size!31948 (_1!24092 (v!39537 lt!1409445)))) lt!1409448 lt!1409445)))))))

(assert (=> b!3994310 (= lt!1409448 call!285887)))

(assert (=> b!3994310 (= lt!1409445 (maxPrefix!3653 thiss!21717 (t!331931 rules!2999) lt!1409384))))

(assert (= (and d!1181968 c!691153) b!3994304))

(assert (= (and d!1181968 (not c!691153)) b!3994310))

(assert (= (or b!3994304 b!3994310) bm!285882))

(assert (= (and d!1181968 (not res!1621675)) b!3994302))

(assert (= (and b!3994302 res!1621672) b!3994309))

(assert (= (and b!3994309 res!1621670) b!3994305))

(assert (= (and b!3994305 res!1621674) b!3994307))

(assert (= (and b!3994307 res!1621669) b!3994303))

(assert (= (and b!3994303 res!1621673) b!3994306))

(assert (= (and b!3994306 res!1621671) b!3994308))

(declare-fun m!4574297 () Bool)

(assert (=> d!1181968 m!4574297))

(assert (=> d!1181968 m!4574065))

(assert (=> d!1181968 m!4574067))

(declare-fun m!4574299 () Bool)

(assert (=> d!1181968 m!4574299))

(declare-fun m!4574301 () Bool)

(assert (=> b!3994305 m!4574301))

(declare-fun m!4574303 () Bool)

(assert (=> b!3994305 m!4574303))

(assert (=> b!3994305 m!4574219))

(declare-fun m!4574305 () Bool)

(assert (=> b!3994310 m!4574305))

(assert (=> b!3994303 m!4574301))

(declare-fun m!4574307 () Bool)

(assert (=> b!3994303 m!4574307))

(assert (=> b!3994303 m!4574307))

(declare-fun m!4574309 () Bool)

(assert (=> b!3994303 m!4574309))

(declare-fun m!4574311 () Bool)

(assert (=> b!3994302 m!4574311))

(declare-fun m!4574313 () Bool)

(assert (=> bm!285882 m!4574313))

(assert (=> b!3994308 m!4574301))

(declare-fun m!4574315 () Bool)

(assert (=> b!3994308 m!4574315))

(assert (=> b!3994307 m!4574301))

(declare-fun m!4574317 () Bool)

(assert (=> b!3994307 m!4574317))

(assert (=> b!3994307 m!4574317))

(declare-fun m!4574319 () Bool)

(assert (=> b!3994307 m!4574319))

(assert (=> b!3994307 m!4574319))

(declare-fun m!4574321 () Bool)

(assert (=> b!3994307 m!4574321))

(assert (=> b!3994306 m!4574301))

(assert (=> b!3994306 m!4574317))

(assert (=> b!3994306 m!4574317))

(assert (=> b!3994306 m!4574319))

(assert (=> b!3994306 m!4574319))

(declare-fun m!4574323 () Bool)

(assert (=> b!3994306 m!4574323))

(assert (=> b!3994309 m!4574301))

(assert (=> b!3994309 m!4574317))

(assert (=> b!3994309 m!4574317))

(assert (=> b!3994309 m!4574319))

(assert (=> b!3994206 d!1181968))

(declare-fun b!3994311 () Bool)

(declare-fun e!2476237 () List!42842)

(assert (=> b!3994311 (= e!2476237 suffix!1299)))

(declare-fun b!3994313 () Bool)

(declare-fun res!1621676 () Bool)

(declare-fun e!2476238 () Bool)

(assert (=> b!3994313 (=> (not res!1621676) (not e!2476238))))

(declare-fun lt!1409449 () List!42842)

(assert (=> b!3994313 (= res!1621676 (= (size!31949 lt!1409449) (+ (size!31949 prefix!494) (size!31949 suffix!1299))))))

(declare-fun b!3994312 () Bool)

(assert (=> b!3994312 (= e!2476237 (Cons!42718 (h!48138 prefix!494) (++!11168 (t!331929 prefix!494) suffix!1299)))))

(declare-fun b!3994314 () Bool)

(assert (=> b!3994314 (= e!2476238 (or (not (= suffix!1299 Nil!42718)) (= lt!1409449 prefix!494)))))

(declare-fun d!1181976 () Bool)

(assert (=> d!1181976 e!2476238))

(declare-fun res!1621677 () Bool)

(assert (=> d!1181976 (=> (not res!1621677) (not e!2476238))))

(assert (=> d!1181976 (= res!1621677 (= (content!6480 lt!1409449) ((_ map or) (content!6480 prefix!494) (content!6480 suffix!1299))))))

(assert (=> d!1181976 (= lt!1409449 e!2476237)))

(declare-fun c!691154 () Bool)

(assert (=> d!1181976 (= c!691154 ((_ is Nil!42718) prefix!494))))

(assert (=> d!1181976 (= (++!11168 prefix!494 suffix!1299) lt!1409449)))

(assert (= (and d!1181976 c!691154) b!3994311))

(assert (= (and d!1181976 (not c!691154)) b!3994312))

(assert (= (and d!1181976 res!1621677) b!3994313))

(assert (= (and b!3994313 res!1621676) b!3994314))

(declare-fun m!4574325 () Bool)

(assert (=> b!3994313 m!4574325))

(assert (=> b!3994313 m!4574055))

(assert (=> b!3994313 m!4574087))

(declare-fun m!4574327 () Bool)

(assert (=> b!3994312 m!4574327))

(declare-fun m!4574329 () Bool)

(assert (=> d!1181976 m!4574329))

(assert (=> d!1181976 m!4574267))

(declare-fun m!4574331 () Bool)

(assert (=> d!1181976 m!4574331))

(assert (=> b!3994206 d!1181976))

(declare-fun b!3994315 () Bool)

(declare-fun e!2476240 () Bool)

(declare-fun e!2476239 () Bool)

(assert (=> b!3994315 (= e!2476240 e!2476239)))

(declare-fun res!1621681 () Bool)

(assert (=> b!3994315 (=> (not res!1621681) (not e!2476239))))

(declare-fun lt!1409453 () Option!9180)

(assert (=> b!3994315 (= res!1621681 (isDefined!7047 lt!1409453))))

(declare-fun d!1181978 () Bool)

(assert (=> d!1181978 e!2476240))

(declare-fun res!1621684 () Bool)

(assert (=> d!1181978 (=> res!1621684 e!2476240)))

(assert (=> d!1181978 (= res!1621684 (isEmpty!25535 lt!1409453))))

(declare-fun e!2476241 () Option!9180)

(assert (=> d!1181978 (= lt!1409453 e!2476241)))

(declare-fun c!691155 () Bool)

(assert (=> d!1181978 (= c!691155 (and ((_ is Cons!42720) rules!2999) ((_ is Nil!42720) (t!331931 rules!2999))))))

(declare-fun lt!1409452 () Unit!61548)

(declare-fun lt!1409450 () Unit!61548)

(assert (=> d!1181978 (= lt!1409452 lt!1409450)))

(assert (=> d!1181978 (isPrefix!3853 lt!1409386 lt!1409386)))

(assert (=> d!1181978 (= lt!1409450 (lemmaIsPrefixRefl!2445 lt!1409386 lt!1409386))))

(assert (=> d!1181978 (rulesValidInductive!2462 thiss!21717 rules!2999)))

(assert (=> d!1181978 (= (maxPrefix!3653 thiss!21717 rules!2999 lt!1409386) lt!1409453)))

(declare-fun b!3994316 () Bool)

(declare-fun res!1621682 () Bool)

(assert (=> b!3994316 (=> (not res!1621682) (not e!2476239))))

(assert (=> b!3994316 (= res!1621682 (= (value!213465 (_1!24092 (get!14055 lt!1409453))) (apply!9977 (transformation!6766 (rule!9790 (_1!24092 (get!14055 lt!1409453)))) (seqFromList!5005 (originalCharacters!7366 (_1!24092 (get!14055 lt!1409453)))))))))

(declare-fun bm!285883 () Bool)

(declare-fun call!285888 () Option!9180)

(assert (=> bm!285883 (= call!285888 (maxPrefixOneRule!2687 thiss!21717 (h!48140 rules!2999) lt!1409386))))

(declare-fun b!3994317 () Bool)

(assert (=> b!3994317 (= e!2476241 call!285888)))

(declare-fun b!3994318 () Bool)

(declare-fun res!1621683 () Bool)

(assert (=> b!3994318 (=> (not res!1621683) (not e!2476239))))

(assert (=> b!3994318 (= res!1621683 (< (size!31949 (_2!24092 (get!14055 lt!1409453))) (size!31949 lt!1409386)))))

(declare-fun b!3994319 () Bool)

(declare-fun res!1621680 () Bool)

(assert (=> b!3994319 (=> (not res!1621680) (not e!2476239))))

(assert (=> b!3994319 (= res!1621680 (matchR!5648 (regex!6766 (rule!9790 (_1!24092 (get!14055 lt!1409453)))) (list!15862 (charsOf!4582 (_1!24092 (get!14055 lt!1409453))))))))

(declare-fun b!3994320 () Bool)

(declare-fun res!1621678 () Bool)

(assert (=> b!3994320 (=> (not res!1621678) (not e!2476239))))

(assert (=> b!3994320 (= res!1621678 (= (++!11168 (list!15862 (charsOf!4582 (_1!24092 (get!14055 lt!1409453)))) (_2!24092 (get!14055 lt!1409453))) lt!1409386))))

(declare-fun b!3994321 () Bool)

(assert (=> b!3994321 (= e!2476239 (contains!8501 rules!2999 (rule!9790 (_1!24092 (get!14055 lt!1409453)))))))

(declare-fun b!3994322 () Bool)

(declare-fun res!1621679 () Bool)

(assert (=> b!3994322 (=> (not res!1621679) (not e!2476239))))

(assert (=> b!3994322 (= res!1621679 (= (list!15862 (charsOf!4582 (_1!24092 (get!14055 lt!1409453)))) (originalCharacters!7366 (_1!24092 (get!14055 lt!1409453)))))))

(declare-fun b!3994323 () Bool)

(declare-fun lt!1409454 () Option!9180)

(declare-fun lt!1409451 () Option!9180)

(assert (=> b!3994323 (= e!2476241 (ite (and ((_ is None!9179) lt!1409454) ((_ is None!9179) lt!1409451)) None!9179 (ite ((_ is None!9179) lt!1409451) lt!1409454 (ite ((_ is None!9179) lt!1409454) lt!1409451 (ite (>= (size!31948 (_1!24092 (v!39537 lt!1409454))) (size!31948 (_1!24092 (v!39537 lt!1409451)))) lt!1409454 lt!1409451)))))))

(assert (=> b!3994323 (= lt!1409454 call!285888)))

(assert (=> b!3994323 (= lt!1409451 (maxPrefix!3653 thiss!21717 (t!331931 rules!2999) lt!1409386))))

(assert (= (and d!1181978 c!691155) b!3994317))

(assert (= (and d!1181978 (not c!691155)) b!3994323))

(assert (= (or b!3994317 b!3994323) bm!285883))

(assert (= (and d!1181978 (not res!1621684)) b!3994315))

(assert (= (and b!3994315 res!1621681) b!3994322))

(assert (= (and b!3994322 res!1621679) b!3994318))

(assert (= (and b!3994318 res!1621683) b!3994320))

(assert (= (and b!3994320 res!1621678) b!3994316))

(assert (= (and b!3994316 res!1621682) b!3994319))

(assert (= (and b!3994319 res!1621680) b!3994321))

(declare-fun m!4574333 () Bool)

(assert (=> d!1181978 m!4574333))

(declare-fun m!4574335 () Bool)

(assert (=> d!1181978 m!4574335))

(declare-fun m!4574337 () Bool)

(assert (=> d!1181978 m!4574337))

(assert (=> d!1181978 m!4574299))

(declare-fun m!4574339 () Bool)

(assert (=> b!3994318 m!4574339))

(declare-fun m!4574341 () Bool)

(assert (=> b!3994318 m!4574341))

(declare-fun m!4574343 () Bool)

(assert (=> b!3994318 m!4574343))

(declare-fun m!4574345 () Bool)

(assert (=> b!3994323 m!4574345))

(assert (=> b!3994316 m!4574339))

(declare-fun m!4574347 () Bool)

(assert (=> b!3994316 m!4574347))

(assert (=> b!3994316 m!4574347))

(declare-fun m!4574349 () Bool)

(assert (=> b!3994316 m!4574349))

(declare-fun m!4574351 () Bool)

(assert (=> b!3994315 m!4574351))

(declare-fun m!4574353 () Bool)

(assert (=> bm!285883 m!4574353))

(assert (=> b!3994321 m!4574339))

(declare-fun m!4574355 () Bool)

(assert (=> b!3994321 m!4574355))

(assert (=> b!3994320 m!4574339))

(declare-fun m!4574357 () Bool)

(assert (=> b!3994320 m!4574357))

(assert (=> b!3994320 m!4574357))

(declare-fun m!4574359 () Bool)

(assert (=> b!3994320 m!4574359))

(assert (=> b!3994320 m!4574359))

(declare-fun m!4574361 () Bool)

(assert (=> b!3994320 m!4574361))

(assert (=> b!3994319 m!4574339))

(assert (=> b!3994319 m!4574357))

(assert (=> b!3994319 m!4574357))

(assert (=> b!3994319 m!4574359))

(assert (=> b!3994319 m!4574359))

(declare-fun m!4574363 () Bool)

(assert (=> b!3994319 m!4574363))

(assert (=> b!3994322 m!4574339))

(assert (=> b!3994322 m!4574357))

(assert (=> b!3994322 m!4574357))

(assert (=> b!3994322 m!4574359))

(assert (=> b!3994205 d!1181978))

(declare-fun d!1181980 () Bool)

(assert (=> d!1181980 (= suffixResult!105 lt!1409382)))

(declare-fun lt!1409457 () Unit!61548)

(declare-fun choose!24058 (List!42842 List!42842 List!42842 List!42842 List!42842) Unit!61548)

(assert (=> d!1181980 (= lt!1409457 (choose!24058 lt!1409363 suffixResult!105 lt!1409363 lt!1409382 lt!1409384))))

(assert (=> d!1181980 (isPrefix!3853 lt!1409363 lt!1409384)))

(assert (=> d!1181980 (= (lemmaSamePrefixThenSameSuffix!2040 lt!1409363 suffixResult!105 lt!1409363 lt!1409382 lt!1409384) lt!1409457)))

(declare-fun bs!588557 () Bool)

(assert (= bs!588557 d!1181980))

(declare-fun m!4574365 () Bool)

(assert (=> bs!588557 m!4574365))

(assert (=> bs!588557 m!4574009))

(assert (=> b!3994205 d!1181980))

(declare-fun b!3994326 () Bool)

(declare-fun e!2476242 () Bool)

(assert (=> b!3994326 (= e!2476242 (isPrefix!3853 (tail!6228 lt!1409363) (tail!6228 lt!1409378)))))

(declare-fun b!3994327 () Bool)

(declare-fun e!2476243 () Bool)

(assert (=> b!3994327 (= e!2476243 (>= (size!31949 lt!1409378) (size!31949 lt!1409363)))))

(declare-fun b!3994325 () Bool)

(declare-fun res!1621687 () Bool)

(assert (=> b!3994325 (=> (not res!1621687) (not e!2476242))))

(assert (=> b!3994325 (= res!1621687 (= (head!8496 lt!1409363) (head!8496 lt!1409378)))))

(declare-fun d!1181982 () Bool)

(assert (=> d!1181982 e!2476243))

(declare-fun res!1621688 () Bool)

(assert (=> d!1181982 (=> res!1621688 e!2476243)))

(declare-fun lt!1409458 () Bool)

(assert (=> d!1181982 (= res!1621688 (not lt!1409458))))

(declare-fun e!2476244 () Bool)

(assert (=> d!1181982 (= lt!1409458 e!2476244)))

(declare-fun res!1621685 () Bool)

(assert (=> d!1181982 (=> res!1621685 e!2476244)))

(assert (=> d!1181982 (= res!1621685 ((_ is Nil!42718) lt!1409363))))

(assert (=> d!1181982 (= (isPrefix!3853 lt!1409363 lt!1409378) lt!1409458)))

(declare-fun b!3994324 () Bool)

(assert (=> b!3994324 (= e!2476244 e!2476242)))

(declare-fun res!1621686 () Bool)

(assert (=> b!3994324 (=> (not res!1621686) (not e!2476242))))

(assert (=> b!3994324 (= res!1621686 (not ((_ is Nil!42718) lt!1409378)))))

(assert (= (and d!1181982 (not res!1621685)) b!3994324))

(assert (= (and b!3994324 res!1621686) b!3994325))

(assert (= (and b!3994325 res!1621687) b!3994326))

(assert (= (and d!1181982 (not res!1621688)) b!3994327))

(assert (=> b!3994326 m!4574201))

(declare-fun m!4574367 () Bool)

(assert (=> b!3994326 m!4574367))

(assert (=> b!3994326 m!4574201))

(assert (=> b!3994326 m!4574367))

(declare-fun m!4574369 () Bool)

(assert (=> b!3994326 m!4574369))

(declare-fun m!4574371 () Bool)

(assert (=> b!3994327 m!4574371))

(assert (=> b!3994327 m!4574053))

(assert (=> b!3994325 m!4574209))

(declare-fun m!4574373 () Bool)

(assert (=> b!3994325 m!4574373))

(assert (=> b!3994205 d!1181982))

(declare-fun d!1181984 () Bool)

(assert (=> d!1181984 (isPrefix!3853 lt!1409363 (++!11168 lt!1409363 lt!1409382))))

(declare-fun lt!1409459 () Unit!61548)

(assert (=> d!1181984 (= lt!1409459 (choose!24054 lt!1409363 lt!1409382))))

(assert (=> d!1181984 (= (lemmaConcatTwoListThenFirstIsPrefix!2696 lt!1409363 lt!1409382) lt!1409459)))

(declare-fun bs!588558 () Bool)

(assert (= bs!588558 d!1181984))

(assert (=> bs!588558 m!4574061))

(assert (=> bs!588558 m!4574061))

(declare-fun m!4574375 () Bool)

(assert (=> bs!588558 m!4574375))

(declare-fun m!4574377 () Bool)

(assert (=> bs!588558 m!4574377))

(assert (=> b!3994205 d!1181984))

(declare-fun d!1181986 () Bool)

(declare-fun lt!1409460 () Int)

(assert (=> d!1181986 (>= lt!1409460 0)))

(declare-fun e!2476245 () Int)

(assert (=> d!1181986 (= lt!1409460 e!2476245)))

(declare-fun c!691156 () Bool)

(assert (=> d!1181986 (= c!691156 ((_ is Nil!42718) suffix!1299))))

(assert (=> d!1181986 (= (size!31949 suffix!1299) lt!1409460)))

(declare-fun b!3994328 () Bool)

(assert (=> b!3994328 (= e!2476245 0)))

(declare-fun b!3994329 () Bool)

(assert (=> b!3994329 (= e!2476245 (+ 1 (size!31949 (t!331929 suffix!1299))))))

(assert (= (and d!1181986 c!691156) b!3994328))

(assert (= (and d!1181986 (not c!691156)) b!3994329))

(declare-fun m!4574379 () Bool)

(assert (=> b!3994329 m!4574379))

(assert (=> b!3994183 d!1181986))

(declare-fun d!1181988 () Bool)

(declare-fun lt!1409461 () Int)

(assert (=> d!1181988 (>= lt!1409461 0)))

(declare-fun e!2476246 () Int)

(assert (=> d!1181988 (= lt!1409461 e!2476246)))

(declare-fun c!691157 () Bool)

(assert (=> d!1181988 (= c!691157 ((_ is Nil!42718) newSuffix!27))))

(assert (=> d!1181988 (= (size!31949 newSuffix!27) lt!1409461)))

(declare-fun b!3994330 () Bool)

(assert (=> b!3994330 (= e!2476246 0)))

(declare-fun b!3994331 () Bool)

(assert (=> b!3994331 (= e!2476246 (+ 1 (size!31949 (t!331929 newSuffix!27))))))

(assert (= (and d!1181988 c!691157) b!3994330))

(assert (= (and d!1181988 (not c!691157)) b!3994331))

(declare-fun m!4574381 () Bool)

(assert (=> b!3994331 m!4574381))

(assert (=> b!3994183 d!1181988))

(declare-fun d!1181990 () Bool)

(declare-fun res!1621691 () Bool)

(declare-fun e!2476249 () Bool)

(assert (=> d!1181990 (=> (not res!1621691) (not e!2476249))))

(declare-fun rulesValid!2636 (LexerInterface!6355 List!42844) Bool)

(assert (=> d!1181990 (= res!1621691 (rulesValid!2636 thiss!21717 rules!2999))))

(assert (=> d!1181990 (= (rulesInvariant!5698 thiss!21717 rules!2999) e!2476249)))

(declare-fun b!3994334 () Bool)

(declare-datatypes ((List!42845 0))(
  ( (Nil!42721) (Cons!42721 (h!48141 String!48698) (t!331980 List!42845)) )
))
(declare-fun noDuplicateTag!2637 (LexerInterface!6355 List!42844 List!42845) Bool)

(assert (=> b!3994334 (= e!2476249 (noDuplicateTag!2637 thiss!21717 rules!2999 Nil!42721))))

(assert (= (and d!1181990 res!1621691) b!3994334))

(declare-fun m!4574383 () Bool)

(assert (=> d!1181990 m!4574383))

(declare-fun m!4574385 () Bool)

(assert (=> b!3994334 m!4574385))

(assert (=> b!3994204 d!1181990))

(declare-fun b!3994335 () Bool)

(declare-fun e!2476250 () List!42842)

(assert (=> b!3994335 (= e!2476250 lt!1409373)))

(declare-fun b!3994337 () Bool)

(declare-fun res!1621692 () Bool)

(declare-fun e!2476251 () Bool)

(assert (=> b!3994337 (=> (not res!1621692) (not e!2476251))))

(declare-fun lt!1409462 () List!42842)

(assert (=> b!3994337 (= res!1621692 (= (size!31949 lt!1409462) (+ (size!31949 newSuffix!27) (size!31949 lt!1409373))))))

(declare-fun b!3994336 () Bool)

(assert (=> b!3994336 (= e!2476250 (Cons!42718 (h!48138 newSuffix!27) (++!11168 (t!331929 newSuffix!27) lt!1409373)))))

(declare-fun b!3994338 () Bool)

(assert (=> b!3994338 (= e!2476251 (or (not (= lt!1409373 Nil!42718)) (= lt!1409462 newSuffix!27)))))

(declare-fun d!1181992 () Bool)

(assert (=> d!1181992 e!2476251))

(declare-fun res!1621693 () Bool)

(assert (=> d!1181992 (=> (not res!1621693) (not e!2476251))))

(assert (=> d!1181992 (= res!1621693 (= (content!6480 lt!1409462) ((_ map or) (content!6480 newSuffix!27) (content!6480 lt!1409373))))))

(assert (=> d!1181992 (= lt!1409462 e!2476250)))

(declare-fun c!691158 () Bool)

(assert (=> d!1181992 (= c!691158 ((_ is Nil!42718) newSuffix!27))))

(assert (=> d!1181992 (= (++!11168 newSuffix!27 lt!1409373) lt!1409462)))

(assert (= (and d!1181992 c!691158) b!3994335))

(assert (= (and d!1181992 (not c!691158)) b!3994336))

(assert (= (and d!1181992 res!1621693) b!3994337))

(assert (= (and b!3994337 res!1621692) b!3994338))

(declare-fun m!4574387 () Bool)

(assert (=> b!3994337 m!4574387))

(assert (=> b!3994337 m!4574089))

(declare-fun m!4574389 () Bool)

(assert (=> b!3994337 m!4574389))

(declare-fun m!4574391 () Bool)

(assert (=> b!3994336 m!4574391))

(declare-fun m!4574393 () Bool)

(assert (=> d!1181992 m!4574393))

(assert (=> d!1181992 m!4574269))

(declare-fun m!4574395 () Bool)

(assert (=> d!1181992 m!4574395))

(assert (=> b!3994166 d!1181992))

(declare-fun d!1181994 () Bool)

(declare-fun lt!1409465 () List!42842)

(assert (=> d!1181994 (= (++!11168 newSuffix!27 lt!1409465) suffix!1299)))

(declare-fun e!2476254 () List!42842)

(assert (=> d!1181994 (= lt!1409465 e!2476254)))

(declare-fun c!691161 () Bool)

(assert (=> d!1181994 (= c!691161 ((_ is Cons!42718) newSuffix!27))))

(assert (=> d!1181994 (>= (size!31949 suffix!1299) (size!31949 newSuffix!27))))

(assert (=> d!1181994 (= (getSuffix!2284 suffix!1299 newSuffix!27) lt!1409465)))

(declare-fun b!3994343 () Bool)

(assert (=> b!3994343 (= e!2476254 (getSuffix!2284 (tail!6228 suffix!1299) (t!331929 newSuffix!27)))))

(declare-fun b!3994344 () Bool)

(assert (=> b!3994344 (= e!2476254 suffix!1299)))

(assert (= (and d!1181994 c!691161) b!3994343))

(assert (= (and d!1181994 (not c!691161)) b!3994344))

(declare-fun m!4574397 () Bool)

(assert (=> d!1181994 m!4574397))

(assert (=> d!1181994 m!4574087))

(assert (=> d!1181994 m!4574089))

(declare-fun m!4574399 () Bool)

(assert (=> b!3994343 m!4574399))

(assert (=> b!3994343 m!4574399))

(declare-fun m!4574401 () Bool)

(assert (=> b!3994343 m!4574401))

(assert (=> b!3994166 d!1181994))

(declare-fun d!1181996 () Bool)

(assert (=> d!1181996 (not (matchR!5648 (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))) lt!1409393))))

(declare-fun lt!1409468 () Unit!61548)

(declare-fun choose!24060 (LexerInterface!6355 List!42844 Rule!13332 List!42842 List!42842 List!42842 Rule!13332) Unit!61548)

(assert (=> d!1181996 (= lt!1409468 (choose!24060 thiss!21717 rules!2999 (rule!9790 token!484) lt!1409363 lt!1409384 lt!1409393 (rule!9790 (_1!24092 (v!39537 lt!1409347)))))))

(assert (=> d!1181996 (isPrefix!3853 lt!1409363 lt!1409384)))

(assert (=> d!1181996 (= (lemmaMaxPrefixOutputsMaxPrefix!420 thiss!21717 rules!2999 (rule!9790 token!484) lt!1409363 lt!1409384 lt!1409393 (rule!9790 (_1!24092 (v!39537 lt!1409347)))) lt!1409468)))

(declare-fun bs!588559 () Bool)

(assert (= bs!588559 d!1181996))

(assert (=> bs!588559 m!4574077))

(declare-fun m!4574403 () Bool)

(assert (=> bs!588559 m!4574403))

(assert (=> bs!588559 m!4574009))

(assert (=> b!3994208 d!1181996))

(declare-fun b!3994400 () Bool)

(declare-fun e!2476285 () Bool)

(assert (=> b!3994400 (= e!2476285 (= (head!8496 lt!1409393) (c!691137 (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))))))))

(declare-fun b!3994401 () Bool)

(declare-fun e!2476281 () Bool)

(declare-fun e!2476283 () Bool)

(assert (=> b!3994401 (= e!2476281 e!2476283)))

(declare-fun res!1621733 () Bool)

(assert (=> b!3994401 (=> (not res!1621733) (not e!2476283))))

(declare-fun lt!1409486 () Bool)

(assert (=> b!3994401 (= res!1621733 (not lt!1409486))))

(declare-fun b!3994402 () Bool)

(declare-fun res!1621738 () Bool)

(assert (=> b!3994402 (=> (not res!1621738) (not e!2476285))))

(declare-fun isEmpty!25536 (List!42842) Bool)

(assert (=> b!3994402 (= res!1621738 (isEmpty!25536 (tail!6228 lt!1409393)))))

(declare-fun b!3994403 () Bool)

(declare-fun res!1621731 () Bool)

(declare-fun e!2476286 () Bool)

(assert (=> b!3994403 (=> res!1621731 e!2476286)))

(assert (=> b!3994403 (= res!1621731 (not (isEmpty!25536 (tail!6228 lt!1409393))))))

(declare-fun b!3994404 () Bool)

(declare-fun e!2476284 () Bool)

(declare-fun call!285891 () Bool)

(assert (=> b!3994404 (= e!2476284 (= lt!1409486 call!285891))))

(declare-fun d!1181998 () Bool)

(assert (=> d!1181998 e!2476284))

(declare-fun c!691172 () Bool)

(assert (=> d!1181998 (= c!691172 ((_ is EmptyExpr!11671) (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347))))))))

(declare-fun e!2476287 () Bool)

(assert (=> d!1181998 (= lt!1409486 e!2476287)))

(declare-fun c!691173 () Bool)

(assert (=> d!1181998 (= c!691173 (isEmpty!25536 lt!1409393))))

(declare-fun validRegex!5296 (Regex!11671) Bool)

(assert (=> d!1181998 (validRegex!5296 (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))))))

(assert (=> d!1181998 (= (matchR!5648 (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))) lt!1409393) lt!1409486)))

(declare-fun b!3994405 () Bool)

(declare-fun res!1621736 () Bool)

(assert (=> b!3994405 (=> res!1621736 e!2476281)))

(assert (=> b!3994405 (= res!1621736 e!2476285)))

(declare-fun res!1621735 () Bool)

(assert (=> b!3994405 (=> (not res!1621735) (not e!2476285))))

(assert (=> b!3994405 (= res!1621735 lt!1409486)))

(declare-fun bm!285886 () Bool)

(assert (=> bm!285886 (= call!285891 (isEmpty!25536 lt!1409393))))

(declare-fun b!3994406 () Bool)

(assert (=> b!3994406 (= e!2476286 (not (= (head!8496 lt!1409393) (c!691137 (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347))))))))))

(declare-fun b!3994407 () Bool)

(declare-fun res!1621737 () Bool)

(assert (=> b!3994407 (=> (not res!1621737) (not e!2476285))))

(assert (=> b!3994407 (= res!1621737 (not call!285891))))

(declare-fun b!3994408 () Bool)

(declare-fun e!2476282 () Bool)

(assert (=> b!3994408 (= e!2476282 (not lt!1409486))))

(declare-fun b!3994409 () Bool)

(assert (=> b!3994409 (= e!2476284 e!2476282)))

(declare-fun c!691171 () Bool)

(assert (=> b!3994409 (= c!691171 ((_ is EmptyLang!11671) (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347))))))))

(declare-fun b!3994410 () Bool)

(declare-fun res!1621734 () Bool)

(assert (=> b!3994410 (=> res!1621734 e!2476281)))

(assert (=> b!3994410 (= res!1621734 (not ((_ is ElementMatch!11671) (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))))))))

(assert (=> b!3994410 (= e!2476282 e!2476281)))

(declare-fun b!3994411 () Bool)

(declare-fun nullable!4096 (Regex!11671) Bool)

(assert (=> b!3994411 (= e!2476287 (nullable!4096 (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347))))))))

(declare-fun b!3994412 () Bool)

(assert (=> b!3994412 (= e!2476283 e!2476286)))

(declare-fun res!1621732 () Bool)

(assert (=> b!3994412 (=> res!1621732 e!2476286)))

(assert (=> b!3994412 (= res!1621732 call!285891)))

(declare-fun b!3994413 () Bool)

(declare-fun derivativeStep!3506 (Regex!11671 C!23528) Regex!11671)

(assert (=> b!3994413 (= e!2476287 (matchR!5648 (derivativeStep!3506 (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))) (head!8496 lt!1409393)) (tail!6228 lt!1409393)))))

(assert (= (and d!1181998 c!691173) b!3994411))

(assert (= (and d!1181998 (not c!691173)) b!3994413))

(assert (= (and d!1181998 c!691172) b!3994404))

(assert (= (and d!1181998 (not c!691172)) b!3994409))

(assert (= (and b!3994409 c!691171) b!3994408))

(assert (= (and b!3994409 (not c!691171)) b!3994410))

(assert (= (and b!3994410 (not res!1621734)) b!3994405))

(assert (= (and b!3994405 res!1621735) b!3994407))

(assert (= (and b!3994407 res!1621737) b!3994402))

(assert (= (and b!3994402 res!1621738) b!3994400))

(assert (= (and b!3994405 (not res!1621736)) b!3994401))

(assert (= (and b!3994401 res!1621733) b!3994412))

(assert (= (and b!3994412 (not res!1621732)) b!3994403))

(assert (= (and b!3994403 (not res!1621731)) b!3994406))

(assert (= (or b!3994404 b!3994412 b!3994407) bm!285886))

(declare-fun m!4574405 () Bool)

(assert (=> d!1181998 m!4574405))

(declare-fun m!4574407 () Bool)

(assert (=> d!1181998 m!4574407))

(assert (=> b!3994400 m!4574239))

(assert (=> b!3994403 m!4574235))

(assert (=> b!3994403 m!4574235))

(declare-fun m!4574409 () Bool)

(assert (=> b!3994403 m!4574409))

(assert (=> b!3994413 m!4574239))

(assert (=> b!3994413 m!4574239))

(declare-fun m!4574411 () Bool)

(assert (=> b!3994413 m!4574411))

(assert (=> b!3994413 m!4574235))

(assert (=> b!3994413 m!4574411))

(assert (=> b!3994413 m!4574235))

(declare-fun m!4574413 () Bool)

(assert (=> b!3994413 m!4574413))

(assert (=> b!3994406 m!4574239))

(assert (=> bm!285886 m!4574405))

(assert (=> b!3994402 m!4574235))

(assert (=> b!3994402 m!4574235))

(assert (=> b!3994402 m!4574409))

(declare-fun m!4574415 () Bool)

(assert (=> b!3994411 m!4574415))

(assert (=> b!3994208 d!1181998))

(declare-fun d!1182000 () Bool)

(declare-fun res!1621743 () Bool)

(declare-fun e!2476290 () Bool)

(assert (=> d!1182000 (=> (not res!1621743) (not e!2476290))))

(assert (=> d!1182000 (= res!1621743 (not (isEmpty!25536 (originalCharacters!7366 token!484))))))

(assert (=> d!1182000 (= (inv!57057 token!484) e!2476290)))

(declare-fun b!3994418 () Bool)

(declare-fun res!1621744 () Bool)

(assert (=> b!3994418 (=> (not res!1621744) (not e!2476290))))

(declare-fun dynLambda!18144 (Int TokenValue!6996) BalanceConc!25548)

(assert (=> b!3994418 (= res!1621744 (= (originalCharacters!7366 token!484) (list!15862 (dynLambda!18144 (toChars!9113 (transformation!6766 (rule!9790 token!484))) (value!213465 token!484)))))))

(declare-fun b!3994419 () Bool)

(assert (=> b!3994419 (= e!2476290 (= (size!31948 token!484) (size!31949 (originalCharacters!7366 token!484))))))

(assert (= (and d!1182000 res!1621743) b!3994418))

(assert (= (and b!3994418 res!1621744) b!3994419))

(declare-fun b_lambda!116593 () Bool)

(assert (=> (not b_lambda!116593) (not b!3994418)))

(declare-fun t!331937 () Bool)

(declare-fun tb!240353 () Bool)

(assert (=> (and b!3994179 (= (toChars!9113 (transformation!6766 (rule!9790 token!484))) (toChars!9113 (transformation!6766 (rule!9790 token!484)))) t!331937) tb!240353))

(declare-fun b!3994424 () Bool)

(declare-fun e!2476293 () Bool)

(declare-fun tp!1216216 () Bool)

(declare-fun inv!57060 (Conc!12977) Bool)

(assert (=> b!3994424 (= e!2476293 (and (inv!57060 (c!691136 (dynLambda!18144 (toChars!9113 (transformation!6766 (rule!9790 token!484))) (value!213465 token!484)))) tp!1216216))))

(declare-fun result!291256 () Bool)

(declare-fun inv!57061 (BalanceConc!25548) Bool)

(assert (=> tb!240353 (= result!291256 (and (inv!57061 (dynLambda!18144 (toChars!9113 (transformation!6766 (rule!9790 token!484))) (value!213465 token!484))) e!2476293))))

(assert (= tb!240353 b!3994424))

(declare-fun m!4574461 () Bool)

(assert (=> b!3994424 m!4574461))

(declare-fun m!4574463 () Bool)

(assert (=> tb!240353 m!4574463))

(assert (=> b!3994418 t!331937))

(declare-fun b_and!306827 () Bool)

(assert (= b_and!306817 (and (=> t!331937 result!291256) b_and!306827)))

(declare-fun tb!240355 () Bool)

(declare-fun t!331939 () Bool)

(assert (=> (and b!3994187 (= (toChars!9113 (transformation!6766 (h!48140 rules!2999))) (toChars!9113 (transformation!6766 (rule!9790 token!484)))) t!331939) tb!240355))

(declare-fun result!291260 () Bool)

(assert (= result!291260 result!291256))

(assert (=> b!3994418 t!331939))

(declare-fun b_and!306829 () Bool)

(assert (= b_and!306821 (and (=> t!331939 result!291260) b_and!306829)))

(declare-fun m!4574465 () Bool)

(assert (=> d!1182000 m!4574465))

(declare-fun m!4574467 () Bool)

(assert (=> b!3994418 m!4574467))

(assert (=> b!3994418 m!4574467))

(declare-fun m!4574469 () Bool)

(assert (=> b!3994418 m!4574469))

(assert (=> b!3994419 m!4574027))

(assert (=> start!375924 d!1182000))

(declare-fun b!3994429 () Bool)

(declare-fun e!2476300 () Bool)

(assert (=> b!3994429 (= e!2476300 (= (head!8496 lt!1409363) (c!691137 (regex!6766 (rule!9790 token!484)))))))

(declare-fun b!3994430 () Bool)

(declare-fun e!2476296 () Bool)

(declare-fun e!2476298 () Bool)

(assert (=> b!3994430 (= e!2476296 e!2476298)))

(declare-fun res!1621747 () Bool)

(assert (=> b!3994430 (=> (not res!1621747) (not e!2476298))))

(declare-fun lt!1409489 () Bool)

(assert (=> b!3994430 (= res!1621747 (not lt!1409489))))

(declare-fun b!3994431 () Bool)

(declare-fun res!1621752 () Bool)

(assert (=> b!3994431 (=> (not res!1621752) (not e!2476300))))

(assert (=> b!3994431 (= res!1621752 (isEmpty!25536 (tail!6228 lt!1409363)))))

(declare-fun b!3994432 () Bool)

(declare-fun res!1621745 () Bool)

(declare-fun e!2476301 () Bool)

(assert (=> b!3994432 (=> res!1621745 e!2476301)))

(assert (=> b!3994432 (= res!1621745 (not (isEmpty!25536 (tail!6228 lt!1409363))))))

(declare-fun b!3994433 () Bool)

(declare-fun e!2476299 () Bool)

(declare-fun call!285892 () Bool)

(assert (=> b!3994433 (= e!2476299 (= lt!1409489 call!285892))))

(declare-fun d!1182004 () Bool)

(assert (=> d!1182004 e!2476299))

(declare-fun c!691177 () Bool)

(assert (=> d!1182004 (= c!691177 ((_ is EmptyExpr!11671) (regex!6766 (rule!9790 token!484))))))

(declare-fun e!2476302 () Bool)

(assert (=> d!1182004 (= lt!1409489 e!2476302)))

(declare-fun c!691178 () Bool)

(assert (=> d!1182004 (= c!691178 (isEmpty!25536 lt!1409363))))

(assert (=> d!1182004 (validRegex!5296 (regex!6766 (rule!9790 token!484)))))

(assert (=> d!1182004 (= (matchR!5648 (regex!6766 (rule!9790 token!484)) lt!1409363) lt!1409489)))

(declare-fun b!3994434 () Bool)

(declare-fun res!1621750 () Bool)

(assert (=> b!3994434 (=> res!1621750 e!2476296)))

(assert (=> b!3994434 (= res!1621750 e!2476300)))

(declare-fun res!1621749 () Bool)

(assert (=> b!3994434 (=> (not res!1621749) (not e!2476300))))

(assert (=> b!3994434 (= res!1621749 lt!1409489)))

(declare-fun bm!285887 () Bool)

(assert (=> bm!285887 (= call!285892 (isEmpty!25536 lt!1409363))))

(declare-fun b!3994435 () Bool)

(assert (=> b!3994435 (= e!2476301 (not (= (head!8496 lt!1409363) (c!691137 (regex!6766 (rule!9790 token!484))))))))

(declare-fun b!3994436 () Bool)

(declare-fun res!1621751 () Bool)

(assert (=> b!3994436 (=> (not res!1621751) (not e!2476300))))

(assert (=> b!3994436 (= res!1621751 (not call!285892))))

(declare-fun b!3994437 () Bool)

(declare-fun e!2476297 () Bool)

(assert (=> b!3994437 (= e!2476297 (not lt!1409489))))

(declare-fun b!3994438 () Bool)

(assert (=> b!3994438 (= e!2476299 e!2476297)))

(declare-fun c!691176 () Bool)

(assert (=> b!3994438 (= c!691176 ((_ is EmptyLang!11671) (regex!6766 (rule!9790 token!484))))))

(declare-fun b!3994439 () Bool)

(declare-fun res!1621748 () Bool)

(assert (=> b!3994439 (=> res!1621748 e!2476296)))

(assert (=> b!3994439 (= res!1621748 (not ((_ is ElementMatch!11671) (regex!6766 (rule!9790 token!484)))))))

(assert (=> b!3994439 (= e!2476297 e!2476296)))

(declare-fun b!3994440 () Bool)

(assert (=> b!3994440 (= e!2476302 (nullable!4096 (regex!6766 (rule!9790 token!484))))))

(declare-fun b!3994441 () Bool)

(assert (=> b!3994441 (= e!2476298 e!2476301)))

(declare-fun res!1621746 () Bool)

(assert (=> b!3994441 (=> res!1621746 e!2476301)))

(assert (=> b!3994441 (= res!1621746 call!285892)))

(declare-fun b!3994442 () Bool)

(assert (=> b!3994442 (= e!2476302 (matchR!5648 (derivativeStep!3506 (regex!6766 (rule!9790 token!484)) (head!8496 lt!1409363)) (tail!6228 lt!1409363)))))

(assert (= (and d!1182004 c!691178) b!3994440))

(assert (= (and d!1182004 (not c!691178)) b!3994442))

(assert (= (and d!1182004 c!691177) b!3994433))

(assert (= (and d!1182004 (not c!691177)) b!3994438))

(assert (= (and b!3994438 c!691176) b!3994437))

(assert (= (and b!3994438 (not c!691176)) b!3994439))

(assert (= (and b!3994439 (not res!1621748)) b!3994434))

(assert (= (and b!3994434 res!1621749) b!3994436))

(assert (= (and b!3994436 res!1621751) b!3994431))

(assert (= (and b!3994431 res!1621752) b!3994429))

(assert (= (and b!3994434 (not res!1621750)) b!3994430))

(assert (= (and b!3994430 res!1621747) b!3994441))

(assert (= (and b!3994441 (not res!1621746)) b!3994432))

(assert (= (and b!3994432 (not res!1621745)) b!3994435))

(assert (= (or b!3994433 b!3994441 b!3994436) bm!285887))

(declare-fun m!4574471 () Bool)

(assert (=> d!1182004 m!4574471))

(declare-fun m!4574473 () Bool)

(assert (=> d!1182004 m!4574473))

(assert (=> b!3994429 m!4574209))

(assert (=> b!3994432 m!4574201))

(assert (=> b!3994432 m!4574201))

(declare-fun m!4574475 () Bool)

(assert (=> b!3994432 m!4574475))

(assert (=> b!3994442 m!4574209))

(assert (=> b!3994442 m!4574209))

(declare-fun m!4574477 () Bool)

(assert (=> b!3994442 m!4574477))

(assert (=> b!3994442 m!4574201))

(assert (=> b!3994442 m!4574477))

(assert (=> b!3994442 m!4574201))

(declare-fun m!4574479 () Bool)

(assert (=> b!3994442 m!4574479))

(assert (=> b!3994435 m!4574209))

(assert (=> bm!285887 m!4574471))

(assert (=> b!3994431 m!4574201))

(assert (=> b!3994431 m!4574201))

(assert (=> b!3994431 m!4574475))

(declare-fun m!4574481 () Bool)

(assert (=> b!3994440 m!4574481))

(assert (=> b!3994207 d!1182004))

(declare-fun b!3994449 () Bool)

(declare-fun e!2476305 () Bool)

(assert (=> b!3994449 (= e!2476305 (isPrefix!3853 (tail!6228 lt!1409363) (tail!6228 lt!1409386)))))

(declare-fun b!3994450 () Bool)

(declare-fun e!2476306 () Bool)

(assert (=> b!3994450 (= e!2476306 (>= (size!31949 lt!1409386) (size!31949 lt!1409363)))))

(declare-fun b!3994448 () Bool)

(declare-fun res!1621759 () Bool)

(assert (=> b!3994448 (=> (not res!1621759) (not e!2476305))))

(assert (=> b!3994448 (= res!1621759 (= (head!8496 lt!1409363) (head!8496 lt!1409386)))))

(declare-fun d!1182006 () Bool)

(assert (=> d!1182006 e!2476306))

(declare-fun res!1621760 () Bool)

(assert (=> d!1182006 (=> res!1621760 e!2476306)))

(declare-fun lt!1409490 () Bool)

(assert (=> d!1182006 (= res!1621760 (not lt!1409490))))

(declare-fun e!2476307 () Bool)

(assert (=> d!1182006 (= lt!1409490 e!2476307)))

(declare-fun res!1621757 () Bool)

(assert (=> d!1182006 (=> res!1621757 e!2476307)))

(assert (=> d!1182006 (= res!1621757 ((_ is Nil!42718) lt!1409363))))

(assert (=> d!1182006 (= (isPrefix!3853 lt!1409363 lt!1409386) lt!1409490)))

(declare-fun b!3994447 () Bool)

(assert (=> b!3994447 (= e!2476307 e!2476305)))

(declare-fun res!1621758 () Bool)

(assert (=> b!3994447 (=> (not res!1621758) (not e!2476305))))

(assert (=> b!3994447 (= res!1621758 (not ((_ is Nil!42718) lt!1409386)))))

(assert (= (and d!1182006 (not res!1621757)) b!3994447))

(assert (= (and b!3994447 res!1621758) b!3994448))

(assert (= (and b!3994448 res!1621759) b!3994449))

(assert (= (and d!1182006 (not res!1621760)) b!3994450))

(assert (=> b!3994449 m!4574201))

(declare-fun m!4574483 () Bool)

(assert (=> b!3994449 m!4574483))

(assert (=> b!3994449 m!4574201))

(assert (=> b!3994449 m!4574483))

(declare-fun m!4574485 () Bool)

(assert (=> b!3994449 m!4574485))

(assert (=> b!3994450 m!4574343))

(assert (=> b!3994450 m!4574053))

(assert (=> b!3994448 m!4574209))

(declare-fun m!4574487 () Bool)

(assert (=> b!3994448 m!4574487))

(assert (=> b!3994207 d!1182006))

(declare-fun d!1182008 () Bool)

(assert (=> d!1182008 (isPrefix!3853 lt!1409363 (++!11168 prefix!494 newSuffix!27))))

(declare-fun lt!1409491 () Unit!61548)

(assert (=> d!1182008 (= lt!1409491 (choose!24055 lt!1409363 prefix!494 newSuffix!27))))

(assert (=> d!1182008 (isPrefix!3853 lt!1409363 prefix!494)))

(assert (=> d!1182008 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!686 lt!1409363 prefix!494 newSuffix!27) lt!1409491)))

(declare-fun bs!588560 () Bool)

(assert (= bs!588560 d!1182008))

(assert (=> bs!588560 m!4574069))

(assert (=> bs!588560 m!4574069))

(declare-fun m!4574489 () Bool)

(assert (=> bs!588560 m!4574489))

(declare-fun m!4574491 () Bool)

(assert (=> bs!588560 m!4574491))

(assert (=> bs!588560 m!4574179))

(assert (=> b!3994207 d!1182008))

(declare-fun d!1182010 () Bool)

(assert (=> d!1182010 (isPrefix!3853 lt!1409363 (++!11168 prefix!494 suffix!1299))))

(declare-fun lt!1409493 () Unit!61548)

(assert (=> d!1182010 (= lt!1409493 (choose!24055 lt!1409363 prefix!494 suffix!1299))))

(assert (=> d!1182010 (isPrefix!3853 lt!1409363 prefix!494)))

(assert (=> d!1182010 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!686 lt!1409363 prefix!494 suffix!1299) lt!1409493)))

(declare-fun bs!588561 () Bool)

(assert (= bs!588561 d!1182010))

(assert (=> bs!588561 m!4574157))

(assert (=> bs!588561 m!4574157))

(declare-fun m!4574493 () Bool)

(assert (=> bs!588561 m!4574493))

(declare-fun m!4574495 () Bool)

(assert (=> bs!588561 m!4574495))

(assert (=> bs!588561 m!4574179))

(assert (=> b!3994207 d!1182010))

(declare-fun d!1182012 () Bool)

(assert (=> d!1182012 (= (inv!57053 (tag!7626 (rule!9790 token!484))) (= (mod (str.len (value!213464 (tag!7626 (rule!9790 token!484)))) 2) 0))))

(assert (=> b!3994186 d!1182012))

(declare-fun d!1182014 () Bool)

(declare-fun res!1621763 () Bool)

(declare-fun e!2476310 () Bool)

(assert (=> d!1182014 (=> (not res!1621763) (not e!2476310))))

(assert (=> d!1182014 (= res!1621763 (semiInverseModEq!2902 (toChars!9113 (transformation!6766 (rule!9790 token!484))) (toValue!9254 (transformation!6766 (rule!9790 token!484)))))))

(assert (=> d!1182014 (= (inv!57056 (transformation!6766 (rule!9790 token!484))) e!2476310)))

(declare-fun b!3994455 () Bool)

(assert (=> b!3994455 (= e!2476310 (equivClasses!2801 (toChars!9113 (transformation!6766 (rule!9790 token!484))) (toValue!9254 (transformation!6766 (rule!9790 token!484)))))))

(assert (= (and d!1182014 res!1621763) b!3994455))

(declare-fun m!4574509 () Bool)

(assert (=> d!1182014 m!4574509))

(declare-fun m!4574511 () Bool)

(assert (=> b!3994455 m!4574511))

(assert (=> b!3994186 d!1182014))

(declare-fun d!1182018 () Bool)

(assert (=> d!1182018 (not (matchR!5648 (regex!6766 (rule!9790 token!484)) lt!1409363))))

(declare-fun lt!1409494 () Unit!61548)

(assert (=> d!1182018 (= lt!1409494 (choose!24060 thiss!21717 rules!2999 (rule!9790 (_1!24092 (v!39537 lt!1409347))) lt!1409393 lt!1409386 lt!1409363 (rule!9790 token!484)))))

(assert (=> d!1182018 (isPrefix!3853 lt!1409393 lt!1409386)))

(assert (=> d!1182018 (= (lemmaMaxPrefixOutputsMaxPrefix!420 thiss!21717 rules!2999 (rule!9790 (_1!24092 (v!39537 lt!1409347))) lt!1409393 lt!1409386 lt!1409363 (rule!9790 token!484)) lt!1409494)))

(declare-fun bs!588562 () Bool)

(assert (= bs!588562 d!1182018))

(assert (=> bs!588562 m!4574019))

(declare-fun m!4574513 () Bool)

(assert (=> bs!588562 m!4574513))

(assert (=> bs!588562 m!4574017))

(assert (=> b!3994185 d!1182018))

(declare-fun b!3994458 () Bool)

(declare-fun e!2476311 () Bool)

(assert (=> b!3994458 (= e!2476311 (isPrefix!3853 (tail!6228 lt!1409393) (tail!6228 lt!1409386)))))

(declare-fun b!3994459 () Bool)

(declare-fun e!2476312 () Bool)

(assert (=> b!3994459 (= e!2476312 (>= (size!31949 lt!1409386) (size!31949 lt!1409393)))))

(declare-fun b!3994457 () Bool)

(declare-fun res!1621766 () Bool)

(assert (=> b!3994457 (=> (not res!1621766) (not e!2476311))))

(assert (=> b!3994457 (= res!1621766 (= (head!8496 lt!1409393) (head!8496 lt!1409386)))))

(declare-fun d!1182020 () Bool)

(assert (=> d!1182020 e!2476312))

(declare-fun res!1621767 () Bool)

(assert (=> d!1182020 (=> res!1621767 e!2476312)))

(declare-fun lt!1409495 () Bool)

(assert (=> d!1182020 (= res!1621767 (not lt!1409495))))

(declare-fun e!2476313 () Bool)

(assert (=> d!1182020 (= lt!1409495 e!2476313)))

(declare-fun res!1621764 () Bool)

(assert (=> d!1182020 (=> res!1621764 e!2476313)))

(assert (=> d!1182020 (= res!1621764 ((_ is Nil!42718) lt!1409393))))

(assert (=> d!1182020 (= (isPrefix!3853 lt!1409393 lt!1409386) lt!1409495)))

(declare-fun b!3994456 () Bool)

(assert (=> b!3994456 (= e!2476313 e!2476311)))

(declare-fun res!1621765 () Bool)

(assert (=> b!3994456 (=> (not res!1621765) (not e!2476311))))

(assert (=> b!3994456 (= res!1621765 (not ((_ is Nil!42718) lt!1409386)))))

(assert (= (and d!1182020 (not res!1621764)) b!3994456))

(assert (= (and b!3994456 res!1621765) b!3994457))

(assert (= (and b!3994457 res!1621766) b!3994458))

(assert (= (and d!1182020 (not res!1621767)) b!3994459))

(assert (=> b!3994458 m!4574235))

(assert (=> b!3994458 m!4574483))

(assert (=> b!3994458 m!4574235))

(assert (=> b!3994458 m!4574483))

(declare-fun m!4574515 () Bool)

(assert (=> b!3994458 m!4574515))

(assert (=> b!3994459 m!4574343))

(assert (=> b!3994459 m!4574107))

(assert (=> b!3994457 m!4574239))

(assert (=> b!3994457 m!4574487))

(assert (=> b!3994200 d!1182020))

(declare-fun b!3994462 () Bool)

(declare-fun e!2476314 () List!42842)

(assert (=> b!3994462 (= e!2476314 lt!1409404)))

(declare-fun b!3994464 () Bool)

(declare-fun res!1621768 () Bool)

(declare-fun e!2476315 () Bool)

(assert (=> b!3994464 (=> (not res!1621768) (not e!2476315))))

(declare-fun lt!1409496 () List!42842)

(assert (=> b!3994464 (= res!1621768 (= (size!31949 lt!1409496) (+ (size!31949 prefix!494) (size!31949 lt!1409404))))))

(declare-fun b!3994463 () Bool)

(assert (=> b!3994463 (= e!2476314 (Cons!42718 (h!48138 prefix!494) (++!11168 (t!331929 prefix!494) lt!1409404)))))

(declare-fun b!3994465 () Bool)

(assert (=> b!3994465 (= e!2476315 (or (not (= lt!1409404 Nil!42718)) (= lt!1409496 prefix!494)))))

(declare-fun d!1182022 () Bool)

(assert (=> d!1182022 e!2476315))

(declare-fun res!1621769 () Bool)

(assert (=> d!1182022 (=> (not res!1621769) (not e!2476315))))

(assert (=> d!1182022 (= res!1621769 (= (content!6480 lt!1409496) ((_ map or) (content!6480 prefix!494) (content!6480 lt!1409404))))))

(assert (=> d!1182022 (= lt!1409496 e!2476314)))

(declare-fun c!691180 () Bool)

(assert (=> d!1182022 (= c!691180 ((_ is Nil!42718) prefix!494))))

(assert (=> d!1182022 (= (++!11168 prefix!494 lt!1409404) lt!1409496)))

(assert (= (and d!1182022 c!691180) b!3994462))

(assert (= (and d!1182022 (not c!691180)) b!3994463))

(assert (= (and d!1182022 res!1621769) b!3994464))

(assert (= (and b!3994464 res!1621768) b!3994465))

(declare-fun m!4574517 () Bool)

(assert (=> b!3994464 m!4574517))

(assert (=> b!3994464 m!4574055))

(declare-fun m!4574519 () Bool)

(assert (=> b!3994464 m!4574519))

(declare-fun m!4574521 () Bool)

(assert (=> b!3994463 m!4574521))

(declare-fun m!4574525 () Bool)

(assert (=> d!1182022 m!4574525))

(assert (=> d!1182022 m!4574267))

(declare-fun m!4574527 () Bool)

(assert (=> d!1182022 m!4574527))

(assert (=> b!3994177 d!1182022))

(declare-fun b!3994466 () Bool)

(declare-fun e!2476319 () List!42842)

(assert (=> b!3994466 (= e!2476319 lt!1409373)))

(declare-fun b!3994468 () Bool)

(declare-fun res!1621770 () Bool)

(declare-fun e!2476320 () Bool)

(assert (=> b!3994468 (=> (not res!1621770) (not e!2476320))))

(declare-fun lt!1409497 () List!42842)

(assert (=> b!3994468 (= res!1621770 (= (size!31949 lt!1409497) (+ (size!31949 lt!1409386) (size!31949 lt!1409373))))))

(declare-fun b!3994467 () Bool)

(assert (=> b!3994467 (= e!2476319 (Cons!42718 (h!48138 lt!1409386) (++!11168 (t!331929 lt!1409386) lt!1409373)))))

(declare-fun b!3994469 () Bool)

(assert (=> b!3994469 (= e!2476320 (or (not (= lt!1409373 Nil!42718)) (= lt!1409497 lt!1409386)))))

(declare-fun d!1182024 () Bool)

(assert (=> d!1182024 e!2476320))

(declare-fun res!1621771 () Bool)

(assert (=> d!1182024 (=> (not res!1621771) (not e!2476320))))

(assert (=> d!1182024 (= res!1621771 (= (content!6480 lt!1409497) ((_ map or) (content!6480 lt!1409386) (content!6480 lt!1409373))))))

(assert (=> d!1182024 (= lt!1409497 e!2476319)))

(declare-fun c!691181 () Bool)

(assert (=> d!1182024 (= c!691181 ((_ is Nil!42718) lt!1409386))))

(assert (=> d!1182024 (= (++!11168 lt!1409386 lt!1409373) lt!1409497)))

(assert (= (and d!1182024 c!691181) b!3994466))

(assert (= (and d!1182024 (not c!691181)) b!3994467))

(assert (= (and d!1182024 res!1621771) b!3994468))

(assert (= (and b!3994468 res!1621770) b!3994469))

(declare-fun m!4574531 () Bool)

(assert (=> b!3994468 m!4574531))

(assert (=> b!3994468 m!4574343))

(assert (=> b!3994468 m!4574389))

(declare-fun m!4574533 () Bool)

(assert (=> b!3994467 m!4574533))

(declare-fun m!4574535 () Bool)

(assert (=> d!1182024 m!4574535))

(declare-fun m!4574537 () Bool)

(assert (=> d!1182024 m!4574537))

(assert (=> d!1182024 m!4574395))

(assert (=> b!3994177 d!1182024))

(declare-fun d!1182028 () Bool)

(assert (=> d!1182028 (= (++!11168 (++!11168 prefix!494 newSuffix!27) lt!1409373) (++!11168 prefix!494 (++!11168 newSuffix!27 lt!1409373)))))

(declare-fun lt!1409503 () Unit!61548)

(declare-fun choose!24063 (List!42842 List!42842 List!42842) Unit!61548)

(assert (=> d!1182028 (= lt!1409503 (choose!24063 prefix!494 newSuffix!27 lt!1409373))))

(assert (=> d!1182028 (= (lemmaConcatAssociativity!2488 prefix!494 newSuffix!27 lt!1409373) lt!1409503)))

(declare-fun bs!588564 () Bool)

(assert (= bs!588564 d!1182028))

(declare-fun m!4574543 () Bool)

(assert (=> bs!588564 m!4574543))

(assert (=> bs!588564 m!4574049))

(declare-fun m!4574545 () Bool)

(assert (=> bs!588564 m!4574545))

(assert (=> bs!588564 m!4574069))

(declare-fun m!4574547 () Bool)

(assert (=> bs!588564 m!4574547))

(assert (=> bs!588564 m!4574049))

(assert (=> bs!588564 m!4574069))

(assert (=> b!3994177 d!1182028))

(declare-fun d!1182032 () Bool)

(declare-fun lt!1409504 () Int)

(assert (=> d!1182032 (>= lt!1409504 0)))

(declare-fun e!2476321 () Int)

(assert (=> d!1182032 (= lt!1409504 e!2476321)))

(declare-fun c!691182 () Bool)

(assert (=> d!1182032 (= c!691182 ((_ is Nil!42718) lt!1409363))))

(assert (=> d!1182032 (= (size!31949 lt!1409363) lt!1409504)))

(declare-fun b!3994470 () Bool)

(assert (=> b!3994470 (= e!2476321 0)))

(declare-fun b!3994471 () Bool)

(assert (=> b!3994471 (= e!2476321 (+ 1 (size!31949 (t!331929 lt!1409363))))))

(assert (= (and d!1182032 c!691182) b!3994470))

(assert (= (and d!1182032 (not c!691182)) b!3994471))

(declare-fun m!4574549 () Bool)

(assert (=> b!3994471 m!4574549))

(assert (=> b!3994203 d!1182032))

(declare-fun d!1182034 () Bool)

(declare-fun lt!1409505 () Int)

(assert (=> d!1182034 (>= lt!1409505 0)))

(declare-fun e!2476322 () Int)

(assert (=> d!1182034 (= lt!1409505 e!2476322)))

(declare-fun c!691183 () Bool)

(assert (=> d!1182034 (= c!691183 ((_ is Nil!42718) prefix!494))))

(assert (=> d!1182034 (= (size!31949 prefix!494) lt!1409505)))

(declare-fun b!3994472 () Bool)

(assert (=> b!3994472 (= e!2476322 0)))

(declare-fun b!3994473 () Bool)

(assert (=> b!3994473 (= e!2476322 (+ 1 (size!31949 (t!331929 prefix!494))))))

(assert (= (and d!1182034 c!691183) b!3994472))

(assert (= (and d!1182034 (not c!691183)) b!3994473))

(declare-fun m!4574551 () Bool)

(assert (=> b!3994473 m!4574551))

(assert (=> b!3994203 d!1182034))

(declare-fun d!1182036 () Bool)

(declare-fun list!15864 (Conc!12977) List!42842)

(assert (=> d!1182036 (= (list!15862 (charsOf!4582 token!484)) (list!15864 (c!691136 (charsOf!4582 token!484))))))

(declare-fun bs!588565 () Bool)

(assert (= bs!588565 d!1182036))

(declare-fun m!4574553 () Bool)

(assert (=> bs!588565 m!4574553))

(assert (=> b!3994203 d!1182036))

(declare-fun d!1182038 () Bool)

(declare-fun lt!1409508 () BalanceConc!25548)

(assert (=> d!1182038 (= (list!15862 lt!1409508) (originalCharacters!7366 token!484))))

(assert (=> d!1182038 (= lt!1409508 (dynLambda!18144 (toChars!9113 (transformation!6766 (rule!9790 token!484))) (value!213465 token!484)))))

(assert (=> d!1182038 (= (charsOf!4582 token!484) lt!1409508)))

(declare-fun b_lambda!116597 () Bool)

(assert (=> (not b_lambda!116597) (not d!1182038)))

(assert (=> d!1182038 t!331937))

(declare-fun b_and!306835 () Bool)

(assert (= b_and!306827 (and (=> t!331937 result!291256) b_and!306835)))

(assert (=> d!1182038 t!331939))

(declare-fun b_and!306837 () Bool)

(assert (= b_and!306829 (and (=> t!331939 result!291260) b_and!306837)))

(declare-fun m!4574559 () Bool)

(assert (=> d!1182038 m!4574559))

(assert (=> d!1182038 m!4574467))

(assert (=> b!3994203 d!1182038))

(declare-fun d!1182042 () Bool)

(assert (=> d!1182042 (= lt!1409353 suffixResult!105)))

(declare-fun lt!1409509 () Unit!61548)

(assert (=> d!1182042 (= lt!1409509 (choose!24058 lt!1409363 lt!1409353 lt!1409363 suffixResult!105 lt!1409384))))

(assert (=> d!1182042 (isPrefix!3853 lt!1409363 lt!1409384)))

(assert (=> d!1182042 (= (lemmaSamePrefixThenSameSuffix!2040 lt!1409363 lt!1409353 lt!1409363 suffixResult!105 lt!1409384) lt!1409509)))

(declare-fun bs!588566 () Bool)

(assert (= bs!588566 d!1182042))

(declare-fun m!4574561 () Bool)

(assert (=> bs!588566 m!4574561))

(assert (=> bs!588566 m!4574009))

(assert (=> b!3994182 d!1182042))

(declare-fun d!1182044 () Bool)

(declare-fun dynLambda!18145 (Int BalanceConc!25548) TokenValue!6996)

(assert (=> d!1182044 (= (apply!9977 (transformation!6766 (rule!9790 token!484)) (seqFromList!5005 lt!1409363)) (dynLambda!18145 (toValue!9254 (transformation!6766 (rule!9790 token!484))) (seqFromList!5005 lt!1409363)))))

(declare-fun b_lambda!116599 () Bool)

(assert (=> (not b_lambda!116599) (not d!1182044)))

(declare-fun t!331945 () Bool)

(declare-fun tb!240361 () Bool)

(assert (=> (and b!3994179 (= (toValue!9254 (transformation!6766 (rule!9790 token!484))) (toValue!9254 (transformation!6766 (rule!9790 token!484)))) t!331945) tb!240361))

(declare-fun result!291268 () Bool)

(assert (=> tb!240361 (= result!291268 (inv!21 (dynLambda!18145 (toValue!9254 (transformation!6766 (rule!9790 token!484))) (seqFromList!5005 lt!1409363))))))

(declare-fun m!4574565 () Bool)

(assert (=> tb!240361 m!4574565))

(assert (=> d!1182044 t!331945))

(declare-fun b_and!306839 () Bool)

(assert (= b_and!306815 (and (=> t!331945 result!291268) b_and!306839)))

(declare-fun tb!240363 () Bool)

(declare-fun t!331947 () Bool)

(assert (=> (and b!3994187 (= (toValue!9254 (transformation!6766 (h!48140 rules!2999))) (toValue!9254 (transformation!6766 (rule!9790 token!484)))) t!331947) tb!240363))

(declare-fun result!291272 () Bool)

(assert (= result!291272 result!291268))

(assert (=> d!1182044 t!331947))

(declare-fun b_and!306841 () Bool)

(assert (= b_and!306819 (and (=> t!331947 result!291272) b_and!306841)))

(assert (=> d!1182044 m!4574033))

(declare-fun m!4574567 () Bool)

(assert (=> d!1182044 m!4574567))

(assert (=> b!3994182 d!1182044))

(declare-fun d!1182050 () Bool)

(assert (=> d!1182050 (isPrefix!3853 lt!1409363 (++!11168 lt!1409363 lt!1409353))))

(declare-fun lt!1409511 () Unit!61548)

(assert (=> d!1182050 (= lt!1409511 (choose!24054 lt!1409363 lt!1409353))))

(assert (=> d!1182050 (= (lemmaConcatTwoListThenFirstIsPrefix!2696 lt!1409363 lt!1409353) lt!1409511)))

(declare-fun bs!588569 () Bool)

(assert (= bs!588569 d!1182050))

(assert (=> bs!588569 m!4574143))

(assert (=> bs!588569 m!4574143))

(declare-fun m!4574569 () Bool)

(assert (=> bs!588569 m!4574569))

(declare-fun m!4574571 () Bool)

(assert (=> bs!588569 m!4574571))

(assert (=> b!3994182 d!1182050))

(declare-fun d!1182052 () Bool)

(declare-fun fromListB!2298 (List!42842) BalanceConc!25548)

(assert (=> d!1182052 (= (seqFromList!5005 lt!1409363) (fromListB!2298 lt!1409363))))

(declare-fun bs!588570 () Bool)

(assert (= bs!588570 d!1182052))

(declare-fun m!4574583 () Bool)

(assert (=> bs!588570 m!4574583))

(assert (=> b!3994182 d!1182052))

(declare-fun b!3994489 () Bool)

(declare-fun e!2476333 () Bool)

(assert (=> b!3994489 (= e!2476333 (isPrefix!3853 (tail!6228 lt!1409363) (tail!6228 lt!1409406)))))

(declare-fun b!3994490 () Bool)

(declare-fun e!2476334 () Bool)

(assert (=> b!3994490 (= e!2476334 (>= (size!31949 lt!1409406) (size!31949 lt!1409363)))))

(declare-fun b!3994488 () Bool)

(declare-fun res!1621779 () Bool)

(assert (=> b!3994488 (=> (not res!1621779) (not e!2476333))))

(assert (=> b!3994488 (= res!1621779 (= (head!8496 lt!1409363) (head!8496 lt!1409406)))))

(declare-fun d!1182056 () Bool)

(assert (=> d!1182056 e!2476334))

(declare-fun res!1621780 () Bool)

(assert (=> d!1182056 (=> res!1621780 e!2476334)))

(declare-fun lt!1409514 () Bool)

(assert (=> d!1182056 (= res!1621780 (not lt!1409514))))

(declare-fun e!2476335 () Bool)

(assert (=> d!1182056 (= lt!1409514 e!2476335)))

(declare-fun res!1621777 () Bool)

(assert (=> d!1182056 (=> res!1621777 e!2476335)))

(assert (=> d!1182056 (= res!1621777 ((_ is Nil!42718) lt!1409363))))

(assert (=> d!1182056 (= (isPrefix!3853 lt!1409363 lt!1409406) lt!1409514)))

(declare-fun b!3994487 () Bool)

(assert (=> b!3994487 (= e!2476335 e!2476333)))

(declare-fun res!1621778 () Bool)

(assert (=> b!3994487 (=> (not res!1621778) (not e!2476333))))

(assert (=> b!3994487 (= res!1621778 (not ((_ is Nil!42718) lt!1409406)))))

(assert (= (and d!1182056 (not res!1621777)) b!3994487))

(assert (= (and b!3994487 res!1621778) b!3994488))

(assert (= (and b!3994488 res!1621779) b!3994489))

(assert (= (and d!1182056 (not res!1621780)) b!3994490))

(assert (=> b!3994489 m!4574201))

(declare-fun m!4574587 () Bool)

(assert (=> b!3994489 m!4574587))

(assert (=> b!3994489 m!4574201))

(assert (=> b!3994489 m!4574587))

(declare-fun m!4574591 () Bool)

(assert (=> b!3994489 m!4574591))

(declare-fun m!4574593 () Bool)

(assert (=> b!3994490 m!4574593))

(assert (=> b!3994490 m!4574053))

(assert (=> b!3994488 m!4574209))

(declare-fun m!4574595 () Bool)

(assert (=> b!3994488 m!4574595))

(assert (=> b!3994182 d!1182056))

(declare-fun d!1182062 () Bool)

(assert (=> d!1182062 (= (maxPrefixOneRule!2687 thiss!21717 (rule!9790 token!484) lt!1409384) (Some!9179 (tuple2!41917 (Token!12671 (apply!9977 (transformation!6766 (rule!9790 token!484)) (seqFromList!5005 lt!1409363)) (rule!9790 token!484) (size!31949 lt!1409363) lt!1409363) suffixResult!105)))))

(declare-fun lt!1409525 () Unit!61548)

(declare-fun choose!24064 (LexerInterface!6355 List!42844 List!42842 List!42842 List!42842 Rule!13332) Unit!61548)

(assert (=> d!1182062 (= lt!1409525 (choose!24064 thiss!21717 rules!2999 lt!1409363 lt!1409384 suffixResult!105 (rule!9790 token!484)))))

(assert (=> d!1182062 (not (isEmpty!25532 rules!2999))))

(assert (=> d!1182062 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1509 thiss!21717 rules!2999 lt!1409363 lt!1409384 suffixResult!105 (rule!9790 token!484)) lt!1409525)))

(declare-fun bs!588574 () Bool)

(assert (= bs!588574 d!1182062))

(declare-fun m!4574619 () Bool)

(assert (=> bs!588574 m!4574619))

(assert (=> bs!588574 m!4574167))

(assert (=> bs!588574 m!4574033))

(assert (=> bs!588574 m!4574033))

(assert (=> bs!588574 m!4574035))

(assert (=> bs!588574 m!4574053))

(assert (=> bs!588574 m!4574031))

(assert (=> b!3994182 d!1182062))

(declare-fun d!1182072 () Bool)

(declare-fun e!2476382 () Bool)

(assert (=> d!1182072 e!2476382))

(declare-fun res!1621850 () Bool)

(assert (=> d!1182072 (=> res!1621850 e!2476382)))

(declare-fun lt!1409570 () Option!9180)

(assert (=> d!1182072 (= res!1621850 (isEmpty!25535 lt!1409570))))

(declare-fun e!2476383 () Option!9180)

(assert (=> d!1182072 (= lt!1409570 e!2476383)))

(declare-fun c!691197 () Bool)

(declare-datatypes ((tuple2!41920 0))(
  ( (tuple2!41921 (_1!24094 List!42842) (_2!24094 List!42842)) )
))
(declare-fun lt!1409569 () tuple2!41920)

(assert (=> d!1182072 (= c!691197 (isEmpty!25536 (_1!24094 lt!1409569)))))

(declare-fun findLongestMatch!1253 (Regex!11671 List!42842) tuple2!41920)

(assert (=> d!1182072 (= lt!1409569 (findLongestMatch!1253 (regex!6766 (rule!9790 token!484)) lt!1409384))))

(assert (=> d!1182072 (ruleValid!2698 thiss!21717 (rule!9790 token!484))))

(assert (=> d!1182072 (= (maxPrefixOneRule!2687 thiss!21717 (rule!9790 token!484) lt!1409384) lt!1409570)))

(declare-fun b!3994580 () Bool)

(declare-fun res!1621855 () Bool)

(declare-fun e!2476381 () Bool)

(assert (=> b!3994580 (=> (not res!1621855) (not e!2476381))))

(assert (=> b!3994580 (= res!1621855 (< (size!31949 (_2!24092 (get!14055 lt!1409570))) (size!31949 lt!1409384)))))

(declare-fun b!3994581 () Bool)

(assert (=> b!3994581 (= e!2476382 e!2476381)))

(declare-fun res!1621852 () Bool)

(assert (=> b!3994581 (=> (not res!1621852) (not e!2476381))))

(assert (=> b!3994581 (= res!1621852 (matchR!5648 (regex!6766 (rule!9790 token!484)) (list!15862 (charsOf!4582 (_1!24092 (get!14055 lt!1409570))))))))

(declare-fun b!3994582 () Bool)

(declare-fun res!1621856 () Bool)

(assert (=> b!3994582 (=> (not res!1621856) (not e!2476381))))

(assert (=> b!3994582 (= res!1621856 (= (value!213465 (_1!24092 (get!14055 lt!1409570))) (apply!9977 (transformation!6766 (rule!9790 (_1!24092 (get!14055 lt!1409570)))) (seqFromList!5005 (originalCharacters!7366 (_1!24092 (get!14055 lt!1409570)))))))))

(declare-fun b!3994583 () Bool)

(declare-fun size!31951 (BalanceConc!25548) Int)

(assert (=> b!3994583 (= e!2476383 (Some!9179 (tuple2!41917 (Token!12671 (apply!9977 (transformation!6766 (rule!9790 token!484)) (seqFromList!5005 (_1!24094 lt!1409569))) (rule!9790 token!484) (size!31951 (seqFromList!5005 (_1!24094 lt!1409569))) (_1!24094 lt!1409569)) (_2!24094 lt!1409569))))))

(declare-fun lt!1409572 () Unit!61548)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1313 (Regex!11671 List!42842) Unit!61548)

(assert (=> b!3994583 (= lt!1409572 (longestMatchIsAcceptedByMatchOrIsEmpty!1313 (regex!6766 (rule!9790 token!484)) lt!1409384))))

(declare-fun res!1621854 () Bool)

(declare-fun findLongestMatchInner!1340 (Regex!11671 List!42842 Int List!42842 List!42842 Int) tuple2!41920)

(assert (=> b!3994583 (= res!1621854 (isEmpty!25536 (_1!24094 (findLongestMatchInner!1340 (regex!6766 (rule!9790 token!484)) Nil!42718 (size!31949 Nil!42718) lt!1409384 lt!1409384 (size!31949 lt!1409384)))))))

(declare-fun e!2476384 () Bool)

(assert (=> b!3994583 (=> res!1621854 e!2476384)))

(assert (=> b!3994583 e!2476384))

(declare-fun lt!1409568 () Unit!61548)

(assert (=> b!3994583 (= lt!1409568 lt!1409572)))

(declare-fun lt!1409571 () Unit!61548)

(declare-fun lemmaSemiInverse!1858 (TokenValueInjection!13420 BalanceConc!25548) Unit!61548)

(assert (=> b!3994583 (= lt!1409571 (lemmaSemiInverse!1858 (transformation!6766 (rule!9790 token!484)) (seqFromList!5005 (_1!24094 lt!1409569))))))

(declare-fun b!3994584 () Bool)

(declare-fun res!1621853 () Bool)

(assert (=> b!3994584 (=> (not res!1621853) (not e!2476381))))

(assert (=> b!3994584 (= res!1621853 (= (rule!9790 (_1!24092 (get!14055 lt!1409570))) (rule!9790 token!484)))))

(declare-fun b!3994585 () Bool)

(assert (=> b!3994585 (= e!2476383 None!9179)))

(declare-fun b!3994586 () Bool)

(declare-fun res!1621851 () Bool)

(assert (=> b!3994586 (=> (not res!1621851) (not e!2476381))))

(assert (=> b!3994586 (= res!1621851 (= (++!11168 (list!15862 (charsOf!4582 (_1!24092 (get!14055 lt!1409570)))) (_2!24092 (get!14055 lt!1409570))) lt!1409384))))

(declare-fun b!3994587 () Bool)

(assert (=> b!3994587 (= e!2476381 (= (size!31948 (_1!24092 (get!14055 lt!1409570))) (size!31949 (originalCharacters!7366 (_1!24092 (get!14055 lt!1409570))))))))

(declare-fun b!3994588 () Bool)

(assert (=> b!3994588 (= e!2476384 (matchR!5648 (regex!6766 (rule!9790 token!484)) (_1!24094 (findLongestMatchInner!1340 (regex!6766 (rule!9790 token!484)) Nil!42718 (size!31949 Nil!42718) lt!1409384 lt!1409384 (size!31949 lt!1409384)))))))

(assert (= (and d!1182072 c!691197) b!3994585))

(assert (= (and d!1182072 (not c!691197)) b!3994583))

(assert (= (and b!3994583 (not res!1621854)) b!3994588))

(assert (= (and d!1182072 (not res!1621850)) b!3994581))

(assert (= (and b!3994581 res!1621852) b!3994586))

(assert (= (and b!3994586 res!1621851) b!3994580))

(assert (= (and b!3994580 res!1621855) b!3994584))

(assert (= (and b!3994584 res!1621853) b!3994582))

(assert (= (and b!3994582 res!1621856) b!3994587))

(declare-fun m!4574733 () Bool)

(assert (=> b!3994584 m!4574733))

(declare-fun m!4574735 () Bool)

(assert (=> b!3994588 m!4574735))

(assert (=> b!3994588 m!4574219))

(assert (=> b!3994588 m!4574735))

(assert (=> b!3994588 m!4574219))

(declare-fun m!4574737 () Bool)

(assert (=> b!3994588 m!4574737))

(declare-fun m!4574739 () Bool)

(assert (=> b!3994588 m!4574739))

(declare-fun m!4574741 () Bool)

(assert (=> b!3994583 m!4574741))

(declare-fun m!4574743 () Bool)

(assert (=> b!3994583 m!4574743))

(declare-fun m!4574745 () Bool)

(assert (=> b!3994583 m!4574745))

(declare-fun m!4574747 () Bool)

(assert (=> b!3994583 m!4574747))

(assert (=> b!3994583 m!4574219))

(assert (=> b!3994583 m!4574741))

(declare-fun m!4574749 () Bool)

(assert (=> b!3994583 m!4574749))

(assert (=> b!3994583 m!4574741))

(assert (=> b!3994583 m!4574741))

(declare-fun m!4574751 () Bool)

(assert (=> b!3994583 m!4574751))

(assert (=> b!3994583 m!4574735))

(assert (=> b!3994583 m!4574219))

(assert (=> b!3994583 m!4574737))

(assert (=> b!3994583 m!4574735))

(assert (=> b!3994581 m!4574733))

(declare-fun m!4574753 () Bool)

(assert (=> b!3994581 m!4574753))

(assert (=> b!3994581 m!4574753))

(declare-fun m!4574755 () Bool)

(assert (=> b!3994581 m!4574755))

(assert (=> b!3994581 m!4574755))

(declare-fun m!4574757 () Bool)

(assert (=> b!3994581 m!4574757))

(assert (=> b!3994587 m!4574733))

(declare-fun m!4574759 () Bool)

(assert (=> b!3994587 m!4574759))

(assert (=> b!3994580 m!4574733))

(declare-fun m!4574761 () Bool)

(assert (=> b!3994580 m!4574761))

(assert (=> b!3994580 m!4574219))

(assert (=> b!3994582 m!4574733))

(declare-fun m!4574763 () Bool)

(assert (=> b!3994582 m!4574763))

(assert (=> b!3994582 m!4574763))

(declare-fun m!4574765 () Bool)

(assert (=> b!3994582 m!4574765))

(assert (=> b!3994586 m!4574733))

(assert (=> b!3994586 m!4574753))

(assert (=> b!3994586 m!4574753))

(assert (=> b!3994586 m!4574755))

(assert (=> b!3994586 m!4574755))

(declare-fun m!4574767 () Bool)

(assert (=> b!3994586 m!4574767))

(declare-fun m!4574769 () Bool)

(assert (=> d!1182072 m!4574769))

(declare-fun m!4574771 () Bool)

(assert (=> d!1182072 m!4574771))

(declare-fun m!4574773 () Bool)

(assert (=> d!1182072 m!4574773))

(assert (=> d!1182072 m!4574163))

(assert (=> b!3994182 d!1182072))

(declare-fun b!3994599 () Bool)

(declare-fun e!2476390 () List!42842)

(assert (=> b!3994599 (= e!2476390 lt!1409398)))

(declare-fun b!3994601 () Bool)

(declare-fun res!1621859 () Bool)

(declare-fun e!2476391 () Bool)

(assert (=> b!3994601 (=> (not res!1621859) (not e!2476391))))

(declare-fun lt!1409577 () List!42842)

(assert (=> b!3994601 (= res!1621859 (= (size!31949 lt!1409577) (+ (size!31949 lt!1409363) (size!31949 lt!1409398))))))

(declare-fun b!3994600 () Bool)

(assert (=> b!3994600 (= e!2476390 (Cons!42718 (h!48138 lt!1409363) (++!11168 (t!331929 lt!1409363) lt!1409398)))))

(declare-fun b!3994602 () Bool)

(assert (=> b!3994602 (= e!2476391 (or (not (= lt!1409398 Nil!42718)) (= lt!1409577 lt!1409363)))))

(declare-fun d!1182100 () Bool)

(assert (=> d!1182100 e!2476391))

(declare-fun res!1621860 () Bool)

(assert (=> d!1182100 (=> (not res!1621860) (not e!2476391))))

(assert (=> d!1182100 (= res!1621860 (= (content!6480 lt!1409577) ((_ map or) (content!6480 lt!1409363) (content!6480 lt!1409398))))))

(assert (=> d!1182100 (= lt!1409577 e!2476390)))

(declare-fun c!691202 () Bool)

(assert (=> d!1182100 (= c!691202 ((_ is Nil!42718) lt!1409363))))

(assert (=> d!1182100 (= (++!11168 lt!1409363 lt!1409398) lt!1409577)))

(assert (= (and d!1182100 c!691202) b!3994599))

(assert (= (and d!1182100 (not c!691202)) b!3994600))

(assert (= (and d!1182100 res!1621860) b!3994601))

(assert (= (and b!3994601 res!1621859) b!3994602))

(declare-fun m!4574779 () Bool)

(assert (=> b!3994601 m!4574779))

(assert (=> b!3994601 m!4574053))

(declare-fun m!4574781 () Bool)

(assert (=> b!3994601 m!4574781))

(declare-fun m!4574783 () Bool)

(assert (=> b!3994600 m!4574783))

(declare-fun m!4574785 () Bool)

(assert (=> d!1182100 m!4574785))

(assert (=> d!1182100 m!4574279))

(declare-fun m!4574789 () Bool)

(assert (=> d!1182100 m!4574789))

(assert (=> b!3994181 d!1182100))

(declare-fun d!1182104 () Bool)

(declare-fun lt!1409579 () List!42842)

(assert (=> d!1182104 (= (++!11168 lt!1409363 lt!1409579) prefix!494)))

(declare-fun e!2476392 () List!42842)

(assert (=> d!1182104 (= lt!1409579 e!2476392)))

(declare-fun c!691203 () Bool)

(assert (=> d!1182104 (= c!691203 ((_ is Cons!42718) lt!1409363))))

(assert (=> d!1182104 (>= (size!31949 prefix!494) (size!31949 lt!1409363))))

(assert (=> d!1182104 (= (getSuffix!2284 prefix!494 lt!1409363) lt!1409579)))

(declare-fun b!3994603 () Bool)

(assert (=> b!3994603 (= e!2476392 (getSuffix!2284 (tail!6228 prefix!494) (t!331929 lt!1409363)))))

(declare-fun b!3994604 () Bool)

(assert (=> b!3994604 (= e!2476392 prefix!494)))

(assert (= (and d!1182104 c!691203) b!3994603))

(assert (= (and d!1182104 (not c!691203)) b!3994604))

(declare-fun m!4574793 () Bool)

(assert (=> d!1182104 m!4574793))

(assert (=> d!1182104 m!4574055))

(assert (=> d!1182104 m!4574053))

(assert (=> b!3994603 m!4574213))

(assert (=> b!3994603 m!4574213))

(declare-fun m!4574795 () Bool)

(assert (=> b!3994603 m!4574795))

(assert (=> b!3994181 d!1182104))

(declare-fun b!3994607 () Bool)

(declare-fun e!2476393 () Bool)

(assert (=> b!3994607 (= e!2476393 (isPrefix!3853 (tail!6228 lt!1409363) (tail!6228 prefix!494)))))

(declare-fun b!3994608 () Bool)

(declare-fun e!2476394 () Bool)

(assert (=> b!3994608 (= e!2476394 (>= (size!31949 prefix!494) (size!31949 lt!1409363)))))

(declare-fun b!3994606 () Bool)

(declare-fun res!1621863 () Bool)

(assert (=> b!3994606 (=> (not res!1621863) (not e!2476393))))

(assert (=> b!3994606 (= res!1621863 (= (head!8496 lt!1409363) (head!8496 prefix!494)))))

(declare-fun d!1182108 () Bool)

(assert (=> d!1182108 e!2476394))

(declare-fun res!1621864 () Bool)

(assert (=> d!1182108 (=> res!1621864 e!2476394)))

(declare-fun lt!1409581 () Bool)

(assert (=> d!1182108 (= res!1621864 (not lt!1409581))))

(declare-fun e!2476395 () Bool)

(assert (=> d!1182108 (= lt!1409581 e!2476395)))

(declare-fun res!1621861 () Bool)

(assert (=> d!1182108 (=> res!1621861 e!2476395)))

(assert (=> d!1182108 (= res!1621861 ((_ is Nil!42718) lt!1409363))))

(assert (=> d!1182108 (= (isPrefix!3853 lt!1409363 prefix!494) lt!1409581)))

(declare-fun b!3994605 () Bool)

(assert (=> b!3994605 (= e!2476395 e!2476393)))

(declare-fun res!1621862 () Bool)

(assert (=> b!3994605 (=> (not res!1621862) (not e!2476393))))

(assert (=> b!3994605 (= res!1621862 (not ((_ is Nil!42718) prefix!494)))))

(assert (= (and d!1182108 (not res!1621861)) b!3994605))

(assert (= (and b!3994605 res!1621862) b!3994606))

(assert (= (and b!3994606 res!1621863) b!3994607))

(assert (= (and d!1182108 (not res!1621864)) b!3994608))

(assert (=> b!3994607 m!4574201))

(assert (=> b!3994607 m!4574213))

(assert (=> b!3994607 m!4574201))

(assert (=> b!3994607 m!4574213))

(declare-fun m!4574799 () Bool)

(assert (=> b!3994607 m!4574799))

(assert (=> b!3994608 m!4574055))

(assert (=> b!3994608 m!4574053))

(assert (=> b!3994606 m!4574209))

(assert (=> b!3994606 m!4574221))

(assert (=> b!3994181 d!1182108))

(declare-fun d!1182112 () Bool)

(assert (=> d!1182112 (isPrefix!3853 lt!1409363 prefix!494)))

(declare-fun lt!1409589 () Unit!61548)

(declare-fun choose!24066 (List!42842 List!42842 List!42842) Unit!61548)

(assert (=> d!1182112 (= lt!1409589 (choose!24066 prefix!494 lt!1409363 lt!1409384))))

(assert (=> d!1182112 (isPrefix!3853 prefix!494 lt!1409384)))

(assert (=> d!1182112 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!431 prefix!494 lt!1409363 lt!1409384) lt!1409589)))

(declare-fun bs!588581 () Bool)

(assert (= bs!588581 d!1182112))

(assert (=> bs!588581 m!4574179))

(declare-fun m!4574829 () Bool)

(assert (=> bs!588581 m!4574829))

(assert (=> bs!588581 m!4574015))

(assert (=> b!3994181 d!1182112))

(declare-fun b!3994618 () Bool)

(declare-fun e!2476400 () List!42842)

(assert (=> b!3994618 (= e!2476400 lt!1409382)))

(declare-fun b!3994620 () Bool)

(declare-fun res!1621872 () Bool)

(declare-fun e!2476401 () Bool)

(assert (=> b!3994620 (=> (not res!1621872) (not e!2476401))))

(declare-fun lt!1409590 () List!42842)

(assert (=> b!3994620 (= res!1621872 (= (size!31949 lt!1409590) (+ (size!31949 lt!1409363) (size!31949 lt!1409382))))))

(declare-fun b!3994619 () Bool)

(assert (=> b!3994619 (= e!2476400 (Cons!42718 (h!48138 lt!1409363) (++!11168 (t!331929 lt!1409363) lt!1409382)))))

(declare-fun b!3994621 () Bool)

(assert (=> b!3994621 (= e!2476401 (or (not (= lt!1409382 Nil!42718)) (= lt!1409590 lt!1409363)))))

(declare-fun d!1182114 () Bool)

(assert (=> d!1182114 e!2476401))

(declare-fun res!1621873 () Bool)

(assert (=> d!1182114 (=> (not res!1621873) (not e!2476401))))

(assert (=> d!1182114 (= res!1621873 (= (content!6480 lt!1409590) ((_ map or) (content!6480 lt!1409363) (content!6480 lt!1409382))))))

(assert (=> d!1182114 (= lt!1409590 e!2476400)))

(declare-fun c!691205 () Bool)

(assert (=> d!1182114 (= c!691205 ((_ is Nil!42718) lt!1409363))))

(assert (=> d!1182114 (= (++!11168 lt!1409363 lt!1409382) lt!1409590)))

(assert (= (and d!1182114 c!691205) b!3994618))

(assert (= (and d!1182114 (not c!691205)) b!3994619))

(assert (= (and d!1182114 res!1621873) b!3994620))

(assert (= (and b!3994620 res!1621872) b!3994621))

(declare-fun m!4574841 () Bool)

(assert (=> b!3994620 m!4574841))

(assert (=> b!3994620 m!4574053))

(declare-fun m!4574845 () Bool)

(assert (=> b!3994620 m!4574845))

(declare-fun m!4574847 () Bool)

(assert (=> b!3994619 m!4574847))

(declare-fun m!4574849 () Bool)

(assert (=> d!1182114 m!4574849))

(assert (=> d!1182114 m!4574279))

(declare-fun m!4574851 () Bool)

(assert (=> d!1182114 m!4574851))

(assert (=> b!3994202 d!1182114))

(declare-fun d!1182116 () Bool)

(declare-fun lt!1409591 () List!42842)

(assert (=> d!1182116 (= (++!11168 lt!1409363 lt!1409591) lt!1409384)))

(declare-fun e!2476402 () List!42842)

(assert (=> d!1182116 (= lt!1409591 e!2476402)))

(declare-fun c!691206 () Bool)

(assert (=> d!1182116 (= c!691206 ((_ is Cons!42718) lt!1409363))))

(assert (=> d!1182116 (>= (size!31949 lt!1409384) (size!31949 lt!1409363))))

(assert (=> d!1182116 (= (getSuffix!2284 lt!1409384 lt!1409363) lt!1409591)))

(declare-fun b!3994622 () Bool)

(assert (=> b!3994622 (= e!2476402 (getSuffix!2284 (tail!6228 lt!1409384) (t!331929 lt!1409363)))))

(declare-fun b!3994623 () Bool)

(assert (=> b!3994623 (= e!2476402 lt!1409384)))

(assert (= (and d!1182116 c!691206) b!3994622))

(assert (= (and d!1182116 (not c!691206)) b!3994623))

(declare-fun m!4574855 () Bool)

(assert (=> d!1182116 m!4574855))

(assert (=> d!1182116 m!4574219))

(assert (=> d!1182116 m!4574053))

(assert (=> b!3994622 m!4574215))

(assert (=> b!3994622 m!4574215))

(declare-fun m!4574857 () Bool)

(assert (=> b!3994622 m!4574857))

(assert (=> b!3994202 d!1182116))

(declare-fun b!3994630 () Bool)

(declare-fun e!2476406 () Bool)

(assert (=> b!3994630 (= e!2476406 (isPrefix!3853 (tail!6228 lt!1409384) (tail!6228 lt!1409384)))))

(declare-fun b!3994631 () Bool)

(declare-fun e!2476407 () Bool)

(assert (=> b!3994631 (= e!2476407 (>= (size!31949 lt!1409384) (size!31949 lt!1409384)))))

(declare-fun b!3994629 () Bool)

(declare-fun res!1621880 () Bool)

(assert (=> b!3994629 (=> (not res!1621880) (not e!2476406))))

(assert (=> b!3994629 (= res!1621880 (= (head!8496 lt!1409384) (head!8496 lt!1409384)))))

(declare-fun d!1182120 () Bool)

(assert (=> d!1182120 e!2476407))

(declare-fun res!1621881 () Bool)

(assert (=> d!1182120 (=> res!1621881 e!2476407)))

(declare-fun lt!1409593 () Bool)

(assert (=> d!1182120 (= res!1621881 (not lt!1409593))))

(declare-fun e!2476408 () Bool)

(assert (=> d!1182120 (= lt!1409593 e!2476408)))

(declare-fun res!1621878 () Bool)

(assert (=> d!1182120 (=> res!1621878 e!2476408)))

(assert (=> d!1182120 (= res!1621878 ((_ is Nil!42718) lt!1409384))))

(assert (=> d!1182120 (= (isPrefix!3853 lt!1409384 lt!1409384) lt!1409593)))

(declare-fun b!3994628 () Bool)

(assert (=> b!3994628 (= e!2476408 e!2476406)))

(declare-fun res!1621879 () Bool)

(assert (=> b!3994628 (=> (not res!1621879) (not e!2476406))))

(assert (=> b!3994628 (= res!1621879 (not ((_ is Nil!42718) lt!1409384)))))

(assert (= (and d!1182120 (not res!1621878)) b!3994628))

(assert (= (and b!3994628 res!1621879) b!3994629))

(assert (= (and b!3994629 res!1621880) b!3994630))

(assert (= (and d!1182120 (not res!1621881)) b!3994631))

(assert (=> b!3994630 m!4574215))

(assert (=> b!3994630 m!4574215))

(assert (=> b!3994630 m!4574215))

(assert (=> b!3994630 m!4574215))

(declare-fun m!4574867 () Bool)

(assert (=> b!3994630 m!4574867))

(assert (=> b!3994631 m!4574219))

(assert (=> b!3994631 m!4574219))

(assert (=> b!3994629 m!4574223))

(assert (=> b!3994629 m!4574223))

(assert (=> b!3994202 d!1182120))

(declare-fun d!1182126 () Bool)

(assert (=> d!1182126 (isPrefix!3853 lt!1409384 lt!1409384)))

(declare-fun lt!1409599 () Unit!61548)

(declare-fun choose!24067 (List!42842 List!42842) Unit!61548)

(assert (=> d!1182126 (= lt!1409599 (choose!24067 lt!1409384 lt!1409384))))

(assert (=> d!1182126 (= (lemmaIsPrefixRefl!2445 lt!1409384 lt!1409384) lt!1409599)))

(declare-fun bs!588584 () Bool)

(assert (= bs!588584 d!1182126))

(assert (=> bs!588584 m!4574065))

(declare-fun m!4574881 () Bool)

(assert (=> bs!588584 m!4574881))

(assert (=> b!3994202 d!1182126))

(declare-fun b!3994636 () Bool)

(declare-fun e!2476412 () List!42842)

(assert (=> b!3994636 (= e!2476412 lt!1409359)))

(declare-fun b!3994638 () Bool)

(declare-fun res!1621882 () Bool)

(declare-fun e!2476413 () Bool)

(assert (=> b!3994638 (=> (not res!1621882) (not e!2476413))))

(declare-fun lt!1409601 () List!42842)

(assert (=> b!3994638 (= res!1621882 (= (size!31949 lt!1409601) (+ (size!31949 lt!1409393) (size!31949 lt!1409359))))))

(declare-fun b!3994637 () Bool)

(assert (=> b!3994637 (= e!2476412 (Cons!42718 (h!48138 lt!1409393) (++!11168 (t!331929 lt!1409393) lt!1409359)))))

(declare-fun b!3994639 () Bool)

(assert (=> b!3994639 (= e!2476413 (or (not (= lt!1409359 Nil!42718)) (= lt!1409601 lt!1409393)))))

(declare-fun d!1182136 () Bool)

(assert (=> d!1182136 e!2476413))

(declare-fun res!1621883 () Bool)

(assert (=> d!1182136 (=> (not res!1621883) (not e!2476413))))

(assert (=> d!1182136 (= res!1621883 (= (content!6480 lt!1409601) ((_ map or) (content!6480 lt!1409393) (content!6480 lt!1409359))))))

(assert (=> d!1182136 (= lt!1409601 e!2476412)))

(declare-fun c!691209 () Bool)

(assert (=> d!1182136 (= c!691209 ((_ is Nil!42718) lt!1409393))))

(assert (=> d!1182136 (= (++!11168 lt!1409393 lt!1409359) lt!1409601)))

(assert (= (and d!1182136 c!691209) b!3994636))

(assert (= (and d!1182136 (not c!691209)) b!3994637))

(assert (= (and d!1182136 res!1621883) b!3994638))

(assert (= (and b!3994638 res!1621882) b!3994639))

(declare-fun m!4574885 () Bool)

(assert (=> b!3994638 m!4574885))

(assert (=> b!3994638 m!4574107))

(declare-fun m!4574887 () Bool)

(assert (=> b!3994638 m!4574887))

(declare-fun m!4574889 () Bool)

(assert (=> b!3994637 m!4574889))

(declare-fun m!4574891 () Bool)

(assert (=> d!1182136 m!4574891))

(declare-fun m!4574895 () Bool)

(assert (=> d!1182136 m!4574895))

(declare-fun m!4574899 () Bool)

(assert (=> d!1182136 m!4574899))

(assert (=> b!3994180 d!1182136))

(declare-fun d!1182140 () Bool)

(declare-fun lt!1409602 () List!42842)

(assert (=> d!1182140 (= (++!11168 lt!1409393 lt!1409602) lt!1409386)))

(declare-fun e!2476415 () List!42842)

(assert (=> d!1182140 (= lt!1409602 e!2476415)))

(declare-fun c!691210 () Bool)

(assert (=> d!1182140 (= c!691210 ((_ is Cons!42718) lt!1409393))))

(assert (=> d!1182140 (>= (size!31949 lt!1409386) (size!31949 lt!1409393))))

(assert (=> d!1182140 (= (getSuffix!2284 lt!1409386 lt!1409393) lt!1409602)))

(declare-fun b!3994641 () Bool)

(assert (=> b!3994641 (= e!2476415 (getSuffix!2284 (tail!6228 lt!1409386) (t!331929 lt!1409393)))))

(declare-fun b!3994642 () Bool)

(assert (=> b!3994642 (= e!2476415 lt!1409386)))

(assert (= (and d!1182140 c!691210) b!3994641))

(assert (= (and d!1182140 (not c!691210)) b!3994642))

(declare-fun m!4574905 () Bool)

(assert (=> d!1182140 m!4574905))

(assert (=> d!1182140 m!4574343))

(assert (=> d!1182140 m!4574107))

(assert (=> b!3994641 m!4574483))

(assert (=> b!3994641 m!4574483))

(declare-fun m!4574907 () Bool)

(assert (=> b!3994641 m!4574907))

(assert (=> b!3994180 d!1182140))

(declare-fun b!3994643 () Bool)

(declare-fun e!2476416 () List!42842)

(assert (=> b!3994643 (= e!2476416 (_2!24092 (v!39537 lt!1409347)))))

(declare-fun b!3994645 () Bool)

(declare-fun res!1621884 () Bool)

(declare-fun e!2476417 () Bool)

(assert (=> b!3994645 (=> (not res!1621884) (not e!2476417))))

(declare-fun lt!1409603 () List!42842)

(assert (=> b!3994645 (= res!1621884 (= (size!31949 lt!1409603) (+ (size!31949 lt!1409393) (size!31949 (_2!24092 (v!39537 lt!1409347))))))))

(declare-fun b!3994644 () Bool)

(assert (=> b!3994644 (= e!2476416 (Cons!42718 (h!48138 lt!1409393) (++!11168 (t!331929 lt!1409393) (_2!24092 (v!39537 lt!1409347)))))))

(declare-fun b!3994646 () Bool)

(assert (=> b!3994646 (= e!2476417 (or (not (= (_2!24092 (v!39537 lt!1409347)) Nil!42718)) (= lt!1409603 lt!1409393)))))

(declare-fun d!1182144 () Bool)

(assert (=> d!1182144 e!2476417))

(declare-fun res!1621885 () Bool)

(assert (=> d!1182144 (=> (not res!1621885) (not e!2476417))))

(assert (=> d!1182144 (= res!1621885 (= (content!6480 lt!1409603) ((_ map or) (content!6480 lt!1409393) (content!6480 (_2!24092 (v!39537 lt!1409347))))))))

(assert (=> d!1182144 (= lt!1409603 e!2476416)))

(declare-fun c!691211 () Bool)

(assert (=> d!1182144 (= c!691211 ((_ is Nil!42718) lt!1409393))))

(assert (=> d!1182144 (= (++!11168 lt!1409393 (_2!24092 (v!39537 lt!1409347))) lt!1409603)))

(assert (= (and d!1182144 c!691211) b!3994643))

(assert (= (and d!1182144 (not c!691211)) b!3994644))

(assert (= (and d!1182144 res!1621885) b!3994645))

(assert (= (and b!3994645 res!1621884) b!3994646))

(declare-fun m!4574909 () Bool)

(assert (=> b!3994645 m!4574909))

(assert (=> b!3994645 m!4574107))

(declare-fun m!4574911 () Bool)

(assert (=> b!3994645 m!4574911))

(declare-fun m!4574913 () Bool)

(assert (=> b!3994644 m!4574913))

(declare-fun m!4574915 () Bool)

(assert (=> d!1182144 m!4574915))

(assert (=> d!1182144 m!4574895))

(declare-fun m!4574917 () Bool)

(assert (=> d!1182144 m!4574917))

(assert (=> b!3994195 d!1182144))

(declare-fun d!1182146 () Bool)

(assert (=> d!1182146 (= (size!31948 token!484) (size!31949 (originalCharacters!7366 token!484)))))

(declare-fun Unit!61560 () Unit!61548)

(assert (=> d!1182146 (= (lemmaCharactersSize!1361 token!484) Unit!61560)))

(declare-fun bs!588586 () Bool)

(assert (= bs!588586 d!1182146))

(assert (=> bs!588586 m!4574027))

(assert (=> b!3994195 d!1182146))

(declare-fun b!3994651 () Bool)

(declare-fun e!2476420 () Bool)

(assert (=> b!3994651 (= e!2476420 (isPrefix!3853 (tail!6228 lt!1409393) (tail!6228 (++!11168 lt!1409393 newSuffixResult!27))))))

(declare-fun b!3994652 () Bool)

(declare-fun e!2476421 () Bool)

(assert (=> b!3994652 (= e!2476421 (>= (size!31949 (++!11168 lt!1409393 newSuffixResult!27)) (size!31949 lt!1409393)))))

(declare-fun b!3994650 () Bool)

(declare-fun res!1621890 () Bool)

(assert (=> b!3994650 (=> (not res!1621890) (not e!2476420))))

(assert (=> b!3994650 (= res!1621890 (= (head!8496 lt!1409393) (head!8496 (++!11168 lt!1409393 newSuffixResult!27))))))

(declare-fun d!1182148 () Bool)

(assert (=> d!1182148 e!2476421))

(declare-fun res!1621891 () Bool)

(assert (=> d!1182148 (=> res!1621891 e!2476421)))

(declare-fun lt!1409604 () Bool)

(assert (=> d!1182148 (= res!1621891 (not lt!1409604))))

(declare-fun e!2476422 () Bool)

(assert (=> d!1182148 (= lt!1409604 e!2476422)))

(declare-fun res!1621888 () Bool)

(assert (=> d!1182148 (=> res!1621888 e!2476422)))

(assert (=> d!1182148 (= res!1621888 ((_ is Nil!42718) lt!1409393))))

(assert (=> d!1182148 (= (isPrefix!3853 lt!1409393 (++!11168 lt!1409393 newSuffixResult!27)) lt!1409604)))

(declare-fun b!3994649 () Bool)

(assert (=> b!3994649 (= e!2476422 e!2476420)))

(declare-fun res!1621889 () Bool)

(assert (=> b!3994649 (=> (not res!1621889) (not e!2476420))))

(assert (=> b!3994649 (= res!1621889 (not ((_ is Nil!42718) (++!11168 lt!1409393 newSuffixResult!27))))))

(assert (= (and d!1182148 (not res!1621888)) b!3994649))

(assert (= (and b!3994649 res!1621889) b!3994650))

(assert (= (and b!3994650 res!1621890) b!3994651))

(assert (= (and d!1182148 (not res!1621891)) b!3994652))

(assert (=> b!3994651 m!4574235))

(assert (=> b!3994651 m!4574109))

(declare-fun m!4574919 () Bool)

(assert (=> b!3994651 m!4574919))

(assert (=> b!3994651 m!4574235))

(assert (=> b!3994651 m!4574919))

(declare-fun m!4574921 () Bool)

(assert (=> b!3994651 m!4574921))

(assert (=> b!3994652 m!4574109))

(declare-fun m!4574923 () Bool)

(assert (=> b!3994652 m!4574923))

(assert (=> b!3994652 m!4574107))

(assert (=> b!3994650 m!4574239))

(assert (=> b!3994650 m!4574109))

(declare-fun m!4574925 () Bool)

(assert (=> b!3994650 m!4574925))

(assert (=> b!3994195 d!1182148))

(declare-fun d!1182150 () Bool)

(assert (=> d!1182150 (= (size!31948 (_1!24092 (v!39537 lt!1409347))) (size!31949 (originalCharacters!7366 (_1!24092 (v!39537 lt!1409347)))))))

(declare-fun Unit!61561 () Unit!61548)

(assert (=> d!1182150 (= (lemmaCharactersSize!1361 (_1!24092 (v!39537 lt!1409347))) Unit!61561)))

(declare-fun bs!588587 () Bool)

(assert (= bs!588587 d!1182150))

(declare-fun m!4574931 () Bool)

(assert (=> bs!588587 m!4574931))

(assert (=> b!3994195 d!1182150))

(declare-fun d!1182154 () Bool)

(assert (=> d!1182154 (= (maxPrefixOneRule!2687 thiss!21717 (rule!9790 (_1!24092 (v!39537 lt!1409347))) lt!1409386) (Some!9179 (tuple2!41917 (Token!12671 (apply!9977 (transformation!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))) (seqFromList!5005 lt!1409393)) (rule!9790 (_1!24092 (v!39537 lt!1409347))) (size!31949 lt!1409393) lt!1409393) (_2!24092 (v!39537 lt!1409347)))))))

(declare-fun lt!1409606 () Unit!61548)

(assert (=> d!1182154 (= lt!1409606 (choose!24064 thiss!21717 rules!2999 lt!1409393 lt!1409386 (_2!24092 (v!39537 lt!1409347)) (rule!9790 (_1!24092 (v!39537 lt!1409347)))))))

(assert (=> d!1182154 (not (isEmpty!25532 rules!2999))))

(assert (=> d!1182154 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1509 thiss!21717 rules!2999 lt!1409393 lt!1409386 (_2!24092 (v!39537 lt!1409347)) (rule!9790 (_1!24092 (v!39537 lt!1409347)))) lt!1409606)))

(declare-fun bs!588588 () Bool)

(assert (= bs!588588 d!1182154))

(declare-fun m!4574943 () Bool)

(assert (=> bs!588588 m!4574943))

(assert (=> bs!588588 m!4574167))

(assert (=> bs!588588 m!4574095))

(assert (=> bs!588588 m!4574095))

(assert (=> bs!588588 m!4574113))

(assert (=> bs!588588 m!4574107))

(assert (=> bs!588588 m!4574111))

(assert (=> b!3994195 d!1182154))

(declare-fun b!3994660 () Bool)

(declare-fun e!2476427 () List!42842)

(assert (=> b!3994660 (= e!2476427 newSuffixResult!27)))

(declare-fun b!3994662 () Bool)

(declare-fun res!1621895 () Bool)

(declare-fun e!2476428 () Bool)

(assert (=> b!3994662 (=> (not res!1621895) (not e!2476428))))

(declare-fun lt!1409608 () List!42842)

(assert (=> b!3994662 (= res!1621895 (= (size!31949 lt!1409608) (+ (size!31949 lt!1409393) (size!31949 newSuffixResult!27))))))

(declare-fun b!3994661 () Bool)

(assert (=> b!3994661 (= e!2476427 (Cons!42718 (h!48138 lt!1409393) (++!11168 (t!331929 lt!1409393) newSuffixResult!27)))))

(declare-fun b!3994663 () Bool)

(assert (=> b!3994663 (= e!2476428 (or (not (= newSuffixResult!27 Nil!42718)) (= lt!1409608 lt!1409393)))))

(declare-fun d!1182158 () Bool)

(assert (=> d!1182158 e!2476428))

(declare-fun res!1621896 () Bool)

(assert (=> d!1182158 (=> (not res!1621896) (not e!2476428))))

(assert (=> d!1182158 (= res!1621896 (= (content!6480 lt!1409608) ((_ map or) (content!6480 lt!1409393) (content!6480 newSuffixResult!27))))))

(assert (=> d!1182158 (= lt!1409608 e!2476427)))

(declare-fun c!691214 () Bool)

(assert (=> d!1182158 (= c!691214 ((_ is Nil!42718) lt!1409393))))

(assert (=> d!1182158 (= (++!11168 lt!1409393 newSuffixResult!27) lt!1409608)))

(assert (= (and d!1182158 c!691214) b!3994660))

(assert (= (and d!1182158 (not c!691214)) b!3994661))

(assert (= (and d!1182158 res!1621896) b!3994662))

(assert (= (and b!3994662 res!1621895) b!3994663))

(declare-fun m!4574953 () Bool)

(assert (=> b!3994662 m!4574953))

(assert (=> b!3994662 m!4574107))

(assert (=> b!3994662 m!4574273))

(declare-fun m!4574955 () Bool)

(assert (=> b!3994661 m!4574955))

(declare-fun m!4574957 () Bool)

(assert (=> d!1182158 m!4574957))

(assert (=> d!1182158 m!4574895))

(assert (=> d!1182158 m!4574281))

(assert (=> b!3994195 d!1182158))

(declare-fun d!1182162 () Bool)

(declare-fun e!2476437 () Bool)

(assert (=> d!1182162 e!2476437))

(declare-fun res!1621907 () Bool)

(assert (=> d!1182162 (=> (not res!1621907) (not e!2476437))))

(assert (=> d!1182162 (= res!1621907 (semiInverseModEq!2902 (toChars!9113 (transformation!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347))))) (toValue!9254 (transformation!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))))))))

(declare-fun Unit!61562 () Unit!61548)

(assert (=> d!1182162 (= (lemmaInv!981 (transformation!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347))))) Unit!61562)))

(declare-fun b!3994674 () Bool)

(assert (=> b!3994674 (= e!2476437 (equivClasses!2801 (toChars!9113 (transformation!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347))))) (toValue!9254 (transformation!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))))))))

(assert (= (and d!1182162 res!1621907) b!3994674))

(declare-fun m!4574971 () Bool)

(assert (=> d!1182162 m!4574971))

(declare-fun m!4574973 () Bool)

(assert (=> b!3994674 m!4574973))

(assert (=> b!3994195 d!1182162))

(declare-fun d!1182170 () Bool)

(assert (=> d!1182170 (isPrefix!3853 lt!1409393 (++!11168 lt!1409393 newSuffixResult!27))))

(declare-fun lt!1409614 () Unit!61548)

(assert (=> d!1182170 (= lt!1409614 (choose!24054 lt!1409393 newSuffixResult!27))))

(assert (=> d!1182170 (= (lemmaConcatTwoListThenFirstIsPrefix!2696 lt!1409393 newSuffixResult!27) lt!1409614)))

(declare-fun bs!588590 () Bool)

(assert (= bs!588590 d!1182170))

(assert (=> bs!588590 m!4574109))

(assert (=> bs!588590 m!4574109))

(assert (=> bs!588590 m!4574121))

(declare-fun m!4574975 () Bool)

(assert (=> bs!588590 m!4574975))

(assert (=> b!3994195 d!1182170))

(declare-fun d!1182172 () Bool)

(assert (=> d!1182172 (= (apply!9977 (transformation!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))) (seqFromList!5005 lt!1409393)) (dynLambda!18145 (toValue!9254 (transformation!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347))))) (seqFromList!5005 lt!1409393)))))

(declare-fun b_lambda!116605 () Bool)

(assert (=> (not b_lambda!116605) (not d!1182172)))

(declare-fun t!331957 () Bool)

(declare-fun tb!240373 () Bool)

(assert (=> (and b!3994179 (= (toValue!9254 (transformation!6766 (rule!9790 token!484))) (toValue!9254 (transformation!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))))) t!331957) tb!240373))

(declare-fun result!291282 () Bool)

(assert (=> tb!240373 (= result!291282 (inv!21 (dynLambda!18145 (toValue!9254 (transformation!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347))))) (seqFromList!5005 lt!1409393))))))

(declare-fun m!4574977 () Bool)

(assert (=> tb!240373 m!4574977))

(assert (=> d!1182172 t!331957))

(declare-fun b_and!306851 () Bool)

(assert (= b_and!306839 (and (=> t!331957 result!291282) b_and!306851)))

(declare-fun tb!240375 () Bool)

(declare-fun t!331959 () Bool)

(assert (=> (and b!3994187 (= (toValue!9254 (transformation!6766 (h!48140 rules!2999))) (toValue!9254 (transformation!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))))) t!331959) tb!240375))

(declare-fun result!291284 () Bool)

(assert (= result!291284 result!291282))

(assert (=> d!1182172 t!331959))

(declare-fun b_and!306853 () Bool)

(assert (= b_and!306841 (and (=> t!331959 result!291284) b_and!306853)))

(assert (=> d!1182172 m!4574095))

(declare-fun m!4574979 () Bool)

(assert (=> d!1182172 m!4574979))

(assert (=> b!3994195 d!1182172))

(declare-fun d!1182174 () Bool)

(declare-fun e!2476440 () Bool)

(assert (=> d!1182174 e!2476440))

(declare-fun res!1621908 () Bool)

(assert (=> d!1182174 (=> res!1621908 e!2476440)))

(declare-fun lt!1409617 () Option!9180)

(assert (=> d!1182174 (= res!1621908 (isEmpty!25535 lt!1409617))))

(declare-fun e!2476442 () Option!9180)

(assert (=> d!1182174 (= lt!1409617 e!2476442)))

(declare-fun c!691215 () Bool)

(declare-fun lt!1409616 () tuple2!41920)

(assert (=> d!1182174 (= c!691215 (isEmpty!25536 (_1!24094 lt!1409616)))))

(assert (=> d!1182174 (= lt!1409616 (findLongestMatch!1253 (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))) lt!1409386))))

(assert (=> d!1182174 (ruleValid!2698 thiss!21717 (rule!9790 (_1!24092 (v!39537 lt!1409347))))))

(assert (=> d!1182174 (= (maxPrefixOneRule!2687 thiss!21717 (rule!9790 (_1!24092 (v!39537 lt!1409347))) lt!1409386) lt!1409617)))

(declare-fun b!3994679 () Bool)

(declare-fun res!1621913 () Bool)

(declare-fun e!2476439 () Bool)

(assert (=> b!3994679 (=> (not res!1621913) (not e!2476439))))

(assert (=> b!3994679 (= res!1621913 (< (size!31949 (_2!24092 (get!14055 lt!1409617))) (size!31949 lt!1409386)))))

(declare-fun b!3994680 () Bool)

(assert (=> b!3994680 (= e!2476440 e!2476439)))

(declare-fun res!1621910 () Bool)

(assert (=> b!3994680 (=> (not res!1621910) (not e!2476439))))

(assert (=> b!3994680 (= res!1621910 (matchR!5648 (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))) (list!15862 (charsOf!4582 (_1!24092 (get!14055 lt!1409617))))))))

(declare-fun b!3994681 () Bool)

(declare-fun res!1621914 () Bool)

(assert (=> b!3994681 (=> (not res!1621914) (not e!2476439))))

(assert (=> b!3994681 (= res!1621914 (= (value!213465 (_1!24092 (get!14055 lt!1409617))) (apply!9977 (transformation!6766 (rule!9790 (_1!24092 (get!14055 lt!1409617)))) (seqFromList!5005 (originalCharacters!7366 (_1!24092 (get!14055 lt!1409617)))))))))

(declare-fun b!3994682 () Bool)

(assert (=> b!3994682 (= e!2476442 (Some!9179 (tuple2!41917 (Token!12671 (apply!9977 (transformation!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))) (seqFromList!5005 (_1!24094 lt!1409616))) (rule!9790 (_1!24092 (v!39537 lt!1409347))) (size!31951 (seqFromList!5005 (_1!24094 lt!1409616))) (_1!24094 lt!1409616)) (_2!24094 lt!1409616))))))

(declare-fun lt!1409619 () Unit!61548)

(assert (=> b!3994682 (= lt!1409619 (longestMatchIsAcceptedByMatchOrIsEmpty!1313 (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))) lt!1409386))))

(declare-fun res!1621912 () Bool)

(assert (=> b!3994682 (= res!1621912 (isEmpty!25536 (_1!24094 (findLongestMatchInner!1340 (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))) Nil!42718 (size!31949 Nil!42718) lt!1409386 lt!1409386 (size!31949 lt!1409386)))))))

(declare-fun e!2476443 () Bool)

(assert (=> b!3994682 (=> res!1621912 e!2476443)))

(assert (=> b!3994682 e!2476443))

(declare-fun lt!1409615 () Unit!61548)

(assert (=> b!3994682 (= lt!1409615 lt!1409619)))

(declare-fun lt!1409618 () Unit!61548)

(assert (=> b!3994682 (= lt!1409618 (lemmaSemiInverse!1858 (transformation!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))) (seqFromList!5005 (_1!24094 lt!1409616))))))

(declare-fun b!3994683 () Bool)

(declare-fun res!1621911 () Bool)

(assert (=> b!3994683 (=> (not res!1621911) (not e!2476439))))

(assert (=> b!3994683 (= res!1621911 (= (rule!9790 (_1!24092 (get!14055 lt!1409617))) (rule!9790 (_1!24092 (v!39537 lt!1409347)))))))

(declare-fun b!3994684 () Bool)

(assert (=> b!3994684 (= e!2476442 None!9179)))

(declare-fun b!3994685 () Bool)

(declare-fun res!1621909 () Bool)

(assert (=> b!3994685 (=> (not res!1621909) (not e!2476439))))

(assert (=> b!3994685 (= res!1621909 (= (++!11168 (list!15862 (charsOf!4582 (_1!24092 (get!14055 lt!1409617)))) (_2!24092 (get!14055 lt!1409617))) lt!1409386))))

(declare-fun b!3994686 () Bool)

(assert (=> b!3994686 (= e!2476439 (= (size!31948 (_1!24092 (get!14055 lt!1409617))) (size!31949 (originalCharacters!7366 (_1!24092 (get!14055 lt!1409617))))))))

(declare-fun b!3994687 () Bool)

(assert (=> b!3994687 (= e!2476443 (matchR!5648 (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))) (_1!24094 (findLongestMatchInner!1340 (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))) Nil!42718 (size!31949 Nil!42718) lt!1409386 lt!1409386 (size!31949 lt!1409386)))))))

(assert (= (and d!1182174 c!691215) b!3994684))

(assert (= (and d!1182174 (not c!691215)) b!3994682))

(assert (= (and b!3994682 (not res!1621912)) b!3994687))

(assert (= (and d!1182174 (not res!1621908)) b!3994680))

(assert (= (and b!3994680 res!1621910) b!3994685))

(assert (= (and b!3994685 res!1621909) b!3994679))

(assert (= (and b!3994679 res!1621913) b!3994683))

(assert (= (and b!3994683 res!1621911) b!3994681))

(assert (= (and b!3994681 res!1621914) b!3994686))

(declare-fun m!4574981 () Bool)

(assert (=> b!3994683 m!4574981))

(assert (=> b!3994687 m!4574735))

(assert (=> b!3994687 m!4574343))

(assert (=> b!3994687 m!4574735))

(assert (=> b!3994687 m!4574343))

(declare-fun m!4574983 () Bool)

(assert (=> b!3994687 m!4574983))

(declare-fun m!4574989 () Bool)

(assert (=> b!3994687 m!4574989))

(declare-fun m!4574993 () Bool)

(assert (=> b!3994682 m!4574993))

(declare-fun m!4574995 () Bool)

(assert (=> b!3994682 m!4574995))

(declare-fun m!4574997 () Bool)

(assert (=> b!3994682 m!4574997))

(declare-fun m!4574999 () Bool)

(assert (=> b!3994682 m!4574999))

(assert (=> b!3994682 m!4574343))

(assert (=> b!3994682 m!4574993))

(declare-fun m!4575001 () Bool)

(assert (=> b!3994682 m!4575001))

(assert (=> b!3994682 m!4574993))

(assert (=> b!3994682 m!4574993))

(declare-fun m!4575003 () Bool)

(assert (=> b!3994682 m!4575003))

(assert (=> b!3994682 m!4574735))

(assert (=> b!3994682 m!4574343))

(assert (=> b!3994682 m!4574983))

(assert (=> b!3994682 m!4574735))

(assert (=> b!3994680 m!4574981))

(declare-fun m!4575005 () Bool)

(assert (=> b!3994680 m!4575005))

(assert (=> b!3994680 m!4575005))

(declare-fun m!4575007 () Bool)

(assert (=> b!3994680 m!4575007))

(assert (=> b!3994680 m!4575007))

(declare-fun m!4575009 () Bool)

(assert (=> b!3994680 m!4575009))

(assert (=> b!3994686 m!4574981))

(declare-fun m!4575011 () Bool)

(assert (=> b!3994686 m!4575011))

(assert (=> b!3994679 m!4574981))

(declare-fun m!4575013 () Bool)

(assert (=> b!3994679 m!4575013))

(assert (=> b!3994679 m!4574343))

(assert (=> b!3994681 m!4574981))

(declare-fun m!4575015 () Bool)

(assert (=> b!3994681 m!4575015))

(assert (=> b!3994681 m!4575015))

(declare-fun m!4575017 () Bool)

(assert (=> b!3994681 m!4575017))

(assert (=> b!3994685 m!4574981))

(assert (=> b!3994685 m!4575005))

(assert (=> b!3994685 m!4575005))

(assert (=> b!3994685 m!4575007))

(assert (=> b!3994685 m!4575007))

(declare-fun m!4575019 () Bool)

(assert (=> b!3994685 m!4575019))

(declare-fun m!4575021 () Bool)

(assert (=> d!1182174 m!4575021))

(declare-fun m!4575023 () Bool)

(assert (=> d!1182174 m!4575023))

(declare-fun m!4575025 () Bool)

(assert (=> d!1182174 m!4575025))

(assert (=> d!1182174 m!4574125))

(assert (=> b!3994195 d!1182174))

(declare-fun d!1182178 () Bool)

(assert (=> d!1182178 (isPrefix!3853 lt!1409393 (++!11168 lt!1409393 (_2!24092 (v!39537 lt!1409347))))))

(declare-fun lt!1409620 () Unit!61548)

(assert (=> d!1182178 (= lt!1409620 (choose!24054 lt!1409393 (_2!24092 (v!39537 lt!1409347))))))

(assert (=> d!1182178 (= (lemmaConcatTwoListThenFirstIsPrefix!2696 lt!1409393 (_2!24092 (v!39537 lt!1409347))) lt!1409620)))

(declare-fun bs!588591 () Bool)

(assert (= bs!588591 d!1182178))

(assert (=> bs!588591 m!4574117))

(assert (=> bs!588591 m!4574117))

(declare-fun m!4575027 () Bool)

(assert (=> bs!588591 m!4575027))

(declare-fun m!4575029 () Bool)

(assert (=> bs!588591 m!4575029))

(assert (=> b!3994195 d!1182178))

(declare-fun d!1182180 () Bool)

(declare-fun lt!1409621 () Int)

(assert (=> d!1182180 (>= lt!1409621 0)))

(declare-fun e!2476454 () Int)

(assert (=> d!1182180 (= lt!1409621 e!2476454)))

(declare-fun c!691222 () Bool)

(assert (=> d!1182180 (= c!691222 ((_ is Nil!42718) lt!1409393))))

(assert (=> d!1182180 (= (size!31949 lt!1409393) lt!1409621)))

(declare-fun b!3994703 () Bool)

(assert (=> b!3994703 (= e!2476454 0)))

(declare-fun b!3994704 () Bool)

(assert (=> b!3994704 (= e!2476454 (+ 1 (size!31949 (t!331929 lt!1409393))))))

(assert (= (and d!1182180 c!691222) b!3994703))

(assert (= (and d!1182180 (not c!691222)) b!3994704))

(declare-fun m!4575031 () Bool)

(assert (=> b!3994704 m!4575031))

(assert (=> b!3994195 d!1182180))

(declare-fun d!1182182 () Bool)

(assert (=> d!1182182 (= (seqFromList!5005 lt!1409393) (fromListB!2298 lt!1409393))))

(declare-fun bs!588592 () Bool)

(assert (= bs!588592 d!1182182))

(declare-fun m!4575033 () Bool)

(assert (=> bs!588592 m!4575033))

(assert (=> b!3994195 d!1182182))

(declare-fun d!1182184 () Bool)

(assert (=> d!1182184 (ruleValid!2698 thiss!21717 (rule!9790 (_1!24092 (v!39537 lt!1409347))))))

(declare-fun lt!1409624 () Unit!61548)

(declare-fun choose!24071 (LexerInterface!6355 Rule!13332 List!42844) Unit!61548)

(assert (=> d!1182184 (= lt!1409624 (choose!24071 thiss!21717 (rule!9790 (_1!24092 (v!39537 lt!1409347))) rules!2999))))

(assert (=> d!1182184 (contains!8501 rules!2999 (rule!9790 (_1!24092 (v!39537 lt!1409347))))))

(assert (=> d!1182184 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1772 thiss!21717 (rule!9790 (_1!24092 (v!39537 lt!1409347))) rules!2999) lt!1409624)))

(declare-fun bs!588593 () Bool)

(assert (= bs!588593 d!1182184))

(assert (=> bs!588593 m!4574125))

(declare-fun m!4575039 () Bool)

(assert (=> bs!588593 m!4575039))

(declare-fun m!4575041 () Bool)

(assert (=> bs!588593 m!4575041))

(assert (=> b!3994195 d!1182184))

(declare-fun d!1182188 () Bool)

(declare-fun lt!1409625 () BalanceConc!25548)

(assert (=> d!1182188 (= (list!15862 lt!1409625) (originalCharacters!7366 (_1!24092 (v!39537 lt!1409347))))))

(assert (=> d!1182188 (= lt!1409625 (dynLambda!18144 (toChars!9113 (transformation!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347))))) (value!213465 (_1!24092 (v!39537 lt!1409347)))))))

(assert (=> d!1182188 (= (charsOf!4582 (_1!24092 (v!39537 lt!1409347))) lt!1409625)))

(declare-fun b_lambda!116609 () Bool)

(assert (=> (not b_lambda!116609) (not d!1182188)))

(declare-fun t!331961 () Bool)

(declare-fun tb!240377 () Bool)

(assert (=> (and b!3994179 (= (toChars!9113 (transformation!6766 (rule!9790 token!484))) (toChars!9113 (transformation!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))))) t!331961) tb!240377))

(declare-fun b!3994707 () Bool)

(declare-fun e!2476456 () Bool)

(declare-fun tp!1216218 () Bool)

(assert (=> b!3994707 (= e!2476456 (and (inv!57060 (c!691136 (dynLambda!18144 (toChars!9113 (transformation!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347))))) (value!213465 (_1!24092 (v!39537 lt!1409347)))))) tp!1216218))))

(declare-fun result!291286 () Bool)

(assert (=> tb!240377 (= result!291286 (and (inv!57061 (dynLambda!18144 (toChars!9113 (transformation!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347))))) (value!213465 (_1!24092 (v!39537 lt!1409347))))) e!2476456))))

(assert (= tb!240377 b!3994707))

(declare-fun m!4575043 () Bool)

(assert (=> b!3994707 m!4575043))

(declare-fun m!4575045 () Bool)

(assert (=> tb!240377 m!4575045))

(assert (=> d!1182188 t!331961))

(declare-fun b_and!306859 () Bool)

(assert (= b_and!306835 (and (=> t!331961 result!291286) b_and!306859)))

(declare-fun tb!240379 () Bool)

(declare-fun t!331963 () Bool)

(assert (=> (and b!3994187 (= (toChars!9113 (transformation!6766 (h!48140 rules!2999))) (toChars!9113 (transformation!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))))) t!331963) tb!240379))

(declare-fun result!291288 () Bool)

(assert (= result!291288 result!291286))

(assert (=> d!1182188 t!331963))

(declare-fun b_and!306861 () Bool)

(assert (= b_and!306837 (and (=> t!331963 result!291288) b_and!306861)))

(declare-fun m!4575047 () Bool)

(assert (=> d!1182188 m!4575047))

(declare-fun m!4575049 () Bool)

(assert (=> d!1182188 m!4575049))

(assert (=> b!3994195 d!1182188))

(declare-fun d!1182190 () Bool)

(declare-fun res!1621928 () Bool)

(declare-fun e!2476459 () Bool)

(assert (=> d!1182190 (=> (not res!1621928) (not e!2476459))))

(assert (=> d!1182190 (= res!1621928 (validRegex!5296 (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347))))))))

(assert (=> d!1182190 (= (ruleValid!2698 thiss!21717 (rule!9790 (_1!24092 (v!39537 lt!1409347)))) e!2476459)))

(declare-fun b!3994712 () Bool)

(declare-fun res!1621929 () Bool)

(assert (=> b!3994712 (=> (not res!1621929) (not e!2476459))))

(assert (=> b!3994712 (= res!1621929 (not (nullable!4096 (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))))))))

(declare-fun b!3994713 () Bool)

(assert (=> b!3994713 (= e!2476459 (not (= (tag!7626 (rule!9790 (_1!24092 (v!39537 lt!1409347)))) (String!48699 ""))))))

(assert (= (and d!1182190 res!1621928) b!3994712))

(assert (= (and b!3994712 res!1621929) b!3994713))

(assert (=> d!1182190 m!4574407))

(assert (=> b!3994712 m!4574415))

(assert (=> b!3994195 d!1182190))

(declare-fun b!3994716 () Bool)

(declare-fun e!2476460 () Bool)

(assert (=> b!3994716 (= e!2476460 (isPrefix!3853 (tail!6228 lt!1409393) (tail!6228 lt!1409400)))))

(declare-fun b!3994717 () Bool)

(declare-fun e!2476461 () Bool)

(assert (=> b!3994717 (= e!2476461 (>= (size!31949 lt!1409400) (size!31949 lt!1409393)))))

(declare-fun b!3994715 () Bool)

(declare-fun res!1621932 () Bool)

(assert (=> b!3994715 (=> (not res!1621932) (not e!2476460))))

(assert (=> b!3994715 (= res!1621932 (= (head!8496 lt!1409393) (head!8496 lt!1409400)))))

(declare-fun d!1182192 () Bool)

(assert (=> d!1182192 e!2476461))

(declare-fun res!1621933 () Bool)

(assert (=> d!1182192 (=> res!1621933 e!2476461)))

(declare-fun lt!1409626 () Bool)

(assert (=> d!1182192 (= res!1621933 (not lt!1409626))))

(declare-fun e!2476462 () Bool)

(assert (=> d!1182192 (= lt!1409626 e!2476462)))

(declare-fun res!1621930 () Bool)

(assert (=> d!1182192 (=> res!1621930 e!2476462)))

(assert (=> d!1182192 (= res!1621930 ((_ is Nil!42718) lt!1409393))))

(assert (=> d!1182192 (= (isPrefix!3853 lt!1409393 lt!1409400) lt!1409626)))

(declare-fun b!3994714 () Bool)

(assert (=> b!3994714 (= e!2476462 e!2476460)))

(declare-fun res!1621931 () Bool)

(assert (=> b!3994714 (=> (not res!1621931) (not e!2476460))))

(assert (=> b!3994714 (= res!1621931 (not ((_ is Nil!42718) lt!1409400)))))

(assert (= (and d!1182192 (not res!1621930)) b!3994714))

(assert (= (and b!3994714 res!1621931) b!3994715))

(assert (= (and b!3994715 res!1621932) b!3994716))

(assert (= (and d!1182192 (not res!1621933)) b!3994717))

(assert (=> b!3994716 m!4574235))

(declare-fun m!4575051 () Bool)

(assert (=> b!3994716 m!4575051))

(assert (=> b!3994716 m!4574235))

(assert (=> b!3994716 m!4575051))

(declare-fun m!4575053 () Bool)

(assert (=> b!3994716 m!4575053))

(declare-fun m!4575055 () Bool)

(assert (=> b!3994717 m!4575055))

(assert (=> b!3994717 m!4574107))

(assert (=> b!3994715 m!4574239))

(declare-fun m!4575057 () Bool)

(assert (=> b!3994715 m!4575057))

(assert (=> b!3994195 d!1182192))

(declare-fun d!1182194 () Bool)

(assert (=> d!1182194 (= (list!15862 (charsOf!4582 (_1!24092 (v!39537 lt!1409347)))) (list!15864 (c!691136 (charsOf!4582 (_1!24092 (v!39537 lt!1409347))))))))

(declare-fun bs!588594 () Bool)

(assert (= bs!588594 d!1182194))

(declare-fun m!4575059 () Bool)

(assert (=> bs!588594 m!4575059))

(assert (=> b!3994195 d!1182194))

(declare-fun b!3994755 () Bool)

(declare-fun e!2476483 () Int)

(declare-fun e!2476482 () Int)

(assert (=> b!3994755 (= e!2476483 e!2476482)))

(declare-fun c!691233 () Bool)

(assert (=> b!3994755 (= c!691233 (and ((_ is Cons!42720) rules!2999) (not (= (h!48140 rules!2999) (rule!9790 token!484)))))))

(declare-fun b!3994754 () Bool)

(assert (=> b!3994754 (= e!2476483 0)))

(declare-fun d!1182196 () Bool)

(declare-fun lt!1409631 () Int)

(assert (=> d!1182196 (>= lt!1409631 0)))

(assert (=> d!1182196 (= lt!1409631 e!2476483)))

(declare-fun c!691234 () Bool)

(assert (=> d!1182196 (= c!691234 (and ((_ is Cons!42720) rules!2999) (= (h!48140 rules!2999) (rule!9790 token!484))))))

(assert (=> d!1182196 (contains!8501 rules!2999 (rule!9790 token!484))))

(assert (=> d!1182196 (= (getIndex!536 rules!2999 (rule!9790 token!484)) lt!1409631)))

(declare-fun b!3994756 () Bool)

(assert (=> b!3994756 (= e!2476482 (+ 1 (getIndex!536 (t!331931 rules!2999) (rule!9790 token!484))))))

(declare-fun b!3994757 () Bool)

(assert (=> b!3994757 (= e!2476482 (- 1))))

(assert (= (and d!1182196 c!691234) b!3994754))

(assert (= (and d!1182196 (not c!691234)) b!3994755))

(assert (= (and b!3994755 c!691233) b!3994756))

(assert (= (and b!3994755 (not c!691233)) b!3994757))

(assert (=> d!1182196 m!4574133))

(declare-fun m!4575061 () Bool)

(assert (=> b!3994756 m!4575061))

(assert (=> b!3994174 d!1182196))

(declare-fun b!3994759 () Bool)

(declare-fun e!2476485 () Int)

(declare-fun e!2476484 () Int)

(assert (=> b!3994759 (= e!2476485 e!2476484)))

(declare-fun c!691235 () Bool)

(assert (=> b!3994759 (= c!691235 (and ((_ is Cons!42720) rules!2999) (not (= (h!48140 rules!2999) (rule!9790 (_1!24092 (v!39537 lt!1409347)))))))))

(declare-fun b!3994758 () Bool)

(assert (=> b!3994758 (= e!2476485 0)))

(declare-fun d!1182198 () Bool)

(declare-fun lt!1409632 () Int)

(assert (=> d!1182198 (>= lt!1409632 0)))

(assert (=> d!1182198 (= lt!1409632 e!2476485)))

(declare-fun c!691236 () Bool)

(assert (=> d!1182198 (= c!691236 (and ((_ is Cons!42720) rules!2999) (= (h!48140 rules!2999) (rule!9790 (_1!24092 (v!39537 lt!1409347))))))))

(assert (=> d!1182198 (contains!8501 rules!2999 (rule!9790 (_1!24092 (v!39537 lt!1409347))))))

(assert (=> d!1182198 (= (getIndex!536 rules!2999 (rule!9790 (_1!24092 (v!39537 lt!1409347)))) lt!1409632)))

(declare-fun b!3994760 () Bool)

(assert (=> b!3994760 (= e!2476484 (+ 1 (getIndex!536 (t!331931 rules!2999) (rule!9790 (_1!24092 (v!39537 lt!1409347))))))))

(declare-fun b!3994761 () Bool)

(assert (=> b!3994761 (= e!2476484 (- 1))))

(assert (= (and d!1182198 c!691236) b!3994758))

(assert (= (and d!1182198 (not c!691236)) b!3994759))

(assert (= (and b!3994759 c!691235) b!3994760))

(assert (= (and b!3994759 (not c!691235)) b!3994761))

(assert (=> d!1182198 m!4575041))

(declare-fun m!4575063 () Bool)

(assert (=> b!3994760 m!4575063))

(assert (=> b!3994174 d!1182198))

(declare-fun d!1182200 () Bool)

(declare-fun lt!1409637 () Bool)

(declare-fun content!6483 (List!42844) (InoxSet Rule!13332))

(assert (=> d!1182200 (= lt!1409637 (select (content!6483 rules!2999) (rule!9790 token!484)))))

(declare-fun e!2476500 () Bool)

(assert (=> d!1182200 (= lt!1409637 e!2476500)))

(declare-fun res!1621966 () Bool)

(assert (=> d!1182200 (=> (not res!1621966) (not e!2476500))))

(assert (=> d!1182200 (= res!1621966 ((_ is Cons!42720) rules!2999))))

(assert (=> d!1182200 (= (contains!8501 rules!2999 (rule!9790 token!484)) lt!1409637)))

(declare-fun b!3994784 () Bool)

(declare-fun e!2476501 () Bool)

(assert (=> b!3994784 (= e!2476500 e!2476501)))

(declare-fun res!1621967 () Bool)

(assert (=> b!3994784 (=> res!1621967 e!2476501)))

(assert (=> b!3994784 (= res!1621967 (= (h!48140 rules!2999) (rule!9790 token!484)))))

(declare-fun b!3994785 () Bool)

(assert (=> b!3994785 (= e!2476501 (contains!8501 (t!331931 rules!2999) (rule!9790 token!484)))))

(assert (= (and d!1182200 res!1621966) b!3994784))

(assert (= (and b!3994784 (not res!1621967)) b!3994785))

(declare-fun m!4575079 () Bool)

(assert (=> d!1182200 m!4575079))

(declare-fun m!4575081 () Bool)

(assert (=> d!1182200 m!4575081))

(declare-fun m!4575083 () Bool)

(assert (=> b!3994785 m!4575083))

(assert (=> b!3994174 d!1182200))

(declare-fun d!1182206 () Bool)

(assert (=> d!1182206 (= (_2!24092 (v!39537 lt!1409347)) newSuffixResult!27)))

(declare-fun lt!1409638 () Unit!61548)

(assert (=> d!1182206 (= lt!1409638 (choose!24058 lt!1409393 (_2!24092 (v!39537 lt!1409347)) lt!1409363 newSuffixResult!27 lt!1409386))))

(assert (=> d!1182206 (isPrefix!3853 lt!1409393 lt!1409386)))

(assert (=> d!1182206 (= (lemmaSamePrefixThenSameSuffix!2040 lt!1409393 (_2!24092 (v!39537 lt!1409347)) lt!1409363 newSuffixResult!27 lt!1409386) lt!1409638)))

(declare-fun bs!588595 () Bool)

(assert (= bs!588595 d!1182206))

(declare-fun m!4575085 () Bool)

(assert (=> bs!588595 m!4575085))

(assert (=> bs!588595 m!4574017))

(assert (=> b!3994174 d!1182206))

(declare-fun d!1182208 () Bool)

(assert (=> d!1182208 (= lt!1409393 lt!1409363)))

(declare-fun lt!1409644 () Unit!61548)

(declare-fun choose!24073 (List!42842 List!42842 List!42842) Unit!61548)

(assert (=> d!1182208 (= lt!1409644 (choose!24073 lt!1409393 lt!1409363 lt!1409386))))

(assert (=> d!1182208 (isPrefix!3853 lt!1409393 lt!1409386)))

(assert (=> d!1182208 (= (lemmaIsPrefixSameLengthThenSameList!875 lt!1409393 lt!1409363 lt!1409386) lt!1409644)))

(declare-fun bs!588597 () Bool)

(assert (= bs!588597 d!1182208))

(declare-fun m!4575087 () Bool)

(assert (=> bs!588597 m!4575087))

(assert (=> bs!588597 m!4574017))

(assert (=> b!3994174 d!1182208))

(declare-fun d!1182210 () Bool)

(assert (=> d!1182210 (not (matchR!5648 (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))) lt!1409363))))

(declare-fun lt!1409650 () Unit!61548)

(declare-fun choose!24074 (LexerInterface!6355 List!42844 Rule!13332 List!42842 List!42842 Rule!13332) Unit!61548)

(assert (=> d!1182210 (= lt!1409650 (choose!24074 thiss!21717 rules!2999 (rule!9790 token!484) lt!1409363 lt!1409384 (rule!9790 (_1!24092 (v!39537 lt!1409347)))))))

(assert (=> d!1182210 (isPrefix!3853 lt!1409363 lt!1409384)))

(assert (=> d!1182210 (= (lemmaMaxPrefNoSmallerRuleMatches!262 thiss!21717 rules!2999 (rule!9790 token!484) lt!1409363 lt!1409384 (rule!9790 (_1!24092 (v!39537 lt!1409347)))) lt!1409650)))

(declare-fun bs!588599 () Bool)

(assert (= bs!588599 d!1182210))

(assert (=> bs!588599 m!4574187))

(declare-fun m!4575097 () Bool)

(assert (=> bs!588599 m!4575097))

(assert (=> bs!588599 m!4574009))

(assert (=> b!3994173 d!1182210))

(declare-fun b!3994786 () Bool)

(declare-fun e!2476506 () Bool)

(assert (=> b!3994786 (= e!2476506 (= (head!8496 lt!1409363) (c!691137 (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))))))))

(declare-fun b!3994787 () Bool)

(declare-fun e!2476502 () Bool)

(declare-fun e!2476504 () Bool)

(assert (=> b!3994787 (= e!2476502 e!2476504)))

(declare-fun res!1621970 () Bool)

(assert (=> b!3994787 (=> (not res!1621970) (not e!2476504))))

(declare-fun lt!1409652 () Bool)

(assert (=> b!3994787 (= res!1621970 (not lt!1409652))))

(declare-fun b!3994788 () Bool)

(declare-fun res!1621975 () Bool)

(assert (=> b!3994788 (=> (not res!1621975) (not e!2476506))))

(assert (=> b!3994788 (= res!1621975 (isEmpty!25536 (tail!6228 lt!1409363)))))

(declare-fun b!3994789 () Bool)

(declare-fun res!1621968 () Bool)

(declare-fun e!2476507 () Bool)

(assert (=> b!3994789 (=> res!1621968 e!2476507)))

(assert (=> b!3994789 (= res!1621968 (not (isEmpty!25536 (tail!6228 lt!1409363))))))

(declare-fun b!3994790 () Bool)

(declare-fun e!2476505 () Bool)

(declare-fun call!285899 () Bool)

(assert (=> b!3994790 (= e!2476505 (= lt!1409652 call!285899))))

(declare-fun d!1182216 () Bool)

(assert (=> d!1182216 e!2476505))

(declare-fun c!691241 () Bool)

(assert (=> d!1182216 (= c!691241 ((_ is EmptyExpr!11671) (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347))))))))

(declare-fun e!2476508 () Bool)

(assert (=> d!1182216 (= lt!1409652 e!2476508)))

(declare-fun c!691242 () Bool)

(assert (=> d!1182216 (= c!691242 (isEmpty!25536 lt!1409363))))

(assert (=> d!1182216 (validRegex!5296 (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))))))

(assert (=> d!1182216 (= (matchR!5648 (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))) lt!1409363) lt!1409652)))

(declare-fun b!3994791 () Bool)

(declare-fun res!1621973 () Bool)

(assert (=> b!3994791 (=> res!1621973 e!2476502)))

(assert (=> b!3994791 (= res!1621973 e!2476506)))

(declare-fun res!1621972 () Bool)

(assert (=> b!3994791 (=> (not res!1621972) (not e!2476506))))

(assert (=> b!3994791 (= res!1621972 lt!1409652)))

(declare-fun bm!285894 () Bool)

(assert (=> bm!285894 (= call!285899 (isEmpty!25536 lt!1409363))))

(declare-fun b!3994792 () Bool)

(assert (=> b!3994792 (= e!2476507 (not (= (head!8496 lt!1409363) (c!691137 (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347))))))))))

(declare-fun b!3994793 () Bool)

(declare-fun res!1621974 () Bool)

(assert (=> b!3994793 (=> (not res!1621974) (not e!2476506))))

(assert (=> b!3994793 (= res!1621974 (not call!285899))))

(declare-fun b!3994794 () Bool)

(declare-fun e!2476503 () Bool)

(assert (=> b!3994794 (= e!2476503 (not lt!1409652))))

(declare-fun b!3994795 () Bool)

(assert (=> b!3994795 (= e!2476505 e!2476503)))

(declare-fun c!691240 () Bool)

(assert (=> b!3994795 (= c!691240 ((_ is EmptyLang!11671) (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347))))))))

(declare-fun b!3994796 () Bool)

(declare-fun res!1621971 () Bool)

(assert (=> b!3994796 (=> res!1621971 e!2476502)))

(assert (=> b!3994796 (= res!1621971 (not ((_ is ElementMatch!11671) (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))))))))

(assert (=> b!3994796 (= e!2476503 e!2476502)))

(declare-fun b!3994797 () Bool)

(assert (=> b!3994797 (= e!2476508 (nullable!4096 (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347))))))))

(declare-fun b!3994798 () Bool)

(assert (=> b!3994798 (= e!2476504 e!2476507)))

(declare-fun res!1621969 () Bool)

(assert (=> b!3994798 (=> res!1621969 e!2476507)))

(assert (=> b!3994798 (= res!1621969 call!285899)))

(declare-fun b!3994799 () Bool)

(assert (=> b!3994799 (= e!2476508 (matchR!5648 (derivativeStep!3506 (regex!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))) (head!8496 lt!1409363)) (tail!6228 lt!1409363)))))

(assert (= (and d!1182216 c!691242) b!3994797))

(assert (= (and d!1182216 (not c!691242)) b!3994799))

(assert (= (and d!1182216 c!691241) b!3994790))

(assert (= (and d!1182216 (not c!691241)) b!3994795))

(assert (= (and b!3994795 c!691240) b!3994794))

(assert (= (and b!3994795 (not c!691240)) b!3994796))

(assert (= (and b!3994796 (not res!1621971)) b!3994791))

(assert (= (and b!3994791 res!1621972) b!3994793))

(assert (= (and b!3994793 res!1621974) b!3994788))

(assert (= (and b!3994788 res!1621975) b!3994786))

(assert (= (and b!3994791 (not res!1621973)) b!3994787))

(assert (= (and b!3994787 res!1621970) b!3994798))

(assert (= (and b!3994798 (not res!1621969)) b!3994789))

(assert (= (and b!3994789 (not res!1621968)) b!3994792))

(assert (= (or b!3994790 b!3994798 b!3994793) bm!285894))

(assert (=> d!1182216 m!4574471))

(assert (=> d!1182216 m!4574407))

(assert (=> b!3994786 m!4574209))

(assert (=> b!3994789 m!4574201))

(assert (=> b!3994789 m!4574201))

(assert (=> b!3994789 m!4574475))

(assert (=> b!3994799 m!4574209))

(assert (=> b!3994799 m!4574209))

(declare-fun m!4575101 () Bool)

(assert (=> b!3994799 m!4575101))

(assert (=> b!3994799 m!4574201))

(assert (=> b!3994799 m!4575101))

(assert (=> b!3994799 m!4574201))

(declare-fun m!4575103 () Bool)

(assert (=> b!3994799 m!4575103))

(assert (=> b!3994792 m!4574209))

(assert (=> bm!285894 m!4574471))

(assert (=> b!3994788 m!4574201))

(assert (=> b!3994788 m!4574201))

(assert (=> b!3994788 m!4574475))

(assert (=> b!3994797 m!4574415))

(assert (=> b!3994173 d!1182216))

(declare-fun b!3994814 () Bool)

(declare-fun e!2476516 () List!42842)

(assert (=> b!3994814 (= e!2476516 suffixResult!105)))

(declare-fun b!3994816 () Bool)

(declare-fun res!1621984 () Bool)

(declare-fun e!2476517 () Bool)

(assert (=> b!3994816 (=> (not res!1621984) (not e!2476517))))

(declare-fun lt!1409654 () List!42842)

(assert (=> b!3994816 (= res!1621984 (= (size!31949 lt!1409654) (+ (size!31949 lt!1409363) (size!31949 suffixResult!105))))))

(declare-fun b!3994815 () Bool)

(assert (=> b!3994815 (= e!2476516 (Cons!42718 (h!48138 lt!1409363) (++!11168 (t!331929 lt!1409363) suffixResult!105)))))

(declare-fun b!3994817 () Bool)

(assert (=> b!3994817 (= e!2476517 (or (not (= suffixResult!105 Nil!42718)) (= lt!1409654 lt!1409363)))))

(declare-fun d!1182220 () Bool)

(assert (=> d!1182220 e!2476517))

(declare-fun res!1621985 () Bool)

(assert (=> d!1182220 (=> (not res!1621985) (not e!2476517))))

(assert (=> d!1182220 (= res!1621985 (= (content!6480 lt!1409654) ((_ map or) (content!6480 lt!1409363) (content!6480 suffixResult!105))))))

(assert (=> d!1182220 (= lt!1409654 e!2476516)))

(declare-fun c!691246 () Bool)

(assert (=> d!1182220 (= c!691246 ((_ is Nil!42718) lt!1409363))))

(assert (=> d!1182220 (= (++!11168 lt!1409363 suffixResult!105) lt!1409654)))

(assert (= (and d!1182220 c!691246) b!3994814))

(assert (= (and d!1182220 (not c!691246)) b!3994815))

(assert (= (and d!1182220 res!1621985) b!3994816))

(assert (= (and b!3994816 res!1621984) b!3994817))

(declare-fun m!4575113 () Bool)

(assert (=> b!3994816 m!4575113))

(assert (=> b!3994816 m!4574053))

(declare-fun m!4575115 () Bool)

(assert (=> b!3994816 m!4575115))

(declare-fun m!4575117 () Bool)

(assert (=> b!3994815 m!4575117))

(declare-fun m!4575119 () Bool)

(assert (=> d!1182220 m!4575119))

(assert (=> d!1182220 m!4574279))

(declare-fun m!4575121 () Bool)

(assert (=> d!1182220 m!4575121))

(assert (=> b!3994193 d!1182220))

(declare-fun d!1182224 () Bool)

(declare-fun e!2476518 () Bool)

(assert (=> d!1182224 e!2476518))

(declare-fun res!1621986 () Bool)

(assert (=> d!1182224 (=> (not res!1621986) (not e!2476518))))

(assert (=> d!1182224 (= res!1621986 (semiInverseModEq!2902 (toChars!9113 (transformation!6766 (rule!9790 token!484))) (toValue!9254 (transformation!6766 (rule!9790 token!484)))))))

(declare-fun Unit!61563 () Unit!61548)

(assert (=> d!1182224 (= (lemmaInv!981 (transformation!6766 (rule!9790 token!484))) Unit!61563)))

(declare-fun b!3994818 () Bool)

(assert (=> b!3994818 (= e!2476518 (equivClasses!2801 (toChars!9113 (transformation!6766 (rule!9790 token!484))) (toValue!9254 (transformation!6766 (rule!9790 token!484)))))))

(assert (= (and d!1182224 res!1621986) b!3994818))

(assert (=> d!1182224 m!4574509))

(assert (=> b!3994818 m!4574511))

(assert (=> b!3994193 d!1182224))

(declare-fun d!1182228 () Bool)

(declare-fun res!1621987 () Bool)

(declare-fun e!2476519 () Bool)

(assert (=> d!1182228 (=> (not res!1621987) (not e!2476519))))

(assert (=> d!1182228 (= res!1621987 (validRegex!5296 (regex!6766 (rule!9790 token!484))))))

(assert (=> d!1182228 (= (ruleValid!2698 thiss!21717 (rule!9790 token!484)) e!2476519)))

(declare-fun b!3994819 () Bool)

(declare-fun res!1621988 () Bool)

(assert (=> b!3994819 (=> (not res!1621988) (not e!2476519))))

(assert (=> b!3994819 (= res!1621988 (not (nullable!4096 (regex!6766 (rule!9790 token!484)))))))

(declare-fun b!3994820 () Bool)

(assert (=> b!3994820 (= e!2476519 (not (= (tag!7626 (rule!9790 token!484)) (String!48699 ""))))))

(assert (= (and d!1182228 res!1621987) b!3994819))

(assert (= (and b!3994819 res!1621988) b!3994820))

(assert (=> d!1182228 m!4574473))

(assert (=> b!3994819 m!4574481))

(assert (=> b!3994193 d!1182228))

(declare-fun d!1182230 () Bool)

(assert (=> d!1182230 (ruleValid!2698 thiss!21717 (rule!9790 token!484))))

(declare-fun lt!1409656 () Unit!61548)

(assert (=> d!1182230 (= lt!1409656 (choose!24071 thiss!21717 (rule!9790 token!484) rules!2999))))

(assert (=> d!1182230 (contains!8501 rules!2999 (rule!9790 token!484))))

(assert (=> d!1182230 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1772 thiss!21717 (rule!9790 token!484) rules!2999) lt!1409656)))

(declare-fun bs!588602 () Bool)

(assert (= bs!588602 d!1182230))

(assert (=> bs!588602 m!4574163))

(declare-fun m!4575125 () Bool)

(assert (=> bs!588602 m!4575125))

(assert (=> bs!588602 m!4574133))

(assert (=> b!3994193 d!1182230))

(declare-fun d!1182232 () Bool)

(assert (=> d!1182232 (= (_2!24092 (v!39537 lt!1409347)) lt!1409359)))

(declare-fun lt!1409657 () Unit!61548)

(assert (=> d!1182232 (= lt!1409657 (choose!24058 lt!1409393 (_2!24092 (v!39537 lt!1409347)) lt!1409393 lt!1409359 lt!1409386))))

(assert (=> d!1182232 (isPrefix!3853 lt!1409393 lt!1409386)))

(assert (=> d!1182232 (= (lemmaSamePrefixThenSameSuffix!2040 lt!1409393 (_2!24092 (v!39537 lt!1409347)) lt!1409393 lt!1409359 lt!1409386) lt!1409657)))

(declare-fun bs!588603 () Bool)

(assert (= bs!588603 d!1182232))

(declare-fun m!4575127 () Bool)

(assert (=> bs!588603 m!4575127))

(assert (=> bs!588603 m!4574017))

(assert (=> b!3994172 d!1182232))

(declare-fun b!3994823 () Bool)

(declare-fun e!2476520 () Bool)

(assert (=> b!3994823 (= e!2476520 (isPrefix!3853 (tail!6228 lt!1409393) (tail!6228 lt!1409364)))))

(declare-fun b!3994824 () Bool)

(declare-fun e!2476521 () Bool)

(assert (=> b!3994824 (= e!2476521 (>= (size!31949 lt!1409364) (size!31949 lt!1409393)))))

(declare-fun b!3994822 () Bool)

(declare-fun res!1621991 () Bool)

(assert (=> b!3994822 (=> (not res!1621991) (not e!2476520))))

(assert (=> b!3994822 (= res!1621991 (= (head!8496 lt!1409393) (head!8496 lt!1409364)))))

(declare-fun d!1182234 () Bool)

(assert (=> d!1182234 e!2476521))

(declare-fun res!1621992 () Bool)

(assert (=> d!1182234 (=> res!1621992 e!2476521)))

(declare-fun lt!1409658 () Bool)

(assert (=> d!1182234 (= res!1621992 (not lt!1409658))))

(declare-fun e!2476522 () Bool)

(assert (=> d!1182234 (= lt!1409658 e!2476522)))

(declare-fun res!1621989 () Bool)

(assert (=> d!1182234 (=> res!1621989 e!2476522)))

(assert (=> d!1182234 (= res!1621989 ((_ is Nil!42718) lt!1409393))))

(assert (=> d!1182234 (= (isPrefix!3853 lt!1409393 lt!1409364) lt!1409658)))

(declare-fun b!3994821 () Bool)

(assert (=> b!3994821 (= e!2476522 e!2476520)))

(declare-fun res!1621990 () Bool)

(assert (=> b!3994821 (=> (not res!1621990) (not e!2476520))))

(assert (=> b!3994821 (= res!1621990 (not ((_ is Nil!42718) lt!1409364)))))

(assert (= (and d!1182234 (not res!1621989)) b!3994821))

(assert (= (and b!3994821 res!1621990) b!3994822))

(assert (= (and b!3994822 res!1621991) b!3994823))

(assert (= (and d!1182234 (not res!1621992)) b!3994824))

(assert (=> b!3994823 m!4574235))

(declare-fun m!4575129 () Bool)

(assert (=> b!3994823 m!4575129))

(assert (=> b!3994823 m!4574235))

(assert (=> b!3994823 m!4575129))

(declare-fun m!4575131 () Bool)

(assert (=> b!3994823 m!4575131))

(declare-fun m!4575133 () Bool)

(assert (=> b!3994824 m!4575133))

(assert (=> b!3994824 m!4574107))

(assert (=> b!3994822 m!4574239))

(declare-fun m!4575135 () Bool)

(assert (=> b!3994822 m!4575135))

(assert (=> b!3994172 d!1182234))

(declare-fun d!1182236 () Bool)

(assert (=> d!1182236 (isPrefix!3853 lt!1409393 (++!11168 lt!1409393 lt!1409359))))

(declare-fun lt!1409659 () Unit!61548)

(assert (=> d!1182236 (= lt!1409659 (choose!24054 lt!1409393 lt!1409359))))

(assert (=> d!1182236 (= (lemmaConcatTwoListThenFirstIsPrefix!2696 lt!1409393 lt!1409359) lt!1409659)))

(declare-fun bs!588604 () Bool)

(assert (= bs!588604 d!1182236))

(assert (=> bs!588604 m!4574197))

(assert (=> bs!588604 m!4574197))

(declare-fun m!4575137 () Bool)

(assert (=> bs!588604 m!4575137))

(declare-fun m!4575139 () Bool)

(assert (=> bs!588604 m!4575139))

(assert (=> b!3994172 d!1182236))

(declare-fun b!3994827 () Bool)

(declare-fun e!2476523 () Bool)

(assert (=> b!3994827 (= e!2476523 (isPrefix!3853 (tail!6228 newSuffix!27) (tail!6228 suffix!1299)))))

(declare-fun b!3994828 () Bool)

(declare-fun e!2476524 () Bool)

(assert (=> b!3994828 (= e!2476524 (>= (size!31949 suffix!1299) (size!31949 newSuffix!27)))))

(declare-fun b!3994826 () Bool)

(declare-fun res!1621995 () Bool)

(assert (=> b!3994826 (=> (not res!1621995) (not e!2476523))))

(assert (=> b!3994826 (= res!1621995 (= (head!8496 newSuffix!27) (head!8496 suffix!1299)))))

(declare-fun d!1182238 () Bool)

(assert (=> d!1182238 e!2476524))

(declare-fun res!1621996 () Bool)

(assert (=> d!1182238 (=> res!1621996 e!2476524)))

(declare-fun lt!1409660 () Bool)

(assert (=> d!1182238 (= res!1621996 (not lt!1409660))))

(declare-fun e!2476525 () Bool)

(assert (=> d!1182238 (= lt!1409660 e!2476525)))

(declare-fun res!1621993 () Bool)

(assert (=> d!1182238 (=> res!1621993 e!2476525)))

(assert (=> d!1182238 (= res!1621993 ((_ is Nil!42718) newSuffix!27))))

(assert (=> d!1182238 (= (isPrefix!3853 newSuffix!27 suffix!1299) lt!1409660)))

(declare-fun b!3994825 () Bool)

(assert (=> b!3994825 (= e!2476525 e!2476523)))

(declare-fun res!1621994 () Bool)

(assert (=> b!3994825 (=> (not res!1621994) (not e!2476523))))

(assert (=> b!3994825 (= res!1621994 (not ((_ is Nil!42718) suffix!1299)))))

(assert (= (and d!1182238 (not res!1621993)) b!3994825))

(assert (= (and b!3994825 res!1621994) b!3994826))

(assert (= (and b!3994826 res!1621995) b!3994827))

(assert (= (and d!1182238 (not res!1621996)) b!3994828))

(declare-fun m!4575141 () Bool)

(assert (=> b!3994827 m!4575141))

(assert (=> b!3994827 m!4574399))

(assert (=> b!3994827 m!4575141))

(assert (=> b!3994827 m!4574399))

(declare-fun m!4575143 () Bool)

(assert (=> b!3994827 m!4575143))

(assert (=> b!3994828 m!4574087))

(assert (=> b!3994828 m!4574089))

(declare-fun m!4575145 () Bool)

(assert (=> b!3994826 m!4575145))

(declare-fun m!4575147 () Bool)

(assert (=> b!3994826 m!4575147))

(assert (=> b!3994176 d!1182238))

(declare-fun b!3994829 () Bool)

(declare-fun e!2476526 () List!42842)

(assert (=> b!3994829 (= e!2476526 lt!1409353)))

(declare-fun b!3994831 () Bool)

(declare-fun res!1621997 () Bool)

(declare-fun e!2476527 () Bool)

(assert (=> b!3994831 (=> (not res!1621997) (not e!2476527))))

(declare-fun lt!1409661 () List!42842)

(assert (=> b!3994831 (= res!1621997 (= (size!31949 lt!1409661) (+ (size!31949 lt!1409363) (size!31949 lt!1409353))))))

(declare-fun b!3994830 () Bool)

(assert (=> b!3994830 (= e!2476526 (Cons!42718 (h!48138 lt!1409363) (++!11168 (t!331929 lt!1409363) lt!1409353)))))

(declare-fun b!3994832 () Bool)

(assert (=> b!3994832 (= e!2476527 (or (not (= lt!1409353 Nil!42718)) (= lt!1409661 lt!1409363)))))

(declare-fun d!1182240 () Bool)

(assert (=> d!1182240 e!2476527))

(declare-fun res!1621998 () Bool)

(assert (=> d!1182240 (=> (not res!1621998) (not e!2476527))))

(assert (=> d!1182240 (= res!1621998 (= (content!6480 lt!1409661) ((_ map or) (content!6480 lt!1409363) (content!6480 lt!1409353))))))

(assert (=> d!1182240 (= lt!1409661 e!2476526)))

(declare-fun c!691247 () Bool)

(assert (=> d!1182240 (= c!691247 ((_ is Nil!42718) lt!1409363))))

(assert (=> d!1182240 (= (++!11168 lt!1409363 lt!1409353) lt!1409661)))

(assert (= (and d!1182240 c!691247) b!3994829))

(assert (= (and d!1182240 (not c!691247)) b!3994830))

(assert (= (and d!1182240 res!1621998) b!3994831))

(assert (= (and b!3994831 res!1621997) b!3994832))

(declare-fun m!4575149 () Bool)

(assert (=> b!3994831 m!4575149))

(assert (=> b!3994831 m!4574053))

(declare-fun m!4575151 () Bool)

(assert (=> b!3994831 m!4575151))

(declare-fun m!4575153 () Bool)

(assert (=> b!3994830 m!4575153))

(declare-fun m!4575155 () Bool)

(assert (=> d!1182240 m!4575155))

(assert (=> d!1182240 m!4574279))

(declare-fun m!4575157 () Bool)

(assert (=> d!1182240 m!4575157))

(assert (=> b!3994175 d!1182240))

(declare-fun b!3994841 () Bool)

(declare-fun e!2476533 () List!42842)

(assert (=> b!3994841 (= e!2476533 suffix!1299)))

(declare-fun b!3994843 () Bool)

(declare-fun res!1621999 () Bool)

(declare-fun e!2476534 () Bool)

(assert (=> b!3994843 (=> (not res!1621999) (not e!2476534))))

(declare-fun lt!1409664 () List!42842)

(assert (=> b!3994843 (= res!1621999 (= (size!31949 lt!1409664) (+ (size!31949 lt!1409409) (size!31949 suffix!1299))))))

(declare-fun b!3994842 () Bool)

(assert (=> b!3994842 (= e!2476533 (Cons!42718 (h!48138 lt!1409409) (++!11168 (t!331929 lt!1409409) suffix!1299)))))

(declare-fun b!3994844 () Bool)

(assert (=> b!3994844 (= e!2476534 (or (not (= suffix!1299 Nil!42718)) (= lt!1409664 lt!1409409)))))

(declare-fun d!1182242 () Bool)

(assert (=> d!1182242 e!2476534))

(declare-fun res!1622000 () Bool)

(assert (=> d!1182242 (=> (not res!1622000) (not e!2476534))))

(assert (=> d!1182242 (= res!1622000 (= (content!6480 lt!1409664) ((_ map or) (content!6480 lt!1409409) (content!6480 suffix!1299))))))

(assert (=> d!1182242 (= lt!1409664 e!2476533)))

(declare-fun c!691252 () Bool)

(assert (=> d!1182242 (= c!691252 ((_ is Nil!42718) lt!1409409))))

(assert (=> d!1182242 (= (++!11168 lt!1409409 suffix!1299) lt!1409664)))

(assert (= (and d!1182242 c!691252) b!3994841))

(assert (= (and d!1182242 (not c!691252)) b!3994842))

(assert (= (and d!1182242 res!1622000) b!3994843))

(assert (= (and b!3994843 res!1621999) b!3994844))

(declare-fun m!4575159 () Bool)

(assert (=> b!3994843 m!4575159))

(declare-fun m!4575161 () Bool)

(assert (=> b!3994843 m!4575161))

(assert (=> b!3994843 m!4574087))

(declare-fun m!4575163 () Bool)

(assert (=> b!3994842 m!4575163))

(declare-fun m!4575165 () Bool)

(assert (=> d!1182242 m!4575165))

(declare-fun m!4575167 () Bool)

(assert (=> d!1182242 m!4575167))

(assert (=> d!1182242 m!4574331))

(assert (=> b!3994175 d!1182242))

(declare-fun b!3994845 () Bool)

(declare-fun e!2476535 () List!42842)

(assert (=> b!3994845 (= e!2476535 suffix!1299)))

(declare-fun b!3994847 () Bool)

(declare-fun res!1622001 () Bool)

(declare-fun e!2476536 () Bool)

(assert (=> b!3994847 (=> (not res!1622001) (not e!2476536))))

(declare-fun lt!1409665 () List!42842)

(assert (=> b!3994847 (= res!1622001 (= (size!31949 lt!1409665) (+ (size!31949 lt!1409398) (size!31949 suffix!1299))))))

(declare-fun b!3994846 () Bool)

(assert (=> b!3994846 (= e!2476535 (Cons!42718 (h!48138 lt!1409398) (++!11168 (t!331929 lt!1409398) suffix!1299)))))

(declare-fun b!3994848 () Bool)

(assert (=> b!3994848 (= e!2476536 (or (not (= suffix!1299 Nil!42718)) (= lt!1409665 lt!1409398)))))

(declare-fun d!1182244 () Bool)

(assert (=> d!1182244 e!2476536))

(declare-fun res!1622002 () Bool)

(assert (=> d!1182244 (=> (not res!1622002) (not e!2476536))))

(assert (=> d!1182244 (= res!1622002 (= (content!6480 lt!1409665) ((_ map or) (content!6480 lt!1409398) (content!6480 suffix!1299))))))

(assert (=> d!1182244 (= lt!1409665 e!2476535)))

(declare-fun c!691253 () Bool)

(assert (=> d!1182244 (= c!691253 ((_ is Nil!42718) lt!1409398))))

(assert (=> d!1182244 (= (++!11168 lt!1409398 suffix!1299) lt!1409665)))

(assert (= (and d!1182244 c!691253) b!3994845))

(assert (= (and d!1182244 (not c!691253)) b!3994846))

(assert (= (and d!1182244 res!1622002) b!3994847))

(assert (= (and b!3994847 res!1622001) b!3994848))

(declare-fun m!4575169 () Bool)

(assert (=> b!3994847 m!4575169))

(assert (=> b!3994847 m!4574781))

(assert (=> b!3994847 m!4574087))

(declare-fun m!4575171 () Bool)

(assert (=> b!3994846 m!4575171))

(declare-fun m!4575173 () Bool)

(assert (=> d!1182244 m!4575173))

(assert (=> d!1182244 m!4574789))

(assert (=> d!1182244 m!4574331))

(assert (=> b!3994175 d!1182244))

(declare-fun d!1182246 () Bool)

(assert (=> d!1182246 (= (++!11168 (++!11168 lt!1409363 lt!1409398) suffix!1299) (++!11168 lt!1409363 (++!11168 lt!1409398 suffix!1299)))))

(declare-fun lt!1409666 () Unit!61548)

(assert (=> d!1182246 (= lt!1409666 (choose!24063 lt!1409363 lt!1409398 suffix!1299))))

(assert (=> d!1182246 (= (lemmaConcatAssociativity!2488 lt!1409363 lt!1409398 suffix!1299) lt!1409666)))

(declare-fun bs!588605 () Bool)

(assert (= bs!588605 d!1182246))

(declare-fun m!4575175 () Bool)

(assert (=> bs!588605 m!4575175))

(assert (=> bs!588605 m!4574147))

(declare-fun m!4575177 () Bool)

(assert (=> bs!588605 m!4575177))

(assert (=> bs!588605 m!4574175))

(declare-fun m!4575179 () Bool)

(assert (=> bs!588605 m!4575179))

(assert (=> bs!588605 m!4574147))

(assert (=> bs!588605 m!4574175))

(assert (=> b!3994175 d!1182246))

(declare-fun b!3994857 () Bool)

(declare-fun e!2476541 () Bool)

(declare-fun tp!1216221 () Bool)

(assert (=> b!3994857 (= e!2476541 (and tp_is_empty!20313 tp!1216221))))

(assert (=> b!3994190 (= tp!1216199 e!2476541)))

(assert (= (and b!3994190 ((_ is Cons!42718) (t!331929 newSuffix!27))) b!3994857))

(declare-fun b!3994858 () Bool)

(declare-fun e!2476542 () Bool)

(declare-fun tp!1216222 () Bool)

(assert (=> b!3994858 (= e!2476542 (and tp_is_empty!20313 tp!1216222))))

(assert (=> b!3994188 (= tp!1216207 e!2476542)))

(assert (= (and b!3994188 ((_ is Cons!42718) (t!331929 suffixResult!105))) b!3994858))

(declare-fun b!3994859 () Bool)

(declare-fun e!2476543 () Bool)

(declare-fun tp!1216223 () Bool)

(assert (=> b!3994859 (= e!2476543 (and tp_is_empty!20313 tp!1216223))))

(assert (=> b!3994198 (= tp!1216209 e!2476543)))

(assert (= (and b!3994198 ((_ is Cons!42718) (t!331929 suffix!1299))) b!3994859))

(declare-fun b!3994874 () Bool)

(declare-fun b_free!110953 () Bool)

(declare-fun b_next!111657 () Bool)

(assert (=> b!3994874 (= b_free!110953 (not b_next!111657))))

(declare-fun t!331965 () Bool)

(declare-fun tb!240381 () Bool)

(assert (=> (and b!3994874 (= (toValue!9254 (transformation!6766 (h!48140 (t!331931 rules!2999)))) (toValue!9254 (transformation!6766 (rule!9790 token!484)))) t!331965) tb!240381))

(declare-fun result!291294 () Bool)

(assert (= result!291294 result!291268))

(assert (=> d!1182044 t!331965))

(declare-fun tb!240383 () Bool)

(declare-fun t!331967 () Bool)

(assert (=> (and b!3994874 (= (toValue!9254 (transformation!6766 (h!48140 (t!331931 rules!2999)))) (toValue!9254 (transformation!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))))) t!331967) tb!240383))

(declare-fun result!291296 () Bool)

(assert (= result!291296 result!291282))

(assert (=> d!1182172 t!331967))

(declare-fun tp!1216235 () Bool)

(declare-fun b_and!306863 () Bool)

(assert (=> b!3994874 (= tp!1216235 (and (=> t!331965 result!291294) (=> t!331967 result!291296) b_and!306863))))

(declare-fun b_free!110955 () Bool)

(declare-fun b_next!111659 () Bool)

(assert (=> b!3994874 (= b_free!110955 (not b_next!111659))))

(declare-fun t!331969 () Bool)

(declare-fun tb!240385 () Bool)

(assert (=> (and b!3994874 (= (toChars!9113 (transformation!6766 (h!48140 (t!331931 rules!2999)))) (toChars!9113 (transformation!6766 (rule!9790 token!484)))) t!331969) tb!240385))

(declare-fun result!291298 () Bool)

(assert (= result!291298 result!291256))

(assert (=> b!3994418 t!331969))

(assert (=> d!1182038 t!331969))

(declare-fun t!331971 () Bool)

(declare-fun tb!240387 () Bool)

(assert (=> (and b!3994874 (= (toChars!9113 (transformation!6766 (h!48140 (t!331931 rules!2999)))) (toChars!9113 (transformation!6766 (rule!9790 (_1!24092 (v!39537 lt!1409347)))))) t!331971) tb!240387))

(declare-fun result!291300 () Bool)

(assert (= result!291300 result!291286))

(assert (=> d!1182188 t!331971))

(declare-fun tp!1216234 () Bool)

(declare-fun b_and!306865 () Bool)

(assert (=> b!3994874 (= tp!1216234 (and (=> t!331969 result!291298) (=> t!331971 result!291300) b_and!306865))))

(declare-fun e!2476556 () Bool)

(assert (=> b!3994874 (= e!2476556 (and tp!1216235 tp!1216234))))

(declare-fun tp!1216233 () Bool)

(declare-fun e!2476557 () Bool)

(declare-fun b!3994873 () Bool)

(assert (=> b!3994873 (= e!2476557 (and tp!1216233 (inv!57053 (tag!7626 (h!48140 (t!331931 rules!2999)))) (inv!57056 (transformation!6766 (h!48140 (t!331931 rules!2999)))) e!2476556))))

(declare-fun b!3994872 () Bool)

(declare-fun e!2476558 () Bool)

(declare-fun tp!1216232 () Bool)

(assert (=> b!3994872 (= e!2476558 (and e!2476557 tp!1216232))))

(assert (=> b!3994165 (= tp!1216210 e!2476558)))

(assert (= b!3994873 b!3994874))

(assert (= b!3994872 b!3994873))

(assert (= (and b!3994165 ((_ is Cons!42720) (t!331931 rules!2999))) b!3994872))

(declare-fun m!4575189 () Bool)

(assert (=> b!3994873 m!4575189))

(declare-fun m!4575191 () Bool)

(assert (=> b!3994873 m!4575191))

(declare-fun b!3994877 () Bool)

(declare-fun e!2476562 () Bool)

(declare-fun tp!1216236 () Bool)

(assert (=> b!3994877 (= e!2476562 (and tp_is_empty!20313 tp!1216236))))

(assert (=> b!3994197 (= tp!1216200 e!2476562)))

(assert (= (and b!3994197 ((_ is Cons!42718) (t!331929 prefix!494))) b!3994877))

(declare-fun b!3994878 () Bool)

(declare-fun e!2476563 () Bool)

(declare-fun tp!1216237 () Bool)

(assert (=> b!3994878 (= e!2476563 (and tp_is_empty!20313 tp!1216237))))

(assert (=> b!3994192 (= tp!1216206 e!2476563)))

(assert (= (and b!3994192 ((_ is Cons!42718) (originalCharacters!7366 token!484))) b!3994878))

(declare-fun b!3994890 () Bool)

(declare-fun e!2476566 () Bool)

(declare-fun tp!1216251 () Bool)

(declare-fun tp!1216250 () Bool)

(assert (=> b!3994890 (= e!2476566 (and tp!1216251 tp!1216250))))

(declare-fun b!3994891 () Bool)

(declare-fun tp!1216252 () Bool)

(assert (=> b!3994891 (= e!2476566 tp!1216252)))

(assert (=> b!3994186 (= tp!1216202 e!2476566)))

(declare-fun b!3994892 () Bool)

(declare-fun tp!1216248 () Bool)

(declare-fun tp!1216249 () Bool)

(assert (=> b!3994892 (= e!2476566 (and tp!1216248 tp!1216249))))

(declare-fun b!3994889 () Bool)

(assert (=> b!3994889 (= e!2476566 tp_is_empty!20313)))

(assert (= (and b!3994186 ((_ is ElementMatch!11671) (regex!6766 (rule!9790 token!484)))) b!3994889))

(assert (= (and b!3994186 ((_ is Concat!18668) (regex!6766 (rule!9790 token!484)))) b!3994890))

(assert (= (and b!3994186 ((_ is Star!11671) (regex!6766 (rule!9790 token!484)))) b!3994891))

(assert (= (and b!3994186 ((_ is Union!11671) (regex!6766 (rule!9790 token!484)))) b!3994892))

(declare-fun b!3994894 () Bool)

(declare-fun e!2476567 () Bool)

(declare-fun tp!1216256 () Bool)

(declare-fun tp!1216255 () Bool)

(assert (=> b!3994894 (= e!2476567 (and tp!1216256 tp!1216255))))

(declare-fun b!3994895 () Bool)

(declare-fun tp!1216257 () Bool)

(assert (=> b!3994895 (= e!2476567 tp!1216257)))

(assert (=> b!3994170 (= tp!1216204 e!2476567)))

(declare-fun b!3994896 () Bool)

(declare-fun tp!1216253 () Bool)

(declare-fun tp!1216254 () Bool)

(assert (=> b!3994896 (= e!2476567 (and tp!1216253 tp!1216254))))

(declare-fun b!3994893 () Bool)

(assert (=> b!3994893 (= e!2476567 tp_is_empty!20313)))

(assert (= (and b!3994170 ((_ is ElementMatch!11671) (regex!6766 (h!48140 rules!2999)))) b!3994893))

(assert (= (and b!3994170 ((_ is Concat!18668) (regex!6766 (h!48140 rules!2999)))) b!3994894))

(assert (= (and b!3994170 ((_ is Star!11671) (regex!6766 (h!48140 rules!2999)))) b!3994895))

(assert (= (and b!3994170 ((_ is Union!11671) (regex!6766 (h!48140 rules!2999)))) b!3994896))

(declare-fun b!3994901 () Bool)

(declare-fun e!2476570 () Bool)

(declare-fun tp!1216258 () Bool)

(assert (=> b!3994901 (= e!2476570 (and tp_is_empty!20313 tp!1216258))))

(assert (=> b!3994196 (= tp!1216205 e!2476570)))

(assert (= (and b!3994196 ((_ is Cons!42718) (t!331929 newSuffixResult!27))) b!3994901))

(declare-fun b_lambda!116611 () Bool)

(assert (= b_lambda!116593 (or (and b!3994179 b_free!110947) (and b!3994187 b_free!110951 (= (toChars!9113 (transformation!6766 (h!48140 rules!2999))) (toChars!9113 (transformation!6766 (rule!9790 token!484))))) (and b!3994874 b_free!110955 (= (toChars!9113 (transformation!6766 (h!48140 (t!331931 rules!2999)))) (toChars!9113 (transformation!6766 (rule!9790 token!484))))) b_lambda!116611)))

(declare-fun b_lambda!116613 () Bool)

(assert (= b_lambda!116597 (or (and b!3994179 b_free!110947) (and b!3994187 b_free!110951 (= (toChars!9113 (transformation!6766 (h!48140 rules!2999))) (toChars!9113 (transformation!6766 (rule!9790 token!484))))) (and b!3994874 b_free!110955 (= (toChars!9113 (transformation!6766 (h!48140 (t!331931 rules!2999)))) (toChars!9113 (transformation!6766 (rule!9790 token!484))))) b_lambda!116613)))

(declare-fun b_lambda!116615 () Bool)

(assert (= b_lambda!116599 (or (and b!3994179 b_free!110945) (and b!3994187 b_free!110949 (= (toValue!9254 (transformation!6766 (h!48140 rules!2999))) (toValue!9254 (transformation!6766 (rule!9790 token!484))))) (and b!3994874 b_free!110953 (= (toValue!9254 (transformation!6766 (h!48140 (t!331931 rules!2999)))) (toValue!9254 (transformation!6766 (rule!9790 token!484))))) b_lambda!116615)))

(check-sat (not d!1182140) (not d!1182014) (not b!3994873) (not d!1182038) (not b!3994431) (not b!3994877) (not b_next!111657) (not d!1181952) b_and!306861 (not b!3994424) (not d!1182220) (not b!3994413) (not b!3994792) (not b!3994650) (not b!3994827) (not b!3994226) (not b!3994716) (not b!3994892) (not b!3994315) (not b!3994400) (not b_lambda!116605) (not d!1182072) (not d!1181984) (not b!3994582) (not b!3994326) (not d!1182174) (not b!3994645) (not b!3994588) (not bm!285883) (not b!3994583) (not b!3994220) (not d!1182182) (not d!1182194) (not b!3994310) (not b!3994403) (not b!3994448) (not b!3994419) (not b!3994229) (not b!3994715) (not b!3994305) (not b!3994637) (not d!1182100) (not b!3994313) (not d!1182042) (not b!3994846) (not b!3994256) (not b!3994641) (not b!3994901) (not d!1182116) (not b!3994411) (not b!3994224) (not b!3994237) (not b_lambda!116611) (not b!3994319) (not d!1181992) (not d!1182150) (not b!3994230) (not d!1181994) (not tb!240361) (not d!1182162) (not d!1182024) (not b!3994450) (not b_lambda!116613) (not tb!240373) (not b!3994823) (not d!1182036) (not b!3994819) (not b!3994244) (not b!3994652) (not d!1181968) (not b!3994464) (not b!3994449) (not b!3994234) (not d!1182210) (not d!1181960) (not b!3994608) (not d!1182228) (not b!3994259) (not b!3994858) (not d!1182022) (not b!3994432) (not b!3994815) (not b!3994270) (not b!3994463) (not b!3994323) (not b!3994638) (not d!1182236) (not d!1182246) (not b!3994603) (not b!3994587) (not b!3994302) (not b!3994896) (not d!1182230) (not d!1182224) (not d!1182114) (not b!3994606) (not d!1182158) (not b!3994418) (not b!3994429) (not b!3994228) (not b!3994233) (not b!3994622) (not b!3994859) (not b!3994236) (not d!1182018) (not b!3994895) (not b!3994629) (not b!3994788) (not d!1182240) (not b!3994435) (not b_next!111649) (not d!1182198) (not d!1182126) (not b!3994320) (not b!3994329) (not b!3994343) (not b!3994682) (not b!3994818) (not b!3994580) (not bm!285887) (not d!1182144) (not b!3994679) (not b_lambda!116615) (not b!3994467) (not d!1182050) (not b!3994473) (not b!3994822) (not tb!240377) (not d!1181976) (not d!1182004) (not d!1182196) (not b_next!111655) (not b!3994797) (not b!3994674) (not b!3994828) (not b!3994816) (not b!3994402) (not d!1182008) (not b_next!111659) (not b!3994789) (not b!3994490) (not b!3994857) (not b!3994842) (not d!1181966) (not d!1182062) (not b!3994843) (not b!3994785) (not b!3994468) (not d!1181942) (not b!3994225) (not d!1182208) (not bm!285894) (not b!3994489) (not b!3994584) (not b!3994255) (not d!1182104) (not b!3994312) b_and!306851 (not b!3994760) (not b!3994458) (not d!1182052) (not b!3994830) (not b!3994471) (not b!3994406) (not b!3994488) (not b!3994303) (not b!3994662) (not d!1182010) (not b!3994619) (not b!3994322) (not b!3994620) (not d!1182184) (not d!1182178) (not b!3994238) (not d!1182216) (not b!3994334) (not b!3994717) (not b!3994442) (not b!3994799) (not b!3994607) (not tb!240353) (not d!1182000) (not d!1181978) (not bm!285886) (not d!1182232) (not d!1182028) (not b!3994459) (not d!1181946) b_and!306865 (not bm!285882) b_and!306863 (not b!3994651) (not b!3994681) (not b!3994307) (not b!3994831) (not b_next!111653) (not b!3994878) (not b!3994331) (not d!1181996) (not b!3994601) (not d!1182170) b_and!306859 (not d!1182200) (not b!3994325) (not b!3994457) (not b!3994278) (not b!3994631) (not d!1182190) (not b!3994274) (not b!3994826) (not b!3994327) (not b!3994455) (not b!3994872) (not b!3994337) (not b!3994891) (not b!3994685) (not b!3994847) (not b!3994440) (not b!3994336) (not b!3994786) (not d!1181998) tp_is_empty!20313 (not b!3994269) (not d!1182146) (not d!1181990) (not d!1182242) (not b!3994644) (not b!3994221) (not d!1182154) (not b!3994309) (not b!3994894) (not b!3994316) (not d!1181980) (not b!3994890) (not b_lambda!116609) (not b!3994687) (not d!1182112) (not b!3994600) (not b!3994712) (not b!3994686) (not d!1182244) (not d!1181962) (not b!3994704) (not b!3994318) (not b!3994306) (not b!3994661) (not b!3994680) (not b!3994630) (not b!3994232) (not b!3994824) (not d!1182206) (not b!3994222) (not b!3994581) (not b!3994707) (not b!3994586) (not d!1182136) (not b_next!111651) b_and!306853 (not b!3994321) (not b!3994273) (not b!3994683) (not b!3994756) (not d!1182188) (not b!3994308))
(check-sat (not b_next!111649) (not b_next!111655) (not b_next!111659) b_and!306851 (not b_next!111657) b_and!306861 b_and!306865 (not b_next!111653) b_and!306863 b_and!306859 (not b_next!111651) b_and!306853)

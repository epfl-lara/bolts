; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!378448 () Bool)

(assert start!378448)

(declare-fun b!4019334 () Bool)

(declare-fun b_free!111857 () Bool)

(declare-fun b_next!112561 () Bool)

(assert (=> b!4019334 (= b_free!111857 (not b_next!112561))))

(declare-fun tp!1221968 () Bool)

(declare-fun b_and!308759 () Bool)

(assert (=> b!4019334 (= tp!1221968 b_and!308759)))

(declare-fun b_free!111859 () Bool)

(declare-fun b_next!112563 () Bool)

(assert (=> b!4019334 (= b_free!111859 (not b_next!112563))))

(declare-fun tp!1221975 () Bool)

(declare-fun b_and!308761 () Bool)

(assert (=> b!4019334 (= tp!1221975 b_and!308761)))

(declare-fun b!4019363 () Bool)

(declare-fun b_free!111861 () Bool)

(declare-fun b_next!112565 () Bool)

(assert (=> b!4019363 (= b_free!111861 (not b_next!112565))))

(declare-fun tp!1221964 () Bool)

(declare-fun b_and!308763 () Bool)

(assert (=> b!4019363 (= tp!1221964 b_and!308763)))

(declare-fun b_free!111863 () Bool)

(declare-fun b_next!112567 () Bool)

(assert (=> b!4019363 (= b_free!111863 (not b_next!112567))))

(declare-fun tp!1221965 () Bool)

(declare-fun b_and!308765 () Bool)

(assert (=> b!4019363 (= tp!1221965 b_and!308765)))

(declare-fun b!4019332 () Bool)

(declare-fun e!2493360 () Bool)

(assert (=> b!4019332 (= e!2493360 false)))

(declare-fun e!2493362 () Bool)

(assert (=> b!4019334 (= e!2493362 (and tp!1221968 tp!1221975))))

(declare-fun b!4019335 () Bool)

(declare-fun res!1635316 () Bool)

(declare-fun e!2493332 () Bool)

(assert (=> b!4019335 (=> (not res!1635316) (not e!2493332))))

(declare-datatypes ((C!23716 0))(
  ( (C!23717 (val!13952 Int)) )
))
(declare-datatypes ((List!43154 0))(
  ( (Nil!43030) (Cons!43030 (h!48450 C!23716) (t!333487 List!43154)) )
))
(declare-fun suffix!1299 () List!43154)

(declare-fun newSuffix!27 () List!43154)

(declare-fun size!32171 (List!43154) Int)

(assert (=> b!4019335 (= res!1635316 (>= (size!32171 suffix!1299) (size!32171 newSuffix!27)))))

(declare-fun b!4019336 () Bool)

(declare-fun e!2493347 () Bool)

(declare-fun e!2493341 () Bool)

(assert (=> b!4019336 (= e!2493347 e!2493341)))

(declare-fun res!1635305 () Bool)

(assert (=> b!4019336 (=> res!1635305 e!2493341)))

(declare-fun lt!1427215 () Int)

(declare-fun lt!1427182 () Int)

(assert (=> b!4019336 (= res!1635305 (<= lt!1427215 lt!1427182))))

(declare-datatypes ((Unit!62145 0))(
  ( (Unit!62146) )
))
(declare-fun lt!1427177 () Unit!62145)

(declare-fun e!2493349 () Unit!62145)

(assert (=> b!4019336 (= lt!1427177 e!2493349)))

(declare-fun c!694545 () Bool)

(assert (=> b!4019336 (= c!694545 (< lt!1427215 lt!1427182))))

(declare-datatypes ((IArray!26147 0))(
  ( (IArray!26148 (innerList!13131 List!43154)) )
))
(declare-datatypes ((Conc!13071 0))(
  ( (Node!13071 (left!32435 Conc!13071) (right!32765 Conc!13071) (csize!26372 Int) (cheight!13282 Int)) (Leaf!20208 (xs!16377 IArray!26147) (csize!26373 Int)) (Empty!13071) )
))
(declare-datatypes ((BalanceConc!25736 0))(
  ( (BalanceConc!25737 (c!694546 Conc!13071)) )
))
(declare-datatypes ((List!43155 0))(
  ( (Nil!43031) (Cons!43031 (h!48451 (_ BitVec 16)) (t!333488 List!43155)) )
))
(declare-datatypes ((TokenValue!7090 0))(
  ( (FloatLiteralValue!14180 (text!50075 List!43155)) (TokenValueExt!7089 (__x!26397 Int)) (Broken!35450 (value!216118 List!43155)) (Object!7213) (End!7090) (Def!7090) (Underscore!7090) (Match!7090) (Else!7090) (Error!7090) (Case!7090) (If!7090) (Extends!7090) (Abstract!7090) (Class!7090) (Val!7090) (DelimiterValue!14180 (del!7150 List!43155)) (KeywordValue!7096 (value!216119 List!43155)) (CommentValue!14180 (value!216120 List!43155)) (WhitespaceValue!14180 (value!216121 List!43155)) (IndentationValue!7090 (value!216122 List!43155)) (String!49167) (Int32!7090) (Broken!35451 (value!216123 List!43155)) (Boolean!7091) (Unit!62147) (OperatorValue!7093 (op!7150 List!43155)) (IdentifierValue!14180 (value!216124 List!43155)) (IdentifierValue!14181 (value!216125 List!43155)) (WhitespaceValue!14181 (value!216126 List!43155)) (True!14180) (False!14180) (Broken!35452 (value!216127 List!43155)) (Broken!35453 (value!216128 List!43155)) (True!14181) (RightBrace!7090) (RightBracket!7090) (Colon!7090) (Null!7090) (Comma!7090) (LeftBracket!7090) (False!14181) (LeftBrace!7090) (ImaginaryLiteralValue!7090 (text!50076 List!43155)) (StringLiteralValue!21270 (value!216129 List!43155)) (EOFValue!7090 (value!216130 List!43155)) (IdentValue!7090 (value!216131 List!43155)) (DelimiterValue!14181 (value!216132 List!43155)) (DedentValue!7090 (value!216133 List!43155)) (NewLineValue!7090 (value!216134 List!43155)) (IntegerValue!21270 (value!216135 (_ BitVec 32)) (text!50077 List!43155)) (IntegerValue!21271 (value!216136 Int) (text!50078 List!43155)) (Times!7090) (Or!7090) (Equal!7090) (Minus!7090) (Broken!35454 (value!216137 List!43155)) (And!7090) (Div!7090) (LessEqual!7090) (Mod!7090) (Concat!18855) (Not!7090) (Plus!7090) (SpaceValue!7090 (value!216138 List!43155)) (IntegerValue!21272 (value!216139 Int) (text!50079 List!43155)) (StringLiteralValue!21271 (text!50080 List!43155)) (FloatLiteralValue!14181 (text!50081 List!43155)) (BytesLiteralValue!7090 (value!216140 List!43155)) (CommentValue!14181 (value!216141 List!43155)) (StringLiteralValue!21272 (value!216142 List!43155)) (ErrorTokenValue!7090 (msg!7151 List!43155)) )
))
(declare-datatypes ((Regex!11765 0))(
  ( (ElementMatch!11765 (c!694547 C!23716)) (Concat!18856 (regOne!24042 Regex!11765) (regTwo!24042 Regex!11765)) (EmptyExpr!11765) (Star!11765 (reg!12094 Regex!11765)) (EmptyLang!11765) (Union!11765 (regOne!24043 Regex!11765) (regTwo!24043 Regex!11765)) )
))
(declare-datatypes ((String!49168 0))(
  ( (String!49169 (value!216143 String)) )
))
(declare-datatypes ((TokenValueInjection!13608 0))(
  ( (TokenValueInjection!13609 (toValue!9368 Int) (toChars!9227 Int)) )
))
(declare-datatypes ((Rule!13520 0))(
  ( (Rule!13521 (regex!6860 Regex!11765) (tag!7720 String!49168) (isSeparator!6860 Bool) (transformation!6860 TokenValueInjection!13608)) )
))
(declare-datatypes ((List!43156 0))(
  ( (Nil!43032) (Cons!43032 (h!48452 Rule!13520) (t!333489 List!43156)) )
))
(declare-fun rules!2999 () List!43156)

(declare-datatypes ((Token!12858 0))(
  ( (Token!12859 (value!216144 TokenValue!7090) (rule!9912 Rule!13520) (size!32172 Int) (originalCharacters!7460 List!43154)) )
))
(declare-fun token!484 () Token!12858)

(declare-fun getIndex!558 (List!43156 Rule!13520) Int)

(assert (=> b!4019336 (= lt!1427182 (getIndex!558 rules!2999 (rule!9912 token!484)))))

(declare-datatypes ((tuple2!42158 0))(
  ( (tuple2!42159 (_1!24213 Token!12858) (_2!24213 List!43154)) )
))
(declare-datatypes ((Option!9274 0))(
  ( (None!9273) (Some!9273 (v!39647 tuple2!42158)) )
))
(declare-fun lt!1427206 () Option!9274)

(assert (=> b!4019336 (= lt!1427215 (getIndex!558 rules!2999 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))

(declare-fun newSuffixResult!27 () List!43154)

(assert (=> b!4019336 (= (_2!24213 (v!39647 lt!1427206)) newSuffixResult!27)))

(declare-fun lt!1427222 () List!43154)

(declare-fun lt!1427227 () Unit!62145)

(declare-fun lt!1427181 () List!43154)

(declare-fun lt!1427191 () List!43154)

(declare-fun lemmaSamePrefixThenSameSuffix!2118 (List!43154 List!43154 List!43154 List!43154 List!43154) Unit!62145)

(assert (=> b!4019336 (= lt!1427227 (lemmaSamePrefixThenSameSuffix!2118 lt!1427181 (_2!24213 (v!39647 lt!1427206)) lt!1427191 newSuffixResult!27 lt!1427222))))

(assert (=> b!4019336 (= lt!1427181 lt!1427191)))

(declare-fun lt!1427173 () Unit!62145)

(declare-fun lemmaIsPrefixSameLengthThenSameList!907 (List!43154 List!43154 List!43154) Unit!62145)

(assert (=> b!4019336 (= lt!1427173 (lemmaIsPrefixSameLengthThenSameList!907 lt!1427181 lt!1427191 lt!1427222))))

(declare-fun b!4019337 () Bool)

(declare-fun e!2493338 () Bool)

(declare-fun e!2493352 () Bool)

(assert (=> b!4019337 (= e!2493338 (not e!2493352))))

(declare-fun res!1635309 () Bool)

(assert (=> b!4019337 (=> res!1635309 e!2493352)))

(declare-fun lt!1427199 () List!43154)

(declare-fun lt!1427217 () List!43154)

(assert (=> b!4019337 (= res!1635309 (not (= lt!1427199 lt!1427217)))))

(declare-fun suffixResult!105 () List!43154)

(declare-fun ++!11262 (List!43154 List!43154) List!43154)

(assert (=> b!4019337 (= lt!1427199 (++!11262 lt!1427191 suffixResult!105))))

(declare-fun lt!1427211 () Unit!62145)

(declare-fun lemmaInv!1075 (TokenValueInjection!13608) Unit!62145)

(assert (=> b!4019337 (= lt!1427211 (lemmaInv!1075 (transformation!6860 (rule!9912 token!484))))))

(declare-datatypes ((LexerInterface!6449 0))(
  ( (LexerInterfaceExt!6446 (__x!26398 Int)) (Lexer!6447) )
))
(declare-fun thiss!21717 () LexerInterface!6449)

(declare-fun ruleValid!2792 (LexerInterface!6449 Rule!13520) Bool)

(assert (=> b!4019337 (ruleValid!2792 thiss!21717 (rule!9912 token!484))))

(declare-fun lt!1427228 () Unit!62145)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1866 (LexerInterface!6449 Rule!13520 List!43156) Unit!62145)

(assert (=> b!4019337 (= lt!1427228 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1866 thiss!21717 (rule!9912 token!484) rules!2999))))

(declare-fun b!4019338 () Bool)

(declare-fun e!2493354 () Bool)

(declare-fun e!2493344 () Bool)

(assert (=> b!4019338 (= e!2493354 e!2493344)))

(declare-fun res!1635321 () Bool)

(assert (=> b!4019338 (=> res!1635321 e!2493344)))

(declare-fun lt!1427185 () List!43154)

(assert (=> b!4019338 (= res!1635321 (not (= lt!1427185 suffix!1299)))))

(declare-fun lt!1427213 () List!43154)

(assert (=> b!4019338 (= lt!1427185 (++!11262 newSuffix!27 lt!1427213))))

(declare-fun getSuffix!2372 (List!43154 List!43154) List!43154)

(assert (=> b!4019338 (= lt!1427213 (getSuffix!2372 suffix!1299 newSuffix!27))))

(declare-fun tp!1221966 () Bool)

(declare-fun b!4019339 () Bool)

(declare-fun e!2493353 () Bool)

(declare-fun inv!57469 (String!49168) Bool)

(declare-fun inv!57472 (TokenValueInjection!13608) Bool)

(assert (=> b!4019339 (= e!2493353 (and tp!1221966 (inv!57469 (tag!7720 (h!48452 rules!2999))) (inv!57472 (transformation!6860 (h!48452 rules!2999))) e!2493362))))

(declare-fun b!4019340 () Bool)

(declare-fun e!2493335 () Bool)

(declare-fun e!2493339 () Bool)

(assert (=> b!4019340 (= e!2493335 e!2493339)))

(declare-fun res!1635319 () Bool)

(assert (=> b!4019340 (=> res!1635319 e!2493339)))

(declare-fun lt!1427190 () List!43154)

(assert (=> b!4019340 (= res!1635319 (not (= lt!1427190 lt!1427222)))))

(declare-fun lt!1427214 () List!43154)

(assert (=> b!4019340 (= lt!1427190 (++!11262 lt!1427181 lt!1427214))))

(assert (=> b!4019340 (= lt!1427214 (getSuffix!2372 lt!1427222 lt!1427181))))

(declare-fun b!4019341 () Bool)

(declare-fun e!2493357 () Bool)

(assert (=> b!4019341 (= e!2493357 e!2493338)))

(declare-fun res!1635315 () Bool)

(assert (=> b!4019341 (=> (not res!1635315) (not e!2493338))))

(declare-fun lt!1427229 () Option!9274)

(declare-fun maxPrefix!3747 (LexerInterface!6449 List!43156 List!43154) Option!9274)

(assert (=> b!4019341 (= res!1635315 (= (maxPrefix!3747 thiss!21717 rules!2999 lt!1427217) lt!1427229))))

(declare-fun lt!1427233 () tuple2!42158)

(assert (=> b!4019341 (= lt!1427229 (Some!9273 lt!1427233))))

(assert (=> b!4019341 (= lt!1427233 (tuple2!42159 token!484 suffixResult!105))))

(declare-fun prefix!494 () List!43154)

(assert (=> b!4019341 (= lt!1427217 (++!11262 prefix!494 suffix!1299))))

(declare-fun b!4019342 () Bool)

(declare-fun e!2493337 () Bool)

(declare-fun tp!1221974 () Bool)

(declare-fun e!2493334 () Bool)

(declare-fun inv!21 (TokenValue!7090) Bool)

(assert (=> b!4019342 (= e!2493337 (and (inv!21 (value!216144 token!484)) e!2493334 tp!1221974))))

(declare-fun b!4019343 () Bool)

(declare-fun e!2493348 () Bool)

(declare-fun tp_is_empty!20501 () Bool)

(declare-fun tp!1221972 () Bool)

(assert (=> b!4019343 (= e!2493348 (and tp_is_empty!20501 tp!1221972))))

(declare-fun b!4019344 () Bool)

(declare-fun res!1635307 () Bool)

(assert (=> b!4019344 (=> (not res!1635307) (not e!2493332))))

(declare-fun rulesInvariant!5792 (LexerInterface!6449 List!43156) Bool)

(assert (=> b!4019344 (= res!1635307 (rulesInvariant!5792 thiss!21717 rules!2999))))

(declare-fun b!4019345 () Bool)

(declare-fun e!2493327 () Bool)

(declare-fun tp!1221969 () Bool)

(assert (=> b!4019345 (= e!2493327 (and tp_is_empty!20501 tp!1221969))))

(declare-fun b!4019346 () Bool)

(declare-fun e!2493333 () Unit!62145)

(declare-fun Unit!62148 () Unit!62145)

(assert (=> b!4019346 (= e!2493333 Unit!62148)))

(declare-fun lt!1427224 () Unit!62145)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!454 (LexerInterface!6449 List!43156 Rule!13520 List!43154 List!43154 List!43154 Rule!13520) Unit!62145)

(assert (=> b!4019346 (= lt!1427224 (lemmaMaxPrefixOutputsMaxPrefix!454 thiss!21717 rules!2999 (rule!9912 token!484) lt!1427191 lt!1427217 lt!1427181 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))

(declare-fun res!1635308 () Bool)

(declare-fun matchR!5726 (Regex!11765 List!43154) Bool)

(assert (=> b!4019346 (= res!1635308 (not (matchR!5726 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) lt!1427181)))))

(assert (=> b!4019346 (=> (not res!1635308) (not e!2493360))))

(assert (=> b!4019346 e!2493360))

(declare-fun b!4019347 () Bool)

(declare-fun Unit!62149 () Unit!62145)

(assert (=> b!4019347 (= e!2493349 Unit!62149)))

(declare-fun b!4019348 () Bool)

(declare-fun res!1635298 () Bool)

(assert (=> b!4019348 (=> (not res!1635298) (not e!2493332))))

(declare-fun isPrefix!3947 (List!43154 List!43154) Bool)

(assert (=> b!4019348 (= res!1635298 (isPrefix!3947 newSuffix!27 suffix!1299))))

(declare-fun b!4019349 () Bool)

(declare-fun res!1635303 () Bool)

(assert (=> b!4019349 (=> res!1635303 e!2493347)))

(assert (=> b!4019349 (= res!1635303 (not (isPrefix!3947 lt!1427181 lt!1427222)))))

(declare-fun b!4019350 () Bool)

(declare-fun e!2493328 () Bool)

(declare-fun tp!1221976 () Bool)

(assert (=> b!4019350 (= e!2493328 (and tp_is_empty!20501 tp!1221976))))

(declare-fun b!4019351 () Bool)

(declare-fun Unit!62150 () Unit!62145)

(assert (=> b!4019351 (= e!2493349 Unit!62150)))

(declare-fun lt!1427209 () Unit!62145)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!282 (LexerInterface!6449 List!43156 Rule!13520 List!43154 List!43154 Rule!13520) Unit!62145)

(assert (=> b!4019351 (= lt!1427209 (lemmaMaxPrefNoSmallerRuleMatches!282 thiss!21717 rules!2999 (rule!9912 token!484) lt!1427191 lt!1427217 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))

(declare-fun res!1635312 () Bool)

(assert (=> b!4019351 (= res!1635312 (not (matchR!5726 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) lt!1427191)))))

(declare-fun e!2493350 () Bool)

(assert (=> b!4019351 (=> (not res!1635312) (not e!2493350))))

(assert (=> b!4019351 e!2493350))

(declare-fun b!4019352 () Bool)

(declare-fun e!2493330 () Bool)

(declare-fun e!2493358 () Bool)

(assert (=> b!4019352 (= e!2493330 e!2493358)))

(declare-fun res!1635301 () Bool)

(assert (=> b!4019352 (=> res!1635301 e!2493358)))

(declare-fun lt!1427188 () List!43154)

(assert (=> b!4019352 (= res!1635301 (not (= lt!1427188 prefix!494)))))

(declare-fun lt!1427218 () List!43154)

(assert (=> b!4019352 (= lt!1427188 (++!11262 lt!1427191 lt!1427218))))

(assert (=> b!4019352 (= lt!1427218 (getSuffix!2372 prefix!494 lt!1427191))))

(assert (=> b!4019352 (isPrefix!3947 lt!1427191 prefix!494)))

(declare-fun lt!1427183 () Unit!62145)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!519 (List!43154 List!43154 List!43154) Unit!62145)

(assert (=> b!4019352 (= lt!1427183 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!519 prefix!494 lt!1427191 lt!1427217))))

(declare-fun b!4019353 () Bool)

(declare-fun e!2493346 () Bool)

(declare-fun tp!1221967 () Bool)

(assert (=> b!4019353 (= e!2493346 (and tp_is_empty!20501 tp!1221967))))

(declare-fun b!4019354 () Bool)

(declare-fun e!2493342 () Bool)

(assert (=> b!4019354 (= e!2493342 e!2493357)))

(declare-fun res!1635293 () Bool)

(assert (=> b!4019354 (=> (not res!1635293) (not e!2493357))))

(declare-fun lt!1427204 () List!43154)

(assert (=> b!4019354 (= res!1635293 (= lt!1427204 lt!1427222))))

(assert (=> b!4019354 (= lt!1427222 (++!11262 prefix!494 newSuffix!27))))

(assert (=> b!4019354 (= lt!1427204 (++!11262 lt!1427191 newSuffixResult!27))))

(declare-fun b!4019355 () Bool)

(declare-fun e!2493351 () Bool)

(declare-fun e!2493355 () Bool)

(assert (=> b!4019355 (= e!2493351 e!2493355)))

(declare-fun res!1635295 () Bool)

(assert (=> b!4019355 (=> res!1635295 e!2493355)))

(declare-fun lt!1427230 () Option!9274)

(assert (=> b!4019355 (= res!1635295 (not (= lt!1427230 lt!1427229)))))

(declare-fun lt!1427179 () Token!12858)

(assert (=> b!4019355 (= lt!1427230 (Some!9273 (tuple2!42159 lt!1427179 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2767 (LexerInterface!6449 Rule!13520 List!43154) Option!9274)

(assert (=> b!4019355 (= lt!1427230 (maxPrefixOneRule!2767 thiss!21717 (rule!9912 token!484) lt!1427217))))

(declare-fun lt!1427193 () Int)

(declare-fun lt!1427232 () TokenValue!7090)

(assert (=> b!4019355 (= lt!1427179 (Token!12859 lt!1427232 (rule!9912 token!484) lt!1427193 lt!1427191))))

(declare-fun apply!10057 (TokenValueInjection!13608 BalanceConc!25736) TokenValue!7090)

(declare-fun seqFromList!5085 (List!43154) BalanceConc!25736)

(assert (=> b!4019355 (= lt!1427232 (apply!10057 (transformation!6860 (rule!9912 token!484)) (seqFromList!5085 lt!1427191)))))

(declare-fun lt!1427180 () Unit!62145)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1585 (LexerInterface!6449 List!43156 List!43154 List!43154 List!43154 Rule!13520) Unit!62145)

(assert (=> b!4019355 (= lt!1427180 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1585 thiss!21717 rules!2999 lt!1427191 lt!1427217 suffixResult!105 (rule!9912 token!484)))))

(declare-fun lt!1427216 () List!43154)

(assert (=> b!4019355 (= lt!1427216 suffixResult!105)))

(declare-fun lt!1427205 () Unit!62145)

(assert (=> b!4019355 (= lt!1427205 (lemmaSamePrefixThenSameSuffix!2118 lt!1427191 lt!1427216 lt!1427191 suffixResult!105 lt!1427217))))

(declare-fun lt!1427219 () List!43154)

(assert (=> b!4019355 (isPrefix!3947 lt!1427191 lt!1427219)))

(declare-fun lt!1427175 () Unit!62145)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2788 (List!43154 List!43154) Unit!62145)

(assert (=> b!4019355 (= lt!1427175 (lemmaConcatTwoListThenFirstIsPrefix!2788 lt!1427191 lt!1427216))))

(declare-fun res!1635311 () Bool)

(assert (=> start!378448 (=> (not res!1635311) (not e!2493332))))

(get-info :version)

(assert (=> start!378448 (= res!1635311 ((_ is Lexer!6447) thiss!21717))))

(assert (=> start!378448 e!2493332))

(assert (=> start!378448 e!2493346))

(declare-fun inv!57473 (Token!12858) Bool)

(assert (=> start!378448 (and (inv!57473 token!484) e!2493337)))

(assert (=> start!378448 e!2493348))

(assert (=> start!378448 e!2493328))

(declare-fun e!2493329 () Bool)

(assert (=> start!378448 e!2493329))

(assert (=> start!378448 true))

(declare-fun e!2493336 () Bool)

(assert (=> start!378448 e!2493336))

(assert (=> start!378448 e!2493327))

(declare-fun b!4019333 () Bool)

(declare-fun e!2493345 () Bool)

(declare-fun e!2493326 () Bool)

(assert (=> b!4019333 (= e!2493345 e!2493326)))

(declare-fun res!1635306 () Bool)

(assert (=> b!4019333 (=> res!1635306 e!2493326)))

(declare-fun lt!1427176 () List!43154)

(assert (=> b!4019333 (= res!1635306 (not (= lt!1427176 lt!1427217)))))

(declare-fun lt!1427187 () List!43154)

(assert (=> b!4019333 (= lt!1427176 (++!11262 lt!1427191 lt!1427187))))

(assert (=> b!4019333 (= lt!1427187 (getSuffix!2372 lt!1427217 lt!1427191))))

(declare-fun e!2493361 () Bool)

(assert (=> b!4019333 e!2493361))

(declare-fun res!1635313 () Bool)

(assert (=> b!4019333 (=> (not res!1635313) (not e!2493361))))

(assert (=> b!4019333 (= res!1635313 (isPrefix!3947 lt!1427217 lt!1427217))))

(declare-fun lt!1427220 () Unit!62145)

(declare-fun lemmaIsPrefixRefl!2523 (List!43154 List!43154) Unit!62145)

(assert (=> b!4019333 (= lt!1427220 (lemmaIsPrefixRefl!2523 lt!1427217 lt!1427217))))

(declare-fun b!4019356 () Bool)

(assert (=> b!4019356 (= e!2493355 e!2493345)))

(declare-fun res!1635310 () Bool)

(assert (=> b!4019356 (=> res!1635310 e!2493345)))

(assert (=> b!4019356 (= res!1635310 (not (matchR!5726 (regex!6860 (rule!9912 token!484)) lt!1427191)))))

(assert (=> b!4019356 (isPrefix!3947 lt!1427191 lt!1427222)))

(declare-fun lt!1427225 () Unit!62145)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!760 (List!43154 List!43154 List!43154) Unit!62145)

(assert (=> b!4019356 (= lt!1427225 (lemmaPrefixStaysPrefixWhenAddingToSuffix!760 lt!1427191 prefix!494 newSuffix!27))))

(declare-fun lt!1427184 () Unit!62145)

(assert (=> b!4019356 (= lt!1427184 (lemmaPrefixStaysPrefixWhenAddingToSuffix!760 lt!1427191 prefix!494 suffix!1299))))

(declare-fun b!4019357 () Bool)

(assert (=> b!4019357 (= e!2493350 false)))

(declare-fun b!4019358 () Bool)

(assert (=> b!4019358 (= e!2493332 e!2493342)))

(declare-fun res!1635300 () Bool)

(assert (=> b!4019358 (=> (not res!1635300) (not e!2493342))))

(declare-fun lt!1427221 () Int)

(assert (=> b!4019358 (= res!1635300 (>= lt!1427221 lt!1427193))))

(assert (=> b!4019358 (= lt!1427193 (size!32171 lt!1427191))))

(assert (=> b!4019358 (= lt!1427221 (size!32171 prefix!494))))

(declare-fun list!15996 (BalanceConc!25736) List!43154)

(declare-fun charsOf!4676 (Token!12858) BalanceConc!25736)

(assert (=> b!4019358 (= lt!1427191 (list!15996 (charsOf!4676 token!484)))))

(declare-fun b!4019359 () Bool)

(declare-fun res!1635296 () Bool)

(assert (=> b!4019359 (=> (not res!1635296) (not e!2493361))))

(assert (=> b!4019359 (= res!1635296 (= (size!32172 token!484) (size!32171 (originalCharacters!7460 token!484))))))

(declare-fun e!2493364 () Bool)

(declare-fun b!4019360 () Bool)

(declare-fun tp!1221970 () Bool)

(assert (=> b!4019360 (= e!2493334 (and tp!1221970 (inv!57469 (tag!7720 (rule!9912 token!484))) (inv!57472 (transformation!6860 (rule!9912 token!484))) e!2493364))))

(declare-fun b!4019361 () Bool)

(declare-fun tp!1221971 () Bool)

(assert (=> b!4019361 (= e!2493329 (and tp_is_empty!20501 tp!1221971))))

(declare-fun b!4019362 () Bool)

(assert (=> b!4019362 (= e!2493352 e!2493330)))

(declare-fun res!1635304 () Bool)

(assert (=> b!4019362 (=> res!1635304 e!2493330)))

(assert (=> b!4019362 (= res!1635304 (not (isPrefix!3947 lt!1427191 lt!1427217)))))

(assert (=> b!4019362 (isPrefix!3947 prefix!494 lt!1427217)))

(declare-fun lt!1427223 () Unit!62145)

(assert (=> b!4019362 (= lt!1427223 (lemmaConcatTwoListThenFirstIsPrefix!2788 prefix!494 suffix!1299))))

(assert (=> b!4019362 (isPrefix!3947 lt!1427191 lt!1427199)))

(declare-fun lt!1427226 () Unit!62145)

(assert (=> b!4019362 (= lt!1427226 (lemmaConcatTwoListThenFirstIsPrefix!2788 lt!1427191 suffixResult!105))))

(assert (=> b!4019363 (= e!2493364 (and tp!1221964 tp!1221965))))

(declare-fun b!4019364 () Bool)

(assert (=> b!4019364 (= e!2493361 (and (= (size!32172 token!484) lt!1427193) (= (originalCharacters!7460 token!484) lt!1427191)))))

(declare-fun b!4019365 () Bool)

(declare-fun res!1635297 () Bool)

(assert (=> b!4019365 (=> (not res!1635297) (not e!2493361))))

(assert (=> b!4019365 (= res!1635297 (= (value!216144 token!484) lt!1427232))))

(declare-fun b!4019366 () Bool)

(assert (=> b!4019366 (= e!2493358 e!2493351)))

(declare-fun res!1635292 () Bool)

(assert (=> b!4019366 (=> res!1635292 e!2493351)))

(declare-fun lt!1427171 () List!43154)

(assert (=> b!4019366 (= res!1635292 (or (not (= lt!1427217 lt!1427171)) (not (= lt!1427217 lt!1427219))))))

(assert (=> b!4019366 (= lt!1427171 lt!1427219)))

(assert (=> b!4019366 (= lt!1427219 (++!11262 lt!1427191 lt!1427216))))

(assert (=> b!4019366 (= lt!1427171 (++!11262 lt!1427188 suffix!1299))))

(assert (=> b!4019366 (= lt!1427216 (++!11262 lt!1427218 suffix!1299))))

(declare-fun lt!1427212 () Unit!62145)

(declare-fun lemmaConcatAssociativity!2572 (List!43154 List!43154 List!43154) Unit!62145)

(assert (=> b!4019366 (= lt!1427212 (lemmaConcatAssociativity!2572 lt!1427191 lt!1427218 suffix!1299))))

(declare-fun b!4019367 () Bool)

(assert (=> b!4019367 (= e!2493341 (matchR!5726 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) lt!1427181))))

(declare-fun b!4019368 () Bool)

(assert (=> b!4019368 (= e!2493339 e!2493347)))

(declare-fun res!1635317 () Bool)

(assert (=> b!4019368 (=> res!1635317 e!2493347)))

(declare-fun lt!1427200 () Int)

(assert (=> b!4019368 (= res!1635317 (not (= lt!1427193 lt!1427200)))))

(declare-fun lt!1427208 () Unit!62145)

(declare-fun e!2493356 () Unit!62145)

(assert (=> b!4019368 (= lt!1427208 e!2493356)))

(declare-fun c!694544 () Bool)

(assert (=> b!4019368 (= c!694544 (< lt!1427200 lt!1427193))))

(declare-fun lt!1427198 () Unit!62145)

(assert (=> b!4019368 (= lt!1427198 e!2493333)))

(declare-fun c!694543 () Bool)

(assert (=> b!4019368 (= c!694543 (> lt!1427200 lt!1427193))))

(assert (=> b!4019368 (= (_2!24213 (v!39647 lt!1427206)) lt!1427214)))

(declare-fun lt!1427169 () Unit!62145)

(assert (=> b!4019368 (= lt!1427169 (lemmaSamePrefixThenSameSuffix!2118 lt!1427181 (_2!24213 (v!39647 lt!1427206)) lt!1427181 lt!1427214 lt!1427222))))

(assert (=> b!4019368 (isPrefix!3947 lt!1427181 lt!1427190)))

(declare-fun lt!1427172 () Unit!62145)

(assert (=> b!4019368 (= lt!1427172 (lemmaConcatTwoListThenFirstIsPrefix!2788 lt!1427181 lt!1427214))))

(declare-fun b!4019369 () Bool)

(declare-fun res!1635299 () Bool)

(assert (=> b!4019369 (=> (not res!1635299) (not e!2493332))))

(declare-fun isEmpty!25692 (List!43156) Bool)

(assert (=> b!4019369 (= res!1635299 (not (isEmpty!25692 rules!2999)))))

(declare-fun b!4019370 () Bool)

(declare-fun Unit!62151 () Unit!62145)

(assert (=> b!4019370 (= e!2493356 Unit!62151)))

(declare-fun lt!1427192 () Unit!62145)

(assert (=> b!4019370 (= lt!1427192 (lemmaMaxPrefixOutputsMaxPrefix!454 thiss!21717 rules!2999 (rule!9912 (_1!24213 (v!39647 lt!1427206))) lt!1427181 lt!1427222 lt!1427191 (rule!9912 token!484)))))

(assert (=> b!4019370 false))

(declare-fun b!4019371 () Bool)

(declare-fun e!2493359 () Bool)

(assert (=> b!4019371 (= e!2493326 e!2493359)))

(declare-fun res!1635302 () Bool)

(assert (=> b!4019371 (=> res!1635302 e!2493359)))

(assert (=> b!4019371 (= res!1635302 (not ((_ is Some!9273) lt!1427206)))))

(assert (=> b!4019371 (= lt!1427206 (maxPrefix!3747 thiss!21717 rules!2999 lt!1427222))))

(assert (=> b!4019371 (and (= suffixResult!105 lt!1427187) (= lt!1427233 (tuple2!42159 lt!1427179 lt!1427187)))))

(declare-fun lt!1427178 () Unit!62145)

(assert (=> b!4019371 (= lt!1427178 (lemmaSamePrefixThenSameSuffix!2118 lt!1427191 suffixResult!105 lt!1427191 lt!1427187 lt!1427217))))

(assert (=> b!4019371 (isPrefix!3947 lt!1427191 lt!1427176)))

(declare-fun lt!1427170 () Unit!62145)

(assert (=> b!4019371 (= lt!1427170 (lemmaConcatTwoListThenFirstIsPrefix!2788 lt!1427191 lt!1427187))))

(declare-fun b!4019372 () Bool)

(declare-fun e!2493340 () Bool)

(assert (=> b!4019372 (= e!2493340 e!2493335)))

(declare-fun res!1635294 () Bool)

(assert (=> b!4019372 (=> res!1635294 e!2493335)))

(assert (=> b!4019372 (= res!1635294 (not (isPrefix!3947 lt!1427181 lt!1427217)))))

(declare-fun lt!1427194 () List!43154)

(assert (=> b!4019372 (isPrefix!3947 lt!1427181 lt!1427194)))

(declare-fun lt!1427189 () Unit!62145)

(assert (=> b!4019372 (= lt!1427189 (lemmaPrefixStaysPrefixWhenAddingToSuffix!760 lt!1427181 lt!1427222 lt!1427213))))

(declare-fun b!4019373 () Bool)

(assert (=> b!4019373 (= e!2493344 e!2493340)))

(declare-fun res!1635314 () Bool)

(assert (=> b!4019373 (=> res!1635314 e!2493340)))

(assert (=> b!4019373 (= res!1635314 (not (= lt!1427194 lt!1427217)))))

(assert (=> b!4019373 (= lt!1427194 (++!11262 prefix!494 lt!1427185))))

(assert (=> b!4019373 (= lt!1427194 (++!11262 lt!1427222 lt!1427213))))

(declare-fun lt!1427207 () Unit!62145)

(assert (=> b!4019373 (= lt!1427207 (lemmaConcatAssociativity!2572 prefix!494 newSuffix!27 lt!1427213))))

(declare-fun b!4019374 () Bool)

(assert (=> b!4019374 (= e!2493359 e!2493354)))

(declare-fun res!1635318 () Bool)

(assert (=> b!4019374 (=> res!1635318 e!2493354)))

(declare-fun lt!1427231 () Option!9274)

(assert (=> b!4019374 (= res!1635318 (not (= lt!1427231 (Some!9273 (v!39647 lt!1427206)))))))

(assert (=> b!4019374 (isPrefix!3947 lt!1427181 (++!11262 lt!1427181 newSuffixResult!27))))

(declare-fun lt!1427210 () Unit!62145)

(assert (=> b!4019374 (= lt!1427210 (lemmaConcatTwoListThenFirstIsPrefix!2788 lt!1427181 newSuffixResult!27))))

(declare-fun lt!1427186 () List!43154)

(assert (=> b!4019374 (isPrefix!3947 lt!1427181 lt!1427186)))

(assert (=> b!4019374 (= lt!1427186 (++!11262 lt!1427181 (_2!24213 (v!39647 lt!1427206))))))

(declare-fun lt!1427195 () Unit!62145)

(assert (=> b!4019374 (= lt!1427195 (lemmaConcatTwoListThenFirstIsPrefix!2788 lt!1427181 (_2!24213 (v!39647 lt!1427206))))))

(declare-fun lt!1427201 () TokenValue!7090)

(assert (=> b!4019374 (= lt!1427231 (Some!9273 (tuple2!42159 (Token!12859 lt!1427201 (rule!9912 (_1!24213 (v!39647 lt!1427206))) lt!1427200 lt!1427181) (_2!24213 (v!39647 lt!1427206)))))))

(assert (=> b!4019374 (= lt!1427231 (maxPrefixOneRule!2767 thiss!21717 (rule!9912 (_1!24213 (v!39647 lt!1427206))) lt!1427222))))

(assert (=> b!4019374 (= lt!1427200 (size!32171 lt!1427181))))

(assert (=> b!4019374 (= lt!1427201 (apply!10057 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (seqFromList!5085 lt!1427181)))))

(declare-fun lt!1427196 () Unit!62145)

(assert (=> b!4019374 (= lt!1427196 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1585 thiss!21717 rules!2999 lt!1427181 lt!1427222 (_2!24213 (v!39647 lt!1427206)) (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))

(assert (=> b!4019374 (= lt!1427181 (list!15996 (charsOf!4676 (_1!24213 (v!39647 lt!1427206)))))))

(declare-fun lt!1427202 () Unit!62145)

(assert (=> b!4019374 (= lt!1427202 (lemmaInv!1075 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(assert (=> b!4019374 (ruleValid!2792 thiss!21717 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))

(declare-fun lt!1427174 () Unit!62145)

(assert (=> b!4019374 (= lt!1427174 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1866 thiss!21717 (rule!9912 (_1!24213 (v!39647 lt!1427206))) rules!2999))))

(declare-fun lt!1427203 () Unit!62145)

(declare-fun lemmaCharactersSize!1419 (Token!12858) Unit!62145)

(assert (=> b!4019374 (= lt!1427203 (lemmaCharactersSize!1419 token!484))))

(declare-fun lt!1427197 () Unit!62145)

(assert (=> b!4019374 (= lt!1427197 (lemmaCharactersSize!1419 (_1!24213 (v!39647 lt!1427206))))))

(declare-fun b!4019375 () Bool)

(declare-fun Unit!62152 () Unit!62145)

(assert (=> b!4019375 (= e!2493333 Unit!62152)))

(declare-fun b!4019376 () Bool)

(declare-fun Unit!62153 () Unit!62145)

(assert (=> b!4019376 (= e!2493356 Unit!62153)))

(declare-fun b!4019377 () Bool)

(declare-fun tp!1221973 () Bool)

(assert (=> b!4019377 (= e!2493336 (and e!2493353 tp!1221973))))

(declare-fun b!4019378 () Bool)

(declare-fun res!1635320 () Bool)

(assert (=> b!4019378 (=> res!1635320 e!2493335)))

(assert (=> b!4019378 (= res!1635320 (not (= lt!1427186 lt!1427222)))))

(assert (= (and start!378448 res!1635311) b!4019369))

(assert (= (and b!4019369 res!1635299) b!4019344))

(assert (= (and b!4019344 res!1635307) b!4019335))

(assert (= (and b!4019335 res!1635316) b!4019348))

(assert (= (and b!4019348 res!1635298) b!4019358))

(assert (= (and b!4019358 res!1635300) b!4019354))

(assert (= (and b!4019354 res!1635293) b!4019341))

(assert (= (and b!4019341 res!1635315) b!4019337))

(assert (= (and b!4019337 (not res!1635309)) b!4019362))

(assert (= (and b!4019362 (not res!1635304)) b!4019352))

(assert (= (and b!4019352 (not res!1635301)) b!4019366))

(assert (= (and b!4019366 (not res!1635292)) b!4019355))

(assert (= (and b!4019355 (not res!1635295)) b!4019356))

(assert (= (and b!4019356 (not res!1635310)) b!4019333))

(assert (= (and b!4019333 res!1635313) b!4019365))

(assert (= (and b!4019365 res!1635297) b!4019359))

(assert (= (and b!4019359 res!1635296) b!4019364))

(assert (= (and b!4019333 (not res!1635306)) b!4019371))

(assert (= (and b!4019371 (not res!1635302)) b!4019374))

(assert (= (and b!4019374 (not res!1635318)) b!4019338))

(assert (= (and b!4019338 (not res!1635321)) b!4019373))

(assert (= (and b!4019373 (not res!1635314)) b!4019372))

(assert (= (and b!4019372 (not res!1635294)) b!4019378))

(assert (= (and b!4019378 (not res!1635320)) b!4019340))

(assert (= (and b!4019340 (not res!1635319)) b!4019368))

(assert (= (and b!4019368 c!694543) b!4019346))

(assert (= (and b!4019368 (not c!694543)) b!4019375))

(assert (= (and b!4019346 res!1635308) b!4019332))

(assert (= (and b!4019368 c!694544) b!4019370))

(assert (= (and b!4019368 (not c!694544)) b!4019376))

(assert (= (and b!4019368 (not res!1635317)) b!4019349))

(assert (= (and b!4019349 (not res!1635303)) b!4019336))

(assert (= (and b!4019336 c!694545) b!4019351))

(assert (= (and b!4019336 (not c!694545)) b!4019347))

(assert (= (and b!4019351 res!1635312) b!4019357))

(assert (= (and b!4019336 (not res!1635305)) b!4019367))

(assert (= (and start!378448 ((_ is Cons!43030) prefix!494)) b!4019353))

(assert (= b!4019360 b!4019363))

(assert (= b!4019342 b!4019360))

(assert (= start!378448 b!4019342))

(assert (= (and start!378448 ((_ is Cons!43030) suffixResult!105)) b!4019343))

(assert (= (and start!378448 ((_ is Cons!43030) suffix!1299)) b!4019350))

(assert (= (and start!378448 ((_ is Cons!43030) newSuffix!27)) b!4019361))

(assert (= b!4019339 b!4019334))

(assert (= b!4019377 b!4019339))

(assert (= (and start!378448 ((_ is Cons!43032) rules!2999)) b!4019377))

(assert (= (and start!378448 ((_ is Cons!43030) newSuffixResult!27)) b!4019345))

(declare-fun m!4608899 () Bool)

(assert (=> b!4019359 m!4608899))

(declare-fun m!4608901 () Bool)

(assert (=> b!4019342 m!4608901))

(declare-fun m!4608903 () Bool)

(assert (=> b!4019344 m!4608903))

(declare-fun m!4608905 () Bool)

(assert (=> b!4019356 m!4608905))

(declare-fun m!4608907 () Bool)

(assert (=> b!4019356 m!4608907))

(declare-fun m!4608909 () Bool)

(assert (=> b!4019356 m!4608909))

(declare-fun m!4608911 () Bool)

(assert (=> b!4019356 m!4608911))

(declare-fun m!4608913 () Bool)

(assert (=> b!4019351 m!4608913))

(declare-fun m!4608915 () Bool)

(assert (=> b!4019351 m!4608915))

(declare-fun m!4608917 () Bool)

(assert (=> b!4019360 m!4608917))

(declare-fun m!4608919 () Bool)

(assert (=> b!4019360 m!4608919))

(declare-fun m!4608921 () Bool)

(assert (=> b!4019336 m!4608921))

(declare-fun m!4608923 () Bool)

(assert (=> b!4019336 m!4608923))

(declare-fun m!4608925 () Bool)

(assert (=> b!4019336 m!4608925))

(declare-fun m!4608927 () Bool)

(assert (=> b!4019336 m!4608927))

(declare-fun m!4608929 () Bool)

(assert (=> start!378448 m!4608929))

(declare-fun m!4608931 () Bool)

(assert (=> b!4019370 m!4608931))

(declare-fun m!4608933 () Bool)

(assert (=> b!4019335 m!4608933))

(declare-fun m!4608935 () Bool)

(assert (=> b!4019335 m!4608935))

(declare-fun m!4608937 () Bool)

(assert (=> b!4019339 m!4608937))

(declare-fun m!4608939 () Bool)

(assert (=> b!4019339 m!4608939))

(declare-fun m!4608941 () Bool)

(assert (=> b!4019368 m!4608941))

(declare-fun m!4608943 () Bool)

(assert (=> b!4019368 m!4608943))

(declare-fun m!4608945 () Bool)

(assert (=> b!4019368 m!4608945))

(declare-fun m!4608947 () Bool)

(assert (=> b!4019349 m!4608947))

(declare-fun m!4608949 () Bool)

(assert (=> b!4019373 m!4608949))

(declare-fun m!4608951 () Bool)

(assert (=> b!4019373 m!4608951))

(declare-fun m!4608953 () Bool)

(assert (=> b!4019373 m!4608953))

(declare-fun m!4608955 () Bool)

(assert (=> b!4019367 m!4608955))

(declare-fun m!4608957 () Bool)

(assert (=> b!4019348 m!4608957))

(declare-fun m!4608959 () Bool)

(assert (=> b!4019341 m!4608959))

(declare-fun m!4608961 () Bool)

(assert (=> b!4019341 m!4608961))

(declare-fun m!4608963 () Bool)

(assert (=> b!4019338 m!4608963))

(declare-fun m!4608965 () Bool)

(assert (=> b!4019338 m!4608965))

(declare-fun m!4608967 () Bool)

(assert (=> b!4019333 m!4608967))

(declare-fun m!4608969 () Bool)

(assert (=> b!4019333 m!4608969))

(declare-fun m!4608971 () Bool)

(assert (=> b!4019333 m!4608971))

(declare-fun m!4608973 () Bool)

(assert (=> b!4019333 m!4608973))

(declare-fun m!4608975 () Bool)

(assert (=> b!4019371 m!4608975))

(declare-fun m!4608977 () Bool)

(assert (=> b!4019371 m!4608977))

(declare-fun m!4608979 () Bool)

(assert (=> b!4019371 m!4608979))

(declare-fun m!4608981 () Bool)

(assert (=> b!4019371 m!4608981))

(declare-fun m!4608983 () Bool)

(assert (=> b!4019352 m!4608983))

(declare-fun m!4608985 () Bool)

(assert (=> b!4019352 m!4608985))

(declare-fun m!4608987 () Bool)

(assert (=> b!4019352 m!4608987))

(declare-fun m!4608989 () Bool)

(assert (=> b!4019352 m!4608989))

(declare-fun m!4608991 () Bool)

(assert (=> b!4019340 m!4608991))

(declare-fun m!4608993 () Bool)

(assert (=> b!4019340 m!4608993))

(declare-fun m!4608995 () Bool)

(assert (=> b!4019374 m!4608995))

(declare-fun m!4608997 () Bool)

(assert (=> b!4019374 m!4608997))

(declare-fun m!4608999 () Bool)

(assert (=> b!4019374 m!4608999))

(declare-fun m!4609001 () Bool)

(assert (=> b!4019374 m!4609001))

(declare-fun m!4609003 () Bool)

(assert (=> b!4019374 m!4609003))

(declare-fun m!4609005 () Bool)

(assert (=> b!4019374 m!4609005))

(declare-fun m!4609007 () Bool)

(assert (=> b!4019374 m!4609007))

(declare-fun m!4609009 () Bool)

(assert (=> b!4019374 m!4609009))

(declare-fun m!4609011 () Bool)

(assert (=> b!4019374 m!4609011))

(declare-fun m!4609013 () Bool)

(assert (=> b!4019374 m!4609013))

(declare-fun m!4609015 () Bool)

(assert (=> b!4019374 m!4609015))

(assert (=> b!4019374 m!4609015))

(declare-fun m!4609017 () Bool)

(assert (=> b!4019374 m!4609017))

(declare-fun m!4609019 () Bool)

(assert (=> b!4019374 m!4609019))

(declare-fun m!4609021 () Bool)

(assert (=> b!4019374 m!4609021))

(declare-fun m!4609023 () Bool)

(assert (=> b!4019374 m!4609023))

(assert (=> b!4019374 m!4609021))

(declare-fun m!4609025 () Bool)

(assert (=> b!4019374 m!4609025))

(declare-fun m!4609027 () Bool)

(assert (=> b!4019374 m!4609027))

(assert (=> b!4019374 m!4608997))

(declare-fun m!4609029 () Bool)

(assert (=> b!4019374 m!4609029))

(declare-fun m!4609031 () Bool)

(assert (=> b!4019369 m!4609031))

(declare-fun m!4609033 () Bool)

(assert (=> b!4019337 m!4609033))

(declare-fun m!4609035 () Bool)

(assert (=> b!4019337 m!4609035))

(declare-fun m!4609037 () Bool)

(assert (=> b!4019337 m!4609037))

(declare-fun m!4609039 () Bool)

(assert (=> b!4019337 m!4609039))

(declare-fun m!4609041 () Bool)

(assert (=> b!4019372 m!4609041))

(declare-fun m!4609043 () Bool)

(assert (=> b!4019372 m!4609043))

(declare-fun m!4609045 () Bool)

(assert (=> b!4019372 m!4609045))

(declare-fun m!4609047 () Bool)

(assert (=> b!4019366 m!4609047))

(declare-fun m!4609049 () Bool)

(assert (=> b!4019366 m!4609049))

(declare-fun m!4609051 () Bool)

(assert (=> b!4019366 m!4609051))

(declare-fun m!4609053 () Bool)

(assert (=> b!4019366 m!4609053))

(declare-fun m!4609055 () Bool)

(assert (=> b!4019355 m!4609055))

(declare-fun m!4609057 () Bool)

(assert (=> b!4019355 m!4609057))

(declare-fun m!4609059 () Bool)

(assert (=> b!4019355 m!4609059))

(declare-fun m!4609061 () Bool)

(assert (=> b!4019355 m!4609061))

(declare-fun m!4609063 () Bool)

(assert (=> b!4019355 m!4609063))

(declare-fun m!4609065 () Bool)

(assert (=> b!4019355 m!4609065))

(assert (=> b!4019355 m!4609061))

(declare-fun m!4609067 () Bool)

(assert (=> b!4019355 m!4609067))

(declare-fun m!4609069 () Bool)

(assert (=> b!4019346 m!4609069))

(assert (=> b!4019346 m!4608955))

(declare-fun m!4609071 () Bool)

(assert (=> b!4019354 m!4609071))

(declare-fun m!4609073 () Bool)

(assert (=> b!4019354 m!4609073))

(declare-fun m!4609075 () Bool)

(assert (=> b!4019358 m!4609075))

(declare-fun m!4609077 () Bool)

(assert (=> b!4019358 m!4609077))

(declare-fun m!4609079 () Bool)

(assert (=> b!4019358 m!4609079))

(assert (=> b!4019358 m!4609079))

(declare-fun m!4609081 () Bool)

(assert (=> b!4019358 m!4609081))

(declare-fun m!4609083 () Bool)

(assert (=> b!4019362 m!4609083))

(declare-fun m!4609085 () Bool)

(assert (=> b!4019362 m!4609085))

(declare-fun m!4609087 () Bool)

(assert (=> b!4019362 m!4609087))

(declare-fun m!4609089 () Bool)

(assert (=> b!4019362 m!4609089))

(declare-fun m!4609091 () Bool)

(assert (=> b!4019362 m!4609091))

(check-sat b_and!308759 (not b!4019356) (not b!4019358) (not b!4019352) (not b!4019348) (not b!4019373) (not b!4019353) (not b_next!112565) (not b!4019361) (not b!4019342) (not b!4019346) (not b!4019350) (not b!4019370) (not b!4019374) (not b!4019360) b_and!308763 (not b_next!112567) (not b!4019338) (not b!4019343) (not b!4019368) (not b!4019345) (not b!4019369) tp_is_empty!20501 (not b!4019335) (not start!378448) (not b!4019351) (not b!4019344) (not b!4019336) (not b!4019377) (not b!4019340) (not b!4019349) (not b_next!112563) (not b!4019337) (not b!4019372) (not b!4019359) (not b!4019371) (not b!4019339) (not b!4019355) b_and!308765 (not b!4019367) (not b!4019354) (not b_next!112561) b_and!308761 (not b!4019333) (not b!4019362) (not b!4019341) (not b!4019366))
(check-sat b_and!308759 b_and!308763 (not b_next!112567) (not b_next!112565) (not b_next!112563) b_and!308765 (not b_next!112561) b_and!308761)
(get-model)

(declare-fun b!4019521 () Bool)

(declare-fun res!1635428 () Bool)

(declare-fun e!2493441 () Bool)

(assert (=> b!4019521 (=> (not res!1635428) (not e!2493441))))

(declare-fun lt!1427286 () Option!9274)

(declare-fun get!14131 (Option!9274) tuple2!42158)

(assert (=> b!4019521 (= res!1635428 (= (++!11262 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427286)))) (_2!24213 (get!14131 lt!1427286))) lt!1427222))))

(declare-fun bm!286570 () Bool)

(declare-fun call!286575 () Option!9274)

(assert (=> bm!286570 (= call!286575 (maxPrefixOneRule!2767 thiss!21717 (h!48452 rules!2999) lt!1427222))))

(declare-fun b!4019522 () Bool)

(declare-fun e!2493439 () Option!9274)

(assert (=> b!4019522 (= e!2493439 call!286575)))

(declare-fun b!4019523 () Bool)

(declare-fun res!1635424 () Bool)

(assert (=> b!4019523 (=> (not res!1635424) (not e!2493441))))

(assert (=> b!4019523 (= res!1635424 (matchR!5726 (regex!6860 (rule!9912 (_1!24213 (get!14131 lt!1427286)))) (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427286))))))))

(declare-fun b!4019524 () Bool)

(declare-fun res!1635425 () Bool)

(assert (=> b!4019524 (=> (not res!1635425) (not e!2493441))))

(assert (=> b!4019524 (= res!1635425 (= (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427286)))) (originalCharacters!7460 (_1!24213 (get!14131 lt!1427286)))))))

(declare-fun b!4019525 () Bool)

(declare-fun e!2493440 () Bool)

(assert (=> b!4019525 (= e!2493440 e!2493441)))

(declare-fun res!1635427 () Bool)

(assert (=> b!4019525 (=> (not res!1635427) (not e!2493441))))

(declare-fun isDefined!7077 (Option!9274) Bool)

(assert (=> b!4019525 (= res!1635427 (isDefined!7077 lt!1427286))))

(declare-fun b!4019526 () Bool)

(declare-fun contains!8548 (List!43156 Rule!13520) Bool)

(assert (=> b!4019526 (= e!2493441 (contains!8548 rules!2999 (rule!9912 (_1!24213 (get!14131 lt!1427286)))))))

(declare-fun d!1189815 () Bool)

(assert (=> d!1189815 e!2493440))

(declare-fun res!1635423 () Bool)

(assert (=> d!1189815 (=> res!1635423 e!2493440)))

(declare-fun isEmpty!25695 (Option!9274) Bool)

(assert (=> d!1189815 (= res!1635423 (isEmpty!25695 lt!1427286))))

(assert (=> d!1189815 (= lt!1427286 e!2493439)))

(declare-fun c!694571 () Bool)

(assert (=> d!1189815 (= c!694571 (and ((_ is Cons!43032) rules!2999) ((_ is Nil!43032) (t!333489 rules!2999))))))

(declare-fun lt!1427288 () Unit!62145)

(declare-fun lt!1427285 () Unit!62145)

(assert (=> d!1189815 (= lt!1427288 lt!1427285)))

(assert (=> d!1189815 (isPrefix!3947 lt!1427222 lt!1427222)))

(assert (=> d!1189815 (= lt!1427285 (lemmaIsPrefixRefl!2523 lt!1427222 lt!1427222))))

(declare-fun rulesValidInductive!2498 (LexerInterface!6449 List!43156) Bool)

(assert (=> d!1189815 (rulesValidInductive!2498 thiss!21717 rules!2999)))

(assert (=> d!1189815 (= (maxPrefix!3747 thiss!21717 rules!2999 lt!1427222) lt!1427286)))

(declare-fun b!4019520 () Bool)

(declare-fun res!1635429 () Bool)

(assert (=> b!4019520 (=> (not res!1635429) (not e!2493441))))

(assert (=> b!4019520 (= res!1635429 (= (value!216144 (_1!24213 (get!14131 lt!1427286))) (apply!10057 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427286)))) (seqFromList!5085 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427286)))))))))

(declare-fun b!4019527 () Bool)

(declare-fun lt!1427284 () Option!9274)

(declare-fun lt!1427287 () Option!9274)

(assert (=> b!4019527 (= e!2493439 (ite (and ((_ is None!9273) lt!1427284) ((_ is None!9273) lt!1427287)) None!9273 (ite ((_ is None!9273) lt!1427287) lt!1427284 (ite ((_ is None!9273) lt!1427284) lt!1427287 (ite (>= (size!32172 (_1!24213 (v!39647 lt!1427284))) (size!32172 (_1!24213 (v!39647 lt!1427287)))) lt!1427284 lt!1427287)))))))

(assert (=> b!4019527 (= lt!1427284 call!286575)))

(assert (=> b!4019527 (= lt!1427287 (maxPrefix!3747 thiss!21717 (t!333489 rules!2999) lt!1427222))))

(declare-fun b!4019528 () Bool)

(declare-fun res!1635426 () Bool)

(assert (=> b!4019528 (=> (not res!1635426) (not e!2493441))))

(assert (=> b!4019528 (= res!1635426 (< (size!32171 (_2!24213 (get!14131 lt!1427286))) (size!32171 lt!1427222)))))

(assert (= (and d!1189815 c!694571) b!4019522))

(assert (= (and d!1189815 (not c!694571)) b!4019527))

(assert (= (or b!4019522 b!4019527) bm!286570))

(assert (= (and d!1189815 (not res!1635423)) b!4019525))

(assert (= (and b!4019525 res!1635427) b!4019524))

(assert (= (and b!4019524 res!1635425) b!4019528))

(assert (= (and b!4019528 res!1635426) b!4019521))

(assert (= (and b!4019521 res!1635428) b!4019520))

(assert (= (and b!4019520 res!1635429) b!4019523))

(assert (= (and b!4019523 res!1635424) b!4019526))

(declare-fun m!4609193 () Bool)

(assert (=> b!4019523 m!4609193))

(declare-fun m!4609195 () Bool)

(assert (=> b!4019523 m!4609195))

(assert (=> b!4019523 m!4609195))

(declare-fun m!4609197 () Bool)

(assert (=> b!4019523 m!4609197))

(assert (=> b!4019523 m!4609197))

(declare-fun m!4609199 () Bool)

(assert (=> b!4019523 m!4609199))

(declare-fun m!4609201 () Bool)

(assert (=> bm!286570 m!4609201))

(assert (=> b!4019520 m!4609193))

(declare-fun m!4609203 () Bool)

(assert (=> b!4019520 m!4609203))

(assert (=> b!4019520 m!4609203))

(declare-fun m!4609205 () Bool)

(assert (=> b!4019520 m!4609205))

(assert (=> b!4019528 m!4609193))

(declare-fun m!4609207 () Bool)

(assert (=> b!4019528 m!4609207))

(declare-fun m!4609209 () Bool)

(assert (=> b!4019528 m!4609209))

(declare-fun m!4609211 () Bool)

(assert (=> b!4019525 m!4609211))

(assert (=> b!4019524 m!4609193))

(assert (=> b!4019524 m!4609195))

(assert (=> b!4019524 m!4609195))

(assert (=> b!4019524 m!4609197))

(declare-fun m!4609213 () Bool)

(assert (=> b!4019527 m!4609213))

(assert (=> b!4019521 m!4609193))

(assert (=> b!4019521 m!4609195))

(assert (=> b!4019521 m!4609195))

(assert (=> b!4019521 m!4609197))

(assert (=> b!4019521 m!4609197))

(declare-fun m!4609223 () Bool)

(assert (=> b!4019521 m!4609223))

(assert (=> b!4019526 m!4609193))

(declare-fun m!4609229 () Bool)

(assert (=> b!4019526 m!4609229))

(declare-fun m!4609233 () Bool)

(assert (=> d!1189815 m!4609233))

(declare-fun m!4609237 () Bool)

(assert (=> d!1189815 m!4609237))

(declare-fun m!4609239 () Bool)

(assert (=> d!1189815 m!4609239))

(declare-fun m!4609243 () Bool)

(assert (=> d!1189815 m!4609243))

(assert (=> b!4019371 d!1189815))

(declare-fun d!1189829 () Bool)

(assert (=> d!1189829 (= suffixResult!105 lt!1427187)))

(declare-fun lt!1427297 () Unit!62145)

(declare-fun choose!24306 (List!43154 List!43154 List!43154 List!43154 List!43154) Unit!62145)

(assert (=> d!1189829 (= lt!1427297 (choose!24306 lt!1427191 suffixResult!105 lt!1427191 lt!1427187 lt!1427217))))

(assert (=> d!1189829 (isPrefix!3947 lt!1427191 lt!1427217)))

(assert (=> d!1189829 (= (lemmaSamePrefixThenSameSuffix!2118 lt!1427191 suffixResult!105 lt!1427191 lt!1427187 lt!1427217) lt!1427297)))

(declare-fun bs!589732 () Bool)

(assert (= bs!589732 d!1189829))

(declare-fun m!4609277 () Bool)

(assert (=> bs!589732 m!4609277))

(assert (=> bs!589732 m!4609085))

(assert (=> b!4019371 d!1189829))

(declare-fun b!4019551 () Bool)

(declare-fun res!1635450 () Bool)

(declare-fun e!2493455 () Bool)

(assert (=> b!4019551 (=> (not res!1635450) (not e!2493455))))

(declare-fun head!8527 (List!43154) C!23716)

(assert (=> b!4019551 (= res!1635450 (= (head!8527 lt!1427191) (head!8527 lt!1427176)))))

(declare-fun b!4019553 () Bool)

(declare-fun e!2493456 () Bool)

(assert (=> b!4019553 (= e!2493456 (>= (size!32171 lt!1427176) (size!32171 lt!1427191)))))

(declare-fun d!1189835 () Bool)

(assert (=> d!1189835 e!2493456))

(declare-fun res!1635449 () Bool)

(assert (=> d!1189835 (=> res!1635449 e!2493456)))

(declare-fun lt!1427300 () Bool)

(assert (=> d!1189835 (= res!1635449 (not lt!1427300))))

(declare-fun e!2493457 () Bool)

(assert (=> d!1189835 (= lt!1427300 e!2493457)))

(declare-fun res!1635451 () Bool)

(assert (=> d!1189835 (=> res!1635451 e!2493457)))

(assert (=> d!1189835 (= res!1635451 ((_ is Nil!43030) lt!1427191))))

(assert (=> d!1189835 (= (isPrefix!3947 lt!1427191 lt!1427176) lt!1427300)))

(declare-fun b!4019550 () Bool)

(assert (=> b!4019550 (= e!2493457 e!2493455)))

(declare-fun res!1635452 () Bool)

(assert (=> b!4019550 (=> (not res!1635452) (not e!2493455))))

(assert (=> b!4019550 (= res!1635452 (not ((_ is Nil!43030) lt!1427176)))))

(declare-fun b!4019552 () Bool)

(declare-fun tail!6259 (List!43154) List!43154)

(assert (=> b!4019552 (= e!2493455 (isPrefix!3947 (tail!6259 lt!1427191) (tail!6259 lt!1427176)))))

(assert (= (and d!1189835 (not res!1635451)) b!4019550))

(assert (= (and b!4019550 res!1635452) b!4019551))

(assert (= (and b!4019551 res!1635450) b!4019552))

(assert (= (and d!1189835 (not res!1635449)) b!4019553))

(declare-fun m!4609279 () Bool)

(assert (=> b!4019551 m!4609279))

(declare-fun m!4609281 () Bool)

(assert (=> b!4019551 m!4609281))

(declare-fun m!4609283 () Bool)

(assert (=> b!4019553 m!4609283))

(assert (=> b!4019553 m!4609075))

(declare-fun m!4609285 () Bool)

(assert (=> b!4019552 m!4609285))

(declare-fun m!4609287 () Bool)

(assert (=> b!4019552 m!4609287))

(assert (=> b!4019552 m!4609285))

(assert (=> b!4019552 m!4609287))

(declare-fun m!4609289 () Bool)

(assert (=> b!4019552 m!4609289))

(assert (=> b!4019371 d!1189835))

(declare-fun d!1189837 () Bool)

(assert (=> d!1189837 (isPrefix!3947 lt!1427191 (++!11262 lt!1427191 lt!1427187))))

(declare-fun lt!1427306 () Unit!62145)

(declare-fun choose!24307 (List!43154 List!43154) Unit!62145)

(assert (=> d!1189837 (= lt!1427306 (choose!24307 lt!1427191 lt!1427187))))

(assert (=> d!1189837 (= (lemmaConcatTwoListThenFirstIsPrefix!2788 lt!1427191 lt!1427187) lt!1427306)))

(declare-fun bs!589734 () Bool)

(assert (= bs!589734 d!1189837))

(assert (=> bs!589734 m!4608967))

(assert (=> bs!589734 m!4608967))

(declare-fun m!4609295 () Bool)

(assert (=> bs!589734 m!4609295))

(declare-fun m!4609297 () Bool)

(assert (=> bs!589734 m!4609297))

(assert (=> b!4019371 d!1189837))

(declare-fun b!4019577 () Bool)

(declare-fun res!1635466 () Bool)

(declare-fun e!2493471 () Bool)

(assert (=> b!4019577 (=> (not res!1635466) (not e!2493471))))

(declare-fun lt!1427312 () List!43154)

(assert (=> b!4019577 (= res!1635466 (= (size!32171 lt!1427312) (+ (size!32171 prefix!494) (size!32171 lt!1427185))))))

(declare-fun b!4019575 () Bool)

(declare-fun e!2493470 () List!43154)

(assert (=> b!4019575 (= e!2493470 lt!1427185)))

(declare-fun d!1189843 () Bool)

(assert (=> d!1189843 e!2493471))

(declare-fun res!1635463 () Bool)

(assert (=> d!1189843 (=> (not res!1635463) (not e!2493471))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6526 (List!43154) (InoxSet C!23716))

(assert (=> d!1189843 (= res!1635463 (= (content!6526 lt!1427312) ((_ map or) (content!6526 prefix!494) (content!6526 lt!1427185))))))

(assert (=> d!1189843 (= lt!1427312 e!2493470)))

(declare-fun c!694575 () Bool)

(assert (=> d!1189843 (= c!694575 ((_ is Nil!43030) prefix!494))))

(assert (=> d!1189843 (= (++!11262 prefix!494 lt!1427185) lt!1427312)))

(declare-fun b!4019578 () Bool)

(assert (=> b!4019578 (= e!2493471 (or (not (= lt!1427185 Nil!43030)) (= lt!1427312 prefix!494)))))

(declare-fun b!4019576 () Bool)

(assert (=> b!4019576 (= e!2493470 (Cons!43030 (h!48450 prefix!494) (++!11262 (t!333487 prefix!494) lt!1427185)))))

(assert (= (and d!1189843 c!694575) b!4019575))

(assert (= (and d!1189843 (not c!694575)) b!4019576))

(assert (= (and d!1189843 res!1635463) b!4019577))

(assert (= (and b!4019577 res!1635466) b!4019578))

(declare-fun m!4609313 () Bool)

(assert (=> b!4019577 m!4609313))

(assert (=> b!4019577 m!4609077))

(declare-fun m!4609315 () Bool)

(assert (=> b!4019577 m!4609315))

(declare-fun m!4609317 () Bool)

(assert (=> d!1189843 m!4609317))

(declare-fun m!4609319 () Bool)

(assert (=> d!1189843 m!4609319))

(declare-fun m!4609321 () Bool)

(assert (=> d!1189843 m!4609321))

(declare-fun m!4609323 () Bool)

(assert (=> b!4019576 m!4609323))

(assert (=> b!4019373 d!1189843))

(declare-fun b!4019582 () Bool)

(declare-fun res!1635469 () Bool)

(declare-fun e!2493475 () Bool)

(assert (=> b!4019582 (=> (not res!1635469) (not e!2493475))))

(declare-fun lt!1427313 () List!43154)

(assert (=> b!4019582 (= res!1635469 (= (size!32171 lt!1427313) (+ (size!32171 lt!1427222) (size!32171 lt!1427213))))))

(declare-fun b!4019580 () Bool)

(declare-fun e!2493474 () List!43154)

(assert (=> b!4019580 (= e!2493474 lt!1427213)))

(declare-fun d!1189851 () Bool)

(assert (=> d!1189851 e!2493475))

(declare-fun res!1635468 () Bool)

(assert (=> d!1189851 (=> (not res!1635468) (not e!2493475))))

(assert (=> d!1189851 (= res!1635468 (= (content!6526 lt!1427313) ((_ map or) (content!6526 lt!1427222) (content!6526 lt!1427213))))))

(assert (=> d!1189851 (= lt!1427313 e!2493474)))

(declare-fun c!694576 () Bool)

(assert (=> d!1189851 (= c!694576 ((_ is Nil!43030) lt!1427222))))

(assert (=> d!1189851 (= (++!11262 lt!1427222 lt!1427213) lt!1427313)))

(declare-fun b!4019583 () Bool)

(assert (=> b!4019583 (= e!2493475 (or (not (= lt!1427213 Nil!43030)) (= lt!1427313 lt!1427222)))))

(declare-fun b!4019581 () Bool)

(assert (=> b!4019581 (= e!2493474 (Cons!43030 (h!48450 lt!1427222) (++!11262 (t!333487 lt!1427222) lt!1427213)))))

(assert (= (and d!1189851 c!694576) b!4019580))

(assert (= (and d!1189851 (not c!694576)) b!4019581))

(assert (= (and d!1189851 res!1635468) b!4019582))

(assert (= (and b!4019582 res!1635469) b!4019583))

(declare-fun m!4609335 () Bool)

(assert (=> b!4019582 m!4609335))

(assert (=> b!4019582 m!4609209))

(declare-fun m!4609337 () Bool)

(assert (=> b!4019582 m!4609337))

(declare-fun m!4609339 () Bool)

(assert (=> d!1189851 m!4609339))

(declare-fun m!4609341 () Bool)

(assert (=> d!1189851 m!4609341))

(declare-fun m!4609343 () Bool)

(assert (=> d!1189851 m!4609343))

(declare-fun m!4609345 () Bool)

(assert (=> b!4019581 m!4609345))

(assert (=> b!4019373 d!1189851))

(declare-fun d!1189857 () Bool)

(assert (=> d!1189857 (= (++!11262 (++!11262 prefix!494 newSuffix!27) lt!1427213) (++!11262 prefix!494 (++!11262 newSuffix!27 lt!1427213)))))

(declare-fun lt!1427323 () Unit!62145)

(declare-fun choose!24310 (List!43154 List!43154 List!43154) Unit!62145)

(assert (=> d!1189857 (= lt!1427323 (choose!24310 prefix!494 newSuffix!27 lt!1427213))))

(assert (=> d!1189857 (= (lemmaConcatAssociativity!2572 prefix!494 newSuffix!27 lt!1427213) lt!1427323)))

(declare-fun bs!589739 () Bool)

(assert (= bs!589739 d!1189857))

(assert (=> bs!589739 m!4609071))

(declare-fun m!4609365 () Bool)

(assert (=> bs!589739 m!4609365))

(declare-fun m!4609367 () Bool)

(assert (=> bs!589739 m!4609367))

(assert (=> bs!589739 m!4608963))

(declare-fun m!4609369 () Bool)

(assert (=> bs!589739 m!4609369))

(assert (=> bs!589739 m!4608963))

(assert (=> bs!589739 m!4609071))

(assert (=> b!4019373 d!1189857))

(declare-fun d!1189867 () Bool)

(assert (=> d!1189867 (not (matchR!5726 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) lt!1427191))))

(declare-fun lt!1427335 () Unit!62145)

(declare-fun choose!24311 (LexerInterface!6449 List!43156 Rule!13520 List!43154 List!43154 Rule!13520) Unit!62145)

(assert (=> d!1189867 (= lt!1427335 (choose!24311 thiss!21717 rules!2999 (rule!9912 token!484) lt!1427191 lt!1427217 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))

(assert (=> d!1189867 (isPrefix!3947 lt!1427191 lt!1427217)))

(assert (=> d!1189867 (= (lemmaMaxPrefNoSmallerRuleMatches!282 thiss!21717 rules!2999 (rule!9912 token!484) lt!1427191 lt!1427217 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) lt!1427335)))

(declare-fun bs!589744 () Bool)

(assert (= bs!589744 d!1189867))

(assert (=> bs!589744 m!4608915))

(declare-fun m!4609395 () Bool)

(assert (=> bs!589744 m!4609395))

(assert (=> bs!589744 m!4609085))

(assert (=> b!4019351 d!1189867))

(declare-fun b!4019695 () Bool)

(declare-fun e!2493544 () Bool)

(declare-fun e!2493542 () Bool)

(assert (=> b!4019695 (= e!2493544 e!2493542)))

(declare-fun res!1635529 () Bool)

(assert (=> b!4019695 (=> res!1635529 e!2493542)))

(declare-fun call!286578 () Bool)

(assert (=> b!4019695 (= res!1635529 call!286578)))

(declare-fun b!4019696 () Bool)

(declare-fun res!1635532 () Bool)

(declare-fun e!2493541 () Bool)

(assert (=> b!4019696 (=> (not res!1635532) (not e!2493541))))

(declare-fun isEmpty!25696 (List!43154) Bool)

(assert (=> b!4019696 (= res!1635532 (isEmpty!25696 (tail!6259 lt!1427191)))))

(declare-fun b!4019697 () Bool)

(declare-fun e!2493543 () Bool)

(declare-fun lt!1427356 () Bool)

(assert (=> b!4019697 (= e!2493543 (not lt!1427356))))

(declare-fun b!4019698 () Bool)

(declare-fun res!1635527 () Bool)

(declare-fun e!2493540 () Bool)

(assert (=> b!4019698 (=> res!1635527 e!2493540)))

(assert (=> b!4019698 (= res!1635527 (not ((_ is ElementMatch!11765) (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))))

(assert (=> b!4019698 (= e!2493543 e!2493540)))

(declare-fun b!4019700 () Bool)

(declare-fun res!1635526 () Bool)

(assert (=> b!4019700 (=> res!1635526 e!2493542)))

(assert (=> b!4019700 (= res!1635526 (not (isEmpty!25696 (tail!6259 lt!1427191))))))

(declare-fun b!4019701 () Bool)

(declare-fun res!1635530 () Bool)

(assert (=> b!4019701 (=> (not res!1635530) (not e!2493541))))

(assert (=> b!4019701 (= res!1635530 (not call!286578))))

(declare-fun b!4019702 () Bool)

(declare-fun res!1635531 () Bool)

(assert (=> b!4019702 (=> res!1635531 e!2493540)))

(assert (=> b!4019702 (= res!1635531 e!2493541)))

(declare-fun res!1635525 () Bool)

(assert (=> b!4019702 (=> (not res!1635525) (not e!2493541))))

(assert (=> b!4019702 (= res!1635525 lt!1427356)))

(declare-fun b!4019703 () Bool)

(assert (=> b!4019703 (= e!2493542 (not (= (head!8527 lt!1427191) (c!694547 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))))

(declare-fun b!4019704 () Bool)

(declare-fun e!2493545 () Bool)

(declare-fun nullable!4126 (Regex!11765) Bool)

(assert (=> b!4019704 (= e!2493545 (nullable!4126 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(declare-fun b!4019705 () Bool)

(declare-fun e!2493546 () Bool)

(assert (=> b!4019705 (= e!2493546 e!2493543)))

(declare-fun c!694607 () Bool)

(assert (=> b!4019705 (= c!694607 ((_ is EmptyLang!11765) (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(declare-fun b!4019706 () Bool)

(assert (=> b!4019706 (= e!2493540 e!2493544)))

(declare-fun res!1635528 () Bool)

(assert (=> b!4019706 (=> (not res!1635528) (not e!2493544))))

(assert (=> b!4019706 (= res!1635528 (not lt!1427356))))

(declare-fun b!4019707 () Bool)

(declare-fun derivativeStep!3535 (Regex!11765 C!23716) Regex!11765)

(assert (=> b!4019707 (= e!2493545 (matchR!5726 (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (head!8527 lt!1427191)) (tail!6259 lt!1427191)))))

(declare-fun bm!286573 () Bool)

(assert (=> bm!286573 (= call!286578 (isEmpty!25696 lt!1427191))))

(declare-fun b!4019708 () Bool)

(assert (=> b!4019708 (= e!2493546 (= lt!1427356 call!286578))))

(declare-fun b!4019699 () Bool)

(assert (=> b!4019699 (= e!2493541 (= (head!8527 lt!1427191) (c!694547 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))))

(declare-fun d!1189883 () Bool)

(assert (=> d!1189883 e!2493546))

(declare-fun c!694605 () Bool)

(assert (=> d!1189883 (= c!694605 ((_ is EmptyExpr!11765) (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(assert (=> d!1189883 (= lt!1427356 e!2493545)))

(declare-fun c!694606 () Bool)

(assert (=> d!1189883 (= c!694606 (isEmpty!25696 lt!1427191))))

(declare-fun validRegex!5326 (Regex!11765) Bool)

(assert (=> d!1189883 (validRegex!5326 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))

(assert (=> d!1189883 (= (matchR!5726 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) lt!1427191) lt!1427356)))

(assert (= (and d!1189883 c!694606) b!4019704))

(assert (= (and d!1189883 (not c!694606)) b!4019707))

(assert (= (and d!1189883 c!694605) b!4019708))

(assert (= (and d!1189883 (not c!694605)) b!4019705))

(assert (= (and b!4019705 c!694607) b!4019697))

(assert (= (and b!4019705 (not c!694607)) b!4019698))

(assert (= (and b!4019698 (not res!1635527)) b!4019702))

(assert (= (and b!4019702 res!1635525) b!4019701))

(assert (= (and b!4019701 res!1635530) b!4019696))

(assert (= (and b!4019696 res!1635532) b!4019699))

(assert (= (and b!4019702 (not res!1635531)) b!4019706))

(assert (= (and b!4019706 res!1635528) b!4019695))

(assert (= (and b!4019695 (not res!1635529)) b!4019700))

(assert (= (and b!4019700 (not res!1635526)) b!4019703))

(assert (= (or b!4019708 b!4019695 b!4019701) bm!286573))

(assert (=> b!4019703 m!4609279))

(assert (=> b!4019699 m!4609279))

(assert (=> b!4019696 m!4609285))

(assert (=> b!4019696 m!4609285))

(declare-fun m!4609499 () Bool)

(assert (=> b!4019696 m!4609499))

(declare-fun m!4609501 () Bool)

(assert (=> b!4019704 m!4609501))

(declare-fun m!4609503 () Bool)

(assert (=> bm!286573 m!4609503))

(assert (=> b!4019700 m!4609285))

(assert (=> b!4019700 m!4609285))

(assert (=> b!4019700 m!4609499))

(assert (=> d!1189883 m!4609503))

(declare-fun m!4609505 () Bool)

(assert (=> d!1189883 m!4609505))

(assert (=> b!4019707 m!4609279))

(assert (=> b!4019707 m!4609279))

(declare-fun m!4609507 () Bool)

(assert (=> b!4019707 m!4609507))

(assert (=> b!4019707 m!4609285))

(assert (=> b!4019707 m!4609507))

(assert (=> b!4019707 m!4609285))

(declare-fun m!4609509 () Bool)

(assert (=> b!4019707 m!4609509))

(assert (=> b!4019351 d!1189883))

(declare-fun b!4019710 () Bool)

(declare-fun res!1635534 () Bool)

(declare-fun e!2493548 () Bool)

(assert (=> b!4019710 (=> (not res!1635534) (not e!2493548))))

(assert (=> b!4019710 (= res!1635534 (= (head!8527 lt!1427181) (head!8527 lt!1427217)))))

(declare-fun b!4019712 () Bool)

(declare-fun e!2493549 () Bool)

(assert (=> b!4019712 (= e!2493549 (>= (size!32171 lt!1427217) (size!32171 lt!1427181)))))

(declare-fun d!1189921 () Bool)

(assert (=> d!1189921 e!2493549))

(declare-fun res!1635533 () Bool)

(assert (=> d!1189921 (=> res!1635533 e!2493549)))

(declare-fun lt!1427358 () Bool)

(assert (=> d!1189921 (= res!1635533 (not lt!1427358))))

(declare-fun e!2493550 () Bool)

(assert (=> d!1189921 (= lt!1427358 e!2493550)))

(declare-fun res!1635535 () Bool)

(assert (=> d!1189921 (=> res!1635535 e!2493550)))

(assert (=> d!1189921 (= res!1635535 ((_ is Nil!43030) lt!1427181))))

(assert (=> d!1189921 (= (isPrefix!3947 lt!1427181 lt!1427217) lt!1427358)))

(declare-fun b!4019709 () Bool)

(assert (=> b!4019709 (= e!2493550 e!2493548)))

(declare-fun res!1635536 () Bool)

(assert (=> b!4019709 (=> (not res!1635536) (not e!2493548))))

(assert (=> b!4019709 (= res!1635536 (not ((_ is Nil!43030) lt!1427217)))))

(declare-fun b!4019711 () Bool)

(assert (=> b!4019711 (= e!2493548 (isPrefix!3947 (tail!6259 lt!1427181) (tail!6259 lt!1427217)))))

(assert (= (and d!1189921 (not res!1635535)) b!4019709))

(assert (= (and b!4019709 res!1635536) b!4019710))

(assert (= (and b!4019710 res!1635534) b!4019711))

(assert (= (and d!1189921 (not res!1635533)) b!4019712))

(declare-fun m!4609511 () Bool)

(assert (=> b!4019710 m!4609511))

(declare-fun m!4609513 () Bool)

(assert (=> b!4019710 m!4609513))

(declare-fun m!4609515 () Bool)

(assert (=> b!4019712 m!4609515))

(assert (=> b!4019712 m!4609027))

(declare-fun m!4609517 () Bool)

(assert (=> b!4019711 m!4609517))

(declare-fun m!4609519 () Bool)

(assert (=> b!4019711 m!4609519))

(assert (=> b!4019711 m!4609517))

(assert (=> b!4019711 m!4609519))

(declare-fun m!4609521 () Bool)

(assert (=> b!4019711 m!4609521))

(assert (=> b!4019372 d!1189921))

(declare-fun b!4019714 () Bool)

(declare-fun res!1635538 () Bool)

(declare-fun e!2493551 () Bool)

(assert (=> b!4019714 (=> (not res!1635538) (not e!2493551))))

(assert (=> b!4019714 (= res!1635538 (= (head!8527 lt!1427181) (head!8527 lt!1427194)))))

(declare-fun b!4019716 () Bool)

(declare-fun e!2493552 () Bool)

(assert (=> b!4019716 (= e!2493552 (>= (size!32171 lt!1427194) (size!32171 lt!1427181)))))

(declare-fun d!1189923 () Bool)

(assert (=> d!1189923 e!2493552))

(declare-fun res!1635537 () Bool)

(assert (=> d!1189923 (=> res!1635537 e!2493552)))

(declare-fun lt!1427359 () Bool)

(assert (=> d!1189923 (= res!1635537 (not lt!1427359))))

(declare-fun e!2493553 () Bool)

(assert (=> d!1189923 (= lt!1427359 e!2493553)))

(declare-fun res!1635539 () Bool)

(assert (=> d!1189923 (=> res!1635539 e!2493553)))

(assert (=> d!1189923 (= res!1635539 ((_ is Nil!43030) lt!1427181))))

(assert (=> d!1189923 (= (isPrefix!3947 lt!1427181 lt!1427194) lt!1427359)))

(declare-fun b!4019713 () Bool)

(assert (=> b!4019713 (= e!2493553 e!2493551)))

(declare-fun res!1635540 () Bool)

(assert (=> b!4019713 (=> (not res!1635540) (not e!2493551))))

(assert (=> b!4019713 (= res!1635540 (not ((_ is Nil!43030) lt!1427194)))))

(declare-fun b!4019715 () Bool)

(assert (=> b!4019715 (= e!2493551 (isPrefix!3947 (tail!6259 lt!1427181) (tail!6259 lt!1427194)))))

(assert (= (and d!1189923 (not res!1635539)) b!4019713))

(assert (= (and b!4019713 res!1635540) b!4019714))

(assert (= (and b!4019714 res!1635538) b!4019715))

(assert (= (and d!1189923 (not res!1635537)) b!4019716))

(assert (=> b!4019714 m!4609511))

(declare-fun m!4609523 () Bool)

(assert (=> b!4019714 m!4609523))

(declare-fun m!4609525 () Bool)

(assert (=> b!4019716 m!4609525))

(assert (=> b!4019716 m!4609027))

(assert (=> b!4019715 m!4609517))

(declare-fun m!4609527 () Bool)

(assert (=> b!4019715 m!4609527))

(assert (=> b!4019715 m!4609517))

(assert (=> b!4019715 m!4609527))

(declare-fun m!4609529 () Bool)

(assert (=> b!4019715 m!4609529))

(assert (=> b!4019372 d!1189923))

(declare-fun d!1189925 () Bool)

(assert (=> d!1189925 (isPrefix!3947 lt!1427181 (++!11262 lt!1427222 lt!1427213))))

(declare-fun lt!1427370 () Unit!62145)

(declare-fun choose!24312 (List!43154 List!43154 List!43154) Unit!62145)

(assert (=> d!1189925 (= lt!1427370 (choose!24312 lt!1427181 lt!1427222 lt!1427213))))

(assert (=> d!1189925 (isPrefix!3947 lt!1427181 lt!1427222)))

(assert (=> d!1189925 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!760 lt!1427181 lt!1427222 lt!1427213) lt!1427370)))

(declare-fun bs!589752 () Bool)

(assert (= bs!589752 d!1189925))

(assert (=> bs!589752 m!4608951))

(assert (=> bs!589752 m!4608951))

(declare-fun m!4609539 () Bool)

(assert (=> bs!589752 m!4609539))

(declare-fun m!4609541 () Bool)

(assert (=> bs!589752 m!4609541))

(assert (=> bs!589752 m!4608947))

(assert (=> b!4019372 d!1189925))

(declare-fun b!4019728 () Bool)

(declare-fun res!1635549 () Bool)

(declare-fun e!2493559 () Bool)

(assert (=> b!4019728 (=> (not res!1635549) (not e!2493559))))

(assert (=> b!4019728 (= res!1635549 (= (head!8527 lt!1427181) (head!8527 lt!1427186)))))

(declare-fun b!4019730 () Bool)

(declare-fun e!2493560 () Bool)

(assert (=> b!4019730 (= e!2493560 (>= (size!32171 lt!1427186) (size!32171 lt!1427181)))))

(declare-fun d!1189929 () Bool)

(assert (=> d!1189929 e!2493560))

(declare-fun res!1635548 () Bool)

(assert (=> d!1189929 (=> res!1635548 e!2493560)))

(declare-fun lt!1427371 () Bool)

(assert (=> d!1189929 (= res!1635548 (not lt!1427371))))

(declare-fun e!2493561 () Bool)

(assert (=> d!1189929 (= lt!1427371 e!2493561)))

(declare-fun res!1635550 () Bool)

(assert (=> d!1189929 (=> res!1635550 e!2493561)))

(assert (=> d!1189929 (= res!1635550 ((_ is Nil!43030) lt!1427181))))

(assert (=> d!1189929 (= (isPrefix!3947 lt!1427181 lt!1427186) lt!1427371)))

(declare-fun b!4019727 () Bool)

(assert (=> b!4019727 (= e!2493561 e!2493559)))

(declare-fun res!1635551 () Bool)

(assert (=> b!4019727 (=> (not res!1635551) (not e!2493559))))

(assert (=> b!4019727 (= res!1635551 (not ((_ is Nil!43030) lt!1427186)))))

(declare-fun b!4019729 () Bool)

(assert (=> b!4019729 (= e!2493559 (isPrefix!3947 (tail!6259 lt!1427181) (tail!6259 lt!1427186)))))

(assert (= (and d!1189929 (not res!1635550)) b!4019727))

(assert (= (and b!4019727 res!1635551) b!4019728))

(assert (= (and b!4019728 res!1635549) b!4019729))

(assert (= (and d!1189929 (not res!1635548)) b!4019730))

(assert (=> b!4019728 m!4609511))

(declare-fun m!4609543 () Bool)

(assert (=> b!4019728 m!4609543))

(declare-fun m!4609545 () Bool)

(assert (=> b!4019730 m!4609545))

(assert (=> b!4019730 m!4609027))

(assert (=> b!4019729 m!4609517))

(declare-fun m!4609547 () Bool)

(assert (=> b!4019729 m!4609547))

(assert (=> b!4019729 m!4609517))

(assert (=> b!4019729 m!4609547))

(declare-fun m!4609549 () Bool)

(assert (=> b!4019729 m!4609549))

(assert (=> b!4019374 d!1189929))

(declare-fun d!1189931 () Bool)

(declare-fun fromListB!2324 (List!43154) BalanceConc!25736)

(assert (=> d!1189931 (= (seqFromList!5085 lt!1427181) (fromListB!2324 lt!1427181))))

(declare-fun bs!589754 () Bool)

(assert (= bs!589754 d!1189931))

(declare-fun m!4609593 () Bool)

(assert (=> bs!589754 m!4609593))

(assert (=> b!4019374 d!1189931))

(declare-fun d!1189937 () Bool)

(declare-fun dynLambda!18239 (Int BalanceConc!25736) TokenValue!7090)

(assert (=> d!1189937 (= (apply!10057 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (seqFromList!5085 lt!1427181)) (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (seqFromList!5085 lt!1427181)))))

(declare-fun b_lambda!117263 () Bool)

(assert (=> (not b_lambda!117263) (not d!1189937)))

(declare-fun t!333507 () Bool)

(declare-fun tb!241601 () Bool)

(assert (=> (and b!4019334 (= (toValue!9368 (transformation!6860 (h!48452 rules!2999))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) t!333507) tb!241601))

(declare-fun result!292822 () Bool)

(assert (=> tb!241601 (= result!292822 (inv!21 (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (seqFromList!5085 lt!1427181))))))

(declare-fun m!4609609 () Bool)

(assert (=> tb!241601 m!4609609))

(assert (=> d!1189937 t!333507))

(declare-fun b_and!308783 () Bool)

(assert (= b_and!308759 (and (=> t!333507 result!292822) b_and!308783)))

(declare-fun t!333509 () Bool)

(declare-fun tb!241603 () Bool)

(assert (=> (and b!4019363 (= (toValue!9368 (transformation!6860 (rule!9912 token!484))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) t!333509) tb!241603))

(declare-fun result!292826 () Bool)

(assert (= result!292826 result!292822))

(assert (=> d!1189937 t!333509))

(declare-fun b_and!308785 () Bool)

(assert (= b_and!308763 (and (=> t!333509 result!292826) b_and!308785)))

(assert (=> d!1189937 m!4609021))

(declare-fun m!4609611 () Bool)

(assert (=> d!1189937 m!4609611))

(assert (=> b!4019374 d!1189937))

(declare-fun b!4019740 () Bool)

(declare-fun res!1635556 () Bool)

(declare-fun e!2493569 () Bool)

(assert (=> b!4019740 (=> (not res!1635556) (not e!2493569))))

(declare-fun lt!1427373 () List!43154)

(assert (=> b!4019740 (= res!1635556 (= (size!32171 lt!1427373) (+ (size!32171 lt!1427181) (size!32171 newSuffixResult!27))))))

(declare-fun b!4019738 () Bool)

(declare-fun e!2493568 () List!43154)

(assert (=> b!4019738 (= e!2493568 newSuffixResult!27)))

(declare-fun d!1189943 () Bool)

(assert (=> d!1189943 e!2493569))

(declare-fun res!1635555 () Bool)

(assert (=> d!1189943 (=> (not res!1635555) (not e!2493569))))

(assert (=> d!1189943 (= res!1635555 (= (content!6526 lt!1427373) ((_ map or) (content!6526 lt!1427181) (content!6526 newSuffixResult!27))))))

(assert (=> d!1189943 (= lt!1427373 e!2493568)))

(declare-fun c!694610 () Bool)

(assert (=> d!1189943 (= c!694610 ((_ is Nil!43030) lt!1427181))))

(assert (=> d!1189943 (= (++!11262 lt!1427181 newSuffixResult!27) lt!1427373)))

(declare-fun b!4019741 () Bool)

(assert (=> b!4019741 (= e!2493569 (or (not (= newSuffixResult!27 Nil!43030)) (= lt!1427373 lt!1427181)))))

(declare-fun b!4019739 () Bool)

(assert (=> b!4019739 (= e!2493568 (Cons!43030 (h!48450 lt!1427181) (++!11262 (t!333487 lt!1427181) newSuffixResult!27)))))

(assert (= (and d!1189943 c!694610) b!4019738))

(assert (= (and d!1189943 (not c!694610)) b!4019739))

(assert (= (and d!1189943 res!1635555) b!4019740))

(assert (= (and b!4019740 res!1635556) b!4019741))

(declare-fun m!4609615 () Bool)

(assert (=> b!4019740 m!4609615))

(assert (=> b!4019740 m!4609027))

(declare-fun m!4609617 () Bool)

(assert (=> b!4019740 m!4609617))

(declare-fun m!4609619 () Bool)

(assert (=> d!1189943 m!4609619))

(declare-fun m!4609621 () Bool)

(assert (=> d!1189943 m!4609621))

(declare-fun m!4609623 () Bool)

(assert (=> d!1189943 m!4609623))

(declare-fun m!4609625 () Bool)

(assert (=> b!4019739 m!4609625))

(assert (=> b!4019374 d!1189943))

(declare-fun b!4019747 () Bool)

(declare-fun res!1635562 () Bool)

(declare-fun e!2493573 () Bool)

(assert (=> b!4019747 (=> (not res!1635562) (not e!2493573))))

(assert (=> b!4019747 (= res!1635562 (= (head!8527 lt!1427181) (head!8527 (++!11262 lt!1427181 newSuffixResult!27))))))

(declare-fun b!4019749 () Bool)

(declare-fun e!2493574 () Bool)

(assert (=> b!4019749 (= e!2493574 (>= (size!32171 (++!11262 lt!1427181 newSuffixResult!27)) (size!32171 lt!1427181)))))

(declare-fun d!1189947 () Bool)

(assert (=> d!1189947 e!2493574))

(declare-fun res!1635561 () Bool)

(assert (=> d!1189947 (=> res!1635561 e!2493574)))

(declare-fun lt!1427375 () Bool)

(assert (=> d!1189947 (= res!1635561 (not lt!1427375))))

(declare-fun e!2493575 () Bool)

(assert (=> d!1189947 (= lt!1427375 e!2493575)))

(declare-fun res!1635563 () Bool)

(assert (=> d!1189947 (=> res!1635563 e!2493575)))

(assert (=> d!1189947 (= res!1635563 ((_ is Nil!43030) lt!1427181))))

(assert (=> d!1189947 (= (isPrefix!3947 lt!1427181 (++!11262 lt!1427181 newSuffixResult!27)) lt!1427375)))

(declare-fun b!4019746 () Bool)

(assert (=> b!4019746 (= e!2493575 e!2493573)))

(declare-fun res!1635564 () Bool)

(assert (=> b!4019746 (=> (not res!1635564) (not e!2493573))))

(assert (=> b!4019746 (= res!1635564 (not ((_ is Nil!43030) (++!11262 lt!1427181 newSuffixResult!27))))))

(declare-fun b!4019748 () Bool)

(assert (=> b!4019748 (= e!2493573 (isPrefix!3947 (tail!6259 lt!1427181) (tail!6259 (++!11262 lt!1427181 newSuffixResult!27))))))

(assert (= (and d!1189947 (not res!1635563)) b!4019746))

(assert (= (and b!4019746 res!1635564) b!4019747))

(assert (= (and b!4019747 res!1635562) b!4019748))

(assert (= (and d!1189947 (not res!1635561)) b!4019749))

(assert (=> b!4019747 m!4609511))

(assert (=> b!4019747 m!4609015))

(declare-fun m!4609635 () Bool)

(assert (=> b!4019747 m!4609635))

(assert (=> b!4019749 m!4609015))

(declare-fun m!4609637 () Bool)

(assert (=> b!4019749 m!4609637))

(assert (=> b!4019749 m!4609027))

(assert (=> b!4019748 m!4609517))

(assert (=> b!4019748 m!4609015))

(declare-fun m!4609639 () Bool)

(assert (=> b!4019748 m!4609639))

(assert (=> b!4019748 m!4609517))

(assert (=> b!4019748 m!4609639))

(declare-fun m!4609641 () Bool)

(assert (=> b!4019748 m!4609641))

(assert (=> b!4019374 d!1189947))

(declare-fun d!1189953 () Bool)

(assert (=> d!1189953 (= (size!32172 token!484) (size!32171 (originalCharacters!7460 token!484)))))

(declare-fun Unit!62155 () Unit!62145)

(assert (=> d!1189953 (= (lemmaCharactersSize!1419 token!484) Unit!62155)))

(declare-fun bs!589757 () Bool)

(assert (= bs!589757 d!1189953))

(assert (=> bs!589757 m!4608899))

(assert (=> b!4019374 d!1189953))

(declare-fun d!1189963 () Bool)

(assert (=> d!1189963 (isPrefix!3947 lt!1427181 (++!11262 lt!1427181 newSuffixResult!27))))

(declare-fun lt!1427378 () Unit!62145)

(assert (=> d!1189963 (= lt!1427378 (choose!24307 lt!1427181 newSuffixResult!27))))

(assert (=> d!1189963 (= (lemmaConcatTwoListThenFirstIsPrefix!2788 lt!1427181 newSuffixResult!27) lt!1427378)))

(declare-fun bs!589758 () Bool)

(assert (= bs!589758 d!1189963))

(assert (=> bs!589758 m!4609015))

(assert (=> bs!589758 m!4609015))

(assert (=> bs!589758 m!4609017))

(declare-fun m!4609657 () Bool)

(assert (=> bs!589758 m!4609657))

(assert (=> b!4019374 d!1189963))

(declare-fun d!1189967 () Bool)

(declare-fun lt!1427381 () Int)

(assert (=> d!1189967 (>= lt!1427381 0)))

(declare-fun e!2493583 () Int)

(assert (=> d!1189967 (= lt!1427381 e!2493583)))

(declare-fun c!694615 () Bool)

(assert (=> d!1189967 (= c!694615 ((_ is Nil!43030) lt!1427181))))

(assert (=> d!1189967 (= (size!32171 lt!1427181) lt!1427381)))

(declare-fun b!4019763 () Bool)

(assert (=> b!4019763 (= e!2493583 0)))

(declare-fun b!4019764 () Bool)

(assert (=> b!4019764 (= e!2493583 (+ 1 (size!32171 (t!333487 lt!1427181))))))

(assert (= (and d!1189967 c!694615) b!4019763))

(assert (= (and d!1189967 (not c!694615)) b!4019764))

(declare-fun m!4609659 () Bool)

(assert (=> b!4019764 m!4609659))

(assert (=> b!4019374 d!1189967))

(declare-fun d!1189969 () Bool)

(declare-fun e!2493586 () Bool)

(assert (=> d!1189969 e!2493586))

(declare-fun res!1635572 () Bool)

(assert (=> d!1189969 (=> (not res!1635572) (not e!2493586))))

(declare-fun semiInverseModEq!2933 (Int Int) Bool)

(assert (=> d!1189969 (= res!1635572 (semiInverseModEq!2933 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))))

(declare-fun Unit!62156 () Unit!62145)

(assert (=> d!1189969 (= (lemmaInv!1075 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) Unit!62156)))

(declare-fun b!4019767 () Bool)

(declare-fun equivClasses!2832 (Int Int) Bool)

(assert (=> b!4019767 (= e!2493586 (equivClasses!2832 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))))

(assert (= (and d!1189969 res!1635572) b!4019767))

(declare-fun m!4609661 () Bool)

(assert (=> d!1189969 m!4609661))

(declare-fun m!4609663 () Bool)

(assert (=> b!4019767 m!4609663))

(assert (=> b!4019374 d!1189969))

(declare-fun b!4019933 () Bool)

(declare-fun res!1635659 () Bool)

(declare-fun e!2493673 () Bool)

(assert (=> b!4019933 (=> (not res!1635659) (not e!2493673))))

(declare-fun lt!1427443 () Option!9274)

(assert (=> b!4019933 (= res!1635659 (= (value!216144 (_1!24213 (get!14131 lt!1427443))) (apply!10057 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427443)))) (seqFromList!5085 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427443)))))))))

(declare-fun b!4019934 () Bool)

(declare-fun e!2493675 () Bool)

(assert (=> b!4019934 (= e!2493675 e!2493673)))

(declare-fun res!1635657 () Bool)

(assert (=> b!4019934 (=> (not res!1635657) (not e!2493673))))

(assert (=> b!4019934 (= res!1635657 (matchR!5726 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427443))))))))

(declare-fun b!4019935 () Bool)

(declare-fun e!2493672 () Option!9274)

(declare-datatypes ((tuple2!42162 0))(
  ( (tuple2!42163 (_1!24215 List!43154) (_2!24215 List!43154)) )
))
(declare-fun lt!1427444 () tuple2!42162)

(declare-fun size!32174 (BalanceConc!25736) Int)

(assert (=> b!4019935 (= e!2493672 (Some!9273 (tuple2!42159 (Token!12859 (apply!10057 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (seqFromList!5085 (_1!24215 lt!1427444))) (rule!9912 (_1!24213 (v!39647 lt!1427206))) (size!32174 (seqFromList!5085 (_1!24215 lt!1427444))) (_1!24215 lt!1427444)) (_2!24215 lt!1427444))))))

(declare-fun lt!1427445 () Unit!62145)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1340 (Regex!11765 List!43154) Unit!62145)

(assert (=> b!4019935 (= lt!1427445 (longestMatchIsAcceptedByMatchOrIsEmpty!1340 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) lt!1427222))))

(declare-fun res!1635658 () Bool)

(declare-fun findLongestMatchInner!1367 (Regex!11765 List!43154 Int List!43154 List!43154 Int) tuple2!42162)

(assert (=> b!4019935 (= res!1635658 (isEmpty!25696 (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) Nil!43030 (size!32171 Nil!43030) lt!1427222 lt!1427222 (size!32171 lt!1427222)))))))

(declare-fun e!2493674 () Bool)

(assert (=> b!4019935 (=> res!1635658 e!2493674)))

(assert (=> b!4019935 e!2493674))

(declare-fun lt!1427442 () Unit!62145)

(assert (=> b!4019935 (= lt!1427442 lt!1427445)))

(declare-fun lt!1427446 () Unit!62145)

(declare-fun lemmaSemiInverse!1887 (TokenValueInjection!13608 BalanceConc!25736) Unit!62145)

(assert (=> b!4019935 (= lt!1427446 (lemmaSemiInverse!1887 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (seqFromList!5085 (_1!24215 lt!1427444))))))

(declare-fun b!4019936 () Bool)

(declare-fun res!1635660 () Bool)

(assert (=> b!4019936 (=> (not res!1635660) (not e!2493673))))

(assert (=> b!4019936 (= res!1635660 (= (rule!9912 (_1!24213 (get!14131 lt!1427443))) (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))

(declare-fun b!4019937 () Bool)

(declare-fun res!1635661 () Bool)

(assert (=> b!4019937 (=> (not res!1635661) (not e!2493673))))

(assert (=> b!4019937 (= res!1635661 (= (++!11262 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427443)))) (_2!24213 (get!14131 lt!1427443))) lt!1427222))))

(declare-fun b!4019938 () Bool)

(assert (=> b!4019938 (= e!2493674 (matchR!5726 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) Nil!43030 (size!32171 Nil!43030) lt!1427222 lt!1427222 (size!32171 lt!1427222)))))))

(declare-fun b!4019939 () Bool)

(assert (=> b!4019939 (= e!2493672 None!9273)))

(declare-fun b!4019941 () Bool)

(assert (=> b!4019941 (= e!2493673 (= (size!32172 (_1!24213 (get!14131 lt!1427443))) (size!32171 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427443))))))))

(declare-fun b!4019940 () Bool)

(declare-fun res!1635662 () Bool)

(assert (=> b!4019940 (=> (not res!1635662) (not e!2493673))))

(assert (=> b!4019940 (= res!1635662 (< (size!32171 (_2!24213 (get!14131 lt!1427443))) (size!32171 lt!1427222)))))

(declare-fun d!1189971 () Bool)

(assert (=> d!1189971 e!2493675))

(declare-fun res!1635656 () Bool)

(assert (=> d!1189971 (=> res!1635656 e!2493675)))

(assert (=> d!1189971 (= res!1635656 (isEmpty!25695 lt!1427443))))

(assert (=> d!1189971 (= lt!1427443 e!2493672)))

(declare-fun c!694638 () Bool)

(assert (=> d!1189971 (= c!694638 (isEmpty!25696 (_1!24215 lt!1427444)))))

(declare-fun findLongestMatch!1280 (Regex!11765 List!43154) tuple2!42162)

(assert (=> d!1189971 (= lt!1427444 (findLongestMatch!1280 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) lt!1427222))))

(assert (=> d!1189971 (ruleValid!2792 thiss!21717 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))

(assert (=> d!1189971 (= (maxPrefixOneRule!2767 thiss!21717 (rule!9912 (_1!24213 (v!39647 lt!1427206))) lt!1427222) lt!1427443)))

(assert (= (and d!1189971 c!694638) b!4019939))

(assert (= (and d!1189971 (not c!694638)) b!4019935))

(assert (= (and b!4019935 (not res!1635658)) b!4019938))

(assert (= (and d!1189971 (not res!1635656)) b!4019934))

(assert (= (and b!4019934 res!1635657) b!4019937))

(assert (= (and b!4019937 res!1635661) b!4019940))

(assert (= (and b!4019940 res!1635662) b!4019936))

(assert (= (and b!4019936 res!1635660) b!4019933))

(assert (= (and b!4019933 res!1635659) b!4019941))

(declare-fun m!4609847 () Bool)

(assert (=> b!4019941 m!4609847))

(declare-fun m!4609849 () Bool)

(assert (=> b!4019941 m!4609849))

(assert (=> b!4019934 m!4609847))

(declare-fun m!4609851 () Bool)

(assert (=> b!4019934 m!4609851))

(assert (=> b!4019934 m!4609851))

(declare-fun m!4609853 () Bool)

(assert (=> b!4019934 m!4609853))

(assert (=> b!4019934 m!4609853))

(declare-fun m!4609855 () Bool)

(assert (=> b!4019934 m!4609855))

(assert (=> b!4019940 m!4609847))

(declare-fun m!4609857 () Bool)

(assert (=> b!4019940 m!4609857))

(assert (=> b!4019940 m!4609209))

(assert (=> b!4019937 m!4609847))

(assert (=> b!4019937 m!4609851))

(assert (=> b!4019937 m!4609851))

(assert (=> b!4019937 m!4609853))

(assert (=> b!4019937 m!4609853))

(declare-fun m!4609859 () Bool)

(assert (=> b!4019937 m!4609859))

(declare-fun m!4609861 () Bool)

(assert (=> d!1189971 m!4609861))

(declare-fun m!4609863 () Bool)

(assert (=> d!1189971 m!4609863))

(declare-fun m!4609865 () Bool)

(assert (=> d!1189971 m!4609865))

(assert (=> d!1189971 m!4609005))

(declare-fun m!4609867 () Bool)

(assert (=> b!4019935 m!4609867))

(declare-fun m!4609869 () Bool)

(assert (=> b!4019935 m!4609869))

(declare-fun m!4609871 () Bool)

(assert (=> b!4019935 m!4609871))

(assert (=> b!4019935 m!4609869))

(assert (=> b!4019935 m!4609869))

(declare-fun m!4609873 () Bool)

(assert (=> b!4019935 m!4609873))

(declare-fun m!4609875 () Bool)

(assert (=> b!4019935 m!4609875))

(assert (=> b!4019935 m!4609209))

(assert (=> b!4019935 m!4609869))

(declare-fun m!4609877 () Bool)

(assert (=> b!4019935 m!4609877))

(declare-fun m!4609879 () Bool)

(assert (=> b!4019935 m!4609879))

(assert (=> b!4019935 m!4609879))

(assert (=> b!4019935 m!4609209))

(declare-fun m!4609881 () Bool)

(assert (=> b!4019935 m!4609881))

(assert (=> b!4019933 m!4609847))

(declare-fun m!4609883 () Bool)

(assert (=> b!4019933 m!4609883))

(assert (=> b!4019933 m!4609883))

(declare-fun m!4609885 () Bool)

(assert (=> b!4019933 m!4609885))

(assert (=> b!4019938 m!4609879))

(assert (=> b!4019938 m!4609209))

(assert (=> b!4019938 m!4609879))

(assert (=> b!4019938 m!4609209))

(assert (=> b!4019938 m!4609881))

(declare-fun m!4609887 () Bool)

(assert (=> b!4019938 m!4609887))

(assert (=> b!4019936 m!4609847))

(assert (=> b!4019374 d!1189971))

(declare-fun d!1190031 () Bool)

(assert (=> d!1190031 (= (size!32172 (_1!24213 (v!39647 lt!1427206))) (size!32171 (originalCharacters!7460 (_1!24213 (v!39647 lt!1427206)))))))

(declare-fun Unit!62157 () Unit!62145)

(assert (=> d!1190031 (= (lemmaCharactersSize!1419 (_1!24213 (v!39647 lt!1427206))) Unit!62157)))

(declare-fun bs!589767 () Bool)

(assert (= bs!589767 d!1190031))

(declare-fun m!4609889 () Bool)

(assert (=> bs!589767 m!4609889))

(assert (=> b!4019374 d!1190031))

(declare-fun d!1190033 () Bool)

(declare-fun lt!1427449 () BalanceConc!25736)

(assert (=> d!1190033 (= (list!15996 lt!1427449) (originalCharacters!7460 (_1!24213 (v!39647 lt!1427206))))))

(declare-fun dynLambda!18240 (Int TokenValue!7090) BalanceConc!25736)

(assert (=> d!1190033 (= lt!1427449 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (value!216144 (_1!24213 (v!39647 lt!1427206)))))))

(assert (=> d!1190033 (= (charsOf!4676 (_1!24213 (v!39647 lt!1427206))) lt!1427449)))

(declare-fun b_lambda!117273 () Bool)

(assert (=> (not b_lambda!117273) (not d!1190033)))

(declare-fun tb!241613 () Bool)

(declare-fun t!333519 () Bool)

(assert (=> (and b!4019334 (= (toChars!9227 (transformation!6860 (h!48452 rules!2999))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) t!333519) tb!241613))

(declare-fun b!4019947 () Bool)

(declare-fun e!2493679 () Bool)

(declare-fun tp!1222023 () Bool)

(declare-fun inv!57476 (Conc!13071) Bool)

(assert (=> b!4019947 (= e!2493679 (and (inv!57476 (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (value!216144 (_1!24213 (v!39647 lt!1427206)))))) tp!1222023))))

(declare-fun result!292842 () Bool)

(declare-fun inv!57477 (BalanceConc!25736) Bool)

(assert (=> tb!241613 (= result!292842 (and (inv!57477 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (value!216144 (_1!24213 (v!39647 lt!1427206))))) e!2493679))))

(assert (= tb!241613 b!4019947))

(declare-fun m!4609891 () Bool)

(assert (=> b!4019947 m!4609891))

(declare-fun m!4609893 () Bool)

(assert (=> tb!241613 m!4609893))

(assert (=> d!1190033 t!333519))

(declare-fun b_and!308795 () Bool)

(assert (= b_and!308761 (and (=> t!333519 result!292842) b_and!308795)))

(declare-fun t!333521 () Bool)

(declare-fun tb!241615 () Bool)

(assert (=> (and b!4019363 (= (toChars!9227 (transformation!6860 (rule!9912 token!484))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) t!333521) tb!241615))

(declare-fun result!292846 () Bool)

(assert (= result!292846 result!292842))

(assert (=> d!1190033 t!333521))

(declare-fun b_and!308797 () Bool)

(assert (= b_and!308765 (and (=> t!333521 result!292846) b_and!308797)))

(declare-fun m!4609895 () Bool)

(assert (=> d!1190033 m!4609895))

(declare-fun m!4609897 () Bool)

(assert (=> d!1190033 m!4609897))

(assert (=> b!4019374 d!1190033))

(declare-fun d!1190035 () Bool)

(assert (=> d!1190035 (isPrefix!3947 lt!1427181 (++!11262 lt!1427181 (_2!24213 (v!39647 lt!1427206))))))

(declare-fun lt!1427450 () Unit!62145)

(assert (=> d!1190035 (= lt!1427450 (choose!24307 lt!1427181 (_2!24213 (v!39647 lt!1427206))))))

(assert (=> d!1190035 (= (lemmaConcatTwoListThenFirstIsPrefix!2788 lt!1427181 (_2!24213 (v!39647 lt!1427206))) lt!1427450)))

(declare-fun bs!589768 () Bool)

(assert (= bs!589768 d!1190035))

(assert (=> bs!589768 m!4609019))

(assert (=> bs!589768 m!4609019))

(declare-fun m!4609899 () Bool)

(assert (=> bs!589768 m!4609899))

(declare-fun m!4609901 () Bool)

(assert (=> bs!589768 m!4609901))

(assert (=> b!4019374 d!1190035))

(declare-fun b!4019950 () Bool)

(declare-fun res!1635664 () Bool)

(declare-fun e!2493681 () Bool)

(assert (=> b!4019950 (=> (not res!1635664) (not e!2493681))))

(declare-fun lt!1427451 () List!43154)

(assert (=> b!4019950 (= res!1635664 (= (size!32171 lt!1427451) (+ (size!32171 lt!1427181) (size!32171 (_2!24213 (v!39647 lt!1427206))))))))

(declare-fun b!4019948 () Bool)

(declare-fun e!2493680 () List!43154)

(assert (=> b!4019948 (= e!2493680 (_2!24213 (v!39647 lt!1427206)))))

(declare-fun d!1190037 () Bool)

(assert (=> d!1190037 e!2493681))

(declare-fun res!1635663 () Bool)

(assert (=> d!1190037 (=> (not res!1635663) (not e!2493681))))

(assert (=> d!1190037 (= res!1635663 (= (content!6526 lt!1427451) ((_ map or) (content!6526 lt!1427181) (content!6526 (_2!24213 (v!39647 lt!1427206))))))))

(assert (=> d!1190037 (= lt!1427451 e!2493680)))

(declare-fun c!694639 () Bool)

(assert (=> d!1190037 (= c!694639 ((_ is Nil!43030) lt!1427181))))

(assert (=> d!1190037 (= (++!11262 lt!1427181 (_2!24213 (v!39647 lt!1427206))) lt!1427451)))

(declare-fun b!4019951 () Bool)

(assert (=> b!4019951 (= e!2493681 (or (not (= (_2!24213 (v!39647 lt!1427206)) Nil!43030)) (= lt!1427451 lt!1427181)))))

(declare-fun b!4019949 () Bool)

(assert (=> b!4019949 (= e!2493680 (Cons!43030 (h!48450 lt!1427181) (++!11262 (t!333487 lt!1427181) (_2!24213 (v!39647 lt!1427206)))))))

(assert (= (and d!1190037 c!694639) b!4019948))

(assert (= (and d!1190037 (not c!694639)) b!4019949))

(assert (= (and d!1190037 res!1635663) b!4019950))

(assert (= (and b!4019950 res!1635664) b!4019951))

(declare-fun m!4609903 () Bool)

(assert (=> b!4019950 m!4609903))

(assert (=> b!4019950 m!4609027))

(declare-fun m!4609905 () Bool)

(assert (=> b!4019950 m!4609905))

(declare-fun m!4609907 () Bool)

(assert (=> d!1190037 m!4609907))

(assert (=> d!1190037 m!4609621))

(declare-fun m!4609909 () Bool)

(assert (=> d!1190037 m!4609909))

(declare-fun m!4609911 () Bool)

(assert (=> b!4019949 m!4609911))

(assert (=> b!4019374 d!1190037))

(declare-fun d!1190039 () Bool)

(declare-fun res!1635669 () Bool)

(declare-fun e!2493684 () Bool)

(assert (=> d!1190039 (=> (not res!1635669) (not e!2493684))))

(assert (=> d!1190039 (= res!1635669 (validRegex!5326 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(assert (=> d!1190039 (= (ruleValid!2792 thiss!21717 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) e!2493684)))

(declare-fun b!4019956 () Bool)

(declare-fun res!1635670 () Bool)

(assert (=> b!4019956 (=> (not res!1635670) (not e!2493684))))

(assert (=> b!4019956 (= res!1635670 (not (nullable!4126 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))))

(declare-fun b!4019957 () Bool)

(assert (=> b!4019957 (= e!2493684 (not (= (tag!7720 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (String!49169 ""))))))

(assert (= (and d!1190039 res!1635669) b!4019956))

(assert (= (and b!4019956 res!1635670) b!4019957))

(assert (=> d!1190039 m!4609505))

(assert (=> b!4019956 m!4609501))

(assert (=> b!4019374 d!1190039))

(declare-fun d!1190041 () Bool)

(assert (=> d!1190041 (= (maxPrefixOneRule!2767 thiss!21717 (rule!9912 (_1!24213 (v!39647 lt!1427206))) lt!1427222) (Some!9273 (tuple2!42159 (Token!12859 (apply!10057 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (seqFromList!5085 lt!1427181)) (rule!9912 (_1!24213 (v!39647 lt!1427206))) (size!32171 lt!1427181) lt!1427181) (_2!24213 (v!39647 lt!1427206)))))))

(declare-fun lt!1427454 () Unit!62145)

(declare-fun choose!24315 (LexerInterface!6449 List!43156 List!43154 List!43154 List!43154 Rule!13520) Unit!62145)

(assert (=> d!1190041 (= lt!1427454 (choose!24315 thiss!21717 rules!2999 lt!1427181 lt!1427222 (_2!24213 (v!39647 lt!1427206)) (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))

(assert (=> d!1190041 (not (isEmpty!25692 rules!2999))))

(assert (=> d!1190041 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1585 thiss!21717 rules!2999 lt!1427181 lt!1427222 (_2!24213 (v!39647 lt!1427206)) (rule!9912 (_1!24213 (v!39647 lt!1427206)))) lt!1427454)))

(declare-fun bs!589769 () Bool)

(assert (= bs!589769 d!1190041))

(assert (=> bs!589769 m!4609031))

(assert (=> bs!589769 m!4609027))

(assert (=> bs!589769 m!4609021))

(assert (=> bs!589769 m!4609009))

(assert (=> bs!589769 m!4609021))

(assert (=> bs!589769 m!4609023))

(declare-fun m!4609913 () Bool)

(assert (=> bs!589769 m!4609913))

(assert (=> b!4019374 d!1190041))

(declare-fun d!1190043 () Bool)

(declare-fun list!15998 (Conc!13071) List!43154)

(assert (=> d!1190043 (= (list!15996 (charsOf!4676 (_1!24213 (v!39647 lt!1427206)))) (list!15998 (c!694546 (charsOf!4676 (_1!24213 (v!39647 lt!1427206))))))))

(declare-fun bs!589770 () Bool)

(assert (= bs!589770 d!1190043))

(declare-fun m!4609915 () Bool)

(assert (=> bs!589770 m!4609915))

(assert (=> b!4019374 d!1190043))

(declare-fun d!1190045 () Bool)

(assert (=> d!1190045 (ruleValid!2792 thiss!21717 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))

(declare-fun lt!1427457 () Unit!62145)

(declare-fun choose!24316 (LexerInterface!6449 Rule!13520 List!43156) Unit!62145)

(assert (=> d!1190045 (= lt!1427457 (choose!24316 thiss!21717 (rule!9912 (_1!24213 (v!39647 lt!1427206))) rules!2999))))

(assert (=> d!1190045 (contains!8548 rules!2999 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))

(assert (=> d!1190045 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1866 thiss!21717 (rule!9912 (_1!24213 (v!39647 lt!1427206))) rules!2999) lt!1427457)))

(declare-fun bs!589771 () Bool)

(assert (= bs!589771 d!1190045))

(assert (=> bs!589771 m!4609005))

(declare-fun m!4609917 () Bool)

(assert (=> bs!589771 m!4609917))

(declare-fun m!4609919 () Bool)

(assert (=> bs!589771 m!4609919))

(assert (=> b!4019374 d!1190045))

(declare-fun b!4019960 () Bool)

(declare-fun res!1635672 () Bool)

(declare-fun e!2493686 () Bool)

(assert (=> b!4019960 (=> (not res!1635672) (not e!2493686))))

(declare-fun lt!1427458 () List!43154)

(assert (=> b!4019960 (= res!1635672 (= (size!32171 lt!1427458) (+ (size!32171 lt!1427191) (size!32171 lt!1427218))))))

(declare-fun b!4019958 () Bool)

(declare-fun e!2493685 () List!43154)

(assert (=> b!4019958 (= e!2493685 lt!1427218)))

(declare-fun d!1190047 () Bool)

(assert (=> d!1190047 e!2493686))

(declare-fun res!1635671 () Bool)

(assert (=> d!1190047 (=> (not res!1635671) (not e!2493686))))

(assert (=> d!1190047 (= res!1635671 (= (content!6526 lt!1427458) ((_ map or) (content!6526 lt!1427191) (content!6526 lt!1427218))))))

(assert (=> d!1190047 (= lt!1427458 e!2493685)))

(declare-fun c!694640 () Bool)

(assert (=> d!1190047 (= c!694640 ((_ is Nil!43030) lt!1427191))))

(assert (=> d!1190047 (= (++!11262 lt!1427191 lt!1427218) lt!1427458)))

(declare-fun b!4019961 () Bool)

(assert (=> b!4019961 (= e!2493686 (or (not (= lt!1427218 Nil!43030)) (= lt!1427458 lt!1427191)))))

(declare-fun b!4019959 () Bool)

(assert (=> b!4019959 (= e!2493685 (Cons!43030 (h!48450 lt!1427191) (++!11262 (t!333487 lt!1427191) lt!1427218)))))

(assert (= (and d!1190047 c!694640) b!4019958))

(assert (= (and d!1190047 (not c!694640)) b!4019959))

(assert (= (and d!1190047 res!1635671) b!4019960))

(assert (= (and b!4019960 res!1635672) b!4019961))

(declare-fun m!4609921 () Bool)

(assert (=> b!4019960 m!4609921))

(assert (=> b!4019960 m!4609075))

(declare-fun m!4609923 () Bool)

(assert (=> b!4019960 m!4609923))

(declare-fun m!4609925 () Bool)

(assert (=> d!1190047 m!4609925))

(declare-fun m!4609927 () Bool)

(assert (=> d!1190047 m!4609927))

(declare-fun m!4609929 () Bool)

(assert (=> d!1190047 m!4609929))

(declare-fun m!4609931 () Bool)

(assert (=> b!4019959 m!4609931))

(assert (=> b!4019352 d!1190047))

(declare-fun d!1190049 () Bool)

(declare-fun lt!1427461 () List!43154)

(assert (=> d!1190049 (= (++!11262 lt!1427191 lt!1427461) prefix!494)))

(declare-fun e!2493689 () List!43154)

(assert (=> d!1190049 (= lt!1427461 e!2493689)))

(declare-fun c!694643 () Bool)

(assert (=> d!1190049 (= c!694643 ((_ is Cons!43030) lt!1427191))))

(assert (=> d!1190049 (>= (size!32171 prefix!494) (size!32171 lt!1427191))))

(assert (=> d!1190049 (= (getSuffix!2372 prefix!494 lt!1427191) lt!1427461)))

(declare-fun b!4019966 () Bool)

(assert (=> b!4019966 (= e!2493689 (getSuffix!2372 (tail!6259 prefix!494) (t!333487 lt!1427191)))))

(declare-fun b!4019967 () Bool)

(assert (=> b!4019967 (= e!2493689 prefix!494)))

(assert (= (and d!1190049 c!694643) b!4019966))

(assert (= (and d!1190049 (not c!694643)) b!4019967))

(declare-fun m!4609933 () Bool)

(assert (=> d!1190049 m!4609933))

(assert (=> d!1190049 m!4609077))

(assert (=> d!1190049 m!4609075))

(declare-fun m!4609935 () Bool)

(assert (=> b!4019966 m!4609935))

(assert (=> b!4019966 m!4609935))

(declare-fun m!4609937 () Bool)

(assert (=> b!4019966 m!4609937))

(assert (=> b!4019352 d!1190049))

(declare-fun b!4019969 () Bool)

(declare-fun res!1635674 () Bool)

(declare-fun e!2493690 () Bool)

(assert (=> b!4019969 (=> (not res!1635674) (not e!2493690))))

(assert (=> b!4019969 (= res!1635674 (= (head!8527 lt!1427191) (head!8527 prefix!494)))))

(declare-fun b!4019971 () Bool)

(declare-fun e!2493691 () Bool)

(assert (=> b!4019971 (= e!2493691 (>= (size!32171 prefix!494) (size!32171 lt!1427191)))))

(declare-fun d!1190051 () Bool)

(assert (=> d!1190051 e!2493691))

(declare-fun res!1635673 () Bool)

(assert (=> d!1190051 (=> res!1635673 e!2493691)))

(declare-fun lt!1427462 () Bool)

(assert (=> d!1190051 (= res!1635673 (not lt!1427462))))

(declare-fun e!2493692 () Bool)

(assert (=> d!1190051 (= lt!1427462 e!2493692)))

(declare-fun res!1635675 () Bool)

(assert (=> d!1190051 (=> res!1635675 e!2493692)))

(assert (=> d!1190051 (= res!1635675 ((_ is Nil!43030) lt!1427191))))

(assert (=> d!1190051 (= (isPrefix!3947 lt!1427191 prefix!494) lt!1427462)))

(declare-fun b!4019968 () Bool)

(assert (=> b!4019968 (= e!2493692 e!2493690)))

(declare-fun res!1635676 () Bool)

(assert (=> b!4019968 (=> (not res!1635676) (not e!2493690))))

(assert (=> b!4019968 (= res!1635676 (not ((_ is Nil!43030) prefix!494)))))

(declare-fun b!4019970 () Bool)

(assert (=> b!4019970 (= e!2493690 (isPrefix!3947 (tail!6259 lt!1427191) (tail!6259 prefix!494)))))

(assert (= (and d!1190051 (not res!1635675)) b!4019968))

(assert (= (and b!4019968 res!1635676) b!4019969))

(assert (= (and b!4019969 res!1635674) b!4019970))

(assert (= (and d!1190051 (not res!1635673)) b!4019971))

(assert (=> b!4019969 m!4609279))

(declare-fun m!4609939 () Bool)

(assert (=> b!4019969 m!4609939))

(assert (=> b!4019971 m!4609077))

(assert (=> b!4019971 m!4609075))

(assert (=> b!4019970 m!4609285))

(assert (=> b!4019970 m!4609935))

(assert (=> b!4019970 m!4609285))

(assert (=> b!4019970 m!4609935))

(declare-fun m!4609941 () Bool)

(assert (=> b!4019970 m!4609941))

(assert (=> b!4019352 d!1190051))

(declare-fun d!1190053 () Bool)

(assert (=> d!1190053 (isPrefix!3947 lt!1427191 prefix!494)))

(declare-fun lt!1427465 () Unit!62145)

(declare-fun choose!24317 (List!43154 List!43154 List!43154) Unit!62145)

(assert (=> d!1190053 (= lt!1427465 (choose!24317 prefix!494 lt!1427191 lt!1427217))))

(assert (=> d!1190053 (isPrefix!3947 prefix!494 lt!1427217)))

(assert (=> d!1190053 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!519 prefix!494 lt!1427191 lt!1427217) lt!1427465)))

(declare-fun bs!589772 () Bool)

(assert (= bs!589772 d!1190053))

(assert (=> bs!589772 m!4608987))

(declare-fun m!4609943 () Bool)

(assert (=> bs!589772 m!4609943))

(assert (=> bs!589772 m!4609083))

(assert (=> b!4019352 d!1190053))

(declare-fun b!4019974 () Bool)

(declare-fun res!1635678 () Bool)

(declare-fun e!2493694 () Bool)

(assert (=> b!4019974 (=> (not res!1635678) (not e!2493694))))

(declare-fun lt!1427466 () List!43154)

(assert (=> b!4019974 (= res!1635678 (= (size!32171 lt!1427466) (+ (size!32171 lt!1427191) (size!32171 lt!1427187))))))

(declare-fun b!4019972 () Bool)

(declare-fun e!2493693 () List!43154)

(assert (=> b!4019972 (= e!2493693 lt!1427187)))

(declare-fun d!1190055 () Bool)

(assert (=> d!1190055 e!2493694))

(declare-fun res!1635677 () Bool)

(assert (=> d!1190055 (=> (not res!1635677) (not e!2493694))))

(assert (=> d!1190055 (= res!1635677 (= (content!6526 lt!1427466) ((_ map or) (content!6526 lt!1427191) (content!6526 lt!1427187))))))

(assert (=> d!1190055 (= lt!1427466 e!2493693)))

(declare-fun c!694644 () Bool)

(assert (=> d!1190055 (= c!694644 ((_ is Nil!43030) lt!1427191))))

(assert (=> d!1190055 (= (++!11262 lt!1427191 lt!1427187) lt!1427466)))

(declare-fun b!4019975 () Bool)

(assert (=> b!4019975 (= e!2493694 (or (not (= lt!1427187 Nil!43030)) (= lt!1427466 lt!1427191)))))

(declare-fun b!4019973 () Bool)

(assert (=> b!4019973 (= e!2493693 (Cons!43030 (h!48450 lt!1427191) (++!11262 (t!333487 lt!1427191) lt!1427187)))))

(assert (= (and d!1190055 c!694644) b!4019972))

(assert (= (and d!1190055 (not c!694644)) b!4019973))

(assert (= (and d!1190055 res!1635677) b!4019974))

(assert (= (and b!4019974 res!1635678) b!4019975))

(declare-fun m!4609945 () Bool)

(assert (=> b!4019974 m!4609945))

(assert (=> b!4019974 m!4609075))

(declare-fun m!4609947 () Bool)

(assert (=> b!4019974 m!4609947))

(declare-fun m!4609949 () Bool)

(assert (=> d!1190055 m!4609949))

(assert (=> d!1190055 m!4609927))

(declare-fun m!4609951 () Bool)

(assert (=> d!1190055 m!4609951))

(declare-fun m!4609953 () Bool)

(assert (=> b!4019973 m!4609953))

(assert (=> b!4019333 d!1190055))

(declare-fun d!1190057 () Bool)

(declare-fun lt!1427467 () List!43154)

(assert (=> d!1190057 (= (++!11262 lt!1427191 lt!1427467) lt!1427217)))

(declare-fun e!2493695 () List!43154)

(assert (=> d!1190057 (= lt!1427467 e!2493695)))

(declare-fun c!694645 () Bool)

(assert (=> d!1190057 (= c!694645 ((_ is Cons!43030) lt!1427191))))

(assert (=> d!1190057 (>= (size!32171 lt!1427217) (size!32171 lt!1427191))))

(assert (=> d!1190057 (= (getSuffix!2372 lt!1427217 lt!1427191) lt!1427467)))

(declare-fun b!4019976 () Bool)

(assert (=> b!4019976 (= e!2493695 (getSuffix!2372 (tail!6259 lt!1427217) (t!333487 lt!1427191)))))

(declare-fun b!4019977 () Bool)

(assert (=> b!4019977 (= e!2493695 lt!1427217)))

(assert (= (and d!1190057 c!694645) b!4019976))

(assert (= (and d!1190057 (not c!694645)) b!4019977))

(declare-fun m!4609955 () Bool)

(assert (=> d!1190057 m!4609955))

(assert (=> d!1190057 m!4609515))

(assert (=> d!1190057 m!4609075))

(assert (=> b!4019976 m!4609519))

(assert (=> b!4019976 m!4609519))

(declare-fun m!4609957 () Bool)

(assert (=> b!4019976 m!4609957))

(assert (=> b!4019333 d!1190057))

(declare-fun b!4019979 () Bool)

(declare-fun res!1635680 () Bool)

(declare-fun e!2493696 () Bool)

(assert (=> b!4019979 (=> (not res!1635680) (not e!2493696))))

(assert (=> b!4019979 (= res!1635680 (= (head!8527 lt!1427217) (head!8527 lt!1427217)))))

(declare-fun b!4019981 () Bool)

(declare-fun e!2493697 () Bool)

(assert (=> b!4019981 (= e!2493697 (>= (size!32171 lt!1427217) (size!32171 lt!1427217)))))

(declare-fun d!1190059 () Bool)

(assert (=> d!1190059 e!2493697))

(declare-fun res!1635679 () Bool)

(assert (=> d!1190059 (=> res!1635679 e!2493697)))

(declare-fun lt!1427468 () Bool)

(assert (=> d!1190059 (= res!1635679 (not lt!1427468))))

(declare-fun e!2493698 () Bool)

(assert (=> d!1190059 (= lt!1427468 e!2493698)))

(declare-fun res!1635681 () Bool)

(assert (=> d!1190059 (=> res!1635681 e!2493698)))

(assert (=> d!1190059 (= res!1635681 ((_ is Nil!43030) lt!1427217))))

(assert (=> d!1190059 (= (isPrefix!3947 lt!1427217 lt!1427217) lt!1427468)))

(declare-fun b!4019978 () Bool)

(assert (=> b!4019978 (= e!2493698 e!2493696)))

(declare-fun res!1635682 () Bool)

(assert (=> b!4019978 (=> (not res!1635682) (not e!2493696))))

(assert (=> b!4019978 (= res!1635682 (not ((_ is Nil!43030) lt!1427217)))))

(declare-fun b!4019980 () Bool)

(assert (=> b!4019980 (= e!2493696 (isPrefix!3947 (tail!6259 lt!1427217) (tail!6259 lt!1427217)))))

(assert (= (and d!1190059 (not res!1635681)) b!4019978))

(assert (= (and b!4019978 res!1635682) b!4019979))

(assert (= (and b!4019979 res!1635680) b!4019980))

(assert (= (and d!1190059 (not res!1635679)) b!4019981))

(assert (=> b!4019979 m!4609513))

(assert (=> b!4019979 m!4609513))

(assert (=> b!4019981 m!4609515))

(assert (=> b!4019981 m!4609515))

(assert (=> b!4019980 m!4609519))

(assert (=> b!4019980 m!4609519))

(assert (=> b!4019980 m!4609519))

(assert (=> b!4019980 m!4609519))

(declare-fun m!4609959 () Bool)

(assert (=> b!4019980 m!4609959))

(assert (=> b!4019333 d!1190059))

(declare-fun d!1190061 () Bool)

(assert (=> d!1190061 (isPrefix!3947 lt!1427217 lt!1427217)))

(declare-fun lt!1427471 () Unit!62145)

(declare-fun choose!24318 (List!43154 List!43154) Unit!62145)

(assert (=> d!1190061 (= lt!1427471 (choose!24318 lt!1427217 lt!1427217))))

(assert (=> d!1190061 (= (lemmaIsPrefixRefl!2523 lt!1427217 lt!1427217) lt!1427471)))

(declare-fun bs!589773 () Bool)

(assert (= bs!589773 d!1190061))

(assert (=> bs!589773 m!4608971))

(declare-fun m!4609961 () Bool)

(assert (=> bs!589773 m!4609961))

(assert (=> b!4019333 d!1190061))

(declare-fun b!4019984 () Bool)

(declare-fun res!1635684 () Bool)

(declare-fun e!2493700 () Bool)

(assert (=> b!4019984 (=> (not res!1635684) (not e!2493700))))

(declare-fun lt!1427472 () List!43154)

(assert (=> b!4019984 (= res!1635684 (= (size!32171 lt!1427472) (+ (size!32171 prefix!494) (size!32171 newSuffix!27))))))

(declare-fun b!4019982 () Bool)

(declare-fun e!2493699 () List!43154)

(assert (=> b!4019982 (= e!2493699 newSuffix!27)))

(declare-fun d!1190063 () Bool)

(assert (=> d!1190063 e!2493700))

(declare-fun res!1635683 () Bool)

(assert (=> d!1190063 (=> (not res!1635683) (not e!2493700))))

(assert (=> d!1190063 (= res!1635683 (= (content!6526 lt!1427472) ((_ map or) (content!6526 prefix!494) (content!6526 newSuffix!27))))))

(assert (=> d!1190063 (= lt!1427472 e!2493699)))

(declare-fun c!694646 () Bool)

(assert (=> d!1190063 (= c!694646 ((_ is Nil!43030) prefix!494))))

(assert (=> d!1190063 (= (++!11262 prefix!494 newSuffix!27) lt!1427472)))

(declare-fun b!4019985 () Bool)

(assert (=> b!4019985 (= e!2493700 (or (not (= newSuffix!27 Nil!43030)) (= lt!1427472 prefix!494)))))

(declare-fun b!4019983 () Bool)

(assert (=> b!4019983 (= e!2493699 (Cons!43030 (h!48450 prefix!494) (++!11262 (t!333487 prefix!494) newSuffix!27)))))

(assert (= (and d!1190063 c!694646) b!4019982))

(assert (= (and d!1190063 (not c!694646)) b!4019983))

(assert (= (and d!1190063 res!1635683) b!4019984))

(assert (= (and b!4019984 res!1635684) b!4019985))

(declare-fun m!4609963 () Bool)

(assert (=> b!4019984 m!4609963))

(assert (=> b!4019984 m!4609077))

(assert (=> b!4019984 m!4608935))

(declare-fun m!4609965 () Bool)

(assert (=> d!1190063 m!4609965))

(assert (=> d!1190063 m!4609319))

(declare-fun m!4609967 () Bool)

(assert (=> d!1190063 m!4609967))

(declare-fun m!4609969 () Bool)

(assert (=> b!4019983 m!4609969))

(assert (=> b!4019354 d!1190063))

(declare-fun b!4019988 () Bool)

(declare-fun res!1635686 () Bool)

(declare-fun e!2493702 () Bool)

(assert (=> b!4019988 (=> (not res!1635686) (not e!2493702))))

(declare-fun lt!1427473 () List!43154)

(assert (=> b!4019988 (= res!1635686 (= (size!32171 lt!1427473) (+ (size!32171 lt!1427191) (size!32171 newSuffixResult!27))))))

(declare-fun b!4019986 () Bool)

(declare-fun e!2493701 () List!43154)

(assert (=> b!4019986 (= e!2493701 newSuffixResult!27)))

(declare-fun d!1190065 () Bool)

(assert (=> d!1190065 e!2493702))

(declare-fun res!1635685 () Bool)

(assert (=> d!1190065 (=> (not res!1635685) (not e!2493702))))

(assert (=> d!1190065 (= res!1635685 (= (content!6526 lt!1427473) ((_ map or) (content!6526 lt!1427191) (content!6526 newSuffixResult!27))))))

(assert (=> d!1190065 (= lt!1427473 e!2493701)))

(declare-fun c!694647 () Bool)

(assert (=> d!1190065 (= c!694647 ((_ is Nil!43030) lt!1427191))))

(assert (=> d!1190065 (= (++!11262 lt!1427191 newSuffixResult!27) lt!1427473)))

(declare-fun b!4019989 () Bool)

(assert (=> b!4019989 (= e!2493702 (or (not (= newSuffixResult!27 Nil!43030)) (= lt!1427473 lt!1427191)))))

(declare-fun b!4019987 () Bool)

(assert (=> b!4019987 (= e!2493701 (Cons!43030 (h!48450 lt!1427191) (++!11262 (t!333487 lt!1427191) newSuffixResult!27)))))

(assert (= (and d!1190065 c!694647) b!4019986))

(assert (= (and d!1190065 (not c!694647)) b!4019987))

(assert (= (and d!1190065 res!1635685) b!4019988))

(assert (= (and b!4019988 res!1635686) b!4019989))

(declare-fun m!4609971 () Bool)

(assert (=> b!4019988 m!4609971))

(assert (=> b!4019988 m!4609075))

(assert (=> b!4019988 m!4609617))

(declare-fun m!4609973 () Bool)

(assert (=> d!1190065 m!4609973))

(assert (=> d!1190065 m!4609927))

(assert (=> d!1190065 m!4609623))

(declare-fun m!4609975 () Bool)

(assert (=> b!4019987 m!4609975))

(assert (=> b!4019354 d!1190065))

(declare-fun b!4019992 () Bool)

(declare-fun res!1635688 () Bool)

(declare-fun e!2493704 () Bool)

(assert (=> b!4019992 (=> (not res!1635688) (not e!2493704))))

(declare-fun lt!1427474 () List!43154)

(assert (=> b!4019992 (= res!1635688 (= (size!32171 lt!1427474) (+ (size!32171 lt!1427191) (size!32171 lt!1427216))))))

(declare-fun b!4019990 () Bool)

(declare-fun e!2493703 () List!43154)

(assert (=> b!4019990 (= e!2493703 lt!1427216)))

(declare-fun d!1190067 () Bool)

(assert (=> d!1190067 e!2493704))

(declare-fun res!1635687 () Bool)

(assert (=> d!1190067 (=> (not res!1635687) (not e!2493704))))

(assert (=> d!1190067 (= res!1635687 (= (content!6526 lt!1427474) ((_ map or) (content!6526 lt!1427191) (content!6526 lt!1427216))))))

(assert (=> d!1190067 (= lt!1427474 e!2493703)))

(declare-fun c!694648 () Bool)

(assert (=> d!1190067 (= c!694648 ((_ is Nil!43030) lt!1427191))))

(assert (=> d!1190067 (= (++!11262 lt!1427191 lt!1427216) lt!1427474)))

(declare-fun b!4019993 () Bool)

(assert (=> b!4019993 (= e!2493704 (or (not (= lt!1427216 Nil!43030)) (= lt!1427474 lt!1427191)))))

(declare-fun b!4019991 () Bool)

(assert (=> b!4019991 (= e!2493703 (Cons!43030 (h!48450 lt!1427191) (++!11262 (t!333487 lt!1427191) lt!1427216)))))

(assert (= (and d!1190067 c!694648) b!4019990))

(assert (= (and d!1190067 (not c!694648)) b!4019991))

(assert (= (and d!1190067 res!1635687) b!4019992))

(assert (= (and b!4019992 res!1635688) b!4019993))

(declare-fun m!4609977 () Bool)

(assert (=> b!4019992 m!4609977))

(assert (=> b!4019992 m!4609075))

(declare-fun m!4609979 () Bool)

(assert (=> b!4019992 m!4609979))

(declare-fun m!4609981 () Bool)

(assert (=> d!1190067 m!4609981))

(assert (=> d!1190067 m!4609927))

(declare-fun m!4609983 () Bool)

(assert (=> d!1190067 m!4609983))

(declare-fun m!4609985 () Bool)

(assert (=> b!4019991 m!4609985))

(assert (=> b!4019366 d!1190067))

(declare-fun b!4019996 () Bool)

(declare-fun res!1635690 () Bool)

(declare-fun e!2493706 () Bool)

(assert (=> b!4019996 (=> (not res!1635690) (not e!2493706))))

(declare-fun lt!1427475 () List!43154)

(assert (=> b!4019996 (= res!1635690 (= (size!32171 lt!1427475) (+ (size!32171 lt!1427188) (size!32171 suffix!1299))))))

(declare-fun b!4019994 () Bool)

(declare-fun e!2493705 () List!43154)

(assert (=> b!4019994 (= e!2493705 suffix!1299)))

(declare-fun d!1190069 () Bool)

(assert (=> d!1190069 e!2493706))

(declare-fun res!1635689 () Bool)

(assert (=> d!1190069 (=> (not res!1635689) (not e!2493706))))

(assert (=> d!1190069 (= res!1635689 (= (content!6526 lt!1427475) ((_ map or) (content!6526 lt!1427188) (content!6526 suffix!1299))))))

(assert (=> d!1190069 (= lt!1427475 e!2493705)))

(declare-fun c!694649 () Bool)

(assert (=> d!1190069 (= c!694649 ((_ is Nil!43030) lt!1427188))))

(assert (=> d!1190069 (= (++!11262 lt!1427188 suffix!1299) lt!1427475)))

(declare-fun b!4019997 () Bool)

(assert (=> b!4019997 (= e!2493706 (or (not (= suffix!1299 Nil!43030)) (= lt!1427475 lt!1427188)))))

(declare-fun b!4019995 () Bool)

(assert (=> b!4019995 (= e!2493705 (Cons!43030 (h!48450 lt!1427188) (++!11262 (t!333487 lt!1427188) suffix!1299)))))

(assert (= (and d!1190069 c!694649) b!4019994))

(assert (= (and d!1190069 (not c!694649)) b!4019995))

(assert (= (and d!1190069 res!1635689) b!4019996))

(assert (= (and b!4019996 res!1635690) b!4019997))

(declare-fun m!4609987 () Bool)

(assert (=> b!4019996 m!4609987))

(declare-fun m!4609989 () Bool)

(assert (=> b!4019996 m!4609989))

(assert (=> b!4019996 m!4608933))

(declare-fun m!4609991 () Bool)

(assert (=> d!1190069 m!4609991))

(declare-fun m!4609993 () Bool)

(assert (=> d!1190069 m!4609993))

(declare-fun m!4609995 () Bool)

(assert (=> d!1190069 m!4609995))

(declare-fun m!4609997 () Bool)

(assert (=> b!4019995 m!4609997))

(assert (=> b!4019366 d!1190069))

(declare-fun b!4020000 () Bool)

(declare-fun res!1635692 () Bool)

(declare-fun e!2493708 () Bool)

(assert (=> b!4020000 (=> (not res!1635692) (not e!2493708))))

(declare-fun lt!1427476 () List!43154)

(assert (=> b!4020000 (= res!1635692 (= (size!32171 lt!1427476) (+ (size!32171 lt!1427218) (size!32171 suffix!1299))))))

(declare-fun b!4019998 () Bool)

(declare-fun e!2493707 () List!43154)

(assert (=> b!4019998 (= e!2493707 suffix!1299)))

(declare-fun d!1190071 () Bool)

(assert (=> d!1190071 e!2493708))

(declare-fun res!1635691 () Bool)

(assert (=> d!1190071 (=> (not res!1635691) (not e!2493708))))

(assert (=> d!1190071 (= res!1635691 (= (content!6526 lt!1427476) ((_ map or) (content!6526 lt!1427218) (content!6526 suffix!1299))))))

(assert (=> d!1190071 (= lt!1427476 e!2493707)))

(declare-fun c!694650 () Bool)

(assert (=> d!1190071 (= c!694650 ((_ is Nil!43030) lt!1427218))))

(assert (=> d!1190071 (= (++!11262 lt!1427218 suffix!1299) lt!1427476)))

(declare-fun b!4020001 () Bool)

(assert (=> b!4020001 (= e!2493708 (or (not (= suffix!1299 Nil!43030)) (= lt!1427476 lt!1427218)))))

(declare-fun b!4019999 () Bool)

(assert (=> b!4019999 (= e!2493707 (Cons!43030 (h!48450 lt!1427218) (++!11262 (t!333487 lt!1427218) suffix!1299)))))

(assert (= (and d!1190071 c!694650) b!4019998))

(assert (= (and d!1190071 (not c!694650)) b!4019999))

(assert (= (and d!1190071 res!1635691) b!4020000))

(assert (= (and b!4020000 res!1635692) b!4020001))

(declare-fun m!4609999 () Bool)

(assert (=> b!4020000 m!4609999))

(assert (=> b!4020000 m!4609923))

(assert (=> b!4020000 m!4608933))

(declare-fun m!4610001 () Bool)

(assert (=> d!1190071 m!4610001))

(assert (=> d!1190071 m!4609929))

(assert (=> d!1190071 m!4609995))

(declare-fun m!4610003 () Bool)

(assert (=> b!4019999 m!4610003))

(assert (=> b!4019366 d!1190071))

(declare-fun d!1190073 () Bool)

(assert (=> d!1190073 (= (++!11262 (++!11262 lt!1427191 lt!1427218) suffix!1299) (++!11262 lt!1427191 (++!11262 lt!1427218 suffix!1299)))))

(declare-fun lt!1427477 () Unit!62145)

(assert (=> d!1190073 (= lt!1427477 (choose!24310 lt!1427191 lt!1427218 suffix!1299))))

(assert (=> d!1190073 (= (lemmaConcatAssociativity!2572 lt!1427191 lt!1427218 suffix!1299) lt!1427477)))

(declare-fun bs!589774 () Bool)

(assert (= bs!589774 d!1190073))

(assert (=> bs!589774 m!4608983))

(declare-fun m!4610005 () Bool)

(assert (=> bs!589774 m!4610005))

(declare-fun m!4610007 () Bool)

(assert (=> bs!589774 m!4610007))

(assert (=> bs!589774 m!4609051))

(declare-fun m!4610009 () Bool)

(assert (=> bs!589774 m!4610009))

(assert (=> bs!589774 m!4609051))

(assert (=> bs!589774 m!4608983))

(assert (=> b!4019366 d!1190073))

(declare-fun d!1190075 () Bool)

(declare-fun res!1635695 () Bool)

(declare-fun e!2493711 () Bool)

(assert (=> d!1190075 (=> (not res!1635695) (not e!2493711))))

(declare-fun rulesValid!2666 (LexerInterface!6449 List!43156) Bool)

(assert (=> d!1190075 (= res!1635695 (rulesValid!2666 thiss!21717 rules!2999))))

(assert (=> d!1190075 (= (rulesInvariant!5792 thiss!21717 rules!2999) e!2493711)))

(declare-fun b!4020004 () Bool)

(declare-datatypes ((List!43157 0))(
  ( (Nil!43033) (Cons!43033 (h!48453 String!49168) (t!333538 List!43157)) )
))
(declare-fun noDuplicateTag!2667 (LexerInterface!6449 List!43156 List!43157) Bool)

(assert (=> b!4020004 (= e!2493711 (noDuplicateTag!2667 thiss!21717 rules!2999 Nil!43033))))

(assert (= (and d!1190075 res!1635695) b!4020004))

(declare-fun m!4610011 () Bool)

(assert (=> d!1190075 m!4610011))

(declare-fun m!4610013 () Bool)

(assert (=> b!4020004 m!4610013))

(assert (=> b!4019344 d!1190075))

(declare-fun d!1190077 () Bool)

(assert (=> d!1190077 (not (matchR!5726 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) lt!1427181))))

(declare-fun lt!1427480 () Unit!62145)

(declare-fun choose!24319 (LexerInterface!6449 List!43156 Rule!13520 List!43154 List!43154 List!43154 Rule!13520) Unit!62145)

(assert (=> d!1190077 (= lt!1427480 (choose!24319 thiss!21717 rules!2999 (rule!9912 token!484) lt!1427191 lt!1427217 lt!1427181 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))

(assert (=> d!1190077 (isPrefix!3947 lt!1427191 lt!1427217)))

(assert (=> d!1190077 (= (lemmaMaxPrefixOutputsMaxPrefix!454 thiss!21717 rules!2999 (rule!9912 token!484) lt!1427191 lt!1427217 lt!1427181 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) lt!1427480)))

(declare-fun bs!589775 () Bool)

(assert (= bs!589775 d!1190077))

(assert (=> bs!589775 m!4608955))

(declare-fun m!4610015 () Bool)

(assert (=> bs!589775 m!4610015))

(assert (=> bs!589775 m!4609085))

(assert (=> b!4019346 d!1190077))

(declare-fun b!4020005 () Bool)

(declare-fun e!2493716 () Bool)

(declare-fun e!2493714 () Bool)

(assert (=> b!4020005 (= e!2493716 e!2493714)))

(declare-fun res!1635700 () Bool)

(assert (=> b!4020005 (=> res!1635700 e!2493714)))

(declare-fun call!286584 () Bool)

(assert (=> b!4020005 (= res!1635700 call!286584)))

(declare-fun b!4020006 () Bool)

(declare-fun res!1635703 () Bool)

(declare-fun e!2493713 () Bool)

(assert (=> b!4020006 (=> (not res!1635703) (not e!2493713))))

(assert (=> b!4020006 (= res!1635703 (isEmpty!25696 (tail!6259 lt!1427181)))))

(declare-fun b!4020007 () Bool)

(declare-fun e!2493715 () Bool)

(declare-fun lt!1427481 () Bool)

(assert (=> b!4020007 (= e!2493715 (not lt!1427481))))

(declare-fun b!4020008 () Bool)

(declare-fun res!1635698 () Bool)

(declare-fun e!2493712 () Bool)

(assert (=> b!4020008 (=> res!1635698 e!2493712)))

(assert (=> b!4020008 (= res!1635698 (not ((_ is ElementMatch!11765) (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))))

(assert (=> b!4020008 (= e!2493715 e!2493712)))

(declare-fun b!4020010 () Bool)

(declare-fun res!1635697 () Bool)

(assert (=> b!4020010 (=> res!1635697 e!2493714)))

(assert (=> b!4020010 (= res!1635697 (not (isEmpty!25696 (tail!6259 lt!1427181))))))

(declare-fun b!4020011 () Bool)

(declare-fun res!1635701 () Bool)

(assert (=> b!4020011 (=> (not res!1635701) (not e!2493713))))

(assert (=> b!4020011 (= res!1635701 (not call!286584))))

(declare-fun b!4020012 () Bool)

(declare-fun res!1635702 () Bool)

(assert (=> b!4020012 (=> res!1635702 e!2493712)))

(assert (=> b!4020012 (= res!1635702 e!2493713)))

(declare-fun res!1635696 () Bool)

(assert (=> b!4020012 (=> (not res!1635696) (not e!2493713))))

(assert (=> b!4020012 (= res!1635696 lt!1427481)))

(declare-fun b!4020013 () Bool)

(assert (=> b!4020013 (= e!2493714 (not (= (head!8527 lt!1427181) (c!694547 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))))

(declare-fun b!4020014 () Bool)

(declare-fun e!2493717 () Bool)

(assert (=> b!4020014 (= e!2493717 (nullable!4126 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(declare-fun b!4020015 () Bool)

(declare-fun e!2493718 () Bool)

(assert (=> b!4020015 (= e!2493718 e!2493715)))

(declare-fun c!694653 () Bool)

(assert (=> b!4020015 (= c!694653 ((_ is EmptyLang!11765) (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(declare-fun b!4020016 () Bool)

(assert (=> b!4020016 (= e!2493712 e!2493716)))

(declare-fun res!1635699 () Bool)

(assert (=> b!4020016 (=> (not res!1635699) (not e!2493716))))

(assert (=> b!4020016 (= res!1635699 (not lt!1427481))))

(declare-fun b!4020017 () Bool)

(assert (=> b!4020017 (= e!2493717 (matchR!5726 (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (head!8527 lt!1427181)) (tail!6259 lt!1427181)))))

(declare-fun bm!286579 () Bool)

(assert (=> bm!286579 (= call!286584 (isEmpty!25696 lt!1427181))))

(declare-fun b!4020018 () Bool)

(assert (=> b!4020018 (= e!2493718 (= lt!1427481 call!286584))))

(declare-fun b!4020009 () Bool)

(assert (=> b!4020009 (= e!2493713 (= (head!8527 lt!1427181) (c!694547 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))))

(declare-fun d!1190079 () Bool)

(assert (=> d!1190079 e!2493718))

(declare-fun c!694651 () Bool)

(assert (=> d!1190079 (= c!694651 ((_ is EmptyExpr!11765) (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(assert (=> d!1190079 (= lt!1427481 e!2493717)))

(declare-fun c!694652 () Bool)

(assert (=> d!1190079 (= c!694652 (isEmpty!25696 lt!1427181))))

(assert (=> d!1190079 (validRegex!5326 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))

(assert (=> d!1190079 (= (matchR!5726 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) lt!1427181) lt!1427481)))

(assert (= (and d!1190079 c!694652) b!4020014))

(assert (= (and d!1190079 (not c!694652)) b!4020017))

(assert (= (and d!1190079 c!694651) b!4020018))

(assert (= (and d!1190079 (not c!694651)) b!4020015))

(assert (= (and b!4020015 c!694653) b!4020007))

(assert (= (and b!4020015 (not c!694653)) b!4020008))

(assert (= (and b!4020008 (not res!1635698)) b!4020012))

(assert (= (and b!4020012 res!1635696) b!4020011))

(assert (= (and b!4020011 res!1635701) b!4020006))

(assert (= (and b!4020006 res!1635703) b!4020009))

(assert (= (and b!4020012 (not res!1635702)) b!4020016))

(assert (= (and b!4020016 res!1635699) b!4020005))

(assert (= (and b!4020005 (not res!1635700)) b!4020010))

(assert (= (and b!4020010 (not res!1635697)) b!4020013))

(assert (= (or b!4020018 b!4020005 b!4020011) bm!286579))

(assert (=> b!4020013 m!4609511))

(assert (=> b!4020009 m!4609511))

(assert (=> b!4020006 m!4609517))

(assert (=> b!4020006 m!4609517))

(declare-fun m!4610017 () Bool)

(assert (=> b!4020006 m!4610017))

(assert (=> b!4020014 m!4609501))

(declare-fun m!4610019 () Bool)

(assert (=> bm!286579 m!4610019))

(assert (=> b!4020010 m!4609517))

(assert (=> b!4020010 m!4609517))

(assert (=> b!4020010 m!4610017))

(assert (=> d!1190079 m!4610019))

(assert (=> d!1190079 m!4609505))

(assert (=> b!4020017 m!4609511))

(assert (=> b!4020017 m!4609511))

(declare-fun m!4610021 () Bool)

(assert (=> b!4020017 m!4610021))

(assert (=> b!4020017 m!4609517))

(assert (=> b!4020017 m!4610021))

(assert (=> b!4020017 m!4609517))

(declare-fun m!4610023 () Bool)

(assert (=> b!4020017 m!4610023))

(assert (=> b!4019346 d!1190079))

(assert (=> b!4019367 d!1190079))

(declare-fun d!1190081 () Bool)

(assert (=> d!1190081 (= (isEmpty!25692 rules!2999) ((_ is Nil!43032) rules!2999))))

(assert (=> b!4019369 d!1190081))

(declare-fun d!1190083 () Bool)

(assert (=> d!1190083 (= (_2!24213 (v!39647 lt!1427206)) lt!1427214)))

(declare-fun lt!1427482 () Unit!62145)

(assert (=> d!1190083 (= lt!1427482 (choose!24306 lt!1427181 (_2!24213 (v!39647 lt!1427206)) lt!1427181 lt!1427214 lt!1427222))))

(assert (=> d!1190083 (isPrefix!3947 lt!1427181 lt!1427222)))

(assert (=> d!1190083 (= (lemmaSamePrefixThenSameSuffix!2118 lt!1427181 (_2!24213 (v!39647 lt!1427206)) lt!1427181 lt!1427214 lt!1427222) lt!1427482)))

(declare-fun bs!589776 () Bool)

(assert (= bs!589776 d!1190083))

(declare-fun m!4610025 () Bool)

(assert (=> bs!589776 m!4610025))

(assert (=> bs!589776 m!4608947))

(assert (=> b!4019368 d!1190083))

(declare-fun b!4020020 () Bool)

(declare-fun res!1635705 () Bool)

(declare-fun e!2493719 () Bool)

(assert (=> b!4020020 (=> (not res!1635705) (not e!2493719))))

(assert (=> b!4020020 (= res!1635705 (= (head!8527 lt!1427181) (head!8527 lt!1427190)))))

(declare-fun b!4020022 () Bool)

(declare-fun e!2493720 () Bool)

(assert (=> b!4020022 (= e!2493720 (>= (size!32171 lt!1427190) (size!32171 lt!1427181)))))

(declare-fun d!1190085 () Bool)

(assert (=> d!1190085 e!2493720))

(declare-fun res!1635704 () Bool)

(assert (=> d!1190085 (=> res!1635704 e!2493720)))

(declare-fun lt!1427483 () Bool)

(assert (=> d!1190085 (= res!1635704 (not lt!1427483))))

(declare-fun e!2493721 () Bool)

(assert (=> d!1190085 (= lt!1427483 e!2493721)))

(declare-fun res!1635706 () Bool)

(assert (=> d!1190085 (=> res!1635706 e!2493721)))

(assert (=> d!1190085 (= res!1635706 ((_ is Nil!43030) lt!1427181))))

(assert (=> d!1190085 (= (isPrefix!3947 lt!1427181 lt!1427190) lt!1427483)))

(declare-fun b!4020019 () Bool)

(assert (=> b!4020019 (= e!2493721 e!2493719)))

(declare-fun res!1635707 () Bool)

(assert (=> b!4020019 (=> (not res!1635707) (not e!2493719))))

(assert (=> b!4020019 (= res!1635707 (not ((_ is Nil!43030) lt!1427190)))))

(declare-fun b!4020021 () Bool)

(assert (=> b!4020021 (= e!2493719 (isPrefix!3947 (tail!6259 lt!1427181) (tail!6259 lt!1427190)))))

(assert (= (and d!1190085 (not res!1635706)) b!4020019))

(assert (= (and b!4020019 res!1635707) b!4020020))

(assert (= (and b!4020020 res!1635705) b!4020021))

(assert (= (and d!1190085 (not res!1635704)) b!4020022))

(assert (=> b!4020020 m!4609511))

(declare-fun m!4610027 () Bool)

(assert (=> b!4020020 m!4610027))

(declare-fun m!4610029 () Bool)

(assert (=> b!4020022 m!4610029))

(assert (=> b!4020022 m!4609027))

(assert (=> b!4020021 m!4609517))

(declare-fun m!4610031 () Bool)

(assert (=> b!4020021 m!4610031))

(assert (=> b!4020021 m!4609517))

(assert (=> b!4020021 m!4610031))

(declare-fun m!4610033 () Bool)

(assert (=> b!4020021 m!4610033))

(assert (=> b!4019368 d!1190085))

(declare-fun d!1190087 () Bool)

(assert (=> d!1190087 (isPrefix!3947 lt!1427181 (++!11262 lt!1427181 lt!1427214))))

(declare-fun lt!1427484 () Unit!62145)

(assert (=> d!1190087 (= lt!1427484 (choose!24307 lt!1427181 lt!1427214))))

(assert (=> d!1190087 (= (lemmaConcatTwoListThenFirstIsPrefix!2788 lt!1427181 lt!1427214) lt!1427484)))

(declare-fun bs!589777 () Bool)

(assert (= bs!589777 d!1190087))

(assert (=> bs!589777 m!4608991))

(assert (=> bs!589777 m!4608991))

(declare-fun m!4610035 () Bool)

(assert (=> bs!589777 m!4610035))

(declare-fun m!4610037 () Bool)

(assert (=> bs!589777 m!4610037))

(assert (=> b!4019368 d!1190087))

(declare-fun b!4020024 () Bool)

(declare-fun res!1635709 () Bool)

(declare-fun e!2493722 () Bool)

(assert (=> b!4020024 (=> (not res!1635709) (not e!2493722))))

(assert (=> b!4020024 (= res!1635709 (= (head!8527 lt!1427181) (head!8527 lt!1427222)))))

(declare-fun b!4020026 () Bool)

(declare-fun e!2493723 () Bool)

(assert (=> b!4020026 (= e!2493723 (>= (size!32171 lt!1427222) (size!32171 lt!1427181)))))

(declare-fun d!1190089 () Bool)

(assert (=> d!1190089 e!2493723))

(declare-fun res!1635708 () Bool)

(assert (=> d!1190089 (=> res!1635708 e!2493723)))

(declare-fun lt!1427485 () Bool)

(assert (=> d!1190089 (= res!1635708 (not lt!1427485))))

(declare-fun e!2493724 () Bool)

(assert (=> d!1190089 (= lt!1427485 e!2493724)))

(declare-fun res!1635710 () Bool)

(assert (=> d!1190089 (=> res!1635710 e!2493724)))

(assert (=> d!1190089 (= res!1635710 ((_ is Nil!43030) lt!1427181))))

(assert (=> d!1190089 (= (isPrefix!3947 lt!1427181 lt!1427222) lt!1427485)))

(declare-fun b!4020023 () Bool)

(assert (=> b!4020023 (= e!2493724 e!2493722)))

(declare-fun res!1635711 () Bool)

(assert (=> b!4020023 (=> (not res!1635711) (not e!2493722))))

(assert (=> b!4020023 (= res!1635711 (not ((_ is Nil!43030) lt!1427222)))))

(declare-fun b!4020025 () Bool)

(assert (=> b!4020025 (= e!2493722 (isPrefix!3947 (tail!6259 lt!1427181) (tail!6259 lt!1427222)))))

(assert (= (and d!1190089 (not res!1635710)) b!4020023))

(assert (= (and b!4020023 res!1635711) b!4020024))

(assert (= (and b!4020024 res!1635709) b!4020025))

(assert (= (and d!1190089 (not res!1635708)) b!4020026))

(assert (=> b!4020024 m!4609511))

(declare-fun m!4610039 () Bool)

(assert (=> b!4020024 m!4610039))

(assert (=> b!4020026 m!4609209))

(assert (=> b!4020026 m!4609027))

(assert (=> b!4020025 m!4609517))

(declare-fun m!4610041 () Bool)

(assert (=> b!4020025 m!4610041))

(assert (=> b!4020025 m!4609517))

(assert (=> b!4020025 m!4610041))

(declare-fun m!4610043 () Bool)

(assert (=> b!4020025 m!4610043))

(assert (=> b!4019349 d!1190089))

(declare-fun d!1190091 () Bool)

(assert (=> d!1190091 (not (matchR!5726 (regex!6860 (rule!9912 token!484)) lt!1427191))))

(declare-fun lt!1427486 () Unit!62145)

(assert (=> d!1190091 (= lt!1427486 (choose!24319 thiss!21717 rules!2999 (rule!9912 (_1!24213 (v!39647 lt!1427206))) lt!1427181 lt!1427222 lt!1427191 (rule!9912 token!484)))))

(assert (=> d!1190091 (isPrefix!3947 lt!1427181 lt!1427222)))

(assert (=> d!1190091 (= (lemmaMaxPrefixOutputsMaxPrefix!454 thiss!21717 rules!2999 (rule!9912 (_1!24213 (v!39647 lt!1427206))) lt!1427181 lt!1427222 lt!1427191 (rule!9912 token!484)) lt!1427486)))

(declare-fun bs!589778 () Bool)

(assert (= bs!589778 d!1190091))

(assert (=> bs!589778 m!4608905))

(declare-fun m!4610045 () Bool)

(assert (=> bs!589778 m!4610045))

(assert (=> bs!589778 m!4608947))

(assert (=> b!4019370 d!1190091))

(declare-fun b!4020028 () Bool)

(declare-fun res!1635713 () Bool)

(declare-fun e!2493725 () Bool)

(assert (=> b!4020028 (=> (not res!1635713) (not e!2493725))))

(assert (=> b!4020028 (= res!1635713 (= (head!8527 newSuffix!27) (head!8527 suffix!1299)))))

(declare-fun b!4020030 () Bool)

(declare-fun e!2493726 () Bool)

(assert (=> b!4020030 (= e!2493726 (>= (size!32171 suffix!1299) (size!32171 newSuffix!27)))))

(declare-fun d!1190093 () Bool)

(assert (=> d!1190093 e!2493726))

(declare-fun res!1635712 () Bool)

(assert (=> d!1190093 (=> res!1635712 e!2493726)))

(declare-fun lt!1427487 () Bool)

(assert (=> d!1190093 (= res!1635712 (not lt!1427487))))

(declare-fun e!2493727 () Bool)

(assert (=> d!1190093 (= lt!1427487 e!2493727)))

(declare-fun res!1635714 () Bool)

(assert (=> d!1190093 (=> res!1635714 e!2493727)))

(assert (=> d!1190093 (= res!1635714 ((_ is Nil!43030) newSuffix!27))))

(assert (=> d!1190093 (= (isPrefix!3947 newSuffix!27 suffix!1299) lt!1427487)))

(declare-fun b!4020027 () Bool)

(assert (=> b!4020027 (= e!2493727 e!2493725)))

(declare-fun res!1635715 () Bool)

(assert (=> b!4020027 (=> (not res!1635715) (not e!2493725))))

(assert (=> b!4020027 (= res!1635715 (not ((_ is Nil!43030) suffix!1299)))))

(declare-fun b!4020029 () Bool)

(assert (=> b!4020029 (= e!2493725 (isPrefix!3947 (tail!6259 newSuffix!27) (tail!6259 suffix!1299)))))

(assert (= (and d!1190093 (not res!1635714)) b!4020027))

(assert (= (and b!4020027 res!1635715) b!4020028))

(assert (= (and b!4020028 res!1635713) b!4020029))

(assert (= (and d!1190093 (not res!1635712)) b!4020030))

(declare-fun m!4610047 () Bool)

(assert (=> b!4020028 m!4610047))

(declare-fun m!4610049 () Bool)

(assert (=> b!4020028 m!4610049))

(assert (=> b!4020030 m!4608933))

(assert (=> b!4020030 m!4608935))

(declare-fun m!4610051 () Bool)

(assert (=> b!4020029 m!4610051))

(declare-fun m!4610053 () Bool)

(assert (=> b!4020029 m!4610053))

(assert (=> b!4020029 m!4610051))

(assert (=> b!4020029 m!4610053))

(declare-fun m!4610055 () Bool)

(assert (=> b!4020029 m!4610055))

(assert (=> b!4019348 d!1190093))

(declare-fun d!1190095 () Bool)

(assert (=> d!1190095 (= (inv!57469 (tag!7720 (h!48452 rules!2999))) (= (mod (str.len (value!216143 (tag!7720 (h!48452 rules!2999)))) 2) 0))))

(assert (=> b!4019339 d!1190095))

(declare-fun d!1190097 () Bool)

(declare-fun res!1635718 () Bool)

(declare-fun e!2493730 () Bool)

(assert (=> d!1190097 (=> (not res!1635718) (not e!2493730))))

(assert (=> d!1190097 (= res!1635718 (semiInverseModEq!2933 (toChars!9227 (transformation!6860 (h!48452 rules!2999))) (toValue!9368 (transformation!6860 (h!48452 rules!2999)))))))

(assert (=> d!1190097 (= (inv!57472 (transformation!6860 (h!48452 rules!2999))) e!2493730)))

(declare-fun b!4020033 () Bool)

(assert (=> b!4020033 (= e!2493730 (equivClasses!2832 (toChars!9227 (transformation!6860 (h!48452 rules!2999))) (toValue!9368 (transformation!6860 (h!48452 rules!2999)))))))

(assert (= (and d!1190097 res!1635718) b!4020033))

(declare-fun m!4610057 () Bool)

(assert (=> d!1190097 m!4610057))

(declare-fun m!4610059 () Bool)

(assert (=> b!4020033 m!4610059))

(assert (=> b!4019339 d!1190097))

(declare-fun d!1190099 () Bool)

(assert (=> d!1190099 (= (inv!57469 (tag!7720 (rule!9912 token!484))) (= (mod (str.len (value!216143 (tag!7720 (rule!9912 token!484)))) 2) 0))))

(assert (=> b!4019360 d!1190099))

(declare-fun d!1190101 () Bool)

(declare-fun res!1635719 () Bool)

(declare-fun e!2493731 () Bool)

(assert (=> d!1190101 (=> (not res!1635719) (not e!2493731))))

(assert (=> d!1190101 (= res!1635719 (semiInverseModEq!2933 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (toValue!9368 (transformation!6860 (rule!9912 token!484)))))))

(assert (=> d!1190101 (= (inv!57472 (transformation!6860 (rule!9912 token!484))) e!2493731)))

(declare-fun b!4020034 () Bool)

(assert (=> b!4020034 (= e!2493731 (equivClasses!2832 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (toValue!9368 (transformation!6860 (rule!9912 token!484)))))))

(assert (= (and d!1190101 res!1635719) b!4020034))

(declare-fun m!4610061 () Bool)

(assert (=> d!1190101 m!4610061))

(declare-fun m!4610063 () Bool)

(assert (=> b!4020034 m!4610063))

(assert (=> b!4019360 d!1190101))

(declare-fun d!1190103 () Bool)

(declare-fun res!1635724 () Bool)

(declare-fun e!2493734 () Bool)

(assert (=> d!1190103 (=> (not res!1635724) (not e!2493734))))

(assert (=> d!1190103 (= res!1635724 (not (isEmpty!25696 (originalCharacters!7460 token!484))))))

(assert (=> d!1190103 (= (inv!57473 token!484) e!2493734)))

(declare-fun b!4020039 () Bool)

(declare-fun res!1635725 () Bool)

(assert (=> b!4020039 (=> (not res!1635725) (not e!2493734))))

(assert (=> b!4020039 (= res!1635725 (= (originalCharacters!7460 token!484) (list!15996 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (value!216144 token!484)))))))

(declare-fun b!4020040 () Bool)

(assert (=> b!4020040 (= e!2493734 (= (size!32172 token!484) (size!32171 (originalCharacters!7460 token!484))))))

(assert (= (and d!1190103 res!1635724) b!4020039))

(assert (= (and b!4020039 res!1635725) b!4020040))

(declare-fun b_lambda!117275 () Bool)

(assert (=> (not b_lambda!117275) (not b!4020039)))

(declare-fun tb!241617 () Bool)

(declare-fun t!333523 () Bool)

(assert (=> (and b!4019334 (= (toChars!9227 (transformation!6860 (h!48452 rules!2999))) (toChars!9227 (transformation!6860 (rule!9912 token!484)))) t!333523) tb!241617))

(declare-fun b!4020041 () Bool)

(declare-fun e!2493735 () Bool)

(declare-fun tp!1222024 () Bool)

(assert (=> b!4020041 (= e!2493735 (and (inv!57476 (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (value!216144 token!484)))) tp!1222024))))

(declare-fun result!292848 () Bool)

(assert (=> tb!241617 (= result!292848 (and (inv!57477 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (value!216144 token!484))) e!2493735))))

(assert (= tb!241617 b!4020041))

(declare-fun m!4610065 () Bool)

(assert (=> b!4020041 m!4610065))

(declare-fun m!4610067 () Bool)

(assert (=> tb!241617 m!4610067))

(assert (=> b!4020039 t!333523))

(declare-fun b_and!308799 () Bool)

(assert (= b_and!308795 (and (=> t!333523 result!292848) b_and!308799)))

(declare-fun t!333525 () Bool)

(declare-fun tb!241619 () Bool)

(assert (=> (and b!4019363 (= (toChars!9227 (transformation!6860 (rule!9912 token!484))) (toChars!9227 (transformation!6860 (rule!9912 token!484)))) t!333525) tb!241619))

(declare-fun result!292850 () Bool)

(assert (= result!292850 result!292848))

(assert (=> b!4020039 t!333525))

(declare-fun b_and!308801 () Bool)

(assert (= b_and!308797 (and (=> t!333525 result!292850) b_and!308801)))

(declare-fun m!4610069 () Bool)

(assert (=> d!1190103 m!4610069))

(declare-fun m!4610071 () Bool)

(assert (=> b!4020039 m!4610071))

(assert (=> b!4020039 m!4610071))

(declare-fun m!4610073 () Bool)

(assert (=> b!4020039 m!4610073))

(assert (=> b!4020040 m!4608899))

(assert (=> start!378448 d!1190103))

(declare-fun b!4020043 () Bool)

(declare-fun res!1635731 () Bool)

(declare-fun e!2493738 () Bool)

(assert (=> b!4020043 (=> (not res!1635731) (not e!2493738))))

(declare-fun lt!1427490 () Option!9274)

(assert (=> b!4020043 (= res!1635731 (= (++!11262 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427490)))) (_2!24213 (get!14131 lt!1427490))) lt!1427217))))

(declare-fun bm!286580 () Bool)

(declare-fun call!286585 () Option!9274)

(assert (=> bm!286580 (= call!286585 (maxPrefixOneRule!2767 thiss!21717 (h!48452 rules!2999) lt!1427217))))

(declare-fun b!4020044 () Bool)

(declare-fun e!2493736 () Option!9274)

(assert (=> b!4020044 (= e!2493736 call!286585)))

(declare-fun b!4020045 () Bool)

(declare-fun res!1635727 () Bool)

(assert (=> b!4020045 (=> (not res!1635727) (not e!2493738))))

(assert (=> b!4020045 (= res!1635727 (matchR!5726 (regex!6860 (rule!9912 (_1!24213 (get!14131 lt!1427490)))) (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427490))))))))

(declare-fun b!4020046 () Bool)

(declare-fun res!1635728 () Bool)

(assert (=> b!4020046 (=> (not res!1635728) (not e!2493738))))

(assert (=> b!4020046 (= res!1635728 (= (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427490)))) (originalCharacters!7460 (_1!24213 (get!14131 lt!1427490)))))))

(declare-fun b!4020047 () Bool)

(declare-fun e!2493737 () Bool)

(assert (=> b!4020047 (= e!2493737 e!2493738)))

(declare-fun res!1635730 () Bool)

(assert (=> b!4020047 (=> (not res!1635730) (not e!2493738))))

(assert (=> b!4020047 (= res!1635730 (isDefined!7077 lt!1427490))))

(declare-fun b!4020048 () Bool)

(assert (=> b!4020048 (= e!2493738 (contains!8548 rules!2999 (rule!9912 (_1!24213 (get!14131 lt!1427490)))))))

(declare-fun d!1190105 () Bool)

(assert (=> d!1190105 e!2493737))

(declare-fun res!1635726 () Bool)

(assert (=> d!1190105 (=> res!1635726 e!2493737)))

(assert (=> d!1190105 (= res!1635726 (isEmpty!25695 lt!1427490))))

(assert (=> d!1190105 (= lt!1427490 e!2493736)))

(declare-fun c!694654 () Bool)

(assert (=> d!1190105 (= c!694654 (and ((_ is Cons!43032) rules!2999) ((_ is Nil!43032) (t!333489 rules!2999))))))

(declare-fun lt!1427492 () Unit!62145)

(declare-fun lt!1427489 () Unit!62145)

(assert (=> d!1190105 (= lt!1427492 lt!1427489)))

(assert (=> d!1190105 (isPrefix!3947 lt!1427217 lt!1427217)))

(assert (=> d!1190105 (= lt!1427489 (lemmaIsPrefixRefl!2523 lt!1427217 lt!1427217))))

(assert (=> d!1190105 (rulesValidInductive!2498 thiss!21717 rules!2999)))

(assert (=> d!1190105 (= (maxPrefix!3747 thiss!21717 rules!2999 lt!1427217) lt!1427490)))

(declare-fun b!4020042 () Bool)

(declare-fun res!1635732 () Bool)

(assert (=> b!4020042 (=> (not res!1635732) (not e!2493738))))

(assert (=> b!4020042 (= res!1635732 (= (value!216144 (_1!24213 (get!14131 lt!1427490))) (apply!10057 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427490)))) (seqFromList!5085 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427490)))))))))

(declare-fun b!4020049 () Bool)

(declare-fun lt!1427488 () Option!9274)

(declare-fun lt!1427491 () Option!9274)

(assert (=> b!4020049 (= e!2493736 (ite (and ((_ is None!9273) lt!1427488) ((_ is None!9273) lt!1427491)) None!9273 (ite ((_ is None!9273) lt!1427491) lt!1427488 (ite ((_ is None!9273) lt!1427488) lt!1427491 (ite (>= (size!32172 (_1!24213 (v!39647 lt!1427488))) (size!32172 (_1!24213 (v!39647 lt!1427491)))) lt!1427488 lt!1427491)))))))

(assert (=> b!4020049 (= lt!1427488 call!286585)))

(assert (=> b!4020049 (= lt!1427491 (maxPrefix!3747 thiss!21717 (t!333489 rules!2999) lt!1427217))))

(declare-fun b!4020050 () Bool)

(declare-fun res!1635729 () Bool)

(assert (=> b!4020050 (=> (not res!1635729) (not e!2493738))))

(assert (=> b!4020050 (= res!1635729 (< (size!32171 (_2!24213 (get!14131 lt!1427490))) (size!32171 lt!1427217)))))

(assert (= (and d!1190105 c!694654) b!4020044))

(assert (= (and d!1190105 (not c!694654)) b!4020049))

(assert (= (or b!4020044 b!4020049) bm!286580))

(assert (= (and d!1190105 (not res!1635726)) b!4020047))

(assert (= (and b!4020047 res!1635730) b!4020046))

(assert (= (and b!4020046 res!1635728) b!4020050))

(assert (= (and b!4020050 res!1635729) b!4020043))

(assert (= (and b!4020043 res!1635731) b!4020042))

(assert (= (and b!4020042 res!1635732) b!4020045))

(assert (= (and b!4020045 res!1635727) b!4020048))

(declare-fun m!4610075 () Bool)

(assert (=> b!4020045 m!4610075))

(declare-fun m!4610077 () Bool)

(assert (=> b!4020045 m!4610077))

(assert (=> b!4020045 m!4610077))

(declare-fun m!4610079 () Bool)

(assert (=> b!4020045 m!4610079))

(assert (=> b!4020045 m!4610079))

(declare-fun m!4610081 () Bool)

(assert (=> b!4020045 m!4610081))

(declare-fun m!4610083 () Bool)

(assert (=> bm!286580 m!4610083))

(assert (=> b!4020042 m!4610075))

(declare-fun m!4610085 () Bool)

(assert (=> b!4020042 m!4610085))

(assert (=> b!4020042 m!4610085))

(declare-fun m!4610087 () Bool)

(assert (=> b!4020042 m!4610087))

(assert (=> b!4020050 m!4610075))

(declare-fun m!4610089 () Bool)

(assert (=> b!4020050 m!4610089))

(assert (=> b!4020050 m!4609515))

(declare-fun m!4610091 () Bool)

(assert (=> b!4020047 m!4610091))

(assert (=> b!4020046 m!4610075))

(assert (=> b!4020046 m!4610077))

(assert (=> b!4020046 m!4610077))

(assert (=> b!4020046 m!4610079))

(declare-fun m!4610093 () Bool)

(assert (=> b!4020049 m!4610093))

(assert (=> b!4020043 m!4610075))

(assert (=> b!4020043 m!4610077))

(assert (=> b!4020043 m!4610077))

(assert (=> b!4020043 m!4610079))

(assert (=> b!4020043 m!4610079))

(declare-fun m!4610095 () Bool)

(assert (=> b!4020043 m!4610095))

(assert (=> b!4020048 m!4610075))

(declare-fun m!4610097 () Bool)

(assert (=> b!4020048 m!4610097))

(declare-fun m!4610099 () Bool)

(assert (=> d!1190105 m!4610099))

(assert (=> d!1190105 m!4608971))

(assert (=> d!1190105 m!4608973))

(assert (=> d!1190105 m!4609243))

(assert (=> b!4019341 d!1190105))

(declare-fun b!4020053 () Bool)

(declare-fun res!1635734 () Bool)

(declare-fun e!2493740 () Bool)

(assert (=> b!4020053 (=> (not res!1635734) (not e!2493740))))

(declare-fun lt!1427493 () List!43154)

(assert (=> b!4020053 (= res!1635734 (= (size!32171 lt!1427493) (+ (size!32171 prefix!494) (size!32171 suffix!1299))))))

(declare-fun b!4020051 () Bool)

(declare-fun e!2493739 () List!43154)

(assert (=> b!4020051 (= e!2493739 suffix!1299)))

(declare-fun d!1190107 () Bool)

(assert (=> d!1190107 e!2493740))

(declare-fun res!1635733 () Bool)

(assert (=> d!1190107 (=> (not res!1635733) (not e!2493740))))

(assert (=> d!1190107 (= res!1635733 (= (content!6526 lt!1427493) ((_ map or) (content!6526 prefix!494) (content!6526 suffix!1299))))))

(assert (=> d!1190107 (= lt!1427493 e!2493739)))

(declare-fun c!694655 () Bool)

(assert (=> d!1190107 (= c!694655 ((_ is Nil!43030) prefix!494))))

(assert (=> d!1190107 (= (++!11262 prefix!494 suffix!1299) lt!1427493)))

(declare-fun b!4020054 () Bool)

(assert (=> b!4020054 (= e!2493740 (or (not (= suffix!1299 Nil!43030)) (= lt!1427493 prefix!494)))))

(declare-fun b!4020052 () Bool)

(assert (=> b!4020052 (= e!2493739 (Cons!43030 (h!48450 prefix!494) (++!11262 (t!333487 prefix!494) suffix!1299)))))

(assert (= (and d!1190107 c!694655) b!4020051))

(assert (= (and d!1190107 (not c!694655)) b!4020052))

(assert (= (and d!1190107 res!1635733) b!4020053))

(assert (= (and b!4020053 res!1635734) b!4020054))

(declare-fun m!4610101 () Bool)

(assert (=> b!4020053 m!4610101))

(assert (=> b!4020053 m!4609077))

(assert (=> b!4020053 m!4608933))

(declare-fun m!4610103 () Bool)

(assert (=> d!1190107 m!4610103))

(assert (=> d!1190107 m!4609319))

(assert (=> d!1190107 m!4609995))

(declare-fun m!4610105 () Bool)

(assert (=> b!4020052 m!4610105))

(assert (=> b!4019341 d!1190107))

(declare-fun b!4020056 () Bool)

(declare-fun res!1635736 () Bool)

(declare-fun e!2493741 () Bool)

(assert (=> b!4020056 (=> (not res!1635736) (not e!2493741))))

(assert (=> b!4020056 (= res!1635736 (= (head!8527 prefix!494) (head!8527 lt!1427217)))))

(declare-fun b!4020058 () Bool)

(declare-fun e!2493742 () Bool)

(assert (=> b!4020058 (= e!2493742 (>= (size!32171 lt!1427217) (size!32171 prefix!494)))))

(declare-fun d!1190109 () Bool)

(assert (=> d!1190109 e!2493742))

(declare-fun res!1635735 () Bool)

(assert (=> d!1190109 (=> res!1635735 e!2493742)))

(declare-fun lt!1427494 () Bool)

(assert (=> d!1190109 (= res!1635735 (not lt!1427494))))

(declare-fun e!2493743 () Bool)

(assert (=> d!1190109 (= lt!1427494 e!2493743)))

(declare-fun res!1635737 () Bool)

(assert (=> d!1190109 (=> res!1635737 e!2493743)))

(assert (=> d!1190109 (= res!1635737 ((_ is Nil!43030) prefix!494))))

(assert (=> d!1190109 (= (isPrefix!3947 prefix!494 lt!1427217) lt!1427494)))

(declare-fun b!4020055 () Bool)

(assert (=> b!4020055 (= e!2493743 e!2493741)))

(declare-fun res!1635738 () Bool)

(assert (=> b!4020055 (=> (not res!1635738) (not e!2493741))))

(assert (=> b!4020055 (= res!1635738 (not ((_ is Nil!43030) lt!1427217)))))

(declare-fun b!4020057 () Bool)

(assert (=> b!4020057 (= e!2493741 (isPrefix!3947 (tail!6259 prefix!494) (tail!6259 lt!1427217)))))

(assert (= (and d!1190109 (not res!1635737)) b!4020055))

(assert (= (and b!4020055 res!1635738) b!4020056))

(assert (= (and b!4020056 res!1635736) b!4020057))

(assert (= (and d!1190109 (not res!1635735)) b!4020058))

(assert (=> b!4020056 m!4609939))

(assert (=> b!4020056 m!4609513))

(assert (=> b!4020058 m!4609515))

(assert (=> b!4020058 m!4609077))

(assert (=> b!4020057 m!4609935))

(assert (=> b!4020057 m!4609519))

(assert (=> b!4020057 m!4609935))

(assert (=> b!4020057 m!4609519))

(declare-fun m!4610107 () Bool)

(assert (=> b!4020057 m!4610107))

(assert (=> b!4019362 d!1190109))

(declare-fun b!4020060 () Bool)

(declare-fun res!1635740 () Bool)

(declare-fun e!2493744 () Bool)

(assert (=> b!4020060 (=> (not res!1635740) (not e!2493744))))

(assert (=> b!4020060 (= res!1635740 (= (head!8527 lt!1427191) (head!8527 lt!1427217)))))

(declare-fun b!4020062 () Bool)

(declare-fun e!2493745 () Bool)

(assert (=> b!4020062 (= e!2493745 (>= (size!32171 lt!1427217) (size!32171 lt!1427191)))))

(declare-fun d!1190111 () Bool)

(assert (=> d!1190111 e!2493745))

(declare-fun res!1635739 () Bool)

(assert (=> d!1190111 (=> res!1635739 e!2493745)))

(declare-fun lt!1427495 () Bool)

(assert (=> d!1190111 (= res!1635739 (not lt!1427495))))

(declare-fun e!2493746 () Bool)

(assert (=> d!1190111 (= lt!1427495 e!2493746)))

(declare-fun res!1635741 () Bool)

(assert (=> d!1190111 (=> res!1635741 e!2493746)))

(assert (=> d!1190111 (= res!1635741 ((_ is Nil!43030) lt!1427191))))

(assert (=> d!1190111 (= (isPrefix!3947 lt!1427191 lt!1427217) lt!1427495)))

(declare-fun b!4020059 () Bool)

(assert (=> b!4020059 (= e!2493746 e!2493744)))

(declare-fun res!1635742 () Bool)

(assert (=> b!4020059 (=> (not res!1635742) (not e!2493744))))

(assert (=> b!4020059 (= res!1635742 (not ((_ is Nil!43030) lt!1427217)))))

(declare-fun b!4020061 () Bool)

(assert (=> b!4020061 (= e!2493744 (isPrefix!3947 (tail!6259 lt!1427191) (tail!6259 lt!1427217)))))

(assert (= (and d!1190111 (not res!1635741)) b!4020059))

(assert (= (and b!4020059 res!1635742) b!4020060))

(assert (= (and b!4020060 res!1635740) b!4020061))

(assert (= (and d!1190111 (not res!1635739)) b!4020062))

(assert (=> b!4020060 m!4609279))

(assert (=> b!4020060 m!4609513))

(assert (=> b!4020062 m!4609515))

(assert (=> b!4020062 m!4609075))

(assert (=> b!4020061 m!4609285))

(assert (=> b!4020061 m!4609519))

(assert (=> b!4020061 m!4609285))

(assert (=> b!4020061 m!4609519))

(declare-fun m!4610109 () Bool)

(assert (=> b!4020061 m!4610109))

(assert (=> b!4019362 d!1190111))

(declare-fun d!1190113 () Bool)

(assert (=> d!1190113 (isPrefix!3947 prefix!494 (++!11262 prefix!494 suffix!1299))))

(declare-fun lt!1427496 () Unit!62145)

(assert (=> d!1190113 (= lt!1427496 (choose!24307 prefix!494 suffix!1299))))

(assert (=> d!1190113 (= (lemmaConcatTwoListThenFirstIsPrefix!2788 prefix!494 suffix!1299) lt!1427496)))

(declare-fun bs!589779 () Bool)

(assert (= bs!589779 d!1190113))

(assert (=> bs!589779 m!4608961))

(assert (=> bs!589779 m!4608961))

(declare-fun m!4610111 () Bool)

(assert (=> bs!589779 m!4610111))

(declare-fun m!4610113 () Bool)

(assert (=> bs!589779 m!4610113))

(assert (=> b!4019362 d!1190113))

(declare-fun b!4020064 () Bool)

(declare-fun res!1635744 () Bool)

(declare-fun e!2493747 () Bool)

(assert (=> b!4020064 (=> (not res!1635744) (not e!2493747))))

(assert (=> b!4020064 (= res!1635744 (= (head!8527 lt!1427191) (head!8527 lt!1427199)))))

(declare-fun b!4020066 () Bool)

(declare-fun e!2493748 () Bool)

(assert (=> b!4020066 (= e!2493748 (>= (size!32171 lt!1427199) (size!32171 lt!1427191)))))

(declare-fun d!1190115 () Bool)

(assert (=> d!1190115 e!2493748))

(declare-fun res!1635743 () Bool)

(assert (=> d!1190115 (=> res!1635743 e!2493748)))

(declare-fun lt!1427497 () Bool)

(assert (=> d!1190115 (= res!1635743 (not lt!1427497))))

(declare-fun e!2493749 () Bool)

(assert (=> d!1190115 (= lt!1427497 e!2493749)))

(declare-fun res!1635745 () Bool)

(assert (=> d!1190115 (=> res!1635745 e!2493749)))

(assert (=> d!1190115 (= res!1635745 ((_ is Nil!43030) lt!1427191))))

(assert (=> d!1190115 (= (isPrefix!3947 lt!1427191 lt!1427199) lt!1427497)))

(declare-fun b!4020063 () Bool)

(assert (=> b!4020063 (= e!2493749 e!2493747)))

(declare-fun res!1635746 () Bool)

(assert (=> b!4020063 (=> (not res!1635746) (not e!2493747))))

(assert (=> b!4020063 (= res!1635746 (not ((_ is Nil!43030) lt!1427199)))))

(declare-fun b!4020065 () Bool)

(assert (=> b!4020065 (= e!2493747 (isPrefix!3947 (tail!6259 lt!1427191) (tail!6259 lt!1427199)))))

(assert (= (and d!1190115 (not res!1635745)) b!4020063))

(assert (= (and b!4020063 res!1635746) b!4020064))

(assert (= (and b!4020064 res!1635744) b!4020065))

(assert (= (and d!1190115 (not res!1635743)) b!4020066))

(assert (=> b!4020064 m!4609279))

(declare-fun m!4610115 () Bool)

(assert (=> b!4020064 m!4610115))

(declare-fun m!4610117 () Bool)

(assert (=> b!4020066 m!4610117))

(assert (=> b!4020066 m!4609075))

(assert (=> b!4020065 m!4609285))

(declare-fun m!4610119 () Bool)

(assert (=> b!4020065 m!4610119))

(assert (=> b!4020065 m!4609285))

(assert (=> b!4020065 m!4610119))

(declare-fun m!4610121 () Bool)

(assert (=> b!4020065 m!4610121))

(assert (=> b!4019362 d!1190115))

(declare-fun d!1190117 () Bool)

(assert (=> d!1190117 (isPrefix!3947 lt!1427191 (++!11262 lt!1427191 suffixResult!105))))

(declare-fun lt!1427498 () Unit!62145)

(assert (=> d!1190117 (= lt!1427498 (choose!24307 lt!1427191 suffixResult!105))))

(assert (=> d!1190117 (= (lemmaConcatTwoListThenFirstIsPrefix!2788 lt!1427191 suffixResult!105) lt!1427498)))

(declare-fun bs!589780 () Bool)

(assert (= bs!589780 d!1190117))

(assert (=> bs!589780 m!4609033))

(assert (=> bs!589780 m!4609033))

(declare-fun m!4610123 () Bool)

(assert (=> bs!589780 m!4610123))

(declare-fun m!4610125 () Bool)

(assert (=> bs!589780 m!4610125))

(assert (=> b!4019362 d!1190117))

(declare-fun b!4020069 () Bool)

(declare-fun res!1635748 () Bool)

(declare-fun e!2493751 () Bool)

(assert (=> b!4020069 (=> (not res!1635748) (not e!2493751))))

(declare-fun lt!1427499 () List!43154)

(assert (=> b!4020069 (= res!1635748 (= (size!32171 lt!1427499) (+ (size!32171 lt!1427181) (size!32171 lt!1427214))))))

(declare-fun b!4020067 () Bool)

(declare-fun e!2493750 () List!43154)

(assert (=> b!4020067 (= e!2493750 lt!1427214)))

(declare-fun d!1190119 () Bool)

(assert (=> d!1190119 e!2493751))

(declare-fun res!1635747 () Bool)

(assert (=> d!1190119 (=> (not res!1635747) (not e!2493751))))

(assert (=> d!1190119 (= res!1635747 (= (content!6526 lt!1427499) ((_ map or) (content!6526 lt!1427181) (content!6526 lt!1427214))))))

(assert (=> d!1190119 (= lt!1427499 e!2493750)))

(declare-fun c!694656 () Bool)

(assert (=> d!1190119 (= c!694656 ((_ is Nil!43030) lt!1427181))))

(assert (=> d!1190119 (= (++!11262 lt!1427181 lt!1427214) lt!1427499)))

(declare-fun b!4020070 () Bool)

(assert (=> b!4020070 (= e!2493751 (or (not (= lt!1427214 Nil!43030)) (= lt!1427499 lt!1427181)))))

(declare-fun b!4020068 () Bool)

(assert (=> b!4020068 (= e!2493750 (Cons!43030 (h!48450 lt!1427181) (++!11262 (t!333487 lt!1427181) lt!1427214)))))

(assert (= (and d!1190119 c!694656) b!4020067))

(assert (= (and d!1190119 (not c!694656)) b!4020068))

(assert (= (and d!1190119 res!1635747) b!4020069))

(assert (= (and b!4020069 res!1635748) b!4020070))

(declare-fun m!4610127 () Bool)

(assert (=> b!4020069 m!4610127))

(assert (=> b!4020069 m!4609027))

(declare-fun m!4610129 () Bool)

(assert (=> b!4020069 m!4610129))

(declare-fun m!4610131 () Bool)

(assert (=> d!1190119 m!4610131))

(assert (=> d!1190119 m!4609621))

(declare-fun m!4610133 () Bool)

(assert (=> d!1190119 m!4610133))

(declare-fun m!4610135 () Bool)

(assert (=> b!4020068 m!4610135))

(assert (=> b!4019340 d!1190119))

(declare-fun d!1190121 () Bool)

(declare-fun lt!1427500 () List!43154)

(assert (=> d!1190121 (= (++!11262 lt!1427181 lt!1427500) lt!1427222)))

(declare-fun e!2493752 () List!43154)

(assert (=> d!1190121 (= lt!1427500 e!2493752)))

(declare-fun c!694657 () Bool)

(assert (=> d!1190121 (= c!694657 ((_ is Cons!43030) lt!1427181))))

(assert (=> d!1190121 (>= (size!32171 lt!1427222) (size!32171 lt!1427181))))

(assert (=> d!1190121 (= (getSuffix!2372 lt!1427222 lt!1427181) lt!1427500)))

(declare-fun b!4020071 () Bool)

(assert (=> b!4020071 (= e!2493752 (getSuffix!2372 (tail!6259 lt!1427222) (t!333487 lt!1427181)))))

(declare-fun b!4020072 () Bool)

(assert (=> b!4020072 (= e!2493752 lt!1427222)))

(assert (= (and d!1190121 c!694657) b!4020071))

(assert (= (and d!1190121 (not c!694657)) b!4020072))

(declare-fun m!4610137 () Bool)

(assert (=> d!1190121 m!4610137))

(assert (=> d!1190121 m!4609209))

(assert (=> d!1190121 m!4609027))

(assert (=> b!4020071 m!4610041))

(assert (=> b!4020071 m!4610041))

(declare-fun m!4610139 () Bool)

(assert (=> b!4020071 m!4610139))

(assert (=> b!4019340 d!1190121))

(declare-fun b!4020083 () Bool)

(declare-fun e!2493759 () Bool)

(declare-fun e!2493760 () Bool)

(assert (=> b!4020083 (= e!2493759 e!2493760)))

(declare-fun c!694662 () Bool)

(assert (=> b!4020083 (= c!694662 ((_ is IntegerValue!21271) (value!216144 token!484)))))

(declare-fun b!4020084 () Bool)

(declare-fun inv!16 (TokenValue!7090) Bool)

(assert (=> b!4020084 (= e!2493759 (inv!16 (value!216144 token!484)))))

(declare-fun b!4020085 () Bool)

(declare-fun inv!17 (TokenValue!7090) Bool)

(assert (=> b!4020085 (= e!2493760 (inv!17 (value!216144 token!484)))))

(declare-fun b!4020086 () Bool)

(declare-fun res!1635751 () Bool)

(declare-fun e!2493761 () Bool)

(assert (=> b!4020086 (=> res!1635751 e!2493761)))

(assert (=> b!4020086 (= res!1635751 (not ((_ is IntegerValue!21272) (value!216144 token!484))))))

(assert (=> b!4020086 (= e!2493760 e!2493761)))

(declare-fun d!1190123 () Bool)

(declare-fun c!694663 () Bool)

(assert (=> d!1190123 (= c!694663 ((_ is IntegerValue!21270) (value!216144 token!484)))))

(assert (=> d!1190123 (= (inv!21 (value!216144 token!484)) e!2493759)))

(declare-fun b!4020087 () Bool)

(declare-fun inv!15 (TokenValue!7090) Bool)

(assert (=> b!4020087 (= e!2493761 (inv!15 (value!216144 token!484)))))

(assert (= (and d!1190123 c!694663) b!4020084))

(assert (= (and d!1190123 (not c!694663)) b!4020083))

(assert (= (and b!4020083 c!694662) b!4020085))

(assert (= (and b!4020083 (not c!694662)) b!4020086))

(assert (= (and b!4020086 (not res!1635751)) b!4020087))

(declare-fun m!4610141 () Bool)

(assert (=> b!4020084 m!4610141))

(declare-fun m!4610143 () Bool)

(assert (=> b!4020085 m!4610143))

(declare-fun m!4610145 () Bool)

(assert (=> b!4020087 m!4610145))

(assert (=> b!4019342 d!1190123))

(declare-fun b!4020089 () Bool)

(declare-fun res!1635753 () Bool)

(declare-fun e!2493762 () Bool)

(assert (=> b!4020089 (=> (not res!1635753) (not e!2493762))))

(assert (=> b!4020089 (= res!1635753 (= (head!8527 lt!1427191) (head!8527 lt!1427219)))))

(declare-fun b!4020091 () Bool)

(declare-fun e!2493763 () Bool)

(assert (=> b!4020091 (= e!2493763 (>= (size!32171 lt!1427219) (size!32171 lt!1427191)))))

(declare-fun d!1190125 () Bool)

(assert (=> d!1190125 e!2493763))

(declare-fun res!1635752 () Bool)

(assert (=> d!1190125 (=> res!1635752 e!2493763)))

(declare-fun lt!1427501 () Bool)

(assert (=> d!1190125 (= res!1635752 (not lt!1427501))))

(declare-fun e!2493764 () Bool)

(assert (=> d!1190125 (= lt!1427501 e!2493764)))

(declare-fun res!1635754 () Bool)

(assert (=> d!1190125 (=> res!1635754 e!2493764)))

(assert (=> d!1190125 (= res!1635754 ((_ is Nil!43030) lt!1427191))))

(assert (=> d!1190125 (= (isPrefix!3947 lt!1427191 lt!1427219) lt!1427501)))

(declare-fun b!4020088 () Bool)

(assert (=> b!4020088 (= e!2493764 e!2493762)))

(declare-fun res!1635755 () Bool)

(assert (=> b!4020088 (=> (not res!1635755) (not e!2493762))))

(assert (=> b!4020088 (= res!1635755 (not ((_ is Nil!43030) lt!1427219)))))

(declare-fun b!4020090 () Bool)

(assert (=> b!4020090 (= e!2493762 (isPrefix!3947 (tail!6259 lt!1427191) (tail!6259 lt!1427219)))))

(assert (= (and d!1190125 (not res!1635754)) b!4020088))

(assert (= (and b!4020088 res!1635755) b!4020089))

(assert (= (and b!4020089 res!1635753) b!4020090))

(assert (= (and d!1190125 (not res!1635752)) b!4020091))

(assert (=> b!4020089 m!4609279))

(declare-fun m!4610147 () Bool)

(assert (=> b!4020089 m!4610147))

(declare-fun m!4610149 () Bool)

(assert (=> b!4020091 m!4610149))

(assert (=> b!4020091 m!4609075))

(assert (=> b!4020090 m!4609285))

(declare-fun m!4610151 () Bool)

(assert (=> b!4020090 m!4610151))

(assert (=> b!4020090 m!4609285))

(assert (=> b!4020090 m!4610151))

(declare-fun m!4610153 () Bool)

(assert (=> b!4020090 m!4610153))

(assert (=> b!4019355 d!1190125))

(declare-fun d!1190127 () Bool)

(assert (=> d!1190127 (= (maxPrefixOneRule!2767 thiss!21717 (rule!9912 token!484) lt!1427217) (Some!9273 (tuple2!42159 (Token!12859 (apply!10057 (transformation!6860 (rule!9912 token!484)) (seqFromList!5085 lt!1427191)) (rule!9912 token!484) (size!32171 lt!1427191) lt!1427191) suffixResult!105)))))

(declare-fun lt!1427502 () Unit!62145)

(assert (=> d!1190127 (= lt!1427502 (choose!24315 thiss!21717 rules!2999 lt!1427191 lt!1427217 suffixResult!105 (rule!9912 token!484)))))

(assert (=> d!1190127 (not (isEmpty!25692 rules!2999))))

(assert (=> d!1190127 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1585 thiss!21717 rules!2999 lt!1427191 lt!1427217 suffixResult!105 (rule!9912 token!484)) lt!1427502)))

(declare-fun bs!589781 () Bool)

(assert (= bs!589781 d!1190127))

(assert (=> bs!589781 m!4609031))

(assert (=> bs!589781 m!4609075))

(assert (=> bs!589781 m!4609061))

(assert (=> bs!589781 m!4609065))

(assert (=> bs!589781 m!4609061))

(assert (=> bs!589781 m!4609067))

(declare-fun m!4610155 () Bool)

(assert (=> bs!589781 m!4610155))

(assert (=> b!4019355 d!1190127))

(declare-fun d!1190129 () Bool)

(assert (=> d!1190129 (= lt!1427216 suffixResult!105)))

(declare-fun lt!1427503 () Unit!62145)

(assert (=> d!1190129 (= lt!1427503 (choose!24306 lt!1427191 lt!1427216 lt!1427191 suffixResult!105 lt!1427217))))

(assert (=> d!1190129 (isPrefix!3947 lt!1427191 lt!1427217)))

(assert (=> d!1190129 (= (lemmaSamePrefixThenSameSuffix!2118 lt!1427191 lt!1427216 lt!1427191 suffixResult!105 lt!1427217) lt!1427503)))

(declare-fun bs!589782 () Bool)

(assert (= bs!589782 d!1190129))

(declare-fun m!4610157 () Bool)

(assert (=> bs!589782 m!4610157))

(assert (=> bs!589782 m!4609085))

(assert (=> b!4019355 d!1190129))

(declare-fun d!1190131 () Bool)

(assert (=> d!1190131 (= (seqFromList!5085 lt!1427191) (fromListB!2324 lt!1427191))))

(declare-fun bs!589783 () Bool)

(assert (= bs!589783 d!1190131))

(declare-fun m!4610159 () Bool)

(assert (=> bs!589783 m!4610159))

(assert (=> b!4019355 d!1190131))

(declare-fun d!1190133 () Bool)

(assert (=> d!1190133 (isPrefix!3947 lt!1427191 (++!11262 lt!1427191 lt!1427216))))

(declare-fun lt!1427504 () Unit!62145)

(assert (=> d!1190133 (= lt!1427504 (choose!24307 lt!1427191 lt!1427216))))

(assert (=> d!1190133 (= (lemmaConcatTwoListThenFirstIsPrefix!2788 lt!1427191 lt!1427216) lt!1427504)))

(declare-fun bs!589784 () Bool)

(assert (= bs!589784 d!1190133))

(assert (=> bs!589784 m!4609047))

(assert (=> bs!589784 m!4609047))

(declare-fun m!4610161 () Bool)

(assert (=> bs!589784 m!4610161))

(declare-fun m!4610163 () Bool)

(assert (=> bs!589784 m!4610163))

(assert (=> b!4019355 d!1190133))

(declare-fun b!4020092 () Bool)

(declare-fun res!1635759 () Bool)

(declare-fun e!2493766 () Bool)

(assert (=> b!4020092 (=> (not res!1635759) (not e!2493766))))

(declare-fun lt!1427506 () Option!9274)

(assert (=> b!4020092 (= res!1635759 (= (value!216144 (_1!24213 (get!14131 lt!1427506))) (apply!10057 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427506)))) (seqFromList!5085 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427506)))))))))

(declare-fun b!4020093 () Bool)

(declare-fun e!2493768 () Bool)

(assert (=> b!4020093 (= e!2493768 e!2493766)))

(declare-fun res!1635757 () Bool)

(assert (=> b!4020093 (=> (not res!1635757) (not e!2493766))))

(assert (=> b!4020093 (= res!1635757 (matchR!5726 (regex!6860 (rule!9912 token!484)) (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427506))))))))

(declare-fun b!4020094 () Bool)

(declare-fun e!2493765 () Option!9274)

(declare-fun lt!1427507 () tuple2!42162)

(assert (=> b!4020094 (= e!2493765 (Some!9273 (tuple2!42159 (Token!12859 (apply!10057 (transformation!6860 (rule!9912 token!484)) (seqFromList!5085 (_1!24215 lt!1427507))) (rule!9912 token!484) (size!32174 (seqFromList!5085 (_1!24215 lt!1427507))) (_1!24215 lt!1427507)) (_2!24215 lt!1427507))))))

(declare-fun lt!1427508 () Unit!62145)

(assert (=> b!4020094 (= lt!1427508 (longestMatchIsAcceptedByMatchOrIsEmpty!1340 (regex!6860 (rule!9912 token!484)) lt!1427217))))

(declare-fun res!1635758 () Bool)

(assert (=> b!4020094 (= res!1635758 (isEmpty!25696 (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 token!484)) Nil!43030 (size!32171 Nil!43030) lt!1427217 lt!1427217 (size!32171 lt!1427217)))))))

(declare-fun e!2493767 () Bool)

(assert (=> b!4020094 (=> res!1635758 e!2493767)))

(assert (=> b!4020094 e!2493767))

(declare-fun lt!1427505 () Unit!62145)

(assert (=> b!4020094 (= lt!1427505 lt!1427508)))

(declare-fun lt!1427509 () Unit!62145)

(assert (=> b!4020094 (= lt!1427509 (lemmaSemiInverse!1887 (transformation!6860 (rule!9912 token!484)) (seqFromList!5085 (_1!24215 lt!1427507))))))

(declare-fun b!4020095 () Bool)

(declare-fun res!1635760 () Bool)

(assert (=> b!4020095 (=> (not res!1635760) (not e!2493766))))

(assert (=> b!4020095 (= res!1635760 (= (rule!9912 (_1!24213 (get!14131 lt!1427506))) (rule!9912 token!484)))))

(declare-fun b!4020096 () Bool)

(declare-fun res!1635761 () Bool)

(assert (=> b!4020096 (=> (not res!1635761) (not e!2493766))))

(assert (=> b!4020096 (= res!1635761 (= (++!11262 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427506)))) (_2!24213 (get!14131 lt!1427506))) lt!1427217))))

(declare-fun b!4020097 () Bool)

(assert (=> b!4020097 (= e!2493767 (matchR!5726 (regex!6860 (rule!9912 token!484)) (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 token!484)) Nil!43030 (size!32171 Nil!43030) lt!1427217 lt!1427217 (size!32171 lt!1427217)))))))

(declare-fun b!4020098 () Bool)

(assert (=> b!4020098 (= e!2493765 None!9273)))

(declare-fun b!4020100 () Bool)

(assert (=> b!4020100 (= e!2493766 (= (size!32172 (_1!24213 (get!14131 lt!1427506))) (size!32171 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427506))))))))

(declare-fun b!4020099 () Bool)

(declare-fun res!1635762 () Bool)

(assert (=> b!4020099 (=> (not res!1635762) (not e!2493766))))

(assert (=> b!4020099 (= res!1635762 (< (size!32171 (_2!24213 (get!14131 lt!1427506))) (size!32171 lt!1427217)))))

(declare-fun d!1190135 () Bool)

(assert (=> d!1190135 e!2493768))

(declare-fun res!1635756 () Bool)

(assert (=> d!1190135 (=> res!1635756 e!2493768)))

(assert (=> d!1190135 (= res!1635756 (isEmpty!25695 lt!1427506))))

(assert (=> d!1190135 (= lt!1427506 e!2493765)))

(declare-fun c!694664 () Bool)

(assert (=> d!1190135 (= c!694664 (isEmpty!25696 (_1!24215 lt!1427507)))))

(assert (=> d!1190135 (= lt!1427507 (findLongestMatch!1280 (regex!6860 (rule!9912 token!484)) lt!1427217))))

(assert (=> d!1190135 (ruleValid!2792 thiss!21717 (rule!9912 token!484))))

(assert (=> d!1190135 (= (maxPrefixOneRule!2767 thiss!21717 (rule!9912 token!484) lt!1427217) lt!1427506)))

(assert (= (and d!1190135 c!694664) b!4020098))

(assert (= (and d!1190135 (not c!694664)) b!4020094))

(assert (= (and b!4020094 (not res!1635758)) b!4020097))

(assert (= (and d!1190135 (not res!1635756)) b!4020093))

(assert (= (and b!4020093 res!1635757) b!4020096))

(assert (= (and b!4020096 res!1635761) b!4020099))

(assert (= (and b!4020099 res!1635762) b!4020095))

(assert (= (and b!4020095 res!1635760) b!4020092))

(assert (= (and b!4020092 res!1635759) b!4020100))

(declare-fun m!4610165 () Bool)

(assert (=> b!4020100 m!4610165))

(declare-fun m!4610167 () Bool)

(assert (=> b!4020100 m!4610167))

(assert (=> b!4020093 m!4610165))

(declare-fun m!4610169 () Bool)

(assert (=> b!4020093 m!4610169))

(assert (=> b!4020093 m!4610169))

(declare-fun m!4610171 () Bool)

(assert (=> b!4020093 m!4610171))

(assert (=> b!4020093 m!4610171))

(declare-fun m!4610173 () Bool)

(assert (=> b!4020093 m!4610173))

(assert (=> b!4020099 m!4610165))

(declare-fun m!4610175 () Bool)

(assert (=> b!4020099 m!4610175))

(assert (=> b!4020099 m!4609515))

(assert (=> b!4020096 m!4610165))

(assert (=> b!4020096 m!4610169))

(assert (=> b!4020096 m!4610169))

(assert (=> b!4020096 m!4610171))

(assert (=> b!4020096 m!4610171))

(declare-fun m!4610177 () Bool)

(assert (=> b!4020096 m!4610177))

(declare-fun m!4610179 () Bool)

(assert (=> d!1190135 m!4610179))

(declare-fun m!4610181 () Bool)

(assert (=> d!1190135 m!4610181))

(declare-fun m!4610183 () Bool)

(assert (=> d!1190135 m!4610183))

(assert (=> d!1190135 m!4609037))

(declare-fun m!4610185 () Bool)

(assert (=> b!4020094 m!4610185))

(declare-fun m!4610187 () Bool)

(assert (=> b!4020094 m!4610187))

(declare-fun m!4610189 () Bool)

(assert (=> b!4020094 m!4610189))

(assert (=> b!4020094 m!4610187))

(assert (=> b!4020094 m!4610187))

(declare-fun m!4610191 () Bool)

(assert (=> b!4020094 m!4610191))

(declare-fun m!4610193 () Bool)

(assert (=> b!4020094 m!4610193))

(assert (=> b!4020094 m!4609515))

(assert (=> b!4020094 m!4610187))

(declare-fun m!4610195 () Bool)

(assert (=> b!4020094 m!4610195))

(assert (=> b!4020094 m!4609879))

(assert (=> b!4020094 m!4609879))

(assert (=> b!4020094 m!4609515))

(declare-fun m!4610197 () Bool)

(assert (=> b!4020094 m!4610197))

(assert (=> b!4020092 m!4610165))

(declare-fun m!4610199 () Bool)

(assert (=> b!4020092 m!4610199))

(assert (=> b!4020092 m!4610199))

(declare-fun m!4610201 () Bool)

(assert (=> b!4020092 m!4610201))

(assert (=> b!4020097 m!4609879))

(assert (=> b!4020097 m!4609515))

(assert (=> b!4020097 m!4609879))

(assert (=> b!4020097 m!4609515))

(assert (=> b!4020097 m!4610197))

(declare-fun m!4610203 () Bool)

(assert (=> b!4020097 m!4610203))

(assert (=> b!4020095 m!4610165))

(assert (=> b!4019355 d!1190135))

(declare-fun d!1190137 () Bool)

(assert (=> d!1190137 (= (apply!10057 (transformation!6860 (rule!9912 token!484)) (seqFromList!5085 lt!1427191)) (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 token!484))) (seqFromList!5085 lt!1427191)))))

(declare-fun b_lambda!117277 () Bool)

(assert (=> (not b_lambda!117277) (not d!1190137)))

(declare-fun t!333527 () Bool)

(declare-fun tb!241621 () Bool)

(assert (=> (and b!4019334 (= (toValue!9368 (transformation!6860 (h!48452 rules!2999))) (toValue!9368 (transformation!6860 (rule!9912 token!484)))) t!333527) tb!241621))

(declare-fun result!292852 () Bool)

(assert (=> tb!241621 (= result!292852 (inv!21 (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 token!484))) (seqFromList!5085 lt!1427191))))))

(declare-fun m!4610205 () Bool)

(assert (=> tb!241621 m!4610205))

(assert (=> d!1190137 t!333527))

(declare-fun b_and!308803 () Bool)

(assert (= b_and!308783 (and (=> t!333527 result!292852) b_and!308803)))

(declare-fun t!333529 () Bool)

(declare-fun tb!241623 () Bool)

(assert (=> (and b!4019363 (= (toValue!9368 (transformation!6860 (rule!9912 token!484))) (toValue!9368 (transformation!6860 (rule!9912 token!484)))) t!333529) tb!241623))

(declare-fun result!292854 () Bool)

(assert (= result!292854 result!292852))

(assert (=> d!1190137 t!333529))

(declare-fun b_and!308805 () Bool)

(assert (= b_and!308785 (and (=> t!333529 result!292854) b_and!308805)))

(assert (=> d!1190137 m!4609061))

(declare-fun m!4610207 () Bool)

(assert (=> d!1190137 m!4610207))

(assert (=> b!4019355 d!1190137))

(declare-fun d!1190139 () Bool)

(declare-fun lt!1427510 () Int)

(assert (=> d!1190139 (>= lt!1427510 0)))

(declare-fun e!2493770 () Int)

(assert (=> d!1190139 (= lt!1427510 e!2493770)))

(declare-fun c!694665 () Bool)

(assert (=> d!1190139 (= c!694665 ((_ is Nil!43030) suffix!1299))))

(assert (=> d!1190139 (= (size!32171 suffix!1299) lt!1427510)))

(declare-fun b!4020101 () Bool)

(assert (=> b!4020101 (= e!2493770 0)))

(declare-fun b!4020102 () Bool)

(assert (=> b!4020102 (= e!2493770 (+ 1 (size!32171 (t!333487 suffix!1299))))))

(assert (= (and d!1190139 c!694665) b!4020101))

(assert (= (and d!1190139 (not c!694665)) b!4020102))

(declare-fun m!4610209 () Bool)

(assert (=> b!4020102 m!4610209))

(assert (=> b!4019335 d!1190139))

(declare-fun d!1190141 () Bool)

(declare-fun lt!1427511 () Int)

(assert (=> d!1190141 (>= lt!1427511 0)))

(declare-fun e!2493771 () Int)

(assert (=> d!1190141 (= lt!1427511 e!2493771)))

(declare-fun c!694666 () Bool)

(assert (=> d!1190141 (= c!694666 ((_ is Nil!43030) newSuffix!27))))

(assert (=> d!1190141 (= (size!32171 newSuffix!27) lt!1427511)))

(declare-fun b!4020103 () Bool)

(assert (=> b!4020103 (= e!2493771 0)))

(declare-fun b!4020104 () Bool)

(assert (=> b!4020104 (= e!2493771 (+ 1 (size!32171 (t!333487 newSuffix!27))))))

(assert (= (and d!1190141 c!694666) b!4020103))

(assert (= (and d!1190141 (not c!694666)) b!4020104))

(declare-fun m!4610211 () Bool)

(assert (=> b!4020104 m!4610211))

(assert (=> b!4019335 d!1190141))

(declare-fun b!4020105 () Bool)

(declare-fun e!2493776 () Bool)

(declare-fun e!2493774 () Bool)

(assert (=> b!4020105 (= e!2493776 e!2493774)))

(declare-fun res!1635767 () Bool)

(assert (=> b!4020105 (=> res!1635767 e!2493774)))

(declare-fun call!286586 () Bool)

(assert (=> b!4020105 (= res!1635767 call!286586)))

(declare-fun b!4020106 () Bool)

(declare-fun res!1635770 () Bool)

(declare-fun e!2493773 () Bool)

(assert (=> b!4020106 (=> (not res!1635770) (not e!2493773))))

(assert (=> b!4020106 (= res!1635770 (isEmpty!25696 (tail!6259 lt!1427191)))))

(declare-fun b!4020107 () Bool)

(declare-fun e!2493775 () Bool)

(declare-fun lt!1427512 () Bool)

(assert (=> b!4020107 (= e!2493775 (not lt!1427512))))

(declare-fun b!4020108 () Bool)

(declare-fun res!1635765 () Bool)

(declare-fun e!2493772 () Bool)

(assert (=> b!4020108 (=> res!1635765 e!2493772)))

(assert (=> b!4020108 (= res!1635765 (not ((_ is ElementMatch!11765) (regex!6860 (rule!9912 token!484)))))))

(assert (=> b!4020108 (= e!2493775 e!2493772)))

(declare-fun b!4020110 () Bool)

(declare-fun res!1635764 () Bool)

(assert (=> b!4020110 (=> res!1635764 e!2493774)))

(assert (=> b!4020110 (= res!1635764 (not (isEmpty!25696 (tail!6259 lt!1427191))))))

(declare-fun b!4020111 () Bool)

(declare-fun res!1635768 () Bool)

(assert (=> b!4020111 (=> (not res!1635768) (not e!2493773))))

(assert (=> b!4020111 (= res!1635768 (not call!286586))))

(declare-fun b!4020112 () Bool)

(declare-fun res!1635769 () Bool)

(assert (=> b!4020112 (=> res!1635769 e!2493772)))

(assert (=> b!4020112 (= res!1635769 e!2493773)))

(declare-fun res!1635763 () Bool)

(assert (=> b!4020112 (=> (not res!1635763) (not e!2493773))))

(assert (=> b!4020112 (= res!1635763 lt!1427512)))

(declare-fun b!4020113 () Bool)

(assert (=> b!4020113 (= e!2493774 (not (= (head!8527 lt!1427191) (c!694547 (regex!6860 (rule!9912 token!484))))))))

(declare-fun b!4020114 () Bool)

(declare-fun e!2493777 () Bool)

(assert (=> b!4020114 (= e!2493777 (nullable!4126 (regex!6860 (rule!9912 token!484))))))

(declare-fun b!4020115 () Bool)

(declare-fun e!2493778 () Bool)

(assert (=> b!4020115 (= e!2493778 e!2493775)))

(declare-fun c!694669 () Bool)

(assert (=> b!4020115 (= c!694669 ((_ is EmptyLang!11765) (regex!6860 (rule!9912 token!484))))))

(declare-fun b!4020116 () Bool)

(assert (=> b!4020116 (= e!2493772 e!2493776)))

(declare-fun res!1635766 () Bool)

(assert (=> b!4020116 (=> (not res!1635766) (not e!2493776))))

(assert (=> b!4020116 (= res!1635766 (not lt!1427512))))

(declare-fun b!4020117 () Bool)

(assert (=> b!4020117 (= e!2493777 (matchR!5726 (derivativeStep!3535 (regex!6860 (rule!9912 token!484)) (head!8527 lt!1427191)) (tail!6259 lt!1427191)))))

(declare-fun bm!286581 () Bool)

(assert (=> bm!286581 (= call!286586 (isEmpty!25696 lt!1427191))))

(declare-fun b!4020118 () Bool)

(assert (=> b!4020118 (= e!2493778 (= lt!1427512 call!286586))))

(declare-fun b!4020109 () Bool)

(assert (=> b!4020109 (= e!2493773 (= (head!8527 lt!1427191) (c!694547 (regex!6860 (rule!9912 token!484)))))))

(declare-fun d!1190143 () Bool)

(assert (=> d!1190143 e!2493778))

(declare-fun c!694667 () Bool)

(assert (=> d!1190143 (= c!694667 ((_ is EmptyExpr!11765) (regex!6860 (rule!9912 token!484))))))

(assert (=> d!1190143 (= lt!1427512 e!2493777)))

(declare-fun c!694668 () Bool)

(assert (=> d!1190143 (= c!694668 (isEmpty!25696 lt!1427191))))

(assert (=> d!1190143 (validRegex!5326 (regex!6860 (rule!9912 token!484)))))

(assert (=> d!1190143 (= (matchR!5726 (regex!6860 (rule!9912 token!484)) lt!1427191) lt!1427512)))

(assert (= (and d!1190143 c!694668) b!4020114))

(assert (= (and d!1190143 (not c!694668)) b!4020117))

(assert (= (and d!1190143 c!694667) b!4020118))

(assert (= (and d!1190143 (not c!694667)) b!4020115))

(assert (= (and b!4020115 c!694669) b!4020107))

(assert (= (and b!4020115 (not c!694669)) b!4020108))

(assert (= (and b!4020108 (not res!1635765)) b!4020112))

(assert (= (and b!4020112 res!1635763) b!4020111))

(assert (= (and b!4020111 res!1635768) b!4020106))

(assert (= (and b!4020106 res!1635770) b!4020109))

(assert (= (and b!4020112 (not res!1635769)) b!4020116))

(assert (= (and b!4020116 res!1635766) b!4020105))

(assert (= (and b!4020105 (not res!1635767)) b!4020110))

(assert (= (and b!4020110 (not res!1635764)) b!4020113))

(assert (= (or b!4020118 b!4020105 b!4020111) bm!286581))

(assert (=> b!4020113 m!4609279))

(assert (=> b!4020109 m!4609279))

(assert (=> b!4020106 m!4609285))

(assert (=> b!4020106 m!4609285))

(assert (=> b!4020106 m!4609499))

(declare-fun m!4610213 () Bool)

(assert (=> b!4020114 m!4610213))

(assert (=> bm!286581 m!4609503))

(assert (=> b!4020110 m!4609285))

(assert (=> b!4020110 m!4609285))

(assert (=> b!4020110 m!4609499))

(assert (=> d!1190143 m!4609503))

(declare-fun m!4610215 () Bool)

(assert (=> d!1190143 m!4610215))

(assert (=> b!4020117 m!4609279))

(assert (=> b!4020117 m!4609279))

(declare-fun m!4610217 () Bool)

(assert (=> b!4020117 m!4610217))

(assert (=> b!4020117 m!4609285))

(assert (=> b!4020117 m!4610217))

(assert (=> b!4020117 m!4609285))

(declare-fun m!4610219 () Bool)

(assert (=> b!4020117 m!4610219))

(assert (=> b!4019356 d!1190143))

(declare-fun b!4020120 () Bool)

(declare-fun res!1635772 () Bool)

(declare-fun e!2493779 () Bool)

(assert (=> b!4020120 (=> (not res!1635772) (not e!2493779))))

(assert (=> b!4020120 (= res!1635772 (= (head!8527 lt!1427191) (head!8527 lt!1427222)))))

(declare-fun b!4020122 () Bool)

(declare-fun e!2493780 () Bool)

(assert (=> b!4020122 (= e!2493780 (>= (size!32171 lt!1427222) (size!32171 lt!1427191)))))

(declare-fun d!1190145 () Bool)

(assert (=> d!1190145 e!2493780))

(declare-fun res!1635771 () Bool)

(assert (=> d!1190145 (=> res!1635771 e!2493780)))

(declare-fun lt!1427513 () Bool)

(assert (=> d!1190145 (= res!1635771 (not lt!1427513))))

(declare-fun e!2493781 () Bool)

(assert (=> d!1190145 (= lt!1427513 e!2493781)))

(declare-fun res!1635773 () Bool)

(assert (=> d!1190145 (=> res!1635773 e!2493781)))

(assert (=> d!1190145 (= res!1635773 ((_ is Nil!43030) lt!1427191))))

(assert (=> d!1190145 (= (isPrefix!3947 lt!1427191 lt!1427222) lt!1427513)))

(declare-fun b!4020119 () Bool)

(assert (=> b!4020119 (= e!2493781 e!2493779)))

(declare-fun res!1635774 () Bool)

(assert (=> b!4020119 (=> (not res!1635774) (not e!2493779))))

(assert (=> b!4020119 (= res!1635774 (not ((_ is Nil!43030) lt!1427222)))))

(declare-fun b!4020121 () Bool)

(assert (=> b!4020121 (= e!2493779 (isPrefix!3947 (tail!6259 lt!1427191) (tail!6259 lt!1427222)))))

(assert (= (and d!1190145 (not res!1635773)) b!4020119))

(assert (= (and b!4020119 res!1635774) b!4020120))

(assert (= (and b!4020120 res!1635772) b!4020121))

(assert (= (and d!1190145 (not res!1635771)) b!4020122))

(assert (=> b!4020120 m!4609279))

(assert (=> b!4020120 m!4610039))

(assert (=> b!4020122 m!4609209))

(assert (=> b!4020122 m!4609075))

(assert (=> b!4020121 m!4609285))

(assert (=> b!4020121 m!4610041))

(assert (=> b!4020121 m!4609285))

(assert (=> b!4020121 m!4610041))

(declare-fun m!4610221 () Bool)

(assert (=> b!4020121 m!4610221))

(assert (=> b!4019356 d!1190145))

(declare-fun d!1190147 () Bool)

(assert (=> d!1190147 (isPrefix!3947 lt!1427191 (++!11262 prefix!494 newSuffix!27))))

(declare-fun lt!1427514 () Unit!62145)

(assert (=> d!1190147 (= lt!1427514 (choose!24312 lt!1427191 prefix!494 newSuffix!27))))

(assert (=> d!1190147 (isPrefix!3947 lt!1427191 prefix!494)))

(assert (=> d!1190147 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!760 lt!1427191 prefix!494 newSuffix!27) lt!1427514)))

(declare-fun bs!589785 () Bool)

(assert (= bs!589785 d!1190147))

(assert (=> bs!589785 m!4609071))

(assert (=> bs!589785 m!4609071))

(declare-fun m!4610223 () Bool)

(assert (=> bs!589785 m!4610223))

(declare-fun m!4610225 () Bool)

(assert (=> bs!589785 m!4610225))

(assert (=> bs!589785 m!4608987))

(assert (=> b!4019356 d!1190147))

(declare-fun d!1190149 () Bool)

(assert (=> d!1190149 (isPrefix!3947 lt!1427191 (++!11262 prefix!494 suffix!1299))))

(declare-fun lt!1427515 () Unit!62145)

(assert (=> d!1190149 (= lt!1427515 (choose!24312 lt!1427191 prefix!494 suffix!1299))))

(assert (=> d!1190149 (isPrefix!3947 lt!1427191 prefix!494)))

(assert (=> d!1190149 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!760 lt!1427191 prefix!494 suffix!1299) lt!1427515)))

(declare-fun bs!589786 () Bool)

(assert (= bs!589786 d!1190149))

(assert (=> bs!589786 m!4608961))

(assert (=> bs!589786 m!4608961))

(declare-fun m!4610227 () Bool)

(assert (=> bs!589786 m!4610227))

(declare-fun m!4610229 () Bool)

(assert (=> bs!589786 m!4610229))

(assert (=> bs!589786 m!4608987))

(assert (=> b!4019356 d!1190149))

(declare-fun b!4020125 () Bool)

(declare-fun res!1635776 () Bool)

(declare-fun e!2493783 () Bool)

(assert (=> b!4020125 (=> (not res!1635776) (not e!2493783))))

(declare-fun lt!1427516 () List!43154)

(assert (=> b!4020125 (= res!1635776 (= (size!32171 lt!1427516) (+ (size!32171 lt!1427191) (size!32171 suffixResult!105))))))

(declare-fun b!4020123 () Bool)

(declare-fun e!2493782 () List!43154)

(assert (=> b!4020123 (= e!2493782 suffixResult!105)))

(declare-fun d!1190151 () Bool)

(assert (=> d!1190151 e!2493783))

(declare-fun res!1635775 () Bool)

(assert (=> d!1190151 (=> (not res!1635775) (not e!2493783))))

(assert (=> d!1190151 (= res!1635775 (= (content!6526 lt!1427516) ((_ map or) (content!6526 lt!1427191) (content!6526 suffixResult!105))))))

(assert (=> d!1190151 (= lt!1427516 e!2493782)))

(declare-fun c!694670 () Bool)

(assert (=> d!1190151 (= c!694670 ((_ is Nil!43030) lt!1427191))))

(assert (=> d!1190151 (= (++!11262 lt!1427191 suffixResult!105) lt!1427516)))

(declare-fun b!4020126 () Bool)

(assert (=> b!4020126 (= e!2493783 (or (not (= suffixResult!105 Nil!43030)) (= lt!1427516 lt!1427191)))))

(declare-fun b!4020124 () Bool)

(assert (=> b!4020124 (= e!2493782 (Cons!43030 (h!48450 lt!1427191) (++!11262 (t!333487 lt!1427191) suffixResult!105)))))

(assert (= (and d!1190151 c!694670) b!4020123))

(assert (= (and d!1190151 (not c!694670)) b!4020124))

(assert (= (and d!1190151 res!1635775) b!4020125))

(assert (= (and b!4020125 res!1635776) b!4020126))

(declare-fun m!4610231 () Bool)

(assert (=> b!4020125 m!4610231))

(assert (=> b!4020125 m!4609075))

(declare-fun m!4610233 () Bool)

(assert (=> b!4020125 m!4610233))

(declare-fun m!4610235 () Bool)

(assert (=> d!1190151 m!4610235))

(assert (=> d!1190151 m!4609927))

(declare-fun m!4610237 () Bool)

(assert (=> d!1190151 m!4610237))

(declare-fun m!4610239 () Bool)

(assert (=> b!4020124 m!4610239))

(assert (=> b!4019337 d!1190151))

(declare-fun d!1190153 () Bool)

(declare-fun e!2493784 () Bool)

(assert (=> d!1190153 e!2493784))

(declare-fun res!1635777 () Bool)

(assert (=> d!1190153 (=> (not res!1635777) (not e!2493784))))

(assert (=> d!1190153 (= res!1635777 (semiInverseModEq!2933 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (toValue!9368 (transformation!6860 (rule!9912 token!484)))))))

(declare-fun Unit!62161 () Unit!62145)

(assert (=> d!1190153 (= (lemmaInv!1075 (transformation!6860 (rule!9912 token!484))) Unit!62161)))

(declare-fun b!4020127 () Bool)

(assert (=> b!4020127 (= e!2493784 (equivClasses!2832 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (toValue!9368 (transformation!6860 (rule!9912 token!484)))))))

(assert (= (and d!1190153 res!1635777) b!4020127))

(assert (=> d!1190153 m!4610061))

(assert (=> b!4020127 m!4610063))

(assert (=> b!4019337 d!1190153))

(declare-fun d!1190155 () Bool)

(declare-fun res!1635778 () Bool)

(declare-fun e!2493785 () Bool)

(assert (=> d!1190155 (=> (not res!1635778) (not e!2493785))))

(assert (=> d!1190155 (= res!1635778 (validRegex!5326 (regex!6860 (rule!9912 token!484))))))

(assert (=> d!1190155 (= (ruleValid!2792 thiss!21717 (rule!9912 token!484)) e!2493785)))

(declare-fun b!4020128 () Bool)

(declare-fun res!1635779 () Bool)

(assert (=> b!4020128 (=> (not res!1635779) (not e!2493785))))

(assert (=> b!4020128 (= res!1635779 (not (nullable!4126 (regex!6860 (rule!9912 token!484)))))))

(declare-fun b!4020129 () Bool)

(assert (=> b!4020129 (= e!2493785 (not (= (tag!7720 (rule!9912 token!484)) (String!49169 ""))))))

(assert (= (and d!1190155 res!1635778) b!4020128))

(assert (= (and b!4020128 res!1635779) b!4020129))

(assert (=> d!1190155 m!4610215))

(assert (=> b!4020128 m!4610213))

(assert (=> b!4019337 d!1190155))

(declare-fun d!1190157 () Bool)

(assert (=> d!1190157 (ruleValid!2792 thiss!21717 (rule!9912 token!484))))

(declare-fun lt!1427517 () Unit!62145)

(assert (=> d!1190157 (= lt!1427517 (choose!24316 thiss!21717 (rule!9912 token!484) rules!2999))))

(assert (=> d!1190157 (contains!8548 rules!2999 (rule!9912 token!484))))

(assert (=> d!1190157 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1866 thiss!21717 (rule!9912 token!484) rules!2999) lt!1427517)))

(declare-fun bs!589787 () Bool)

(assert (= bs!589787 d!1190157))

(assert (=> bs!589787 m!4609037))

(declare-fun m!4610241 () Bool)

(assert (=> bs!589787 m!4610241))

(declare-fun m!4610243 () Bool)

(assert (=> bs!589787 m!4610243))

(assert (=> b!4019337 d!1190157))

(declare-fun d!1190159 () Bool)

(declare-fun lt!1427518 () Int)

(assert (=> d!1190159 (>= lt!1427518 0)))

(declare-fun e!2493786 () Int)

(assert (=> d!1190159 (= lt!1427518 e!2493786)))

(declare-fun c!694671 () Bool)

(assert (=> d!1190159 (= c!694671 ((_ is Nil!43030) lt!1427191))))

(assert (=> d!1190159 (= (size!32171 lt!1427191) lt!1427518)))

(declare-fun b!4020130 () Bool)

(assert (=> b!4020130 (= e!2493786 0)))

(declare-fun b!4020131 () Bool)

(assert (=> b!4020131 (= e!2493786 (+ 1 (size!32171 (t!333487 lt!1427191))))))

(assert (= (and d!1190159 c!694671) b!4020130))

(assert (= (and d!1190159 (not c!694671)) b!4020131))

(declare-fun m!4610245 () Bool)

(assert (=> b!4020131 m!4610245))

(assert (=> b!4019358 d!1190159))

(declare-fun d!1190161 () Bool)

(declare-fun lt!1427519 () Int)

(assert (=> d!1190161 (>= lt!1427519 0)))

(declare-fun e!2493787 () Int)

(assert (=> d!1190161 (= lt!1427519 e!2493787)))

(declare-fun c!694672 () Bool)

(assert (=> d!1190161 (= c!694672 ((_ is Nil!43030) prefix!494))))

(assert (=> d!1190161 (= (size!32171 prefix!494) lt!1427519)))

(declare-fun b!4020132 () Bool)

(assert (=> b!4020132 (= e!2493787 0)))

(declare-fun b!4020133 () Bool)

(assert (=> b!4020133 (= e!2493787 (+ 1 (size!32171 (t!333487 prefix!494))))))

(assert (= (and d!1190161 c!694672) b!4020132))

(assert (= (and d!1190161 (not c!694672)) b!4020133))

(declare-fun m!4610247 () Bool)

(assert (=> b!4020133 m!4610247))

(assert (=> b!4019358 d!1190161))

(declare-fun d!1190163 () Bool)

(assert (=> d!1190163 (= (list!15996 (charsOf!4676 token!484)) (list!15998 (c!694546 (charsOf!4676 token!484))))))

(declare-fun bs!589788 () Bool)

(assert (= bs!589788 d!1190163))

(declare-fun m!4610249 () Bool)

(assert (=> bs!589788 m!4610249))

(assert (=> b!4019358 d!1190163))

(declare-fun d!1190165 () Bool)

(declare-fun lt!1427520 () BalanceConc!25736)

(assert (=> d!1190165 (= (list!15996 lt!1427520) (originalCharacters!7460 token!484))))

(assert (=> d!1190165 (= lt!1427520 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (value!216144 token!484)))))

(assert (=> d!1190165 (= (charsOf!4676 token!484) lt!1427520)))

(declare-fun b_lambda!117279 () Bool)

(assert (=> (not b_lambda!117279) (not d!1190165)))

(assert (=> d!1190165 t!333523))

(declare-fun b_and!308807 () Bool)

(assert (= b_and!308799 (and (=> t!333523 result!292848) b_and!308807)))

(assert (=> d!1190165 t!333525))

(declare-fun b_and!308809 () Bool)

(assert (= b_and!308801 (and (=> t!333525 result!292850) b_and!308809)))

(declare-fun m!4610251 () Bool)

(assert (=> d!1190165 m!4610251))

(assert (=> d!1190165 m!4610071))

(assert (=> b!4019358 d!1190165))

(declare-fun d!1190167 () Bool)

(declare-fun lt!1427523 () Int)

(assert (=> d!1190167 (>= lt!1427523 0)))

(declare-fun e!2493794 () Int)

(assert (=> d!1190167 (= lt!1427523 e!2493794)))

(declare-fun c!694678 () Bool)

(assert (=> d!1190167 (= c!694678 (and ((_ is Cons!43032) rules!2999) (= (h!48452 rules!2999) (rule!9912 token!484))))))

(assert (=> d!1190167 (contains!8548 rules!2999 (rule!9912 token!484))))

(assert (=> d!1190167 (= (getIndex!558 rules!2999 (rule!9912 token!484)) lt!1427523)))

(declare-fun b!4020142 () Bool)

(assert (=> b!4020142 (= e!2493794 0)))

(declare-fun b!4020144 () Bool)

(declare-fun e!2493793 () Int)

(assert (=> b!4020144 (= e!2493793 (+ 1 (getIndex!558 (t!333489 rules!2999) (rule!9912 token!484))))))

(declare-fun b!4020145 () Bool)

(assert (=> b!4020145 (= e!2493793 (- 1))))

(declare-fun b!4020143 () Bool)

(assert (=> b!4020143 (= e!2493794 e!2493793)))

(declare-fun c!694677 () Bool)

(assert (=> b!4020143 (= c!694677 (and ((_ is Cons!43032) rules!2999) (not (= (h!48452 rules!2999) (rule!9912 token!484)))))))

(assert (= (and d!1190167 c!694678) b!4020142))

(assert (= (and d!1190167 (not c!694678)) b!4020143))

(assert (= (and b!4020143 c!694677) b!4020144))

(assert (= (and b!4020143 (not c!694677)) b!4020145))

(assert (=> d!1190167 m!4610243))

(declare-fun m!4610253 () Bool)

(assert (=> b!4020144 m!4610253))

(assert (=> b!4019336 d!1190167))

(declare-fun d!1190169 () Bool)

(declare-fun lt!1427524 () Int)

(assert (=> d!1190169 (>= lt!1427524 0)))

(declare-fun e!2493796 () Int)

(assert (=> d!1190169 (= lt!1427524 e!2493796)))

(declare-fun c!694680 () Bool)

(assert (=> d!1190169 (= c!694680 (and ((_ is Cons!43032) rules!2999) (= (h!48452 rules!2999) (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(assert (=> d!1190169 (contains!8548 rules!2999 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))

(assert (=> d!1190169 (= (getIndex!558 rules!2999 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) lt!1427524)))

(declare-fun b!4020146 () Bool)

(assert (=> b!4020146 (= e!2493796 0)))

(declare-fun b!4020148 () Bool)

(declare-fun e!2493795 () Int)

(assert (=> b!4020148 (= e!2493795 (+ 1 (getIndex!558 (t!333489 rules!2999) (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(declare-fun b!4020149 () Bool)

(assert (=> b!4020149 (= e!2493795 (- 1))))

(declare-fun b!4020147 () Bool)

(assert (=> b!4020147 (= e!2493796 e!2493795)))

(declare-fun c!694679 () Bool)

(assert (=> b!4020147 (= c!694679 (and ((_ is Cons!43032) rules!2999) (not (= (h!48452 rules!2999) (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))))

(assert (= (and d!1190169 c!694680) b!4020146))

(assert (= (and d!1190169 (not c!694680)) b!4020147))

(assert (= (and b!4020147 c!694679) b!4020148))

(assert (= (and b!4020147 (not c!694679)) b!4020149))

(assert (=> d!1190169 m!4609919))

(declare-fun m!4610255 () Bool)

(assert (=> b!4020148 m!4610255))

(assert (=> b!4019336 d!1190169))

(declare-fun d!1190171 () Bool)

(assert (=> d!1190171 (= (_2!24213 (v!39647 lt!1427206)) newSuffixResult!27)))

(declare-fun lt!1427525 () Unit!62145)

(assert (=> d!1190171 (= lt!1427525 (choose!24306 lt!1427181 (_2!24213 (v!39647 lt!1427206)) lt!1427191 newSuffixResult!27 lt!1427222))))

(assert (=> d!1190171 (isPrefix!3947 lt!1427181 lt!1427222)))

(assert (=> d!1190171 (= (lemmaSamePrefixThenSameSuffix!2118 lt!1427181 (_2!24213 (v!39647 lt!1427206)) lt!1427191 newSuffixResult!27 lt!1427222) lt!1427525)))

(declare-fun bs!589789 () Bool)

(assert (= bs!589789 d!1190171))

(declare-fun m!4610257 () Bool)

(assert (=> bs!589789 m!4610257))

(assert (=> bs!589789 m!4608947))

(assert (=> b!4019336 d!1190171))

(declare-fun d!1190173 () Bool)

(assert (=> d!1190173 (= lt!1427181 lt!1427191)))

(declare-fun lt!1427528 () Unit!62145)

(declare-fun choose!24322 (List!43154 List!43154 List!43154) Unit!62145)

(assert (=> d!1190173 (= lt!1427528 (choose!24322 lt!1427181 lt!1427191 lt!1427222))))

(assert (=> d!1190173 (isPrefix!3947 lt!1427181 lt!1427222)))

(assert (=> d!1190173 (= (lemmaIsPrefixSameLengthThenSameList!907 lt!1427181 lt!1427191 lt!1427222) lt!1427528)))

(declare-fun bs!589790 () Bool)

(assert (= bs!589790 d!1190173))

(declare-fun m!4610259 () Bool)

(assert (=> bs!589790 m!4610259))

(assert (=> bs!589790 m!4608947))

(assert (=> b!4019336 d!1190173))

(declare-fun b!4020152 () Bool)

(declare-fun res!1635781 () Bool)

(declare-fun e!2493798 () Bool)

(assert (=> b!4020152 (=> (not res!1635781) (not e!2493798))))

(declare-fun lt!1427529 () List!43154)

(assert (=> b!4020152 (= res!1635781 (= (size!32171 lt!1427529) (+ (size!32171 newSuffix!27) (size!32171 lt!1427213))))))

(declare-fun b!4020150 () Bool)

(declare-fun e!2493797 () List!43154)

(assert (=> b!4020150 (= e!2493797 lt!1427213)))

(declare-fun d!1190175 () Bool)

(assert (=> d!1190175 e!2493798))

(declare-fun res!1635780 () Bool)

(assert (=> d!1190175 (=> (not res!1635780) (not e!2493798))))

(assert (=> d!1190175 (= res!1635780 (= (content!6526 lt!1427529) ((_ map or) (content!6526 newSuffix!27) (content!6526 lt!1427213))))))

(assert (=> d!1190175 (= lt!1427529 e!2493797)))

(declare-fun c!694681 () Bool)

(assert (=> d!1190175 (= c!694681 ((_ is Nil!43030) newSuffix!27))))

(assert (=> d!1190175 (= (++!11262 newSuffix!27 lt!1427213) lt!1427529)))

(declare-fun b!4020153 () Bool)

(assert (=> b!4020153 (= e!2493798 (or (not (= lt!1427213 Nil!43030)) (= lt!1427529 newSuffix!27)))))

(declare-fun b!4020151 () Bool)

(assert (=> b!4020151 (= e!2493797 (Cons!43030 (h!48450 newSuffix!27) (++!11262 (t!333487 newSuffix!27) lt!1427213)))))

(assert (= (and d!1190175 c!694681) b!4020150))

(assert (= (and d!1190175 (not c!694681)) b!4020151))

(assert (= (and d!1190175 res!1635780) b!4020152))

(assert (= (and b!4020152 res!1635781) b!4020153))

(declare-fun m!4610261 () Bool)

(assert (=> b!4020152 m!4610261))

(assert (=> b!4020152 m!4608935))

(assert (=> b!4020152 m!4609337))

(declare-fun m!4610263 () Bool)

(assert (=> d!1190175 m!4610263))

(assert (=> d!1190175 m!4609967))

(assert (=> d!1190175 m!4609343))

(declare-fun m!4610265 () Bool)

(assert (=> b!4020151 m!4610265))

(assert (=> b!4019338 d!1190175))

(declare-fun d!1190177 () Bool)

(declare-fun lt!1427530 () List!43154)

(assert (=> d!1190177 (= (++!11262 newSuffix!27 lt!1427530) suffix!1299)))

(declare-fun e!2493799 () List!43154)

(assert (=> d!1190177 (= lt!1427530 e!2493799)))

(declare-fun c!694682 () Bool)

(assert (=> d!1190177 (= c!694682 ((_ is Cons!43030) newSuffix!27))))

(assert (=> d!1190177 (>= (size!32171 suffix!1299) (size!32171 newSuffix!27))))

(assert (=> d!1190177 (= (getSuffix!2372 suffix!1299 newSuffix!27) lt!1427530)))

(declare-fun b!4020154 () Bool)

(assert (=> b!4020154 (= e!2493799 (getSuffix!2372 (tail!6259 suffix!1299) (t!333487 newSuffix!27)))))

(declare-fun b!4020155 () Bool)

(assert (=> b!4020155 (= e!2493799 suffix!1299)))

(assert (= (and d!1190177 c!694682) b!4020154))

(assert (= (and d!1190177 (not c!694682)) b!4020155))

(declare-fun m!4610267 () Bool)

(assert (=> d!1190177 m!4610267))

(assert (=> d!1190177 m!4608933))

(assert (=> d!1190177 m!4608935))

(assert (=> b!4020154 m!4610053))

(assert (=> b!4020154 m!4610053))

(declare-fun m!4610269 () Bool)

(assert (=> b!4020154 m!4610269))

(assert (=> b!4019338 d!1190177))

(declare-fun d!1190179 () Bool)

(declare-fun lt!1427531 () Int)

(assert (=> d!1190179 (>= lt!1427531 0)))

(declare-fun e!2493800 () Int)

(assert (=> d!1190179 (= lt!1427531 e!2493800)))

(declare-fun c!694683 () Bool)

(assert (=> d!1190179 (= c!694683 ((_ is Nil!43030) (originalCharacters!7460 token!484)))))

(assert (=> d!1190179 (= (size!32171 (originalCharacters!7460 token!484)) lt!1427531)))

(declare-fun b!4020156 () Bool)

(assert (=> b!4020156 (= e!2493800 0)))

(declare-fun b!4020157 () Bool)

(assert (=> b!4020157 (= e!2493800 (+ 1 (size!32171 (t!333487 (originalCharacters!7460 token!484)))))))

(assert (= (and d!1190179 c!694683) b!4020156))

(assert (= (and d!1190179 (not c!694683)) b!4020157))

(declare-fun m!4610271 () Bool)

(assert (=> b!4020157 m!4610271))

(assert (=> b!4019359 d!1190179))

(declare-fun b!4020162 () Bool)

(declare-fun e!2493803 () Bool)

(declare-fun tp!1222027 () Bool)

(assert (=> b!4020162 (= e!2493803 (and tp_is_empty!20501 tp!1222027))))

(assert (=> b!4019361 (= tp!1221971 e!2493803)))

(assert (= (and b!4019361 ((_ is Cons!43030) (t!333487 newSuffix!27))) b!4020162))

(declare-fun b!4020163 () Bool)

(declare-fun e!2493804 () Bool)

(declare-fun tp!1222028 () Bool)

(assert (=> b!4020163 (= e!2493804 (and tp_is_empty!20501 tp!1222028))))

(assert (=> b!4019345 (= tp!1221969 e!2493804)))

(assert (= (and b!4019345 ((_ is Cons!43030) (t!333487 newSuffixResult!27))) b!4020163))

(declare-fun b!4020174 () Bool)

(declare-fun b_free!111869 () Bool)

(declare-fun b_next!112573 () Bool)

(assert (=> b!4020174 (= b_free!111869 (not b_next!112573))))

(declare-fun t!333531 () Bool)

(declare-fun tb!241625 () Bool)

(assert (=> (and b!4020174 (= (toValue!9368 (transformation!6860 (h!48452 (t!333489 rules!2999)))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) t!333531) tb!241625))

(declare-fun result!292860 () Bool)

(assert (= result!292860 result!292822))

(assert (=> d!1189937 t!333531))

(declare-fun t!333533 () Bool)

(declare-fun tb!241627 () Bool)

(assert (=> (and b!4020174 (= (toValue!9368 (transformation!6860 (h!48452 (t!333489 rules!2999)))) (toValue!9368 (transformation!6860 (rule!9912 token!484)))) t!333533) tb!241627))

(declare-fun result!292862 () Bool)

(assert (= result!292862 result!292852))

(assert (=> d!1190137 t!333533))

(declare-fun b_and!308811 () Bool)

(declare-fun tp!1222038 () Bool)

(assert (=> b!4020174 (= tp!1222038 (and (=> t!333531 result!292860) (=> t!333533 result!292862) b_and!308811))))

(declare-fun b_free!111871 () Bool)

(declare-fun b_next!112575 () Bool)

(assert (=> b!4020174 (= b_free!111871 (not b_next!112575))))

(declare-fun t!333535 () Bool)

(declare-fun tb!241629 () Bool)

(assert (=> (and b!4020174 (= (toChars!9227 (transformation!6860 (h!48452 (t!333489 rules!2999)))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) t!333535) tb!241629))

(declare-fun result!292864 () Bool)

(assert (= result!292864 result!292842))

(assert (=> d!1190033 t!333535))

(declare-fun t!333537 () Bool)

(declare-fun tb!241631 () Bool)

(assert (=> (and b!4020174 (= (toChars!9227 (transformation!6860 (h!48452 (t!333489 rules!2999)))) (toChars!9227 (transformation!6860 (rule!9912 token!484)))) t!333537) tb!241631))

(declare-fun result!292866 () Bool)

(assert (= result!292866 result!292848))

(assert (=> b!4020039 t!333537))

(assert (=> d!1190165 t!333537))

(declare-fun tp!1222040 () Bool)

(declare-fun b_and!308813 () Bool)

(assert (=> b!4020174 (= tp!1222040 (and (=> t!333535 result!292864) (=> t!333537 result!292866) b_and!308813))))

(declare-fun e!2493813 () Bool)

(assert (=> b!4020174 (= e!2493813 (and tp!1222038 tp!1222040))))

(declare-fun e!2493816 () Bool)

(declare-fun b!4020173 () Bool)

(declare-fun tp!1222039 () Bool)

(assert (=> b!4020173 (= e!2493816 (and tp!1222039 (inv!57469 (tag!7720 (h!48452 (t!333489 rules!2999)))) (inv!57472 (transformation!6860 (h!48452 (t!333489 rules!2999)))) e!2493813))))

(declare-fun b!4020172 () Bool)

(declare-fun e!2493815 () Bool)

(declare-fun tp!1222037 () Bool)

(assert (=> b!4020172 (= e!2493815 (and e!2493816 tp!1222037))))

(assert (=> b!4019377 (= tp!1221973 e!2493815)))

(assert (= b!4020173 b!4020174))

(assert (= b!4020172 b!4020173))

(assert (= (and b!4019377 ((_ is Cons!43032) (t!333489 rules!2999))) b!4020172))

(declare-fun m!4610273 () Bool)

(assert (=> b!4020173 m!4610273))

(declare-fun m!4610275 () Bool)

(assert (=> b!4020173 m!4610275))

(declare-fun b!4020175 () Bool)

(declare-fun e!2493817 () Bool)

(declare-fun tp!1222041 () Bool)

(assert (=> b!4020175 (= e!2493817 (and tp_is_empty!20501 tp!1222041))))

(assert (=> b!4019350 (= tp!1221976 e!2493817)))

(assert (= (and b!4019350 ((_ is Cons!43030) (t!333487 suffix!1299))) b!4020175))

(declare-fun b!4020186 () Bool)

(declare-fun e!2493820 () Bool)

(assert (=> b!4020186 (= e!2493820 tp_is_empty!20501)))

(declare-fun b!4020189 () Bool)

(declare-fun tp!1222054 () Bool)

(declare-fun tp!1222052 () Bool)

(assert (=> b!4020189 (= e!2493820 (and tp!1222054 tp!1222052))))

(declare-fun b!4020187 () Bool)

(declare-fun tp!1222055 () Bool)

(declare-fun tp!1222053 () Bool)

(assert (=> b!4020187 (= e!2493820 (and tp!1222055 tp!1222053))))

(declare-fun b!4020188 () Bool)

(declare-fun tp!1222056 () Bool)

(assert (=> b!4020188 (= e!2493820 tp!1222056)))

(assert (=> b!4019339 (= tp!1221966 e!2493820)))

(assert (= (and b!4019339 ((_ is ElementMatch!11765) (regex!6860 (h!48452 rules!2999)))) b!4020186))

(assert (= (and b!4019339 ((_ is Concat!18856) (regex!6860 (h!48452 rules!2999)))) b!4020187))

(assert (= (and b!4019339 ((_ is Star!11765) (regex!6860 (h!48452 rules!2999)))) b!4020188))

(assert (= (and b!4019339 ((_ is Union!11765) (regex!6860 (h!48452 rules!2999)))) b!4020189))

(declare-fun b!4020190 () Bool)

(declare-fun e!2493821 () Bool)

(assert (=> b!4020190 (= e!2493821 tp_is_empty!20501)))

(declare-fun b!4020193 () Bool)

(declare-fun tp!1222059 () Bool)

(declare-fun tp!1222057 () Bool)

(assert (=> b!4020193 (= e!2493821 (and tp!1222059 tp!1222057))))

(declare-fun b!4020191 () Bool)

(declare-fun tp!1222060 () Bool)

(declare-fun tp!1222058 () Bool)

(assert (=> b!4020191 (= e!2493821 (and tp!1222060 tp!1222058))))

(declare-fun b!4020192 () Bool)

(declare-fun tp!1222061 () Bool)

(assert (=> b!4020192 (= e!2493821 tp!1222061)))

(assert (=> b!4019360 (= tp!1221970 e!2493821)))

(assert (= (and b!4019360 ((_ is ElementMatch!11765) (regex!6860 (rule!9912 token!484)))) b!4020190))

(assert (= (and b!4019360 ((_ is Concat!18856) (regex!6860 (rule!9912 token!484)))) b!4020191))

(assert (= (and b!4019360 ((_ is Star!11765) (regex!6860 (rule!9912 token!484)))) b!4020192))

(assert (= (and b!4019360 ((_ is Union!11765) (regex!6860 (rule!9912 token!484)))) b!4020193))

(declare-fun b!4020194 () Bool)

(declare-fun e!2493822 () Bool)

(declare-fun tp!1222062 () Bool)

(assert (=> b!4020194 (= e!2493822 (and tp_is_empty!20501 tp!1222062))))

(assert (=> b!4019353 (= tp!1221967 e!2493822)))

(assert (= (and b!4019353 ((_ is Cons!43030) (t!333487 prefix!494))) b!4020194))

(declare-fun b!4020195 () Bool)

(declare-fun e!2493823 () Bool)

(declare-fun tp!1222063 () Bool)

(assert (=> b!4020195 (= e!2493823 (and tp_is_empty!20501 tp!1222063))))

(assert (=> b!4019342 (= tp!1221974 e!2493823)))

(assert (= (and b!4019342 ((_ is Cons!43030) (originalCharacters!7460 token!484))) b!4020195))

(declare-fun b!4020196 () Bool)

(declare-fun e!2493824 () Bool)

(declare-fun tp!1222064 () Bool)

(assert (=> b!4020196 (= e!2493824 (and tp_is_empty!20501 tp!1222064))))

(assert (=> b!4019343 (= tp!1221972 e!2493824)))

(assert (= (and b!4019343 ((_ is Cons!43030) (t!333487 suffixResult!105))) b!4020196))

(declare-fun b_lambda!117281 () Bool)

(assert (= b_lambda!117279 (or (and b!4019334 b_free!111859 (= (toChars!9227 (transformation!6860 (h!48452 rules!2999))) (toChars!9227 (transformation!6860 (rule!9912 token!484))))) (and b!4019363 b_free!111863) (and b!4020174 b_free!111871 (= (toChars!9227 (transformation!6860 (h!48452 (t!333489 rules!2999)))) (toChars!9227 (transformation!6860 (rule!9912 token!484))))) b_lambda!117281)))

(declare-fun b_lambda!117283 () Bool)

(assert (= b_lambda!117277 (or (and b!4019334 b_free!111857 (= (toValue!9368 (transformation!6860 (h!48452 rules!2999))) (toValue!9368 (transformation!6860 (rule!9912 token!484))))) (and b!4019363 b_free!111861) (and b!4020174 b_free!111869 (= (toValue!9368 (transformation!6860 (h!48452 (t!333489 rules!2999)))) (toValue!9368 (transformation!6860 (rule!9912 token!484))))) b_lambda!117283)))

(declare-fun b_lambda!117285 () Bool)

(assert (= b_lambda!117275 (or (and b!4019334 b_free!111859 (= (toChars!9227 (transformation!6860 (h!48452 rules!2999))) (toChars!9227 (transformation!6860 (rule!9912 token!484))))) (and b!4019363 b_free!111863) (and b!4020174 b_free!111871 (= (toChars!9227 (transformation!6860 (h!48452 (t!333489 rules!2999)))) (toChars!9227 (transformation!6860 (rule!9912 token!484))))) b_lambda!117285)))

(check-sat (not d!1190035) (not b!4019987) (not d!1190057) (not b!4020013) (not d!1190055) (not b!4019714) (not d!1190153) (not b!4019704) (not b!4020028) (not b!4020085) (not b!4019696) (not d!1190069) (not b!4020154) (not b!4020026) (not d!1189931) (not b!4020066) (not b!4020187) (not d!1190103) (not d!1190117) (not b!4020106) (not b!4020096) (not d!1190155) (not b!4020062) (not d!1190087) (not d!1190157) (not b!4019956) (not b!4019974) (not d!1189867) (not b!4019941) (not bm!286573) (not d!1190113) (not b!4020009) (not tb!241613) (not b!4020048) (not b!4020102) (not d!1189843) (not b!4020172) (not b!4020095) (not b!4019749) (not b!4019729) (not b!4019971) (not b!4019577) b_and!308809 (not b!4019552) (not d!1189815) (not b!4020068) (not d!1190097) (not b!4020109) (not d!1190133) (not d!1190143) (not b!4019699) (not bm!286580) (not b!4020043) (not b_lambda!117285) (not b!4020196) (not b_next!112567) b_and!308807 (not b!4020034) (not b!4020191) (not bm!286579) (not d!1190083) (not d!1189851) (not d!1190167) (not d!1190129) (not d!1190047) (not d!1190107) (not d!1190061) (not d!1189857) (not b!4020022) (not b!4020049) (not d!1190075) (not b!4020195) (not b!4020128) (not b!4019979) (not b!4020089) b_and!308805 (not d!1190151) (not b!4019527) (not b!4020193) (not b!4019712) (not b!4019715) (not b!4020131) (not b!4020124) (not d!1190135) (not b!4020175) (not b!4019703) (not b_next!112575) (not b_lambda!117283) (not b_lambda!117281) (not b!4020006) (not b!4020042) (not b!4019970) tp_is_empty!20501 (not tb!241601) (not b!4020127) (not b!4020122) (not b!4019976) (not d!1189829) (not b!4019940) (not b!4020100) (not b!4019521) (not d!1190063) (not d!1190071) (not b!4020162) (not b!4019984) (not d!1189943) (not b!4019728) (not d!1190039) (not b!4020029) (not b!4020192) (not d!1189963) (not b!4020152) (not b!4019937) (not d!1189883) (not b!4019739) (not b!4020041) (not b!4020014) (not b!4019934) (not b_lambda!117273) (not b!4020157) (not b!4020151) (not b!4019981) (not b!4020020) (not b!4020097) (not d!1190163) (not b!4020047) (not b!4019520) (not b!4020117) (not b!4019966) (not d!1190077) (not b_next!112565) (not d!1190147) b_and!308813 (not b!4019995) (not b!4019983) (not b!4020045) b_and!308811 (not b!4019936) (not d!1190033) (not b!4020148) (not d!1190169) (not b!4020125) (not b!4020188) (not d!1190043) (not b!4019553) (not b!4019960) (not b!4019576) (not b!4020056) (not b!4020093) (not d!1189969) (not b!4019764) (not b!4020053) (not d!1190171) (not b!4019740) (not b!4020000) (not b!4019524) (not d!1189837) (not b_next!112563) (not b!4019707) (not b!4019988) (not d!1190079) (not b!4019582) (not tb!241617) (not d!1190173) (not d!1190031) (not b!4020113) (not b!4020039) (not b!4020040) (not b!4020010) (not d!1190131) (not b!4020064) (not b!4020057) (not b!4019551) (not b!4020050) (not b_lambda!117263) (not tb!241621) (not b!4020021) (not b!4019980) (not d!1190065) (not bm!286570) (not b!4019747) (not b!4020163) (not d!1190177) (not d!1190101) b_and!308803 (not b!4020194) (not b!4020024) (not d!1190175) (not d!1190049) (not b!4020099) (not b!4019711) (not b!4020173) (not b!4019969) (not b!4020061) (not b!4020189) (not b!4020033) (not b!4020110) (not b!4019947) (not b!4020144) (not b!4020090) (not d!1190091) (not b!4019935) (not b!4020091) (not d!1190127) (not b!4020094) (not b!4019716) (not b!4020017) (not b!4020114) (not b!4020069) (not b!4019526) (not d!1190041) (not b!4020025) (not b!4020071) (not b!4019950) (not b!4020052) (not d!1190037) (not b!4020087) (not d!1190053) (not b!4020121) (not b!4019581) (not d!1189953) (not b!4019996) (not b!4019748) (not d!1190119) (not b!4019991) (not b_next!112561) (not b!4020092) (not b!4019973) (not b!4020046) (not b!4019730) (not b!4019949) (not b!4020065) (not bm!286581) (not d!1189971) (not d!1190165) (not d!1190105) (not d!1190121) (not b!4019710) (not b!4020058) (not d!1190067) (not d!1190045) (not b!4020104) (not b!4019700) (not b!4019528) (not d!1189925) (not b!4020120) (not d!1190073) (not b!4019523) (not b!4020004) (not b!4020060) (not b!4019959) (not b!4019999) (not b!4020084) (not b!4019938) (not b!4019992) (not d!1190149) (not b!4019933) (not b!4020030) (not b!4020133) (not b!4019767) (not b_next!112573) (not b!4019525))
(check-sat b_and!308809 b_and!308805 (not b_next!112575) (not b_next!112563) b_and!308803 (not b_next!112561) (not b_next!112573) (not b_next!112567) b_and!308807 (not b_next!112565) b_and!308811 b_and!308813)
(get-model)

(declare-fun d!1190207 () Bool)

(assert (=> d!1190207 (= (isEmpty!25696 (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 token!484)) Nil!43030 (size!32171 Nil!43030) lt!1427217 lt!1427217 (size!32171 lt!1427217)))) ((_ is Nil!43030) (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 token!484)) Nil!43030 (size!32171 Nil!43030) lt!1427217 lt!1427217 (size!32171 lt!1427217)))))))

(assert (=> b!4020094 d!1190207))

(declare-fun bm!286598 () Bool)

(declare-fun call!286607 () Unit!62145)

(assert (=> bm!286598 (= call!286607 (lemmaIsPrefixSameLengthThenSameList!907 lt!1427217 Nil!43030 lt!1427217))))

(declare-fun b!4020294 () Bool)

(declare-fun e!2493889 () tuple2!42162)

(declare-fun lt!1427634 () tuple2!42162)

(assert (=> b!4020294 (= e!2493889 lt!1427634)))

(declare-fun b!4020295 () Bool)

(declare-fun e!2493890 () Bool)

(declare-fun e!2493891 () Bool)

(assert (=> b!4020295 (= e!2493890 e!2493891)))

(declare-fun res!1635813 () Bool)

(assert (=> b!4020295 (=> res!1635813 e!2493891)))

(declare-fun lt!1427654 () tuple2!42162)

(assert (=> b!4020295 (= res!1635813 (isEmpty!25696 (_1!24215 lt!1427654)))))

(declare-fun b!4020296 () Bool)

(declare-fun e!2493887 () tuple2!42162)

(assert (=> b!4020296 (= e!2493887 (tuple2!42163 Nil!43030 lt!1427217))))

(declare-fun b!4020297 () Bool)

(assert (=> b!4020297 (= e!2493889 (tuple2!42163 Nil!43030 lt!1427217))))

(declare-fun d!1190213 () Bool)

(assert (=> d!1190213 e!2493890))

(declare-fun res!1635814 () Bool)

(assert (=> d!1190213 (=> (not res!1635814) (not e!2493890))))

(assert (=> d!1190213 (= res!1635814 (= (++!11262 (_1!24215 lt!1427654) (_2!24215 lt!1427654)) lt!1427217))))

(declare-fun e!2493888 () tuple2!42162)

(assert (=> d!1190213 (= lt!1427654 e!2493888)))

(declare-fun c!694719 () Bool)

(declare-fun lostCause!1000 (Regex!11765) Bool)

(assert (=> d!1190213 (= c!694719 (lostCause!1000 (regex!6860 (rule!9912 token!484))))))

(declare-fun lt!1427636 () Unit!62145)

(declare-fun Unit!62162 () Unit!62145)

(assert (=> d!1190213 (= lt!1427636 Unit!62162)))

(assert (=> d!1190213 (= (getSuffix!2372 lt!1427217 Nil!43030) lt!1427217)))

(declare-fun lt!1427653 () Unit!62145)

(declare-fun lt!1427637 () Unit!62145)

(assert (=> d!1190213 (= lt!1427653 lt!1427637)))

(declare-fun lt!1427639 () List!43154)

(assert (=> d!1190213 (= lt!1427217 lt!1427639)))

(assert (=> d!1190213 (= lt!1427637 (lemmaSamePrefixThenSameSuffix!2118 Nil!43030 lt!1427217 Nil!43030 lt!1427639 lt!1427217))))

(assert (=> d!1190213 (= lt!1427639 (getSuffix!2372 lt!1427217 Nil!43030))))

(declare-fun lt!1427650 () Unit!62145)

(declare-fun lt!1427645 () Unit!62145)

(assert (=> d!1190213 (= lt!1427650 lt!1427645)))

(assert (=> d!1190213 (isPrefix!3947 Nil!43030 (++!11262 Nil!43030 lt!1427217))))

(assert (=> d!1190213 (= lt!1427645 (lemmaConcatTwoListThenFirstIsPrefix!2788 Nil!43030 lt!1427217))))

(assert (=> d!1190213 (validRegex!5326 (regex!6860 (rule!9912 token!484)))))

(assert (=> d!1190213 (= (findLongestMatchInner!1367 (regex!6860 (rule!9912 token!484)) Nil!43030 (size!32171 Nil!43030) lt!1427217 lt!1427217 (size!32171 lt!1427217)) lt!1427654)))

(declare-fun b!4020298 () Bool)

(declare-fun e!2493894 () tuple2!42162)

(assert (=> b!4020298 (= e!2493894 e!2493889)))

(declare-fun call!286609 () tuple2!42162)

(assert (=> b!4020298 (= lt!1427634 call!286609)))

(declare-fun c!694718 () Bool)

(assert (=> b!4020298 (= c!694718 (isEmpty!25696 (_1!24215 lt!1427634)))))

(declare-fun bm!286599 () Bool)

(declare-fun call!286604 () C!23716)

(assert (=> bm!286599 (= call!286604 (head!8527 lt!1427217))))

(declare-fun bm!286600 () Bool)

(declare-fun call!286603 () Regex!11765)

(assert (=> bm!286600 (= call!286603 (derivativeStep!3535 (regex!6860 (rule!9912 token!484)) call!286604))))

(declare-fun b!4020299 () Bool)

(declare-fun e!2493892 () Unit!62145)

(declare-fun Unit!62163 () Unit!62145)

(assert (=> b!4020299 (= e!2493892 Unit!62163)))

(declare-fun lt!1427644 () Unit!62145)

(declare-fun call!286608 () Unit!62145)

(assert (=> b!4020299 (= lt!1427644 call!286608)))

(declare-fun call!286606 () Bool)

(assert (=> b!4020299 call!286606))

(declare-fun lt!1427632 () Unit!62145)

(assert (=> b!4020299 (= lt!1427632 lt!1427644)))

(declare-fun lt!1427652 () Unit!62145)

(assert (=> b!4020299 (= lt!1427652 call!286607)))

(assert (=> b!4020299 (= lt!1427217 Nil!43030)))

(declare-fun lt!1427641 () Unit!62145)

(assert (=> b!4020299 (= lt!1427641 lt!1427652)))

(assert (=> b!4020299 false))

(declare-fun b!4020300 () Bool)

(assert (=> b!4020300 (= e!2493887 (tuple2!42163 Nil!43030 Nil!43030))))

(declare-fun bm!286601 () Bool)

(declare-fun call!286605 () Bool)

(assert (=> bm!286601 (= call!286605 (nullable!4126 (regex!6860 (rule!9912 token!484))))))

(declare-fun b!4020301 () Bool)

(declare-fun c!694721 () Bool)

(assert (=> b!4020301 (= c!694721 call!286605)))

(declare-fun lt!1427643 () Unit!62145)

(declare-fun lt!1427628 () Unit!62145)

(assert (=> b!4020301 (= lt!1427643 lt!1427628)))

(declare-fun lt!1427631 () C!23716)

(declare-fun lt!1427648 () List!43154)

(assert (=> b!4020301 (= (++!11262 (++!11262 Nil!43030 (Cons!43030 lt!1427631 Nil!43030)) lt!1427648) lt!1427217)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1244 (List!43154 C!23716 List!43154 List!43154) Unit!62145)

(assert (=> b!4020301 (= lt!1427628 (lemmaMoveElementToOtherListKeepsConcatEq!1244 Nil!43030 lt!1427631 lt!1427648 lt!1427217))))

(assert (=> b!4020301 (= lt!1427648 (tail!6259 lt!1427217))))

(assert (=> b!4020301 (= lt!1427631 (head!8527 lt!1427217))))

(declare-fun lt!1427649 () Unit!62145)

(declare-fun lt!1427638 () Unit!62145)

(assert (=> b!4020301 (= lt!1427649 lt!1427638)))

(assert (=> b!4020301 (isPrefix!3947 (++!11262 Nil!43030 (Cons!43030 (head!8527 (getSuffix!2372 lt!1427217 Nil!43030)) Nil!43030)) lt!1427217)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!626 (List!43154 List!43154) Unit!62145)

(assert (=> b!4020301 (= lt!1427638 (lemmaAddHeadSuffixToPrefixStillPrefix!626 Nil!43030 lt!1427217))))

(declare-fun lt!1427647 () Unit!62145)

(declare-fun lt!1427629 () Unit!62145)

(assert (=> b!4020301 (= lt!1427647 lt!1427629)))

(assert (=> b!4020301 (= lt!1427629 (lemmaAddHeadSuffixToPrefixStillPrefix!626 Nil!43030 lt!1427217))))

(declare-fun lt!1427635 () List!43154)

(assert (=> b!4020301 (= lt!1427635 (++!11262 Nil!43030 (Cons!43030 (head!8527 lt!1427217) Nil!43030)))))

(declare-fun lt!1427646 () Unit!62145)

(assert (=> b!4020301 (= lt!1427646 e!2493892)))

(declare-fun c!694717 () Bool)

(assert (=> b!4020301 (= c!694717 (= (size!32171 Nil!43030) (size!32171 lt!1427217)))))

(declare-fun lt!1427651 () Unit!62145)

(declare-fun lt!1427630 () Unit!62145)

(assert (=> b!4020301 (= lt!1427651 lt!1427630)))

(assert (=> b!4020301 (<= (size!32171 Nil!43030) (size!32171 lt!1427217))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!434 (List!43154 List!43154) Unit!62145)

(assert (=> b!4020301 (= lt!1427630 (lemmaIsPrefixThenSmallerEqSize!434 Nil!43030 lt!1427217))))

(declare-fun e!2493893 () tuple2!42162)

(assert (=> b!4020301 (= e!2493893 e!2493894)))

(declare-fun bm!286602 () Bool)

(assert (=> bm!286602 (= call!286606 (isPrefix!3947 lt!1427217 lt!1427217))))

(declare-fun b!4020302 () Bool)

(assert (=> b!4020302 (= e!2493888 e!2493893)))

(declare-fun c!694720 () Bool)

(assert (=> b!4020302 (= c!694720 (= (size!32171 Nil!43030) (size!32171 lt!1427217)))))

(declare-fun b!4020303 () Bool)

(assert (=> b!4020303 (= e!2493888 (tuple2!42163 Nil!43030 lt!1427217))))

(declare-fun bm!286603 () Bool)

(declare-fun call!286610 () List!43154)

(assert (=> bm!286603 (= call!286609 (findLongestMatchInner!1367 call!286603 lt!1427635 (+ (size!32171 Nil!43030) 1) call!286610 lt!1427217 (size!32171 lt!1427217)))))

(declare-fun b!4020304 () Bool)

(declare-fun Unit!62164 () Unit!62145)

(assert (=> b!4020304 (= e!2493892 Unit!62164)))

(declare-fun b!4020305 () Bool)

(declare-fun c!694722 () Bool)

(assert (=> b!4020305 (= c!694722 call!286605)))

(declare-fun lt!1427655 () Unit!62145)

(declare-fun lt!1427640 () Unit!62145)

(assert (=> b!4020305 (= lt!1427655 lt!1427640)))

(assert (=> b!4020305 (= lt!1427217 Nil!43030)))

(assert (=> b!4020305 (= lt!1427640 call!286607)))

(declare-fun lt!1427642 () Unit!62145)

(declare-fun lt!1427633 () Unit!62145)

(assert (=> b!4020305 (= lt!1427642 lt!1427633)))

(assert (=> b!4020305 call!286606))

(assert (=> b!4020305 (= lt!1427633 call!286608)))

(assert (=> b!4020305 (= e!2493893 e!2493887)))

(declare-fun b!4020306 () Bool)

(assert (=> b!4020306 (= e!2493894 call!286609)))

(declare-fun bm!286604 () Bool)

(assert (=> bm!286604 (= call!286608 (lemmaIsPrefixRefl!2523 lt!1427217 lt!1427217))))

(declare-fun bm!286605 () Bool)

(assert (=> bm!286605 (= call!286610 (tail!6259 lt!1427217))))

(declare-fun b!4020307 () Bool)

(assert (=> b!4020307 (= e!2493891 (>= (size!32171 (_1!24215 lt!1427654)) (size!32171 Nil!43030)))))

(assert (= (and d!1190213 c!694719) b!4020303))

(assert (= (and d!1190213 (not c!694719)) b!4020302))

(assert (= (and b!4020302 c!694720) b!4020305))

(assert (= (and b!4020302 (not c!694720)) b!4020301))

(assert (= (and b!4020305 c!694722) b!4020300))

(assert (= (and b!4020305 (not c!694722)) b!4020296))

(assert (= (and b!4020301 c!694717) b!4020299))

(assert (= (and b!4020301 (not c!694717)) b!4020304))

(assert (= (and b!4020301 c!694721) b!4020298))

(assert (= (and b!4020301 (not c!694721)) b!4020306))

(assert (= (and b!4020298 c!694718) b!4020297))

(assert (= (and b!4020298 (not c!694718)) b!4020294))

(assert (= (or b!4020298 b!4020306) bm!286599))

(assert (= (or b!4020298 b!4020306) bm!286605))

(assert (= (or b!4020298 b!4020306) bm!286600))

(assert (= (or b!4020298 b!4020306) bm!286603))

(assert (= (or b!4020305 b!4020299) bm!286602))

(assert (= (or b!4020305 b!4020301) bm!286601))

(assert (= (or b!4020305 b!4020299) bm!286598))

(assert (= (or b!4020305 b!4020299) bm!286604))

(assert (= (and d!1190213 res!1635814) b!4020295))

(assert (= (and b!4020295 (not res!1635813)) b!4020307))

(assert (=> bm!286602 m!4608971))

(assert (=> bm!286603 m!4609515))

(declare-fun m!4610381 () Bool)

(assert (=> bm!286603 m!4610381))

(declare-fun m!4610383 () Bool)

(assert (=> b!4020295 m!4610383))

(declare-fun m!4610385 () Bool)

(assert (=> bm!286598 m!4610385))

(declare-fun m!4610387 () Bool)

(assert (=> b!4020307 m!4610387))

(assert (=> b!4020307 m!4609879))

(assert (=> bm!286604 m!4608973))

(assert (=> b!4020301 m!4609879))

(assert (=> b!4020301 m!4609515))

(declare-fun m!4610389 () Bool)

(assert (=> b!4020301 m!4610389))

(assert (=> b!4020301 m!4609513))

(declare-fun m!4610391 () Bool)

(assert (=> b!4020301 m!4610391))

(declare-fun m!4610393 () Bool)

(assert (=> b!4020301 m!4610393))

(declare-fun m!4610395 () Bool)

(assert (=> b!4020301 m!4610395))

(assert (=> b!4020301 m!4610389))

(declare-fun m!4610397 () Bool)

(assert (=> b!4020301 m!4610397))

(declare-fun m!4610399 () Bool)

(assert (=> b!4020301 m!4610399))

(assert (=> b!4020301 m!4610399))

(declare-fun m!4610401 () Bool)

(assert (=> b!4020301 m!4610401))

(assert (=> b!4020301 m!4610393))

(declare-fun m!4610403 () Bool)

(assert (=> b!4020301 m!4610403))

(declare-fun m!4610405 () Bool)

(assert (=> b!4020301 m!4610405))

(assert (=> b!4020301 m!4609519))

(declare-fun m!4610407 () Bool)

(assert (=> b!4020301 m!4610407))

(assert (=> bm!286605 m!4609519))

(declare-fun m!4610409 () Bool)

(assert (=> b!4020298 m!4610409))

(assert (=> bm!286601 m!4610213))

(assert (=> bm!286599 m!4609513))

(declare-fun m!4610411 () Bool)

(assert (=> bm!286600 m!4610411))

(declare-fun m!4610413 () Bool)

(assert (=> d!1190213 m!4610413))

(assert (=> d!1190213 m!4610215))

(declare-fun m!4610415 () Bool)

(assert (=> d!1190213 m!4610415))

(declare-fun m!4610417 () Bool)

(assert (=> d!1190213 m!4610417))

(declare-fun m!4610419 () Bool)

(assert (=> d!1190213 m!4610419))

(declare-fun m!4610421 () Bool)

(assert (=> d!1190213 m!4610421))

(assert (=> d!1190213 m!4610393))

(assert (=> d!1190213 m!4610415))

(declare-fun m!4610423 () Bool)

(assert (=> d!1190213 m!4610423))

(assert (=> b!4020094 d!1190213))

(declare-fun d!1190263 () Bool)

(declare-fun lt!1427658 () Int)

(assert (=> d!1190263 (= lt!1427658 (size!32171 (list!15996 (seqFromList!5085 (_1!24215 lt!1427507)))))))

(declare-fun size!32175 (Conc!13071) Int)

(assert (=> d!1190263 (= lt!1427658 (size!32175 (c!694546 (seqFromList!5085 (_1!24215 lt!1427507)))))))

(assert (=> d!1190263 (= (size!32174 (seqFromList!5085 (_1!24215 lt!1427507))) lt!1427658)))

(declare-fun bs!589796 () Bool)

(assert (= bs!589796 d!1190263))

(assert (=> bs!589796 m!4610187))

(declare-fun m!4610425 () Bool)

(assert (=> bs!589796 m!4610425))

(assert (=> bs!589796 m!4610425))

(declare-fun m!4610427 () Bool)

(assert (=> bs!589796 m!4610427))

(declare-fun m!4610429 () Bool)

(assert (=> bs!589796 m!4610429))

(assert (=> b!4020094 d!1190263))

(declare-fun d!1190265 () Bool)

(declare-fun lt!1427659 () Int)

(assert (=> d!1190265 (>= lt!1427659 0)))

(declare-fun e!2493895 () Int)

(assert (=> d!1190265 (= lt!1427659 e!2493895)))

(declare-fun c!694723 () Bool)

(assert (=> d!1190265 (= c!694723 ((_ is Nil!43030) lt!1427217))))

(assert (=> d!1190265 (= (size!32171 lt!1427217) lt!1427659)))

(declare-fun b!4020308 () Bool)

(assert (=> b!4020308 (= e!2493895 0)))

(declare-fun b!4020309 () Bool)

(assert (=> b!4020309 (= e!2493895 (+ 1 (size!32171 (t!333487 lt!1427217))))))

(assert (= (and d!1190265 c!694723) b!4020308))

(assert (= (and d!1190265 (not c!694723)) b!4020309))

(declare-fun m!4610431 () Bool)

(assert (=> b!4020309 m!4610431))

(assert (=> b!4020094 d!1190265))

(declare-fun d!1190267 () Bool)

(declare-fun e!2493898 () Bool)

(assert (=> d!1190267 e!2493898))

(declare-fun res!1635817 () Bool)

(assert (=> d!1190267 (=> res!1635817 e!2493898)))

(assert (=> d!1190267 (= res!1635817 (isEmpty!25696 (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 token!484)) Nil!43030 (size!32171 Nil!43030) lt!1427217 lt!1427217 (size!32171 lt!1427217)))))))

(declare-fun lt!1427662 () Unit!62145)

(declare-fun choose!24323 (Regex!11765 List!43154) Unit!62145)

(assert (=> d!1190267 (= lt!1427662 (choose!24323 (regex!6860 (rule!9912 token!484)) lt!1427217))))

(assert (=> d!1190267 (validRegex!5326 (regex!6860 (rule!9912 token!484)))))

(assert (=> d!1190267 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1340 (regex!6860 (rule!9912 token!484)) lt!1427217) lt!1427662)))

(declare-fun b!4020312 () Bool)

(assert (=> b!4020312 (= e!2493898 (matchR!5726 (regex!6860 (rule!9912 token!484)) (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 token!484)) Nil!43030 (size!32171 Nil!43030) lt!1427217 lt!1427217 (size!32171 lt!1427217)))))))

(assert (= (and d!1190267 (not res!1635817)) b!4020312))

(assert (=> d!1190267 m!4609515))

(assert (=> d!1190267 m!4610215))

(assert (=> d!1190267 m!4610193))

(declare-fun m!4610433 () Bool)

(assert (=> d!1190267 m!4610433))

(assert (=> d!1190267 m!4609879))

(assert (=> d!1190267 m!4609515))

(assert (=> d!1190267 m!4610197))

(assert (=> d!1190267 m!4609879))

(assert (=> b!4020312 m!4609879))

(assert (=> b!4020312 m!4609515))

(assert (=> b!4020312 m!4609879))

(assert (=> b!4020312 m!4609515))

(assert (=> b!4020312 m!4610197))

(assert (=> b!4020312 m!4610203))

(assert (=> b!4020094 d!1190267))

(declare-fun b!4020375 () Bool)

(declare-fun e!2493937 () Bool)

(assert (=> b!4020375 (= e!2493937 true)))

(declare-fun d!1190269 () Bool)

(assert (=> d!1190269 e!2493937))

(assert (= d!1190269 b!4020375))

(declare-fun lambda!127093 () Int)

(declare-fun order!22519 () Int)

(declare-fun order!22521 () Int)

(declare-fun dynLambda!18241 (Int Int) Int)

(declare-fun dynLambda!18242 (Int Int) Int)

(assert (=> b!4020375 (< (dynLambda!18241 order!22519 (toValue!9368 (transformation!6860 (rule!9912 token!484)))) (dynLambda!18242 order!22521 lambda!127093))))

(declare-fun order!22523 () Int)

(declare-fun dynLambda!18243 (Int Int) Int)

(assert (=> b!4020375 (< (dynLambda!18243 order!22523 (toChars!9227 (transformation!6860 (rule!9912 token!484)))) (dynLambda!18242 order!22521 lambda!127093))))

(assert (=> d!1190269 (= (list!15996 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 token!484))) (seqFromList!5085 (_1!24215 lt!1427507))))) (list!15996 (seqFromList!5085 (_1!24215 lt!1427507))))))

(declare-fun lt!1427690 () Unit!62145)

(declare-fun ForallOf!810 (Int BalanceConc!25736) Unit!62145)

(assert (=> d!1190269 (= lt!1427690 (ForallOf!810 lambda!127093 (seqFromList!5085 (_1!24215 lt!1427507))))))

(assert (=> d!1190269 (= (lemmaSemiInverse!1887 (transformation!6860 (rule!9912 token!484)) (seqFromList!5085 (_1!24215 lt!1427507))) lt!1427690)))

(declare-fun b_lambda!117297 () Bool)

(assert (=> (not b_lambda!117297) (not d!1190269)))

(declare-fun t!333566 () Bool)

(declare-fun tb!241657 () Bool)

(assert (=> (and b!4019334 (= (toChars!9227 (transformation!6860 (h!48452 rules!2999))) (toChars!9227 (transformation!6860 (rule!9912 token!484)))) t!333566) tb!241657))

(declare-fun tp!1222066 () Bool)

(declare-fun b!4020376 () Bool)

(declare-fun e!2493938 () Bool)

(assert (=> b!4020376 (= e!2493938 (and (inv!57476 (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 token!484))) (seqFromList!5085 (_1!24215 lt!1427507)))))) tp!1222066))))

(declare-fun result!292894 () Bool)

(assert (=> tb!241657 (= result!292894 (and (inv!57477 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 token!484))) (seqFromList!5085 (_1!24215 lt!1427507))))) e!2493938))))

(assert (= tb!241657 b!4020376))

(declare-fun m!4610569 () Bool)

(assert (=> b!4020376 m!4610569))

(declare-fun m!4610571 () Bool)

(assert (=> tb!241657 m!4610571))

(assert (=> d!1190269 t!333566))

(declare-fun b_and!308845 () Bool)

(assert (= b_and!308807 (and (=> t!333566 result!292894) b_and!308845)))

(declare-fun t!333568 () Bool)

(declare-fun tb!241659 () Bool)

(assert (=> (and b!4019363 (= (toChars!9227 (transformation!6860 (rule!9912 token!484))) (toChars!9227 (transformation!6860 (rule!9912 token!484)))) t!333568) tb!241659))

(declare-fun result!292896 () Bool)

(assert (= result!292896 result!292894))

(assert (=> d!1190269 t!333568))

(declare-fun b_and!308847 () Bool)

(assert (= b_and!308809 (and (=> t!333568 result!292896) b_and!308847)))

(declare-fun tb!241661 () Bool)

(declare-fun t!333570 () Bool)

(assert (=> (and b!4020174 (= (toChars!9227 (transformation!6860 (h!48452 (t!333489 rules!2999)))) (toChars!9227 (transformation!6860 (rule!9912 token!484)))) t!333570) tb!241661))

(declare-fun result!292898 () Bool)

(assert (= result!292898 result!292894))

(assert (=> d!1190269 t!333570))

(declare-fun b_and!308849 () Bool)

(assert (= b_and!308813 (and (=> t!333570 result!292898) b_and!308849)))

(declare-fun b_lambda!117299 () Bool)

(assert (=> (not b_lambda!117299) (not d!1190269)))

(declare-fun tb!241663 () Bool)

(declare-fun t!333572 () Bool)

(assert (=> (and b!4019334 (= (toValue!9368 (transformation!6860 (h!48452 rules!2999))) (toValue!9368 (transformation!6860 (rule!9912 token!484)))) t!333572) tb!241663))

(declare-fun result!292900 () Bool)

(assert (=> tb!241663 (= result!292900 (inv!21 (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 token!484))) (seqFromList!5085 (_1!24215 lt!1427507)))))))

(declare-fun m!4610573 () Bool)

(assert (=> tb!241663 m!4610573))

(assert (=> d!1190269 t!333572))

(declare-fun b_and!308851 () Bool)

(assert (= b_and!308803 (and (=> t!333572 result!292900) b_and!308851)))

(declare-fun t!333574 () Bool)

(declare-fun tb!241665 () Bool)

(assert (=> (and b!4019363 (= (toValue!9368 (transformation!6860 (rule!9912 token!484))) (toValue!9368 (transformation!6860 (rule!9912 token!484)))) t!333574) tb!241665))

(declare-fun result!292902 () Bool)

(assert (= result!292902 result!292900))

(assert (=> d!1190269 t!333574))

(declare-fun b_and!308853 () Bool)

(assert (= b_and!308805 (and (=> t!333574 result!292902) b_and!308853)))

(declare-fun t!333576 () Bool)

(declare-fun tb!241667 () Bool)

(assert (=> (and b!4020174 (= (toValue!9368 (transformation!6860 (h!48452 (t!333489 rules!2999)))) (toValue!9368 (transformation!6860 (rule!9912 token!484)))) t!333576) tb!241667))

(declare-fun result!292904 () Bool)

(assert (= result!292904 result!292900))

(assert (=> d!1190269 t!333576))

(declare-fun b_and!308855 () Bool)

(assert (= b_and!308811 (and (=> t!333576 result!292904) b_and!308855)))

(assert (=> d!1190269 m!4610187))

(declare-fun m!4610575 () Bool)

(assert (=> d!1190269 m!4610575))

(declare-fun m!4610577 () Bool)

(assert (=> d!1190269 m!4610577))

(declare-fun m!4610579 () Bool)

(assert (=> d!1190269 m!4610579))

(assert (=> d!1190269 m!4610187))

(assert (=> d!1190269 m!4610425))

(assert (=> d!1190269 m!4610187))

(declare-fun m!4610581 () Bool)

(assert (=> d!1190269 m!4610581))

(assert (=> d!1190269 m!4610575))

(assert (=> d!1190269 m!4610577))

(assert (=> b!4020094 d!1190269))

(declare-fun d!1190345 () Bool)

(assert (=> d!1190345 (= (apply!10057 (transformation!6860 (rule!9912 token!484)) (seqFromList!5085 (_1!24215 lt!1427507))) (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 token!484))) (seqFromList!5085 (_1!24215 lt!1427507))))))

(declare-fun b_lambda!117301 () Bool)

(assert (=> (not b_lambda!117301) (not d!1190345)))

(assert (=> d!1190345 t!333572))

(declare-fun b_and!308857 () Bool)

(assert (= b_and!308851 (and (=> t!333572 result!292900) b_and!308857)))

(assert (=> d!1190345 t!333574))

(declare-fun b_and!308859 () Bool)

(assert (= b_and!308853 (and (=> t!333574 result!292902) b_and!308859)))

(assert (=> d!1190345 t!333576))

(declare-fun b_and!308861 () Bool)

(assert (= b_and!308855 (and (=> t!333576 result!292904) b_and!308861)))

(assert (=> d!1190345 m!4610187))

(assert (=> d!1190345 m!4610575))

(assert (=> b!4020094 d!1190345))

(declare-fun d!1190347 () Bool)

(declare-fun lt!1427691 () Int)

(assert (=> d!1190347 (>= lt!1427691 0)))

(declare-fun e!2493940 () Int)

(assert (=> d!1190347 (= lt!1427691 e!2493940)))

(declare-fun c!694738 () Bool)

(assert (=> d!1190347 (= c!694738 ((_ is Nil!43030) Nil!43030))))

(assert (=> d!1190347 (= (size!32171 Nil!43030) lt!1427691)))

(declare-fun b!4020377 () Bool)

(assert (=> b!4020377 (= e!2493940 0)))

(declare-fun b!4020378 () Bool)

(assert (=> b!4020378 (= e!2493940 (+ 1 (size!32171 (t!333487 Nil!43030))))))

(assert (= (and d!1190347 c!694738) b!4020377))

(assert (= (and d!1190347 (not c!694738)) b!4020378))

(declare-fun m!4610583 () Bool)

(assert (=> b!4020378 m!4610583))

(assert (=> b!4020094 d!1190347))

(declare-fun d!1190349 () Bool)

(assert (=> d!1190349 (= (seqFromList!5085 (_1!24215 lt!1427507)) (fromListB!2324 (_1!24215 lt!1427507)))))

(declare-fun bs!589805 () Bool)

(assert (= bs!589805 d!1190349))

(declare-fun m!4610585 () Bool)

(assert (=> bs!589805 m!4610585))

(assert (=> b!4020094 d!1190349))

(declare-fun d!1190351 () Bool)

(declare-fun lt!1427692 () Int)

(assert (=> d!1190351 (>= lt!1427692 0)))

(declare-fun e!2493941 () Int)

(assert (=> d!1190351 (= lt!1427692 e!2493941)))

(declare-fun c!694739 () Bool)

(assert (=> d!1190351 (= c!694739 ((_ is Nil!43030) (originalCharacters!7460 (_1!24213 (v!39647 lt!1427206)))))))

(assert (=> d!1190351 (= (size!32171 (originalCharacters!7460 (_1!24213 (v!39647 lt!1427206)))) lt!1427692)))

(declare-fun b!4020379 () Bool)

(assert (=> b!4020379 (= e!2493941 0)))

(declare-fun b!4020380 () Bool)

(assert (=> b!4020380 (= e!2493941 (+ 1 (size!32171 (t!333487 (originalCharacters!7460 (_1!24213 (v!39647 lt!1427206)))))))))

(assert (= (and d!1190351 c!694739) b!4020379))

(assert (= (and d!1190351 (not c!694739)) b!4020380))

(declare-fun m!4610587 () Bool)

(assert (=> b!4020380 m!4610587))

(assert (=> d!1190031 d!1190351))

(assert (=> b!4020030 d!1190139))

(assert (=> b!4020030 d!1190141))

(declare-fun d!1190353 () Bool)

(declare-fun c!694742 () Bool)

(assert (=> d!1190353 (= c!694742 ((_ is Nil!43030) lt!1427516))))

(declare-fun e!2493944 () (InoxSet C!23716))

(assert (=> d!1190353 (= (content!6526 lt!1427516) e!2493944)))

(declare-fun b!4020385 () Bool)

(assert (=> b!4020385 (= e!2493944 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4020386 () Bool)

(assert (=> b!4020386 (= e!2493944 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 lt!1427516) true) (content!6526 (t!333487 lt!1427516))))))

(assert (= (and d!1190353 c!694742) b!4020385))

(assert (= (and d!1190353 (not c!694742)) b!4020386))

(declare-fun m!4610589 () Bool)

(assert (=> b!4020386 m!4610589))

(declare-fun m!4610591 () Bool)

(assert (=> b!4020386 m!4610591))

(assert (=> d!1190151 d!1190353))

(declare-fun d!1190355 () Bool)

(declare-fun c!694743 () Bool)

(assert (=> d!1190355 (= c!694743 ((_ is Nil!43030) lt!1427191))))

(declare-fun e!2493945 () (InoxSet C!23716))

(assert (=> d!1190355 (= (content!6526 lt!1427191) e!2493945)))

(declare-fun b!4020387 () Bool)

(assert (=> b!4020387 (= e!2493945 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4020388 () Bool)

(assert (=> b!4020388 (= e!2493945 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 lt!1427191) true) (content!6526 (t!333487 lt!1427191))))))

(assert (= (and d!1190355 c!694743) b!4020387))

(assert (= (and d!1190355 (not c!694743)) b!4020388))

(declare-fun m!4610593 () Bool)

(assert (=> b!4020388 m!4610593))

(declare-fun m!4610595 () Bool)

(assert (=> b!4020388 m!4610595))

(assert (=> d!1190151 d!1190355))

(declare-fun d!1190357 () Bool)

(declare-fun c!694744 () Bool)

(assert (=> d!1190357 (= c!694744 ((_ is Nil!43030) suffixResult!105))))

(declare-fun e!2493946 () (InoxSet C!23716))

(assert (=> d!1190357 (= (content!6526 suffixResult!105) e!2493946)))

(declare-fun b!4020389 () Bool)

(assert (=> b!4020389 (= e!2493946 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4020390 () Bool)

(assert (=> b!4020390 (= e!2493946 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 suffixResult!105) true) (content!6526 (t!333487 suffixResult!105))))))

(assert (= (and d!1190357 c!694744) b!4020389))

(assert (= (and d!1190357 (not c!694744)) b!4020390))

(declare-fun m!4610597 () Bool)

(assert (=> b!4020390 m!4610597))

(declare-fun m!4610599 () Bool)

(assert (=> b!4020390 m!4610599))

(assert (=> d!1190151 d!1190357))

(assert (=> d!1189867 d!1189883))

(declare-fun d!1190359 () Bool)

(assert (=> d!1190359 (not (matchR!5726 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) lt!1427191))))

(assert (=> d!1190359 true))

(declare-fun _$56!353 () Unit!62145)

(assert (=> d!1190359 (= (choose!24311 thiss!21717 rules!2999 (rule!9912 token!484) lt!1427191 lt!1427217 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) _$56!353)))

(declare-fun bs!589806 () Bool)

(assert (= bs!589806 d!1190359))

(assert (=> bs!589806 m!4608915))

(assert (=> d!1189867 d!1190359))

(assert (=> d!1189867 d!1190111))

(declare-fun d!1190361 () Bool)

(declare-fun lt!1427693 () Int)

(assert (=> d!1190361 (>= lt!1427693 0)))

(declare-fun e!2493947 () Int)

(assert (=> d!1190361 (= lt!1427693 e!2493947)))

(declare-fun c!694745 () Bool)

(assert (=> d!1190361 (= c!694745 ((_ is Nil!43030) (_2!24213 (get!14131 lt!1427490))))))

(assert (=> d!1190361 (= (size!32171 (_2!24213 (get!14131 lt!1427490))) lt!1427693)))

(declare-fun b!4020391 () Bool)

(assert (=> b!4020391 (= e!2493947 0)))

(declare-fun b!4020392 () Bool)

(assert (=> b!4020392 (= e!2493947 (+ 1 (size!32171 (t!333487 (_2!24213 (get!14131 lt!1427490))))))))

(assert (= (and d!1190361 c!694745) b!4020391))

(assert (= (and d!1190361 (not c!694745)) b!4020392))

(declare-fun m!4610601 () Bool)

(assert (=> b!4020392 m!4610601))

(assert (=> b!4020050 d!1190361))

(declare-fun d!1190363 () Bool)

(assert (=> d!1190363 (= (get!14131 lt!1427490) (v!39647 lt!1427490))))

(assert (=> b!4020050 d!1190363))

(assert (=> b!4020050 d!1190265))

(declare-fun d!1190365 () Bool)

(assert (=> d!1190365 (= (isEmpty!25695 lt!1427286) (not ((_ is Some!9273) lt!1427286)))))

(assert (=> d!1189815 d!1190365))

(declare-fun b!4020394 () Bool)

(declare-fun res!1635843 () Bool)

(declare-fun e!2493948 () Bool)

(assert (=> b!4020394 (=> (not res!1635843) (not e!2493948))))

(assert (=> b!4020394 (= res!1635843 (= (head!8527 lt!1427222) (head!8527 lt!1427222)))))

(declare-fun b!4020396 () Bool)

(declare-fun e!2493949 () Bool)

(assert (=> b!4020396 (= e!2493949 (>= (size!32171 lt!1427222) (size!32171 lt!1427222)))))

(declare-fun d!1190367 () Bool)

(assert (=> d!1190367 e!2493949))

(declare-fun res!1635842 () Bool)

(assert (=> d!1190367 (=> res!1635842 e!2493949)))

(declare-fun lt!1427694 () Bool)

(assert (=> d!1190367 (= res!1635842 (not lt!1427694))))

(declare-fun e!2493950 () Bool)

(assert (=> d!1190367 (= lt!1427694 e!2493950)))

(declare-fun res!1635844 () Bool)

(assert (=> d!1190367 (=> res!1635844 e!2493950)))

(assert (=> d!1190367 (= res!1635844 ((_ is Nil!43030) lt!1427222))))

(assert (=> d!1190367 (= (isPrefix!3947 lt!1427222 lt!1427222) lt!1427694)))

(declare-fun b!4020393 () Bool)

(assert (=> b!4020393 (= e!2493950 e!2493948)))

(declare-fun res!1635845 () Bool)

(assert (=> b!4020393 (=> (not res!1635845) (not e!2493948))))

(assert (=> b!4020393 (= res!1635845 (not ((_ is Nil!43030) lt!1427222)))))

(declare-fun b!4020395 () Bool)

(assert (=> b!4020395 (= e!2493948 (isPrefix!3947 (tail!6259 lt!1427222) (tail!6259 lt!1427222)))))

(assert (= (and d!1190367 (not res!1635844)) b!4020393))

(assert (= (and b!4020393 res!1635845) b!4020394))

(assert (= (and b!4020394 res!1635843) b!4020395))

(assert (= (and d!1190367 (not res!1635842)) b!4020396))

(assert (=> b!4020394 m!4610039))

(assert (=> b!4020394 m!4610039))

(assert (=> b!4020396 m!4609209))

(assert (=> b!4020396 m!4609209))

(assert (=> b!4020395 m!4610041))

(assert (=> b!4020395 m!4610041))

(assert (=> b!4020395 m!4610041))

(assert (=> b!4020395 m!4610041))

(declare-fun m!4610603 () Bool)

(assert (=> b!4020395 m!4610603))

(assert (=> d!1189815 d!1190367))

(declare-fun d!1190369 () Bool)

(assert (=> d!1190369 (isPrefix!3947 lt!1427222 lt!1427222)))

(declare-fun lt!1427695 () Unit!62145)

(assert (=> d!1190369 (= lt!1427695 (choose!24318 lt!1427222 lt!1427222))))

(assert (=> d!1190369 (= (lemmaIsPrefixRefl!2523 lt!1427222 lt!1427222) lt!1427695)))

(declare-fun bs!589807 () Bool)

(assert (= bs!589807 d!1190369))

(assert (=> bs!589807 m!4609237))

(declare-fun m!4610605 () Bool)

(assert (=> bs!589807 m!4610605))

(assert (=> d!1189815 d!1190369))

(declare-fun d!1190371 () Bool)

(assert (=> d!1190371 true))

(declare-fun lt!1427698 () Bool)

(declare-fun lambda!127096 () Int)

(declare-fun forall!8354 (List!43156 Int) Bool)

(assert (=> d!1190371 (= lt!1427698 (forall!8354 rules!2999 lambda!127096))))

(declare-fun e!2493955 () Bool)

(assert (=> d!1190371 (= lt!1427698 e!2493955)))

(declare-fun res!1635851 () Bool)

(assert (=> d!1190371 (=> res!1635851 e!2493955)))

(assert (=> d!1190371 (= res!1635851 (not ((_ is Cons!43032) rules!2999)))))

(assert (=> d!1190371 (= (rulesValidInductive!2498 thiss!21717 rules!2999) lt!1427698)))

(declare-fun b!4020401 () Bool)

(declare-fun e!2493956 () Bool)

(assert (=> b!4020401 (= e!2493955 e!2493956)))

(declare-fun res!1635850 () Bool)

(assert (=> b!4020401 (=> (not res!1635850) (not e!2493956))))

(assert (=> b!4020401 (= res!1635850 (ruleValid!2792 thiss!21717 (h!48452 rules!2999)))))

(declare-fun b!4020402 () Bool)

(assert (=> b!4020402 (= e!2493956 (rulesValidInductive!2498 thiss!21717 (t!333489 rules!2999)))))

(assert (= (and d!1190371 (not res!1635851)) b!4020401))

(assert (= (and b!4020401 res!1635850) b!4020402))

(declare-fun m!4610607 () Bool)

(assert (=> d!1190371 m!4610607))

(declare-fun m!4610609 () Bool)

(assert (=> b!4020401 m!4610609))

(declare-fun m!4610611 () Bool)

(assert (=> b!4020402 m!4610611))

(assert (=> d!1189815 d!1190371))

(declare-fun d!1190373 () Bool)

(declare-fun lt!1427699 () Int)

(assert (=> d!1190373 (>= lt!1427699 0)))

(declare-fun e!2493957 () Int)

(assert (=> d!1190373 (= lt!1427699 e!2493957)))

(declare-fun c!694746 () Bool)

(assert (=> d!1190373 (= c!694746 ((_ is Nil!43030) (_2!24213 (get!14131 lt!1427286))))))

(assert (=> d!1190373 (= (size!32171 (_2!24213 (get!14131 lt!1427286))) lt!1427699)))

(declare-fun b!4020405 () Bool)

(assert (=> b!4020405 (= e!2493957 0)))

(declare-fun b!4020406 () Bool)

(assert (=> b!4020406 (= e!2493957 (+ 1 (size!32171 (t!333487 (_2!24213 (get!14131 lt!1427286))))))))

(assert (= (and d!1190373 c!694746) b!4020405))

(assert (= (and d!1190373 (not c!694746)) b!4020406))

(declare-fun m!4610613 () Bool)

(assert (=> b!4020406 m!4610613))

(assert (=> b!4019528 d!1190373))

(declare-fun d!1190375 () Bool)

(assert (=> d!1190375 (= (get!14131 lt!1427286) (v!39647 lt!1427286))))

(assert (=> b!4019528 d!1190375))

(declare-fun d!1190377 () Bool)

(declare-fun lt!1427700 () Int)

(assert (=> d!1190377 (>= lt!1427700 0)))

(declare-fun e!2493958 () Int)

(assert (=> d!1190377 (= lt!1427700 e!2493958)))

(declare-fun c!694747 () Bool)

(assert (=> d!1190377 (= c!694747 ((_ is Nil!43030) lt!1427222))))

(assert (=> d!1190377 (= (size!32171 lt!1427222) lt!1427700)))

(declare-fun b!4020407 () Bool)

(assert (=> b!4020407 (= e!2493958 0)))

(declare-fun b!4020408 () Bool)

(assert (=> b!4020408 (= e!2493958 (+ 1 (size!32171 (t!333487 lt!1427222))))))

(assert (= (and d!1190377 c!694747) b!4020407))

(assert (= (and d!1190377 (not c!694747)) b!4020408))

(declare-fun m!4610615 () Bool)

(assert (=> b!4020408 m!4610615))

(assert (=> b!4019528 d!1190377))

(declare-fun b!4020409 () Bool)

(declare-fun e!2493959 () Bool)

(declare-fun e!2493960 () Bool)

(assert (=> b!4020409 (= e!2493959 e!2493960)))

(declare-fun c!694748 () Bool)

(assert (=> b!4020409 (= c!694748 ((_ is IntegerValue!21271) (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (seqFromList!5085 lt!1427181))))))

(declare-fun b!4020410 () Bool)

(assert (=> b!4020410 (= e!2493959 (inv!16 (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (seqFromList!5085 lt!1427181))))))

(declare-fun b!4020411 () Bool)

(assert (=> b!4020411 (= e!2493960 (inv!17 (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (seqFromList!5085 lt!1427181))))))

(declare-fun b!4020412 () Bool)

(declare-fun res!1635852 () Bool)

(declare-fun e!2493961 () Bool)

(assert (=> b!4020412 (=> res!1635852 e!2493961)))

(assert (=> b!4020412 (= res!1635852 (not ((_ is IntegerValue!21272) (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (seqFromList!5085 lt!1427181)))))))

(assert (=> b!4020412 (= e!2493960 e!2493961)))

(declare-fun d!1190379 () Bool)

(declare-fun c!694749 () Bool)

(assert (=> d!1190379 (= c!694749 ((_ is IntegerValue!21270) (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (seqFromList!5085 lt!1427181))))))

(assert (=> d!1190379 (= (inv!21 (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (seqFromList!5085 lt!1427181))) e!2493959)))

(declare-fun b!4020413 () Bool)

(assert (=> b!4020413 (= e!2493961 (inv!15 (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (seqFromList!5085 lt!1427181))))))

(assert (= (and d!1190379 c!694749) b!4020410))

(assert (= (and d!1190379 (not c!694749)) b!4020409))

(assert (= (and b!4020409 c!694748) b!4020411))

(assert (= (and b!4020409 (not c!694748)) b!4020412))

(assert (= (and b!4020412 (not res!1635852)) b!4020413))

(declare-fun m!4610617 () Bool)

(assert (=> b!4020410 m!4610617))

(declare-fun m!4610619 () Bool)

(assert (=> b!4020411 m!4610619))

(declare-fun m!4610621 () Bool)

(assert (=> b!4020413 m!4610621))

(assert (=> tb!241601 d!1190379))

(declare-fun d!1190381 () Bool)

(declare-fun c!694750 () Bool)

(assert (=> d!1190381 (= c!694750 ((_ is Nil!43030) lt!1427312))))

(declare-fun e!2493962 () (InoxSet C!23716))

(assert (=> d!1190381 (= (content!6526 lt!1427312) e!2493962)))

(declare-fun b!4020414 () Bool)

(assert (=> b!4020414 (= e!2493962 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4020415 () Bool)

(assert (=> b!4020415 (= e!2493962 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 lt!1427312) true) (content!6526 (t!333487 lt!1427312))))))

(assert (= (and d!1190381 c!694750) b!4020414))

(assert (= (and d!1190381 (not c!694750)) b!4020415))

(declare-fun m!4610623 () Bool)

(assert (=> b!4020415 m!4610623))

(declare-fun m!4610625 () Bool)

(assert (=> b!4020415 m!4610625))

(assert (=> d!1189843 d!1190381))

(declare-fun d!1190383 () Bool)

(declare-fun c!694751 () Bool)

(assert (=> d!1190383 (= c!694751 ((_ is Nil!43030) prefix!494))))

(declare-fun e!2493963 () (InoxSet C!23716))

(assert (=> d!1190383 (= (content!6526 prefix!494) e!2493963)))

(declare-fun b!4020416 () Bool)

(assert (=> b!4020416 (= e!2493963 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4020417 () Bool)

(assert (=> b!4020417 (= e!2493963 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 prefix!494) true) (content!6526 (t!333487 prefix!494))))))

(assert (= (and d!1190383 c!694751) b!4020416))

(assert (= (and d!1190383 (not c!694751)) b!4020417))

(declare-fun m!4610627 () Bool)

(assert (=> b!4020417 m!4610627))

(declare-fun m!4610629 () Bool)

(assert (=> b!4020417 m!4610629))

(assert (=> d!1189843 d!1190383))

(declare-fun d!1190385 () Bool)

(declare-fun c!694752 () Bool)

(assert (=> d!1190385 (= c!694752 ((_ is Nil!43030) lt!1427185))))

(declare-fun e!2493964 () (InoxSet C!23716))

(assert (=> d!1190385 (= (content!6526 lt!1427185) e!2493964)))

(declare-fun b!4020418 () Bool)

(assert (=> b!4020418 (= e!2493964 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4020419 () Bool)

(assert (=> b!4020419 (= e!2493964 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 lt!1427185) true) (content!6526 (t!333487 lt!1427185))))))

(assert (= (and d!1190385 c!694752) b!4020418))

(assert (= (and d!1190385 (not c!694752)) b!4020419))

(declare-fun m!4610631 () Bool)

(assert (=> b!4020419 m!4610631))

(declare-fun m!4610633 () Bool)

(assert (=> b!4020419 m!4610633))

(assert (=> d!1189843 d!1190385))

(declare-fun b!4020422 () Bool)

(declare-fun res!1635854 () Bool)

(declare-fun e!2493966 () Bool)

(assert (=> b!4020422 (=> (not res!1635854) (not e!2493966))))

(declare-fun lt!1427701 () List!43154)

(assert (=> b!4020422 (= res!1635854 (= (size!32171 lt!1427701) (+ (size!32171 (t!333487 lt!1427191)) (size!32171 suffixResult!105))))))

(declare-fun b!4020420 () Bool)

(declare-fun e!2493965 () List!43154)

(assert (=> b!4020420 (= e!2493965 suffixResult!105)))

(declare-fun d!1190387 () Bool)

(assert (=> d!1190387 e!2493966))

(declare-fun res!1635853 () Bool)

(assert (=> d!1190387 (=> (not res!1635853) (not e!2493966))))

(assert (=> d!1190387 (= res!1635853 (= (content!6526 lt!1427701) ((_ map or) (content!6526 (t!333487 lt!1427191)) (content!6526 suffixResult!105))))))

(assert (=> d!1190387 (= lt!1427701 e!2493965)))

(declare-fun c!694753 () Bool)

(assert (=> d!1190387 (= c!694753 ((_ is Nil!43030) (t!333487 lt!1427191)))))

(assert (=> d!1190387 (= (++!11262 (t!333487 lt!1427191) suffixResult!105) lt!1427701)))

(declare-fun b!4020423 () Bool)

(assert (=> b!4020423 (= e!2493966 (or (not (= suffixResult!105 Nil!43030)) (= lt!1427701 (t!333487 lt!1427191))))))

(declare-fun b!4020421 () Bool)

(assert (=> b!4020421 (= e!2493965 (Cons!43030 (h!48450 (t!333487 lt!1427191)) (++!11262 (t!333487 (t!333487 lt!1427191)) suffixResult!105)))))

(assert (= (and d!1190387 c!694753) b!4020420))

(assert (= (and d!1190387 (not c!694753)) b!4020421))

(assert (= (and d!1190387 res!1635853) b!4020422))

(assert (= (and b!4020422 res!1635854) b!4020423))

(declare-fun m!4610635 () Bool)

(assert (=> b!4020422 m!4610635))

(assert (=> b!4020422 m!4610245))

(assert (=> b!4020422 m!4610233))

(declare-fun m!4610637 () Bool)

(assert (=> d!1190387 m!4610637))

(assert (=> d!1190387 m!4610595))

(assert (=> d!1190387 m!4610237))

(declare-fun m!4610639 () Bool)

(assert (=> b!4020421 m!4610639))

(assert (=> b!4020124 d!1190387))

(declare-fun b!4020426 () Bool)

(declare-fun res!1635856 () Bool)

(declare-fun e!2493968 () Bool)

(assert (=> b!4020426 (=> (not res!1635856) (not e!2493968))))

(declare-fun lt!1427702 () List!43154)

(assert (=> b!4020426 (= res!1635856 (= (size!32171 lt!1427702) (+ (size!32171 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427443))))) (size!32171 (_2!24213 (get!14131 lt!1427443))))))))

(declare-fun b!4020424 () Bool)

(declare-fun e!2493967 () List!43154)

(assert (=> b!4020424 (= e!2493967 (_2!24213 (get!14131 lt!1427443)))))

(declare-fun d!1190389 () Bool)

(assert (=> d!1190389 e!2493968))

(declare-fun res!1635855 () Bool)

(assert (=> d!1190389 (=> (not res!1635855) (not e!2493968))))

(assert (=> d!1190389 (= res!1635855 (= (content!6526 lt!1427702) ((_ map or) (content!6526 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427443))))) (content!6526 (_2!24213 (get!14131 lt!1427443))))))))

(assert (=> d!1190389 (= lt!1427702 e!2493967)))

(declare-fun c!694754 () Bool)

(assert (=> d!1190389 (= c!694754 ((_ is Nil!43030) (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427443))))))))

(assert (=> d!1190389 (= (++!11262 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427443)))) (_2!24213 (get!14131 lt!1427443))) lt!1427702)))

(declare-fun b!4020427 () Bool)

(assert (=> b!4020427 (= e!2493968 (or (not (= (_2!24213 (get!14131 lt!1427443)) Nil!43030)) (= lt!1427702 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427443)))))))))

(declare-fun b!4020425 () Bool)

(assert (=> b!4020425 (= e!2493967 (Cons!43030 (h!48450 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427443))))) (++!11262 (t!333487 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427443))))) (_2!24213 (get!14131 lt!1427443)))))))

(assert (= (and d!1190389 c!694754) b!4020424))

(assert (= (and d!1190389 (not c!694754)) b!4020425))

(assert (= (and d!1190389 res!1635855) b!4020426))

(assert (= (and b!4020426 res!1635856) b!4020427))

(declare-fun m!4610641 () Bool)

(assert (=> b!4020426 m!4610641))

(assert (=> b!4020426 m!4609853))

(declare-fun m!4610643 () Bool)

(assert (=> b!4020426 m!4610643))

(assert (=> b!4020426 m!4609857))

(declare-fun m!4610645 () Bool)

(assert (=> d!1190389 m!4610645))

(assert (=> d!1190389 m!4609853))

(declare-fun m!4610647 () Bool)

(assert (=> d!1190389 m!4610647))

(declare-fun m!4610649 () Bool)

(assert (=> d!1190389 m!4610649))

(declare-fun m!4610651 () Bool)

(assert (=> b!4020425 m!4610651))

(assert (=> b!4019937 d!1190389))

(declare-fun d!1190391 () Bool)

(assert (=> d!1190391 (= (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427443)))) (list!15998 (c!694546 (charsOf!4676 (_1!24213 (get!14131 lt!1427443))))))))

(declare-fun bs!589808 () Bool)

(assert (= bs!589808 d!1190391))

(declare-fun m!4610653 () Bool)

(assert (=> bs!589808 m!4610653))

(assert (=> b!4019937 d!1190391))

(declare-fun d!1190393 () Bool)

(declare-fun lt!1427703 () BalanceConc!25736)

(assert (=> d!1190393 (= (list!15996 lt!1427703) (originalCharacters!7460 (_1!24213 (get!14131 lt!1427443))))))

(assert (=> d!1190393 (= lt!1427703 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427443))))) (value!216144 (_1!24213 (get!14131 lt!1427443)))))))

(assert (=> d!1190393 (= (charsOf!4676 (_1!24213 (get!14131 lt!1427443))) lt!1427703)))

(declare-fun b_lambda!117303 () Bool)

(assert (=> (not b_lambda!117303) (not d!1190393)))

(declare-fun t!333578 () Bool)

(declare-fun tb!241669 () Bool)

(assert (=> (and b!4019334 (= (toChars!9227 (transformation!6860 (h!48452 rules!2999))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427443)))))) t!333578) tb!241669))

(declare-fun b!4020428 () Bool)

(declare-fun e!2493969 () Bool)

(declare-fun tp!1222067 () Bool)

(assert (=> b!4020428 (= e!2493969 (and (inv!57476 (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427443))))) (value!216144 (_1!24213 (get!14131 lt!1427443)))))) tp!1222067))))

(declare-fun result!292906 () Bool)

(assert (=> tb!241669 (= result!292906 (and (inv!57477 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427443))))) (value!216144 (_1!24213 (get!14131 lt!1427443))))) e!2493969))))

(assert (= tb!241669 b!4020428))

(declare-fun m!4610655 () Bool)

(assert (=> b!4020428 m!4610655))

(declare-fun m!4610657 () Bool)

(assert (=> tb!241669 m!4610657))

(assert (=> d!1190393 t!333578))

(declare-fun b_and!308863 () Bool)

(assert (= b_and!308845 (and (=> t!333578 result!292906) b_and!308863)))

(declare-fun t!333580 () Bool)

(declare-fun tb!241671 () Bool)

(assert (=> (and b!4019363 (= (toChars!9227 (transformation!6860 (rule!9912 token!484))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427443)))))) t!333580) tb!241671))

(declare-fun result!292908 () Bool)

(assert (= result!292908 result!292906))

(assert (=> d!1190393 t!333580))

(declare-fun b_and!308865 () Bool)

(assert (= b_and!308847 (and (=> t!333580 result!292908) b_and!308865)))

(declare-fun tb!241673 () Bool)

(declare-fun t!333582 () Bool)

(assert (=> (and b!4020174 (= (toChars!9227 (transformation!6860 (h!48452 (t!333489 rules!2999)))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427443)))))) t!333582) tb!241673))

(declare-fun result!292910 () Bool)

(assert (= result!292910 result!292906))

(assert (=> d!1190393 t!333582))

(declare-fun b_and!308867 () Bool)

(assert (= b_and!308849 (and (=> t!333582 result!292910) b_and!308867)))

(declare-fun m!4610659 () Bool)

(assert (=> d!1190393 m!4610659))

(declare-fun m!4610661 () Bool)

(assert (=> d!1190393 m!4610661))

(assert (=> b!4019937 d!1190393))

(declare-fun d!1190395 () Bool)

(assert (=> d!1190395 (= (get!14131 lt!1427443) (v!39647 lt!1427443))))

(assert (=> b!4019937 d!1190395))

(declare-fun d!1190397 () Bool)

(declare-fun isBalanced!3664 (Conc!13071) Bool)

(assert (=> d!1190397 (= (inv!57477 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (value!216144 (_1!24213 (v!39647 lt!1427206))))) (isBalanced!3664 (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (value!216144 (_1!24213 (v!39647 lt!1427206)))))))))

(declare-fun bs!589809 () Bool)

(assert (= bs!589809 d!1190397))

(declare-fun m!4610663 () Bool)

(assert (=> bs!589809 m!4610663))

(assert (=> tb!241613 d!1190397))

(declare-fun d!1190399 () Bool)

(declare-fun c!694755 () Bool)

(assert (=> d!1190399 (= c!694755 ((_ is Nil!43030) lt!1427473))))

(declare-fun e!2493970 () (InoxSet C!23716))

(assert (=> d!1190399 (= (content!6526 lt!1427473) e!2493970)))

(declare-fun b!4020429 () Bool)

(assert (=> b!4020429 (= e!2493970 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4020430 () Bool)

(assert (=> b!4020430 (= e!2493970 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 lt!1427473) true) (content!6526 (t!333487 lt!1427473))))))

(assert (= (and d!1190399 c!694755) b!4020429))

(assert (= (and d!1190399 (not c!694755)) b!4020430))

(declare-fun m!4610665 () Bool)

(assert (=> b!4020430 m!4610665))

(declare-fun m!4610667 () Bool)

(assert (=> b!4020430 m!4610667))

(assert (=> d!1190065 d!1190399))

(assert (=> d!1190065 d!1190355))

(declare-fun d!1190401 () Bool)

(declare-fun c!694756 () Bool)

(assert (=> d!1190401 (= c!694756 ((_ is Nil!43030) newSuffixResult!27))))

(declare-fun e!2493971 () (InoxSet C!23716))

(assert (=> d!1190401 (= (content!6526 newSuffixResult!27) e!2493971)))

(declare-fun b!4020431 () Bool)

(assert (=> b!4020431 (= e!2493971 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4020432 () Bool)

(assert (=> b!4020432 (= e!2493971 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 newSuffixResult!27) true) (content!6526 (t!333487 newSuffixResult!27))))))

(assert (= (and d!1190401 c!694756) b!4020431))

(assert (= (and d!1190401 (not c!694756)) b!4020432))

(declare-fun m!4610669 () Bool)

(assert (=> b!4020432 m!4610669))

(declare-fun m!4610671 () Bool)

(assert (=> b!4020432 m!4610671))

(assert (=> d!1190065 d!1190401))

(declare-fun d!1190403 () Bool)

(declare-fun nullableFct!1152 (Regex!11765) Bool)

(assert (=> d!1190403 (= (nullable!4126 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (nullableFct!1152 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(declare-fun bs!589810 () Bool)

(assert (= bs!589810 d!1190403))

(declare-fun m!4610673 () Bool)

(assert (=> bs!589810 m!4610673))

(assert (=> b!4019704 d!1190403))

(declare-fun d!1190405 () Bool)

(assert (=> d!1190405 true))

(declare-fun order!22525 () Int)

(declare-fun lambda!127099 () Int)

(declare-fun dynLambda!18246 (Int Int) Int)

(assert (=> d!1190405 (< (dynLambda!18241 order!22519 (toValue!9368 (transformation!6860 (rule!9912 token!484)))) (dynLambda!18246 order!22525 lambda!127099))))

(declare-fun Forall2!1075 (Int) Bool)

(assert (=> d!1190405 (= (equivClasses!2832 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (toValue!9368 (transformation!6860 (rule!9912 token!484)))) (Forall2!1075 lambda!127099))))

(declare-fun bs!589811 () Bool)

(assert (= bs!589811 d!1190405))

(declare-fun m!4610675 () Bool)

(assert (=> bs!589811 m!4610675))

(assert (=> b!4020127 d!1190405))

(declare-fun d!1190407 () Bool)

(declare-fun lt!1427704 () Int)

(assert (=> d!1190407 (>= lt!1427704 0)))

(declare-fun e!2493974 () Int)

(assert (=> d!1190407 (= lt!1427704 e!2493974)))

(declare-fun c!694757 () Bool)

(assert (=> d!1190407 (= c!694757 ((_ is Nil!43030) lt!1427473))))

(assert (=> d!1190407 (= (size!32171 lt!1427473) lt!1427704)))

(declare-fun b!4020437 () Bool)

(assert (=> b!4020437 (= e!2493974 0)))

(declare-fun b!4020438 () Bool)

(assert (=> b!4020438 (= e!2493974 (+ 1 (size!32171 (t!333487 lt!1427473))))))

(assert (= (and d!1190407 c!694757) b!4020437))

(assert (= (and d!1190407 (not c!694757)) b!4020438))

(declare-fun m!4610677 () Bool)

(assert (=> b!4020438 m!4610677))

(assert (=> b!4019988 d!1190407))

(assert (=> b!4019988 d!1190159))

(declare-fun d!1190409 () Bool)

(declare-fun lt!1427705 () Int)

(assert (=> d!1190409 (>= lt!1427705 0)))

(declare-fun e!2493975 () Int)

(assert (=> d!1190409 (= lt!1427705 e!2493975)))

(declare-fun c!694758 () Bool)

(assert (=> d!1190409 (= c!694758 ((_ is Nil!43030) newSuffixResult!27))))

(assert (=> d!1190409 (= (size!32171 newSuffixResult!27) lt!1427705)))

(declare-fun b!4020439 () Bool)

(assert (=> b!4020439 (= e!2493975 0)))

(declare-fun b!4020440 () Bool)

(assert (=> b!4020440 (= e!2493975 (+ 1 (size!32171 (t!333487 newSuffixResult!27))))))

(assert (= (and d!1190409 c!694758) b!4020439))

(assert (= (and d!1190409 (not c!694758)) b!4020440))

(declare-fun m!4610679 () Bool)

(assert (=> b!4020440 m!4610679))

(assert (=> b!4019988 d!1190409))

(declare-fun b!4020442 () Bool)

(declare-fun res!1635860 () Bool)

(declare-fun e!2493976 () Bool)

(assert (=> b!4020442 (=> (not res!1635860) (not e!2493976))))

(assert (=> b!4020442 (= res!1635860 (= (head!8527 lt!1427191) (head!8527 (++!11262 prefix!494 suffix!1299))))))

(declare-fun e!2493977 () Bool)

(declare-fun b!4020444 () Bool)

(assert (=> b!4020444 (= e!2493977 (>= (size!32171 (++!11262 prefix!494 suffix!1299)) (size!32171 lt!1427191)))))

(declare-fun d!1190411 () Bool)

(assert (=> d!1190411 e!2493977))

(declare-fun res!1635859 () Bool)

(assert (=> d!1190411 (=> res!1635859 e!2493977)))

(declare-fun lt!1427706 () Bool)

(assert (=> d!1190411 (= res!1635859 (not lt!1427706))))

(declare-fun e!2493978 () Bool)

(assert (=> d!1190411 (= lt!1427706 e!2493978)))

(declare-fun res!1635861 () Bool)

(assert (=> d!1190411 (=> res!1635861 e!2493978)))

(assert (=> d!1190411 (= res!1635861 ((_ is Nil!43030) lt!1427191))))

(assert (=> d!1190411 (= (isPrefix!3947 lt!1427191 (++!11262 prefix!494 suffix!1299)) lt!1427706)))

(declare-fun b!4020441 () Bool)

(assert (=> b!4020441 (= e!2493978 e!2493976)))

(declare-fun res!1635862 () Bool)

(assert (=> b!4020441 (=> (not res!1635862) (not e!2493976))))

(assert (=> b!4020441 (= res!1635862 (not ((_ is Nil!43030) (++!11262 prefix!494 suffix!1299))))))

(declare-fun b!4020443 () Bool)

(assert (=> b!4020443 (= e!2493976 (isPrefix!3947 (tail!6259 lt!1427191) (tail!6259 (++!11262 prefix!494 suffix!1299))))))

(assert (= (and d!1190411 (not res!1635861)) b!4020441))

(assert (= (and b!4020441 res!1635862) b!4020442))

(assert (= (and b!4020442 res!1635860) b!4020443))

(assert (= (and d!1190411 (not res!1635859)) b!4020444))

(assert (=> b!4020442 m!4609279))

(assert (=> b!4020442 m!4608961))

(declare-fun m!4610681 () Bool)

(assert (=> b!4020442 m!4610681))

(assert (=> b!4020444 m!4608961))

(declare-fun m!4610683 () Bool)

(assert (=> b!4020444 m!4610683))

(assert (=> b!4020444 m!4609075))

(assert (=> b!4020443 m!4609285))

(assert (=> b!4020443 m!4608961))

(declare-fun m!4610685 () Bool)

(assert (=> b!4020443 m!4610685))

(assert (=> b!4020443 m!4609285))

(assert (=> b!4020443 m!4610685))

(declare-fun m!4610687 () Bool)

(assert (=> b!4020443 m!4610687))

(assert (=> d!1190149 d!1190411))

(assert (=> d!1190149 d!1190107))

(declare-fun d!1190413 () Bool)

(assert (=> d!1190413 (isPrefix!3947 lt!1427191 (++!11262 prefix!494 suffix!1299))))

(assert (=> d!1190413 true))

(declare-fun _$58!543 () Unit!62145)

(assert (=> d!1190413 (= (choose!24312 lt!1427191 prefix!494 suffix!1299) _$58!543)))

(declare-fun bs!589812 () Bool)

(assert (= bs!589812 d!1190413))

(assert (=> bs!589812 m!4608961))

(assert (=> bs!589812 m!4608961))

(assert (=> bs!589812 m!4610227))

(assert (=> d!1190149 d!1190413))

(assert (=> d!1190149 d!1190051))

(declare-fun d!1190415 () Bool)

(declare-fun charsToBigInt!0 (List!43155 Int) Int)

(assert (=> d!1190415 (= (inv!15 (value!216144 token!484)) (= (charsToBigInt!0 (text!50079 (value!216144 token!484)) 0) (value!216139 (value!216144 token!484))))))

(declare-fun bs!589813 () Bool)

(assert (= bs!589813 d!1190415))

(declare-fun m!4610689 () Bool)

(assert (=> bs!589813 m!4610689))

(assert (=> b!4020087 d!1190415))

(assert (=> d!1190157 d!1190155))

(declare-fun d!1190417 () Bool)

(assert (=> d!1190417 (ruleValid!2792 thiss!21717 (rule!9912 token!484))))

(assert (=> d!1190417 true))

(declare-fun _$65!1453 () Unit!62145)

(assert (=> d!1190417 (= (choose!24316 thiss!21717 (rule!9912 token!484) rules!2999) _$65!1453)))

(declare-fun bs!589814 () Bool)

(assert (= bs!589814 d!1190417))

(assert (=> bs!589814 m!4609037))

(assert (=> d!1190157 d!1190417))

(declare-fun d!1190419 () Bool)

(declare-fun lt!1427731 () Bool)

(declare-fun content!6528 (List!43156) (InoxSet Rule!13520))

(assert (=> d!1190419 (= lt!1427731 (select (content!6528 rules!2999) (rule!9912 token!484)))))

(declare-fun e!2493989 () Bool)

(assert (=> d!1190419 (= lt!1427731 e!2493989)))

(declare-fun res!1635868 () Bool)

(assert (=> d!1190419 (=> (not res!1635868) (not e!2493989))))

(assert (=> d!1190419 (= res!1635868 ((_ is Cons!43032) rules!2999))))

(assert (=> d!1190419 (= (contains!8548 rules!2999 (rule!9912 token!484)) lt!1427731)))

(declare-fun b!4020461 () Bool)

(declare-fun e!2493990 () Bool)

(assert (=> b!4020461 (= e!2493989 e!2493990)))

(declare-fun res!1635867 () Bool)

(assert (=> b!4020461 (=> res!1635867 e!2493990)))

(assert (=> b!4020461 (= res!1635867 (= (h!48452 rules!2999) (rule!9912 token!484)))))

(declare-fun b!4020462 () Bool)

(assert (=> b!4020462 (= e!2493990 (contains!8548 (t!333489 rules!2999) (rule!9912 token!484)))))

(assert (= (and d!1190419 res!1635868) b!4020461))

(assert (= (and b!4020461 (not res!1635867)) b!4020462))

(declare-fun m!4610691 () Bool)

(assert (=> d!1190419 m!4610691))

(declare-fun m!4610693 () Bool)

(assert (=> d!1190419 m!4610693))

(declare-fun m!4610695 () Bool)

(assert (=> b!4020462 m!4610695))

(assert (=> d!1190157 d!1190419))

(declare-fun d!1190421 () Bool)

(declare-fun e!2493999 () Bool)

(assert (=> d!1190421 e!2493999))

(declare-fun res!1635871 () Bool)

(assert (=> d!1190421 (=> (not res!1635871) (not e!2493999))))

(declare-fun lt!1427768 () BalanceConc!25736)

(assert (=> d!1190421 (= res!1635871 (= (list!15996 lt!1427768) lt!1427191))))

(declare-fun fromList!846 (List!43154) Conc!13071)

(assert (=> d!1190421 (= lt!1427768 (BalanceConc!25737 (fromList!846 lt!1427191)))))

(assert (=> d!1190421 (= (fromListB!2324 lt!1427191) lt!1427768)))

(declare-fun b!4020477 () Bool)

(assert (=> b!4020477 (= e!2493999 (isBalanced!3664 (fromList!846 lt!1427191)))))

(assert (= (and d!1190421 res!1635871) b!4020477))

(declare-fun m!4610697 () Bool)

(assert (=> d!1190421 m!4610697))

(declare-fun m!4610699 () Bool)

(assert (=> d!1190421 m!4610699))

(assert (=> b!4020477 m!4610699))

(assert (=> b!4020477 m!4610699))

(declare-fun m!4610701 () Bool)

(assert (=> b!4020477 m!4610701))

(assert (=> d!1190131 d!1190421))

(declare-fun b!4020480 () Bool)

(declare-fun res!1635873 () Bool)

(declare-fun e!2494001 () Bool)

(assert (=> b!4020480 (=> (not res!1635873) (not e!2494001))))

(declare-fun lt!1427769 () List!43154)

(assert (=> b!4020480 (= res!1635873 (= (size!32171 lt!1427769) (+ (size!32171 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427490))))) (size!32171 (_2!24213 (get!14131 lt!1427490))))))))

(declare-fun b!4020478 () Bool)

(declare-fun e!2494000 () List!43154)

(assert (=> b!4020478 (= e!2494000 (_2!24213 (get!14131 lt!1427490)))))

(declare-fun d!1190423 () Bool)

(assert (=> d!1190423 e!2494001))

(declare-fun res!1635872 () Bool)

(assert (=> d!1190423 (=> (not res!1635872) (not e!2494001))))

(assert (=> d!1190423 (= res!1635872 (= (content!6526 lt!1427769) ((_ map or) (content!6526 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427490))))) (content!6526 (_2!24213 (get!14131 lt!1427490))))))))

(assert (=> d!1190423 (= lt!1427769 e!2494000)))

(declare-fun c!694772 () Bool)

(assert (=> d!1190423 (= c!694772 ((_ is Nil!43030) (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427490))))))))

(assert (=> d!1190423 (= (++!11262 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427490)))) (_2!24213 (get!14131 lt!1427490))) lt!1427769)))

(declare-fun b!4020481 () Bool)

(assert (=> b!4020481 (= e!2494001 (or (not (= (_2!24213 (get!14131 lt!1427490)) Nil!43030)) (= lt!1427769 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427490)))))))))

(declare-fun b!4020479 () Bool)

(assert (=> b!4020479 (= e!2494000 (Cons!43030 (h!48450 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427490))))) (++!11262 (t!333487 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427490))))) (_2!24213 (get!14131 lt!1427490)))))))

(assert (= (and d!1190423 c!694772) b!4020478))

(assert (= (and d!1190423 (not c!694772)) b!4020479))

(assert (= (and d!1190423 res!1635872) b!4020480))

(assert (= (and b!4020480 res!1635873) b!4020481))

(declare-fun m!4610703 () Bool)

(assert (=> b!4020480 m!4610703))

(assert (=> b!4020480 m!4610079))

(declare-fun m!4610705 () Bool)

(assert (=> b!4020480 m!4610705))

(assert (=> b!4020480 m!4610089))

(declare-fun m!4610707 () Bool)

(assert (=> d!1190423 m!4610707))

(assert (=> d!1190423 m!4610079))

(declare-fun m!4610709 () Bool)

(assert (=> d!1190423 m!4610709))

(declare-fun m!4610711 () Bool)

(assert (=> d!1190423 m!4610711))

(declare-fun m!4610713 () Bool)

(assert (=> b!4020479 m!4610713))

(assert (=> b!4020043 d!1190423))

(declare-fun d!1190425 () Bool)

(assert (=> d!1190425 (= (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427490)))) (list!15998 (c!694546 (charsOf!4676 (_1!24213 (get!14131 lt!1427490))))))))

(declare-fun bs!589815 () Bool)

(assert (= bs!589815 d!1190425))

(declare-fun m!4610715 () Bool)

(assert (=> bs!589815 m!4610715))

(assert (=> b!4020043 d!1190425))

(declare-fun d!1190427 () Bool)

(declare-fun lt!1427770 () BalanceConc!25736)

(assert (=> d!1190427 (= (list!15996 lt!1427770) (originalCharacters!7460 (_1!24213 (get!14131 lt!1427490))))))

(assert (=> d!1190427 (= lt!1427770 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427490))))) (value!216144 (_1!24213 (get!14131 lt!1427490)))))))

(assert (=> d!1190427 (= (charsOf!4676 (_1!24213 (get!14131 lt!1427490))) lt!1427770)))

(declare-fun b_lambda!117305 () Bool)

(assert (=> (not b_lambda!117305) (not d!1190427)))

(declare-fun t!333584 () Bool)

(declare-fun tb!241675 () Bool)

(assert (=> (and b!4019334 (= (toChars!9227 (transformation!6860 (h!48452 rules!2999))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427490)))))) t!333584) tb!241675))

(declare-fun b!4020482 () Bool)

(declare-fun e!2494002 () Bool)

(declare-fun tp!1222068 () Bool)

(assert (=> b!4020482 (= e!2494002 (and (inv!57476 (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427490))))) (value!216144 (_1!24213 (get!14131 lt!1427490)))))) tp!1222068))))

(declare-fun result!292912 () Bool)

(assert (=> tb!241675 (= result!292912 (and (inv!57477 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427490))))) (value!216144 (_1!24213 (get!14131 lt!1427490))))) e!2494002))))

(assert (= tb!241675 b!4020482))

(declare-fun m!4610717 () Bool)

(assert (=> b!4020482 m!4610717))

(declare-fun m!4610719 () Bool)

(assert (=> tb!241675 m!4610719))

(assert (=> d!1190427 t!333584))

(declare-fun b_and!308869 () Bool)

(assert (= b_and!308863 (and (=> t!333584 result!292912) b_and!308869)))

(declare-fun t!333586 () Bool)

(declare-fun tb!241677 () Bool)

(assert (=> (and b!4019363 (= (toChars!9227 (transformation!6860 (rule!9912 token!484))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427490)))))) t!333586) tb!241677))

(declare-fun result!292914 () Bool)

(assert (= result!292914 result!292912))

(assert (=> d!1190427 t!333586))

(declare-fun b_and!308871 () Bool)

(assert (= b_and!308865 (and (=> t!333586 result!292914) b_and!308871)))

(declare-fun t!333588 () Bool)

(declare-fun tb!241679 () Bool)

(assert (=> (and b!4020174 (= (toChars!9227 (transformation!6860 (h!48452 (t!333489 rules!2999)))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427490)))))) t!333588) tb!241679))

(declare-fun result!292916 () Bool)

(assert (= result!292916 result!292912))

(assert (=> d!1190427 t!333588))

(declare-fun b_and!308873 () Bool)

(assert (= b_and!308867 (and (=> t!333588 result!292916) b_and!308873)))

(declare-fun m!4610721 () Bool)

(assert (=> d!1190427 m!4610721))

(declare-fun m!4610723 () Bool)

(assert (=> d!1190427 m!4610723))

(assert (=> b!4020043 d!1190427))

(assert (=> b!4020043 d!1190363))

(assert (=> d!1190167 d!1190419))

(declare-fun d!1190429 () Bool)

(assert (=> d!1190429 (= (isEmpty!25696 (tail!6259 lt!1427191)) ((_ is Nil!43030) (tail!6259 lt!1427191)))))

(assert (=> b!4019696 d!1190429))

(declare-fun d!1190431 () Bool)

(assert (=> d!1190431 (= (tail!6259 lt!1427191) (t!333487 lt!1427191))))

(assert (=> b!4019696 d!1190431))

(declare-fun d!1190433 () Bool)

(assert (=> d!1190433 (= (isEmpty!25696 lt!1427191) ((_ is Nil!43030) lt!1427191))))

(assert (=> d!1189883 d!1190433))

(declare-fun b!4020505 () Bool)

(declare-fun e!2494021 () Bool)

(declare-fun e!2494023 () Bool)

(assert (=> b!4020505 (= e!2494021 e!2494023)))

(declare-fun c!694778 () Bool)

(assert (=> b!4020505 (= c!694778 ((_ is Star!11765) (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(declare-fun bm!286628 () Bool)

(declare-fun call!286634 () Bool)

(declare-fun c!694777 () Bool)

(assert (=> bm!286628 (= call!286634 (validRegex!5326 (ite c!694777 (regOne!24043 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (regOne!24042 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))))

(declare-fun b!4020506 () Bool)

(declare-fun e!2494022 () Bool)

(declare-fun call!286635 () Bool)

(assert (=> b!4020506 (= e!2494022 call!286635)))

(declare-fun d!1190435 () Bool)

(declare-fun res!1635890 () Bool)

(assert (=> d!1190435 (=> res!1635890 e!2494021)))

(assert (=> d!1190435 (= res!1635890 ((_ is ElementMatch!11765) (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(assert (=> d!1190435 (= (validRegex!5326 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) e!2494021)))

(declare-fun bm!286629 () Bool)

(declare-fun call!286633 () Bool)

(assert (=> bm!286629 (= call!286635 call!286633)))

(declare-fun bm!286630 () Bool)

(assert (=> bm!286630 (= call!286633 (validRegex!5326 (ite c!694778 (reg!12094 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (ite c!694777 (regTwo!24043 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (regTwo!24042 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))))))

(declare-fun b!4020507 () Bool)

(declare-fun res!1635888 () Bool)

(declare-fun e!2494024 () Bool)

(assert (=> b!4020507 (=> res!1635888 e!2494024)))

(assert (=> b!4020507 (= res!1635888 (not ((_ is Concat!18856) (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))))

(declare-fun e!2494027 () Bool)

(assert (=> b!4020507 (= e!2494027 e!2494024)))

(declare-fun b!4020508 () Bool)

(assert (=> b!4020508 (= e!2494023 e!2494027)))

(assert (=> b!4020508 (= c!694777 ((_ is Union!11765) (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(declare-fun b!4020509 () Bool)

(declare-fun e!2494025 () Bool)

(assert (=> b!4020509 (= e!2494023 e!2494025)))

(declare-fun res!1635889 () Bool)

(assert (=> b!4020509 (= res!1635889 (not (nullable!4126 (reg!12094 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))))

(assert (=> b!4020509 (=> (not res!1635889) (not e!2494025))))

(declare-fun b!4020510 () Bool)

(declare-fun e!2494026 () Bool)

(assert (=> b!4020510 (= e!2494024 e!2494026)))

(declare-fun res!1635892 () Bool)

(assert (=> b!4020510 (=> (not res!1635892) (not e!2494026))))

(assert (=> b!4020510 (= res!1635892 call!286634)))

(declare-fun b!4020511 () Bool)

(assert (=> b!4020511 (= e!2494026 call!286635)))

(declare-fun b!4020512 () Bool)

(declare-fun res!1635891 () Bool)

(assert (=> b!4020512 (=> (not res!1635891) (not e!2494022))))

(assert (=> b!4020512 (= res!1635891 call!286634)))

(assert (=> b!4020512 (= e!2494027 e!2494022)))

(declare-fun b!4020513 () Bool)

(assert (=> b!4020513 (= e!2494025 call!286633)))

(assert (= (and d!1190435 (not res!1635890)) b!4020505))

(assert (= (and b!4020505 c!694778) b!4020509))

(assert (= (and b!4020505 (not c!694778)) b!4020508))

(assert (= (and b!4020509 res!1635889) b!4020513))

(assert (= (and b!4020508 c!694777) b!4020512))

(assert (= (and b!4020508 (not c!694777)) b!4020507))

(assert (= (and b!4020512 res!1635891) b!4020506))

(assert (= (and b!4020507 (not res!1635888)) b!4020510))

(assert (= (and b!4020510 res!1635892) b!4020511))

(assert (= (or b!4020506 b!4020511) bm!286629))

(assert (= (or b!4020512 b!4020510) bm!286628))

(assert (= (or b!4020513 bm!286629) bm!286630))

(declare-fun m!4610725 () Bool)

(assert (=> bm!286628 m!4610725))

(declare-fun m!4610727 () Bool)

(assert (=> bm!286630 m!4610727))

(declare-fun m!4610729 () Bool)

(assert (=> b!4020509 m!4610729))

(assert (=> d!1189883 d!1190435))

(declare-fun d!1190437 () Bool)

(declare-fun c!694787 () Bool)

(assert (=> d!1190437 (= c!694787 ((_ is Node!13071) (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (value!216144 (_1!24213 (v!39647 lt!1427206)))))))))

(declare-fun e!2494040 () Bool)

(assert (=> d!1190437 (= (inv!57476 (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (value!216144 (_1!24213 (v!39647 lt!1427206)))))) e!2494040)))

(declare-fun b!4020534 () Bool)

(declare-fun inv!57478 (Conc!13071) Bool)

(assert (=> b!4020534 (= e!2494040 (inv!57478 (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (value!216144 (_1!24213 (v!39647 lt!1427206)))))))))

(declare-fun b!4020535 () Bool)

(declare-fun e!2494041 () Bool)

(assert (=> b!4020535 (= e!2494040 e!2494041)))

(declare-fun res!1635897 () Bool)

(assert (=> b!4020535 (= res!1635897 (not ((_ is Leaf!20208) (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (value!216144 (_1!24213 (v!39647 lt!1427206))))))))))

(assert (=> b!4020535 (=> res!1635897 e!2494041)))

(declare-fun b!4020536 () Bool)

(declare-fun inv!57479 (Conc!13071) Bool)

(assert (=> b!4020536 (= e!2494041 (inv!57479 (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (value!216144 (_1!24213 (v!39647 lt!1427206)))))))))

(assert (= (and d!1190437 c!694787) b!4020534))

(assert (= (and d!1190437 (not c!694787)) b!4020535))

(assert (= (and b!4020535 (not res!1635897)) b!4020536))

(declare-fun m!4610731 () Bool)

(assert (=> b!4020534 m!4610731))

(declare-fun m!4610733 () Bool)

(assert (=> b!4020536 m!4610733))

(assert (=> b!4019947 d!1190437))

(declare-fun b!4020539 () Bool)

(declare-fun res!1635899 () Bool)

(declare-fun e!2494043 () Bool)

(assert (=> b!4020539 (=> (not res!1635899) (not e!2494043))))

(declare-fun lt!1427799 () List!43154)

(assert (=> b!4020539 (= res!1635899 (= (size!32171 lt!1427799) (+ (size!32171 (t!333487 lt!1427191)) (size!32171 lt!1427216))))))

(declare-fun b!4020537 () Bool)

(declare-fun e!2494042 () List!43154)

(assert (=> b!4020537 (= e!2494042 lt!1427216)))

(declare-fun d!1190439 () Bool)

(assert (=> d!1190439 e!2494043))

(declare-fun res!1635898 () Bool)

(assert (=> d!1190439 (=> (not res!1635898) (not e!2494043))))

(assert (=> d!1190439 (= res!1635898 (= (content!6526 lt!1427799) ((_ map or) (content!6526 (t!333487 lt!1427191)) (content!6526 lt!1427216))))))

(assert (=> d!1190439 (= lt!1427799 e!2494042)))

(declare-fun c!694788 () Bool)

(assert (=> d!1190439 (= c!694788 ((_ is Nil!43030) (t!333487 lt!1427191)))))

(assert (=> d!1190439 (= (++!11262 (t!333487 lt!1427191) lt!1427216) lt!1427799)))

(declare-fun b!4020540 () Bool)

(assert (=> b!4020540 (= e!2494043 (or (not (= lt!1427216 Nil!43030)) (= lt!1427799 (t!333487 lt!1427191))))))

(declare-fun b!4020538 () Bool)

(assert (=> b!4020538 (= e!2494042 (Cons!43030 (h!48450 (t!333487 lt!1427191)) (++!11262 (t!333487 (t!333487 lt!1427191)) lt!1427216)))))

(assert (= (and d!1190439 c!694788) b!4020537))

(assert (= (and d!1190439 (not c!694788)) b!4020538))

(assert (= (and d!1190439 res!1635898) b!4020539))

(assert (= (and b!4020539 res!1635899) b!4020540))

(declare-fun m!4610745 () Bool)

(assert (=> b!4020539 m!4610745))

(assert (=> b!4020539 m!4610245))

(assert (=> b!4020539 m!4609979))

(declare-fun m!4610749 () Bool)

(assert (=> d!1190439 m!4610749))

(assert (=> d!1190439 m!4610595))

(assert (=> d!1190439 m!4609983))

(declare-fun m!4610755 () Bool)

(assert (=> b!4020538 m!4610755))

(assert (=> b!4019991 d!1190439))

(declare-fun d!1190441 () Bool)

(declare-fun lt!1427800 () Int)

(assert (=> d!1190441 (>= lt!1427800 0)))

(declare-fun e!2494044 () Int)

(assert (=> d!1190441 (= lt!1427800 e!2494044)))

(declare-fun c!694789 () Bool)

(assert (=> d!1190441 (= c!694789 ((_ is Nil!43030) lt!1427516))))

(assert (=> d!1190441 (= (size!32171 lt!1427516) lt!1427800)))

(declare-fun b!4020541 () Bool)

(assert (=> b!4020541 (= e!2494044 0)))

(declare-fun b!4020542 () Bool)

(assert (=> b!4020542 (= e!2494044 (+ 1 (size!32171 (t!333487 lt!1427516))))))

(assert (= (and d!1190441 c!694789) b!4020541))

(assert (= (and d!1190441 (not c!694789)) b!4020542))

(declare-fun m!4610767 () Bool)

(assert (=> b!4020542 m!4610767))

(assert (=> b!4020125 d!1190441))

(assert (=> b!4020125 d!1190159))

(declare-fun d!1190443 () Bool)

(declare-fun lt!1427801 () Int)

(assert (=> d!1190443 (>= lt!1427801 0)))

(declare-fun e!2494045 () Int)

(assert (=> d!1190443 (= lt!1427801 e!2494045)))

(declare-fun c!694790 () Bool)

(assert (=> d!1190443 (= c!694790 ((_ is Nil!43030) suffixResult!105))))

(assert (=> d!1190443 (= (size!32171 suffixResult!105) lt!1427801)))

(declare-fun b!4020543 () Bool)

(assert (=> b!4020543 (= e!2494045 0)))

(declare-fun b!4020544 () Bool)

(assert (=> b!4020544 (= e!2494045 (+ 1 (size!32171 (t!333487 suffixResult!105))))))

(assert (= (and d!1190443 c!694790) b!4020543))

(assert (= (and d!1190443 (not c!694790)) b!4020544))

(declare-fun m!4610775 () Bool)

(assert (=> b!4020544 m!4610775))

(assert (=> b!4020125 d!1190443))

(declare-fun bs!589816 () Bool)

(declare-fun d!1190445 () Bool)

(assert (= bs!589816 (and d!1190445 d!1190269)))

(declare-fun lambda!127102 () Int)

(assert (=> bs!589816 (= (and (= (toChars!9227 (transformation!6860 (h!48452 rules!2999))) (toChars!9227 (transformation!6860 (rule!9912 token!484)))) (= (toValue!9368 (transformation!6860 (h!48452 rules!2999))) (toValue!9368 (transformation!6860 (rule!9912 token!484))))) (= lambda!127102 lambda!127093))))

(assert (=> d!1190445 true))

(assert (=> d!1190445 (< (dynLambda!18243 order!22523 (toChars!9227 (transformation!6860 (h!48452 rules!2999)))) (dynLambda!18242 order!22521 lambda!127102))))

(assert (=> d!1190445 true))

(assert (=> d!1190445 (< (dynLambda!18241 order!22519 (toValue!9368 (transformation!6860 (h!48452 rules!2999)))) (dynLambda!18242 order!22521 lambda!127102))))

(declare-fun Forall!1474 (Int) Bool)

(assert (=> d!1190445 (= (semiInverseModEq!2933 (toChars!9227 (transformation!6860 (h!48452 rules!2999))) (toValue!9368 (transformation!6860 (h!48452 rules!2999)))) (Forall!1474 lambda!127102))))

(declare-fun bs!589817 () Bool)

(assert (= bs!589817 d!1190445))

(declare-fun m!4610789 () Bool)

(assert (=> bs!589817 m!4610789))

(assert (=> d!1190097 d!1190445))

(declare-fun b!4020551 () Bool)

(declare-fun res!1635901 () Bool)

(declare-fun e!2494047 () Bool)

(assert (=> b!4020551 (=> (not res!1635901) (not e!2494047))))

(declare-fun lt!1427802 () List!43154)

(assert (=> b!4020551 (= res!1635901 (= (size!32171 lt!1427802) (+ (size!32171 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427286))))) (size!32171 (_2!24213 (get!14131 lt!1427286))))))))

(declare-fun b!4020549 () Bool)

(declare-fun e!2494046 () List!43154)

(assert (=> b!4020549 (= e!2494046 (_2!24213 (get!14131 lt!1427286)))))

(declare-fun d!1190451 () Bool)

(assert (=> d!1190451 e!2494047))

(declare-fun res!1635900 () Bool)

(assert (=> d!1190451 (=> (not res!1635900) (not e!2494047))))

(assert (=> d!1190451 (= res!1635900 (= (content!6526 lt!1427802) ((_ map or) (content!6526 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427286))))) (content!6526 (_2!24213 (get!14131 lt!1427286))))))))

(assert (=> d!1190451 (= lt!1427802 e!2494046)))

(declare-fun c!694791 () Bool)

(assert (=> d!1190451 (= c!694791 ((_ is Nil!43030) (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427286))))))))

(assert (=> d!1190451 (= (++!11262 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427286)))) (_2!24213 (get!14131 lt!1427286))) lt!1427802)))

(declare-fun b!4020552 () Bool)

(assert (=> b!4020552 (= e!2494047 (or (not (= (_2!24213 (get!14131 lt!1427286)) Nil!43030)) (= lt!1427802 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427286)))))))))

(declare-fun b!4020550 () Bool)

(assert (=> b!4020550 (= e!2494046 (Cons!43030 (h!48450 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427286))))) (++!11262 (t!333487 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427286))))) (_2!24213 (get!14131 lt!1427286)))))))

(assert (= (and d!1190451 c!694791) b!4020549))

(assert (= (and d!1190451 (not c!694791)) b!4020550))

(assert (= (and d!1190451 res!1635900) b!4020551))

(assert (= (and b!4020551 res!1635901) b!4020552))

(declare-fun m!4610791 () Bool)

(assert (=> b!4020551 m!4610791))

(assert (=> b!4020551 m!4609197))

(declare-fun m!4610793 () Bool)

(assert (=> b!4020551 m!4610793))

(assert (=> b!4020551 m!4609207))

(declare-fun m!4610795 () Bool)

(assert (=> d!1190451 m!4610795))

(assert (=> d!1190451 m!4609197))

(declare-fun m!4610797 () Bool)

(assert (=> d!1190451 m!4610797))

(declare-fun m!4610799 () Bool)

(assert (=> d!1190451 m!4610799))

(declare-fun m!4610801 () Bool)

(assert (=> b!4020550 m!4610801))

(assert (=> b!4019521 d!1190451))

(declare-fun d!1190453 () Bool)

(assert (=> d!1190453 (= (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427286)))) (list!15998 (c!694546 (charsOf!4676 (_1!24213 (get!14131 lt!1427286))))))))

(declare-fun bs!589818 () Bool)

(assert (= bs!589818 d!1190453))

(declare-fun m!4610803 () Bool)

(assert (=> bs!589818 m!4610803))

(assert (=> b!4019521 d!1190453))

(declare-fun d!1190455 () Bool)

(declare-fun lt!1427803 () BalanceConc!25736)

(assert (=> d!1190455 (= (list!15996 lt!1427803) (originalCharacters!7460 (_1!24213 (get!14131 lt!1427286))))))

(assert (=> d!1190455 (= lt!1427803 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427286))))) (value!216144 (_1!24213 (get!14131 lt!1427286)))))))

(assert (=> d!1190455 (= (charsOf!4676 (_1!24213 (get!14131 lt!1427286))) lt!1427803)))

(declare-fun b_lambda!117307 () Bool)

(assert (=> (not b_lambda!117307) (not d!1190455)))

(declare-fun tb!241681 () Bool)

(declare-fun t!333590 () Bool)

(assert (=> (and b!4019334 (= (toChars!9227 (transformation!6860 (h!48452 rules!2999))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427286)))))) t!333590) tb!241681))

(declare-fun b!4020553 () Bool)

(declare-fun e!2494048 () Bool)

(declare-fun tp!1222069 () Bool)

(assert (=> b!4020553 (= e!2494048 (and (inv!57476 (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427286))))) (value!216144 (_1!24213 (get!14131 lt!1427286)))))) tp!1222069))))

(declare-fun result!292918 () Bool)

(assert (=> tb!241681 (= result!292918 (and (inv!57477 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427286))))) (value!216144 (_1!24213 (get!14131 lt!1427286))))) e!2494048))))

(assert (= tb!241681 b!4020553))

(declare-fun m!4610805 () Bool)

(assert (=> b!4020553 m!4610805))

(declare-fun m!4610807 () Bool)

(assert (=> tb!241681 m!4610807))

(assert (=> d!1190455 t!333590))

(declare-fun b_and!308875 () Bool)

(assert (= b_and!308869 (and (=> t!333590 result!292918) b_and!308875)))

(declare-fun tb!241683 () Bool)

(declare-fun t!333592 () Bool)

(assert (=> (and b!4019363 (= (toChars!9227 (transformation!6860 (rule!9912 token!484))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427286)))))) t!333592) tb!241683))

(declare-fun result!292920 () Bool)

(assert (= result!292920 result!292918))

(assert (=> d!1190455 t!333592))

(declare-fun b_and!308877 () Bool)

(assert (= b_and!308871 (and (=> t!333592 result!292920) b_and!308877)))

(declare-fun t!333594 () Bool)

(declare-fun tb!241685 () Bool)

(assert (=> (and b!4020174 (= (toChars!9227 (transformation!6860 (h!48452 (t!333489 rules!2999)))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427286)))))) t!333594) tb!241685))

(declare-fun result!292922 () Bool)

(assert (= result!292922 result!292918))

(assert (=> d!1190455 t!333594))

(declare-fun b_and!308879 () Bool)

(assert (= b_and!308873 (and (=> t!333594 result!292922) b_and!308879)))

(declare-fun m!4610809 () Bool)

(assert (=> d!1190455 m!4610809))

(declare-fun m!4610811 () Bool)

(assert (=> d!1190455 m!4610811))

(assert (=> b!4019521 d!1190455))

(assert (=> b!4019521 d!1190375))

(assert (=> b!4020040 d!1190179))

(declare-fun b!4020554 () Bool)

(declare-fun e!2494053 () Bool)

(declare-fun e!2494051 () Bool)

(assert (=> b!4020554 (= e!2494053 e!2494051)))

(declare-fun res!1635906 () Bool)

(assert (=> b!4020554 (=> res!1635906 e!2494051)))

(declare-fun call!286644 () Bool)

(assert (=> b!4020554 (= res!1635906 call!286644)))

(declare-fun b!4020555 () Bool)

(declare-fun res!1635909 () Bool)

(declare-fun e!2494050 () Bool)

(assert (=> b!4020555 (=> (not res!1635909) (not e!2494050))))

(assert (=> b!4020555 (= res!1635909 (isEmpty!25696 (tail!6259 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427506)))))))))

(declare-fun b!4020556 () Bool)

(declare-fun e!2494052 () Bool)

(declare-fun lt!1427804 () Bool)

(assert (=> b!4020556 (= e!2494052 (not lt!1427804))))

(declare-fun b!4020557 () Bool)

(declare-fun res!1635904 () Bool)

(declare-fun e!2494049 () Bool)

(assert (=> b!4020557 (=> res!1635904 e!2494049)))

(assert (=> b!4020557 (= res!1635904 (not ((_ is ElementMatch!11765) (regex!6860 (rule!9912 token!484)))))))

(assert (=> b!4020557 (= e!2494052 e!2494049)))

(declare-fun b!4020559 () Bool)

(declare-fun res!1635903 () Bool)

(assert (=> b!4020559 (=> res!1635903 e!2494051)))

(assert (=> b!4020559 (= res!1635903 (not (isEmpty!25696 (tail!6259 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427506))))))))))

(declare-fun b!4020560 () Bool)

(declare-fun res!1635907 () Bool)

(assert (=> b!4020560 (=> (not res!1635907) (not e!2494050))))

(assert (=> b!4020560 (= res!1635907 (not call!286644))))

(declare-fun b!4020561 () Bool)

(declare-fun res!1635908 () Bool)

(assert (=> b!4020561 (=> res!1635908 e!2494049)))

(assert (=> b!4020561 (= res!1635908 e!2494050)))

(declare-fun res!1635902 () Bool)

(assert (=> b!4020561 (=> (not res!1635902) (not e!2494050))))

(assert (=> b!4020561 (= res!1635902 lt!1427804)))

(declare-fun b!4020562 () Bool)

(assert (=> b!4020562 (= e!2494051 (not (= (head!8527 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427506))))) (c!694547 (regex!6860 (rule!9912 token!484))))))))

(declare-fun b!4020563 () Bool)

(declare-fun e!2494054 () Bool)

(assert (=> b!4020563 (= e!2494054 (nullable!4126 (regex!6860 (rule!9912 token!484))))))

(declare-fun b!4020564 () Bool)

(declare-fun e!2494055 () Bool)

(assert (=> b!4020564 (= e!2494055 e!2494052)))

(declare-fun c!694794 () Bool)

(assert (=> b!4020564 (= c!694794 ((_ is EmptyLang!11765) (regex!6860 (rule!9912 token!484))))))

(declare-fun b!4020565 () Bool)

(assert (=> b!4020565 (= e!2494049 e!2494053)))

(declare-fun res!1635905 () Bool)

(assert (=> b!4020565 (=> (not res!1635905) (not e!2494053))))

(assert (=> b!4020565 (= res!1635905 (not lt!1427804))))

(declare-fun b!4020566 () Bool)

(assert (=> b!4020566 (= e!2494054 (matchR!5726 (derivativeStep!3535 (regex!6860 (rule!9912 token!484)) (head!8527 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427506)))))) (tail!6259 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427506)))))))))

(declare-fun bm!286639 () Bool)

(assert (=> bm!286639 (= call!286644 (isEmpty!25696 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427506))))))))

(declare-fun b!4020567 () Bool)

(assert (=> b!4020567 (= e!2494055 (= lt!1427804 call!286644))))

(declare-fun b!4020558 () Bool)

(assert (=> b!4020558 (= e!2494050 (= (head!8527 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427506))))) (c!694547 (regex!6860 (rule!9912 token!484)))))))

(declare-fun d!1190457 () Bool)

(assert (=> d!1190457 e!2494055))

(declare-fun c!694792 () Bool)

(assert (=> d!1190457 (= c!694792 ((_ is EmptyExpr!11765) (regex!6860 (rule!9912 token!484))))))

(assert (=> d!1190457 (= lt!1427804 e!2494054)))

(declare-fun c!694793 () Bool)

(assert (=> d!1190457 (= c!694793 (isEmpty!25696 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427506))))))))

(assert (=> d!1190457 (validRegex!5326 (regex!6860 (rule!9912 token!484)))))

(assert (=> d!1190457 (= (matchR!5726 (regex!6860 (rule!9912 token!484)) (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427506))))) lt!1427804)))

(assert (= (and d!1190457 c!694793) b!4020563))

(assert (= (and d!1190457 (not c!694793)) b!4020566))

(assert (= (and d!1190457 c!694792) b!4020567))

(assert (= (and d!1190457 (not c!694792)) b!4020564))

(assert (= (and b!4020564 c!694794) b!4020556))

(assert (= (and b!4020564 (not c!694794)) b!4020557))

(assert (= (and b!4020557 (not res!1635904)) b!4020561))

(assert (= (and b!4020561 res!1635902) b!4020560))

(assert (= (and b!4020560 res!1635907) b!4020555))

(assert (= (and b!4020555 res!1635909) b!4020558))

(assert (= (and b!4020561 (not res!1635908)) b!4020565))

(assert (= (and b!4020565 res!1635905) b!4020554))

(assert (= (and b!4020554 (not res!1635906)) b!4020559))

(assert (= (and b!4020559 (not res!1635903)) b!4020562))

(assert (= (or b!4020567 b!4020554 b!4020560) bm!286639))

(assert (=> b!4020562 m!4610171))

(declare-fun m!4610813 () Bool)

(assert (=> b!4020562 m!4610813))

(assert (=> b!4020558 m!4610171))

(assert (=> b!4020558 m!4610813))

(assert (=> b!4020555 m!4610171))

(declare-fun m!4610815 () Bool)

(assert (=> b!4020555 m!4610815))

(assert (=> b!4020555 m!4610815))

(declare-fun m!4610817 () Bool)

(assert (=> b!4020555 m!4610817))

(assert (=> b!4020563 m!4610213))

(assert (=> bm!286639 m!4610171))

(declare-fun m!4610819 () Bool)

(assert (=> bm!286639 m!4610819))

(assert (=> b!4020559 m!4610171))

(assert (=> b!4020559 m!4610815))

(assert (=> b!4020559 m!4610815))

(assert (=> b!4020559 m!4610817))

(assert (=> d!1190457 m!4610171))

(assert (=> d!1190457 m!4610819))

(assert (=> d!1190457 m!4610215))

(assert (=> b!4020566 m!4610171))

(assert (=> b!4020566 m!4610813))

(assert (=> b!4020566 m!4610813))

(declare-fun m!4610821 () Bool)

(assert (=> b!4020566 m!4610821))

(assert (=> b!4020566 m!4610171))

(assert (=> b!4020566 m!4610815))

(assert (=> b!4020566 m!4610821))

(assert (=> b!4020566 m!4610815))

(declare-fun m!4610823 () Bool)

(assert (=> b!4020566 m!4610823))

(assert (=> b!4020093 d!1190457))

(declare-fun d!1190459 () Bool)

(assert (=> d!1190459 (= (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427506)))) (list!15998 (c!694546 (charsOf!4676 (_1!24213 (get!14131 lt!1427506))))))))

(declare-fun bs!589819 () Bool)

(assert (= bs!589819 d!1190459))

(declare-fun m!4610825 () Bool)

(assert (=> bs!589819 m!4610825))

(assert (=> b!4020093 d!1190459))

(declare-fun d!1190461 () Bool)

(declare-fun lt!1427807 () BalanceConc!25736)

(assert (=> d!1190461 (= (list!15996 lt!1427807) (originalCharacters!7460 (_1!24213 (get!14131 lt!1427506))))))

(assert (=> d!1190461 (= lt!1427807 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427506))))) (value!216144 (_1!24213 (get!14131 lt!1427506)))))))

(assert (=> d!1190461 (= (charsOf!4676 (_1!24213 (get!14131 lt!1427506))) lt!1427807)))

(declare-fun b_lambda!117309 () Bool)

(assert (=> (not b_lambda!117309) (not d!1190461)))

(declare-fun tb!241687 () Bool)

(declare-fun t!333596 () Bool)

(assert (=> (and b!4019334 (= (toChars!9227 (transformation!6860 (h!48452 rules!2999))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427506)))))) t!333596) tb!241687))

(declare-fun b!4020570 () Bool)

(declare-fun e!2494058 () Bool)

(declare-fun tp!1222070 () Bool)

(assert (=> b!4020570 (= e!2494058 (and (inv!57476 (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427506))))) (value!216144 (_1!24213 (get!14131 lt!1427506)))))) tp!1222070))))

(declare-fun result!292924 () Bool)

(assert (=> tb!241687 (= result!292924 (and (inv!57477 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427506))))) (value!216144 (_1!24213 (get!14131 lt!1427506))))) e!2494058))))

(assert (= tb!241687 b!4020570))

(declare-fun m!4610827 () Bool)

(assert (=> b!4020570 m!4610827))

(declare-fun m!4610829 () Bool)

(assert (=> tb!241687 m!4610829))

(assert (=> d!1190461 t!333596))

(declare-fun b_and!308881 () Bool)

(assert (= b_and!308875 (and (=> t!333596 result!292924) b_and!308881)))

(declare-fun t!333598 () Bool)

(declare-fun tb!241689 () Bool)

(assert (=> (and b!4019363 (= (toChars!9227 (transformation!6860 (rule!9912 token!484))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427506)))))) t!333598) tb!241689))

(declare-fun result!292926 () Bool)

(assert (= result!292926 result!292924))

(assert (=> d!1190461 t!333598))

(declare-fun b_and!308883 () Bool)

(assert (= b_and!308877 (and (=> t!333598 result!292926) b_and!308883)))

(declare-fun t!333600 () Bool)

(declare-fun tb!241691 () Bool)

(assert (=> (and b!4020174 (= (toChars!9227 (transformation!6860 (h!48452 (t!333489 rules!2999)))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427506)))))) t!333600) tb!241691))

(declare-fun result!292928 () Bool)

(assert (= result!292928 result!292924))

(assert (=> d!1190461 t!333600))

(declare-fun b_and!308885 () Bool)

(assert (= b_and!308879 (and (=> t!333600 result!292928) b_and!308885)))

(declare-fun m!4610831 () Bool)

(assert (=> d!1190461 m!4610831))

(declare-fun m!4610833 () Bool)

(assert (=> d!1190461 m!4610833))

(assert (=> b!4020093 d!1190461))

(declare-fun d!1190463 () Bool)

(assert (=> d!1190463 (= (get!14131 lt!1427506) (v!39647 lt!1427506))))

(assert (=> b!4020093 d!1190463))

(declare-fun b!4020573 () Bool)

(declare-fun res!1635914 () Bool)

(declare-fun e!2494060 () Bool)

(assert (=> b!4020573 (=> (not res!1635914) (not e!2494060))))

(assert (=> b!4020573 (= res!1635914 (= (head!8527 lt!1427191) (head!8527 (++!11262 lt!1427191 suffixResult!105))))))

(declare-fun b!4020575 () Bool)

(declare-fun e!2494061 () Bool)

(assert (=> b!4020575 (= e!2494061 (>= (size!32171 (++!11262 lt!1427191 suffixResult!105)) (size!32171 lt!1427191)))))

(declare-fun d!1190465 () Bool)

(assert (=> d!1190465 e!2494061))

(declare-fun res!1635913 () Bool)

(assert (=> d!1190465 (=> res!1635913 e!2494061)))

(declare-fun lt!1427809 () Bool)

(assert (=> d!1190465 (= res!1635913 (not lt!1427809))))

(declare-fun e!2494062 () Bool)

(assert (=> d!1190465 (= lt!1427809 e!2494062)))

(declare-fun res!1635915 () Bool)

(assert (=> d!1190465 (=> res!1635915 e!2494062)))

(assert (=> d!1190465 (= res!1635915 ((_ is Nil!43030) lt!1427191))))

(assert (=> d!1190465 (= (isPrefix!3947 lt!1427191 (++!11262 lt!1427191 suffixResult!105)) lt!1427809)))

(declare-fun b!4020572 () Bool)

(assert (=> b!4020572 (= e!2494062 e!2494060)))

(declare-fun res!1635916 () Bool)

(assert (=> b!4020572 (=> (not res!1635916) (not e!2494060))))

(assert (=> b!4020572 (= res!1635916 (not ((_ is Nil!43030) (++!11262 lt!1427191 suffixResult!105))))))

(declare-fun b!4020574 () Bool)

(assert (=> b!4020574 (= e!2494060 (isPrefix!3947 (tail!6259 lt!1427191) (tail!6259 (++!11262 lt!1427191 suffixResult!105))))))

(assert (= (and d!1190465 (not res!1635915)) b!4020572))

(assert (= (and b!4020572 res!1635916) b!4020573))

(assert (= (and b!4020573 res!1635914) b!4020574))

(assert (= (and d!1190465 (not res!1635913)) b!4020575))

(assert (=> b!4020573 m!4609279))

(assert (=> b!4020573 m!4609033))

(declare-fun m!4610835 () Bool)

(assert (=> b!4020573 m!4610835))

(assert (=> b!4020575 m!4609033))

(declare-fun m!4610839 () Bool)

(assert (=> b!4020575 m!4610839))

(assert (=> b!4020575 m!4609075))

(assert (=> b!4020574 m!4609285))

(assert (=> b!4020574 m!4609033))

(declare-fun m!4610841 () Bool)

(assert (=> b!4020574 m!4610841))

(assert (=> b!4020574 m!4609285))

(assert (=> b!4020574 m!4610841))

(declare-fun m!4610843 () Bool)

(assert (=> b!4020574 m!4610843))

(assert (=> d!1190117 d!1190465))

(assert (=> d!1190117 d!1190151))

(declare-fun d!1190467 () Bool)

(assert (=> d!1190467 (isPrefix!3947 lt!1427191 (++!11262 lt!1427191 suffixResult!105))))

(assert (=> d!1190467 true))

(declare-fun _$46!1679 () Unit!62145)

(assert (=> d!1190467 (= (choose!24307 lt!1427191 suffixResult!105) _$46!1679)))

(declare-fun bs!589820 () Bool)

(assert (= bs!589820 d!1190467))

(assert (=> bs!589820 m!4609033))

(assert (=> bs!589820 m!4609033))

(assert (=> bs!589820 m!4610123))

(assert (=> d!1190117 d!1190467))

(declare-fun b!4020586 () Bool)

(declare-fun res!1635925 () Bool)

(declare-fun e!2494067 () Bool)

(assert (=> b!4020586 (=> (not res!1635925) (not e!2494067))))

(assert (=> b!4020586 (= res!1635925 (= (head!8527 (tail!6259 newSuffix!27)) (head!8527 (tail!6259 suffix!1299))))))

(declare-fun b!4020588 () Bool)

(declare-fun e!2494068 () Bool)

(assert (=> b!4020588 (= e!2494068 (>= (size!32171 (tail!6259 suffix!1299)) (size!32171 (tail!6259 newSuffix!27))))))

(declare-fun d!1190473 () Bool)

(assert (=> d!1190473 e!2494068))

(declare-fun res!1635924 () Bool)

(assert (=> d!1190473 (=> res!1635924 e!2494068)))

(declare-fun lt!1427815 () Bool)

(assert (=> d!1190473 (= res!1635924 (not lt!1427815))))

(declare-fun e!2494069 () Bool)

(assert (=> d!1190473 (= lt!1427815 e!2494069)))

(declare-fun res!1635926 () Bool)

(assert (=> d!1190473 (=> res!1635926 e!2494069)))

(assert (=> d!1190473 (= res!1635926 ((_ is Nil!43030) (tail!6259 newSuffix!27)))))

(assert (=> d!1190473 (= (isPrefix!3947 (tail!6259 newSuffix!27) (tail!6259 suffix!1299)) lt!1427815)))

(declare-fun b!4020585 () Bool)

(assert (=> b!4020585 (= e!2494069 e!2494067)))

(declare-fun res!1635927 () Bool)

(assert (=> b!4020585 (=> (not res!1635927) (not e!2494067))))

(assert (=> b!4020585 (= res!1635927 (not ((_ is Nil!43030) (tail!6259 suffix!1299))))))

(declare-fun b!4020587 () Bool)

(assert (=> b!4020587 (= e!2494067 (isPrefix!3947 (tail!6259 (tail!6259 newSuffix!27)) (tail!6259 (tail!6259 suffix!1299))))))

(assert (= (and d!1190473 (not res!1635926)) b!4020585))

(assert (= (and b!4020585 res!1635927) b!4020586))

(assert (= (and b!4020586 res!1635925) b!4020587))

(assert (= (and d!1190473 (not res!1635924)) b!4020588))

(assert (=> b!4020586 m!4610051))

(declare-fun m!4610845 () Bool)

(assert (=> b!4020586 m!4610845))

(assert (=> b!4020586 m!4610053))

(declare-fun m!4610847 () Bool)

(assert (=> b!4020586 m!4610847))

(assert (=> b!4020588 m!4610053))

(declare-fun m!4610849 () Bool)

(assert (=> b!4020588 m!4610849))

(assert (=> b!4020588 m!4610051))

(declare-fun m!4610851 () Bool)

(assert (=> b!4020588 m!4610851))

(assert (=> b!4020587 m!4610051))

(declare-fun m!4610853 () Bool)

(assert (=> b!4020587 m!4610853))

(assert (=> b!4020587 m!4610053))

(declare-fun m!4610855 () Bool)

(assert (=> b!4020587 m!4610855))

(assert (=> b!4020587 m!4610853))

(assert (=> b!4020587 m!4610855))

(declare-fun m!4610857 () Bool)

(assert (=> b!4020587 m!4610857))

(assert (=> b!4020029 d!1190473))

(declare-fun d!1190475 () Bool)

(assert (=> d!1190475 (= (tail!6259 newSuffix!27) (t!333487 newSuffix!27))))

(assert (=> b!4020029 d!1190475))

(declare-fun d!1190477 () Bool)

(assert (=> d!1190477 (= (tail!6259 suffix!1299) (t!333487 suffix!1299))))

(assert (=> b!4020029 d!1190477))

(assert (=> bm!286581 d!1190433))

(assert (=> b!4019936 d!1190395))

(assert (=> d!1190143 d!1190433))

(declare-fun b!4020589 () Bool)

(declare-fun e!2494070 () Bool)

(declare-fun e!2494072 () Bool)

(assert (=> b!4020589 (= e!2494070 e!2494072)))

(declare-fun c!694797 () Bool)

(assert (=> b!4020589 (= c!694797 ((_ is Star!11765) (regex!6860 (rule!9912 token!484))))))

(declare-fun bm!286640 () Bool)

(declare-fun call!286646 () Bool)

(declare-fun c!694796 () Bool)

(assert (=> bm!286640 (= call!286646 (validRegex!5326 (ite c!694796 (regOne!24043 (regex!6860 (rule!9912 token!484))) (regOne!24042 (regex!6860 (rule!9912 token!484))))))))

(declare-fun b!4020590 () Bool)

(declare-fun e!2494071 () Bool)

(declare-fun call!286647 () Bool)

(assert (=> b!4020590 (= e!2494071 call!286647)))

(declare-fun d!1190479 () Bool)

(declare-fun res!1635930 () Bool)

(assert (=> d!1190479 (=> res!1635930 e!2494070)))

(assert (=> d!1190479 (= res!1635930 ((_ is ElementMatch!11765) (regex!6860 (rule!9912 token!484))))))

(assert (=> d!1190479 (= (validRegex!5326 (regex!6860 (rule!9912 token!484))) e!2494070)))

(declare-fun bm!286641 () Bool)

(declare-fun call!286645 () Bool)

(assert (=> bm!286641 (= call!286647 call!286645)))

(declare-fun bm!286642 () Bool)

(assert (=> bm!286642 (= call!286645 (validRegex!5326 (ite c!694797 (reg!12094 (regex!6860 (rule!9912 token!484))) (ite c!694796 (regTwo!24043 (regex!6860 (rule!9912 token!484))) (regTwo!24042 (regex!6860 (rule!9912 token!484)))))))))

(declare-fun b!4020591 () Bool)

(declare-fun res!1635928 () Bool)

(declare-fun e!2494073 () Bool)

(assert (=> b!4020591 (=> res!1635928 e!2494073)))

(assert (=> b!4020591 (= res!1635928 (not ((_ is Concat!18856) (regex!6860 (rule!9912 token!484)))))))

(declare-fun e!2494076 () Bool)

(assert (=> b!4020591 (= e!2494076 e!2494073)))

(declare-fun b!4020592 () Bool)

(assert (=> b!4020592 (= e!2494072 e!2494076)))

(assert (=> b!4020592 (= c!694796 ((_ is Union!11765) (regex!6860 (rule!9912 token!484))))))

(declare-fun b!4020593 () Bool)

(declare-fun e!2494074 () Bool)

(assert (=> b!4020593 (= e!2494072 e!2494074)))

(declare-fun res!1635929 () Bool)

(assert (=> b!4020593 (= res!1635929 (not (nullable!4126 (reg!12094 (regex!6860 (rule!9912 token!484))))))))

(assert (=> b!4020593 (=> (not res!1635929) (not e!2494074))))

(declare-fun b!4020594 () Bool)

(declare-fun e!2494075 () Bool)

(assert (=> b!4020594 (= e!2494073 e!2494075)))

(declare-fun res!1635932 () Bool)

(assert (=> b!4020594 (=> (not res!1635932) (not e!2494075))))

(assert (=> b!4020594 (= res!1635932 call!286646)))

(declare-fun b!4020595 () Bool)

(assert (=> b!4020595 (= e!2494075 call!286647)))

(declare-fun b!4020596 () Bool)

(declare-fun res!1635931 () Bool)

(assert (=> b!4020596 (=> (not res!1635931) (not e!2494071))))

(assert (=> b!4020596 (= res!1635931 call!286646)))

(assert (=> b!4020596 (= e!2494076 e!2494071)))

(declare-fun b!4020597 () Bool)

(assert (=> b!4020597 (= e!2494074 call!286645)))

(assert (= (and d!1190479 (not res!1635930)) b!4020589))

(assert (= (and b!4020589 c!694797) b!4020593))

(assert (= (and b!4020589 (not c!694797)) b!4020592))

(assert (= (and b!4020593 res!1635929) b!4020597))

(assert (= (and b!4020592 c!694796) b!4020596))

(assert (= (and b!4020592 (not c!694796)) b!4020591))

(assert (= (and b!4020596 res!1635931) b!4020590))

(assert (= (and b!4020591 (not res!1635928)) b!4020594))

(assert (= (and b!4020594 res!1635932) b!4020595))

(assert (= (or b!4020590 b!4020595) bm!286641))

(assert (= (or b!4020596 b!4020594) bm!286640))

(assert (= (or b!4020597 bm!286641) bm!286642))

(declare-fun m!4610877 () Bool)

(assert (=> bm!286640 m!4610877))

(declare-fun m!4610879 () Bool)

(assert (=> bm!286642 m!4610879))

(declare-fun m!4610881 () Bool)

(assert (=> b!4020593 m!4610881))

(assert (=> d!1190143 d!1190479))

(declare-fun d!1190481 () Bool)

(declare-fun c!694798 () Bool)

(assert (=> d!1190481 (= c!694798 ((_ is Nil!43030) lt!1427499))))

(declare-fun e!2494077 () (InoxSet C!23716))

(assert (=> d!1190481 (= (content!6526 lt!1427499) e!2494077)))

(declare-fun b!4020598 () Bool)

(assert (=> b!4020598 (= e!2494077 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4020599 () Bool)

(assert (=> b!4020599 (= e!2494077 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 lt!1427499) true) (content!6526 (t!333487 lt!1427499))))))

(assert (= (and d!1190481 c!694798) b!4020598))

(assert (= (and d!1190481 (not c!694798)) b!4020599))

(declare-fun m!4610889 () Bool)

(assert (=> b!4020599 m!4610889))

(declare-fun m!4610891 () Bool)

(assert (=> b!4020599 m!4610891))

(assert (=> d!1190119 d!1190481))

(declare-fun d!1190483 () Bool)

(declare-fun c!694799 () Bool)

(assert (=> d!1190483 (= c!694799 ((_ is Nil!43030) lt!1427181))))

(declare-fun e!2494078 () (InoxSet C!23716))

(assert (=> d!1190483 (= (content!6526 lt!1427181) e!2494078)))

(declare-fun b!4020600 () Bool)

(assert (=> b!4020600 (= e!2494078 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4020601 () Bool)

(assert (=> b!4020601 (= e!2494078 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 lt!1427181) true) (content!6526 (t!333487 lt!1427181))))))

(assert (= (and d!1190483 c!694799) b!4020600))

(assert (= (and d!1190483 (not c!694799)) b!4020601))

(declare-fun m!4610901 () Bool)

(assert (=> b!4020601 m!4610901))

(declare-fun m!4610903 () Bool)

(assert (=> b!4020601 m!4610903))

(assert (=> d!1190119 d!1190483))

(declare-fun d!1190485 () Bool)

(declare-fun c!694800 () Bool)

(assert (=> d!1190485 (= c!694800 ((_ is Nil!43030) lt!1427214))))

(declare-fun e!2494079 () (InoxSet C!23716))

(assert (=> d!1190485 (= (content!6526 lt!1427214) e!2494079)))

(declare-fun b!4020602 () Bool)

(assert (=> b!4020602 (= e!2494079 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4020603 () Bool)

(assert (=> b!4020603 (= e!2494079 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 lt!1427214) true) (content!6526 (t!333487 lt!1427214))))))

(assert (= (and d!1190485 c!694800) b!4020602))

(assert (= (and d!1190485 (not c!694800)) b!4020603))

(declare-fun m!4610909 () Bool)

(assert (=> b!4020603 m!4610909))

(declare-fun m!4610913 () Bool)

(assert (=> b!4020603 m!4610913))

(assert (=> d!1190119 d!1190485))

(declare-fun d!1190487 () Bool)

(assert (=> d!1190487 (= (isEmpty!25696 (tail!6259 lt!1427181)) ((_ is Nil!43030) (tail!6259 lt!1427181)))))

(assert (=> b!4020006 d!1190487))

(declare-fun d!1190489 () Bool)

(assert (=> d!1190489 (= (tail!6259 lt!1427181) (t!333487 lt!1427181))))

(assert (=> b!4020006 d!1190489))

(declare-fun d!1190491 () Bool)

(assert (=> d!1190491 (= (head!8527 lt!1427191) (h!48450 lt!1427191))))

(assert (=> b!4019703 d!1190491))

(assert (=> d!1190091 d!1190143))

(declare-fun d!1190497 () Bool)

(assert (=> d!1190497 (not (matchR!5726 (regex!6860 (rule!9912 token!484)) lt!1427191))))

(assert (=> d!1190497 true))

(declare-fun _$57!115 () Unit!62145)

(assert (=> d!1190497 (= (choose!24319 thiss!21717 rules!2999 (rule!9912 (_1!24213 (v!39647 lt!1427206))) lt!1427181 lt!1427222 lt!1427191 (rule!9912 token!484)) _$57!115)))

(declare-fun bs!589821 () Bool)

(assert (= bs!589821 d!1190497))

(assert (=> bs!589821 m!4608905))

(assert (=> d!1190091 d!1190497))

(assert (=> d!1190091 d!1190089))

(assert (=> b!4020110 d!1190429))

(assert (=> b!4020110 d!1190431))

(declare-fun b!4020622 () Bool)

(declare-fun res!1635942 () Bool)

(declare-fun e!2494093 () Bool)

(assert (=> b!4020622 (=> (not res!1635942) (not e!2494093))))

(declare-fun lt!1427816 () List!43154)

(assert (=> b!4020622 (= res!1635942 (= (size!32171 lt!1427816) (+ (size!32171 (t!333487 lt!1427191)) (size!32171 newSuffixResult!27))))))

(declare-fun b!4020620 () Bool)

(declare-fun e!2494092 () List!43154)

(assert (=> b!4020620 (= e!2494092 newSuffixResult!27)))

(declare-fun d!1190499 () Bool)

(assert (=> d!1190499 e!2494093))

(declare-fun res!1635941 () Bool)

(assert (=> d!1190499 (=> (not res!1635941) (not e!2494093))))

(assert (=> d!1190499 (= res!1635941 (= (content!6526 lt!1427816) ((_ map or) (content!6526 (t!333487 lt!1427191)) (content!6526 newSuffixResult!27))))))

(assert (=> d!1190499 (= lt!1427816 e!2494092)))

(declare-fun c!694805 () Bool)

(assert (=> d!1190499 (= c!694805 ((_ is Nil!43030) (t!333487 lt!1427191)))))

(assert (=> d!1190499 (= (++!11262 (t!333487 lt!1427191) newSuffixResult!27) lt!1427816)))

(declare-fun b!4020623 () Bool)

(assert (=> b!4020623 (= e!2494093 (or (not (= newSuffixResult!27 Nil!43030)) (= lt!1427816 (t!333487 lt!1427191))))))

(declare-fun b!4020621 () Bool)

(assert (=> b!4020621 (= e!2494092 (Cons!43030 (h!48450 (t!333487 lt!1427191)) (++!11262 (t!333487 (t!333487 lt!1427191)) newSuffixResult!27)))))

(assert (= (and d!1190499 c!694805) b!4020620))

(assert (= (and d!1190499 (not c!694805)) b!4020621))

(assert (= (and d!1190499 res!1635941) b!4020622))

(assert (= (and b!4020622 res!1635942) b!4020623))

(declare-fun m!4610917 () Bool)

(assert (=> b!4020622 m!4610917))

(assert (=> b!4020622 m!4610245))

(assert (=> b!4020622 m!4609617))

(declare-fun m!4610919 () Bool)

(assert (=> d!1190499 m!4610919))

(assert (=> d!1190499 m!4610595))

(assert (=> d!1190499 m!4609623))

(declare-fun m!4610921 () Bool)

(assert (=> b!4020621 m!4610921))

(assert (=> b!4019987 d!1190499))

(declare-fun d!1190501 () Bool)

(declare-fun lt!1427817 () List!43154)

(assert (=> d!1190501 (= (++!11262 (t!333487 lt!1427181) lt!1427817) (tail!6259 lt!1427222))))

(declare-fun e!2494096 () List!43154)

(assert (=> d!1190501 (= lt!1427817 e!2494096)))

(declare-fun c!694806 () Bool)

(assert (=> d!1190501 (= c!694806 ((_ is Cons!43030) (t!333487 lt!1427181)))))

(assert (=> d!1190501 (>= (size!32171 (tail!6259 lt!1427222)) (size!32171 (t!333487 lt!1427181)))))

(assert (=> d!1190501 (= (getSuffix!2372 (tail!6259 lt!1427222) (t!333487 lt!1427181)) lt!1427817)))

(declare-fun b!4020626 () Bool)

(assert (=> b!4020626 (= e!2494096 (getSuffix!2372 (tail!6259 (tail!6259 lt!1427222)) (t!333487 (t!333487 lt!1427181))))))

(declare-fun b!4020627 () Bool)

(assert (=> b!4020627 (= e!2494096 (tail!6259 lt!1427222))))

(assert (= (and d!1190501 c!694806) b!4020626))

(assert (= (and d!1190501 (not c!694806)) b!4020627))

(declare-fun m!4610923 () Bool)

(assert (=> d!1190501 m!4610923))

(assert (=> d!1190501 m!4610041))

(declare-fun m!4610925 () Bool)

(assert (=> d!1190501 m!4610925))

(assert (=> d!1190501 m!4609659))

(assert (=> b!4020626 m!4610041))

(declare-fun m!4610927 () Bool)

(assert (=> b!4020626 m!4610927))

(assert (=> b!4020626 m!4610927))

(declare-fun m!4610929 () Bool)

(assert (=> b!4020626 m!4610929))

(assert (=> b!4020071 d!1190501))

(declare-fun d!1190503 () Bool)

(assert (=> d!1190503 (= (tail!6259 lt!1427222) (t!333487 lt!1427222))))

(assert (=> b!4020071 d!1190503))

(declare-fun bs!589822 () Bool)

(declare-fun d!1190505 () Bool)

(assert (= bs!589822 (and d!1190505 d!1190371)))

(declare-fun lambda!127105 () Int)

(assert (=> bs!589822 (= lambda!127105 lambda!127096)))

(assert (=> d!1190505 true))

(declare-fun lt!1427820 () Bool)

(assert (=> d!1190505 (= lt!1427820 (rulesValidInductive!2498 thiss!21717 rules!2999))))

(assert (=> d!1190505 (= lt!1427820 (forall!8354 rules!2999 lambda!127105))))

(assert (=> d!1190505 (= (rulesValid!2666 thiss!21717 rules!2999) lt!1427820)))

(declare-fun bs!589823 () Bool)

(assert (= bs!589823 d!1190505))

(assert (=> bs!589823 m!4609243))

(declare-fun m!4610931 () Bool)

(assert (=> bs!589823 m!4610931))

(assert (=> d!1190075 d!1190505))

(assert (=> b!4020042 d!1190363))

(declare-fun d!1190507 () Bool)

(assert (=> d!1190507 (= (apply!10057 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427490)))) (seqFromList!5085 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427490))))) (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427490))))) (seqFromList!5085 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427490))))))))

(declare-fun b_lambda!117311 () Bool)

(assert (=> (not b_lambda!117311) (not d!1190507)))

(declare-fun tb!241693 () Bool)

(declare-fun t!333602 () Bool)

(assert (=> (and b!4019334 (= (toValue!9368 (transformation!6860 (h!48452 rules!2999))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427490)))))) t!333602) tb!241693))

(declare-fun result!292930 () Bool)

(assert (=> tb!241693 (= result!292930 (inv!21 (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427490))))) (seqFromList!5085 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427490)))))))))

(declare-fun m!4610937 () Bool)

(assert (=> tb!241693 m!4610937))

(assert (=> d!1190507 t!333602))

(declare-fun b_and!308887 () Bool)

(assert (= b_and!308857 (and (=> t!333602 result!292930) b_and!308887)))

(declare-fun t!333604 () Bool)

(declare-fun tb!241695 () Bool)

(assert (=> (and b!4019363 (= (toValue!9368 (transformation!6860 (rule!9912 token!484))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427490)))))) t!333604) tb!241695))

(declare-fun result!292932 () Bool)

(assert (= result!292932 result!292930))

(assert (=> d!1190507 t!333604))

(declare-fun b_and!308889 () Bool)

(assert (= b_and!308859 (and (=> t!333604 result!292932) b_and!308889)))

(declare-fun t!333606 () Bool)

(declare-fun tb!241697 () Bool)

(assert (=> (and b!4020174 (= (toValue!9368 (transformation!6860 (h!48452 (t!333489 rules!2999)))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427490)))))) t!333606) tb!241697))

(declare-fun result!292934 () Bool)

(assert (= result!292934 result!292930))

(assert (=> d!1190507 t!333606))

(declare-fun b_and!308891 () Bool)

(assert (= b_and!308861 (and (=> t!333606 result!292934) b_and!308891)))

(assert (=> d!1190507 m!4610085))

(declare-fun m!4610941 () Bool)

(assert (=> d!1190507 m!4610941))

(assert (=> b!4020042 d!1190507))

(declare-fun d!1190511 () Bool)

(assert (=> d!1190511 (= (seqFromList!5085 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427490)))) (fromListB!2324 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427490)))))))

(declare-fun bs!589824 () Bool)

(assert (= bs!589824 d!1190511))

(declare-fun m!4610947 () Bool)

(assert (=> bs!589824 m!4610947))

(assert (=> b!4020042 d!1190511))

(declare-fun b!4020647 () Bool)

(declare-fun res!1635955 () Bool)

(declare-fun e!2494111 () Bool)

(assert (=> b!4020647 (=> (not res!1635955) (not e!2494111))))

(declare-fun lt!1427823 () List!43154)

(assert (=> b!4020647 (= res!1635955 (= (size!32171 lt!1427823) (+ (size!32171 lt!1427191) (size!32171 lt!1427467))))))

(declare-fun b!4020645 () Bool)

(declare-fun e!2494110 () List!43154)

(assert (=> b!4020645 (= e!2494110 lt!1427467)))

(declare-fun d!1190515 () Bool)

(assert (=> d!1190515 e!2494111))

(declare-fun res!1635954 () Bool)

(assert (=> d!1190515 (=> (not res!1635954) (not e!2494111))))

(assert (=> d!1190515 (= res!1635954 (= (content!6526 lt!1427823) ((_ map or) (content!6526 lt!1427191) (content!6526 lt!1427467))))))

(assert (=> d!1190515 (= lt!1427823 e!2494110)))

(declare-fun c!694811 () Bool)

(assert (=> d!1190515 (= c!694811 ((_ is Nil!43030) lt!1427191))))

(assert (=> d!1190515 (= (++!11262 lt!1427191 lt!1427467) lt!1427823)))

(declare-fun b!4020648 () Bool)

(assert (=> b!4020648 (= e!2494111 (or (not (= lt!1427467 Nil!43030)) (= lt!1427823 lt!1427191)))))

(declare-fun b!4020646 () Bool)

(assert (=> b!4020646 (= e!2494110 (Cons!43030 (h!48450 lt!1427191) (++!11262 (t!333487 lt!1427191) lt!1427467)))))

(assert (= (and d!1190515 c!694811) b!4020645))

(assert (= (and d!1190515 (not c!694811)) b!4020646))

(assert (= (and d!1190515 res!1635954) b!4020647))

(assert (= (and b!4020647 res!1635955) b!4020648))

(declare-fun m!4610953 () Bool)

(assert (=> b!4020647 m!4610953))

(assert (=> b!4020647 m!4609075))

(declare-fun m!4610957 () Bool)

(assert (=> b!4020647 m!4610957))

(declare-fun m!4610959 () Bool)

(assert (=> d!1190515 m!4610959))

(assert (=> d!1190515 m!4609927))

(declare-fun m!4610961 () Bool)

(assert (=> d!1190515 m!4610961))

(declare-fun m!4610965 () Bool)

(assert (=> b!4020646 m!4610965))

(assert (=> d!1190057 d!1190515))

(assert (=> d!1190057 d!1190265))

(assert (=> d!1190057 d!1190159))

(declare-fun b!4020650 () Bool)

(declare-fun res!1635961 () Bool)

(declare-fun e!2494114 () Bool)

(assert (=> b!4020650 (=> (not res!1635961) (not e!2494114))))

(declare-fun lt!1427826 () Option!9274)

(assert (=> b!4020650 (= res!1635961 (= (++!11262 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427826)))) (_2!24213 (get!14131 lt!1427826))) lt!1427222))))

(declare-fun call!286657 () Option!9274)

(declare-fun bm!286652 () Bool)

(assert (=> bm!286652 (= call!286657 (maxPrefixOneRule!2767 thiss!21717 (h!48452 (t!333489 rules!2999)) lt!1427222))))

(declare-fun b!4020651 () Bool)

(declare-fun e!2494112 () Option!9274)

(assert (=> b!4020651 (= e!2494112 call!286657)))

(declare-fun b!4020652 () Bool)

(declare-fun res!1635957 () Bool)

(assert (=> b!4020652 (=> (not res!1635957) (not e!2494114))))

(assert (=> b!4020652 (= res!1635957 (matchR!5726 (regex!6860 (rule!9912 (_1!24213 (get!14131 lt!1427826)))) (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427826))))))))

(declare-fun b!4020653 () Bool)

(declare-fun res!1635958 () Bool)

(assert (=> b!4020653 (=> (not res!1635958) (not e!2494114))))

(assert (=> b!4020653 (= res!1635958 (= (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427826)))) (originalCharacters!7460 (_1!24213 (get!14131 lt!1427826)))))))

(declare-fun b!4020654 () Bool)

(declare-fun e!2494113 () Bool)

(assert (=> b!4020654 (= e!2494113 e!2494114)))

(declare-fun res!1635960 () Bool)

(assert (=> b!4020654 (=> (not res!1635960) (not e!2494114))))

(assert (=> b!4020654 (= res!1635960 (isDefined!7077 lt!1427826))))

(declare-fun b!4020655 () Bool)

(assert (=> b!4020655 (= e!2494114 (contains!8548 (t!333489 rules!2999) (rule!9912 (_1!24213 (get!14131 lt!1427826)))))))

(declare-fun d!1190519 () Bool)

(assert (=> d!1190519 e!2494113))

(declare-fun res!1635956 () Bool)

(assert (=> d!1190519 (=> res!1635956 e!2494113)))

(assert (=> d!1190519 (= res!1635956 (isEmpty!25695 lt!1427826))))

(assert (=> d!1190519 (= lt!1427826 e!2494112)))

(declare-fun c!694812 () Bool)

(assert (=> d!1190519 (= c!694812 (and ((_ is Cons!43032) (t!333489 rules!2999)) ((_ is Nil!43032) (t!333489 (t!333489 rules!2999)))))))

(declare-fun lt!1427828 () Unit!62145)

(declare-fun lt!1427825 () Unit!62145)

(assert (=> d!1190519 (= lt!1427828 lt!1427825)))

(assert (=> d!1190519 (isPrefix!3947 lt!1427222 lt!1427222)))

(assert (=> d!1190519 (= lt!1427825 (lemmaIsPrefixRefl!2523 lt!1427222 lt!1427222))))

(assert (=> d!1190519 (rulesValidInductive!2498 thiss!21717 (t!333489 rules!2999))))

(assert (=> d!1190519 (= (maxPrefix!3747 thiss!21717 (t!333489 rules!2999) lt!1427222) lt!1427826)))

(declare-fun b!4020649 () Bool)

(declare-fun res!1635962 () Bool)

(assert (=> b!4020649 (=> (not res!1635962) (not e!2494114))))

(assert (=> b!4020649 (= res!1635962 (= (value!216144 (_1!24213 (get!14131 lt!1427826))) (apply!10057 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427826)))) (seqFromList!5085 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427826)))))))))

(declare-fun b!4020656 () Bool)

(declare-fun lt!1427824 () Option!9274)

(declare-fun lt!1427827 () Option!9274)

(assert (=> b!4020656 (= e!2494112 (ite (and ((_ is None!9273) lt!1427824) ((_ is None!9273) lt!1427827)) None!9273 (ite ((_ is None!9273) lt!1427827) lt!1427824 (ite ((_ is None!9273) lt!1427824) lt!1427827 (ite (>= (size!32172 (_1!24213 (v!39647 lt!1427824))) (size!32172 (_1!24213 (v!39647 lt!1427827)))) lt!1427824 lt!1427827)))))))

(assert (=> b!4020656 (= lt!1427824 call!286657)))

(assert (=> b!4020656 (= lt!1427827 (maxPrefix!3747 thiss!21717 (t!333489 (t!333489 rules!2999)) lt!1427222))))

(declare-fun b!4020657 () Bool)

(declare-fun res!1635959 () Bool)

(assert (=> b!4020657 (=> (not res!1635959) (not e!2494114))))

(assert (=> b!4020657 (= res!1635959 (< (size!32171 (_2!24213 (get!14131 lt!1427826))) (size!32171 lt!1427222)))))

(assert (= (and d!1190519 c!694812) b!4020651))

(assert (= (and d!1190519 (not c!694812)) b!4020656))

(assert (= (or b!4020651 b!4020656) bm!286652))

(assert (= (and d!1190519 (not res!1635956)) b!4020654))

(assert (= (and b!4020654 res!1635960) b!4020653))

(assert (= (and b!4020653 res!1635958) b!4020657))

(assert (= (and b!4020657 res!1635959) b!4020650))

(assert (= (and b!4020650 res!1635961) b!4020649))

(assert (= (and b!4020649 res!1635962) b!4020652))

(assert (= (and b!4020652 res!1635957) b!4020655))

(declare-fun m!4610981 () Bool)

(assert (=> b!4020652 m!4610981))

(declare-fun m!4610983 () Bool)

(assert (=> b!4020652 m!4610983))

(assert (=> b!4020652 m!4610983))

(declare-fun m!4610985 () Bool)

(assert (=> b!4020652 m!4610985))

(assert (=> b!4020652 m!4610985))

(declare-fun m!4610991 () Bool)

(assert (=> b!4020652 m!4610991))

(declare-fun m!4610993 () Bool)

(assert (=> bm!286652 m!4610993))

(assert (=> b!4020649 m!4610981))

(declare-fun m!4610995 () Bool)

(assert (=> b!4020649 m!4610995))

(assert (=> b!4020649 m!4610995))

(declare-fun m!4610997 () Bool)

(assert (=> b!4020649 m!4610997))

(assert (=> b!4020657 m!4610981))

(declare-fun m!4610999 () Bool)

(assert (=> b!4020657 m!4610999))

(assert (=> b!4020657 m!4609209))

(declare-fun m!4611001 () Bool)

(assert (=> b!4020654 m!4611001))

(assert (=> b!4020653 m!4610981))

(assert (=> b!4020653 m!4610983))

(assert (=> b!4020653 m!4610983))

(assert (=> b!4020653 m!4610985))

(declare-fun m!4611003 () Bool)

(assert (=> b!4020656 m!4611003))

(assert (=> b!4020650 m!4610981))

(assert (=> b!4020650 m!4610983))

(assert (=> b!4020650 m!4610983))

(assert (=> b!4020650 m!4610985))

(assert (=> b!4020650 m!4610985))

(declare-fun m!4611005 () Bool)

(assert (=> b!4020650 m!4611005))

(assert (=> b!4020655 m!4610981))

(declare-fun m!4611007 () Bool)

(assert (=> b!4020655 m!4611007))

(declare-fun m!4611009 () Bool)

(assert (=> d!1190519 m!4611009))

(assert (=> d!1190519 m!4609237))

(assert (=> d!1190519 m!4609239))

(assert (=> d!1190519 m!4610611))

(assert (=> b!4019527 d!1190519))

(declare-fun b!4020664 () Bool)

(declare-fun res!1635972 () Bool)

(declare-fun e!2494121 () Bool)

(assert (=> b!4020664 (=> (not res!1635972) (not e!2494121))))

(declare-fun lt!1427833 () Option!9274)

(assert (=> b!4020664 (= res!1635972 (= (++!11262 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427833)))) (_2!24213 (get!14131 lt!1427833))) lt!1427217))))

(declare-fun call!286658 () Option!9274)

(declare-fun bm!286653 () Bool)

(assert (=> bm!286653 (= call!286658 (maxPrefixOneRule!2767 thiss!21717 (h!48452 (t!333489 rules!2999)) lt!1427217))))

(declare-fun b!4020665 () Bool)

(declare-fun e!2494119 () Option!9274)

(assert (=> b!4020665 (= e!2494119 call!286658)))

(declare-fun b!4020666 () Bool)

(declare-fun res!1635968 () Bool)

(assert (=> b!4020666 (=> (not res!1635968) (not e!2494121))))

(assert (=> b!4020666 (= res!1635968 (matchR!5726 (regex!6860 (rule!9912 (_1!24213 (get!14131 lt!1427833)))) (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427833))))))))

(declare-fun b!4020667 () Bool)

(declare-fun res!1635969 () Bool)

(assert (=> b!4020667 (=> (not res!1635969) (not e!2494121))))

(assert (=> b!4020667 (= res!1635969 (= (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427833)))) (originalCharacters!7460 (_1!24213 (get!14131 lt!1427833)))))))

(declare-fun b!4020668 () Bool)

(declare-fun e!2494120 () Bool)

(assert (=> b!4020668 (= e!2494120 e!2494121)))

(declare-fun res!1635971 () Bool)

(assert (=> b!4020668 (=> (not res!1635971) (not e!2494121))))

(assert (=> b!4020668 (= res!1635971 (isDefined!7077 lt!1427833))))

(declare-fun b!4020669 () Bool)

(assert (=> b!4020669 (= e!2494121 (contains!8548 (t!333489 rules!2999) (rule!9912 (_1!24213 (get!14131 lt!1427833)))))))

(declare-fun d!1190533 () Bool)

(assert (=> d!1190533 e!2494120))

(declare-fun res!1635967 () Bool)

(assert (=> d!1190533 (=> res!1635967 e!2494120)))

(assert (=> d!1190533 (= res!1635967 (isEmpty!25695 lt!1427833))))

(assert (=> d!1190533 (= lt!1427833 e!2494119)))

(declare-fun c!694813 () Bool)

(assert (=> d!1190533 (= c!694813 (and ((_ is Cons!43032) (t!333489 rules!2999)) ((_ is Nil!43032) (t!333489 (t!333489 rules!2999)))))))

(declare-fun lt!1427835 () Unit!62145)

(declare-fun lt!1427832 () Unit!62145)

(assert (=> d!1190533 (= lt!1427835 lt!1427832)))

(assert (=> d!1190533 (isPrefix!3947 lt!1427217 lt!1427217)))

(assert (=> d!1190533 (= lt!1427832 (lemmaIsPrefixRefl!2523 lt!1427217 lt!1427217))))

(assert (=> d!1190533 (rulesValidInductive!2498 thiss!21717 (t!333489 rules!2999))))

(assert (=> d!1190533 (= (maxPrefix!3747 thiss!21717 (t!333489 rules!2999) lt!1427217) lt!1427833)))

(declare-fun b!4020663 () Bool)

(declare-fun res!1635973 () Bool)

(assert (=> b!4020663 (=> (not res!1635973) (not e!2494121))))

(assert (=> b!4020663 (= res!1635973 (= (value!216144 (_1!24213 (get!14131 lt!1427833))) (apply!10057 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427833)))) (seqFromList!5085 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427833)))))))))

(declare-fun b!4020670 () Bool)

(declare-fun lt!1427831 () Option!9274)

(declare-fun lt!1427834 () Option!9274)

(assert (=> b!4020670 (= e!2494119 (ite (and ((_ is None!9273) lt!1427831) ((_ is None!9273) lt!1427834)) None!9273 (ite ((_ is None!9273) lt!1427834) lt!1427831 (ite ((_ is None!9273) lt!1427831) lt!1427834 (ite (>= (size!32172 (_1!24213 (v!39647 lt!1427831))) (size!32172 (_1!24213 (v!39647 lt!1427834)))) lt!1427831 lt!1427834)))))))

(assert (=> b!4020670 (= lt!1427831 call!286658)))

(assert (=> b!4020670 (= lt!1427834 (maxPrefix!3747 thiss!21717 (t!333489 (t!333489 rules!2999)) lt!1427217))))

(declare-fun b!4020671 () Bool)

(declare-fun res!1635970 () Bool)

(assert (=> b!4020671 (=> (not res!1635970) (not e!2494121))))

(assert (=> b!4020671 (= res!1635970 (< (size!32171 (_2!24213 (get!14131 lt!1427833))) (size!32171 lt!1427217)))))

(assert (= (and d!1190533 c!694813) b!4020665))

(assert (= (and d!1190533 (not c!694813)) b!4020670))

(assert (= (or b!4020665 b!4020670) bm!286653))

(assert (= (and d!1190533 (not res!1635967)) b!4020668))

(assert (= (and b!4020668 res!1635971) b!4020667))

(assert (= (and b!4020667 res!1635969) b!4020671))

(assert (= (and b!4020671 res!1635970) b!4020664))

(assert (= (and b!4020664 res!1635972) b!4020663))

(assert (= (and b!4020663 res!1635973) b!4020666))

(assert (= (and b!4020666 res!1635968) b!4020669))

(declare-fun m!4611011 () Bool)

(assert (=> b!4020666 m!4611011))

(declare-fun m!4611013 () Bool)

(assert (=> b!4020666 m!4611013))

(assert (=> b!4020666 m!4611013))

(declare-fun m!4611015 () Bool)

(assert (=> b!4020666 m!4611015))

(assert (=> b!4020666 m!4611015))

(declare-fun m!4611017 () Bool)

(assert (=> b!4020666 m!4611017))

(declare-fun m!4611019 () Bool)

(assert (=> bm!286653 m!4611019))

(assert (=> b!4020663 m!4611011))

(declare-fun m!4611021 () Bool)

(assert (=> b!4020663 m!4611021))

(assert (=> b!4020663 m!4611021))

(declare-fun m!4611023 () Bool)

(assert (=> b!4020663 m!4611023))

(assert (=> b!4020671 m!4611011))

(declare-fun m!4611025 () Bool)

(assert (=> b!4020671 m!4611025))

(assert (=> b!4020671 m!4609515))

(declare-fun m!4611027 () Bool)

(assert (=> b!4020668 m!4611027))

(assert (=> b!4020667 m!4611011))

(assert (=> b!4020667 m!4611013))

(assert (=> b!4020667 m!4611013))

(assert (=> b!4020667 m!4611015))

(declare-fun m!4611029 () Bool)

(assert (=> b!4020670 m!4611029))

(assert (=> b!4020664 m!4611011))

(assert (=> b!4020664 m!4611013))

(assert (=> b!4020664 m!4611013))

(assert (=> b!4020664 m!4611015))

(assert (=> b!4020664 m!4611015))

(declare-fun m!4611031 () Bool)

(assert (=> b!4020664 m!4611031))

(assert (=> b!4020669 m!4611011))

(declare-fun m!4611035 () Bool)

(assert (=> b!4020669 m!4611035))

(declare-fun m!4611039 () Bool)

(assert (=> d!1190533 m!4611039))

(assert (=> d!1190533 m!4608971))

(assert (=> d!1190533 m!4608973))

(assert (=> d!1190533 m!4610611))

(assert (=> b!4020049 d!1190533))

(assert (=> b!4019520 d!1190375))

(declare-fun d!1190537 () Bool)

(assert (=> d!1190537 (= (apply!10057 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427286)))) (seqFromList!5085 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427286))))) (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427286))))) (seqFromList!5085 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427286))))))))

(declare-fun b_lambda!117315 () Bool)

(assert (=> (not b_lambda!117315) (not d!1190537)))

(declare-fun t!333614 () Bool)

(declare-fun tb!241705 () Bool)

(assert (=> (and b!4019334 (= (toValue!9368 (transformation!6860 (h!48452 rules!2999))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427286)))))) t!333614) tb!241705))

(declare-fun result!292942 () Bool)

(assert (=> tb!241705 (= result!292942 (inv!21 (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427286))))) (seqFromList!5085 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427286)))))))))

(declare-fun m!4611043 () Bool)

(assert (=> tb!241705 m!4611043))

(assert (=> d!1190537 t!333614))

(declare-fun b_and!308899 () Bool)

(assert (= b_and!308887 (and (=> t!333614 result!292942) b_and!308899)))

(declare-fun t!333616 () Bool)

(declare-fun tb!241707 () Bool)

(assert (=> (and b!4019363 (= (toValue!9368 (transformation!6860 (rule!9912 token!484))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427286)))))) t!333616) tb!241707))

(declare-fun result!292944 () Bool)

(assert (= result!292944 result!292942))

(assert (=> d!1190537 t!333616))

(declare-fun b_and!308901 () Bool)

(assert (= b_and!308889 (and (=> t!333616 result!292944) b_and!308901)))

(declare-fun tb!241709 () Bool)

(declare-fun t!333618 () Bool)

(assert (=> (and b!4020174 (= (toValue!9368 (transformation!6860 (h!48452 (t!333489 rules!2999)))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427286)))))) t!333618) tb!241709))

(declare-fun result!292946 () Bool)

(assert (= result!292946 result!292942))

(assert (=> d!1190537 t!333618))

(declare-fun b_and!308903 () Bool)

(assert (= b_and!308891 (and (=> t!333618 result!292946) b_and!308903)))

(assert (=> d!1190537 m!4609203))

(declare-fun m!4611045 () Bool)

(assert (=> d!1190537 m!4611045))

(assert (=> b!4019520 d!1190537))

(declare-fun d!1190541 () Bool)

(assert (=> d!1190541 (= (seqFromList!5085 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427286)))) (fromListB!2324 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427286)))))))

(declare-fun bs!589828 () Bool)

(assert (= bs!589828 d!1190541))

(declare-fun m!4611049 () Bool)

(assert (=> bs!589828 m!4611049))

(assert (=> b!4019520 d!1190541))

(assert (=> b!4019971 d!1190161))

(assert (=> b!4019971 d!1190159))

(assert (=> b!4020026 d!1190377))

(assert (=> b!4020026 d!1189967))

(declare-fun d!1190545 () Bool)

(declare-fun lt!1427840 () Int)

(assert (=> d!1190545 (>= lt!1427840 0)))

(declare-fun e!2494126 () Int)

(assert (=> d!1190545 (= lt!1427840 e!2494126)))

(declare-fun c!694815 () Bool)

(assert (=> d!1190545 (= c!694815 ((_ is Nil!43030) lt!1427499))))

(assert (=> d!1190545 (= (size!32171 lt!1427499) lt!1427840)))

(declare-fun b!4020675 () Bool)

(assert (=> b!4020675 (= e!2494126 0)))

(declare-fun b!4020676 () Bool)

(assert (=> b!4020676 (= e!2494126 (+ 1 (size!32171 (t!333487 lt!1427499))))))

(assert (= (and d!1190545 c!694815) b!4020675))

(assert (= (and d!1190545 (not c!694815)) b!4020676))

(declare-fun m!4611057 () Bool)

(assert (=> b!4020676 m!4611057))

(assert (=> b!4020069 d!1190545))

(assert (=> b!4020069 d!1189967))

(declare-fun d!1190549 () Bool)

(declare-fun lt!1427841 () Int)

(assert (=> d!1190549 (>= lt!1427841 0)))

(declare-fun e!2494127 () Int)

(assert (=> d!1190549 (= lt!1427841 e!2494127)))

(declare-fun c!694816 () Bool)

(assert (=> d!1190549 (= c!694816 ((_ is Nil!43030) lt!1427214))))

(assert (=> d!1190549 (= (size!32171 lt!1427214) lt!1427841)))

(declare-fun b!4020677 () Bool)

(assert (=> b!4020677 (= e!2494127 0)))

(declare-fun b!4020678 () Bool)

(assert (=> b!4020678 (= e!2494127 (+ 1 (size!32171 (t!333487 lt!1427214))))))

(assert (= (and d!1190549 c!694816) b!4020677))

(assert (= (and d!1190549 (not c!694816)) b!4020678))

(declare-fun m!4611059 () Bool)

(assert (=> b!4020678 m!4611059))

(assert (=> b!4020069 d!1190549))

(assert (=> b!4020058 d!1190265))

(assert (=> b!4020058 d!1190161))

(declare-fun d!1190551 () Bool)

(declare-fun c!694817 () Bool)

(assert (=> d!1190551 (= c!694817 ((_ is Nil!43030) lt!1427475))))

(declare-fun e!2494128 () (InoxSet C!23716))

(assert (=> d!1190551 (= (content!6526 lt!1427475) e!2494128)))

(declare-fun b!4020679 () Bool)

(assert (=> b!4020679 (= e!2494128 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4020680 () Bool)

(assert (=> b!4020680 (= e!2494128 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 lt!1427475) true) (content!6526 (t!333487 lt!1427475))))))

(assert (= (and d!1190551 c!694817) b!4020679))

(assert (= (and d!1190551 (not c!694817)) b!4020680))

(declare-fun m!4611061 () Bool)

(assert (=> b!4020680 m!4611061))

(declare-fun m!4611063 () Bool)

(assert (=> b!4020680 m!4611063))

(assert (=> d!1190069 d!1190551))

(declare-fun d!1190553 () Bool)

(declare-fun c!694818 () Bool)

(assert (=> d!1190553 (= c!694818 ((_ is Nil!43030) lt!1427188))))

(declare-fun e!2494130 () (InoxSet C!23716))

(assert (=> d!1190553 (= (content!6526 lt!1427188) e!2494130)))

(declare-fun b!4020681 () Bool)

(assert (=> b!4020681 (= e!2494130 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4020682 () Bool)

(assert (=> b!4020682 (= e!2494130 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 lt!1427188) true) (content!6526 (t!333487 lt!1427188))))))

(assert (= (and d!1190553 c!694818) b!4020681))

(assert (= (and d!1190553 (not c!694818)) b!4020682))

(declare-fun m!4611067 () Bool)

(assert (=> b!4020682 m!4611067))

(declare-fun m!4611069 () Bool)

(assert (=> b!4020682 m!4611069))

(assert (=> d!1190069 d!1190553))

(declare-fun d!1190555 () Bool)

(declare-fun c!694819 () Bool)

(assert (=> d!1190555 (= c!694819 ((_ is Nil!43030) suffix!1299))))

(declare-fun e!2494131 () (InoxSet C!23716))

(assert (=> d!1190555 (= (content!6526 suffix!1299) e!2494131)))

(declare-fun b!4020683 () Bool)

(assert (=> b!4020683 (= e!2494131 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4020684 () Bool)

(assert (=> b!4020684 (= e!2494131 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 suffix!1299) true) (content!6526 (t!333487 suffix!1299))))))

(assert (= (and d!1190555 c!694819) b!4020683))

(assert (= (and d!1190555 (not c!694819)) b!4020684))

(declare-fun m!4611071 () Bool)

(assert (=> b!4020684 m!4611071))

(declare-fun m!4611073 () Bool)

(assert (=> b!4020684 m!4611073))

(assert (=> d!1190069 d!1190555))

(declare-fun d!1190557 () Bool)

(assert (=> d!1190557 (= (list!15996 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (value!216144 token!484))) (list!15998 (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (value!216144 token!484)))))))

(declare-fun bs!589830 () Bool)

(assert (= bs!589830 d!1190557))

(declare-fun m!4611077 () Bool)

(assert (=> bs!589830 m!4611077))

(assert (=> b!4020039 d!1190557))

(assert (=> d!1190073 d!1190071))

(assert (=> d!1190073 d!1190047))

(declare-fun b!4020688 () Bool)

(declare-fun res!1635979 () Bool)

(declare-fun e!2494134 () Bool)

(assert (=> b!4020688 (=> (not res!1635979) (not e!2494134))))

(declare-fun lt!1427843 () List!43154)

(assert (=> b!4020688 (= res!1635979 (= (size!32171 lt!1427843) (+ (size!32171 lt!1427191) (size!32171 (++!11262 lt!1427218 suffix!1299)))))))

(declare-fun b!4020686 () Bool)

(declare-fun e!2494133 () List!43154)

(assert (=> b!4020686 (= e!2494133 (++!11262 lt!1427218 suffix!1299))))

(declare-fun d!1190561 () Bool)

(assert (=> d!1190561 e!2494134))

(declare-fun res!1635978 () Bool)

(assert (=> d!1190561 (=> (not res!1635978) (not e!2494134))))

(assert (=> d!1190561 (= res!1635978 (= (content!6526 lt!1427843) ((_ map or) (content!6526 lt!1427191) (content!6526 (++!11262 lt!1427218 suffix!1299)))))))

(assert (=> d!1190561 (= lt!1427843 e!2494133)))

(declare-fun c!694820 () Bool)

(assert (=> d!1190561 (= c!694820 ((_ is Nil!43030) lt!1427191))))

(assert (=> d!1190561 (= (++!11262 lt!1427191 (++!11262 lt!1427218 suffix!1299)) lt!1427843)))

(declare-fun b!4020689 () Bool)

(assert (=> b!4020689 (= e!2494134 (or (not (= (++!11262 lt!1427218 suffix!1299) Nil!43030)) (= lt!1427843 lt!1427191)))))

(declare-fun b!4020687 () Bool)

(assert (=> b!4020687 (= e!2494133 (Cons!43030 (h!48450 lt!1427191) (++!11262 (t!333487 lt!1427191) (++!11262 lt!1427218 suffix!1299))))))

(assert (= (and d!1190561 c!694820) b!4020686))

(assert (= (and d!1190561 (not c!694820)) b!4020687))

(assert (= (and d!1190561 res!1635978) b!4020688))

(assert (= (and b!4020688 res!1635979) b!4020689))

(declare-fun m!4611079 () Bool)

(assert (=> b!4020688 m!4611079))

(assert (=> b!4020688 m!4609075))

(assert (=> b!4020688 m!4609051))

(declare-fun m!4611083 () Bool)

(assert (=> b!4020688 m!4611083))

(declare-fun m!4611085 () Bool)

(assert (=> d!1190561 m!4611085))

(assert (=> d!1190561 m!4609927))

(assert (=> d!1190561 m!4609051))

(declare-fun m!4611087 () Bool)

(assert (=> d!1190561 m!4611087))

(assert (=> b!4020687 m!4609051))

(declare-fun m!4611089 () Bool)

(assert (=> b!4020687 m!4611089))

(assert (=> d!1190073 d!1190561))

(declare-fun b!4020692 () Bool)

(declare-fun res!1635981 () Bool)

(declare-fun e!2494136 () Bool)

(assert (=> b!4020692 (=> (not res!1635981) (not e!2494136))))

(declare-fun lt!1427844 () List!43154)

(assert (=> b!4020692 (= res!1635981 (= (size!32171 lt!1427844) (+ (size!32171 (++!11262 lt!1427191 lt!1427218)) (size!32171 suffix!1299))))))

(declare-fun b!4020690 () Bool)

(declare-fun e!2494135 () List!43154)

(assert (=> b!4020690 (= e!2494135 suffix!1299)))

(declare-fun d!1190563 () Bool)

(assert (=> d!1190563 e!2494136))

(declare-fun res!1635980 () Bool)

(assert (=> d!1190563 (=> (not res!1635980) (not e!2494136))))

(assert (=> d!1190563 (= res!1635980 (= (content!6526 lt!1427844) ((_ map or) (content!6526 (++!11262 lt!1427191 lt!1427218)) (content!6526 suffix!1299))))))

(assert (=> d!1190563 (= lt!1427844 e!2494135)))

(declare-fun c!694821 () Bool)

(assert (=> d!1190563 (= c!694821 ((_ is Nil!43030) (++!11262 lt!1427191 lt!1427218)))))

(assert (=> d!1190563 (= (++!11262 (++!11262 lt!1427191 lt!1427218) suffix!1299) lt!1427844)))

(declare-fun b!4020693 () Bool)

(assert (=> b!4020693 (= e!2494136 (or (not (= suffix!1299 Nil!43030)) (= lt!1427844 (++!11262 lt!1427191 lt!1427218))))))

(declare-fun b!4020691 () Bool)

(assert (=> b!4020691 (= e!2494135 (Cons!43030 (h!48450 (++!11262 lt!1427191 lt!1427218)) (++!11262 (t!333487 (++!11262 lt!1427191 lt!1427218)) suffix!1299)))))

(assert (= (and d!1190563 c!694821) b!4020690))

(assert (= (and d!1190563 (not c!694821)) b!4020691))

(assert (= (and d!1190563 res!1635980) b!4020692))

(assert (= (and b!4020692 res!1635981) b!4020693))

(declare-fun m!4611091 () Bool)

(assert (=> b!4020692 m!4611091))

(assert (=> b!4020692 m!4608983))

(declare-fun m!4611093 () Bool)

(assert (=> b!4020692 m!4611093))

(assert (=> b!4020692 m!4608933))

(declare-fun m!4611095 () Bool)

(assert (=> d!1190563 m!4611095))

(assert (=> d!1190563 m!4608983))

(declare-fun m!4611097 () Bool)

(assert (=> d!1190563 m!4611097))

(assert (=> d!1190563 m!4609995))

(declare-fun m!4611099 () Bool)

(assert (=> b!4020691 m!4611099))

(assert (=> d!1190073 d!1190563))

(declare-fun d!1190567 () Bool)

(assert (=> d!1190567 (= (++!11262 (++!11262 lt!1427191 lt!1427218) suffix!1299) (++!11262 lt!1427191 (++!11262 lt!1427218 suffix!1299)))))

(assert (=> d!1190567 true))

(declare-fun _$52!2269 () Unit!62145)

(assert (=> d!1190567 (= (choose!24310 lt!1427191 lt!1427218 suffix!1299) _$52!2269)))

(declare-fun bs!589831 () Bool)

(assert (= bs!589831 d!1190567))

(assert (=> bs!589831 m!4608983))

(assert (=> bs!589831 m!4608983))

(assert (=> bs!589831 m!4610005))

(assert (=> bs!589831 m!4609051))

(assert (=> bs!589831 m!4609051))

(assert (=> bs!589831 m!4610009))

(assert (=> d!1190073 d!1190567))

(declare-fun d!1190569 () Bool)

(assert (=> d!1190569 (= (list!15996 lt!1427520) (list!15998 (c!694546 lt!1427520)))))

(declare-fun bs!589832 () Bool)

(assert (= bs!589832 d!1190569))

(declare-fun m!4611101 () Bool)

(assert (=> bs!589832 m!4611101))

(assert (=> d!1190165 d!1190569))

(declare-fun bs!589833 () Bool)

(declare-fun d!1190571 () Bool)

(assert (= bs!589833 (and d!1190571 d!1190405)))

(declare-fun lambda!127106 () Int)

(assert (=> bs!589833 (= (= (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (toValue!9368 (transformation!6860 (rule!9912 token!484)))) (= lambda!127106 lambda!127099))))

(assert (=> d!1190571 true))

(assert (=> d!1190571 (< (dynLambda!18241 order!22519 (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) (dynLambda!18246 order!22525 lambda!127106))))

(assert (=> d!1190571 (= (equivClasses!2832 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) (Forall2!1075 lambda!127106))))

(declare-fun bs!589834 () Bool)

(assert (= bs!589834 d!1190571))

(declare-fun m!4611143 () Bool)

(assert (=> bs!589834 m!4611143))

(assert (=> b!4019767 d!1190571))

(assert (=> b!4020092 d!1190463))

(declare-fun d!1190573 () Bool)

(assert (=> d!1190573 (= (apply!10057 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427506)))) (seqFromList!5085 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427506))))) (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427506))))) (seqFromList!5085 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427506))))))))

(declare-fun b_lambda!117319 () Bool)

(assert (=> (not b_lambda!117319) (not d!1190573)))

(declare-fun t!333626 () Bool)

(declare-fun tb!241717 () Bool)

(assert (=> (and b!4019334 (= (toValue!9368 (transformation!6860 (h!48452 rules!2999))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427506)))))) t!333626) tb!241717))

(declare-fun result!292954 () Bool)

(assert (=> tb!241717 (= result!292954 (inv!21 (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427506))))) (seqFromList!5085 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427506)))))))))

(declare-fun m!4611149 () Bool)

(assert (=> tb!241717 m!4611149))

(assert (=> d!1190573 t!333626))

(declare-fun b_and!308911 () Bool)

(assert (= b_and!308899 (and (=> t!333626 result!292954) b_and!308911)))

(declare-fun t!333628 () Bool)

(declare-fun tb!241719 () Bool)

(assert (=> (and b!4019363 (= (toValue!9368 (transformation!6860 (rule!9912 token!484))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427506)))))) t!333628) tb!241719))

(declare-fun result!292956 () Bool)

(assert (= result!292956 result!292954))

(assert (=> d!1190573 t!333628))

(declare-fun b_and!308913 () Bool)

(assert (= b_and!308901 (and (=> t!333628 result!292956) b_and!308913)))

(declare-fun tb!241721 () Bool)

(declare-fun t!333630 () Bool)

(assert (=> (and b!4020174 (= (toValue!9368 (transformation!6860 (h!48452 (t!333489 rules!2999)))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427506)))))) t!333630) tb!241721))

(declare-fun result!292958 () Bool)

(assert (= result!292958 result!292954))

(assert (=> d!1190573 t!333630))

(declare-fun b_and!308915 () Bool)

(assert (= b_and!308903 (and (=> t!333630 result!292958) b_and!308915)))

(assert (=> d!1190573 m!4610199))

(declare-fun m!4611151 () Bool)

(assert (=> d!1190573 m!4611151))

(assert (=> b!4020092 d!1190573))

(declare-fun d!1190579 () Bool)

(assert (=> d!1190579 (= (seqFromList!5085 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427506)))) (fromListB!2324 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427506)))))))

(declare-fun bs!589836 () Bool)

(assert (= bs!589836 d!1190579))

(declare-fun m!4611153 () Bool)

(assert (=> bs!589836 m!4611153))

(assert (=> b!4020092 d!1190579))

(declare-fun d!1190581 () Bool)

(assert (=> d!1190581 (= (head!8527 newSuffix!27) (h!48450 newSuffix!27))))

(assert (=> b!4020028 d!1190581))

(declare-fun d!1190583 () Bool)

(assert (=> d!1190583 (= (head!8527 suffix!1299) (h!48450 suffix!1299))))

(assert (=> b!4020028 d!1190583))

(declare-fun b!4020709 () Bool)

(declare-fun e!2494151 () Bool)

(declare-fun e!2494149 () Bool)

(assert (=> b!4020709 (= e!2494151 e!2494149)))

(declare-fun res!1635988 () Bool)

(assert (=> b!4020709 (=> res!1635988 e!2494149)))

(declare-fun call!286667 () Bool)

(assert (=> b!4020709 (= res!1635988 call!286667)))

(declare-fun b!4020710 () Bool)

(declare-fun res!1635991 () Bool)

(declare-fun e!2494148 () Bool)

(assert (=> b!4020710 (=> (not res!1635991) (not e!2494148))))

(assert (=> b!4020710 (= res!1635991 (isEmpty!25696 (tail!6259 (tail!6259 lt!1427191))))))

(declare-fun b!4020711 () Bool)

(declare-fun e!2494150 () Bool)

(declare-fun lt!1427874 () Bool)

(assert (=> b!4020711 (= e!2494150 (not lt!1427874))))

(declare-fun b!4020712 () Bool)

(declare-fun res!1635986 () Bool)

(declare-fun e!2494147 () Bool)

(assert (=> b!4020712 (=> res!1635986 e!2494147)))

(assert (=> b!4020712 (= res!1635986 (not ((_ is ElementMatch!11765) (derivativeStep!3535 (regex!6860 (rule!9912 token!484)) (head!8527 lt!1427191)))))))

(assert (=> b!4020712 (= e!2494150 e!2494147)))

(declare-fun b!4020714 () Bool)

(declare-fun res!1635985 () Bool)

(assert (=> b!4020714 (=> res!1635985 e!2494149)))

(assert (=> b!4020714 (= res!1635985 (not (isEmpty!25696 (tail!6259 (tail!6259 lt!1427191)))))))

(declare-fun b!4020715 () Bool)

(declare-fun res!1635989 () Bool)

(assert (=> b!4020715 (=> (not res!1635989) (not e!2494148))))

(assert (=> b!4020715 (= res!1635989 (not call!286667))))

(declare-fun b!4020716 () Bool)

(declare-fun res!1635990 () Bool)

(assert (=> b!4020716 (=> res!1635990 e!2494147)))

(assert (=> b!4020716 (= res!1635990 e!2494148)))

(declare-fun res!1635984 () Bool)

(assert (=> b!4020716 (=> (not res!1635984) (not e!2494148))))

(assert (=> b!4020716 (= res!1635984 lt!1427874)))

(declare-fun b!4020717 () Bool)

(assert (=> b!4020717 (= e!2494149 (not (= (head!8527 (tail!6259 lt!1427191)) (c!694547 (derivativeStep!3535 (regex!6860 (rule!9912 token!484)) (head!8527 lt!1427191))))))))

(declare-fun b!4020718 () Bool)

(declare-fun e!2494152 () Bool)

(assert (=> b!4020718 (= e!2494152 (nullable!4126 (derivativeStep!3535 (regex!6860 (rule!9912 token!484)) (head!8527 lt!1427191))))))

(declare-fun b!4020719 () Bool)

(declare-fun e!2494153 () Bool)

(assert (=> b!4020719 (= e!2494153 e!2494150)))

(declare-fun c!694830 () Bool)

(assert (=> b!4020719 (= c!694830 ((_ is EmptyLang!11765) (derivativeStep!3535 (regex!6860 (rule!9912 token!484)) (head!8527 lt!1427191))))))

(declare-fun b!4020720 () Bool)

(assert (=> b!4020720 (= e!2494147 e!2494151)))

(declare-fun res!1635987 () Bool)

(assert (=> b!4020720 (=> (not res!1635987) (not e!2494151))))

(assert (=> b!4020720 (= res!1635987 (not lt!1427874))))

(declare-fun b!4020721 () Bool)

(assert (=> b!4020721 (= e!2494152 (matchR!5726 (derivativeStep!3535 (derivativeStep!3535 (regex!6860 (rule!9912 token!484)) (head!8527 lt!1427191)) (head!8527 (tail!6259 lt!1427191))) (tail!6259 (tail!6259 lt!1427191))))))

(declare-fun bm!286662 () Bool)

(assert (=> bm!286662 (= call!286667 (isEmpty!25696 (tail!6259 lt!1427191)))))

(declare-fun b!4020722 () Bool)

(assert (=> b!4020722 (= e!2494153 (= lt!1427874 call!286667))))

(declare-fun b!4020713 () Bool)

(assert (=> b!4020713 (= e!2494148 (= (head!8527 (tail!6259 lt!1427191)) (c!694547 (derivativeStep!3535 (regex!6860 (rule!9912 token!484)) (head!8527 lt!1427191)))))))

(declare-fun d!1190585 () Bool)

(assert (=> d!1190585 e!2494153))

(declare-fun c!694828 () Bool)

(assert (=> d!1190585 (= c!694828 ((_ is EmptyExpr!11765) (derivativeStep!3535 (regex!6860 (rule!9912 token!484)) (head!8527 lt!1427191))))))

(assert (=> d!1190585 (= lt!1427874 e!2494152)))

(declare-fun c!694829 () Bool)

(assert (=> d!1190585 (= c!694829 (isEmpty!25696 (tail!6259 lt!1427191)))))

(assert (=> d!1190585 (validRegex!5326 (derivativeStep!3535 (regex!6860 (rule!9912 token!484)) (head!8527 lt!1427191)))))

(assert (=> d!1190585 (= (matchR!5726 (derivativeStep!3535 (regex!6860 (rule!9912 token!484)) (head!8527 lt!1427191)) (tail!6259 lt!1427191)) lt!1427874)))

(assert (= (and d!1190585 c!694829) b!4020718))

(assert (= (and d!1190585 (not c!694829)) b!4020721))

(assert (= (and d!1190585 c!694828) b!4020722))

(assert (= (and d!1190585 (not c!694828)) b!4020719))

(assert (= (and b!4020719 c!694830) b!4020711))

(assert (= (and b!4020719 (not c!694830)) b!4020712))

(assert (= (and b!4020712 (not res!1635986)) b!4020716))

(assert (= (and b!4020716 res!1635984) b!4020715))

(assert (= (and b!4020715 res!1635989) b!4020710))

(assert (= (and b!4020710 res!1635991) b!4020713))

(assert (= (and b!4020716 (not res!1635990)) b!4020720))

(assert (= (and b!4020720 res!1635987) b!4020709))

(assert (= (and b!4020709 (not res!1635988)) b!4020714))

(assert (= (and b!4020714 (not res!1635985)) b!4020717))

(assert (= (or b!4020722 b!4020709 b!4020715) bm!286662))

(assert (=> b!4020717 m!4609285))

(declare-fun m!4611159 () Bool)

(assert (=> b!4020717 m!4611159))

(assert (=> b!4020713 m!4609285))

(assert (=> b!4020713 m!4611159))

(assert (=> b!4020710 m!4609285))

(declare-fun m!4611161 () Bool)

(assert (=> b!4020710 m!4611161))

(assert (=> b!4020710 m!4611161))

(declare-fun m!4611165 () Bool)

(assert (=> b!4020710 m!4611165))

(assert (=> b!4020718 m!4610217))

(declare-fun m!4611167 () Bool)

(assert (=> b!4020718 m!4611167))

(assert (=> bm!286662 m!4609285))

(assert (=> bm!286662 m!4609499))

(assert (=> b!4020714 m!4609285))

(assert (=> b!4020714 m!4611161))

(assert (=> b!4020714 m!4611161))

(assert (=> b!4020714 m!4611165))

(assert (=> d!1190585 m!4609285))

(assert (=> d!1190585 m!4609499))

(assert (=> d!1190585 m!4610217))

(declare-fun m!4611173 () Bool)

(assert (=> d!1190585 m!4611173))

(assert (=> b!4020721 m!4609285))

(assert (=> b!4020721 m!4611159))

(assert (=> b!4020721 m!4610217))

(assert (=> b!4020721 m!4611159))

(declare-fun m!4611175 () Bool)

(assert (=> b!4020721 m!4611175))

(assert (=> b!4020721 m!4609285))

(assert (=> b!4020721 m!4611161))

(assert (=> b!4020721 m!4611175))

(assert (=> b!4020721 m!4611161))

(declare-fun m!4611177 () Bool)

(assert (=> b!4020721 m!4611177))

(assert (=> b!4020117 d!1190585))

(declare-fun b!4020768 () Bool)

(declare-fun c!694848 () Bool)

(assert (=> b!4020768 (= c!694848 (nullable!4126 (regOne!24042 (regex!6860 (rule!9912 token!484)))))))

(declare-fun e!2494180 () Regex!11765)

(declare-fun e!2494177 () Regex!11765)

(assert (=> b!4020768 (= e!2494180 e!2494177)))

(declare-fun b!4020769 () Bool)

(declare-fun call!286679 () Regex!11765)

(assert (=> b!4020769 (= e!2494177 (Union!11765 (Concat!18856 call!286679 (regTwo!24042 (regex!6860 (rule!9912 token!484)))) EmptyLang!11765))))

(declare-fun c!694850 () Bool)

(declare-fun call!286678 () Regex!11765)

(declare-fun bm!286671 () Bool)

(declare-fun c!694852 () Bool)

(assert (=> bm!286671 (= call!286678 (derivativeStep!3535 (ite c!694852 (regOne!24043 (regex!6860 (rule!9912 token!484))) (ite c!694850 (reg!12094 (regex!6860 (rule!9912 token!484))) (regOne!24042 (regex!6860 (rule!9912 token!484))))) (head!8527 lt!1427191)))))

(declare-fun bm!286672 () Bool)

(declare-fun call!286676 () Regex!11765)

(assert (=> bm!286672 (= call!286679 call!286676)))

(declare-fun b!4020770 () Bool)

(declare-fun e!2494178 () Regex!11765)

(assert (=> b!4020770 (= e!2494178 EmptyLang!11765)))

(declare-fun bm!286673 () Bool)

(declare-fun call!286677 () Regex!11765)

(assert (=> bm!286673 (= call!286677 (derivativeStep!3535 (ite c!694852 (regTwo!24043 (regex!6860 (rule!9912 token!484))) (regTwo!24042 (regex!6860 (rule!9912 token!484)))) (head!8527 lt!1427191)))))

(declare-fun b!4020771 () Bool)

(assert (=> b!4020771 (= e!2494177 (Union!11765 (Concat!18856 call!286679 (regTwo!24042 (regex!6860 (rule!9912 token!484)))) call!286677))))

(declare-fun b!4020772 () Bool)

(assert (=> b!4020772 (= c!694852 ((_ is Union!11765) (regex!6860 (rule!9912 token!484))))))

(declare-fun e!2494179 () Regex!11765)

(declare-fun e!2494181 () Regex!11765)

(assert (=> b!4020772 (= e!2494179 e!2494181)))

(declare-fun bm!286674 () Bool)

(assert (=> bm!286674 (= call!286676 call!286678)))

(declare-fun b!4020773 () Bool)

(assert (=> b!4020773 (= e!2494180 (Concat!18856 call!286676 (regex!6860 (rule!9912 token!484))))))

(declare-fun b!4020775 () Bool)

(assert (=> b!4020775 (= e!2494181 e!2494180)))

(assert (=> b!4020775 (= c!694850 ((_ is Star!11765) (regex!6860 (rule!9912 token!484))))))

(declare-fun b!4020776 () Bool)

(assert (=> b!4020776 (= e!2494179 (ite (= (head!8527 lt!1427191) (c!694547 (regex!6860 (rule!9912 token!484)))) EmptyExpr!11765 EmptyLang!11765))))

(declare-fun b!4020777 () Bool)

(assert (=> b!4020777 (= e!2494178 e!2494179)))

(declare-fun c!694849 () Bool)

(assert (=> b!4020777 (= c!694849 ((_ is ElementMatch!11765) (regex!6860 (rule!9912 token!484))))))

(declare-fun b!4020774 () Bool)

(assert (=> b!4020774 (= e!2494181 (Union!11765 call!286678 call!286677))))

(declare-fun d!1190589 () Bool)

(declare-fun lt!1427883 () Regex!11765)

(assert (=> d!1190589 (validRegex!5326 lt!1427883)))

(assert (=> d!1190589 (= lt!1427883 e!2494178)))

(declare-fun c!694851 () Bool)

(assert (=> d!1190589 (= c!694851 (or ((_ is EmptyExpr!11765) (regex!6860 (rule!9912 token!484))) ((_ is EmptyLang!11765) (regex!6860 (rule!9912 token!484)))))))

(assert (=> d!1190589 (validRegex!5326 (regex!6860 (rule!9912 token!484)))))

(assert (=> d!1190589 (= (derivativeStep!3535 (regex!6860 (rule!9912 token!484)) (head!8527 lt!1427191)) lt!1427883)))

(assert (= (and d!1190589 c!694851) b!4020770))

(assert (= (and d!1190589 (not c!694851)) b!4020777))

(assert (= (and b!4020777 c!694849) b!4020776))

(assert (= (and b!4020777 (not c!694849)) b!4020772))

(assert (= (and b!4020772 c!694852) b!4020774))

(assert (= (and b!4020772 (not c!694852)) b!4020775))

(assert (= (and b!4020775 c!694850) b!4020773))

(assert (= (and b!4020775 (not c!694850)) b!4020768))

(assert (= (and b!4020768 c!694848) b!4020771))

(assert (= (and b!4020768 (not c!694848)) b!4020769))

(assert (= (or b!4020771 b!4020769) bm!286672))

(assert (= (or b!4020773 bm!286672) bm!286674))

(assert (= (or b!4020774 bm!286674) bm!286671))

(assert (= (or b!4020774 b!4020771) bm!286673))

(declare-fun m!4611223 () Bool)

(assert (=> b!4020768 m!4611223))

(assert (=> bm!286671 m!4609279))

(declare-fun m!4611225 () Bool)

(assert (=> bm!286671 m!4611225))

(assert (=> bm!286673 m!4609279))

(declare-fun m!4611227 () Bool)

(assert (=> bm!286673 m!4611227))

(declare-fun m!4611229 () Bool)

(assert (=> d!1190589 m!4611229))

(assert (=> d!1190589 m!4610215))

(assert (=> b!4020117 d!1190589))

(assert (=> b!4020117 d!1190491))

(assert (=> b!4020117 d!1190431))

(assert (=> b!4019969 d!1190491))

(declare-fun d!1190625 () Bool)

(assert (=> d!1190625 (= (head!8527 prefix!494) (h!48450 prefix!494))))

(assert (=> b!4019969 d!1190625))

(assert (=> b!4020034 d!1190405))

(declare-fun b!4020783 () Bool)

(declare-fun res!1636003 () Bool)

(declare-fun e!2494185 () Bool)

(assert (=> b!4020783 (=> (not res!1636003) (not e!2494185))))

(assert (=> b!4020783 (= res!1636003 (= (head!8527 (tail!6259 lt!1427191)) (head!8527 (tail!6259 lt!1427217))))))

(declare-fun b!4020785 () Bool)

(declare-fun e!2494186 () Bool)

(assert (=> b!4020785 (= e!2494186 (>= (size!32171 (tail!6259 lt!1427217)) (size!32171 (tail!6259 lt!1427191))))))

(declare-fun d!1190627 () Bool)

(assert (=> d!1190627 e!2494186))

(declare-fun res!1636002 () Bool)

(assert (=> d!1190627 (=> res!1636002 e!2494186)))

(declare-fun lt!1427885 () Bool)

(assert (=> d!1190627 (= res!1636002 (not lt!1427885))))

(declare-fun e!2494187 () Bool)

(assert (=> d!1190627 (= lt!1427885 e!2494187)))

(declare-fun res!1636004 () Bool)

(assert (=> d!1190627 (=> res!1636004 e!2494187)))

(assert (=> d!1190627 (= res!1636004 ((_ is Nil!43030) (tail!6259 lt!1427191)))))

(assert (=> d!1190627 (= (isPrefix!3947 (tail!6259 lt!1427191) (tail!6259 lt!1427217)) lt!1427885)))

(declare-fun b!4020782 () Bool)

(assert (=> b!4020782 (= e!2494187 e!2494185)))

(declare-fun res!1636005 () Bool)

(assert (=> b!4020782 (=> (not res!1636005) (not e!2494185))))

(assert (=> b!4020782 (= res!1636005 (not ((_ is Nil!43030) (tail!6259 lt!1427217))))))

(declare-fun b!4020784 () Bool)

(assert (=> b!4020784 (= e!2494185 (isPrefix!3947 (tail!6259 (tail!6259 lt!1427191)) (tail!6259 (tail!6259 lt!1427217))))))

(assert (= (and d!1190627 (not res!1636004)) b!4020782))

(assert (= (and b!4020782 res!1636005) b!4020783))

(assert (= (and b!4020783 res!1636003) b!4020784))

(assert (= (and d!1190627 (not res!1636002)) b!4020785))

(assert (=> b!4020783 m!4609285))

(assert (=> b!4020783 m!4611159))

(assert (=> b!4020783 m!4609519))

(declare-fun m!4611241 () Bool)

(assert (=> b!4020783 m!4611241))

(assert (=> b!4020785 m!4609519))

(declare-fun m!4611243 () Bool)

(assert (=> b!4020785 m!4611243))

(assert (=> b!4020785 m!4609285))

(declare-fun m!4611245 () Bool)

(assert (=> b!4020785 m!4611245))

(assert (=> b!4020784 m!4609285))

(assert (=> b!4020784 m!4611161))

(assert (=> b!4020784 m!4609519))

(declare-fun m!4611247 () Bool)

(assert (=> b!4020784 m!4611247))

(assert (=> b!4020784 m!4611161))

(assert (=> b!4020784 m!4611247))

(declare-fun m!4611249 () Bool)

(assert (=> b!4020784 m!4611249))

(assert (=> b!4020061 d!1190627))

(assert (=> b!4020061 d!1190431))

(declare-fun d!1190635 () Bool)

(assert (=> d!1190635 (= (tail!6259 lt!1427217) (t!333487 lt!1427217))))

(assert (=> b!4020061 d!1190635))

(assert (=> b!4020014 d!1190403))

(declare-fun b!4020793 () Bool)

(declare-fun res!1636007 () Bool)

(declare-fun e!2494191 () Bool)

(assert (=> b!4020793 (=> (not res!1636007) (not e!2494191))))

(assert (=> b!4020793 (= res!1636007 (= (head!8527 (tail!6259 prefix!494)) (head!8527 (tail!6259 lt!1427217))))))

(declare-fun b!4020795 () Bool)

(declare-fun e!2494192 () Bool)

(assert (=> b!4020795 (= e!2494192 (>= (size!32171 (tail!6259 lt!1427217)) (size!32171 (tail!6259 prefix!494))))))

(declare-fun d!1190639 () Bool)

(assert (=> d!1190639 e!2494192))

(declare-fun res!1636006 () Bool)

(assert (=> d!1190639 (=> res!1636006 e!2494192)))

(declare-fun lt!1427889 () Bool)

(assert (=> d!1190639 (= res!1636006 (not lt!1427889))))

(declare-fun e!2494193 () Bool)

(assert (=> d!1190639 (= lt!1427889 e!2494193)))

(declare-fun res!1636008 () Bool)

(assert (=> d!1190639 (=> res!1636008 e!2494193)))

(assert (=> d!1190639 (= res!1636008 ((_ is Nil!43030) (tail!6259 prefix!494)))))

(assert (=> d!1190639 (= (isPrefix!3947 (tail!6259 prefix!494) (tail!6259 lt!1427217)) lt!1427889)))

(declare-fun b!4020792 () Bool)

(assert (=> b!4020792 (= e!2494193 e!2494191)))

(declare-fun res!1636009 () Bool)

(assert (=> b!4020792 (=> (not res!1636009) (not e!2494191))))

(assert (=> b!4020792 (= res!1636009 (not ((_ is Nil!43030) (tail!6259 lt!1427217))))))

(declare-fun b!4020794 () Bool)

(assert (=> b!4020794 (= e!2494191 (isPrefix!3947 (tail!6259 (tail!6259 prefix!494)) (tail!6259 (tail!6259 lt!1427217))))))

(assert (= (and d!1190639 (not res!1636008)) b!4020792))

(assert (= (and b!4020792 res!1636009) b!4020793))

(assert (= (and b!4020793 res!1636007) b!4020794))

(assert (= (and d!1190639 (not res!1636006)) b!4020795))

(assert (=> b!4020793 m!4609935))

(declare-fun m!4611259 () Bool)

(assert (=> b!4020793 m!4611259))

(assert (=> b!4020793 m!4609519))

(assert (=> b!4020793 m!4611241))

(assert (=> b!4020795 m!4609519))

(assert (=> b!4020795 m!4611243))

(assert (=> b!4020795 m!4609935))

(declare-fun m!4611261 () Bool)

(assert (=> b!4020795 m!4611261))

(assert (=> b!4020794 m!4609935))

(declare-fun m!4611263 () Bool)

(assert (=> b!4020794 m!4611263))

(assert (=> b!4020794 m!4609519))

(assert (=> b!4020794 m!4611247))

(assert (=> b!4020794 m!4611263))

(assert (=> b!4020794 m!4611247))

(declare-fun m!4611265 () Bool)

(assert (=> b!4020794 m!4611265))

(assert (=> b!4020057 d!1190639))

(declare-fun d!1190647 () Bool)

(assert (=> d!1190647 (= (tail!6259 prefix!494) (t!333487 prefix!494))))

(assert (=> b!4020057 d!1190647))

(assert (=> b!4020057 d!1190635))

(declare-fun d!1190649 () Bool)

(declare-fun lt!1427891 () Int)

(assert (=> d!1190649 (>= lt!1427891 0)))

(declare-fun e!2494195 () Int)

(assert (=> d!1190649 (= lt!1427891 e!2494195)))

(declare-fun c!694857 () Bool)

(assert (=> d!1190649 (= c!694857 ((_ is Nil!43030) lt!1427312))))

(assert (=> d!1190649 (= (size!32171 lt!1427312) lt!1427891)))

(declare-fun b!4020798 () Bool)

(assert (=> b!4020798 (= e!2494195 0)))

(declare-fun b!4020799 () Bool)

(assert (=> b!4020799 (= e!2494195 (+ 1 (size!32171 (t!333487 lt!1427312))))))

(assert (= (and d!1190649 c!694857) b!4020798))

(assert (= (and d!1190649 (not c!694857)) b!4020799))

(declare-fun m!4611267 () Bool)

(assert (=> b!4020799 m!4611267))

(assert (=> b!4019577 d!1190649))

(assert (=> b!4019577 d!1190161))

(declare-fun d!1190651 () Bool)

(declare-fun lt!1427892 () Int)

(assert (=> d!1190651 (>= lt!1427892 0)))

(declare-fun e!2494196 () Int)

(assert (=> d!1190651 (= lt!1427892 e!2494196)))

(declare-fun c!694858 () Bool)

(assert (=> d!1190651 (= c!694858 ((_ is Nil!43030) lt!1427185))))

(assert (=> d!1190651 (= (size!32171 lt!1427185) lt!1427892)))

(declare-fun b!4020800 () Bool)

(assert (=> b!4020800 (= e!2494196 0)))

(declare-fun b!4020801 () Bool)

(assert (=> b!4020801 (= e!2494196 (+ 1 (size!32171 (t!333487 lt!1427185))))))

(assert (= (and d!1190651 c!694858) b!4020800))

(assert (= (and d!1190651 (not c!694858)) b!4020801))

(declare-fun m!4611271 () Bool)

(assert (=> b!4020801 m!4611271))

(assert (=> b!4019577 d!1190651))

(assert (=> b!4020109 d!1190491))

(declare-fun d!1190653 () Bool)

(declare-fun lt!1427893 () Int)

(assert (=> d!1190653 (>= lt!1427893 0)))

(declare-fun e!2494198 () Int)

(assert (=> d!1190653 (= lt!1427893 e!2494198)))

(declare-fun c!694859 () Bool)

(assert (=> d!1190653 (= c!694859 ((_ is Nil!43030) lt!1427475))))

(assert (=> d!1190653 (= (size!32171 lt!1427475) lt!1427893)))

(declare-fun b!4020802 () Bool)

(assert (=> b!4020802 (= e!2494198 0)))

(declare-fun b!4020803 () Bool)

(assert (=> b!4020803 (= e!2494198 (+ 1 (size!32171 (t!333487 lt!1427475))))))

(assert (= (and d!1190653 c!694859) b!4020802))

(assert (= (and d!1190653 (not c!694859)) b!4020803))

(declare-fun m!4611273 () Bool)

(assert (=> b!4020803 m!4611273))

(assert (=> b!4019996 d!1190653))

(declare-fun d!1190655 () Bool)

(declare-fun lt!1427894 () Int)

(assert (=> d!1190655 (>= lt!1427894 0)))

(declare-fun e!2494199 () Int)

(assert (=> d!1190655 (= lt!1427894 e!2494199)))

(declare-fun c!694860 () Bool)

(assert (=> d!1190655 (= c!694860 ((_ is Nil!43030) lt!1427188))))

(assert (=> d!1190655 (= (size!32171 lt!1427188) lt!1427894)))

(declare-fun b!4020804 () Bool)

(assert (=> b!4020804 (= e!2494199 0)))

(declare-fun b!4020805 () Bool)

(assert (=> b!4020805 (= e!2494199 (+ 1 (size!32171 (t!333487 lt!1427188))))))

(assert (= (and d!1190655 c!694860) b!4020804))

(assert (= (and d!1190655 (not c!694860)) b!4020805))

(declare-fun m!4611275 () Bool)

(assert (=> b!4020805 m!4611275))

(assert (=> b!4019996 d!1190655))

(assert (=> b!4019996 d!1190139))

(declare-fun d!1190657 () Bool)

(declare-fun charsToBigInt!1 (List!43155) Int)

(assert (=> d!1190657 (= (inv!17 (value!216144 token!484)) (= (charsToBigInt!1 (text!50078 (value!216144 token!484))) (value!216136 (value!216144 token!484))))))

(declare-fun bs!589846 () Bool)

(assert (= bs!589846 d!1190657))

(declare-fun m!4611281 () Bool)

(assert (=> bs!589846 m!4611281))

(assert (=> b!4020085 d!1190657))

(declare-fun d!1190663 () Bool)

(assert (=> d!1190663 (= suffixResult!105 lt!1427187)))

(assert (=> d!1190663 true))

(declare-fun _$63!1059 () Unit!62145)

(assert (=> d!1190663 (= (choose!24306 lt!1427191 suffixResult!105 lt!1427191 lt!1427187 lt!1427217) _$63!1059)))

(assert (=> d!1189829 d!1190663))

(assert (=> d!1189829 d!1190111))

(assert (=> d!1190053 d!1190051))

(declare-fun d!1190667 () Bool)

(assert (=> d!1190667 (isPrefix!3947 lt!1427191 prefix!494)))

(assert (=> d!1190667 true))

(declare-fun _$69!250 () Unit!62145)

(assert (=> d!1190667 (= (choose!24317 prefix!494 lt!1427191 lt!1427217) _$69!250)))

(declare-fun bs!589848 () Bool)

(assert (= bs!589848 d!1190667))

(assert (=> bs!589848 m!4608987))

(assert (=> d!1190053 d!1190667))

(assert (=> d!1190053 d!1190109))

(assert (=> b!4019935 d!1190377))

(declare-fun bm!286675 () Bool)

(declare-fun call!286684 () Unit!62145)

(assert (=> bm!286675 (= call!286684 (lemmaIsPrefixSameLengthThenSameList!907 lt!1427222 Nil!43030 lt!1427222))))

(declare-fun b!4020816 () Bool)

(declare-fun e!2494207 () tuple2!42162)

(declare-fun lt!1427904 () tuple2!42162)

(assert (=> b!4020816 (= e!2494207 lt!1427904)))

(declare-fun b!4020817 () Bool)

(declare-fun e!2494208 () Bool)

(declare-fun e!2494209 () Bool)

(assert (=> b!4020817 (= e!2494208 e!2494209)))

(declare-fun res!1636014 () Bool)

(assert (=> b!4020817 (=> res!1636014 e!2494209)))

(declare-fun lt!1427924 () tuple2!42162)

(assert (=> b!4020817 (= res!1636014 (isEmpty!25696 (_1!24215 lt!1427924)))))

(declare-fun b!4020818 () Bool)

(declare-fun e!2494205 () tuple2!42162)

(assert (=> b!4020818 (= e!2494205 (tuple2!42163 Nil!43030 lt!1427222))))

(declare-fun b!4020819 () Bool)

(assert (=> b!4020819 (= e!2494207 (tuple2!42163 Nil!43030 lt!1427222))))

(declare-fun d!1190671 () Bool)

(assert (=> d!1190671 e!2494208))

(declare-fun res!1636015 () Bool)

(assert (=> d!1190671 (=> (not res!1636015) (not e!2494208))))

(assert (=> d!1190671 (= res!1636015 (= (++!11262 (_1!24215 lt!1427924) (_2!24215 lt!1427924)) lt!1427222))))

(declare-fun e!2494206 () tuple2!42162)

(assert (=> d!1190671 (= lt!1427924 e!2494206)))

(declare-fun c!694866 () Bool)

(assert (=> d!1190671 (= c!694866 (lostCause!1000 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(declare-fun lt!1427906 () Unit!62145)

(declare-fun Unit!62171 () Unit!62145)

(assert (=> d!1190671 (= lt!1427906 Unit!62171)))

(assert (=> d!1190671 (= (getSuffix!2372 lt!1427222 Nil!43030) lt!1427222)))

(declare-fun lt!1427923 () Unit!62145)

(declare-fun lt!1427907 () Unit!62145)

(assert (=> d!1190671 (= lt!1427923 lt!1427907)))

(declare-fun lt!1427909 () List!43154)

(assert (=> d!1190671 (= lt!1427222 lt!1427909)))

(assert (=> d!1190671 (= lt!1427907 (lemmaSamePrefixThenSameSuffix!2118 Nil!43030 lt!1427222 Nil!43030 lt!1427909 lt!1427222))))

(assert (=> d!1190671 (= lt!1427909 (getSuffix!2372 lt!1427222 Nil!43030))))

(declare-fun lt!1427920 () Unit!62145)

(declare-fun lt!1427915 () Unit!62145)

(assert (=> d!1190671 (= lt!1427920 lt!1427915)))

(assert (=> d!1190671 (isPrefix!3947 Nil!43030 (++!11262 Nil!43030 lt!1427222))))

(assert (=> d!1190671 (= lt!1427915 (lemmaConcatTwoListThenFirstIsPrefix!2788 Nil!43030 lt!1427222))))

(assert (=> d!1190671 (validRegex!5326 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))

(assert (=> d!1190671 (= (findLongestMatchInner!1367 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) Nil!43030 (size!32171 Nil!43030) lt!1427222 lt!1427222 (size!32171 lt!1427222)) lt!1427924)))

(declare-fun b!4020820 () Bool)

(declare-fun e!2494212 () tuple2!42162)

(assert (=> b!4020820 (= e!2494212 e!2494207)))

(declare-fun call!286686 () tuple2!42162)

(assert (=> b!4020820 (= lt!1427904 call!286686)))

(declare-fun c!694865 () Bool)

(assert (=> b!4020820 (= c!694865 (isEmpty!25696 (_1!24215 lt!1427904)))))

(declare-fun bm!286676 () Bool)

(declare-fun call!286681 () C!23716)

(assert (=> bm!286676 (= call!286681 (head!8527 lt!1427222))))

(declare-fun bm!286677 () Bool)

(declare-fun call!286680 () Regex!11765)

(assert (=> bm!286677 (= call!286680 (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) call!286681))))

(declare-fun b!4020821 () Bool)

(declare-fun e!2494210 () Unit!62145)

(declare-fun Unit!62172 () Unit!62145)

(assert (=> b!4020821 (= e!2494210 Unit!62172)))

(declare-fun lt!1427914 () Unit!62145)

(declare-fun call!286685 () Unit!62145)

(assert (=> b!4020821 (= lt!1427914 call!286685)))

(declare-fun call!286683 () Bool)

(assert (=> b!4020821 call!286683))

(declare-fun lt!1427902 () Unit!62145)

(assert (=> b!4020821 (= lt!1427902 lt!1427914)))

(declare-fun lt!1427922 () Unit!62145)

(assert (=> b!4020821 (= lt!1427922 call!286684)))

(assert (=> b!4020821 (= lt!1427222 Nil!43030)))

(declare-fun lt!1427911 () Unit!62145)

(assert (=> b!4020821 (= lt!1427911 lt!1427922)))

(assert (=> b!4020821 false))

(declare-fun b!4020822 () Bool)

(assert (=> b!4020822 (= e!2494205 (tuple2!42163 Nil!43030 Nil!43030))))

(declare-fun bm!286678 () Bool)

(declare-fun call!286682 () Bool)

(assert (=> bm!286678 (= call!286682 (nullable!4126 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(declare-fun b!4020823 () Bool)

(declare-fun c!694868 () Bool)

(assert (=> b!4020823 (= c!694868 call!286682)))

(declare-fun lt!1427913 () Unit!62145)

(declare-fun lt!1427898 () Unit!62145)

(assert (=> b!4020823 (= lt!1427913 lt!1427898)))

(declare-fun lt!1427901 () C!23716)

(declare-fun lt!1427918 () List!43154)

(assert (=> b!4020823 (= (++!11262 (++!11262 Nil!43030 (Cons!43030 lt!1427901 Nil!43030)) lt!1427918) lt!1427222)))

(assert (=> b!4020823 (= lt!1427898 (lemmaMoveElementToOtherListKeepsConcatEq!1244 Nil!43030 lt!1427901 lt!1427918 lt!1427222))))

(assert (=> b!4020823 (= lt!1427918 (tail!6259 lt!1427222))))

(assert (=> b!4020823 (= lt!1427901 (head!8527 lt!1427222))))

(declare-fun lt!1427919 () Unit!62145)

(declare-fun lt!1427908 () Unit!62145)

(assert (=> b!4020823 (= lt!1427919 lt!1427908)))

(assert (=> b!4020823 (isPrefix!3947 (++!11262 Nil!43030 (Cons!43030 (head!8527 (getSuffix!2372 lt!1427222 Nil!43030)) Nil!43030)) lt!1427222)))

(assert (=> b!4020823 (= lt!1427908 (lemmaAddHeadSuffixToPrefixStillPrefix!626 Nil!43030 lt!1427222))))

(declare-fun lt!1427917 () Unit!62145)

(declare-fun lt!1427899 () Unit!62145)

(assert (=> b!4020823 (= lt!1427917 lt!1427899)))

(assert (=> b!4020823 (= lt!1427899 (lemmaAddHeadSuffixToPrefixStillPrefix!626 Nil!43030 lt!1427222))))

(declare-fun lt!1427905 () List!43154)

(assert (=> b!4020823 (= lt!1427905 (++!11262 Nil!43030 (Cons!43030 (head!8527 lt!1427222) Nil!43030)))))

(declare-fun lt!1427916 () Unit!62145)

(assert (=> b!4020823 (= lt!1427916 e!2494210)))

(declare-fun c!694864 () Bool)

(assert (=> b!4020823 (= c!694864 (= (size!32171 Nil!43030) (size!32171 lt!1427222)))))

(declare-fun lt!1427921 () Unit!62145)

(declare-fun lt!1427900 () Unit!62145)

(assert (=> b!4020823 (= lt!1427921 lt!1427900)))

(assert (=> b!4020823 (<= (size!32171 Nil!43030) (size!32171 lt!1427222))))

(assert (=> b!4020823 (= lt!1427900 (lemmaIsPrefixThenSmallerEqSize!434 Nil!43030 lt!1427222))))

(declare-fun e!2494211 () tuple2!42162)

(assert (=> b!4020823 (= e!2494211 e!2494212)))

(declare-fun bm!286679 () Bool)

(assert (=> bm!286679 (= call!286683 (isPrefix!3947 lt!1427222 lt!1427222))))

(declare-fun b!4020824 () Bool)

(assert (=> b!4020824 (= e!2494206 e!2494211)))

(declare-fun c!694867 () Bool)

(assert (=> b!4020824 (= c!694867 (= (size!32171 Nil!43030) (size!32171 lt!1427222)))))

(declare-fun b!4020825 () Bool)

(assert (=> b!4020825 (= e!2494206 (tuple2!42163 Nil!43030 lt!1427222))))

(declare-fun bm!286680 () Bool)

(declare-fun call!286687 () List!43154)

(assert (=> bm!286680 (= call!286686 (findLongestMatchInner!1367 call!286680 lt!1427905 (+ (size!32171 Nil!43030) 1) call!286687 lt!1427222 (size!32171 lt!1427222)))))

(declare-fun b!4020828 () Bool)

(declare-fun Unit!62173 () Unit!62145)

(assert (=> b!4020828 (= e!2494210 Unit!62173)))

(declare-fun b!4020829 () Bool)

(declare-fun c!694869 () Bool)

(assert (=> b!4020829 (= c!694869 call!286682)))

(declare-fun lt!1427925 () Unit!62145)

(declare-fun lt!1427910 () Unit!62145)

(assert (=> b!4020829 (= lt!1427925 lt!1427910)))

(assert (=> b!4020829 (= lt!1427222 Nil!43030)))

(assert (=> b!4020829 (= lt!1427910 call!286684)))

(declare-fun lt!1427912 () Unit!62145)

(declare-fun lt!1427903 () Unit!62145)

(assert (=> b!4020829 (= lt!1427912 lt!1427903)))

(assert (=> b!4020829 call!286683))

(assert (=> b!4020829 (= lt!1427903 call!286685)))

(assert (=> b!4020829 (= e!2494211 e!2494205)))

(declare-fun b!4020830 () Bool)

(assert (=> b!4020830 (= e!2494212 call!286686)))

(declare-fun bm!286681 () Bool)

(assert (=> bm!286681 (= call!286685 (lemmaIsPrefixRefl!2523 lt!1427222 lt!1427222))))

(declare-fun bm!286682 () Bool)

(assert (=> bm!286682 (= call!286687 (tail!6259 lt!1427222))))

(declare-fun b!4020831 () Bool)

(assert (=> b!4020831 (= e!2494209 (>= (size!32171 (_1!24215 lt!1427924)) (size!32171 Nil!43030)))))

(assert (= (and d!1190671 c!694866) b!4020825))

(assert (= (and d!1190671 (not c!694866)) b!4020824))

(assert (= (and b!4020824 c!694867) b!4020829))

(assert (= (and b!4020824 (not c!694867)) b!4020823))

(assert (= (and b!4020829 c!694869) b!4020822))

(assert (= (and b!4020829 (not c!694869)) b!4020818))

(assert (= (and b!4020823 c!694864) b!4020821))

(assert (= (and b!4020823 (not c!694864)) b!4020828))

(assert (= (and b!4020823 c!694868) b!4020820))

(assert (= (and b!4020823 (not c!694868)) b!4020830))

(assert (= (and b!4020820 c!694865) b!4020819))

(assert (= (and b!4020820 (not c!694865)) b!4020816))

(assert (= (or b!4020820 b!4020830) bm!286676))

(assert (= (or b!4020820 b!4020830) bm!286682))

(assert (= (or b!4020820 b!4020830) bm!286677))

(assert (= (or b!4020820 b!4020830) bm!286680))

(assert (= (or b!4020829 b!4020821) bm!286679))

(assert (= (or b!4020829 b!4020823) bm!286678))

(assert (= (or b!4020829 b!4020821) bm!286675))

(assert (= (or b!4020829 b!4020821) bm!286681))

(assert (= (and d!1190671 res!1636015) b!4020817))

(assert (= (and b!4020817 (not res!1636014)) b!4020831))

(assert (=> bm!286679 m!4609237))

(assert (=> bm!286680 m!4609209))

(declare-fun m!4611307 () Bool)

(assert (=> bm!286680 m!4611307))

(declare-fun m!4611309 () Bool)

(assert (=> b!4020817 m!4611309))

(declare-fun m!4611311 () Bool)

(assert (=> bm!286675 m!4611311))

(declare-fun m!4611313 () Bool)

(assert (=> b!4020831 m!4611313))

(assert (=> b!4020831 m!4609879))

(assert (=> bm!286681 m!4609239))

(assert (=> b!4020823 m!4609879))

(assert (=> b!4020823 m!4609209))

(declare-fun m!4611315 () Bool)

(assert (=> b!4020823 m!4611315))

(assert (=> b!4020823 m!4610039))

(declare-fun m!4611317 () Bool)

(assert (=> b!4020823 m!4611317))

(declare-fun m!4611319 () Bool)

(assert (=> b!4020823 m!4611319))

(declare-fun m!4611321 () Bool)

(assert (=> b!4020823 m!4611321))

(assert (=> b!4020823 m!4611315))

(declare-fun m!4611323 () Bool)

(assert (=> b!4020823 m!4611323))

(declare-fun m!4611325 () Bool)

(assert (=> b!4020823 m!4611325))

(assert (=> b!4020823 m!4611325))

(declare-fun m!4611327 () Bool)

(assert (=> b!4020823 m!4611327))

(assert (=> b!4020823 m!4611319))

(declare-fun m!4611329 () Bool)

(assert (=> b!4020823 m!4611329))

(declare-fun m!4611331 () Bool)

(assert (=> b!4020823 m!4611331))

(assert (=> b!4020823 m!4610041))

(declare-fun m!4611333 () Bool)

(assert (=> b!4020823 m!4611333))

(assert (=> bm!286682 m!4610041))

(declare-fun m!4611335 () Bool)

(assert (=> b!4020820 m!4611335))

(assert (=> bm!286678 m!4609501))

(assert (=> bm!286676 m!4610039))

(declare-fun m!4611337 () Bool)

(assert (=> bm!286677 m!4611337))

(declare-fun m!4611339 () Bool)

(assert (=> d!1190671 m!4611339))

(assert (=> d!1190671 m!4609505))

(declare-fun m!4611341 () Bool)

(assert (=> d!1190671 m!4611341))

(declare-fun m!4611343 () Bool)

(assert (=> d!1190671 m!4611343))

(declare-fun m!4611345 () Bool)

(assert (=> d!1190671 m!4611345))

(declare-fun m!4611347 () Bool)

(assert (=> d!1190671 m!4611347))

(assert (=> d!1190671 m!4611319))

(assert (=> d!1190671 m!4611341))

(declare-fun m!4611349 () Bool)

(assert (=> d!1190671 m!4611349))

(assert (=> b!4019935 d!1190671))

(declare-fun d!1190679 () Bool)

(assert (=> d!1190679 (= (seqFromList!5085 (_1!24215 lt!1427444)) (fromListB!2324 (_1!24215 lt!1427444)))))

(declare-fun bs!589849 () Bool)

(assert (= bs!589849 d!1190679))

(declare-fun m!4611351 () Bool)

(assert (=> bs!589849 m!4611351))

(assert (=> b!4019935 d!1190679))

(declare-fun d!1190681 () Bool)

(declare-fun e!2494214 () Bool)

(assert (=> d!1190681 e!2494214))

(declare-fun res!1636016 () Bool)

(assert (=> d!1190681 (=> res!1636016 e!2494214)))

(assert (=> d!1190681 (= res!1636016 (isEmpty!25696 (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) Nil!43030 (size!32171 Nil!43030) lt!1427222 lt!1427222 (size!32171 lt!1427222)))))))

(declare-fun lt!1427927 () Unit!62145)

(assert (=> d!1190681 (= lt!1427927 (choose!24323 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) lt!1427222))))

(assert (=> d!1190681 (validRegex!5326 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))

(assert (=> d!1190681 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1340 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) lt!1427222) lt!1427927)))

(declare-fun b!4020832 () Bool)

(assert (=> b!4020832 (= e!2494214 (matchR!5726 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) Nil!43030 (size!32171 Nil!43030) lt!1427222 lt!1427222 (size!32171 lt!1427222)))))))

(assert (= (and d!1190681 (not res!1636016)) b!4020832))

(assert (=> d!1190681 m!4609209))

(assert (=> d!1190681 m!4609505))

(assert (=> d!1190681 m!4609875))

(declare-fun m!4611353 () Bool)

(assert (=> d!1190681 m!4611353))

(assert (=> d!1190681 m!4609879))

(assert (=> d!1190681 m!4609209))

(assert (=> d!1190681 m!4609881))

(assert (=> d!1190681 m!4609879))

(assert (=> b!4020832 m!4609879))

(assert (=> b!4020832 m!4609209))

(assert (=> b!4020832 m!4609879))

(assert (=> b!4020832 m!4609209))

(assert (=> b!4020832 m!4609881))

(assert (=> b!4020832 m!4609887))

(assert (=> b!4019935 d!1190681))

(assert (=> b!4019935 d!1190347))

(declare-fun bs!589850 () Bool)

(declare-fun d!1190683 () Bool)

(assert (= bs!589850 (and d!1190683 d!1190269)))

(declare-fun lambda!127111 () Int)

(assert (=> bs!589850 (= (and (= (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (toChars!9227 (transformation!6860 (rule!9912 token!484)))) (= (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (toValue!9368 (transformation!6860 (rule!9912 token!484))))) (= lambda!127111 lambda!127093))))

(declare-fun bs!589851 () Bool)

(assert (= bs!589851 (and d!1190683 d!1190445)))

(assert (=> bs!589851 (= (and (= (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (toChars!9227 (transformation!6860 (h!48452 rules!2999)))) (= (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (toValue!9368 (transformation!6860 (h!48452 rules!2999))))) (= lambda!127111 lambda!127102))))

(declare-fun b!4020833 () Bool)

(declare-fun e!2494215 () Bool)

(assert (=> b!4020833 (= e!2494215 true)))

(assert (=> d!1190683 e!2494215))

(assert (= d!1190683 b!4020833))

(assert (=> b!4020833 (< (dynLambda!18241 order!22519 (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) (dynLambda!18242 order!22521 lambda!127111))))

(assert (=> b!4020833 (< (dynLambda!18243 order!22523 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) (dynLambda!18242 order!22521 lambda!127111))))

(assert (=> d!1190683 (= (list!15996 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (seqFromList!5085 (_1!24215 lt!1427444))))) (list!15996 (seqFromList!5085 (_1!24215 lt!1427444))))))

(declare-fun lt!1427928 () Unit!62145)

(assert (=> d!1190683 (= lt!1427928 (ForallOf!810 lambda!127111 (seqFromList!5085 (_1!24215 lt!1427444))))))

(assert (=> d!1190683 (= (lemmaSemiInverse!1887 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (seqFromList!5085 (_1!24215 lt!1427444))) lt!1427928)))

(declare-fun b_lambda!117327 () Bool)

(assert (=> (not b_lambda!117327) (not d!1190683)))

(declare-fun tb!241735 () Bool)

(declare-fun t!333644 () Bool)

(assert (=> (and b!4019334 (= (toChars!9227 (transformation!6860 (h!48452 rules!2999))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) t!333644) tb!241735))

(declare-fun e!2494216 () Bool)

(declare-fun tp!1222073 () Bool)

(declare-fun b!4020834 () Bool)

(assert (=> b!4020834 (= e!2494216 (and (inv!57476 (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (seqFromList!5085 (_1!24215 lt!1427444)))))) tp!1222073))))

(declare-fun result!292972 () Bool)

(assert (=> tb!241735 (= result!292972 (and (inv!57477 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (seqFromList!5085 (_1!24215 lt!1427444))))) e!2494216))))

(assert (= tb!241735 b!4020834))

(declare-fun m!4611355 () Bool)

(assert (=> b!4020834 m!4611355))

(declare-fun m!4611357 () Bool)

(assert (=> tb!241735 m!4611357))

(assert (=> d!1190683 t!333644))

(declare-fun b_and!308935 () Bool)

(assert (= b_and!308881 (and (=> t!333644 result!292972) b_and!308935)))

(declare-fun tb!241737 () Bool)

(declare-fun t!333646 () Bool)

(assert (=> (and b!4019363 (= (toChars!9227 (transformation!6860 (rule!9912 token!484))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) t!333646) tb!241737))

(declare-fun result!292974 () Bool)

(assert (= result!292974 result!292972))

(assert (=> d!1190683 t!333646))

(declare-fun b_and!308937 () Bool)

(assert (= b_and!308883 (and (=> t!333646 result!292974) b_and!308937)))

(declare-fun tb!241739 () Bool)

(declare-fun t!333648 () Bool)

(assert (=> (and b!4020174 (= (toChars!9227 (transformation!6860 (h!48452 (t!333489 rules!2999)))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) t!333648) tb!241739))

(declare-fun result!292976 () Bool)

(assert (= result!292976 result!292972))

(assert (=> d!1190683 t!333648))

(declare-fun b_and!308939 () Bool)

(assert (= b_and!308885 (and (=> t!333648 result!292976) b_and!308939)))

(declare-fun b_lambda!117329 () Bool)

(assert (=> (not b_lambda!117329) (not d!1190683)))

(declare-fun tb!241741 () Bool)

(declare-fun t!333650 () Bool)

(assert (=> (and b!4019334 (= (toValue!9368 (transformation!6860 (h!48452 rules!2999))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) t!333650) tb!241741))

(declare-fun result!292978 () Bool)

(assert (=> tb!241741 (= result!292978 (inv!21 (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (seqFromList!5085 (_1!24215 lt!1427444)))))))

(declare-fun m!4611359 () Bool)

(assert (=> tb!241741 m!4611359))

(assert (=> d!1190683 t!333650))

(declare-fun b_and!308941 () Bool)

(assert (= b_and!308911 (and (=> t!333650 result!292978) b_and!308941)))

(declare-fun t!333652 () Bool)

(declare-fun tb!241743 () Bool)

(assert (=> (and b!4019363 (= (toValue!9368 (transformation!6860 (rule!9912 token!484))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) t!333652) tb!241743))

(declare-fun result!292980 () Bool)

(assert (= result!292980 result!292978))

(assert (=> d!1190683 t!333652))

(declare-fun b_and!308943 () Bool)

(assert (= b_and!308913 (and (=> t!333652 result!292980) b_and!308943)))

(declare-fun t!333654 () Bool)

(declare-fun tb!241745 () Bool)

(assert (=> (and b!4020174 (= (toValue!9368 (transformation!6860 (h!48452 (t!333489 rules!2999)))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) t!333654) tb!241745))

(declare-fun result!292982 () Bool)

(assert (= result!292982 result!292978))

(assert (=> d!1190683 t!333654))

(declare-fun b_and!308945 () Bool)

(assert (= b_and!308915 (and (=> t!333654 result!292982) b_and!308945)))

(assert (=> d!1190683 m!4609869))

(declare-fun m!4611361 () Bool)

(assert (=> d!1190683 m!4611361))

(declare-fun m!4611363 () Bool)

(assert (=> d!1190683 m!4611363))

(declare-fun m!4611365 () Bool)

(assert (=> d!1190683 m!4611365))

(assert (=> d!1190683 m!4609869))

(declare-fun m!4611367 () Bool)

(assert (=> d!1190683 m!4611367))

(assert (=> d!1190683 m!4609869))

(declare-fun m!4611369 () Bool)

(assert (=> d!1190683 m!4611369))

(assert (=> d!1190683 m!4611361))

(assert (=> d!1190683 m!4611363))

(assert (=> b!4019935 d!1190683))

(declare-fun d!1190685 () Bool)

(declare-fun lt!1427929 () Int)

(assert (=> d!1190685 (= lt!1427929 (size!32171 (list!15996 (seqFromList!5085 (_1!24215 lt!1427444)))))))

(assert (=> d!1190685 (= lt!1427929 (size!32175 (c!694546 (seqFromList!5085 (_1!24215 lt!1427444)))))))

(assert (=> d!1190685 (= (size!32174 (seqFromList!5085 (_1!24215 lt!1427444))) lt!1427929)))

(declare-fun bs!589852 () Bool)

(assert (= bs!589852 d!1190685))

(assert (=> bs!589852 m!4609869))

(assert (=> bs!589852 m!4611367))

(assert (=> bs!589852 m!4611367))

(declare-fun m!4611371 () Bool)

(assert (=> bs!589852 m!4611371))

(declare-fun m!4611373 () Bool)

(assert (=> bs!589852 m!4611373))

(assert (=> b!4019935 d!1190685))

(declare-fun d!1190687 () Bool)

(assert (=> d!1190687 (= (apply!10057 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (seqFromList!5085 (_1!24215 lt!1427444))) (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (seqFromList!5085 (_1!24215 lt!1427444))))))

(declare-fun b_lambda!117331 () Bool)

(assert (=> (not b_lambda!117331) (not d!1190687)))

(assert (=> d!1190687 t!333650))

(declare-fun b_and!308947 () Bool)

(assert (= b_and!308941 (and (=> t!333650 result!292978) b_and!308947)))

(assert (=> d!1190687 t!333652))

(declare-fun b_and!308949 () Bool)

(assert (= b_and!308943 (and (=> t!333652 result!292980) b_and!308949)))

(assert (=> d!1190687 t!333654))

(declare-fun b_and!308951 () Bool)

(assert (= b_and!308945 (and (=> t!333654 result!292982) b_and!308951)))

(assert (=> d!1190687 m!4609869))

(assert (=> d!1190687 m!4611361))

(assert (=> b!4019935 d!1190687))

(declare-fun d!1190689 () Bool)

(assert (=> d!1190689 (= (isEmpty!25696 (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) Nil!43030 (size!32171 Nil!43030) lt!1427222 lt!1427222 (size!32171 lt!1427222)))) ((_ is Nil!43030) (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) Nil!43030 (size!32171 Nil!43030) lt!1427222 lt!1427222 (size!32171 lt!1427222)))))))

(assert (=> b!4019935 d!1190689))

(declare-fun d!1190691 () Bool)

(declare-fun lt!1427930 () Bool)

(assert (=> d!1190691 (= lt!1427930 (select (content!6528 rules!2999) (rule!9912 (_1!24213 (get!14131 lt!1427286)))))))

(declare-fun e!2494218 () Bool)

(assert (=> d!1190691 (= lt!1427930 e!2494218)))

(declare-fun res!1636018 () Bool)

(assert (=> d!1190691 (=> (not res!1636018) (not e!2494218))))

(assert (=> d!1190691 (= res!1636018 ((_ is Cons!43032) rules!2999))))

(assert (=> d!1190691 (= (contains!8548 rules!2999 (rule!9912 (_1!24213 (get!14131 lt!1427286)))) lt!1427930)))

(declare-fun b!4020835 () Bool)

(declare-fun e!2494219 () Bool)

(assert (=> b!4020835 (= e!2494218 e!2494219)))

(declare-fun res!1636017 () Bool)

(assert (=> b!4020835 (=> res!1636017 e!2494219)))

(assert (=> b!4020835 (= res!1636017 (= (h!48452 rules!2999) (rule!9912 (_1!24213 (get!14131 lt!1427286)))))))

(declare-fun b!4020836 () Bool)

(assert (=> b!4020836 (= e!2494219 (contains!8548 (t!333489 rules!2999) (rule!9912 (_1!24213 (get!14131 lt!1427286)))))))

(assert (= (and d!1190691 res!1636018) b!4020835))

(assert (= (and b!4020835 (not res!1636017)) b!4020836))

(assert (=> d!1190691 m!4610691))

(declare-fun m!4611375 () Bool)

(assert (=> d!1190691 m!4611375))

(declare-fun m!4611377 () Bool)

(assert (=> b!4020836 m!4611377))

(assert (=> b!4019526 d!1190691))

(assert (=> b!4019526 d!1190375))

(assert (=> b!4020062 d!1190265))

(assert (=> b!4020062 d!1190159))

(declare-fun b!4020838 () Bool)

(declare-fun res!1636020 () Bool)

(declare-fun e!2494220 () Bool)

(assert (=> b!4020838 (=> (not res!1636020) (not e!2494220))))

(assert (=> b!4020838 (= res!1636020 (= (head!8527 (tail!6259 lt!1427191)) (head!8527 (tail!6259 prefix!494))))))

(declare-fun b!4020840 () Bool)

(declare-fun e!2494221 () Bool)

(assert (=> b!4020840 (= e!2494221 (>= (size!32171 (tail!6259 prefix!494)) (size!32171 (tail!6259 lt!1427191))))))

(declare-fun d!1190693 () Bool)

(assert (=> d!1190693 e!2494221))

(declare-fun res!1636019 () Bool)

(assert (=> d!1190693 (=> res!1636019 e!2494221)))

(declare-fun lt!1427931 () Bool)

(assert (=> d!1190693 (= res!1636019 (not lt!1427931))))

(declare-fun e!2494222 () Bool)

(assert (=> d!1190693 (= lt!1427931 e!2494222)))

(declare-fun res!1636021 () Bool)

(assert (=> d!1190693 (=> res!1636021 e!2494222)))

(assert (=> d!1190693 (= res!1636021 ((_ is Nil!43030) (tail!6259 lt!1427191)))))

(assert (=> d!1190693 (= (isPrefix!3947 (tail!6259 lt!1427191) (tail!6259 prefix!494)) lt!1427931)))

(declare-fun b!4020837 () Bool)

(assert (=> b!4020837 (= e!2494222 e!2494220)))

(declare-fun res!1636022 () Bool)

(assert (=> b!4020837 (=> (not res!1636022) (not e!2494220))))

(assert (=> b!4020837 (= res!1636022 (not ((_ is Nil!43030) (tail!6259 prefix!494))))))

(declare-fun b!4020839 () Bool)

(assert (=> b!4020839 (= e!2494220 (isPrefix!3947 (tail!6259 (tail!6259 lt!1427191)) (tail!6259 (tail!6259 prefix!494))))))

(assert (= (and d!1190693 (not res!1636021)) b!4020837))

(assert (= (and b!4020837 res!1636022) b!4020838))

(assert (= (and b!4020838 res!1636020) b!4020839))

(assert (= (and d!1190693 (not res!1636019)) b!4020840))

(assert (=> b!4020838 m!4609285))

(assert (=> b!4020838 m!4611159))

(assert (=> b!4020838 m!4609935))

(assert (=> b!4020838 m!4611259))

(assert (=> b!4020840 m!4609935))

(assert (=> b!4020840 m!4611261))

(assert (=> b!4020840 m!4609285))

(assert (=> b!4020840 m!4611245))

(assert (=> b!4020839 m!4609285))

(assert (=> b!4020839 m!4611161))

(assert (=> b!4020839 m!4609935))

(assert (=> b!4020839 m!4611263))

(assert (=> b!4020839 m!4611161))

(assert (=> b!4020839 m!4611263))

(declare-fun m!4611379 () Bool)

(assert (=> b!4020839 m!4611379))

(assert (=> b!4019970 d!1190693))

(assert (=> b!4019970 d!1190431))

(assert (=> b!4019970 d!1190647))

(declare-fun d!1190695 () Bool)

(declare-fun lt!1427932 () Bool)

(assert (=> d!1190695 (= lt!1427932 (select (content!6528 rules!2999) (rule!9912 (_1!24213 (get!14131 lt!1427490)))))))

(declare-fun e!2494223 () Bool)

(assert (=> d!1190695 (= lt!1427932 e!2494223)))

(declare-fun res!1636024 () Bool)

(assert (=> d!1190695 (=> (not res!1636024) (not e!2494223))))

(assert (=> d!1190695 (= res!1636024 ((_ is Cons!43032) rules!2999))))

(assert (=> d!1190695 (= (contains!8548 rules!2999 (rule!9912 (_1!24213 (get!14131 lt!1427490)))) lt!1427932)))

(declare-fun b!4020841 () Bool)

(declare-fun e!2494224 () Bool)

(assert (=> b!4020841 (= e!2494223 e!2494224)))

(declare-fun res!1636023 () Bool)

(assert (=> b!4020841 (=> res!1636023 e!2494224)))

(assert (=> b!4020841 (= res!1636023 (= (h!48452 rules!2999) (rule!9912 (_1!24213 (get!14131 lt!1427490)))))))

(declare-fun b!4020842 () Bool)

(assert (=> b!4020842 (= e!2494224 (contains!8548 (t!333489 rules!2999) (rule!9912 (_1!24213 (get!14131 lt!1427490)))))))

(assert (= (and d!1190695 res!1636024) b!4020841))

(assert (= (and b!4020841 (not res!1636023)) b!4020842))

(assert (=> d!1190695 m!4610691))

(declare-fun m!4611381 () Bool)

(assert (=> d!1190695 m!4611381))

(declare-fun m!4611383 () Bool)

(assert (=> b!4020842 m!4611383))

(assert (=> b!4020048 d!1190695))

(assert (=> b!4020048 d!1190363))

(declare-fun d!1190697 () Bool)

(declare-fun lt!1427933 () Int)

(assert (=> d!1190697 (>= lt!1427933 0)))

(declare-fun e!2494225 () Int)

(assert (=> d!1190697 (= lt!1427933 e!2494225)))

(declare-fun c!694871 () Bool)

(assert (=> d!1190697 (= c!694871 ((_ is Nil!43030) lt!1427176))))

(assert (=> d!1190697 (= (size!32171 lt!1427176) lt!1427933)))

(declare-fun b!4020843 () Bool)

(assert (=> b!4020843 (= e!2494225 0)))

(declare-fun b!4020844 () Bool)

(assert (=> b!4020844 (= e!2494225 (+ 1 (size!32171 (t!333487 lt!1427176))))))

(assert (= (and d!1190697 c!694871) b!4020843))

(assert (= (and d!1190697 (not c!694871)) b!4020844))

(declare-fun m!4611385 () Bool)

(assert (=> b!4020844 m!4611385))

(assert (=> b!4019553 d!1190697))

(assert (=> b!4019553 d!1190159))

(declare-fun d!1190699 () Bool)

(assert (=> d!1190699 (= (_2!24213 (v!39647 lt!1427206)) newSuffixResult!27)))

(assert (=> d!1190699 true))

(declare-fun _$63!1060 () Unit!62145)

(assert (=> d!1190699 (= (choose!24306 lt!1427181 (_2!24213 (v!39647 lt!1427206)) lt!1427191 newSuffixResult!27 lt!1427222) _$63!1060)))

(assert (=> d!1190171 d!1190699))

(assert (=> d!1190171 d!1190089))

(declare-fun d!1190701 () Bool)

(declare-fun lt!1427934 () Int)

(assert (=> d!1190701 (>= lt!1427934 0)))

(declare-fun e!2494226 () Int)

(assert (=> d!1190701 (= lt!1427934 e!2494226)))

(declare-fun c!694872 () Bool)

(assert (=> d!1190701 (= c!694872 ((_ is Nil!43030) (t!333487 lt!1427181)))))

(assert (=> d!1190701 (= (size!32171 (t!333487 lt!1427181)) lt!1427934)))

(declare-fun b!4020845 () Bool)

(assert (=> b!4020845 (= e!2494226 0)))

(declare-fun b!4020846 () Bool)

(assert (=> b!4020846 (= e!2494226 (+ 1 (size!32171 (t!333487 (t!333487 lt!1427181)))))))

(assert (= (and d!1190701 c!694872) b!4020845))

(assert (= (and d!1190701 (not c!694872)) b!4020846))

(declare-fun m!4611387 () Bool)

(assert (=> b!4020846 m!4611387))

(assert (=> b!4019764 d!1190701))

(declare-fun d!1190705 () Bool)

(declare-fun lt!1427935 () List!43154)

(assert (=> d!1190705 (= (++!11262 (t!333487 newSuffix!27) lt!1427935) (tail!6259 suffix!1299))))

(declare-fun e!2494227 () List!43154)

(assert (=> d!1190705 (= lt!1427935 e!2494227)))

(declare-fun c!694873 () Bool)

(assert (=> d!1190705 (= c!694873 ((_ is Cons!43030) (t!333487 newSuffix!27)))))

(assert (=> d!1190705 (>= (size!32171 (tail!6259 suffix!1299)) (size!32171 (t!333487 newSuffix!27)))))

(assert (=> d!1190705 (= (getSuffix!2372 (tail!6259 suffix!1299) (t!333487 newSuffix!27)) lt!1427935)))

(declare-fun b!4020847 () Bool)

(assert (=> b!4020847 (= e!2494227 (getSuffix!2372 (tail!6259 (tail!6259 suffix!1299)) (t!333487 (t!333487 newSuffix!27))))))

(declare-fun b!4020848 () Bool)

(assert (=> b!4020848 (= e!2494227 (tail!6259 suffix!1299))))

(assert (= (and d!1190705 c!694873) b!4020847))

(assert (= (and d!1190705 (not c!694873)) b!4020848))

(declare-fun m!4611389 () Bool)

(assert (=> d!1190705 m!4611389))

(assert (=> d!1190705 m!4610053))

(assert (=> d!1190705 m!4610849))

(assert (=> d!1190705 m!4610211))

(assert (=> b!4020847 m!4610053))

(assert (=> b!4020847 m!4610855))

(assert (=> b!4020847 m!4610855))

(declare-fun m!4611391 () Bool)

(assert (=> b!4020847 m!4611391))

(assert (=> b!4020154 d!1190705))

(assert (=> b!4020154 d!1190477))

(declare-fun b!4020854 () Bool)

(declare-fun res!1636030 () Bool)

(declare-fun e!2494231 () Bool)

(assert (=> b!4020854 (=> (not res!1636030) (not e!2494231))))

(assert (=> b!4020854 (= res!1636030 (= (head!8527 (tail!6259 lt!1427181)) (head!8527 (tail!6259 lt!1427222))))))

(declare-fun b!4020856 () Bool)

(declare-fun e!2494232 () Bool)

(assert (=> b!4020856 (= e!2494232 (>= (size!32171 (tail!6259 lt!1427222)) (size!32171 (tail!6259 lt!1427181))))))

(declare-fun d!1190707 () Bool)

(assert (=> d!1190707 e!2494232))

(declare-fun res!1636029 () Bool)

(assert (=> d!1190707 (=> res!1636029 e!2494232)))

(declare-fun lt!1427937 () Bool)

(assert (=> d!1190707 (= res!1636029 (not lt!1427937))))

(declare-fun e!2494233 () Bool)

(assert (=> d!1190707 (= lt!1427937 e!2494233)))

(declare-fun res!1636031 () Bool)

(assert (=> d!1190707 (=> res!1636031 e!2494233)))

(assert (=> d!1190707 (= res!1636031 ((_ is Nil!43030) (tail!6259 lt!1427181)))))

(assert (=> d!1190707 (= (isPrefix!3947 (tail!6259 lt!1427181) (tail!6259 lt!1427222)) lt!1427937)))

(declare-fun b!4020853 () Bool)

(assert (=> b!4020853 (= e!2494233 e!2494231)))

(declare-fun res!1636032 () Bool)

(assert (=> b!4020853 (=> (not res!1636032) (not e!2494231))))

(assert (=> b!4020853 (= res!1636032 (not ((_ is Nil!43030) (tail!6259 lt!1427222))))))

(declare-fun b!4020855 () Bool)

(assert (=> b!4020855 (= e!2494231 (isPrefix!3947 (tail!6259 (tail!6259 lt!1427181)) (tail!6259 (tail!6259 lt!1427222))))))

(assert (= (and d!1190707 (not res!1636031)) b!4020853))

(assert (= (and b!4020853 res!1636032) b!4020854))

(assert (= (and b!4020854 res!1636030) b!4020855))

(assert (= (and d!1190707 (not res!1636029)) b!4020856))

(assert (=> b!4020854 m!4609517))

(declare-fun m!4611401 () Bool)

(assert (=> b!4020854 m!4611401))

(assert (=> b!4020854 m!4610041))

(declare-fun m!4611403 () Bool)

(assert (=> b!4020854 m!4611403))

(assert (=> b!4020856 m!4610041))

(assert (=> b!4020856 m!4610925))

(assert (=> b!4020856 m!4609517))

(declare-fun m!4611405 () Bool)

(assert (=> b!4020856 m!4611405))

(assert (=> b!4020855 m!4609517))

(declare-fun m!4611407 () Bool)

(assert (=> b!4020855 m!4611407))

(assert (=> b!4020855 m!4610041))

(assert (=> b!4020855 m!4610927))

(assert (=> b!4020855 m!4611407))

(assert (=> b!4020855 m!4610927))

(declare-fun m!4611409 () Bool)

(assert (=> b!4020855 m!4611409))

(assert (=> b!4020025 d!1190707))

(assert (=> b!4020025 d!1190489))

(assert (=> b!4020025 d!1190503))

(declare-fun b!4020859 () Bool)

(declare-fun res!1636034 () Bool)

(declare-fun e!2494235 () Bool)

(assert (=> b!4020859 (=> (not res!1636034) (not e!2494235))))

(declare-fun lt!1427938 () List!43154)

(assert (=> b!4020859 (= res!1636034 (= (size!32171 lt!1427938) (+ (size!32171 (t!333487 lt!1427181)) (size!32171 lt!1427214))))))

(declare-fun b!4020857 () Bool)

(declare-fun e!2494234 () List!43154)

(assert (=> b!4020857 (= e!2494234 lt!1427214)))

(declare-fun d!1190713 () Bool)

(assert (=> d!1190713 e!2494235))

(declare-fun res!1636033 () Bool)

(assert (=> d!1190713 (=> (not res!1636033) (not e!2494235))))

(assert (=> d!1190713 (= res!1636033 (= (content!6526 lt!1427938) ((_ map or) (content!6526 (t!333487 lt!1427181)) (content!6526 lt!1427214))))))

(assert (=> d!1190713 (= lt!1427938 e!2494234)))

(declare-fun c!694874 () Bool)

(assert (=> d!1190713 (= c!694874 ((_ is Nil!43030) (t!333487 lt!1427181)))))

(assert (=> d!1190713 (= (++!11262 (t!333487 lt!1427181) lt!1427214) lt!1427938)))

(declare-fun b!4020860 () Bool)

(assert (=> b!4020860 (= e!2494235 (or (not (= lt!1427214 Nil!43030)) (= lt!1427938 (t!333487 lt!1427181))))))

(declare-fun b!4020858 () Bool)

(assert (=> b!4020858 (= e!2494234 (Cons!43030 (h!48450 (t!333487 lt!1427181)) (++!11262 (t!333487 (t!333487 lt!1427181)) lt!1427214)))))

(assert (= (and d!1190713 c!694874) b!4020857))

(assert (= (and d!1190713 (not c!694874)) b!4020858))

(assert (= (and d!1190713 res!1636033) b!4020859))

(assert (= (and b!4020859 res!1636034) b!4020860))

(declare-fun m!4611411 () Bool)

(assert (=> b!4020859 m!4611411))

(assert (=> b!4020859 m!4609659))

(assert (=> b!4020859 m!4610129))

(declare-fun m!4611413 () Bool)

(assert (=> d!1190713 m!4611413))

(assert (=> d!1190713 m!4610903))

(assert (=> d!1190713 m!4610133))

(declare-fun m!4611415 () Bool)

(assert (=> b!4020858 m!4611415))

(assert (=> b!4020068 d!1190713))

(declare-fun d!1190715 () Bool)

(assert (=> d!1190715 (= (isEmpty!25695 lt!1427490) (not ((_ is Some!9273) lt!1427490)))))

(assert (=> d!1190105 d!1190715))

(assert (=> d!1190105 d!1190059))

(assert (=> d!1190105 d!1190061))

(assert (=> d!1190105 d!1190371))

(assert (=> d!1190041 d!1189931))

(assert (=> d!1190041 d!1190081))

(assert (=> d!1190041 d!1189967))

(assert (=> d!1190041 d!1189971))

(assert (=> d!1190041 d!1189937))

(declare-fun d!1190719 () Bool)

(assert (=> d!1190719 (= (maxPrefixOneRule!2767 thiss!21717 (rule!9912 (_1!24213 (v!39647 lt!1427206))) lt!1427222) (Some!9273 (tuple2!42159 (Token!12859 (apply!10057 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (seqFromList!5085 lt!1427181)) (rule!9912 (_1!24213 (v!39647 lt!1427206))) (size!32171 lt!1427181) lt!1427181) (_2!24213 (v!39647 lt!1427206)))))))

(assert (=> d!1190719 true))

(declare-fun _$59!663 () Unit!62145)

(assert (=> d!1190719 (= (choose!24315 thiss!21717 rules!2999 lt!1427181 lt!1427222 (_2!24213 (v!39647 lt!1427206)) (rule!9912 (_1!24213 (v!39647 lt!1427206)))) _$59!663)))

(declare-fun bs!589861 () Bool)

(assert (= bs!589861 d!1190719))

(assert (=> bs!589861 m!4609009))

(assert (=> bs!589861 m!4609021))

(assert (=> bs!589861 m!4609021))

(assert (=> bs!589861 m!4609023))

(assert (=> bs!589861 m!4609027))

(assert (=> d!1190041 d!1190719))

(assert (=> b!4020122 d!1190377))

(assert (=> b!4020122 d!1190159))

(declare-fun bs!589862 () Bool)

(declare-fun d!1190757 () Bool)

(assert (= bs!589862 (and d!1190757 d!1190269)))

(declare-fun lambda!127114 () Int)

(assert (=> bs!589862 (= lambda!127114 lambda!127093)))

(declare-fun bs!589863 () Bool)

(assert (= bs!589863 (and d!1190757 d!1190445)))

(assert (=> bs!589863 (= (and (= (toChars!9227 (transformation!6860 (rule!9912 token!484))) (toChars!9227 (transformation!6860 (h!48452 rules!2999)))) (= (toValue!9368 (transformation!6860 (rule!9912 token!484))) (toValue!9368 (transformation!6860 (h!48452 rules!2999))))) (= lambda!127114 lambda!127102))))

(declare-fun bs!589864 () Bool)

(assert (= bs!589864 (and d!1190757 d!1190683)))

(assert (=> bs!589864 (= (and (= (toChars!9227 (transformation!6860 (rule!9912 token!484))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) (= (toValue!9368 (transformation!6860 (rule!9912 token!484))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))) (= lambda!127114 lambda!127111))))

(assert (=> d!1190757 true))

(assert (=> d!1190757 (< (dynLambda!18243 order!22523 (toChars!9227 (transformation!6860 (rule!9912 token!484)))) (dynLambda!18242 order!22521 lambda!127114))))

(assert (=> d!1190757 true))

(assert (=> d!1190757 (< (dynLambda!18241 order!22519 (toValue!9368 (transformation!6860 (rule!9912 token!484)))) (dynLambda!18242 order!22521 lambda!127114))))

(assert (=> d!1190757 (= (semiInverseModEq!2933 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (toValue!9368 (transformation!6860 (rule!9912 token!484)))) (Forall!1474 lambda!127114))))

(declare-fun bs!589865 () Bool)

(assert (= bs!589865 d!1190757))

(declare-fun m!4611539 () Bool)

(assert (=> bs!589865 m!4611539))

(assert (=> d!1190153 d!1190757))

(declare-fun d!1190761 () Bool)

(assert (=> d!1190761 (= (maxPrefixOneRule!2767 thiss!21717 (rule!9912 token!484) lt!1427217) (Some!9273 (tuple2!42159 (Token!12859 (apply!10057 (transformation!6860 (rule!9912 token!484)) (seqFromList!5085 lt!1427191)) (rule!9912 token!484) (size!32171 lt!1427191) lt!1427191) suffixResult!105)))))

(assert (=> d!1190761 true))

(declare-fun _$59!664 () Unit!62145)

(assert (=> d!1190761 (= (choose!24315 thiss!21717 rules!2999 lt!1427191 lt!1427217 suffixResult!105 (rule!9912 token!484)) _$59!664)))

(declare-fun bs!589866 () Bool)

(assert (= bs!589866 d!1190761))

(assert (=> bs!589866 m!4609065))

(assert (=> bs!589866 m!4609061))

(assert (=> bs!589866 m!4609061))

(assert (=> bs!589866 m!4609067))

(assert (=> bs!589866 m!4609075))

(assert (=> d!1190127 d!1190761))

(assert (=> d!1190127 d!1190081))

(assert (=> d!1190127 d!1190131))

(assert (=> d!1190127 d!1190159))

(assert (=> d!1190127 d!1190135))

(assert (=> d!1190127 d!1190137))

(declare-fun d!1190765 () Bool)

(declare-fun c!694887 () Bool)

(assert (=> d!1190765 (= c!694887 ((_ is Nil!43030) lt!1427373))))

(declare-fun e!2494262 () (InoxSet C!23716))

(assert (=> d!1190765 (= (content!6526 lt!1427373) e!2494262)))

(declare-fun b!4020909 () Bool)

(assert (=> b!4020909 (= e!2494262 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4020910 () Bool)

(assert (=> b!4020910 (= e!2494262 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 lt!1427373) true) (content!6526 (t!333487 lt!1427373))))))

(assert (= (and d!1190765 c!694887) b!4020909))

(assert (= (and d!1190765 (not c!694887)) b!4020910))

(declare-fun m!4611543 () Bool)

(assert (=> b!4020910 m!4611543))

(declare-fun m!4611545 () Bool)

(assert (=> b!4020910 m!4611545))

(assert (=> d!1189943 d!1190765))

(assert (=> d!1189943 d!1190483))

(assert (=> d!1189943 d!1190401))

(declare-fun d!1190767 () Bool)

(declare-fun lt!1427955 () Int)

(assert (=> d!1190767 (>= lt!1427955 0)))

(declare-fun e!2494266 () Int)

(assert (=> d!1190767 (= lt!1427955 e!2494266)))

(declare-fun c!694890 () Bool)

(assert (=> d!1190767 (= c!694890 (and ((_ is Cons!43032) (t!333489 rules!2999)) (= (h!48452 (t!333489 rules!2999)) (rule!9912 token!484))))))

(assert (=> d!1190767 (contains!8548 (t!333489 rules!2999) (rule!9912 token!484))))

(assert (=> d!1190767 (= (getIndex!558 (t!333489 rules!2999) (rule!9912 token!484)) lt!1427955)))

(declare-fun b!4020915 () Bool)

(assert (=> b!4020915 (= e!2494266 0)))

(declare-fun b!4020917 () Bool)

(declare-fun e!2494265 () Int)

(assert (=> b!4020917 (= e!2494265 (+ 1 (getIndex!558 (t!333489 (t!333489 rules!2999)) (rule!9912 token!484))))))

(declare-fun b!4020918 () Bool)

(assert (=> b!4020918 (= e!2494265 (- 1))))

(declare-fun b!4020916 () Bool)

(assert (=> b!4020916 (= e!2494266 e!2494265)))

(declare-fun c!694889 () Bool)

(assert (=> b!4020916 (= c!694889 (and ((_ is Cons!43032) (t!333489 rules!2999)) (not (= (h!48452 (t!333489 rules!2999)) (rule!9912 token!484)))))))

(assert (= (and d!1190767 c!694890) b!4020915))

(assert (= (and d!1190767 (not c!694890)) b!4020916))

(assert (= (and b!4020916 c!694889) b!4020917))

(assert (= (and b!4020916 (not c!694889)) b!4020918))

(assert (=> d!1190767 m!4610695))

(declare-fun m!4611555 () Bool)

(assert (=> b!4020917 m!4611555))

(assert (=> b!4020144 d!1190767))

(declare-fun d!1190769 () Bool)

(declare-fun lt!1427956 () Int)

(assert (=> d!1190769 (>= lt!1427956 0)))

(declare-fun e!2494267 () Int)

(assert (=> d!1190769 (= lt!1427956 e!2494267)))

(declare-fun c!694891 () Bool)

(assert (=> d!1190769 (= c!694891 ((_ is Nil!43030) (_2!24213 (get!14131 lt!1427506))))))

(assert (=> d!1190769 (= (size!32171 (_2!24213 (get!14131 lt!1427506))) lt!1427956)))

(declare-fun b!4020919 () Bool)

(assert (=> b!4020919 (= e!2494267 0)))

(declare-fun b!4020920 () Bool)

(assert (=> b!4020920 (= e!2494267 (+ 1 (size!32171 (t!333487 (_2!24213 (get!14131 lt!1427506))))))))

(assert (= (and d!1190769 c!694891) b!4020919))

(assert (= (and d!1190769 (not c!694891)) b!4020920))

(declare-fun m!4611563 () Bool)

(assert (=> b!4020920 m!4611563))

(assert (=> b!4020099 d!1190769))

(assert (=> b!4020099 d!1190463))

(assert (=> b!4020099 d!1190265))

(assert (=> b!4020060 d!1190491))

(declare-fun d!1190775 () Bool)

(assert (=> d!1190775 (= (head!8527 lt!1427217) (h!48450 lt!1427217))))

(assert (=> b!4020060 d!1190775))

(declare-fun d!1190777 () Bool)

(declare-fun c!694892 () Bool)

(assert (=> d!1190777 (= c!694892 ((_ is Nil!43030) lt!1427472))))

(declare-fun e!2494268 () (InoxSet C!23716))

(assert (=> d!1190777 (= (content!6526 lt!1427472) e!2494268)))

(declare-fun b!4020921 () Bool)

(assert (=> b!4020921 (= e!2494268 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4020922 () Bool)

(assert (=> b!4020922 (= e!2494268 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 lt!1427472) true) (content!6526 (t!333487 lt!1427472))))))

(assert (= (and d!1190777 c!694892) b!4020921))

(assert (= (and d!1190777 (not c!694892)) b!4020922))

(declare-fun m!4611565 () Bool)

(assert (=> b!4020922 m!4611565))

(declare-fun m!4611567 () Bool)

(assert (=> b!4020922 m!4611567))

(assert (=> d!1190063 d!1190777))

(assert (=> d!1190063 d!1190383))

(declare-fun d!1190779 () Bool)

(declare-fun c!694893 () Bool)

(assert (=> d!1190779 (= c!694893 ((_ is Nil!43030) newSuffix!27))))

(declare-fun e!2494270 () (InoxSet C!23716))

(assert (=> d!1190779 (= (content!6526 newSuffix!27) e!2494270)))

(declare-fun b!4020924 () Bool)

(assert (=> b!4020924 (= e!2494270 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4020925 () Bool)

(assert (=> b!4020925 (= e!2494270 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 newSuffix!27) true) (content!6526 (t!333487 newSuffix!27))))))

(assert (= (and d!1190779 c!694893) b!4020924))

(assert (= (and d!1190779 (not c!694893)) b!4020925))

(declare-fun m!4611569 () Bool)

(assert (=> b!4020925 m!4611569))

(declare-fun m!4611573 () Bool)

(assert (=> b!4020925 m!4611573))

(assert (=> d!1190063 d!1190779))

(declare-fun d!1190781 () Bool)

(assert (=> d!1190781 (= (isEmpty!25696 (originalCharacters!7460 token!484)) ((_ is Nil!43030) (originalCharacters!7460 token!484)))))

(assert (=> d!1190103 d!1190781))

(declare-fun d!1190783 () Bool)

(declare-fun c!694894 () Bool)

(assert (=> d!1190783 (= c!694894 ((_ is Nil!43030) lt!1427476))))

(declare-fun e!2494271 () (InoxSet C!23716))

(assert (=> d!1190783 (= (content!6526 lt!1427476) e!2494271)))

(declare-fun b!4020926 () Bool)

(assert (=> b!4020926 (= e!2494271 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4020927 () Bool)

(assert (=> b!4020927 (= e!2494271 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 lt!1427476) true) (content!6526 (t!333487 lt!1427476))))))

(assert (= (and d!1190783 c!694894) b!4020926))

(assert (= (and d!1190783 (not c!694894)) b!4020927))

(declare-fun m!4611579 () Bool)

(assert (=> b!4020927 m!4611579))

(declare-fun m!4611581 () Bool)

(assert (=> b!4020927 m!4611581))

(assert (=> d!1190071 d!1190783))

(declare-fun d!1190785 () Bool)

(declare-fun c!694895 () Bool)

(assert (=> d!1190785 (= c!694895 ((_ is Nil!43030) lt!1427218))))

(declare-fun e!2494272 () (InoxSet C!23716))

(assert (=> d!1190785 (= (content!6526 lt!1427218) e!2494272)))

(declare-fun b!4020928 () Bool)

(assert (=> b!4020928 (= e!2494272 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4020929 () Bool)

(assert (=> b!4020929 (= e!2494272 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 lt!1427218) true) (content!6526 (t!333487 lt!1427218))))))

(assert (= (and d!1190785 c!694895) b!4020928))

(assert (= (and d!1190785 (not c!694895)) b!4020929))

(declare-fun m!4611585 () Bool)

(assert (=> b!4020929 m!4611585))

(declare-fun m!4611587 () Bool)

(assert (=> b!4020929 m!4611587))

(assert (=> d!1190071 d!1190785))

(assert (=> d!1190071 d!1190555))

(declare-fun d!1190789 () Bool)

(declare-fun lt!1427959 () Int)

(assert (=> d!1190789 (>= lt!1427959 0)))

(declare-fun e!2494276 () Int)

(assert (=> d!1190789 (= lt!1427959 e!2494276)))

(declare-fun c!694896 () Bool)

(assert (=> d!1190789 (= c!694896 ((_ is Nil!43030) (t!333487 lt!1427191)))))

(assert (=> d!1190789 (= (size!32171 (t!333487 lt!1427191)) lt!1427959)))

(declare-fun b!4020934 () Bool)

(assert (=> b!4020934 (= e!2494276 0)))

(declare-fun b!4020935 () Bool)

(assert (=> b!4020935 (= e!2494276 (+ 1 (size!32171 (t!333487 (t!333487 lt!1427191)))))))

(assert (= (and d!1190789 c!694896) b!4020934))

(assert (= (and d!1190789 (not c!694896)) b!4020935))

(declare-fun m!4611589 () Bool)

(assert (=> b!4020935 m!4611589))

(assert (=> b!4020131 d!1190789))

(declare-fun d!1190791 () Bool)

(assert (=> d!1190791 (= (isEmpty!25695 lt!1427506) (not ((_ is Some!9273) lt!1427506)))))

(assert (=> d!1190135 d!1190791))

(declare-fun d!1190793 () Bool)

(assert (=> d!1190793 (= (isEmpty!25696 (_1!24215 lt!1427507)) ((_ is Nil!43030) (_1!24215 lt!1427507)))))

(assert (=> d!1190135 d!1190793))

(declare-fun d!1190795 () Bool)

(declare-fun lt!1427978 () tuple2!42162)

(assert (=> d!1190795 (= (++!11262 (_1!24215 lt!1427978) (_2!24215 lt!1427978)) lt!1427217)))

(declare-fun sizeTr!264 (List!43154 Int) Int)

(assert (=> d!1190795 (= lt!1427978 (findLongestMatchInner!1367 (regex!6860 (rule!9912 token!484)) Nil!43030 0 lt!1427217 lt!1427217 (sizeTr!264 lt!1427217 0)))))

(declare-fun lt!1427982 () Unit!62145)

(declare-fun lt!1427984 () Unit!62145)

(assert (=> d!1190795 (= lt!1427982 lt!1427984)))

(declare-fun lt!1427979 () List!43154)

(declare-fun lt!1427981 () Int)

(assert (=> d!1190795 (= (sizeTr!264 lt!1427979 lt!1427981) (+ (size!32171 lt!1427979) lt!1427981))))

(declare-fun lemmaSizeTrEqualsSize!263 (List!43154 Int) Unit!62145)

(assert (=> d!1190795 (= lt!1427984 (lemmaSizeTrEqualsSize!263 lt!1427979 lt!1427981))))

(assert (=> d!1190795 (= lt!1427981 0)))

(assert (=> d!1190795 (= lt!1427979 Nil!43030)))

(declare-fun lt!1427985 () Unit!62145)

(declare-fun lt!1427980 () Unit!62145)

(assert (=> d!1190795 (= lt!1427985 lt!1427980)))

(declare-fun lt!1427983 () Int)

(assert (=> d!1190795 (= (sizeTr!264 lt!1427217 lt!1427983) (+ (size!32171 lt!1427217) lt!1427983))))

(assert (=> d!1190795 (= lt!1427980 (lemmaSizeTrEqualsSize!263 lt!1427217 lt!1427983))))

(assert (=> d!1190795 (= lt!1427983 0)))

(assert (=> d!1190795 (validRegex!5326 (regex!6860 (rule!9912 token!484)))))

(assert (=> d!1190795 (= (findLongestMatch!1280 (regex!6860 (rule!9912 token!484)) lt!1427217) lt!1427978)))

(declare-fun bs!589870 () Bool)

(assert (= bs!589870 d!1190795))

(declare-fun m!4611629 () Bool)

(assert (=> bs!589870 m!4611629))

(declare-fun m!4611631 () Bool)

(assert (=> bs!589870 m!4611631))

(declare-fun m!4611633 () Bool)

(assert (=> bs!589870 m!4611633))

(assert (=> bs!589870 m!4609515))

(declare-fun m!4611635 () Bool)

(assert (=> bs!589870 m!4611635))

(declare-fun m!4611637 () Bool)

(assert (=> bs!589870 m!4611637))

(declare-fun m!4611639 () Bool)

(assert (=> bs!589870 m!4611639))

(declare-fun m!4611641 () Bool)

(assert (=> bs!589870 m!4611641))

(assert (=> bs!589870 m!4610215))

(assert (=> bs!589870 m!4611639))

(declare-fun m!4611643 () Bool)

(assert (=> bs!589870 m!4611643))

(assert (=> d!1190135 d!1190795))

(assert (=> d!1190135 d!1190155))

(declare-fun d!1190811 () Bool)

(declare-fun lt!1427986 () Int)

(assert (=> d!1190811 (>= lt!1427986 0)))

(declare-fun e!2494298 () Int)

(assert (=> d!1190811 (= lt!1427986 e!2494298)))

(declare-fun c!694905 () Bool)

(assert (=> d!1190811 (= c!694905 ((_ is Nil!43030) lt!1427476))))

(assert (=> d!1190811 (= (size!32171 lt!1427476) lt!1427986)))

(declare-fun b!4020969 () Bool)

(assert (=> b!4020969 (= e!2494298 0)))

(declare-fun b!4020970 () Bool)

(assert (=> b!4020970 (= e!2494298 (+ 1 (size!32171 (t!333487 lt!1427476))))))

(assert (= (and d!1190811 c!694905) b!4020969))

(assert (= (and d!1190811 (not c!694905)) b!4020970))

(declare-fun m!4611645 () Bool)

(assert (=> b!4020970 m!4611645))

(assert (=> b!4020000 d!1190811))

(declare-fun d!1190813 () Bool)

(declare-fun lt!1427987 () Int)

(assert (=> d!1190813 (>= lt!1427987 0)))

(declare-fun e!2494299 () Int)

(assert (=> d!1190813 (= lt!1427987 e!2494299)))

(declare-fun c!694906 () Bool)

(assert (=> d!1190813 (= c!694906 ((_ is Nil!43030) lt!1427218))))

(assert (=> d!1190813 (= (size!32171 lt!1427218) lt!1427987)))

(declare-fun b!4020971 () Bool)

(assert (=> b!4020971 (= e!2494299 0)))

(declare-fun b!4020972 () Bool)

(assert (=> b!4020972 (= e!2494299 (+ 1 (size!32171 (t!333487 lt!1427218))))))

(assert (= (and d!1190813 c!694906) b!4020971))

(assert (= (and d!1190813 (not c!694906)) b!4020972))

(declare-fun m!4611647 () Bool)

(assert (=> b!4020972 m!4611647))

(assert (=> b!4020000 d!1190813))

(assert (=> b!4020000 d!1190139))

(declare-fun d!1190815 () Bool)

(declare-fun lt!1427988 () Int)

(assert (=> d!1190815 (>= lt!1427988 0)))

(declare-fun e!2494300 () Int)

(assert (=> d!1190815 (= lt!1427988 e!2494300)))

(declare-fun c!694907 () Bool)

(assert (=> d!1190815 (= c!694907 ((_ is Nil!43030) (t!333487 prefix!494)))))

(assert (=> d!1190815 (= (size!32171 (t!333487 prefix!494)) lt!1427988)))

(declare-fun b!4020973 () Bool)

(assert (=> b!4020973 (= e!2494300 0)))

(declare-fun b!4020974 () Bool)

(assert (=> b!4020974 (= e!2494300 (+ 1 (size!32171 (t!333487 (t!333487 prefix!494)))))))

(assert (= (and d!1190815 c!694907) b!4020973))

(assert (= (and d!1190815 (not c!694907)) b!4020974))

(declare-fun m!4611649 () Bool)

(assert (=> b!4020974 m!4611649))

(assert (=> b!4020133 d!1190815))

(declare-fun d!1190817 () Bool)

(assert (=> d!1190817 (= (head!8527 lt!1427181) (h!48450 lt!1427181))))

(assert (=> b!4020013 d!1190817))

(assert (=> b!4020056 d!1190625))

(assert (=> b!4020056 d!1190775))

(declare-fun b!4020979 () Bool)

(declare-fun res!1636081 () Bool)

(declare-fun e!2494302 () Bool)

(assert (=> b!4020979 (=> (not res!1636081) (not e!2494302))))

(declare-fun lt!1427991 () List!43154)

(assert (=> b!4020979 (= res!1636081 (= (size!32171 lt!1427991) (+ (size!32171 (t!333487 prefix!494)) (size!32171 lt!1427185))))))

(declare-fun b!4020977 () Bool)

(declare-fun e!2494301 () List!43154)

(assert (=> b!4020977 (= e!2494301 lt!1427185)))

(declare-fun d!1190819 () Bool)

(assert (=> d!1190819 e!2494302))

(declare-fun res!1636080 () Bool)

(assert (=> d!1190819 (=> (not res!1636080) (not e!2494302))))

(assert (=> d!1190819 (= res!1636080 (= (content!6526 lt!1427991) ((_ map or) (content!6526 (t!333487 prefix!494)) (content!6526 lt!1427185))))))

(assert (=> d!1190819 (= lt!1427991 e!2494301)))

(declare-fun c!694908 () Bool)

(assert (=> d!1190819 (= c!694908 ((_ is Nil!43030) (t!333487 prefix!494)))))

(assert (=> d!1190819 (= (++!11262 (t!333487 prefix!494) lt!1427185) lt!1427991)))

(declare-fun b!4020980 () Bool)

(assert (=> b!4020980 (= e!2494302 (or (not (= lt!1427185 Nil!43030)) (= lt!1427991 (t!333487 prefix!494))))))

(declare-fun b!4020978 () Bool)

(assert (=> b!4020978 (= e!2494301 (Cons!43030 (h!48450 (t!333487 prefix!494)) (++!11262 (t!333487 (t!333487 prefix!494)) lt!1427185)))))

(assert (= (and d!1190819 c!694908) b!4020977))

(assert (= (and d!1190819 (not c!694908)) b!4020978))

(assert (= (and d!1190819 res!1636080) b!4020979))

(assert (= (and b!4020979 res!1636081) b!4020980))

(declare-fun m!4611651 () Bool)

(assert (=> b!4020979 m!4611651))

(assert (=> b!4020979 m!4610247))

(assert (=> b!4020979 m!4609315))

(declare-fun m!4611653 () Bool)

(assert (=> d!1190819 m!4611653))

(assert (=> d!1190819 m!4610629))

(assert (=> d!1190819 m!4609321))

(declare-fun m!4611655 () Bool)

(assert (=> b!4020978 m!4611655))

(assert (=> b!4019576 d!1190819))

(declare-fun d!1190821 () Bool)

(declare-fun lt!1427992 () Int)

(assert (=> d!1190821 (>= lt!1427992 0)))

(declare-fun e!2494313 () Int)

(assert (=> d!1190821 (= lt!1427992 e!2494313)))

(declare-fun c!694919 () Bool)

(assert (=> d!1190821 (= c!694919 ((_ is Nil!43030) lt!1427373))))

(assert (=> d!1190821 (= (size!32171 lt!1427373) lt!1427992)))

(declare-fun b!4020999 () Bool)

(assert (=> b!4020999 (= e!2494313 0)))

(declare-fun b!4021000 () Bool)

(assert (=> b!4021000 (= e!2494313 (+ 1 (size!32171 (t!333487 lt!1427373))))))

(assert (= (and d!1190821 c!694919) b!4020999))

(assert (= (and d!1190821 (not c!694919)) b!4021000))

(declare-fun m!4611657 () Bool)

(assert (=> b!4021000 m!4611657))

(assert (=> b!4019740 d!1190821))

(assert (=> b!4019740 d!1189967))

(assert (=> b!4019740 d!1190409))

(assert (=> b!4019981 d!1190265))

(declare-fun d!1190823 () Bool)

(declare-fun lt!1427993 () Int)

(assert (=> d!1190823 (>= lt!1427993 0)))

(declare-fun e!2494314 () Int)

(assert (=> d!1190823 (= lt!1427993 e!2494314)))

(declare-fun c!694920 () Bool)

(assert (=> d!1190823 (= c!694920 ((_ is Nil!43030) lt!1427199))))

(assert (=> d!1190823 (= (size!32171 lt!1427199) lt!1427993)))

(declare-fun b!4021001 () Bool)

(assert (=> b!4021001 (= e!2494314 0)))

(declare-fun b!4021002 () Bool)

(assert (=> b!4021002 (= e!2494314 (+ 1 (size!32171 (t!333487 lt!1427199))))))

(assert (= (and d!1190823 c!694920) b!4021001))

(assert (= (and d!1190823 (not c!694920)) b!4021002))

(declare-fun m!4611659 () Bool)

(assert (=> b!4021002 m!4611659))

(assert (=> b!4020066 d!1190823))

(assert (=> b!4020066 d!1190159))

(declare-fun b!4021003 () Bool)

(declare-fun e!2494319 () Bool)

(declare-fun e!2494317 () Bool)

(assert (=> b!4021003 (= e!2494319 e!2494317)))

(declare-fun res!1636086 () Bool)

(assert (=> b!4021003 (=> res!1636086 e!2494317)))

(declare-fun call!286696 () Bool)

(assert (=> b!4021003 (= res!1636086 call!286696)))

(declare-fun b!4021004 () Bool)

(declare-fun res!1636089 () Bool)

(declare-fun e!2494316 () Bool)

(assert (=> b!4021004 (=> (not res!1636089) (not e!2494316))))

(assert (=> b!4021004 (= res!1636089 (isEmpty!25696 (tail!6259 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427443)))))))))

(declare-fun b!4021005 () Bool)

(declare-fun e!2494318 () Bool)

(declare-fun lt!1427994 () Bool)

(assert (=> b!4021005 (= e!2494318 (not lt!1427994))))

(declare-fun b!4021006 () Bool)

(declare-fun res!1636084 () Bool)

(declare-fun e!2494315 () Bool)

(assert (=> b!4021006 (=> res!1636084 e!2494315)))

(assert (=> b!4021006 (= res!1636084 (not ((_ is ElementMatch!11765) (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))))

(assert (=> b!4021006 (= e!2494318 e!2494315)))

(declare-fun b!4021008 () Bool)

(declare-fun res!1636083 () Bool)

(assert (=> b!4021008 (=> res!1636083 e!2494317)))

(assert (=> b!4021008 (= res!1636083 (not (isEmpty!25696 (tail!6259 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427443))))))))))

(declare-fun b!4021009 () Bool)

(declare-fun res!1636087 () Bool)

(assert (=> b!4021009 (=> (not res!1636087) (not e!2494316))))

(assert (=> b!4021009 (= res!1636087 (not call!286696))))

(declare-fun b!4021010 () Bool)

(declare-fun res!1636088 () Bool)

(assert (=> b!4021010 (=> res!1636088 e!2494315)))

(assert (=> b!4021010 (= res!1636088 e!2494316)))

(declare-fun res!1636082 () Bool)

(assert (=> b!4021010 (=> (not res!1636082) (not e!2494316))))

(assert (=> b!4021010 (= res!1636082 lt!1427994)))

(declare-fun b!4021011 () Bool)

(assert (=> b!4021011 (= e!2494317 (not (= (head!8527 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427443))))) (c!694547 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))))

(declare-fun b!4021012 () Bool)

(declare-fun e!2494320 () Bool)

(assert (=> b!4021012 (= e!2494320 (nullable!4126 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(declare-fun b!4021013 () Bool)

(declare-fun e!2494321 () Bool)

(assert (=> b!4021013 (= e!2494321 e!2494318)))

(declare-fun c!694923 () Bool)

(assert (=> b!4021013 (= c!694923 ((_ is EmptyLang!11765) (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(declare-fun b!4021014 () Bool)

(assert (=> b!4021014 (= e!2494315 e!2494319)))

(declare-fun res!1636085 () Bool)

(assert (=> b!4021014 (=> (not res!1636085) (not e!2494319))))

(assert (=> b!4021014 (= res!1636085 (not lt!1427994))))

(declare-fun b!4021015 () Bool)

(assert (=> b!4021015 (= e!2494320 (matchR!5726 (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (head!8527 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427443)))))) (tail!6259 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427443)))))))))

(declare-fun bm!286691 () Bool)

(assert (=> bm!286691 (= call!286696 (isEmpty!25696 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427443))))))))

(declare-fun b!4021016 () Bool)

(assert (=> b!4021016 (= e!2494321 (= lt!1427994 call!286696))))

(declare-fun b!4021007 () Bool)

(assert (=> b!4021007 (= e!2494316 (= (head!8527 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427443))))) (c!694547 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))))

(declare-fun d!1190825 () Bool)

(assert (=> d!1190825 e!2494321))

(declare-fun c!694921 () Bool)

(assert (=> d!1190825 (= c!694921 ((_ is EmptyExpr!11765) (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(assert (=> d!1190825 (= lt!1427994 e!2494320)))

(declare-fun c!694922 () Bool)

(assert (=> d!1190825 (= c!694922 (isEmpty!25696 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427443))))))))

(assert (=> d!1190825 (validRegex!5326 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))

(assert (=> d!1190825 (= (matchR!5726 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427443))))) lt!1427994)))

(assert (= (and d!1190825 c!694922) b!4021012))

(assert (= (and d!1190825 (not c!694922)) b!4021015))

(assert (= (and d!1190825 c!694921) b!4021016))

(assert (= (and d!1190825 (not c!694921)) b!4021013))

(assert (= (and b!4021013 c!694923) b!4021005))

(assert (= (and b!4021013 (not c!694923)) b!4021006))

(assert (= (and b!4021006 (not res!1636084)) b!4021010))

(assert (= (and b!4021010 res!1636082) b!4021009))

(assert (= (and b!4021009 res!1636087) b!4021004))

(assert (= (and b!4021004 res!1636089) b!4021007))

(assert (= (and b!4021010 (not res!1636088)) b!4021014))

(assert (= (and b!4021014 res!1636085) b!4021003))

(assert (= (and b!4021003 (not res!1636086)) b!4021008))

(assert (= (and b!4021008 (not res!1636083)) b!4021011))

(assert (= (or b!4021016 b!4021003 b!4021009) bm!286691))

(assert (=> b!4021011 m!4609853))

(declare-fun m!4611661 () Bool)

(assert (=> b!4021011 m!4611661))

(assert (=> b!4021007 m!4609853))

(assert (=> b!4021007 m!4611661))

(assert (=> b!4021004 m!4609853))

(declare-fun m!4611663 () Bool)

(assert (=> b!4021004 m!4611663))

(assert (=> b!4021004 m!4611663))

(declare-fun m!4611665 () Bool)

(assert (=> b!4021004 m!4611665))

(assert (=> b!4021012 m!4609501))

(assert (=> bm!286691 m!4609853))

(declare-fun m!4611667 () Bool)

(assert (=> bm!286691 m!4611667))

(assert (=> b!4021008 m!4609853))

(assert (=> b!4021008 m!4611663))

(assert (=> b!4021008 m!4611663))

(assert (=> b!4021008 m!4611665))

(assert (=> d!1190825 m!4609853))

(assert (=> d!1190825 m!4611667))

(assert (=> d!1190825 m!4609505))

(assert (=> b!4021015 m!4609853))

(assert (=> b!4021015 m!4611661))

(assert (=> b!4021015 m!4611661))

(declare-fun m!4611669 () Bool)

(assert (=> b!4021015 m!4611669))

(assert (=> b!4021015 m!4609853))

(assert (=> b!4021015 m!4611663))

(assert (=> b!4021015 m!4611669))

(assert (=> b!4021015 m!4611663))

(declare-fun m!4611671 () Bool)

(assert (=> b!4021015 m!4611671))

(assert (=> b!4019934 d!1190825))

(assert (=> b!4019934 d!1190391))

(assert (=> b!4019934 d!1190393))

(assert (=> b!4019934 d!1190395))

(declare-fun d!1190827 () Bool)

(assert (=> d!1190827 (= (isDefined!7077 lt!1427286) (not (isEmpty!25695 lt!1427286)))))

(declare-fun bs!589871 () Bool)

(assert (= bs!589871 d!1190827))

(assert (=> bs!589871 m!4609233))

(assert (=> b!4019525 d!1190827))

(declare-fun b!4021019 () Bool)

(declare-fun res!1636091 () Bool)

(declare-fun e!2494323 () Bool)

(assert (=> b!4021019 (=> (not res!1636091) (not e!2494323))))

(declare-fun lt!1427995 () List!43154)

(assert (=> b!4021019 (= res!1636091 (= (size!32171 lt!1427995) (+ (size!32171 (t!333487 lt!1427188)) (size!32171 suffix!1299))))))

(declare-fun b!4021017 () Bool)

(declare-fun e!2494322 () List!43154)

(assert (=> b!4021017 (= e!2494322 suffix!1299)))

(declare-fun d!1190829 () Bool)

(assert (=> d!1190829 e!2494323))

(declare-fun res!1636090 () Bool)

(assert (=> d!1190829 (=> (not res!1636090) (not e!2494323))))

(assert (=> d!1190829 (= res!1636090 (= (content!6526 lt!1427995) ((_ map or) (content!6526 (t!333487 lt!1427188)) (content!6526 suffix!1299))))))

(assert (=> d!1190829 (= lt!1427995 e!2494322)))

(declare-fun c!694924 () Bool)

(assert (=> d!1190829 (= c!694924 ((_ is Nil!43030) (t!333487 lt!1427188)))))

(assert (=> d!1190829 (= (++!11262 (t!333487 lt!1427188) suffix!1299) lt!1427995)))

(declare-fun b!4021020 () Bool)

(assert (=> b!4021020 (= e!2494323 (or (not (= suffix!1299 Nil!43030)) (= lt!1427995 (t!333487 lt!1427188))))))

(declare-fun b!4021018 () Bool)

(assert (=> b!4021018 (= e!2494322 (Cons!43030 (h!48450 (t!333487 lt!1427188)) (++!11262 (t!333487 (t!333487 lt!1427188)) suffix!1299)))))

(assert (= (and d!1190829 c!694924) b!4021017))

(assert (= (and d!1190829 (not c!694924)) b!4021018))

(assert (= (and d!1190829 res!1636090) b!4021019))

(assert (= (and b!4021019 res!1636091) b!4021020))

(declare-fun m!4611673 () Bool)

(assert (=> b!4021019 m!4611673))

(assert (=> b!4021019 m!4611275))

(assert (=> b!4021019 m!4608933))

(declare-fun m!4611675 () Bool)

(assert (=> d!1190829 m!4611675))

(assert (=> d!1190829 m!4611069))

(assert (=> d!1190829 m!4609995))

(declare-fun m!4611677 () Bool)

(assert (=> b!4021018 m!4611677))

(assert (=> b!4019995 d!1190829))

(declare-fun d!1190831 () Bool)

(declare-fun charsToInt!0 (List!43155) (_ BitVec 32))

(assert (=> d!1190831 (= (inv!16 (value!216144 token!484)) (= (charsToInt!0 (text!50077 (value!216144 token!484))) (value!216135 (value!216144 token!484))))))

(declare-fun bs!589872 () Bool)

(assert (= bs!589872 d!1190831))

(declare-fun m!4611679 () Bool)

(assert (=> bs!589872 m!4611679))

(assert (=> b!4020084 d!1190831))

(declare-fun d!1190833 () Bool)

(assert (=> d!1190833 (= (nullable!4126 (regex!6860 (rule!9912 token!484))) (nullableFct!1152 (regex!6860 (rule!9912 token!484))))))

(declare-fun bs!589873 () Bool)

(assert (= bs!589873 d!1190833))

(declare-fun m!4611681 () Bool)

(assert (=> bs!589873 m!4611681))

(assert (=> b!4020128 d!1190833))

(assert (=> b!4020100 d!1190463))

(declare-fun d!1190835 () Bool)

(declare-fun lt!1427996 () Int)

(assert (=> d!1190835 (>= lt!1427996 0)))

(declare-fun e!2494324 () Int)

(assert (=> d!1190835 (= lt!1427996 e!2494324)))

(declare-fun c!694925 () Bool)

(assert (=> d!1190835 (= c!694925 ((_ is Nil!43030) (originalCharacters!7460 (_1!24213 (get!14131 lt!1427506)))))))

(assert (=> d!1190835 (= (size!32171 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427506)))) lt!1427996)))

(declare-fun b!4021021 () Bool)

(assert (=> b!4021021 (= e!2494324 0)))

(declare-fun b!4021022 () Bool)

(assert (=> b!4021022 (= e!2494324 (+ 1 (size!32171 (t!333487 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427506)))))))))

(assert (= (and d!1190835 c!694925) b!4021021))

(assert (= (and d!1190835 (not c!694925)) b!4021022))

(declare-fun m!4611683 () Bool)

(assert (=> b!4021022 m!4611683))

(assert (=> b!4020100 d!1190835))

(declare-fun b!4021034 () Bool)

(declare-fun res!1636093 () Bool)

(declare-fun e!2494330 () Bool)

(assert (=> b!4021034 (=> (not res!1636093) (not e!2494330))))

(assert (=> b!4021034 (= res!1636093 (= (head!8527 lt!1427191) (head!8527 (++!11262 lt!1427191 lt!1427216))))))

(declare-fun b!4021036 () Bool)

(declare-fun e!2494331 () Bool)

(assert (=> b!4021036 (= e!2494331 (>= (size!32171 (++!11262 lt!1427191 lt!1427216)) (size!32171 lt!1427191)))))

(declare-fun d!1190837 () Bool)

(assert (=> d!1190837 e!2494331))

(declare-fun res!1636092 () Bool)

(assert (=> d!1190837 (=> res!1636092 e!2494331)))

(declare-fun lt!1427998 () Bool)

(assert (=> d!1190837 (= res!1636092 (not lt!1427998))))

(declare-fun e!2494332 () Bool)

(assert (=> d!1190837 (= lt!1427998 e!2494332)))

(declare-fun res!1636094 () Bool)

(assert (=> d!1190837 (=> res!1636094 e!2494332)))

(assert (=> d!1190837 (= res!1636094 ((_ is Nil!43030) lt!1427191))))

(assert (=> d!1190837 (= (isPrefix!3947 lt!1427191 (++!11262 lt!1427191 lt!1427216)) lt!1427998)))

(declare-fun b!4021033 () Bool)

(assert (=> b!4021033 (= e!2494332 e!2494330)))

(declare-fun res!1636095 () Bool)

(assert (=> b!4021033 (=> (not res!1636095) (not e!2494330))))

(assert (=> b!4021033 (= res!1636095 (not ((_ is Nil!43030) (++!11262 lt!1427191 lt!1427216))))))

(declare-fun b!4021035 () Bool)

(assert (=> b!4021035 (= e!2494330 (isPrefix!3947 (tail!6259 lt!1427191) (tail!6259 (++!11262 lt!1427191 lt!1427216))))))

(assert (= (and d!1190837 (not res!1636094)) b!4021033))

(assert (= (and b!4021033 res!1636095) b!4021034))

(assert (= (and b!4021034 res!1636093) b!4021035))

(assert (= (and d!1190837 (not res!1636092)) b!4021036))

(assert (=> b!4021034 m!4609279))

(assert (=> b!4021034 m!4609047))

(declare-fun m!4611685 () Bool)

(assert (=> b!4021034 m!4611685))

(assert (=> b!4021036 m!4609047))

(declare-fun m!4611687 () Bool)

(assert (=> b!4021036 m!4611687))

(assert (=> b!4021036 m!4609075))

(assert (=> b!4021035 m!4609285))

(assert (=> b!4021035 m!4609047))

(declare-fun m!4611689 () Bool)

(assert (=> b!4021035 m!4611689))

(assert (=> b!4021035 m!4609285))

(assert (=> b!4021035 m!4611689))

(declare-fun m!4611691 () Bool)

(assert (=> b!4021035 m!4611691))

(assert (=> d!1190133 d!1190837))

(assert (=> d!1190133 d!1190067))

(declare-fun d!1190839 () Bool)

(assert (=> d!1190839 (isPrefix!3947 lt!1427191 (++!11262 lt!1427191 lt!1427216))))

(assert (=> d!1190839 true))

(declare-fun _$46!1682 () Unit!62145)

(assert (=> d!1190839 (= (choose!24307 lt!1427191 lt!1427216) _$46!1682)))

(declare-fun bs!589874 () Bool)

(assert (= bs!589874 d!1190839))

(assert (=> bs!589874 m!4609047))

(assert (=> bs!589874 m!4609047))

(assert (=> bs!589874 m!4610161))

(assert (=> d!1190133 d!1190839))

(declare-fun b!4021038 () Bool)

(declare-fun res!1636097 () Bool)

(declare-fun e!2494333 () Bool)

(assert (=> b!4021038 (=> (not res!1636097) (not e!2494333))))

(assert (=> b!4021038 (= res!1636097 (= (head!8527 (tail!6259 lt!1427191)) (head!8527 (tail!6259 lt!1427176))))))

(declare-fun b!4021040 () Bool)

(declare-fun e!2494334 () Bool)

(assert (=> b!4021040 (= e!2494334 (>= (size!32171 (tail!6259 lt!1427176)) (size!32171 (tail!6259 lt!1427191))))))

(declare-fun d!1190841 () Bool)

(assert (=> d!1190841 e!2494334))

(declare-fun res!1636096 () Bool)

(assert (=> d!1190841 (=> res!1636096 e!2494334)))

(declare-fun lt!1427999 () Bool)

(assert (=> d!1190841 (= res!1636096 (not lt!1427999))))

(declare-fun e!2494335 () Bool)

(assert (=> d!1190841 (= lt!1427999 e!2494335)))

(declare-fun res!1636098 () Bool)

(assert (=> d!1190841 (=> res!1636098 e!2494335)))

(assert (=> d!1190841 (= res!1636098 ((_ is Nil!43030) (tail!6259 lt!1427191)))))

(assert (=> d!1190841 (= (isPrefix!3947 (tail!6259 lt!1427191) (tail!6259 lt!1427176)) lt!1427999)))

(declare-fun b!4021037 () Bool)

(assert (=> b!4021037 (= e!2494335 e!2494333)))

(declare-fun res!1636099 () Bool)

(assert (=> b!4021037 (=> (not res!1636099) (not e!2494333))))

(assert (=> b!4021037 (= res!1636099 (not ((_ is Nil!43030) (tail!6259 lt!1427176))))))

(declare-fun b!4021039 () Bool)

(assert (=> b!4021039 (= e!2494333 (isPrefix!3947 (tail!6259 (tail!6259 lt!1427191)) (tail!6259 (tail!6259 lt!1427176))))))

(assert (= (and d!1190841 (not res!1636098)) b!4021037))

(assert (= (and b!4021037 res!1636099) b!4021038))

(assert (= (and b!4021038 res!1636097) b!4021039))

(assert (= (and d!1190841 (not res!1636096)) b!4021040))

(assert (=> b!4021038 m!4609285))

(assert (=> b!4021038 m!4611159))

(assert (=> b!4021038 m!4609287))

(declare-fun m!4611701 () Bool)

(assert (=> b!4021038 m!4611701))

(assert (=> b!4021040 m!4609287))

(declare-fun m!4611703 () Bool)

(assert (=> b!4021040 m!4611703))

(assert (=> b!4021040 m!4609285))

(assert (=> b!4021040 m!4611245))

(assert (=> b!4021039 m!4609285))

(assert (=> b!4021039 m!4611161))

(assert (=> b!4021039 m!4609287))

(declare-fun m!4611705 () Bool)

(assert (=> b!4021039 m!4611705))

(assert (=> b!4021039 m!4611161))

(assert (=> b!4021039 m!4611705))

(declare-fun m!4611707 () Bool)

(assert (=> b!4021039 m!4611707))

(assert (=> b!4019552 d!1190841))

(assert (=> b!4019552 d!1190431))

(declare-fun d!1190847 () Bool)

(assert (=> d!1190847 (= (tail!6259 lt!1427176) (t!333487 lt!1427176))))

(assert (=> b!4019552 d!1190847))

(declare-fun d!1190849 () Bool)

(assert (=> d!1190849 (= (isDefined!7077 lt!1427490) (not (isEmpty!25695 lt!1427490)))))

(declare-fun bs!589875 () Bool)

(assert (= bs!589875 d!1190849))

(assert (=> bs!589875 m!4610099))

(assert (=> b!4020047 d!1190849))

(assert (=> b!4020024 d!1190817))

(declare-fun d!1190851 () Bool)

(assert (=> d!1190851 (= (head!8527 lt!1427222) (h!48450 lt!1427222))))

(assert (=> b!4020024 d!1190851))

(declare-fun d!1190853 () Bool)

(declare-fun lt!1428001 () Int)

(assert (=> d!1190853 (>= lt!1428001 0)))

(declare-fun e!2494339 () Int)

(assert (=> d!1190853 (= lt!1428001 e!2494339)))

(declare-fun c!694931 () Bool)

(assert (=> d!1190853 (= c!694931 ((_ is Nil!43030) lt!1427472))))

(assert (=> d!1190853 (= (size!32171 lt!1427472) lt!1428001)))

(declare-fun b!4021045 () Bool)

(assert (=> b!4021045 (= e!2494339 0)))

(declare-fun b!4021046 () Bool)

(assert (=> b!4021046 (= e!2494339 (+ 1 (size!32171 (t!333487 lt!1427472))))))

(assert (= (and d!1190853 c!694931) b!4021045))

(assert (= (and d!1190853 (not c!694931)) b!4021046))

(declare-fun m!4611717 () Bool)

(assert (=> b!4021046 m!4611717))

(assert (=> b!4019984 d!1190853))

(assert (=> b!4019984 d!1190161))

(assert (=> b!4019984 d!1190141))

(declare-fun d!1190857 () Bool)

(declare-fun res!1636116 () Bool)

(declare-fun e!2494353 () Bool)

(assert (=> d!1190857 (=> res!1636116 e!2494353)))

(assert (=> d!1190857 (= res!1636116 ((_ is Nil!43032) rules!2999))))

(assert (=> d!1190857 (= (noDuplicateTag!2667 thiss!21717 rules!2999 Nil!43033) e!2494353)))

(declare-fun b!4021069 () Bool)

(declare-fun e!2494354 () Bool)

(assert (=> b!4021069 (= e!2494353 e!2494354)))

(declare-fun res!1636117 () Bool)

(assert (=> b!4021069 (=> (not res!1636117) (not e!2494354))))

(declare-fun contains!8550 (List!43157 String!49168) Bool)

(assert (=> b!4021069 (= res!1636117 (not (contains!8550 Nil!43033 (tag!7720 (h!48452 rules!2999)))))))

(declare-fun b!4021070 () Bool)

(assert (=> b!4021070 (= e!2494354 (noDuplicateTag!2667 thiss!21717 (t!333489 rules!2999) (Cons!43033 (tag!7720 (h!48452 rules!2999)) Nil!43033)))))

(assert (= (and d!1190857 (not res!1636116)) b!4021069))

(assert (= (and b!4021069 res!1636117) b!4021070))

(declare-fun m!4611723 () Bool)

(assert (=> b!4021069 m!4611723))

(declare-fun m!4611725 () Bool)

(assert (=> b!4021070 m!4611725))

(assert (=> b!4020004 d!1190857))

(declare-fun b!4021072 () Bool)

(declare-fun res!1636119 () Bool)

(declare-fun e!2494355 () Bool)

(assert (=> b!4021072 (=> (not res!1636119) (not e!2494355))))

(assert (=> b!4021072 (= res!1636119 (= (head!8527 lt!1427191) (head!8527 (++!11262 lt!1427191 lt!1427187))))))

(declare-fun b!4021074 () Bool)

(declare-fun e!2494356 () Bool)

(assert (=> b!4021074 (= e!2494356 (>= (size!32171 (++!11262 lt!1427191 lt!1427187)) (size!32171 lt!1427191)))))

(declare-fun d!1190865 () Bool)

(assert (=> d!1190865 e!2494356))

(declare-fun res!1636118 () Bool)

(assert (=> d!1190865 (=> res!1636118 e!2494356)))

(declare-fun lt!1428004 () Bool)

(assert (=> d!1190865 (= res!1636118 (not lt!1428004))))

(declare-fun e!2494357 () Bool)

(assert (=> d!1190865 (= lt!1428004 e!2494357)))

(declare-fun res!1636120 () Bool)

(assert (=> d!1190865 (=> res!1636120 e!2494357)))

(assert (=> d!1190865 (= res!1636120 ((_ is Nil!43030) lt!1427191))))

(assert (=> d!1190865 (= (isPrefix!3947 lt!1427191 (++!11262 lt!1427191 lt!1427187)) lt!1428004)))

(declare-fun b!4021071 () Bool)

(assert (=> b!4021071 (= e!2494357 e!2494355)))

(declare-fun res!1636121 () Bool)

(assert (=> b!4021071 (=> (not res!1636121) (not e!2494355))))

(assert (=> b!4021071 (= res!1636121 (not ((_ is Nil!43030) (++!11262 lt!1427191 lt!1427187))))))

(declare-fun b!4021073 () Bool)

(assert (=> b!4021073 (= e!2494355 (isPrefix!3947 (tail!6259 lt!1427191) (tail!6259 (++!11262 lt!1427191 lt!1427187))))))

(assert (= (and d!1190865 (not res!1636120)) b!4021071))

(assert (= (and b!4021071 res!1636121) b!4021072))

(assert (= (and b!4021072 res!1636119) b!4021073))

(assert (= (and d!1190865 (not res!1636118)) b!4021074))

(assert (=> b!4021072 m!4609279))

(assert (=> b!4021072 m!4608967))

(declare-fun m!4611739 () Bool)

(assert (=> b!4021072 m!4611739))

(assert (=> b!4021074 m!4608967))

(declare-fun m!4611741 () Bool)

(assert (=> b!4021074 m!4611741))

(assert (=> b!4021074 m!4609075))

(assert (=> b!4021073 m!4609285))

(assert (=> b!4021073 m!4608967))

(declare-fun m!4611743 () Bool)

(assert (=> b!4021073 m!4611743))

(assert (=> b!4021073 m!4609285))

(assert (=> b!4021073 m!4611743))

(declare-fun m!4611747 () Bool)

(assert (=> b!4021073 m!4611747))

(assert (=> d!1189837 d!1190865))

(assert (=> d!1189837 d!1190055))

(declare-fun d!1190867 () Bool)

(assert (=> d!1190867 (isPrefix!3947 lt!1427191 (++!11262 lt!1427191 lt!1427187))))

(assert (=> d!1190867 true))

(declare-fun _$46!1683 () Unit!62145)

(assert (=> d!1190867 (= (choose!24307 lt!1427191 lt!1427187) _$46!1683)))

(declare-fun bs!589877 () Bool)

(assert (= bs!589877 d!1190867))

(assert (=> bs!589877 m!4608967))

(assert (=> bs!589877 m!4608967))

(assert (=> bs!589877 m!4609295))

(assert (=> d!1189837 d!1190867))

(assert (=> d!1189963 d!1189947))

(assert (=> d!1189963 d!1189943))

(declare-fun d!1190869 () Bool)

(assert (=> d!1190869 (isPrefix!3947 lt!1427181 (++!11262 lt!1427181 newSuffixResult!27))))

(assert (=> d!1190869 true))

(declare-fun _$46!1684 () Unit!62145)

(assert (=> d!1190869 (= (choose!24307 lt!1427181 newSuffixResult!27) _$46!1684)))

(declare-fun bs!589878 () Bool)

(assert (= bs!589878 d!1190869))

(assert (=> bs!589878 m!4609015))

(assert (=> bs!589878 m!4609015))

(assert (=> bs!589878 m!4609017))

(assert (=> d!1189963 d!1190869))

(declare-fun d!1190873 () Bool)

(assert (=> d!1190873 (= lt!1427181 lt!1427191)))

(assert (=> d!1190873 true))

(declare-fun _$60!819 () Unit!62145)

(assert (=> d!1190873 (= (choose!24322 lt!1427181 lt!1427191 lt!1427222) _$60!819)))

(assert (=> d!1190173 d!1190873))

(assert (=> d!1190173 d!1190089))

(declare-fun d!1190881 () Bool)

(declare-fun lt!1428006 () Int)

(assert (=> d!1190881 (>= lt!1428006 0)))

(declare-fun e!2494362 () Int)

(assert (=> d!1190881 (= lt!1428006 e!2494362)))

(declare-fun c!694941 () Bool)

(assert (=> d!1190881 (= c!694941 ((_ is Nil!43030) lt!1427194))))

(assert (=> d!1190881 (= (size!32171 lt!1427194) lt!1428006)))

(declare-fun b!4021083 () Bool)

(assert (=> b!4021083 (= e!2494362 0)))

(declare-fun b!4021084 () Bool)

(assert (=> b!4021084 (= e!2494362 (+ 1 (size!32171 (t!333487 lt!1427194))))))

(assert (= (and d!1190881 c!694941) b!4021083))

(assert (= (and d!1190881 (not c!694941)) b!4021084))

(declare-fun m!4611765 () Bool)

(assert (=> b!4021084 m!4611765))

(assert (=> b!4019716 d!1190881))

(assert (=> b!4019716 d!1189967))

(declare-fun b!4021088 () Bool)

(declare-fun res!1636123 () Bool)

(declare-fun e!2494364 () Bool)

(assert (=> b!4021088 (=> (not res!1636123) (not e!2494364))))

(assert (=> b!4021088 (= res!1636123 (= (head!8527 (tail!6259 lt!1427191)) (head!8527 (tail!6259 lt!1427222))))))

(declare-fun b!4021090 () Bool)

(declare-fun e!2494365 () Bool)

(assert (=> b!4021090 (= e!2494365 (>= (size!32171 (tail!6259 lt!1427222)) (size!32171 (tail!6259 lt!1427191))))))

(declare-fun d!1190885 () Bool)

(assert (=> d!1190885 e!2494365))

(declare-fun res!1636122 () Bool)

(assert (=> d!1190885 (=> res!1636122 e!2494365)))

(declare-fun lt!1428008 () Bool)

(assert (=> d!1190885 (= res!1636122 (not lt!1428008))))

(declare-fun e!2494366 () Bool)

(assert (=> d!1190885 (= lt!1428008 e!2494366)))

(declare-fun res!1636124 () Bool)

(assert (=> d!1190885 (=> res!1636124 e!2494366)))

(assert (=> d!1190885 (= res!1636124 ((_ is Nil!43030) (tail!6259 lt!1427191)))))

(assert (=> d!1190885 (= (isPrefix!3947 (tail!6259 lt!1427191) (tail!6259 lt!1427222)) lt!1428008)))

(declare-fun b!4021087 () Bool)

(assert (=> b!4021087 (= e!2494366 e!2494364)))

(declare-fun res!1636125 () Bool)

(assert (=> b!4021087 (=> (not res!1636125) (not e!2494364))))

(assert (=> b!4021087 (= res!1636125 (not ((_ is Nil!43030) (tail!6259 lt!1427222))))))

(declare-fun b!4021089 () Bool)

(assert (=> b!4021089 (= e!2494364 (isPrefix!3947 (tail!6259 (tail!6259 lt!1427191)) (tail!6259 (tail!6259 lt!1427222))))))

(assert (= (and d!1190885 (not res!1636124)) b!4021087))

(assert (= (and b!4021087 res!1636125) b!4021088))

(assert (= (and b!4021088 res!1636123) b!4021089))

(assert (= (and d!1190885 (not res!1636122)) b!4021090))

(assert (=> b!4021088 m!4609285))

(assert (=> b!4021088 m!4611159))

(assert (=> b!4021088 m!4610041))

(assert (=> b!4021088 m!4611403))

(assert (=> b!4021090 m!4610041))

(assert (=> b!4021090 m!4610925))

(assert (=> b!4021090 m!4609285))

(assert (=> b!4021090 m!4611245))

(assert (=> b!4021089 m!4609285))

(assert (=> b!4021089 m!4611161))

(assert (=> b!4021089 m!4610041))

(assert (=> b!4021089 m!4610927))

(assert (=> b!4021089 m!4611161))

(assert (=> b!4021089 m!4610927))

(declare-fun m!4611771 () Bool)

(assert (=> b!4021089 m!4611771))

(assert (=> b!4020121 d!1190885))

(assert (=> b!4020121 d!1190431))

(assert (=> b!4020121 d!1190503))

(assert (=> bm!286573 d!1190433))

(declare-fun bs!589879 () Bool)

(declare-fun d!1190891 () Bool)

(assert (= bs!589879 (and d!1190891 d!1190405)))

(declare-fun lambda!127115 () Int)

(assert (=> bs!589879 (= (= (toValue!9368 (transformation!6860 (h!48452 rules!2999))) (toValue!9368 (transformation!6860 (rule!9912 token!484)))) (= lambda!127115 lambda!127099))))

(declare-fun bs!589880 () Bool)

(assert (= bs!589880 (and d!1190891 d!1190571)))

(assert (=> bs!589880 (= (= (toValue!9368 (transformation!6860 (h!48452 rules!2999))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) (= lambda!127115 lambda!127106))))

(assert (=> d!1190891 true))

(assert (=> d!1190891 (< (dynLambda!18241 order!22519 (toValue!9368 (transformation!6860 (h!48452 rules!2999)))) (dynLambda!18246 order!22525 lambda!127115))))

(assert (=> d!1190891 (= (equivClasses!2832 (toChars!9227 (transformation!6860 (h!48452 rules!2999))) (toValue!9368 (transformation!6860 (h!48452 rules!2999)))) (Forall2!1075 lambda!127115))))

(declare-fun bs!589881 () Bool)

(assert (= bs!589881 d!1190891))

(declare-fun m!4611779 () Bool)

(assert (=> bs!589881 m!4611779))

(assert (=> b!4020033 d!1190891))

(assert (=> b!4019700 d!1190429))

(assert (=> b!4019700 d!1190431))

(declare-fun d!1190895 () Bool)

(declare-fun lt!1428012 () Int)

(assert (=> d!1190895 (>= lt!1428012 0)))

(declare-fun e!2494378 () Int)

(assert (=> d!1190895 (= lt!1428012 e!2494378)))

(declare-fun c!694947 () Bool)

(assert (=> d!1190895 (= c!694947 ((_ is Nil!43030) lt!1427458))))

(assert (=> d!1190895 (= (size!32171 lt!1427458) lt!1428012)))

(declare-fun b!4021111 () Bool)

(assert (=> b!4021111 (= e!2494378 0)))

(declare-fun b!4021112 () Bool)

(assert (=> b!4021112 (= e!2494378 (+ 1 (size!32171 (t!333487 lt!1427458))))))

(assert (= (and d!1190895 c!694947) b!4021111))

(assert (= (and d!1190895 (not c!694947)) b!4021112))

(declare-fun m!4611781 () Bool)

(assert (=> b!4021112 m!4611781))

(assert (=> b!4019960 d!1190895))

(assert (=> b!4019960 d!1190159))

(assert (=> b!4019960 d!1190813))

(assert (=> b!4019941 d!1190395))

(declare-fun d!1190897 () Bool)

(declare-fun lt!1428013 () Int)

(assert (=> d!1190897 (>= lt!1428013 0)))

(declare-fun e!2494379 () Int)

(assert (=> d!1190897 (= lt!1428013 e!2494379)))

(declare-fun c!694948 () Bool)

(assert (=> d!1190897 (= c!694948 ((_ is Nil!43030) (originalCharacters!7460 (_1!24213 (get!14131 lt!1427443)))))))

(assert (=> d!1190897 (= (size!32171 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427443)))) lt!1428013)))

(declare-fun b!4021113 () Bool)

(assert (=> b!4021113 (= e!2494379 0)))

(declare-fun b!4021114 () Bool)

(assert (=> b!4021114 (= e!2494379 (+ 1 (size!32171 (t!333487 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427443)))))))))

(assert (= (and d!1190897 c!694948) b!4021113))

(assert (= (and d!1190897 (not c!694948)) b!4021114))

(declare-fun m!4611787 () Bool)

(assert (=> b!4021114 m!4611787))

(assert (=> b!4019941 d!1190897))

(declare-fun b!4021117 () Bool)

(declare-fun res!1636139 () Bool)

(declare-fun e!2494381 () Bool)

(assert (=> b!4021117 (=> (not res!1636139) (not e!2494381))))

(declare-fun lt!1428014 () List!43154)

(assert (=> b!4021117 (= res!1636139 (= (size!32171 lt!1428014) (+ (size!32171 (t!333487 lt!1427181)) (size!32171 newSuffixResult!27))))))

(declare-fun b!4021115 () Bool)

(declare-fun e!2494380 () List!43154)

(assert (=> b!4021115 (= e!2494380 newSuffixResult!27)))

(declare-fun d!1190899 () Bool)

(assert (=> d!1190899 e!2494381))

(declare-fun res!1636138 () Bool)

(assert (=> d!1190899 (=> (not res!1636138) (not e!2494381))))

(assert (=> d!1190899 (= res!1636138 (= (content!6526 lt!1428014) ((_ map or) (content!6526 (t!333487 lt!1427181)) (content!6526 newSuffixResult!27))))))

(assert (=> d!1190899 (= lt!1428014 e!2494380)))

(declare-fun c!694949 () Bool)

(assert (=> d!1190899 (= c!694949 ((_ is Nil!43030) (t!333487 lt!1427181)))))

(assert (=> d!1190899 (= (++!11262 (t!333487 lt!1427181) newSuffixResult!27) lt!1428014)))

(declare-fun b!4021118 () Bool)

(assert (=> b!4021118 (= e!2494381 (or (not (= newSuffixResult!27 Nil!43030)) (= lt!1428014 (t!333487 lt!1427181))))))

(declare-fun b!4021116 () Bool)

(assert (=> b!4021116 (= e!2494380 (Cons!43030 (h!48450 (t!333487 lt!1427181)) (++!11262 (t!333487 (t!333487 lt!1427181)) newSuffixResult!27)))))

(assert (= (and d!1190899 c!694949) b!4021115))

(assert (= (and d!1190899 (not c!694949)) b!4021116))

(assert (= (and d!1190899 res!1636138) b!4021117))

(assert (= (and b!4021117 res!1636139) b!4021118))

(declare-fun m!4611793 () Bool)

(assert (=> b!4021117 m!4611793))

(assert (=> b!4021117 m!4609659))

(assert (=> b!4021117 m!4609617))

(declare-fun m!4611795 () Bool)

(assert (=> d!1190899 m!4611795))

(assert (=> d!1190899 m!4610903))

(assert (=> d!1190899 m!4609623))

(declare-fun m!4611797 () Bool)

(assert (=> b!4021116 m!4611797))

(assert (=> b!4019739 d!1190899))

(declare-fun b!4021131 () Bool)

(declare-fun res!1636141 () Bool)

(declare-fun e!2494388 () Bool)

(assert (=> b!4021131 (=> (not res!1636141) (not e!2494388))))

(declare-fun lt!1428016 () List!43154)

(assert (=> b!4021131 (= res!1636141 (= (size!32171 lt!1428016) (+ (size!32171 (t!333487 lt!1427218)) (size!32171 suffix!1299))))))

(declare-fun b!4021129 () Bool)

(declare-fun e!2494387 () List!43154)

(assert (=> b!4021129 (= e!2494387 suffix!1299)))

(declare-fun d!1190903 () Bool)

(assert (=> d!1190903 e!2494388))

(declare-fun res!1636140 () Bool)

(assert (=> d!1190903 (=> (not res!1636140) (not e!2494388))))

(assert (=> d!1190903 (= res!1636140 (= (content!6526 lt!1428016) ((_ map or) (content!6526 (t!333487 lt!1427218)) (content!6526 suffix!1299))))))

(assert (=> d!1190903 (= lt!1428016 e!2494387)))

(declare-fun c!694955 () Bool)

(assert (=> d!1190903 (= c!694955 ((_ is Nil!43030) (t!333487 lt!1427218)))))

(assert (=> d!1190903 (= (++!11262 (t!333487 lt!1427218) suffix!1299) lt!1428016)))

(declare-fun b!4021132 () Bool)

(assert (=> b!4021132 (= e!2494388 (or (not (= suffix!1299 Nil!43030)) (= lt!1428016 (t!333487 lt!1427218))))))

(declare-fun b!4021130 () Bool)

(assert (=> b!4021130 (= e!2494387 (Cons!43030 (h!48450 (t!333487 lt!1427218)) (++!11262 (t!333487 (t!333487 lt!1427218)) suffix!1299)))))

(assert (= (and d!1190903 c!694955) b!4021129))

(assert (= (and d!1190903 (not c!694955)) b!4021130))

(assert (= (and d!1190903 res!1636140) b!4021131))

(assert (= (and b!4021131 res!1636141) b!4021132))

(declare-fun m!4611799 () Bool)

(assert (=> b!4021131 m!4611799))

(assert (=> b!4021131 m!4611647))

(assert (=> b!4021131 m!4608933))

(declare-fun m!4611803 () Bool)

(assert (=> d!1190903 m!4611803))

(assert (=> d!1190903 m!4611587))

(assert (=> d!1190903 m!4609995))

(declare-fun m!4611807 () Bool)

(assert (=> b!4021130 m!4611807))

(assert (=> b!4019999 d!1190903))

(assert (=> b!4019524 d!1190453))

(assert (=> b!4019524 d!1190455))

(assert (=> b!4019524 d!1190375))

(assert (=> b!4019933 d!1190395))

(declare-fun d!1190905 () Bool)

(assert (=> d!1190905 (= (apply!10057 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427443)))) (seqFromList!5085 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427443))))) (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427443))))) (seqFromList!5085 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427443))))))))

(declare-fun b_lambda!117339 () Bool)

(assert (=> (not b_lambda!117339) (not d!1190905)))

(declare-fun tb!241765 () Bool)

(declare-fun t!333674 () Bool)

(assert (=> (and b!4019334 (= (toValue!9368 (transformation!6860 (h!48452 rules!2999))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427443)))))) t!333674) tb!241765))

(declare-fun result!293002 () Bool)

(assert (=> tb!241765 (= result!293002 (inv!21 (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427443))))) (seqFromList!5085 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427443)))))))))

(declare-fun m!4611817 () Bool)

(assert (=> tb!241765 m!4611817))

(assert (=> d!1190905 t!333674))

(declare-fun b_and!308971 () Bool)

(assert (= b_and!308947 (and (=> t!333674 result!293002) b_and!308971)))

(declare-fun t!333676 () Bool)

(declare-fun tb!241767 () Bool)

(assert (=> (and b!4019363 (= (toValue!9368 (transformation!6860 (rule!9912 token!484))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427443)))))) t!333676) tb!241767))

(declare-fun result!293004 () Bool)

(assert (= result!293004 result!293002))

(assert (=> d!1190905 t!333676))

(declare-fun b_and!308973 () Bool)

(assert (= b_and!308949 (and (=> t!333676 result!293004) b_and!308973)))

(declare-fun tb!241769 () Bool)

(declare-fun t!333678 () Bool)

(assert (=> (and b!4020174 (= (toValue!9368 (transformation!6860 (h!48452 (t!333489 rules!2999)))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427443)))))) t!333678) tb!241769))

(declare-fun result!293006 () Bool)

(assert (= result!293006 result!293002))

(assert (=> d!1190905 t!333678))

(declare-fun b_and!308975 () Bool)

(assert (= b_and!308951 (and (=> t!333678 result!293006) b_and!308975)))

(assert (=> d!1190905 m!4609883))

(declare-fun m!4611819 () Bool)

(assert (=> d!1190905 m!4611819))

(assert (=> b!4019933 d!1190905))

(declare-fun d!1190913 () Bool)

(assert (=> d!1190913 (= (seqFromList!5085 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427443)))) (fromListB!2324 (originalCharacters!7460 (_1!24213 (get!14131 lt!1427443)))))))

(declare-fun bs!589884 () Bool)

(assert (= bs!589884 d!1190913))

(declare-fun m!4611821 () Bool)

(assert (=> bs!589884 m!4611821))

(assert (=> b!4019933 d!1190913))

(declare-fun b!4021138 () Bool)

(declare-fun res!1636143 () Bool)

(declare-fun e!2494392 () Bool)

(assert (=> b!4021138 (=> (not res!1636143) (not e!2494392))))

(assert (=> b!4021138 (= res!1636143 (= (head!8527 (tail!6259 lt!1427217)) (head!8527 (tail!6259 lt!1427217))))))

(declare-fun b!4021140 () Bool)

(declare-fun e!2494393 () Bool)

(assert (=> b!4021140 (= e!2494393 (>= (size!32171 (tail!6259 lt!1427217)) (size!32171 (tail!6259 lt!1427217))))))

(declare-fun d!1190915 () Bool)

(assert (=> d!1190915 e!2494393))

(declare-fun res!1636142 () Bool)

(assert (=> d!1190915 (=> res!1636142 e!2494393)))

(declare-fun lt!1428019 () Bool)

(assert (=> d!1190915 (= res!1636142 (not lt!1428019))))

(declare-fun e!2494394 () Bool)

(assert (=> d!1190915 (= lt!1428019 e!2494394)))

(declare-fun res!1636144 () Bool)

(assert (=> d!1190915 (=> res!1636144 e!2494394)))

(assert (=> d!1190915 (= res!1636144 ((_ is Nil!43030) (tail!6259 lt!1427217)))))

(assert (=> d!1190915 (= (isPrefix!3947 (tail!6259 lt!1427217) (tail!6259 lt!1427217)) lt!1428019)))

(declare-fun b!4021137 () Bool)

(assert (=> b!4021137 (= e!2494394 e!2494392)))

(declare-fun res!1636145 () Bool)

(assert (=> b!4021137 (=> (not res!1636145) (not e!2494392))))

(assert (=> b!4021137 (= res!1636145 (not ((_ is Nil!43030) (tail!6259 lt!1427217))))))

(declare-fun b!4021139 () Bool)

(assert (=> b!4021139 (= e!2494392 (isPrefix!3947 (tail!6259 (tail!6259 lt!1427217)) (tail!6259 (tail!6259 lt!1427217))))))

(assert (= (and d!1190915 (not res!1636144)) b!4021137))

(assert (= (and b!4021137 res!1636145) b!4021138))

(assert (= (and b!4021138 res!1636143) b!4021139))

(assert (= (and d!1190915 (not res!1636142)) b!4021140))

(assert (=> b!4021138 m!4609519))

(assert (=> b!4021138 m!4611241))

(assert (=> b!4021138 m!4609519))

(assert (=> b!4021138 m!4611241))

(assert (=> b!4021140 m!4609519))

(assert (=> b!4021140 m!4611243))

(assert (=> b!4021140 m!4609519))

(assert (=> b!4021140 m!4611243))

(assert (=> b!4021139 m!4609519))

(assert (=> b!4021139 m!4611247))

(assert (=> b!4021139 m!4609519))

(assert (=> b!4021139 m!4611247))

(assert (=> b!4021139 m!4611247))

(assert (=> b!4021139 m!4611247))

(declare-fun m!4611827 () Bool)

(assert (=> b!4021139 m!4611827))

(assert (=> b!4019980 d!1190915))

(assert (=> b!4019980 d!1190635))

(declare-fun b!4021148 () Bool)

(declare-fun res!1636151 () Bool)

(declare-fun e!2494399 () Bool)

(assert (=> b!4021148 (=> (not res!1636151) (not e!2494399))))

(assert (=> b!4021148 (= res!1636151 (= (head!8527 (tail!6259 lt!1427191)) (head!8527 (tail!6259 lt!1427199))))))

(declare-fun b!4021150 () Bool)

(declare-fun e!2494400 () Bool)

(assert (=> b!4021150 (= e!2494400 (>= (size!32171 (tail!6259 lt!1427199)) (size!32171 (tail!6259 lt!1427191))))))

(declare-fun d!1190921 () Bool)

(assert (=> d!1190921 e!2494400))

(declare-fun res!1636150 () Bool)

(assert (=> d!1190921 (=> res!1636150 e!2494400)))

(declare-fun lt!1428022 () Bool)

(assert (=> d!1190921 (= res!1636150 (not lt!1428022))))

(declare-fun e!2494401 () Bool)

(assert (=> d!1190921 (= lt!1428022 e!2494401)))

(declare-fun res!1636152 () Bool)

(assert (=> d!1190921 (=> res!1636152 e!2494401)))

(assert (=> d!1190921 (= res!1636152 ((_ is Nil!43030) (tail!6259 lt!1427191)))))

(assert (=> d!1190921 (= (isPrefix!3947 (tail!6259 lt!1427191) (tail!6259 lt!1427199)) lt!1428022)))

(declare-fun b!4021147 () Bool)

(assert (=> b!4021147 (= e!2494401 e!2494399)))

(declare-fun res!1636153 () Bool)

(assert (=> b!4021147 (=> (not res!1636153) (not e!2494399))))

(assert (=> b!4021147 (= res!1636153 (not ((_ is Nil!43030) (tail!6259 lt!1427199))))))

(declare-fun b!4021149 () Bool)

(assert (=> b!4021149 (= e!2494399 (isPrefix!3947 (tail!6259 (tail!6259 lt!1427191)) (tail!6259 (tail!6259 lt!1427199))))))

(assert (= (and d!1190921 (not res!1636152)) b!4021147))

(assert (= (and b!4021147 res!1636153) b!4021148))

(assert (= (and b!4021148 res!1636151) b!4021149))

(assert (= (and d!1190921 (not res!1636150)) b!4021150))

(assert (=> b!4021148 m!4609285))

(assert (=> b!4021148 m!4611159))

(assert (=> b!4021148 m!4610119))

(declare-fun m!4611837 () Bool)

(assert (=> b!4021148 m!4611837))

(assert (=> b!4021150 m!4610119))

(declare-fun m!4611839 () Bool)

(assert (=> b!4021150 m!4611839))

(assert (=> b!4021150 m!4609285))

(assert (=> b!4021150 m!4611245))

(assert (=> b!4021149 m!4609285))

(assert (=> b!4021149 m!4611161))

(assert (=> b!4021149 m!4610119))

(declare-fun m!4611841 () Bool)

(assert (=> b!4021149 m!4611841))

(assert (=> b!4021149 m!4611161))

(assert (=> b!4021149 m!4611841))

(declare-fun m!4611843 () Bool)

(assert (=> b!4021149 m!4611843))

(assert (=> b!4020065 d!1190921))

(assert (=> b!4020065 d!1190431))

(declare-fun d!1190927 () Bool)

(assert (=> d!1190927 (= (tail!6259 lt!1427199) (t!333487 lt!1427199))))

(assert (=> b!4020065 d!1190927))

(declare-fun d!1190929 () Bool)

(assert (=> d!1190929 (= (inv!57477 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (value!216144 token!484))) (isBalanced!3664 (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (value!216144 token!484)))))))

(declare-fun bs!589887 () Bool)

(assert (= bs!589887 d!1190929))

(declare-fun m!4611845 () Bool)

(assert (=> bs!589887 m!4611845))

(assert (=> tb!241617 d!1190929))

(declare-fun d!1190931 () Bool)

(declare-fun e!2494405 () Bool)

(assert (=> d!1190931 e!2494405))

(declare-fun res!1636158 () Bool)

(assert (=> d!1190931 (=> (not res!1636158) (not e!2494405))))

(declare-fun lt!1428024 () BalanceConc!25736)

(assert (=> d!1190931 (= res!1636158 (= (list!15996 lt!1428024) lt!1427181))))

(assert (=> d!1190931 (= lt!1428024 (BalanceConc!25737 (fromList!846 lt!1427181)))))

(assert (=> d!1190931 (= (fromListB!2324 lt!1427181) lt!1428024)))

(declare-fun b!4021155 () Bool)

(assert (=> b!4021155 (= e!2494405 (isBalanced!3664 (fromList!846 lt!1427181)))))

(assert (= (and d!1190931 res!1636158) b!4021155))

(declare-fun m!4611849 () Bool)

(assert (=> d!1190931 m!4611849))

(declare-fun m!4611851 () Bool)

(assert (=> d!1190931 m!4611851))

(assert (=> b!4021155 m!4611851))

(assert (=> b!4021155 m!4611851))

(declare-fun m!4611853 () Bool)

(assert (=> b!4021155 m!4611853))

(assert (=> d!1189931 d!1190931))

(declare-fun b!4021161 () Bool)

(declare-fun res!1636160 () Bool)

(declare-fun e!2494407 () Bool)

(assert (=> b!4021161 (=> (not res!1636160) (not e!2494407))))

(assert (=> b!4021161 (= res!1636160 (= (head!8527 lt!1427181) (head!8527 (++!11262 lt!1427181 lt!1427214))))))

(declare-fun b!4021163 () Bool)

(declare-fun e!2494409 () Bool)

(assert (=> b!4021163 (= e!2494409 (>= (size!32171 (++!11262 lt!1427181 lt!1427214)) (size!32171 lt!1427181)))))

(declare-fun d!1190935 () Bool)

(assert (=> d!1190935 e!2494409))

(declare-fun res!1636159 () Bool)

(assert (=> d!1190935 (=> res!1636159 e!2494409)))

(declare-fun lt!1428027 () Bool)

(assert (=> d!1190935 (= res!1636159 (not lt!1428027))))

(declare-fun e!2494410 () Bool)

(assert (=> d!1190935 (= lt!1428027 e!2494410)))

(declare-fun res!1636161 () Bool)

(assert (=> d!1190935 (=> res!1636161 e!2494410)))

(assert (=> d!1190935 (= res!1636161 ((_ is Nil!43030) lt!1427181))))

(assert (=> d!1190935 (= (isPrefix!3947 lt!1427181 (++!11262 lt!1427181 lt!1427214)) lt!1428027)))

(declare-fun b!4021160 () Bool)

(assert (=> b!4021160 (= e!2494410 e!2494407)))

(declare-fun res!1636162 () Bool)

(assert (=> b!4021160 (=> (not res!1636162) (not e!2494407))))

(assert (=> b!4021160 (= res!1636162 (not ((_ is Nil!43030) (++!11262 lt!1427181 lt!1427214))))))

(declare-fun b!4021162 () Bool)

(assert (=> b!4021162 (= e!2494407 (isPrefix!3947 (tail!6259 lt!1427181) (tail!6259 (++!11262 lt!1427181 lt!1427214))))))

(assert (= (and d!1190935 (not res!1636161)) b!4021160))

(assert (= (and b!4021160 res!1636162) b!4021161))

(assert (= (and b!4021161 res!1636160) b!4021162))

(assert (= (and d!1190935 (not res!1636159)) b!4021163))

(assert (=> b!4021161 m!4609511))

(assert (=> b!4021161 m!4608991))

(declare-fun m!4611859 () Bool)

(assert (=> b!4021161 m!4611859))

(assert (=> b!4021163 m!4608991))

(declare-fun m!4611861 () Bool)

(assert (=> b!4021163 m!4611861))

(assert (=> b!4021163 m!4609027))

(assert (=> b!4021162 m!4609517))

(assert (=> b!4021162 m!4608991))

(declare-fun m!4611863 () Bool)

(assert (=> b!4021162 m!4611863))

(assert (=> b!4021162 m!4609517))

(assert (=> b!4021162 m!4611863))

(declare-fun m!4611865 () Bool)

(assert (=> b!4021162 m!4611865))

(assert (=> d!1190087 d!1190935))

(assert (=> d!1190087 d!1190119))

(declare-fun d!1190941 () Bool)

(assert (=> d!1190941 (isPrefix!3947 lt!1427181 (++!11262 lt!1427181 lt!1427214))))

(assert (=> d!1190941 true))

(declare-fun _$46!1686 () Unit!62145)

(assert (=> d!1190941 (= (choose!24307 lt!1427181 lt!1427214) _$46!1686)))

(declare-fun bs!589888 () Bool)

(assert (= bs!589888 d!1190941))

(assert (=> bs!589888 m!4608991))

(assert (=> bs!589888 m!4608991))

(assert (=> bs!589888 m!4610035))

(assert (=> d!1190087 d!1190941))

(assert (=> b!4019551 d!1190491))

(declare-fun d!1190943 () Bool)

(assert (=> d!1190943 (= (head!8527 lt!1427176) (h!48450 lt!1427176))))

(assert (=> b!4019551 d!1190943))

(declare-fun d!1190947 () Bool)

(assert (=> d!1190947 (= (list!15996 lt!1427449) (list!15998 (c!694546 lt!1427449)))))

(declare-fun bs!589889 () Bool)

(assert (= bs!589889 d!1190947))

(declare-fun m!4611877 () Bool)

(assert (=> bs!589889 m!4611877))

(assert (=> d!1190033 d!1190947))

(assert (=> b!4020046 d!1190425))

(assert (=> b!4020046 d!1190427))

(assert (=> b!4020046 d!1190363))

(declare-fun b!4021170 () Bool)

(declare-fun res!1636166 () Bool)

(declare-fun e!2494414 () Bool)

(assert (=> b!4021170 (=> (not res!1636166) (not e!2494414))))

(declare-fun lt!1428029 () List!43154)

(assert (=> b!4021170 (= res!1636166 (= (size!32171 lt!1428029) (+ (size!32171 (t!333487 prefix!494)) (size!32171 newSuffix!27))))))

(declare-fun b!4021168 () Bool)

(declare-fun e!2494413 () List!43154)

(assert (=> b!4021168 (= e!2494413 newSuffix!27)))

(declare-fun d!1190951 () Bool)

(assert (=> d!1190951 e!2494414))

(declare-fun res!1636165 () Bool)

(assert (=> d!1190951 (=> (not res!1636165) (not e!2494414))))

(assert (=> d!1190951 (= res!1636165 (= (content!6526 lt!1428029) ((_ map or) (content!6526 (t!333487 prefix!494)) (content!6526 newSuffix!27))))))

(assert (=> d!1190951 (= lt!1428029 e!2494413)))

(declare-fun c!694962 () Bool)

(assert (=> d!1190951 (= c!694962 ((_ is Nil!43030) (t!333487 prefix!494)))))

(assert (=> d!1190951 (= (++!11262 (t!333487 prefix!494) newSuffix!27) lt!1428029)))

(declare-fun b!4021171 () Bool)

(assert (=> b!4021171 (= e!2494414 (or (not (= newSuffix!27 Nil!43030)) (= lt!1428029 (t!333487 prefix!494))))))

(declare-fun b!4021169 () Bool)

(assert (=> b!4021169 (= e!2494413 (Cons!43030 (h!48450 (t!333487 prefix!494)) (++!11262 (t!333487 (t!333487 prefix!494)) newSuffix!27)))))

(assert (= (and d!1190951 c!694962) b!4021168))

(assert (= (and d!1190951 (not c!694962)) b!4021169))

(assert (= (and d!1190951 res!1636165) b!4021170))

(assert (= (and b!4021170 res!1636166) b!4021171))

(declare-fun m!4611879 () Bool)

(assert (=> b!4021170 m!4611879))

(assert (=> b!4021170 m!4610247))

(assert (=> b!4021170 m!4608935))

(declare-fun m!4611881 () Bool)

(assert (=> d!1190951 m!4611881))

(assert (=> d!1190951 m!4610629))

(assert (=> d!1190951 m!4609967))

(declare-fun m!4611883 () Bool)

(assert (=> b!4021169 m!4611883))

(assert (=> b!4019983 d!1190951))

(declare-fun d!1190955 () Bool)

(declare-fun c!694963 () Bool)

(assert (=> d!1190955 (= c!694963 ((_ is Nil!43030) lt!1427451))))

(declare-fun e!2494416 () (InoxSet C!23716))

(assert (=> d!1190955 (= (content!6526 lt!1427451) e!2494416)))

(declare-fun b!4021172 () Bool)

(assert (=> b!4021172 (= e!2494416 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4021173 () Bool)

(assert (=> b!4021173 (= e!2494416 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 lt!1427451) true) (content!6526 (t!333487 lt!1427451))))))

(assert (= (and d!1190955 c!694963) b!4021172))

(assert (= (and d!1190955 (not c!694963)) b!4021173))

(declare-fun m!4611887 () Bool)

(assert (=> b!4021173 m!4611887))

(declare-fun m!4611889 () Bool)

(assert (=> b!4021173 m!4611889))

(assert (=> d!1190037 d!1190955))

(assert (=> d!1190037 d!1190483))

(declare-fun d!1190957 () Bool)

(declare-fun c!694964 () Bool)

(assert (=> d!1190957 (= c!694964 ((_ is Nil!43030) (_2!24213 (v!39647 lt!1427206))))))

(declare-fun e!2494417 () (InoxSet C!23716))

(assert (=> d!1190957 (= (content!6526 (_2!24213 (v!39647 lt!1427206))) e!2494417)))

(declare-fun b!4021174 () Bool)

(assert (=> b!4021174 (= e!2494417 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4021175 () Bool)

(assert (=> b!4021175 (= e!2494417 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 (_2!24213 (v!39647 lt!1427206))) true) (content!6526 (t!333487 (_2!24213 (v!39647 lt!1427206))))))))

(assert (= (and d!1190957 c!694964) b!4021174))

(assert (= (and d!1190957 (not c!694964)) b!4021175))

(declare-fun m!4611891 () Bool)

(assert (=> b!4021175 m!4611891))

(declare-fun m!4611893 () Bool)

(assert (=> b!4021175 m!4611893))

(assert (=> d!1190037 d!1190957))

(declare-fun b!4021177 () Bool)

(declare-fun res!1636168 () Bool)

(declare-fun e!2494418 () Bool)

(assert (=> b!4021177 (=> (not res!1636168) (not e!2494418))))

(assert (=> b!4021177 (= res!1636168 (= (head!8527 (tail!6259 lt!1427181)) (head!8527 (tail!6259 lt!1427194))))))

(declare-fun b!4021179 () Bool)

(declare-fun e!2494419 () Bool)

(assert (=> b!4021179 (= e!2494419 (>= (size!32171 (tail!6259 lt!1427194)) (size!32171 (tail!6259 lt!1427181))))))

(declare-fun d!1190959 () Bool)

(assert (=> d!1190959 e!2494419))

(declare-fun res!1636167 () Bool)

(assert (=> d!1190959 (=> res!1636167 e!2494419)))

(declare-fun lt!1428030 () Bool)

(assert (=> d!1190959 (= res!1636167 (not lt!1428030))))

(declare-fun e!2494420 () Bool)

(assert (=> d!1190959 (= lt!1428030 e!2494420)))

(declare-fun res!1636169 () Bool)

(assert (=> d!1190959 (=> res!1636169 e!2494420)))

(assert (=> d!1190959 (= res!1636169 ((_ is Nil!43030) (tail!6259 lt!1427181)))))

(assert (=> d!1190959 (= (isPrefix!3947 (tail!6259 lt!1427181) (tail!6259 lt!1427194)) lt!1428030)))

(declare-fun b!4021176 () Bool)

(assert (=> b!4021176 (= e!2494420 e!2494418)))

(declare-fun res!1636170 () Bool)

(assert (=> b!4021176 (=> (not res!1636170) (not e!2494418))))

(assert (=> b!4021176 (= res!1636170 (not ((_ is Nil!43030) (tail!6259 lt!1427194))))))

(declare-fun b!4021178 () Bool)

(assert (=> b!4021178 (= e!2494418 (isPrefix!3947 (tail!6259 (tail!6259 lt!1427181)) (tail!6259 (tail!6259 lt!1427194))))))

(assert (= (and d!1190959 (not res!1636169)) b!4021176))

(assert (= (and b!4021176 res!1636170) b!4021177))

(assert (= (and b!4021177 res!1636168) b!4021178))

(assert (= (and d!1190959 (not res!1636167)) b!4021179))

(assert (=> b!4021177 m!4609517))

(assert (=> b!4021177 m!4611401))

(assert (=> b!4021177 m!4609527))

(declare-fun m!4611899 () Bool)

(assert (=> b!4021177 m!4611899))

(assert (=> b!4021179 m!4609527))

(declare-fun m!4611901 () Bool)

(assert (=> b!4021179 m!4611901))

(assert (=> b!4021179 m!4609517))

(assert (=> b!4021179 m!4611405))

(assert (=> b!4021178 m!4609517))

(assert (=> b!4021178 m!4611407))

(assert (=> b!4021178 m!4609527))

(declare-fun m!4611903 () Bool)

(assert (=> b!4021178 m!4611903))

(assert (=> b!4021178 m!4611407))

(assert (=> b!4021178 m!4611903))

(declare-fun m!4611905 () Bool)

(assert (=> b!4021178 m!4611905))

(assert (=> b!4019715 d!1190959))

(assert (=> b!4019715 d!1190489))

(declare-fun d!1190967 () Bool)

(assert (=> d!1190967 (= (tail!6259 lt!1427194) (t!333487 lt!1427194))))

(assert (=> b!4019715 d!1190967))

(declare-fun b!4021184 () Bool)

(declare-fun e!2494427 () Bool)

(declare-fun e!2494425 () Bool)

(assert (=> b!4021184 (= e!2494427 e!2494425)))

(declare-fun res!1636177 () Bool)

(assert (=> b!4021184 (=> res!1636177 e!2494425)))

(declare-fun call!286711 () Bool)

(assert (=> b!4021184 (= res!1636177 call!286711)))

(declare-fun b!4021185 () Bool)

(declare-fun res!1636180 () Bool)

(declare-fun e!2494424 () Bool)

(assert (=> b!4021185 (=> (not res!1636180) (not e!2494424))))

(assert (=> b!4021185 (= res!1636180 (isEmpty!25696 (tail!6259 (tail!6259 lt!1427191))))))

(declare-fun b!4021186 () Bool)

(declare-fun e!2494426 () Bool)

(declare-fun lt!1428032 () Bool)

(assert (=> b!4021186 (= e!2494426 (not lt!1428032))))

(declare-fun b!4021187 () Bool)

(declare-fun res!1636175 () Bool)

(declare-fun e!2494423 () Bool)

(assert (=> b!4021187 (=> res!1636175 e!2494423)))

(assert (=> b!4021187 (= res!1636175 (not ((_ is ElementMatch!11765) (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (head!8527 lt!1427191)))))))

(assert (=> b!4021187 (= e!2494426 e!2494423)))

(declare-fun b!4021189 () Bool)

(declare-fun res!1636174 () Bool)

(assert (=> b!4021189 (=> res!1636174 e!2494425)))

(assert (=> b!4021189 (= res!1636174 (not (isEmpty!25696 (tail!6259 (tail!6259 lt!1427191)))))))

(declare-fun b!4021190 () Bool)

(declare-fun res!1636178 () Bool)

(assert (=> b!4021190 (=> (not res!1636178) (not e!2494424))))

(assert (=> b!4021190 (= res!1636178 (not call!286711))))

(declare-fun b!4021191 () Bool)

(declare-fun res!1636179 () Bool)

(assert (=> b!4021191 (=> res!1636179 e!2494423)))

(assert (=> b!4021191 (= res!1636179 e!2494424)))

(declare-fun res!1636173 () Bool)

(assert (=> b!4021191 (=> (not res!1636173) (not e!2494424))))

(assert (=> b!4021191 (= res!1636173 lt!1428032)))

(declare-fun b!4021192 () Bool)

(assert (=> b!4021192 (= e!2494425 (not (= (head!8527 (tail!6259 lt!1427191)) (c!694547 (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (head!8527 lt!1427191))))))))

(declare-fun b!4021193 () Bool)

(declare-fun e!2494428 () Bool)

(assert (=> b!4021193 (= e!2494428 (nullable!4126 (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (head!8527 lt!1427191))))))

(declare-fun b!4021194 () Bool)

(declare-fun e!2494429 () Bool)

(assert (=> b!4021194 (= e!2494429 e!2494426)))

(declare-fun c!694968 () Bool)

(assert (=> b!4021194 (= c!694968 ((_ is EmptyLang!11765) (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (head!8527 lt!1427191))))))

(declare-fun b!4021195 () Bool)

(assert (=> b!4021195 (= e!2494423 e!2494427)))

(declare-fun res!1636176 () Bool)

(assert (=> b!4021195 (=> (not res!1636176) (not e!2494427))))

(assert (=> b!4021195 (= res!1636176 (not lt!1428032))))

(declare-fun b!4021196 () Bool)

(assert (=> b!4021196 (= e!2494428 (matchR!5726 (derivativeStep!3535 (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (head!8527 lt!1427191)) (head!8527 (tail!6259 lt!1427191))) (tail!6259 (tail!6259 lt!1427191))))))

(declare-fun bm!286706 () Bool)

(assert (=> bm!286706 (= call!286711 (isEmpty!25696 (tail!6259 lt!1427191)))))

(declare-fun b!4021197 () Bool)

(assert (=> b!4021197 (= e!2494429 (= lt!1428032 call!286711))))

(declare-fun b!4021188 () Bool)

(assert (=> b!4021188 (= e!2494424 (= (head!8527 (tail!6259 lt!1427191)) (c!694547 (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (head!8527 lt!1427191)))))))

(declare-fun d!1190969 () Bool)

(assert (=> d!1190969 e!2494429))

(declare-fun c!694966 () Bool)

(assert (=> d!1190969 (= c!694966 ((_ is EmptyExpr!11765) (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (head!8527 lt!1427191))))))

(assert (=> d!1190969 (= lt!1428032 e!2494428)))

(declare-fun c!694967 () Bool)

(assert (=> d!1190969 (= c!694967 (isEmpty!25696 (tail!6259 lt!1427191)))))

(assert (=> d!1190969 (validRegex!5326 (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (head!8527 lt!1427191)))))

(assert (=> d!1190969 (= (matchR!5726 (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (head!8527 lt!1427191)) (tail!6259 lt!1427191)) lt!1428032)))

(assert (= (and d!1190969 c!694967) b!4021193))

(assert (= (and d!1190969 (not c!694967)) b!4021196))

(assert (= (and d!1190969 c!694966) b!4021197))

(assert (= (and d!1190969 (not c!694966)) b!4021194))

(assert (= (and b!4021194 c!694968) b!4021186))

(assert (= (and b!4021194 (not c!694968)) b!4021187))

(assert (= (and b!4021187 (not res!1636175)) b!4021191))

(assert (= (and b!4021191 res!1636173) b!4021190))

(assert (= (and b!4021190 res!1636178) b!4021185))

(assert (= (and b!4021185 res!1636180) b!4021188))

(assert (= (and b!4021191 (not res!1636179)) b!4021195))

(assert (= (and b!4021195 res!1636176) b!4021184))

(assert (= (and b!4021184 (not res!1636177)) b!4021189))

(assert (= (and b!4021189 (not res!1636174)) b!4021192))

(assert (= (or b!4021197 b!4021184 b!4021190) bm!286706))

(assert (=> b!4021192 m!4609285))

(assert (=> b!4021192 m!4611159))

(assert (=> b!4021188 m!4609285))

(assert (=> b!4021188 m!4611159))

(assert (=> b!4021185 m!4609285))

(assert (=> b!4021185 m!4611161))

(assert (=> b!4021185 m!4611161))

(assert (=> b!4021185 m!4611165))

(assert (=> b!4021193 m!4609507))

(declare-fun m!4611925 () Bool)

(assert (=> b!4021193 m!4611925))

(assert (=> bm!286706 m!4609285))

(assert (=> bm!286706 m!4609499))

(assert (=> b!4021189 m!4609285))

(assert (=> b!4021189 m!4611161))

(assert (=> b!4021189 m!4611161))

(assert (=> b!4021189 m!4611165))

(assert (=> d!1190969 m!4609285))

(assert (=> d!1190969 m!4609499))

(assert (=> d!1190969 m!4609507))

(declare-fun m!4611929 () Bool)

(assert (=> d!1190969 m!4611929))

(assert (=> b!4021196 m!4609285))

(assert (=> b!4021196 m!4611159))

(assert (=> b!4021196 m!4609507))

(assert (=> b!4021196 m!4611159))

(declare-fun m!4611933 () Bool)

(assert (=> b!4021196 m!4611933))

(assert (=> b!4021196 m!4609285))

(assert (=> b!4021196 m!4611161))

(assert (=> b!4021196 m!4611933))

(assert (=> b!4021196 m!4611161))

(declare-fun m!4611935 () Bool)

(assert (=> b!4021196 m!4611935))

(assert (=> b!4019707 d!1190969))

(declare-fun b!4021205 () Bool)

(declare-fun c!694972 () Bool)

(assert (=> b!4021205 (= c!694972 (nullable!4126 (regOne!24042 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))))

(declare-fun e!2494437 () Regex!11765)

(declare-fun e!2494434 () Regex!11765)

(assert (=> b!4021205 (= e!2494437 e!2494434)))

(declare-fun b!4021206 () Bool)

(declare-fun call!286715 () Regex!11765)

(assert (=> b!4021206 (= e!2494434 (Union!11765 (Concat!18856 call!286715 (regTwo!24042 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) EmptyLang!11765))))

(declare-fun bm!286707 () Bool)

(declare-fun call!286714 () Regex!11765)

(declare-fun c!694974 () Bool)

(declare-fun c!694976 () Bool)

(assert (=> bm!286707 (= call!286714 (derivativeStep!3535 (ite c!694976 (regOne!24043 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (ite c!694974 (reg!12094 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (regOne!24042 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))) (head!8527 lt!1427191)))))

(declare-fun bm!286708 () Bool)

(declare-fun call!286712 () Regex!11765)

(assert (=> bm!286708 (= call!286715 call!286712)))

(declare-fun b!4021207 () Bool)

(declare-fun e!2494435 () Regex!11765)

(assert (=> b!4021207 (= e!2494435 EmptyLang!11765)))

(declare-fun call!286713 () Regex!11765)

(declare-fun bm!286709 () Bool)

(assert (=> bm!286709 (= call!286713 (derivativeStep!3535 (ite c!694976 (regTwo!24043 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (regTwo!24042 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) (head!8527 lt!1427191)))))

(declare-fun b!4021208 () Bool)

(assert (=> b!4021208 (= e!2494434 (Union!11765 (Concat!18856 call!286715 (regTwo!24042 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) call!286713))))

(declare-fun b!4021209 () Bool)

(assert (=> b!4021209 (= c!694976 ((_ is Union!11765) (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(declare-fun e!2494436 () Regex!11765)

(declare-fun e!2494438 () Regex!11765)

(assert (=> b!4021209 (= e!2494436 e!2494438)))

(declare-fun bm!286710 () Bool)

(assert (=> bm!286710 (= call!286712 call!286714)))

(declare-fun b!4021210 () Bool)

(assert (=> b!4021210 (= e!2494437 (Concat!18856 call!286712 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(declare-fun b!4021212 () Bool)

(assert (=> b!4021212 (= e!2494438 e!2494437)))

(assert (=> b!4021212 (= c!694974 ((_ is Star!11765) (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(declare-fun b!4021213 () Bool)

(assert (=> b!4021213 (= e!2494436 (ite (= (head!8527 lt!1427191) (c!694547 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) EmptyExpr!11765 EmptyLang!11765))))

(declare-fun b!4021214 () Bool)

(assert (=> b!4021214 (= e!2494435 e!2494436)))

(declare-fun c!694973 () Bool)

(assert (=> b!4021214 (= c!694973 ((_ is ElementMatch!11765) (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(declare-fun b!4021211 () Bool)

(assert (=> b!4021211 (= e!2494438 (Union!11765 call!286714 call!286713))))

(declare-fun d!1190983 () Bool)

(declare-fun lt!1428034 () Regex!11765)

(assert (=> d!1190983 (validRegex!5326 lt!1428034)))

(assert (=> d!1190983 (= lt!1428034 e!2494435)))

(declare-fun c!694975 () Bool)

(assert (=> d!1190983 (= c!694975 (or ((_ is EmptyExpr!11765) (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) ((_ is EmptyLang!11765) (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))))

(assert (=> d!1190983 (validRegex!5326 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))

(assert (=> d!1190983 (= (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (head!8527 lt!1427191)) lt!1428034)))

(assert (= (and d!1190983 c!694975) b!4021207))

(assert (= (and d!1190983 (not c!694975)) b!4021214))

(assert (= (and b!4021214 c!694973) b!4021213))

(assert (= (and b!4021214 (not c!694973)) b!4021209))

(assert (= (and b!4021209 c!694976) b!4021211))

(assert (= (and b!4021209 (not c!694976)) b!4021212))

(assert (= (and b!4021212 c!694974) b!4021210))

(assert (= (and b!4021212 (not c!694974)) b!4021205))

(assert (= (and b!4021205 c!694972) b!4021208))

(assert (= (and b!4021205 (not c!694972)) b!4021206))

(assert (= (or b!4021208 b!4021206) bm!286708))

(assert (= (or b!4021210 bm!286708) bm!286710))

(assert (= (or b!4021211 bm!286710) bm!286707))

(assert (= (or b!4021211 b!4021208) bm!286709))

(declare-fun m!4611943 () Bool)

(assert (=> b!4021205 m!4611943))

(assert (=> bm!286707 m!4609279))

(declare-fun m!4611945 () Bool)

(assert (=> bm!286707 m!4611945))

(assert (=> bm!286709 m!4609279))

(declare-fun m!4611947 () Bool)

(assert (=> bm!286709 m!4611947))

(declare-fun m!4611949 () Bool)

(assert (=> d!1190983 m!4611949))

(assert (=> d!1190983 m!4609505))

(assert (=> b!4019707 d!1190983))

(assert (=> b!4019707 d!1190491))

(assert (=> b!4019707 d!1190431))

(declare-fun b!4021241 () Bool)

(declare-fun e!2494450 () List!43154)

(declare-fun list!16000 (IArray!26147) List!43154)

(assert (=> b!4021241 (= e!2494450 (list!16000 (xs!16377 (c!694546 (charsOf!4676 (_1!24213 (v!39647 lt!1427206)))))))))

(declare-fun b!4021243 () Bool)

(assert (=> b!4021243 (= e!2494450 (++!11262 (list!15998 (left!32435 (c!694546 (charsOf!4676 (_1!24213 (v!39647 lt!1427206)))))) (list!15998 (right!32765 (c!694546 (charsOf!4676 (_1!24213 (v!39647 lt!1427206))))))))))

(declare-fun b!4021238 () Bool)

(declare-fun e!2494449 () List!43154)

(assert (=> b!4021238 (= e!2494449 Nil!43030)))

(declare-fun d!1190989 () Bool)

(declare-fun c!694985 () Bool)

(assert (=> d!1190989 (= c!694985 ((_ is Empty!13071) (c!694546 (charsOf!4676 (_1!24213 (v!39647 lt!1427206))))))))

(assert (=> d!1190989 (= (list!15998 (c!694546 (charsOf!4676 (_1!24213 (v!39647 lt!1427206))))) e!2494449)))

(declare-fun b!4021239 () Bool)

(assert (=> b!4021239 (= e!2494449 e!2494450)))

(declare-fun c!694986 () Bool)

(assert (=> b!4021239 (= c!694986 ((_ is Leaf!20208) (c!694546 (charsOf!4676 (_1!24213 (v!39647 lt!1427206))))))))

(assert (= (and d!1190989 c!694985) b!4021238))

(assert (= (and d!1190989 (not c!694985)) b!4021239))

(assert (= (and b!4021239 c!694986) b!4021241))

(assert (= (and b!4021239 (not c!694986)) b!4021243))

(declare-fun m!4611989 () Bool)

(assert (=> b!4021241 m!4611989))

(declare-fun m!4611991 () Bool)

(assert (=> b!4021243 m!4611991))

(declare-fun m!4611993 () Bool)

(assert (=> b!4021243 m!4611993))

(assert (=> b!4021243 m!4611991))

(assert (=> b!4021243 m!4611993))

(declare-fun m!4611995 () Bool)

(assert (=> b!4021243 m!4611995))

(assert (=> d!1190043 d!1190989))

(assert (=> b!4020120 d!1190491))

(assert (=> b!4020120 d!1190851))

(declare-fun b!4021260 () Bool)

(declare-fun res!1636198 () Bool)

(declare-fun e!2494460 () Bool)

(assert (=> b!4021260 (=> (not res!1636198) (not e!2494460))))

(declare-fun lt!1428042 () List!43154)

(assert (=> b!4021260 (= res!1636198 (= (size!32171 lt!1428042) (+ (size!32171 (t!333487 lt!1427191)) (size!32171 lt!1427218))))))

(declare-fun b!4021258 () Bool)

(declare-fun e!2494459 () List!43154)

(assert (=> b!4021258 (= e!2494459 lt!1427218)))

(declare-fun d!1190999 () Bool)

(assert (=> d!1190999 e!2494460))

(declare-fun res!1636197 () Bool)

(assert (=> d!1190999 (=> (not res!1636197) (not e!2494460))))

(assert (=> d!1190999 (= res!1636197 (= (content!6526 lt!1428042) ((_ map or) (content!6526 (t!333487 lt!1427191)) (content!6526 lt!1427218))))))

(assert (=> d!1190999 (= lt!1428042 e!2494459)))

(declare-fun c!694991 () Bool)

(assert (=> d!1190999 (= c!694991 ((_ is Nil!43030) (t!333487 lt!1427191)))))

(assert (=> d!1190999 (= (++!11262 (t!333487 lt!1427191) lt!1427218) lt!1428042)))

(declare-fun b!4021261 () Bool)

(assert (=> b!4021261 (= e!2494460 (or (not (= lt!1427218 Nil!43030)) (= lt!1428042 (t!333487 lt!1427191))))))

(declare-fun b!4021259 () Bool)

(assert (=> b!4021259 (= e!2494459 (Cons!43030 (h!48450 (t!333487 lt!1427191)) (++!11262 (t!333487 (t!333487 lt!1427191)) lt!1427218)))))

(assert (= (and d!1190999 c!694991) b!4021258))

(assert (= (and d!1190999 (not c!694991)) b!4021259))

(assert (= (and d!1190999 res!1636197) b!4021260))

(assert (= (and b!4021260 res!1636198) b!4021261))

(declare-fun m!4611997 () Bool)

(assert (=> b!4021260 m!4611997))

(assert (=> b!4021260 m!4610245))

(assert (=> b!4021260 m!4609923))

(declare-fun m!4611999 () Bool)

(assert (=> d!1190999 m!4611999))

(assert (=> d!1190999 m!4610595))

(assert (=> d!1190999 m!4609929))

(declare-fun m!4612001 () Bool)

(assert (=> b!4021259 m!4612001))

(assert (=> b!4019959 d!1190999))

(assert (=> b!4019699 d!1190491))

(declare-fun d!1191001 () Bool)

(declare-fun lt!1428043 () Int)

(assert (=> d!1191001 (>= lt!1428043 0)))

(declare-fun e!2494461 () Int)

(assert (=> d!1191001 (= lt!1428043 e!2494461)))

(declare-fun c!694992 () Bool)

(assert (=> d!1191001 (= c!694992 ((_ is Nil!43030) lt!1427186))))

(assert (=> d!1191001 (= (size!32171 lt!1427186) lt!1428043)))

(declare-fun b!4021262 () Bool)

(assert (=> b!4021262 (= e!2494461 0)))

(declare-fun b!4021263 () Bool)

(assert (=> b!4021263 (= e!2494461 (+ 1 (size!32171 (t!333487 lt!1427186))))))

(assert (= (and d!1191001 c!694992) b!4021262))

(assert (= (and d!1191001 (not c!694992)) b!4021263))

(declare-fun m!4612005 () Bool)

(assert (=> b!4021263 m!4612005))

(assert (=> b!4019730 d!1191001))

(assert (=> b!4019730 d!1189967))

(declare-fun d!1191003 () Bool)

(assert (=> d!1191003 (= lt!1427216 suffixResult!105)))

(assert (=> d!1191003 true))

(declare-fun _$63!1062 () Unit!62145)

(assert (=> d!1191003 (= (choose!24306 lt!1427191 lt!1427216 lt!1427191 suffixResult!105 lt!1427217) _$63!1062)))

(assert (=> d!1190129 d!1191003))

(assert (=> d!1190129 d!1190111))

(declare-fun d!1191005 () Bool)

(declare-fun lt!1428044 () Int)

(assert (=> d!1191005 (>= lt!1428044 0)))

(declare-fun e!2494462 () Int)

(assert (=> d!1191005 (= lt!1428044 e!2494462)))

(declare-fun c!694993 () Bool)

(assert (=> d!1191005 (= c!694993 ((_ is Nil!43030) (++!11262 lt!1427181 newSuffixResult!27)))))

(assert (=> d!1191005 (= (size!32171 (++!11262 lt!1427181 newSuffixResult!27)) lt!1428044)))

(declare-fun b!4021264 () Bool)

(assert (=> b!4021264 (= e!2494462 0)))

(declare-fun b!4021265 () Bool)

(assert (=> b!4021265 (= e!2494462 (+ 1 (size!32171 (t!333487 (++!11262 lt!1427181 newSuffixResult!27)))))))

(assert (= (and d!1191005 c!694993) b!4021264))

(assert (= (and d!1191005 (not c!694993)) b!4021265))

(declare-fun m!4612015 () Bool)

(assert (=> b!4021265 m!4612015))

(assert (=> b!4019749 d!1191005))

(assert (=> b!4019749 d!1189967))

(assert (=> b!4019712 d!1190265))

(assert (=> b!4019712 d!1189967))

(declare-fun b!4021266 () Bool)

(declare-fun e!2494467 () Bool)

(declare-fun e!2494465 () Bool)

(assert (=> b!4021266 (= e!2494467 e!2494465)))

(declare-fun res!1636203 () Bool)

(assert (=> b!4021266 (=> res!1636203 e!2494465)))

(declare-fun call!286718 () Bool)

(assert (=> b!4021266 (= res!1636203 call!286718)))

(declare-fun b!4021267 () Bool)

(declare-fun res!1636206 () Bool)

(declare-fun e!2494464 () Bool)

(assert (=> b!4021267 (=> (not res!1636206) (not e!2494464))))

(assert (=> b!4021267 (= res!1636206 (isEmpty!25696 (tail!6259 (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 token!484)) Nil!43030 (size!32171 Nil!43030) lt!1427217 lt!1427217 (size!32171 lt!1427217))))))))

(declare-fun b!4021268 () Bool)

(declare-fun e!2494466 () Bool)

(declare-fun lt!1428045 () Bool)

(assert (=> b!4021268 (= e!2494466 (not lt!1428045))))

(declare-fun b!4021269 () Bool)

(declare-fun res!1636201 () Bool)

(declare-fun e!2494463 () Bool)

(assert (=> b!4021269 (=> res!1636201 e!2494463)))

(assert (=> b!4021269 (= res!1636201 (not ((_ is ElementMatch!11765) (regex!6860 (rule!9912 token!484)))))))

(assert (=> b!4021269 (= e!2494466 e!2494463)))

(declare-fun b!4021271 () Bool)

(declare-fun res!1636200 () Bool)

(assert (=> b!4021271 (=> res!1636200 e!2494465)))

(assert (=> b!4021271 (= res!1636200 (not (isEmpty!25696 (tail!6259 (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 token!484)) Nil!43030 (size!32171 Nil!43030) lt!1427217 lt!1427217 (size!32171 lt!1427217)))))))))

(declare-fun b!4021272 () Bool)

(declare-fun res!1636204 () Bool)

(assert (=> b!4021272 (=> (not res!1636204) (not e!2494464))))

(assert (=> b!4021272 (= res!1636204 (not call!286718))))

(declare-fun b!4021273 () Bool)

(declare-fun res!1636205 () Bool)

(assert (=> b!4021273 (=> res!1636205 e!2494463)))

(assert (=> b!4021273 (= res!1636205 e!2494464)))

(declare-fun res!1636199 () Bool)

(assert (=> b!4021273 (=> (not res!1636199) (not e!2494464))))

(assert (=> b!4021273 (= res!1636199 lt!1428045)))

(declare-fun b!4021274 () Bool)

(assert (=> b!4021274 (= e!2494465 (not (= (head!8527 (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 token!484)) Nil!43030 (size!32171 Nil!43030) lt!1427217 lt!1427217 (size!32171 lt!1427217)))) (c!694547 (regex!6860 (rule!9912 token!484))))))))

(declare-fun b!4021275 () Bool)

(declare-fun e!2494468 () Bool)

(assert (=> b!4021275 (= e!2494468 (nullable!4126 (regex!6860 (rule!9912 token!484))))))

(declare-fun b!4021276 () Bool)

(declare-fun e!2494469 () Bool)

(assert (=> b!4021276 (= e!2494469 e!2494466)))

(declare-fun c!694996 () Bool)

(assert (=> b!4021276 (= c!694996 ((_ is EmptyLang!11765) (regex!6860 (rule!9912 token!484))))))

(declare-fun b!4021277 () Bool)

(assert (=> b!4021277 (= e!2494463 e!2494467)))

(declare-fun res!1636202 () Bool)

(assert (=> b!4021277 (=> (not res!1636202) (not e!2494467))))

(assert (=> b!4021277 (= res!1636202 (not lt!1428045))))

(declare-fun b!4021278 () Bool)

(assert (=> b!4021278 (= e!2494468 (matchR!5726 (derivativeStep!3535 (regex!6860 (rule!9912 token!484)) (head!8527 (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 token!484)) Nil!43030 (size!32171 Nil!43030) lt!1427217 lt!1427217 (size!32171 lt!1427217))))) (tail!6259 (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 token!484)) Nil!43030 (size!32171 Nil!43030) lt!1427217 lt!1427217 (size!32171 lt!1427217))))))))

(declare-fun bm!286713 () Bool)

(assert (=> bm!286713 (= call!286718 (isEmpty!25696 (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 token!484)) Nil!43030 (size!32171 Nil!43030) lt!1427217 lt!1427217 (size!32171 lt!1427217)))))))

(declare-fun b!4021279 () Bool)

(assert (=> b!4021279 (= e!2494469 (= lt!1428045 call!286718))))

(declare-fun b!4021270 () Bool)

(assert (=> b!4021270 (= e!2494464 (= (head!8527 (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 token!484)) Nil!43030 (size!32171 Nil!43030) lt!1427217 lt!1427217 (size!32171 lt!1427217)))) (c!694547 (regex!6860 (rule!9912 token!484)))))))

(declare-fun d!1191007 () Bool)

(assert (=> d!1191007 e!2494469))

(declare-fun c!694994 () Bool)

(assert (=> d!1191007 (= c!694994 ((_ is EmptyExpr!11765) (regex!6860 (rule!9912 token!484))))))

(assert (=> d!1191007 (= lt!1428045 e!2494468)))

(declare-fun c!694995 () Bool)

(assert (=> d!1191007 (= c!694995 (isEmpty!25696 (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 token!484)) Nil!43030 (size!32171 Nil!43030) lt!1427217 lt!1427217 (size!32171 lt!1427217)))))))

(assert (=> d!1191007 (validRegex!5326 (regex!6860 (rule!9912 token!484)))))

(assert (=> d!1191007 (= (matchR!5726 (regex!6860 (rule!9912 token!484)) (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 token!484)) Nil!43030 (size!32171 Nil!43030) lt!1427217 lt!1427217 (size!32171 lt!1427217)))) lt!1428045)))

(assert (= (and d!1191007 c!694995) b!4021275))

(assert (= (and d!1191007 (not c!694995)) b!4021278))

(assert (= (and d!1191007 c!694994) b!4021279))

(assert (= (and d!1191007 (not c!694994)) b!4021276))

(assert (= (and b!4021276 c!694996) b!4021268))

(assert (= (and b!4021276 (not c!694996)) b!4021269))

(assert (= (and b!4021269 (not res!1636201)) b!4021273))

(assert (= (and b!4021273 res!1636199) b!4021272))

(assert (= (and b!4021272 res!1636204) b!4021267))

(assert (= (and b!4021267 res!1636206) b!4021270))

(assert (= (and b!4021273 (not res!1636205)) b!4021277))

(assert (= (and b!4021277 res!1636202) b!4021266))

(assert (= (and b!4021266 (not res!1636203)) b!4021271))

(assert (= (and b!4021271 (not res!1636200)) b!4021274))

(assert (= (or b!4021279 b!4021266 b!4021272) bm!286713))

(declare-fun m!4612031 () Bool)

(assert (=> b!4021274 m!4612031))

(assert (=> b!4021270 m!4612031))

(declare-fun m!4612033 () Bool)

(assert (=> b!4021267 m!4612033))

(assert (=> b!4021267 m!4612033))

(declare-fun m!4612035 () Bool)

(assert (=> b!4021267 m!4612035))

(assert (=> b!4021275 m!4610213))

(assert (=> bm!286713 m!4610193))

(assert (=> b!4021271 m!4612033))

(assert (=> b!4021271 m!4612033))

(assert (=> b!4021271 m!4612035))

(assert (=> d!1191007 m!4610193))

(assert (=> d!1191007 m!4610215))

(assert (=> b!4021278 m!4612031))

(assert (=> b!4021278 m!4612031))

(declare-fun m!4612043 () Bool)

(assert (=> b!4021278 m!4612043))

(assert (=> b!4021278 m!4612033))

(assert (=> b!4021278 m!4612043))

(assert (=> b!4021278 m!4612033))

(declare-fun m!4612047 () Bool)

(assert (=> b!4021278 m!4612047))

(assert (=> b!4020097 d!1191007))

(assert (=> b!4020097 d!1190213))

(assert (=> b!4020097 d!1190347))

(assert (=> b!4020097 d!1190265))

(declare-fun d!1191019 () Bool)

(declare-fun c!695001 () Bool)

(assert (=> d!1191019 (= c!695001 ((_ is Nil!43030) lt!1427493))))

(declare-fun e!2494477 () (InoxSet C!23716))

(assert (=> d!1191019 (= (content!6526 lt!1427493) e!2494477)))

(declare-fun b!4021293 () Bool)

(assert (=> b!4021293 (= e!2494477 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4021294 () Bool)

(assert (=> b!4021294 (= e!2494477 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 lt!1427493) true) (content!6526 (t!333487 lt!1427493))))))

(assert (= (and d!1191019 c!695001) b!4021293))

(assert (= (and d!1191019 (not c!695001)) b!4021294))

(declare-fun m!4612055 () Bool)

(assert (=> b!4021294 m!4612055))

(declare-fun m!4612057 () Bool)

(assert (=> b!4021294 m!4612057))

(assert (=> d!1190107 d!1191019))

(assert (=> d!1190107 d!1190383))

(assert (=> d!1190107 d!1190555))

(declare-fun d!1191023 () Bool)

(declare-fun lt!1428050 () Int)

(assert (=> d!1191023 (>= lt!1428050 0)))

(declare-fun e!2494479 () Int)

(assert (=> d!1191023 (= lt!1428050 e!2494479)))

(declare-fun c!695003 () Bool)

(assert (=> d!1191023 (= c!695003 ((_ is Nil!43030) (_2!24213 (get!14131 lt!1427443))))))

(assert (=> d!1191023 (= (size!32171 (_2!24213 (get!14131 lt!1427443))) lt!1428050)))

(declare-fun b!4021297 () Bool)

(assert (=> b!4021297 (= e!2494479 0)))

(declare-fun b!4021298 () Bool)

(assert (=> b!4021298 (= e!2494479 (+ 1 (size!32171 (t!333487 (_2!24213 (get!14131 lt!1427443))))))))

(assert (= (and d!1191023 c!695003) b!4021297))

(assert (= (and d!1191023 (not c!695003)) b!4021298))

(declare-fun m!4612061 () Bool)

(assert (=> b!4021298 m!4612061))

(assert (=> b!4019940 d!1191023))

(assert (=> b!4019940 d!1190395))

(assert (=> b!4019940 d!1190377))

(declare-fun d!1191027 () Bool)

(declare-fun lt!1428052 () Int)

(assert (=> d!1191027 (>= lt!1428052 0)))

(declare-fun e!2494481 () Int)

(assert (=> d!1191027 (= lt!1428052 e!2494481)))

(declare-fun c!695005 () Bool)

(assert (=> d!1191027 (= c!695005 ((_ is Nil!43030) (t!333487 newSuffix!27)))))

(assert (=> d!1191027 (= (size!32171 (t!333487 newSuffix!27)) lt!1428052)))

(declare-fun b!4021301 () Bool)

(assert (=> b!4021301 (= e!2494481 0)))

(declare-fun b!4021302 () Bool)

(assert (=> b!4021302 (= e!2494481 (+ 1 (size!32171 (t!333487 (t!333487 newSuffix!27)))))))

(assert (= (and d!1191027 c!695005) b!4021301))

(assert (= (and d!1191027 (not c!695005)) b!4021302))

(declare-fun m!4612065 () Bool)

(assert (=> b!4021302 m!4612065))

(assert (=> b!4020104 d!1191027))

(declare-fun d!1191031 () Bool)

(declare-fun lt!1428053 () List!43154)

(assert (=> d!1191031 (= (++!11262 (t!333487 lt!1427191) lt!1428053) (tail!6259 lt!1427217))))

(declare-fun e!2494482 () List!43154)

(assert (=> d!1191031 (= lt!1428053 e!2494482)))

(declare-fun c!695006 () Bool)

(assert (=> d!1191031 (= c!695006 ((_ is Cons!43030) (t!333487 lt!1427191)))))

(assert (=> d!1191031 (>= (size!32171 (tail!6259 lt!1427217)) (size!32171 (t!333487 lt!1427191)))))

(assert (=> d!1191031 (= (getSuffix!2372 (tail!6259 lt!1427217) (t!333487 lt!1427191)) lt!1428053)))

(declare-fun b!4021303 () Bool)

(assert (=> b!4021303 (= e!2494482 (getSuffix!2372 (tail!6259 (tail!6259 lt!1427217)) (t!333487 (t!333487 lt!1427191))))))

(declare-fun b!4021304 () Bool)

(assert (=> b!4021304 (= e!2494482 (tail!6259 lt!1427217))))

(assert (= (and d!1191031 c!695006) b!4021303))

(assert (= (and d!1191031 (not c!695006)) b!4021304))

(declare-fun m!4612069 () Bool)

(assert (=> d!1191031 m!4612069))

(assert (=> d!1191031 m!4609519))

(assert (=> d!1191031 m!4611243))

(assert (=> d!1191031 m!4610245))

(assert (=> b!4021303 m!4609519))

(assert (=> b!4021303 m!4611247))

(assert (=> b!4021303 m!4611247))

(declare-fun m!4612071 () Bool)

(assert (=> b!4021303 m!4612071))

(assert (=> b!4019976 d!1191031))

(assert (=> b!4019976 d!1190635))

(declare-fun b!4021309 () Bool)

(declare-fun e!2494490 () Bool)

(declare-fun e!2494488 () Bool)

(assert (=> b!4021309 (= e!2494490 e!2494488)))

(declare-fun res!1636220 () Bool)

(assert (=> b!4021309 (=> res!1636220 e!2494488)))

(declare-fun call!286719 () Bool)

(assert (=> b!4021309 (= res!1636220 call!286719)))

(declare-fun b!4021310 () Bool)

(declare-fun res!1636223 () Bool)

(declare-fun e!2494487 () Bool)

(assert (=> b!4021310 (=> (not res!1636223) (not e!2494487))))

(assert (=> b!4021310 (= res!1636223 (isEmpty!25696 (tail!6259 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427286)))))))))

(declare-fun b!4021311 () Bool)

(declare-fun e!2494489 () Bool)

(declare-fun lt!1428055 () Bool)

(assert (=> b!4021311 (= e!2494489 (not lt!1428055))))

(declare-fun b!4021312 () Bool)

(declare-fun res!1636218 () Bool)

(declare-fun e!2494486 () Bool)

(assert (=> b!4021312 (=> res!1636218 e!2494486)))

(assert (=> b!4021312 (= res!1636218 (not ((_ is ElementMatch!11765) (regex!6860 (rule!9912 (_1!24213 (get!14131 lt!1427286)))))))))

(assert (=> b!4021312 (= e!2494489 e!2494486)))

(declare-fun b!4021314 () Bool)

(declare-fun res!1636217 () Bool)

(assert (=> b!4021314 (=> res!1636217 e!2494488)))

(assert (=> b!4021314 (= res!1636217 (not (isEmpty!25696 (tail!6259 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427286))))))))))

(declare-fun b!4021315 () Bool)

(declare-fun res!1636221 () Bool)

(assert (=> b!4021315 (=> (not res!1636221) (not e!2494487))))

(assert (=> b!4021315 (= res!1636221 (not call!286719))))

(declare-fun b!4021316 () Bool)

(declare-fun res!1636222 () Bool)

(assert (=> b!4021316 (=> res!1636222 e!2494486)))

(assert (=> b!4021316 (= res!1636222 e!2494487)))

(declare-fun res!1636216 () Bool)

(assert (=> b!4021316 (=> (not res!1636216) (not e!2494487))))

(assert (=> b!4021316 (= res!1636216 lt!1428055)))

(declare-fun b!4021317 () Bool)

(assert (=> b!4021317 (= e!2494488 (not (= (head!8527 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427286))))) (c!694547 (regex!6860 (rule!9912 (_1!24213 (get!14131 lt!1427286))))))))))

(declare-fun b!4021318 () Bool)

(declare-fun e!2494491 () Bool)

(assert (=> b!4021318 (= e!2494491 (nullable!4126 (regex!6860 (rule!9912 (_1!24213 (get!14131 lt!1427286))))))))

(declare-fun b!4021319 () Bool)

(declare-fun e!2494492 () Bool)

(assert (=> b!4021319 (= e!2494492 e!2494489)))

(declare-fun c!695009 () Bool)

(assert (=> b!4021319 (= c!695009 ((_ is EmptyLang!11765) (regex!6860 (rule!9912 (_1!24213 (get!14131 lt!1427286))))))))

(declare-fun b!4021320 () Bool)

(assert (=> b!4021320 (= e!2494486 e!2494490)))

(declare-fun res!1636219 () Bool)

(assert (=> b!4021320 (=> (not res!1636219) (not e!2494490))))

(assert (=> b!4021320 (= res!1636219 (not lt!1428055))))

(declare-fun b!4021321 () Bool)

(assert (=> b!4021321 (= e!2494491 (matchR!5726 (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (get!14131 lt!1427286)))) (head!8527 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427286)))))) (tail!6259 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427286)))))))))

(declare-fun bm!286714 () Bool)

(assert (=> bm!286714 (= call!286719 (isEmpty!25696 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427286))))))))

(declare-fun b!4021322 () Bool)

(assert (=> b!4021322 (= e!2494492 (= lt!1428055 call!286719))))

(declare-fun b!4021313 () Bool)

(assert (=> b!4021313 (= e!2494487 (= (head!8527 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427286))))) (c!694547 (regex!6860 (rule!9912 (_1!24213 (get!14131 lt!1427286)))))))))

(declare-fun d!1191035 () Bool)

(assert (=> d!1191035 e!2494492))

(declare-fun c!695007 () Bool)

(assert (=> d!1191035 (= c!695007 ((_ is EmptyExpr!11765) (regex!6860 (rule!9912 (_1!24213 (get!14131 lt!1427286))))))))

(assert (=> d!1191035 (= lt!1428055 e!2494491)))

(declare-fun c!695008 () Bool)

(assert (=> d!1191035 (= c!695008 (isEmpty!25696 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427286))))))))

(assert (=> d!1191035 (validRegex!5326 (regex!6860 (rule!9912 (_1!24213 (get!14131 lt!1427286)))))))

(assert (=> d!1191035 (= (matchR!5726 (regex!6860 (rule!9912 (_1!24213 (get!14131 lt!1427286)))) (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427286))))) lt!1428055)))

(assert (= (and d!1191035 c!695008) b!4021318))

(assert (= (and d!1191035 (not c!695008)) b!4021321))

(assert (= (and d!1191035 c!695007) b!4021322))

(assert (= (and d!1191035 (not c!695007)) b!4021319))

(assert (= (and b!4021319 c!695009) b!4021311))

(assert (= (and b!4021319 (not c!695009)) b!4021312))

(assert (= (and b!4021312 (not res!1636218)) b!4021316))

(assert (= (and b!4021316 res!1636216) b!4021315))

(assert (= (and b!4021315 res!1636221) b!4021310))

(assert (= (and b!4021310 res!1636223) b!4021313))

(assert (= (and b!4021316 (not res!1636222)) b!4021320))

(assert (= (and b!4021320 res!1636219) b!4021309))

(assert (= (and b!4021309 (not res!1636220)) b!4021314))

(assert (= (and b!4021314 (not res!1636217)) b!4021317))

(assert (= (or b!4021322 b!4021309 b!4021315) bm!286714))

(assert (=> b!4021317 m!4609197))

(declare-fun m!4612081 () Bool)

(assert (=> b!4021317 m!4612081))

(assert (=> b!4021313 m!4609197))

(assert (=> b!4021313 m!4612081))

(assert (=> b!4021310 m!4609197))

(declare-fun m!4612083 () Bool)

(assert (=> b!4021310 m!4612083))

(assert (=> b!4021310 m!4612083))

(declare-fun m!4612085 () Bool)

(assert (=> b!4021310 m!4612085))

(declare-fun m!4612087 () Bool)

(assert (=> b!4021318 m!4612087))

(assert (=> bm!286714 m!4609197))

(declare-fun m!4612089 () Bool)

(assert (=> bm!286714 m!4612089))

(assert (=> b!4021314 m!4609197))

(assert (=> b!4021314 m!4612083))

(assert (=> b!4021314 m!4612083))

(assert (=> b!4021314 m!4612085))

(assert (=> d!1191035 m!4609197))

(assert (=> d!1191035 m!4612089))

(declare-fun m!4612091 () Bool)

(assert (=> d!1191035 m!4612091))

(assert (=> b!4021321 m!4609197))

(assert (=> b!4021321 m!4612081))

(assert (=> b!4021321 m!4612081))

(declare-fun m!4612093 () Bool)

(assert (=> b!4021321 m!4612093))

(assert (=> b!4021321 m!4609197))

(assert (=> b!4021321 m!4612083))

(assert (=> b!4021321 m!4612093))

(assert (=> b!4021321 m!4612083))

(declare-fun m!4612095 () Bool)

(assert (=> b!4021321 m!4612095))

(assert (=> b!4019523 d!1191035))

(assert (=> b!4019523 d!1190375))

(assert (=> b!4019523 d!1190453))

(assert (=> b!4019523 d!1190455))

(assert (=> d!1190045 d!1190039))

(declare-fun d!1191043 () Bool)

(assert (=> d!1191043 (ruleValid!2792 thiss!21717 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))

(assert (=> d!1191043 true))

(declare-fun _$65!1457 () Unit!62145)

(assert (=> d!1191043 (= (choose!24316 thiss!21717 (rule!9912 (_1!24213 (v!39647 lt!1427206))) rules!2999) _$65!1457)))

(declare-fun bs!589895 () Bool)

(assert (= bs!589895 d!1191043))

(assert (=> bs!589895 m!4609005))

(assert (=> d!1190045 d!1191043))

(declare-fun d!1191047 () Bool)

(declare-fun lt!1428058 () Bool)

(assert (=> d!1191047 (= lt!1428058 (select (content!6528 rules!2999) (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))

(declare-fun e!2494495 () Bool)

(assert (=> d!1191047 (= lt!1428058 e!2494495)))

(declare-fun res!1636227 () Bool)

(assert (=> d!1191047 (=> (not res!1636227) (not e!2494495))))

(assert (=> d!1191047 (= res!1636227 ((_ is Cons!43032) rules!2999))))

(assert (=> d!1191047 (= (contains!8548 rules!2999 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) lt!1428058)))

(declare-fun b!4021327 () Bool)

(declare-fun e!2494497 () Bool)

(assert (=> b!4021327 (= e!2494495 e!2494497)))

(declare-fun res!1636226 () Bool)

(assert (=> b!4021327 (=> res!1636226 e!2494497)))

(assert (=> b!4021327 (= res!1636226 (= (h!48452 rules!2999) (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))

(declare-fun b!4021328 () Bool)

(assert (=> b!4021328 (= e!2494497 (contains!8548 (t!333489 rules!2999) (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))

(assert (= (and d!1191047 res!1636227) b!4021327))

(assert (= (and b!4021327 (not res!1636226)) b!4021328))

(assert (=> d!1191047 m!4610691))

(declare-fun m!4612101 () Bool)

(assert (=> d!1191047 m!4612101))

(declare-fun m!4612103 () Bool)

(assert (=> b!4021328 m!4612103))

(assert (=> d!1190045 d!1191047))

(declare-fun d!1191051 () Bool)

(declare-fun lt!1428059 () Int)

(assert (=> d!1191051 (>= lt!1428059 0)))

(declare-fun e!2494498 () Int)

(assert (=> d!1191051 (= lt!1428059 e!2494498)))

(declare-fun c!695011 () Bool)

(assert (=> d!1191051 (= c!695011 ((_ is Nil!43030) lt!1427219))))

(assert (=> d!1191051 (= (size!32171 lt!1427219) lt!1428059)))

(declare-fun b!4021329 () Bool)

(assert (=> b!4021329 (= e!2494498 0)))

(declare-fun b!4021330 () Bool)

(assert (=> b!4021330 (= e!2494498 (+ 1 (size!32171 (t!333487 lt!1427219))))))

(assert (= (and d!1191051 c!695011) b!4021329))

(assert (= (and d!1191051 (not c!695011)) b!4021330))

(declare-fun m!4612105 () Bool)

(assert (=> b!4021330 m!4612105))

(assert (=> b!4020091 d!1191051))

(assert (=> b!4020091 d!1190159))

(declare-fun b!4021332 () Bool)

(declare-fun res!1636229 () Bool)

(declare-fun e!2494499 () Bool)

(assert (=> b!4021332 (=> (not res!1636229) (not e!2494499))))

(assert (=> b!4021332 (= res!1636229 (= (head!8527 lt!1427181) (head!8527 (++!11262 lt!1427181 (_2!24213 (v!39647 lt!1427206))))))))

(declare-fun b!4021334 () Bool)

(declare-fun e!2494500 () Bool)

(assert (=> b!4021334 (= e!2494500 (>= (size!32171 (++!11262 lt!1427181 (_2!24213 (v!39647 lt!1427206)))) (size!32171 lt!1427181)))))

(declare-fun d!1191053 () Bool)

(assert (=> d!1191053 e!2494500))

(declare-fun res!1636228 () Bool)

(assert (=> d!1191053 (=> res!1636228 e!2494500)))

(declare-fun lt!1428060 () Bool)

(assert (=> d!1191053 (= res!1636228 (not lt!1428060))))

(declare-fun e!2494501 () Bool)

(assert (=> d!1191053 (= lt!1428060 e!2494501)))

(declare-fun res!1636230 () Bool)

(assert (=> d!1191053 (=> res!1636230 e!2494501)))

(assert (=> d!1191053 (= res!1636230 ((_ is Nil!43030) lt!1427181))))

(assert (=> d!1191053 (= (isPrefix!3947 lt!1427181 (++!11262 lt!1427181 (_2!24213 (v!39647 lt!1427206)))) lt!1428060)))

(declare-fun b!4021331 () Bool)

(assert (=> b!4021331 (= e!2494501 e!2494499)))

(declare-fun res!1636231 () Bool)

(assert (=> b!4021331 (=> (not res!1636231) (not e!2494499))))

(assert (=> b!4021331 (= res!1636231 (not ((_ is Nil!43030) (++!11262 lt!1427181 (_2!24213 (v!39647 lt!1427206))))))))

(declare-fun b!4021333 () Bool)

(assert (=> b!4021333 (= e!2494499 (isPrefix!3947 (tail!6259 lt!1427181) (tail!6259 (++!11262 lt!1427181 (_2!24213 (v!39647 lt!1427206))))))))

(assert (= (and d!1191053 (not res!1636230)) b!4021331))

(assert (= (and b!4021331 res!1636231) b!4021332))

(assert (= (and b!4021332 res!1636229) b!4021333))

(assert (= (and d!1191053 (not res!1636228)) b!4021334))

(assert (=> b!4021332 m!4609511))

(assert (=> b!4021332 m!4609019))

(declare-fun m!4612107 () Bool)

(assert (=> b!4021332 m!4612107))

(assert (=> b!4021334 m!4609019))

(declare-fun m!4612109 () Bool)

(assert (=> b!4021334 m!4612109))

(assert (=> b!4021334 m!4609027))

(assert (=> b!4021333 m!4609517))

(assert (=> b!4021333 m!4609019))

(declare-fun m!4612111 () Bool)

(assert (=> b!4021333 m!4612111))

(assert (=> b!4021333 m!4609517))

(assert (=> b!4021333 m!4612111))

(declare-fun m!4612113 () Bool)

(assert (=> b!4021333 m!4612113))

(assert (=> d!1190035 d!1191053))

(assert (=> d!1190035 d!1190037))

(declare-fun d!1191055 () Bool)

(assert (=> d!1191055 (isPrefix!3947 lt!1427181 (++!11262 lt!1427181 (_2!24213 (v!39647 lt!1427206))))))

(assert (=> d!1191055 true))

(declare-fun _$46!1689 () Unit!62145)

(assert (=> d!1191055 (= (choose!24307 lt!1427181 (_2!24213 (v!39647 lt!1427206))) _$46!1689)))

(declare-fun bs!589896 () Bool)

(assert (= bs!589896 d!1191055))

(assert (=> bs!589896 m!4609019))

(assert (=> bs!589896 m!4609019))

(assert (=> bs!589896 m!4609899))

(assert (=> d!1190035 d!1191055))

(declare-fun d!1191057 () Bool)

(declare-fun c!695012 () Bool)

(assert (=> d!1191057 (= c!695012 ((_ is Nil!43030) lt!1427313))))

(declare-fun e!2494502 () (InoxSet C!23716))

(assert (=> d!1191057 (= (content!6526 lt!1427313) e!2494502)))

(declare-fun b!4021335 () Bool)

(assert (=> b!4021335 (= e!2494502 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4021336 () Bool)

(assert (=> b!4021336 (= e!2494502 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 lt!1427313) true) (content!6526 (t!333487 lt!1427313))))))

(assert (= (and d!1191057 c!695012) b!4021335))

(assert (= (and d!1191057 (not c!695012)) b!4021336))

(declare-fun m!4612115 () Bool)

(assert (=> b!4021336 m!4612115))

(declare-fun m!4612117 () Bool)

(assert (=> b!4021336 m!4612117))

(assert (=> d!1189851 d!1191057))

(declare-fun d!1191059 () Bool)

(declare-fun c!695013 () Bool)

(assert (=> d!1191059 (= c!695013 ((_ is Nil!43030) lt!1427222))))

(declare-fun e!2494503 () (InoxSet C!23716))

(assert (=> d!1191059 (= (content!6526 lt!1427222) e!2494503)))

(declare-fun b!4021337 () Bool)

(assert (=> b!4021337 (= e!2494503 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4021338 () Bool)

(assert (=> b!4021338 (= e!2494503 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 lt!1427222) true) (content!6526 (t!333487 lt!1427222))))))

(assert (= (and d!1191059 c!695013) b!4021337))

(assert (= (and d!1191059 (not c!695013)) b!4021338))

(declare-fun m!4612119 () Bool)

(assert (=> b!4021338 m!4612119))

(declare-fun m!4612121 () Bool)

(assert (=> b!4021338 m!4612121))

(assert (=> d!1189851 d!1191059))

(declare-fun d!1191061 () Bool)

(declare-fun c!695014 () Bool)

(assert (=> d!1191061 (= c!695014 ((_ is Nil!43030) lt!1427213))))

(declare-fun e!2494504 () (InoxSet C!23716))

(assert (=> d!1191061 (= (content!6526 lt!1427213) e!2494504)))

(declare-fun b!4021339 () Bool)

(assert (=> b!4021339 (= e!2494504 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4021340 () Bool)

(assert (=> b!4021340 (= e!2494504 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 lt!1427213) true) (content!6526 (t!333487 lt!1427213))))))

(assert (= (and d!1191061 c!695014) b!4021339))

(assert (= (and d!1191061 (not c!695014)) b!4021340))

(declare-fun m!4612123 () Bool)

(assert (=> b!4021340 m!4612123))

(declare-fun m!4612125 () Bool)

(assert (=> b!4021340 m!4612125))

(assert (=> d!1189851 d!1191061))

(assert (=> b!4019979 d!1190775))

(assert (=> b!4020064 d!1190491))

(declare-fun d!1191063 () Bool)

(assert (=> d!1191063 (= (head!8527 lt!1427199) (h!48450 lt!1427199))))

(assert (=> b!4020064 d!1191063))

(assert (=> b!4020106 d!1190429))

(assert (=> b!4020106 d!1190431))

(declare-fun b!4021343 () Bool)

(declare-fun res!1636233 () Bool)

(declare-fun e!2494506 () Bool)

(assert (=> b!4021343 (=> (not res!1636233) (not e!2494506))))

(declare-fun lt!1428063 () List!43154)

(assert (=> b!4021343 (= res!1636233 (= (size!32171 lt!1428063) (+ (size!32171 lt!1427181) (size!32171 lt!1427500))))))

(declare-fun b!4021341 () Bool)

(declare-fun e!2494505 () List!43154)

(assert (=> b!4021341 (= e!2494505 lt!1427500)))

(declare-fun d!1191065 () Bool)

(assert (=> d!1191065 e!2494506))

(declare-fun res!1636232 () Bool)

(assert (=> d!1191065 (=> (not res!1636232) (not e!2494506))))

(assert (=> d!1191065 (= res!1636232 (= (content!6526 lt!1428063) ((_ map or) (content!6526 lt!1427181) (content!6526 lt!1427500))))))

(assert (=> d!1191065 (= lt!1428063 e!2494505)))

(declare-fun c!695015 () Bool)

(assert (=> d!1191065 (= c!695015 ((_ is Nil!43030) lt!1427181))))

(assert (=> d!1191065 (= (++!11262 lt!1427181 lt!1427500) lt!1428063)))

(declare-fun b!4021344 () Bool)

(assert (=> b!4021344 (= e!2494506 (or (not (= lt!1427500 Nil!43030)) (= lt!1428063 lt!1427181)))))

(declare-fun b!4021342 () Bool)

(assert (=> b!4021342 (= e!2494505 (Cons!43030 (h!48450 lt!1427181) (++!11262 (t!333487 lt!1427181) lt!1427500)))))

(assert (= (and d!1191065 c!695015) b!4021341))

(assert (= (and d!1191065 (not c!695015)) b!4021342))

(assert (= (and d!1191065 res!1636232) b!4021343))

(assert (= (and b!4021343 res!1636233) b!4021344))

(declare-fun m!4612127 () Bool)

(assert (=> b!4021343 m!4612127))

(assert (=> b!4021343 m!4609027))

(declare-fun m!4612129 () Bool)

(assert (=> b!4021343 m!4612129))

(declare-fun m!4612131 () Bool)

(assert (=> d!1191065 m!4612131))

(assert (=> d!1191065 m!4609621))

(declare-fun m!4612133 () Bool)

(assert (=> d!1191065 m!4612133))

(declare-fun m!4612135 () Bool)

(assert (=> b!4021342 m!4612135))

(assert (=> d!1190121 d!1191065))

(assert (=> d!1190121 d!1190377))

(assert (=> d!1190121 d!1189967))

(declare-fun d!1191067 () Bool)

(declare-fun lt!1428065 () Int)

(assert (=> d!1191067 (>= lt!1428065 0)))

(declare-fun e!2494507 () Int)

(assert (=> d!1191067 (= lt!1428065 e!2494507)))

(declare-fun c!695016 () Bool)

(assert (=> d!1191067 (= c!695016 ((_ is Nil!43030) lt!1427466))))

(assert (=> d!1191067 (= (size!32171 lt!1427466) lt!1428065)))

(declare-fun b!4021345 () Bool)

(assert (=> b!4021345 (= e!2494507 0)))

(declare-fun b!4021346 () Bool)

(assert (=> b!4021346 (= e!2494507 (+ 1 (size!32171 (t!333487 lt!1427466))))))

(assert (= (and d!1191067 c!695016) b!4021345))

(assert (= (and d!1191067 (not c!695016)) b!4021346))

(declare-fun m!4612137 () Bool)

(assert (=> b!4021346 m!4612137))

(assert (=> b!4019974 d!1191067))

(assert (=> b!4019974 d!1190159))

(declare-fun d!1191069 () Bool)

(declare-fun lt!1428066 () Int)

(assert (=> d!1191069 (>= lt!1428066 0)))

(declare-fun e!2494508 () Int)

(assert (=> d!1191069 (= lt!1428066 e!2494508)))

(declare-fun c!695017 () Bool)

(assert (=> d!1191069 (= c!695017 ((_ is Nil!43030) lt!1427187))))

(assert (=> d!1191069 (= (size!32171 lt!1427187) lt!1428066)))

(declare-fun b!4021347 () Bool)

(assert (=> b!4021347 (= e!2494508 0)))

(declare-fun b!4021348 () Bool)

(assert (=> b!4021348 (= e!2494508 (+ 1 (size!32171 (t!333487 lt!1427187))))))

(assert (= (and d!1191069 c!695017) b!4021347))

(assert (= (and d!1191069 (not c!695017)) b!4021348))

(declare-fun m!4612141 () Bool)

(assert (=> b!4021348 m!4612141))

(assert (=> b!4019974 d!1191069))

(declare-fun d!1191073 () Bool)

(declare-fun lt!1428067 () List!43154)

(assert (=> d!1191073 (= (++!11262 (t!333487 lt!1427191) lt!1428067) (tail!6259 prefix!494))))

(declare-fun e!2494511 () List!43154)

(assert (=> d!1191073 (= lt!1428067 e!2494511)))

(declare-fun c!695019 () Bool)

(assert (=> d!1191073 (= c!695019 ((_ is Cons!43030) (t!333487 lt!1427191)))))

(assert (=> d!1191073 (>= (size!32171 (tail!6259 prefix!494)) (size!32171 (t!333487 lt!1427191)))))

(assert (=> d!1191073 (= (getSuffix!2372 (tail!6259 prefix!494) (t!333487 lt!1427191)) lt!1428067)))

(declare-fun b!4021352 () Bool)

(assert (=> b!4021352 (= e!2494511 (getSuffix!2372 (tail!6259 (tail!6259 prefix!494)) (t!333487 (t!333487 lt!1427191))))))

(declare-fun b!4021353 () Bool)

(assert (=> b!4021353 (= e!2494511 (tail!6259 prefix!494))))

(assert (= (and d!1191073 c!695019) b!4021352))

(assert (= (and d!1191073 (not c!695019)) b!4021353))

(declare-fun m!4612145 () Bool)

(assert (=> d!1191073 m!4612145))

(assert (=> d!1191073 m!4609935))

(assert (=> d!1191073 m!4611261))

(assert (=> d!1191073 m!4610245))

(assert (=> b!4021352 m!4609935))

(assert (=> b!4021352 m!4611263))

(assert (=> b!4021352 m!4611263))

(declare-fun m!4612149 () Bool)

(assert (=> b!4021352 m!4612149))

(assert (=> b!4019966 d!1191073))

(assert (=> b!4019966 d!1190647))

(assert (=> b!4020114 d!1190833))

(declare-fun d!1191077 () Bool)

(declare-fun c!695021 () Bool)

(assert (=> d!1191077 (= c!695021 ((_ is Nil!43030) lt!1427458))))

(declare-fun e!2494514 () (InoxSet C!23716))

(assert (=> d!1191077 (= (content!6526 lt!1427458) e!2494514)))

(declare-fun b!4021358 () Bool)

(assert (=> b!4021358 (= e!2494514 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4021359 () Bool)

(assert (=> b!4021359 (= e!2494514 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 lt!1427458) true) (content!6526 (t!333487 lt!1427458))))))

(assert (= (and d!1191077 c!695021) b!4021358))

(assert (= (and d!1191077 (not c!695021)) b!4021359))

(declare-fun m!4612151 () Bool)

(assert (=> b!4021359 m!4612151))

(declare-fun m!4612153 () Bool)

(assert (=> b!4021359 m!4612153))

(assert (=> d!1190047 d!1191077))

(assert (=> d!1190047 d!1190355))

(assert (=> d!1190047 d!1190785))

(assert (=> d!1190101 d!1190757))

(declare-fun d!1191079 () Bool)

(assert (=> d!1191079 (= (isEmpty!25695 lt!1427443) (not ((_ is Some!9273) lt!1427443)))))

(assert (=> d!1189971 d!1191079))

(declare-fun d!1191081 () Bool)

(assert (=> d!1191081 (= (isEmpty!25696 (_1!24215 lt!1427444)) ((_ is Nil!43030) (_1!24215 lt!1427444)))))

(assert (=> d!1189971 d!1191081))

(declare-fun d!1191083 () Bool)

(declare-fun lt!1428069 () tuple2!42162)

(assert (=> d!1191083 (= (++!11262 (_1!24215 lt!1428069) (_2!24215 lt!1428069)) lt!1427222)))

(assert (=> d!1191083 (= lt!1428069 (findLongestMatchInner!1367 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) Nil!43030 0 lt!1427222 lt!1427222 (sizeTr!264 lt!1427222 0)))))

(declare-fun lt!1428073 () Unit!62145)

(declare-fun lt!1428075 () Unit!62145)

(assert (=> d!1191083 (= lt!1428073 lt!1428075)))

(declare-fun lt!1428070 () List!43154)

(declare-fun lt!1428072 () Int)

(assert (=> d!1191083 (= (sizeTr!264 lt!1428070 lt!1428072) (+ (size!32171 lt!1428070) lt!1428072))))

(assert (=> d!1191083 (= lt!1428075 (lemmaSizeTrEqualsSize!263 lt!1428070 lt!1428072))))

(assert (=> d!1191083 (= lt!1428072 0)))

(assert (=> d!1191083 (= lt!1428070 Nil!43030)))

(declare-fun lt!1428076 () Unit!62145)

(declare-fun lt!1428071 () Unit!62145)

(assert (=> d!1191083 (= lt!1428076 lt!1428071)))

(declare-fun lt!1428074 () Int)

(assert (=> d!1191083 (= (sizeTr!264 lt!1427222 lt!1428074) (+ (size!32171 lt!1427222) lt!1428074))))

(assert (=> d!1191083 (= lt!1428071 (lemmaSizeTrEqualsSize!263 lt!1427222 lt!1428074))))

(assert (=> d!1191083 (= lt!1428074 0)))

(assert (=> d!1191083 (validRegex!5326 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))

(assert (=> d!1191083 (= (findLongestMatch!1280 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) lt!1427222) lt!1428069)))

(declare-fun bs!589899 () Bool)

(assert (= bs!589899 d!1191083))

(declare-fun m!4612167 () Bool)

(assert (=> bs!589899 m!4612167))

(declare-fun m!4612169 () Bool)

(assert (=> bs!589899 m!4612169))

(declare-fun m!4612171 () Bool)

(assert (=> bs!589899 m!4612171))

(assert (=> bs!589899 m!4609209))

(declare-fun m!4612173 () Bool)

(assert (=> bs!589899 m!4612173))

(declare-fun m!4612175 () Bool)

(assert (=> bs!589899 m!4612175))

(declare-fun m!4612177 () Bool)

(assert (=> bs!589899 m!4612177))

(declare-fun m!4612179 () Bool)

(assert (=> bs!589899 m!4612179))

(assert (=> bs!589899 m!4609505))

(assert (=> bs!589899 m!4612177))

(declare-fun m!4612183 () Bool)

(assert (=> bs!589899 m!4612183))

(assert (=> d!1189971 d!1191083))

(assert (=> d!1189971 d!1190039))

(declare-fun d!1191091 () Bool)

(declare-fun lt!1428080 () Int)

(assert (=> d!1191091 (>= lt!1428080 0)))

(declare-fun e!2494519 () Int)

(assert (=> d!1191091 (= lt!1428080 e!2494519)))

(declare-fun c!695025 () Bool)

(assert (=> d!1191091 (= c!695025 ((_ is Nil!43030) lt!1427451))))

(assert (=> d!1191091 (= (size!32171 lt!1427451) lt!1428080)))

(declare-fun b!4021368 () Bool)

(assert (=> b!4021368 (= e!2494519 0)))

(declare-fun b!4021369 () Bool)

(assert (=> b!4021369 (= e!2494519 (+ 1 (size!32171 (t!333487 lt!1427451))))))

(assert (= (and d!1191091 c!695025) b!4021368))

(assert (= (and d!1191091 (not c!695025)) b!4021369))

(declare-fun m!4612187 () Bool)

(assert (=> b!4021369 m!4612187))

(assert (=> b!4019950 d!1191091))

(assert (=> b!4019950 d!1189967))

(declare-fun d!1191095 () Bool)

(declare-fun lt!1428082 () Int)

(assert (=> d!1191095 (>= lt!1428082 0)))

(declare-fun e!2494521 () Int)

(assert (=> d!1191095 (= lt!1428082 e!2494521)))

(declare-fun c!695027 () Bool)

(assert (=> d!1191095 (= c!695027 ((_ is Nil!43030) (_2!24213 (v!39647 lt!1427206))))))

(assert (=> d!1191095 (= (size!32171 (_2!24213 (v!39647 lt!1427206))) lt!1428082)))

(declare-fun b!4021372 () Bool)

(assert (=> b!4021372 (= e!2494521 0)))

(declare-fun b!4021373 () Bool)

(assert (=> b!4021373 (= e!2494521 (+ 1 (size!32171 (t!333487 (_2!24213 (v!39647 lt!1427206))))))))

(assert (= (and d!1191095 c!695027) b!4021372))

(assert (= (and d!1191095 (not c!695027)) b!4021373))

(declare-fun m!4612191 () Bool)

(assert (=> b!4021373 m!4612191))

(assert (=> b!4019950 d!1191095))

(declare-fun b!4021376 () Bool)

(declare-fun e!2494527 () Bool)

(declare-fun e!2494525 () Bool)

(assert (=> b!4021376 (= e!2494527 e!2494525)))

(declare-fun res!1636243 () Bool)

(assert (=> b!4021376 (=> res!1636243 e!2494525)))

(declare-fun call!286720 () Bool)

(assert (=> b!4021376 (= res!1636243 call!286720)))

(declare-fun b!4021377 () Bool)

(declare-fun res!1636246 () Bool)

(declare-fun e!2494524 () Bool)

(assert (=> b!4021377 (=> (not res!1636246) (not e!2494524))))

(assert (=> b!4021377 (= res!1636246 (isEmpty!25696 (tail!6259 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427490)))))))))

(declare-fun b!4021378 () Bool)

(declare-fun e!2494526 () Bool)

(declare-fun lt!1428084 () Bool)

(assert (=> b!4021378 (= e!2494526 (not lt!1428084))))

(declare-fun b!4021379 () Bool)

(declare-fun res!1636241 () Bool)

(declare-fun e!2494523 () Bool)

(assert (=> b!4021379 (=> res!1636241 e!2494523)))

(assert (=> b!4021379 (= res!1636241 (not ((_ is ElementMatch!11765) (regex!6860 (rule!9912 (_1!24213 (get!14131 lt!1427490)))))))))

(assert (=> b!4021379 (= e!2494526 e!2494523)))

(declare-fun b!4021381 () Bool)

(declare-fun res!1636240 () Bool)

(assert (=> b!4021381 (=> res!1636240 e!2494525)))

(assert (=> b!4021381 (= res!1636240 (not (isEmpty!25696 (tail!6259 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427490))))))))))

(declare-fun b!4021382 () Bool)

(declare-fun res!1636244 () Bool)

(assert (=> b!4021382 (=> (not res!1636244) (not e!2494524))))

(assert (=> b!4021382 (= res!1636244 (not call!286720))))

(declare-fun b!4021383 () Bool)

(declare-fun res!1636245 () Bool)

(assert (=> b!4021383 (=> res!1636245 e!2494523)))

(assert (=> b!4021383 (= res!1636245 e!2494524)))

(declare-fun res!1636239 () Bool)

(assert (=> b!4021383 (=> (not res!1636239) (not e!2494524))))

(assert (=> b!4021383 (= res!1636239 lt!1428084)))

(declare-fun b!4021384 () Bool)

(assert (=> b!4021384 (= e!2494525 (not (= (head!8527 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427490))))) (c!694547 (regex!6860 (rule!9912 (_1!24213 (get!14131 lt!1427490))))))))))

(declare-fun b!4021385 () Bool)

(declare-fun e!2494528 () Bool)

(assert (=> b!4021385 (= e!2494528 (nullable!4126 (regex!6860 (rule!9912 (_1!24213 (get!14131 lt!1427490))))))))

(declare-fun b!4021386 () Bool)

(declare-fun e!2494529 () Bool)

(assert (=> b!4021386 (= e!2494529 e!2494526)))

(declare-fun c!695031 () Bool)

(assert (=> b!4021386 (= c!695031 ((_ is EmptyLang!11765) (regex!6860 (rule!9912 (_1!24213 (get!14131 lt!1427490))))))))

(declare-fun b!4021387 () Bool)

(assert (=> b!4021387 (= e!2494523 e!2494527)))

(declare-fun res!1636242 () Bool)

(assert (=> b!4021387 (=> (not res!1636242) (not e!2494527))))

(assert (=> b!4021387 (= res!1636242 (not lt!1428084))))

(declare-fun b!4021388 () Bool)

(assert (=> b!4021388 (= e!2494528 (matchR!5726 (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (get!14131 lt!1427490)))) (head!8527 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427490)))))) (tail!6259 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427490)))))))))

(declare-fun bm!286715 () Bool)

(assert (=> bm!286715 (= call!286720 (isEmpty!25696 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427490))))))))

(declare-fun b!4021389 () Bool)

(assert (=> b!4021389 (= e!2494529 (= lt!1428084 call!286720))))

(declare-fun b!4021380 () Bool)

(assert (=> b!4021380 (= e!2494524 (= (head!8527 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427490))))) (c!694547 (regex!6860 (rule!9912 (_1!24213 (get!14131 lt!1427490)))))))))

(declare-fun d!1191099 () Bool)

(assert (=> d!1191099 e!2494529))

(declare-fun c!695029 () Bool)

(assert (=> d!1191099 (= c!695029 ((_ is EmptyExpr!11765) (regex!6860 (rule!9912 (_1!24213 (get!14131 lt!1427490))))))))

(assert (=> d!1191099 (= lt!1428084 e!2494528)))

(declare-fun c!695030 () Bool)

(assert (=> d!1191099 (= c!695030 (isEmpty!25696 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427490))))))))

(assert (=> d!1191099 (validRegex!5326 (regex!6860 (rule!9912 (_1!24213 (get!14131 lt!1427490)))))))

(assert (=> d!1191099 (= (matchR!5726 (regex!6860 (rule!9912 (_1!24213 (get!14131 lt!1427490)))) (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427490))))) lt!1428084)))

(assert (= (and d!1191099 c!695030) b!4021385))

(assert (= (and d!1191099 (not c!695030)) b!4021388))

(assert (= (and d!1191099 c!695029) b!4021389))

(assert (= (and d!1191099 (not c!695029)) b!4021386))

(assert (= (and b!4021386 c!695031) b!4021378))

(assert (= (and b!4021386 (not c!695031)) b!4021379))

(assert (= (and b!4021379 (not res!1636241)) b!4021383))

(assert (= (and b!4021383 res!1636239) b!4021382))

(assert (= (and b!4021382 res!1636244) b!4021377))

(assert (= (and b!4021377 res!1636246) b!4021380))

(assert (= (and b!4021383 (not res!1636245)) b!4021387))

(assert (= (and b!4021387 res!1636242) b!4021376))

(assert (= (and b!4021376 (not res!1636243)) b!4021381))

(assert (= (and b!4021381 (not res!1636240)) b!4021384))

(assert (= (or b!4021389 b!4021376 b!4021382) bm!286715))

(assert (=> b!4021384 m!4610079))

(declare-fun m!4612207 () Bool)

(assert (=> b!4021384 m!4612207))

(assert (=> b!4021380 m!4610079))

(assert (=> b!4021380 m!4612207))

(assert (=> b!4021377 m!4610079))

(declare-fun m!4612209 () Bool)

(assert (=> b!4021377 m!4612209))

(assert (=> b!4021377 m!4612209))

(declare-fun m!4612211 () Bool)

(assert (=> b!4021377 m!4612211))

(declare-fun m!4612213 () Bool)

(assert (=> b!4021385 m!4612213))

(assert (=> bm!286715 m!4610079))

(declare-fun m!4612215 () Bool)

(assert (=> bm!286715 m!4612215))

(assert (=> b!4021381 m!4610079))

(assert (=> b!4021381 m!4612209))

(assert (=> b!4021381 m!4612209))

(assert (=> b!4021381 m!4612211))

(assert (=> d!1191099 m!4610079))

(assert (=> d!1191099 m!4612215))

(declare-fun m!4612217 () Bool)

(assert (=> d!1191099 m!4612217))

(assert (=> b!4021388 m!4610079))

(assert (=> b!4021388 m!4612207))

(assert (=> b!4021388 m!4612207))

(declare-fun m!4612219 () Bool)

(assert (=> b!4021388 m!4612219))

(assert (=> b!4021388 m!4610079))

(assert (=> b!4021388 m!4612209))

(assert (=> b!4021388 m!4612219))

(assert (=> b!4021388 m!4612209))

(declare-fun m!4612223 () Bool)

(assert (=> b!4021388 m!4612223))

(assert (=> b!4020045 d!1191099))

(assert (=> b!4020045 d!1190363))

(assert (=> b!4020045 d!1190425))

(assert (=> b!4020045 d!1190427))

(declare-fun d!1191107 () Bool)

(declare-fun lt!1428087 () Int)

(assert (=> d!1191107 (>= lt!1428087 0)))

(declare-fun e!2494535 () Int)

(assert (=> d!1191107 (= lt!1428087 e!2494535)))

(declare-fun c!695033 () Bool)

(assert (=> d!1191107 (= c!695033 ((_ is Nil!43030) lt!1427313))))

(assert (=> d!1191107 (= (size!32171 lt!1427313) lt!1428087)))

(declare-fun b!4021398 () Bool)

(assert (=> b!4021398 (= e!2494535 0)))

(declare-fun b!4021399 () Bool)

(assert (=> b!4021399 (= e!2494535 (+ 1 (size!32171 (t!333487 lt!1427313))))))

(assert (= (and d!1191107 c!695033) b!4021398))

(assert (= (and d!1191107 (not c!695033)) b!4021399))

(declare-fun m!4612225 () Bool)

(assert (=> b!4021399 m!4612225))

(assert (=> b!4019582 d!1191107))

(assert (=> b!4019582 d!1190377))

(declare-fun d!1191111 () Bool)

(declare-fun lt!1428089 () Int)

(assert (=> d!1191111 (>= lt!1428089 0)))

(declare-fun e!2494538 () Int)

(assert (=> d!1191111 (= lt!1428089 e!2494538)))

(declare-fun c!695035 () Bool)

(assert (=> d!1191111 (= c!695035 ((_ is Nil!43030) lt!1427213))))

(assert (=> d!1191111 (= (size!32171 lt!1427213) lt!1428089)))

(declare-fun b!4021404 () Bool)

(assert (=> b!4021404 (= e!2494538 0)))

(declare-fun b!4021405 () Bool)

(assert (=> b!4021405 (= e!2494538 (+ 1 (size!32171 (t!333487 lt!1427213))))))

(assert (= (and d!1191111 c!695035) b!4021404))

(assert (= (and d!1191111 (not c!695035)) b!4021405))

(declare-fun m!4612227 () Bool)

(assert (=> b!4021405 m!4612227))

(assert (=> b!4019582 d!1191111))

(declare-fun d!1191113 () Bool)

(declare-fun lt!1428090 () Int)

(assert (=> d!1191113 (>= lt!1428090 0)))

(declare-fun e!2494539 () Int)

(assert (=> d!1191113 (= lt!1428090 e!2494539)))

(declare-fun c!695036 () Bool)

(assert (=> d!1191113 (= c!695036 ((_ is Nil!43030) lt!1427493))))

(assert (=> d!1191113 (= (size!32171 lt!1427493) lt!1428090)))

(declare-fun b!4021406 () Bool)

(assert (=> b!4021406 (= e!2494539 0)))

(declare-fun b!4021407 () Bool)

(assert (=> b!4021407 (= e!2494539 (+ 1 (size!32171 (t!333487 lt!1427493))))))

(assert (= (and d!1191113 c!695036) b!4021406))

(assert (= (and d!1191113 (not c!695036)) b!4021407))

(declare-fun m!4612235 () Bool)

(assert (=> b!4021407 m!4612235))

(assert (=> b!4020053 d!1191113))

(assert (=> b!4020053 d!1190161))

(assert (=> b!4020053 d!1190139))

(declare-fun b!4021408 () Bool)

(declare-fun e!2494543 () Bool)

(declare-fun e!2494544 () Bool)

(assert (=> b!4021408 (= e!2494543 e!2494544)))

(declare-fun c!695039 () Bool)

(assert (=> b!4021408 (= c!695039 ((_ is IntegerValue!21271) (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 token!484))) (seqFromList!5085 lt!1427191))))))

(declare-fun b!4021409 () Bool)

(assert (=> b!4021409 (= e!2494543 (inv!16 (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 token!484))) (seqFromList!5085 lt!1427191))))))

(declare-fun b!4021410 () Bool)

(assert (=> b!4021410 (= e!2494544 (inv!17 (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 token!484))) (seqFromList!5085 lt!1427191))))))

(declare-fun b!4021411 () Bool)

(declare-fun res!1636258 () Bool)

(declare-fun e!2494546 () Bool)

(assert (=> b!4021411 (=> res!1636258 e!2494546)))

(assert (=> b!4021411 (= res!1636258 (not ((_ is IntegerValue!21272) (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 token!484))) (seqFromList!5085 lt!1427191)))))))

(assert (=> b!4021411 (= e!2494544 e!2494546)))

(declare-fun d!1191117 () Bool)

(declare-fun c!695041 () Bool)

(assert (=> d!1191117 (= c!695041 ((_ is IntegerValue!21270) (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 token!484))) (seqFromList!5085 lt!1427191))))))

(assert (=> d!1191117 (= (inv!21 (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 token!484))) (seqFromList!5085 lt!1427191))) e!2494543)))

(declare-fun b!4021412 () Bool)

(assert (=> b!4021412 (= e!2494546 (inv!15 (dynLambda!18239 (toValue!9368 (transformation!6860 (rule!9912 token!484))) (seqFromList!5085 lt!1427191))))))

(assert (= (and d!1191117 c!695041) b!4021409))

(assert (= (and d!1191117 (not c!695041)) b!4021408))

(assert (= (and b!4021408 c!695039) b!4021410))

(assert (= (and b!4021408 (not c!695039)) b!4021411))

(assert (= (and b!4021411 (not res!1636258)) b!4021412))

(declare-fun m!4612237 () Bool)

(assert (=> b!4021409 m!4612237))

(declare-fun m!4612239 () Bool)

(assert (=> b!4021410 m!4612239))

(declare-fun m!4612241 () Bool)

(assert (=> b!4021412 m!4612241))

(assert (=> tb!241621 d!1191117))

(assert (=> b!4019714 d!1190817))

(declare-fun d!1191119 () Bool)

(assert (=> d!1191119 (= (head!8527 lt!1427194) (h!48450 lt!1427194))))

(assert (=> b!4019714 d!1191119))

(assert (=> b!4020009 d!1190817))

(declare-fun b!4021428 () Bool)

(declare-fun res!1636265 () Bool)

(declare-fun e!2494550 () Bool)

(assert (=> b!4021428 (=> (not res!1636265) (not e!2494550))))

(assert (=> b!4021428 (= res!1636265 (= (head!8527 (tail!6259 lt!1427181)) (head!8527 (tail!6259 lt!1427186))))))

(declare-fun b!4021430 () Bool)

(declare-fun e!2494551 () Bool)

(assert (=> b!4021430 (= e!2494551 (>= (size!32171 (tail!6259 lt!1427186)) (size!32171 (tail!6259 lt!1427181))))))

(declare-fun d!1191121 () Bool)

(assert (=> d!1191121 e!2494551))

(declare-fun res!1636264 () Bool)

(assert (=> d!1191121 (=> res!1636264 e!2494551)))

(declare-fun lt!1428092 () Bool)

(assert (=> d!1191121 (= res!1636264 (not lt!1428092))))

(declare-fun e!2494552 () Bool)

(assert (=> d!1191121 (= lt!1428092 e!2494552)))

(declare-fun res!1636266 () Bool)

(assert (=> d!1191121 (=> res!1636266 e!2494552)))

(assert (=> d!1191121 (= res!1636266 ((_ is Nil!43030) (tail!6259 lt!1427181)))))

(assert (=> d!1191121 (= (isPrefix!3947 (tail!6259 lt!1427181) (tail!6259 lt!1427186)) lt!1428092)))

(declare-fun b!4021427 () Bool)

(assert (=> b!4021427 (= e!2494552 e!2494550)))

(declare-fun res!1636267 () Bool)

(assert (=> b!4021427 (=> (not res!1636267) (not e!2494550))))

(assert (=> b!4021427 (= res!1636267 (not ((_ is Nil!43030) (tail!6259 lt!1427186))))))

(declare-fun b!4021429 () Bool)

(assert (=> b!4021429 (= e!2494550 (isPrefix!3947 (tail!6259 (tail!6259 lt!1427181)) (tail!6259 (tail!6259 lt!1427186))))))

(assert (= (and d!1191121 (not res!1636266)) b!4021427))

(assert (= (and b!4021427 res!1636267) b!4021428))

(assert (= (and b!4021428 res!1636265) b!4021429))

(assert (= (and d!1191121 (not res!1636264)) b!4021430))

(assert (=> b!4021428 m!4609517))

(assert (=> b!4021428 m!4611401))

(assert (=> b!4021428 m!4609547))

(declare-fun m!4612243 () Bool)

(assert (=> b!4021428 m!4612243))

(assert (=> b!4021430 m!4609547))

(declare-fun m!4612245 () Bool)

(assert (=> b!4021430 m!4612245))

(assert (=> b!4021430 m!4609517))

(assert (=> b!4021430 m!4611405))

(assert (=> b!4021429 m!4609517))

(assert (=> b!4021429 m!4611407))

(assert (=> b!4021429 m!4609547))

(declare-fun m!4612249 () Bool)

(assert (=> b!4021429 m!4612249))

(assert (=> b!4021429 m!4611407))

(assert (=> b!4021429 m!4612249))

(declare-fun m!4612253 () Bool)

(assert (=> b!4021429 m!4612253))

(assert (=> b!4019729 d!1191121))

(assert (=> b!4019729 d!1190489))

(declare-fun d!1191123 () Bool)

(assert (=> d!1191123 (= (tail!6259 lt!1427186) (t!333487 lt!1427186))))

(assert (=> b!4019729 d!1191123))

(declare-fun b!4021432 () Bool)

(declare-fun res!1636269 () Bool)

(declare-fun e!2494553 () Bool)

(assert (=> b!4021432 (=> (not res!1636269) (not e!2494553))))

(assert (=> b!4021432 (= res!1636269 (= (head!8527 (tail!6259 lt!1427181)) (head!8527 (tail!6259 (++!11262 lt!1427181 newSuffixResult!27)))))))

(declare-fun b!4021434 () Bool)

(declare-fun e!2494554 () Bool)

(assert (=> b!4021434 (= e!2494554 (>= (size!32171 (tail!6259 (++!11262 lt!1427181 newSuffixResult!27))) (size!32171 (tail!6259 lt!1427181))))))

(declare-fun d!1191125 () Bool)

(assert (=> d!1191125 e!2494554))

(declare-fun res!1636268 () Bool)

(assert (=> d!1191125 (=> res!1636268 e!2494554)))

(declare-fun lt!1428093 () Bool)

(assert (=> d!1191125 (= res!1636268 (not lt!1428093))))

(declare-fun e!2494555 () Bool)

(assert (=> d!1191125 (= lt!1428093 e!2494555)))

(declare-fun res!1636270 () Bool)

(assert (=> d!1191125 (=> res!1636270 e!2494555)))

(assert (=> d!1191125 (= res!1636270 ((_ is Nil!43030) (tail!6259 lt!1427181)))))

(assert (=> d!1191125 (= (isPrefix!3947 (tail!6259 lt!1427181) (tail!6259 (++!11262 lt!1427181 newSuffixResult!27))) lt!1428093)))

(declare-fun b!4021431 () Bool)

(assert (=> b!4021431 (= e!2494555 e!2494553)))

(declare-fun res!1636271 () Bool)

(assert (=> b!4021431 (=> (not res!1636271) (not e!2494553))))

(assert (=> b!4021431 (= res!1636271 (not ((_ is Nil!43030) (tail!6259 (++!11262 lt!1427181 newSuffixResult!27)))))))

(declare-fun b!4021433 () Bool)

(assert (=> b!4021433 (= e!2494553 (isPrefix!3947 (tail!6259 (tail!6259 lt!1427181)) (tail!6259 (tail!6259 (++!11262 lt!1427181 newSuffixResult!27)))))))

(assert (= (and d!1191125 (not res!1636270)) b!4021431))

(assert (= (and b!4021431 res!1636271) b!4021432))

(assert (= (and b!4021432 res!1636269) b!4021433))

(assert (= (and d!1191125 (not res!1636268)) b!4021434))

(assert (=> b!4021432 m!4609517))

(assert (=> b!4021432 m!4611401))

(assert (=> b!4021432 m!4609639))

(declare-fun m!4612261 () Bool)

(assert (=> b!4021432 m!4612261))

(assert (=> b!4021434 m!4609639))

(declare-fun m!4612263 () Bool)

(assert (=> b!4021434 m!4612263))

(assert (=> b!4021434 m!4609517))

(assert (=> b!4021434 m!4611405))

(assert (=> b!4021433 m!4609517))

(assert (=> b!4021433 m!4611407))

(assert (=> b!4021433 m!4609639))

(declare-fun m!4612265 () Bool)

(assert (=> b!4021433 m!4612265))

(assert (=> b!4021433 m!4611407))

(assert (=> b!4021433 m!4612265))

(declare-fun m!4612267 () Bool)

(assert (=> b!4021433 m!4612267))

(assert (=> b!4019748 d!1191125))

(assert (=> b!4019748 d!1190489))

(declare-fun d!1191129 () Bool)

(assert (=> d!1191129 (= (tail!6259 (++!11262 lt!1427181 newSuffixResult!27)) (t!333487 (++!11262 lt!1427181 newSuffixResult!27)))))

(assert (=> b!4019748 d!1191129))

(declare-fun b!4021446 () Bool)

(declare-fun res!1636273 () Bool)

(declare-fun e!2494561 () Bool)

(assert (=> b!4021446 (=> (not res!1636273) (not e!2494561))))

(assert (=> b!4021446 (= res!1636273 (= (head!8527 (tail!6259 lt!1427181)) (head!8527 (tail!6259 lt!1427190))))))

(declare-fun b!4021448 () Bool)

(declare-fun e!2494562 () Bool)

(assert (=> b!4021448 (= e!2494562 (>= (size!32171 (tail!6259 lt!1427190)) (size!32171 (tail!6259 lt!1427181))))))

(declare-fun d!1191131 () Bool)

(assert (=> d!1191131 e!2494562))

(declare-fun res!1636272 () Bool)

(assert (=> d!1191131 (=> res!1636272 e!2494562)))

(declare-fun lt!1428095 () Bool)

(assert (=> d!1191131 (= res!1636272 (not lt!1428095))))

(declare-fun e!2494563 () Bool)

(assert (=> d!1191131 (= lt!1428095 e!2494563)))

(declare-fun res!1636274 () Bool)

(assert (=> d!1191131 (=> res!1636274 e!2494563)))

(assert (=> d!1191131 (= res!1636274 ((_ is Nil!43030) (tail!6259 lt!1427181)))))

(assert (=> d!1191131 (= (isPrefix!3947 (tail!6259 lt!1427181) (tail!6259 lt!1427190)) lt!1428095)))

(declare-fun b!4021445 () Bool)

(assert (=> b!4021445 (= e!2494563 e!2494561)))

(declare-fun res!1636275 () Bool)

(assert (=> b!4021445 (=> (not res!1636275) (not e!2494561))))

(assert (=> b!4021445 (= res!1636275 (not ((_ is Nil!43030) (tail!6259 lt!1427190))))))

(declare-fun b!4021447 () Bool)

(assert (=> b!4021447 (= e!2494561 (isPrefix!3947 (tail!6259 (tail!6259 lt!1427181)) (tail!6259 (tail!6259 lt!1427190))))))

(assert (= (and d!1191131 (not res!1636274)) b!4021445))

(assert (= (and b!4021445 res!1636275) b!4021446))

(assert (= (and b!4021446 res!1636273) b!4021447))

(assert (= (and d!1191131 (not res!1636272)) b!4021448))

(assert (=> b!4021446 m!4609517))

(assert (=> b!4021446 m!4611401))

(assert (=> b!4021446 m!4610031))

(declare-fun m!4612273 () Bool)

(assert (=> b!4021446 m!4612273))

(assert (=> b!4021448 m!4610031))

(declare-fun m!4612275 () Bool)

(assert (=> b!4021448 m!4612275))

(assert (=> b!4021448 m!4609517))

(assert (=> b!4021448 m!4611405))

(assert (=> b!4021447 m!4609517))

(assert (=> b!4021447 m!4611407))

(assert (=> b!4021447 m!4610031))

(declare-fun m!4612279 () Bool)

(assert (=> b!4021447 m!4612279))

(assert (=> b!4021447 m!4611407))

(assert (=> b!4021447 m!4612279))

(declare-fun m!4612281 () Bool)

(assert (=> b!4021447 m!4612281))

(assert (=> b!4020021 d!1191131))

(assert (=> b!4020021 d!1190489))

(declare-fun d!1191135 () Bool)

(assert (=> d!1191135 (= (tail!6259 lt!1427190) (t!333487 lt!1427190))))

(assert (=> b!4020021 d!1191135))

(declare-fun d!1191137 () Bool)

(declare-fun lt!1428096 () Int)

(assert (=> d!1191137 (>= lt!1428096 0)))

(declare-fun e!2494565 () Int)

(assert (=> d!1191137 (= lt!1428096 e!2494565)))

(declare-fun c!695048 () Bool)

(assert (=> d!1191137 (= c!695048 ((_ is Nil!43030) (t!333487 (originalCharacters!7460 token!484))))))

(assert (=> d!1191137 (= (size!32171 (t!333487 (originalCharacters!7460 token!484))) lt!1428096)))

(declare-fun b!4021451 () Bool)

(assert (=> b!4021451 (= e!2494565 0)))

(declare-fun b!4021452 () Bool)

(assert (=> b!4021452 (= e!2494565 (+ 1 (size!32171 (t!333487 (t!333487 (originalCharacters!7460 token!484))))))))

(assert (= (and d!1191137 c!695048) b!4021451))

(assert (= (and d!1191137 (not c!695048)) b!4021452))

(declare-fun m!4612287 () Bool)

(assert (=> b!4021452 m!4612287))

(assert (=> b!4020157 d!1191137))

(declare-fun b!4021456 () Bool)

(declare-fun res!1636277 () Bool)

(declare-fun e!2494567 () Bool)

(assert (=> b!4021456 (=> (not res!1636277) (not e!2494567))))

(assert (=> b!4021456 (= res!1636277 (= (head!8527 lt!1427181) (head!8527 (++!11262 lt!1427222 lt!1427213))))))

(declare-fun e!2494568 () Bool)

(declare-fun b!4021458 () Bool)

(assert (=> b!4021458 (= e!2494568 (>= (size!32171 (++!11262 lt!1427222 lt!1427213)) (size!32171 lt!1427181)))))

(declare-fun d!1191141 () Bool)

(assert (=> d!1191141 e!2494568))

(declare-fun res!1636276 () Bool)

(assert (=> d!1191141 (=> res!1636276 e!2494568)))

(declare-fun lt!1428098 () Bool)

(assert (=> d!1191141 (= res!1636276 (not lt!1428098))))

(declare-fun e!2494569 () Bool)

(assert (=> d!1191141 (= lt!1428098 e!2494569)))

(declare-fun res!1636278 () Bool)

(assert (=> d!1191141 (=> res!1636278 e!2494569)))

(assert (=> d!1191141 (= res!1636278 ((_ is Nil!43030) lt!1427181))))

(assert (=> d!1191141 (= (isPrefix!3947 lt!1427181 (++!11262 lt!1427222 lt!1427213)) lt!1428098)))

(declare-fun b!4021455 () Bool)

(assert (=> b!4021455 (= e!2494569 e!2494567)))

(declare-fun res!1636279 () Bool)

(assert (=> b!4021455 (=> (not res!1636279) (not e!2494567))))

(assert (=> b!4021455 (= res!1636279 (not ((_ is Nil!43030) (++!11262 lt!1427222 lt!1427213))))))

(declare-fun b!4021457 () Bool)

(assert (=> b!4021457 (= e!2494567 (isPrefix!3947 (tail!6259 lt!1427181) (tail!6259 (++!11262 lt!1427222 lt!1427213))))))

(assert (= (and d!1191141 (not res!1636278)) b!4021455))

(assert (= (and b!4021455 res!1636279) b!4021456))

(assert (= (and b!4021456 res!1636277) b!4021457))

(assert (= (and d!1191141 (not res!1636276)) b!4021458))

(assert (=> b!4021456 m!4609511))

(assert (=> b!4021456 m!4608951))

(declare-fun m!4612291 () Bool)

(assert (=> b!4021456 m!4612291))

(assert (=> b!4021458 m!4608951))

(declare-fun m!4612293 () Bool)

(assert (=> b!4021458 m!4612293))

(assert (=> b!4021458 m!4609027))

(assert (=> b!4021457 m!4609517))

(assert (=> b!4021457 m!4608951))

(declare-fun m!4612295 () Bool)

(assert (=> b!4021457 m!4612295))

(assert (=> b!4021457 m!4609517))

(assert (=> b!4021457 m!4612295))

(declare-fun m!4612297 () Bool)

(assert (=> b!4021457 m!4612297))

(assert (=> d!1189925 d!1191141))

(assert (=> d!1189925 d!1189851))

(declare-fun d!1191145 () Bool)

(assert (=> d!1191145 (isPrefix!3947 lt!1427181 (++!11262 lt!1427222 lt!1427213))))

(assert (=> d!1191145 true))

(declare-fun _$58!548 () Unit!62145)

(assert (=> d!1191145 (= (choose!24312 lt!1427181 lt!1427222 lt!1427213) _$58!548)))

(declare-fun bs!589901 () Bool)

(assert (= bs!589901 d!1191145))

(assert (=> bs!589901 m!4608951))

(assert (=> bs!589901 m!4608951))

(assert (=> bs!589901 m!4609539))

(assert (=> d!1189925 d!1191145))

(assert (=> d!1189925 d!1190089))

(declare-fun b!4021460 () Bool)

(declare-fun res!1636281 () Bool)

(declare-fun e!2494570 () Bool)

(assert (=> b!4021460 (=> (not res!1636281) (not e!2494570))))

(assert (=> b!4021460 (= res!1636281 (= (head!8527 (tail!6259 lt!1427181)) (head!8527 (tail!6259 lt!1427217))))))

(declare-fun b!4021462 () Bool)

(declare-fun e!2494571 () Bool)

(assert (=> b!4021462 (= e!2494571 (>= (size!32171 (tail!6259 lt!1427217)) (size!32171 (tail!6259 lt!1427181))))))

(declare-fun d!1191147 () Bool)

(assert (=> d!1191147 e!2494571))

(declare-fun res!1636280 () Bool)

(assert (=> d!1191147 (=> res!1636280 e!2494571)))

(declare-fun lt!1428099 () Bool)

(assert (=> d!1191147 (= res!1636280 (not lt!1428099))))

(declare-fun e!2494572 () Bool)

(assert (=> d!1191147 (= lt!1428099 e!2494572)))

(declare-fun res!1636282 () Bool)

(assert (=> d!1191147 (=> res!1636282 e!2494572)))

(assert (=> d!1191147 (= res!1636282 ((_ is Nil!43030) (tail!6259 lt!1427181)))))

(assert (=> d!1191147 (= (isPrefix!3947 (tail!6259 lt!1427181) (tail!6259 lt!1427217)) lt!1428099)))

(declare-fun b!4021459 () Bool)

(assert (=> b!4021459 (= e!2494572 e!2494570)))

(declare-fun res!1636283 () Bool)

(assert (=> b!4021459 (=> (not res!1636283) (not e!2494570))))

(assert (=> b!4021459 (= res!1636283 (not ((_ is Nil!43030) (tail!6259 lt!1427217))))))

(declare-fun b!4021461 () Bool)

(assert (=> b!4021461 (= e!2494570 (isPrefix!3947 (tail!6259 (tail!6259 lt!1427181)) (tail!6259 (tail!6259 lt!1427217))))))

(assert (= (and d!1191147 (not res!1636282)) b!4021459))

(assert (= (and b!4021459 res!1636283) b!4021460))

(assert (= (and b!4021460 res!1636281) b!4021461))

(assert (= (and d!1191147 (not res!1636280)) b!4021462))

(assert (=> b!4021460 m!4609517))

(assert (=> b!4021460 m!4611401))

(assert (=> b!4021460 m!4609519))

(assert (=> b!4021460 m!4611241))

(assert (=> b!4021462 m!4609519))

(assert (=> b!4021462 m!4611243))

(assert (=> b!4021462 m!4609517))

(assert (=> b!4021462 m!4611405))

(assert (=> b!4021461 m!4609517))

(assert (=> b!4021461 m!4611407))

(assert (=> b!4021461 m!4609519))

(assert (=> b!4021461 m!4611247))

(assert (=> b!4021461 m!4611407))

(assert (=> b!4021461 m!4611247))

(declare-fun m!4612299 () Bool)

(assert (=> b!4021461 m!4612299))

(assert (=> b!4019711 d!1191147))

(assert (=> b!4019711 d!1190489))

(assert (=> b!4019711 d!1190635))

(assert (=> d!1190155 d!1190479))

(declare-fun d!1191149 () Bool)

(assert (=> d!1191149 (= (isEmpty!25696 lt!1427181) ((_ is Nil!43030) lt!1427181))))

(assert (=> d!1190079 d!1191149))

(assert (=> d!1190079 d!1190435))

(declare-fun b!4021465 () Bool)

(declare-fun res!1636285 () Bool)

(declare-fun e!2494574 () Bool)

(assert (=> b!4021465 (=> (not res!1636285) (not e!2494574))))

(declare-fun lt!1428100 () List!43154)

(assert (=> b!4021465 (= res!1636285 (= (size!32171 lt!1428100) (+ (size!32171 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427506))))) (size!32171 (_2!24213 (get!14131 lt!1427506))))))))

(declare-fun b!4021463 () Bool)

(declare-fun e!2494573 () List!43154)

(assert (=> b!4021463 (= e!2494573 (_2!24213 (get!14131 lt!1427506)))))

(declare-fun d!1191153 () Bool)

(assert (=> d!1191153 e!2494574))

(declare-fun res!1636284 () Bool)

(assert (=> d!1191153 (=> (not res!1636284) (not e!2494574))))

(assert (=> d!1191153 (= res!1636284 (= (content!6526 lt!1428100) ((_ map or) (content!6526 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427506))))) (content!6526 (_2!24213 (get!14131 lt!1427506))))))))

(assert (=> d!1191153 (= lt!1428100 e!2494573)))

(declare-fun c!695050 () Bool)

(assert (=> d!1191153 (= c!695050 ((_ is Nil!43030) (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427506))))))))

(assert (=> d!1191153 (= (++!11262 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427506)))) (_2!24213 (get!14131 lt!1427506))) lt!1428100)))

(declare-fun b!4021466 () Bool)

(assert (=> b!4021466 (= e!2494574 (or (not (= (_2!24213 (get!14131 lt!1427506)) Nil!43030)) (= lt!1428100 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427506)))))))))

(declare-fun b!4021464 () Bool)

(assert (=> b!4021464 (= e!2494573 (Cons!43030 (h!48450 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427506))))) (++!11262 (t!333487 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1427506))))) (_2!24213 (get!14131 lt!1427506)))))))

(assert (= (and d!1191153 c!695050) b!4021463))

(assert (= (and d!1191153 (not c!695050)) b!4021464))

(assert (= (and d!1191153 res!1636284) b!4021465))

(assert (= (and b!4021465 res!1636285) b!4021466))

(declare-fun m!4612303 () Bool)

(assert (=> b!4021465 m!4612303))

(assert (=> b!4021465 m!4610171))

(declare-fun m!4612305 () Bool)

(assert (=> b!4021465 m!4612305))

(assert (=> b!4021465 m!4610175))

(declare-fun m!4612307 () Bool)

(assert (=> d!1191153 m!4612307))

(assert (=> d!1191153 m!4610171))

(declare-fun m!4612309 () Bool)

(assert (=> d!1191153 m!4612309))

(declare-fun m!4612311 () Bool)

(assert (=> d!1191153 m!4612311))

(declare-fun m!4612313 () Bool)

(assert (=> b!4021464 m!4612313))

(assert (=> b!4020096 d!1191153))

(assert (=> b!4020096 d!1190459))

(assert (=> b!4020096 d!1190461))

(assert (=> b!4020096 d!1190463))

(assert (=> b!4019956 d!1190403))

(assert (=> d!1190169 d!1191047))

(declare-fun d!1191155 () Bool)

(declare-fun lt!1428101 () Int)

(assert (=> d!1191155 (>= lt!1428101 0)))

(declare-fun e!2494575 () Int)

(assert (=> d!1191155 (= lt!1428101 e!2494575)))

(declare-fun c!695051 () Bool)

(assert (=> d!1191155 (= c!695051 ((_ is Nil!43030) lt!1427529))))

(assert (=> d!1191155 (= (size!32171 lt!1427529) lt!1428101)))

(declare-fun b!4021467 () Bool)

(assert (=> b!4021467 (= e!2494575 0)))

(declare-fun b!4021468 () Bool)

(assert (=> b!4021468 (= e!2494575 (+ 1 (size!32171 (t!333487 lt!1427529))))))

(assert (= (and d!1191155 c!695051) b!4021467))

(assert (= (and d!1191155 (not c!695051)) b!4021468))

(declare-fun m!4612315 () Bool)

(assert (=> b!4021468 m!4612315))

(assert (=> b!4020152 d!1191155))

(assert (=> b!4020152 d!1190141))

(assert (=> b!4020152 d!1191111))

(assert (=> d!1189953 d!1190179))

(declare-fun b!4021471 () Bool)

(declare-fun res!1636287 () Bool)

(declare-fun e!2494577 () Bool)

(assert (=> b!4021471 (=> (not res!1636287) (not e!2494577))))

(declare-fun lt!1428102 () List!43154)

(assert (=> b!4021471 (= res!1636287 (= (size!32171 lt!1428102) (+ (size!32171 lt!1427191) (size!32171 lt!1427461))))))

(declare-fun b!4021469 () Bool)

(declare-fun e!2494576 () List!43154)

(assert (=> b!4021469 (= e!2494576 lt!1427461)))

(declare-fun d!1191157 () Bool)

(assert (=> d!1191157 e!2494577))

(declare-fun res!1636286 () Bool)

(assert (=> d!1191157 (=> (not res!1636286) (not e!2494577))))

(assert (=> d!1191157 (= res!1636286 (= (content!6526 lt!1428102) ((_ map or) (content!6526 lt!1427191) (content!6526 lt!1427461))))))

(assert (=> d!1191157 (= lt!1428102 e!2494576)))

(declare-fun c!695052 () Bool)

(assert (=> d!1191157 (= c!695052 ((_ is Nil!43030) lt!1427191))))

(assert (=> d!1191157 (= (++!11262 lt!1427191 lt!1427461) lt!1428102)))

(declare-fun b!4021472 () Bool)

(assert (=> b!4021472 (= e!2494577 (or (not (= lt!1427461 Nil!43030)) (= lt!1428102 lt!1427191)))))

(declare-fun b!4021470 () Bool)

(assert (=> b!4021470 (= e!2494576 (Cons!43030 (h!48450 lt!1427191) (++!11262 (t!333487 lt!1427191) lt!1427461)))))

(assert (= (and d!1191157 c!695052) b!4021469))

(assert (= (and d!1191157 (not c!695052)) b!4021470))

(assert (= (and d!1191157 res!1636286) b!4021471))

(assert (= (and b!4021471 res!1636287) b!4021472))

(declare-fun m!4612319 () Bool)

(assert (=> b!4021471 m!4612319))

(assert (=> b!4021471 m!4609075))

(declare-fun m!4612321 () Bool)

(assert (=> b!4021471 m!4612321))

(declare-fun m!4612323 () Bool)

(assert (=> d!1191157 m!4612323))

(assert (=> d!1191157 m!4609927))

(declare-fun m!4612325 () Bool)

(assert (=> d!1191157 m!4612325))

(declare-fun m!4612327 () Bool)

(assert (=> b!4021470 m!4612327))

(assert (=> d!1190049 d!1191157))

(assert (=> d!1190049 d!1190161))

(assert (=> d!1190049 d!1190159))

(declare-fun b!4021489 () Bool)

(declare-fun res!1636297 () Bool)

(declare-fun e!2494586 () Bool)

(assert (=> b!4021489 (=> (not res!1636297) (not e!2494586))))

(declare-fun lt!1428104 () List!43154)

(assert (=> b!4021489 (= res!1636297 (= (size!32171 lt!1428104) (+ (size!32171 (t!333487 prefix!494)) (size!32171 suffix!1299))))))

(declare-fun b!4021487 () Bool)

(declare-fun e!2494585 () List!43154)

(assert (=> b!4021487 (= e!2494585 suffix!1299)))

(declare-fun d!1191161 () Bool)

(assert (=> d!1191161 e!2494586))

(declare-fun res!1636296 () Bool)

(assert (=> d!1191161 (=> (not res!1636296) (not e!2494586))))

(assert (=> d!1191161 (= res!1636296 (= (content!6526 lt!1428104) ((_ map or) (content!6526 (t!333487 prefix!494)) (content!6526 suffix!1299))))))

(assert (=> d!1191161 (= lt!1428104 e!2494585)))

(declare-fun c!695056 () Bool)

(assert (=> d!1191161 (= c!695056 ((_ is Nil!43030) (t!333487 prefix!494)))))

(assert (=> d!1191161 (= (++!11262 (t!333487 prefix!494) suffix!1299) lt!1428104)))

(declare-fun b!4021490 () Bool)

(assert (=> b!4021490 (= e!2494586 (or (not (= suffix!1299 Nil!43030)) (= lt!1428104 (t!333487 prefix!494))))))

(declare-fun b!4021488 () Bool)

(assert (=> b!4021488 (= e!2494585 (Cons!43030 (h!48450 (t!333487 prefix!494)) (++!11262 (t!333487 (t!333487 prefix!494)) suffix!1299)))))

(assert (= (and d!1191161 c!695056) b!4021487))

(assert (= (and d!1191161 (not c!695056)) b!4021488))

(assert (= (and d!1191161 res!1636296) b!4021489))

(assert (= (and b!4021489 res!1636297) b!4021490))

(declare-fun m!4612329 () Bool)

(assert (=> b!4021489 m!4612329))

(assert (=> b!4021489 m!4610247))

(assert (=> b!4021489 m!4608933))

(declare-fun m!4612331 () Bool)

(assert (=> d!1191161 m!4612331))

(assert (=> d!1191161 m!4610629))

(assert (=> d!1191161 m!4609995))

(declare-fun m!4612333 () Bool)

(assert (=> b!4021488 m!4612333))

(assert (=> b!4020052 d!1191161))

(declare-fun bs!589908 () Bool)

(declare-fun d!1191163 () Bool)

(assert (= bs!589908 (and d!1191163 d!1190269)))

(declare-fun lambda!127121 () Int)

(assert (=> bs!589908 (= (and (= (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (toChars!9227 (transformation!6860 (rule!9912 token!484)))) (= (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (toValue!9368 (transformation!6860 (rule!9912 token!484))))) (= lambda!127121 lambda!127093))))

(declare-fun bs!589909 () Bool)

(assert (= bs!589909 (and d!1191163 d!1190445)))

(assert (=> bs!589909 (= (and (= (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (toChars!9227 (transformation!6860 (h!48452 rules!2999)))) (= (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (toValue!9368 (transformation!6860 (h!48452 rules!2999))))) (= lambda!127121 lambda!127102))))

(declare-fun bs!589910 () Bool)

(assert (= bs!589910 (and d!1191163 d!1190683)))

(assert (=> bs!589910 (= lambda!127121 lambda!127111)))

(declare-fun bs!589911 () Bool)

(assert (= bs!589911 (and d!1191163 d!1190757)))

(assert (=> bs!589911 (= (and (= (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (toChars!9227 (transformation!6860 (rule!9912 token!484)))) (= (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (toValue!9368 (transformation!6860 (rule!9912 token!484))))) (= lambda!127121 lambda!127114))))

(assert (=> d!1191163 true))

(assert (=> d!1191163 (< (dynLambda!18243 order!22523 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) (dynLambda!18242 order!22521 lambda!127121))))

(assert (=> d!1191163 true))

(assert (=> d!1191163 (< (dynLambda!18241 order!22519 (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) (dynLambda!18242 order!22521 lambda!127121))))

(assert (=> d!1191163 (= (semiInverseModEq!2933 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) (Forall!1474 lambda!127121))))

(declare-fun bs!589912 () Bool)

(assert (= bs!589912 d!1191163))

(declare-fun m!4612351 () Bool)

(assert (=> bs!589912 m!4612351))

(assert (=> d!1189969 d!1191163))

(declare-fun b!4021492 () Bool)

(declare-fun res!1636299 () Bool)

(declare-fun e!2494587 () Bool)

(assert (=> b!4021492 (=> (not res!1636299) (not e!2494587))))

(assert (=> b!4021492 (= res!1636299 (= (head!8527 prefix!494) (head!8527 (++!11262 prefix!494 suffix!1299))))))

(declare-fun b!4021494 () Bool)

(declare-fun e!2494588 () Bool)

(assert (=> b!4021494 (= e!2494588 (>= (size!32171 (++!11262 prefix!494 suffix!1299)) (size!32171 prefix!494)))))

(declare-fun d!1191167 () Bool)

(assert (=> d!1191167 e!2494588))

(declare-fun res!1636298 () Bool)

(assert (=> d!1191167 (=> res!1636298 e!2494588)))

(declare-fun lt!1428105 () Bool)

(assert (=> d!1191167 (= res!1636298 (not lt!1428105))))

(declare-fun e!2494589 () Bool)

(assert (=> d!1191167 (= lt!1428105 e!2494589)))

(declare-fun res!1636300 () Bool)

(assert (=> d!1191167 (=> res!1636300 e!2494589)))

(assert (=> d!1191167 (= res!1636300 ((_ is Nil!43030) prefix!494))))

(assert (=> d!1191167 (= (isPrefix!3947 prefix!494 (++!11262 prefix!494 suffix!1299)) lt!1428105)))

(declare-fun b!4021491 () Bool)

(assert (=> b!4021491 (= e!2494589 e!2494587)))

(declare-fun res!1636301 () Bool)

(assert (=> b!4021491 (=> (not res!1636301) (not e!2494587))))

(assert (=> b!4021491 (= res!1636301 (not ((_ is Nil!43030) (++!11262 prefix!494 suffix!1299))))))

(declare-fun b!4021493 () Bool)

(assert (=> b!4021493 (= e!2494587 (isPrefix!3947 (tail!6259 prefix!494) (tail!6259 (++!11262 prefix!494 suffix!1299))))))

(assert (= (and d!1191167 (not res!1636300)) b!4021491))

(assert (= (and b!4021491 res!1636301) b!4021492))

(assert (= (and b!4021492 res!1636299) b!4021493))

(assert (= (and d!1191167 (not res!1636298)) b!4021494))

(assert (=> b!4021492 m!4609939))

(assert (=> b!4021492 m!4608961))

(assert (=> b!4021492 m!4610681))

(assert (=> b!4021494 m!4608961))

(assert (=> b!4021494 m!4610683))

(assert (=> b!4021494 m!4609077))

(assert (=> b!4021493 m!4609935))

(assert (=> b!4021493 m!4608961))

(assert (=> b!4021493 m!4610685))

(assert (=> b!4021493 m!4609935))

(assert (=> b!4021493 m!4610685))

(declare-fun m!4612353 () Bool)

(assert (=> b!4021493 m!4612353))

(assert (=> d!1190113 d!1191167))

(assert (=> d!1190113 d!1190107))

(declare-fun d!1191173 () Bool)

(assert (=> d!1191173 (isPrefix!3947 prefix!494 (++!11262 prefix!494 suffix!1299))))

(assert (=> d!1191173 true))

(declare-fun _$46!1690 () Unit!62145)

(assert (=> d!1191173 (= (choose!24307 prefix!494 suffix!1299) _$46!1690)))

(declare-fun bs!589915 () Bool)

(assert (= bs!589915 d!1191173))

(assert (=> bs!589915 m!4608961))

(assert (=> bs!589915 m!4608961))

(assert (=> bs!589915 m!4610111))

(assert (=> d!1190113 d!1191173))

(declare-fun b!4021501 () Bool)

(declare-fun res!1636305 () Bool)

(declare-fun e!2494593 () Bool)

(assert (=> b!4021501 (=> (not res!1636305) (not e!2494593))))

(declare-fun lt!1428107 () List!43154)

(assert (=> b!4021501 (= res!1636305 (= (size!32171 lt!1428107) (+ (size!32171 newSuffix!27) (size!32171 lt!1427530))))))

(declare-fun b!4021499 () Bool)

(declare-fun e!2494592 () List!43154)

(assert (=> b!4021499 (= e!2494592 lt!1427530)))

(declare-fun d!1191175 () Bool)

(assert (=> d!1191175 e!2494593))

(declare-fun res!1636304 () Bool)

(assert (=> d!1191175 (=> (not res!1636304) (not e!2494593))))

(assert (=> d!1191175 (= res!1636304 (= (content!6526 lt!1428107) ((_ map or) (content!6526 newSuffix!27) (content!6526 lt!1427530))))))

(assert (=> d!1191175 (= lt!1428107 e!2494592)))

(declare-fun c!695058 () Bool)

(assert (=> d!1191175 (= c!695058 ((_ is Nil!43030) newSuffix!27))))

(assert (=> d!1191175 (= (++!11262 newSuffix!27 lt!1427530) lt!1428107)))

(declare-fun b!4021502 () Bool)

(assert (=> b!4021502 (= e!2494593 (or (not (= lt!1427530 Nil!43030)) (= lt!1428107 newSuffix!27)))))

(declare-fun b!4021500 () Bool)

(assert (=> b!4021500 (= e!2494592 (Cons!43030 (h!48450 newSuffix!27) (++!11262 (t!333487 newSuffix!27) lt!1427530)))))

(assert (= (and d!1191175 c!695058) b!4021499))

(assert (= (and d!1191175 (not c!695058)) b!4021500))

(assert (= (and d!1191175 res!1636304) b!4021501))

(assert (= (and b!4021501 res!1636305) b!4021502))

(declare-fun m!4612361 () Bool)

(assert (=> b!4021501 m!4612361))

(assert (=> b!4021501 m!4608935))

(declare-fun m!4612363 () Bool)

(assert (=> b!4021501 m!4612363))

(declare-fun m!4612365 () Bool)

(assert (=> d!1191175 m!4612365))

(assert (=> d!1191175 m!4609967))

(declare-fun m!4612367 () Bool)

(assert (=> d!1191175 m!4612367))

(declare-fun m!4612369 () Bool)

(assert (=> b!4021500 m!4612369))

(assert (=> d!1190177 d!1191175))

(assert (=> d!1190177 d!1190139))

(assert (=> d!1190177 d!1190141))

(declare-fun b!4021508 () Bool)

(declare-fun res!1636309 () Bool)

(declare-fun e!2494596 () Bool)

(assert (=> b!4021508 (=> (not res!1636309) (not e!2494596))))

(assert (=> b!4021508 (= res!1636309 (= (head!8527 (tail!6259 lt!1427191)) (head!8527 (tail!6259 lt!1427219))))))

(declare-fun b!4021510 () Bool)

(declare-fun e!2494597 () Bool)

(assert (=> b!4021510 (= e!2494597 (>= (size!32171 (tail!6259 lt!1427219)) (size!32171 (tail!6259 lt!1427191))))))

(declare-fun d!1191181 () Bool)

(assert (=> d!1191181 e!2494597))

(declare-fun res!1636308 () Bool)

(assert (=> d!1191181 (=> res!1636308 e!2494597)))

(declare-fun lt!1428109 () Bool)

(assert (=> d!1191181 (= res!1636308 (not lt!1428109))))

(declare-fun e!2494598 () Bool)

(assert (=> d!1191181 (= lt!1428109 e!2494598)))

(declare-fun res!1636310 () Bool)

(assert (=> d!1191181 (=> res!1636310 e!2494598)))

(assert (=> d!1191181 (= res!1636310 ((_ is Nil!43030) (tail!6259 lt!1427191)))))

(assert (=> d!1191181 (= (isPrefix!3947 (tail!6259 lt!1427191) (tail!6259 lt!1427219)) lt!1428109)))

(declare-fun b!4021507 () Bool)

(assert (=> b!4021507 (= e!2494598 e!2494596)))

(declare-fun res!1636311 () Bool)

(assert (=> b!4021507 (=> (not res!1636311) (not e!2494596))))

(assert (=> b!4021507 (= res!1636311 (not ((_ is Nil!43030) (tail!6259 lt!1427219))))))

(declare-fun b!4021509 () Bool)

(assert (=> b!4021509 (= e!2494596 (isPrefix!3947 (tail!6259 (tail!6259 lt!1427191)) (tail!6259 (tail!6259 lt!1427219))))))

(assert (= (and d!1191181 (not res!1636310)) b!4021507))

(assert (= (and b!4021507 res!1636311) b!4021508))

(assert (= (and b!4021508 res!1636309) b!4021509))

(assert (= (and d!1191181 (not res!1636308)) b!4021510))

(assert (=> b!4021508 m!4609285))

(assert (=> b!4021508 m!4611159))

(assert (=> b!4021508 m!4610151))

(declare-fun m!4612379 () Bool)

(assert (=> b!4021508 m!4612379))

(assert (=> b!4021510 m!4610151))

(declare-fun m!4612383 () Bool)

(assert (=> b!4021510 m!4612383))

(assert (=> b!4021510 m!4609285))

(assert (=> b!4021510 m!4611245))

(assert (=> b!4021509 m!4609285))

(assert (=> b!4021509 m!4611161))

(assert (=> b!4021509 m!4610151))

(declare-fun m!4612385 () Bool)

(assert (=> b!4021509 m!4612385))

(assert (=> b!4021509 m!4611161))

(assert (=> b!4021509 m!4612385))

(declare-fun m!4612387 () Bool)

(assert (=> b!4021509 m!4612387))

(assert (=> b!4020090 d!1191181))

(assert (=> b!4020090 d!1190431))

(declare-fun d!1191185 () Bool)

(assert (=> d!1191185 (= (tail!6259 lt!1427219) (t!333487 lt!1427219))))

(assert (=> b!4020090 d!1191185))

(assert (=> b!4020010 d!1190487))

(assert (=> b!4020010 d!1190489))

(declare-fun d!1191187 () Bool)

(declare-fun lt!1428111 () Int)

(assert (=> d!1191187 (>= lt!1428111 0)))

(declare-fun e!2494601 () Int)

(assert (=> d!1191187 (= lt!1428111 e!2494601)))

(declare-fun c!695061 () Bool)

(assert (=> d!1191187 (= c!695061 ((_ is Nil!43030) lt!1427190))))

(assert (=> d!1191187 (= (size!32171 lt!1427190) lt!1428111)))

(declare-fun b!4021515 () Bool)

(assert (=> b!4021515 (= e!2494601 0)))

(declare-fun b!4021516 () Bool)

(assert (=> b!4021516 (= e!2494601 (+ 1 (size!32171 (t!333487 lt!1427190))))))

(assert (= (and d!1191187 c!695061) b!4021515))

(assert (= (and d!1191187 (not c!695061)) b!4021516))

(declare-fun m!4612391 () Bool)

(assert (=> b!4021516 m!4612391))

(assert (=> b!4020022 d!1191187))

(assert (=> b!4020022 d!1189967))

(declare-fun d!1191189 () Bool)

(declare-fun c!695062 () Bool)

(assert (=> d!1191189 (= c!695062 ((_ is Nil!43030) lt!1427466))))

(declare-fun e!2494602 () (InoxSet C!23716))

(assert (=> d!1191189 (= (content!6526 lt!1427466) e!2494602)))

(declare-fun b!4021517 () Bool)

(assert (=> b!4021517 (= e!2494602 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4021518 () Bool)

(assert (=> b!4021518 (= e!2494602 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 lt!1427466) true) (content!6526 (t!333487 lt!1427466))))))

(assert (= (and d!1191189 c!695062) b!4021517))

(assert (= (and d!1191189 (not c!695062)) b!4021518))

(declare-fun m!4612399 () Bool)

(assert (=> b!4021518 m!4612399))

(declare-fun m!4612401 () Bool)

(assert (=> b!4021518 m!4612401))

(assert (=> d!1190055 d!1191189))

(assert (=> d!1190055 d!1190355))

(declare-fun d!1191191 () Bool)

(declare-fun c!695063 () Bool)

(assert (=> d!1191191 (= c!695063 ((_ is Nil!43030) lt!1427187))))

(declare-fun e!2494603 () (InoxSet C!23716))

(assert (=> d!1191191 (= (content!6526 lt!1427187) e!2494603)))

(declare-fun b!4021519 () Bool)

(assert (=> b!4021519 (= e!2494603 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4021520 () Bool)

(assert (=> b!4021520 (= e!2494603 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 lt!1427187) true) (content!6526 (t!333487 lt!1427187))))))

(assert (= (and d!1191191 c!695063) b!4021519))

(assert (= (and d!1191191 (not c!695063)) b!4021520))

(declare-fun m!4612405 () Bool)

(assert (=> b!4021520 m!4612405))

(declare-fun m!4612407 () Bool)

(assert (=> b!4021520 m!4612407))

(assert (=> d!1190055 d!1191191))

(assert (=> d!1189857 d!1190175))

(declare-fun d!1191197 () Bool)

(assert (=> d!1191197 (= (++!11262 (++!11262 prefix!494 newSuffix!27) lt!1427213) (++!11262 prefix!494 (++!11262 newSuffix!27 lt!1427213)))))

(assert (=> d!1191197 true))

(declare-fun _$52!2274 () Unit!62145)

(assert (=> d!1191197 (= (choose!24310 prefix!494 newSuffix!27 lt!1427213) _$52!2274)))

(declare-fun bs!589918 () Bool)

(assert (= bs!589918 d!1191197))

(assert (=> bs!589918 m!4609071))

(assert (=> bs!589918 m!4609071))

(assert (=> bs!589918 m!4609365))

(assert (=> bs!589918 m!4608963))

(assert (=> bs!589918 m!4608963))

(assert (=> bs!589918 m!4609369))

(assert (=> d!1189857 d!1191197))

(declare-fun b!4021527 () Bool)

(declare-fun res!1636319 () Bool)

(declare-fun e!2494608 () Bool)

(assert (=> b!4021527 (=> (not res!1636319) (not e!2494608))))

(declare-fun lt!1428113 () List!43154)

(assert (=> b!4021527 (= res!1636319 (= (size!32171 lt!1428113) (+ (size!32171 (++!11262 prefix!494 newSuffix!27)) (size!32171 lt!1427213))))))

(declare-fun b!4021525 () Bool)

(declare-fun e!2494607 () List!43154)

(assert (=> b!4021525 (= e!2494607 lt!1427213)))

(declare-fun d!1191199 () Bool)

(assert (=> d!1191199 e!2494608))

(declare-fun res!1636318 () Bool)

(assert (=> d!1191199 (=> (not res!1636318) (not e!2494608))))

(assert (=> d!1191199 (= res!1636318 (= (content!6526 lt!1428113) ((_ map or) (content!6526 (++!11262 prefix!494 newSuffix!27)) (content!6526 lt!1427213))))))

(assert (=> d!1191199 (= lt!1428113 e!2494607)))

(declare-fun c!695064 () Bool)

(assert (=> d!1191199 (= c!695064 ((_ is Nil!43030) (++!11262 prefix!494 newSuffix!27)))))

(assert (=> d!1191199 (= (++!11262 (++!11262 prefix!494 newSuffix!27) lt!1427213) lt!1428113)))

(declare-fun b!4021528 () Bool)

(assert (=> b!4021528 (= e!2494608 (or (not (= lt!1427213 Nil!43030)) (= lt!1428113 (++!11262 prefix!494 newSuffix!27))))))

(declare-fun b!4021526 () Bool)

(assert (=> b!4021526 (= e!2494607 (Cons!43030 (h!48450 (++!11262 prefix!494 newSuffix!27)) (++!11262 (t!333487 (++!11262 prefix!494 newSuffix!27)) lt!1427213)))))

(assert (= (and d!1191199 c!695064) b!4021525))

(assert (= (and d!1191199 (not c!695064)) b!4021526))

(assert (= (and d!1191199 res!1636318) b!4021527))

(assert (= (and b!4021527 res!1636319) b!4021528))

(declare-fun m!4612417 () Bool)

(assert (=> b!4021527 m!4612417))

(assert (=> b!4021527 m!4609071))

(declare-fun m!4612419 () Bool)

(assert (=> b!4021527 m!4612419))

(assert (=> b!4021527 m!4609337))

(declare-fun m!4612421 () Bool)

(assert (=> d!1191199 m!4612421))

(assert (=> d!1191199 m!4609071))

(declare-fun m!4612423 () Bool)

(assert (=> d!1191199 m!4612423))

(assert (=> d!1191199 m!4609343))

(declare-fun m!4612425 () Bool)

(assert (=> b!4021526 m!4612425))

(assert (=> d!1189857 d!1191199))

(declare-fun b!4021536 () Bool)

(declare-fun res!1636322 () Bool)

(declare-fun e!2494613 () Bool)

(assert (=> b!4021536 (=> (not res!1636322) (not e!2494613))))

(declare-fun lt!1428114 () List!43154)

(assert (=> b!4021536 (= res!1636322 (= (size!32171 lt!1428114) (+ (size!32171 prefix!494) (size!32171 (++!11262 newSuffix!27 lt!1427213)))))))

(declare-fun b!4021534 () Bool)

(declare-fun e!2494612 () List!43154)

(assert (=> b!4021534 (= e!2494612 (++!11262 newSuffix!27 lt!1427213))))

(declare-fun d!1191205 () Bool)

(assert (=> d!1191205 e!2494613))

(declare-fun res!1636321 () Bool)

(assert (=> d!1191205 (=> (not res!1636321) (not e!2494613))))

(assert (=> d!1191205 (= res!1636321 (= (content!6526 lt!1428114) ((_ map or) (content!6526 prefix!494) (content!6526 (++!11262 newSuffix!27 lt!1427213)))))))

(assert (=> d!1191205 (= lt!1428114 e!2494612)))

(declare-fun c!695067 () Bool)

(assert (=> d!1191205 (= c!695067 ((_ is Nil!43030) prefix!494))))

(assert (=> d!1191205 (= (++!11262 prefix!494 (++!11262 newSuffix!27 lt!1427213)) lt!1428114)))

(declare-fun b!4021537 () Bool)

(assert (=> b!4021537 (= e!2494613 (or (not (= (++!11262 newSuffix!27 lt!1427213) Nil!43030)) (= lt!1428114 prefix!494)))))

(declare-fun b!4021535 () Bool)

(assert (=> b!4021535 (= e!2494612 (Cons!43030 (h!48450 prefix!494) (++!11262 (t!333487 prefix!494) (++!11262 newSuffix!27 lt!1427213))))))

(assert (= (and d!1191205 c!695067) b!4021534))

(assert (= (and d!1191205 (not c!695067)) b!4021535))

(assert (= (and d!1191205 res!1636321) b!4021536))

(assert (= (and b!4021536 res!1636322) b!4021537))

(declare-fun m!4612433 () Bool)

(assert (=> b!4021536 m!4612433))

(assert (=> b!4021536 m!4609077))

(assert (=> b!4021536 m!4608963))

(declare-fun m!4612435 () Bool)

(assert (=> b!4021536 m!4612435))

(declare-fun m!4612437 () Bool)

(assert (=> d!1191205 m!4612437))

(assert (=> d!1191205 m!4609319))

(assert (=> d!1191205 m!4608963))

(declare-fun m!4612439 () Bool)

(assert (=> d!1191205 m!4612439))

(assert (=> b!4021535 m!4608963))

(declare-fun m!4612441 () Bool)

(assert (=> b!4021535 m!4612441))

(assert (=> d!1189857 d!1191205))

(assert (=> d!1189857 d!1190063))

(assert (=> bm!286579 d!1191149))

(declare-fun b!4021540 () Bool)

(declare-fun res!1636324 () Bool)

(declare-fun e!2494615 () Bool)

(assert (=> b!4021540 (=> (not res!1636324) (not e!2494615))))

(declare-fun lt!1428115 () List!43154)

(assert (=> b!4021540 (= res!1636324 (= (size!32171 lt!1428115) (+ (size!32171 (t!333487 lt!1427191)) (size!32171 lt!1427187))))))

(declare-fun b!4021538 () Bool)

(declare-fun e!2494614 () List!43154)

(assert (=> b!4021538 (= e!2494614 lt!1427187)))

(declare-fun d!1191209 () Bool)

(assert (=> d!1191209 e!2494615))

(declare-fun res!1636323 () Bool)

(assert (=> d!1191209 (=> (not res!1636323) (not e!2494615))))

(assert (=> d!1191209 (= res!1636323 (= (content!6526 lt!1428115) ((_ map or) (content!6526 (t!333487 lt!1427191)) (content!6526 lt!1427187))))))

(assert (=> d!1191209 (= lt!1428115 e!2494614)))

(declare-fun c!695068 () Bool)

(assert (=> d!1191209 (= c!695068 ((_ is Nil!43030) (t!333487 lt!1427191)))))

(assert (=> d!1191209 (= (++!11262 (t!333487 lt!1427191) lt!1427187) lt!1428115)))

(declare-fun b!4021541 () Bool)

(assert (=> b!4021541 (= e!2494615 (or (not (= lt!1427187 Nil!43030)) (= lt!1428115 (t!333487 lt!1427191))))))

(declare-fun b!4021539 () Bool)

(assert (=> b!4021539 (= e!2494614 (Cons!43030 (h!48450 (t!333487 lt!1427191)) (++!11262 (t!333487 (t!333487 lt!1427191)) lt!1427187)))))

(assert (= (and d!1191209 c!695068) b!4021538))

(assert (= (and d!1191209 (not c!695068)) b!4021539))

(assert (= (and d!1191209 res!1636323) b!4021540))

(assert (= (and b!4021540 res!1636324) b!4021541))

(declare-fun m!4612443 () Bool)

(assert (=> b!4021540 m!4612443))

(assert (=> b!4021540 m!4610245))

(assert (=> b!4021540 m!4609947))

(declare-fun m!4612445 () Bool)

(assert (=> d!1191209 m!4612445))

(assert (=> d!1191209 m!4610595))

(assert (=> d!1191209 m!4609951))

(declare-fun m!4612447 () Bool)

(assert (=> b!4021539 m!4612447))

(assert (=> b!4019973 d!1191209))

(declare-fun d!1191211 () Bool)

(declare-fun lt!1428116 () Int)

(assert (=> d!1191211 (>= lt!1428116 0)))

(declare-fun e!2494616 () Int)

(assert (=> d!1191211 (= lt!1428116 e!2494616)))

(declare-fun c!695069 () Bool)

(assert (=> d!1191211 (= c!695069 ((_ is Nil!43030) (t!333487 suffix!1299)))))

(assert (=> d!1191211 (= (size!32171 (t!333487 suffix!1299)) lt!1428116)))

(declare-fun b!4021542 () Bool)

(assert (=> b!4021542 (= e!2494616 0)))

(declare-fun b!4021543 () Bool)

(assert (=> b!4021543 (= e!2494616 (+ 1 (size!32171 (t!333487 (t!333487 suffix!1299)))))))

(assert (= (and d!1191211 c!695069) b!4021542))

(assert (= (and d!1191211 (not c!695069)) b!4021543))

(declare-fun m!4612449 () Bool)

(assert (=> b!4021543 m!4612449))

(assert (=> b!4020102 d!1191211))

(declare-fun b!4021546 () Bool)

(declare-fun res!1636326 () Bool)

(declare-fun e!2494618 () Bool)

(assert (=> b!4021546 (=> (not res!1636326) (not e!2494618))))

(declare-fun lt!1428117 () List!43154)

(assert (=> b!4021546 (= res!1636326 (= (size!32171 lt!1428117) (+ (size!32171 (t!333487 lt!1427181)) (size!32171 (_2!24213 (v!39647 lt!1427206))))))))

(declare-fun b!4021544 () Bool)

(declare-fun e!2494617 () List!43154)

(assert (=> b!4021544 (= e!2494617 (_2!24213 (v!39647 lt!1427206)))))

(declare-fun d!1191215 () Bool)

(assert (=> d!1191215 e!2494618))

(declare-fun res!1636325 () Bool)

(assert (=> d!1191215 (=> (not res!1636325) (not e!2494618))))

(assert (=> d!1191215 (= res!1636325 (= (content!6526 lt!1428117) ((_ map or) (content!6526 (t!333487 lt!1427181)) (content!6526 (_2!24213 (v!39647 lt!1427206))))))))

(assert (=> d!1191215 (= lt!1428117 e!2494617)))

(declare-fun c!695070 () Bool)

(assert (=> d!1191215 (= c!695070 ((_ is Nil!43030) (t!333487 lt!1427181)))))

(assert (=> d!1191215 (= (++!11262 (t!333487 lt!1427181) (_2!24213 (v!39647 lt!1427206))) lt!1428117)))

(declare-fun b!4021547 () Bool)

(assert (=> b!4021547 (= e!2494618 (or (not (= (_2!24213 (v!39647 lt!1427206)) Nil!43030)) (= lt!1428117 (t!333487 lt!1427181))))))

(declare-fun b!4021545 () Bool)

(assert (=> b!4021545 (= e!2494617 (Cons!43030 (h!48450 (t!333487 lt!1427181)) (++!11262 (t!333487 (t!333487 lt!1427181)) (_2!24213 (v!39647 lt!1427206)))))))

(assert (= (and d!1191215 c!695070) b!4021544))

(assert (= (and d!1191215 (not c!695070)) b!4021545))

(assert (= (and d!1191215 res!1636325) b!4021546))

(assert (= (and b!4021546 res!1636326) b!4021547))

(declare-fun m!4612451 () Bool)

(assert (=> b!4021546 m!4612451))

(assert (=> b!4021546 m!4609659))

(assert (=> b!4021546 m!4609905))

(declare-fun m!4612453 () Bool)

(assert (=> d!1191215 m!4612453))

(assert (=> d!1191215 m!4610903))

(assert (=> d!1191215 m!4609909))

(declare-fun m!4612457 () Bool)

(assert (=> b!4021545 m!4612457))

(assert (=> b!4019949 d!1191215))

(assert (=> b!4020113 d!1190491))

(declare-fun b!4021554 () Bool)

(declare-fun res!1636330 () Bool)

(declare-fun e!2494622 () Bool)

(assert (=> b!4021554 (=> (not res!1636330) (not e!2494622))))

(declare-fun lt!1428119 () List!43154)

(assert (=> b!4021554 (= res!1636330 (= (size!32171 lt!1428119) (+ (size!32171 (t!333487 newSuffix!27)) (size!32171 lt!1427213))))))

(declare-fun b!4021552 () Bool)

(declare-fun e!2494621 () List!43154)

(assert (=> b!4021552 (= e!2494621 lt!1427213)))

(declare-fun d!1191217 () Bool)

(assert (=> d!1191217 e!2494622))

(declare-fun res!1636329 () Bool)

(assert (=> d!1191217 (=> (not res!1636329) (not e!2494622))))

(assert (=> d!1191217 (= res!1636329 (= (content!6526 lt!1428119) ((_ map or) (content!6526 (t!333487 newSuffix!27)) (content!6526 lt!1427213))))))

(assert (=> d!1191217 (= lt!1428119 e!2494621)))

(declare-fun c!695072 () Bool)

(assert (=> d!1191217 (= c!695072 ((_ is Nil!43030) (t!333487 newSuffix!27)))))

(assert (=> d!1191217 (= (++!11262 (t!333487 newSuffix!27) lt!1427213) lt!1428119)))

(declare-fun b!4021555 () Bool)

(assert (=> b!4021555 (= e!2494622 (or (not (= lt!1427213 Nil!43030)) (= lt!1428119 (t!333487 newSuffix!27))))))

(declare-fun b!4021553 () Bool)

(assert (=> b!4021553 (= e!2494621 (Cons!43030 (h!48450 (t!333487 newSuffix!27)) (++!11262 (t!333487 (t!333487 newSuffix!27)) lt!1427213)))))

(assert (= (and d!1191217 c!695072) b!4021552))

(assert (= (and d!1191217 (not c!695072)) b!4021553))

(assert (= (and d!1191217 res!1636329) b!4021554))

(assert (= (and b!4021554 res!1636330) b!4021555))

(declare-fun m!4612463 () Bool)

(assert (=> b!4021554 m!4612463))

(assert (=> b!4021554 m!4610211))

(assert (=> b!4021554 m!4609337))

(declare-fun m!4612465 () Bool)

(assert (=> d!1191217 m!4612465))

(assert (=> d!1191217 m!4611573))

(assert (=> d!1191217 m!4609343))

(declare-fun m!4612469 () Bool)

(assert (=> b!4021553 m!4612469))

(assert (=> b!4020151 d!1191217))

(declare-fun d!1191221 () Bool)

(assert (=> d!1191221 (= (inv!57469 (tag!7720 (h!48452 (t!333489 rules!2999)))) (= (mod (str.len (value!216143 (tag!7720 (h!48452 (t!333489 rules!2999))))) 2) 0))))

(assert (=> b!4020173 d!1191221))

(declare-fun d!1191225 () Bool)

(declare-fun res!1636333 () Bool)

(declare-fun e!2494625 () Bool)

(assert (=> d!1191225 (=> (not res!1636333) (not e!2494625))))

(assert (=> d!1191225 (= res!1636333 (semiInverseModEq!2933 (toChars!9227 (transformation!6860 (h!48452 (t!333489 rules!2999)))) (toValue!9368 (transformation!6860 (h!48452 (t!333489 rules!2999))))))))

(assert (=> d!1191225 (= (inv!57472 (transformation!6860 (h!48452 (t!333489 rules!2999)))) e!2494625)))

(declare-fun b!4021560 () Bool)

(assert (=> b!4021560 (= e!2494625 (equivClasses!2832 (toChars!9227 (transformation!6860 (h!48452 (t!333489 rules!2999)))) (toValue!9368 (transformation!6860 (h!48452 (t!333489 rules!2999))))))))

(assert (= (and d!1191225 res!1636333) b!4021560))

(declare-fun m!4612479 () Bool)

(assert (=> d!1191225 m!4612479))

(declare-fun m!4612481 () Bool)

(assert (=> b!4021560 m!4612481))

(assert (=> b!4020173 d!1191225))

(declare-fun d!1191227 () Bool)

(declare-fun c!695077 () Bool)

(assert (=> d!1191227 (= c!695077 ((_ is Nil!43030) lt!1427474))))

(declare-fun e!2494633 () (InoxSet C!23716))

(assert (=> d!1191227 (= (content!6526 lt!1427474) e!2494633)))

(declare-fun b!4021575 () Bool)

(assert (=> b!4021575 (= e!2494633 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4021576 () Bool)

(assert (=> b!4021576 (= e!2494633 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 lt!1427474) true) (content!6526 (t!333487 lt!1427474))))))

(assert (= (and d!1191227 c!695077) b!4021575))

(assert (= (and d!1191227 (not c!695077)) b!4021576))

(declare-fun m!4612483 () Bool)

(assert (=> b!4021576 m!4612483))

(declare-fun m!4612485 () Bool)

(assert (=> b!4021576 m!4612485))

(assert (=> d!1190067 d!1191227))

(assert (=> d!1190067 d!1190355))

(declare-fun d!1191229 () Bool)

(declare-fun c!695078 () Bool)

(assert (=> d!1191229 (= c!695078 ((_ is Nil!43030) lt!1427216))))

(declare-fun e!2494634 () (InoxSet C!23716))

(assert (=> d!1191229 (= (content!6526 lt!1427216) e!2494634)))

(declare-fun b!4021577 () Bool)

(assert (=> b!4021577 (= e!2494634 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4021578 () Bool)

(assert (=> b!4021578 (= e!2494634 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 lt!1427216) true) (content!6526 (t!333487 lt!1427216))))))

(assert (= (and d!1191229 c!695078) b!4021577))

(assert (= (and d!1191229 (not c!695078)) b!4021578))

(declare-fun m!4612487 () Bool)

(assert (=> b!4021578 m!4612487))

(declare-fun m!4612489 () Bool)

(assert (=> b!4021578 m!4612489))

(assert (=> d!1190067 d!1191229))

(assert (=> d!1190039 d!1190435))

(assert (=> b!4019747 d!1190817))

(declare-fun d!1191231 () Bool)

(assert (=> d!1191231 (= (head!8527 (++!11262 lt!1427181 newSuffixResult!27)) (h!48450 (++!11262 lt!1427181 newSuffixResult!27)))))

(assert (=> b!4019747 d!1191231))

(assert (=> b!4019710 d!1190817))

(assert (=> b!4019710 d!1190775))

(assert (=> b!4020020 d!1190817))

(declare-fun d!1191233 () Bool)

(assert (=> d!1191233 (= (head!8527 lt!1427190) (h!48450 lt!1427190))))

(assert (=> b!4020020 d!1191233))

(declare-fun b!4021579 () Bool)

(declare-fun e!2494639 () Bool)

(declare-fun e!2494637 () Bool)

(assert (=> b!4021579 (= e!2494639 e!2494637)))

(declare-fun res!1636346 () Bool)

(assert (=> b!4021579 (=> res!1636346 e!2494637)))

(declare-fun call!286728 () Bool)

(assert (=> b!4021579 (= res!1636346 call!286728)))

(declare-fun b!4021580 () Bool)

(declare-fun res!1636349 () Bool)

(declare-fun e!2494636 () Bool)

(assert (=> b!4021580 (=> (not res!1636349) (not e!2494636))))

(assert (=> b!4021580 (= res!1636349 (isEmpty!25696 (tail!6259 (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) Nil!43030 (size!32171 Nil!43030) lt!1427222 lt!1427222 (size!32171 lt!1427222))))))))

(declare-fun b!4021581 () Bool)

(declare-fun e!2494638 () Bool)

(declare-fun lt!1428122 () Bool)

(assert (=> b!4021581 (= e!2494638 (not lt!1428122))))

(declare-fun b!4021582 () Bool)

(declare-fun res!1636344 () Bool)

(declare-fun e!2494635 () Bool)

(assert (=> b!4021582 (=> res!1636344 e!2494635)))

(assert (=> b!4021582 (= res!1636344 (not ((_ is ElementMatch!11765) (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))))

(assert (=> b!4021582 (= e!2494638 e!2494635)))

(declare-fun b!4021584 () Bool)

(declare-fun res!1636343 () Bool)

(assert (=> b!4021584 (=> res!1636343 e!2494637)))

(assert (=> b!4021584 (= res!1636343 (not (isEmpty!25696 (tail!6259 (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) Nil!43030 (size!32171 Nil!43030) lt!1427222 lt!1427222 (size!32171 lt!1427222)))))))))

(declare-fun b!4021585 () Bool)

(declare-fun res!1636347 () Bool)

(assert (=> b!4021585 (=> (not res!1636347) (not e!2494636))))

(assert (=> b!4021585 (= res!1636347 (not call!286728))))

(declare-fun b!4021586 () Bool)

(declare-fun res!1636348 () Bool)

(assert (=> b!4021586 (=> res!1636348 e!2494635)))

(assert (=> b!4021586 (= res!1636348 e!2494636)))

(declare-fun res!1636342 () Bool)

(assert (=> b!4021586 (=> (not res!1636342) (not e!2494636))))

(assert (=> b!4021586 (= res!1636342 lt!1428122)))

(declare-fun b!4021587 () Bool)

(assert (=> b!4021587 (= e!2494637 (not (= (head!8527 (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) Nil!43030 (size!32171 Nil!43030) lt!1427222 lt!1427222 (size!32171 lt!1427222)))) (c!694547 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))))

(declare-fun b!4021588 () Bool)

(declare-fun e!2494640 () Bool)

(assert (=> b!4021588 (= e!2494640 (nullable!4126 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(declare-fun b!4021589 () Bool)

(declare-fun e!2494641 () Bool)

(assert (=> b!4021589 (= e!2494641 e!2494638)))

(declare-fun c!695081 () Bool)

(assert (=> b!4021589 (= c!695081 ((_ is EmptyLang!11765) (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(declare-fun b!4021590 () Bool)

(assert (=> b!4021590 (= e!2494635 e!2494639)))

(declare-fun res!1636345 () Bool)

(assert (=> b!4021590 (=> (not res!1636345) (not e!2494639))))

(assert (=> b!4021590 (= res!1636345 (not lt!1428122))))

(declare-fun b!4021591 () Bool)

(assert (=> b!4021591 (= e!2494640 (matchR!5726 (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (head!8527 (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) Nil!43030 (size!32171 Nil!43030) lt!1427222 lt!1427222 (size!32171 lt!1427222))))) (tail!6259 (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) Nil!43030 (size!32171 Nil!43030) lt!1427222 lt!1427222 (size!32171 lt!1427222))))))))

(declare-fun bm!286723 () Bool)

(assert (=> bm!286723 (= call!286728 (isEmpty!25696 (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) Nil!43030 (size!32171 Nil!43030) lt!1427222 lt!1427222 (size!32171 lt!1427222)))))))

(declare-fun b!4021592 () Bool)

(assert (=> b!4021592 (= e!2494641 (= lt!1428122 call!286728))))

(declare-fun b!4021583 () Bool)

(assert (=> b!4021583 (= e!2494636 (= (head!8527 (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) Nil!43030 (size!32171 Nil!43030) lt!1427222 lt!1427222 (size!32171 lt!1427222)))) (c!694547 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))))

(declare-fun d!1191235 () Bool)

(assert (=> d!1191235 e!2494641))

(declare-fun c!695079 () Bool)

(assert (=> d!1191235 (= c!695079 ((_ is EmptyExpr!11765) (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(assert (=> d!1191235 (= lt!1428122 e!2494640)))

(declare-fun c!695080 () Bool)

(assert (=> d!1191235 (= c!695080 (isEmpty!25696 (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) Nil!43030 (size!32171 Nil!43030) lt!1427222 lt!1427222 (size!32171 lt!1427222)))))))

(assert (=> d!1191235 (validRegex!5326 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))

(assert (=> d!1191235 (= (matchR!5726 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (_1!24215 (findLongestMatchInner!1367 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) Nil!43030 (size!32171 Nil!43030) lt!1427222 lt!1427222 (size!32171 lt!1427222)))) lt!1428122)))

(assert (= (and d!1191235 c!695080) b!4021588))

(assert (= (and d!1191235 (not c!695080)) b!4021591))

(assert (= (and d!1191235 c!695079) b!4021592))

(assert (= (and d!1191235 (not c!695079)) b!4021589))

(assert (= (and b!4021589 c!695081) b!4021581))

(assert (= (and b!4021589 (not c!695081)) b!4021582))

(assert (= (and b!4021582 (not res!1636344)) b!4021586))

(assert (= (and b!4021586 res!1636342) b!4021585))

(assert (= (and b!4021585 res!1636347) b!4021580))

(assert (= (and b!4021580 res!1636349) b!4021583))

(assert (= (and b!4021586 (not res!1636348)) b!4021590))

(assert (= (and b!4021590 res!1636345) b!4021579))

(assert (= (and b!4021579 (not res!1636346)) b!4021584))

(assert (= (and b!4021584 (not res!1636343)) b!4021587))

(assert (= (or b!4021592 b!4021579 b!4021585) bm!286723))

(declare-fun m!4612505 () Bool)

(assert (=> b!4021587 m!4612505))

(assert (=> b!4021583 m!4612505))

(declare-fun m!4612509 () Bool)

(assert (=> b!4021580 m!4612509))

(assert (=> b!4021580 m!4612509))

(declare-fun m!4612513 () Bool)

(assert (=> b!4021580 m!4612513))

(assert (=> b!4021588 m!4609501))

(assert (=> bm!286723 m!4609875))

(assert (=> b!4021584 m!4612509))

(assert (=> b!4021584 m!4612509))

(assert (=> b!4021584 m!4612513))

(assert (=> d!1191235 m!4609875))

(assert (=> d!1191235 m!4609505))

(assert (=> b!4021591 m!4612505))

(assert (=> b!4021591 m!4612505))

(declare-fun m!4612517 () Bool)

(assert (=> b!4021591 m!4612517))

(assert (=> b!4021591 m!4612509))

(assert (=> b!4021591 m!4612517))

(assert (=> b!4021591 m!4612509))

(declare-fun m!4612519 () Bool)

(assert (=> b!4021591 m!4612519))

(assert (=> b!4019938 d!1191235))

(assert (=> b!4019938 d!1190671))

(assert (=> b!4019938 d!1190347))

(assert (=> b!4019938 d!1190377))

(declare-fun b!4021602 () Bool)

(declare-fun res!1636351 () Bool)

(declare-fun e!2494646 () Bool)

(assert (=> b!4021602 (=> (not res!1636351) (not e!2494646))))

(assert (=> b!4021602 (= res!1636351 (= (head!8527 lt!1427191) (head!8527 (++!11262 prefix!494 newSuffix!27))))))

(declare-fun e!2494647 () Bool)

(declare-fun b!4021604 () Bool)

(assert (=> b!4021604 (= e!2494647 (>= (size!32171 (++!11262 prefix!494 newSuffix!27)) (size!32171 lt!1427191)))))

(declare-fun d!1191247 () Bool)

(assert (=> d!1191247 e!2494647))

(declare-fun res!1636350 () Bool)

(assert (=> d!1191247 (=> res!1636350 e!2494647)))

(declare-fun lt!1428125 () Bool)

(assert (=> d!1191247 (= res!1636350 (not lt!1428125))))

(declare-fun e!2494648 () Bool)

(assert (=> d!1191247 (= lt!1428125 e!2494648)))

(declare-fun res!1636352 () Bool)

(assert (=> d!1191247 (=> res!1636352 e!2494648)))

(assert (=> d!1191247 (= res!1636352 ((_ is Nil!43030) lt!1427191))))

(assert (=> d!1191247 (= (isPrefix!3947 lt!1427191 (++!11262 prefix!494 newSuffix!27)) lt!1428125)))

(declare-fun b!4021601 () Bool)

(assert (=> b!4021601 (= e!2494648 e!2494646)))

(declare-fun res!1636353 () Bool)

(assert (=> b!4021601 (=> (not res!1636353) (not e!2494646))))

(assert (=> b!4021601 (= res!1636353 (not ((_ is Nil!43030) (++!11262 prefix!494 newSuffix!27))))))

(declare-fun b!4021603 () Bool)

(assert (=> b!4021603 (= e!2494646 (isPrefix!3947 (tail!6259 lt!1427191) (tail!6259 (++!11262 prefix!494 newSuffix!27))))))

(assert (= (and d!1191247 (not res!1636352)) b!4021601))

(assert (= (and b!4021601 res!1636353) b!4021602))

(assert (= (and b!4021602 res!1636351) b!4021603))

(assert (= (and d!1191247 (not res!1636350)) b!4021604))

(assert (=> b!4021602 m!4609279))

(assert (=> b!4021602 m!4609071))

(declare-fun m!4612531 () Bool)

(assert (=> b!4021602 m!4612531))

(assert (=> b!4021604 m!4609071))

(assert (=> b!4021604 m!4612419))

(assert (=> b!4021604 m!4609075))

(assert (=> b!4021603 m!4609285))

(assert (=> b!4021603 m!4609071))

(declare-fun m!4612533 () Bool)

(assert (=> b!4021603 m!4612533))

(assert (=> b!4021603 m!4609285))

(assert (=> b!4021603 m!4612533))

(declare-fun m!4612535 () Bool)

(assert (=> b!4021603 m!4612535))

(assert (=> d!1190147 d!1191247))

(assert (=> d!1190147 d!1190063))

(declare-fun d!1191253 () Bool)

(assert (=> d!1191253 (isPrefix!3947 lt!1427191 (++!11262 prefix!494 newSuffix!27))))

(assert (=> d!1191253 true))

(declare-fun _$58!549 () Unit!62145)

(assert (=> d!1191253 (= (choose!24312 lt!1427191 prefix!494 newSuffix!27) _$58!549)))

(declare-fun bs!589921 () Bool)

(assert (= bs!589921 d!1191253))

(assert (=> bs!589921 m!4609071))

(assert (=> bs!589921 m!4609071))

(assert (=> bs!589921 m!4610223))

(assert (=> d!1190147 d!1191253))

(assert (=> d!1190147 d!1190051))

(assert (=> b!4020095 d!1190463))

(declare-fun d!1191255 () Bool)

(declare-fun c!695087 () Bool)

(assert (=> d!1191255 (= c!695087 ((_ is Node!13071) (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (value!216144 token!484)))))))

(declare-fun e!2494653 () Bool)

(assert (=> d!1191255 (= (inv!57476 (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (value!216144 token!484)))) e!2494653)))

(declare-fun b!4021611 () Bool)

(assert (=> b!4021611 (= e!2494653 (inv!57478 (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (value!216144 token!484)))))))

(declare-fun b!4021612 () Bool)

(declare-fun e!2494654 () Bool)

(assert (=> b!4021612 (= e!2494653 e!2494654)))

(declare-fun res!1636358 () Bool)

(assert (=> b!4021612 (= res!1636358 (not ((_ is Leaf!20208) (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (value!216144 token!484))))))))

(assert (=> b!4021612 (=> res!1636358 e!2494654)))

(declare-fun b!4021613 () Bool)

(assert (=> b!4021613 (= e!2494654 (inv!57479 (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (value!216144 token!484)))))))

(assert (= (and d!1191255 c!695087) b!4021611))

(assert (= (and d!1191255 (not c!695087)) b!4021612))

(assert (= (and b!4021612 (not res!1636358)) b!4021613))

(declare-fun m!4612545 () Bool)

(assert (=> b!4021611 m!4612545))

(declare-fun m!4612547 () Bool)

(assert (=> b!4021613 m!4612547))

(assert (=> b!4020041 d!1191255))

(declare-fun b!4021614 () Bool)

(declare-fun res!1636362 () Bool)

(declare-fun e!2494656 () Bool)

(assert (=> b!4021614 (=> (not res!1636362) (not e!2494656))))

(declare-fun lt!1428128 () Option!9274)

(assert (=> b!4021614 (= res!1636362 (= (value!216144 (_1!24213 (get!14131 lt!1428128))) (apply!10057 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1428128)))) (seqFromList!5085 (originalCharacters!7460 (_1!24213 (get!14131 lt!1428128)))))))))

(declare-fun b!4021615 () Bool)

(declare-fun e!2494658 () Bool)

(assert (=> b!4021615 (= e!2494658 e!2494656)))

(declare-fun res!1636360 () Bool)

(assert (=> b!4021615 (=> (not res!1636360) (not e!2494656))))

(assert (=> b!4021615 (= res!1636360 (matchR!5726 (regex!6860 (h!48452 rules!2999)) (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1428128))))))))

(declare-fun b!4021616 () Bool)

(declare-fun e!2494655 () Option!9274)

(declare-fun lt!1428129 () tuple2!42162)

(assert (=> b!4021616 (= e!2494655 (Some!9273 (tuple2!42159 (Token!12859 (apply!10057 (transformation!6860 (h!48452 rules!2999)) (seqFromList!5085 (_1!24215 lt!1428129))) (h!48452 rules!2999) (size!32174 (seqFromList!5085 (_1!24215 lt!1428129))) (_1!24215 lt!1428129)) (_2!24215 lt!1428129))))))

(declare-fun lt!1428130 () Unit!62145)

(assert (=> b!4021616 (= lt!1428130 (longestMatchIsAcceptedByMatchOrIsEmpty!1340 (regex!6860 (h!48452 rules!2999)) lt!1427217))))

(declare-fun res!1636361 () Bool)

(assert (=> b!4021616 (= res!1636361 (isEmpty!25696 (_1!24215 (findLongestMatchInner!1367 (regex!6860 (h!48452 rules!2999)) Nil!43030 (size!32171 Nil!43030) lt!1427217 lt!1427217 (size!32171 lt!1427217)))))))

(declare-fun e!2494657 () Bool)

(assert (=> b!4021616 (=> res!1636361 e!2494657)))

(assert (=> b!4021616 e!2494657))

(declare-fun lt!1428127 () Unit!62145)

(assert (=> b!4021616 (= lt!1428127 lt!1428130)))

(declare-fun lt!1428131 () Unit!62145)

(assert (=> b!4021616 (= lt!1428131 (lemmaSemiInverse!1887 (transformation!6860 (h!48452 rules!2999)) (seqFromList!5085 (_1!24215 lt!1428129))))))

(declare-fun b!4021617 () Bool)

(declare-fun res!1636363 () Bool)

(assert (=> b!4021617 (=> (not res!1636363) (not e!2494656))))

(assert (=> b!4021617 (= res!1636363 (= (rule!9912 (_1!24213 (get!14131 lt!1428128))) (h!48452 rules!2999)))))

(declare-fun b!4021618 () Bool)

(declare-fun res!1636364 () Bool)

(assert (=> b!4021618 (=> (not res!1636364) (not e!2494656))))

(assert (=> b!4021618 (= res!1636364 (= (++!11262 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1428128)))) (_2!24213 (get!14131 lt!1428128))) lt!1427217))))

(declare-fun b!4021619 () Bool)

(assert (=> b!4021619 (= e!2494657 (matchR!5726 (regex!6860 (h!48452 rules!2999)) (_1!24215 (findLongestMatchInner!1367 (regex!6860 (h!48452 rules!2999)) Nil!43030 (size!32171 Nil!43030) lt!1427217 lt!1427217 (size!32171 lt!1427217)))))))

(declare-fun b!4021620 () Bool)

(assert (=> b!4021620 (= e!2494655 None!9273)))

(declare-fun b!4021622 () Bool)

(assert (=> b!4021622 (= e!2494656 (= (size!32172 (_1!24213 (get!14131 lt!1428128))) (size!32171 (originalCharacters!7460 (_1!24213 (get!14131 lt!1428128))))))))

(declare-fun b!4021621 () Bool)

(declare-fun res!1636365 () Bool)

(assert (=> b!4021621 (=> (not res!1636365) (not e!2494656))))

(assert (=> b!4021621 (= res!1636365 (< (size!32171 (_2!24213 (get!14131 lt!1428128))) (size!32171 lt!1427217)))))

(declare-fun d!1191259 () Bool)

(assert (=> d!1191259 e!2494658))

(declare-fun res!1636359 () Bool)

(assert (=> d!1191259 (=> res!1636359 e!2494658)))

(assert (=> d!1191259 (= res!1636359 (isEmpty!25695 lt!1428128))))

(assert (=> d!1191259 (= lt!1428128 e!2494655)))

(declare-fun c!695088 () Bool)

(assert (=> d!1191259 (= c!695088 (isEmpty!25696 (_1!24215 lt!1428129)))))

(assert (=> d!1191259 (= lt!1428129 (findLongestMatch!1280 (regex!6860 (h!48452 rules!2999)) lt!1427217))))

(assert (=> d!1191259 (ruleValid!2792 thiss!21717 (h!48452 rules!2999))))

(assert (=> d!1191259 (= (maxPrefixOneRule!2767 thiss!21717 (h!48452 rules!2999) lt!1427217) lt!1428128)))

(assert (= (and d!1191259 c!695088) b!4021620))

(assert (= (and d!1191259 (not c!695088)) b!4021616))

(assert (= (and b!4021616 (not res!1636361)) b!4021619))

(assert (= (and d!1191259 (not res!1636359)) b!4021615))

(assert (= (and b!4021615 res!1636360) b!4021618))

(assert (= (and b!4021618 res!1636364) b!4021621))

(assert (= (and b!4021621 res!1636365) b!4021617))

(assert (= (and b!4021617 res!1636363) b!4021614))

(assert (= (and b!4021614 res!1636362) b!4021622))

(declare-fun m!4612559 () Bool)

(assert (=> b!4021622 m!4612559))

(declare-fun m!4612561 () Bool)

(assert (=> b!4021622 m!4612561))

(assert (=> b!4021615 m!4612559))

(declare-fun m!4612563 () Bool)

(assert (=> b!4021615 m!4612563))

(assert (=> b!4021615 m!4612563))

(declare-fun m!4612565 () Bool)

(assert (=> b!4021615 m!4612565))

(assert (=> b!4021615 m!4612565))

(declare-fun m!4612567 () Bool)

(assert (=> b!4021615 m!4612567))

(assert (=> b!4021621 m!4612559))

(declare-fun m!4612569 () Bool)

(assert (=> b!4021621 m!4612569))

(assert (=> b!4021621 m!4609515))

(assert (=> b!4021618 m!4612559))

(assert (=> b!4021618 m!4612563))

(assert (=> b!4021618 m!4612563))

(assert (=> b!4021618 m!4612565))

(assert (=> b!4021618 m!4612565))

(declare-fun m!4612573 () Bool)

(assert (=> b!4021618 m!4612573))

(declare-fun m!4612577 () Bool)

(assert (=> d!1191259 m!4612577))

(declare-fun m!4612579 () Bool)

(assert (=> d!1191259 m!4612579))

(declare-fun m!4612583 () Bool)

(assert (=> d!1191259 m!4612583))

(assert (=> d!1191259 m!4610609))

(declare-fun m!4612585 () Bool)

(assert (=> b!4021616 m!4612585))

(declare-fun m!4612589 () Bool)

(assert (=> b!4021616 m!4612589))

(declare-fun m!4612591 () Bool)

(assert (=> b!4021616 m!4612591))

(assert (=> b!4021616 m!4612589))

(assert (=> b!4021616 m!4612589))

(declare-fun m!4612593 () Bool)

(assert (=> b!4021616 m!4612593))

(declare-fun m!4612597 () Bool)

(assert (=> b!4021616 m!4612597))

(assert (=> b!4021616 m!4609515))

(assert (=> b!4021616 m!4612589))

(declare-fun m!4612599 () Bool)

(assert (=> b!4021616 m!4612599))

(assert (=> b!4021616 m!4609879))

(assert (=> b!4021616 m!4609879))

(assert (=> b!4021616 m!4609515))

(declare-fun m!4612601 () Bool)

(assert (=> b!4021616 m!4612601))

(assert (=> b!4021614 m!4612559))

(declare-fun m!4612603 () Bool)

(assert (=> b!4021614 m!4612603))

(assert (=> b!4021614 m!4612603))

(declare-fun m!4612605 () Bool)

(assert (=> b!4021614 m!4612605))

(assert (=> b!4021619 m!4609879))

(assert (=> b!4021619 m!4609515))

(assert (=> b!4021619 m!4609879))

(assert (=> b!4021619 m!4609515))

(assert (=> b!4021619 m!4612601))

(declare-fun m!4612607 () Bool)

(assert (=> b!4021619 m!4612607))

(assert (=> b!4021617 m!4612559))

(assert (=> bm!286580 d!1191259))

(declare-fun d!1191277 () Bool)

(declare-fun lt!1428135 () Int)

(assert (=> d!1191277 (>= lt!1428135 0)))

(declare-fun e!2494673 () Int)

(assert (=> d!1191277 (= lt!1428135 e!2494673)))

(declare-fun c!695096 () Bool)

(assert (=> d!1191277 (= c!695096 (and ((_ is Cons!43032) (t!333489 rules!2999)) (= (h!48452 (t!333489 rules!2999)) (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(assert (=> d!1191277 (contains!8548 (t!333489 rules!2999) (rule!9912 (_1!24213 (v!39647 lt!1427206))))))

(assert (=> d!1191277 (= (getIndex!558 (t!333489 rules!2999) (rule!9912 (_1!24213 (v!39647 lt!1427206)))) lt!1428135)))

(declare-fun b!4021647 () Bool)

(assert (=> b!4021647 (= e!2494673 0)))

(declare-fun b!4021649 () Bool)

(declare-fun e!2494672 () Int)

(assert (=> b!4021649 (= e!2494672 (+ 1 (getIndex!558 (t!333489 (t!333489 rules!2999)) (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(declare-fun b!4021650 () Bool)

(assert (=> b!4021650 (= e!2494672 (- 1))))

(declare-fun b!4021648 () Bool)

(assert (=> b!4021648 (= e!2494673 e!2494672)))

(declare-fun c!695095 () Bool)

(assert (=> b!4021648 (= c!695095 (and ((_ is Cons!43032) (t!333489 rules!2999)) (not (= (h!48452 (t!333489 rules!2999)) (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))))

(assert (= (and d!1191277 c!695096) b!4021647))

(assert (= (and d!1191277 (not c!695096)) b!4021648))

(assert (= (and b!4021648 c!695095) b!4021649))

(assert (= (and b!4021648 (not c!695095)) b!4021650))

(assert (=> d!1191277 m!4612103))

(declare-fun m!4612617 () Bool)

(assert (=> b!4021649 m!4612617))

(assert (=> b!4020148 d!1191277))

(declare-fun d!1191283 () Bool)

(assert (=> d!1191283 (= (_2!24213 (v!39647 lt!1427206)) lt!1427214)))

(assert (=> d!1191283 true))

(declare-fun _$63!1064 () Unit!62145)

(assert (=> d!1191283 (= (choose!24306 lt!1427181 (_2!24213 (v!39647 lt!1427206)) lt!1427181 lt!1427214 lt!1427222) _$63!1064)))

(assert (=> d!1190083 d!1191283))

(assert (=> d!1190083 d!1190089))

(declare-fun d!1191285 () Bool)

(declare-fun lt!1428137 () Int)

(assert (=> d!1191285 (>= lt!1428137 0)))

(declare-fun e!2494675 () Int)

(assert (=> d!1191285 (= lt!1428137 e!2494675)))

(declare-fun c!695098 () Bool)

(assert (=> d!1191285 (= c!695098 ((_ is Nil!43030) lt!1427474))))

(assert (=> d!1191285 (= (size!32171 lt!1427474) lt!1428137)))

(declare-fun b!4021653 () Bool)

(assert (=> b!4021653 (= e!2494675 0)))

(declare-fun b!4021654 () Bool)

(assert (=> b!4021654 (= e!2494675 (+ 1 (size!32171 (t!333487 lt!1427474))))))

(assert (= (and d!1191285 c!695098) b!4021653))

(assert (= (and d!1191285 (not c!695098)) b!4021654))

(declare-fun m!4612621 () Bool)

(assert (=> b!4021654 m!4612621))

(assert (=> b!4019992 d!1191285))

(assert (=> b!4019992 d!1190159))

(declare-fun d!1191289 () Bool)

(declare-fun lt!1428139 () Int)

(assert (=> d!1191289 (>= lt!1428139 0)))

(declare-fun e!2494677 () Int)

(assert (=> d!1191289 (= lt!1428139 e!2494677)))

(declare-fun c!695100 () Bool)

(assert (=> d!1191289 (= c!695100 ((_ is Nil!43030) lt!1427216))))

(assert (=> d!1191289 (= (size!32171 lt!1427216) lt!1428139)))

(declare-fun b!4021657 () Bool)

(assert (=> b!4021657 (= e!2494677 0)))

(declare-fun b!4021658 () Bool)

(assert (=> b!4021658 (= e!2494677 (+ 1 (size!32171 (t!333487 lt!1427216))))))

(assert (= (and d!1191289 c!695100) b!4021657))

(assert (= (and d!1191289 (not c!695100)) b!4021658))

(declare-fun m!4612627 () Bool)

(assert (=> b!4021658 m!4612627))

(assert (=> b!4019992 d!1191289))

(assert (=> b!4019728 d!1190817))

(declare-fun d!1191295 () Bool)

(assert (=> d!1191295 (= (head!8527 lt!1427186) (h!48450 lt!1427186))))

(assert (=> b!4019728 d!1191295))

(assert (=> b!4020089 d!1190491))

(declare-fun d!1191297 () Bool)

(assert (=> d!1191297 (= (head!8527 lt!1427219) (h!48450 lt!1427219))))

(assert (=> b!4020089 d!1191297))

(assert (=> d!1190077 d!1190079))

(declare-fun d!1191299 () Bool)

(assert (=> d!1191299 (not (matchR!5726 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) lt!1427181))))

(assert (=> d!1191299 true))

(declare-fun _$57!117 () Unit!62145)

(assert (=> d!1191299 (= (choose!24319 thiss!21717 rules!2999 (rule!9912 token!484) lt!1427191 lt!1427217 lt!1427181 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) _$57!117)))

(declare-fun bs!589927 () Bool)

(assert (= bs!589927 d!1191299))

(assert (=> bs!589927 m!4608955))

(assert (=> d!1190077 d!1191299))

(assert (=> d!1190077 d!1190111))

(declare-fun b!4021670 () Bool)

(declare-fun res!1636386 () Bool)

(declare-fun e!2494682 () Bool)

(assert (=> b!4021670 (=> (not res!1636386) (not e!2494682))))

(declare-fun lt!1428145 () List!43154)

(assert (=> b!4021670 (= res!1636386 (= (size!32171 lt!1428145) (+ (size!32171 (t!333487 lt!1427222)) (size!32171 lt!1427213))))))

(declare-fun b!4021668 () Bool)

(declare-fun e!2494681 () List!43154)

(assert (=> b!4021668 (= e!2494681 lt!1427213)))

(declare-fun d!1191301 () Bool)

(assert (=> d!1191301 e!2494682))

(declare-fun res!1636385 () Bool)

(assert (=> d!1191301 (=> (not res!1636385) (not e!2494682))))

(assert (=> d!1191301 (= res!1636385 (= (content!6526 lt!1428145) ((_ map or) (content!6526 (t!333487 lt!1427222)) (content!6526 lt!1427213))))))

(assert (=> d!1191301 (= lt!1428145 e!2494681)))

(declare-fun c!695102 () Bool)

(assert (=> d!1191301 (= c!695102 ((_ is Nil!43030) (t!333487 lt!1427222)))))

(assert (=> d!1191301 (= (++!11262 (t!333487 lt!1427222) lt!1427213) lt!1428145)))

(declare-fun b!4021671 () Bool)

(assert (=> b!4021671 (= e!2494682 (or (not (= lt!1427213 Nil!43030)) (= lt!1428145 (t!333487 lt!1427222))))))

(declare-fun b!4021669 () Bool)

(assert (=> b!4021669 (= e!2494681 (Cons!43030 (h!48450 (t!333487 lt!1427222)) (++!11262 (t!333487 (t!333487 lt!1427222)) lt!1427213)))))

(assert (= (and d!1191301 c!695102) b!4021668))

(assert (= (and d!1191301 (not c!695102)) b!4021669))

(assert (= (and d!1191301 res!1636385) b!4021670))

(assert (= (and b!4021670 res!1636386) b!4021671))

(declare-fun m!4612629 () Bool)

(assert (=> b!4021670 m!4612629))

(assert (=> b!4021670 m!4610615))

(assert (=> b!4021670 m!4609337))

(declare-fun m!4612631 () Bool)

(assert (=> d!1191301 m!4612631))

(assert (=> d!1191301 m!4612121))

(assert (=> d!1191301 m!4609343))

(declare-fun m!4612633 () Bool)

(assert (=> b!4021669 m!4612633))

(assert (=> b!4019581 d!1191301))

(declare-fun b!4021674 () Bool)

(declare-fun e!2494684 () List!43154)

(assert (=> b!4021674 (= e!2494684 (list!16000 (xs!16377 (c!694546 (charsOf!4676 token!484)))))))

(declare-fun b!4021675 () Bool)

(assert (=> b!4021675 (= e!2494684 (++!11262 (list!15998 (left!32435 (c!694546 (charsOf!4676 token!484)))) (list!15998 (right!32765 (c!694546 (charsOf!4676 token!484))))))))

(declare-fun b!4021672 () Bool)

(declare-fun e!2494683 () List!43154)

(assert (=> b!4021672 (= e!2494683 Nil!43030)))

(declare-fun d!1191303 () Bool)

(declare-fun c!695103 () Bool)

(assert (=> d!1191303 (= c!695103 ((_ is Empty!13071) (c!694546 (charsOf!4676 token!484))))))

(assert (=> d!1191303 (= (list!15998 (c!694546 (charsOf!4676 token!484))) e!2494683)))

(declare-fun b!4021673 () Bool)

(assert (=> b!4021673 (= e!2494683 e!2494684)))

(declare-fun c!695104 () Bool)

(assert (=> b!4021673 (= c!695104 ((_ is Leaf!20208) (c!694546 (charsOf!4676 token!484))))))

(assert (= (and d!1191303 c!695103) b!4021672))

(assert (= (and d!1191303 (not c!695103)) b!4021673))

(assert (= (and b!4021673 c!695104) b!4021674))

(assert (= (and b!4021673 (not c!695104)) b!4021675))

(declare-fun m!4612635 () Bool)

(assert (=> b!4021674 m!4612635))

(declare-fun m!4612637 () Bool)

(assert (=> b!4021675 m!4612637))

(declare-fun m!4612639 () Bool)

(assert (=> b!4021675 m!4612639))

(assert (=> b!4021675 m!4612637))

(assert (=> b!4021675 m!4612639))

(declare-fun m!4612641 () Bool)

(assert (=> b!4021675 m!4612641))

(assert (=> d!1190163 d!1191303))

(declare-fun b!4021676 () Bool)

(declare-fun e!2494689 () Bool)

(declare-fun e!2494687 () Bool)

(assert (=> b!4021676 (= e!2494689 e!2494687)))

(declare-fun res!1636391 () Bool)

(assert (=> b!4021676 (=> res!1636391 e!2494687)))

(declare-fun call!286731 () Bool)

(assert (=> b!4021676 (= res!1636391 call!286731)))

(declare-fun b!4021677 () Bool)

(declare-fun res!1636394 () Bool)

(declare-fun e!2494686 () Bool)

(assert (=> b!4021677 (=> (not res!1636394) (not e!2494686))))

(assert (=> b!4021677 (= res!1636394 (isEmpty!25696 (tail!6259 (tail!6259 lt!1427181))))))

(declare-fun b!4021678 () Bool)

(declare-fun e!2494688 () Bool)

(declare-fun lt!1428146 () Bool)

(assert (=> b!4021678 (= e!2494688 (not lt!1428146))))

(declare-fun b!4021679 () Bool)

(declare-fun res!1636389 () Bool)

(declare-fun e!2494685 () Bool)

(assert (=> b!4021679 (=> res!1636389 e!2494685)))

(assert (=> b!4021679 (= res!1636389 (not ((_ is ElementMatch!11765) (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (head!8527 lt!1427181)))))))

(assert (=> b!4021679 (= e!2494688 e!2494685)))

(declare-fun b!4021681 () Bool)

(declare-fun res!1636388 () Bool)

(assert (=> b!4021681 (=> res!1636388 e!2494687)))

(assert (=> b!4021681 (= res!1636388 (not (isEmpty!25696 (tail!6259 (tail!6259 lt!1427181)))))))

(declare-fun b!4021682 () Bool)

(declare-fun res!1636392 () Bool)

(assert (=> b!4021682 (=> (not res!1636392) (not e!2494686))))

(assert (=> b!4021682 (= res!1636392 (not call!286731))))

(declare-fun b!4021683 () Bool)

(declare-fun res!1636393 () Bool)

(assert (=> b!4021683 (=> res!1636393 e!2494685)))

(assert (=> b!4021683 (= res!1636393 e!2494686)))

(declare-fun res!1636387 () Bool)

(assert (=> b!4021683 (=> (not res!1636387) (not e!2494686))))

(assert (=> b!4021683 (= res!1636387 lt!1428146)))

(declare-fun b!4021684 () Bool)

(assert (=> b!4021684 (= e!2494687 (not (= (head!8527 (tail!6259 lt!1427181)) (c!694547 (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (head!8527 lt!1427181))))))))

(declare-fun b!4021685 () Bool)

(declare-fun e!2494690 () Bool)

(assert (=> b!4021685 (= e!2494690 (nullable!4126 (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (head!8527 lt!1427181))))))

(declare-fun b!4021686 () Bool)

(declare-fun e!2494691 () Bool)

(assert (=> b!4021686 (= e!2494691 e!2494688)))

(declare-fun c!695107 () Bool)

(assert (=> b!4021686 (= c!695107 ((_ is EmptyLang!11765) (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (head!8527 lt!1427181))))))

(declare-fun b!4021687 () Bool)

(assert (=> b!4021687 (= e!2494685 e!2494689)))

(declare-fun res!1636390 () Bool)

(assert (=> b!4021687 (=> (not res!1636390) (not e!2494689))))

(assert (=> b!4021687 (= res!1636390 (not lt!1428146))))

(declare-fun b!4021688 () Bool)

(assert (=> b!4021688 (= e!2494690 (matchR!5726 (derivativeStep!3535 (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (head!8527 lt!1427181)) (head!8527 (tail!6259 lt!1427181))) (tail!6259 (tail!6259 lt!1427181))))))

(declare-fun bm!286726 () Bool)

(assert (=> bm!286726 (= call!286731 (isEmpty!25696 (tail!6259 lt!1427181)))))

(declare-fun b!4021689 () Bool)

(assert (=> b!4021689 (= e!2494691 (= lt!1428146 call!286731))))

(declare-fun b!4021680 () Bool)

(assert (=> b!4021680 (= e!2494686 (= (head!8527 (tail!6259 lt!1427181)) (c!694547 (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (head!8527 lt!1427181)))))))

(declare-fun d!1191305 () Bool)

(assert (=> d!1191305 e!2494691))

(declare-fun c!695105 () Bool)

(assert (=> d!1191305 (= c!695105 ((_ is EmptyExpr!11765) (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (head!8527 lt!1427181))))))

(assert (=> d!1191305 (= lt!1428146 e!2494690)))

(declare-fun c!695106 () Bool)

(assert (=> d!1191305 (= c!695106 (isEmpty!25696 (tail!6259 lt!1427181)))))

(assert (=> d!1191305 (validRegex!5326 (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (head!8527 lt!1427181)))))

(assert (=> d!1191305 (= (matchR!5726 (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (head!8527 lt!1427181)) (tail!6259 lt!1427181)) lt!1428146)))

(assert (= (and d!1191305 c!695106) b!4021685))

(assert (= (and d!1191305 (not c!695106)) b!4021688))

(assert (= (and d!1191305 c!695105) b!4021689))

(assert (= (and d!1191305 (not c!695105)) b!4021686))

(assert (= (and b!4021686 c!695107) b!4021678))

(assert (= (and b!4021686 (not c!695107)) b!4021679))

(assert (= (and b!4021679 (not res!1636389)) b!4021683))

(assert (= (and b!4021683 res!1636387) b!4021682))

(assert (= (and b!4021682 res!1636392) b!4021677))

(assert (= (and b!4021677 res!1636394) b!4021680))

(assert (= (and b!4021683 (not res!1636393)) b!4021687))

(assert (= (and b!4021687 res!1636390) b!4021676))

(assert (= (and b!4021676 (not res!1636391)) b!4021681))

(assert (= (and b!4021681 (not res!1636388)) b!4021684))

(assert (= (or b!4021689 b!4021676 b!4021682) bm!286726))

(assert (=> b!4021684 m!4609517))

(assert (=> b!4021684 m!4611401))

(assert (=> b!4021680 m!4609517))

(assert (=> b!4021680 m!4611401))

(assert (=> b!4021677 m!4609517))

(assert (=> b!4021677 m!4611407))

(assert (=> b!4021677 m!4611407))

(declare-fun m!4612665 () Bool)

(assert (=> b!4021677 m!4612665))

(assert (=> b!4021685 m!4610021))

(declare-fun m!4612668 () Bool)

(assert (=> b!4021685 m!4612668))

(assert (=> bm!286726 m!4609517))

(assert (=> bm!286726 m!4610017))

(assert (=> b!4021681 m!4609517))

(assert (=> b!4021681 m!4611407))

(assert (=> b!4021681 m!4611407))

(assert (=> b!4021681 m!4612665))

(assert (=> d!1191305 m!4609517))

(assert (=> d!1191305 m!4610017))

(assert (=> d!1191305 m!4610021))

(declare-fun m!4612673 () Bool)

(assert (=> d!1191305 m!4612673))

(assert (=> b!4021688 m!4609517))

(assert (=> b!4021688 m!4611401))

(assert (=> b!4021688 m!4610021))

(assert (=> b!4021688 m!4611401))

(declare-fun m!4612675 () Bool)

(assert (=> b!4021688 m!4612675))

(assert (=> b!4021688 m!4609517))

(assert (=> b!4021688 m!4611407))

(assert (=> b!4021688 m!4612675))

(assert (=> b!4021688 m!4611407))

(declare-fun m!4612677 () Bool)

(assert (=> b!4021688 m!4612677))

(assert (=> b!4020017 d!1191305))

(declare-fun b!4021694 () Bool)

(declare-fun c!695109 () Bool)

(assert (=> b!4021694 (= c!695109 (nullable!4126 (regOne!24042 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))))

(declare-fun e!2494697 () Regex!11765)

(declare-fun e!2494694 () Regex!11765)

(assert (=> b!4021694 (= e!2494697 e!2494694)))

(declare-fun b!4021695 () Bool)

(declare-fun call!286735 () Regex!11765)

(assert (=> b!4021695 (= e!2494694 (Union!11765 (Concat!18856 call!286735 (regTwo!24042 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) EmptyLang!11765))))

(declare-fun c!695111 () Bool)

(declare-fun c!695113 () Bool)

(declare-fun bm!286727 () Bool)

(declare-fun call!286734 () Regex!11765)

(assert (=> bm!286727 (= call!286734 (derivativeStep!3535 (ite c!695113 (regOne!24043 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (ite c!695111 (reg!12094 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (regOne!24042 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))) (head!8527 lt!1427181)))))

(declare-fun bm!286728 () Bool)

(declare-fun call!286732 () Regex!11765)

(assert (=> bm!286728 (= call!286735 call!286732)))

(declare-fun b!4021696 () Bool)

(declare-fun e!2494695 () Regex!11765)

(assert (=> b!4021696 (= e!2494695 EmptyLang!11765)))

(declare-fun call!286733 () Regex!11765)

(declare-fun bm!286729 () Bool)

(assert (=> bm!286729 (= call!286733 (derivativeStep!3535 (ite c!695113 (regTwo!24043 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (regTwo!24042 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) (head!8527 lt!1427181)))))

(declare-fun b!4021697 () Bool)

(assert (=> b!4021697 (= e!2494694 (Union!11765 (Concat!18856 call!286735 (regTwo!24042 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) call!286733))))

(declare-fun b!4021698 () Bool)

(assert (=> b!4021698 (= c!695113 ((_ is Union!11765) (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(declare-fun e!2494696 () Regex!11765)

(declare-fun e!2494698 () Regex!11765)

(assert (=> b!4021698 (= e!2494696 e!2494698)))

(declare-fun bm!286730 () Bool)

(assert (=> bm!286730 (= call!286732 call!286734)))

(declare-fun b!4021699 () Bool)

(assert (=> b!4021699 (= e!2494697 (Concat!18856 call!286732 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(declare-fun b!4021701 () Bool)

(assert (=> b!4021701 (= e!2494698 e!2494697)))

(assert (=> b!4021701 (= c!695111 ((_ is Star!11765) (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(declare-fun b!4021702 () Bool)

(assert (=> b!4021702 (= e!2494696 (ite (= (head!8527 lt!1427181) (c!694547 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) EmptyExpr!11765 EmptyLang!11765))))

(declare-fun b!4021703 () Bool)

(assert (=> b!4021703 (= e!2494695 e!2494696)))

(declare-fun c!695110 () Bool)

(assert (=> b!4021703 (= c!695110 ((_ is ElementMatch!11765) (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))))

(declare-fun b!4021700 () Bool)

(assert (=> b!4021700 (= e!2494698 (Union!11765 call!286734 call!286733))))

(declare-fun d!1191309 () Bool)

(declare-fun lt!1428148 () Regex!11765)

(assert (=> d!1191309 (validRegex!5326 lt!1428148)))

(assert (=> d!1191309 (= lt!1428148 e!2494695)))

(declare-fun c!695112 () Bool)

(assert (=> d!1191309 (= c!695112 (or ((_ is EmptyExpr!11765) (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) ((_ is EmptyLang!11765) (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))))

(assert (=> d!1191309 (validRegex!5326 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))))

(assert (=> d!1191309 (= (derivativeStep!3535 (regex!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))) (head!8527 lt!1427181)) lt!1428148)))

(assert (= (and d!1191309 c!695112) b!4021696))

(assert (= (and d!1191309 (not c!695112)) b!4021703))

(assert (= (and b!4021703 c!695110) b!4021702))

(assert (= (and b!4021703 (not c!695110)) b!4021698))

(assert (= (and b!4021698 c!695113) b!4021700))

(assert (= (and b!4021698 (not c!695113)) b!4021701))

(assert (= (and b!4021701 c!695111) b!4021699))

(assert (= (and b!4021701 (not c!695111)) b!4021694))

(assert (= (and b!4021694 c!695109) b!4021697))

(assert (= (and b!4021694 (not c!695109)) b!4021695))

(assert (= (or b!4021697 b!4021695) bm!286728))

(assert (= (or b!4021699 bm!286728) bm!286730))

(assert (= (or b!4021700 bm!286730) bm!286727))

(assert (= (or b!4021700 b!4021697) bm!286729))

(assert (=> b!4021694 m!4611943))

(assert (=> bm!286727 m!4609511))

(declare-fun m!4612687 () Bool)

(assert (=> bm!286727 m!4612687))

(assert (=> bm!286729 m!4609511))

(declare-fun m!4612689 () Bool)

(assert (=> bm!286729 m!4612689))

(declare-fun m!4612691 () Bool)

(assert (=> d!1191309 m!4612691))

(assert (=> d!1191309 m!4609505))

(assert (=> b!4020017 d!1191309))

(assert (=> b!4020017 d!1190817))

(assert (=> b!4020017 d!1190489))

(declare-fun d!1191317 () Bool)

(declare-fun c!695115 () Bool)

(assert (=> d!1191317 (= c!695115 ((_ is Nil!43030) lt!1427529))))

(declare-fun e!2494703 () (InoxSet C!23716))

(assert (=> d!1191317 (= (content!6526 lt!1427529) e!2494703)))

(declare-fun b!4021710 () Bool)

(assert (=> b!4021710 (= e!2494703 ((as const (Array C!23716 Bool)) false))))

(declare-fun b!4021711 () Bool)

(assert (=> b!4021711 (= e!2494703 ((_ map or) (store ((as const (Array C!23716 Bool)) false) (h!48450 lt!1427529) true) (content!6526 (t!333487 lt!1427529))))))

(assert (= (and d!1191317 c!695115) b!4021710))

(assert (= (and d!1191317 (not c!695115)) b!4021711))

(declare-fun m!4612703 () Bool)

(assert (=> b!4021711 m!4612703))

(declare-fun m!4612705 () Bool)

(assert (=> b!4021711 m!4612705))

(assert (=> d!1190175 d!1191317))

(assert (=> d!1190175 d!1190779))

(assert (=> d!1190175 d!1191061))

(assert (=> d!1190061 d!1190059))

(declare-fun d!1191321 () Bool)

(assert (=> d!1191321 (isPrefix!3947 lt!1427217 lt!1427217)))

(assert (=> d!1191321 true))

(declare-fun _$45!1961 () Unit!62145)

(assert (=> d!1191321 (= (choose!24318 lt!1427217 lt!1427217) _$45!1961)))

(declare-fun bs!589928 () Bool)

(assert (= bs!589928 d!1191321))

(assert (=> bs!589928 m!4608971))

(assert (=> d!1190061 d!1191321))

(declare-fun b!4021728 () Bool)

(declare-fun res!1636412 () Bool)

(declare-fun e!2494713 () Bool)

(assert (=> b!4021728 (=> (not res!1636412) (not e!2494713))))

(declare-fun lt!1428154 () Option!9274)

(assert (=> b!4021728 (= res!1636412 (= (value!216144 (_1!24213 (get!14131 lt!1428154))) (apply!10057 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1428154)))) (seqFromList!5085 (originalCharacters!7460 (_1!24213 (get!14131 lt!1428154)))))))))

(declare-fun b!4021729 () Bool)

(declare-fun e!2494715 () Bool)

(assert (=> b!4021729 (= e!2494715 e!2494713)))

(declare-fun res!1636410 () Bool)

(assert (=> b!4021729 (=> (not res!1636410) (not e!2494713))))

(assert (=> b!4021729 (= res!1636410 (matchR!5726 (regex!6860 (h!48452 rules!2999)) (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1428154))))))))

(declare-fun b!4021730 () Bool)

(declare-fun e!2494712 () Option!9274)

(declare-fun lt!1428155 () tuple2!42162)

(assert (=> b!4021730 (= e!2494712 (Some!9273 (tuple2!42159 (Token!12859 (apply!10057 (transformation!6860 (h!48452 rules!2999)) (seqFromList!5085 (_1!24215 lt!1428155))) (h!48452 rules!2999) (size!32174 (seqFromList!5085 (_1!24215 lt!1428155))) (_1!24215 lt!1428155)) (_2!24215 lt!1428155))))))

(declare-fun lt!1428156 () Unit!62145)

(assert (=> b!4021730 (= lt!1428156 (longestMatchIsAcceptedByMatchOrIsEmpty!1340 (regex!6860 (h!48452 rules!2999)) lt!1427222))))

(declare-fun res!1636411 () Bool)

(assert (=> b!4021730 (= res!1636411 (isEmpty!25696 (_1!24215 (findLongestMatchInner!1367 (regex!6860 (h!48452 rules!2999)) Nil!43030 (size!32171 Nil!43030) lt!1427222 lt!1427222 (size!32171 lt!1427222)))))))

(declare-fun e!2494714 () Bool)

(assert (=> b!4021730 (=> res!1636411 e!2494714)))

(assert (=> b!4021730 e!2494714))

(declare-fun lt!1428153 () Unit!62145)

(assert (=> b!4021730 (= lt!1428153 lt!1428156)))

(declare-fun lt!1428157 () Unit!62145)

(assert (=> b!4021730 (= lt!1428157 (lemmaSemiInverse!1887 (transformation!6860 (h!48452 rules!2999)) (seqFromList!5085 (_1!24215 lt!1428155))))))

(declare-fun b!4021731 () Bool)

(declare-fun res!1636413 () Bool)

(assert (=> b!4021731 (=> (not res!1636413) (not e!2494713))))

(assert (=> b!4021731 (= res!1636413 (= (rule!9912 (_1!24213 (get!14131 lt!1428154))) (h!48452 rules!2999)))))

(declare-fun b!4021732 () Bool)

(declare-fun res!1636414 () Bool)

(assert (=> b!4021732 (=> (not res!1636414) (not e!2494713))))

(assert (=> b!4021732 (= res!1636414 (= (++!11262 (list!15996 (charsOf!4676 (_1!24213 (get!14131 lt!1428154)))) (_2!24213 (get!14131 lt!1428154))) lt!1427222))))

(declare-fun b!4021733 () Bool)

(assert (=> b!4021733 (= e!2494714 (matchR!5726 (regex!6860 (h!48452 rules!2999)) (_1!24215 (findLongestMatchInner!1367 (regex!6860 (h!48452 rules!2999)) Nil!43030 (size!32171 Nil!43030) lt!1427222 lt!1427222 (size!32171 lt!1427222)))))))

(declare-fun b!4021734 () Bool)

(assert (=> b!4021734 (= e!2494712 None!9273)))

(declare-fun b!4021736 () Bool)

(assert (=> b!4021736 (= e!2494713 (= (size!32172 (_1!24213 (get!14131 lt!1428154))) (size!32171 (originalCharacters!7460 (_1!24213 (get!14131 lt!1428154))))))))

(declare-fun b!4021735 () Bool)

(declare-fun res!1636415 () Bool)

(assert (=> b!4021735 (=> (not res!1636415) (not e!2494713))))

(assert (=> b!4021735 (= res!1636415 (< (size!32171 (_2!24213 (get!14131 lt!1428154))) (size!32171 lt!1427222)))))

(declare-fun d!1191327 () Bool)

(assert (=> d!1191327 e!2494715))

(declare-fun res!1636409 () Bool)

(assert (=> d!1191327 (=> res!1636409 e!2494715)))

(assert (=> d!1191327 (= res!1636409 (isEmpty!25695 lt!1428154))))

(assert (=> d!1191327 (= lt!1428154 e!2494712)))

(declare-fun c!695120 () Bool)

(assert (=> d!1191327 (= c!695120 (isEmpty!25696 (_1!24215 lt!1428155)))))

(assert (=> d!1191327 (= lt!1428155 (findLongestMatch!1280 (regex!6860 (h!48452 rules!2999)) lt!1427222))))

(assert (=> d!1191327 (ruleValid!2792 thiss!21717 (h!48452 rules!2999))))

(assert (=> d!1191327 (= (maxPrefixOneRule!2767 thiss!21717 (h!48452 rules!2999) lt!1427222) lt!1428154)))

(assert (= (and d!1191327 c!695120) b!4021734))

(assert (= (and d!1191327 (not c!695120)) b!4021730))

(assert (= (and b!4021730 (not res!1636411)) b!4021733))

(assert (= (and d!1191327 (not res!1636409)) b!4021729))

(assert (= (and b!4021729 res!1636410) b!4021732))

(assert (= (and b!4021732 res!1636414) b!4021735))

(assert (= (and b!4021735 res!1636415) b!4021731))

(assert (= (and b!4021731 res!1636413) b!4021728))

(assert (= (and b!4021728 res!1636412) b!4021736))

(declare-fun m!4612725 () Bool)

(assert (=> b!4021736 m!4612725))

(declare-fun m!4612729 () Bool)

(assert (=> b!4021736 m!4612729))

(assert (=> b!4021729 m!4612725))

(declare-fun m!4612731 () Bool)

(assert (=> b!4021729 m!4612731))

(assert (=> b!4021729 m!4612731))

(declare-fun m!4612733 () Bool)

(assert (=> b!4021729 m!4612733))

(assert (=> b!4021729 m!4612733))

(declare-fun m!4612737 () Bool)

(assert (=> b!4021729 m!4612737))

(assert (=> b!4021735 m!4612725))

(declare-fun m!4612739 () Bool)

(assert (=> b!4021735 m!4612739))

(assert (=> b!4021735 m!4609209))

(assert (=> b!4021732 m!4612725))

(assert (=> b!4021732 m!4612731))

(assert (=> b!4021732 m!4612731))

(assert (=> b!4021732 m!4612733))

(assert (=> b!4021732 m!4612733))

(declare-fun m!4612741 () Bool)

(assert (=> b!4021732 m!4612741))

(declare-fun m!4612743 () Bool)

(assert (=> d!1191327 m!4612743))

(declare-fun m!4612745 () Bool)

(assert (=> d!1191327 m!4612745))

(declare-fun m!4612747 () Bool)

(assert (=> d!1191327 m!4612747))

(assert (=> d!1191327 m!4610609))

(declare-fun m!4612749 () Bool)

(assert (=> b!4021730 m!4612749))

(declare-fun m!4612751 () Bool)

(assert (=> b!4021730 m!4612751))

(declare-fun m!4612753 () Bool)

(assert (=> b!4021730 m!4612753))

(assert (=> b!4021730 m!4612751))

(assert (=> b!4021730 m!4612751))

(declare-fun m!4612757 () Bool)

(assert (=> b!4021730 m!4612757))

(declare-fun m!4612759 () Bool)

(assert (=> b!4021730 m!4612759))

(assert (=> b!4021730 m!4609209))

(assert (=> b!4021730 m!4612751))

(declare-fun m!4612761 () Bool)

(assert (=> b!4021730 m!4612761))

(assert (=> b!4021730 m!4609879))

(assert (=> b!4021730 m!4609879))

(assert (=> b!4021730 m!4609209))

(declare-fun m!4612763 () Bool)

(assert (=> b!4021730 m!4612763))

(assert (=> b!4021728 m!4612725))

(declare-fun m!4612767 () Bool)

(assert (=> b!4021728 m!4612767))

(assert (=> b!4021728 m!4612767))

(declare-fun m!4612769 () Bool)

(assert (=> b!4021728 m!4612769))

(assert (=> b!4021733 m!4609879))

(assert (=> b!4021733 m!4609209))

(assert (=> b!4021733 m!4609879))

(assert (=> b!4021733 m!4609209))

(assert (=> b!4021733 m!4612763))

(declare-fun m!4612773 () Bool)

(assert (=> b!4021733 m!4612773))

(assert (=> b!4021731 m!4612725))

(assert (=> bm!286570 d!1191327))

(declare-fun tp!1222086 () Bool)

(declare-fun tp!1222084 () Bool)

(declare-fun e!2494736 () Bool)

(declare-fun b!4021772 () Bool)

(assert (=> b!4021772 (= e!2494736 (and (inv!57476 (left!32435 (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (value!216144 token!484))))) tp!1222086 (inv!57476 (right!32765 (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (value!216144 token!484))))) tp!1222084))))

(declare-fun b!4021774 () Bool)

(declare-fun e!2494737 () Bool)

(declare-fun tp!1222085 () Bool)

(assert (=> b!4021774 (= e!2494737 tp!1222085)))

(declare-fun b!4021773 () Bool)

(declare-fun inv!57483 (IArray!26147) Bool)

(assert (=> b!4021773 (= e!2494736 (and (inv!57483 (xs!16377 (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (value!216144 token!484))))) e!2494737))))

(assert (=> b!4020041 (= tp!1222024 (and (inv!57476 (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (value!216144 token!484)))) e!2494736))))

(assert (= (and b!4020041 ((_ is Node!13071) (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (value!216144 token!484))))) b!4021772))

(assert (= b!4021773 b!4021774))

(assert (= (and b!4020041 ((_ is Leaf!20208) (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 token!484))) (value!216144 token!484))))) b!4021773))

(declare-fun m!4612789 () Bool)

(assert (=> b!4021772 m!4612789))

(declare-fun m!4612791 () Bool)

(assert (=> b!4021772 m!4612791))

(declare-fun m!4612793 () Bool)

(assert (=> b!4021773 m!4612793))

(assert (=> b!4020041 m!4610065))

(declare-fun b!4021781 () Bool)

(declare-fun e!2494740 () Bool)

(declare-fun tp!1222091 () Bool)

(assert (=> b!4021781 (= e!2494740 (and tp_is_empty!20501 tp!1222091))))

(assert (=> b!4020162 (= tp!1222027 e!2494740)))

(assert (= (and b!4020162 ((_ is Cons!43030) (t!333487 (t!333487 newSuffix!27)))) b!4021781))

(declare-fun b!4021784 () Bool)

(declare-fun e!2494743 () Bool)

(declare-fun tp!1222094 () Bool)

(assert (=> b!4021784 (= e!2494743 (and tp_is_empty!20501 tp!1222094))))

(assert (=> b!4020195 (= tp!1222063 e!2494743)))

(assert (= (and b!4020195 ((_ is Cons!43030) (t!333487 (originalCharacters!7460 token!484)))) b!4021784))

(declare-fun b!4021785 () Bool)

(declare-fun e!2494744 () Bool)

(assert (=> b!4021785 (= e!2494744 tp_is_empty!20501)))

(declare-fun b!4021788 () Bool)

(declare-fun tp!1222097 () Bool)

(declare-fun tp!1222095 () Bool)

(assert (=> b!4021788 (= e!2494744 (and tp!1222097 tp!1222095))))

(declare-fun b!4021786 () Bool)

(declare-fun tp!1222098 () Bool)

(declare-fun tp!1222096 () Bool)

(assert (=> b!4021786 (= e!2494744 (and tp!1222098 tp!1222096))))

(declare-fun b!4021787 () Bool)

(declare-fun tp!1222099 () Bool)

(assert (=> b!4021787 (= e!2494744 tp!1222099)))

(assert (=> b!4020173 (= tp!1222039 e!2494744)))

(assert (= (and b!4020173 ((_ is ElementMatch!11765) (regex!6860 (h!48452 (t!333489 rules!2999))))) b!4021785))

(assert (= (and b!4020173 ((_ is Concat!18856) (regex!6860 (h!48452 (t!333489 rules!2999))))) b!4021786))

(assert (= (and b!4020173 ((_ is Star!11765) (regex!6860 (h!48452 (t!333489 rules!2999))))) b!4021787))

(assert (= (and b!4020173 ((_ is Union!11765) (regex!6860 (h!48452 (t!333489 rules!2999))))) b!4021788))

(declare-fun b!4021791 () Bool)

(declare-fun b_free!111873 () Bool)

(declare-fun b_next!112577 () Bool)

(assert (=> b!4021791 (= b_free!111873 (not b_next!112577))))

(declare-fun tb!241777 () Bool)

(declare-fun t!333687 () Bool)

(assert (=> (and b!4021791 (= (toValue!9368 (transformation!6860 (h!48452 (t!333489 (t!333489 rules!2999))))) (toValue!9368 (transformation!6860 (rule!9912 token!484)))) t!333687) tb!241777))

(declare-fun result!293018 () Bool)

(assert (= result!293018 result!292900))

(assert (=> d!1190269 t!333687))

(assert (=> d!1190345 t!333687))

(declare-fun tb!241779 () Bool)

(declare-fun t!333689 () Bool)

(assert (=> (and b!4021791 (= (toValue!9368 (transformation!6860 (h!48452 (t!333489 (t!333489 rules!2999))))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) t!333689) tb!241779))

(declare-fun result!293020 () Bool)

(assert (= result!293020 result!292978))

(assert (=> d!1190687 t!333689))

(declare-fun tb!241781 () Bool)

(declare-fun t!333691 () Bool)

(assert (=> (and b!4021791 (= (toValue!9368 (transformation!6860 (h!48452 (t!333489 (t!333489 rules!2999))))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) t!333691) tb!241781))

(declare-fun result!293022 () Bool)

(assert (= result!293022 result!292822))

(assert (=> d!1189937 t!333691))

(assert (=> d!1190683 t!333689))

(declare-fun t!333693 () Bool)

(declare-fun tb!241783 () Bool)

(assert (=> (and b!4021791 (= (toValue!9368 (transformation!6860 (h!48452 (t!333489 (t!333489 rules!2999))))) (toValue!9368 (transformation!6860 (rule!9912 token!484)))) t!333693) tb!241783))

(declare-fun result!293024 () Bool)

(assert (= result!293024 result!292852))

(assert (=> d!1190137 t!333693))

(declare-fun tb!241785 () Bool)

(declare-fun t!333695 () Bool)

(assert (=> (and b!4021791 (= (toValue!9368 (transformation!6860 (h!48452 (t!333489 (t!333489 rules!2999))))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427490)))))) t!333695) tb!241785))

(declare-fun result!293026 () Bool)

(assert (= result!293026 result!292930))

(assert (=> d!1190507 t!333695))

(declare-fun t!333697 () Bool)

(declare-fun tb!241787 () Bool)

(assert (=> (and b!4021791 (= (toValue!9368 (transformation!6860 (h!48452 (t!333489 (t!333489 rules!2999))))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427443)))))) t!333697) tb!241787))

(declare-fun result!293028 () Bool)

(assert (= result!293028 result!293002))

(assert (=> d!1190905 t!333697))

(declare-fun tb!241789 () Bool)

(declare-fun t!333699 () Bool)

(assert (=> (and b!4021791 (= (toValue!9368 (transformation!6860 (h!48452 (t!333489 (t!333489 rules!2999))))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427286)))))) t!333699) tb!241789))

(declare-fun result!293030 () Bool)

(assert (= result!293030 result!292942))

(assert (=> d!1190537 t!333699))

(declare-fun tb!241791 () Bool)

(declare-fun t!333701 () Bool)

(assert (=> (and b!4021791 (= (toValue!9368 (transformation!6860 (h!48452 (t!333489 (t!333489 rules!2999))))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427506)))))) t!333701) tb!241791))

(declare-fun result!293032 () Bool)

(assert (= result!293032 result!292954))

(assert (=> d!1190573 t!333701))

(declare-fun b_and!308983 () Bool)

(declare-fun tp!1222101 () Bool)

(assert (=> b!4021791 (= tp!1222101 (and (=> t!333693 result!293024) (=> t!333701 result!293032) (=> t!333697 result!293028) (=> t!333699 result!293030) (=> t!333687 result!293018) (=> t!333691 result!293022) (=> t!333689 result!293020) (=> t!333695 result!293026) b_and!308983))))

(declare-fun b_free!111875 () Bool)

(declare-fun b_next!112579 () Bool)

(assert (=> b!4021791 (= b_free!111875 (not b_next!112579))))

(declare-fun tb!241793 () Bool)

(declare-fun t!333703 () Bool)

(assert (=> (and b!4021791 (= (toChars!9227 (transformation!6860 (h!48452 (t!333489 (t!333489 rules!2999))))) (toChars!9227 (transformation!6860 (rule!9912 token!484)))) t!333703) tb!241793))

(declare-fun result!293034 () Bool)

(assert (= result!293034 result!292894))

(assert (=> d!1190269 t!333703))

(declare-fun tb!241795 () Bool)

(declare-fun t!333705 () Bool)

(assert (=> (and b!4021791 (= (toChars!9227 (transformation!6860 (h!48452 (t!333489 (t!333489 rules!2999))))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427286)))))) t!333705) tb!241795))

(declare-fun result!293036 () Bool)

(assert (= result!293036 result!292918))

(assert (=> d!1190455 t!333705))

(declare-fun t!333707 () Bool)

(declare-fun tb!241797 () Bool)

(assert (=> (and b!4021791 (= (toChars!9227 (transformation!6860 (h!48452 (t!333489 (t!333489 rules!2999))))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427490)))))) t!333707) tb!241797))

(declare-fun result!293038 () Bool)

(assert (= result!293038 result!292912))

(assert (=> d!1190427 t!333707))

(declare-fun tb!241799 () Bool)

(declare-fun t!333709 () Bool)

(assert (=> (and b!4021791 (= (toChars!9227 (transformation!6860 (h!48452 (t!333489 (t!333489 rules!2999))))) (toChars!9227 (transformation!6860 (rule!9912 token!484)))) t!333709) tb!241799))

(declare-fun result!293040 () Bool)

(assert (= result!293040 result!292848))

(assert (=> b!4020039 t!333709))

(declare-fun t!333711 () Bool)

(declare-fun tb!241801 () Bool)

(assert (=> (and b!4021791 (= (toChars!9227 (transformation!6860 (h!48452 (t!333489 (t!333489 rules!2999))))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) t!333711) tb!241801))

(declare-fun result!293042 () Bool)

(assert (= result!293042 result!292972))

(assert (=> d!1190683 t!333711))

(assert (=> d!1190165 t!333709))

(declare-fun tb!241803 () Bool)

(declare-fun t!333713 () Bool)

(assert (=> (and b!4021791 (= (toChars!9227 (transformation!6860 (h!48452 (t!333489 (t!333489 rules!2999))))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427506)))))) t!333713) tb!241803))

(declare-fun result!293044 () Bool)

(assert (= result!293044 result!292924))

(assert (=> d!1190461 t!333713))

(declare-fun t!333715 () Bool)

(declare-fun tb!241805 () Bool)

(assert (=> (and b!4021791 (= (toChars!9227 (transformation!6860 (h!48452 (t!333489 (t!333489 rules!2999))))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206)))))) t!333715) tb!241805))

(declare-fun result!293046 () Bool)

(assert (= result!293046 result!292842))

(assert (=> d!1190033 t!333715))

(declare-fun t!333717 () Bool)

(declare-fun tb!241807 () Bool)

(assert (=> (and b!4021791 (= (toChars!9227 (transformation!6860 (h!48452 (t!333489 (t!333489 rules!2999))))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (get!14131 lt!1427443)))))) t!333717) tb!241807))

(declare-fun result!293048 () Bool)

(assert (= result!293048 result!292906))

(assert (=> d!1190393 t!333717))

(declare-fun tp!1222103 () Bool)

(declare-fun b_and!308985 () Bool)

(assert (=> b!4021791 (= tp!1222103 (and (=> t!333715 result!293046) (=> t!333709 result!293040) (=> t!333703 result!293034) (=> t!333711 result!293042) (=> t!333705 result!293036) (=> t!333713 result!293044) (=> t!333717 result!293048) (=> t!333707 result!293038) b_and!308985))))

(declare-fun e!2494745 () Bool)

(assert (=> b!4021791 (= e!2494745 (and tp!1222101 tp!1222103))))

(declare-fun tp!1222102 () Bool)

(declare-fun e!2494748 () Bool)

(declare-fun b!4021790 () Bool)

(assert (=> b!4021790 (= e!2494748 (and tp!1222102 (inv!57469 (tag!7720 (h!48452 (t!333489 (t!333489 rules!2999))))) (inv!57472 (transformation!6860 (h!48452 (t!333489 (t!333489 rules!2999))))) e!2494745))))

(declare-fun b!4021789 () Bool)

(declare-fun e!2494747 () Bool)

(declare-fun tp!1222100 () Bool)

(assert (=> b!4021789 (= e!2494747 (and e!2494748 tp!1222100))))

(assert (=> b!4020172 (= tp!1222037 e!2494747)))

(assert (= b!4021790 b!4021791))

(assert (= b!4021789 b!4021790))

(assert (= (and b!4020172 ((_ is Cons!43032) (t!333489 (t!333489 rules!2999)))) b!4021789))

(declare-fun m!4612801 () Bool)

(assert (=> b!4021790 m!4612801))

(declare-fun m!4612803 () Bool)

(assert (=> b!4021790 m!4612803))

(declare-fun b!4021831 () Bool)

(declare-fun e!2494763 () Bool)

(declare-fun tp!1222151 () Bool)

(assert (=> b!4021831 (= e!2494763 (and tp_is_empty!20501 tp!1222151))))

(assert (=> b!4020194 (= tp!1222062 e!2494763)))

(assert (= (and b!4020194 ((_ is Cons!43030) (t!333487 (t!333487 prefix!494)))) b!4021831))

(declare-fun tp!1222152 () Bool)

(declare-fun b!4021832 () Bool)

(declare-fun tp!1222154 () Bool)

(declare-fun e!2494764 () Bool)

(assert (=> b!4021832 (= e!2494764 (and (inv!57476 (left!32435 (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (value!216144 (_1!24213 (v!39647 lt!1427206))))))) tp!1222154 (inv!57476 (right!32765 (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (value!216144 (_1!24213 (v!39647 lt!1427206))))))) tp!1222152))))

(declare-fun b!4021834 () Bool)

(declare-fun e!2494765 () Bool)

(declare-fun tp!1222153 () Bool)

(assert (=> b!4021834 (= e!2494765 tp!1222153)))

(declare-fun b!4021833 () Bool)

(assert (=> b!4021833 (= e!2494764 (and (inv!57483 (xs!16377 (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (value!216144 (_1!24213 (v!39647 lt!1427206))))))) e!2494765))))

(assert (=> b!4019947 (= tp!1222023 (and (inv!57476 (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (value!216144 (_1!24213 (v!39647 lt!1427206)))))) e!2494764))))

(assert (= (and b!4019947 ((_ is Node!13071) (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (value!216144 (_1!24213 (v!39647 lt!1427206))))))) b!4021832))

(assert (= b!4021833 b!4021834))

(assert (= (and b!4019947 ((_ is Leaf!20208) (c!694546 (dynLambda!18240 (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))) (value!216144 (_1!24213 (v!39647 lt!1427206))))))) b!4021833))

(declare-fun m!4612805 () Bool)

(assert (=> b!4021832 m!4612805))

(declare-fun m!4612807 () Bool)

(assert (=> b!4021832 m!4612807))

(declare-fun m!4612811 () Bool)

(assert (=> b!4021833 m!4612811))

(assert (=> b!4019947 m!4609891))

(declare-fun b!4021838 () Bool)

(declare-fun e!2494768 () Bool)

(assert (=> b!4021838 (= e!2494768 tp_is_empty!20501)))

(declare-fun b!4021841 () Bool)

(declare-fun tp!1222160 () Bool)

(declare-fun tp!1222158 () Bool)

(assert (=> b!4021841 (= e!2494768 (and tp!1222160 tp!1222158))))

(declare-fun b!4021839 () Bool)

(declare-fun tp!1222161 () Bool)

(declare-fun tp!1222159 () Bool)

(assert (=> b!4021839 (= e!2494768 (and tp!1222161 tp!1222159))))

(declare-fun b!4021840 () Bool)

(declare-fun tp!1222162 () Bool)

(assert (=> b!4021840 (= e!2494768 tp!1222162)))

(assert (=> b!4020189 (= tp!1222054 e!2494768)))

(assert (= (and b!4020189 ((_ is ElementMatch!11765) (regOne!24043 (regex!6860 (h!48452 rules!2999))))) b!4021838))

(assert (= (and b!4020189 ((_ is Concat!18856) (regOne!24043 (regex!6860 (h!48452 rules!2999))))) b!4021839))

(assert (= (and b!4020189 ((_ is Star!11765) (regOne!24043 (regex!6860 (h!48452 rules!2999))))) b!4021840))

(assert (= (and b!4020189 ((_ is Union!11765) (regOne!24043 (regex!6860 (h!48452 rules!2999))))) b!4021841))

(declare-fun b!4021845 () Bool)

(declare-fun e!2494773 () Bool)

(assert (=> b!4021845 (= e!2494773 tp_is_empty!20501)))

(declare-fun b!4021848 () Bool)

(declare-fun tp!1222169 () Bool)

(declare-fun tp!1222167 () Bool)

(assert (=> b!4021848 (= e!2494773 (and tp!1222169 tp!1222167))))

(declare-fun b!4021846 () Bool)

(declare-fun tp!1222170 () Bool)

(declare-fun tp!1222168 () Bool)

(assert (=> b!4021846 (= e!2494773 (and tp!1222170 tp!1222168))))

(declare-fun b!4021847 () Bool)

(declare-fun tp!1222171 () Bool)

(assert (=> b!4021847 (= e!2494773 tp!1222171)))

(assert (=> b!4020189 (= tp!1222052 e!2494773)))

(assert (= (and b!4020189 ((_ is ElementMatch!11765) (regTwo!24043 (regex!6860 (h!48452 rules!2999))))) b!4021845))

(assert (= (and b!4020189 ((_ is Concat!18856) (regTwo!24043 (regex!6860 (h!48452 rules!2999))))) b!4021846))

(assert (= (and b!4020189 ((_ is Star!11765) (regTwo!24043 (regex!6860 (h!48452 rules!2999))))) b!4021847))

(assert (= (and b!4020189 ((_ is Union!11765) (regTwo!24043 (regex!6860 (h!48452 rules!2999))))) b!4021848))

(declare-fun b!4021849 () Bool)

(declare-fun e!2494774 () Bool)

(assert (=> b!4021849 (= e!2494774 tp_is_empty!20501)))

(declare-fun b!4021852 () Bool)

(declare-fun tp!1222174 () Bool)

(declare-fun tp!1222172 () Bool)

(assert (=> b!4021852 (= e!2494774 (and tp!1222174 tp!1222172))))

(declare-fun b!4021850 () Bool)

(declare-fun tp!1222175 () Bool)

(declare-fun tp!1222173 () Bool)

(assert (=> b!4021850 (= e!2494774 (and tp!1222175 tp!1222173))))

(declare-fun b!4021851 () Bool)

(declare-fun tp!1222176 () Bool)

(assert (=> b!4021851 (= e!2494774 tp!1222176)))

(assert (=> b!4020188 (= tp!1222056 e!2494774)))

(assert (= (and b!4020188 ((_ is ElementMatch!11765) (reg!12094 (regex!6860 (h!48452 rules!2999))))) b!4021849))

(assert (= (and b!4020188 ((_ is Concat!18856) (reg!12094 (regex!6860 (h!48452 rules!2999))))) b!4021850))

(assert (= (and b!4020188 ((_ is Star!11765) (reg!12094 (regex!6860 (h!48452 rules!2999))))) b!4021851))

(assert (= (and b!4020188 ((_ is Union!11765) (reg!12094 (regex!6860 (h!48452 rules!2999))))) b!4021852))

(declare-fun b!4021853 () Bool)

(declare-fun e!2494775 () Bool)

(assert (=> b!4021853 (= e!2494775 tp_is_empty!20501)))

(declare-fun b!4021856 () Bool)

(declare-fun tp!1222179 () Bool)

(declare-fun tp!1222177 () Bool)

(assert (=> b!4021856 (= e!2494775 (and tp!1222179 tp!1222177))))

(declare-fun b!4021854 () Bool)

(declare-fun tp!1222180 () Bool)

(declare-fun tp!1222178 () Bool)

(assert (=> b!4021854 (= e!2494775 (and tp!1222180 tp!1222178))))

(declare-fun b!4021855 () Bool)

(declare-fun tp!1222181 () Bool)

(assert (=> b!4021855 (= e!2494775 tp!1222181)))

(assert (=> b!4020193 (= tp!1222059 e!2494775)))

(assert (= (and b!4020193 ((_ is ElementMatch!11765) (regOne!24043 (regex!6860 (rule!9912 token!484))))) b!4021853))

(assert (= (and b!4020193 ((_ is Concat!18856) (regOne!24043 (regex!6860 (rule!9912 token!484))))) b!4021854))

(assert (= (and b!4020193 ((_ is Star!11765) (regOne!24043 (regex!6860 (rule!9912 token!484))))) b!4021855))

(assert (= (and b!4020193 ((_ is Union!11765) (regOne!24043 (regex!6860 (rule!9912 token!484))))) b!4021856))

(declare-fun b!4021857 () Bool)

(declare-fun e!2494776 () Bool)

(assert (=> b!4021857 (= e!2494776 tp_is_empty!20501)))

(declare-fun b!4021860 () Bool)

(declare-fun tp!1222184 () Bool)

(declare-fun tp!1222182 () Bool)

(assert (=> b!4021860 (= e!2494776 (and tp!1222184 tp!1222182))))

(declare-fun b!4021858 () Bool)

(declare-fun tp!1222185 () Bool)

(declare-fun tp!1222183 () Bool)

(assert (=> b!4021858 (= e!2494776 (and tp!1222185 tp!1222183))))

(declare-fun b!4021859 () Bool)

(declare-fun tp!1222186 () Bool)

(assert (=> b!4021859 (= e!2494776 tp!1222186)))

(assert (=> b!4020193 (= tp!1222057 e!2494776)))

(assert (= (and b!4020193 ((_ is ElementMatch!11765) (regTwo!24043 (regex!6860 (rule!9912 token!484))))) b!4021857))

(assert (= (and b!4020193 ((_ is Concat!18856) (regTwo!24043 (regex!6860 (rule!9912 token!484))))) b!4021858))

(assert (= (and b!4020193 ((_ is Star!11765) (regTwo!24043 (regex!6860 (rule!9912 token!484))))) b!4021859))

(assert (= (and b!4020193 ((_ is Union!11765) (regTwo!24043 (regex!6860 (rule!9912 token!484))))) b!4021860))

(declare-fun b!4021861 () Bool)

(declare-fun e!2494777 () Bool)

(declare-fun tp!1222187 () Bool)

(assert (=> b!4021861 (= e!2494777 (and tp_is_empty!20501 tp!1222187))))

(assert (=> b!4020163 (= tp!1222028 e!2494777)))

(assert (= (and b!4020163 ((_ is Cons!43030) (t!333487 (t!333487 newSuffixResult!27)))) b!4021861))

(declare-fun b!4021862 () Bool)

(declare-fun e!2494778 () Bool)

(assert (=> b!4021862 (= e!2494778 tp_is_empty!20501)))

(declare-fun b!4021865 () Bool)

(declare-fun tp!1222190 () Bool)

(declare-fun tp!1222188 () Bool)

(assert (=> b!4021865 (= e!2494778 (and tp!1222190 tp!1222188))))

(declare-fun b!4021863 () Bool)

(declare-fun tp!1222191 () Bool)

(declare-fun tp!1222189 () Bool)

(assert (=> b!4021863 (= e!2494778 (and tp!1222191 tp!1222189))))

(declare-fun b!4021864 () Bool)

(declare-fun tp!1222192 () Bool)

(assert (=> b!4021864 (= e!2494778 tp!1222192)))

(assert (=> b!4020192 (= tp!1222061 e!2494778)))

(assert (= (and b!4020192 ((_ is ElementMatch!11765) (reg!12094 (regex!6860 (rule!9912 token!484))))) b!4021862))

(assert (= (and b!4020192 ((_ is Concat!18856) (reg!12094 (regex!6860 (rule!9912 token!484))))) b!4021863))

(assert (= (and b!4020192 ((_ is Star!11765) (reg!12094 (regex!6860 (rule!9912 token!484))))) b!4021864))

(assert (= (and b!4020192 ((_ is Union!11765) (reg!12094 (regex!6860 (rule!9912 token!484))))) b!4021865))

(declare-fun b!4021866 () Bool)

(declare-fun e!2494779 () Bool)

(declare-fun tp!1222193 () Bool)

(assert (=> b!4021866 (= e!2494779 (and tp_is_empty!20501 tp!1222193))))

(assert (=> b!4020196 (= tp!1222064 e!2494779)))

(assert (= (and b!4020196 ((_ is Cons!43030) (t!333487 (t!333487 suffixResult!105)))) b!4021866))

(declare-fun b!4021867 () Bool)

(declare-fun e!2494780 () Bool)

(assert (=> b!4021867 (= e!2494780 tp_is_empty!20501)))

(declare-fun b!4021870 () Bool)

(declare-fun tp!1222196 () Bool)

(declare-fun tp!1222194 () Bool)

(assert (=> b!4021870 (= e!2494780 (and tp!1222196 tp!1222194))))

(declare-fun b!4021868 () Bool)

(declare-fun tp!1222197 () Bool)

(declare-fun tp!1222195 () Bool)

(assert (=> b!4021868 (= e!2494780 (and tp!1222197 tp!1222195))))

(declare-fun b!4021869 () Bool)

(declare-fun tp!1222198 () Bool)

(assert (=> b!4021869 (= e!2494780 tp!1222198)))

(assert (=> b!4020187 (= tp!1222055 e!2494780)))

(assert (= (and b!4020187 ((_ is ElementMatch!11765) (regOne!24042 (regex!6860 (h!48452 rules!2999))))) b!4021867))

(assert (= (and b!4020187 ((_ is Concat!18856) (regOne!24042 (regex!6860 (h!48452 rules!2999))))) b!4021868))

(assert (= (and b!4020187 ((_ is Star!11765) (regOne!24042 (regex!6860 (h!48452 rules!2999))))) b!4021869))

(assert (= (and b!4020187 ((_ is Union!11765) (regOne!24042 (regex!6860 (h!48452 rules!2999))))) b!4021870))

(declare-fun b!4021871 () Bool)

(declare-fun e!2494781 () Bool)

(assert (=> b!4021871 (= e!2494781 tp_is_empty!20501)))

(declare-fun b!4021874 () Bool)

(declare-fun tp!1222201 () Bool)

(declare-fun tp!1222199 () Bool)

(assert (=> b!4021874 (= e!2494781 (and tp!1222201 tp!1222199))))

(declare-fun b!4021872 () Bool)

(declare-fun tp!1222202 () Bool)

(declare-fun tp!1222200 () Bool)

(assert (=> b!4021872 (= e!2494781 (and tp!1222202 tp!1222200))))

(declare-fun b!4021873 () Bool)

(declare-fun tp!1222203 () Bool)

(assert (=> b!4021873 (= e!2494781 tp!1222203)))

(assert (=> b!4020187 (= tp!1222053 e!2494781)))

(assert (= (and b!4020187 ((_ is ElementMatch!11765) (regTwo!24042 (regex!6860 (h!48452 rules!2999))))) b!4021871))

(assert (= (and b!4020187 ((_ is Concat!18856) (regTwo!24042 (regex!6860 (h!48452 rules!2999))))) b!4021872))

(assert (= (and b!4020187 ((_ is Star!11765) (regTwo!24042 (regex!6860 (h!48452 rules!2999))))) b!4021873))

(assert (= (and b!4020187 ((_ is Union!11765) (regTwo!24042 (regex!6860 (h!48452 rules!2999))))) b!4021874))

(declare-fun b!4021875 () Bool)

(declare-fun e!2494782 () Bool)

(assert (=> b!4021875 (= e!2494782 tp_is_empty!20501)))

(declare-fun b!4021878 () Bool)

(declare-fun tp!1222206 () Bool)

(declare-fun tp!1222204 () Bool)

(assert (=> b!4021878 (= e!2494782 (and tp!1222206 tp!1222204))))

(declare-fun b!4021876 () Bool)

(declare-fun tp!1222207 () Bool)

(declare-fun tp!1222205 () Bool)

(assert (=> b!4021876 (= e!2494782 (and tp!1222207 tp!1222205))))

(declare-fun b!4021877 () Bool)

(declare-fun tp!1222208 () Bool)

(assert (=> b!4021877 (= e!2494782 tp!1222208)))

(assert (=> b!4020191 (= tp!1222060 e!2494782)))

(assert (= (and b!4020191 ((_ is ElementMatch!11765) (regOne!24042 (regex!6860 (rule!9912 token!484))))) b!4021875))

(assert (= (and b!4020191 ((_ is Concat!18856) (regOne!24042 (regex!6860 (rule!9912 token!484))))) b!4021876))

(assert (= (and b!4020191 ((_ is Star!11765) (regOne!24042 (regex!6860 (rule!9912 token!484))))) b!4021877))

(assert (= (and b!4020191 ((_ is Union!11765) (regOne!24042 (regex!6860 (rule!9912 token!484))))) b!4021878))

(declare-fun b!4021879 () Bool)

(declare-fun e!2494783 () Bool)

(assert (=> b!4021879 (= e!2494783 tp_is_empty!20501)))

(declare-fun b!4021882 () Bool)

(declare-fun tp!1222211 () Bool)

(declare-fun tp!1222209 () Bool)

(assert (=> b!4021882 (= e!2494783 (and tp!1222211 tp!1222209))))

(declare-fun b!4021880 () Bool)

(declare-fun tp!1222212 () Bool)

(declare-fun tp!1222210 () Bool)

(assert (=> b!4021880 (= e!2494783 (and tp!1222212 tp!1222210))))

(declare-fun b!4021881 () Bool)

(declare-fun tp!1222213 () Bool)

(assert (=> b!4021881 (= e!2494783 tp!1222213)))

(assert (=> b!4020191 (= tp!1222058 e!2494783)))

(assert (= (and b!4020191 ((_ is ElementMatch!11765) (regTwo!24042 (regex!6860 (rule!9912 token!484))))) b!4021879))

(assert (= (and b!4020191 ((_ is Concat!18856) (regTwo!24042 (regex!6860 (rule!9912 token!484))))) b!4021880))

(assert (= (and b!4020191 ((_ is Star!11765) (regTwo!24042 (regex!6860 (rule!9912 token!484))))) b!4021881))

(assert (= (and b!4020191 ((_ is Union!11765) (regTwo!24042 (regex!6860 (rule!9912 token!484))))) b!4021882))

(declare-fun b!4021883 () Bool)

(declare-fun e!2494784 () Bool)

(declare-fun tp!1222214 () Bool)

(assert (=> b!4021883 (= e!2494784 (and tp_is_empty!20501 tp!1222214))))

(assert (=> b!4020175 (= tp!1222041 e!2494784)))

(assert (= (and b!4020175 ((_ is Cons!43030) (t!333487 (t!333487 suffix!1299)))) b!4021883))

(declare-fun b_lambda!117343 () Bool)

(assert (= b_lambda!117299 (or (and b!4019334 b_free!111857 (= (toValue!9368 (transformation!6860 (h!48452 rules!2999))) (toValue!9368 (transformation!6860 (rule!9912 token!484))))) (and b!4019363 b_free!111861) (and b!4020174 b_free!111869 (= (toValue!9368 (transformation!6860 (h!48452 (t!333489 rules!2999)))) (toValue!9368 (transformation!6860 (rule!9912 token!484))))) (and b!4021791 b_free!111873 (= (toValue!9368 (transformation!6860 (h!48452 (t!333489 (t!333489 rules!2999))))) (toValue!9368 (transformation!6860 (rule!9912 token!484))))) b_lambda!117343)))

(declare-fun b_lambda!117345 () Bool)

(assert (= b_lambda!117263 (or (and b!4019334 b_free!111857 (= (toValue!9368 (transformation!6860 (h!48452 rules!2999))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))) (and b!4019363 b_free!111861 (= (toValue!9368 (transformation!6860 (rule!9912 token!484))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))) (and b!4020174 b_free!111869 (= (toValue!9368 (transformation!6860 (h!48452 (t!333489 rules!2999)))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))) (and b!4021791 b_free!111873 (= (toValue!9368 (transformation!6860 (h!48452 (t!333489 (t!333489 rules!2999))))) (toValue!9368 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))) b_lambda!117345)))

(declare-fun b_lambda!117347 () Bool)

(assert (= b_lambda!117273 (or (and b!4019334 b_free!111859 (= (toChars!9227 (transformation!6860 (h!48452 rules!2999))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))) (and b!4019363 b_free!111863 (= (toChars!9227 (transformation!6860 (rule!9912 token!484))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))) (and b!4020174 b_free!111871 (= (toChars!9227 (transformation!6860 (h!48452 (t!333489 rules!2999)))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))) (and b!4021791 b_free!111875 (= (toChars!9227 (transformation!6860 (h!48452 (t!333489 (t!333489 rules!2999))))) (toChars!9227 (transformation!6860 (rule!9912 (_1!24213 (v!39647 lt!1427206))))))) b_lambda!117347)))

(declare-fun b_lambda!117349 () Bool)

(assert (= b_lambda!117297 (or (and b!4019334 b_free!111859 (= (toChars!9227 (transformation!6860 (h!48452 rules!2999))) (toChars!9227 (transformation!6860 (rule!9912 token!484))))) (and b!4019363 b_free!111863) (and b!4020174 b_free!111871 (= (toChars!9227 (transformation!6860 (h!48452 (t!333489 rules!2999)))) (toChars!9227 (transformation!6860 (rule!9912 token!484))))) (and b!4021791 b_free!111875 (= (toChars!9227 (transformation!6860 (h!48452 (t!333489 (t!333489 rules!2999))))) (toChars!9227 (transformation!6860 (rule!9912 token!484))))) b_lambda!117349)))

(declare-fun b_lambda!117351 () Bool)

(assert (= b_lambda!117301 (or (and b!4019334 b_free!111857 (= (toValue!9368 (transformation!6860 (h!48452 rules!2999))) (toValue!9368 (transformation!6860 (rule!9912 token!484))))) (and b!4019363 b_free!111861) (and b!4020174 b_free!111869 (= (toValue!9368 (transformation!6860 (h!48452 (t!333489 rules!2999)))) (toValue!9368 (transformation!6860 (rule!9912 token!484))))) (and b!4021791 b_free!111873 (= (toValue!9368 (transformation!6860 (h!48452 (t!333489 (t!333489 rules!2999))))) (toValue!9368 (transformation!6860 (rule!9912 token!484))))) b_lambda!117351)))

(check-sat (not b!4021446) (not b!4020534) (not d!1190713) (not d!1190349) (not bm!286715) (not b!4021333) (not b!4021546) (not b!4020721) (not b!4021876) (not b!4021430) (not d!1191327) (not b!4021019) (not b_lambda!117331) (not b!4021832) (not b!4021510) (not b!4021138) (not b!4020479) (not b!4021789) (not b!4020410) (not b!4021675) (not b!4021834) b_and!308983 (not b!4021839) (not d!1190705) (not bm!286640) (not b!4020663) (not bm!286675) (not b!4020855) (not b!4020566) (not d!1190467) (not b!4021012) (not b!4021161) (not b!4021855) (not b!4021294) (not d!1190757) (not d!1190983) (not b!4021189) (not b!4021850) (not b!4021409) (not bm!286639) (not d!1191173) (not b!4020668) (not bm!286691) (not b!4021278) (not b!4020691) (not b_lambda!117305) (not b!4021177) (not b!4020536) (not d!1191157) (not b!4021373) (not b!4021733) (not b!4021788) (not b!4021173) (not b!4021870) (not b_lambda!117329) (not d!1191205) (not b!4021346) b_and!308971 (not b!4021583) (not b!4021369) (not b!4020687) (not b!4020411) (not b!4021130) (not d!1191083) (not d!1191161) (not b!4021131) (not b!4021263) (not b!4020684) (not b!4021858) (not d!1190515) (not d!1191301) (not b!4020656) (not b!4021260) (not b!4021536) (not b!4020394) (not b!4021381) (not d!1190869) (not b!4020972) (not b!4020298) (not tb!241681) (not b!4021622) (not b!4020647) (not bm!286603) (not b!4021611) (not b!4021856) (not b!4020402) (not b!4021848) (not b!4020817) (not b!4021271) (not b!4021509) (not b!4021680) (not b!4021317) (not b!4020428) (not b!4020622) (not b!4020646) (not b!4021377) (not b!4021543) (not b!4021149) (not d!1190499) (not bm!286679) (not b!4020432) (not b!4021681) (not b!4020558) (not b!4021587) (not b!4020768) (not b!4021527) (not b!4021854) (not d!1190403) (not b!4020823) (not b!4020395) (not b!4020380) (not b!4021073) (not b!4020785) (not b!4020844) (not d!1190263) (not b_lambda!117285) (not b!4020550) (not d!1190867) (not b_lambda!117315) (not b_lambda!117311) (not b_next!112567) (not bm!286714) (not d!1191215) (not d!1191299) (not bm!286727) (not b!4020922) (not bm!286678) (not b!4020717) (not d!1190829) (not b!4021116) (not b!4021731) (not b!4021877) (not d!1190827) (not b!4020544) (not d!1190931) (not d!1190681) (not b!4020421) (not b!4021117) (not b!4020820) (not b!4021618) (not tb!241741) (not b!4021163) (not d!1190657) (not b!4021275) (not b!4021008) (not b!4021841) (not b_lambda!117339) (not b!4021493) (not d!1190561) (not b!4021846) (not b!4020680) (not b!4020650) (not b!4021508) (not d!1190839) (not d!1190427) (not b!4020652) (not b!4021385) (not b!4021034) b_and!308935 (not bm!286630) (not d!1190695) (not b!4021170) (not b!4020593) (not bm!286598) (not b!4020838) (not b!4020847) (not b_next!112577) (not b!4021865) (not d!1190833) (not b!4020657) (not b!4020836) (not b!4020573) (not b!4020832) (not b_next!112575) (not b_lambda!117283) (not b!4020839) (not b!4021488) (not d!1191225) (not b!4021270) (not b!4021494) (not b!4021560) (not b!4020539) (not d!1191065) (not b_lambda!117309) (not b!4021658) (not bm!286602) (not d!1190387) tp_is_empty!20501 (not b!4021735) (not b_lambda!117281) (not d!1191217) (not b!4021348) (not d!1190849) (not b!4020307) (not b!4021072) (not b!4020842) (not d!1190391) (not b!4020655) (not b!4020442) (not b!4021468) (not d!1190389) (not tb!241693) (not d!1190571) (not bm!286707) (not d!1190461) (not b!4020444) (not b!4021070) (not b!4021781) (not bm!286628) (not b!4020649) (not b!4020588) (not b!4020654) (not d!1191197) (not b!4020553) (not d!1190563) (not d!1190767) (not bm!286605) (not b!4021881) (not d!1190533) (not b!4020783) (not d!1190501) (not b!4021617) (not d!1190569) (not b!4020408) (not b!4021616) (not b!4020599) (not d!1191153) (not b!4020910) (not tb!241657) (not d!1191175) (not b!4021259) (not b!4021460) (not b!4021833) (not b!4020415) (not b!4021840) (not b!4020935) (not b_lambda!117303) (not b!4021866) (not b!4020542) (not b!4021554) (not b!4020390) (not b!4021868) (not bm!286642) (not b!4021074) (not b!4021456) b_and!308939 (not b_lambda!117319) (not b!4021613) b_and!308973 (not bm!286599) (not b!4021863) (not b!4021489) (not b!4020586) (not b!4021380) (not b!4020978) (not b!4021790) (not b!4021872) (not b!4021685) (not b!4021336) (not b!4021649) (not b!4021040) (not d!1190505) (not b!4021046) (not b!4020927) (not b!4020688) (not b!4021869) (not b!4021458) (not b!4020669) (not bm!286723) (not d!1190941) (not b!4020917) (not b!4020929) (not b!4020041) (not b!4020710) (not b!4020692) (not b!4021873) (not b!4020462) (not b!4021603) (not d!1190213) (not b!4021591) (not b!4020555) (not d!1191199) (not b!4021241) (not d!1191305) (not d!1190585) (not b!4020559) (not b!4021267) (not b!4021860) (not d!1190419) (not d!1190421) (not b!4020563) (not b!4021002) (not b!4021447) (not b!4021342) (not b!4021352) (not b!4020859) (not d!1190439) (not d!1190891) (not d!1191035) (not b!4021265) (not b!4021084) (not b!4021465) (not b!4021090) (not d!1191253) (not bm!286653) (not d!1190451) (not b!4021859) (not b!4021728) (not b_next!112565) (not b!4020626) (not b!4021516) (not d!1190685) (not b!4020974) (not b!4021711) (not b!4020406) (not b!4021321) (not b!4020562) (not b!4021169) (not b!4021874) (not d!1190393) (not bm!286601) (not b!4021338) (not b!4021614) (not b!4021022) (not b!4020682) (not d!1190425) (not b!4021604) (not b!4021457) (not b!4021432) (not bm!286680) (not d!1190831) (not b!4020970) (not d!1190445) (not b!4020417) (not b!4020718) (not d!1191277) (not b!4021615) (not b!4021112) (not b!4021670) (not b!4021007) (not b!4021588) (not b_next!112563) (not b!4021188) (not b!4021088) (not bm!286713) (not b!4020603) (not d!1190691) (not b!4020575) (not b_lambda!117345) (not b!4021330) (not b!4021175) (not b!4021878) (not b!4021148) (not b!4021539) (not b!4021688) (not d!1191055) (not d!1190453) (not d!1190567) (not d!1190397) (not b!4020392) (not b!4020309) (not b!4020388) (not b!4021069) (not b!4020426) (not d!1190913) (not b!4020312) (not b_lambda!117351) (not d!1190719) (not d!1190951) (not d!1191007) (not b!4021433) (not d!1191047) b_and!308985 (not bm!286671) (not d!1190511) (not b!4021328) (not d!1191043) (not b!4020794) (not b!4020714) (not d!1190557) (not b!4020378) (not b!4020477) (not b!4021602) (not d!1190371) (not b!4021674) (not b!4020676) (not b_lambda!117343) b_and!308937 (not b!4021772) (not b!4021669) (not b!4021310) (not b!4020376) (not d!1190541) (not b!4020793) (not d!1190761) (not b!4021553) (not b!4021677) (not b!4021492) (not d!1190929) (not b!4021501) (not b!4021471) (not b!4021864) (not bm!286681) (not b!4021464) (not b!4020295) (not b!4020386) (not b!4021243) (not b!4020570) (not d!1190497) (not b!4021580) (not b!4021343) (not b!4020440) (not b!4021114) (not b!4020419) (not b!4021038) (not b!4020678) (not b!4020667) (not b!4021332) (not b!4021359) (not b!4020801) (not b!4021410) (not b!4021011) (not b!4021405) (not b!4020601) (not b!4021520) (not tb!241675) (not tb!241663) (not b!4021004) (not b!4020831) (not d!1190459) (not tb!241705) (not b!4020438) (not b!4021448) (not b!4019947) (not b!4020856) (not b!4020834) (not b!4020805) (not b!4021015) (not b!4021302) (not b!4020925) (not bm!286682) (not b!4020846) (not b_lambda!117347) (not b!4021150) (not d!1190413) (not b!4021831) (not b!4021089) (not b!4021883) (not bm!286677) (not b!4021429) (not d!1190269) (not b!4021334) (not d!1190683) (not b!4021139) (not b!4020664) (not d!1190405) (not d!1191073) (not b!4020621) (not b!4020538) (not b!4021861) (not b!4021730) (not b!4021787) (not b!4021584) (not d!1191309) (not tb!241735) (not b!4021018) (not b!4021384) (not b!4021185) (not bm!286706) (not b!4020443) (not b!4021196) (not d!1190455) (not b!4021162) (not b!4021461) (not b!4021729) (not b!4020480) (not b!4020854) (not b_next!112579) (not b!4020671) (not b!4021000) (not b_lambda!117349) (not d!1190579) (not b!4021518) (not b!4021880) (not d!1190795) (not d!1191031) (not b!4021774) (not b!4021399) (not tb!241717) (not b!4020840) (not d!1191209) (not b!4020920) (not b!4021298) (not d!1190671) (not b!4020430) (not b!4020509) (not tb!241687) (not b!4020653) (not b_next!112561) (not b!4021388) (not b!4021039) (not d!1190417) (not bm!286600) (not b!4021540) (not d!1190415) (not b!4021526) (not bm!286673) (not bm!286729) (not b!4021407) (not b!4021847) (not b!4020422) (not b!4020551) (not b!4021155) (not d!1190679) (not b!4020396) (not b!4020574) (not b!4021784) (not tb!241669) (not b!4021412) (not b!4021578) b_and!308975 (not b!4021205) (not b!4020413) (not b!4021452) (not bm!286709) (not b!4020587) (not b!4021313) (not d!1191321) (not b!4021428) (not b!4021178) (not bm!286604) (not d!1190947) (not b!4021303) (not d!1191163) (not d!1191145) (not tb!241765) (not b!4021732) (not d!1190969) (not d!1191259) (not b!4020858) (not b!4021535) (not d!1190519) (not b!4021140) (not b!4021694) (not b!4020301) (not d!1190819) (not b!4020425) (not b!4020713) (not b!4020979) (not b_lambda!117307) (not b!4021192) (not d!1190999) (not bm!286676) (not b!4021193) (not d!1190899) (not b!4021621) (not b!4020795) (not b!4021035) (not b!4021036) (not b!4021576) (not b!4021851) (not b!4020784) (not d!1190667) (not d!1190423) (not d!1190369) (not b!4021500) (not b!4021773) (not d!1190267) (not b!4020666) (not b!4021545) (not b!4021882) (not d!1190825) (not d!1190457) (not b!4021852) (not b!4021314) (not b!4021318) (not d!1191235) (not b!4020803) (not b!4021684) (not d!1190589) (not b!4021470) (not d!1190903) (not bm!286662) (not d!1190359) (not b!4021274) (not b!4021179) (not b!4020799) (not b_lambda!117327) (not b!4021619) (not b!4020401) (not b!4021434) (not b!4021786) (not b!4020482) (not b!4021736) (not b!4021654) (not bm!286652) (not b!4021462) (not d!1191099) (not b!4020670) (not bm!286726) (not b_next!112573) (not b!4021340))
(check-sat b_and!308983 b_and!308971 (not b_next!112567) b_and!308935 (not b_next!112565) (not b_next!112563) b_and!308985 b_and!308937 (not b_next!112579) (not b_next!112561) b_and!308975 (not b_next!112573) (not b_next!112575) (not b_next!112577) b_and!308939 b_and!308973)

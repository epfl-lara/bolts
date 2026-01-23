; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50828 () Bool)

(assert start!50828)

(declare-fun b!549262 () Bool)

(declare-fun b_free!15297 () Bool)

(declare-fun b_next!15313 () Bool)

(assert (=> b!549262 (= b_free!15297 (not b_next!15313))))

(declare-fun tp!173978 () Bool)

(declare-fun b_and!53635 () Bool)

(assert (=> b!549262 (= tp!173978 b_and!53635)))

(declare-fun b_free!15299 () Bool)

(declare-fun b_next!15315 () Bool)

(assert (=> b!549262 (= b_free!15299 (not b_next!15315))))

(declare-fun tp!173976 () Bool)

(declare-fun b_and!53637 () Bool)

(assert (=> b!549262 (= tp!173976 b_and!53637)))

(declare-fun b!549295 () Bool)

(declare-fun b_free!15301 () Bool)

(declare-fun b_next!15317 () Bool)

(assert (=> b!549295 (= b_free!15301 (not b_next!15317))))

(declare-fun tp!173973 () Bool)

(declare-fun b_and!53639 () Bool)

(assert (=> b!549295 (= tp!173973 b_and!53639)))

(declare-fun b_free!15303 () Bool)

(declare-fun b_next!15319 () Bool)

(assert (=> b!549295 (= b_free!15303 (not b_next!15319))))

(declare-fun tp!173979 () Bool)

(declare-fun b_and!53641 () Bool)

(assert (=> b!549295 (= tp!173979 b_and!53641)))

(declare-fun e!332090 () Bool)

(assert (=> b!549262 (= e!332090 (and tp!173978 tp!173976))))

(declare-fun b!549263 () Bool)

(declare-fun res!235178 () Bool)

(declare-fun e!332064 () Bool)

(assert (=> b!549263 (=> (not res!235178) (not e!332064))))

(declare-datatypes ((C!3640 0))(
  ( (C!3641 (val!2046 Int)) )
))
(declare-datatypes ((Regex!1359 0))(
  ( (ElementMatch!1359 (c!103376 C!3640)) (Concat!2408 (regOne!3230 Regex!1359) (regTwo!3230 Regex!1359)) (EmptyExpr!1359) (Star!1359 (reg!1688 Regex!1359)) (EmptyLang!1359) (Union!1359 (regOne!3231 Regex!1359) (regTwo!3231 Regex!1359)) )
))
(declare-datatypes ((List!5429 0))(
  ( (Nil!5419) (Cons!5419 (h!10820 (_ BitVec 16)) (t!74958 List!5429)) )
))
(declare-datatypes ((TokenValue!1049 0))(
  ( (FloatLiteralValue!2098 (text!7788 List!5429)) (TokenValueExt!1048 (__x!3996 Int)) (Broken!5245 (value!34053 List!5429)) (Object!1058) (End!1049) (Def!1049) (Underscore!1049) (Match!1049) (Else!1049) (Error!1049) (Case!1049) (If!1049) (Extends!1049) (Abstract!1049) (Class!1049) (Val!1049) (DelimiterValue!2098 (del!1109 List!5429)) (KeywordValue!1055 (value!34054 List!5429)) (CommentValue!2098 (value!34055 List!5429)) (WhitespaceValue!2098 (value!34056 List!5429)) (IndentationValue!1049 (value!34057 List!5429)) (String!6988) (Int32!1049) (Broken!5246 (value!34058 List!5429)) (Boolean!1050) (Unit!9563) (OperatorValue!1052 (op!1109 List!5429)) (IdentifierValue!2098 (value!34059 List!5429)) (IdentifierValue!2099 (value!34060 List!5429)) (WhitespaceValue!2099 (value!34061 List!5429)) (True!2098) (False!2098) (Broken!5247 (value!34062 List!5429)) (Broken!5248 (value!34063 List!5429)) (True!2099) (RightBrace!1049) (RightBracket!1049) (Colon!1049) (Null!1049) (Comma!1049) (LeftBracket!1049) (False!2099) (LeftBrace!1049) (ImaginaryLiteralValue!1049 (text!7789 List!5429)) (StringLiteralValue!3147 (value!34064 List!5429)) (EOFValue!1049 (value!34065 List!5429)) (IdentValue!1049 (value!34066 List!5429)) (DelimiterValue!2099 (value!34067 List!5429)) (DedentValue!1049 (value!34068 List!5429)) (NewLineValue!1049 (value!34069 List!5429)) (IntegerValue!3147 (value!34070 (_ BitVec 32)) (text!7790 List!5429)) (IntegerValue!3148 (value!34071 Int) (text!7791 List!5429)) (Times!1049) (Or!1049) (Equal!1049) (Minus!1049) (Broken!5249 (value!34072 List!5429)) (And!1049) (Div!1049) (LessEqual!1049) (Mod!1049) (Concat!2409) (Not!1049) (Plus!1049) (SpaceValue!1049 (value!34073 List!5429)) (IntegerValue!3149 (value!34074 Int) (text!7792 List!5429)) (StringLiteralValue!3148 (text!7793 List!5429)) (FloatLiteralValue!2099 (text!7794 List!5429)) (BytesLiteralValue!1049 (value!34075 List!5429)) (CommentValue!2099 (value!34076 List!5429)) (StringLiteralValue!3149 (value!34077 List!5429)) (ErrorTokenValue!1049 (msg!1110 List!5429)) )
))
(declare-datatypes ((String!6989 0))(
  ( (String!6990 (value!34078 String)) )
))
(declare-datatypes ((List!5430 0))(
  ( (Nil!5420) (Cons!5420 (h!10821 C!3640) (t!74959 List!5430)) )
))
(declare-datatypes ((IArray!3485 0))(
  ( (IArray!3486 (innerList!1800 List!5430)) )
))
(declare-datatypes ((Conc!1742 0))(
  ( (Node!1742 (left!4483 Conc!1742) (right!4813 Conc!1742) (csize!3714 Int) (cheight!1953 Int)) (Leaf!2762 (xs!4379 IArray!3485) (csize!3715 Int)) (Empty!1742) )
))
(declare-datatypes ((BalanceConc!3492 0))(
  ( (BalanceConc!3493 (c!103377 Conc!1742)) )
))
(declare-datatypes ((TokenValueInjection!1866 0))(
  ( (TokenValueInjection!1867 (toValue!1872 Int) (toChars!1731 Int)) )
))
(declare-datatypes ((Rule!1850 0))(
  ( (Rule!1851 (regex!1025 Regex!1359) (tag!1287 String!6989) (isSeparator!1025 Bool) (transformation!1025 TokenValueInjection!1866)) )
))
(declare-datatypes ((Token!1786 0))(
  ( (Token!1787 (value!34079 TokenValue!1049) (rule!1747 Rule!1850) (size!4340 Int) (originalCharacters!1064 List!5430)) )
))
(declare-fun token!491 () Token!1786)

(declare-fun size!4341 (List!5430) Int)

(assert (=> b!549263 (= res!235178 (= (size!4340 token!491) (size!4341 (originalCharacters!1064 token!491))))))

(declare-fun b!549264 () Bool)

(declare-fun e!332081 () Bool)

(declare-fun e!332066 () Bool)

(assert (=> b!549264 (= e!332081 e!332066)))

(declare-fun res!235181 () Bool)

(assert (=> b!549264 (=> (not res!235181) (not e!332066))))

(declare-datatypes ((tuple2!6448 0))(
  ( (tuple2!6449 (_1!3488 Token!1786) (_2!3488 List!5430)) )
))
(declare-datatypes ((Option!1375 0))(
  ( (None!1374) (Some!1374 (v!16197 tuple2!6448)) )
))
(declare-fun lt!231076 () Option!1375)

(declare-fun isDefined!1187 (Option!1375) Bool)

(assert (=> b!549264 (= res!235181 (isDefined!1187 lt!231076))))

(declare-fun b!549265 () Bool)

(declare-datatypes ((Unit!9564 0))(
  ( (Unit!9565) )
))
(declare-fun e!332093 () Unit!9564)

(declare-fun Unit!9566 () Unit!9564)

(assert (=> b!549265 (= e!332093 Unit!9566)))

(declare-fun b!549266 () Bool)

(declare-fun e!332089 () Bool)

(assert (=> b!549266 e!332089))

(declare-fun res!235176 () Bool)

(assert (=> b!549266 (=> (not res!235176) (not e!332089))))

(declare-fun input!2705 () List!5430)

(declare-fun matchR!518 (Regex!1359 List!5430) Bool)

(assert (=> b!549266 (= res!235176 (not (matchR!518 (regex!1025 (rule!1747 token!491)) input!2705)))))

(declare-fun lt!231109 () Unit!9564)

(declare-datatypes ((LexerInterface!911 0))(
  ( (LexerInterfaceExt!908 (__x!3997 Int)) (Lexer!909) )
))
(declare-fun thiss!22590 () LexerInterface!911)

(declare-datatypes ((List!5431 0))(
  ( (Nil!5421) (Cons!5421 (h!10822 Rule!1850) (t!74960 List!5431)) )
))
(declare-fun rules!3103 () List!5431)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!8 (LexerInterface!911 List!5431 Rule!1850 List!5430 List!5430 Rule!1850) Unit!9564)

(assert (=> b!549266 (= lt!231109 (lemmaMaxPrefNoSmallerRuleMatches!8 thiss!22590 rules!3103 (rule!1747 (_1!3488 (v!16197 lt!231076))) input!2705 input!2705 (rule!1747 token!491)))))

(declare-fun e!332068 () Unit!9564)

(declare-fun Unit!9567 () Unit!9564)

(assert (=> b!549266 (= e!332068 Unit!9567)))

(declare-fun b!549267 () Bool)

(declare-fun res!235187 () Bool)

(declare-fun e!332076 () Bool)

(assert (=> b!549267 (=> (not res!235187) (not e!332076))))

(declare-fun rulesInvariant!874 (LexerInterface!911 List!5431) Bool)

(assert (=> b!549267 (= res!235187 (rulesInvariant!874 thiss!22590 rules!3103))))

(declare-fun b!549268 () Bool)

(declare-fun e!332078 () Bool)

(assert (=> b!549268 e!332078))

(declare-fun res!235185 () Bool)

(assert (=> b!549268 (=> (not res!235185) (not e!332078))))

(assert (=> b!549268 (= res!235185 (not (matchR!518 (regex!1025 (rule!1747 (_1!3488 (v!16197 lt!231076)))) input!2705)))))

(declare-fun lt!231092 () List!5430)

(declare-fun lt!231079 () Unit!9564)

(assert (=> b!549268 (= lt!231079 (lemmaMaxPrefNoSmallerRuleMatches!8 thiss!22590 rules!3103 (rule!1747 token!491) input!2705 lt!231092 (rule!1747 (_1!3488 (v!16197 lt!231076)))))))

(declare-fun Unit!9568 () Unit!9564)

(assert (=> b!549268 (= e!332093 Unit!9568)))

(declare-fun e!332073 () Bool)

(declare-fun b!549269 () Bool)

(declare-fun e!332086 () Bool)

(declare-fun tp!173980 () Bool)

(declare-fun inv!6796 (String!6989) Bool)

(declare-fun inv!6799 (TokenValueInjection!1866) Bool)

(assert (=> b!549269 (= e!332086 (and tp!173980 (inv!6796 (tag!1287 (h!10822 rules!3103))) (inv!6799 (transformation!1025 (h!10822 rules!3103))) e!332073))))

(declare-fun b!549270 () Bool)

(declare-fun e!332084 () Bool)

(declare-fun e!332075 () Bool)

(assert (=> b!549270 (= e!332084 e!332075)))

(declare-fun res!235182 () Bool)

(assert (=> b!549270 (=> (not res!235182) (not e!332075))))

(declare-fun lt!231081 () tuple2!6448)

(declare-fun suffix!1342 () List!5430)

(assert (=> b!549270 (= res!235182 (and (= (_1!3488 lt!231081) token!491) (= (_2!3488 lt!231081) suffix!1342)))))

(declare-fun lt!231084 () Option!1375)

(declare-fun get!2052 (Option!1375) tuple2!6448)

(assert (=> b!549270 (= lt!231081 (get!2052 lt!231084))))

(declare-fun b!549271 () Bool)

(declare-fun e!332074 () Bool)

(assert (=> b!549271 (= e!332074 true)))

(declare-fun lt!231068 () Int)

(declare-fun getIndex!26 (List!5431 Rule!1850) Int)

(assert (=> b!549271 (= lt!231068 (getIndex!26 rules!3103 (rule!1747 token!491)))))

(declare-fun lt!231078 () Int)

(assert (=> b!549271 (= lt!231078 (getIndex!26 rules!3103 (rule!1747 (_1!3488 (v!16197 lt!231076)))))))

(declare-fun lt!231098 () Unit!9564)

(declare-fun e!332082 () Unit!9564)

(assert (=> b!549271 (= lt!231098 e!332082)))

(declare-fun c!103371 () Bool)

(assert (=> b!549271 (= c!103371 (not (= (rule!1747 (_1!3488 (v!16197 lt!231076))) (rule!1747 token!491))))))

(declare-fun b!549272 () Bool)

(declare-fun e!332072 () Bool)

(assert (=> b!549272 (= e!332076 e!332072)))

(declare-fun res!235179 () Bool)

(assert (=> b!549272 (=> (not res!235179) (not e!332072))))

(declare-fun lt!231108 () List!5430)

(assert (=> b!549272 (= res!235179 (= lt!231108 input!2705))))

(declare-fun list!2247 (BalanceConc!3492) List!5430)

(declare-fun charsOf!654 (Token!1786) BalanceConc!3492)

(assert (=> b!549272 (= lt!231108 (list!2247 (charsOf!654 token!491)))))

(declare-fun b!549273 () Bool)

(declare-fun res!235183 () Bool)

(assert (=> b!549273 (=> res!235183 e!332074)))

(declare-fun contains!1267 (List!5431 Rule!1850) Bool)

(assert (=> b!549273 (= res!235183 (not (contains!1267 rules!3103 (rule!1747 token!491))))))

(declare-fun b!549274 () Bool)

(declare-fun Unit!9569 () Unit!9564)

(assert (=> b!549274 (= e!332068 Unit!9569)))

(declare-fun b!549275 () Bool)

(declare-fun e!332079 () Bool)

(assert (=> b!549275 (= e!332075 e!332079)))

(declare-fun res!235168 () Bool)

(assert (=> b!549275 (=> (not res!235168) (not e!332079))))

(get-info :version)

(assert (=> b!549275 (= res!235168 ((_ is Some!1374) lt!231076))))

(declare-fun maxPrefix!609 (LexerInterface!911 List!5431 List!5430) Option!1375)

(assert (=> b!549275 (= lt!231076 (maxPrefix!609 thiss!22590 rules!3103 input!2705))))

(declare-fun b!549276 () Bool)

(declare-fun res!235166 () Bool)

(assert (=> b!549276 (=> res!235166 e!332074)))

(declare-fun isEmpty!3912 (List!5430) Bool)

(assert (=> b!549276 (= res!235166 (not (isEmpty!3912 (_2!3488 (v!16197 lt!231076)))))))

(declare-fun b!549277 () Bool)

(declare-fun res!235177 () Bool)

(assert (=> b!549277 (=> (not res!235177) (not e!332076))))

(declare-fun isEmpty!3913 (List!5431) Bool)

(assert (=> b!549277 (= res!235177 (not (isEmpty!3913 rules!3103)))))

(declare-fun b!549278 () Bool)

(declare-fun e!332067 () Bool)

(assert (=> b!549278 (= e!332067 false)))

(declare-fun b!549279 () Bool)

(declare-fun Unit!9570 () Unit!9564)

(assert (=> b!549279 (= e!332082 Unit!9570)))

(declare-fun b!549280 () Bool)

(declare-fun res!235171 () Bool)

(assert (=> b!549280 (=> (not res!235171) (not e!332076))))

(assert (=> b!549280 (= res!235171 (not (isEmpty!3912 input!2705)))))

(declare-fun b!549281 () Bool)

(declare-fun e!332077 () Unit!9564)

(declare-fun Unit!9571 () Unit!9564)

(assert (=> b!549281 (= e!332077 Unit!9571)))

(declare-fun b!549282 () Bool)

(declare-fun e!332063 () Bool)

(assert (=> b!549282 (= e!332063 e!332074)))

(declare-fun res!235170 () Bool)

(assert (=> b!549282 (=> res!235170 e!332074)))

(declare-fun lt!231072 () Int)

(declare-fun lt!231106 () Int)

(declare-fun lt!231071 () List!5430)

(assert (=> b!549282 (= res!235170 (or (not (= lt!231106 lt!231072)) (not (= lt!231071 input!2705)) (not (= lt!231071 lt!231108))))))

(declare-fun lt!231105 () Unit!9564)

(declare-fun lt!231066 () BalanceConc!3492)

(declare-fun lemmaSemiInverse!154 (TokenValueInjection!1866 BalanceConc!3492) Unit!9564)

(assert (=> b!549282 (= lt!231105 (lemmaSemiInverse!154 (transformation!1025 (rule!1747 token!491)) lt!231066))))

(declare-fun lt!231083 () Unit!9564)

(declare-fun lt!231089 () BalanceConc!3492)

(assert (=> b!549282 (= lt!231083 (lemmaSemiInverse!154 (transformation!1025 (rule!1747 (_1!3488 (v!16197 lt!231076)))) lt!231089))))

(declare-fun lt!231077 () Unit!9564)

(declare-fun e!332088 () Unit!9564)

(assert (=> b!549282 (= lt!231077 e!332088)))

(declare-fun c!103372 () Bool)

(assert (=> b!549282 (= c!103372 (< lt!231106 lt!231072))))

(declare-fun e!332087 () Bool)

(assert (=> b!549282 e!332087))

(declare-fun res!235165 () Bool)

(assert (=> b!549282 (=> (not res!235165) (not e!332087))))

(declare-fun lt!231073 () TokenValue!1049)

(declare-fun maxPrefixOneRule!324 (LexerInterface!911 Rule!1850 List!5430) Option!1375)

(assert (=> b!549282 (= res!235165 (= (maxPrefixOneRule!324 thiss!22590 (rule!1747 token!491) lt!231092) (Some!1374 (tuple2!6449 (Token!1787 lt!231073 (rule!1747 token!491) lt!231072 lt!231108) suffix!1342))))))

(declare-fun lt!231093 () Unit!9564)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!76 (LexerInterface!911 List!5431 List!5430 List!5430 List!5430 Rule!1850) Unit!9564)

(assert (=> b!549282 (= lt!231093 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!76 thiss!22590 rules!3103 lt!231108 lt!231092 suffix!1342 (rule!1747 token!491)))))

(declare-fun lt!231100 () List!5430)

(declare-fun lt!231082 () TokenValue!1049)

(assert (=> b!549282 (= (maxPrefixOneRule!324 thiss!22590 (rule!1747 (_1!3488 (v!16197 lt!231076))) input!2705) (Some!1374 (tuple2!6449 (Token!1787 lt!231082 (rule!1747 (_1!3488 (v!16197 lt!231076))) lt!231106 lt!231100) (_2!3488 (v!16197 lt!231076)))))))

(declare-fun lt!231103 () Unit!9564)

(assert (=> b!549282 (= lt!231103 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!76 thiss!22590 rules!3103 lt!231100 input!2705 (_2!3488 (v!16197 lt!231076)) (rule!1747 (_1!3488 (v!16197 lt!231076)))))))

(assert (=> b!549282 e!332064))

(declare-fun res!235173 () Bool)

(assert (=> b!549282 (=> (not res!235173) (not e!332064))))

(assert (=> b!549282 (= res!235173 (= (value!34079 token!491) lt!231073))))

(declare-fun apply!1300 (TokenValueInjection!1866 BalanceConc!3492) TokenValue!1049)

(assert (=> b!549282 (= lt!231073 (apply!1300 (transformation!1025 (rule!1747 token!491)) lt!231066))))

(declare-fun seqFromList!1223 (List!5430) BalanceConc!3492)

(assert (=> b!549282 (= lt!231066 (seqFromList!1223 lt!231108))))

(declare-fun lt!231074 () List!5430)

(assert (=> b!549282 (= suffix!1342 lt!231074)))

(declare-fun lt!231090 () Unit!9564)

(declare-fun lemmaSamePrefixThenSameSuffix!394 (List!5430 List!5430 List!5430 List!5430 List!5430) Unit!9564)

(assert (=> b!549282 (= lt!231090 (lemmaSamePrefixThenSameSuffix!394 lt!231108 suffix!1342 lt!231108 lt!231074 lt!231092))))

(declare-fun getSuffix!190 (List!5430 List!5430) List!5430)

(assert (=> b!549282 (= lt!231074 (getSuffix!190 lt!231092 lt!231108))))

(declare-fun tp!173975 () Bool)

(declare-fun b!549283 () Bool)

(declare-fun e!332069 () Bool)

(declare-fun e!332092 () Bool)

(declare-fun inv!21 (TokenValue!1049) Bool)

(assert (=> b!549283 (= e!332069 (and (inv!21 (value!34079 token!491)) e!332092 tp!173975))))

(declare-fun b!549284 () Bool)

(assert (=> b!549284 (= e!332087 e!332081)))

(declare-fun res!235164 () Bool)

(assert (=> b!549284 (=> res!235164 e!332081)))

(assert (=> b!549284 (= res!235164 (>= lt!231106 lt!231072))))

(declare-fun b!549285 () Bool)

(declare-fun res!235175 () Bool)

(assert (=> b!549285 (=> res!235175 e!332074)))

(assert (=> b!549285 (= res!235175 (not (contains!1267 rules!3103 (rule!1747 (_1!3488 (v!16197 lt!231076))))))))

(declare-fun b!549286 () Bool)

(declare-fun e!332065 () Bool)

(declare-fun tp_is_empty!3073 () Bool)

(declare-fun tp!173974 () Bool)

(assert (=> b!549286 (= e!332065 (and tp_is_empty!3073 tp!173974))))

(declare-fun b!549287 () Bool)

(assert (=> b!549287 (= e!332089 false)))

(declare-fun res!235180 () Bool)

(assert (=> start!50828 (=> (not res!235180) (not e!332076))))

(assert (=> start!50828 (= res!235180 ((_ is Lexer!909) thiss!22590))))

(assert (=> start!50828 e!332076))

(assert (=> start!50828 e!332065))

(declare-fun e!332083 () Bool)

(assert (=> start!50828 e!332083))

(declare-fun inv!6800 (Token!1786) Bool)

(assert (=> start!50828 (and (inv!6800 token!491) e!332069)))

(assert (=> start!50828 true))

(declare-fun e!332091 () Bool)

(assert (=> start!50828 e!332091))

(declare-fun e!332094 () Bool)

(declare-fun lt!231104 () List!5430)

(declare-fun b!549288 () Bool)

(declare-fun lt!231080 () tuple2!6448)

(assert (=> b!549288 (= e!332094 (and (= (size!4340 (_1!3488 (v!16197 lt!231076))) lt!231106) (= (originalCharacters!1064 (_1!3488 (v!16197 lt!231076))) lt!231100) (= lt!231080 (tuple2!6449 (Token!1787 lt!231082 (rule!1747 (_1!3488 (v!16197 lt!231076))) lt!231106 lt!231100) lt!231104))))))

(declare-fun b!549289 () Bool)

(declare-fun Unit!9572 () Unit!9564)

(assert (=> b!549289 (= e!332088 Unit!9572)))

(declare-fun lt!231086 () Unit!9564)

(assert (=> b!549289 (= lt!231086 (lemmaSemiInverse!154 (transformation!1025 (rule!1747 (_1!3488 (v!16197 lt!231076)))) lt!231089))))

(declare-fun lt!231097 () Unit!9564)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!30 (LexerInterface!911 List!5431 Rule!1850 List!5430 List!5430 List!5430 Rule!1850) Unit!9564)

(assert (=> b!549289 (= lt!231097 (lemmaMaxPrefixOutputsMaxPrefix!30 thiss!22590 rules!3103 (rule!1747 (_1!3488 (v!16197 lt!231076))) lt!231100 input!2705 input!2705 (rule!1747 token!491)))))

(declare-fun res!235188 () Bool)

(assert (=> b!549289 (= res!235188 (not (matchR!518 (regex!1025 (rule!1747 token!491)) input!2705)))))

(assert (=> b!549289 (=> (not res!235188) (not e!332067))))

(assert (=> b!549289 e!332067))

(declare-fun b!549290 () Bool)

(declare-fun tp!173972 () Bool)

(assert (=> b!549290 (= e!332083 (and e!332086 tp!173972))))

(declare-fun b!549291 () Bool)

(assert (=> b!549291 (= e!332066 (= lt!231104 (_2!3488 (v!16197 lt!231076))))))

(declare-fun b!549292 () Bool)

(declare-fun res!235174 () Bool)

(assert (=> b!549292 (=> res!235174 e!332074)))

(assert (=> b!549292 (= res!235174 (or (not (= lt!231100 lt!231108)) (not (= (originalCharacters!1064 (_1!3488 (v!16197 lt!231076))) (originalCharacters!1064 token!491)))))))

(declare-fun b!549293 () Bool)

(declare-fun tp!173977 () Bool)

(assert (=> b!549293 (= e!332092 (and tp!173977 (inv!6796 (tag!1287 (rule!1747 token!491))) (inv!6799 (transformation!1025 (rule!1747 token!491))) e!332090))))

(declare-fun b!549294 () Bool)

(assert (=> b!549294 (= e!332064 (and (= (size!4340 token!491) lt!231072) (= (originalCharacters!1064 token!491) lt!231108) (= (tuple2!6449 token!491 suffix!1342) (tuple2!6449 (Token!1787 lt!231073 (rule!1747 token!491) lt!231072 lt!231108) lt!231074))))))

(assert (=> b!549295 (= e!332073 (and tp!173973 tp!173979))))

(declare-fun b!549296 () Bool)

(declare-fun Unit!9573 () Unit!9564)

(assert (=> b!549296 (= e!332088 Unit!9573)))

(declare-fun b!549297 () Bool)

(assert (=> b!549297 (= e!332082 e!332068)))

(declare-fun lt!231075 () Int)

(assert (=> b!549297 (= lt!231075 (getIndex!26 rules!3103 (rule!1747 (_1!3488 (v!16197 lt!231076)))))))

(declare-fun lt!231101 () Int)

(assert (=> b!549297 (= lt!231101 (getIndex!26 rules!3103 (rule!1747 token!491)))))

(declare-fun c!103373 () Bool)

(assert (=> b!549297 (= c!103373 (< lt!231075 lt!231101))))

(declare-fun lt!231088 () Unit!9564)

(assert (=> b!549297 (= lt!231088 e!332093)))

(declare-fun c!103375 () Bool)

(assert (=> b!549297 (= c!103375 (> lt!231075 lt!231101))))

(declare-fun b!549298 () Bool)

(declare-fun res!235169 () Bool)

(assert (=> b!549298 (=> (not res!235169) (not e!332066))))

(assert (=> b!549298 (= res!235169 (= (_1!3488 (get!2052 lt!231076)) (_1!3488 (v!16197 lt!231076))))))

(declare-fun b!549299 () Bool)

(declare-fun e!332080 () Bool)

(assert (=> b!549299 (= e!332080 (not e!332063))))

(declare-fun res!235167 () Bool)

(assert (=> b!549299 (=> res!235167 e!332063)))

(declare-fun lt!231094 () List!5430)

(declare-fun isPrefix!667 (List!5430 List!5430) Bool)

(assert (=> b!549299 (= res!235167 (not (isPrefix!667 input!2705 lt!231094)))))

(assert (=> b!549299 (isPrefix!667 lt!231108 lt!231094)))

(declare-fun lt!231110 () Unit!9564)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!518 (List!5430 List!5430) Unit!9564)

(assert (=> b!549299 (= lt!231110 (lemmaConcatTwoListThenFirstIsPrefix!518 lt!231108 suffix!1342))))

(assert (=> b!549299 (isPrefix!667 input!2705 lt!231092)))

(declare-fun lt!231070 () Unit!9564)

(assert (=> b!549299 (= lt!231070 (lemmaConcatTwoListThenFirstIsPrefix!518 input!2705 suffix!1342))))

(assert (=> b!549299 e!332094))

(declare-fun res!235163 () Bool)

(assert (=> b!549299 (=> (not res!235163) (not e!332094))))

(assert (=> b!549299 (= res!235163 (= (value!34079 (_1!3488 (v!16197 lt!231076))) lt!231082))))

(assert (=> b!549299 (= lt!231082 (apply!1300 (transformation!1025 (rule!1747 (_1!3488 (v!16197 lt!231076)))) lt!231089))))

(assert (=> b!549299 (= lt!231089 (seqFromList!1223 lt!231100))))

(declare-fun lt!231111 () Unit!9564)

(declare-fun lemmaInv!173 (TokenValueInjection!1866) Unit!9564)

(assert (=> b!549299 (= lt!231111 (lemmaInv!173 (transformation!1025 (rule!1747 token!491))))))

(declare-fun lt!231087 () Unit!9564)

(assert (=> b!549299 (= lt!231087 (lemmaInv!173 (transformation!1025 (rule!1747 (_1!3488 (v!16197 lt!231076))))))))

(declare-fun ruleValid!245 (LexerInterface!911 Rule!1850) Bool)

(assert (=> b!549299 (ruleValid!245 thiss!22590 (rule!1747 token!491))))

(declare-fun lt!231107 () Unit!9564)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!104 (LexerInterface!911 Rule!1850 List!5431) Unit!9564)

(assert (=> b!549299 (= lt!231107 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!104 thiss!22590 (rule!1747 token!491) rules!3103))))

(assert (=> b!549299 (ruleValid!245 thiss!22590 (rule!1747 (_1!3488 (v!16197 lt!231076))))))

(declare-fun lt!231099 () Unit!9564)

(assert (=> b!549299 (= lt!231099 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!104 thiss!22590 (rule!1747 (_1!3488 (v!16197 lt!231076))) rules!3103))))

(assert (=> b!549299 (isPrefix!667 input!2705 input!2705)))

(declare-fun lt!231091 () Unit!9564)

(declare-fun lemmaIsPrefixRefl!407 (List!5430 List!5430) Unit!9564)

(assert (=> b!549299 (= lt!231091 (lemmaIsPrefixRefl!407 input!2705 input!2705))))

(assert (=> b!549299 (= (_2!3488 (v!16197 lt!231076)) lt!231104)))

(declare-fun lt!231102 () Unit!9564)

(assert (=> b!549299 (= lt!231102 (lemmaSamePrefixThenSameSuffix!394 lt!231100 (_2!3488 (v!16197 lt!231076)) lt!231100 lt!231104 input!2705))))

(assert (=> b!549299 (= lt!231104 (getSuffix!190 input!2705 lt!231100))))

(assert (=> b!549299 (isPrefix!667 lt!231100 lt!231071)))

(declare-fun ++!1513 (List!5430 List!5430) List!5430)

(assert (=> b!549299 (= lt!231071 (++!1513 lt!231100 (_2!3488 (v!16197 lt!231076))))))

(declare-fun lt!231069 () Unit!9564)

(assert (=> b!549299 (= lt!231069 (lemmaConcatTwoListThenFirstIsPrefix!518 lt!231100 (_2!3488 (v!16197 lt!231076))))))

(declare-fun lt!231095 () Unit!9564)

(declare-fun lemmaCharactersSize!104 (Token!1786) Unit!9564)

(assert (=> b!549299 (= lt!231095 (lemmaCharactersSize!104 token!491))))

(declare-fun lt!231096 () Unit!9564)

(assert (=> b!549299 (= lt!231096 (lemmaCharactersSize!104 (_1!3488 (v!16197 lt!231076))))))

(declare-fun lt!231085 () Unit!9564)

(assert (=> b!549299 (= lt!231085 e!332077)))

(declare-fun c!103374 () Bool)

(assert (=> b!549299 (= c!103374 (> lt!231106 lt!231072))))

(assert (=> b!549299 (= lt!231072 (size!4341 lt!231108))))

(assert (=> b!549299 (= lt!231106 (size!4341 lt!231100))))

(assert (=> b!549299 (= lt!231100 (list!2247 (charsOf!654 (_1!3488 (v!16197 lt!231076)))))))

(assert (=> b!549299 (= lt!231076 (Some!1374 lt!231080))))

(assert (=> b!549299 (= lt!231080 (tuple2!6449 (_1!3488 (v!16197 lt!231076)) (_2!3488 (v!16197 lt!231076))))))

(declare-fun lt!231067 () Unit!9564)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!110 (List!5430 List!5430 List!5430 List!5430) Unit!9564)

(assert (=> b!549299 (= lt!231067 (lemmaConcatSameAndSameSizesThenSameLists!110 lt!231108 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!549300 () Bool)

(declare-fun res!235184 () Bool)

(assert (=> b!549300 (=> (not res!235184) (not e!332094))))

(assert (=> b!549300 (= res!235184 (= (size!4340 (_1!3488 (v!16197 lt!231076))) (size!4341 (originalCharacters!1064 (_1!3488 (v!16197 lt!231076))))))))

(declare-fun b!549301 () Bool)

(declare-fun Unit!9574 () Unit!9564)

(assert (=> b!549301 (= e!332077 Unit!9574)))

(assert (=> b!549301 false))

(declare-fun b!549302 () Bool)

(declare-fun tp!173971 () Bool)

(assert (=> b!549302 (= e!332091 (and tp_is_empty!3073 tp!173971))))

(declare-fun b!549303 () Bool)

(assert (=> b!549303 (= e!332072 e!332084)))

(declare-fun res!235172 () Bool)

(assert (=> b!549303 (=> (not res!235172) (not e!332084))))

(assert (=> b!549303 (= res!235172 (isDefined!1187 lt!231084))))

(assert (=> b!549303 (= lt!231084 (maxPrefix!609 thiss!22590 rules!3103 lt!231092))))

(assert (=> b!549303 (= lt!231092 (++!1513 input!2705 suffix!1342))))

(declare-fun b!549304 () Bool)

(assert (=> b!549304 (= e!332078 false)))

(declare-fun b!549305 () Bool)

(assert (=> b!549305 (= e!332079 e!332080)))

(declare-fun res!235186 () Bool)

(assert (=> b!549305 (=> (not res!235186) (not e!332080))))

(assert (=> b!549305 (= res!235186 (= lt!231094 lt!231092))))

(assert (=> b!549305 (= lt!231094 (++!1513 lt!231108 suffix!1342))))

(assert (= (and start!50828 res!235180) b!549277))

(assert (= (and b!549277 res!235177) b!549267))

(assert (= (and b!549267 res!235187) b!549280))

(assert (= (and b!549280 res!235171) b!549272))

(assert (= (and b!549272 res!235179) b!549303))

(assert (= (and b!549303 res!235172) b!549270))

(assert (= (and b!549270 res!235182) b!549275))

(assert (= (and b!549275 res!235168) b!549305))

(assert (= (and b!549305 res!235186) b!549299))

(assert (= (and b!549299 c!103374) b!549301))

(assert (= (and b!549299 (not c!103374)) b!549281))

(assert (= (and b!549299 res!235163) b!549300))

(assert (= (and b!549300 res!235184) b!549288))

(assert (= (and b!549299 (not res!235167)) b!549282))

(assert (= (and b!549282 res!235173) b!549263))

(assert (= (and b!549263 res!235178) b!549294))

(assert (= (and b!549282 res!235165) b!549284))

(assert (= (and b!549284 (not res!235164)) b!549264))

(assert (= (and b!549264 res!235181) b!549298))

(assert (= (and b!549298 res!235169) b!549291))

(assert (= (and b!549282 c!103372) b!549289))

(assert (= (and b!549282 (not c!103372)) b!549296))

(assert (= (and b!549289 res!235188) b!549278))

(assert (= (and b!549282 (not res!235170)) b!549276))

(assert (= (and b!549276 (not res!235166)) b!549292))

(assert (= (and b!549292 (not res!235174)) b!549285))

(assert (= (and b!549285 (not res!235175)) b!549273))

(assert (= (and b!549273 (not res!235183)) b!549271))

(assert (= (and b!549271 c!103371) b!549297))

(assert (= (and b!549271 (not c!103371)) b!549279))

(assert (= (and b!549297 c!103373) b!549268))

(assert (= (and b!549297 (not c!103373)) b!549265))

(assert (= (and b!549268 res!235185) b!549304))

(assert (= (and b!549297 c!103375) b!549266))

(assert (= (and b!549297 (not c!103375)) b!549274))

(assert (= (and b!549266 res!235176) b!549287))

(assert (= (and start!50828 ((_ is Cons!5420) suffix!1342)) b!549286))

(assert (= b!549269 b!549295))

(assert (= b!549290 b!549269))

(assert (= (and start!50828 ((_ is Cons!5421) rules!3103)) b!549290))

(assert (= b!549293 b!549262))

(assert (= b!549283 b!549293))

(assert (= start!50828 b!549283))

(assert (= (and start!50828 ((_ is Cons!5420) input!2705)) b!549302))

(declare-fun m!798459 () Bool)

(assert (=> b!549273 m!798459))

(declare-fun m!798461 () Bool)

(assert (=> b!549264 m!798461))

(declare-fun m!798463 () Bool)

(assert (=> b!549263 m!798463))

(declare-fun m!798465 () Bool)

(assert (=> b!549299 m!798465))

(declare-fun m!798467 () Bool)

(assert (=> b!549299 m!798467))

(declare-fun m!798469 () Bool)

(assert (=> b!549299 m!798469))

(declare-fun m!798471 () Bool)

(assert (=> b!549299 m!798471))

(declare-fun m!798473 () Bool)

(assert (=> b!549299 m!798473))

(declare-fun m!798475 () Bool)

(assert (=> b!549299 m!798475))

(declare-fun m!798477 () Bool)

(assert (=> b!549299 m!798477))

(declare-fun m!798479 () Bool)

(assert (=> b!549299 m!798479))

(declare-fun m!798481 () Bool)

(assert (=> b!549299 m!798481))

(declare-fun m!798483 () Bool)

(assert (=> b!549299 m!798483))

(declare-fun m!798485 () Bool)

(assert (=> b!549299 m!798485))

(declare-fun m!798487 () Bool)

(assert (=> b!549299 m!798487))

(declare-fun m!798489 () Bool)

(assert (=> b!549299 m!798489))

(declare-fun m!798491 () Bool)

(assert (=> b!549299 m!798491))

(declare-fun m!798493 () Bool)

(assert (=> b!549299 m!798493))

(assert (=> b!549299 m!798471))

(declare-fun m!798495 () Bool)

(assert (=> b!549299 m!798495))

(declare-fun m!798497 () Bool)

(assert (=> b!549299 m!798497))

(declare-fun m!798499 () Bool)

(assert (=> b!549299 m!798499))

(declare-fun m!798501 () Bool)

(assert (=> b!549299 m!798501))

(declare-fun m!798503 () Bool)

(assert (=> b!549299 m!798503))

(declare-fun m!798505 () Bool)

(assert (=> b!549299 m!798505))

(declare-fun m!798507 () Bool)

(assert (=> b!549299 m!798507))

(declare-fun m!798509 () Bool)

(assert (=> b!549299 m!798509))

(declare-fun m!798511 () Bool)

(assert (=> b!549299 m!798511))

(declare-fun m!798513 () Bool)

(assert (=> b!549299 m!798513))

(declare-fun m!798515 () Bool)

(assert (=> b!549299 m!798515))

(declare-fun m!798517 () Bool)

(assert (=> b!549299 m!798517))

(declare-fun m!798519 () Bool)

(assert (=> b!549269 m!798519))

(declare-fun m!798521 () Bool)

(assert (=> b!549269 m!798521))

(declare-fun m!798523 () Bool)

(assert (=> b!549271 m!798523))

(declare-fun m!798525 () Bool)

(assert (=> b!549271 m!798525))

(assert (=> b!549297 m!798525))

(assert (=> b!549297 m!798523))

(declare-fun m!798527 () Bool)

(assert (=> b!549275 m!798527))

(declare-fun m!798529 () Bool)

(assert (=> b!549303 m!798529))

(declare-fun m!798531 () Bool)

(assert (=> b!549303 m!798531))

(declare-fun m!798533 () Bool)

(assert (=> b!549303 m!798533))

(declare-fun m!798535 () Bool)

(assert (=> b!549272 m!798535))

(assert (=> b!549272 m!798535))

(declare-fun m!798537 () Bool)

(assert (=> b!549272 m!798537))

(declare-fun m!798539 () Bool)

(assert (=> start!50828 m!798539))

(declare-fun m!798541 () Bool)

(assert (=> b!549282 m!798541))

(declare-fun m!798543 () Bool)

(assert (=> b!549282 m!798543))

(declare-fun m!798545 () Bool)

(assert (=> b!549282 m!798545))

(declare-fun m!798547 () Bool)

(assert (=> b!549282 m!798547))

(declare-fun m!798549 () Bool)

(assert (=> b!549282 m!798549))

(declare-fun m!798551 () Bool)

(assert (=> b!549282 m!798551))

(declare-fun m!798553 () Bool)

(assert (=> b!549282 m!798553))

(declare-fun m!798555 () Bool)

(assert (=> b!549282 m!798555))

(declare-fun m!798557 () Bool)

(assert (=> b!549282 m!798557))

(declare-fun m!798559 () Bool)

(assert (=> b!549282 m!798559))

(declare-fun m!798561 () Bool)

(assert (=> b!549267 m!798561))

(declare-fun m!798563 () Bool)

(assert (=> b!549266 m!798563))

(declare-fun m!798565 () Bool)

(assert (=> b!549266 m!798565))

(declare-fun m!798567 () Bool)

(assert (=> b!549305 m!798567))

(declare-fun m!798569 () Bool)

(assert (=> b!549277 m!798569))

(assert (=> b!549289 m!798543))

(declare-fun m!798571 () Bool)

(assert (=> b!549289 m!798571))

(assert (=> b!549289 m!798563))

(declare-fun m!798573 () Bool)

(assert (=> b!549276 m!798573))

(declare-fun m!798575 () Bool)

(assert (=> b!549285 m!798575))

(declare-fun m!798577 () Bool)

(assert (=> b!549270 m!798577))

(declare-fun m!798579 () Bool)

(assert (=> b!549283 m!798579))

(declare-fun m!798581 () Bool)

(assert (=> b!549300 m!798581))

(declare-fun m!798583 () Bool)

(assert (=> b!549268 m!798583))

(declare-fun m!798585 () Bool)

(assert (=> b!549268 m!798585))

(declare-fun m!798587 () Bool)

(assert (=> b!549280 m!798587))

(declare-fun m!798589 () Bool)

(assert (=> b!549298 m!798589))

(declare-fun m!798591 () Bool)

(assert (=> b!549293 m!798591))

(declare-fun m!798593 () Bool)

(assert (=> b!549293 m!798593))

(check-sat (not b!549263) (not b!549268) (not b!549298) (not b!549289) b_and!53637 (not b!549264) (not b!549305) tp_is_empty!3073 (not b!549280) (not b_next!15319) b_and!53641 (not b!549290) (not b!549270) (not b!549302) (not b_next!15315) (not b!549272) (not b!549277) (not b!549285) (not b!549271) (not b!549273) b_and!53635 (not b!549269) (not b!549283) (not b!549299) (not b!549282) (not b!549297) (not b_next!15313) (not b!549276) (not b_next!15317) (not start!50828) (not b!549303) (not b!549286) (not b!549267) (not b!549300) b_and!53639 (not b!549266) (not b!549275) (not b!549293))
(check-sat (not b_next!15315) b_and!53637 b_and!53635 (not b_next!15313) (not b_next!15319) (not b_next!15317) b_and!53639 b_and!53641)

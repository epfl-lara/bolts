; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!58970 () Bool)

(assert start!58970)

(declare-fun b!615813 () Bool)

(declare-fun b_free!17613 () Bool)

(declare-fun b_next!17629 () Bool)

(assert (=> b!615813 (= b_free!17613 (not b_next!17629))))

(declare-fun tp!190272 () Bool)

(declare-fun b_and!61095 () Bool)

(assert (=> b!615813 (= tp!190272 b_and!61095)))

(declare-fun b_free!17615 () Bool)

(declare-fun b_next!17631 () Bool)

(assert (=> b!615813 (= b_free!17615 (not b_next!17631))))

(declare-fun tp!190275 () Bool)

(declare-fun b_and!61097 () Bool)

(assert (=> b!615813 (= tp!190275 b_and!61097)))

(declare-fun b!615808 () Bool)

(declare-fun b_free!17617 () Bool)

(declare-fun b_next!17633 () Bool)

(assert (=> b!615808 (= b_free!17617 (not b_next!17633))))

(declare-fun tp!190271 () Bool)

(declare-fun b_and!61099 () Bool)

(assert (=> b!615808 (= tp!190271 b_and!61099)))

(declare-fun b_free!17619 () Bool)

(declare-fun b_next!17635 () Bool)

(assert (=> b!615808 (= b_free!17619 (not b_next!17635))))

(declare-fun tp!190270 () Bool)

(declare-fun b_and!61101 () Bool)

(assert (=> b!615808 (= tp!190270 b_and!61101)))

(declare-fun b!615798 () Bool)

(declare-fun e!373390 () Bool)

(declare-fun e!373393 () Bool)

(declare-fun tp!190269 () Bool)

(assert (=> b!615798 (= e!373390 (and e!373393 tp!190269))))

(declare-fun b!615799 () Bool)

(declare-fun res!268042 () Bool)

(declare-fun e!373394 () Bool)

(assert (=> b!615799 (=> (not res!268042) (not e!373394))))

(declare-datatypes ((C!4078 0))(
  ( (C!4079 (val!2265 Int)) )
))
(declare-datatypes ((Regex!1578 0))(
  ( (ElementMatch!1578 (c!113664 C!4078)) (Concat!2846 (regOne!3668 Regex!1578) (regTwo!3668 Regex!1578)) (EmptyExpr!1578) (Star!1578 (reg!1907 Regex!1578)) (EmptyLang!1578) (Union!1578 (regOne!3669 Regex!1578) (regTwo!3669 Regex!1578)) )
))
(declare-datatypes ((String!8085 0))(
  ( (String!8086 (value!40296 String)) )
))
(declare-datatypes ((List!6188 0))(
  ( (Nil!6178) (Cons!6178 (h!11579 (_ BitVec 16)) (t!81403 List!6188)) )
))
(declare-datatypes ((TokenValue!1268 0))(
  ( (FloatLiteralValue!2536 (text!9321 List!6188)) (TokenValueExt!1267 (__x!4434 Int)) (Broken!6340 (value!40297 List!6188)) (Object!1277) (End!1268) (Def!1268) (Underscore!1268) (Match!1268) (Else!1268) (Error!1268) (Case!1268) (If!1268) (Extends!1268) (Abstract!1268) (Class!1268) (Val!1268) (DelimiterValue!2536 (del!1328 List!6188)) (KeywordValue!1274 (value!40298 List!6188)) (CommentValue!2536 (value!40299 List!6188)) (WhitespaceValue!2536 (value!40300 List!6188)) (IndentationValue!1268 (value!40301 List!6188)) (String!8087) (Int32!1268) (Broken!6341 (value!40302 List!6188)) (Boolean!1269) (Unit!11350) (OperatorValue!1271 (op!1328 List!6188)) (IdentifierValue!2536 (value!40303 List!6188)) (IdentifierValue!2537 (value!40304 List!6188)) (WhitespaceValue!2537 (value!40305 List!6188)) (True!2536) (False!2536) (Broken!6342 (value!40306 List!6188)) (Broken!6343 (value!40307 List!6188)) (True!2537) (RightBrace!1268) (RightBracket!1268) (Colon!1268) (Null!1268) (Comma!1268) (LeftBracket!1268) (False!2537) (LeftBrace!1268) (ImaginaryLiteralValue!1268 (text!9322 List!6188)) (StringLiteralValue!3804 (value!40308 List!6188)) (EOFValue!1268 (value!40309 List!6188)) (IdentValue!1268 (value!40310 List!6188)) (DelimiterValue!2537 (value!40311 List!6188)) (DedentValue!1268 (value!40312 List!6188)) (NewLineValue!1268 (value!40313 List!6188)) (IntegerValue!3804 (value!40314 (_ BitVec 32)) (text!9323 List!6188)) (IntegerValue!3805 (value!40315 Int) (text!9324 List!6188)) (Times!1268) (Or!1268) (Equal!1268) (Minus!1268) (Broken!6344 (value!40316 List!6188)) (And!1268) (Div!1268) (LessEqual!1268) (Mod!1268) (Concat!2847) (Not!1268) (Plus!1268) (SpaceValue!1268 (value!40317 List!6188)) (IntegerValue!3806 (value!40318 Int) (text!9325 List!6188)) (StringLiteralValue!3805 (text!9326 List!6188)) (FloatLiteralValue!2537 (text!9327 List!6188)) (BytesLiteralValue!1268 (value!40319 List!6188)) (CommentValue!2537 (value!40320 List!6188)) (StringLiteralValue!3806 (value!40321 List!6188)) (ErrorTokenValue!1268 (msg!1329 List!6188)) )
))
(declare-datatypes ((List!6189 0))(
  ( (Nil!6179) (Cons!6179 (h!11580 C!4078) (t!81404 List!6189)) )
))
(declare-datatypes ((IArray!3923 0))(
  ( (IArray!3924 (innerList!2019 List!6189)) )
))
(declare-datatypes ((Conc!1961 0))(
  ( (Node!1961 (left!4932 Conc!1961) (right!5262 Conc!1961) (csize!4152 Int) (cheight!2172 Int)) (Leaf!3091 (xs!4598 IArray!3923) (csize!4153 Int)) (Empty!1961) )
))
(declare-datatypes ((BalanceConc!3930 0))(
  ( (BalanceConc!3931 (c!113665 Conc!1961)) )
))
(declare-datatypes ((TokenValueInjection!2304 0))(
  ( (TokenValueInjection!2305 (toValue!2155 Int) (toChars!2014 Int)) )
))
(declare-datatypes ((Rule!2288 0))(
  ( (Rule!2289 (regex!1244 Regex!1578) (tag!1506 String!8085) (isSeparator!1244 Bool) (transformation!1244 TokenValueInjection!2304)) )
))
(declare-datatypes ((List!6190 0))(
  ( (Nil!6180) (Cons!6180 (h!11581 Rule!2288) (t!81405 List!6190)) )
))
(declare-fun rules!3103 () List!6190)

(declare-datatypes ((Token!2224 0))(
  ( (Token!2225 (value!40322 TokenValue!1268) (rule!2038 Rule!2288) (size!4849 Int) (originalCharacters!1283 List!6189)) )
))
(declare-fun token!491 () Token!2224)

(declare-fun contains!1460 (List!6190 Rule!2288) Bool)

(assert (=> b!615799 (= res!268042 (contains!1460 rules!3103 (rule!2038 token!491)))))

(declare-fun b!615800 () Bool)

(declare-fun e!373381 () Bool)

(declare-fun e!373392 () Bool)

(declare-fun tp!190277 () Bool)

(declare-fun inv!7865 (String!8085) Bool)

(declare-fun inv!7868 (TokenValueInjection!2304) Bool)

(assert (=> b!615800 (= e!373381 (and tp!190277 (inv!7865 (tag!1506 (rule!2038 token!491))) (inv!7868 (transformation!1244 (rule!2038 token!491))) e!373392))))

(declare-fun b!615801 () Bool)

(declare-datatypes ((tuple2!7028 0))(
  ( (tuple2!7029 (_1!3778 Token!2224) (_2!3778 List!6189)) )
))
(declare-datatypes ((Option!1595 0))(
  ( (None!1594) (Some!1594 (v!16509 tuple2!7028)) )
))
(declare-fun lt!264259 () Option!1595)

(declare-fun isEmpty!4459 (Option!1595) Bool)

(assert (=> b!615801 (= e!373394 (not (isEmpty!4459 lt!264259)))))

(declare-fun b!615802 () Bool)

(declare-fun e!373382 () Bool)

(declare-fun e!373387 () Bool)

(assert (=> b!615802 (= e!373382 e!373387)))

(declare-fun res!268036 () Bool)

(assert (=> b!615802 (=> (not res!268036) (not e!373387))))

(declare-fun suffix!1342 () List!6189)

(declare-fun lt!264261 () tuple2!7028)

(assert (=> b!615802 (= res!268036 (and (= (_1!3778 lt!264261) token!491) (= (_2!3778 lt!264261) suffix!1342)))))

(declare-fun lt!264260 () Option!1595)

(declare-fun get!2381 (Option!1595) tuple2!7028)

(assert (=> b!615802 (= lt!264261 (get!2381 lt!264260))))

(declare-fun b!615803 () Bool)

(declare-fun e!373385 () Bool)

(assert (=> b!615803 (= e!373385 e!373382)))

(declare-fun res!268034 () Bool)

(assert (=> b!615803 (=> (not res!268034) (not e!373382))))

(declare-fun isDefined!1406 (Option!1595) Bool)

(assert (=> b!615803 (= res!268034 (isDefined!1406 lt!264260))))

(declare-datatypes ((LexerInterface!1130 0))(
  ( (LexerInterfaceExt!1127 (__x!4435 Int)) (Lexer!1128) )
))
(declare-fun thiss!22590 () LexerInterface!1130)

(declare-fun input!2705 () List!6189)

(declare-fun maxPrefix!828 (LexerInterface!1130 List!6190 List!6189) Option!1595)

(declare-fun ++!1732 (List!6189 List!6189) List!6189)

(assert (=> b!615803 (= lt!264260 (maxPrefix!828 thiss!22590 rules!3103 (++!1732 input!2705 suffix!1342)))))

(declare-fun b!615804 () Bool)

(declare-fun e!373380 () Bool)

(declare-fun tp_is_empty!3511 () Bool)

(declare-fun tp!190274 () Bool)

(assert (=> b!615804 (= e!373380 (and tp_is_empty!3511 tp!190274))))

(declare-fun b!615805 () Bool)

(declare-fun res!268040 () Bool)

(assert (=> b!615805 (=> (not res!268040) (not e!373385))))

(declare-fun rulesInvariant!1093 (LexerInterface!1130 List!6190) Bool)

(assert (=> b!615805 (= res!268040 (rulesInvariant!1093 thiss!22590 rules!3103))))

(declare-fun b!615806 () Bool)

(declare-fun res!268039 () Bool)

(assert (=> b!615806 (=> (not res!268039) (not e!373385))))

(declare-fun list!2601 (BalanceConc!3930) List!6189)

(declare-fun charsOf!873 (Token!2224) BalanceConc!3930)

(assert (=> b!615806 (= res!268039 (= (list!2601 (charsOf!873 token!491)) input!2705))))

(declare-fun b!615807 () Bool)

(declare-fun res!268038 () Bool)

(assert (=> b!615807 (=> (not res!268038) (not e!373385))))

(declare-fun isEmpty!4460 (List!6190) Bool)

(assert (=> b!615807 (= res!268038 (not (isEmpty!4460 rules!3103)))))

(assert (=> b!615808 (= e!373392 (and tp!190271 tp!190270))))

(declare-fun b!615809 () Bool)

(declare-fun e!373391 () Bool)

(declare-fun tp!190273 () Bool)

(assert (=> b!615809 (= e!373391 (and tp_is_empty!3511 tp!190273))))

(declare-fun b!615810 () Bool)

(declare-fun res!268035 () Bool)

(assert (=> b!615810 (=> (not res!268035) (not e!373385))))

(declare-fun isEmpty!4461 (List!6189) Bool)

(assert (=> b!615810 (= res!268035 (not (isEmpty!4461 input!2705)))))

(declare-fun tp!190278 () Bool)

(declare-fun e!373383 () Bool)

(declare-fun b!615811 () Bool)

(assert (=> b!615811 (= e!373393 (and tp!190278 (inv!7865 (tag!1506 (h!11581 rules!3103))) (inv!7868 (transformation!1244 (h!11581 rules!3103))) e!373383))))

(declare-fun res!268037 () Bool)

(assert (=> start!58970 (=> (not res!268037) (not e!373385))))

(assert (=> start!58970 (= res!268037 (is-Lexer!1128 thiss!22590))))

(assert (=> start!58970 e!373385))

(assert (=> start!58970 e!373391))

(assert (=> start!58970 e!373390))

(declare-fun e!373388 () Bool)

(declare-fun inv!7869 (Token!2224) Bool)

(assert (=> start!58970 (and (inv!7869 token!491) e!373388)))

(assert (=> start!58970 true))

(assert (=> start!58970 e!373380))

(declare-fun b!615812 () Bool)

(assert (=> b!615812 (= e!373387 e!373394)))

(declare-fun res!268041 () Bool)

(assert (=> b!615812 (=> (not res!268041) (not e!373394))))

(assert (=> b!615812 (= res!268041 (not (is-Some!1594 lt!264259)))))

(assert (=> b!615812 (= lt!264259 (maxPrefix!828 thiss!22590 rules!3103 input!2705))))

(assert (=> b!615813 (= e!373383 (and tp!190272 tp!190275))))

(declare-fun tp!190276 () Bool)

(declare-fun b!615814 () Bool)

(declare-fun inv!21 (TokenValue!1268) Bool)

(assert (=> b!615814 (= e!373388 (and (inv!21 (value!40322 token!491)) e!373381 tp!190276))))

(declare-fun b!615815 () Bool)

(declare-fun res!268033 () Bool)

(assert (=> b!615815 (=> (not res!268033) (not e!373394))))

(declare-fun isPrefix!872 (List!6189 List!6189) Bool)

(assert (=> b!615815 (= res!268033 (isPrefix!872 input!2705 input!2705))))

(assert (= (and start!58970 res!268037) b!615807))

(assert (= (and b!615807 res!268038) b!615805))

(assert (= (and b!615805 res!268040) b!615810))

(assert (= (and b!615810 res!268035) b!615806))

(assert (= (and b!615806 res!268039) b!615803))

(assert (= (and b!615803 res!268034) b!615802))

(assert (= (and b!615802 res!268036) b!615812))

(assert (= (and b!615812 res!268041) b!615815))

(assert (= (and b!615815 res!268033) b!615799))

(assert (= (and b!615799 res!268042) b!615801))

(assert (= (and start!58970 (is-Cons!6179 suffix!1342)) b!615809))

(assert (= b!615811 b!615813))

(assert (= b!615798 b!615811))

(assert (= (and start!58970 (is-Cons!6180 rules!3103)) b!615798))

(assert (= b!615800 b!615808))

(assert (= b!615814 b!615800))

(assert (= start!58970 b!615814))

(assert (= (and start!58970 (is-Cons!6179 input!2705)) b!615804))

(declare-fun m!884549 () Bool)

(assert (=> b!615801 m!884549))

(declare-fun m!884551 () Bool)

(assert (=> b!615814 m!884551))

(declare-fun m!884553 () Bool)

(assert (=> b!615810 m!884553))

(declare-fun m!884555 () Bool)

(assert (=> b!615806 m!884555))

(assert (=> b!615806 m!884555))

(declare-fun m!884557 () Bool)

(assert (=> b!615806 m!884557))

(declare-fun m!884559 () Bool)

(assert (=> b!615800 m!884559))

(declare-fun m!884561 () Bool)

(assert (=> b!615800 m!884561))

(declare-fun m!884563 () Bool)

(assert (=> b!615811 m!884563))

(declare-fun m!884565 () Bool)

(assert (=> b!615811 m!884565))

(declare-fun m!884567 () Bool)

(assert (=> b!615812 m!884567))

(declare-fun m!884569 () Bool)

(assert (=> b!615803 m!884569))

(declare-fun m!884571 () Bool)

(assert (=> b!615803 m!884571))

(assert (=> b!615803 m!884571))

(declare-fun m!884573 () Bool)

(assert (=> b!615803 m!884573))

(declare-fun m!884575 () Bool)

(assert (=> b!615799 m!884575))

(declare-fun m!884577 () Bool)

(assert (=> b!615805 m!884577))

(declare-fun m!884579 () Bool)

(assert (=> start!58970 m!884579))

(declare-fun m!884581 () Bool)

(assert (=> b!615807 m!884581))

(declare-fun m!884583 () Bool)

(assert (=> b!615815 m!884583))

(declare-fun m!884585 () Bool)

(assert (=> b!615802 m!884585))

(push 1)

(assert (not b!615815))

(assert (not b_next!17635))

(assert (not b!615800))

(assert (not b_next!17629))

(assert (not b!615812))

(assert (not b!615814))

(assert (not b!615801))

(assert (not start!58970))

(assert (not b!615799))

(assert (not b!615804))

(assert (not b!615809))

(assert b_and!61095)

(assert (not b!615803))

(assert (not b_next!17633))

(assert b_and!61097)

(assert (not b!615811))

(assert (not b!615806))

(assert (not b!615798))

(assert (not b!615807))

(assert tp_is_empty!3511)

(assert (not b!615802))

(assert b_and!61099)

(assert b_and!61101)

(assert (not b!615810))

(assert (not b_next!17631))

(assert (not b!615805))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!17635))

(assert (not b_next!17633))

(assert (not b_next!17629))

(assert b_and!61097)

(assert b_and!61099)

(assert b_and!61101)

(assert (not b_next!17631))

(assert b_and!61095)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!216452 () Bool)

(declare-fun list!2603 (Conc!1961) List!6189)

(assert (=> d!216452 (= (list!2601 (charsOf!873 token!491)) (list!2603 (c!113665 (charsOf!873 token!491))))))

(declare-fun bs!71814 () Bool)

(assert (= bs!71814 d!216452))

(declare-fun m!884625 () Bool)

(assert (=> bs!71814 m!884625))

(assert (=> b!615806 d!216452))

(declare-fun d!216456 () Bool)

(declare-fun lt!264273 () BalanceConc!3930)

(assert (=> d!216456 (= (list!2601 lt!264273) (originalCharacters!1283 token!491))))

(declare-fun dynLambda!3575 (Int TokenValue!1268) BalanceConc!3930)

(assert (=> d!216456 (= lt!264273 (dynLambda!3575 (toChars!2014 (transformation!1244 (rule!2038 token!491))) (value!40322 token!491)))))

(assert (=> d!216456 (= (charsOf!873 token!491) lt!264273)))

(declare-fun b_lambda!24485 () Bool)

(assert (=> (not b_lambda!24485) (not d!216456)))

(declare-fun tb!53743 () Bool)

(declare-fun t!81410 () Bool)

(assert (=> (and b!615813 (= (toChars!2014 (transformation!1244 (h!11581 rules!3103))) (toChars!2014 (transformation!1244 (rule!2038 token!491)))) t!81410) tb!53743))

(declare-fun b!615874 () Bool)

(declare-fun e!373442 () Bool)

(declare-fun tp!190311 () Bool)

(declare-fun inv!7872 (Conc!1961) Bool)

(assert (=> b!615874 (= e!373442 (and (inv!7872 (c!113665 (dynLambda!3575 (toChars!2014 (transformation!1244 (rule!2038 token!491))) (value!40322 token!491)))) tp!190311))))

(declare-fun result!60538 () Bool)

(declare-fun inv!7873 (BalanceConc!3930) Bool)

(assert (=> tb!53743 (= result!60538 (and (inv!7873 (dynLambda!3575 (toChars!2014 (transformation!1244 (rule!2038 token!491))) (value!40322 token!491))) e!373442))))

(assert (= tb!53743 b!615874))

(declare-fun m!884627 () Bool)

(assert (=> b!615874 m!884627))

(declare-fun m!884629 () Bool)

(assert (=> tb!53743 m!884629))

(assert (=> d!216456 t!81410))

(declare-fun b_and!61111 () Bool)

(assert (= b_and!61097 (and (=> t!81410 result!60538) b_and!61111)))

(declare-fun t!81412 () Bool)

(declare-fun tb!53745 () Bool)

(assert (=> (and b!615808 (= (toChars!2014 (transformation!1244 (rule!2038 token!491))) (toChars!2014 (transformation!1244 (rule!2038 token!491)))) t!81412) tb!53745))

(declare-fun result!60542 () Bool)

(assert (= result!60542 result!60538))

(assert (=> d!216456 t!81412))

(declare-fun b_and!61113 () Bool)

(assert (= b_and!61101 (and (=> t!81412 result!60542) b_and!61113)))

(declare-fun m!884631 () Bool)

(assert (=> d!216456 m!884631))

(declare-fun m!884633 () Bool)

(assert (=> d!216456 m!884633))

(assert (=> b!615806 d!216456))

(declare-fun d!216458 () Bool)

(assert (=> d!216458 (= (isEmpty!4460 rules!3103) (is-Nil!6180 rules!3103))))

(assert (=> b!615807 d!216458))

(declare-fun d!216460 () Bool)

(assert (=> d!216460 (= (isEmpty!4461 input!2705) (is-Nil!6179 input!2705))))

(assert (=> b!615810 d!216460))

(declare-fun d!216462 () Bool)

(declare-fun lt!264276 () Bool)

(declare-fun content!1129 (List!6190) (Set Rule!2288))

(assert (=> d!216462 (= lt!264276 (set.member (rule!2038 token!491) (content!1129 rules!3103)))))

(declare-fun e!373451 () Bool)

(assert (=> d!216462 (= lt!264276 e!373451)))

(declare-fun res!268087 () Bool)

(assert (=> d!216462 (=> (not res!268087) (not e!373451))))

(assert (=> d!216462 (= res!268087 (is-Cons!6180 rules!3103))))

(assert (=> d!216462 (= (contains!1460 rules!3103 (rule!2038 token!491)) lt!264276)))

(declare-fun b!615882 () Bool)

(declare-fun e!373450 () Bool)

(assert (=> b!615882 (= e!373451 e!373450)))

(declare-fun res!268088 () Bool)

(assert (=> b!615882 (=> res!268088 e!373450)))

(assert (=> b!615882 (= res!268088 (= (h!11581 rules!3103) (rule!2038 token!491)))))

(declare-fun b!615883 () Bool)

(assert (=> b!615883 (= e!373450 (contains!1460 (t!81405 rules!3103) (rule!2038 token!491)))))

(assert (= (and d!216462 res!268087) b!615882))

(assert (= (and b!615882 (not res!268088)) b!615883))

(declare-fun m!884637 () Bool)

(assert (=> d!216462 m!884637))

(declare-fun m!884639 () Bool)

(assert (=> d!216462 m!884639))

(declare-fun m!884641 () Bool)

(assert (=> b!615883 m!884641))

(assert (=> b!615799 d!216462))

(declare-fun d!216464 () Bool)

(assert (=> d!216464 (= (inv!7865 (tag!1506 (rule!2038 token!491))) (= (mod (str.len (value!40296 (tag!1506 (rule!2038 token!491)))) 2) 0))))

(assert (=> b!615800 d!216464))

(declare-fun d!216468 () Bool)

(declare-fun res!268091 () Bool)

(declare-fun e!373454 () Bool)

(assert (=> d!216468 (=> (not res!268091) (not e!373454))))

(declare-fun semiInverseModEq!500 (Int Int) Bool)

(assert (=> d!216468 (= res!268091 (semiInverseModEq!500 (toChars!2014 (transformation!1244 (rule!2038 token!491))) (toValue!2155 (transformation!1244 (rule!2038 token!491)))))))

(assert (=> d!216468 (= (inv!7868 (transformation!1244 (rule!2038 token!491))) e!373454)))

(declare-fun b!615886 () Bool)

(declare-fun equivClasses!483 (Int Int) Bool)

(assert (=> b!615886 (= e!373454 (equivClasses!483 (toChars!2014 (transformation!1244 (rule!2038 token!491))) (toValue!2155 (transformation!1244 (rule!2038 token!491)))))))

(assert (= (and d!216468 res!268091) b!615886))

(declare-fun m!884645 () Bool)

(assert (=> d!216468 m!884645))

(declare-fun m!884647 () Bool)

(assert (=> b!615886 m!884647))

(assert (=> b!615800 d!216468))

(declare-fun d!216470 () Bool)

(assert (=> d!216470 (= (inv!7865 (tag!1506 (h!11581 rules!3103))) (= (mod (str.len (value!40296 (tag!1506 (h!11581 rules!3103)))) 2) 0))))

(assert (=> b!615811 d!216470))

(declare-fun d!216472 () Bool)

(declare-fun res!268094 () Bool)

(declare-fun e!373457 () Bool)

(assert (=> d!216472 (=> (not res!268094) (not e!373457))))

(assert (=> d!216472 (= res!268094 (semiInverseModEq!500 (toChars!2014 (transformation!1244 (h!11581 rules!3103))) (toValue!2155 (transformation!1244 (h!11581 rules!3103)))))))

(assert (=> d!216472 (= (inv!7868 (transformation!1244 (h!11581 rules!3103))) e!373457)))

(declare-fun b!615889 () Bool)

(assert (=> b!615889 (= e!373457 (equivClasses!483 (toChars!2014 (transformation!1244 (h!11581 rules!3103))) (toValue!2155 (transformation!1244 (h!11581 rules!3103)))))))

(assert (= (and d!216472 res!268094) b!615889))

(declare-fun m!884649 () Bool)

(assert (=> d!216472 m!884649))

(declare-fun m!884651 () Bool)

(assert (=> b!615889 m!884651))

(assert (=> b!615811 d!216472))

(declare-fun b!615909 () Bool)

(declare-fun e!373466 () Bool)

(declare-fun e!373467 () Bool)

(assert (=> b!615909 (= e!373466 e!373467)))

(declare-fun res!268111 () Bool)

(assert (=> b!615909 (=> (not res!268111) (not e!373467))))

(declare-fun lt!264290 () Option!1595)

(assert (=> b!615909 (= res!268111 (isDefined!1406 lt!264290))))

(declare-fun b!615910 () Bool)

(declare-fun res!268112 () Bool)

(assert (=> b!615910 (=> (not res!268112) (not e!373467))))

(assert (=> b!615910 (= res!268112 (= (++!1732 (list!2601 (charsOf!873 (_1!3778 (get!2381 lt!264290)))) (_2!3778 (get!2381 lt!264290))) input!2705))))

(declare-fun b!615911 () Bool)

(declare-fun e!373465 () Option!1595)

(declare-fun lt!264287 () Option!1595)

(declare-fun lt!264291 () Option!1595)

(assert (=> b!615911 (= e!373465 (ite (and (is-None!1594 lt!264287) (is-None!1594 lt!264291)) None!1594 (ite (is-None!1594 lt!264291) lt!264287 (ite (is-None!1594 lt!264287) lt!264291 (ite (>= (size!4849 (_1!3778 (v!16509 lt!264287))) (size!4849 (_1!3778 (v!16509 lt!264291)))) lt!264287 lt!264291)))))))

(declare-fun call!41032 () Option!1595)

(assert (=> b!615911 (= lt!264287 call!41032)))

(assert (=> b!615911 (= lt!264291 (maxPrefix!828 thiss!22590 (t!81405 rules!3103) input!2705))))

(declare-fun b!615912 () Bool)

(declare-fun res!268116 () Bool)

(assert (=> b!615912 (=> (not res!268116) (not e!373467))))

(declare-fun matchR!679 (Regex!1578 List!6189) Bool)

(assert (=> b!615912 (= res!268116 (matchR!679 (regex!1244 (rule!2038 (_1!3778 (get!2381 lt!264290)))) (list!2601 (charsOf!873 (_1!3778 (get!2381 lt!264290))))))))

(declare-fun b!615913 () Bool)

(declare-fun res!268110 () Bool)

(assert (=> b!615913 (=> (not res!268110) (not e!373467))))

(declare-fun apply!1495 (TokenValueInjection!2304 BalanceConc!3930) TokenValue!1268)

(declare-fun seqFromList!1418 (List!6189) BalanceConc!3930)

(assert (=> b!615913 (= res!268110 (= (value!40322 (_1!3778 (get!2381 lt!264290))) (apply!1495 (transformation!1244 (rule!2038 (_1!3778 (get!2381 lt!264290)))) (seqFromList!1418 (originalCharacters!1283 (_1!3778 (get!2381 lt!264290)))))))))

(declare-fun bm!41027 () Bool)

(declare-fun maxPrefixOneRule!489 (LexerInterface!1130 Rule!2288 List!6189) Option!1595)

(assert (=> bm!41027 (= call!41032 (maxPrefixOneRule!489 thiss!22590 (h!11581 rules!3103) input!2705))))

(declare-fun d!216474 () Bool)

(assert (=> d!216474 e!373466))

(declare-fun res!268114 () Bool)

(assert (=> d!216474 (=> res!268114 e!373466)))

(assert (=> d!216474 (= res!268114 (isEmpty!4459 lt!264290))))

(assert (=> d!216474 (= lt!264290 e!373465)))

(declare-fun c!113671 () Bool)

(assert (=> d!216474 (= c!113671 (and (is-Cons!6180 rules!3103) (is-Nil!6180 (t!81405 rules!3103))))))

(declare-datatypes ((Unit!11352 0))(
  ( (Unit!11353) )
))
(declare-fun lt!264289 () Unit!11352)

(declare-fun lt!264288 () Unit!11352)

(assert (=> d!216474 (= lt!264289 lt!264288)))

(assert (=> d!216474 (isPrefix!872 input!2705 input!2705)))

(declare-fun lemmaIsPrefixRefl!606 (List!6189 List!6189) Unit!11352)

(assert (=> d!216474 (= lt!264288 (lemmaIsPrefixRefl!606 input!2705 input!2705))))

(declare-fun rulesValidInductive!469 (LexerInterface!1130 List!6190) Bool)

(assert (=> d!216474 (rulesValidInductive!469 thiss!22590 rules!3103)))

(assert (=> d!216474 (= (maxPrefix!828 thiss!22590 rules!3103 input!2705) lt!264290)))

(declare-fun b!615914 () Bool)

(declare-fun res!268113 () Bool)

(assert (=> b!615914 (=> (not res!268113) (not e!373467))))

(declare-fun size!4851 (List!6189) Int)

(assert (=> b!615914 (= res!268113 (< (size!4851 (_2!3778 (get!2381 lt!264290))) (size!4851 input!2705)))))

(declare-fun b!615915 () Bool)

(assert (=> b!615915 (= e!373467 (contains!1460 rules!3103 (rule!2038 (_1!3778 (get!2381 lt!264290)))))))

(declare-fun b!615916 () Bool)

(declare-fun res!268115 () Bool)

(assert (=> b!615916 (=> (not res!268115) (not e!373467))))

(assert (=> b!615916 (= res!268115 (= (list!2601 (charsOf!873 (_1!3778 (get!2381 lt!264290)))) (originalCharacters!1283 (_1!3778 (get!2381 lt!264290)))))))

(declare-fun b!615917 () Bool)

(assert (=> b!615917 (= e!373465 call!41032)))

(assert (= (and d!216474 c!113671) b!615917))

(assert (= (and d!216474 (not c!113671)) b!615911))

(assert (= (or b!615917 b!615911) bm!41027))

(assert (= (and d!216474 (not res!268114)) b!615909))

(assert (= (and b!615909 res!268111) b!615916))

(assert (= (and b!615916 res!268115) b!615914))

(assert (= (and b!615914 res!268113) b!615910))

(assert (= (and b!615910 res!268112) b!615913))

(assert (= (and b!615913 res!268110) b!615912))

(assert (= (and b!615912 res!268116) b!615915))

(declare-fun m!884657 () Bool)

(assert (=> b!615913 m!884657))

(declare-fun m!884659 () Bool)

(assert (=> b!615913 m!884659))

(assert (=> b!615913 m!884659))

(declare-fun m!884661 () Bool)

(assert (=> b!615913 m!884661))

(declare-fun m!884663 () Bool)

(assert (=> b!615911 m!884663))

(declare-fun m!884665 () Bool)

(assert (=> bm!41027 m!884665))

(declare-fun m!884667 () Bool)

(assert (=> d!216474 m!884667))

(assert (=> d!216474 m!884583))

(declare-fun m!884669 () Bool)

(assert (=> d!216474 m!884669))

(declare-fun m!884671 () Bool)

(assert (=> d!216474 m!884671))

(assert (=> b!615912 m!884657))

(declare-fun m!884673 () Bool)

(assert (=> b!615912 m!884673))

(assert (=> b!615912 m!884673))

(declare-fun m!884675 () Bool)

(assert (=> b!615912 m!884675))

(assert (=> b!615912 m!884675))

(declare-fun m!884677 () Bool)

(assert (=> b!615912 m!884677))

(assert (=> b!615914 m!884657))

(declare-fun m!884679 () Bool)

(assert (=> b!615914 m!884679))

(declare-fun m!884681 () Bool)

(assert (=> b!615914 m!884681))

(assert (=> b!615910 m!884657))

(assert (=> b!615910 m!884673))

(assert (=> b!615910 m!884673))

(assert (=> b!615910 m!884675))

(assert (=> b!615910 m!884675))

(declare-fun m!884683 () Bool)

(assert (=> b!615910 m!884683))

(declare-fun m!884685 () Bool)

(assert (=> b!615909 m!884685))

(assert (=> b!615915 m!884657))

(declare-fun m!884687 () Bool)

(assert (=> b!615915 m!884687))

(assert (=> b!615916 m!884657))

(assert (=> b!615916 m!884673))

(assert (=> b!615916 m!884673))

(assert (=> b!615916 m!884675))

(assert (=> b!615812 d!216474))

(declare-fun d!216478 () Bool)

(assert (=> d!216478 (= (isEmpty!4459 lt!264259) (not (is-Some!1594 lt!264259)))))

(assert (=> b!615801 d!216478))

(declare-fun d!216480 () Bool)

(assert (=> d!216480 (= (get!2381 lt!264260) (v!16509 lt!264260))))

(assert (=> b!615802 d!216480))

(declare-fun b!615928 () Bool)

(declare-fun e!373475 () Bool)

(declare-fun inv!15 (TokenValue!1268) Bool)

(assert (=> b!615928 (= e!373475 (inv!15 (value!40322 token!491)))))

(declare-fun b!615929 () Bool)

(declare-fun e!373476 () Bool)

(declare-fun inv!16 (TokenValue!1268) Bool)

(assert (=> b!615929 (= e!373476 (inv!16 (value!40322 token!491)))))

(declare-fun b!615930 () Bool)

(declare-fun e!373474 () Bool)

(assert (=> b!615930 (= e!373476 e!373474)))

(declare-fun c!113676 () Bool)

(assert (=> b!615930 (= c!113676 (is-IntegerValue!3805 (value!40322 token!491)))))

(declare-fun b!615931 () Bool)

(declare-fun inv!17 (TokenValue!1268) Bool)

(assert (=> b!615931 (= e!373474 (inv!17 (value!40322 token!491)))))

(declare-fun d!216482 () Bool)

(declare-fun c!113677 () Bool)

(assert (=> d!216482 (= c!113677 (is-IntegerValue!3804 (value!40322 token!491)))))

(assert (=> d!216482 (= (inv!21 (value!40322 token!491)) e!373476)))

(declare-fun b!615932 () Bool)

(declare-fun res!268119 () Bool)

(assert (=> b!615932 (=> res!268119 e!373475)))

(assert (=> b!615932 (= res!268119 (not (is-IntegerValue!3806 (value!40322 token!491))))))

(assert (=> b!615932 (= e!373474 e!373475)))

(assert (= (and d!216482 c!113677) b!615929))

(assert (= (and d!216482 (not c!113677)) b!615930))

(assert (= (and b!615930 c!113676) b!615931))

(assert (= (and b!615930 (not c!113676)) b!615932))

(assert (= (and b!615932 (not res!268119)) b!615928))

(declare-fun m!884689 () Bool)

(assert (=> b!615928 m!884689))

(declare-fun m!884691 () Bool)

(assert (=> b!615929 m!884691))

(declare-fun m!884693 () Bool)

(assert (=> b!615931 m!884693))

(assert (=> b!615814 d!216482))

(declare-fun d!216484 () Bool)

(declare-fun res!268124 () Bool)

(declare-fun e!373479 () Bool)

(assert (=> d!216484 (=> (not res!268124) (not e!373479))))

(assert (=> d!216484 (= res!268124 (not (isEmpty!4461 (originalCharacters!1283 token!491))))))

(assert (=> d!216484 (= (inv!7869 token!491) e!373479)))

(declare-fun b!615937 () Bool)

(declare-fun res!268125 () Bool)

(assert (=> b!615937 (=> (not res!268125) (not e!373479))))

(assert (=> b!615937 (= res!268125 (= (originalCharacters!1283 token!491) (list!2601 (dynLambda!3575 (toChars!2014 (transformation!1244 (rule!2038 token!491))) (value!40322 token!491)))))))

(declare-fun b!615938 () Bool)

(assert (=> b!615938 (= e!373479 (= (size!4849 token!491) (size!4851 (originalCharacters!1283 token!491))))))

(assert (= (and d!216484 res!268124) b!615937))

(assert (= (and b!615937 res!268125) b!615938))

(declare-fun b_lambda!24487 () Bool)

(assert (=> (not b_lambda!24487) (not b!615937)))

(assert (=> b!615937 t!81410))

(declare-fun b_and!61115 () Bool)

(assert (= b_and!61111 (and (=> t!81410 result!60538) b_and!61115)))

(assert (=> b!615937 t!81412))

(declare-fun b_and!61117 () Bool)

(assert (= b_and!61113 (and (=> t!81412 result!60542) b_and!61117)))

(declare-fun m!884695 () Bool)

(assert (=> d!216484 m!884695))

(assert (=> b!615937 m!884633))

(assert (=> b!615937 m!884633))

(declare-fun m!884697 () Bool)

(assert (=> b!615937 m!884697))

(declare-fun m!884699 () Bool)

(assert (=> b!615938 m!884699))

(assert (=> start!58970 d!216484))

(declare-fun d!216486 () Bool)

(assert (=> d!216486 (= (isDefined!1406 lt!264260) (not (isEmpty!4459 lt!264260)))))

(declare-fun bs!71815 () Bool)

(assert (= bs!71815 d!216486))

(declare-fun m!884701 () Bool)

(assert (=> bs!71815 m!884701))

(assert (=> b!615803 d!216486))

(declare-fun b!615939 () Bool)

(declare-fun e!373481 () Bool)

(declare-fun e!373482 () Bool)

(assert (=> b!615939 (= e!373481 e!373482)))

(declare-fun res!268127 () Bool)

(assert (=> b!615939 (=> (not res!268127) (not e!373482))))

(declare-fun lt!264295 () Option!1595)

(assert (=> b!615939 (= res!268127 (isDefined!1406 lt!264295))))

(declare-fun b!615940 () Bool)

(declare-fun res!268128 () Bool)

(assert (=> b!615940 (=> (not res!268128) (not e!373482))))

(assert (=> b!615940 (= res!268128 (= (++!1732 (list!2601 (charsOf!873 (_1!3778 (get!2381 lt!264295)))) (_2!3778 (get!2381 lt!264295))) (++!1732 input!2705 suffix!1342)))))

(declare-fun b!615941 () Bool)

(declare-fun e!373480 () Option!1595)

(declare-fun lt!264292 () Option!1595)

(declare-fun lt!264296 () Option!1595)

(assert (=> b!615941 (= e!373480 (ite (and (is-None!1594 lt!264292) (is-None!1594 lt!264296)) None!1594 (ite (is-None!1594 lt!264296) lt!264292 (ite (is-None!1594 lt!264292) lt!264296 (ite (>= (size!4849 (_1!3778 (v!16509 lt!264292))) (size!4849 (_1!3778 (v!16509 lt!264296)))) lt!264292 lt!264296)))))))

(declare-fun call!41033 () Option!1595)

(assert (=> b!615941 (= lt!264292 call!41033)))

(assert (=> b!615941 (= lt!264296 (maxPrefix!828 thiss!22590 (t!81405 rules!3103) (++!1732 input!2705 suffix!1342)))))

(declare-fun b!615942 () Bool)

(declare-fun res!268132 () Bool)

(assert (=> b!615942 (=> (not res!268132) (not e!373482))))

(assert (=> b!615942 (= res!268132 (matchR!679 (regex!1244 (rule!2038 (_1!3778 (get!2381 lt!264295)))) (list!2601 (charsOf!873 (_1!3778 (get!2381 lt!264295))))))))

(declare-fun b!615943 () Bool)

(declare-fun res!268126 () Bool)

(assert (=> b!615943 (=> (not res!268126) (not e!373482))))

(assert (=> b!615943 (= res!268126 (= (value!40322 (_1!3778 (get!2381 lt!264295))) (apply!1495 (transformation!1244 (rule!2038 (_1!3778 (get!2381 lt!264295)))) (seqFromList!1418 (originalCharacters!1283 (_1!3778 (get!2381 lt!264295)))))))))

(declare-fun bm!41028 () Bool)

(assert (=> bm!41028 (= call!41033 (maxPrefixOneRule!489 thiss!22590 (h!11581 rules!3103) (++!1732 input!2705 suffix!1342)))))

(declare-fun d!216488 () Bool)

(assert (=> d!216488 e!373481))

(declare-fun res!268130 () Bool)

(assert (=> d!216488 (=> res!268130 e!373481)))

(assert (=> d!216488 (= res!268130 (isEmpty!4459 lt!264295))))

(assert (=> d!216488 (= lt!264295 e!373480)))

(declare-fun c!113678 () Bool)

(assert (=> d!216488 (= c!113678 (and (is-Cons!6180 rules!3103) (is-Nil!6180 (t!81405 rules!3103))))))

(declare-fun lt!264294 () Unit!11352)

(declare-fun lt!264293 () Unit!11352)

(assert (=> d!216488 (= lt!264294 lt!264293)))

(assert (=> d!216488 (isPrefix!872 (++!1732 input!2705 suffix!1342) (++!1732 input!2705 suffix!1342))))

(assert (=> d!216488 (= lt!264293 (lemmaIsPrefixRefl!606 (++!1732 input!2705 suffix!1342) (++!1732 input!2705 suffix!1342)))))

(assert (=> d!216488 (rulesValidInductive!469 thiss!22590 rules!3103)))

(assert (=> d!216488 (= (maxPrefix!828 thiss!22590 rules!3103 (++!1732 input!2705 suffix!1342)) lt!264295)))

(declare-fun b!615944 () Bool)

(declare-fun res!268129 () Bool)

(assert (=> b!615944 (=> (not res!268129) (not e!373482))))

(assert (=> b!615944 (= res!268129 (< (size!4851 (_2!3778 (get!2381 lt!264295))) (size!4851 (++!1732 input!2705 suffix!1342))))))

(declare-fun b!615945 () Bool)

(assert (=> b!615945 (= e!373482 (contains!1460 rules!3103 (rule!2038 (_1!3778 (get!2381 lt!264295)))))))

(declare-fun b!615946 () Bool)

(declare-fun res!268131 () Bool)

(assert (=> b!615946 (=> (not res!268131) (not e!373482))))

(assert (=> b!615946 (= res!268131 (= (list!2601 (charsOf!873 (_1!3778 (get!2381 lt!264295)))) (originalCharacters!1283 (_1!3778 (get!2381 lt!264295)))))))

(declare-fun b!615947 () Bool)

(assert (=> b!615947 (= e!373480 call!41033)))

(assert (= (and d!216488 c!113678) b!615947))

(assert (= (and d!216488 (not c!113678)) b!615941))

(assert (= (or b!615947 b!615941) bm!41028))

(assert (= (and d!216488 (not res!268130)) b!615939))

(assert (= (and b!615939 res!268127) b!615946))

(assert (= (and b!615946 res!268131) b!615944))

(assert (= (and b!615944 res!268129) b!615940))

(assert (= (and b!615940 res!268128) b!615943))

(assert (= (and b!615943 res!268126) b!615942))

(assert (= (and b!615942 res!268132) b!615945))

(declare-fun m!884703 () Bool)

(assert (=> b!615943 m!884703))

(declare-fun m!884705 () Bool)

(assert (=> b!615943 m!884705))

(assert (=> b!615943 m!884705))

(declare-fun m!884707 () Bool)

(assert (=> b!615943 m!884707))

(assert (=> b!615941 m!884571))

(declare-fun m!884709 () Bool)

(assert (=> b!615941 m!884709))

(assert (=> bm!41028 m!884571))

(declare-fun m!884711 () Bool)

(assert (=> bm!41028 m!884711))

(declare-fun m!884713 () Bool)

(assert (=> d!216488 m!884713))

(assert (=> d!216488 m!884571))

(assert (=> d!216488 m!884571))

(declare-fun m!884715 () Bool)

(assert (=> d!216488 m!884715))

(assert (=> d!216488 m!884571))

(assert (=> d!216488 m!884571))

(declare-fun m!884717 () Bool)

(assert (=> d!216488 m!884717))

(assert (=> d!216488 m!884671))

(assert (=> b!615942 m!884703))

(declare-fun m!884719 () Bool)

(assert (=> b!615942 m!884719))

(assert (=> b!615942 m!884719))

(declare-fun m!884721 () Bool)

(assert (=> b!615942 m!884721))

(assert (=> b!615942 m!884721))

(declare-fun m!884723 () Bool)

(assert (=> b!615942 m!884723))

(assert (=> b!615944 m!884703))

(declare-fun m!884725 () Bool)

(assert (=> b!615944 m!884725))

(assert (=> b!615944 m!884571))

(declare-fun m!884727 () Bool)

(assert (=> b!615944 m!884727))

(assert (=> b!615940 m!884703))

(assert (=> b!615940 m!884719))

(assert (=> b!615940 m!884719))

(assert (=> b!615940 m!884721))

(assert (=> b!615940 m!884721))

(declare-fun m!884729 () Bool)

(assert (=> b!615940 m!884729))

(declare-fun m!884731 () Bool)

(assert (=> b!615939 m!884731))

(assert (=> b!615945 m!884703))

(declare-fun m!884733 () Bool)

(assert (=> b!615945 m!884733))

(assert (=> b!615946 m!884703))

(assert (=> b!615946 m!884719))

(assert (=> b!615946 m!884719))

(assert (=> b!615946 m!884721))

(assert (=> b!615803 d!216488))

(declare-fun b!615958 () Bool)

(declare-fun res!268138 () Bool)

(declare-fun e!373487 () Bool)

(assert (=> b!615958 (=> (not res!268138) (not e!373487))))

(declare-fun lt!264299 () List!6189)

(assert (=> b!615958 (= res!268138 (= (size!4851 lt!264299) (+ (size!4851 input!2705) (size!4851 suffix!1342))))))

(declare-fun d!216490 () Bool)

(assert (=> d!216490 e!373487))

(declare-fun res!268137 () Bool)

(assert (=> d!216490 (=> (not res!268137) (not e!373487))))

(declare-fun content!1130 (List!6189) (Set C!4078))

(assert (=> d!216490 (= res!268137 (= (content!1130 lt!264299) (set.union (content!1130 input!2705) (content!1130 suffix!1342))))))

(declare-fun e!373488 () List!6189)

(assert (=> d!216490 (= lt!264299 e!373488)))

(declare-fun c!113681 () Bool)

(assert (=> d!216490 (= c!113681 (is-Nil!6179 input!2705))))

(assert (=> d!216490 (= (++!1732 input!2705 suffix!1342) lt!264299)))

(declare-fun b!615956 () Bool)

(assert (=> b!615956 (= e!373488 suffix!1342)))

(declare-fun b!615959 () Bool)

(assert (=> b!615959 (= e!373487 (or (not (= suffix!1342 Nil!6179)) (= lt!264299 input!2705)))))

(declare-fun b!615957 () Bool)

(assert (=> b!615957 (= e!373488 (Cons!6179 (h!11580 input!2705) (++!1732 (t!81404 input!2705) suffix!1342)))))

(assert (= (and d!216490 c!113681) b!615956))

(assert (= (and d!216490 (not c!113681)) b!615957))

(assert (= (and d!216490 res!268137) b!615958))

(assert (= (and b!615958 res!268138) b!615959))

(declare-fun m!884735 () Bool)

(assert (=> b!615958 m!884735))

(assert (=> b!615958 m!884681))

(declare-fun m!884737 () Bool)

(assert (=> b!615958 m!884737))

(declare-fun m!884739 () Bool)

(assert (=> d!216490 m!884739))

(declare-fun m!884741 () Bool)

(assert (=> d!216490 m!884741))

(declare-fun m!884743 () Bool)

(assert (=> d!216490 m!884743))

(declare-fun m!884745 () Bool)

(assert (=> b!615957 m!884745))

(assert (=> b!615803 d!216490))

(declare-fun b!615968 () Bool)

(declare-fun e!373496 () Bool)

(declare-fun e!373495 () Bool)

(assert (=> b!615968 (= e!373496 e!373495)))

(declare-fun res!268148 () Bool)

(assert (=> b!615968 (=> (not res!268148) (not e!373495))))

(assert (=> b!615968 (= res!268148 (not (is-Nil!6179 input!2705)))))

(declare-fun d!216492 () Bool)

(declare-fun e!373497 () Bool)

(assert (=> d!216492 e!373497))

(declare-fun res!268149 () Bool)

(assert (=> d!216492 (=> res!268149 e!373497)))

(declare-fun lt!264302 () Bool)

(assert (=> d!216492 (= res!268149 (not lt!264302))))

(assert (=> d!216492 (= lt!264302 e!373496)))

(declare-fun res!268147 () Bool)

(assert (=> d!216492 (=> res!268147 e!373496)))

(assert (=> d!216492 (= res!268147 (is-Nil!6179 input!2705))))

(assert (=> d!216492 (= (isPrefix!872 input!2705 input!2705) lt!264302)))

(declare-fun b!615970 () Bool)

(declare-fun tail!828 (List!6189) List!6189)

(assert (=> b!615970 (= e!373495 (isPrefix!872 (tail!828 input!2705) (tail!828 input!2705)))))

(declare-fun b!615969 () Bool)

(declare-fun res!268150 () Bool)

(assert (=> b!615969 (=> (not res!268150) (not e!373495))))

(declare-fun head!1299 (List!6189) C!4078)

(assert (=> b!615969 (= res!268150 (= (head!1299 input!2705) (head!1299 input!2705)))))

(declare-fun b!615971 () Bool)

(assert (=> b!615971 (= e!373497 (>= (size!4851 input!2705) (size!4851 input!2705)))))

(assert (= (and d!216492 (not res!268147)) b!615968))

(assert (= (and b!615968 res!268148) b!615969))

(assert (= (and b!615969 res!268150) b!615970))

(assert (= (and d!216492 (not res!268149)) b!615971))

(declare-fun m!884747 () Bool)

(assert (=> b!615970 m!884747))

(assert (=> b!615970 m!884747))

(assert (=> b!615970 m!884747))

(assert (=> b!615970 m!884747))

(declare-fun m!884749 () Bool)

(assert (=> b!615970 m!884749))

(declare-fun m!884751 () Bool)

(assert (=> b!615969 m!884751))

(assert (=> b!615969 m!884751))

(assert (=> b!615971 m!884681))

(assert (=> b!615971 m!884681))

(assert (=> b!615815 d!216492))

(declare-fun d!216494 () Bool)

(declare-fun res!268153 () Bool)

(declare-fun e!373502 () Bool)

(assert (=> d!216494 (=> (not res!268153) (not e!373502))))

(declare-fun rulesValid!463 (LexerInterface!1130 List!6190) Bool)

(assert (=> d!216494 (= res!268153 (rulesValid!463 thiss!22590 rules!3103))))

(assert (=> d!216494 (= (rulesInvariant!1093 thiss!22590 rules!3103) e!373502)))

(declare-fun b!615978 () Bool)

(declare-datatypes ((List!6194 0))(
  ( (Nil!6184) (Cons!6184 (h!11585 String!8085) (t!81419 List!6194)) )
))
(declare-fun noDuplicateTag!463 (LexerInterface!1130 List!6190 List!6194) Bool)

(assert (=> b!615978 (= e!373502 (noDuplicateTag!463 thiss!22590 rules!3103 Nil!6184))))

(assert (= (and d!216494 res!268153) b!615978))

(declare-fun m!884753 () Bool)

(assert (=> d!216494 m!884753))

(declare-fun m!884755 () Bool)

(assert (=> b!615978 m!884755))

(assert (=> b!615805 d!216494))

(declare-fun b!615992 () Bool)

(declare-fun e!373505 () Bool)

(declare-fun tp!190322 () Bool)

(declare-fun tp!190326 () Bool)

(assert (=> b!615992 (= e!373505 (and tp!190322 tp!190326))))

(declare-fun b!615991 () Bool)

(declare-fun tp!190325 () Bool)

(assert (=> b!615991 (= e!373505 tp!190325)))

(declare-fun b!615989 () Bool)

(assert (=> b!615989 (= e!373505 tp_is_empty!3511)))

(declare-fun b!615990 () Bool)

(declare-fun tp!190323 () Bool)

(declare-fun tp!190324 () Bool)

(assert (=> b!615990 (= e!373505 (and tp!190323 tp!190324))))

(assert (=> b!615811 (= tp!190278 e!373505)))

(assert (= (and b!615811 (is-ElementMatch!1578 (regex!1244 (h!11581 rules!3103)))) b!615989))

(assert (= (and b!615811 (is-Concat!2846 (regex!1244 (h!11581 rules!3103)))) b!615990))

(assert (= (and b!615811 (is-Star!1578 (regex!1244 (h!11581 rules!3103)))) b!615991))

(assert (= (and b!615811 (is-Union!1578 (regex!1244 (h!11581 rules!3103)))) b!615992))

(declare-fun b!616017 () Bool)

(declare-fun b_free!17629 () Bool)

(declare-fun b_next!17645 () Bool)

(assert (=> b!616017 (= b_free!17629 (not b_next!17645))))

(declare-fun tp!190338 () Bool)

(declare-fun b_and!61119 () Bool)

(assert (=> b!616017 (= tp!190338 b_and!61119)))

(declare-fun b_free!17631 () Bool)

(declare-fun b_next!17647 () Bool)

(assert (=> b!616017 (= b_free!17631 (not b_next!17647))))

(declare-fun t!81414 () Bool)

(declare-fun tb!53747 () Bool)

(assert (=> (and b!616017 (= (toChars!2014 (transformation!1244 (h!11581 (t!81405 rules!3103)))) (toChars!2014 (transformation!1244 (rule!2038 token!491)))) t!81414) tb!53747))

(declare-fun result!60548 () Bool)

(assert (= result!60548 result!60538))

(assert (=> d!216456 t!81414))

(assert (=> b!615937 t!81414))

(declare-fun b_and!61121 () Bool)

(declare-fun tp!190337 () Bool)

(assert (=> b!616017 (= tp!190337 (and (=> t!81414 result!60548) b_and!61121))))

(declare-fun e!373518 () Bool)

(assert (=> b!616017 (= e!373518 (and tp!190338 tp!190337))))

(declare-fun e!373520 () Bool)

(declare-fun tp!190336 () Bool)

(declare-fun b!616016 () Bool)

(assert (=> b!616016 (= e!373520 (and tp!190336 (inv!7865 (tag!1506 (h!11581 (t!81405 rules!3103)))) (inv!7868 (transformation!1244 (h!11581 (t!81405 rules!3103)))) e!373518))))

(declare-fun b!616015 () Bool)

(declare-fun e!373521 () Bool)

(declare-fun tp!190335 () Bool)

(assert (=> b!616015 (= e!373521 (and e!373520 tp!190335))))

(assert (=> b!615798 (= tp!190269 e!373521)))

(assert (= b!616016 b!616017))

(assert (= b!616015 b!616016))

(assert (= (and b!615798 (is-Cons!6180 (t!81405 rules!3103))) b!616015))

(declare-fun m!884757 () Bool)

(assert (=> b!616016 m!884757))

(declare-fun m!884759 () Bool)

(assert (=> b!616016 m!884759))

(declare-fun b!616022 () Bool)

(declare-fun e!373524 () Bool)

(declare-fun tp!190341 () Bool)

(assert (=> b!616022 (= e!373524 (and tp_is_empty!3511 tp!190341))))

(assert (=> b!615814 (= tp!190276 e!373524)))

(assert (= (and b!615814 (is-Cons!6179 (originalCharacters!1283 token!491))) b!616022))

(declare-fun b!616023 () Bool)

(declare-fun e!373525 () Bool)

(declare-fun tp!190342 () Bool)

(assert (=> b!616023 (= e!373525 (and tp_is_empty!3511 tp!190342))))

(assert (=> b!615804 (= tp!190274 e!373525)))

(assert (= (and b!615804 (is-Cons!6179 (t!81404 input!2705))) b!616023))

(declare-fun b!616024 () Bool)

(declare-fun e!373526 () Bool)

(declare-fun tp!190343 () Bool)

(assert (=> b!616024 (= e!373526 (and tp_is_empty!3511 tp!190343))))

(assert (=> b!615809 (= tp!190273 e!373526)))

(assert (= (and b!615809 (is-Cons!6179 (t!81404 suffix!1342))) b!616024))

(declare-fun b!616028 () Bool)

(declare-fun e!373527 () Bool)

(declare-fun tp!190344 () Bool)

(declare-fun tp!190348 () Bool)

(assert (=> b!616028 (= e!373527 (and tp!190344 tp!190348))))

(declare-fun b!616027 () Bool)

(declare-fun tp!190347 () Bool)

(assert (=> b!616027 (= e!373527 tp!190347)))

(declare-fun b!616025 () Bool)

(assert (=> b!616025 (= e!373527 tp_is_empty!3511)))

(declare-fun b!616026 () Bool)

(declare-fun tp!190345 () Bool)

(declare-fun tp!190346 () Bool)

(assert (=> b!616026 (= e!373527 (and tp!190345 tp!190346))))

(assert (=> b!615800 (= tp!190277 e!373527)))

(assert (= (and b!615800 (is-ElementMatch!1578 (regex!1244 (rule!2038 token!491)))) b!616025))

(assert (= (and b!615800 (is-Concat!2846 (regex!1244 (rule!2038 token!491)))) b!616026))

(assert (= (and b!615800 (is-Star!1578 (regex!1244 (rule!2038 token!491)))) b!616027))

(assert (= (and b!615800 (is-Union!1578 (regex!1244 (rule!2038 token!491)))) b!616028))

(declare-fun b_lambda!24489 () Bool)

(assert (= b_lambda!24487 (or (and b!615813 b_free!17615 (= (toChars!2014 (transformation!1244 (h!11581 rules!3103))) (toChars!2014 (transformation!1244 (rule!2038 token!491))))) (and b!615808 b_free!17619) (and b!616017 b_free!17631 (= (toChars!2014 (transformation!1244 (h!11581 (t!81405 rules!3103)))) (toChars!2014 (transformation!1244 (rule!2038 token!491))))) b_lambda!24489)))

(declare-fun b_lambda!24491 () Bool)

(assert (= b_lambda!24485 (or (and b!615813 b_free!17615 (= (toChars!2014 (transformation!1244 (h!11581 rules!3103))) (toChars!2014 (transformation!1244 (rule!2038 token!491))))) (and b!615808 b_free!17619) (and b!616017 b_free!17631 (= (toChars!2014 (transformation!1244 (h!11581 (t!81405 rules!3103)))) (toChars!2014 (transformation!1244 (rule!2038 token!491))))) b_lambda!24491)))

(push 1)

(assert (not b!615916))

(assert (not b!615946))

(assert (not b!615909))

(assert (not b_next!17645))

(assert (not b!615912))

(assert (not b!615990))

(assert (not d!216474))

(assert (not b_next!17635))

(assert (not b!615937))

(assert b_and!61115)

(assert (not b!615938))

(assert (not b_next!17633))

(assert b_and!61121)

(assert (not b!615992))

(assert (not b!615886))

(assert (not b!616027))

(assert (not b!615931))

(assert (not d!216456))

(assert (not b_next!17629))

(assert b_and!61117)

(assert (not b!615969))

(assert (not d!216486))

(assert (not b!615957))

(assert (not b!615958))

(assert (not b!615913))

(assert (not b_lambda!24491))

(assert (not b!615889))

(assert (not bm!41027))

(assert (not b!615942))

(assert (not b!616028))

(assert (not b!615874))

(assert (not b!616024))

(assert (not b!615929))

(assert (not b_next!17647))

(assert (not b!615911))

(assert (not b_lambda!24489))

(assert tp_is_empty!3511)

(assert (not b!615978))

(assert (not b!616022))

(assert (not b!615940))

(assert (not b!615928))

(assert (not bm!41028))

(assert b_and!61099)

(assert (not b!615944))

(assert (not b!615939))

(assert (not d!216472))

(assert (not b!615943))

(assert (not b!615971))

(assert (not b!615991))

(assert (not d!216468))

(assert (not b!615915))

(assert (not d!216494))

(assert (not tb!53743))

(assert (not b!616016))

(assert (not b!615910))

(assert (not b_next!17631))

(assert (not b!615941))

(assert (not b!616026))

(assert (not d!216452))

(assert (not b!615914))

(assert (not d!216490))

(assert (not d!216462))

(assert (not d!216488))

(assert (not b!616023))

(assert (not d!216484))

(assert (not b!616015))

(assert b_and!61095)

(assert (not b!615883))

(assert (not b!615945))

(assert (not b!615970))

(assert b_and!61119)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!17635))

(assert (not b_next!17629))

(assert b_and!61117)

(assert (not b_next!17647))

(assert b_and!61099)

(assert (not b_next!17631))

(assert (not b_next!17645))

(assert b_and!61095)

(assert b_and!61119)

(assert b_and!61115)

(assert b_and!61121)

(assert (not b_next!17633))

(check-sat)

(pop 1)


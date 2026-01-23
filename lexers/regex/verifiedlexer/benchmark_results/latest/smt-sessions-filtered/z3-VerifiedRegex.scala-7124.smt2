; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!378056 () Bool)

(assert start!378056)

(declare-fun b!4014208 () Bool)

(declare-fun b_free!111641 () Bool)

(declare-fun b_next!112345 () Bool)

(assert (=> b!4014208 (= b_free!111641 (not b_next!112345))))

(declare-fun tp!1220769 () Bool)

(declare-fun b_and!308423 () Bool)

(assert (=> b!4014208 (= tp!1220769 b_and!308423)))

(declare-fun b_free!111643 () Bool)

(declare-fun b_next!112347 () Bool)

(assert (=> b!4014208 (= b_free!111643 (not b_next!112347))))

(declare-fun tp!1220774 () Bool)

(declare-fun b_and!308425 () Bool)

(assert (=> b!4014208 (= tp!1220774 b_and!308425)))

(declare-fun b!4014209 () Bool)

(declare-fun b_free!111645 () Bool)

(declare-fun b_next!112349 () Bool)

(assert (=> b!4014209 (= b_free!111645 (not b_next!112349))))

(declare-fun tp!1220768 () Bool)

(declare-fun b_and!308427 () Bool)

(assert (=> b!4014209 (= tp!1220768 b_and!308427)))

(declare-fun b_free!111647 () Bool)

(declare-fun b_next!112351 () Bool)

(assert (=> b!4014209 (= b_free!111647 (not b_next!112351))))

(declare-fun tp!1220764 () Bool)

(declare-fun b_and!308429 () Bool)

(assert (=> b!4014209 (= tp!1220764 b_and!308429)))

(declare-fun e!2489583 () Bool)

(declare-fun tp!1220771 () Bool)

(declare-datatypes ((C!23668 0))(
  ( (C!23669 (val!13928 Int)) )
))
(declare-datatypes ((List!43076 0))(
  ( (Nil!42952) (Cons!42952 (h!48372 C!23668) (t!333265 List!43076)) )
))
(declare-datatypes ((IArray!26099 0))(
  ( (IArray!26100 (innerList!13107 List!43076)) )
))
(declare-datatypes ((Conc!13047 0))(
  ( (Node!13047 (left!32399 Conc!13047) (right!32729 Conc!13047) (csize!26324 Int) (cheight!13258 Int)) (Leaf!20172 (xs!16353 IArray!26099) (csize!26325 Int)) (Empty!13047) )
))
(declare-datatypes ((BalanceConc!25688 0))(
  ( (BalanceConc!25689 (c!694060 Conc!13047)) )
))
(declare-datatypes ((List!43077 0))(
  ( (Nil!42953) (Cons!42953 (h!48373 (_ BitVec 16)) (t!333266 List!43077)) )
))
(declare-datatypes ((TokenValue!7066 0))(
  ( (FloatLiteralValue!14132 (text!49907 List!43077)) (TokenValueExt!7065 (__x!26349 Int)) (Broken!35330 (value!215434 List!43077)) (Object!7189) (End!7066) (Def!7066) (Underscore!7066) (Match!7066) (Else!7066) (Error!7066) (Case!7066) (If!7066) (Extends!7066) (Abstract!7066) (Class!7066) (Val!7066) (DelimiterValue!14132 (del!7126 List!43077)) (KeywordValue!7072 (value!215435 List!43077)) (CommentValue!14132 (value!215436 List!43077)) (WhitespaceValue!14132 (value!215437 List!43077)) (IndentationValue!7066 (value!215438 List!43077)) (String!49047) (Int32!7066) (Broken!35331 (value!215439 List!43077)) (Boolean!7067) (Unit!61995) (OperatorValue!7069 (op!7126 List!43077)) (IdentifierValue!14132 (value!215440 List!43077)) (IdentifierValue!14133 (value!215441 List!43077)) (WhitespaceValue!14133 (value!215442 List!43077)) (True!14132) (False!14132) (Broken!35332 (value!215443 List!43077)) (Broken!35333 (value!215444 List!43077)) (True!14133) (RightBrace!7066) (RightBracket!7066) (Colon!7066) (Null!7066) (Comma!7066) (LeftBracket!7066) (False!14133) (LeftBrace!7066) (ImaginaryLiteralValue!7066 (text!49908 List!43077)) (StringLiteralValue!21198 (value!215445 List!43077)) (EOFValue!7066 (value!215446 List!43077)) (IdentValue!7066 (value!215447 List!43077)) (DelimiterValue!14133 (value!215448 List!43077)) (DedentValue!7066 (value!215449 List!43077)) (NewLineValue!7066 (value!215450 List!43077)) (IntegerValue!21198 (value!215451 (_ BitVec 32)) (text!49909 List!43077)) (IntegerValue!21199 (value!215452 Int) (text!49910 List!43077)) (Times!7066) (Or!7066) (Equal!7066) (Minus!7066) (Broken!35334 (value!215453 List!43077)) (And!7066) (Div!7066) (LessEqual!7066) (Mod!7066) (Concat!18807) (Not!7066) (Plus!7066) (SpaceValue!7066 (value!215454 List!43077)) (IntegerValue!21200 (value!215455 Int) (text!49911 List!43077)) (StringLiteralValue!21199 (text!49912 List!43077)) (FloatLiteralValue!14133 (text!49913 List!43077)) (BytesLiteralValue!7066 (value!215456 List!43077)) (CommentValue!14133 (value!215457 List!43077)) (StringLiteralValue!21200 (value!215458 List!43077)) (ErrorTokenValue!7066 (msg!7127 List!43077)) )
))
(declare-datatypes ((Regex!11741 0))(
  ( (ElementMatch!11741 (c!694061 C!23668)) (Concat!18808 (regOne!23994 Regex!11741) (regTwo!23994 Regex!11741)) (EmptyExpr!11741) (Star!11741 (reg!12070 Regex!11741)) (EmptyLang!11741) (Union!11741 (regOne!23995 Regex!11741) (regTwo!23995 Regex!11741)) )
))
(declare-datatypes ((String!49048 0))(
  ( (String!49049 (value!215459 String)) )
))
(declare-datatypes ((TokenValueInjection!13560 0))(
  ( (TokenValueInjection!13561 (toValue!9344 Int) (toChars!9203 Int)) )
))
(declare-datatypes ((Rule!13472 0))(
  ( (Rule!13473 (regex!6836 Regex!11741) (tag!7696 String!49048) (isSeparator!6836 Bool) (transformation!6836 TokenValueInjection!13560)) )
))
(declare-datatypes ((List!43078 0))(
  ( (Nil!42954) (Cons!42954 (h!48374 Rule!13472) (t!333267 List!43078)) )
))
(declare-fun rules!2999 () List!43078)

(declare-fun b!4014190 () Bool)

(declare-fun e!2489574 () Bool)

(declare-fun inv!57373 (String!49048) Bool)

(declare-fun inv!57376 (TokenValueInjection!13560) Bool)

(assert (=> b!4014190 (= e!2489574 (and tp!1220771 (inv!57373 (tag!7696 (h!48374 rules!2999))) (inv!57376 (transformation!6836 (h!48374 rules!2999))) e!2489583))))

(declare-fun b!4014191 () Bool)

(declare-fun res!1632023 () Bool)

(declare-fun e!2489566 () Bool)

(assert (=> b!4014191 (=> (not res!1632023) (not e!2489566))))

(declare-fun suffix!1299 () List!43076)

(declare-fun newSuffix!27 () List!43076)

(declare-fun size!32117 (List!43076) Int)

(assert (=> b!4014191 (= res!1632023 (>= (size!32117 suffix!1299) (size!32117 newSuffix!27)))))

(declare-fun b!4014192 () Bool)

(declare-fun e!2489559 () Bool)

(declare-fun e!2489577 () Bool)

(assert (=> b!4014192 (= e!2489559 e!2489577)))

(declare-fun res!1632045 () Bool)

(assert (=> b!4014192 (=> res!1632045 e!2489577)))

(declare-fun lt!1422221 () List!43076)

(assert (=> b!4014192 (= res!1632045 (not (= lt!1422221 suffix!1299)))))

(declare-fun lt!1422217 () List!43076)

(declare-fun ++!11238 (List!43076 List!43076) List!43076)

(assert (=> b!4014192 (= lt!1422221 (++!11238 newSuffix!27 lt!1422217))))

(declare-fun getSuffix!2348 (List!43076 List!43076) List!43076)

(assert (=> b!4014192 (= lt!1422217 (getSuffix!2348 suffix!1299 newSuffix!27))))

(declare-fun b!4014193 () Bool)

(declare-fun e!2489573 () Bool)

(declare-fun e!2489560 () Bool)

(assert (=> b!4014193 (= e!2489573 e!2489560)))

(declare-fun res!1632028 () Bool)

(assert (=> b!4014193 (=> res!1632028 e!2489560)))

(declare-fun lt!1422219 () List!43076)

(declare-fun lt!1422205 () List!43076)

(declare-fun isPrefix!3923 (List!43076 List!43076) Bool)

(assert (=> b!4014193 (= res!1632028 (not (isPrefix!3923 lt!1422219 lt!1422205)))))

(declare-fun lt!1422187 () List!43076)

(assert (=> b!4014193 (isPrefix!3923 lt!1422219 lt!1422187)))

(declare-fun lt!1422196 () List!43076)

(declare-datatypes ((Unit!61996 0))(
  ( (Unit!61997) )
))
(declare-fun lt!1422206 () Unit!61996)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!736 (List!43076 List!43076 List!43076) Unit!61996)

(assert (=> b!4014193 (= lt!1422206 (lemmaPrefixStaysPrefixWhenAddingToSuffix!736 lt!1422219 lt!1422196 lt!1422217))))

(declare-fun b!4014194 () Bool)

(assert (=> b!4014194 (= e!2489577 e!2489573)))

(declare-fun res!1632044 () Bool)

(assert (=> b!4014194 (=> res!1632044 e!2489573)))

(assert (=> b!4014194 (= res!1632044 (not (= lt!1422187 lt!1422205)))))

(declare-fun prefix!494 () List!43076)

(assert (=> b!4014194 (= lt!1422187 (++!11238 prefix!494 lt!1422221))))

(assert (=> b!4014194 (= lt!1422187 (++!11238 lt!1422196 lt!1422217))))

(declare-fun lt!1422200 () Unit!61996)

(declare-fun lemmaConcatAssociativity!2548 (List!43076 List!43076 List!43076) Unit!61996)

(assert (=> b!4014194 (= lt!1422200 (lemmaConcatAssociativity!2548 prefix!494 newSuffix!27 lt!1422217))))

(declare-fun b!4014195 () Bool)

(declare-fun e!2489585 () Bool)

(declare-fun e!2489570 () Bool)

(assert (=> b!4014195 (= e!2489585 e!2489570)))

(declare-fun res!1632038 () Bool)

(assert (=> b!4014195 (=> res!1632038 e!2489570)))

(declare-fun lt!1422181 () List!43076)

(assert (=> b!4014195 (= res!1632038 (not (= lt!1422181 prefix!494)))))

(declare-fun lt!1422193 () List!43076)

(declare-fun lt!1422202 () List!43076)

(assert (=> b!4014195 (= lt!1422181 (++!11238 lt!1422193 lt!1422202))))

(assert (=> b!4014195 (= lt!1422202 (getSuffix!2348 prefix!494 lt!1422193))))

(assert (=> b!4014195 (isPrefix!3923 lt!1422193 prefix!494)))

(declare-fun lt!1422224 () Unit!61996)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!495 (List!43076 List!43076 List!43076) Unit!61996)

(assert (=> b!4014195 (= lt!1422224 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!495 prefix!494 lt!1422193 lt!1422205))))

(declare-fun b!4014196 () Bool)

(declare-fun res!1632037 () Bool)

(assert (=> b!4014196 (=> (not res!1632037) (not e!2489566))))

(declare-fun isEmpty!25656 (List!43078) Bool)

(assert (=> b!4014196 (= res!1632037 (not (isEmpty!25656 rules!2999)))))

(declare-fun b!4014197 () Bool)

(declare-fun e!2489581 () Bool)

(declare-fun tp_is_empty!20453 () Bool)

(declare-fun tp!1220773 () Bool)

(assert (=> b!4014197 (= e!2489581 (and tp_is_empty!20453 tp!1220773))))

(declare-fun b!4014198 () Bool)

(declare-fun e!2489558 () Bool)

(assert (=> b!4014198 (= e!2489558 e!2489559)))

(declare-fun res!1632039 () Bool)

(assert (=> b!4014198 (=> res!1632039 e!2489559)))

(declare-datatypes ((Token!12810 0))(
  ( (Token!12811 (value!215460 TokenValue!7066) (rule!9882 Rule!13472) (size!32118 Int) (originalCharacters!7436 List!43076)) )
))
(declare-datatypes ((tuple2!42098 0))(
  ( (tuple2!42099 (_1!24183 Token!12810) (_2!24183 List!43076)) )
))
(declare-datatypes ((Option!9250 0))(
  ( (None!9249) (Some!9249 (v!39619 tuple2!42098)) )
))
(declare-fun lt!1422228 () Option!9250)

(declare-fun lt!1422197 () Option!9250)

(assert (=> b!4014198 (= res!1632039 (not (= lt!1422228 (Some!9249 (v!39619 lt!1422197)))))))

(declare-fun newSuffixResult!27 () List!43076)

(assert (=> b!4014198 (isPrefix!3923 lt!1422219 (++!11238 lt!1422219 newSuffixResult!27))))

(declare-fun lt!1422192 () Unit!61996)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2764 (List!43076 List!43076) Unit!61996)

(assert (=> b!4014198 (= lt!1422192 (lemmaConcatTwoListThenFirstIsPrefix!2764 lt!1422219 newSuffixResult!27))))

(declare-fun lt!1422207 () List!43076)

(assert (=> b!4014198 (isPrefix!3923 lt!1422219 lt!1422207)))

(assert (=> b!4014198 (= lt!1422207 (++!11238 lt!1422219 (_2!24183 (v!39619 lt!1422197))))))

(declare-fun lt!1422214 () Unit!61996)

(assert (=> b!4014198 (= lt!1422214 (lemmaConcatTwoListThenFirstIsPrefix!2764 lt!1422219 (_2!24183 (v!39619 lt!1422197))))))

(declare-fun lt!1422189 () Int)

(declare-fun lt!1422225 () TokenValue!7066)

(assert (=> b!4014198 (= lt!1422228 (Some!9249 (tuple2!42099 (Token!12811 lt!1422225 (rule!9882 (_1!24183 (v!39619 lt!1422197))) lt!1422189 lt!1422219) (_2!24183 (v!39619 lt!1422197)))))))

(declare-datatypes ((LexerInterface!6425 0))(
  ( (LexerInterfaceExt!6422 (__x!26350 Int)) (Lexer!6423) )
))
(declare-fun thiss!21717 () LexerInterface!6425)

(declare-fun maxPrefixOneRule!2743 (LexerInterface!6425 Rule!13472 List!43076) Option!9250)

(assert (=> b!4014198 (= lt!1422228 (maxPrefixOneRule!2743 thiss!21717 (rule!9882 (_1!24183 (v!39619 lt!1422197))) lt!1422196))))

(assert (=> b!4014198 (= lt!1422189 (size!32117 lt!1422219))))

(declare-fun apply!10033 (TokenValueInjection!13560 BalanceConc!25688) TokenValue!7066)

(declare-fun seqFromList!5061 (List!43076) BalanceConc!25688)

(assert (=> b!4014198 (= lt!1422225 (apply!10033 (transformation!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197)))) (seqFromList!5061 lt!1422219)))))

(declare-fun lt!1422227 () Unit!61996)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1561 (LexerInterface!6425 List!43078 List!43076 List!43076 List!43076 Rule!13472) Unit!61996)

(assert (=> b!4014198 (= lt!1422227 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1561 thiss!21717 rules!2999 lt!1422219 lt!1422196 (_2!24183 (v!39619 lt!1422197)) (rule!9882 (_1!24183 (v!39619 lt!1422197)))))))

(declare-fun list!15966 (BalanceConc!25688) List!43076)

(declare-fun charsOf!4652 (Token!12810) BalanceConc!25688)

(assert (=> b!4014198 (= lt!1422219 (list!15966 (charsOf!4652 (_1!24183 (v!39619 lt!1422197)))))))

(declare-fun lt!1422188 () Unit!61996)

(declare-fun lemmaInv!1051 (TokenValueInjection!13560) Unit!61996)

(assert (=> b!4014198 (= lt!1422188 (lemmaInv!1051 (transformation!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197))))))))

(declare-fun ruleValid!2768 (LexerInterface!6425 Rule!13472) Bool)

(assert (=> b!4014198 (ruleValid!2768 thiss!21717 (rule!9882 (_1!24183 (v!39619 lt!1422197))))))

(declare-fun lt!1422186 () Unit!61996)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1842 (LexerInterface!6425 Rule!13472 List!43078) Unit!61996)

(assert (=> b!4014198 (= lt!1422186 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1842 thiss!21717 (rule!9882 (_1!24183 (v!39619 lt!1422197))) rules!2999))))

(declare-fun lt!1422191 () Unit!61996)

(declare-fun token!484 () Token!12810)

(declare-fun lemmaCharactersSize!1395 (Token!12810) Unit!61996)

(assert (=> b!4014198 (= lt!1422191 (lemmaCharactersSize!1395 token!484))))

(declare-fun lt!1422208 () Unit!61996)

(assert (=> b!4014198 (= lt!1422208 (lemmaCharactersSize!1395 (_1!24183 (v!39619 lt!1422197))))))

(declare-fun b!4014199 () Bool)

(declare-fun e!2489563 () Bool)

(declare-fun tp!1220770 () Bool)

(assert (=> b!4014199 (= e!2489563 (and tp_is_empty!20453 tp!1220770))))

(declare-fun b!4014200 () Bool)

(declare-fun res!1632033 () Bool)

(assert (=> b!4014200 (=> (not res!1632033) (not e!2489566))))

(assert (=> b!4014200 (= res!1632033 (isPrefix!3923 newSuffix!27 suffix!1299))))

(declare-fun b!4014201 () Bool)

(declare-fun e!2489578 () Bool)

(assert (=> b!4014201 (= e!2489570 e!2489578)))

(declare-fun res!1632029 () Bool)

(assert (=> b!4014201 (=> res!1632029 e!2489578)))

(declare-fun lt!1422203 () List!43076)

(declare-fun lt!1422215 () List!43076)

(assert (=> b!4014201 (= res!1632029 (or (not (= lt!1422205 lt!1422203)) (not (= lt!1422205 lt!1422215))))))

(assert (=> b!4014201 (= lt!1422203 lt!1422215)))

(declare-fun lt!1422210 () List!43076)

(assert (=> b!4014201 (= lt!1422215 (++!11238 lt!1422193 lt!1422210))))

(assert (=> b!4014201 (= lt!1422203 (++!11238 lt!1422181 suffix!1299))))

(assert (=> b!4014201 (= lt!1422210 (++!11238 lt!1422202 suffix!1299))))

(declare-fun lt!1422209 () Unit!61996)

(assert (=> b!4014201 (= lt!1422209 (lemmaConcatAssociativity!2548 lt!1422193 lt!1422202 suffix!1299))))

(declare-fun b!4014202 () Bool)

(assert (=> b!4014202 (= e!2489560 (= (++!11238 lt!1422219 (getSuffix!2348 lt!1422196 lt!1422219)) lt!1422196))))

(declare-fun b!4014203 () Bool)

(declare-fun e!2489569 () Bool)

(declare-fun e!2489564 () Bool)

(assert (=> b!4014203 (= e!2489569 e!2489564)))

(declare-fun res!1632036 () Bool)

(assert (=> b!4014203 (=> res!1632036 e!2489564)))

(declare-fun lt!1422204 () List!43076)

(assert (=> b!4014203 (= res!1632036 (not (= lt!1422204 lt!1422205)))))

(declare-fun lt!1422218 () List!43076)

(assert (=> b!4014203 (= lt!1422204 (++!11238 lt!1422193 lt!1422218))))

(assert (=> b!4014203 (= lt!1422218 (getSuffix!2348 lt!1422205 lt!1422193))))

(declare-fun e!2489556 () Bool)

(assert (=> b!4014203 e!2489556))

(declare-fun res!1632032 () Bool)

(assert (=> b!4014203 (=> (not res!1632032) (not e!2489556))))

(assert (=> b!4014203 (= res!1632032 (isPrefix!3923 lt!1422205 lt!1422205))))

(declare-fun lt!1422222 () Unit!61996)

(declare-fun lemmaIsPrefixRefl!2499 (List!43076 List!43076) Unit!61996)

(assert (=> b!4014203 (= lt!1422222 (lemmaIsPrefixRefl!2499 lt!1422205 lt!1422205))))

(declare-fun b!4014204 () Bool)

(declare-fun e!2489562 () Bool)

(assert (=> b!4014204 (= e!2489578 e!2489562)))

(declare-fun res!1632026 () Bool)

(assert (=> b!4014204 (=> res!1632026 e!2489562)))

(declare-fun lt!1422180 () Option!9250)

(declare-fun lt!1422213 () Option!9250)

(assert (=> b!4014204 (= res!1632026 (not (= lt!1422180 lt!1422213)))))

(declare-fun lt!1422184 () Token!12810)

(declare-fun suffixResult!105 () List!43076)

(assert (=> b!4014204 (= lt!1422180 (Some!9249 (tuple2!42099 lt!1422184 suffixResult!105)))))

(assert (=> b!4014204 (= lt!1422180 (maxPrefixOneRule!2743 thiss!21717 (rule!9882 token!484) lt!1422205))))

(declare-fun lt!1422223 () Int)

(declare-fun lt!1422182 () TokenValue!7066)

(assert (=> b!4014204 (= lt!1422184 (Token!12811 lt!1422182 (rule!9882 token!484) lt!1422223 lt!1422193))))

(assert (=> b!4014204 (= lt!1422182 (apply!10033 (transformation!6836 (rule!9882 token!484)) (seqFromList!5061 lt!1422193)))))

(declare-fun lt!1422179 () Unit!61996)

(assert (=> b!4014204 (= lt!1422179 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1561 thiss!21717 rules!2999 lt!1422193 lt!1422205 suffixResult!105 (rule!9882 token!484)))))

(assert (=> b!4014204 (= lt!1422210 suffixResult!105)))

(declare-fun lt!1422229 () Unit!61996)

(declare-fun lemmaSamePrefixThenSameSuffix!2094 (List!43076 List!43076 List!43076 List!43076 List!43076) Unit!61996)

(assert (=> b!4014204 (= lt!1422229 (lemmaSamePrefixThenSameSuffix!2094 lt!1422193 lt!1422210 lt!1422193 suffixResult!105 lt!1422205))))

(assert (=> b!4014204 (isPrefix!3923 lt!1422193 lt!1422215)))

(declare-fun lt!1422198 () Unit!61996)

(assert (=> b!4014204 (= lt!1422198 (lemmaConcatTwoListThenFirstIsPrefix!2764 lt!1422193 lt!1422210))))

(declare-fun tp!1220776 () Bool)

(declare-fun e!2489568 () Bool)

(declare-fun e!2489576 () Bool)

(declare-fun b!4014205 () Bool)

(declare-fun inv!21 (TokenValue!7066) Bool)

(assert (=> b!4014205 (= e!2489568 (and (inv!21 (value!215460 token!484)) e!2489576 tp!1220776))))

(declare-fun b!4014206 () Bool)

(assert (=> b!4014206 (= e!2489564 e!2489558)))

(declare-fun res!1632034 () Bool)

(assert (=> b!4014206 (=> res!1632034 e!2489558)))

(get-info :version)

(assert (=> b!4014206 (= res!1632034 (not ((_ is Some!9249) lt!1422197)))))

(declare-fun maxPrefix!3723 (LexerInterface!6425 List!43078 List!43076) Option!9250)

(assert (=> b!4014206 (= lt!1422197 (maxPrefix!3723 thiss!21717 rules!2999 lt!1422196))))

(declare-fun lt!1422226 () tuple2!42098)

(assert (=> b!4014206 (and (= suffixResult!105 lt!1422218) (= lt!1422226 (tuple2!42099 lt!1422184 lt!1422218)))))

(declare-fun lt!1422201 () Unit!61996)

(assert (=> b!4014206 (= lt!1422201 (lemmaSamePrefixThenSameSuffix!2094 lt!1422193 suffixResult!105 lt!1422193 lt!1422218 lt!1422205))))

(assert (=> b!4014206 (isPrefix!3923 lt!1422193 lt!1422204)))

(declare-fun lt!1422190 () Unit!61996)

(assert (=> b!4014206 (= lt!1422190 (lemmaConcatTwoListThenFirstIsPrefix!2764 lt!1422193 lt!1422218))))

(declare-fun b!4014207 () Bool)

(declare-fun e!2489567 () Bool)

(declare-fun e!2489561 () Bool)

(assert (=> b!4014207 (= e!2489567 (not e!2489561))))

(declare-fun res!1632035 () Bool)

(assert (=> b!4014207 (=> res!1632035 e!2489561)))

(declare-fun lt!1422199 () List!43076)

(assert (=> b!4014207 (= res!1632035 (not (= lt!1422199 lt!1422205)))))

(assert (=> b!4014207 (= lt!1422199 (++!11238 lt!1422193 suffixResult!105))))

(declare-fun lt!1422212 () Unit!61996)

(assert (=> b!4014207 (= lt!1422212 (lemmaInv!1051 (transformation!6836 (rule!9882 token!484))))))

(assert (=> b!4014207 (ruleValid!2768 thiss!21717 (rule!9882 token!484))))

(declare-fun lt!1422183 () Unit!61996)

(assert (=> b!4014207 (= lt!1422183 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1842 thiss!21717 (rule!9882 token!484) rules!2999))))

(assert (=> b!4014208 (= e!2489583 (and tp!1220769 tp!1220774))))

(declare-fun e!2489557 () Bool)

(assert (=> b!4014209 (= e!2489557 (and tp!1220768 tp!1220764))))

(declare-fun b!4014210 () Bool)

(declare-fun e!2489579 () Bool)

(assert (=> b!4014210 (= e!2489566 e!2489579)))

(declare-fun res!1632042 () Bool)

(assert (=> b!4014210 (=> (not res!1632042) (not e!2489579))))

(declare-fun lt!1422216 () Int)

(assert (=> b!4014210 (= res!1632042 (>= lt!1422216 lt!1422223))))

(assert (=> b!4014210 (= lt!1422223 (size!32117 lt!1422193))))

(assert (=> b!4014210 (= lt!1422216 (size!32117 prefix!494))))

(assert (=> b!4014210 (= lt!1422193 (list!15966 (charsOf!4652 token!484)))))

(declare-fun b!4014211 () Bool)

(declare-fun e!2489584 () Bool)

(assert (=> b!4014211 (= e!2489584 e!2489567)))

(declare-fun res!1632030 () Bool)

(assert (=> b!4014211 (=> (not res!1632030) (not e!2489567))))

(assert (=> b!4014211 (= res!1632030 (= (maxPrefix!3723 thiss!21717 rules!2999 lt!1422205) lt!1422213))))

(assert (=> b!4014211 (= lt!1422213 (Some!9249 lt!1422226))))

(assert (=> b!4014211 (= lt!1422226 (tuple2!42099 token!484 suffixResult!105))))

(assert (=> b!4014211 (= lt!1422205 (++!11238 prefix!494 suffix!1299))))

(declare-fun b!4014212 () Bool)

(declare-fun e!2489586 () Bool)

(declare-fun tp!1220765 () Bool)

(assert (=> b!4014212 (= e!2489586 (and tp_is_empty!20453 tp!1220765))))

(declare-fun b!4014213 () Bool)

(declare-fun res!1632043 () Bool)

(assert (=> b!4014213 (=> res!1632043 e!2489560)))

(assert (=> b!4014213 (= res!1632043 (not (= lt!1422207 lt!1422196)))))

(declare-fun b!4014214 () Bool)

(assert (=> b!4014214 (= e!2489556 (and (= (size!32118 token!484) lt!1422223) (= (originalCharacters!7436 token!484) lt!1422193)))))

(declare-fun b!4014215 () Bool)

(declare-fun res!1632041 () Bool)

(assert (=> b!4014215 (=> (not res!1632041) (not e!2489556))))

(assert (=> b!4014215 (= res!1632041 (= (value!215460 token!484) lt!1422182))))

(declare-fun b!4014216 () Bool)

(assert (=> b!4014216 (= e!2489579 e!2489584)))

(declare-fun res!1632040 () Bool)

(assert (=> b!4014216 (=> (not res!1632040) (not e!2489584))))

(declare-fun lt!1422211 () List!43076)

(assert (=> b!4014216 (= res!1632040 (= lt!1422211 lt!1422196))))

(assert (=> b!4014216 (= lt!1422196 (++!11238 prefix!494 newSuffix!27))))

(assert (=> b!4014216 (= lt!1422211 (++!11238 lt!1422193 newSuffixResult!27))))

(declare-fun res!1632031 () Bool)

(assert (=> start!378056 (=> (not res!1632031) (not e!2489566))))

(assert (=> start!378056 (= res!1632031 ((_ is Lexer!6423) thiss!21717))))

(assert (=> start!378056 e!2489566))

(declare-fun e!2489571 () Bool)

(assert (=> start!378056 e!2489571))

(declare-fun inv!57377 (Token!12810) Bool)

(assert (=> start!378056 (and (inv!57377 token!484) e!2489568)))

(declare-fun e!2489580 () Bool)

(assert (=> start!378056 e!2489580))

(assert (=> start!378056 e!2489586))

(assert (=> start!378056 e!2489563))

(assert (=> start!378056 true))

(declare-fun e!2489572 () Bool)

(assert (=> start!378056 e!2489572))

(assert (=> start!378056 e!2489581))

(declare-fun b!4014217 () Bool)

(assert (=> b!4014217 (= e!2489562 e!2489569)))

(declare-fun res!1632025 () Bool)

(assert (=> b!4014217 (=> res!1632025 e!2489569)))

(declare-fun matchR!5702 (Regex!11741 List!43076) Bool)

(assert (=> b!4014217 (= res!1632025 (not (matchR!5702 (regex!6836 (rule!9882 token!484)) lt!1422193)))))

(assert (=> b!4014217 (isPrefix!3923 lt!1422193 lt!1422196)))

(declare-fun lt!1422195 () Unit!61996)

(assert (=> b!4014217 (= lt!1422195 (lemmaPrefixStaysPrefixWhenAddingToSuffix!736 lt!1422193 prefix!494 newSuffix!27))))

(declare-fun lt!1422220 () Unit!61996)

(assert (=> b!4014217 (= lt!1422220 (lemmaPrefixStaysPrefixWhenAddingToSuffix!736 lt!1422193 prefix!494 suffix!1299))))

(declare-fun b!4014218 () Bool)

(declare-fun tp!1220766 () Bool)

(assert (=> b!4014218 (= e!2489576 (and tp!1220766 (inv!57373 (tag!7696 (rule!9882 token!484))) (inv!57376 (transformation!6836 (rule!9882 token!484))) e!2489557))))

(declare-fun b!4014219 () Bool)

(declare-fun res!1632024 () Bool)

(assert (=> b!4014219 (=> (not res!1632024) (not e!2489566))))

(declare-fun rulesInvariant!5768 (LexerInterface!6425 List!43078) Bool)

(assert (=> b!4014219 (= res!1632024 (rulesInvariant!5768 thiss!21717 rules!2999))))

(declare-fun b!4014220 () Bool)

(declare-fun tp!1220772 () Bool)

(assert (=> b!4014220 (= e!2489572 (and e!2489574 tp!1220772))))

(declare-fun b!4014221 () Bool)

(declare-fun res!1632022 () Bool)

(assert (=> b!4014221 (=> (not res!1632022) (not e!2489556))))

(assert (=> b!4014221 (= res!1632022 (= (size!32118 token!484) (size!32117 (originalCharacters!7436 token!484))))))

(declare-fun b!4014222 () Bool)

(declare-fun tp!1220767 () Bool)

(assert (=> b!4014222 (= e!2489571 (and tp_is_empty!20453 tp!1220767))))

(declare-fun b!4014223 () Bool)

(declare-fun tp!1220775 () Bool)

(assert (=> b!4014223 (= e!2489580 (and tp_is_empty!20453 tp!1220775))))

(declare-fun b!4014224 () Bool)

(assert (=> b!4014224 (= e!2489561 e!2489585)))

(declare-fun res!1632027 () Bool)

(assert (=> b!4014224 (=> res!1632027 e!2489585)))

(assert (=> b!4014224 (= res!1632027 (not (isPrefix!3923 lt!1422193 lt!1422205)))))

(assert (=> b!4014224 (isPrefix!3923 prefix!494 lt!1422205)))

(declare-fun lt!1422185 () Unit!61996)

(assert (=> b!4014224 (= lt!1422185 (lemmaConcatTwoListThenFirstIsPrefix!2764 prefix!494 suffix!1299))))

(assert (=> b!4014224 (isPrefix!3923 lt!1422193 lt!1422199)))

(declare-fun lt!1422194 () Unit!61996)

(assert (=> b!4014224 (= lt!1422194 (lemmaConcatTwoListThenFirstIsPrefix!2764 lt!1422193 suffixResult!105))))

(assert (= (and start!378056 res!1632031) b!4014196))

(assert (= (and b!4014196 res!1632037) b!4014219))

(assert (= (and b!4014219 res!1632024) b!4014191))

(assert (= (and b!4014191 res!1632023) b!4014200))

(assert (= (and b!4014200 res!1632033) b!4014210))

(assert (= (and b!4014210 res!1632042) b!4014216))

(assert (= (and b!4014216 res!1632040) b!4014211))

(assert (= (and b!4014211 res!1632030) b!4014207))

(assert (= (and b!4014207 (not res!1632035)) b!4014224))

(assert (= (and b!4014224 (not res!1632027)) b!4014195))

(assert (= (and b!4014195 (not res!1632038)) b!4014201))

(assert (= (and b!4014201 (not res!1632029)) b!4014204))

(assert (= (and b!4014204 (not res!1632026)) b!4014217))

(assert (= (and b!4014217 (not res!1632025)) b!4014203))

(assert (= (and b!4014203 res!1632032) b!4014215))

(assert (= (and b!4014215 res!1632041) b!4014221))

(assert (= (and b!4014221 res!1632022) b!4014214))

(assert (= (and b!4014203 (not res!1632036)) b!4014206))

(assert (= (and b!4014206 (not res!1632034)) b!4014198))

(assert (= (and b!4014198 (not res!1632039)) b!4014192))

(assert (= (and b!4014192 (not res!1632045)) b!4014194))

(assert (= (and b!4014194 (not res!1632044)) b!4014193))

(assert (= (and b!4014193 (not res!1632028)) b!4014213))

(assert (= (and b!4014213 (not res!1632043)) b!4014202))

(assert (= (and start!378056 ((_ is Cons!42952) prefix!494)) b!4014222))

(assert (= b!4014218 b!4014209))

(assert (= b!4014205 b!4014218))

(assert (= start!378056 b!4014205))

(assert (= (and start!378056 ((_ is Cons!42952) suffixResult!105)) b!4014223))

(assert (= (and start!378056 ((_ is Cons!42952) suffix!1299)) b!4014212))

(assert (= (and start!378056 ((_ is Cons!42952) newSuffix!27)) b!4014199))

(assert (= b!4014190 b!4014208))

(assert (= b!4014220 b!4014190))

(assert (= (and start!378056 ((_ is Cons!42954) rules!2999)) b!4014220))

(assert (= (and start!378056 ((_ is Cons!42952) newSuffixResult!27)) b!4014197))

(declare-fun m!4601165 () Bool)

(assert (=> b!4014193 m!4601165))

(declare-fun m!4601167 () Bool)

(assert (=> b!4014193 m!4601167))

(declare-fun m!4601169 () Bool)

(assert (=> b!4014193 m!4601169))

(declare-fun m!4601171 () Bool)

(assert (=> b!4014202 m!4601171))

(assert (=> b!4014202 m!4601171))

(declare-fun m!4601173 () Bool)

(assert (=> b!4014202 m!4601173))

(declare-fun m!4601175 () Bool)

(assert (=> b!4014196 m!4601175))

(declare-fun m!4601177 () Bool)

(assert (=> b!4014200 m!4601177))

(declare-fun m!4601179 () Bool)

(assert (=> b!4014216 m!4601179))

(declare-fun m!4601181 () Bool)

(assert (=> b!4014216 m!4601181))

(declare-fun m!4601183 () Bool)

(assert (=> start!378056 m!4601183))

(declare-fun m!4601185 () Bool)

(assert (=> b!4014217 m!4601185))

(declare-fun m!4601187 () Bool)

(assert (=> b!4014217 m!4601187))

(declare-fun m!4601189 () Bool)

(assert (=> b!4014217 m!4601189))

(declare-fun m!4601191 () Bool)

(assert (=> b!4014217 m!4601191))

(declare-fun m!4601193 () Bool)

(assert (=> b!4014206 m!4601193))

(declare-fun m!4601195 () Bool)

(assert (=> b!4014206 m!4601195))

(declare-fun m!4601197 () Bool)

(assert (=> b!4014206 m!4601197))

(declare-fun m!4601199 () Bool)

(assert (=> b!4014206 m!4601199))

(declare-fun m!4601201 () Bool)

(assert (=> b!4014204 m!4601201))

(declare-fun m!4601203 () Bool)

(assert (=> b!4014204 m!4601203))

(declare-fun m!4601205 () Bool)

(assert (=> b!4014204 m!4601205))

(declare-fun m!4601207 () Bool)

(assert (=> b!4014204 m!4601207))

(declare-fun m!4601209 () Bool)

(assert (=> b!4014204 m!4601209))

(assert (=> b!4014204 m!4601201))

(declare-fun m!4601211 () Bool)

(assert (=> b!4014204 m!4601211))

(declare-fun m!4601213 () Bool)

(assert (=> b!4014204 m!4601213))

(declare-fun m!4601215 () Bool)

(assert (=> b!4014198 m!4601215))

(declare-fun m!4601217 () Bool)

(assert (=> b!4014198 m!4601217))

(declare-fun m!4601219 () Bool)

(assert (=> b!4014198 m!4601219))

(declare-fun m!4601221 () Bool)

(assert (=> b!4014198 m!4601221))

(declare-fun m!4601223 () Bool)

(assert (=> b!4014198 m!4601223))

(declare-fun m!4601225 () Bool)

(assert (=> b!4014198 m!4601225))

(declare-fun m!4601227 () Bool)

(assert (=> b!4014198 m!4601227))

(declare-fun m!4601229 () Bool)

(assert (=> b!4014198 m!4601229))

(declare-fun m!4601231 () Bool)

(assert (=> b!4014198 m!4601231))

(declare-fun m!4601233 () Bool)

(assert (=> b!4014198 m!4601233))

(assert (=> b!4014198 m!4601225))

(declare-fun m!4601235 () Bool)

(assert (=> b!4014198 m!4601235))

(declare-fun m!4601237 () Bool)

(assert (=> b!4014198 m!4601237))

(declare-fun m!4601239 () Bool)

(assert (=> b!4014198 m!4601239))

(declare-fun m!4601241 () Bool)

(assert (=> b!4014198 m!4601241))

(declare-fun m!4601243 () Bool)

(assert (=> b!4014198 m!4601243))

(declare-fun m!4601245 () Bool)

(assert (=> b!4014198 m!4601245))

(declare-fun m!4601247 () Bool)

(assert (=> b!4014198 m!4601247))

(assert (=> b!4014198 m!4601245))

(declare-fun m!4601249 () Bool)

(assert (=> b!4014198 m!4601249))

(assert (=> b!4014198 m!4601221))

(declare-fun m!4601251 () Bool)

(assert (=> b!4014205 m!4601251))

(declare-fun m!4601253 () Bool)

(assert (=> b!4014192 m!4601253))

(declare-fun m!4601255 () Bool)

(assert (=> b!4014192 m!4601255))

(declare-fun m!4601257 () Bool)

(assert (=> b!4014211 m!4601257))

(declare-fun m!4601259 () Bool)

(assert (=> b!4014211 m!4601259))

(declare-fun m!4601261 () Bool)

(assert (=> b!4014224 m!4601261))

(declare-fun m!4601263 () Bool)

(assert (=> b!4014224 m!4601263))

(declare-fun m!4601265 () Bool)

(assert (=> b!4014224 m!4601265))

(declare-fun m!4601267 () Bool)

(assert (=> b!4014224 m!4601267))

(declare-fun m!4601269 () Bool)

(assert (=> b!4014224 m!4601269))

(declare-fun m!4601271 () Bool)

(assert (=> b!4014218 m!4601271))

(declare-fun m!4601273 () Bool)

(assert (=> b!4014218 m!4601273))

(declare-fun m!4601275 () Bool)

(assert (=> b!4014221 m!4601275))

(declare-fun m!4601277 () Bool)

(assert (=> b!4014191 m!4601277))

(declare-fun m!4601279 () Bool)

(assert (=> b!4014191 m!4601279))

(declare-fun m!4601281 () Bool)

(assert (=> b!4014203 m!4601281))

(declare-fun m!4601283 () Bool)

(assert (=> b!4014203 m!4601283))

(declare-fun m!4601285 () Bool)

(assert (=> b!4014203 m!4601285))

(declare-fun m!4601287 () Bool)

(assert (=> b!4014203 m!4601287))

(declare-fun m!4601289 () Bool)

(assert (=> b!4014207 m!4601289))

(declare-fun m!4601291 () Bool)

(assert (=> b!4014207 m!4601291))

(declare-fun m!4601293 () Bool)

(assert (=> b!4014207 m!4601293))

(declare-fun m!4601295 () Bool)

(assert (=> b!4014207 m!4601295))

(declare-fun m!4601297 () Bool)

(assert (=> b!4014194 m!4601297))

(declare-fun m!4601299 () Bool)

(assert (=> b!4014194 m!4601299))

(declare-fun m!4601301 () Bool)

(assert (=> b!4014194 m!4601301))

(declare-fun m!4601303 () Bool)

(assert (=> b!4014190 m!4601303))

(declare-fun m!4601305 () Bool)

(assert (=> b!4014190 m!4601305))

(declare-fun m!4601307 () Bool)

(assert (=> b!4014195 m!4601307))

(declare-fun m!4601309 () Bool)

(assert (=> b!4014195 m!4601309))

(declare-fun m!4601311 () Bool)

(assert (=> b!4014195 m!4601311))

(declare-fun m!4601313 () Bool)

(assert (=> b!4014195 m!4601313))

(declare-fun m!4601315 () Bool)

(assert (=> b!4014219 m!4601315))

(declare-fun m!4601317 () Bool)

(assert (=> b!4014201 m!4601317))

(declare-fun m!4601319 () Bool)

(assert (=> b!4014201 m!4601319))

(declare-fun m!4601321 () Bool)

(assert (=> b!4014201 m!4601321))

(declare-fun m!4601323 () Bool)

(assert (=> b!4014201 m!4601323))

(declare-fun m!4601325 () Bool)

(assert (=> b!4014210 m!4601325))

(declare-fun m!4601327 () Bool)

(assert (=> b!4014210 m!4601327))

(declare-fun m!4601329 () Bool)

(assert (=> b!4014210 m!4601329))

(assert (=> b!4014210 m!4601329))

(declare-fun m!4601331 () Bool)

(assert (=> b!4014210 m!4601331))

(check-sat (not b_next!112347) (not b!4014207) (not b_next!112351) (not b!4014206) (not b!4014203) (not b!4014194) b_and!308425 (not b!4014190) (not b_next!112349) b_and!308423 (not b!4014204) b_and!308429 (not b!4014191) (not b!4014222) (not b!4014200) (not b!4014212) (not b!4014195) (not b!4014192) (not b!4014193) (not b!4014224) (not start!378056) (not b_next!112345) (not b!4014198) b_and!308427 (not b!4014211) (not b!4014202) (not b!4014220) (not b!4014199) (not b!4014197) (not b!4014223) (not b!4014216) (not b!4014196) (not b!4014219) (not b!4014221) tp_is_empty!20453 (not b!4014217) (not b!4014205) (not b!4014210) (not b!4014218) (not b!4014201))
(check-sat (not b_next!112347) b_and!308425 b_and!308429 (not b_next!112351) (not b_next!112349) b_and!308423 (not b_next!112345) b_and!308427)
(get-model)

(declare-fun b!4014254 () Bool)

(declare-fun res!1632077 () Bool)

(declare-fun e!2489607 () Bool)

(assert (=> b!4014254 (=> (not res!1632077) (not e!2489607))))

(declare-fun lt!1422239 () List!43076)

(assert (=> b!4014254 (= res!1632077 (= (size!32117 lt!1422239) (+ (size!32117 lt!1422193) (size!32117 lt!1422210))))))

(declare-fun b!4014252 () Bool)

(declare-fun e!2489606 () List!43076)

(assert (=> b!4014252 (= e!2489606 lt!1422210)))

(declare-fun b!4014253 () Bool)

(assert (=> b!4014253 (= e!2489606 (Cons!42952 (h!48372 lt!1422193) (++!11238 (t!333265 lt!1422193) lt!1422210)))))

(declare-fun d!1188733 () Bool)

(assert (=> d!1188733 e!2489607))

(declare-fun res!1632078 () Bool)

(assert (=> d!1188733 (=> (not res!1632078) (not e!2489607))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6515 (List!43076) (InoxSet C!23668))

(assert (=> d!1188733 (= res!1632078 (= (content!6515 lt!1422239) ((_ map or) (content!6515 lt!1422193) (content!6515 lt!1422210))))))

(assert (=> d!1188733 (= lt!1422239 e!2489606)))

(declare-fun c!694064 () Bool)

(assert (=> d!1188733 (= c!694064 ((_ is Nil!42952) lt!1422193))))

(assert (=> d!1188733 (= (++!11238 lt!1422193 lt!1422210) lt!1422239)))

(declare-fun b!4014255 () Bool)

(assert (=> b!4014255 (= e!2489607 (or (not (= lt!1422210 Nil!42952)) (= lt!1422239 lt!1422193)))))

(assert (= (and d!1188733 c!694064) b!4014252))

(assert (= (and d!1188733 (not c!694064)) b!4014253))

(assert (= (and d!1188733 res!1632078) b!4014254))

(assert (= (and b!4014254 res!1632077) b!4014255))

(declare-fun m!4601363 () Bool)

(assert (=> b!4014254 m!4601363))

(assert (=> b!4014254 m!4601325))

(declare-fun m!4601365 () Bool)

(assert (=> b!4014254 m!4601365))

(declare-fun m!4601367 () Bool)

(assert (=> b!4014253 m!4601367))

(declare-fun m!4601369 () Bool)

(assert (=> d!1188733 m!4601369))

(declare-fun m!4601371 () Bool)

(assert (=> d!1188733 m!4601371))

(declare-fun m!4601373 () Bool)

(assert (=> d!1188733 m!4601373))

(assert (=> b!4014201 d!1188733))

(declare-fun b!4014258 () Bool)

(declare-fun res!1632079 () Bool)

(declare-fun e!2489609 () Bool)

(assert (=> b!4014258 (=> (not res!1632079) (not e!2489609))))

(declare-fun lt!1422240 () List!43076)

(assert (=> b!4014258 (= res!1632079 (= (size!32117 lt!1422240) (+ (size!32117 lt!1422181) (size!32117 suffix!1299))))))

(declare-fun b!4014256 () Bool)

(declare-fun e!2489608 () List!43076)

(assert (=> b!4014256 (= e!2489608 suffix!1299)))

(declare-fun b!4014257 () Bool)

(assert (=> b!4014257 (= e!2489608 (Cons!42952 (h!48372 lt!1422181) (++!11238 (t!333265 lt!1422181) suffix!1299)))))

(declare-fun d!1188743 () Bool)

(assert (=> d!1188743 e!2489609))

(declare-fun res!1632080 () Bool)

(assert (=> d!1188743 (=> (not res!1632080) (not e!2489609))))

(assert (=> d!1188743 (= res!1632080 (= (content!6515 lt!1422240) ((_ map or) (content!6515 lt!1422181) (content!6515 suffix!1299))))))

(assert (=> d!1188743 (= lt!1422240 e!2489608)))

(declare-fun c!694065 () Bool)

(assert (=> d!1188743 (= c!694065 ((_ is Nil!42952) lt!1422181))))

(assert (=> d!1188743 (= (++!11238 lt!1422181 suffix!1299) lt!1422240)))

(declare-fun b!4014259 () Bool)

(assert (=> b!4014259 (= e!2489609 (or (not (= suffix!1299 Nil!42952)) (= lt!1422240 lt!1422181)))))

(assert (= (and d!1188743 c!694065) b!4014256))

(assert (= (and d!1188743 (not c!694065)) b!4014257))

(assert (= (and d!1188743 res!1632080) b!4014258))

(assert (= (and b!4014258 res!1632079) b!4014259))

(declare-fun m!4601375 () Bool)

(assert (=> b!4014258 m!4601375))

(declare-fun m!4601377 () Bool)

(assert (=> b!4014258 m!4601377))

(assert (=> b!4014258 m!4601277))

(declare-fun m!4601379 () Bool)

(assert (=> b!4014257 m!4601379))

(declare-fun m!4601381 () Bool)

(assert (=> d!1188743 m!4601381))

(declare-fun m!4601383 () Bool)

(assert (=> d!1188743 m!4601383))

(declare-fun m!4601385 () Bool)

(assert (=> d!1188743 m!4601385))

(assert (=> b!4014201 d!1188743))

(declare-fun b!4014262 () Bool)

(declare-fun res!1632081 () Bool)

(declare-fun e!2489611 () Bool)

(assert (=> b!4014262 (=> (not res!1632081) (not e!2489611))))

(declare-fun lt!1422241 () List!43076)

(assert (=> b!4014262 (= res!1632081 (= (size!32117 lt!1422241) (+ (size!32117 lt!1422202) (size!32117 suffix!1299))))))

(declare-fun b!4014260 () Bool)

(declare-fun e!2489610 () List!43076)

(assert (=> b!4014260 (= e!2489610 suffix!1299)))

(declare-fun b!4014261 () Bool)

(assert (=> b!4014261 (= e!2489610 (Cons!42952 (h!48372 lt!1422202) (++!11238 (t!333265 lt!1422202) suffix!1299)))))

(declare-fun d!1188745 () Bool)

(assert (=> d!1188745 e!2489611))

(declare-fun res!1632082 () Bool)

(assert (=> d!1188745 (=> (not res!1632082) (not e!2489611))))

(assert (=> d!1188745 (= res!1632082 (= (content!6515 lt!1422241) ((_ map or) (content!6515 lt!1422202) (content!6515 suffix!1299))))))

(assert (=> d!1188745 (= lt!1422241 e!2489610)))

(declare-fun c!694066 () Bool)

(assert (=> d!1188745 (= c!694066 ((_ is Nil!42952) lt!1422202))))

(assert (=> d!1188745 (= (++!11238 lt!1422202 suffix!1299) lt!1422241)))

(declare-fun b!4014263 () Bool)

(assert (=> b!4014263 (= e!2489611 (or (not (= suffix!1299 Nil!42952)) (= lt!1422241 lt!1422202)))))

(assert (= (and d!1188745 c!694066) b!4014260))

(assert (= (and d!1188745 (not c!694066)) b!4014261))

(assert (= (and d!1188745 res!1632082) b!4014262))

(assert (= (and b!4014262 res!1632081) b!4014263))

(declare-fun m!4601387 () Bool)

(assert (=> b!4014262 m!4601387))

(declare-fun m!4601389 () Bool)

(assert (=> b!4014262 m!4601389))

(assert (=> b!4014262 m!4601277))

(declare-fun m!4601391 () Bool)

(assert (=> b!4014261 m!4601391))

(declare-fun m!4601393 () Bool)

(assert (=> d!1188745 m!4601393))

(declare-fun m!4601395 () Bool)

(assert (=> d!1188745 m!4601395))

(assert (=> d!1188745 m!4601385))

(assert (=> b!4014201 d!1188745))

(declare-fun d!1188747 () Bool)

(assert (=> d!1188747 (= (++!11238 (++!11238 lt!1422193 lt!1422202) suffix!1299) (++!11238 lt!1422193 (++!11238 lt!1422202 suffix!1299)))))

(declare-fun lt!1422244 () Unit!61996)

(declare-fun choose!24256 (List!43076 List!43076 List!43076) Unit!61996)

(assert (=> d!1188747 (= lt!1422244 (choose!24256 lt!1422193 lt!1422202 suffix!1299))))

(assert (=> d!1188747 (= (lemmaConcatAssociativity!2548 lt!1422193 lt!1422202 suffix!1299) lt!1422244)))

(declare-fun bs!589546 () Bool)

(assert (= bs!589546 d!1188747))

(assert (=> bs!589546 m!4601307))

(declare-fun m!4601397 () Bool)

(assert (=> bs!589546 m!4601397))

(declare-fun m!4601399 () Bool)

(assert (=> bs!589546 m!4601399))

(assert (=> bs!589546 m!4601321))

(assert (=> bs!589546 m!4601307))

(assert (=> bs!589546 m!4601321))

(declare-fun m!4601401 () Bool)

(assert (=> bs!589546 m!4601401))

(assert (=> b!4014201 d!1188747))

(declare-fun b!4014277 () Bool)

(declare-fun res!1632094 () Bool)

(declare-fun e!2489622 () Bool)

(assert (=> b!4014277 (=> (not res!1632094) (not e!2489622))))

(declare-fun head!8521 (List!43076) C!23668)

(assert (=> b!4014277 (= res!1632094 (= (head!8521 newSuffix!27) (head!8521 suffix!1299)))))

(declare-fun b!4014276 () Bool)

(declare-fun e!2489620 () Bool)

(assert (=> b!4014276 (= e!2489620 e!2489622)))

(declare-fun res!1632093 () Bool)

(assert (=> b!4014276 (=> (not res!1632093) (not e!2489622))))

(assert (=> b!4014276 (= res!1632093 (not ((_ is Nil!42952) suffix!1299)))))

(declare-fun b!4014279 () Bool)

(declare-fun e!2489621 () Bool)

(assert (=> b!4014279 (= e!2489621 (>= (size!32117 suffix!1299) (size!32117 newSuffix!27)))))

(declare-fun d!1188749 () Bool)

(assert (=> d!1188749 e!2489621))

(declare-fun res!1632091 () Bool)

(assert (=> d!1188749 (=> res!1632091 e!2489621)))

(declare-fun lt!1422257 () Bool)

(assert (=> d!1188749 (= res!1632091 (not lt!1422257))))

(assert (=> d!1188749 (= lt!1422257 e!2489620)))

(declare-fun res!1632092 () Bool)

(assert (=> d!1188749 (=> res!1632092 e!2489620)))

(assert (=> d!1188749 (= res!1632092 ((_ is Nil!42952) newSuffix!27))))

(assert (=> d!1188749 (= (isPrefix!3923 newSuffix!27 suffix!1299) lt!1422257)))

(declare-fun b!4014278 () Bool)

(declare-fun tail!6253 (List!43076) List!43076)

(assert (=> b!4014278 (= e!2489622 (isPrefix!3923 (tail!6253 newSuffix!27) (tail!6253 suffix!1299)))))

(assert (= (and d!1188749 (not res!1632092)) b!4014276))

(assert (= (and b!4014276 res!1632093) b!4014277))

(assert (= (and b!4014277 res!1632094) b!4014278))

(assert (= (and d!1188749 (not res!1632091)) b!4014279))

(declare-fun m!4601403 () Bool)

(assert (=> b!4014277 m!4601403))

(declare-fun m!4601405 () Bool)

(assert (=> b!4014277 m!4601405))

(assert (=> b!4014279 m!4601277))

(assert (=> b!4014279 m!4601279))

(declare-fun m!4601407 () Bool)

(assert (=> b!4014278 m!4601407))

(declare-fun m!4601409 () Bool)

(assert (=> b!4014278 m!4601409))

(assert (=> b!4014278 m!4601407))

(assert (=> b!4014278 m!4601409))

(declare-fun m!4601411 () Bool)

(assert (=> b!4014278 m!4601411))

(assert (=> b!4014200 d!1188749))

(declare-fun d!1188751 () Bool)

(declare-fun lt!1422260 () Int)

(assert (=> d!1188751 (>= lt!1422260 0)))

(declare-fun e!2489631 () Int)

(assert (=> d!1188751 (= lt!1422260 e!2489631)))

(declare-fun c!694071 () Bool)

(assert (=> d!1188751 (= c!694071 ((_ is Nil!42952) (originalCharacters!7436 token!484)))))

(assert (=> d!1188751 (= (size!32117 (originalCharacters!7436 token!484)) lt!1422260)))

(declare-fun b!4014298 () Bool)

(assert (=> b!4014298 (= e!2489631 0)))

(declare-fun b!4014299 () Bool)

(assert (=> b!4014299 (= e!2489631 (+ 1 (size!32117 (t!333265 (originalCharacters!7436 token!484)))))))

(assert (= (and d!1188751 c!694071) b!4014298))

(assert (= (and d!1188751 (not c!694071)) b!4014299))

(declare-fun m!4601413 () Bool)

(assert (=> b!4014299 m!4601413))

(assert (=> b!4014221 d!1188751))

(declare-fun d!1188753 () Bool)

(assert (=> d!1188753 (= lt!1422210 suffixResult!105)))

(declare-fun lt!1422272 () Unit!61996)

(declare-fun choose!24258 (List!43076 List!43076 List!43076 List!43076 List!43076) Unit!61996)

(assert (=> d!1188753 (= lt!1422272 (choose!24258 lt!1422193 lt!1422210 lt!1422193 suffixResult!105 lt!1422205))))

(assert (=> d!1188753 (isPrefix!3923 lt!1422193 lt!1422205)))

(assert (=> d!1188753 (= (lemmaSamePrefixThenSameSuffix!2094 lt!1422193 lt!1422210 lt!1422193 suffixResult!105 lt!1422205) lt!1422272)))

(declare-fun bs!589548 () Bool)

(assert (= bs!589548 d!1188753))

(declare-fun m!4601463 () Bool)

(assert (=> bs!589548 m!4601463))

(assert (=> bs!589548 m!4601269))

(assert (=> b!4014204 d!1188753))

(declare-fun d!1188761 () Bool)

(assert (=> d!1188761 (= (maxPrefixOneRule!2743 thiss!21717 (rule!9882 token!484) lt!1422205) (Some!9249 (tuple2!42099 (Token!12811 (apply!10033 (transformation!6836 (rule!9882 token!484)) (seqFromList!5061 lt!1422193)) (rule!9882 token!484) (size!32117 lt!1422193) lt!1422193) suffixResult!105)))))

(declare-fun lt!1422282 () Unit!61996)

(declare-fun choose!24259 (LexerInterface!6425 List!43078 List!43076 List!43076 List!43076 Rule!13472) Unit!61996)

(assert (=> d!1188761 (= lt!1422282 (choose!24259 thiss!21717 rules!2999 lt!1422193 lt!1422205 suffixResult!105 (rule!9882 token!484)))))

(assert (=> d!1188761 (not (isEmpty!25656 rules!2999))))

(assert (=> d!1188761 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1561 thiss!21717 rules!2999 lt!1422193 lt!1422205 suffixResult!105 (rule!9882 token!484)) lt!1422282)))

(declare-fun bs!589553 () Bool)

(assert (= bs!589553 d!1188761))

(assert (=> bs!589553 m!4601205))

(assert (=> bs!589553 m!4601325))

(assert (=> bs!589553 m!4601201))

(assert (=> bs!589553 m!4601175))

(assert (=> bs!589553 m!4601201))

(assert (=> bs!589553 m!4601211))

(declare-fun m!4601485 () Bool)

(assert (=> bs!589553 m!4601485))

(assert (=> b!4014204 d!1188761))

(declare-fun b!4014458 () Bool)

(declare-fun e!2489713 () Bool)

(declare-fun e!2489716 () Bool)

(assert (=> b!4014458 (= e!2489713 e!2489716)))

(declare-fun res!1632210 () Bool)

(assert (=> b!4014458 (=> (not res!1632210) (not e!2489716))))

(declare-fun lt!1422358 () Option!9250)

(declare-fun get!14114 (Option!9250) tuple2!42098)

(assert (=> b!4014458 (= res!1632210 (matchR!5702 (regex!6836 (rule!9882 token!484)) (list!15966 (charsOf!4652 (_1!24183 (get!14114 lt!1422358))))))))

(declare-fun b!4014459 () Bool)

(assert (=> b!4014459 (= e!2489716 (= (size!32118 (_1!24183 (get!14114 lt!1422358))) (size!32117 (originalCharacters!7436 (_1!24183 (get!14114 lt!1422358))))))))

(declare-fun b!4014460 () Bool)

(declare-fun res!1632211 () Bool)

(assert (=> b!4014460 (=> (not res!1632211) (not e!2489716))))

(assert (=> b!4014460 (= res!1632211 (< (size!32117 (_2!24183 (get!14114 lt!1422358))) (size!32117 lt!1422205)))))

(declare-fun d!1188775 () Bool)

(assert (=> d!1188775 e!2489713))

(declare-fun res!1632212 () Bool)

(assert (=> d!1188775 (=> res!1632212 e!2489713)))

(declare-fun isEmpty!25659 (Option!9250) Bool)

(assert (=> d!1188775 (= res!1632212 (isEmpty!25659 lt!1422358))))

(declare-fun e!2489715 () Option!9250)

(assert (=> d!1188775 (= lt!1422358 e!2489715)))

(declare-fun c!694097 () Bool)

(declare-datatypes ((tuple2!42102 0))(
  ( (tuple2!42103 (_1!24185 List!43076) (_2!24185 List!43076)) )
))
(declare-fun lt!1422352 () tuple2!42102)

(declare-fun isEmpty!25660 (List!43076) Bool)

(assert (=> d!1188775 (= c!694097 (isEmpty!25660 (_1!24185 lt!1422352)))))

(declare-fun findLongestMatch!1274 (Regex!11741 List!43076) tuple2!42102)

(assert (=> d!1188775 (= lt!1422352 (findLongestMatch!1274 (regex!6836 (rule!9882 token!484)) lt!1422205))))

(assert (=> d!1188775 (ruleValid!2768 thiss!21717 (rule!9882 token!484))))

(assert (=> d!1188775 (= (maxPrefixOneRule!2743 thiss!21717 (rule!9882 token!484) lt!1422205) lt!1422358)))

(declare-fun b!4014461 () Bool)

(declare-fun e!2489714 () Bool)

(declare-fun findLongestMatchInner!1361 (Regex!11741 List!43076 Int List!43076 List!43076 Int) tuple2!42102)

(assert (=> b!4014461 (= e!2489714 (matchR!5702 (regex!6836 (rule!9882 token!484)) (_1!24185 (findLongestMatchInner!1361 (regex!6836 (rule!9882 token!484)) Nil!42952 (size!32117 Nil!42952) lt!1422205 lt!1422205 (size!32117 lt!1422205)))))))

(declare-fun b!4014462 () Bool)

(declare-fun size!32120 (BalanceConc!25688) Int)

(assert (=> b!4014462 (= e!2489715 (Some!9249 (tuple2!42099 (Token!12811 (apply!10033 (transformation!6836 (rule!9882 token!484)) (seqFromList!5061 (_1!24185 lt!1422352))) (rule!9882 token!484) (size!32120 (seqFromList!5061 (_1!24185 lt!1422352))) (_1!24185 lt!1422352)) (_2!24185 lt!1422352))))))

(declare-fun lt!1422353 () Unit!61996)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1334 (Regex!11741 List!43076) Unit!61996)

(assert (=> b!4014462 (= lt!1422353 (longestMatchIsAcceptedByMatchOrIsEmpty!1334 (regex!6836 (rule!9882 token!484)) lt!1422205))))

(declare-fun res!1632216 () Bool)

(assert (=> b!4014462 (= res!1632216 (isEmpty!25660 (_1!24185 (findLongestMatchInner!1361 (regex!6836 (rule!9882 token!484)) Nil!42952 (size!32117 Nil!42952) lt!1422205 lt!1422205 (size!32117 lt!1422205)))))))

(assert (=> b!4014462 (=> res!1632216 e!2489714)))

(assert (=> b!4014462 e!2489714))

(declare-fun lt!1422356 () Unit!61996)

(assert (=> b!4014462 (= lt!1422356 lt!1422353)))

(declare-fun lt!1422357 () Unit!61996)

(declare-fun lemmaSemiInverse!1881 (TokenValueInjection!13560 BalanceConc!25688) Unit!61996)

(assert (=> b!4014462 (= lt!1422357 (lemmaSemiInverse!1881 (transformation!6836 (rule!9882 token!484)) (seqFromList!5061 (_1!24185 lt!1422352))))))

(declare-fun b!4014463 () Bool)

(declare-fun res!1632215 () Bool)

(assert (=> b!4014463 (=> (not res!1632215) (not e!2489716))))

(assert (=> b!4014463 (= res!1632215 (= (++!11238 (list!15966 (charsOf!4652 (_1!24183 (get!14114 lt!1422358)))) (_2!24183 (get!14114 lt!1422358))) lt!1422205))))

(declare-fun b!4014464 () Bool)

(declare-fun res!1632214 () Bool)

(assert (=> b!4014464 (=> (not res!1632214) (not e!2489716))))

(assert (=> b!4014464 (= res!1632214 (= (value!215460 (_1!24183 (get!14114 lt!1422358))) (apply!10033 (transformation!6836 (rule!9882 (_1!24183 (get!14114 lt!1422358)))) (seqFromList!5061 (originalCharacters!7436 (_1!24183 (get!14114 lt!1422358)))))))))

(declare-fun b!4014465 () Bool)

(assert (=> b!4014465 (= e!2489715 None!9249)))

(declare-fun b!4014466 () Bool)

(declare-fun res!1632213 () Bool)

(assert (=> b!4014466 (=> (not res!1632213) (not e!2489716))))

(assert (=> b!4014466 (= res!1632213 (= (rule!9882 (_1!24183 (get!14114 lt!1422358))) (rule!9882 token!484)))))

(assert (= (and d!1188775 c!694097) b!4014465))

(assert (= (and d!1188775 (not c!694097)) b!4014462))

(assert (= (and b!4014462 (not res!1632216)) b!4014461))

(assert (= (and d!1188775 (not res!1632212)) b!4014458))

(assert (= (and b!4014458 res!1632210) b!4014463))

(assert (= (and b!4014463 res!1632215) b!4014460))

(assert (= (and b!4014460 res!1632211) b!4014466))

(assert (= (and b!4014466 res!1632213) b!4014464))

(assert (= (and b!4014464 res!1632214) b!4014459))

(declare-fun m!4601757 () Bool)

(assert (=> b!4014460 m!4601757))

(declare-fun m!4601759 () Bool)

(assert (=> b!4014460 m!4601759))

(declare-fun m!4601761 () Bool)

(assert (=> b!4014460 m!4601761))

(assert (=> b!4014462 m!4601761))

(declare-fun m!4601763 () Bool)

(assert (=> b!4014462 m!4601763))

(declare-fun m!4601765 () Bool)

(assert (=> b!4014462 m!4601765))

(assert (=> b!4014462 m!4601763))

(declare-fun m!4601767 () Bool)

(assert (=> b!4014462 m!4601767))

(assert (=> b!4014462 m!4601763))

(declare-fun m!4601769 () Bool)

(assert (=> b!4014462 m!4601769))

(declare-fun m!4601771 () Bool)

(assert (=> b!4014462 m!4601771))

(declare-fun m!4601773 () Bool)

(assert (=> b!4014462 m!4601773))

(assert (=> b!4014462 m!4601773))

(assert (=> b!4014462 m!4601761))

(declare-fun m!4601775 () Bool)

(assert (=> b!4014462 m!4601775))

(assert (=> b!4014462 m!4601763))

(declare-fun m!4601777 () Bool)

(assert (=> b!4014462 m!4601777))

(declare-fun m!4601779 () Bool)

(assert (=> d!1188775 m!4601779))

(declare-fun m!4601781 () Bool)

(assert (=> d!1188775 m!4601781))

(declare-fun m!4601783 () Bool)

(assert (=> d!1188775 m!4601783))

(assert (=> d!1188775 m!4601293))

(assert (=> b!4014461 m!4601773))

(assert (=> b!4014461 m!4601761))

(assert (=> b!4014461 m!4601773))

(assert (=> b!4014461 m!4601761))

(assert (=> b!4014461 m!4601775))

(declare-fun m!4601785 () Bool)

(assert (=> b!4014461 m!4601785))

(assert (=> b!4014466 m!4601757))

(assert (=> b!4014463 m!4601757))

(declare-fun m!4601787 () Bool)

(assert (=> b!4014463 m!4601787))

(assert (=> b!4014463 m!4601787))

(declare-fun m!4601789 () Bool)

(assert (=> b!4014463 m!4601789))

(assert (=> b!4014463 m!4601789))

(declare-fun m!4601791 () Bool)

(assert (=> b!4014463 m!4601791))

(assert (=> b!4014459 m!4601757))

(declare-fun m!4601793 () Bool)

(assert (=> b!4014459 m!4601793))

(assert (=> b!4014458 m!4601757))

(assert (=> b!4014458 m!4601787))

(assert (=> b!4014458 m!4601787))

(assert (=> b!4014458 m!4601789))

(assert (=> b!4014458 m!4601789))

(declare-fun m!4601795 () Bool)

(assert (=> b!4014458 m!4601795))

(assert (=> b!4014464 m!4601757))

(declare-fun m!4601797 () Bool)

(assert (=> b!4014464 m!4601797))

(assert (=> b!4014464 m!4601797))

(declare-fun m!4601799 () Bool)

(assert (=> b!4014464 m!4601799))

(assert (=> b!4014204 d!1188775))

(declare-fun d!1188849 () Bool)

(assert (=> d!1188849 (isPrefix!3923 lt!1422193 (++!11238 lt!1422193 lt!1422210))))

(declare-fun lt!1422365 () Unit!61996)

(declare-fun choose!24261 (List!43076 List!43076) Unit!61996)

(assert (=> d!1188849 (= lt!1422365 (choose!24261 lt!1422193 lt!1422210))))

(assert (=> d!1188849 (= (lemmaConcatTwoListThenFirstIsPrefix!2764 lt!1422193 lt!1422210) lt!1422365)))

(declare-fun bs!589566 () Bool)

(assert (= bs!589566 d!1188849))

(assert (=> bs!589566 m!4601317))

(assert (=> bs!589566 m!4601317))

(declare-fun m!4601801 () Bool)

(assert (=> bs!589566 m!4601801))

(declare-fun m!4601803 () Bool)

(assert (=> bs!589566 m!4601803))

(assert (=> b!4014204 d!1188849))

(declare-fun d!1188851 () Bool)

(declare-fun dynLambda!18227 (Int BalanceConc!25688) TokenValue!7066)

(assert (=> d!1188851 (= (apply!10033 (transformation!6836 (rule!9882 token!484)) (seqFromList!5061 lt!1422193)) (dynLambda!18227 (toValue!9344 (transformation!6836 (rule!9882 token!484))) (seqFromList!5061 lt!1422193)))))

(declare-fun b_lambda!117167 () Bool)

(assert (=> (not b_lambda!117167) (not d!1188851)))

(declare-fun t!333285 () Bool)

(declare-fun tb!241457 () Bool)

(assert (=> (and b!4014208 (= (toValue!9344 (transformation!6836 (h!48374 rules!2999))) (toValue!9344 (transformation!6836 (rule!9882 token!484)))) t!333285) tb!241457))

(declare-fun result!292618 () Bool)

(assert (=> tb!241457 (= result!292618 (inv!21 (dynLambda!18227 (toValue!9344 (transformation!6836 (rule!9882 token!484))) (seqFromList!5061 lt!1422193))))))

(declare-fun m!4601805 () Bool)

(assert (=> tb!241457 m!4601805))

(assert (=> d!1188851 t!333285))

(declare-fun b_and!308447 () Bool)

(assert (= b_and!308423 (and (=> t!333285 result!292618) b_and!308447)))

(declare-fun t!333287 () Bool)

(declare-fun tb!241459 () Bool)

(assert (=> (and b!4014209 (= (toValue!9344 (transformation!6836 (rule!9882 token!484))) (toValue!9344 (transformation!6836 (rule!9882 token!484)))) t!333287) tb!241459))

(declare-fun result!292622 () Bool)

(assert (= result!292622 result!292618))

(assert (=> d!1188851 t!333287))

(declare-fun b_and!308449 () Bool)

(assert (= b_and!308427 (and (=> t!333287 result!292622) b_and!308449)))

(assert (=> d!1188851 m!4601201))

(declare-fun m!4601807 () Bool)

(assert (=> d!1188851 m!4601807))

(assert (=> b!4014204 d!1188851))

(declare-fun d!1188853 () Bool)

(declare-fun fromListB!2318 (List!43076) BalanceConc!25688)

(assert (=> d!1188853 (= (seqFromList!5061 lt!1422193) (fromListB!2318 lt!1422193))))

(declare-fun bs!589567 () Bool)

(assert (= bs!589567 d!1188853))

(declare-fun m!4601809 () Bool)

(assert (=> bs!589567 m!4601809))

(assert (=> b!4014204 d!1188853))

(declare-fun b!4014503 () Bool)

(declare-fun res!1632236 () Bool)

(declare-fun e!2489739 () Bool)

(assert (=> b!4014503 (=> (not res!1632236) (not e!2489739))))

(assert (=> b!4014503 (= res!1632236 (= (head!8521 lt!1422193) (head!8521 lt!1422215)))))

(declare-fun b!4014502 () Bool)

(declare-fun e!2489737 () Bool)

(assert (=> b!4014502 (= e!2489737 e!2489739)))

(declare-fun res!1632235 () Bool)

(assert (=> b!4014502 (=> (not res!1632235) (not e!2489739))))

(assert (=> b!4014502 (= res!1632235 (not ((_ is Nil!42952) lt!1422215)))))

(declare-fun b!4014505 () Bool)

(declare-fun e!2489738 () Bool)

(assert (=> b!4014505 (= e!2489738 (>= (size!32117 lt!1422215) (size!32117 lt!1422193)))))

(declare-fun d!1188855 () Bool)

(assert (=> d!1188855 e!2489738))

(declare-fun res!1632233 () Bool)

(assert (=> d!1188855 (=> res!1632233 e!2489738)))

(declare-fun lt!1422368 () Bool)

(assert (=> d!1188855 (= res!1632233 (not lt!1422368))))

(assert (=> d!1188855 (= lt!1422368 e!2489737)))

(declare-fun res!1632234 () Bool)

(assert (=> d!1188855 (=> res!1632234 e!2489737)))

(assert (=> d!1188855 (= res!1632234 ((_ is Nil!42952) lt!1422193))))

(assert (=> d!1188855 (= (isPrefix!3923 lt!1422193 lt!1422215) lt!1422368)))

(declare-fun b!4014504 () Bool)

(assert (=> b!4014504 (= e!2489739 (isPrefix!3923 (tail!6253 lt!1422193) (tail!6253 lt!1422215)))))

(assert (= (and d!1188855 (not res!1632234)) b!4014502))

(assert (= (and b!4014502 res!1632235) b!4014503))

(assert (= (and b!4014503 res!1632236) b!4014504))

(assert (= (and d!1188855 (not res!1632233)) b!4014505))

(declare-fun m!4601811 () Bool)

(assert (=> b!4014503 m!4601811))

(declare-fun m!4601813 () Bool)

(assert (=> b!4014503 m!4601813))

(declare-fun m!4601815 () Bool)

(assert (=> b!4014505 m!4601815))

(assert (=> b!4014505 m!4601325))

(declare-fun m!4601817 () Bool)

(assert (=> b!4014504 m!4601817))

(declare-fun m!4601819 () Bool)

(assert (=> b!4014504 m!4601819))

(assert (=> b!4014504 m!4601817))

(assert (=> b!4014504 m!4601819))

(declare-fun m!4601821 () Bool)

(assert (=> b!4014504 m!4601821))

(assert (=> b!4014204 d!1188855))

(declare-fun b!4014508 () Bool)

(declare-fun res!1632237 () Bool)

(declare-fun e!2489741 () Bool)

(assert (=> b!4014508 (=> (not res!1632237) (not e!2489741))))

(declare-fun lt!1422369 () List!43076)

(assert (=> b!4014508 (= res!1632237 (= (size!32117 lt!1422369) (+ (size!32117 lt!1422193) (size!32117 lt!1422218))))))

(declare-fun b!4014506 () Bool)

(declare-fun e!2489740 () List!43076)

(assert (=> b!4014506 (= e!2489740 lt!1422218)))

(declare-fun b!4014507 () Bool)

(assert (=> b!4014507 (= e!2489740 (Cons!42952 (h!48372 lt!1422193) (++!11238 (t!333265 lt!1422193) lt!1422218)))))

(declare-fun d!1188857 () Bool)

(assert (=> d!1188857 e!2489741))

(declare-fun res!1632238 () Bool)

(assert (=> d!1188857 (=> (not res!1632238) (not e!2489741))))

(assert (=> d!1188857 (= res!1632238 (= (content!6515 lt!1422369) ((_ map or) (content!6515 lt!1422193) (content!6515 lt!1422218))))))

(assert (=> d!1188857 (= lt!1422369 e!2489740)))

(declare-fun c!694106 () Bool)

(assert (=> d!1188857 (= c!694106 ((_ is Nil!42952) lt!1422193))))

(assert (=> d!1188857 (= (++!11238 lt!1422193 lt!1422218) lt!1422369)))

(declare-fun b!4014509 () Bool)

(assert (=> b!4014509 (= e!2489741 (or (not (= lt!1422218 Nil!42952)) (= lt!1422369 lt!1422193)))))

(assert (= (and d!1188857 c!694106) b!4014506))

(assert (= (and d!1188857 (not c!694106)) b!4014507))

(assert (= (and d!1188857 res!1632238) b!4014508))

(assert (= (and b!4014508 res!1632237) b!4014509))

(declare-fun m!4601823 () Bool)

(assert (=> b!4014508 m!4601823))

(assert (=> b!4014508 m!4601325))

(declare-fun m!4601825 () Bool)

(assert (=> b!4014508 m!4601825))

(declare-fun m!4601827 () Bool)

(assert (=> b!4014507 m!4601827))

(declare-fun m!4601829 () Bool)

(assert (=> d!1188857 m!4601829))

(assert (=> d!1188857 m!4601371))

(declare-fun m!4601831 () Bool)

(assert (=> d!1188857 m!4601831))

(assert (=> b!4014203 d!1188857))

(declare-fun d!1188859 () Bool)

(declare-fun lt!1422373 () List!43076)

(assert (=> d!1188859 (= (++!11238 lt!1422193 lt!1422373) lt!1422205)))

(declare-fun e!2489751 () List!43076)

(assert (=> d!1188859 (= lt!1422373 e!2489751)))

(declare-fun c!694112 () Bool)

(assert (=> d!1188859 (= c!694112 ((_ is Cons!42952) lt!1422193))))

(assert (=> d!1188859 (>= (size!32117 lt!1422205) (size!32117 lt!1422193))))

(assert (=> d!1188859 (= (getSuffix!2348 lt!1422205 lt!1422193) lt!1422373)))

(declare-fun b!4014528 () Bool)

(assert (=> b!4014528 (= e!2489751 (getSuffix!2348 (tail!6253 lt!1422205) (t!333265 lt!1422193)))))

(declare-fun b!4014529 () Bool)

(assert (=> b!4014529 (= e!2489751 lt!1422205)))

(assert (= (and d!1188859 c!694112) b!4014528))

(assert (= (and d!1188859 (not c!694112)) b!4014529))

(declare-fun m!4601843 () Bool)

(assert (=> d!1188859 m!4601843))

(assert (=> d!1188859 m!4601761))

(assert (=> d!1188859 m!4601325))

(declare-fun m!4601847 () Bool)

(assert (=> b!4014528 m!4601847))

(assert (=> b!4014528 m!4601847))

(declare-fun m!4601849 () Bool)

(assert (=> b!4014528 m!4601849))

(assert (=> b!4014203 d!1188859))

(declare-fun b!4014534 () Bool)

(declare-fun res!1632254 () Bool)

(declare-fun e!2489756 () Bool)

(assert (=> b!4014534 (=> (not res!1632254) (not e!2489756))))

(assert (=> b!4014534 (= res!1632254 (= (head!8521 lt!1422205) (head!8521 lt!1422205)))))

(declare-fun b!4014532 () Bool)

(declare-fun e!2489753 () Bool)

(assert (=> b!4014532 (= e!2489753 e!2489756)))

(declare-fun res!1632253 () Bool)

(assert (=> b!4014532 (=> (not res!1632253) (not e!2489756))))

(assert (=> b!4014532 (= res!1632253 (not ((_ is Nil!42952) lt!1422205)))))

(declare-fun b!4014537 () Bool)

(declare-fun e!2489755 () Bool)

(assert (=> b!4014537 (= e!2489755 (>= (size!32117 lt!1422205) (size!32117 lt!1422205)))))

(declare-fun d!1188863 () Bool)

(assert (=> d!1188863 e!2489755))

(declare-fun res!1632249 () Bool)

(assert (=> d!1188863 (=> res!1632249 e!2489755)))

(declare-fun lt!1422375 () Bool)

(assert (=> d!1188863 (= res!1632249 (not lt!1422375))))

(assert (=> d!1188863 (= lt!1422375 e!2489753)))

(declare-fun res!1632250 () Bool)

(assert (=> d!1188863 (=> res!1632250 e!2489753)))

(assert (=> d!1188863 (= res!1632250 ((_ is Nil!42952) lt!1422205))))

(assert (=> d!1188863 (= (isPrefix!3923 lt!1422205 lt!1422205) lt!1422375)))

(declare-fun b!4014536 () Bool)

(assert (=> b!4014536 (= e!2489756 (isPrefix!3923 (tail!6253 lt!1422205) (tail!6253 lt!1422205)))))

(assert (= (and d!1188863 (not res!1632250)) b!4014532))

(assert (= (and b!4014532 res!1632253) b!4014534))

(assert (= (and b!4014534 res!1632254) b!4014536))

(assert (= (and d!1188863 (not res!1632249)) b!4014537))

(declare-fun m!4601851 () Bool)

(assert (=> b!4014534 m!4601851))

(assert (=> b!4014534 m!4601851))

(assert (=> b!4014537 m!4601761))

(assert (=> b!4014537 m!4601761))

(assert (=> b!4014536 m!4601847))

(assert (=> b!4014536 m!4601847))

(assert (=> b!4014536 m!4601847))

(assert (=> b!4014536 m!4601847))

(declare-fun m!4601857 () Bool)

(assert (=> b!4014536 m!4601857))

(assert (=> b!4014203 d!1188863))

(declare-fun d!1188865 () Bool)

(assert (=> d!1188865 (isPrefix!3923 lt!1422205 lt!1422205)))

(declare-fun lt!1422382 () Unit!61996)

(declare-fun choose!24262 (List!43076 List!43076) Unit!61996)

(assert (=> d!1188865 (= lt!1422382 (choose!24262 lt!1422205 lt!1422205))))

(assert (=> d!1188865 (= (lemmaIsPrefixRefl!2499 lt!1422205 lt!1422205) lt!1422382)))

(declare-fun bs!589570 () Bool)

(assert (= bs!589570 d!1188865))

(assert (=> bs!589570 m!4601285))

(declare-fun m!4601881 () Bool)

(assert (=> bs!589570 m!4601881))

(assert (=> b!4014203 d!1188865))

(declare-fun d!1188875 () Bool)

(assert (=> d!1188875 (isPrefix!3923 lt!1422193 (++!11238 lt!1422193 suffixResult!105))))

(declare-fun lt!1422383 () Unit!61996)

(assert (=> d!1188875 (= lt!1422383 (choose!24261 lt!1422193 suffixResult!105))))

(assert (=> d!1188875 (= (lemmaConcatTwoListThenFirstIsPrefix!2764 lt!1422193 suffixResult!105) lt!1422383)))

(declare-fun bs!589571 () Bool)

(assert (= bs!589571 d!1188875))

(assert (=> bs!589571 m!4601289))

(assert (=> bs!589571 m!4601289))

(declare-fun m!4601889 () Bool)

(assert (=> bs!589571 m!4601889))

(declare-fun m!4601891 () Bool)

(assert (=> bs!589571 m!4601891))

(assert (=> b!4014224 d!1188875))

(declare-fun b!4014551 () Bool)

(declare-fun res!1632266 () Bool)

(declare-fun e!2489767 () Bool)

(assert (=> b!4014551 (=> (not res!1632266) (not e!2489767))))

(assert (=> b!4014551 (= res!1632266 (= (head!8521 lt!1422193) (head!8521 lt!1422205)))))

(declare-fun b!4014550 () Bool)

(declare-fun e!2489765 () Bool)

(assert (=> b!4014550 (= e!2489765 e!2489767)))

(declare-fun res!1632265 () Bool)

(assert (=> b!4014550 (=> (not res!1632265) (not e!2489767))))

(assert (=> b!4014550 (= res!1632265 (not ((_ is Nil!42952) lt!1422205)))))

(declare-fun b!4014553 () Bool)

(declare-fun e!2489766 () Bool)

(assert (=> b!4014553 (= e!2489766 (>= (size!32117 lt!1422205) (size!32117 lt!1422193)))))

(declare-fun d!1188879 () Bool)

(assert (=> d!1188879 e!2489766))

(declare-fun res!1632263 () Bool)

(assert (=> d!1188879 (=> res!1632263 e!2489766)))

(declare-fun lt!1422385 () Bool)

(assert (=> d!1188879 (= res!1632263 (not lt!1422385))))

(assert (=> d!1188879 (= lt!1422385 e!2489765)))

(declare-fun res!1632264 () Bool)

(assert (=> d!1188879 (=> res!1632264 e!2489765)))

(assert (=> d!1188879 (= res!1632264 ((_ is Nil!42952) lt!1422193))))

(assert (=> d!1188879 (= (isPrefix!3923 lt!1422193 lt!1422205) lt!1422385)))

(declare-fun b!4014552 () Bool)

(assert (=> b!4014552 (= e!2489767 (isPrefix!3923 (tail!6253 lt!1422193) (tail!6253 lt!1422205)))))

(assert (= (and d!1188879 (not res!1632264)) b!4014550))

(assert (= (and b!4014550 res!1632265) b!4014551))

(assert (= (and b!4014551 res!1632266) b!4014552))

(assert (= (and d!1188879 (not res!1632263)) b!4014553))

(assert (=> b!4014551 m!4601811))

(assert (=> b!4014551 m!4601851))

(assert (=> b!4014553 m!4601761))

(assert (=> b!4014553 m!4601325))

(assert (=> b!4014552 m!4601817))

(assert (=> b!4014552 m!4601847))

(assert (=> b!4014552 m!4601817))

(assert (=> b!4014552 m!4601847))

(declare-fun m!4601899 () Bool)

(assert (=> b!4014552 m!4601899))

(assert (=> b!4014224 d!1188879))

(declare-fun b!4014559 () Bool)

(declare-fun res!1632272 () Bool)

(declare-fun e!2489772 () Bool)

(assert (=> b!4014559 (=> (not res!1632272) (not e!2489772))))

(assert (=> b!4014559 (= res!1632272 (= (head!8521 prefix!494) (head!8521 lt!1422205)))))

(declare-fun b!4014558 () Bool)

(declare-fun e!2489770 () Bool)

(assert (=> b!4014558 (= e!2489770 e!2489772)))

(declare-fun res!1632271 () Bool)

(assert (=> b!4014558 (=> (not res!1632271) (not e!2489772))))

(assert (=> b!4014558 (= res!1632271 (not ((_ is Nil!42952) lt!1422205)))))

(declare-fun b!4014561 () Bool)

(declare-fun e!2489771 () Bool)

(assert (=> b!4014561 (= e!2489771 (>= (size!32117 lt!1422205) (size!32117 prefix!494)))))

(declare-fun d!1188883 () Bool)

(assert (=> d!1188883 e!2489771))

(declare-fun res!1632269 () Bool)

(assert (=> d!1188883 (=> res!1632269 e!2489771)))

(declare-fun lt!1422387 () Bool)

(assert (=> d!1188883 (= res!1632269 (not lt!1422387))))

(assert (=> d!1188883 (= lt!1422387 e!2489770)))

(declare-fun res!1632270 () Bool)

(assert (=> d!1188883 (=> res!1632270 e!2489770)))

(assert (=> d!1188883 (= res!1632270 ((_ is Nil!42952) prefix!494))))

(assert (=> d!1188883 (= (isPrefix!3923 prefix!494 lt!1422205) lt!1422387)))

(declare-fun b!4014560 () Bool)

(assert (=> b!4014560 (= e!2489772 (isPrefix!3923 (tail!6253 prefix!494) (tail!6253 lt!1422205)))))

(assert (= (and d!1188883 (not res!1632270)) b!4014558))

(assert (= (and b!4014558 res!1632271) b!4014559))

(assert (= (and b!4014559 res!1632272) b!4014560))

(assert (= (and d!1188883 (not res!1632269)) b!4014561))

(declare-fun m!4601911 () Bool)

(assert (=> b!4014559 m!4601911))

(assert (=> b!4014559 m!4601851))

(assert (=> b!4014561 m!4601761))

(assert (=> b!4014561 m!4601327))

(declare-fun m!4601913 () Bool)

(assert (=> b!4014560 m!4601913))

(assert (=> b!4014560 m!4601847))

(assert (=> b!4014560 m!4601913))

(assert (=> b!4014560 m!4601847))

(declare-fun m!4601915 () Bool)

(assert (=> b!4014560 m!4601915))

(assert (=> b!4014224 d!1188883))

(declare-fun b!4014567 () Bool)

(declare-fun res!1632278 () Bool)

(declare-fun e!2489777 () Bool)

(assert (=> b!4014567 (=> (not res!1632278) (not e!2489777))))

(assert (=> b!4014567 (= res!1632278 (= (head!8521 lt!1422193) (head!8521 lt!1422199)))))

(declare-fun b!4014566 () Bool)

(declare-fun e!2489775 () Bool)

(assert (=> b!4014566 (= e!2489775 e!2489777)))

(declare-fun res!1632277 () Bool)

(assert (=> b!4014566 (=> (not res!1632277) (not e!2489777))))

(assert (=> b!4014566 (= res!1632277 (not ((_ is Nil!42952) lt!1422199)))))

(declare-fun b!4014569 () Bool)

(declare-fun e!2489776 () Bool)

(assert (=> b!4014569 (= e!2489776 (>= (size!32117 lt!1422199) (size!32117 lt!1422193)))))

(declare-fun d!1188887 () Bool)

(assert (=> d!1188887 e!2489776))

(declare-fun res!1632275 () Bool)

(assert (=> d!1188887 (=> res!1632275 e!2489776)))

(declare-fun lt!1422389 () Bool)

(assert (=> d!1188887 (= res!1632275 (not lt!1422389))))

(assert (=> d!1188887 (= lt!1422389 e!2489775)))

(declare-fun res!1632276 () Bool)

(assert (=> d!1188887 (=> res!1632276 e!2489775)))

(assert (=> d!1188887 (= res!1632276 ((_ is Nil!42952) lt!1422193))))

(assert (=> d!1188887 (= (isPrefix!3923 lt!1422193 lt!1422199) lt!1422389)))

(declare-fun b!4014568 () Bool)

(assert (=> b!4014568 (= e!2489777 (isPrefix!3923 (tail!6253 lt!1422193) (tail!6253 lt!1422199)))))

(assert (= (and d!1188887 (not res!1632276)) b!4014566))

(assert (= (and b!4014566 res!1632277) b!4014567))

(assert (= (and b!4014567 res!1632278) b!4014568))

(assert (= (and d!1188887 (not res!1632275)) b!4014569))

(assert (=> b!4014567 m!4601811))

(declare-fun m!4601927 () Bool)

(assert (=> b!4014567 m!4601927))

(declare-fun m!4601929 () Bool)

(assert (=> b!4014569 m!4601929))

(assert (=> b!4014569 m!4601325))

(assert (=> b!4014568 m!4601817))

(declare-fun m!4601931 () Bool)

(assert (=> b!4014568 m!4601931))

(assert (=> b!4014568 m!4601817))

(assert (=> b!4014568 m!4601931))

(declare-fun m!4601933 () Bool)

(assert (=> b!4014568 m!4601933))

(assert (=> b!4014224 d!1188887))

(declare-fun d!1188891 () Bool)

(assert (=> d!1188891 (isPrefix!3923 prefix!494 (++!11238 prefix!494 suffix!1299))))

(declare-fun lt!1422391 () Unit!61996)

(assert (=> d!1188891 (= lt!1422391 (choose!24261 prefix!494 suffix!1299))))

(assert (=> d!1188891 (= (lemmaConcatTwoListThenFirstIsPrefix!2764 prefix!494 suffix!1299) lt!1422391)))

(declare-fun bs!589572 () Bool)

(assert (= bs!589572 d!1188891))

(assert (=> bs!589572 m!4601259))

(assert (=> bs!589572 m!4601259))

(declare-fun m!4601945 () Bool)

(assert (=> bs!589572 m!4601945))

(declare-fun m!4601947 () Bool)

(assert (=> bs!589572 m!4601947))

(assert (=> b!4014224 d!1188891))

(declare-fun b!4014576 () Bool)

(declare-fun res!1632281 () Bool)

(declare-fun e!2489781 () Bool)

(assert (=> b!4014576 (=> (not res!1632281) (not e!2489781))))

(declare-fun lt!1422393 () List!43076)

(assert (=> b!4014576 (= res!1632281 (= (size!32117 lt!1422393) (+ (size!32117 lt!1422219) (size!32117 (getSuffix!2348 lt!1422196 lt!1422219)))))))

(declare-fun b!4014574 () Bool)

(declare-fun e!2489780 () List!43076)

(assert (=> b!4014574 (= e!2489780 (getSuffix!2348 lt!1422196 lt!1422219))))

(declare-fun b!4014575 () Bool)

(assert (=> b!4014575 (= e!2489780 (Cons!42952 (h!48372 lt!1422219) (++!11238 (t!333265 lt!1422219) (getSuffix!2348 lt!1422196 lt!1422219))))))

(declare-fun d!1188895 () Bool)

(assert (=> d!1188895 e!2489781))

(declare-fun res!1632282 () Bool)

(assert (=> d!1188895 (=> (not res!1632282) (not e!2489781))))

(assert (=> d!1188895 (= res!1632282 (= (content!6515 lt!1422393) ((_ map or) (content!6515 lt!1422219) (content!6515 (getSuffix!2348 lt!1422196 lt!1422219)))))))

(assert (=> d!1188895 (= lt!1422393 e!2489780)))

(declare-fun c!694118 () Bool)

(assert (=> d!1188895 (= c!694118 ((_ is Nil!42952) lt!1422219))))

(assert (=> d!1188895 (= (++!11238 lt!1422219 (getSuffix!2348 lt!1422196 lt!1422219)) lt!1422393)))

(declare-fun b!4014577 () Bool)

(assert (=> b!4014577 (= e!2489781 (or (not (= (getSuffix!2348 lt!1422196 lt!1422219) Nil!42952)) (= lt!1422393 lt!1422219)))))

(assert (= (and d!1188895 c!694118) b!4014574))

(assert (= (and d!1188895 (not c!694118)) b!4014575))

(assert (= (and d!1188895 res!1632282) b!4014576))

(assert (= (and b!4014576 res!1632281) b!4014577))

(declare-fun m!4601955 () Bool)

(assert (=> b!4014576 m!4601955))

(assert (=> b!4014576 m!4601247))

(assert (=> b!4014576 m!4601171))

(declare-fun m!4601957 () Bool)

(assert (=> b!4014576 m!4601957))

(assert (=> b!4014575 m!4601171))

(declare-fun m!4601959 () Bool)

(assert (=> b!4014575 m!4601959))

(declare-fun m!4601961 () Bool)

(assert (=> d!1188895 m!4601961))

(declare-fun m!4601963 () Bool)

(assert (=> d!1188895 m!4601963))

(assert (=> d!1188895 m!4601171))

(declare-fun m!4601965 () Bool)

(assert (=> d!1188895 m!4601965))

(assert (=> b!4014202 d!1188895))

(declare-fun d!1188899 () Bool)

(declare-fun lt!1422395 () List!43076)

(assert (=> d!1188899 (= (++!11238 lt!1422219 lt!1422395) lt!1422196)))

(declare-fun e!2489784 () List!43076)

(assert (=> d!1188899 (= lt!1422395 e!2489784)))

(declare-fun c!694120 () Bool)

(assert (=> d!1188899 (= c!694120 ((_ is Cons!42952) lt!1422219))))

(assert (=> d!1188899 (>= (size!32117 lt!1422196) (size!32117 lt!1422219))))

(assert (=> d!1188899 (= (getSuffix!2348 lt!1422196 lt!1422219) lt!1422395)))

(declare-fun b!4014582 () Bool)

(assert (=> b!4014582 (= e!2489784 (getSuffix!2348 (tail!6253 lt!1422196) (t!333265 lt!1422219)))))

(declare-fun b!4014583 () Bool)

(assert (=> b!4014583 (= e!2489784 lt!1422196)))

(assert (= (and d!1188899 c!694120) b!4014582))

(assert (= (and d!1188899 (not c!694120)) b!4014583))

(declare-fun m!4601971 () Bool)

(assert (=> d!1188899 m!4601971))

(declare-fun m!4601973 () Bool)

(assert (=> d!1188899 m!4601973))

(assert (=> d!1188899 m!4601247))

(declare-fun m!4601977 () Bool)

(assert (=> b!4014582 m!4601977))

(assert (=> b!4014582 m!4601977))

(declare-fun m!4601979 () Bool)

(assert (=> b!4014582 m!4601979))

(assert (=> b!4014202 d!1188899))

(declare-fun d!1188903 () Bool)

(assert (=> d!1188903 (= (isEmpty!25656 rules!2999) ((_ is Nil!42954) rules!2999))))

(assert (=> b!4014196 d!1188903))

(declare-fun b!4014650 () Bool)

(declare-fun res!1632326 () Bool)

(declare-fun e!2489829 () Bool)

(assert (=> b!4014650 (=> (not res!1632326) (not e!2489829))))

(assert (=> b!4014650 (= res!1632326 (isEmpty!25660 (tail!6253 lt!1422193)))))

(declare-fun b!4014651 () Bool)

(declare-fun res!1632328 () Bool)

(declare-fun e!2489824 () Bool)

(assert (=> b!4014651 (=> res!1632328 e!2489824)))

(assert (=> b!4014651 (= res!1632328 e!2489829)))

(declare-fun res!1632324 () Bool)

(assert (=> b!4014651 (=> (not res!1632324) (not e!2489829))))

(declare-fun lt!1422408 () Bool)

(assert (=> b!4014651 (= res!1632324 lt!1422408)))

(declare-fun b!4014652 () Bool)

(declare-fun res!1632322 () Bool)

(assert (=> b!4014652 (=> (not res!1632322) (not e!2489829))))

(declare-fun call!286536 () Bool)

(assert (=> b!4014652 (= res!1632322 (not call!286536))))

(declare-fun b!4014653 () Bool)

(declare-fun e!2489828 () Bool)

(assert (=> b!4014653 (= e!2489824 e!2489828)))

(declare-fun res!1632327 () Bool)

(assert (=> b!4014653 (=> (not res!1632327) (not e!2489828))))

(assert (=> b!4014653 (= res!1632327 (not lt!1422408))))

(declare-fun b!4014654 () Bool)

(declare-fun res!1632323 () Bool)

(assert (=> b!4014654 (=> res!1632323 e!2489824)))

(assert (=> b!4014654 (= res!1632323 (not ((_ is ElementMatch!11741) (regex!6836 (rule!9882 token!484)))))))

(declare-fun e!2489825 () Bool)

(assert (=> b!4014654 (= e!2489825 e!2489824)))

(declare-fun b!4014655 () Bool)

(declare-fun e!2489826 () Bool)

(declare-fun nullable!4120 (Regex!11741) Bool)

(assert (=> b!4014655 (= e!2489826 (nullable!4120 (regex!6836 (rule!9882 token!484))))))

(declare-fun d!1188907 () Bool)

(declare-fun e!2489827 () Bool)

(assert (=> d!1188907 e!2489827))

(declare-fun c!694136 () Bool)

(assert (=> d!1188907 (= c!694136 ((_ is EmptyExpr!11741) (regex!6836 (rule!9882 token!484))))))

(assert (=> d!1188907 (= lt!1422408 e!2489826)))

(declare-fun c!694137 () Bool)

(assert (=> d!1188907 (= c!694137 (isEmpty!25660 lt!1422193))))

(declare-fun validRegex!5320 (Regex!11741) Bool)

(assert (=> d!1188907 (validRegex!5320 (regex!6836 (rule!9882 token!484)))))

(assert (=> d!1188907 (= (matchR!5702 (regex!6836 (rule!9882 token!484)) lt!1422193) lt!1422408)))

(declare-fun b!4014656 () Bool)

(assert (=> b!4014656 (= e!2489827 (= lt!1422408 call!286536))))

(declare-fun b!4014657 () Bool)

(assert (=> b!4014657 (= e!2489829 (= (head!8521 lt!1422193) (c!694061 (regex!6836 (rule!9882 token!484)))))))

(declare-fun b!4014658 () Bool)

(declare-fun derivativeStep!3528 (Regex!11741 C!23668) Regex!11741)

(assert (=> b!4014658 (= e!2489826 (matchR!5702 (derivativeStep!3528 (regex!6836 (rule!9882 token!484)) (head!8521 lt!1422193)) (tail!6253 lt!1422193)))))

(declare-fun b!4014659 () Bool)

(declare-fun e!2489830 () Bool)

(assert (=> b!4014659 (= e!2489830 (not (= (head!8521 lt!1422193) (c!694061 (regex!6836 (rule!9882 token!484))))))))

(declare-fun b!4014660 () Bool)

(assert (=> b!4014660 (= e!2489828 e!2489830)))

(declare-fun res!1632325 () Bool)

(assert (=> b!4014660 (=> res!1632325 e!2489830)))

(assert (=> b!4014660 (= res!1632325 call!286536)))

(declare-fun b!4014661 () Bool)

(assert (=> b!4014661 (= e!2489827 e!2489825)))

(declare-fun c!694138 () Bool)

(assert (=> b!4014661 (= c!694138 ((_ is EmptyLang!11741) (regex!6836 (rule!9882 token!484))))))

(declare-fun b!4014662 () Bool)

(declare-fun res!1632321 () Bool)

(assert (=> b!4014662 (=> res!1632321 e!2489830)))

(assert (=> b!4014662 (= res!1632321 (not (isEmpty!25660 (tail!6253 lt!1422193))))))

(declare-fun b!4014663 () Bool)

(assert (=> b!4014663 (= e!2489825 (not lt!1422408))))

(declare-fun bm!286531 () Bool)

(assert (=> bm!286531 (= call!286536 (isEmpty!25660 lt!1422193))))

(assert (= (and d!1188907 c!694137) b!4014655))

(assert (= (and d!1188907 (not c!694137)) b!4014658))

(assert (= (and d!1188907 c!694136) b!4014656))

(assert (= (and d!1188907 (not c!694136)) b!4014661))

(assert (= (and b!4014661 c!694138) b!4014663))

(assert (= (and b!4014661 (not c!694138)) b!4014654))

(assert (= (and b!4014654 (not res!1632323)) b!4014651))

(assert (= (and b!4014651 res!1632324) b!4014652))

(assert (= (and b!4014652 res!1632322) b!4014650))

(assert (= (and b!4014650 res!1632326) b!4014657))

(assert (= (and b!4014651 (not res!1632328)) b!4014653))

(assert (= (and b!4014653 res!1632327) b!4014660))

(assert (= (and b!4014660 (not res!1632325)) b!4014662))

(assert (= (and b!4014662 (not res!1632321)) b!4014659))

(assert (= (or b!4014656 b!4014652 b!4014660) bm!286531))

(assert (=> b!4014657 m!4601811))

(assert (=> b!4014658 m!4601811))

(assert (=> b!4014658 m!4601811))

(declare-fun m!4602033 () Bool)

(assert (=> b!4014658 m!4602033))

(assert (=> b!4014658 m!4601817))

(assert (=> b!4014658 m!4602033))

(assert (=> b!4014658 m!4601817))

(declare-fun m!4602035 () Bool)

(assert (=> b!4014658 m!4602035))

(assert (=> b!4014659 m!4601811))

(declare-fun m!4602039 () Bool)

(assert (=> b!4014655 m!4602039))

(declare-fun m!4602043 () Bool)

(assert (=> bm!286531 m!4602043))

(assert (=> b!4014650 m!4601817))

(assert (=> b!4014650 m!4601817))

(declare-fun m!4602049 () Bool)

(assert (=> b!4014650 m!4602049))

(assert (=> d!1188907 m!4602043))

(declare-fun m!4602053 () Bool)

(assert (=> d!1188907 m!4602053))

(assert (=> b!4014662 m!4601817))

(assert (=> b!4014662 m!4601817))

(assert (=> b!4014662 m!4602049))

(assert (=> b!4014217 d!1188907))

(declare-fun b!4014674 () Bool)

(declare-fun res!1632339 () Bool)

(declare-fun e!2489839 () Bool)

(assert (=> b!4014674 (=> (not res!1632339) (not e!2489839))))

(assert (=> b!4014674 (= res!1632339 (= (head!8521 lt!1422193) (head!8521 lt!1422196)))))

(declare-fun b!4014673 () Bool)

(declare-fun e!2489837 () Bool)

(assert (=> b!4014673 (= e!2489837 e!2489839)))

(declare-fun res!1632338 () Bool)

(assert (=> b!4014673 (=> (not res!1632338) (not e!2489839))))

(assert (=> b!4014673 (= res!1632338 (not ((_ is Nil!42952) lt!1422196)))))

(declare-fun b!4014676 () Bool)

(declare-fun e!2489838 () Bool)

(assert (=> b!4014676 (= e!2489838 (>= (size!32117 lt!1422196) (size!32117 lt!1422193)))))

(declare-fun d!1188935 () Bool)

(assert (=> d!1188935 e!2489838))

(declare-fun res!1632336 () Bool)

(assert (=> d!1188935 (=> res!1632336 e!2489838)))

(declare-fun lt!1422412 () Bool)

(assert (=> d!1188935 (= res!1632336 (not lt!1422412))))

(assert (=> d!1188935 (= lt!1422412 e!2489837)))

(declare-fun res!1632337 () Bool)

(assert (=> d!1188935 (=> res!1632337 e!2489837)))

(assert (=> d!1188935 (= res!1632337 ((_ is Nil!42952) lt!1422193))))

(assert (=> d!1188935 (= (isPrefix!3923 lt!1422193 lt!1422196) lt!1422412)))

(declare-fun b!4014675 () Bool)

(assert (=> b!4014675 (= e!2489839 (isPrefix!3923 (tail!6253 lt!1422193) (tail!6253 lt!1422196)))))

(assert (= (and d!1188935 (not res!1632337)) b!4014673))

(assert (= (and b!4014673 res!1632338) b!4014674))

(assert (= (and b!4014674 res!1632339) b!4014675))

(assert (= (and d!1188935 (not res!1632336)) b!4014676))

(assert (=> b!4014674 m!4601811))

(declare-fun m!4602059 () Bool)

(assert (=> b!4014674 m!4602059))

(assert (=> b!4014676 m!4601973))

(assert (=> b!4014676 m!4601325))

(assert (=> b!4014675 m!4601817))

(assert (=> b!4014675 m!4601977))

(assert (=> b!4014675 m!4601817))

(assert (=> b!4014675 m!4601977))

(declare-fun m!4602061 () Bool)

(assert (=> b!4014675 m!4602061))

(assert (=> b!4014217 d!1188935))

(declare-fun d!1188941 () Bool)

(assert (=> d!1188941 (isPrefix!3923 lt!1422193 (++!11238 prefix!494 newSuffix!27))))

(declare-fun lt!1422416 () Unit!61996)

(declare-fun choose!24264 (List!43076 List!43076 List!43076) Unit!61996)

(assert (=> d!1188941 (= lt!1422416 (choose!24264 lt!1422193 prefix!494 newSuffix!27))))

(assert (=> d!1188941 (isPrefix!3923 lt!1422193 prefix!494)))

(assert (=> d!1188941 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!736 lt!1422193 prefix!494 newSuffix!27) lt!1422416)))

(declare-fun bs!589578 () Bool)

(assert (= bs!589578 d!1188941))

(assert (=> bs!589578 m!4601179))

(assert (=> bs!589578 m!4601179))

(declare-fun m!4602067 () Bool)

(assert (=> bs!589578 m!4602067))

(declare-fun m!4602069 () Bool)

(assert (=> bs!589578 m!4602069))

(assert (=> bs!589578 m!4601311))

(assert (=> b!4014217 d!1188941))

(declare-fun d!1188949 () Bool)

(assert (=> d!1188949 (isPrefix!3923 lt!1422193 (++!11238 prefix!494 suffix!1299))))

(declare-fun lt!1422417 () Unit!61996)

(assert (=> d!1188949 (= lt!1422417 (choose!24264 lt!1422193 prefix!494 suffix!1299))))

(assert (=> d!1188949 (isPrefix!3923 lt!1422193 prefix!494)))

(assert (=> d!1188949 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!736 lt!1422193 prefix!494 suffix!1299) lt!1422417)))

(declare-fun bs!589579 () Bool)

(assert (= bs!589579 d!1188949))

(assert (=> bs!589579 m!4601259))

(assert (=> bs!589579 m!4601259))

(declare-fun m!4602071 () Bool)

(assert (=> bs!589579 m!4602071))

(declare-fun m!4602073 () Bool)

(assert (=> bs!589579 m!4602073))

(assert (=> bs!589579 m!4601311))

(assert (=> b!4014217 d!1188949))

(declare-fun b!4014686 () Bool)

(declare-fun res!1632347 () Bool)

(declare-fun e!2489845 () Bool)

(assert (=> b!4014686 (=> (not res!1632347) (not e!2489845))))

(declare-fun lt!1422418 () List!43076)

(assert (=> b!4014686 (= res!1632347 (= (size!32117 lt!1422418) (+ (size!32117 lt!1422193) (size!32117 lt!1422202))))))

(declare-fun b!4014684 () Bool)

(declare-fun e!2489844 () List!43076)

(assert (=> b!4014684 (= e!2489844 lt!1422202)))

(declare-fun b!4014685 () Bool)

(assert (=> b!4014685 (= e!2489844 (Cons!42952 (h!48372 lt!1422193) (++!11238 (t!333265 lt!1422193) lt!1422202)))))

(declare-fun d!1188951 () Bool)

(assert (=> d!1188951 e!2489845))

(declare-fun res!1632348 () Bool)

(assert (=> d!1188951 (=> (not res!1632348) (not e!2489845))))

(assert (=> d!1188951 (= res!1632348 (= (content!6515 lt!1422418) ((_ map or) (content!6515 lt!1422193) (content!6515 lt!1422202))))))

(assert (=> d!1188951 (= lt!1422418 e!2489844)))

(declare-fun c!694140 () Bool)

(assert (=> d!1188951 (= c!694140 ((_ is Nil!42952) lt!1422193))))

(assert (=> d!1188951 (= (++!11238 lt!1422193 lt!1422202) lt!1422418)))

(declare-fun b!4014687 () Bool)

(assert (=> b!4014687 (= e!2489845 (or (not (= lt!1422202 Nil!42952)) (= lt!1422418 lt!1422193)))))

(assert (= (and d!1188951 c!694140) b!4014684))

(assert (= (and d!1188951 (not c!694140)) b!4014685))

(assert (= (and d!1188951 res!1632348) b!4014686))

(assert (= (and b!4014686 res!1632347) b!4014687))

(declare-fun m!4602075 () Bool)

(assert (=> b!4014686 m!4602075))

(assert (=> b!4014686 m!4601325))

(assert (=> b!4014686 m!4601389))

(declare-fun m!4602077 () Bool)

(assert (=> b!4014685 m!4602077))

(declare-fun m!4602079 () Bool)

(assert (=> d!1188951 m!4602079))

(assert (=> d!1188951 m!4601371))

(assert (=> d!1188951 m!4601395))

(assert (=> b!4014195 d!1188951))

(declare-fun d!1188953 () Bool)

(declare-fun lt!1422419 () List!43076)

(assert (=> d!1188953 (= (++!11238 lt!1422193 lt!1422419) prefix!494)))

(declare-fun e!2489847 () List!43076)

(assert (=> d!1188953 (= lt!1422419 e!2489847)))

(declare-fun c!694141 () Bool)

(assert (=> d!1188953 (= c!694141 ((_ is Cons!42952) lt!1422193))))

(assert (=> d!1188953 (>= (size!32117 prefix!494) (size!32117 lt!1422193))))

(assert (=> d!1188953 (= (getSuffix!2348 prefix!494 lt!1422193) lt!1422419)))

(declare-fun b!4014690 () Bool)

(assert (=> b!4014690 (= e!2489847 (getSuffix!2348 (tail!6253 prefix!494) (t!333265 lt!1422193)))))

(declare-fun b!4014691 () Bool)

(assert (=> b!4014691 (= e!2489847 prefix!494)))

(assert (= (and d!1188953 c!694141) b!4014690))

(assert (= (and d!1188953 (not c!694141)) b!4014691))

(declare-fun m!4602081 () Bool)

(assert (=> d!1188953 m!4602081))

(assert (=> d!1188953 m!4601327))

(assert (=> d!1188953 m!4601325))

(assert (=> b!4014690 m!4601913))

(assert (=> b!4014690 m!4601913))

(declare-fun m!4602085 () Bool)

(assert (=> b!4014690 m!4602085))

(assert (=> b!4014195 d!1188953))

(declare-fun b!4014693 () Bool)

(declare-fun res!1632354 () Bool)

(declare-fun e!2489850 () Bool)

(assert (=> b!4014693 (=> (not res!1632354) (not e!2489850))))

(assert (=> b!4014693 (= res!1632354 (= (head!8521 lt!1422193) (head!8521 prefix!494)))))

(declare-fun b!4014692 () Bool)

(declare-fun e!2489848 () Bool)

(assert (=> b!4014692 (= e!2489848 e!2489850)))

(declare-fun res!1632353 () Bool)

(assert (=> b!4014692 (=> (not res!1632353) (not e!2489850))))

(assert (=> b!4014692 (= res!1632353 (not ((_ is Nil!42952) prefix!494)))))

(declare-fun b!4014695 () Bool)

(declare-fun e!2489849 () Bool)

(assert (=> b!4014695 (= e!2489849 (>= (size!32117 prefix!494) (size!32117 lt!1422193)))))

(declare-fun d!1188955 () Bool)

(assert (=> d!1188955 e!2489849))

(declare-fun res!1632351 () Bool)

(assert (=> d!1188955 (=> res!1632351 e!2489849)))

(declare-fun lt!1422420 () Bool)

(assert (=> d!1188955 (= res!1632351 (not lt!1422420))))

(assert (=> d!1188955 (= lt!1422420 e!2489848)))

(declare-fun res!1632352 () Bool)

(assert (=> d!1188955 (=> res!1632352 e!2489848)))

(assert (=> d!1188955 (= res!1632352 ((_ is Nil!42952) lt!1422193))))

(assert (=> d!1188955 (= (isPrefix!3923 lt!1422193 prefix!494) lt!1422420)))

(declare-fun b!4014694 () Bool)

(assert (=> b!4014694 (= e!2489850 (isPrefix!3923 (tail!6253 lt!1422193) (tail!6253 prefix!494)))))

(assert (= (and d!1188955 (not res!1632352)) b!4014692))

(assert (= (and b!4014692 res!1632353) b!4014693))

(assert (= (and b!4014693 res!1632354) b!4014694))

(assert (= (and d!1188955 (not res!1632351)) b!4014695))

(assert (=> b!4014693 m!4601811))

(assert (=> b!4014693 m!4601911))

(assert (=> b!4014695 m!4601327))

(assert (=> b!4014695 m!4601325))

(assert (=> b!4014694 m!4601817))

(assert (=> b!4014694 m!4601913))

(assert (=> b!4014694 m!4601817))

(assert (=> b!4014694 m!4601913))

(declare-fun m!4602089 () Bool)

(assert (=> b!4014694 m!4602089))

(assert (=> b!4014195 d!1188955))

(declare-fun d!1188959 () Bool)

(assert (=> d!1188959 (isPrefix!3923 lt!1422193 prefix!494)))

(declare-fun lt!1422425 () Unit!61996)

(declare-fun choose!24266 (List!43076 List!43076 List!43076) Unit!61996)

(assert (=> d!1188959 (= lt!1422425 (choose!24266 prefix!494 lt!1422193 lt!1422205))))

(assert (=> d!1188959 (isPrefix!3923 prefix!494 lt!1422205)))

(assert (=> d!1188959 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!495 prefix!494 lt!1422193 lt!1422205) lt!1422425)))

(declare-fun bs!589580 () Bool)

(assert (= bs!589580 d!1188959))

(assert (=> bs!589580 m!4601311))

(declare-fun m!4602105 () Bool)

(assert (=> bs!589580 m!4602105))

(assert (=> bs!589580 m!4601263))

(assert (=> b!4014195 d!1188959))

(declare-fun b!4014718 () Bool)

(declare-fun res!1632357 () Bool)

(declare-fun e!2489858 () Bool)

(assert (=> b!4014718 (=> (not res!1632357) (not e!2489858))))

(declare-fun lt!1422426 () List!43076)

(assert (=> b!4014718 (= res!1632357 (= (size!32117 lt!1422426) (+ (size!32117 prefix!494) (size!32117 newSuffix!27))))))

(declare-fun b!4014716 () Bool)

(declare-fun e!2489857 () List!43076)

(assert (=> b!4014716 (= e!2489857 newSuffix!27)))

(declare-fun b!4014717 () Bool)

(assert (=> b!4014717 (= e!2489857 (Cons!42952 (h!48372 prefix!494) (++!11238 (t!333265 prefix!494) newSuffix!27)))))

(declare-fun d!1188963 () Bool)

(assert (=> d!1188963 e!2489858))

(declare-fun res!1632358 () Bool)

(assert (=> d!1188963 (=> (not res!1632358) (not e!2489858))))

(assert (=> d!1188963 (= res!1632358 (= (content!6515 lt!1422426) ((_ map or) (content!6515 prefix!494) (content!6515 newSuffix!27))))))

(assert (=> d!1188963 (= lt!1422426 e!2489857)))

(declare-fun c!694144 () Bool)

(assert (=> d!1188963 (= c!694144 ((_ is Nil!42952) prefix!494))))

(assert (=> d!1188963 (= (++!11238 prefix!494 newSuffix!27) lt!1422426)))

(declare-fun b!4014719 () Bool)

(assert (=> b!4014719 (= e!2489858 (or (not (= newSuffix!27 Nil!42952)) (= lt!1422426 prefix!494)))))

(assert (= (and d!1188963 c!694144) b!4014716))

(assert (= (and d!1188963 (not c!694144)) b!4014717))

(assert (= (and d!1188963 res!1632358) b!4014718))

(assert (= (and b!4014718 res!1632357) b!4014719))

(declare-fun m!4602107 () Bool)

(assert (=> b!4014718 m!4602107))

(assert (=> b!4014718 m!4601327))

(assert (=> b!4014718 m!4601279))

(declare-fun m!4602109 () Bool)

(assert (=> b!4014717 m!4602109))

(declare-fun m!4602111 () Bool)

(assert (=> d!1188963 m!4602111))

(declare-fun m!4602113 () Bool)

(assert (=> d!1188963 m!4602113))

(declare-fun m!4602115 () Bool)

(assert (=> d!1188963 m!4602115))

(assert (=> b!4014216 d!1188963))

(declare-fun b!4014728 () Bool)

(declare-fun res!1632359 () Bool)

(declare-fun e!2489863 () Bool)

(assert (=> b!4014728 (=> (not res!1632359) (not e!2489863))))

(declare-fun lt!1422427 () List!43076)

(assert (=> b!4014728 (= res!1632359 (= (size!32117 lt!1422427) (+ (size!32117 lt!1422193) (size!32117 newSuffixResult!27))))))

(declare-fun b!4014725 () Bool)

(declare-fun e!2489862 () List!43076)

(assert (=> b!4014725 (= e!2489862 newSuffixResult!27)))

(declare-fun b!4014727 () Bool)

(assert (=> b!4014727 (= e!2489862 (Cons!42952 (h!48372 lt!1422193) (++!11238 (t!333265 lt!1422193) newSuffixResult!27)))))

(declare-fun d!1188965 () Bool)

(assert (=> d!1188965 e!2489863))

(declare-fun res!1632360 () Bool)

(assert (=> d!1188965 (=> (not res!1632360) (not e!2489863))))

(assert (=> d!1188965 (= res!1632360 (= (content!6515 lt!1422427) ((_ map or) (content!6515 lt!1422193) (content!6515 newSuffixResult!27))))))

(assert (=> d!1188965 (= lt!1422427 e!2489862)))

(declare-fun c!694145 () Bool)

(assert (=> d!1188965 (= c!694145 ((_ is Nil!42952) lt!1422193))))

(assert (=> d!1188965 (= (++!11238 lt!1422193 newSuffixResult!27) lt!1422427)))

(declare-fun b!4014729 () Bool)

(assert (=> b!4014729 (= e!2489863 (or (not (= newSuffixResult!27 Nil!42952)) (= lt!1422427 lt!1422193)))))

(assert (= (and d!1188965 c!694145) b!4014725))

(assert (= (and d!1188965 (not c!694145)) b!4014727))

(assert (= (and d!1188965 res!1632360) b!4014728))

(assert (= (and b!4014728 res!1632359) b!4014729))

(declare-fun m!4602117 () Bool)

(assert (=> b!4014728 m!4602117))

(assert (=> b!4014728 m!4601325))

(declare-fun m!4602119 () Bool)

(assert (=> b!4014728 m!4602119))

(declare-fun m!4602121 () Bool)

(assert (=> b!4014727 m!4602121))

(declare-fun m!4602123 () Bool)

(assert (=> d!1188965 m!4602123))

(assert (=> d!1188965 m!4601371))

(declare-fun m!4602125 () Bool)

(assert (=> d!1188965 m!4602125))

(assert (=> b!4014216 d!1188965))

(declare-fun b!4014739 () Bool)

(declare-fun res!1632361 () Bool)

(declare-fun e!2489870 () Bool)

(assert (=> b!4014739 (=> (not res!1632361) (not e!2489870))))

(declare-fun lt!1422428 () List!43076)

(assert (=> b!4014739 (= res!1632361 (= (size!32117 lt!1422428) (+ (size!32117 prefix!494) (size!32117 lt!1422221))))))

(declare-fun b!4014737 () Bool)

(declare-fun e!2489869 () List!43076)

(assert (=> b!4014737 (= e!2489869 lt!1422221)))

(declare-fun b!4014738 () Bool)

(assert (=> b!4014738 (= e!2489869 (Cons!42952 (h!48372 prefix!494) (++!11238 (t!333265 prefix!494) lt!1422221)))))

(declare-fun d!1188967 () Bool)

(assert (=> d!1188967 e!2489870))

(declare-fun res!1632362 () Bool)

(assert (=> d!1188967 (=> (not res!1632362) (not e!2489870))))

(assert (=> d!1188967 (= res!1632362 (= (content!6515 lt!1422428) ((_ map or) (content!6515 prefix!494) (content!6515 lt!1422221))))))

(assert (=> d!1188967 (= lt!1422428 e!2489869)))

(declare-fun c!694146 () Bool)

(assert (=> d!1188967 (= c!694146 ((_ is Nil!42952) prefix!494))))

(assert (=> d!1188967 (= (++!11238 prefix!494 lt!1422221) lt!1422428)))

(declare-fun b!4014740 () Bool)

(assert (=> b!4014740 (= e!2489870 (or (not (= lt!1422221 Nil!42952)) (= lt!1422428 prefix!494)))))

(assert (= (and d!1188967 c!694146) b!4014737))

(assert (= (and d!1188967 (not c!694146)) b!4014738))

(assert (= (and d!1188967 res!1632362) b!4014739))

(assert (= (and b!4014739 res!1632361) b!4014740))

(declare-fun m!4602127 () Bool)

(assert (=> b!4014739 m!4602127))

(assert (=> b!4014739 m!4601327))

(declare-fun m!4602129 () Bool)

(assert (=> b!4014739 m!4602129))

(declare-fun m!4602131 () Bool)

(assert (=> b!4014738 m!4602131))

(declare-fun m!4602133 () Bool)

(assert (=> d!1188967 m!4602133))

(assert (=> d!1188967 m!4602113))

(declare-fun m!4602135 () Bool)

(assert (=> d!1188967 m!4602135))

(assert (=> b!4014194 d!1188967))

(declare-fun b!4014747 () Bool)

(declare-fun res!1632363 () Bool)

(declare-fun e!2489874 () Bool)

(assert (=> b!4014747 (=> (not res!1632363) (not e!2489874))))

(declare-fun lt!1422429 () List!43076)

(assert (=> b!4014747 (= res!1632363 (= (size!32117 lt!1422429) (+ (size!32117 lt!1422196) (size!32117 lt!1422217))))))

(declare-fun b!4014745 () Bool)

(declare-fun e!2489873 () List!43076)

(assert (=> b!4014745 (= e!2489873 lt!1422217)))

(declare-fun b!4014746 () Bool)

(assert (=> b!4014746 (= e!2489873 (Cons!42952 (h!48372 lt!1422196) (++!11238 (t!333265 lt!1422196) lt!1422217)))))

(declare-fun d!1188969 () Bool)

(assert (=> d!1188969 e!2489874))

(declare-fun res!1632364 () Bool)

(assert (=> d!1188969 (=> (not res!1632364) (not e!2489874))))

(assert (=> d!1188969 (= res!1632364 (= (content!6515 lt!1422429) ((_ map or) (content!6515 lt!1422196) (content!6515 lt!1422217))))))

(assert (=> d!1188969 (= lt!1422429 e!2489873)))

(declare-fun c!694147 () Bool)

(assert (=> d!1188969 (= c!694147 ((_ is Nil!42952) lt!1422196))))

(assert (=> d!1188969 (= (++!11238 lt!1422196 lt!1422217) lt!1422429)))

(declare-fun b!4014748 () Bool)

(assert (=> b!4014748 (= e!2489874 (or (not (= lt!1422217 Nil!42952)) (= lt!1422429 lt!1422196)))))

(assert (= (and d!1188969 c!694147) b!4014745))

(assert (= (and d!1188969 (not c!694147)) b!4014746))

(assert (= (and d!1188969 res!1632364) b!4014747))

(assert (= (and b!4014747 res!1632363) b!4014748))

(declare-fun m!4602137 () Bool)

(assert (=> b!4014747 m!4602137))

(assert (=> b!4014747 m!4601973))

(declare-fun m!4602139 () Bool)

(assert (=> b!4014747 m!4602139))

(declare-fun m!4602141 () Bool)

(assert (=> b!4014746 m!4602141))

(declare-fun m!4602143 () Bool)

(assert (=> d!1188969 m!4602143))

(declare-fun m!4602145 () Bool)

(assert (=> d!1188969 m!4602145))

(declare-fun m!4602147 () Bool)

(assert (=> d!1188969 m!4602147))

(assert (=> b!4014194 d!1188969))

(declare-fun d!1188971 () Bool)

(assert (=> d!1188971 (= (++!11238 (++!11238 prefix!494 newSuffix!27) lt!1422217) (++!11238 prefix!494 (++!11238 newSuffix!27 lt!1422217)))))

(declare-fun lt!1422430 () Unit!61996)

(assert (=> d!1188971 (= lt!1422430 (choose!24256 prefix!494 newSuffix!27 lt!1422217))))

(assert (=> d!1188971 (= (lemmaConcatAssociativity!2548 prefix!494 newSuffix!27 lt!1422217) lt!1422430)))

(declare-fun bs!589581 () Bool)

(assert (= bs!589581 d!1188971))

(assert (=> bs!589581 m!4601179))

(declare-fun m!4602149 () Bool)

(assert (=> bs!589581 m!4602149))

(declare-fun m!4602151 () Bool)

(assert (=> bs!589581 m!4602151))

(assert (=> bs!589581 m!4601253))

(assert (=> bs!589581 m!4601179))

(assert (=> bs!589581 m!4601253))

(declare-fun m!4602153 () Bool)

(assert (=> bs!589581 m!4602153))

(assert (=> b!4014194 d!1188971))

(declare-fun d!1188973 () Bool)

(assert (=> d!1188973 (isPrefix!3923 lt!1422219 (++!11238 lt!1422219 (_2!24183 (v!39619 lt!1422197))))))

(declare-fun lt!1422431 () Unit!61996)

(assert (=> d!1188973 (= lt!1422431 (choose!24261 lt!1422219 (_2!24183 (v!39619 lt!1422197))))))

(assert (=> d!1188973 (= (lemmaConcatTwoListThenFirstIsPrefix!2764 lt!1422219 (_2!24183 (v!39619 lt!1422197))) lt!1422431)))

(declare-fun bs!589582 () Bool)

(assert (= bs!589582 d!1188973))

(assert (=> bs!589582 m!4601215))

(assert (=> bs!589582 m!4601215))

(declare-fun m!4602155 () Bool)

(assert (=> bs!589582 m!4602155))

(declare-fun m!4602157 () Bool)

(assert (=> bs!589582 m!4602157))

(assert (=> b!4014198 d!1188973))

(declare-fun d!1188975 () Bool)

(assert (=> d!1188975 (= (maxPrefixOneRule!2743 thiss!21717 (rule!9882 (_1!24183 (v!39619 lt!1422197))) lt!1422196) (Some!9249 (tuple2!42099 (Token!12811 (apply!10033 (transformation!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197)))) (seqFromList!5061 lt!1422219)) (rule!9882 (_1!24183 (v!39619 lt!1422197))) (size!32117 lt!1422219) lt!1422219) (_2!24183 (v!39619 lt!1422197)))))))

(declare-fun lt!1422432 () Unit!61996)

(assert (=> d!1188975 (= lt!1422432 (choose!24259 thiss!21717 rules!2999 lt!1422219 lt!1422196 (_2!24183 (v!39619 lt!1422197)) (rule!9882 (_1!24183 (v!39619 lt!1422197)))))))

(assert (=> d!1188975 (not (isEmpty!25656 rules!2999))))

(assert (=> d!1188975 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1561 thiss!21717 rules!2999 lt!1422219 lt!1422196 (_2!24183 (v!39619 lt!1422197)) (rule!9882 (_1!24183 (v!39619 lt!1422197)))) lt!1422432)))

(declare-fun bs!589583 () Bool)

(assert (= bs!589583 d!1188975))

(assert (=> bs!589583 m!4601229))

(assert (=> bs!589583 m!4601247))

(assert (=> bs!589583 m!4601245))

(assert (=> bs!589583 m!4601175))

(assert (=> bs!589583 m!4601245))

(assert (=> bs!589583 m!4601249))

(declare-fun m!4602159 () Bool)

(assert (=> bs!589583 m!4602159))

(assert (=> b!4014198 d!1188975))

(declare-fun d!1188977 () Bool)

(assert (=> d!1188977 (= (apply!10033 (transformation!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197)))) (seqFromList!5061 lt!1422219)) (dynLambda!18227 (toValue!9344 (transformation!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197))))) (seqFromList!5061 lt!1422219)))))

(declare-fun b_lambda!117171 () Bool)

(assert (=> (not b_lambda!117171) (not d!1188977)))

(declare-fun tb!241465 () Bool)

(declare-fun t!333293 () Bool)

(assert (=> (and b!4014208 (= (toValue!9344 (transformation!6836 (h!48374 rules!2999))) (toValue!9344 (transformation!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197)))))) t!333293) tb!241465))

(declare-fun result!292634 () Bool)

(assert (=> tb!241465 (= result!292634 (inv!21 (dynLambda!18227 (toValue!9344 (transformation!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197))))) (seqFromList!5061 lt!1422219))))))

(declare-fun m!4602161 () Bool)

(assert (=> tb!241465 m!4602161))

(assert (=> d!1188977 t!333293))

(declare-fun b_and!308459 () Bool)

(assert (= b_and!308447 (and (=> t!333293 result!292634) b_and!308459)))

(declare-fun tb!241471 () Bool)

(declare-fun t!333299 () Bool)

(assert (=> (and b!4014209 (= (toValue!9344 (transformation!6836 (rule!9882 token!484))) (toValue!9344 (transformation!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197)))))) t!333299) tb!241471))

(declare-fun result!292640 () Bool)

(assert (= result!292640 result!292634))

(assert (=> d!1188977 t!333299))

(declare-fun b_and!308461 () Bool)

(assert (= b_and!308449 (and (=> t!333299 result!292640) b_and!308461)))

(assert (=> d!1188977 m!4601245))

(declare-fun m!4602167 () Bool)

(assert (=> d!1188977 m!4602167))

(assert (=> b!4014198 d!1188977))

(declare-fun b!4014759 () Bool)

(declare-fun res!1632365 () Bool)

(declare-fun e!2489888 () Bool)

(assert (=> b!4014759 (=> (not res!1632365) (not e!2489888))))

(declare-fun lt!1422433 () List!43076)

(assert (=> b!4014759 (= res!1632365 (= (size!32117 lt!1422433) (+ (size!32117 lt!1422219) (size!32117 newSuffixResult!27))))))

(declare-fun b!4014757 () Bool)

(declare-fun e!2489887 () List!43076)

(assert (=> b!4014757 (= e!2489887 newSuffixResult!27)))

(declare-fun b!4014758 () Bool)

(assert (=> b!4014758 (= e!2489887 (Cons!42952 (h!48372 lt!1422219) (++!11238 (t!333265 lt!1422219) newSuffixResult!27)))))

(declare-fun d!1188979 () Bool)

(assert (=> d!1188979 e!2489888))

(declare-fun res!1632366 () Bool)

(assert (=> d!1188979 (=> (not res!1632366) (not e!2489888))))

(assert (=> d!1188979 (= res!1632366 (= (content!6515 lt!1422433) ((_ map or) (content!6515 lt!1422219) (content!6515 newSuffixResult!27))))))

(assert (=> d!1188979 (= lt!1422433 e!2489887)))

(declare-fun c!694148 () Bool)

(assert (=> d!1188979 (= c!694148 ((_ is Nil!42952) lt!1422219))))

(assert (=> d!1188979 (= (++!11238 lt!1422219 newSuffixResult!27) lt!1422433)))

(declare-fun b!4014760 () Bool)

(assert (=> b!4014760 (= e!2489888 (or (not (= newSuffixResult!27 Nil!42952)) (= lt!1422433 lt!1422219)))))

(assert (= (and d!1188979 c!694148) b!4014757))

(assert (= (and d!1188979 (not c!694148)) b!4014758))

(assert (= (and d!1188979 res!1632366) b!4014759))

(assert (= (and b!4014759 res!1632365) b!4014760))

(declare-fun m!4602169 () Bool)

(assert (=> b!4014759 m!4602169))

(assert (=> b!4014759 m!4601247))

(assert (=> b!4014759 m!4602119))

(declare-fun m!4602171 () Bool)

(assert (=> b!4014758 m!4602171))

(declare-fun m!4602173 () Bool)

(assert (=> d!1188979 m!4602173))

(assert (=> d!1188979 m!4601963))

(assert (=> d!1188979 m!4602125))

(assert (=> b!4014198 d!1188979))

(declare-fun b!4014762 () Bool)

(declare-fun res!1632370 () Bool)

(declare-fun e!2489891 () Bool)

(assert (=> b!4014762 (=> (not res!1632370) (not e!2489891))))

(assert (=> b!4014762 (= res!1632370 (= (head!8521 lt!1422219) (head!8521 lt!1422207)))))

(declare-fun b!4014761 () Bool)

(declare-fun e!2489889 () Bool)

(assert (=> b!4014761 (= e!2489889 e!2489891)))

(declare-fun res!1632369 () Bool)

(assert (=> b!4014761 (=> (not res!1632369) (not e!2489891))))

(assert (=> b!4014761 (= res!1632369 (not ((_ is Nil!42952) lt!1422207)))))

(declare-fun b!4014764 () Bool)

(declare-fun e!2489890 () Bool)

(assert (=> b!4014764 (= e!2489890 (>= (size!32117 lt!1422207) (size!32117 lt!1422219)))))

(declare-fun d!1188981 () Bool)

(assert (=> d!1188981 e!2489890))

(declare-fun res!1632367 () Bool)

(assert (=> d!1188981 (=> res!1632367 e!2489890)))

(declare-fun lt!1422434 () Bool)

(assert (=> d!1188981 (= res!1632367 (not lt!1422434))))

(assert (=> d!1188981 (= lt!1422434 e!2489889)))

(declare-fun res!1632368 () Bool)

(assert (=> d!1188981 (=> res!1632368 e!2489889)))

(assert (=> d!1188981 (= res!1632368 ((_ is Nil!42952) lt!1422219))))

(assert (=> d!1188981 (= (isPrefix!3923 lt!1422219 lt!1422207) lt!1422434)))

(declare-fun b!4014763 () Bool)

(assert (=> b!4014763 (= e!2489891 (isPrefix!3923 (tail!6253 lt!1422219) (tail!6253 lt!1422207)))))

(assert (= (and d!1188981 (not res!1632368)) b!4014761))

(assert (= (and b!4014761 res!1632369) b!4014762))

(assert (= (and b!4014762 res!1632370) b!4014763))

(assert (= (and d!1188981 (not res!1632367)) b!4014764))

(declare-fun m!4602175 () Bool)

(assert (=> b!4014762 m!4602175))

(declare-fun m!4602177 () Bool)

(assert (=> b!4014762 m!4602177))

(declare-fun m!4602179 () Bool)

(assert (=> b!4014764 m!4602179))

(assert (=> b!4014764 m!4601247))

(declare-fun m!4602181 () Bool)

(assert (=> b!4014763 m!4602181))

(declare-fun m!4602183 () Bool)

(assert (=> b!4014763 m!4602183))

(assert (=> b!4014763 m!4602181))

(assert (=> b!4014763 m!4602183))

(declare-fun m!4602185 () Bool)

(assert (=> b!4014763 m!4602185))

(assert (=> b!4014198 d!1188981))

(declare-fun d!1188983 () Bool)

(assert (=> d!1188983 (= (size!32118 (_1!24183 (v!39619 lt!1422197))) (size!32117 (originalCharacters!7436 (_1!24183 (v!39619 lt!1422197)))))))

(declare-fun Unit!62001 () Unit!61996)

(assert (=> d!1188983 (= (lemmaCharactersSize!1395 (_1!24183 (v!39619 lt!1422197))) Unit!62001)))

(declare-fun bs!589584 () Bool)

(assert (= bs!589584 d!1188983))

(declare-fun m!4602187 () Bool)

(assert (=> bs!589584 m!4602187))

(assert (=> b!4014198 d!1188983))

(declare-fun d!1188985 () Bool)

(declare-fun lt!1422437 () BalanceConc!25688)

(assert (=> d!1188985 (= (list!15966 lt!1422437) (originalCharacters!7436 (_1!24183 (v!39619 lt!1422197))))))

(declare-fun dynLambda!18228 (Int TokenValue!7066) BalanceConc!25688)

(assert (=> d!1188985 (= lt!1422437 (dynLambda!18228 (toChars!9203 (transformation!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197))))) (value!215460 (_1!24183 (v!39619 lt!1422197)))))))

(assert (=> d!1188985 (= (charsOf!4652 (_1!24183 (v!39619 lt!1422197))) lt!1422437)))

(declare-fun b_lambda!117179 () Bool)

(assert (=> (not b_lambda!117179) (not d!1188985)))

(declare-fun t!333302 () Bool)

(declare-fun tb!241473 () Bool)

(assert (=> (and b!4014208 (= (toChars!9203 (transformation!6836 (h!48374 rules!2999))) (toChars!9203 (transformation!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197)))))) t!333302) tb!241473))

(declare-fun b!4014769 () Bool)

(declare-fun e!2489894 () Bool)

(declare-fun tp!1220823 () Bool)

(declare-fun inv!57380 (Conc!13047) Bool)

(assert (=> b!4014769 (= e!2489894 (and (inv!57380 (c!694060 (dynLambda!18228 (toChars!9203 (transformation!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197))))) (value!215460 (_1!24183 (v!39619 lt!1422197)))))) tp!1220823))))

(declare-fun result!292642 () Bool)

(declare-fun inv!57381 (BalanceConc!25688) Bool)

(assert (=> tb!241473 (= result!292642 (and (inv!57381 (dynLambda!18228 (toChars!9203 (transformation!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197))))) (value!215460 (_1!24183 (v!39619 lt!1422197))))) e!2489894))))

(assert (= tb!241473 b!4014769))

(declare-fun m!4602189 () Bool)

(assert (=> b!4014769 m!4602189))

(declare-fun m!4602191 () Bool)

(assert (=> tb!241473 m!4602191))

(assert (=> d!1188985 t!333302))

(declare-fun b_and!308463 () Bool)

(assert (= b_and!308425 (and (=> t!333302 result!292642) b_and!308463)))

(declare-fun t!333304 () Bool)

(declare-fun tb!241475 () Bool)

(assert (=> (and b!4014209 (= (toChars!9203 (transformation!6836 (rule!9882 token!484))) (toChars!9203 (transformation!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197)))))) t!333304) tb!241475))

(declare-fun result!292646 () Bool)

(assert (= result!292646 result!292642))

(assert (=> d!1188985 t!333304))

(declare-fun b_and!308465 () Bool)

(assert (= b_and!308429 (and (=> t!333304 result!292646) b_and!308465)))

(declare-fun m!4602193 () Bool)

(assert (=> d!1188985 m!4602193))

(declare-fun m!4602195 () Bool)

(assert (=> d!1188985 m!4602195))

(assert (=> b!4014198 d!1188985))

(declare-fun d!1188987 () Bool)

(declare-fun res!1632375 () Bool)

(declare-fun e!2489897 () Bool)

(assert (=> d!1188987 (=> (not res!1632375) (not e!2489897))))

(assert (=> d!1188987 (= res!1632375 (validRegex!5320 (regex!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197))))))))

(assert (=> d!1188987 (= (ruleValid!2768 thiss!21717 (rule!9882 (_1!24183 (v!39619 lt!1422197)))) e!2489897)))

(declare-fun b!4014774 () Bool)

(declare-fun res!1632376 () Bool)

(assert (=> b!4014774 (=> (not res!1632376) (not e!2489897))))

(assert (=> b!4014774 (= res!1632376 (not (nullable!4120 (regex!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197)))))))))

(declare-fun b!4014775 () Bool)

(assert (=> b!4014775 (= e!2489897 (not (= (tag!7696 (rule!9882 (_1!24183 (v!39619 lt!1422197)))) (String!49049 ""))))))

(assert (= (and d!1188987 res!1632375) b!4014774))

(assert (= (and b!4014774 res!1632376) b!4014775))

(declare-fun m!4602197 () Bool)

(assert (=> d!1188987 m!4602197))

(declare-fun m!4602199 () Bool)

(assert (=> b!4014774 m!4602199))

(assert (=> b!4014198 d!1188987))

(declare-fun d!1188989 () Bool)

(assert (=> d!1188989 (= (seqFromList!5061 lt!1422219) (fromListB!2318 lt!1422219))))

(declare-fun bs!589585 () Bool)

(assert (= bs!589585 d!1188989))

(declare-fun m!4602201 () Bool)

(assert (=> bs!589585 m!4602201))

(assert (=> b!4014198 d!1188989))

(declare-fun d!1188991 () Bool)

(assert (=> d!1188991 (ruleValid!2768 thiss!21717 (rule!9882 (_1!24183 (v!39619 lt!1422197))))))

(declare-fun lt!1422440 () Unit!61996)

(declare-fun choose!24267 (LexerInterface!6425 Rule!13472 List!43078) Unit!61996)

(assert (=> d!1188991 (= lt!1422440 (choose!24267 thiss!21717 (rule!9882 (_1!24183 (v!39619 lt!1422197))) rules!2999))))

(declare-fun contains!8540 (List!43078 Rule!13472) Bool)

(assert (=> d!1188991 (contains!8540 rules!2999 (rule!9882 (_1!24183 (v!39619 lt!1422197))))))

(assert (=> d!1188991 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1842 thiss!21717 (rule!9882 (_1!24183 (v!39619 lt!1422197))) rules!2999) lt!1422440)))

(declare-fun bs!589586 () Bool)

(assert (= bs!589586 d!1188991))

(assert (=> bs!589586 m!4601231))

(declare-fun m!4602203 () Bool)

(assert (=> bs!589586 m!4602203))

(declare-fun m!4602205 () Bool)

(assert (=> bs!589586 m!4602205))

(assert (=> b!4014198 d!1188991))

(declare-fun b!4014777 () Bool)

(declare-fun res!1632380 () Bool)

(declare-fun e!2489900 () Bool)

(assert (=> b!4014777 (=> (not res!1632380) (not e!2489900))))

(assert (=> b!4014777 (= res!1632380 (= (head!8521 lt!1422219) (head!8521 (++!11238 lt!1422219 newSuffixResult!27))))))

(declare-fun b!4014776 () Bool)

(declare-fun e!2489898 () Bool)

(assert (=> b!4014776 (= e!2489898 e!2489900)))

(declare-fun res!1632379 () Bool)

(assert (=> b!4014776 (=> (not res!1632379) (not e!2489900))))

(assert (=> b!4014776 (= res!1632379 (not ((_ is Nil!42952) (++!11238 lt!1422219 newSuffixResult!27))))))

(declare-fun b!4014779 () Bool)

(declare-fun e!2489899 () Bool)

(assert (=> b!4014779 (= e!2489899 (>= (size!32117 (++!11238 lt!1422219 newSuffixResult!27)) (size!32117 lt!1422219)))))

(declare-fun d!1188993 () Bool)

(assert (=> d!1188993 e!2489899))

(declare-fun res!1632377 () Bool)

(assert (=> d!1188993 (=> res!1632377 e!2489899)))

(declare-fun lt!1422441 () Bool)

(assert (=> d!1188993 (= res!1632377 (not lt!1422441))))

(assert (=> d!1188993 (= lt!1422441 e!2489898)))

(declare-fun res!1632378 () Bool)

(assert (=> d!1188993 (=> res!1632378 e!2489898)))

(assert (=> d!1188993 (= res!1632378 ((_ is Nil!42952) lt!1422219))))

(assert (=> d!1188993 (= (isPrefix!3923 lt!1422219 (++!11238 lt!1422219 newSuffixResult!27)) lt!1422441)))

(declare-fun b!4014778 () Bool)

(assert (=> b!4014778 (= e!2489900 (isPrefix!3923 (tail!6253 lt!1422219) (tail!6253 (++!11238 lt!1422219 newSuffixResult!27))))))

(assert (= (and d!1188993 (not res!1632378)) b!4014776))

(assert (= (and b!4014776 res!1632379) b!4014777))

(assert (= (and b!4014777 res!1632380) b!4014778))

(assert (= (and d!1188993 (not res!1632377)) b!4014779))

(assert (=> b!4014777 m!4602175))

(assert (=> b!4014777 m!4601225))

(declare-fun m!4602207 () Bool)

(assert (=> b!4014777 m!4602207))

(assert (=> b!4014779 m!4601225))

(declare-fun m!4602209 () Bool)

(assert (=> b!4014779 m!4602209))

(assert (=> b!4014779 m!4601247))

(assert (=> b!4014778 m!4602181))

(assert (=> b!4014778 m!4601225))

(declare-fun m!4602211 () Bool)

(assert (=> b!4014778 m!4602211))

(assert (=> b!4014778 m!4602181))

(assert (=> b!4014778 m!4602211))

(declare-fun m!4602213 () Bool)

(assert (=> b!4014778 m!4602213))

(assert (=> b!4014198 d!1188993))

(declare-fun d!1188995 () Bool)

(assert (=> d!1188995 (= (size!32118 token!484) (size!32117 (originalCharacters!7436 token!484)))))

(declare-fun Unit!62002 () Unit!61996)

(assert (=> d!1188995 (= (lemmaCharactersSize!1395 token!484) Unit!62002)))

(declare-fun bs!589587 () Bool)

(assert (= bs!589587 d!1188995))

(assert (=> bs!589587 m!4601275))

(assert (=> b!4014198 d!1188995))

(declare-fun d!1188997 () Bool)

(declare-fun lt!1422442 () Int)

(assert (=> d!1188997 (>= lt!1422442 0)))

(declare-fun e!2489901 () Int)

(assert (=> d!1188997 (= lt!1422442 e!2489901)))

(declare-fun c!694149 () Bool)

(assert (=> d!1188997 (= c!694149 ((_ is Nil!42952) lt!1422219))))

(assert (=> d!1188997 (= (size!32117 lt!1422219) lt!1422442)))

(declare-fun b!4014780 () Bool)

(assert (=> b!4014780 (= e!2489901 0)))

(declare-fun b!4014781 () Bool)

(assert (=> b!4014781 (= e!2489901 (+ 1 (size!32117 (t!333265 lt!1422219))))))

(assert (= (and d!1188997 c!694149) b!4014780))

(assert (= (and d!1188997 (not c!694149)) b!4014781))

(declare-fun m!4602215 () Bool)

(assert (=> b!4014781 m!4602215))

(assert (=> b!4014198 d!1188997))

(declare-fun d!1188999 () Bool)

(assert (=> d!1188999 (isPrefix!3923 lt!1422219 (++!11238 lt!1422219 newSuffixResult!27))))

(declare-fun lt!1422443 () Unit!61996)

(assert (=> d!1188999 (= lt!1422443 (choose!24261 lt!1422219 newSuffixResult!27))))

(assert (=> d!1188999 (= (lemmaConcatTwoListThenFirstIsPrefix!2764 lt!1422219 newSuffixResult!27) lt!1422443)))

(declare-fun bs!589588 () Bool)

(assert (= bs!589588 d!1188999))

(assert (=> bs!589588 m!4601225))

(assert (=> bs!589588 m!4601225))

(assert (=> bs!589588 m!4601235))

(declare-fun m!4602217 () Bool)

(assert (=> bs!589588 m!4602217))

(assert (=> b!4014198 d!1188999))

(declare-fun b!4014784 () Bool)

(declare-fun res!1632381 () Bool)

(declare-fun e!2489903 () Bool)

(assert (=> b!4014784 (=> (not res!1632381) (not e!2489903))))

(declare-fun lt!1422444 () List!43076)

(assert (=> b!4014784 (= res!1632381 (= (size!32117 lt!1422444) (+ (size!32117 lt!1422219) (size!32117 (_2!24183 (v!39619 lt!1422197))))))))

(declare-fun b!4014782 () Bool)

(declare-fun e!2489902 () List!43076)

(assert (=> b!4014782 (= e!2489902 (_2!24183 (v!39619 lt!1422197)))))

(declare-fun b!4014783 () Bool)

(assert (=> b!4014783 (= e!2489902 (Cons!42952 (h!48372 lt!1422219) (++!11238 (t!333265 lt!1422219) (_2!24183 (v!39619 lt!1422197)))))))

(declare-fun d!1189001 () Bool)

(assert (=> d!1189001 e!2489903))

(declare-fun res!1632382 () Bool)

(assert (=> d!1189001 (=> (not res!1632382) (not e!2489903))))

(assert (=> d!1189001 (= res!1632382 (= (content!6515 lt!1422444) ((_ map or) (content!6515 lt!1422219) (content!6515 (_2!24183 (v!39619 lt!1422197))))))))

(assert (=> d!1189001 (= lt!1422444 e!2489902)))

(declare-fun c!694150 () Bool)

(assert (=> d!1189001 (= c!694150 ((_ is Nil!42952) lt!1422219))))

(assert (=> d!1189001 (= (++!11238 lt!1422219 (_2!24183 (v!39619 lt!1422197))) lt!1422444)))

(declare-fun b!4014785 () Bool)

(assert (=> b!4014785 (= e!2489903 (or (not (= (_2!24183 (v!39619 lt!1422197)) Nil!42952)) (= lt!1422444 lt!1422219)))))

(assert (= (and d!1189001 c!694150) b!4014782))

(assert (= (and d!1189001 (not c!694150)) b!4014783))

(assert (= (and d!1189001 res!1632382) b!4014784))

(assert (= (and b!4014784 res!1632381) b!4014785))

(declare-fun m!4602219 () Bool)

(assert (=> b!4014784 m!4602219))

(assert (=> b!4014784 m!4601247))

(declare-fun m!4602221 () Bool)

(assert (=> b!4014784 m!4602221))

(declare-fun m!4602223 () Bool)

(assert (=> b!4014783 m!4602223))

(declare-fun m!4602225 () Bool)

(assert (=> d!1189001 m!4602225))

(assert (=> d!1189001 m!4601963))

(declare-fun m!4602227 () Bool)

(assert (=> d!1189001 m!4602227))

(assert (=> b!4014198 d!1189001))

(declare-fun b!4014786 () Bool)

(declare-fun e!2489904 () Bool)

(declare-fun e!2489907 () Bool)

(assert (=> b!4014786 (= e!2489904 e!2489907)))

(declare-fun res!1632383 () Bool)

(assert (=> b!4014786 (=> (not res!1632383) (not e!2489907))))

(declare-fun lt!1422449 () Option!9250)

(assert (=> b!4014786 (= res!1632383 (matchR!5702 (regex!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197)))) (list!15966 (charsOf!4652 (_1!24183 (get!14114 lt!1422449))))))))

(declare-fun b!4014787 () Bool)

(assert (=> b!4014787 (= e!2489907 (= (size!32118 (_1!24183 (get!14114 lt!1422449))) (size!32117 (originalCharacters!7436 (_1!24183 (get!14114 lt!1422449))))))))

(declare-fun b!4014788 () Bool)

(declare-fun res!1632384 () Bool)

(assert (=> b!4014788 (=> (not res!1632384) (not e!2489907))))

(assert (=> b!4014788 (= res!1632384 (< (size!32117 (_2!24183 (get!14114 lt!1422449))) (size!32117 lt!1422196)))))

(declare-fun d!1189003 () Bool)

(assert (=> d!1189003 e!2489904))

(declare-fun res!1632385 () Bool)

(assert (=> d!1189003 (=> res!1632385 e!2489904)))

(assert (=> d!1189003 (= res!1632385 (isEmpty!25659 lt!1422449))))

(declare-fun e!2489906 () Option!9250)

(assert (=> d!1189003 (= lt!1422449 e!2489906)))

(declare-fun c!694151 () Bool)

(declare-fun lt!1422445 () tuple2!42102)

(assert (=> d!1189003 (= c!694151 (isEmpty!25660 (_1!24185 lt!1422445)))))

(assert (=> d!1189003 (= lt!1422445 (findLongestMatch!1274 (regex!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197)))) lt!1422196))))

(assert (=> d!1189003 (ruleValid!2768 thiss!21717 (rule!9882 (_1!24183 (v!39619 lt!1422197))))))

(assert (=> d!1189003 (= (maxPrefixOneRule!2743 thiss!21717 (rule!9882 (_1!24183 (v!39619 lt!1422197))) lt!1422196) lt!1422449)))

(declare-fun b!4014789 () Bool)

(declare-fun e!2489905 () Bool)

(assert (=> b!4014789 (= e!2489905 (matchR!5702 (regex!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197)))) (_1!24185 (findLongestMatchInner!1361 (regex!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197)))) Nil!42952 (size!32117 Nil!42952) lt!1422196 lt!1422196 (size!32117 lt!1422196)))))))

(declare-fun b!4014790 () Bool)

(assert (=> b!4014790 (= e!2489906 (Some!9249 (tuple2!42099 (Token!12811 (apply!10033 (transformation!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197)))) (seqFromList!5061 (_1!24185 lt!1422445))) (rule!9882 (_1!24183 (v!39619 lt!1422197))) (size!32120 (seqFromList!5061 (_1!24185 lt!1422445))) (_1!24185 lt!1422445)) (_2!24185 lt!1422445))))))

(declare-fun lt!1422446 () Unit!61996)

(assert (=> b!4014790 (= lt!1422446 (longestMatchIsAcceptedByMatchOrIsEmpty!1334 (regex!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197)))) lt!1422196))))

(declare-fun res!1632389 () Bool)

(assert (=> b!4014790 (= res!1632389 (isEmpty!25660 (_1!24185 (findLongestMatchInner!1361 (regex!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197)))) Nil!42952 (size!32117 Nil!42952) lt!1422196 lt!1422196 (size!32117 lt!1422196)))))))

(assert (=> b!4014790 (=> res!1632389 e!2489905)))

(assert (=> b!4014790 e!2489905))

(declare-fun lt!1422447 () Unit!61996)

(assert (=> b!4014790 (= lt!1422447 lt!1422446)))

(declare-fun lt!1422448 () Unit!61996)

(assert (=> b!4014790 (= lt!1422448 (lemmaSemiInverse!1881 (transformation!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197)))) (seqFromList!5061 (_1!24185 lt!1422445))))))

(declare-fun b!4014791 () Bool)

(declare-fun res!1632388 () Bool)

(assert (=> b!4014791 (=> (not res!1632388) (not e!2489907))))

(assert (=> b!4014791 (= res!1632388 (= (++!11238 (list!15966 (charsOf!4652 (_1!24183 (get!14114 lt!1422449)))) (_2!24183 (get!14114 lt!1422449))) lt!1422196))))

(declare-fun b!4014792 () Bool)

(declare-fun res!1632387 () Bool)

(assert (=> b!4014792 (=> (not res!1632387) (not e!2489907))))

(assert (=> b!4014792 (= res!1632387 (= (value!215460 (_1!24183 (get!14114 lt!1422449))) (apply!10033 (transformation!6836 (rule!9882 (_1!24183 (get!14114 lt!1422449)))) (seqFromList!5061 (originalCharacters!7436 (_1!24183 (get!14114 lt!1422449)))))))))

(declare-fun b!4014793 () Bool)

(assert (=> b!4014793 (= e!2489906 None!9249)))

(declare-fun b!4014794 () Bool)

(declare-fun res!1632386 () Bool)

(assert (=> b!4014794 (=> (not res!1632386) (not e!2489907))))

(assert (=> b!4014794 (= res!1632386 (= (rule!9882 (_1!24183 (get!14114 lt!1422449))) (rule!9882 (_1!24183 (v!39619 lt!1422197)))))))

(assert (= (and d!1189003 c!694151) b!4014793))

(assert (= (and d!1189003 (not c!694151)) b!4014790))

(assert (= (and b!4014790 (not res!1632389)) b!4014789))

(assert (= (and d!1189003 (not res!1632385)) b!4014786))

(assert (= (and b!4014786 res!1632383) b!4014791))

(assert (= (and b!4014791 res!1632388) b!4014788))

(assert (= (and b!4014788 res!1632384) b!4014794))

(assert (= (and b!4014794 res!1632386) b!4014792))

(assert (= (and b!4014792 res!1632387) b!4014787))

(declare-fun m!4602229 () Bool)

(assert (=> b!4014788 m!4602229))

(declare-fun m!4602231 () Bool)

(assert (=> b!4014788 m!4602231))

(assert (=> b!4014788 m!4601973))

(assert (=> b!4014790 m!4601973))

(declare-fun m!4602233 () Bool)

(assert (=> b!4014790 m!4602233))

(declare-fun m!4602235 () Bool)

(assert (=> b!4014790 m!4602235))

(assert (=> b!4014790 m!4602233))

(declare-fun m!4602237 () Bool)

(assert (=> b!4014790 m!4602237))

(assert (=> b!4014790 m!4602233))

(declare-fun m!4602239 () Bool)

(assert (=> b!4014790 m!4602239))

(declare-fun m!4602241 () Bool)

(assert (=> b!4014790 m!4602241))

(assert (=> b!4014790 m!4601773))

(assert (=> b!4014790 m!4601773))

(assert (=> b!4014790 m!4601973))

(declare-fun m!4602243 () Bool)

(assert (=> b!4014790 m!4602243))

(assert (=> b!4014790 m!4602233))

(declare-fun m!4602245 () Bool)

(assert (=> b!4014790 m!4602245))

(declare-fun m!4602247 () Bool)

(assert (=> d!1189003 m!4602247))

(declare-fun m!4602249 () Bool)

(assert (=> d!1189003 m!4602249))

(declare-fun m!4602251 () Bool)

(assert (=> d!1189003 m!4602251))

(assert (=> d!1189003 m!4601231))

(assert (=> b!4014789 m!4601773))

(assert (=> b!4014789 m!4601973))

(assert (=> b!4014789 m!4601773))

(assert (=> b!4014789 m!4601973))

(assert (=> b!4014789 m!4602243))

(declare-fun m!4602253 () Bool)

(assert (=> b!4014789 m!4602253))

(assert (=> b!4014794 m!4602229))

(assert (=> b!4014791 m!4602229))

(declare-fun m!4602255 () Bool)

(assert (=> b!4014791 m!4602255))

(assert (=> b!4014791 m!4602255))

(declare-fun m!4602257 () Bool)

(assert (=> b!4014791 m!4602257))

(assert (=> b!4014791 m!4602257))

(declare-fun m!4602259 () Bool)

(assert (=> b!4014791 m!4602259))

(assert (=> b!4014787 m!4602229))

(declare-fun m!4602261 () Bool)

(assert (=> b!4014787 m!4602261))

(assert (=> b!4014786 m!4602229))

(assert (=> b!4014786 m!4602255))

(assert (=> b!4014786 m!4602255))

(assert (=> b!4014786 m!4602257))

(assert (=> b!4014786 m!4602257))

(declare-fun m!4602263 () Bool)

(assert (=> b!4014786 m!4602263))

(assert (=> b!4014792 m!4602229))

(declare-fun m!4602265 () Bool)

(assert (=> b!4014792 m!4602265))

(assert (=> b!4014792 m!4602265))

(declare-fun m!4602267 () Bool)

(assert (=> b!4014792 m!4602267))

(assert (=> b!4014198 d!1189003))

(declare-fun d!1189005 () Bool)

(declare-fun list!15968 (Conc!13047) List!43076)

(assert (=> d!1189005 (= (list!15966 (charsOf!4652 (_1!24183 (v!39619 lt!1422197)))) (list!15968 (c!694060 (charsOf!4652 (_1!24183 (v!39619 lt!1422197))))))))

(declare-fun bs!589589 () Bool)

(assert (= bs!589589 d!1189005))

(declare-fun m!4602269 () Bool)

(assert (=> bs!589589 m!4602269))

(assert (=> b!4014198 d!1189005))

(declare-fun d!1189007 () Bool)

(declare-fun e!2489910 () Bool)

(assert (=> d!1189007 e!2489910))

(declare-fun res!1632392 () Bool)

(assert (=> d!1189007 (=> (not res!1632392) (not e!2489910))))

(declare-fun semiInverseModEq!2927 (Int Int) Bool)

(assert (=> d!1189007 (= res!1632392 (semiInverseModEq!2927 (toChars!9203 (transformation!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197))))) (toValue!9344 (transformation!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197)))))))))

(declare-fun Unit!62003 () Unit!61996)

(assert (=> d!1189007 (= (lemmaInv!1051 (transformation!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197))))) Unit!62003)))

(declare-fun b!4014797 () Bool)

(declare-fun equivClasses!2826 (Int Int) Bool)

(assert (=> b!4014797 (= e!2489910 (equivClasses!2826 (toChars!9203 (transformation!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197))))) (toValue!9344 (transformation!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197)))))))))

(assert (= (and d!1189007 res!1632392) b!4014797))

(declare-fun m!4602271 () Bool)

(assert (=> d!1189007 m!4602271))

(declare-fun m!4602273 () Bool)

(assert (=> b!4014797 m!4602273))

(assert (=> b!4014198 d!1189007))

(declare-fun d!1189009 () Bool)

(declare-fun res!1632395 () Bool)

(declare-fun e!2489913 () Bool)

(assert (=> d!1189009 (=> (not res!1632395) (not e!2489913))))

(declare-fun rulesValid!2661 (LexerInterface!6425 List!43078) Bool)

(assert (=> d!1189009 (= res!1632395 (rulesValid!2661 thiss!21717 rules!2999))))

(assert (=> d!1189009 (= (rulesInvariant!5768 thiss!21717 rules!2999) e!2489913)))

(declare-fun b!4014800 () Bool)

(declare-datatypes ((List!43080 0))(
  ( (Nil!42956) (Cons!42956 (h!48376 String!49048) (t!333317 List!43080)) )
))
(declare-fun noDuplicateTag!2662 (LexerInterface!6425 List!43078 List!43080) Bool)

(assert (=> b!4014800 (= e!2489913 (noDuplicateTag!2662 thiss!21717 rules!2999 Nil!42956))))

(assert (= (and d!1189009 res!1632395) b!4014800))

(declare-fun m!4602275 () Bool)

(assert (=> d!1189009 m!4602275))

(declare-fun m!4602277 () Bool)

(assert (=> b!4014800 m!4602277))

(assert (=> b!4014219 d!1189009))

(declare-fun d!1189011 () Bool)

(assert (=> d!1189011 (= (inv!57373 (tag!7696 (rule!9882 token!484))) (= (mod (str.len (value!215459 (tag!7696 (rule!9882 token!484)))) 2) 0))))

(assert (=> b!4014218 d!1189011))

(declare-fun d!1189013 () Bool)

(declare-fun res!1632398 () Bool)

(declare-fun e!2489916 () Bool)

(assert (=> d!1189013 (=> (not res!1632398) (not e!2489916))))

(assert (=> d!1189013 (= res!1632398 (semiInverseModEq!2927 (toChars!9203 (transformation!6836 (rule!9882 token!484))) (toValue!9344 (transformation!6836 (rule!9882 token!484)))))))

(assert (=> d!1189013 (= (inv!57376 (transformation!6836 (rule!9882 token!484))) e!2489916)))

(declare-fun b!4014803 () Bool)

(assert (=> b!4014803 (= e!2489916 (equivClasses!2826 (toChars!9203 (transformation!6836 (rule!9882 token!484))) (toValue!9344 (transformation!6836 (rule!9882 token!484)))))))

(assert (= (and d!1189013 res!1632398) b!4014803))

(declare-fun m!4602279 () Bool)

(assert (=> d!1189013 m!4602279))

(declare-fun m!4602281 () Bool)

(assert (=> b!4014803 m!4602281))

(assert (=> b!4014218 d!1189013))

(declare-fun d!1189015 () Bool)

(assert (=> d!1189015 (= (inv!57373 (tag!7696 (h!48374 rules!2999))) (= (mod (str.len (value!215459 (tag!7696 (h!48374 rules!2999)))) 2) 0))))

(assert (=> b!4014190 d!1189015))

(declare-fun d!1189017 () Bool)

(declare-fun res!1632399 () Bool)

(declare-fun e!2489917 () Bool)

(assert (=> d!1189017 (=> (not res!1632399) (not e!2489917))))

(assert (=> d!1189017 (= res!1632399 (semiInverseModEq!2927 (toChars!9203 (transformation!6836 (h!48374 rules!2999))) (toValue!9344 (transformation!6836 (h!48374 rules!2999)))))))

(assert (=> d!1189017 (= (inv!57376 (transformation!6836 (h!48374 rules!2999))) e!2489917)))

(declare-fun b!4014804 () Bool)

(assert (=> b!4014804 (= e!2489917 (equivClasses!2826 (toChars!9203 (transformation!6836 (h!48374 rules!2999))) (toValue!9344 (transformation!6836 (h!48374 rules!2999)))))))

(assert (= (and d!1189017 res!1632399) b!4014804))

(declare-fun m!4602283 () Bool)

(assert (=> d!1189017 m!4602283))

(declare-fun m!4602285 () Bool)

(assert (=> b!4014804 m!4602285))

(assert (=> b!4014190 d!1189017))

(declare-fun b!4014823 () Bool)

(declare-fun e!2489924 () Bool)

(declare-fun lt!1422460 () Option!9250)

(assert (=> b!4014823 (= e!2489924 (contains!8540 rules!2999 (rule!9882 (_1!24183 (get!14114 lt!1422460)))))))

(declare-fun b!4014824 () Bool)

(declare-fun res!1632415 () Bool)

(assert (=> b!4014824 (=> (not res!1632415) (not e!2489924))))

(assert (=> b!4014824 (= res!1632415 (= (++!11238 (list!15966 (charsOf!4652 (_1!24183 (get!14114 lt!1422460)))) (_2!24183 (get!14114 lt!1422460))) lt!1422205))))

(declare-fun b!4014825 () Bool)

(declare-fun e!2489926 () Option!9250)

(declare-fun call!286539 () Option!9250)

(assert (=> b!4014825 (= e!2489926 call!286539)))

(declare-fun b!4014826 () Bool)

(declare-fun res!1632414 () Bool)

(assert (=> b!4014826 (=> (not res!1632414) (not e!2489924))))

(assert (=> b!4014826 (= res!1632414 (< (size!32117 (_2!24183 (get!14114 lt!1422460))) (size!32117 lt!1422205)))))

(declare-fun b!4014827 () Bool)

(declare-fun res!1632416 () Bool)

(assert (=> b!4014827 (=> (not res!1632416) (not e!2489924))))

(assert (=> b!4014827 (= res!1632416 (= (list!15966 (charsOf!4652 (_1!24183 (get!14114 lt!1422460)))) (originalCharacters!7436 (_1!24183 (get!14114 lt!1422460)))))))

(declare-fun b!4014828 () Bool)

(declare-fun lt!1422463 () Option!9250)

(declare-fun lt!1422464 () Option!9250)

(assert (=> b!4014828 (= e!2489926 (ite (and ((_ is None!9249) lt!1422463) ((_ is None!9249) lt!1422464)) None!9249 (ite ((_ is None!9249) lt!1422464) lt!1422463 (ite ((_ is None!9249) lt!1422463) lt!1422464 (ite (>= (size!32118 (_1!24183 (v!39619 lt!1422463))) (size!32118 (_1!24183 (v!39619 lt!1422464)))) lt!1422463 lt!1422464)))))))

(assert (=> b!4014828 (= lt!1422463 call!286539)))

(assert (=> b!4014828 (= lt!1422464 (maxPrefix!3723 thiss!21717 (t!333267 rules!2999) lt!1422205))))

(declare-fun d!1189019 () Bool)

(declare-fun e!2489925 () Bool)

(assert (=> d!1189019 e!2489925))

(declare-fun res!1632420 () Bool)

(assert (=> d!1189019 (=> res!1632420 e!2489925)))

(assert (=> d!1189019 (= res!1632420 (isEmpty!25659 lt!1422460))))

(assert (=> d!1189019 (= lt!1422460 e!2489926)))

(declare-fun c!694154 () Bool)

(assert (=> d!1189019 (= c!694154 (and ((_ is Cons!42954) rules!2999) ((_ is Nil!42954) (t!333267 rules!2999))))))

(declare-fun lt!1422462 () Unit!61996)

(declare-fun lt!1422461 () Unit!61996)

(assert (=> d!1189019 (= lt!1422462 lt!1422461)))

(assert (=> d!1189019 (isPrefix!3923 lt!1422205 lt!1422205)))

(assert (=> d!1189019 (= lt!1422461 (lemmaIsPrefixRefl!2499 lt!1422205 lt!1422205))))

(declare-fun rulesValidInductive!2493 (LexerInterface!6425 List!43078) Bool)

(assert (=> d!1189019 (rulesValidInductive!2493 thiss!21717 rules!2999)))

(assert (=> d!1189019 (= (maxPrefix!3723 thiss!21717 rules!2999 lt!1422205) lt!1422460)))

(declare-fun b!4014829 () Bool)

(declare-fun res!1632418 () Bool)

(assert (=> b!4014829 (=> (not res!1632418) (not e!2489924))))

(assert (=> b!4014829 (= res!1632418 (= (value!215460 (_1!24183 (get!14114 lt!1422460))) (apply!10033 (transformation!6836 (rule!9882 (_1!24183 (get!14114 lt!1422460)))) (seqFromList!5061 (originalCharacters!7436 (_1!24183 (get!14114 lt!1422460)))))))))

(declare-fun b!4014830 () Bool)

(assert (=> b!4014830 (= e!2489925 e!2489924)))

(declare-fun res!1632417 () Bool)

(assert (=> b!4014830 (=> (not res!1632417) (not e!2489924))))

(declare-fun isDefined!7072 (Option!9250) Bool)

(assert (=> b!4014830 (= res!1632417 (isDefined!7072 lt!1422460))))

(declare-fun b!4014831 () Bool)

(declare-fun res!1632419 () Bool)

(assert (=> b!4014831 (=> (not res!1632419) (not e!2489924))))

(assert (=> b!4014831 (= res!1632419 (matchR!5702 (regex!6836 (rule!9882 (_1!24183 (get!14114 lt!1422460)))) (list!15966 (charsOf!4652 (_1!24183 (get!14114 lt!1422460))))))))

(declare-fun bm!286534 () Bool)

(assert (=> bm!286534 (= call!286539 (maxPrefixOneRule!2743 thiss!21717 (h!48374 rules!2999) lt!1422205))))

(assert (= (and d!1189019 c!694154) b!4014825))

(assert (= (and d!1189019 (not c!694154)) b!4014828))

(assert (= (or b!4014825 b!4014828) bm!286534))

(assert (= (and d!1189019 (not res!1632420)) b!4014830))

(assert (= (and b!4014830 res!1632417) b!4014827))

(assert (= (and b!4014827 res!1632416) b!4014826))

(assert (= (and b!4014826 res!1632414) b!4014824))

(assert (= (and b!4014824 res!1632415) b!4014829))

(assert (= (and b!4014829 res!1632418) b!4014831))

(assert (= (and b!4014831 res!1632419) b!4014823))

(declare-fun m!4602287 () Bool)

(assert (=> b!4014830 m!4602287))

(declare-fun m!4602289 () Bool)

(assert (=> b!4014824 m!4602289))

(declare-fun m!4602291 () Bool)

(assert (=> b!4014824 m!4602291))

(assert (=> b!4014824 m!4602291))

(declare-fun m!4602293 () Bool)

(assert (=> b!4014824 m!4602293))

(assert (=> b!4014824 m!4602293))

(declare-fun m!4602295 () Bool)

(assert (=> b!4014824 m!4602295))

(declare-fun m!4602297 () Bool)

(assert (=> b!4014828 m!4602297))

(declare-fun m!4602299 () Bool)

(assert (=> bm!286534 m!4602299))

(assert (=> b!4014827 m!4602289))

(assert (=> b!4014827 m!4602291))

(assert (=> b!4014827 m!4602291))

(assert (=> b!4014827 m!4602293))

(declare-fun m!4602301 () Bool)

(assert (=> d!1189019 m!4602301))

(assert (=> d!1189019 m!4601285))

(assert (=> d!1189019 m!4601287))

(declare-fun m!4602303 () Bool)

(assert (=> d!1189019 m!4602303))

(assert (=> b!4014826 m!4602289))

(declare-fun m!4602305 () Bool)

(assert (=> b!4014826 m!4602305))

(assert (=> b!4014826 m!4601761))

(assert (=> b!4014823 m!4602289))

(declare-fun m!4602307 () Bool)

(assert (=> b!4014823 m!4602307))

(assert (=> b!4014831 m!4602289))

(assert (=> b!4014831 m!4602291))

(assert (=> b!4014831 m!4602291))

(assert (=> b!4014831 m!4602293))

(assert (=> b!4014831 m!4602293))

(declare-fun m!4602309 () Bool)

(assert (=> b!4014831 m!4602309))

(assert (=> b!4014829 m!4602289))

(declare-fun m!4602311 () Bool)

(assert (=> b!4014829 m!4602311))

(assert (=> b!4014829 m!4602311))

(declare-fun m!4602313 () Bool)

(assert (=> b!4014829 m!4602313))

(assert (=> b!4014211 d!1189019))

(declare-fun b!4014834 () Bool)

(declare-fun res!1632421 () Bool)

(declare-fun e!2489928 () Bool)

(assert (=> b!4014834 (=> (not res!1632421) (not e!2489928))))

(declare-fun lt!1422465 () List!43076)

(assert (=> b!4014834 (= res!1632421 (= (size!32117 lt!1422465) (+ (size!32117 prefix!494) (size!32117 suffix!1299))))))

(declare-fun b!4014832 () Bool)

(declare-fun e!2489927 () List!43076)

(assert (=> b!4014832 (= e!2489927 suffix!1299)))

(declare-fun b!4014833 () Bool)

(assert (=> b!4014833 (= e!2489927 (Cons!42952 (h!48372 prefix!494) (++!11238 (t!333265 prefix!494) suffix!1299)))))

(declare-fun d!1189021 () Bool)

(assert (=> d!1189021 e!2489928))

(declare-fun res!1632422 () Bool)

(assert (=> d!1189021 (=> (not res!1632422) (not e!2489928))))

(assert (=> d!1189021 (= res!1632422 (= (content!6515 lt!1422465) ((_ map or) (content!6515 prefix!494) (content!6515 suffix!1299))))))

(assert (=> d!1189021 (= lt!1422465 e!2489927)))

(declare-fun c!694155 () Bool)

(assert (=> d!1189021 (= c!694155 ((_ is Nil!42952) prefix!494))))

(assert (=> d!1189021 (= (++!11238 prefix!494 suffix!1299) lt!1422465)))

(declare-fun b!4014835 () Bool)

(assert (=> b!4014835 (= e!2489928 (or (not (= suffix!1299 Nil!42952)) (= lt!1422465 prefix!494)))))

(assert (= (and d!1189021 c!694155) b!4014832))

(assert (= (and d!1189021 (not c!694155)) b!4014833))

(assert (= (and d!1189021 res!1632422) b!4014834))

(assert (= (and b!4014834 res!1632421) b!4014835))

(declare-fun m!4602315 () Bool)

(assert (=> b!4014834 m!4602315))

(assert (=> b!4014834 m!4601327))

(assert (=> b!4014834 m!4601277))

(declare-fun m!4602317 () Bool)

(assert (=> b!4014833 m!4602317))

(declare-fun m!4602319 () Bool)

(assert (=> d!1189021 m!4602319))

(assert (=> d!1189021 m!4602113))

(assert (=> d!1189021 m!4601385))

(assert (=> b!4014211 d!1189021))

(declare-fun d!1189023 () Bool)

(declare-fun lt!1422466 () Int)

(assert (=> d!1189023 (>= lt!1422466 0)))

(declare-fun e!2489929 () Int)

(assert (=> d!1189023 (= lt!1422466 e!2489929)))

(declare-fun c!694156 () Bool)

(assert (=> d!1189023 (= c!694156 ((_ is Nil!42952) lt!1422193))))

(assert (=> d!1189023 (= (size!32117 lt!1422193) lt!1422466)))

(declare-fun b!4014836 () Bool)

(assert (=> b!4014836 (= e!2489929 0)))

(declare-fun b!4014837 () Bool)

(assert (=> b!4014837 (= e!2489929 (+ 1 (size!32117 (t!333265 lt!1422193))))))

(assert (= (and d!1189023 c!694156) b!4014836))

(assert (= (and d!1189023 (not c!694156)) b!4014837))

(declare-fun m!4602321 () Bool)

(assert (=> b!4014837 m!4602321))

(assert (=> b!4014210 d!1189023))

(declare-fun d!1189025 () Bool)

(declare-fun lt!1422467 () Int)

(assert (=> d!1189025 (>= lt!1422467 0)))

(declare-fun e!2489930 () Int)

(assert (=> d!1189025 (= lt!1422467 e!2489930)))

(declare-fun c!694157 () Bool)

(assert (=> d!1189025 (= c!694157 ((_ is Nil!42952) prefix!494))))

(assert (=> d!1189025 (= (size!32117 prefix!494) lt!1422467)))

(declare-fun b!4014838 () Bool)

(assert (=> b!4014838 (= e!2489930 0)))

(declare-fun b!4014839 () Bool)

(assert (=> b!4014839 (= e!2489930 (+ 1 (size!32117 (t!333265 prefix!494))))))

(assert (= (and d!1189025 c!694157) b!4014838))

(assert (= (and d!1189025 (not c!694157)) b!4014839))

(declare-fun m!4602323 () Bool)

(assert (=> b!4014839 m!4602323))

(assert (=> b!4014210 d!1189025))

(declare-fun d!1189027 () Bool)

(assert (=> d!1189027 (= (list!15966 (charsOf!4652 token!484)) (list!15968 (c!694060 (charsOf!4652 token!484))))))

(declare-fun bs!589590 () Bool)

(assert (= bs!589590 d!1189027))

(declare-fun m!4602325 () Bool)

(assert (=> bs!589590 m!4602325))

(assert (=> b!4014210 d!1189027))

(declare-fun d!1189029 () Bool)

(declare-fun lt!1422468 () BalanceConc!25688)

(assert (=> d!1189029 (= (list!15966 lt!1422468) (originalCharacters!7436 token!484))))

(assert (=> d!1189029 (= lt!1422468 (dynLambda!18228 (toChars!9203 (transformation!6836 (rule!9882 token!484))) (value!215460 token!484)))))

(assert (=> d!1189029 (= (charsOf!4652 token!484) lt!1422468)))

(declare-fun b_lambda!117181 () Bool)

(assert (=> (not b_lambda!117181) (not d!1189029)))

(declare-fun t!333306 () Bool)

(declare-fun tb!241477 () Bool)

(assert (=> (and b!4014208 (= (toChars!9203 (transformation!6836 (h!48374 rules!2999))) (toChars!9203 (transformation!6836 (rule!9882 token!484)))) t!333306) tb!241477))

(declare-fun b!4014840 () Bool)

(declare-fun e!2489931 () Bool)

(declare-fun tp!1220824 () Bool)

(assert (=> b!4014840 (= e!2489931 (and (inv!57380 (c!694060 (dynLambda!18228 (toChars!9203 (transformation!6836 (rule!9882 token!484))) (value!215460 token!484)))) tp!1220824))))

(declare-fun result!292648 () Bool)

(assert (=> tb!241477 (= result!292648 (and (inv!57381 (dynLambda!18228 (toChars!9203 (transformation!6836 (rule!9882 token!484))) (value!215460 token!484))) e!2489931))))

(assert (= tb!241477 b!4014840))

(declare-fun m!4602327 () Bool)

(assert (=> b!4014840 m!4602327))

(declare-fun m!4602329 () Bool)

(assert (=> tb!241477 m!4602329))

(assert (=> d!1189029 t!333306))

(declare-fun b_and!308467 () Bool)

(assert (= b_and!308463 (and (=> t!333306 result!292648) b_and!308467)))

(declare-fun t!333308 () Bool)

(declare-fun tb!241479 () Bool)

(assert (=> (and b!4014209 (= (toChars!9203 (transformation!6836 (rule!9882 token!484))) (toChars!9203 (transformation!6836 (rule!9882 token!484)))) t!333308) tb!241479))

(declare-fun result!292650 () Bool)

(assert (= result!292650 result!292648))

(assert (=> d!1189029 t!333308))

(declare-fun b_and!308469 () Bool)

(assert (= b_and!308465 (and (=> t!333308 result!292650) b_and!308469)))

(declare-fun m!4602331 () Bool)

(assert (=> d!1189029 m!4602331))

(declare-fun m!4602333 () Bool)

(assert (=> d!1189029 m!4602333))

(assert (=> b!4014210 d!1189029))

(declare-fun b!4014842 () Bool)

(declare-fun res!1632426 () Bool)

(declare-fun e!2489934 () Bool)

(assert (=> b!4014842 (=> (not res!1632426) (not e!2489934))))

(assert (=> b!4014842 (= res!1632426 (= (head!8521 lt!1422219) (head!8521 lt!1422205)))))

(declare-fun b!4014841 () Bool)

(declare-fun e!2489932 () Bool)

(assert (=> b!4014841 (= e!2489932 e!2489934)))

(declare-fun res!1632425 () Bool)

(assert (=> b!4014841 (=> (not res!1632425) (not e!2489934))))

(assert (=> b!4014841 (= res!1632425 (not ((_ is Nil!42952) lt!1422205)))))

(declare-fun b!4014844 () Bool)

(declare-fun e!2489933 () Bool)

(assert (=> b!4014844 (= e!2489933 (>= (size!32117 lt!1422205) (size!32117 lt!1422219)))))

(declare-fun d!1189031 () Bool)

(assert (=> d!1189031 e!2489933))

(declare-fun res!1632423 () Bool)

(assert (=> d!1189031 (=> res!1632423 e!2489933)))

(declare-fun lt!1422469 () Bool)

(assert (=> d!1189031 (= res!1632423 (not lt!1422469))))

(assert (=> d!1189031 (= lt!1422469 e!2489932)))

(declare-fun res!1632424 () Bool)

(assert (=> d!1189031 (=> res!1632424 e!2489932)))

(assert (=> d!1189031 (= res!1632424 ((_ is Nil!42952) lt!1422219))))

(assert (=> d!1189031 (= (isPrefix!3923 lt!1422219 lt!1422205) lt!1422469)))

(declare-fun b!4014843 () Bool)

(assert (=> b!4014843 (= e!2489934 (isPrefix!3923 (tail!6253 lt!1422219) (tail!6253 lt!1422205)))))

(assert (= (and d!1189031 (not res!1632424)) b!4014841))

(assert (= (and b!4014841 res!1632425) b!4014842))

(assert (= (and b!4014842 res!1632426) b!4014843))

(assert (= (and d!1189031 (not res!1632423)) b!4014844))

(assert (=> b!4014842 m!4602175))

(assert (=> b!4014842 m!4601851))

(assert (=> b!4014844 m!4601761))

(assert (=> b!4014844 m!4601247))

(assert (=> b!4014843 m!4602181))

(assert (=> b!4014843 m!4601847))

(assert (=> b!4014843 m!4602181))

(assert (=> b!4014843 m!4601847))

(declare-fun m!4602335 () Bool)

(assert (=> b!4014843 m!4602335))

(assert (=> b!4014193 d!1189031))

(declare-fun b!4014846 () Bool)

(declare-fun res!1632430 () Bool)

(declare-fun e!2489937 () Bool)

(assert (=> b!4014846 (=> (not res!1632430) (not e!2489937))))

(assert (=> b!4014846 (= res!1632430 (= (head!8521 lt!1422219) (head!8521 lt!1422187)))))

(declare-fun b!4014845 () Bool)

(declare-fun e!2489935 () Bool)

(assert (=> b!4014845 (= e!2489935 e!2489937)))

(declare-fun res!1632429 () Bool)

(assert (=> b!4014845 (=> (not res!1632429) (not e!2489937))))

(assert (=> b!4014845 (= res!1632429 (not ((_ is Nil!42952) lt!1422187)))))

(declare-fun b!4014848 () Bool)

(declare-fun e!2489936 () Bool)

(assert (=> b!4014848 (= e!2489936 (>= (size!32117 lt!1422187) (size!32117 lt!1422219)))))

(declare-fun d!1189033 () Bool)

(assert (=> d!1189033 e!2489936))

(declare-fun res!1632427 () Bool)

(assert (=> d!1189033 (=> res!1632427 e!2489936)))

(declare-fun lt!1422470 () Bool)

(assert (=> d!1189033 (= res!1632427 (not lt!1422470))))

(assert (=> d!1189033 (= lt!1422470 e!2489935)))

(declare-fun res!1632428 () Bool)

(assert (=> d!1189033 (=> res!1632428 e!2489935)))

(assert (=> d!1189033 (= res!1632428 ((_ is Nil!42952) lt!1422219))))

(assert (=> d!1189033 (= (isPrefix!3923 lt!1422219 lt!1422187) lt!1422470)))

(declare-fun b!4014847 () Bool)

(assert (=> b!4014847 (= e!2489937 (isPrefix!3923 (tail!6253 lt!1422219) (tail!6253 lt!1422187)))))

(assert (= (and d!1189033 (not res!1632428)) b!4014845))

(assert (= (and b!4014845 res!1632429) b!4014846))

(assert (= (and b!4014846 res!1632430) b!4014847))

(assert (= (and d!1189033 (not res!1632427)) b!4014848))

(assert (=> b!4014846 m!4602175))

(declare-fun m!4602337 () Bool)

(assert (=> b!4014846 m!4602337))

(declare-fun m!4602339 () Bool)

(assert (=> b!4014848 m!4602339))

(assert (=> b!4014848 m!4601247))

(assert (=> b!4014847 m!4602181))

(declare-fun m!4602341 () Bool)

(assert (=> b!4014847 m!4602341))

(assert (=> b!4014847 m!4602181))

(assert (=> b!4014847 m!4602341))

(declare-fun m!4602343 () Bool)

(assert (=> b!4014847 m!4602343))

(assert (=> b!4014193 d!1189033))

(declare-fun d!1189035 () Bool)

(assert (=> d!1189035 (isPrefix!3923 lt!1422219 (++!11238 lt!1422196 lt!1422217))))

(declare-fun lt!1422471 () Unit!61996)

(assert (=> d!1189035 (= lt!1422471 (choose!24264 lt!1422219 lt!1422196 lt!1422217))))

(assert (=> d!1189035 (isPrefix!3923 lt!1422219 lt!1422196)))

(assert (=> d!1189035 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!736 lt!1422219 lt!1422196 lt!1422217) lt!1422471)))

(declare-fun bs!589591 () Bool)

(assert (= bs!589591 d!1189035))

(assert (=> bs!589591 m!4601299))

(assert (=> bs!589591 m!4601299))

(declare-fun m!4602345 () Bool)

(assert (=> bs!589591 m!4602345))

(declare-fun m!4602347 () Bool)

(assert (=> bs!589591 m!4602347))

(declare-fun m!4602349 () Bool)

(assert (=> bs!589591 m!4602349))

(assert (=> b!4014193 d!1189035))

(declare-fun b!4014851 () Bool)

(declare-fun res!1632431 () Bool)

(declare-fun e!2489939 () Bool)

(assert (=> b!4014851 (=> (not res!1632431) (not e!2489939))))

(declare-fun lt!1422472 () List!43076)

(assert (=> b!4014851 (= res!1632431 (= (size!32117 lt!1422472) (+ (size!32117 newSuffix!27) (size!32117 lt!1422217))))))

(declare-fun b!4014849 () Bool)

(declare-fun e!2489938 () List!43076)

(assert (=> b!4014849 (= e!2489938 lt!1422217)))

(declare-fun b!4014850 () Bool)

(assert (=> b!4014850 (= e!2489938 (Cons!42952 (h!48372 newSuffix!27) (++!11238 (t!333265 newSuffix!27) lt!1422217)))))

(declare-fun d!1189037 () Bool)

(assert (=> d!1189037 e!2489939))

(declare-fun res!1632432 () Bool)

(assert (=> d!1189037 (=> (not res!1632432) (not e!2489939))))

(assert (=> d!1189037 (= res!1632432 (= (content!6515 lt!1422472) ((_ map or) (content!6515 newSuffix!27) (content!6515 lt!1422217))))))

(assert (=> d!1189037 (= lt!1422472 e!2489938)))

(declare-fun c!694158 () Bool)

(assert (=> d!1189037 (= c!694158 ((_ is Nil!42952) newSuffix!27))))

(assert (=> d!1189037 (= (++!11238 newSuffix!27 lt!1422217) lt!1422472)))

(declare-fun b!4014852 () Bool)

(assert (=> b!4014852 (= e!2489939 (or (not (= lt!1422217 Nil!42952)) (= lt!1422472 newSuffix!27)))))

(assert (= (and d!1189037 c!694158) b!4014849))

(assert (= (and d!1189037 (not c!694158)) b!4014850))

(assert (= (and d!1189037 res!1632432) b!4014851))

(assert (= (and b!4014851 res!1632431) b!4014852))

(declare-fun m!4602351 () Bool)

(assert (=> b!4014851 m!4602351))

(assert (=> b!4014851 m!4601279))

(assert (=> b!4014851 m!4602139))

(declare-fun m!4602353 () Bool)

(assert (=> b!4014850 m!4602353))

(declare-fun m!4602355 () Bool)

(assert (=> d!1189037 m!4602355))

(assert (=> d!1189037 m!4602115))

(assert (=> d!1189037 m!4602147))

(assert (=> b!4014192 d!1189037))

(declare-fun d!1189039 () Bool)

(declare-fun lt!1422473 () List!43076)

(assert (=> d!1189039 (= (++!11238 newSuffix!27 lt!1422473) suffix!1299)))

(declare-fun e!2489940 () List!43076)

(assert (=> d!1189039 (= lt!1422473 e!2489940)))

(declare-fun c!694159 () Bool)

(assert (=> d!1189039 (= c!694159 ((_ is Cons!42952) newSuffix!27))))

(assert (=> d!1189039 (>= (size!32117 suffix!1299) (size!32117 newSuffix!27))))

(assert (=> d!1189039 (= (getSuffix!2348 suffix!1299 newSuffix!27) lt!1422473)))

(declare-fun b!4014853 () Bool)

(assert (=> b!4014853 (= e!2489940 (getSuffix!2348 (tail!6253 suffix!1299) (t!333265 newSuffix!27)))))

(declare-fun b!4014854 () Bool)

(assert (=> b!4014854 (= e!2489940 suffix!1299)))

(assert (= (and d!1189039 c!694159) b!4014853))

(assert (= (and d!1189039 (not c!694159)) b!4014854))

(declare-fun m!4602357 () Bool)

(assert (=> d!1189039 m!4602357))

(assert (=> d!1189039 m!4601277))

(assert (=> d!1189039 m!4601279))

(assert (=> b!4014853 m!4601409))

(assert (=> b!4014853 m!4601409))

(declare-fun m!4602359 () Bool)

(assert (=> b!4014853 m!4602359))

(assert (=> b!4014192 d!1189039))

(declare-fun d!1189041 () Bool)

(declare-fun lt!1422474 () Int)

(assert (=> d!1189041 (>= lt!1422474 0)))

(declare-fun e!2489941 () Int)

(assert (=> d!1189041 (= lt!1422474 e!2489941)))

(declare-fun c!694160 () Bool)

(assert (=> d!1189041 (= c!694160 ((_ is Nil!42952) suffix!1299))))

(assert (=> d!1189041 (= (size!32117 suffix!1299) lt!1422474)))

(declare-fun b!4014855 () Bool)

(assert (=> b!4014855 (= e!2489941 0)))

(declare-fun b!4014856 () Bool)

(assert (=> b!4014856 (= e!2489941 (+ 1 (size!32117 (t!333265 suffix!1299))))))

(assert (= (and d!1189041 c!694160) b!4014855))

(assert (= (and d!1189041 (not c!694160)) b!4014856))

(declare-fun m!4602361 () Bool)

(assert (=> b!4014856 m!4602361))

(assert (=> b!4014191 d!1189041))

(declare-fun d!1189043 () Bool)

(declare-fun lt!1422475 () Int)

(assert (=> d!1189043 (>= lt!1422475 0)))

(declare-fun e!2489942 () Int)

(assert (=> d!1189043 (= lt!1422475 e!2489942)))

(declare-fun c!694161 () Bool)

(assert (=> d!1189043 (= c!694161 ((_ is Nil!42952) newSuffix!27))))

(assert (=> d!1189043 (= (size!32117 newSuffix!27) lt!1422475)))

(declare-fun b!4014857 () Bool)

(assert (=> b!4014857 (= e!2489942 0)))

(declare-fun b!4014858 () Bool)

(assert (=> b!4014858 (= e!2489942 (+ 1 (size!32117 (t!333265 newSuffix!27))))))

(assert (= (and d!1189043 c!694161) b!4014857))

(assert (= (and d!1189043 (not c!694161)) b!4014858))

(declare-fun m!4602363 () Bool)

(assert (=> b!4014858 m!4602363))

(assert (=> b!4014191 d!1189043))

(declare-fun b!4014859 () Bool)

(declare-fun e!2489943 () Bool)

(declare-fun lt!1422476 () Option!9250)

(assert (=> b!4014859 (= e!2489943 (contains!8540 rules!2999 (rule!9882 (_1!24183 (get!14114 lt!1422476)))))))

(declare-fun b!4014860 () Bool)

(declare-fun res!1632434 () Bool)

(assert (=> b!4014860 (=> (not res!1632434) (not e!2489943))))

(assert (=> b!4014860 (= res!1632434 (= (++!11238 (list!15966 (charsOf!4652 (_1!24183 (get!14114 lt!1422476)))) (_2!24183 (get!14114 lt!1422476))) lt!1422196))))

(declare-fun b!4014861 () Bool)

(declare-fun e!2489945 () Option!9250)

(declare-fun call!286540 () Option!9250)

(assert (=> b!4014861 (= e!2489945 call!286540)))

(declare-fun b!4014862 () Bool)

(declare-fun res!1632433 () Bool)

(assert (=> b!4014862 (=> (not res!1632433) (not e!2489943))))

(assert (=> b!4014862 (= res!1632433 (< (size!32117 (_2!24183 (get!14114 lt!1422476))) (size!32117 lt!1422196)))))

(declare-fun b!4014863 () Bool)

(declare-fun res!1632435 () Bool)

(assert (=> b!4014863 (=> (not res!1632435) (not e!2489943))))

(assert (=> b!4014863 (= res!1632435 (= (list!15966 (charsOf!4652 (_1!24183 (get!14114 lt!1422476)))) (originalCharacters!7436 (_1!24183 (get!14114 lt!1422476)))))))

(declare-fun b!4014864 () Bool)

(declare-fun lt!1422479 () Option!9250)

(declare-fun lt!1422480 () Option!9250)

(assert (=> b!4014864 (= e!2489945 (ite (and ((_ is None!9249) lt!1422479) ((_ is None!9249) lt!1422480)) None!9249 (ite ((_ is None!9249) lt!1422480) lt!1422479 (ite ((_ is None!9249) lt!1422479) lt!1422480 (ite (>= (size!32118 (_1!24183 (v!39619 lt!1422479))) (size!32118 (_1!24183 (v!39619 lt!1422480)))) lt!1422479 lt!1422480)))))))

(assert (=> b!4014864 (= lt!1422479 call!286540)))

(assert (=> b!4014864 (= lt!1422480 (maxPrefix!3723 thiss!21717 (t!333267 rules!2999) lt!1422196))))

(declare-fun d!1189045 () Bool)

(declare-fun e!2489944 () Bool)

(assert (=> d!1189045 e!2489944))

(declare-fun res!1632439 () Bool)

(assert (=> d!1189045 (=> res!1632439 e!2489944)))

(assert (=> d!1189045 (= res!1632439 (isEmpty!25659 lt!1422476))))

(assert (=> d!1189045 (= lt!1422476 e!2489945)))

(declare-fun c!694162 () Bool)

(assert (=> d!1189045 (= c!694162 (and ((_ is Cons!42954) rules!2999) ((_ is Nil!42954) (t!333267 rules!2999))))))

(declare-fun lt!1422478 () Unit!61996)

(declare-fun lt!1422477 () Unit!61996)

(assert (=> d!1189045 (= lt!1422478 lt!1422477)))

(assert (=> d!1189045 (isPrefix!3923 lt!1422196 lt!1422196)))

(assert (=> d!1189045 (= lt!1422477 (lemmaIsPrefixRefl!2499 lt!1422196 lt!1422196))))

(assert (=> d!1189045 (rulesValidInductive!2493 thiss!21717 rules!2999)))

(assert (=> d!1189045 (= (maxPrefix!3723 thiss!21717 rules!2999 lt!1422196) lt!1422476)))

(declare-fun b!4014865 () Bool)

(declare-fun res!1632437 () Bool)

(assert (=> b!4014865 (=> (not res!1632437) (not e!2489943))))

(assert (=> b!4014865 (= res!1632437 (= (value!215460 (_1!24183 (get!14114 lt!1422476))) (apply!10033 (transformation!6836 (rule!9882 (_1!24183 (get!14114 lt!1422476)))) (seqFromList!5061 (originalCharacters!7436 (_1!24183 (get!14114 lt!1422476)))))))))

(declare-fun b!4014866 () Bool)

(assert (=> b!4014866 (= e!2489944 e!2489943)))

(declare-fun res!1632436 () Bool)

(assert (=> b!4014866 (=> (not res!1632436) (not e!2489943))))

(assert (=> b!4014866 (= res!1632436 (isDefined!7072 lt!1422476))))

(declare-fun b!4014867 () Bool)

(declare-fun res!1632438 () Bool)

(assert (=> b!4014867 (=> (not res!1632438) (not e!2489943))))

(assert (=> b!4014867 (= res!1632438 (matchR!5702 (regex!6836 (rule!9882 (_1!24183 (get!14114 lt!1422476)))) (list!15966 (charsOf!4652 (_1!24183 (get!14114 lt!1422476))))))))

(declare-fun bm!286535 () Bool)

(assert (=> bm!286535 (= call!286540 (maxPrefixOneRule!2743 thiss!21717 (h!48374 rules!2999) lt!1422196))))

(assert (= (and d!1189045 c!694162) b!4014861))

(assert (= (and d!1189045 (not c!694162)) b!4014864))

(assert (= (or b!4014861 b!4014864) bm!286535))

(assert (= (and d!1189045 (not res!1632439)) b!4014866))

(assert (= (and b!4014866 res!1632436) b!4014863))

(assert (= (and b!4014863 res!1632435) b!4014862))

(assert (= (and b!4014862 res!1632433) b!4014860))

(assert (= (and b!4014860 res!1632434) b!4014865))

(assert (= (and b!4014865 res!1632437) b!4014867))

(assert (= (and b!4014867 res!1632438) b!4014859))

(declare-fun m!4602365 () Bool)

(assert (=> b!4014866 m!4602365))

(declare-fun m!4602367 () Bool)

(assert (=> b!4014860 m!4602367))

(declare-fun m!4602369 () Bool)

(assert (=> b!4014860 m!4602369))

(assert (=> b!4014860 m!4602369))

(declare-fun m!4602371 () Bool)

(assert (=> b!4014860 m!4602371))

(assert (=> b!4014860 m!4602371))

(declare-fun m!4602373 () Bool)

(assert (=> b!4014860 m!4602373))

(declare-fun m!4602375 () Bool)

(assert (=> b!4014864 m!4602375))

(declare-fun m!4602377 () Bool)

(assert (=> bm!286535 m!4602377))

(assert (=> b!4014863 m!4602367))

(assert (=> b!4014863 m!4602369))

(assert (=> b!4014863 m!4602369))

(assert (=> b!4014863 m!4602371))

(declare-fun m!4602379 () Bool)

(assert (=> d!1189045 m!4602379))

(declare-fun m!4602381 () Bool)

(assert (=> d!1189045 m!4602381))

(declare-fun m!4602383 () Bool)

(assert (=> d!1189045 m!4602383))

(assert (=> d!1189045 m!4602303))

(assert (=> b!4014862 m!4602367))

(declare-fun m!4602385 () Bool)

(assert (=> b!4014862 m!4602385))

(assert (=> b!4014862 m!4601973))

(assert (=> b!4014859 m!4602367))

(declare-fun m!4602387 () Bool)

(assert (=> b!4014859 m!4602387))

(assert (=> b!4014867 m!4602367))

(assert (=> b!4014867 m!4602369))

(assert (=> b!4014867 m!4602369))

(assert (=> b!4014867 m!4602371))

(assert (=> b!4014867 m!4602371))

(declare-fun m!4602389 () Bool)

(assert (=> b!4014867 m!4602389))

(assert (=> b!4014865 m!4602367))

(declare-fun m!4602391 () Bool)

(assert (=> b!4014865 m!4602391))

(assert (=> b!4014865 m!4602391))

(declare-fun m!4602393 () Bool)

(assert (=> b!4014865 m!4602393))

(assert (=> b!4014206 d!1189045))

(declare-fun d!1189047 () Bool)

(assert (=> d!1189047 (= suffixResult!105 lt!1422218)))

(declare-fun lt!1422481 () Unit!61996)

(assert (=> d!1189047 (= lt!1422481 (choose!24258 lt!1422193 suffixResult!105 lt!1422193 lt!1422218 lt!1422205))))

(assert (=> d!1189047 (isPrefix!3923 lt!1422193 lt!1422205)))

(assert (=> d!1189047 (= (lemmaSamePrefixThenSameSuffix!2094 lt!1422193 suffixResult!105 lt!1422193 lt!1422218 lt!1422205) lt!1422481)))

(declare-fun bs!589592 () Bool)

(assert (= bs!589592 d!1189047))

(declare-fun m!4602395 () Bool)

(assert (=> bs!589592 m!4602395))

(assert (=> bs!589592 m!4601269))

(assert (=> b!4014206 d!1189047))

(declare-fun b!4014869 () Bool)

(declare-fun res!1632443 () Bool)

(declare-fun e!2489948 () Bool)

(assert (=> b!4014869 (=> (not res!1632443) (not e!2489948))))

(assert (=> b!4014869 (= res!1632443 (= (head!8521 lt!1422193) (head!8521 lt!1422204)))))

(declare-fun b!4014868 () Bool)

(declare-fun e!2489946 () Bool)

(assert (=> b!4014868 (= e!2489946 e!2489948)))

(declare-fun res!1632442 () Bool)

(assert (=> b!4014868 (=> (not res!1632442) (not e!2489948))))

(assert (=> b!4014868 (= res!1632442 (not ((_ is Nil!42952) lt!1422204)))))

(declare-fun b!4014871 () Bool)

(declare-fun e!2489947 () Bool)

(assert (=> b!4014871 (= e!2489947 (>= (size!32117 lt!1422204) (size!32117 lt!1422193)))))

(declare-fun d!1189049 () Bool)

(assert (=> d!1189049 e!2489947))

(declare-fun res!1632440 () Bool)

(assert (=> d!1189049 (=> res!1632440 e!2489947)))

(declare-fun lt!1422482 () Bool)

(assert (=> d!1189049 (= res!1632440 (not lt!1422482))))

(assert (=> d!1189049 (= lt!1422482 e!2489946)))

(declare-fun res!1632441 () Bool)

(assert (=> d!1189049 (=> res!1632441 e!2489946)))

(assert (=> d!1189049 (= res!1632441 ((_ is Nil!42952) lt!1422193))))

(assert (=> d!1189049 (= (isPrefix!3923 lt!1422193 lt!1422204) lt!1422482)))

(declare-fun b!4014870 () Bool)

(assert (=> b!4014870 (= e!2489948 (isPrefix!3923 (tail!6253 lt!1422193) (tail!6253 lt!1422204)))))

(assert (= (and d!1189049 (not res!1632441)) b!4014868))

(assert (= (and b!4014868 res!1632442) b!4014869))

(assert (= (and b!4014869 res!1632443) b!4014870))

(assert (= (and d!1189049 (not res!1632440)) b!4014871))

(assert (=> b!4014869 m!4601811))

(declare-fun m!4602397 () Bool)

(assert (=> b!4014869 m!4602397))

(declare-fun m!4602399 () Bool)

(assert (=> b!4014871 m!4602399))

(assert (=> b!4014871 m!4601325))

(assert (=> b!4014870 m!4601817))

(declare-fun m!4602401 () Bool)

(assert (=> b!4014870 m!4602401))

(assert (=> b!4014870 m!4601817))

(assert (=> b!4014870 m!4602401))

(declare-fun m!4602403 () Bool)

(assert (=> b!4014870 m!4602403))

(assert (=> b!4014206 d!1189049))

(declare-fun d!1189051 () Bool)

(assert (=> d!1189051 (isPrefix!3923 lt!1422193 (++!11238 lt!1422193 lt!1422218))))

(declare-fun lt!1422483 () Unit!61996)

(assert (=> d!1189051 (= lt!1422483 (choose!24261 lt!1422193 lt!1422218))))

(assert (=> d!1189051 (= (lemmaConcatTwoListThenFirstIsPrefix!2764 lt!1422193 lt!1422218) lt!1422483)))

(declare-fun bs!589593 () Bool)

(assert (= bs!589593 d!1189051))

(assert (=> bs!589593 m!4601281))

(assert (=> bs!589593 m!4601281))

(declare-fun m!4602405 () Bool)

(assert (=> bs!589593 m!4602405))

(declare-fun m!4602407 () Bool)

(assert (=> bs!589593 m!4602407))

(assert (=> b!4014206 d!1189051))

(declare-fun b!4014882 () Bool)

(declare-fun e!2489956 () Bool)

(declare-fun inv!16 (TokenValue!7066) Bool)

(assert (=> b!4014882 (= e!2489956 (inv!16 (value!215460 token!484)))))

(declare-fun b!4014883 () Bool)

(declare-fun e!2489957 () Bool)

(assert (=> b!4014883 (= e!2489956 e!2489957)))

(declare-fun c!694167 () Bool)

(assert (=> b!4014883 (= c!694167 ((_ is IntegerValue!21199) (value!215460 token!484)))))

(declare-fun b!4014884 () Bool)

(declare-fun e!2489955 () Bool)

(declare-fun inv!15 (TokenValue!7066) Bool)

(assert (=> b!4014884 (= e!2489955 (inv!15 (value!215460 token!484)))))

(declare-fun b!4014885 () Bool)

(declare-fun res!1632446 () Bool)

(assert (=> b!4014885 (=> res!1632446 e!2489955)))

(assert (=> b!4014885 (= res!1632446 (not ((_ is IntegerValue!21200) (value!215460 token!484))))))

(assert (=> b!4014885 (= e!2489957 e!2489955)))

(declare-fun b!4014886 () Bool)

(declare-fun inv!17 (TokenValue!7066) Bool)

(assert (=> b!4014886 (= e!2489957 (inv!17 (value!215460 token!484)))))

(declare-fun d!1189053 () Bool)

(declare-fun c!694168 () Bool)

(assert (=> d!1189053 (= c!694168 ((_ is IntegerValue!21198) (value!215460 token!484)))))

(assert (=> d!1189053 (= (inv!21 (value!215460 token!484)) e!2489956)))

(assert (= (and d!1189053 c!694168) b!4014882))

(assert (= (and d!1189053 (not c!694168)) b!4014883))

(assert (= (and b!4014883 c!694167) b!4014886))

(assert (= (and b!4014883 (not c!694167)) b!4014885))

(assert (= (and b!4014885 (not res!1632446)) b!4014884))

(declare-fun m!4602409 () Bool)

(assert (=> b!4014882 m!4602409))

(declare-fun m!4602411 () Bool)

(assert (=> b!4014884 m!4602411))

(declare-fun m!4602413 () Bool)

(assert (=> b!4014886 m!4602413))

(assert (=> b!4014205 d!1189053))

(declare-fun b!4014889 () Bool)

(declare-fun res!1632447 () Bool)

(declare-fun e!2489959 () Bool)

(assert (=> b!4014889 (=> (not res!1632447) (not e!2489959))))

(declare-fun lt!1422484 () List!43076)

(assert (=> b!4014889 (= res!1632447 (= (size!32117 lt!1422484) (+ (size!32117 lt!1422193) (size!32117 suffixResult!105))))))

(declare-fun b!4014887 () Bool)

(declare-fun e!2489958 () List!43076)

(assert (=> b!4014887 (= e!2489958 suffixResult!105)))

(declare-fun b!4014888 () Bool)

(assert (=> b!4014888 (= e!2489958 (Cons!42952 (h!48372 lt!1422193) (++!11238 (t!333265 lt!1422193) suffixResult!105)))))

(declare-fun d!1189055 () Bool)

(assert (=> d!1189055 e!2489959))

(declare-fun res!1632448 () Bool)

(assert (=> d!1189055 (=> (not res!1632448) (not e!2489959))))

(assert (=> d!1189055 (= res!1632448 (= (content!6515 lt!1422484) ((_ map or) (content!6515 lt!1422193) (content!6515 suffixResult!105))))))

(assert (=> d!1189055 (= lt!1422484 e!2489958)))

(declare-fun c!694169 () Bool)

(assert (=> d!1189055 (= c!694169 ((_ is Nil!42952) lt!1422193))))

(assert (=> d!1189055 (= (++!11238 lt!1422193 suffixResult!105) lt!1422484)))

(declare-fun b!4014890 () Bool)

(assert (=> b!4014890 (= e!2489959 (or (not (= suffixResult!105 Nil!42952)) (= lt!1422484 lt!1422193)))))

(assert (= (and d!1189055 c!694169) b!4014887))

(assert (= (and d!1189055 (not c!694169)) b!4014888))

(assert (= (and d!1189055 res!1632448) b!4014889))

(assert (= (and b!4014889 res!1632447) b!4014890))

(declare-fun m!4602415 () Bool)

(assert (=> b!4014889 m!4602415))

(assert (=> b!4014889 m!4601325))

(declare-fun m!4602417 () Bool)

(assert (=> b!4014889 m!4602417))

(declare-fun m!4602419 () Bool)

(assert (=> b!4014888 m!4602419))

(declare-fun m!4602421 () Bool)

(assert (=> d!1189055 m!4602421))

(assert (=> d!1189055 m!4601371))

(declare-fun m!4602423 () Bool)

(assert (=> d!1189055 m!4602423))

(assert (=> b!4014207 d!1189055))

(declare-fun d!1189057 () Bool)

(declare-fun e!2489960 () Bool)

(assert (=> d!1189057 e!2489960))

(declare-fun res!1632449 () Bool)

(assert (=> d!1189057 (=> (not res!1632449) (not e!2489960))))

(assert (=> d!1189057 (= res!1632449 (semiInverseModEq!2927 (toChars!9203 (transformation!6836 (rule!9882 token!484))) (toValue!9344 (transformation!6836 (rule!9882 token!484)))))))

(declare-fun Unit!62005 () Unit!61996)

(assert (=> d!1189057 (= (lemmaInv!1051 (transformation!6836 (rule!9882 token!484))) Unit!62005)))

(declare-fun b!4014891 () Bool)

(assert (=> b!4014891 (= e!2489960 (equivClasses!2826 (toChars!9203 (transformation!6836 (rule!9882 token!484))) (toValue!9344 (transformation!6836 (rule!9882 token!484)))))))

(assert (= (and d!1189057 res!1632449) b!4014891))

(assert (=> d!1189057 m!4602279))

(assert (=> b!4014891 m!4602281))

(assert (=> b!4014207 d!1189057))

(declare-fun d!1189059 () Bool)

(declare-fun res!1632450 () Bool)

(declare-fun e!2489961 () Bool)

(assert (=> d!1189059 (=> (not res!1632450) (not e!2489961))))

(assert (=> d!1189059 (= res!1632450 (validRegex!5320 (regex!6836 (rule!9882 token!484))))))

(assert (=> d!1189059 (= (ruleValid!2768 thiss!21717 (rule!9882 token!484)) e!2489961)))

(declare-fun b!4014892 () Bool)

(declare-fun res!1632451 () Bool)

(assert (=> b!4014892 (=> (not res!1632451) (not e!2489961))))

(assert (=> b!4014892 (= res!1632451 (not (nullable!4120 (regex!6836 (rule!9882 token!484)))))))

(declare-fun b!4014893 () Bool)

(assert (=> b!4014893 (= e!2489961 (not (= (tag!7696 (rule!9882 token!484)) (String!49049 ""))))))

(assert (= (and d!1189059 res!1632450) b!4014892))

(assert (= (and b!4014892 res!1632451) b!4014893))

(assert (=> d!1189059 m!4602053))

(assert (=> b!4014892 m!4602039))

(assert (=> b!4014207 d!1189059))

(declare-fun d!1189061 () Bool)

(assert (=> d!1189061 (ruleValid!2768 thiss!21717 (rule!9882 token!484))))

(declare-fun lt!1422485 () Unit!61996)

(assert (=> d!1189061 (= lt!1422485 (choose!24267 thiss!21717 (rule!9882 token!484) rules!2999))))

(assert (=> d!1189061 (contains!8540 rules!2999 (rule!9882 token!484))))

(assert (=> d!1189061 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1842 thiss!21717 (rule!9882 token!484) rules!2999) lt!1422485)))

(declare-fun bs!589594 () Bool)

(assert (= bs!589594 d!1189061))

(assert (=> bs!589594 m!4601293))

(declare-fun m!4602425 () Bool)

(assert (=> bs!589594 m!4602425))

(declare-fun m!4602427 () Bool)

(assert (=> bs!589594 m!4602427))

(assert (=> b!4014207 d!1189061))

(declare-fun d!1189063 () Bool)

(declare-fun res!1632456 () Bool)

(declare-fun e!2489964 () Bool)

(assert (=> d!1189063 (=> (not res!1632456) (not e!2489964))))

(assert (=> d!1189063 (= res!1632456 (not (isEmpty!25660 (originalCharacters!7436 token!484))))))

(assert (=> d!1189063 (= (inv!57377 token!484) e!2489964)))

(declare-fun b!4014898 () Bool)

(declare-fun res!1632457 () Bool)

(assert (=> b!4014898 (=> (not res!1632457) (not e!2489964))))

(assert (=> b!4014898 (= res!1632457 (= (originalCharacters!7436 token!484) (list!15966 (dynLambda!18228 (toChars!9203 (transformation!6836 (rule!9882 token!484))) (value!215460 token!484)))))))

(declare-fun b!4014899 () Bool)

(assert (=> b!4014899 (= e!2489964 (= (size!32118 token!484) (size!32117 (originalCharacters!7436 token!484))))))

(assert (= (and d!1189063 res!1632456) b!4014898))

(assert (= (and b!4014898 res!1632457) b!4014899))

(declare-fun b_lambda!117183 () Bool)

(assert (=> (not b_lambda!117183) (not b!4014898)))

(assert (=> b!4014898 t!333306))

(declare-fun b_and!308471 () Bool)

(assert (= b_and!308467 (and (=> t!333306 result!292648) b_and!308471)))

(assert (=> b!4014898 t!333308))

(declare-fun b_and!308473 () Bool)

(assert (= b_and!308469 (and (=> t!333308 result!292650) b_and!308473)))

(declare-fun m!4602429 () Bool)

(assert (=> d!1189063 m!4602429))

(assert (=> b!4014898 m!4602333))

(assert (=> b!4014898 m!4602333))

(declare-fun m!4602431 () Bool)

(assert (=> b!4014898 m!4602431))

(assert (=> b!4014899 m!4601275))

(assert (=> start!378056 d!1189063))

(declare-fun b!4014904 () Bool)

(declare-fun e!2489967 () Bool)

(declare-fun tp!1220827 () Bool)

(assert (=> b!4014904 (= e!2489967 (and tp_is_empty!20453 tp!1220827))))

(assert (=> b!4014212 (= tp!1220765 e!2489967)))

(assert (= (and b!4014212 ((_ is Cons!42952) (t!333265 suffix!1299))) b!4014904))

(declare-fun b!4014918 () Bool)

(declare-fun e!2489970 () Bool)

(declare-fun tp!1220840 () Bool)

(declare-fun tp!1220841 () Bool)

(assert (=> b!4014918 (= e!2489970 (and tp!1220840 tp!1220841))))

(declare-fun b!4014916 () Bool)

(declare-fun tp!1220842 () Bool)

(declare-fun tp!1220838 () Bool)

(assert (=> b!4014916 (= e!2489970 (and tp!1220842 tp!1220838))))

(declare-fun b!4014917 () Bool)

(declare-fun tp!1220839 () Bool)

(assert (=> b!4014917 (= e!2489970 tp!1220839)))

(declare-fun b!4014915 () Bool)

(assert (=> b!4014915 (= e!2489970 tp_is_empty!20453)))

(assert (=> b!4014190 (= tp!1220771 e!2489970)))

(assert (= (and b!4014190 ((_ is ElementMatch!11741) (regex!6836 (h!48374 rules!2999)))) b!4014915))

(assert (= (and b!4014190 ((_ is Concat!18808) (regex!6836 (h!48374 rules!2999)))) b!4014916))

(assert (= (and b!4014190 ((_ is Star!11741) (regex!6836 (h!48374 rules!2999)))) b!4014917))

(assert (= (and b!4014190 ((_ is Union!11741) (regex!6836 (h!48374 rules!2999)))) b!4014918))

(declare-fun b!4014919 () Bool)

(declare-fun e!2489971 () Bool)

(declare-fun tp!1220843 () Bool)

(assert (=> b!4014919 (= e!2489971 (and tp_is_empty!20453 tp!1220843))))

(assert (=> b!4014222 (= tp!1220767 e!2489971)))

(assert (= (and b!4014222 ((_ is Cons!42952) (t!333265 prefix!494))) b!4014919))

(declare-fun b!4014920 () Bool)

(declare-fun e!2489972 () Bool)

(declare-fun tp!1220844 () Bool)

(assert (=> b!4014920 (= e!2489972 (and tp_is_empty!20453 tp!1220844))))

(assert (=> b!4014205 (= tp!1220776 e!2489972)))

(assert (= (and b!4014205 ((_ is Cons!42952) (originalCharacters!7436 token!484))) b!4014920))

(declare-fun b!4014921 () Bool)

(declare-fun e!2489973 () Bool)

(declare-fun tp!1220845 () Bool)

(assert (=> b!4014921 (= e!2489973 (and tp_is_empty!20453 tp!1220845))))

(assert (=> b!4014199 (= tp!1220770 e!2489973)))

(assert (= (and b!4014199 ((_ is Cons!42952) (t!333265 newSuffix!27))) b!4014921))

(declare-fun b!4014932 () Bool)

(declare-fun b_free!111653 () Bool)

(declare-fun b_next!112357 () Bool)

(assert (=> b!4014932 (= b_free!111653 (not b_next!112357))))

(declare-fun tb!241481 () Bool)

(declare-fun t!333310 () Bool)

(assert (=> (and b!4014932 (= (toValue!9344 (transformation!6836 (h!48374 (t!333267 rules!2999)))) (toValue!9344 (transformation!6836 (rule!9882 token!484)))) t!333310) tb!241481))

(declare-fun result!292658 () Bool)

(assert (= result!292658 result!292618))

(assert (=> d!1188851 t!333310))

(declare-fun t!333312 () Bool)

(declare-fun tb!241483 () Bool)

(assert (=> (and b!4014932 (= (toValue!9344 (transformation!6836 (h!48374 (t!333267 rules!2999)))) (toValue!9344 (transformation!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197)))))) t!333312) tb!241483))

(declare-fun result!292660 () Bool)

(assert (= result!292660 result!292634))

(assert (=> d!1188977 t!333312))

(declare-fun tp!1220857 () Bool)

(declare-fun b_and!308475 () Bool)

(assert (=> b!4014932 (= tp!1220857 (and (=> t!333310 result!292658) (=> t!333312 result!292660) b_and!308475))))

(declare-fun b_free!111655 () Bool)

(declare-fun b_next!112359 () Bool)

(assert (=> b!4014932 (= b_free!111655 (not b_next!112359))))

(declare-fun tb!241485 () Bool)

(declare-fun t!333314 () Bool)

(assert (=> (and b!4014932 (= (toChars!9203 (transformation!6836 (h!48374 (t!333267 rules!2999)))) (toChars!9203 (transformation!6836 (rule!9882 (_1!24183 (v!39619 lt!1422197)))))) t!333314) tb!241485))

(declare-fun result!292662 () Bool)

(assert (= result!292662 result!292642))

(assert (=> d!1188985 t!333314))

(declare-fun tb!241487 () Bool)

(declare-fun t!333316 () Bool)

(assert (=> (and b!4014932 (= (toChars!9203 (transformation!6836 (h!48374 (t!333267 rules!2999)))) (toChars!9203 (transformation!6836 (rule!9882 token!484)))) t!333316) tb!241487))

(declare-fun result!292664 () Bool)

(assert (= result!292664 result!292648))

(assert (=> d!1189029 t!333316))

(assert (=> b!4014898 t!333316))

(declare-fun tp!1220856 () Bool)

(declare-fun b_and!308477 () Bool)

(assert (=> b!4014932 (= tp!1220856 (and (=> t!333314 result!292662) (=> t!333316 result!292664) b_and!308477))))

(declare-fun e!2489985 () Bool)

(assert (=> b!4014932 (= e!2489985 (and tp!1220857 tp!1220856))))

(declare-fun e!2489984 () Bool)

(declare-fun b!4014931 () Bool)

(declare-fun tp!1220854 () Bool)

(assert (=> b!4014931 (= e!2489984 (and tp!1220854 (inv!57373 (tag!7696 (h!48374 (t!333267 rules!2999)))) (inv!57376 (transformation!6836 (h!48374 (t!333267 rules!2999)))) e!2489985))))

(declare-fun b!4014930 () Bool)

(declare-fun e!2489983 () Bool)

(declare-fun tp!1220855 () Bool)

(assert (=> b!4014930 (= e!2489983 (and e!2489984 tp!1220855))))

(assert (=> b!4014220 (= tp!1220772 e!2489983)))

(assert (= b!4014931 b!4014932))

(assert (= b!4014930 b!4014931))

(assert (= (and b!4014220 ((_ is Cons!42954) (t!333267 rules!2999))) b!4014930))

(declare-fun m!4602433 () Bool)

(assert (=> b!4014931 m!4602433))

(declare-fun m!4602435 () Bool)

(assert (=> b!4014931 m!4602435))

(declare-fun b!4014933 () Bool)

(declare-fun e!2489986 () Bool)

(declare-fun tp!1220858 () Bool)

(assert (=> b!4014933 (= e!2489986 (and tp_is_empty!20453 tp!1220858))))

(assert (=> b!4014197 (= tp!1220773 e!2489986)))

(assert (= (and b!4014197 ((_ is Cons!42952) (t!333265 newSuffixResult!27))) b!4014933))

(declare-fun b!4014934 () Bool)

(declare-fun e!2489987 () Bool)

(declare-fun tp!1220859 () Bool)

(assert (=> b!4014934 (= e!2489987 (and tp_is_empty!20453 tp!1220859))))

(assert (=> b!4014223 (= tp!1220775 e!2489987)))

(assert (= (and b!4014223 ((_ is Cons!42952) (t!333265 suffixResult!105))) b!4014934))

(declare-fun b!4014938 () Bool)

(declare-fun e!2489988 () Bool)

(declare-fun tp!1220862 () Bool)

(declare-fun tp!1220863 () Bool)

(assert (=> b!4014938 (= e!2489988 (and tp!1220862 tp!1220863))))

(declare-fun b!4014936 () Bool)

(declare-fun tp!1220864 () Bool)

(declare-fun tp!1220860 () Bool)

(assert (=> b!4014936 (= e!2489988 (and tp!1220864 tp!1220860))))

(declare-fun b!4014937 () Bool)

(declare-fun tp!1220861 () Bool)

(assert (=> b!4014937 (= e!2489988 tp!1220861)))

(declare-fun b!4014935 () Bool)

(assert (=> b!4014935 (= e!2489988 tp_is_empty!20453)))

(assert (=> b!4014218 (= tp!1220766 e!2489988)))

(assert (= (and b!4014218 ((_ is ElementMatch!11741) (regex!6836 (rule!9882 token!484)))) b!4014935))

(assert (= (and b!4014218 ((_ is Concat!18808) (regex!6836 (rule!9882 token!484)))) b!4014936))

(assert (= (and b!4014218 ((_ is Star!11741) (regex!6836 (rule!9882 token!484)))) b!4014937))

(assert (= (and b!4014218 ((_ is Union!11741) (regex!6836 (rule!9882 token!484)))) b!4014938))

(declare-fun b_lambda!117185 () Bool)

(assert (= b_lambda!117167 (or (and b!4014208 b_free!111641 (= (toValue!9344 (transformation!6836 (h!48374 rules!2999))) (toValue!9344 (transformation!6836 (rule!9882 token!484))))) (and b!4014209 b_free!111645) (and b!4014932 b_free!111653 (= (toValue!9344 (transformation!6836 (h!48374 (t!333267 rules!2999)))) (toValue!9344 (transformation!6836 (rule!9882 token!484))))) b_lambda!117185)))

(declare-fun b_lambda!117187 () Bool)

(assert (= b_lambda!117181 (or (and b!4014208 b_free!111643 (= (toChars!9203 (transformation!6836 (h!48374 rules!2999))) (toChars!9203 (transformation!6836 (rule!9882 token!484))))) (and b!4014209 b_free!111647) (and b!4014932 b_free!111655 (= (toChars!9203 (transformation!6836 (h!48374 (t!333267 rules!2999)))) (toChars!9203 (transformation!6836 (rule!9882 token!484))))) b_lambda!117187)))

(declare-fun b_lambda!117189 () Bool)

(assert (= b_lambda!117183 (or (and b!4014208 b_free!111643 (= (toChars!9203 (transformation!6836 (h!48374 rules!2999))) (toChars!9203 (transformation!6836 (rule!9882 token!484))))) (and b!4014209 b_free!111647) (and b!4014932 b_free!111655 (= (toChars!9203 (transformation!6836 (h!48374 (t!333267 rules!2999)))) (toChars!9203 (transformation!6836 (rule!9882 token!484))))) b_lambda!117189)))

(check-sat (not b_next!112347) (not b!4014791) (not d!1189017) (not b!4014694) (not b!4014464) (not d!1188899) (not d!1189021) (not b!4014262) (not d!1188953) (not d!1188745) (not d!1189063) (not b!4014279) (not b!4014853) (not b_next!112349) (not b!4014778) (not b!4014916) (not b!4014898) (not b_lambda!117187) (not d!1188875) (not d!1188853) (not b!4014800) (not b_next!112359) (not b!4014657) (not b!4014864) (not b!4014459) (not b!4014936) (not b!4014827) (not b!4014568) (not b!4014781) (not b!4014460) (not b!4014892) (not b!4014930) (not b!4014859) (not d!1189013) (not bm!286535) (not d!1188949) (not b!4014466) (not b!4014871) (not d!1188983) (not b!4014686) (not b!4014884) (not b!4014277) (not b!4014831) (not d!1189001) (not b!4014826) (not d!1188891) (not b!4014458) (not b!4014537) (not b!4014790) (not b!4014862) (not b!4014804) (not d!1188995) (not d!1189029) (not b!4014917) (not d!1189005) (not b!4014536) (not d!1189035) (not d!1188895) (not b!4014803) (not b!4014933) (not b!4014848) (not b!4014869) (not b!4014503) (not b!4014659) (not b!4014551) (not b!4014553) (not b!4014505) (not d!1188973) (not b!4014888) (not d!1188761) (not d!1188733) (not d!1189057) (not b!4014253) (not b!4014828) (not b!4014787) (not b!4014788) (not b!4014830) (not d!1188999) (not b_next!112351) (not d!1189045) (not d!1188989) (not b!4014650) (not d!1189003) (not tb!241457) (not b!4014690) (not b!4014769) (not b!4014774) (not d!1189019) (not b!4014863) (not b!4014662) (not d!1188857) (not d!1188941) b_and!308461 (not b!4014764) (not d!1188965) (not b!4014931) (not b!4014463) (not d!1189039) (not b!4014728) (not b!4014747) (not b!4014261) (not b!4014576) (not b!4014850) b_and!308459 (not b!4014921) b_and!308477 (not b!4014569) (not b!4014693) (not b_next!112345) (not d!1188753) (not b!4014846) (not b!4014824) (not b_lambda!117189) (not b!4014534) (not b!4014528) (not b!4014866) (not b!4014920) (not b_lambda!117171) (not d!1188849) (not d!1189007) (not d!1188907) (not b!4014676) (not d!1188969) (not b!4014784) (not b!4014559) (not b!4014833) (not b_next!112357) b_and!308473 (not b!4014789) (not b!4014658) (not d!1188975) (not b!4014739) (not b!4014840) (not d!1188743) (not b!4014655) (not d!1188979) (not b!4014934) (not b!4014504) (not b!4014507) (not d!1189009) (not d!1188967) (not b!4014777) (not d!1188985) (not d!1188987) (not b!4014899) (not b!4014860) (not b!4014891) (not b!4014257) (not b!4014867) (not b!4014851) (not b!4014870) b_and!308471 (not b!4014561) (not b!4014560) (not b!4014937) (not b_lambda!117185) (not b!4014258) (not b!4014582) (not b!4014278) (not b!4014792) (not b!4014858) (not b!4014844) (not d!1188747) (not b!4014254) (not b!4014865) (not b!4014856) (not b!4014718) (not b!4014685) (not b!4014837) tp_is_empty!20453 (not b!4014762) (not b!4014746) (not b!4014552) (not d!1189037) (not b!4014695) (not d!1189051) (not b!4014794) (not b!4014839) (not b!4014758) (not b!4014727) (not b!4014904) (not d!1189061) (not b!4014882) (not bm!286534) (not tb!241465) (not b_lambda!117179) (not tb!241473) (not b!4014779) b_and!308475 (not d!1188865) (not b!4014759) (not b!4014829) (not d!1189047) (not b!4014567) (not b!4014508) (not b!4014575) (not b!4014786) (not d!1188963) (not b!4014675) (not d!1188959) (not b!4014763) (not b!4014299) (not b!4014919) (not b!4014674) (not b!4014834) (not b!4014847) (not b!4014797) (not d!1188859) (not tb!241477) (not d!1188775) (not b!4014717) (not b!4014461) (not b!4014783) (not d!1189027) (not b!4014738) (not d!1189059) (not b!4014823) (not d!1188971) (not b!4014843) (not d!1188991) (not d!1189055) (not b!4014889) (not b!4014918) (not b!4014886) (not b!4014462) (not b!4014842) (not b!4014938) (not d!1188951) (not bm!286531))
(check-sat (not b_next!112347) (not b_next!112349) (not b_next!112359) (not b_next!112351) b_and!308461 (not b_next!112345) b_and!308471 b_and!308475 b_and!308459 b_and!308477 (not b_next!112357) b_and!308473)

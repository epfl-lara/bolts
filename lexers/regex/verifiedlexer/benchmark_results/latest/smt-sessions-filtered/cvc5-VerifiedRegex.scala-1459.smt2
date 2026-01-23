; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!77600 () Bool)

(assert start!77600)

(declare-fun b!860153 () Bool)

(declare-fun b_free!26213 () Bool)

(declare-fun b_next!26277 () Bool)

(assert (=> b!860153 (= b_free!26213 (not b_next!26277))))

(declare-fun tp!271531 () Bool)

(declare-fun b_and!76545 () Bool)

(assert (=> b!860153 (= tp!271531 b_and!76545)))

(declare-fun b_free!26215 () Bool)

(declare-fun b_next!26279 () Bool)

(assert (=> b!860153 (= b_free!26215 (not b_next!26279))))

(declare-fun tp!271522 () Bool)

(declare-fun b_and!76547 () Bool)

(assert (=> b!860153 (= tp!271522 b_and!76547)))

(declare-fun b!860161 () Bool)

(declare-fun b_free!26217 () Bool)

(declare-fun b_next!26281 () Bool)

(assert (=> b!860161 (= b_free!26217 (not b_next!26281))))

(declare-fun tp!271521 () Bool)

(declare-fun b_and!76549 () Bool)

(assert (=> b!860161 (= tp!271521 b_and!76549)))

(declare-fun b_free!26219 () Bool)

(declare-fun b_next!26283 () Bool)

(assert (=> b!860161 (= b_free!26219 (not b_next!26283))))

(declare-fun tp!271527 () Bool)

(declare-fun b_and!76551 () Bool)

(assert (=> b!860161 (= tp!271527 b_and!76551)))

(declare-fun b!860164 () Bool)

(declare-fun b_free!26221 () Bool)

(declare-fun b_next!26285 () Bool)

(assert (=> b!860164 (= b_free!26221 (not b_next!26285))))

(declare-fun tp!271533 () Bool)

(declare-fun b_and!76553 () Bool)

(assert (=> b!860164 (= tp!271533 b_and!76553)))

(declare-fun b_free!26223 () Bool)

(declare-fun b_next!26287 () Bool)

(assert (=> b!860164 (= b_free!26223 (not b_next!26287))))

(declare-fun tp!271532 () Bool)

(declare-fun b_and!76555 () Bool)

(assert (=> b!860164 (= tp!271532 b_and!76555)))

(declare-fun b!860150 () Bool)

(declare-fun e!566238 () Bool)

(declare-datatypes ((List!9308 0))(
  ( (Nil!9292) (Cons!9292 (h!14693 (_ BitVec 16)) (t!97528 List!9308)) )
))
(declare-datatypes ((TokenValue!1809 0))(
  ( (FloatLiteralValue!3618 (text!13108 List!9308)) (TokenValueExt!1808 (__x!7349 Int)) (Broken!9045 (value!56350 List!9308)) (Object!1824) (End!1809) (Def!1809) (Underscore!1809) (Match!1809) (Else!1809) (Error!1809) (Case!1809) (If!1809) (Extends!1809) (Abstract!1809) (Class!1809) (Val!1809) (DelimiterValue!3618 (del!1869 List!9308)) (KeywordValue!1815 (value!56351 List!9308)) (CommentValue!3618 (value!56352 List!9308)) (WhitespaceValue!3618 (value!56353 List!9308)) (IndentationValue!1809 (value!56354 List!9308)) (String!10944) (Int32!1809) (Broken!9046 (value!56355 List!9308)) (Boolean!1810) (Unit!13825) (OperatorValue!1812 (op!1869 List!9308)) (IdentifierValue!3618 (value!56356 List!9308)) (IdentifierValue!3619 (value!56357 List!9308)) (WhitespaceValue!3619 (value!56358 List!9308)) (True!3618) (False!3618) (Broken!9047 (value!56359 List!9308)) (Broken!9048 (value!56360 List!9308)) (True!3619) (RightBrace!1809) (RightBracket!1809) (Colon!1809) (Null!1809) (Comma!1809) (LeftBracket!1809) (False!3619) (LeftBrace!1809) (ImaginaryLiteralValue!1809 (text!13109 List!9308)) (StringLiteralValue!5427 (value!56361 List!9308)) (EOFValue!1809 (value!56362 List!9308)) (IdentValue!1809 (value!56363 List!9308)) (DelimiterValue!3619 (value!56364 List!9308)) (DedentValue!1809 (value!56365 List!9308)) (NewLineValue!1809 (value!56366 List!9308)) (IntegerValue!5427 (value!56367 (_ BitVec 32)) (text!13110 List!9308)) (IntegerValue!5428 (value!56368 Int) (text!13111 List!9308)) (Times!1809) (Or!1809) (Equal!1809) (Minus!1809) (Broken!9049 (value!56369 List!9308)) (And!1809) (Div!1809) (LessEqual!1809) (Mod!1809) (Concat!3985) (Not!1809) (Plus!1809) (SpaceValue!1809 (value!56370 List!9308)) (IntegerValue!5429 (value!56371 Int) (text!13112 List!9308)) (StringLiteralValue!5428 (text!13113 List!9308)) (FloatLiteralValue!3619 (text!13114 List!9308)) (BytesLiteralValue!1809 (value!56372 List!9308)) (CommentValue!3619 (value!56373 List!9308)) (StringLiteralValue!5429 (value!56374 List!9308)) (ErrorTokenValue!1809 (msg!1870 List!9308)) )
))
(declare-datatypes ((C!4922 0))(
  ( (C!4923 (val!2709 Int)) )
))
(declare-datatypes ((Regex!2176 0))(
  ( (ElementMatch!2176 (c!139249 C!4922)) (Concat!3986 (regOne!4864 Regex!2176) (regTwo!4864 Regex!2176)) (EmptyExpr!2176) (Star!2176 (reg!2505 Regex!2176)) (EmptyLang!2176) (Union!2176 (regOne!4865 Regex!2176) (regTwo!4865 Regex!2176)) )
))
(declare-datatypes ((String!10945 0))(
  ( (String!10946 (value!56375 String)) )
))
(declare-datatypes ((List!9309 0))(
  ( (Nil!9293) (Cons!9293 (h!14694 C!4922) (t!97529 List!9309)) )
))
(declare-datatypes ((IArray!6165 0))(
  ( (IArray!6166 (innerList!3140 List!9309)) )
))
(declare-datatypes ((Conc!3080 0))(
  ( (Node!3080 (left!6877 Conc!3080) (right!7207 Conc!3080) (csize!6390 Int) (cheight!3291 Int)) (Leaf!4540 (xs!5769 IArray!6165) (csize!6391 Int)) (Empty!3080) )
))
(declare-datatypes ((BalanceConc!6174 0))(
  ( (BalanceConc!6175 (c!139250 Conc!3080)) )
))
(declare-datatypes ((TokenValueInjection!3318 0))(
  ( (TokenValueInjection!3319 (toValue!2808 Int) (toChars!2667 Int)) )
))
(declare-datatypes ((Rule!3286 0))(
  ( (Rule!3287 (regex!1743 Regex!2176) (tag!2005 String!10945) (isSeparator!1743 Bool) (transformation!1743 TokenValueInjection!3318)) )
))
(declare-datatypes ((Token!3152 0))(
  ( (Token!3153 (value!56376 TokenValue!1809) (rule!3166 Rule!3286) (size!7758 Int) (originalCharacters!2299 List!9309)) )
))
(declare-datatypes ((List!9310 0))(
  ( (Nil!9294) (Cons!9294 (h!14695 Token!3152) (t!97530 List!9310)) )
))
(declare-fun l!5107 () List!9310)

(declare-fun tp!271529 () Bool)

(declare-fun e!566239 () Bool)

(declare-fun inv!11817 (String!10945) Bool)

(declare-fun inv!11820 (TokenValueInjection!3318) Bool)

(assert (=> b!860150 (= e!566238 (and tp!271529 (inv!11817 (tag!2005 (rule!3166 (h!14695 l!5107)))) (inv!11820 (transformation!1743 (rule!3166 (h!14695 l!5107)))) e!566239))))

(declare-fun b!860151 () Bool)

(declare-fun res!392414 () Bool)

(declare-fun e!566240 () Bool)

(assert (=> b!860151 (=> (not res!392414) (not e!566240))))

(declare-datatypes ((List!9311 0))(
  ( (Nil!9295) (Cons!9295 (h!14696 Rule!3286) (t!97531 List!9311)) )
))
(declare-fun rules!2621 () List!9311)

(declare-datatypes ((LexerInterface!1545 0))(
  ( (LexerInterfaceExt!1542 (__x!7350 Int)) (Lexer!1543) )
))
(declare-fun thiss!20117 () LexerInterface!1545)

(declare-fun rulesProduceEachTokenIndividuallyList!433 (LexerInterface!1545 List!9311 List!9310) Bool)

(assert (=> b!860151 (= res!392414 (rulesProduceEachTokenIndividuallyList!433 thiss!20117 rules!2621 l!5107))))

(declare-fun b!860152 () Bool)

(declare-fun e!566227 () Bool)

(declare-fun tp!271528 () Bool)

(declare-fun inv!21 (TokenValue!1809) Bool)

(assert (=> b!860152 (= e!566227 (and (inv!21 (value!56376 (h!14695 l!5107))) e!566238 tp!271528))))

(assert (=> b!860153 (= e!566239 (and tp!271531 tp!271522))))

(declare-fun tp!271523 () Bool)

(declare-fun separatorToken!297 () Token!3152)

(declare-fun b!860154 () Bool)

(declare-fun e!566242 () Bool)

(declare-fun e!566236 () Bool)

(assert (=> b!860154 (= e!566236 (and (inv!21 (value!56376 separatorToken!297)) e!566242 tp!271523))))

(declare-fun b!860155 () Bool)

(declare-fun res!392410 () Bool)

(assert (=> b!860155 (=> (not res!392410) (not e!566240))))

(assert (=> b!860155 (= res!392410 (isSeparator!1743 (rule!3166 separatorToken!297)))))

(declare-fun b!860156 () Bool)

(declare-fun e!566229 () Bool)

(declare-fun e!566241 () Bool)

(declare-fun tp!271526 () Bool)

(assert (=> b!860156 (= e!566229 (and e!566241 tp!271526))))

(declare-fun b!860157 () Bool)

(declare-fun tp!271530 () Bool)

(declare-fun e!566235 () Bool)

(assert (=> b!860157 (= e!566242 (and tp!271530 (inv!11817 (tag!2005 (rule!3166 separatorToken!297))) (inv!11820 (transformation!1743 (rule!3166 separatorToken!297))) e!566235))))

(declare-fun b!860158 () Bool)

(declare-fun res!392408 () Bool)

(assert (=> b!860158 (=> (not res!392408) (not e!566240))))

(declare-fun rulesProduceIndividualToken!609 (LexerInterface!1545 List!9311 Token!3152) Bool)

(assert (=> b!860158 (= res!392408 (rulesProduceIndividualToken!609 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!860159 () Bool)

(declare-fun res!392409 () Bool)

(declare-fun e!566233 () Bool)

(assert (=> b!860159 (=> res!392409 e!566233)))

(declare-fun lt!325157 () List!9310)

(assert (=> b!860159 (= res!392409 (not (= (h!14695 (t!97530 lt!325157)) separatorToken!297)))))

(declare-fun b!860160 () Bool)

(declare-fun res!392411 () Bool)

(assert (=> b!860160 (=> res!392411 e!566233)))

(declare-fun head!1489 (List!9310) Token!3152)

(assert (=> b!860160 (= res!392411 (not (= (head!1489 l!5107) (h!14695 lt!325157))))))

(declare-fun e!566232 () Bool)

(assert (=> b!860161 (= e!566232 (and tp!271521 tp!271527))))

(declare-fun tp!271524 () Bool)

(declare-fun e!566228 () Bool)

(declare-fun b!860162 () Bool)

(declare-fun inv!11821 (Token!3152) Bool)

(assert (=> b!860162 (= e!566228 (and (inv!11821 (h!14695 l!5107)) e!566227 tp!271524))))

(declare-fun b!860163 () Bool)

(declare-fun res!392413 () Bool)

(assert (=> b!860163 (=> res!392413 e!566233)))

(declare-fun withSeparatorTokenList!73 (LexerInterface!1545 List!9310 Token!3152) List!9310)

(declare-fun tail!1051 (List!9310) List!9310)

(assert (=> b!860163 (= res!392413 (not (= (t!97530 (t!97530 lt!325157)) (withSeparatorTokenList!73 thiss!20117 (tail!1051 l!5107) separatorToken!297))))))

(assert (=> b!860164 (= e!566235 (and tp!271533 tp!271532))))

(declare-fun b!860165 () Bool)

(assert (=> b!860165 (= e!566240 (not e!566233))))

(declare-fun res!392404 () Bool)

(assert (=> b!860165 (=> res!392404 e!566233)))

(assert (=> b!860165 (= res!392404 (or (not (is-Cons!9294 lt!325157)) (not (is-Cons!9294 (t!97530 lt!325157)))))))

(assert (=> b!860165 (rulesProduceEachTokenIndividuallyList!433 thiss!20117 rules!2621 lt!325157)))

(assert (=> b!860165 (= lt!325157 (withSeparatorTokenList!73 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13826 0))(
  ( (Unit!13827) )
))
(declare-fun lt!325156 () Unit!13826)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!73 (LexerInterface!1545 List!9311 List!9310 Token!3152) Unit!13826)

(assert (=> b!860165 (= lt!325156 (withSeparatorTokenListPreservesRulesProduceTokens!73 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun b!860166 () Bool)

(assert (=> b!860166 (= e!566233 (rulesProduceIndividualToken!609 thiss!20117 rules!2621 (h!14695 lt!325157)))))

(declare-fun b!860167 () Bool)

(declare-fun res!392407 () Bool)

(assert (=> b!860167 (=> (not res!392407) (not e!566240))))

(declare-fun lambda!25839 () Int)

(declare-fun forall!2206 (List!9310 Int) Bool)

(assert (=> b!860167 (= res!392407 (forall!2206 l!5107 lambda!25839))))

(declare-fun b!860168 () Bool)

(declare-fun res!392405 () Bool)

(assert (=> b!860168 (=> (not res!392405) (not e!566240))))

(declare-fun rulesInvariant!1421 (LexerInterface!1545 List!9311) Bool)

(assert (=> b!860168 (= res!392405 (rulesInvariant!1421 thiss!20117 rules!2621))))

(declare-fun b!860169 () Bool)

(declare-fun res!392412 () Bool)

(assert (=> b!860169 (=> (not res!392412) (not e!566240))))

(declare-fun sepAndNonSepRulesDisjointChars!543 (List!9311 List!9311) Bool)

(assert (=> b!860169 (= res!392412 (sepAndNonSepRulesDisjointChars!543 rules!2621 rules!2621))))

(declare-fun res!392406 () Bool)

(assert (=> start!77600 (=> (not res!392406) (not e!566240))))

(assert (=> start!77600 (= res!392406 (is-Lexer!1543 thiss!20117))))

(assert (=> start!77600 e!566240))

(assert (=> start!77600 true))

(assert (=> start!77600 e!566229))

(assert (=> start!77600 e!566228))

(assert (=> start!77600 (and (inv!11821 separatorToken!297) e!566236)))

(declare-fun b!860170 () Bool)

(declare-fun res!392403 () Bool)

(assert (=> b!860170 (=> (not res!392403) (not e!566240))))

(declare-fun isEmpty!5516 (List!9311) Bool)

(assert (=> b!860170 (= res!392403 (not (isEmpty!5516 rules!2621)))))

(declare-fun tp!271525 () Bool)

(declare-fun b!860171 () Bool)

(assert (=> b!860171 (= e!566241 (and tp!271525 (inv!11817 (tag!2005 (h!14696 rules!2621))) (inv!11820 (transformation!1743 (h!14696 rules!2621))) e!566232))))

(assert (= (and start!77600 res!392406) b!860170))

(assert (= (and b!860170 res!392403) b!860168))

(assert (= (and b!860168 res!392405) b!860151))

(assert (= (and b!860151 res!392414) b!860158))

(assert (= (and b!860158 res!392408) b!860155))

(assert (= (and b!860155 res!392410) b!860167))

(assert (= (and b!860167 res!392407) b!860169))

(assert (= (and b!860169 res!392412) b!860165))

(assert (= (and b!860165 (not res!392404)) b!860163))

(assert (= (and b!860163 (not res!392413)) b!860160))

(assert (= (and b!860160 (not res!392411)) b!860159))

(assert (= (and b!860159 (not res!392409)) b!860166))

(assert (= b!860171 b!860161))

(assert (= b!860156 b!860171))

(assert (= (and start!77600 (is-Cons!9295 rules!2621)) b!860156))

(assert (= b!860150 b!860153))

(assert (= b!860152 b!860150))

(assert (= b!860162 b!860152))

(assert (= (and start!77600 (is-Cons!9294 l!5107)) b!860162))

(assert (= b!860157 b!860164))

(assert (= b!860154 b!860157))

(assert (= start!77600 b!860154))

(declare-fun m!1103805 () Bool)

(assert (=> b!860150 m!1103805))

(declare-fun m!1103807 () Bool)

(assert (=> b!860150 m!1103807))

(declare-fun m!1103809 () Bool)

(assert (=> b!860162 m!1103809))

(declare-fun m!1103811 () Bool)

(assert (=> b!860154 m!1103811))

(declare-fun m!1103813 () Bool)

(assert (=> b!860165 m!1103813))

(declare-fun m!1103815 () Bool)

(assert (=> b!860165 m!1103815))

(declare-fun m!1103817 () Bool)

(assert (=> b!860165 m!1103817))

(declare-fun m!1103819 () Bool)

(assert (=> b!860171 m!1103819))

(declare-fun m!1103821 () Bool)

(assert (=> b!860171 m!1103821))

(declare-fun m!1103823 () Bool)

(assert (=> b!860152 m!1103823))

(declare-fun m!1103825 () Bool)

(assert (=> b!860163 m!1103825))

(assert (=> b!860163 m!1103825))

(declare-fun m!1103827 () Bool)

(assert (=> b!860163 m!1103827))

(declare-fun m!1103829 () Bool)

(assert (=> b!860167 m!1103829))

(declare-fun m!1103831 () Bool)

(assert (=> b!860166 m!1103831))

(declare-fun m!1103833 () Bool)

(assert (=> b!860157 m!1103833))

(declare-fun m!1103835 () Bool)

(assert (=> b!860157 m!1103835))

(declare-fun m!1103837 () Bool)

(assert (=> start!77600 m!1103837))

(declare-fun m!1103839 () Bool)

(assert (=> b!860169 m!1103839))

(declare-fun m!1103841 () Bool)

(assert (=> b!860158 m!1103841))

(declare-fun m!1103843 () Bool)

(assert (=> b!860151 m!1103843))

(declare-fun m!1103845 () Bool)

(assert (=> b!860160 m!1103845))

(declare-fun m!1103847 () Bool)

(assert (=> b!860168 m!1103847))

(declare-fun m!1103849 () Bool)

(assert (=> b!860170 m!1103849))

(push 1)

(assert (not b!860150))

(assert b_and!76553)

(assert (not b!860151))

(assert (not b_next!26281))

(assert (not b!860168))

(assert (not b!860165))

(assert b_and!76547)

(assert (not b!860170))

(assert b_and!76555)

(assert (not start!77600))

(assert (not b!860152))

(assert (not b!860156))

(assert (not b!860167))

(assert (not b!860166))

(assert (not b_next!26287))

(assert (not b_next!26277))

(assert (not b_next!26285))

(assert (not b_next!26279))

(assert (not b!860169))

(assert (not b!860171))

(assert (not b!860163))

(assert b_and!76549)

(assert (not b!860154))

(assert (not b!860158))

(assert (not b!860162))

(assert b_and!76551)

(assert (not b!860157))

(assert b_and!76545)

(assert (not b_next!26283))

(assert (not b!860160))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!26279))

(assert b_and!76549)

(assert b_and!76553)

(assert (not b_next!26281))

(assert b_and!76547)

(assert b_and!76555)

(assert b_and!76551)

(assert b_and!76545)

(assert (not b_next!26287))

(assert (not b_next!26277))

(assert (not b_next!26285))

(assert (not b_next!26283))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!269500 () Bool)

(declare-fun lt!325193 () Bool)

(declare-fun e!566316 () Bool)

(assert (=> d!269500 (= lt!325193 e!566316)))

(declare-fun res!392478 () Bool)

(assert (=> d!269500 (=> (not res!392478) (not e!566316))))

(declare-datatypes ((IArray!6169 0))(
  ( (IArray!6170 (innerList!3142 List!9310)) )
))
(declare-datatypes ((Conc!3082 0))(
  ( (Node!3082 (left!6883 Conc!3082) (right!7213 Conc!3082) (csize!6394 Int) (cheight!3293 Int)) (Leaf!4542 (xs!5771 IArray!6169) (csize!6395 Int)) (Empty!3082) )
))
(declare-datatypes ((BalanceConc!6178 0))(
  ( (BalanceConc!6179 (c!139291 Conc!3082)) )
))
(declare-fun list!3667 (BalanceConc!6178) List!9310)

(declare-datatypes ((tuple2!10442 0))(
  ( (tuple2!10443 (_1!6047 BalanceConc!6178) (_2!6047 BalanceConc!6174)) )
))
(declare-fun lex!635 (LexerInterface!1545 List!9311 BalanceConc!6174) tuple2!10442)

(declare-fun print!572 (LexerInterface!1545 BalanceConc!6178) BalanceConc!6174)

(declare-fun singletonSeq!562 (Token!3152) BalanceConc!6178)

(assert (=> d!269500 (= res!392478 (= (list!3667 (_1!6047 (lex!635 thiss!20117 rules!2621 (print!572 thiss!20117 (singletonSeq!562 (h!14695 lt!325157)))))) (list!3667 (singletonSeq!562 (h!14695 lt!325157)))))))

(declare-fun e!566317 () Bool)

(assert (=> d!269500 (= lt!325193 e!566317)))

(declare-fun res!392477 () Bool)

(assert (=> d!269500 (=> (not res!392477) (not e!566317))))

(declare-fun lt!325192 () tuple2!10442)

(declare-fun size!7760 (BalanceConc!6178) Int)

(assert (=> d!269500 (= res!392477 (= (size!7760 (_1!6047 lt!325192)) 1))))

(assert (=> d!269500 (= lt!325192 (lex!635 thiss!20117 rules!2621 (print!572 thiss!20117 (singletonSeq!562 (h!14695 lt!325157)))))))

(assert (=> d!269500 (not (isEmpty!5516 rules!2621))))

(assert (=> d!269500 (= (rulesProduceIndividualToken!609 thiss!20117 rules!2621 (h!14695 lt!325157)) lt!325193)))

(declare-fun b!860274 () Bool)

(declare-fun res!392476 () Bool)

(assert (=> b!860274 (=> (not res!392476) (not e!566317))))

(declare-fun apply!1948 (BalanceConc!6178 Int) Token!3152)

(assert (=> b!860274 (= res!392476 (= (apply!1948 (_1!6047 lt!325192) 0) (h!14695 lt!325157)))))

(declare-fun b!860275 () Bool)

(declare-fun isEmpty!5518 (BalanceConc!6174) Bool)

(assert (=> b!860275 (= e!566317 (isEmpty!5518 (_2!6047 lt!325192)))))

(declare-fun b!860276 () Bool)

(assert (=> b!860276 (= e!566316 (isEmpty!5518 (_2!6047 (lex!635 thiss!20117 rules!2621 (print!572 thiss!20117 (singletonSeq!562 (h!14695 lt!325157)))))))))

(assert (= (and d!269500 res!392477) b!860274))

(assert (= (and b!860274 res!392476) b!860275))

(assert (= (and d!269500 res!392478) b!860276))

(assert (=> d!269500 m!1103849))

(declare-fun m!1103947 () Bool)

(assert (=> d!269500 m!1103947))

(declare-fun m!1103949 () Bool)

(assert (=> d!269500 m!1103949))

(declare-fun m!1103951 () Bool)

(assert (=> d!269500 m!1103951))

(declare-fun m!1103953 () Bool)

(assert (=> d!269500 m!1103953))

(assert (=> d!269500 m!1103947))

(declare-fun m!1103955 () Bool)

(assert (=> d!269500 m!1103955))

(declare-fun m!1103957 () Bool)

(assert (=> d!269500 m!1103957))

(assert (=> d!269500 m!1103947))

(assert (=> d!269500 m!1103951))

(declare-fun m!1103959 () Bool)

(assert (=> b!860274 m!1103959))

(declare-fun m!1103961 () Bool)

(assert (=> b!860275 m!1103961))

(assert (=> b!860276 m!1103947))

(assert (=> b!860276 m!1103947))

(assert (=> b!860276 m!1103951))

(assert (=> b!860276 m!1103951))

(assert (=> b!860276 m!1103953))

(declare-fun m!1103963 () Bool)

(assert (=> b!860276 m!1103963))

(assert (=> b!860166 d!269500))

(declare-fun b!860288 () Bool)

(declare-fun e!566325 () Bool)

(declare-fun inv!16 (TokenValue!1809) Bool)

(assert (=> b!860288 (= e!566325 (inv!16 (value!56376 separatorToken!297)))))

(declare-fun b!860289 () Bool)

(declare-fun e!566326 () Bool)

(assert (=> b!860289 (= e!566325 e!566326)))

(declare-fun c!139266 () Bool)

(assert (=> b!860289 (= c!139266 (is-IntegerValue!5428 (value!56376 separatorToken!297)))))

(declare-fun b!860287 () Bool)

(declare-fun e!566324 () Bool)

(declare-fun inv!15 (TokenValue!1809) Bool)

(assert (=> b!860287 (= e!566324 (inv!15 (value!56376 separatorToken!297)))))

(declare-fun d!269508 () Bool)

(declare-fun c!139267 () Bool)

(assert (=> d!269508 (= c!139267 (is-IntegerValue!5427 (value!56376 separatorToken!297)))))

(assert (=> d!269508 (= (inv!21 (value!56376 separatorToken!297)) e!566325)))

(declare-fun b!860290 () Bool)

(declare-fun res!392481 () Bool)

(assert (=> b!860290 (=> res!392481 e!566324)))

(assert (=> b!860290 (= res!392481 (not (is-IntegerValue!5429 (value!56376 separatorToken!297))))))

(assert (=> b!860290 (= e!566326 e!566324)))

(declare-fun b!860291 () Bool)

(declare-fun inv!17 (TokenValue!1809) Bool)

(assert (=> b!860291 (= e!566326 (inv!17 (value!56376 separatorToken!297)))))

(assert (= (and d!269508 c!139267) b!860288))

(assert (= (and d!269508 (not c!139267)) b!860289))

(assert (= (and b!860289 c!139266) b!860291))

(assert (= (and b!860289 (not c!139266)) b!860290))

(assert (= (and b!860290 (not res!392481)) b!860287))

(declare-fun m!1103965 () Bool)

(assert (=> b!860288 m!1103965))

(declare-fun m!1103967 () Bool)

(assert (=> b!860287 m!1103967))

(declare-fun m!1103969 () Bool)

(assert (=> b!860291 m!1103969))

(assert (=> b!860154 d!269508))

(declare-fun bs!232350 () Bool)

(declare-fun d!269510 () Bool)

(assert (= bs!232350 (and d!269510 b!860167)))

(declare-fun lambda!25845 () Int)

(assert (=> bs!232350 (not (= lambda!25845 lambda!25839))))

(declare-fun b!860347 () Bool)

(declare-fun e!566366 () Bool)

(assert (=> b!860347 (= e!566366 true)))

(declare-fun b!860346 () Bool)

(declare-fun e!566365 () Bool)

(assert (=> b!860346 (= e!566365 e!566366)))

(declare-fun b!860345 () Bool)

(declare-fun e!566364 () Bool)

(assert (=> b!860345 (= e!566364 e!566365)))

(assert (=> d!269510 e!566364))

(assert (= b!860346 b!860347))

(assert (= b!860345 b!860346))

(assert (= (and d!269510 (is-Cons!9295 rules!2621)) b!860345))

(declare-fun order!6043 () Int)

(declare-fun order!6041 () Int)

(declare-fun dynLambda!4387 (Int Int) Int)

(declare-fun dynLambda!4388 (Int Int) Int)

(assert (=> b!860347 (< (dynLambda!4387 order!6041 (toValue!2808 (transformation!1743 (h!14696 rules!2621)))) (dynLambda!4388 order!6043 lambda!25845))))

(declare-fun order!6045 () Int)

(declare-fun dynLambda!4389 (Int Int) Int)

(assert (=> b!860347 (< (dynLambda!4389 order!6045 (toChars!2667 (transformation!1743 (h!14696 rules!2621)))) (dynLambda!4388 order!6043 lambda!25845))))

(assert (=> d!269510 true))

(declare-fun lt!325204 () Bool)

(assert (=> d!269510 (= lt!325204 (forall!2206 lt!325157 lambda!25845))))

(declare-fun e!566356 () Bool)

(assert (=> d!269510 (= lt!325204 e!566356)))

(declare-fun res!392509 () Bool)

(assert (=> d!269510 (=> res!392509 e!566356)))

(assert (=> d!269510 (= res!392509 (not (is-Cons!9294 lt!325157)))))

(assert (=> d!269510 (not (isEmpty!5516 rules!2621))))

(assert (=> d!269510 (= (rulesProduceEachTokenIndividuallyList!433 thiss!20117 rules!2621 lt!325157) lt!325204)))

(declare-fun b!860335 () Bool)

(declare-fun e!566357 () Bool)

(assert (=> b!860335 (= e!566356 e!566357)))

(declare-fun res!392508 () Bool)

(assert (=> b!860335 (=> (not res!392508) (not e!566357))))

(assert (=> b!860335 (= res!392508 (rulesProduceIndividualToken!609 thiss!20117 rules!2621 (h!14695 lt!325157)))))

(declare-fun b!860336 () Bool)

(assert (=> b!860336 (= e!566357 (rulesProduceEachTokenIndividuallyList!433 thiss!20117 rules!2621 (t!97530 lt!325157)))))

(assert (= (and d!269510 (not res!392509)) b!860335))

(assert (= (and b!860335 res!392508) b!860336))

(declare-fun m!1104007 () Bool)

(assert (=> d!269510 m!1104007))

(assert (=> d!269510 m!1103849))

(assert (=> b!860335 m!1103831))

(declare-fun m!1104009 () Bool)

(assert (=> b!860336 m!1104009))

(assert (=> b!860165 d!269510))

(declare-fun b!860370 () Bool)

(declare-fun e!566382 () Bool)

(declare-fun e!566379 () Bool)

(assert (=> b!860370 (= e!566382 e!566379)))

(declare-fun res!392521 () Bool)

(assert (=> b!860370 (=> res!392521 e!566379)))

(assert (=> b!860370 (= res!392521 (not (is-Cons!9294 l!5107)))))

(declare-fun b!860371 () Bool)

(declare-fun e!566381 () List!9309)

(declare-fun lt!325228 () List!9310)

(declare-fun ++!2405 (List!9309 List!9309) List!9309)

(declare-fun list!3668 (BalanceConc!6174) List!9309)

(declare-fun charsOf!1006 (Token!3152) BalanceConc!6174)

(declare-fun printList!489 (LexerInterface!1545 List!9310) List!9309)

(assert (=> b!860371 (= e!566381 (++!2405 (list!3668 (charsOf!1006 (h!14695 lt!325228))) (printList!489 thiss!20117 (t!97530 lt!325228))))))

(declare-fun b!860372 () Bool)

(declare-fun res!392518 () Bool)

(assert (=> b!860372 (=> (not res!392518) (not e!566382))))

(declare-fun e!566383 () Bool)

(assert (=> b!860372 (= res!392518 e!566383)))

(declare-fun res!392519 () Bool)

(assert (=> b!860372 (=> res!392519 e!566383)))

(assert (=> b!860372 (= res!392519 (not (is-Cons!9294 l!5107)))))

(declare-fun d!269520 () Bool)

(declare-fun lt!325226 () List!9310)

(declare-fun printWithSeparatorTokenList!47 (LexerInterface!1545 List!9310 Token!3152) List!9309)

(assert (=> d!269520 (= (printList!489 thiss!20117 lt!325226) (printWithSeparatorTokenList!47 thiss!20117 l!5107 separatorToken!297))))

(declare-fun e!566384 () List!9310)

(assert (=> d!269520 (= lt!325226 e!566384)))

(declare-fun c!139282 () Bool)

(assert (=> d!269520 (= c!139282 (is-Cons!9294 l!5107))))

(assert (=> d!269520 e!566382))

(declare-fun res!392520 () Bool)

(assert (=> d!269520 (=> (not res!392520) (not e!566382))))

(assert (=> d!269520 (= res!392520 (isSeparator!1743 (rule!3166 separatorToken!297)))))

(assert (=> d!269520 (= (withSeparatorTokenList!73 thiss!20117 l!5107 separatorToken!297) lt!325226)))

(declare-fun b!860373 () Bool)

(declare-fun $colon$colon!102 (List!9310 Token!3152) List!9310)

(assert (=> b!860373 (= e!566383 (= (printList!489 thiss!20117 ($colon$colon!102 ($colon$colon!102 (withSeparatorTokenList!73 thiss!20117 (t!97530 l!5107) separatorToken!297) separatorToken!297) (h!14695 l!5107))) e!566381))))

(declare-fun c!139280 () Bool)

(assert (=> b!860373 (= c!139280 (is-Cons!9294 lt!325228))))

(assert (=> b!860373 (= lt!325228 ($colon$colon!102 ($colon$colon!102 (withSeparatorTokenList!73 thiss!20117 (t!97530 l!5107) separatorToken!297) separatorToken!297) (h!14695 l!5107)))))

(declare-fun b!860374 () Bool)

(declare-fun e!566380 () List!9309)

(assert (=> b!860374 (= e!566380 Nil!9293)))

(declare-fun b!860375 () Bool)

(assert (=> b!860375 (= e!566384 ($colon$colon!102 ($colon$colon!102 (withSeparatorTokenList!73 thiss!20117 (t!97530 l!5107) separatorToken!297) separatorToken!297) (h!14695 l!5107)))))

(declare-fun lt!325222 () List!9309)

(assert (=> b!860375 (= lt!325222 (list!3668 (charsOf!1006 (h!14695 l!5107))))))

(declare-fun lt!325221 () List!9309)

(assert (=> b!860375 (= lt!325221 (list!3668 (charsOf!1006 separatorToken!297)))))

(declare-fun lt!325225 () List!9309)

(assert (=> b!860375 (= lt!325225 (printList!489 thiss!20117 (withSeparatorTokenList!73 thiss!20117 (t!97530 l!5107) separatorToken!297)))))

(declare-fun lt!325224 () Unit!13826)

(declare-fun lemmaConcatAssociativity!764 (List!9309 List!9309 List!9309) Unit!13826)

(assert (=> b!860375 (= lt!325224 (lemmaConcatAssociativity!764 lt!325222 lt!325221 lt!325225))))

(assert (=> b!860375 (= (++!2405 (++!2405 lt!325222 lt!325221) lt!325225) (++!2405 lt!325222 (++!2405 lt!325221 lt!325225)))))

(declare-fun lt!325223 () Unit!13826)

(assert (=> b!860375 (= lt!325223 lt!325224)))

(declare-fun b!860376 () Bool)

(declare-fun lt!325227 () List!9310)

(assert (=> b!860376 (= e!566380 (++!2405 (list!3668 (charsOf!1006 (h!14695 lt!325227))) (printList!489 thiss!20117 (t!97530 lt!325227))))))

(declare-fun b!860377 () Bool)

(assert (=> b!860377 (= e!566384 Nil!9294)))

(declare-fun b!860378 () Bool)

(assert (=> b!860378 (= e!566379 (= (printList!489 thiss!20117 ($colon$colon!102 (withSeparatorTokenList!73 thiss!20117 (t!97530 l!5107) separatorToken!297) separatorToken!297)) e!566380))))

(declare-fun c!139281 () Bool)

(assert (=> b!860378 (= c!139281 (is-Cons!9294 lt!325227))))

(assert (=> b!860378 (= lt!325227 ($colon$colon!102 (withSeparatorTokenList!73 thiss!20117 (t!97530 l!5107) separatorToken!297) separatorToken!297))))

(declare-fun b!860379 () Bool)

(assert (=> b!860379 (= e!566381 Nil!9293)))

(assert (= (and d!269520 res!392520) b!860372))

(assert (= (and b!860372 (not res!392519)) b!860373))

(assert (= (and b!860373 c!139280) b!860371))

(assert (= (and b!860373 (not c!139280)) b!860379))

(assert (= (and b!860372 res!392518) b!860370))

(assert (= (and b!860370 (not res!392521)) b!860378))

(assert (= (and b!860378 c!139281) b!860376))

(assert (= (and b!860378 (not c!139281)) b!860374))

(assert (= (and d!269520 c!139282) b!860375))

(assert (= (and d!269520 (not c!139282)) b!860377))

(declare-fun m!1104011 () Bool)

(assert (=> b!860371 m!1104011))

(assert (=> b!860371 m!1104011))

(declare-fun m!1104013 () Bool)

(assert (=> b!860371 m!1104013))

(declare-fun m!1104015 () Bool)

(assert (=> b!860371 m!1104015))

(assert (=> b!860371 m!1104013))

(assert (=> b!860371 m!1104015))

(declare-fun m!1104017 () Bool)

(assert (=> b!860371 m!1104017))

(declare-fun m!1104019 () Bool)

(assert (=> b!860373 m!1104019))

(assert (=> b!860373 m!1104019))

(declare-fun m!1104021 () Bool)

(assert (=> b!860373 m!1104021))

(assert (=> b!860373 m!1104021))

(declare-fun m!1104023 () Bool)

(assert (=> b!860373 m!1104023))

(assert (=> b!860373 m!1104023))

(declare-fun m!1104025 () Bool)

(assert (=> b!860373 m!1104025))

(declare-fun m!1104027 () Bool)

(assert (=> b!860376 m!1104027))

(assert (=> b!860376 m!1104027))

(declare-fun m!1104029 () Bool)

(assert (=> b!860376 m!1104029))

(declare-fun m!1104031 () Bool)

(assert (=> b!860376 m!1104031))

(assert (=> b!860376 m!1104029))

(assert (=> b!860376 m!1104031))

(declare-fun m!1104033 () Bool)

(assert (=> b!860376 m!1104033))

(assert (=> b!860378 m!1104019))

(assert (=> b!860378 m!1104019))

(assert (=> b!860378 m!1104021))

(assert (=> b!860378 m!1104021))

(declare-fun m!1104035 () Bool)

(assert (=> b!860378 m!1104035))

(declare-fun m!1104037 () Bool)

(assert (=> b!860375 m!1104037))

(declare-fun m!1104039 () Bool)

(assert (=> b!860375 m!1104039))

(assert (=> b!860375 m!1104019))

(assert (=> b!860375 m!1104021))

(declare-fun m!1104041 () Bool)

(assert (=> b!860375 m!1104041))

(assert (=> b!860375 m!1104019))

(declare-fun m!1104043 () Bool)

(assert (=> b!860375 m!1104043))

(declare-fun m!1104045 () Bool)

(assert (=> b!860375 m!1104045))

(assert (=> b!860375 m!1104041))

(declare-fun m!1104047 () Bool)

(assert (=> b!860375 m!1104047))

(assert (=> b!860375 m!1104021))

(assert (=> b!860375 m!1104023))

(assert (=> b!860375 m!1104019))

(assert (=> b!860375 m!1104045))

(declare-fun m!1104049 () Bool)

(assert (=> b!860375 m!1104049))

(assert (=> b!860375 m!1104037))

(declare-fun m!1104051 () Bool)

(assert (=> b!860375 m!1104051))

(declare-fun m!1104053 () Bool)

(assert (=> b!860375 m!1104053))

(assert (=> b!860375 m!1104051))

(declare-fun m!1104055 () Bool)

(assert (=> b!860375 m!1104055))

(declare-fun m!1104057 () Bool)

(assert (=> d!269520 m!1104057))

(declare-fun m!1104059 () Bool)

(assert (=> d!269520 m!1104059))

(assert (=> b!860165 d!269520))

(declare-fun d!269522 () Bool)

(assert (=> d!269522 (rulesProduceEachTokenIndividuallyList!433 thiss!20117 rules!2621 (withSeparatorTokenList!73 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!325231 () Unit!13826)

(declare-fun choose!5069 (LexerInterface!1545 List!9311 List!9310 Token!3152) Unit!13826)

(assert (=> d!269522 (= lt!325231 (choose!5069 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!269522 (not (isEmpty!5516 rules!2621))))

(assert (=> d!269522 (= (withSeparatorTokenListPreservesRulesProduceTokens!73 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!325231)))

(declare-fun bs!232351 () Bool)

(assert (= bs!232351 d!269522))

(assert (=> bs!232351 m!1103815))

(assert (=> bs!232351 m!1103815))

(declare-fun m!1104061 () Bool)

(assert (=> bs!232351 m!1104061))

(declare-fun m!1104063 () Bool)

(assert (=> bs!232351 m!1104063))

(assert (=> bs!232351 m!1103849))

(assert (=> b!860165 d!269522))

(declare-fun d!269524 () Bool)

(declare-fun lt!325233 () Bool)

(declare-fun e!566385 () Bool)

(assert (=> d!269524 (= lt!325233 e!566385)))

(declare-fun res!392524 () Bool)

(assert (=> d!269524 (=> (not res!392524) (not e!566385))))

(assert (=> d!269524 (= res!392524 (= (list!3667 (_1!6047 (lex!635 thiss!20117 rules!2621 (print!572 thiss!20117 (singletonSeq!562 separatorToken!297))))) (list!3667 (singletonSeq!562 separatorToken!297))))))

(declare-fun e!566386 () Bool)

(assert (=> d!269524 (= lt!325233 e!566386)))

(declare-fun res!392523 () Bool)

(assert (=> d!269524 (=> (not res!392523) (not e!566386))))

(declare-fun lt!325232 () tuple2!10442)

(assert (=> d!269524 (= res!392523 (= (size!7760 (_1!6047 lt!325232)) 1))))

(assert (=> d!269524 (= lt!325232 (lex!635 thiss!20117 rules!2621 (print!572 thiss!20117 (singletonSeq!562 separatorToken!297))))))

(assert (=> d!269524 (not (isEmpty!5516 rules!2621))))

(assert (=> d!269524 (= (rulesProduceIndividualToken!609 thiss!20117 rules!2621 separatorToken!297) lt!325233)))

(declare-fun b!860380 () Bool)

(declare-fun res!392522 () Bool)

(assert (=> b!860380 (=> (not res!392522) (not e!566386))))

(assert (=> b!860380 (= res!392522 (= (apply!1948 (_1!6047 lt!325232) 0) separatorToken!297))))

(declare-fun b!860381 () Bool)

(assert (=> b!860381 (= e!566386 (isEmpty!5518 (_2!6047 lt!325232)))))

(declare-fun b!860382 () Bool)

(assert (=> b!860382 (= e!566385 (isEmpty!5518 (_2!6047 (lex!635 thiss!20117 rules!2621 (print!572 thiss!20117 (singletonSeq!562 separatorToken!297))))))))

(assert (= (and d!269524 res!392523) b!860380))

(assert (= (and b!860380 res!392522) b!860381))

(assert (= (and d!269524 res!392524) b!860382))

(assert (=> d!269524 m!1103849))

(declare-fun m!1104065 () Bool)

(assert (=> d!269524 m!1104065))

(declare-fun m!1104067 () Bool)

(assert (=> d!269524 m!1104067))

(declare-fun m!1104069 () Bool)

(assert (=> d!269524 m!1104069))

(declare-fun m!1104071 () Bool)

(assert (=> d!269524 m!1104071))

(assert (=> d!269524 m!1104065))

(declare-fun m!1104073 () Bool)

(assert (=> d!269524 m!1104073))

(declare-fun m!1104075 () Bool)

(assert (=> d!269524 m!1104075))

(assert (=> d!269524 m!1104065))

(assert (=> d!269524 m!1104069))

(declare-fun m!1104077 () Bool)

(assert (=> b!860380 m!1104077))

(declare-fun m!1104079 () Bool)

(assert (=> b!860381 m!1104079))

(assert (=> b!860382 m!1104065))

(assert (=> b!860382 m!1104065))

(assert (=> b!860382 m!1104069))

(assert (=> b!860382 m!1104069))

(assert (=> b!860382 m!1104071))

(declare-fun m!1104081 () Bool)

(assert (=> b!860382 m!1104081))

(assert (=> b!860158 d!269524))

(declare-fun d!269526 () Bool)

(declare-fun res!392529 () Bool)

(declare-fun e!566391 () Bool)

(assert (=> d!269526 (=> res!392529 e!566391)))

(assert (=> d!269526 (= res!392529 (not (is-Cons!9295 rules!2621)))))

(assert (=> d!269526 (= (sepAndNonSepRulesDisjointChars!543 rules!2621 rules!2621) e!566391)))

(declare-fun b!860387 () Bool)

(declare-fun e!566392 () Bool)

(assert (=> b!860387 (= e!566391 e!566392)))

(declare-fun res!392530 () Bool)

(assert (=> b!860387 (=> (not res!392530) (not e!566392))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!254 (Rule!3286 List!9311) Bool)

(assert (=> b!860387 (= res!392530 (ruleDisjointCharsFromAllFromOtherType!254 (h!14696 rules!2621) rules!2621))))

(declare-fun b!860388 () Bool)

(assert (=> b!860388 (= e!566392 (sepAndNonSepRulesDisjointChars!543 rules!2621 (t!97531 rules!2621)))))

(assert (= (and d!269526 (not res!392529)) b!860387))

(assert (= (and b!860387 res!392530) b!860388))

(declare-fun m!1104083 () Bool)

(assert (=> b!860387 m!1104083))

(declare-fun m!1104085 () Bool)

(assert (=> b!860388 m!1104085))

(assert (=> b!860169 d!269526))

(declare-fun d!269528 () Bool)

(declare-fun res!392535 () Bool)

(declare-fun e!566397 () Bool)

(assert (=> d!269528 (=> res!392535 e!566397)))

(assert (=> d!269528 (= res!392535 (is-Nil!9294 l!5107))))

(assert (=> d!269528 (= (forall!2206 l!5107 lambda!25839) e!566397)))

(declare-fun b!860393 () Bool)

(declare-fun e!566398 () Bool)

(assert (=> b!860393 (= e!566397 e!566398)))

(declare-fun res!392536 () Bool)

(assert (=> b!860393 (=> (not res!392536) (not e!566398))))

(declare-fun dynLambda!4390 (Int Token!3152) Bool)

(assert (=> b!860393 (= res!392536 (dynLambda!4390 lambda!25839 (h!14695 l!5107)))))

(declare-fun b!860394 () Bool)

(assert (=> b!860394 (= e!566398 (forall!2206 (t!97530 l!5107) lambda!25839))))

(assert (= (and d!269528 (not res!392535)) b!860393))

(assert (= (and b!860393 res!392536) b!860394))

(declare-fun b_lambda!29093 () Bool)

(assert (=> (not b_lambda!29093) (not b!860393)))

(declare-fun m!1104087 () Bool)

(assert (=> b!860393 m!1104087))

(declare-fun m!1104089 () Bool)

(assert (=> b!860394 m!1104089))

(assert (=> b!860167 d!269528))

(declare-fun d!269530 () Bool)

(declare-fun res!392541 () Bool)

(declare-fun e!566401 () Bool)

(assert (=> d!269530 (=> (not res!392541) (not e!566401))))

(declare-fun isEmpty!5519 (List!9309) Bool)

(assert (=> d!269530 (= res!392541 (not (isEmpty!5519 (originalCharacters!2299 separatorToken!297))))))

(assert (=> d!269530 (= (inv!11821 separatorToken!297) e!566401)))

(declare-fun b!860399 () Bool)

(declare-fun res!392542 () Bool)

(assert (=> b!860399 (=> (not res!392542) (not e!566401))))

(declare-fun dynLambda!4391 (Int TokenValue!1809) BalanceConc!6174)

(assert (=> b!860399 (= res!392542 (= (originalCharacters!2299 separatorToken!297) (list!3668 (dynLambda!4391 (toChars!2667 (transformation!1743 (rule!3166 separatorToken!297))) (value!56376 separatorToken!297)))))))

(declare-fun b!860400 () Bool)

(declare-fun size!7761 (List!9309) Int)

(assert (=> b!860400 (= e!566401 (= (size!7758 separatorToken!297) (size!7761 (originalCharacters!2299 separatorToken!297))))))

(assert (= (and d!269530 res!392541) b!860399))

(assert (= (and b!860399 res!392542) b!860400))

(declare-fun b_lambda!29095 () Bool)

(assert (=> (not b_lambda!29095) (not b!860399)))

(declare-fun t!97549 () Bool)

(declare-fun tb!61487 () Bool)

(assert (=> (and b!860153 (= (toChars!2667 (transformation!1743 (rule!3166 (h!14695 l!5107)))) (toChars!2667 (transformation!1743 (rule!3166 separatorToken!297)))) t!97549) tb!61487))

(declare-fun b!860405 () Bool)

(declare-fun e!566404 () Bool)

(declare-fun tp!271578 () Bool)

(declare-fun inv!11824 (Conc!3080) Bool)

(assert (=> b!860405 (= e!566404 (and (inv!11824 (c!139250 (dynLambda!4391 (toChars!2667 (transformation!1743 (rule!3166 separatorToken!297))) (value!56376 separatorToken!297)))) tp!271578))))

(declare-fun result!71158 () Bool)

(declare-fun inv!11825 (BalanceConc!6174) Bool)

(assert (=> tb!61487 (= result!71158 (and (inv!11825 (dynLambda!4391 (toChars!2667 (transformation!1743 (rule!3166 separatorToken!297))) (value!56376 separatorToken!297))) e!566404))))

(assert (= tb!61487 b!860405))

(declare-fun m!1104091 () Bool)

(assert (=> b!860405 m!1104091))

(declare-fun m!1104093 () Bool)

(assert (=> tb!61487 m!1104093))

(assert (=> b!860399 t!97549))

(declare-fun b_and!76575 () Bool)

(assert (= b_and!76547 (and (=> t!97549 result!71158) b_and!76575)))

(declare-fun tb!61489 () Bool)

(declare-fun t!97551 () Bool)

(assert (=> (and b!860161 (= (toChars!2667 (transformation!1743 (h!14696 rules!2621))) (toChars!2667 (transformation!1743 (rule!3166 separatorToken!297)))) t!97551) tb!61489))

(declare-fun result!71162 () Bool)

(assert (= result!71162 result!71158))

(assert (=> b!860399 t!97551))

(declare-fun b_and!76577 () Bool)

(assert (= b_and!76551 (and (=> t!97551 result!71162) b_and!76577)))

(declare-fun t!97553 () Bool)

(declare-fun tb!61491 () Bool)

(assert (=> (and b!860164 (= (toChars!2667 (transformation!1743 (rule!3166 separatorToken!297))) (toChars!2667 (transformation!1743 (rule!3166 separatorToken!297)))) t!97553) tb!61491))

(declare-fun result!71164 () Bool)

(assert (= result!71164 result!71158))

(assert (=> b!860399 t!97553))

(declare-fun b_and!76579 () Bool)

(assert (= b_and!76555 (and (=> t!97553 result!71164) b_and!76579)))

(declare-fun m!1104095 () Bool)

(assert (=> d!269530 m!1104095))

(declare-fun m!1104097 () Bool)

(assert (=> b!860399 m!1104097))

(assert (=> b!860399 m!1104097))

(declare-fun m!1104099 () Bool)

(assert (=> b!860399 m!1104099))

(declare-fun m!1104101 () Bool)

(assert (=> b!860400 m!1104101))

(assert (=> start!77600 d!269530))

(declare-fun d!269532 () Bool)

(assert (=> d!269532 (= (inv!11817 (tag!2005 (rule!3166 separatorToken!297))) (= (mod (str.len (value!56375 (tag!2005 (rule!3166 separatorToken!297)))) 2) 0))))

(assert (=> b!860157 d!269532))

(declare-fun d!269534 () Bool)

(declare-fun res!392545 () Bool)

(declare-fun e!566407 () Bool)

(assert (=> d!269534 (=> (not res!392545) (not e!566407))))

(declare-fun semiInverseModEq!687 (Int Int) Bool)

(assert (=> d!269534 (= res!392545 (semiInverseModEq!687 (toChars!2667 (transformation!1743 (rule!3166 separatorToken!297))) (toValue!2808 (transformation!1743 (rule!3166 separatorToken!297)))))))

(assert (=> d!269534 (= (inv!11820 (transformation!1743 (rule!3166 separatorToken!297))) e!566407)))

(declare-fun b!860408 () Bool)

(declare-fun equivClasses!654 (Int Int) Bool)

(assert (=> b!860408 (= e!566407 (equivClasses!654 (toChars!2667 (transformation!1743 (rule!3166 separatorToken!297))) (toValue!2808 (transformation!1743 (rule!3166 separatorToken!297)))))))

(assert (= (and d!269534 res!392545) b!860408))

(declare-fun m!1104103 () Bool)

(assert (=> d!269534 m!1104103))

(declare-fun m!1104105 () Bool)

(assert (=> b!860408 m!1104105))

(assert (=> b!860157 d!269534))

(declare-fun d!269536 () Bool)

(declare-fun res!392548 () Bool)

(declare-fun e!566410 () Bool)

(assert (=> d!269536 (=> (not res!392548) (not e!566410))))

(declare-fun rulesValid!618 (LexerInterface!1545 List!9311) Bool)

(assert (=> d!269536 (= res!392548 (rulesValid!618 thiss!20117 rules!2621))))

(assert (=> d!269536 (= (rulesInvariant!1421 thiss!20117 rules!2621) e!566410)))

(declare-fun b!860411 () Bool)

(declare-datatypes ((List!9316 0))(
  ( (Nil!9300) (Cons!9300 (h!14701 String!10945) (t!97568 List!9316)) )
))
(declare-fun noDuplicateTag!618 (LexerInterface!1545 List!9311 List!9316) Bool)

(assert (=> b!860411 (= e!566410 (noDuplicateTag!618 thiss!20117 rules!2621 Nil!9300))))

(assert (= (and d!269536 res!392548) b!860411))

(declare-fun m!1104107 () Bool)

(assert (=> d!269536 m!1104107))

(declare-fun m!1104109 () Bool)

(assert (=> b!860411 m!1104109))

(assert (=> b!860168 d!269536))

(declare-fun d!269538 () Bool)

(assert (=> d!269538 (= (inv!11817 (tag!2005 (h!14696 rules!2621))) (= (mod (str.len (value!56375 (tag!2005 (h!14696 rules!2621)))) 2) 0))))

(assert (=> b!860171 d!269538))

(declare-fun d!269540 () Bool)

(declare-fun res!392549 () Bool)

(declare-fun e!566411 () Bool)

(assert (=> d!269540 (=> (not res!392549) (not e!566411))))

(assert (=> d!269540 (= res!392549 (semiInverseModEq!687 (toChars!2667 (transformation!1743 (h!14696 rules!2621))) (toValue!2808 (transformation!1743 (h!14696 rules!2621)))))))

(assert (=> d!269540 (= (inv!11820 (transformation!1743 (h!14696 rules!2621))) e!566411)))

(declare-fun b!860412 () Bool)

(assert (=> b!860412 (= e!566411 (equivClasses!654 (toChars!2667 (transformation!1743 (h!14696 rules!2621))) (toValue!2808 (transformation!1743 (h!14696 rules!2621)))))))

(assert (= (and d!269540 res!392549) b!860412))

(declare-fun m!1104111 () Bool)

(assert (=> d!269540 m!1104111))

(declare-fun m!1104113 () Bool)

(assert (=> b!860412 m!1104113))

(assert (=> b!860171 d!269540))

(declare-fun d!269542 () Bool)

(assert (=> d!269542 (= (inv!11817 (tag!2005 (rule!3166 (h!14695 l!5107)))) (= (mod (str.len (value!56375 (tag!2005 (rule!3166 (h!14695 l!5107))))) 2) 0))))

(assert (=> b!860150 d!269542))

(declare-fun d!269544 () Bool)

(declare-fun res!392550 () Bool)

(declare-fun e!566412 () Bool)

(assert (=> d!269544 (=> (not res!392550) (not e!566412))))

(assert (=> d!269544 (= res!392550 (semiInverseModEq!687 (toChars!2667 (transformation!1743 (rule!3166 (h!14695 l!5107)))) (toValue!2808 (transformation!1743 (rule!3166 (h!14695 l!5107))))))))

(assert (=> d!269544 (= (inv!11820 (transformation!1743 (rule!3166 (h!14695 l!5107)))) e!566412)))

(declare-fun b!860413 () Bool)

(assert (=> b!860413 (= e!566412 (equivClasses!654 (toChars!2667 (transformation!1743 (rule!3166 (h!14695 l!5107)))) (toValue!2808 (transformation!1743 (rule!3166 (h!14695 l!5107))))))))

(assert (= (and d!269544 res!392550) b!860413))

(declare-fun m!1104115 () Bool)

(assert (=> d!269544 m!1104115))

(declare-fun m!1104117 () Bool)

(assert (=> b!860413 m!1104117))

(assert (=> b!860150 d!269544))

(declare-fun d!269546 () Bool)

(assert (=> d!269546 (= (isEmpty!5516 rules!2621) (is-Nil!9295 rules!2621))))

(assert (=> b!860170 d!269546))

(declare-fun d!269548 () Bool)

(assert (=> d!269548 (= (head!1489 l!5107) (h!14695 l!5107))))

(assert (=> b!860160 d!269548))

(declare-fun b!860414 () Bool)

(declare-fun e!566416 () Bool)

(declare-fun e!566413 () Bool)

(assert (=> b!860414 (= e!566416 e!566413)))

(declare-fun res!392554 () Bool)

(assert (=> b!860414 (=> res!392554 e!566413)))

(assert (=> b!860414 (= res!392554 (not (is-Cons!9294 (tail!1051 l!5107))))))

(declare-fun b!860415 () Bool)

(declare-fun e!566415 () List!9309)

(declare-fun lt!325241 () List!9310)

(assert (=> b!860415 (= e!566415 (++!2405 (list!3668 (charsOf!1006 (h!14695 lt!325241))) (printList!489 thiss!20117 (t!97530 lt!325241))))))

(declare-fun b!860416 () Bool)

(declare-fun res!392551 () Bool)

(assert (=> b!860416 (=> (not res!392551) (not e!566416))))

(declare-fun e!566417 () Bool)

(assert (=> b!860416 (= res!392551 e!566417)))

(declare-fun res!392552 () Bool)

(assert (=> b!860416 (=> res!392552 e!566417)))

(assert (=> b!860416 (= res!392552 (not (is-Cons!9294 (tail!1051 l!5107))))))

(declare-fun lt!325239 () List!9310)

(declare-fun d!269550 () Bool)

(assert (=> d!269550 (= (printList!489 thiss!20117 lt!325239) (printWithSeparatorTokenList!47 thiss!20117 (tail!1051 l!5107) separatorToken!297))))

(declare-fun e!566418 () List!9310)

(assert (=> d!269550 (= lt!325239 e!566418)))

(declare-fun c!139285 () Bool)

(assert (=> d!269550 (= c!139285 (is-Cons!9294 (tail!1051 l!5107)))))

(assert (=> d!269550 e!566416))

(declare-fun res!392553 () Bool)

(assert (=> d!269550 (=> (not res!392553) (not e!566416))))

(assert (=> d!269550 (= res!392553 (isSeparator!1743 (rule!3166 separatorToken!297)))))

(assert (=> d!269550 (= (withSeparatorTokenList!73 thiss!20117 (tail!1051 l!5107) separatorToken!297) lt!325239)))

(declare-fun b!860417 () Bool)

(assert (=> b!860417 (= e!566417 (= (printList!489 thiss!20117 ($colon$colon!102 ($colon$colon!102 (withSeparatorTokenList!73 thiss!20117 (t!97530 (tail!1051 l!5107)) separatorToken!297) separatorToken!297) (h!14695 (tail!1051 l!5107)))) e!566415))))

(declare-fun c!139283 () Bool)

(assert (=> b!860417 (= c!139283 (is-Cons!9294 lt!325241))))

(assert (=> b!860417 (= lt!325241 ($colon$colon!102 ($colon$colon!102 (withSeparatorTokenList!73 thiss!20117 (t!97530 (tail!1051 l!5107)) separatorToken!297) separatorToken!297) (h!14695 (tail!1051 l!5107))))))

(declare-fun b!860418 () Bool)

(declare-fun e!566414 () List!9309)

(assert (=> b!860418 (= e!566414 Nil!9293)))

(declare-fun b!860419 () Bool)

(assert (=> b!860419 (= e!566418 ($colon$colon!102 ($colon$colon!102 (withSeparatorTokenList!73 thiss!20117 (t!97530 (tail!1051 l!5107)) separatorToken!297) separatorToken!297) (h!14695 (tail!1051 l!5107))))))

(declare-fun lt!325235 () List!9309)

(assert (=> b!860419 (= lt!325235 (list!3668 (charsOf!1006 (h!14695 (tail!1051 l!5107)))))))

(declare-fun lt!325234 () List!9309)

(assert (=> b!860419 (= lt!325234 (list!3668 (charsOf!1006 separatorToken!297)))))

(declare-fun lt!325238 () List!9309)

(assert (=> b!860419 (= lt!325238 (printList!489 thiss!20117 (withSeparatorTokenList!73 thiss!20117 (t!97530 (tail!1051 l!5107)) separatorToken!297)))))

(declare-fun lt!325237 () Unit!13826)

(assert (=> b!860419 (= lt!325237 (lemmaConcatAssociativity!764 lt!325235 lt!325234 lt!325238))))

(assert (=> b!860419 (= (++!2405 (++!2405 lt!325235 lt!325234) lt!325238) (++!2405 lt!325235 (++!2405 lt!325234 lt!325238)))))

(declare-fun lt!325236 () Unit!13826)

(assert (=> b!860419 (= lt!325236 lt!325237)))

(declare-fun b!860420 () Bool)

(declare-fun lt!325240 () List!9310)

(assert (=> b!860420 (= e!566414 (++!2405 (list!3668 (charsOf!1006 (h!14695 lt!325240))) (printList!489 thiss!20117 (t!97530 lt!325240))))))

(declare-fun b!860421 () Bool)

(assert (=> b!860421 (= e!566418 Nil!9294)))

(declare-fun b!860422 () Bool)

(assert (=> b!860422 (= e!566413 (= (printList!489 thiss!20117 ($colon$colon!102 (withSeparatorTokenList!73 thiss!20117 (t!97530 (tail!1051 l!5107)) separatorToken!297) separatorToken!297)) e!566414))))

(declare-fun c!139284 () Bool)

(assert (=> b!860422 (= c!139284 (is-Cons!9294 lt!325240))))

(assert (=> b!860422 (= lt!325240 ($colon$colon!102 (withSeparatorTokenList!73 thiss!20117 (t!97530 (tail!1051 l!5107)) separatorToken!297) separatorToken!297))))

(declare-fun b!860423 () Bool)

(assert (=> b!860423 (= e!566415 Nil!9293)))

(assert (= (and d!269550 res!392553) b!860416))

(assert (= (and b!860416 (not res!392552)) b!860417))

(assert (= (and b!860417 c!139283) b!860415))

(assert (= (and b!860417 (not c!139283)) b!860423))

(assert (= (and b!860416 res!392551) b!860414))

(assert (= (and b!860414 (not res!392554)) b!860422))

(assert (= (and b!860422 c!139284) b!860420))

(assert (= (and b!860422 (not c!139284)) b!860418))

(assert (= (and d!269550 c!139285) b!860419))

(assert (= (and d!269550 (not c!139285)) b!860421))

(declare-fun m!1104119 () Bool)

(assert (=> b!860415 m!1104119))

(assert (=> b!860415 m!1104119))

(declare-fun m!1104121 () Bool)

(assert (=> b!860415 m!1104121))

(declare-fun m!1104123 () Bool)

(assert (=> b!860415 m!1104123))

(assert (=> b!860415 m!1104121))

(assert (=> b!860415 m!1104123))

(declare-fun m!1104125 () Bool)

(assert (=> b!860415 m!1104125))

(declare-fun m!1104127 () Bool)

(assert (=> b!860417 m!1104127))

(assert (=> b!860417 m!1104127))

(declare-fun m!1104129 () Bool)

(assert (=> b!860417 m!1104129))

(assert (=> b!860417 m!1104129))

(declare-fun m!1104131 () Bool)

(assert (=> b!860417 m!1104131))

(assert (=> b!860417 m!1104131))

(declare-fun m!1104133 () Bool)

(assert (=> b!860417 m!1104133))

(declare-fun m!1104135 () Bool)

(assert (=> b!860420 m!1104135))

(assert (=> b!860420 m!1104135))

(declare-fun m!1104137 () Bool)

(assert (=> b!860420 m!1104137))

(declare-fun m!1104139 () Bool)

(assert (=> b!860420 m!1104139))

(assert (=> b!860420 m!1104137))

(assert (=> b!860420 m!1104139))

(declare-fun m!1104141 () Bool)

(assert (=> b!860420 m!1104141))

(assert (=> b!860422 m!1104127))

(assert (=> b!860422 m!1104127))

(assert (=> b!860422 m!1104129))

(assert (=> b!860422 m!1104129))

(declare-fun m!1104143 () Bool)

(assert (=> b!860422 m!1104143))

(declare-fun m!1104145 () Bool)

(assert (=> b!860419 m!1104145))

(declare-fun m!1104147 () Bool)

(assert (=> b!860419 m!1104147))

(assert (=> b!860419 m!1104127))

(assert (=> b!860419 m!1104129))

(declare-fun m!1104149 () Bool)

(assert (=> b!860419 m!1104149))

(assert (=> b!860419 m!1104127))

(declare-fun m!1104151 () Bool)

(assert (=> b!860419 m!1104151))

(assert (=> b!860419 m!1104045))

(assert (=> b!860419 m!1104149))

(declare-fun m!1104153 () Bool)

(assert (=> b!860419 m!1104153))

(assert (=> b!860419 m!1104129))

(assert (=> b!860419 m!1104131))

(assert (=> b!860419 m!1104127))

(assert (=> b!860419 m!1104045))

(assert (=> b!860419 m!1104049))

(assert (=> b!860419 m!1104145))

(declare-fun m!1104155 () Bool)

(assert (=> b!860419 m!1104155))

(declare-fun m!1104157 () Bool)

(assert (=> b!860419 m!1104157))

(assert (=> b!860419 m!1104155))

(declare-fun m!1104159 () Bool)

(assert (=> b!860419 m!1104159))

(declare-fun m!1104161 () Bool)

(assert (=> d!269550 m!1104161))

(assert (=> d!269550 m!1103825))

(declare-fun m!1104163 () Bool)

(assert (=> d!269550 m!1104163))

(assert (=> b!860163 d!269550))

(declare-fun d!269552 () Bool)

(assert (=> d!269552 (= (tail!1051 l!5107) (t!97530 l!5107))))

(assert (=> b!860163 d!269552))

(declare-fun bs!232352 () Bool)

(declare-fun d!269554 () Bool)

(assert (= bs!232352 (and d!269554 b!860167)))

(declare-fun lambda!25846 () Int)

(assert (=> bs!232352 (not (= lambda!25846 lambda!25839))))

(declare-fun bs!232353 () Bool)

(assert (= bs!232353 (and d!269554 d!269510)))

(assert (=> bs!232353 (= lambda!25846 lambda!25845)))

(declare-fun b!860428 () Bool)

(declare-fun e!566423 () Bool)

(assert (=> b!860428 (= e!566423 true)))

(declare-fun b!860427 () Bool)

(declare-fun e!566422 () Bool)

(assert (=> b!860427 (= e!566422 e!566423)))

(declare-fun b!860426 () Bool)

(declare-fun e!566421 () Bool)

(assert (=> b!860426 (= e!566421 e!566422)))

(assert (=> d!269554 e!566421))

(assert (= b!860427 b!860428))

(assert (= b!860426 b!860427))

(assert (= (and d!269554 (is-Cons!9295 rules!2621)) b!860426))

(assert (=> b!860428 (< (dynLambda!4387 order!6041 (toValue!2808 (transformation!1743 (h!14696 rules!2621)))) (dynLambda!4388 order!6043 lambda!25846))))

(assert (=> b!860428 (< (dynLambda!4389 order!6045 (toChars!2667 (transformation!1743 (h!14696 rules!2621)))) (dynLambda!4388 order!6043 lambda!25846))))

(assert (=> d!269554 true))

(declare-fun lt!325242 () Bool)

(assert (=> d!269554 (= lt!325242 (forall!2206 l!5107 lambda!25846))))

(declare-fun e!566419 () Bool)

(assert (=> d!269554 (= lt!325242 e!566419)))

(declare-fun res!392556 () Bool)

(assert (=> d!269554 (=> res!392556 e!566419)))

(assert (=> d!269554 (= res!392556 (not (is-Cons!9294 l!5107)))))

(assert (=> d!269554 (not (isEmpty!5516 rules!2621))))

(assert (=> d!269554 (= (rulesProduceEachTokenIndividuallyList!433 thiss!20117 rules!2621 l!5107) lt!325242)))

(declare-fun b!860424 () Bool)

(declare-fun e!566420 () Bool)

(assert (=> b!860424 (= e!566419 e!566420)))

(declare-fun res!392555 () Bool)

(assert (=> b!860424 (=> (not res!392555) (not e!566420))))

(assert (=> b!860424 (= res!392555 (rulesProduceIndividualToken!609 thiss!20117 rules!2621 (h!14695 l!5107)))))

(declare-fun b!860425 () Bool)

(assert (=> b!860425 (= e!566420 (rulesProduceEachTokenIndividuallyList!433 thiss!20117 rules!2621 (t!97530 l!5107)))))

(assert (= (and d!269554 (not res!392556)) b!860424))

(assert (= (and b!860424 res!392555) b!860425))

(declare-fun m!1104165 () Bool)

(assert (=> d!269554 m!1104165))

(assert (=> d!269554 m!1103849))

(declare-fun m!1104167 () Bool)

(assert (=> b!860424 m!1104167))

(declare-fun m!1104169 () Bool)

(assert (=> b!860425 m!1104169))

(assert (=> b!860151 d!269554))

(declare-fun d!269556 () Bool)

(declare-fun res!392557 () Bool)

(declare-fun e!566424 () Bool)

(assert (=> d!269556 (=> (not res!392557) (not e!566424))))

(assert (=> d!269556 (= res!392557 (not (isEmpty!5519 (originalCharacters!2299 (h!14695 l!5107)))))))

(assert (=> d!269556 (= (inv!11821 (h!14695 l!5107)) e!566424)))

(declare-fun b!860429 () Bool)

(declare-fun res!392558 () Bool)

(assert (=> b!860429 (=> (not res!392558) (not e!566424))))

(assert (=> b!860429 (= res!392558 (= (originalCharacters!2299 (h!14695 l!5107)) (list!3668 (dynLambda!4391 (toChars!2667 (transformation!1743 (rule!3166 (h!14695 l!5107)))) (value!56376 (h!14695 l!5107))))))))

(declare-fun b!860430 () Bool)

(assert (=> b!860430 (= e!566424 (= (size!7758 (h!14695 l!5107)) (size!7761 (originalCharacters!2299 (h!14695 l!5107)))))))

(assert (= (and d!269556 res!392557) b!860429))

(assert (= (and b!860429 res!392558) b!860430))

(declare-fun b_lambda!29097 () Bool)

(assert (=> (not b_lambda!29097) (not b!860429)))

(declare-fun t!97555 () Bool)

(declare-fun tb!61493 () Bool)

(assert (=> (and b!860153 (= (toChars!2667 (transformation!1743 (rule!3166 (h!14695 l!5107)))) (toChars!2667 (transformation!1743 (rule!3166 (h!14695 l!5107))))) t!97555) tb!61493))

(declare-fun b!860431 () Bool)

(declare-fun e!566425 () Bool)

(declare-fun tp!271579 () Bool)

(assert (=> b!860431 (= e!566425 (and (inv!11824 (c!139250 (dynLambda!4391 (toChars!2667 (transformation!1743 (rule!3166 (h!14695 l!5107)))) (value!56376 (h!14695 l!5107))))) tp!271579))))

(declare-fun result!71166 () Bool)

(assert (=> tb!61493 (= result!71166 (and (inv!11825 (dynLambda!4391 (toChars!2667 (transformation!1743 (rule!3166 (h!14695 l!5107)))) (value!56376 (h!14695 l!5107)))) e!566425))))

(assert (= tb!61493 b!860431))

(declare-fun m!1104171 () Bool)

(assert (=> b!860431 m!1104171))

(declare-fun m!1104173 () Bool)

(assert (=> tb!61493 m!1104173))

(assert (=> b!860429 t!97555))

(declare-fun b_and!76581 () Bool)

(assert (= b_and!76575 (and (=> t!97555 result!71166) b_and!76581)))

(declare-fun tb!61495 () Bool)

(declare-fun t!97557 () Bool)

(assert (=> (and b!860161 (= (toChars!2667 (transformation!1743 (h!14696 rules!2621))) (toChars!2667 (transformation!1743 (rule!3166 (h!14695 l!5107))))) t!97557) tb!61495))

(declare-fun result!71168 () Bool)

(assert (= result!71168 result!71166))

(assert (=> b!860429 t!97557))

(declare-fun b_and!76583 () Bool)

(assert (= b_and!76577 (and (=> t!97557 result!71168) b_and!76583)))

(declare-fun tb!61497 () Bool)

(declare-fun t!97559 () Bool)

(assert (=> (and b!860164 (= (toChars!2667 (transformation!1743 (rule!3166 separatorToken!297))) (toChars!2667 (transformation!1743 (rule!3166 (h!14695 l!5107))))) t!97559) tb!61497))

(declare-fun result!71170 () Bool)

(assert (= result!71170 result!71166))

(assert (=> b!860429 t!97559))

(declare-fun b_and!76585 () Bool)

(assert (= b_and!76579 (and (=> t!97559 result!71170) b_and!76585)))

(declare-fun m!1104175 () Bool)

(assert (=> d!269556 m!1104175))

(declare-fun m!1104177 () Bool)

(assert (=> b!860429 m!1104177))

(assert (=> b!860429 m!1104177))

(declare-fun m!1104179 () Bool)

(assert (=> b!860429 m!1104179))

(declare-fun m!1104181 () Bool)

(assert (=> b!860430 m!1104181))

(assert (=> b!860162 d!269556))

(declare-fun b!860433 () Bool)

(declare-fun e!566427 () Bool)

(assert (=> b!860433 (= e!566427 (inv!16 (value!56376 (h!14695 l!5107))))))

(declare-fun b!860434 () Bool)

(declare-fun e!566428 () Bool)

(assert (=> b!860434 (= e!566427 e!566428)))

(declare-fun c!139286 () Bool)

(assert (=> b!860434 (= c!139286 (is-IntegerValue!5428 (value!56376 (h!14695 l!5107))))))

(declare-fun b!860432 () Bool)

(declare-fun e!566426 () Bool)

(assert (=> b!860432 (= e!566426 (inv!15 (value!56376 (h!14695 l!5107))))))

(declare-fun d!269558 () Bool)

(declare-fun c!139287 () Bool)

(assert (=> d!269558 (= c!139287 (is-IntegerValue!5427 (value!56376 (h!14695 l!5107))))))

(assert (=> d!269558 (= (inv!21 (value!56376 (h!14695 l!5107))) e!566427)))

(declare-fun b!860435 () Bool)

(declare-fun res!392559 () Bool)

(assert (=> b!860435 (=> res!392559 e!566426)))

(assert (=> b!860435 (= res!392559 (not (is-IntegerValue!5429 (value!56376 (h!14695 l!5107)))))))

(assert (=> b!860435 (= e!566428 e!566426)))

(declare-fun b!860436 () Bool)

(assert (=> b!860436 (= e!566428 (inv!17 (value!56376 (h!14695 l!5107))))))

(assert (= (and d!269558 c!139287) b!860433))

(assert (= (and d!269558 (not c!139287)) b!860434))

(assert (= (and b!860434 c!139286) b!860436))

(assert (= (and b!860434 (not c!139286)) b!860435))

(assert (= (and b!860435 (not res!392559)) b!860432))

(declare-fun m!1104183 () Bool)

(assert (=> b!860433 m!1104183))

(declare-fun m!1104185 () Bool)

(assert (=> b!860432 m!1104185))

(declare-fun m!1104187 () Bool)

(assert (=> b!860436 m!1104187))

(assert (=> b!860152 d!269558))

(declare-fun b!860450 () Bool)

(declare-fun e!566431 () Bool)

(declare-fun tp!271592 () Bool)

(declare-fun tp!271590 () Bool)

(assert (=> b!860450 (= e!566431 (and tp!271592 tp!271590))))

(declare-fun b!860449 () Bool)

(declare-fun tp!271594 () Bool)

(assert (=> b!860449 (= e!566431 tp!271594)))

(declare-fun b!860447 () Bool)

(declare-fun tp_is_empty!4007 () Bool)

(assert (=> b!860447 (= e!566431 tp_is_empty!4007)))

(declare-fun b!860448 () Bool)

(declare-fun tp!271593 () Bool)

(declare-fun tp!271591 () Bool)

(assert (=> b!860448 (= e!566431 (and tp!271593 tp!271591))))

(assert (=> b!860171 (= tp!271525 e!566431)))

(assert (= (and b!860171 (is-ElementMatch!2176 (regex!1743 (h!14696 rules!2621)))) b!860447))

(assert (= (and b!860171 (is-Concat!3986 (regex!1743 (h!14696 rules!2621)))) b!860448))

(assert (= (and b!860171 (is-Star!2176 (regex!1743 (h!14696 rules!2621)))) b!860449))

(assert (= (and b!860171 (is-Union!2176 (regex!1743 (h!14696 rules!2621)))) b!860450))

(declare-fun b!860454 () Bool)

(declare-fun e!566432 () Bool)

(declare-fun tp!271597 () Bool)

(declare-fun tp!271595 () Bool)

(assert (=> b!860454 (= e!566432 (and tp!271597 tp!271595))))

(declare-fun b!860453 () Bool)

(declare-fun tp!271599 () Bool)

(assert (=> b!860453 (= e!566432 tp!271599)))

(declare-fun b!860451 () Bool)

(assert (=> b!860451 (= e!566432 tp_is_empty!4007)))

(declare-fun b!860452 () Bool)

(declare-fun tp!271598 () Bool)

(declare-fun tp!271596 () Bool)

(assert (=> b!860452 (= e!566432 (and tp!271598 tp!271596))))

(assert (=> b!860150 (= tp!271529 e!566432)))

(assert (= (and b!860150 (is-ElementMatch!2176 (regex!1743 (rule!3166 (h!14695 l!5107))))) b!860451))

(assert (= (and b!860150 (is-Concat!3986 (regex!1743 (rule!3166 (h!14695 l!5107))))) b!860452))

(assert (= (and b!860150 (is-Star!2176 (regex!1743 (rule!3166 (h!14695 l!5107))))) b!860453))

(assert (= (and b!860150 (is-Union!2176 (regex!1743 (rule!3166 (h!14695 l!5107))))) b!860454))

(declare-fun b!860465 () Bool)

(declare-fun b_free!26237 () Bool)

(declare-fun b_next!26301 () Bool)

(assert (=> b!860465 (= b_free!26237 (not b_next!26301))))

(declare-fun tp!271608 () Bool)

(declare-fun b_and!76587 () Bool)

(assert (=> b!860465 (= tp!271608 b_and!76587)))

(declare-fun b_free!26239 () Bool)

(declare-fun b_next!26303 () Bool)

(assert (=> b!860465 (= b_free!26239 (not b_next!26303))))

(declare-fun tb!61499 () Bool)

(declare-fun t!97561 () Bool)

(assert (=> (and b!860465 (= (toChars!2667 (transformation!1743 (h!14696 (t!97531 rules!2621)))) (toChars!2667 (transformation!1743 (rule!3166 separatorToken!297)))) t!97561) tb!61499))

(declare-fun result!71176 () Bool)

(assert (= result!71176 result!71158))

(assert (=> b!860399 t!97561))

(declare-fun tb!61501 () Bool)

(declare-fun t!97563 () Bool)

(assert (=> (and b!860465 (= (toChars!2667 (transformation!1743 (h!14696 (t!97531 rules!2621)))) (toChars!2667 (transformation!1743 (rule!3166 (h!14695 l!5107))))) t!97563) tb!61501))

(declare-fun result!71178 () Bool)

(assert (= result!71178 result!71166))

(assert (=> b!860429 t!97563))

(declare-fun tp!271611 () Bool)

(declare-fun b_and!76589 () Bool)

(assert (=> b!860465 (= tp!271611 (and (=> t!97561 result!71176) (=> t!97563 result!71178) b_and!76589))))

(declare-fun e!566441 () Bool)

(assert (=> b!860465 (= e!566441 (and tp!271608 tp!271611))))

(declare-fun b!860464 () Bool)

(declare-fun e!566444 () Bool)

(declare-fun tp!271609 () Bool)

(assert (=> b!860464 (= e!566444 (and tp!271609 (inv!11817 (tag!2005 (h!14696 (t!97531 rules!2621)))) (inv!11820 (transformation!1743 (h!14696 (t!97531 rules!2621)))) e!566441))))

(declare-fun b!860463 () Bool)

(declare-fun e!566443 () Bool)

(declare-fun tp!271610 () Bool)

(assert (=> b!860463 (= e!566443 (and e!566444 tp!271610))))

(assert (=> b!860156 (= tp!271526 e!566443)))

(assert (= b!860464 b!860465))

(assert (= b!860463 b!860464))

(assert (= (and b!860156 (is-Cons!9295 (t!97531 rules!2621))) b!860463))

(declare-fun m!1104189 () Bool)

(assert (=> b!860464 m!1104189))

(declare-fun m!1104191 () Bool)

(assert (=> b!860464 m!1104191))

(declare-fun b!860470 () Bool)

(declare-fun e!566447 () Bool)

(declare-fun tp!271614 () Bool)

(assert (=> b!860470 (= e!566447 (and tp_is_empty!4007 tp!271614))))

(assert (=> b!860154 (= tp!271523 e!566447)))

(assert (= (and b!860154 (is-Cons!9293 (originalCharacters!2299 separatorToken!297))) b!860470))

(declare-fun b!860486 () Bool)

(declare-fun b_free!26241 () Bool)

(declare-fun b_next!26305 () Bool)

(assert (=> b!860486 (= b_free!26241 (not b_next!26305))))

(declare-fun tp!271627 () Bool)

(declare-fun b_and!76591 () Bool)

(assert (=> b!860486 (= tp!271627 b_and!76591)))

(declare-fun b_free!26243 () Bool)

(declare-fun b_next!26307 () Bool)

(assert (=> b!860486 (= b_free!26243 (not b_next!26307))))

(declare-fun t!97565 () Bool)

(declare-fun tb!61503 () Bool)

(assert (=> (and b!860486 (= (toChars!2667 (transformation!1743 (rule!3166 (h!14695 (t!97530 l!5107))))) (toChars!2667 (transformation!1743 (rule!3166 separatorToken!297)))) t!97565) tb!61503))

(declare-fun result!71184 () Bool)

(assert (= result!71184 result!71158))

(assert (=> b!860399 t!97565))

(declare-fun t!97567 () Bool)

(declare-fun tb!61505 () Bool)

(assert (=> (and b!860486 (= (toChars!2667 (transformation!1743 (rule!3166 (h!14695 (t!97530 l!5107))))) (toChars!2667 (transformation!1743 (rule!3166 (h!14695 l!5107))))) t!97567) tb!61505))

(declare-fun result!71186 () Bool)

(assert (= result!71186 result!71166))

(assert (=> b!860429 t!97567))

(declare-fun b_and!76593 () Bool)

(declare-fun tp!271626 () Bool)

(assert (=> b!860486 (= tp!271626 (and (=> t!97565 result!71184) (=> t!97567 result!71186) b_and!76593))))

(declare-fun e!566462 () Bool)

(declare-fun tp!271628 () Bool)

(declare-fun e!566467 () Bool)

(declare-fun b!860484 () Bool)

(assert (=> b!860484 (= e!566462 (and (inv!21 (value!56376 (h!14695 (t!97530 l!5107)))) e!566467 tp!271628))))

(declare-fun tp!271629 () Bool)

(declare-fun e!566464 () Bool)

(declare-fun b!860483 () Bool)

(assert (=> b!860483 (= e!566464 (and (inv!11821 (h!14695 (t!97530 l!5107))) e!566462 tp!271629))))

(declare-fun tp!271625 () Bool)

(declare-fun b!860485 () Bool)

(declare-fun e!566466 () Bool)

(assert (=> b!860485 (= e!566467 (and tp!271625 (inv!11817 (tag!2005 (rule!3166 (h!14695 (t!97530 l!5107))))) (inv!11820 (transformation!1743 (rule!3166 (h!14695 (t!97530 l!5107))))) e!566466))))

(assert (=> b!860486 (= e!566466 (and tp!271627 tp!271626))))

(assert (=> b!860162 (= tp!271524 e!566464)))

(assert (= b!860485 b!860486))

(assert (= b!860484 b!860485))

(assert (= b!860483 b!860484))

(assert (= (and b!860162 (is-Cons!9294 (t!97530 l!5107))) b!860483))

(declare-fun m!1104193 () Bool)

(assert (=> b!860484 m!1104193))

(declare-fun m!1104195 () Bool)

(assert (=> b!860483 m!1104195))

(declare-fun m!1104197 () Bool)

(assert (=> b!860485 m!1104197))

(declare-fun m!1104199 () Bool)

(assert (=> b!860485 m!1104199))

(declare-fun b!860496 () Bool)

(declare-fun e!566470 () Bool)

(declare-fun tp!271632 () Bool)

(declare-fun tp!271630 () Bool)

(assert (=> b!860496 (= e!566470 (and tp!271632 tp!271630))))

(declare-fun b!860495 () Bool)

(declare-fun tp!271634 () Bool)

(assert (=> b!860495 (= e!566470 tp!271634)))

(declare-fun b!860493 () Bool)

(assert (=> b!860493 (= e!566470 tp_is_empty!4007)))

(declare-fun b!860494 () Bool)

(declare-fun tp!271633 () Bool)

(declare-fun tp!271631 () Bool)

(assert (=> b!860494 (= e!566470 (and tp!271633 tp!271631))))

(assert (=> b!860157 (= tp!271530 e!566470)))

(assert (= (and b!860157 (is-ElementMatch!2176 (regex!1743 (rule!3166 separatorToken!297)))) b!860493))

(assert (= (and b!860157 (is-Concat!3986 (regex!1743 (rule!3166 separatorToken!297)))) b!860494))

(assert (= (and b!860157 (is-Star!2176 (regex!1743 (rule!3166 separatorToken!297)))) b!860495))

(assert (= (and b!860157 (is-Union!2176 (regex!1743 (rule!3166 separatorToken!297)))) b!860496))

(declare-fun b!860497 () Bool)

(declare-fun e!566473 () Bool)

(declare-fun tp!271635 () Bool)

(assert (=> b!860497 (= e!566473 (and tp_is_empty!4007 tp!271635))))

(assert (=> b!860152 (= tp!271528 e!566473)))

(assert (= (and b!860152 (is-Cons!9293 (originalCharacters!2299 (h!14695 l!5107)))) b!860497))

(declare-fun b_lambda!29099 () Bool)

(assert (= b_lambda!29095 (or (and b!860465 b_free!26239 (= (toChars!2667 (transformation!1743 (h!14696 (t!97531 rules!2621)))) (toChars!2667 (transformation!1743 (rule!3166 separatorToken!297))))) (and b!860161 b_free!26219 (= (toChars!2667 (transformation!1743 (h!14696 rules!2621))) (toChars!2667 (transformation!1743 (rule!3166 separatorToken!297))))) (and b!860153 b_free!26215 (= (toChars!2667 (transformation!1743 (rule!3166 (h!14695 l!5107)))) (toChars!2667 (transformation!1743 (rule!3166 separatorToken!297))))) (and b!860486 b_free!26243 (= (toChars!2667 (transformation!1743 (rule!3166 (h!14695 (t!97530 l!5107))))) (toChars!2667 (transformation!1743 (rule!3166 separatorToken!297))))) (and b!860164 b_free!26223) b_lambda!29099)))

(declare-fun b_lambda!29101 () Bool)

(assert (= b_lambda!29097 (or (and b!860486 b_free!26243 (= (toChars!2667 (transformation!1743 (rule!3166 (h!14695 (t!97530 l!5107))))) (toChars!2667 (transformation!1743 (rule!3166 (h!14695 l!5107)))))) (and b!860153 b_free!26215) (and b!860465 b_free!26239 (= (toChars!2667 (transformation!1743 (h!14696 (t!97531 rules!2621)))) (toChars!2667 (transformation!1743 (rule!3166 (h!14695 l!5107)))))) (and b!860164 b_free!26223 (= (toChars!2667 (transformation!1743 (rule!3166 separatorToken!297))) (toChars!2667 (transformation!1743 (rule!3166 (h!14695 l!5107)))))) (and b!860161 b_free!26219 (= (toChars!2667 (transformation!1743 (h!14696 rules!2621))) (toChars!2667 (transformation!1743 (rule!3166 (h!14695 l!5107)))))) b_lambda!29101)))

(declare-fun b_lambda!29103 () Bool)

(assert (= b_lambda!29093 (or b!860167 b_lambda!29103)))

(declare-fun bs!232354 () Bool)

(declare-fun d!269560 () Bool)

(assert (= bs!232354 (and d!269560 b!860167)))

(assert (=> bs!232354 (= (dynLambda!4390 lambda!25839 (h!14695 l!5107)) (not (isSeparator!1743 (rule!3166 (h!14695 l!5107)))))))

(assert (=> b!860393 d!269560))

(push 1)

(assert b_and!76553)

(assert (not b!860275))

(assert (not d!269520))

(assert (not d!269530))

(assert (not b!860450))

(assert (not b!860449))

(assert b_and!76585)

(assert (not b_next!26279))

(assert (not b!860495))

(assert (not b!860448))

(assert tp_is_empty!4007)

(assert (not d!269544))

(assert b_and!76593)

(assert (not b!860485))

(assert (not b!860382))

(assert b_and!76549)

(assert (not d!269550))

(assert (not b!860484))

(assert (not b!860380))

(assert (not d!269500))

(assert (not b!860288))

(assert (not b!860426))

(assert (not b!860413))

(assert (not d!269522))

(assert (not b!860405))

(assert (not d!269510))

(assert (not d!269536))

(assert (not b!860276))

(assert (not b!860436))

(assert (not b!860431))

(assert (not b!860429))

(assert (not b!860373))

(assert (not b!860496))

(assert (not d!269554))

(assert (not b_next!26281))

(assert (not b!860424))

(assert b_and!76583)

(assert (not tb!61487))

(assert (not b!860412))

(assert (not b!860378))

(assert (not b_next!26307))

(assert (not b!860422))

(assert (not d!269524))

(assert (not b!860400))

(assert b_and!76581)

(assert (not b!860419))

(assert b_and!76591)

(assert (not d!269540))

(assert (not tb!61493))

(assert (not b!860335))

(assert (not b!860452))

(assert (not b!860387))

(assert (not b!860371))

(assert (not b!860433))

(assert (not b!860430))

(assert (not b!860408))

(assert (not b_lambda!29099))

(assert (not b!860399))

(assert (not b!860291))

(assert (not d!269556))

(assert (not b_next!26305))

(assert (not b!860463))

(assert (not b!860453))

(assert (not b!860287))

(assert (not b!860483))

(assert (not b!860394))

(assert (not b_lambda!29103))

(assert (not b!860381))

(assert (not b!860494))

(assert (not b_lambda!29101))

(assert (not d!269534))

(assert b_and!76545)

(assert (not b!860336))

(assert (not b!860425))

(assert (not b!860420))

(assert (not b!860464))

(assert (not b!860376))

(assert (not b!860274))

(assert (not b_next!26301))

(assert (not b_next!26287))

(assert b_and!76587)

(assert (not b_next!26277))

(assert (not b!860470))

(assert (not b!860388))

(assert (not b!860432))

(assert (not b_next!26285))

(assert (not b!860415))

(assert (not b!860417))

(assert (not b_next!26283))

(assert (not b!860345))

(assert (not b!860411))

(assert (not b!860375))

(assert (not b!860454))

(assert b_and!76589)

(assert (not b_next!26303))

(assert (not b!860497))

(check-sat)

(pop 1)

(push 1)

(assert b_and!76553)

(assert (not b_next!26281))

(assert b_and!76583)

(assert (not b_next!26307))

(assert b_and!76581)

(assert b_and!76591)

(assert (not b_next!26305))

(assert b_and!76545)

(assert (not b_next!26285))

(assert (not b_next!26283))

(assert b_and!76589)

(assert (not b_next!26303))

(assert b_and!76585)

(assert (not b_next!26279))

(assert b_and!76593)

(assert b_and!76549)

(assert (not b_next!26301))

(assert (not b_next!26287))

(assert b_and!76587)

(assert (not b_next!26277))

(check-sat)

(pop 1)


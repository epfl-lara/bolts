; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!192430 () Bool)

(assert start!192430)

(declare-fun b!1921337 () Bool)

(declare-fun b_free!54981 () Bool)

(declare-fun b_next!55685 () Bool)

(assert (=> b!1921337 (= b_free!54981 (not b_next!55685))))

(declare-fun tp!549220 () Bool)

(declare-fun b_and!150235 () Bool)

(assert (=> b!1921337 (= tp!549220 b_and!150235)))

(declare-fun b_free!54983 () Bool)

(declare-fun b_next!55687 () Bool)

(assert (=> b!1921337 (= b_free!54983 (not b_next!55687))))

(declare-fun tp!549225 () Bool)

(declare-fun b_and!150237 () Bool)

(assert (=> b!1921337 (= tp!549225 b_and!150237)))

(declare-fun b!1921345 () Bool)

(declare-fun b_free!54985 () Bool)

(declare-fun b_next!55689 () Bool)

(assert (=> b!1921345 (= b_free!54985 (not b_next!55689))))

(declare-fun tp!549219 () Bool)

(declare-fun b_and!150239 () Bool)

(assert (=> b!1921345 (= tp!549219 b_and!150239)))

(declare-fun b_free!54987 () Bool)

(declare-fun b_next!55691 () Bool)

(assert (=> b!1921345 (= b_free!54987 (not b_next!55691))))

(declare-fun tp!549214 () Bool)

(declare-fun b_and!150241 () Bool)

(assert (=> b!1921345 (= tp!549214 b_and!150241)))

(declare-fun b!1921326 () Bool)

(declare-fun b_free!54989 () Bool)

(declare-fun b_next!55693 () Bool)

(assert (=> b!1921326 (= b_free!54989 (not b_next!55693))))

(declare-fun tp!549215 () Bool)

(declare-fun b_and!150243 () Bool)

(assert (=> b!1921326 (= tp!549215 b_and!150243)))

(declare-fun b_free!54991 () Bool)

(declare-fun b_next!55695 () Bool)

(assert (=> b!1921326 (= b_free!54991 (not b_next!55695))))

(declare-fun tp!549217 () Bool)

(declare-fun b_and!150245 () Bool)

(assert (=> b!1921326 (= tp!549217 b_and!150245)))

(declare-fun b!1921325 () Bool)

(declare-fun res!859232 () Bool)

(declare-fun e!1228198 () Bool)

(assert (=> b!1921325 (=> (not res!859232) (not e!1228198))))

(declare-datatypes ((List!21956 0))(
  ( (Nil!21874) (Cons!21874 (h!27275 (_ BitVec 16)) (t!178849 List!21956)) )
))
(declare-datatypes ((TokenValue!4057 0))(
  ( (FloatLiteralValue!8114 (text!28844 List!21956)) (TokenValueExt!4056 (__x!13612 Int)) (Broken!20285 (value!123315 List!21956)) (Object!4138) (End!4057) (Def!4057) (Underscore!4057) (Match!4057) (Else!4057) (Error!4057) (Case!4057) (If!4057) (Extends!4057) (Abstract!4057) (Class!4057) (Val!4057) (DelimiterValue!8114 (del!4117 List!21956)) (KeywordValue!4063 (value!123316 List!21956)) (CommentValue!8114 (value!123317 List!21956)) (WhitespaceValue!8114 (value!123318 List!21956)) (IndentationValue!4057 (value!123319 List!21956)) (String!25404) (Int32!4057) (Broken!20286 (value!123320 List!21956)) (Boolean!4058) (Unit!36200) (OperatorValue!4060 (op!4117 List!21956)) (IdentifierValue!8114 (value!123321 List!21956)) (IdentifierValue!8115 (value!123322 List!21956)) (WhitespaceValue!8115 (value!123323 List!21956)) (True!8114) (False!8114) (Broken!20287 (value!123324 List!21956)) (Broken!20288 (value!123325 List!21956)) (True!8115) (RightBrace!4057) (RightBracket!4057) (Colon!4057) (Null!4057) (Comma!4057) (LeftBracket!4057) (False!8115) (LeftBrace!4057) (ImaginaryLiteralValue!4057 (text!28845 List!21956)) (StringLiteralValue!12171 (value!123326 List!21956)) (EOFValue!4057 (value!123327 List!21956)) (IdentValue!4057 (value!123328 List!21956)) (DelimiterValue!8115 (value!123329 List!21956)) (DedentValue!4057 (value!123330 List!21956)) (NewLineValue!4057 (value!123331 List!21956)) (IntegerValue!12171 (value!123332 (_ BitVec 32)) (text!28846 List!21956)) (IntegerValue!12172 (value!123333 Int) (text!28847 List!21956)) (Times!4057) (Or!4057) (Equal!4057) (Minus!4057) (Broken!20289 (value!123334 List!21956)) (And!4057) (Div!4057) (LessEqual!4057) (Mod!4057) (Concat!9403) (Not!4057) (Plus!4057) (SpaceValue!4057 (value!123335 List!21956)) (IntegerValue!12173 (value!123336 Int) (text!28848 List!21956)) (StringLiteralValue!12172 (text!28849 List!21956)) (FloatLiteralValue!8115 (text!28850 List!21956)) (BytesLiteralValue!4057 (value!123337 List!21956)) (CommentValue!8115 (value!123338 List!21956)) (StringLiteralValue!12173 (value!123339 List!21956)) (ErrorTokenValue!4057 (msg!4118 List!21956)) )
))
(declare-datatypes ((C!10838 0))(
  ( (C!10839 (val!6371 Int)) )
))
(declare-datatypes ((List!21957 0))(
  ( (Nil!21875) (Cons!21875 (h!27276 C!10838) (t!178850 List!21957)) )
))
(declare-datatypes ((Regex!5346 0))(
  ( (ElementMatch!5346 (c!312270 C!10838)) (Concat!9404 (regOne!11204 Regex!5346) (regTwo!11204 Regex!5346)) (EmptyExpr!5346) (Star!5346 (reg!5675 Regex!5346)) (EmptyLang!5346) (Union!5346 (regOne!11205 Regex!5346) (regTwo!11205 Regex!5346)) )
))
(declare-datatypes ((String!25405 0))(
  ( (String!25406 (value!123340 String)) )
))
(declare-datatypes ((IArray!14601 0))(
  ( (IArray!14602 (innerList!7358 List!21957)) )
))
(declare-datatypes ((Conc!7298 0))(
  ( (Node!7298 (left!17401 Conc!7298) (right!17731 Conc!7298) (csize!14826 Int) (cheight!7509 Int)) (Leaf!10722 (xs!10192 IArray!14601) (csize!14827 Int)) (Empty!7298) )
))
(declare-datatypes ((BalanceConc!14412 0))(
  ( (BalanceConc!14413 (c!312271 Conc!7298)) )
))
(declare-datatypes ((TokenValueInjection!7698 0))(
  ( (TokenValueInjection!7699 (toValue!5550 Int) (toChars!5409 Int)) )
))
(declare-datatypes ((Rule!7642 0))(
  ( (Rule!7643 (regex!3921 Regex!5346) (tag!4361 String!25405) (isSeparator!3921 Bool) (transformation!3921 TokenValueInjection!7698)) )
))
(declare-datatypes ((Token!7394 0))(
  ( (Token!7395 (value!123341 TokenValue!4057) (rule!6124 Rule!7642) (size!17073 Int) (originalCharacters!4728 List!21957)) )
))
(declare-datatypes ((List!21958 0))(
  ( (Nil!21876) (Cons!21876 (h!27277 Token!7394) (t!178851 List!21958)) )
))
(declare-fun tokens!598 () List!21958)

(declare-fun isEmpty!13453 (List!21958) Bool)

(assert (=> b!1921325 (= res!859232 (not (isEmpty!13453 tokens!598)))))

(declare-fun e!1228194 () Bool)

(assert (=> b!1921326 (= e!1228194 (and tp!549215 tp!549217))))

(declare-fun b!1921327 () Bool)

(declare-fun res!859229 () Bool)

(assert (=> b!1921327 (=> (not res!859229) (not e!1228198))))

(declare-datatypes ((List!21959 0))(
  ( (Nil!21877) (Cons!21877 (h!27278 Rule!7642) (t!178852 List!21959)) )
))
(declare-fun rules!3198 () List!21959)

(declare-fun isEmpty!13454 (List!21959) Bool)

(assert (=> b!1921327 (= res!859229 (not (isEmpty!13454 rules!3198)))))

(declare-fun b!1921328 () Bool)

(declare-fun tp!549224 () Bool)

(declare-fun e!1228208 () Bool)

(declare-fun e!1228203 () Bool)

(declare-fun inv!28946 (String!25405) Bool)

(declare-fun inv!28949 (TokenValueInjection!7698) Bool)

(assert (=> b!1921328 (= e!1228208 (and tp!549224 (inv!28946 (tag!4361 (rule!6124 (h!27277 tokens!598)))) (inv!28949 (transformation!3921 (rule!6124 (h!27277 tokens!598)))) e!1228203))))

(declare-fun b!1921329 () Bool)

(declare-fun res!859230 () Bool)

(assert (=> b!1921329 (=> (not res!859230) (not e!1228198))))

(declare-fun lambda!75014 () Int)

(declare-fun forall!4621 (List!21958 Int) Bool)

(assert (=> b!1921329 (= res!859230 (forall!4621 tokens!598 lambda!75014))))

(declare-fun res!859234 () Bool)

(assert (=> start!192430 (=> (not res!859234) (not e!1228198))))

(declare-datatypes ((LexerInterface!3534 0))(
  ( (LexerInterfaceExt!3531 (__x!13613 Int)) (Lexer!3532) )
))
(declare-fun thiss!23328 () LexerInterface!3534)

(assert (=> start!192430 (= res!859234 (is-Lexer!3532 thiss!23328))))

(assert (=> start!192430 e!1228198))

(assert (=> start!192430 true))

(declare-fun e!1228201 () Bool)

(assert (=> start!192430 e!1228201))

(declare-fun e!1228199 () Bool)

(assert (=> start!192430 e!1228199))

(declare-fun separatorToken!354 () Token!7394)

(declare-fun e!1228193 () Bool)

(declare-fun inv!28950 (Token!7394) Bool)

(assert (=> start!192430 (and (inv!28950 separatorToken!354) e!1228193)))

(declare-fun b!1921330 () Bool)

(declare-fun res!859227 () Bool)

(assert (=> b!1921330 (=> (not res!859227) (not e!1228198))))

(assert (=> b!1921330 (= res!859227 (not (is-Cons!21876 tokens!598)))))

(declare-fun b!1921331 () Bool)

(declare-fun res!859236 () Bool)

(assert (=> b!1921331 (=> (not res!859236) (not e!1228198))))

(assert (=> b!1921331 (= res!859236 (isSeparator!3921 (rule!6124 separatorToken!354)))))

(declare-fun b!1921332 () Bool)

(declare-fun e!1228207 () Bool)

(declare-fun tp!549218 () Bool)

(assert (=> b!1921332 (= e!1228201 (and e!1228207 tp!549218))))

(declare-fun e!1228202 () Bool)

(declare-fun tp!549222 () Bool)

(declare-fun e!1228195 () Bool)

(declare-fun b!1921333 () Bool)

(assert (=> b!1921333 (= e!1228202 (and tp!549222 (inv!28946 (tag!4361 (rule!6124 separatorToken!354))) (inv!28949 (transformation!3921 (rule!6124 separatorToken!354))) e!1228195))))

(declare-fun e!1228197 () Bool)

(declare-fun b!1921334 () Bool)

(declare-fun tp!549216 () Bool)

(declare-fun inv!21 (TokenValue!4057) Bool)

(assert (=> b!1921334 (= e!1228197 (and (inv!21 (value!123341 (h!27277 tokens!598))) e!1228208 tp!549216))))

(declare-fun tp!549213 () Bool)

(declare-fun b!1921335 () Bool)

(assert (=> b!1921335 (= e!1228199 (and (inv!28950 (h!27277 tokens!598)) e!1228197 tp!549213))))

(declare-fun b!1921336 () Bool)

(declare-fun res!859233 () Bool)

(assert (=> b!1921336 (=> (not res!859233) (not e!1228198))))

(declare-datatypes ((tuple2!20496 0))(
  ( (tuple2!20497 (_1!11717 Token!7394) (_2!11717 List!21957)) )
))
(declare-datatypes ((Option!4521 0))(
  ( (None!4520) (Some!4520 (v!26593 tuple2!20496)) )
))
(declare-fun isDefined!3815 (Option!4521) Bool)

(declare-fun maxPrefix!1972 (LexerInterface!3534 List!21959 List!21957) Option!4521)

(declare-fun printWithSeparatorTokenWhenNeededList!573 (LexerInterface!3534 List!21959 List!21958 Token!7394) List!21957)

(assert (=> b!1921336 (= res!859233 (isDefined!3815 (maxPrefix!1972 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!573 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))

(assert (=> b!1921337 (= e!1228195 (and tp!549220 tp!549225))))

(declare-fun b!1921338 () Bool)

(declare-fun res!859231 () Bool)

(assert (=> b!1921338 (=> (not res!859231) (not e!1228198))))

(declare-fun rulesProduceEachTokenIndividuallyList!1265 (LexerInterface!3534 List!21959 List!21958) Bool)

(assert (=> b!1921338 (= res!859231 (rulesProduceEachTokenIndividuallyList!1265 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1921339 () Bool)

(declare-fun res!859237 () Bool)

(assert (=> b!1921339 (=> (not res!859237) (not e!1228198))))

(declare-fun rulesProduceIndividualToken!1706 (LexerInterface!3534 List!21959 Token!7394) Bool)

(assert (=> b!1921339 (= res!859237 (rulesProduceIndividualToken!1706 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1921340 () Bool)

(declare-fun res!859235 () Bool)

(assert (=> b!1921340 (=> (not res!859235) (not e!1228198))))

(declare-fun rulesInvariant!3141 (LexerInterface!3534 List!21959) Bool)

(assert (=> b!1921340 (= res!859235 (rulesInvariant!3141 thiss!23328 rules!3198))))

(declare-fun b!1921341 () Bool)

(assert (=> b!1921341 (= e!1228198 false)))

(declare-fun lt!736449 () Bool)

(declare-fun rulesValidInductive!1329 (LexerInterface!3534 List!21959) Bool)

(assert (=> b!1921341 (= lt!736449 (rulesValidInductive!1329 thiss!23328 rules!3198))))

(declare-fun tp!549223 () Bool)

(declare-fun b!1921342 () Bool)

(assert (=> b!1921342 (= e!1228193 (and (inv!21 (value!123341 separatorToken!354)) e!1228202 tp!549223))))

(declare-fun b!1921343 () Bool)

(declare-fun res!859228 () Bool)

(assert (=> b!1921343 (=> (not res!859228) (not e!1228198))))

(declare-fun sepAndNonSepRulesDisjointChars!1019 (List!21959 List!21959) Bool)

(assert (=> b!1921343 (= res!859228 (sepAndNonSepRulesDisjointChars!1019 rules!3198 rules!3198))))

(declare-fun b!1921344 () Bool)

(declare-fun tp!549221 () Bool)

(assert (=> b!1921344 (= e!1228207 (and tp!549221 (inv!28946 (tag!4361 (h!27278 rules!3198))) (inv!28949 (transformation!3921 (h!27278 rules!3198))) e!1228194))))

(assert (=> b!1921345 (= e!1228203 (and tp!549219 tp!549214))))

(assert (= (and start!192430 res!859234) b!1921327))

(assert (= (and b!1921327 res!859229) b!1921340))

(assert (= (and b!1921340 res!859235) b!1921338))

(assert (= (and b!1921338 res!859231) b!1921339))

(assert (= (and b!1921339 res!859237) b!1921331))

(assert (= (and b!1921331 res!859236) b!1921329))

(assert (= (and b!1921329 res!859230) b!1921343))

(assert (= (and b!1921343 res!859228) b!1921330))

(assert (= (and b!1921330 res!859227) b!1921325))

(assert (= (and b!1921325 res!859232) b!1921336))

(assert (= (and b!1921336 res!859233) b!1921341))

(assert (= b!1921344 b!1921326))

(assert (= b!1921332 b!1921344))

(assert (= (and start!192430 (is-Cons!21877 rules!3198)) b!1921332))

(assert (= b!1921328 b!1921345))

(assert (= b!1921334 b!1921328))

(assert (= b!1921335 b!1921334))

(assert (= (and start!192430 (is-Cons!21876 tokens!598)) b!1921335))

(assert (= b!1921333 b!1921337))

(assert (= b!1921342 b!1921333))

(assert (= start!192430 b!1921342))

(declare-fun m!2356255 () Bool)

(assert (=> b!1921343 m!2356255))

(declare-fun m!2356257 () Bool)

(assert (=> b!1921333 m!2356257))

(declare-fun m!2356259 () Bool)

(assert (=> b!1921333 m!2356259))

(declare-fun m!2356261 () Bool)

(assert (=> b!1921342 m!2356261))

(declare-fun m!2356263 () Bool)

(assert (=> b!1921328 m!2356263))

(declare-fun m!2356265 () Bool)

(assert (=> b!1921328 m!2356265))

(declare-fun m!2356267 () Bool)

(assert (=> b!1921329 m!2356267))

(declare-fun m!2356269 () Bool)

(assert (=> b!1921338 m!2356269))

(declare-fun m!2356271 () Bool)

(assert (=> b!1921325 m!2356271))

(declare-fun m!2356273 () Bool)

(assert (=> b!1921336 m!2356273))

(assert (=> b!1921336 m!2356273))

(declare-fun m!2356275 () Bool)

(assert (=> b!1921336 m!2356275))

(assert (=> b!1921336 m!2356275))

(declare-fun m!2356277 () Bool)

(assert (=> b!1921336 m!2356277))

(declare-fun m!2356279 () Bool)

(assert (=> b!1921344 m!2356279))

(declare-fun m!2356281 () Bool)

(assert (=> b!1921344 m!2356281))

(declare-fun m!2356283 () Bool)

(assert (=> b!1921335 m!2356283))

(declare-fun m!2356285 () Bool)

(assert (=> b!1921327 m!2356285))

(declare-fun m!2356287 () Bool)

(assert (=> b!1921334 m!2356287))

(declare-fun m!2356289 () Bool)

(assert (=> b!1921340 m!2356289))

(declare-fun m!2356291 () Bool)

(assert (=> start!192430 m!2356291))

(declare-fun m!2356293 () Bool)

(assert (=> b!1921339 m!2356293))

(declare-fun m!2356295 () Bool)

(assert (=> b!1921341 m!2356295))

(push 1)

(assert b_and!150239)

(assert (not b_next!55693))

(assert (not b!1921344))

(assert (not start!192430))

(assert (not b!1921343))

(assert b_and!150243)

(assert (not b!1921333))

(assert (not b!1921341))

(assert (not b!1921325))

(assert (not b!1921339))

(assert (not b!1921327))

(assert (not b!1921335))

(assert (not b!1921329))

(assert (not b!1921328))

(assert b_and!150237)

(assert b_and!150235)

(assert (not b!1921338))

(assert (not b!1921340))

(assert (not b!1921334))

(assert (not b!1921342))

(assert (not b_next!55687))

(assert (not b_next!55695))

(assert (not b_next!55691))

(assert b_and!150245)

(assert (not b!1921332))

(assert (not b!1921336))

(assert (not b_next!55685))

(assert (not b_next!55689))

(assert b_and!150241)

(check-sat)

(pop 1)

(push 1)

(assert b_and!150239)

(assert (not b_next!55693))

(assert b_and!150235)

(assert b_and!150243)

(assert (not b_next!55685))

(assert b_and!150237)

(assert (not b_next!55687))

(assert (not b_next!55695))

(assert (not b_next!55691))

(assert b_and!150245)

(assert (not b_next!55689))

(assert b_and!150241)

(check-sat)

(pop 1)


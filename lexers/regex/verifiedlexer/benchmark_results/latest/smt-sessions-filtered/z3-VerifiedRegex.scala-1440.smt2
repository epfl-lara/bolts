; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75294 () Bool)

(assert start!75294)

(declare-fun b!845350 () Bool)

(declare-fun b_free!25385 () Bool)

(declare-fun b_next!25449 () Bool)

(assert (=> b!845350 (= b_free!25385 (not b_next!25449))))

(declare-fun tp!266072 () Bool)

(declare-fun b_and!73509 () Bool)

(assert (=> b!845350 (= tp!266072 b_and!73509)))

(declare-fun b_free!25387 () Bool)

(declare-fun b_next!25451 () Bool)

(assert (=> b!845350 (= b_free!25387 (not b_next!25451))))

(declare-fun tp!266070 () Bool)

(declare-fun b_and!73511 () Bool)

(assert (=> b!845350 (= tp!266070 b_and!73511)))

(declare-fun b!845346 () Bool)

(declare-fun b_free!25389 () Bool)

(declare-fun b_next!25453 () Bool)

(assert (=> b!845346 (= b_free!25389 (not b_next!25453))))

(declare-fun tp!266064 () Bool)

(declare-fun b_and!73513 () Bool)

(assert (=> b!845346 (= tp!266064 b_and!73513)))

(declare-fun b_free!25391 () Bool)

(declare-fun b_next!25455 () Bool)

(assert (=> b!845346 (= b_free!25391 (not b_next!25455))))

(declare-fun tp!266066 () Bool)

(declare-fun b_and!73515 () Bool)

(assert (=> b!845346 (= tp!266066 b_and!73515)))

(declare-fun b!845352 () Bool)

(declare-fun b_free!25393 () Bool)

(declare-fun b_next!25457 () Bool)

(assert (=> b!845352 (= b_free!25393 (not b_next!25457))))

(declare-fun tp!266074 () Bool)

(declare-fun b_and!73517 () Bool)

(assert (=> b!845352 (= tp!266074 b_and!73517)))

(declare-fun b_free!25395 () Bool)

(declare-fun b_next!25459 () Bool)

(assert (=> b!845352 (= b_free!25395 (not b_next!25459))))

(declare-fun tp!266065 () Bool)

(declare-fun b_and!73519 () Bool)

(assert (=> b!845352 (= tp!266065 b_and!73519)))

(declare-fun b!845336 () Bool)

(declare-fun res!386415 () Bool)

(declare-fun e!556167 () Bool)

(assert (=> b!845336 (=> res!386415 e!556167)))

(declare-datatypes ((List!9112 0))(
  ( (Nil!9096) (Cons!9096 (h!14497 (_ BitVec 16)) (t!94360 List!9112)) )
))
(declare-datatypes ((TokenValue!1772 0))(
  ( (FloatLiteralValue!3544 (text!12849 List!9112)) (TokenValueExt!1771 (__x!7275 Int)) (Broken!8860 (value!55294 List!9112)) (Object!1787) (End!1772) (Def!1772) (Underscore!1772) (Match!1772) (Else!1772) (Error!1772) (Case!1772) (If!1772) (Extends!1772) (Abstract!1772) (Class!1772) (Val!1772) (DelimiterValue!3544 (del!1832 List!9112)) (KeywordValue!1778 (value!55295 List!9112)) (CommentValue!3544 (value!55296 List!9112)) (WhitespaceValue!3544 (value!55297 List!9112)) (IndentationValue!1772 (value!55298 List!9112)) (String!10757) (Int32!1772) (Broken!8861 (value!55299 List!9112)) (Boolean!1773) (Unit!13562) (OperatorValue!1775 (op!1832 List!9112)) (IdentifierValue!3544 (value!55300 List!9112)) (IdentifierValue!3545 (value!55301 List!9112)) (WhitespaceValue!3545 (value!55302 List!9112)) (True!3544) (False!3544) (Broken!8862 (value!55303 List!9112)) (Broken!8863 (value!55304 List!9112)) (True!3545) (RightBrace!1772) (RightBracket!1772) (Colon!1772) (Null!1772) (Comma!1772) (LeftBracket!1772) (False!3545) (LeftBrace!1772) (ImaginaryLiteralValue!1772 (text!12850 List!9112)) (StringLiteralValue!5316 (value!55305 List!9112)) (EOFValue!1772 (value!55306 List!9112)) (IdentValue!1772 (value!55307 List!9112)) (DelimiterValue!3545 (value!55308 List!9112)) (DedentValue!1772 (value!55309 List!9112)) (NewLineValue!1772 (value!55310 List!9112)) (IntegerValue!5316 (value!55311 (_ BitVec 32)) (text!12851 List!9112)) (IntegerValue!5317 (value!55312 Int) (text!12852 List!9112)) (Times!1772) (Or!1772) (Equal!1772) (Minus!1772) (Broken!8864 (value!55313 List!9112)) (And!1772) (Div!1772) (LessEqual!1772) (Mod!1772) (Concat!3911) (Not!1772) (Plus!1772) (SpaceValue!1772 (value!55314 List!9112)) (IntegerValue!5318 (value!55315 Int) (text!12853 List!9112)) (StringLiteralValue!5317 (text!12854 List!9112)) (FloatLiteralValue!3545 (text!12855 List!9112)) (BytesLiteralValue!1772 (value!55316 List!9112)) (CommentValue!3545 (value!55317 List!9112)) (StringLiteralValue!5318 (value!55318 List!9112)) (ErrorTokenValue!1772 (msg!1833 List!9112)) )
))
(declare-datatypes ((C!4848 0))(
  ( (C!4849 (val!2672 Int)) )
))
(declare-datatypes ((Regex!2139 0))(
  ( (ElementMatch!2139 (c!137543 C!4848)) (Concat!3912 (regOne!4790 Regex!2139) (regTwo!4790 Regex!2139)) (EmptyExpr!2139) (Star!2139 (reg!2468 Regex!2139)) (EmptyLang!2139) (Union!2139 (regOne!4791 Regex!2139) (regTwo!4791 Regex!2139)) )
))
(declare-datatypes ((String!10758 0))(
  ( (String!10759 (value!55319 String)) )
))
(declare-datatypes ((List!9113 0))(
  ( (Nil!9097) (Cons!9097 (h!14498 C!4848) (t!94361 List!9113)) )
))
(declare-datatypes ((IArray!6035 0))(
  ( (IArray!6036 (innerList!3075 List!9113)) )
))
(declare-datatypes ((Conc!3015 0))(
  ( (Node!3015 (left!6737 Conc!3015) (right!7067 Conc!3015) (csize!6260 Int) (cheight!3226 Int)) (Leaf!4456 (xs!5704 IArray!6035) (csize!6261 Int)) (Empty!3015) )
))
(declare-datatypes ((BalanceConc!6044 0))(
  ( (BalanceConc!6045 (c!137544 Conc!3015)) )
))
(declare-datatypes ((TokenValueInjection!3244 0))(
  ( (TokenValueInjection!3245 (toValue!2731 Int) (toChars!2590 Int)) )
))
(declare-datatypes ((Rule!3212 0))(
  ( (Rule!3213 (regex!1706 Regex!2139) (tag!1968 String!10758) (isSeparator!1706 Bool) (transformation!1706 TokenValueInjection!3244)) )
))
(declare-datatypes ((Token!3078 0))(
  ( (Token!3079 (value!55320 TokenValue!1772) (rule!3129 Rule!3212) (size!7587 Int) (originalCharacters!2262 List!9113)) )
))
(declare-datatypes ((List!9114 0))(
  ( (Nil!9098) (Cons!9098 (h!14499 Token!3078) (t!94362 List!9114)) )
))
(declare-fun l!5107 () List!9114)

(declare-fun lt!320194 () List!9114)

(declare-fun head!1466 (List!9114) Token!3078)

(assert (=> b!845336 (= res!386415 (not (= (head!1466 l!5107) (h!14499 lt!320194))))))

(declare-fun b!845337 () Bool)

(declare-fun res!386414 () Bool)

(declare-fun e!556174 () Bool)

(assert (=> b!845337 (=> (not res!386414) (not e!556174))))

(declare-fun separatorToken!297 () Token!3078)

(assert (=> b!845337 (= res!386414 (isSeparator!1706 (rule!3129 separatorToken!297)))))

(declare-fun e!556159 () Bool)

(declare-fun b!845338 () Bool)

(declare-fun tp!266068 () Bool)

(declare-fun e!556157 () Bool)

(declare-fun inv!11574 (Token!3078) Bool)

(assert (=> b!845338 (= e!556157 (and (inv!11574 (h!14499 l!5107)) e!556159 tp!266068))))

(declare-fun e!556161 () Bool)

(declare-fun e!556175 () Bool)

(declare-fun b!845339 () Bool)

(declare-fun tp!266067 () Bool)

(declare-fun inv!21 (TokenValue!1772) Bool)

(assert (=> b!845339 (= e!556175 (and (inv!21 (value!55320 separatorToken!297)) e!556161 tp!266067))))

(declare-fun b!845340 () Bool)

(declare-fun tp!266069 () Bool)

(declare-fun e!556168 () Bool)

(declare-fun e!556171 () Bool)

(declare-fun inv!11571 (String!10758) Bool)

(declare-fun inv!11575 (TokenValueInjection!3244) Bool)

(assert (=> b!845340 (= e!556171 (and tp!266069 (inv!11571 (tag!1968 (rule!3129 (h!14499 l!5107)))) (inv!11575 (transformation!1706 (rule!3129 (h!14499 l!5107)))) e!556168))))

(declare-fun res!386410 () Bool)

(assert (=> start!75294 (=> (not res!386410) (not e!556174))))

(declare-datatypes ((LexerInterface!1508 0))(
  ( (LexerInterfaceExt!1505 (__x!7276 Int)) (Lexer!1506) )
))
(declare-fun thiss!20117 () LexerInterface!1508)

(get-info :version)

(assert (=> start!75294 (= res!386410 ((_ is Lexer!1506) thiss!20117))))

(assert (=> start!75294 e!556174))

(assert (=> start!75294 true))

(declare-fun e!556169 () Bool)

(assert (=> start!75294 e!556169))

(assert (=> start!75294 e!556157))

(assert (=> start!75294 (and (inv!11574 separatorToken!297) e!556175)))

(declare-fun b!845341 () Bool)

(declare-fun e!556173 () Bool)

(declare-fun lt!320199 () List!9114)

(declare-datatypes ((List!9115 0))(
  ( (Nil!9099) (Cons!9099 (h!14500 Rule!3212) (t!94363 List!9115)) )
))
(declare-fun rules!2621 () List!9115)

(declare-fun tokensListTwoByTwoPredicateSeparableList!30 (LexerInterface!1508 List!9114 List!9115) Bool)

(assert (=> b!845341 (= e!556173 (tokensListTwoByTwoPredicateSeparableList!30 thiss!20117 lt!320199 rules!2621))))

(declare-fun b!845342 () Bool)

(declare-fun res!386405 () Bool)

(assert (=> b!845342 (=> (not res!386405) (not e!556174))))

(declare-fun rulesInvariant!1384 (LexerInterface!1508 List!9115) Bool)

(assert (=> b!845342 (= res!386405 (rulesInvariant!1384 thiss!20117 rules!2621))))

(declare-fun e!556166 () Bool)

(declare-fun tp!266073 () Bool)

(declare-fun b!845343 () Bool)

(assert (=> b!845343 (= e!556161 (and tp!266073 (inv!11571 (tag!1968 (rule!3129 separatorToken!297))) (inv!11575 (transformation!1706 (rule!3129 separatorToken!297))) e!556166))))

(declare-fun b!845344 () Bool)

(declare-fun res!386408 () Bool)

(assert (=> b!845344 (=> (not res!386408) (not e!556174))))

(declare-fun isEmpty!5364 (List!9115) Bool)

(assert (=> b!845344 (= res!386408 (not (isEmpty!5364 rules!2621)))))

(declare-fun e!556162 () Bool)

(declare-fun e!556156 () Bool)

(declare-fun b!845345 () Bool)

(declare-fun tp!266071 () Bool)

(assert (=> b!845345 (= e!556162 (and tp!266071 (inv!11571 (tag!1968 (h!14500 rules!2621))) (inv!11575 (transformation!1706 (h!14500 rules!2621))) e!556156))))

(assert (=> b!845346 (= e!556156 (and tp!266064 tp!266066))))

(declare-fun b!845347 () Bool)

(declare-fun res!386407 () Bool)

(assert (=> b!845347 (=> res!386407 e!556167)))

(assert (=> b!845347 (= res!386407 (not (= (h!14499 (t!94362 lt!320194)) separatorToken!297)))))

(declare-fun b!845348 () Bool)

(declare-fun e!556172 () Bool)

(assert (=> b!845348 (= e!556172 (not (= (t!94362 (t!94362 lt!320194)) Nil!9098)))))

(declare-fun lt!320196 () Token!3078)

(declare-fun separableTokensPredicate!48 (LexerInterface!1508 Token!3078 Token!3078 List!9115) Bool)

(assert (=> b!845348 (separableTokensPredicate!48 thiss!20117 (h!14499 (t!94362 lt!320194)) lt!320196 rules!2621)))

(declare-datatypes ((Unit!13563 0))(
  ( (Unit!13564) )
))
(declare-fun lt!320200 () Unit!13563)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!30 (LexerInterface!1508 Token!3078 Token!3078 List!9115) Unit!13563)

(assert (=> b!845348 (= lt!320200 (lemmaTokensOfDifferentKindsAreSeparable!30 thiss!20117 (h!14499 (t!94362 lt!320194)) lt!320196 rules!2621))))

(assert (=> b!845348 (= lt!320196 (head!1466 (t!94362 (t!94362 lt!320194))))))

(declare-fun b!845349 () Bool)

(declare-fun e!556164 () Bool)

(assert (=> b!845349 (= e!556174 (not e!556164))))

(declare-fun res!386409 () Bool)

(assert (=> b!845349 (=> res!386409 e!556164)))

(assert (=> b!845349 (= res!386409 (or (not ((_ is Cons!9098) lt!320194)) (not ((_ is Cons!9098) (t!94362 lt!320194)))))))

(declare-fun rulesProduceEachTokenIndividuallyList!396 (LexerInterface!1508 List!9115 List!9114) Bool)

(assert (=> b!845349 (rulesProduceEachTokenIndividuallyList!396 thiss!20117 rules!2621 lt!320194)))

(declare-fun withSeparatorTokenList!38 (LexerInterface!1508 List!9114 Token!3078) List!9114)

(assert (=> b!845349 (= lt!320194 (withSeparatorTokenList!38 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!320198 () Unit!13563)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!38 (LexerInterface!1508 List!9115 List!9114 Token!3078) Unit!13563)

(assert (=> b!845349 (= lt!320198 (withSeparatorTokenListPreservesRulesProduceTokens!38 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> b!845350 (= e!556166 (and tp!266072 tp!266070))))

(declare-fun b!845351 () Bool)

(declare-fun res!386416 () Bool)

(assert (=> b!845351 (=> (not res!386416) (not e!556174))))

(declare-fun sepAndNonSepRulesDisjointChars!506 (List!9115 List!9115) Bool)

(assert (=> b!845351 (= res!386416 (sepAndNonSepRulesDisjointChars!506 rules!2621 rules!2621))))

(assert (=> b!845352 (= e!556168 (and tp!266074 tp!266065))))

(declare-fun b!845353 () Bool)

(declare-fun res!386417 () Bool)

(assert (=> b!845353 (=> (not res!386417) (not e!556174))))

(assert (=> b!845353 (= res!386417 (rulesProduceEachTokenIndividuallyList!396 thiss!20117 rules!2621 l!5107))))

(declare-fun b!845354 () Bool)

(assert (=> b!845354 (= e!556167 e!556172)))

(declare-fun res!386412 () Bool)

(assert (=> b!845354 (=> res!386412 e!556172)))

(declare-fun isEmpty!5365 (List!9114) Bool)

(assert (=> b!845354 (= res!386412 (isEmpty!5365 (t!94362 (t!94362 lt!320194))))))

(assert (=> b!845354 e!556173))

(declare-fun res!386413 () Bool)

(assert (=> b!845354 (=> (not res!386413) (not e!556173))))

(assert (=> b!845354 (= res!386413 (rulesProduceEachTokenIndividuallyList!396 thiss!20117 rules!2621 lt!320199))))

(declare-fun lt!320193 () List!9114)

(declare-fun lt!320195 () Unit!13563)

(assert (=> b!845354 (= lt!320195 (withSeparatorTokenListPreservesRulesProduceTokens!38 thiss!20117 rules!2621 lt!320193 separatorToken!297))))

(declare-fun lt!320197 () Unit!13563)

(declare-fun printWithSeparatorTokenImpliesSeparableTokensList!14 (LexerInterface!1508 List!9115 List!9114 Token!3078) Unit!13563)

(assert (=> b!845354 (= lt!320197 (printWithSeparatorTokenImpliesSeparableTokensList!14 thiss!20117 rules!2621 lt!320193 separatorToken!297))))

(assert (=> b!845354 (separableTokensPredicate!48 thiss!20117 (h!14499 lt!320194) (h!14499 (t!94362 lt!320194)) rules!2621)))

(declare-fun lt!320201 () Unit!13563)

(assert (=> b!845354 (= lt!320201 (lemmaTokensOfDifferentKindsAreSeparable!30 thiss!20117 (h!14499 lt!320194) (h!14499 (t!94362 lt!320194)) rules!2621))))

(declare-fun b!845355 () Bool)

(declare-fun tp!266075 () Bool)

(assert (=> b!845355 (= e!556169 (and e!556162 tp!266075))))

(declare-fun b!845356 () Bool)

(assert (=> b!845356 (= e!556164 e!556167)))

(declare-fun res!386404 () Bool)

(assert (=> b!845356 (=> res!386404 e!556167)))

(assert (=> b!845356 (= res!386404 (not (= (t!94362 (t!94362 lt!320194)) lt!320199)))))

(assert (=> b!845356 (= lt!320199 (withSeparatorTokenList!38 thiss!20117 lt!320193 separatorToken!297))))

(declare-fun tail!1024 (List!9114) List!9114)

(assert (=> b!845356 (= lt!320193 (tail!1024 l!5107))))

(declare-fun b!845357 () Bool)

(declare-fun res!386411 () Bool)

(assert (=> b!845357 (=> (not res!386411) (not e!556174))))

(declare-fun rulesProduceIndividualToken!572 (LexerInterface!1508 List!9115 Token!3078) Bool)

(assert (=> b!845357 (= res!386411 (rulesProduceIndividualToken!572 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!845358 () Bool)

(declare-fun res!386406 () Bool)

(assert (=> b!845358 (=> (not res!386406) (not e!556174))))

(declare-fun lambda!25176 () Int)

(declare-fun forall!2133 (List!9114 Int) Bool)

(assert (=> b!845358 (= res!386406 (forall!2133 l!5107 lambda!25176))))

(declare-fun tp!266076 () Bool)

(declare-fun b!845359 () Bool)

(assert (=> b!845359 (= e!556159 (and (inv!21 (value!55320 (h!14499 l!5107))) e!556171 tp!266076))))

(assert (= (and start!75294 res!386410) b!845344))

(assert (= (and b!845344 res!386408) b!845342))

(assert (= (and b!845342 res!386405) b!845353))

(assert (= (and b!845353 res!386417) b!845357))

(assert (= (and b!845357 res!386411) b!845337))

(assert (= (and b!845337 res!386414) b!845358))

(assert (= (and b!845358 res!386406) b!845351))

(assert (= (and b!845351 res!386416) b!845349))

(assert (= (and b!845349 (not res!386409)) b!845356))

(assert (= (and b!845356 (not res!386404)) b!845336))

(assert (= (and b!845336 (not res!386415)) b!845347))

(assert (= (and b!845347 (not res!386407)) b!845354))

(assert (= (and b!845354 res!386413) b!845341))

(assert (= (and b!845354 (not res!386412)) b!845348))

(assert (= b!845345 b!845346))

(assert (= b!845355 b!845345))

(assert (= (and start!75294 ((_ is Cons!9099) rules!2621)) b!845355))

(assert (= b!845340 b!845352))

(assert (= b!845359 b!845340))

(assert (= b!845338 b!845359))

(assert (= (and start!75294 ((_ is Cons!9098) l!5107)) b!845338))

(assert (= b!845343 b!845350))

(assert (= b!845339 b!845343))

(assert (= start!75294 b!845339))

(declare-fun m!1080373 () Bool)

(assert (=> b!845359 m!1080373))

(declare-fun m!1080375 () Bool)

(assert (=> b!845351 m!1080375))

(declare-fun m!1080377 () Bool)

(assert (=> b!845354 m!1080377))

(declare-fun m!1080379 () Bool)

(assert (=> b!845354 m!1080379))

(declare-fun m!1080381 () Bool)

(assert (=> b!845354 m!1080381))

(declare-fun m!1080383 () Bool)

(assert (=> b!845354 m!1080383))

(declare-fun m!1080385 () Bool)

(assert (=> b!845354 m!1080385))

(declare-fun m!1080387 () Bool)

(assert (=> b!845354 m!1080387))

(declare-fun m!1080389 () Bool)

(assert (=> b!845340 m!1080389))

(declare-fun m!1080391 () Bool)

(assert (=> b!845340 m!1080391))

(declare-fun m!1080393 () Bool)

(assert (=> b!845343 m!1080393))

(declare-fun m!1080395 () Bool)

(assert (=> b!845343 m!1080395))

(declare-fun m!1080397 () Bool)

(assert (=> b!845353 m!1080397))

(declare-fun m!1080399 () Bool)

(assert (=> b!845349 m!1080399))

(declare-fun m!1080401 () Bool)

(assert (=> b!845349 m!1080401))

(declare-fun m!1080403 () Bool)

(assert (=> b!845349 m!1080403))

(declare-fun m!1080405 () Bool)

(assert (=> b!845338 m!1080405))

(declare-fun m!1080407 () Bool)

(assert (=> b!845348 m!1080407))

(declare-fun m!1080409 () Bool)

(assert (=> b!845348 m!1080409))

(declare-fun m!1080411 () Bool)

(assert (=> b!845348 m!1080411))

(declare-fun m!1080413 () Bool)

(assert (=> b!845336 m!1080413))

(declare-fun m!1080415 () Bool)

(assert (=> b!845341 m!1080415))

(declare-fun m!1080417 () Bool)

(assert (=> b!845356 m!1080417))

(declare-fun m!1080419 () Bool)

(assert (=> b!845356 m!1080419))

(declare-fun m!1080421 () Bool)

(assert (=> b!845339 m!1080421))

(declare-fun m!1080423 () Bool)

(assert (=> b!845357 m!1080423))

(declare-fun m!1080425 () Bool)

(assert (=> b!845344 m!1080425))

(declare-fun m!1080427 () Bool)

(assert (=> b!845345 m!1080427))

(declare-fun m!1080429 () Bool)

(assert (=> b!845345 m!1080429))

(declare-fun m!1080431 () Bool)

(assert (=> b!845342 m!1080431))

(declare-fun m!1080433 () Bool)

(assert (=> start!75294 m!1080433))

(declare-fun m!1080435 () Bool)

(assert (=> b!845358 m!1080435))

(check-sat b_and!73511 (not b!845357) (not start!75294) (not b_next!25451) (not b!845340) b_and!73517 (not b!845343) (not b!845341) (not b!845358) (not b!845351) (not b_next!25459) b_and!73519 (not b!845355) (not b!845353) (not b!845348) (not b!845349) b_and!73515 b_and!73509 (not b_next!25455) (not b_next!25449) (not b!845359) b_and!73513 (not b!845336) (not b_next!25457) (not b!845356) (not b!845342) (not b!845344) (not b!845339) (not b!845354) (not b!845345) (not b!845338) (not b_next!25453))
(check-sat b_and!73511 (not b_next!25451) b_and!73513 b_and!73517 (not b_next!25457) (not b_next!25453) (not b_next!25459) b_and!73519 b_and!73515 b_and!73509 (not b_next!25455) (not b_next!25449))
(get-model)

(declare-fun b!845380 () Bool)

(declare-fun e!556191 () List!9113)

(declare-fun lt!320218 () List!9114)

(declare-fun ++!2353 (List!9113 List!9113) List!9113)

(declare-fun list!3571 (BalanceConc!6044) List!9113)

(declare-fun charsOf!980 (Token!3078) BalanceConc!6044)

(declare-fun printList!463 (LexerInterface!1508 List!9114) List!9113)

(assert (=> b!845380 (= e!556191 (++!2353 (list!3571 (charsOf!980 (h!14499 lt!320218))) (printList!463 thiss!20117 (t!94362 lt!320218))))))

(declare-fun b!845381 () Bool)

(declare-fun e!556193 () List!9113)

(declare-fun e!556190 () Bool)

(declare-fun $colon$colon!76 (List!9114 Token!3078) List!9114)

(assert (=> b!845381 (= e!556190 (= (printList!463 thiss!20117 ($colon$colon!76 ($colon$colon!76 (withSeparatorTokenList!38 thiss!20117 (t!94362 lt!320193) separatorToken!297) separatorToken!297) (h!14499 lt!320193))) e!556193))))

(declare-fun c!137552 () Bool)

(declare-fun lt!320220 () List!9114)

(assert (=> b!845381 (= c!137552 ((_ is Cons!9098) lt!320220))))

(assert (=> b!845381 (= lt!320220 ($colon$colon!76 ($colon$colon!76 (withSeparatorTokenList!38 thiss!20117 (t!94362 lt!320193) separatorToken!297) separatorToken!297) (h!14499 lt!320193)))))

(declare-fun b!845382 () Bool)

(assert (=> b!845382 (= e!556193 Nil!9097)))

(declare-fun b!845383 () Bool)

(declare-fun e!556192 () Bool)

(declare-fun e!556189 () Bool)

(assert (=> b!845383 (= e!556192 e!556189)))

(declare-fun res!386434 () Bool)

(assert (=> b!845383 (=> res!386434 e!556189)))

(assert (=> b!845383 (= res!386434 (not ((_ is Cons!9098) lt!320193)))))

(declare-fun b!845384 () Bool)

(declare-fun e!556188 () List!9114)

(assert (=> b!845384 (= e!556188 ($colon$colon!76 ($colon$colon!76 (withSeparatorTokenList!38 thiss!20117 (t!94362 lt!320193) separatorToken!297) separatorToken!297) (h!14499 lt!320193)))))

(declare-fun lt!320225 () List!9113)

(assert (=> b!845384 (= lt!320225 (list!3571 (charsOf!980 (h!14499 lt!320193))))))

(declare-fun lt!320224 () List!9113)

(assert (=> b!845384 (= lt!320224 (list!3571 (charsOf!980 separatorToken!297)))))

(declare-fun lt!320222 () List!9113)

(assert (=> b!845384 (= lt!320222 (printList!463 thiss!20117 (withSeparatorTokenList!38 thiss!20117 (t!94362 lt!320193) separatorToken!297)))))

(declare-fun lt!320223 () Unit!13563)

(declare-fun lemmaConcatAssociativity!738 (List!9113 List!9113 List!9113) Unit!13563)

(assert (=> b!845384 (= lt!320223 (lemmaConcatAssociativity!738 lt!320225 lt!320224 lt!320222))))

(assert (=> b!845384 (= (++!2353 (++!2353 lt!320225 lt!320224) lt!320222) (++!2353 lt!320225 (++!2353 lt!320224 lt!320222)))))

(declare-fun lt!320219 () Unit!13563)

(assert (=> b!845384 (= lt!320219 lt!320223)))

(declare-fun b!845385 () Bool)

(assert (=> b!845385 (= e!556188 Nil!9098)))

(declare-fun b!845386 () Bool)

(assert (=> b!845386 (= e!556191 Nil!9097)))

(declare-fun b!845387 () Bool)

(assert (=> b!845387 (= e!556193 (++!2353 (list!3571 (charsOf!980 (h!14499 lt!320220))) (printList!463 thiss!20117 (t!94362 lt!320220))))))

(declare-fun b!845388 () Bool)

(declare-fun res!386436 () Bool)

(assert (=> b!845388 (=> (not res!386436) (not e!556192))))

(assert (=> b!845388 (= res!386436 e!556190)))

(declare-fun res!386433 () Bool)

(assert (=> b!845388 (=> res!386433 e!556190)))

(assert (=> b!845388 (= res!386433 (not ((_ is Cons!9098) lt!320193)))))

(declare-fun lt!320221 () List!9114)

(declare-fun d!263201 () Bool)

(declare-fun printWithSeparatorTokenList!21 (LexerInterface!1508 List!9114 Token!3078) List!9113)

(assert (=> d!263201 (= (printList!463 thiss!20117 lt!320221) (printWithSeparatorTokenList!21 thiss!20117 lt!320193 separatorToken!297))))

(assert (=> d!263201 (= lt!320221 e!556188)))

(declare-fun c!137551 () Bool)

(assert (=> d!263201 (= c!137551 ((_ is Cons!9098) lt!320193))))

(assert (=> d!263201 e!556192))

(declare-fun res!386435 () Bool)

(assert (=> d!263201 (=> (not res!386435) (not e!556192))))

(assert (=> d!263201 (= res!386435 (isSeparator!1706 (rule!3129 separatorToken!297)))))

(assert (=> d!263201 (= (withSeparatorTokenList!38 thiss!20117 lt!320193 separatorToken!297) lt!320221)))

(declare-fun b!845389 () Bool)

(assert (=> b!845389 (= e!556189 (= (printList!463 thiss!20117 ($colon$colon!76 (withSeparatorTokenList!38 thiss!20117 (t!94362 lt!320193) separatorToken!297) separatorToken!297)) e!556191))))

(declare-fun c!137553 () Bool)

(assert (=> b!845389 (= c!137553 ((_ is Cons!9098) lt!320218))))

(assert (=> b!845389 (= lt!320218 ($colon$colon!76 (withSeparatorTokenList!38 thiss!20117 (t!94362 lt!320193) separatorToken!297) separatorToken!297))))

(assert (= (and d!263201 res!386435) b!845388))

(assert (= (and b!845388 (not res!386433)) b!845381))

(assert (= (and b!845381 c!137552) b!845387))

(assert (= (and b!845381 (not c!137552)) b!845382))

(assert (= (and b!845388 res!386436) b!845383))

(assert (= (and b!845383 (not res!386434)) b!845389))

(assert (= (and b!845389 c!137553) b!845380))

(assert (= (and b!845389 (not c!137553)) b!845386))

(assert (= (and d!263201 c!137551) b!845384))

(assert (= (and d!263201 (not c!137551)) b!845385))

(declare-fun m!1080437 () Bool)

(assert (=> d!263201 m!1080437))

(declare-fun m!1080439 () Bool)

(assert (=> d!263201 m!1080439))

(declare-fun m!1080441 () Bool)

(assert (=> b!845381 m!1080441))

(assert (=> b!845381 m!1080441))

(declare-fun m!1080443 () Bool)

(assert (=> b!845381 m!1080443))

(assert (=> b!845381 m!1080443))

(declare-fun m!1080445 () Bool)

(assert (=> b!845381 m!1080445))

(assert (=> b!845381 m!1080445))

(declare-fun m!1080447 () Bool)

(assert (=> b!845381 m!1080447))

(declare-fun m!1080449 () Bool)

(assert (=> b!845384 m!1080449))

(assert (=> b!845384 m!1080449))

(declare-fun m!1080451 () Bool)

(assert (=> b!845384 m!1080451))

(declare-fun m!1080453 () Bool)

(assert (=> b!845384 m!1080453))

(assert (=> b!845384 m!1080441))

(assert (=> b!845384 m!1080443))

(declare-fun m!1080455 () Bool)

(assert (=> b!845384 m!1080455))

(assert (=> b!845384 m!1080443))

(assert (=> b!845384 m!1080445))

(declare-fun m!1080457 () Bool)

(assert (=> b!845384 m!1080457))

(assert (=> b!845384 m!1080441))

(declare-fun m!1080459 () Bool)

(assert (=> b!845384 m!1080459))

(declare-fun m!1080461 () Bool)

(assert (=> b!845384 m!1080461))

(declare-fun m!1080463 () Bool)

(assert (=> b!845384 m!1080463))

(assert (=> b!845384 m!1080457))

(declare-fun m!1080465 () Bool)

(assert (=> b!845384 m!1080465))

(assert (=> b!845384 m!1080455))

(declare-fun m!1080467 () Bool)

(assert (=> b!845384 m!1080467))

(assert (=> b!845384 m!1080461))

(assert (=> b!845384 m!1080441))

(declare-fun m!1080469 () Bool)

(assert (=> b!845387 m!1080469))

(assert (=> b!845387 m!1080469))

(declare-fun m!1080471 () Bool)

(assert (=> b!845387 m!1080471))

(declare-fun m!1080473 () Bool)

(assert (=> b!845387 m!1080473))

(assert (=> b!845387 m!1080471))

(assert (=> b!845387 m!1080473))

(declare-fun m!1080475 () Bool)

(assert (=> b!845387 m!1080475))

(assert (=> b!845389 m!1080441))

(assert (=> b!845389 m!1080441))

(assert (=> b!845389 m!1080443))

(assert (=> b!845389 m!1080443))

(declare-fun m!1080477 () Bool)

(assert (=> b!845389 m!1080477))

(declare-fun m!1080479 () Bool)

(assert (=> b!845380 m!1080479))

(assert (=> b!845380 m!1080479))

(declare-fun m!1080481 () Bool)

(assert (=> b!845380 m!1080481))

(declare-fun m!1080483 () Bool)

(assert (=> b!845380 m!1080483))

(assert (=> b!845380 m!1080481))

(assert (=> b!845380 m!1080483))

(declare-fun m!1080485 () Bool)

(assert (=> b!845380 m!1080485))

(assert (=> b!845356 d!263201))

(declare-fun d!263203 () Bool)

(assert (=> d!263203 (= (tail!1024 l!5107) (t!94362 l!5107))))

(assert (=> b!845356 d!263203))

(declare-fun d!263207 () Bool)

(assert (=> d!263207 (= (inv!11571 (tag!1968 (h!14500 rules!2621))) (= (mod (str.len (value!55319 (tag!1968 (h!14500 rules!2621)))) 2) 0))))

(assert (=> b!845345 d!263207))

(declare-fun d!263209 () Bool)

(declare-fun res!386439 () Bool)

(declare-fun e!556196 () Bool)

(assert (=> d!263209 (=> (not res!386439) (not e!556196))))

(declare-fun semiInverseModEq!659 (Int Int) Bool)

(assert (=> d!263209 (= res!386439 (semiInverseModEq!659 (toChars!2590 (transformation!1706 (h!14500 rules!2621))) (toValue!2731 (transformation!1706 (h!14500 rules!2621)))))))

(assert (=> d!263209 (= (inv!11575 (transformation!1706 (h!14500 rules!2621))) e!556196)))

(declare-fun b!845392 () Bool)

(declare-fun equivClasses!626 (Int Int) Bool)

(assert (=> b!845392 (= e!556196 (equivClasses!626 (toChars!2590 (transformation!1706 (h!14500 rules!2621))) (toValue!2731 (transformation!1706 (h!14500 rules!2621)))))))

(assert (= (and d!263209 res!386439) b!845392))

(declare-fun m!1080487 () Bool)

(assert (=> d!263209 m!1080487))

(declare-fun m!1080489 () Bool)

(assert (=> b!845392 m!1080489))

(assert (=> b!845345 d!263209))

(declare-fun d!263211 () Bool)

(assert (=> d!263211 (rulesProduceEachTokenIndividuallyList!396 thiss!20117 rules!2621 (withSeparatorTokenList!38 thiss!20117 lt!320193 separatorToken!297))))

(declare-fun lt!320230 () Unit!13563)

(declare-fun choose!4983 (LexerInterface!1508 List!9115 List!9114 Token!3078) Unit!13563)

(assert (=> d!263211 (= lt!320230 (choose!4983 thiss!20117 rules!2621 lt!320193 separatorToken!297))))

(assert (=> d!263211 (not (isEmpty!5364 rules!2621))))

(assert (=> d!263211 (= (withSeparatorTokenListPreservesRulesProduceTokens!38 thiss!20117 rules!2621 lt!320193 separatorToken!297) lt!320230)))

(declare-fun bs!230392 () Bool)

(assert (= bs!230392 d!263211))

(assert (=> bs!230392 m!1080417))

(assert (=> bs!230392 m!1080417))

(declare-fun m!1080491 () Bool)

(assert (=> bs!230392 m!1080491))

(declare-fun m!1080493 () Bool)

(assert (=> bs!230392 m!1080493))

(assert (=> bs!230392 m!1080425))

(assert (=> b!845354 d!263211))

(declare-fun bs!230394 () Bool)

(declare-fun d!263213 () Bool)

(assert (= bs!230394 (and d!263213 b!845358)))

(declare-fun lambda!25182 () Int)

(assert (=> bs!230394 (not (= lambda!25182 lambda!25176))))

(declare-fun b!845446 () Bool)

(declare-fun e!556238 () Bool)

(assert (=> b!845446 (= e!556238 true)))

(declare-fun b!845445 () Bool)

(declare-fun e!556237 () Bool)

(assert (=> b!845445 (= e!556237 e!556238)))

(declare-fun b!845444 () Bool)

(declare-fun e!556236 () Bool)

(assert (=> b!845444 (= e!556236 e!556237)))

(assert (=> d!263213 e!556236))

(assert (= b!845445 b!845446))

(assert (= b!845444 b!845445))

(assert (= (and d!263213 ((_ is Cons!9099) rules!2621)) b!845444))

(declare-fun order!5801 () Int)

(declare-fun order!5799 () Int)

(declare-fun dynLambda!4213 (Int Int) Int)

(declare-fun dynLambda!4214 (Int Int) Int)

(assert (=> b!845446 (< (dynLambda!4213 order!5799 (toValue!2731 (transformation!1706 (h!14500 rules!2621)))) (dynLambda!4214 order!5801 lambda!25182))))

(declare-fun order!5803 () Int)

(declare-fun dynLambda!4215 (Int Int) Int)

(assert (=> b!845446 (< (dynLambda!4215 order!5803 (toChars!2590 (transformation!1706 (h!14500 rules!2621)))) (dynLambda!4214 order!5801 lambda!25182))))

(assert (=> d!263213 true))

(declare-fun lt!320234 () Bool)

(assert (=> d!263213 (= lt!320234 (forall!2133 lt!320199 lambda!25182))))

(declare-fun e!556228 () Bool)

(assert (=> d!263213 (= lt!320234 e!556228)))

(declare-fun res!386457 () Bool)

(assert (=> d!263213 (=> res!386457 e!556228)))

(assert (=> d!263213 (= res!386457 (not ((_ is Cons!9098) lt!320199)))))

(assert (=> d!263213 (not (isEmpty!5364 rules!2621))))

(assert (=> d!263213 (= (rulesProduceEachTokenIndividuallyList!396 thiss!20117 rules!2621 lt!320199) lt!320234)))

(declare-fun b!845434 () Bool)

(declare-fun e!556229 () Bool)

(assert (=> b!845434 (= e!556228 e!556229)))

(declare-fun res!386456 () Bool)

(assert (=> b!845434 (=> (not res!386456) (not e!556229))))

(assert (=> b!845434 (= res!386456 (rulesProduceIndividualToken!572 thiss!20117 rules!2621 (h!14499 lt!320199)))))

(declare-fun b!845435 () Bool)

(assert (=> b!845435 (= e!556229 (rulesProduceEachTokenIndividuallyList!396 thiss!20117 rules!2621 (t!94362 lt!320199)))))

(assert (= (and d!263213 (not res!386457)) b!845434))

(assert (= (and b!845434 res!386456) b!845435))

(declare-fun m!1080511 () Bool)

(assert (=> d!263213 m!1080511))

(assert (=> d!263213 m!1080425))

(declare-fun m!1080513 () Bool)

(assert (=> b!845434 m!1080513))

(declare-fun m!1080515 () Bool)

(assert (=> b!845435 m!1080515))

(assert (=> b!845354 d!263213))

(declare-fun d!263223 () Bool)

(assert (=> d!263223 (= (isEmpty!5365 (t!94362 (t!94362 lt!320194))) ((_ is Nil!9098) (t!94362 (t!94362 lt!320194))))))

(assert (=> b!845354 d!263223))

(declare-fun b!845479 () Bool)

(declare-fun res!386489 () Bool)

(declare-fun e!556258 () Bool)

(assert (=> b!845479 (=> (not res!386489) (not e!556258))))

(assert (=> b!845479 (= res!386489 (rulesProduceEachTokenIndividuallyList!396 thiss!20117 rules!2621 lt!320193))))

(declare-fun b!845480 () Bool)

(assert (=> b!845480 (= e!556258 (tokensListTwoByTwoPredicateSeparableList!30 thiss!20117 (withSeparatorTokenList!38 thiss!20117 lt!320193 separatorToken!297) rules!2621))))

(declare-fun lt!320250 () Unit!13563)

(declare-fun lt!320249 () Unit!13563)

(assert (=> b!845480 (= lt!320250 lt!320249)))

(assert (=> b!845480 (rulesProduceEachTokenIndividuallyList!396 thiss!20117 rules!2621 (withSeparatorTokenList!38 thiss!20117 lt!320193 separatorToken!297))))

(assert (=> b!845480 (= lt!320249 (withSeparatorTokenListPreservesRulesProduceTokens!38 thiss!20117 rules!2621 lt!320193 separatorToken!297))))

(declare-fun d!263225 () Bool)

(assert (=> d!263225 e!556258))

(declare-fun res!386488 () Bool)

(assert (=> d!263225 (=> (not res!386488) (not e!556258))))

(assert (=> d!263225 (= res!386488 ((_ is Lexer!1506) thiss!20117))))

(declare-fun lt!320248 () Unit!13563)

(declare-fun choose!4984 (LexerInterface!1508 List!9115 List!9114 Token!3078) Unit!13563)

(assert (=> d!263225 (= lt!320248 (choose!4984 thiss!20117 rules!2621 lt!320193 separatorToken!297))))

(assert (=> d!263225 (not (isEmpty!5364 rules!2621))))

(assert (=> d!263225 (= (printWithSeparatorTokenImpliesSeparableTokensList!14 thiss!20117 rules!2621 lt!320193 separatorToken!297) lt!320248)))

(declare-fun b!845481 () Bool)

(declare-fun res!386487 () Bool)

(assert (=> b!845481 (=> (not res!386487) (not e!556258))))

(assert (=> b!845481 (= res!386487 (isSeparator!1706 (rule!3129 separatorToken!297)))))

(declare-fun b!845482 () Bool)

(declare-fun res!386486 () Bool)

(assert (=> b!845482 (=> (not res!386486) (not e!556258))))

(assert (=> b!845482 (= res!386486 (rulesProduceIndividualToken!572 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!845483 () Bool)

(declare-fun res!386485 () Bool)

(assert (=> b!845483 (=> (not res!386485) (not e!556258))))

(assert (=> b!845483 (= res!386485 (rulesInvariant!1384 thiss!20117 rules!2621))))

(assert (= (and d!263225 res!386488) b!845483))

(assert (= (and b!845483 res!386485) b!845479))

(assert (= (and b!845479 res!386489) b!845482))

(assert (= (and b!845482 res!386486) b!845481))

(assert (= (and b!845481 res!386487) b!845480))

(assert (=> b!845480 m!1080417))

(assert (=> b!845480 m!1080417))

(declare-fun m!1080559 () Bool)

(assert (=> b!845480 m!1080559))

(assert (=> b!845480 m!1080417))

(assert (=> b!845480 m!1080491))

(assert (=> b!845480 m!1080381))

(declare-fun m!1080561 () Bool)

(assert (=> d!263225 m!1080561))

(assert (=> d!263225 m!1080425))

(declare-fun m!1080563 () Bool)

(assert (=> b!845479 m!1080563))

(assert (=> b!845483 m!1080431))

(assert (=> b!845482 m!1080423))

(assert (=> b!845354 d!263225))

(declare-fun d!263235 () Bool)

(assert (=> d!263235 (separableTokensPredicate!48 thiss!20117 (h!14499 lt!320194) (h!14499 (t!94362 lt!320194)) rules!2621)))

(declare-fun lt!320253 () Unit!13563)

(declare-fun choose!4985 (LexerInterface!1508 Token!3078 Token!3078 List!9115) Unit!13563)

(assert (=> d!263235 (= lt!320253 (choose!4985 thiss!20117 (h!14499 lt!320194) (h!14499 (t!94362 lt!320194)) rules!2621))))

(assert (=> d!263235 (not (isEmpty!5364 rules!2621))))

(assert (=> d!263235 (= (lemmaTokensOfDifferentKindsAreSeparable!30 thiss!20117 (h!14499 lt!320194) (h!14499 (t!94362 lt!320194)) rules!2621) lt!320253)))

(declare-fun bs!230398 () Bool)

(assert (= bs!230398 d!263235))

(assert (=> bs!230398 m!1080377))

(declare-fun m!1080565 () Bool)

(assert (=> bs!230398 m!1080565))

(assert (=> bs!230398 m!1080425))

(assert (=> b!845354 d!263235))

(declare-fun d!263237 () Bool)

(declare-fun prefixMatchZipperSequence!18 (Regex!2139 BalanceConc!6044) Bool)

(declare-fun rulesRegex!13 (LexerInterface!1508 List!9115) Regex!2139)

(declare-fun ++!2354 (BalanceConc!6044 BalanceConc!6044) BalanceConc!6044)

(declare-fun singletonSeq!518 (C!4848) BalanceConc!6044)

(declare-fun apply!1844 (BalanceConc!6044 Int) C!4848)

(assert (=> d!263237 (= (separableTokensPredicate!48 thiss!20117 (h!14499 lt!320194) (h!14499 (t!94362 lt!320194)) rules!2621) (not (prefixMatchZipperSequence!18 (rulesRegex!13 thiss!20117 rules!2621) (++!2354 (charsOf!980 (h!14499 lt!320194)) (singletonSeq!518 (apply!1844 (charsOf!980 (h!14499 (t!94362 lt!320194))) 0))))))))

(declare-fun bs!230399 () Bool)

(assert (= bs!230399 d!263237))

(declare-fun m!1080575 () Bool)

(assert (=> bs!230399 m!1080575))

(declare-fun m!1080577 () Bool)

(assert (=> bs!230399 m!1080577))

(declare-fun m!1080579 () Bool)

(assert (=> bs!230399 m!1080579))

(declare-fun m!1080581 () Bool)

(assert (=> bs!230399 m!1080581))

(declare-fun m!1080583 () Bool)

(assert (=> bs!230399 m!1080583))

(declare-fun m!1080585 () Bool)

(assert (=> bs!230399 m!1080585))

(assert (=> bs!230399 m!1080583))

(declare-fun m!1080587 () Bool)

(assert (=> bs!230399 m!1080587))

(assert (=> bs!230399 m!1080577))

(assert (=> bs!230399 m!1080581))

(assert (=> bs!230399 m!1080579))

(assert (=> bs!230399 m!1080585))

(assert (=> bs!230399 m!1080575))

(assert (=> b!845354 d!263237))

(declare-fun d!263243 () Bool)

(assert (=> d!263243 (= (inv!11571 (tag!1968 (rule!3129 separatorToken!297))) (= (mod (str.len (value!55319 (tag!1968 (rule!3129 separatorToken!297)))) 2) 0))))

(assert (=> b!845343 d!263243))

(declare-fun d!263245 () Bool)

(declare-fun res!386505 () Bool)

(declare-fun e!556262 () Bool)

(assert (=> d!263245 (=> (not res!386505) (not e!556262))))

(assert (=> d!263245 (= res!386505 (semiInverseModEq!659 (toChars!2590 (transformation!1706 (rule!3129 separatorToken!297))) (toValue!2731 (transformation!1706 (rule!3129 separatorToken!297)))))))

(assert (=> d!263245 (= (inv!11575 (transformation!1706 (rule!3129 separatorToken!297))) e!556262)))

(declare-fun b!845499 () Bool)

(assert (=> b!845499 (= e!556262 (equivClasses!626 (toChars!2590 (transformation!1706 (rule!3129 separatorToken!297))) (toValue!2731 (transformation!1706 (rule!3129 separatorToken!297)))))))

(assert (= (and d!263245 res!386505) b!845499))

(declare-fun m!1080589 () Bool)

(assert (=> d!263245 m!1080589))

(declare-fun m!1080591 () Bool)

(assert (=> b!845499 m!1080591))

(assert (=> b!845343 d!263245))

(declare-fun d!263247 () Bool)

(assert (=> d!263247 (= (isEmpty!5364 rules!2621) ((_ is Nil!9099) rules!2621))))

(assert (=> b!845344 d!263247))

(declare-fun d!263249 () Bool)

(declare-fun res!386508 () Bool)

(declare-fun e!556265 () Bool)

(assert (=> d!263249 (=> (not res!386508) (not e!556265))))

(declare-fun rulesValid!590 (LexerInterface!1508 List!9115) Bool)

(assert (=> d!263249 (= res!386508 (rulesValid!590 thiss!20117 rules!2621))))

(assert (=> d!263249 (= (rulesInvariant!1384 thiss!20117 rules!2621) e!556265)))

(declare-fun b!845502 () Bool)

(declare-datatypes ((List!9116 0))(
  ( (Nil!9100) (Cons!9100 (h!14501 String!10758) (t!94410 List!9116)) )
))
(declare-fun noDuplicateTag!590 (LexerInterface!1508 List!9115 List!9116) Bool)

(assert (=> b!845502 (= e!556265 (noDuplicateTag!590 thiss!20117 rules!2621 Nil!9100))))

(assert (= (and d!263249 res!386508) b!845502))

(declare-fun m!1080593 () Bool)

(assert (=> d!263249 m!1080593))

(declare-fun m!1080595 () Bool)

(assert (=> b!845502 m!1080595))

(assert (=> b!845342 d!263249))

(declare-fun bs!230400 () Bool)

(declare-fun d!263251 () Bool)

(assert (= bs!230400 (and d!263251 b!845358)))

(declare-fun lambda!25184 () Int)

(assert (=> bs!230400 (not (= lambda!25184 lambda!25176))))

(declare-fun bs!230401 () Bool)

(assert (= bs!230401 (and d!263251 d!263213)))

(assert (=> bs!230401 (= lambda!25184 lambda!25182)))

(declare-fun b!845507 () Bool)

(declare-fun e!556270 () Bool)

(assert (=> b!845507 (= e!556270 true)))

(declare-fun b!845506 () Bool)

(declare-fun e!556269 () Bool)

(assert (=> b!845506 (= e!556269 e!556270)))

(declare-fun b!845505 () Bool)

(declare-fun e!556268 () Bool)

(assert (=> b!845505 (= e!556268 e!556269)))

(assert (=> d!263251 e!556268))

(assert (= b!845506 b!845507))

(assert (= b!845505 b!845506))

(assert (= (and d!263251 ((_ is Cons!9099) rules!2621)) b!845505))

(assert (=> b!845507 (< (dynLambda!4213 order!5799 (toValue!2731 (transformation!1706 (h!14500 rules!2621)))) (dynLambda!4214 order!5801 lambda!25184))))

(assert (=> b!845507 (< (dynLambda!4215 order!5803 (toChars!2590 (transformation!1706 (h!14500 rules!2621)))) (dynLambda!4214 order!5801 lambda!25184))))

(assert (=> d!263251 true))

(declare-fun lt!320263 () Bool)

(assert (=> d!263251 (= lt!320263 (forall!2133 l!5107 lambda!25184))))

(declare-fun e!556266 () Bool)

(assert (=> d!263251 (= lt!320263 e!556266)))

(declare-fun res!386510 () Bool)

(assert (=> d!263251 (=> res!386510 e!556266)))

(assert (=> d!263251 (= res!386510 (not ((_ is Cons!9098) l!5107)))))

(assert (=> d!263251 (not (isEmpty!5364 rules!2621))))

(assert (=> d!263251 (= (rulesProduceEachTokenIndividuallyList!396 thiss!20117 rules!2621 l!5107) lt!320263)))

(declare-fun b!845503 () Bool)

(declare-fun e!556267 () Bool)

(assert (=> b!845503 (= e!556266 e!556267)))

(declare-fun res!386509 () Bool)

(assert (=> b!845503 (=> (not res!386509) (not e!556267))))

(assert (=> b!845503 (= res!386509 (rulesProduceIndividualToken!572 thiss!20117 rules!2621 (h!14499 l!5107)))))

(declare-fun b!845504 () Bool)

(assert (=> b!845504 (= e!556267 (rulesProduceEachTokenIndividuallyList!396 thiss!20117 rules!2621 (t!94362 l!5107)))))

(assert (= (and d!263251 (not res!386510)) b!845503))

(assert (= (and b!845503 res!386509) b!845504))

(declare-fun m!1080597 () Bool)

(assert (=> d!263251 m!1080597))

(assert (=> d!263251 m!1080425))

(declare-fun m!1080599 () Bool)

(assert (=> b!845503 m!1080599))

(declare-fun m!1080601 () Bool)

(assert (=> b!845504 m!1080601))

(assert (=> b!845353 d!263251))

(declare-fun d!263253 () Bool)

(declare-fun res!386515 () Bool)

(declare-fun e!556275 () Bool)

(assert (=> d!263253 (=> res!386515 e!556275)))

(assert (=> d!263253 (= res!386515 (not ((_ is Cons!9099) rules!2621)))))

(assert (=> d!263253 (= (sepAndNonSepRulesDisjointChars!506 rules!2621 rules!2621) e!556275)))

(declare-fun b!845512 () Bool)

(declare-fun e!556276 () Bool)

(assert (=> b!845512 (= e!556275 e!556276)))

(declare-fun res!386516 () Bool)

(assert (=> b!845512 (=> (not res!386516) (not e!556276))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!227 (Rule!3212 List!9115) Bool)

(assert (=> b!845512 (= res!386516 (ruleDisjointCharsFromAllFromOtherType!227 (h!14500 rules!2621) rules!2621))))

(declare-fun b!845513 () Bool)

(assert (=> b!845513 (= e!556276 (sepAndNonSepRulesDisjointChars!506 rules!2621 (t!94363 rules!2621)))))

(assert (= (and d!263253 (not res!386515)) b!845512))

(assert (= (and b!845512 res!386516) b!845513))

(declare-fun m!1080603 () Bool)

(assert (=> b!845512 m!1080603))

(declare-fun m!1080605 () Bool)

(assert (=> b!845513 m!1080605))

(assert (=> b!845351 d!263253))

(declare-fun d!263255 () Bool)

(declare-fun res!386527 () Bool)

(declare-fun e!556287 () Bool)

(assert (=> d!263255 (=> res!386527 e!556287)))

(assert (=> d!263255 (= res!386527 (or (not ((_ is Cons!9098) lt!320199)) (not ((_ is Cons!9098) (t!94362 lt!320199)))))))

(assert (=> d!263255 (= (tokensListTwoByTwoPredicateSeparableList!30 thiss!20117 lt!320199 rules!2621) e!556287)))

(declare-fun b!845524 () Bool)

(declare-fun e!556288 () Bool)

(assert (=> b!845524 (= e!556287 e!556288)))

(declare-fun res!386528 () Bool)

(assert (=> b!845524 (=> (not res!386528) (not e!556288))))

(assert (=> b!845524 (= res!386528 (separableTokensPredicate!48 thiss!20117 (h!14499 lt!320199) (h!14499 (t!94362 lt!320199)) rules!2621))))

(declare-fun lt!320287 () Unit!13563)

(declare-fun Unit!13565 () Unit!13563)

(assert (=> b!845524 (= lt!320287 Unit!13565)))

(declare-fun size!7589 (BalanceConc!6044) Int)

(assert (=> b!845524 (> (size!7589 (charsOf!980 (h!14499 (t!94362 lt!320199)))) 0)))

(declare-fun lt!320290 () Unit!13563)

(declare-fun Unit!13566 () Unit!13563)

(assert (=> b!845524 (= lt!320290 Unit!13566)))

(assert (=> b!845524 (rulesProduceIndividualToken!572 thiss!20117 rules!2621 (h!14499 (t!94362 lt!320199)))))

(declare-fun lt!320284 () Unit!13563)

(declare-fun Unit!13567 () Unit!13563)

(assert (=> b!845524 (= lt!320284 Unit!13567)))

(assert (=> b!845524 (rulesProduceIndividualToken!572 thiss!20117 rules!2621 (h!14499 lt!320199))))

(declare-fun lt!320288 () Unit!13563)

(declare-fun lt!320285 () Unit!13563)

(assert (=> b!845524 (= lt!320288 lt!320285)))

(assert (=> b!845524 (rulesProduceIndividualToken!572 thiss!20117 rules!2621 (h!14499 (t!94362 lt!320199)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!221 (LexerInterface!1508 List!9115 List!9114 Token!3078) Unit!13563)

(assert (=> b!845524 (= lt!320285 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!221 thiss!20117 rules!2621 lt!320199 (h!14499 (t!94362 lt!320199))))))

(declare-fun lt!320286 () Unit!13563)

(declare-fun lt!320289 () Unit!13563)

(assert (=> b!845524 (= lt!320286 lt!320289)))

(assert (=> b!845524 (rulesProduceIndividualToken!572 thiss!20117 rules!2621 (h!14499 lt!320199))))

(assert (=> b!845524 (= lt!320289 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!221 thiss!20117 rules!2621 lt!320199 (h!14499 lt!320199)))))

(declare-fun b!845525 () Bool)

(assert (=> b!845525 (= e!556288 (tokensListTwoByTwoPredicateSeparableList!30 thiss!20117 (Cons!9098 (h!14499 (t!94362 lt!320199)) (t!94362 (t!94362 lt!320199))) rules!2621))))

(assert (= (and d!263255 (not res!386527)) b!845524))

(assert (= (and b!845524 res!386528) b!845525))

(declare-fun m!1080615 () Bool)

(assert (=> b!845524 m!1080615))

(assert (=> b!845524 m!1080513))

(declare-fun m!1080617 () Bool)

(assert (=> b!845524 m!1080617))

(declare-fun m!1080619 () Bool)

(assert (=> b!845524 m!1080619))

(declare-fun m!1080621 () Bool)

(assert (=> b!845524 m!1080621))

(assert (=> b!845524 m!1080617))

(declare-fun m!1080623 () Bool)

(assert (=> b!845524 m!1080623))

(declare-fun m!1080625 () Bool)

(assert (=> b!845524 m!1080625))

(declare-fun m!1080627 () Bool)

(assert (=> b!845525 m!1080627))

(assert (=> b!845341 d!263255))

(declare-fun b!845537 () Bool)

(declare-fun e!556295 () Bool)

(declare-fun e!556296 () Bool)

(assert (=> b!845537 (= e!556295 e!556296)))

(declare-fun c!137565 () Bool)

(assert (=> b!845537 (= c!137565 ((_ is IntegerValue!5317) (value!55320 separatorToken!297)))))

(declare-fun b!845538 () Bool)

(declare-fun e!556297 () Bool)

(declare-fun inv!15 (TokenValue!1772) Bool)

(assert (=> b!845538 (= e!556297 (inv!15 (value!55320 separatorToken!297)))))

(declare-fun b!845539 () Bool)

(declare-fun inv!17 (TokenValue!1772) Bool)

(assert (=> b!845539 (= e!556296 (inv!17 (value!55320 separatorToken!297)))))

(declare-fun b!845540 () Bool)

(declare-fun inv!16 (TokenValue!1772) Bool)

(assert (=> b!845540 (= e!556295 (inv!16 (value!55320 separatorToken!297)))))

(declare-fun b!845536 () Bool)

(declare-fun res!386531 () Bool)

(assert (=> b!845536 (=> res!386531 e!556297)))

(assert (=> b!845536 (= res!386531 (not ((_ is IntegerValue!5318) (value!55320 separatorToken!297))))))

(assert (=> b!845536 (= e!556296 e!556297)))

(declare-fun d!263263 () Bool)

(declare-fun c!137564 () Bool)

(assert (=> d!263263 (= c!137564 ((_ is IntegerValue!5316) (value!55320 separatorToken!297)))))

(assert (=> d!263263 (= (inv!21 (value!55320 separatorToken!297)) e!556295)))

(assert (= (and d!263263 c!137564) b!845540))

(assert (= (and d!263263 (not c!137564)) b!845537))

(assert (= (and b!845537 c!137565) b!845539))

(assert (= (and b!845537 (not c!137565)) b!845536))

(assert (= (and b!845536 (not res!386531)) b!845538))

(declare-fun m!1080629 () Bool)

(assert (=> b!845538 m!1080629))

(declare-fun m!1080631 () Bool)

(assert (=> b!845539 m!1080631))

(declare-fun m!1080633 () Bool)

(assert (=> b!845540 m!1080633))

(assert (=> b!845339 d!263263))

(declare-fun d!263265 () Bool)

(assert (=> d!263265 (= (inv!11571 (tag!1968 (rule!3129 (h!14499 l!5107)))) (= (mod (str.len (value!55319 (tag!1968 (rule!3129 (h!14499 l!5107))))) 2) 0))))

(assert (=> b!845340 d!263265))

(declare-fun d!263267 () Bool)

(declare-fun res!386532 () Bool)

(declare-fun e!556298 () Bool)

(assert (=> d!263267 (=> (not res!386532) (not e!556298))))

(assert (=> d!263267 (= res!386532 (semiInverseModEq!659 (toChars!2590 (transformation!1706 (rule!3129 (h!14499 l!5107)))) (toValue!2731 (transformation!1706 (rule!3129 (h!14499 l!5107))))))))

(assert (=> d!263267 (= (inv!11575 (transformation!1706 (rule!3129 (h!14499 l!5107)))) e!556298)))

(declare-fun b!845541 () Bool)

(assert (=> b!845541 (= e!556298 (equivClasses!626 (toChars!2590 (transformation!1706 (rule!3129 (h!14499 l!5107)))) (toValue!2731 (transformation!1706 (rule!3129 (h!14499 l!5107))))))))

(assert (= (and d!263267 res!386532) b!845541))

(declare-fun m!1080635 () Bool)

(assert (=> d!263267 m!1080635))

(declare-fun m!1080637 () Bool)

(assert (=> b!845541 m!1080637))

(assert (=> b!845340 d!263267))

(declare-fun d!263269 () Bool)

(declare-fun res!386537 () Bool)

(declare-fun e!556301 () Bool)

(assert (=> d!263269 (=> (not res!386537) (not e!556301))))

(declare-fun isEmpty!5367 (List!9113) Bool)

(assert (=> d!263269 (= res!386537 (not (isEmpty!5367 (originalCharacters!2262 (h!14499 l!5107)))))))

(assert (=> d!263269 (= (inv!11574 (h!14499 l!5107)) e!556301)))

(declare-fun b!845546 () Bool)

(declare-fun res!386538 () Bool)

(assert (=> b!845546 (=> (not res!386538) (not e!556301))))

(declare-fun dynLambda!4216 (Int TokenValue!1772) BalanceConc!6044)

(assert (=> b!845546 (= res!386538 (= (originalCharacters!2262 (h!14499 l!5107)) (list!3571 (dynLambda!4216 (toChars!2590 (transformation!1706 (rule!3129 (h!14499 l!5107)))) (value!55320 (h!14499 l!5107))))))))

(declare-fun b!845547 () Bool)

(declare-fun size!7590 (List!9113) Int)

(assert (=> b!845547 (= e!556301 (= (size!7587 (h!14499 l!5107)) (size!7590 (originalCharacters!2262 (h!14499 l!5107)))))))

(assert (= (and d!263269 res!386537) b!845546))

(assert (= (and b!845546 res!386538) b!845547))

(declare-fun b_lambda!27945 () Bool)

(assert (=> (not b_lambda!27945) (not b!845546)))

(declare-fun t!94370 () Bool)

(declare-fun tb!58689 () Bool)

(assert (=> (and b!845350 (= (toChars!2590 (transformation!1706 (rule!3129 separatorToken!297))) (toChars!2590 (transformation!1706 (rule!3129 (h!14499 l!5107))))) t!94370) tb!58689))

(declare-fun b!845552 () Bool)

(declare-fun e!556304 () Bool)

(declare-fun tp!266079 () Bool)

(declare-fun inv!11576 (Conc!3015) Bool)

(assert (=> b!845552 (= e!556304 (and (inv!11576 (c!137544 (dynLambda!4216 (toChars!2590 (transformation!1706 (rule!3129 (h!14499 l!5107)))) (value!55320 (h!14499 l!5107))))) tp!266079))))

(declare-fun result!68038 () Bool)

(declare-fun inv!11577 (BalanceConc!6044) Bool)

(assert (=> tb!58689 (= result!68038 (and (inv!11577 (dynLambda!4216 (toChars!2590 (transformation!1706 (rule!3129 (h!14499 l!5107)))) (value!55320 (h!14499 l!5107)))) e!556304))))

(assert (= tb!58689 b!845552))

(declare-fun m!1080639 () Bool)

(assert (=> b!845552 m!1080639))

(declare-fun m!1080641 () Bool)

(assert (=> tb!58689 m!1080641))

(assert (=> b!845546 t!94370))

(declare-fun b_and!73521 () Bool)

(assert (= b_and!73511 (and (=> t!94370 result!68038) b_and!73521)))

(declare-fun tb!58691 () Bool)

(declare-fun t!94372 () Bool)

(assert (=> (and b!845346 (= (toChars!2590 (transformation!1706 (h!14500 rules!2621))) (toChars!2590 (transformation!1706 (rule!3129 (h!14499 l!5107))))) t!94372) tb!58691))

(declare-fun result!68042 () Bool)

(assert (= result!68042 result!68038))

(assert (=> b!845546 t!94372))

(declare-fun b_and!73523 () Bool)

(assert (= b_and!73515 (and (=> t!94372 result!68042) b_and!73523)))

(declare-fun t!94374 () Bool)

(declare-fun tb!58693 () Bool)

(assert (=> (and b!845352 (= (toChars!2590 (transformation!1706 (rule!3129 (h!14499 l!5107)))) (toChars!2590 (transformation!1706 (rule!3129 (h!14499 l!5107))))) t!94374) tb!58693))

(declare-fun result!68044 () Bool)

(assert (= result!68044 result!68038))

(assert (=> b!845546 t!94374))

(declare-fun b_and!73525 () Bool)

(assert (= b_and!73519 (and (=> t!94374 result!68044) b_and!73525)))

(declare-fun m!1080643 () Bool)

(assert (=> d!263269 m!1080643))

(declare-fun m!1080645 () Bool)

(assert (=> b!845546 m!1080645))

(assert (=> b!845546 m!1080645))

(declare-fun m!1080647 () Bool)

(assert (=> b!845546 m!1080647))

(declare-fun m!1080649 () Bool)

(assert (=> b!845547 m!1080649))

(assert (=> b!845338 d!263269))

(declare-fun b!845554 () Bool)

(declare-fun e!556305 () Bool)

(declare-fun e!556306 () Bool)

(assert (=> b!845554 (= e!556305 e!556306)))

(declare-fun c!137567 () Bool)

(assert (=> b!845554 (= c!137567 ((_ is IntegerValue!5317) (value!55320 (h!14499 l!5107))))))

(declare-fun b!845555 () Bool)

(declare-fun e!556307 () Bool)

(assert (=> b!845555 (= e!556307 (inv!15 (value!55320 (h!14499 l!5107))))))

(declare-fun b!845556 () Bool)

(assert (=> b!845556 (= e!556306 (inv!17 (value!55320 (h!14499 l!5107))))))

(declare-fun b!845557 () Bool)

(assert (=> b!845557 (= e!556305 (inv!16 (value!55320 (h!14499 l!5107))))))

(declare-fun b!845553 () Bool)

(declare-fun res!386539 () Bool)

(assert (=> b!845553 (=> res!386539 e!556307)))

(assert (=> b!845553 (= res!386539 (not ((_ is IntegerValue!5318) (value!55320 (h!14499 l!5107)))))))

(assert (=> b!845553 (= e!556306 e!556307)))

(declare-fun d!263271 () Bool)

(declare-fun c!137566 () Bool)

(assert (=> d!263271 (= c!137566 ((_ is IntegerValue!5316) (value!55320 (h!14499 l!5107))))))

(assert (=> d!263271 (= (inv!21 (value!55320 (h!14499 l!5107))) e!556305)))

(assert (= (and d!263271 c!137566) b!845557))

(assert (= (and d!263271 (not c!137566)) b!845554))

(assert (= (and b!845554 c!137567) b!845556))

(assert (= (and b!845554 (not c!137567)) b!845553))

(assert (= (and b!845553 (not res!386539)) b!845555))

(declare-fun m!1080651 () Bool)

(assert (=> b!845555 m!1080651))

(declare-fun m!1080653 () Bool)

(assert (=> b!845556 m!1080653))

(declare-fun m!1080655 () Bool)

(assert (=> b!845557 m!1080655))

(assert (=> b!845359 d!263271))

(declare-fun bs!230404 () Bool)

(declare-fun d!263273 () Bool)

(assert (= bs!230404 (and d!263273 b!845358)))

(declare-fun lambda!25185 () Int)

(assert (=> bs!230404 (not (= lambda!25185 lambda!25176))))

(declare-fun bs!230405 () Bool)

(assert (= bs!230405 (and d!263273 d!263213)))

(assert (=> bs!230405 (= lambda!25185 lambda!25182)))

(declare-fun bs!230406 () Bool)

(assert (= bs!230406 (and d!263273 d!263251)))

(assert (=> bs!230406 (= lambda!25185 lambda!25184)))

(declare-fun b!845562 () Bool)

(declare-fun e!556312 () Bool)

(assert (=> b!845562 (= e!556312 true)))

(declare-fun b!845561 () Bool)

(declare-fun e!556311 () Bool)

(assert (=> b!845561 (= e!556311 e!556312)))

(declare-fun b!845560 () Bool)

(declare-fun e!556310 () Bool)

(assert (=> b!845560 (= e!556310 e!556311)))

(assert (=> d!263273 e!556310))

(assert (= b!845561 b!845562))

(assert (= b!845560 b!845561))

(assert (= (and d!263273 ((_ is Cons!9099) rules!2621)) b!845560))

(assert (=> b!845562 (< (dynLambda!4213 order!5799 (toValue!2731 (transformation!1706 (h!14500 rules!2621)))) (dynLambda!4214 order!5801 lambda!25185))))

(assert (=> b!845562 (< (dynLambda!4215 order!5803 (toChars!2590 (transformation!1706 (h!14500 rules!2621)))) (dynLambda!4214 order!5801 lambda!25185))))

(assert (=> d!263273 true))

(declare-fun lt!320291 () Bool)

(assert (=> d!263273 (= lt!320291 (forall!2133 lt!320194 lambda!25185))))

(declare-fun e!556308 () Bool)

(assert (=> d!263273 (= lt!320291 e!556308)))

(declare-fun res!386541 () Bool)

(assert (=> d!263273 (=> res!386541 e!556308)))

(assert (=> d!263273 (= res!386541 (not ((_ is Cons!9098) lt!320194)))))

(assert (=> d!263273 (not (isEmpty!5364 rules!2621))))

(assert (=> d!263273 (= (rulesProduceEachTokenIndividuallyList!396 thiss!20117 rules!2621 lt!320194) lt!320291)))

(declare-fun b!845558 () Bool)

(declare-fun e!556309 () Bool)

(assert (=> b!845558 (= e!556308 e!556309)))

(declare-fun res!386540 () Bool)

(assert (=> b!845558 (=> (not res!386540) (not e!556309))))

(assert (=> b!845558 (= res!386540 (rulesProduceIndividualToken!572 thiss!20117 rules!2621 (h!14499 lt!320194)))))

(declare-fun b!845559 () Bool)

(assert (=> b!845559 (= e!556309 (rulesProduceEachTokenIndividuallyList!396 thiss!20117 rules!2621 (t!94362 lt!320194)))))

(assert (= (and d!263273 (not res!386541)) b!845558))

(assert (= (and b!845558 res!386540) b!845559))

(declare-fun m!1080657 () Bool)

(assert (=> d!263273 m!1080657))

(assert (=> d!263273 m!1080425))

(declare-fun m!1080659 () Bool)

(assert (=> b!845558 m!1080659))

(declare-fun m!1080661 () Bool)

(assert (=> b!845559 m!1080661))

(assert (=> b!845349 d!263273))

(declare-fun b!845563 () Bool)

(declare-fun e!556316 () List!9113)

(declare-fun lt!320292 () List!9114)

(assert (=> b!845563 (= e!556316 (++!2353 (list!3571 (charsOf!980 (h!14499 lt!320292))) (printList!463 thiss!20117 (t!94362 lt!320292))))))

(declare-fun b!845564 () Bool)

(declare-fun e!556315 () Bool)

(declare-fun e!556318 () List!9113)

(assert (=> b!845564 (= e!556315 (= (printList!463 thiss!20117 ($colon$colon!76 ($colon$colon!76 (withSeparatorTokenList!38 thiss!20117 (t!94362 l!5107) separatorToken!297) separatorToken!297) (h!14499 l!5107))) e!556318))))

(declare-fun c!137569 () Bool)

(declare-fun lt!320294 () List!9114)

(assert (=> b!845564 (= c!137569 ((_ is Cons!9098) lt!320294))))

(assert (=> b!845564 (= lt!320294 ($colon$colon!76 ($colon$colon!76 (withSeparatorTokenList!38 thiss!20117 (t!94362 l!5107) separatorToken!297) separatorToken!297) (h!14499 l!5107)))))

(declare-fun b!845565 () Bool)

(assert (=> b!845565 (= e!556318 Nil!9097)))

(declare-fun b!845566 () Bool)

(declare-fun e!556317 () Bool)

(declare-fun e!556314 () Bool)

(assert (=> b!845566 (= e!556317 e!556314)))

(declare-fun res!386543 () Bool)

(assert (=> b!845566 (=> res!386543 e!556314)))

(assert (=> b!845566 (= res!386543 (not ((_ is Cons!9098) l!5107)))))

(declare-fun e!556313 () List!9114)

(declare-fun b!845567 () Bool)

(assert (=> b!845567 (= e!556313 ($colon$colon!76 ($colon$colon!76 (withSeparatorTokenList!38 thiss!20117 (t!94362 l!5107) separatorToken!297) separatorToken!297) (h!14499 l!5107)))))

(declare-fun lt!320299 () List!9113)

(assert (=> b!845567 (= lt!320299 (list!3571 (charsOf!980 (h!14499 l!5107))))))

(declare-fun lt!320298 () List!9113)

(assert (=> b!845567 (= lt!320298 (list!3571 (charsOf!980 separatorToken!297)))))

(declare-fun lt!320296 () List!9113)

(assert (=> b!845567 (= lt!320296 (printList!463 thiss!20117 (withSeparatorTokenList!38 thiss!20117 (t!94362 l!5107) separatorToken!297)))))

(declare-fun lt!320297 () Unit!13563)

(assert (=> b!845567 (= lt!320297 (lemmaConcatAssociativity!738 lt!320299 lt!320298 lt!320296))))

(assert (=> b!845567 (= (++!2353 (++!2353 lt!320299 lt!320298) lt!320296) (++!2353 lt!320299 (++!2353 lt!320298 lt!320296)))))

(declare-fun lt!320293 () Unit!13563)

(assert (=> b!845567 (= lt!320293 lt!320297)))

(declare-fun b!845568 () Bool)

(assert (=> b!845568 (= e!556313 Nil!9098)))

(declare-fun b!845569 () Bool)

(assert (=> b!845569 (= e!556316 Nil!9097)))

(declare-fun b!845570 () Bool)

(assert (=> b!845570 (= e!556318 (++!2353 (list!3571 (charsOf!980 (h!14499 lt!320294))) (printList!463 thiss!20117 (t!94362 lt!320294))))))

(declare-fun b!845571 () Bool)

(declare-fun res!386545 () Bool)

(assert (=> b!845571 (=> (not res!386545) (not e!556317))))

(assert (=> b!845571 (= res!386545 e!556315)))

(declare-fun res!386542 () Bool)

(assert (=> b!845571 (=> res!386542 e!556315)))

(assert (=> b!845571 (= res!386542 (not ((_ is Cons!9098) l!5107)))))

(declare-fun d!263275 () Bool)

(declare-fun lt!320295 () List!9114)

(assert (=> d!263275 (= (printList!463 thiss!20117 lt!320295) (printWithSeparatorTokenList!21 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!263275 (= lt!320295 e!556313)))

(declare-fun c!137568 () Bool)

(assert (=> d!263275 (= c!137568 ((_ is Cons!9098) l!5107))))

(assert (=> d!263275 e!556317))

(declare-fun res!386544 () Bool)

(assert (=> d!263275 (=> (not res!386544) (not e!556317))))

(assert (=> d!263275 (= res!386544 (isSeparator!1706 (rule!3129 separatorToken!297)))))

(assert (=> d!263275 (= (withSeparatorTokenList!38 thiss!20117 l!5107 separatorToken!297) lt!320295)))

(declare-fun b!845572 () Bool)

(assert (=> b!845572 (= e!556314 (= (printList!463 thiss!20117 ($colon$colon!76 (withSeparatorTokenList!38 thiss!20117 (t!94362 l!5107) separatorToken!297) separatorToken!297)) e!556316))))

(declare-fun c!137570 () Bool)

(assert (=> b!845572 (= c!137570 ((_ is Cons!9098) lt!320292))))

(assert (=> b!845572 (= lt!320292 ($colon$colon!76 (withSeparatorTokenList!38 thiss!20117 (t!94362 l!5107) separatorToken!297) separatorToken!297))))

(assert (= (and d!263275 res!386544) b!845571))

(assert (= (and b!845571 (not res!386542)) b!845564))

(assert (= (and b!845564 c!137569) b!845570))

(assert (= (and b!845564 (not c!137569)) b!845565))

(assert (= (and b!845571 res!386545) b!845566))

(assert (= (and b!845566 (not res!386543)) b!845572))

(assert (= (and b!845572 c!137570) b!845563))

(assert (= (and b!845572 (not c!137570)) b!845569))

(assert (= (and d!263275 c!137568) b!845567))

(assert (= (and d!263275 (not c!137568)) b!845568))

(declare-fun m!1080663 () Bool)

(assert (=> d!263275 m!1080663))

(declare-fun m!1080665 () Bool)

(assert (=> d!263275 m!1080665))

(declare-fun m!1080667 () Bool)

(assert (=> b!845564 m!1080667))

(assert (=> b!845564 m!1080667))

(declare-fun m!1080669 () Bool)

(assert (=> b!845564 m!1080669))

(assert (=> b!845564 m!1080669))

(declare-fun m!1080671 () Bool)

(assert (=> b!845564 m!1080671))

(assert (=> b!845564 m!1080671))

(declare-fun m!1080673 () Bool)

(assert (=> b!845564 m!1080673))

(declare-fun m!1080675 () Bool)

(assert (=> b!845567 m!1080675))

(assert (=> b!845567 m!1080675))

(declare-fun m!1080677 () Bool)

(assert (=> b!845567 m!1080677))

(declare-fun m!1080679 () Bool)

(assert (=> b!845567 m!1080679))

(assert (=> b!845567 m!1080667))

(assert (=> b!845567 m!1080669))

(declare-fun m!1080681 () Bool)

(assert (=> b!845567 m!1080681))

(assert (=> b!845567 m!1080669))

(assert (=> b!845567 m!1080671))

(assert (=> b!845567 m!1080457))

(assert (=> b!845567 m!1080667))

(declare-fun m!1080683 () Bool)

(assert (=> b!845567 m!1080683))

(declare-fun m!1080685 () Bool)

(assert (=> b!845567 m!1080685))

(declare-fun m!1080687 () Bool)

(assert (=> b!845567 m!1080687))

(assert (=> b!845567 m!1080457))

(assert (=> b!845567 m!1080465))

(assert (=> b!845567 m!1080681))

(declare-fun m!1080689 () Bool)

(assert (=> b!845567 m!1080689))

(assert (=> b!845567 m!1080685))

(assert (=> b!845567 m!1080667))

(declare-fun m!1080691 () Bool)

(assert (=> b!845570 m!1080691))

(assert (=> b!845570 m!1080691))

(declare-fun m!1080693 () Bool)

(assert (=> b!845570 m!1080693))

(declare-fun m!1080695 () Bool)

(assert (=> b!845570 m!1080695))

(assert (=> b!845570 m!1080693))

(assert (=> b!845570 m!1080695))

(declare-fun m!1080697 () Bool)

(assert (=> b!845570 m!1080697))

(assert (=> b!845572 m!1080667))

(assert (=> b!845572 m!1080667))

(assert (=> b!845572 m!1080669))

(assert (=> b!845572 m!1080669))

(declare-fun m!1080699 () Bool)

(assert (=> b!845572 m!1080699))

(declare-fun m!1080701 () Bool)

(assert (=> b!845563 m!1080701))

(assert (=> b!845563 m!1080701))

(declare-fun m!1080703 () Bool)

(assert (=> b!845563 m!1080703))

(declare-fun m!1080705 () Bool)

(assert (=> b!845563 m!1080705))

(assert (=> b!845563 m!1080703))

(assert (=> b!845563 m!1080705))

(declare-fun m!1080707 () Bool)

(assert (=> b!845563 m!1080707))

(assert (=> b!845349 d!263275))

(declare-fun d!263277 () Bool)

(assert (=> d!263277 (rulesProduceEachTokenIndividuallyList!396 thiss!20117 rules!2621 (withSeparatorTokenList!38 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!320300 () Unit!13563)

(assert (=> d!263277 (= lt!320300 (choose!4983 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!263277 (not (isEmpty!5364 rules!2621))))

(assert (=> d!263277 (= (withSeparatorTokenListPreservesRulesProduceTokens!38 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!320300)))

(declare-fun bs!230407 () Bool)

(assert (= bs!230407 d!263277))

(assert (=> bs!230407 m!1080401))

(assert (=> bs!230407 m!1080401))

(declare-fun m!1080709 () Bool)

(assert (=> bs!230407 m!1080709))

(declare-fun m!1080711 () Bool)

(assert (=> bs!230407 m!1080711))

(assert (=> bs!230407 m!1080425))

(assert (=> b!845349 d!263277))

(declare-fun d!263279 () Bool)

(declare-fun res!386558 () Bool)

(declare-fun e!556335 () Bool)

(assert (=> d!263279 (=> res!386558 e!556335)))

(assert (=> d!263279 (= res!386558 ((_ is Nil!9098) l!5107))))

(assert (=> d!263279 (= (forall!2133 l!5107 lambda!25176) e!556335)))

(declare-fun b!845597 () Bool)

(declare-fun e!556336 () Bool)

(assert (=> b!845597 (= e!556335 e!556336)))

(declare-fun res!386559 () Bool)

(assert (=> b!845597 (=> (not res!386559) (not e!556336))))

(declare-fun dynLambda!4218 (Int Token!3078) Bool)

(assert (=> b!845597 (= res!386559 (dynLambda!4218 lambda!25176 (h!14499 l!5107)))))

(declare-fun b!845598 () Bool)

(assert (=> b!845598 (= e!556336 (forall!2133 (t!94362 l!5107) lambda!25176))))

(assert (= (and d!263279 (not res!386558)) b!845597))

(assert (= (and b!845597 res!386559) b!845598))

(declare-fun b_lambda!27947 () Bool)

(assert (=> (not b_lambda!27947) (not b!845597)))

(declare-fun m!1080713 () Bool)

(assert (=> b!845597 m!1080713))

(declare-fun m!1080715 () Bool)

(assert (=> b!845598 m!1080715))

(assert (=> b!845358 d!263279))

(declare-fun d!263281 () Bool)

(assert (=> d!263281 (= (separableTokensPredicate!48 thiss!20117 (h!14499 (t!94362 lt!320194)) lt!320196 rules!2621) (not (prefixMatchZipperSequence!18 (rulesRegex!13 thiss!20117 rules!2621) (++!2354 (charsOf!980 (h!14499 (t!94362 lt!320194))) (singletonSeq!518 (apply!1844 (charsOf!980 lt!320196) 0))))))))

(declare-fun bs!230408 () Bool)

(assert (= bs!230408 d!263281))

(declare-fun m!1080717 () Bool)

(assert (=> bs!230408 m!1080717))

(declare-fun m!1080719 () Bool)

(assert (=> bs!230408 m!1080719))

(assert (=> bs!230408 m!1080575))

(declare-fun m!1080721 () Bool)

(assert (=> bs!230408 m!1080721))

(declare-fun m!1080723 () Bool)

(assert (=> bs!230408 m!1080723))

(assert (=> bs!230408 m!1080585))

(assert (=> bs!230408 m!1080723))

(declare-fun m!1080725 () Bool)

(assert (=> bs!230408 m!1080725))

(assert (=> bs!230408 m!1080719))

(assert (=> bs!230408 m!1080721))

(assert (=> bs!230408 m!1080575))

(assert (=> bs!230408 m!1080585))

(assert (=> bs!230408 m!1080717))

(assert (=> b!845348 d!263281))

(declare-fun d!263283 () Bool)

(assert (=> d!263283 (separableTokensPredicate!48 thiss!20117 (h!14499 (t!94362 lt!320194)) lt!320196 rules!2621)))

(declare-fun lt!320317 () Unit!13563)

(assert (=> d!263283 (= lt!320317 (choose!4985 thiss!20117 (h!14499 (t!94362 lt!320194)) lt!320196 rules!2621))))

(assert (=> d!263283 (not (isEmpty!5364 rules!2621))))

(assert (=> d!263283 (= (lemmaTokensOfDifferentKindsAreSeparable!30 thiss!20117 (h!14499 (t!94362 lt!320194)) lt!320196 rules!2621) lt!320317)))

(declare-fun bs!230409 () Bool)

(assert (= bs!230409 d!263283))

(assert (=> bs!230409 m!1080407))

(declare-fun m!1080727 () Bool)

(assert (=> bs!230409 m!1080727))

(assert (=> bs!230409 m!1080425))

(assert (=> b!845348 d!263283))

(declare-fun d!263285 () Bool)

(assert (=> d!263285 (= (head!1466 (t!94362 (t!94362 lt!320194))) (h!14499 (t!94362 (t!94362 lt!320194))))))

(assert (=> b!845348 d!263285))

(declare-fun d!263287 () Bool)

(declare-fun res!386560 () Bool)

(declare-fun e!556337 () Bool)

(assert (=> d!263287 (=> (not res!386560) (not e!556337))))

(assert (=> d!263287 (= res!386560 (not (isEmpty!5367 (originalCharacters!2262 separatorToken!297))))))

(assert (=> d!263287 (= (inv!11574 separatorToken!297) e!556337)))

(declare-fun b!845599 () Bool)

(declare-fun res!386561 () Bool)

(assert (=> b!845599 (=> (not res!386561) (not e!556337))))

(assert (=> b!845599 (= res!386561 (= (originalCharacters!2262 separatorToken!297) (list!3571 (dynLambda!4216 (toChars!2590 (transformation!1706 (rule!3129 separatorToken!297))) (value!55320 separatorToken!297)))))))

(declare-fun b!845600 () Bool)

(assert (=> b!845600 (= e!556337 (= (size!7587 separatorToken!297) (size!7590 (originalCharacters!2262 separatorToken!297))))))

(assert (= (and d!263287 res!386560) b!845599))

(assert (= (and b!845599 res!386561) b!845600))

(declare-fun b_lambda!27949 () Bool)

(assert (=> (not b_lambda!27949) (not b!845599)))

(declare-fun t!94376 () Bool)

(declare-fun tb!58695 () Bool)

(assert (=> (and b!845350 (= (toChars!2590 (transformation!1706 (rule!3129 separatorToken!297))) (toChars!2590 (transformation!1706 (rule!3129 separatorToken!297)))) t!94376) tb!58695))

(declare-fun b!845601 () Bool)

(declare-fun e!556338 () Bool)

(declare-fun tp!266080 () Bool)

(assert (=> b!845601 (= e!556338 (and (inv!11576 (c!137544 (dynLambda!4216 (toChars!2590 (transformation!1706 (rule!3129 separatorToken!297))) (value!55320 separatorToken!297)))) tp!266080))))

(declare-fun result!68046 () Bool)

(assert (=> tb!58695 (= result!68046 (and (inv!11577 (dynLambda!4216 (toChars!2590 (transformation!1706 (rule!3129 separatorToken!297))) (value!55320 separatorToken!297))) e!556338))))

(assert (= tb!58695 b!845601))

(declare-fun m!1080729 () Bool)

(assert (=> b!845601 m!1080729))

(declare-fun m!1080731 () Bool)

(assert (=> tb!58695 m!1080731))

(assert (=> b!845599 t!94376))

(declare-fun b_and!73527 () Bool)

(assert (= b_and!73521 (and (=> t!94376 result!68046) b_and!73527)))

(declare-fun tb!58697 () Bool)

(declare-fun t!94378 () Bool)

(assert (=> (and b!845346 (= (toChars!2590 (transformation!1706 (h!14500 rules!2621))) (toChars!2590 (transformation!1706 (rule!3129 separatorToken!297)))) t!94378) tb!58697))

(declare-fun result!68048 () Bool)

(assert (= result!68048 result!68046))

(assert (=> b!845599 t!94378))

(declare-fun b_and!73529 () Bool)

(assert (= b_and!73523 (and (=> t!94378 result!68048) b_and!73529)))

(declare-fun tb!58699 () Bool)

(declare-fun t!94380 () Bool)

(assert (=> (and b!845352 (= (toChars!2590 (transformation!1706 (rule!3129 (h!14499 l!5107)))) (toChars!2590 (transformation!1706 (rule!3129 separatorToken!297)))) t!94380) tb!58699))

(declare-fun result!68050 () Bool)

(assert (= result!68050 result!68046))

(assert (=> b!845599 t!94380))

(declare-fun b_and!73531 () Bool)

(assert (= b_and!73525 (and (=> t!94380 result!68050) b_and!73531)))

(declare-fun m!1080733 () Bool)

(assert (=> d!263287 m!1080733))

(declare-fun m!1080735 () Bool)

(assert (=> b!845599 m!1080735))

(assert (=> b!845599 m!1080735))

(declare-fun m!1080737 () Bool)

(assert (=> b!845599 m!1080737))

(declare-fun m!1080739 () Bool)

(assert (=> b!845600 m!1080739))

(assert (=> start!75294 d!263287))

(declare-fun d!263289 () Bool)

(assert (=> d!263289 (= (head!1466 l!5107) (h!14499 l!5107))))

(assert (=> b!845336 d!263289))

(declare-fun d!263291 () Bool)

(declare-fun lt!320341 () Bool)

(declare-fun e!556375 () Bool)

(assert (=> d!263291 (= lt!320341 e!556375)))

(declare-fun res!386592 () Bool)

(assert (=> d!263291 (=> (not res!386592) (not e!556375))))

(declare-datatypes ((IArray!6039 0))(
  ( (IArray!6040 (innerList!3077 List!9114)) )
))
(declare-datatypes ((Conc!3017 0))(
  ( (Node!3017 (left!6743 Conc!3017) (right!7073 Conc!3017) (csize!6264 Int) (cheight!3228 Int)) (Leaf!4458 (xs!5706 IArray!6039) (csize!6265 Int)) (Empty!3017) )
))
(declare-datatypes ((BalanceConc!6048 0))(
  ( (BalanceConc!6049 (c!137586 Conc!3017)) )
))
(declare-fun list!3574 (BalanceConc!6048) List!9114)

(declare-datatypes ((tuple2!10348 0))(
  ( (tuple2!10349 (_1!6000 BalanceConc!6048) (_2!6000 BalanceConc!6044)) )
))
(declare-fun lex!608 (LexerInterface!1508 List!9115 BalanceConc!6044) tuple2!10348)

(declare-fun print!545 (LexerInterface!1508 BalanceConc!6048) BalanceConc!6044)

(declare-fun singletonSeq!521 (Token!3078) BalanceConc!6048)

(assert (=> d!263291 (= res!386592 (= (list!3574 (_1!6000 (lex!608 thiss!20117 rules!2621 (print!545 thiss!20117 (singletonSeq!521 separatorToken!297))))) (list!3574 (singletonSeq!521 separatorToken!297))))))

(declare-fun e!556374 () Bool)

(assert (=> d!263291 (= lt!320341 e!556374)))

(declare-fun res!386590 () Bool)

(assert (=> d!263291 (=> (not res!386590) (not e!556374))))

(declare-fun lt!320342 () tuple2!10348)

(declare-fun size!7591 (BalanceConc!6048) Int)

(assert (=> d!263291 (= res!386590 (= (size!7591 (_1!6000 lt!320342)) 1))))

(assert (=> d!263291 (= lt!320342 (lex!608 thiss!20117 rules!2621 (print!545 thiss!20117 (singletonSeq!521 separatorToken!297))))))

(assert (=> d!263291 (not (isEmpty!5364 rules!2621))))

(assert (=> d!263291 (= (rulesProduceIndividualToken!572 thiss!20117 rules!2621 separatorToken!297) lt!320341)))

(declare-fun b!845654 () Bool)

(declare-fun res!386591 () Bool)

(assert (=> b!845654 (=> (not res!386591) (not e!556374))))

(declare-fun apply!1847 (BalanceConc!6048 Int) Token!3078)

(assert (=> b!845654 (= res!386591 (= (apply!1847 (_1!6000 lt!320342) 0) separatorToken!297))))

(declare-fun b!845655 () Bool)

(declare-fun isEmpty!5369 (BalanceConc!6044) Bool)

(assert (=> b!845655 (= e!556374 (isEmpty!5369 (_2!6000 lt!320342)))))

(declare-fun b!845656 () Bool)

(assert (=> b!845656 (= e!556375 (isEmpty!5369 (_2!6000 (lex!608 thiss!20117 rules!2621 (print!545 thiss!20117 (singletonSeq!521 separatorToken!297))))))))

(assert (= (and d!263291 res!386590) b!845654))

(assert (= (and b!845654 res!386591) b!845655))

(assert (= (and d!263291 res!386592) b!845656))

(declare-fun m!1080889 () Bool)

(assert (=> d!263291 m!1080889))

(declare-fun m!1080891 () Bool)

(assert (=> d!263291 m!1080891))

(declare-fun m!1080893 () Bool)

(assert (=> d!263291 m!1080893))

(declare-fun m!1080895 () Bool)

(assert (=> d!263291 m!1080895))

(declare-fun m!1080897 () Bool)

(assert (=> d!263291 m!1080897))

(assert (=> d!263291 m!1080895))

(assert (=> d!263291 m!1080425))

(assert (=> d!263291 m!1080895))

(assert (=> d!263291 m!1080891))

(declare-fun m!1080899 () Bool)

(assert (=> d!263291 m!1080899))

(declare-fun m!1080901 () Bool)

(assert (=> b!845654 m!1080901))

(declare-fun m!1080903 () Bool)

(assert (=> b!845655 m!1080903))

(assert (=> b!845656 m!1080895))

(assert (=> b!845656 m!1080895))

(assert (=> b!845656 m!1080891))

(assert (=> b!845656 m!1080891))

(assert (=> b!845656 m!1080893))

(declare-fun m!1080905 () Bool)

(assert (=> b!845656 m!1080905))

(assert (=> b!845357 d!263291))

(declare-fun b!845667 () Bool)

(declare-fun b_free!25397 () Bool)

(declare-fun b_next!25461 () Bool)

(assert (=> b!845667 (= b_free!25397 (not b_next!25461))))

(declare-fun tp!266095 () Bool)

(declare-fun b_and!73539 () Bool)

(assert (=> b!845667 (= tp!266095 b_and!73539)))

(declare-fun b_free!25399 () Bool)

(declare-fun b_next!25463 () Bool)

(assert (=> b!845667 (= b_free!25399 (not b_next!25463))))

(declare-fun tb!58707 () Bool)

(declare-fun t!94389 () Bool)

(assert (=> (and b!845667 (= (toChars!2590 (transformation!1706 (h!14500 (t!94363 rules!2621)))) (toChars!2590 (transformation!1706 (rule!3129 (h!14499 l!5107))))) t!94389) tb!58707))

(declare-fun result!68062 () Bool)

(assert (= result!68062 result!68038))

(assert (=> b!845546 t!94389))

(declare-fun tb!58709 () Bool)

(declare-fun t!94391 () Bool)

(assert (=> (and b!845667 (= (toChars!2590 (transformation!1706 (h!14500 (t!94363 rules!2621)))) (toChars!2590 (transformation!1706 (rule!3129 separatorToken!297)))) t!94391) tb!58709))

(declare-fun result!68064 () Bool)

(assert (= result!68064 result!68046))

(assert (=> b!845599 t!94391))

(declare-fun tp!266094 () Bool)

(declare-fun b_and!73541 () Bool)

(assert (=> b!845667 (= tp!266094 (and (=> t!94389 result!68062) (=> t!94391 result!68064) b_and!73541))))

(declare-fun e!556385 () Bool)

(assert (=> b!845667 (= e!556385 (and tp!266095 tp!266094))))

(declare-fun b!845666 () Bool)

(declare-fun tp!266093 () Bool)

(declare-fun e!556384 () Bool)

(assert (=> b!845666 (= e!556384 (and tp!266093 (inv!11571 (tag!1968 (h!14500 (t!94363 rules!2621)))) (inv!11575 (transformation!1706 (h!14500 (t!94363 rules!2621)))) e!556385))))

(declare-fun b!845665 () Bool)

(declare-fun e!556387 () Bool)

(declare-fun tp!266092 () Bool)

(assert (=> b!845665 (= e!556387 (and e!556384 tp!266092))))

(assert (=> b!845355 (= tp!266075 e!556387)))

(assert (= b!845666 b!845667))

(assert (= b!845665 b!845666))

(assert (= (and b!845355 ((_ is Cons!9099) (t!94363 rules!2621))) b!845665))

(declare-fun m!1080907 () Bool)

(assert (=> b!845666 m!1080907))

(declare-fun m!1080909 () Bool)

(assert (=> b!845666 m!1080909))

(declare-fun e!556390 () Bool)

(assert (=> b!845345 (= tp!266071 e!556390)))

(declare-fun b!845679 () Bool)

(declare-fun tp!266109 () Bool)

(declare-fun tp!266106 () Bool)

(assert (=> b!845679 (= e!556390 (and tp!266109 tp!266106))))

(declare-fun b!845680 () Bool)

(declare-fun tp!266108 () Bool)

(assert (=> b!845680 (= e!556390 tp!266108)))

(declare-fun b!845681 () Bool)

(declare-fun tp!266107 () Bool)

(declare-fun tp!266110 () Bool)

(assert (=> b!845681 (= e!556390 (and tp!266107 tp!266110))))

(declare-fun b!845678 () Bool)

(declare-fun tp_is_empty!3951 () Bool)

(assert (=> b!845678 (= e!556390 tp_is_empty!3951)))

(assert (= (and b!845345 ((_ is ElementMatch!2139) (regex!1706 (h!14500 rules!2621)))) b!845678))

(assert (= (and b!845345 ((_ is Concat!3912) (regex!1706 (h!14500 rules!2621)))) b!845679))

(assert (= (and b!845345 ((_ is Star!2139) (regex!1706 (h!14500 rules!2621)))) b!845680))

(assert (= (and b!845345 ((_ is Union!2139) (regex!1706 (h!14500 rules!2621)))) b!845681))

(declare-fun e!556391 () Bool)

(assert (=> b!845343 (= tp!266073 e!556391)))

(declare-fun b!845683 () Bool)

(declare-fun tp!266114 () Bool)

(declare-fun tp!266111 () Bool)

(assert (=> b!845683 (= e!556391 (and tp!266114 tp!266111))))

(declare-fun b!845684 () Bool)

(declare-fun tp!266113 () Bool)

(assert (=> b!845684 (= e!556391 tp!266113)))

(declare-fun b!845685 () Bool)

(declare-fun tp!266112 () Bool)

(declare-fun tp!266115 () Bool)

(assert (=> b!845685 (= e!556391 (and tp!266112 tp!266115))))

(declare-fun b!845682 () Bool)

(assert (=> b!845682 (= e!556391 tp_is_empty!3951)))

(assert (= (and b!845343 ((_ is ElementMatch!2139) (regex!1706 (rule!3129 separatorToken!297)))) b!845682))

(assert (= (and b!845343 ((_ is Concat!3912) (regex!1706 (rule!3129 separatorToken!297)))) b!845683))

(assert (= (and b!845343 ((_ is Star!2139) (regex!1706 (rule!3129 separatorToken!297)))) b!845684))

(assert (= (and b!845343 ((_ is Union!2139) (regex!1706 (rule!3129 separatorToken!297)))) b!845685))

(declare-fun b!845690 () Bool)

(declare-fun e!556394 () Bool)

(declare-fun tp!266118 () Bool)

(assert (=> b!845690 (= e!556394 (and tp_is_empty!3951 tp!266118))))

(assert (=> b!845339 (= tp!266067 e!556394)))

(assert (= (and b!845339 ((_ is Cons!9097) (originalCharacters!2262 separatorToken!297))) b!845690))

(declare-fun e!556395 () Bool)

(assert (=> b!845340 (= tp!266069 e!556395)))

(declare-fun b!845692 () Bool)

(declare-fun tp!266122 () Bool)

(declare-fun tp!266119 () Bool)

(assert (=> b!845692 (= e!556395 (and tp!266122 tp!266119))))

(declare-fun b!845693 () Bool)

(declare-fun tp!266121 () Bool)

(assert (=> b!845693 (= e!556395 tp!266121)))

(declare-fun b!845694 () Bool)

(declare-fun tp!266120 () Bool)

(declare-fun tp!266123 () Bool)

(assert (=> b!845694 (= e!556395 (and tp!266120 tp!266123))))

(declare-fun b!845691 () Bool)

(assert (=> b!845691 (= e!556395 tp_is_empty!3951)))

(assert (= (and b!845340 ((_ is ElementMatch!2139) (regex!1706 (rule!3129 (h!14499 l!5107))))) b!845691))

(assert (= (and b!845340 ((_ is Concat!3912) (regex!1706 (rule!3129 (h!14499 l!5107))))) b!845692))

(assert (= (and b!845340 ((_ is Star!2139) (regex!1706 (rule!3129 (h!14499 l!5107))))) b!845693))

(assert (= (and b!845340 ((_ is Union!2139) (regex!1706 (rule!3129 (h!14499 l!5107))))) b!845694))

(declare-fun b!845708 () Bool)

(declare-fun b_free!25401 () Bool)

(declare-fun b_next!25465 () Bool)

(assert (=> b!845708 (= b_free!25401 (not b_next!25465))))

(declare-fun tp!266137 () Bool)

(declare-fun b_and!73543 () Bool)

(assert (=> b!845708 (= tp!266137 b_and!73543)))

(declare-fun b_free!25403 () Bool)

(declare-fun b_next!25467 () Bool)

(assert (=> b!845708 (= b_free!25403 (not b_next!25467))))

(declare-fun t!94393 () Bool)

(declare-fun tb!58711 () Bool)

(assert (=> (and b!845708 (= (toChars!2590 (transformation!1706 (rule!3129 (h!14499 (t!94362 l!5107))))) (toChars!2590 (transformation!1706 (rule!3129 (h!14499 l!5107))))) t!94393) tb!58711))

(declare-fun result!68072 () Bool)

(assert (= result!68072 result!68038))

(assert (=> b!845546 t!94393))

(declare-fun tb!58713 () Bool)

(declare-fun t!94395 () Bool)

(assert (=> (and b!845708 (= (toChars!2590 (transformation!1706 (rule!3129 (h!14499 (t!94362 l!5107))))) (toChars!2590 (transformation!1706 (rule!3129 separatorToken!297)))) t!94395) tb!58713))

(declare-fun result!68074 () Bool)

(assert (= result!68074 result!68046))

(assert (=> b!845599 t!94395))

(declare-fun tp!266134 () Bool)

(declare-fun b_and!73545 () Bool)

(assert (=> b!845708 (= tp!266134 (and (=> t!94393 result!68072) (=> t!94395 result!68074) b_and!73545))))

(declare-fun e!556408 () Bool)

(declare-fun tp!266138 () Bool)

(declare-fun e!556413 () Bool)

(declare-fun b!845705 () Bool)

(assert (=> b!845705 (= e!556408 (and (inv!11574 (h!14499 (t!94362 l!5107))) e!556413 tp!266138))))

(declare-fun b!845706 () Bool)

(declare-fun e!556410 () Bool)

(declare-fun tp!266136 () Bool)

(assert (=> b!845706 (= e!556413 (and (inv!21 (value!55320 (h!14499 (t!94362 l!5107)))) e!556410 tp!266136))))

(declare-fun tp!266135 () Bool)

(declare-fun e!556411 () Bool)

(declare-fun b!845707 () Bool)

(assert (=> b!845707 (= e!556410 (and tp!266135 (inv!11571 (tag!1968 (rule!3129 (h!14499 (t!94362 l!5107))))) (inv!11575 (transformation!1706 (rule!3129 (h!14499 (t!94362 l!5107))))) e!556411))))

(assert (=> b!845338 (= tp!266068 e!556408)))

(assert (=> b!845708 (= e!556411 (and tp!266137 tp!266134))))

(assert (= b!845707 b!845708))

(assert (= b!845706 b!845707))

(assert (= b!845705 b!845706))

(assert (= (and b!845338 ((_ is Cons!9098) (t!94362 l!5107))) b!845705))

(declare-fun m!1080911 () Bool)

(assert (=> b!845705 m!1080911))

(declare-fun m!1080913 () Bool)

(assert (=> b!845706 m!1080913))

(declare-fun m!1080915 () Bool)

(assert (=> b!845707 m!1080915))

(declare-fun m!1080917 () Bool)

(assert (=> b!845707 m!1080917))

(declare-fun b!845709 () Bool)

(declare-fun e!556414 () Bool)

(declare-fun tp!266139 () Bool)

(assert (=> b!845709 (= e!556414 (and tp_is_empty!3951 tp!266139))))

(assert (=> b!845359 (= tp!266076 e!556414)))

(assert (= (and b!845359 ((_ is Cons!9097) (originalCharacters!2262 (h!14499 l!5107)))) b!845709))

(declare-fun b_lambda!27953 () Bool)

(assert (= b_lambda!27947 (or b!845358 b_lambda!27953)))

(declare-fun bs!230416 () Bool)

(declare-fun d!263325 () Bool)

(assert (= bs!230416 (and d!263325 b!845358)))

(assert (=> bs!230416 (= (dynLambda!4218 lambda!25176 (h!14499 l!5107)) (not (isSeparator!1706 (rule!3129 (h!14499 l!5107)))))))

(assert (=> b!845597 d!263325))

(declare-fun b_lambda!27955 () Bool)

(assert (= b_lambda!27949 (or (and b!845708 b_free!25403 (= (toChars!2590 (transformation!1706 (rule!3129 (h!14499 (t!94362 l!5107))))) (toChars!2590 (transformation!1706 (rule!3129 separatorToken!297))))) (and b!845352 b_free!25395 (= (toChars!2590 (transformation!1706 (rule!3129 (h!14499 l!5107)))) (toChars!2590 (transformation!1706 (rule!3129 separatorToken!297))))) (and b!845350 b_free!25387) (and b!845667 b_free!25399 (= (toChars!2590 (transformation!1706 (h!14500 (t!94363 rules!2621)))) (toChars!2590 (transformation!1706 (rule!3129 separatorToken!297))))) (and b!845346 b_free!25391 (= (toChars!2590 (transformation!1706 (h!14500 rules!2621))) (toChars!2590 (transformation!1706 (rule!3129 separatorToken!297))))) b_lambda!27955)))

(declare-fun b_lambda!27957 () Bool)

(assert (= b_lambda!27945 (or (and b!845708 b_free!25403 (= (toChars!2590 (transformation!1706 (rule!3129 (h!14499 (t!94362 l!5107))))) (toChars!2590 (transformation!1706 (rule!3129 (h!14499 l!5107)))))) (and b!845350 b_free!25387 (= (toChars!2590 (transformation!1706 (rule!3129 separatorToken!297))) (toChars!2590 (transformation!1706 (rule!3129 (h!14499 l!5107)))))) (and b!845346 b_free!25391 (= (toChars!2590 (transformation!1706 (h!14500 rules!2621))) (toChars!2590 (transformation!1706 (rule!3129 (h!14499 l!5107)))))) (and b!845667 b_free!25399 (= (toChars!2590 (transformation!1706 (h!14500 (t!94363 rules!2621)))) (toChars!2590 (transformation!1706 (rule!3129 (h!14499 l!5107)))))) (and b!845352 b_free!25395) b_lambda!27957)))

(check-sat (not d!263269) (not b!845692) (not b_next!25461) b_and!73517 (not b!845387) (not b!845684) tp_is_empty!3951 (not d!263283) (not b!845656) (not b_lambda!27957) (not b!845538) (not d!263267) (not d!263225) b_and!73509 (not b!845563) (not b!845600) (not b!845557) (not b!845558) (not b!845567) (not b!845666) (not b!845512) (not d!263235) (not d!263273) b_and!73529 (not b!845685) (not b!845706) (not b_next!25451) (not b_lambda!27955) (not b!845679) (not b!845654) (not d!263213) (not b!845705) (not b!845681) (not d!263277) (not b!845541) (not d!263209) (not b!845694) (not b!845480) (not b!845693) (not b_next!25455) b_and!73527 (not b!845556) (not b_next!25449) (not d!263249) (not b!845504) b_and!73513 (not d!263251) (not b!845560) (not b!845598) (not b!845552) (not b_next!25457) (not b_next!25463) (not b_next!25465) b_and!73539 (not tb!58695) (not b!845503) (not b!845499) (not d!263245) (not b!845601) b_and!73543 (not b!845389) (not b!845564) (not b!845483) (not b!845683) (not d!263211) (not d!263237) (not tb!58689) (not b!845392) (not b!845502) (not d!263281) (not b!845707) (not b!845479) (not b!845690) (not b!845572) b_and!73531 (not b!845380) (not b!845555) (not b!845513) (not b_next!25467) (not b!845524) (not d!263287) (not b_next!25453) (not b!845559) b_and!73541 (not b!845434) (not b!845435) (not b!845570) (not b!845709) (not b!845680) (not b!845540) b_and!73545 (not b!845546) (not b!845482) (not b!845381) (not d!263275) (not b!845665) (not d!263291) (not b!845547) (not b!845505) (not b_next!25459) (not b!845525) (not b!845444) (not b_lambda!27953) (not b!845599) (not d!263201) (not b!845384) (not b!845539) (not b!845655))
(check-sat b_and!73509 b_and!73529 (not b_next!25451) (not b_next!25461) b_and!73513 b_and!73517 b_and!73543 b_and!73531 (not b_next!25467) b_and!73545 (not b_next!25459) (not b_next!25455) b_and!73527 (not b_next!25449) (not b_next!25457) (not b_next!25463) (not b_next!25465) b_and!73539 (not b_next!25453) b_and!73541)

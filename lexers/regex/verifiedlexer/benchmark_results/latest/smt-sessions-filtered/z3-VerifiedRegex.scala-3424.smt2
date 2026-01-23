; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192436 () Bool)

(assert start!192436)

(declare-fun b!1921520 () Bool)

(declare-fun b_free!55017 () Bool)

(declare-fun b_next!55721 () Bool)

(assert (=> b!1921520 (= b_free!55017 (not b_next!55721))))

(declare-fun tp!549339 () Bool)

(declare-fun b_and!150271 () Bool)

(assert (=> b!1921520 (= tp!549339 b_and!150271)))

(declare-fun b_free!55019 () Bool)

(declare-fun b_next!55723 () Bool)

(assert (=> b!1921520 (= b_free!55019 (not b_next!55723))))

(declare-fun tp!549340 () Bool)

(declare-fun b_and!150273 () Bool)

(assert (=> b!1921520 (= tp!549340 b_and!150273)))

(declare-fun b!1921531 () Bool)

(declare-fun b_free!55021 () Bool)

(declare-fun b_next!55725 () Bool)

(assert (=> b!1921531 (= b_free!55021 (not b_next!55725))))

(declare-fun tp!549341 () Bool)

(declare-fun b_and!150275 () Bool)

(assert (=> b!1921531 (= tp!549341 b_and!150275)))

(declare-fun b_free!55023 () Bool)

(declare-fun b_next!55727 () Bool)

(assert (=> b!1921531 (= b_free!55023 (not b_next!55727))))

(declare-fun tp!549334 () Bool)

(declare-fun b_and!150277 () Bool)

(assert (=> b!1921531 (= tp!549334 b_and!150277)))

(declare-fun b!1921533 () Bool)

(declare-fun b_free!55025 () Bool)

(declare-fun b_next!55729 () Bool)

(assert (=> b!1921533 (= b_free!55025 (not b_next!55729))))

(declare-fun tp!549342 () Bool)

(declare-fun b_and!150279 () Bool)

(assert (=> b!1921533 (= tp!549342 b_and!150279)))

(declare-fun b_free!55027 () Bool)

(declare-fun b_next!55731 () Bool)

(assert (=> b!1921533 (= b_free!55027 (not b_next!55731))))

(declare-fun tp!549338 () Bool)

(declare-fun b_and!150281 () Bool)

(assert (=> b!1921533 (= tp!549338 b_and!150281)))

(declare-fun tp!549333 () Bool)

(declare-fun b!1921514 () Bool)

(declare-fun e!1228339 () Bool)

(declare-fun e!1228350 () Bool)

(declare-datatypes ((List!21968 0))(
  ( (Nil!21886) (Cons!21886 (h!27287 (_ BitVec 16)) (t!178861 List!21968)) )
))
(declare-datatypes ((TokenValue!4060 0))(
  ( (FloatLiteralValue!8120 (text!28865 List!21968)) (TokenValueExt!4059 (__x!13618 Int)) (Broken!20300 (value!123399 List!21968)) (Object!4141) (End!4060) (Def!4060) (Underscore!4060) (Match!4060) (Else!4060) (Error!4060) (Case!4060) (If!4060) (Extends!4060) (Abstract!4060) (Class!4060) (Val!4060) (DelimiterValue!8120 (del!4120 List!21968)) (KeywordValue!4066 (value!123400 List!21968)) (CommentValue!8120 (value!123401 List!21968)) (WhitespaceValue!8120 (value!123402 List!21968)) (IndentationValue!4060 (value!123403 List!21968)) (String!25417) (Int32!4060) (Broken!20301 (value!123404 List!21968)) (Boolean!4061) (Unit!36203) (OperatorValue!4063 (op!4120 List!21968)) (IdentifierValue!8120 (value!123405 List!21968)) (IdentifierValue!8121 (value!123406 List!21968)) (WhitespaceValue!8121 (value!123407 List!21968)) (True!8120) (False!8120) (Broken!20302 (value!123408 List!21968)) (Broken!20303 (value!123409 List!21968)) (True!8121) (RightBrace!4060) (RightBracket!4060) (Colon!4060) (Null!4060) (Comma!4060) (LeftBracket!4060) (False!8121) (LeftBrace!4060) (ImaginaryLiteralValue!4060 (text!28866 List!21968)) (StringLiteralValue!12180 (value!123410 List!21968)) (EOFValue!4060 (value!123411 List!21968)) (IdentValue!4060 (value!123412 List!21968)) (DelimiterValue!8121 (value!123413 List!21968)) (DedentValue!4060 (value!123414 List!21968)) (NewLineValue!4060 (value!123415 List!21968)) (IntegerValue!12180 (value!123416 (_ BitVec 32)) (text!28867 List!21968)) (IntegerValue!12181 (value!123417 Int) (text!28868 List!21968)) (Times!4060) (Or!4060) (Equal!4060) (Minus!4060) (Broken!20304 (value!123418 List!21968)) (And!4060) (Div!4060) (LessEqual!4060) (Mod!4060) (Concat!9409) (Not!4060) (Plus!4060) (SpaceValue!4060 (value!123419 List!21968)) (IntegerValue!12182 (value!123420 Int) (text!28869 List!21968)) (StringLiteralValue!12181 (text!28870 List!21968)) (FloatLiteralValue!8121 (text!28871 List!21968)) (BytesLiteralValue!4060 (value!123421 List!21968)) (CommentValue!8121 (value!123422 List!21968)) (StringLiteralValue!12182 (value!123423 List!21968)) (ErrorTokenValue!4060 (msg!4121 List!21968)) )
))
(declare-datatypes ((C!10844 0))(
  ( (C!10845 (val!6374 Int)) )
))
(declare-datatypes ((List!21969 0))(
  ( (Nil!21887) (Cons!21887 (h!27288 C!10844) (t!178862 List!21969)) )
))
(declare-datatypes ((String!25418 0))(
  ( (String!25419 (value!123424 String)) )
))
(declare-datatypes ((Regex!5349 0))(
  ( (ElementMatch!5349 (c!312279 C!10844)) (Concat!9410 (regOne!11210 Regex!5349) (regTwo!11210 Regex!5349)) (EmptyExpr!5349) (Star!5349 (reg!5678 Regex!5349)) (EmptyLang!5349) (Union!5349 (regOne!11211 Regex!5349) (regTwo!11211 Regex!5349)) )
))
(declare-datatypes ((IArray!14607 0))(
  ( (IArray!14608 (innerList!7361 List!21969)) )
))
(declare-datatypes ((Conc!7301 0))(
  ( (Node!7301 (left!17405 Conc!7301) (right!17735 Conc!7301) (csize!14832 Int) (cheight!7512 Int)) (Leaf!10726 (xs!10195 IArray!14607) (csize!14833 Int)) (Empty!7301) )
))
(declare-datatypes ((BalanceConc!14418 0))(
  ( (BalanceConc!14419 (c!312280 Conc!7301)) )
))
(declare-datatypes ((TokenValueInjection!7704 0))(
  ( (TokenValueInjection!7705 (toValue!5553 Int) (toChars!5412 Int)) )
))
(declare-datatypes ((Rule!7648 0))(
  ( (Rule!7649 (regex!3924 Regex!5349) (tag!4364 String!25418) (isSeparator!3924 Bool) (transformation!3924 TokenValueInjection!7704)) )
))
(declare-datatypes ((Token!7400 0))(
  ( (Token!7401 (value!123425 TokenValue!4060) (rule!6127 Rule!7648) (size!17076 Int) (originalCharacters!4731 List!21969)) )
))
(declare-datatypes ((List!21970 0))(
  ( (Nil!21888) (Cons!21888 (h!27289 Token!7400) (t!178863 List!21970)) )
))
(declare-fun tokens!598 () List!21970)

(declare-fun inv!28958 (Token!7400) Bool)

(assert (=> b!1921514 (= e!1228350 (and (inv!28958 (h!27289 tokens!598)) e!1228339 tp!549333))))

(declare-fun b!1921515 () Bool)

(declare-fun e!1228343 () Bool)

(assert (=> b!1921515 (= e!1228343 (= tokens!598 Nil!21888))))

(declare-fun b!1921517 () Bool)

(declare-fun res!859326 () Bool)

(assert (=> b!1921517 (=> (not res!859326) (not e!1228343))))

(declare-fun separatorToken!354 () Token!7400)

(declare-datatypes ((LexerInterface!3537 0))(
  ( (LexerInterfaceExt!3534 (__x!13619 Int)) (Lexer!3535) )
))
(declare-fun thiss!23328 () LexerInterface!3537)

(declare-datatypes ((List!21971 0))(
  ( (Nil!21889) (Cons!21889 (h!27290 Rule!7648) (t!178864 List!21971)) )
))
(declare-fun rules!3198 () List!21971)

(declare-datatypes ((tuple2!20502 0))(
  ( (tuple2!20503 (_1!11720 Token!7400) (_2!11720 List!21969)) )
))
(declare-datatypes ((Option!4524 0))(
  ( (None!4523) (Some!4523 (v!26596 tuple2!20502)) )
))
(declare-fun isDefined!3818 (Option!4524) Bool)

(declare-fun maxPrefix!1975 (LexerInterface!3537 List!21971 List!21969) Option!4524)

(declare-fun printWithSeparatorTokenWhenNeededList!576 (LexerInterface!3537 List!21971 List!21970 Token!7400) List!21969)

(assert (=> b!1921517 (= res!859326 (isDefined!3818 (maxPrefix!1975 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!576 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))

(declare-fun b!1921518 () Bool)

(declare-fun e!1228337 () Bool)

(declare-fun tp!549335 () Bool)

(declare-fun e!1228351 () Bool)

(declare-fun inv!28955 (String!25418) Bool)

(declare-fun inv!28959 (TokenValueInjection!7704) Bool)

(assert (=> b!1921518 (= e!1228351 (and tp!549335 (inv!28955 (tag!4364 (rule!6127 separatorToken!354))) (inv!28959 (transformation!3924 (rule!6127 separatorToken!354))) e!1228337))))

(declare-fun tp!549337 () Bool)

(declare-fun b!1921519 () Bool)

(declare-fun e!1228342 () Bool)

(declare-fun inv!21 (TokenValue!4060) Bool)

(assert (=> b!1921519 (= e!1228339 (and (inv!21 (value!123425 (h!27289 tokens!598))) e!1228342 tp!549337))))

(declare-fun e!1228347 () Bool)

(assert (=> b!1921520 (= e!1228347 (and tp!549339 tp!549340))))

(declare-fun tp!549331 () Bool)

(declare-fun e!1228341 () Bool)

(declare-fun b!1921521 () Bool)

(declare-fun e!1228340 () Bool)

(assert (=> b!1921521 (= e!1228341 (and tp!549331 (inv!28955 (tag!4364 (h!27290 rules!3198))) (inv!28959 (transformation!3924 (h!27290 rules!3198))) e!1228340))))

(declare-fun b!1921522 () Bool)

(declare-fun res!859335 () Bool)

(assert (=> b!1921522 (=> (not res!859335) (not e!1228343))))

(get-info :version)

(assert (=> b!1921522 (= res!859335 (not ((_ is Cons!21888) tokens!598)))))

(declare-fun b!1921523 () Bool)

(declare-fun res!859329 () Bool)

(assert (=> b!1921523 (=> (not res!859329) (not e!1228343))))

(declare-fun rulesProduceIndividualToken!1709 (LexerInterface!3537 List!21971 Token!7400) Bool)

(assert (=> b!1921523 (= res!859329 (rulesProduceIndividualToken!1709 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1921524 () Bool)

(declare-fun res!859333 () Bool)

(assert (=> b!1921524 (=> (not res!859333) (not e!1228343))))

(declare-fun rulesProduceEachTokenIndividuallyList!1268 (LexerInterface!3537 List!21971 List!21970) Bool)

(assert (=> b!1921524 (= res!859333 (rulesProduceEachTokenIndividuallyList!1268 thiss!23328 rules!3198 tokens!598))))

(declare-fun e!1228338 () Bool)

(declare-fun tp!549330 () Bool)

(declare-fun b!1921525 () Bool)

(assert (=> b!1921525 (= e!1228338 (and (inv!21 (value!123425 separatorToken!354)) e!1228351 tp!549330))))

(declare-fun res!859331 () Bool)

(assert (=> start!192436 (=> (not res!859331) (not e!1228343))))

(assert (=> start!192436 (= res!859331 ((_ is Lexer!3535) thiss!23328))))

(assert (=> start!192436 e!1228343))

(assert (=> start!192436 true))

(declare-fun e!1228345 () Bool)

(assert (=> start!192436 e!1228345))

(assert (=> start!192436 e!1228350))

(assert (=> start!192436 (and (inv!28958 separatorToken!354) e!1228338)))

(declare-fun b!1921516 () Bool)

(declare-fun res!859328 () Bool)

(assert (=> b!1921516 (=> (not res!859328) (not e!1228343))))

(declare-fun isEmpty!13459 (List!21971) Bool)

(assert (=> b!1921516 (= res!859328 (not (isEmpty!13459 rules!3198)))))

(declare-fun b!1921526 () Bool)

(declare-fun res!859327 () Bool)

(assert (=> b!1921526 (=> (not res!859327) (not e!1228343))))

(declare-fun lambda!75023 () Int)

(declare-fun forall!4624 (List!21970 Int) Bool)

(assert (=> b!1921526 (= res!859327 (forall!4624 tokens!598 lambda!75023))))

(declare-fun b!1921527 () Bool)

(declare-fun tp!549332 () Bool)

(assert (=> b!1921527 (= e!1228345 (and e!1228341 tp!549332))))

(declare-fun tp!549336 () Bool)

(declare-fun b!1921528 () Bool)

(assert (=> b!1921528 (= e!1228342 (and tp!549336 (inv!28955 (tag!4364 (rule!6127 (h!27289 tokens!598)))) (inv!28959 (transformation!3924 (rule!6127 (h!27289 tokens!598)))) e!1228347))))

(declare-fun b!1921529 () Bool)

(declare-fun res!859330 () Bool)

(assert (=> b!1921529 (=> (not res!859330) (not e!1228343))))

(declare-fun isEmpty!13460 (List!21970) Bool)

(assert (=> b!1921529 (= res!859330 (not (isEmpty!13460 tokens!598)))))

(declare-fun b!1921530 () Bool)

(declare-fun res!859334 () Bool)

(assert (=> b!1921530 (=> (not res!859334) (not e!1228343))))

(declare-fun rulesInvariant!3144 (LexerInterface!3537 List!21971) Bool)

(assert (=> b!1921530 (= res!859334 (rulesInvariant!3144 thiss!23328 rules!3198))))

(assert (=> b!1921531 (= e!1228340 (and tp!549341 tp!549334))))

(declare-fun b!1921532 () Bool)

(declare-fun res!859336 () Bool)

(assert (=> b!1921532 (=> (not res!859336) (not e!1228343))))

(assert (=> b!1921532 (= res!859336 (isSeparator!3924 (rule!6127 separatorToken!354)))))

(assert (=> b!1921533 (= e!1228337 (and tp!549342 tp!549338))))

(declare-fun b!1921534 () Bool)

(declare-fun res!859332 () Bool)

(assert (=> b!1921534 (=> (not res!859332) (not e!1228343))))

(declare-fun sepAndNonSepRulesDisjointChars!1022 (List!21971 List!21971) Bool)

(assert (=> b!1921534 (= res!859332 (sepAndNonSepRulesDisjointChars!1022 rules!3198 rules!3198))))

(assert (= (and start!192436 res!859331) b!1921516))

(assert (= (and b!1921516 res!859328) b!1921530))

(assert (= (and b!1921530 res!859334) b!1921524))

(assert (= (and b!1921524 res!859333) b!1921523))

(assert (= (and b!1921523 res!859329) b!1921532))

(assert (= (and b!1921532 res!859336) b!1921526))

(assert (= (and b!1921526 res!859327) b!1921534))

(assert (= (and b!1921534 res!859332) b!1921522))

(assert (= (and b!1921522 res!859335) b!1921529))

(assert (= (and b!1921529 res!859330) b!1921517))

(assert (= (and b!1921517 res!859326) b!1921515))

(assert (= b!1921521 b!1921531))

(assert (= b!1921527 b!1921521))

(assert (= (and start!192436 ((_ is Cons!21889) rules!3198)) b!1921527))

(assert (= b!1921528 b!1921520))

(assert (= b!1921519 b!1921528))

(assert (= b!1921514 b!1921519))

(assert (= (and start!192436 ((_ is Cons!21888) tokens!598)) b!1921514))

(assert (= b!1921518 b!1921533))

(assert (= b!1921525 b!1921518))

(assert (= start!192436 b!1921525))

(declare-fun m!2356379 () Bool)

(assert (=> b!1921521 m!2356379))

(declare-fun m!2356381 () Bool)

(assert (=> b!1921521 m!2356381))

(declare-fun m!2356383 () Bool)

(assert (=> b!1921526 m!2356383))

(declare-fun m!2356385 () Bool)

(assert (=> b!1921523 m!2356385))

(declare-fun m!2356387 () Bool)

(assert (=> b!1921514 m!2356387))

(declare-fun m!2356389 () Bool)

(assert (=> start!192436 m!2356389))

(declare-fun m!2356391 () Bool)

(assert (=> b!1921525 m!2356391))

(declare-fun m!2356393 () Bool)

(assert (=> b!1921524 m!2356393))

(declare-fun m!2356395 () Bool)

(assert (=> b!1921528 m!2356395))

(declare-fun m!2356397 () Bool)

(assert (=> b!1921528 m!2356397))

(declare-fun m!2356399 () Bool)

(assert (=> b!1921530 m!2356399))

(declare-fun m!2356401 () Bool)

(assert (=> b!1921516 m!2356401))

(declare-fun m!2356403 () Bool)

(assert (=> b!1921519 m!2356403))

(declare-fun m!2356405 () Bool)

(assert (=> b!1921534 m!2356405))

(declare-fun m!2356407 () Bool)

(assert (=> b!1921518 m!2356407))

(declare-fun m!2356409 () Bool)

(assert (=> b!1921518 m!2356409))

(declare-fun m!2356411 () Bool)

(assert (=> b!1921529 m!2356411))

(declare-fun m!2356413 () Bool)

(assert (=> b!1921517 m!2356413))

(assert (=> b!1921517 m!2356413))

(declare-fun m!2356415 () Bool)

(assert (=> b!1921517 m!2356415))

(assert (=> b!1921517 m!2356415))

(declare-fun m!2356417 () Bool)

(assert (=> b!1921517 m!2356417))

(check-sat (not b!1921534) (not b!1921529) (not start!192436) (not b_next!55731) (not b_next!55727) (not b!1921517) (not b!1921518) b_and!150271 (not b_next!55729) b_and!150279 (not b_next!55725) (not b!1921514) (not b_next!55721) b_and!150277 (not b_next!55723) (not b!1921530) (not b!1921527) (not b!1921523) b_and!150281 b_and!150275 (not b!1921521) (not b!1921525) (not b!1921526) b_and!150273 (not b!1921519) (not b!1921528) (not b!1921516) (not b!1921524))
(check-sat (not b_next!55723) (not b_next!55731) (not b_next!55727) b_and!150281 b_and!150275 b_and!150273 b_and!150271 (not b_next!55729) b_and!150279 (not b_next!55725) (not b_next!55721) b_and!150277)
(get-model)

(declare-fun d!585523 () Bool)

(assert (=> d!585523 (= (inv!28955 (tag!4364 (h!27290 rules!3198))) (= (mod (str.len (value!123424 (tag!4364 (h!27290 rules!3198)))) 2) 0))))

(assert (=> b!1921521 d!585523))

(declare-fun d!585525 () Bool)

(declare-fun res!859343 () Bool)

(declare-fun e!1228355 () Bool)

(assert (=> d!585525 (=> (not res!859343) (not e!1228355))))

(declare-fun semiInverseModEq!1557 (Int Int) Bool)

(assert (=> d!585525 (= res!859343 (semiInverseModEq!1557 (toChars!5412 (transformation!3924 (h!27290 rules!3198))) (toValue!5553 (transformation!3924 (h!27290 rules!3198)))))))

(assert (=> d!585525 (= (inv!28959 (transformation!3924 (h!27290 rules!3198))) e!1228355)))

(declare-fun b!1921537 () Bool)

(declare-fun equivClasses!1484 (Int Int) Bool)

(assert (=> b!1921537 (= e!1228355 (equivClasses!1484 (toChars!5412 (transformation!3924 (h!27290 rules!3198))) (toValue!5553 (transformation!3924 (h!27290 rules!3198)))))))

(assert (= (and d!585525 res!859343) b!1921537))

(declare-fun m!2356419 () Bool)

(assert (=> d!585525 m!2356419))

(declare-fun m!2356421 () Bool)

(assert (=> b!1921537 m!2356421))

(assert (=> b!1921521 d!585525))

(declare-fun b!1921548 () Bool)

(declare-fun res!859346 () Bool)

(declare-fun e!1228364 () Bool)

(assert (=> b!1921548 (=> res!859346 e!1228364)))

(assert (=> b!1921548 (= res!859346 (not ((_ is IntegerValue!12182) (value!123425 (h!27289 tokens!598)))))))

(declare-fun e!1228363 () Bool)

(assert (=> b!1921548 (= e!1228363 e!1228364)))

(declare-fun b!1921549 () Bool)

(declare-fun inv!15 (TokenValue!4060) Bool)

(assert (=> b!1921549 (= e!1228364 (inv!15 (value!123425 (h!27289 tokens!598))))))

(declare-fun d!585527 () Bool)

(declare-fun c!312286 () Bool)

(assert (=> d!585527 (= c!312286 ((_ is IntegerValue!12180) (value!123425 (h!27289 tokens!598))))))

(declare-fun e!1228362 () Bool)

(assert (=> d!585527 (= (inv!21 (value!123425 (h!27289 tokens!598))) e!1228362)))

(declare-fun b!1921550 () Bool)

(declare-fun inv!16 (TokenValue!4060) Bool)

(assert (=> b!1921550 (= e!1228362 (inv!16 (value!123425 (h!27289 tokens!598))))))

(declare-fun b!1921551 () Bool)

(declare-fun inv!17 (TokenValue!4060) Bool)

(assert (=> b!1921551 (= e!1228363 (inv!17 (value!123425 (h!27289 tokens!598))))))

(declare-fun b!1921552 () Bool)

(assert (=> b!1921552 (= e!1228362 e!1228363)))

(declare-fun c!312285 () Bool)

(assert (=> b!1921552 (= c!312285 ((_ is IntegerValue!12181) (value!123425 (h!27289 tokens!598))))))

(assert (= (and d!585527 c!312286) b!1921550))

(assert (= (and d!585527 (not c!312286)) b!1921552))

(assert (= (and b!1921552 c!312285) b!1921551))

(assert (= (and b!1921552 (not c!312285)) b!1921548))

(assert (= (and b!1921548 (not res!859346)) b!1921549))

(declare-fun m!2356423 () Bool)

(assert (=> b!1921549 m!2356423))

(declare-fun m!2356425 () Bool)

(assert (=> b!1921550 m!2356425))

(declare-fun m!2356427 () Bool)

(assert (=> b!1921551 m!2356427))

(assert (=> b!1921519 d!585527))

(declare-fun d!585529 () Bool)

(declare-fun res!859349 () Bool)

(declare-fun e!1228367 () Bool)

(assert (=> d!585529 (=> (not res!859349) (not e!1228367))))

(declare-fun rulesValid!1443 (LexerInterface!3537 List!21971) Bool)

(assert (=> d!585529 (= res!859349 (rulesValid!1443 thiss!23328 rules!3198))))

(assert (=> d!585529 (= (rulesInvariant!3144 thiss!23328 rules!3198) e!1228367)))

(declare-fun b!1921555 () Bool)

(declare-datatypes ((List!21972 0))(
  ( (Nil!21890) (Cons!21890 (h!27291 String!25418) (t!178915 List!21972)) )
))
(declare-fun noDuplicateTag!1441 (LexerInterface!3537 List!21971 List!21972) Bool)

(assert (=> b!1921555 (= e!1228367 (noDuplicateTag!1441 thiss!23328 rules!3198 Nil!21890))))

(assert (= (and d!585529 res!859349) b!1921555))

(declare-fun m!2356429 () Bool)

(assert (=> d!585529 m!2356429))

(declare-fun m!2356431 () Bool)

(assert (=> b!1921555 m!2356431))

(assert (=> b!1921530 d!585529))

(declare-fun d!585531 () Bool)

(declare-fun lt!736479 () Bool)

(declare-fun e!1228391 () Bool)

(assert (=> d!585531 (= lt!736479 e!1228391)))

(declare-fun res!859391 () Bool)

(assert (=> d!585531 (=> (not res!859391) (not e!1228391))))

(declare-datatypes ((IArray!14611 0))(
  ( (IArray!14612 (innerList!7363 List!21970)) )
))
(declare-datatypes ((Conc!7303 0))(
  ( (Node!7303 (left!17411 Conc!7303) (right!17741 Conc!7303) (csize!14836 Int) (cheight!7514 Int)) (Leaf!10728 (xs!10197 IArray!14611) (csize!14837 Int)) (Empty!7303) )
))
(declare-datatypes ((BalanceConc!14422 0))(
  ( (BalanceConc!14423 (c!312328 Conc!7303)) )
))
(declare-fun list!8844 (BalanceConc!14422) List!21970)

(declare-datatypes ((tuple2!20506 0))(
  ( (tuple2!20507 (_1!11722 BalanceConc!14422) (_2!11722 BalanceConc!14418)) )
))
(declare-fun lex!1565 (LexerInterface!3537 List!21971 BalanceConc!14418) tuple2!20506)

(declare-fun print!1507 (LexerInterface!3537 BalanceConc!14422) BalanceConc!14418)

(declare-fun singletonSeq!1908 (Token!7400) BalanceConc!14422)

(assert (=> d!585531 (= res!859391 (= (list!8844 (_1!11722 (lex!1565 thiss!23328 rules!3198 (print!1507 thiss!23328 (singletonSeq!1908 separatorToken!354))))) (list!8844 (singletonSeq!1908 separatorToken!354))))))

(declare-fun e!1228390 () Bool)

(assert (=> d!585531 (= lt!736479 e!1228390)))

(declare-fun res!859389 () Bool)

(assert (=> d!585531 (=> (not res!859389) (not e!1228390))))

(declare-fun lt!736478 () tuple2!20506)

(declare-fun size!17079 (BalanceConc!14422) Int)

(assert (=> d!585531 (= res!859389 (= (size!17079 (_1!11722 lt!736478)) 1))))

(assert (=> d!585531 (= lt!736478 (lex!1565 thiss!23328 rules!3198 (print!1507 thiss!23328 (singletonSeq!1908 separatorToken!354))))))

(assert (=> d!585531 (not (isEmpty!13459 rules!3198))))

(assert (=> d!585531 (= (rulesProduceIndividualToken!1709 thiss!23328 rules!3198 separatorToken!354) lt!736479)))

(declare-fun b!1921601 () Bool)

(declare-fun res!859390 () Bool)

(assert (=> b!1921601 (=> (not res!859390) (not e!1228390))))

(declare-fun apply!5670 (BalanceConc!14422 Int) Token!7400)

(assert (=> b!1921601 (= res!859390 (= (apply!5670 (_1!11722 lt!736478) 0) separatorToken!354))))

(declare-fun b!1921602 () Bool)

(declare-fun isEmpty!13463 (BalanceConc!14418) Bool)

(assert (=> b!1921602 (= e!1228390 (isEmpty!13463 (_2!11722 lt!736478)))))

(declare-fun b!1921603 () Bool)

(assert (=> b!1921603 (= e!1228391 (isEmpty!13463 (_2!11722 (lex!1565 thiss!23328 rules!3198 (print!1507 thiss!23328 (singletonSeq!1908 separatorToken!354))))))))

(assert (= (and d!585531 res!859389) b!1921601))

(assert (= (and b!1921601 res!859390) b!1921602))

(assert (= (and d!585531 res!859391) b!1921603))

(assert (=> d!585531 m!2356401))

(declare-fun m!2356491 () Bool)

(assert (=> d!585531 m!2356491))

(declare-fun m!2356493 () Bool)

(assert (=> d!585531 m!2356493))

(declare-fun m!2356495 () Bool)

(assert (=> d!585531 m!2356495))

(declare-fun m!2356497 () Bool)

(assert (=> d!585531 m!2356497))

(declare-fun m!2356499 () Bool)

(assert (=> d!585531 m!2356499))

(assert (=> d!585531 m!2356495))

(assert (=> d!585531 m!2356499))

(assert (=> d!585531 m!2356499))

(declare-fun m!2356501 () Bool)

(assert (=> d!585531 m!2356501))

(declare-fun m!2356503 () Bool)

(assert (=> b!1921601 m!2356503))

(declare-fun m!2356505 () Bool)

(assert (=> b!1921602 m!2356505))

(assert (=> b!1921603 m!2356499))

(assert (=> b!1921603 m!2356499))

(assert (=> b!1921603 m!2356495))

(assert (=> b!1921603 m!2356495))

(assert (=> b!1921603 m!2356497))

(declare-fun m!2356507 () Bool)

(assert (=> b!1921603 m!2356507))

(assert (=> b!1921523 d!585531))

(declare-fun d!585543 () Bool)

(declare-fun res!859396 () Bool)

(declare-fun e!1228394 () Bool)

(assert (=> d!585543 (=> (not res!859396) (not e!1228394))))

(declare-fun isEmpty!13464 (List!21969) Bool)

(assert (=> d!585543 (= res!859396 (not (isEmpty!13464 (originalCharacters!4731 separatorToken!354))))))

(assert (=> d!585543 (= (inv!28958 separatorToken!354) e!1228394)))

(declare-fun b!1921608 () Bool)

(declare-fun res!859397 () Bool)

(assert (=> b!1921608 (=> (not res!859397) (not e!1228394))))

(declare-fun list!8845 (BalanceConc!14418) List!21969)

(declare-fun dynLambda!10559 (Int TokenValue!4060) BalanceConc!14418)

(assert (=> b!1921608 (= res!859397 (= (originalCharacters!4731 separatorToken!354) (list!8845 (dynLambda!10559 (toChars!5412 (transformation!3924 (rule!6127 separatorToken!354))) (value!123425 separatorToken!354)))))))

(declare-fun b!1921609 () Bool)

(declare-fun size!17080 (List!21969) Int)

(assert (=> b!1921609 (= e!1228394 (= (size!17076 separatorToken!354) (size!17080 (originalCharacters!4731 separatorToken!354))))))

(assert (= (and d!585543 res!859396) b!1921608))

(assert (= (and b!1921608 res!859397) b!1921609))

(declare-fun b_lambda!63473 () Bool)

(assert (=> (not b_lambda!63473) (not b!1921608)))

(declare-fun tb!117353 () Bool)

(declare-fun t!178868 () Bool)

(assert (=> (and b!1921520 (= (toChars!5412 (transformation!3924 (rule!6127 (h!27289 tokens!598)))) (toChars!5412 (transformation!3924 (rule!6127 separatorToken!354)))) t!178868) tb!117353))

(declare-fun b!1921614 () Bool)

(declare-fun e!1228397 () Bool)

(declare-fun tp!549345 () Bool)

(declare-fun inv!28960 (Conc!7301) Bool)

(assert (=> b!1921614 (= e!1228397 (and (inv!28960 (c!312280 (dynLambda!10559 (toChars!5412 (transformation!3924 (rule!6127 separatorToken!354))) (value!123425 separatorToken!354)))) tp!549345))))

(declare-fun result!141824 () Bool)

(declare-fun inv!28961 (BalanceConc!14418) Bool)

(assert (=> tb!117353 (= result!141824 (and (inv!28961 (dynLambda!10559 (toChars!5412 (transformation!3924 (rule!6127 separatorToken!354))) (value!123425 separatorToken!354))) e!1228397))))

(assert (= tb!117353 b!1921614))

(declare-fun m!2356509 () Bool)

(assert (=> b!1921614 m!2356509))

(declare-fun m!2356511 () Bool)

(assert (=> tb!117353 m!2356511))

(assert (=> b!1921608 t!178868))

(declare-fun b_and!150283 () Bool)

(assert (= b_and!150273 (and (=> t!178868 result!141824) b_and!150283)))

(declare-fun t!178870 () Bool)

(declare-fun tb!117355 () Bool)

(assert (=> (and b!1921531 (= (toChars!5412 (transformation!3924 (h!27290 rules!3198))) (toChars!5412 (transformation!3924 (rule!6127 separatorToken!354)))) t!178870) tb!117355))

(declare-fun result!141828 () Bool)

(assert (= result!141828 result!141824))

(assert (=> b!1921608 t!178870))

(declare-fun b_and!150285 () Bool)

(assert (= b_and!150277 (and (=> t!178870 result!141828) b_and!150285)))

(declare-fun t!178872 () Bool)

(declare-fun tb!117357 () Bool)

(assert (=> (and b!1921533 (= (toChars!5412 (transformation!3924 (rule!6127 separatorToken!354))) (toChars!5412 (transformation!3924 (rule!6127 separatorToken!354)))) t!178872) tb!117357))

(declare-fun result!141830 () Bool)

(assert (= result!141830 result!141824))

(assert (=> b!1921608 t!178872))

(declare-fun b_and!150287 () Bool)

(assert (= b_and!150281 (and (=> t!178872 result!141830) b_and!150287)))

(declare-fun m!2356513 () Bool)

(assert (=> d!585543 m!2356513))

(declare-fun m!2356515 () Bool)

(assert (=> b!1921608 m!2356515))

(assert (=> b!1921608 m!2356515))

(declare-fun m!2356517 () Bool)

(assert (=> b!1921608 m!2356517))

(declare-fun m!2356519 () Bool)

(assert (=> b!1921609 m!2356519))

(assert (=> start!192436 d!585543))

(declare-fun d!585545 () Bool)

(declare-fun res!859402 () Bool)

(declare-fun e!1228402 () Bool)

(assert (=> d!585545 (=> res!859402 e!1228402)))

(assert (=> d!585545 (= res!859402 (not ((_ is Cons!21889) rules!3198)))))

(assert (=> d!585545 (= (sepAndNonSepRulesDisjointChars!1022 rules!3198 rules!3198) e!1228402)))

(declare-fun b!1921619 () Bool)

(declare-fun e!1228403 () Bool)

(assert (=> b!1921619 (= e!1228402 e!1228403)))

(declare-fun res!859403 () Bool)

(assert (=> b!1921619 (=> (not res!859403) (not e!1228403))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!440 (Rule!7648 List!21971) Bool)

(assert (=> b!1921619 (= res!859403 (ruleDisjointCharsFromAllFromOtherType!440 (h!27290 rules!3198) rules!3198))))

(declare-fun b!1921620 () Bool)

(assert (=> b!1921620 (= e!1228403 (sepAndNonSepRulesDisjointChars!1022 rules!3198 (t!178864 rules!3198)))))

(assert (= (and d!585545 (not res!859402)) b!1921619))

(assert (= (and b!1921619 res!859403) b!1921620))

(declare-fun m!2356521 () Bool)

(assert (=> b!1921619 m!2356521))

(declare-fun m!2356523 () Bool)

(assert (=> b!1921620 m!2356523))

(assert (=> b!1921534 d!585545))

(declare-fun d!585547 () Bool)

(declare-fun res!859408 () Bool)

(declare-fun e!1228408 () Bool)

(assert (=> d!585547 (=> res!859408 e!1228408)))

(assert (=> d!585547 (= res!859408 ((_ is Nil!21888) tokens!598))))

(assert (=> d!585547 (= (forall!4624 tokens!598 lambda!75023) e!1228408)))

(declare-fun b!1921625 () Bool)

(declare-fun e!1228409 () Bool)

(assert (=> b!1921625 (= e!1228408 e!1228409)))

(declare-fun res!859409 () Bool)

(assert (=> b!1921625 (=> (not res!859409) (not e!1228409))))

(declare-fun dynLambda!10561 (Int Token!7400) Bool)

(assert (=> b!1921625 (= res!859409 (dynLambda!10561 lambda!75023 (h!27289 tokens!598)))))

(declare-fun b!1921626 () Bool)

(assert (=> b!1921626 (= e!1228409 (forall!4624 (t!178863 tokens!598) lambda!75023))))

(assert (= (and d!585547 (not res!859408)) b!1921625))

(assert (= (and b!1921625 res!859409) b!1921626))

(declare-fun b_lambda!63475 () Bool)

(assert (=> (not b_lambda!63475) (not b!1921625)))

(declare-fun m!2356525 () Bool)

(assert (=> b!1921625 m!2356525))

(declare-fun m!2356527 () Bool)

(assert (=> b!1921626 m!2356527))

(assert (=> b!1921526 d!585547))

(declare-fun bs!414384 () Bool)

(declare-fun d!585549 () Bool)

(assert (= bs!414384 (and d!585549 b!1921526)))

(declare-fun lambda!75028 () Int)

(assert (=> bs!414384 (not (= lambda!75028 lambda!75023))))

(declare-fun b!1921659 () Bool)

(declare-fun e!1228432 () Bool)

(assert (=> b!1921659 (= e!1228432 true)))

(declare-fun b!1921658 () Bool)

(declare-fun e!1228431 () Bool)

(assert (=> b!1921658 (= e!1228431 e!1228432)))

(declare-fun b!1921657 () Bool)

(declare-fun e!1228430 () Bool)

(assert (=> b!1921657 (= e!1228430 e!1228431)))

(assert (=> d!585549 e!1228430))

(assert (= b!1921658 b!1921659))

(assert (= b!1921657 b!1921658))

(assert (= (and d!585549 ((_ is Cons!21889) rules!3198)) b!1921657))

(declare-fun order!13687 () Int)

(declare-fun order!13685 () Int)

(declare-fun dynLambda!10562 (Int Int) Int)

(declare-fun dynLambda!10563 (Int Int) Int)

(assert (=> b!1921659 (< (dynLambda!10562 order!13685 (toValue!5553 (transformation!3924 (h!27290 rules!3198)))) (dynLambda!10563 order!13687 lambda!75028))))

(declare-fun order!13689 () Int)

(declare-fun dynLambda!10564 (Int Int) Int)

(assert (=> b!1921659 (< (dynLambda!10564 order!13689 (toChars!5412 (transformation!3924 (h!27290 rules!3198)))) (dynLambda!10563 order!13687 lambda!75028))))

(assert (=> d!585549 true))

(declare-fun lt!736494 () Bool)

(assert (=> d!585549 (= lt!736494 (forall!4624 tokens!598 lambda!75028))))

(declare-fun e!1228421 () Bool)

(assert (=> d!585549 (= lt!736494 e!1228421)))

(declare-fun res!859414 () Bool)

(assert (=> d!585549 (=> res!859414 e!1228421)))

(assert (=> d!585549 (= res!859414 (not ((_ is Cons!21888) tokens!598)))))

(assert (=> d!585549 (not (isEmpty!13459 rules!3198))))

(assert (=> d!585549 (= (rulesProduceEachTokenIndividuallyList!1268 thiss!23328 rules!3198 tokens!598) lt!736494)))

(declare-fun b!1921643 () Bool)

(declare-fun e!1228420 () Bool)

(assert (=> b!1921643 (= e!1228421 e!1228420)))

(declare-fun res!859415 () Bool)

(assert (=> b!1921643 (=> (not res!859415) (not e!1228420))))

(assert (=> b!1921643 (= res!859415 (rulesProduceIndividualToken!1709 thiss!23328 rules!3198 (h!27289 tokens!598)))))

(declare-fun b!1921644 () Bool)

(assert (=> b!1921644 (= e!1228420 (rulesProduceEachTokenIndividuallyList!1268 thiss!23328 rules!3198 (t!178863 tokens!598)))))

(assert (= (and d!585549 (not res!859414)) b!1921643))

(assert (= (and b!1921643 res!859415) b!1921644))

(declare-fun m!2356529 () Bool)

(assert (=> d!585549 m!2356529))

(assert (=> d!585549 m!2356401))

(declare-fun m!2356531 () Bool)

(assert (=> b!1921643 m!2356531))

(declare-fun m!2356533 () Bool)

(assert (=> b!1921644 m!2356533))

(assert (=> b!1921524 d!585549))

(declare-fun b!1921662 () Bool)

(declare-fun res!859416 () Bool)

(declare-fun e!1228435 () Bool)

(assert (=> b!1921662 (=> res!859416 e!1228435)))

(assert (=> b!1921662 (= res!859416 (not ((_ is IntegerValue!12182) (value!123425 separatorToken!354))))))

(declare-fun e!1228434 () Bool)

(assert (=> b!1921662 (= e!1228434 e!1228435)))

(declare-fun b!1921663 () Bool)

(assert (=> b!1921663 (= e!1228435 (inv!15 (value!123425 separatorToken!354)))))

(declare-fun d!585551 () Bool)

(declare-fun c!312299 () Bool)

(assert (=> d!585551 (= c!312299 ((_ is IntegerValue!12180) (value!123425 separatorToken!354)))))

(declare-fun e!1228433 () Bool)

(assert (=> d!585551 (= (inv!21 (value!123425 separatorToken!354)) e!1228433)))

(declare-fun b!1921664 () Bool)

(assert (=> b!1921664 (= e!1228433 (inv!16 (value!123425 separatorToken!354)))))

(declare-fun b!1921665 () Bool)

(assert (=> b!1921665 (= e!1228434 (inv!17 (value!123425 separatorToken!354)))))

(declare-fun b!1921666 () Bool)

(assert (=> b!1921666 (= e!1228433 e!1228434)))

(declare-fun c!312298 () Bool)

(assert (=> b!1921666 (= c!312298 ((_ is IntegerValue!12181) (value!123425 separatorToken!354)))))

(assert (= (and d!585551 c!312299) b!1921664))

(assert (= (and d!585551 (not c!312299)) b!1921666))

(assert (= (and b!1921666 c!312298) b!1921665))

(assert (= (and b!1921666 (not c!312298)) b!1921662))

(assert (= (and b!1921662 (not res!859416)) b!1921663))

(declare-fun m!2356535 () Bool)

(assert (=> b!1921663 m!2356535))

(declare-fun m!2356537 () Bool)

(assert (=> b!1921664 m!2356537))

(declare-fun m!2356539 () Bool)

(assert (=> b!1921665 m!2356539))

(assert (=> b!1921525 d!585551))

(declare-fun d!585553 () Bool)

(declare-fun res!859417 () Bool)

(declare-fun e!1228436 () Bool)

(assert (=> d!585553 (=> (not res!859417) (not e!1228436))))

(assert (=> d!585553 (= res!859417 (not (isEmpty!13464 (originalCharacters!4731 (h!27289 tokens!598)))))))

(assert (=> d!585553 (= (inv!28958 (h!27289 tokens!598)) e!1228436)))

(declare-fun b!1921667 () Bool)

(declare-fun res!859418 () Bool)

(assert (=> b!1921667 (=> (not res!859418) (not e!1228436))))

(assert (=> b!1921667 (= res!859418 (= (originalCharacters!4731 (h!27289 tokens!598)) (list!8845 (dynLambda!10559 (toChars!5412 (transformation!3924 (rule!6127 (h!27289 tokens!598)))) (value!123425 (h!27289 tokens!598))))))))

(declare-fun b!1921668 () Bool)

(assert (=> b!1921668 (= e!1228436 (= (size!17076 (h!27289 tokens!598)) (size!17080 (originalCharacters!4731 (h!27289 tokens!598)))))))

(assert (= (and d!585553 res!859417) b!1921667))

(assert (= (and b!1921667 res!859418) b!1921668))

(declare-fun b_lambda!63477 () Bool)

(assert (=> (not b_lambda!63477) (not b!1921667)))

(declare-fun t!178878 () Bool)

(declare-fun tb!117359 () Bool)

(assert (=> (and b!1921520 (= (toChars!5412 (transformation!3924 (rule!6127 (h!27289 tokens!598)))) (toChars!5412 (transformation!3924 (rule!6127 (h!27289 tokens!598))))) t!178878) tb!117359))

(declare-fun b!1921669 () Bool)

(declare-fun e!1228437 () Bool)

(declare-fun tp!549346 () Bool)

(assert (=> b!1921669 (= e!1228437 (and (inv!28960 (c!312280 (dynLambda!10559 (toChars!5412 (transformation!3924 (rule!6127 (h!27289 tokens!598)))) (value!123425 (h!27289 tokens!598))))) tp!549346))))

(declare-fun result!141832 () Bool)

(assert (=> tb!117359 (= result!141832 (and (inv!28961 (dynLambda!10559 (toChars!5412 (transformation!3924 (rule!6127 (h!27289 tokens!598)))) (value!123425 (h!27289 tokens!598)))) e!1228437))))

(assert (= tb!117359 b!1921669))

(declare-fun m!2356541 () Bool)

(assert (=> b!1921669 m!2356541))

(declare-fun m!2356543 () Bool)

(assert (=> tb!117359 m!2356543))

(assert (=> b!1921667 t!178878))

(declare-fun b_and!150289 () Bool)

(assert (= b_and!150283 (and (=> t!178878 result!141832) b_and!150289)))

(declare-fun t!178880 () Bool)

(declare-fun tb!117361 () Bool)

(assert (=> (and b!1921531 (= (toChars!5412 (transformation!3924 (h!27290 rules!3198))) (toChars!5412 (transformation!3924 (rule!6127 (h!27289 tokens!598))))) t!178880) tb!117361))

(declare-fun result!141834 () Bool)

(assert (= result!141834 result!141832))

(assert (=> b!1921667 t!178880))

(declare-fun b_and!150291 () Bool)

(assert (= b_and!150285 (and (=> t!178880 result!141834) b_and!150291)))

(declare-fun tb!117363 () Bool)

(declare-fun t!178882 () Bool)

(assert (=> (and b!1921533 (= (toChars!5412 (transformation!3924 (rule!6127 separatorToken!354))) (toChars!5412 (transformation!3924 (rule!6127 (h!27289 tokens!598))))) t!178882) tb!117363))

(declare-fun result!141836 () Bool)

(assert (= result!141836 result!141832))

(assert (=> b!1921667 t!178882))

(declare-fun b_and!150293 () Bool)

(assert (= b_and!150287 (and (=> t!178882 result!141836) b_and!150293)))

(declare-fun m!2356545 () Bool)

(assert (=> d!585553 m!2356545))

(declare-fun m!2356547 () Bool)

(assert (=> b!1921667 m!2356547))

(assert (=> b!1921667 m!2356547))

(declare-fun m!2356549 () Bool)

(assert (=> b!1921667 m!2356549))

(declare-fun m!2356551 () Bool)

(assert (=> b!1921668 m!2356551))

(assert (=> b!1921514 d!585553))

(declare-fun d!585555 () Bool)

(assert (=> d!585555 (= (inv!28955 (tag!4364 (rule!6127 (h!27289 tokens!598)))) (= (mod (str.len (value!123424 (tag!4364 (rule!6127 (h!27289 tokens!598))))) 2) 0))))

(assert (=> b!1921528 d!585555))

(declare-fun d!585557 () Bool)

(declare-fun res!859419 () Bool)

(declare-fun e!1228438 () Bool)

(assert (=> d!585557 (=> (not res!859419) (not e!1228438))))

(assert (=> d!585557 (= res!859419 (semiInverseModEq!1557 (toChars!5412 (transformation!3924 (rule!6127 (h!27289 tokens!598)))) (toValue!5553 (transformation!3924 (rule!6127 (h!27289 tokens!598))))))))

(assert (=> d!585557 (= (inv!28959 (transformation!3924 (rule!6127 (h!27289 tokens!598)))) e!1228438)))

(declare-fun b!1921670 () Bool)

(assert (=> b!1921670 (= e!1228438 (equivClasses!1484 (toChars!5412 (transformation!3924 (rule!6127 (h!27289 tokens!598)))) (toValue!5553 (transformation!3924 (rule!6127 (h!27289 tokens!598))))))))

(assert (= (and d!585557 res!859419) b!1921670))

(declare-fun m!2356553 () Bool)

(assert (=> d!585557 m!2356553))

(declare-fun m!2356555 () Bool)

(assert (=> b!1921670 m!2356555))

(assert (=> b!1921528 d!585557))

(declare-fun d!585559 () Bool)

(assert (=> d!585559 (= (isEmpty!13460 tokens!598) ((_ is Nil!21888) tokens!598))))

(assert (=> b!1921529 d!585559))

(declare-fun d!585561 () Bool)

(assert (=> d!585561 (= (inv!28955 (tag!4364 (rule!6127 separatorToken!354))) (= (mod (str.len (value!123424 (tag!4364 (rule!6127 separatorToken!354)))) 2) 0))))

(assert (=> b!1921518 d!585561))

(declare-fun d!585563 () Bool)

(declare-fun res!859420 () Bool)

(declare-fun e!1228439 () Bool)

(assert (=> d!585563 (=> (not res!859420) (not e!1228439))))

(assert (=> d!585563 (= res!859420 (semiInverseModEq!1557 (toChars!5412 (transformation!3924 (rule!6127 separatorToken!354))) (toValue!5553 (transformation!3924 (rule!6127 separatorToken!354)))))))

(assert (=> d!585563 (= (inv!28959 (transformation!3924 (rule!6127 separatorToken!354))) e!1228439)))

(declare-fun b!1921671 () Bool)

(assert (=> b!1921671 (= e!1228439 (equivClasses!1484 (toChars!5412 (transformation!3924 (rule!6127 separatorToken!354))) (toValue!5553 (transformation!3924 (rule!6127 separatorToken!354)))))))

(assert (= (and d!585563 res!859420) b!1921671))

(declare-fun m!2356557 () Bool)

(assert (=> d!585563 m!2356557))

(declare-fun m!2356559 () Bool)

(assert (=> b!1921671 m!2356559))

(assert (=> b!1921518 d!585563))

(declare-fun d!585565 () Bool)

(assert (=> d!585565 (= (isEmpty!13459 rules!3198) ((_ is Nil!21889) rules!3198))))

(assert (=> b!1921516 d!585565))

(declare-fun d!585567 () Bool)

(declare-fun isEmpty!13466 (Option!4524) Bool)

(assert (=> d!585567 (= (isDefined!3818 (maxPrefix!1975 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!576 thiss!23328 rules!3198 tokens!598 separatorToken!354))) (not (isEmpty!13466 (maxPrefix!1975 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!576 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))))

(declare-fun bs!414385 () Bool)

(assert (= bs!414385 d!585567))

(assert (=> bs!414385 m!2356415))

(declare-fun m!2356561 () Bool)

(assert (=> bs!414385 m!2356561))

(assert (=> b!1921517 d!585567))

(declare-fun b!1921726 () Bool)

(declare-fun res!859443 () Bool)

(declare-fun e!1228470 () Bool)

(assert (=> b!1921726 (=> (not res!859443) (not e!1228470))))

(declare-fun lt!736514 () Option!4524)

(declare-fun get!6883 (Option!4524) tuple2!20502)

(declare-fun apply!5671 (TokenValueInjection!7704 BalanceConc!14418) TokenValue!4060)

(declare-fun seqFromList!2778 (List!21969) BalanceConc!14418)

(assert (=> b!1921726 (= res!859443 (= (value!123425 (_1!11720 (get!6883 lt!736514))) (apply!5671 (transformation!3924 (rule!6127 (_1!11720 (get!6883 lt!736514)))) (seqFromList!2778 (originalCharacters!4731 (_1!11720 (get!6883 lt!736514)))))))))

(declare-fun b!1921727 () Bool)

(declare-fun res!859440 () Bool)

(assert (=> b!1921727 (=> (not res!859440) (not e!1228470))))

(assert (=> b!1921727 (= res!859440 (< (size!17080 (_2!11720 (get!6883 lt!736514))) (size!17080 (printWithSeparatorTokenWhenNeededList!576 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))

(declare-fun b!1921728 () Bool)

(declare-fun e!1228469 () Option!4524)

(declare-fun call!118055 () Option!4524)

(assert (=> b!1921728 (= e!1228469 call!118055)))

(declare-fun b!1921729 () Bool)

(declare-fun res!859439 () Bool)

(assert (=> b!1921729 (=> (not res!859439) (not e!1228470))))

(declare-fun ++!5863 (List!21969 List!21969) List!21969)

(declare-fun charsOf!2464 (Token!7400) BalanceConc!14418)

(assert (=> b!1921729 (= res!859439 (= (++!5863 (list!8845 (charsOf!2464 (_1!11720 (get!6883 lt!736514)))) (_2!11720 (get!6883 lt!736514))) (printWithSeparatorTokenWhenNeededList!576 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun b!1921730 () Bool)

(declare-fun e!1228468 () Bool)

(assert (=> b!1921730 (= e!1228468 e!1228470)))

(declare-fun res!859438 () Bool)

(assert (=> b!1921730 (=> (not res!859438) (not e!1228470))))

(assert (=> b!1921730 (= res!859438 (isDefined!3818 lt!736514))))

(declare-fun b!1921731 () Bool)

(declare-fun res!859442 () Bool)

(assert (=> b!1921731 (=> (not res!859442) (not e!1228470))))

(declare-fun matchR!2617 (Regex!5349 List!21969) Bool)

(assert (=> b!1921731 (= res!859442 (matchR!2617 (regex!3924 (rule!6127 (_1!11720 (get!6883 lt!736514)))) (list!8845 (charsOf!2464 (_1!11720 (get!6883 lt!736514))))))))

(declare-fun b!1921732 () Bool)

(declare-fun res!859441 () Bool)

(assert (=> b!1921732 (=> (not res!859441) (not e!1228470))))

(assert (=> b!1921732 (= res!859441 (= (list!8845 (charsOf!2464 (_1!11720 (get!6883 lt!736514)))) (originalCharacters!4731 (_1!11720 (get!6883 lt!736514)))))))

(declare-fun b!1921733 () Bool)

(declare-fun contains!3945 (List!21971 Rule!7648) Bool)

(assert (=> b!1921733 (= e!1228470 (contains!3945 rules!3198 (rule!6127 (_1!11720 (get!6883 lt!736514)))))))

(declare-fun d!585569 () Bool)

(assert (=> d!585569 e!1228468))

(declare-fun res!859444 () Bool)

(assert (=> d!585569 (=> res!859444 e!1228468)))

(assert (=> d!585569 (= res!859444 (isEmpty!13466 lt!736514))))

(assert (=> d!585569 (= lt!736514 e!1228469)))

(declare-fun c!312312 () Bool)

(assert (=> d!585569 (= c!312312 (and ((_ is Cons!21889) rules!3198) ((_ is Nil!21889) (t!178864 rules!3198))))))

(declare-datatypes ((Unit!36208 0))(
  ( (Unit!36209) )
))
(declare-fun lt!736512 () Unit!36208)

(declare-fun lt!736511 () Unit!36208)

(assert (=> d!585569 (= lt!736512 lt!736511)))

(declare-fun isPrefix!1933 (List!21969 List!21969) Bool)

(assert (=> d!585569 (isPrefix!1933 (printWithSeparatorTokenWhenNeededList!576 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!576 thiss!23328 rules!3198 tokens!598 separatorToken!354))))

(declare-fun lemmaIsPrefixRefl!1251 (List!21969 List!21969) Unit!36208)

(assert (=> d!585569 (= lt!736511 (lemmaIsPrefixRefl!1251 (printWithSeparatorTokenWhenNeededList!576 thiss!23328 rules!3198 tokens!598 separatorToken!354) (printWithSeparatorTokenWhenNeededList!576 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun rulesValidInductive!1332 (LexerInterface!3537 List!21971) Bool)

(assert (=> d!585569 (rulesValidInductive!1332 thiss!23328 rules!3198)))

(assert (=> d!585569 (= (maxPrefix!1975 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!576 thiss!23328 rules!3198 tokens!598 separatorToken!354)) lt!736514)))

(declare-fun bm!118050 () Bool)

(declare-fun maxPrefixOneRule!1215 (LexerInterface!3537 Rule!7648 List!21969) Option!4524)

(assert (=> bm!118050 (= call!118055 (maxPrefixOneRule!1215 thiss!23328 (h!27290 rules!3198) (printWithSeparatorTokenWhenNeededList!576 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun b!1921734 () Bool)

(declare-fun lt!736515 () Option!4524)

(declare-fun lt!736513 () Option!4524)

(assert (=> b!1921734 (= e!1228469 (ite (and ((_ is None!4523) lt!736515) ((_ is None!4523) lt!736513)) None!4523 (ite ((_ is None!4523) lt!736513) lt!736515 (ite ((_ is None!4523) lt!736515) lt!736513 (ite (>= (size!17076 (_1!11720 (v!26596 lt!736515))) (size!17076 (_1!11720 (v!26596 lt!736513)))) lt!736515 lt!736513)))))))

(assert (=> b!1921734 (= lt!736515 call!118055)))

(assert (=> b!1921734 (= lt!736513 (maxPrefix!1975 thiss!23328 (t!178864 rules!3198) (printWithSeparatorTokenWhenNeededList!576 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(assert (= (and d!585569 c!312312) b!1921728))

(assert (= (and d!585569 (not c!312312)) b!1921734))

(assert (= (or b!1921728 b!1921734) bm!118050))

(assert (= (and d!585569 (not res!859444)) b!1921730))

(assert (= (and b!1921730 res!859438) b!1921732))

(assert (= (and b!1921732 res!859441) b!1921727))

(assert (= (and b!1921727 res!859440) b!1921729))

(assert (= (and b!1921729 res!859439) b!1921726))

(assert (= (and b!1921726 res!859443) b!1921731))

(assert (= (and b!1921731 res!859442) b!1921733))

(declare-fun m!2356599 () Bool)

(assert (=> b!1921730 m!2356599))

(declare-fun m!2356601 () Bool)

(assert (=> b!1921726 m!2356601))

(declare-fun m!2356603 () Bool)

(assert (=> b!1921726 m!2356603))

(assert (=> b!1921726 m!2356603))

(declare-fun m!2356605 () Bool)

(assert (=> b!1921726 m!2356605))

(assert (=> b!1921727 m!2356601))

(declare-fun m!2356607 () Bool)

(assert (=> b!1921727 m!2356607))

(assert (=> b!1921727 m!2356413))

(declare-fun m!2356609 () Bool)

(assert (=> b!1921727 m!2356609))

(assert (=> b!1921729 m!2356601))

(declare-fun m!2356611 () Bool)

(assert (=> b!1921729 m!2356611))

(assert (=> b!1921729 m!2356611))

(declare-fun m!2356613 () Bool)

(assert (=> b!1921729 m!2356613))

(assert (=> b!1921729 m!2356613))

(declare-fun m!2356615 () Bool)

(assert (=> b!1921729 m!2356615))

(assert (=> b!1921733 m!2356601))

(declare-fun m!2356617 () Bool)

(assert (=> b!1921733 m!2356617))

(assert (=> b!1921731 m!2356601))

(assert (=> b!1921731 m!2356611))

(assert (=> b!1921731 m!2356611))

(assert (=> b!1921731 m!2356613))

(assert (=> b!1921731 m!2356613))

(declare-fun m!2356619 () Bool)

(assert (=> b!1921731 m!2356619))

(declare-fun m!2356621 () Bool)

(assert (=> d!585569 m!2356621))

(assert (=> d!585569 m!2356413))

(assert (=> d!585569 m!2356413))

(declare-fun m!2356623 () Bool)

(assert (=> d!585569 m!2356623))

(assert (=> d!585569 m!2356413))

(assert (=> d!585569 m!2356413))

(declare-fun m!2356625 () Bool)

(assert (=> d!585569 m!2356625))

(declare-fun m!2356627 () Bool)

(assert (=> d!585569 m!2356627))

(assert (=> b!1921732 m!2356601))

(assert (=> b!1921732 m!2356611))

(assert (=> b!1921732 m!2356611))

(assert (=> b!1921732 m!2356613))

(assert (=> bm!118050 m!2356413))

(declare-fun m!2356629 () Bool)

(assert (=> bm!118050 m!2356629))

(assert (=> b!1921734 m!2356413))

(declare-fun m!2356631 () Bool)

(assert (=> b!1921734 m!2356631))

(assert (=> b!1921517 d!585569))

(declare-fun bs!414390 () Bool)

(declare-fun b!1921852 () Bool)

(assert (= bs!414390 (and b!1921852 b!1921526)))

(declare-fun lambda!75035 () Int)

(assert (=> bs!414390 (not (= lambda!75035 lambda!75023))))

(declare-fun bs!414391 () Bool)

(assert (= bs!414391 (and b!1921852 d!585549)))

(assert (=> bs!414391 (= lambda!75035 lambda!75028)))

(declare-fun b!1921859 () Bool)

(declare-fun e!1228561 () Bool)

(assert (=> b!1921859 (= e!1228561 true)))

(declare-fun b!1921858 () Bool)

(declare-fun e!1228560 () Bool)

(assert (=> b!1921858 (= e!1228560 e!1228561)))

(declare-fun b!1921857 () Bool)

(declare-fun e!1228559 () Bool)

(assert (=> b!1921857 (= e!1228559 e!1228560)))

(assert (=> b!1921852 e!1228559))

(assert (= b!1921858 b!1921859))

(assert (= b!1921857 b!1921858))

(assert (= (and b!1921852 ((_ is Cons!21889) rules!3198)) b!1921857))

(assert (=> b!1921859 (< (dynLambda!10562 order!13685 (toValue!5553 (transformation!3924 (h!27290 rules!3198)))) (dynLambda!10563 order!13687 lambda!75035))))

(assert (=> b!1921859 (< (dynLambda!10564 order!13689 (toChars!5412 (transformation!3924 (h!27290 rules!3198)))) (dynLambda!10563 order!13687 lambda!75035))))

(assert (=> b!1921852 true))

(declare-fun c!312325 () Bool)

(declare-fun call!118068 () List!21969)

(declare-fun bm!118061 () Bool)

(declare-fun call!118066 () BalanceConc!14418)

(declare-fun call!118069 () BalanceConc!14418)

(assert (=> bm!118061 (= call!118068 (list!8845 (ite c!312325 call!118069 call!118066)))))

(declare-fun b!1921850 () Bool)

(declare-fun e!1228556 () List!21969)

(declare-fun call!118067 () List!21969)

(assert (=> b!1921850 (= e!1228556 call!118067)))

(declare-fun bm!118062 () Bool)

(declare-fun c!312326 () Bool)

(assert (=> bm!118062 (= call!118069 (charsOf!2464 (ite c!312325 (h!27289 tokens!598) (ite c!312326 separatorToken!354 (h!27289 tokens!598)))))))

(declare-fun b!1921851 () Bool)

(declare-fun e!1228557 () List!21969)

(assert (=> b!1921851 (= e!1228557 Nil!21887)))

(declare-fun bm!118063 () Bool)

(declare-fun call!118070 () List!21969)

(assert (=> bm!118063 (= call!118070 call!118068)))

(assert (=> b!1921852 (= e!1228557 e!1228556)))

(declare-fun lt!736532 () Unit!36208)

(declare-fun forallContained!704 (List!21970 Int Token!7400) Unit!36208)

(assert (=> b!1921852 (= lt!736532 (forallContained!704 tokens!598 lambda!75035 (h!27289 tokens!598)))))

(declare-fun lt!736534 () List!21969)

(assert (=> b!1921852 (= lt!736534 (printWithSeparatorTokenWhenNeededList!576 thiss!23328 rules!3198 (t!178863 tokens!598) separatorToken!354))))

(declare-fun lt!736536 () Option!4524)

(assert (=> b!1921852 (= lt!736536 (maxPrefix!1975 thiss!23328 rules!3198 (++!5863 (list!8845 (charsOf!2464 (h!27289 tokens!598))) lt!736534)))))

(assert (=> b!1921852 (= c!312325 (and ((_ is Some!4523) lt!736536) (= (_1!11720 (v!26596 lt!736536)) (h!27289 tokens!598))))))

(declare-fun bm!118064 () Bool)

(declare-fun c!312327 () Bool)

(assert (=> bm!118064 (= c!312327 c!312325)))

(declare-fun e!1228555 () List!21969)

(assert (=> bm!118064 (= call!118067 (++!5863 e!1228555 (ite c!312325 lt!736534 call!118070)))))

(declare-fun b!1921849 () Bool)

(assert (=> b!1921849 (= e!1228555 (list!8845 (charsOf!2464 (h!27289 tokens!598))))))

(declare-fun d!585575 () Bool)

(declare-fun c!312324 () Bool)

(assert (=> d!585575 (= c!312324 ((_ is Cons!21888) tokens!598))))

(assert (=> d!585575 (= (printWithSeparatorTokenWhenNeededList!576 thiss!23328 rules!3198 tokens!598 separatorToken!354) e!1228557)))

(declare-fun b!1921853 () Bool)

(declare-fun e!1228558 () List!21969)

(assert (=> b!1921853 (= e!1228558 Nil!21887)))

(declare-fun printTailRec!1013 (LexerInterface!3537 BalanceConc!14422 Int BalanceConc!14418) BalanceConc!14418)

(assert (=> b!1921853 (= (print!1507 thiss!23328 (singletonSeq!1908 (h!27289 tokens!598))) (printTailRec!1013 thiss!23328 (singletonSeq!1908 (h!27289 tokens!598)) 0 (BalanceConc!14419 Empty!7301)))))

(declare-fun lt!736533 () Unit!36208)

(declare-fun Unit!36210 () Unit!36208)

(assert (=> b!1921853 (= lt!736533 Unit!36210)))

(declare-fun lt!736531 () Unit!36208)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!735 (LexerInterface!3537 List!21971 List!21969 List!21969) Unit!36208)

(assert (=> b!1921853 (= lt!736531 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!735 thiss!23328 rules!3198 call!118070 lt!736534))))

(assert (=> b!1921853 false))

(declare-fun lt!736535 () Unit!36208)

(declare-fun Unit!36211 () Unit!36208)

(assert (=> b!1921853 (= lt!736535 Unit!36211)))

(declare-fun b!1921854 () Bool)

(assert (=> b!1921854 (= c!312326 (and ((_ is Some!4523) lt!736536) (not (= (_1!11720 (v!26596 lt!736536)) (h!27289 tokens!598)))))))

(assert (=> b!1921854 (= e!1228556 e!1228558)))

(declare-fun b!1921855 () Bool)

(assert (=> b!1921855 (= e!1228555 call!118068)))

(declare-fun bm!118065 () Bool)

(assert (=> bm!118065 (= call!118066 call!118069)))

(declare-fun b!1921856 () Bool)

(assert (=> b!1921856 (= e!1228558 (++!5863 call!118067 lt!736534))))

(assert (= (and d!585575 c!312324) b!1921852))

(assert (= (and d!585575 (not c!312324)) b!1921851))

(assert (= (and b!1921852 c!312325) b!1921850))

(assert (= (and b!1921852 (not c!312325)) b!1921854))

(assert (= (and b!1921854 c!312326) b!1921856))

(assert (= (and b!1921854 (not c!312326)) b!1921853))

(assert (= (or b!1921856 b!1921853) bm!118065))

(assert (= (or b!1921856 b!1921853) bm!118063))

(assert (= (or b!1921850 bm!118065) bm!118062))

(assert (= (or b!1921850 bm!118063) bm!118061))

(assert (= (or b!1921850 b!1921856) bm!118064))

(assert (= (and bm!118064 c!312327) b!1921855))

(assert (= (and bm!118064 (not c!312327)) b!1921849))

(declare-fun m!2356701 () Bool)

(assert (=> bm!118061 m!2356701))

(declare-fun m!2356703 () Bool)

(assert (=> b!1921852 m!2356703))

(declare-fun m!2356705 () Bool)

(assert (=> b!1921852 m!2356705))

(declare-fun m!2356707 () Bool)

(assert (=> b!1921852 m!2356707))

(declare-fun m!2356709 () Bool)

(assert (=> b!1921852 m!2356709))

(declare-fun m!2356711 () Bool)

(assert (=> b!1921852 m!2356711))

(declare-fun m!2356713 () Bool)

(assert (=> b!1921852 m!2356713))

(assert (=> b!1921852 m!2356711))

(assert (=> b!1921852 m!2356713))

(assert (=> b!1921852 m!2356703))

(declare-fun m!2356715 () Bool)

(assert (=> b!1921856 m!2356715))

(assert (=> b!1921849 m!2356711))

(assert (=> b!1921849 m!2356711))

(assert (=> b!1921849 m!2356713))

(declare-fun m!2356717 () Bool)

(assert (=> bm!118064 m!2356717))

(declare-fun m!2356719 () Bool)

(assert (=> b!1921853 m!2356719))

(assert (=> b!1921853 m!2356719))

(declare-fun m!2356721 () Bool)

(assert (=> b!1921853 m!2356721))

(assert (=> b!1921853 m!2356719))

(declare-fun m!2356723 () Bool)

(assert (=> b!1921853 m!2356723))

(declare-fun m!2356725 () Bool)

(assert (=> b!1921853 m!2356725))

(declare-fun m!2356727 () Bool)

(assert (=> bm!118062 m!2356727))

(assert (=> b!1921517 d!585575))

(declare-fun e!1228564 () Bool)

(assert (=> b!1921521 (= tp!549331 e!1228564)))

(declare-fun b!1921870 () Bool)

(declare-fun tp_is_empty!9121 () Bool)

(assert (=> b!1921870 (= e!1228564 tp_is_empty!9121)))

(declare-fun b!1921872 () Bool)

(declare-fun tp!549417 () Bool)

(assert (=> b!1921872 (= e!1228564 tp!549417)))

(declare-fun b!1921871 () Bool)

(declare-fun tp!549421 () Bool)

(declare-fun tp!549420 () Bool)

(assert (=> b!1921871 (= e!1228564 (and tp!549421 tp!549420))))

(declare-fun b!1921873 () Bool)

(declare-fun tp!549418 () Bool)

(declare-fun tp!549419 () Bool)

(assert (=> b!1921873 (= e!1228564 (and tp!549418 tp!549419))))

(assert (= (and b!1921521 ((_ is ElementMatch!5349) (regex!3924 (h!27290 rules!3198)))) b!1921870))

(assert (= (and b!1921521 ((_ is Concat!9410) (regex!3924 (h!27290 rules!3198)))) b!1921871))

(assert (= (and b!1921521 ((_ is Star!5349) (regex!3924 (h!27290 rules!3198)))) b!1921872))

(assert (= (and b!1921521 ((_ is Union!5349) (regex!3924 (h!27290 rules!3198)))) b!1921873))

(declare-fun b!1921878 () Bool)

(declare-fun e!1228567 () Bool)

(declare-fun tp!549424 () Bool)

(assert (=> b!1921878 (= e!1228567 (and tp_is_empty!9121 tp!549424))))

(assert (=> b!1921519 (= tp!549337 e!1228567)))

(assert (= (and b!1921519 ((_ is Cons!21887) (originalCharacters!4731 (h!27289 tokens!598)))) b!1921878))

(declare-fun b!1921879 () Bool)

(declare-fun e!1228568 () Bool)

(declare-fun tp!549425 () Bool)

(assert (=> b!1921879 (= e!1228568 (and tp_is_empty!9121 tp!549425))))

(assert (=> b!1921525 (= tp!549330 e!1228568)))

(assert (= (and b!1921525 ((_ is Cons!21887) (originalCharacters!4731 separatorToken!354))) b!1921879))

(declare-fun b!1921893 () Bool)

(declare-fun b_free!55037 () Bool)

(declare-fun b_next!55741 () Bool)

(assert (=> b!1921893 (= b_free!55037 (not b_next!55741))))

(declare-fun tp!549440 () Bool)

(declare-fun b_and!150315 () Bool)

(assert (=> b!1921893 (= tp!549440 b_and!150315)))

(declare-fun b_free!55039 () Bool)

(declare-fun b_next!55743 () Bool)

(assert (=> b!1921893 (= b_free!55039 (not b_next!55743))))

(declare-fun t!178908 () Bool)

(declare-fun tb!117385 () Bool)

(assert (=> (and b!1921893 (= (toChars!5412 (transformation!3924 (rule!6127 (h!27289 (t!178863 tokens!598))))) (toChars!5412 (transformation!3924 (rule!6127 separatorToken!354)))) t!178908) tb!117385))

(declare-fun result!141874 () Bool)

(assert (= result!141874 result!141824))

(assert (=> b!1921608 t!178908))

(declare-fun t!178910 () Bool)

(declare-fun tb!117387 () Bool)

(assert (=> (and b!1921893 (= (toChars!5412 (transformation!3924 (rule!6127 (h!27289 (t!178863 tokens!598))))) (toChars!5412 (transformation!3924 (rule!6127 (h!27289 tokens!598))))) t!178910) tb!117387))

(declare-fun result!141876 () Bool)

(assert (= result!141876 result!141832))

(assert (=> b!1921667 t!178910))

(declare-fun b_and!150317 () Bool)

(declare-fun tp!549438 () Bool)

(assert (=> b!1921893 (= tp!549438 (and (=> t!178908 result!141874) (=> t!178910 result!141876) b_and!150317))))

(declare-fun e!1228584 () Bool)

(assert (=> b!1921514 (= tp!549333 e!1228584)))

(declare-fun e!1228583 () Bool)

(declare-fun e!1228585 () Bool)

(declare-fun tp!549439 () Bool)

(declare-fun b!1921892 () Bool)

(assert (=> b!1921892 (= e!1228585 (and tp!549439 (inv!28955 (tag!4364 (rule!6127 (h!27289 (t!178863 tokens!598))))) (inv!28959 (transformation!3924 (rule!6127 (h!27289 (t!178863 tokens!598))))) e!1228583))))

(declare-fun b!1921891 () Bool)

(declare-fun e!1228582 () Bool)

(declare-fun tp!549437 () Bool)

(assert (=> b!1921891 (= e!1228582 (and (inv!21 (value!123425 (h!27289 (t!178863 tokens!598)))) e!1228585 tp!549437))))

(assert (=> b!1921893 (= e!1228583 (and tp!549440 tp!549438))))

(declare-fun b!1921890 () Bool)

(declare-fun tp!549436 () Bool)

(assert (=> b!1921890 (= e!1228584 (and (inv!28958 (h!27289 (t!178863 tokens!598))) e!1228582 tp!549436))))

(assert (= b!1921892 b!1921893))

(assert (= b!1921891 b!1921892))

(assert (= b!1921890 b!1921891))

(assert (= (and b!1921514 ((_ is Cons!21888) (t!178863 tokens!598))) b!1921890))

(declare-fun m!2356729 () Bool)

(assert (=> b!1921892 m!2356729))

(declare-fun m!2356731 () Bool)

(assert (=> b!1921892 m!2356731))

(declare-fun m!2356733 () Bool)

(assert (=> b!1921891 m!2356733))

(declare-fun m!2356735 () Bool)

(assert (=> b!1921890 m!2356735))

(declare-fun e!1228587 () Bool)

(assert (=> b!1921528 (= tp!549336 e!1228587)))

(declare-fun b!1921894 () Bool)

(assert (=> b!1921894 (= e!1228587 tp_is_empty!9121)))

(declare-fun b!1921896 () Bool)

(declare-fun tp!549441 () Bool)

(assert (=> b!1921896 (= e!1228587 tp!549441)))

(declare-fun b!1921895 () Bool)

(declare-fun tp!549445 () Bool)

(declare-fun tp!549444 () Bool)

(assert (=> b!1921895 (= e!1228587 (and tp!549445 tp!549444))))

(declare-fun b!1921897 () Bool)

(declare-fun tp!549442 () Bool)

(declare-fun tp!549443 () Bool)

(assert (=> b!1921897 (= e!1228587 (and tp!549442 tp!549443))))

(assert (= (and b!1921528 ((_ is ElementMatch!5349) (regex!3924 (rule!6127 (h!27289 tokens!598))))) b!1921894))

(assert (= (and b!1921528 ((_ is Concat!9410) (regex!3924 (rule!6127 (h!27289 tokens!598))))) b!1921895))

(assert (= (and b!1921528 ((_ is Star!5349) (regex!3924 (rule!6127 (h!27289 tokens!598))))) b!1921896))

(assert (= (and b!1921528 ((_ is Union!5349) (regex!3924 (rule!6127 (h!27289 tokens!598))))) b!1921897))

(declare-fun e!1228588 () Bool)

(assert (=> b!1921518 (= tp!549335 e!1228588)))

(declare-fun b!1921898 () Bool)

(assert (=> b!1921898 (= e!1228588 tp_is_empty!9121)))

(declare-fun b!1921900 () Bool)

(declare-fun tp!549446 () Bool)

(assert (=> b!1921900 (= e!1228588 tp!549446)))

(declare-fun b!1921899 () Bool)

(declare-fun tp!549450 () Bool)

(declare-fun tp!549449 () Bool)

(assert (=> b!1921899 (= e!1228588 (and tp!549450 tp!549449))))

(declare-fun b!1921901 () Bool)

(declare-fun tp!549447 () Bool)

(declare-fun tp!549448 () Bool)

(assert (=> b!1921901 (= e!1228588 (and tp!549447 tp!549448))))

(assert (= (and b!1921518 ((_ is ElementMatch!5349) (regex!3924 (rule!6127 separatorToken!354)))) b!1921898))

(assert (= (and b!1921518 ((_ is Concat!9410) (regex!3924 (rule!6127 separatorToken!354)))) b!1921899))

(assert (= (and b!1921518 ((_ is Star!5349) (regex!3924 (rule!6127 separatorToken!354)))) b!1921900))

(assert (= (and b!1921518 ((_ is Union!5349) (regex!3924 (rule!6127 separatorToken!354)))) b!1921901))

(declare-fun b!1921912 () Bool)

(declare-fun b_free!55041 () Bool)

(declare-fun b_next!55745 () Bool)

(assert (=> b!1921912 (= b_free!55041 (not b_next!55745))))

(declare-fun tp!549462 () Bool)

(declare-fun b_and!150319 () Bool)

(assert (=> b!1921912 (= tp!549462 b_and!150319)))

(declare-fun b_free!55043 () Bool)

(declare-fun b_next!55747 () Bool)

(assert (=> b!1921912 (= b_free!55043 (not b_next!55747))))

(declare-fun t!178912 () Bool)

(declare-fun tb!117389 () Bool)

(assert (=> (and b!1921912 (= (toChars!5412 (transformation!3924 (h!27290 (t!178864 rules!3198)))) (toChars!5412 (transformation!3924 (rule!6127 separatorToken!354)))) t!178912) tb!117389))

(declare-fun result!141880 () Bool)

(assert (= result!141880 result!141824))

(assert (=> b!1921608 t!178912))

(declare-fun tb!117391 () Bool)

(declare-fun t!178914 () Bool)

(assert (=> (and b!1921912 (= (toChars!5412 (transformation!3924 (h!27290 (t!178864 rules!3198)))) (toChars!5412 (transformation!3924 (rule!6127 (h!27289 tokens!598))))) t!178914) tb!117391))

(declare-fun result!141882 () Bool)

(assert (= result!141882 result!141832))

(assert (=> b!1921667 t!178914))

(declare-fun tp!549459 () Bool)

(declare-fun b_and!150321 () Bool)

(assert (=> b!1921912 (= tp!549459 (and (=> t!178912 result!141880) (=> t!178914 result!141882) b_and!150321))))

(declare-fun e!1228600 () Bool)

(assert (=> b!1921912 (= e!1228600 (and tp!549462 tp!549459))))

(declare-fun b!1921911 () Bool)

(declare-fun tp!549461 () Bool)

(declare-fun e!1228598 () Bool)

(assert (=> b!1921911 (= e!1228598 (and tp!549461 (inv!28955 (tag!4364 (h!27290 (t!178864 rules!3198)))) (inv!28959 (transformation!3924 (h!27290 (t!178864 rules!3198)))) e!1228600))))

(declare-fun b!1921910 () Bool)

(declare-fun e!1228597 () Bool)

(declare-fun tp!549460 () Bool)

(assert (=> b!1921910 (= e!1228597 (and e!1228598 tp!549460))))

(assert (=> b!1921527 (= tp!549332 e!1228597)))

(assert (= b!1921911 b!1921912))

(assert (= b!1921910 b!1921911))

(assert (= (and b!1921527 ((_ is Cons!21889) (t!178864 rules!3198))) b!1921910))

(declare-fun m!2356737 () Bool)

(assert (=> b!1921911 m!2356737))

(declare-fun m!2356739 () Bool)

(assert (=> b!1921911 m!2356739))

(declare-fun b_lambda!63491 () Bool)

(assert (= b_lambda!63475 (or b!1921526 b_lambda!63491)))

(declare-fun bs!414392 () Bool)

(declare-fun d!585603 () Bool)

(assert (= bs!414392 (and d!585603 b!1921526)))

(assert (=> bs!414392 (= (dynLambda!10561 lambda!75023 (h!27289 tokens!598)) (not (isSeparator!3924 (rule!6127 (h!27289 tokens!598)))))))

(assert (=> b!1921625 d!585603))

(declare-fun b_lambda!63493 () Bool)

(assert (= b_lambda!63473 (or (and b!1921531 b_free!55023 (= (toChars!5412 (transformation!3924 (h!27290 rules!3198))) (toChars!5412 (transformation!3924 (rule!6127 separatorToken!354))))) (and b!1921893 b_free!55039 (= (toChars!5412 (transformation!3924 (rule!6127 (h!27289 (t!178863 tokens!598))))) (toChars!5412 (transformation!3924 (rule!6127 separatorToken!354))))) (and b!1921533 b_free!55027) (and b!1921520 b_free!55019 (= (toChars!5412 (transformation!3924 (rule!6127 (h!27289 tokens!598)))) (toChars!5412 (transformation!3924 (rule!6127 separatorToken!354))))) (and b!1921912 b_free!55043 (= (toChars!5412 (transformation!3924 (h!27290 (t!178864 rules!3198)))) (toChars!5412 (transformation!3924 (rule!6127 separatorToken!354))))) b_lambda!63493)))

(declare-fun b_lambda!63495 () Bool)

(assert (= b_lambda!63477 (or (and b!1921531 b_free!55023 (= (toChars!5412 (transformation!3924 (h!27290 rules!3198))) (toChars!5412 (transformation!3924 (rule!6127 (h!27289 tokens!598)))))) (and b!1921520 b_free!55019) (and b!1921893 b_free!55039 (= (toChars!5412 (transformation!3924 (rule!6127 (h!27289 (t!178863 tokens!598))))) (toChars!5412 (transformation!3924 (rule!6127 (h!27289 tokens!598)))))) (and b!1921912 b_free!55043 (= (toChars!5412 (transformation!3924 (h!27290 (t!178864 rules!3198)))) (toChars!5412 (transformation!3924 (rule!6127 (h!27289 tokens!598)))))) (and b!1921533 b_free!55027 (= (toChars!5412 (transformation!3924 (rule!6127 separatorToken!354))) (toChars!5412 (transformation!3924 (rule!6127 (h!27289 tokens!598)))))) b_lambda!63495)))

(check-sat (not b!1921603) (not b!1921727) (not b!1921911) (not b!1921734) (not b!1921657) (not b_next!55725) (not b_next!55721) (not b!1921732) (not b_next!55723) (not b!1921857) (not tb!117353) (not b!1921895) (not d!585549) (not b!1921729) (not b!1921549) (not b!1921878) (not b!1921896) (not b!1921667) (not b_next!55743) (not d!585567) (not bm!118064) (not b!1921849) (not bm!118062) (not b!1921551) (not b_next!55731) (not b!1921897) (not d!585531) (not tb!117359) (not b!1921901) (not b!1921853) (not b!1921892) (not b!1921891) (not b_next!55745) (not b!1921614) (not b_next!55727) (not b!1921620) (not b!1921671) (not b_lambda!63491) (not d!585529) (not d!585569) b_and!150317 b_and!150275 (not b!1921626) (not b!1921669) (not b!1921726) (not b!1921555) (not b!1921643) (not b_lambda!63493) (not b!1921733) (not d!585553) (not b!1921609) (not b!1921856) (not b!1921619) (not b!1921872) b_and!150319 (not b!1921899) (not b!1921900) (not b!1921890) b_and!150271 (not b!1921871) b_and!150289 (not b!1921731) (not b_next!55729) (not d!585525) (not b!1921644) tp_is_empty!9121 (not b!1921550) (not b!1921730) (not b!1921879) (not b!1921601) b_and!150279 (not bm!118061) (not b!1921670) b_and!150315 b_and!150291 (not b!1921665) b_and!150293 (not b_next!55741) (not b!1921602) (not d!585557) (not b!1921664) (not b!1921873) (not bm!118050) (not b!1921608) (not b_next!55747) (not b!1921910) (not d!585543) (not b!1921537) (not b_lambda!63495) (not b!1921663) b_and!150321 (not b!1921852) (not b!1921668) (not d!585563))
(check-sat (not b_next!55723) (not b_next!55743) (not b_next!55731) (not b_next!55745) (not b_next!55727) b_and!150317 b_and!150275 b_and!150319 b_and!150271 b_and!150289 (not b_next!55729) b_and!150279 (not b_next!55725) (not b_next!55747) (not b_next!55721) b_and!150321 b_and!150315 b_and!150291 b_and!150293 (not b_next!55741))

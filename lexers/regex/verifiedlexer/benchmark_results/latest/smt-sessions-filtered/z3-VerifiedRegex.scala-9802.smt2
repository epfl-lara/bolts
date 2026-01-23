; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!512044 () Bool)

(assert start!512044)

(declare-fun b!4890425 () Bool)

(declare-fun b_free!131523 () Bool)

(declare-fun b_next!132313 () Bool)

(assert (=> b!4890425 (= b_free!131523 (not b_next!132313))))

(declare-fun tp!1376541 () Bool)

(declare-fun b_and!344459 () Bool)

(assert (=> b!4890425 (= tp!1376541 b_and!344459)))

(declare-fun b_free!131525 () Bool)

(declare-fun b_next!132315 () Bool)

(assert (=> b!4890425 (= b_free!131525 (not b_next!132315))))

(declare-fun tp!1376542 () Bool)

(declare-fun b_and!344461 () Bool)

(assert (=> b!4890425 (= tp!1376542 b_and!344461)))

(declare-fun b!4890418 () Bool)

(declare-fun e!3057357 () Bool)

(declare-datatypes ((C!26692 0))(
  ( (C!26693 (val!22680 Int)) )
))
(declare-datatypes ((List!56521 0))(
  ( (Nil!56397) (Cons!56397 (h!62845 C!26692) (t!365267 List!56521)) )
))
(declare-datatypes ((IArray!29541 0))(
  ( (IArray!29542 (innerList!14828 List!56521)) )
))
(declare-datatypes ((Conc!14740 0))(
  ( (Node!14740 (left!40968 Conc!14740) (right!41298 Conc!14740) (csize!29710 Int) (cheight!14951 Int)) (Leaf!24543 (xs!18056 IArray!29541) (csize!29711 Int)) (Empty!14740) )
))
(declare-datatypes ((BalanceConc!28910 0))(
  ( (BalanceConc!28911 (c!831147 Conc!14740)) )
))
(declare-fun input!1236 () BalanceConc!28910)

(declare-fun tp!1376543 () Bool)

(declare-fun inv!72663 (Conc!14740) Bool)

(assert (=> b!4890418 (= e!3057357 (and (inv!72663 (c!831147 input!1236)) tp!1376543))))

(declare-fun b!4890419 () Bool)

(declare-fun e!3057356 () Bool)

(declare-fun e!3057353 () Bool)

(assert (=> b!4890419 (= e!3057356 (not e!3057353))))

(declare-fun res!2088629 () Bool)

(assert (=> b!4890419 (=> res!2088629 e!3057353)))

(declare-datatypes ((List!56522 0))(
  ( (Nil!56398) (Cons!56398 (h!62846 (_ BitVec 16)) (t!365268 List!56522)) )
))
(declare-datatypes ((TokenValue!8482 0))(
  ( (FloatLiteralValue!16964 (text!59819 List!56522)) (TokenValueExt!8481 (__x!34257 Int)) (Broken!42410 (value!262026 List!56522)) (Object!8605) (End!8482) (Def!8482) (Underscore!8482) (Match!8482) (Else!8482) (Error!8482) (Case!8482) (If!8482) (Extends!8482) (Abstract!8482) (Class!8482) (Val!8482) (DelimiterValue!16964 (del!8542 List!56522)) (KeywordValue!8488 (value!262027 List!56522)) (CommentValue!16964 (value!262028 List!56522)) (WhitespaceValue!16964 (value!262029 List!56522)) (IndentationValue!8482 (value!262030 List!56522)) (String!63851) (Int32!8482) (Broken!42411 (value!262031 List!56522)) (Boolean!8483) (Unit!146391) (OperatorValue!8485 (op!8542 List!56522)) (IdentifierValue!16964 (value!262032 List!56522)) (IdentifierValue!16965 (value!262033 List!56522)) (WhitespaceValue!16965 (value!262034 List!56522)) (True!16964) (False!16964) (Broken!42412 (value!262035 List!56522)) (Broken!42413 (value!262036 List!56522)) (True!16965) (RightBrace!8482) (RightBracket!8482) (Colon!8482) (Null!8482) (Comma!8482) (LeftBracket!8482) (False!16965) (LeftBrace!8482) (ImaginaryLiteralValue!8482 (text!59820 List!56522)) (StringLiteralValue!25446 (value!262037 List!56522)) (EOFValue!8482 (value!262038 List!56522)) (IdentValue!8482 (value!262039 List!56522)) (DelimiterValue!16965 (value!262040 List!56522)) (DedentValue!8482 (value!262041 List!56522)) (NewLineValue!8482 (value!262042 List!56522)) (IntegerValue!25446 (value!262043 (_ BitVec 32)) (text!59821 List!56522)) (IntegerValue!25447 (value!262044 Int) (text!59822 List!56522)) (Times!8482) (Or!8482) (Equal!8482) (Minus!8482) (Broken!42414 (value!262045 List!56522)) (And!8482) (Div!8482) (LessEqual!8482) (Mod!8482) (Concat!21729) (Not!8482) (Plus!8482) (SpaceValue!8482 (value!262046 List!56522)) (IntegerValue!25448 (value!262047 Int) (text!59823 List!56522)) (StringLiteralValue!25447 (text!59824 List!56522)) (FloatLiteralValue!16965 (text!59825 List!56522)) (BytesLiteralValue!8482 (value!262048 List!56522)) (CommentValue!16965 (value!262049 List!56522)) (StringLiteralValue!25448 (value!262050 List!56522)) (ErrorTokenValue!8482 (msg!8543 List!56522)) )
))
(declare-datatypes ((Regex!13247 0))(
  ( (ElementMatch!13247 (c!831148 C!26692)) (Concat!21730 (regOne!27006 Regex!13247) (regTwo!27006 Regex!13247)) (EmptyExpr!13247) (Star!13247 (reg!13576 Regex!13247)) (EmptyLang!13247) (Union!13247 (regOne!27007 Regex!13247) (regTwo!27007 Regex!13247)) )
))
(declare-datatypes ((String!63852 0))(
  ( (String!63853 (value!262051 String)) )
))
(declare-datatypes ((TokenValueInjection!16272 0))(
  ( (TokenValueInjection!16273 (toValue!11063 Int) (toChars!10922 Int)) )
))
(declare-datatypes ((Rule!16144 0))(
  ( (Rule!16145 (regex!8172 Regex!13247) (tag!9036 String!63852) (isSeparator!8172 Bool) (transformation!8172 TokenValueInjection!16272)) )
))
(declare-datatypes ((List!56523 0))(
  ( (Nil!56399) (Cons!56399 (h!62847 Rule!16144) (t!365269 List!56523)) )
))
(declare-fun rulesArg!165 () List!56523)

(get-info :version)

(assert (=> b!4890419 (= res!2088629 (or (and ((_ is Cons!56399) rulesArg!165) ((_ is Nil!56399) (t!365269 rulesArg!165))) (not ((_ is Cons!56399) rulesArg!165))))))

(declare-fun lt!2004386 () List!56521)

(declare-fun isPrefix!4892 (List!56521 List!56521) Bool)

(assert (=> b!4890419 (isPrefix!4892 lt!2004386 lt!2004386)))

(declare-datatypes ((Unit!146392 0))(
  ( (Unit!146393) )
))
(declare-fun lt!2004387 () Unit!146392)

(declare-fun lemmaIsPrefixRefl!3289 (List!56521 List!56521) Unit!146392)

(assert (=> b!4890419 (= lt!2004387 (lemmaIsPrefixRefl!3289 lt!2004386 lt!2004386))))

(declare-fun list!17718 (BalanceConc!28910) List!56521)

(assert (=> b!4890419 (= lt!2004386 (list!17718 input!1236))))

(declare-fun b!4890421 () Bool)

(declare-fun res!2088627 () Bool)

(assert (=> b!4890421 (=> (not res!2088627) (not e!3057356))))

(declare-fun isEmpty!30248 (List!56523) Bool)

(assert (=> b!4890421 (= res!2088627 (not (isEmpty!30248 rulesArg!165)))))

(declare-fun b!4890422 () Bool)

(declare-fun e!3057354 () Bool)

(declare-fun e!3057355 () Bool)

(declare-fun tp!1376540 () Bool)

(assert (=> b!4890422 (= e!3057354 (and e!3057355 tp!1376540))))

(declare-fun b!4890423 () Bool)

(declare-fun res!2088628 () Bool)

(assert (=> b!4890423 (=> (not res!2088628) (not e!3057356))))

(declare-datatypes ((LexerInterface!7764 0))(
  ( (LexerInterfaceExt!7761 (__x!34258 Int)) (Lexer!7762) )
))
(declare-fun thiss!14805 () LexerInterface!7764)

(declare-fun rulesValidInductive!3151 (LexerInterface!7764 List!56523) Bool)

(assert (=> b!4890423 (= res!2088628 (rulesValidInductive!3151 thiss!14805 rulesArg!165))))

(declare-fun b!4890424 () Bool)

(declare-fun e!3057358 () Bool)

(declare-fun tp!1376539 () Bool)

(declare-fun inv!72659 (String!63852) Bool)

(declare-fun inv!72664 (TokenValueInjection!16272) Bool)

(assert (=> b!4890424 (= e!3057355 (and tp!1376539 (inv!72659 (tag!9036 (h!62847 rulesArg!165))) (inv!72664 (transformation!8172 (h!62847 rulesArg!165))) e!3057358))))

(assert (=> b!4890425 (= e!3057358 (and tp!1376541 tp!1376542))))

(declare-fun res!2088626 () Bool)

(assert (=> start!512044 (=> (not res!2088626) (not e!3057356))))

(assert (=> start!512044 (= res!2088626 ((_ is Lexer!7762) thiss!14805))))

(assert (=> start!512044 e!3057356))

(assert (=> start!512044 true))

(assert (=> start!512044 e!3057354))

(declare-fun inv!72665 (BalanceConc!28910) Bool)

(assert (=> start!512044 (and (inv!72665 input!1236) e!3057357)))

(declare-fun b!4890420 () Bool)

(declare-fun size!37129 (List!56523) Int)

(assert (=> b!4890420 (= e!3057353 (< (size!37129 (t!365269 rulesArg!165)) (size!37129 rulesArg!165)))))

(declare-datatypes ((Token!14908 0))(
  ( (Token!14909 (value!262052 TokenValue!8482) (rule!11354 Rule!16144) (size!37130 Int) (originalCharacters!8485 List!56521)) )
))
(declare-datatypes ((tuple2!60426 0))(
  ( (tuple2!60427 (_1!33516 Token!14908) (_2!33516 BalanceConc!28910)) )
))
(declare-datatypes ((Option!14020 0))(
  ( (None!14019) (Some!14019 (v!49971 tuple2!60426)) )
))
(declare-fun lt!2004385 () Option!14020)

(declare-fun maxPrefixOneRuleZipperSequence!682 (LexerInterface!7764 Rule!16144 BalanceConc!28910) Option!14020)

(assert (=> b!4890420 (= lt!2004385 (maxPrefixOneRuleZipperSequence!682 thiss!14805 (h!62847 rulesArg!165) input!1236))))

(assert (= (and start!512044 res!2088626) b!4890423))

(assert (= (and b!4890423 res!2088628) b!4890421))

(assert (= (and b!4890421 res!2088627) b!4890419))

(assert (= (and b!4890419 (not res!2088629)) b!4890420))

(assert (= b!4890424 b!4890425))

(assert (= b!4890422 b!4890424))

(assert (= (and start!512044 ((_ is Cons!56399) rulesArg!165)) b!4890422))

(assert (= start!512044 b!4890418))

(declare-fun m!5893938 () Bool)

(assert (=> b!4890421 m!5893938))

(declare-fun m!5893940 () Bool)

(assert (=> b!4890424 m!5893940))

(declare-fun m!5893942 () Bool)

(assert (=> b!4890424 m!5893942))

(declare-fun m!5893944 () Bool)

(assert (=> b!4890423 m!5893944))

(declare-fun m!5893946 () Bool)

(assert (=> b!4890420 m!5893946))

(declare-fun m!5893948 () Bool)

(assert (=> b!4890420 m!5893948))

(declare-fun m!5893950 () Bool)

(assert (=> b!4890420 m!5893950))

(declare-fun m!5893952 () Bool)

(assert (=> b!4890418 m!5893952))

(declare-fun m!5893954 () Bool)

(assert (=> b!4890419 m!5893954))

(declare-fun m!5893956 () Bool)

(assert (=> b!4890419 m!5893956))

(declare-fun m!5893958 () Bool)

(assert (=> b!4890419 m!5893958))

(declare-fun m!5893960 () Bool)

(assert (=> start!512044 m!5893960))

(check-sat (not start!512044) (not b!4890424) (not b!4890423) b_and!344461 (not b!4890419) (not b!4890418) b_and!344459 (not b_next!132315) (not b_next!132313) (not b!4890421) (not b!4890420) (not b!4890422))
(check-sat b_and!344461 b_and!344459 (not b_next!132313) (not b_next!132315))
(get-model)

(declare-fun d!1570389 () Bool)

(declare-fun lt!2004392 () Int)

(assert (=> d!1570389 (>= lt!2004392 0)))

(declare-fun e!3057365 () Int)

(assert (=> d!1570389 (= lt!2004392 e!3057365)))

(declare-fun c!831151 () Bool)

(assert (=> d!1570389 (= c!831151 ((_ is Nil!56399) (t!365269 rulesArg!165)))))

(assert (=> d!1570389 (= (size!37129 (t!365269 rulesArg!165)) lt!2004392)))

(declare-fun b!4890434 () Bool)

(assert (=> b!4890434 (= e!3057365 0)))

(declare-fun b!4890435 () Bool)

(assert (=> b!4890435 (= e!3057365 (+ 1 (size!37129 (t!365269 (t!365269 rulesArg!165)))))))

(assert (= (and d!1570389 c!831151) b!4890434))

(assert (= (and d!1570389 (not c!831151)) b!4890435))

(declare-fun m!5893962 () Bool)

(assert (=> b!4890435 m!5893962))

(assert (=> b!4890420 d!1570389))

(declare-fun d!1570391 () Bool)

(declare-fun lt!2004393 () Int)

(assert (=> d!1570391 (>= lt!2004393 0)))

(declare-fun e!3057366 () Int)

(assert (=> d!1570391 (= lt!2004393 e!3057366)))

(declare-fun c!831152 () Bool)

(assert (=> d!1570391 (= c!831152 ((_ is Nil!56399) rulesArg!165))))

(assert (=> d!1570391 (= (size!37129 rulesArg!165) lt!2004393)))

(declare-fun b!4890436 () Bool)

(assert (=> b!4890436 (= e!3057366 0)))

(declare-fun b!4890437 () Bool)

(assert (=> b!4890437 (= e!3057366 (+ 1 (size!37129 (t!365269 rulesArg!165))))))

(assert (= (and d!1570391 c!831152) b!4890436))

(assert (= (and d!1570391 (not c!831152)) b!4890437))

(assert (=> b!4890437 m!5893946))

(assert (=> b!4890420 d!1570391))

(declare-fun b!4890487 () Bool)

(declare-fun e!3057403 () Bool)

(assert (=> b!4890487 (= e!3057403 true)))

(declare-fun b!4890486 () Bool)

(declare-fun e!3057402 () Bool)

(assert (=> b!4890486 (= e!3057402 e!3057403)))

(declare-fun b!4890479 () Bool)

(assert (=> b!4890479 e!3057402))

(assert (= b!4890486 b!4890487))

(assert (= b!4890479 b!4890486))

(declare-fun lambda!243958 () Int)

(declare-fun order!25451 () Int)

(declare-fun order!25453 () Int)

(declare-fun dynLambda!22611 (Int Int) Int)

(declare-fun dynLambda!22612 (Int Int) Int)

(assert (=> b!4890487 (< (dynLambda!22611 order!25451 (toValue!11063 (transformation!8172 (h!62847 rulesArg!165)))) (dynLambda!22612 order!25453 lambda!243958))))

(declare-fun order!25455 () Int)

(declare-fun dynLambda!22613 (Int Int) Int)

(assert (=> b!4890487 (< (dynLambda!22613 order!25455 (toChars!10922 (transformation!8172 (h!62847 rulesArg!165)))) (dynLambda!22612 order!25453 lambda!243958))))

(declare-fun b!4890474 () Bool)

(declare-fun e!3057393 () Option!14020)

(assert (=> b!4890474 (= e!3057393 None!14019)))

(declare-fun b!4890475 () Bool)

(declare-fun e!3057395 () Bool)

(declare-fun e!3057396 () Bool)

(assert (=> b!4890475 (= e!3057395 e!3057396)))

(declare-fun res!2088658 () Bool)

(assert (=> b!4890475 (=> (not res!2088658) (not e!3057396))))

(declare-fun lt!2004446 () Option!14020)

(declare-fun get!19471 (Option!14020) tuple2!60426)

(declare-datatypes ((tuple2!60428 0))(
  ( (tuple2!60429 (_1!33517 Token!14908) (_2!33517 List!56521)) )
))
(declare-datatypes ((Option!14021 0))(
  ( (None!14020) (Some!14020 (v!49972 tuple2!60428)) )
))
(declare-fun get!19472 (Option!14021) tuple2!60428)

(declare-fun maxPrefixOneRule!3526 (LexerInterface!7764 Rule!16144 List!56521) Option!14021)

(assert (=> b!4890475 (= res!2088658 (= (_1!33516 (get!19471 lt!2004446)) (_1!33517 (get!19472 (maxPrefixOneRule!3526 thiss!14805 (h!62847 rulesArg!165) (list!17718 input!1236))))))))

(declare-fun b!4890476 () Bool)

(assert (=> b!4890476 (= e!3057396 (= (list!17718 (_2!33516 (get!19471 lt!2004446))) (_2!33517 (get!19472 (maxPrefixOneRule!3526 thiss!14805 (h!62847 rulesArg!165) (list!17718 input!1236))))))))

(declare-fun b!4890477 () Bool)

(declare-fun e!3057394 () Bool)

(declare-fun lt!2004447 () List!56521)

(declare-fun matchR!6527 (Regex!13247 List!56521) Bool)

(declare-datatypes ((tuple2!60430 0))(
  ( (tuple2!60431 (_1!33518 List!56521) (_2!33518 List!56521)) )
))
(declare-fun findLongestMatchInner!1750 (Regex!13247 List!56521 Int List!56521 List!56521 Int) tuple2!60430)

(declare-fun size!37131 (List!56521) Int)

(assert (=> b!4890477 (= e!3057394 (matchR!6527 (regex!8172 (h!62847 rulesArg!165)) (_1!33518 (findLongestMatchInner!1750 (regex!8172 (h!62847 rulesArg!165)) Nil!56397 (size!37131 Nil!56397) lt!2004447 lt!2004447 (size!37131 lt!2004447)))))))

(declare-fun d!1570393 () Bool)

(declare-fun e!3057397 () Bool)

(assert (=> d!1570393 e!3057397))

(declare-fun res!2088660 () Bool)

(assert (=> d!1570393 (=> (not res!2088660) (not e!3057397))))

(declare-fun isDefined!11032 (Option!14020) Bool)

(declare-fun isDefined!11033 (Option!14021) Bool)

(assert (=> d!1570393 (= res!2088660 (= (isDefined!11032 lt!2004446) (isDefined!11033 (maxPrefixOneRule!3526 thiss!14805 (h!62847 rulesArg!165) (list!17718 input!1236)))))))

(assert (=> d!1570393 (= lt!2004446 e!3057393)))

(declare-fun c!831163 () Bool)

(declare-datatypes ((tuple2!60432 0))(
  ( (tuple2!60433 (_1!33519 BalanceConc!28910) (_2!33519 BalanceConc!28910)) )
))
(declare-fun lt!2004441 () tuple2!60432)

(declare-fun isEmpty!30249 (BalanceConc!28910) Bool)

(assert (=> d!1570393 (= c!831163 (isEmpty!30249 (_1!33519 lt!2004441)))))

(declare-fun findLongestMatchWithZipperSequence!265 (Regex!13247 BalanceConc!28910) tuple2!60432)

(assert (=> d!1570393 (= lt!2004441 (findLongestMatchWithZipperSequence!265 (regex!8172 (h!62847 rulesArg!165)) input!1236))))

(declare-fun ruleValid!3670 (LexerInterface!7764 Rule!16144) Bool)

(assert (=> d!1570393 (ruleValid!3670 thiss!14805 (h!62847 rulesArg!165))))

(assert (=> d!1570393 (= (maxPrefixOneRuleZipperSequence!682 thiss!14805 (h!62847 rulesArg!165) input!1236) lt!2004446)))

(declare-fun b!4890478 () Bool)

(assert (=> b!4890478 (= e!3057397 e!3057395)))

(declare-fun res!2088661 () Bool)

(assert (=> b!4890478 (=> res!2088661 e!3057395)))

(assert (=> b!4890478 (= res!2088661 (not (isDefined!11032 lt!2004446)))))

(declare-fun apply!13537 (TokenValueInjection!16272 BalanceConc!28910) TokenValue!8482)

(declare-fun size!37132 (BalanceConc!28910) Int)

(assert (=> b!4890479 (= e!3057393 (Some!14019 (tuple2!60427 (Token!14909 (apply!13537 (transformation!8172 (h!62847 rulesArg!165)) (_1!33519 lt!2004441)) (h!62847 rulesArg!165) (size!37132 (_1!33519 lt!2004441)) (list!17718 (_1!33519 lt!2004441))) (_2!33519 lt!2004441))))))

(assert (=> b!4890479 (= lt!2004447 (list!17718 input!1236))))

(declare-fun lt!2004442 () Unit!146392)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1713 (Regex!13247 List!56521) Unit!146392)

(assert (=> b!4890479 (= lt!2004442 (longestMatchIsAcceptedByMatchOrIsEmpty!1713 (regex!8172 (h!62847 rulesArg!165)) lt!2004447))))

(declare-fun res!2088659 () Bool)

(declare-fun isEmpty!30250 (List!56521) Bool)

(assert (=> b!4890479 (= res!2088659 (isEmpty!30250 (_1!33518 (findLongestMatchInner!1750 (regex!8172 (h!62847 rulesArg!165)) Nil!56397 (size!37131 Nil!56397) lt!2004447 lt!2004447 (size!37131 lt!2004447)))))))

(assert (=> b!4890479 (=> res!2088659 e!3057394)))

(assert (=> b!4890479 e!3057394))

(declare-fun lt!2004439 () Unit!146392)

(assert (=> b!4890479 (= lt!2004439 lt!2004442)))

(declare-fun lt!2004443 () Unit!146392)

(declare-fun lemmaInv!1233 (TokenValueInjection!16272) Unit!146392)

(assert (=> b!4890479 (= lt!2004443 (lemmaInv!1233 (transformation!8172 (h!62847 rulesArg!165))))))

(declare-fun lt!2004448 () Unit!146392)

(declare-fun ForallOf!1130 (Int BalanceConc!28910) Unit!146392)

(assert (=> b!4890479 (= lt!2004448 (ForallOf!1130 lambda!243958 (_1!33519 lt!2004441)))))

(declare-fun lt!2004445 () Unit!146392)

(declare-fun seqFromList!5933 (List!56521) BalanceConc!28910)

(assert (=> b!4890479 (= lt!2004445 (ForallOf!1130 lambda!243958 (seqFromList!5933 (list!17718 (_1!33519 lt!2004441)))))))

(declare-fun lt!2004440 () Option!14020)

(assert (=> b!4890479 (= lt!2004440 (Some!14019 (tuple2!60427 (Token!14909 (apply!13537 (transformation!8172 (h!62847 rulesArg!165)) (_1!33519 lt!2004441)) (h!62847 rulesArg!165) (size!37132 (_1!33519 lt!2004441)) (list!17718 (_1!33519 lt!2004441))) (_2!33519 lt!2004441))))))

(declare-fun lt!2004444 () Unit!146392)

(declare-fun lemmaEqSameImage!1087 (TokenValueInjection!16272 BalanceConc!28910 BalanceConc!28910) Unit!146392)

(assert (=> b!4890479 (= lt!2004444 (lemmaEqSameImage!1087 (transformation!8172 (h!62847 rulesArg!165)) (_1!33519 lt!2004441) (seqFromList!5933 (list!17718 (_1!33519 lt!2004441)))))))

(assert (= (and d!1570393 c!831163) b!4890474))

(assert (= (and d!1570393 (not c!831163)) b!4890479))

(assert (= (and b!4890479 (not res!2088659)) b!4890477))

(assert (= (and d!1570393 res!2088660) b!4890478))

(assert (= (and b!4890478 (not res!2088661)) b!4890475))

(assert (= (and b!4890475 res!2088658) b!4890476))

(declare-fun m!5893972 () Bool)

(assert (=> b!4890477 m!5893972))

(declare-fun m!5893974 () Bool)

(assert (=> b!4890477 m!5893974))

(assert (=> b!4890477 m!5893972))

(assert (=> b!4890477 m!5893974))

(declare-fun m!5893976 () Bool)

(assert (=> b!4890477 m!5893976))

(declare-fun m!5893978 () Bool)

(assert (=> b!4890477 m!5893978))

(declare-fun m!5893980 () Bool)

(assert (=> b!4890478 m!5893980))

(assert (=> d!1570393 m!5893958))

(declare-fun m!5893982 () Bool)

(assert (=> d!1570393 m!5893982))

(assert (=> d!1570393 m!5893980))

(declare-fun m!5893984 () Bool)

(assert (=> d!1570393 m!5893984))

(assert (=> d!1570393 m!5893982))

(declare-fun m!5893986 () Bool)

(assert (=> d!1570393 m!5893986))

(declare-fun m!5893988 () Bool)

(assert (=> d!1570393 m!5893988))

(declare-fun m!5893990 () Bool)

(assert (=> d!1570393 m!5893990))

(assert (=> d!1570393 m!5893958))

(declare-fun m!5893992 () Bool)

(assert (=> b!4890476 m!5893992))

(assert (=> b!4890476 m!5893958))

(assert (=> b!4890476 m!5893982))

(assert (=> b!4890476 m!5893982))

(declare-fun m!5893994 () Bool)

(assert (=> b!4890476 m!5893994))

(declare-fun m!5893996 () Bool)

(assert (=> b!4890476 m!5893996))

(assert (=> b!4890476 m!5893958))

(assert (=> b!4890479 m!5893972))

(declare-fun m!5893998 () Bool)

(assert (=> b!4890479 m!5893998))

(declare-fun m!5894000 () Bool)

(assert (=> b!4890479 m!5894000))

(declare-fun m!5894002 () Bool)

(assert (=> b!4890479 m!5894002))

(declare-fun m!5894004 () Bool)

(assert (=> b!4890479 m!5894004))

(declare-fun m!5894006 () Bool)

(assert (=> b!4890479 m!5894006))

(declare-fun m!5894008 () Bool)

(assert (=> b!4890479 m!5894008))

(declare-fun m!5894010 () Bool)

(assert (=> b!4890479 m!5894010))

(declare-fun m!5894012 () Bool)

(assert (=> b!4890479 m!5894012))

(assert (=> b!4890479 m!5894008))

(assert (=> b!4890479 m!5893974))

(declare-fun m!5894014 () Bool)

(assert (=> b!4890479 m!5894014))

(assert (=> b!4890479 m!5894008))

(declare-fun m!5894016 () Bool)

(assert (=> b!4890479 m!5894016))

(assert (=> b!4890479 m!5894012))

(assert (=> b!4890479 m!5893972))

(assert (=> b!4890479 m!5893974))

(assert (=> b!4890479 m!5893976))

(assert (=> b!4890479 m!5893958))

(assert (=> b!4890475 m!5893992))

(assert (=> b!4890475 m!5893958))

(assert (=> b!4890475 m!5893958))

(assert (=> b!4890475 m!5893982))

(assert (=> b!4890475 m!5893982))

(assert (=> b!4890475 m!5893994))

(assert (=> b!4890420 d!1570393))

(declare-fun d!1570401 () Bool)

(assert (=> d!1570401 (= (isEmpty!30248 rulesArg!165) ((_ is Nil!56399) rulesArg!165))))

(assert (=> b!4890421 d!1570401))

(declare-fun b!4890511 () Bool)

(declare-fun res!2088675 () Bool)

(declare-fun e!3057421 () Bool)

(assert (=> b!4890511 (=> (not res!2088675) (not e!3057421))))

(declare-fun head!10452 (List!56521) C!26692)

(assert (=> b!4890511 (= res!2088675 (= (head!10452 lt!2004386) (head!10452 lt!2004386)))))

(declare-fun b!4890513 () Bool)

(declare-fun e!3057423 () Bool)

(assert (=> b!4890513 (= e!3057423 (>= (size!37131 lt!2004386) (size!37131 lt!2004386)))))

(declare-fun b!4890510 () Bool)

(declare-fun e!3057422 () Bool)

(assert (=> b!4890510 (= e!3057422 e!3057421)))

(declare-fun res!2088677 () Bool)

(assert (=> b!4890510 (=> (not res!2088677) (not e!3057421))))

(assert (=> b!4890510 (= res!2088677 (not ((_ is Nil!56397) lt!2004386)))))

(declare-fun d!1570403 () Bool)

(assert (=> d!1570403 e!3057423))

(declare-fun res!2088676 () Bool)

(assert (=> d!1570403 (=> res!2088676 e!3057423)))

(declare-fun lt!2004461 () Bool)

(assert (=> d!1570403 (= res!2088676 (not lt!2004461))))

(assert (=> d!1570403 (= lt!2004461 e!3057422)))

(declare-fun res!2088674 () Bool)

(assert (=> d!1570403 (=> res!2088674 e!3057422)))

(assert (=> d!1570403 (= res!2088674 ((_ is Nil!56397) lt!2004386))))

(assert (=> d!1570403 (= (isPrefix!4892 lt!2004386 lt!2004386) lt!2004461)))

(declare-fun b!4890512 () Bool)

(declare-fun tail!9598 (List!56521) List!56521)

(assert (=> b!4890512 (= e!3057421 (isPrefix!4892 (tail!9598 lt!2004386) (tail!9598 lt!2004386)))))

(assert (= (and d!1570403 (not res!2088674)) b!4890510))

(assert (= (and b!4890510 res!2088677) b!4890511))

(assert (= (and b!4890511 res!2088675) b!4890512))

(assert (= (and d!1570403 (not res!2088676)) b!4890513))

(declare-fun m!5894062 () Bool)

(assert (=> b!4890511 m!5894062))

(assert (=> b!4890511 m!5894062))

(declare-fun m!5894064 () Bool)

(assert (=> b!4890513 m!5894064))

(assert (=> b!4890513 m!5894064))

(declare-fun m!5894066 () Bool)

(assert (=> b!4890512 m!5894066))

(assert (=> b!4890512 m!5894066))

(assert (=> b!4890512 m!5894066))

(assert (=> b!4890512 m!5894066))

(declare-fun m!5894068 () Bool)

(assert (=> b!4890512 m!5894068))

(assert (=> b!4890419 d!1570403))

(declare-fun d!1570407 () Bool)

(assert (=> d!1570407 (isPrefix!4892 lt!2004386 lt!2004386)))

(declare-fun lt!2004464 () Unit!146392)

(declare-fun choose!35696 (List!56521 List!56521) Unit!146392)

(assert (=> d!1570407 (= lt!2004464 (choose!35696 lt!2004386 lt!2004386))))

(assert (=> d!1570407 (= (lemmaIsPrefixRefl!3289 lt!2004386 lt!2004386) lt!2004464)))

(declare-fun bs!1175781 () Bool)

(assert (= bs!1175781 d!1570407))

(assert (=> bs!1175781 m!5893954))

(declare-fun m!5894070 () Bool)

(assert (=> bs!1175781 m!5894070))

(assert (=> b!4890419 d!1570407))

(declare-fun d!1570411 () Bool)

(declare-fun list!17719 (Conc!14740) List!56521)

(assert (=> d!1570411 (= (list!17718 input!1236) (list!17719 (c!831147 input!1236)))))

(declare-fun bs!1175783 () Bool)

(assert (= bs!1175783 d!1570411))

(declare-fun m!5894074 () Bool)

(assert (=> bs!1175783 m!5894074))

(assert (=> b!4890419 d!1570411))

(declare-fun d!1570415 () Bool)

(assert (=> d!1570415 (= (inv!72659 (tag!9036 (h!62847 rulesArg!165))) (= (mod (str.len (value!262051 (tag!9036 (h!62847 rulesArg!165)))) 2) 0))))

(assert (=> b!4890424 d!1570415))

(declare-fun d!1570419 () Bool)

(declare-fun res!2088683 () Bool)

(declare-fun e!3057429 () Bool)

(assert (=> d!1570419 (=> (not res!2088683) (not e!3057429))))

(declare-fun semiInverseModEq!3583 (Int Int) Bool)

(assert (=> d!1570419 (= res!2088683 (semiInverseModEq!3583 (toChars!10922 (transformation!8172 (h!62847 rulesArg!165))) (toValue!11063 (transformation!8172 (h!62847 rulesArg!165)))))))

(assert (=> d!1570419 (= (inv!72664 (transformation!8172 (h!62847 rulesArg!165))) e!3057429)))

(declare-fun b!4890519 () Bool)

(declare-fun equivClasses!3462 (Int Int) Bool)

(assert (=> b!4890519 (= e!3057429 (equivClasses!3462 (toChars!10922 (transformation!8172 (h!62847 rulesArg!165))) (toValue!11063 (transformation!8172 (h!62847 rulesArg!165)))))))

(assert (= (and d!1570419 res!2088683) b!4890519))

(declare-fun m!5894080 () Bool)

(assert (=> d!1570419 m!5894080))

(declare-fun m!5894082 () Bool)

(assert (=> b!4890519 m!5894082))

(assert (=> b!4890424 d!1570419))

(declare-fun d!1570423 () Bool)

(declare-fun isBalanced!4009 (Conc!14740) Bool)

(assert (=> d!1570423 (= (inv!72665 input!1236) (isBalanced!4009 (c!831147 input!1236)))))

(declare-fun bs!1175784 () Bool)

(assert (= bs!1175784 d!1570423))

(declare-fun m!5894084 () Bool)

(assert (=> bs!1175784 m!5894084))

(assert (=> start!512044 d!1570423))

(declare-fun d!1570425 () Bool)

(assert (=> d!1570425 true))

(declare-fun lt!2004472 () Bool)

(declare-fun lambda!243962 () Int)

(declare-fun forall!13088 (List!56523 Int) Bool)

(assert (=> d!1570425 (= lt!2004472 (forall!13088 rulesArg!165 lambda!243962))))

(declare-fun e!3057443 () Bool)

(assert (=> d!1570425 (= lt!2004472 e!3057443)))

(declare-fun res!2088700 () Bool)

(assert (=> d!1570425 (=> res!2088700 e!3057443)))

(assert (=> d!1570425 (= res!2088700 (not ((_ is Cons!56399) rulesArg!165)))))

(assert (=> d!1570425 (= (rulesValidInductive!3151 thiss!14805 rulesArg!165) lt!2004472)))

(declare-fun b!4890536 () Bool)

(declare-fun e!3057444 () Bool)

(assert (=> b!4890536 (= e!3057443 e!3057444)))

(declare-fun res!2088701 () Bool)

(assert (=> b!4890536 (=> (not res!2088701) (not e!3057444))))

(assert (=> b!4890536 (= res!2088701 (ruleValid!3670 thiss!14805 (h!62847 rulesArg!165)))))

(declare-fun b!4890537 () Bool)

(assert (=> b!4890537 (= e!3057444 (rulesValidInductive!3151 thiss!14805 (t!365269 rulesArg!165)))))

(assert (= (and d!1570425 (not res!2088700)) b!4890536))

(assert (= (and b!4890536 res!2088701) b!4890537))

(declare-fun m!5894096 () Bool)

(assert (=> d!1570425 m!5894096))

(assert (=> b!4890536 m!5893984))

(declare-fun m!5894098 () Bool)

(assert (=> b!4890537 m!5894098))

(assert (=> b!4890423 d!1570425))

(declare-fun d!1570431 () Bool)

(declare-fun c!831169 () Bool)

(assert (=> d!1570431 (= c!831169 ((_ is Node!14740) (c!831147 input!1236)))))

(declare-fun e!3057453 () Bool)

(assert (=> d!1570431 (= (inv!72663 (c!831147 input!1236)) e!3057453)))

(declare-fun b!4890552 () Bool)

(declare-fun inv!72666 (Conc!14740) Bool)

(assert (=> b!4890552 (= e!3057453 (inv!72666 (c!831147 input!1236)))))

(declare-fun b!4890553 () Bool)

(declare-fun e!3057454 () Bool)

(assert (=> b!4890553 (= e!3057453 e!3057454)))

(declare-fun res!2088706 () Bool)

(assert (=> b!4890553 (= res!2088706 (not ((_ is Leaf!24543) (c!831147 input!1236))))))

(assert (=> b!4890553 (=> res!2088706 e!3057454)))

(declare-fun b!4890554 () Bool)

(declare-fun inv!72667 (Conc!14740) Bool)

(assert (=> b!4890554 (= e!3057454 (inv!72667 (c!831147 input!1236)))))

(assert (= (and d!1570431 c!831169) b!4890552))

(assert (= (and d!1570431 (not c!831169)) b!4890553))

(assert (= (and b!4890553 (not res!2088706)) b!4890554))

(declare-fun m!5894102 () Bool)

(assert (=> b!4890552 m!5894102))

(declare-fun m!5894104 () Bool)

(assert (=> b!4890554 m!5894104))

(assert (=> b!4890418 d!1570431))

(declare-fun b!4890576 () Bool)

(declare-fun b_free!131527 () Bool)

(declare-fun b_next!132317 () Bool)

(assert (=> b!4890576 (= b_free!131527 (not b_next!132317))))

(declare-fun tp!1376559 () Bool)

(declare-fun b_and!344463 () Bool)

(assert (=> b!4890576 (= tp!1376559 b_and!344463)))

(declare-fun b_free!131529 () Bool)

(declare-fun b_next!132319 () Bool)

(assert (=> b!4890576 (= b_free!131529 (not b_next!132319))))

(declare-fun tp!1376561 () Bool)

(declare-fun b_and!344465 () Bool)

(assert (=> b!4890576 (= tp!1376561 b_and!344465)))

(declare-fun e!3057473 () Bool)

(assert (=> b!4890576 (= e!3057473 (and tp!1376559 tp!1376561))))

(declare-fun e!3057475 () Bool)

(declare-fun b!4890575 () Bool)

(declare-fun tp!1376560 () Bool)

(assert (=> b!4890575 (= e!3057475 (and tp!1376560 (inv!72659 (tag!9036 (h!62847 (t!365269 rulesArg!165)))) (inv!72664 (transformation!8172 (h!62847 (t!365269 rulesArg!165)))) e!3057473))))

(declare-fun b!4890574 () Bool)

(declare-fun e!3057476 () Bool)

(declare-fun tp!1376558 () Bool)

(assert (=> b!4890574 (= e!3057476 (and e!3057475 tp!1376558))))

(assert (=> b!4890422 (= tp!1376540 e!3057476)))

(assert (= b!4890575 b!4890576))

(assert (= b!4890574 b!4890575))

(assert (= (and b!4890422 ((_ is Cons!56399) (t!365269 rulesArg!165))) b!4890574))

(declare-fun m!5894110 () Bool)

(assert (=> b!4890575 m!5894110))

(declare-fun m!5894112 () Bool)

(assert (=> b!4890575 m!5894112))

(declare-fun b!4890596 () Bool)

(declare-fun e!3057485 () Bool)

(declare-fun tp_is_empty!35773 () Bool)

(assert (=> b!4890596 (= e!3057485 tp_is_empty!35773)))

(assert (=> b!4890424 (= tp!1376539 e!3057485)))

(declare-fun b!4890599 () Bool)

(declare-fun tp!1376586 () Bool)

(declare-fun tp!1376582 () Bool)

(assert (=> b!4890599 (= e!3057485 (and tp!1376586 tp!1376582))))

(declare-fun b!4890598 () Bool)

(declare-fun tp!1376584 () Bool)

(assert (=> b!4890598 (= e!3057485 tp!1376584)))

(declare-fun b!4890597 () Bool)

(declare-fun tp!1376583 () Bool)

(declare-fun tp!1376585 () Bool)

(assert (=> b!4890597 (= e!3057485 (and tp!1376583 tp!1376585))))

(assert (= (and b!4890424 ((_ is ElementMatch!13247) (regex!8172 (h!62847 rulesArg!165)))) b!4890596))

(assert (= (and b!4890424 ((_ is Concat!21730) (regex!8172 (h!62847 rulesArg!165)))) b!4890597))

(assert (= (and b!4890424 ((_ is Star!13247) (regex!8172 (h!62847 rulesArg!165)))) b!4890598))

(assert (= (and b!4890424 ((_ is Union!13247) (regex!8172 (h!62847 rulesArg!165)))) b!4890599))

(declare-fun b!4890624 () Bool)

(declare-fun tp!1376610 () Bool)

(declare-fun e!3057496 () Bool)

(declare-fun tp!1376612 () Bool)

(assert (=> b!4890624 (= e!3057496 (and (inv!72663 (left!40968 (c!831147 input!1236))) tp!1376610 (inv!72663 (right!41298 (c!831147 input!1236))) tp!1376612))))

(declare-fun b!4890626 () Bool)

(declare-fun e!3057495 () Bool)

(declare-fun tp!1376611 () Bool)

(assert (=> b!4890626 (= e!3057495 tp!1376611)))

(declare-fun b!4890625 () Bool)

(declare-fun inv!72668 (IArray!29541) Bool)

(assert (=> b!4890625 (= e!3057496 (and (inv!72668 (xs!18056 (c!831147 input!1236))) e!3057495))))

(assert (=> b!4890418 (= tp!1376543 (and (inv!72663 (c!831147 input!1236)) e!3057496))))

(assert (= (and b!4890418 ((_ is Node!14740) (c!831147 input!1236))) b!4890624))

(assert (= b!4890625 b!4890626))

(assert (= (and b!4890418 ((_ is Leaf!24543) (c!831147 input!1236))) b!4890625))

(declare-fun m!5894118 () Bool)

(assert (=> b!4890624 m!5894118))

(declare-fun m!5894120 () Bool)

(assert (=> b!4890624 m!5894120))

(declare-fun m!5894122 () Bool)

(assert (=> b!4890625 m!5894122))

(assert (=> b!4890418 m!5893952))

(check-sat (not b!4890437) (not b!4890598) (not b!4890435) (not d!1570411) (not b!4890536) (not b!4890513) (not b!4890519) b_and!344459 (not b!4890478) (not d!1570407) (not b!4890476) (not b!4890624) (not b!4890554) (not b!4890552) (not b!4890626) b_and!344463 tp_is_empty!35773 (not b!4890477) b_and!344461 (not b!4890479) (not b!4890575) (not b!4890511) (not b!4890537) (not b!4890418) (not d!1570423) (not b_next!132319) (not d!1570393) (not b!4890599) (not b!4890597) (not d!1570425) (not b_next!132315) (not b!4890475) b_and!344465 (not b_next!132313) (not b!4890625) (not b!4890574) (not b!4890512) (not d!1570419) (not b_next!132317))
(check-sat b_and!344463 b_and!344461 (not b_next!132319) b_and!344459 (not b_next!132315) (not b_next!132317) b_and!344465 (not b_next!132313))

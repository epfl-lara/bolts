; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113498 () Bool)

(assert start!113498)

(declare-fun b!1291495 () Bool)

(declare-fun b_free!30531 () Bool)

(declare-fun b_next!31235 () Bool)

(assert (=> b!1291495 (= b_free!30531 (not b_next!31235))))

(declare-fun tp!376489 () Bool)

(declare-fun b_and!86047 () Bool)

(assert (=> b!1291495 (= tp!376489 b_and!86047)))

(declare-fun b_free!30533 () Bool)

(declare-fun b_next!31237 () Bool)

(assert (=> b!1291495 (= b_free!30533 (not b_next!31237))))

(declare-fun tp!376491 () Bool)

(declare-fun b_and!86049 () Bool)

(assert (=> b!1291495 (= tp!376491 b_and!86049)))

(declare-fun b!1291503 () Bool)

(declare-fun b_free!30535 () Bool)

(declare-fun b_next!31239 () Bool)

(assert (=> b!1291503 (= b_free!30535 (not b_next!31239))))

(declare-fun tp!376493 () Bool)

(declare-fun b_and!86051 () Bool)

(assert (=> b!1291503 (= tp!376493 b_and!86051)))

(declare-fun b_free!30537 () Bool)

(declare-fun b_next!31241 () Bool)

(assert (=> b!1291503 (= b_free!30537 (not b_next!31241))))

(declare-fun tp!376494 () Bool)

(declare-fun b_and!86053 () Bool)

(assert (=> b!1291503 (= tp!376494 b_and!86053)))

(declare-fun b!1291509 () Bool)

(declare-fun b_free!30539 () Bool)

(declare-fun b_next!31243 () Bool)

(assert (=> b!1291509 (= b_free!30539 (not b_next!31243))))

(declare-fun tp!376499 () Bool)

(declare-fun b_and!86055 () Bool)

(assert (=> b!1291509 (= tp!376499 b_and!86055)))

(declare-fun b_free!30541 () Bool)

(declare-fun b_next!31245 () Bool)

(assert (=> b!1291509 (= b_free!30541 (not b_next!31245))))

(declare-fun tp!376492 () Bool)

(declare-fun b_and!86057 () Bool)

(assert (=> b!1291509 (= tp!376492 b_and!86057)))

(declare-fun b!1291507 () Bool)

(assert (=> b!1291507 true))

(assert (=> b!1291507 true))

(declare-fun b!1291492 () Bool)

(declare-fun res!578790 () Bool)

(declare-fun e!828272 () Bool)

(assert (=> b!1291492 (=> (not res!578790) (not e!828272))))

(declare-datatypes ((LexerInterface!1918 0))(
  ( (LexerInterfaceExt!1915 (__x!8455 Int)) (Lexer!1916) )
))
(declare-fun thiss!19762 () LexerInterface!1918)

(declare-datatypes ((List!12975 0))(
  ( (Nil!12909) (Cons!12909 (h!18310 (_ BitVec 16)) (t!117198 List!12975)) )
))
(declare-datatypes ((TokenValue!2313 0))(
  ( (FloatLiteralValue!4626 (text!16636 List!12975)) (TokenValueExt!2312 (__x!8456 Int)) (Broken!11565 (value!72962 List!12975)) (Object!2378) (End!2313) (Def!2313) (Underscore!2313) (Match!2313) (Else!2313) (Error!2313) (Case!2313) (If!2313) (Extends!2313) (Abstract!2313) (Class!2313) (Val!2313) (DelimiterValue!4626 (del!2373 List!12975)) (KeywordValue!2319 (value!72963 List!12975)) (CommentValue!4626 (value!72964 List!12975)) (WhitespaceValue!4626 (value!72965 List!12975)) (IndentationValue!2313 (value!72966 List!12975)) (String!15800) (Int32!2313) (Broken!11566 (value!72967 List!12975)) (Boolean!2314) (Unit!19061) (OperatorValue!2316 (op!2373 List!12975)) (IdentifierValue!4626 (value!72968 List!12975)) (IdentifierValue!4627 (value!72969 List!12975)) (WhitespaceValue!4627 (value!72970 List!12975)) (True!4626) (False!4626) (Broken!11567 (value!72971 List!12975)) (Broken!11568 (value!72972 List!12975)) (True!4627) (RightBrace!2313) (RightBracket!2313) (Colon!2313) (Null!2313) (Comma!2313) (LeftBracket!2313) (False!4627) (LeftBrace!2313) (ImaginaryLiteralValue!2313 (text!16637 List!12975)) (StringLiteralValue!6939 (value!72973 List!12975)) (EOFValue!2313 (value!72974 List!12975)) (IdentValue!2313 (value!72975 List!12975)) (DelimiterValue!4627 (value!72976 List!12975)) (DedentValue!2313 (value!72977 List!12975)) (NewLineValue!2313 (value!72978 List!12975)) (IntegerValue!6939 (value!72979 (_ BitVec 32)) (text!16638 List!12975)) (IntegerValue!6940 (value!72980 Int) (text!16639 List!12975)) (Times!2313) (Or!2313) (Equal!2313) (Minus!2313) (Broken!11569 (value!72981 List!12975)) (And!2313) (Div!2313) (LessEqual!2313) (Mod!2313) (Concat!5850) (Not!2313) (Plus!2313) (SpaceValue!2313 (value!72982 List!12975)) (IntegerValue!6941 (value!72983 Int) (text!16640 List!12975)) (StringLiteralValue!6940 (text!16641 List!12975)) (FloatLiteralValue!4627 (text!16642 List!12975)) (BytesLiteralValue!2313 (value!72984 List!12975)) (CommentValue!4627 (value!72985 List!12975)) (StringLiteralValue!6941 (value!72986 List!12975)) (ErrorTokenValue!2313 (msg!2374 List!12975)) )
))
(declare-datatypes ((C!7364 0))(
  ( (C!7365 (val!4242 Int)) )
))
(declare-datatypes ((List!12976 0))(
  ( (Nil!12910) (Cons!12910 (h!18311 C!7364) (t!117199 List!12976)) )
))
(declare-datatypes ((IArray!8487 0))(
  ( (IArray!8488 (innerList!4301 List!12976)) )
))
(declare-datatypes ((String!15801 0))(
  ( (String!15802 (value!72987 String)) )
))
(declare-datatypes ((Conc!4241 0))(
  ( (Node!4241 (left!11106 Conc!4241) (right!11436 Conc!4241) (csize!8712 Int) (cheight!4452 Int)) (Leaf!6549 (xs!6952 IArray!8487) (csize!8713 Int)) (Empty!4241) )
))
(declare-datatypes ((BalanceConc!8422 0))(
  ( (BalanceConc!8423 (c!212565 Conc!4241)) )
))
(declare-datatypes ((Regex!3537 0))(
  ( (ElementMatch!3537 (c!212566 C!7364)) (Concat!5851 (regOne!7586 Regex!3537) (regTwo!7586 Regex!3537)) (EmptyExpr!3537) (Star!3537 (reg!3866 Regex!3537)) (EmptyLang!3537) (Union!3537 (regOne!7587 Regex!3537) (regTwo!7587 Regex!3537)) )
))
(declare-datatypes ((TokenValueInjection!4286 0))(
  ( (TokenValueInjection!4287 (toValue!3422 Int) (toChars!3281 Int)) )
))
(declare-datatypes ((Rule!4246 0))(
  ( (Rule!4247 (regex!2223 Regex!3537) (tag!2485 String!15801) (isSeparator!2223 Bool) (transformation!2223 TokenValueInjection!4286)) )
))
(declare-datatypes ((List!12977 0))(
  ( (Nil!12911) (Cons!12911 (h!18312 Rule!4246) (t!117200 List!12977)) )
))
(declare-fun rules!2550 () List!12977)

(declare-datatypes ((Token!4108 0))(
  ( (Token!4109 (value!72988 TokenValue!2313) (rule!3962 Rule!4246) (size!10536 Int) (originalCharacters!3085 List!12976)) )
))
(declare-fun t2!34 () Token!4108)

(declare-fun rulesProduceIndividualToken!887 (LexerInterface!1918 List!12977 Token!4108) Bool)

(assert (=> b!1291492 (= res!578790 (rulesProduceIndividualToken!887 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1291493 () Bool)

(declare-fun res!578798 () Bool)

(assert (=> b!1291493 (=> (not res!578798) (not e!828272))))

(declare-fun t1!34 () Token!4108)

(assert (=> b!1291493 (= res!578798 (rulesProduceIndividualToken!887 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1291494 () Bool)

(declare-fun res!578799 () Bool)

(assert (=> b!1291494 (=> (not res!578799) (not e!828272))))

(declare-fun isEmpty!7663 (List!12977) Bool)

(assert (=> b!1291494 (= res!578799 (not (isEmpty!7663 rules!2550)))))

(declare-fun e!828276 () Bool)

(assert (=> b!1291495 (= e!828276 (and tp!376489 tp!376491))))

(declare-fun b!1291496 () Bool)

(declare-fun res!578792 () Bool)

(declare-fun e!828286 () Bool)

(assert (=> b!1291496 (=> (not res!578792) (not e!828286))))

(declare-fun separableTokensPredicate!201 (LexerInterface!1918 Token!4108 Token!4108 List!12977) Bool)

(assert (=> b!1291496 (= res!578792 (not (separableTokensPredicate!201 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1291497 () Bool)

(declare-fun e!828273 () Bool)

(assert (=> b!1291497 (= e!828286 e!828273)))

(declare-fun res!578800 () Bool)

(assert (=> b!1291497 (=> (not res!578800) (not e!828273))))

(declare-fun lt!425144 () Regex!3537)

(declare-fun lt!425141 () List!12976)

(declare-fun prefixMatch!50 (Regex!3537 List!12976) Bool)

(assert (=> b!1291497 (= res!578800 (prefixMatch!50 lt!425144 lt!425141))))

(declare-fun rulesRegex!108 (LexerInterface!1918 List!12977) Regex!3537)

(assert (=> b!1291497 (= lt!425144 (rulesRegex!108 thiss!19762 rules!2550))))

(declare-fun lt!425143 () BalanceConc!8422)

(declare-fun ++!3270 (List!12976 List!12976) List!12976)

(declare-fun list!4819 (BalanceConc!8422) List!12976)

(declare-fun charsOf!1195 (Token!4108) BalanceConc!8422)

(declare-fun apply!2821 (BalanceConc!8422 Int) C!7364)

(assert (=> b!1291497 (= lt!425141 (++!3270 (list!4819 (charsOf!1195 t1!34)) (Cons!12910 (apply!2821 lt!425143 0) Nil!12910)))))

(declare-fun b!1291498 () Bool)

(declare-fun tp!376495 () Bool)

(declare-fun e!828271 () Bool)

(declare-fun e!828287 () Bool)

(declare-fun inv!21 (TokenValue!2313) Bool)

(assert (=> b!1291498 (= e!828271 (and (inv!21 (value!72988 t2!34)) e!828287 tp!376495))))

(declare-fun b!1291499 () Bool)

(declare-fun e!828277 () Bool)

(declare-fun lambda!50737 () Int)

(declare-fun Exists!695 (Int) Bool)

(assert (=> b!1291499 (= e!828277 (Exists!695 lambda!50737))))

(declare-fun e!828283 () Bool)

(declare-fun tp!376496 () Bool)

(declare-fun b!1291500 () Bool)

(declare-fun inv!17327 (String!15801) Bool)

(declare-fun inv!17330 (TokenValueInjection!4286) Bool)

(assert (=> b!1291500 (= e!828283 (and tp!376496 (inv!17327 (tag!2485 (rule!3962 t1!34))) (inv!17330 (transformation!2223 (rule!3962 t1!34))) e!828276))))

(declare-fun b!1291501 () Bool)

(declare-fun res!578795 () Bool)

(assert (=> b!1291501 (=> (not res!578795) (not e!828272))))

(declare-fun rulesInvariant!1788 (LexerInterface!1918 List!12977) Bool)

(assert (=> b!1291501 (= res!578795 (rulesInvariant!1788 thiss!19762 rules!2550))))

(declare-fun e!828280 () Bool)

(assert (=> b!1291503 (= e!828280 (and tp!376493 tp!376494))))

(declare-fun b!1291504 () Bool)

(declare-fun res!578794 () Bool)

(assert (=> b!1291504 (=> (not res!578794) (not e!828286))))

(declare-fun sepAndNonSepRulesDisjointChars!596 (List!12977 List!12977) Bool)

(assert (=> b!1291504 (= res!578794 (sepAndNonSepRulesDisjointChars!596 rules!2550 rules!2550))))

(declare-fun b!1291505 () Bool)

(declare-fun e!828282 () Bool)

(declare-fun e!828279 () Bool)

(declare-fun tp!376490 () Bool)

(assert (=> b!1291505 (= e!828282 (and e!828279 tp!376490))))

(declare-fun tp!376497 () Bool)

(declare-fun b!1291506 () Bool)

(declare-fun e!828278 () Bool)

(assert (=> b!1291506 (= e!828278 (and (inv!21 (value!72988 t1!34)) e!828283 tp!376497))))

(assert (=> b!1291507 (= e!828273 (not e!828277))))

(declare-fun res!578793 () Bool)

(assert (=> b!1291507 (=> res!578793 e!828277)))

(assert (=> b!1291507 (= res!578793 (not (Exists!695 lambda!50737)))))

(assert (=> b!1291507 (Exists!695 lambda!50737)))

(declare-datatypes ((Unit!19062 0))(
  ( (Unit!19063) )
))
(declare-fun lt!425142 () Unit!19062)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!13 (Regex!3537 List!12976) Unit!19062)

(assert (=> b!1291507 (= lt!425142 (lemmaPrefixMatchThenExistsStringThatMatches!13 lt!425144 lt!425141))))

(declare-fun res!578791 () Bool)

(assert (=> start!113498 (=> (not res!578791) (not e!828272))))

(get-info :version)

(assert (=> start!113498 (= res!578791 ((_ is Lexer!1916) thiss!19762))))

(assert (=> start!113498 e!828272))

(assert (=> start!113498 true))

(assert (=> start!113498 e!828282))

(declare-fun inv!17331 (Token!4108) Bool)

(assert (=> start!113498 (and (inv!17331 t1!34) e!828278)))

(assert (=> start!113498 (and (inv!17331 t2!34) e!828271)))

(declare-fun b!1291502 () Bool)

(assert (=> b!1291502 (= e!828272 e!828286)))

(declare-fun res!578796 () Bool)

(assert (=> b!1291502 (=> (not res!578796) (not e!828286))))

(declare-fun size!10537 (BalanceConc!8422) Int)

(assert (=> b!1291502 (= res!578796 (> (size!10537 lt!425143) 0))))

(assert (=> b!1291502 (= lt!425143 (charsOf!1195 t2!34))))

(declare-fun tp!376500 () Bool)

(declare-fun b!1291508 () Bool)

(assert (=> b!1291508 (= e!828287 (and tp!376500 (inv!17327 (tag!2485 (rule!3962 t2!34))) (inv!17330 (transformation!2223 (rule!3962 t2!34))) e!828280))))

(declare-fun e!828274 () Bool)

(assert (=> b!1291509 (= e!828274 (and tp!376499 tp!376492))))

(declare-fun b!1291510 () Bool)

(declare-fun res!578797 () Bool)

(assert (=> b!1291510 (=> (not res!578797) (not e!828272))))

(assert (=> b!1291510 (= res!578797 (not (= (isSeparator!2223 (rule!3962 t1!34)) (isSeparator!2223 (rule!3962 t2!34)))))))

(declare-fun tp!376498 () Bool)

(declare-fun b!1291511 () Bool)

(assert (=> b!1291511 (= e!828279 (and tp!376498 (inv!17327 (tag!2485 (h!18312 rules!2550))) (inv!17330 (transformation!2223 (h!18312 rules!2550))) e!828274))))

(assert (= (and start!113498 res!578791) b!1291494))

(assert (= (and b!1291494 res!578799) b!1291501))

(assert (= (and b!1291501 res!578795) b!1291493))

(assert (= (and b!1291493 res!578798) b!1291492))

(assert (= (and b!1291492 res!578790) b!1291510))

(assert (= (and b!1291510 res!578797) b!1291502))

(assert (= (and b!1291502 res!578796) b!1291504))

(assert (= (and b!1291504 res!578794) b!1291496))

(assert (= (and b!1291496 res!578792) b!1291497))

(assert (= (and b!1291497 res!578800) b!1291507))

(assert (= (and b!1291507 (not res!578793)) b!1291499))

(assert (= b!1291511 b!1291509))

(assert (= b!1291505 b!1291511))

(assert (= (and start!113498 ((_ is Cons!12911) rules!2550)) b!1291505))

(assert (= b!1291500 b!1291495))

(assert (= b!1291506 b!1291500))

(assert (= start!113498 b!1291506))

(assert (= b!1291508 b!1291503))

(assert (= b!1291498 b!1291508))

(assert (= start!113498 b!1291498))

(declare-fun m!1442239 () Bool)

(assert (=> b!1291501 m!1442239))

(declare-fun m!1442241 () Bool)

(assert (=> b!1291493 m!1442241))

(declare-fun m!1442243 () Bool)

(assert (=> b!1291502 m!1442243))

(declare-fun m!1442245 () Bool)

(assert (=> b!1291502 m!1442245))

(declare-fun m!1442247 () Bool)

(assert (=> b!1291496 m!1442247))

(declare-fun m!1442249 () Bool)

(assert (=> b!1291494 m!1442249))

(declare-fun m!1442251 () Bool)

(assert (=> b!1291499 m!1442251))

(declare-fun m!1442253 () Bool)

(assert (=> b!1291506 m!1442253))

(declare-fun m!1442255 () Bool)

(assert (=> start!113498 m!1442255))

(declare-fun m!1442257 () Bool)

(assert (=> start!113498 m!1442257))

(declare-fun m!1442259 () Bool)

(assert (=> b!1291504 m!1442259))

(declare-fun m!1442261 () Bool)

(assert (=> b!1291492 m!1442261))

(assert (=> b!1291507 m!1442251))

(assert (=> b!1291507 m!1442251))

(declare-fun m!1442263 () Bool)

(assert (=> b!1291507 m!1442263))

(declare-fun m!1442265 () Bool)

(assert (=> b!1291497 m!1442265))

(declare-fun m!1442267 () Bool)

(assert (=> b!1291497 m!1442267))

(declare-fun m!1442269 () Bool)

(assert (=> b!1291497 m!1442269))

(declare-fun m!1442271 () Bool)

(assert (=> b!1291497 m!1442271))

(declare-fun m!1442273 () Bool)

(assert (=> b!1291497 m!1442273))

(declare-fun m!1442275 () Bool)

(assert (=> b!1291497 m!1442275))

(assert (=> b!1291497 m!1442267))

(assert (=> b!1291497 m!1442269))

(declare-fun m!1442277 () Bool)

(assert (=> b!1291511 m!1442277))

(declare-fun m!1442279 () Bool)

(assert (=> b!1291511 m!1442279))

(declare-fun m!1442281 () Bool)

(assert (=> b!1291498 m!1442281))

(declare-fun m!1442283 () Bool)

(assert (=> b!1291500 m!1442283))

(declare-fun m!1442285 () Bool)

(assert (=> b!1291500 m!1442285))

(declare-fun m!1442287 () Bool)

(assert (=> b!1291508 m!1442287))

(declare-fun m!1442289 () Bool)

(assert (=> b!1291508 m!1442289))

(check-sat (not b!1291508) b_and!86051 b_and!86057 (not b_next!31241) (not b!1291506) (not b!1291492) (not start!113498) (not b_next!31245) (not b!1291504) (not b!1291511) (not b!1291499) (not b!1291502) b_and!86049 (not b!1291500) (not b!1291494) b_and!86047 (not b!1291507) (not b!1291496) (not b_next!31243) b_and!86053 (not b_next!31235) (not b_next!31237) (not b!1291498) (not b!1291493) (not b!1291505) (not b!1291501) b_and!86055 (not b_next!31239) (not b!1291497))
(check-sat b_and!86049 b_and!86051 b_and!86057 (not b_next!31241) b_and!86047 (not b_next!31245) (not b_next!31243) b_and!86055 (not b_next!31239) b_and!86053 (not b_next!31235) (not b_next!31237))

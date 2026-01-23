; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511112 () Bool)

(assert start!511112)

(declare-fun b!4884433 () Bool)

(declare-fun b_free!131139 () Bool)

(declare-fun b_next!131929 () Bool)

(assert (=> b!4884433 (= b_free!131139 (not b_next!131929))))

(declare-fun tp!1374509 () Bool)

(declare-fun b_and!343971 () Bool)

(assert (=> b!4884433 (= tp!1374509 b_and!343971)))

(declare-fun b_free!131141 () Bool)

(declare-fun b_next!131931 () Bool)

(assert (=> b!4884433 (= b_free!131141 (not b_next!131931))))

(declare-fun tp!1374512 () Bool)

(declare-fun b_and!343973 () Bool)

(assert (=> b!4884433 (= tp!1374512 b_and!343973)))

(declare-fun b!4884428 () Bool)

(declare-fun e!3053027 () Bool)

(declare-fun e!3053028 () Bool)

(assert (=> b!4884428 (= e!3053027 e!3053028)))

(declare-fun res!2085394 () Bool)

(assert (=> b!4884428 (=> res!2085394 e!3053028)))

(declare-fun lt!2001114 () Bool)

(declare-datatypes ((C!26568 0))(
  ( (C!26569 (val!22618 Int)) )
))
(declare-datatypes ((List!56335 0))(
  ( (Nil!56211) (Cons!56211 (h!62659 C!26568) (t!364981 List!56335)) )
))
(declare-datatypes ((List!56336 0))(
  ( (Nil!56212) (Cons!56212 (h!62660 (_ BitVec 16)) (t!364982 List!56336)) )
))
(declare-datatypes ((TokenValue!8420 0))(
  ( (FloatLiteralValue!16840 (text!59385 List!56336)) (TokenValueExt!8419 (__x!34133 Int)) (Broken!42100 (value!260261 List!56336)) (Object!8543) (End!8420) (Def!8420) (Underscore!8420) (Match!8420) (Else!8420) (Error!8420) (Case!8420) (If!8420) (Extends!8420) (Abstract!8420) (Class!8420) (Val!8420) (DelimiterValue!16840 (del!8480 List!56336)) (KeywordValue!8426 (value!260262 List!56336)) (CommentValue!16840 (value!260263 List!56336)) (WhitespaceValue!16840 (value!260264 List!56336)) (IndentationValue!8420 (value!260265 List!56336)) (String!63541) (Int32!8420) (Broken!42101 (value!260266 List!56336)) (Boolean!8421) (Unit!146201) (OperatorValue!8423 (op!8480 List!56336)) (IdentifierValue!16840 (value!260267 List!56336)) (IdentifierValue!16841 (value!260268 List!56336)) (WhitespaceValue!16841 (value!260269 List!56336)) (True!16840) (False!16840) (Broken!42102 (value!260270 List!56336)) (Broken!42103 (value!260271 List!56336)) (True!16841) (RightBrace!8420) (RightBracket!8420) (Colon!8420) (Null!8420) (Comma!8420) (LeftBracket!8420) (False!16841) (LeftBrace!8420) (ImaginaryLiteralValue!8420 (text!59386 List!56336)) (StringLiteralValue!25260 (value!260272 List!56336)) (EOFValue!8420 (value!260273 List!56336)) (IdentValue!8420 (value!260274 List!56336)) (DelimiterValue!16841 (value!260275 List!56336)) (DedentValue!8420 (value!260276 List!56336)) (NewLineValue!8420 (value!260277 List!56336)) (IntegerValue!25260 (value!260278 (_ BitVec 32)) (text!59387 List!56336)) (IntegerValue!25261 (value!260279 Int) (text!59388 List!56336)) (Times!8420) (Or!8420) (Equal!8420) (Minus!8420) (Broken!42104 (value!260280 List!56336)) (And!8420) (Div!8420) (LessEqual!8420) (Mod!8420) (Concat!21605) (Not!8420) (Plus!8420) (SpaceValue!8420 (value!260281 List!56336)) (IntegerValue!25262 (value!260282 Int) (text!59389 List!56336)) (StringLiteralValue!25261 (text!59390 List!56336)) (FloatLiteralValue!16841 (text!59391 List!56336)) (BytesLiteralValue!8420 (value!260283 List!56336)) (CommentValue!16841 (value!260284 List!56336)) (StringLiteralValue!25262 (value!260285 List!56336)) (ErrorTokenValue!8420 (msg!8481 List!56336)) )
))
(declare-datatypes ((Regex!13185 0))(
  ( (ElementMatch!13185 (c!830541 C!26568)) (Concat!21606 (regOne!26882 Regex!13185) (regTwo!26882 Regex!13185)) (EmptyExpr!13185) (Star!13185 (reg!13514 Regex!13185)) (EmptyLang!13185) (Union!13185 (regOne!26883 Regex!13185) (regTwo!26883 Regex!13185)) )
))
(declare-datatypes ((String!63542 0))(
  ( (String!63543 (value!260286 String)) )
))
(declare-datatypes ((IArray!29417 0))(
  ( (IArray!29418 (innerList!14766 List!56335)) )
))
(declare-datatypes ((Conc!14678 0))(
  ( (Node!14678 (left!40831 Conc!14678) (right!41161 Conc!14678) (csize!29586 Int) (cheight!14889 Int)) (Leaf!24450 (xs!17994 IArray!29417) (csize!29587 Int)) (Empty!14678) )
))
(declare-datatypes ((BalanceConc!28786 0))(
  ( (BalanceConc!28787 (c!830542 Conc!14678)) )
))
(declare-datatypes ((TokenValueInjection!16148 0))(
  ( (TokenValueInjection!16149 (toValue!10997 Int) (toChars!10856 Int)) )
))
(declare-datatypes ((Rule!16020 0))(
  ( (Rule!16021 (regex!8110 Regex!13185) (tag!8974 String!63542) (isSeparator!8110 Bool) (transformation!8110 TokenValueInjection!16148)) )
))
(declare-datatypes ((Token!14788 0))(
  ( (Token!14789 (value!260287 TokenValue!8420) (rule!11274 Rule!16020) (size!37032 Int) (originalCharacters!8425 List!56335)) )
))
(declare-datatypes ((tuple2!60140 0))(
  ( (tuple2!60141 (_1!33373 Token!14788) (_2!33373 List!56335)) )
))
(declare-datatypes ((Option!13903 0))(
  ( (None!13902) (Some!13902 (v!49852 tuple2!60140)) )
))
(declare-fun lt!2001110 () Option!13903)

(declare-fun isDefined!10930 (Option!13903) Bool)

(assert (=> b!4884428 (= res!2085394 (not (= lt!2001114 (isDefined!10930 lt!2001110))))))

(declare-datatypes ((tuple2!60142 0))(
  ( (tuple2!60143 (_1!33374 Token!14788) (_2!33374 BalanceConc!28786)) )
))
(declare-datatypes ((Option!13904 0))(
  ( (None!13903) (Some!13903 (v!49853 tuple2!60142)) )
))
(declare-fun lt!2001109 () Option!13904)

(declare-fun isDefined!10931 (Option!13904) Bool)

(assert (=> b!4884428 (= lt!2001114 (isDefined!10931 lt!2001109))))

(declare-datatypes ((LexerInterface!7702 0))(
  ( (LexerInterfaceExt!7699 (__x!34134 Int)) (Lexer!7700) )
))
(declare-fun thiss!14805 () LexerInterface!7702)

(declare-fun lt!2001116 () List!56335)

(declare-datatypes ((List!56337 0))(
  ( (Nil!56213) (Cons!56213 (h!62661 Rule!16020) (t!364983 List!56337)) )
))
(declare-fun rulesArg!165 () List!56337)

(declare-fun maxPrefixZipper!613 (LexerInterface!7702 List!56337 List!56335) Option!13903)

(assert (=> b!4884428 (= lt!2001110 (maxPrefixZipper!613 thiss!14805 rulesArg!165 lt!2001116))))

(declare-fun b!4884429 () Bool)

(declare-fun e!3053030 () Bool)

(declare-fun e!3053020 () Bool)

(assert (=> b!4884429 (= e!3053030 e!3053020)))

(declare-fun res!2085398 () Bool)

(assert (=> b!4884429 (=> res!2085398 e!3053020)))

(declare-fun lt!2001112 () Option!13903)

(declare-fun get!19354 (Option!13904) tuple2!60142)

(declare-fun get!19355 (Option!13903) tuple2!60140)

(assert (=> b!4884429 (= res!2085398 (not (= (_1!33374 (get!19354 lt!2001109)) (_1!33373 (get!19355 lt!2001112)))))))

(declare-fun maxPrefix!4575 (LexerInterface!7702 List!56337 List!56335) Option!13903)

(assert (=> b!4884429 (= lt!2001112 (maxPrefix!4575 thiss!14805 rulesArg!165 lt!2001116))))

(declare-fun b!4884430 () Bool)

(declare-fun e!3053026 () Bool)

(assert (=> b!4884430 (= e!3053026 e!3053027)))

(declare-fun res!2085393 () Bool)

(assert (=> b!4884430 (=> res!2085393 e!3053027)))

(declare-fun lt!2001115 () Option!13904)

(get-info :version)

(assert (=> b!4884430 (= res!2085393 (or (and ((_ is None!13903) lt!2001109) ((_ is None!13903) lt!2001115)) (not ((_ is None!13903) lt!2001115))))))

(declare-fun input!1236 () BalanceConc!28786)

(declare-fun maxPrefixZipperSequence!1271 (LexerInterface!7702 List!56337 BalanceConc!28786) Option!13904)

(assert (=> b!4884430 (= lt!2001115 (maxPrefixZipperSequence!1271 thiss!14805 (t!364983 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!636 (LexerInterface!7702 Rule!16020 BalanceConc!28786) Option!13904)

(assert (=> b!4884430 (= lt!2001109 (maxPrefixOneRuleZipperSequence!636 thiss!14805 (h!62661 rulesArg!165) input!1236))))

(declare-fun b!4884432 () Bool)

(declare-fun e!3053031 () Bool)

(declare-fun lt!2001117 () tuple2!60142)

(declare-fun lt!2001113 () tuple2!60140)

(declare-fun list!17637 (BalanceConc!28786) List!56335)

(assert (=> b!4884432 (= e!3053031 (not (= (list!17637 (_2!33374 lt!2001117)) (_2!33373 lt!2001113))))))

(declare-fun e!3053021 () Bool)

(assert (=> b!4884433 (= e!3053021 (and tp!1374509 tp!1374512))))

(declare-fun b!4884434 () Bool)

(declare-fun res!2085395 () Bool)

(assert (=> b!4884434 (=> res!2085395 e!3053030)))

(declare-fun lt!2001111 () Bool)

(assert (=> b!4884434 (= res!2085395 lt!2001111)))

(declare-fun b!4884435 () Bool)

(declare-fun tp!1374513 () Bool)

(declare-fun e!3053024 () Bool)

(declare-fun inv!72320 (String!63542) Bool)

(declare-fun inv!72324 (TokenValueInjection!16148) Bool)

(assert (=> b!4884435 (= e!3053024 (and tp!1374513 (inv!72320 (tag!8974 (h!62661 rulesArg!165))) (inv!72324 (transformation!8110 (h!62661 rulesArg!165))) e!3053021))))

(declare-fun b!4884436 () Bool)

(declare-fun e!3053023 () Bool)

(assert (=> b!4884436 (= e!3053023 e!3053031)))

(declare-fun res!2085397 () Bool)

(assert (=> b!4884436 (=> res!2085397 e!3053031)))

(assert (=> b!4884436 (= res!2085397 (not (= (_1!33374 lt!2001117) (_1!33373 lt!2001113))))))

(assert (=> b!4884436 (= lt!2001113 (get!19355 lt!2001110))))

(assert (=> b!4884436 (= lt!2001117 (get!19354 lt!2001109))))

(declare-fun b!4884437 () Bool)

(declare-fun e!3053022 () Bool)

(declare-fun tp!1374510 () Bool)

(declare-fun inv!72325 (Conc!14678) Bool)

(assert (=> b!4884437 (= e!3053022 (and (inv!72325 (c!830542 input!1236)) tp!1374510))))

(declare-fun b!4884438 () Bool)

(declare-fun e!3053032 () Bool)

(assert (=> b!4884438 (= e!3053032 (not e!3053026))))

(declare-fun res!2085396 () Bool)

(assert (=> b!4884438 (=> res!2085396 e!3053026)))

(assert (=> b!4884438 (= res!2085396 (or (and ((_ is Cons!56213) rulesArg!165) ((_ is Nil!56213) (t!364983 rulesArg!165))) (not ((_ is Cons!56213) rulesArg!165))))))

(declare-fun isPrefix!4832 (List!56335 List!56335) Bool)

(assert (=> b!4884438 (isPrefix!4832 lt!2001116 lt!2001116)))

(declare-datatypes ((Unit!146202 0))(
  ( (Unit!146203) )
))
(declare-fun lt!2001118 () Unit!146202)

(declare-fun lemmaIsPrefixRefl!3229 (List!56335 List!56335) Unit!146202)

(assert (=> b!4884438 (= lt!2001118 (lemmaIsPrefixRefl!3229 lt!2001116 lt!2001116))))

(assert (=> b!4884438 (= lt!2001116 (list!17637 input!1236))))

(declare-fun b!4884439 () Bool)

(assert (=> b!4884439 (= e!3053020 (isDefined!10930 lt!2001112))))

(declare-fun b!4884440 () Bool)

(declare-fun res!2085400 () Bool)

(assert (=> b!4884440 (=> (not res!2085400) (not e!3053032))))

(declare-fun isEmpty!30117 (List!56337) Bool)

(assert (=> b!4884440 (= res!2085400 (not (isEmpty!30117 rulesArg!165)))))

(declare-fun b!4884431 () Bool)

(assert (=> b!4884431 (= e!3053028 e!3053030)))

(declare-fun res!2085403 () Bool)

(assert (=> b!4884431 (=> res!2085403 e!3053030)))

(assert (=> b!4884431 (= res!2085403 e!3053023)))

(declare-fun res!2085399 () Bool)

(assert (=> b!4884431 (=> (not res!2085399) (not e!3053023))))

(assert (=> b!4884431 (= res!2085399 (not lt!2001111))))

(assert (=> b!4884431 (= lt!2001111 (not lt!2001114))))

(declare-fun res!2085401 () Bool)

(assert (=> start!511112 (=> (not res!2085401) (not e!3053032))))

(assert (=> start!511112 (= res!2085401 ((_ is Lexer!7700) thiss!14805))))

(assert (=> start!511112 e!3053032))

(assert (=> start!511112 true))

(declare-fun e!3053025 () Bool)

(assert (=> start!511112 e!3053025))

(declare-fun inv!72326 (BalanceConc!28786) Bool)

(assert (=> start!511112 (and (inv!72326 input!1236) e!3053022)))

(declare-fun b!4884441 () Bool)

(declare-fun res!2085402 () Bool)

(assert (=> b!4884441 (=> (not res!2085402) (not e!3053032))))

(declare-fun rulesValidInductive!3089 (LexerInterface!7702 List!56337) Bool)

(assert (=> b!4884441 (= res!2085402 (rulesValidInductive!3089 thiss!14805 rulesArg!165))))

(declare-fun b!4884442 () Bool)

(declare-fun tp!1374511 () Bool)

(assert (=> b!4884442 (= e!3053025 (and e!3053024 tp!1374511))))

(assert (= (and start!511112 res!2085401) b!4884441))

(assert (= (and b!4884441 res!2085402) b!4884440))

(assert (= (and b!4884440 res!2085400) b!4884438))

(assert (= (and b!4884438 (not res!2085396)) b!4884430))

(assert (= (and b!4884430 (not res!2085393)) b!4884428))

(assert (= (and b!4884428 (not res!2085394)) b!4884431))

(assert (= (and b!4884431 res!2085399) b!4884436))

(assert (= (and b!4884436 (not res!2085397)) b!4884432))

(assert (= (and b!4884431 (not res!2085403)) b!4884434))

(assert (= (and b!4884434 (not res!2085395)) b!4884429))

(assert (= (and b!4884429 (not res!2085398)) b!4884439))

(assert (= b!4884435 b!4884433))

(assert (= b!4884442 b!4884435))

(assert (= (and start!511112 ((_ is Cons!56213) rulesArg!165)) b!4884442))

(assert (= start!511112 b!4884437))

(declare-fun m!5888332 () Bool)

(assert (=> b!4884441 m!5888332))

(declare-fun m!5888334 () Bool)

(assert (=> b!4884439 m!5888334))

(declare-fun m!5888336 () Bool)

(assert (=> b!4884435 m!5888336))

(declare-fun m!5888338 () Bool)

(assert (=> b!4884435 m!5888338))

(declare-fun m!5888340 () Bool)

(assert (=> b!4884438 m!5888340))

(declare-fun m!5888342 () Bool)

(assert (=> b!4884438 m!5888342))

(declare-fun m!5888344 () Bool)

(assert (=> b!4884438 m!5888344))

(declare-fun m!5888346 () Bool)

(assert (=> b!4884430 m!5888346))

(declare-fun m!5888348 () Bool)

(assert (=> b!4884430 m!5888348))

(declare-fun m!5888350 () Bool)

(assert (=> b!4884432 m!5888350))

(declare-fun m!5888352 () Bool)

(assert (=> b!4884429 m!5888352))

(declare-fun m!5888354 () Bool)

(assert (=> b!4884429 m!5888354))

(declare-fun m!5888356 () Bool)

(assert (=> b!4884429 m!5888356))

(declare-fun m!5888358 () Bool)

(assert (=> b!4884428 m!5888358))

(declare-fun m!5888360 () Bool)

(assert (=> b!4884428 m!5888360))

(declare-fun m!5888362 () Bool)

(assert (=> b!4884428 m!5888362))

(declare-fun m!5888364 () Bool)

(assert (=> b!4884440 m!5888364))

(declare-fun m!5888366 () Bool)

(assert (=> start!511112 m!5888366))

(declare-fun m!5888368 () Bool)

(assert (=> b!4884437 m!5888368))

(declare-fun m!5888370 () Bool)

(assert (=> b!4884436 m!5888370))

(assert (=> b!4884436 m!5888352))

(check-sat (not b_next!131929) (not b!4884439) (not b!4884429) (not b!4884435) (not b!4884436) b_and!343973 (not b!4884441) (not b!4884438) b_and!343971 (not start!511112) (not b!4884428) (not b!4884430) (not b!4884437) (not b!4884442) (not b!4884440) (not b_next!131931) (not b!4884432))
(check-sat b_and!343973 b_and!343971 (not b_next!131929) (not b_next!131931))
(get-model)

(declare-fun d!1569298 () Bool)

(declare-fun c!830548 () Bool)

(assert (=> d!1569298 (= c!830548 ((_ is Node!14678) (c!830542 input!1236)))))

(declare-fun e!3053040 () Bool)

(assert (=> d!1569298 (= (inv!72325 (c!830542 input!1236)) e!3053040)))

(declare-fun b!4884455 () Bool)

(declare-fun inv!72327 (Conc!14678) Bool)

(assert (=> b!4884455 (= e!3053040 (inv!72327 (c!830542 input!1236)))))

(declare-fun b!4884456 () Bool)

(declare-fun e!3053041 () Bool)

(assert (=> b!4884456 (= e!3053040 e!3053041)))

(declare-fun res!2085418 () Bool)

(assert (=> b!4884456 (= res!2085418 (not ((_ is Leaf!24450) (c!830542 input!1236))))))

(assert (=> b!4884456 (=> res!2085418 e!3053041)))

(declare-fun b!4884457 () Bool)

(declare-fun inv!72328 (Conc!14678) Bool)

(assert (=> b!4884457 (= e!3053041 (inv!72328 (c!830542 input!1236)))))

(assert (= (and d!1569298 c!830548) b!4884455))

(assert (= (and d!1569298 (not c!830548)) b!4884456))

(assert (= (and b!4884456 (not res!2085418)) b!4884457))

(declare-fun m!5888380 () Bool)

(assert (=> b!4884455 m!5888380))

(declare-fun m!5888382 () Bool)

(assert (=> b!4884457 m!5888382))

(assert (=> b!4884437 d!1569298))

(declare-fun d!1569300 () Bool)

(assert (=> d!1569300 (= (get!19355 lt!2001110) (v!49852 lt!2001110))))

(assert (=> b!4884436 d!1569300))

(declare-fun d!1569302 () Bool)

(assert (=> d!1569302 (= (get!19354 lt!2001109) (v!49853 lt!2001109))))

(assert (=> b!4884436 d!1569302))

(declare-fun b!4884468 () Bool)

(declare-fun e!3053049 () Bool)

(declare-fun tail!9580 (List!56335) List!56335)

(assert (=> b!4884468 (= e!3053049 (isPrefix!4832 (tail!9580 lt!2001116) (tail!9580 lt!2001116)))))

(declare-fun b!4884467 () Bool)

(declare-fun res!2085428 () Bool)

(assert (=> b!4884467 (=> (not res!2085428) (not e!3053049))))

(declare-fun head!10434 (List!56335) C!26568)

(assert (=> b!4884467 (= res!2085428 (= (head!10434 lt!2001116) (head!10434 lt!2001116)))))

(declare-fun b!4884469 () Bool)

(declare-fun e!3053048 () Bool)

(declare-fun size!37035 (List!56335) Int)

(assert (=> b!4884469 (= e!3053048 (>= (size!37035 lt!2001116) (size!37035 lt!2001116)))))

(declare-fun d!1569304 () Bool)

(assert (=> d!1569304 e!3053048))

(declare-fun res!2085429 () Bool)

(assert (=> d!1569304 (=> res!2085429 e!3053048)))

(declare-fun lt!2001136 () Bool)

(assert (=> d!1569304 (= res!2085429 (not lt!2001136))))

(declare-fun e!3053050 () Bool)

(assert (=> d!1569304 (= lt!2001136 e!3053050)))

(declare-fun res!2085427 () Bool)

(assert (=> d!1569304 (=> res!2085427 e!3053050)))

(assert (=> d!1569304 (= res!2085427 ((_ is Nil!56211) lt!2001116))))

(assert (=> d!1569304 (= (isPrefix!4832 lt!2001116 lt!2001116) lt!2001136)))

(declare-fun b!4884466 () Bool)

(assert (=> b!4884466 (= e!3053050 e!3053049)))

(declare-fun res!2085430 () Bool)

(assert (=> b!4884466 (=> (not res!2085430) (not e!3053049))))

(assert (=> b!4884466 (= res!2085430 (not ((_ is Nil!56211) lt!2001116)))))

(assert (= (and d!1569304 (not res!2085427)) b!4884466))

(assert (= (and b!4884466 res!2085430) b!4884467))

(assert (= (and b!4884467 res!2085428) b!4884468))

(assert (= (and d!1569304 (not res!2085429)) b!4884469))

(declare-fun m!5888384 () Bool)

(assert (=> b!4884468 m!5888384))

(assert (=> b!4884468 m!5888384))

(assert (=> b!4884468 m!5888384))

(assert (=> b!4884468 m!5888384))

(declare-fun m!5888386 () Bool)

(assert (=> b!4884468 m!5888386))

(declare-fun m!5888388 () Bool)

(assert (=> b!4884467 m!5888388))

(assert (=> b!4884467 m!5888388))

(declare-fun m!5888390 () Bool)

(assert (=> b!4884469 m!5888390))

(assert (=> b!4884469 m!5888390))

(assert (=> b!4884438 d!1569304))

(declare-fun d!1569306 () Bool)

(assert (=> d!1569306 (isPrefix!4832 lt!2001116 lt!2001116)))

(declare-fun lt!2001139 () Unit!146202)

(declare-fun choose!35672 (List!56335 List!56335) Unit!146202)

(assert (=> d!1569306 (= lt!2001139 (choose!35672 lt!2001116 lt!2001116))))

(assert (=> d!1569306 (= (lemmaIsPrefixRefl!3229 lt!2001116 lt!2001116) lt!2001139)))

(declare-fun bs!1175534 () Bool)

(assert (= bs!1175534 d!1569306))

(assert (=> bs!1175534 m!5888340))

(declare-fun m!5888392 () Bool)

(assert (=> bs!1175534 m!5888392))

(assert (=> b!4884438 d!1569306))

(declare-fun d!1569308 () Bool)

(declare-fun list!17639 (Conc!14678) List!56335)

(assert (=> d!1569308 (= (list!17637 input!1236) (list!17639 (c!830542 input!1236)))))

(declare-fun bs!1175535 () Bool)

(assert (= bs!1175535 d!1569308))

(declare-fun m!5888394 () Bool)

(assert (=> bs!1175535 m!5888394))

(assert (=> b!4884438 d!1569308))

(assert (=> b!4884429 d!1569302))

(declare-fun d!1569310 () Bool)

(assert (=> d!1569310 (= (get!19355 lt!2001112) (v!49852 lt!2001112))))

(assert (=> b!4884429 d!1569310))

(declare-fun b!4884512 () Bool)

(declare-fun res!2085464 () Bool)

(declare-fun e!3053076 () Bool)

(assert (=> b!4884512 (=> (not res!2085464) (not e!3053076))))

(declare-fun lt!2001173 () Option!13903)

(assert (=> b!4884512 (= res!2085464 (< (size!37035 (_2!33373 (get!19355 lt!2001173))) (size!37035 lt!2001116)))))

(declare-fun b!4884513 () Bool)

(declare-fun res!2085469 () Bool)

(assert (=> b!4884513 (=> (not res!2085469) (not e!3053076))))

(declare-fun matchR!6509 (Regex!13185 List!56335) Bool)

(declare-fun charsOf!5355 (Token!14788) BalanceConc!28786)

(assert (=> b!4884513 (= res!2085469 (matchR!6509 (regex!8110 (rule!11274 (_1!33373 (get!19355 lt!2001173)))) (list!17637 (charsOf!5355 (_1!33373 (get!19355 lt!2001173))))))))

(declare-fun b!4884514 () Bool)

(declare-fun res!2085463 () Bool)

(assert (=> b!4884514 (=> (not res!2085463) (not e!3053076))))

(assert (=> b!4884514 (= res!2085463 (= (list!17637 (charsOf!5355 (_1!33373 (get!19355 lt!2001173)))) (originalCharacters!8425 (_1!33373 (get!19355 lt!2001173)))))))

(declare-fun d!1569312 () Bool)

(declare-fun e!3053075 () Bool)

(assert (=> d!1569312 e!3053075))

(declare-fun res!2085468 () Bool)

(assert (=> d!1569312 (=> res!2085468 e!3053075)))

(declare-fun isEmpty!30122 (Option!13903) Bool)

(assert (=> d!1569312 (= res!2085468 (isEmpty!30122 lt!2001173))))

(declare-fun e!3053077 () Option!13903)

(assert (=> d!1569312 (= lt!2001173 e!3053077)))

(declare-fun c!830554 () Bool)

(assert (=> d!1569312 (= c!830554 (and ((_ is Cons!56213) rulesArg!165) ((_ is Nil!56213) (t!364983 rulesArg!165))))))

(declare-fun lt!2001172 () Unit!146202)

(declare-fun lt!2001175 () Unit!146202)

(assert (=> d!1569312 (= lt!2001172 lt!2001175)))

(assert (=> d!1569312 (isPrefix!4832 lt!2001116 lt!2001116)))

(assert (=> d!1569312 (= lt!2001175 (lemmaIsPrefixRefl!3229 lt!2001116 lt!2001116))))

(assert (=> d!1569312 (rulesValidInductive!3089 thiss!14805 rulesArg!165)))

(assert (=> d!1569312 (= (maxPrefix!4575 thiss!14805 rulesArg!165 lt!2001116) lt!2001173)))

(declare-fun b!4884515 () Bool)

(declare-fun contains!19418 (List!56337 Rule!16020) Bool)

(assert (=> b!4884515 (= e!3053076 (contains!19418 rulesArg!165 (rule!11274 (_1!33373 (get!19355 lt!2001173)))))))

(declare-fun b!4884516 () Bool)

(declare-fun lt!2001174 () Option!13903)

(declare-fun lt!2001171 () Option!13903)

(assert (=> b!4884516 (= e!3053077 (ite (and ((_ is None!13902) lt!2001174) ((_ is None!13902) lt!2001171)) None!13902 (ite ((_ is None!13902) lt!2001171) lt!2001174 (ite ((_ is None!13902) lt!2001174) lt!2001171 (ite (>= (size!37032 (_1!33373 (v!49852 lt!2001174))) (size!37032 (_1!33373 (v!49852 lt!2001171)))) lt!2001174 lt!2001171)))))))

(declare-fun call!338945 () Option!13903)

(assert (=> b!4884516 (= lt!2001174 call!338945)))

(assert (=> b!4884516 (= lt!2001171 (maxPrefix!4575 thiss!14805 (t!364983 rulesArg!165) lt!2001116))))

(declare-fun b!4884517 () Bool)

(assert (=> b!4884517 (= e!3053077 call!338945)))

(declare-fun b!4884518 () Bool)

(assert (=> b!4884518 (= e!3053075 e!3053076)))

(declare-fun res!2085465 () Bool)

(assert (=> b!4884518 (=> (not res!2085465) (not e!3053076))))

(assert (=> b!4884518 (= res!2085465 (isDefined!10930 lt!2001173))))

(declare-fun b!4884519 () Bool)

(declare-fun res!2085466 () Bool)

(assert (=> b!4884519 (=> (not res!2085466) (not e!3053076))))

(declare-fun ++!12224 (List!56335 List!56335) List!56335)

(assert (=> b!4884519 (= res!2085466 (= (++!12224 (list!17637 (charsOf!5355 (_1!33373 (get!19355 lt!2001173)))) (_2!33373 (get!19355 lt!2001173))) lt!2001116))))

(declare-fun b!4884520 () Bool)

(declare-fun res!2085467 () Bool)

(assert (=> b!4884520 (=> (not res!2085467) (not e!3053076))))

(declare-fun apply!13519 (TokenValueInjection!16148 BalanceConc!28786) TokenValue!8420)

(declare-fun seqFromList!5915 (List!56335) BalanceConc!28786)

(assert (=> b!4884520 (= res!2085467 (= (value!260287 (_1!33373 (get!19355 lt!2001173))) (apply!13519 (transformation!8110 (rule!11274 (_1!33373 (get!19355 lt!2001173)))) (seqFromList!5915 (originalCharacters!8425 (_1!33373 (get!19355 lt!2001173)))))))))

(declare-fun bm!338940 () Bool)

(declare-fun maxPrefixOneRule!3508 (LexerInterface!7702 Rule!16020 List!56335) Option!13903)

(assert (=> bm!338940 (= call!338945 (maxPrefixOneRule!3508 thiss!14805 (h!62661 rulesArg!165) lt!2001116))))

(assert (= (and d!1569312 c!830554) b!4884517))

(assert (= (and d!1569312 (not c!830554)) b!4884516))

(assert (= (or b!4884517 b!4884516) bm!338940))

(assert (= (and d!1569312 (not res!2085468)) b!4884518))

(assert (= (and b!4884518 res!2085465) b!4884514))

(assert (= (and b!4884514 res!2085463) b!4884512))

(assert (= (and b!4884512 res!2085464) b!4884519))

(assert (= (and b!4884519 res!2085466) b!4884520))

(assert (= (and b!4884520 res!2085467) b!4884513))

(assert (= (and b!4884513 res!2085469) b!4884515))

(declare-fun m!5888422 () Bool)

(assert (=> b!4884515 m!5888422))

(declare-fun m!5888424 () Bool)

(assert (=> b!4884515 m!5888424))

(declare-fun m!5888426 () Bool)

(assert (=> bm!338940 m!5888426))

(assert (=> b!4884519 m!5888422))

(declare-fun m!5888428 () Bool)

(assert (=> b!4884519 m!5888428))

(assert (=> b!4884519 m!5888428))

(declare-fun m!5888430 () Bool)

(assert (=> b!4884519 m!5888430))

(assert (=> b!4884519 m!5888430))

(declare-fun m!5888432 () Bool)

(assert (=> b!4884519 m!5888432))

(declare-fun m!5888434 () Bool)

(assert (=> b!4884518 m!5888434))

(assert (=> b!4884513 m!5888422))

(assert (=> b!4884513 m!5888428))

(assert (=> b!4884513 m!5888428))

(assert (=> b!4884513 m!5888430))

(assert (=> b!4884513 m!5888430))

(declare-fun m!5888436 () Bool)

(assert (=> b!4884513 m!5888436))

(assert (=> b!4884512 m!5888422))

(declare-fun m!5888438 () Bool)

(assert (=> b!4884512 m!5888438))

(assert (=> b!4884512 m!5888390))

(assert (=> b!4884520 m!5888422))

(declare-fun m!5888440 () Bool)

(assert (=> b!4884520 m!5888440))

(assert (=> b!4884520 m!5888440))

(declare-fun m!5888442 () Bool)

(assert (=> b!4884520 m!5888442))

(declare-fun m!5888444 () Bool)

(assert (=> d!1569312 m!5888444))

(assert (=> d!1569312 m!5888340))

(assert (=> d!1569312 m!5888342))

(assert (=> d!1569312 m!5888332))

(declare-fun m!5888446 () Bool)

(assert (=> b!4884516 m!5888446))

(assert (=> b!4884514 m!5888422))

(assert (=> b!4884514 m!5888428))

(assert (=> b!4884514 m!5888428))

(assert (=> b!4884514 m!5888430))

(assert (=> b!4884429 d!1569312))

(declare-fun d!1569316 () Bool)

(assert (=> d!1569316 (= (isDefined!10930 lt!2001112) (not (isEmpty!30122 lt!2001112)))))

(declare-fun bs!1175536 () Bool)

(assert (= bs!1175536 d!1569316))

(declare-fun m!5888448 () Bool)

(assert (=> bs!1175536 m!5888448))

(assert (=> b!4884439 d!1569316))

(declare-fun d!1569318 () Bool)

(declare-fun isBalanced!3992 (Conc!14678) Bool)

(assert (=> d!1569318 (= (inv!72326 input!1236) (isBalanced!3992 (c!830542 input!1236)))))

(declare-fun bs!1175537 () Bool)

(assert (= bs!1175537 d!1569318))

(declare-fun m!5888450 () Bool)

(assert (=> bs!1175537 m!5888450))

(assert (=> start!511112 d!1569318))

(declare-fun d!1569320 () Bool)

(assert (=> d!1569320 (= (isDefined!10930 lt!2001110) (not (isEmpty!30122 lt!2001110)))))

(declare-fun bs!1175538 () Bool)

(assert (= bs!1175538 d!1569320))

(declare-fun m!5888452 () Bool)

(assert (=> bs!1175538 m!5888452))

(assert (=> b!4884428 d!1569320))

(declare-fun d!1569322 () Bool)

(declare-fun isEmpty!30123 (Option!13904) Bool)

(assert (=> d!1569322 (= (isDefined!10931 lt!2001109) (not (isEmpty!30123 lt!2001109)))))

(declare-fun bs!1175539 () Bool)

(assert (= bs!1175539 d!1569322))

(declare-fun m!5888454 () Bool)

(assert (=> bs!1175539 m!5888454))

(assert (=> b!4884428 d!1569322))

(declare-fun d!1569324 () Bool)

(declare-fun lt!2001204 () Option!13903)

(assert (=> d!1569324 (= lt!2001204 (maxPrefix!4575 thiss!14805 rulesArg!165 lt!2001116))))

(declare-fun e!3053084 () Option!13903)

(assert (=> d!1569324 (= lt!2001204 e!3053084)))

(declare-fun c!830559 () Bool)

(assert (=> d!1569324 (= c!830559 (and ((_ is Cons!56213) rulesArg!165) ((_ is Nil!56213) (t!364983 rulesArg!165))))))

(declare-fun lt!2001202 () Unit!146202)

(declare-fun lt!2001200 () Unit!146202)

(assert (=> d!1569324 (= lt!2001202 lt!2001200)))

(assert (=> d!1569324 (isPrefix!4832 lt!2001116 lt!2001116)))

(assert (=> d!1569324 (= lt!2001200 (lemmaIsPrefixRefl!3229 lt!2001116 lt!2001116))))

(assert (=> d!1569324 (rulesValidInductive!3089 thiss!14805 rulesArg!165)))

(assert (=> d!1569324 (= (maxPrefixZipper!613 thiss!14805 rulesArg!165 lt!2001116) lt!2001204)))

(declare-fun call!338948 () Option!13903)

(declare-fun bm!338943 () Bool)

(declare-fun maxPrefixOneRuleZipper!240 (LexerInterface!7702 Rule!16020 List!56335) Option!13903)

(assert (=> bm!338943 (= call!338948 (maxPrefixOneRuleZipper!240 thiss!14805 (h!62661 rulesArg!165) lt!2001116))))

(declare-fun b!4884531 () Bool)

(assert (=> b!4884531 (= e!3053084 call!338948)))

(declare-fun b!4884532 () Bool)

(declare-fun lt!2001201 () Option!13903)

(declare-fun lt!2001203 () Option!13903)

(assert (=> b!4884532 (= e!3053084 (ite (and ((_ is None!13902) lt!2001201) ((_ is None!13902) lt!2001203)) None!13902 (ite ((_ is None!13902) lt!2001203) lt!2001201 (ite ((_ is None!13902) lt!2001201) lt!2001203 (ite (>= (size!37032 (_1!33373 (v!49852 lt!2001201))) (size!37032 (_1!33373 (v!49852 lt!2001203)))) lt!2001201 lt!2001203)))))))

(assert (=> b!4884532 (= lt!2001201 call!338948)))

(assert (=> b!4884532 (= lt!2001203 (maxPrefixZipper!613 thiss!14805 (t!364983 rulesArg!165) lt!2001116))))

(assert (= (and d!1569324 c!830559) b!4884531))

(assert (= (and d!1569324 (not c!830559)) b!4884532))

(assert (= (or b!4884531 b!4884532) bm!338943))

(assert (=> d!1569324 m!5888356))

(assert (=> d!1569324 m!5888340))

(assert (=> d!1569324 m!5888342))

(assert (=> d!1569324 m!5888332))

(declare-fun m!5888456 () Bool)

(assert (=> bm!338943 m!5888456))

(declare-fun m!5888458 () Bool)

(assert (=> b!4884532 m!5888458))

(assert (=> b!4884428 d!1569324))

(declare-fun d!1569326 () Bool)

(assert (=> d!1569326 true))

(declare-fun lt!2001213 () Bool)

(declare-fun lambda!243790 () Int)

(declare-fun forall!13070 (List!56337 Int) Bool)

(assert (=> d!1569326 (= lt!2001213 (forall!13070 rulesArg!165 lambda!243790))))

(declare-fun e!3053096 () Bool)

(assert (=> d!1569326 (= lt!2001213 e!3053096)))

(declare-fun res!2085482 () Bool)

(assert (=> d!1569326 (=> res!2085482 e!3053096)))

(assert (=> d!1569326 (= res!2085482 (not ((_ is Cons!56213) rulesArg!165)))))

(assert (=> d!1569326 (= (rulesValidInductive!3089 thiss!14805 rulesArg!165) lt!2001213)))

(declare-fun b!4884543 () Bool)

(declare-fun e!3053095 () Bool)

(assert (=> b!4884543 (= e!3053096 e!3053095)))

(declare-fun res!2085483 () Bool)

(assert (=> b!4884543 (=> (not res!2085483) (not e!3053095))))

(declare-fun ruleValid!3652 (LexerInterface!7702 Rule!16020) Bool)

(assert (=> b!4884543 (= res!2085483 (ruleValid!3652 thiss!14805 (h!62661 rulesArg!165)))))

(declare-fun b!4884544 () Bool)

(assert (=> b!4884544 (= e!3053095 (rulesValidInductive!3089 thiss!14805 (t!364983 rulesArg!165)))))

(assert (= (and d!1569326 (not res!2085482)) b!4884543))

(assert (= (and b!4884543 res!2085483) b!4884544))

(declare-fun m!5888460 () Bool)

(assert (=> d!1569326 m!5888460))

(declare-fun m!5888462 () Bool)

(assert (=> b!4884543 m!5888462))

(declare-fun m!5888464 () Bool)

(assert (=> b!4884544 m!5888464))

(assert (=> b!4884441 d!1569326))

(declare-fun b!4884624 () Bool)

(declare-fun e!3053148 () Bool)

(declare-fun e!3053151 () Bool)

(assert (=> b!4884624 (= e!3053148 e!3053151)))

(declare-fun res!2085540 () Bool)

(assert (=> b!4884624 (=> (not res!2085540) (not e!3053151))))

(declare-fun lt!2001260 () Option!13904)

(assert (=> b!4884624 (= res!2085540 (= (_1!33374 (get!19354 lt!2001260)) (_1!33373 (get!19355 (maxPrefix!4575 thiss!14805 (t!364983 rulesArg!165) (list!17637 input!1236))))))))

(declare-fun b!4884625 () Bool)

(assert (=> b!4884625 (= e!3053151 (= (list!17637 (_2!33374 (get!19354 lt!2001260))) (_2!33373 (get!19355 (maxPrefix!4575 thiss!14805 (t!364983 rulesArg!165) (list!17637 input!1236))))))))

(declare-fun b!4884626 () Bool)

(declare-fun e!3053152 () Option!13904)

(declare-fun lt!2001262 () Option!13904)

(declare-fun lt!2001257 () Option!13904)

(assert (=> b!4884626 (= e!3053152 (ite (and ((_ is None!13903) lt!2001262) ((_ is None!13903) lt!2001257)) None!13903 (ite ((_ is None!13903) lt!2001257) lt!2001262 (ite ((_ is None!13903) lt!2001262) lt!2001257 (ite (>= (size!37032 (_1!33374 (v!49853 lt!2001262))) (size!37032 (_1!33374 (v!49853 lt!2001257)))) lt!2001262 lt!2001257)))))))

(declare-fun call!338953 () Option!13904)

(assert (=> b!4884626 (= lt!2001262 call!338953)))

(assert (=> b!4884626 (= lt!2001257 (maxPrefixZipperSequence!1271 thiss!14805 (t!364983 (t!364983 rulesArg!165)) input!1236))))

(declare-fun e!3053150 () Bool)

(declare-fun b!4884627 () Bool)

(assert (=> b!4884627 (= e!3053150 (= (list!17637 (_2!33374 (get!19354 lt!2001260))) (_2!33373 (get!19355 (maxPrefixZipper!613 thiss!14805 (t!364983 rulesArg!165) (list!17637 input!1236))))))))

(declare-fun b!4884628 () Bool)

(declare-fun e!3053149 () Bool)

(assert (=> b!4884628 (= e!3053149 e!3053150)))

(declare-fun res!2085537 () Bool)

(assert (=> b!4884628 (=> (not res!2085537) (not e!3053150))))

(assert (=> b!4884628 (= res!2085537 (= (_1!33374 (get!19354 lt!2001260)) (_1!33373 (get!19355 (maxPrefixZipper!613 thiss!14805 (t!364983 rulesArg!165) (list!17637 input!1236))))))))

(declare-fun bm!338948 () Bool)

(assert (=> bm!338948 (= call!338953 (maxPrefixOneRuleZipperSequence!636 thiss!14805 (h!62661 (t!364983 rulesArg!165)) input!1236))))

(declare-fun b!4884629 () Bool)

(declare-fun e!3053147 () Bool)

(assert (=> b!4884629 (= e!3053147 e!3053148)))

(declare-fun res!2085538 () Bool)

(assert (=> b!4884629 (=> res!2085538 e!3053148)))

(assert (=> b!4884629 (= res!2085538 (not (isDefined!10931 lt!2001260)))))

(declare-fun d!1569328 () Bool)

(assert (=> d!1569328 e!3053147))

(declare-fun res!2085535 () Bool)

(assert (=> d!1569328 (=> (not res!2085535) (not e!3053147))))

(assert (=> d!1569328 (= res!2085535 (= (isDefined!10931 lt!2001260) (isDefined!10930 (maxPrefixZipper!613 thiss!14805 (t!364983 rulesArg!165) (list!17637 input!1236)))))))

(assert (=> d!1569328 (= lt!2001260 e!3053152)))

(declare-fun c!830568 () Bool)

(assert (=> d!1569328 (= c!830568 (and ((_ is Cons!56213) (t!364983 rulesArg!165)) ((_ is Nil!56213) (t!364983 (t!364983 rulesArg!165)))))))

(declare-fun lt!2001261 () Unit!146202)

(declare-fun lt!2001259 () Unit!146202)

(assert (=> d!1569328 (= lt!2001261 lt!2001259)))

(declare-fun lt!2001258 () List!56335)

(declare-fun lt!2001263 () List!56335)

(assert (=> d!1569328 (isPrefix!4832 lt!2001258 lt!2001263)))

(assert (=> d!1569328 (= lt!2001259 (lemmaIsPrefixRefl!3229 lt!2001258 lt!2001263))))

(assert (=> d!1569328 (= lt!2001263 (list!17637 input!1236))))

(assert (=> d!1569328 (= lt!2001258 (list!17637 input!1236))))

(assert (=> d!1569328 (rulesValidInductive!3089 thiss!14805 (t!364983 rulesArg!165))))

(assert (=> d!1569328 (= (maxPrefixZipperSequence!1271 thiss!14805 (t!364983 rulesArg!165) input!1236) lt!2001260)))

(declare-fun b!4884630 () Bool)

(declare-fun res!2085539 () Bool)

(assert (=> b!4884630 (=> (not res!2085539) (not e!3053147))))

(assert (=> b!4884630 (= res!2085539 e!3053149)))

(declare-fun res!2085536 () Bool)

(assert (=> b!4884630 (=> res!2085536 e!3053149)))

(assert (=> b!4884630 (= res!2085536 (not (isDefined!10931 lt!2001260)))))

(declare-fun b!4884631 () Bool)

(assert (=> b!4884631 (= e!3053152 call!338953)))

(assert (= (and d!1569328 c!830568) b!4884631))

(assert (= (and d!1569328 (not c!830568)) b!4884626))

(assert (= (or b!4884631 b!4884626) bm!338948))

(assert (= (and d!1569328 res!2085535) b!4884630))

(assert (= (and b!4884630 (not res!2085536)) b!4884628))

(assert (= (and b!4884628 res!2085537) b!4884627))

(assert (= (and b!4884630 res!2085539) b!4884629))

(assert (= (and b!4884629 (not res!2085538)) b!4884624))

(assert (= (and b!4884624 res!2085540) b!4884625))

(declare-fun m!5888536 () Bool)

(assert (=> bm!338948 m!5888536))

(declare-fun m!5888538 () Bool)

(assert (=> b!4884630 m!5888538))

(declare-fun m!5888540 () Bool)

(assert (=> b!4884626 m!5888540))

(assert (=> d!1569328 m!5888464))

(declare-fun m!5888542 () Bool)

(assert (=> d!1569328 m!5888542))

(declare-fun m!5888544 () Bool)

(assert (=> d!1569328 m!5888544))

(assert (=> d!1569328 m!5888344))

(declare-fun m!5888546 () Bool)

(assert (=> d!1569328 m!5888546))

(assert (=> d!1569328 m!5888538))

(assert (=> d!1569328 m!5888344))

(assert (=> d!1569328 m!5888546))

(declare-fun m!5888548 () Bool)

(assert (=> d!1569328 m!5888548))

(assert (=> b!4884629 m!5888538))

(declare-fun m!5888550 () Bool)

(assert (=> b!4884628 m!5888550))

(assert (=> b!4884628 m!5888344))

(assert (=> b!4884628 m!5888344))

(assert (=> b!4884628 m!5888546))

(assert (=> b!4884628 m!5888546))

(declare-fun m!5888552 () Bool)

(assert (=> b!4884628 m!5888552))

(assert (=> b!4884627 m!5888344))

(assert (=> b!4884627 m!5888546))

(assert (=> b!4884627 m!5888550))

(assert (=> b!4884627 m!5888344))

(assert (=> b!4884627 m!5888546))

(assert (=> b!4884627 m!5888552))

(declare-fun m!5888554 () Bool)

(assert (=> b!4884627 m!5888554))

(assert (=> b!4884624 m!5888550))

(assert (=> b!4884624 m!5888344))

(assert (=> b!4884624 m!5888344))

(declare-fun m!5888556 () Bool)

(assert (=> b!4884624 m!5888556))

(assert (=> b!4884624 m!5888556))

(declare-fun m!5888558 () Bool)

(assert (=> b!4884624 m!5888558))

(assert (=> b!4884625 m!5888550))

(assert (=> b!4884625 m!5888556))

(assert (=> b!4884625 m!5888558))

(assert (=> b!4884625 m!5888344))

(assert (=> b!4884625 m!5888554))

(assert (=> b!4884625 m!5888344))

(assert (=> b!4884625 m!5888556))

(assert (=> b!4884430 d!1569328))

(declare-fun b!4884705 () Bool)

(declare-fun e!3053200 () Bool)

(assert (=> b!4884705 (= e!3053200 true)))

(declare-fun b!4884704 () Bool)

(declare-fun e!3053199 () Bool)

(assert (=> b!4884704 (= e!3053199 e!3053200)))

(declare-fun b!4884692 () Bool)

(assert (=> b!4884692 e!3053199))

(assert (= b!4884704 b!4884705))

(assert (= b!4884692 b!4884704))

(declare-fun lambda!243799 () Int)

(declare-fun order!25359 () Int)

(declare-fun order!25357 () Int)

(declare-fun dynLambda!22561 (Int Int) Int)

(declare-fun dynLambda!22562 (Int Int) Int)

(assert (=> b!4884705 (< (dynLambda!22561 order!25357 (toValue!10997 (transformation!8110 (h!62661 rulesArg!165)))) (dynLambda!22562 order!25359 lambda!243799))))

(declare-fun order!25361 () Int)

(declare-fun dynLambda!22563 (Int Int) Int)

(assert (=> b!4884705 (< (dynLambda!22563 order!25361 (toChars!10856 (transformation!8110 (h!62661 rulesArg!165)))) (dynLambda!22562 order!25359 lambda!243799))))

(declare-fun e!3053192 () Option!13904)

(declare-datatypes ((tuple2!60148 0))(
  ( (tuple2!60149 (_1!33377 BalanceConc!28786) (_2!33377 BalanceConc!28786)) )
))
(declare-fun lt!2001292 () tuple2!60148)

(declare-fun size!37036 (BalanceConc!28786) Int)

(assert (=> b!4884692 (= e!3053192 (Some!13903 (tuple2!60143 (Token!14789 (apply!13519 (transformation!8110 (h!62661 rulesArg!165)) (_1!33377 lt!2001292)) (h!62661 rulesArg!165) (size!37036 (_1!33377 lt!2001292)) (list!17637 (_1!33377 lt!2001292))) (_2!33377 lt!2001292))))))

(declare-fun lt!2001294 () List!56335)

(assert (=> b!4884692 (= lt!2001294 (list!17637 input!1236))))

(declare-fun lt!2001289 () Unit!146202)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1701 (Regex!13185 List!56335) Unit!146202)

(assert (=> b!4884692 (= lt!2001289 (longestMatchIsAcceptedByMatchOrIsEmpty!1701 (regex!8110 (h!62661 rulesArg!165)) lt!2001294))))

(declare-fun res!2085560 () Bool)

(declare-fun isEmpty!30124 (List!56335) Bool)

(declare-datatypes ((tuple2!60150 0))(
  ( (tuple2!60151 (_1!33378 List!56335) (_2!33378 List!56335)) )
))
(declare-fun findLongestMatchInner!1738 (Regex!13185 List!56335 Int List!56335 List!56335 Int) tuple2!60150)

(assert (=> b!4884692 (= res!2085560 (isEmpty!30124 (_1!33378 (findLongestMatchInner!1738 (regex!8110 (h!62661 rulesArg!165)) Nil!56211 (size!37035 Nil!56211) lt!2001294 lt!2001294 (size!37035 lt!2001294)))))))

(declare-fun e!3053190 () Bool)

(assert (=> b!4884692 (=> res!2085560 e!3053190)))

(assert (=> b!4884692 e!3053190))

(declare-fun lt!2001290 () Unit!146202)

(assert (=> b!4884692 (= lt!2001290 lt!2001289)))

(declare-fun lt!2001291 () Unit!146202)

(declare-fun lemmaInv!1221 (TokenValueInjection!16148) Unit!146202)

(assert (=> b!4884692 (= lt!2001291 (lemmaInv!1221 (transformation!8110 (h!62661 rulesArg!165))))))

(declare-fun lt!2001297 () Unit!146202)

(declare-fun ForallOf!1118 (Int BalanceConc!28786) Unit!146202)

(assert (=> b!4884692 (= lt!2001297 (ForallOf!1118 lambda!243799 (_1!33377 lt!2001292)))))

(declare-fun lt!2001293 () Unit!146202)

(assert (=> b!4884692 (= lt!2001293 (ForallOf!1118 lambda!243799 (seqFromList!5915 (list!17637 (_1!33377 lt!2001292)))))))

(declare-fun lt!2001295 () Option!13904)

(assert (=> b!4884692 (= lt!2001295 (Some!13903 (tuple2!60143 (Token!14789 (apply!13519 (transformation!8110 (h!62661 rulesArg!165)) (_1!33377 lt!2001292)) (h!62661 rulesArg!165) (size!37036 (_1!33377 lt!2001292)) (list!17637 (_1!33377 lt!2001292))) (_2!33377 lt!2001292))))))

(declare-fun lt!2001298 () Unit!146202)

(declare-fun lemmaEqSameImage!1075 (TokenValueInjection!16148 BalanceConc!28786 BalanceConc!28786) Unit!146202)

(assert (=> b!4884692 (= lt!2001298 (lemmaEqSameImage!1075 (transformation!8110 (h!62661 rulesArg!165)) (_1!33377 lt!2001292) (seqFromList!5915 (list!17637 (_1!33377 lt!2001292)))))))

(declare-fun b!4884693 () Bool)

(declare-fun e!3053191 () Bool)

(declare-fun e!3053194 () Bool)

(assert (=> b!4884693 (= e!3053191 e!3053194)))

(declare-fun res!2085559 () Bool)

(assert (=> b!4884693 (=> res!2085559 e!3053194)))

(declare-fun lt!2001296 () Option!13904)

(assert (=> b!4884693 (= res!2085559 (not (isDefined!10931 lt!2001296)))))

(declare-fun d!1569356 () Bool)

(assert (=> d!1569356 e!3053191))

(declare-fun res!2085561 () Bool)

(assert (=> d!1569356 (=> (not res!2085561) (not e!3053191))))

(assert (=> d!1569356 (= res!2085561 (= (isDefined!10931 lt!2001296) (isDefined!10930 (maxPrefixOneRule!3508 thiss!14805 (h!62661 rulesArg!165) (list!17637 input!1236)))))))

(assert (=> d!1569356 (= lt!2001296 e!3053192)))

(declare-fun c!830572 () Bool)

(declare-fun isEmpty!30125 (BalanceConc!28786) Bool)

(assert (=> d!1569356 (= c!830572 (isEmpty!30125 (_1!33377 lt!2001292)))))

(declare-fun findLongestMatchWithZipperSequence!253 (Regex!13185 BalanceConc!28786) tuple2!60148)

(assert (=> d!1569356 (= lt!2001292 (findLongestMatchWithZipperSequence!253 (regex!8110 (h!62661 rulesArg!165)) input!1236))))

(assert (=> d!1569356 (ruleValid!3652 thiss!14805 (h!62661 rulesArg!165))))

(assert (=> d!1569356 (= (maxPrefixOneRuleZipperSequence!636 thiss!14805 (h!62661 rulesArg!165) input!1236) lt!2001296)))

(declare-fun b!4884694 () Bool)

(assert (=> b!4884694 (= e!3053190 (matchR!6509 (regex!8110 (h!62661 rulesArg!165)) (_1!33378 (findLongestMatchInner!1738 (regex!8110 (h!62661 rulesArg!165)) Nil!56211 (size!37035 Nil!56211) lt!2001294 lt!2001294 (size!37035 lt!2001294)))))))

(declare-fun b!4884695 () Bool)

(assert (=> b!4884695 (= e!3053192 None!13903)))

(declare-fun e!3053193 () Bool)

(declare-fun b!4884696 () Bool)

(assert (=> b!4884696 (= e!3053193 (= (list!17637 (_2!33374 (get!19354 lt!2001296))) (_2!33373 (get!19355 (maxPrefixOneRule!3508 thiss!14805 (h!62661 rulesArg!165) (list!17637 input!1236))))))))

(declare-fun b!4884697 () Bool)

(assert (=> b!4884697 (= e!3053194 e!3053193)))

(declare-fun res!2085562 () Bool)

(assert (=> b!4884697 (=> (not res!2085562) (not e!3053193))))

(assert (=> b!4884697 (= res!2085562 (= (_1!33374 (get!19354 lt!2001296)) (_1!33373 (get!19355 (maxPrefixOneRule!3508 thiss!14805 (h!62661 rulesArg!165) (list!17637 input!1236))))))))

(assert (= (and d!1569356 c!830572) b!4884695))

(assert (= (and d!1569356 (not c!830572)) b!4884692))

(assert (= (and b!4884692 (not res!2085560)) b!4884694))

(assert (= (and d!1569356 res!2085561) b!4884693))

(assert (= (and b!4884693 (not res!2085559)) b!4884697))

(assert (= (and b!4884697 res!2085562) b!4884696))

(declare-fun m!5888600 () Bool)

(assert (=> b!4884692 m!5888600))

(assert (=> b!4884692 m!5888600))

(declare-fun m!5888602 () Bool)

(assert (=> b!4884692 m!5888602))

(declare-fun m!5888604 () Bool)

(assert (=> b!4884692 m!5888604))

(declare-fun m!5888606 () Bool)

(assert (=> b!4884692 m!5888606))

(assert (=> b!4884692 m!5888602))

(declare-fun m!5888608 () Bool)

(assert (=> b!4884692 m!5888608))

(declare-fun m!5888610 () Bool)

(assert (=> b!4884692 m!5888610))

(declare-fun m!5888612 () Bool)

(assert (=> b!4884692 m!5888612))

(assert (=> b!4884692 m!5888344))

(declare-fun m!5888614 () Bool)

(assert (=> b!4884692 m!5888614))

(declare-fun m!5888616 () Bool)

(assert (=> b!4884692 m!5888616))

(declare-fun m!5888618 () Bool)

(assert (=> b!4884692 m!5888618))

(declare-fun m!5888620 () Bool)

(assert (=> b!4884692 m!5888620))

(declare-fun m!5888622 () Bool)

(assert (=> b!4884692 m!5888622))

(assert (=> b!4884692 m!5888610))

(declare-fun m!5888624 () Bool)

(assert (=> b!4884692 m!5888624))

(assert (=> b!4884692 m!5888616))

(assert (=> b!4884692 m!5888610))

(declare-fun m!5888626 () Bool)

(assert (=> b!4884696 m!5888626))

(declare-fun m!5888628 () Bool)

(assert (=> b!4884696 m!5888628))

(assert (=> b!4884696 m!5888344))

(declare-fun m!5888630 () Bool)

(assert (=> b!4884696 m!5888630))

(assert (=> b!4884696 m!5888630))

(declare-fun m!5888632 () Bool)

(assert (=> b!4884696 m!5888632))

(assert (=> b!4884696 m!5888344))

(assert (=> b!4884697 m!5888628))

(assert (=> b!4884697 m!5888344))

(assert (=> b!4884697 m!5888344))

(assert (=> b!4884697 m!5888630))

(assert (=> b!4884697 m!5888630))

(assert (=> b!4884697 m!5888632))

(declare-fun m!5888634 () Bool)

(assert (=> d!1569356 m!5888634))

(assert (=> d!1569356 m!5888462))

(declare-fun m!5888636 () Bool)

(assert (=> d!1569356 m!5888636))

(declare-fun m!5888638 () Bool)

(assert (=> d!1569356 m!5888638))

(assert (=> d!1569356 m!5888344))

(assert (=> d!1569356 m!5888630))

(declare-fun m!5888640 () Bool)

(assert (=> d!1569356 m!5888640))

(assert (=> d!1569356 m!5888344))

(assert (=> d!1569356 m!5888630))

(assert (=> b!4884693 m!5888638))

(assert (=> b!4884694 m!5888600))

(assert (=> b!4884694 m!5888602))

(assert (=> b!4884694 m!5888600))

(assert (=> b!4884694 m!5888602))

(assert (=> b!4884694 m!5888604))

(declare-fun m!5888642 () Bool)

(assert (=> b!4884694 m!5888642))

(assert (=> b!4884430 d!1569356))

(declare-fun d!1569362 () Bool)

(assert (=> d!1569362 (= (isEmpty!30117 rulesArg!165) ((_ is Nil!56213) rulesArg!165))))

(assert (=> b!4884440 d!1569362))

(declare-fun d!1569364 () Bool)

(assert (=> d!1569364 (= (list!17637 (_2!33374 lt!2001117)) (list!17639 (c!830542 (_2!33374 lt!2001117))))))

(declare-fun bs!1175545 () Bool)

(assert (= bs!1175545 d!1569364))

(declare-fun m!5888644 () Bool)

(assert (=> bs!1175545 m!5888644))

(assert (=> b!4884432 d!1569364))

(declare-fun d!1569366 () Bool)

(assert (=> d!1569366 (= (inv!72320 (tag!8974 (h!62661 rulesArg!165))) (= (mod (str.len (value!260286 (tag!8974 (h!62661 rulesArg!165)))) 2) 0))))

(assert (=> b!4884435 d!1569366))

(declare-fun d!1569368 () Bool)

(declare-fun res!2085565 () Bool)

(declare-fun e!3053203 () Bool)

(assert (=> d!1569368 (=> (not res!2085565) (not e!3053203))))

(declare-fun semiInverseModEq!3566 (Int Int) Bool)

(assert (=> d!1569368 (= res!2085565 (semiInverseModEq!3566 (toChars!10856 (transformation!8110 (h!62661 rulesArg!165))) (toValue!10997 (transformation!8110 (h!62661 rulesArg!165)))))))

(assert (=> d!1569368 (= (inv!72324 (transformation!8110 (h!62661 rulesArg!165))) e!3053203)))

(declare-fun b!4884708 () Bool)

(declare-fun equivClasses!3445 (Int Int) Bool)

(assert (=> b!4884708 (= e!3053203 (equivClasses!3445 (toChars!10856 (transformation!8110 (h!62661 rulesArg!165))) (toValue!10997 (transformation!8110 (h!62661 rulesArg!165)))))))

(assert (= (and d!1569368 res!2085565) b!4884708))

(declare-fun m!5888646 () Bool)

(assert (=> d!1569368 m!5888646))

(declare-fun m!5888648 () Bool)

(assert (=> b!4884708 m!5888648))

(assert (=> b!4884435 d!1569368))

(declare-fun b!4884717 () Bool)

(declare-fun tp!1374558 () Bool)

(declare-fun e!3053209 () Bool)

(declare-fun tp!1374557 () Bool)

(assert (=> b!4884717 (= e!3053209 (and (inv!72325 (left!40831 (c!830542 input!1236))) tp!1374558 (inv!72325 (right!41161 (c!830542 input!1236))) tp!1374557))))

(declare-fun b!4884719 () Bool)

(declare-fun e!3053208 () Bool)

(declare-fun tp!1374556 () Bool)

(assert (=> b!4884719 (= e!3053208 tp!1374556)))

(declare-fun b!4884718 () Bool)

(declare-fun inv!72332 (IArray!29417) Bool)

(assert (=> b!4884718 (= e!3053209 (and (inv!72332 (xs!17994 (c!830542 input!1236))) e!3053208))))

(assert (=> b!4884437 (= tp!1374510 (and (inv!72325 (c!830542 input!1236)) e!3053209))))

(assert (= (and b!4884437 ((_ is Node!14678) (c!830542 input!1236))) b!4884717))

(assert (= b!4884718 b!4884719))

(assert (= (and b!4884437 ((_ is Leaf!24450) (c!830542 input!1236))) b!4884718))

(declare-fun m!5888650 () Bool)

(assert (=> b!4884717 m!5888650))

(declare-fun m!5888652 () Bool)

(assert (=> b!4884717 m!5888652))

(declare-fun m!5888654 () Bool)

(assert (=> b!4884718 m!5888654))

(assert (=> b!4884437 m!5888368))

(declare-fun b!4884730 () Bool)

(declare-fun b_free!131147 () Bool)

(declare-fun b_next!131937 () Bool)

(assert (=> b!4884730 (= b_free!131147 (not b_next!131937))))

(declare-fun tp!1374570 () Bool)

(declare-fun b_and!343979 () Bool)

(assert (=> b!4884730 (= tp!1374570 b_and!343979)))

(declare-fun b_free!131149 () Bool)

(declare-fun b_next!131939 () Bool)

(assert (=> b!4884730 (= b_free!131149 (not b_next!131939))))

(declare-fun tp!1374569 () Bool)

(declare-fun b_and!343981 () Bool)

(assert (=> b!4884730 (= tp!1374569 b_and!343981)))

(declare-fun e!3053219 () Bool)

(assert (=> b!4884730 (= e!3053219 (and tp!1374570 tp!1374569))))

(declare-fun e!3053221 () Bool)

(declare-fun b!4884729 () Bool)

(declare-fun tp!1374567 () Bool)

(assert (=> b!4884729 (= e!3053221 (and tp!1374567 (inv!72320 (tag!8974 (h!62661 (t!364983 rulesArg!165)))) (inv!72324 (transformation!8110 (h!62661 (t!364983 rulesArg!165)))) e!3053219))))

(declare-fun b!4884728 () Bool)

(declare-fun e!3053220 () Bool)

(declare-fun tp!1374568 () Bool)

(assert (=> b!4884728 (= e!3053220 (and e!3053221 tp!1374568))))

(assert (=> b!4884442 (= tp!1374511 e!3053220)))

(assert (= b!4884729 b!4884730))

(assert (= b!4884728 b!4884729))

(assert (= (and b!4884442 ((_ is Cons!56213) (t!364983 rulesArg!165))) b!4884728))

(declare-fun m!5888656 () Bool)

(assert (=> b!4884729 m!5888656))

(declare-fun m!5888658 () Bool)

(assert (=> b!4884729 m!5888658))

(declare-fun b!4884741 () Bool)

(declare-fun e!3053224 () Bool)

(declare-fun tp_is_empty!35731 () Bool)

(assert (=> b!4884741 (= e!3053224 tp_is_empty!35731)))

(assert (=> b!4884435 (= tp!1374513 e!3053224)))

(declare-fun b!4884742 () Bool)

(declare-fun tp!1374585 () Bool)

(declare-fun tp!1374584 () Bool)

(assert (=> b!4884742 (= e!3053224 (and tp!1374585 tp!1374584))))

(declare-fun b!4884744 () Bool)

(declare-fun tp!1374583 () Bool)

(declare-fun tp!1374582 () Bool)

(assert (=> b!4884744 (= e!3053224 (and tp!1374583 tp!1374582))))

(declare-fun b!4884743 () Bool)

(declare-fun tp!1374581 () Bool)

(assert (=> b!4884743 (= e!3053224 tp!1374581)))

(assert (= (and b!4884435 ((_ is ElementMatch!13185) (regex!8110 (h!62661 rulesArg!165)))) b!4884741))

(assert (= (and b!4884435 ((_ is Concat!21606) (regex!8110 (h!62661 rulesArg!165)))) b!4884742))

(assert (= (and b!4884435 ((_ is Star!13185) (regex!8110 (h!62661 rulesArg!165)))) b!4884743))

(assert (= (and b!4884435 ((_ is Union!13185) (regex!8110 (h!62661 rulesArg!165)))) b!4884744))

(check-sat (not b!4884629) (not bm!338948) (not d!1569326) (not b!4884457) (not b!4884719) (not b!4884692) (not b!4884515) (not b!4884742) (not b_next!131929) (not b!4884468) (not b!4884455) (not b!4884437) (not b!4884696) (not b!4884625) b_and!343981 (not b!4884630) (not b_next!131937) (not b!4884708) (not d!1569316) (not d!1569322) b_and!343979 (not b!4884693) (not b!4884467) (not d!1569308) (not b!4884626) (not b!4884519) (not d!1569306) (not d!1569312) (not b_next!131931) b_and!343973 (not b!4884697) tp_is_empty!35731 (not d!1569320) (not b!4884516) (not b_next!131939) (not d!1569324) (not b!4884744) (not b!4884543) (not bm!338940) (not d!1569368) (not bm!338943) (not b!4884532) (not d!1569328) (not b!4884743) (not d!1569318) (not b!4884469) (not b!4884627) (not b!4884513) (not b!4884512) (not b!4884624) (not d!1569356) (not b!4884718) (not b!4884728) b_and!343971 (not d!1569364) (not b!4884518) (not b!4884544) (not b!4884514) (not b!4884717) (not b!4884520) (not b!4884729) (not b!4884694) (not b!4884628))
(check-sat (not b_next!131929) b_and!343979 (not b_next!131931) b_and!343973 (not b_next!131939) b_and!343971 b_and!343981 (not b_next!131937))

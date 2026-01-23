; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239970 () Bool)

(assert start!239970)

(declare-fun b!2461408 () Bool)

(declare-fun b_free!70649 () Bool)

(declare-fun b_next!71353 () Bool)

(assert (=> b!2461408 (= b_free!70649 (not b_next!71353))))

(declare-fun tp!783708 () Bool)

(declare-fun b_and!185721 () Bool)

(assert (=> b!2461408 (= tp!783708 b_and!185721)))

(declare-fun b_free!70651 () Bool)

(declare-fun b_next!71355 () Bool)

(assert (=> b!2461408 (= b_free!70651 (not b_next!71355))))

(declare-fun tp!783710 () Bool)

(declare-fun b_and!185723 () Bool)

(assert (=> b!2461408 (= tp!783710 b_and!185723)))

(declare-fun b!2461407 () Bool)

(declare-fun b_free!70653 () Bool)

(declare-fun b_next!71357 () Bool)

(assert (=> b!2461407 (= b_free!70653 (not b_next!71357))))

(declare-fun tp!783716 () Bool)

(declare-fun b_and!185725 () Bool)

(assert (=> b!2461407 (= tp!783716 b_and!185725)))

(declare-fun b_free!70655 () Bool)

(declare-fun b_next!71359 () Bool)

(assert (=> b!2461407 (= b_free!70655 (not b_next!71359))))

(declare-fun tp!783712 () Bool)

(declare-fun b_and!185727 () Bool)

(assert (=> b!2461407 (= tp!783712 b_and!185727)))

(declare-fun b!2461396 () Bool)

(declare-fun b_free!70657 () Bool)

(declare-fun b_next!71361 () Bool)

(assert (=> b!2461396 (= b_free!70657 (not b_next!71361))))

(declare-fun tp!783715 () Bool)

(declare-fun b_and!185729 () Bool)

(assert (=> b!2461396 (= tp!783715 b_and!185729)))

(declare-fun b_free!70659 () Bool)

(declare-fun b_next!71363 () Bool)

(assert (=> b!2461396 (= b_free!70659 (not b_next!71363))))

(declare-fun tp!783714 () Bool)

(declare-fun b_and!185731 () Bool)

(assert (=> b!2461396 (= tp!783714 b_and!185731)))

(declare-fun b!2461393 () Bool)

(declare-fun e!1561144 () Bool)

(declare-fun e!1561139 () Bool)

(declare-fun tp!783718 () Bool)

(assert (=> b!2461393 (= e!1561144 (and e!1561139 tp!783718))))

(declare-fun e!1561147 () Bool)

(declare-fun b!2461394 () Bool)

(declare-fun e!1561141 () Bool)

(declare-fun tp!783709 () Bool)

(declare-datatypes ((List!28754 0))(
  ( (Nil!28654) (Cons!28654 (h!34055 (_ BitVec 16)) (t!208773 List!28754)) )
))
(declare-datatypes ((TokenValue!4641 0))(
  ( (FloatLiteralValue!9282 (text!32932 List!28754)) (TokenValueExt!4640 (__x!18537 Int)) (Broken!23205 (value!142347 List!28754)) (Object!4740) (End!4641) (Def!4641) (Underscore!4641) (Match!4641) (Else!4641) (Error!4641) (Case!4641) (If!4641) (Extends!4641) (Abstract!4641) (Class!4641) (Val!4641) (DelimiterValue!9282 (del!4701 List!28754)) (KeywordValue!4647 (value!142348 List!28754)) (CommentValue!9282 (value!142349 List!28754)) (WhitespaceValue!9282 (value!142350 List!28754)) (IndentationValue!4641 (value!142351 List!28754)) (String!31500) (Int32!4641) (Broken!23206 (value!142352 List!28754)) (Boolean!4642) (Unit!41980) (OperatorValue!4644 (op!4701 List!28754)) (IdentifierValue!9282 (value!142353 List!28754)) (IdentifierValue!9283 (value!142354 List!28754)) (WhitespaceValue!9283 (value!142355 List!28754)) (True!9282) (False!9282) (Broken!23207 (value!142356 List!28754)) (Broken!23208 (value!142357 List!28754)) (True!9283) (RightBrace!4641) (RightBracket!4641) (Colon!4641) (Null!4641) (Comma!4641) (LeftBracket!4641) (False!9283) (LeftBrace!4641) (ImaginaryLiteralValue!4641 (text!32933 List!28754)) (StringLiteralValue!13923 (value!142358 List!28754)) (EOFValue!4641 (value!142359 List!28754)) (IdentValue!4641 (value!142360 List!28754)) (DelimiterValue!9283 (value!142361 List!28754)) (DedentValue!4641 (value!142362 List!28754)) (NewLineValue!4641 (value!142363 List!28754)) (IntegerValue!13923 (value!142364 (_ BitVec 32)) (text!32934 List!28754)) (IntegerValue!13924 (value!142365 Int) (text!32935 List!28754)) (Times!4641) (Or!4641) (Equal!4641) (Minus!4641) (Broken!23209 (value!142366 List!28754)) (And!4641) (Div!4641) (LessEqual!4641) (Mod!4641) (Concat!11884) (Not!4641) (Plus!4641) (SpaceValue!4641 (value!142367 List!28754)) (IntegerValue!13925 (value!142368 Int) (text!32936 List!28754)) (StringLiteralValue!13924 (text!32937 List!28754)) (FloatLiteralValue!9283 (text!32938 List!28754)) (BytesLiteralValue!4641 (value!142369 List!28754)) (CommentValue!9283 (value!142370 List!28754)) (StringLiteralValue!13925 (value!142371 List!28754)) (ErrorTokenValue!4641 (msg!4702 List!28754)) )
))
(declare-datatypes ((C!14644 0))(
  ( (C!14645 (val!8582 Int)) )
))
(declare-datatypes ((List!28755 0))(
  ( (Nil!28655) (Cons!28655 (h!34056 C!14644) (t!208774 List!28755)) )
))
(declare-datatypes ((IArray!18323 0))(
  ( (IArray!18324 (innerList!9219 List!28755)) )
))
(declare-datatypes ((Conc!9159 0))(
  ( (Node!9159 (left!22009 Conc!9159) (right!22339 Conc!9159) (csize!18548 Int) (cheight!9370 Int)) (Leaf!13694 (xs!12139 IArray!18323) (csize!18549 Int)) (Empty!9159) )
))
(declare-datatypes ((BalanceConc!17932 0))(
  ( (BalanceConc!17933 (c!392832 Conc!9159)) )
))
(declare-datatypes ((Regex!7243 0))(
  ( (ElementMatch!7243 (c!392833 C!14644)) (Concat!11885 (regOne!14998 Regex!7243) (regTwo!14998 Regex!7243)) (EmptyExpr!7243) (Star!7243 (reg!7572 Regex!7243)) (EmptyLang!7243) (Union!7243 (regOne!14999 Regex!7243) (regTwo!14999 Regex!7243)) )
))
(declare-datatypes ((String!31501 0))(
  ( (String!31502 (value!142372 String)) )
))
(declare-datatypes ((TokenValueInjection!8782 0))(
  ( (TokenValueInjection!8783 (toValue!6307 Int) (toChars!6166 Int)) )
))
(declare-datatypes ((Rule!8710 0))(
  ( (Rule!8711 (regex!4455 Regex!7243) (tag!4945 String!31501) (isSeparator!4455 Bool) (transformation!4455 TokenValueInjection!8782)) )
))
(declare-datatypes ((Token!8380 0))(
  ( (Token!8381 (value!142373 TokenValue!4641) (rule!6813 Rule!8710) (size!22297 Int) (originalCharacters!5221 List!28755)) )
))
(declare-fun t1!67 () Token!8380)

(declare-fun inv!38732 (String!31501) Bool)

(declare-fun inv!38735 (TokenValueInjection!8782) Bool)

(assert (=> b!2461394 (= e!1561147 (and tp!783709 (inv!38732 (tag!4945 (rule!6813 t1!67))) (inv!38735 (transformation!4455 (rule!6813 t1!67))) e!1561141))))

(declare-fun b!2461395 () Bool)

(declare-fun e!1561148 () Bool)

(assert (=> b!2461395 (= e!1561148 false)))

(declare-fun lt!881078 () Token!8380)

(declare-datatypes ((List!28756 0))(
  ( (Nil!28656) (Cons!28656 (h!34057 Token!8380) (t!208775 List!28756)) )
))
(declare-fun l!6611 () List!28756)

(declare-fun i!1803 () Int)

(declare-fun apply!6720 (List!28756 Int) Token!8380)

(assert (=> b!2461395 (= lt!881078 (apply!6720 l!6611 (+ 1 i!1803)))))

(declare-fun res!1043083 () Bool)

(assert (=> start!239970 (=> (not res!1043083) (not e!1561148))))

(declare-datatypes ((LexerInterface!4052 0))(
  ( (LexerInterfaceExt!4049 (__x!18538 Int)) (Lexer!4050) )
))
(declare-fun thiss!27932 () LexerInterface!4052)

(get-info :version)

(assert (=> start!239970 (= res!1043083 ((_ is Lexer!4050) thiss!27932))))

(assert (=> start!239970 e!1561148))

(assert (=> start!239970 true))

(assert (=> start!239970 e!1561144))

(declare-fun e!1561138 () Bool)

(assert (=> start!239970 e!1561138))

(declare-fun e!1561149 () Bool)

(declare-fun inv!38736 (Token!8380) Bool)

(assert (=> start!239970 (and (inv!38736 t1!67) e!1561149)))

(declare-fun e!1561142 () Bool)

(assert (=> b!2461396 (= e!1561142 (and tp!783715 tp!783714))))

(declare-fun tp!783711 () Bool)

(declare-fun b!2461397 () Bool)

(declare-fun inv!21 (TokenValue!4641) Bool)

(assert (=> b!2461397 (= e!1561149 (and (inv!21 (value!142373 t1!67)) e!1561147 tp!783711))))

(declare-fun b!2461398 () Bool)

(declare-fun res!1043082 () Bool)

(assert (=> b!2461398 (=> (not res!1043082) (not e!1561148))))

(declare-datatypes ((List!28757 0))(
  ( (Nil!28657) (Cons!28657 (h!34058 Rule!8710) (t!208776 List!28757)) )
))
(declare-fun rules!4472 () List!28757)

(declare-fun isEmpty!16651 (List!28757) Bool)

(assert (=> b!2461398 (= res!1043082 (not (isEmpty!16651 rules!4472)))))

(declare-fun b!2461399 () Bool)

(declare-fun e!1561137 () Bool)

(declare-fun e!1561151 () Bool)

(declare-fun tp!783719 () Bool)

(assert (=> b!2461399 (= e!1561137 (and (inv!21 (value!142373 (h!34057 l!6611))) e!1561151 tp!783719))))

(declare-fun b!2461400 () Bool)

(declare-fun res!1043085 () Bool)

(assert (=> b!2461400 (=> (not res!1043085) (not e!1561148))))

(declare-fun rulesInvariant!3552 (LexerInterface!4052 List!28757) Bool)

(assert (=> b!2461400 (= res!1043085 (rulesInvariant!3552 thiss!27932 rules!4472))))

(declare-fun b!2461401 () Bool)

(declare-fun res!1043088 () Bool)

(assert (=> b!2461401 (=> (not res!1043088) (not e!1561148))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!591 (LexerInterface!4052 List!28756 List!28757) Bool)

(assert (=> b!2461401 (= res!1043088 (tokensListTwoByTwoPredicateSeparableList!591 thiss!27932 l!6611 rules!4472))))

(declare-fun b!2461402 () Bool)

(declare-fun res!1043084 () Bool)

(assert (=> b!2461402 (=> (not res!1043084) (not e!1561148))))

(assert (=> b!2461402 (= res!1043084 (= (apply!6720 l!6611 i!1803) t1!67))))

(declare-fun b!2461403 () Bool)

(declare-fun tp!783713 () Bool)

(assert (=> b!2461403 (= e!1561138 (and (inv!38736 (h!34057 l!6611)) e!1561137 tp!783713))))

(declare-fun b!2461404 () Bool)

(declare-fun res!1043081 () Bool)

(assert (=> b!2461404 (=> (not res!1043081) (not e!1561148))))

(declare-fun rulesProduceEachTokenIndividuallyList!1368 (LexerInterface!4052 List!28757 List!28756) Bool)

(assert (=> b!2461404 (= res!1043081 (rulesProduceEachTokenIndividuallyList!1368 thiss!27932 rules!4472 l!6611))))

(declare-fun b!2461405 () Bool)

(declare-fun res!1043087 () Bool)

(assert (=> b!2461405 (=> (not res!1043087) (not e!1561148))))

(declare-fun size!22298 (List!28756) Int)

(assert (=> b!2461405 (= res!1043087 (< (+ 1 i!1803) (size!22298 l!6611)))))

(declare-fun b!2461406 () Bool)

(declare-fun res!1043086 () Bool)

(assert (=> b!2461406 (=> (not res!1043086) (not e!1561148))))

(assert (=> b!2461406 (= res!1043086 (>= i!1803 0))))

(declare-fun e!1561145 () Bool)

(assert (=> b!2461407 (= e!1561145 (and tp!783716 tp!783712))))

(assert (=> b!2461408 (= e!1561141 (and tp!783708 tp!783710))))

(declare-fun b!2461409 () Bool)

(declare-fun tp!783717 () Bool)

(assert (=> b!2461409 (= e!1561139 (and tp!783717 (inv!38732 (tag!4945 (h!34058 rules!4472))) (inv!38735 (transformation!4455 (h!34058 rules!4472))) e!1561145))))

(declare-fun tp!783707 () Bool)

(declare-fun b!2461410 () Bool)

(assert (=> b!2461410 (= e!1561151 (and tp!783707 (inv!38732 (tag!4945 (rule!6813 (h!34057 l!6611)))) (inv!38735 (transformation!4455 (rule!6813 (h!34057 l!6611)))) e!1561142))))

(assert (= (and start!239970 res!1043083) b!2461398))

(assert (= (and b!2461398 res!1043082) b!2461400))

(assert (= (and b!2461400 res!1043085) b!2461404))

(assert (= (and b!2461404 res!1043081) b!2461401))

(assert (= (and b!2461401 res!1043088) b!2461406))

(assert (= (and b!2461406 res!1043086) b!2461405))

(assert (= (and b!2461405 res!1043087) b!2461402))

(assert (= (and b!2461402 res!1043084) b!2461395))

(assert (= b!2461409 b!2461407))

(assert (= b!2461393 b!2461409))

(assert (= (and start!239970 ((_ is Cons!28657) rules!4472)) b!2461393))

(assert (= b!2461410 b!2461396))

(assert (= b!2461399 b!2461410))

(assert (= b!2461403 b!2461399))

(assert (= (and start!239970 ((_ is Cons!28656) l!6611)) b!2461403))

(assert (= b!2461394 b!2461408))

(assert (= b!2461397 b!2461394))

(assert (= start!239970 b!2461397))

(declare-fun m!2830421 () Bool)

(assert (=> b!2461397 m!2830421))

(declare-fun m!2830423 () Bool)

(assert (=> b!2461403 m!2830423))

(declare-fun m!2830425 () Bool)

(assert (=> b!2461394 m!2830425))

(declare-fun m!2830427 () Bool)

(assert (=> b!2461394 m!2830427))

(declare-fun m!2830429 () Bool)

(assert (=> b!2461410 m!2830429))

(declare-fun m!2830431 () Bool)

(assert (=> b!2461410 m!2830431))

(declare-fun m!2830433 () Bool)

(assert (=> b!2461399 m!2830433))

(declare-fun m!2830435 () Bool)

(assert (=> b!2461402 m!2830435))

(declare-fun m!2830437 () Bool)

(assert (=> b!2461405 m!2830437))

(declare-fun m!2830439 () Bool)

(assert (=> b!2461398 m!2830439))

(declare-fun m!2830441 () Bool)

(assert (=> b!2461401 m!2830441))

(declare-fun m!2830443 () Bool)

(assert (=> b!2461409 m!2830443))

(declare-fun m!2830445 () Bool)

(assert (=> b!2461409 m!2830445))

(declare-fun m!2830447 () Bool)

(assert (=> b!2461395 m!2830447))

(declare-fun m!2830449 () Bool)

(assert (=> b!2461400 m!2830449))

(declare-fun m!2830451 () Bool)

(assert (=> b!2461404 m!2830451))

(declare-fun m!2830453 () Bool)

(assert (=> start!239970 m!2830453))

(check-sat (not b!2461403) (not b!2461404) (not b!2461410) (not b!2461399) (not b_next!71353) (not b!2461395) b_and!185727 (not b_next!71355) (not b_next!71359) (not start!239970) b_and!185721 b_and!185729 b_and!185723 b_and!185731 (not b!2461409) (not b_next!71361) (not b!2461400) (not b!2461402) (not b!2461398) (not b!2461397) (not b_next!71357) (not b!2461405) b_and!185725 (not b!2461393) (not b_next!71363) (not b!2461394) (not b!2461401))
(check-sat (not b_next!71353) (not b_next!71357) b_and!185727 b_and!185725 (not b_next!71363) (not b_next!71355) (not b_next!71359) b_and!185721 b_and!185729 b_and!185723 b_and!185731 (not b_next!71361))

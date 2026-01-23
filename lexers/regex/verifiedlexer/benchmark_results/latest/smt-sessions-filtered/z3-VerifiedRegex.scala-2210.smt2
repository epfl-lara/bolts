; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108438 () Bool)

(assert start!108438)

(declare-fun b!1214432 () Bool)

(declare-fun b_free!29081 () Bool)

(declare-fun b_next!29785 () Bool)

(assert (=> b!1214432 (= b_free!29081 (not b_next!29785))))

(declare-fun tp!344475 () Bool)

(declare-fun b_and!82385 () Bool)

(assert (=> b!1214432 (= tp!344475 b_and!82385)))

(declare-fun b_free!29083 () Bool)

(declare-fun b_next!29787 () Bool)

(assert (=> b!1214432 (= b_free!29083 (not b_next!29787))))

(declare-fun tp!344474 () Bool)

(declare-fun b_and!82387 () Bool)

(assert (=> b!1214432 (= tp!344474 b_and!82387)))

(declare-fun b!1214440 () Bool)

(declare-fun b_free!29085 () Bool)

(declare-fun b_next!29789 () Bool)

(assert (=> b!1214440 (= b_free!29085 (not b_next!29789))))

(declare-fun tp!344477 () Bool)

(declare-fun b_and!82389 () Bool)

(assert (=> b!1214440 (= tp!344477 b_and!82389)))

(declare-fun b_free!29087 () Bool)

(declare-fun b_next!29791 () Bool)

(assert (=> b!1214440 (= b_free!29087 (not b_next!29791))))

(declare-fun tp!344476 () Bool)

(declare-fun b_and!82391 () Bool)

(assert (=> b!1214440 (= tp!344476 b_and!82391)))

(declare-datatypes ((List!12418 0))(
  ( (Nil!12360) (Cons!12360 (h!17761 (_ BitVec 16)) (t!112988 List!12418)) )
))
(declare-datatypes ((TokenValue!2193 0))(
  ( (FloatLiteralValue!4386 (text!15796 List!12418)) (TokenValueExt!2192 (__x!8101 Int)) (Broken!10965 (value!69133 List!12418)) (Object!2250) (End!2193) (Def!2193) (Underscore!2193) (Match!2193) (Else!2193) (Error!2193) (Case!2193) (If!2193) (Extends!2193) (Abstract!2193) (Class!2193) (Val!2193) (DelimiterValue!4386 (del!2253 List!12418)) (KeywordValue!2199 (value!69134 List!12418)) (CommentValue!4386 (value!69135 List!12418)) (WhitespaceValue!4386 (value!69136 List!12418)) (IndentationValue!2193 (value!69137 List!12418)) (String!15096) (Int32!2193) (Broken!10966 (value!69138 List!12418)) (Boolean!2194) (Unit!18657) (OperatorValue!2196 (op!2253 List!12418)) (IdentifierValue!4386 (value!69139 List!12418)) (IdentifierValue!4387 (value!69140 List!12418)) (WhitespaceValue!4387 (value!69141 List!12418)) (True!4386) (False!4386) (Broken!10967 (value!69142 List!12418)) (Broken!10968 (value!69143 List!12418)) (True!4387) (RightBrace!2193) (RightBracket!2193) (Colon!2193) (Null!2193) (Comma!2193) (LeftBracket!2193) (False!4387) (LeftBrace!2193) (ImaginaryLiteralValue!2193 (text!15797 List!12418)) (StringLiteralValue!6579 (value!69144 List!12418)) (EOFValue!2193 (value!69145 List!12418)) (IdentValue!2193 (value!69146 List!12418)) (DelimiterValue!4387 (value!69147 List!12418)) (DedentValue!2193 (value!69148 List!12418)) (NewLineValue!2193 (value!69149 List!12418)) (IntegerValue!6579 (value!69150 (_ BitVec 32)) (text!15798 List!12418)) (IntegerValue!6580 (value!69151 Int) (text!15799 List!12418)) (Times!2193) (Or!2193) (Equal!2193) (Minus!2193) (Broken!10969 (value!69152 List!12418)) (And!2193) (Div!2193) (LessEqual!2193) (Mod!2193) (Concat!5588) (Not!2193) (Plus!2193) (SpaceValue!2193 (value!69153 List!12418)) (IntegerValue!6581 (value!69154 Int) (text!15800 List!12418)) (StringLiteralValue!6580 (text!15801 List!12418)) (FloatLiteralValue!4387 (text!15802 List!12418)) (BytesLiteralValue!2193 (value!69155 List!12418)) (CommentValue!4387 (value!69156 List!12418)) (StringLiteralValue!6581 (value!69157 List!12418)) (ErrorTokenValue!2193 (msg!2254 List!12418)) )
))
(declare-datatypes ((C!7108 0))(
  ( (C!7109 (val!4084 Int)) )
))
(declare-datatypes ((List!12419 0))(
  ( (Nil!12361) (Cons!12361 (h!17762 C!7108) (t!112989 List!12419)) )
))
(declare-datatypes ((IArray!8105 0))(
  ( (IArray!8106 (innerList!4110 List!12419)) )
))
(declare-datatypes ((Conc!4050 0))(
  ( (Node!4050 (left!10696 Conc!4050) (right!11026 Conc!4050) (csize!8330 Int) (cheight!4261 Int)) (Leaf!6261 (xs!6761 IArray!8105) (csize!8331 Int)) (Empty!4050) )
))
(declare-datatypes ((BalanceConc!8032 0))(
  ( (BalanceConc!8033 (c!203232 Conc!4050)) )
))
(declare-datatypes ((Regex!3395 0))(
  ( (ElementMatch!3395 (c!203233 C!7108)) (Concat!5589 (regOne!7302 Regex!3395) (regTwo!7302 Regex!3395)) (EmptyExpr!3395) (Star!3395 (reg!3724 Regex!3395)) (EmptyLang!3395) (Union!3395 (regOne!7303 Regex!3395) (regTwo!7303 Regex!3395)) )
))
(declare-datatypes ((String!15097 0))(
  ( (String!15098 (value!69158 String)) )
))
(declare-datatypes ((TokenValueInjection!4082 0))(
  ( (TokenValueInjection!4083 (toValue!3250 Int) (toChars!3109 Int)) )
))
(declare-datatypes ((Rule!4050 0))(
  ( (Rule!4051 (regex!2125 Regex!3395) (tag!2387 String!15097) (isSeparator!2125 Bool) (transformation!2125 TokenValueInjection!4082)) )
))
(declare-datatypes ((Token!3912 0))(
  ( (Token!3913 (value!69159 TokenValue!2193) (rule!3548 Rule!4050) (size!9793 Int) (originalCharacters!2679 List!12419)) )
))
(declare-datatypes ((List!12420 0))(
  ( (Nil!12362) (Cons!12362 (h!17763 Token!3912) (t!112990 List!12420)) )
))
(declare-fun tokens!556 () List!12420)

(declare-fun e!779356 () Bool)

(declare-fun e!779364 () Bool)

(declare-fun b!1214428 () Bool)

(declare-fun tp!344482 () Bool)

(declare-fun inv!16548 (Token!3912) Bool)

(assert (=> b!1214428 (= e!779356 (and (inv!16548 (h!17763 tokens!556)) e!779364 tp!344482))))

(declare-fun b!1214429 () Bool)

(declare-fun e!779363 () Bool)

(declare-fun tp_is_empty!6311 () Bool)

(declare-fun tp!344478 () Bool)

(assert (=> b!1214429 (= e!779363 (and tp_is_empty!6311 tp!344478))))

(declare-fun b!1214430 () Bool)

(declare-fun e!779360 () Bool)

(assert (=> b!1214430 (= e!779360 false)))

(declare-datatypes ((tuple2!12230 0))(
  ( (tuple2!12231 (_1!6962 Token!3912) (_2!6962 List!12419)) )
))
(declare-fun lt!415295 () tuple2!12230)

(declare-datatypes ((LexerInterface!1820 0))(
  ( (LexerInterfaceExt!1817 (__x!8102 Int)) (Lexer!1818) )
))
(declare-fun thiss!20528 () LexerInterface!1820)

(declare-datatypes ((List!12421 0))(
  ( (Nil!12363) (Cons!12363 (h!17764 Rule!4050) (t!112991 List!12421)) )
))
(declare-fun rules!2728 () List!12421)

(declare-datatypes ((tuple2!12232 0))(
  ( (tuple2!12233 (_1!6963 List!12420) (_2!6963 List!12419)) )
))
(declare-fun lt!415291 () tuple2!12232)

(declare-fun lexList!450 (LexerInterface!1820 List!12421 List!12419) tuple2!12232)

(assert (=> b!1214430 (= lt!415291 (lexList!450 thiss!20528 rules!2728 (_2!6962 lt!415295)))))

(declare-fun b!1214431 () Bool)

(declare-fun e!779358 () Bool)

(declare-fun e!779369 () Bool)

(assert (=> b!1214431 (= e!779358 e!779369)))

(declare-fun res!546140 () Bool)

(assert (=> b!1214431 (=> (not res!546140) (not e!779369))))

(declare-fun lt!415299 () BalanceConc!8032)

(declare-fun lt!415289 () BalanceConc!8032)

(assert (=> b!1214431 (= res!546140 (= lt!415299 lt!415289))))

(declare-fun charsOf!1131 (Token!3912) BalanceConc!8032)

(assert (=> b!1214431 (= lt!415289 (charsOf!1131 (h!17763 tokens!556)))))

(assert (=> b!1214431 (= lt!415299 (charsOf!1131 (_1!6962 lt!415295)))))

(declare-fun e!779372 () Bool)

(assert (=> b!1214432 (= e!779372 (and tp!344475 tp!344474))))

(declare-fun b!1214433 () Bool)

(declare-datatypes ((Unit!18658 0))(
  ( (Unit!18659) )
))
(declare-fun e!779368 () Unit!18658)

(declare-fun Unit!18660 () Unit!18658)

(assert (=> b!1214433 (= e!779368 Unit!18660)))

(declare-fun lt!415293 () List!12420)

(assert (=> b!1214433 (= lt!415293 (Cons!12362 (h!17763 tokens!556) Nil!12362))))

(declare-fun lt!415296 () tuple2!12232)

(declare-fun lt!415292 () List!12419)

(declare-fun lt!415298 () Unit!18658)

(declare-fun lemmaLexThenLexPrefix!158 (LexerInterface!1820 List!12421 List!12419 List!12419 List!12420 List!12420 List!12419) Unit!18658)

(assert (=> b!1214433 (= lt!415298 (lemmaLexThenLexPrefix!158 thiss!20528 rules!2728 lt!415292 (_2!6962 lt!415295) lt!415293 (_1!6963 (lexList!450 thiss!20528 rules!2728 (_2!6962 lt!415295))) (_2!6963 lt!415296)))))

(declare-fun res!546143 () Bool)

(assert (=> b!1214433 (= res!546143 (= (lexList!450 thiss!20528 rules!2728 lt!415292) (tuple2!12233 lt!415293 Nil!12361)))))

(declare-fun e!779359 () Bool)

(assert (=> b!1214433 (=> (not res!546143) (not e!779359))))

(assert (=> b!1214433 e!779359))

(declare-fun e!779367 () Bool)

(declare-fun tp!344483 () Bool)

(declare-fun b!1214434 () Bool)

(declare-fun e!779365 () Bool)

(declare-fun inv!16545 (String!15097) Bool)

(declare-fun inv!16549 (TokenValueInjection!4082) Bool)

(assert (=> b!1214434 (= e!779367 (and tp!344483 (inv!16545 (tag!2387 (h!17764 rules!2728))) (inv!16549 (transformation!2125 (h!17764 rules!2728))) e!779365))))

(declare-fun b!1214435 () Bool)

(declare-fun e!779361 () Bool)

(declare-fun e!779370 () Bool)

(assert (=> b!1214435 (= e!779361 e!779370)))

(declare-fun res!546150 () Bool)

(assert (=> b!1214435 (=> (not res!546150) (not e!779370))))

(declare-datatypes ((Option!2487 0))(
  ( (None!2486) (Some!2486 (v!20615 tuple2!12230)) )
))
(declare-fun lt!415288 () Option!2487)

(declare-fun isDefined!2125 (Option!2487) Bool)

(assert (=> b!1214435 (= res!546150 (isDefined!2125 lt!415288))))

(declare-fun input!2346 () List!12419)

(declare-fun maxPrefix!942 (LexerInterface!1820 List!12421 List!12419) Option!2487)

(assert (=> b!1214435 (= lt!415288 (maxPrefix!942 thiss!20528 rules!2728 input!2346))))

(declare-fun b!1214436 () Bool)

(declare-fun res!546141 () Bool)

(declare-fun e!779354 () Bool)

(assert (=> b!1214436 (=> (not res!546141) (not e!779354))))

(declare-fun rulesInvariant!1694 (LexerInterface!1820 List!12421) Bool)

(assert (=> b!1214436 (= res!546141 (rulesInvariant!1694 thiss!20528 rules!2728))))

(declare-fun b!1214437 () Bool)

(declare-fun res!546146 () Bool)

(declare-fun e!779362 () Bool)

(assert (=> b!1214437 (=> (not res!546146) (not e!779362))))

(declare-fun ++!3165 (List!12419 List!12419) List!12419)

(assert (=> b!1214437 (= res!546146 (= (++!3165 lt!415292 (_2!6962 lt!415295)) input!2346))))

(declare-fun res!546147 () Bool)

(assert (=> start!108438 (=> (not res!546147) (not e!779354))))

(get-info :version)

(assert (=> start!108438 (= res!546147 ((_ is Lexer!1818) thiss!20528))))

(assert (=> start!108438 e!779354))

(assert (=> start!108438 true))

(declare-fun e!779366 () Bool)

(assert (=> start!108438 e!779366))

(assert (=> start!108438 e!779356))

(assert (=> start!108438 e!779363))

(declare-fun b!1214438 () Bool)

(assert (=> b!1214438 (= e!779370 e!779358)))

(declare-fun res!546139 () Bool)

(assert (=> b!1214438 (=> (not res!546139) (not e!779358))))

(assert (=> b!1214438 (= res!546139 (= (_1!6962 lt!415295) (h!17763 tokens!556)))))

(declare-fun get!4067 (Option!2487) tuple2!12230)

(assert (=> b!1214438 (= lt!415295 (get!4067 lt!415288))))

(declare-fun b!1214439 () Bool)

(declare-fun Unit!18661 () Unit!18658)

(assert (=> b!1214439 (= e!779368 Unit!18661)))

(assert (=> b!1214440 (= e!779365 (and tp!344477 tp!344476))))

(declare-fun b!1214441 () Bool)

(assert (=> b!1214441 (= e!779362 e!779360)))

(declare-fun res!546149 () Bool)

(assert (=> b!1214441 (=> (not res!546149) (not e!779360))))

(declare-fun lt!415297 () Bool)

(assert (=> b!1214441 (= res!546149 (not lt!415297))))

(declare-fun lt!415294 () Unit!18658)

(assert (=> b!1214441 (= lt!415294 e!779368)))

(declare-fun c!203231 () Bool)

(assert (=> b!1214441 (= c!203231 lt!415297)))

(declare-fun rulesProduceIndividualToken!828 (LexerInterface!1820 List!12421 Token!3912) Bool)

(assert (=> b!1214441 (= lt!415297 (not (rulesProduceIndividualToken!828 thiss!20528 rules!2728 (h!17763 tokens!556))))))

(declare-fun b!1214442 () Bool)

(assert (=> b!1214442 (= e!779369 e!779362)))

(declare-fun res!546148 () Bool)

(assert (=> b!1214442 (=> (not res!546148) (not e!779362))))

(declare-fun lt!415290 () List!12419)

(assert (=> b!1214442 (= res!546148 (= lt!415290 lt!415292))))

(declare-fun list!4563 (BalanceConc!8032) List!12419)

(assert (=> b!1214442 (= lt!415292 (list!4563 lt!415289))))

(assert (=> b!1214442 (= lt!415290 (list!4563 lt!415299))))

(declare-fun b!1214443 () Bool)

(assert (=> b!1214443 (= e!779354 e!779361)))

(declare-fun res!546142 () Bool)

(assert (=> b!1214443 (=> (not res!546142) (not e!779361))))

(assert (=> b!1214443 (= res!546142 (and (= (_1!6963 lt!415296) tokens!556) (not ((_ is Nil!12362) tokens!556))))))

(assert (=> b!1214443 (= lt!415296 (lexList!450 thiss!20528 rules!2728 input!2346))))

(declare-fun b!1214444 () Bool)

(declare-fun e!779355 () Bool)

(declare-fun tp!344480 () Bool)

(declare-fun inv!21 (TokenValue!2193) Bool)

(assert (=> b!1214444 (= e!779364 (and (inv!21 (value!69159 (h!17763 tokens!556))) e!779355 tp!344480))))

(declare-fun b!1214445 () Bool)

(declare-fun res!546145 () Bool)

(assert (=> b!1214445 (=> (not res!546145) (not e!779362))))

(declare-fun matchR!1517 (Regex!3395 List!12419) Bool)

(assert (=> b!1214445 (= res!546145 (matchR!1517 (regex!2125 (rule!3548 (_1!6962 lt!415295))) lt!415290))))

(declare-fun b!1214446 () Bool)

(declare-fun tp!344481 () Bool)

(assert (=> b!1214446 (= e!779355 (and tp!344481 (inv!16545 (tag!2387 (rule!3548 (h!17763 tokens!556)))) (inv!16549 (transformation!2125 (rule!3548 (h!17763 tokens!556)))) e!779372))))

(declare-fun b!1214447 () Bool)

(assert (=> b!1214447 (= e!779359 false)))

(declare-fun b!1214448 () Bool)

(declare-fun res!546144 () Bool)

(assert (=> b!1214448 (=> (not res!546144) (not e!779354))))

(declare-fun isEmpty!7353 (List!12421) Bool)

(assert (=> b!1214448 (= res!546144 (not (isEmpty!7353 rules!2728)))))

(declare-fun b!1214449 () Bool)

(declare-fun tp!344479 () Bool)

(assert (=> b!1214449 (= e!779366 (and e!779367 tp!344479))))

(assert (= (and start!108438 res!546147) b!1214448))

(assert (= (and b!1214448 res!546144) b!1214436))

(assert (= (and b!1214436 res!546141) b!1214443))

(assert (= (and b!1214443 res!546142) b!1214435))

(assert (= (and b!1214435 res!546150) b!1214438))

(assert (= (and b!1214438 res!546139) b!1214431))

(assert (= (and b!1214431 res!546140) b!1214442))

(assert (= (and b!1214442 res!546148) b!1214437))

(assert (= (and b!1214437 res!546146) b!1214445))

(assert (= (and b!1214445 res!546145) b!1214441))

(assert (= (and b!1214441 c!203231) b!1214433))

(assert (= (and b!1214441 (not c!203231)) b!1214439))

(assert (= (and b!1214433 res!546143) b!1214447))

(assert (= (and b!1214441 res!546149) b!1214430))

(assert (= b!1214434 b!1214440))

(assert (= b!1214449 b!1214434))

(assert (= (and start!108438 ((_ is Cons!12363) rules!2728)) b!1214449))

(assert (= b!1214446 b!1214432))

(assert (= b!1214444 b!1214446))

(assert (= b!1214428 b!1214444))

(assert (= (and start!108438 ((_ is Cons!12362) tokens!556)) b!1214428))

(assert (= (and start!108438 ((_ is Cons!12361) input!2346)) b!1214429))

(declare-fun m!1389251 () Bool)

(assert (=> b!1214430 m!1389251))

(declare-fun m!1389253 () Bool)

(assert (=> b!1214445 m!1389253))

(declare-fun m!1389255 () Bool)

(assert (=> b!1214438 m!1389255))

(declare-fun m!1389257 () Bool)

(assert (=> b!1214431 m!1389257))

(declare-fun m!1389259 () Bool)

(assert (=> b!1214431 m!1389259))

(declare-fun m!1389261 () Bool)

(assert (=> b!1214436 m!1389261))

(declare-fun m!1389263 () Bool)

(assert (=> b!1214434 m!1389263))

(declare-fun m!1389265 () Bool)

(assert (=> b!1214434 m!1389265))

(declare-fun m!1389267 () Bool)

(assert (=> b!1214446 m!1389267))

(declare-fun m!1389269 () Bool)

(assert (=> b!1214446 m!1389269))

(declare-fun m!1389271 () Bool)

(assert (=> b!1214444 m!1389271))

(declare-fun m!1389273 () Bool)

(assert (=> b!1214428 m!1389273))

(declare-fun m!1389275 () Bool)

(assert (=> b!1214437 m!1389275))

(declare-fun m!1389277 () Bool)

(assert (=> b!1214448 m!1389277))

(declare-fun m!1389279 () Bool)

(assert (=> b!1214443 m!1389279))

(declare-fun m!1389281 () Bool)

(assert (=> b!1214441 m!1389281))

(declare-fun m!1389283 () Bool)

(assert (=> b!1214435 m!1389283))

(declare-fun m!1389285 () Bool)

(assert (=> b!1214435 m!1389285))

(assert (=> b!1214433 m!1389251))

(declare-fun m!1389287 () Bool)

(assert (=> b!1214433 m!1389287))

(declare-fun m!1389289 () Bool)

(assert (=> b!1214433 m!1389289))

(declare-fun m!1389291 () Bool)

(assert (=> b!1214442 m!1389291))

(declare-fun m!1389293 () Bool)

(assert (=> b!1214442 m!1389293))

(check-sat (not b!1214435) (not b!1214428) (not b!1214429) (not b!1214434) (not b!1214442) (not b_next!29787) (not b!1214430) (not b_next!29785) (not b!1214444) (not b!1214448) (not b!1214437) (not b_next!29789) b_and!82387 (not b!1214445) (not b!1214446) b_and!82389 (not b!1214431) (not b!1214436) (not b!1214438) (not b!1214443) b_and!82385 (not b!1214441) (not b_next!29791) b_and!82391 (not b!1214433) (not b!1214449) tp_is_empty!6311)
(check-sat b_and!82389 (not b_next!29787) b_and!82385 (not b_next!29785) (not b_next!29789) b_and!82387 (not b_next!29791) b_and!82391)

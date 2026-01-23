; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108442 () Bool)

(assert start!108442)

(declare-fun b!1214580 () Bool)

(declare-fun b_free!29097 () Bool)

(declare-fun b_next!29801 () Bool)

(assert (=> b!1214580 (= b_free!29097 (not b_next!29801))))

(declare-fun tp!344537 () Bool)

(declare-fun b_and!82401 () Bool)

(assert (=> b!1214580 (= tp!344537 b_and!82401)))

(declare-fun b_free!29099 () Bool)

(declare-fun b_next!29803 () Bool)

(assert (=> b!1214580 (= b_free!29099 (not b_next!29803))))

(declare-fun tp!344534 () Bool)

(declare-fun b_and!82403 () Bool)

(assert (=> b!1214580 (= tp!344534 b_and!82403)))

(declare-fun b!1214567 () Bool)

(declare-fun b_free!29101 () Bool)

(declare-fun b_next!29805 () Bool)

(assert (=> b!1214567 (= b_free!29101 (not b_next!29805))))

(declare-fun tp!344543 () Bool)

(declare-fun b_and!82405 () Bool)

(assert (=> b!1214567 (= tp!344543 b_and!82405)))

(declare-fun b_free!29103 () Bool)

(declare-fun b_next!29807 () Bool)

(assert (=> b!1214567 (= b_free!29103 (not b_next!29807))))

(declare-fun tp!344541 () Bool)

(declare-fun b_and!82407 () Bool)

(assert (=> b!1214567 (= tp!344541 b_and!82407)))

(declare-fun b!1214566 () Bool)

(declare-fun e!779489 () Bool)

(declare-fun tp_is_empty!6315 () Bool)

(declare-fun tp!344536 () Bool)

(assert (=> b!1214566 (= e!779489 (and tp_is_empty!6315 tp!344536))))

(declare-fun e!779485 () Bool)

(assert (=> b!1214567 (= e!779485 (and tp!344543 tp!344541))))

(declare-fun b!1214568 () Bool)

(declare-datatypes ((Unit!18667 0))(
  ( (Unit!18668) )
))
(declare-fun e!779481 () Unit!18667)

(declare-fun Unit!18669 () Unit!18667)

(assert (=> b!1214568 (= e!779481 Unit!18669)))

(declare-fun b!1214569 () Bool)

(declare-fun e!779479 () Bool)

(declare-fun e!779477 () Bool)

(declare-fun tp!344535 () Bool)

(assert (=> b!1214569 (= e!779479 (and e!779477 tp!344535))))

(declare-fun tp!344540 () Bool)

(declare-datatypes ((List!12426 0))(
  ( (Nil!12368) (Cons!12368 (h!17769 (_ BitVec 16)) (t!112996 List!12426)) )
))
(declare-datatypes ((TokenValue!2195 0))(
  ( (FloatLiteralValue!4390 (text!15810 List!12426)) (TokenValueExt!2194 (__x!8105 Int)) (Broken!10975 (value!69190 List!12426)) (Object!2252) (End!2195) (Def!2195) (Underscore!2195) (Match!2195) (Else!2195) (Error!2195) (Case!2195) (If!2195) (Extends!2195) (Abstract!2195) (Class!2195) (Val!2195) (DelimiterValue!4390 (del!2255 List!12426)) (KeywordValue!2201 (value!69191 List!12426)) (CommentValue!4390 (value!69192 List!12426)) (WhitespaceValue!4390 (value!69193 List!12426)) (IndentationValue!2195 (value!69194 List!12426)) (String!15106) (Int32!2195) (Broken!10976 (value!69195 List!12426)) (Boolean!2196) (Unit!18670) (OperatorValue!2198 (op!2255 List!12426)) (IdentifierValue!4390 (value!69196 List!12426)) (IdentifierValue!4391 (value!69197 List!12426)) (WhitespaceValue!4391 (value!69198 List!12426)) (True!4390) (False!4390) (Broken!10977 (value!69199 List!12426)) (Broken!10978 (value!69200 List!12426)) (True!4391) (RightBrace!2195) (RightBracket!2195) (Colon!2195) (Null!2195) (Comma!2195) (LeftBracket!2195) (False!4391) (LeftBrace!2195) (ImaginaryLiteralValue!2195 (text!15811 List!12426)) (StringLiteralValue!6585 (value!69201 List!12426)) (EOFValue!2195 (value!69202 List!12426)) (IdentValue!2195 (value!69203 List!12426)) (DelimiterValue!4391 (value!69204 List!12426)) (DedentValue!2195 (value!69205 List!12426)) (NewLineValue!2195 (value!69206 List!12426)) (IntegerValue!6585 (value!69207 (_ BitVec 32)) (text!15812 List!12426)) (IntegerValue!6586 (value!69208 Int) (text!15813 List!12426)) (Times!2195) (Or!2195) (Equal!2195) (Minus!2195) (Broken!10979 (value!69209 List!12426)) (And!2195) (Div!2195) (LessEqual!2195) (Mod!2195) (Concat!5592) (Not!2195) (Plus!2195) (SpaceValue!2195 (value!69210 List!12426)) (IntegerValue!6587 (value!69211 Int) (text!15814 List!12426)) (StringLiteralValue!6586 (text!15815 List!12426)) (FloatLiteralValue!4391 (text!15816 List!12426)) (BytesLiteralValue!2195 (value!69212 List!12426)) (CommentValue!4391 (value!69213 List!12426)) (StringLiteralValue!6587 (value!69214 List!12426)) (ErrorTokenValue!2195 (msg!2256 List!12426)) )
))
(declare-datatypes ((C!7112 0))(
  ( (C!7113 (val!4086 Int)) )
))
(declare-datatypes ((List!12427 0))(
  ( (Nil!12369) (Cons!12369 (h!17770 C!7112) (t!112997 List!12427)) )
))
(declare-datatypes ((IArray!8111 0))(
  ( (IArray!8112 (innerList!4113 List!12427)) )
))
(declare-datatypes ((Conc!4053 0))(
  ( (Node!4053 (left!10700 Conc!4053) (right!11030 Conc!4053) (csize!8336 Int) (cheight!4264 Int)) (Leaf!6265 (xs!6764 IArray!8111) (csize!8337 Int)) (Empty!4053) )
))
(declare-datatypes ((Regex!3397 0))(
  ( (ElementMatch!3397 (c!203245 C!7112)) (Concat!5593 (regOne!7306 Regex!3397) (regTwo!7306 Regex!3397)) (EmptyExpr!3397) (Star!3397 (reg!3726 Regex!3397)) (EmptyLang!3397) (Union!3397 (regOne!7307 Regex!3397) (regTwo!7307 Regex!3397)) )
))
(declare-datatypes ((String!15107 0))(
  ( (String!15108 (value!69215 String)) )
))
(declare-datatypes ((BalanceConc!8038 0))(
  ( (BalanceConc!8039 (c!203246 Conc!4053)) )
))
(declare-datatypes ((TokenValueInjection!4086 0))(
  ( (TokenValueInjection!4087 (toValue!3252 Int) (toChars!3111 Int)) )
))
(declare-datatypes ((Rule!4054 0))(
  ( (Rule!4055 (regex!2127 Regex!3397) (tag!2389 String!15107) (isSeparator!2127 Bool) (transformation!2127 TokenValueInjection!4086)) )
))
(declare-datatypes ((List!12428 0))(
  ( (Nil!12370) (Cons!12370 (h!17771 Rule!4054) (t!112998 List!12428)) )
))
(declare-fun rules!2728 () List!12428)

(declare-fun e!779476 () Bool)

(declare-fun b!1214570 () Bool)

(declare-fun inv!16552 (String!15107) Bool)

(declare-fun inv!16555 (TokenValueInjection!4086) Bool)

(assert (=> b!1214570 (= e!779477 (and tp!344540 (inv!16552 (tag!2389 (h!17771 rules!2728))) (inv!16555 (transformation!2127 (h!17771 rules!2728))) e!779476))))

(declare-fun tp!344539 () Bool)

(declare-fun e!779474 () Bool)

(declare-datatypes ((Token!3916 0))(
  ( (Token!3917 (value!69216 TokenValue!2195) (rule!3550 Rule!4054) (size!9795 Int) (originalCharacters!2681 List!12427)) )
))
(declare-datatypes ((List!12429 0))(
  ( (Nil!12371) (Cons!12371 (h!17772 Token!3916) (t!112999 List!12429)) )
))
(declare-fun tokens!556 () List!12429)

(declare-fun b!1214571 () Bool)

(declare-fun e!779473 () Bool)

(declare-fun inv!21 (TokenValue!2195) Bool)

(assert (=> b!1214571 (= e!779473 (and (inv!21 (value!69216 (h!17772 tokens!556))) e!779474 tp!344539))))

(declare-fun b!1214572 () Bool)

(declare-fun Unit!18671 () Unit!18667)

(assert (=> b!1214572 (= e!779481 Unit!18671)))

(declare-fun lt!415375 () List!12429)

(assert (=> b!1214572 (= lt!415375 (Cons!12371 (h!17772 tokens!556) Nil!12371))))

(declare-fun lt!415372 () Unit!18667)

(declare-datatypes ((tuple2!12238 0))(
  ( (tuple2!12239 (_1!6966 List!12429) (_2!6966 List!12427)) )
))
(declare-fun lt!415377 () tuple2!12238)

(declare-datatypes ((LexerInterface!1822 0))(
  ( (LexerInterfaceExt!1819 (__x!8106 Int)) (Lexer!1820) )
))
(declare-fun thiss!20528 () LexerInterface!1822)

(declare-datatypes ((tuple2!12240 0))(
  ( (tuple2!12241 (_1!6967 Token!3916) (_2!6967 List!12427)) )
))
(declare-fun lt!415368 () tuple2!12240)

(declare-fun lt!415371 () List!12427)

(declare-fun lemmaLexThenLexPrefix!160 (LexerInterface!1822 List!12428 List!12427 List!12427 List!12429 List!12429 List!12427) Unit!18667)

(declare-fun lexList!452 (LexerInterface!1822 List!12428 List!12427) tuple2!12238)

(assert (=> b!1214572 (= lt!415372 (lemmaLexThenLexPrefix!160 thiss!20528 rules!2728 lt!415371 (_2!6967 lt!415368) lt!415375 (_1!6966 (lexList!452 thiss!20528 rules!2728 (_2!6967 lt!415368))) (_2!6966 lt!415377)))))

(declare-fun res!546224 () Bool)

(assert (=> b!1214572 (= res!546224 (= (lexList!452 thiss!20528 rules!2728 lt!415371) (tuple2!12239 lt!415375 Nil!12369)))))

(declare-fun e!779475 () Bool)

(assert (=> b!1214572 (=> (not res!546224) (not e!779475))))

(assert (=> b!1214572 e!779475))

(declare-fun b!1214573 () Bool)

(declare-fun res!546218 () Bool)

(declare-fun e!779478 () Bool)

(assert (=> b!1214573 (=> (not res!546218) (not e!779478))))

(declare-fun lt!415369 () List!12427)

(declare-fun matchR!1519 (Regex!3397 List!12427) Bool)

(assert (=> b!1214573 (= res!546218 (matchR!1519 (regex!2127 (rule!3550 (_1!6967 lt!415368))) lt!415369))))

(declare-fun b!1214574 () Bool)

(declare-fun e!779487 () Bool)

(declare-fun e!779486 () Bool)

(assert (=> b!1214574 (= e!779487 e!779486)))

(declare-fun res!546221 () Bool)

(assert (=> b!1214574 (=> (not res!546221) (not e!779486))))

(assert (=> b!1214574 (= res!546221 (= (_1!6967 lt!415368) (h!17772 tokens!556)))))

(declare-datatypes ((Option!2489 0))(
  ( (None!2488) (Some!2488 (v!20617 tuple2!12240)) )
))
(declare-fun lt!415367 () Option!2489)

(declare-fun get!4070 (Option!2489) tuple2!12240)

(assert (=> b!1214574 (= lt!415368 (get!4070 lt!415367))))

(declare-fun b!1214565 () Bool)

(declare-fun e!779488 () Bool)

(declare-fun e!779484 () Bool)

(assert (=> b!1214565 (= e!779488 e!779484)))

(declare-fun res!546223 () Bool)

(assert (=> b!1214565 (=> (not res!546223) (not e!779484))))

(get-info :version)

(assert (=> b!1214565 (= res!546223 (and (= (_1!6966 lt!415377) tokens!556) (not ((_ is Nil!12371) tokens!556))))))

(declare-fun input!2346 () List!12427)

(assert (=> b!1214565 (= lt!415377 (lexList!452 thiss!20528 rules!2728 input!2346))))

(declare-fun res!546225 () Bool)

(assert (=> start!108442 (=> (not res!546225) (not e!779488))))

(assert (=> start!108442 (= res!546225 ((_ is Lexer!1820) thiss!20528))))

(assert (=> start!108442 e!779488))

(assert (=> start!108442 true))

(assert (=> start!108442 e!779479))

(declare-fun e!779491 () Bool)

(assert (=> start!108442 e!779491))

(assert (=> start!108442 e!779489))

(declare-fun b!1214575 () Bool)

(declare-fun e!779482 () Bool)

(assert (=> b!1214575 (= e!779478 e!779482)))

(declare-fun res!546217 () Bool)

(assert (=> b!1214575 (=> (not res!546217) (not e!779482))))

(declare-fun lt!415374 () Bool)

(assert (=> b!1214575 (= res!546217 (not lt!415374))))

(declare-fun lt!415376 () Unit!18667)

(assert (=> b!1214575 (= lt!415376 e!779481)))

(declare-fun c!203244 () Bool)

(assert (=> b!1214575 (= c!203244 lt!415374)))

(declare-fun rulesProduceIndividualToken!830 (LexerInterface!1822 List!12428 Token!3916) Bool)

(assert (=> b!1214575 (= lt!415374 (not (rulesProduceIndividualToken!830 thiss!20528 rules!2728 (h!17772 tokens!556))))))

(declare-fun b!1214576 () Bool)

(declare-fun e!779492 () Bool)

(assert (=> b!1214576 (= e!779492 e!779478)))

(declare-fun res!546222 () Bool)

(assert (=> b!1214576 (=> (not res!546222) (not e!779478))))

(assert (=> b!1214576 (= res!546222 (= lt!415369 lt!415371))))

(declare-fun lt!415365 () BalanceConc!8038)

(declare-fun list!4565 (BalanceConc!8038) List!12427)

(assert (=> b!1214576 (= lt!415371 (list!4565 lt!415365))))

(declare-fun lt!415366 () BalanceConc!8038)

(assert (=> b!1214576 (= lt!415369 (list!4565 lt!415366))))

(declare-fun b!1214577 () Bool)

(declare-fun res!546216 () Bool)

(assert (=> b!1214577 (=> (not res!546216) (not e!779488))))

(declare-fun rulesInvariant!1696 (LexerInterface!1822 List!12428) Bool)

(assert (=> b!1214577 (= res!546216 (rulesInvariant!1696 thiss!20528 rules!2728))))

(declare-fun b!1214578 () Bool)

(assert (=> b!1214578 (= e!779482 (not true))))

(declare-datatypes ((IArray!8113 0))(
  ( (IArray!8114 (innerList!4114 List!12429)) )
))
(declare-datatypes ((Conc!4054 0))(
  ( (Node!4054 (left!10701 Conc!4054) (right!11031 Conc!4054) (csize!8338 Int) (cheight!4265 Int)) (Leaf!6266 (xs!6765 IArray!8113) (csize!8339 Int)) (Empty!4054) )
))
(declare-datatypes ((BalanceConc!8040 0))(
  ( (BalanceConc!8041 (c!203247 Conc!4054)) )
))
(declare-fun lt!415373 () BalanceConc!8040)

(declare-fun seqFromList!1546 (List!12429) BalanceConc!8040)

(assert (=> b!1214578 (= lt!415373 (seqFromList!1546 tokens!556))))

(declare-fun rulesProduceEachTokenIndividually!772 (LexerInterface!1822 List!12428 BalanceConc!8040) Bool)

(assert (=> b!1214578 (rulesProduceEachTokenIndividually!772 thiss!20528 rules!2728 (seqFromList!1546 (t!112999 tokens!556)))))

(declare-fun lt!415370 () Unit!18667)

(declare-fun lemmaLexThenRulesProducesEachTokenIndividually!13 (LexerInterface!1822 List!12428 List!12427 List!12429) Unit!18667)

(assert (=> b!1214578 (= lt!415370 (lemmaLexThenRulesProducesEachTokenIndividually!13 thiss!20528 rules!2728 (_2!6967 lt!415368) (t!112999 tokens!556)))))

(declare-fun b!1214579 () Bool)

(declare-fun tp!344538 () Bool)

(assert (=> b!1214579 (= e!779474 (and tp!344538 (inv!16552 (tag!2389 (rule!3550 (h!17772 tokens!556)))) (inv!16555 (transformation!2127 (rule!3550 (h!17772 tokens!556)))) e!779485))))

(assert (=> b!1214580 (= e!779476 (and tp!344537 tp!344534))))

(declare-fun b!1214581 () Bool)

(assert (=> b!1214581 (= e!779475 false)))

(declare-fun b!1214582 () Bool)

(declare-fun res!546219 () Bool)

(assert (=> b!1214582 (=> (not res!546219) (not e!779488))))

(declare-fun isEmpty!7355 (List!12428) Bool)

(assert (=> b!1214582 (= res!546219 (not (isEmpty!7355 rules!2728)))))

(declare-fun b!1214583 () Bool)

(assert (=> b!1214583 (= e!779486 e!779492)))

(declare-fun res!546227 () Bool)

(assert (=> b!1214583 (=> (not res!546227) (not e!779492))))

(assert (=> b!1214583 (= res!546227 (= lt!415366 lt!415365))))

(declare-fun charsOf!1133 (Token!3916) BalanceConc!8038)

(assert (=> b!1214583 (= lt!415365 (charsOf!1133 (h!17772 tokens!556)))))

(assert (=> b!1214583 (= lt!415366 (charsOf!1133 (_1!6967 lt!415368)))))

(declare-fun b!1214584 () Bool)

(declare-fun res!546220 () Bool)

(assert (=> b!1214584 (=> (not res!546220) (not e!779478))))

(declare-fun ++!3167 (List!12427 List!12427) List!12427)

(assert (=> b!1214584 (= res!546220 (= (++!3167 lt!415371 (_2!6967 lt!415368)) input!2346))))

(declare-fun tp!344542 () Bool)

(declare-fun b!1214585 () Bool)

(declare-fun inv!16556 (Token!3916) Bool)

(assert (=> b!1214585 (= e!779491 (and (inv!16556 (h!17772 tokens!556)) e!779473 tp!344542))))

(declare-fun b!1214586 () Bool)

(assert (=> b!1214586 (= e!779484 e!779487)))

(declare-fun res!546228 () Bool)

(assert (=> b!1214586 (=> (not res!546228) (not e!779487))))

(declare-fun isDefined!2127 (Option!2489) Bool)

(assert (=> b!1214586 (= res!546228 (isDefined!2127 lt!415367))))

(declare-fun maxPrefix!944 (LexerInterface!1822 List!12428 List!12427) Option!2489)

(assert (=> b!1214586 (= lt!415367 (maxPrefix!944 thiss!20528 rules!2728 input!2346))))

(declare-fun b!1214587 () Bool)

(declare-fun res!546226 () Bool)

(assert (=> b!1214587 (=> (not res!546226) (not e!779482))))

(assert (=> b!1214587 (= res!546226 (= (_1!6966 (lexList!452 thiss!20528 rules!2728 (_2!6967 lt!415368))) (t!112999 tokens!556)))))

(assert (= (and start!108442 res!546225) b!1214582))

(assert (= (and b!1214582 res!546219) b!1214577))

(assert (= (and b!1214577 res!546216) b!1214565))

(assert (= (and b!1214565 res!546223) b!1214586))

(assert (= (and b!1214586 res!546228) b!1214574))

(assert (= (and b!1214574 res!546221) b!1214583))

(assert (= (and b!1214583 res!546227) b!1214576))

(assert (= (and b!1214576 res!546222) b!1214584))

(assert (= (and b!1214584 res!546220) b!1214573))

(assert (= (and b!1214573 res!546218) b!1214575))

(assert (= (and b!1214575 c!203244) b!1214572))

(assert (= (and b!1214575 (not c!203244)) b!1214568))

(assert (= (and b!1214572 res!546224) b!1214581))

(assert (= (and b!1214575 res!546217) b!1214587))

(assert (= (and b!1214587 res!546226) b!1214578))

(assert (= b!1214570 b!1214580))

(assert (= b!1214569 b!1214570))

(assert (= (and start!108442 ((_ is Cons!12370) rules!2728)) b!1214569))

(assert (= b!1214579 b!1214567))

(assert (= b!1214571 b!1214579))

(assert (= b!1214585 b!1214571))

(assert (= (and start!108442 ((_ is Cons!12371) tokens!556)) b!1214585))

(assert (= (and start!108442 ((_ is Cons!12369) input!2346)) b!1214566))

(declare-fun m!1389347 () Bool)

(assert (=> b!1214576 m!1389347))

(declare-fun m!1389349 () Bool)

(assert (=> b!1214576 m!1389349))

(declare-fun m!1389351 () Bool)

(assert (=> b!1214571 m!1389351))

(declare-fun m!1389353 () Bool)

(assert (=> b!1214577 m!1389353))

(declare-fun m!1389355 () Bool)

(assert (=> b!1214570 m!1389355))

(declare-fun m!1389357 () Bool)

(assert (=> b!1214570 m!1389357))

(declare-fun m!1389359 () Bool)

(assert (=> b!1214574 m!1389359))

(declare-fun m!1389361 () Bool)

(assert (=> b!1214579 m!1389361))

(declare-fun m!1389363 () Bool)

(assert (=> b!1214579 m!1389363))

(declare-fun m!1389365 () Bool)

(assert (=> b!1214586 m!1389365))

(declare-fun m!1389367 () Bool)

(assert (=> b!1214586 m!1389367))

(declare-fun m!1389369 () Bool)

(assert (=> b!1214584 m!1389369))

(declare-fun m!1389371 () Bool)

(assert (=> b!1214582 m!1389371))

(declare-fun m!1389373 () Bool)

(assert (=> b!1214575 m!1389373))

(declare-fun m!1389375 () Bool)

(assert (=> b!1214587 m!1389375))

(declare-fun m!1389377 () Bool)

(assert (=> b!1214578 m!1389377))

(declare-fun m!1389379 () Bool)

(assert (=> b!1214578 m!1389379))

(assert (=> b!1214578 m!1389379))

(declare-fun m!1389381 () Bool)

(assert (=> b!1214578 m!1389381))

(declare-fun m!1389383 () Bool)

(assert (=> b!1214578 m!1389383))

(declare-fun m!1389385 () Bool)

(assert (=> b!1214583 m!1389385))

(declare-fun m!1389387 () Bool)

(assert (=> b!1214583 m!1389387))

(declare-fun m!1389389 () Bool)

(assert (=> b!1214565 m!1389389))

(declare-fun m!1389391 () Bool)

(assert (=> b!1214573 m!1389391))

(assert (=> b!1214572 m!1389375))

(declare-fun m!1389393 () Bool)

(assert (=> b!1214572 m!1389393))

(declare-fun m!1389395 () Bool)

(assert (=> b!1214572 m!1389395))

(declare-fun m!1389397 () Bool)

(assert (=> b!1214585 m!1389397))

(check-sat b_and!82405 (not b!1214579) b_and!82403 (not b_next!29807) (not b!1214587) (not b_next!29803) (not b!1214572) b_and!82401 (not b!1214575) (not b!1214576) (not b!1214569) (not b!1214574) (not b_next!29801) (not b!1214571) tp_is_empty!6315 (not b_next!29805) (not b!1214586) (not b!1214565) (not b!1214566) (not b!1214582) (not b!1214570) (not b!1214584) (not b!1214573) (not b!1214577) (not b!1214583) (not b!1214578) (not b!1214585) b_and!82407)
(check-sat (not b_next!29801) (not b_next!29805) b_and!82405 b_and!82403 (not b_next!29807) (not b_next!29803) b_and!82407 b_and!82401)

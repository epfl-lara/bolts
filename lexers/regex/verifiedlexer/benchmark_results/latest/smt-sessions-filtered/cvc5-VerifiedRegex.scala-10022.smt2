; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!524216 () Bool)

(assert start!524216)

(declare-fun b!4970138 () Bool)

(declare-fun b_free!132799 () Bool)

(declare-fun b_next!133589 () Bool)

(assert (=> b!4970138 (= b_free!132799 (not b_next!133589))))

(declare-fun tp!1393920 () Bool)

(declare-fun b_and!348603 () Bool)

(assert (=> b!4970138 (= tp!1393920 b_and!348603)))

(declare-fun b_free!132801 () Bool)

(declare-fun b_next!133591 () Bool)

(assert (=> b!4970138 (= b_free!132801 (not b_next!133591))))

(declare-fun tp!1393918 () Bool)

(declare-fun b_and!348605 () Bool)

(assert (=> b!4970138 (= tp!1393918 b_and!348605)))

(declare-fun b!4970123 () Bool)

(declare-fun res!2121350 () Bool)

(declare-fun e!3106374 () Bool)

(assert (=> b!4970123 (=> (not res!2121350) (not e!3106374))))

(declare-datatypes ((LexerInterface!7987 0))(
  ( (LexerInterfaceExt!7984 (__x!34703 Int)) (Lexer!7985) )
))
(declare-fun thiss!15247 () LexerInterface!7987)

(declare-datatypes ((List!57574 0))(
  ( (Nil!57450) (Cons!57450 (h!63898 (_ BitVec 16)) (t!369028 List!57574)) )
))
(declare-datatypes ((TokenValue!8705 0))(
  ( (FloatLiteralValue!17410 (text!61380 List!57574)) (TokenValueExt!8704 (__x!34704 Int)) (Broken!43525 (value!268673 List!57574)) (Object!8828) (End!8705) (Def!8705) (Underscore!8705) (Match!8705) (Else!8705) (Error!8705) (Case!8705) (If!8705) (Extends!8705) (Abstract!8705) (Class!8705) (Val!8705) (DelimiterValue!17410 (del!8765 List!57574)) (KeywordValue!8711 (value!268674 List!57574)) (CommentValue!17410 (value!268675 List!57574)) (WhitespaceValue!17410 (value!268676 List!57574)) (IndentationValue!8705 (value!268677 List!57574)) (String!65400) (Int32!8705) (Broken!43526 (value!268678 List!57574)) (Boolean!8706) (Unit!148400) (OperatorValue!8708 (op!8765 List!57574)) (IdentifierValue!17410 (value!268679 List!57574)) (IdentifierValue!17411 (value!268680 List!57574)) (WhitespaceValue!17411 (value!268681 List!57574)) (True!17410) (False!17410) (Broken!43527 (value!268682 List!57574)) (Broken!43528 (value!268683 List!57574)) (True!17411) (RightBrace!8705) (RightBracket!8705) (Colon!8705) (Null!8705) (Comma!8705) (LeftBracket!8705) (False!17411) (LeftBrace!8705) (ImaginaryLiteralValue!8705 (text!61381 List!57574)) (StringLiteralValue!26115 (value!268684 List!57574)) (EOFValue!8705 (value!268685 List!57574)) (IdentValue!8705 (value!268686 List!57574)) (DelimiterValue!17411 (value!268687 List!57574)) (DedentValue!8705 (value!268688 List!57574)) (NewLineValue!8705 (value!268689 List!57574)) (IntegerValue!26115 (value!268690 (_ BitVec 32)) (text!61382 List!57574)) (IntegerValue!26116 (value!268691 Int) (text!61383 List!57574)) (Times!8705) (Or!8705) (Equal!8705) (Minus!8705) (Broken!43529 (value!268692 List!57574)) (And!8705) (Div!8705) (LessEqual!8705) (Mod!8705) (Concat!22333) (Not!8705) (Plus!8705) (SpaceValue!8705 (value!268693 List!57574)) (IntegerValue!26117 (value!268694 Int) (text!61384 List!57574)) (StringLiteralValue!26116 (text!61385 List!57574)) (FloatLiteralValue!17411 (text!61386 List!57574)) (BytesLiteralValue!8705 (value!268695 List!57574)) (CommentValue!17411 (value!268696 List!57574)) (StringLiteralValue!26117 (value!268697 List!57574)) (ErrorTokenValue!8705 (msg!8766 List!57574)) )
))
(declare-datatypes ((C!27506 0))(
  ( (C!27507 (val!23119 Int)) )
))
(declare-datatypes ((List!57575 0))(
  ( (Nil!57451) (Cons!57451 (h!63899 C!27506) (t!369029 List!57575)) )
))
(declare-datatypes ((IArray!30355 0))(
  ( (IArray!30356 (innerList!15235 List!57575)) )
))
(declare-datatypes ((Regex!13628 0))(
  ( (ElementMatch!13628 (c!848110 C!27506)) (Concat!22334 (regOne!27768 Regex!13628) (regTwo!27768 Regex!13628)) (EmptyExpr!13628) (Star!13628 (reg!13957 Regex!13628)) (EmptyLang!13628) (Union!13628 (regOne!27769 Regex!13628) (regTwo!27769 Regex!13628)) )
))
(declare-datatypes ((String!65401 0))(
  ( (String!65402 (value!268698 String)) )
))
(declare-datatypes ((Conc!15147 0))(
  ( (Node!15147 (left!41907 Conc!15147) (right!42237 Conc!15147) (csize!30524 Int) (cheight!15358 Int)) (Leaf!25170 (xs!18473 IArray!30355) (csize!30525 Int)) (Empty!15147) )
))
(declare-datatypes ((BalanceConc!29724 0))(
  ( (BalanceConc!29725 (c!848111 Conc!15147)) )
))
(declare-datatypes ((TokenValueInjection!16718 0))(
  ( (TokenValueInjection!16719 (toValue!11358 Int) (toChars!11217 Int)) )
))
(declare-datatypes ((Rule!16590 0))(
  ( (Rule!16591 (regex!8395 Regex!13628) (tag!9259 String!65401) (isSeparator!8395 Bool) (transformation!8395 TokenValueInjection!16718)) )
))
(declare-datatypes ((List!57576 0))(
  ( (Nil!57452) (Cons!57452 (h!63900 Rule!16590) (t!369030 List!57576)) )
))
(declare-fun rulesArg!259 () List!57576)

(declare-fun rulesValidInductive!3298 (LexerInterface!7987 List!57576) Bool)

(assert (=> b!4970123 (= res!2121350 (rulesValidInductive!3298 thiss!15247 rulesArg!259))))

(declare-fun b!4970124 () Bool)

(declare-fun e!3106382 () Bool)

(declare-fun e!3106384 () Bool)

(assert (=> b!4970124 (= e!3106382 (not e!3106384))))

(declare-fun res!2121360 () Bool)

(assert (=> b!4970124 (=> res!2121360 e!3106384)))

(assert (=> b!4970124 (= res!2121360 (or (and (is-Cons!57452 rulesArg!259) (is-Nil!57452 (t!369030 rulesArg!259))) (not (is-Cons!57452 rulesArg!259))))))

(declare-fun lt!2052315 () List!57575)

(declare-fun isPrefix!5246 (List!57575 List!57575) Bool)

(assert (=> b!4970124 (isPrefix!5246 lt!2052315 lt!2052315)))

(declare-datatypes ((Unit!148401 0))(
  ( (Unit!148402) )
))
(declare-fun lt!2052322 () Unit!148401)

(declare-fun lemmaIsPrefixRefl!3570 (List!57575 List!57575) Unit!148401)

(assert (=> b!4970124 (= lt!2052322 (lemmaIsPrefixRefl!3570 lt!2052315 lt!2052315))))

(declare-fun b!4970125 () Bool)

(declare-fun e!3106380 () Bool)

(declare-fun e!3106378 () Bool)

(assert (=> b!4970125 (= e!3106380 e!3106378)))

(declare-fun res!2121357 () Bool)

(assert (=> b!4970125 (=> (not res!2121357) (not e!3106378))))

(declare-fun e!3106387 () Bool)

(assert (=> b!4970125 (= res!2121357 e!3106387)))

(declare-fun res!2121352 () Bool)

(assert (=> b!4970125 (=> res!2121352 e!3106387)))

(declare-fun lt!2052317 () Bool)

(assert (=> b!4970125 (= res!2121352 lt!2052317)))

(declare-fun lt!2052314 () Bool)

(assert (=> b!4970125 (= lt!2052317 (not lt!2052314))))

(declare-fun b!4970127 () Bool)

(declare-fun e!3106372 () Bool)

(assert (=> b!4970127 (= e!3106387 e!3106372)))

(declare-fun res!2121359 () Bool)

(assert (=> b!4970127 (=> (not res!2121359) (not e!3106372))))

(declare-datatypes ((Token!15286 0))(
  ( (Token!15287 (value!268699 TokenValue!8705) (rule!11645 Rule!16590) (size!38078 Int) (originalCharacters!8674 List!57575)) )
))
(declare-datatypes ((tuple2!62180 0))(
  ( (tuple2!62181 (_1!34393 Token!15286) (_2!34393 BalanceConc!29724)) )
))
(declare-fun lt!2052320 () tuple2!62180)

(declare-datatypes ((tuple2!62182 0))(
  ( (tuple2!62183 (_1!34394 Token!15286) (_2!34394 List!57575)) )
))
(declare-fun lt!2052319 () tuple2!62182)

(assert (=> b!4970127 (= res!2121359 (= (_1!34393 lt!2052320) (_1!34394 lt!2052319)))))

(declare-datatypes ((Option!14453 0))(
  ( (None!14452) (Some!14452 (v!50443 tuple2!62182)) )
))
(declare-fun lt!2052321 () Option!14453)

(declare-fun get!19945 (Option!14453) tuple2!62182)

(assert (=> b!4970127 (= lt!2052319 (get!19945 lt!2052321))))

(declare-datatypes ((Option!14454 0))(
  ( (None!14453) (Some!14453 (v!50444 tuple2!62180)) )
))
(declare-fun lt!2052323 () Option!14454)

(declare-fun get!19946 (Option!14454) tuple2!62180)

(assert (=> b!4970127 (= lt!2052320 (get!19946 lt!2052323))))

(declare-fun b!4970128 () Bool)

(declare-fun e!3106376 () Bool)

(assert (=> b!4970128 (= e!3106384 e!3106376)))

(declare-fun res!2121356 () Bool)

(assert (=> b!4970128 (=> res!2121356 e!3106376)))

(declare-fun lt!2052318 () Option!14454)

(assert (=> b!4970128 (= res!2121356 (or (and (is-None!14453 lt!2052318) (is-None!14453 lt!2052323)) (is-None!14453 lt!2052323) (not (is-None!14453 lt!2052318))))))

(declare-fun input!1342 () BalanceConc!29724)

(declare-fun totalInput!464 () BalanceConc!29724)

(declare-fun maxPrefixZipperSequenceV2!706 (LexerInterface!7987 List!57576 BalanceConc!29724 BalanceConc!29724) Option!14454)

(assert (=> b!4970128 (= lt!2052323 (maxPrefixZipperSequenceV2!706 thiss!15247 (t!369030 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!363 (LexerInterface!7987 Rule!16590 BalanceConc!29724 BalanceConc!29724) Option!14454)

(assert (=> b!4970128 (= lt!2052318 (maxPrefixOneRuleZipperSequenceV2!363 thiss!15247 (h!63900 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4970129 () Bool)

(declare-fun e!3106385 () Bool)

(assert (=> b!4970129 (= e!3106378 e!3106385)))

(declare-fun res!2121349 () Bool)

(assert (=> b!4970129 (=> res!2121349 e!3106385)))

(assert (=> b!4970129 (= res!2121349 lt!2052317)))

(declare-fun b!4970130 () Bool)

(assert (=> b!4970130 (= e!3106376 e!3106380)))

(declare-fun res!2121351 () Bool)

(assert (=> b!4970130 (=> (not res!2121351) (not e!3106380))))

(declare-fun isDefined!11366 (Option!14453) Bool)

(assert (=> b!4970130 (= res!2121351 (= lt!2052314 (isDefined!11366 lt!2052321)))))

(declare-fun isDefined!11367 (Option!14454) Bool)

(assert (=> b!4970130 (= lt!2052314 (isDefined!11367 lt!2052323))))

(declare-fun maxPrefixZipper!788 (LexerInterface!7987 List!57576 List!57575) Option!14453)

(assert (=> b!4970130 (= lt!2052321 (maxPrefixZipper!788 thiss!15247 rulesArg!259 lt!2052315))))

(declare-fun b!4970131 () Bool)

(declare-fun e!3106377 () Bool)

(declare-fun lt!2052313 () tuple2!62180)

(declare-fun lt!2052316 () tuple2!62182)

(declare-fun list!18371 (BalanceConc!29724) List!57575)

(assert (=> b!4970131 (= e!3106377 (= (list!18371 (_2!34393 lt!2052313)) (_2!34394 lt!2052316)))))

(declare-fun b!4970132 () Bool)

(assert (=> b!4970132 (= e!3106372 (= (list!18371 (_2!34393 lt!2052320)) (_2!34394 lt!2052319)))))

(declare-fun b!4970133 () Bool)

(assert (=> b!4970133 (= e!3106374 e!3106382)))

(declare-fun res!2121354 () Bool)

(assert (=> b!4970133 (=> (not res!2121354) (not e!3106382))))

(declare-fun isSuffix!1194 (List!57575 List!57575) Bool)

(assert (=> b!4970133 (= res!2121354 (isSuffix!1194 lt!2052315 (list!18371 totalInput!464)))))

(assert (=> b!4970133 (= lt!2052315 (list!18371 input!1342))))

(declare-fun b!4970134 () Bool)

(declare-fun e!3106379 () Bool)

(declare-fun tp!1393922 () Bool)

(declare-fun e!3106373 () Bool)

(declare-fun inv!75086 (String!65401) Bool)

(declare-fun inv!75089 (TokenValueInjection!16718) Bool)

(assert (=> b!4970134 (= e!3106379 (and tp!1393922 (inv!75086 (tag!9259 (h!63900 rulesArg!259))) (inv!75089 (transformation!8395 (h!63900 rulesArg!259))) e!3106373))))

(declare-fun b!4970135 () Bool)

(declare-fun e!3106381 () Bool)

(declare-fun tp!1393919 () Bool)

(assert (=> b!4970135 (= e!3106381 (and e!3106379 tp!1393919))))

(declare-fun b!4970136 () Bool)

(assert (=> b!4970136 (= e!3106385 e!3106377)))

(declare-fun res!2121353 () Bool)

(assert (=> b!4970136 (=> (not res!2121353) (not e!3106377))))

(assert (=> b!4970136 (= res!2121353 (= (_1!34393 lt!2052313) (_1!34394 lt!2052316)))))

(declare-fun maxPrefix!4662 (LexerInterface!7987 List!57576 List!57575) Option!14453)

(assert (=> b!4970136 (= lt!2052316 (get!19945 (maxPrefix!4662 thiss!15247 rulesArg!259 lt!2052315)))))

(assert (=> b!4970136 (= lt!2052313 (get!19946 lt!2052323))))

(declare-fun b!4970137 () Bool)

(declare-fun res!2121358 () Bool)

(assert (=> b!4970137 (=> (not res!2121358) (not e!3106374))))

(declare-fun isEmpty!30945 (List!57576) Bool)

(assert (=> b!4970137 (= res!2121358 (not (isEmpty!30945 rulesArg!259)))))

(declare-fun res!2121355 () Bool)

(assert (=> start!524216 (=> (not res!2121355) (not e!3106374))))

(assert (=> start!524216 (= res!2121355 (is-Lexer!7985 thiss!15247))))

(assert (=> start!524216 e!3106374))

(assert (=> start!524216 true))

(assert (=> start!524216 e!3106381))

(declare-fun e!3106386 () Bool)

(declare-fun inv!75090 (BalanceConc!29724) Bool)

(assert (=> start!524216 (and (inv!75090 input!1342) e!3106386)))

(declare-fun e!3106375 () Bool)

(assert (=> start!524216 (and (inv!75090 totalInput!464) e!3106375)))

(declare-fun b!4970126 () Bool)

(declare-fun tp!1393917 () Bool)

(declare-fun inv!75091 (Conc!15147) Bool)

(assert (=> b!4970126 (= e!3106386 (and (inv!75091 (c!848111 input!1342)) tp!1393917))))

(assert (=> b!4970138 (= e!3106373 (and tp!1393920 tp!1393918))))

(declare-fun b!4970139 () Bool)

(declare-fun tp!1393921 () Bool)

(assert (=> b!4970139 (= e!3106375 (and (inv!75091 (c!848111 totalInput!464)) tp!1393921))))

(assert (= (and start!524216 res!2121355) b!4970123))

(assert (= (and b!4970123 res!2121350) b!4970137))

(assert (= (and b!4970137 res!2121358) b!4970133))

(assert (= (and b!4970133 res!2121354) b!4970124))

(assert (= (and b!4970124 (not res!2121360)) b!4970128))

(assert (= (and b!4970128 (not res!2121356)) b!4970130))

(assert (= (and b!4970130 res!2121351) b!4970125))

(assert (= (and b!4970125 (not res!2121352)) b!4970127))

(assert (= (and b!4970127 res!2121359) b!4970132))

(assert (= (and b!4970125 res!2121357) b!4970129))

(assert (= (and b!4970129 (not res!2121349)) b!4970136))

(assert (= (and b!4970136 res!2121353) b!4970131))

(assert (= b!4970134 b!4970138))

(assert (= b!4970135 b!4970134))

(assert (= (and start!524216 (is-Cons!57452 rulesArg!259)) b!4970135))

(assert (= start!524216 b!4970126))

(assert (= start!524216 b!4970139))

(declare-fun m!5998070 () Bool)

(assert (=> b!4970127 m!5998070))

(declare-fun m!5998072 () Bool)

(assert (=> b!4970127 m!5998072))

(declare-fun m!5998074 () Bool)

(assert (=> b!4970123 m!5998074))

(declare-fun m!5998076 () Bool)

(assert (=> b!4970133 m!5998076))

(assert (=> b!4970133 m!5998076))

(declare-fun m!5998078 () Bool)

(assert (=> b!4970133 m!5998078))

(declare-fun m!5998080 () Bool)

(assert (=> b!4970133 m!5998080))

(declare-fun m!5998082 () Bool)

(assert (=> start!524216 m!5998082))

(declare-fun m!5998084 () Bool)

(assert (=> start!524216 m!5998084))

(declare-fun m!5998086 () Bool)

(assert (=> b!4970130 m!5998086))

(declare-fun m!5998088 () Bool)

(assert (=> b!4970130 m!5998088))

(declare-fun m!5998090 () Bool)

(assert (=> b!4970130 m!5998090))

(declare-fun m!5998092 () Bool)

(assert (=> b!4970131 m!5998092))

(declare-fun m!5998094 () Bool)

(assert (=> b!4970126 m!5998094))

(declare-fun m!5998096 () Bool)

(assert (=> b!4970124 m!5998096))

(declare-fun m!5998098 () Bool)

(assert (=> b!4970124 m!5998098))

(declare-fun m!5998100 () Bool)

(assert (=> b!4970136 m!5998100))

(assert (=> b!4970136 m!5998100))

(declare-fun m!5998102 () Bool)

(assert (=> b!4970136 m!5998102))

(assert (=> b!4970136 m!5998072))

(declare-fun m!5998104 () Bool)

(assert (=> b!4970134 m!5998104))

(declare-fun m!5998106 () Bool)

(assert (=> b!4970134 m!5998106))

(declare-fun m!5998108 () Bool)

(assert (=> b!4970139 m!5998108))

(declare-fun m!5998110 () Bool)

(assert (=> b!4970132 m!5998110))

(declare-fun m!5998112 () Bool)

(assert (=> b!4970137 m!5998112))

(declare-fun m!5998114 () Bool)

(assert (=> b!4970128 m!5998114))

(declare-fun m!5998116 () Bool)

(assert (=> b!4970128 m!5998116))

(push 1)

(assert (not b!4970126))

(assert (not b!4970127))

(assert (not b!4970137))

(assert (not b!4970136))

(assert (not b!4970134))

(assert (not b_next!133591))

(assert (not start!524216))

(assert (not b_next!133589))

(assert (not b!4970124))

(assert (not b!4970133))

(assert (not b!4970123))

(assert (not b!4970131))

(assert (not b!4970132))

(assert (not b!4970139))

(assert b_and!348605)

(assert (not b!4970128))

(assert (not b!4970130))

(assert b_and!348603)

(assert (not b!4970135))

(check-sat)

(pop 1)

(push 1)

(assert b_and!348603)

(assert b_and!348605)

(assert (not b_next!133589))

(assert (not b_next!133591))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1600255 () Bool)

(declare-fun e!3106443 () Bool)

(assert (=> d!1600255 e!3106443))

(declare-fun res!2121419 () Bool)

(assert (=> d!1600255 (=> res!2121419 e!3106443)))

(declare-fun lt!2052359 () Bool)

(assert (=> d!1600255 (= res!2121419 (not lt!2052359))))

(declare-fun e!3106444 () Bool)

(assert (=> d!1600255 (= lt!2052359 e!3106444)))

(declare-fun res!2121418 () Bool)

(assert (=> d!1600255 (=> res!2121418 e!3106444)))

(assert (=> d!1600255 (= res!2121418 (is-Nil!57451 lt!2052315))))

(assert (=> d!1600255 (= (isPrefix!5246 lt!2052315 lt!2052315) lt!2052359)))

(declare-fun b!4970201 () Bool)

(declare-fun e!3106442 () Bool)

(declare-fun tail!9803 (List!57575) List!57575)

(assert (=> b!4970201 (= e!3106442 (isPrefix!5246 (tail!9803 lt!2052315) (tail!9803 lt!2052315)))))

(declare-fun b!4970200 () Bool)

(declare-fun res!2121416 () Bool)

(assert (=> b!4970200 (=> (not res!2121416) (not e!3106442))))

(declare-fun head!10670 (List!57575) C!27506)

(assert (=> b!4970200 (= res!2121416 (= (head!10670 lt!2052315) (head!10670 lt!2052315)))))

(declare-fun b!4970199 () Bool)

(assert (=> b!4970199 (= e!3106444 e!3106442)))

(declare-fun res!2121417 () Bool)

(assert (=> b!4970199 (=> (not res!2121417) (not e!3106442))))

(assert (=> b!4970199 (= res!2121417 (not (is-Nil!57451 lt!2052315)))))

(declare-fun b!4970202 () Bool)

(declare-fun size!38080 (List!57575) Int)

(assert (=> b!4970202 (= e!3106443 (>= (size!38080 lt!2052315) (size!38080 lt!2052315)))))

(assert (= (and d!1600255 (not res!2121418)) b!4970199))

(assert (= (and b!4970199 res!2121417) b!4970200))

(assert (= (and b!4970200 res!2121416) b!4970201))

(assert (= (and d!1600255 (not res!2121419)) b!4970202))

(declare-fun m!5998166 () Bool)

(assert (=> b!4970201 m!5998166))

(assert (=> b!4970201 m!5998166))

(assert (=> b!4970201 m!5998166))

(assert (=> b!4970201 m!5998166))

(declare-fun m!5998168 () Bool)

(assert (=> b!4970201 m!5998168))

(declare-fun m!5998170 () Bool)

(assert (=> b!4970200 m!5998170))

(assert (=> b!4970200 m!5998170))

(declare-fun m!5998172 () Bool)

(assert (=> b!4970202 m!5998172))

(assert (=> b!4970202 m!5998172))

(assert (=> b!4970124 d!1600255))

(declare-fun d!1600257 () Bool)

(assert (=> d!1600257 (isPrefix!5246 lt!2052315 lt!2052315)))

(declare-fun lt!2052362 () Unit!148401)

(declare-fun choose!36694 (List!57575 List!57575) Unit!148401)

(assert (=> d!1600257 (= lt!2052362 (choose!36694 lt!2052315 lt!2052315))))

(assert (=> d!1600257 (= (lemmaIsPrefixRefl!3570 lt!2052315 lt!2052315) lt!2052362)))

(declare-fun bs!1183477 () Bool)

(assert (= bs!1183477 d!1600257))

(assert (=> bs!1183477 m!5998096))

(declare-fun m!5998174 () Bool)

(assert (=> bs!1183477 m!5998174))

(assert (=> b!4970124 d!1600257))

(declare-fun d!1600259 () Bool)

(declare-fun c!848117 () Bool)

(assert (=> d!1600259 (= c!848117 (is-Node!15147 (c!848111 input!1342)))))

(declare-fun e!3106449 () Bool)

(assert (=> d!1600259 (= (inv!75091 (c!848111 input!1342)) e!3106449)))

(declare-fun b!4970209 () Bool)

(declare-fun inv!75095 (Conc!15147) Bool)

(assert (=> b!4970209 (= e!3106449 (inv!75095 (c!848111 input!1342)))))

(declare-fun b!4970210 () Bool)

(declare-fun e!3106450 () Bool)

(assert (=> b!4970210 (= e!3106449 e!3106450)))

(declare-fun res!2121426 () Bool)

(assert (=> b!4970210 (= res!2121426 (not (is-Leaf!25170 (c!848111 input!1342))))))

(assert (=> b!4970210 (=> res!2121426 e!3106450)))

(declare-fun b!4970211 () Bool)

(declare-fun inv!75096 (Conc!15147) Bool)

(assert (=> b!4970211 (= e!3106450 (inv!75096 (c!848111 input!1342)))))

(assert (= (and d!1600259 c!848117) b!4970209))

(assert (= (and d!1600259 (not c!848117)) b!4970210))

(assert (= (and b!4970210 (not res!2121426)) b!4970211))

(declare-fun m!5998176 () Bool)

(assert (=> b!4970209 m!5998176))

(declare-fun m!5998178 () Bool)

(assert (=> b!4970211 m!5998178))

(assert (=> b!4970126 d!1600259))

(declare-fun d!1600261 () Bool)

(assert (=> d!1600261 (= (isEmpty!30945 rulesArg!259) (is-Nil!57452 rulesArg!259))))

(assert (=> b!4970137 d!1600261))

(declare-fun d!1600263 () Bool)

(assert (=> d!1600263 (= (get!19945 (maxPrefix!4662 thiss!15247 rulesArg!259 lt!2052315)) (v!50443 (maxPrefix!4662 thiss!15247 rulesArg!259 lt!2052315)))))

(assert (=> b!4970136 d!1600263))

(declare-fun b!4970230 () Bool)

(declare-fun e!3106458 () Option!14453)

(declare-fun call!346628 () Option!14453)

(assert (=> b!4970230 (= e!3106458 call!346628)))

(declare-fun b!4970231 () Bool)

(declare-fun res!2121444 () Bool)

(declare-fun e!3106457 () Bool)

(assert (=> b!4970231 (=> (not res!2121444) (not e!3106457))))

(declare-fun lt!2052376 () Option!14453)

(declare-fun apply!13906 (TokenValueInjection!16718 BalanceConc!29724) TokenValue!8705)

(declare-fun seqFromList!6038 (List!57575) BalanceConc!29724)

(assert (=> b!4970231 (= res!2121444 (= (value!268699 (_1!34394 (get!19945 lt!2052376))) (apply!13906 (transformation!8395 (rule!11645 (_1!34394 (get!19945 lt!2052376)))) (seqFromList!6038 (originalCharacters!8674 (_1!34394 (get!19945 lt!2052376)))))))))

(declare-fun b!4970232 () Bool)

(declare-fun res!2121446 () Bool)

(assert (=> b!4970232 (=> (not res!2121446) (not e!3106457))))

(declare-fun matchR!6638 (Regex!13628 List!57575) Bool)

(declare-fun charsOf!5439 (Token!15286) BalanceConc!29724)

(assert (=> b!4970232 (= res!2121446 (matchR!6638 (regex!8395 (rule!11645 (_1!34394 (get!19945 lt!2052376)))) (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052376))))))))

(declare-fun b!4970233 () Bool)

(declare-fun res!2121443 () Bool)

(assert (=> b!4970233 (=> (not res!2121443) (not e!3106457))))

(assert (=> b!4970233 (= res!2121443 (< (size!38080 (_2!34394 (get!19945 lt!2052376))) (size!38080 lt!2052315)))))

(declare-fun d!1600265 () Bool)

(declare-fun e!3106459 () Bool)

(assert (=> d!1600265 e!3106459))

(declare-fun res!2121448 () Bool)

(assert (=> d!1600265 (=> res!2121448 e!3106459)))

(declare-fun isEmpty!30947 (Option!14453) Bool)

(assert (=> d!1600265 (= res!2121448 (isEmpty!30947 lt!2052376))))

(assert (=> d!1600265 (= lt!2052376 e!3106458)))

(declare-fun c!848120 () Bool)

(assert (=> d!1600265 (= c!848120 (and (is-Cons!57452 rulesArg!259) (is-Nil!57452 (t!369030 rulesArg!259))))))

(declare-fun lt!2052375 () Unit!148401)

(declare-fun lt!2052377 () Unit!148401)

(assert (=> d!1600265 (= lt!2052375 lt!2052377)))

(assert (=> d!1600265 (isPrefix!5246 lt!2052315 lt!2052315)))

(assert (=> d!1600265 (= lt!2052377 (lemmaIsPrefixRefl!3570 lt!2052315 lt!2052315))))

(assert (=> d!1600265 (rulesValidInductive!3298 thiss!15247 rulesArg!259)))

(assert (=> d!1600265 (= (maxPrefix!4662 thiss!15247 rulesArg!259 lt!2052315) lt!2052376)))

(declare-fun b!4970234 () Bool)

(declare-fun lt!2052373 () Option!14453)

(declare-fun lt!2052374 () Option!14453)

(assert (=> b!4970234 (= e!3106458 (ite (and (is-None!14452 lt!2052373) (is-None!14452 lt!2052374)) None!14452 (ite (is-None!14452 lt!2052374) lt!2052373 (ite (is-None!14452 lt!2052373) lt!2052374 (ite (>= (size!38078 (_1!34394 (v!50443 lt!2052373))) (size!38078 (_1!34394 (v!50443 lt!2052374)))) lt!2052373 lt!2052374)))))))

(assert (=> b!4970234 (= lt!2052373 call!346628)))

(assert (=> b!4970234 (= lt!2052374 (maxPrefix!4662 thiss!15247 (t!369030 rulesArg!259) lt!2052315))))

(declare-fun b!4970235 () Bool)

(declare-fun res!2121445 () Bool)

(assert (=> b!4970235 (=> (not res!2121445) (not e!3106457))))

(assert (=> b!4970235 (= res!2121445 (= (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052376)))) (originalCharacters!8674 (_1!34394 (get!19945 lt!2052376)))))))

(declare-fun b!4970236 () Bool)

(declare-fun res!2121442 () Bool)

(assert (=> b!4970236 (=> (not res!2121442) (not e!3106457))))

(declare-fun ++!12534 (List!57575 List!57575) List!57575)

(assert (=> b!4970236 (= res!2121442 (= (++!12534 (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052376)))) (_2!34394 (get!19945 lt!2052376))) lt!2052315))))

(declare-fun bm!346623 () Bool)

(declare-fun maxPrefixOneRule!3631 (LexerInterface!7987 Rule!16590 List!57575) Option!14453)

(assert (=> bm!346623 (= call!346628 (maxPrefixOneRule!3631 thiss!15247 (h!63900 rulesArg!259) lt!2052315))))

(declare-fun b!4970237 () Bool)

(declare-fun contains!19540 (List!57576 Rule!16590) Bool)

(assert (=> b!4970237 (= e!3106457 (contains!19540 rulesArg!259 (rule!11645 (_1!34394 (get!19945 lt!2052376)))))))

(declare-fun b!4970238 () Bool)

(assert (=> b!4970238 (= e!3106459 e!3106457)))

(declare-fun res!2121447 () Bool)

(assert (=> b!4970238 (=> (not res!2121447) (not e!3106457))))

(assert (=> b!4970238 (= res!2121447 (isDefined!11366 lt!2052376))))

(assert (= (and d!1600265 c!848120) b!4970230))

(assert (= (and d!1600265 (not c!848120)) b!4970234))

(assert (= (or b!4970230 b!4970234) bm!346623))

(assert (= (and d!1600265 (not res!2121448)) b!4970238))

(assert (= (and b!4970238 res!2121447) b!4970235))

(assert (= (and b!4970235 res!2121445) b!4970233))

(assert (= (and b!4970233 res!2121443) b!4970236))

(assert (= (and b!4970236 res!2121442) b!4970231))

(assert (= (and b!4970231 res!2121444) b!4970232))

(assert (= (and b!4970232 res!2121446) b!4970237))

(declare-fun m!5998180 () Bool)

(assert (=> b!4970233 m!5998180))

(declare-fun m!5998182 () Bool)

(assert (=> b!4970233 m!5998182))

(assert (=> b!4970233 m!5998172))

(declare-fun m!5998184 () Bool)

(assert (=> b!4970234 m!5998184))

(assert (=> b!4970232 m!5998180))

(declare-fun m!5998186 () Bool)

(assert (=> b!4970232 m!5998186))

(assert (=> b!4970232 m!5998186))

(declare-fun m!5998188 () Bool)

(assert (=> b!4970232 m!5998188))

(assert (=> b!4970232 m!5998188))

(declare-fun m!5998190 () Bool)

(assert (=> b!4970232 m!5998190))

(declare-fun m!5998192 () Bool)

(assert (=> b!4970238 m!5998192))

(declare-fun m!5998194 () Bool)

(assert (=> bm!346623 m!5998194))

(assert (=> b!4970237 m!5998180))

(declare-fun m!5998196 () Bool)

(assert (=> b!4970237 m!5998196))

(assert (=> b!4970235 m!5998180))

(assert (=> b!4970235 m!5998186))

(assert (=> b!4970235 m!5998186))

(assert (=> b!4970235 m!5998188))

(declare-fun m!5998198 () Bool)

(assert (=> d!1600265 m!5998198))

(assert (=> d!1600265 m!5998096))

(assert (=> d!1600265 m!5998098))

(assert (=> d!1600265 m!5998074))

(assert (=> b!4970231 m!5998180))

(declare-fun m!5998200 () Bool)

(assert (=> b!4970231 m!5998200))

(assert (=> b!4970231 m!5998200))

(declare-fun m!5998202 () Bool)

(assert (=> b!4970231 m!5998202))

(assert (=> b!4970236 m!5998180))

(assert (=> b!4970236 m!5998186))

(assert (=> b!4970236 m!5998186))

(assert (=> b!4970236 m!5998188))

(assert (=> b!4970236 m!5998188))

(declare-fun m!5998204 () Bool)

(assert (=> b!4970236 m!5998204))

(assert (=> b!4970136 d!1600265))

(declare-fun d!1600267 () Bool)

(assert (=> d!1600267 (= (get!19946 lt!2052323) (v!50444 lt!2052323))))

(assert (=> b!4970136 d!1600267))

(declare-fun d!1600269 () Bool)

(declare-fun e!3106462 () Bool)

(assert (=> d!1600269 e!3106462))

(declare-fun res!2121451 () Bool)

(assert (=> d!1600269 (=> res!2121451 e!3106462)))

(declare-fun lt!2052380 () Bool)

(assert (=> d!1600269 (= res!2121451 (not lt!2052380))))

(declare-fun drop!2351 (List!57575 Int) List!57575)

(assert (=> d!1600269 (= lt!2052380 (= lt!2052315 (drop!2351 (list!18371 totalInput!464) (- (size!38080 (list!18371 totalInput!464)) (size!38080 lt!2052315)))))))

(assert (=> d!1600269 (= (isSuffix!1194 lt!2052315 (list!18371 totalInput!464)) lt!2052380)))

(declare-fun b!4970241 () Bool)

(assert (=> b!4970241 (= e!3106462 (>= (size!38080 (list!18371 totalInput!464)) (size!38080 lt!2052315)))))

(assert (= (and d!1600269 (not res!2121451)) b!4970241))

(assert (=> d!1600269 m!5998076))

(declare-fun m!5998206 () Bool)

(assert (=> d!1600269 m!5998206))

(assert (=> d!1600269 m!5998172))

(assert (=> d!1600269 m!5998076))

(declare-fun m!5998208 () Bool)

(assert (=> d!1600269 m!5998208))

(assert (=> b!4970241 m!5998076))

(assert (=> b!4970241 m!5998206))

(assert (=> b!4970241 m!5998172))

(assert (=> b!4970133 d!1600269))

(declare-fun d!1600271 () Bool)

(declare-fun list!18373 (Conc!15147) List!57575)

(assert (=> d!1600271 (= (list!18371 totalInput!464) (list!18373 (c!848111 totalInput!464)))))

(declare-fun bs!1183478 () Bool)

(assert (= bs!1183478 d!1600271))

(declare-fun m!5998210 () Bool)

(assert (=> bs!1183478 m!5998210))

(assert (=> b!4970133 d!1600271))

(declare-fun d!1600273 () Bool)

(assert (=> d!1600273 (= (list!18371 input!1342) (list!18373 (c!848111 input!1342)))))

(declare-fun bs!1183479 () Bool)

(assert (= bs!1183479 d!1600273))

(declare-fun m!5998212 () Bool)

(assert (=> bs!1183479 m!5998212))

(assert (=> b!4970133 d!1600273))

(declare-fun d!1600275 () Bool)

(assert (=> d!1600275 (= (list!18371 (_2!34393 lt!2052320)) (list!18373 (c!848111 (_2!34393 lt!2052320))))))

(declare-fun bs!1183480 () Bool)

(assert (= bs!1183480 d!1600275))

(declare-fun m!5998214 () Bool)

(assert (=> bs!1183480 m!5998214))

(assert (=> b!4970132 d!1600275))

(declare-fun d!1600277 () Bool)

(assert (=> d!1600277 (= (inv!75086 (tag!9259 (h!63900 rulesArg!259))) (= (mod (str.len (value!268698 (tag!9259 (h!63900 rulesArg!259)))) 2) 0))))

(assert (=> b!4970134 d!1600277))

(declare-fun d!1600279 () Bool)

(declare-fun res!2121454 () Bool)

(declare-fun e!3106465 () Bool)

(assert (=> d!1600279 (=> (not res!2121454) (not e!3106465))))

(declare-fun semiInverseModEq!3702 (Int Int) Bool)

(assert (=> d!1600279 (= res!2121454 (semiInverseModEq!3702 (toChars!11217 (transformation!8395 (h!63900 rulesArg!259))) (toValue!11358 (transformation!8395 (h!63900 rulesArg!259)))))))

(assert (=> d!1600279 (= (inv!75089 (transformation!8395 (h!63900 rulesArg!259))) e!3106465)))

(declare-fun b!4970244 () Bool)

(declare-fun equivClasses!3550 (Int Int) Bool)

(assert (=> b!4970244 (= e!3106465 (equivClasses!3550 (toChars!11217 (transformation!8395 (h!63900 rulesArg!259))) (toValue!11358 (transformation!8395 (h!63900 rulesArg!259)))))))

(assert (= (and d!1600279 res!2121454) b!4970244))

(declare-fun m!5998216 () Bool)

(assert (=> d!1600279 m!5998216))

(declare-fun m!5998218 () Bool)

(assert (=> b!4970244 m!5998218))

(assert (=> b!4970134 d!1600279))

(declare-fun d!1600281 () Bool)

(declare-fun isBalanced!4204 (Conc!15147) Bool)

(assert (=> d!1600281 (= (inv!75090 input!1342) (isBalanced!4204 (c!848111 input!1342)))))

(declare-fun bs!1183481 () Bool)

(assert (= bs!1183481 d!1600281))

(declare-fun m!5998220 () Bool)

(assert (=> bs!1183481 m!5998220))

(assert (=> start!524216 d!1600281))

(declare-fun d!1600283 () Bool)

(assert (=> d!1600283 (= (inv!75090 totalInput!464) (isBalanced!4204 (c!848111 totalInput!464)))))

(declare-fun bs!1183482 () Bool)

(assert (= bs!1183482 d!1600283))

(declare-fun m!5998222 () Bool)

(assert (=> bs!1183482 m!5998222))

(assert (=> start!524216 d!1600283))

(declare-fun d!1600285 () Bool)

(assert (=> d!1600285 true))

(declare-fun lt!2052418 () Bool)

(declare-fun lambda!247417 () Int)

(declare-fun forall!13330 (List!57576 Int) Bool)

(assert (=> d!1600285 (= lt!2052418 (forall!13330 rulesArg!259 lambda!247417))))

(declare-fun e!3106493 () Bool)

(assert (=> d!1600285 (= lt!2052418 e!3106493)))

(declare-fun res!2121480 () Bool)

(assert (=> d!1600285 (=> res!2121480 e!3106493)))

(assert (=> d!1600285 (= res!2121480 (not (is-Cons!57452 rulesArg!259)))))

(assert (=> d!1600285 (= (rulesValidInductive!3298 thiss!15247 rulesArg!259) lt!2052418)))

(declare-fun b!4970279 () Bool)

(declare-fun e!3106492 () Bool)

(assert (=> b!4970279 (= e!3106493 e!3106492)))

(declare-fun res!2121479 () Bool)

(assert (=> b!4970279 (=> (not res!2121479) (not e!3106492))))

(declare-fun ruleValid!3804 (LexerInterface!7987 Rule!16590) Bool)

(assert (=> b!4970279 (= res!2121479 (ruleValid!3804 thiss!15247 (h!63900 rulesArg!259)))))

(declare-fun b!4970280 () Bool)

(assert (=> b!4970280 (= e!3106492 (rulesValidInductive!3298 thiss!15247 (t!369030 rulesArg!259)))))

(assert (= (and d!1600285 (not res!2121480)) b!4970279))

(assert (= (and b!4970279 res!2121479) b!4970280))

(declare-fun m!5998250 () Bool)

(assert (=> d!1600285 m!5998250))

(declare-fun m!5998252 () Bool)

(assert (=> b!4970279 m!5998252))

(declare-fun m!5998254 () Bool)

(assert (=> b!4970280 m!5998254))

(assert (=> b!4970123 d!1600285))

(declare-fun d!1600291 () Bool)

(assert (=> d!1600291 (= (isDefined!11366 lt!2052321) (not (isEmpty!30947 lt!2052321)))))

(declare-fun bs!1183483 () Bool)

(assert (= bs!1183483 d!1600291))

(declare-fun m!5998256 () Bool)

(assert (=> bs!1183483 m!5998256))

(assert (=> b!4970130 d!1600291))

(declare-fun d!1600293 () Bool)

(declare-fun isEmpty!30948 (Option!14454) Bool)

(assert (=> d!1600293 (= (isDefined!11367 lt!2052323) (not (isEmpty!30948 lt!2052323)))))

(declare-fun bs!1183484 () Bool)

(assert (= bs!1183484 d!1600293))

(declare-fun m!5998258 () Bool)

(assert (=> bs!1183484 m!5998258))

(assert (=> b!4970130 d!1600293))

(declare-fun lt!2052429 () Option!14453)

(declare-fun d!1600295 () Bool)

(assert (=> d!1600295 (= lt!2052429 (maxPrefix!4662 thiss!15247 rulesArg!259 lt!2052315))))

(declare-fun e!3106496 () Option!14453)

(assert (=> d!1600295 (= lt!2052429 e!3106496)))

(declare-fun c!848128 () Bool)

(assert (=> d!1600295 (= c!848128 (and (is-Cons!57452 rulesArg!259) (is-Nil!57452 (t!369030 rulesArg!259))))))

(declare-fun lt!2052433 () Unit!148401)

(declare-fun lt!2052430 () Unit!148401)

(assert (=> d!1600295 (= lt!2052433 lt!2052430)))

(assert (=> d!1600295 (isPrefix!5246 lt!2052315 lt!2052315)))

(assert (=> d!1600295 (= lt!2052430 (lemmaIsPrefixRefl!3570 lt!2052315 lt!2052315))))

(assert (=> d!1600295 (rulesValidInductive!3298 thiss!15247 rulesArg!259)))

(assert (=> d!1600295 (= (maxPrefixZipper!788 thiss!15247 rulesArg!259 lt!2052315) lt!2052429)))

(declare-fun call!346634 () Option!14453)

(declare-fun bm!346629 () Bool)

(declare-fun maxPrefixOneRuleZipper!298 (LexerInterface!7987 Rule!16590 List!57575) Option!14453)

(assert (=> bm!346629 (= call!346634 (maxPrefixOneRuleZipper!298 thiss!15247 (h!63900 rulesArg!259) lt!2052315))))

(declare-fun b!4970287 () Bool)

(assert (=> b!4970287 (= e!3106496 call!346634)))

(declare-fun b!4970288 () Bool)

(declare-fun lt!2052431 () Option!14453)

(declare-fun lt!2052432 () Option!14453)

(assert (=> b!4970288 (= e!3106496 (ite (and (is-None!14452 lt!2052431) (is-None!14452 lt!2052432)) None!14452 (ite (is-None!14452 lt!2052432) lt!2052431 (ite (is-None!14452 lt!2052431) lt!2052432 (ite (>= (size!38078 (_1!34394 (v!50443 lt!2052431))) (size!38078 (_1!34394 (v!50443 lt!2052432)))) lt!2052431 lt!2052432)))))))

(assert (=> b!4970288 (= lt!2052431 call!346634)))

(assert (=> b!4970288 (= lt!2052432 (maxPrefixZipper!788 thiss!15247 (t!369030 rulesArg!259) lt!2052315))))

(assert (= (and d!1600295 c!848128) b!4970287))

(assert (= (and d!1600295 (not c!848128)) b!4970288))

(assert (= (or b!4970287 b!4970288) bm!346629))

(assert (=> d!1600295 m!5998100))

(assert (=> d!1600295 m!5998096))

(assert (=> d!1600295 m!5998098))

(assert (=> d!1600295 m!5998074))

(declare-fun m!5998260 () Bool)

(assert (=> bm!346629 m!5998260))

(declare-fun m!5998262 () Bool)

(assert (=> b!4970288 m!5998262))

(assert (=> b!4970130 d!1600295))

(declare-fun d!1600297 () Bool)

(assert (=> d!1600297 (= (list!18371 (_2!34393 lt!2052313)) (list!18373 (c!848111 (_2!34393 lt!2052313))))))

(declare-fun bs!1183485 () Bool)

(assert (= bs!1183485 d!1600297))

(declare-fun m!5998264 () Bool)

(assert (=> bs!1183485 m!5998264))

(assert (=> b!4970131 d!1600297))

(declare-fun d!1600299 () Bool)

(assert (=> d!1600299 (= (get!19945 lt!2052321) (v!50443 lt!2052321))))

(assert (=> b!4970127 d!1600299))

(assert (=> b!4970127 d!1600267))

(declare-fun d!1600301 () Bool)

(declare-fun e!3106512 () Bool)

(assert (=> d!1600301 e!3106512))

(declare-fun res!2121498 () Bool)

(assert (=> d!1600301 (=> (not res!2121498) (not e!3106512))))

(declare-fun lt!2052454 () Option!14454)

(assert (=> d!1600301 (= res!2121498 (= (isDefined!11367 lt!2052454) (isDefined!11366 (maxPrefixZipper!788 thiss!15247 (t!369030 rulesArg!259) (list!18371 input!1342)))))))

(declare-fun e!3106514 () Option!14454)

(assert (=> d!1600301 (= lt!2052454 e!3106514)))

(declare-fun c!848131 () Bool)

(assert (=> d!1600301 (= c!848131 (and (is-Cons!57452 (t!369030 rulesArg!259)) (is-Nil!57452 (t!369030 (t!369030 rulesArg!259)))))))

(declare-fun lt!2052452 () Unit!148401)

(declare-fun lt!2052451 () Unit!148401)

(assert (=> d!1600301 (= lt!2052452 lt!2052451)))

(declare-fun lt!2052450 () List!57575)

(declare-fun lt!2052453 () List!57575)

(assert (=> d!1600301 (isPrefix!5246 lt!2052450 lt!2052453)))

(assert (=> d!1600301 (= lt!2052451 (lemmaIsPrefixRefl!3570 lt!2052450 lt!2052453))))

(assert (=> d!1600301 (= lt!2052453 (list!18371 input!1342))))

(assert (=> d!1600301 (= lt!2052450 (list!18371 input!1342))))

(assert (=> d!1600301 (rulesValidInductive!3298 thiss!15247 (t!369030 rulesArg!259))))

(assert (=> d!1600301 (= (maxPrefixZipperSequenceV2!706 thiss!15247 (t!369030 rulesArg!259) input!1342 totalInput!464) lt!2052454)))

(declare-fun b!4970305 () Bool)

(declare-fun call!346637 () Option!14454)

(assert (=> b!4970305 (= e!3106514 call!346637)))

(declare-fun b!4970306 () Bool)

(declare-fun res!2121496 () Bool)

(assert (=> b!4970306 (=> (not res!2121496) (not e!3106512))))

(declare-fun e!3106511 () Bool)

(assert (=> b!4970306 (= res!2121496 e!3106511)))

(declare-fun res!2121494 () Bool)

(assert (=> b!4970306 (=> res!2121494 e!3106511)))

(assert (=> b!4970306 (= res!2121494 (not (isDefined!11367 lt!2052454)))))

(declare-fun b!4970307 () Bool)

(declare-fun e!3106510 () Bool)

(assert (=> b!4970307 (= e!3106512 e!3106510)))

(declare-fun res!2121495 () Bool)

(assert (=> b!4970307 (=> res!2121495 e!3106510)))

(assert (=> b!4970307 (= res!2121495 (not (isDefined!11367 lt!2052454)))))

(declare-fun b!4970308 () Bool)

(declare-fun lt!2052448 () Option!14454)

(declare-fun lt!2052449 () Option!14454)

(assert (=> b!4970308 (= e!3106514 (ite (and (is-None!14453 lt!2052448) (is-None!14453 lt!2052449)) None!14453 (ite (is-None!14453 lt!2052449) lt!2052448 (ite (is-None!14453 lt!2052448) lt!2052449 (ite (>= (size!38078 (_1!34393 (v!50444 lt!2052448))) (size!38078 (_1!34393 (v!50444 lt!2052449)))) lt!2052448 lt!2052449)))))))

(assert (=> b!4970308 (= lt!2052448 call!346637)))

(assert (=> b!4970308 (= lt!2052449 (maxPrefixZipperSequenceV2!706 thiss!15247 (t!369030 (t!369030 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun b!4970309 () Bool)

(declare-fun e!3106509 () Bool)

(assert (=> b!4970309 (= e!3106511 e!3106509)))

(declare-fun res!2121497 () Bool)

(assert (=> b!4970309 (=> (not res!2121497) (not e!3106509))))

(assert (=> b!4970309 (= res!2121497 (= (_1!34393 (get!19946 lt!2052454)) (_1!34394 (get!19945 (maxPrefixZipper!788 thiss!15247 (t!369030 rulesArg!259) (list!18371 input!1342))))))))

(declare-fun bm!346632 () Bool)

(assert (=> bm!346632 (= call!346637 (maxPrefixOneRuleZipperSequenceV2!363 thiss!15247 (h!63900 (t!369030 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun b!4970310 () Bool)

(declare-fun e!3106513 () Bool)

(assert (=> b!4970310 (= e!3106510 e!3106513)))

(declare-fun res!2121493 () Bool)

(assert (=> b!4970310 (=> (not res!2121493) (not e!3106513))))

(assert (=> b!4970310 (= res!2121493 (= (_1!34393 (get!19946 lt!2052454)) (_1!34394 (get!19945 (maxPrefix!4662 thiss!15247 (t!369030 rulesArg!259) (list!18371 input!1342))))))))

(declare-fun b!4970311 () Bool)

(assert (=> b!4970311 (= e!3106509 (= (list!18371 (_2!34393 (get!19946 lt!2052454))) (_2!34394 (get!19945 (maxPrefixZipper!788 thiss!15247 (t!369030 rulesArg!259) (list!18371 input!1342))))))))

(declare-fun b!4970312 () Bool)

(assert (=> b!4970312 (= e!3106513 (= (list!18371 (_2!34393 (get!19946 lt!2052454))) (_2!34394 (get!19945 (maxPrefix!4662 thiss!15247 (t!369030 rulesArg!259) (list!18371 input!1342))))))))

(assert (= (and d!1600301 c!848131) b!4970305))

(assert (= (and d!1600301 (not c!848131)) b!4970308))

(assert (= (or b!4970305 b!4970308) bm!346632))

(assert (= (and d!1600301 res!2121498) b!4970306))

(assert (= (and b!4970306 (not res!2121494)) b!4970309))

(assert (= (and b!4970309 res!2121497) b!4970311))

(assert (= (and b!4970306 res!2121496) b!4970307))

(assert (= (and b!4970307 (not res!2121495)) b!4970310))

(assert (= (and b!4970310 res!2121493) b!4970312))

(declare-fun m!5998266 () Bool)

(assert (=> b!4970308 m!5998266))

(declare-fun m!5998268 () Bool)

(assert (=> d!1600301 m!5998268))

(declare-fun m!5998270 () Bool)

(assert (=> d!1600301 m!5998270))

(declare-fun m!5998272 () Bool)

(assert (=> d!1600301 m!5998272))

(assert (=> d!1600301 m!5998254))

(assert (=> d!1600301 m!5998080))

(declare-fun m!5998274 () Bool)

(assert (=> d!1600301 m!5998274))

(declare-fun m!5998276 () Bool)

(assert (=> d!1600301 m!5998276))

(assert (=> d!1600301 m!5998080))

(assert (=> d!1600301 m!5998268))

(assert (=> b!4970306 m!5998274))

(declare-fun m!5998278 () Bool)

(assert (=> b!4970310 m!5998278))

(assert (=> b!4970310 m!5998080))

(assert (=> b!4970310 m!5998080))

(declare-fun m!5998280 () Bool)

(assert (=> b!4970310 m!5998280))

(assert (=> b!4970310 m!5998280))

(declare-fun m!5998282 () Bool)

(assert (=> b!4970310 m!5998282))

(assert (=> b!4970307 m!5998274))

(declare-fun m!5998284 () Bool)

(assert (=> bm!346632 m!5998284))

(assert (=> b!4970312 m!5998278))

(assert (=> b!4970312 m!5998080))

(declare-fun m!5998286 () Bool)

(assert (=> b!4970312 m!5998286))

(assert (=> b!4970312 m!5998280))

(assert (=> b!4970312 m!5998282))

(assert (=> b!4970312 m!5998080))

(assert (=> b!4970312 m!5998280))

(assert (=> b!4970311 m!5998080))

(assert (=> b!4970311 m!5998080))

(assert (=> b!4970311 m!5998268))

(assert (=> b!4970311 m!5998286))

(assert (=> b!4970311 m!5998268))

(declare-fun m!5998288 () Bool)

(assert (=> b!4970311 m!5998288))

(assert (=> b!4970311 m!5998278))

(assert (=> b!4970309 m!5998278))

(assert (=> b!4970309 m!5998080))

(assert (=> b!4970309 m!5998080))

(assert (=> b!4970309 m!5998268))

(assert (=> b!4970309 m!5998268))

(assert (=> b!4970309 m!5998288))

(assert (=> b!4970128 d!1600301))

(declare-fun b!4970338 () Bool)

(declare-fun e!3106535 () Bool)

(assert (=> b!4970338 (= e!3106535 true)))

(declare-fun b!4970337 () Bool)

(declare-fun e!3106534 () Bool)

(assert (=> b!4970337 (= e!3106534 e!3106535)))

(declare-fun b!4970325 () Bool)

(assert (=> b!4970325 e!3106534))

(assert (= b!4970337 b!4970338))

(assert (= b!4970325 b!4970337))

(declare-fun order!26219 () Int)

(declare-fun lambda!247422 () Int)

(declare-fun order!26221 () Int)

(declare-fun dynLambda!23177 (Int Int) Int)

(declare-fun dynLambda!23178 (Int Int) Int)

(assert (=> b!4970338 (< (dynLambda!23177 order!26219 (toValue!11358 (transformation!8395 (h!63900 rulesArg!259)))) (dynLambda!23178 order!26221 lambda!247422))))

(declare-fun order!26223 () Int)

(declare-fun dynLambda!23179 (Int Int) Int)

(assert (=> b!4970338 (< (dynLambda!23179 order!26223 (toChars!11217 (transformation!8395 (h!63900 rulesArg!259)))) (dynLambda!23178 order!26221 lambda!247422))))

(declare-fun e!3106529 () Option!14454)

(declare-datatypes ((tuple2!62188 0))(
  ( (tuple2!62189 (_1!34397 BalanceConc!29724) (_2!34397 BalanceConc!29724)) )
))
(declare-fun lt!2052478 () tuple2!62188)

(declare-fun size!38081 (BalanceConc!29724) Int)

(assert (=> b!4970325 (= e!3106529 (Some!14453 (tuple2!62181 (Token!15287 (apply!13906 (transformation!8395 (h!63900 rulesArg!259)) (_1!34397 lt!2052478)) (h!63900 rulesArg!259) (size!38081 (_1!34397 lt!2052478)) (list!18371 (_1!34397 lt!2052478))) (_2!34397 lt!2052478))))))

(declare-fun lt!2052484 () List!57575)

(assert (=> b!4970325 (= lt!2052484 (list!18371 input!1342))))

(declare-fun lt!2052481 () Unit!148401)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1818 (Regex!13628 List!57575) Unit!148401)

(assert (=> b!4970325 (= lt!2052481 (longestMatchIsAcceptedByMatchOrIsEmpty!1818 (regex!8395 (h!63900 rulesArg!259)) lt!2052484))))

(declare-fun res!2121510 () Bool)

(declare-fun isEmpty!30949 (List!57575) Bool)

(declare-datatypes ((tuple2!62190 0))(
  ( (tuple2!62191 (_1!34398 List!57575) (_2!34398 List!57575)) )
))
(declare-fun findLongestMatchInner!1857 (Regex!13628 List!57575 Int List!57575 List!57575 Int) tuple2!62190)

(assert (=> b!4970325 (= res!2121510 (isEmpty!30949 (_1!34398 (findLongestMatchInner!1857 (regex!8395 (h!63900 rulesArg!259)) Nil!57451 (size!38080 Nil!57451) lt!2052484 lt!2052484 (size!38080 lt!2052484)))))))

(declare-fun e!3106526 () Bool)

(assert (=> b!4970325 (=> res!2121510 e!3106526)))

(assert (=> b!4970325 e!3106526))

(declare-fun lt!2052482 () Unit!148401)

(assert (=> b!4970325 (= lt!2052482 lt!2052481)))

(declare-fun lt!2052479 () Unit!148401)

(declare-fun lemmaInv!1336 (TokenValueInjection!16718) Unit!148401)

(assert (=> b!4970325 (= lt!2052479 (lemmaInv!1336 (transformation!8395 (h!63900 rulesArg!259))))))

(declare-fun lt!2052476 () Unit!148401)

(declare-fun ForallOf!1229 (Int BalanceConc!29724) Unit!148401)

(assert (=> b!4970325 (= lt!2052476 (ForallOf!1229 lambda!247422 (_1!34397 lt!2052478)))))

(declare-fun lt!2052475 () Unit!148401)

(assert (=> b!4970325 (= lt!2052475 (ForallOf!1229 lambda!247422 (seqFromList!6038 (list!18371 (_1!34397 lt!2052478)))))))

(declare-fun lt!2052477 () Option!14454)

(assert (=> b!4970325 (= lt!2052477 (Some!14453 (tuple2!62181 (Token!15287 (apply!13906 (transformation!8395 (h!63900 rulesArg!259)) (_1!34397 lt!2052478)) (h!63900 rulesArg!259) (size!38081 (_1!34397 lt!2052478)) (list!18371 (_1!34397 lt!2052478))) (_2!34397 lt!2052478))))))

(declare-fun lt!2052480 () Unit!148401)

(declare-fun lemmaEqSameImage!1170 (TokenValueInjection!16718 BalanceConc!29724 BalanceConc!29724) Unit!148401)

(assert (=> b!4970325 (= lt!2052480 (lemmaEqSameImage!1170 (transformation!8395 (h!63900 rulesArg!259)) (_1!34397 lt!2052478) (seqFromList!6038 (list!18371 (_1!34397 lt!2052478)))))))

(declare-fun b!4970326 () Bool)

(assert (=> b!4970326 (= e!3106529 None!14453)))

(declare-fun d!1600303 () Bool)

(declare-fun e!3106525 () Bool)

(assert (=> d!1600303 e!3106525))

(declare-fun res!2121509 () Bool)

(assert (=> d!1600303 (=> (not res!2121509) (not e!3106525))))

(declare-fun lt!2052483 () Option!14454)

(assert (=> d!1600303 (= res!2121509 (= (isDefined!11367 lt!2052483) (isDefined!11366 (maxPrefixOneRule!3631 thiss!15247 (h!63900 rulesArg!259) (list!18371 input!1342)))))))

(assert (=> d!1600303 (= lt!2052483 e!3106529)))

(declare-fun c!848134 () Bool)

(declare-fun isEmpty!30950 (BalanceConc!29724) Bool)

(assert (=> d!1600303 (= c!848134 (isEmpty!30950 (_1!34397 lt!2052478)))))

(declare-fun findLongestMatchWithZipperSequenceV2!166 (Regex!13628 BalanceConc!29724 BalanceConc!29724) tuple2!62188)

(assert (=> d!1600303 (= lt!2052478 (findLongestMatchWithZipperSequenceV2!166 (regex!8395 (h!63900 rulesArg!259)) input!1342 totalInput!464))))

(assert (=> d!1600303 (ruleValid!3804 thiss!15247 (h!63900 rulesArg!259))))

(assert (=> d!1600303 (= (maxPrefixOneRuleZipperSequenceV2!363 thiss!15247 (h!63900 rulesArg!259) input!1342 totalInput!464) lt!2052483)))

(declare-fun b!4970327 () Bool)

(declare-fun e!3106528 () Bool)

(assert (=> b!4970327 (= e!3106528 (= (list!18371 (_2!34393 (get!19946 lt!2052483))) (_2!34394 (get!19945 (maxPrefixOneRule!3631 thiss!15247 (h!63900 rulesArg!259) (list!18371 input!1342))))))))

(declare-fun b!4970328 () Bool)

(declare-fun e!3106527 () Bool)

(assert (=> b!4970328 (= e!3106527 e!3106528)))

(declare-fun res!2121507 () Bool)

(assert (=> b!4970328 (=> (not res!2121507) (not e!3106528))))

(assert (=> b!4970328 (= res!2121507 (= (_1!34393 (get!19946 lt!2052483)) (_1!34394 (get!19945 (maxPrefixOneRule!3631 thiss!15247 (h!63900 rulesArg!259) (list!18371 input!1342))))))))

(declare-fun b!4970329 () Bool)

(assert (=> b!4970329 (= e!3106525 e!3106527)))

(declare-fun res!2121508 () Bool)

(assert (=> b!4970329 (=> res!2121508 e!3106527)))

(assert (=> b!4970329 (= res!2121508 (not (isDefined!11367 lt!2052483)))))

(declare-fun b!4970330 () Bool)

(assert (=> b!4970330 (= e!3106526 (matchR!6638 (regex!8395 (h!63900 rulesArg!259)) (_1!34398 (findLongestMatchInner!1857 (regex!8395 (h!63900 rulesArg!259)) Nil!57451 (size!38080 Nil!57451) lt!2052484 lt!2052484 (size!38080 lt!2052484)))))))

(assert (= (and d!1600303 c!848134) b!4970326))

(assert (= (and d!1600303 (not c!848134)) b!4970325))

(assert (= (and b!4970325 (not res!2121510)) b!4970330))

(assert (= (and d!1600303 res!2121509) b!4970329))

(assert (= (and b!4970329 (not res!2121508)) b!4970328))

(assert (= (and b!4970328 res!2121507) b!4970327))

(declare-fun m!5998290 () Bool)

(assert (=> b!4970327 m!5998290))

(declare-fun m!5998292 () Bool)

(assert (=> b!4970327 m!5998292))

(assert (=> b!4970327 m!5998080))

(assert (=> b!4970327 m!5998290))

(assert (=> b!4970327 m!5998080))

(declare-fun m!5998294 () Bool)

(assert (=> b!4970327 m!5998294))

(declare-fun m!5998296 () Bool)

(assert (=> b!4970327 m!5998296))

(declare-fun m!5998298 () Bool)

(assert (=> d!1600303 m!5998298))

(declare-fun m!5998300 () Bool)

(assert (=> d!1600303 m!5998300))

(assert (=> d!1600303 m!5998252))

(assert (=> d!1600303 m!5998290))

(declare-fun m!5998302 () Bool)

(assert (=> d!1600303 m!5998302))

(assert (=> d!1600303 m!5998080))

(assert (=> d!1600303 m!5998290))

(assert (=> d!1600303 m!5998080))

(declare-fun m!5998304 () Bool)

(assert (=> d!1600303 m!5998304))

(assert (=> b!4970329 m!5998304))

(assert (=> b!4970328 m!5998296))

(assert (=> b!4970328 m!5998080))

(assert (=> b!4970328 m!5998080))

(assert (=> b!4970328 m!5998290))

(assert (=> b!4970328 m!5998290))

(assert (=> b!4970328 m!5998292))

(declare-fun m!5998306 () Bool)

(assert (=> b!4970330 m!5998306))

(declare-fun m!5998308 () Bool)

(assert (=> b!4970330 m!5998308))

(assert (=> b!4970330 m!5998306))

(assert (=> b!4970330 m!5998308))

(declare-fun m!5998310 () Bool)

(assert (=> b!4970330 m!5998310))

(declare-fun m!5998312 () Bool)

(assert (=> b!4970330 m!5998312))

(declare-fun m!5998314 () Bool)

(assert (=> b!4970325 m!5998314))

(assert (=> b!4970325 m!5998306))

(assert (=> b!4970325 m!5998308))

(assert (=> b!4970325 m!5998306))

(assert (=> b!4970325 m!5998308))

(assert (=> b!4970325 m!5998310))

(declare-fun m!5998316 () Bool)

(assert (=> b!4970325 m!5998316))

(declare-fun m!5998318 () Bool)

(assert (=> b!4970325 m!5998318))

(declare-fun m!5998320 () Bool)

(assert (=> b!4970325 m!5998320))

(declare-fun m!5998322 () Bool)

(assert (=> b!4970325 m!5998322))

(declare-fun m!5998324 () Bool)

(assert (=> b!4970325 m!5998324))

(assert (=> b!4970325 m!5998080))

(declare-fun m!5998326 () Bool)

(assert (=> b!4970325 m!5998326))

(declare-fun m!5998328 () Bool)

(assert (=> b!4970325 m!5998328))

(assert (=> b!4970325 m!5998318))

(declare-fun m!5998330 () Bool)

(assert (=> b!4970325 m!5998330))

(declare-fun m!5998332 () Bool)

(assert (=> b!4970325 m!5998332))

(assert (=> b!4970325 m!5998332))

(assert (=> b!4970325 m!5998318))

(assert (=> b!4970128 d!1600303))

(declare-fun d!1600305 () Bool)

(declare-fun c!848135 () Bool)

(assert (=> d!1600305 (= c!848135 (is-Node!15147 (c!848111 totalInput!464)))))

(declare-fun e!3106536 () Bool)

(assert (=> d!1600305 (= (inv!75091 (c!848111 totalInput!464)) e!3106536)))

(declare-fun b!4970339 () Bool)

(assert (=> b!4970339 (= e!3106536 (inv!75095 (c!848111 totalInput!464)))))

(declare-fun b!4970340 () Bool)

(declare-fun e!3106537 () Bool)

(assert (=> b!4970340 (= e!3106536 e!3106537)))

(declare-fun res!2121511 () Bool)

(assert (=> b!4970340 (= res!2121511 (not (is-Leaf!25170 (c!848111 totalInput!464))))))

(assert (=> b!4970340 (=> res!2121511 e!3106537)))

(declare-fun b!4970341 () Bool)

(assert (=> b!4970341 (= e!3106537 (inv!75096 (c!848111 totalInput!464)))))

(assert (= (and d!1600305 c!848135) b!4970339))

(assert (= (and d!1600305 (not c!848135)) b!4970340))

(assert (= (and b!4970340 (not res!2121511)) b!4970341))

(declare-fun m!5998334 () Bool)

(assert (=> b!4970339 m!5998334))

(declare-fun m!5998336 () Bool)

(assert (=> b!4970341 m!5998336))

(assert (=> b!4970139 d!1600305))

(declare-fun b!4970352 () Bool)

(declare-fun b_free!132807 () Bool)

(declare-fun b_next!133597 () Bool)

(assert (=> b!4970352 (= b_free!132807 (not b_next!133597))))

(declare-fun tp!1393950 () Bool)

(declare-fun b_and!348611 () Bool)

(assert (=> b!4970352 (= tp!1393950 b_and!348611)))

(declare-fun b_free!132809 () Bool)

(declare-fun b_next!133599 () Bool)

(assert (=> b!4970352 (= b_free!132809 (not b_next!133599))))

(declare-fun tp!1393951 () Bool)

(declare-fun b_and!348613 () Bool)

(assert (=> b!4970352 (= tp!1393951 b_and!348613)))

(declare-fun e!3106547 () Bool)

(assert (=> b!4970352 (= e!3106547 (and tp!1393950 tp!1393951))))

(declare-fun e!3106546 () Bool)

(declare-fun tp!1393949 () Bool)

(declare-fun b!4970351 () Bool)

(assert (=> b!4970351 (= e!3106546 (and tp!1393949 (inv!75086 (tag!9259 (h!63900 (t!369030 rulesArg!259)))) (inv!75089 (transformation!8395 (h!63900 (t!369030 rulesArg!259)))) e!3106547))))

(declare-fun b!4970350 () Bool)

(declare-fun e!3106549 () Bool)

(declare-fun tp!1393952 () Bool)

(assert (=> b!4970350 (= e!3106549 (and e!3106546 tp!1393952))))

(assert (=> b!4970135 (= tp!1393919 e!3106549)))

(assert (= b!4970351 b!4970352))

(assert (= b!4970350 b!4970351))

(assert (= (and b!4970135 (is-Cons!57452 (t!369030 rulesArg!259))) b!4970350))

(declare-fun m!5998338 () Bool)

(assert (=> b!4970351 m!5998338))

(declare-fun m!5998340 () Bool)

(assert (=> b!4970351 m!5998340))

(declare-fun tp!1393960 () Bool)

(declare-fun tp!1393961 () Bool)

(declare-fun b!4970361 () Bool)

(declare-fun e!3106554 () Bool)

(assert (=> b!4970361 (= e!3106554 (and (inv!75091 (left!41907 (c!848111 input!1342))) tp!1393960 (inv!75091 (right!42237 (c!848111 input!1342))) tp!1393961))))

(declare-fun b!4970363 () Bool)

(declare-fun e!3106555 () Bool)

(declare-fun tp!1393959 () Bool)

(assert (=> b!4970363 (= e!3106555 tp!1393959)))

(declare-fun b!4970362 () Bool)

(declare-fun inv!75097 (IArray!30355) Bool)

(assert (=> b!4970362 (= e!3106554 (and (inv!75097 (xs!18473 (c!848111 input!1342))) e!3106555))))

(assert (=> b!4970126 (= tp!1393917 (and (inv!75091 (c!848111 input!1342)) e!3106554))))

(assert (= (and b!4970126 (is-Node!15147 (c!848111 input!1342))) b!4970361))

(assert (= b!4970362 b!4970363))

(assert (= (and b!4970126 (is-Leaf!25170 (c!848111 input!1342))) b!4970362))

(declare-fun m!5998342 () Bool)

(assert (=> b!4970361 m!5998342))

(declare-fun m!5998344 () Bool)

(assert (=> b!4970361 m!5998344))

(declare-fun m!5998346 () Bool)

(assert (=> b!4970362 m!5998346))

(assert (=> b!4970126 m!5998094))

(declare-fun b!4970377 () Bool)

(declare-fun e!3106558 () Bool)

(declare-fun tp!1393974 () Bool)

(declare-fun tp!1393975 () Bool)

(assert (=> b!4970377 (= e!3106558 (and tp!1393974 tp!1393975))))

(assert (=> b!4970134 (= tp!1393922 e!3106558)))

(declare-fun b!4970374 () Bool)

(declare-fun tp_is_empty!36337 () Bool)

(assert (=> b!4970374 (= e!3106558 tp_is_empty!36337)))

(declare-fun b!4970375 () Bool)

(declare-fun tp!1393973 () Bool)

(declare-fun tp!1393972 () Bool)

(assert (=> b!4970375 (= e!3106558 (and tp!1393973 tp!1393972))))

(declare-fun b!4970376 () Bool)

(declare-fun tp!1393976 () Bool)

(assert (=> b!4970376 (= e!3106558 tp!1393976)))

(assert (= (and b!4970134 (is-ElementMatch!13628 (regex!8395 (h!63900 rulesArg!259)))) b!4970374))

(assert (= (and b!4970134 (is-Concat!22334 (regex!8395 (h!63900 rulesArg!259)))) b!4970375))

(assert (= (and b!4970134 (is-Star!13628 (regex!8395 (h!63900 rulesArg!259)))) b!4970376))

(assert (= (and b!4970134 (is-Union!13628 (regex!8395 (h!63900 rulesArg!259)))) b!4970377))

(declare-fun tp!1393979 () Bool)

(declare-fun tp!1393978 () Bool)

(declare-fun b!4970378 () Bool)

(declare-fun e!3106559 () Bool)

(assert (=> b!4970378 (= e!3106559 (and (inv!75091 (left!41907 (c!848111 totalInput!464))) tp!1393978 (inv!75091 (right!42237 (c!848111 totalInput!464))) tp!1393979))))

(declare-fun b!4970380 () Bool)

(declare-fun e!3106560 () Bool)

(declare-fun tp!1393977 () Bool)

(assert (=> b!4970380 (= e!3106560 tp!1393977)))

(declare-fun b!4970379 () Bool)

(assert (=> b!4970379 (= e!3106559 (and (inv!75097 (xs!18473 (c!848111 totalInput!464))) e!3106560))))

(assert (=> b!4970139 (= tp!1393921 (and (inv!75091 (c!848111 totalInput!464)) e!3106559))))

(assert (= (and b!4970139 (is-Node!15147 (c!848111 totalInput!464))) b!4970378))

(assert (= b!4970379 b!4970380))

(assert (= (and b!4970139 (is-Leaf!25170 (c!848111 totalInput!464))) b!4970379))

(declare-fun m!5998348 () Bool)

(assert (=> b!4970378 m!5998348))

(declare-fun m!5998350 () Bool)

(assert (=> b!4970378 m!5998350))

(declare-fun m!5998352 () Bool)

(assert (=> b!4970379 m!5998352))

(assert (=> b!4970139 m!5998108))

(push 1)

(assert (not b!4970280))

(assert (not b!4970377))

(assert b_and!348605)

(assert (not b!4970361))

(assert (not b!4970350))

(assert (not b!4970328))

(assert b_and!348613)

(assert (not b!4970330))

(assert (not bm!346623))

(assert (not b!4970376))

(assert (not d!1600265))

(assert (not d!1600293))

(assert (not b!4970279))

(assert (not b!4970126))

(assert (not b!4970362))

(assert (not b!4970233))

(assert (not b!4970236))

(assert (not b!4970202))

(assert (not b!4970200))

(assert (not b!4970351))

(assert (not b!4970232))

(assert (not d!1600303))

(assert (not b!4970325))

(assert (not b!4970139))

(assert (not d!1600257))

(assert (not b!4970363))

(assert (not b!4970235))

(assert (not b!4970237))

(assert (not d!1600275))

(assert (not b!4970241))

(assert (not d!1600301))

(assert (not b!4970209))

(assert (not b!4970309))

(assert b_and!348611)

(assert (not b!4970378))

(assert (not d!1600281))

(assert (not b!4970288))

(assert (not b!4970211))

(assert (not d!1600285))

(assert (not b!4970306))

(assert (not b!4970379))

(assert (not b!4970327))

(assert (not b!4970311))

(assert (not b_next!133597))

(assert (not b!4970308))

(assert (not d!1600283))

(assert (not d!1600291))

(assert (not d!1600273))

(assert (not b!4970341))

(assert (not bm!346629))

(assert (not b!4970238))

(assert tp_is_empty!36337)

(assert (not d!1600295))

(assert (not b!4970329))

(assert (not b!4970380))

(assert (not b!4970244))

(assert (not b_next!133599))

(assert (not d!1600279))

(assert (not b!4970339))

(assert (not b_next!133591))

(assert (not d!1600269))

(assert (not b!4970375))

(assert (not b!4970307))

(assert (not b_next!133589))

(assert (not d!1600271))

(assert b_and!348603)

(assert (not b!4970201))

(assert (not bm!346632))

(assert (not b!4970312))

(assert (not d!1600297))

(assert (not b!4970234))

(assert (not b!4970231))

(assert (not b!4970310))

(check-sat)

(pop 1)

(push 1)

(assert b_and!348611)

(assert b_and!348605)

(assert (not b_next!133597))

(assert (not b_next!133599))

(assert (not b_next!133591))

(assert (not b_next!133589))

(assert b_and!348603)

(assert b_and!348613)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1600351 () Bool)

(declare-fun res!2121578 () Bool)

(declare-fun e!3106644 () Bool)

(assert (=> d!1600351 (=> (not res!2121578) (not e!3106644))))

(declare-fun list!18375 (IArray!30355) List!57575)

(assert (=> d!1600351 (= res!2121578 (<= (size!38080 (list!18375 (xs!18473 (c!848111 input!1342)))) 512))))

(assert (=> d!1600351 (= (inv!75096 (c!848111 input!1342)) e!3106644)))

(declare-fun b!4970515 () Bool)

(declare-fun res!2121579 () Bool)

(assert (=> b!4970515 (=> (not res!2121579) (not e!3106644))))

(assert (=> b!4970515 (= res!2121579 (= (csize!30525 (c!848111 input!1342)) (size!38080 (list!18375 (xs!18473 (c!848111 input!1342))))))))

(declare-fun b!4970516 () Bool)

(assert (=> b!4970516 (= e!3106644 (and (> (csize!30525 (c!848111 input!1342)) 0) (<= (csize!30525 (c!848111 input!1342)) 512)))))

(assert (= (and d!1600351 res!2121578) b!4970515))

(assert (= (and b!4970515 res!2121579) b!4970516))

(declare-fun m!5998490 () Bool)

(assert (=> d!1600351 m!5998490))

(assert (=> d!1600351 m!5998490))

(declare-fun m!5998492 () Bool)

(assert (=> d!1600351 m!5998492))

(assert (=> b!4970515 m!5998490))

(assert (=> b!4970515 m!5998490))

(assert (=> b!4970515 m!5998492))

(assert (=> b!4970211 d!1600351))

(declare-fun bs!1183495 () Bool)

(declare-fun d!1600353 () Bool)

(assert (= bs!1183495 (and d!1600353 b!4970325)))

(declare-fun lambda!247433 () Int)

(assert (=> bs!1183495 (= lambda!247433 lambda!247422)))

(assert (=> d!1600353 true))

(assert (=> d!1600353 (< (dynLambda!23179 order!26223 (toChars!11217 (transformation!8395 (h!63900 rulesArg!259)))) (dynLambda!23178 order!26221 lambda!247433))))

(assert (=> d!1600353 true))

(assert (=> d!1600353 (< (dynLambda!23177 order!26219 (toValue!11358 (transformation!8395 (h!63900 rulesArg!259)))) (dynLambda!23178 order!26221 lambda!247433))))

(declare-fun Forall!1764 (Int) Bool)

(assert (=> d!1600353 (= (semiInverseModEq!3702 (toChars!11217 (transformation!8395 (h!63900 rulesArg!259))) (toValue!11358 (transformation!8395 (h!63900 rulesArg!259)))) (Forall!1764 lambda!247433))))

(declare-fun bs!1183496 () Bool)

(assert (= bs!1183496 d!1600353))

(declare-fun m!5998494 () Bool)

(assert (=> bs!1183496 m!5998494))

(assert (=> d!1600279 d!1600353))

(declare-fun bs!1183497 () Bool)

(declare-fun d!1600355 () Bool)

(assert (= bs!1183497 (and d!1600355 d!1600285)))

(declare-fun lambda!247434 () Int)

(assert (=> bs!1183497 (= lambda!247434 lambda!247417)))

(assert (=> d!1600355 true))

(declare-fun lt!2052543 () Bool)

(assert (=> d!1600355 (= lt!2052543 (forall!13330 (t!369030 rulesArg!259) lambda!247434))))

(declare-fun e!3106646 () Bool)

(assert (=> d!1600355 (= lt!2052543 e!3106646)))

(declare-fun res!2121581 () Bool)

(assert (=> d!1600355 (=> res!2121581 e!3106646)))

(assert (=> d!1600355 (= res!2121581 (not (is-Cons!57452 (t!369030 rulesArg!259))))))

(assert (=> d!1600355 (= (rulesValidInductive!3298 thiss!15247 (t!369030 rulesArg!259)) lt!2052543)))

(declare-fun b!4970521 () Bool)

(declare-fun e!3106645 () Bool)

(assert (=> b!4970521 (= e!3106646 e!3106645)))

(declare-fun res!2121580 () Bool)

(assert (=> b!4970521 (=> (not res!2121580) (not e!3106645))))

(assert (=> b!4970521 (= res!2121580 (ruleValid!3804 thiss!15247 (h!63900 (t!369030 rulesArg!259))))))

(declare-fun b!4970522 () Bool)

(assert (=> b!4970522 (= e!3106645 (rulesValidInductive!3298 thiss!15247 (t!369030 (t!369030 rulesArg!259))))))

(assert (= (and d!1600355 (not res!2121581)) b!4970521))

(assert (= (and b!4970521 res!2121580) b!4970522))

(declare-fun m!5998496 () Bool)

(assert (=> d!1600355 m!5998496))

(declare-fun m!5998498 () Bool)

(assert (=> b!4970521 m!5998498))

(declare-fun m!5998500 () Bool)

(assert (=> b!4970522 m!5998500))

(assert (=> b!4970280 d!1600355))

(declare-fun d!1600357 () Bool)

(declare-fun e!3106648 () Bool)

(assert (=> d!1600357 e!3106648))

(declare-fun res!2121585 () Bool)

(assert (=> d!1600357 (=> res!2121585 e!3106648)))

(declare-fun lt!2052544 () Bool)

(assert (=> d!1600357 (= res!2121585 (not lt!2052544))))

(declare-fun e!3106649 () Bool)

(assert (=> d!1600357 (= lt!2052544 e!3106649)))

(declare-fun res!2121584 () Bool)

(assert (=> d!1600357 (=> res!2121584 e!3106649)))

(assert (=> d!1600357 (= res!2121584 (is-Nil!57451 lt!2052450))))

(assert (=> d!1600357 (= (isPrefix!5246 lt!2052450 lt!2052453) lt!2052544)))

(declare-fun b!4970525 () Bool)

(declare-fun e!3106647 () Bool)

(assert (=> b!4970525 (= e!3106647 (isPrefix!5246 (tail!9803 lt!2052450) (tail!9803 lt!2052453)))))

(declare-fun b!4970524 () Bool)

(declare-fun res!2121582 () Bool)

(assert (=> b!4970524 (=> (not res!2121582) (not e!3106647))))

(assert (=> b!4970524 (= res!2121582 (= (head!10670 lt!2052450) (head!10670 lt!2052453)))))

(declare-fun b!4970523 () Bool)

(assert (=> b!4970523 (= e!3106649 e!3106647)))

(declare-fun res!2121583 () Bool)

(assert (=> b!4970523 (=> (not res!2121583) (not e!3106647))))

(assert (=> b!4970523 (= res!2121583 (not (is-Nil!57451 lt!2052453)))))

(declare-fun b!4970526 () Bool)

(assert (=> b!4970526 (= e!3106648 (>= (size!38080 lt!2052453) (size!38080 lt!2052450)))))

(assert (= (and d!1600357 (not res!2121584)) b!4970523))

(assert (= (and b!4970523 res!2121583) b!4970524))

(assert (= (and b!4970524 res!2121582) b!4970525))

(assert (= (and d!1600357 (not res!2121585)) b!4970526))

(declare-fun m!5998502 () Bool)

(assert (=> b!4970525 m!5998502))

(declare-fun m!5998504 () Bool)

(assert (=> b!4970525 m!5998504))

(assert (=> b!4970525 m!5998502))

(assert (=> b!4970525 m!5998504))

(declare-fun m!5998506 () Bool)

(assert (=> b!4970525 m!5998506))

(declare-fun m!5998508 () Bool)

(assert (=> b!4970524 m!5998508))

(declare-fun m!5998510 () Bool)

(assert (=> b!4970524 m!5998510))

(declare-fun m!5998512 () Bool)

(assert (=> b!4970526 m!5998512))

(declare-fun m!5998514 () Bool)

(assert (=> b!4970526 m!5998514))

(assert (=> d!1600301 d!1600357))

(assert (=> d!1600301 d!1600355))

(declare-fun d!1600359 () Bool)

(assert (=> d!1600359 (= (isDefined!11366 (maxPrefixZipper!788 thiss!15247 (t!369030 rulesArg!259) (list!18371 input!1342))) (not (isEmpty!30947 (maxPrefixZipper!788 thiss!15247 (t!369030 rulesArg!259) (list!18371 input!1342)))))))

(declare-fun bs!1183498 () Bool)

(assert (= bs!1183498 d!1600359))

(assert (=> bs!1183498 m!5998268))

(declare-fun m!5998516 () Bool)

(assert (=> bs!1183498 m!5998516))

(assert (=> d!1600301 d!1600359))

(assert (=> d!1600301 d!1600273))

(declare-fun d!1600361 () Bool)

(declare-fun lt!2052545 () Option!14453)

(assert (=> d!1600361 (= lt!2052545 (maxPrefix!4662 thiss!15247 (t!369030 rulesArg!259) (list!18371 input!1342)))))

(declare-fun e!3106650 () Option!14453)

(assert (=> d!1600361 (= lt!2052545 e!3106650)))

(declare-fun c!848147 () Bool)

(assert (=> d!1600361 (= c!848147 (and (is-Cons!57452 (t!369030 rulesArg!259)) (is-Nil!57452 (t!369030 (t!369030 rulesArg!259)))))))

(declare-fun lt!2052549 () Unit!148401)

(declare-fun lt!2052546 () Unit!148401)

(assert (=> d!1600361 (= lt!2052549 lt!2052546)))

(assert (=> d!1600361 (isPrefix!5246 (list!18371 input!1342) (list!18371 input!1342))))

(assert (=> d!1600361 (= lt!2052546 (lemmaIsPrefixRefl!3570 (list!18371 input!1342) (list!18371 input!1342)))))

(assert (=> d!1600361 (rulesValidInductive!3298 thiss!15247 (t!369030 rulesArg!259))))

(assert (=> d!1600361 (= (maxPrefixZipper!788 thiss!15247 (t!369030 rulesArg!259) (list!18371 input!1342)) lt!2052545)))

(declare-fun call!346644 () Option!14453)

(declare-fun bm!346639 () Bool)

(assert (=> bm!346639 (= call!346644 (maxPrefixOneRuleZipper!298 thiss!15247 (h!63900 (t!369030 rulesArg!259)) (list!18371 input!1342)))))

(declare-fun b!4970527 () Bool)

(assert (=> b!4970527 (= e!3106650 call!346644)))

(declare-fun b!4970528 () Bool)

(declare-fun lt!2052547 () Option!14453)

(declare-fun lt!2052548 () Option!14453)

(assert (=> b!4970528 (= e!3106650 (ite (and (is-None!14452 lt!2052547) (is-None!14452 lt!2052548)) None!14452 (ite (is-None!14452 lt!2052548) lt!2052547 (ite (is-None!14452 lt!2052547) lt!2052548 (ite (>= (size!38078 (_1!34394 (v!50443 lt!2052547))) (size!38078 (_1!34394 (v!50443 lt!2052548)))) lt!2052547 lt!2052548)))))))

(assert (=> b!4970528 (= lt!2052547 call!346644)))

(assert (=> b!4970528 (= lt!2052548 (maxPrefixZipper!788 thiss!15247 (t!369030 (t!369030 rulesArg!259)) (list!18371 input!1342)))))

(assert (= (and d!1600361 c!848147) b!4970527))

(assert (= (and d!1600361 (not c!848147)) b!4970528))

(assert (= (or b!4970527 b!4970528) bm!346639))

(assert (=> d!1600361 m!5998080))

(assert (=> d!1600361 m!5998280))

(assert (=> d!1600361 m!5998080))

(assert (=> d!1600361 m!5998080))

(declare-fun m!5998518 () Bool)

(assert (=> d!1600361 m!5998518))

(assert (=> d!1600361 m!5998080))

(assert (=> d!1600361 m!5998080))

(declare-fun m!5998520 () Bool)

(assert (=> d!1600361 m!5998520))

(assert (=> d!1600361 m!5998254))

(assert (=> bm!346639 m!5998080))

(declare-fun m!5998522 () Bool)

(assert (=> bm!346639 m!5998522))

(assert (=> b!4970528 m!5998080))

(declare-fun m!5998524 () Bool)

(assert (=> b!4970528 m!5998524))

(assert (=> d!1600301 d!1600361))

(declare-fun d!1600363 () Bool)

(assert (=> d!1600363 (= (isDefined!11367 lt!2052454) (not (isEmpty!30948 lt!2052454)))))

(declare-fun bs!1183499 () Bool)

(assert (= bs!1183499 d!1600363))

(declare-fun m!5998526 () Bool)

(assert (=> bs!1183499 m!5998526))

(assert (=> d!1600301 d!1600363))

(declare-fun d!1600365 () Bool)

(assert (=> d!1600365 (isPrefix!5246 lt!2052450 lt!2052453)))

(declare-fun lt!2052550 () Unit!148401)

(assert (=> d!1600365 (= lt!2052550 (choose!36694 lt!2052450 lt!2052453))))

(assert (=> d!1600365 (= (lemmaIsPrefixRefl!3570 lt!2052450 lt!2052453) lt!2052550)))

(declare-fun bs!1183500 () Bool)

(assert (= bs!1183500 d!1600365))

(assert (=> bs!1183500 m!5998276))

(declare-fun m!5998528 () Bool)

(assert (=> bs!1183500 m!5998528))

(assert (=> d!1600301 d!1600365))

(declare-fun d!1600367 () Bool)

(declare-fun res!2121592 () Bool)

(declare-fun e!3106653 () Bool)

(assert (=> d!1600367 (=> (not res!2121592) (not e!3106653))))

(declare-fun size!38084 (Conc!15147) Int)

(assert (=> d!1600367 (= res!2121592 (= (csize!30524 (c!848111 input!1342)) (+ (size!38084 (left!41907 (c!848111 input!1342))) (size!38084 (right!42237 (c!848111 input!1342))))))))

(assert (=> d!1600367 (= (inv!75095 (c!848111 input!1342)) e!3106653)))

(declare-fun b!4970535 () Bool)

(declare-fun res!2121593 () Bool)

(assert (=> b!4970535 (=> (not res!2121593) (not e!3106653))))

(assert (=> b!4970535 (= res!2121593 (and (not (= (left!41907 (c!848111 input!1342)) Empty!15147)) (not (= (right!42237 (c!848111 input!1342)) Empty!15147))))))

(declare-fun b!4970536 () Bool)

(declare-fun res!2121594 () Bool)

(assert (=> b!4970536 (=> (not res!2121594) (not e!3106653))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2015 (Conc!15147) Int)

(assert (=> b!4970536 (= res!2121594 (= (cheight!15358 (c!848111 input!1342)) (+ (max!0 (height!2015 (left!41907 (c!848111 input!1342))) (height!2015 (right!42237 (c!848111 input!1342)))) 1)))))

(declare-fun b!4970537 () Bool)

(assert (=> b!4970537 (= e!3106653 (<= 0 (cheight!15358 (c!848111 input!1342))))))

(assert (= (and d!1600367 res!2121592) b!4970535))

(assert (= (and b!4970535 res!2121593) b!4970536))

(assert (= (and b!4970536 res!2121594) b!4970537))

(declare-fun m!5998530 () Bool)

(assert (=> d!1600367 m!5998530))

(declare-fun m!5998532 () Bool)

(assert (=> d!1600367 m!5998532))

(declare-fun m!5998534 () Bool)

(assert (=> b!4970536 m!5998534))

(declare-fun m!5998536 () Bool)

(assert (=> b!4970536 m!5998536))

(assert (=> b!4970536 m!5998534))

(assert (=> b!4970536 m!5998536))

(declare-fun m!5998538 () Bool)

(assert (=> b!4970536 m!5998538))

(assert (=> b!4970209 d!1600367))

(declare-fun d!1600369 () Bool)

(assert (=> d!1600369 (= (isEmpty!30947 lt!2052321) (not (is-Some!14452 lt!2052321)))))

(assert (=> d!1600291 d!1600369))

(declare-fun d!1600371 () Bool)

(declare-fun c!848148 () Bool)

(assert (=> d!1600371 (= c!848148 (is-Node!15147 (left!41907 (c!848111 totalInput!464))))))

(declare-fun e!3106654 () Bool)

(assert (=> d!1600371 (= (inv!75091 (left!41907 (c!848111 totalInput!464))) e!3106654)))

(declare-fun b!4970538 () Bool)

(assert (=> b!4970538 (= e!3106654 (inv!75095 (left!41907 (c!848111 totalInput!464))))))

(declare-fun b!4970539 () Bool)

(declare-fun e!3106655 () Bool)

(assert (=> b!4970539 (= e!3106654 e!3106655)))

(declare-fun res!2121595 () Bool)

(assert (=> b!4970539 (= res!2121595 (not (is-Leaf!25170 (left!41907 (c!848111 totalInput!464)))))))

(assert (=> b!4970539 (=> res!2121595 e!3106655)))

(declare-fun b!4970540 () Bool)

(assert (=> b!4970540 (= e!3106655 (inv!75096 (left!41907 (c!848111 totalInput!464))))))

(assert (= (and d!1600371 c!848148) b!4970538))

(assert (= (and d!1600371 (not c!848148)) b!4970539))

(assert (= (and b!4970539 (not res!2121595)) b!4970540))

(declare-fun m!5998540 () Bool)

(assert (=> b!4970538 m!5998540))

(declare-fun m!5998542 () Bool)

(assert (=> b!4970540 m!5998542))

(assert (=> b!4970378 d!1600371))

(declare-fun d!1600373 () Bool)

(declare-fun c!848149 () Bool)

(assert (=> d!1600373 (= c!848149 (is-Node!15147 (right!42237 (c!848111 totalInput!464))))))

(declare-fun e!3106656 () Bool)

(assert (=> d!1600373 (= (inv!75091 (right!42237 (c!848111 totalInput!464))) e!3106656)))

(declare-fun b!4970541 () Bool)

(assert (=> b!4970541 (= e!3106656 (inv!75095 (right!42237 (c!848111 totalInput!464))))))

(declare-fun b!4970542 () Bool)

(declare-fun e!3106657 () Bool)

(assert (=> b!4970542 (= e!3106656 e!3106657)))

(declare-fun res!2121596 () Bool)

(assert (=> b!4970542 (= res!2121596 (not (is-Leaf!25170 (right!42237 (c!848111 totalInput!464)))))))

(assert (=> b!4970542 (=> res!2121596 e!3106657)))

(declare-fun b!4970543 () Bool)

(assert (=> b!4970543 (= e!3106657 (inv!75096 (right!42237 (c!848111 totalInput!464))))))

(assert (= (and d!1600373 c!848149) b!4970541))

(assert (= (and d!1600373 (not c!848149)) b!4970542))

(assert (= (and b!4970542 (not res!2121596)) b!4970543))

(declare-fun m!5998544 () Bool)

(assert (=> b!4970541 m!5998544))

(declare-fun m!5998546 () Bool)

(assert (=> b!4970543 m!5998546))

(assert (=> b!4970378 d!1600373))

(declare-fun d!1600375 () Bool)

(assert (=> d!1600375 (= (isDefined!11366 lt!2052376) (not (isEmpty!30947 lt!2052376)))))

(declare-fun bs!1183501 () Bool)

(assert (= bs!1183501 d!1600375))

(assert (=> bs!1183501 m!5998198))

(assert (=> b!4970238 d!1600375))

(declare-fun b!4970555 () Bool)

(declare-fun e!3106663 () List!57575)

(assert (=> b!4970555 (= e!3106663 (++!12534 (list!18373 (left!41907 (c!848111 totalInput!464))) (list!18373 (right!42237 (c!848111 totalInput!464)))))))

(declare-fun b!4970552 () Bool)

(declare-fun e!3106662 () List!57575)

(assert (=> b!4970552 (= e!3106662 Nil!57451)))

(declare-fun d!1600377 () Bool)

(declare-fun c!848154 () Bool)

(assert (=> d!1600377 (= c!848154 (is-Empty!15147 (c!848111 totalInput!464)))))

(assert (=> d!1600377 (= (list!18373 (c!848111 totalInput!464)) e!3106662)))

(declare-fun b!4970554 () Bool)

(assert (=> b!4970554 (= e!3106663 (list!18375 (xs!18473 (c!848111 totalInput!464))))))

(declare-fun b!4970553 () Bool)

(assert (=> b!4970553 (= e!3106662 e!3106663)))

(declare-fun c!848155 () Bool)

(assert (=> b!4970553 (= c!848155 (is-Leaf!25170 (c!848111 totalInput!464)))))

(assert (= (and d!1600377 c!848154) b!4970552))

(assert (= (and d!1600377 (not c!848154)) b!4970553))

(assert (= (and b!4970553 c!848155) b!4970554))

(assert (= (and b!4970553 (not c!848155)) b!4970555))

(declare-fun m!5998548 () Bool)

(assert (=> b!4970555 m!5998548))

(declare-fun m!5998550 () Bool)

(assert (=> b!4970555 m!5998550))

(assert (=> b!4970555 m!5998548))

(assert (=> b!4970555 m!5998550))

(declare-fun m!5998552 () Bool)

(assert (=> b!4970555 m!5998552))

(declare-fun m!5998554 () Bool)

(assert (=> b!4970554 m!5998554))

(assert (=> d!1600271 d!1600377))

(declare-fun d!1600379 () Bool)

(declare-fun lt!2052553 () Int)

(assert (=> d!1600379 (>= lt!2052553 0)))

(declare-fun e!3106666 () Int)

(assert (=> d!1600379 (= lt!2052553 e!3106666)))

(declare-fun c!848158 () Bool)

(assert (=> d!1600379 (= c!848158 (is-Nil!57451 lt!2052315))))

(assert (=> d!1600379 (= (size!38080 lt!2052315) lt!2052553)))

(declare-fun b!4970560 () Bool)

(assert (=> b!4970560 (= e!3106666 0)))

(declare-fun b!4970561 () Bool)

(assert (=> b!4970561 (= e!3106666 (+ 1 (size!38080 (t!369029 lt!2052315))))))

(assert (= (and d!1600379 c!848158) b!4970560))

(assert (= (and d!1600379 (not c!848158)) b!4970561))

(declare-fun m!5998556 () Bool)

(assert (=> b!4970561 m!5998556))

(assert (=> b!4970202 d!1600379))

(declare-fun d!1600381 () Bool)

(assert (=> d!1600381 (= (isDefined!11366 (maxPrefixOneRule!3631 thiss!15247 (h!63900 rulesArg!259) (list!18371 input!1342))) (not (isEmpty!30947 (maxPrefixOneRule!3631 thiss!15247 (h!63900 rulesArg!259) (list!18371 input!1342)))))))

(declare-fun bs!1183502 () Bool)

(assert (= bs!1183502 d!1600381))

(assert (=> bs!1183502 m!5998290))

(declare-fun m!5998558 () Bool)

(assert (=> bs!1183502 m!5998558))

(assert (=> d!1600303 d!1600381))

(assert (=> d!1600303 d!1600273))

(declare-fun d!1600383 () Bool)

(declare-fun lt!2052556 () Bool)

(assert (=> d!1600383 (= lt!2052556 (isEmpty!30949 (list!18371 (_1!34397 lt!2052478))))))

(declare-fun isEmpty!30955 (Conc!15147) Bool)

(assert (=> d!1600383 (= lt!2052556 (isEmpty!30955 (c!848111 (_1!34397 lt!2052478))))))

(assert (=> d!1600383 (= (isEmpty!30950 (_1!34397 lt!2052478)) lt!2052556)))

(declare-fun bs!1183503 () Bool)

(assert (= bs!1183503 d!1600383))

(assert (=> bs!1183503 m!5998332))

(assert (=> bs!1183503 m!5998332))

(declare-fun m!5998560 () Bool)

(assert (=> bs!1183503 m!5998560))

(declare-fun m!5998562 () Bool)

(assert (=> bs!1183503 m!5998562))

(assert (=> d!1600303 d!1600383))

(declare-fun d!1600385 () Bool)

(declare-fun lt!2052559 () tuple2!62188)

(declare-fun findLongestMatch!1699 (Regex!13628 List!57575) tuple2!62190)

(assert (=> d!1600385 (= (tuple2!62191 (list!18371 (_1!34397 lt!2052559)) (list!18371 (_2!34397 lt!2052559))) (findLongestMatch!1699 (regex!8395 (h!63900 rulesArg!259)) (list!18371 input!1342)))))

(declare-fun choose!36696 (Regex!13628 BalanceConc!29724 BalanceConc!29724) tuple2!62188)

(assert (=> d!1600385 (= lt!2052559 (choose!36696 (regex!8395 (h!63900 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun validRegex!5971 (Regex!13628) Bool)

(assert (=> d!1600385 (validRegex!5971 (regex!8395 (h!63900 rulesArg!259)))))

(assert (=> d!1600385 (= (findLongestMatchWithZipperSequenceV2!166 (regex!8395 (h!63900 rulesArg!259)) input!1342 totalInput!464) lt!2052559)))

(declare-fun bs!1183504 () Bool)

(assert (= bs!1183504 d!1600385))

(declare-fun m!5998564 () Bool)

(assert (=> bs!1183504 m!5998564))

(assert (=> bs!1183504 m!5998080))

(declare-fun m!5998566 () Bool)

(assert (=> bs!1183504 m!5998566))

(declare-fun m!5998568 () Bool)

(assert (=> bs!1183504 m!5998568))

(declare-fun m!5998570 () Bool)

(assert (=> bs!1183504 m!5998570))

(assert (=> bs!1183504 m!5998080))

(declare-fun m!5998572 () Bool)

(assert (=> bs!1183504 m!5998572))

(assert (=> d!1600303 d!1600385))

(declare-fun b!4970581 () Bool)

(declare-fun e!3106675 () Option!14453)

(declare-fun lt!2052574 () tuple2!62190)

(assert (=> b!4970581 (= e!3106675 (Some!14452 (tuple2!62183 (Token!15287 (apply!13906 (transformation!8395 (h!63900 rulesArg!259)) (seqFromList!6038 (_1!34398 lt!2052574))) (h!63900 rulesArg!259) (size!38081 (seqFromList!6038 (_1!34398 lt!2052574))) (_1!34398 lt!2052574)) (_2!34398 lt!2052574))))))

(declare-fun lt!2052572 () Unit!148401)

(assert (=> b!4970581 (= lt!2052572 (longestMatchIsAcceptedByMatchOrIsEmpty!1818 (regex!8395 (h!63900 rulesArg!259)) (list!18371 input!1342)))))

(declare-fun res!2121615 () Bool)

(assert (=> b!4970581 (= res!2121615 (isEmpty!30949 (_1!34398 (findLongestMatchInner!1857 (regex!8395 (h!63900 rulesArg!259)) Nil!57451 (size!38080 Nil!57451) (list!18371 input!1342) (list!18371 input!1342) (size!38080 (list!18371 input!1342))))))))

(declare-fun e!3106676 () Bool)

(assert (=> b!4970581 (=> res!2121615 e!3106676)))

(assert (=> b!4970581 e!3106676))

(declare-fun lt!2052573 () Unit!148401)

(assert (=> b!4970581 (= lt!2052573 lt!2052572)))

(declare-fun lt!2052571 () Unit!148401)

(declare-fun lemmaSemiInverse!2604 (TokenValueInjection!16718 BalanceConc!29724) Unit!148401)

(assert (=> b!4970581 (= lt!2052571 (lemmaSemiInverse!2604 (transformation!8395 (h!63900 rulesArg!259)) (seqFromList!6038 (_1!34398 lt!2052574))))))

(declare-fun b!4970582 () Bool)

(declare-fun e!3106677 () Bool)

(declare-fun lt!2052570 () Option!14453)

(assert (=> b!4970582 (= e!3106677 (= (size!38078 (_1!34394 (get!19945 lt!2052570))) (size!38080 (originalCharacters!8674 (_1!34394 (get!19945 lt!2052570))))))))

(declare-fun b!4970583 () Bool)

(declare-fun e!3106678 () Bool)

(assert (=> b!4970583 (= e!3106678 e!3106677)))

(declare-fun res!2121617 () Bool)

(assert (=> b!4970583 (=> (not res!2121617) (not e!3106677))))

(assert (=> b!4970583 (= res!2121617 (matchR!6638 (regex!8395 (h!63900 rulesArg!259)) (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052570))))))))

(declare-fun b!4970584 () Bool)

(assert (=> b!4970584 (= e!3106676 (matchR!6638 (regex!8395 (h!63900 rulesArg!259)) (_1!34398 (findLongestMatchInner!1857 (regex!8395 (h!63900 rulesArg!259)) Nil!57451 (size!38080 Nil!57451) (list!18371 input!1342) (list!18371 input!1342) (size!38080 (list!18371 input!1342))))))))

(declare-fun b!4970585 () Bool)

(declare-fun res!2121616 () Bool)

(assert (=> b!4970585 (=> (not res!2121616) (not e!3106677))))

(assert (=> b!4970585 (= res!2121616 (= (value!268699 (_1!34394 (get!19945 lt!2052570))) (apply!13906 (transformation!8395 (rule!11645 (_1!34394 (get!19945 lt!2052570)))) (seqFromList!6038 (originalCharacters!8674 (_1!34394 (get!19945 lt!2052570)))))))))

(declare-fun b!4970586 () Bool)

(assert (=> b!4970586 (= e!3106675 None!14452)))

(declare-fun d!1600387 () Bool)

(assert (=> d!1600387 e!3106678))

(declare-fun res!2121613 () Bool)

(assert (=> d!1600387 (=> res!2121613 e!3106678)))

(assert (=> d!1600387 (= res!2121613 (isEmpty!30947 lt!2052570))))

(assert (=> d!1600387 (= lt!2052570 e!3106675)))

(declare-fun c!848161 () Bool)

(assert (=> d!1600387 (= c!848161 (isEmpty!30949 (_1!34398 lt!2052574)))))

(assert (=> d!1600387 (= lt!2052574 (findLongestMatch!1699 (regex!8395 (h!63900 rulesArg!259)) (list!18371 input!1342)))))

(assert (=> d!1600387 (ruleValid!3804 thiss!15247 (h!63900 rulesArg!259))))

(assert (=> d!1600387 (= (maxPrefixOneRule!3631 thiss!15247 (h!63900 rulesArg!259) (list!18371 input!1342)) lt!2052570)))

(declare-fun b!4970580 () Bool)

(declare-fun res!2121614 () Bool)

(assert (=> b!4970580 (=> (not res!2121614) (not e!3106677))))

(assert (=> b!4970580 (= res!2121614 (= (++!12534 (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052570)))) (_2!34394 (get!19945 lt!2052570))) (list!18371 input!1342)))))

(declare-fun b!4970587 () Bool)

(declare-fun res!2121611 () Bool)

(assert (=> b!4970587 (=> (not res!2121611) (not e!3106677))))

(assert (=> b!4970587 (= res!2121611 (< (size!38080 (_2!34394 (get!19945 lt!2052570))) (size!38080 (list!18371 input!1342))))))

(declare-fun b!4970588 () Bool)

(declare-fun res!2121612 () Bool)

(assert (=> b!4970588 (=> (not res!2121612) (not e!3106677))))

(assert (=> b!4970588 (= res!2121612 (= (rule!11645 (_1!34394 (get!19945 lt!2052570))) (h!63900 rulesArg!259)))))

(assert (= (and d!1600387 c!848161) b!4970586))

(assert (= (and d!1600387 (not c!848161)) b!4970581))

(assert (= (and b!4970581 (not res!2121615)) b!4970584))

(assert (= (and d!1600387 (not res!2121613)) b!4970583))

(assert (= (and b!4970583 res!2121617) b!4970580))

(assert (= (and b!4970580 res!2121614) b!4970587))

(assert (= (and b!4970587 res!2121611) b!4970588))

(assert (= (and b!4970588 res!2121612) b!4970585))

(assert (= (and b!4970585 res!2121616) b!4970582))

(declare-fun m!5998574 () Bool)

(assert (=> d!1600387 m!5998574))

(declare-fun m!5998576 () Bool)

(assert (=> d!1600387 m!5998576))

(assert (=> d!1600387 m!5998080))

(assert (=> d!1600387 m!5998572))

(assert (=> d!1600387 m!5998252))

(declare-fun m!5998578 () Bool)

(assert (=> b!4970585 m!5998578))

(declare-fun m!5998580 () Bool)

(assert (=> b!4970585 m!5998580))

(assert (=> b!4970585 m!5998580))

(declare-fun m!5998582 () Bool)

(assert (=> b!4970585 m!5998582))

(assert (=> b!4970588 m!5998578))

(assert (=> b!4970580 m!5998578))

(declare-fun m!5998584 () Bool)

(assert (=> b!4970580 m!5998584))

(assert (=> b!4970580 m!5998584))

(declare-fun m!5998586 () Bool)

(assert (=> b!4970580 m!5998586))

(assert (=> b!4970580 m!5998586))

(declare-fun m!5998588 () Bool)

(assert (=> b!4970580 m!5998588))

(assert (=> b!4970583 m!5998578))

(assert (=> b!4970583 m!5998584))

(assert (=> b!4970583 m!5998584))

(assert (=> b!4970583 m!5998586))

(assert (=> b!4970583 m!5998586))

(declare-fun m!5998590 () Bool)

(assert (=> b!4970583 m!5998590))

(assert (=> b!4970582 m!5998578))

(declare-fun m!5998592 () Bool)

(assert (=> b!4970582 m!5998592))

(assert (=> b!4970587 m!5998578))

(declare-fun m!5998594 () Bool)

(assert (=> b!4970587 m!5998594))

(assert (=> b!4970587 m!5998080))

(declare-fun m!5998596 () Bool)

(assert (=> b!4970587 m!5998596))

(assert (=> b!4970584 m!5998306))

(assert (=> b!4970584 m!5998080))

(assert (=> b!4970584 m!5998596))

(assert (=> b!4970584 m!5998306))

(assert (=> b!4970584 m!5998080))

(assert (=> b!4970584 m!5998080))

(assert (=> b!4970584 m!5998596))

(declare-fun m!5998598 () Bool)

(assert (=> b!4970584 m!5998598))

(declare-fun m!5998600 () Bool)

(assert (=> b!4970584 m!5998600))

(declare-fun m!5998602 () Bool)

(assert (=> b!4970581 m!5998602))

(assert (=> b!4970581 m!5998306))

(assert (=> b!4970581 m!5998080))

(declare-fun m!5998604 () Bool)

(assert (=> b!4970581 m!5998604))

(declare-fun m!5998606 () Bool)

(assert (=> b!4970581 m!5998606))

(assert (=> b!4970581 m!5998080))

(assert (=> b!4970581 m!5998596))

(assert (=> b!4970581 m!5998306))

(assert (=> b!4970581 m!5998080))

(assert (=> b!4970581 m!5998080))

(assert (=> b!4970581 m!5998596))

(assert (=> b!4970581 m!5998598))

(assert (=> b!4970581 m!5998602))

(declare-fun m!5998608 () Bool)

(assert (=> b!4970581 m!5998608))

(assert (=> b!4970581 m!5998602))

(declare-fun m!5998610 () Bool)

(assert (=> b!4970581 m!5998610))

(assert (=> b!4970581 m!5998602))

(declare-fun m!5998612 () Bool)

(assert (=> b!4970581 m!5998612))

(assert (=> d!1600303 d!1600387))

(declare-fun d!1600389 () Bool)

(assert (=> d!1600389 (= (isDefined!11367 lt!2052483) (not (isEmpty!30948 lt!2052483)))))

(declare-fun bs!1183505 () Bool)

(assert (= bs!1183505 d!1600389))

(declare-fun m!5998614 () Bool)

(assert (=> bs!1183505 m!5998614))

(assert (=> d!1600303 d!1600389))

(declare-fun d!1600391 () Bool)

(declare-fun res!2121622 () Bool)

(declare-fun e!3106681 () Bool)

(assert (=> d!1600391 (=> (not res!2121622) (not e!3106681))))

(assert (=> d!1600391 (= res!2121622 (validRegex!5971 (regex!8395 (h!63900 rulesArg!259))))))

(assert (=> d!1600391 (= (ruleValid!3804 thiss!15247 (h!63900 rulesArg!259)) e!3106681)))

(declare-fun b!4970593 () Bool)

(declare-fun res!2121623 () Bool)

(assert (=> b!4970593 (=> (not res!2121623) (not e!3106681))))

(declare-fun nullable!4622 (Regex!13628) Bool)

(assert (=> b!4970593 (= res!2121623 (not (nullable!4622 (regex!8395 (h!63900 rulesArg!259)))))))

(declare-fun b!4970594 () Bool)

(assert (=> b!4970594 (= e!3106681 (not (= (tag!9259 (h!63900 rulesArg!259)) (String!65402 ""))))))

(assert (= (and d!1600391 res!2121622) b!4970593))

(assert (= (and b!4970593 res!2121623) b!4970594))

(assert (=> d!1600391 m!5998564))

(declare-fun m!5998616 () Bool)

(assert (=> b!4970593 m!5998616))

(assert (=> d!1600303 d!1600391))

(declare-fun d!1600393 () Bool)

(declare-fun res!2121628 () Bool)

(declare-fun e!3106686 () Bool)

(assert (=> d!1600393 (=> res!2121628 e!3106686)))

(assert (=> d!1600393 (= res!2121628 (is-Nil!57452 rulesArg!259))))

(assert (=> d!1600393 (= (forall!13330 rulesArg!259 lambda!247417) e!3106686)))

(declare-fun b!4970599 () Bool)

(declare-fun e!3106687 () Bool)

(assert (=> b!4970599 (= e!3106686 e!3106687)))

(declare-fun res!2121629 () Bool)

(assert (=> b!4970599 (=> (not res!2121629) (not e!3106687))))

(declare-fun dynLambda!23183 (Int Rule!16590) Bool)

(assert (=> b!4970599 (= res!2121629 (dynLambda!23183 lambda!247417 (h!63900 rulesArg!259)))))

(declare-fun b!4970600 () Bool)

(assert (=> b!4970600 (= e!3106687 (forall!13330 (t!369030 rulesArg!259) lambda!247417))))

(assert (= (and d!1600393 (not res!2121628)) b!4970599))

(assert (= (and b!4970599 res!2121629) b!4970600))

(declare-fun b_lambda!197141 () Bool)

(assert (=> (not b_lambda!197141) (not b!4970599)))

(declare-fun m!5998618 () Bool)

(assert (=> b!4970599 m!5998618))

(declare-fun m!5998620 () Bool)

(assert (=> b!4970600 m!5998620))

(assert (=> d!1600285 d!1600393))

(declare-fun b!4970602 () Bool)

(declare-fun e!3106688 () Option!14453)

(declare-fun lt!2052579 () tuple2!62190)

(assert (=> b!4970602 (= e!3106688 (Some!14452 (tuple2!62183 (Token!15287 (apply!13906 (transformation!8395 (h!63900 rulesArg!259)) (seqFromList!6038 (_1!34398 lt!2052579))) (h!63900 rulesArg!259) (size!38081 (seqFromList!6038 (_1!34398 lt!2052579))) (_1!34398 lt!2052579)) (_2!34398 lt!2052579))))))

(declare-fun lt!2052577 () Unit!148401)

(assert (=> b!4970602 (= lt!2052577 (longestMatchIsAcceptedByMatchOrIsEmpty!1818 (regex!8395 (h!63900 rulesArg!259)) lt!2052315))))

(declare-fun res!2121634 () Bool)

(assert (=> b!4970602 (= res!2121634 (isEmpty!30949 (_1!34398 (findLongestMatchInner!1857 (regex!8395 (h!63900 rulesArg!259)) Nil!57451 (size!38080 Nil!57451) lt!2052315 lt!2052315 (size!38080 lt!2052315)))))))

(declare-fun e!3106689 () Bool)

(assert (=> b!4970602 (=> res!2121634 e!3106689)))

(assert (=> b!4970602 e!3106689))

(declare-fun lt!2052578 () Unit!148401)

(assert (=> b!4970602 (= lt!2052578 lt!2052577)))

(declare-fun lt!2052576 () Unit!148401)

(assert (=> b!4970602 (= lt!2052576 (lemmaSemiInverse!2604 (transformation!8395 (h!63900 rulesArg!259)) (seqFromList!6038 (_1!34398 lt!2052579))))))

(declare-fun b!4970603 () Bool)

(declare-fun e!3106690 () Bool)

(declare-fun lt!2052575 () Option!14453)

(assert (=> b!4970603 (= e!3106690 (= (size!38078 (_1!34394 (get!19945 lt!2052575))) (size!38080 (originalCharacters!8674 (_1!34394 (get!19945 lt!2052575))))))))

(declare-fun b!4970604 () Bool)

(declare-fun e!3106691 () Bool)

(assert (=> b!4970604 (= e!3106691 e!3106690)))

(declare-fun res!2121636 () Bool)

(assert (=> b!4970604 (=> (not res!2121636) (not e!3106690))))

(assert (=> b!4970604 (= res!2121636 (matchR!6638 (regex!8395 (h!63900 rulesArg!259)) (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052575))))))))

(declare-fun b!4970605 () Bool)

(assert (=> b!4970605 (= e!3106689 (matchR!6638 (regex!8395 (h!63900 rulesArg!259)) (_1!34398 (findLongestMatchInner!1857 (regex!8395 (h!63900 rulesArg!259)) Nil!57451 (size!38080 Nil!57451) lt!2052315 lt!2052315 (size!38080 lt!2052315)))))))

(declare-fun b!4970606 () Bool)

(declare-fun res!2121635 () Bool)

(assert (=> b!4970606 (=> (not res!2121635) (not e!3106690))))

(assert (=> b!4970606 (= res!2121635 (= (value!268699 (_1!34394 (get!19945 lt!2052575))) (apply!13906 (transformation!8395 (rule!11645 (_1!34394 (get!19945 lt!2052575)))) (seqFromList!6038 (originalCharacters!8674 (_1!34394 (get!19945 lt!2052575)))))))))

(declare-fun b!4970607 () Bool)

(assert (=> b!4970607 (= e!3106688 None!14452)))

(declare-fun d!1600395 () Bool)

(assert (=> d!1600395 e!3106691))

(declare-fun res!2121632 () Bool)

(assert (=> d!1600395 (=> res!2121632 e!3106691)))

(assert (=> d!1600395 (= res!2121632 (isEmpty!30947 lt!2052575))))

(assert (=> d!1600395 (= lt!2052575 e!3106688)))

(declare-fun c!848162 () Bool)

(assert (=> d!1600395 (= c!848162 (isEmpty!30949 (_1!34398 lt!2052579)))))

(assert (=> d!1600395 (= lt!2052579 (findLongestMatch!1699 (regex!8395 (h!63900 rulesArg!259)) lt!2052315))))

(assert (=> d!1600395 (ruleValid!3804 thiss!15247 (h!63900 rulesArg!259))))

(assert (=> d!1600395 (= (maxPrefixOneRule!3631 thiss!15247 (h!63900 rulesArg!259) lt!2052315) lt!2052575)))

(declare-fun b!4970601 () Bool)

(declare-fun res!2121633 () Bool)

(assert (=> b!4970601 (=> (not res!2121633) (not e!3106690))))

(assert (=> b!4970601 (= res!2121633 (= (++!12534 (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052575)))) (_2!34394 (get!19945 lt!2052575))) lt!2052315))))

(declare-fun b!4970608 () Bool)

(declare-fun res!2121630 () Bool)

(assert (=> b!4970608 (=> (not res!2121630) (not e!3106690))))

(assert (=> b!4970608 (= res!2121630 (< (size!38080 (_2!34394 (get!19945 lt!2052575))) (size!38080 lt!2052315)))))

(declare-fun b!4970609 () Bool)

(declare-fun res!2121631 () Bool)

(assert (=> b!4970609 (=> (not res!2121631) (not e!3106690))))

(assert (=> b!4970609 (= res!2121631 (= (rule!11645 (_1!34394 (get!19945 lt!2052575))) (h!63900 rulesArg!259)))))

(assert (= (and d!1600395 c!848162) b!4970607))

(assert (= (and d!1600395 (not c!848162)) b!4970602))

(assert (= (and b!4970602 (not res!2121634)) b!4970605))

(assert (= (and d!1600395 (not res!2121632)) b!4970604))

(assert (= (and b!4970604 res!2121636) b!4970601))

(assert (= (and b!4970601 res!2121633) b!4970608))

(assert (= (and b!4970608 res!2121630) b!4970609))

(assert (= (and b!4970609 res!2121631) b!4970606))

(assert (= (and b!4970606 res!2121635) b!4970603))

(declare-fun m!5998622 () Bool)

(assert (=> d!1600395 m!5998622))

(declare-fun m!5998624 () Bool)

(assert (=> d!1600395 m!5998624))

(declare-fun m!5998626 () Bool)

(assert (=> d!1600395 m!5998626))

(assert (=> d!1600395 m!5998252))

(declare-fun m!5998628 () Bool)

(assert (=> b!4970606 m!5998628))

(declare-fun m!5998630 () Bool)

(assert (=> b!4970606 m!5998630))

(assert (=> b!4970606 m!5998630))

(declare-fun m!5998632 () Bool)

(assert (=> b!4970606 m!5998632))

(assert (=> b!4970609 m!5998628))

(assert (=> b!4970601 m!5998628))

(declare-fun m!5998634 () Bool)

(assert (=> b!4970601 m!5998634))

(assert (=> b!4970601 m!5998634))

(declare-fun m!5998636 () Bool)

(assert (=> b!4970601 m!5998636))

(assert (=> b!4970601 m!5998636))

(declare-fun m!5998638 () Bool)

(assert (=> b!4970601 m!5998638))

(assert (=> b!4970604 m!5998628))

(assert (=> b!4970604 m!5998634))

(assert (=> b!4970604 m!5998634))

(assert (=> b!4970604 m!5998636))

(assert (=> b!4970604 m!5998636))

(declare-fun m!5998640 () Bool)

(assert (=> b!4970604 m!5998640))

(assert (=> b!4970603 m!5998628))

(declare-fun m!5998642 () Bool)

(assert (=> b!4970603 m!5998642))

(assert (=> b!4970608 m!5998628))

(declare-fun m!5998644 () Bool)

(assert (=> b!4970608 m!5998644))

(assert (=> b!4970608 m!5998172))

(assert (=> b!4970605 m!5998306))

(assert (=> b!4970605 m!5998172))

(assert (=> b!4970605 m!5998306))

(assert (=> b!4970605 m!5998172))

(declare-fun m!5998646 () Bool)

(assert (=> b!4970605 m!5998646))

(declare-fun m!5998648 () Bool)

(assert (=> b!4970605 m!5998648))

(declare-fun m!5998650 () Bool)

(assert (=> b!4970602 m!5998650))

(assert (=> b!4970602 m!5998306))

(declare-fun m!5998652 () Bool)

(assert (=> b!4970602 m!5998652))

(declare-fun m!5998654 () Bool)

(assert (=> b!4970602 m!5998654))

(assert (=> b!4970602 m!5998172))

(assert (=> b!4970602 m!5998306))

(assert (=> b!4970602 m!5998172))

(assert (=> b!4970602 m!5998646))

(assert (=> b!4970602 m!5998650))

(declare-fun m!5998656 () Bool)

(assert (=> b!4970602 m!5998656))

(assert (=> b!4970602 m!5998650))

(declare-fun m!5998658 () Bool)

(assert (=> b!4970602 m!5998658))

(assert (=> b!4970602 m!5998650))

(declare-fun m!5998660 () Bool)

(assert (=> b!4970602 m!5998660))

(assert (=> bm!346623 d!1600395))

(declare-fun d!1600397 () Bool)

(assert (=> d!1600397 (= (head!10670 lt!2052315) (h!63899 lt!2052315))))

(assert (=> b!4970200 d!1600397))

(declare-fun b!4970613 () Bool)

(declare-fun e!3106693 () List!57575)

(assert (=> b!4970613 (= e!3106693 (++!12534 (list!18373 (left!41907 (c!848111 (_2!34393 lt!2052320)))) (list!18373 (right!42237 (c!848111 (_2!34393 lt!2052320))))))))

(declare-fun b!4970610 () Bool)

(declare-fun e!3106692 () List!57575)

(assert (=> b!4970610 (= e!3106692 Nil!57451)))

(declare-fun d!1600399 () Bool)

(declare-fun c!848163 () Bool)

(assert (=> d!1600399 (= c!848163 (is-Empty!15147 (c!848111 (_2!34393 lt!2052320))))))

(assert (=> d!1600399 (= (list!18373 (c!848111 (_2!34393 lt!2052320))) e!3106692)))

(declare-fun b!4970612 () Bool)

(assert (=> b!4970612 (= e!3106693 (list!18375 (xs!18473 (c!848111 (_2!34393 lt!2052320)))))))

(declare-fun b!4970611 () Bool)

(assert (=> b!4970611 (= e!3106692 e!3106693)))

(declare-fun c!848164 () Bool)

(assert (=> b!4970611 (= c!848164 (is-Leaf!25170 (c!848111 (_2!34393 lt!2052320))))))

(assert (= (and d!1600399 c!848163) b!4970610))

(assert (= (and d!1600399 (not c!848163)) b!4970611))

(assert (= (and b!4970611 c!848164) b!4970612))

(assert (= (and b!4970611 (not c!848164)) b!4970613))

(declare-fun m!5998662 () Bool)

(assert (=> b!4970613 m!5998662))

(declare-fun m!5998664 () Bool)

(assert (=> b!4970613 m!5998664))

(assert (=> b!4970613 m!5998662))

(assert (=> b!4970613 m!5998664))

(declare-fun m!5998666 () Bool)

(assert (=> b!4970613 m!5998666))

(declare-fun m!5998668 () Bool)

(assert (=> b!4970612 m!5998668))

(assert (=> d!1600275 d!1600399))

(declare-fun d!1600401 () Bool)

(declare-fun c!848165 () Bool)

(assert (=> d!1600401 (= c!848165 (is-Node!15147 (left!41907 (c!848111 input!1342))))))

(declare-fun e!3106694 () Bool)

(assert (=> d!1600401 (= (inv!75091 (left!41907 (c!848111 input!1342))) e!3106694)))

(declare-fun b!4970614 () Bool)

(assert (=> b!4970614 (= e!3106694 (inv!75095 (left!41907 (c!848111 input!1342))))))

(declare-fun b!4970615 () Bool)

(declare-fun e!3106695 () Bool)

(assert (=> b!4970615 (= e!3106694 e!3106695)))

(declare-fun res!2121637 () Bool)

(assert (=> b!4970615 (= res!2121637 (not (is-Leaf!25170 (left!41907 (c!848111 input!1342)))))))

(assert (=> b!4970615 (=> res!2121637 e!3106695)))

(declare-fun b!4970616 () Bool)

(assert (=> b!4970616 (= e!3106695 (inv!75096 (left!41907 (c!848111 input!1342))))))

(assert (= (and d!1600401 c!848165) b!4970614))

(assert (= (and d!1600401 (not c!848165)) b!4970615))

(assert (= (and b!4970615 (not res!2121637)) b!4970616))

(declare-fun m!5998670 () Bool)

(assert (=> b!4970614 m!5998670))

(declare-fun m!5998672 () Bool)

(assert (=> b!4970616 m!5998672))

(assert (=> b!4970361 d!1600401))

(declare-fun d!1600403 () Bool)

(declare-fun c!848166 () Bool)

(assert (=> d!1600403 (= c!848166 (is-Node!15147 (right!42237 (c!848111 input!1342))))))

(declare-fun e!3106696 () Bool)

(assert (=> d!1600403 (= (inv!75091 (right!42237 (c!848111 input!1342))) e!3106696)))

(declare-fun b!4970617 () Bool)

(assert (=> b!4970617 (= e!3106696 (inv!75095 (right!42237 (c!848111 input!1342))))))

(declare-fun b!4970618 () Bool)

(declare-fun e!3106697 () Bool)

(assert (=> b!4970618 (= e!3106696 e!3106697)))

(declare-fun res!2121638 () Bool)

(assert (=> b!4970618 (= res!2121638 (not (is-Leaf!25170 (right!42237 (c!848111 input!1342)))))))

(assert (=> b!4970618 (=> res!2121638 e!3106697)))

(declare-fun b!4970619 () Bool)

(assert (=> b!4970619 (= e!3106697 (inv!75096 (right!42237 (c!848111 input!1342))))))

(assert (= (and d!1600403 c!848166) b!4970617))

(assert (= (and d!1600403 (not c!848166)) b!4970618))

(assert (= (and b!4970618 (not res!2121638)) b!4970619))

(declare-fun m!5998674 () Bool)

(assert (=> b!4970617 m!5998674))

(declare-fun m!5998676 () Bool)

(assert (=> b!4970619 m!5998676))

(assert (=> b!4970361 d!1600403))

(assert (=> b!4970126 d!1600259))

(assert (=> b!4970311 d!1600273))

(declare-fun d!1600405 () Bool)

(assert (=> d!1600405 (= (get!19946 lt!2052454) (v!50444 lt!2052454))))

(assert (=> b!4970311 d!1600405))

(declare-fun d!1600407 () Bool)

(assert (=> d!1600407 (= (list!18371 (_2!34393 (get!19946 lt!2052454))) (list!18373 (c!848111 (_2!34393 (get!19946 lt!2052454)))))))

(declare-fun bs!1183506 () Bool)

(assert (= bs!1183506 d!1600407))

(declare-fun m!5998678 () Bool)

(assert (=> bs!1183506 m!5998678))

(assert (=> b!4970311 d!1600407))

(assert (=> b!4970311 d!1600361))

(declare-fun d!1600409 () Bool)

(assert (=> d!1600409 (= (get!19945 (maxPrefixZipper!788 thiss!15247 (t!369030 rulesArg!259) (list!18371 input!1342))) (v!50443 (maxPrefixZipper!788 thiss!15247 (t!369030 rulesArg!259) (list!18371 input!1342))))))

(assert (=> b!4970311 d!1600409))

(declare-fun d!1600411 () Bool)

(assert (=> d!1600411 (= (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052376)))) (list!18373 (c!848111 (charsOf!5439 (_1!34394 (get!19945 lt!2052376))))))))

(declare-fun bs!1183507 () Bool)

(assert (= bs!1183507 d!1600411))

(declare-fun m!5998680 () Bool)

(assert (=> bs!1183507 m!5998680))

(assert (=> b!4970235 d!1600411))

(declare-fun d!1600413 () Bool)

(declare-fun lt!2052582 () BalanceConc!29724)

(assert (=> d!1600413 (= (list!18371 lt!2052582) (originalCharacters!8674 (_1!34394 (get!19945 lt!2052376))))))

(declare-fun dynLambda!23184 (Int TokenValue!8705) BalanceConc!29724)

(assert (=> d!1600413 (= lt!2052582 (dynLambda!23184 (toChars!11217 (transformation!8395 (rule!11645 (_1!34394 (get!19945 lt!2052376))))) (value!268699 (_1!34394 (get!19945 lt!2052376)))))))

(assert (=> d!1600413 (= (charsOf!5439 (_1!34394 (get!19945 lt!2052376))) lt!2052582)))

(declare-fun b_lambda!197143 () Bool)

(assert (=> (not b_lambda!197143) (not d!1600413)))

(declare-fun t!369036 () Bool)

(declare-fun tb!260995 () Bool)

(assert (=> (and b!4970138 (= (toChars!11217 (transformation!8395 (h!63900 rulesArg!259))) (toChars!11217 (transformation!8395 (rule!11645 (_1!34394 (get!19945 lt!2052376)))))) t!369036) tb!260995))

(declare-fun b!4970624 () Bool)

(declare-fun e!3106700 () Bool)

(declare-fun tp!1394021 () Bool)

(assert (=> b!4970624 (= e!3106700 (and (inv!75091 (c!848111 (dynLambda!23184 (toChars!11217 (transformation!8395 (rule!11645 (_1!34394 (get!19945 lt!2052376))))) (value!268699 (_1!34394 (get!19945 lt!2052376)))))) tp!1394021))))

(declare-fun result!326126 () Bool)

(assert (=> tb!260995 (= result!326126 (and (inv!75090 (dynLambda!23184 (toChars!11217 (transformation!8395 (rule!11645 (_1!34394 (get!19945 lt!2052376))))) (value!268699 (_1!34394 (get!19945 lt!2052376))))) e!3106700))))

(assert (= tb!260995 b!4970624))

(declare-fun m!5998682 () Bool)

(assert (=> b!4970624 m!5998682))

(declare-fun m!5998684 () Bool)

(assert (=> tb!260995 m!5998684))

(assert (=> d!1600413 t!369036))

(declare-fun b_and!348619 () Bool)

(assert (= b_and!348605 (and (=> t!369036 result!326126) b_and!348619)))

(declare-fun t!369038 () Bool)

(declare-fun tb!260997 () Bool)

(assert (=> (and b!4970352 (= (toChars!11217 (transformation!8395 (h!63900 (t!369030 rulesArg!259)))) (toChars!11217 (transformation!8395 (rule!11645 (_1!34394 (get!19945 lt!2052376)))))) t!369038) tb!260997))

(declare-fun result!326130 () Bool)

(assert (= result!326130 result!326126))

(assert (=> d!1600413 t!369038))

(declare-fun b_and!348621 () Bool)

(assert (= b_and!348613 (and (=> t!369038 result!326130) b_and!348621)))

(declare-fun m!5998686 () Bool)

(assert (=> d!1600413 m!5998686))

(declare-fun m!5998688 () Bool)

(assert (=> d!1600413 m!5998688))

(assert (=> b!4970235 d!1600413))

(declare-fun d!1600415 () Bool)

(assert (=> d!1600415 (= (get!19945 lt!2052376) (v!50443 lt!2052376))))

(assert (=> b!4970235 d!1600415))

(declare-fun b!4970637 () Bool)

(declare-fun res!2121651 () Bool)

(declare-fun e!3106705 () Bool)

(assert (=> b!4970637 (=> (not res!2121651) (not e!3106705))))

(assert (=> b!4970637 (= res!2121651 (isBalanced!4204 (right!42237 (c!848111 totalInput!464))))))

(declare-fun b!4970638 () Bool)

(assert (=> b!4970638 (= e!3106705 (not (isEmpty!30955 (right!42237 (c!848111 totalInput!464)))))))

(declare-fun b!4970639 () Bool)

(declare-fun res!2121653 () Bool)

(assert (=> b!4970639 (=> (not res!2121653) (not e!3106705))))

(assert (=> b!4970639 (= res!2121653 (<= (- (height!2015 (left!41907 (c!848111 totalInput!464))) (height!2015 (right!42237 (c!848111 totalInput!464)))) 1))))

(declare-fun b!4970640 () Bool)

(declare-fun res!2121652 () Bool)

(assert (=> b!4970640 (=> (not res!2121652) (not e!3106705))))

(assert (=> b!4970640 (= res!2121652 (isBalanced!4204 (left!41907 (c!848111 totalInput!464))))))

(declare-fun d!1600417 () Bool)

(declare-fun res!2121656 () Bool)

(declare-fun e!3106706 () Bool)

(assert (=> d!1600417 (=> res!2121656 e!3106706)))

(assert (=> d!1600417 (= res!2121656 (not (is-Node!15147 (c!848111 totalInput!464))))))

(assert (=> d!1600417 (= (isBalanced!4204 (c!848111 totalInput!464)) e!3106706)))

(declare-fun b!4970641 () Bool)

(declare-fun res!2121654 () Bool)

(assert (=> b!4970641 (=> (not res!2121654) (not e!3106705))))

(assert (=> b!4970641 (= res!2121654 (not (isEmpty!30955 (left!41907 (c!848111 totalInput!464)))))))

(declare-fun b!4970642 () Bool)

(assert (=> b!4970642 (= e!3106706 e!3106705)))

(declare-fun res!2121655 () Bool)

(assert (=> b!4970642 (=> (not res!2121655) (not e!3106705))))

(assert (=> b!4970642 (= res!2121655 (<= (- 1) (- (height!2015 (left!41907 (c!848111 totalInput!464))) (height!2015 (right!42237 (c!848111 totalInput!464))))))))

(assert (= (and d!1600417 (not res!2121656)) b!4970642))

(assert (= (and b!4970642 res!2121655) b!4970639))

(assert (= (and b!4970639 res!2121653) b!4970640))

(assert (= (and b!4970640 res!2121652) b!4970637))

(assert (= (and b!4970637 res!2121651) b!4970641))

(assert (= (and b!4970641 res!2121654) b!4970638))

(declare-fun m!5998690 () Bool)

(assert (=> b!4970639 m!5998690))

(declare-fun m!5998692 () Bool)

(assert (=> b!4970639 m!5998692))

(declare-fun m!5998694 () Bool)

(assert (=> b!4970638 m!5998694))

(declare-fun m!5998696 () Bool)

(assert (=> b!4970637 m!5998696))

(assert (=> b!4970642 m!5998690))

(assert (=> b!4970642 m!5998692))

(declare-fun m!5998698 () Bool)

(assert (=> b!4970640 m!5998698))

(declare-fun m!5998700 () Bool)

(assert (=> b!4970641 m!5998700))

(assert (=> d!1600283 d!1600417))

(declare-fun d!1600419 () Bool)

(assert (=> d!1600419 (= (get!19946 lt!2052483) (v!50444 lt!2052483))))

(assert (=> b!4970327 d!1600419))

(declare-fun d!1600421 () Bool)

(assert (=> d!1600421 (= (list!18371 (_2!34393 (get!19946 lt!2052483))) (list!18373 (c!848111 (_2!34393 (get!19946 lt!2052483)))))))

(declare-fun bs!1183508 () Bool)

(assert (= bs!1183508 d!1600421))

(declare-fun m!5998702 () Bool)

(assert (=> bs!1183508 m!5998702))

(assert (=> b!4970327 d!1600421))

(assert (=> b!4970327 d!1600273))

(assert (=> b!4970327 d!1600387))

(declare-fun d!1600423 () Bool)

(assert (=> d!1600423 (= (get!19945 (maxPrefixOneRule!3631 thiss!15247 (h!63900 rulesArg!259) (list!18371 input!1342))) (v!50443 (maxPrefixOneRule!3631 thiss!15247 (h!63900 rulesArg!259) (list!18371 input!1342))))))

(assert (=> b!4970327 d!1600423))

(declare-fun d!1600425 () Bool)

(declare-fun e!3106710 () Bool)

(assert (=> d!1600425 e!3106710))

(declare-fun res!2121662 () Bool)

(assert (=> d!1600425 (=> (not res!2121662) (not e!3106710))))

(declare-fun lt!2052589 () Option!14454)

(assert (=> d!1600425 (= res!2121662 (= (isDefined!11367 lt!2052589) (isDefined!11366 (maxPrefixZipper!788 thiss!15247 (t!369030 (t!369030 rulesArg!259)) (list!18371 input!1342)))))))

(declare-fun e!3106712 () Option!14454)

(assert (=> d!1600425 (= lt!2052589 e!3106712)))

(declare-fun c!848167 () Bool)

(assert (=> d!1600425 (= c!848167 (and (is-Cons!57452 (t!369030 (t!369030 rulesArg!259))) (is-Nil!57452 (t!369030 (t!369030 (t!369030 rulesArg!259))))))))

(declare-fun lt!2052587 () Unit!148401)

(declare-fun lt!2052586 () Unit!148401)

(assert (=> d!1600425 (= lt!2052587 lt!2052586)))

(declare-fun lt!2052585 () List!57575)

(declare-fun lt!2052588 () List!57575)

(assert (=> d!1600425 (isPrefix!5246 lt!2052585 lt!2052588)))

(assert (=> d!1600425 (= lt!2052586 (lemmaIsPrefixRefl!3570 lt!2052585 lt!2052588))))

(assert (=> d!1600425 (= lt!2052588 (list!18371 input!1342))))

(assert (=> d!1600425 (= lt!2052585 (list!18371 input!1342))))

(assert (=> d!1600425 (rulesValidInductive!3298 thiss!15247 (t!369030 (t!369030 rulesArg!259)))))

(assert (=> d!1600425 (= (maxPrefixZipperSequenceV2!706 thiss!15247 (t!369030 (t!369030 rulesArg!259)) input!1342 totalInput!464) lt!2052589)))

(declare-fun b!4970643 () Bool)

(declare-fun call!346645 () Option!14454)

(assert (=> b!4970643 (= e!3106712 call!346645)))

(declare-fun b!4970644 () Bool)

(declare-fun res!2121660 () Bool)

(assert (=> b!4970644 (=> (not res!2121660) (not e!3106710))))

(declare-fun e!3106709 () Bool)

(assert (=> b!4970644 (= res!2121660 e!3106709)))

(declare-fun res!2121658 () Bool)

(assert (=> b!4970644 (=> res!2121658 e!3106709)))

(assert (=> b!4970644 (= res!2121658 (not (isDefined!11367 lt!2052589)))))

(declare-fun b!4970645 () Bool)

(declare-fun e!3106708 () Bool)

(assert (=> b!4970645 (= e!3106710 e!3106708)))

(declare-fun res!2121659 () Bool)

(assert (=> b!4970645 (=> res!2121659 e!3106708)))

(assert (=> b!4970645 (= res!2121659 (not (isDefined!11367 lt!2052589)))))

(declare-fun b!4970646 () Bool)

(declare-fun lt!2052583 () Option!14454)

(declare-fun lt!2052584 () Option!14454)

(assert (=> b!4970646 (= e!3106712 (ite (and (is-None!14453 lt!2052583) (is-None!14453 lt!2052584)) None!14453 (ite (is-None!14453 lt!2052584) lt!2052583 (ite (is-None!14453 lt!2052583) lt!2052584 (ite (>= (size!38078 (_1!34393 (v!50444 lt!2052583))) (size!38078 (_1!34393 (v!50444 lt!2052584)))) lt!2052583 lt!2052584)))))))

(assert (=> b!4970646 (= lt!2052583 call!346645)))

(assert (=> b!4970646 (= lt!2052584 (maxPrefixZipperSequenceV2!706 thiss!15247 (t!369030 (t!369030 (t!369030 rulesArg!259))) input!1342 totalInput!464))))

(declare-fun b!4970647 () Bool)

(declare-fun e!3106707 () Bool)

(assert (=> b!4970647 (= e!3106709 e!3106707)))

(declare-fun res!2121661 () Bool)

(assert (=> b!4970647 (=> (not res!2121661) (not e!3106707))))

(assert (=> b!4970647 (= res!2121661 (= (_1!34393 (get!19946 lt!2052589)) (_1!34394 (get!19945 (maxPrefixZipper!788 thiss!15247 (t!369030 (t!369030 rulesArg!259)) (list!18371 input!1342))))))))

(declare-fun bm!346640 () Bool)

(assert (=> bm!346640 (= call!346645 (maxPrefixOneRuleZipperSequenceV2!363 thiss!15247 (h!63900 (t!369030 (t!369030 rulesArg!259))) input!1342 totalInput!464))))

(declare-fun b!4970648 () Bool)

(declare-fun e!3106711 () Bool)

(assert (=> b!4970648 (= e!3106708 e!3106711)))

(declare-fun res!2121657 () Bool)

(assert (=> b!4970648 (=> (not res!2121657) (not e!3106711))))

(assert (=> b!4970648 (= res!2121657 (= (_1!34393 (get!19946 lt!2052589)) (_1!34394 (get!19945 (maxPrefix!4662 thiss!15247 (t!369030 (t!369030 rulesArg!259)) (list!18371 input!1342))))))))

(declare-fun b!4970649 () Bool)

(assert (=> b!4970649 (= e!3106707 (= (list!18371 (_2!34393 (get!19946 lt!2052589))) (_2!34394 (get!19945 (maxPrefixZipper!788 thiss!15247 (t!369030 (t!369030 rulesArg!259)) (list!18371 input!1342))))))))

(declare-fun b!4970650 () Bool)

(assert (=> b!4970650 (= e!3106711 (= (list!18371 (_2!34393 (get!19946 lt!2052589))) (_2!34394 (get!19945 (maxPrefix!4662 thiss!15247 (t!369030 (t!369030 rulesArg!259)) (list!18371 input!1342))))))))

(assert (= (and d!1600425 c!848167) b!4970643))

(assert (= (and d!1600425 (not c!848167)) b!4970646))

(assert (= (or b!4970643 b!4970646) bm!346640))

(assert (= (and d!1600425 res!2121662) b!4970644))

(assert (= (and b!4970644 (not res!2121658)) b!4970647))

(assert (= (and b!4970647 res!2121661) b!4970649))

(assert (= (and b!4970644 res!2121660) b!4970645))

(assert (= (and b!4970645 (not res!2121659)) b!4970648))

(assert (= (and b!4970648 res!2121657) b!4970650))

(declare-fun m!5998704 () Bool)

(assert (=> b!4970646 m!5998704))

(assert (=> d!1600425 m!5998524))

(declare-fun m!5998706 () Bool)

(assert (=> d!1600425 m!5998706))

(declare-fun m!5998708 () Bool)

(assert (=> d!1600425 m!5998708))

(assert (=> d!1600425 m!5998500))

(assert (=> d!1600425 m!5998080))

(declare-fun m!5998710 () Bool)

(assert (=> d!1600425 m!5998710))

(declare-fun m!5998712 () Bool)

(assert (=> d!1600425 m!5998712))

(assert (=> d!1600425 m!5998080))

(assert (=> d!1600425 m!5998524))

(assert (=> b!4970644 m!5998710))

(declare-fun m!5998714 () Bool)

(assert (=> b!4970648 m!5998714))

(assert (=> b!4970648 m!5998080))

(assert (=> b!4970648 m!5998080))

(declare-fun m!5998716 () Bool)

(assert (=> b!4970648 m!5998716))

(assert (=> b!4970648 m!5998716))

(declare-fun m!5998718 () Bool)

(assert (=> b!4970648 m!5998718))

(assert (=> b!4970645 m!5998710))

(declare-fun m!5998720 () Bool)

(assert (=> bm!346640 m!5998720))

(assert (=> b!4970650 m!5998714))

(assert (=> b!4970650 m!5998080))

(declare-fun m!5998722 () Bool)

(assert (=> b!4970650 m!5998722))

(assert (=> b!4970650 m!5998716))

(assert (=> b!4970650 m!5998718))

(assert (=> b!4970650 m!5998080))

(assert (=> b!4970650 m!5998716))

(assert (=> b!4970649 m!5998080))

(assert (=> b!4970649 m!5998080))

(assert (=> b!4970649 m!5998524))

(assert (=> b!4970649 m!5998722))

(assert (=> b!4970649 m!5998524))

(declare-fun m!5998724 () Bool)

(assert (=> b!4970649 m!5998724))

(assert (=> b!4970649 m!5998714))

(assert (=> b!4970647 m!5998714))

(assert (=> b!4970647 m!5998080))

(assert (=> b!4970647 m!5998080))

(assert (=> b!4970647 m!5998524))

(assert (=> b!4970647 m!5998524))

(assert (=> b!4970647 m!5998724))

(assert (=> b!4970308 d!1600425))

(assert (=> b!4970231 d!1600415))

(declare-fun d!1600427 () Bool)

(declare-fun dynLambda!23185 (Int BalanceConc!29724) TokenValue!8705)

(assert (=> d!1600427 (= (apply!13906 (transformation!8395 (rule!11645 (_1!34394 (get!19945 lt!2052376)))) (seqFromList!6038 (originalCharacters!8674 (_1!34394 (get!19945 lt!2052376))))) (dynLambda!23185 (toValue!11358 (transformation!8395 (rule!11645 (_1!34394 (get!19945 lt!2052376))))) (seqFromList!6038 (originalCharacters!8674 (_1!34394 (get!19945 lt!2052376))))))))

(declare-fun b_lambda!197145 () Bool)

(assert (=> (not b_lambda!197145) (not d!1600427)))

(declare-fun t!369041 () Bool)

(declare-fun tb!260999 () Bool)

(assert (=> (and b!4970138 (= (toValue!11358 (transformation!8395 (h!63900 rulesArg!259))) (toValue!11358 (transformation!8395 (rule!11645 (_1!34394 (get!19945 lt!2052376)))))) t!369041) tb!260999))

(declare-fun result!326132 () Bool)

(declare-fun inv!21 (TokenValue!8705) Bool)

(assert (=> tb!260999 (= result!326132 (inv!21 (dynLambda!23185 (toValue!11358 (transformation!8395 (rule!11645 (_1!34394 (get!19945 lt!2052376))))) (seqFromList!6038 (originalCharacters!8674 (_1!34394 (get!19945 lt!2052376)))))))))

(declare-fun m!5998726 () Bool)

(assert (=> tb!260999 m!5998726))

(assert (=> d!1600427 t!369041))

(declare-fun b_and!348623 () Bool)

(assert (= b_and!348603 (and (=> t!369041 result!326132) b_and!348623)))

(declare-fun tb!261001 () Bool)

(declare-fun t!369043 () Bool)

(assert (=> (and b!4970352 (= (toValue!11358 (transformation!8395 (h!63900 (t!369030 rulesArg!259)))) (toValue!11358 (transformation!8395 (rule!11645 (_1!34394 (get!19945 lt!2052376)))))) t!369043) tb!261001))

(declare-fun result!326136 () Bool)

(assert (= result!326136 result!326132))

(assert (=> d!1600427 t!369043))

(declare-fun b_and!348625 () Bool)

(assert (= b_and!348611 (and (=> t!369043 result!326136) b_and!348625)))

(assert (=> d!1600427 m!5998200))

(declare-fun m!5998728 () Bool)

(assert (=> d!1600427 m!5998728))

(assert (=> b!4970231 d!1600427))

(declare-fun d!1600429 () Bool)

(declare-fun fromListB!2733 (List!57575) BalanceConc!29724)

(assert (=> d!1600429 (= (seqFromList!6038 (originalCharacters!8674 (_1!34394 (get!19945 lt!2052376)))) (fromListB!2733 (originalCharacters!8674 (_1!34394 (get!19945 lt!2052376)))))))

(declare-fun bs!1183509 () Bool)

(assert (= bs!1183509 d!1600429))

(declare-fun m!5998730 () Bool)

(assert (=> bs!1183509 m!5998730))

(assert (=> b!4970231 d!1600429))

(declare-fun d!1600431 () Bool)

(declare-fun lt!2052590 () Int)

(assert (=> d!1600431 (>= lt!2052590 0)))

(declare-fun e!3106716 () Int)

(assert (=> d!1600431 (= lt!2052590 e!3106716)))

(declare-fun c!848168 () Bool)

(assert (=> d!1600431 (= c!848168 (is-Nil!57451 (list!18371 totalInput!464)))))

(assert (=> d!1600431 (= (size!38080 (list!18371 totalInput!464)) lt!2052590)))

(declare-fun b!4970653 () Bool)

(assert (=> b!4970653 (= e!3106716 0)))

(declare-fun b!4970654 () Bool)

(assert (=> b!4970654 (= e!3106716 (+ 1 (size!38080 (t!369029 (list!18371 totalInput!464)))))))

(assert (= (and d!1600431 c!848168) b!4970653))

(assert (= (and d!1600431 (not c!848168)) b!4970654))

(declare-fun m!5998732 () Bool)

(assert (=> b!4970654 m!5998732))

(assert (=> b!4970241 d!1600431))

(assert (=> b!4970241 d!1600379))

(declare-fun lt!2052591 () Option!14453)

(declare-fun d!1600433 () Bool)

(assert (=> d!1600433 (= lt!2052591 (maxPrefix!4662 thiss!15247 (t!369030 rulesArg!259) lt!2052315))))

(declare-fun e!3106717 () Option!14453)

(assert (=> d!1600433 (= lt!2052591 e!3106717)))

(declare-fun c!848169 () Bool)

(assert (=> d!1600433 (= c!848169 (and (is-Cons!57452 (t!369030 rulesArg!259)) (is-Nil!57452 (t!369030 (t!369030 rulesArg!259)))))))

(declare-fun lt!2052595 () Unit!148401)

(declare-fun lt!2052592 () Unit!148401)

(assert (=> d!1600433 (= lt!2052595 lt!2052592)))

(assert (=> d!1600433 (isPrefix!5246 lt!2052315 lt!2052315)))

(assert (=> d!1600433 (= lt!2052592 (lemmaIsPrefixRefl!3570 lt!2052315 lt!2052315))))

(assert (=> d!1600433 (rulesValidInductive!3298 thiss!15247 (t!369030 rulesArg!259))))

(assert (=> d!1600433 (= (maxPrefixZipper!788 thiss!15247 (t!369030 rulesArg!259) lt!2052315) lt!2052591)))

(declare-fun bm!346641 () Bool)

(declare-fun call!346646 () Option!14453)

(assert (=> bm!346641 (= call!346646 (maxPrefixOneRuleZipper!298 thiss!15247 (h!63900 (t!369030 rulesArg!259)) lt!2052315))))

(declare-fun b!4970655 () Bool)

(assert (=> b!4970655 (= e!3106717 call!346646)))

(declare-fun b!4970656 () Bool)

(declare-fun lt!2052593 () Option!14453)

(declare-fun lt!2052594 () Option!14453)

(assert (=> b!4970656 (= e!3106717 (ite (and (is-None!14452 lt!2052593) (is-None!14452 lt!2052594)) None!14452 (ite (is-None!14452 lt!2052594) lt!2052593 (ite (is-None!14452 lt!2052593) lt!2052594 (ite (>= (size!38078 (_1!34394 (v!50443 lt!2052593))) (size!38078 (_1!34394 (v!50443 lt!2052594)))) lt!2052593 lt!2052594)))))))

(assert (=> b!4970656 (= lt!2052593 call!346646)))

(assert (=> b!4970656 (= lt!2052594 (maxPrefixZipper!788 thiss!15247 (t!369030 (t!369030 rulesArg!259)) lt!2052315))))

(assert (= (and d!1600433 c!848169) b!4970655))

(assert (= (and d!1600433 (not c!848169)) b!4970656))

(assert (= (or b!4970655 b!4970656) bm!346641))

(assert (=> d!1600433 m!5998184))

(assert (=> d!1600433 m!5998096))

(assert (=> d!1600433 m!5998098))

(assert (=> d!1600433 m!5998254))

(declare-fun m!5998734 () Bool)

(assert (=> bm!346641 m!5998734))

(declare-fun m!5998736 () Bool)

(assert (=> b!4970656 m!5998736))

(assert (=> b!4970288 d!1600433))

(assert (=> b!4970329 d!1600389))

(declare-fun bs!1183510 () Bool)

(declare-fun b!4970657 () Bool)

(assert (= bs!1183510 (and b!4970657 b!4970325)))

(declare-fun lambda!247435 () Int)

(assert (=> bs!1183510 (= (and (= (toChars!11217 (transformation!8395 (h!63900 (t!369030 rulesArg!259)))) (toChars!11217 (transformation!8395 (h!63900 rulesArg!259)))) (= (toValue!11358 (transformation!8395 (h!63900 (t!369030 rulesArg!259)))) (toValue!11358 (transformation!8395 (h!63900 rulesArg!259))))) (= lambda!247435 lambda!247422))))

(declare-fun bs!1183511 () Bool)

(assert (= bs!1183511 (and b!4970657 d!1600353)))

(assert (=> bs!1183511 (= (and (= (toChars!11217 (transformation!8395 (h!63900 (t!369030 rulesArg!259)))) (toChars!11217 (transformation!8395 (h!63900 rulesArg!259)))) (= (toValue!11358 (transformation!8395 (h!63900 (t!369030 rulesArg!259)))) (toValue!11358 (transformation!8395 (h!63900 rulesArg!259))))) (= lambda!247435 lambda!247433))))

(declare-fun b!4970664 () Bool)

(declare-fun e!3106724 () Bool)

(assert (=> b!4970664 (= e!3106724 true)))

(declare-fun b!4970663 () Bool)

(declare-fun e!3106723 () Bool)

(assert (=> b!4970663 (= e!3106723 e!3106724)))

(assert (=> b!4970657 e!3106723))

(assert (= b!4970663 b!4970664))

(assert (= b!4970657 b!4970663))

(assert (=> b!4970664 (< (dynLambda!23177 order!26219 (toValue!11358 (transformation!8395 (h!63900 (t!369030 rulesArg!259))))) (dynLambda!23178 order!26221 lambda!247435))))

(assert (=> b!4970664 (< (dynLambda!23179 order!26223 (toChars!11217 (transformation!8395 (h!63900 (t!369030 rulesArg!259))))) (dynLambda!23178 order!26221 lambda!247435))))

(declare-fun e!3106722 () Option!14454)

(declare-fun lt!2052599 () tuple2!62188)

(assert (=> b!4970657 (= e!3106722 (Some!14453 (tuple2!62181 (Token!15287 (apply!13906 (transformation!8395 (h!63900 (t!369030 rulesArg!259))) (_1!34397 lt!2052599)) (h!63900 (t!369030 rulesArg!259)) (size!38081 (_1!34397 lt!2052599)) (list!18371 (_1!34397 lt!2052599))) (_2!34397 lt!2052599))))))

(declare-fun lt!2052605 () List!57575)

(assert (=> b!4970657 (= lt!2052605 (list!18371 input!1342))))

(declare-fun lt!2052602 () Unit!148401)

(assert (=> b!4970657 (= lt!2052602 (longestMatchIsAcceptedByMatchOrIsEmpty!1818 (regex!8395 (h!63900 (t!369030 rulesArg!259))) lt!2052605))))

(declare-fun res!2121666 () Bool)

(assert (=> b!4970657 (= res!2121666 (isEmpty!30949 (_1!34398 (findLongestMatchInner!1857 (regex!8395 (h!63900 (t!369030 rulesArg!259))) Nil!57451 (size!38080 Nil!57451) lt!2052605 lt!2052605 (size!38080 lt!2052605)))))))

(declare-fun e!3106719 () Bool)

(assert (=> b!4970657 (=> res!2121666 e!3106719)))

(assert (=> b!4970657 e!3106719))

(declare-fun lt!2052603 () Unit!148401)

(assert (=> b!4970657 (= lt!2052603 lt!2052602)))

(declare-fun lt!2052600 () Unit!148401)

(assert (=> b!4970657 (= lt!2052600 (lemmaInv!1336 (transformation!8395 (h!63900 (t!369030 rulesArg!259)))))))

(declare-fun lt!2052597 () Unit!148401)

(assert (=> b!4970657 (= lt!2052597 (ForallOf!1229 lambda!247435 (_1!34397 lt!2052599)))))

(declare-fun lt!2052596 () Unit!148401)

(assert (=> b!4970657 (= lt!2052596 (ForallOf!1229 lambda!247435 (seqFromList!6038 (list!18371 (_1!34397 lt!2052599)))))))

(declare-fun lt!2052598 () Option!14454)

(assert (=> b!4970657 (= lt!2052598 (Some!14453 (tuple2!62181 (Token!15287 (apply!13906 (transformation!8395 (h!63900 (t!369030 rulesArg!259))) (_1!34397 lt!2052599)) (h!63900 (t!369030 rulesArg!259)) (size!38081 (_1!34397 lt!2052599)) (list!18371 (_1!34397 lt!2052599))) (_2!34397 lt!2052599))))))

(declare-fun lt!2052601 () Unit!148401)

(assert (=> b!4970657 (= lt!2052601 (lemmaEqSameImage!1170 (transformation!8395 (h!63900 (t!369030 rulesArg!259))) (_1!34397 lt!2052599) (seqFromList!6038 (list!18371 (_1!34397 lt!2052599)))))))

(declare-fun b!4970658 () Bool)

(assert (=> b!4970658 (= e!3106722 None!14453)))

(declare-fun d!1600435 () Bool)

(declare-fun e!3106718 () Bool)

(assert (=> d!1600435 e!3106718))

(declare-fun res!2121665 () Bool)

(assert (=> d!1600435 (=> (not res!2121665) (not e!3106718))))

(declare-fun lt!2052604 () Option!14454)

(assert (=> d!1600435 (= res!2121665 (= (isDefined!11367 lt!2052604) (isDefined!11366 (maxPrefixOneRule!3631 thiss!15247 (h!63900 (t!369030 rulesArg!259)) (list!18371 input!1342)))))))

(assert (=> d!1600435 (= lt!2052604 e!3106722)))

(declare-fun c!848170 () Bool)

(assert (=> d!1600435 (= c!848170 (isEmpty!30950 (_1!34397 lt!2052599)))))

(assert (=> d!1600435 (= lt!2052599 (findLongestMatchWithZipperSequenceV2!166 (regex!8395 (h!63900 (t!369030 rulesArg!259))) input!1342 totalInput!464))))

(assert (=> d!1600435 (ruleValid!3804 thiss!15247 (h!63900 (t!369030 rulesArg!259)))))

(assert (=> d!1600435 (= (maxPrefixOneRuleZipperSequenceV2!363 thiss!15247 (h!63900 (t!369030 rulesArg!259)) input!1342 totalInput!464) lt!2052604)))

(declare-fun b!4970659 () Bool)

(declare-fun e!3106721 () Bool)

(assert (=> b!4970659 (= e!3106721 (= (list!18371 (_2!34393 (get!19946 lt!2052604))) (_2!34394 (get!19945 (maxPrefixOneRule!3631 thiss!15247 (h!63900 (t!369030 rulesArg!259)) (list!18371 input!1342))))))))

(declare-fun b!4970660 () Bool)

(declare-fun e!3106720 () Bool)

(assert (=> b!4970660 (= e!3106720 e!3106721)))

(declare-fun res!2121663 () Bool)

(assert (=> b!4970660 (=> (not res!2121663) (not e!3106721))))

(assert (=> b!4970660 (= res!2121663 (= (_1!34393 (get!19946 lt!2052604)) (_1!34394 (get!19945 (maxPrefixOneRule!3631 thiss!15247 (h!63900 (t!369030 rulesArg!259)) (list!18371 input!1342))))))))

(declare-fun b!4970661 () Bool)

(assert (=> b!4970661 (= e!3106718 e!3106720)))

(declare-fun res!2121664 () Bool)

(assert (=> b!4970661 (=> res!2121664 e!3106720)))

(assert (=> b!4970661 (= res!2121664 (not (isDefined!11367 lt!2052604)))))

(declare-fun b!4970662 () Bool)

(assert (=> b!4970662 (= e!3106719 (matchR!6638 (regex!8395 (h!63900 (t!369030 rulesArg!259))) (_1!34398 (findLongestMatchInner!1857 (regex!8395 (h!63900 (t!369030 rulesArg!259))) Nil!57451 (size!38080 Nil!57451) lt!2052605 lt!2052605 (size!38080 lt!2052605)))))))

(assert (= (and d!1600435 c!848170) b!4970658))

(assert (= (and d!1600435 (not c!848170)) b!4970657))

(assert (= (and b!4970657 (not res!2121666)) b!4970662))

(assert (= (and d!1600435 res!2121665) b!4970661))

(assert (= (and b!4970661 (not res!2121664)) b!4970660))

(assert (= (and b!4970660 res!2121663) b!4970659))

(declare-fun m!5998738 () Bool)

(assert (=> b!4970659 m!5998738))

(declare-fun m!5998740 () Bool)

(assert (=> b!4970659 m!5998740))

(assert (=> b!4970659 m!5998080))

(assert (=> b!4970659 m!5998738))

(assert (=> b!4970659 m!5998080))

(declare-fun m!5998742 () Bool)

(assert (=> b!4970659 m!5998742))

(declare-fun m!5998744 () Bool)

(assert (=> b!4970659 m!5998744))

(declare-fun m!5998746 () Bool)

(assert (=> d!1600435 m!5998746))

(declare-fun m!5998748 () Bool)

(assert (=> d!1600435 m!5998748))

(assert (=> d!1600435 m!5998498))

(assert (=> d!1600435 m!5998738))

(declare-fun m!5998750 () Bool)

(assert (=> d!1600435 m!5998750))

(assert (=> d!1600435 m!5998080))

(assert (=> d!1600435 m!5998738))

(assert (=> d!1600435 m!5998080))

(declare-fun m!5998752 () Bool)

(assert (=> d!1600435 m!5998752))

(assert (=> b!4970661 m!5998752))

(assert (=> b!4970660 m!5998744))

(assert (=> b!4970660 m!5998080))

(assert (=> b!4970660 m!5998080))

(assert (=> b!4970660 m!5998738))

(assert (=> b!4970660 m!5998738))

(assert (=> b!4970660 m!5998740))

(assert (=> b!4970662 m!5998306))

(declare-fun m!5998754 () Bool)

(assert (=> b!4970662 m!5998754))

(assert (=> b!4970662 m!5998306))

(assert (=> b!4970662 m!5998754))

(declare-fun m!5998756 () Bool)

(assert (=> b!4970662 m!5998756))

(declare-fun m!5998758 () Bool)

(assert (=> b!4970662 m!5998758))

(declare-fun m!5998760 () Bool)

(assert (=> b!4970657 m!5998760))

(assert (=> b!4970657 m!5998306))

(assert (=> b!4970657 m!5998754))

(assert (=> b!4970657 m!5998306))

(assert (=> b!4970657 m!5998754))

(assert (=> b!4970657 m!5998756))

(declare-fun m!5998762 () Bool)

(assert (=> b!4970657 m!5998762))

(declare-fun m!5998764 () Bool)

(assert (=> b!4970657 m!5998764))

(declare-fun m!5998766 () Bool)

(assert (=> b!4970657 m!5998766))

(declare-fun m!5998768 () Bool)

(assert (=> b!4970657 m!5998768))

(declare-fun m!5998770 () Bool)

(assert (=> b!4970657 m!5998770))

(assert (=> b!4970657 m!5998080))

(declare-fun m!5998772 () Bool)

(assert (=> b!4970657 m!5998772))

(declare-fun m!5998774 () Bool)

(assert (=> b!4970657 m!5998774))

(assert (=> b!4970657 m!5998764))

(declare-fun m!5998776 () Bool)

(assert (=> b!4970657 m!5998776))

(declare-fun m!5998778 () Bool)

(assert (=> b!4970657 m!5998778))

(assert (=> b!4970657 m!5998778))

(assert (=> b!4970657 m!5998764))

(assert (=> bm!346632 d!1600435))

(declare-fun d!1600437 () Bool)

(declare-fun lt!2052606 () Int)

(assert (=> d!1600437 (>= lt!2052606 0)))

(declare-fun e!3106725 () Int)

(assert (=> d!1600437 (= lt!2052606 e!3106725)))

(declare-fun c!848171 () Bool)

(assert (=> d!1600437 (= c!848171 (is-Nil!57451 (_2!34394 (get!19945 lt!2052376))))))

(assert (=> d!1600437 (= (size!38080 (_2!34394 (get!19945 lt!2052376))) lt!2052606)))

(declare-fun b!4970665 () Bool)

(assert (=> b!4970665 (= e!3106725 0)))

(declare-fun b!4970666 () Bool)

(assert (=> b!4970666 (= e!3106725 (+ 1 (size!38080 (t!369029 (_2!34394 (get!19945 lt!2052376))))))))

(assert (= (and d!1600437 c!848171) b!4970665))

(assert (= (and d!1600437 (not c!848171)) b!4970666))

(declare-fun m!5998780 () Bool)

(assert (=> b!4970666 m!5998780))

(assert (=> b!4970233 d!1600437))

(assert (=> b!4970233 d!1600415))

(assert (=> b!4970233 d!1600379))

(declare-fun d!1600439 () Bool)

(declare-fun dynLambda!23186 (Int BalanceConc!29724) Bool)

(assert (=> d!1600439 (dynLambda!23186 lambda!247422 (seqFromList!6038 (list!18371 (_1!34397 lt!2052478))))))

(declare-fun lt!2052609 () Unit!148401)

(declare-fun choose!36697 (Int BalanceConc!29724) Unit!148401)

(assert (=> d!1600439 (= lt!2052609 (choose!36697 lambda!247422 (seqFromList!6038 (list!18371 (_1!34397 lt!2052478)))))))

(assert (=> d!1600439 (Forall!1764 lambda!247422)))

(assert (=> d!1600439 (= (ForallOf!1229 lambda!247422 (seqFromList!6038 (list!18371 (_1!34397 lt!2052478)))) lt!2052609)))

(declare-fun b_lambda!197147 () Bool)

(assert (=> (not b_lambda!197147) (not d!1600439)))

(declare-fun bs!1183512 () Bool)

(assert (= bs!1183512 d!1600439))

(assert (=> bs!1183512 m!5998318))

(declare-fun m!5998782 () Bool)

(assert (=> bs!1183512 m!5998782))

(assert (=> bs!1183512 m!5998318))

(declare-fun m!5998784 () Bool)

(assert (=> bs!1183512 m!5998784))

(declare-fun m!5998786 () Bool)

(assert (=> bs!1183512 m!5998786))

(assert (=> b!4970325 d!1600439))

(declare-fun d!1600441 () Bool)

(declare-fun lt!2052612 () Int)

(assert (=> d!1600441 (= lt!2052612 (size!38080 (list!18371 (_1!34397 lt!2052478))))))

(assert (=> d!1600441 (= lt!2052612 (size!38084 (c!848111 (_1!34397 lt!2052478))))))

(assert (=> d!1600441 (= (size!38081 (_1!34397 lt!2052478)) lt!2052612)))

(declare-fun bs!1183513 () Bool)

(assert (= bs!1183513 d!1600441))

(assert (=> bs!1183513 m!5998332))

(assert (=> bs!1183513 m!5998332))

(declare-fun m!5998788 () Bool)

(assert (=> bs!1183513 m!5998788))

(declare-fun m!5998790 () Bool)

(assert (=> bs!1183513 m!5998790))

(assert (=> b!4970325 d!1600441))

(declare-fun b!4970696 () Bool)

(declare-fun e!3106745 () tuple2!62190)

(assert (=> b!4970696 (= e!3106745 (tuple2!62191 Nil!57451 Nil!57451))))

(declare-fun bm!346658 () Bool)

(declare-fun call!346666 () C!27506)

(assert (=> bm!346658 (= call!346666 (head!10670 lt!2052484))))

(declare-fun bm!346659 () Bool)

(declare-fun call!346663 () Bool)

(assert (=> bm!346659 (= call!346663 (nullable!4622 (regex!8395 (h!63900 rulesArg!259))))))

(declare-fun b!4970697 () Bool)

(declare-fun c!848185 () Bool)

(assert (=> b!4970697 (= c!848185 call!346663)))

(declare-fun lt!2052695 () Unit!148401)

(declare-fun lt!2052683 () Unit!148401)

(assert (=> b!4970697 (= lt!2052695 lt!2052683)))

(assert (=> b!4970697 (= lt!2052484 Nil!57451)))

(declare-fun call!346668 () Unit!148401)

(assert (=> b!4970697 (= lt!2052683 call!346668)))

(declare-fun lt!2052688 () Unit!148401)

(declare-fun lt!2052670 () Unit!148401)

(assert (=> b!4970697 (= lt!2052688 lt!2052670)))

(declare-fun call!346664 () Bool)

(assert (=> b!4970697 call!346664))

(declare-fun call!346670 () Unit!148401)

(assert (=> b!4970697 (= lt!2052670 call!346670)))

(declare-fun e!3106748 () tuple2!62190)

(assert (=> b!4970697 (= e!3106748 e!3106745)))

(declare-fun bm!346660 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1210 (List!57575 List!57575 List!57575) Unit!148401)

(assert (=> bm!346660 (= call!346668 (lemmaIsPrefixSameLengthThenSameList!1210 lt!2052484 Nil!57451 lt!2052484))))

(declare-fun b!4970698 () Bool)

(declare-fun e!3106749 () tuple2!62190)

(declare-fun lt!2052687 () tuple2!62190)

(assert (=> b!4970698 (= e!3106749 lt!2052687)))

(declare-fun b!4970699 () Bool)

(declare-fun e!3106742 () tuple2!62190)

(declare-fun call!346669 () tuple2!62190)

(assert (=> b!4970699 (= e!3106742 call!346669)))

(declare-fun b!4970700 () Bool)

(assert (=> b!4970700 (= e!3106749 (tuple2!62191 Nil!57451 lt!2052484))))

(declare-fun b!4970701 () Bool)

(declare-fun e!3106746 () Bool)

(declare-fun lt!2052682 () tuple2!62190)

(assert (=> b!4970701 (= e!3106746 (>= (size!38080 (_1!34398 lt!2052682)) (size!38080 Nil!57451)))))

(declare-fun b!4970702 () Bool)

(declare-fun e!3106744 () Bool)

(assert (=> b!4970702 (= e!3106744 e!3106746)))

(declare-fun res!2121681 () Bool)

(assert (=> b!4970702 (=> res!2121681 e!3106746)))

(assert (=> b!4970702 (= res!2121681 (isEmpty!30949 (_1!34398 lt!2052682)))))

(declare-fun b!4970703 () Bool)

(declare-fun e!3106743 () Unit!148401)

(declare-fun Unit!148406 () Unit!148401)

(assert (=> b!4970703 (= e!3106743 Unit!148406)))

(declare-fun bm!346661 () Bool)

(declare-fun call!346665 () List!57575)

(assert (=> bm!346661 (= call!346665 (tail!9803 lt!2052484))))

(declare-fun b!4970704 () Bool)

(declare-fun c!848186 () Bool)

(assert (=> b!4970704 (= c!848186 call!346663)))

(declare-fun lt!2052677 () Unit!148401)

(declare-fun lt!2052673 () Unit!148401)

(assert (=> b!4970704 (= lt!2052677 lt!2052673)))

(declare-fun lt!2052678 () C!27506)

(declare-fun lt!2052681 () List!57575)

(assert (=> b!4970704 (= (++!12534 (++!12534 Nil!57451 (Cons!57451 lt!2052678 Nil!57451)) lt!2052681) lt!2052484)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1447 (List!57575 C!27506 List!57575 List!57575) Unit!148401)

(assert (=> b!4970704 (= lt!2052673 (lemmaMoveElementToOtherListKeepsConcatEq!1447 Nil!57451 lt!2052678 lt!2052681 lt!2052484))))

(assert (=> b!4970704 (= lt!2052681 (tail!9803 lt!2052484))))

(assert (=> b!4970704 (= lt!2052678 (head!10670 lt!2052484))))

(declare-fun lt!2052672 () Unit!148401)

(declare-fun lt!2052675 () Unit!148401)

(assert (=> b!4970704 (= lt!2052672 lt!2052675)))

(declare-fun getSuffix!3090 (List!57575 List!57575) List!57575)

(assert (=> b!4970704 (isPrefix!5246 (++!12534 Nil!57451 (Cons!57451 (head!10670 (getSuffix!3090 lt!2052484 Nil!57451)) Nil!57451)) lt!2052484)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!837 (List!57575 List!57575) Unit!148401)

(assert (=> b!4970704 (= lt!2052675 (lemmaAddHeadSuffixToPrefixStillPrefix!837 Nil!57451 lt!2052484))))

(declare-fun lt!2052669 () Unit!148401)

(declare-fun lt!2052690 () Unit!148401)

(assert (=> b!4970704 (= lt!2052669 lt!2052690)))

(assert (=> b!4970704 (= lt!2052690 (lemmaAddHeadSuffixToPrefixStillPrefix!837 Nil!57451 lt!2052484))))

(declare-fun lt!2052689 () List!57575)

(assert (=> b!4970704 (= lt!2052689 (++!12534 Nil!57451 (Cons!57451 (head!10670 lt!2052484) Nil!57451)))))

(declare-fun lt!2052693 () Unit!148401)

(assert (=> b!4970704 (= lt!2052693 e!3106743)))

(declare-fun c!848189 () Bool)

(assert (=> b!4970704 (= c!848189 (= (size!38080 Nil!57451) (size!38080 lt!2052484)))))

(declare-fun lt!2052694 () Unit!148401)

(declare-fun lt!2052679 () Unit!148401)

(assert (=> b!4970704 (= lt!2052694 lt!2052679)))

(assert (=> b!4970704 (<= (size!38080 Nil!57451) (size!38080 lt!2052484))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!763 (List!57575 List!57575) Unit!148401)

(assert (=> b!4970704 (= lt!2052679 (lemmaIsPrefixThenSmallerEqSize!763 Nil!57451 lt!2052484))))

(assert (=> b!4970704 (= e!3106748 e!3106742)))

(declare-fun d!1600443 () Bool)

(assert (=> d!1600443 e!3106744))

(declare-fun res!2121680 () Bool)

(assert (=> d!1600443 (=> (not res!2121680) (not e!3106744))))

(assert (=> d!1600443 (= res!2121680 (= (++!12534 (_1!34398 lt!2052682) (_2!34398 lt!2052682)) lt!2052484))))

(declare-fun e!3106747 () tuple2!62190)

(assert (=> d!1600443 (= lt!2052682 e!3106747)))

(declare-fun c!848188 () Bool)

(declare-fun lostCause!1134 (Regex!13628) Bool)

(assert (=> d!1600443 (= c!848188 (lostCause!1134 (regex!8395 (h!63900 rulesArg!259))))))

(declare-fun lt!2052676 () Unit!148401)

(declare-fun Unit!148407 () Unit!148401)

(assert (=> d!1600443 (= lt!2052676 Unit!148407)))

(assert (=> d!1600443 (= (getSuffix!3090 lt!2052484 Nil!57451) lt!2052484)))

(declare-fun lt!2052680 () Unit!148401)

(declare-fun lt!2052671 () Unit!148401)

(assert (=> d!1600443 (= lt!2052680 lt!2052671)))

(declare-fun lt!2052686 () List!57575)

(assert (=> d!1600443 (= lt!2052484 lt!2052686)))

(declare-fun lemmaSamePrefixThenSameSuffix!2502 (List!57575 List!57575 List!57575 List!57575 List!57575) Unit!148401)

(assert (=> d!1600443 (= lt!2052671 (lemmaSamePrefixThenSameSuffix!2502 Nil!57451 lt!2052484 Nil!57451 lt!2052686 lt!2052484))))

(assert (=> d!1600443 (= lt!2052686 (getSuffix!3090 lt!2052484 Nil!57451))))

(declare-fun lt!2052691 () Unit!148401)

(declare-fun lt!2052684 () Unit!148401)

(assert (=> d!1600443 (= lt!2052691 lt!2052684)))

(assert (=> d!1600443 (isPrefix!5246 Nil!57451 (++!12534 Nil!57451 lt!2052484))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3348 (List!57575 List!57575) Unit!148401)

(assert (=> d!1600443 (= lt!2052684 (lemmaConcatTwoListThenFirstIsPrefix!3348 Nil!57451 lt!2052484))))

(assert (=> d!1600443 (validRegex!5971 (regex!8395 (h!63900 rulesArg!259)))))

(assert (=> d!1600443 (= (findLongestMatchInner!1857 (regex!8395 (h!63900 rulesArg!259)) Nil!57451 (size!38080 Nil!57451) lt!2052484 lt!2052484 (size!38080 lt!2052484)) lt!2052682)))

(declare-fun b!4970695 () Bool)

(assert (=> b!4970695 (= e!3106747 (tuple2!62191 Nil!57451 lt!2052484))))

(declare-fun bm!346662 () Bool)

(declare-fun call!346667 () Regex!13628)

(declare-fun derivativeStep!3924 (Regex!13628 C!27506) Regex!13628)

(assert (=> bm!346662 (= call!346667 (derivativeStep!3924 (regex!8395 (h!63900 rulesArg!259)) call!346666))))

(declare-fun bm!346663 () Bool)

(assert (=> bm!346663 (= call!346664 (isPrefix!5246 lt!2052484 lt!2052484))))

(declare-fun b!4970705 () Bool)

(assert (=> b!4970705 (= e!3106747 e!3106748)))

(declare-fun c!848187 () Bool)

(assert (=> b!4970705 (= c!848187 (= (size!38080 Nil!57451) (size!38080 lt!2052484)))))

(declare-fun b!4970706 () Bool)

(assert (=> b!4970706 (= e!3106742 e!3106749)))

(assert (=> b!4970706 (= lt!2052687 call!346669)))

(declare-fun c!848184 () Bool)

(assert (=> b!4970706 (= c!848184 (isEmpty!30949 (_1!34398 lt!2052687)))))

(declare-fun bm!346664 () Bool)

(assert (=> bm!346664 (= call!346669 (findLongestMatchInner!1857 call!346667 lt!2052689 (+ (size!38080 Nil!57451) 1) call!346665 lt!2052484 (size!38080 lt!2052484)))))

(declare-fun b!4970707 () Bool)

(assert (=> b!4970707 (= e!3106745 (tuple2!62191 Nil!57451 lt!2052484))))

(declare-fun bm!346665 () Bool)

(assert (=> bm!346665 (= call!346670 (lemmaIsPrefixRefl!3570 lt!2052484 lt!2052484))))

(declare-fun b!4970708 () Bool)

(declare-fun Unit!148408 () Unit!148401)

(assert (=> b!4970708 (= e!3106743 Unit!148408)))

(declare-fun lt!2052692 () Unit!148401)

(assert (=> b!4970708 (= lt!2052692 call!346670)))

(assert (=> b!4970708 call!346664))

(declare-fun lt!2052696 () Unit!148401)

(assert (=> b!4970708 (= lt!2052696 lt!2052692)))

(declare-fun lt!2052674 () Unit!148401)

(assert (=> b!4970708 (= lt!2052674 call!346668)))

(assert (=> b!4970708 (= lt!2052484 Nil!57451)))

(declare-fun lt!2052685 () Unit!148401)

(assert (=> b!4970708 (= lt!2052685 lt!2052674)))

(assert (=> b!4970708 false))

(assert (= (and d!1600443 c!848188) b!4970695))

(assert (= (and d!1600443 (not c!848188)) b!4970705))

(assert (= (and b!4970705 c!848187) b!4970697))

(assert (= (and b!4970705 (not c!848187)) b!4970704))

(assert (= (and b!4970697 c!848185) b!4970696))

(assert (= (and b!4970697 (not c!848185)) b!4970707))

(assert (= (and b!4970704 c!848189) b!4970708))

(assert (= (and b!4970704 (not c!848189)) b!4970703))

(assert (= (and b!4970704 c!848186) b!4970706))

(assert (= (and b!4970704 (not c!848186)) b!4970699))

(assert (= (and b!4970706 c!848184) b!4970700))

(assert (= (and b!4970706 (not c!848184)) b!4970698))

(assert (= (or b!4970706 b!4970699) bm!346658))

(assert (= (or b!4970706 b!4970699) bm!346661))

(assert (= (or b!4970706 b!4970699) bm!346662))

(assert (= (or b!4970706 b!4970699) bm!346664))

(assert (= (or b!4970697 b!4970708) bm!346665))

(assert (= (or b!4970697 b!4970708) bm!346660))

(assert (= (or b!4970697 b!4970704) bm!346659))

(assert (= (or b!4970697 b!4970708) bm!346663))

(assert (= (and d!1600443 res!2121680) b!4970702))

(assert (= (and b!4970702 (not res!2121681)) b!4970701))

(declare-fun m!5998792 () Bool)

(assert (=> bm!346661 m!5998792))

(declare-fun m!5998794 () Bool)

(assert (=> b!4970701 m!5998794))

(assert (=> b!4970701 m!5998306))

(declare-fun m!5998796 () Bool)

(assert (=> bm!346662 m!5998796))

(declare-fun m!5998798 () Bool)

(assert (=> bm!346658 m!5998798))

(declare-fun m!5998800 () Bool)

(assert (=> b!4970706 m!5998800))

(assert (=> d!1600443 m!5998564))

(declare-fun m!5998802 () Bool)

(assert (=> d!1600443 m!5998802))

(declare-fun m!5998804 () Bool)

(assert (=> d!1600443 m!5998804))

(assert (=> d!1600443 m!5998802))

(declare-fun m!5998806 () Bool)

(assert (=> d!1600443 m!5998806))

(declare-fun m!5998808 () Bool)

(assert (=> d!1600443 m!5998808))

(declare-fun m!5998810 () Bool)

(assert (=> d!1600443 m!5998810))

(declare-fun m!5998812 () Bool)

(assert (=> d!1600443 m!5998812))

(declare-fun m!5998814 () Bool)

(assert (=> d!1600443 m!5998814))

(declare-fun m!5998816 () Bool)

(assert (=> bm!346660 m!5998816))

(assert (=> bm!346659 m!5998616))

(assert (=> bm!346664 m!5998308))

(declare-fun m!5998818 () Bool)

(assert (=> bm!346664 m!5998818))

(declare-fun m!5998820 () Bool)

(assert (=> b!4970702 m!5998820))

(declare-fun m!5998822 () Bool)

(assert (=> b!4970704 m!5998822))

(declare-fun m!5998824 () Bool)

(assert (=> b!4970704 m!5998824))

(assert (=> b!4970704 m!5998822))

(declare-fun m!5998826 () Bool)

(assert (=> b!4970704 m!5998826))

(assert (=> b!4970704 m!5998308))

(assert (=> b!4970704 m!5998792))

(assert (=> b!4970704 m!5998804))

(declare-fun m!5998828 () Bool)

(assert (=> b!4970704 m!5998828))

(declare-fun m!5998830 () Bool)

(assert (=> b!4970704 m!5998830))

(declare-fun m!5998832 () Bool)

(assert (=> b!4970704 m!5998832))

(declare-fun m!5998834 () Bool)

(assert (=> b!4970704 m!5998834))

(assert (=> b!4970704 m!5998824))

(declare-fun m!5998836 () Bool)

(assert (=> b!4970704 m!5998836))

(assert (=> b!4970704 m!5998798))

(assert (=> b!4970704 m!5998306))

(assert (=> b!4970704 m!5998804))

(declare-fun m!5998838 () Bool)

(assert (=> b!4970704 m!5998838))

(declare-fun m!5998840 () Bool)

(assert (=> bm!346665 m!5998840))

(declare-fun m!5998842 () Bool)

(assert (=> bm!346663 m!5998842))

(assert (=> b!4970325 d!1600443))

(declare-fun d!1600445 () Bool)

(declare-fun lt!2052697 () Int)

(assert (=> d!1600445 (>= lt!2052697 0)))

(declare-fun e!3106750 () Int)

(assert (=> d!1600445 (= lt!2052697 e!3106750)))

(declare-fun c!848190 () Bool)

(assert (=> d!1600445 (= c!848190 (is-Nil!57451 Nil!57451))))

(assert (=> d!1600445 (= (size!38080 Nil!57451) lt!2052697)))

(declare-fun b!4970709 () Bool)

(assert (=> b!4970709 (= e!3106750 0)))

(declare-fun b!4970710 () Bool)

(assert (=> b!4970710 (= e!3106750 (+ 1 (size!38080 (t!369029 Nil!57451))))))

(assert (= (and d!1600445 c!848190) b!4970709))

(assert (= (and d!1600445 (not c!848190)) b!4970710))

(declare-fun m!5998844 () Bool)

(assert (=> b!4970710 m!5998844))

(assert (=> b!4970325 d!1600445))

(declare-fun d!1600447 () Bool)

(declare-fun e!3106753 () Bool)

(assert (=> d!1600447 e!3106753))

(declare-fun res!2121689 () Bool)

(assert (=> d!1600447 (=> (not res!2121689) (not e!3106753))))

(assert (=> d!1600447 (= res!2121689 (semiInverseModEq!3702 (toChars!11217 (transformation!8395 (h!63900 rulesArg!259))) (toValue!11358 (transformation!8395 (h!63900 rulesArg!259)))))))

(declare-fun Unit!148409 () Unit!148401)

(assert (=> d!1600447 (= (lemmaInv!1336 (transformation!8395 (h!63900 rulesArg!259))) Unit!148409)))

(declare-fun b!4970713 () Bool)

(assert (=> b!4970713 (= e!3106753 (equivClasses!3550 (toChars!11217 (transformation!8395 (h!63900 rulesArg!259))) (toValue!11358 (transformation!8395 (h!63900 rulesArg!259)))))))

(assert (= (and d!1600447 res!2121689) b!4970713))

(assert (=> d!1600447 m!5998216))

(assert (=> b!4970713 m!5998218))

(assert (=> b!4970325 d!1600447))

(declare-fun d!1600449 () Bool)

(declare-fun e!3106756 () Bool)

(assert (=> d!1600449 e!3106756))

(declare-fun res!2121695 () Bool)

(assert (=> d!1600449 (=> res!2121695 e!3106756)))

(assert (=> d!1600449 (= res!2121695 (isEmpty!30949 (_1!34398 (findLongestMatchInner!1857 (regex!8395 (h!63900 rulesArg!259)) Nil!57451 (size!38080 Nil!57451) lt!2052484 lt!2052484 (size!38080 lt!2052484)))))))

(declare-fun lt!2052700 () Unit!148401)

(declare-fun choose!36698 (Regex!13628 List!57575) Unit!148401)

(assert (=> d!1600449 (= lt!2052700 (choose!36698 (regex!8395 (h!63900 rulesArg!259)) lt!2052484))))

(assert (=> d!1600449 (validRegex!5971 (regex!8395 (h!63900 rulesArg!259)))))

(assert (=> d!1600449 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1818 (regex!8395 (h!63900 rulesArg!259)) lt!2052484) lt!2052700)))

(declare-fun b!4970716 () Bool)

(assert (=> b!4970716 (= e!3106756 (matchR!6638 (regex!8395 (h!63900 rulesArg!259)) (_1!34398 (findLongestMatchInner!1857 (regex!8395 (h!63900 rulesArg!259)) Nil!57451 (size!38080 Nil!57451) lt!2052484 lt!2052484 (size!38080 lt!2052484)))))))

(assert (= (and d!1600449 (not res!2121695)) b!4970716))

(assert (=> d!1600449 m!5998326))

(assert (=> d!1600449 m!5998306))

(assert (=> d!1600449 m!5998564))

(assert (=> d!1600449 m!5998306))

(assert (=> d!1600449 m!5998308))

(assert (=> d!1600449 m!5998310))

(assert (=> d!1600449 m!5998308))

(declare-fun m!5998846 () Bool)

(assert (=> d!1600449 m!5998846))

(assert (=> b!4970716 m!5998306))

(assert (=> b!4970716 m!5998308))

(assert (=> b!4970716 m!5998306))

(assert (=> b!4970716 m!5998308))

(assert (=> b!4970716 m!5998310))

(assert (=> b!4970716 m!5998312))

(assert (=> b!4970325 d!1600449))

(declare-fun d!1600451 () Bool)

(assert (=> d!1600451 (= (isEmpty!30949 (_1!34398 (findLongestMatchInner!1857 (regex!8395 (h!63900 rulesArg!259)) Nil!57451 (size!38080 Nil!57451) lt!2052484 lt!2052484 (size!38080 lt!2052484)))) (is-Nil!57451 (_1!34398 (findLongestMatchInner!1857 (regex!8395 (h!63900 rulesArg!259)) Nil!57451 (size!38080 Nil!57451) lt!2052484 lt!2052484 (size!38080 lt!2052484)))))))

(assert (=> b!4970325 d!1600451))

(declare-fun d!1600453 () Bool)

(assert (=> d!1600453 (= (seqFromList!6038 (list!18371 (_1!34397 lt!2052478))) (fromListB!2733 (list!18371 (_1!34397 lt!2052478))))))

(declare-fun bs!1183514 () Bool)

(assert (= bs!1183514 d!1600453))

(assert (=> bs!1183514 m!5998332))

(declare-fun m!5998848 () Bool)

(assert (=> bs!1183514 m!5998848))

(assert (=> b!4970325 d!1600453))

(assert (=> b!4970325 d!1600273))

(declare-fun d!1600455 () Bool)

(assert (=> d!1600455 (= (list!18371 (_1!34397 lt!2052478)) (list!18373 (c!848111 (_1!34397 lt!2052478))))))

(declare-fun bs!1183515 () Bool)

(assert (= bs!1183515 d!1600455))

(declare-fun m!5998850 () Bool)

(assert (=> bs!1183515 m!5998850))

(assert (=> b!4970325 d!1600455))

(declare-fun b!4970723 () Bool)

(declare-fun e!3106761 () Bool)

(assert (=> b!4970723 (= e!3106761 true)))

(declare-fun d!1600457 () Bool)

(assert (=> d!1600457 e!3106761))

(assert (= d!1600457 b!4970723))

(declare-fun lambda!247438 () Int)

(declare-fun order!26231 () Int)

(declare-fun dynLambda!23187 (Int Int) Int)

(assert (=> b!4970723 (< (dynLambda!23177 order!26219 (toValue!11358 (transformation!8395 (h!63900 rulesArg!259)))) (dynLambda!23187 order!26231 lambda!247438))))

(assert (=> b!4970723 (< (dynLambda!23179 order!26223 (toChars!11217 (transformation!8395 (h!63900 rulesArg!259)))) (dynLambda!23187 order!26231 lambda!247438))))

(assert (=> d!1600457 (= (dynLambda!23185 (toValue!11358 (transformation!8395 (h!63900 rulesArg!259))) (_1!34397 lt!2052478)) (dynLambda!23185 (toValue!11358 (transformation!8395 (h!63900 rulesArg!259))) (seqFromList!6038 (list!18371 (_1!34397 lt!2052478)))))))

(declare-fun lt!2052703 () Unit!148401)

(declare-fun Forall2of!479 (Int BalanceConc!29724 BalanceConc!29724) Unit!148401)

(assert (=> d!1600457 (= lt!2052703 (Forall2of!479 lambda!247438 (_1!34397 lt!2052478) (seqFromList!6038 (list!18371 (_1!34397 lt!2052478)))))))

(assert (=> d!1600457 (= (list!18371 (_1!34397 lt!2052478)) (list!18371 (seqFromList!6038 (list!18371 (_1!34397 lt!2052478)))))))

(assert (=> d!1600457 (= (lemmaEqSameImage!1170 (transformation!8395 (h!63900 rulesArg!259)) (_1!34397 lt!2052478) (seqFromList!6038 (list!18371 (_1!34397 lt!2052478)))) lt!2052703)))

(declare-fun b_lambda!197149 () Bool)

(assert (=> (not b_lambda!197149) (not d!1600457)))

(declare-fun t!369045 () Bool)

(declare-fun tb!261003 () Bool)

(assert (=> (and b!4970138 (= (toValue!11358 (transformation!8395 (h!63900 rulesArg!259))) (toValue!11358 (transformation!8395 (h!63900 rulesArg!259)))) t!369045) tb!261003))

(declare-fun result!326138 () Bool)

(assert (=> tb!261003 (= result!326138 (inv!21 (dynLambda!23185 (toValue!11358 (transformation!8395 (h!63900 rulesArg!259))) (_1!34397 lt!2052478))))))

(declare-fun m!5998852 () Bool)

(assert (=> tb!261003 m!5998852))

(assert (=> d!1600457 t!369045))

(declare-fun b_and!348627 () Bool)

(assert (= b_and!348623 (and (=> t!369045 result!326138) b_and!348627)))

(declare-fun t!369047 () Bool)

(declare-fun tb!261005 () Bool)

(assert (=> (and b!4970352 (= (toValue!11358 (transformation!8395 (h!63900 (t!369030 rulesArg!259)))) (toValue!11358 (transformation!8395 (h!63900 rulesArg!259)))) t!369047) tb!261005))

(declare-fun result!326140 () Bool)

(assert (= result!326140 result!326138))

(assert (=> d!1600457 t!369047))

(declare-fun b_and!348629 () Bool)

(assert (= b_and!348625 (and (=> t!369047 result!326140) b_and!348629)))

(declare-fun b_lambda!197151 () Bool)

(assert (=> (not b_lambda!197151) (not d!1600457)))

(declare-fun t!369049 () Bool)

(declare-fun tb!261007 () Bool)

(assert (=> (and b!4970138 (= (toValue!11358 (transformation!8395 (h!63900 rulesArg!259))) (toValue!11358 (transformation!8395 (h!63900 rulesArg!259)))) t!369049) tb!261007))

(declare-fun result!326142 () Bool)

(assert (=> tb!261007 (= result!326142 (inv!21 (dynLambda!23185 (toValue!11358 (transformation!8395 (h!63900 rulesArg!259))) (seqFromList!6038 (list!18371 (_1!34397 lt!2052478))))))))

(declare-fun m!5998854 () Bool)

(assert (=> tb!261007 m!5998854))

(assert (=> d!1600457 t!369049))

(declare-fun b_and!348631 () Bool)

(assert (= b_and!348627 (and (=> t!369049 result!326142) b_and!348631)))

(declare-fun t!369051 () Bool)

(declare-fun tb!261009 () Bool)

(assert (=> (and b!4970352 (= (toValue!11358 (transformation!8395 (h!63900 (t!369030 rulesArg!259)))) (toValue!11358 (transformation!8395 (h!63900 rulesArg!259)))) t!369051) tb!261009))

(declare-fun result!326144 () Bool)

(assert (= result!326144 result!326142))

(assert (=> d!1600457 t!369051))

(declare-fun b_and!348633 () Bool)

(assert (= b_and!348629 (and (=> t!369051 result!326144) b_and!348633)))

(assert (=> d!1600457 m!5998318))

(declare-fun m!5998856 () Bool)

(assert (=> d!1600457 m!5998856))

(assert (=> d!1600457 m!5998318))

(declare-fun m!5998858 () Bool)

(assert (=> d!1600457 m!5998858))

(assert (=> d!1600457 m!5998318))

(declare-fun m!5998860 () Bool)

(assert (=> d!1600457 m!5998860))

(declare-fun m!5998862 () Bool)

(assert (=> d!1600457 m!5998862))

(assert (=> d!1600457 m!5998332))

(assert (=> b!4970325 d!1600457))

(declare-fun d!1600459 () Bool)

(declare-fun lt!2052704 () Int)

(assert (=> d!1600459 (>= lt!2052704 0)))

(declare-fun e!3106764 () Int)

(assert (=> d!1600459 (= lt!2052704 e!3106764)))

(declare-fun c!848191 () Bool)

(assert (=> d!1600459 (= c!848191 (is-Nil!57451 lt!2052484))))

(assert (=> d!1600459 (= (size!38080 lt!2052484) lt!2052704)))

(declare-fun b!4970724 () Bool)

(assert (=> b!4970724 (= e!3106764 0)))

(declare-fun b!4970725 () Bool)

(assert (=> b!4970725 (= e!3106764 (+ 1 (size!38080 (t!369029 lt!2052484))))))

(assert (= (and d!1600459 c!848191) b!4970724))

(assert (= (and d!1600459 (not c!848191)) b!4970725))

(declare-fun m!5998864 () Bool)

(assert (=> b!4970725 m!5998864))

(assert (=> b!4970325 d!1600459))

(declare-fun d!1600461 () Bool)

(assert (=> d!1600461 (= (apply!13906 (transformation!8395 (h!63900 rulesArg!259)) (_1!34397 lt!2052478)) (dynLambda!23185 (toValue!11358 (transformation!8395 (h!63900 rulesArg!259))) (_1!34397 lt!2052478)))))

(declare-fun b_lambda!197153 () Bool)

(assert (=> (not b_lambda!197153) (not d!1600461)))

(assert (=> d!1600461 t!369045))

(declare-fun b_and!348635 () Bool)

(assert (= b_and!348631 (and (=> t!369045 result!326138) b_and!348635)))

(assert (=> d!1600461 t!369047))

(declare-fun b_and!348637 () Bool)

(assert (= b_and!348633 (and (=> t!369047 result!326140) b_and!348637)))

(assert (=> d!1600461 m!5998862))

(assert (=> b!4970325 d!1600461))

(declare-fun d!1600463 () Bool)

(assert (=> d!1600463 (dynLambda!23186 lambda!247422 (_1!34397 lt!2052478))))

(declare-fun lt!2052705 () Unit!148401)

(assert (=> d!1600463 (= lt!2052705 (choose!36697 lambda!247422 (_1!34397 lt!2052478)))))

(assert (=> d!1600463 (Forall!1764 lambda!247422)))

(assert (=> d!1600463 (= (ForallOf!1229 lambda!247422 (_1!34397 lt!2052478)) lt!2052705)))

(declare-fun b_lambda!197155 () Bool)

(assert (=> (not b_lambda!197155) (not d!1600463)))

(declare-fun bs!1183516 () Bool)

(assert (= bs!1183516 d!1600463))

(declare-fun m!5998866 () Bool)

(assert (=> bs!1183516 m!5998866))

(declare-fun m!5998868 () Bool)

(assert (=> bs!1183516 m!5998868))

(assert (=> bs!1183516 m!5998786))

(assert (=> b!4970325 d!1600463))

(assert (=> b!4970306 d!1600363))

(assert (=> b!4970139 d!1600305))

(declare-fun d!1600465 () Bool)

(assert (=> d!1600465 (= (inv!75097 (xs!18473 (c!848111 totalInput!464))) (<= (size!38080 (innerList!15235 (xs!18473 (c!848111 totalInput!464)))) 2147483647))))

(declare-fun bs!1183517 () Bool)

(assert (= bs!1183517 d!1600465))

(declare-fun m!5998870 () Bool)

(assert (=> bs!1183517 m!5998870))

(assert (=> b!4970379 d!1600465))

(assert (=> b!4970279 d!1600391))

(declare-fun b!4970726 () Bool)

(declare-fun res!2121707 () Bool)

(declare-fun e!3106765 () Bool)

(assert (=> b!4970726 (=> (not res!2121707) (not e!3106765))))

(assert (=> b!4970726 (= res!2121707 (isBalanced!4204 (right!42237 (c!848111 input!1342))))))

(declare-fun b!4970727 () Bool)

(assert (=> b!4970727 (= e!3106765 (not (isEmpty!30955 (right!42237 (c!848111 input!1342)))))))

(declare-fun b!4970728 () Bool)

(declare-fun res!2121709 () Bool)

(assert (=> b!4970728 (=> (not res!2121709) (not e!3106765))))

(assert (=> b!4970728 (= res!2121709 (<= (- (height!2015 (left!41907 (c!848111 input!1342))) (height!2015 (right!42237 (c!848111 input!1342)))) 1))))

(declare-fun b!4970729 () Bool)

(declare-fun res!2121708 () Bool)

(assert (=> b!4970729 (=> (not res!2121708) (not e!3106765))))

(assert (=> b!4970729 (= res!2121708 (isBalanced!4204 (left!41907 (c!848111 input!1342))))))

(declare-fun d!1600467 () Bool)

(declare-fun res!2121712 () Bool)

(declare-fun e!3106766 () Bool)

(assert (=> d!1600467 (=> res!2121712 e!3106766)))

(assert (=> d!1600467 (= res!2121712 (not (is-Node!15147 (c!848111 input!1342))))))

(assert (=> d!1600467 (= (isBalanced!4204 (c!848111 input!1342)) e!3106766)))

(declare-fun b!4970730 () Bool)

(declare-fun res!2121710 () Bool)

(assert (=> b!4970730 (=> (not res!2121710) (not e!3106765))))

(assert (=> b!4970730 (= res!2121710 (not (isEmpty!30955 (left!41907 (c!848111 input!1342)))))))

(declare-fun b!4970731 () Bool)

(assert (=> b!4970731 (= e!3106766 e!3106765)))

(declare-fun res!2121711 () Bool)

(assert (=> b!4970731 (=> (not res!2121711) (not e!3106765))))

(assert (=> b!4970731 (= res!2121711 (<= (- 1) (- (height!2015 (left!41907 (c!848111 input!1342))) (height!2015 (right!42237 (c!848111 input!1342))))))))

(assert (= (and d!1600467 (not res!2121712)) b!4970731))

(assert (= (and b!4970731 res!2121711) b!4970728))

(assert (= (and b!4970728 res!2121709) b!4970729))

(assert (= (and b!4970729 res!2121708) b!4970726))

(assert (= (and b!4970726 res!2121707) b!4970730))

(assert (= (and b!4970730 res!2121710) b!4970727))

(assert (=> b!4970728 m!5998534))

(assert (=> b!4970728 m!5998536))

(declare-fun m!5998872 () Bool)

(assert (=> b!4970727 m!5998872))

(declare-fun m!5998874 () Bool)

(assert (=> b!4970726 m!5998874))

(assert (=> b!4970731 m!5998534))

(assert (=> b!4970731 m!5998536))

(declare-fun m!5998876 () Bool)

(assert (=> b!4970729 m!5998876))

(declare-fun m!5998878 () Bool)

(assert (=> b!4970730 m!5998878))

(assert (=> d!1600281 d!1600467))

(declare-fun d!1600469 () Bool)

(declare-fun e!3106768 () Bool)

(assert (=> d!1600469 e!3106768))

(declare-fun res!2121716 () Bool)

(assert (=> d!1600469 (=> res!2121716 e!3106768)))

(declare-fun lt!2052706 () Bool)

(assert (=> d!1600469 (= res!2121716 (not lt!2052706))))

(declare-fun e!3106769 () Bool)

(assert (=> d!1600469 (= lt!2052706 e!3106769)))

(declare-fun res!2121715 () Bool)

(assert (=> d!1600469 (=> res!2121715 e!3106769)))

(assert (=> d!1600469 (= res!2121715 (is-Nil!57451 (tail!9803 lt!2052315)))))

(assert (=> d!1600469 (= (isPrefix!5246 (tail!9803 lt!2052315) (tail!9803 lt!2052315)) lt!2052706)))

(declare-fun b!4970734 () Bool)

(declare-fun e!3106767 () Bool)

(assert (=> b!4970734 (= e!3106767 (isPrefix!5246 (tail!9803 (tail!9803 lt!2052315)) (tail!9803 (tail!9803 lt!2052315))))))

(declare-fun b!4970733 () Bool)

(declare-fun res!2121713 () Bool)

(assert (=> b!4970733 (=> (not res!2121713) (not e!3106767))))

(assert (=> b!4970733 (= res!2121713 (= (head!10670 (tail!9803 lt!2052315)) (head!10670 (tail!9803 lt!2052315))))))

(declare-fun b!4970732 () Bool)

(assert (=> b!4970732 (= e!3106769 e!3106767)))

(declare-fun res!2121714 () Bool)

(assert (=> b!4970732 (=> (not res!2121714) (not e!3106767))))

(assert (=> b!4970732 (= res!2121714 (not (is-Nil!57451 (tail!9803 lt!2052315))))))

(declare-fun b!4970735 () Bool)

(assert (=> b!4970735 (= e!3106768 (>= (size!38080 (tail!9803 lt!2052315)) (size!38080 (tail!9803 lt!2052315))))))

(assert (= (and d!1600469 (not res!2121715)) b!4970732))

(assert (= (and b!4970732 res!2121714) b!4970733))

(assert (= (and b!4970733 res!2121713) b!4970734))

(assert (= (and d!1600469 (not res!2121716)) b!4970735))

(assert (=> b!4970734 m!5998166))

(declare-fun m!5998880 () Bool)

(assert (=> b!4970734 m!5998880))

(assert (=> b!4970734 m!5998166))

(assert (=> b!4970734 m!5998880))

(assert (=> b!4970734 m!5998880))

(assert (=> b!4970734 m!5998880))

(declare-fun m!5998882 () Bool)

(assert (=> b!4970734 m!5998882))

(assert (=> b!4970733 m!5998166))

(declare-fun m!5998884 () Bool)

(assert (=> b!4970733 m!5998884))

(assert (=> b!4970733 m!5998166))

(assert (=> b!4970733 m!5998884))

(assert (=> b!4970735 m!5998166))

(declare-fun m!5998886 () Bool)

(assert (=> b!4970735 m!5998886))

(assert (=> b!4970735 m!5998166))

(assert (=> b!4970735 m!5998886))

(assert (=> b!4970201 d!1600469))

(declare-fun d!1600471 () Bool)

(assert (=> d!1600471 (= (tail!9803 lt!2052315) (t!369029 lt!2052315))))

(assert (=> b!4970201 d!1600471))

(declare-fun b!4970739 () Bool)

(declare-fun e!3106771 () List!57575)

(assert (=> b!4970739 (= e!3106771 (++!12534 (list!18373 (left!41907 (c!848111 (_2!34393 lt!2052313)))) (list!18373 (right!42237 (c!848111 (_2!34393 lt!2052313))))))))

(declare-fun b!4970736 () Bool)

(declare-fun e!3106770 () List!57575)

(assert (=> b!4970736 (= e!3106770 Nil!57451)))

(declare-fun d!1600473 () Bool)

(declare-fun c!848192 () Bool)

(assert (=> d!1600473 (= c!848192 (is-Empty!15147 (c!848111 (_2!34393 lt!2052313))))))

(assert (=> d!1600473 (= (list!18373 (c!848111 (_2!34393 lt!2052313))) e!3106770)))

(declare-fun b!4970738 () Bool)

(assert (=> b!4970738 (= e!3106771 (list!18375 (xs!18473 (c!848111 (_2!34393 lt!2052313)))))))

(declare-fun b!4970737 () Bool)

(assert (=> b!4970737 (= e!3106770 e!3106771)))

(declare-fun c!848193 () Bool)

(assert (=> b!4970737 (= c!848193 (is-Leaf!25170 (c!848111 (_2!34393 lt!2052313))))))

(assert (= (and d!1600473 c!848192) b!4970736))

(assert (= (and d!1600473 (not c!848192)) b!4970737))

(assert (= (and b!4970737 c!848193) b!4970738))

(assert (= (and b!4970737 (not c!848193)) b!4970739))

(declare-fun m!5998888 () Bool)

(assert (=> b!4970739 m!5998888))

(declare-fun m!5998890 () Bool)

(assert (=> b!4970739 m!5998890))

(assert (=> b!4970739 m!5998888))

(assert (=> b!4970739 m!5998890))

(declare-fun m!5998892 () Bool)

(assert (=> b!4970739 m!5998892))

(declare-fun m!5998894 () Bool)

(assert (=> b!4970738 m!5998894))

(assert (=> d!1600297 d!1600473))

(declare-fun bs!1183518 () Bool)

(declare-fun d!1600475 () Bool)

(assert (= bs!1183518 (and d!1600475 d!1600457)))

(declare-fun lambda!247441 () Int)

(assert (=> bs!1183518 (= lambda!247441 lambda!247438)))

(assert (=> d!1600475 true))

(assert (=> d!1600475 (< (dynLambda!23177 order!26219 (toValue!11358 (transformation!8395 (h!63900 rulesArg!259)))) (dynLambda!23187 order!26231 lambda!247441))))

(declare-fun Forall2!1289 (Int) Bool)

(assert (=> d!1600475 (= (equivClasses!3550 (toChars!11217 (transformation!8395 (h!63900 rulesArg!259))) (toValue!11358 (transformation!8395 (h!63900 rulesArg!259)))) (Forall2!1289 lambda!247441))))

(declare-fun bs!1183519 () Bool)

(assert (= bs!1183519 d!1600475))

(declare-fun m!5998896 () Bool)

(assert (=> bs!1183519 m!5998896))

(assert (=> b!4970244 d!1600475))

(declare-fun d!1600477 () Bool)

(declare-fun lt!2052709 () Bool)

(declare-fun content!10187 (List!57576) (Set Rule!16590))

(assert (=> d!1600477 (= lt!2052709 (set.member (rule!11645 (_1!34394 (get!19945 lt!2052376))) (content!10187 rulesArg!259)))))

(declare-fun e!3106778 () Bool)

(assert (=> d!1600477 (= lt!2052709 e!3106778)))

(declare-fun res!2121723 () Bool)

(assert (=> d!1600477 (=> (not res!2121723) (not e!3106778))))

(assert (=> d!1600477 (= res!2121723 (is-Cons!57452 rulesArg!259))))

(assert (=> d!1600477 (= (contains!19540 rulesArg!259 (rule!11645 (_1!34394 (get!19945 lt!2052376)))) lt!2052709)))

(declare-fun b!4970748 () Bool)

(declare-fun e!3106779 () Bool)

(assert (=> b!4970748 (= e!3106778 e!3106779)))

(declare-fun res!2121724 () Bool)

(assert (=> b!4970748 (=> res!2121724 e!3106779)))

(assert (=> b!4970748 (= res!2121724 (= (h!63900 rulesArg!259) (rule!11645 (_1!34394 (get!19945 lt!2052376)))))))

(declare-fun b!4970749 () Bool)

(assert (=> b!4970749 (= e!3106779 (contains!19540 (t!369030 rulesArg!259) (rule!11645 (_1!34394 (get!19945 lt!2052376)))))))

(assert (= (and d!1600477 res!2121723) b!4970748))

(assert (= (and b!4970748 (not res!2121724)) b!4970749))

(declare-fun m!5998898 () Bool)

(assert (=> d!1600477 m!5998898))

(declare-fun m!5998900 () Bool)

(assert (=> d!1600477 m!5998900))

(declare-fun m!5998902 () Bool)

(assert (=> b!4970749 m!5998902))

(assert (=> b!4970237 d!1600477))

(assert (=> b!4970237 d!1600415))

(assert (=> d!1600295 d!1600265))

(assert (=> d!1600295 d!1600255))

(assert (=> d!1600295 d!1600257))

(assert (=> d!1600295 d!1600285))

(declare-fun b!4970750 () Bool)

(declare-fun e!3106781 () Option!14453)

(declare-fun call!346671 () Option!14453)

(assert (=> b!4970750 (= e!3106781 call!346671)))

(declare-fun b!4970751 () Bool)

(declare-fun res!2121727 () Bool)

(declare-fun e!3106780 () Bool)

(assert (=> b!4970751 (=> (not res!2121727) (not e!3106780))))

(declare-fun lt!2052713 () Option!14453)

(assert (=> b!4970751 (= res!2121727 (= (value!268699 (_1!34394 (get!19945 lt!2052713))) (apply!13906 (transformation!8395 (rule!11645 (_1!34394 (get!19945 lt!2052713)))) (seqFromList!6038 (originalCharacters!8674 (_1!34394 (get!19945 lt!2052713)))))))))

(declare-fun b!4970752 () Bool)

(declare-fun res!2121729 () Bool)

(assert (=> b!4970752 (=> (not res!2121729) (not e!3106780))))

(assert (=> b!4970752 (= res!2121729 (matchR!6638 (regex!8395 (rule!11645 (_1!34394 (get!19945 lt!2052713)))) (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052713))))))))

(declare-fun b!4970753 () Bool)

(declare-fun res!2121726 () Bool)

(assert (=> b!4970753 (=> (not res!2121726) (not e!3106780))))

(assert (=> b!4970753 (= res!2121726 (< (size!38080 (_2!34394 (get!19945 lt!2052713))) (size!38080 lt!2052315)))))

(declare-fun d!1600479 () Bool)

(declare-fun e!3106782 () Bool)

(assert (=> d!1600479 e!3106782))

(declare-fun res!2121731 () Bool)

(assert (=> d!1600479 (=> res!2121731 e!3106782)))

(assert (=> d!1600479 (= res!2121731 (isEmpty!30947 lt!2052713))))

(assert (=> d!1600479 (= lt!2052713 e!3106781)))

(declare-fun c!848194 () Bool)

(assert (=> d!1600479 (= c!848194 (and (is-Cons!57452 (t!369030 rulesArg!259)) (is-Nil!57452 (t!369030 (t!369030 rulesArg!259)))))))

(declare-fun lt!2052712 () Unit!148401)

(declare-fun lt!2052714 () Unit!148401)

(assert (=> d!1600479 (= lt!2052712 lt!2052714)))

(assert (=> d!1600479 (isPrefix!5246 lt!2052315 lt!2052315)))

(assert (=> d!1600479 (= lt!2052714 (lemmaIsPrefixRefl!3570 lt!2052315 lt!2052315))))

(assert (=> d!1600479 (rulesValidInductive!3298 thiss!15247 (t!369030 rulesArg!259))))

(assert (=> d!1600479 (= (maxPrefix!4662 thiss!15247 (t!369030 rulesArg!259) lt!2052315) lt!2052713)))

(declare-fun b!4970754 () Bool)

(declare-fun lt!2052710 () Option!14453)

(declare-fun lt!2052711 () Option!14453)

(assert (=> b!4970754 (= e!3106781 (ite (and (is-None!14452 lt!2052710) (is-None!14452 lt!2052711)) None!14452 (ite (is-None!14452 lt!2052711) lt!2052710 (ite (is-None!14452 lt!2052710) lt!2052711 (ite (>= (size!38078 (_1!34394 (v!50443 lt!2052710))) (size!38078 (_1!34394 (v!50443 lt!2052711)))) lt!2052710 lt!2052711)))))))

(assert (=> b!4970754 (= lt!2052710 call!346671)))

(assert (=> b!4970754 (= lt!2052711 (maxPrefix!4662 thiss!15247 (t!369030 (t!369030 rulesArg!259)) lt!2052315))))

(declare-fun b!4970755 () Bool)

(declare-fun res!2121728 () Bool)

(assert (=> b!4970755 (=> (not res!2121728) (not e!3106780))))

(assert (=> b!4970755 (= res!2121728 (= (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052713)))) (originalCharacters!8674 (_1!34394 (get!19945 lt!2052713)))))))

(declare-fun b!4970756 () Bool)

(declare-fun res!2121725 () Bool)

(assert (=> b!4970756 (=> (not res!2121725) (not e!3106780))))

(assert (=> b!4970756 (= res!2121725 (= (++!12534 (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052713)))) (_2!34394 (get!19945 lt!2052713))) lt!2052315))))

(declare-fun bm!346666 () Bool)

(assert (=> bm!346666 (= call!346671 (maxPrefixOneRule!3631 thiss!15247 (h!63900 (t!369030 rulesArg!259)) lt!2052315))))

(declare-fun b!4970757 () Bool)

(assert (=> b!4970757 (= e!3106780 (contains!19540 (t!369030 rulesArg!259) (rule!11645 (_1!34394 (get!19945 lt!2052713)))))))

(declare-fun b!4970758 () Bool)

(assert (=> b!4970758 (= e!3106782 e!3106780)))

(declare-fun res!2121730 () Bool)

(assert (=> b!4970758 (=> (not res!2121730) (not e!3106780))))

(assert (=> b!4970758 (= res!2121730 (isDefined!11366 lt!2052713))))

(assert (= (and d!1600479 c!848194) b!4970750))

(assert (= (and d!1600479 (not c!848194)) b!4970754))

(assert (= (or b!4970750 b!4970754) bm!346666))

(assert (= (and d!1600479 (not res!2121731)) b!4970758))

(assert (= (and b!4970758 res!2121730) b!4970755))

(assert (= (and b!4970755 res!2121728) b!4970753))

(assert (= (and b!4970753 res!2121726) b!4970756))

(assert (= (and b!4970756 res!2121725) b!4970751))

(assert (= (and b!4970751 res!2121727) b!4970752))

(assert (= (and b!4970752 res!2121729) b!4970757))

(declare-fun m!5998904 () Bool)

(assert (=> b!4970753 m!5998904))

(declare-fun m!5998906 () Bool)

(assert (=> b!4970753 m!5998906))

(assert (=> b!4970753 m!5998172))

(declare-fun m!5998908 () Bool)

(assert (=> b!4970754 m!5998908))

(assert (=> b!4970752 m!5998904))

(declare-fun m!5998910 () Bool)

(assert (=> b!4970752 m!5998910))

(assert (=> b!4970752 m!5998910))

(declare-fun m!5998912 () Bool)

(assert (=> b!4970752 m!5998912))

(assert (=> b!4970752 m!5998912))

(declare-fun m!5998914 () Bool)

(assert (=> b!4970752 m!5998914))

(declare-fun m!5998916 () Bool)

(assert (=> b!4970758 m!5998916))

(declare-fun m!5998918 () Bool)

(assert (=> bm!346666 m!5998918))

(assert (=> b!4970757 m!5998904))

(declare-fun m!5998920 () Bool)

(assert (=> b!4970757 m!5998920))

(assert (=> b!4970755 m!5998904))

(assert (=> b!4970755 m!5998910))

(assert (=> b!4970755 m!5998910))

(assert (=> b!4970755 m!5998912))

(declare-fun m!5998922 () Bool)

(assert (=> d!1600479 m!5998922))

(assert (=> d!1600479 m!5998096))

(assert (=> d!1600479 m!5998098))

(assert (=> d!1600479 m!5998254))

(assert (=> b!4970751 m!5998904))

(declare-fun m!5998924 () Bool)

(assert (=> b!4970751 m!5998924))

(assert (=> b!4970751 m!5998924))

(declare-fun m!5998926 () Bool)

(assert (=> b!4970751 m!5998926))

(assert (=> b!4970756 m!5998904))

(assert (=> b!4970756 m!5998910))

(assert (=> b!4970756 m!5998910))

(assert (=> b!4970756 m!5998912))

(assert (=> b!4970756 m!5998912))

(declare-fun m!5998928 () Bool)

(assert (=> b!4970756 m!5998928))

(assert (=> b!4970234 d!1600479))

(declare-fun d!1600481 () Bool)

(declare-fun lt!2052731 () Option!14453)

(assert (=> d!1600481 (= lt!2052731 (maxPrefixOneRule!3631 thiss!15247 (h!63900 rulesArg!259) lt!2052315))))

(declare-fun e!3106787 () Option!14453)

(assert (=> d!1600481 (= lt!2052731 e!3106787)))

(declare-fun c!848197 () Bool)

(declare-fun lt!2052727 () tuple2!62190)

(assert (=> d!1600481 (= c!848197 (isEmpty!30949 (_1!34398 lt!2052727)))))

(declare-fun findLongestMatchWithZipper!96 (Regex!13628 List!57575) tuple2!62190)

(assert (=> d!1600481 (= lt!2052727 (findLongestMatchWithZipper!96 (regex!8395 (h!63900 rulesArg!259)) lt!2052315))))

(assert (=> d!1600481 (ruleValid!3804 thiss!15247 (h!63900 rulesArg!259))))

(assert (=> d!1600481 (= (maxPrefixOneRuleZipper!298 thiss!15247 (h!63900 rulesArg!259) lt!2052315) lt!2052731)))

(declare-fun b!4970765 () Bool)

(assert (=> b!4970765 (= e!3106787 None!14452)))

(declare-fun b!4970766 () Bool)

(assert (=> b!4970766 (= e!3106787 (Some!14452 (tuple2!62183 (Token!15287 (apply!13906 (transformation!8395 (h!63900 rulesArg!259)) (seqFromList!6038 (_1!34398 lt!2052727))) (h!63900 rulesArg!259) (size!38080 (_1!34398 lt!2052727)) (_1!34398 lt!2052727)) (_2!34398 lt!2052727))))))

(declare-fun lt!2052732 () Unit!148401)

(assert (=> b!4970766 (= lt!2052732 (longestMatchIsAcceptedByMatchOrIsEmpty!1818 (regex!8395 (h!63900 rulesArg!259)) lt!2052315))))

(declare-fun res!2121734 () Bool)

(assert (=> b!4970766 (= res!2121734 (isEmpty!30949 (_1!34398 (findLongestMatchInner!1857 (regex!8395 (h!63900 rulesArg!259)) Nil!57451 (size!38080 Nil!57451) lt!2052315 lt!2052315 (size!38080 lt!2052315)))))))

(declare-fun e!3106788 () Bool)

(assert (=> b!4970766 (=> res!2121734 e!3106788)))

(assert (=> b!4970766 e!3106788))

(declare-fun lt!2052728 () Unit!148401)

(assert (=> b!4970766 (= lt!2052728 lt!2052732)))

(declare-fun lt!2052730 () Unit!148401)

(assert (=> b!4970766 (= lt!2052730 (lemmaInv!1336 (transformation!8395 (h!63900 rulesArg!259))))))

(declare-fun lt!2052729 () Unit!148401)

(assert (=> b!4970766 (= lt!2052729 (lemmaSemiInverse!2604 (transformation!8395 (h!63900 rulesArg!259)) (seqFromList!6038 (_1!34398 lt!2052727))))))

(declare-fun b!4970767 () Bool)

(assert (=> b!4970767 (= e!3106788 (matchR!6638 (regex!8395 (h!63900 rulesArg!259)) (_1!34398 (findLongestMatchInner!1857 (regex!8395 (h!63900 rulesArg!259)) Nil!57451 (size!38080 Nil!57451) lt!2052315 lt!2052315 (size!38080 lt!2052315)))))))

(assert (= (and d!1600481 c!848197) b!4970765))

(assert (= (and d!1600481 (not c!848197)) b!4970766))

(assert (= (and b!4970766 (not res!2121734)) b!4970767))

(assert (=> d!1600481 m!5998194))

(declare-fun m!5998930 () Bool)

(assert (=> d!1600481 m!5998930))

(declare-fun m!5998932 () Bool)

(assert (=> d!1600481 m!5998932))

(assert (=> d!1600481 m!5998252))

(assert (=> b!4970766 m!5998306))

(assert (=> b!4970766 m!5998172))

(assert (=> b!4970766 m!5998646))

(assert (=> b!4970766 m!5998654))

(assert (=> b!4970766 m!5998306))

(assert (=> b!4970766 m!5998652))

(declare-fun m!5998934 () Bool)

(assert (=> b!4970766 m!5998934))

(declare-fun m!5998936 () Bool)

(assert (=> b!4970766 m!5998936))

(declare-fun m!5998938 () Bool)

(assert (=> b!4970766 m!5998938))

(assert (=> b!4970766 m!5998314))

(assert (=> b!4970766 m!5998936))

(assert (=> b!4970766 m!5998172))

(assert (=> b!4970766 m!5998936))

(declare-fun m!5998940 () Bool)

(assert (=> b!4970766 m!5998940))

(assert (=> b!4970767 m!5998306))

(assert (=> b!4970767 m!5998172))

(assert (=> b!4970767 m!5998306))

(assert (=> b!4970767 m!5998172))

(assert (=> b!4970767 m!5998646))

(assert (=> b!4970767 m!5998648))

(assert (=> bm!346629 d!1600481))

(declare-fun b!4970796 () Bool)

(declare-fun e!3106806 () Bool)

(declare-fun lt!2052735 () Bool)

(declare-fun call!346674 () Bool)

(assert (=> b!4970796 (= e!3106806 (= lt!2052735 call!346674))))

(declare-fun b!4970797 () Bool)

(declare-fun e!3106804 () Bool)

(assert (=> b!4970797 (= e!3106804 (= (head!10670 (_1!34398 (findLongestMatchInner!1857 (regex!8395 (h!63900 rulesArg!259)) Nil!57451 (size!38080 Nil!57451) lt!2052484 lt!2052484 (size!38080 lt!2052484)))) (c!848110 (regex!8395 (h!63900 rulesArg!259)))))))

(declare-fun b!4970798 () Bool)

(declare-fun e!3106807 () Bool)

(declare-fun e!3106809 () Bool)

(assert (=> b!4970798 (= e!3106807 e!3106809)))

(declare-fun res!2121755 () Bool)

(assert (=> b!4970798 (=> (not res!2121755) (not e!3106809))))

(assert (=> b!4970798 (= res!2121755 (not lt!2052735))))

(declare-fun b!4970799 () Bool)

(declare-fun e!3106805 () Bool)

(assert (=> b!4970799 (= e!3106806 e!3106805)))

(declare-fun c!848204 () Bool)

(assert (=> b!4970799 (= c!848204 (is-EmptyLang!13628 (regex!8395 (h!63900 rulesArg!259))))))

(declare-fun b!4970800 () Bool)

(declare-fun res!2121758 () Bool)

(assert (=> b!4970800 (=> (not res!2121758) (not e!3106804))))

(assert (=> b!4970800 (= res!2121758 (isEmpty!30949 (tail!9803 (_1!34398 (findLongestMatchInner!1857 (regex!8395 (h!63900 rulesArg!259)) Nil!57451 (size!38080 Nil!57451) lt!2052484 lt!2052484 (size!38080 lt!2052484))))))))

(declare-fun b!4970801 () Bool)

(declare-fun res!2121752 () Bool)

(assert (=> b!4970801 (=> res!2121752 e!3106807)))

(assert (=> b!4970801 (= res!2121752 e!3106804)))

(declare-fun res!2121751 () Bool)

(assert (=> b!4970801 (=> (not res!2121751) (not e!3106804))))

(assert (=> b!4970801 (= res!2121751 lt!2052735)))

(declare-fun b!4970802 () Bool)

(declare-fun e!3106808 () Bool)

(assert (=> b!4970802 (= e!3106808 (matchR!6638 (derivativeStep!3924 (regex!8395 (h!63900 rulesArg!259)) (head!10670 (_1!34398 (findLongestMatchInner!1857 (regex!8395 (h!63900 rulesArg!259)) Nil!57451 (size!38080 Nil!57451) lt!2052484 lt!2052484 (size!38080 lt!2052484))))) (tail!9803 (_1!34398 (findLongestMatchInner!1857 (regex!8395 (h!63900 rulesArg!259)) Nil!57451 (size!38080 Nil!57451) lt!2052484 lt!2052484 (size!38080 lt!2052484))))))))

(declare-fun b!4970803 () Bool)

(assert (=> b!4970803 (= e!3106808 (nullable!4622 (regex!8395 (h!63900 rulesArg!259))))))

(declare-fun b!4970804 () Bool)

(declare-fun res!2121754 () Bool)

(assert (=> b!4970804 (=> (not res!2121754) (not e!3106804))))

(assert (=> b!4970804 (= res!2121754 (not call!346674))))

(declare-fun bm!346669 () Bool)

(assert (=> bm!346669 (= call!346674 (isEmpty!30949 (_1!34398 (findLongestMatchInner!1857 (regex!8395 (h!63900 rulesArg!259)) Nil!57451 (size!38080 Nil!57451) lt!2052484 lt!2052484 (size!38080 lt!2052484)))))))

(declare-fun b!4970805 () Bool)

(declare-fun e!3106803 () Bool)

(assert (=> b!4970805 (= e!3106803 (not (= (head!10670 (_1!34398 (findLongestMatchInner!1857 (regex!8395 (h!63900 rulesArg!259)) Nil!57451 (size!38080 Nil!57451) lt!2052484 lt!2052484 (size!38080 lt!2052484)))) (c!848110 (regex!8395 (h!63900 rulesArg!259))))))))

(declare-fun d!1600483 () Bool)

(assert (=> d!1600483 e!3106806))

(declare-fun c!848205 () Bool)

(assert (=> d!1600483 (= c!848205 (is-EmptyExpr!13628 (regex!8395 (h!63900 rulesArg!259))))))

(assert (=> d!1600483 (= lt!2052735 e!3106808)))

(declare-fun c!848206 () Bool)

(assert (=> d!1600483 (= c!848206 (isEmpty!30949 (_1!34398 (findLongestMatchInner!1857 (regex!8395 (h!63900 rulesArg!259)) Nil!57451 (size!38080 Nil!57451) lt!2052484 lt!2052484 (size!38080 lt!2052484)))))))

(assert (=> d!1600483 (validRegex!5971 (regex!8395 (h!63900 rulesArg!259)))))

(assert (=> d!1600483 (= (matchR!6638 (regex!8395 (h!63900 rulesArg!259)) (_1!34398 (findLongestMatchInner!1857 (regex!8395 (h!63900 rulesArg!259)) Nil!57451 (size!38080 Nil!57451) lt!2052484 lt!2052484 (size!38080 lt!2052484)))) lt!2052735)))

(declare-fun b!4970806 () Bool)

(declare-fun res!2121753 () Bool)

(assert (=> b!4970806 (=> res!2121753 e!3106803)))

(assert (=> b!4970806 (= res!2121753 (not (isEmpty!30949 (tail!9803 (_1!34398 (findLongestMatchInner!1857 (regex!8395 (h!63900 rulesArg!259)) Nil!57451 (size!38080 Nil!57451) lt!2052484 lt!2052484 (size!38080 lt!2052484)))))))))

(declare-fun b!4970807 () Bool)

(assert (=> b!4970807 (= e!3106805 (not lt!2052735))))

(declare-fun b!4970808 () Bool)

(declare-fun res!2121757 () Bool)

(assert (=> b!4970808 (=> res!2121757 e!3106807)))

(assert (=> b!4970808 (= res!2121757 (not (is-ElementMatch!13628 (regex!8395 (h!63900 rulesArg!259)))))))

(assert (=> b!4970808 (= e!3106805 e!3106807)))

(declare-fun b!4970809 () Bool)

(assert (=> b!4970809 (= e!3106809 e!3106803)))

(declare-fun res!2121756 () Bool)

(assert (=> b!4970809 (=> res!2121756 e!3106803)))

(assert (=> b!4970809 (= res!2121756 call!346674)))

(assert (= (and d!1600483 c!848206) b!4970803))

(assert (= (and d!1600483 (not c!848206)) b!4970802))

(assert (= (and d!1600483 c!848205) b!4970796))

(assert (= (and d!1600483 (not c!848205)) b!4970799))

(assert (= (and b!4970799 c!848204) b!4970807))

(assert (= (and b!4970799 (not c!848204)) b!4970808))

(assert (= (and b!4970808 (not res!2121757)) b!4970801))

(assert (= (and b!4970801 res!2121751) b!4970804))

(assert (= (and b!4970804 res!2121754) b!4970800))

(assert (= (and b!4970800 res!2121758) b!4970797))

(assert (= (and b!4970801 (not res!2121752)) b!4970798))

(assert (= (and b!4970798 res!2121755) b!4970809))

(assert (= (and b!4970809 (not res!2121756)) b!4970806))

(assert (= (and b!4970806 (not res!2121753)) b!4970805))

(assert (= (or b!4970796 b!4970804 b!4970809) bm!346669))

(declare-fun m!5998942 () Bool)

(assert (=> b!4970800 m!5998942))

(assert (=> b!4970800 m!5998942))

(declare-fun m!5998944 () Bool)

(assert (=> b!4970800 m!5998944))

(declare-fun m!5998946 () Bool)

(assert (=> b!4970802 m!5998946))

(assert (=> b!4970802 m!5998946))

(declare-fun m!5998948 () Bool)

(assert (=> b!4970802 m!5998948))

(assert (=> b!4970802 m!5998942))

(assert (=> b!4970802 m!5998948))

(assert (=> b!4970802 m!5998942))

(declare-fun m!5998950 () Bool)

(assert (=> b!4970802 m!5998950))

(assert (=> b!4970803 m!5998616))

(assert (=> b!4970797 m!5998946))

(assert (=> bm!346669 m!5998326))

(assert (=> b!4970805 m!5998946))

(assert (=> d!1600483 m!5998326))

(assert (=> d!1600483 m!5998564))

(assert (=> b!4970806 m!5998942))

(assert (=> b!4970806 m!5998942))

(assert (=> b!4970806 m!5998944))

(assert (=> b!4970330 d!1600483))

(assert (=> b!4970330 d!1600443))

(assert (=> b!4970330 d!1600445))

(assert (=> b!4970330 d!1600459))

(assert (=> b!4970310 d!1600405))

(declare-fun d!1600485 () Bool)

(assert (=> d!1600485 (= (get!19945 (maxPrefix!4662 thiss!15247 (t!369030 rulesArg!259) (list!18371 input!1342))) (v!50443 (maxPrefix!4662 thiss!15247 (t!369030 rulesArg!259) (list!18371 input!1342))))))

(assert (=> b!4970310 d!1600485))

(declare-fun b!4970810 () Bool)

(declare-fun e!3106811 () Option!14453)

(declare-fun call!346675 () Option!14453)

(assert (=> b!4970810 (= e!3106811 call!346675)))

(declare-fun b!4970811 () Bool)

(declare-fun res!2121761 () Bool)

(declare-fun e!3106810 () Bool)

(assert (=> b!4970811 (=> (not res!2121761) (not e!3106810))))

(declare-fun lt!2052739 () Option!14453)

(assert (=> b!4970811 (= res!2121761 (= (value!268699 (_1!34394 (get!19945 lt!2052739))) (apply!13906 (transformation!8395 (rule!11645 (_1!34394 (get!19945 lt!2052739)))) (seqFromList!6038 (originalCharacters!8674 (_1!34394 (get!19945 lt!2052739)))))))))

(declare-fun b!4970812 () Bool)

(declare-fun res!2121763 () Bool)

(assert (=> b!4970812 (=> (not res!2121763) (not e!3106810))))

(assert (=> b!4970812 (= res!2121763 (matchR!6638 (regex!8395 (rule!11645 (_1!34394 (get!19945 lt!2052739)))) (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052739))))))))

(declare-fun b!4970813 () Bool)

(declare-fun res!2121760 () Bool)

(assert (=> b!4970813 (=> (not res!2121760) (not e!3106810))))

(assert (=> b!4970813 (= res!2121760 (< (size!38080 (_2!34394 (get!19945 lt!2052739))) (size!38080 (list!18371 input!1342))))))

(declare-fun d!1600487 () Bool)

(declare-fun e!3106812 () Bool)

(assert (=> d!1600487 e!3106812))

(declare-fun res!2121765 () Bool)

(assert (=> d!1600487 (=> res!2121765 e!3106812)))

(assert (=> d!1600487 (= res!2121765 (isEmpty!30947 lt!2052739))))

(assert (=> d!1600487 (= lt!2052739 e!3106811)))

(declare-fun c!848207 () Bool)

(assert (=> d!1600487 (= c!848207 (and (is-Cons!57452 (t!369030 rulesArg!259)) (is-Nil!57452 (t!369030 (t!369030 rulesArg!259)))))))

(declare-fun lt!2052738 () Unit!148401)

(declare-fun lt!2052740 () Unit!148401)

(assert (=> d!1600487 (= lt!2052738 lt!2052740)))

(assert (=> d!1600487 (isPrefix!5246 (list!18371 input!1342) (list!18371 input!1342))))

(assert (=> d!1600487 (= lt!2052740 (lemmaIsPrefixRefl!3570 (list!18371 input!1342) (list!18371 input!1342)))))

(assert (=> d!1600487 (rulesValidInductive!3298 thiss!15247 (t!369030 rulesArg!259))))

(assert (=> d!1600487 (= (maxPrefix!4662 thiss!15247 (t!369030 rulesArg!259) (list!18371 input!1342)) lt!2052739)))

(declare-fun b!4970814 () Bool)

(declare-fun lt!2052736 () Option!14453)

(declare-fun lt!2052737 () Option!14453)

(assert (=> b!4970814 (= e!3106811 (ite (and (is-None!14452 lt!2052736) (is-None!14452 lt!2052737)) None!14452 (ite (is-None!14452 lt!2052737) lt!2052736 (ite (is-None!14452 lt!2052736) lt!2052737 (ite (>= (size!38078 (_1!34394 (v!50443 lt!2052736))) (size!38078 (_1!34394 (v!50443 lt!2052737)))) lt!2052736 lt!2052737)))))))

(assert (=> b!4970814 (= lt!2052736 call!346675)))

(assert (=> b!4970814 (= lt!2052737 (maxPrefix!4662 thiss!15247 (t!369030 (t!369030 rulesArg!259)) (list!18371 input!1342)))))

(declare-fun b!4970815 () Bool)

(declare-fun res!2121762 () Bool)

(assert (=> b!4970815 (=> (not res!2121762) (not e!3106810))))

(assert (=> b!4970815 (= res!2121762 (= (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052739)))) (originalCharacters!8674 (_1!34394 (get!19945 lt!2052739)))))))

(declare-fun b!4970816 () Bool)

(declare-fun res!2121759 () Bool)

(assert (=> b!4970816 (=> (not res!2121759) (not e!3106810))))

(assert (=> b!4970816 (= res!2121759 (= (++!12534 (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052739)))) (_2!34394 (get!19945 lt!2052739))) (list!18371 input!1342)))))

(declare-fun bm!346670 () Bool)

(assert (=> bm!346670 (= call!346675 (maxPrefixOneRule!3631 thiss!15247 (h!63900 (t!369030 rulesArg!259)) (list!18371 input!1342)))))

(declare-fun b!4970817 () Bool)

(assert (=> b!4970817 (= e!3106810 (contains!19540 (t!369030 rulesArg!259) (rule!11645 (_1!34394 (get!19945 lt!2052739)))))))

(declare-fun b!4970818 () Bool)

(assert (=> b!4970818 (= e!3106812 e!3106810)))

(declare-fun res!2121764 () Bool)

(assert (=> b!4970818 (=> (not res!2121764) (not e!3106810))))

(assert (=> b!4970818 (= res!2121764 (isDefined!11366 lt!2052739))))

(assert (= (and d!1600487 c!848207) b!4970810))

(assert (= (and d!1600487 (not c!848207)) b!4970814))

(assert (= (or b!4970810 b!4970814) bm!346670))

(assert (= (and d!1600487 (not res!2121765)) b!4970818))

(assert (= (and b!4970818 res!2121764) b!4970815))

(assert (= (and b!4970815 res!2121762) b!4970813))

(assert (= (and b!4970813 res!2121760) b!4970816))

(assert (= (and b!4970816 res!2121759) b!4970811))

(assert (= (and b!4970811 res!2121761) b!4970812))

(assert (= (and b!4970812 res!2121763) b!4970817))

(declare-fun m!5998952 () Bool)

(assert (=> b!4970813 m!5998952))

(declare-fun m!5998954 () Bool)

(assert (=> b!4970813 m!5998954))

(assert (=> b!4970813 m!5998080))

(assert (=> b!4970813 m!5998596))

(assert (=> b!4970814 m!5998080))

(assert (=> b!4970814 m!5998716))

(assert (=> b!4970812 m!5998952))

(declare-fun m!5998956 () Bool)

(assert (=> b!4970812 m!5998956))

(assert (=> b!4970812 m!5998956))

(declare-fun m!5998958 () Bool)

(assert (=> b!4970812 m!5998958))

(assert (=> b!4970812 m!5998958))

(declare-fun m!5998960 () Bool)

(assert (=> b!4970812 m!5998960))

(declare-fun m!5998962 () Bool)

(assert (=> b!4970818 m!5998962))

(assert (=> bm!346670 m!5998080))

(assert (=> bm!346670 m!5998738))

(assert (=> b!4970817 m!5998952))

(declare-fun m!5998964 () Bool)

(assert (=> b!4970817 m!5998964))

(assert (=> b!4970815 m!5998952))

(assert (=> b!4970815 m!5998956))

(assert (=> b!4970815 m!5998956))

(assert (=> b!4970815 m!5998958))

(declare-fun m!5998966 () Bool)

(assert (=> d!1600487 m!5998966))

(assert (=> d!1600487 m!5998080))

(assert (=> d!1600487 m!5998080))

(assert (=> d!1600487 m!5998518))

(assert (=> d!1600487 m!5998080))

(assert (=> d!1600487 m!5998080))

(assert (=> d!1600487 m!5998520))

(assert (=> d!1600487 m!5998254))

(assert (=> b!4970811 m!5998952))

(declare-fun m!5998968 () Bool)

(assert (=> b!4970811 m!5998968))

(assert (=> b!4970811 m!5998968))

(declare-fun m!5998970 () Bool)

(assert (=> b!4970811 m!5998970))

(assert (=> b!4970816 m!5998952))

(assert (=> b!4970816 m!5998956))

(assert (=> b!4970816 m!5998956))

(assert (=> b!4970816 m!5998958))

(assert (=> b!4970816 m!5998958))

(declare-fun m!5998972 () Bool)

(assert (=> b!4970816 m!5998972))

(assert (=> b!4970310 d!1600487))

(assert (=> b!4970310 d!1600273))

(assert (=> d!1600257 d!1600255))

(declare-fun d!1600489 () Bool)

(assert (=> d!1600489 (isPrefix!5246 lt!2052315 lt!2052315)))

(assert (=> d!1600489 true))

(declare-fun _$45!2282 () Unit!148401)

(assert (=> d!1600489 (= (choose!36694 lt!2052315 lt!2052315) _$45!2282)))

(declare-fun bs!1183520 () Bool)

(assert (= bs!1183520 d!1600489))

(assert (=> bs!1183520 m!5998096))

(assert (=> d!1600257 d!1600489))

(declare-fun d!1600491 () Bool)

(assert (=> d!1600491 (= (inv!75097 (xs!18473 (c!848111 input!1342))) (<= (size!38080 (innerList!15235 (xs!18473 (c!848111 input!1342)))) 2147483647))))

(declare-fun bs!1183521 () Bool)

(assert (= bs!1183521 d!1600491))

(declare-fun m!5998974 () Bool)

(assert (=> bs!1183521 m!5998974))

(assert (=> b!4970362 d!1600491))

(declare-fun b!4970828 () Bool)

(declare-fun e!3106817 () List!57575)

(assert (=> b!4970828 (= e!3106817 (Cons!57451 (h!63899 (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052376))))) (++!12534 (t!369029 (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052376))))) (_2!34394 (get!19945 lt!2052376)))))))

(declare-fun d!1600493 () Bool)

(declare-fun e!3106818 () Bool)

(assert (=> d!1600493 e!3106818))

(declare-fun res!2121770 () Bool)

(assert (=> d!1600493 (=> (not res!2121770) (not e!3106818))))

(declare-fun lt!2052743 () List!57575)

(declare-fun content!10188 (List!57575) (Set C!27506))

(assert (=> d!1600493 (= res!2121770 (= (content!10188 lt!2052743) (set.union (content!10188 (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052376))))) (content!10188 (_2!34394 (get!19945 lt!2052376))))))))

(assert (=> d!1600493 (= lt!2052743 e!3106817)))

(declare-fun c!848210 () Bool)

(assert (=> d!1600493 (= c!848210 (is-Nil!57451 (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052376))))))))

(assert (=> d!1600493 (= (++!12534 (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052376)))) (_2!34394 (get!19945 lt!2052376))) lt!2052743)))

(declare-fun b!4970829 () Bool)

(declare-fun res!2121771 () Bool)

(assert (=> b!4970829 (=> (not res!2121771) (not e!3106818))))

(assert (=> b!4970829 (= res!2121771 (= (size!38080 lt!2052743) (+ (size!38080 (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052376))))) (size!38080 (_2!34394 (get!19945 lt!2052376))))))))

(declare-fun b!4970830 () Bool)

(assert (=> b!4970830 (= e!3106818 (or (not (= (_2!34394 (get!19945 lt!2052376)) Nil!57451)) (= lt!2052743 (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052376)))))))))

(declare-fun b!4970827 () Bool)

(assert (=> b!4970827 (= e!3106817 (_2!34394 (get!19945 lt!2052376)))))

(assert (= (and d!1600493 c!848210) b!4970827))

(assert (= (and d!1600493 (not c!848210)) b!4970828))

(assert (= (and d!1600493 res!2121770) b!4970829))

(assert (= (and b!4970829 res!2121771) b!4970830))

(declare-fun m!5998976 () Bool)

(assert (=> b!4970828 m!5998976))

(declare-fun m!5998978 () Bool)

(assert (=> d!1600493 m!5998978))

(assert (=> d!1600493 m!5998188))

(declare-fun m!5998980 () Bool)

(assert (=> d!1600493 m!5998980))

(declare-fun m!5998982 () Bool)

(assert (=> d!1600493 m!5998982))

(declare-fun m!5998984 () Bool)

(assert (=> b!4970829 m!5998984))

(assert (=> b!4970829 m!5998188))

(declare-fun m!5998986 () Bool)

(assert (=> b!4970829 m!5998986))

(assert (=> b!4970829 m!5998182))

(assert (=> b!4970236 d!1600493))

(assert (=> b!4970236 d!1600411))

(assert (=> b!4970236 d!1600413))

(assert (=> b!4970236 d!1600415))

(assert (=> b!4970312 d!1600487))

(assert (=> b!4970312 d!1600273))

(assert (=> b!4970312 d!1600485))

(assert (=> b!4970312 d!1600405))

(assert (=> b!4970312 d!1600407))

(declare-fun b!4970831 () Bool)

(declare-fun e!3106822 () Bool)

(declare-fun lt!2052744 () Bool)

(declare-fun call!346676 () Bool)

(assert (=> b!4970831 (= e!3106822 (= lt!2052744 call!346676))))

(declare-fun b!4970832 () Bool)

(declare-fun e!3106820 () Bool)

(assert (=> b!4970832 (= e!3106820 (= (head!10670 (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052376))))) (c!848110 (regex!8395 (rule!11645 (_1!34394 (get!19945 lt!2052376)))))))))

(declare-fun b!4970833 () Bool)

(declare-fun e!3106823 () Bool)

(declare-fun e!3106825 () Bool)

(assert (=> b!4970833 (= e!3106823 e!3106825)))

(declare-fun res!2121776 () Bool)

(assert (=> b!4970833 (=> (not res!2121776) (not e!3106825))))

(assert (=> b!4970833 (= res!2121776 (not lt!2052744))))

(declare-fun b!4970834 () Bool)

(declare-fun e!3106821 () Bool)

(assert (=> b!4970834 (= e!3106822 e!3106821)))

(declare-fun c!848211 () Bool)

(assert (=> b!4970834 (= c!848211 (is-EmptyLang!13628 (regex!8395 (rule!11645 (_1!34394 (get!19945 lt!2052376))))))))

(declare-fun b!4970835 () Bool)

(declare-fun res!2121779 () Bool)

(assert (=> b!4970835 (=> (not res!2121779) (not e!3106820))))

(assert (=> b!4970835 (= res!2121779 (isEmpty!30949 (tail!9803 (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052376)))))))))

(declare-fun b!4970836 () Bool)

(declare-fun res!2121773 () Bool)

(assert (=> b!4970836 (=> res!2121773 e!3106823)))

(assert (=> b!4970836 (= res!2121773 e!3106820)))

(declare-fun res!2121772 () Bool)

(assert (=> b!4970836 (=> (not res!2121772) (not e!3106820))))

(assert (=> b!4970836 (= res!2121772 lt!2052744)))

(declare-fun b!4970837 () Bool)

(declare-fun e!3106824 () Bool)

(assert (=> b!4970837 (= e!3106824 (matchR!6638 (derivativeStep!3924 (regex!8395 (rule!11645 (_1!34394 (get!19945 lt!2052376)))) (head!10670 (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052376)))))) (tail!9803 (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052376)))))))))

(declare-fun b!4970838 () Bool)

(assert (=> b!4970838 (= e!3106824 (nullable!4622 (regex!8395 (rule!11645 (_1!34394 (get!19945 lt!2052376))))))))

(declare-fun b!4970839 () Bool)

(declare-fun res!2121775 () Bool)

(assert (=> b!4970839 (=> (not res!2121775) (not e!3106820))))

(assert (=> b!4970839 (= res!2121775 (not call!346676))))

(declare-fun bm!346671 () Bool)

(assert (=> bm!346671 (= call!346676 (isEmpty!30949 (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052376))))))))

(declare-fun b!4970840 () Bool)

(declare-fun e!3106819 () Bool)

(assert (=> b!4970840 (= e!3106819 (not (= (head!10670 (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052376))))) (c!848110 (regex!8395 (rule!11645 (_1!34394 (get!19945 lt!2052376))))))))))

(declare-fun d!1600495 () Bool)

(assert (=> d!1600495 e!3106822))

(declare-fun c!848212 () Bool)

(assert (=> d!1600495 (= c!848212 (is-EmptyExpr!13628 (regex!8395 (rule!11645 (_1!34394 (get!19945 lt!2052376))))))))

(assert (=> d!1600495 (= lt!2052744 e!3106824)))

(declare-fun c!848213 () Bool)

(assert (=> d!1600495 (= c!848213 (isEmpty!30949 (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052376))))))))

(assert (=> d!1600495 (validRegex!5971 (regex!8395 (rule!11645 (_1!34394 (get!19945 lt!2052376)))))))

(assert (=> d!1600495 (= (matchR!6638 (regex!8395 (rule!11645 (_1!34394 (get!19945 lt!2052376)))) (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052376))))) lt!2052744)))

(declare-fun b!4970841 () Bool)

(declare-fun res!2121774 () Bool)

(assert (=> b!4970841 (=> res!2121774 e!3106819)))

(assert (=> b!4970841 (= res!2121774 (not (isEmpty!30949 (tail!9803 (list!18371 (charsOf!5439 (_1!34394 (get!19945 lt!2052376))))))))))

(declare-fun b!4970842 () Bool)

(assert (=> b!4970842 (= e!3106821 (not lt!2052744))))

(declare-fun b!4970843 () Bool)

(declare-fun res!2121778 () Bool)

(assert (=> b!4970843 (=> res!2121778 e!3106823)))

(assert (=> b!4970843 (= res!2121778 (not (is-ElementMatch!13628 (regex!8395 (rule!11645 (_1!34394 (get!19945 lt!2052376)))))))))

(assert (=> b!4970843 (= e!3106821 e!3106823)))

(declare-fun b!4970844 () Bool)

(assert (=> b!4970844 (= e!3106825 e!3106819)))

(declare-fun res!2121777 () Bool)

(assert (=> b!4970844 (=> res!2121777 e!3106819)))

(assert (=> b!4970844 (= res!2121777 call!346676)))

(assert (= (and d!1600495 c!848213) b!4970838))

(assert (= (and d!1600495 (not c!848213)) b!4970837))

(assert (= (and d!1600495 c!848212) b!4970831))

(assert (= (and d!1600495 (not c!848212)) b!4970834))

(assert (= (and b!4970834 c!848211) b!4970842))

(assert (= (and b!4970834 (not c!848211)) b!4970843))

(assert (= (and b!4970843 (not res!2121778)) b!4970836))

(assert (= (and b!4970836 res!2121772) b!4970839))

(assert (= (and b!4970839 res!2121775) b!4970835))

(assert (= (and b!4970835 res!2121779) b!4970832))

(assert (= (and b!4970836 (not res!2121773)) b!4970833))

(assert (= (and b!4970833 res!2121776) b!4970844))

(assert (= (and b!4970844 (not res!2121777)) b!4970841))

(assert (= (and b!4970841 (not res!2121774)) b!4970840))

(assert (= (or b!4970831 b!4970839 b!4970844) bm!346671))

(assert (=> b!4970835 m!5998188))

(declare-fun m!5998988 () Bool)

(assert (=> b!4970835 m!5998988))

(assert (=> b!4970835 m!5998988))

(declare-fun m!5998990 () Bool)

(assert (=> b!4970835 m!5998990))

(assert (=> b!4970837 m!5998188))

(declare-fun m!5998992 () Bool)

(assert (=> b!4970837 m!5998992))

(assert (=> b!4970837 m!5998992))

(declare-fun m!5998994 () Bool)

(assert (=> b!4970837 m!5998994))

(assert (=> b!4970837 m!5998188))

(assert (=> b!4970837 m!5998988))

(assert (=> b!4970837 m!5998994))

(assert (=> b!4970837 m!5998988))

(declare-fun m!5998996 () Bool)

(assert (=> b!4970837 m!5998996))

(declare-fun m!5998998 () Bool)

(assert (=> b!4970838 m!5998998))

(assert (=> b!4970832 m!5998188))

(assert (=> b!4970832 m!5998992))

(assert (=> bm!346671 m!5998188))

(declare-fun m!5999000 () Bool)

(assert (=> bm!346671 m!5999000))

(assert (=> b!4970840 m!5998188))

(assert (=> b!4970840 m!5998992))

(assert (=> d!1600495 m!5998188))

(assert (=> d!1600495 m!5999000))

(declare-fun m!5999002 () Bool)

(assert (=> d!1600495 m!5999002))

(assert (=> b!4970841 m!5998188))

(assert (=> b!4970841 m!5998988))

(assert (=> b!4970841 m!5998988))

(assert (=> b!4970841 m!5998990))

(assert (=> b!4970232 d!1600495))

(assert (=> b!4970232 d!1600415))

(assert (=> b!4970232 d!1600411))

(assert (=> b!4970232 d!1600413))

(declare-fun d!1600497 () Bool)

(assert (=> d!1600497 (= (inv!75086 (tag!9259 (h!63900 (t!369030 rulesArg!259)))) (= (mod (str.len (value!268698 (tag!9259 (h!63900 (t!369030 rulesArg!259))))) 2) 0))))

(assert (=> b!4970351 d!1600497))

(declare-fun d!1600499 () Bool)

(declare-fun res!2121780 () Bool)

(declare-fun e!3106826 () Bool)

(assert (=> d!1600499 (=> (not res!2121780) (not e!3106826))))

(assert (=> d!1600499 (= res!2121780 (semiInverseModEq!3702 (toChars!11217 (transformation!8395 (h!63900 (t!369030 rulesArg!259)))) (toValue!11358 (transformation!8395 (h!63900 (t!369030 rulesArg!259))))))))

(assert (=> d!1600499 (= (inv!75089 (transformation!8395 (h!63900 (t!369030 rulesArg!259)))) e!3106826)))

(declare-fun b!4970845 () Bool)

(assert (=> b!4970845 (= e!3106826 (equivClasses!3550 (toChars!11217 (transformation!8395 (h!63900 (t!369030 rulesArg!259)))) (toValue!11358 (transformation!8395 (h!63900 (t!369030 rulesArg!259))))))))

(assert (= (and d!1600499 res!2121780) b!4970845))

(declare-fun m!5999004 () Bool)

(assert (=> d!1600499 m!5999004))

(declare-fun m!5999006 () Bool)

(assert (=> b!4970845 m!5999006))

(assert (=> b!4970351 d!1600499))

(assert (=> b!4970328 d!1600419))

(assert (=> b!4970328 d!1600423))

(assert (=> b!4970328 d!1600387))

(assert (=> b!4970328 d!1600273))

(assert (=> b!4970309 d!1600405))

(assert (=> b!4970309 d!1600409))

(assert (=> b!4970309 d!1600361))

(assert (=> b!4970309 d!1600273))

(declare-fun d!1600501 () Bool)

(declare-fun res!2121781 () Bool)

(declare-fun e!3106827 () Bool)

(assert (=> d!1600501 (=> (not res!2121781) (not e!3106827))))

(assert (=> d!1600501 (= res!2121781 (<= (size!38080 (list!18375 (xs!18473 (c!848111 totalInput!464)))) 512))))

(assert (=> d!1600501 (= (inv!75096 (c!848111 totalInput!464)) e!3106827)))

(declare-fun b!4970846 () Bool)

(declare-fun res!2121782 () Bool)

(assert (=> b!4970846 (=> (not res!2121782) (not e!3106827))))

(assert (=> b!4970846 (= res!2121782 (= (csize!30525 (c!848111 totalInput!464)) (size!38080 (list!18375 (xs!18473 (c!848111 totalInput!464))))))))

(declare-fun b!4970847 () Bool)

(assert (=> b!4970847 (= e!3106827 (and (> (csize!30525 (c!848111 totalInput!464)) 0) (<= (csize!30525 (c!848111 totalInput!464)) 512)))))

(assert (= (and d!1600501 res!2121781) b!4970846))

(assert (= (and b!4970846 res!2121782) b!4970847))

(assert (=> d!1600501 m!5998554))

(assert (=> d!1600501 m!5998554))

(declare-fun m!5999008 () Bool)

(assert (=> d!1600501 m!5999008))

(assert (=> b!4970846 m!5998554))

(assert (=> b!4970846 m!5998554))

(assert (=> b!4970846 m!5999008))

(assert (=> b!4970341 d!1600501))

(declare-fun b!4970872 () Bool)

(declare-fun e!3106845 () Int)

(assert (=> b!4970872 (= e!3106845 0)))

(declare-fun b!4970873 () Bool)

(declare-fun e!3106841 () List!57575)

(declare-fun e!3106843 () List!57575)

(assert (=> b!4970873 (= e!3106841 e!3106843)))

(declare-fun c!848226 () Bool)

(assert (=> b!4970873 (= c!848226 (<= (- (size!38080 (list!18371 totalInput!464)) (size!38080 lt!2052315)) 0))))

(declare-fun d!1600503 () Bool)

(declare-fun e!3106842 () Bool)

(assert (=> d!1600503 e!3106842))

(declare-fun res!2121785 () Bool)

(assert (=> d!1600503 (=> (not res!2121785) (not e!3106842))))

(declare-fun lt!2052753 () List!57575)

(assert (=> d!1600503 (= res!2121785 (set.subset (content!10188 lt!2052753) (content!10188 (list!18371 totalInput!464))))))

(assert (=> d!1600503 (= lt!2052753 e!3106841)))

(declare-fun c!848227 () Bool)

(assert (=> d!1600503 (= c!848227 (is-Nil!57451 (list!18371 totalInput!464)))))

(assert (=> d!1600503 (= (drop!2351 (list!18371 totalInput!464) (- (size!38080 (list!18371 totalInput!464)) (size!38080 lt!2052315))) lt!2052753)))

(declare-fun b!4970874 () Bool)

(assert (=> b!4970874 (= e!3106843 (drop!2351 (t!369029 (list!18371 totalInput!464)) (- (- (size!38080 (list!18371 totalInput!464)) (size!38080 lt!2052315)) 1)))))

(declare-fun call!346679 () Int)

(declare-fun b!4970875 () Bool)

(assert (=> b!4970875 (= e!3106845 (- call!346679 (- (size!38080 (list!18371 totalInput!464)) (size!38080 lt!2052315))))))

(declare-fun b!4970876 () Bool)

(declare-fun e!3106844 () Int)

(assert (=> b!4970876 (= e!3106844 call!346679)))

(declare-fun b!4970877 () Bool)

(assert (=> b!4970877 (= e!3106843 (list!18371 totalInput!464))))

(declare-fun bm!346674 () Bool)

(assert (=> bm!346674 (= call!346679 (size!38080 (list!18371 totalInput!464)))))

(declare-fun b!4970878 () Bool)

(assert (=> b!4970878 (= e!3106841 Nil!57451)))

(declare-fun b!4970879 () Bool)

(assert (=> b!4970879 (= e!3106842 (= (size!38080 lt!2052753) e!3106844))))

(declare-fun c!848225 () Bool)

(assert (=> b!4970879 (= c!848225 (<= (- (size!38080 (list!18371 totalInput!464)) (size!38080 lt!2052315)) 0))))

(declare-fun b!4970880 () Bool)

(assert (=> b!4970880 (= e!3106844 e!3106845)))

(declare-fun c!848228 () Bool)

(assert (=> b!4970880 (= c!848228 (>= (- (size!38080 (list!18371 totalInput!464)) (size!38080 lt!2052315)) call!346679))))

(assert (= (and d!1600503 c!848227) b!4970878))

(assert (= (and d!1600503 (not c!848227)) b!4970873))

(assert (= (and b!4970873 c!848226) b!4970877))

(assert (= (and b!4970873 (not c!848226)) b!4970874))

(assert (= (and d!1600503 res!2121785) b!4970879))

(assert (= (and b!4970879 c!848225) b!4970876))

(assert (= (and b!4970879 (not c!848225)) b!4970880))

(assert (= (and b!4970880 c!848228) b!4970872))

(assert (= (and b!4970880 (not c!848228)) b!4970875))

(assert (= (or b!4970876 b!4970880 b!4970875) bm!346674))

(declare-fun m!5999020 () Bool)

(assert (=> d!1600503 m!5999020))

(assert (=> d!1600503 m!5998076))

(declare-fun m!5999022 () Bool)

(assert (=> d!1600503 m!5999022))

(declare-fun m!5999024 () Bool)

(assert (=> b!4970874 m!5999024))

(assert (=> bm!346674 m!5998076))

(assert (=> bm!346674 m!5998206))

(declare-fun m!5999026 () Bool)

(assert (=> b!4970879 m!5999026))

(assert (=> d!1600269 d!1600503))

(assert (=> d!1600269 d!1600431))

(assert (=> d!1600269 d!1600379))

(declare-fun b!4970884 () Bool)

(declare-fun e!3106847 () List!57575)

(assert (=> b!4970884 (= e!3106847 (++!12534 (list!18373 (left!41907 (c!848111 input!1342))) (list!18373 (right!42237 (c!848111 input!1342)))))))

(declare-fun b!4970881 () Bool)

(declare-fun e!3106846 () List!57575)

(assert (=> b!4970881 (= e!3106846 Nil!57451)))

(declare-fun d!1600513 () Bool)

(declare-fun c!848229 () Bool)

(assert (=> d!1600513 (= c!848229 (is-Empty!15147 (c!848111 input!1342)))))

(assert (=> d!1600513 (= (list!18373 (c!848111 input!1342)) e!3106846)))

(declare-fun b!4970883 () Bool)

(assert (=> b!4970883 (= e!3106847 (list!18375 (xs!18473 (c!848111 input!1342))))))

(declare-fun b!4970882 () Bool)

(assert (=> b!4970882 (= e!3106846 e!3106847)))

(declare-fun c!848230 () Bool)

(assert (=> b!4970882 (= c!848230 (is-Leaf!25170 (c!848111 input!1342)))))

(assert (= (and d!1600513 c!848229) b!4970881))

(assert (= (and d!1600513 (not c!848229)) b!4970882))

(assert (= (and b!4970882 c!848230) b!4970883))

(assert (= (and b!4970882 (not c!848230)) b!4970884))

(declare-fun m!5999028 () Bool)

(assert (=> b!4970884 m!5999028))

(declare-fun m!5999030 () Bool)

(assert (=> b!4970884 m!5999030))

(assert (=> b!4970884 m!5999028))

(assert (=> b!4970884 m!5999030))

(declare-fun m!5999032 () Bool)

(assert (=> b!4970884 m!5999032))

(assert (=> b!4970883 m!5998490))

(assert (=> d!1600273 d!1600513))

(assert (=> b!4970307 d!1600363))

(declare-fun d!1600515 () Bool)

(assert (=> d!1600515 (= (isEmpty!30948 lt!2052323) (not (is-Some!14453 lt!2052323)))))

(assert (=> d!1600293 d!1600515))

(declare-fun d!1600517 () Bool)

(declare-fun res!2121786 () Bool)

(declare-fun e!3106848 () Bool)

(assert (=> d!1600517 (=> (not res!2121786) (not e!3106848))))

(assert (=> d!1600517 (= res!2121786 (= (csize!30524 (c!848111 totalInput!464)) (+ (size!38084 (left!41907 (c!848111 totalInput!464))) (size!38084 (right!42237 (c!848111 totalInput!464))))))))

(assert (=> d!1600517 (= (inv!75095 (c!848111 totalInput!464)) e!3106848)))

(declare-fun b!4970885 () Bool)

(declare-fun res!2121787 () Bool)

(assert (=> b!4970885 (=> (not res!2121787) (not e!3106848))))

(assert (=> b!4970885 (= res!2121787 (and (not (= (left!41907 (c!848111 totalInput!464)) Empty!15147)) (not (= (right!42237 (c!848111 totalInput!464)) Empty!15147))))))

(declare-fun b!4970886 () Bool)

(declare-fun res!2121788 () Bool)

(assert (=> b!4970886 (=> (not res!2121788) (not e!3106848))))

(assert (=> b!4970886 (= res!2121788 (= (cheight!15358 (c!848111 totalInput!464)) (+ (max!0 (height!2015 (left!41907 (c!848111 totalInput!464))) (height!2015 (right!42237 (c!848111 totalInput!464)))) 1)))))

(declare-fun b!4970887 () Bool)

(assert (=> b!4970887 (= e!3106848 (<= 0 (cheight!15358 (c!848111 totalInput!464))))))

(assert (= (and d!1600517 res!2121786) b!4970885))

(assert (= (and b!4970885 res!2121787) b!4970886))

(assert (= (and b!4970886 res!2121788) b!4970887))

(declare-fun m!5999034 () Bool)

(assert (=> d!1600517 m!5999034))

(declare-fun m!5999036 () Bool)

(assert (=> d!1600517 m!5999036))

(assert (=> b!4970886 m!5998690))

(assert (=> b!4970886 m!5998692))

(assert (=> b!4970886 m!5998690))

(assert (=> b!4970886 m!5998692))

(declare-fun m!5999038 () Bool)

(assert (=> b!4970886 m!5999038))

(assert (=> b!4970339 d!1600517))

(declare-fun d!1600519 () Bool)

(assert (=> d!1600519 (= (isEmpty!30947 lt!2052376) (not (is-Some!14452 lt!2052376)))))

(assert (=> d!1600265 d!1600519))

(assert (=> d!1600265 d!1600255))

(assert (=> d!1600265 d!1600257))

(assert (=> d!1600265 d!1600285))

(declare-fun tp!1394023 () Bool)

(declare-fun e!3106849 () Bool)

(declare-fun b!4970888 () Bool)

(declare-fun tp!1394024 () Bool)

(assert (=> b!4970888 (= e!3106849 (and (inv!75091 (left!41907 (left!41907 (c!848111 input!1342)))) tp!1394023 (inv!75091 (right!42237 (left!41907 (c!848111 input!1342)))) tp!1394024))))

(declare-fun b!4970890 () Bool)

(declare-fun e!3106850 () Bool)

(declare-fun tp!1394022 () Bool)

(assert (=> b!4970890 (= e!3106850 tp!1394022)))

(declare-fun b!4970889 () Bool)

(assert (=> b!4970889 (= e!3106849 (and (inv!75097 (xs!18473 (left!41907 (c!848111 input!1342)))) e!3106850))))

(assert (=> b!4970361 (= tp!1393960 (and (inv!75091 (left!41907 (c!848111 input!1342))) e!3106849))))

(assert (= (and b!4970361 (is-Node!15147 (left!41907 (c!848111 input!1342)))) b!4970888))

(assert (= b!4970889 b!4970890))

(assert (= (and b!4970361 (is-Leaf!25170 (left!41907 (c!848111 input!1342)))) b!4970889))

(declare-fun m!5999040 () Bool)

(assert (=> b!4970888 m!5999040))

(declare-fun m!5999042 () Bool)

(assert (=> b!4970888 m!5999042))

(declare-fun m!5999044 () Bool)

(assert (=> b!4970889 m!5999044))

(assert (=> b!4970361 m!5998342))

(declare-fun e!3106851 () Bool)

(declare-fun b!4970891 () Bool)

(declare-fun tp!1394027 () Bool)

(declare-fun tp!1394026 () Bool)

(assert (=> b!4970891 (= e!3106851 (and (inv!75091 (left!41907 (right!42237 (c!848111 input!1342)))) tp!1394026 (inv!75091 (right!42237 (right!42237 (c!848111 input!1342)))) tp!1394027))))

(declare-fun b!4970893 () Bool)

(declare-fun e!3106852 () Bool)

(declare-fun tp!1394025 () Bool)

(assert (=> b!4970893 (= e!3106852 tp!1394025)))

(declare-fun b!4970892 () Bool)

(assert (=> b!4970892 (= e!3106851 (and (inv!75097 (xs!18473 (right!42237 (c!848111 input!1342)))) e!3106852))))

(assert (=> b!4970361 (= tp!1393961 (and (inv!75091 (right!42237 (c!848111 input!1342))) e!3106851))))

(assert (= (and b!4970361 (is-Node!15147 (right!42237 (c!848111 input!1342)))) b!4970891))

(assert (= b!4970892 b!4970893))

(assert (= (and b!4970361 (is-Leaf!25170 (right!42237 (c!848111 input!1342)))) b!4970892))

(declare-fun m!5999046 () Bool)

(assert (=> b!4970891 m!5999046))

(declare-fun m!5999048 () Bool)

(assert (=> b!4970891 m!5999048))

(declare-fun m!5999050 () Bool)

(assert (=> b!4970892 m!5999050))

(assert (=> b!4970361 m!5998344))

(declare-fun b!4970898 () Bool)

(declare-fun e!3106855 () Bool)

(declare-fun tp!1394030 () Bool)

(assert (=> b!4970898 (= e!3106855 (and tp_is_empty!36337 tp!1394030))))

(assert (=> b!4970380 (= tp!1393977 e!3106855)))

(assert (= (and b!4970380 (is-Cons!57451 (innerList!15235 (xs!18473 (c!848111 totalInput!464))))) b!4970898))

(declare-fun b!4970902 () Bool)

(declare-fun e!3106856 () Bool)

(declare-fun tp!1394033 () Bool)

(declare-fun tp!1394034 () Bool)

(assert (=> b!4970902 (= e!3106856 (and tp!1394033 tp!1394034))))

(assert (=> b!4970375 (= tp!1393973 e!3106856)))

(declare-fun b!4970899 () Bool)

(assert (=> b!4970899 (= e!3106856 tp_is_empty!36337)))

(declare-fun b!4970900 () Bool)

(declare-fun tp!1394032 () Bool)

(declare-fun tp!1394031 () Bool)

(assert (=> b!4970900 (= e!3106856 (and tp!1394032 tp!1394031))))

(declare-fun b!4970901 () Bool)

(declare-fun tp!1394035 () Bool)

(assert (=> b!4970901 (= e!3106856 tp!1394035)))

(assert (= (and b!4970375 (is-ElementMatch!13628 (regOne!27768 (regex!8395 (h!63900 rulesArg!259))))) b!4970899))

(assert (= (and b!4970375 (is-Concat!22334 (regOne!27768 (regex!8395 (h!63900 rulesArg!259))))) b!4970900))

(assert (= (and b!4970375 (is-Star!13628 (regOne!27768 (regex!8395 (h!63900 rulesArg!259))))) b!4970901))

(assert (= (and b!4970375 (is-Union!13628 (regOne!27768 (regex!8395 (h!63900 rulesArg!259))))) b!4970902))

(declare-fun b!4970906 () Bool)

(declare-fun e!3106857 () Bool)

(declare-fun tp!1394038 () Bool)

(declare-fun tp!1394039 () Bool)

(assert (=> b!4970906 (= e!3106857 (and tp!1394038 tp!1394039))))

(assert (=> b!4970375 (= tp!1393972 e!3106857)))

(declare-fun b!4970903 () Bool)

(assert (=> b!4970903 (= e!3106857 tp_is_empty!36337)))

(declare-fun b!4970904 () Bool)

(declare-fun tp!1394037 () Bool)

(declare-fun tp!1394036 () Bool)

(assert (=> b!4970904 (= e!3106857 (and tp!1394037 tp!1394036))))

(declare-fun b!4970905 () Bool)

(declare-fun tp!1394040 () Bool)

(assert (=> b!4970905 (= e!3106857 tp!1394040)))

(assert (= (and b!4970375 (is-ElementMatch!13628 (regTwo!27768 (regex!8395 (h!63900 rulesArg!259))))) b!4970903))

(assert (= (and b!4970375 (is-Concat!22334 (regTwo!27768 (regex!8395 (h!63900 rulesArg!259))))) b!4970904))

(assert (= (and b!4970375 (is-Star!13628 (regTwo!27768 (regex!8395 (h!63900 rulesArg!259))))) b!4970905))

(assert (= (and b!4970375 (is-Union!13628 (regTwo!27768 (regex!8395 (h!63900 rulesArg!259))))) b!4970906))

(declare-fun b!4970909 () Bool)

(declare-fun b_free!132815 () Bool)

(declare-fun b_next!133605 () Bool)

(assert (=> b!4970909 (= b_free!132815 (not b_next!133605))))

(declare-fun tb!261011 () Bool)

(declare-fun t!369053 () Bool)

(assert (=> (and b!4970909 (= (toValue!11358 (transformation!8395 (h!63900 (t!369030 (t!369030 rulesArg!259))))) (toValue!11358 (transformation!8395 (rule!11645 (_1!34394 (get!19945 lt!2052376)))))) t!369053) tb!261011))

(declare-fun result!326148 () Bool)

(assert (= result!326148 result!326132))

(assert (=> d!1600427 t!369053))

(declare-fun t!369055 () Bool)

(declare-fun tb!261013 () Bool)

(assert (=> (and b!4970909 (= (toValue!11358 (transformation!8395 (h!63900 (t!369030 (t!369030 rulesArg!259))))) (toValue!11358 (transformation!8395 (h!63900 rulesArg!259)))) t!369055) tb!261013))

(declare-fun result!326150 () Bool)

(assert (= result!326150 result!326138))

(assert (=> d!1600457 t!369055))

(declare-fun t!369057 () Bool)

(declare-fun tb!261015 () Bool)

(assert (=> (and b!4970909 (= (toValue!11358 (transformation!8395 (h!63900 (t!369030 (t!369030 rulesArg!259))))) (toValue!11358 (transformation!8395 (h!63900 rulesArg!259)))) t!369057) tb!261015))

(declare-fun result!326152 () Bool)

(assert (= result!326152 result!326142))

(assert (=> d!1600457 t!369057))

(assert (=> d!1600461 t!369055))

(declare-fun b_and!348639 () Bool)

(declare-fun tp!1394042 () Bool)

(assert (=> b!4970909 (= tp!1394042 (and (=> t!369053 result!326148) (=> t!369055 result!326150) (=> t!369057 result!326152) b_and!348639))))

(declare-fun b_free!132817 () Bool)

(declare-fun b_next!133607 () Bool)

(assert (=> b!4970909 (= b_free!132817 (not b_next!133607))))

(declare-fun t!369059 () Bool)

(declare-fun tb!261017 () Bool)

(assert (=> (and b!4970909 (= (toChars!11217 (transformation!8395 (h!63900 (t!369030 (t!369030 rulesArg!259))))) (toChars!11217 (transformation!8395 (rule!11645 (_1!34394 (get!19945 lt!2052376)))))) t!369059) tb!261017))

(declare-fun result!326154 () Bool)

(assert (= result!326154 result!326126))

(assert (=> d!1600413 t!369059))

(declare-fun b_and!348641 () Bool)

(declare-fun tp!1394043 () Bool)

(assert (=> b!4970909 (= tp!1394043 (and (=> t!369059 result!326154) b_and!348641))))

(declare-fun e!3106859 () Bool)

(assert (=> b!4970909 (= e!3106859 (and tp!1394042 tp!1394043))))

(declare-fun e!3106858 () Bool)

(declare-fun tp!1394041 () Bool)

(declare-fun b!4970908 () Bool)

(assert (=> b!4970908 (= e!3106858 (and tp!1394041 (inv!75086 (tag!9259 (h!63900 (t!369030 (t!369030 rulesArg!259))))) (inv!75089 (transformation!8395 (h!63900 (t!369030 (t!369030 rulesArg!259))))) e!3106859))))

(declare-fun b!4970907 () Bool)

(declare-fun e!3106861 () Bool)

(declare-fun tp!1394044 () Bool)

(assert (=> b!4970907 (= e!3106861 (and e!3106858 tp!1394044))))

(assert (=> b!4970350 (= tp!1393952 e!3106861)))

(assert (= b!4970908 b!4970909))

(assert (= b!4970907 b!4970908))

(assert (= (and b!4970350 (is-Cons!57452 (t!369030 (t!369030 rulesArg!259)))) b!4970907))

(declare-fun m!5999052 () Bool)

(assert (=> b!4970908 m!5999052))

(declare-fun m!5999054 () Bool)

(assert (=> b!4970908 m!5999054))

(declare-fun b!4970912 () Bool)

(declare-fun e!3106864 () Bool)

(declare-fun tp!1394045 () Bool)

(assert (=> b!4970912 (= e!3106864 (and tp_is_empty!36337 tp!1394045))))

(assert (=> b!4970363 (= tp!1393959 e!3106864)))

(assert (= (and b!4970363 (is-Cons!57451 (innerList!15235 (xs!18473 (c!848111 input!1342))))) b!4970912))

(declare-fun b!4970916 () Bool)

(declare-fun e!3106865 () Bool)

(declare-fun tp!1394048 () Bool)

(declare-fun tp!1394049 () Bool)

(assert (=> b!4970916 (= e!3106865 (and tp!1394048 tp!1394049))))

(assert (=> b!4970376 (= tp!1393976 e!3106865)))

(declare-fun b!4970913 () Bool)

(assert (=> b!4970913 (= e!3106865 tp_is_empty!36337)))

(declare-fun b!4970914 () Bool)

(declare-fun tp!1394047 () Bool)

(declare-fun tp!1394046 () Bool)

(assert (=> b!4970914 (= e!3106865 (and tp!1394047 tp!1394046))))

(declare-fun b!4970915 () Bool)

(declare-fun tp!1394050 () Bool)

(assert (=> b!4970915 (= e!3106865 tp!1394050)))

(assert (= (and b!4970376 (is-ElementMatch!13628 (reg!13957 (regex!8395 (h!63900 rulesArg!259))))) b!4970913))

(assert (= (and b!4970376 (is-Concat!22334 (reg!13957 (regex!8395 (h!63900 rulesArg!259))))) b!4970914))

(assert (= (and b!4970376 (is-Star!13628 (reg!13957 (regex!8395 (h!63900 rulesArg!259))))) b!4970915))

(assert (= (and b!4970376 (is-Union!13628 (reg!13957 (regex!8395 (h!63900 rulesArg!259))))) b!4970916))

(declare-fun b!4970920 () Bool)

(declare-fun e!3106866 () Bool)

(declare-fun tp!1394053 () Bool)

(declare-fun tp!1394054 () Bool)

(assert (=> b!4970920 (= e!3106866 (and tp!1394053 tp!1394054))))

(assert (=> b!4970351 (= tp!1393949 e!3106866)))

(declare-fun b!4970917 () Bool)

(assert (=> b!4970917 (= e!3106866 tp_is_empty!36337)))

(declare-fun b!4970918 () Bool)

(declare-fun tp!1394052 () Bool)

(declare-fun tp!1394051 () Bool)

(assert (=> b!4970918 (= e!3106866 (and tp!1394052 tp!1394051))))

(declare-fun b!4970919 () Bool)

(declare-fun tp!1394055 () Bool)

(assert (=> b!4970919 (= e!3106866 tp!1394055)))

(assert (= (and b!4970351 (is-ElementMatch!13628 (regex!8395 (h!63900 (t!369030 rulesArg!259))))) b!4970917))

(assert (= (and b!4970351 (is-Concat!22334 (regex!8395 (h!63900 (t!369030 rulesArg!259))))) b!4970918))

(assert (= (and b!4970351 (is-Star!13628 (regex!8395 (h!63900 (t!369030 rulesArg!259))))) b!4970919))

(assert (= (and b!4970351 (is-Union!13628 (regex!8395 (h!63900 (t!369030 rulesArg!259))))) b!4970920))

(declare-fun b!4970924 () Bool)

(declare-fun e!3106867 () Bool)

(declare-fun tp!1394058 () Bool)

(declare-fun tp!1394059 () Bool)

(assert (=> b!4970924 (= e!3106867 (and tp!1394058 tp!1394059))))

(assert (=> b!4970377 (= tp!1393974 e!3106867)))

(declare-fun b!4970921 () Bool)

(assert (=> b!4970921 (= e!3106867 tp_is_empty!36337)))

(declare-fun b!4970922 () Bool)

(declare-fun tp!1394057 () Bool)

(declare-fun tp!1394056 () Bool)

(assert (=> b!4970922 (= e!3106867 (and tp!1394057 tp!1394056))))

(declare-fun b!4970923 () Bool)

(declare-fun tp!1394060 () Bool)

(assert (=> b!4970923 (= e!3106867 tp!1394060)))

(assert (= (and b!4970377 (is-ElementMatch!13628 (regOne!27769 (regex!8395 (h!63900 rulesArg!259))))) b!4970921))

(assert (= (and b!4970377 (is-Concat!22334 (regOne!27769 (regex!8395 (h!63900 rulesArg!259))))) b!4970922))

(assert (= (and b!4970377 (is-Star!13628 (regOne!27769 (regex!8395 (h!63900 rulesArg!259))))) b!4970923))

(assert (= (and b!4970377 (is-Union!13628 (regOne!27769 (regex!8395 (h!63900 rulesArg!259))))) b!4970924))

(declare-fun b!4970928 () Bool)

(declare-fun e!3106868 () Bool)

(declare-fun tp!1394063 () Bool)

(declare-fun tp!1394064 () Bool)

(assert (=> b!4970928 (= e!3106868 (and tp!1394063 tp!1394064))))

(assert (=> b!4970377 (= tp!1393975 e!3106868)))

(declare-fun b!4970925 () Bool)

(assert (=> b!4970925 (= e!3106868 tp_is_empty!36337)))

(declare-fun b!4970926 () Bool)

(declare-fun tp!1394062 () Bool)

(declare-fun tp!1394061 () Bool)

(assert (=> b!4970926 (= e!3106868 (and tp!1394062 tp!1394061))))

(declare-fun b!4970927 () Bool)

(declare-fun tp!1394065 () Bool)

(assert (=> b!4970927 (= e!3106868 tp!1394065)))

(assert (= (and b!4970377 (is-ElementMatch!13628 (regTwo!27769 (regex!8395 (h!63900 rulesArg!259))))) b!4970925))

(assert (= (and b!4970377 (is-Concat!22334 (regTwo!27769 (regex!8395 (h!63900 rulesArg!259))))) b!4970926))

(assert (= (and b!4970377 (is-Star!13628 (regTwo!27769 (regex!8395 (h!63900 rulesArg!259))))) b!4970927))

(assert (= (and b!4970377 (is-Union!13628 (regTwo!27769 (regex!8395 (h!63900 rulesArg!259))))) b!4970928))

(declare-fun tp!1394067 () Bool)

(declare-fun tp!1394068 () Bool)

(declare-fun b!4970929 () Bool)

(declare-fun e!3106869 () Bool)

(assert (=> b!4970929 (= e!3106869 (and (inv!75091 (left!41907 (left!41907 (c!848111 totalInput!464)))) tp!1394067 (inv!75091 (right!42237 (left!41907 (c!848111 totalInput!464)))) tp!1394068))))

(declare-fun b!4970931 () Bool)

(declare-fun e!3106870 () Bool)

(declare-fun tp!1394066 () Bool)

(assert (=> b!4970931 (= e!3106870 tp!1394066)))

(declare-fun b!4970930 () Bool)

(assert (=> b!4970930 (= e!3106869 (and (inv!75097 (xs!18473 (left!41907 (c!848111 totalInput!464)))) e!3106870))))

(assert (=> b!4970378 (= tp!1393978 (and (inv!75091 (left!41907 (c!848111 totalInput!464))) e!3106869))))

(assert (= (and b!4970378 (is-Node!15147 (left!41907 (c!848111 totalInput!464)))) b!4970929))

(assert (= b!4970930 b!4970931))

(assert (= (and b!4970378 (is-Leaf!25170 (left!41907 (c!848111 totalInput!464)))) b!4970930))

(declare-fun m!5999056 () Bool)

(assert (=> b!4970929 m!5999056))

(declare-fun m!5999058 () Bool)

(assert (=> b!4970929 m!5999058))

(declare-fun m!5999060 () Bool)

(assert (=> b!4970930 m!5999060))

(assert (=> b!4970378 m!5998348))

(declare-fun e!3106871 () Bool)

(declare-fun tp!1394071 () Bool)

(declare-fun tp!1394070 () Bool)

(declare-fun b!4970932 () Bool)

(assert (=> b!4970932 (= e!3106871 (and (inv!75091 (left!41907 (right!42237 (c!848111 totalInput!464)))) tp!1394070 (inv!75091 (right!42237 (right!42237 (c!848111 totalInput!464)))) tp!1394071))))

(declare-fun b!4970934 () Bool)

(declare-fun e!3106872 () Bool)

(declare-fun tp!1394069 () Bool)

(assert (=> b!4970934 (= e!3106872 tp!1394069)))

(declare-fun b!4970933 () Bool)

(assert (=> b!4970933 (= e!3106871 (and (inv!75097 (xs!18473 (right!42237 (c!848111 totalInput!464)))) e!3106872))))

(assert (=> b!4970378 (= tp!1393979 (and (inv!75091 (right!42237 (c!848111 totalInput!464))) e!3106871))))

(assert (= (and b!4970378 (is-Node!15147 (right!42237 (c!848111 totalInput!464)))) b!4970932))

(assert (= b!4970933 b!4970934))

(assert (= (and b!4970378 (is-Leaf!25170 (right!42237 (c!848111 totalInput!464)))) b!4970933))

(declare-fun m!5999062 () Bool)

(assert (=> b!4970932 m!5999062))

(declare-fun m!5999064 () Bool)

(assert (=> b!4970932 m!5999064))

(declare-fun m!5999066 () Bool)

(assert (=> b!4970933 m!5999066))

(assert (=> b!4970378 m!5998350))

(declare-fun b_lambda!197159 () Bool)

(assert (= b_lambda!197149 (or (and b!4970138 b_free!132799) (and b!4970352 b_free!132807 (= (toValue!11358 (transformation!8395 (h!63900 (t!369030 rulesArg!259)))) (toValue!11358 (transformation!8395 (h!63900 rulesArg!259))))) (and b!4970909 b_free!132815 (= (toValue!11358 (transformation!8395 (h!63900 (t!369030 (t!369030 rulesArg!259))))) (toValue!11358 (transformation!8395 (h!63900 rulesArg!259))))) b_lambda!197159)))

(declare-fun b_lambda!197161 () Bool)

(assert (= b_lambda!197153 (or (and b!4970138 b_free!132799) (and b!4970352 b_free!132807 (= (toValue!11358 (transformation!8395 (h!63900 (t!369030 rulesArg!259)))) (toValue!11358 (transformation!8395 (h!63900 rulesArg!259))))) (and b!4970909 b_free!132815 (= (toValue!11358 (transformation!8395 (h!63900 (t!369030 (t!369030 rulesArg!259))))) (toValue!11358 (transformation!8395 (h!63900 rulesArg!259))))) b_lambda!197161)))

(declare-fun b_lambda!197163 () Bool)

(assert (= b_lambda!197147 (or b!4970325 b_lambda!197163)))

(declare-fun bs!1183524 () Bool)

(declare-fun d!1600521 () Bool)

(assert (= bs!1183524 (and d!1600521 b!4970325)))

(assert (=> bs!1183524 (= (dynLambda!23186 lambda!247422 (seqFromList!6038 (list!18371 (_1!34397 lt!2052478)))) (= (list!18371 (dynLambda!23184 (toChars!11217 (transformation!8395 (h!63900 rulesArg!259))) (dynLambda!23185 (toValue!11358 (transformation!8395 (h!63900 rulesArg!259))) (seqFromList!6038 (list!18371 (_1!34397 lt!2052478)))))) (list!18371 (seqFromList!6038 (list!18371 (_1!34397 lt!2052478))))))))

(declare-fun b_lambda!197171 () Bool)

(assert (=> (not b_lambda!197171) (not bs!1183524)))

(declare-fun t!369061 () Bool)

(declare-fun tb!261019 () Bool)

(assert (=> (and b!4970138 (= (toChars!11217 (transformation!8395 (h!63900 rulesArg!259))) (toChars!11217 (transformation!8395 (h!63900 rulesArg!259)))) t!369061) tb!261019))

(declare-fun b!4970938 () Bool)

(declare-fun tp!1394072 () Bool)

(declare-fun e!3106875 () Bool)

(assert (=> b!4970938 (= e!3106875 (and (inv!75091 (c!848111 (dynLambda!23184 (toChars!11217 (transformation!8395 (h!63900 rulesArg!259))) (dynLambda!23185 (toValue!11358 (transformation!8395 (h!63900 rulesArg!259))) (seqFromList!6038 (list!18371 (_1!34397 lt!2052478))))))) tp!1394072))))

(declare-fun result!326156 () Bool)

(assert (=> tb!261019 (= result!326156 (and (inv!75090 (dynLambda!23184 (toChars!11217 (transformation!8395 (h!63900 rulesArg!259))) (dynLambda!23185 (toValue!11358 (transformation!8395 (h!63900 rulesArg!259))) (seqFromList!6038 (list!18371 (_1!34397 lt!2052478)))))) e!3106875))))

(assert (= tb!261019 b!4970938))

(declare-fun m!5999072 () Bool)

(assert (=> b!4970938 m!5999072))

(declare-fun m!5999076 () Bool)

(assert (=> tb!261019 m!5999076))

(assert (=> bs!1183524 t!369061))

(declare-fun b_and!348643 () Bool)

(assert (= b_and!348619 (and (=> t!369061 result!326156) b_and!348643)))

(declare-fun t!369063 () Bool)

(declare-fun tb!261021 () Bool)

(assert (=> (and b!4970352 (= (toChars!11217 (transformation!8395 (h!63900 (t!369030 rulesArg!259)))) (toChars!11217 (transformation!8395 (h!63900 rulesArg!259)))) t!369063) tb!261021))

(declare-fun result!326158 () Bool)

(assert (= result!326158 result!326156))

(assert (=> bs!1183524 t!369063))

(declare-fun b_and!348645 () Bool)

(assert (= b_and!348621 (and (=> t!369063 result!326158) b_and!348645)))

(declare-fun t!369065 () Bool)

(declare-fun tb!261023 () Bool)

(assert (=> (and b!4970909 (= (toChars!11217 (transformation!8395 (h!63900 (t!369030 (t!369030 rulesArg!259))))) (toChars!11217 (transformation!8395 (h!63900 rulesArg!259)))) t!369065) tb!261023))

(declare-fun result!326160 () Bool)

(assert (= result!326160 result!326156))

(assert (=> bs!1183524 t!369065))

(declare-fun b_and!348647 () Bool)

(assert (= b_and!348641 (and (=> t!369065 result!326160) b_and!348647)))

(declare-fun b_lambda!197173 () Bool)

(assert (=> (not b_lambda!197173) (not bs!1183524)))

(assert (=> bs!1183524 t!369049))

(declare-fun b_and!348649 () Bool)

(assert (= b_and!348635 (and (=> t!369049 result!326142) b_and!348649)))

(assert (=> bs!1183524 t!369051))

(declare-fun b_and!348651 () Bool)

(assert (= b_and!348637 (and (=> t!369051 result!326144) b_and!348651)))

(assert (=> bs!1183524 t!369057))

(declare-fun b_and!348653 () Bool)

(assert (= b_and!348639 (and (=> t!369057 result!326152) b_and!348653)))

(declare-fun m!5999078 () Bool)

(assert (=> bs!1183524 m!5999078))

(declare-fun m!5999080 () Bool)

(assert (=> bs!1183524 m!5999080))

(assert (=> bs!1183524 m!5998318))

(assert (=> bs!1183524 m!5998860))

(assert (=> bs!1183524 m!5998860))

(assert (=> bs!1183524 m!5999078))

(assert (=> bs!1183524 m!5998318))

(assert (=> bs!1183524 m!5998856))

(assert (=> d!1600439 d!1600521))

(declare-fun b_lambda!197165 () Bool)

(assert (= b_lambda!197155 (or b!4970325 b_lambda!197165)))

(declare-fun bs!1183525 () Bool)

(declare-fun d!1600527 () Bool)

(assert (= bs!1183525 (and d!1600527 b!4970325)))

(assert (=> bs!1183525 (= (dynLambda!23186 lambda!247422 (_1!34397 lt!2052478)) (= (list!18371 (dynLambda!23184 (toChars!11217 (transformation!8395 (h!63900 rulesArg!259))) (dynLambda!23185 (toValue!11358 (transformation!8395 (h!63900 rulesArg!259))) (_1!34397 lt!2052478)))) (list!18371 (_1!34397 lt!2052478))))))

(declare-fun b_lambda!197175 () Bool)

(assert (=> (not b_lambda!197175) (not bs!1183525)))

(declare-fun t!369067 () Bool)

(declare-fun tb!261025 () Bool)

(assert (=> (and b!4970138 (= (toChars!11217 (transformation!8395 (h!63900 rulesArg!259))) (toChars!11217 (transformation!8395 (h!63900 rulesArg!259)))) t!369067) tb!261025))

(declare-fun tp!1394073 () Bool)

(declare-fun e!3106876 () Bool)

(declare-fun b!4970939 () Bool)

(assert (=> b!4970939 (= e!3106876 (and (inv!75091 (c!848111 (dynLambda!23184 (toChars!11217 (transformation!8395 (h!63900 rulesArg!259))) (dynLambda!23185 (toValue!11358 (transformation!8395 (h!63900 rulesArg!259))) (_1!34397 lt!2052478))))) tp!1394073))))

(declare-fun result!326162 () Bool)

(assert (=> tb!261025 (= result!326162 (and (inv!75090 (dynLambda!23184 (toChars!11217 (transformation!8395 (h!63900 rulesArg!259))) (dynLambda!23185 (toValue!11358 (transformation!8395 (h!63900 rulesArg!259))) (_1!34397 lt!2052478)))) e!3106876))))

(assert (= tb!261025 b!4970939))

(declare-fun m!5999082 () Bool)

(assert (=> b!4970939 m!5999082))

(declare-fun m!5999084 () Bool)

(assert (=> tb!261025 m!5999084))

(assert (=> bs!1183525 t!369067))

(declare-fun b_and!348655 () Bool)

(assert (= b_and!348643 (and (=> t!369067 result!326162) b_and!348655)))

(declare-fun t!369069 () Bool)

(declare-fun tb!261027 () Bool)

(assert (=> (and b!4970352 (= (toChars!11217 (transformation!8395 (h!63900 (t!369030 rulesArg!259)))) (toChars!11217 (transformation!8395 (h!63900 rulesArg!259)))) t!369069) tb!261027))

(declare-fun result!326164 () Bool)

(assert (= result!326164 result!326162))

(assert (=> bs!1183525 t!369069))

(declare-fun b_and!348657 () Bool)

(assert (= b_and!348645 (and (=> t!369069 result!326164) b_and!348657)))

(declare-fun t!369071 () Bool)

(declare-fun tb!261029 () Bool)

(assert (=> (and b!4970909 (= (toChars!11217 (transformation!8395 (h!63900 (t!369030 (t!369030 rulesArg!259))))) (toChars!11217 (transformation!8395 (h!63900 rulesArg!259)))) t!369071) tb!261029))

(declare-fun result!326166 () Bool)

(assert (= result!326166 result!326162))

(assert (=> bs!1183525 t!369071))

(declare-fun b_and!348659 () Bool)

(assert (= b_and!348647 (and (=> t!369071 result!326166) b_and!348659)))

(declare-fun b_lambda!197177 () Bool)

(assert (=> (not b_lambda!197177) (not bs!1183525)))

(assert (=> bs!1183525 t!369045))

(declare-fun b_and!348661 () Bool)

(assert (= b_and!348649 (and (=> t!369045 result!326138) b_and!348661)))

(assert (=> bs!1183525 t!369047))

(declare-fun b_and!348663 () Bool)

(assert (= b_and!348651 (and (=> t!369047 result!326140) b_and!348663)))

(assert (=> bs!1183525 t!369055))

(declare-fun b_and!348665 () Bool)

(assert (= b_and!348653 (and (=> t!369055 result!326150) b_and!348665)))

(declare-fun m!5999086 () Bool)

(assert (=> bs!1183525 m!5999086))

(declare-fun m!5999088 () Bool)

(assert (=> bs!1183525 m!5999088))

(assert (=> bs!1183525 m!5998862))

(assert (=> bs!1183525 m!5998862))

(assert (=> bs!1183525 m!5999086))

(assert (=> bs!1183525 m!5998332))

(assert (=> d!1600463 d!1600527))

(declare-fun b_lambda!197167 () Bool)

(assert (= b_lambda!197151 (or (and b!4970138 b_free!132799) (and b!4970352 b_free!132807 (= (toValue!11358 (transformation!8395 (h!63900 (t!369030 rulesArg!259)))) (toValue!11358 (transformation!8395 (h!63900 rulesArg!259))))) (and b!4970909 b_free!132815 (= (toValue!11358 (transformation!8395 (h!63900 (t!369030 (t!369030 rulesArg!259))))) (toValue!11358 (transformation!8395 (h!63900 rulesArg!259))))) b_lambda!197167)))

(declare-fun b_lambda!197169 () Bool)

(assert (= b_lambda!197141 (or d!1600285 b_lambda!197169)))

(declare-fun bs!1183526 () Bool)

(declare-fun d!1600529 () Bool)

(assert (= bs!1183526 (and d!1600529 d!1600285)))

(assert (=> bs!1183526 (= (dynLambda!23183 lambda!247417 (h!63900 rulesArg!259)) (ruleValid!3804 thiss!15247 (h!63900 rulesArg!259)))))

(assert (=> bs!1183526 m!5998252))

(assert (=> b!4970599 d!1600529))

(push 1)

(assert (not b!4970829))

(assert (not b!4970915))

(assert (not b!4970614))

(assert (not bm!346669))

(assert (not b!4970659))

(assert (not b_next!133607))

(assert (not b!4970813))

(assert (not d!1600381))

(assert (not d!1600503))

(assert (not b!4970662))

(assert (not b!4970608))

(assert (not d!1600355))

(assert (not d!1600363))

(assert (not b!4970640))

(assert (not d!1600365))

(assert (not b!4970900))

(assert (not tb!261025))

(assert (not b!4970919))

(assert (not b!4970602))

(assert (not b!4970616))

(assert (not b!4970584))

(assert (not b!4970649))

(assert (not b!4970603))

(assert (not b_lambda!197143))

(assert (not b!4970605))

(assert (not b!4970637))

(assert (not d!1600517))

(assert (not b!4970538))

(assert (not b!4970646))

(assert (not b_lambda!197165))

(assert (not d!1600489))

(assert (not b!4970561))

(assert (not d!1600425))

(assert (not d!1600421))

(assert (not b!4970888))

(assert (not d!1600385))

(assert (not b_lambda!197171))

(assert (not d!1600463))

(assert (not b!4970648))

(assert (not b!4970713))

(assert (not b_lambda!197173))

(assert (not b!4970525))

(assert (not b!4970734))

(assert (not b!4970660))

(assert (not b_lambda!197145))

(assert (not tb!261007))

(assert (not b!4970912))

(assert (not tb!261003))

(assert (not bm!346641))

(assert b_and!348663)

(assert (not b!4970835))

(assert (not b!4970701))

(assert (not b!4970812))

(assert (not b!4970656))

(assert (not d!1600455))

(assert (not b!4970593))

(assert (not b!4970583))

(assert (not b!4970515))

(assert (not d!1600435))

(assert (not b!4970728))

(assert (not b!4970828))

(assert (not bm!346663))

(assert (not b!4970814))

(assert (not b!4970754))

(assert (not b!4970898))

(assert (not b_next!133605))

(assert (not b!4970816))

(assert (not b!4970702))

(assert (not b!4970832))

(assert (not bm!346639))

(assert (not bm!346671))

(assert (not b!4970838))

(assert (not b!4970802))

(assert (not b!4970726))

(assert (not b!4970587))

(assert (not b!4970902))

(assert (not b!4970757))

(assert (not b!4970889))

(assert b_and!348659)

(assert (not b!4970841))

(assert (not b!4970892))

(assert (not b!4970922))

(assert (not d!1600413))

(assert (not b!4970815))

(assert (not b!4970654))

(assert (not bm!346661))

(assert (not b!4970920))

(assert (not b!4970617))

(assert (not bm!346640))

(assert (not b!4970604))

(assert (not b_lambda!197177))

(assert (not b!4970879))

(assert b_and!348657)

(assert (not b!4970845))

(assert (not b!4970924))

(assert (not b!4970837))

(assert (not b!4970901))

(assert (not d!1600361))

(assert (not b!4970588))

(assert (not b!4970644))

(assert (not b!4970639))

(assert (not b!4970733))

(assert (not b!4970906))

(assert (not b!4970797))

(assert (not b!4970914))

(assert (not d!1600383))

(assert (not bs!1183525))

(assert (not b!4970543))

(assert (not bm!346666))

(assert (not b!4970521))

(assert (not b!4970930))

(assert (not b!4970378))

(assert (not b!4970524))

(assert (not d!1600411))

(assert (not d!1600493))

(assert (not d!1600481))

(assert (not b!4970606))

(assert (not d!1600433))

(assert (not b!4970738))

(assert (not b!4970927))

(assert (not b!4970730))

(assert (not d!1600391))

(assert (not b!4970806))

(assert (not d!1600429))

(assert (not b!4970840))

(assert (not b!4970528))

(assert (not d!1600491))

(assert (not d!1600447))

(assert (not b!4970767))

(assert (not b!4970526))

(assert (not bm!346660))

(assert (not d!1600479))

(assert (not d!1600477))

(assert (not b!4970934))

(assert (not b!4970891))

(assert (not bm!346662))

(assert (not b!4970916))

(assert (not b!4970580))

(assert (not b!4970751))

(assert (not b!4970890))

(assert (not b!4970752))

(assert (not tb!261019))

(assert (not bs!1183526))

(assert (not d!1600499))

(assert (not b!4970753))

(assert (not b!4970939))

(assert (not b_next!133597))

(assert (not b_lambda!197169))

(assert (not d!1600353))

(assert (not b!4970929))

(assert (not d!1600453))

(assert (not b_lambda!197175))

(assert (not b!4970938))

(assert (not b!4970893))

(assert (not d!1600449))

(assert (not d!1600483))

(assert (not b!4970932))

(assert (not d!1600501))

(assert (not d!1600359))

(assert (not b!4970647))

(assert (not b!4970904))

(assert (not b!4970522))

(assert (not bm!346664))

(assert (not b!4970609))

(assert (not b!4970612))

(assert (not b!4970638))

(assert (not b_lambda!197167))

(assert (not b!4970731))

(assert (not b!4970657))

(assert (not d!1600389))

(assert tp_is_empty!36337)

(assert (not b!4970555))

(assert (not b!4970905))

(assert (not b!4970846))

(assert (not b!4970886))

(assert (not b_next!133599))

(assert (not b!4970811))

(assert (not b!4970766))

(assert (not d!1600375))

(assert (not b!4970874))

(assert (not b!4970729))

(assert (not b_lambda!197163))

(assert (not b!4970716))

(assert (not b_lambda!197159))

(assert (not b!4970645))

(assert (not b_next!133591))

(assert (not b!4970918))

(assert (not b!4970361))

(assert (not d!1600475))

(assert (not b!4970727))

(assert (not b!4970710))

(assert (not d!1600351))

(assert (not b!4970800))

(assert (not b!4970735))

(assert (not bm!346658))

(assert (not b!4970704))

(assert (not b_lambda!197161))

(assert (not b!4970884))

(assert (not b!4970749))

(assert (not b!4970624))

(assert (not bs!1183524))

(assert (not b!4970541))

(assert (not b_next!133589))

(assert (not b!4970803))

(assert (not b!4970933))

(assert (not d!1600487))

(assert (not d!1600387))

(assert (not bm!346670))

(assert (not b!4970619))

(assert (not b!4970805))

(assert (not b!4970817))

(assert (not b!4970666))

(assert (not d!1600457))

(assert (not b!4970928))

(assert (not b!4970650))

(assert (not tb!260995))

(assert (not b!4970582))

(assert (not b!4970908))

(assert (not d!1600495))

(assert (not b!4970581))

(assert (not b!4970536))

(assert (not b!4970641))

(assert (not tb!260999))

(assert (not d!1600407))

(assert (not b!4970755))

(assert (not d!1600439))

(assert (not d!1600395))

(assert (not b!4970931))

(assert (not bm!346674))

(assert (not d!1600367))

(assert (not b!4970907))

(assert (not b!4970601))

(assert (not b!4970926))

(assert (not b!4970923))

(assert (not b!4970883))

(assert (not b!4970758))

(assert (not b!4970642))

(assert b_and!348665)

(assert (not d!1600465))

(assert (not b!4970739))

(assert (not bm!346665))

(assert (not b!4970554))

(assert (not b!4970756))

(assert (not b!4970818))

(assert (not d!1600441))

(assert (not d!1600443))

(assert (not b!4970540))

(assert (not b!4970585))

(assert (not b!4970661))

(assert (not b!4970613))

(assert b_and!348655)

(assert (not b!4970600))

(assert (not bm!346659))

(assert (not b!4970706))

(assert (not b!4970725))

(assert b_and!348661)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!133607))

(assert b_and!348663)

(assert (not b_next!133605))

(assert b_and!348659)

(assert b_and!348657)

(assert (not b_next!133597))

(assert (not b_next!133599))

(assert (not b_next!133591))

(assert (not b_next!133589))

(assert b_and!348665)

(assert b_and!348655)

(assert b_and!348661)

(check-sat)

(pop 1)


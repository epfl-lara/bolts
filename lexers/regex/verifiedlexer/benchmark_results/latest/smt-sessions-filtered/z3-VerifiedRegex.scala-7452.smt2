; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395734 () Bool)

(assert start!395734)

(declare-fun b!4156114 () Bool)

(declare-fun b_free!119339 () Bool)

(declare-fun b_next!120043 () Bool)

(assert (=> b!4156114 (= b_free!119339 (not b_next!120043))))

(declare-fun tp!1267862 () Bool)

(declare-fun b_and!323701 () Bool)

(assert (=> b!4156114 (= tp!1267862 b_and!323701)))

(declare-fun b_free!119341 () Bool)

(declare-fun b_next!120045 () Bool)

(assert (=> b!4156114 (= b_free!119341 (not b_next!120045))))

(declare-fun tp!1267857 () Bool)

(declare-fun b_and!323703 () Bool)

(assert (=> b!4156114 (= tp!1267857 b_and!323703)))

(declare-fun b!4156111 () Bool)

(declare-fun b_free!119343 () Bool)

(declare-fun b_next!120047 () Bool)

(assert (=> b!4156111 (= b_free!119343 (not b_next!120047))))

(declare-fun tp!1267861 () Bool)

(declare-fun b_and!323705 () Bool)

(assert (=> b!4156111 (= tp!1267861 b_and!323705)))

(declare-fun b_free!119345 () Bool)

(declare-fun b_next!120049 () Bool)

(assert (=> b!4156111 (= b_free!119345 (not b_next!120049))))

(declare-fun tp!1267856 () Bool)

(declare-fun b_and!323707 () Bool)

(assert (=> b!4156111 (= tp!1267856 b_and!323707)))

(declare-fun b!4156107 () Bool)

(declare-fun b_free!119347 () Bool)

(declare-fun b_next!120051 () Bool)

(assert (=> b!4156107 (= b_free!119347 (not b_next!120051))))

(declare-fun tp!1267855 () Bool)

(declare-fun b_and!323709 () Bool)

(assert (=> b!4156107 (= tp!1267855 b_and!323709)))

(declare-fun b_free!119349 () Bool)

(declare-fun b_next!120053 () Bool)

(assert (=> b!4156107 (= b_free!119349 (not b_next!120053))))

(declare-fun tp!1267859 () Bool)

(declare-fun b_and!323711 () Bool)

(assert (=> b!4156107 (= tp!1267859 b_and!323711)))

(declare-fun b!4156104 () Bool)

(declare-fun res!1702131 () Bool)

(declare-fun e!2579077 () Bool)

(assert (=> b!4156104 (=> (not res!1702131) (not e!2579077))))

(declare-datatypes ((List!45404 0))(
  ( (Nil!45280) (Cons!45280 (h!50700 (_ BitVec 16)) (t!343435 List!45404)) )
))
(declare-datatypes ((TokenValue!7706 0))(
  ( (FloatLiteralValue!15412 (text!54387 List!45404)) (TokenValueExt!7705 (__x!27629 Int)) (Broken!38530 (value!233555 List!45404)) (Object!7829) (End!7706) (Def!7706) (Underscore!7706) (Match!7706) (Else!7706) (Error!7706) (Case!7706) (If!7706) (Extends!7706) (Abstract!7706) (Class!7706) (Val!7706) (DelimiterValue!15412 (del!7766 List!45404)) (KeywordValue!7712 (value!233556 List!45404)) (CommentValue!15412 (value!233557 List!45404)) (WhitespaceValue!15412 (value!233558 List!45404)) (IndentationValue!7706 (value!233559 List!45404)) (String!52279) (Int32!7706) (Broken!38531 (value!233560 List!45404)) (Boolean!7707) (Unit!64460) (OperatorValue!7709 (op!7766 List!45404)) (IdentifierValue!15412 (value!233561 List!45404)) (IdentifierValue!15413 (value!233562 List!45404)) (WhitespaceValue!15413 (value!233563 List!45404)) (True!15412) (False!15412) (Broken!38532 (value!233564 List!45404)) (Broken!38533 (value!233565 List!45404)) (True!15413) (RightBrace!7706) (RightBracket!7706) (Colon!7706) (Null!7706) (Comma!7706) (LeftBracket!7706) (False!15413) (LeftBrace!7706) (ImaginaryLiteralValue!7706 (text!54388 List!45404)) (StringLiteralValue!23118 (value!233566 List!45404)) (EOFValue!7706 (value!233567 List!45404)) (IdentValue!7706 (value!233568 List!45404)) (DelimiterValue!15413 (value!233569 List!45404)) (DedentValue!7706 (value!233570 List!45404)) (NewLineValue!7706 (value!233571 List!45404)) (IntegerValue!23118 (value!233572 (_ BitVec 32)) (text!54389 List!45404)) (IntegerValue!23119 (value!233573 Int) (text!54390 List!45404)) (Times!7706) (Or!7706) (Equal!7706) (Minus!7706) (Broken!38534 (value!233574 List!45404)) (And!7706) (Div!7706) (LessEqual!7706) (Mod!7706) (Concat!20087) (Not!7706) (Plus!7706) (SpaceValue!7706 (value!233575 List!45404)) (IntegerValue!23120 (value!233576 Int) (text!54391 List!45404)) (StringLiteralValue!23119 (text!54392 List!45404)) (FloatLiteralValue!15413 (text!54393 List!45404)) (BytesLiteralValue!7706 (value!233577 List!45404)) (CommentValue!15413 (value!233578 List!45404)) (StringLiteralValue!23120 (value!233579 List!45404)) (ErrorTokenValue!7706 (msg!7767 List!45404)) )
))
(declare-datatypes ((C!24948 0))(
  ( (C!24949 (val!14584 Int)) )
))
(declare-datatypes ((List!45405 0))(
  ( (Nil!45281) (Cons!45281 (h!50701 C!24948) (t!343436 List!45405)) )
))
(declare-datatypes ((IArray!27379 0))(
  ( (IArray!27380 (innerList!13747 List!45405)) )
))
(declare-datatypes ((Conc!13687 0))(
  ( (Node!13687 (left!33847 Conc!13687) (right!34177 Conc!13687) (csize!27604 Int) (cheight!13898 Int)) (Leaf!21140 (xs!16993 IArray!27379) (csize!27605 Int)) (Empty!13687) )
))
(declare-datatypes ((Regex!12381 0))(
  ( (ElementMatch!12381 (c!711416 C!24948)) (Concat!20088 (regOne!25274 Regex!12381) (regTwo!25274 Regex!12381)) (EmptyExpr!12381) (Star!12381 (reg!12710 Regex!12381)) (EmptyLang!12381) (Union!12381 (regOne!25275 Regex!12381) (regTwo!25275 Regex!12381)) )
))
(declare-datatypes ((String!52280 0))(
  ( (String!52281 (value!233580 String)) )
))
(declare-datatypes ((BalanceConc!26968 0))(
  ( (BalanceConc!26969 (c!711417 Conc!13687)) )
))
(declare-datatypes ((TokenValueInjection!14840 0))(
  ( (TokenValueInjection!14841 (toValue!10140 Int) (toChars!9999 Int)) )
))
(declare-datatypes ((Rule!14752 0))(
  ( (Rule!14753 (regex!7476 Regex!12381) (tag!8340 String!52280) (isSeparator!7476 Bool) (transformation!7476 TokenValueInjection!14840)) )
))
(declare-datatypes ((List!45406 0))(
  ( (Nil!45282) (Cons!45282 (h!50702 Rule!14752) (t!343437 List!45406)) )
))
(declare-fun rules!4102 () List!45406)

(declare-fun r1!615 () Rule!14752)

(declare-fun contains!9183 (List!45406 Rule!14752) Bool)

(assert (=> b!4156104 (= res!1702131 (contains!9183 rules!4102 r1!615))))

(declare-fun res!1702135 () Bool)

(assert (=> start!395734 (=> (not res!1702135) (not e!2579077))))

(declare-datatypes ((LexerInterface!7065 0))(
  ( (LexerInterfaceExt!7062 (__x!27630 Int)) (Lexer!7063) )
))
(declare-fun thiss!26968 () LexerInterface!7065)

(get-info :version)

(assert (=> start!395734 (= res!1702135 ((_ is Lexer!7063) thiss!26968))))

(assert (=> start!395734 e!2579077))

(assert (=> start!395734 true))

(declare-fun e!2579086 () Bool)

(assert (=> start!395734 e!2579086))

(declare-fun e!2579078 () Bool)

(assert (=> start!395734 e!2579078))

(declare-fun e!2579083 () Bool)

(assert (=> start!395734 e!2579083))

(declare-fun b!4156105 () Bool)

(declare-fun res!1702132 () Bool)

(assert (=> b!4156105 (=> (not res!1702132) (not e!2579077))))

(declare-datatypes ((List!45407 0))(
  ( (Nil!45283) (Cons!45283 (h!50703 String!52280) (t!343438 List!45407)) )
))
(declare-fun noDuplicateTag!3053 (LexerInterface!7065 List!45406 List!45407) Bool)

(declare-fun noDuplicateTag$default$2!58 (LexerInterface!7065) List!45407)

(assert (=> b!4156105 (= res!1702132 (noDuplicateTag!3053 thiss!26968 rules!4102 (noDuplicateTag$default$2!58 thiss!26968)))))

(declare-fun b!4156106 () Bool)

(declare-fun res!1702134 () Bool)

(assert (=> b!4156106 (=> (not res!1702134) (not e!2579077))))

(declare-fun r2!597 () Rule!14752)

(assert (=> b!4156106 (= res!1702134 (contains!9183 rules!4102 r2!597))))

(declare-fun e!2579081 () Bool)

(assert (=> b!4156107 (= e!2579081 (and tp!1267855 tp!1267859))))

(declare-fun b!4156108 () Bool)

(declare-fun e!2579084 () Bool)

(declare-fun lt!1481474 () Rule!14752)

(declare-fun subseq!559 (List!45407 List!45407) Bool)

(assert (=> b!4156108 (= e!2579084 (not (subseq!559 Nil!45283 (Cons!45283 (tag!8340 lt!1481474) Nil!45283))))))

(declare-fun tp!1267858 () Bool)

(declare-fun e!2579085 () Bool)

(declare-fun b!4156109 () Bool)

(declare-fun inv!59835 (String!52280) Bool)

(declare-fun inv!59837 (TokenValueInjection!14840) Bool)

(assert (=> b!4156109 (= e!2579083 (and tp!1267858 (inv!59835 (tag!8340 r2!597)) (inv!59837 (transformation!7476 r2!597)) e!2579085))))

(declare-fun b!4156110 () Bool)

(declare-fun e!2579082 () Bool)

(declare-fun tp!1267853 () Bool)

(assert (=> b!4156110 (= e!2579086 (and e!2579082 tp!1267853))))

(assert (=> b!4156111 (= e!2579085 (and tp!1267861 tp!1267856))))

(declare-fun e!2579075 () Bool)

(declare-fun tp!1267860 () Bool)

(declare-fun b!4156112 () Bool)

(assert (=> b!4156112 (= e!2579078 (and tp!1267860 (inv!59835 (tag!8340 r1!615)) (inv!59837 (transformation!7476 r1!615)) e!2579075))))

(declare-fun b!4156113 () Bool)

(assert (=> b!4156113 (= e!2579077 e!2579084)))

(declare-fun res!1702136 () Bool)

(assert (=> b!4156113 (=> (not res!1702136) (not e!2579084))))

(assert (=> b!4156113 (= res!1702136 (not (= lt!1481474 r1!615)))))

(declare-fun head!8798 (List!45406) Rule!14752)

(assert (=> b!4156113 (= lt!1481474 (head!8798 rules!4102))))

(assert (=> b!4156114 (= e!2579075 (and tp!1267862 tp!1267857))))

(declare-fun tp!1267854 () Bool)

(declare-fun b!4156115 () Bool)

(assert (=> b!4156115 (= e!2579082 (and tp!1267854 (inv!59835 (tag!8340 (h!50702 rules!4102))) (inv!59837 (transformation!7476 (h!50702 rules!4102))) e!2579081))))

(declare-fun b!4156116 () Bool)

(declare-fun res!1702133 () Bool)

(assert (=> b!4156116 (=> (not res!1702133) (not e!2579077))))

(declare-fun getIndex!818 (List!45406 Rule!14752) Int)

(assert (=> b!4156116 (= res!1702133 (< (getIndex!818 rules!4102 r1!615) (getIndex!818 rules!4102 r2!597)))))

(assert (= (and start!395734 res!1702135) b!4156104))

(assert (= (and b!4156104 res!1702131) b!4156106))

(assert (= (and b!4156106 res!1702134) b!4156105))

(assert (= (and b!4156105 res!1702132) b!4156116))

(assert (= (and b!4156116 res!1702133) b!4156113))

(assert (= (and b!4156113 res!1702136) b!4156108))

(assert (= b!4156115 b!4156107))

(assert (= b!4156110 b!4156115))

(assert (= (and start!395734 ((_ is Cons!45282) rules!4102)) b!4156110))

(assert (= b!4156112 b!4156114))

(assert (= start!395734 b!4156112))

(assert (= b!4156109 b!4156111))

(assert (= start!395734 b!4156109))

(declare-fun m!4750365 () Bool)

(assert (=> b!4156104 m!4750365))

(declare-fun m!4750367 () Bool)

(assert (=> b!4156106 m!4750367))

(declare-fun m!4750369 () Bool)

(assert (=> b!4156115 m!4750369))

(declare-fun m!4750371 () Bool)

(assert (=> b!4156115 m!4750371))

(declare-fun m!4750373 () Bool)

(assert (=> b!4156113 m!4750373))

(declare-fun m!4750375 () Bool)

(assert (=> b!4156105 m!4750375))

(assert (=> b!4156105 m!4750375))

(declare-fun m!4750377 () Bool)

(assert (=> b!4156105 m!4750377))

(declare-fun m!4750379 () Bool)

(assert (=> b!4156109 m!4750379))

(declare-fun m!4750381 () Bool)

(assert (=> b!4156109 m!4750381))

(declare-fun m!4750383 () Bool)

(assert (=> b!4156112 m!4750383))

(declare-fun m!4750385 () Bool)

(assert (=> b!4156112 m!4750385))

(declare-fun m!4750387 () Bool)

(assert (=> b!4156108 m!4750387))

(declare-fun m!4750389 () Bool)

(assert (=> b!4156116 m!4750389))

(declare-fun m!4750391 () Bool)

(assert (=> b!4156116 m!4750391))

(check-sat (not b!4156108) (not b_next!120051) (not b_next!120047) (not b!4156110) b_and!323703 (not b!4156112) (not b!4156104) b_and!323711 (not b!4156116) (not b_next!120053) (not b_next!120049) b_and!323707 (not b!4156113) b_and!323709 b_and!323701 (not b!4156105) (not b_next!120043) (not b!4156106) (not b!4156115) (not b!4156109) b_and!323705 (not b_next!120045))
(check-sat (not b_next!120051) (not b_next!120047) b_and!323703 b_and!323709 b_and!323701 b_and!323711 (not b_next!120043) (not b_next!120053) (not b_next!120049) b_and!323707 b_and!323705 (not b_next!120045))
(get-model)

(declare-fun b!4156136 () Bool)

(declare-fun e!2579098 () Int)

(assert (=> b!4156136 (= e!2579098 (- 1))))

(declare-fun d!1228961 () Bool)

(declare-fun lt!1481479 () Int)

(assert (=> d!1228961 (>= lt!1481479 0)))

(declare-fun e!2579097 () Int)

(assert (=> d!1228961 (= lt!1481479 e!2579097)))

(declare-fun c!711427 () Bool)

(assert (=> d!1228961 (= c!711427 (and ((_ is Cons!45282) rules!4102) (= (h!50702 rules!4102) r1!615)))))

(assert (=> d!1228961 (contains!9183 rules!4102 r1!615)))

(assert (=> d!1228961 (= (getIndex!818 rules!4102 r1!615) lt!1481479)))

(declare-fun b!4156134 () Bool)

(assert (=> b!4156134 (= e!2579097 e!2579098)))

(declare-fun c!711426 () Bool)

(assert (=> b!4156134 (= c!711426 (and ((_ is Cons!45282) rules!4102) (not (= (h!50702 rules!4102) r1!615))))))

(declare-fun b!4156135 () Bool)

(assert (=> b!4156135 (= e!2579098 (+ 1 (getIndex!818 (t!343437 rules!4102) r1!615)))))

(declare-fun b!4156133 () Bool)

(assert (=> b!4156133 (= e!2579097 0)))

(assert (= (and d!1228961 c!711427) b!4156133))

(assert (= (and d!1228961 (not c!711427)) b!4156134))

(assert (= (and b!4156134 c!711426) b!4156135))

(assert (= (and b!4156134 (not c!711426)) b!4156136))

(assert (=> d!1228961 m!4750365))

(declare-fun m!4750393 () Bool)

(assert (=> b!4156135 m!4750393))

(assert (=> b!4156116 d!1228961))

(declare-fun b!4156140 () Bool)

(declare-fun e!2579100 () Int)

(assert (=> b!4156140 (= e!2579100 (- 1))))

(declare-fun d!1228965 () Bool)

(declare-fun lt!1481480 () Int)

(assert (=> d!1228965 (>= lt!1481480 0)))

(declare-fun e!2579099 () Int)

(assert (=> d!1228965 (= lt!1481480 e!2579099)))

(declare-fun c!711429 () Bool)

(assert (=> d!1228965 (= c!711429 (and ((_ is Cons!45282) rules!4102) (= (h!50702 rules!4102) r2!597)))))

(assert (=> d!1228965 (contains!9183 rules!4102 r2!597)))

(assert (=> d!1228965 (= (getIndex!818 rules!4102 r2!597) lt!1481480)))

(declare-fun b!4156138 () Bool)

(assert (=> b!4156138 (= e!2579099 e!2579100)))

(declare-fun c!711428 () Bool)

(assert (=> b!4156138 (= c!711428 (and ((_ is Cons!45282) rules!4102) (not (= (h!50702 rules!4102) r2!597))))))

(declare-fun b!4156139 () Bool)

(assert (=> b!4156139 (= e!2579100 (+ 1 (getIndex!818 (t!343437 rules!4102) r2!597)))))

(declare-fun b!4156137 () Bool)

(assert (=> b!4156137 (= e!2579099 0)))

(assert (= (and d!1228965 c!711429) b!4156137))

(assert (= (and d!1228965 (not c!711429)) b!4156138))

(assert (= (and b!4156138 c!711428) b!4156139))

(assert (= (and b!4156138 (not c!711428)) b!4156140))

(assert (=> d!1228965 m!4750367))

(declare-fun m!4750395 () Bool)

(assert (=> b!4156139 m!4750395))

(assert (=> b!4156116 d!1228965))

(declare-fun d!1228967 () Bool)

(declare-fun res!1702152 () Bool)

(declare-fun e!2579109 () Bool)

(assert (=> d!1228967 (=> res!1702152 e!2579109)))

(assert (=> d!1228967 (= res!1702152 ((_ is Nil!45282) rules!4102))))

(assert (=> d!1228967 (= (noDuplicateTag!3053 thiss!26968 rules!4102 (noDuplicateTag$default$2!58 thiss!26968)) e!2579109)))

(declare-fun b!4156153 () Bool)

(declare-fun e!2579110 () Bool)

(assert (=> b!4156153 (= e!2579109 e!2579110)))

(declare-fun res!1702153 () Bool)

(assert (=> b!4156153 (=> (not res!1702153) (not e!2579110))))

(declare-fun contains!9184 (List!45407 String!52280) Bool)

(assert (=> b!4156153 (= res!1702153 (not (contains!9184 (noDuplicateTag$default$2!58 thiss!26968) (tag!8340 (h!50702 rules!4102)))))))

(declare-fun b!4156154 () Bool)

(assert (=> b!4156154 (= e!2579110 (noDuplicateTag!3053 thiss!26968 (t!343437 rules!4102) (Cons!45283 (tag!8340 (h!50702 rules!4102)) (noDuplicateTag$default$2!58 thiss!26968))))))

(assert (= (and d!1228967 (not res!1702152)) b!4156153))

(assert (= (and b!4156153 res!1702153) b!4156154))

(assert (=> b!4156153 m!4750375))

(declare-fun m!4750401 () Bool)

(assert (=> b!4156153 m!4750401))

(declare-fun m!4750403 () Bool)

(assert (=> b!4156154 m!4750403))

(assert (=> b!4156105 d!1228967))

(declare-fun d!1228973 () Bool)

(assert (=> d!1228973 (= (noDuplicateTag$default$2!58 thiss!26968) Nil!45283)))

(assert (=> b!4156105 d!1228973))

(declare-fun d!1228975 () Bool)

(assert (=> d!1228975 (= (inv!59835 (tag!8340 (h!50702 rules!4102))) (= (mod (str.len (value!233580 (tag!8340 (h!50702 rules!4102)))) 2) 0))))

(assert (=> b!4156115 d!1228975))

(declare-fun d!1228977 () Bool)

(declare-fun res!1702168 () Bool)

(declare-fun e!2579125 () Bool)

(assert (=> d!1228977 (=> (not res!1702168) (not e!2579125))))

(declare-fun semiInverseModEq!3240 (Int Int) Bool)

(assert (=> d!1228977 (= res!1702168 (semiInverseModEq!3240 (toChars!9999 (transformation!7476 (h!50702 rules!4102))) (toValue!10140 (transformation!7476 (h!50702 rules!4102)))))))

(assert (=> d!1228977 (= (inv!59837 (transformation!7476 (h!50702 rules!4102))) e!2579125)))

(declare-fun b!4156169 () Bool)

(declare-fun equivClasses!3139 (Int Int) Bool)

(assert (=> b!4156169 (= e!2579125 (equivClasses!3139 (toChars!9999 (transformation!7476 (h!50702 rules!4102))) (toValue!10140 (transformation!7476 (h!50702 rules!4102)))))))

(assert (= (and d!1228977 res!1702168) b!4156169))

(declare-fun m!4750409 () Bool)

(assert (=> d!1228977 m!4750409))

(declare-fun m!4750411 () Bool)

(assert (=> b!4156169 m!4750411))

(assert (=> b!4156115 d!1228977))

(declare-fun d!1228983 () Bool)

(declare-fun lt!1481485 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7007 (List!45406) (InoxSet Rule!14752))

(assert (=> d!1228983 (= lt!1481485 (select (content!7007 rules!4102) r1!615))))

(declare-fun e!2579135 () Bool)

(assert (=> d!1228983 (= lt!1481485 e!2579135)))

(declare-fun res!1702178 () Bool)

(assert (=> d!1228983 (=> (not res!1702178) (not e!2579135))))

(assert (=> d!1228983 (= res!1702178 ((_ is Cons!45282) rules!4102))))

(assert (=> d!1228983 (= (contains!9183 rules!4102 r1!615) lt!1481485)))

(declare-fun b!4156178 () Bool)

(declare-fun e!2579134 () Bool)

(assert (=> b!4156178 (= e!2579135 e!2579134)))

(declare-fun res!1702177 () Bool)

(assert (=> b!4156178 (=> res!1702177 e!2579134)))

(assert (=> b!4156178 (= res!1702177 (= (h!50702 rules!4102) r1!615))))

(declare-fun b!4156179 () Bool)

(assert (=> b!4156179 (= e!2579134 (contains!9183 (t!343437 rules!4102) r1!615))))

(assert (= (and d!1228983 res!1702178) b!4156178))

(assert (= (and b!4156178 (not res!1702177)) b!4156179))

(declare-fun m!4750421 () Bool)

(assert (=> d!1228983 m!4750421))

(declare-fun m!4750423 () Bool)

(assert (=> d!1228983 m!4750423))

(declare-fun m!4750425 () Bool)

(assert (=> b!4156179 m!4750425))

(assert (=> b!4156104 d!1228983))

(declare-fun d!1228993 () Bool)

(assert (=> d!1228993 (= (inv!59835 (tag!8340 r2!597)) (= (mod (str.len (value!233580 (tag!8340 r2!597))) 2) 0))))

(assert (=> b!4156109 d!1228993))

(declare-fun d!1228995 () Bool)

(declare-fun res!1702179 () Bool)

(declare-fun e!2579136 () Bool)

(assert (=> d!1228995 (=> (not res!1702179) (not e!2579136))))

(assert (=> d!1228995 (= res!1702179 (semiInverseModEq!3240 (toChars!9999 (transformation!7476 r2!597)) (toValue!10140 (transformation!7476 r2!597))))))

(assert (=> d!1228995 (= (inv!59837 (transformation!7476 r2!597)) e!2579136)))

(declare-fun b!4156180 () Bool)

(assert (=> b!4156180 (= e!2579136 (equivClasses!3139 (toChars!9999 (transformation!7476 r2!597)) (toValue!10140 (transformation!7476 r2!597))))))

(assert (= (and d!1228995 res!1702179) b!4156180))

(declare-fun m!4750427 () Bool)

(assert (=> d!1228995 m!4750427))

(declare-fun m!4750429 () Bool)

(assert (=> b!4156180 m!4750429))

(assert (=> b!4156109 d!1228995))

(declare-fun b!4156201 () Bool)

(declare-fun e!2579156 () Bool)

(assert (=> b!4156201 (= e!2579156 (subseq!559 Nil!45283 (t!343438 (Cons!45283 (tag!8340 lt!1481474) Nil!45283))))))

(declare-fun b!4156198 () Bool)

(declare-fun e!2579155 () Bool)

(declare-fun e!2579154 () Bool)

(assert (=> b!4156198 (= e!2579155 e!2579154)))

(declare-fun res!1702200 () Bool)

(assert (=> b!4156198 (=> (not res!1702200) (not e!2579154))))

(assert (=> b!4156198 (= res!1702200 ((_ is Cons!45283) (Cons!45283 (tag!8340 lt!1481474) Nil!45283)))))

(declare-fun b!4156199 () Bool)

(assert (=> b!4156199 (= e!2579154 e!2579156)))

(declare-fun res!1702197 () Bool)

(assert (=> b!4156199 (=> res!1702197 e!2579156)))

(declare-fun e!2579157 () Bool)

(assert (=> b!4156199 (= res!1702197 e!2579157)))

(declare-fun res!1702198 () Bool)

(assert (=> b!4156199 (=> (not res!1702198) (not e!2579157))))

(assert (=> b!4156199 (= res!1702198 (= (h!50703 Nil!45283) (h!50703 (Cons!45283 (tag!8340 lt!1481474) Nil!45283))))))

(declare-fun b!4156200 () Bool)

(assert (=> b!4156200 (= e!2579157 (subseq!559 (t!343438 Nil!45283) (t!343438 (Cons!45283 (tag!8340 lt!1481474) Nil!45283))))))

(declare-fun d!1228997 () Bool)

(declare-fun res!1702199 () Bool)

(assert (=> d!1228997 (=> res!1702199 e!2579155)))

(assert (=> d!1228997 (= res!1702199 ((_ is Nil!45283) Nil!45283))))

(assert (=> d!1228997 (= (subseq!559 Nil!45283 (Cons!45283 (tag!8340 lt!1481474) Nil!45283)) e!2579155)))

(assert (= (and d!1228997 (not res!1702199)) b!4156198))

(assert (= (and b!4156198 res!1702200) b!4156199))

(assert (= (and b!4156199 res!1702198) b!4156200))

(assert (= (and b!4156199 (not res!1702197)) b!4156201))

(declare-fun m!4750445 () Bool)

(assert (=> b!4156201 m!4750445))

(declare-fun m!4750447 () Bool)

(assert (=> b!4156200 m!4750447))

(assert (=> b!4156108 d!1228997))

(declare-fun d!1229007 () Bool)

(assert (=> d!1229007 (= (head!8798 rules!4102) (h!50702 rules!4102))))

(assert (=> b!4156113 d!1229007))

(declare-fun d!1229009 () Bool)

(assert (=> d!1229009 (= (inv!59835 (tag!8340 r1!615)) (= (mod (str.len (value!233580 (tag!8340 r1!615))) 2) 0))))

(assert (=> b!4156112 d!1229009))

(declare-fun d!1229011 () Bool)

(declare-fun res!1702205 () Bool)

(declare-fun e!2579162 () Bool)

(assert (=> d!1229011 (=> (not res!1702205) (not e!2579162))))

(assert (=> d!1229011 (= res!1702205 (semiInverseModEq!3240 (toChars!9999 (transformation!7476 r1!615)) (toValue!10140 (transformation!7476 r1!615))))))

(assert (=> d!1229011 (= (inv!59837 (transformation!7476 r1!615)) e!2579162)))

(declare-fun b!4156206 () Bool)

(assert (=> b!4156206 (= e!2579162 (equivClasses!3139 (toChars!9999 (transformation!7476 r1!615)) (toValue!10140 (transformation!7476 r1!615))))))

(assert (= (and d!1229011 res!1702205) b!4156206))

(declare-fun m!4750449 () Bool)

(assert (=> d!1229011 m!4750449))

(declare-fun m!4750451 () Bool)

(assert (=> b!4156206 m!4750451))

(assert (=> b!4156112 d!1229011))

(declare-fun d!1229013 () Bool)

(declare-fun lt!1481490 () Bool)

(assert (=> d!1229013 (= lt!1481490 (select (content!7007 rules!4102) r2!597))))

(declare-fun e!2579164 () Bool)

(assert (=> d!1229013 (= lt!1481490 e!2579164)))

(declare-fun res!1702207 () Bool)

(assert (=> d!1229013 (=> (not res!1702207) (not e!2579164))))

(assert (=> d!1229013 (= res!1702207 ((_ is Cons!45282) rules!4102))))

(assert (=> d!1229013 (= (contains!9183 rules!4102 r2!597) lt!1481490)))

(declare-fun b!4156207 () Bool)

(declare-fun e!2579163 () Bool)

(assert (=> b!4156207 (= e!2579164 e!2579163)))

(declare-fun res!1702206 () Bool)

(assert (=> b!4156207 (=> res!1702206 e!2579163)))

(assert (=> b!4156207 (= res!1702206 (= (h!50702 rules!4102) r2!597))))

(declare-fun b!4156208 () Bool)

(assert (=> b!4156208 (= e!2579163 (contains!9183 (t!343437 rules!4102) r2!597))))

(assert (= (and d!1229013 res!1702207) b!4156207))

(assert (= (and b!4156207 (not res!1702206)) b!4156208))

(assert (=> d!1229013 m!4750421))

(declare-fun m!4750453 () Bool)

(assert (=> d!1229013 m!4750453))

(declare-fun m!4750455 () Bool)

(assert (=> b!4156208 m!4750455))

(assert (=> b!4156106 d!1229013))

(declare-fun b!4156231 () Bool)

(declare-fun b_free!119351 () Bool)

(declare-fun b_next!120055 () Bool)

(assert (=> b!4156231 (= b_free!119351 (not b_next!120055))))

(declare-fun tp!1267884 () Bool)

(declare-fun b_and!323713 () Bool)

(assert (=> b!4156231 (= tp!1267884 b_and!323713)))

(declare-fun b_free!119353 () Bool)

(declare-fun b_next!120057 () Bool)

(assert (=> b!4156231 (= b_free!119353 (not b_next!120057))))

(declare-fun tp!1267881 () Bool)

(declare-fun b_and!323715 () Bool)

(assert (=> b!4156231 (= tp!1267881 b_and!323715)))

(declare-fun e!2579179 () Bool)

(assert (=> b!4156231 (= e!2579179 (and tp!1267884 tp!1267881))))

(declare-fun e!2579177 () Bool)

(declare-fun b!4156230 () Bool)

(declare-fun tp!1267883 () Bool)

(assert (=> b!4156230 (= e!2579177 (and tp!1267883 (inv!59835 (tag!8340 (h!50702 (t!343437 rules!4102)))) (inv!59837 (transformation!7476 (h!50702 (t!343437 rules!4102)))) e!2579179))))

(declare-fun b!4156229 () Bool)

(declare-fun e!2579180 () Bool)

(declare-fun tp!1267882 () Bool)

(assert (=> b!4156229 (= e!2579180 (and e!2579177 tp!1267882))))

(assert (=> b!4156110 (= tp!1267853 e!2579180)))

(assert (= b!4156230 b!4156231))

(assert (= b!4156229 b!4156230))

(assert (= (and b!4156110 ((_ is Cons!45282) (t!343437 rules!4102))) b!4156229))

(declare-fun m!4750461 () Bool)

(assert (=> b!4156230 m!4750461))

(declare-fun m!4750463 () Bool)

(assert (=> b!4156230 m!4750463))

(declare-fun e!2579191 () Bool)

(assert (=> b!4156115 (= tp!1267854 e!2579191)))

(declare-fun b!4156256 () Bool)

(declare-fun tp_is_empty!21649 () Bool)

(assert (=> b!4156256 (= e!2579191 tp_is_empty!21649)))

(declare-fun b!4156257 () Bool)

(declare-fun tp!1267910 () Bool)

(declare-fun tp!1267909 () Bool)

(assert (=> b!4156257 (= e!2579191 (and tp!1267910 tp!1267909))))

(declare-fun b!4156258 () Bool)

(declare-fun tp!1267908 () Bool)

(assert (=> b!4156258 (= e!2579191 tp!1267908)))

(declare-fun b!4156259 () Bool)

(declare-fun tp!1267911 () Bool)

(declare-fun tp!1267907 () Bool)

(assert (=> b!4156259 (= e!2579191 (and tp!1267911 tp!1267907))))

(assert (= (and b!4156115 ((_ is ElementMatch!12381) (regex!7476 (h!50702 rules!4102)))) b!4156256))

(assert (= (and b!4156115 ((_ is Concat!20088) (regex!7476 (h!50702 rules!4102)))) b!4156257))

(assert (= (and b!4156115 ((_ is Star!12381) (regex!7476 (h!50702 rules!4102)))) b!4156258))

(assert (= (and b!4156115 ((_ is Union!12381) (regex!7476 (h!50702 rules!4102)))) b!4156259))

(declare-fun e!2579194 () Bool)

(assert (=> b!4156109 (= tp!1267858 e!2579194)))

(declare-fun b!4156262 () Bool)

(assert (=> b!4156262 (= e!2579194 tp_is_empty!21649)))

(declare-fun b!4156263 () Bool)

(declare-fun tp!1267919 () Bool)

(declare-fun tp!1267918 () Bool)

(assert (=> b!4156263 (= e!2579194 (and tp!1267919 tp!1267918))))

(declare-fun b!4156264 () Bool)

(declare-fun tp!1267917 () Bool)

(assert (=> b!4156264 (= e!2579194 tp!1267917)))

(declare-fun b!4156265 () Bool)

(declare-fun tp!1267920 () Bool)

(declare-fun tp!1267916 () Bool)

(assert (=> b!4156265 (= e!2579194 (and tp!1267920 tp!1267916))))

(assert (= (and b!4156109 ((_ is ElementMatch!12381) (regex!7476 r2!597))) b!4156262))

(assert (= (and b!4156109 ((_ is Concat!20088) (regex!7476 r2!597))) b!4156263))

(assert (= (and b!4156109 ((_ is Star!12381) (regex!7476 r2!597))) b!4156264))

(assert (= (and b!4156109 ((_ is Union!12381) (regex!7476 r2!597))) b!4156265))

(declare-fun e!2579195 () Bool)

(assert (=> b!4156112 (= tp!1267860 e!2579195)))

(declare-fun b!4156266 () Bool)

(assert (=> b!4156266 (= e!2579195 tp_is_empty!21649)))

(declare-fun b!4156267 () Bool)

(declare-fun tp!1267926 () Bool)

(declare-fun tp!1267925 () Bool)

(assert (=> b!4156267 (= e!2579195 (and tp!1267926 tp!1267925))))

(declare-fun b!4156268 () Bool)

(declare-fun tp!1267924 () Bool)

(assert (=> b!4156268 (= e!2579195 tp!1267924)))

(declare-fun b!4156269 () Bool)

(declare-fun tp!1267927 () Bool)

(declare-fun tp!1267923 () Bool)

(assert (=> b!4156269 (= e!2579195 (and tp!1267927 tp!1267923))))

(assert (= (and b!4156112 ((_ is ElementMatch!12381) (regex!7476 r1!615))) b!4156266))

(assert (= (and b!4156112 ((_ is Concat!20088) (regex!7476 r1!615))) b!4156267))

(assert (= (and b!4156112 ((_ is Star!12381) (regex!7476 r1!615))) b!4156268))

(assert (= (and b!4156112 ((_ is Union!12381) (regex!7476 r1!615))) b!4156269))

(check-sat (not d!1228961) (not b_next!120051) (not d!1228983) (not b!4156258) (not b_next!120047) (not d!1228995) (not b!4156208) (not b_next!120057) (not d!1228977) (not b!4156259) (not b!4156268) (not b!4156269) (not b_next!120049) b_and!323707 (not b!4156169) (not b!4156257) b_and!323715 (not b!4156179) (not b!4156153) tp_is_empty!21649 b_and!323703 (not b_next!120055) (not b!4156135) b_and!323709 (not b!4156230) (not b!4156154) b_and!323701 (not b!4156263) (not d!1228965) b_and!323713 b_and!323711 (not d!1229011) (not b!4156267) (not b_next!120043) (not b!4156180) (not d!1229013) b_and!323705 (not b_next!120045) (not b!4156264) (not b!4156265) (not b!4156200) (not b!4156206) (not b!4156201) (not b_next!120053) (not b!4156139) (not b!4156229))
(check-sat (not b_next!120051) (not b_next!120047) b_and!323715 b_and!323703 (not b_next!120055) b_and!323709 b_and!323701 (not b_next!120057) (not b_next!120043) (not b_next!120053) (not b_next!120049) b_and!323707 b_and!323713 b_and!323711 b_and!323705 (not b_next!120045))

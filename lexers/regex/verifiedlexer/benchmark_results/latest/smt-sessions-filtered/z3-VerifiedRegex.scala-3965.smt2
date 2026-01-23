; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!216464 () Bool)

(assert start!216464)

(declare-datatypes ((List!26084 0))(
  ( (Nil!26000) (Cons!26000 (h!31401 (_ BitVec 16)) (t!199490 List!26084)) )
))
(declare-datatypes ((IArray!17011 0))(
  ( (IArray!17012 (innerList!8563 List!26084)) )
))
(declare-datatypes ((Conc!8503 0))(
  ( (Node!8503 (left!19996 Conc!8503) (right!20326 Conc!8503) (csize!17236 Int) (cheight!8714 Int)) (Leaf!12469 (xs!11445 IArray!17011) (csize!17237 Int)) (Empty!8503) )
))
(declare-datatypes ((BalanceConc!16724 0))(
  ( (BalanceConc!16725 (c!354405 Conc!8503)) )
))
(declare-fun v!4853 () BalanceConc!16724)

(declare-datatypes ((TokenValue!4337 0))(
  ( (FloatLiteralValue!8674 (text!30804 List!26084)) (TokenValueExt!4336 (__x!17114 Int)) (Broken!21685 (value!132448 List!26084)) (Object!4420) (End!4337) (Def!4337) (Underscore!4337) (Match!4337) (Else!4337) (Error!4337) (Case!4337) (If!4337) (Extends!4337) (Abstract!4337) (Class!4337) (Val!4337) (DelimiterValue!8674 (del!4397 List!26084)) (KeywordValue!4343 (value!132449 List!26084)) (CommentValue!8674 (value!132450 List!26084)) (WhitespaceValue!8674 (value!132451 List!26084)) (IndentationValue!4337 (value!132452 List!26084)) (String!28386) (Int32!4337) (Broken!21686 (value!132453 List!26084)) (Boolean!4338) (Unit!38969) (OperatorValue!4340 (op!4397 List!26084)) (IdentifierValue!8674 (value!132454 List!26084)) (IdentifierValue!8675 (value!132455 List!26084)) (WhitespaceValue!8675 (value!132456 List!26084)) (True!8674) (False!8674) (Broken!21687 (value!132457 List!26084)) (Broken!21688 (value!132458 List!26084)) (True!8675) (RightBrace!4337) (RightBracket!4337) (Colon!4337) (Null!4337) (Comma!4337) (LeftBracket!4337) (False!8675) (LeftBrace!4337) (ImaginaryLiteralValue!4337 (text!30805 List!26084)) (StringLiteralValue!13011 (value!132459 List!26084)) (EOFValue!4337 (value!132460 List!26084)) (IdentValue!4337 (value!132461 List!26084)) (DelimiterValue!8675 (value!132462 List!26084)) (DedentValue!4337 (value!132463 List!26084)) (NewLineValue!4337 (value!132464 List!26084)) (IntegerValue!13011 (value!132465 (_ BitVec 32)) (text!30806 List!26084)) (IntegerValue!13012 (value!132466 Int) (text!30807 List!26084)) (Times!4337) (Or!4337) (Equal!4337) (Minus!4337) (Broken!21689 (value!132467 List!26084)) (And!4337) (Div!4337) (LessEqual!4337) (Mod!4337) (Concat!10669) (Not!4337) (Plus!4337) (SpaceValue!4337 (value!132468 List!26084)) (IntegerValue!13013 (value!132469 Int) (text!30808 List!26084)) (StringLiteralValue!13012 (text!30809 List!26084)) (FloatLiteralValue!8675 (text!30810 List!26084)) (BytesLiteralValue!4337 (value!132470 List!26084)) (CommentValue!8675 (value!132471 List!26084)) (StringLiteralValue!13013 (value!132472 List!26084)) (ErrorTokenValue!4337 (msg!4398 List!26084)) )
))
(declare-fun inv!21 (TokenValue!4337) Bool)

(declare-fun efficientList!285 (BalanceConc!16724) List!26084)

(assert (=> start!216464 (not (inv!21 (DedentValue!4337 (efficientList!285 v!4853))))))

(declare-fun e!1417442 () Bool)

(declare-fun inv!35282 (BalanceConc!16724) Bool)

(assert (=> start!216464 (and (inv!35282 v!4853) e!1417442)))

(declare-fun b!2219549 () Bool)

(declare-fun tp!691318 () Bool)

(declare-fun inv!35283 (Conc!8503) Bool)

(assert (=> b!2219549 (= e!1417442 (and (inv!35283 (c!354405 v!4853)) tp!691318))))

(assert (= start!216464 b!2219549))

(declare-fun m!2660493 () Bool)

(assert (=> start!216464 m!2660493))

(declare-fun m!2660495 () Bool)

(assert (=> start!216464 m!2660495))

(declare-fun m!2660497 () Bool)

(assert (=> start!216464 m!2660497))

(declare-fun m!2660499 () Bool)

(assert (=> b!2219549 m!2660499))

(check-sat (not b!2219549) (not start!216464))
(check-sat)
(get-model)

(declare-fun d!663534 () Bool)

(declare-fun c!354414 () Bool)

(get-info :version)

(assert (=> d!663534 (= c!354414 ((_ is Node!8503) (c!354405 v!4853)))))

(declare-fun e!1417456 () Bool)

(assert (=> d!663534 (= (inv!35283 (c!354405 v!4853)) e!1417456)))

(declare-fun b!2219571 () Bool)

(declare-fun inv!35284 (Conc!8503) Bool)

(assert (=> b!2219571 (= e!1417456 (inv!35284 (c!354405 v!4853)))))

(declare-fun b!2219572 () Bool)

(declare-fun e!1417457 () Bool)

(assert (=> b!2219572 (= e!1417456 e!1417457)))

(declare-fun res!953197 () Bool)

(assert (=> b!2219572 (= res!953197 (not ((_ is Leaf!12469) (c!354405 v!4853))))))

(assert (=> b!2219572 (=> res!953197 e!1417457)))

(declare-fun b!2219573 () Bool)

(declare-fun inv!35285 (Conc!8503) Bool)

(assert (=> b!2219573 (= e!1417457 (inv!35285 (c!354405 v!4853)))))

(assert (= (and d!663534 c!354414) b!2219571))

(assert (= (and d!663534 (not c!354414)) b!2219572))

(assert (= (and b!2219572 (not res!953197)) b!2219573))

(declare-fun m!2660507 () Bool)

(assert (=> b!2219571 m!2660507))

(declare-fun m!2660509 () Bool)

(assert (=> b!2219573 m!2660509))

(assert (=> b!2219549 d!663534))

(declare-fun b!2219584 () Bool)

(declare-fun e!1417465 () Bool)

(declare-fun inv!17 (TokenValue!4337) Bool)

(assert (=> b!2219584 (= e!1417465 (inv!17 (DedentValue!4337 (efficientList!285 v!4853))))))

(declare-fun d!663538 () Bool)

(declare-fun c!354420 () Bool)

(assert (=> d!663538 (= c!354420 ((_ is IntegerValue!13011) (DedentValue!4337 (efficientList!285 v!4853))))))

(declare-fun e!1417466 () Bool)

(assert (=> d!663538 (= (inv!21 (DedentValue!4337 (efficientList!285 v!4853))) e!1417466)))

(declare-fun b!2219585 () Bool)

(declare-fun inv!16 (TokenValue!4337) Bool)

(assert (=> b!2219585 (= e!1417466 (inv!16 (DedentValue!4337 (efficientList!285 v!4853))))))

(declare-fun b!2219586 () Bool)

(declare-fun res!953200 () Bool)

(declare-fun e!1417464 () Bool)

(assert (=> b!2219586 (=> res!953200 e!1417464)))

(assert (=> b!2219586 (= res!953200 (not ((_ is IntegerValue!13013) (DedentValue!4337 (efficientList!285 v!4853)))))))

(assert (=> b!2219586 (= e!1417465 e!1417464)))

(declare-fun b!2219587 () Bool)

(assert (=> b!2219587 (= e!1417466 e!1417465)))

(declare-fun c!354419 () Bool)

(assert (=> b!2219587 (= c!354419 ((_ is IntegerValue!13012) (DedentValue!4337 (efficientList!285 v!4853))))))

(declare-fun b!2219588 () Bool)

(declare-fun inv!15 (TokenValue!4337) Bool)

(assert (=> b!2219588 (= e!1417464 (inv!15 (DedentValue!4337 (efficientList!285 v!4853))))))

(assert (= (and d!663538 c!354420) b!2219585))

(assert (= (and d!663538 (not c!354420)) b!2219587))

(assert (= (and b!2219587 c!354419) b!2219584))

(assert (= (and b!2219587 (not c!354419)) b!2219586))

(assert (= (and b!2219586 (not res!953200)) b!2219588))

(declare-fun m!2660511 () Bool)

(assert (=> b!2219584 m!2660511))

(declare-fun m!2660513 () Bool)

(assert (=> b!2219585 m!2660513))

(declare-fun m!2660515 () Bool)

(assert (=> b!2219588 m!2660515))

(assert (=> start!216464 d!663538))

(declare-fun d!663540 () Bool)

(declare-fun lt!827229 () List!26084)

(declare-fun list!10089 (BalanceConc!16724) List!26084)

(assert (=> d!663540 (= lt!827229 (list!10089 v!4853))))

(declare-fun efficientList!287 (Conc!8503 List!26084) List!26084)

(declare-fun efficientList$default$2!99 (Conc!8503) List!26084)

(assert (=> d!663540 (= lt!827229 (efficientList!287 (c!354405 v!4853) (efficientList$default$2!99 (c!354405 v!4853))))))

(assert (=> d!663540 (= (efficientList!285 v!4853) lt!827229)))

(declare-fun bs!452173 () Bool)

(assert (= bs!452173 d!663540))

(declare-fun m!2660525 () Bool)

(assert (=> bs!452173 m!2660525))

(declare-fun m!2660527 () Bool)

(assert (=> bs!452173 m!2660527))

(assert (=> bs!452173 m!2660527))

(declare-fun m!2660529 () Bool)

(assert (=> bs!452173 m!2660529))

(assert (=> start!216464 d!663540))

(declare-fun d!663546 () Bool)

(declare-fun isBalanced!2635 (Conc!8503) Bool)

(assert (=> d!663546 (= (inv!35282 v!4853) (isBalanced!2635 (c!354405 v!4853)))))

(declare-fun bs!452174 () Bool)

(assert (= bs!452174 d!663546))

(declare-fun m!2660531 () Bool)

(assert (=> bs!452174 m!2660531))

(assert (=> start!216464 d!663546))

(declare-fun tp!691327 () Bool)

(declare-fun tp!691328 () Bool)

(declare-fun e!1417481 () Bool)

(declare-fun b!2219610 () Bool)

(assert (=> b!2219610 (= e!1417481 (and (inv!35283 (left!19996 (c!354405 v!4853))) tp!691327 (inv!35283 (right!20326 (c!354405 v!4853))) tp!691328))))

(declare-fun b!2219611 () Bool)

(declare-fun inv!35287 (IArray!17011) Bool)

(assert (=> b!2219611 (= e!1417481 (inv!35287 (xs!11445 (c!354405 v!4853))))))

(assert (=> b!2219549 (= tp!691318 (and (inv!35283 (c!354405 v!4853)) e!1417481))))

(assert (= (and b!2219549 ((_ is Node!8503) (c!354405 v!4853))) b!2219610))

(assert (= (and b!2219549 ((_ is Leaf!12469) (c!354405 v!4853))) b!2219611))

(declare-fun m!2660537 () Bool)

(assert (=> b!2219610 m!2660537))

(declare-fun m!2660539 () Bool)

(assert (=> b!2219610 m!2660539))

(declare-fun m!2660541 () Bool)

(assert (=> b!2219611 m!2660541))

(assert (=> b!2219549 m!2660499))

(check-sat (not d!663546) (not b!2219588) (not b!2219585) (not b!2219611) (not d!663540) (not b!2219549) (not b!2219610) (not b!2219571) (not b!2219584) (not b!2219573))
(check-sat)

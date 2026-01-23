; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!216408 () Bool)

(assert start!216408)

(declare-datatypes ((List!26082 0))(
  ( (Nil!25998) (Cons!25998 (h!31399 (_ BitVec 16)) (t!199485 List!26082)) )
))
(declare-fun lt!827202 () List!26082)

(declare-datatypes ((IArray!17007 0))(
  ( (IArray!17008 (innerList!8561 List!26082)) )
))
(declare-datatypes ((Conc!8501 0))(
  ( (Node!8501 (left!19993 Conc!8501) (right!20323 Conc!8501) (csize!17232 Int) (cheight!8712 Int)) (Leaf!12466 (xs!11443 IArray!17007) (csize!17233 Int)) (Empty!8501) )
))
(declare-datatypes ((BalanceConc!16720 0))(
  ( (BalanceConc!16721 (c!354372 Conc!8501)) )
))
(declare-fun v!5060 () BalanceConc!16720)

(declare-fun efficientList!280 (BalanceConc!16720) List!26082)

(assert (=> start!216408 (= lt!827202 (efficientList!280 v!5060))))

(declare-datatypes ((TokenValue!4335 0))(
  ( (FloatLiteralValue!8670 (text!30790 List!26082)) (TokenValueExt!4334 (__x!17112 Int)) (Broken!21675 (value!132395 List!26082)) (Object!4418) (End!4335) (Def!4335) (Underscore!4335) (Match!4335) (Else!4335) (Error!4335) (Case!4335) (If!4335) (Extends!4335) (Abstract!4335) (Class!4335) (Val!4335) (DelimiterValue!8670 (del!4395 List!26082)) (KeywordValue!4341 (value!132396 List!26082)) (CommentValue!8670 (value!132397 List!26082)) (WhitespaceValue!8670 (value!132398 List!26082)) (IndentationValue!4335 (value!132399 List!26082)) (String!28380) (Int32!4335) (Broken!21676 (value!132400 List!26082)) (Boolean!4336) (Unit!38965) (OperatorValue!4338 (op!4395 List!26082)) (IdentifierValue!8670 (value!132401 List!26082)) (IdentifierValue!8671 (value!132402 List!26082)) (WhitespaceValue!8671 (value!132403 List!26082)) (True!8670) (False!8670) (Broken!21677 (value!132404 List!26082)) (Broken!21678 (value!132405 List!26082)) (True!8671) (RightBrace!4335) (RightBracket!4335) (Colon!4335) (Null!4335) (Comma!4335) (LeftBracket!4335) (False!8671) (LeftBrace!4335) (ImaginaryLiteralValue!4335 (text!30791 List!26082)) (StringLiteralValue!13005 (value!132406 List!26082)) (EOFValue!4335 (value!132407 List!26082)) (IdentValue!4335 (value!132408 List!26082)) (DelimiterValue!8671 (value!132409 List!26082)) (DedentValue!4335 (value!132410 List!26082)) (NewLineValue!4335 (value!132411 List!26082)) (IntegerValue!13005 (value!132412 (_ BitVec 32)) (text!30792 List!26082)) (IntegerValue!13006 (value!132413 Int) (text!30793 List!26082)) (Times!4335) (Or!4335) (Equal!4335) (Minus!4335) (Broken!21679 (value!132414 List!26082)) (And!4335) (Div!4335) (LessEqual!4335) (Mod!4335) (Concat!10667) (Not!4335) (Plus!4335) (SpaceValue!4335 (value!132415 List!26082)) (IntegerValue!13007 (value!132416 Int) (text!30794 List!26082)) (StringLiteralValue!13006 (text!30795 List!26082)) (FloatLiteralValue!8671 (text!30796 List!26082)) (BytesLiteralValue!4335 (value!132417 List!26082)) (CommentValue!8671 (value!132418 List!26082)) (StringLiteralValue!13007 (value!132419 List!26082)) (ErrorTokenValue!4335 (msg!4396 List!26082)) )
))
(declare-fun inv!21 (TokenValue!4335) Bool)

(declare-fun charsToBigInt!1 (List!26082) Int)

(assert (=> start!216408 (not (inv!21 (IntegerValue!13006 (charsToBigInt!1 lt!827202) lt!827202)))))

(declare-fun e!1417354 () Bool)

(declare-fun inv!35269 (BalanceConc!16720) Bool)

(assert (=> start!216408 (and (inv!35269 v!5060) e!1417354)))

(declare-fun b!2219402 () Bool)

(declare-fun tp!691292 () Bool)

(declare-fun inv!35270 (Conc!8501) Bool)

(assert (=> b!2219402 (= e!1417354 (and (inv!35270 (c!354372 v!5060)) tp!691292))))

(assert (= start!216408 b!2219402))

(declare-fun m!2660333 () Bool)

(assert (=> start!216408 m!2660333))

(declare-fun m!2660335 () Bool)

(assert (=> start!216408 m!2660335))

(declare-fun m!2660337 () Bool)

(assert (=> start!216408 m!2660337))

(declare-fun m!2660339 () Bool)

(assert (=> start!216408 m!2660339))

(declare-fun m!2660341 () Bool)

(assert (=> b!2219402 m!2660341))

(check-sat (not start!216408) (not b!2219402))
(check-sat)
(get-model)

(declare-fun d!663471 () Bool)

(declare-fun lt!827205 () List!26082)

(declare-fun list!10084 (BalanceConc!16720) List!26082)

(assert (=> d!663471 (= lt!827205 (list!10084 v!5060))))

(declare-fun efficientList!281 (Conc!8501 List!26082) List!26082)

(declare-fun efficientList$default$2!96 (Conc!8501) List!26082)

(assert (=> d!663471 (= lt!827205 (efficientList!281 (c!354372 v!5060) (efficientList$default$2!96 (c!354372 v!5060))))))

(assert (=> d!663471 (= (efficientList!280 v!5060) lt!827205)))

(declare-fun bs!452156 () Bool)

(assert (= bs!452156 d!663471))

(declare-fun m!2660343 () Bool)

(assert (=> bs!452156 m!2660343))

(declare-fun m!2660345 () Bool)

(assert (=> bs!452156 m!2660345))

(assert (=> bs!452156 m!2660345))

(declare-fun m!2660347 () Bool)

(assert (=> bs!452156 m!2660347))

(assert (=> start!216408 d!663471))

(declare-fun b!2219413 () Bool)

(declare-fun e!1417363 () Bool)

(declare-fun inv!16 (TokenValue!4335) Bool)

(assert (=> b!2219413 (= e!1417363 (inv!16 (IntegerValue!13006 (charsToBigInt!1 lt!827202) lt!827202)))))

(declare-fun b!2219414 () Bool)

(declare-fun e!1417361 () Bool)

(assert (=> b!2219414 (= e!1417363 e!1417361)))

(declare-fun c!354377 () Bool)

(get-info :version)

(assert (=> b!2219414 (= c!354377 ((_ is IntegerValue!13006) (IntegerValue!13006 (charsToBigInt!1 lt!827202) lt!827202)))))

(declare-fun b!2219415 () Bool)

(declare-fun e!1417362 () Bool)

(declare-fun inv!15 (TokenValue!4335) Bool)

(assert (=> b!2219415 (= e!1417362 (inv!15 (IntegerValue!13006 (charsToBigInt!1 lt!827202) lt!827202)))))

(declare-fun b!2219416 () Bool)

(declare-fun res!953133 () Bool)

(assert (=> b!2219416 (=> res!953133 e!1417362)))

(assert (=> b!2219416 (= res!953133 (not ((_ is IntegerValue!13007) (IntegerValue!13006 (charsToBigInt!1 lt!827202) lt!827202))))))

(assert (=> b!2219416 (= e!1417361 e!1417362)))

(declare-fun b!2219417 () Bool)

(declare-fun inv!17 (TokenValue!4335) Bool)

(assert (=> b!2219417 (= e!1417361 (inv!17 (IntegerValue!13006 (charsToBigInt!1 lt!827202) lt!827202)))))

(declare-fun d!663475 () Bool)

(declare-fun c!354378 () Bool)

(assert (=> d!663475 (= c!354378 ((_ is IntegerValue!13005) (IntegerValue!13006 (charsToBigInt!1 lt!827202) lt!827202)))))

(assert (=> d!663475 (= (inv!21 (IntegerValue!13006 (charsToBigInt!1 lt!827202) lt!827202)) e!1417363)))

(assert (= (and d!663475 c!354378) b!2219413))

(assert (= (and d!663475 (not c!354378)) b!2219414))

(assert (= (and b!2219414 c!354377) b!2219417))

(assert (= (and b!2219414 (not c!354377)) b!2219416))

(assert (= (and b!2219416 (not res!953133)) b!2219415))

(declare-fun m!2660349 () Bool)

(assert (=> b!2219413 m!2660349))

(declare-fun m!2660351 () Bool)

(assert (=> b!2219415 m!2660351))

(declare-fun m!2660353 () Bool)

(assert (=> b!2219417 m!2660353))

(assert (=> start!216408 d!663475))

(declare-fun d!663477 () Bool)

(declare-fun choose!644 (List!26082) Int)

(assert (=> d!663477 (= (charsToBigInt!1 lt!827202) (choose!644 lt!827202))))

(declare-fun bs!452157 () Bool)

(assert (= bs!452157 d!663477))

(declare-fun m!2660355 () Bool)

(assert (=> bs!452157 m!2660355))

(assert (=> start!216408 d!663477))

(declare-fun d!663479 () Bool)

(declare-fun isBalanced!2632 (Conc!8501) Bool)

(assert (=> d!663479 (= (inv!35269 v!5060) (isBalanced!2632 (c!354372 v!5060)))))

(declare-fun bs!452158 () Bool)

(assert (= bs!452158 d!663479))

(declare-fun m!2660357 () Bool)

(assert (=> bs!452158 m!2660357))

(assert (=> start!216408 d!663479))

(declare-fun d!663481 () Bool)

(declare-fun c!354381 () Bool)

(assert (=> d!663481 (= c!354381 ((_ is Node!8501) (c!354372 v!5060)))))

(declare-fun e!1417368 () Bool)

(assert (=> d!663481 (= (inv!35270 (c!354372 v!5060)) e!1417368)))

(declare-fun b!2219424 () Bool)

(declare-fun inv!35271 (Conc!8501) Bool)

(assert (=> b!2219424 (= e!1417368 (inv!35271 (c!354372 v!5060)))))

(declare-fun b!2219425 () Bool)

(declare-fun e!1417369 () Bool)

(assert (=> b!2219425 (= e!1417368 e!1417369)))

(declare-fun res!953136 () Bool)

(assert (=> b!2219425 (= res!953136 (not ((_ is Leaf!12466) (c!354372 v!5060))))))

(assert (=> b!2219425 (=> res!953136 e!1417369)))

(declare-fun b!2219426 () Bool)

(declare-fun inv!35272 (Conc!8501) Bool)

(assert (=> b!2219426 (= e!1417369 (inv!35272 (c!354372 v!5060)))))

(assert (= (and d!663481 c!354381) b!2219424))

(assert (= (and d!663481 (not c!354381)) b!2219425))

(assert (= (and b!2219425 (not res!953136)) b!2219426))

(declare-fun m!2660365 () Bool)

(assert (=> b!2219424 m!2660365))

(declare-fun m!2660367 () Bool)

(assert (=> b!2219426 m!2660367))

(assert (=> b!2219402 d!663481))

(declare-fun b!2219433 () Bool)

(declare-fun e!1417374 () Bool)

(declare-fun tp!691297 () Bool)

(declare-fun tp!691298 () Bool)

(assert (=> b!2219433 (= e!1417374 (and (inv!35270 (left!19993 (c!354372 v!5060))) tp!691297 (inv!35270 (right!20323 (c!354372 v!5060))) tp!691298))))

(declare-fun b!2219434 () Bool)

(declare-fun inv!35273 (IArray!17007) Bool)

(assert (=> b!2219434 (= e!1417374 (inv!35273 (xs!11443 (c!354372 v!5060))))))

(assert (=> b!2219402 (= tp!691292 (and (inv!35270 (c!354372 v!5060)) e!1417374))))

(assert (= (and b!2219402 ((_ is Node!8501) (c!354372 v!5060))) b!2219433))

(assert (= (and b!2219402 ((_ is Leaf!12466) (c!354372 v!5060))) b!2219434))

(declare-fun m!2660369 () Bool)

(assert (=> b!2219433 m!2660369))

(declare-fun m!2660371 () Bool)

(assert (=> b!2219433 m!2660371))

(declare-fun m!2660373 () Bool)

(assert (=> b!2219434 m!2660373))

(assert (=> b!2219402 m!2660341))

(check-sat (not b!2219415) (not d!663479) (not b!2219402) (not b!2219424) (not d!663471) (not b!2219426) (not b!2219413) (not b!2219434) (not b!2219417) (not b!2219433) (not d!663477))
(check-sat)
(get-model)

(declare-fun d!663491 () Bool)

(declare-fun charsToBigInt!0 (List!26082 Int) Int)

(assert (=> d!663491 (= (inv!15 (IntegerValue!13006 (charsToBigInt!1 lt!827202) lt!827202)) (= (charsToBigInt!0 (text!30794 (IntegerValue!13006 (charsToBigInt!1 lt!827202) lt!827202)) 0) (value!132416 (IntegerValue!13006 (charsToBigInt!1 lt!827202) lt!827202))))))

(declare-fun bs!452162 () Bool)

(assert (= bs!452162 d!663491))

(declare-fun m!2660389 () Bool)

(assert (=> bs!452162 m!2660389))

(assert (=> b!2219415 d!663491))

(declare-fun d!663493 () Bool)

(assert (=> d!663493 (= (inv!17 (IntegerValue!13006 (charsToBigInt!1 lt!827202) lt!827202)) (= (charsToBigInt!1 (text!30793 (IntegerValue!13006 (charsToBigInt!1 lt!827202) lt!827202))) (value!132413 (IntegerValue!13006 (charsToBigInt!1 lt!827202) lt!827202))))))

(declare-fun bs!452163 () Bool)

(assert (= bs!452163 d!663493))

(declare-fun m!2660391 () Bool)

(assert (=> bs!452163 m!2660391))

(assert (=> b!2219417 d!663493))

(declare-fun b!2219479 () Bool)

(declare-fun res!953155 () Bool)

(declare-fun e!1417402 () Bool)

(assert (=> b!2219479 (=> (not res!953155) (not e!1417402))))

(assert (=> b!2219479 (= res!953155 (isBalanced!2632 (right!20323 (c!354372 v!5060))))))

(declare-fun b!2219480 () Bool)

(declare-fun res!953160 () Bool)

(assert (=> b!2219480 (=> (not res!953160) (not e!1417402))))

(assert (=> b!2219480 (= res!953160 (isBalanced!2632 (left!19993 (c!354372 v!5060))))))

(declare-fun b!2219481 () Bool)

(declare-fun res!953157 () Bool)

(assert (=> b!2219481 (=> (not res!953157) (not e!1417402))))

(declare-fun isEmpty!14865 (Conc!8501) Bool)

(assert (=> b!2219481 (= res!953157 (not (isEmpty!14865 (left!19993 (c!354372 v!5060)))))))

(declare-fun b!2219482 () Bool)

(declare-fun res!953156 () Bool)

(assert (=> b!2219482 (=> (not res!953156) (not e!1417402))))

(declare-fun height!1294 (Conc!8501) Int)

(assert (=> b!2219482 (= res!953156 (<= (- (height!1294 (left!19993 (c!354372 v!5060))) (height!1294 (right!20323 (c!354372 v!5060)))) 1))))

(declare-fun d!663495 () Bool)

(declare-fun res!953159 () Bool)

(declare-fun e!1417401 () Bool)

(assert (=> d!663495 (=> res!953159 e!1417401)))

(assert (=> d!663495 (= res!953159 (not ((_ is Node!8501) (c!354372 v!5060))))))

(assert (=> d!663495 (= (isBalanced!2632 (c!354372 v!5060)) e!1417401)))

(declare-fun b!2219483 () Bool)

(assert (=> b!2219483 (= e!1417402 (not (isEmpty!14865 (right!20323 (c!354372 v!5060)))))))

(declare-fun b!2219484 () Bool)

(assert (=> b!2219484 (= e!1417401 e!1417402)))

(declare-fun res!953158 () Bool)

(assert (=> b!2219484 (=> (not res!953158) (not e!1417402))))

(assert (=> b!2219484 (= res!953158 (<= (- 1) (- (height!1294 (left!19993 (c!354372 v!5060))) (height!1294 (right!20323 (c!354372 v!5060))))))))

(assert (= (and d!663495 (not res!953159)) b!2219484))

(assert (= (and b!2219484 res!953158) b!2219482))

(assert (= (and b!2219482 res!953156) b!2219480))

(assert (= (and b!2219480 res!953160) b!2219479))

(assert (= (and b!2219479 res!953155) b!2219481))

(assert (= (and b!2219481 res!953157) b!2219483))

(declare-fun m!2660399 () Bool)

(assert (=> b!2219481 m!2660399))

(declare-fun m!2660401 () Bool)

(assert (=> b!2219484 m!2660401))

(declare-fun m!2660403 () Bool)

(assert (=> b!2219484 m!2660403))

(declare-fun m!2660405 () Bool)

(assert (=> b!2219480 m!2660405))

(declare-fun m!2660407 () Bool)

(assert (=> b!2219483 m!2660407))

(assert (=> b!2219482 m!2660401))

(assert (=> b!2219482 m!2660403))

(declare-fun m!2660409 () Bool)

(assert (=> b!2219479 m!2660409))

(assert (=> d!663479 d!663495))

(declare-fun d!663497 () Bool)

(declare-fun res!953165 () Bool)

(declare-fun e!1417405 () Bool)

(assert (=> d!663497 (=> (not res!953165) (not e!1417405))))

(declare-fun size!20277 (List!26082) Int)

(declare-fun list!10086 (IArray!17007) List!26082)

(assert (=> d!663497 (= res!953165 (<= (size!20277 (list!10086 (xs!11443 (c!354372 v!5060)))) 512))))

(assert (=> d!663497 (= (inv!35272 (c!354372 v!5060)) e!1417405)))

(declare-fun b!2219489 () Bool)

(declare-fun res!953166 () Bool)

(assert (=> b!2219489 (=> (not res!953166) (not e!1417405))))

(assert (=> b!2219489 (= res!953166 (= (csize!17233 (c!354372 v!5060)) (size!20277 (list!10086 (xs!11443 (c!354372 v!5060))))))))

(declare-fun b!2219490 () Bool)

(assert (=> b!2219490 (= e!1417405 (and (> (csize!17233 (c!354372 v!5060)) 0) (<= (csize!17233 (c!354372 v!5060)) 512)))))

(assert (= (and d!663497 res!953165) b!2219489))

(assert (= (and b!2219489 res!953166) b!2219490))

(declare-fun m!2660411 () Bool)

(assert (=> d!663497 m!2660411))

(assert (=> d!663497 m!2660411))

(declare-fun m!2660413 () Bool)

(assert (=> d!663497 m!2660413))

(assert (=> b!2219489 m!2660411))

(assert (=> b!2219489 m!2660411))

(assert (=> b!2219489 m!2660413))

(assert (=> b!2219426 d!663497))

(assert (=> b!2219402 d!663481))

(declare-fun d!663499 () Bool)

(declare-fun c!354391 () Bool)

(assert (=> d!663499 (= c!354391 ((_ is Node!8501) (left!19993 (c!354372 v!5060))))))

(declare-fun e!1417406 () Bool)

(assert (=> d!663499 (= (inv!35270 (left!19993 (c!354372 v!5060))) e!1417406)))

(declare-fun b!2219491 () Bool)

(assert (=> b!2219491 (= e!1417406 (inv!35271 (left!19993 (c!354372 v!5060))))))

(declare-fun b!2219492 () Bool)

(declare-fun e!1417407 () Bool)

(assert (=> b!2219492 (= e!1417406 e!1417407)))

(declare-fun res!953167 () Bool)

(assert (=> b!2219492 (= res!953167 (not ((_ is Leaf!12466) (left!19993 (c!354372 v!5060)))))))

(assert (=> b!2219492 (=> res!953167 e!1417407)))

(declare-fun b!2219493 () Bool)

(assert (=> b!2219493 (= e!1417407 (inv!35272 (left!19993 (c!354372 v!5060))))))

(assert (= (and d!663499 c!354391) b!2219491))

(assert (= (and d!663499 (not c!354391)) b!2219492))

(assert (= (and b!2219492 (not res!953167)) b!2219493))

(declare-fun m!2660415 () Bool)

(assert (=> b!2219491 m!2660415))

(declare-fun m!2660417 () Bool)

(assert (=> b!2219493 m!2660417))

(assert (=> b!2219433 d!663499))

(declare-fun d!663501 () Bool)

(declare-fun c!354392 () Bool)

(assert (=> d!663501 (= c!354392 ((_ is Node!8501) (right!20323 (c!354372 v!5060))))))

(declare-fun e!1417408 () Bool)

(assert (=> d!663501 (= (inv!35270 (right!20323 (c!354372 v!5060))) e!1417408)))

(declare-fun b!2219494 () Bool)

(assert (=> b!2219494 (= e!1417408 (inv!35271 (right!20323 (c!354372 v!5060))))))

(declare-fun b!2219495 () Bool)

(declare-fun e!1417409 () Bool)

(assert (=> b!2219495 (= e!1417408 e!1417409)))

(declare-fun res!953168 () Bool)

(assert (=> b!2219495 (= res!953168 (not ((_ is Leaf!12466) (right!20323 (c!354372 v!5060)))))))

(assert (=> b!2219495 (=> res!953168 e!1417409)))

(declare-fun b!2219496 () Bool)

(assert (=> b!2219496 (= e!1417409 (inv!35272 (right!20323 (c!354372 v!5060))))))

(assert (= (and d!663501 c!354392) b!2219494))

(assert (= (and d!663501 (not c!354392)) b!2219495))

(assert (= (and b!2219495 (not res!953168)) b!2219496))

(declare-fun m!2660419 () Bool)

(assert (=> b!2219494 m!2660419))

(declare-fun m!2660421 () Bool)

(assert (=> b!2219496 m!2660421))

(assert (=> b!2219433 d!663501))

(declare-fun d!663503 () Bool)

(declare-fun charsToInt!0 (List!26082) (_ BitVec 32))

(assert (=> d!663503 (= (inv!16 (IntegerValue!13006 (charsToBigInt!1 lt!827202) lt!827202)) (= (charsToInt!0 (text!30792 (IntegerValue!13006 (charsToBigInt!1 lt!827202) lt!827202))) (value!132412 (IntegerValue!13006 (charsToBigInt!1 lt!827202) lt!827202))))))

(declare-fun bs!452164 () Bool)

(assert (= bs!452164 d!663503))

(declare-fun m!2660423 () Bool)

(assert (=> bs!452164 m!2660423))

(assert (=> b!2219413 d!663503))

(declare-fun d!663505 () Bool)

(assert (=> d!663505 (= (inv!35273 (xs!11443 (c!354372 v!5060))) (<= (size!20277 (innerList!8561 (xs!11443 (c!354372 v!5060)))) 2147483647))))

(declare-fun bs!452165 () Bool)

(assert (= bs!452165 d!663505))

(declare-fun m!2660425 () Bool)

(assert (=> bs!452165 m!2660425))

(assert (=> b!2219434 d!663505))

(declare-fun d!663507 () Bool)

(declare-fun list!10087 (Conc!8501) List!26082)

(assert (=> d!663507 (= (list!10084 v!5060) (list!10087 (c!354372 v!5060)))))

(declare-fun bs!452166 () Bool)

(assert (= bs!452166 d!663507))

(declare-fun m!2660427 () Bool)

(assert (=> bs!452166 m!2660427))

(assert (=> d!663471 d!663507))

(declare-fun d!663509 () Bool)

(declare-fun lt!827223 () List!26082)

(declare-fun ++!6475 (List!26082 List!26082) List!26082)

(assert (=> d!663509 (= lt!827223 (++!6475 (list!10087 (c!354372 v!5060)) (efficientList$default$2!96 (c!354372 v!5060))))))

(declare-fun e!1417418 () List!26082)

(assert (=> d!663509 (= lt!827223 e!1417418)))

(declare-fun c!354399 () Bool)

(assert (=> d!663509 (= c!354399 ((_ is Empty!8501) (c!354372 v!5060)))))

(assert (=> d!663509 (= (efficientList!281 (c!354372 v!5060) (efficientList$default$2!96 (c!354372 v!5060))) lt!827223)))

(declare-fun bm!132418 () Bool)

(declare-fun c!354401 () Bool)

(declare-fun c!354400 () Bool)

(assert (=> bm!132418 (= c!354401 c!354400)))

(declare-fun call!132423 () List!26082)

(declare-fun e!1417416 () List!26082)

(assert (=> bm!132418 (= call!132423 (++!6475 e!1417416 (efficientList$default$2!96 (c!354372 v!5060))))))

(declare-fun b!2219509 () Bool)

(declare-fun efficientList!283 (IArray!17007) List!26082)

(assert (=> b!2219509 (= e!1417416 (efficientList!283 (xs!11443 (c!354372 v!5060))))))

(declare-fun b!2219510 () Bool)

(declare-fun lt!827222 () List!26082)

(assert (=> b!2219510 (= e!1417416 lt!827222)))

(declare-fun b!2219511 () Bool)

(assert (=> b!2219511 (= e!1417418 (efficientList$default$2!96 (c!354372 v!5060)))))

(declare-fun b!2219512 () Bool)

(declare-fun e!1417417 () List!26082)

(assert (=> b!2219512 (= e!1417417 call!132423)))

(declare-fun b!2219513 () Bool)

(declare-datatypes ((Unit!38966 0))(
  ( (Unit!38967) )
))
(declare-fun lt!827221 () Unit!38966)

(declare-fun lt!827220 () Unit!38966)

(assert (=> b!2219513 (= lt!827221 lt!827220)))

(declare-fun lt!827219 () List!26082)

(assert (=> b!2219513 (= (++!6475 (++!6475 lt!827219 lt!827222) (efficientList$default$2!96 (c!354372 v!5060))) (++!6475 lt!827219 call!132423))))

(declare-fun lemmaConcatAssociativity!1330 (List!26082 List!26082 List!26082) Unit!38966)

(assert (=> b!2219513 (= lt!827220 (lemmaConcatAssociativity!1330 lt!827219 lt!827222 (efficientList$default$2!96 (c!354372 v!5060))))))

(assert (=> b!2219513 (= lt!827222 (list!10087 (right!20323 (c!354372 v!5060))))))

(assert (=> b!2219513 (= lt!827219 (list!10087 (left!19993 (c!354372 v!5060))))))

(assert (=> b!2219513 (= e!1417417 (efficientList!281 (left!19993 (c!354372 v!5060)) (efficientList!281 (right!20323 (c!354372 v!5060)) (efficientList$default$2!96 (c!354372 v!5060)))))))

(declare-fun b!2219514 () Bool)

(assert (=> b!2219514 (= e!1417418 e!1417417)))

(assert (=> b!2219514 (= c!354400 ((_ is Leaf!12466) (c!354372 v!5060)))))

(assert (= (and d!663509 c!354399) b!2219511))

(assert (= (and d!663509 (not c!354399)) b!2219514))

(assert (= (and b!2219514 c!354400) b!2219512))

(assert (= (and b!2219514 (not c!354400)) b!2219513))

(assert (= (or b!2219512 b!2219513) bm!132418))

(assert (= (and bm!132418 c!354401) b!2219509))

(assert (= (and bm!132418 (not c!354401)) b!2219510))

(assert (=> d!663509 m!2660427))

(assert (=> d!663509 m!2660427))

(assert (=> d!663509 m!2660345))

(declare-fun m!2660429 () Bool)

(assert (=> d!663509 m!2660429))

(assert (=> bm!132418 m!2660345))

(declare-fun m!2660431 () Bool)

(assert (=> bm!132418 m!2660431))

(declare-fun m!2660433 () Bool)

(assert (=> b!2219509 m!2660433))

(declare-fun m!2660435 () Bool)

(assert (=> b!2219513 m!2660435))

(assert (=> b!2219513 m!2660345))

(declare-fun m!2660437 () Bool)

(assert (=> b!2219513 m!2660437))

(assert (=> b!2219513 m!2660345))

(declare-fun m!2660439 () Bool)

(assert (=> b!2219513 m!2660439))

(declare-fun m!2660441 () Bool)

(assert (=> b!2219513 m!2660441))

(declare-fun m!2660443 () Bool)

(assert (=> b!2219513 m!2660443))

(assert (=> b!2219513 m!2660345))

(declare-fun m!2660445 () Bool)

(assert (=> b!2219513 m!2660445))

(assert (=> b!2219513 m!2660439))

(declare-fun m!2660447 () Bool)

(assert (=> b!2219513 m!2660447))

(assert (=> b!2219513 m!2660443))

(declare-fun m!2660449 () Bool)

(assert (=> b!2219513 m!2660449))

(assert (=> d!663471 d!663509))

(declare-fun d!663511 () Bool)

(assert (=> d!663511 (= (efficientList$default$2!96 (c!354372 v!5060)) Nil!25998)))

(assert (=> d!663471 d!663511))

(declare-fun d!663513 () Bool)

(declare-fun res!953175 () Bool)

(declare-fun e!1417421 () Bool)

(assert (=> d!663513 (=> (not res!953175) (not e!1417421))))

(declare-fun size!20278 (Conc!8501) Int)

(assert (=> d!663513 (= res!953175 (= (csize!17232 (c!354372 v!5060)) (+ (size!20278 (left!19993 (c!354372 v!5060))) (size!20278 (right!20323 (c!354372 v!5060))))))))

(assert (=> d!663513 (= (inv!35271 (c!354372 v!5060)) e!1417421)))

(declare-fun b!2219521 () Bool)

(declare-fun res!953176 () Bool)

(assert (=> b!2219521 (=> (not res!953176) (not e!1417421))))

(assert (=> b!2219521 (= res!953176 (and (not (= (left!19993 (c!354372 v!5060)) Empty!8501)) (not (= (right!20323 (c!354372 v!5060)) Empty!8501))))))

(declare-fun b!2219522 () Bool)

(declare-fun res!953177 () Bool)

(assert (=> b!2219522 (=> (not res!953177) (not e!1417421))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2219522 (= res!953177 (= (cheight!8712 (c!354372 v!5060)) (+ (max!0 (height!1294 (left!19993 (c!354372 v!5060))) (height!1294 (right!20323 (c!354372 v!5060)))) 1)))))

(declare-fun b!2219523 () Bool)

(assert (=> b!2219523 (= e!1417421 (<= 0 (cheight!8712 (c!354372 v!5060))))))

(assert (= (and d!663513 res!953175) b!2219521))

(assert (= (and b!2219521 res!953176) b!2219522))

(assert (= (and b!2219522 res!953177) b!2219523))

(declare-fun m!2660451 () Bool)

(assert (=> d!663513 m!2660451))

(declare-fun m!2660453 () Bool)

(assert (=> d!663513 m!2660453))

(assert (=> b!2219522 m!2660401))

(assert (=> b!2219522 m!2660403))

(assert (=> b!2219522 m!2660401))

(assert (=> b!2219522 m!2660403))

(declare-fun m!2660455 () Bool)

(assert (=> b!2219522 m!2660455))

(assert (=> b!2219424 d!663513))

(declare-fun d!663515 () Bool)

(assert (=> d!663515 true))

(assert (=> d!663515 true))

(declare-fun res!953180 () Int)

(assert (=> d!663515 (= (choose!644 lt!827202) res!953180)))

(assert (=> d!663477 d!663515))

(declare-fun tp!691305 () Bool)

(declare-fun b!2219524 () Bool)

(declare-fun tp!691306 () Bool)

(declare-fun e!1417422 () Bool)

(assert (=> b!2219524 (= e!1417422 (and (inv!35270 (left!19993 (left!19993 (c!354372 v!5060)))) tp!691305 (inv!35270 (right!20323 (left!19993 (c!354372 v!5060)))) tp!691306))))

(declare-fun b!2219525 () Bool)

(assert (=> b!2219525 (= e!1417422 (inv!35273 (xs!11443 (left!19993 (c!354372 v!5060)))))))

(assert (=> b!2219433 (= tp!691297 (and (inv!35270 (left!19993 (c!354372 v!5060))) e!1417422))))

(assert (= (and b!2219433 ((_ is Node!8501) (left!19993 (c!354372 v!5060)))) b!2219524))

(assert (= (and b!2219433 ((_ is Leaf!12466) (left!19993 (c!354372 v!5060)))) b!2219525))

(declare-fun m!2660457 () Bool)

(assert (=> b!2219524 m!2660457))

(declare-fun m!2660459 () Bool)

(assert (=> b!2219524 m!2660459))

(declare-fun m!2660461 () Bool)

(assert (=> b!2219525 m!2660461))

(assert (=> b!2219433 m!2660369))

(declare-fun b!2219526 () Bool)

(declare-fun tp!691308 () Bool)

(declare-fun tp!691307 () Bool)

(declare-fun e!1417424 () Bool)

(assert (=> b!2219526 (= e!1417424 (and (inv!35270 (left!19993 (right!20323 (c!354372 v!5060)))) tp!691307 (inv!35270 (right!20323 (right!20323 (c!354372 v!5060)))) tp!691308))))

(declare-fun b!2219527 () Bool)

(assert (=> b!2219527 (= e!1417424 (inv!35273 (xs!11443 (right!20323 (c!354372 v!5060)))))))

(assert (=> b!2219433 (= tp!691298 (and (inv!35270 (right!20323 (c!354372 v!5060))) e!1417424))))

(assert (= (and b!2219433 ((_ is Node!8501) (right!20323 (c!354372 v!5060)))) b!2219526))

(assert (= (and b!2219433 ((_ is Leaf!12466) (right!20323 (c!354372 v!5060)))) b!2219527))

(declare-fun m!2660463 () Bool)

(assert (=> b!2219526 m!2660463))

(declare-fun m!2660465 () Bool)

(assert (=> b!2219526 m!2660465))

(declare-fun m!2660467 () Bool)

(assert (=> b!2219527 m!2660467))

(assert (=> b!2219433 m!2660371))

(check-sat (not d!663505) (not b!2219481) (not b!2219489) (not d!663507) (not d!663509) (not d!663503) (not b!2219483) (not b!2219484) (not b!2219496) (not b!2219482) (not b!2219513) (not d!663493) (not b!2219527) (not d!663513) (not bm!132418) (not b!2219525) (not b!2219479) (not b!2219493) (not b!2219526) (not d!663497) (not b!2219433) (not b!2219480) (not b!2219522) (not b!2219491) (not b!2219509) (not b!2219494) (not b!2219524) (not d!663491))
(check-sat)

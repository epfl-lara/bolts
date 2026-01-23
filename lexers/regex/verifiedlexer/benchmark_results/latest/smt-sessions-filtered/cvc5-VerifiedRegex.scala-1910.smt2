; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!94240 () Bool)

(assert start!94240)

(declare-fun bs!259215 () Bool)

(declare-fun b!1098353 () Bool)

(assert (= bs!259215 (and b!1098353 start!94240)))

(declare-fun lambda!43114 () Int)

(declare-fun lambda!43113 () Int)

(assert (=> bs!259215 (not (= lambda!43114 lambda!43113))))

(declare-fun b!1098361 () Bool)

(declare-fun e!695490 () Bool)

(assert (=> b!1098361 (= e!695490 true)))

(declare-fun b!1098360 () Bool)

(declare-fun e!695489 () Bool)

(assert (=> b!1098360 (= e!695489 e!695490)))

(assert (=> b!1098353 e!695489))

(assert (= b!1098360 b!1098361))

(assert (= b!1098353 b!1098360))

(declare-fun lambda!43115 () Int)

(assert (=> bs!259215 (not (= lambda!43115 lambda!43113))))

(assert (=> b!1098353 (not (= lambda!43115 lambda!43114))))

(declare-fun b!1098363 () Bool)

(declare-fun e!695492 () Bool)

(assert (=> b!1098363 (= e!695492 true)))

(declare-fun b!1098362 () Bool)

(declare-fun e!695491 () Bool)

(assert (=> b!1098362 (= e!695491 e!695492)))

(assert (=> b!1098353 e!695491))

(assert (= b!1098362 b!1098363))

(assert (= b!1098353 b!1098362))

(declare-fun lambda!43116 () Int)

(assert (=> bs!259215 (not (= lambda!43116 lambda!43113))))

(assert (=> b!1098353 (not (= lambda!43116 lambda!43114))))

(assert (=> b!1098353 (not (= lambda!43116 lambda!43115))))

(declare-fun b!1098365 () Bool)

(declare-fun e!695494 () Bool)

(assert (=> b!1098365 (= e!695494 true)))

(declare-fun b!1098364 () Bool)

(declare-fun e!695493 () Bool)

(assert (=> b!1098364 (= e!695493 e!695494)))

(assert (=> b!1098353 e!695493))

(assert (= b!1098364 b!1098365))

(assert (= b!1098353 b!1098364))

(declare-fun b!1098344 () Bool)

(declare-fun e!695477 () Bool)

(declare-datatypes ((List!10579 0))(
  ( (Nil!10563) (Cons!10563 (h!15964 (_ BitVec 16)) (t!103697 List!10579)) )
))
(declare-datatypes ((TokenValue!1875 0))(
  ( (FloatLiteralValue!3750 (text!13570 List!10579)) (TokenValueExt!1874 (__x!7457 Int)) (Broken!9375 (value!59485 List!10579)) (Object!1890) (End!1875) (Def!1875) (Underscore!1875) (Match!1875) (Else!1875) (Error!1875) (Case!1875) (If!1875) (Extends!1875) (Abstract!1875) (Class!1875) (Val!1875) (DelimiterValue!3750 (del!1935 List!10579)) (KeywordValue!1881 (value!59486 List!10579)) (CommentValue!3750 (value!59487 List!10579)) (WhitespaceValue!3750 (value!59488 List!10579)) (IndentationValue!1875 (value!59489 List!10579)) (String!12946) (Int32!1875) (Broken!9376 (value!59490 List!10579)) (Boolean!1876) (Unit!16163) (OperatorValue!1878 (op!1935 List!10579)) (IdentifierValue!3750 (value!59491 List!10579)) (IdentifierValue!3751 (value!59492 List!10579)) (WhitespaceValue!3751 (value!59493 List!10579)) (True!3750) (False!3750) (Broken!9377 (value!59494 List!10579)) (Broken!9378 (value!59495 List!10579)) (True!3751) (RightBrace!1875) (RightBracket!1875) (Colon!1875) (Null!1875) (Comma!1875) (LeftBracket!1875) (False!3751) (LeftBrace!1875) (ImaginaryLiteralValue!1875 (text!13571 List!10579)) (StringLiteralValue!5625 (value!59496 List!10579)) (EOFValue!1875 (value!59497 List!10579)) (IdentValue!1875 (value!59498 List!10579)) (DelimiterValue!3751 (value!59499 List!10579)) (DedentValue!1875 (value!59500 List!10579)) (NewLineValue!1875 (value!59501 List!10579)) (IntegerValue!5625 (value!59502 (_ BitVec 32)) (text!13572 List!10579)) (IntegerValue!5626 (value!59503 Int) (text!13573 List!10579)) (Times!1875) (Or!1875) (Equal!1875) (Minus!1875) (Broken!9379 (value!59504 List!10579)) (And!1875) (Div!1875) (LessEqual!1875) (Mod!1875) (Concat!4953) (Not!1875) (Plus!1875) (SpaceValue!1875 (value!59505 List!10579)) (IntegerValue!5627 (value!59506 Int) (text!13574 List!10579)) (StringLiteralValue!5626 (text!13575 List!10579)) (FloatLiteralValue!3751 (text!13576 List!10579)) (BytesLiteralValue!1875 (value!59507 List!10579)) (CommentValue!3751 (value!59508 List!10579)) (StringLiteralValue!5627 (value!59509 List!10579)) (ErrorTokenValue!1875 (msg!1936 List!10579)) )
))
(declare-datatypes ((Regex!3078 0))(
  ( (ElementMatch!3078 (c!186400 (_ BitVec 16))) (Concat!4954 (regOne!6668 Regex!3078) (regTwo!6668 Regex!3078)) (EmptyExpr!3078) (Star!3078 (reg!3407 Regex!3078)) (EmptyLang!3078) (Union!3078 (regOne!6669 Regex!3078) (regTwo!6669 Regex!3078)) )
))
(declare-datatypes ((String!12947 0))(
  ( (String!12948 (value!59510 String)) )
))
(declare-datatypes ((IArray!6513 0))(
  ( (IArray!6514 (innerList!3314 List!10579)) )
))
(declare-datatypes ((Conc!3254 0))(
  ( (Node!3254 (left!9108 Conc!3254) (right!9438 Conc!3254) (csize!6738 Int) (cheight!3465 Int)) (Leaf!5165 (xs!5947 IArray!6513) (csize!6739 Int)) (Empty!3254) )
))
(declare-datatypes ((BalanceConc!6522 0))(
  ( (BalanceConc!6523 (c!186401 Conc!3254)) )
))
(declare-datatypes ((TokenValueInjection!3450 0))(
  ( (TokenValueInjection!3451 (toValue!2886 Int) (toChars!2745 Int)) )
))
(declare-datatypes ((Rule!3418 0))(
  ( (Rule!3419 (regex!1809 Regex!3078) (tag!2071 String!12947) (isSeparator!1809 Bool) (transformation!1809 TokenValueInjection!3450)) )
))
(declare-datatypes ((Token!3284 0))(
  ( (Token!3285 (value!59511 TokenValue!1875) (rule!3232 Rule!3418) (size!8189 Int) (originalCharacters!2365 List!10579)) )
))
(declare-datatypes ((List!10580 0))(
  ( (Nil!10564) (Cons!10564 (h!15965 Token!3284) (t!103698 List!10580)) )
))
(declare-datatypes ((IArray!6515 0))(
  ( (IArray!6516 (innerList!3315 List!10580)) )
))
(declare-datatypes ((Conc!3255 0))(
  ( (Node!3255 (left!9109 Conc!3255) (right!9439 Conc!3255) (csize!6740 Int) (cheight!3466 Int)) (Leaf!5166 (xs!5948 IArray!6515) (csize!6741 Int)) (Empty!3255) )
))
(declare-datatypes ((List!10581 0))(
  ( (Nil!10565) (Cons!10565 (h!15966 Rule!3418) (t!103699 List!10581)) )
))
(declare-datatypes ((BalanceConc!6524 0))(
  ( (BalanceConc!6525 (c!186402 Conc!3255)) )
))
(declare-datatypes ((PrintableTokens!334 0))(
  ( (PrintableTokens!335 (rules!9096 List!10581) (tokens!1368 BalanceConc!6524)) )
))
(declare-datatypes ((tuple2!11744 0))(
  ( (tuple2!11745 (_1!6698 Int) (_2!6698 PrintableTokens!334)) )
))
(declare-datatypes ((List!10582 0))(
  ( (Nil!10566) (Cons!10566 (h!15967 tuple2!11744) (t!103700 List!10582)) )
))
(declare-datatypes ((IArray!6517 0))(
  ( (IArray!6518 (innerList!3316 List!10582)) )
))
(declare-datatypes ((Conc!3256 0))(
  ( (Node!3256 (left!9110 Conc!3256) (right!9440 Conc!3256) (csize!6742 Int) (cheight!3467 Int)) (Leaf!5167 (xs!5949 IArray!6517) (csize!6743 Int)) (Empty!3256) )
))
(declare-datatypes ((BalanceConc!6526 0))(
  ( (BalanceConc!6527 (c!186403 Conc!3256)) )
))
(declare-fun lt!371078 () BalanceConc!6526)

(declare-fun lt!371076 () Int)

(declare-fun size!8190 (BalanceConc!6526) Int)

(assert (=> b!1098344 (= e!695477 (not (< (size!8190 lt!371078) lt!371076)))))

(declare-fun e!695481 () Bool)

(assert (=> b!1098344 e!695481))

(declare-fun res!487440 () Bool)

(assert (=> b!1098344 (=> res!487440 e!695481)))

(declare-fun lt!371080 () List!10582)

(declare-fun isEmpty!6681 (List!10582) Bool)

(assert (=> b!1098344 (= res!487440 (isEmpty!6681 lt!371080))))

(declare-datatypes ((Unit!16164 0))(
  ( (Unit!16165) )
))
(declare-fun lt!371079 () Unit!16164)

(declare-fun lemmaNotForallFilterShorter!48 (List!10582 Int) Unit!16164)

(assert (=> b!1098344 (= lt!371079 (lemmaNotForallFilterShorter!48 lt!371080 lambda!43114))))

(declare-fun objs!8 () BalanceConc!6526)

(declare-fun list!3800 (BalanceConc!6526) List!10582)

(assert (=> b!1098344 (= lt!371080 (list!3800 objs!8))))

(declare-fun lt!371084 () Unit!16164)

(declare-fun e!695480 () Unit!16164)

(assert (=> b!1098344 (= lt!371084 e!695480)))

(declare-fun c!186399 () Bool)

(declare-fun forall!2406 (BalanceConc!6526 Int) Bool)

(assert (=> b!1098344 (= c!186399 (forall!2406 objs!8 lambda!43114))))

(declare-fun b!1098345 () Bool)

(declare-fun e!695483 () Bool)

(declare-fun e!695484 () Bool)

(assert (=> b!1098345 (= e!695483 e!695484)))

(declare-fun res!487438 () Bool)

(assert (=> b!1098345 (=> (not res!487438) (not e!695484))))

(assert (=> b!1098345 (= res!487438 (> lt!371076 1))))

(assert (=> b!1098345 (= lt!371076 (size!8190 objs!8))))

(declare-fun b!1098346 () Bool)

(declare-fun e!695479 () Unit!16164)

(declare-fun Unit!16166 () Unit!16164)

(assert (=> b!1098346 (= e!695479 Unit!16166)))

(declare-fun b!1098347 () Bool)

(declare-fun e!695482 () Bool)

(declare-fun tp!326795 () Bool)

(declare-fun inv!13560 (Conc!3256) Bool)

(assert (=> b!1098347 (= e!695482 (and (inv!13560 (c!186403 objs!8)) tp!326795))))

(declare-fun b!1098348 () Bool)

(declare-fun e!695478 () Bool)

(assert (=> b!1098348 (= e!695478 e!695477)))

(declare-fun res!487437 () Bool)

(assert (=> b!1098348 (=> (not res!487437) (not e!695477))))

(declare-fun lt!371083 () Bool)

(assert (=> b!1098348 (= res!487437 (not lt!371083))))

(declare-fun lt!371085 () Unit!16164)

(assert (=> b!1098348 (= lt!371085 e!695479)))

(declare-fun c!186398 () Bool)

(assert (=> b!1098348 (= c!186398 lt!371083)))

(declare-fun lt!371081 () tuple2!11744)

(declare-fun contains!1831 (BalanceConc!6526 tuple2!11744) Bool)

(assert (=> b!1098348 (= lt!371083 (contains!1831 lt!371078 lt!371081))))

(declare-fun b!1098349 () Bool)

(declare-fun size!8191 (List!10582) Int)

(declare-fun filter!308 (List!10582 Int) List!10582)

(assert (=> b!1098349 (= e!695481 (< (size!8191 (filter!308 lt!371080 lambda!43114)) (size!8191 lt!371080)))))

(declare-fun b!1098350 () Bool)

(declare-fun Unit!16167 () Unit!16164)

(assert (=> b!1098350 (= e!695480 Unit!16167)))

(declare-fun res!487439 () Bool)

(assert (=> start!94240 (=> (not res!487439) (not e!695483))))

(assert (=> start!94240 (= res!487439 (forall!2406 objs!8 lambda!43113))))

(assert (=> start!94240 e!695483))

(declare-fun inv!13561 (BalanceConc!6526) Bool)

(assert (=> start!94240 (and (inv!13561 objs!8) e!695482)))

(declare-fun b!1098351 () Bool)

(declare-fun err!2529 () Unit!16164)

(assert (=> b!1098351 (= e!695479 err!2529)))

(declare-fun lt!371077 () Unit!16164)

(declare-fun forallContained!509 (List!10582 Int tuple2!11744) Unit!16164)

(assert (=> b!1098351 (= lt!371077 (forallContained!509 (list!3800 lt!371078) lambda!43114 lt!371081))))

(assert (=> b!1098351 true))

(declare-fun b!1098352 () Bool)

(declare-fun err!2528 () Unit!16164)

(assert (=> b!1098352 (= e!695480 err!2528)))

(declare-fun lt!371087 () Unit!16164)

(assert (=> b!1098352 (= lt!371087 (forallContained!509 (list!3800 objs!8) lambda!43114 lt!371081))))

(assert (=> b!1098352 true))

(assert (=> b!1098353 (= e!695484 e!695478)))

(declare-fun res!487436 () Bool)

(assert (=> b!1098353 (=> (not res!487436) (not e!695478))))

(assert (=> b!1098353 (= res!487436 (contains!1831 objs!8 lt!371081))))

(declare-fun lt!371086 () BalanceConc!6526)

(declare-fun filter!309 (BalanceConc!6526 Int) BalanceConc!6526)

(assert (=> b!1098353 (= lt!371086 (filter!309 objs!8 lambda!43116))))

(declare-fun lt!371082 () BalanceConc!6526)

(assert (=> b!1098353 (= lt!371082 (filter!309 objs!8 lambda!43115))))

(assert (=> b!1098353 (= lt!371078 (filter!309 objs!8 lambda!43114))))

(declare-fun apply!2108 (BalanceConc!6526 Int) tuple2!11744)

(assert (=> b!1098353 (= lt!371081 (apply!2108 objs!8 (ite (>= lt!371076 0) (div lt!371076 2) (- (div (- lt!371076) 2)))))))

(assert (= (and start!94240 res!487439) b!1098345))

(assert (= (and b!1098345 res!487438) b!1098353))

(assert (= (and b!1098353 res!487436) b!1098348))

(assert (= (and b!1098348 c!186398) b!1098351))

(assert (= (and b!1098348 (not c!186398)) b!1098346))

(assert (= (and b!1098348 res!487437) b!1098344))

(assert (= (and b!1098344 c!186399) b!1098352))

(assert (= (and b!1098344 (not c!186399)) b!1098350))

(assert (= (and b!1098344 (not res!487440)) b!1098349))

(assert (= start!94240 b!1098347))

(declare-fun m!1254139 () Bool)

(assert (=> b!1098353 m!1254139))

(declare-fun m!1254141 () Bool)

(assert (=> b!1098353 m!1254141))

(declare-fun m!1254143 () Bool)

(assert (=> b!1098353 m!1254143))

(declare-fun m!1254145 () Bool)

(assert (=> b!1098353 m!1254145))

(declare-fun m!1254147 () Bool)

(assert (=> b!1098353 m!1254147))

(declare-fun m!1254149 () Bool)

(assert (=> b!1098351 m!1254149))

(assert (=> b!1098351 m!1254149))

(declare-fun m!1254151 () Bool)

(assert (=> b!1098351 m!1254151))

(declare-fun m!1254153 () Bool)

(assert (=> b!1098348 m!1254153))

(declare-fun m!1254155 () Bool)

(assert (=> start!94240 m!1254155))

(declare-fun m!1254157 () Bool)

(assert (=> start!94240 m!1254157))

(declare-fun m!1254159 () Bool)

(assert (=> b!1098349 m!1254159))

(assert (=> b!1098349 m!1254159))

(declare-fun m!1254161 () Bool)

(assert (=> b!1098349 m!1254161))

(declare-fun m!1254163 () Bool)

(assert (=> b!1098349 m!1254163))

(declare-fun m!1254165 () Bool)

(assert (=> b!1098345 m!1254165))

(declare-fun m!1254167 () Bool)

(assert (=> b!1098352 m!1254167))

(assert (=> b!1098352 m!1254167))

(declare-fun m!1254169 () Bool)

(assert (=> b!1098352 m!1254169))

(declare-fun m!1254171 () Bool)

(assert (=> b!1098347 m!1254171))

(declare-fun m!1254173 () Bool)

(assert (=> b!1098344 m!1254173))

(assert (=> b!1098344 m!1254167))

(declare-fun m!1254175 () Bool)

(assert (=> b!1098344 m!1254175))

(declare-fun m!1254177 () Bool)

(assert (=> b!1098344 m!1254177))

(declare-fun m!1254179 () Bool)

(assert (=> b!1098344 m!1254179))

(push 1)

(assert (not b!1098349))

(assert (not b!1098361))

(assert (not b!1098348))

(assert (not b!1098363))

(assert (not b!1098364))

(assert (not b!1098344))

(assert (not b!1098351))

(assert (not b!1098353))

(assert (not b!1098362))

(assert (not b!1098347))

(assert (not b!1098352))

(assert (not start!94240))

(assert (not b!1098365))

(assert (not b!1098360))

(assert (not b!1098345))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!310369 () Bool)

(declare-fun lt!371126 () Bool)

(declare-fun forall!2408 (List!10582 Int) Bool)

(assert (=> d!310369 (= lt!371126 (forall!2408 (list!3800 objs!8) lambda!43114))))

(declare-fun forall!2409 (Conc!3256 Int) Bool)

(assert (=> d!310369 (= lt!371126 (forall!2409 (c!186403 objs!8) lambda!43114))))

(assert (=> d!310369 (= (forall!2406 objs!8 lambda!43114) lt!371126)))

(declare-fun bs!259217 () Bool)

(assert (= bs!259217 d!310369))

(assert (=> bs!259217 m!1254167))

(assert (=> bs!259217 m!1254167))

(declare-fun m!1254223 () Bool)

(assert (=> bs!259217 m!1254223))

(declare-fun m!1254225 () Bool)

(assert (=> bs!259217 m!1254225))

(assert (=> b!1098344 d!310369))

(declare-fun d!310371 () Bool)

(assert (=> d!310371 (= (isEmpty!6681 lt!371080) (is-Nil!10566 lt!371080))))

(assert (=> b!1098344 d!310371))

(declare-fun d!310373 () Bool)

(declare-fun lt!371129 () Int)

(assert (=> d!310373 (= lt!371129 (size!8191 (list!3800 lt!371078)))))

(declare-fun size!8195 (Conc!3256) Int)

(assert (=> d!310373 (= lt!371129 (size!8195 (c!186403 lt!371078)))))

(assert (=> d!310373 (= (size!8190 lt!371078) lt!371129)))

(declare-fun bs!259218 () Bool)

(assert (= bs!259218 d!310373))

(assert (=> bs!259218 m!1254149))

(assert (=> bs!259218 m!1254149))

(declare-fun m!1254227 () Bool)

(assert (=> bs!259218 m!1254227))

(declare-fun m!1254229 () Bool)

(assert (=> bs!259218 m!1254229))

(assert (=> b!1098344 d!310373))

(declare-fun d!310375 () Bool)

(declare-fun e!695531 () Bool)

(assert (=> d!310375 e!695531))

(declare-fun res!487458 () Bool)

(assert (=> d!310375 (=> res!487458 e!695531)))

(assert (=> d!310375 (= res!487458 (isEmpty!6681 lt!371080))))

(declare-fun lt!371132 () Unit!16164)

(declare-fun choose!7081 (List!10582 Int) Unit!16164)

(assert (=> d!310375 (= lt!371132 (choose!7081 lt!371080 lambda!43114))))

(assert (=> d!310375 (not (forall!2408 lt!371080 lambda!43114))))

(assert (=> d!310375 (= (lemmaNotForallFilterShorter!48 lt!371080 lambda!43114) lt!371132)))

(declare-fun b!1098410 () Bool)

(assert (=> b!1098410 (= e!695531 (< (size!8191 (filter!308 lt!371080 lambda!43114)) (size!8191 lt!371080)))))

(assert (= (and d!310375 (not res!487458)) b!1098410))

(assert (=> d!310375 m!1254175))

(declare-fun m!1254231 () Bool)

(assert (=> d!310375 m!1254231))

(declare-fun m!1254233 () Bool)

(assert (=> d!310375 m!1254233))

(assert (=> b!1098410 m!1254159))

(assert (=> b!1098410 m!1254159))

(assert (=> b!1098410 m!1254161))

(assert (=> b!1098410 m!1254163))

(assert (=> b!1098344 d!310375))

(declare-fun d!310379 () Bool)

(declare-fun list!3802 (Conc!3256) List!10582)

(assert (=> d!310379 (= (list!3800 objs!8) (list!3802 (c!186403 objs!8)))))

(declare-fun bs!259219 () Bool)

(assert (= bs!259219 d!310379))

(declare-fun m!1254235 () Bool)

(assert (=> bs!259219 m!1254235))

(assert (=> b!1098344 d!310379))

(declare-fun d!310381 () Bool)

(declare-fun lt!371135 () Int)

(assert (=> d!310381 (>= lt!371135 0)))

(declare-fun e!695534 () Int)

(assert (=> d!310381 (= lt!371135 e!695534)))

(declare-fun c!186416 () Bool)

(assert (=> d!310381 (= c!186416 (is-Nil!10566 (filter!308 lt!371080 lambda!43114)))))

(assert (=> d!310381 (= (size!8191 (filter!308 lt!371080 lambda!43114)) lt!371135)))

(declare-fun b!1098415 () Bool)

(assert (=> b!1098415 (= e!695534 0)))

(declare-fun b!1098416 () Bool)

(assert (=> b!1098416 (= e!695534 (+ 1 (size!8191 (t!103700 (filter!308 lt!371080 lambda!43114)))))))

(assert (= (and d!310381 c!186416) b!1098415))

(assert (= (and d!310381 (not c!186416)) b!1098416))

(declare-fun m!1254237 () Bool)

(assert (=> b!1098416 m!1254237))

(assert (=> b!1098349 d!310381))

(declare-fun b!1098432 () Bool)

(declare-fun e!695546 () List!10582)

(declare-fun call!80381 () List!10582)

(assert (=> b!1098432 (= e!695546 (Cons!10566 (h!15967 lt!371080) call!80381))))

(declare-fun bm!80376 () Bool)

(assert (=> bm!80376 (= call!80381 (filter!308 (t!103700 lt!371080) lambda!43114))))

(declare-fun b!1098433 () Bool)

(declare-fun res!487466 () Bool)

(declare-fun e!695544 () Bool)

(assert (=> b!1098433 (=> (not res!487466) (not e!695544))))

(declare-fun lt!371141 () List!10582)

(declare-fun content!1527 (List!10582) (Set tuple2!11744))

(assert (=> b!1098433 (= res!487466 (set.subset (content!1527 lt!371141) (content!1527 lt!371080)))))

(declare-fun d!310383 () Bool)

(assert (=> d!310383 e!695544))

(declare-fun res!487467 () Bool)

(assert (=> d!310383 (=> (not res!487467) (not e!695544))))

(assert (=> d!310383 (= res!487467 (<= (size!8191 lt!371141) (size!8191 lt!371080)))))

(declare-fun e!695545 () List!10582)

(assert (=> d!310383 (= lt!371141 e!695545)))

(declare-fun c!186422 () Bool)

(assert (=> d!310383 (= c!186422 (is-Nil!10566 lt!371080))))

(assert (=> d!310383 (= (filter!308 lt!371080 lambda!43114) lt!371141)))

(declare-fun b!1098434 () Bool)

(assert (=> b!1098434 (= e!695545 Nil!10566)))

(declare-fun b!1098435 () Bool)

(assert (=> b!1098435 (= e!695544 (forall!2408 lt!371141 lambda!43114))))

(declare-fun b!1098436 () Bool)

(assert (=> b!1098436 (= e!695546 call!80381)))

(declare-fun b!1098437 () Bool)

(assert (=> b!1098437 (= e!695545 e!695546)))

(declare-fun c!186421 () Bool)

(declare-fun dynLambda!4641 (Int tuple2!11744) Bool)

(assert (=> b!1098437 (= c!186421 (dynLambda!4641 lambda!43114 (h!15967 lt!371080)))))

(assert (= (and d!310383 c!186422) b!1098434))

(assert (= (and d!310383 (not c!186422)) b!1098437))

(assert (= (and b!1098437 c!186421) b!1098432))

(assert (= (and b!1098437 (not c!186421)) b!1098436))

(assert (= (or b!1098432 b!1098436) bm!80376))

(assert (= (and d!310383 res!487467) b!1098433))

(assert (= (and b!1098433 res!487466) b!1098435))

(declare-fun b_lambda!31813 () Bool)

(assert (=> (not b_lambda!31813) (not b!1098437)))

(declare-fun m!1254247 () Bool)

(assert (=> b!1098435 m!1254247))

(declare-fun m!1254249 () Bool)

(assert (=> b!1098437 m!1254249))

(declare-fun m!1254251 () Bool)

(assert (=> b!1098433 m!1254251))

(declare-fun m!1254253 () Bool)

(assert (=> b!1098433 m!1254253))

(declare-fun m!1254255 () Bool)

(assert (=> d!310383 m!1254255))

(assert (=> d!310383 m!1254163))

(declare-fun m!1254257 () Bool)

(assert (=> bm!80376 m!1254257))

(assert (=> b!1098349 d!310383))

(declare-fun d!310387 () Bool)

(declare-fun lt!371142 () Int)

(assert (=> d!310387 (>= lt!371142 0)))

(declare-fun e!695547 () Int)

(assert (=> d!310387 (= lt!371142 e!695547)))

(declare-fun c!186423 () Bool)

(assert (=> d!310387 (= c!186423 (is-Nil!10566 lt!371080))))

(assert (=> d!310387 (= (size!8191 lt!371080) lt!371142)))

(declare-fun b!1098438 () Bool)

(assert (=> b!1098438 (= e!695547 0)))

(declare-fun b!1098439 () Bool)

(assert (=> b!1098439 (= e!695547 (+ 1 (size!8191 (t!103700 lt!371080))))))

(assert (= (and d!310387 c!186423) b!1098438))

(assert (= (and d!310387 (not c!186423)) b!1098439))

(declare-fun m!1254259 () Bool)

(assert (=> b!1098439 m!1254259))

(assert (=> b!1098349 d!310387))

(declare-fun d!310389 () Bool)

(declare-fun lt!371145 () Bool)

(declare-fun contains!1833 (List!10582 tuple2!11744) Bool)

(assert (=> d!310389 (= lt!371145 (contains!1833 (list!3800 lt!371078) lt!371081))))

(declare-fun contains!1834 (Conc!3256 tuple2!11744) Bool)

(assert (=> d!310389 (= lt!371145 (contains!1834 (c!186403 lt!371078) lt!371081))))

(assert (=> d!310389 (= (contains!1831 lt!371078 lt!371081) lt!371145)))

(declare-fun bs!259221 () Bool)

(assert (= bs!259221 d!310389))

(assert (=> bs!259221 m!1254149))

(assert (=> bs!259221 m!1254149))

(declare-fun m!1254263 () Bool)

(assert (=> bs!259221 m!1254263))

(declare-fun m!1254265 () Bool)

(assert (=> bs!259221 m!1254265))

(assert (=> b!1098348 d!310389))

(declare-fun d!310393 () Bool)

(declare-fun e!695553 () Bool)

(assert (=> d!310393 e!695553))

(declare-fun res!487470 () Bool)

(assert (=> d!310393 (=> (not res!487470) (not e!695553))))

(declare-fun isBalanced!901 (Conc!3256) Bool)

(declare-fun filter!312 (Conc!3256 Int) Conc!3256)

(assert (=> d!310393 (= res!487470 (isBalanced!901 (filter!312 (c!186403 objs!8) lambda!43116)))))

(declare-fun lt!371151 () BalanceConc!6526)

(assert (=> d!310393 (= lt!371151 (BalanceConc!6527 (filter!312 (c!186403 objs!8) lambda!43116)))))

(assert (=> d!310393 (= (filter!309 objs!8 lambda!43116) lt!371151)))

(declare-fun b!1098448 () Bool)

(assert (=> b!1098448 (= e!695553 (= (list!3800 lt!371151) (filter!308 (list!3800 objs!8) lambda!43116)))))

(assert (= (and d!310393 res!487470) b!1098448))

(declare-fun m!1254269 () Bool)

(assert (=> d!310393 m!1254269))

(assert (=> d!310393 m!1254269))

(declare-fun m!1254271 () Bool)

(assert (=> d!310393 m!1254271))

(declare-fun m!1254273 () Bool)

(assert (=> b!1098448 m!1254273))

(assert (=> b!1098448 m!1254167))

(assert (=> b!1098448 m!1254167))

(declare-fun m!1254275 () Bool)

(assert (=> b!1098448 m!1254275))

(assert (=> b!1098353 d!310393))

(declare-fun d!310397 () Bool)

(declare-fun lt!371152 () Bool)

(assert (=> d!310397 (= lt!371152 (contains!1833 (list!3800 objs!8) lt!371081))))

(assert (=> d!310397 (= lt!371152 (contains!1834 (c!186403 objs!8) lt!371081))))

(assert (=> d!310397 (= (contains!1831 objs!8 lt!371081) lt!371152)))

(declare-fun bs!259222 () Bool)

(assert (= bs!259222 d!310397))

(assert (=> bs!259222 m!1254167))

(assert (=> bs!259222 m!1254167))

(declare-fun m!1254277 () Bool)

(assert (=> bs!259222 m!1254277))

(declare-fun m!1254279 () Bool)

(assert (=> bs!259222 m!1254279))

(assert (=> b!1098353 d!310397))

(declare-fun d!310399 () Bool)

(declare-fun lt!371157 () tuple2!11744)

(declare-fun apply!2110 (List!10582 Int) tuple2!11744)

(assert (=> d!310399 (= lt!371157 (apply!2110 (list!3800 objs!8) (ite (>= lt!371076 0) (div lt!371076 2) (- (div (- lt!371076) 2)))))))

(declare-fun apply!2111 (Conc!3256 Int) tuple2!11744)

(assert (=> d!310399 (= lt!371157 (apply!2111 (c!186403 objs!8) (ite (>= lt!371076 0) (div lt!371076 2) (- (div (- lt!371076) 2)))))))

(declare-fun e!695562 () Bool)

(assert (=> d!310399 e!695562))

(declare-fun res!487477 () Bool)

(assert (=> d!310399 (=> (not res!487477) (not e!695562))))

(assert (=> d!310399 (= res!487477 (<= 0 (ite (>= lt!371076 0) (div lt!371076 2) (- (div (- lt!371076) 2)))))))

(assert (=> d!310399 (= (apply!2108 objs!8 (ite (>= lt!371076 0) (div lt!371076 2) (- (div (- lt!371076) 2)))) lt!371157)))

(declare-fun b!1098463 () Bool)

(assert (=> b!1098463 (= e!695562 (< (ite (>= lt!371076 0) (div lt!371076 2) (- (div (- lt!371076) 2))) (size!8190 objs!8)))))

(assert (= (and d!310399 res!487477) b!1098463))

(assert (=> d!310399 m!1254167))

(assert (=> d!310399 m!1254167))

(declare-fun m!1254281 () Bool)

(assert (=> d!310399 m!1254281))

(declare-fun m!1254283 () Bool)

(assert (=> d!310399 m!1254283))

(assert (=> b!1098463 m!1254165))

(assert (=> b!1098353 d!310399))

(declare-fun d!310401 () Bool)

(declare-fun e!695563 () Bool)

(assert (=> d!310401 e!695563))

(declare-fun res!487478 () Bool)

(assert (=> d!310401 (=> (not res!487478) (not e!695563))))

(assert (=> d!310401 (= res!487478 (isBalanced!901 (filter!312 (c!186403 objs!8) lambda!43115)))))

(declare-fun lt!371158 () BalanceConc!6526)

(assert (=> d!310401 (= lt!371158 (BalanceConc!6527 (filter!312 (c!186403 objs!8) lambda!43115)))))

(assert (=> d!310401 (= (filter!309 objs!8 lambda!43115) lt!371158)))

(declare-fun b!1098464 () Bool)

(assert (=> b!1098464 (= e!695563 (= (list!3800 lt!371158) (filter!308 (list!3800 objs!8) lambda!43115)))))

(assert (= (and d!310401 res!487478) b!1098464))

(declare-fun m!1254285 () Bool)

(assert (=> d!310401 m!1254285))

(assert (=> d!310401 m!1254285))

(declare-fun m!1254287 () Bool)

(assert (=> d!310401 m!1254287))

(declare-fun m!1254289 () Bool)

(assert (=> b!1098464 m!1254289))

(assert (=> b!1098464 m!1254167))

(assert (=> b!1098464 m!1254167))

(declare-fun m!1254291 () Bool)

(assert (=> b!1098464 m!1254291))

(assert (=> b!1098353 d!310401))

(declare-fun d!310403 () Bool)

(declare-fun e!695564 () Bool)

(assert (=> d!310403 e!695564))

(declare-fun res!487479 () Bool)

(assert (=> d!310403 (=> (not res!487479) (not e!695564))))

(assert (=> d!310403 (= res!487479 (isBalanced!901 (filter!312 (c!186403 objs!8) lambda!43114)))))

(declare-fun lt!371159 () BalanceConc!6526)

(assert (=> d!310403 (= lt!371159 (BalanceConc!6527 (filter!312 (c!186403 objs!8) lambda!43114)))))

(assert (=> d!310403 (= (filter!309 objs!8 lambda!43114) lt!371159)))

(declare-fun b!1098465 () Bool)

(assert (=> b!1098465 (= e!695564 (= (list!3800 lt!371159) (filter!308 (list!3800 objs!8) lambda!43114)))))

(assert (= (and d!310403 res!487479) b!1098465))

(declare-fun m!1254293 () Bool)

(assert (=> d!310403 m!1254293))

(assert (=> d!310403 m!1254293))

(declare-fun m!1254295 () Bool)

(assert (=> d!310403 m!1254295))

(declare-fun m!1254297 () Bool)

(assert (=> b!1098465 m!1254297))

(assert (=> b!1098465 m!1254167))

(assert (=> b!1098465 m!1254167))

(declare-fun m!1254299 () Bool)

(assert (=> b!1098465 m!1254299))

(assert (=> b!1098353 d!310403))

(declare-fun d!310405 () Bool)

(assert (=> d!310405 (dynLambda!4641 lambda!43114 lt!371081)))

(declare-fun lt!371162 () Unit!16164)

(declare-fun choose!7082 (List!10582 Int tuple2!11744) Unit!16164)

(assert (=> d!310405 (= lt!371162 (choose!7082 (list!3800 objs!8) lambda!43114 lt!371081))))

(declare-fun e!695567 () Bool)

(assert (=> d!310405 e!695567))

(declare-fun res!487482 () Bool)

(assert (=> d!310405 (=> (not res!487482) (not e!695567))))

(assert (=> d!310405 (= res!487482 (forall!2408 (list!3800 objs!8) lambda!43114))))

(assert (=> d!310405 (= (forallContained!509 (list!3800 objs!8) lambda!43114 lt!371081) lt!371162)))

(declare-fun b!1098468 () Bool)

(assert (=> b!1098468 (= e!695567 (contains!1833 (list!3800 objs!8) lt!371081))))

(assert (= (and d!310405 res!487482) b!1098468))

(declare-fun b_lambda!31815 () Bool)

(assert (=> (not b_lambda!31815) (not d!310405)))

(declare-fun m!1254301 () Bool)

(assert (=> d!310405 m!1254301))

(assert (=> d!310405 m!1254167))

(declare-fun m!1254303 () Bool)

(assert (=> d!310405 m!1254303))

(assert (=> d!310405 m!1254167))

(assert (=> d!310405 m!1254223))

(assert (=> b!1098468 m!1254167))

(assert (=> b!1098468 m!1254277))

(assert (=> b!1098352 d!310405))

(assert (=> b!1098352 d!310379))

(declare-fun d!310407 () Bool)

(declare-fun c!186437 () Bool)

(assert (=> d!310407 (= c!186437 (is-Node!3256 (c!186403 objs!8)))))

(declare-fun e!695576 () Bool)

(assert (=> d!310407 (= (inv!13560 (c!186403 objs!8)) e!695576)))

(declare-fun b!1098483 () Bool)

(declare-fun inv!13564 (Conc!3256) Bool)

(assert (=> b!1098483 (= e!695576 (inv!13564 (c!186403 objs!8)))))

(declare-fun b!1098484 () Bool)

(declare-fun e!695577 () Bool)

(assert (=> b!1098484 (= e!695576 e!695577)))

(declare-fun res!487487 () Bool)

(assert (=> b!1098484 (= res!487487 (not (is-Leaf!5167 (c!186403 objs!8))))))

(assert (=> b!1098484 (=> res!487487 e!695577)))

(declare-fun b!1098485 () Bool)

(declare-fun inv!13565 (Conc!3256) Bool)

(assert (=> b!1098485 (= e!695577 (inv!13565 (c!186403 objs!8)))))

(assert (= (and d!310407 c!186437) b!1098483))

(assert (= (and d!310407 (not c!186437)) b!1098484))

(assert (= (and b!1098484 (not res!487487)) b!1098485))

(declare-fun m!1254321 () Bool)

(assert (=> b!1098483 m!1254321))

(declare-fun m!1254323 () Bool)

(assert (=> b!1098485 m!1254323))

(assert (=> b!1098347 d!310407))

(declare-fun d!310415 () Bool)

(assert (=> d!310415 (dynLambda!4641 lambda!43114 lt!371081)))

(declare-fun lt!371165 () Unit!16164)

(assert (=> d!310415 (= lt!371165 (choose!7082 (list!3800 lt!371078) lambda!43114 lt!371081))))

(declare-fun e!695578 () Bool)

(assert (=> d!310415 e!695578))

(declare-fun res!487488 () Bool)

(assert (=> d!310415 (=> (not res!487488) (not e!695578))))

(assert (=> d!310415 (= res!487488 (forall!2408 (list!3800 lt!371078) lambda!43114))))

(assert (=> d!310415 (= (forallContained!509 (list!3800 lt!371078) lambda!43114 lt!371081) lt!371165)))

(declare-fun b!1098486 () Bool)

(assert (=> b!1098486 (= e!695578 (contains!1833 (list!3800 lt!371078) lt!371081))))

(assert (= (and d!310415 res!487488) b!1098486))

(declare-fun b_lambda!31819 () Bool)

(assert (=> (not b_lambda!31819) (not d!310415)))

(assert (=> d!310415 m!1254301))

(assert (=> d!310415 m!1254149))

(declare-fun m!1254325 () Bool)

(assert (=> d!310415 m!1254325))

(assert (=> d!310415 m!1254149))

(declare-fun m!1254327 () Bool)

(assert (=> d!310415 m!1254327))

(assert (=> b!1098486 m!1254149))

(assert (=> b!1098486 m!1254263))

(assert (=> b!1098351 d!310415))

(declare-fun d!310417 () Bool)

(assert (=> d!310417 (= (list!3800 lt!371078) (list!3802 (c!186403 lt!371078)))))

(declare-fun bs!259224 () Bool)

(assert (= bs!259224 d!310417))

(declare-fun m!1254329 () Bool)

(assert (=> bs!259224 m!1254329))

(assert (=> b!1098351 d!310417))

(declare-fun d!310419 () Bool)

(declare-fun lt!371166 () Bool)

(assert (=> d!310419 (= lt!371166 (forall!2408 (list!3800 objs!8) lambda!43113))))

(assert (=> d!310419 (= lt!371166 (forall!2409 (c!186403 objs!8) lambda!43113))))

(assert (=> d!310419 (= (forall!2406 objs!8 lambda!43113) lt!371166)))

(declare-fun bs!259225 () Bool)

(assert (= bs!259225 d!310419))

(assert (=> bs!259225 m!1254167))

(assert (=> bs!259225 m!1254167))

(declare-fun m!1254331 () Bool)

(assert (=> bs!259225 m!1254331))

(declare-fun m!1254333 () Bool)

(assert (=> bs!259225 m!1254333))

(assert (=> start!94240 d!310419))

(declare-fun d!310421 () Bool)

(assert (=> d!310421 (= (inv!13561 objs!8) (isBalanced!901 (c!186403 objs!8)))))

(declare-fun bs!259226 () Bool)

(assert (= bs!259226 d!310421))

(declare-fun m!1254335 () Bool)

(assert (=> bs!259226 m!1254335))

(assert (=> start!94240 d!310421))

(declare-fun d!310423 () Bool)

(declare-fun lt!371167 () Int)

(assert (=> d!310423 (= lt!371167 (size!8191 (list!3800 objs!8)))))

(assert (=> d!310423 (= lt!371167 (size!8195 (c!186403 objs!8)))))

(assert (=> d!310423 (= (size!8190 objs!8) lt!371167)))

(declare-fun bs!259227 () Bool)

(assert (= bs!259227 d!310423))

(assert (=> bs!259227 m!1254167))

(assert (=> bs!259227 m!1254167))

(declare-fun m!1254337 () Bool)

(assert (=> bs!259227 m!1254337))

(declare-fun m!1254339 () Bool)

(assert (=> bs!259227 m!1254339))

(assert (=> b!1098345 d!310423))

(declare-fun b!1098499 () Bool)

(declare-fun e!695589 () Bool)

(assert (=> b!1098499 (= e!695589 true)))

(declare-fun b!1098498 () Bool)

(declare-fun e!695588 () Bool)

(assert (=> b!1098498 (= e!695588 e!695589)))

(declare-fun b!1098497 () Bool)

(declare-fun e!695587 () Bool)

(assert (=> b!1098497 (= e!695587 e!695588)))

(assert (=> b!1098360 e!695587))

(assert (= b!1098498 b!1098499))

(assert (= b!1098497 b!1098498))

(assert (= (and b!1098360 (is-Cons!10565 (rules!9096 (_2!6698 lt!371081)))) b!1098497))

(declare-fun order!6407 () Int)

(declare-fun order!6405 () Int)

(declare-fun dynLambda!4642 (Int Int) Int)

(declare-fun dynLambda!4643 (Int Int) Int)

(assert (=> b!1098499 (< (dynLambda!4642 order!6405 (toValue!2886 (transformation!1809 (h!15966 (rules!9096 (_2!6698 lt!371081)))))) (dynLambda!4643 order!6407 lambda!43114))))

(declare-fun order!6409 () Int)

(declare-fun dynLambda!4644 (Int Int) Int)

(assert (=> b!1098499 (< (dynLambda!4644 order!6409 (toChars!2745 (transformation!1809 (h!15966 (rules!9096 (_2!6698 lt!371081)))))) (dynLambda!4643 order!6407 lambda!43114))))

(declare-fun b!1098502 () Bool)

(declare-fun e!695592 () Bool)

(assert (=> b!1098502 (= e!695592 true)))

(declare-fun b!1098501 () Bool)

(declare-fun e!695591 () Bool)

(assert (=> b!1098501 (= e!695591 e!695592)))

(declare-fun b!1098500 () Bool)

(declare-fun e!695590 () Bool)

(assert (=> b!1098500 (= e!695590 e!695591)))

(assert (=> b!1098364 e!695590))

(assert (= b!1098501 b!1098502))

(assert (= b!1098500 b!1098501))

(assert (= (and b!1098364 (is-Cons!10565 (rules!9096 (_2!6698 lt!371081)))) b!1098500))

(assert (=> b!1098502 (< (dynLambda!4642 order!6405 (toValue!2886 (transformation!1809 (h!15966 (rules!9096 (_2!6698 lt!371081)))))) (dynLambda!4643 order!6407 lambda!43116))))

(assert (=> b!1098502 (< (dynLambda!4644 order!6409 (toChars!2745 (transformation!1809 (h!15966 (rules!9096 (_2!6698 lt!371081)))))) (dynLambda!4643 order!6407 lambda!43116))))

(declare-fun b!1098512 () Bool)

(declare-fun tp!326805 () Bool)

(declare-fun tp!326806 () Bool)

(declare-fun e!695598 () Bool)

(assert (=> b!1098512 (= e!695598 (and (inv!13560 (left!9110 (c!186403 objs!8))) tp!326806 (inv!13560 (right!9440 (c!186403 objs!8))) tp!326805))))

(declare-fun b!1098514 () Bool)

(declare-fun e!695599 () Bool)

(declare-fun tp!326807 () Bool)

(assert (=> b!1098514 (= e!695599 tp!326807)))

(declare-fun b!1098513 () Bool)

(declare-fun inv!13566 (IArray!6517) Bool)

(assert (=> b!1098513 (= e!695598 (and (inv!13566 (xs!5949 (c!186403 objs!8))) e!695599))))

(assert (=> b!1098347 (= tp!326795 (and (inv!13560 (c!186403 objs!8)) e!695598))))

(assert (= (and b!1098347 (is-Node!3256 (c!186403 objs!8))) b!1098512))

(assert (= b!1098513 b!1098514))

(assert (= (and b!1098347 (is-Leaf!5167 (c!186403 objs!8))) b!1098513))

(declare-fun m!1254345 () Bool)

(assert (=> b!1098512 m!1254345))

(declare-fun m!1254347 () Bool)

(assert (=> b!1098512 m!1254347))

(declare-fun m!1254349 () Bool)

(assert (=> b!1098513 m!1254349))

(assert (=> b!1098347 m!1254171))

(declare-fun b!1098523 () Bool)

(declare-fun e!695604 () Bool)

(assert (=> b!1098523 (= e!695604 true)))

(declare-fun b!1098525 () Bool)

(declare-fun e!695605 () Bool)

(assert (=> b!1098525 (= e!695605 true)))

(declare-fun b!1098524 () Bool)

(assert (=> b!1098524 (= e!695604 e!695605)))

(assert (=> b!1098365 e!695604))

(assert (= (and b!1098365 (is-Node!3255 (c!186402 (tokens!1368 (_2!6698 lt!371081))))) b!1098523))

(assert (= b!1098524 b!1098525))

(assert (= (and b!1098365 (is-Leaf!5166 (c!186402 (tokens!1368 (_2!6698 lt!371081))))) b!1098524))

(declare-fun b!1098526 () Bool)

(declare-fun e!695606 () Bool)

(assert (=> b!1098526 (= e!695606 true)))

(declare-fun b!1098528 () Bool)

(declare-fun e!695607 () Bool)

(assert (=> b!1098528 (= e!695607 true)))

(declare-fun b!1098527 () Bool)

(assert (=> b!1098527 (= e!695606 e!695607)))

(assert (=> b!1098363 e!695606))

(assert (= (and b!1098363 (is-Node!3255 (c!186402 (tokens!1368 (_2!6698 lt!371081))))) b!1098526))

(assert (= b!1098527 b!1098528))

(assert (= (and b!1098363 (is-Leaf!5166 (c!186402 (tokens!1368 (_2!6698 lt!371081))))) b!1098527))

(declare-fun b!1098531 () Bool)

(declare-fun e!695610 () Bool)

(assert (=> b!1098531 (= e!695610 true)))

(declare-fun b!1098530 () Bool)

(declare-fun e!695609 () Bool)

(assert (=> b!1098530 (= e!695609 e!695610)))

(declare-fun b!1098529 () Bool)

(declare-fun e!695608 () Bool)

(assert (=> b!1098529 (= e!695608 e!695609)))

(assert (=> b!1098362 e!695608))

(assert (= b!1098530 b!1098531))

(assert (= b!1098529 b!1098530))

(assert (= (and b!1098362 (is-Cons!10565 (rules!9096 (_2!6698 lt!371081)))) b!1098529))

(assert (=> b!1098531 (< (dynLambda!4642 order!6405 (toValue!2886 (transformation!1809 (h!15966 (rules!9096 (_2!6698 lt!371081)))))) (dynLambda!4643 order!6407 lambda!43115))))

(assert (=> b!1098531 (< (dynLambda!4644 order!6409 (toChars!2745 (transformation!1809 (h!15966 (rules!9096 (_2!6698 lt!371081)))))) (dynLambda!4643 order!6407 lambda!43115))))

(declare-fun b!1098532 () Bool)

(declare-fun e!695611 () Bool)

(assert (=> b!1098532 (= e!695611 true)))

(declare-fun b!1098534 () Bool)

(declare-fun e!695612 () Bool)

(assert (=> b!1098534 (= e!695612 true)))

(declare-fun b!1098533 () Bool)

(assert (=> b!1098533 (= e!695611 e!695612)))

(assert (=> b!1098361 e!695611))

(assert (= (and b!1098361 (is-Node!3255 (c!186402 (tokens!1368 (_2!6698 lt!371081))))) b!1098532))

(assert (= b!1098533 b!1098534))

(assert (= (and b!1098361 (is-Leaf!5166 (c!186402 (tokens!1368 (_2!6698 lt!371081))))) b!1098533))

(declare-fun b_lambda!31821 () Bool)

(assert (= b_lambda!31813 (or b!1098353 b_lambda!31821)))

(declare-fun bs!259228 () Bool)

(declare-fun d!310429 () Bool)

(assert (= bs!259228 (and d!310429 b!1098353)))

(assert (=> bs!259228 (= (dynLambda!4641 lambda!43114 (h!15967 lt!371080)) (< (_1!6698 (h!15967 lt!371080)) (_1!6698 lt!371081)))))

(assert (=> b!1098437 d!310429))

(declare-fun b_lambda!31823 () Bool)

(assert (= b_lambda!31815 (or b!1098353 b_lambda!31823)))

(declare-fun bs!259229 () Bool)

(declare-fun d!310431 () Bool)

(assert (= bs!259229 (and d!310431 b!1098353)))

(assert (=> bs!259229 (= (dynLambda!4641 lambda!43114 lt!371081) (< (_1!6698 lt!371081) (_1!6698 lt!371081)))))

(assert (=> d!310405 d!310431))

(declare-fun b_lambda!31825 () Bool)

(assert (= b_lambda!31819 (or b!1098353 b_lambda!31825)))

(assert (=> d!310415 d!310431))

(push 1)

(assert (not d!310401))

(assert (not d!310393))

(assert (not b!1098514))

(assert (not d!310383))

(assert (not b!1098410))

(assert (not d!310417))

(assert (not b!1098513))

(assert (not b!1098497))

(assert (not b!1098464))

(assert (not d!310421))

(assert (not b!1098534))

(assert (not b!1098526))

(assert (not d!310379))

(assert (not b!1098433))

(assert (not b!1098347))

(assert (not b!1098532))

(assert (not b!1098512))

(assert (not b!1098485))

(assert (not b!1098483))

(assert (not b!1098448))

(assert (not b_lambda!31823))

(assert (not b!1098528))

(assert (not b_lambda!31821))

(assert (not b!1098525))

(assert (not d!310405))

(assert (not b!1098465))

(assert (not b_lambda!31825))

(assert (not b!1098468))

(assert (not d!310403))

(assert (not d!310415))

(assert (not b!1098416))

(assert (not d!310389))

(assert (not d!310423))

(assert (not d!310397))

(assert (not d!310399))

(assert (not d!310373))

(assert (not b!1098435))

(assert (not d!310375))

(assert (not bm!80376))

(assert (not b!1098463))

(assert (not d!310419))

(assert (not b!1098439))

(assert (not b!1098486))

(assert (not b!1098529))

(assert (not b!1098500))

(assert (not b!1098523))

(assert (not d!310369))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!310461 () Bool)

(declare-fun lt!371192 () Int)

(assert (=> d!310461 (>= lt!371192 0)))

(declare-fun e!695659 () Int)

(assert (=> d!310461 (= lt!371192 e!695659)))

(declare-fun c!186442 () Bool)

(assert (=> d!310461 (= c!186442 (is-Nil!10566 (list!3800 objs!8)))))

(assert (=> d!310461 (= (size!8191 (list!3800 objs!8)) lt!371192)))

(declare-fun b!1098598 () Bool)

(assert (=> b!1098598 (= e!695659 0)))

(declare-fun b!1098599 () Bool)

(assert (=> b!1098599 (= e!695659 (+ 1 (size!8191 (t!103700 (list!3800 objs!8)))))))

(assert (= (and d!310461 c!186442) b!1098598))

(assert (= (and d!310461 (not c!186442)) b!1098599))

(declare-fun m!1254415 () Bool)

(assert (=> b!1098599 m!1254415))

(assert (=> d!310423 d!310461))

(assert (=> d!310423 d!310379))

(declare-fun d!310463 () Bool)

(declare-fun lt!371195 () Int)

(assert (=> d!310463 (= lt!371195 (size!8191 (list!3802 (c!186403 objs!8))))))

(assert (=> d!310463 (= lt!371195 (ite (is-Empty!3256 (c!186403 objs!8)) 0 (ite (is-Leaf!5167 (c!186403 objs!8)) (csize!6743 (c!186403 objs!8)) (csize!6742 (c!186403 objs!8)))))))

(assert (=> d!310463 (= (size!8195 (c!186403 objs!8)) lt!371195)))

(declare-fun bs!259239 () Bool)

(assert (= bs!259239 d!310463))

(assert (=> bs!259239 m!1254235))

(assert (=> bs!259239 m!1254235))

(declare-fun m!1254417 () Bool)

(assert (=> bs!259239 m!1254417))

(assert (=> d!310423 d!310463))

(declare-fun d!310465 () Bool)

(declare-fun lt!371196 () Int)

(assert (=> d!310465 (>= lt!371196 0)))

(declare-fun e!695660 () Int)

(assert (=> d!310465 (= lt!371196 e!695660)))

(declare-fun c!186443 () Bool)

(assert (=> d!310465 (= c!186443 (is-Nil!10566 (t!103700 lt!371080)))))

(assert (=> d!310465 (= (size!8191 (t!103700 lt!371080)) lt!371196)))

(declare-fun b!1098600 () Bool)

(assert (=> b!1098600 (= e!695660 0)))

(declare-fun b!1098601 () Bool)

(assert (=> b!1098601 (= e!695660 (+ 1 (size!8191 (t!103700 (t!103700 lt!371080)))))))

(assert (= (and d!310465 c!186443) b!1098600))

(assert (= (and d!310465 (not c!186443)) b!1098601))

(declare-fun m!1254419 () Bool)

(assert (=> b!1098601 m!1254419))

(assert (=> b!1098439 d!310465))

(declare-fun d!310467 () Bool)

(assert (=> d!310467 (= (list!3800 lt!371151) (list!3802 (c!186403 lt!371151)))))

(declare-fun bs!259240 () Bool)

(assert (= bs!259240 d!310467))

(declare-fun m!1254421 () Bool)

(assert (=> bs!259240 m!1254421))

(assert (=> b!1098448 d!310467))

(declare-fun b!1098602 () Bool)

(declare-fun e!695663 () List!10582)

(declare-fun call!80385 () List!10582)

(assert (=> b!1098602 (= e!695663 (Cons!10566 (h!15967 (list!3800 objs!8)) call!80385))))

(declare-fun bm!80380 () Bool)

(assert (=> bm!80380 (= call!80385 (filter!308 (t!103700 (list!3800 objs!8)) lambda!43116))))

(declare-fun b!1098603 () Bool)

(declare-fun res!487504 () Bool)

(declare-fun e!695661 () Bool)

(assert (=> b!1098603 (=> (not res!487504) (not e!695661))))

(declare-fun lt!371197 () List!10582)

(assert (=> b!1098603 (= res!487504 (set.subset (content!1527 lt!371197) (content!1527 (list!3800 objs!8))))))

(declare-fun d!310469 () Bool)

(assert (=> d!310469 e!695661))

(declare-fun res!487505 () Bool)

(assert (=> d!310469 (=> (not res!487505) (not e!695661))))

(assert (=> d!310469 (= res!487505 (<= (size!8191 lt!371197) (size!8191 (list!3800 objs!8))))))

(declare-fun e!695662 () List!10582)

(assert (=> d!310469 (= lt!371197 e!695662)))

(declare-fun c!186445 () Bool)

(assert (=> d!310469 (= c!186445 (is-Nil!10566 (list!3800 objs!8)))))

(assert (=> d!310469 (= (filter!308 (list!3800 objs!8) lambda!43116) lt!371197)))

(declare-fun b!1098604 () Bool)

(assert (=> b!1098604 (= e!695662 Nil!10566)))

(declare-fun b!1098605 () Bool)

(assert (=> b!1098605 (= e!695661 (forall!2408 lt!371197 lambda!43116))))

(declare-fun b!1098606 () Bool)

(assert (=> b!1098606 (= e!695663 call!80385)))

(declare-fun b!1098607 () Bool)

(assert (=> b!1098607 (= e!695662 e!695663)))

(declare-fun c!186444 () Bool)

(assert (=> b!1098607 (= c!186444 (dynLambda!4641 lambda!43116 (h!15967 (list!3800 objs!8))))))

(assert (= (and d!310469 c!186445) b!1098604))

(assert (= (and d!310469 (not c!186445)) b!1098607))

(assert (= (and b!1098607 c!186444) b!1098602))

(assert (= (and b!1098607 (not c!186444)) b!1098606))

(assert (= (or b!1098602 b!1098606) bm!80380))

(assert (= (and d!310469 res!487505) b!1098603))

(assert (= (and b!1098603 res!487504) b!1098605))

(declare-fun b_lambda!31835 () Bool)

(assert (=> (not b_lambda!31835) (not b!1098607)))

(declare-fun m!1254423 () Bool)

(assert (=> b!1098605 m!1254423))

(declare-fun m!1254425 () Bool)

(assert (=> b!1098607 m!1254425))

(declare-fun m!1254427 () Bool)

(assert (=> b!1098603 m!1254427))

(assert (=> b!1098603 m!1254167))

(declare-fun m!1254429 () Bool)

(assert (=> b!1098603 m!1254429))

(declare-fun m!1254431 () Bool)

(assert (=> d!310469 m!1254431))

(assert (=> d!310469 m!1254167))

(assert (=> d!310469 m!1254337))

(declare-fun m!1254433 () Bool)

(assert (=> bm!80380 m!1254433))

(assert (=> b!1098448 d!310469))

(assert (=> b!1098448 d!310379))

(declare-fun d!310471 () Bool)

(declare-fun lt!371198 () Int)

(assert (=> d!310471 (>= lt!371198 0)))

(declare-fun e!695664 () Int)

(assert (=> d!310471 (= lt!371198 e!695664)))

(declare-fun c!186446 () Bool)

(assert (=> d!310471 (= c!186446 (is-Nil!10566 (t!103700 (filter!308 lt!371080 lambda!43114))))))

(assert (=> d!310471 (= (size!8191 (t!103700 (filter!308 lt!371080 lambda!43114))) lt!371198)))

(declare-fun b!1098608 () Bool)

(assert (=> b!1098608 (= e!695664 0)))

(declare-fun b!1098609 () Bool)

(assert (=> b!1098609 (= e!695664 (+ 1 (size!8191 (t!103700 (t!103700 (filter!308 lt!371080 lambda!43114))))))))

(assert (= (and d!310471 c!186446) b!1098608))

(assert (= (and d!310471 (not c!186446)) b!1098609))

(declare-fun m!1254435 () Bool)

(assert (=> b!1098609 m!1254435))

(assert (=> b!1098416 d!310471))

(declare-fun d!310473 () Bool)

(assert (=> d!310473 (= (list!3800 lt!371159) (list!3802 (c!186403 lt!371159)))))

(declare-fun bs!259241 () Bool)

(assert (= bs!259241 d!310473))

(declare-fun m!1254437 () Bool)

(assert (=> bs!259241 m!1254437))

(assert (=> b!1098465 d!310473))

(declare-fun b!1098610 () Bool)

(declare-fun e!695667 () List!10582)

(declare-fun call!80386 () List!10582)

(assert (=> b!1098610 (= e!695667 (Cons!10566 (h!15967 (list!3800 objs!8)) call!80386))))

(declare-fun bm!80381 () Bool)

(assert (=> bm!80381 (= call!80386 (filter!308 (t!103700 (list!3800 objs!8)) lambda!43114))))

(declare-fun b!1098611 () Bool)

(declare-fun res!487506 () Bool)

(declare-fun e!695665 () Bool)

(assert (=> b!1098611 (=> (not res!487506) (not e!695665))))

(declare-fun lt!371199 () List!10582)

(assert (=> b!1098611 (= res!487506 (set.subset (content!1527 lt!371199) (content!1527 (list!3800 objs!8))))))

(declare-fun d!310475 () Bool)

(assert (=> d!310475 e!695665))

(declare-fun res!487507 () Bool)

(assert (=> d!310475 (=> (not res!487507) (not e!695665))))

(assert (=> d!310475 (= res!487507 (<= (size!8191 lt!371199) (size!8191 (list!3800 objs!8))))))

(declare-fun e!695666 () List!10582)

(assert (=> d!310475 (= lt!371199 e!695666)))

(declare-fun c!186448 () Bool)

(assert (=> d!310475 (= c!186448 (is-Nil!10566 (list!3800 objs!8)))))

(assert (=> d!310475 (= (filter!308 (list!3800 objs!8) lambda!43114) lt!371199)))

(declare-fun b!1098612 () Bool)

(assert (=> b!1098612 (= e!695666 Nil!10566)))

(declare-fun b!1098613 () Bool)

(assert (=> b!1098613 (= e!695665 (forall!2408 lt!371199 lambda!43114))))

(declare-fun b!1098614 () Bool)

(assert (=> b!1098614 (= e!695667 call!80386)))

(declare-fun b!1098615 () Bool)

(assert (=> b!1098615 (= e!695666 e!695667)))

(declare-fun c!186447 () Bool)

(assert (=> b!1098615 (= c!186447 (dynLambda!4641 lambda!43114 (h!15967 (list!3800 objs!8))))))

(assert (= (and d!310475 c!186448) b!1098612))

(assert (= (and d!310475 (not c!186448)) b!1098615))

(assert (= (and b!1098615 c!186447) b!1098610))

(assert (= (and b!1098615 (not c!186447)) b!1098614))

(assert (= (or b!1098610 b!1098614) bm!80381))

(assert (= (and d!310475 res!487507) b!1098611))

(assert (= (and b!1098611 res!487506) b!1098613))

(declare-fun b_lambda!31837 () Bool)

(assert (=> (not b_lambda!31837) (not b!1098615)))

(declare-fun m!1254439 () Bool)

(assert (=> b!1098613 m!1254439))

(declare-fun m!1254441 () Bool)

(assert (=> b!1098615 m!1254441))

(declare-fun m!1254443 () Bool)

(assert (=> b!1098611 m!1254443))

(assert (=> b!1098611 m!1254167))

(assert (=> b!1098611 m!1254429))

(declare-fun m!1254445 () Bool)

(assert (=> d!310475 m!1254445))

(assert (=> d!310475 m!1254167))

(assert (=> d!310475 m!1254337))

(declare-fun m!1254447 () Bool)

(assert (=> bm!80381 m!1254447))

(assert (=> b!1098465 d!310475))

(assert (=> b!1098465 d!310379))

(declare-fun d!310477 () Bool)

(declare-fun res!487512 () Bool)

(declare-fun e!695672 () Bool)

(assert (=> d!310477 (=> res!487512 e!695672)))

(assert (=> d!310477 (= res!487512 (is-Nil!10566 (list!3800 objs!8)))))

(assert (=> d!310477 (= (forall!2408 (list!3800 objs!8) lambda!43113) e!695672)))

(declare-fun b!1098620 () Bool)

(declare-fun e!695673 () Bool)

(assert (=> b!1098620 (= e!695672 e!695673)))

(declare-fun res!487513 () Bool)

(assert (=> b!1098620 (=> (not res!487513) (not e!695673))))

(assert (=> b!1098620 (= res!487513 (dynLambda!4641 lambda!43113 (h!15967 (list!3800 objs!8))))))

(declare-fun b!1098621 () Bool)

(assert (=> b!1098621 (= e!695673 (forall!2408 (t!103700 (list!3800 objs!8)) lambda!43113))))

(assert (= (and d!310477 (not res!487512)) b!1098620))

(assert (= (and b!1098620 res!487513) b!1098621))

(declare-fun b_lambda!31839 () Bool)

(assert (=> (not b_lambda!31839) (not b!1098620)))

(declare-fun m!1254449 () Bool)

(assert (=> b!1098620 m!1254449))

(declare-fun m!1254451 () Bool)

(assert (=> b!1098621 m!1254451))

(assert (=> d!310419 d!310477))

(assert (=> d!310419 d!310379))

(declare-fun b!1098630 () Bool)

(declare-fun e!695682 () Bool)

(declare-fun e!695681 () Bool)

(assert (=> b!1098630 (= e!695682 e!695681)))

(declare-fun c!186451 () Bool)

(assert (=> b!1098630 (= c!186451 (is-Leaf!5167 (c!186403 objs!8)))))

(declare-fun b!1098632 () Bool)

(declare-fun e!695680 () Bool)

(assert (=> b!1098632 (= e!695681 e!695680)))

(declare-fun lt!371204 () Unit!16164)

(declare-fun lemmaForallConcat!65 (List!10582 List!10582 Int) Unit!16164)

(assert (=> b!1098632 (= lt!371204 (lemmaForallConcat!65 (list!3802 (left!9110 (c!186403 objs!8))) (list!3802 (right!9440 (c!186403 objs!8))) lambda!43113))))

(declare-fun res!487519 () Bool)

(assert (=> b!1098632 (= res!487519 (forall!2409 (left!9110 (c!186403 objs!8)) lambda!43113))))

(assert (=> b!1098632 (=> (not res!487519) (not e!695680))))

(declare-fun d!310479 () Bool)

(declare-fun lt!371205 () Bool)

(assert (=> d!310479 (= lt!371205 (forall!2408 (list!3802 (c!186403 objs!8)) lambda!43113))))

(assert (=> d!310479 (= lt!371205 e!695682)))

(declare-fun res!487518 () Bool)

(assert (=> d!310479 (=> res!487518 e!695682)))

(assert (=> d!310479 (= res!487518 (is-Empty!3256 (c!186403 objs!8)))))

(assert (=> d!310479 (= (forall!2409 (c!186403 objs!8) lambda!43113) lt!371205)))

(declare-fun b!1098633 () Bool)

(assert (=> b!1098633 (= e!695680 (forall!2409 (right!9440 (c!186403 objs!8)) lambda!43113))))

(declare-fun b!1098631 () Bool)

(declare-fun forall!2412 (IArray!6517 Int) Bool)

(assert (=> b!1098631 (= e!695681 (forall!2412 (xs!5949 (c!186403 objs!8)) lambda!43113))))

(assert (= (and d!310479 (not res!487518)) b!1098630))

(assert (= (and b!1098630 c!186451) b!1098631))

(assert (= (and b!1098630 (not c!186451)) b!1098632))

(assert (= (and b!1098632 res!487519) b!1098633))

(declare-fun m!1254453 () Bool)

(assert (=> b!1098632 m!1254453))

(declare-fun m!1254455 () Bool)

(assert (=> b!1098632 m!1254455))

(assert (=> b!1098632 m!1254453))

(assert (=> b!1098632 m!1254455))

(declare-fun m!1254457 () Bool)

(assert (=> b!1098632 m!1254457))

(declare-fun m!1254459 () Bool)

(assert (=> b!1098632 m!1254459))

(assert (=> d!310479 m!1254235))

(assert (=> d!310479 m!1254235))

(declare-fun m!1254461 () Bool)

(assert (=> d!310479 m!1254461))

(declare-fun m!1254463 () Bool)

(assert (=> b!1098633 m!1254463))

(declare-fun m!1254465 () Bool)

(assert (=> b!1098631 m!1254465))

(assert (=> d!310419 d!310479))

(declare-fun d!310481 () Bool)

(declare-fun res!487524 () Bool)

(declare-fun e!695685 () Bool)

(assert (=> d!310481 (=> (not res!487524) (not e!695685))))

(declare-fun list!3804 (IArray!6517) List!10582)

(assert (=> d!310481 (= res!487524 (<= (size!8191 (list!3804 (xs!5949 (c!186403 objs!8)))) 512))))

(assert (=> d!310481 (= (inv!13565 (c!186403 objs!8)) e!695685)))

(declare-fun b!1098638 () Bool)

(declare-fun res!487525 () Bool)

(assert (=> b!1098638 (=> (not res!487525) (not e!695685))))

(assert (=> b!1098638 (= res!487525 (= (csize!6743 (c!186403 objs!8)) (size!8191 (list!3804 (xs!5949 (c!186403 objs!8))))))))

(declare-fun b!1098639 () Bool)

(assert (=> b!1098639 (= e!695685 (and (> (csize!6743 (c!186403 objs!8)) 0) (<= (csize!6743 (c!186403 objs!8)) 512)))))

(assert (= (and d!310481 res!487524) b!1098638))

(assert (= (and b!1098638 res!487525) b!1098639))

(declare-fun m!1254467 () Bool)

(assert (=> d!310481 m!1254467))

(assert (=> d!310481 m!1254467))

(declare-fun m!1254469 () Bool)

(assert (=> d!310481 m!1254469))

(assert (=> b!1098638 m!1254467))

(assert (=> b!1098638 m!1254467))

(assert (=> b!1098638 m!1254469))

(assert (=> b!1098485 d!310481))

(declare-fun d!310483 () Bool)

(declare-fun res!487532 () Bool)

(declare-fun e!695688 () Bool)

(assert (=> d!310483 (=> (not res!487532) (not e!695688))))

(assert (=> d!310483 (= res!487532 (= (csize!6742 (c!186403 objs!8)) (+ (size!8195 (left!9110 (c!186403 objs!8))) (size!8195 (right!9440 (c!186403 objs!8))))))))

(assert (=> d!310483 (= (inv!13564 (c!186403 objs!8)) e!695688)))

(declare-fun b!1098646 () Bool)

(declare-fun res!487533 () Bool)

(assert (=> b!1098646 (=> (not res!487533) (not e!695688))))

(assert (=> b!1098646 (= res!487533 (and (not (= (left!9110 (c!186403 objs!8)) Empty!3256)) (not (= (right!9440 (c!186403 objs!8)) Empty!3256))))))

(declare-fun b!1098647 () Bool)

(declare-fun res!487534 () Bool)

(assert (=> b!1098647 (=> (not res!487534) (not e!695688))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!427 (Conc!3256) Int)

(assert (=> b!1098647 (= res!487534 (= (cheight!3467 (c!186403 objs!8)) (+ (max!0 (height!427 (left!9110 (c!186403 objs!8))) (height!427 (right!9440 (c!186403 objs!8)))) 1)))))

(declare-fun b!1098648 () Bool)

(assert (=> b!1098648 (= e!695688 (<= 0 (cheight!3467 (c!186403 objs!8))))))

(assert (= (and d!310483 res!487532) b!1098646))

(assert (= (and b!1098646 res!487533) b!1098647))

(assert (= (and b!1098647 res!487534) b!1098648))

(declare-fun m!1254471 () Bool)

(assert (=> d!310483 m!1254471))

(declare-fun m!1254473 () Bool)

(assert (=> d!310483 m!1254473))

(declare-fun m!1254475 () Bool)

(assert (=> b!1098647 m!1254475))

(declare-fun m!1254477 () Bool)

(assert (=> b!1098647 m!1254477))

(assert (=> b!1098647 m!1254475))

(assert (=> b!1098647 m!1254477))

(declare-fun m!1254479 () Bool)

(assert (=> b!1098647 m!1254479))

(assert (=> b!1098483 d!310483))

(declare-fun d!310485 () Bool)

(declare-fun lt!371208 () Bool)

(assert (=> d!310485 (= lt!371208 (set.member lt!371081 (content!1527 (list!3800 lt!371078))))))

(declare-fun e!695693 () Bool)

(assert (=> d!310485 (= lt!371208 e!695693)))

(declare-fun res!487540 () Bool)

(assert (=> d!310485 (=> (not res!487540) (not e!695693))))

(assert (=> d!310485 (= res!487540 (is-Cons!10566 (list!3800 lt!371078)))))

(assert (=> d!310485 (= (contains!1833 (list!3800 lt!371078) lt!371081) lt!371208)))

(declare-fun b!1098653 () Bool)

(declare-fun e!695694 () Bool)

(assert (=> b!1098653 (= e!695693 e!695694)))

(declare-fun res!487539 () Bool)

(assert (=> b!1098653 (=> res!487539 e!695694)))

(assert (=> b!1098653 (= res!487539 (= (h!15967 (list!3800 lt!371078)) lt!371081))))

(declare-fun b!1098654 () Bool)

(assert (=> b!1098654 (= e!695694 (contains!1833 (t!103700 (list!3800 lt!371078)) lt!371081))))

(assert (= (and d!310485 res!487540) b!1098653))

(assert (= (and b!1098653 (not res!487539)) b!1098654))

(assert (=> d!310485 m!1254149))

(declare-fun m!1254481 () Bool)

(assert (=> d!310485 m!1254481))

(declare-fun m!1254483 () Bool)

(assert (=> d!310485 m!1254483))

(declare-fun m!1254485 () Bool)

(assert (=> b!1098654 m!1254485))

(assert (=> d!310389 d!310485))

(assert (=> d!310389 d!310417))

(declare-fun b!1098665 () Bool)

(declare-fun e!695702 () Bool)

(declare-fun e!695703 () Bool)

(assert (=> b!1098665 (= e!695702 e!695703)))

(declare-fun res!487545 () Bool)

(assert (=> b!1098665 (= res!487545 (contains!1834 (left!9110 (c!186403 lt!371078)) lt!371081))))

(assert (=> b!1098665 (=> res!487545 e!695703)))

(declare-fun b!1098666 () Bool)

(assert (=> b!1098666 (= e!695703 (contains!1834 (right!9440 (c!186403 lt!371078)) lt!371081))))

(declare-fun d!310487 () Bool)

(declare-fun lt!371211 () Bool)

(assert (=> d!310487 (= lt!371211 (contains!1833 (list!3802 (c!186403 lt!371078)) lt!371081))))

(declare-fun e!695701 () Bool)

(assert (=> d!310487 (= lt!371211 e!695701)))

(declare-fun res!487546 () Bool)

(assert (=> d!310487 (=> (not res!487546) (not e!695701))))

(assert (=> d!310487 (= res!487546 (not (is-Empty!3256 (c!186403 lt!371078))))))

(assert (=> d!310487 (= (contains!1834 (c!186403 lt!371078) lt!371081) lt!371211)))

(declare-fun b!1098663 () Bool)

(assert (=> b!1098663 (= e!695701 e!695702)))

(declare-fun c!186454 () Bool)

(assert (=> b!1098663 (= c!186454 (is-Leaf!5167 (c!186403 lt!371078)))))

(declare-fun b!1098664 () Bool)

(declare-fun contains!1837 (IArray!6517 tuple2!11744) Bool)

(assert (=> b!1098664 (= e!695702 (contains!1837 (xs!5949 (c!186403 lt!371078)) lt!371081))))

(assert (= (and d!310487 res!487546) b!1098663))

(assert (= (and b!1098663 c!186454) b!1098664))

(assert (= (and b!1098663 (not c!186454)) b!1098665))

(assert (= (and b!1098665 (not res!487545)) b!1098666))

(declare-fun m!1254487 () Bool)

(assert (=> b!1098665 m!1254487))

(declare-fun m!1254489 () Bool)

(assert (=> b!1098666 m!1254489))

(assert (=> d!310487 m!1254329))

(assert (=> d!310487 m!1254329))

(declare-fun m!1254491 () Bool)

(assert (=> d!310487 m!1254491))

(declare-fun m!1254493 () Bool)

(assert (=> b!1098664 m!1254493))

(assert (=> d!310389 d!310487))

(assert (=> b!1098463 d!310423))

(declare-fun b!1098676 () Bool)

(declare-fun e!695708 () List!10582)

(declare-fun e!695709 () List!10582)

(assert (=> b!1098676 (= e!695708 e!695709)))

(declare-fun c!186460 () Bool)

(assert (=> b!1098676 (= c!186460 (is-Leaf!5167 (c!186403 lt!371078)))))

(declare-fun b!1098678 () Bool)

(declare-fun ++!2872 (List!10582 List!10582) List!10582)

(assert (=> b!1098678 (= e!695709 (++!2872 (list!3802 (left!9110 (c!186403 lt!371078))) (list!3802 (right!9440 (c!186403 lt!371078)))))))

(declare-fun b!1098677 () Bool)

(assert (=> b!1098677 (= e!695709 (list!3804 (xs!5949 (c!186403 lt!371078))))))

(declare-fun d!310489 () Bool)

(declare-fun c!186459 () Bool)

(assert (=> d!310489 (= c!186459 (is-Empty!3256 (c!186403 lt!371078)))))

(assert (=> d!310489 (= (list!3802 (c!186403 lt!371078)) e!695708)))

(declare-fun b!1098675 () Bool)

(assert (=> b!1098675 (= e!695708 Nil!10566)))

(assert (= (and d!310489 c!186459) b!1098675))

(assert (= (and d!310489 (not c!186459)) b!1098676))

(assert (= (and b!1098676 c!186460) b!1098677))

(assert (= (and b!1098676 (not c!186460)) b!1098678))

(declare-fun m!1254495 () Bool)

(assert (=> b!1098678 m!1254495))

(declare-fun m!1254497 () Bool)

(assert (=> b!1098678 m!1254497))

(assert (=> b!1098678 m!1254495))

(assert (=> b!1098678 m!1254497))

(declare-fun m!1254499 () Bool)

(assert (=> b!1098678 m!1254499))

(declare-fun m!1254501 () Bool)

(assert (=> b!1098677 m!1254501))

(assert (=> d!310417 d!310489))

(declare-fun d!310491 () Bool)

(declare-fun lt!371212 () Int)

(assert (=> d!310491 (>= lt!371212 0)))

(declare-fun e!695710 () Int)

(assert (=> d!310491 (= lt!371212 e!695710)))

(declare-fun c!186461 () Bool)

(assert (=> d!310491 (= c!186461 (is-Nil!10566 lt!371141))))

(assert (=> d!310491 (= (size!8191 lt!371141) lt!371212)))

(declare-fun b!1098679 () Bool)

(assert (=> b!1098679 (= e!695710 0)))

(declare-fun b!1098680 () Bool)

(assert (=> b!1098680 (= e!695710 (+ 1 (size!8191 (t!103700 lt!371141))))))

(assert (= (and d!310491 c!186461) b!1098679))

(assert (= (and d!310491 (not c!186461)) b!1098680))

(declare-fun m!1254503 () Bool)

(assert (=> b!1098680 m!1254503))

(assert (=> d!310383 d!310491))

(assert (=> d!310383 d!310387))

(declare-fun d!310493 () Bool)

(declare-fun res!487560 () Bool)

(declare-fun e!695715 () Bool)

(assert (=> d!310493 (=> res!487560 e!695715)))

(assert (=> d!310493 (= res!487560 (not (is-Node!3256 (filter!312 (c!186403 objs!8) lambda!43116))))))

(assert (=> d!310493 (= (isBalanced!901 (filter!312 (c!186403 objs!8) lambda!43116)) e!695715)))

(declare-fun b!1098693 () Bool)

(declare-fun e!695716 () Bool)

(declare-fun isEmpty!6683 (Conc!3256) Bool)

(assert (=> b!1098693 (= e!695716 (not (isEmpty!6683 (right!9440 (filter!312 (c!186403 objs!8) lambda!43116)))))))

(declare-fun b!1098694 () Bool)

(assert (=> b!1098694 (= e!695715 e!695716)))

(declare-fun res!487562 () Bool)

(assert (=> b!1098694 (=> (not res!487562) (not e!695716))))

(assert (=> b!1098694 (= res!487562 (<= (- 1) (- (height!427 (left!9110 (filter!312 (c!186403 objs!8) lambda!43116))) (height!427 (right!9440 (filter!312 (c!186403 objs!8) lambda!43116))))))))

(declare-fun b!1098695 () Bool)

(declare-fun res!487559 () Bool)

(assert (=> b!1098695 (=> (not res!487559) (not e!695716))))

(assert (=> b!1098695 (= res!487559 (not (isEmpty!6683 (left!9110 (filter!312 (c!186403 objs!8) lambda!43116)))))))

(declare-fun b!1098696 () Bool)

(declare-fun res!487561 () Bool)

(assert (=> b!1098696 (=> (not res!487561) (not e!695716))))

(assert (=> b!1098696 (= res!487561 (isBalanced!901 (right!9440 (filter!312 (c!186403 objs!8) lambda!43116))))))

(declare-fun b!1098697 () Bool)

(declare-fun res!487563 () Bool)

(assert (=> b!1098697 (=> (not res!487563) (not e!695716))))

(assert (=> b!1098697 (= res!487563 (<= (- (height!427 (left!9110 (filter!312 (c!186403 objs!8) lambda!43116))) (height!427 (right!9440 (filter!312 (c!186403 objs!8) lambda!43116)))) 1))))

(declare-fun b!1098698 () Bool)

(declare-fun res!487564 () Bool)

(assert (=> b!1098698 (=> (not res!487564) (not e!695716))))

(assert (=> b!1098698 (= res!487564 (isBalanced!901 (left!9110 (filter!312 (c!186403 objs!8) lambda!43116))))))

(assert (= (and d!310493 (not res!487560)) b!1098694))

(assert (= (and b!1098694 res!487562) b!1098697))

(assert (= (and b!1098697 res!487563) b!1098698))

(assert (= (and b!1098698 res!487564) b!1098696))

(assert (= (and b!1098696 res!487561) b!1098695))

(assert (= (and b!1098695 res!487559) b!1098693))

(declare-fun m!1254505 () Bool)

(assert (=> b!1098698 m!1254505))

(declare-fun m!1254507 () Bool)

(assert (=> b!1098695 m!1254507))

(declare-fun m!1254509 () Bool)

(assert (=> b!1098693 m!1254509))

(declare-fun m!1254511 () Bool)

(assert (=> b!1098694 m!1254511))

(declare-fun m!1254513 () Bool)

(assert (=> b!1098694 m!1254513))

(declare-fun m!1254515 () Bool)

(assert (=> b!1098696 m!1254515))

(assert (=> b!1098697 m!1254511))

(assert (=> b!1098697 m!1254513))

(assert (=> d!310393 d!310493))

(declare-fun b!1098713 () Bool)

(declare-fun e!695728 () Conc!3256)

(declare-fun lt!371221 () IArray!6517)

(declare-fun size!8197 (IArray!6517) Int)

(assert (=> b!1098713 (= e!695728 (Leaf!5167 lt!371221 (size!8197 lt!371221)))))

(declare-fun lt!371219 () Conc!3256)

(declare-fun e!695726 () Bool)

(declare-fun b!1098714 () Bool)

(assert (=> b!1098714 (= e!695726 (= (list!3802 lt!371219) (filter!308 (list!3802 (c!186403 objs!8)) lambda!43116)))))

(declare-fun b!1098715 () Bool)

(assert (=> b!1098715 (= e!695728 Empty!3256)))

(declare-fun b!1098717 () Bool)

(declare-fun e!695725 () Conc!3256)

(assert (=> b!1098717 (= e!695725 (c!186403 objs!8))))

(declare-fun b!1098718 () Bool)

(declare-fun e!695727 () Conc!3256)

(assert (=> b!1098718 (= e!695725 e!695727)))

(declare-fun c!186469 () Bool)

(assert (=> b!1098718 (= c!186469 (is-Leaf!5167 (c!186403 objs!8)))))

(declare-fun b!1098719 () Bool)

(declare-fun c!186468 () Bool)

(assert (=> b!1098719 (= c!186468 (= (size!8197 lt!371221) 0))))

(declare-fun filter!314 (IArray!6517 Int) IArray!6517)

(assert (=> b!1098719 (= lt!371221 (filter!314 (xs!5949 (c!186403 objs!8)) lambda!43116))))

(assert (=> b!1098719 (= e!695727 e!695728)))

(declare-fun b!1098716 () Bool)

(declare-fun lt!371220 () Unit!16164)

(declare-fun lemmaFilterConcat!11 (List!10582 List!10582 Int) Unit!16164)

(assert (=> b!1098716 (= lt!371220 (lemmaFilterConcat!11 (list!3802 (left!9110 (c!186403 objs!8))) (list!3802 (right!9440 (c!186403 objs!8))) lambda!43116))))

(declare-fun ++!2873 (Conc!3256 Conc!3256) Conc!3256)

(assert (=> b!1098716 (= e!695727 (++!2873 (filter!312 (left!9110 (c!186403 objs!8)) lambda!43116) (filter!312 (right!9440 (c!186403 objs!8)) lambda!43116)))))

(declare-fun d!310495 () Bool)

(assert (=> d!310495 e!695726))

(declare-fun res!487567 () Bool)

(assert (=> d!310495 (=> (not res!487567) (not e!695726))))

(assert (=> d!310495 (= res!487567 (isBalanced!901 lt!371219))))

(assert (=> d!310495 (= lt!371219 e!695725)))

(declare-fun c!186470 () Bool)

(assert (=> d!310495 (= c!186470 (is-Empty!3256 (c!186403 objs!8)))))

(assert (=> d!310495 (isBalanced!901 (c!186403 objs!8))))

(assert (=> d!310495 (= (filter!312 (c!186403 objs!8) lambda!43116) lt!371219)))

(assert (= (and d!310495 c!186470) b!1098717))

(assert (= (and d!310495 (not c!186470)) b!1098718))

(assert (= (and b!1098718 c!186469) b!1098719))

(assert (= (and b!1098718 (not c!186469)) b!1098716))

(assert (= (and b!1098719 c!186468) b!1098715))

(assert (= (and b!1098719 (not c!186468)) b!1098713))

(assert (= (and d!310495 res!487567) b!1098714))

(declare-fun m!1254517 () Bool)

(assert (=> b!1098719 m!1254517))

(declare-fun m!1254519 () Bool)

(assert (=> b!1098719 m!1254519))

(declare-fun m!1254521 () Bool)

(assert (=> d!310495 m!1254521))

(assert (=> d!310495 m!1254335))

(declare-fun m!1254523 () Bool)

(assert (=> b!1098714 m!1254523))

(assert (=> b!1098714 m!1254235))

(assert (=> b!1098714 m!1254235))

(declare-fun m!1254525 () Bool)

(assert (=> b!1098714 m!1254525))

(assert (=> b!1098716 m!1254453))

(assert (=> b!1098716 m!1254455))

(declare-fun m!1254527 () Bool)

(assert (=> b!1098716 m!1254527))

(declare-fun m!1254529 () Bool)

(assert (=> b!1098716 m!1254529))

(assert (=> b!1098716 m!1254529))

(declare-fun m!1254531 () Bool)

(assert (=> b!1098716 m!1254531))

(declare-fun m!1254533 () Bool)

(assert (=> b!1098716 m!1254533))

(assert (=> b!1098716 m!1254531))

(assert (=> b!1098716 m!1254453))

(assert (=> b!1098716 m!1254455))

(assert (=> b!1098713 m!1254517))

(assert (=> d!310393 d!310495))

(declare-fun d!310497 () Bool)

(declare-fun res!487569 () Bool)

(declare-fun e!695729 () Bool)

(assert (=> d!310497 (=> res!487569 e!695729)))

(assert (=> d!310497 (= res!487569 (not (is-Node!3256 (filter!312 (c!186403 objs!8) lambda!43114))))))

(assert (=> d!310497 (= (isBalanced!901 (filter!312 (c!186403 objs!8) lambda!43114)) e!695729)))

(declare-fun b!1098720 () Bool)

(declare-fun e!695730 () Bool)

(assert (=> b!1098720 (= e!695730 (not (isEmpty!6683 (right!9440 (filter!312 (c!186403 objs!8) lambda!43114)))))))

(declare-fun b!1098721 () Bool)

(assert (=> b!1098721 (= e!695729 e!695730)))

(declare-fun res!487571 () Bool)

(assert (=> b!1098721 (=> (not res!487571) (not e!695730))))

(assert (=> b!1098721 (= res!487571 (<= (- 1) (- (height!427 (left!9110 (filter!312 (c!186403 objs!8) lambda!43114))) (height!427 (right!9440 (filter!312 (c!186403 objs!8) lambda!43114))))))))

(declare-fun b!1098722 () Bool)

(declare-fun res!487568 () Bool)

(assert (=> b!1098722 (=> (not res!487568) (not e!695730))))

(assert (=> b!1098722 (= res!487568 (not (isEmpty!6683 (left!9110 (filter!312 (c!186403 objs!8) lambda!43114)))))))

(declare-fun b!1098723 () Bool)

(declare-fun res!487570 () Bool)

(assert (=> b!1098723 (=> (not res!487570) (not e!695730))))

(assert (=> b!1098723 (= res!487570 (isBalanced!901 (right!9440 (filter!312 (c!186403 objs!8) lambda!43114))))))

(declare-fun b!1098724 () Bool)

(declare-fun res!487572 () Bool)

(assert (=> b!1098724 (=> (not res!487572) (not e!695730))))

(assert (=> b!1098724 (= res!487572 (<= (- (height!427 (left!9110 (filter!312 (c!186403 objs!8) lambda!43114))) (height!427 (right!9440 (filter!312 (c!186403 objs!8) lambda!43114)))) 1))))

(declare-fun b!1098725 () Bool)

(declare-fun res!487573 () Bool)

(assert (=> b!1098725 (=> (not res!487573) (not e!695730))))

(assert (=> b!1098725 (= res!487573 (isBalanced!901 (left!9110 (filter!312 (c!186403 objs!8) lambda!43114))))))

(assert (= (and d!310497 (not res!487569)) b!1098721))

(assert (= (and b!1098721 res!487571) b!1098724))

(assert (= (and b!1098724 res!487572) b!1098725))

(assert (= (and b!1098725 res!487573) b!1098723))

(assert (= (and b!1098723 res!487570) b!1098722))

(assert (= (and b!1098722 res!487568) b!1098720))

(declare-fun m!1254535 () Bool)

(assert (=> b!1098725 m!1254535))

(declare-fun m!1254537 () Bool)

(assert (=> b!1098722 m!1254537))

(declare-fun m!1254539 () Bool)

(assert (=> b!1098720 m!1254539))

(declare-fun m!1254541 () Bool)

(assert (=> b!1098721 m!1254541))

(declare-fun m!1254543 () Bool)

(assert (=> b!1098721 m!1254543))

(declare-fun m!1254545 () Bool)

(assert (=> b!1098723 m!1254545))

(assert (=> b!1098724 m!1254541))

(assert (=> b!1098724 m!1254543))

(assert (=> d!310403 d!310497))

(declare-fun b!1098726 () Bool)

(declare-fun e!695734 () Conc!3256)

(declare-fun lt!371224 () IArray!6517)

(assert (=> b!1098726 (= e!695734 (Leaf!5167 lt!371224 (size!8197 lt!371224)))))

(declare-fun e!695732 () Bool)

(declare-fun lt!371222 () Conc!3256)

(declare-fun b!1098727 () Bool)

(assert (=> b!1098727 (= e!695732 (= (list!3802 lt!371222) (filter!308 (list!3802 (c!186403 objs!8)) lambda!43114)))))

(declare-fun b!1098728 () Bool)

(assert (=> b!1098728 (= e!695734 Empty!3256)))

(declare-fun b!1098730 () Bool)

(declare-fun e!695731 () Conc!3256)

(assert (=> b!1098730 (= e!695731 (c!186403 objs!8))))

(declare-fun b!1098731 () Bool)

(declare-fun e!695733 () Conc!3256)

(assert (=> b!1098731 (= e!695731 e!695733)))

(declare-fun c!186472 () Bool)

(assert (=> b!1098731 (= c!186472 (is-Leaf!5167 (c!186403 objs!8)))))

(declare-fun b!1098732 () Bool)

(declare-fun c!186471 () Bool)

(assert (=> b!1098732 (= c!186471 (= (size!8197 lt!371224) 0))))

(assert (=> b!1098732 (= lt!371224 (filter!314 (xs!5949 (c!186403 objs!8)) lambda!43114))))

(assert (=> b!1098732 (= e!695733 e!695734)))

(declare-fun b!1098729 () Bool)

(declare-fun lt!371223 () Unit!16164)

(assert (=> b!1098729 (= lt!371223 (lemmaFilterConcat!11 (list!3802 (left!9110 (c!186403 objs!8))) (list!3802 (right!9440 (c!186403 objs!8))) lambda!43114))))

(assert (=> b!1098729 (= e!695733 (++!2873 (filter!312 (left!9110 (c!186403 objs!8)) lambda!43114) (filter!312 (right!9440 (c!186403 objs!8)) lambda!43114)))))

(declare-fun d!310499 () Bool)

(assert (=> d!310499 e!695732))

(declare-fun res!487574 () Bool)

(assert (=> d!310499 (=> (not res!487574) (not e!695732))))

(assert (=> d!310499 (= res!487574 (isBalanced!901 lt!371222))))

(assert (=> d!310499 (= lt!371222 e!695731)))

(declare-fun c!186473 () Bool)

(assert (=> d!310499 (= c!186473 (is-Empty!3256 (c!186403 objs!8)))))

(assert (=> d!310499 (isBalanced!901 (c!186403 objs!8))))

(assert (=> d!310499 (= (filter!312 (c!186403 objs!8) lambda!43114) lt!371222)))

(assert (= (and d!310499 c!186473) b!1098730))

(assert (= (and d!310499 (not c!186473)) b!1098731))

(assert (= (and b!1098731 c!186472) b!1098732))

(assert (= (and b!1098731 (not c!186472)) b!1098729))

(assert (= (and b!1098732 c!186471) b!1098728))

(assert (= (and b!1098732 (not c!186471)) b!1098726))

(assert (= (and d!310499 res!487574) b!1098727))

(declare-fun m!1254547 () Bool)

(assert (=> b!1098732 m!1254547))

(declare-fun m!1254549 () Bool)

(assert (=> b!1098732 m!1254549))

(declare-fun m!1254551 () Bool)

(assert (=> d!310499 m!1254551))

(assert (=> d!310499 m!1254335))

(declare-fun m!1254553 () Bool)

(assert (=> b!1098727 m!1254553))

(assert (=> b!1098727 m!1254235))

(assert (=> b!1098727 m!1254235))

(declare-fun m!1254555 () Bool)

(assert (=> b!1098727 m!1254555))

(assert (=> b!1098729 m!1254453))

(assert (=> b!1098729 m!1254455))

(declare-fun m!1254557 () Bool)

(assert (=> b!1098729 m!1254557))

(declare-fun m!1254559 () Bool)

(assert (=> b!1098729 m!1254559))

(assert (=> b!1098729 m!1254559))

(declare-fun m!1254561 () Bool)

(assert (=> b!1098729 m!1254561))

(declare-fun m!1254563 () Bool)

(assert (=> b!1098729 m!1254563))

(assert (=> b!1098729 m!1254561))

(assert (=> b!1098729 m!1254453))

(assert (=> b!1098729 m!1254455))

(assert (=> b!1098726 m!1254547))

(assert (=> d!310403 d!310499))

(declare-fun d!310501 () Bool)

(assert (=> d!310501 (dynLambda!4641 lambda!43114 lt!371081)))

(assert (=> d!310501 true))

(declare-fun _$7!671 () Unit!16164)

(assert (=> d!310501 (= (choose!7082 (list!3800 lt!371078) lambda!43114 lt!371081) _$7!671)))

(declare-fun b_lambda!31841 () Bool)

(assert (=> (not b_lambda!31841) (not d!310501)))

(declare-fun bs!259242 () Bool)

(assert (= bs!259242 d!310501))

(assert (=> bs!259242 m!1254301))

(assert (=> d!310415 d!310501))

(declare-fun d!310503 () Bool)

(declare-fun res!487575 () Bool)

(declare-fun e!695735 () Bool)

(assert (=> d!310503 (=> res!487575 e!695735)))

(assert (=> d!310503 (= res!487575 (is-Nil!10566 (list!3800 lt!371078)))))

(assert (=> d!310503 (= (forall!2408 (list!3800 lt!371078) lambda!43114) e!695735)))

(declare-fun b!1098733 () Bool)

(declare-fun e!695736 () Bool)

(assert (=> b!1098733 (= e!695735 e!695736)))

(declare-fun res!487576 () Bool)

(assert (=> b!1098733 (=> (not res!487576) (not e!695736))))

(assert (=> b!1098733 (= res!487576 (dynLambda!4641 lambda!43114 (h!15967 (list!3800 lt!371078))))))

(declare-fun b!1098734 () Bool)

(assert (=> b!1098734 (= e!695736 (forall!2408 (t!103700 (list!3800 lt!371078)) lambda!43114))))

(assert (= (and d!310503 (not res!487575)) b!1098733))

(assert (= (and b!1098733 res!487576) b!1098734))

(declare-fun b_lambda!31843 () Bool)

(assert (=> (not b_lambda!31843) (not b!1098733)))

(declare-fun m!1254565 () Bool)

(assert (=> b!1098733 m!1254565))

(declare-fun m!1254567 () Bool)

(assert (=> b!1098734 m!1254567))

(assert (=> d!310415 d!310503))

(declare-fun d!310505 () Bool)

(declare-fun res!487578 () Bool)

(declare-fun e!695737 () Bool)

(assert (=> d!310505 (=> res!487578 e!695737)))

(assert (=> d!310505 (= res!487578 (not (is-Node!3256 (filter!312 (c!186403 objs!8) lambda!43115))))))

(assert (=> d!310505 (= (isBalanced!901 (filter!312 (c!186403 objs!8) lambda!43115)) e!695737)))

(declare-fun b!1098735 () Bool)

(declare-fun e!695738 () Bool)

(assert (=> b!1098735 (= e!695738 (not (isEmpty!6683 (right!9440 (filter!312 (c!186403 objs!8) lambda!43115)))))))

(declare-fun b!1098736 () Bool)

(assert (=> b!1098736 (= e!695737 e!695738)))

(declare-fun res!487580 () Bool)

(assert (=> b!1098736 (=> (not res!487580) (not e!695738))))

(assert (=> b!1098736 (= res!487580 (<= (- 1) (- (height!427 (left!9110 (filter!312 (c!186403 objs!8) lambda!43115))) (height!427 (right!9440 (filter!312 (c!186403 objs!8) lambda!43115))))))))

(declare-fun b!1098737 () Bool)

(declare-fun res!487577 () Bool)

(assert (=> b!1098737 (=> (not res!487577) (not e!695738))))

(assert (=> b!1098737 (= res!487577 (not (isEmpty!6683 (left!9110 (filter!312 (c!186403 objs!8) lambda!43115)))))))

(declare-fun b!1098738 () Bool)

(declare-fun res!487579 () Bool)

(assert (=> b!1098738 (=> (not res!487579) (not e!695738))))

(assert (=> b!1098738 (= res!487579 (isBalanced!901 (right!9440 (filter!312 (c!186403 objs!8) lambda!43115))))))

(declare-fun b!1098739 () Bool)

(declare-fun res!487581 () Bool)

(assert (=> b!1098739 (=> (not res!487581) (not e!695738))))

(assert (=> b!1098739 (= res!487581 (<= (- (height!427 (left!9110 (filter!312 (c!186403 objs!8) lambda!43115))) (height!427 (right!9440 (filter!312 (c!186403 objs!8) lambda!43115)))) 1))))

(declare-fun b!1098740 () Bool)

(declare-fun res!487582 () Bool)

(assert (=> b!1098740 (=> (not res!487582) (not e!695738))))

(assert (=> b!1098740 (= res!487582 (isBalanced!901 (left!9110 (filter!312 (c!186403 objs!8) lambda!43115))))))

(assert (= (and d!310505 (not res!487578)) b!1098736))

(assert (= (and b!1098736 res!487580) b!1098739))

(assert (= (and b!1098739 res!487581) b!1098740))

(assert (= (and b!1098740 res!487582) b!1098738))

(assert (= (and b!1098738 res!487579) b!1098737))

(assert (= (and b!1098737 res!487577) b!1098735))

(declare-fun m!1254569 () Bool)

(assert (=> b!1098740 m!1254569))

(declare-fun m!1254571 () Bool)

(assert (=> b!1098737 m!1254571))

(declare-fun m!1254573 () Bool)

(assert (=> b!1098735 m!1254573))

(declare-fun m!1254575 () Bool)

(assert (=> b!1098736 m!1254575))

(declare-fun m!1254577 () Bool)

(assert (=> b!1098736 m!1254577))

(declare-fun m!1254579 () Bool)

(assert (=> b!1098738 m!1254579))

(assert (=> b!1098739 m!1254575))

(assert (=> b!1098739 m!1254577))

(assert (=> d!310401 d!310505))

(declare-fun b!1098741 () Bool)

(declare-fun e!695742 () Conc!3256)

(declare-fun lt!371227 () IArray!6517)

(assert (=> b!1098741 (= e!695742 (Leaf!5167 lt!371227 (size!8197 lt!371227)))))

(declare-fun b!1098742 () Bool)

(declare-fun lt!371225 () Conc!3256)

(declare-fun e!695740 () Bool)

(assert (=> b!1098742 (= e!695740 (= (list!3802 lt!371225) (filter!308 (list!3802 (c!186403 objs!8)) lambda!43115)))))

(declare-fun b!1098743 () Bool)

(assert (=> b!1098743 (= e!695742 Empty!3256)))

(declare-fun b!1098745 () Bool)

(declare-fun e!695739 () Conc!3256)

(assert (=> b!1098745 (= e!695739 (c!186403 objs!8))))

(declare-fun b!1098746 () Bool)

(declare-fun e!695741 () Conc!3256)

(assert (=> b!1098746 (= e!695739 e!695741)))

(declare-fun c!186475 () Bool)

(assert (=> b!1098746 (= c!186475 (is-Leaf!5167 (c!186403 objs!8)))))

(declare-fun b!1098747 () Bool)

(declare-fun c!186474 () Bool)

(assert (=> b!1098747 (= c!186474 (= (size!8197 lt!371227) 0))))

(assert (=> b!1098747 (= lt!371227 (filter!314 (xs!5949 (c!186403 objs!8)) lambda!43115))))

(assert (=> b!1098747 (= e!695741 e!695742)))

(declare-fun b!1098744 () Bool)

(declare-fun lt!371226 () Unit!16164)

(assert (=> b!1098744 (= lt!371226 (lemmaFilterConcat!11 (list!3802 (left!9110 (c!186403 objs!8))) (list!3802 (right!9440 (c!186403 objs!8))) lambda!43115))))

(assert (=> b!1098744 (= e!695741 (++!2873 (filter!312 (left!9110 (c!186403 objs!8)) lambda!43115) (filter!312 (right!9440 (c!186403 objs!8)) lambda!43115)))))

(declare-fun d!310507 () Bool)

(assert (=> d!310507 e!695740))

(declare-fun res!487583 () Bool)

(assert (=> d!310507 (=> (not res!487583) (not e!695740))))

(assert (=> d!310507 (= res!487583 (isBalanced!901 lt!371225))))

(assert (=> d!310507 (= lt!371225 e!695739)))

(declare-fun c!186476 () Bool)

(assert (=> d!310507 (= c!186476 (is-Empty!3256 (c!186403 objs!8)))))

(assert (=> d!310507 (isBalanced!901 (c!186403 objs!8))))

(assert (=> d!310507 (= (filter!312 (c!186403 objs!8) lambda!43115) lt!371225)))

(assert (= (and d!310507 c!186476) b!1098745))

(assert (= (and d!310507 (not c!186476)) b!1098746))

(assert (= (and b!1098746 c!186475) b!1098747))

(assert (= (and b!1098746 (not c!186475)) b!1098744))

(assert (= (and b!1098747 c!186474) b!1098743))

(assert (= (and b!1098747 (not c!186474)) b!1098741))

(assert (= (and d!310507 res!487583) b!1098742))

(declare-fun m!1254581 () Bool)

(assert (=> b!1098747 m!1254581))

(declare-fun m!1254583 () Bool)

(assert (=> b!1098747 m!1254583))

(declare-fun m!1254585 () Bool)

(assert (=> d!310507 m!1254585))

(assert (=> d!310507 m!1254335))

(declare-fun m!1254587 () Bool)

(assert (=> b!1098742 m!1254587))

(assert (=> b!1098742 m!1254235))

(assert (=> b!1098742 m!1254235))

(declare-fun m!1254589 () Bool)

(assert (=> b!1098742 m!1254589))

(assert (=> b!1098744 m!1254453))

(assert (=> b!1098744 m!1254455))

(declare-fun m!1254591 () Bool)

(assert (=> b!1098744 m!1254591))

(declare-fun m!1254593 () Bool)

(assert (=> b!1098744 m!1254593))

(assert (=> b!1098744 m!1254593))

(declare-fun m!1254595 () Bool)

(assert (=> b!1098744 m!1254595))

(declare-fun m!1254597 () Bool)

(assert (=> b!1098744 m!1254597))

(assert (=> b!1098744 m!1254595))

(assert (=> b!1098744 m!1254453))

(assert (=> b!1098744 m!1254455))

(assert (=> b!1098741 m!1254581))

(assert (=> d!310401 d!310507))

(declare-fun d!310509 () Bool)

(declare-fun res!487584 () Bool)

(declare-fun e!695743 () Bool)

(assert (=> d!310509 (=> res!487584 e!695743)))

(assert (=> d!310509 (= res!487584 (is-Nil!10566 (list!3800 objs!8)))))

(assert (=> d!310509 (= (forall!2408 (list!3800 objs!8) lambda!43114) e!695743)))

(declare-fun b!1098748 () Bool)

(declare-fun e!695744 () Bool)

(assert (=> b!1098748 (= e!695743 e!695744)))

(declare-fun res!487585 () Bool)

(assert (=> b!1098748 (=> (not res!487585) (not e!695744))))

(assert (=> b!1098748 (= res!487585 (dynLambda!4641 lambda!43114 (h!15967 (list!3800 objs!8))))))

(declare-fun b!1098749 () Bool)

(assert (=> b!1098749 (= e!695744 (forall!2408 (t!103700 (list!3800 objs!8)) lambda!43114))))

(assert (= (and d!310509 (not res!487584)) b!1098748))

(assert (= (and b!1098748 res!487585) b!1098749))

(declare-fun b_lambda!31845 () Bool)

(assert (=> (not b_lambda!31845) (not b!1098748)))

(assert (=> b!1098748 m!1254441))

(declare-fun m!1254599 () Bool)

(assert (=> b!1098749 m!1254599))

(assert (=> d!310369 d!310509))

(assert (=> d!310369 d!310379))

(declare-fun b!1098750 () Bool)

(declare-fun e!695747 () Bool)

(declare-fun e!695746 () Bool)

(assert (=> b!1098750 (= e!695747 e!695746)))

(declare-fun c!186477 () Bool)

(assert (=> b!1098750 (= c!186477 (is-Leaf!5167 (c!186403 objs!8)))))

(declare-fun b!1098752 () Bool)

(declare-fun e!695745 () Bool)

(assert (=> b!1098752 (= e!695746 e!695745)))

(declare-fun lt!371228 () Unit!16164)

(assert (=> b!1098752 (= lt!371228 (lemmaForallConcat!65 (list!3802 (left!9110 (c!186403 objs!8))) (list!3802 (right!9440 (c!186403 objs!8))) lambda!43114))))

(declare-fun res!487587 () Bool)

(assert (=> b!1098752 (= res!487587 (forall!2409 (left!9110 (c!186403 objs!8)) lambda!43114))))

(assert (=> b!1098752 (=> (not res!487587) (not e!695745))))

(declare-fun d!310511 () Bool)

(declare-fun lt!371229 () Bool)

(assert (=> d!310511 (= lt!371229 (forall!2408 (list!3802 (c!186403 objs!8)) lambda!43114))))

(assert (=> d!310511 (= lt!371229 e!695747)))

(declare-fun res!487586 () Bool)

(assert (=> d!310511 (=> res!487586 e!695747)))

(assert (=> d!310511 (= res!487586 (is-Empty!3256 (c!186403 objs!8)))))

(assert (=> d!310511 (= (forall!2409 (c!186403 objs!8) lambda!43114) lt!371229)))

(declare-fun b!1098753 () Bool)

(assert (=> b!1098753 (= e!695745 (forall!2409 (right!9440 (c!186403 objs!8)) lambda!43114))))

(declare-fun b!1098751 () Bool)

(assert (=> b!1098751 (= e!695746 (forall!2412 (xs!5949 (c!186403 objs!8)) lambda!43114))))

(assert (= (and d!310511 (not res!487586)) b!1098750))

(assert (= (and b!1098750 c!186477) b!1098751))

(assert (= (and b!1098750 (not c!186477)) b!1098752))

(assert (= (and b!1098752 res!487587) b!1098753))

(assert (=> b!1098752 m!1254453))

(assert (=> b!1098752 m!1254455))

(assert (=> b!1098752 m!1254453))

(assert (=> b!1098752 m!1254455))

(declare-fun m!1254601 () Bool)

(assert (=> b!1098752 m!1254601))

(declare-fun m!1254603 () Bool)

(assert (=> b!1098752 m!1254603))

(assert (=> d!310511 m!1254235))

(assert (=> d!310511 m!1254235))

(declare-fun m!1254605 () Bool)

(assert (=> d!310511 m!1254605))

(declare-fun m!1254607 () Bool)

(assert (=> b!1098753 m!1254607))

(declare-fun m!1254609 () Bool)

(assert (=> b!1098751 m!1254609))

(assert (=> d!310369 d!310511))

(assert (=> b!1098347 d!310407))

(assert (=> b!1098410 d!310381))

(assert (=> b!1098410 d!310383))

(assert (=> b!1098410 d!310387))

(declare-fun d!310513 () Bool)

(assert (=> d!310513 (= (inv!13566 (xs!5949 (c!186403 objs!8))) (<= (size!8191 (innerList!3316 (xs!5949 (c!186403 objs!8)))) 2147483647))))

(declare-fun bs!259243 () Bool)

(assert (= bs!259243 d!310513))

(declare-fun m!1254611 () Bool)

(assert (=> bs!259243 m!1254611))

(assert (=> b!1098513 d!310513))

(declare-fun d!310515 () Bool)

(declare-fun lt!371230 () Bool)

(assert (=> d!310515 (= lt!371230 (set.member lt!371081 (content!1527 (list!3800 objs!8))))))

(declare-fun e!695748 () Bool)

(assert (=> d!310515 (= lt!371230 e!695748)))

(declare-fun res!487589 () Bool)

(assert (=> d!310515 (=> (not res!487589) (not e!695748))))

(assert (=> d!310515 (= res!487589 (is-Cons!10566 (list!3800 objs!8)))))

(assert (=> d!310515 (= (contains!1833 (list!3800 objs!8) lt!371081) lt!371230)))

(declare-fun b!1098754 () Bool)

(declare-fun e!695749 () Bool)

(assert (=> b!1098754 (= e!695748 e!695749)))

(declare-fun res!487588 () Bool)

(assert (=> b!1098754 (=> res!487588 e!695749)))

(assert (=> b!1098754 (= res!487588 (= (h!15967 (list!3800 objs!8)) lt!371081))))

(declare-fun b!1098755 () Bool)

(assert (=> b!1098755 (= e!695749 (contains!1833 (t!103700 (list!3800 objs!8)) lt!371081))))

(assert (= (and d!310515 res!487589) b!1098754))

(assert (= (and b!1098754 (not res!487588)) b!1098755))

(assert (=> d!310515 m!1254167))

(assert (=> d!310515 m!1254429))

(declare-fun m!1254613 () Bool)

(assert (=> d!310515 m!1254613))

(declare-fun m!1254615 () Bool)

(assert (=> b!1098755 m!1254615))

(assert (=> d!310397 d!310515))

(assert (=> d!310397 d!310379))

(declare-fun b!1098758 () Bool)

(declare-fun e!695751 () Bool)

(declare-fun e!695752 () Bool)

(assert (=> b!1098758 (= e!695751 e!695752)))

(declare-fun res!487590 () Bool)

(assert (=> b!1098758 (= res!487590 (contains!1834 (left!9110 (c!186403 objs!8)) lt!371081))))

(assert (=> b!1098758 (=> res!487590 e!695752)))

(declare-fun b!1098759 () Bool)

(assert (=> b!1098759 (= e!695752 (contains!1834 (right!9440 (c!186403 objs!8)) lt!371081))))

(declare-fun d!310517 () Bool)

(declare-fun lt!371231 () Bool)

(assert (=> d!310517 (= lt!371231 (contains!1833 (list!3802 (c!186403 objs!8)) lt!371081))))

(declare-fun e!695750 () Bool)

(assert (=> d!310517 (= lt!371231 e!695750)))

(declare-fun res!487591 () Bool)

(assert (=> d!310517 (=> (not res!487591) (not e!695750))))

(assert (=> d!310517 (= res!487591 (not (is-Empty!3256 (c!186403 objs!8))))))

(assert (=> d!310517 (= (contains!1834 (c!186403 objs!8) lt!371081) lt!371231)))

(declare-fun b!1098756 () Bool)

(assert (=> b!1098756 (= e!695750 e!695751)))

(declare-fun c!186478 () Bool)

(assert (=> b!1098756 (= c!186478 (is-Leaf!5167 (c!186403 objs!8)))))

(declare-fun b!1098757 () Bool)

(assert (=> b!1098757 (= e!695751 (contains!1837 (xs!5949 (c!186403 objs!8)) lt!371081))))

(assert (= (and d!310517 res!487591) b!1098756))

(assert (= (and b!1098756 c!186478) b!1098757))

(assert (= (and b!1098756 (not c!186478)) b!1098758))

(assert (= (and b!1098758 (not res!487590)) b!1098759))

(declare-fun m!1254617 () Bool)

(assert (=> b!1098758 m!1254617))

(declare-fun m!1254619 () Bool)

(assert (=> b!1098759 m!1254619))

(assert (=> d!310517 m!1254235))

(assert (=> d!310517 m!1254235))

(declare-fun m!1254621 () Bool)

(assert (=> d!310517 m!1254621))

(declare-fun m!1254623 () Bool)

(assert (=> b!1098757 m!1254623))

(assert (=> d!310397 d!310517))

(assert (=> d!310375 d!310371))

(declare-fun d!310519 () Bool)

(declare-fun e!695755 () Bool)

(assert (=> d!310519 e!695755))

(declare-fun res!487594 () Bool)

(assert (=> d!310519 (=> res!487594 e!695755)))

(assert (=> d!310519 (= res!487594 (isEmpty!6681 lt!371080))))

(assert (=> d!310519 true))

(declare-fun _$38!330 () Unit!16164)

(assert (=> d!310519 (= (choose!7081 lt!371080 lambda!43114) _$38!330)))

(declare-fun b!1098762 () Bool)

(assert (=> b!1098762 (= e!695755 (< (size!8191 (filter!308 lt!371080 lambda!43114)) (size!8191 lt!371080)))))

(assert (= (and d!310519 (not res!487594)) b!1098762))

(assert (=> d!310519 m!1254175))

(assert (=> b!1098762 m!1254159))

(assert (=> b!1098762 m!1254159))

(assert (=> b!1098762 m!1254161))

(assert (=> b!1098762 m!1254163))

(assert (=> d!310375 d!310519))

(declare-fun d!310521 () Bool)

(declare-fun res!487595 () Bool)

(declare-fun e!695756 () Bool)

(assert (=> d!310521 (=> res!487595 e!695756)))

(assert (=> d!310521 (= res!487595 (is-Nil!10566 lt!371080))))

(assert (=> d!310521 (= (forall!2408 lt!371080 lambda!43114) e!695756)))

(declare-fun b!1098763 () Bool)

(declare-fun e!695757 () Bool)

(assert (=> b!1098763 (= e!695756 e!695757)))

(declare-fun res!487596 () Bool)

(assert (=> b!1098763 (=> (not res!487596) (not e!695757))))

(assert (=> b!1098763 (= res!487596 (dynLambda!4641 lambda!43114 (h!15967 lt!371080)))))

(declare-fun b!1098764 () Bool)

(assert (=> b!1098764 (= e!695757 (forall!2408 (t!103700 lt!371080) lambda!43114))))

(assert (= (and d!310521 (not res!487595)) b!1098763))

(assert (= (and b!1098763 res!487596) b!1098764))

(declare-fun b_lambda!31847 () Bool)

(assert (=> (not b_lambda!31847) (not b!1098763)))

(assert (=> b!1098763 m!1254249))

(declare-fun m!1254625 () Bool)

(assert (=> b!1098764 m!1254625))

(assert (=> d!310375 d!310521))

(declare-fun d!310523 () Bool)

(declare-fun c!186479 () Bool)

(assert (=> d!310523 (= c!186479 (is-Node!3256 (left!9110 (c!186403 objs!8))))))

(declare-fun e!695758 () Bool)

(assert (=> d!310523 (= (inv!13560 (left!9110 (c!186403 objs!8))) e!695758)))

(declare-fun b!1098765 () Bool)

(assert (=> b!1098765 (= e!695758 (inv!13564 (left!9110 (c!186403 objs!8))))))

(declare-fun b!1098766 () Bool)

(declare-fun e!695759 () Bool)

(assert (=> b!1098766 (= e!695758 e!695759)))

(declare-fun res!487597 () Bool)

(assert (=> b!1098766 (= res!487597 (not (is-Leaf!5167 (left!9110 (c!186403 objs!8)))))))

(assert (=> b!1098766 (=> res!487597 e!695759)))

(declare-fun b!1098767 () Bool)

(assert (=> b!1098767 (= e!695759 (inv!13565 (left!9110 (c!186403 objs!8))))))

(assert (= (and d!310523 c!186479) b!1098765))

(assert (= (and d!310523 (not c!186479)) b!1098766))

(assert (= (and b!1098766 (not res!487597)) b!1098767))

(declare-fun m!1254627 () Bool)

(assert (=> b!1098765 m!1254627))

(declare-fun m!1254629 () Bool)

(assert (=> b!1098767 m!1254629))

(assert (=> b!1098512 d!310523))

(declare-fun d!310525 () Bool)

(declare-fun c!186480 () Bool)

(assert (=> d!310525 (= c!186480 (is-Node!3256 (right!9440 (c!186403 objs!8))))))

(declare-fun e!695760 () Bool)

(assert (=> d!310525 (= (inv!13560 (right!9440 (c!186403 objs!8))) e!695760)))

(declare-fun b!1098768 () Bool)

(assert (=> b!1098768 (= e!695760 (inv!13564 (right!9440 (c!186403 objs!8))))))

(declare-fun b!1098769 () Bool)

(declare-fun e!695761 () Bool)

(assert (=> b!1098769 (= e!695760 e!695761)))

(declare-fun res!487598 () Bool)

(assert (=> b!1098769 (= res!487598 (not (is-Leaf!5167 (right!9440 (c!186403 objs!8)))))))

(assert (=> b!1098769 (=> res!487598 e!695761)))

(declare-fun b!1098770 () Bool)

(assert (=> b!1098770 (= e!695761 (inv!13565 (right!9440 (c!186403 objs!8))))))

(assert (= (and d!310525 c!186480) b!1098768))

(assert (= (and d!310525 (not c!186480)) b!1098769))

(assert (= (and b!1098769 (not res!487598)) b!1098770))

(declare-fun m!1254631 () Bool)

(assert (=> b!1098768 m!1254631))

(declare-fun m!1254633 () Bool)

(assert (=> b!1098770 m!1254633))

(assert (=> b!1098512 d!310525))

(declare-fun d!310527 () Bool)

(declare-fun res!487599 () Bool)

(declare-fun e!695762 () Bool)

(assert (=> d!310527 (=> res!487599 e!695762)))

(assert (=> d!310527 (= res!487599 (is-Nil!10566 lt!371141))))

(assert (=> d!310527 (= (forall!2408 lt!371141 lambda!43114) e!695762)))

(declare-fun b!1098771 () Bool)

(declare-fun e!695763 () Bool)

(assert (=> b!1098771 (= e!695762 e!695763)))

(declare-fun res!487600 () Bool)

(assert (=> b!1098771 (=> (not res!487600) (not e!695763))))

(assert (=> b!1098771 (= res!487600 (dynLambda!4641 lambda!43114 (h!15967 lt!371141)))))

(declare-fun b!1098772 () Bool)

(assert (=> b!1098772 (= e!695763 (forall!2408 (t!103700 lt!371141) lambda!43114))))

(assert (= (and d!310527 (not res!487599)) b!1098771))

(assert (= (and b!1098771 res!487600) b!1098772))

(declare-fun b_lambda!31849 () Bool)

(assert (=> (not b_lambda!31849) (not b!1098771)))

(declare-fun m!1254635 () Bool)

(assert (=> b!1098771 m!1254635))

(declare-fun m!1254637 () Bool)

(assert (=> b!1098772 m!1254637))

(assert (=> b!1098435 d!310527))

(declare-fun d!310529 () Bool)

(assert (=> d!310529 (dynLambda!4641 lambda!43114 lt!371081)))

(assert (=> d!310529 true))

(declare-fun _$7!672 () Unit!16164)

(assert (=> d!310529 (= (choose!7082 (list!3800 objs!8) lambda!43114 lt!371081) _$7!672)))

(declare-fun b_lambda!31851 () Bool)

(assert (=> (not b_lambda!31851) (not d!310529)))

(declare-fun bs!259244 () Bool)

(assert (= bs!259244 d!310529))

(assert (=> bs!259244 m!1254301))

(assert (=> d!310405 d!310529))

(assert (=> d!310405 d!310509))

(assert (=> b!1098486 d!310485))

(declare-fun d!310531 () Bool)

(declare-fun lt!371234 () tuple2!11744)

(assert (=> d!310531 (contains!1833 (list!3800 objs!8) lt!371234)))

(declare-fun e!695768 () tuple2!11744)

(assert (=> d!310531 (= lt!371234 e!695768)))

(declare-fun c!186483 () Bool)

(assert (=> d!310531 (= c!186483 (= (ite (>= lt!371076 0) (div lt!371076 2) (- (div (- lt!371076) 2))) 0))))

(declare-fun e!695769 () Bool)

(assert (=> d!310531 e!695769))

(declare-fun res!487603 () Bool)

(assert (=> d!310531 (=> (not res!487603) (not e!695769))))

(assert (=> d!310531 (= res!487603 (<= 0 (ite (>= lt!371076 0) (div lt!371076 2) (- (div (- lt!371076) 2)))))))

(assert (=> d!310531 (= (apply!2110 (list!3800 objs!8) (ite (>= lt!371076 0) (div lt!371076 2) (- (div (- lt!371076) 2)))) lt!371234)))

(declare-fun b!1098779 () Bool)

(assert (=> b!1098779 (= e!695769 (< (ite (>= lt!371076 0) (div lt!371076 2) (- (div (- lt!371076) 2))) (size!8191 (list!3800 objs!8))))))

(declare-fun b!1098780 () Bool)

(declare-fun head!2036 (List!10582) tuple2!11744)

(assert (=> b!1098780 (= e!695768 (head!2036 (list!3800 objs!8)))))

(declare-fun b!1098781 () Bool)

(declare-fun tail!1596 (List!10582) List!10582)

(assert (=> b!1098781 (= e!695768 (apply!2110 (tail!1596 (list!3800 objs!8)) (- (ite (>= lt!371076 0) (div lt!371076 2) (- (div (- lt!371076) 2))) 1)))))

(assert (= (and d!310531 res!487603) b!1098779))

(assert (= (and d!310531 c!186483) b!1098780))

(assert (= (and d!310531 (not c!186483)) b!1098781))

(assert (=> d!310531 m!1254167))

(declare-fun m!1254639 () Bool)

(assert (=> d!310531 m!1254639))

(assert (=> b!1098779 m!1254167))

(assert (=> b!1098779 m!1254337))

(assert (=> b!1098780 m!1254167))

(declare-fun m!1254641 () Bool)

(assert (=> b!1098780 m!1254641))

(assert (=> b!1098781 m!1254167))

(declare-fun m!1254643 () Bool)

(assert (=> b!1098781 m!1254643))

(assert (=> b!1098781 m!1254643))

(declare-fun m!1254645 () Bool)

(assert (=> b!1098781 m!1254645))

(assert (=> d!310399 d!310531))

(assert (=> d!310399 d!310379))

(declare-fun bm!80384 () Bool)

(declare-fun c!186490 () Bool)

(declare-fun c!186492 () Bool)

(assert (=> bm!80384 (= c!186490 c!186492)))

(declare-fun e!695781 () Int)

(declare-fun call!80389 () tuple2!11744)

(assert (=> bm!80384 (= call!80389 (apply!2111 (ite c!186492 (left!9110 (c!186403 objs!8)) (right!9440 (c!186403 objs!8))) e!695781))))

(declare-fun b!1098796 () Bool)

(declare-fun e!695780 () tuple2!11744)

(declare-fun e!695779 () tuple2!11744)

(assert (=> b!1098796 (= e!695780 e!695779)))

(declare-fun lt!371240 () Bool)

(declare-fun appendIndex!85 (List!10582 List!10582 Int) Bool)

(assert (=> b!1098796 (= lt!371240 (appendIndex!85 (list!3802 (left!9110 (c!186403 objs!8))) (list!3802 (right!9440 (c!186403 objs!8))) (ite (>= lt!371076 0) (div lt!371076 2) (- (div (- lt!371076) 2)))))))

(assert (=> b!1098796 (= c!186492 (< (ite (>= lt!371076 0) (div lt!371076 2) (- (div (- lt!371076) 2))) (size!8195 (left!9110 (c!186403 objs!8)))))))

(declare-fun d!310533 () Bool)

(declare-fun lt!371239 () tuple2!11744)

(assert (=> d!310533 (= lt!371239 (apply!2110 (list!3802 (c!186403 objs!8)) (ite (>= lt!371076 0) (div lt!371076 2) (- (div (- lt!371076) 2)))))))

(assert (=> d!310533 (= lt!371239 e!695780)))

(declare-fun c!186491 () Bool)

(assert (=> d!310533 (= c!186491 (is-Leaf!5167 (c!186403 objs!8)))))

(declare-fun e!695778 () Bool)

(assert (=> d!310533 e!695778))

(declare-fun res!487606 () Bool)

(assert (=> d!310533 (=> (not res!487606) (not e!695778))))

(assert (=> d!310533 (= res!487606 (<= 0 (ite (>= lt!371076 0) (div lt!371076 2) (- (div (- lt!371076) 2)))))))

(assert (=> d!310533 (= (apply!2111 (c!186403 objs!8) (ite (>= lt!371076 0) (div lt!371076 2) (- (div (- lt!371076) 2)))) lt!371239)))

(declare-fun b!1098797 () Bool)

(declare-fun apply!2114 (IArray!6517 Int) tuple2!11744)

(assert (=> b!1098797 (= e!695780 (apply!2114 (xs!5949 (c!186403 objs!8)) (ite (>= lt!371076 0) (div lt!371076 2) (- (div (- lt!371076) 2)))))))

(declare-fun b!1098798 () Bool)

(assert (=> b!1098798 (= e!695779 call!80389)))

(declare-fun b!1098799 () Bool)

(assert (=> b!1098799 (= e!695778 (< (ite (>= lt!371076 0) (div lt!371076 2) (- (div (- lt!371076) 2))) (size!8195 (c!186403 objs!8))))))

(declare-fun b!1098800 () Bool)

(assert (=> b!1098800 (= e!695781 (ite (>= lt!371076 0) (div lt!371076 2) (- (div (- lt!371076) 2))))))

(declare-fun b!1098801 () Bool)

(assert (=> b!1098801 (= e!695779 call!80389)))

(declare-fun b!1098802 () Bool)

(assert (=> b!1098802 (= e!695781 (- (ite (>= lt!371076 0) (div lt!371076 2) (- (div (- lt!371076) 2))) (size!8195 (left!9110 (c!186403 objs!8)))))))

(assert (= (and d!310533 res!487606) b!1098799))

(assert (= (and d!310533 c!186491) b!1098797))

(assert (= (and d!310533 (not c!186491)) b!1098796))

(assert (= (and b!1098796 c!186492) b!1098801))

(assert (= (and b!1098796 (not c!186492)) b!1098798))

(assert (= (or b!1098801 b!1098798) bm!80384))

(assert (= (and bm!80384 c!186490) b!1098800))

(assert (= (and bm!80384 (not c!186490)) b!1098802))

(assert (=> d!310533 m!1254235))

(assert (=> d!310533 m!1254235))

(declare-fun m!1254647 () Bool)

(assert (=> d!310533 m!1254647))

(declare-fun m!1254649 () Bool)

(assert (=> bm!80384 m!1254649))

(assert (=> b!1098799 m!1254339))

(assert (=> b!1098802 m!1254471))

(assert (=> b!1098796 m!1254453))

(assert (=> b!1098796 m!1254455))

(assert (=> b!1098796 m!1254453))

(assert (=> b!1098796 m!1254455))

(declare-fun m!1254651 () Bool)

(assert (=> b!1098796 m!1254651))

(assert (=> b!1098796 m!1254471))

(declare-fun m!1254653 () Bool)

(assert (=> b!1098797 m!1254653))

(assert (=> d!310399 d!310533))

(declare-fun d!310535 () Bool)

(declare-fun lt!371241 () Int)

(assert (=> d!310535 (>= lt!371241 0)))

(declare-fun e!695782 () Int)

(assert (=> d!310535 (= lt!371241 e!695782)))

(declare-fun c!186493 () Bool)

(assert (=> d!310535 (= c!186493 (is-Nil!10566 (list!3800 lt!371078)))))

(assert (=> d!310535 (= (size!8191 (list!3800 lt!371078)) lt!371241)))

(declare-fun b!1098803 () Bool)

(assert (=> b!1098803 (= e!695782 0)))

(declare-fun b!1098804 () Bool)

(assert (=> b!1098804 (= e!695782 (+ 1 (size!8191 (t!103700 (list!3800 lt!371078)))))))

(assert (= (and d!310535 c!186493) b!1098803))

(assert (= (and d!310535 (not c!186493)) b!1098804))

(declare-fun m!1254655 () Bool)

(assert (=> b!1098804 m!1254655))

(assert (=> d!310373 d!310535))

(assert (=> d!310373 d!310417))

(declare-fun d!310537 () Bool)

(declare-fun lt!371242 () Int)

(assert (=> d!310537 (= lt!371242 (size!8191 (list!3802 (c!186403 lt!371078))))))

(assert (=> d!310537 (= lt!371242 (ite (is-Empty!3256 (c!186403 lt!371078)) 0 (ite (is-Leaf!5167 (c!186403 lt!371078)) (csize!6743 (c!186403 lt!371078)) (csize!6742 (c!186403 lt!371078)))))))

(assert (=> d!310537 (= (size!8195 (c!186403 lt!371078)) lt!371242)))

(declare-fun bs!259245 () Bool)

(assert (= bs!259245 d!310537))

(assert (=> bs!259245 m!1254329))

(assert (=> bs!259245 m!1254329))

(declare-fun m!1254657 () Bool)

(assert (=> bs!259245 m!1254657))

(assert (=> d!310373 d!310537))

(declare-fun d!310539 () Bool)

(assert (=> d!310539 (= (list!3800 lt!371158) (list!3802 (c!186403 lt!371158)))))

(declare-fun bs!259246 () Bool)

(assert (= bs!259246 d!310539))

(declare-fun m!1254659 () Bool)

(assert (=> bs!259246 m!1254659))

(assert (=> b!1098464 d!310539))

(declare-fun b!1098805 () Bool)

(declare-fun e!695785 () List!10582)

(declare-fun call!80390 () List!10582)

(assert (=> b!1098805 (= e!695785 (Cons!10566 (h!15967 (list!3800 objs!8)) call!80390))))

(declare-fun bm!80385 () Bool)

(assert (=> bm!80385 (= call!80390 (filter!308 (t!103700 (list!3800 objs!8)) lambda!43115))))

(declare-fun b!1098806 () Bool)

(declare-fun res!487607 () Bool)

(declare-fun e!695783 () Bool)

(assert (=> b!1098806 (=> (not res!487607) (not e!695783))))

(declare-fun lt!371243 () List!10582)

(assert (=> b!1098806 (= res!487607 (set.subset (content!1527 lt!371243) (content!1527 (list!3800 objs!8))))))

(declare-fun d!310541 () Bool)

(assert (=> d!310541 e!695783))

(declare-fun res!487608 () Bool)

(assert (=> d!310541 (=> (not res!487608) (not e!695783))))

(assert (=> d!310541 (= res!487608 (<= (size!8191 lt!371243) (size!8191 (list!3800 objs!8))))))

(declare-fun e!695784 () List!10582)

(assert (=> d!310541 (= lt!371243 e!695784)))

(declare-fun c!186495 () Bool)

(assert (=> d!310541 (= c!186495 (is-Nil!10566 (list!3800 objs!8)))))

(assert (=> d!310541 (= (filter!308 (list!3800 objs!8) lambda!43115) lt!371243)))

(declare-fun b!1098807 () Bool)

(assert (=> b!1098807 (= e!695784 Nil!10566)))

(declare-fun b!1098808 () Bool)

(assert (=> b!1098808 (= e!695783 (forall!2408 lt!371243 lambda!43115))))

(declare-fun b!1098809 () Bool)

(assert (=> b!1098809 (= e!695785 call!80390)))

(declare-fun b!1098810 () Bool)

(assert (=> b!1098810 (= e!695784 e!695785)))

(declare-fun c!186494 () Bool)

(assert (=> b!1098810 (= c!186494 (dynLambda!4641 lambda!43115 (h!15967 (list!3800 objs!8))))))

(assert (= (and d!310541 c!186495) b!1098807))

(assert (= (and d!310541 (not c!186495)) b!1098810))

(assert (= (and b!1098810 c!186494) b!1098805))

(assert (= (and b!1098810 (not c!186494)) b!1098809))

(assert (= (or b!1098805 b!1098809) bm!80385))

(assert (= (and d!310541 res!487608) b!1098806))

(assert (= (and b!1098806 res!487607) b!1098808))

(declare-fun b_lambda!31853 () Bool)

(assert (=> (not b_lambda!31853) (not b!1098810)))

(declare-fun m!1254661 () Bool)

(assert (=> b!1098808 m!1254661))

(declare-fun m!1254663 () Bool)

(assert (=> b!1098810 m!1254663))

(declare-fun m!1254665 () Bool)

(assert (=> b!1098806 m!1254665))

(assert (=> b!1098806 m!1254167))

(assert (=> b!1098806 m!1254429))

(declare-fun m!1254667 () Bool)

(assert (=> d!310541 m!1254667))

(assert (=> d!310541 m!1254167))

(assert (=> d!310541 m!1254337))

(declare-fun m!1254669 () Bool)

(assert (=> bm!80385 m!1254669))

(assert (=> b!1098464 d!310541))

(assert (=> b!1098464 d!310379))

(declare-fun b!1098811 () Bool)

(declare-fun e!695788 () List!10582)

(declare-fun call!80391 () List!10582)

(assert (=> b!1098811 (= e!695788 (Cons!10566 (h!15967 (t!103700 lt!371080)) call!80391))))

(declare-fun bm!80386 () Bool)

(assert (=> bm!80386 (= call!80391 (filter!308 (t!103700 (t!103700 lt!371080)) lambda!43114))))

(declare-fun b!1098812 () Bool)

(declare-fun res!487609 () Bool)

(declare-fun e!695786 () Bool)

(assert (=> b!1098812 (=> (not res!487609) (not e!695786))))

(declare-fun lt!371244 () List!10582)

(assert (=> b!1098812 (= res!487609 (set.subset (content!1527 lt!371244) (content!1527 (t!103700 lt!371080))))))

(declare-fun d!310543 () Bool)

(assert (=> d!310543 e!695786))

(declare-fun res!487610 () Bool)

(assert (=> d!310543 (=> (not res!487610) (not e!695786))))

(assert (=> d!310543 (= res!487610 (<= (size!8191 lt!371244) (size!8191 (t!103700 lt!371080))))))

(declare-fun e!695787 () List!10582)

(assert (=> d!310543 (= lt!371244 e!695787)))

(declare-fun c!186497 () Bool)

(assert (=> d!310543 (= c!186497 (is-Nil!10566 (t!103700 lt!371080)))))

(assert (=> d!310543 (= (filter!308 (t!103700 lt!371080) lambda!43114) lt!371244)))

(declare-fun b!1098813 () Bool)

(assert (=> b!1098813 (= e!695787 Nil!10566)))

(declare-fun b!1098814 () Bool)

(assert (=> b!1098814 (= e!695786 (forall!2408 lt!371244 lambda!43114))))

(declare-fun b!1098815 () Bool)

(assert (=> b!1098815 (= e!695788 call!80391)))

(declare-fun b!1098816 () Bool)

(assert (=> b!1098816 (= e!695787 e!695788)))

(declare-fun c!186496 () Bool)

(assert (=> b!1098816 (= c!186496 (dynLambda!4641 lambda!43114 (h!15967 (t!103700 lt!371080))))))

(assert (= (and d!310543 c!186497) b!1098813))

(assert (= (and d!310543 (not c!186497)) b!1098816))

(assert (= (and b!1098816 c!186496) b!1098811))

(assert (= (and b!1098816 (not c!186496)) b!1098815))

(assert (= (or b!1098811 b!1098815) bm!80386))

(assert (= (and d!310543 res!487610) b!1098812))

(assert (= (and b!1098812 res!487609) b!1098814))

(declare-fun b_lambda!31855 () Bool)

(assert (=> (not b_lambda!31855) (not b!1098816)))

(declare-fun m!1254671 () Bool)

(assert (=> b!1098814 m!1254671))

(declare-fun m!1254673 () Bool)

(assert (=> b!1098816 m!1254673))

(declare-fun m!1254675 () Bool)

(assert (=> b!1098812 m!1254675))

(declare-fun m!1254677 () Bool)

(assert (=> b!1098812 m!1254677))

(declare-fun m!1254679 () Bool)

(assert (=> d!310543 m!1254679))

(assert (=> d!310543 m!1254259))

(declare-fun m!1254681 () Bool)

(assert (=> bm!80386 m!1254681))

(assert (=> bm!80376 d!310543))

(declare-fun d!310545 () Bool)

(declare-fun c!186500 () Bool)

(assert (=> d!310545 (= c!186500 (is-Nil!10566 lt!371141))))

(declare-fun e!695791 () (Set tuple2!11744))

(assert (=> d!310545 (= (content!1527 lt!371141) e!695791)))

(declare-fun b!1098821 () Bool)

(assert (=> b!1098821 (= e!695791 (as set.empty (Set tuple2!11744)))))

(declare-fun b!1098822 () Bool)

(assert (=> b!1098822 (= e!695791 (set.union (set.insert (h!15967 lt!371141) (as set.empty (Set tuple2!11744))) (content!1527 (t!103700 lt!371141))))))

(assert (= (and d!310545 c!186500) b!1098821))

(assert (= (and d!310545 (not c!186500)) b!1098822))

(declare-fun m!1254683 () Bool)

(assert (=> b!1098822 m!1254683))

(declare-fun m!1254685 () Bool)

(assert (=> b!1098822 m!1254685))

(assert (=> b!1098433 d!310545))

(declare-fun d!310547 () Bool)

(declare-fun c!186501 () Bool)

(assert (=> d!310547 (= c!186501 (is-Nil!10566 lt!371080))))

(declare-fun e!695792 () (Set tuple2!11744))

(assert (=> d!310547 (= (content!1527 lt!371080) e!695792)))

(declare-fun b!1098823 () Bool)

(assert (=> b!1098823 (= e!695792 (as set.empty (Set tuple2!11744)))))

(declare-fun b!1098824 () Bool)

(assert (=> b!1098824 (= e!695792 (set.union (set.insert (h!15967 lt!371080) (as set.empty (Set tuple2!11744))) (content!1527 (t!103700 lt!371080))))))

(assert (= (and d!310547 c!186501) b!1098823))

(assert (= (and d!310547 (not c!186501)) b!1098824))

(declare-fun m!1254687 () Bool)

(assert (=> b!1098824 m!1254687))

(assert (=> b!1098824 m!1254677))

(assert (=> b!1098433 d!310547))

(declare-fun b!1098826 () Bool)

(declare-fun e!695793 () List!10582)

(declare-fun e!695794 () List!10582)

(assert (=> b!1098826 (= e!695793 e!695794)))

(declare-fun c!186503 () Bool)

(assert (=> b!1098826 (= c!186503 (is-Leaf!5167 (c!186403 objs!8)))))

(declare-fun b!1098828 () Bool)

(assert (=> b!1098828 (= e!695794 (++!2872 (list!3802 (left!9110 (c!186403 objs!8))) (list!3802 (right!9440 (c!186403 objs!8)))))))

(declare-fun b!1098827 () Bool)

(assert (=> b!1098827 (= e!695794 (list!3804 (xs!5949 (c!186403 objs!8))))))

(declare-fun d!310549 () Bool)

(declare-fun c!186502 () Bool)

(assert (=> d!310549 (= c!186502 (is-Empty!3256 (c!186403 objs!8)))))

(assert (=> d!310549 (= (list!3802 (c!186403 objs!8)) e!695793)))

(declare-fun b!1098825 () Bool)

(assert (=> b!1098825 (= e!695793 Nil!10566)))

(assert (= (and d!310549 c!186502) b!1098825))

(assert (= (and d!310549 (not c!186502)) b!1098826))

(assert (= (and b!1098826 c!186503) b!1098827))

(assert (= (and b!1098826 (not c!186503)) b!1098828))

(assert (=> b!1098828 m!1254453))

(assert (=> b!1098828 m!1254455))

(assert (=> b!1098828 m!1254453))

(assert (=> b!1098828 m!1254455))

(declare-fun m!1254689 () Bool)

(assert (=> b!1098828 m!1254689))

(assert (=> b!1098827 m!1254467))

(assert (=> d!310379 d!310549))

(declare-fun d!310551 () Bool)

(declare-fun res!487612 () Bool)

(declare-fun e!695795 () Bool)

(assert (=> d!310551 (=> res!487612 e!695795)))

(assert (=> d!310551 (= res!487612 (not (is-Node!3256 (c!186403 objs!8))))))

(assert (=> d!310551 (= (isBalanced!901 (c!186403 objs!8)) e!695795)))

(declare-fun b!1098829 () Bool)

(declare-fun e!695796 () Bool)

(assert (=> b!1098829 (= e!695796 (not (isEmpty!6683 (right!9440 (c!186403 objs!8)))))))

(declare-fun b!1098830 () Bool)

(assert (=> b!1098830 (= e!695795 e!695796)))

(declare-fun res!487614 () Bool)

(assert (=> b!1098830 (=> (not res!487614) (not e!695796))))

(assert (=> b!1098830 (= res!487614 (<= (- 1) (- (height!427 (left!9110 (c!186403 objs!8))) (height!427 (right!9440 (c!186403 objs!8))))))))

(declare-fun b!1098831 () Bool)

(declare-fun res!487611 () Bool)

(assert (=> b!1098831 (=> (not res!487611) (not e!695796))))

(assert (=> b!1098831 (= res!487611 (not (isEmpty!6683 (left!9110 (c!186403 objs!8)))))))

(declare-fun b!1098832 () Bool)

(declare-fun res!487613 () Bool)

(assert (=> b!1098832 (=> (not res!487613) (not e!695796))))

(assert (=> b!1098832 (= res!487613 (isBalanced!901 (right!9440 (c!186403 objs!8))))))

(declare-fun b!1098833 () Bool)

(declare-fun res!487615 () Bool)

(assert (=> b!1098833 (=> (not res!487615) (not e!695796))))

(assert (=> b!1098833 (= res!487615 (<= (- (height!427 (left!9110 (c!186403 objs!8))) (height!427 (right!9440 (c!186403 objs!8)))) 1))))

(declare-fun b!1098834 () Bool)

(declare-fun res!487616 () Bool)

(assert (=> b!1098834 (=> (not res!487616) (not e!695796))))

(assert (=> b!1098834 (= res!487616 (isBalanced!901 (left!9110 (c!186403 objs!8))))))

(assert (= (and d!310551 (not res!487612)) b!1098830))

(assert (= (and b!1098830 res!487614) b!1098833))

(assert (= (and b!1098833 res!487615) b!1098834))

(assert (= (and b!1098834 res!487616) b!1098832))

(assert (= (and b!1098832 res!487613) b!1098831))

(assert (= (and b!1098831 res!487611) b!1098829))

(declare-fun m!1254691 () Bool)

(assert (=> b!1098834 m!1254691))

(declare-fun m!1254693 () Bool)

(assert (=> b!1098831 m!1254693))

(declare-fun m!1254695 () Bool)

(assert (=> b!1098829 m!1254695))

(assert (=> b!1098830 m!1254475))

(assert (=> b!1098830 m!1254477))

(declare-fun m!1254697 () Bool)

(assert (=> b!1098832 m!1254697))

(assert (=> b!1098833 m!1254475))

(assert (=> b!1098833 m!1254477))

(assert (=> d!310421 d!310551))

(assert (=> b!1098468 d!310515))

(declare-fun b!1098845 () Bool)

(declare-fun e!695805 () Bool)

(declare-fun e!695806 () Bool)

(assert (=> b!1098845 (= e!695805 e!695806)))

(declare-fun b!1098847 () Bool)

(declare-fun e!695807 () Bool)

(declare-fun e!695808 () Bool)

(assert (=> b!1098847 (= e!695807 e!695808)))

(assert (=> b!1098525 e!695805))

(declare-fun b!1098846 () Bool)

(assert (=> b!1098846 (= e!695806 e!695807)))

(declare-fun b!1098848 () Bool)

(assert (=> b!1098848 (= e!695808 true)))

(assert (= b!1098847 b!1098848))

(assert (= b!1098846 b!1098847))

(assert (= b!1098845 b!1098846))

(assert (= (and b!1098525 (is-Cons!10564 (innerList!3315 (xs!5948 (c!186402 (tokens!1368 (_2!6698 lt!371081))))))) b!1098845))

(assert (=> b!1098848 (< (dynLambda!4642 order!6405 (toValue!2886 (transformation!1809 (rule!3232 (h!15965 (innerList!3315 (xs!5948 (c!186402 (tokens!1368 (_2!6698 lt!371081)))))))))) (dynLambda!4643 order!6407 lambda!43116))))

(assert (=> b!1098848 (< (dynLambda!4644 order!6409 (toChars!2745 (transformation!1809 (rule!3232 (h!15965 (innerList!3315 (xs!5948 (c!186402 (tokens!1368 (_2!6698 lt!371081)))))))))) (dynLambda!4643 order!6407 lambda!43116))))

(declare-fun b!1098851 () Bool)

(declare-fun e!695811 () Bool)

(assert (=> b!1098851 (= e!695811 true)))

(declare-fun b!1098850 () Bool)

(declare-fun e!695810 () Bool)

(assert (=> b!1098850 (= e!695810 e!695811)))

(declare-fun b!1098849 () Bool)

(declare-fun e!695809 () Bool)

(assert (=> b!1098849 (= e!695809 e!695810)))

(assert (=> b!1098500 e!695809))

(assert (= b!1098850 b!1098851))

(assert (= b!1098849 b!1098850))

(assert (= (and b!1098500 (is-Cons!10565 (t!103699 (rules!9096 (_2!6698 lt!371081))))) b!1098849))

(assert (=> b!1098851 (< (dynLambda!4642 order!6405 (toValue!2886 (transformation!1809 (h!15966 (t!103699 (rules!9096 (_2!6698 lt!371081))))))) (dynLambda!4643 order!6407 lambda!43116))))

(assert (=> b!1098851 (< (dynLambda!4644 order!6409 (toChars!2745 (transformation!1809 (h!15966 (t!103699 (rules!9096 (_2!6698 lt!371081))))))) (dynLambda!4643 order!6407 lambda!43116))))

(declare-fun b!1098852 () Bool)

(declare-fun e!695812 () Bool)

(assert (=> b!1098852 (= e!695812 true)))

(declare-fun b!1098854 () Bool)

(declare-fun e!695813 () Bool)

(assert (=> b!1098854 (= e!695813 true)))

(declare-fun b!1098853 () Bool)

(assert (=> b!1098853 (= e!695812 e!695813)))

(assert (=> b!1098526 e!695812))

(assert (= (and b!1098526 (is-Node!3255 (left!9109 (c!186402 (tokens!1368 (_2!6698 lt!371081)))))) b!1098852))

(assert (= b!1098853 b!1098854))

(assert (= (and b!1098526 (is-Leaf!5166 (left!9109 (c!186402 (tokens!1368 (_2!6698 lt!371081)))))) b!1098853))

(declare-fun b!1098855 () Bool)

(declare-fun e!695814 () Bool)

(assert (=> b!1098855 (= e!695814 true)))

(declare-fun b!1098857 () Bool)

(declare-fun e!695815 () Bool)

(assert (=> b!1098857 (= e!695815 true)))

(declare-fun b!1098856 () Bool)

(assert (=> b!1098856 (= e!695814 e!695815)))

(assert (=> b!1098526 e!695814))

(assert (= (and b!1098526 (is-Node!3255 (right!9439 (c!186402 (tokens!1368 (_2!6698 lt!371081)))))) b!1098855))

(assert (= b!1098856 b!1098857))

(assert (= (and b!1098526 (is-Leaf!5166 (right!9439 (c!186402 (tokens!1368 (_2!6698 lt!371081)))))) b!1098856))

(declare-fun b!1098858 () Bool)

(declare-fun e!695816 () Bool)

(declare-fun e!695817 () Bool)

(assert (=> b!1098858 (= e!695816 e!695817)))

(declare-fun b!1098860 () Bool)

(declare-fun e!695818 () Bool)

(declare-fun e!695819 () Bool)

(assert (=> b!1098860 (= e!695818 e!695819)))

(assert (=> b!1098534 e!695816))

(declare-fun b!1098859 () Bool)

(assert (=> b!1098859 (= e!695817 e!695818)))

(declare-fun b!1098861 () Bool)

(assert (=> b!1098861 (= e!695819 true)))

(assert (= b!1098860 b!1098861))

(assert (= b!1098859 b!1098860))

(assert (= b!1098858 b!1098859))

(assert (= (and b!1098534 (is-Cons!10564 (innerList!3315 (xs!5948 (c!186402 (tokens!1368 (_2!6698 lt!371081))))))) b!1098858))

(assert (=> b!1098861 (< (dynLambda!4642 order!6405 (toValue!2886 (transformation!1809 (rule!3232 (h!15965 (innerList!3315 (xs!5948 (c!186402 (tokens!1368 (_2!6698 lt!371081)))))))))) (dynLambda!4643 order!6407 lambda!43114))))

(assert (=> b!1098861 (< (dynLambda!4644 order!6409 (toChars!2745 (transformation!1809 (rule!3232 (h!15965 (innerList!3315 (xs!5948 (c!186402 (tokens!1368 (_2!6698 lt!371081)))))))))) (dynLambda!4643 order!6407 lambda!43114))))

(declare-fun b!1098872 () Bool)

(declare-fun e!695828 () Bool)

(declare-fun tp!326823 () Bool)

(declare-fun inv!13570 (Conc!3255) Bool)

(assert (=> b!1098872 (= e!695828 (and (inv!13570 (c!186402 (tokens!1368 (_2!6698 (h!15967 (innerList!3316 (xs!5949 (c!186403 objs!8)))))))) tp!326823))))

(declare-fun b!1098871 () Bool)

(declare-fun e!695826 () Bool)

(declare-fun tp!326825 () Bool)

(declare-fun inv!13571 (BalanceConc!6524) Bool)

(assert (=> b!1098871 (= e!695826 (and tp!326825 (inv!13571 (tokens!1368 (_2!6698 (h!15967 (innerList!3316 (xs!5949 (c!186403 objs!8))))))) e!695828))))

(declare-fun b!1098870 () Bool)

(declare-fun tp!326824 () Bool)

(declare-fun e!695827 () Bool)

(declare-fun inv!13572 (PrintableTokens!334) Bool)

(assert (=> b!1098870 (= e!695827 (and (inv!13572 (_2!6698 (h!15967 (innerList!3316 (xs!5949 (c!186403 objs!8)))))) e!695826 tp!326824))))

(assert (=> b!1098514 (= tp!326807 e!695827)))

(assert (= b!1098871 b!1098872))

(assert (= b!1098870 b!1098871))

(assert (= (and b!1098514 (is-Cons!10566 (innerList!3316 (xs!5949 (c!186403 objs!8))))) b!1098870))

(declare-fun m!1254699 () Bool)

(assert (=> b!1098872 m!1254699))

(declare-fun m!1254701 () Bool)

(assert (=> b!1098871 m!1254701))

(declare-fun m!1254703 () Bool)

(assert (=> b!1098870 m!1254703))

(declare-fun b!1098875 () Bool)

(declare-fun e!695831 () Bool)

(assert (=> b!1098875 (= e!695831 true)))

(declare-fun b!1098874 () Bool)

(declare-fun e!695830 () Bool)

(assert (=> b!1098874 (= e!695830 e!695831)))

(declare-fun b!1098873 () Bool)

(declare-fun e!695829 () Bool)

(assert (=> b!1098873 (= e!695829 e!695830)))

(assert (=> b!1098497 e!695829))

(assert (= b!1098874 b!1098875))

(assert (= b!1098873 b!1098874))

(assert (= (and b!1098497 (is-Cons!10565 (t!103699 (rules!9096 (_2!6698 lt!371081))))) b!1098873))

(assert (=> b!1098875 (< (dynLambda!4642 order!6405 (toValue!2886 (transformation!1809 (h!15966 (t!103699 (rules!9096 (_2!6698 lt!371081))))))) (dynLambda!4643 order!6407 lambda!43114))))

(assert (=> b!1098875 (< (dynLambda!4644 order!6409 (toChars!2745 (transformation!1809 (h!15966 (t!103699 (rules!9096 (_2!6698 lt!371081))))))) (dynLambda!4643 order!6407 lambda!43114))))

(declare-fun b!1098876 () Bool)

(declare-fun e!695832 () Bool)

(declare-fun e!695833 () Bool)

(assert (=> b!1098876 (= e!695832 e!695833)))

(declare-fun b!1098878 () Bool)

(declare-fun e!695834 () Bool)

(declare-fun e!695835 () Bool)

(assert (=> b!1098878 (= e!695834 e!695835)))

(assert (=> b!1098528 e!695832))

(declare-fun b!1098877 () Bool)

(assert (=> b!1098877 (= e!695833 e!695834)))

(declare-fun b!1098879 () Bool)

(assert (=> b!1098879 (= e!695835 true)))

(assert (= b!1098878 b!1098879))

(assert (= b!1098877 b!1098878))

(assert (= b!1098876 b!1098877))

(assert (= (and b!1098528 (is-Cons!10564 (innerList!3315 (xs!5948 (c!186402 (tokens!1368 (_2!6698 lt!371081))))))) b!1098876))

(assert (=> b!1098879 (< (dynLambda!4642 order!6405 (toValue!2886 (transformation!1809 (rule!3232 (h!15965 (innerList!3315 (xs!5948 (c!186402 (tokens!1368 (_2!6698 lt!371081)))))))))) (dynLambda!4643 order!6407 lambda!43115))))

(assert (=> b!1098879 (< (dynLambda!4644 order!6409 (toChars!2745 (transformation!1809 (rule!3232 (h!15965 (innerList!3315 (xs!5948 (c!186402 (tokens!1368 (_2!6698 lt!371081)))))))))) (dynLambda!4643 order!6407 lambda!43115))))

(declare-fun b!1098880 () Bool)

(declare-fun e!695836 () Bool)

(assert (=> b!1098880 (= e!695836 true)))

(declare-fun b!1098882 () Bool)

(declare-fun e!695837 () Bool)

(assert (=> b!1098882 (= e!695837 true)))

(declare-fun b!1098881 () Bool)

(assert (=> b!1098881 (= e!695836 e!695837)))

(assert (=> b!1098523 e!695836))

(assert (= (and b!1098523 (is-Node!3255 (left!9109 (c!186402 (tokens!1368 (_2!6698 lt!371081)))))) b!1098880))

(assert (= b!1098881 b!1098882))

(assert (= (and b!1098523 (is-Leaf!5166 (left!9109 (c!186402 (tokens!1368 (_2!6698 lt!371081)))))) b!1098881))

(declare-fun b!1098883 () Bool)

(declare-fun e!695838 () Bool)

(assert (=> b!1098883 (= e!695838 true)))

(declare-fun b!1098885 () Bool)

(declare-fun e!695839 () Bool)

(assert (=> b!1098885 (= e!695839 true)))

(declare-fun b!1098884 () Bool)

(assert (=> b!1098884 (= e!695838 e!695839)))

(assert (=> b!1098523 e!695838))

(assert (= (and b!1098523 (is-Node!3255 (right!9439 (c!186402 (tokens!1368 (_2!6698 lt!371081)))))) b!1098883))

(assert (= b!1098884 b!1098885))

(assert (= (and b!1098523 (is-Leaf!5166 (right!9439 (c!186402 (tokens!1368 (_2!6698 lt!371081)))))) b!1098884))

(declare-fun b!1098888 () Bool)

(declare-fun e!695842 () Bool)

(assert (=> b!1098888 (= e!695842 true)))

(declare-fun b!1098887 () Bool)

(declare-fun e!695841 () Bool)

(assert (=> b!1098887 (= e!695841 e!695842)))

(declare-fun b!1098886 () Bool)

(declare-fun e!695840 () Bool)

(assert (=> b!1098886 (= e!695840 e!695841)))

(assert (=> b!1098529 e!695840))

(assert (= b!1098887 b!1098888))

(assert (= b!1098886 b!1098887))

(assert (= (and b!1098529 (is-Cons!10565 (t!103699 (rules!9096 (_2!6698 lt!371081))))) b!1098886))

(assert (=> b!1098888 (< (dynLambda!4642 order!6405 (toValue!2886 (transformation!1809 (h!15966 (t!103699 (rules!9096 (_2!6698 lt!371081))))))) (dynLambda!4643 order!6407 lambda!43115))))

(assert (=> b!1098888 (< (dynLambda!4644 order!6409 (toChars!2745 (transformation!1809 (h!15966 (t!103699 (rules!9096 (_2!6698 lt!371081))))))) (dynLambda!4643 order!6407 lambda!43115))))

(declare-fun b!1098889 () Bool)

(declare-fun e!695843 () Bool)

(assert (=> b!1098889 (= e!695843 true)))

(declare-fun b!1098891 () Bool)

(declare-fun e!695844 () Bool)

(assert (=> b!1098891 (= e!695844 true)))

(declare-fun b!1098890 () Bool)

(assert (=> b!1098890 (= e!695843 e!695844)))

(assert (=> b!1098532 e!695843))

(assert (= (and b!1098532 (is-Node!3255 (left!9109 (c!186402 (tokens!1368 (_2!6698 lt!371081)))))) b!1098889))

(assert (= b!1098890 b!1098891))

(assert (= (and b!1098532 (is-Leaf!5166 (left!9109 (c!186402 (tokens!1368 (_2!6698 lt!371081)))))) b!1098890))

(declare-fun b!1098892 () Bool)

(declare-fun e!695845 () Bool)

(assert (=> b!1098892 (= e!695845 true)))

(declare-fun b!1098894 () Bool)

(declare-fun e!695846 () Bool)

(assert (=> b!1098894 (= e!695846 true)))

(declare-fun b!1098893 () Bool)

(assert (=> b!1098893 (= e!695845 e!695846)))

(assert (=> b!1098532 e!695845))

(assert (= (and b!1098532 (is-Node!3255 (right!9439 (c!186402 (tokens!1368 (_2!6698 lt!371081)))))) b!1098892))

(assert (= b!1098893 b!1098894))

(assert (= (and b!1098532 (is-Leaf!5166 (right!9439 (c!186402 (tokens!1368 (_2!6698 lt!371081)))))) b!1098893))

(declare-fun tp!326826 () Bool)

(declare-fun tp!326827 () Bool)

(declare-fun b!1098895 () Bool)

(declare-fun e!695847 () Bool)

(assert (=> b!1098895 (= e!695847 (and (inv!13560 (left!9110 (left!9110 (c!186403 objs!8)))) tp!326827 (inv!13560 (right!9440 (left!9110 (c!186403 objs!8)))) tp!326826))))

(declare-fun b!1098897 () Bool)

(declare-fun e!695848 () Bool)

(declare-fun tp!326828 () Bool)

(assert (=> b!1098897 (= e!695848 tp!326828)))

(declare-fun b!1098896 () Bool)

(assert (=> b!1098896 (= e!695847 (and (inv!13566 (xs!5949 (left!9110 (c!186403 objs!8)))) e!695848))))

(assert (=> b!1098512 (= tp!326806 (and (inv!13560 (left!9110 (c!186403 objs!8))) e!695847))))

(assert (= (and b!1098512 (is-Node!3256 (left!9110 (c!186403 objs!8)))) b!1098895))

(assert (= b!1098896 b!1098897))

(assert (= (and b!1098512 (is-Leaf!5167 (left!9110 (c!186403 objs!8)))) b!1098896))

(declare-fun m!1254705 () Bool)

(assert (=> b!1098895 m!1254705))

(declare-fun m!1254707 () Bool)

(assert (=> b!1098895 m!1254707))

(declare-fun m!1254709 () Bool)

(assert (=> b!1098896 m!1254709))

(assert (=> b!1098512 m!1254345))

(declare-fun tp!326830 () Bool)

(declare-fun e!695849 () Bool)

(declare-fun tp!326829 () Bool)

(declare-fun b!1098898 () Bool)

(assert (=> b!1098898 (= e!695849 (and (inv!13560 (left!9110 (right!9440 (c!186403 objs!8)))) tp!326830 (inv!13560 (right!9440 (right!9440 (c!186403 objs!8)))) tp!326829))))

(declare-fun b!1098900 () Bool)

(declare-fun e!695850 () Bool)

(declare-fun tp!326831 () Bool)

(assert (=> b!1098900 (= e!695850 tp!326831)))

(declare-fun b!1098899 () Bool)

(assert (=> b!1098899 (= e!695849 (and (inv!13566 (xs!5949 (right!9440 (c!186403 objs!8)))) e!695850))))

(assert (=> b!1098512 (= tp!326805 (and (inv!13560 (right!9440 (c!186403 objs!8))) e!695849))))

(assert (= (and b!1098512 (is-Node!3256 (right!9440 (c!186403 objs!8)))) b!1098898))

(assert (= b!1098899 b!1098900))

(assert (= (and b!1098512 (is-Leaf!5167 (right!9440 (c!186403 objs!8)))) b!1098899))

(declare-fun m!1254711 () Bool)

(assert (=> b!1098898 m!1254711))

(declare-fun m!1254713 () Bool)

(assert (=> b!1098898 m!1254713))

(declare-fun m!1254715 () Bool)

(assert (=> b!1098899 m!1254715))

(assert (=> b!1098512 m!1254347))

(declare-fun b_lambda!31857 () Bool)

(assert (= b_lambda!31853 (or b!1098353 b_lambda!31857)))

(declare-fun bs!259247 () Bool)

(declare-fun d!310553 () Bool)

(assert (= bs!259247 (and d!310553 b!1098353)))

(assert (=> bs!259247 (= (dynLambda!4641 lambda!43115 (h!15967 (list!3800 objs!8))) (= (_1!6698 (h!15967 (list!3800 objs!8))) (_1!6698 lt!371081)))))

(assert (=> b!1098810 d!310553))

(declare-fun b_lambda!31859 () Bool)

(assert (= b_lambda!31855 (or b!1098353 b_lambda!31859)))

(declare-fun bs!259248 () Bool)

(declare-fun d!310555 () Bool)

(assert (= bs!259248 (and d!310555 b!1098353)))

(assert (=> bs!259248 (= (dynLambda!4641 lambda!43114 (h!15967 (t!103700 lt!371080))) (< (_1!6698 (h!15967 (t!103700 lt!371080))) (_1!6698 lt!371081)))))

(assert (=> b!1098816 d!310555))

(declare-fun b_lambda!31861 () Bool)

(assert (= b_lambda!31845 (or b!1098353 b_lambda!31861)))

(declare-fun bs!259249 () Bool)

(declare-fun d!310557 () Bool)

(assert (= bs!259249 (and d!310557 b!1098353)))

(assert (=> bs!259249 (= (dynLambda!4641 lambda!43114 (h!15967 (list!3800 objs!8))) (< (_1!6698 (h!15967 (list!3800 objs!8))) (_1!6698 lt!371081)))))

(assert (=> b!1098748 d!310557))

(declare-fun b_lambda!31863 () Bool)

(assert (= b_lambda!31839 (or start!94240 b_lambda!31863)))

(declare-fun bs!259250 () Bool)

(declare-fun d!310559 () Bool)

(assert (= bs!259250 (and d!310559 start!94240)))

(declare-fun usesJsonRules!0 (PrintableTokens!334) Bool)

(assert (=> bs!259250 (= (dynLambda!4641 lambda!43113 (h!15967 (list!3800 objs!8))) (usesJsonRules!0 (_2!6698 (h!15967 (list!3800 objs!8)))))))

(declare-fun m!1254717 () Bool)

(assert (=> bs!259250 m!1254717))

(assert (=> b!1098620 d!310559))

(declare-fun b_lambda!31865 () Bool)

(assert (= b_lambda!31847 (or b!1098353 b_lambda!31865)))

(assert (=> b!1098763 d!310429))

(declare-fun b_lambda!31867 () Bool)

(assert (= b_lambda!31841 (or b!1098353 b_lambda!31867)))

(assert (=> d!310501 d!310431))

(declare-fun b_lambda!31869 () Bool)

(assert (= b_lambda!31837 (or b!1098353 b_lambda!31869)))

(assert (=> b!1098615 d!310557))

(declare-fun b_lambda!31871 () Bool)

(assert (= b_lambda!31849 (or b!1098353 b_lambda!31871)))

(declare-fun bs!259251 () Bool)

(declare-fun d!310561 () Bool)

(assert (= bs!259251 (and d!310561 b!1098353)))

(assert (=> bs!259251 (= (dynLambda!4641 lambda!43114 (h!15967 lt!371141)) (< (_1!6698 (h!15967 lt!371141)) (_1!6698 lt!371081)))))

(assert (=> b!1098771 d!310561))

(declare-fun b_lambda!31873 () Bool)

(assert (= b_lambda!31835 (or b!1098353 b_lambda!31873)))

(declare-fun bs!259252 () Bool)

(declare-fun d!310563 () Bool)

(assert (= bs!259252 (and d!310563 b!1098353)))

(assert (=> bs!259252 (= (dynLambda!4641 lambda!43116 (h!15967 (list!3800 objs!8))) (> (_1!6698 (h!15967 (list!3800 objs!8))) (_1!6698 lt!371081)))))

(assert (=> b!1098607 d!310563))

(declare-fun b_lambda!31875 () Bool)

(assert (= b_lambda!31851 (or b!1098353 b_lambda!31875)))

(assert (=> d!310529 d!310431))

(declare-fun b_lambda!31877 () Bool)

(assert (= b_lambda!31843 (or b!1098353 b_lambda!31877)))

(declare-fun bs!259253 () Bool)

(declare-fun d!310565 () Bool)

(assert (= bs!259253 (and d!310565 b!1098353)))

(assert (=> bs!259253 (= (dynLambda!4641 lambda!43114 (h!15967 (list!3800 lt!371078))) (< (_1!6698 (h!15967 (list!3800 lt!371078))) (_1!6698 lt!371081)))))

(assert (=> b!1098733 d!310565))

(push 1)

(assert (not b!1098852))

(assert (not b!1098727))

(assert (not b!1098694))

(assert (not b!1098714))

(assert (not b!1098873))

(assert (not b!1098613))

(assert (not b!1098832))

(assert (not b!1098744))

(assert (not b!1098827))

(assert (not b!1098638))

(assert (not b!1098738))

(assert (not d!310533))

(assert (not b!1098822))

(assert (not b!1098749))

(assert (not b!1098752))

(assert (not b_lambda!31869))

(assert (not bm!80386))

(assert (not d!310507))

(assert (not b!1098742))

(assert (not b!1098757))

(assert (not d!310519))

(assert (not b!1098896))

(assert (not b!1098665))

(assert (not b!1098693))

(assert (not d!310463))

(assert (not b!1098857))

(assert (not b!1098696))

(assert (not b!1098892))

(assert (not b!1098729))

(assert (not b_lambda!31871))

(assert (not d!310513))

(assert (not b!1098723))

(assert (not b!1098768))

(assert (not d!310481))

(assert (not b!1098765))

(assert (not b!1098808))

(assert (not b!1098713))

(assert (not b!1098876))

(assert (not b!1098512))

(assert (not d!310473))

(assert (not b!1098812))

(assert (not b!1098740))

(assert (not d!310467))

(assert (not b!1098759))

(assert (not b!1098666))

(assert (not b!1098621))

(assert (not b!1098779))

(assert (not b!1098647))

(assert (not b!1098611))

(assert (not b_lambda!31823))

(assert (not b_lambda!31877))

(assert (not b!1098899))

(assert (not d!310499))

(assert (not b!1098799))

(assert (not b!1098747))

(assert (not b!1098804))

(assert (not b!1098732))

(assert (not b!1098721))

(assert (not b!1098871))

(assert (not b!1098631))

(assert (not b!1098824))

(assert (not b!1098845))

(assert (not b!1098772))

(assert (not b!1098889))

(assert (not b_lambda!31867))

(assert (not b!1098885))

(assert (not b!1098780))

(assert (not b!1098654))

(assert (not b!1098722))

(assert (not d!310511))

(assert (not b_lambda!31863))

(assert (not b!1098806))

(assert (not b!1098632))

(assert (not b!1098698))

(assert (not b!1098603))

(assert (not b!1098599))

(assert (not b!1098855))

(assert (not b!1098828))

(assert (not b!1098695))

(assert (not b!1098849))

(assert (not b!1098739))

(assert (not b_lambda!31821))

(assert (not b_lambda!31857))

(assert (not b!1098609))

(assert (not b_lambda!31865))

(assert (not d!310541))

(assert (not b!1098802))

(assert (not b!1098883))

(assert (not b!1098755))

(assert (not b_lambda!31875))

(assert (not bm!80385))

(assert (not b!1098719))

(assert (not b!1098697))

(assert (not b!1098762))

(assert (not b!1098758))

(assert (not b!1098781))

(assert (not b!1098831))

(assert (not b_lambda!31825))

(assert (not b_lambda!31861))

(assert (not b!1098724))

(assert (not b!1098872))

(assert (not b!1098753))

(assert (not b!1098734))

(assert (not b!1098882))

(assert (not b!1098834))

(assert (not b!1098880))

(assert (not b!1098886))

(assert (not bm!80381))

(assert (not d!310469))

(assert (not b!1098833))

(assert (not d!310487))

(assert (not b!1098678))

(assert (not b!1098751))

(assert (not b!1098725))

(assert (not d!310517))

(assert (not b!1098633))

(assert (not b!1098895))

(assert (not b!1098677))

(assert (not b!1098720))

(assert (not d!310483))

(assert (not b!1098854))

(assert (not d!310543))

(assert (not b!1098605))

(assert (not b!1098870))

(assert (not b!1098900))

(assert (not bm!80384))

(assert (not b!1098770))

(assert (not b!1098797))

(assert (not d!310531))

(assert (not d!310475))

(assert (not b!1098891))

(assert (not b!1098898))

(assert (not b!1098897))

(assert (not b!1098737))

(assert (not b!1098741))

(assert (not b!1098736))

(assert (not b!1098726))

(assert (not b!1098735))

(assert (not bm!80380))

(assert (not bs!259250))

(assert (not b!1098767))

(assert (not b!1098664))

(assert (not b_lambda!31873))

(assert (not d!310537))

(assert (not d!310479))

(assert (not d!310539))

(assert (not b!1098796))

(assert (not b!1098894))

(assert (not b!1098830))

(assert (not b!1098716))

(assert (not d!310515))

(assert (not b!1098764))

(assert (not b!1098858))

(assert (not b!1098829))

(assert (not b!1098601))

(assert (not d!310495))

(assert (not b_lambda!31859))

(assert (not d!310485))

(assert (not b!1098680))

(assert (not b!1098814))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


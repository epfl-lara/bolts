; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94418 () Bool)

(assert start!94418)

(declare-fun bs!259304 () Bool)

(declare-fun b!1099611 () Bool)

(assert (= bs!259304 (and b!1099611 start!94418)))

(declare-fun lambda!43234 () Int)

(declare-fun lambda!43233 () Int)

(assert (=> bs!259304 (not (= lambda!43234 lambda!43233))))

(declare-fun b!1099619 () Bool)

(declare-fun e!696348 () Bool)

(assert (=> b!1099619 (= e!696348 true)))

(declare-fun b!1099618 () Bool)

(declare-fun e!696347 () Bool)

(assert (=> b!1099618 (= e!696347 e!696348)))

(assert (=> b!1099611 e!696347))

(assert (= b!1099618 b!1099619))

(assert (= b!1099611 b!1099618))

(declare-fun lambda!43235 () Int)

(assert (=> bs!259304 (not (= lambda!43235 lambda!43233))))

(assert (=> b!1099611 (not (= lambda!43235 lambda!43234))))

(declare-fun b!1099621 () Bool)

(declare-fun e!696350 () Bool)

(assert (=> b!1099621 (= e!696350 true)))

(declare-fun b!1099620 () Bool)

(declare-fun e!696349 () Bool)

(assert (=> b!1099620 (= e!696349 e!696350)))

(assert (=> b!1099611 e!696349))

(assert (= b!1099620 b!1099621))

(assert (= b!1099611 b!1099620))

(declare-fun lambda!43236 () Int)

(assert (=> bs!259304 (not (= lambda!43236 lambda!43233))))

(assert (=> b!1099611 (not (= lambda!43236 lambda!43234))))

(assert (=> b!1099611 (not (= lambda!43236 lambda!43235))))

(declare-fun b!1099623 () Bool)

(declare-fun e!696352 () Bool)

(assert (=> b!1099623 (= e!696352 true)))

(declare-fun b!1099622 () Bool)

(declare-fun e!696351 () Bool)

(assert (=> b!1099622 (= e!696351 e!696352)))

(assert (=> b!1099611 e!696351))

(assert (= b!1099622 b!1099623))

(assert (= b!1099611 b!1099622))

(declare-fun b!1099595 () Bool)

(declare-fun e!696340 () Bool)

(declare-fun e!696338 () Bool)

(assert (=> b!1099595 (= e!696340 (not e!696338))))

(declare-fun res!487861 () Bool)

(assert (=> b!1099595 (=> res!487861 e!696338)))

(declare-datatypes ((List!10599 0))(
  ( (Nil!10583) (Cons!10583 (h!15984 (_ BitVec 16)) (t!103831 List!10599)) )
))
(declare-datatypes ((TokenValue!1880 0))(
  ( (FloatLiteralValue!3760 (text!13605 List!10599)) (TokenValueExt!1879 (__x!7462 Int)) (Broken!9400 (value!59626 List!10599)) (Object!1895) (End!1880) (Def!1880) (Underscore!1880) (Match!1880) (Else!1880) (Error!1880) (Case!1880) (If!1880) (Extends!1880) (Abstract!1880) (Class!1880) (Val!1880) (DelimiterValue!3760 (del!1940 List!10599)) (KeywordValue!1886 (value!59627 List!10599)) (CommentValue!3760 (value!59628 List!10599)) (WhitespaceValue!3760 (value!59629 List!10599)) (IndentationValue!1880 (value!59630 List!10599)) (String!12969) (Int32!1880) (Broken!9401 (value!59631 List!10599)) (Boolean!1881) (Unit!16192) (OperatorValue!1883 (op!1940 List!10599)) (IdentifierValue!3760 (value!59632 List!10599)) (IdentifierValue!3761 (value!59633 List!10599)) (WhitespaceValue!3761 (value!59634 List!10599)) (True!3760) (False!3760) (Broken!9402 (value!59635 List!10599)) (Broken!9403 (value!59636 List!10599)) (True!3761) (RightBrace!1880) (RightBracket!1880) (Colon!1880) (Null!1880) (Comma!1880) (LeftBracket!1880) (False!3761) (LeftBrace!1880) (ImaginaryLiteralValue!1880 (text!13606 List!10599)) (StringLiteralValue!5640 (value!59637 List!10599)) (EOFValue!1880 (value!59638 List!10599)) (IdentValue!1880 (value!59639 List!10599)) (DelimiterValue!3761 (value!59640 List!10599)) (DedentValue!1880 (value!59641 List!10599)) (NewLineValue!1880 (value!59642 List!10599)) (IntegerValue!5640 (value!59643 (_ BitVec 32)) (text!13607 List!10599)) (IntegerValue!5641 (value!59644 Int) (text!13608 List!10599)) (Times!1880) (Or!1880) (Equal!1880) (Minus!1880) (Broken!9404 (value!59645 List!10599)) (And!1880) (Div!1880) (LessEqual!1880) (Mod!1880) (Concat!4963) (Not!1880) (Plus!1880) (SpaceValue!1880 (value!59646 List!10599)) (IntegerValue!5642 (value!59647 Int) (text!13609 List!10599)) (StringLiteralValue!5641 (text!13610 List!10599)) (FloatLiteralValue!3761 (text!13611 List!10599)) (BytesLiteralValue!1880 (value!59648 List!10599)) (CommentValue!3761 (value!59649 List!10599)) (StringLiteralValue!5642 (value!59650 List!10599)) (ErrorTokenValue!1880 (msg!1941 List!10599)) )
))
(declare-datatypes ((Regex!3083 0))(
  ( (ElementMatch!3083 (c!186648 (_ BitVec 16))) (Concat!4964 (regOne!6678 Regex!3083) (regTwo!6678 Regex!3083)) (EmptyExpr!3083) (Star!3083 (reg!3412 Regex!3083)) (EmptyLang!3083) (Union!3083 (regOne!6679 Regex!3083) (regTwo!6679 Regex!3083)) )
))
(declare-datatypes ((String!12970 0))(
  ( (String!12971 (value!59651 String)) )
))
(declare-datatypes ((IArray!6543 0))(
  ( (IArray!6544 (innerList!3329 List!10599)) )
))
(declare-datatypes ((Conc!3269 0))(
  ( (Node!3269 (left!9135 Conc!3269) (right!9465 Conc!3269) (csize!6768 Int) (cheight!3480 Int)) (Leaf!5182 (xs!5962 IArray!6543) (csize!6769 Int)) (Empty!3269) )
))
(declare-datatypes ((BalanceConc!6552 0))(
  ( (BalanceConc!6553 (c!186649 Conc!3269)) )
))
(declare-datatypes ((TokenValueInjection!3460 0))(
  ( (TokenValueInjection!3461 (toValue!2891 Int) (toChars!2750 Int)) )
))
(declare-datatypes ((Rule!3428 0))(
  ( (Rule!3429 (regex!1814 Regex!3083) (tag!2076 String!12970) (isSeparator!1814 Bool) (transformation!1814 TokenValueInjection!3460)) )
))
(declare-datatypes ((Token!3294 0))(
  ( (Token!3295 (value!59652 TokenValue!1880) (rule!3237 Rule!3428) (size!8210 Int) (originalCharacters!2370 List!10599)) )
))
(declare-datatypes ((List!10600 0))(
  ( (Nil!10584) (Cons!10584 (h!15985 Token!3294) (t!103832 List!10600)) )
))
(declare-datatypes ((IArray!6545 0))(
  ( (IArray!6546 (innerList!3330 List!10600)) )
))
(declare-datatypes ((Conc!3270 0))(
  ( (Node!3270 (left!9136 Conc!3270) (right!9466 Conc!3270) (csize!6770 Int) (cheight!3481 Int)) (Leaf!5183 (xs!5963 IArray!6545) (csize!6771 Int)) (Empty!3270) )
))
(declare-datatypes ((List!10601 0))(
  ( (Nil!10585) (Cons!10585 (h!15986 Rule!3428) (t!103833 List!10601)) )
))
(declare-datatypes ((BalanceConc!6554 0))(
  ( (BalanceConc!6555 (c!186650 Conc!3270)) )
))
(declare-datatypes ((PrintableTokens!344 0))(
  ( (PrintableTokens!345 (rules!9101 List!10601) (tokens!1373 BalanceConc!6554)) )
))
(declare-datatypes ((tuple2!11754 0))(
  ( (tuple2!11755 (_1!6703 Int) (_2!6703 PrintableTokens!344)) )
))
(declare-datatypes ((List!10602 0))(
  ( (Nil!10586) (Cons!10586 (h!15987 tuple2!11754) (t!103834 List!10602)) )
))
(declare-datatypes ((IArray!6547 0))(
  ( (IArray!6548 (innerList!3331 List!10602)) )
))
(declare-datatypes ((Conc!3271 0))(
  ( (Node!3271 (left!9137 Conc!3271) (right!9467 Conc!3271) (csize!6772 Int) (cheight!3482 Int)) (Leaf!5184 (xs!5964 IArray!6547) (csize!6773 Int)) (Empty!3271) )
))
(declare-datatypes ((BalanceConc!6556 0))(
  ( (BalanceConc!6557 (c!186651 Conc!3271)) )
))
(declare-fun lt!371571 () BalanceConc!6556)

(declare-fun lt!371556 () Int)

(declare-fun size!8211 (BalanceConc!6556) Int)

(assert (=> b!1099595 (= res!487861 (>= (size!8211 lt!371571) lt!371556))))

(declare-fun e!696342 () Bool)

(assert (=> b!1099595 e!696342))

(declare-fun res!487863 () Bool)

(assert (=> b!1099595 (=> res!487863 e!696342)))

(declare-fun lt!371566 () Bool)

(assert (=> b!1099595 (= res!487863 lt!371566)))

(declare-fun lt!371564 () List!10602)

(declare-fun isEmpty!6688 (List!10602) Bool)

(assert (=> b!1099595 (= lt!371566 (isEmpty!6688 lt!371564))))

(declare-datatypes ((Unit!16193 0))(
  ( (Unit!16194) )
))
(declare-fun lt!371558 () Unit!16193)

(declare-fun lemmaNotForallFilterShorter!53 (List!10602 Int) Unit!16193)

(assert (=> b!1099595 (= lt!371558 (lemmaNotForallFilterShorter!53 lt!371564 lambda!43234))))

(declare-fun objs!8 () BalanceConc!6556)

(declare-fun list!3811 (BalanceConc!6556) List!10602)

(assert (=> b!1099595 (= lt!371564 (list!3811 objs!8))))

(declare-fun lt!371562 () Unit!16193)

(declare-fun e!696330 () Unit!16193)

(assert (=> b!1099595 (= lt!371562 e!696330)))

(declare-fun c!186644 () Bool)

(declare-fun forall!2421 (BalanceConc!6556 Int) Bool)

(assert (=> b!1099595 (= c!186644 (forall!2421 objs!8 lambda!43234))))

(declare-fun b!1099596 () Bool)

(declare-fun e!696341 () Unit!16193)

(declare-fun Unit!16195 () Unit!16193)

(assert (=> b!1099596 (= e!696341 Unit!16195)))

(declare-fun b!1099597 () Bool)

(declare-fun size!8212 (List!10602) Int)

(declare-fun filter!324 (List!10602 Int) List!10602)

(assert (=> b!1099597 (= e!696342 (< (size!8212 (filter!324 lt!371564 lambda!43234)) (size!8212 lt!371564)))))

(declare-fun b!1099598 () Bool)

(declare-fun e!696335 () Unit!16193)

(declare-fun Unit!16196 () Unit!16193)

(assert (=> b!1099598 (= e!696335 Unit!16196)))

(declare-fun b!1099599 () Bool)

(declare-fun e!696332 () Bool)

(assert (=> b!1099599 (= e!696332 (< (size!8212 (filter!324 lt!371564 lambda!43236)) (size!8212 lt!371564)))))

(declare-fun b!1099600 () Bool)

(declare-fun err!2593 () Unit!16193)

(assert (=> b!1099600 (= e!696335 err!2593)))

(declare-fun lt!371569 () Unit!16193)

(declare-fun lt!371560 () tuple2!11754)

(declare-fun forallContained!514 (List!10602 Int tuple2!11754) Unit!16193)

(assert (=> b!1099600 (= lt!371569 (forallContained!514 (list!3811 lt!371571) lambda!43234 lt!371560))))

(assert (=> b!1099600 true))

(declare-fun b!1099601 () Bool)

(declare-fun e!696337 () Unit!16193)

(declare-fun Unit!16197 () Unit!16193)

(assert (=> b!1099601 (= e!696337 Unit!16197)))

(declare-fun b!1099602 () Bool)

(declare-fun e!696334 () Bool)

(declare-fun lt!371567 () BalanceConc!6556)

(assert (=> b!1099602 (= e!696334 (< (size!8211 lt!371567) lt!371556))))

(assert (=> b!1099602 e!696332))

(declare-fun res!487858 () Bool)

(assert (=> b!1099602 (=> res!487858 e!696332)))

(assert (=> b!1099602 (= res!487858 lt!371566)))

(declare-fun lt!371559 () Unit!16193)

(assert (=> b!1099602 (= lt!371559 (lemmaNotForallFilterShorter!53 lt!371564 lambda!43236))))

(declare-fun lt!371563 () Unit!16193)

(assert (=> b!1099602 (= lt!371563 e!696337)))

(declare-fun c!186645 () Bool)

(assert (=> b!1099602 (= c!186645 (forall!2421 objs!8 lambda!43236))))

(declare-fun b!1099603 () Bool)

(assert (=> b!1099603 (= e!696338 e!696334)))

(declare-fun res!487857 () Bool)

(assert (=> b!1099603 (=> res!487857 e!696334)))

(declare-fun lt!371565 () Bool)

(assert (=> b!1099603 (= res!487857 lt!371565)))

(declare-fun lt!371555 () Unit!16193)

(assert (=> b!1099603 (= lt!371555 e!696341)))

(declare-fun c!186646 () Bool)

(assert (=> b!1099603 (= c!186646 lt!371565)))

(declare-fun contains!1845 (BalanceConc!6556 tuple2!11754) Bool)

(assert (=> b!1099603 (= lt!371565 (contains!1845 lt!371567 lt!371560))))

(declare-fun res!487856 () Bool)

(declare-fun e!696339 () Bool)

(assert (=> start!94418 (=> (not res!487856) (not e!696339))))

(assert (=> start!94418 (= res!487856 (forall!2421 objs!8 lambda!43233))))

(assert (=> start!94418 e!696339))

(declare-fun e!696333 () Bool)

(declare-fun inv!13590 (BalanceConc!6556) Bool)

(assert (=> start!94418 (and (inv!13590 objs!8) e!696333)))

(declare-fun b!1099604 () Bool)

(declare-fun Unit!16198 () Unit!16193)

(assert (=> b!1099604 (= e!696330 Unit!16198)))

(declare-fun b!1099605 () Bool)

(declare-fun err!2590 () Unit!16193)

(assert (=> b!1099605 (= e!696341 err!2590)))

(declare-fun lt!371573 () Unit!16193)

(assert (=> b!1099605 (= lt!371573 (forallContained!514 (list!3811 lt!371567) lambda!43236 lt!371560))))

(assert (=> b!1099605 true))

(declare-fun b!1099606 () Bool)

(declare-fun err!2592 () Unit!16193)

(assert (=> b!1099606 (= e!696337 err!2592)))

(declare-fun lt!371561 () Unit!16193)

(assert (=> b!1099606 (= lt!371561 (forallContained!514 lt!371564 lambda!43236 lt!371560))))

(assert (=> b!1099606 true))

(declare-fun b!1099607 () Bool)

(declare-fun e!696336 () Bool)

(assert (=> b!1099607 (= e!696336 e!696340)))

(declare-fun res!487862 () Bool)

(assert (=> b!1099607 (=> (not res!487862) (not e!696340))))

(declare-fun lt!371568 () Bool)

(assert (=> b!1099607 (= res!487862 (not lt!371568))))

(declare-fun lt!371557 () Unit!16193)

(assert (=> b!1099607 (= lt!371557 e!696335)))

(declare-fun c!186647 () Bool)

(assert (=> b!1099607 (= c!186647 lt!371568)))

(assert (=> b!1099607 (= lt!371568 (contains!1845 lt!371571 lt!371560))))

(declare-fun b!1099608 () Bool)

(declare-fun tp!326876 () Bool)

(declare-fun inv!13591 (Conc!3271) Bool)

(assert (=> b!1099608 (= e!696333 (and (inv!13591 (c!186651 objs!8)) tp!326876))))

(declare-fun b!1099609 () Bool)

(declare-fun e!696331 () Bool)

(assert (=> b!1099609 (= e!696339 e!696331)))

(declare-fun res!487860 () Bool)

(assert (=> b!1099609 (=> (not res!487860) (not e!696331))))

(assert (=> b!1099609 (= res!487860 (> lt!371556 1))))

(assert (=> b!1099609 (= lt!371556 (size!8211 objs!8))))

(declare-fun b!1099610 () Bool)

(declare-fun err!2591 () Unit!16193)

(assert (=> b!1099610 (= e!696330 err!2591)))

(declare-fun lt!371572 () Unit!16193)

(assert (=> b!1099610 (= lt!371572 (forallContained!514 (list!3811 objs!8) lambda!43234 lt!371560))))

(assert (=> b!1099610 true))

(assert (=> b!1099611 (= e!696331 e!696336)))

(declare-fun res!487859 () Bool)

(assert (=> b!1099611 (=> (not res!487859) (not e!696336))))

(assert (=> b!1099611 (= res!487859 (contains!1845 objs!8 lt!371560))))

(declare-fun filter!325 (BalanceConc!6556 Int) BalanceConc!6556)

(assert (=> b!1099611 (= lt!371567 (filter!325 objs!8 lambda!43236))))

(declare-fun lt!371570 () BalanceConc!6556)

(assert (=> b!1099611 (= lt!371570 (filter!325 objs!8 lambda!43235))))

(assert (=> b!1099611 (= lt!371571 (filter!325 objs!8 lambda!43234))))

(declare-fun apply!2123 (BalanceConc!6556 Int) tuple2!11754)

(assert (=> b!1099611 (= lt!371560 (apply!2123 objs!8 (ite (>= lt!371556 0) (div lt!371556 2) (- (div (- lt!371556) 2)))))))

(assert (= (and start!94418 res!487856) b!1099609))

(assert (= (and b!1099609 res!487860) b!1099611))

(assert (= (and b!1099611 res!487859) b!1099607))

(assert (= (and b!1099607 c!186647) b!1099600))

(assert (= (and b!1099607 (not c!186647)) b!1099598))

(assert (= (and b!1099607 res!487862) b!1099595))

(assert (= (and b!1099595 c!186644) b!1099610))

(assert (= (and b!1099595 (not c!186644)) b!1099604))

(assert (= (and b!1099595 (not res!487863)) b!1099597))

(assert (= (and b!1099595 (not res!487861)) b!1099603))

(assert (= (and b!1099603 c!186646) b!1099605))

(assert (= (and b!1099603 (not c!186646)) b!1099596))

(assert (= (and b!1099603 (not res!487857)) b!1099602))

(assert (= (and b!1099602 c!186645) b!1099606))

(assert (= (and b!1099602 (not c!186645)) b!1099601))

(assert (= (and b!1099602 (not res!487858)) b!1099599))

(assert (= start!94418 b!1099608))

(declare-fun m!1255395 () Bool)

(assert (=> b!1099609 m!1255395))

(declare-fun m!1255397 () Bool)

(assert (=> b!1099597 m!1255397))

(assert (=> b!1099597 m!1255397))

(declare-fun m!1255399 () Bool)

(assert (=> b!1099597 m!1255399))

(declare-fun m!1255401 () Bool)

(assert (=> b!1099597 m!1255401))

(declare-fun m!1255403 () Bool)

(assert (=> b!1099600 m!1255403))

(assert (=> b!1099600 m!1255403))

(declare-fun m!1255405 () Bool)

(assert (=> b!1099600 m!1255405))

(declare-fun m!1255407 () Bool)

(assert (=> b!1099603 m!1255407))

(declare-fun m!1255409 () Bool)

(assert (=> b!1099611 m!1255409))

(declare-fun m!1255411 () Bool)

(assert (=> b!1099611 m!1255411))

(declare-fun m!1255413 () Bool)

(assert (=> b!1099611 m!1255413))

(declare-fun m!1255415 () Bool)

(assert (=> b!1099611 m!1255415))

(declare-fun m!1255417 () Bool)

(assert (=> b!1099611 m!1255417))

(declare-fun m!1255419 () Bool)

(assert (=> start!94418 m!1255419))

(declare-fun m!1255421 () Bool)

(assert (=> start!94418 m!1255421))

(declare-fun m!1255423 () Bool)

(assert (=> b!1099605 m!1255423))

(assert (=> b!1099605 m!1255423))

(declare-fun m!1255425 () Bool)

(assert (=> b!1099605 m!1255425))

(declare-fun m!1255427 () Bool)

(assert (=> b!1099607 m!1255427))

(declare-fun m!1255429 () Bool)

(assert (=> b!1099608 m!1255429))

(declare-fun m!1255431 () Bool)

(assert (=> b!1099606 m!1255431))

(declare-fun m!1255433 () Bool)

(assert (=> b!1099599 m!1255433))

(assert (=> b!1099599 m!1255433))

(declare-fun m!1255435 () Bool)

(assert (=> b!1099599 m!1255435))

(assert (=> b!1099599 m!1255401))

(declare-fun m!1255437 () Bool)

(assert (=> b!1099610 m!1255437))

(assert (=> b!1099610 m!1255437))

(declare-fun m!1255439 () Bool)

(assert (=> b!1099610 m!1255439))

(assert (=> b!1099595 m!1255437))

(declare-fun m!1255441 () Bool)

(assert (=> b!1099595 m!1255441))

(declare-fun m!1255443 () Bool)

(assert (=> b!1099595 m!1255443))

(declare-fun m!1255445 () Bool)

(assert (=> b!1099595 m!1255445))

(declare-fun m!1255447 () Bool)

(assert (=> b!1099595 m!1255447))

(declare-fun m!1255449 () Bool)

(assert (=> b!1099602 m!1255449))

(declare-fun m!1255451 () Bool)

(assert (=> b!1099602 m!1255451))

(declare-fun m!1255453 () Bool)

(assert (=> b!1099602 m!1255453))

(check-sat (not b!1099602) (not b!1099623) (not b!1099597) (not b!1099600) (not b!1099610) (not b!1099622) (not b!1099609) (not b!1099620) (not b!1099608) (not b!1099595) (not b!1099605) (not b!1099621) (not b!1099599) (not b!1099607) (not start!94418) (not b!1099619) (not b!1099606) (not b!1099618) (not b!1099603) (not b!1099611))
(check-sat)
(get-model)

(declare-fun d!310791 () Bool)

(declare-fun lt!371582 () Int)

(assert (=> d!310791 (= lt!371582 (size!8212 (list!3811 objs!8)))))

(declare-fun size!8214 (Conc!3271) Int)

(assert (=> d!310791 (= lt!371582 (size!8214 (c!186651 objs!8)))))

(assert (=> d!310791 (= (size!8211 objs!8) lt!371582)))

(declare-fun bs!259306 () Bool)

(assert (= bs!259306 d!310791))

(assert (=> bs!259306 m!1255437))

(assert (=> bs!259306 m!1255437))

(declare-fun m!1255473 () Bool)

(assert (=> bs!259306 m!1255473))

(declare-fun m!1255475 () Bool)

(assert (=> bs!259306 m!1255475))

(assert (=> b!1099609 d!310791))

(declare-fun d!310793 () Bool)

(declare-fun c!186655 () Bool)

(get-info :version)

(assert (=> d!310793 (= c!186655 ((_ is Node!3271) (c!186651 objs!8)))))

(declare-fun e!696367 () Bool)

(assert (=> d!310793 (= (inv!13591 (c!186651 objs!8)) e!696367)))

(declare-fun b!1099640 () Bool)

(declare-fun inv!13594 (Conc!3271) Bool)

(assert (=> b!1099640 (= e!696367 (inv!13594 (c!186651 objs!8)))))

(declare-fun b!1099641 () Bool)

(declare-fun e!696368 () Bool)

(assert (=> b!1099641 (= e!696367 e!696368)))

(declare-fun res!487876 () Bool)

(assert (=> b!1099641 (= res!487876 (not ((_ is Leaf!5184) (c!186651 objs!8))))))

(assert (=> b!1099641 (=> res!487876 e!696368)))

(declare-fun b!1099642 () Bool)

(declare-fun inv!13595 (Conc!3271) Bool)

(assert (=> b!1099642 (= e!696368 (inv!13595 (c!186651 objs!8)))))

(assert (= (and d!310793 c!186655) b!1099640))

(assert (= (and d!310793 (not c!186655)) b!1099641))

(assert (= (and b!1099641 (not res!487876)) b!1099642))

(declare-fun m!1255489 () Bool)

(assert (=> b!1099640 m!1255489))

(declare-fun m!1255491 () Bool)

(assert (=> b!1099642 m!1255491))

(assert (=> b!1099608 d!310793))

(declare-fun d!310799 () Bool)

(declare-fun lt!371600 () Int)

(assert (=> d!310799 (>= lt!371600 0)))

(declare-fun e!696374 () Int)

(assert (=> d!310799 (= lt!371600 e!696374)))

(declare-fun c!186658 () Bool)

(assert (=> d!310799 (= c!186658 ((_ is Nil!10586) (filter!324 lt!371564 lambda!43234)))))

(assert (=> d!310799 (= (size!8212 (filter!324 lt!371564 lambda!43234)) lt!371600)))

(declare-fun b!1099650 () Bool)

(assert (=> b!1099650 (= e!696374 0)))

(declare-fun b!1099651 () Bool)

(assert (=> b!1099651 (= e!696374 (+ 1 (size!8212 (t!103834 (filter!324 lt!371564 lambda!43234)))))))

(assert (= (and d!310799 c!186658) b!1099650))

(assert (= (and d!310799 (not c!186658)) b!1099651))

(declare-fun m!1255529 () Bool)

(assert (=> b!1099651 m!1255529))

(assert (=> b!1099597 d!310799))

(declare-fun b!1099683 () Bool)

(declare-fun e!696395 () List!10602)

(declare-fun call!80407 () List!10602)

(assert (=> b!1099683 (= e!696395 call!80407)))

(declare-fun b!1099684 () Bool)

(declare-fun e!696394 () List!10602)

(assert (=> b!1099684 (= e!696394 e!696395)))

(declare-fun c!186669 () Bool)

(declare-fun dynLambda!4658 (Int tuple2!11754) Bool)

(assert (=> b!1099684 (= c!186669 (dynLambda!4658 lambda!43234 (h!15987 lt!371564)))))

(declare-fun bm!80402 () Bool)

(assert (=> bm!80402 (= call!80407 (filter!324 (t!103834 lt!371564) lambda!43234))))

(declare-fun b!1099686 () Bool)

(assert (=> b!1099686 (= e!696395 (Cons!10586 (h!15987 lt!371564) call!80407))))

(declare-fun b!1099687 () Bool)

(declare-fun e!696396 () Bool)

(declare-fun lt!371613 () List!10602)

(declare-fun forall!2424 (List!10602 Int) Bool)

(assert (=> b!1099687 (= e!696396 (forall!2424 lt!371613 lambda!43234))))

(declare-fun b!1099688 () Bool)

(declare-fun res!487891 () Bool)

(assert (=> b!1099688 (=> (not res!487891) (not e!696396))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1532 (List!10602) (InoxSet tuple2!11754))

(assert (=> b!1099688 (= res!487891 (= ((_ map implies) (content!1532 lt!371613) (content!1532 lt!371564)) ((as const (InoxSet tuple2!11754)) true)))))

(declare-fun b!1099685 () Bool)

(assert (=> b!1099685 (= e!696394 Nil!10586)))

(declare-fun d!310817 () Bool)

(assert (=> d!310817 e!696396))

(declare-fun res!487892 () Bool)

(assert (=> d!310817 (=> (not res!487892) (not e!696396))))

(assert (=> d!310817 (= res!487892 (<= (size!8212 lt!371613) (size!8212 lt!371564)))))

(assert (=> d!310817 (= lt!371613 e!696394)))

(declare-fun c!186670 () Bool)

(assert (=> d!310817 (= c!186670 ((_ is Nil!10586) lt!371564))))

(assert (=> d!310817 (= (filter!324 lt!371564 lambda!43234) lt!371613)))

(assert (= (and d!310817 c!186670) b!1099685))

(assert (= (and d!310817 (not c!186670)) b!1099684))

(assert (= (and b!1099684 c!186669) b!1099686))

(assert (= (and b!1099684 (not c!186669)) b!1099683))

(assert (= (or b!1099686 b!1099683) bm!80402))

(assert (= (and d!310817 res!487892) b!1099688))

(assert (= (and b!1099688 res!487891) b!1099687))

(declare-fun b_lambda!31963 () Bool)

(assert (=> (not b_lambda!31963) (not b!1099684)))

(declare-fun m!1255551 () Bool)

(assert (=> b!1099684 m!1255551))

(declare-fun m!1255553 () Bool)

(assert (=> d!310817 m!1255553))

(assert (=> d!310817 m!1255401))

(declare-fun m!1255555 () Bool)

(assert (=> b!1099687 m!1255555))

(declare-fun m!1255557 () Bool)

(assert (=> b!1099688 m!1255557))

(declare-fun m!1255559 () Bool)

(assert (=> b!1099688 m!1255559))

(declare-fun m!1255561 () Bool)

(assert (=> bm!80402 m!1255561))

(assert (=> b!1099597 d!310817))

(declare-fun d!310831 () Bool)

(declare-fun lt!371616 () Int)

(assert (=> d!310831 (>= lt!371616 0)))

(declare-fun e!696403 () Int)

(assert (=> d!310831 (= lt!371616 e!696403)))

(declare-fun c!186675 () Bool)

(assert (=> d!310831 (= c!186675 ((_ is Nil!10586) lt!371564))))

(assert (=> d!310831 (= (size!8212 lt!371564) lt!371616)))

(declare-fun b!1099701 () Bool)

(assert (=> b!1099701 (= e!696403 0)))

(declare-fun b!1099702 () Bool)

(assert (=> b!1099702 (= e!696403 (+ 1 (size!8212 (t!103834 lt!371564))))))

(assert (= (and d!310831 c!186675) b!1099701))

(assert (= (and d!310831 (not c!186675)) b!1099702))

(declare-fun m!1255563 () Bool)

(assert (=> b!1099702 m!1255563))

(assert (=> b!1099597 d!310831))

(declare-fun d!310833 () Bool)

(declare-fun lt!371625 () Bool)

(declare-fun contains!1848 (List!10602 tuple2!11754) Bool)

(assert (=> d!310833 (= lt!371625 (contains!1848 (list!3811 lt!371571) lt!371560))))

(declare-fun contains!1849 (Conc!3271 tuple2!11754) Bool)

(assert (=> d!310833 (= lt!371625 (contains!1849 (c!186651 lt!371571) lt!371560))))

(assert (=> d!310833 (= (contains!1845 lt!371571 lt!371560) lt!371625)))

(declare-fun bs!259319 () Bool)

(assert (= bs!259319 d!310833))

(assert (=> bs!259319 m!1255403))

(assert (=> bs!259319 m!1255403))

(declare-fun m!1255597 () Bool)

(assert (=> bs!259319 m!1255597))

(declare-fun m!1255599 () Bool)

(assert (=> bs!259319 m!1255599))

(assert (=> b!1099607 d!310833))

(declare-fun d!310853 () Bool)

(assert (=> d!310853 (dynLambda!4658 lambda!43234 lt!371560)))

(declare-fun lt!371631 () Unit!16193)

(declare-fun choose!7091 (List!10602 Int tuple2!11754) Unit!16193)

(assert (=> d!310853 (= lt!371631 (choose!7091 (list!3811 lt!371571) lambda!43234 lt!371560))))

(declare-fun e!696437 () Bool)

(assert (=> d!310853 e!696437))

(declare-fun res!487904 () Bool)

(assert (=> d!310853 (=> (not res!487904) (not e!696437))))

(assert (=> d!310853 (= res!487904 (forall!2424 (list!3811 lt!371571) lambda!43234))))

(assert (=> d!310853 (= (forallContained!514 (list!3811 lt!371571) lambda!43234 lt!371560) lt!371631)))

(declare-fun b!1099758 () Bool)

(assert (=> b!1099758 (= e!696437 (contains!1848 (list!3811 lt!371571) lt!371560))))

(assert (= (and d!310853 res!487904) b!1099758))

(declare-fun b_lambda!31969 () Bool)

(assert (=> (not b_lambda!31969) (not d!310853)))

(declare-fun m!1255619 () Bool)

(assert (=> d!310853 m!1255619))

(assert (=> d!310853 m!1255403))

(declare-fun m!1255621 () Bool)

(assert (=> d!310853 m!1255621))

(assert (=> d!310853 m!1255403))

(declare-fun m!1255623 () Bool)

(assert (=> d!310853 m!1255623))

(assert (=> b!1099758 m!1255403))

(assert (=> b!1099758 m!1255597))

(assert (=> b!1099600 d!310853))

(declare-fun d!310857 () Bool)

(declare-fun list!3813 (Conc!3271) List!10602)

(assert (=> d!310857 (= (list!3811 lt!371571) (list!3813 (c!186651 lt!371571)))))

(declare-fun bs!259324 () Bool)

(assert (= bs!259324 d!310857))

(declare-fun m!1255625 () Bool)

(assert (=> bs!259324 m!1255625))

(assert (=> b!1099600 d!310857))

(declare-fun d!310867 () Bool)

(declare-fun e!696449 () Bool)

(assert (=> d!310867 e!696449))

(declare-fun res!487907 () Bool)

(assert (=> d!310867 (=> (not res!487907) (not e!696449))))

(declare-fun isBalanced!906 (Conc!3271) Bool)

(declare-fun filter!327 (Conc!3271 Int) Conc!3271)

(assert (=> d!310867 (= res!487907 (isBalanced!906 (filter!327 (c!186651 objs!8) lambda!43236)))))

(declare-fun lt!371634 () BalanceConc!6556)

(assert (=> d!310867 (= lt!371634 (BalanceConc!6557 (filter!327 (c!186651 objs!8) lambda!43236)))))

(assert (=> d!310867 (= (filter!325 objs!8 lambda!43236) lt!371634)))

(declare-fun b!1099770 () Bool)

(assert (=> b!1099770 (= e!696449 (= (list!3811 lt!371634) (filter!324 (list!3811 objs!8) lambda!43236)))))

(assert (= (and d!310867 res!487907) b!1099770))

(declare-fun m!1255627 () Bool)

(assert (=> d!310867 m!1255627))

(assert (=> d!310867 m!1255627))

(declare-fun m!1255629 () Bool)

(assert (=> d!310867 m!1255629))

(declare-fun m!1255631 () Bool)

(assert (=> b!1099770 m!1255631))

(assert (=> b!1099770 m!1255437))

(assert (=> b!1099770 m!1255437))

(declare-fun m!1255633 () Bool)

(assert (=> b!1099770 m!1255633))

(assert (=> b!1099611 d!310867))

(declare-fun d!310869 () Bool)

(declare-fun lt!371635 () Bool)

(assert (=> d!310869 (= lt!371635 (contains!1848 (list!3811 objs!8) lt!371560))))

(assert (=> d!310869 (= lt!371635 (contains!1849 (c!186651 objs!8) lt!371560))))

(assert (=> d!310869 (= (contains!1845 objs!8 lt!371560) lt!371635)))

(declare-fun bs!259325 () Bool)

(assert (= bs!259325 d!310869))

(assert (=> bs!259325 m!1255437))

(assert (=> bs!259325 m!1255437))

(declare-fun m!1255635 () Bool)

(assert (=> bs!259325 m!1255635))

(declare-fun m!1255637 () Bool)

(assert (=> bs!259325 m!1255637))

(assert (=> b!1099611 d!310869))

(declare-fun d!310871 () Bool)

(declare-fun e!696450 () Bool)

(assert (=> d!310871 e!696450))

(declare-fun res!487908 () Bool)

(assert (=> d!310871 (=> (not res!487908) (not e!696450))))

(assert (=> d!310871 (= res!487908 (isBalanced!906 (filter!327 (c!186651 objs!8) lambda!43235)))))

(declare-fun lt!371636 () BalanceConc!6556)

(assert (=> d!310871 (= lt!371636 (BalanceConc!6557 (filter!327 (c!186651 objs!8) lambda!43235)))))

(assert (=> d!310871 (= (filter!325 objs!8 lambda!43235) lt!371636)))

(declare-fun b!1099771 () Bool)

(assert (=> b!1099771 (= e!696450 (= (list!3811 lt!371636) (filter!324 (list!3811 objs!8) lambda!43235)))))

(assert (= (and d!310871 res!487908) b!1099771))

(declare-fun m!1255639 () Bool)

(assert (=> d!310871 m!1255639))

(assert (=> d!310871 m!1255639))

(declare-fun m!1255641 () Bool)

(assert (=> d!310871 m!1255641))

(declare-fun m!1255643 () Bool)

(assert (=> b!1099771 m!1255643))

(assert (=> b!1099771 m!1255437))

(assert (=> b!1099771 m!1255437))

(declare-fun m!1255645 () Bool)

(assert (=> b!1099771 m!1255645))

(assert (=> b!1099611 d!310871))

(declare-fun d!310873 () Bool)

(declare-fun e!696451 () Bool)

(assert (=> d!310873 e!696451))

(declare-fun res!487909 () Bool)

(assert (=> d!310873 (=> (not res!487909) (not e!696451))))

(assert (=> d!310873 (= res!487909 (isBalanced!906 (filter!327 (c!186651 objs!8) lambda!43234)))))

(declare-fun lt!371637 () BalanceConc!6556)

(assert (=> d!310873 (= lt!371637 (BalanceConc!6557 (filter!327 (c!186651 objs!8) lambda!43234)))))

(assert (=> d!310873 (= (filter!325 objs!8 lambda!43234) lt!371637)))

(declare-fun b!1099772 () Bool)

(assert (=> b!1099772 (= e!696451 (= (list!3811 lt!371637) (filter!324 (list!3811 objs!8) lambda!43234)))))

(assert (= (and d!310873 res!487909) b!1099772))

(declare-fun m!1255647 () Bool)

(assert (=> d!310873 m!1255647))

(assert (=> d!310873 m!1255647))

(declare-fun m!1255649 () Bool)

(assert (=> d!310873 m!1255649))

(declare-fun m!1255651 () Bool)

(assert (=> b!1099772 m!1255651))

(assert (=> b!1099772 m!1255437))

(assert (=> b!1099772 m!1255437))

(declare-fun m!1255653 () Bool)

(assert (=> b!1099772 m!1255653))

(assert (=> b!1099611 d!310873))

(declare-fun d!310875 () Bool)

(declare-fun lt!371640 () tuple2!11754)

(declare-fun apply!2126 (List!10602 Int) tuple2!11754)

(assert (=> d!310875 (= lt!371640 (apply!2126 (list!3811 objs!8) (ite (>= lt!371556 0) (div lt!371556 2) (- (div (- lt!371556) 2)))))))

(declare-fun apply!2127 (Conc!3271 Int) tuple2!11754)

(assert (=> d!310875 (= lt!371640 (apply!2127 (c!186651 objs!8) (ite (>= lt!371556 0) (div lt!371556 2) (- (div (- lt!371556) 2)))))))

(declare-fun e!696454 () Bool)

(assert (=> d!310875 e!696454))

(declare-fun res!487912 () Bool)

(assert (=> d!310875 (=> (not res!487912) (not e!696454))))

(assert (=> d!310875 (= res!487912 (<= 0 (ite (>= lt!371556 0) (div lt!371556 2) (- (div (- lt!371556) 2)))))))

(assert (=> d!310875 (= (apply!2123 objs!8 (ite (>= lt!371556 0) (div lt!371556 2) (- (div (- lt!371556) 2)))) lt!371640)))

(declare-fun b!1099775 () Bool)

(assert (=> b!1099775 (= e!696454 (< (ite (>= lt!371556 0) (div lt!371556 2) (- (div (- lt!371556) 2))) (size!8211 objs!8)))))

(assert (= (and d!310875 res!487912) b!1099775))

(assert (=> d!310875 m!1255437))

(assert (=> d!310875 m!1255437))

(declare-fun m!1255655 () Bool)

(assert (=> d!310875 m!1255655))

(declare-fun m!1255657 () Bool)

(assert (=> d!310875 m!1255657))

(assert (=> b!1099775 m!1255395))

(assert (=> b!1099611 d!310875))

(declare-fun d!310877 () Bool)

(assert (=> d!310877 (dynLambda!4658 lambda!43234 lt!371560)))

(declare-fun lt!371641 () Unit!16193)

(assert (=> d!310877 (= lt!371641 (choose!7091 (list!3811 objs!8) lambda!43234 lt!371560))))

(declare-fun e!696455 () Bool)

(assert (=> d!310877 e!696455))

(declare-fun res!487913 () Bool)

(assert (=> d!310877 (=> (not res!487913) (not e!696455))))

(assert (=> d!310877 (= res!487913 (forall!2424 (list!3811 objs!8) lambda!43234))))

(assert (=> d!310877 (= (forallContained!514 (list!3811 objs!8) lambda!43234 lt!371560) lt!371641)))

(declare-fun b!1099776 () Bool)

(assert (=> b!1099776 (= e!696455 (contains!1848 (list!3811 objs!8) lt!371560))))

(assert (= (and d!310877 res!487913) b!1099776))

(declare-fun b_lambda!31983 () Bool)

(assert (=> (not b_lambda!31983) (not d!310877)))

(assert (=> d!310877 m!1255619))

(assert (=> d!310877 m!1255437))

(declare-fun m!1255659 () Bool)

(assert (=> d!310877 m!1255659))

(assert (=> d!310877 m!1255437))

(declare-fun m!1255661 () Bool)

(assert (=> d!310877 m!1255661))

(assert (=> b!1099776 m!1255437))

(assert (=> b!1099776 m!1255635))

(assert (=> b!1099610 d!310877))

(declare-fun d!310879 () Bool)

(assert (=> d!310879 (= (list!3811 objs!8) (list!3813 (c!186651 objs!8)))))

(declare-fun bs!259326 () Bool)

(assert (= bs!259326 d!310879))

(declare-fun m!1255663 () Bool)

(assert (=> bs!259326 m!1255663))

(assert (=> b!1099610 d!310879))

(declare-fun d!310881 () Bool)

(declare-fun lt!371642 () Int)

(assert (=> d!310881 (>= lt!371642 0)))

(declare-fun e!696456 () Int)

(assert (=> d!310881 (= lt!371642 e!696456)))

(declare-fun c!186683 () Bool)

(assert (=> d!310881 (= c!186683 ((_ is Nil!10586) (filter!324 lt!371564 lambda!43236)))))

(assert (=> d!310881 (= (size!8212 (filter!324 lt!371564 lambda!43236)) lt!371642)))

(declare-fun b!1099777 () Bool)

(assert (=> b!1099777 (= e!696456 0)))

(declare-fun b!1099778 () Bool)

(assert (=> b!1099778 (= e!696456 (+ 1 (size!8212 (t!103834 (filter!324 lt!371564 lambda!43236)))))))

(assert (= (and d!310881 c!186683) b!1099777))

(assert (= (and d!310881 (not c!186683)) b!1099778))

(declare-fun m!1255665 () Bool)

(assert (=> b!1099778 m!1255665))

(assert (=> b!1099599 d!310881))

(declare-fun b!1099779 () Bool)

(declare-fun e!696458 () List!10602)

(declare-fun call!80412 () List!10602)

(assert (=> b!1099779 (= e!696458 call!80412)))

(declare-fun b!1099780 () Bool)

(declare-fun e!696457 () List!10602)

(assert (=> b!1099780 (= e!696457 e!696458)))

(declare-fun c!186684 () Bool)

(assert (=> b!1099780 (= c!186684 (dynLambda!4658 lambda!43236 (h!15987 lt!371564)))))

(declare-fun bm!80407 () Bool)

(assert (=> bm!80407 (= call!80412 (filter!324 (t!103834 lt!371564) lambda!43236))))

(declare-fun b!1099782 () Bool)

(assert (=> b!1099782 (= e!696458 (Cons!10586 (h!15987 lt!371564) call!80412))))

(declare-fun b!1099783 () Bool)

(declare-fun e!696459 () Bool)

(declare-fun lt!371643 () List!10602)

(assert (=> b!1099783 (= e!696459 (forall!2424 lt!371643 lambda!43236))))

(declare-fun b!1099784 () Bool)

(declare-fun res!487914 () Bool)

(assert (=> b!1099784 (=> (not res!487914) (not e!696459))))

(assert (=> b!1099784 (= res!487914 (= ((_ map implies) (content!1532 lt!371643) (content!1532 lt!371564)) ((as const (InoxSet tuple2!11754)) true)))))

(declare-fun b!1099781 () Bool)

(assert (=> b!1099781 (= e!696457 Nil!10586)))

(declare-fun d!310883 () Bool)

(assert (=> d!310883 e!696459))

(declare-fun res!487915 () Bool)

(assert (=> d!310883 (=> (not res!487915) (not e!696459))))

(assert (=> d!310883 (= res!487915 (<= (size!8212 lt!371643) (size!8212 lt!371564)))))

(assert (=> d!310883 (= lt!371643 e!696457)))

(declare-fun c!186685 () Bool)

(assert (=> d!310883 (= c!186685 ((_ is Nil!10586) lt!371564))))

(assert (=> d!310883 (= (filter!324 lt!371564 lambda!43236) lt!371643)))

(assert (= (and d!310883 c!186685) b!1099781))

(assert (= (and d!310883 (not c!186685)) b!1099780))

(assert (= (and b!1099780 c!186684) b!1099782))

(assert (= (and b!1099780 (not c!186684)) b!1099779))

(assert (= (or b!1099782 b!1099779) bm!80407))

(assert (= (and d!310883 res!487915) b!1099784))

(assert (= (and b!1099784 res!487914) b!1099783))

(declare-fun b_lambda!31985 () Bool)

(assert (=> (not b_lambda!31985) (not b!1099780)))

(declare-fun m!1255667 () Bool)

(assert (=> b!1099780 m!1255667))

(declare-fun m!1255669 () Bool)

(assert (=> d!310883 m!1255669))

(assert (=> d!310883 m!1255401))

(declare-fun m!1255671 () Bool)

(assert (=> b!1099783 m!1255671))

(declare-fun m!1255673 () Bool)

(assert (=> b!1099784 m!1255673))

(assert (=> b!1099784 m!1255559))

(declare-fun m!1255675 () Bool)

(assert (=> bm!80407 m!1255675))

(assert (=> b!1099599 d!310883))

(assert (=> b!1099599 d!310831))

(declare-fun d!310885 () Bool)

(declare-fun lt!371644 () Bool)

(assert (=> d!310885 (= lt!371644 (contains!1848 (list!3811 lt!371567) lt!371560))))

(assert (=> d!310885 (= lt!371644 (contains!1849 (c!186651 lt!371567) lt!371560))))

(assert (=> d!310885 (= (contains!1845 lt!371567 lt!371560) lt!371644)))

(declare-fun bs!259327 () Bool)

(assert (= bs!259327 d!310885))

(assert (=> bs!259327 m!1255423))

(assert (=> bs!259327 m!1255423))

(declare-fun m!1255677 () Bool)

(assert (=> bs!259327 m!1255677))

(declare-fun m!1255679 () Bool)

(assert (=> bs!259327 m!1255679))

(assert (=> b!1099603 d!310885))

(declare-fun d!310887 () Bool)

(declare-fun lt!371645 () Int)

(assert (=> d!310887 (= lt!371645 (size!8212 (list!3811 lt!371567)))))

(assert (=> d!310887 (= lt!371645 (size!8214 (c!186651 lt!371567)))))

(assert (=> d!310887 (= (size!8211 lt!371567) lt!371645)))

(declare-fun bs!259328 () Bool)

(assert (= bs!259328 d!310887))

(assert (=> bs!259328 m!1255423))

(assert (=> bs!259328 m!1255423))

(declare-fun m!1255681 () Bool)

(assert (=> bs!259328 m!1255681))

(declare-fun m!1255683 () Bool)

(assert (=> bs!259328 m!1255683))

(assert (=> b!1099602 d!310887))

(declare-fun d!310889 () Bool)

(declare-fun e!696462 () Bool)

(assert (=> d!310889 e!696462))

(declare-fun res!487918 () Bool)

(assert (=> d!310889 (=> res!487918 e!696462)))

(assert (=> d!310889 (= res!487918 (isEmpty!6688 lt!371564))))

(declare-fun lt!371648 () Unit!16193)

(declare-fun choose!7092 (List!10602 Int) Unit!16193)

(assert (=> d!310889 (= lt!371648 (choose!7092 lt!371564 lambda!43236))))

(assert (=> d!310889 (not (forall!2424 lt!371564 lambda!43236))))

(assert (=> d!310889 (= (lemmaNotForallFilterShorter!53 lt!371564 lambda!43236) lt!371648)))

(declare-fun b!1099787 () Bool)

(assert (=> b!1099787 (= e!696462 (< (size!8212 (filter!324 lt!371564 lambda!43236)) (size!8212 lt!371564)))))

(assert (= (and d!310889 (not res!487918)) b!1099787))

(assert (=> d!310889 m!1255443))

(declare-fun m!1255685 () Bool)

(assert (=> d!310889 m!1255685))

(declare-fun m!1255687 () Bool)

(assert (=> d!310889 m!1255687))

(assert (=> b!1099787 m!1255433))

(assert (=> b!1099787 m!1255433))

(assert (=> b!1099787 m!1255435))

(assert (=> b!1099787 m!1255401))

(assert (=> b!1099602 d!310889))

(declare-fun d!310891 () Bool)

(declare-fun lt!371651 () Bool)

(assert (=> d!310891 (= lt!371651 (forall!2424 (list!3811 objs!8) lambda!43236))))

(declare-fun forall!2425 (Conc!3271 Int) Bool)

(assert (=> d!310891 (= lt!371651 (forall!2425 (c!186651 objs!8) lambda!43236))))

(assert (=> d!310891 (= (forall!2421 objs!8 lambda!43236) lt!371651)))

(declare-fun bs!259329 () Bool)

(assert (= bs!259329 d!310891))

(assert (=> bs!259329 m!1255437))

(assert (=> bs!259329 m!1255437))

(declare-fun m!1255689 () Bool)

(assert (=> bs!259329 m!1255689))

(declare-fun m!1255691 () Bool)

(assert (=> bs!259329 m!1255691))

(assert (=> b!1099602 d!310891))

(declare-fun d!310893 () Bool)

(assert (=> d!310893 (dynLambda!4658 lambda!43236 lt!371560)))

(declare-fun lt!371652 () Unit!16193)

(assert (=> d!310893 (= lt!371652 (choose!7091 lt!371564 lambda!43236 lt!371560))))

(declare-fun e!696463 () Bool)

(assert (=> d!310893 e!696463))

(declare-fun res!487919 () Bool)

(assert (=> d!310893 (=> (not res!487919) (not e!696463))))

(assert (=> d!310893 (= res!487919 (forall!2424 lt!371564 lambda!43236))))

(assert (=> d!310893 (= (forallContained!514 lt!371564 lambda!43236 lt!371560) lt!371652)))

(declare-fun b!1099788 () Bool)

(assert (=> b!1099788 (= e!696463 (contains!1848 lt!371564 lt!371560))))

(assert (= (and d!310893 res!487919) b!1099788))

(declare-fun b_lambda!31987 () Bool)

(assert (=> (not b_lambda!31987) (not d!310893)))

(declare-fun m!1255693 () Bool)

(assert (=> d!310893 m!1255693))

(declare-fun m!1255695 () Bool)

(assert (=> d!310893 m!1255695))

(assert (=> d!310893 m!1255687))

(declare-fun m!1255697 () Bool)

(assert (=> b!1099788 m!1255697))

(assert (=> b!1099606 d!310893))

(declare-fun d!310895 () Bool)

(declare-fun lt!371653 () Bool)

(assert (=> d!310895 (= lt!371653 (forall!2424 (list!3811 objs!8) lambda!43233))))

(assert (=> d!310895 (= lt!371653 (forall!2425 (c!186651 objs!8) lambda!43233))))

(assert (=> d!310895 (= (forall!2421 objs!8 lambda!43233) lt!371653)))

(declare-fun bs!259330 () Bool)

(assert (= bs!259330 d!310895))

(assert (=> bs!259330 m!1255437))

(assert (=> bs!259330 m!1255437))

(declare-fun m!1255699 () Bool)

(assert (=> bs!259330 m!1255699))

(declare-fun m!1255701 () Bool)

(assert (=> bs!259330 m!1255701))

(assert (=> start!94418 d!310895))

(declare-fun d!310897 () Bool)

(assert (=> d!310897 (= (inv!13590 objs!8) (isBalanced!906 (c!186651 objs!8)))))

(declare-fun bs!259331 () Bool)

(assert (= bs!259331 d!310897))

(declare-fun m!1255703 () Bool)

(assert (=> bs!259331 m!1255703))

(assert (=> start!94418 d!310897))

(declare-fun d!310899 () Bool)

(declare-fun lt!371654 () Bool)

(assert (=> d!310899 (= lt!371654 (forall!2424 (list!3811 objs!8) lambda!43234))))

(assert (=> d!310899 (= lt!371654 (forall!2425 (c!186651 objs!8) lambda!43234))))

(assert (=> d!310899 (= (forall!2421 objs!8 lambda!43234) lt!371654)))

(declare-fun bs!259332 () Bool)

(assert (= bs!259332 d!310899))

(assert (=> bs!259332 m!1255437))

(assert (=> bs!259332 m!1255437))

(assert (=> bs!259332 m!1255661))

(declare-fun m!1255705 () Bool)

(assert (=> bs!259332 m!1255705))

(assert (=> b!1099595 d!310899))

(declare-fun d!310901 () Bool)

(declare-fun lt!371655 () Int)

(assert (=> d!310901 (= lt!371655 (size!8212 (list!3811 lt!371571)))))

(assert (=> d!310901 (= lt!371655 (size!8214 (c!186651 lt!371571)))))

(assert (=> d!310901 (= (size!8211 lt!371571) lt!371655)))

(declare-fun bs!259333 () Bool)

(assert (= bs!259333 d!310901))

(assert (=> bs!259333 m!1255403))

(assert (=> bs!259333 m!1255403))

(declare-fun m!1255707 () Bool)

(assert (=> bs!259333 m!1255707))

(declare-fun m!1255709 () Bool)

(assert (=> bs!259333 m!1255709))

(assert (=> b!1099595 d!310901))

(declare-fun d!310903 () Bool)

(declare-fun e!696464 () Bool)

(assert (=> d!310903 e!696464))

(declare-fun res!487920 () Bool)

(assert (=> d!310903 (=> res!487920 e!696464)))

(assert (=> d!310903 (= res!487920 (isEmpty!6688 lt!371564))))

(declare-fun lt!371656 () Unit!16193)

(assert (=> d!310903 (= lt!371656 (choose!7092 lt!371564 lambda!43234))))

(assert (=> d!310903 (not (forall!2424 lt!371564 lambda!43234))))

(assert (=> d!310903 (= (lemmaNotForallFilterShorter!53 lt!371564 lambda!43234) lt!371656)))

(declare-fun b!1099789 () Bool)

(assert (=> b!1099789 (= e!696464 (< (size!8212 (filter!324 lt!371564 lambda!43234)) (size!8212 lt!371564)))))

(assert (= (and d!310903 (not res!487920)) b!1099789))

(assert (=> d!310903 m!1255443))

(declare-fun m!1255711 () Bool)

(assert (=> d!310903 m!1255711))

(declare-fun m!1255713 () Bool)

(assert (=> d!310903 m!1255713))

(assert (=> b!1099789 m!1255397))

(assert (=> b!1099789 m!1255397))

(assert (=> b!1099789 m!1255399))

(assert (=> b!1099789 m!1255401))

(assert (=> b!1099595 d!310903))

(assert (=> b!1099595 d!310879))

(declare-fun d!310905 () Bool)

(assert (=> d!310905 (= (isEmpty!6688 lt!371564) ((_ is Nil!10586) lt!371564))))

(assert (=> b!1099595 d!310905))

(declare-fun d!310907 () Bool)

(assert (=> d!310907 (dynLambda!4658 lambda!43236 lt!371560)))

(declare-fun lt!371657 () Unit!16193)

(assert (=> d!310907 (= lt!371657 (choose!7091 (list!3811 lt!371567) lambda!43236 lt!371560))))

(declare-fun e!696465 () Bool)

(assert (=> d!310907 e!696465))

(declare-fun res!487921 () Bool)

(assert (=> d!310907 (=> (not res!487921) (not e!696465))))

(assert (=> d!310907 (= res!487921 (forall!2424 (list!3811 lt!371567) lambda!43236))))

(assert (=> d!310907 (= (forallContained!514 (list!3811 lt!371567) lambda!43236 lt!371560) lt!371657)))

(declare-fun b!1099790 () Bool)

(assert (=> b!1099790 (= e!696465 (contains!1848 (list!3811 lt!371567) lt!371560))))

(assert (= (and d!310907 res!487921) b!1099790))

(declare-fun b_lambda!31989 () Bool)

(assert (=> (not b_lambda!31989) (not d!310907)))

(assert (=> d!310907 m!1255693))

(assert (=> d!310907 m!1255423))

(declare-fun m!1255715 () Bool)

(assert (=> d!310907 m!1255715))

(assert (=> d!310907 m!1255423))

(declare-fun m!1255717 () Bool)

(assert (=> d!310907 m!1255717))

(assert (=> b!1099790 m!1255423))

(assert (=> b!1099790 m!1255677))

(assert (=> b!1099605 d!310907))

(declare-fun d!310909 () Bool)

(assert (=> d!310909 (= (list!3811 lt!371567) (list!3813 (c!186651 lt!371567)))))

(declare-fun bs!259334 () Bool)

(assert (= bs!259334 d!310909))

(declare-fun m!1255719 () Bool)

(assert (=> bs!259334 m!1255719))

(assert (=> b!1099605 d!310909))

(declare-fun b!1099799 () Bool)

(declare-fun e!696470 () Bool)

(assert (=> b!1099799 (= e!696470 true)))

(declare-fun b!1099801 () Bool)

(declare-fun e!696471 () Bool)

(assert (=> b!1099801 (= e!696471 true)))

(declare-fun b!1099800 () Bool)

(assert (=> b!1099800 (= e!696470 e!696471)))

(assert (=> b!1099623 e!696470))

(assert (= (and b!1099623 ((_ is Node!3270) (c!186650 (tokens!1373 (_2!6703 lt!371560))))) b!1099799))

(assert (= b!1099800 b!1099801))

(assert (= (and b!1099623 ((_ is Leaf!5183) (c!186650 (tokens!1373 (_2!6703 lt!371560))))) b!1099800))

(declare-fun b!1099802 () Bool)

(declare-fun e!696472 () Bool)

(assert (=> b!1099802 (= e!696472 true)))

(declare-fun b!1099804 () Bool)

(declare-fun e!696473 () Bool)

(assert (=> b!1099804 (= e!696473 true)))

(declare-fun b!1099803 () Bool)

(assert (=> b!1099803 (= e!696472 e!696473)))

(assert (=> b!1099621 e!696472))

(assert (= (and b!1099621 ((_ is Node!3270) (c!186650 (tokens!1373 (_2!6703 lt!371560))))) b!1099802))

(assert (= b!1099803 b!1099804))

(assert (= (and b!1099621 ((_ is Leaf!5183) (c!186650 (tokens!1373 (_2!6703 lt!371560))))) b!1099803))

(declare-fun tp!326894 () Bool)

(declare-fun b!1099813 () Bool)

(declare-fun e!696479 () Bool)

(declare-fun tp!326893 () Bool)

(assert (=> b!1099813 (= e!696479 (and (inv!13591 (left!9137 (c!186651 objs!8))) tp!326894 (inv!13591 (right!9467 (c!186651 objs!8))) tp!326893))))

(declare-fun b!1099815 () Bool)

(declare-fun e!696478 () Bool)

(declare-fun tp!326892 () Bool)

(assert (=> b!1099815 (= e!696478 tp!326892)))

(declare-fun b!1099814 () Bool)

(declare-fun inv!13597 (IArray!6547) Bool)

(assert (=> b!1099814 (= e!696479 (and (inv!13597 (xs!5964 (c!186651 objs!8))) e!696478))))

(assert (=> b!1099608 (= tp!326876 (and (inv!13591 (c!186651 objs!8)) e!696479))))

(assert (= (and b!1099608 ((_ is Node!3271) (c!186651 objs!8))) b!1099813))

(assert (= b!1099814 b!1099815))

(assert (= (and b!1099608 ((_ is Leaf!5184) (c!186651 objs!8))) b!1099814))

(declare-fun m!1255721 () Bool)

(assert (=> b!1099813 m!1255721))

(declare-fun m!1255723 () Bool)

(assert (=> b!1099813 m!1255723))

(declare-fun m!1255725 () Bool)

(assert (=> b!1099814 m!1255725))

(assert (=> b!1099608 m!1255429))

(declare-fun b!1099826 () Bool)

(declare-fun e!696488 () Bool)

(assert (=> b!1099826 (= e!696488 true)))

(declare-fun b!1099825 () Bool)

(declare-fun e!696487 () Bool)

(assert (=> b!1099825 (= e!696487 e!696488)))

(declare-fun b!1099824 () Bool)

(declare-fun e!696486 () Bool)

(assert (=> b!1099824 (= e!696486 e!696487)))

(assert (=> b!1099620 e!696486))

(assert (= b!1099825 b!1099826))

(assert (= b!1099824 b!1099825))

(assert (= (and b!1099620 ((_ is Cons!10585) (rules!9101 (_2!6703 lt!371560)))) b!1099824))

(declare-fun order!6437 () Int)

(declare-fun order!6435 () Int)

(declare-fun dynLambda!4662 (Int Int) Int)

(declare-fun dynLambda!4663 (Int Int) Int)

(assert (=> b!1099826 (< (dynLambda!4662 order!6435 (toValue!2891 (transformation!1814 (h!15986 (rules!9101 (_2!6703 lt!371560)))))) (dynLambda!4663 order!6437 lambda!43235))))

(declare-fun order!6439 () Int)

(declare-fun dynLambda!4664 (Int Int) Int)

(assert (=> b!1099826 (< (dynLambda!4664 order!6439 (toChars!2750 (transformation!1814 (h!15986 (rules!9101 (_2!6703 lt!371560)))))) (dynLambda!4663 order!6437 lambda!43235))))

(declare-fun b!1099827 () Bool)

(declare-fun e!696489 () Bool)

(assert (=> b!1099827 (= e!696489 true)))

(declare-fun b!1099829 () Bool)

(declare-fun e!696490 () Bool)

(assert (=> b!1099829 (= e!696490 true)))

(declare-fun b!1099828 () Bool)

(assert (=> b!1099828 (= e!696489 e!696490)))

(assert (=> b!1099619 e!696489))

(assert (= (and b!1099619 ((_ is Node!3270) (c!186650 (tokens!1373 (_2!6703 lt!371560))))) b!1099827))

(assert (= b!1099828 b!1099829))

(assert (= (and b!1099619 ((_ is Leaf!5183) (c!186650 (tokens!1373 (_2!6703 lt!371560))))) b!1099828))

(declare-fun b!1099832 () Bool)

(declare-fun e!696493 () Bool)

(assert (=> b!1099832 (= e!696493 true)))

(declare-fun b!1099831 () Bool)

(declare-fun e!696492 () Bool)

(assert (=> b!1099831 (= e!696492 e!696493)))

(declare-fun b!1099830 () Bool)

(declare-fun e!696491 () Bool)

(assert (=> b!1099830 (= e!696491 e!696492)))

(assert (=> b!1099618 e!696491))

(assert (= b!1099831 b!1099832))

(assert (= b!1099830 b!1099831))

(assert (= (and b!1099618 ((_ is Cons!10585) (rules!9101 (_2!6703 lt!371560)))) b!1099830))

(assert (=> b!1099832 (< (dynLambda!4662 order!6435 (toValue!2891 (transformation!1814 (h!15986 (rules!9101 (_2!6703 lt!371560)))))) (dynLambda!4663 order!6437 lambda!43234))))

(assert (=> b!1099832 (< (dynLambda!4664 order!6439 (toChars!2750 (transformation!1814 (h!15986 (rules!9101 (_2!6703 lt!371560)))))) (dynLambda!4663 order!6437 lambda!43234))))

(declare-fun b!1099835 () Bool)

(declare-fun e!696496 () Bool)

(assert (=> b!1099835 (= e!696496 true)))

(declare-fun b!1099834 () Bool)

(declare-fun e!696495 () Bool)

(assert (=> b!1099834 (= e!696495 e!696496)))

(declare-fun b!1099833 () Bool)

(declare-fun e!696494 () Bool)

(assert (=> b!1099833 (= e!696494 e!696495)))

(assert (=> b!1099622 e!696494))

(assert (= b!1099834 b!1099835))

(assert (= b!1099833 b!1099834))

(assert (= (and b!1099622 ((_ is Cons!10585) (rules!9101 (_2!6703 lt!371560)))) b!1099833))

(assert (=> b!1099835 (< (dynLambda!4662 order!6435 (toValue!2891 (transformation!1814 (h!15986 (rules!9101 (_2!6703 lt!371560)))))) (dynLambda!4663 order!6437 lambda!43236))))

(assert (=> b!1099835 (< (dynLambda!4664 order!6439 (toChars!2750 (transformation!1814 (h!15986 (rules!9101 (_2!6703 lt!371560)))))) (dynLambda!4663 order!6437 lambda!43236))))

(declare-fun b_lambda!31991 () Bool)

(assert (= b_lambda!31987 (or b!1099611 b_lambda!31991)))

(declare-fun bs!259335 () Bool)

(declare-fun d!310911 () Bool)

(assert (= bs!259335 (and d!310911 b!1099611)))

(assert (=> bs!259335 (= (dynLambda!4658 lambda!43236 lt!371560) (> (_1!6703 lt!371560) (_1!6703 lt!371560)))))

(assert (=> d!310893 d!310911))

(declare-fun b_lambda!31993 () Bool)

(assert (= b_lambda!31989 (or b!1099611 b_lambda!31993)))

(assert (=> d!310907 d!310911))

(declare-fun b_lambda!31995 () Bool)

(assert (= b_lambda!31985 (or b!1099611 b_lambda!31995)))

(declare-fun bs!259336 () Bool)

(declare-fun d!310913 () Bool)

(assert (= bs!259336 (and d!310913 b!1099611)))

(assert (=> bs!259336 (= (dynLambda!4658 lambda!43236 (h!15987 lt!371564)) (> (_1!6703 (h!15987 lt!371564)) (_1!6703 lt!371560)))))

(assert (=> b!1099780 d!310913))

(declare-fun b_lambda!31997 () Bool)

(assert (= b_lambda!31963 (or b!1099611 b_lambda!31997)))

(declare-fun bs!259337 () Bool)

(declare-fun d!310915 () Bool)

(assert (= bs!259337 (and d!310915 b!1099611)))

(assert (=> bs!259337 (= (dynLambda!4658 lambda!43234 (h!15987 lt!371564)) (< (_1!6703 (h!15987 lt!371564)) (_1!6703 lt!371560)))))

(assert (=> b!1099684 d!310915))

(declare-fun b_lambda!31999 () Bool)

(assert (= b_lambda!31983 (or b!1099611 b_lambda!31999)))

(declare-fun bs!259338 () Bool)

(declare-fun d!310917 () Bool)

(assert (= bs!259338 (and d!310917 b!1099611)))

(assert (=> bs!259338 (= (dynLambda!4658 lambda!43234 lt!371560) (< (_1!6703 lt!371560) (_1!6703 lt!371560)))))

(assert (=> d!310877 d!310917))

(declare-fun b_lambda!32001 () Bool)

(assert (= b_lambda!31969 (or b!1099611 b_lambda!32001)))

(assert (=> d!310853 d!310917))

(check-sat (not d!310903) (not d!310853) (not b!1099804) (not d!310791) (not b!1099758) (not d!310889) (not b!1099833) (not b_lambda!31995) (not b!1099783) (not b_lambda!31993) (not b!1099789) (not bm!80402) (not b!1099799) (not d!310909) (not b_lambda!31991) (not b!1099772) (not b!1099824) (not d!310817) (not d!310869) (not b_lambda!31999) (not b!1099787) (not b!1099830) (not b!1099640) (not b!1099775) (not b!1099827) (not b!1099801) (not d!310899) (not b!1099788) (not d!310907) (not d!310885) (not d!310867) (not d!310895) (not d!310901) (not d!310875) (not b!1099814) (not d!310833) (not b!1099688) (not d!310891) (not bm!80407) (not d!310857) (not b!1099790) (not d!310873) (not d!310897) (not b!1099687) (not d!310887) (not b!1099784) (not b!1099802) (not b!1099702) (not b!1099813) (not b!1099778) (not d!310893) (not b!1099776) (not b_lambda!32001) (not d!310879) (not b!1099815) (not d!310877) (not b!1099770) (not b!1099829) (not b!1099771) (not b!1099651) (not b_lambda!31997) (not b!1099642) (not b!1099608) (not d!310883) (not d!310871))
(check-sat)
(get-model)

(declare-fun d!311047 () Bool)

(declare-fun lt!371721 () Int)

(assert (=> d!311047 (>= lt!371721 0)))

(declare-fun e!696669 () Int)

(assert (=> d!311047 (= lt!371721 e!696669)))

(declare-fun c!186758 () Bool)

(assert (=> d!311047 (= c!186758 ((_ is Nil!10586) (t!103834 lt!371564)))))

(assert (=> d!311047 (= (size!8212 (t!103834 lt!371564)) lt!371721)))

(declare-fun b!1100122 () Bool)

(assert (=> b!1100122 (= e!696669 0)))

(declare-fun b!1100123 () Bool)

(assert (=> b!1100123 (= e!696669 (+ 1 (size!8212 (t!103834 (t!103834 lt!371564)))))))

(assert (= (and d!311047 c!186758) b!1100122))

(assert (= (and d!311047 (not c!186758)) b!1100123))

(declare-fun m!1256081 () Bool)

(assert (=> b!1100123 m!1256081))

(assert (=> b!1099702 d!311047))

(declare-fun d!311049 () Bool)

(assert (=> d!311049 (= (list!3811 lt!371637) (list!3813 (c!186651 lt!371637)))))

(declare-fun bs!259350 () Bool)

(assert (= bs!259350 d!311049))

(declare-fun m!1256083 () Bool)

(assert (=> bs!259350 m!1256083))

(assert (=> b!1099772 d!311049))

(declare-fun b!1100124 () Bool)

(declare-fun e!696671 () List!10602)

(declare-fun call!80421 () List!10602)

(assert (=> b!1100124 (= e!696671 call!80421)))

(declare-fun b!1100125 () Bool)

(declare-fun e!696670 () List!10602)

(assert (=> b!1100125 (= e!696670 e!696671)))

(declare-fun c!186759 () Bool)

(assert (=> b!1100125 (= c!186759 (dynLambda!4658 lambda!43234 (h!15987 (list!3811 objs!8))))))

(declare-fun bm!80416 () Bool)

(assert (=> bm!80416 (= call!80421 (filter!324 (t!103834 (list!3811 objs!8)) lambda!43234))))

(declare-fun b!1100127 () Bool)

(assert (=> b!1100127 (= e!696671 (Cons!10586 (h!15987 (list!3811 objs!8)) call!80421))))

(declare-fun b!1100128 () Bool)

(declare-fun e!696672 () Bool)

(declare-fun lt!371722 () List!10602)

(assert (=> b!1100128 (= e!696672 (forall!2424 lt!371722 lambda!43234))))

(declare-fun b!1100129 () Bool)

(declare-fun res!488054 () Bool)

(assert (=> b!1100129 (=> (not res!488054) (not e!696672))))

(assert (=> b!1100129 (= res!488054 (= ((_ map implies) (content!1532 lt!371722) (content!1532 (list!3811 objs!8))) ((as const (InoxSet tuple2!11754)) true)))))

(declare-fun b!1100126 () Bool)

(assert (=> b!1100126 (= e!696670 Nil!10586)))

(declare-fun d!311051 () Bool)

(assert (=> d!311051 e!696672))

(declare-fun res!488055 () Bool)

(assert (=> d!311051 (=> (not res!488055) (not e!696672))))

(assert (=> d!311051 (= res!488055 (<= (size!8212 lt!371722) (size!8212 (list!3811 objs!8))))))

(assert (=> d!311051 (= lt!371722 e!696670)))

(declare-fun c!186760 () Bool)

(assert (=> d!311051 (= c!186760 ((_ is Nil!10586) (list!3811 objs!8)))))

(assert (=> d!311051 (= (filter!324 (list!3811 objs!8) lambda!43234) lt!371722)))

(assert (= (and d!311051 c!186760) b!1100126))

(assert (= (and d!311051 (not c!186760)) b!1100125))

(assert (= (and b!1100125 c!186759) b!1100127))

(assert (= (and b!1100125 (not c!186759)) b!1100124))

(assert (= (or b!1100127 b!1100124) bm!80416))

(assert (= (and d!311051 res!488055) b!1100129))

(assert (= (and b!1100129 res!488054) b!1100128))

(declare-fun b_lambda!32039 () Bool)

(assert (=> (not b_lambda!32039) (not b!1100125)))

(declare-fun m!1256085 () Bool)

(assert (=> b!1100125 m!1256085))

(declare-fun m!1256087 () Bool)

(assert (=> d!311051 m!1256087))

(assert (=> d!311051 m!1255437))

(assert (=> d!311051 m!1255473))

(declare-fun m!1256089 () Bool)

(assert (=> b!1100128 m!1256089))

(declare-fun m!1256091 () Bool)

(assert (=> b!1100129 m!1256091))

(assert (=> b!1100129 m!1255437))

(declare-fun m!1256093 () Bool)

(assert (=> b!1100129 m!1256093))

(declare-fun m!1256095 () Bool)

(assert (=> bm!80416 m!1256095))

(assert (=> b!1099772 d!311051))

(assert (=> b!1099772 d!310879))

(declare-fun d!311053 () Bool)

(declare-fun lt!371723 () Int)

(assert (=> d!311053 (>= lt!371723 0)))

(declare-fun e!696677 () Int)

(assert (=> d!311053 (= lt!371723 e!696677)))

(declare-fun c!186761 () Bool)

(assert (=> d!311053 (= c!186761 ((_ is Nil!10586) lt!371613))))

(assert (=> d!311053 (= (size!8212 lt!371613) lt!371723)))

(declare-fun b!1100134 () Bool)

(assert (=> b!1100134 (= e!696677 0)))

(declare-fun b!1100135 () Bool)

(assert (=> b!1100135 (= e!696677 (+ 1 (size!8212 (t!103834 lt!371613))))))

(assert (= (and d!311053 c!186761) b!1100134))

(assert (= (and d!311053 (not c!186761)) b!1100135))

(declare-fun m!1256097 () Bool)

(assert (=> b!1100135 m!1256097))

(assert (=> d!310817 d!311053))

(assert (=> d!310817 d!310831))

(declare-fun d!311055 () Bool)

(declare-fun lt!371726 () Bool)

(assert (=> d!311055 (= lt!371726 (select (content!1532 lt!371564) lt!371560))))

(declare-fun e!696716 () Bool)

(assert (=> d!311055 (= lt!371726 e!696716)))

(declare-fun res!488061 () Bool)

(assert (=> d!311055 (=> (not res!488061) (not e!696716))))

(assert (=> d!311055 (= res!488061 ((_ is Cons!10586) lt!371564))))

(assert (=> d!311055 (= (contains!1848 lt!371564 lt!371560) lt!371726)))

(declare-fun b!1100181 () Bool)

(declare-fun e!696715 () Bool)

(assert (=> b!1100181 (= e!696716 e!696715)))

(declare-fun res!488060 () Bool)

(assert (=> b!1100181 (=> res!488060 e!696715)))

(assert (=> b!1100181 (= res!488060 (= (h!15987 lt!371564) lt!371560))))

(declare-fun b!1100182 () Bool)

(assert (=> b!1100182 (= e!696715 (contains!1848 (t!103834 lt!371564) lt!371560))))

(assert (= (and d!311055 res!488061) b!1100181))

(assert (= (and b!1100181 (not res!488060)) b!1100182))

(assert (=> d!311055 m!1255559))

(declare-fun m!1256117 () Bool)

(assert (=> d!311055 m!1256117))

(declare-fun m!1256119 () Bool)

(assert (=> b!1100182 m!1256119))

(assert (=> b!1099788 d!311055))

(declare-fun d!311057 () Bool)

(declare-fun lt!371727 () Bool)

(assert (=> d!311057 (= lt!371727 (select (content!1532 (list!3811 lt!371571)) lt!371560))))

(declare-fun e!696729 () Bool)

(assert (=> d!311057 (= lt!371727 e!696729)))

(declare-fun res!488063 () Bool)

(assert (=> d!311057 (=> (not res!488063) (not e!696729))))

(assert (=> d!311057 (= res!488063 ((_ is Cons!10586) (list!3811 lt!371571)))))

(assert (=> d!311057 (= (contains!1848 (list!3811 lt!371571) lt!371560) lt!371727)))

(declare-fun b!1100194 () Bool)

(declare-fun e!696728 () Bool)

(assert (=> b!1100194 (= e!696729 e!696728)))

(declare-fun res!488062 () Bool)

(assert (=> b!1100194 (=> res!488062 e!696728)))

(assert (=> b!1100194 (= res!488062 (= (h!15987 (list!3811 lt!371571)) lt!371560))))

(declare-fun b!1100195 () Bool)

(assert (=> b!1100195 (= e!696728 (contains!1848 (t!103834 (list!3811 lt!371571)) lt!371560))))

(assert (= (and d!311057 res!488063) b!1100194))

(assert (= (and b!1100194 (not res!488062)) b!1100195))

(assert (=> d!311057 m!1255403))

(declare-fun m!1256121 () Bool)

(assert (=> d!311057 m!1256121))

(declare-fun m!1256123 () Bool)

(assert (=> d!311057 m!1256123))

(declare-fun m!1256125 () Bool)

(assert (=> b!1100195 m!1256125))

(assert (=> d!310833 d!311057))

(assert (=> d!310833 d!310857))

(declare-fun b!1100204 () Bool)

(declare-fun e!696736 () Bool)

(declare-fun e!696737 () Bool)

(assert (=> b!1100204 (= e!696736 e!696737)))

(declare-fun c!186764 () Bool)

(assert (=> b!1100204 (= c!186764 ((_ is Leaf!5184) (c!186651 lt!371571)))))

(declare-fun d!311059 () Bool)

(declare-fun lt!371730 () Bool)

(assert (=> d!311059 (= lt!371730 (contains!1848 (list!3813 (c!186651 lt!371571)) lt!371560))))

(assert (=> d!311059 (= lt!371730 e!696736)))

(declare-fun res!488069 () Bool)

(assert (=> d!311059 (=> (not res!488069) (not e!696736))))

(assert (=> d!311059 (= res!488069 (not ((_ is Empty!3271) (c!186651 lt!371571))))))

(assert (=> d!311059 (= (contains!1849 (c!186651 lt!371571) lt!371560) lt!371730)))

(declare-fun b!1100207 () Bool)

(declare-fun e!696738 () Bool)

(assert (=> b!1100207 (= e!696738 (contains!1849 (right!9467 (c!186651 lt!371571)) lt!371560))))

(declare-fun b!1100206 () Bool)

(assert (=> b!1100206 (= e!696737 e!696738)))

(declare-fun res!488068 () Bool)

(assert (=> b!1100206 (= res!488068 (contains!1849 (left!9137 (c!186651 lt!371571)) lt!371560))))

(assert (=> b!1100206 (=> res!488068 e!696738)))

(declare-fun b!1100205 () Bool)

(declare-fun contains!1851 (IArray!6547 tuple2!11754) Bool)

(assert (=> b!1100205 (= e!696737 (contains!1851 (xs!5964 (c!186651 lt!371571)) lt!371560))))

(assert (= (and d!311059 res!488069) b!1100204))

(assert (= (and b!1100204 c!186764) b!1100205))

(assert (= (and b!1100204 (not c!186764)) b!1100206))

(assert (= (and b!1100206 (not res!488068)) b!1100207))

(assert (=> d!311059 m!1255625))

(assert (=> d!311059 m!1255625))

(declare-fun m!1256129 () Bool)

(assert (=> d!311059 m!1256129))

(declare-fun m!1256131 () Bool)

(assert (=> b!1100207 m!1256131))

(declare-fun m!1256133 () Bool)

(assert (=> b!1100206 m!1256133))

(declare-fun m!1256135 () Bool)

(assert (=> b!1100205 m!1256135))

(assert (=> d!310833 d!311059))

(declare-fun d!311081 () Bool)

(declare-fun res!488086 () Bool)

(declare-fun e!696743 () Bool)

(assert (=> d!311081 (=> res!488086 e!696743)))

(assert (=> d!311081 (= res!488086 (not ((_ is Node!3271) (filter!327 (c!186651 objs!8) lambda!43236))))))

(assert (=> d!311081 (= (isBalanced!906 (filter!327 (c!186651 objs!8) lambda!43236)) e!696743)))

(declare-fun b!1100220 () Bool)

(declare-fun e!696744 () Bool)

(assert (=> b!1100220 (= e!696743 e!696744)))

(declare-fun res!488084 () Bool)

(assert (=> b!1100220 (=> (not res!488084) (not e!696744))))

(declare-fun height!430 (Conc!3271) Int)

(assert (=> b!1100220 (= res!488084 (<= (- 1) (- (height!430 (left!9137 (filter!327 (c!186651 objs!8) lambda!43236))) (height!430 (right!9467 (filter!327 (c!186651 objs!8) lambda!43236))))))))

(declare-fun b!1100221 () Bool)

(declare-fun res!488085 () Bool)

(assert (=> b!1100221 (=> (not res!488085) (not e!696744))))

(assert (=> b!1100221 (= res!488085 (<= (- (height!430 (left!9137 (filter!327 (c!186651 objs!8) lambda!43236))) (height!430 (right!9467 (filter!327 (c!186651 objs!8) lambda!43236)))) 1))))

(declare-fun b!1100222 () Bool)

(declare-fun isEmpty!6690 (Conc!3271) Bool)

(assert (=> b!1100222 (= e!696744 (not (isEmpty!6690 (right!9467 (filter!327 (c!186651 objs!8) lambda!43236)))))))

(declare-fun b!1100223 () Bool)

(declare-fun res!488087 () Bool)

(assert (=> b!1100223 (=> (not res!488087) (not e!696744))))

(assert (=> b!1100223 (= res!488087 (isBalanced!906 (left!9137 (filter!327 (c!186651 objs!8) lambda!43236))))))

(declare-fun b!1100224 () Bool)

(declare-fun res!488083 () Bool)

(assert (=> b!1100224 (=> (not res!488083) (not e!696744))))

(assert (=> b!1100224 (= res!488083 (isBalanced!906 (right!9467 (filter!327 (c!186651 objs!8) lambda!43236))))))

(declare-fun b!1100225 () Bool)

(declare-fun res!488082 () Bool)

(assert (=> b!1100225 (=> (not res!488082) (not e!696744))))

(assert (=> b!1100225 (= res!488082 (not (isEmpty!6690 (left!9137 (filter!327 (c!186651 objs!8) lambda!43236)))))))

(assert (= (and d!311081 (not res!488086)) b!1100220))

(assert (= (and b!1100220 res!488084) b!1100221))

(assert (= (and b!1100221 res!488085) b!1100223))

(assert (= (and b!1100223 res!488087) b!1100224))

(assert (= (and b!1100224 res!488083) b!1100225))

(assert (= (and b!1100225 res!488082) b!1100222))

(declare-fun m!1256137 () Bool)

(assert (=> b!1100221 m!1256137))

(declare-fun m!1256139 () Bool)

(assert (=> b!1100221 m!1256139))

(declare-fun m!1256141 () Bool)

(assert (=> b!1100225 m!1256141))

(declare-fun m!1256143 () Bool)

(assert (=> b!1100222 m!1256143))

(assert (=> b!1100220 m!1256137))

(assert (=> b!1100220 m!1256139))

(declare-fun m!1256145 () Bool)

(assert (=> b!1100224 m!1256145))

(declare-fun m!1256147 () Bool)

(assert (=> b!1100223 m!1256147))

(assert (=> d!310867 d!311081))

(declare-fun b!1100240 () Bool)

(declare-fun e!696754 () Conc!3271)

(assert (=> b!1100240 (= e!696754 (c!186651 objs!8))))

(declare-fun d!311083 () Bool)

(declare-fun e!696755 () Bool)

(assert (=> d!311083 e!696755))

(declare-fun res!488090 () Bool)

(assert (=> d!311083 (=> (not res!488090) (not e!696755))))

(declare-fun lt!371737 () Conc!3271)

(assert (=> d!311083 (= res!488090 (isBalanced!906 lt!371737))))

(assert (=> d!311083 (= lt!371737 e!696754)))

(declare-fun c!186773 () Bool)

(assert (=> d!311083 (= c!186773 ((_ is Empty!3271) (c!186651 objs!8)))))

(assert (=> d!311083 (isBalanced!906 (c!186651 objs!8))))

(assert (=> d!311083 (= (filter!327 (c!186651 objs!8) lambda!43236) lt!371737)))

(declare-fun b!1100241 () Bool)

(declare-fun lt!371738 () Unit!16193)

(declare-fun lemmaFilterConcat!14 (List!10602 List!10602 Int) Unit!16193)

(assert (=> b!1100241 (= lt!371738 (lemmaFilterConcat!14 (list!3813 (left!9137 (c!186651 objs!8))) (list!3813 (right!9467 (c!186651 objs!8))) lambda!43236))))

(declare-fun e!696756 () Conc!3271)

(declare-fun ++!2877 (Conc!3271 Conc!3271) Conc!3271)

(assert (=> b!1100241 (= e!696756 (++!2877 (filter!327 (left!9137 (c!186651 objs!8)) lambda!43236) (filter!327 (right!9467 (c!186651 objs!8)) lambda!43236)))))

(declare-fun b!1100242 () Bool)

(assert (=> b!1100242 (= e!696754 e!696756)))

(declare-fun c!186771 () Bool)

(assert (=> b!1100242 (= c!186771 ((_ is Leaf!5184) (c!186651 objs!8)))))

(declare-fun b!1100243 () Bool)

(declare-fun e!696753 () Conc!3271)

(assert (=> b!1100243 (= e!696753 Empty!3271)))

(declare-fun b!1100244 () Bool)

(declare-fun c!186772 () Bool)

(declare-fun lt!371739 () IArray!6547)

(declare-fun size!8216 (IArray!6547) Int)

(assert (=> b!1100244 (= c!186772 (= (size!8216 lt!371739) 0))))

(declare-fun filter!329 (IArray!6547 Int) IArray!6547)

(assert (=> b!1100244 (= lt!371739 (filter!329 (xs!5964 (c!186651 objs!8)) lambda!43236))))

(assert (=> b!1100244 (= e!696756 e!696753)))

(declare-fun b!1100245 () Bool)

(assert (=> b!1100245 (= e!696753 (Leaf!5184 lt!371739 (size!8216 lt!371739)))))

(declare-fun b!1100246 () Bool)

(assert (=> b!1100246 (= e!696755 (= (list!3813 lt!371737) (filter!324 (list!3813 (c!186651 objs!8)) lambda!43236)))))

(assert (= (and d!311083 c!186773) b!1100240))

(assert (= (and d!311083 (not c!186773)) b!1100242))

(assert (= (and b!1100242 c!186771) b!1100244))

(assert (= (and b!1100242 (not c!186771)) b!1100241))

(assert (= (and b!1100244 c!186772) b!1100243))

(assert (= (and b!1100244 (not c!186772)) b!1100245))

(assert (= (and d!311083 res!488090) b!1100246))

(declare-fun m!1256149 () Bool)

(assert (=> b!1100246 m!1256149))

(assert (=> b!1100246 m!1255663))

(assert (=> b!1100246 m!1255663))

(declare-fun m!1256151 () Bool)

(assert (=> b!1100246 m!1256151))

(declare-fun m!1256153 () Bool)

(assert (=> b!1100245 m!1256153))

(declare-fun m!1256155 () Bool)

(assert (=> b!1100241 m!1256155))

(declare-fun m!1256157 () Bool)

(assert (=> b!1100241 m!1256157))

(declare-fun m!1256159 () Bool)

(assert (=> b!1100241 m!1256159))

(declare-fun m!1256161 () Bool)

(assert (=> b!1100241 m!1256161))

(assert (=> b!1100241 m!1256157))

(assert (=> b!1100241 m!1256159))

(declare-fun m!1256163 () Bool)

(assert (=> b!1100241 m!1256163))

(assert (=> b!1100241 m!1256155))

(assert (=> b!1100241 m!1256161))

(declare-fun m!1256165 () Bool)

(assert (=> b!1100241 m!1256165))

(declare-fun m!1256167 () Bool)

(assert (=> d!311083 m!1256167))

(assert (=> d!311083 m!1255703))

(assert (=> b!1100244 m!1256153))

(declare-fun m!1256169 () Bool)

(assert (=> b!1100244 m!1256169))

(assert (=> d!310867 d!311083))

(declare-fun b!1100247 () Bool)

(declare-fun e!696758 () List!10602)

(declare-fun call!80422 () List!10602)

(assert (=> b!1100247 (= e!696758 call!80422)))

(declare-fun b!1100248 () Bool)

(declare-fun e!696757 () List!10602)

(assert (=> b!1100248 (= e!696757 e!696758)))

(declare-fun c!186774 () Bool)

(assert (=> b!1100248 (= c!186774 (dynLambda!4658 lambda!43234 (h!15987 (t!103834 lt!371564))))))

(declare-fun bm!80417 () Bool)

(assert (=> bm!80417 (= call!80422 (filter!324 (t!103834 (t!103834 lt!371564)) lambda!43234))))

(declare-fun b!1100250 () Bool)

(assert (=> b!1100250 (= e!696758 (Cons!10586 (h!15987 (t!103834 lt!371564)) call!80422))))

(declare-fun b!1100251 () Bool)

(declare-fun e!696759 () Bool)

(declare-fun lt!371740 () List!10602)

(assert (=> b!1100251 (= e!696759 (forall!2424 lt!371740 lambda!43234))))

(declare-fun b!1100252 () Bool)

(declare-fun res!488091 () Bool)

(assert (=> b!1100252 (=> (not res!488091) (not e!696759))))

(assert (=> b!1100252 (= res!488091 (= ((_ map implies) (content!1532 lt!371740) (content!1532 (t!103834 lt!371564))) ((as const (InoxSet tuple2!11754)) true)))))

(declare-fun b!1100249 () Bool)

(assert (=> b!1100249 (= e!696757 Nil!10586)))

(declare-fun d!311085 () Bool)

(assert (=> d!311085 e!696759))

(declare-fun res!488092 () Bool)

(assert (=> d!311085 (=> (not res!488092) (not e!696759))))

(assert (=> d!311085 (= res!488092 (<= (size!8212 lt!371740) (size!8212 (t!103834 lt!371564))))))

(assert (=> d!311085 (= lt!371740 e!696757)))

(declare-fun c!186775 () Bool)

(assert (=> d!311085 (= c!186775 ((_ is Nil!10586) (t!103834 lt!371564)))))

(assert (=> d!311085 (= (filter!324 (t!103834 lt!371564) lambda!43234) lt!371740)))

(assert (= (and d!311085 c!186775) b!1100249))

(assert (= (and d!311085 (not c!186775)) b!1100248))

(assert (= (and b!1100248 c!186774) b!1100250))

(assert (= (and b!1100248 (not c!186774)) b!1100247))

(assert (= (or b!1100250 b!1100247) bm!80417))

(assert (= (and d!311085 res!488092) b!1100252))

(assert (= (and b!1100252 res!488091) b!1100251))

(declare-fun b_lambda!32077 () Bool)

(assert (=> (not b_lambda!32077) (not b!1100248)))

(declare-fun m!1256171 () Bool)

(assert (=> b!1100248 m!1256171))

(declare-fun m!1256173 () Bool)

(assert (=> d!311085 m!1256173))

(assert (=> d!311085 m!1255563))

(declare-fun m!1256175 () Bool)

(assert (=> b!1100251 m!1256175))

(declare-fun m!1256177 () Bool)

(assert (=> b!1100252 m!1256177))

(declare-fun m!1256179 () Bool)

(assert (=> b!1100252 m!1256179))

(declare-fun m!1256181 () Bool)

(assert (=> bm!80417 m!1256181))

(assert (=> bm!80402 d!311085))

(assert (=> b!1099775 d!310791))

(declare-fun d!311087 () Bool)

(assert (=> d!311087 (= (list!3811 lt!371634) (list!3813 (c!186651 lt!371634)))))

(declare-fun bs!259361 () Bool)

(assert (= bs!259361 d!311087))

(declare-fun m!1256183 () Bool)

(assert (=> bs!259361 m!1256183))

(assert (=> b!1099770 d!311087))

(declare-fun b!1100253 () Bool)

(declare-fun e!696761 () List!10602)

(declare-fun call!80423 () List!10602)

(assert (=> b!1100253 (= e!696761 call!80423)))

(declare-fun b!1100254 () Bool)

(declare-fun e!696760 () List!10602)

(assert (=> b!1100254 (= e!696760 e!696761)))

(declare-fun c!186776 () Bool)

(assert (=> b!1100254 (= c!186776 (dynLambda!4658 lambda!43236 (h!15987 (list!3811 objs!8))))))

(declare-fun bm!80418 () Bool)

(assert (=> bm!80418 (= call!80423 (filter!324 (t!103834 (list!3811 objs!8)) lambda!43236))))

(declare-fun b!1100256 () Bool)

(assert (=> b!1100256 (= e!696761 (Cons!10586 (h!15987 (list!3811 objs!8)) call!80423))))

(declare-fun b!1100257 () Bool)

(declare-fun e!696762 () Bool)

(declare-fun lt!371741 () List!10602)

(assert (=> b!1100257 (= e!696762 (forall!2424 lt!371741 lambda!43236))))

(declare-fun b!1100258 () Bool)

(declare-fun res!488093 () Bool)

(assert (=> b!1100258 (=> (not res!488093) (not e!696762))))

(assert (=> b!1100258 (= res!488093 (= ((_ map implies) (content!1532 lt!371741) (content!1532 (list!3811 objs!8))) ((as const (InoxSet tuple2!11754)) true)))))

(declare-fun b!1100255 () Bool)

(assert (=> b!1100255 (= e!696760 Nil!10586)))

(declare-fun d!311089 () Bool)

(assert (=> d!311089 e!696762))

(declare-fun res!488094 () Bool)

(assert (=> d!311089 (=> (not res!488094) (not e!696762))))

(assert (=> d!311089 (= res!488094 (<= (size!8212 lt!371741) (size!8212 (list!3811 objs!8))))))

(assert (=> d!311089 (= lt!371741 e!696760)))

(declare-fun c!186777 () Bool)

(assert (=> d!311089 (= c!186777 ((_ is Nil!10586) (list!3811 objs!8)))))

(assert (=> d!311089 (= (filter!324 (list!3811 objs!8) lambda!43236) lt!371741)))

(assert (= (and d!311089 c!186777) b!1100255))

(assert (= (and d!311089 (not c!186777)) b!1100254))

(assert (= (and b!1100254 c!186776) b!1100256))

(assert (= (and b!1100254 (not c!186776)) b!1100253))

(assert (= (or b!1100256 b!1100253) bm!80418))

(assert (= (and d!311089 res!488094) b!1100258))

(assert (= (and b!1100258 res!488093) b!1100257))

(declare-fun b_lambda!32079 () Bool)

(assert (=> (not b_lambda!32079) (not b!1100254)))

(declare-fun m!1256185 () Bool)

(assert (=> b!1100254 m!1256185))

(declare-fun m!1256187 () Bool)

(assert (=> d!311089 m!1256187))

(assert (=> d!311089 m!1255437))

(assert (=> d!311089 m!1255473))

(declare-fun m!1256189 () Bool)

(assert (=> b!1100257 m!1256189))

(declare-fun m!1256191 () Bool)

(assert (=> b!1100258 m!1256191))

(assert (=> b!1100258 m!1255437))

(assert (=> b!1100258 m!1256093))

(declare-fun m!1256193 () Bool)

(assert (=> bm!80418 m!1256193))

(assert (=> b!1099770 d!311089))

(assert (=> b!1099770 d!310879))

(declare-fun d!311091 () Bool)

(declare-fun lt!371742 () Bool)

(assert (=> d!311091 (= lt!371742 (select (content!1532 (list!3811 lt!371567)) lt!371560))))

(declare-fun e!696764 () Bool)

(assert (=> d!311091 (= lt!371742 e!696764)))

(declare-fun res!488096 () Bool)

(assert (=> d!311091 (=> (not res!488096) (not e!696764))))

(assert (=> d!311091 (= res!488096 ((_ is Cons!10586) (list!3811 lt!371567)))))

(assert (=> d!311091 (= (contains!1848 (list!3811 lt!371567) lt!371560) lt!371742)))

(declare-fun b!1100259 () Bool)

(declare-fun e!696763 () Bool)

(assert (=> b!1100259 (= e!696764 e!696763)))

(declare-fun res!488095 () Bool)

(assert (=> b!1100259 (=> res!488095 e!696763)))

(assert (=> b!1100259 (= res!488095 (= (h!15987 (list!3811 lt!371567)) lt!371560))))

(declare-fun b!1100260 () Bool)

(assert (=> b!1100260 (= e!696763 (contains!1848 (t!103834 (list!3811 lt!371567)) lt!371560))))

(assert (= (and d!311091 res!488096) b!1100259))

(assert (= (and b!1100259 (not res!488095)) b!1100260))

(assert (=> d!311091 m!1255423))

(declare-fun m!1256195 () Bool)

(assert (=> d!311091 m!1256195))

(declare-fun m!1256197 () Bool)

(assert (=> d!311091 m!1256197))

(declare-fun m!1256199 () Bool)

(assert (=> b!1100260 m!1256199))

(assert (=> d!310885 d!311091))

(assert (=> d!310885 d!310909))

(declare-fun b!1100261 () Bool)

(declare-fun e!696765 () Bool)

(declare-fun e!696766 () Bool)

(assert (=> b!1100261 (= e!696765 e!696766)))

(declare-fun c!186778 () Bool)

(assert (=> b!1100261 (= c!186778 ((_ is Leaf!5184) (c!186651 lt!371567)))))

(declare-fun d!311093 () Bool)

(declare-fun lt!371743 () Bool)

(assert (=> d!311093 (= lt!371743 (contains!1848 (list!3813 (c!186651 lt!371567)) lt!371560))))

(assert (=> d!311093 (= lt!371743 e!696765)))

(declare-fun res!488098 () Bool)

(assert (=> d!311093 (=> (not res!488098) (not e!696765))))

(assert (=> d!311093 (= res!488098 (not ((_ is Empty!3271) (c!186651 lt!371567))))))

(assert (=> d!311093 (= (contains!1849 (c!186651 lt!371567) lt!371560) lt!371743)))

(declare-fun b!1100264 () Bool)

(declare-fun e!696767 () Bool)

(assert (=> b!1100264 (= e!696767 (contains!1849 (right!9467 (c!186651 lt!371567)) lt!371560))))

(declare-fun b!1100263 () Bool)

(assert (=> b!1100263 (= e!696766 e!696767)))

(declare-fun res!488097 () Bool)

(assert (=> b!1100263 (= res!488097 (contains!1849 (left!9137 (c!186651 lt!371567)) lt!371560))))

(assert (=> b!1100263 (=> res!488097 e!696767)))

(declare-fun b!1100262 () Bool)

(assert (=> b!1100262 (= e!696766 (contains!1851 (xs!5964 (c!186651 lt!371567)) lt!371560))))

(assert (= (and d!311093 res!488098) b!1100261))

(assert (= (and b!1100261 c!186778) b!1100262))

(assert (= (and b!1100261 (not c!186778)) b!1100263))

(assert (= (and b!1100263 (not res!488097)) b!1100264))

(assert (=> d!311093 m!1255719))

(assert (=> d!311093 m!1255719))

(declare-fun m!1256201 () Bool)

(assert (=> d!311093 m!1256201))

(declare-fun m!1256203 () Bool)

(assert (=> b!1100264 m!1256203))

(declare-fun m!1256205 () Bool)

(assert (=> b!1100263 m!1256205))

(declare-fun m!1256207 () Bool)

(assert (=> b!1100262 m!1256207))

(assert (=> d!310885 d!311093))

(declare-fun d!311095 () Bool)

(declare-fun res!488103 () Bool)

(declare-fun e!696772 () Bool)

(assert (=> d!311095 (=> res!488103 e!696772)))

(assert (=> d!311095 (= res!488103 ((_ is Nil!10586) (list!3811 objs!8)))))

(assert (=> d!311095 (= (forall!2424 (list!3811 objs!8) lambda!43234) e!696772)))

(declare-fun b!1100269 () Bool)

(declare-fun e!696773 () Bool)

(assert (=> b!1100269 (= e!696772 e!696773)))

(declare-fun res!488104 () Bool)

(assert (=> b!1100269 (=> (not res!488104) (not e!696773))))

(assert (=> b!1100269 (= res!488104 (dynLambda!4658 lambda!43234 (h!15987 (list!3811 objs!8))))))

(declare-fun b!1100270 () Bool)

(assert (=> b!1100270 (= e!696773 (forall!2424 (t!103834 (list!3811 objs!8)) lambda!43234))))

(assert (= (and d!311095 (not res!488103)) b!1100269))

(assert (= (and b!1100269 res!488104) b!1100270))

(declare-fun b_lambda!32081 () Bool)

(assert (=> (not b_lambda!32081) (not b!1100269)))

(assert (=> b!1100269 m!1256085))

(declare-fun m!1256209 () Bool)

(assert (=> b!1100270 m!1256209))

(assert (=> d!310899 d!311095))

(assert (=> d!310899 d!310879))

(declare-fun b!1100282 () Bool)

(declare-fun e!696780 () Bool)

(assert (=> b!1100282 (= e!696780 (forall!2425 (right!9467 (c!186651 objs!8)) lambda!43234))))

(declare-fun d!311097 () Bool)

(declare-fun lt!371749 () Bool)

(assert (=> d!311097 (= lt!371749 (forall!2424 (list!3813 (c!186651 objs!8)) lambda!43234))))

(declare-fun e!696781 () Bool)

(assert (=> d!311097 (= lt!371749 e!696781)))

(declare-fun res!488109 () Bool)

(assert (=> d!311097 (=> res!488109 e!696781)))

(assert (=> d!311097 (= res!488109 ((_ is Empty!3271) (c!186651 objs!8)))))

(assert (=> d!311097 (= (forall!2425 (c!186651 objs!8) lambda!43234) lt!371749)))

(declare-fun b!1100279 () Bool)

(declare-fun e!696782 () Bool)

(assert (=> b!1100279 (= e!696781 e!696782)))

(declare-fun c!186781 () Bool)

(assert (=> b!1100279 (= c!186781 ((_ is Leaf!5184) (c!186651 objs!8)))))

(declare-fun b!1100281 () Bool)

(assert (=> b!1100281 (= e!696782 e!696780)))

(declare-fun lt!371748 () Unit!16193)

(declare-fun lemmaForallConcat!68 (List!10602 List!10602 Int) Unit!16193)

(assert (=> b!1100281 (= lt!371748 (lemmaForallConcat!68 (list!3813 (left!9137 (c!186651 objs!8))) (list!3813 (right!9467 (c!186651 objs!8))) lambda!43234))))

(declare-fun res!488110 () Bool)

(assert (=> b!1100281 (= res!488110 (forall!2425 (left!9137 (c!186651 objs!8)) lambda!43234))))

(assert (=> b!1100281 (=> (not res!488110) (not e!696780))))

(declare-fun b!1100280 () Bool)

(declare-fun forall!2427 (IArray!6547 Int) Bool)

(assert (=> b!1100280 (= e!696782 (forall!2427 (xs!5964 (c!186651 objs!8)) lambda!43234))))

(assert (= (and d!311097 (not res!488109)) b!1100279))

(assert (= (and b!1100279 c!186781) b!1100280))

(assert (= (and b!1100279 (not c!186781)) b!1100281))

(assert (= (and b!1100281 res!488110) b!1100282))

(declare-fun m!1256211 () Bool)

(assert (=> b!1100282 m!1256211))

(assert (=> d!311097 m!1255663))

(assert (=> d!311097 m!1255663))

(declare-fun m!1256213 () Bool)

(assert (=> d!311097 m!1256213))

(assert (=> b!1100281 m!1256155))

(assert (=> b!1100281 m!1256161))

(assert (=> b!1100281 m!1256155))

(assert (=> b!1100281 m!1256161))

(declare-fun m!1256215 () Bool)

(assert (=> b!1100281 m!1256215))

(declare-fun m!1256217 () Bool)

(assert (=> b!1100281 m!1256217))

(declare-fun m!1256219 () Bool)

(assert (=> b!1100280 m!1256219))

(assert (=> d!310899 d!311097))

(declare-fun b!1100283 () Bool)

(declare-fun e!696784 () List!10602)

(declare-fun call!80424 () List!10602)

(assert (=> b!1100283 (= e!696784 call!80424)))

(declare-fun b!1100284 () Bool)

(declare-fun e!696783 () List!10602)

(assert (=> b!1100284 (= e!696783 e!696784)))

(declare-fun c!186782 () Bool)

(assert (=> b!1100284 (= c!186782 (dynLambda!4658 lambda!43236 (h!15987 (t!103834 lt!371564))))))

(declare-fun bm!80419 () Bool)

(assert (=> bm!80419 (= call!80424 (filter!324 (t!103834 (t!103834 lt!371564)) lambda!43236))))

(declare-fun b!1100286 () Bool)

(assert (=> b!1100286 (= e!696784 (Cons!10586 (h!15987 (t!103834 lt!371564)) call!80424))))

(declare-fun b!1100287 () Bool)

(declare-fun e!696785 () Bool)

(declare-fun lt!371750 () List!10602)

(assert (=> b!1100287 (= e!696785 (forall!2424 lt!371750 lambda!43236))))

(declare-fun b!1100288 () Bool)

(declare-fun res!488111 () Bool)

(assert (=> b!1100288 (=> (not res!488111) (not e!696785))))

(assert (=> b!1100288 (= res!488111 (= ((_ map implies) (content!1532 lt!371750) (content!1532 (t!103834 lt!371564))) ((as const (InoxSet tuple2!11754)) true)))))

(declare-fun b!1100285 () Bool)

(assert (=> b!1100285 (= e!696783 Nil!10586)))

(declare-fun d!311099 () Bool)

(assert (=> d!311099 e!696785))

(declare-fun res!488112 () Bool)

(assert (=> d!311099 (=> (not res!488112) (not e!696785))))

(assert (=> d!311099 (= res!488112 (<= (size!8212 lt!371750) (size!8212 (t!103834 lt!371564))))))

(assert (=> d!311099 (= lt!371750 e!696783)))

(declare-fun c!186783 () Bool)

(assert (=> d!311099 (= c!186783 ((_ is Nil!10586) (t!103834 lt!371564)))))

(assert (=> d!311099 (= (filter!324 (t!103834 lt!371564) lambda!43236) lt!371750)))

(assert (= (and d!311099 c!186783) b!1100285))

(assert (= (and d!311099 (not c!186783)) b!1100284))

(assert (= (and b!1100284 c!186782) b!1100286))

(assert (= (and b!1100284 (not c!186782)) b!1100283))

(assert (= (or b!1100286 b!1100283) bm!80419))

(assert (= (and d!311099 res!488112) b!1100288))

(assert (= (and b!1100288 res!488111) b!1100287))

(declare-fun b_lambda!32083 () Bool)

(assert (=> (not b_lambda!32083) (not b!1100284)))

(declare-fun m!1256221 () Bool)

(assert (=> b!1100284 m!1256221))

(declare-fun m!1256223 () Bool)

(assert (=> d!311099 m!1256223))

(assert (=> d!311099 m!1255563))

(declare-fun m!1256225 () Bool)

(assert (=> b!1100287 m!1256225))

(declare-fun m!1256227 () Bool)

(assert (=> b!1100288 m!1256227))

(assert (=> b!1100288 m!1256179))

(declare-fun m!1256229 () Bool)

(assert (=> bm!80419 m!1256229))

(assert (=> bm!80407 d!311099))

(declare-fun d!311101 () Bool)

(declare-fun c!186786 () Bool)

(assert (=> d!311101 (= c!186786 ((_ is Nil!10586) lt!371613))))

(declare-fun e!696788 () (InoxSet tuple2!11754))

(assert (=> d!311101 (= (content!1532 lt!371613) e!696788)))

(declare-fun b!1100293 () Bool)

(assert (=> b!1100293 (= e!696788 ((as const (Array tuple2!11754 Bool)) false))))

(declare-fun b!1100294 () Bool)

(assert (=> b!1100294 (= e!696788 ((_ map or) (store ((as const (Array tuple2!11754 Bool)) false) (h!15987 lt!371613) true) (content!1532 (t!103834 lt!371613))))))

(assert (= (and d!311101 c!186786) b!1100293))

(assert (= (and d!311101 (not c!186786)) b!1100294))

(declare-fun m!1256231 () Bool)

(assert (=> b!1100294 m!1256231))

(declare-fun m!1256233 () Bool)

(assert (=> b!1100294 m!1256233))

(assert (=> b!1099688 d!311101))

(declare-fun d!311103 () Bool)

(declare-fun c!186787 () Bool)

(assert (=> d!311103 (= c!186787 ((_ is Nil!10586) lt!371564))))

(declare-fun e!696789 () (InoxSet tuple2!11754))

(assert (=> d!311103 (= (content!1532 lt!371564) e!696789)))

(declare-fun b!1100295 () Bool)

(assert (=> b!1100295 (= e!696789 ((as const (Array tuple2!11754 Bool)) false))))

(declare-fun b!1100296 () Bool)

(assert (=> b!1100296 (= e!696789 ((_ map or) (store ((as const (Array tuple2!11754 Bool)) false) (h!15987 lt!371564) true) (content!1532 (t!103834 lt!371564))))))

(assert (= (and d!311103 c!186787) b!1100295))

(assert (= (and d!311103 (not c!186787)) b!1100296))

(declare-fun m!1256235 () Bool)

(assert (=> b!1100296 m!1256235))

(assert (=> b!1100296 m!1256179))

(assert (=> b!1099688 d!311103))

(declare-fun d!311105 () Bool)

(declare-fun res!488113 () Bool)

(declare-fun e!696790 () Bool)

(assert (=> d!311105 (=> res!488113 e!696790)))

(assert (=> d!311105 (= res!488113 ((_ is Nil!10586) lt!371643))))

(assert (=> d!311105 (= (forall!2424 lt!371643 lambda!43236) e!696790)))

(declare-fun b!1100297 () Bool)

(declare-fun e!696791 () Bool)

(assert (=> b!1100297 (= e!696790 e!696791)))

(declare-fun res!488114 () Bool)

(assert (=> b!1100297 (=> (not res!488114) (not e!696791))))

(assert (=> b!1100297 (= res!488114 (dynLambda!4658 lambda!43236 (h!15987 lt!371643)))))

(declare-fun b!1100298 () Bool)

(assert (=> b!1100298 (= e!696791 (forall!2424 (t!103834 lt!371643) lambda!43236))))

(assert (= (and d!311105 (not res!488113)) b!1100297))

(assert (= (and b!1100297 res!488114) b!1100298))

(declare-fun b_lambda!32085 () Bool)

(assert (=> (not b_lambda!32085) (not b!1100297)))

(declare-fun m!1256237 () Bool)

(assert (=> b!1100297 m!1256237))

(declare-fun m!1256239 () Bool)

(assert (=> b!1100298 m!1256239))

(assert (=> b!1099783 d!311105))

(declare-fun d!311107 () Bool)

(declare-fun lt!371751 () Int)

(assert (=> d!311107 (>= lt!371751 0)))

(declare-fun e!696792 () Int)

(assert (=> d!311107 (= lt!371751 e!696792)))

(declare-fun c!186788 () Bool)

(assert (=> d!311107 (= c!186788 ((_ is Nil!10586) (t!103834 (filter!324 lt!371564 lambda!43236))))))

(assert (=> d!311107 (= (size!8212 (t!103834 (filter!324 lt!371564 lambda!43236))) lt!371751)))

(declare-fun b!1100299 () Bool)

(assert (=> b!1100299 (= e!696792 0)))

(declare-fun b!1100300 () Bool)

(assert (=> b!1100300 (= e!696792 (+ 1 (size!8212 (t!103834 (t!103834 (filter!324 lt!371564 lambda!43236))))))))

(assert (= (and d!311107 c!186788) b!1100299))

(assert (= (and d!311107 (not c!186788)) b!1100300))

(declare-fun m!1256241 () Bool)

(assert (=> b!1100300 m!1256241))

(assert (=> b!1099778 d!311107))

(declare-fun d!311109 () Bool)

(declare-fun lt!371752 () Int)

(assert (=> d!311109 (>= lt!371752 0)))

(declare-fun e!696793 () Int)

(assert (=> d!311109 (= lt!371752 e!696793)))

(declare-fun c!186789 () Bool)

(assert (=> d!311109 (= c!186789 ((_ is Nil!10586) lt!371643))))

(assert (=> d!311109 (= (size!8212 lt!371643) lt!371752)))

(declare-fun b!1100301 () Bool)

(assert (=> b!1100301 (= e!696793 0)))

(declare-fun b!1100302 () Bool)

(assert (=> b!1100302 (= e!696793 (+ 1 (size!8212 (t!103834 lt!371643))))))

(assert (= (and d!311109 c!186789) b!1100301))

(assert (= (and d!311109 (not c!186789)) b!1100302))

(declare-fun m!1256243 () Bool)

(assert (=> b!1100302 m!1256243))

(assert (=> d!310883 d!311109))

(assert (=> d!310883 d!310831))

(declare-fun d!311111 () Bool)

(declare-fun res!488119 () Bool)

(declare-fun e!696794 () Bool)

(assert (=> d!311111 (=> res!488119 e!696794)))

(assert (=> d!311111 (= res!488119 (not ((_ is Node!3271) (filter!327 (c!186651 objs!8) lambda!43234))))))

(assert (=> d!311111 (= (isBalanced!906 (filter!327 (c!186651 objs!8) lambda!43234)) e!696794)))

(declare-fun b!1100303 () Bool)

(declare-fun e!696795 () Bool)

(assert (=> b!1100303 (= e!696794 e!696795)))

(declare-fun res!488117 () Bool)

(assert (=> b!1100303 (=> (not res!488117) (not e!696795))))

(assert (=> b!1100303 (= res!488117 (<= (- 1) (- (height!430 (left!9137 (filter!327 (c!186651 objs!8) lambda!43234))) (height!430 (right!9467 (filter!327 (c!186651 objs!8) lambda!43234))))))))

(declare-fun b!1100304 () Bool)

(declare-fun res!488118 () Bool)

(assert (=> b!1100304 (=> (not res!488118) (not e!696795))))

(assert (=> b!1100304 (= res!488118 (<= (- (height!430 (left!9137 (filter!327 (c!186651 objs!8) lambda!43234))) (height!430 (right!9467 (filter!327 (c!186651 objs!8) lambda!43234)))) 1))))

(declare-fun b!1100305 () Bool)

(assert (=> b!1100305 (= e!696795 (not (isEmpty!6690 (right!9467 (filter!327 (c!186651 objs!8) lambda!43234)))))))

(declare-fun b!1100306 () Bool)

(declare-fun res!488120 () Bool)

(assert (=> b!1100306 (=> (not res!488120) (not e!696795))))

(assert (=> b!1100306 (= res!488120 (isBalanced!906 (left!9137 (filter!327 (c!186651 objs!8) lambda!43234))))))

(declare-fun b!1100307 () Bool)

(declare-fun res!488116 () Bool)

(assert (=> b!1100307 (=> (not res!488116) (not e!696795))))

(assert (=> b!1100307 (= res!488116 (isBalanced!906 (right!9467 (filter!327 (c!186651 objs!8) lambda!43234))))))

(declare-fun b!1100308 () Bool)

(declare-fun res!488115 () Bool)

(assert (=> b!1100308 (=> (not res!488115) (not e!696795))))

(assert (=> b!1100308 (= res!488115 (not (isEmpty!6690 (left!9137 (filter!327 (c!186651 objs!8) lambda!43234)))))))

(assert (= (and d!311111 (not res!488119)) b!1100303))

(assert (= (and b!1100303 res!488117) b!1100304))

(assert (= (and b!1100304 res!488118) b!1100306))

(assert (= (and b!1100306 res!488120) b!1100307))

(assert (= (and b!1100307 res!488116) b!1100308))

(assert (= (and b!1100308 res!488115) b!1100305))

(declare-fun m!1256245 () Bool)

(assert (=> b!1100304 m!1256245))

(declare-fun m!1256247 () Bool)

(assert (=> b!1100304 m!1256247))

(declare-fun m!1256249 () Bool)

(assert (=> b!1100308 m!1256249))

(declare-fun m!1256251 () Bool)

(assert (=> b!1100305 m!1256251))

(assert (=> b!1100303 m!1256245))

(assert (=> b!1100303 m!1256247))

(declare-fun m!1256253 () Bool)

(assert (=> b!1100307 m!1256253))

(declare-fun m!1256255 () Bool)

(assert (=> b!1100306 m!1256255))

(assert (=> d!310873 d!311111))

(declare-fun b!1100309 () Bool)

(declare-fun e!696797 () Conc!3271)

(assert (=> b!1100309 (= e!696797 (c!186651 objs!8))))

(declare-fun d!311113 () Bool)

(declare-fun e!696798 () Bool)

(assert (=> d!311113 e!696798))

(declare-fun res!488121 () Bool)

(assert (=> d!311113 (=> (not res!488121) (not e!696798))))

(declare-fun lt!371753 () Conc!3271)

(assert (=> d!311113 (= res!488121 (isBalanced!906 lt!371753))))

(assert (=> d!311113 (= lt!371753 e!696797)))

(declare-fun c!186792 () Bool)

(assert (=> d!311113 (= c!186792 ((_ is Empty!3271) (c!186651 objs!8)))))

(assert (=> d!311113 (isBalanced!906 (c!186651 objs!8))))

(assert (=> d!311113 (= (filter!327 (c!186651 objs!8) lambda!43234) lt!371753)))

(declare-fun b!1100310 () Bool)

(declare-fun lt!371754 () Unit!16193)

(assert (=> b!1100310 (= lt!371754 (lemmaFilterConcat!14 (list!3813 (left!9137 (c!186651 objs!8))) (list!3813 (right!9467 (c!186651 objs!8))) lambda!43234))))

(declare-fun e!696799 () Conc!3271)

(assert (=> b!1100310 (= e!696799 (++!2877 (filter!327 (left!9137 (c!186651 objs!8)) lambda!43234) (filter!327 (right!9467 (c!186651 objs!8)) lambda!43234)))))

(declare-fun b!1100311 () Bool)

(assert (=> b!1100311 (= e!696797 e!696799)))

(declare-fun c!186790 () Bool)

(assert (=> b!1100311 (= c!186790 ((_ is Leaf!5184) (c!186651 objs!8)))))

(declare-fun b!1100312 () Bool)

(declare-fun e!696796 () Conc!3271)

(assert (=> b!1100312 (= e!696796 Empty!3271)))

(declare-fun b!1100313 () Bool)

(declare-fun c!186791 () Bool)

(declare-fun lt!371755 () IArray!6547)

(assert (=> b!1100313 (= c!186791 (= (size!8216 lt!371755) 0))))

(assert (=> b!1100313 (= lt!371755 (filter!329 (xs!5964 (c!186651 objs!8)) lambda!43234))))

(assert (=> b!1100313 (= e!696799 e!696796)))

(declare-fun b!1100314 () Bool)

(assert (=> b!1100314 (= e!696796 (Leaf!5184 lt!371755 (size!8216 lt!371755)))))

(declare-fun b!1100315 () Bool)

(assert (=> b!1100315 (= e!696798 (= (list!3813 lt!371753) (filter!324 (list!3813 (c!186651 objs!8)) lambda!43234)))))

(assert (= (and d!311113 c!186792) b!1100309))

(assert (= (and d!311113 (not c!186792)) b!1100311))

(assert (= (and b!1100311 c!186790) b!1100313))

(assert (= (and b!1100311 (not c!186790)) b!1100310))

(assert (= (and b!1100313 c!186791) b!1100312))

(assert (= (and b!1100313 (not c!186791)) b!1100314))

(assert (= (and d!311113 res!488121) b!1100315))

(declare-fun m!1256257 () Bool)

(assert (=> b!1100315 m!1256257))

(assert (=> b!1100315 m!1255663))

(assert (=> b!1100315 m!1255663))

(declare-fun m!1256259 () Bool)

(assert (=> b!1100315 m!1256259))

(declare-fun m!1256261 () Bool)

(assert (=> b!1100314 m!1256261))

(assert (=> b!1100310 m!1256155))

(declare-fun m!1256263 () Bool)

(assert (=> b!1100310 m!1256263))

(declare-fun m!1256265 () Bool)

(assert (=> b!1100310 m!1256265))

(assert (=> b!1100310 m!1256161))

(assert (=> b!1100310 m!1256263))

(assert (=> b!1100310 m!1256265))

(declare-fun m!1256267 () Bool)

(assert (=> b!1100310 m!1256267))

(assert (=> b!1100310 m!1256155))

(assert (=> b!1100310 m!1256161))

(declare-fun m!1256269 () Bool)

(assert (=> b!1100310 m!1256269))

(declare-fun m!1256271 () Bool)

(assert (=> d!311113 m!1256271))

(assert (=> d!311113 m!1255703))

(assert (=> b!1100313 m!1256261))

(declare-fun m!1256273 () Bool)

(assert (=> b!1100313 m!1256273))

(assert (=> d!310873 d!311113))

(declare-fun d!311115 () Bool)

(declare-fun lt!371756 () Int)

(assert (=> d!311115 (>= lt!371756 0)))

(declare-fun e!696800 () Int)

(assert (=> d!311115 (= lt!371756 e!696800)))

(declare-fun c!186793 () Bool)

(assert (=> d!311115 (= c!186793 ((_ is Nil!10586) (t!103834 (filter!324 lt!371564 lambda!43234))))))

(assert (=> d!311115 (= (size!8212 (t!103834 (filter!324 lt!371564 lambda!43234))) lt!371756)))

(declare-fun b!1100316 () Bool)

(assert (=> b!1100316 (= e!696800 0)))

(declare-fun b!1100317 () Bool)

(assert (=> b!1100317 (= e!696800 (+ 1 (size!8212 (t!103834 (t!103834 (filter!324 lt!371564 lambda!43234))))))))

(assert (= (and d!311115 c!186793) b!1100316))

(assert (= (and d!311115 (not c!186793)) b!1100317))

(declare-fun m!1256275 () Bool)

(assert (=> b!1100317 m!1256275))

(assert (=> b!1099651 d!311115))

(declare-fun d!311117 () Bool)

(assert (=> d!311117 (dynLambda!4658 lambda!43236 lt!371560)))

(assert (=> d!311117 true))

(declare-fun _$7!685 () Unit!16193)

(assert (=> d!311117 (= (choose!7091 lt!371564 lambda!43236 lt!371560) _$7!685)))

(declare-fun b_lambda!32087 () Bool)

(assert (=> (not b_lambda!32087) (not d!311117)))

(declare-fun bs!259362 () Bool)

(assert (= bs!259362 d!311117))

(assert (=> bs!259362 m!1255693))

(assert (=> d!310893 d!311117))

(declare-fun d!311119 () Bool)

(declare-fun res!488122 () Bool)

(declare-fun e!696801 () Bool)

(assert (=> d!311119 (=> res!488122 e!696801)))

(assert (=> d!311119 (= res!488122 ((_ is Nil!10586) lt!371564))))

(assert (=> d!311119 (= (forall!2424 lt!371564 lambda!43236) e!696801)))

(declare-fun b!1100318 () Bool)

(declare-fun e!696802 () Bool)

(assert (=> b!1100318 (= e!696801 e!696802)))

(declare-fun res!488123 () Bool)

(assert (=> b!1100318 (=> (not res!488123) (not e!696802))))

(assert (=> b!1100318 (= res!488123 (dynLambda!4658 lambda!43236 (h!15987 lt!371564)))))

(declare-fun b!1100319 () Bool)

(assert (=> b!1100319 (= e!696802 (forall!2424 (t!103834 lt!371564) lambda!43236))))

(assert (= (and d!311119 (not res!488122)) b!1100318))

(assert (= (and b!1100318 res!488123) b!1100319))

(declare-fun b_lambda!32089 () Bool)

(assert (=> (not b_lambda!32089) (not b!1100318)))

(assert (=> b!1100318 m!1255667))

(declare-fun m!1256277 () Bool)

(assert (=> b!1100319 m!1256277))

(assert (=> d!310893 d!311119))

(declare-fun d!311121 () Bool)

(assert (=> d!311121 (= (inv!13597 (xs!5964 (c!186651 objs!8))) (<= (size!8212 (innerList!3331 (xs!5964 (c!186651 objs!8)))) 2147483647))))

(declare-fun bs!259363 () Bool)

(assert (= bs!259363 d!311121))

(declare-fun m!1256279 () Bool)

(assert (=> bs!259363 m!1256279))

(assert (=> b!1099814 d!311121))

(assert (=> b!1099608 d!310793))

(assert (=> d!310889 d!310905))

(declare-fun d!311123 () Bool)

(declare-fun e!696805 () Bool)

(assert (=> d!311123 e!696805))

(declare-fun res!488126 () Bool)

(assert (=> d!311123 (=> res!488126 e!696805)))

(assert (=> d!311123 (= res!488126 (isEmpty!6688 lt!371564))))

(assert (=> d!311123 true))

(declare-fun _$38!340 () Unit!16193)

(assert (=> d!311123 (= (choose!7092 lt!371564 lambda!43236) _$38!340)))

(declare-fun b!1100322 () Bool)

(assert (=> b!1100322 (= e!696805 (< (size!8212 (filter!324 lt!371564 lambda!43236)) (size!8212 lt!371564)))))

(assert (= (and d!311123 (not res!488126)) b!1100322))

(assert (=> d!311123 m!1255443))

(assert (=> b!1100322 m!1255433))

(assert (=> b!1100322 m!1255433))

(assert (=> b!1100322 m!1255435))

(assert (=> b!1100322 m!1255401))

(assert (=> d!310889 d!311123))

(assert (=> d!310889 d!311119))

(declare-fun d!311125 () Bool)

(declare-fun res!488131 () Bool)

(declare-fun e!696806 () Bool)

(assert (=> d!311125 (=> res!488131 e!696806)))

(assert (=> d!311125 (= res!488131 (not ((_ is Node!3271) (filter!327 (c!186651 objs!8) lambda!43235))))))

(assert (=> d!311125 (= (isBalanced!906 (filter!327 (c!186651 objs!8) lambda!43235)) e!696806)))

(declare-fun b!1100323 () Bool)

(declare-fun e!696807 () Bool)

(assert (=> b!1100323 (= e!696806 e!696807)))

(declare-fun res!488129 () Bool)

(assert (=> b!1100323 (=> (not res!488129) (not e!696807))))

(assert (=> b!1100323 (= res!488129 (<= (- 1) (- (height!430 (left!9137 (filter!327 (c!186651 objs!8) lambda!43235))) (height!430 (right!9467 (filter!327 (c!186651 objs!8) lambda!43235))))))))

(declare-fun b!1100324 () Bool)

(declare-fun res!488130 () Bool)

(assert (=> b!1100324 (=> (not res!488130) (not e!696807))))

(assert (=> b!1100324 (= res!488130 (<= (- (height!430 (left!9137 (filter!327 (c!186651 objs!8) lambda!43235))) (height!430 (right!9467 (filter!327 (c!186651 objs!8) lambda!43235)))) 1))))

(declare-fun b!1100325 () Bool)

(assert (=> b!1100325 (= e!696807 (not (isEmpty!6690 (right!9467 (filter!327 (c!186651 objs!8) lambda!43235)))))))

(declare-fun b!1100326 () Bool)

(declare-fun res!488132 () Bool)

(assert (=> b!1100326 (=> (not res!488132) (not e!696807))))

(assert (=> b!1100326 (= res!488132 (isBalanced!906 (left!9137 (filter!327 (c!186651 objs!8) lambda!43235))))))

(declare-fun b!1100327 () Bool)

(declare-fun res!488128 () Bool)

(assert (=> b!1100327 (=> (not res!488128) (not e!696807))))

(assert (=> b!1100327 (= res!488128 (isBalanced!906 (right!9467 (filter!327 (c!186651 objs!8) lambda!43235))))))

(declare-fun b!1100328 () Bool)

(declare-fun res!488127 () Bool)

(assert (=> b!1100328 (=> (not res!488127) (not e!696807))))

(assert (=> b!1100328 (= res!488127 (not (isEmpty!6690 (left!9137 (filter!327 (c!186651 objs!8) lambda!43235)))))))

(assert (= (and d!311125 (not res!488131)) b!1100323))

(assert (= (and b!1100323 res!488129) b!1100324))

(assert (= (and b!1100324 res!488130) b!1100326))

(assert (= (and b!1100326 res!488132) b!1100327))

(assert (= (and b!1100327 res!488128) b!1100328))

(assert (= (and b!1100328 res!488127) b!1100325))

(declare-fun m!1256281 () Bool)

(assert (=> b!1100324 m!1256281))

(declare-fun m!1256283 () Bool)

(assert (=> b!1100324 m!1256283))

(declare-fun m!1256285 () Bool)

(assert (=> b!1100328 m!1256285))

(declare-fun m!1256287 () Bool)

(assert (=> b!1100325 m!1256287))

(assert (=> b!1100323 m!1256281))

(assert (=> b!1100323 m!1256283))

(declare-fun m!1256289 () Bool)

(assert (=> b!1100327 m!1256289))

(declare-fun m!1256291 () Bool)

(assert (=> b!1100326 m!1256291))

(assert (=> d!310871 d!311125))

(declare-fun b!1100329 () Bool)

(declare-fun e!696809 () Conc!3271)

(assert (=> b!1100329 (= e!696809 (c!186651 objs!8))))

(declare-fun d!311127 () Bool)

(declare-fun e!696810 () Bool)

(assert (=> d!311127 e!696810))

(declare-fun res!488133 () Bool)

(assert (=> d!311127 (=> (not res!488133) (not e!696810))))

(declare-fun lt!371757 () Conc!3271)

(assert (=> d!311127 (= res!488133 (isBalanced!906 lt!371757))))

(assert (=> d!311127 (= lt!371757 e!696809)))

(declare-fun c!186796 () Bool)

(assert (=> d!311127 (= c!186796 ((_ is Empty!3271) (c!186651 objs!8)))))

(assert (=> d!311127 (isBalanced!906 (c!186651 objs!8))))

(assert (=> d!311127 (= (filter!327 (c!186651 objs!8) lambda!43235) lt!371757)))

(declare-fun b!1100330 () Bool)

(declare-fun lt!371758 () Unit!16193)

(assert (=> b!1100330 (= lt!371758 (lemmaFilterConcat!14 (list!3813 (left!9137 (c!186651 objs!8))) (list!3813 (right!9467 (c!186651 objs!8))) lambda!43235))))

(declare-fun e!696811 () Conc!3271)

(assert (=> b!1100330 (= e!696811 (++!2877 (filter!327 (left!9137 (c!186651 objs!8)) lambda!43235) (filter!327 (right!9467 (c!186651 objs!8)) lambda!43235)))))

(declare-fun b!1100331 () Bool)

(assert (=> b!1100331 (= e!696809 e!696811)))

(declare-fun c!186794 () Bool)

(assert (=> b!1100331 (= c!186794 ((_ is Leaf!5184) (c!186651 objs!8)))))

(declare-fun b!1100332 () Bool)

(declare-fun e!696808 () Conc!3271)

(assert (=> b!1100332 (= e!696808 Empty!3271)))

(declare-fun b!1100333 () Bool)

(declare-fun c!186795 () Bool)

(declare-fun lt!371759 () IArray!6547)

(assert (=> b!1100333 (= c!186795 (= (size!8216 lt!371759) 0))))

(assert (=> b!1100333 (= lt!371759 (filter!329 (xs!5964 (c!186651 objs!8)) lambda!43235))))

(assert (=> b!1100333 (= e!696811 e!696808)))

(declare-fun b!1100334 () Bool)

(assert (=> b!1100334 (= e!696808 (Leaf!5184 lt!371759 (size!8216 lt!371759)))))

(declare-fun b!1100335 () Bool)

(assert (=> b!1100335 (= e!696810 (= (list!3813 lt!371757) (filter!324 (list!3813 (c!186651 objs!8)) lambda!43235)))))

(assert (= (and d!311127 c!186796) b!1100329))

(assert (= (and d!311127 (not c!186796)) b!1100331))

(assert (= (and b!1100331 c!186794) b!1100333))

(assert (= (and b!1100331 (not c!186794)) b!1100330))

(assert (= (and b!1100333 c!186795) b!1100332))

(assert (= (and b!1100333 (not c!186795)) b!1100334))

(assert (= (and d!311127 res!488133) b!1100335))

(declare-fun m!1256293 () Bool)

(assert (=> b!1100335 m!1256293))

(assert (=> b!1100335 m!1255663))

(assert (=> b!1100335 m!1255663))

(declare-fun m!1256295 () Bool)

(assert (=> b!1100335 m!1256295))

(declare-fun m!1256297 () Bool)

(assert (=> b!1100334 m!1256297))

(assert (=> b!1100330 m!1256155))

(declare-fun m!1256299 () Bool)

(assert (=> b!1100330 m!1256299))

(declare-fun m!1256301 () Bool)

(assert (=> b!1100330 m!1256301))

(assert (=> b!1100330 m!1256161))

(assert (=> b!1100330 m!1256299))

(assert (=> b!1100330 m!1256301))

(declare-fun m!1256303 () Bool)

(assert (=> b!1100330 m!1256303))

(assert (=> b!1100330 m!1256155))

(assert (=> b!1100330 m!1256161))

(declare-fun m!1256305 () Bool)

(assert (=> b!1100330 m!1256305))

(declare-fun m!1256307 () Bool)

(assert (=> d!311127 m!1256307))

(assert (=> d!311127 m!1255703))

(assert (=> b!1100333 m!1256297))

(declare-fun m!1256309 () Bool)

(assert (=> b!1100333 m!1256309))

(assert (=> d!310871 d!311127))

(declare-fun d!311129 () Bool)

(declare-fun res!488134 () Bool)

(declare-fun e!696812 () Bool)

(assert (=> d!311129 (=> res!488134 e!696812)))

(assert (=> d!311129 (= res!488134 ((_ is Nil!10586) (list!3811 objs!8)))))

(assert (=> d!311129 (= (forall!2424 (list!3811 objs!8) lambda!43236) e!696812)))

(declare-fun b!1100336 () Bool)

(declare-fun e!696813 () Bool)

(assert (=> b!1100336 (= e!696812 e!696813)))

(declare-fun res!488135 () Bool)

(assert (=> b!1100336 (=> (not res!488135) (not e!696813))))

(assert (=> b!1100336 (= res!488135 (dynLambda!4658 lambda!43236 (h!15987 (list!3811 objs!8))))))

(declare-fun b!1100337 () Bool)

(assert (=> b!1100337 (= e!696813 (forall!2424 (t!103834 (list!3811 objs!8)) lambda!43236))))

(assert (= (and d!311129 (not res!488134)) b!1100336))

(assert (= (and b!1100336 res!488135) b!1100337))

(declare-fun b_lambda!32091 () Bool)

(assert (=> (not b_lambda!32091) (not b!1100336)))

(assert (=> b!1100336 m!1256185))

(declare-fun m!1256311 () Bool)

(assert (=> b!1100337 m!1256311))

(assert (=> d!310891 d!311129))

(assert (=> d!310891 d!310879))

(declare-fun b!1100341 () Bool)

(declare-fun e!696814 () Bool)

(assert (=> b!1100341 (= e!696814 (forall!2425 (right!9467 (c!186651 objs!8)) lambda!43236))))

(declare-fun d!311131 () Bool)

(declare-fun lt!371761 () Bool)

(assert (=> d!311131 (= lt!371761 (forall!2424 (list!3813 (c!186651 objs!8)) lambda!43236))))

(declare-fun e!696815 () Bool)

(assert (=> d!311131 (= lt!371761 e!696815)))

(declare-fun res!488136 () Bool)

(assert (=> d!311131 (=> res!488136 e!696815)))

(assert (=> d!311131 (= res!488136 ((_ is Empty!3271) (c!186651 objs!8)))))

(assert (=> d!311131 (= (forall!2425 (c!186651 objs!8) lambda!43236) lt!371761)))

(declare-fun b!1100338 () Bool)

(declare-fun e!696816 () Bool)

(assert (=> b!1100338 (= e!696815 e!696816)))

(declare-fun c!186797 () Bool)

(assert (=> b!1100338 (= c!186797 ((_ is Leaf!5184) (c!186651 objs!8)))))

(declare-fun b!1100340 () Bool)

(assert (=> b!1100340 (= e!696816 e!696814)))

(declare-fun lt!371760 () Unit!16193)

(assert (=> b!1100340 (= lt!371760 (lemmaForallConcat!68 (list!3813 (left!9137 (c!186651 objs!8))) (list!3813 (right!9467 (c!186651 objs!8))) lambda!43236))))

(declare-fun res!488137 () Bool)

(assert (=> b!1100340 (= res!488137 (forall!2425 (left!9137 (c!186651 objs!8)) lambda!43236))))

(assert (=> b!1100340 (=> (not res!488137) (not e!696814))))

(declare-fun b!1100339 () Bool)

(assert (=> b!1100339 (= e!696816 (forall!2427 (xs!5964 (c!186651 objs!8)) lambda!43236))))

(assert (= (and d!311131 (not res!488136)) b!1100338))

(assert (= (and b!1100338 c!186797) b!1100339))

(assert (= (and b!1100338 (not c!186797)) b!1100340))

(assert (= (and b!1100340 res!488137) b!1100341))

(declare-fun m!1256313 () Bool)

(assert (=> b!1100341 m!1256313))

(assert (=> d!311131 m!1255663))

(assert (=> d!311131 m!1255663))

(declare-fun m!1256315 () Bool)

(assert (=> d!311131 m!1256315))

(assert (=> b!1100340 m!1256155))

(assert (=> b!1100340 m!1256161))

(assert (=> b!1100340 m!1256155))

(assert (=> b!1100340 m!1256161))

(declare-fun m!1256317 () Bool)

(assert (=> b!1100340 m!1256317))

(declare-fun m!1256319 () Bool)

(assert (=> b!1100340 m!1256319))

(declare-fun m!1256321 () Bool)

(assert (=> b!1100339 m!1256321))

(assert (=> d!310891 d!311131))

(declare-fun b!1100351 () Bool)

(declare-fun e!696821 () List!10602)

(declare-fun e!696822 () List!10602)

(assert (=> b!1100351 (= e!696821 e!696822)))

(declare-fun c!186803 () Bool)

(assert (=> b!1100351 (= c!186803 ((_ is Leaf!5184) (c!186651 lt!371567)))))

(declare-fun d!311133 () Bool)

(declare-fun c!186802 () Bool)

(assert (=> d!311133 (= c!186802 ((_ is Empty!3271) (c!186651 lt!371567)))))

(assert (=> d!311133 (= (list!3813 (c!186651 lt!371567)) e!696821)))

(declare-fun b!1100350 () Bool)

(assert (=> b!1100350 (= e!696821 Nil!10586)))

(declare-fun b!1100352 () Bool)

(declare-fun list!3815 (IArray!6547) List!10602)

(assert (=> b!1100352 (= e!696822 (list!3815 (xs!5964 (c!186651 lt!371567))))))

(declare-fun b!1100353 () Bool)

(declare-fun ++!2879 (List!10602 List!10602) List!10602)

(assert (=> b!1100353 (= e!696822 (++!2879 (list!3813 (left!9137 (c!186651 lt!371567))) (list!3813 (right!9467 (c!186651 lt!371567)))))))

(assert (= (and d!311133 c!186802) b!1100350))

(assert (= (and d!311133 (not c!186802)) b!1100351))

(assert (= (and b!1100351 c!186803) b!1100352))

(assert (= (and b!1100351 (not c!186803)) b!1100353))

(declare-fun m!1256323 () Bool)

(assert (=> b!1100352 m!1256323))

(declare-fun m!1256325 () Bool)

(assert (=> b!1100353 m!1256325))

(declare-fun m!1256327 () Bool)

(assert (=> b!1100353 m!1256327))

(assert (=> b!1100353 m!1256325))

(assert (=> b!1100353 m!1256327))

(declare-fun m!1256329 () Bool)

(assert (=> b!1100353 m!1256329))

(assert (=> d!310909 d!311133))

(assert (=> b!1099789 d!310799))

(assert (=> b!1099789 d!310817))

(assert (=> b!1099789 d!310831))

(declare-fun b!1100355 () Bool)

(declare-fun e!696823 () List!10602)

(declare-fun e!696824 () List!10602)

(assert (=> b!1100355 (= e!696823 e!696824)))

(declare-fun c!186805 () Bool)

(assert (=> b!1100355 (= c!186805 ((_ is Leaf!5184) (c!186651 objs!8)))))

(declare-fun d!311135 () Bool)

(declare-fun c!186804 () Bool)

(assert (=> d!311135 (= c!186804 ((_ is Empty!3271) (c!186651 objs!8)))))

(assert (=> d!311135 (= (list!3813 (c!186651 objs!8)) e!696823)))

(declare-fun b!1100354 () Bool)

(assert (=> b!1100354 (= e!696823 Nil!10586)))

(declare-fun b!1100356 () Bool)

(assert (=> b!1100356 (= e!696824 (list!3815 (xs!5964 (c!186651 objs!8))))))

(declare-fun b!1100357 () Bool)

(assert (=> b!1100357 (= e!696824 (++!2879 (list!3813 (left!9137 (c!186651 objs!8))) (list!3813 (right!9467 (c!186651 objs!8)))))))

(assert (= (and d!311135 c!186804) b!1100354))

(assert (= (and d!311135 (not c!186804)) b!1100355))

(assert (= (and b!1100355 c!186805) b!1100356))

(assert (= (and b!1100355 (not c!186805)) b!1100357))

(declare-fun m!1256331 () Bool)

(assert (=> b!1100356 m!1256331))

(assert (=> b!1100357 m!1256155))

(assert (=> b!1100357 m!1256161))

(assert (=> b!1100357 m!1256155))

(assert (=> b!1100357 m!1256161))

(declare-fun m!1256333 () Bool)

(assert (=> b!1100357 m!1256333))

(assert (=> d!310879 d!311135))

(declare-fun d!311137 () Bool)

(declare-fun res!488138 () Bool)

(declare-fun e!696825 () Bool)

(assert (=> d!311137 (=> res!488138 e!696825)))

(assert (=> d!311137 (= res!488138 ((_ is Nil!10586) lt!371613))))

(assert (=> d!311137 (= (forall!2424 lt!371613 lambda!43234) e!696825)))

(declare-fun b!1100358 () Bool)

(declare-fun e!696826 () Bool)

(assert (=> b!1100358 (= e!696825 e!696826)))

(declare-fun res!488139 () Bool)

(assert (=> b!1100358 (=> (not res!488139) (not e!696826))))

(assert (=> b!1100358 (= res!488139 (dynLambda!4658 lambda!43234 (h!15987 lt!371613)))))

(declare-fun b!1100359 () Bool)

(assert (=> b!1100359 (= e!696826 (forall!2424 (t!103834 lt!371613) lambda!43234))))

(assert (= (and d!311137 (not res!488138)) b!1100358))

(assert (= (and b!1100358 res!488139) b!1100359))

(declare-fun b_lambda!32093 () Bool)

(assert (=> (not b_lambda!32093) (not b!1100358)))

(declare-fun m!1256335 () Bool)

(assert (=> b!1100358 m!1256335))

(declare-fun m!1256337 () Bool)

(assert (=> b!1100359 m!1256337))

(assert (=> b!1099687 d!311137))

(declare-fun d!311139 () Bool)

(assert (=> d!311139 (= (list!3811 lt!371636) (list!3813 (c!186651 lt!371636)))))

(declare-fun bs!259364 () Bool)

(assert (= bs!259364 d!311139))

(declare-fun m!1256339 () Bool)

(assert (=> bs!259364 m!1256339))

(assert (=> b!1099771 d!311139))

(declare-fun b!1100360 () Bool)

(declare-fun e!696828 () List!10602)

(declare-fun call!80425 () List!10602)

(assert (=> b!1100360 (= e!696828 call!80425)))

(declare-fun b!1100361 () Bool)

(declare-fun e!696827 () List!10602)

(assert (=> b!1100361 (= e!696827 e!696828)))

(declare-fun c!186806 () Bool)

(assert (=> b!1100361 (= c!186806 (dynLambda!4658 lambda!43235 (h!15987 (list!3811 objs!8))))))

(declare-fun bm!80420 () Bool)

(assert (=> bm!80420 (= call!80425 (filter!324 (t!103834 (list!3811 objs!8)) lambda!43235))))

(declare-fun b!1100363 () Bool)

(assert (=> b!1100363 (= e!696828 (Cons!10586 (h!15987 (list!3811 objs!8)) call!80425))))

(declare-fun b!1100364 () Bool)

(declare-fun e!696829 () Bool)

(declare-fun lt!371762 () List!10602)

(assert (=> b!1100364 (= e!696829 (forall!2424 lt!371762 lambda!43235))))

(declare-fun b!1100365 () Bool)

(declare-fun res!488140 () Bool)

(assert (=> b!1100365 (=> (not res!488140) (not e!696829))))

(assert (=> b!1100365 (= res!488140 (= ((_ map implies) (content!1532 lt!371762) (content!1532 (list!3811 objs!8))) ((as const (InoxSet tuple2!11754)) true)))))

(declare-fun b!1100362 () Bool)

(assert (=> b!1100362 (= e!696827 Nil!10586)))

(declare-fun d!311141 () Bool)

(assert (=> d!311141 e!696829))

(declare-fun res!488141 () Bool)

(assert (=> d!311141 (=> (not res!488141) (not e!696829))))

(assert (=> d!311141 (= res!488141 (<= (size!8212 lt!371762) (size!8212 (list!3811 objs!8))))))

(assert (=> d!311141 (= lt!371762 e!696827)))

(declare-fun c!186807 () Bool)

(assert (=> d!311141 (= c!186807 ((_ is Nil!10586) (list!3811 objs!8)))))

(assert (=> d!311141 (= (filter!324 (list!3811 objs!8) lambda!43235) lt!371762)))

(assert (= (and d!311141 c!186807) b!1100362))

(assert (= (and d!311141 (not c!186807)) b!1100361))

(assert (= (and b!1100361 c!186806) b!1100363))

(assert (= (and b!1100361 (not c!186806)) b!1100360))

(assert (= (or b!1100363 b!1100360) bm!80420))

(assert (= (and d!311141 res!488141) b!1100365))

(assert (= (and b!1100365 res!488140) b!1100364))

(declare-fun b_lambda!32095 () Bool)

(assert (=> (not b_lambda!32095) (not b!1100361)))

(declare-fun m!1256341 () Bool)

(assert (=> b!1100361 m!1256341))

(declare-fun m!1256343 () Bool)

(assert (=> d!311141 m!1256343))

(assert (=> d!311141 m!1255437))

(assert (=> d!311141 m!1255473))

(declare-fun m!1256345 () Bool)

(assert (=> b!1100364 m!1256345))

(declare-fun m!1256347 () Bool)

(assert (=> b!1100365 m!1256347))

(assert (=> b!1100365 m!1255437))

(assert (=> b!1100365 m!1256093))

(declare-fun m!1256349 () Bool)

(assert (=> bm!80420 m!1256349))

(assert (=> b!1099771 d!311141))

(assert (=> b!1099771 d!310879))

(declare-fun d!311143 () Bool)

(declare-fun lt!371763 () Int)

(assert (=> d!311143 (>= lt!371763 0)))

(declare-fun e!696830 () Int)

(assert (=> d!311143 (= lt!371763 e!696830)))

(declare-fun c!186808 () Bool)

(assert (=> d!311143 (= c!186808 ((_ is Nil!10586) (list!3811 lt!371571)))))

(assert (=> d!311143 (= (size!8212 (list!3811 lt!371571)) lt!371763)))

(declare-fun b!1100366 () Bool)

(assert (=> b!1100366 (= e!696830 0)))

(declare-fun b!1100367 () Bool)

(assert (=> b!1100367 (= e!696830 (+ 1 (size!8212 (t!103834 (list!3811 lt!371571)))))))

(assert (= (and d!311143 c!186808) b!1100366))

(assert (= (and d!311143 (not c!186808)) b!1100367))

(declare-fun m!1256351 () Bool)

(assert (=> b!1100367 m!1256351))

(assert (=> d!310901 d!311143))

(assert (=> d!310901 d!310857))

(declare-fun d!311145 () Bool)

(declare-fun lt!371766 () Int)

(assert (=> d!311145 (= lt!371766 (size!8212 (list!3813 (c!186651 lt!371571))))))

(assert (=> d!311145 (= lt!371766 (ite ((_ is Empty!3271) (c!186651 lt!371571)) 0 (ite ((_ is Leaf!5184) (c!186651 lt!371571)) (csize!6773 (c!186651 lt!371571)) (csize!6772 (c!186651 lt!371571)))))))

(assert (=> d!311145 (= (size!8214 (c!186651 lt!371571)) lt!371766)))

(declare-fun bs!259365 () Bool)

(assert (= bs!259365 d!311145))

(assert (=> bs!259365 m!1255625))

(assert (=> bs!259365 m!1255625))

(declare-fun m!1256353 () Bool)

(assert (=> bs!259365 m!1256353))

(assert (=> d!310901 d!311145))

(declare-fun d!311147 () Bool)

(declare-fun c!186809 () Bool)

(assert (=> d!311147 (= c!186809 ((_ is Nil!10586) lt!371643))))

(declare-fun e!696831 () (InoxSet tuple2!11754))

(assert (=> d!311147 (= (content!1532 lt!371643) e!696831)))

(declare-fun b!1100368 () Bool)

(assert (=> b!1100368 (= e!696831 ((as const (Array tuple2!11754 Bool)) false))))

(declare-fun b!1100369 () Bool)

(assert (=> b!1100369 (= e!696831 ((_ map or) (store ((as const (Array tuple2!11754 Bool)) false) (h!15987 lt!371643) true) (content!1532 (t!103834 lt!371643))))))

(assert (= (and d!311147 c!186809) b!1100368))

(assert (= (and d!311147 (not c!186809)) b!1100369))

(declare-fun m!1256355 () Bool)

(assert (=> b!1100369 m!1256355))

(declare-fun m!1256357 () Bool)

(assert (=> b!1100369 m!1256357))

(assert (=> b!1099784 d!311147))

(assert (=> b!1099784 d!311103))

(declare-fun d!311149 () Bool)

(declare-fun res!488148 () Bool)

(declare-fun e!696834 () Bool)

(assert (=> d!311149 (=> (not res!488148) (not e!696834))))

(assert (=> d!311149 (= res!488148 (= (csize!6772 (c!186651 objs!8)) (+ (size!8214 (left!9137 (c!186651 objs!8))) (size!8214 (right!9467 (c!186651 objs!8))))))))

(assert (=> d!311149 (= (inv!13594 (c!186651 objs!8)) e!696834)))

(declare-fun b!1100376 () Bool)

(declare-fun res!488149 () Bool)

(assert (=> b!1100376 (=> (not res!488149) (not e!696834))))

(assert (=> b!1100376 (= res!488149 (and (not (= (left!9137 (c!186651 objs!8)) Empty!3271)) (not (= (right!9467 (c!186651 objs!8)) Empty!3271))))))

(declare-fun b!1100377 () Bool)

(declare-fun res!488150 () Bool)

(assert (=> b!1100377 (=> (not res!488150) (not e!696834))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1100377 (= res!488150 (= (cheight!3482 (c!186651 objs!8)) (+ (max!0 (height!430 (left!9137 (c!186651 objs!8))) (height!430 (right!9467 (c!186651 objs!8)))) 1)))))

(declare-fun b!1100378 () Bool)

(assert (=> b!1100378 (= e!696834 (<= 0 (cheight!3482 (c!186651 objs!8))))))

(assert (= (and d!311149 res!488148) b!1100376))

(assert (= (and b!1100376 res!488149) b!1100377))

(assert (= (and b!1100377 res!488150) b!1100378))

(declare-fun m!1256359 () Bool)

(assert (=> d!311149 m!1256359))

(declare-fun m!1256361 () Bool)

(assert (=> d!311149 m!1256361))

(declare-fun m!1256363 () Bool)

(assert (=> b!1100377 m!1256363))

(declare-fun m!1256365 () Bool)

(assert (=> b!1100377 m!1256365))

(assert (=> b!1100377 m!1256363))

(assert (=> b!1100377 m!1256365))

(declare-fun m!1256367 () Bool)

(assert (=> b!1100377 m!1256367))

(assert (=> b!1099640 d!311149))

(declare-fun b!1100380 () Bool)

(declare-fun e!696835 () List!10602)

(declare-fun e!696836 () List!10602)

(assert (=> b!1100380 (= e!696835 e!696836)))

(declare-fun c!186811 () Bool)

(assert (=> b!1100380 (= c!186811 ((_ is Leaf!5184) (c!186651 lt!371571)))))

(declare-fun d!311151 () Bool)

(declare-fun c!186810 () Bool)

(assert (=> d!311151 (= c!186810 ((_ is Empty!3271) (c!186651 lt!371571)))))

(assert (=> d!311151 (= (list!3813 (c!186651 lt!371571)) e!696835)))

(declare-fun b!1100379 () Bool)

(assert (=> b!1100379 (= e!696835 Nil!10586)))

(declare-fun b!1100381 () Bool)

(assert (=> b!1100381 (= e!696836 (list!3815 (xs!5964 (c!186651 lt!371571))))))

(declare-fun b!1100382 () Bool)

(assert (=> b!1100382 (= e!696836 (++!2879 (list!3813 (left!9137 (c!186651 lt!371571))) (list!3813 (right!9467 (c!186651 lt!371571)))))))

(assert (= (and d!311151 c!186810) b!1100379))

(assert (= (and d!311151 (not c!186810)) b!1100380))

(assert (= (and b!1100380 c!186811) b!1100381))

(assert (= (and b!1100380 (not c!186811)) b!1100382))

(declare-fun m!1256369 () Bool)

(assert (=> b!1100381 m!1256369))

(declare-fun m!1256371 () Bool)

(assert (=> b!1100382 m!1256371))

(declare-fun m!1256373 () Bool)

(assert (=> b!1100382 m!1256373))

(assert (=> b!1100382 m!1256371))

(assert (=> b!1100382 m!1256373))

(declare-fun m!1256375 () Bool)

(assert (=> b!1100382 m!1256375))

(assert (=> d!310857 d!311151))

(declare-fun d!311153 () Bool)

(assert (=> d!311153 (dynLambda!4658 lambda!43234 lt!371560)))

(assert (=> d!311153 true))

(declare-fun _$7!686 () Unit!16193)

(assert (=> d!311153 (= (choose!7091 (list!3811 objs!8) lambda!43234 lt!371560) _$7!686)))

(declare-fun b_lambda!32097 () Bool)

(assert (=> (not b_lambda!32097) (not d!311153)))

(declare-fun bs!259366 () Bool)

(assert (= bs!259366 d!311153))

(assert (=> bs!259366 m!1255619))

(assert (=> d!310877 d!311153))

(assert (=> d!310877 d!311095))

(declare-fun d!311155 () Bool)

(assert (=> d!311155 (dynLambda!4658 lambda!43234 lt!371560)))

(assert (=> d!311155 true))

(declare-fun _$7!687 () Unit!16193)

(assert (=> d!311155 (= (choose!7091 (list!3811 lt!371571) lambda!43234 lt!371560) _$7!687)))

(declare-fun b_lambda!32099 () Bool)

(assert (=> (not b_lambda!32099) (not d!311155)))

(declare-fun bs!259367 () Bool)

(assert (= bs!259367 d!311155))

(assert (=> bs!259367 m!1255619))

(assert (=> d!310853 d!311155))

(declare-fun d!311157 () Bool)

(declare-fun res!488151 () Bool)

(declare-fun e!696837 () Bool)

(assert (=> d!311157 (=> res!488151 e!696837)))

(assert (=> d!311157 (= res!488151 ((_ is Nil!10586) (list!3811 lt!371571)))))

(assert (=> d!311157 (= (forall!2424 (list!3811 lt!371571) lambda!43234) e!696837)))

(declare-fun b!1100383 () Bool)

(declare-fun e!696838 () Bool)

(assert (=> b!1100383 (= e!696837 e!696838)))

(declare-fun res!488152 () Bool)

(assert (=> b!1100383 (=> (not res!488152) (not e!696838))))

(assert (=> b!1100383 (= res!488152 (dynLambda!4658 lambda!43234 (h!15987 (list!3811 lt!371571))))))

(declare-fun b!1100384 () Bool)

(assert (=> b!1100384 (= e!696838 (forall!2424 (t!103834 (list!3811 lt!371571)) lambda!43234))))

(assert (= (and d!311157 (not res!488151)) b!1100383))

(assert (= (and b!1100383 res!488152) b!1100384))

(declare-fun b_lambda!32101 () Bool)

(assert (=> (not b_lambda!32101) (not b!1100383)))

(declare-fun m!1256377 () Bool)

(assert (=> b!1100383 m!1256377))

(declare-fun m!1256379 () Bool)

(assert (=> b!1100384 m!1256379))

(assert (=> d!310853 d!311157))

(declare-fun d!311159 () Bool)

(declare-fun lt!371769 () tuple2!11754)

(assert (=> d!311159 (contains!1848 (list!3811 objs!8) lt!371769)))

(declare-fun e!696844 () tuple2!11754)

(assert (=> d!311159 (= lt!371769 e!696844)))

(declare-fun c!186814 () Bool)

(assert (=> d!311159 (= c!186814 (= (ite (>= lt!371556 0) (div lt!371556 2) (- (div (- lt!371556) 2))) 0))))

(declare-fun e!696843 () Bool)

(assert (=> d!311159 e!696843))

(declare-fun res!488155 () Bool)

(assert (=> d!311159 (=> (not res!488155) (not e!696843))))

(assert (=> d!311159 (= res!488155 (<= 0 (ite (>= lt!371556 0) (div lt!371556 2) (- (div (- lt!371556) 2)))))))

(assert (=> d!311159 (= (apply!2126 (list!3811 objs!8) (ite (>= lt!371556 0) (div lt!371556 2) (- (div (- lt!371556) 2)))) lt!371769)))

(declare-fun b!1100391 () Bool)

(assert (=> b!1100391 (= e!696843 (< (ite (>= lt!371556 0) (div lt!371556 2) (- (div (- lt!371556) 2))) (size!8212 (list!3811 objs!8))))))

(declare-fun b!1100392 () Bool)

(declare-fun head!2039 (List!10602) tuple2!11754)

(assert (=> b!1100392 (= e!696844 (head!2039 (list!3811 objs!8)))))

(declare-fun b!1100393 () Bool)

(declare-fun tail!1599 (List!10602) List!10602)

(assert (=> b!1100393 (= e!696844 (apply!2126 (tail!1599 (list!3811 objs!8)) (- (ite (>= lt!371556 0) (div lt!371556 2) (- (div (- lt!371556) 2))) 1)))))

(assert (= (and d!311159 res!488155) b!1100391))

(assert (= (and d!311159 c!186814) b!1100392))

(assert (= (and d!311159 (not c!186814)) b!1100393))

(assert (=> d!311159 m!1255437))

(declare-fun m!1256381 () Bool)

(assert (=> d!311159 m!1256381))

(assert (=> b!1100391 m!1255437))

(assert (=> b!1100391 m!1255473))

(assert (=> b!1100392 m!1255437))

(declare-fun m!1256383 () Bool)

(assert (=> b!1100392 m!1256383))

(assert (=> b!1100393 m!1255437))

(declare-fun m!1256385 () Bool)

(assert (=> b!1100393 m!1256385))

(assert (=> b!1100393 m!1256385))

(declare-fun m!1256387 () Bool)

(assert (=> b!1100393 m!1256387))

(assert (=> d!310875 d!311159))

(assert (=> d!310875 d!310879))

(declare-fun b!1100408 () Bool)

(declare-fun e!696853 () Int)

(assert (=> b!1100408 (= e!696853 (ite (>= lt!371556 0) (div lt!371556 2) (- (div (- lt!371556) 2))))))

(declare-fun b!1100409 () Bool)

(declare-fun e!696856 () tuple2!11754)

(declare-fun apply!2129 (IArray!6547 Int) tuple2!11754)

(assert (=> b!1100409 (= e!696856 (apply!2129 (xs!5964 (c!186651 objs!8)) (ite (>= lt!371556 0) (div lt!371556 2) (- (div (- lt!371556) 2)))))))

(declare-fun b!1100410 () Bool)

(declare-fun e!696855 () tuple2!11754)

(declare-fun call!80428 () tuple2!11754)

(assert (=> b!1100410 (= e!696855 call!80428)))

(declare-fun b!1100411 () Bool)

(assert (=> b!1100411 (= e!696855 call!80428)))

(declare-fun b!1100412 () Bool)

(assert (=> b!1100412 (= e!696856 e!696855)))

(declare-fun lt!371775 () Bool)

(declare-fun appendIndex!88 (List!10602 List!10602 Int) Bool)

(assert (=> b!1100412 (= lt!371775 (appendIndex!88 (list!3813 (left!9137 (c!186651 objs!8))) (list!3813 (right!9467 (c!186651 objs!8))) (ite (>= lt!371556 0) (div lt!371556 2) (- (div (- lt!371556) 2)))))))

(declare-fun c!186823 () Bool)

(assert (=> b!1100412 (= c!186823 (< (ite (>= lt!371556 0) (div lt!371556 2) (- (div (- lt!371556) 2))) (size!8214 (left!9137 (c!186651 objs!8)))))))

(declare-fun d!311161 () Bool)

(declare-fun lt!371774 () tuple2!11754)

(assert (=> d!311161 (= lt!371774 (apply!2126 (list!3813 (c!186651 objs!8)) (ite (>= lt!371556 0) (div lt!371556 2) (- (div (- lt!371556) 2)))))))

(assert (=> d!311161 (= lt!371774 e!696856)))

(declare-fun c!186822 () Bool)

(assert (=> d!311161 (= c!186822 ((_ is Leaf!5184) (c!186651 objs!8)))))

(declare-fun e!696854 () Bool)

(assert (=> d!311161 e!696854))

(declare-fun res!488158 () Bool)

(assert (=> d!311161 (=> (not res!488158) (not e!696854))))

(assert (=> d!311161 (= res!488158 (<= 0 (ite (>= lt!371556 0) (div lt!371556 2) (- (div (- lt!371556) 2)))))))

(assert (=> d!311161 (= (apply!2127 (c!186651 objs!8) (ite (>= lt!371556 0) (div lt!371556 2) (- (div (- lt!371556) 2)))) lt!371774)))

(declare-fun b!1100413 () Bool)

(assert (=> b!1100413 (= e!696853 (- (ite (>= lt!371556 0) (div lt!371556 2) (- (div (- lt!371556) 2))) (size!8214 (left!9137 (c!186651 objs!8)))))))

(declare-fun b!1100414 () Bool)

(assert (=> b!1100414 (= e!696854 (< (ite (>= lt!371556 0) (div lt!371556 2) (- (div (- lt!371556) 2))) (size!8214 (c!186651 objs!8))))))

(declare-fun bm!80423 () Bool)

(declare-fun c!186821 () Bool)

(assert (=> bm!80423 (= c!186821 c!186823)))

(assert (=> bm!80423 (= call!80428 (apply!2127 (ite c!186823 (left!9137 (c!186651 objs!8)) (right!9467 (c!186651 objs!8))) e!696853))))

(assert (= (and d!311161 res!488158) b!1100414))

(assert (= (and d!311161 c!186822) b!1100409))

(assert (= (and d!311161 (not c!186822)) b!1100412))

(assert (= (and b!1100412 c!186823) b!1100410))

(assert (= (and b!1100412 (not c!186823)) b!1100411))

(assert (= (or b!1100410 b!1100411) bm!80423))

(assert (= (and bm!80423 c!186821) b!1100408))

(assert (= (and bm!80423 (not c!186821)) b!1100413))

(assert (=> b!1100414 m!1255475))

(declare-fun m!1256389 () Bool)

(assert (=> b!1100409 m!1256389))

(assert (=> d!311161 m!1255663))

(assert (=> d!311161 m!1255663))

(declare-fun m!1256391 () Bool)

(assert (=> d!311161 m!1256391))

(assert (=> b!1100412 m!1256155))

(assert (=> b!1100412 m!1256161))

(assert (=> b!1100412 m!1256155))

(assert (=> b!1100412 m!1256161))

(declare-fun m!1256393 () Bool)

(assert (=> b!1100412 m!1256393))

(assert (=> b!1100412 m!1256359))

(assert (=> b!1100413 m!1256359))

(declare-fun m!1256395 () Bool)

(assert (=> bm!80423 m!1256395))

(assert (=> d!310875 d!311161))

(declare-fun d!311163 () Bool)

(declare-fun res!488159 () Bool)

(declare-fun e!696857 () Bool)

(assert (=> d!311163 (=> res!488159 e!696857)))

(assert (=> d!311163 (= res!488159 ((_ is Nil!10586) (list!3811 objs!8)))))

(assert (=> d!311163 (= (forall!2424 (list!3811 objs!8) lambda!43233) e!696857)))

(declare-fun b!1100415 () Bool)

(declare-fun e!696858 () Bool)

(assert (=> b!1100415 (= e!696857 e!696858)))

(declare-fun res!488160 () Bool)

(assert (=> b!1100415 (=> (not res!488160) (not e!696858))))

(assert (=> b!1100415 (= res!488160 (dynLambda!4658 lambda!43233 (h!15987 (list!3811 objs!8))))))

(declare-fun b!1100416 () Bool)

(assert (=> b!1100416 (= e!696858 (forall!2424 (t!103834 (list!3811 objs!8)) lambda!43233))))

(assert (= (and d!311163 (not res!488159)) b!1100415))

(assert (= (and b!1100415 res!488160) b!1100416))

(declare-fun b_lambda!32103 () Bool)

(assert (=> (not b_lambda!32103) (not b!1100415)))

(declare-fun m!1256397 () Bool)

(assert (=> b!1100415 m!1256397))

(declare-fun m!1256399 () Bool)

(assert (=> b!1100416 m!1256399))

(assert (=> d!310895 d!311163))

(assert (=> d!310895 d!310879))

(declare-fun b!1100420 () Bool)

(declare-fun e!696859 () Bool)

(assert (=> b!1100420 (= e!696859 (forall!2425 (right!9467 (c!186651 objs!8)) lambda!43233))))

(declare-fun d!311165 () Bool)

(declare-fun lt!371777 () Bool)

(assert (=> d!311165 (= lt!371777 (forall!2424 (list!3813 (c!186651 objs!8)) lambda!43233))))

(declare-fun e!696860 () Bool)

(assert (=> d!311165 (= lt!371777 e!696860)))

(declare-fun res!488161 () Bool)

(assert (=> d!311165 (=> res!488161 e!696860)))

(assert (=> d!311165 (= res!488161 ((_ is Empty!3271) (c!186651 objs!8)))))

(assert (=> d!311165 (= (forall!2425 (c!186651 objs!8) lambda!43233) lt!371777)))

(declare-fun b!1100417 () Bool)

(declare-fun e!696861 () Bool)

(assert (=> b!1100417 (= e!696860 e!696861)))

(declare-fun c!186824 () Bool)

(assert (=> b!1100417 (= c!186824 ((_ is Leaf!5184) (c!186651 objs!8)))))

(declare-fun b!1100419 () Bool)

(assert (=> b!1100419 (= e!696861 e!696859)))

(declare-fun lt!371776 () Unit!16193)

(assert (=> b!1100419 (= lt!371776 (lemmaForallConcat!68 (list!3813 (left!9137 (c!186651 objs!8))) (list!3813 (right!9467 (c!186651 objs!8))) lambda!43233))))

(declare-fun res!488162 () Bool)

(assert (=> b!1100419 (= res!488162 (forall!2425 (left!9137 (c!186651 objs!8)) lambda!43233))))

(assert (=> b!1100419 (=> (not res!488162) (not e!696859))))

(declare-fun b!1100418 () Bool)

(assert (=> b!1100418 (= e!696861 (forall!2427 (xs!5964 (c!186651 objs!8)) lambda!43233))))

(assert (= (and d!311165 (not res!488161)) b!1100417))

(assert (= (and b!1100417 c!186824) b!1100418))

(assert (= (and b!1100417 (not c!186824)) b!1100419))

(assert (= (and b!1100419 res!488162) b!1100420))

(declare-fun m!1256401 () Bool)

(assert (=> b!1100420 m!1256401))

(assert (=> d!311165 m!1255663))

(assert (=> d!311165 m!1255663))

(declare-fun m!1256403 () Bool)

(assert (=> d!311165 m!1256403))

(assert (=> b!1100419 m!1256155))

(assert (=> b!1100419 m!1256161))

(assert (=> b!1100419 m!1256155))

(assert (=> b!1100419 m!1256161))

(declare-fun m!1256405 () Bool)

(assert (=> b!1100419 m!1256405))

(declare-fun m!1256407 () Bool)

(assert (=> b!1100419 m!1256407))

(declare-fun m!1256409 () Bool)

(assert (=> b!1100418 m!1256409))

(assert (=> d!310895 d!311165))

(assert (=> b!1099758 d!311057))

(declare-fun d!311167 () Bool)

(declare-fun lt!371778 () Int)

(assert (=> d!311167 (>= lt!371778 0)))

(declare-fun e!696862 () Int)

(assert (=> d!311167 (= lt!371778 e!696862)))

(declare-fun c!186825 () Bool)

(assert (=> d!311167 (= c!186825 ((_ is Nil!10586) (list!3811 lt!371567)))))

(assert (=> d!311167 (= (size!8212 (list!3811 lt!371567)) lt!371778)))

(declare-fun b!1100421 () Bool)

(assert (=> b!1100421 (= e!696862 0)))

(declare-fun b!1100422 () Bool)

(assert (=> b!1100422 (= e!696862 (+ 1 (size!8212 (t!103834 (list!3811 lt!371567)))))))

(assert (= (and d!311167 c!186825) b!1100421))

(assert (= (and d!311167 (not c!186825)) b!1100422))

(declare-fun m!1256411 () Bool)

(assert (=> b!1100422 m!1256411))

(assert (=> d!310887 d!311167))

(assert (=> d!310887 d!310909))

(declare-fun d!311169 () Bool)

(declare-fun lt!371779 () Int)

(assert (=> d!311169 (= lt!371779 (size!8212 (list!3813 (c!186651 lt!371567))))))

(assert (=> d!311169 (= lt!371779 (ite ((_ is Empty!3271) (c!186651 lt!371567)) 0 (ite ((_ is Leaf!5184) (c!186651 lt!371567)) (csize!6773 (c!186651 lt!371567)) (csize!6772 (c!186651 lt!371567)))))))

(assert (=> d!311169 (= (size!8214 (c!186651 lt!371567)) lt!371779)))

(declare-fun bs!259368 () Bool)

(assert (= bs!259368 d!311169))

(assert (=> bs!259368 m!1255719))

(assert (=> bs!259368 m!1255719))

(declare-fun m!1256413 () Bool)

(assert (=> bs!259368 m!1256413))

(assert (=> d!310887 d!311169))

(declare-fun d!311171 () Bool)

(declare-fun res!488167 () Bool)

(declare-fun e!696865 () Bool)

(assert (=> d!311171 (=> (not res!488167) (not e!696865))))

(assert (=> d!311171 (= res!488167 (<= (size!8212 (list!3815 (xs!5964 (c!186651 objs!8)))) 512))))

(assert (=> d!311171 (= (inv!13595 (c!186651 objs!8)) e!696865)))

(declare-fun b!1100427 () Bool)

(declare-fun res!488168 () Bool)

(assert (=> b!1100427 (=> (not res!488168) (not e!696865))))

(assert (=> b!1100427 (= res!488168 (= (csize!6773 (c!186651 objs!8)) (size!8212 (list!3815 (xs!5964 (c!186651 objs!8))))))))

(declare-fun b!1100428 () Bool)

(assert (=> b!1100428 (= e!696865 (and (> (csize!6773 (c!186651 objs!8)) 0) (<= (csize!6773 (c!186651 objs!8)) 512)))))

(assert (= (and d!311171 res!488167) b!1100427))

(assert (= (and b!1100427 res!488168) b!1100428))

(assert (=> d!311171 m!1256331))

(assert (=> d!311171 m!1256331))

(declare-fun m!1256415 () Bool)

(assert (=> d!311171 m!1256415))

(assert (=> b!1100427 m!1256331))

(assert (=> b!1100427 m!1256331))

(assert (=> b!1100427 m!1256415))

(assert (=> b!1099642 d!311171))

(declare-fun d!311173 () Bool)

(declare-fun lt!371780 () Int)

(assert (=> d!311173 (>= lt!371780 0)))

(declare-fun e!696866 () Int)

(assert (=> d!311173 (= lt!371780 e!696866)))

(declare-fun c!186826 () Bool)

(assert (=> d!311173 (= c!186826 ((_ is Nil!10586) (list!3811 objs!8)))))

(assert (=> d!311173 (= (size!8212 (list!3811 objs!8)) lt!371780)))

(declare-fun b!1100429 () Bool)

(assert (=> b!1100429 (= e!696866 0)))

(declare-fun b!1100430 () Bool)

(assert (=> b!1100430 (= e!696866 (+ 1 (size!8212 (t!103834 (list!3811 objs!8)))))))

(assert (= (and d!311173 c!186826) b!1100429))

(assert (= (and d!311173 (not c!186826)) b!1100430))

(declare-fun m!1256417 () Bool)

(assert (=> b!1100430 m!1256417))

(assert (=> d!310791 d!311173))

(assert (=> d!310791 d!310879))

(declare-fun d!311175 () Bool)

(declare-fun lt!371781 () Int)

(assert (=> d!311175 (= lt!371781 (size!8212 (list!3813 (c!186651 objs!8))))))

(assert (=> d!311175 (= lt!371781 (ite ((_ is Empty!3271) (c!186651 objs!8)) 0 (ite ((_ is Leaf!5184) (c!186651 objs!8)) (csize!6773 (c!186651 objs!8)) (csize!6772 (c!186651 objs!8)))))))

(assert (=> d!311175 (= (size!8214 (c!186651 objs!8)) lt!371781)))

(declare-fun bs!259369 () Bool)

(assert (= bs!259369 d!311175))

(assert (=> bs!259369 m!1255663))

(assert (=> bs!259369 m!1255663))

(declare-fun m!1256419 () Bool)

(assert (=> bs!259369 m!1256419))

(assert (=> d!310791 d!311175))

(declare-fun d!311177 () Bool)

(assert (=> d!311177 (dynLambda!4658 lambda!43236 lt!371560)))

(assert (=> d!311177 true))

(declare-fun _$7!688 () Unit!16193)

(assert (=> d!311177 (= (choose!7091 (list!3811 lt!371567) lambda!43236 lt!371560) _$7!688)))

(declare-fun b_lambda!32105 () Bool)

(assert (=> (not b_lambda!32105) (not d!311177)))

(declare-fun bs!259370 () Bool)

(assert (= bs!259370 d!311177))

(assert (=> bs!259370 m!1255693))

(assert (=> d!310907 d!311177))

(declare-fun d!311179 () Bool)

(declare-fun res!488169 () Bool)

(declare-fun e!696867 () Bool)

(assert (=> d!311179 (=> res!488169 e!696867)))

(assert (=> d!311179 (= res!488169 ((_ is Nil!10586) (list!3811 lt!371567)))))

(assert (=> d!311179 (= (forall!2424 (list!3811 lt!371567) lambda!43236) e!696867)))

(declare-fun b!1100431 () Bool)

(declare-fun e!696868 () Bool)

(assert (=> b!1100431 (= e!696867 e!696868)))

(declare-fun res!488170 () Bool)

(assert (=> b!1100431 (=> (not res!488170) (not e!696868))))

(assert (=> b!1100431 (= res!488170 (dynLambda!4658 lambda!43236 (h!15987 (list!3811 lt!371567))))))

(declare-fun b!1100432 () Bool)

(assert (=> b!1100432 (= e!696868 (forall!2424 (t!103834 (list!3811 lt!371567)) lambda!43236))))

(assert (= (and d!311179 (not res!488169)) b!1100431))

(assert (= (and b!1100431 res!488170) b!1100432))

(declare-fun b_lambda!32107 () Bool)

(assert (=> (not b_lambda!32107) (not b!1100431)))

(declare-fun m!1256421 () Bool)

(assert (=> b!1100431 m!1256421))

(declare-fun m!1256423 () Bool)

(assert (=> b!1100432 m!1256423))

(assert (=> d!310907 d!311179))

(declare-fun d!311181 () Bool)

(declare-fun lt!371782 () Bool)

(assert (=> d!311181 (= lt!371782 (select (content!1532 (list!3811 objs!8)) lt!371560))))

(declare-fun e!696870 () Bool)

(assert (=> d!311181 (= lt!371782 e!696870)))

(declare-fun res!488172 () Bool)

(assert (=> d!311181 (=> (not res!488172) (not e!696870))))

(assert (=> d!311181 (= res!488172 ((_ is Cons!10586) (list!3811 objs!8)))))

(assert (=> d!311181 (= (contains!1848 (list!3811 objs!8) lt!371560) lt!371782)))

(declare-fun b!1100433 () Bool)

(declare-fun e!696869 () Bool)

(assert (=> b!1100433 (= e!696870 e!696869)))

(declare-fun res!488171 () Bool)

(assert (=> b!1100433 (=> res!488171 e!696869)))

(assert (=> b!1100433 (= res!488171 (= (h!15987 (list!3811 objs!8)) lt!371560))))

(declare-fun b!1100434 () Bool)

(assert (=> b!1100434 (= e!696869 (contains!1848 (t!103834 (list!3811 objs!8)) lt!371560))))

(assert (= (and d!311181 res!488172) b!1100433))

(assert (= (and b!1100433 (not res!488171)) b!1100434))

(assert (=> d!311181 m!1255437))

(assert (=> d!311181 m!1256093))

(declare-fun m!1256425 () Bool)

(assert (=> d!311181 m!1256425))

(declare-fun m!1256427 () Bool)

(assert (=> b!1100434 m!1256427))

(assert (=> d!310869 d!311181))

(assert (=> d!310869 d!310879))

(declare-fun b!1100435 () Bool)

(declare-fun e!696871 () Bool)

(declare-fun e!696872 () Bool)

(assert (=> b!1100435 (= e!696871 e!696872)))

(declare-fun c!186827 () Bool)

(assert (=> b!1100435 (= c!186827 ((_ is Leaf!5184) (c!186651 objs!8)))))

(declare-fun d!311183 () Bool)

(declare-fun lt!371783 () Bool)

(assert (=> d!311183 (= lt!371783 (contains!1848 (list!3813 (c!186651 objs!8)) lt!371560))))

(assert (=> d!311183 (= lt!371783 e!696871)))

(declare-fun res!488174 () Bool)

(assert (=> d!311183 (=> (not res!488174) (not e!696871))))

(assert (=> d!311183 (= res!488174 (not ((_ is Empty!3271) (c!186651 objs!8))))))

(assert (=> d!311183 (= (contains!1849 (c!186651 objs!8) lt!371560) lt!371783)))

(declare-fun b!1100438 () Bool)

(declare-fun e!696873 () Bool)

(assert (=> b!1100438 (= e!696873 (contains!1849 (right!9467 (c!186651 objs!8)) lt!371560))))

(declare-fun b!1100437 () Bool)

(assert (=> b!1100437 (= e!696872 e!696873)))

(declare-fun res!488173 () Bool)

(assert (=> b!1100437 (= res!488173 (contains!1849 (left!9137 (c!186651 objs!8)) lt!371560))))

(assert (=> b!1100437 (=> res!488173 e!696873)))

(declare-fun b!1100436 () Bool)

(assert (=> b!1100436 (= e!696872 (contains!1851 (xs!5964 (c!186651 objs!8)) lt!371560))))

(assert (= (and d!311183 res!488174) b!1100435))

(assert (= (and b!1100435 c!186827) b!1100436))

(assert (= (and b!1100435 (not c!186827)) b!1100437))

(assert (= (and b!1100437 (not res!488173)) b!1100438))

(assert (=> d!311183 m!1255663))

(assert (=> d!311183 m!1255663))

(declare-fun m!1256429 () Bool)

(assert (=> d!311183 m!1256429))

(declare-fun m!1256431 () Bool)

(assert (=> b!1100438 m!1256431))

(declare-fun m!1256433 () Bool)

(assert (=> b!1100437 m!1256433))

(declare-fun m!1256435 () Bool)

(assert (=> b!1100436 m!1256435))

(assert (=> d!310869 d!311183))

(assert (=> b!1099790 d!311091))

(assert (=> b!1099776 d!311181))

(assert (=> d!310903 d!310905))

(declare-fun d!311185 () Bool)

(declare-fun e!696874 () Bool)

(assert (=> d!311185 e!696874))

(declare-fun res!488175 () Bool)

(assert (=> d!311185 (=> res!488175 e!696874)))

(assert (=> d!311185 (= res!488175 (isEmpty!6688 lt!371564))))

(assert (=> d!311185 true))

(declare-fun _$38!341 () Unit!16193)

(assert (=> d!311185 (= (choose!7092 lt!371564 lambda!43234) _$38!341)))

(declare-fun b!1100439 () Bool)

(assert (=> b!1100439 (= e!696874 (< (size!8212 (filter!324 lt!371564 lambda!43234)) (size!8212 lt!371564)))))

(assert (= (and d!311185 (not res!488175)) b!1100439))

(assert (=> d!311185 m!1255443))

(assert (=> b!1100439 m!1255397))

(assert (=> b!1100439 m!1255397))

(assert (=> b!1100439 m!1255399))

(assert (=> b!1100439 m!1255401))

(assert (=> d!310903 d!311185))

(declare-fun d!311187 () Bool)

(declare-fun res!488176 () Bool)

(declare-fun e!696875 () Bool)

(assert (=> d!311187 (=> res!488176 e!696875)))

(assert (=> d!311187 (= res!488176 ((_ is Nil!10586) lt!371564))))

(assert (=> d!311187 (= (forall!2424 lt!371564 lambda!43234) e!696875)))

(declare-fun b!1100440 () Bool)

(declare-fun e!696876 () Bool)

(assert (=> b!1100440 (= e!696875 e!696876)))

(declare-fun res!488177 () Bool)

(assert (=> b!1100440 (=> (not res!488177) (not e!696876))))

(assert (=> b!1100440 (= res!488177 (dynLambda!4658 lambda!43234 (h!15987 lt!371564)))))

(declare-fun b!1100441 () Bool)

(assert (=> b!1100441 (= e!696876 (forall!2424 (t!103834 lt!371564) lambda!43234))))

(assert (= (and d!311187 (not res!488176)) b!1100440))

(assert (= (and b!1100440 res!488177) b!1100441))

(declare-fun b_lambda!32109 () Bool)

(assert (=> (not b_lambda!32109) (not b!1100440)))

(assert (=> b!1100440 m!1255551))

(declare-fun m!1256437 () Bool)

(assert (=> b!1100441 m!1256437))

(assert (=> d!310903 d!311187))

(declare-fun d!311189 () Bool)

(declare-fun c!186828 () Bool)

(assert (=> d!311189 (= c!186828 ((_ is Node!3271) (left!9137 (c!186651 objs!8))))))

(declare-fun e!696877 () Bool)

(assert (=> d!311189 (= (inv!13591 (left!9137 (c!186651 objs!8))) e!696877)))

(declare-fun b!1100442 () Bool)

(assert (=> b!1100442 (= e!696877 (inv!13594 (left!9137 (c!186651 objs!8))))))

(declare-fun b!1100443 () Bool)

(declare-fun e!696878 () Bool)

(assert (=> b!1100443 (= e!696877 e!696878)))

(declare-fun res!488178 () Bool)

(assert (=> b!1100443 (= res!488178 (not ((_ is Leaf!5184) (left!9137 (c!186651 objs!8)))))))

(assert (=> b!1100443 (=> res!488178 e!696878)))

(declare-fun b!1100444 () Bool)

(assert (=> b!1100444 (= e!696878 (inv!13595 (left!9137 (c!186651 objs!8))))))

(assert (= (and d!311189 c!186828) b!1100442))

(assert (= (and d!311189 (not c!186828)) b!1100443))

(assert (= (and b!1100443 (not res!488178)) b!1100444))

(declare-fun m!1256439 () Bool)

(assert (=> b!1100442 m!1256439))

(declare-fun m!1256441 () Bool)

(assert (=> b!1100444 m!1256441))

(assert (=> b!1099813 d!311189))

(declare-fun d!311191 () Bool)

(declare-fun c!186829 () Bool)

(assert (=> d!311191 (= c!186829 ((_ is Node!3271) (right!9467 (c!186651 objs!8))))))

(declare-fun e!696879 () Bool)

(assert (=> d!311191 (= (inv!13591 (right!9467 (c!186651 objs!8))) e!696879)))

(declare-fun b!1100445 () Bool)

(assert (=> b!1100445 (= e!696879 (inv!13594 (right!9467 (c!186651 objs!8))))))

(declare-fun b!1100446 () Bool)

(declare-fun e!696880 () Bool)

(assert (=> b!1100446 (= e!696879 e!696880)))

(declare-fun res!488179 () Bool)

(assert (=> b!1100446 (= res!488179 (not ((_ is Leaf!5184) (right!9467 (c!186651 objs!8)))))))

(assert (=> b!1100446 (=> res!488179 e!696880)))

(declare-fun b!1100447 () Bool)

(assert (=> b!1100447 (= e!696880 (inv!13595 (right!9467 (c!186651 objs!8))))))

(assert (= (and d!311191 c!186829) b!1100445))

(assert (= (and d!311191 (not c!186829)) b!1100446))

(assert (= (and b!1100446 (not res!488179)) b!1100447))

(declare-fun m!1256443 () Bool)

(assert (=> b!1100445 m!1256443))

(declare-fun m!1256445 () Bool)

(assert (=> b!1100447 m!1256445))

(assert (=> b!1099813 d!311191))

(declare-fun d!311193 () Bool)

(declare-fun res!488184 () Bool)

(declare-fun e!696881 () Bool)

(assert (=> d!311193 (=> res!488184 e!696881)))

(assert (=> d!311193 (= res!488184 (not ((_ is Node!3271) (c!186651 objs!8))))))

(assert (=> d!311193 (= (isBalanced!906 (c!186651 objs!8)) e!696881)))

(declare-fun b!1100448 () Bool)

(declare-fun e!696882 () Bool)

(assert (=> b!1100448 (= e!696881 e!696882)))

(declare-fun res!488182 () Bool)

(assert (=> b!1100448 (=> (not res!488182) (not e!696882))))

(assert (=> b!1100448 (= res!488182 (<= (- 1) (- (height!430 (left!9137 (c!186651 objs!8))) (height!430 (right!9467 (c!186651 objs!8))))))))

(declare-fun b!1100449 () Bool)

(declare-fun res!488183 () Bool)

(assert (=> b!1100449 (=> (not res!488183) (not e!696882))))

(assert (=> b!1100449 (= res!488183 (<= (- (height!430 (left!9137 (c!186651 objs!8))) (height!430 (right!9467 (c!186651 objs!8)))) 1))))

(declare-fun b!1100450 () Bool)

(assert (=> b!1100450 (= e!696882 (not (isEmpty!6690 (right!9467 (c!186651 objs!8)))))))

(declare-fun b!1100451 () Bool)

(declare-fun res!488185 () Bool)

(assert (=> b!1100451 (=> (not res!488185) (not e!696882))))

(assert (=> b!1100451 (= res!488185 (isBalanced!906 (left!9137 (c!186651 objs!8))))))

(declare-fun b!1100452 () Bool)

(declare-fun res!488181 () Bool)

(assert (=> b!1100452 (=> (not res!488181) (not e!696882))))

(assert (=> b!1100452 (= res!488181 (isBalanced!906 (right!9467 (c!186651 objs!8))))))

(declare-fun b!1100453 () Bool)

(declare-fun res!488180 () Bool)

(assert (=> b!1100453 (=> (not res!488180) (not e!696882))))

(assert (=> b!1100453 (= res!488180 (not (isEmpty!6690 (left!9137 (c!186651 objs!8)))))))

(assert (= (and d!311193 (not res!488184)) b!1100448))

(assert (= (and b!1100448 res!488182) b!1100449))

(assert (= (and b!1100449 res!488183) b!1100451))

(assert (= (and b!1100451 res!488185) b!1100452))

(assert (= (and b!1100452 res!488181) b!1100453))

(assert (= (and b!1100453 res!488180) b!1100450))

(assert (=> b!1100449 m!1256363))

(assert (=> b!1100449 m!1256365))

(declare-fun m!1256447 () Bool)

(assert (=> b!1100453 m!1256447))

(declare-fun m!1256449 () Bool)

(assert (=> b!1100450 m!1256449))

(assert (=> b!1100448 m!1256363))

(assert (=> b!1100448 m!1256365))

(declare-fun m!1256451 () Bool)

(assert (=> b!1100452 m!1256451))

(declare-fun m!1256453 () Bool)

(assert (=> b!1100451 m!1256453))

(assert (=> d!310897 d!311193))

(assert (=> b!1099787 d!310881))

(assert (=> b!1099787 d!310883))

(assert (=> b!1099787 d!310831))

(declare-fun b!1100465 () Bool)

(declare-fun e!696892 () Bool)

(declare-fun e!696893 () Bool)

(assert (=> b!1100465 (= e!696892 e!696893)))

(declare-fun b!1100466 () Bool)

(declare-fun e!696894 () Bool)

(assert (=> b!1100466 (= e!696893 e!696894)))

(declare-fun b!1100467 () Bool)

(assert (=> b!1100467 (= e!696894 true)))

(declare-fun b!1100464 () Bool)

(declare-fun e!696891 () Bool)

(assert (=> b!1100464 (= e!696891 e!696892)))

(assert (=> b!1099804 e!696891))

(assert (= b!1100466 b!1100467))

(assert (= b!1100465 b!1100466))

(assert (= b!1100464 b!1100465))

(assert (= (and b!1099804 ((_ is Cons!10584) (innerList!3330 (xs!5963 (c!186650 (tokens!1373 (_2!6703 lt!371560))))))) b!1100464))

(assert (=> b!1100467 (< (dynLambda!4662 order!6435 (toValue!2891 (transformation!1814 (rule!3237 (h!15985 (innerList!3330 (xs!5963 (c!186650 (tokens!1373 (_2!6703 lt!371560)))))))))) (dynLambda!4663 order!6437 lambda!43235))))

(assert (=> b!1100467 (< (dynLambda!4664 order!6439 (toChars!2750 (transformation!1814 (rule!3237 (h!15985 (innerList!3330 (xs!5963 (c!186650 (tokens!1373 (_2!6703 lt!371560)))))))))) (dynLambda!4663 order!6437 lambda!43235))))

(declare-fun b!1100470 () Bool)

(declare-fun e!696897 () Bool)

(assert (=> b!1100470 (= e!696897 true)))

(declare-fun b!1100469 () Bool)

(declare-fun e!696896 () Bool)

(assert (=> b!1100469 (= e!696896 e!696897)))

(declare-fun b!1100468 () Bool)

(declare-fun e!696895 () Bool)

(assert (=> b!1100468 (= e!696895 e!696896)))

(assert (=> b!1099824 e!696895))

(assert (= b!1100469 b!1100470))

(assert (= b!1100468 b!1100469))

(assert (= (and b!1099824 ((_ is Cons!10585) (t!103833 (rules!9101 (_2!6703 lt!371560))))) b!1100468))

(assert (=> b!1100470 (< (dynLambda!4662 order!6435 (toValue!2891 (transformation!1814 (h!15986 (t!103833 (rules!9101 (_2!6703 lt!371560))))))) (dynLambda!4663 order!6437 lambda!43235))))

(assert (=> b!1100470 (< (dynLambda!4664 order!6439 (toChars!2750 (transformation!1814 (h!15986 (t!103833 (rules!9101 (_2!6703 lt!371560))))))) (dynLambda!4663 order!6437 lambda!43235))))

(declare-fun b!1100472 () Bool)

(declare-fun e!696899 () Bool)

(declare-fun e!696900 () Bool)

(assert (=> b!1100472 (= e!696899 e!696900)))

(declare-fun b!1100473 () Bool)

(declare-fun e!696901 () Bool)

(assert (=> b!1100473 (= e!696900 e!696901)))

(declare-fun b!1100474 () Bool)

(assert (=> b!1100474 (= e!696901 true)))

(declare-fun b!1100471 () Bool)

(declare-fun e!696898 () Bool)

(assert (=> b!1100471 (= e!696898 e!696899)))

(assert (=> b!1099801 e!696898))

(assert (= b!1100473 b!1100474))

(assert (= b!1100472 b!1100473))

(assert (= b!1100471 b!1100472))

(assert (= (and b!1099801 ((_ is Cons!10584) (innerList!3330 (xs!5963 (c!186650 (tokens!1373 (_2!6703 lt!371560))))))) b!1100471))

(assert (=> b!1100474 (< (dynLambda!4662 order!6435 (toValue!2891 (transformation!1814 (rule!3237 (h!15985 (innerList!3330 (xs!5963 (c!186650 (tokens!1373 (_2!6703 lt!371560)))))))))) (dynLambda!4663 order!6437 lambda!43236))))

(assert (=> b!1100474 (< (dynLambda!4664 order!6439 (toChars!2750 (transformation!1814 (rule!3237 (h!15985 (innerList!3330 (xs!5963 (c!186650 (tokens!1373 (_2!6703 lt!371560)))))))))) (dynLambda!4663 order!6437 lambda!43236))))

(declare-fun b!1100475 () Bool)

(declare-fun e!696902 () Bool)

(assert (=> b!1100475 (= e!696902 true)))

(declare-fun b!1100477 () Bool)

(declare-fun e!696903 () Bool)

(assert (=> b!1100477 (= e!696903 true)))

(declare-fun b!1100476 () Bool)

(assert (=> b!1100476 (= e!696902 e!696903)))

(assert (=> b!1099827 e!696902))

(assert (= (and b!1099827 ((_ is Node!3270) (left!9136 (c!186650 (tokens!1373 (_2!6703 lt!371560)))))) b!1100475))

(assert (= b!1100476 b!1100477))

(assert (= (and b!1099827 ((_ is Leaf!5183) (left!9136 (c!186650 (tokens!1373 (_2!6703 lt!371560)))))) b!1100476))

(declare-fun b!1100478 () Bool)

(declare-fun e!696904 () Bool)

(assert (=> b!1100478 (= e!696904 true)))

(declare-fun b!1100480 () Bool)

(declare-fun e!696905 () Bool)

(assert (=> b!1100480 (= e!696905 true)))

(declare-fun b!1100479 () Bool)

(assert (=> b!1100479 (= e!696904 e!696905)))

(assert (=> b!1099827 e!696904))

(assert (= (and b!1099827 ((_ is Node!3270) (right!9466 (c!186650 (tokens!1373 (_2!6703 lt!371560)))))) b!1100478))

(assert (= b!1100479 b!1100480))

(assert (= (and b!1099827 ((_ is Leaf!5183) (right!9466 (c!186650 (tokens!1373 (_2!6703 lt!371560)))))) b!1100479))

(declare-fun b!1100481 () Bool)

(declare-fun e!696906 () Bool)

(assert (=> b!1100481 (= e!696906 true)))

(declare-fun b!1100483 () Bool)

(declare-fun e!696907 () Bool)

(assert (=> b!1100483 (= e!696907 true)))

(declare-fun b!1100482 () Bool)

(assert (=> b!1100482 (= e!696906 e!696907)))

(assert (=> b!1099799 e!696906))

(assert (= (and b!1099799 ((_ is Node!3270) (left!9136 (c!186650 (tokens!1373 (_2!6703 lt!371560)))))) b!1100481))

(assert (= b!1100482 b!1100483))

(assert (= (and b!1099799 ((_ is Leaf!5183) (left!9136 (c!186650 (tokens!1373 (_2!6703 lt!371560)))))) b!1100482))

(declare-fun b!1100484 () Bool)

(declare-fun e!696908 () Bool)

(assert (=> b!1100484 (= e!696908 true)))

(declare-fun b!1100486 () Bool)

(declare-fun e!696909 () Bool)

(assert (=> b!1100486 (= e!696909 true)))

(declare-fun b!1100485 () Bool)

(assert (=> b!1100485 (= e!696908 e!696909)))

(assert (=> b!1099799 e!696908))

(assert (= (and b!1099799 ((_ is Node!3270) (right!9466 (c!186650 (tokens!1373 (_2!6703 lt!371560)))))) b!1100484))

(assert (= b!1100485 b!1100486))

(assert (= (and b!1099799 ((_ is Leaf!5183) (right!9466 (c!186650 (tokens!1373 (_2!6703 lt!371560)))))) b!1100485))

(declare-fun b!1100488 () Bool)

(declare-fun e!696911 () Bool)

(declare-fun e!696912 () Bool)

(assert (=> b!1100488 (= e!696911 e!696912)))

(declare-fun b!1100489 () Bool)

(declare-fun e!696913 () Bool)

(assert (=> b!1100489 (= e!696912 e!696913)))

(declare-fun b!1100490 () Bool)

(assert (=> b!1100490 (= e!696913 true)))

(declare-fun b!1100487 () Bool)

(declare-fun e!696910 () Bool)

(assert (=> b!1100487 (= e!696910 e!696911)))

(assert (=> b!1099829 e!696910))

(assert (= b!1100489 b!1100490))

(assert (= b!1100488 b!1100489))

(assert (= b!1100487 b!1100488))

(assert (= (and b!1099829 ((_ is Cons!10584) (innerList!3330 (xs!5963 (c!186650 (tokens!1373 (_2!6703 lt!371560))))))) b!1100487))

(assert (=> b!1100490 (< (dynLambda!4662 order!6435 (toValue!2891 (transformation!1814 (rule!3237 (h!15985 (innerList!3330 (xs!5963 (c!186650 (tokens!1373 (_2!6703 lt!371560)))))))))) (dynLambda!4663 order!6437 lambda!43234))))

(assert (=> b!1100490 (< (dynLambda!4664 order!6439 (toChars!2750 (transformation!1814 (rule!3237 (h!15985 (innerList!3330 (xs!5963 (c!186650 (tokens!1373 (_2!6703 lt!371560)))))))))) (dynLambda!4663 order!6437 lambda!43234))))

(declare-fun b!1100491 () Bool)

(declare-fun e!696914 () Bool)

(assert (=> b!1100491 (= e!696914 true)))

(declare-fun b!1100493 () Bool)

(declare-fun e!696915 () Bool)

(assert (=> b!1100493 (= e!696915 true)))

(declare-fun b!1100492 () Bool)

(assert (=> b!1100492 (= e!696914 e!696915)))

(assert (=> b!1099802 e!696914))

(assert (= (and b!1099802 ((_ is Node!3270) (left!9136 (c!186650 (tokens!1373 (_2!6703 lt!371560)))))) b!1100491))

(assert (= b!1100492 b!1100493))

(assert (= (and b!1099802 ((_ is Leaf!5183) (left!9136 (c!186650 (tokens!1373 (_2!6703 lt!371560)))))) b!1100492))

(declare-fun b!1100494 () Bool)

(declare-fun e!696916 () Bool)

(assert (=> b!1100494 (= e!696916 true)))

(declare-fun b!1100496 () Bool)

(declare-fun e!696917 () Bool)

(assert (=> b!1100496 (= e!696917 true)))

(declare-fun b!1100495 () Bool)

(assert (=> b!1100495 (= e!696916 e!696917)))

(assert (=> b!1099802 e!696916))

(assert (= (and b!1099802 ((_ is Node!3270) (right!9466 (c!186650 (tokens!1373 (_2!6703 lt!371560)))))) b!1100494))

(assert (= b!1100495 b!1100496))

(assert (= (and b!1099802 ((_ is Leaf!5183) (right!9466 (c!186650 (tokens!1373 (_2!6703 lt!371560)))))) b!1100495))

(declare-fun b!1100507 () Bool)

(declare-fun e!696925 () Bool)

(declare-fun tp!326916 () Bool)

(declare-fun inv!13601 (Conc!3270) Bool)

(assert (=> b!1100507 (= e!696925 (and (inv!13601 (c!186650 (tokens!1373 (_2!6703 (h!15987 (innerList!3331 (xs!5964 (c!186651 objs!8)))))))) tp!326916))))

(declare-fun b!1100506 () Bool)

(declare-fun tp!326918 () Bool)

(declare-fun e!696926 () Bool)

(declare-fun inv!13602 (BalanceConc!6554) Bool)

(assert (=> b!1100506 (= e!696926 (and tp!326918 (inv!13602 (tokens!1373 (_2!6703 (h!15987 (innerList!3331 (xs!5964 (c!186651 objs!8))))))) e!696925))))

(declare-fun e!696924 () Bool)

(declare-fun tp!326917 () Bool)

(declare-fun b!1100505 () Bool)

(declare-fun inv!13603 (PrintableTokens!344) Bool)

(assert (=> b!1100505 (= e!696924 (and (inv!13603 (_2!6703 (h!15987 (innerList!3331 (xs!5964 (c!186651 objs!8)))))) e!696926 tp!326917))))

(assert (=> b!1099815 (= tp!326892 e!696924)))

(assert (= b!1100506 b!1100507))

(assert (= b!1100505 b!1100506))

(assert (= (and b!1099815 ((_ is Cons!10586) (innerList!3331 (xs!5964 (c!186651 objs!8))))) b!1100505))

(declare-fun m!1256455 () Bool)

(assert (=> b!1100507 m!1256455))

(declare-fun m!1256457 () Bool)

(assert (=> b!1100506 m!1256457))

(declare-fun m!1256459 () Bool)

(assert (=> b!1100505 m!1256459))

(declare-fun e!696928 () Bool)

(declare-fun tp!326921 () Bool)

(declare-fun tp!326920 () Bool)

(declare-fun b!1100508 () Bool)

(assert (=> b!1100508 (= e!696928 (and (inv!13591 (left!9137 (left!9137 (c!186651 objs!8)))) tp!326921 (inv!13591 (right!9467 (left!9137 (c!186651 objs!8)))) tp!326920))))

(declare-fun b!1100510 () Bool)

(declare-fun e!696927 () Bool)

(declare-fun tp!326919 () Bool)

(assert (=> b!1100510 (= e!696927 tp!326919)))

(declare-fun b!1100509 () Bool)

(assert (=> b!1100509 (= e!696928 (and (inv!13597 (xs!5964 (left!9137 (c!186651 objs!8)))) e!696927))))

(assert (=> b!1099813 (= tp!326894 (and (inv!13591 (left!9137 (c!186651 objs!8))) e!696928))))

(assert (= (and b!1099813 ((_ is Node!3271) (left!9137 (c!186651 objs!8)))) b!1100508))

(assert (= b!1100509 b!1100510))

(assert (= (and b!1099813 ((_ is Leaf!5184) (left!9137 (c!186651 objs!8)))) b!1100509))

(declare-fun m!1256461 () Bool)

(assert (=> b!1100508 m!1256461))

(declare-fun m!1256463 () Bool)

(assert (=> b!1100508 m!1256463))

(declare-fun m!1256465 () Bool)

(assert (=> b!1100509 m!1256465))

(assert (=> b!1099813 m!1255721))

(declare-fun b!1100511 () Bool)

(declare-fun e!696930 () Bool)

(declare-fun tp!326923 () Bool)

(declare-fun tp!326924 () Bool)

(assert (=> b!1100511 (= e!696930 (and (inv!13591 (left!9137 (right!9467 (c!186651 objs!8)))) tp!326924 (inv!13591 (right!9467 (right!9467 (c!186651 objs!8)))) tp!326923))))

(declare-fun b!1100513 () Bool)

(declare-fun e!696929 () Bool)

(declare-fun tp!326922 () Bool)

(assert (=> b!1100513 (= e!696929 tp!326922)))

(declare-fun b!1100512 () Bool)

(assert (=> b!1100512 (= e!696930 (and (inv!13597 (xs!5964 (right!9467 (c!186651 objs!8)))) e!696929))))

(assert (=> b!1099813 (= tp!326893 (and (inv!13591 (right!9467 (c!186651 objs!8))) e!696930))))

(assert (= (and b!1099813 ((_ is Node!3271) (right!9467 (c!186651 objs!8)))) b!1100511))

(assert (= b!1100512 b!1100513))

(assert (= (and b!1099813 ((_ is Leaf!5184) (right!9467 (c!186651 objs!8)))) b!1100512))

(declare-fun m!1256467 () Bool)

(assert (=> b!1100511 m!1256467))

(declare-fun m!1256469 () Bool)

(assert (=> b!1100511 m!1256469))

(declare-fun m!1256471 () Bool)

(assert (=> b!1100512 m!1256471))

(assert (=> b!1099813 m!1255723))

(declare-fun b!1100516 () Bool)

(declare-fun e!696933 () Bool)

(assert (=> b!1100516 (= e!696933 true)))

(declare-fun b!1100515 () Bool)

(declare-fun e!696932 () Bool)

(assert (=> b!1100515 (= e!696932 e!696933)))

(declare-fun b!1100514 () Bool)

(declare-fun e!696931 () Bool)

(assert (=> b!1100514 (= e!696931 e!696932)))

(assert (=> b!1099830 e!696931))

(assert (= b!1100515 b!1100516))

(assert (= b!1100514 b!1100515))

(assert (= (and b!1099830 ((_ is Cons!10585) (t!103833 (rules!9101 (_2!6703 lt!371560))))) b!1100514))

(assert (=> b!1100516 (< (dynLambda!4662 order!6435 (toValue!2891 (transformation!1814 (h!15986 (t!103833 (rules!9101 (_2!6703 lt!371560))))))) (dynLambda!4663 order!6437 lambda!43234))))

(assert (=> b!1100516 (< (dynLambda!4664 order!6439 (toChars!2750 (transformation!1814 (h!15986 (t!103833 (rules!9101 (_2!6703 lt!371560))))))) (dynLambda!4663 order!6437 lambda!43234))))

(declare-fun b!1100519 () Bool)

(declare-fun e!696936 () Bool)

(assert (=> b!1100519 (= e!696936 true)))

(declare-fun b!1100518 () Bool)

(declare-fun e!696935 () Bool)

(assert (=> b!1100518 (= e!696935 e!696936)))

(declare-fun b!1100517 () Bool)

(declare-fun e!696934 () Bool)

(assert (=> b!1100517 (= e!696934 e!696935)))

(assert (=> b!1099833 e!696934))

(assert (= b!1100518 b!1100519))

(assert (= b!1100517 b!1100518))

(assert (= (and b!1099833 ((_ is Cons!10585) (t!103833 (rules!9101 (_2!6703 lt!371560))))) b!1100517))

(assert (=> b!1100519 (< (dynLambda!4662 order!6435 (toValue!2891 (transformation!1814 (h!15986 (t!103833 (rules!9101 (_2!6703 lt!371560))))))) (dynLambda!4663 order!6437 lambda!43236))))

(assert (=> b!1100519 (< (dynLambda!4664 order!6439 (toChars!2750 (transformation!1814 (h!15986 (t!103833 (rules!9101 (_2!6703 lt!371560))))))) (dynLambda!4663 order!6437 lambda!43236))))

(declare-fun b_lambda!32111 () Bool)

(assert (= b_lambda!32083 (or b!1099611 b_lambda!32111)))

(declare-fun bs!259371 () Bool)

(declare-fun d!311195 () Bool)

(assert (= bs!259371 (and d!311195 b!1099611)))

(assert (=> bs!259371 (= (dynLambda!4658 lambda!43236 (h!15987 (t!103834 lt!371564))) (> (_1!6703 (h!15987 (t!103834 lt!371564))) (_1!6703 lt!371560)))))

(assert (=> b!1100284 d!311195))

(declare-fun b_lambda!32113 () Bool)

(assert (= b_lambda!32093 (or b!1099611 b_lambda!32113)))

(declare-fun bs!259372 () Bool)

(declare-fun d!311197 () Bool)

(assert (= bs!259372 (and d!311197 b!1099611)))

(assert (=> bs!259372 (= (dynLambda!4658 lambda!43234 (h!15987 lt!371613)) (< (_1!6703 (h!15987 lt!371613)) (_1!6703 lt!371560)))))

(assert (=> b!1100358 d!311197))

(declare-fun b_lambda!32115 () Bool)

(assert (= b_lambda!32097 (or b!1099611 b_lambda!32115)))

(assert (=> d!311153 d!310917))

(declare-fun b_lambda!32117 () Bool)

(assert (= b_lambda!32107 (or b!1099611 b_lambda!32117)))

(declare-fun bs!259373 () Bool)

(declare-fun d!311199 () Bool)

(assert (= bs!259373 (and d!311199 b!1099611)))

(assert (=> bs!259373 (= (dynLambda!4658 lambda!43236 (h!15987 (list!3811 lt!371567))) (> (_1!6703 (h!15987 (list!3811 lt!371567))) (_1!6703 lt!371560)))))

(assert (=> b!1100431 d!311199))

(declare-fun b_lambda!32119 () Bool)

(assert (= b_lambda!32079 (or b!1099611 b_lambda!32119)))

(declare-fun bs!259374 () Bool)

(declare-fun d!311201 () Bool)

(assert (= bs!259374 (and d!311201 b!1099611)))

(assert (=> bs!259374 (= (dynLambda!4658 lambda!43236 (h!15987 (list!3811 objs!8))) (> (_1!6703 (h!15987 (list!3811 objs!8))) (_1!6703 lt!371560)))))

(assert (=> b!1100254 d!311201))

(declare-fun b_lambda!32121 () Bool)

(assert (= b_lambda!32103 (or start!94418 b_lambda!32121)))

(declare-fun bs!259375 () Bool)

(declare-fun d!311203 () Bool)

(assert (= bs!259375 (and d!311203 start!94418)))

(declare-fun usesJsonRules!0 (PrintableTokens!344) Bool)

(assert (=> bs!259375 (= (dynLambda!4658 lambda!43233 (h!15987 (list!3811 objs!8))) (usesJsonRules!0 (_2!6703 (h!15987 (list!3811 objs!8)))))))

(declare-fun m!1256473 () Bool)

(assert (=> bs!259375 m!1256473))

(assert (=> b!1100415 d!311203))

(declare-fun b_lambda!32123 () Bool)

(assert (= b_lambda!32039 (or b!1099611 b_lambda!32123)))

(declare-fun bs!259376 () Bool)

(declare-fun d!311205 () Bool)

(assert (= bs!259376 (and d!311205 b!1099611)))

(assert (=> bs!259376 (= (dynLambda!4658 lambda!43234 (h!15987 (list!3811 objs!8))) (< (_1!6703 (h!15987 (list!3811 objs!8))) (_1!6703 lt!371560)))))

(assert (=> b!1100125 d!311205))

(declare-fun b_lambda!32125 () Bool)

(assert (= b_lambda!32099 (or b!1099611 b_lambda!32125)))

(assert (=> d!311155 d!310917))

(declare-fun b_lambda!32127 () Bool)

(assert (= b_lambda!32085 (or b!1099611 b_lambda!32127)))

(declare-fun bs!259377 () Bool)

(declare-fun d!311207 () Bool)

(assert (= bs!259377 (and d!311207 b!1099611)))

(assert (=> bs!259377 (= (dynLambda!4658 lambda!43236 (h!15987 lt!371643)) (> (_1!6703 (h!15987 lt!371643)) (_1!6703 lt!371560)))))

(assert (=> b!1100297 d!311207))

(declare-fun b_lambda!32129 () Bool)

(assert (= b_lambda!32105 (or b!1099611 b_lambda!32129)))

(assert (=> d!311177 d!310911))

(declare-fun b_lambda!32131 () Bool)

(assert (= b_lambda!32089 (or b!1099611 b_lambda!32131)))

(assert (=> b!1100318 d!310913))

(declare-fun b_lambda!32133 () Bool)

(assert (= b_lambda!32087 (or b!1099611 b_lambda!32133)))

(assert (=> d!311117 d!310911))

(declare-fun b_lambda!32135 () Bool)

(assert (= b_lambda!32077 (or b!1099611 b_lambda!32135)))

(declare-fun bs!259378 () Bool)

(declare-fun d!311209 () Bool)

(assert (= bs!259378 (and d!311209 b!1099611)))

(assert (=> bs!259378 (= (dynLambda!4658 lambda!43234 (h!15987 (t!103834 lt!371564))) (< (_1!6703 (h!15987 (t!103834 lt!371564))) (_1!6703 lt!371560)))))

(assert (=> b!1100248 d!311209))

(declare-fun b_lambda!32137 () Bool)

(assert (= b_lambda!32109 (or b!1099611 b_lambda!32137)))

(assert (=> b!1100440 d!310915))

(declare-fun b_lambda!32139 () Bool)

(assert (= b_lambda!32081 (or b!1099611 b_lambda!32139)))

(assert (=> b!1100269 d!311205))

(declare-fun b_lambda!32141 () Bool)

(assert (= b_lambda!32101 (or b!1099611 b_lambda!32141)))

(declare-fun bs!259379 () Bool)

(declare-fun d!311211 () Bool)

(assert (= bs!259379 (and d!311211 b!1099611)))

(assert (=> bs!259379 (= (dynLambda!4658 lambda!43234 (h!15987 (list!3811 lt!371571))) (< (_1!6703 (h!15987 (list!3811 lt!371571))) (_1!6703 lt!371560)))))

(assert (=> b!1100383 d!311211))

(declare-fun b_lambda!32143 () Bool)

(assert (= b_lambda!32091 (or b!1099611 b_lambda!32143)))

(assert (=> b!1100336 d!311201))

(declare-fun b_lambda!32145 () Bool)

(assert (= b_lambda!32095 (or b!1099611 b_lambda!32145)))

(declare-fun bs!259380 () Bool)

(declare-fun d!311213 () Bool)

(assert (= bs!259380 (and d!311213 b!1099611)))

(assert (=> bs!259380 (= (dynLambda!4658 lambda!43235 (h!15987 (list!3811 objs!8))) (= (_1!6703 (h!15987 (list!3811 objs!8))) (_1!6703 lt!371560)))))

(assert (=> b!1100361 d!311213))

(check-sat (not b!1100339) (not b!1100340) (not b!1100364) (not b!1100478) (not b!1100317) (not b_lambda!31995) (not b!1100251) (not b!1100414) (not b!1100511) (not b!1100448) (not d!311113) (not b!1100391) (not b!1100305) (not b!1100422) (not b!1100444) (not b!1100241) (not b!1100258) (not d!311059) (not b_lambda!31993) (not b!1100468) (not b!1100182) (not b!1100442) (not b!1100263) (not d!311141) (not b!1100451) (not b!1100377) (not b_lambda!32125) (not b!1100509) (not b!1100452) (not d!311145) (not b!1100280) (not b!1100270) (not bm!80423) (not b!1100246) (not b!1100324) (not d!311165) (not b!1100491) (not d!311049) (not b!1100434) (not b_lambda!32137) (not b!1100294) (not b_lambda!32111) (not d!311171) (not b_lambda!31991) (not b!1100517) (not b!1100223) (not b!1100441) (not d!311121) (not b!1100392) (not b!1100222) (not b!1100260) (not bm!80418) (not d!311097) (not b!1100304) (not b!1100477) (not b!1100353) (not b!1100302) (not b!1100303) (not b!1100322) (not b!1100281) (not b!1100449) (not b!1100298) (not b!1100221) (not b!1100306) (not b!1100367) (not b!1100382) (not b!1100310) (not d!311091) (not b_lambda!31999) (not b!1100413) (not d!311149) (not b!1100381) (not d!311181) (not b!1100447) (not d!311161) (not b!1100330) (not b!1100319) (not b!1100296) (not b!1100514) (not b!1100365) (not b!1100262) (not b!1100327) (not b_lambda!32141) (not d!311055) (not b!1100334) (not b!1100245) (not b!1100513) (not b!1100475) (not b!1100359) (not b!1100512) (not b!1100307) (not b!1100453) (not b!1100437) (not d!311057) (not b!1100313) (not b!1100471) (not b!1100508) (not b!1100128) (not b!1100325) (not b!1100438) (not b!1100487) (not b!1100393) (not b!1100206) (not d!311159) (not b!1100220) (not b_lambda!32145) (not b!1100123) (not b!1100314) (not b!1100481) (not b!1100510) (not d!311139) (not bs!259375) (not d!311083) (not bm!80417) (not b!1100505) (not b!1100225) (not d!311185) (not b!1100352) (not b!1100430) (not d!311169) (not b_lambda!32135) (not b!1100486) (not d!311085) (not b!1100252) (not b!1100409) (not b!1100287) (not b!1100384) (not b!1100333) (not bm!80419) (not b_lambda!32119) (not b_lambda!32139) (not d!311123) (not b!1100432) (not b!1100412) (not b_lambda!32121) (not b_lambda!32115) (not b!1100507) (not b!1100420) (not b!1100418) (not b!1100369) (not b_lambda!32117) (not b!1100464) (not b!1100480) (not d!311175) (not b!1100356) (not b!1100436) (not b!1100445) (not b!1100315) (not b!1100496) (not b!1100493) (not b!1100328) (not b!1100308) (not b!1100419) (not b!1100335) (not b!1099813) (not b_lambda!32129) (not b!1100494) (not b!1100323) (not b!1100341) (not b!1100450) (not d!311051) (not b_lambda!32123) (not b!1100224) (not b!1100288) (not b!1100326) (not d!311093) (not d!311131) (not b_lambda!32001) (not b!1100427) (not b!1100506) (not d!311087) (not bm!80416) (not b!1100129) (not b!1100483) (not b!1100195) (not b!1100135) (not b!1100300) (not d!311099) (not b_lambda!32143) (not b!1100205) (not d!311183) (not b!1100357) (not b!1100244) (not b_lambda!32133) (not b_lambda!32113) (not b!1100257) (not b!1100282) (not d!311127) (not b_lambda!31997) (not d!311089) (not b!1100439) (not b!1100416) (not bm!80420) (not b!1100207) (not b!1100484) (not b_lambda!32127) (not b_lambda!32131) (not b!1100264) (not b!1100337))
(check-sat)

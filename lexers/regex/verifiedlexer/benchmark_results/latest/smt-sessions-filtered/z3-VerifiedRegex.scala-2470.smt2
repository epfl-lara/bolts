; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130812 () Bool)

(assert start!130812)

(declare-fun res!643214 () Bool)

(declare-fun e!906710 () Bool)

(assert (=> start!130812 (=> (not res!643214) (not e!906710))))

(declare-datatypes ((T!25622 0))(
  ( (T!25623 (val!4512 Int)) )
))
(declare-datatypes ((List!14654 0))(
  ( (Nil!14588) (Cons!14588 (h!19989 T!25622) (t!124443 List!14654)) )
))
(declare-datatypes ((IArray!9819 0))(
  ( (IArray!9820 (innerList!4967 List!14654)) )
))
(declare-datatypes ((Conc!4907 0))(
  ( (Node!4907 (left!12479 Conc!4907) (right!12809 Conc!4907) (csize!10044 Int) (cheight!5118 Int)) (Leaf!7378 (xs!7636 IArray!9819) (csize!10045 Int)) (Empty!4907) )
))
(declare-datatypes ((BalanceConc!9754 0))(
  ( (BalanceConc!9755 (c!233518 Conc!4907)) )
))
(declare-fun thiss!5870 () BalanceConc!9754)

(declare-fun isEmpty!8992 (BalanceConc!9754) Bool)

(assert (=> start!130812 (= res!643214 (not (isEmpty!8992 thiss!5870)))))

(assert (=> start!130812 e!906710))

(declare-fun e!906711 () Bool)

(declare-fun inv!19292 (BalanceConc!9754) Bool)

(assert (=> start!130812 (and (inv!19292 thiss!5870) e!906711)))

(declare-fun b!1420589 () Bool)

(declare-fun tail!2124 (Conc!4907) Conc!4907)

(assert (=> b!1420589 (= e!906710 (not (inv!19292 (BalanceConc!9755 (tail!2124 (c!233518 thiss!5870))))))))

(declare-fun b!1420590 () Bool)

(declare-fun tp!402696 () Bool)

(declare-fun inv!19293 (Conc!4907) Bool)

(assert (=> b!1420590 (= e!906711 (and (inv!19293 (c!233518 thiss!5870)) tp!402696))))

(assert (= (and start!130812 res!643214) b!1420589))

(assert (= start!130812 b!1420590))

(declare-fun m!1610259 () Bool)

(assert (=> start!130812 m!1610259))

(declare-fun m!1610261 () Bool)

(assert (=> start!130812 m!1610261))

(declare-fun m!1610263 () Bool)

(assert (=> b!1420589 m!1610263))

(declare-fun m!1610265 () Bool)

(assert (=> b!1420589 m!1610265))

(declare-fun m!1610267 () Bool)

(assert (=> b!1420590 m!1610267))

(check-sat (not b!1420589) (not b!1420590) (not start!130812))
(check-sat)
(get-model)

(declare-fun d!406963 () Bool)

(declare-fun isBalanced!1464 (Conc!4907) Bool)

(assert (=> d!406963 (= (inv!19292 (BalanceConc!9755 (tail!2124 (c!233518 thiss!5870)))) (isBalanced!1464 (c!233518 (BalanceConc!9755 (tail!2124 (c!233518 thiss!5870))))))))

(declare-fun bs!339746 () Bool)

(assert (= bs!339746 d!406963))

(declare-fun m!1610275 () Bool)

(assert (=> bs!339746 m!1610275))

(assert (=> b!1420589 d!406963))

(declare-fun b!1420623 () Bool)

(declare-fun e!906732 () Bool)

(declare-fun isEmpty!8995 (Conc!4907) Bool)

(assert (=> b!1420623 (= e!906732 (isEmpty!8995 (left!12479 (c!233518 thiss!5870))))))

(declare-fun b!1420624 () Bool)

(declare-fun e!906736 () Conc!4907)

(declare-fun e!906734 () Conc!4907)

(assert (=> b!1420624 (= e!906736 e!906734)))

(declare-fun c!233531 () Bool)

(assert (=> b!1420624 (= c!233531 (= (csize!10045 (c!233518 thiss!5870)) 1))))

(declare-fun b!1420625 () Bool)

(declare-datatypes ((Unit!21786 0))(
  ( (Unit!21787) )
))
(declare-fun lt!479570 () Unit!21786)

(declare-fun lt!479572 () Unit!21786)

(assert (=> b!1420625 (= lt!479570 lt!479572)))

(declare-fun lt!479575 () List!14654)

(declare-fun lt!479574 () List!14654)

(declare-fun call!97087 () List!14654)

(declare-fun tail!2125 (List!14654) List!14654)

(declare-fun ++!3834 (List!14654 List!14654) List!14654)

(assert (=> b!1420625 (= (tail!2125 (++!3834 lt!479575 lt!479574)) (++!3834 call!97087 lt!479574))))

(declare-fun lemmaTailOfConcatIsTailConcat!19 (List!14654 List!14654) Unit!21786)

(assert (=> b!1420625 (= lt!479572 (lemmaTailOfConcatIsTailConcat!19 lt!479575 lt!479574))))

(declare-fun list!5766 (Conc!4907) List!14654)

(assert (=> b!1420625 (= lt!479574 (list!5766 (right!12809 (c!233518 thiss!5870))))))

(assert (=> b!1420625 (= lt!479575 (list!5766 (left!12479 (c!233518 thiss!5870))))))

(declare-fun e!906735 () Conc!4907)

(declare-fun call!97086 () Conc!4907)

(declare-fun ++!3835 (Conc!4907 Conc!4907) Conc!4907)

(assert (=> b!1420625 (= e!906735 (++!3835 call!97086 (right!12809 (c!233518 thiss!5870))))))

(declare-fun b!1420626 () Bool)

(assert (=> b!1420626 (= e!906735 call!97086)))

(declare-fun b!1420627 () Bool)

(declare-fun e!906733 () Bool)

(declare-fun lt!479573 () Conc!4907)

(assert (=> b!1420627 (= e!906733 (= (list!5766 lt!479573) (tail!2125 (list!5766 (c!233518 thiss!5870)))))))

(declare-fun bm!97081 () Bool)

(declare-fun c!233533 () Bool)

(assert (=> bm!97081 (= call!97086 (tail!2124 (ite c!233533 (right!12809 (c!233518 thiss!5870)) (left!12479 (c!233518 thiss!5870)))))))

(declare-fun b!1420628 () Bool)

(assert (=> b!1420628 (= e!906736 e!906735)))

(declare-fun res!643223 () Bool)

(get-info :version)

(assert (=> b!1420628 (= res!643223 ((_ is Node!4907) (c!233518 thiss!5870)))))

(assert (=> b!1420628 (=> (not res!643223) (not e!906732))))

(assert (=> b!1420628 (= c!233533 e!906732)))

(declare-fun d!406967 () Bool)

(assert (=> d!406967 e!906733))

(declare-fun res!643224 () Bool)

(assert (=> d!406967 (=> (not res!643224) (not e!906733))))

(assert (=> d!406967 (= res!643224 (isBalanced!1464 lt!479573))))

(assert (=> d!406967 (= lt!479573 e!906736)))

(declare-fun c!233532 () Bool)

(assert (=> d!406967 (= c!233532 ((_ is Leaf!7378) (c!233518 thiss!5870)))))

(assert (=> d!406967 (isBalanced!1464 (c!233518 thiss!5870))))

(assert (=> d!406967 (= (tail!2124 (c!233518 thiss!5870)) lt!479573)))

(declare-fun bm!97082 () Bool)

(declare-fun lt!479571 () List!14654)

(assert (=> bm!97082 (= call!97087 (tail!2125 (ite c!233532 lt!479571 lt!479575)))))

(declare-fun b!1420629 () Bool)

(declare-fun lt!479576 () Unit!21786)

(declare-fun lt!479577 () Unit!21786)

(assert (=> b!1420629 (= lt!479576 lt!479577)))

(declare-fun slice!550 (List!14654 Int Int) List!14654)

(declare-fun size!12042 (List!14654) Int)

(assert (=> b!1420629 (= call!97087 (slice!550 lt!479571 1 (size!12042 lt!479571)))))

(declare-fun sliceTailLemma!20 (List!14654) Unit!21786)

(assert (=> b!1420629 (= lt!479577 (sliceTailLemma!20 lt!479571))))

(declare-fun list!5768 (IArray!9819) List!14654)

(assert (=> b!1420629 (= lt!479571 (list!5768 (xs!7636 (c!233518 thiss!5870))))))

(declare-fun slice!551 (IArray!9819 Int Int) IArray!9819)

(assert (=> b!1420629 (= e!906734 (Leaf!7378 (slice!551 (xs!7636 (c!233518 thiss!5870)) 1 (csize!10045 (c!233518 thiss!5870))) (- (csize!10045 (c!233518 thiss!5870)) 1)))))

(declare-fun b!1420630 () Bool)

(assert (=> b!1420630 (= e!906734 Empty!4907)))

(assert (= (and d!406967 c!233532) b!1420624))

(assert (= (and d!406967 (not c!233532)) b!1420628))

(assert (= (and b!1420624 c!233531) b!1420630))

(assert (= (and b!1420624 (not c!233531)) b!1420629))

(assert (= (and b!1420628 res!643223) b!1420623))

(assert (= (and b!1420628 c!233533) b!1420626))

(assert (= (and b!1420628 (not c!233533)) b!1420625))

(assert (= (or b!1420626 b!1420625) bm!97081))

(assert (= (or b!1420629 b!1420625) bm!97082))

(assert (= (and d!406967 res!643224) b!1420627))

(declare-fun m!1610281 () Bool)

(assert (=> b!1420625 m!1610281))

(declare-fun m!1610283 () Bool)

(assert (=> b!1420625 m!1610283))

(declare-fun m!1610285 () Bool)

(assert (=> b!1420625 m!1610285))

(declare-fun m!1610287 () Bool)

(assert (=> b!1420625 m!1610287))

(declare-fun m!1610289 () Bool)

(assert (=> b!1420625 m!1610289))

(declare-fun m!1610291 () Bool)

(assert (=> b!1420625 m!1610291))

(assert (=> b!1420625 m!1610289))

(declare-fun m!1610293 () Bool)

(assert (=> b!1420625 m!1610293))

(declare-fun m!1610295 () Bool)

(assert (=> d!406967 m!1610295))

(declare-fun m!1610297 () Bool)

(assert (=> d!406967 m!1610297))

(declare-fun m!1610299 () Bool)

(assert (=> b!1420627 m!1610299))

(declare-fun m!1610301 () Bool)

(assert (=> b!1420627 m!1610301))

(assert (=> b!1420627 m!1610301))

(declare-fun m!1610303 () Bool)

(assert (=> b!1420627 m!1610303))

(declare-fun m!1610305 () Bool)

(assert (=> b!1420629 m!1610305))

(declare-fun m!1610309 () Bool)

(assert (=> b!1420629 m!1610309))

(declare-fun m!1610313 () Bool)

(assert (=> b!1420629 m!1610313))

(declare-fun m!1610315 () Bool)

(assert (=> b!1420629 m!1610315))

(assert (=> b!1420629 m!1610315))

(declare-fun m!1610321 () Bool)

(assert (=> b!1420629 m!1610321))

(declare-fun m!1610325 () Bool)

(assert (=> bm!97081 m!1610325))

(declare-fun m!1610329 () Bool)

(assert (=> b!1420623 m!1610329))

(declare-fun m!1610333 () Bool)

(assert (=> bm!97082 m!1610333))

(assert (=> b!1420589 d!406967))

(declare-fun d!406973 () Bool)

(declare-fun c!233541 () Bool)

(assert (=> d!406973 (= c!233541 ((_ is Node!4907) (c!233518 thiss!5870)))))

(declare-fun e!906750 () Bool)

(assert (=> d!406973 (= (inv!19293 (c!233518 thiss!5870)) e!906750)))

(declare-fun b!1420651 () Bool)

(declare-fun inv!19296 (Conc!4907) Bool)

(assert (=> b!1420651 (= e!906750 (inv!19296 (c!233518 thiss!5870)))))

(declare-fun b!1420652 () Bool)

(declare-fun e!906751 () Bool)

(assert (=> b!1420652 (= e!906750 e!906751)))

(declare-fun res!643231 () Bool)

(assert (=> b!1420652 (= res!643231 (not ((_ is Leaf!7378) (c!233518 thiss!5870))))))

(assert (=> b!1420652 (=> res!643231 e!906751)))

(declare-fun b!1420653 () Bool)

(declare-fun inv!19298 (Conc!4907) Bool)

(assert (=> b!1420653 (= e!906751 (inv!19298 (c!233518 thiss!5870)))))

(assert (= (and d!406973 c!233541) b!1420651))

(assert (= (and d!406973 (not c!233541)) b!1420652))

(assert (= (and b!1420652 (not res!643231)) b!1420653))

(declare-fun m!1610359 () Bool)

(assert (=> b!1420651 m!1610359))

(declare-fun m!1610361 () Bool)

(assert (=> b!1420653 m!1610361))

(assert (=> b!1420590 d!406973))

(declare-fun d!406977 () Bool)

(declare-fun lt!479588 () Bool)

(declare-fun isEmpty!8996 (List!14654) Bool)

(declare-fun list!5769 (BalanceConc!9754) List!14654)

(assert (=> d!406977 (= lt!479588 (isEmpty!8996 (list!5769 thiss!5870)))))

(assert (=> d!406977 (= lt!479588 (isEmpty!8995 (c!233518 thiss!5870)))))

(assert (=> d!406977 (= (isEmpty!8992 thiss!5870) lt!479588)))

(declare-fun bs!339749 () Bool)

(assert (= bs!339749 d!406977))

(declare-fun m!1610369 () Bool)

(assert (=> bs!339749 m!1610369))

(assert (=> bs!339749 m!1610369))

(declare-fun m!1610375 () Bool)

(assert (=> bs!339749 m!1610375))

(declare-fun m!1610377 () Bool)

(assert (=> bs!339749 m!1610377))

(assert (=> start!130812 d!406977))

(declare-fun d!406979 () Bool)

(assert (=> d!406979 (= (inv!19292 thiss!5870) (isBalanced!1464 (c!233518 thiss!5870)))))

(declare-fun bs!339750 () Bool)

(assert (= bs!339750 d!406979))

(assert (=> bs!339750 m!1610297))

(assert (=> start!130812 d!406979))

(declare-fun b!1420676 () Bool)

(declare-fun e!906765 () Bool)

(declare-fun tp!402712 () Bool)

(declare-fun tp!402714 () Bool)

(assert (=> b!1420676 (= e!906765 (and (inv!19293 (left!12479 (c!233518 thiss!5870))) tp!402712 (inv!19293 (right!12809 (c!233518 thiss!5870))) tp!402714))))

(declare-fun b!1420678 () Bool)

(declare-fun e!906764 () Bool)

(declare-fun tp!402713 () Bool)

(assert (=> b!1420678 (= e!906764 tp!402713)))

(declare-fun b!1420677 () Bool)

(declare-fun inv!19299 (IArray!9819) Bool)

(assert (=> b!1420677 (= e!906765 (and (inv!19299 (xs!7636 (c!233518 thiss!5870))) e!906764))))

(assert (=> b!1420590 (= tp!402696 (and (inv!19293 (c!233518 thiss!5870)) e!906765))))

(assert (= (and b!1420590 ((_ is Node!4907) (c!233518 thiss!5870))) b!1420676))

(assert (= b!1420677 b!1420678))

(assert (= (and b!1420590 ((_ is Leaf!7378) (c!233518 thiss!5870))) b!1420677))

(declare-fun m!1610379 () Bool)

(assert (=> b!1420676 m!1610379))

(declare-fun m!1610381 () Bool)

(assert (=> b!1420676 m!1610381))

(declare-fun m!1610383 () Bool)

(assert (=> b!1420677 m!1610383))

(assert (=> b!1420590 m!1610267))

(check-sat (not b!1420678) (not bm!97082) (not d!406967) (not d!406963) (not b!1420653) (not bm!97081) (not b!1420677) (not b!1420623) (not b!1420629) (not d!406979) (not b!1420590) (not b!1420625) (not b!1420651) (not b!1420676) (not b!1420627) (not d!406977))
(check-sat)

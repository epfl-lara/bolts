; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104230 () Bool)

(assert start!104230)

(declare-fun b!1178649 () Bool)

(declare-fun res!532889 () Bool)

(declare-fun e!756262 () Bool)

(assert (=> b!1178649 (=> (not res!532889) (not e!756262))))

(declare-fun until!13 () Int)

(declare-datatypes ((T!20998 0))(
  ( (T!20999 (val!3754 Int)) )
))
(declare-datatypes ((List!11701 0))(
  ( (Nil!11677) (Cons!11677 (h!17078 T!20998) (t!111205 List!11701)) )
))
(declare-datatypes ((IArray!7663 0))(
  ( (IArray!7664 (innerList!3889 List!11701)) )
))
(declare-datatypes ((Conc!3829 0))(
  ( (Node!3829 (left!10201 Conc!3829) (right!10531 Conc!3829) (csize!7888 Int) (cheight!4040 Int)) (Leaf!5874 (xs!6534 IArray!7663) (csize!7889 Int)) (Empty!3829) )
))
(declare-datatypes ((BalanceConc!7680 0))(
  ( (BalanceConc!7681 (c!196537 Conc!3829)) )
))
(declare-fun thiss!5831 () BalanceConc!7680)

(declare-fun size!9253 (BalanceConc!7680) Int)

(assert (=> b!1178649 (= res!532889 (<= until!13 (size!9253 thiss!5831)))))

(declare-fun b!1178650 () Bool)

(declare-fun e!756261 () Bool)

(assert (=> b!1178650 (= e!756262 e!756261)))

(declare-fun res!532887 () Bool)

(assert (=> b!1178650 (=> res!532887 e!756261)))

(declare-fun lt!406252 () Conc!3829)

(declare-fun isBalanced!1091 (Conc!3829) Bool)

(assert (=> b!1178650 (= res!532887 (not (isBalanced!1091 lt!406252)))))

(declare-fun from!529 () Int)

(declare-fun slice!404 (Conc!3829 Int Int) Conc!3829)

(assert (=> b!1178650 (= lt!406252 (slice!404 (c!196537 thiss!5831) from!529 until!13))))

(declare-fun b!1178651 () Bool)

(declare-fun e!756263 () Bool)

(declare-fun tp!335320 () Bool)

(declare-fun inv!15485 (Conc!3829) Bool)

(assert (=> b!1178651 (= e!756263 (and (inv!15485 (c!196537 thiss!5831)) tp!335320))))

(declare-fun b!1178652 () Bool)

(declare-fun list!4320 (BalanceConc!7680) List!11701)

(declare-fun slice!405 (List!11701 Int Int) List!11701)

(assert (=> b!1178652 (= e!756261 (not (= (list!4320 (BalanceConc!7681 lt!406252)) (slice!405 (list!4320 thiss!5831) from!529 until!13))))))

(declare-fun res!532888 () Bool)

(assert (=> start!104230 (=> (not res!532888) (not e!756262))))

(assert (=> start!104230 (= res!532888 (and (<= 0 from!529) (<= from!529 until!13)))))

(assert (=> start!104230 e!756262))

(assert (=> start!104230 true))

(declare-fun inv!15486 (BalanceConc!7680) Bool)

(assert (=> start!104230 (and (inv!15486 thiss!5831) e!756263)))

(declare-fun b!1178653 () Bool)

(declare-fun res!532886 () Bool)

(assert (=> b!1178653 (=> (not res!532886) (not e!756262))))

(assert (=> b!1178653 (= res!532886 (isBalanced!1091 (c!196537 thiss!5831)))))

(assert (= (and start!104230 res!532888) b!1178649))

(assert (= (and b!1178649 res!532889) b!1178653))

(assert (= (and b!1178653 res!532886) b!1178650))

(assert (= (and b!1178650 (not res!532887)) b!1178652))

(assert (= start!104230 b!1178651))

(declare-fun m!1355299 () Bool)

(assert (=> b!1178652 m!1355299))

(declare-fun m!1355301 () Bool)

(assert (=> b!1178652 m!1355301))

(assert (=> b!1178652 m!1355301))

(declare-fun m!1355303 () Bool)

(assert (=> b!1178652 m!1355303))

(declare-fun m!1355305 () Bool)

(assert (=> b!1178651 m!1355305))

(declare-fun m!1355307 () Bool)

(assert (=> b!1178649 m!1355307))

(declare-fun m!1355309 () Bool)

(assert (=> start!104230 m!1355309))

(declare-fun m!1355311 () Bool)

(assert (=> b!1178650 m!1355311))

(declare-fun m!1355313 () Bool)

(assert (=> b!1178650 m!1355313))

(declare-fun m!1355315 () Bool)

(assert (=> b!1178653 m!1355315))

(check-sat (not b!1178652) (not start!104230) (not b!1178649) (not b!1178650) (not b!1178651) (not b!1178653))
(check-sat)
(get-model)

(declare-fun d!337525 () Bool)

(assert (=> d!337525 (= (inv!15486 thiss!5831) (isBalanced!1091 (c!196537 thiss!5831)))))

(declare-fun bs!286781 () Bool)

(assert (= bs!286781 d!337525))

(assert (=> bs!286781 m!1355315))

(assert (=> start!104230 d!337525))

(declare-fun d!337533 () Bool)

(declare-fun lt!406255 () Int)

(declare-fun size!9256 (List!11701) Int)

(assert (=> d!337533 (= lt!406255 (size!9256 (list!4320 thiss!5831)))))

(declare-fun size!9257 (Conc!3829) Int)

(assert (=> d!337533 (= lt!406255 (size!9257 (c!196537 thiss!5831)))))

(assert (=> d!337533 (= (size!9253 thiss!5831) lt!406255)))

(declare-fun bs!286782 () Bool)

(assert (= bs!286782 d!337533))

(assert (=> bs!286782 m!1355301))

(assert (=> bs!286782 m!1355301))

(declare-fun m!1355325 () Bool)

(assert (=> bs!286782 m!1355325))

(declare-fun m!1355327 () Bool)

(assert (=> bs!286782 m!1355327))

(assert (=> b!1178649 d!337533))

(declare-fun b!1178675 () Bool)

(declare-fun res!532908 () Bool)

(declare-fun e!756274 () Bool)

(assert (=> b!1178675 (=> (not res!532908) (not e!756274))))

(declare-fun isEmpty!7065 (Conc!3829) Bool)

(assert (=> b!1178675 (= res!532908 (not (isEmpty!7065 (left!10201 lt!406252))))))

(declare-fun b!1178676 () Bool)

(assert (=> b!1178676 (= e!756274 (not (isEmpty!7065 (right!10531 lt!406252))))))

(declare-fun b!1178678 () Bool)

(declare-fun e!756275 () Bool)

(assert (=> b!1178678 (= e!756275 e!756274)))

(declare-fun res!532906 () Bool)

(assert (=> b!1178678 (=> (not res!532906) (not e!756274))))

(declare-fun height!526 (Conc!3829) Int)

(assert (=> b!1178678 (= res!532906 (<= (- 1) (- (height!526 (left!10201 lt!406252)) (height!526 (right!10531 lt!406252)))))))

(declare-fun b!1178679 () Bool)

(declare-fun res!532907 () Bool)

(assert (=> b!1178679 (=> (not res!532907) (not e!756274))))

(assert (=> b!1178679 (= res!532907 (isBalanced!1091 (right!10531 lt!406252)))))

(declare-fun b!1178680 () Bool)

(declare-fun res!532910 () Bool)

(assert (=> b!1178680 (=> (not res!532910) (not e!756274))))

(assert (=> b!1178680 (= res!532910 (<= (- (height!526 (left!10201 lt!406252)) (height!526 (right!10531 lt!406252))) 1))))

(declare-fun b!1178677 () Bool)

(declare-fun res!532905 () Bool)

(assert (=> b!1178677 (=> (not res!532905) (not e!756274))))

(assert (=> b!1178677 (= res!532905 (isBalanced!1091 (left!10201 lt!406252)))))

(declare-fun d!337535 () Bool)

(declare-fun res!532909 () Bool)

(assert (=> d!337535 (=> res!532909 e!756275)))

(get-info :version)

(assert (=> d!337535 (= res!532909 (not ((_ is Node!3829) lt!406252)))))

(assert (=> d!337535 (= (isBalanced!1091 lt!406252) e!756275)))

(assert (= (and d!337535 (not res!532909)) b!1178678))

(assert (= (and b!1178678 res!532906) b!1178680))

(assert (= (and b!1178680 res!532910) b!1178677))

(assert (= (and b!1178677 res!532905) b!1178679))

(assert (= (and b!1178679 res!532907) b!1178675))

(assert (= (and b!1178675 res!532908) b!1178676))

(declare-fun m!1355337 () Bool)

(assert (=> b!1178678 m!1355337))

(declare-fun m!1355339 () Bool)

(assert (=> b!1178678 m!1355339))

(declare-fun m!1355341 () Bool)

(assert (=> b!1178676 m!1355341))

(declare-fun m!1355343 () Bool)

(assert (=> b!1178679 m!1355343))

(declare-fun m!1355345 () Bool)

(assert (=> b!1178675 m!1355345))

(declare-fun m!1355347 () Bool)

(assert (=> b!1178677 m!1355347))

(assert (=> b!1178680 m!1355337))

(assert (=> b!1178680 m!1355339))

(assert (=> b!1178650 d!337535))

(declare-fun b!1178789 () Bool)

(declare-fun res!532948 () Bool)

(declare-fun e!756335 () Bool)

(assert (=> b!1178789 (=> (not res!532948) (not e!756335))))

(assert (=> b!1178789 (= res!532948 (<= until!13 (size!9257 (c!196537 thiss!5831))))))

(declare-fun b!1178790 () Bool)

(declare-fun e!756334 () List!11701)

(declare-fun call!82570 () List!11701)

(assert (=> b!1178790 (= e!756334 call!82570)))

(declare-fun b!1178791 () Bool)

(declare-fun e!756336 () Conc!3829)

(assert (=> b!1178791 (= e!756336 Empty!3829)))

(declare-fun b!1178793 () Bool)

(declare-fun e!756332 () Int)

(declare-fun call!82567 () Int)

(assert (=> b!1178793 (= e!756332 (- until!13 call!82567))))

(declare-fun b!1178794 () Bool)

(declare-fun c!196578 () Bool)

(assert (=> b!1178794 (= c!196578 (= (- until!13 from!529) 0))))

(declare-fun e!756333 () Conc!3829)

(assert (=> b!1178794 (= e!756333 e!756336)))

(declare-fun bm!82560 () Bool)

(declare-fun c!196585 () Bool)

(declare-fun c!196581 () Bool)

(assert (=> bm!82560 (= c!196585 c!196581)))

(declare-fun call!82569 () Conc!3829)

(declare-fun call!82566 () Conc!3829)

(assert (=> bm!82560 (= call!82569 call!82566)))

(declare-fun b!1178795 () Bool)

(declare-fun e!756330 () Conc!3829)

(declare-fun e!756338 () Conc!3829)

(assert (=> b!1178795 (= e!756330 e!756338)))

(assert (=> b!1178795 (= c!196581 (<= until!13 call!82567))))

(declare-fun b!1178796 () Bool)

(declare-fun e!756331 () Int)

(assert (=> b!1178796 (= e!756331 until!13)))

(declare-fun b!1178797 () Bool)

(assert (=> b!1178797 (= e!756335 (isBalanced!1091 (c!196537 thiss!5831)))))

(declare-fun bm!82561 () Bool)

(assert (=> bm!82561 (= call!82567 (size!9257 (left!10201 (c!196537 thiss!5831))))))

(declare-fun lt!406280 () List!11701)

(declare-fun e!756328 () List!11701)

(declare-fun call!82565 () List!11701)

(declare-fun b!1178798 () Bool)

(declare-fun call!82568 () Int)

(declare-fun ++!3019 (List!11701 List!11701) List!11701)

(assert (=> b!1178798 (= e!756328 (++!3019 call!82565 (slice!405 lt!406280 0 (- until!13 call!82568))))))

(declare-fun b!1178799 () Bool)

(assert (=> b!1178799 (= e!756334 e!756328)))

(declare-fun c!196577 () Bool)

(assert (=> b!1178799 (= c!196577 (<= until!13 call!82568))))

(declare-fun b!1178800 () Bool)

(declare-fun e!756329 () Conc!3829)

(assert (=> b!1178800 (= e!756329 e!756333)))

(declare-fun c!196582 () Bool)

(assert (=> b!1178800 (= c!196582 ((_ is Leaf!5874) (c!196537 thiss!5831)))))

(declare-fun bm!82562 () Bool)

(declare-fun lt!406282 () List!11701)

(assert (=> bm!82562 (= call!82568 (size!9256 lt!406282))))

(declare-fun b!1178801 () Bool)

(declare-fun c!196580 () Bool)

(assert (=> b!1178801 (= c!196580 (<= (size!9257 (left!10201 (c!196537 thiss!5831))) from!529))))

(declare-datatypes ((Unit!18016 0))(
  ( (Unit!18017) )
))
(declare-fun lt!406281 () Unit!18016)

(declare-fun lt!406279 () Unit!18016)

(assert (=> b!1178801 (= lt!406281 lt!406279)))

(assert (=> b!1178801 (= (slice!405 (++!3019 lt!406282 lt!406280) from!529 until!13) e!756334)))

(declare-fun c!196579 () Bool)

(assert (=> b!1178801 (= c!196579 (<= (size!9256 lt!406282) from!529))))

(declare-fun sliceLemma!14 (List!11701 List!11701 Int Int) Unit!18016)

(assert (=> b!1178801 (= lt!406279 (sliceLemma!14 lt!406282 lt!406280 from!529 until!13))))

(declare-fun list!4322 (Conc!3829) List!11701)

(assert (=> b!1178801 (= lt!406280 (list!4322 (right!10531 (c!196537 thiss!5831))))))

(assert (=> b!1178801 (= lt!406282 (list!4322 (left!10201 (c!196537 thiss!5831))))))

(assert (=> b!1178801 (= e!756333 e!756330)))

(declare-fun b!1178802 () Bool)

(assert (=> b!1178802 (= e!756332 until!13)))

(declare-fun b!1178803 () Bool)

(declare-fun lt!406283 () Conc!3829)

(declare-fun e!756337 () Bool)

(assert (=> b!1178803 (= e!756337 (= (list!4322 lt!406283) (slice!405 (list!4322 (c!196537 thiss!5831)) from!529 until!13)))))

(declare-fun b!1178804 () Bool)

(assert (=> b!1178804 (= e!756331 call!82568)))

(declare-fun d!337543 () Bool)

(assert (=> d!337543 e!756337))

(declare-fun res!532947 () Bool)

(assert (=> d!337543 (=> (not res!532947) (not e!756337))))

(assert (=> d!337543 (= res!532947 (isBalanced!1091 lt!406283))))

(assert (=> d!337543 (= lt!406283 e!756329)))

(declare-fun c!196583 () Bool)

(assert (=> d!337543 (= c!196583 (= from!529 until!13))))

(assert (=> d!337543 e!756335))

(declare-fun res!532949 () Bool)

(assert (=> d!337543 (=> (not res!532949) (not e!756335))))

(assert (=> d!337543 (= res!532949 (and (<= 0 from!529) (<= from!529 until!13)))))

(assert (=> d!337543 (= (slice!404 (c!196537 thiss!5831) from!529 until!13) lt!406283)))

(declare-fun b!1178792 () Bool)

(assert (=> b!1178792 (= e!756338 call!82569)))

(declare-fun b!1178805 () Bool)

(assert (=> b!1178805 (= e!756329 Empty!3829)))

(declare-fun bm!82563 () Bool)

(assert (=> bm!82563 (= call!82566 (slice!404 (ite c!196580 (right!10531 (c!196537 thiss!5831)) (ite c!196581 (left!10201 (c!196537 thiss!5831)) (right!10531 (c!196537 thiss!5831)))) (ite c!196580 (- from!529 call!82567) (ite c!196581 from!529 0)) (ite c!196580 (- until!13 call!82567) e!756332)))))

(declare-fun b!1178806 () Bool)

(assert (=> b!1178806 (= e!756330 call!82566)))

(declare-fun b!1178807 () Bool)

(declare-fun slice!407 (IArray!7663 Int Int) IArray!7663)

(assert (=> b!1178807 (= e!756336 (Leaf!5874 (slice!407 (xs!6534 (c!196537 thiss!5831)) from!529 until!13) (- until!13 from!529)))))

(declare-fun b!1178808 () Bool)

(assert (=> b!1178808 (= e!756328 call!82565)))

(declare-fun bm!82564 () Bool)

(assert (=> bm!82564 (= call!82570 (slice!405 (ite c!196579 lt!406280 lt!406282) (ite c!196579 (- from!529 call!82568) from!529) (ite c!196579 (- until!13 call!82568) e!756331)))))

(declare-fun bm!82565 () Bool)

(declare-fun c!196584 () Bool)

(assert (=> bm!82565 (= c!196584 c!196577)))

(assert (=> bm!82565 (= call!82565 call!82570)))

(declare-fun b!1178809 () Bool)

(declare-fun ++!3021 (Conc!3829 Conc!3829) Conc!3829)

(assert (=> b!1178809 (= e!756338 (++!3021 (slice!404 (left!10201 (c!196537 thiss!5831)) from!529 call!82567) call!82569))))

(assert (= (and d!337543 res!532949) b!1178789))

(assert (= (and b!1178789 res!532948) b!1178797))

(assert (= (and d!337543 c!196583) b!1178805))

(assert (= (and d!337543 (not c!196583)) b!1178800))

(assert (= (and b!1178800 c!196582) b!1178794))

(assert (= (and b!1178800 (not c!196582)) b!1178801))

(assert (= (and b!1178794 c!196578) b!1178791))

(assert (= (and b!1178794 (not c!196578)) b!1178807))

(assert (= (and b!1178801 c!196579) b!1178790))

(assert (= (and b!1178801 (not c!196579)) b!1178799))

(assert (= (and b!1178799 c!196577) b!1178808))

(assert (= (and b!1178799 (not c!196577)) b!1178798))

(assert (= (or b!1178808 b!1178798) bm!82565))

(assert (= (and bm!82565 c!196584) b!1178796))

(assert (= (and bm!82565 (not c!196584)) b!1178804))

(assert (= (or b!1178790 b!1178804 b!1178798 b!1178799) bm!82562))

(assert (= (or b!1178790 bm!82565) bm!82564))

(assert (= (and b!1178801 c!196580) b!1178806))

(assert (= (and b!1178801 (not c!196580)) b!1178795))

(assert (= (and b!1178795 c!196581) b!1178792))

(assert (= (and b!1178795 (not c!196581)) b!1178809))

(assert (= (or b!1178792 b!1178809) bm!82560))

(assert (= (and bm!82560 c!196585) b!1178802))

(assert (= (and bm!82560 (not c!196585)) b!1178793))

(assert (= (or b!1178806 b!1178793 b!1178795 b!1178809) bm!82561))

(assert (= (or b!1178806 bm!82560) bm!82563))

(assert (= (and d!337543 res!532947) b!1178803))

(assert (=> b!1178797 m!1355315))

(assert (=> b!1178789 m!1355327))

(declare-fun m!1355373 () Bool)

(assert (=> d!337543 m!1355373))

(declare-fun m!1355375 () Bool)

(assert (=> b!1178801 m!1355375))

(declare-fun m!1355377 () Bool)

(assert (=> b!1178801 m!1355377))

(declare-fun m!1355379 () Bool)

(assert (=> b!1178801 m!1355379))

(assert (=> b!1178801 m!1355375))

(declare-fun m!1355381 () Bool)

(assert (=> b!1178801 m!1355381))

(declare-fun m!1355383 () Bool)

(assert (=> b!1178801 m!1355383))

(declare-fun m!1355385 () Bool)

(assert (=> b!1178801 m!1355385))

(declare-fun m!1355387 () Bool)

(assert (=> b!1178801 m!1355387))

(declare-fun m!1355389 () Bool)

(assert (=> bm!82564 m!1355389))

(declare-fun m!1355391 () Bool)

(assert (=> b!1178798 m!1355391))

(assert (=> b!1178798 m!1355391))

(declare-fun m!1355393 () Bool)

(assert (=> b!1178798 m!1355393))

(declare-fun m!1355395 () Bool)

(assert (=> b!1178809 m!1355395))

(assert (=> b!1178809 m!1355395))

(declare-fun m!1355397 () Bool)

(assert (=> b!1178809 m!1355397))

(assert (=> bm!82562 m!1355381))

(declare-fun m!1355399 () Bool)

(assert (=> b!1178807 m!1355399))

(assert (=> bm!82561 m!1355385))

(declare-fun m!1355401 () Bool)

(assert (=> bm!82563 m!1355401))

(declare-fun m!1355403 () Bool)

(assert (=> b!1178803 m!1355403))

(declare-fun m!1355405 () Bool)

(assert (=> b!1178803 m!1355405))

(assert (=> b!1178803 m!1355405))

(declare-fun m!1355407 () Bool)

(assert (=> b!1178803 m!1355407))

(assert (=> b!1178650 d!337543))

(declare-fun d!337549 () Bool)

(declare-fun c!196597 () Bool)

(assert (=> d!337549 (= c!196597 ((_ is Node!3829) (c!196537 thiss!5831)))))

(declare-fun e!756360 () Bool)

(assert (=> d!337549 (= (inv!15485 (c!196537 thiss!5831)) e!756360)))

(declare-fun b!1178848 () Bool)

(declare-fun inv!15489 (Conc!3829) Bool)

(assert (=> b!1178848 (= e!756360 (inv!15489 (c!196537 thiss!5831)))))

(declare-fun b!1178849 () Bool)

(declare-fun e!756361 () Bool)

(assert (=> b!1178849 (= e!756360 e!756361)))

(declare-fun res!532955 () Bool)

(assert (=> b!1178849 (= res!532955 (not ((_ is Leaf!5874) (c!196537 thiss!5831))))))

(assert (=> b!1178849 (=> res!532955 e!756361)))

(declare-fun b!1178850 () Bool)

(declare-fun inv!15490 (Conc!3829) Bool)

(assert (=> b!1178850 (= e!756361 (inv!15490 (c!196537 thiss!5831)))))

(assert (= (and d!337549 c!196597) b!1178848))

(assert (= (and d!337549 (not c!196597)) b!1178849))

(assert (= (and b!1178849 (not res!532955)) b!1178850))

(declare-fun m!1355449 () Bool)

(assert (=> b!1178848 m!1355449))

(declare-fun m!1355451 () Bool)

(assert (=> b!1178850 m!1355451))

(assert (=> b!1178651 d!337549))

(declare-fun d!337551 () Bool)

(assert (=> d!337551 (= (list!4320 (BalanceConc!7681 lt!406252)) (list!4322 (c!196537 (BalanceConc!7681 lt!406252))))))

(declare-fun bs!286785 () Bool)

(assert (= bs!286785 d!337551))

(declare-fun m!1355453 () Bool)

(assert (=> bs!286785 m!1355453))

(assert (=> b!1178652 d!337551))

(declare-fun d!337553 () Bool)

(declare-fun take!99 (List!11701 Int) List!11701)

(declare-fun drop!511 (List!11701 Int) List!11701)

(assert (=> d!337553 (= (slice!405 (list!4320 thiss!5831) from!529 until!13) (take!99 (drop!511 (list!4320 thiss!5831) from!529) (- until!13 from!529)))))

(declare-fun bs!286786 () Bool)

(assert (= bs!286786 d!337553))

(assert (=> bs!286786 m!1355301))

(declare-fun m!1355455 () Bool)

(assert (=> bs!286786 m!1355455))

(assert (=> bs!286786 m!1355455))

(declare-fun m!1355457 () Bool)

(assert (=> bs!286786 m!1355457))

(assert (=> b!1178652 d!337553))

(declare-fun d!337555 () Bool)

(assert (=> d!337555 (= (list!4320 thiss!5831) (list!4322 (c!196537 thiss!5831)))))

(declare-fun bs!286787 () Bool)

(assert (= bs!286787 d!337555))

(assert (=> bs!286787 m!1355405))

(assert (=> b!1178652 d!337555))

(declare-fun b!1178851 () Bool)

(declare-fun res!532959 () Bool)

(declare-fun e!756362 () Bool)

(assert (=> b!1178851 (=> (not res!532959) (not e!756362))))

(assert (=> b!1178851 (= res!532959 (not (isEmpty!7065 (left!10201 (c!196537 thiss!5831)))))))

(declare-fun b!1178852 () Bool)

(assert (=> b!1178852 (= e!756362 (not (isEmpty!7065 (right!10531 (c!196537 thiss!5831)))))))

(declare-fun b!1178854 () Bool)

(declare-fun e!756363 () Bool)

(assert (=> b!1178854 (= e!756363 e!756362)))

(declare-fun res!532957 () Bool)

(assert (=> b!1178854 (=> (not res!532957) (not e!756362))))

(assert (=> b!1178854 (= res!532957 (<= (- 1) (- (height!526 (left!10201 (c!196537 thiss!5831))) (height!526 (right!10531 (c!196537 thiss!5831))))))))

(declare-fun b!1178855 () Bool)

(declare-fun res!532958 () Bool)

(assert (=> b!1178855 (=> (not res!532958) (not e!756362))))

(assert (=> b!1178855 (= res!532958 (isBalanced!1091 (right!10531 (c!196537 thiss!5831))))))

(declare-fun b!1178856 () Bool)

(declare-fun res!532961 () Bool)

(assert (=> b!1178856 (=> (not res!532961) (not e!756362))))

(assert (=> b!1178856 (= res!532961 (<= (- (height!526 (left!10201 (c!196537 thiss!5831))) (height!526 (right!10531 (c!196537 thiss!5831)))) 1))))

(declare-fun b!1178853 () Bool)

(declare-fun res!532956 () Bool)

(assert (=> b!1178853 (=> (not res!532956) (not e!756362))))

(assert (=> b!1178853 (= res!532956 (isBalanced!1091 (left!10201 (c!196537 thiss!5831))))))

(declare-fun d!337557 () Bool)

(declare-fun res!532960 () Bool)

(assert (=> d!337557 (=> res!532960 e!756363)))

(assert (=> d!337557 (= res!532960 (not ((_ is Node!3829) (c!196537 thiss!5831))))))

(assert (=> d!337557 (= (isBalanced!1091 (c!196537 thiss!5831)) e!756363)))

(assert (= (and d!337557 (not res!532960)) b!1178854))

(assert (= (and b!1178854 res!532957) b!1178856))

(assert (= (and b!1178856 res!532961) b!1178853))

(assert (= (and b!1178853 res!532956) b!1178855))

(assert (= (and b!1178855 res!532958) b!1178851))

(assert (= (and b!1178851 res!532959) b!1178852))

(declare-fun m!1355459 () Bool)

(assert (=> b!1178854 m!1355459))

(declare-fun m!1355461 () Bool)

(assert (=> b!1178854 m!1355461))

(declare-fun m!1355463 () Bool)

(assert (=> b!1178852 m!1355463))

(declare-fun m!1355465 () Bool)

(assert (=> b!1178855 m!1355465))

(declare-fun m!1355467 () Bool)

(assert (=> b!1178851 m!1355467))

(declare-fun m!1355469 () Bool)

(assert (=> b!1178853 m!1355469))

(assert (=> b!1178856 m!1355459))

(assert (=> b!1178856 m!1355461))

(assert (=> b!1178653 d!337557))

(declare-fun tp!335338 () Bool)

(declare-fun b!1178865 () Bool)

(declare-fun e!756368 () Bool)

(declare-fun tp!335336 () Bool)

(assert (=> b!1178865 (= e!756368 (and (inv!15485 (left!10201 (c!196537 thiss!5831))) tp!335338 (inv!15485 (right!10531 (c!196537 thiss!5831))) tp!335336))))

(declare-fun b!1178867 () Bool)

(declare-fun e!756369 () Bool)

(declare-fun tp!335337 () Bool)

(assert (=> b!1178867 (= e!756369 tp!335337)))

(declare-fun b!1178866 () Bool)

(declare-fun inv!15492 (IArray!7663) Bool)

(assert (=> b!1178866 (= e!756368 (and (inv!15492 (xs!6534 (c!196537 thiss!5831))) e!756369))))

(assert (=> b!1178651 (= tp!335320 (and (inv!15485 (c!196537 thiss!5831)) e!756368))))

(assert (= (and b!1178651 ((_ is Node!3829) (c!196537 thiss!5831))) b!1178865))

(assert (= b!1178866 b!1178867))

(assert (= (and b!1178651 ((_ is Leaf!5874) (c!196537 thiss!5831))) b!1178866))

(declare-fun m!1355471 () Bool)

(assert (=> b!1178865 m!1355471))

(declare-fun m!1355473 () Bool)

(assert (=> b!1178865 m!1355473))

(declare-fun m!1355475 () Bool)

(assert (=> b!1178866 m!1355475))

(assert (=> b!1178651 m!1355305))

(check-sat (not b!1178865) (not b!1178676) (not b!1178680) (not b!1178803) (not b!1178797) (not b!1178801) (not b!1178679) (not b!1178807) (not d!337533) (not b!1178798) (not b!1178809) (not bm!82561) (not b!1178856) (not d!337543) (not b!1178855) (not bm!82562) (not b!1178677) (not b!1178678) (not d!337551) (not b!1178851) (not b!1178675) (not d!337553) (not b!1178867) (not b!1178853) (not bm!82564) (not bm!82563) (not b!1178854) (not d!337555) (not b!1178866) (not b!1178651) (not d!337525) (not b!1178848) (not b!1178850) (not b!1178852) (not b!1178789))
(check-sat)

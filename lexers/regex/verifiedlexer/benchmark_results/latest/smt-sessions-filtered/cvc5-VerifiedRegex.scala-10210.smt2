; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!532808 () Bool)

(assert start!532808)

(declare-fun b!5036423 () Bool)

(declare-fun res!2146001 () Bool)

(declare-fun e!3145760 () Bool)

(assert (=> b!5036423 (=> (not res!2146001) (not e!3145760))))

(declare-fun i!618 () Int)

(declare-datatypes ((T!104052 0))(
  ( (T!104053 (val!23495 Int)) )
))
(declare-datatypes ((List!58405 0))(
  ( (Nil!58281) (Cons!58281 (h!64729 T!104052) (t!370892 List!58405)) )
))
(declare-datatypes ((IArray!31047 0))(
  ( (IArray!31048 (innerList!15581 List!58405)) )
))
(declare-datatypes ((Conc!15493 0))(
  ( (Node!15493 (left!42669 Conc!15493) (right!42999 Conc!15493) (csize!31216 Int) (cheight!15704 Int)) (Leaf!25704 (xs!18819 IArray!31047) (csize!31217 Int)) (Empty!15493) )
))
(declare-fun t!4198 () Conc!15493)

(declare-fun size!38860 (Conc!15493) Int)

(assert (=> b!5036423 (= res!2146001 (<= i!618 (size!38860 t!4198)))))

(declare-fun b!5036424 () Bool)

(declare-datatypes ((tuple2!63204 0))(
  ( (tuple2!63205 (_1!34905 List!58405) (_2!34905 List!58405)) )
))
(declare-fun lt!2083611 () tuple2!63204)

(declare-fun call!351314 () tuple2!63204)

(assert (=> b!5036424 (= lt!2083611 call!351314)))

(declare-fun e!3145762 () tuple2!63204)

(declare-fun call!351313 () List!58405)

(assert (=> b!5036424 (= e!3145762 (tuple2!63205 call!351313 (_2!34905 lt!2083611)))))

(declare-fun b!5036425 () Bool)

(declare-fun e!3145761 () Bool)

(declare-fun e!3145757 () Bool)

(assert (=> b!5036425 (= e!3145761 e!3145757)))

(declare-fun res!2145997 () Bool)

(assert (=> b!5036425 (=> (not res!2145997) (not e!3145757))))

(declare-fun isBalanced!4355 (Conc!15493) Bool)

(assert (=> b!5036425 (= res!2145997 (isBalanced!4355 (left!42669 t!4198)))))

(declare-fun lt!2083615 () Int)

(declare-datatypes ((tuple2!63206 0))(
  ( (tuple2!63207 (_1!34906 Conc!15493) (_2!34906 Conc!15493)) )
))
(declare-fun lt!2083619 () tuple2!63206)

(declare-fun splitAt!478 (Conc!15493 Int) tuple2!63206)

(assert (=> b!5036425 (= lt!2083619 (splitAt!478 (right!42999 t!4198) (- i!618 lt!2083615)))))

(declare-fun tp!1410346 () Bool)

(declare-fun b!5036426 () Bool)

(declare-fun e!3145758 () Bool)

(declare-fun tp!1410347 () Bool)

(declare-fun inv!77051 (Conc!15493) Bool)

(assert (=> b!5036426 (= e!3145758 (and (inv!77051 (left!42669 t!4198)) tp!1410346 (inv!77051 (right!42999 t!4198)) tp!1410347))))

(declare-fun b!5036427 () Bool)

(declare-fun res!2145999 () Bool)

(assert (=> b!5036427 (=> (not res!2145999) (not e!3145760))))

(assert (=> b!5036427 (= res!2145999 (and (not (is-Empty!15493 t!4198)) (not (is-Leaf!25704 t!4198))))))

(declare-fun b!5036428 () Bool)

(declare-fun res!2145996 () Bool)

(assert (=> b!5036428 (=> (not res!2145996) (not e!3145760))))

(assert (=> b!5036428 (= res!2145996 (<= 0 i!618))))

(declare-fun b!5036429 () Bool)

(assert (=> b!5036429 (= e!3145757 (isBalanced!4355 (_1!34906 lt!2083619)))))

(declare-fun lt!2083617 () tuple2!63204)

(declare-fun lt!2083613 () List!58405)

(declare-fun bm!351308 () Bool)

(declare-fun lt!2083612 () List!58405)

(declare-fun c!862696 () Bool)

(declare-fun ++!12710 (List!58405 List!58405) List!58405)

(assert (=> bm!351308 (= call!351313 (++!12710 (ite c!862696 (_2!34905 lt!2083617) lt!2083612) (ite c!862696 lt!2083613 (_1!34905 lt!2083611))))))

(declare-fun lt!2083614 () Int)

(declare-fun bm!351309 () Bool)

(declare-fun splitAtIndex!194 (List!58405 Int) tuple2!63204)

(assert (=> bm!351309 (= call!351314 (splitAtIndex!194 (ite c!862696 lt!2083612 lt!2083613) (ite c!862696 i!618 (- i!618 lt!2083614))))))

(declare-fun b!5036430 () Bool)

(declare-fun e!3145759 () Bool)

(declare-fun tp!1410345 () Bool)

(assert (=> b!5036430 (= e!3145759 tp!1410345)))

(declare-fun b!5036431 () Bool)

(declare-fun e!3145763 () Bool)

(declare-fun lt!2083618 () tuple2!63204)

(assert (=> b!5036431 (= e!3145763 (= lt!2083618 e!3145762))))

(assert (=> b!5036431 (= c!862696 (< i!618 lt!2083614))))

(declare-fun res!2146000 () Bool)

(assert (=> start!532808 (=> (not res!2146000) (not e!3145760))))

(assert (=> start!532808 (= res!2146000 (isBalanced!4355 t!4198))))

(assert (=> start!532808 e!3145760))

(assert (=> start!532808 (and (inv!77051 t!4198) e!3145758)))

(assert (=> start!532808 true))

(declare-fun b!5036432 () Bool)

(assert (=> b!5036432 (= e!3145760 (not e!3145761))))

(declare-fun res!2145998 () Bool)

(assert (=> b!5036432 (=> res!2145998 e!3145761)))

(assert (=> b!5036432 (= res!2145998 (or (= lt!2083615 i!618) (< i!618 lt!2083615)))))

(assert (=> b!5036432 (= lt!2083615 (size!38860 (left!42669 t!4198)))))

(assert (=> b!5036432 e!3145763))

(declare-fun c!862697 () Bool)

(assert (=> b!5036432 (= c!862697 (= lt!2083614 i!618))))

(assert (=> b!5036432 (= lt!2083618 (splitAtIndex!194 (++!12710 lt!2083612 lt!2083613) i!618))))

(declare-fun size!38861 (List!58405) Int)

(assert (=> b!5036432 (= lt!2083614 (size!38861 lt!2083612))))

(declare-datatypes ((Unit!149481 0))(
  ( (Unit!149482) )
))
(declare-fun lt!2083616 () Unit!149481)

(declare-fun splitAtLemma!69 (List!58405 List!58405 Int) Unit!149481)

(assert (=> b!5036432 (= lt!2083616 (splitAtLemma!69 lt!2083612 lt!2083613 i!618))))

(declare-fun list!18878 (Conc!15493) List!58405)

(assert (=> b!5036432 (= lt!2083613 (list!18878 (right!42999 t!4198)))))

(assert (=> b!5036432 (= lt!2083612 (list!18878 (left!42669 t!4198)))))

(declare-fun b!5036433 () Bool)

(assert (=> b!5036433 (= lt!2083617 call!351314)))

(assert (=> b!5036433 (= e!3145762 (tuple2!63205 (_1!34905 lt!2083617) call!351313))))

(declare-fun b!5036434 () Bool)

(declare-fun inv!77052 (IArray!31047) Bool)

(assert (=> b!5036434 (= e!3145758 (and (inv!77052 (xs!18819 t!4198)) e!3145759))))

(declare-fun b!5036435 () Bool)

(assert (=> b!5036435 (= e!3145763 (= lt!2083618 (tuple2!63205 lt!2083612 lt!2083613)))))

(assert (= (and start!532808 res!2146000) b!5036428))

(assert (= (and b!5036428 res!2145996) b!5036423))

(assert (= (and b!5036423 res!2146001) b!5036427))

(assert (= (and b!5036427 res!2145999) b!5036432))

(assert (= (and b!5036432 c!862697) b!5036435))

(assert (= (and b!5036432 (not c!862697)) b!5036431))

(assert (= (and b!5036431 c!862696) b!5036433))

(assert (= (and b!5036431 (not c!862696)) b!5036424))

(assert (= (or b!5036433 b!5036424) bm!351308))

(assert (= (or b!5036433 b!5036424) bm!351309))

(assert (= (and b!5036432 (not res!2145998)) b!5036425))

(assert (= (and b!5036425 res!2145997) b!5036429))

(assert (= (and start!532808 (is-Node!15493 t!4198)) b!5036426))

(assert (= b!5036434 b!5036430))

(assert (= (and start!532808 (is-Leaf!25704 t!4198)) b!5036434))

(declare-fun m!6070608 () Bool)

(assert (=> b!5036426 m!6070608))

(declare-fun m!6070610 () Bool)

(assert (=> b!5036426 m!6070610))

(declare-fun m!6070612 () Bool)

(assert (=> b!5036423 m!6070612))

(declare-fun m!6070614 () Bool)

(assert (=> bm!351308 m!6070614))

(declare-fun m!6070616 () Bool)

(assert (=> b!5036432 m!6070616))

(declare-fun m!6070618 () Bool)

(assert (=> b!5036432 m!6070618))

(declare-fun m!6070620 () Bool)

(assert (=> b!5036432 m!6070620))

(declare-fun m!6070622 () Bool)

(assert (=> b!5036432 m!6070622))

(declare-fun m!6070624 () Bool)

(assert (=> b!5036432 m!6070624))

(assert (=> b!5036432 m!6070622))

(declare-fun m!6070626 () Bool)

(assert (=> b!5036432 m!6070626))

(declare-fun m!6070628 () Bool)

(assert (=> b!5036432 m!6070628))

(declare-fun m!6070630 () Bool)

(assert (=> b!5036434 m!6070630))

(declare-fun m!6070632 () Bool)

(assert (=> b!5036429 m!6070632))

(declare-fun m!6070634 () Bool)

(assert (=> start!532808 m!6070634))

(declare-fun m!6070636 () Bool)

(assert (=> start!532808 m!6070636))

(declare-fun m!6070638 () Bool)

(assert (=> b!5036425 m!6070638))

(declare-fun m!6070640 () Bool)

(assert (=> b!5036425 m!6070640))

(declare-fun m!6070642 () Bool)

(assert (=> bm!351309 m!6070642))

(push 1)

(assert (not b!5036429))

(assert (not b!5036425))

(assert (not start!532808))

(assert (not b!5036430))

(assert (not b!5036434))

(assert (not bm!351308))

(assert (not b!5036423))

(assert (not b!5036426))

(assert (not bm!351309))

(assert (not b!5036432))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1620159 () Bool)

(declare-fun e!3145790 () Bool)

(assert (=> d!1620159 e!3145790))

(declare-fun res!2146025 () Bool)

(assert (=> d!1620159 (=> (not res!2146025) (not e!3145790))))

(declare-fun lt!2083649 () List!58405)

(declare-fun content!10344 (List!58405) (Set T!104052))

(assert (=> d!1620159 (= res!2146025 (= (content!10344 lt!2083649) (set.union (content!10344 lt!2083612) (content!10344 lt!2083613))))))

(declare-fun e!3145789 () List!58405)

(assert (=> d!1620159 (= lt!2083649 e!3145789)))

(declare-fun c!862706 () Bool)

(assert (=> d!1620159 (= c!862706 (is-Nil!58281 lt!2083612))))

(assert (=> d!1620159 (= (++!12710 lt!2083612 lt!2083613) lt!2083649)))

(declare-fun b!5036483 () Bool)

(assert (=> b!5036483 (= e!3145789 lt!2083613)))

(declare-fun b!5036485 () Bool)

(declare-fun res!2146024 () Bool)

(assert (=> b!5036485 (=> (not res!2146024) (not e!3145790))))

(assert (=> b!5036485 (= res!2146024 (= (size!38861 lt!2083649) (+ (size!38861 lt!2083612) (size!38861 lt!2083613))))))

(declare-fun b!5036484 () Bool)

(assert (=> b!5036484 (= e!3145789 (Cons!58281 (h!64729 lt!2083612) (++!12710 (t!370892 lt!2083612) lt!2083613)))))

(declare-fun b!5036486 () Bool)

(assert (=> b!5036486 (= e!3145790 (or (not (= lt!2083613 Nil!58281)) (= lt!2083649 lt!2083612)))))

(assert (= (and d!1620159 c!862706) b!5036483))

(assert (= (and d!1620159 (not c!862706)) b!5036484))

(assert (= (and d!1620159 res!2146025) b!5036485))

(assert (= (and b!5036485 res!2146024) b!5036486))

(declare-fun m!6070680 () Bool)

(assert (=> d!1620159 m!6070680))

(declare-fun m!6070682 () Bool)

(assert (=> d!1620159 m!6070682))

(declare-fun m!6070684 () Bool)

(assert (=> d!1620159 m!6070684))

(declare-fun m!6070686 () Bool)

(assert (=> b!5036485 m!6070686))

(assert (=> b!5036485 m!6070618))

(declare-fun m!6070688 () Bool)

(assert (=> b!5036485 m!6070688))

(declare-fun m!6070690 () Bool)

(assert (=> b!5036484 m!6070690))

(assert (=> b!5036432 d!1620159))

(declare-fun d!1620163 () Bool)

(declare-fun lt!2083652 () Int)

(assert (=> d!1620163 (>= lt!2083652 0)))

(declare-fun e!3145797 () Int)

(assert (=> d!1620163 (= lt!2083652 e!3145797)))

(declare-fun c!862713 () Bool)

(assert (=> d!1620163 (= c!862713 (is-Nil!58281 lt!2083612))))

(assert (=> d!1620163 (= (size!38861 lt!2083612) lt!2083652)))

(declare-fun b!5036499 () Bool)

(assert (=> b!5036499 (= e!3145797 0)))

(declare-fun b!5036500 () Bool)

(assert (=> b!5036500 (= e!3145797 (+ 1 (size!38861 (t!370892 lt!2083612))))))

(assert (= (and d!1620163 c!862713) b!5036499))

(assert (= (and d!1620163 (not c!862713)) b!5036500))

(declare-fun m!6070692 () Bool)

(assert (=> b!5036500 m!6070692))

(assert (=> b!5036432 d!1620163))

(declare-fun b!5036514 () Bool)

(declare-fun e!3145804 () List!58405)

(declare-fun e!3145805 () List!58405)

(assert (=> b!5036514 (= e!3145804 e!3145805)))

(declare-fun c!862721 () Bool)

(assert (=> b!5036514 (= c!862721 (is-Leaf!25704 (left!42669 t!4198)))))

(declare-fun b!5036516 () Bool)

(assert (=> b!5036516 (= e!3145805 (++!12710 (list!18878 (left!42669 (left!42669 t!4198))) (list!18878 (right!42999 (left!42669 t!4198)))))))

(declare-fun b!5036515 () Bool)

(declare-fun list!18880 (IArray!31047) List!58405)

(assert (=> b!5036515 (= e!3145805 (list!18880 (xs!18819 (left!42669 t!4198))))))

(declare-fun d!1620165 () Bool)

(declare-fun c!862720 () Bool)

(assert (=> d!1620165 (= c!862720 (is-Empty!15493 (left!42669 t!4198)))))

(assert (=> d!1620165 (= (list!18878 (left!42669 t!4198)) e!3145804)))

(declare-fun b!5036513 () Bool)

(assert (=> b!5036513 (= e!3145804 Nil!58281)))

(assert (= (and d!1620165 c!862720) b!5036513))

(assert (= (and d!1620165 (not c!862720)) b!5036514))

(assert (= (and b!5036514 c!862721) b!5036515))

(assert (= (and b!5036514 (not c!862721)) b!5036516))

(declare-fun m!6070704 () Bool)

(assert (=> b!5036516 m!6070704))

(declare-fun m!6070706 () Bool)

(assert (=> b!5036516 m!6070706))

(assert (=> b!5036516 m!6070704))

(assert (=> b!5036516 m!6070706))

(declare-fun m!6070708 () Bool)

(assert (=> b!5036516 m!6070708))

(declare-fun m!6070710 () Bool)

(assert (=> b!5036515 m!6070710))

(assert (=> b!5036432 d!1620165))

(declare-fun b!5036518 () Bool)

(declare-fun e!3145806 () List!58405)

(declare-fun e!3145807 () List!58405)

(assert (=> b!5036518 (= e!3145806 e!3145807)))

(declare-fun c!862723 () Bool)

(assert (=> b!5036518 (= c!862723 (is-Leaf!25704 (right!42999 t!4198)))))

(declare-fun b!5036520 () Bool)

(assert (=> b!5036520 (= e!3145807 (++!12710 (list!18878 (left!42669 (right!42999 t!4198))) (list!18878 (right!42999 (right!42999 t!4198)))))))

(declare-fun b!5036519 () Bool)

(assert (=> b!5036519 (= e!3145807 (list!18880 (xs!18819 (right!42999 t!4198))))))

(declare-fun d!1620171 () Bool)

(declare-fun c!862722 () Bool)

(assert (=> d!1620171 (= c!862722 (is-Empty!15493 (right!42999 t!4198)))))

(assert (=> d!1620171 (= (list!18878 (right!42999 t!4198)) e!3145806)))

(declare-fun b!5036517 () Bool)

(assert (=> b!5036517 (= e!3145806 Nil!58281)))

(assert (= (and d!1620171 c!862722) b!5036517))

(assert (= (and d!1620171 (not c!862722)) b!5036518))

(assert (= (and b!5036518 c!862723) b!5036519))

(assert (= (and b!5036518 (not c!862723)) b!5036520))

(declare-fun m!6070712 () Bool)

(assert (=> b!5036520 m!6070712))

(declare-fun m!6070714 () Bool)

(assert (=> b!5036520 m!6070714))

(assert (=> b!5036520 m!6070712))

(assert (=> b!5036520 m!6070714))

(declare-fun m!6070716 () Bool)

(assert (=> b!5036520 m!6070716))

(declare-fun m!6070718 () Bool)

(assert (=> b!5036519 m!6070718))

(assert (=> b!5036432 d!1620171))

(declare-fun d!1620173 () Bool)

(declare-fun lt!2083658 () Int)

(assert (=> d!1620173 (= lt!2083658 (size!38861 (list!18878 (left!42669 t!4198))))))

(assert (=> d!1620173 (= lt!2083658 (ite (is-Empty!15493 (left!42669 t!4198)) 0 (ite (is-Leaf!25704 (left!42669 t!4198)) (csize!31217 (left!42669 t!4198)) (csize!31216 (left!42669 t!4198)))))))

(assert (=> d!1620173 (= (size!38860 (left!42669 t!4198)) lt!2083658)))

(declare-fun bs!1188771 () Bool)

(assert (= bs!1188771 d!1620173))

(assert (=> bs!1188771 m!6070616))

(assert (=> bs!1188771 m!6070616))

(declare-fun m!6070720 () Bool)

(assert (=> bs!1188771 m!6070720))

(assert (=> b!5036432 d!1620173))

(declare-fun b!5036563 () Bool)

(declare-fun e!3145832 () tuple2!63204)

(assert (=> b!5036563 (= e!3145832 (tuple2!63205 lt!2083612 lt!2083613))))

(declare-fun bm!351320 () Bool)

(declare-fun c!862741 () Bool)

(declare-fun c!862740 () Bool)

(assert (=> bm!351320 (= c!862741 c!862740)))

(declare-fun call!351325 () tuple2!63204)

(declare-fun e!3145830 () Int)

(assert (=> bm!351320 (= call!351325 (splitAtIndex!194 (ite c!862740 lt!2083612 lt!2083613) e!3145830))))

(declare-fun d!1620175 () Bool)

(assert (=> d!1620175 (= (splitAtIndex!194 (++!12710 lt!2083612 lt!2083613) i!618) e!3145832)))

(declare-fun c!862739 () Bool)

(assert (=> d!1620175 (= c!862739 (= (size!38861 lt!2083612) i!618))))

(declare-fun lt!2083674 () Unit!149481)

(declare-fun choose!37249 (List!58405 List!58405 Int) Unit!149481)

(assert (=> d!1620175 (= lt!2083674 (choose!37249 lt!2083612 lt!2083613 i!618))))

(declare-fun e!3145833 () Bool)

(assert (=> d!1620175 e!3145833))

(declare-fun res!2146038 () Bool)

(assert (=> d!1620175 (=> (not res!2146038) (not e!3145833))))

(assert (=> d!1620175 (= res!2146038 (<= 0 i!618))))

(assert (=> d!1620175 (= (splitAtLemma!69 lt!2083612 lt!2083613 i!618) lt!2083674)))

(declare-fun b!5036564 () Bool)

(assert (=> b!5036564 (= e!3145830 i!618)))

(declare-fun b!5036565 () Bool)

(declare-fun lt!2083672 () tuple2!63204)

(assert (=> b!5036565 (= lt!2083672 call!351325)))

(declare-fun e!3145831 () tuple2!63204)

(declare-fun call!351326 () List!58405)

(assert (=> b!5036565 (= e!3145831 (tuple2!63205 (_1!34905 lt!2083672) call!351326))))

(declare-fun b!5036566 () Bool)

(assert (=> b!5036566 (= e!3145833 (<= i!618 (+ (size!38861 lt!2083612) (size!38861 lt!2083613))))))

(declare-fun b!5036567 () Bool)

(assert (=> b!5036567 (= e!3145830 (- i!618 (size!38861 lt!2083612)))))

(declare-fun b!5036568 () Bool)

(assert (=> b!5036568 (= e!3145832 e!3145831)))

(assert (=> b!5036568 (= c!862740 (< i!618 (size!38861 lt!2083612)))))

(declare-fun b!5036569 () Bool)

(declare-fun lt!2083673 () tuple2!63204)

(assert (=> b!5036569 (= lt!2083673 call!351325)))

(assert (=> b!5036569 (= e!3145831 (tuple2!63205 call!351326 (_2!34905 lt!2083673)))))

(declare-fun bm!351321 () Bool)

(assert (=> bm!351321 (= call!351326 (++!12710 (ite c!862740 (_2!34905 lt!2083672) lt!2083612) (ite c!862740 lt!2083613 (_1!34905 lt!2083673))))))

(assert (= (and d!1620175 res!2146038) b!5036566))

(assert (= (and d!1620175 c!862739) b!5036563))

(assert (= (and d!1620175 (not c!862739)) b!5036568))

(assert (= (and b!5036568 c!862740) b!5036565))

(assert (= (and b!5036568 (not c!862740)) b!5036569))

(assert (= (or b!5036565 b!5036569) bm!351321))

(assert (= (or b!5036565 b!5036569) bm!351320))

(assert (= (and bm!351320 c!862741) b!5036564))

(assert (= (and bm!351320 (not c!862741)) b!5036567))

(assert (=> b!5036567 m!6070618))

(assert (=> d!1620175 m!6070622))

(assert (=> d!1620175 m!6070622))

(assert (=> d!1620175 m!6070624))

(assert (=> d!1620175 m!6070618))

(declare-fun m!6070742 () Bool)

(assert (=> d!1620175 m!6070742))

(assert (=> b!5036568 m!6070618))

(declare-fun m!6070744 () Bool)

(assert (=> bm!351321 m!6070744))

(declare-fun m!6070746 () Bool)

(assert (=> bm!351320 m!6070746))

(assert (=> b!5036566 m!6070618))

(assert (=> b!5036566 m!6070688))

(assert (=> b!5036432 d!1620175))

(declare-fun e!3145845 () Bool)

(declare-fun b!5036588 () Bool)

(declare-fun lt!2083681 () tuple2!63204)

(declare-fun drop!2617 (List!58405 Int) List!58405)

(assert (=> b!5036588 (= e!3145845 (= (_2!34905 lt!2083681) (drop!2617 (++!12710 lt!2083612 lt!2083613) i!618)))))

(declare-fun d!1620181 () Bool)

(assert (=> d!1620181 e!3145845))

(declare-fun res!2146045 () Bool)

(assert (=> d!1620181 (=> (not res!2146045) (not e!3145845))))

(assert (=> d!1620181 (= res!2146045 (= (++!12710 (_1!34905 lt!2083681) (_2!34905 lt!2083681)) (++!12710 lt!2083612 lt!2083613)))))

(declare-fun e!3145843 () tuple2!63204)

(assert (=> d!1620181 (= lt!2083681 e!3145843)))

(declare-fun c!862749 () Bool)

(assert (=> d!1620181 (= c!862749 (is-Nil!58281 (++!12710 lt!2083612 lt!2083613)))))

(assert (=> d!1620181 (= (splitAtIndex!194 (++!12710 lt!2083612 lt!2083613) i!618) lt!2083681)))

(declare-fun b!5036589 () Bool)

(declare-fun lt!2083682 () tuple2!63204)

(assert (=> b!5036589 (= lt!2083682 (splitAtIndex!194 (t!370892 (++!12710 lt!2083612 lt!2083613)) (- i!618 1)))))

(declare-fun e!3145844 () tuple2!63204)

(assert (=> b!5036589 (= e!3145844 (tuple2!63205 (Cons!58281 (h!64729 (++!12710 lt!2083612 lt!2083613)) (_1!34905 lt!2083682)) (_2!34905 lt!2083682)))))

(declare-fun b!5036590 () Bool)

(declare-fun res!2146046 () Bool)

(assert (=> b!5036590 (=> (not res!2146046) (not e!3145845))))

(declare-fun take!810 (List!58405 Int) List!58405)

(assert (=> b!5036590 (= res!2146046 (= (_1!34905 lt!2083681) (take!810 (++!12710 lt!2083612 lt!2083613) i!618)))))

(declare-fun b!5036591 () Bool)

(assert (=> b!5036591 (= e!3145843 (tuple2!63205 Nil!58281 Nil!58281))))

(declare-fun b!5036592 () Bool)

(assert (=> b!5036592 (= e!3145843 e!3145844)))

(declare-fun c!862748 () Bool)

(assert (=> b!5036592 (= c!862748 (<= i!618 0))))

(declare-fun b!5036593 () Bool)

(assert (=> b!5036593 (= e!3145844 (tuple2!63205 Nil!58281 (++!12710 lt!2083612 lt!2083613)))))

(assert (= (and d!1620181 c!862749) b!5036591))

(assert (= (and d!1620181 (not c!862749)) b!5036592))

(assert (= (and b!5036592 c!862748) b!5036593))

(assert (= (and b!5036592 (not c!862748)) b!5036589))

(assert (= (and d!1620181 res!2146045) b!5036590))

(assert (= (and b!5036590 res!2146046) b!5036588))

(assert (=> b!5036588 m!6070622))

(declare-fun m!6070756 () Bool)

(assert (=> b!5036588 m!6070756))

(declare-fun m!6070758 () Bool)

(assert (=> d!1620181 m!6070758))

(declare-fun m!6070760 () Bool)

(assert (=> b!5036589 m!6070760))

(assert (=> b!5036590 m!6070622))

(declare-fun m!6070762 () Bool)

(assert (=> b!5036590 m!6070762))

(assert (=> b!5036432 d!1620181))

(declare-fun d!1620185 () Bool)

(declare-fun lt!2083683 () Int)

(assert (=> d!1620185 (= lt!2083683 (size!38861 (list!18878 t!4198)))))

(assert (=> d!1620185 (= lt!2083683 (ite (is-Empty!15493 t!4198) 0 (ite (is-Leaf!25704 t!4198) (csize!31217 t!4198) (csize!31216 t!4198))))))

(assert (=> d!1620185 (= (size!38860 t!4198) lt!2083683)))

(declare-fun bs!1188772 () Bool)

(assert (= bs!1188772 d!1620185))

(declare-fun m!6070764 () Bool)

(assert (=> bs!1188772 m!6070764))

(assert (=> bs!1188772 m!6070764))

(declare-fun m!6070766 () Bool)

(assert (=> bs!1188772 m!6070766))

(assert (=> b!5036423 d!1620185))

(declare-fun b!5036620 () Bool)

(declare-fun res!2146064 () Bool)

(declare-fun e!3145859 () Bool)

(assert (=> b!5036620 (=> (not res!2146064) (not e!3145859))))

(declare-fun height!2072 (Conc!15493) Int)

(assert (=> b!5036620 (= res!2146064 (<= (- (height!2072 (left!42669 (_1!34906 lt!2083619))) (height!2072 (right!42999 (_1!34906 lt!2083619)))) 1))))

(declare-fun b!5036622 () Bool)

(declare-fun isEmpty!31509 (Conc!15493) Bool)

(assert (=> b!5036622 (= e!3145859 (not (isEmpty!31509 (right!42999 (_1!34906 lt!2083619)))))))

(declare-fun b!5036623 () Bool)

(declare-fun e!3145858 () Bool)

(assert (=> b!5036623 (= e!3145858 e!3145859)))

(declare-fun res!2146066 () Bool)

(assert (=> b!5036623 (=> (not res!2146066) (not e!3145859))))

(assert (=> b!5036623 (= res!2146066 (<= (- 1) (- (height!2072 (left!42669 (_1!34906 lt!2083619))) (height!2072 (right!42999 (_1!34906 lt!2083619))))))))

(declare-fun b!5036624 () Bool)

(declare-fun res!2146065 () Bool)

(assert (=> b!5036624 (=> (not res!2146065) (not e!3145859))))

(assert (=> b!5036624 (= res!2146065 (isBalanced!4355 (right!42999 (_1!34906 lt!2083619))))))

(declare-fun b!5036625 () Bool)

(declare-fun res!2146061 () Bool)

(assert (=> b!5036625 (=> (not res!2146061) (not e!3145859))))

(assert (=> b!5036625 (= res!2146061 (isBalanced!4355 (left!42669 (_1!34906 lt!2083619))))))

(declare-fun d!1620187 () Bool)

(declare-fun res!2146062 () Bool)

(assert (=> d!1620187 (=> res!2146062 e!3145858)))

(assert (=> d!1620187 (= res!2146062 (not (is-Node!15493 (_1!34906 lt!2083619))))))

(assert (=> d!1620187 (= (isBalanced!4355 (_1!34906 lt!2083619)) e!3145858)))

(declare-fun b!5036621 () Bool)

(declare-fun res!2146063 () Bool)

(assert (=> b!5036621 (=> (not res!2146063) (not e!3145859))))

(assert (=> b!5036621 (= res!2146063 (not (isEmpty!31509 (left!42669 (_1!34906 lt!2083619)))))))

(assert (= (and d!1620187 (not res!2146062)) b!5036623))

(assert (= (and b!5036623 res!2146066) b!5036620))

(assert (= (and b!5036620 res!2146064) b!5036625))

(assert (= (and b!5036625 res!2146061) b!5036624))

(assert (= (and b!5036624 res!2146065) b!5036621))

(assert (= (and b!5036621 res!2146063) b!5036622))

(declare-fun m!6070768 () Bool)

(assert (=> b!5036624 m!6070768))

(declare-fun m!6070770 () Bool)

(assert (=> b!5036625 m!6070770))

(declare-fun m!6070772 () Bool)

(assert (=> b!5036622 m!6070772))

(declare-fun m!6070774 () Bool)

(assert (=> b!5036620 m!6070774))

(declare-fun m!6070776 () Bool)

(assert (=> b!5036620 m!6070776))

(assert (=> b!5036623 m!6070774))

(assert (=> b!5036623 m!6070776))

(declare-fun m!6070778 () Bool)

(assert (=> b!5036621 m!6070778))

(assert (=> b!5036429 d!1620187))

(declare-fun b!5036626 () Bool)

(declare-fun res!2146070 () Bool)

(declare-fun e!3145861 () Bool)

(assert (=> b!5036626 (=> (not res!2146070) (not e!3145861))))

(assert (=> b!5036626 (= res!2146070 (<= (- (height!2072 (left!42669 t!4198)) (height!2072 (right!42999 t!4198))) 1))))

(declare-fun b!5036628 () Bool)

(assert (=> b!5036628 (= e!3145861 (not (isEmpty!31509 (right!42999 t!4198))))))

(declare-fun b!5036629 () Bool)

(declare-fun e!3145860 () Bool)

(assert (=> b!5036629 (= e!3145860 e!3145861)))

(declare-fun res!2146072 () Bool)

(assert (=> b!5036629 (=> (not res!2146072) (not e!3145861))))

(assert (=> b!5036629 (= res!2146072 (<= (- 1) (- (height!2072 (left!42669 t!4198)) (height!2072 (right!42999 t!4198)))))))

(declare-fun b!5036630 () Bool)

(declare-fun res!2146071 () Bool)

(assert (=> b!5036630 (=> (not res!2146071) (not e!3145861))))

(assert (=> b!5036630 (= res!2146071 (isBalanced!4355 (right!42999 t!4198)))))

(declare-fun b!5036631 () Bool)

(declare-fun res!2146067 () Bool)

(assert (=> b!5036631 (=> (not res!2146067) (not e!3145861))))

(assert (=> b!5036631 (= res!2146067 (isBalanced!4355 (left!42669 t!4198)))))

(declare-fun d!1620189 () Bool)

(declare-fun res!2146068 () Bool)

(assert (=> d!1620189 (=> res!2146068 e!3145860)))

(assert (=> d!1620189 (= res!2146068 (not (is-Node!15493 t!4198)))))

(assert (=> d!1620189 (= (isBalanced!4355 t!4198) e!3145860)))

(declare-fun b!5036627 () Bool)

(declare-fun res!2146069 () Bool)

(assert (=> b!5036627 (=> (not res!2146069) (not e!3145861))))

(assert (=> b!5036627 (= res!2146069 (not (isEmpty!31509 (left!42669 t!4198))))))

(assert (= (and d!1620189 (not res!2146068)) b!5036629))

(assert (= (and b!5036629 res!2146072) b!5036626))

(assert (= (and b!5036626 res!2146070) b!5036631))

(assert (= (and b!5036631 res!2146067) b!5036630))

(assert (= (and b!5036630 res!2146071) b!5036627))

(assert (= (and b!5036627 res!2146069) b!5036628))

(declare-fun m!6070780 () Bool)

(assert (=> b!5036630 m!6070780))

(assert (=> b!5036631 m!6070638))

(declare-fun m!6070782 () Bool)

(assert (=> b!5036628 m!6070782))

(declare-fun m!6070784 () Bool)

(assert (=> b!5036626 m!6070784))

(declare-fun m!6070786 () Bool)

(assert (=> b!5036626 m!6070786))

(assert (=> b!5036629 m!6070784))

(assert (=> b!5036629 m!6070786))

(declare-fun m!6070788 () Bool)

(assert (=> b!5036627 m!6070788))

(assert (=> start!532808 d!1620189))

(declare-fun d!1620191 () Bool)

(declare-fun c!862763 () Bool)

(assert (=> d!1620191 (= c!862763 (is-Node!15493 t!4198))))

(declare-fun e!3145872 () Bool)

(assert (=> d!1620191 (= (inv!77051 t!4198) e!3145872)))

(declare-fun b!5036649 () Bool)

(declare-fun inv!77055 (Conc!15493) Bool)

(assert (=> b!5036649 (= e!3145872 (inv!77055 t!4198))))

(declare-fun b!5036650 () Bool)

(declare-fun e!3145873 () Bool)

(assert (=> b!5036650 (= e!3145872 e!3145873)))

(declare-fun res!2146076 () Bool)

(assert (=> b!5036650 (= res!2146076 (not (is-Leaf!25704 t!4198)))))

(assert (=> b!5036650 (=> res!2146076 e!3145873)))

(declare-fun b!5036651 () Bool)

(declare-fun inv!77056 (Conc!15493) Bool)

(assert (=> b!5036651 (= e!3145873 (inv!77056 t!4198))))

(assert (= (and d!1620191 c!862763) b!5036649))

(assert (= (and d!1620191 (not c!862763)) b!5036650))

(assert (= (and b!5036650 (not res!2146076)) b!5036651))

(declare-fun m!6070796 () Bool)

(assert (=> b!5036649 m!6070796))

(declare-fun m!6070798 () Bool)

(assert (=> b!5036651 m!6070798))

(assert (=> start!532808 d!1620191))

(declare-fun d!1620195 () Bool)

(declare-fun c!862764 () Bool)

(assert (=> d!1620195 (= c!862764 (is-Node!15493 (left!42669 t!4198)))))

(declare-fun e!3145874 () Bool)

(assert (=> d!1620195 (= (inv!77051 (left!42669 t!4198)) e!3145874)))

(declare-fun b!5036652 () Bool)

(assert (=> b!5036652 (= e!3145874 (inv!77055 (left!42669 t!4198)))))

(declare-fun b!5036653 () Bool)

(declare-fun e!3145875 () Bool)

(assert (=> b!5036653 (= e!3145874 e!3145875)))

(declare-fun res!2146077 () Bool)

(assert (=> b!5036653 (= res!2146077 (not (is-Leaf!25704 (left!42669 t!4198))))))

(assert (=> b!5036653 (=> res!2146077 e!3145875)))

(declare-fun b!5036654 () Bool)

(assert (=> b!5036654 (= e!3145875 (inv!77056 (left!42669 t!4198)))))

(assert (= (and d!1620195 c!862764) b!5036652))

(assert (= (and d!1620195 (not c!862764)) b!5036653))

(assert (= (and b!5036653 (not res!2146077)) b!5036654))

(declare-fun m!6070800 () Bool)

(assert (=> b!5036652 m!6070800))

(declare-fun m!6070802 () Bool)

(assert (=> b!5036654 m!6070802))

(assert (=> b!5036426 d!1620195))

(declare-fun d!1620197 () Bool)

(declare-fun c!862765 () Bool)

(assert (=> d!1620197 (= c!862765 (is-Node!15493 (right!42999 t!4198)))))

(declare-fun e!3145876 () Bool)

(assert (=> d!1620197 (= (inv!77051 (right!42999 t!4198)) e!3145876)))

(declare-fun b!5036655 () Bool)

(assert (=> b!5036655 (= e!3145876 (inv!77055 (right!42999 t!4198)))))

(declare-fun b!5036656 () Bool)

(declare-fun e!3145877 () Bool)

(assert (=> b!5036656 (= e!3145876 e!3145877)))

(declare-fun res!2146078 () Bool)

(assert (=> b!5036656 (= res!2146078 (not (is-Leaf!25704 (right!42999 t!4198))))))

(assert (=> b!5036656 (=> res!2146078 e!3145877)))

(declare-fun b!5036657 () Bool)

(assert (=> b!5036657 (= e!3145877 (inv!77056 (right!42999 t!4198)))))

(assert (= (and d!1620197 c!862765) b!5036655))

(assert (= (and d!1620197 (not c!862765)) b!5036656))

(assert (= (and b!5036656 (not res!2146078)) b!5036657))

(declare-fun m!6070804 () Bool)

(assert (=> b!5036655 m!6070804))

(declare-fun m!6070806 () Bool)

(assert (=> b!5036657 m!6070806))

(assert (=> b!5036426 d!1620197))

(declare-fun lt!2083696 () tuple2!63204)

(declare-fun e!3145881 () Bool)

(declare-fun b!5036660 () Bool)

(assert (=> b!5036660 (= e!3145881 (= (_2!34905 lt!2083696) (drop!2617 (ite c!862696 lt!2083612 lt!2083613) (ite c!862696 i!618 (- i!618 lt!2083614)))))))

(declare-fun d!1620199 () Bool)

(assert (=> d!1620199 e!3145881))

(declare-fun res!2146079 () Bool)

(assert (=> d!1620199 (=> (not res!2146079) (not e!3145881))))

(assert (=> d!1620199 (= res!2146079 (= (++!12710 (_1!34905 lt!2083696) (_2!34905 lt!2083696)) (ite c!862696 lt!2083612 lt!2083613)))))

(declare-fun e!3145879 () tuple2!63204)

(assert (=> d!1620199 (= lt!2083696 e!3145879)))

(declare-fun c!862768 () Bool)

(assert (=> d!1620199 (= c!862768 (is-Nil!58281 (ite c!862696 lt!2083612 lt!2083613)))))

(assert (=> d!1620199 (= (splitAtIndex!194 (ite c!862696 lt!2083612 lt!2083613) (ite c!862696 i!618 (- i!618 lt!2083614))) lt!2083696)))

(declare-fun b!5036661 () Bool)

(declare-fun lt!2083697 () tuple2!63204)

(assert (=> b!5036661 (= lt!2083697 (splitAtIndex!194 (t!370892 (ite c!862696 lt!2083612 lt!2083613)) (- (ite c!862696 i!618 (- i!618 lt!2083614)) 1)))))

(declare-fun e!3145880 () tuple2!63204)

(assert (=> b!5036661 (= e!3145880 (tuple2!63205 (Cons!58281 (h!64729 (ite c!862696 lt!2083612 lt!2083613)) (_1!34905 lt!2083697)) (_2!34905 lt!2083697)))))

(declare-fun b!5036662 () Bool)

(declare-fun res!2146080 () Bool)

(assert (=> b!5036662 (=> (not res!2146080) (not e!3145881))))

(assert (=> b!5036662 (= res!2146080 (= (_1!34905 lt!2083696) (take!810 (ite c!862696 lt!2083612 lt!2083613) (ite c!862696 i!618 (- i!618 lt!2083614)))))))

(declare-fun b!5036663 () Bool)

(assert (=> b!5036663 (= e!3145879 (tuple2!63205 Nil!58281 Nil!58281))))

(declare-fun b!5036664 () Bool)

(assert (=> b!5036664 (= e!3145879 e!3145880)))

(declare-fun c!862767 () Bool)

(assert (=> b!5036664 (= c!862767 (<= (ite c!862696 i!618 (- i!618 lt!2083614)) 0))))

(declare-fun b!5036665 () Bool)

(assert (=> b!5036665 (= e!3145880 (tuple2!63205 Nil!58281 (ite c!862696 lt!2083612 lt!2083613)))))

(assert (= (and d!1620199 c!862768) b!5036663))

(assert (= (and d!1620199 (not c!862768)) b!5036664))

(assert (= (and b!5036664 c!862767) b!5036665))

(assert (= (and b!5036664 (not c!862767)) b!5036661))

(assert (= (and d!1620199 res!2146079) b!5036662))

(assert (= (and b!5036662 res!2146080) b!5036660))

(declare-fun m!6070810 () Bool)

(assert (=> b!5036660 m!6070810))

(declare-fun m!6070812 () Bool)

(assert (=> d!1620199 m!6070812))

(declare-fun m!6070814 () Bool)

(assert (=> b!5036661 m!6070814))

(declare-fun m!6070816 () Bool)

(assert (=> b!5036662 m!6070816))

(assert (=> bm!351309 d!1620199))

(declare-fun d!1620203 () Bool)

(declare-fun e!3145883 () Bool)

(assert (=> d!1620203 e!3145883))

(declare-fun res!2146082 () Bool)

(assert (=> d!1620203 (=> (not res!2146082) (not e!3145883))))

(declare-fun lt!2083698 () List!58405)

(assert (=> d!1620203 (= res!2146082 (= (content!10344 lt!2083698) (set.union (content!10344 (ite c!862696 (_2!34905 lt!2083617) lt!2083612)) (content!10344 (ite c!862696 lt!2083613 (_1!34905 lt!2083611))))))))

(declare-fun e!3145882 () List!58405)

(assert (=> d!1620203 (= lt!2083698 e!3145882)))

(declare-fun c!862769 () Bool)

(assert (=> d!1620203 (= c!862769 (is-Nil!58281 (ite c!862696 (_2!34905 lt!2083617) lt!2083612)))))

(assert (=> d!1620203 (= (++!12710 (ite c!862696 (_2!34905 lt!2083617) lt!2083612) (ite c!862696 lt!2083613 (_1!34905 lt!2083611))) lt!2083698)))

(declare-fun b!5036666 () Bool)

(assert (=> b!5036666 (= e!3145882 (ite c!862696 lt!2083613 (_1!34905 lt!2083611)))))

(declare-fun b!5036668 () Bool)

(declare-fun res!2146081 () Bool)

(assert (=> b!5036668 (=> (not res!2146081) (not e!3145883))))

(assert (=> b!5036668 (= res!2146081 (= (size!38861 lt!2083698) (+ (size!38861 (ite c!862696 (_2!34905 lt!2083617) lt!2083612)) (size!38861 (ite c!862696 lt!2083613 (_1!34905 lt!2083611))))))))

(declare-fun b!5036667 () Bool)

(assert (=> b!5036667 (= e!3145882 (Cons!58281 (h!64729 (ite c!862696 (_2!34905 lt!2083617) lt!2083612)) (++!12710 (t!370892 (ite c!862696 (_2!34905 lt!2083617) lt!2083612)) (ite c!862696 lt!2083613 (_1!34905 lt!2083611)))))))

(declare-fun b!5036669 () Bool)

(assert (=> b!5036669 (= e!3145883 (or (not (= (ite c!862696 lt!2083613 (_1!34905 lt!2083611)) Nil!58281)) (= lt!2083698 (ite c!862696 (_2!34905 lt!2083617) lt!2083612))))))

(assert (= (and d!1620203 c!862769) b!5036666))

(assert (= (and d!1620203 (not c!862769)) b!5036667))

(assert (= (and d!1620203 res!2146082) b!5036668))

(assert (= (and b!5036668 res!2146081) b!5036669))

(declare-fun m!6070818 () Bool)

(assert (=> d!1620203 m!6070818))

(declare-fun m!6070820 () Bool)

(assert (=> d!1620203 m!6070820))

(declare-fun m!6070822 () Bool)

(assert (=> d!1620203 m!6070822))

(declare-fun m!6070824 () Bool)

(assert (=> b!5036668 m!6070824))

(declare-fun m!6070826 () Bool)

(assert (=> b!5036668 m!6070826))

(declare-fun m!6070828 () Bool)

(assert (=> b!5036668 m!6070828))

(declare-fun m!6070830 () Bool)

(assert (=> b!5036667 m!6070830))

(assert (=> bm!351308 d!1620203))

(declare-fun d!1620205 () Bool)

(assert (=> d!1620205 (= (inv!77052 (xs!18819 t!4198)) (<= (size!38861 (innerList!15581 (xs!18819 t!4198))) 2147483647))))

(declare-fun bs!1188773 () Bool)

(assert (= bs!1188773 d!1620205))

(declare-fun m!6070832 () Bool)

(assert (=> bs!1188773 m!6070832))

(assert (=> b!5036434 d!1620205))

(declare-fun b!5036670 () Bool)

(declare-fun res!2146086 () Bool)

(declare-fun e!3145885 () Bool)

(assert (=> b!5036670 (=> (not res!2146086) (not e!3145885))))

(assert (=> b!5036670 (= res!2146086 (<= (- (height!2072 (left!42669 (left!42669 t!4198))) (height!2072 (right!42999 (left!42669 t!4198)))) 1))))

(declare-fun b!5036672 () Bool)

(assert (=> b!5036672 (= e!3145885 (not (isEmpty!31509 (right!42999 (left!42669 t!4198)))))))

(declare-fun b!5036673 () Bool)

(declare-fun e!3145884 () Bool)

(assert (=> b!5036673 (= e!3145884 e!3145885)))

(declare-fun res!2146088 () Bool)

(assert (=> b!5036673 (=> (not res!2146088) (not e!3145885))))

(assert (=> b!5036673 (= res!2146088 (<= (- 1) (- (height!2072 (left!42669 (left!42669 t!4198))) (height!2072 (right!42999 (left!42669 t!4198))))))))

(declare-fun b!5036674 () Bool)

(declare-fun res!2146087 () Bool)

(assert (=> b!5036674 (=> (not res!2146087) (not e!3145885))))

(assert (=> b!5036674 (= res!2146087 (isBalanced!4355 (right!42999 (left!42669 t!4198))))))

(declare-fun b!5036675 () Bool)

(declare-fun res!2146083 () Bool)

(assert (=> b!5036675 (=> (not res!2146083) (not e!3145885))))

(assert (=> b!5036675 (= res!2146083 (isBalanced!4355 (left!42669 (left!42669 t!4198))))))

(declare-fun d!1620207 () Bool)

(declare-fun res!2146084 () Bool)

(assert (=> d!1620207 (=> res!2146084 e!3145884)))

(assert (=> d!1620207 (= res!2146084 (not (is-Node!15493 (left!42669 t!4198))))))

(assert (=> d!1620207 (= (isBalanced!4355 (left!42669 t!4198)) e!3145884)))

(declare-fun b!5036671 () Bool)

(declare-fun res!2146085 () Bool)

(assert (=> b!5036671 (=> (not res!2146085) (not e!3145885))))

(assert (=> b!5036671 (= res!2146085 (not (isEmpty!31509 (left!42669 (left!42669 t!4198)))))))

(assert (= (and d!1620207 (not res!2146084)) b!5036673))

(assert (= (and b!5036673 res!2146088) b!5036670))

(assert (= (and b!5036670 res!2146086) b!5036675))

(assert (= (and b!5036675 res!2146083) b!5036674))

(assert (= (and b!5036674 res!2146087) b!5036671))

(assert (= (and b!5036671 res!2146085) b!5036672))

(declare-fun m!6070834 () Bool)

(assert (=> b!5036674 m!6070834))

(declare-fun m!6070836 () Bool)

(assert (=> b!5036675 m!6070836))

(declare-fun m!6070838 () Bool)

(assert (=> b!5036672 m!6070838))

(declare-fun m!6070840 () Bool)

(assert (=> b!5036670 m!6070840))

(declare-fun m!6070842 () Bool)

(assert (=> b!5036670 m!6070842))

(assert (=> b!5036673 m!6070840))

(assert (=> b!5036673 m!6070842))

(declare-fun m!6070844 () Bool)

(assert (=> b!5036671 m!6070844))

(assert (=> b!5036425 d!1620207))

(declare-fun b!5036742 () Bool)

(declare-fun lt!2083732 () tuple2!63204)

(declare-fun call!351350 () tuple2!63204)

(assert (=> b!5036742 (= lt!2083732 call!351350)))

(declare-fun e!3145920 () tuple2!63204)

(declare-fun call!351348 () List!58405)

(assert (=> b!5036742 (= e!3145920 (tuple2!63205 call!351348 (_2!34905 lt!2083732)))))

(declare-fun bm!351340 () Bool)

(declare-fun c!862796 () Bool)

(declare-fun c!862799 () Bool)

(assert (=> bm!351340 (= c!862796 c!862799)))

(declare-fun call!351349 () tuple2!63204)

(assert (=> bm!351340 (= call!351350 call!351349)))

(declare-fun b!5036743 () Bool)

(declare-fun c!862801 () Bool)

(assert (=> b!5036743 (= c!862801 (<= (- i!618 lt!2083615) 0))))

(declare-fun e!3145916 () tuple2!63206)

(declare-fun e!3145926 () tuple2!63206)

(assert (=> b!5036743 (= e!3145916 e!3145926)))

(declare-fun b!5036744 () Bool)

(declare-fun e!3145921 () Int)

(assert (=> b!5036744 (= e!3145921 (- i!618 lt!2083615))))

(declare-fun lt!2083735 () tuple2!63204)

(declare-fun lt!2083729 () List!58405)

(declare-fun lt!2083731 () List!58405)

(declare-fun bm!351341 () Bool)

(assert (=> bm!351341 (= call!351348 (++!12710 (ite c!862799 (_2!34905 lt!2083735) lt!2083731) (ite c!862799 lt!2083729 (_1!34905 lt!2083732))))))

(declare-fun b!5036745 () Bool)

(declare-fun e!3145917 () tuple2!63206)

(declare-fun e!3145918 () tuple2!63206)

(assert (=> b!5036745 (= e!3145917 e!3145918)))

(declare-fun c!862793 () Bool)

(assert (=> b!5036745 (= c!862793 (< (- i!618 lt!2083615) (size!38860 (left!42669 (right!42999 t!4198)))))))

(declare-fun bm!351342 () Bool)

(declare-fun c!862798 () Bool)

(assert (=> bm!351342 (= c!862798 c!862793)))

(declare-fun e!3145927 () Int)

(declare-fun call!351346 () tuple2!63206)

(assert (=> bm!351342 (= call!351346 (splitAt!478 (ite c!862793 (left!42669 (right!42999 t!4198)) (right!42999 (right!42999 t!4198))) e!3145927))))

(declare-fun b!5036746 () Bool)

(assert (=> b!5036746 (= lt!2083735 call!351350)))

(assert (=> b!5036746 (= e!3145920 (tuple2!63205 (_1!34905 lt!2083735) call!351348))))

(declare-fun bm!351343 () Bool)

(declare-fun c!862792 () Bool)

(declare-fun c!862797 () Bool)

(assert (=> bm!351343 (= c!862792 c!862797)))

(declare-fun e!3145923 () List!58405)

(assert (=> bm!351343 (= call!351349 (splitAtIndex!194 e!3145923 (ite c!862797 (- i!618 lt!2083615) e!3145921)))))

(declare-fun b!5036747 () Bool)

(declare-fun e!3145925 () tuple2!63204)

(assert (=> b!5036747 (= e!3145925 e!3145920)))

(declare-fun call!351345 () Int)

(assert (=> b!5036747 (= c!862799 (< (- i!618 lt!2083615) call!351345))))

(declare-fun b!5036748 () Bool)

(declare-fun e!3145922 () Bool)

(declare-fun lt!2083730 () tuple2!63206)

(assert (=> b!5036748 (= e!3145922 (= (tuple2!63205 (list!18878 (_1!34906 lt!2083730)) (list!18878 (_2!34906 lt!2083730))) (splitAtIndex!194 (list!18878 (right!42999 t!4198)) (- i!618 lt!2083615))))))

(declare-fun b!5036749 () Bool)

(declare-fun lt!2083736 () tuple2!63206)

(assert (=> b!5036749 (= lt!2083736 call!351346)))

(declare-fun call!351347 () Conc!15493)

(assert (=> b!5036749 (= e!3145918 (tuple2!63207 call!351347 (_2!34906 lt!2083736)))))

(declare-fun b!5036750 () Bool)

(assert (=> b!5036750 (= e!3145923 (ite c!862799 lt!2083731 lt!2083729))))

(declare-fun b!5036751 () Bool)

(assert (=> b!5036751 (= e!3145927 (- (- i!618 lt!2083615) (size!38860 (left!42669 (right!42999 t!4198)))))))

(declare-fun b!5036752 () Bool)

(declare-fun res!2146112 () Bool)

(assert (=> b!5036752 (=> (not res!2146112) (not e!3145922))))

(assert (=> b!5036752 (= res!2146112 (isBalanced!4355 (_2!34906 lt!2083730)))))

(declare-fun d!1620209 () Bool)

(assert (=> d!1620209 e!3145922))

(declare-fun res!2146111 () Bool)

(assert (=> d!1620209 (=> (not res!2146111) (not e!3145922))))

(assert (=> d!1620209 (= res!2146111 (isBalanced!4355 (_1!34906 lt!2083730)))))

(declare-fun e!3145924 () tuple2!63206)

(assert (=> d!1620209 (= lt!2083730 e!3145924)))

(declare-fun c!862800 () Bool)

(assert (=> d!1620209 (= c!862800 (is-Empty!15493 (right!42999 t!4198)))))

(assert (=> d!1620209 (isBalanced!4355 (right!42999 t!4198))))

(assert (=> d!1620209 (= (splitAt!478 (right!42999 t!4198) (- i!618 lt!2083615)) lt!2083730)))

(declare-fun b!5036753 () Bool)

(declare-fun lt!2083727 () Unit!149481)

(declare-fun lt!2083728 () Unit!149481)

(assert (=> b!5036753 (= lt!2083727 lt!2083728)))

(declare-fun lt!2083726 () List!58405)

(declare-fun slice!844 (List!58405 Int Int) List!58405)

(assert (=> b!5036753 (= (drop!2617 lt!2083726 (- i!618 lt!2083615)) (slice!844 lt!2083726 (- i!618 lt!2083615) call!351345))))

(declare-fun dropLemma!67 (List!58405 Int) Unit!149481)

(assert (=> b!5036753 (= lt!2083728 (dropLemma!67 lt!2083726 (- i!618 lt!2083615)))))

(assert (=> b!5036753 (= lt!2083726 (list!18880 (xs!18819 (right!42999 t!4198))))))

(declare-fun lt!2083725 () tuple2!63204)

(assert (=> b!5036753 (= lt!2083725 call!351349)))

(declare-fun e!3145919 () tuple2!63206)

(declare-fun slice!845 (IArray!31047 Int Int) IArray!31047)

(assert (=> b!5036753 (= e!3145919 (tuple2!63207 (Leaf!25704 (slice!845 (xs!18819 (right!42999 t!4198)) 0 (- i!618 lt!2083615)) (- i!618 lt!2083615)) (Leaf!25704 (slice!845 (xs!18819 (right!42999 t!4198)) (- i!618 lt!2083615) (csize!31217 (right!42999 t!4198))) (- (csize!31217 (right!42999 t!4198)) (- i!618 lt!2083615)))))))

(declare-fun b!5036754 () Bool)

(declare-fun lt!2083733 () tuple2!63206)

(assert (=> b!5036754 (= lt!2083733 call!351346)))

(assert (=> b!5036754 (= e!3145918 (tuple2!63207 (_1!34906 lt!2083733) call!351347))))

(declare-fun b!5036755 () Bool)

(assert (=> b!5036755 (= e!3145926 (tuple2!63207 Empty!15493 (right!42999 t!4198)))))

(declare-fun b!5036756 () Bool)

(assert (=> b!5036756 (= e!3145917 (tuple2!63207 (left!42669 (right!42999 t!4198)) (right!42999 (right!42999 t!4198))))))

(declare-fun b!5036757 () Bool)

(assert (=> b!5036757 (= e!3145924 e!3145916)))

(assert (=> b!5036757 (= c!862797 (is-Leaf!25704 (right!42999 t!4198)))))

(declare-fun c!862795 () Bool)

(declare-fun b!5036758 () Bool)

(assert (=> b!5036758 (= c!862795 (= (size!38860 (left!42669 (right!42999 t!4198))) (- i!618 lt!2083615)))))

(declare-fun lt!2083737 () Unit!149481)

(declare-fun lt!2083734 () Unit!149481)

(assert (=> b!5036758 (= lt!2083737 lt!2083734)))

(assert (=> b!5036758 (= (splitAtIndex!194 (++!12710 lt!2083731 lt!2083729) (- i!618 lt!2083615)) e!3145925)))

(declare-fun c!862794 () Bool)

(assert (=> b!5036758 (= c!862794 (= call!351345 (- i!618 lt!2083615)))))

(assert (=> b!5036758 (= lt!2083734 (splitAtLemma!69 lt!2083731 lt!2083729 (- i!618 lt!2083615)))))

(assert (=> b!5036758 (= lt!2083729 (list!18878 (right!42999 (right!42999 t!4198))))))

(assert (=> b!5036758 (= lt!2083731 (list!18878 (left!42669 (right!42999 t!4198))))))

(assert (=> b!5036758 (= e!3145916 e!3145917)))

(declare-fun bm!351344 () Bool)

(declare-fun ++!12712 (Conc!15493 Conc!15493) Conc!15493)

(assert (=> bm!351344 (= call!351347 (++!12712 (ite c!862793 (_2!34906 lt!2083733) (left!42669 (right!42999 t!4198))) (ite c!862793 (right!42999 (right!42999 t!4198)) (_1!34906 lt!2083736))))))

(declare-fun b!5036759 () Bool)

(assert (=> b!5036759 (= e!3145925 (tuple2!63205 lt!2083731 lt!2083729))))

(declare-fun b!5036760 () Bool)

(assert (=> b!5036760 (= e!3145919 (tuple2!63207 (right!42999 t!4198) Empty!15493))))

(declare-fun b!5036761 () Bool)

(assert (=> b!5036761 (= e!3145924 (tuple2!63207 (right!42999 t!4198) (right!42999 t!4198)))))

(declare-fun b!5036762 () Bool)

(assert (=> b!5036762 (= e!3145921 (- (- i!618 lt!2083615) call!351345))))

(declare-fun b!5036763 () Bool)

(assert (=> b!5036763 (= e!3145926 e!3145919)))

(declare-fun c!862802 () Bool)

(assert (=> b!5036763 (= c!862802 (= (- i!618 lt!2083615) (csize!31217 (right!42999 t!4198))))))

(declare-fun b!5036764 () Bool)

(assert (=> b!5036764 (= e!3145927 (- i!618 lt!2083615))))

(declare-fun b!5036765 () Bool)

(assert (=> b!5036765 (= e!3145923 (list!18880 (xs!18819 (right!42999 t!4198))))))

(declare-fun bm!351345 () Bool)

(assert (=> bm!351345 (= call!351345 (size!38861 (ite c!862797 lt!2083726 lt!2083731)))))

(assert (= (and d!1620209 c!862800) b!5036761))

(assert (= (and d!1620209 (not c!862800)) b!5036757))

(assert (= (and b!5036757 c!862797) b!5036743))

(assert (= (and b!5036757 (not c!862797)) b!5036758))

(assert (= (and b!5036743 c!862801) b!5036755))

(assert (= (and b!5036743 (not c!862801)) b!5036763))

(assert (= (and b!5036763 c!862802) b!5036760))

(assert (= (and b!5036763 (not c!862802)) b!5036753))

(assert (= (and b!5036758 c!862794) b!5036759))

(assert (= (and b!5036758 (not c!862794)) b!5036747))

(assert (= (and b!5036747 c!862799) b!5036746))

(assert (= (and b!5036747 (not c!862799)) b!5036742))

(assert (= (or b!5036746 b!5036742) bm!351341))

(assert (= (or b!5036746 b!5036742) bm!351340))

(assert (= (and bm!351340 c!862796) b!5036744))

(assert (= (and bm!351340 (not c!862796)) b!5036762))

(assert (= (and b!5036758 c!862795) b!5036756))

(assert (= (and b!5036758 (not c!862795)) b!5036745))

(assert (= (and b!5036745 c!862793) b!5036754))

(assert (= (and b!5036745 (not c!862793)) b!5036749))

(assert (= (or b!5036754 b!5036749) bm!351344))

(assert (= (or b!5036754 b!5036749) bm!351342))

(assert (= (and bm!351342 c!862798) b!5036764))

(assert (= (and bm!351342 (not c!862798)) b!5036751))

(assert (= (or b!5036753 b!5036758 b!5036747 b!5036762) bm!351345))

(assert (= (or b!5036753 bm!351340) bm!351343))

(assert (= (and bm!351343 c!862792) b!5036765))

(assert (= (and bm!351343 (not c!862792)) b!5036750))

(assert (= (and d!1620209 res!2146111) b!5036752))

(assert (= (and b!5036752 res!2146112) b!5036748))

(declare-fun m!6070858 () Bool)

(assert (=> bm!351344 m!6070858))

(assert (=> b!5036765 m!6070718))

(declare-fun m!6070860 () Bool)

(assert (=> bm!351342 m!6070860))

(declare-fun m!6070862 () Bool)

(assert (=> b!5036752 m!6070862))

(declare-fun m!6070864 () Bool)

(assert (=> b!5036753 m!6070864))

(assert (=> b!5036753 m!6070718))

(declare-fun m!6070866 () Bool)

(assert (=> b!5036753 m!6070866))

(declare-fun m!6070868 () Bool)

(assert (=> b!5036753 m!6070868))

(declare-fun m!6070870 () Bool)

(assert (=> b!5036753 m!6070870))

(declare-fun m!6070872 () Bool)

(assert (=> b!5036753 m!6070872))

(declare-fun m!6070874 () Bool)

(assert (=> bm!351343 m!6070874))

(declare-fun m!6070876 () Bool)

(assert (=> b!5036745 m!6070876))

(declare-fun m!6070878 () Bool)

(assert (=> d!1620209 m!6070878))

(assert (=> d!1620209 m!6070780))

(assert (=> b!5036751 m!6070876))

(declare-fun m!6070880 () Bool)

(assert (=> bm!351345 m!6070880))

(declare-fun m!6070882 () Bool)

(assert (=> b!5036758 m!6070882))

(declare-fun m!6070884 () Bool)

(assert (=> b!5036758 m!6070884))

(assert (=> b!5036758 m!6070712))

(assert (=> b!5036758 m!6070876))

(assert (=> b!5036758 m!6070882))

(declare-fun m!6070886 () Bool)

(assert (=> b!5036758 m!6070886))

(assert (=> b!5036758 m!6070714))

(declare-fun m!6070888 () Bool)

(assert (=> b!5036748 m!6070888))

(declare-fun m!6070890 () Bool)

(assert (=> b!5036748 m!6070890))

(assert (=> b!5036748 m!6070620))

(assert (=> b!5036748 m!6070620))

(declare-fun m!6070892 () Bool)

(assert (=> b!5036748 m!6070892))

(declare-fun m!6070894 () Bool)

(assert (=> bm!351341 m!6070894))

(assert (=> b!5036425 d!1620209))

(declare-fun tp!1410363 () Bool)

(declare-fun tp!1410364 () Bool)

(declare-fun b!5036774 () Bool)

(declare-fun e!3145933 () Bool)

(assert (=> b!5036774 (= e!3145933 (and (inv!77051 (left!42669 (left!42669 t!4198))) tp!1410363 (inv!77051 (right!42999 (left!42669 t!4198))) tp!1410364))))

(declare-fun b!5036776 () Bool)

(declare-fun e!3145932 () Bool)

(declare-fun tp!1410365 () Bool)

(assert (=> b!5036776 (= e!3145932 tp!1410365)))

(declare-fun b!5036775 () Bool)

(assert (=> b!5036775 (= e!3145933 (and (inv!77052 (xs!18819 (left!42669 t!4198))) e!3145932))))

(assert (=> b!5036426 (= tp!1410346 (and (inv!77051 (left!42669 t!4198)) e!3145933))))

(assert (= (and b!5036426 (is-Node!15493 (left!42669 t!4198))) b!5036774))

(assert (= b!5036775 b!5036776))

(assert (= (and b!5036426 (is-Leaf!25704 (left!42669 t!4198))) b!5036775))

(declare-fun m!6070896 () Bool)

(assert (=> b!5036774 m!6070896))

(declare-fun m!6070898 () Bool)

(assert (=> b!5036774 m!6070898))

(declare-fun m!6070900 () Bool)

(assert (=> b!5036775 m!6070900))

(assert (=> b!5036426 m!6070608))

(declare-fun tp!1410367 () Bool)

(declare-fun b!5036777 () Bool)

(declare-fun tp!1410366 () Bool)

(declare-fun e!3145935 () Bool)

(assert (=> b!5036777 (= e!3145935 (and (inv!77051 (left!42669 (right!42999 t!4198))) tp!1410366 (inv!77051 (right!42999 (right!42999 t!4198))) tp!1410367))))

(declare-fun b!5036779 () Bool)

(declare-fun e!3145934 () Bool)

(declare-fun tp!1410368 () Bool)

(assert (=> b!5036779 (= e!3145934 tp!1410368)))

(declare-fun b!5036778 () Bool)

(assert (=> b!5036778 (= e!3145935 (and (inv!77052 (xs!18819 (right!42999 t!4198))) e!3145934))))

(assert (=> b!5036426 (= tp!1410347 (and (inv!77051 (right!42999 t!4198)) e!3145935))))

(assert (= (and b!5036426 (is-Node!15493 (right!42999 t!4198))) b!5036777))

(assert (= b!5036778 b!5036779))

(assert (= (and b!5036426 (is-Leaf!25704 (right!42999 t!4198))) b!5036778))

(declare-fun m!6070902 () Bool)

(assert (=> b!5036777 m!6070902))

(declare-fun m!6070904 () Bool)

(assert (=> b!5036777 m!6070904))

(declare-fun m!6070906 () Bool)

(assert (=> b!5036778 m!6070906))

(assert (=> b!5036426 m!6070610))

(declare-fun b!5036784 () Bool)

(declare-fun e!3145938 () Bool)

(declare-fun tp_is_empty!36749 () Bool)

(declare-fun tp!1410371 () Bool)

(assert (=> b!5036784 (= e!3145938 (and tp_is_empty!36749 tp!1410371))))

(assert (=> b!5036430 (= tp!1410345 e!3145938)))

(assert (= (and b!5036430 (is-Cons!58281 (innerList!15581 (xs!18819 t!4198)))) b!5036784))

(push 1)

(assert (not b!5036672))

(assert (not b!5036485))

(assert (not b!5036748))

(assert (not b!5036652))

(assert (not b!5036626))

(assert (not b!5036566))

(assert (not b!5036774))

(assert (not d!1620199))

(assert (not d!1620185))

(assert tp_is_empty!36749)

(assert (not bm!351344))

(assert (not b!5036777))

(assert (not d!1620175))

(assert (not d!1620203))

(assert (not d!1620181))

(assert (not b!5036623))

(assert (not b!5036655))

(assert (not b!5036671))

(assert (not b!5036630))

(assert (not b!5036568))

(assert (not b!5036627))

(assert (not b!5036753))

(assert (not b!5036661))

(assert (not b!5036520))

(assert (not bm!351345))

(assert (not b!5036654))

(assert (not b!5036784))

(assert (not b!5036758))

(assert (not d!1620173))

(assert (not b!5036589))

(assert (not d!1620209))

(assert (not b!5036516))

(assert (not b!5036751))

(assert (not b!5036621))

(assert (not b!5036752))

(assert (not b!5036500))

(assert (not b!5036667))

(assert (not b!5036629))

(assert (not b!5036765))

(assert (not b!5036519))

(assert (not b!5036484))

(assert (not b!5036668))

(assert (not b!5036674))

(assert (not b!5036657))

(assert (not d!1620205))

(assert (not b!5036625))

(assert (not b!5036567))

(assert (not bm!351341))

(assert (not b!5036670))

(assert (not b!5036649))

(assert (not d!1620159))

(assert (not bm!351321))

(assert (not b!5036651))

(assert (not b!5036426))

(assert (not b!5036660))

(assert (not b!5036588))

(assert (not b!5036673))

(assert (not b!5036620))

(assert (not b!5036675))

(assert (not b!5036622))

(assert (not b!5036624))

(assert (not b!5036775))

(assert (not b!5036779))

(assert (not bm!351320))

(assert (not bm!351343))

(assert (not b!5036631))

(assert (not b!5036662))

(assert (not b!5036778))

(assert (not b!5036745))

(assert (not b!5036628))

(assert (not b!5036776))

(assert (not b!5036590))

(assert (not bm!351342))

(assert (not b!5036515))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


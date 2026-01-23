; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!532342 () Bool)

(assert start!532342)

(declare-fun res!2144573 () Bool)

(declare-fun e!3143746 () Bool)

(assert (=> start!532342 (=> (not res!2144573) (not e!3143746))))

(declare-datatypes ((T!103858 0))(
  ( (T!103859 (val!23468 Int)) )
))
(declare-datatypes ((List!58378 0))(
  ( (Nil!58254) (Cons!58254 (h!64702 T!103858) (t!370805 List!58378)) )
))
(declare-datatypes ((IArray!30993 0))(
  ( (IArray!30994 (innerList!15554 List!58378)) )
))
(declare-datatypes ((Conc!15466 0))(
  ( (Node!15466 (left!42628 Conc!15466) (right!42958 Conc!15466) (csize!31162 Int) (cheight!15677 Int)) (Leaf!25663 (xs!18792 IArray!30993) (csize!31163 Int)) (Empty!15466) )
))
(declare-datatypes ((BalanceConc!30362 0))(
  ( (BalanceConc!30363 (c!861739 Conc!15466)) )
))
(declare-fun thiss!5840 () BalanceConc!30362)

(declare-fun isBalanced!4328 (Conc!15466) Bool)

(assert (=> start!532342 (= res!2144573 (isBalanced!4328 (c!861739 thiss!5840)))))

(assert (=> start!532342 e!3143746))

(declare-fun e!3143745 () Bool)

(declare-fun inv!76910 (BalanceConc!30362) Bool)

(assert (=> start!532342 (and (inv!76910 thiss!5840) e!3143745)))

(assert (=> start!532342 true))

(declare-fun b!5032514 () Bool)

(declare-fun tp!1409828 () Bool)

(declare-fun inv!76911 (Conc!15466) Bool)

(assert (=> b!5032514 (= e!3143745 (and (inv!76911 (c!861739 thiss!5840)) tp!1409828))))

(declare-fun b!5032511 () Bool)

(declare-fun res!2144575 () Bool)

(assert (=> b!5032511 (=> (not res!2144575) (not e!3143746))))

(declare-fun i!595 () Int)

(assert (=> b!5032511 (= res!2144575 (<= 0 i!595))))

(declare-fun b!5032513 () Bool)

(declare-fun size!38795 (Conc!15466) Int)

(assert (=> b!5032513 (= e!3143746 (> i!595 (size!38795 (c!861739 thiss!5840))))))

(declare-fun b!5032512 () Bool)

(declare-fun res!2144574 () Bool)

(assert (=> b!5032512 (=> (not res!2144574) (not e!3143746))))

(declare-fun size!38796 (BalanceConc!30362) Int)

(assert (=> b!5032512 (= res!2144574 (<= i!595 (size!38796 thiss!5840)))))

(assert (= (and start!532342 res!2144573) b!5032511))

(assert (= (and b!5032511 res!2144575) b!5032512))

(assert (= (and b!5032512 res!2144574) b!5032513))

(assert (= start!532342 b!5032514))

(declare-fun m!6067530 () Bool)

(assert (=> start!532342 m!6067530))

(declare-fun m!6067532 () Bool)

(assert (=> start!532342 m!6067532))

(declare-fun m!6067534 () Bool)

(assert (=> b!5032514 m!6067534))

(declare-fun m!6067536 () Bool)

(assert (=> b!5032513 m!6067536))

(declare-fun m!6067538 () Bool)

(assert (=> b!5032512 m!6067538))

(check-sat (not b!5032513) (not b!5032512) (not start!532342) (not b!5032514))
(check-sat)
(get-model)

(declare-fun d!1619453 () Bool)

(declare-fun lt!2082467 () Int)

(declare-fun size!38797 (List!58378) Int)

(declare-fun list!18826 (Conc!15466) List!58378)

(assert (=> d!1619453 (= lt!2082467 (size!38797 (list!18826 (c!861739 thiss!5840))))))

(get-info :version)

(assert (=> d!1619453 (= lt!2082467 (ite ((_ is Empty!15466) (c!861739 thiss!5840)) 0 (ite ((_ is Leaf!25663) (c!861739 thiss!5840)) (csize!31163 (c!861739 thiss!5840)) (csize!31162 (c!861739 thiss!5840)))))))

(assert (=> d!1619453 (= (size!38795 (c!861739 thiss!5840)) lt!2082467)))

(declare-fun bs!1188651 () Bool)

(assert (= bs!1188651 d!1619453))

(declare-fun m!6067540 () Bool)

(assert (=> bs!1188651 m!6067540))

(assert (=> bs!1188651 m!6067540))

(declare-fun m!6067542 () Bool)

(assert (=> bs!1188651 m!6067542))

(assert (=> b!5032513 d!1619453))

(declare-fun d!1619455 () Bool)

(declare-fun lt!2082470 () Int)

(declare-fun list!18827 (BalanceConc!30362) List!58378)

(assert (=> d!1619455 (= lt!2082470 (size!38797 (list!18827 thiss!5840)))))

(assert (=> d!1619455 (= lt!2082470 (size!38795 (c!861739 thiss!5840)))))

(assert (=> d!1619455 (= (size!38796 thiss!5840) lt!2082470)))

(declare-fun bs!1188652 () Bool)

(assert (= bs!1188652 d!1619455))

(declare-fun m!6067544 () Bool)

(assert (=> bs!1188652 m!6067544))

(assert (=> bs!1188652 m!6067544))

(declare-fun m!6067546 () Bool)

(assert (=> bs!1188652 m!6067546))

(assert (=> bs!1188652 m!6067536))

(assert (=> b!5032512 d!1619455))

(declare-fun b!5032536 () Bool)

(declare-fun res!2144592 () Bool)

(declare-fun e!3143757 () Bool)

(assert (=> b!5032536 (=> (not res!2144592) (not e!3143757))))

(declare-fun isEmpty!31489 (Conc!15466) Bool)

(assert (=> b!5032536 (= res!2144592 (not (isEmpty!31489 (left!42628 (c!861739 thiss!5840)))))))

(declare-fun b!5032537 () Bool)

(declare-fun res!2144591 () Bool)

(assert (=> b!5032537 (=> (not res!2144591) (not e!3143757))))

(assert (=> b!5032537 (= res!2144591 (isBalanced!4328 (left!42628 (c!861739 thiss!5840))))))

(declare-fun d!1619457 () Bool)

(declare-fun res!2144596 () Bool)

(declare-fun e!3143758 () Bool)

(assert (=> d!1619457 (=> res!2144596 e!3143758)))

(assert (=> d!1619457 (= res!2144596 (not ((_ is Node!15466) (c!861739 thiss!5840))))))

(assert (=> d!1619457 (= (isBalanced!4328 (c!861739 thiss!5840)) e!3143758)))

(declare-fun b!5032538 () Bool)

(declare-fun res!2144593 () Bool)

(assert (=> b!5032538 (=> (not res!2144593) (not e!3143757))))

(assert (=> b!5032538 (= res!2144593 (isBalanced!4328 (right!42958 (c!861739 thiss!5840))))))

(declare-fun b!5032539 () Bool)

(declare-fun res!2144595 () Bool)

(assert (=> b!5032539 (=> (not res!2144595) (not e!3143757))))

(declare-fun height!2053 (Conc!15466) Int)

(assert (=> b!5032539 (= res!2144595 (<= (- (height!2053 (left!42628 (c!861739 thiss!5840))) (height!2053 (right!42958 (c!861739 thiss!5840)))) 1))))

(declare-fun b!5032540 () Bool)

(assert (=> b!5032540 (= e!3143758 e!3143757)))

(declare-fun res!2144594 () Bool)

(assert (=> b!5032540 (=> (not res!2144594) (not e!3143757))))

(assert (=> b!5032540 (= res!2144594 (<= (- 1) (- (height!2053 (left!42628 (c!861739 thiss!5840))) (height!2053 (right!42958 (c!861739 thiss!5840))))))))

(declare-fun b!5032541 () Bool)

(assert (=> b!5032541 (= e!3143757 (not (isEmpty!31489 (right!42958 (c!861739 thiss!5840)))))))

(assert (= (and d!1619457 (not res!2144596)) b!5032540))

(assert (= (and b!5032540 res!2144594) b!5032539))

(assert (= (and b!5032539 res!2144595) b!5032537))

(assert (= (and b!5032537 res!2144591) b!5032538))

(assert (= (and b!5032538 res!2144593) b!5032536))

(assert (= (and b!5032536 res!2144592) b!5032541))

(declare-fun m!6067552 () Bool)

(assert (=> b!5032541 m!6067552))

(declare-fun m!6067554 () Bool)

(assert (=> b!5032539 m!6067554))

(declare-fun m!6067556 () Bool)

(assert (=> b!5032539 m!6067556))

(declare-fun m!6067558 () Bool)

(assert (=> b!5032538 m!6067558))

(assert (=> b!5032540 m!6067554))

(assert (=> b!5032540 m!6067556))

(declare-fun m!6067560 () Bool)

(assert (=> b!5032537 m!6067560))

(declare-fun m!6067562 () Bool)

(assert (=> b!5032536 m!6067562))

(assert (=> start!532342 d!1619457))

(declare-fun d!1619461 () Bool)

(assert (=> d!1619461 (= (inv!76910 thiss!5840) (isBalanced!4328 (c!861739 thiss!5840)))))

(declare-fun bs!1188653 () Bool)

(assert (= bs!1188653 d!1619461))

(assert (=> bs!1188653 m!6067530))

(assert (=> start!532342 d!1619461))

(declare-fun d!1619463 () Bool)

(declare-fun c!861745 () Bool)

(assert (=> d!1619463 (= c!861745 ((_ is Node!15466) (c!861739 thiss!5840)))))

(declare-fun e!3143763 () Bool)

(assert (=> d!1619463 (= (inv!76911 (c!861739 thiss!5840)) e!3143763)))

(declare-fun b!5032548 () Bool)

(declare-fun inv!76912 (Conc!15466) Bool)

(assert (=> b!5032548 (= e!3143763 (inv!76912 (c!861739 thiss!5840)))))

(declare-fun b!5032549 () Bool)

(declare-fun e!3143764 () Bool)

(assert (=> b!5032549 (= e!3143763 e!3143764)))

(declare-fun res!2144599 () Bool)

(assert (=> b!5032549 (= res!2144599 (not ((_ is Leaf!25663) (c!861739 thiss!5840))))))

(assert (=> b!5032549 (=> res!2144599 e!3143764)))

(declare-fun b!5032550 () Bool)

(declare-fun inv!76913 (Conc!15466) Bool)

(assert (=> b!5032550 (= e!3143764 (inv!76913 (c!861739 thiss!5840)))))

(assert (= (and d!1619463 c!861745) b!5032548))

(assert (= (and d!1619463 (not c!861745)) b!5032549))

(assert (= (and b!5032549 (not res!2144599)) b!5032550))

(declare-fun m!6067568 () Bool)

(assert (=> b!5032548 m!6067568))

(declare-fun m!6067570 () Bool)

(assert (=> b!5032550 m!6067570))

(assert (=> b!5032514 d!1619463))

(declare-fun b!5032559 () Bool)

(declare-fun e!3143770 () Bool)

(declare-fun tp!1409835 () Bool)

(declare-fun tp!1409837 () Bool)

(assert (=> b!5032559 (= e!3143770 (and (inv!76911 (left!42628 (c!861739 thiss!5840))) tp!1409837 (inv!76911 (right!42958 (c!861739 thiss!5840))) tp!1409835))))

(declare-fun b!5032561 () Bool)

(declare-fun e!3143769 () Bool)

(declare-fun tp!1409836 () Bool)

(assert (=> b!5032561 (= e!3143769 tp!1409836)))

(declare-fun b!5032560 () Bool)

(declare-fun inv!76914 (IArray!30993) Bool)

(assert (=> b!5032560 (= e!3143770 (and (inv!76914 (xs!18792 (c!861739 thiss!5840))) e!3143769))))

(assert (=> b!5032514 (= tp!1409828 (and (inv!76911 (c!861739 thiss!5840)) e!3143770))))

(assert (= (and b!5032514 ((_ is Node!15466) (c!861739 thiss!5840))) b!5032559))

(assert (= b!5032560 b!5032561))

(assert (= (and b!5032514 ((_ is Leaf!25663) (c!861739 thiss!5840))) b!5032560))

(declare-fun m!6067572 () Bool)

(assert (=> b!5032559 m!6067572))

(declare-fun m!6067574 () Bool)

(assert (=> b!5032559 m!6067574))

(declare-fun m!6067576 () Bool)

(assert (=> b!5032560 m!6067576))

(assert (=> b!5032514 m!6067534))

(check-sat (not d!1619453) (not b!5032536) (not b!5032539) (not b!5032541) (not d!1619455) (not d!1619461) (not b!5032560) (not b!5032514) (not b!5032550) (not b!5032561) (not b!5032538) (not b!5032540) (not b!5032559) (not b!5032537) (not b!5032548))
(check-sat)

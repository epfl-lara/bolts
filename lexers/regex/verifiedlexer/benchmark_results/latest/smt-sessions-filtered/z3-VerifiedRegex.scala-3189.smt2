; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!186132 () Bool)

(assert start!186132)

(declare-fun b!1861633 () Bool)

(declare-fun e!1188835 () Bool)

(declare-fun tp!530462 () Bool)

(assert (=> b!1861633 (= e!1188835 tp!530462)))

(declare-fun b!1861635 () Bool)

(declare-fun tp!530463 () Bool)

(declare-fun e!1188833 () Bool)

(declare-fun tp!530464 () Bool)

(declare-datatypes ((T!32920 0))(
  ( (T!32921 (val!5914 Int)) )
))
(declare-datatypes ((List!20731 0))(
  ( (Nil!20649) (Cons!20649 (h!26050 T!32920) (t!172766 List!20731)) )
))
(declare-datatypes ((IArray!13693 0))(
  ( (IArray!13694 (innerList!6904 List!20731)) )
))
(declare-datatypes ((Conc!6844 0))(
  ( (Node!6844 (left!16619 Conc!6844) (right!16949 Conc!6844) (csize!13918 Int) (cheight!7055 Int)) (Leaf!10034 (xs!9720 IArray!13693) (csize!13919 Int)) (Empty!6844) )
))
(declare-fun t!4595 () Conc!6844)

(declare-fun inv!27210 (Conc!6844) Bool)

(assert (=> b!1861635 (= e!1188833 (and (inv!27210 (left!16619 t!4595)) tp!530464 (inv!27210 (right!16949 t!4595)) tp!530463))))

(declare-fun b!1861636 () Bool)

(declare-fun e!1188834 () Bool)

(declare-fun list!8411 (Conc!6844) List!20731)

(assert (=> b!1861636 (= e!1188834 (not (= (list!8411 t!4595) Nil!20649)))))

(declare-fun b!1861637 () Bool)

(declare-fun e!1188832 () Bool)

(assert (=> b!1861637 (= e!1188832 (not e!1188834))))

(declare-fun res!833605 () Bool)

(assert (=> b!1861637 (=> res!833605 e!1188834)))

(declare-fun isBalanced!2145 (Conc!6844) Bool)

(declare-fun slice!560 (IArray!13693 Int Int) IArray!13693)

(assert (=> b!1861637 (= res!833605 (not (isBalanced!2145 (Leaf!10034 (slice!560 (xs!9720 t!4595) 1 (csize!13919 t!4595)) (- (csize!13919 t!4595) 1)))))))

(declare-fun lt!717839 () List!20731)

(declare-fun tail!2805 (List!20731) List!20731)

(declare-fun slice!561 (List!20731 Int Int) List!20731)

(declare-fun size!16336 (List!20731) Int)

(assert (=> b!1861637 (= (tail!2805 lt!717839) (slice!561 lt!717839 1 (size!16336 lt!717839)))))

(declare-datatypes ((Unit!35263 0))(
  ( (Unit!35264) )
))
(declare-fun lt!717838 () Unit!35263)

(declare-fun sliceTailLemma!26 (List!20731) Unit!35263)

(assert (=> b!1861637 (= lt!717838 (sliceTailLemma!26 lt!717839))))

(declare-fun list!8412 (IArray!13693) List!20731)

(assert (=> b!1861637 (= lt!717839 (list!8412 (xs!9720 t!4595)))))

(declare-fun b!1861638 () Bool)

(declare-fun inv!27211 (IArray!13693) Bool)

(assert (=> b!1861638 (= e!1188833 (and (inv!27211 (xs!9720 t!4595)) e!1188835))))

(declare-fun b!1861639 () Bool)

(declare-fun res!833604 () Bool)

(assert (=> b!1861639 (=> (not res!833604) (not e!1188832))))

(get-info :version)

(assert (=> b!1861639 (= res!833604 (and ((_ is Leaf!10034) t!4595) (not (= (csize!13919 t!4595) 1))))))

(declare-fun b!1861634 () Bool)

(declare-fun res!833606 () Bool)

(assert (=> b!1861634 (=> (not res!833606) (not e!1188832))))

(declare-fun isEmpty!12845 (Conc!6844) Bool)

(assert (=> b!1861634 (= res!833606 (not (isEmpty!12845 t!4595)))))

(declare-fun res!833607 () Bool)

(assert (=> start!186132 (=> (not res!833607) (not e!1188832))))

(assert (=> start!186132 (= res!833607 (isBalanced!2145 t!4595))))

(assert (=> start!186132 e!1188832))

(assert (=> start!186132 (and (inv!27210 t!4595) e!1188833)))

(assert (= (and start!186132 res!833607) b!1861634))

(assert (= (and b!1861634 res!833606) b!1861639))

(assert (= (and b!1861639 res!833604) b!1861637))

(assert (= (and b!1861637 (not res!833605)) b!1861636))

(assert (= (and start!186132 ((_ is Node!6844) t!4595)) b!1861635))

(assert (= b!1861638 b!1861633))

(assert (= (and start!186132 ((_ is Leaf!10034) t!4595)) b!1861638))

(declare-fun m!2285343 () Bool)

(assert (=> start!186132 m!2285343))

(declare-fun m!2285345 () Bool)

(assert (=> start!186132 m!2285345))

(declare-fun m!2285347 () Bool)

(assert (=> b!1861638 m!2285347))

(declare-fun m!2285349 () Bool)

(assert (=> b!1861634 m!2285349))

(declare-fun m!2285351 () Bool)

(assert (=> b!1861636 m!2285351))

(declare-fun m!2285353 () Bool)

(assert (=> b!1861635 m!2285353))

(declare-fun m!2285355 () Bool)

(assert (=> b!1861635 m!2285355))

(declare-fun m!2285357 () Bool)

(assert (=> b!1861637 m!2285357))

(declare-fun m!2285359 () Bool)

(assert (=> b!1861637 m!2285359))

(declare-fun m!2285361 () Bool)

(assert (=> b!1861637 m!2285361))

(declare-fun m!2285363 () Bool)

(assert (=> b!1861637 m!2285363))

(declare-fun m!2285365 () Bool)

(assert (=> b!1861637 m!2285365))

(assert (=> b!1861637 m!2285363))

(declare-fun m!2285367 () Bool)

(assert (=> b!1861637 m!2285367))

(declare-fun m!2285369 () Bool)

(assert (=> b!1861637 m!2285369))

(check-sat (not b!1861637) (not b!1861633) (not b!1861635) (not b!1861636) (not b!1861634) (not start!186132) (not b!1861638))
(check-sat)
(get-model)

(declare-fun d!568152 () Bool)

(declare-fun c!303194 () Bool)

(assert (=> d!568152 (= c!303194 ((_ is Node!6844) (left!16619 t!4595)))))

(declare-fun e!1188846 () Bool)

(assert (=> d!568152 (= (inv!27210 (left!16619 t!4595)) e!1188846)))

(declare-fun b!1861664 () Bool)

(declare-fun inv!27212 (Conc!6844) Bool)

(assert (=> b!1861664 (= e!1188846 (inv!27212 (left!16619 t!4595)))))

(declare-fun b!1861665 () Bool)

(declare-fun e!1188847 () Bool)

(assert (=> b!1861665 (= e!1188846 e!1188847)))

(declare-fun res!833628 () Bool)

(assert (=> b!1861665 (= res!833628 (not ((_ is Leaf!10034) (left!16619 t!4595))))))

(assert (=> b!1861665 (=> res!833628 e!1188847)))

(declare-fun b!1861666 () Bool)

(declare-fun inv!27213 (Conc!6844) Bool)

(assert (=> b!1861666 (= e!1188847 (inv!27213 (left!16619 t!4595)))))

(assert (= (and d!568152 c!303194) b!1861664))

(assert (= (and d!568152 (not c!303194)) b!1861665))

(assert (= (and b!1861665 (not res!833628)) b!1861666))

(declare-fun m!2285377 () Bool)

(assert (=> b!1861664 m!2285377))

(declare-fun m!2285383 () Bool)

(assert (=> b!1861666 m!2285383))

(assert (=> b!1861635 d!568152))

(declare-fun d!568154 () Bool)

(declare-fun c!303195 () Bool)

(assert (=> d!568154 (= c!303195 ((_ is Node!6844) (right!16949 t!4595)))))

(declare-fun e!1188848 () Bool)

(assert (=> d!568154 (= (inv!27210 (right!16949 t!4595)) e!1188848)))

(declare-fun b!1861667 () Bool)

(assert (=> b!1861667 (= e!1188848 (inv!27212 (right!16949 t!4595)))))

(declare-fun b!1861668 () Bool)

(declare-fun e!1188849 () Bool)

(assert (=> b!1861668 (= e!1188848 e!1188849)))

(declare-fun res!833629 () Bool)

(assert (=> b!1861668 (= res!833629 (not ((_ is Leaf!10034) (right!16949 t!4595))))))

(assert (=> b!1861668 (=> res!833629 e!1188849)))

(declare-fun b!1861669 () Bool)

(assert (=> b!1861669 (= e!1188849 (inv!27213 (right!16949 t!4595)))))

(assert (= (and d!568154 c!303195) b!1861667))

(assert (= (and d!568154 (not c!303195)) b!1861668))

(assert (= (and b!1861668 (not res!833629)) b!1861669))

(declare-fun m!2285387 () Bool)

(assert (=> b!1861667 m!2285387))

(declare-fun m!2285389 () Bool)

(assert (=> b!1861669 m!2285389))

(assert (=> b!1861635 d!568154))

(declare-fun d!568158 () Bool)

(declare-fun lt!717842 () Bool)

(declare-fun isEmpty!12846 (List!20731) Bool)

(assert (=> d!568158 (= lt!717842 (isEmpty!12846 (list!8411 t!4595)))))

(declare-fun size!16337 (Conc!6844) Int)

(assert (=> d!568158 (= lt!717842 (= (size!16337 t!4595) 0))))

(assert (=> d!568158 (= (isEmpty!12845 t!4595) lt!717842)))

(declare-fun bs!411520 () Bool)

(assert (= bs!411520 d!568158))

(assert (=> bs!411520 m!2285351))

(assert (=> bs!411520 m!2285351))

(declare-fun m!2285391 () Bool)

(assert (=> bs!411520 m!2285391))

(declare-fun m!2285393 () Bool)

(assert (=> bs!411520 m!2285393))

(assert (=> b!1861634 d!568158))

(declare-fun b!1861688 () Bool)

(declare-fun e!1188860 () List!20731)

(declare-fun e!1188861 () List!20731)

(assert (=> b!1861688 (= e!1188860 e!1188861)))

(declare-fun c!303204 () Bool)

(assert (=> b!1861688 (= c!303204 ((_ is Leaf!10034) t!4595))))

(declare-fun b!1861687 () Bool)

(assert (=> b!1861687 (= e!1188860 Nil!20649)))

(declare-fun b!1861689 () Bool)

(assert (=> b!1861689 (= e!1188861 (list!8412 (xs!9720 t!4595)))))

(declare-fun d!568160 () Bool)

(declare-fun c!303203 () Bool)

(assert (=> d!568160 (= c!303203 ((_ is Empty!6844) t!4595))))

(assert (=> d!568160 (= (list!8411 t!4595) e!1188860)))

(declare-fun b!1861690 () Bool)

(declare-fun ++!5575 (List!20731 List!20731) List!20731)

(assert (=> b!1861690 (= e!1188861 (++!5575 (list!8411 (left!16619 t!4595)) (list!8411 (right!16949 t!4595))))))

(assert (= (and d!568160 c!303203) b!1861687))

(assert (= (and d!568160 (not c!303203)) b!1861688))

(assert (= (and b!1861688 c!303204) b!1861689))

(assert (= (and b!1861688 (not c!303204)) b!1861690))

(assert (=> b!1861689 m!2285359))

(declare-fun m!2285405 () Bool)

(assert (=> b!1861690 m!2285405))

(declare-fun m!2285407 () Bool)

(assert (=> b!1861690 m!2285407))

(assert (=> b!1861690 m!2285405))

(assert (=> b!1861690 m!2285407))

(declare-fun m!2285409 () Bool)

(assert (=> b!1861690 m!2285409))

(assert (=> b!1861636 d!568160))

(declare-fun b!1861721 () Bool)

(declare-fun res!833647 () Bool)

(declare-fun e!1188876 () Bool)

(assert (=> b!1861721 (=> (not res!833647) (not e!1188876))))

(assert (=> b!1861721 (= res!833647 (isBalanced!2145 (right!16949 t!4595)))))

(declare-fun b!1861722 () Bool)

(assert (=> b!1861722 (= e!1188876 (not (isEmpty!12845 (right!16949 t!4595))))))

(declare-fun b!1861723 () Bool)

(declare-fun res!833651 () Bool)

(assert (=> b!1861723 (=> (not res!833651) (not e!1188876))))

(assert (=> b!1861723 (= res!833651 (not (isEmpty!12845 (left!16619 t!4595))))))

(declare-fun d!568168 () Bool)

(declare-fun res!833652 () Bool)

(declare-fun e!1188877 () Bool)

(assert (=> d!568168 (=> res!833652 e!1188877)))

(assert (=> d!568168 (= res!833652 (not ((_ is Node!6844) t!4595)))))

(assert (=> d!568168 (= (isBalanced!2145 t!4595) e!1188877)))

(declare-fun b!1861724 () Bool)

(declare-fun res!833648 () Bool)

(assert (=> b!1861724 (=> (not res!833648) (not e!1188876))))

(assert (=> b!1861724 (= res!833648 (isBalanced!2145 (left!16619 t!4595)))))

(declare-fun b!1861725 () Bool)

(assert (=> b!1861725 (= e!1188877 e!1188876)))

(declare-fun res!833650 () Bool)

(assert (=> b!1861725 (=> (not res!833650) (not e!1188876))))

(declare-fun height!1037 (Conc!6844) Int)

(assert (=> b!1861725 (= res!833650 (<= (- 1) (- (height!1037 (left!16619 t!4595)) (height!1037 (right!16949 t!4595)))))))

(declare-fun b!1861726 () Bool)

(declare-fun res!833649 () Bool)

(assert (=> b!1861726 (=> (not res!833649) (not e!1188876))))

(assert (=> b!1861726 (= res!833649 (<= (- (height!1037 (left!16619 t!4595)) (height!1037 (right!16949 t!4595))) 1))))

(assert (= (and d!568168 (not res!833652)) b!1861725))

(assert (= (and b!1861725 res!833650) b!1861726))

(assert (= (and b!1861726 res!833649) b!1861724))

(assert (= (and b!1861724 res!833648) b!1861721))

(assert (= (and b!1861721 res!833647) b!1861723))

(assert (= (and b!1861723 res!833651) b!1861722))

(declare-fun m!2285425 () Bool)

(assert (=> b!1861721 m!2285425))

(declare-fun m!2285427 () Bool)

(assert (=> b!1861725 m!2285427))

(declare-fun m!2285429 () Bool)

(assert (=> b!1861725 m!2285429))

(declare-fun m!2285431 () Bool)

(assert (=> b!1861724 m!2285431))

(assert (=> b!1861726 m!2285427))

(assert (=> b!1861726 m!2285429))

(declare-fun m!2285433 () Bool)

(assert (=> b!1861722 m!2285433))

(declare-fun m!2285435 () Bool)

(assert (=> b!1861723 m!2285435))

(assert (=> start!186132 d!568168))

(declare-fun d!568176 () Bool)

(declare-fun c!303213 () Bool)

(assert (=> d!568176 (= c!303213 ((_ is Node!6844) t!4595))))

(declare-fun e!1188878 () Bool)

(assert (=> d!568176 (= (inv!27210 t!4595) e!1188878)))

(declare-fun b!1861727 () Bool)

(assert (=> b!1861727 (= e!1188878 (inv!27212 t!4595))))

(declare-fun b!1861728 () Bool)

(declare-fun e!1188879 () Bool)

(assert (=> b!1861728 (= e!1188878 e!1188879)))

(declare-fun res!833653 () Bool)

(assert (=> b!1861728 (= res!833653 (not ((_ is Leaf!10034) t!4595)))))

(assert (=> b!1861728 (=> res!833653 e!1188879)))

(declare-fun b!1861729 () Bool)

(assert (=> b!1861729 (= e!1188879 (inv!27213 t!4595))))

(assert (= (and d!568176 c!303213) b!1861727))

(assert (= (and d!568176 (not c!303213)) b!1861728))

(assert (= (and b!1861728 (not res!833653)) b!1861729))

(declare-fun m!2285437 () Bool)

(assert (=> b!1861727 m!2285437))

(declare-fun m!2285439 () Bool)

(assert (=> b!1861729 m!2285439))

(assert (=> start!186132 d!568176))

(declare-fun d!568178 () Bool)

(assert (=> d!568178 (= (tail!2805 lt!717839) (slice!561 lt!717839 1 (size!16336 lt!717839)))))

(declare-fun lt!717853 () Unit!35263)

(declare-fun choose!11718 (List!20731) Unit!35263)

(assert (=> d!568178 (= lt!717853 (choose!11718 lt!717839))))

(assert (=> d!568178 (> (size!16336 lt!717839) 0)))

(assert (=> d!568178 (= (sliceTailLemma!26 lt!717839) lt!717853)))

(declare-fun bs!411524 () Bool)

(assert (= bs!411524 d!568178))

(assert (=> bs!411524 m!2285367))

(assert (=> bs!411524 m!2285363))

(assert (=> bs!411524 m!2285363))

(assert (=> bs!411524 m!2285365))

(declare-fun m!2285443 () Bool)

(assert (=> bs!411524 m!2285443))

(assert (=> b!1861637 d!568178))

(declare-fun b!1861736 () Bool)

(declare-fun res!833654 () Bool)

(declare-fun e!1188883 () Bool)

(assert (=> b!1861736 (=> (not res!833654) (not e!1188883))))

(assert (=> b!1861736 (= res!833654 (isBalanced!2145 (right!16949 (Leaf!10034 (slice!560 (xs!9720 t!4595) 1 (csize!13919 t!4595)) (- (csize!13919 t!4595) 1)))))))

(declare-fun b!1861738 () Bool)

(assert (=> b!1861738 (= e!1188883 (not (isEmpty!12845 (right!16949 (Leaf!10034 (slice!560 (xs!9720 t!4595) 1 (csize!13919 t!4595)) (- (csize!13919 t!4595) 1))))))))

(declare-fun b!1861740 () Bool)

(declare-fun res!833663 () Bool)

(assert (=> b!1861740 (=> (not res!833663) (not e!1188883))))

(assert (=> b!1861740 (= res!833663 (not (isEmpty!12845 (left!16619 (Leaf!10034 (slice!560 (xs!9720 t!4595) 1 (csize!13919 t!4595)) (- (csize!13919 t!4595) 1))))))))

(declare-fun d!568182 () Bool)

(declare-fun res!833665 () Bool)

(declare-fun e!1188885 () Bool)

(assert (=> d!568182 (=> res!833665 e!1188885)))

(assert (=> d!568182 (= res!833665 (not ((_ is Node!6844) (Leaf!10034 (slice!560 (xs!9720 t!4595) 1 (csize!13919 t!4595)) (- (csize!13919 t!4595) 1)))))))

(assert (=> d!568182 (= (isBalanced!2145 (Leaf!10034 (slice!560 (xs!9720 t!4595) 1 (csize!13919 t!4595)) (- (csize!13919 t!4595) 1))) e!1188885)))

(declare-fun b!1861742 () Bool)

(declare-fun res!833656 () Bool)

(assert (=> b!1861742 (=> (not res!833656) (not e!1188883))))

(assert (=> b!1861742 (= res!833656 (isBalanced!2145 (left!16619 (Leaf!10034 (slice!560 (xs!9720 t!4595) 1 (csize!13919 t!4595)) (- (csize!13919 t!4595) 1)))))))

(declare-fun b!1861744 () Bool)

(assert (=> b!1861744 (= e!1188885 e!1188883)))

(declare-fun res!833660 () Bool)

(assert (=> b!1861744 (=> (not res!833660) (not e!1188883))))

(assert (=> b!1861744 (= res!833660 (<= (- 1) (- (height!1037 (left!16619 (Leaf!10034 (slice!560 (xs!9720 t!4595) 1 (csize!13919 t!4595)) (- (csize!13919 t!4595) 1)))) (height!1037 (right!16949 (Leaf!10034 (slice!560 (xs!9720 t!4595) 1 (csize!13919 t!4595)) (- (csize!13919 t!4595) 1)))))))))

(declare-fun b!1861746 () Bool)

(declare-fun res!833658 () Bool)

(assert (=> b!1861746 (=> (not res!833658) (not e!1188883))))

(assert (=> b!1861746 (= res!833658 (<= (- (height!1037 (left!16619 (Leaf!10034 (slice!560 (xs!9720 t!4595) 1 (csize!13919 t!4595)) (- (csize!13919 t!4595) 1)))) (height!1037 (right!16949 (Leaf!10034 (slice!560 (xs!9720 t!4595) 1 (csize!13919 t!4595)) (- (csize!13919 t!4595) 1))))) 1))))

(assert (= (and d!568182 (not res!833665)) b!1861744))

(assert (= (and b!1861744 res!833660) b!1861746))

(assert (= (and b!1861746 res!833658) b!1861742))

(assert (= (and b!1861742 res!833656) b!1861736))

(assert (= (and b!1861736 res!833654) b!1861740))

(assert (= (and b!1861740 res!833663) b!1861738))

(declare-fun m!2285447 () Bool)

(assert (=> b!1861736 m!2285447))

(declare-fun m!2285451 () Bool)

(assert (=> b!1861744 m!2285451))

(declare-fun m!2285457 () Bool)

(assert (=> b!1861744 m!2285457))

(declare-fun m!2285461 () Bool)

(assert (=> b!1861742 m!2285461))

(assert (=> b!1861746 m!2285451))

(assert (=> b!1861746 m!2285457))

(declare-fun m!2285467 () Bool)

(assert (=> b!1861738 m!2285467))

(declare-fun m!2285469 () Bool)

(assert (=> b!1861740 m!2285469))

(assert (=> b!1861637 d!568182))

(declare-fun d!568186 () Bool)

(assert (=> d!568186 (= (list!8412 (xs!9720 t!4595)) (innerList!6904 (xs!9720 t!4595)))))

(assert (=> b!1861637 d!568186))

(declare-fun d!568192 () Bool)

(declare-fun lt!717857 () Int)

(assert (=> d!568192 (>= lt!717857 0)))

(declare-fun e!1188889 () Int)

(assert (=> d!568192 (= lt!717857 e!1188889)))

(declare-fun c!303219 () Bool)

(assert (=> d!568192 (= c!303219 ((_ is Nil!20649) lt!717839))))

(assert (=> d!568192 (= (size!16336 lt!717839) lt!717857)))

(declare-fun b!1861752 () Bool)

(assert (=> b!1861752 (= e!1188889 0)))

(declare-fun b!1861753 () Bool)

(assert (=> b!1861753 (= e!1188889 (+ 1 (size!16336 (t!172766 lt!717839))))))

(assert (= (and d!568192 c!303219) b!1861752))

(assert (= (and d!568192 (not c!303219)) b!1861753))

(declare-fun m!2285473 () Bool)

(assert (=> b!1861753 m!2285473))

(assert (=> b!1861637 d!568192))

(declare-fun d!568196 () Bool)

(assert (=> d!568196 (= (tail!2805 lt!717839) (t!172766 lt!717839))))

(assert (=> b!1861637 d!568196))

(declare-fun d!568200 () Bool)

(declare-fun take!158 (List!20731 Int) List!20731)

(declare-fun drop!985 (List!20731 Int) List!20731)

(assert (=> d!568200 (= (slice!561 lt!717839 1 (size!16336 lt!717839)) (take!158 (drop!985 lt!717839 1) (- (size!16336 lt!717839) 1)))))

(declare-fun bs!411526 () Bool)

(assert (= bs!411526 d!568200))

(declare-fun m!2285477 () Bool)

(assert (=> bs!411526 m!2285477))

(assert (=> bs!411526 m!2285477))

(declare-fun m!2285479 () Bool)

(assert (=> bs!411526 m!2285479))

(assert (=> b!1861637 d!568200))

(declare-fun d!568202 () Bool)

(declare-fun lt!717863 () IArray!13693)

(assert (=> d!568202 (= lt!717863 (IArray!13694 (slice!561 (list!8412 (xs!9720 t!4595)) 1 (csize!13919 t!4595))))))

(declare-fun choose!11720 (IArray!13693 Int Int) IArray!13693)

(assert (=> d!568202 (= lt!717863 (choose!11720 (xs!9720 t!4595) 1 (csize!13919 t!4595)))))

(declare-fun e!1188902 () Bool)

(assert (=> d!568202 e!1188902))

(declare-fun res!833671 () Bool)

(assert (=> d!568202 (=> (not res!833671) (not e!1188902))))

(assert (=> d!568202 (= res!833671 (and (<= 0 1) (<= 1 (csize!13919 t!4595))))))

(assert (=> d!568202 (= (slice!560 (xs!9720 t!4595) 1 (csize!13919 t!4595)) lt!717863)))

(declare-fun b!1861772 () Bool)

(declare-fun size!16339 (IArray!13693) Int)

(assert (=> b!1861772 (= e!1188902 (<= (csize!13919 t!4595) (size!16339 (xs!9720 t!4595))))))

(assert (= (and d!568202 res!833671) b!1861772))

(assert (=> d!568202 m!2285359))

(assert (=> d!568202 m!2285359))

(declare-fun m!2285487 () Bool)

(assert (=> d!568202 m!2285487))

(declare-fun m!2285489 () Bool)

(assert (=> d!568202 m!2285489))

(declare-fun m!2285491 () Bool)

(assert (=> b!1861772 m!2285491))

(assert (=> b!1861637 d!568202))

(declare-fun d!568204 () Bool)

(assert (=> d!568204 (= (inv!27211 (xs!9720 t!4595)) (<= (size!16336 (innerList!6904 (xs!9720 t!4595))) 2147483647))))

(declare-fun bs!411527 () Bool)

(assert (= bs!411527 d!568204))

(declare-fun m!2285493 () Bool)

(assert (=> bs!411527 m!2285493))

(assert (=> b!1861638 d!568204))

(declare-fun e!1188912 () Bool)

(declare-fun tp!530486 () Bool)

(declare-fun b!1861787 () Bool)

(declare-fun tp!530487 () Bool)

(assert (=> b!1861787 (= e!1188912 (and (inv!27210 (left!16619 (left!16619 t!4595))) tp!530486 (inv!27210 (right!16949 (left!16619 t!4595))) tp!530487))))

(declare-fun b!1861789 () Bool)

(declare-fun e!1188911 () Bool)

(declare-fun tp!530488 () Bool)

(assert (=> b!1861789 (= e!1188911 tp!530488)))

(declare-fun b!1861788 () Bool)

(assert (=> b!1861788 (= e!1188912 (and (inv!27211 (xs!9720 (left!16619 t!4595))) e!1188911))))

(assert (=> b!1861635 (= tp!530464 (and (inv!27210 (left!16619 t!4595)) e!1188912))))

(assert (= (and b!1861635 ((_ is Node!6844) (left!16619 t!4595))) b!1861787))

(assert (= b!1861788 b!1861789))

(assert (= (and b!1861635 ((_ is Leaf!10034) (left!16619 t!4595))) b!1861788))

(declare-fun m!2285507 () Bool)

(assert (=> b!1861787 m!2285507))

(declare-fun m!2285509 () Bool)

(assert (=> b!1861787 m!2285509))

(declare-fun m!2285511 () Bool)

(assert (=> b!1861788 m!2285511))

(assert (=> b!1861635 m!2285353))

(declare-fun tp!530489 () Bool)

(declare-fun tp!530490 () Bool)

(declare-fun e!1188914 () Bool)

(declare-fun b!1861790 () Bool)

(assert (=> b!1861790 (= e!1188914 (and (inv!27210 (left!16619 (right!16949 t!4595))) tp!530489 (inv!27210 (right!16949 (right!16949 t!4595))) tp!530490))))

(declare-fun b!1861792 () Bool)

(declare-fun e!1188913 () Bool)

(declare-fun tp!530491 () Bool)

(assert (=> b!1861792 (= e!1188913 tp!530491)))

(declare-fun b!1861791 () Bool)

(assert (=> b!1861791 (= e!1188914 (and (inv!27211 (xs!9720 (right!16949 t!4595))) e!1188913))))

(assert (=> b!1861635 (= tp!530463 (and (inv!27210 (right!16949 t!4595)) e!1188914))))

(assert (= (and b!1861635 ((_ is Node!6844) (right!16949 t!4595))) b!1861790))

(assert (= b!1861791 b!1861792))

(assert (= (and b!1861635 ((_ is Leaf!10034) (right!16949 t!4595))) b!1861791))

(declare-fun m!2285513 () Bool)

(assert (=> b!1861790 m!2285513))

(declare-fun m!2285515 () Bool)

(assert (=> b!1861790 m!2285515))

(declare-fun m!2285517 () Bool)

(assert (=> b!1861791 m!2285517))

(assert (=> b!1861635 m!2285355))

(declare-fun b!1861797 () Bool)

(declare-fun e!1188917 () Bool)

(declare-fun tp_is_empty!8619 () Bool)

(declare-fun tp!530494 () Bool)

(assert (=> b!1861797 (= e!1188917 (and tp_is_empty!8619 tp!530494))))

(assert (=> b!1861633 (= tp!530462 e!1188917)))

(assert (= (and b!1861633 ((_ is Cons!20649) (innerList!6904 (xs!9720 t!4595)))) b!1861797))

(check-sat (not b!1861667) (not b!1861790) (not b!1861635) (not b!1861787) (not b!1861772) (not b!1861664) tp_is_empty!8619 (not b!1861722) (not d!568204) (not b!1861792) (not b!1861789) (not b!1861791) (not b!1861724) (not d!568202) (not b!1861726) (not b!1861744) (not d!568200) (not b!1861669) (not b!1861746) (not b!1861690) (not b!1861738) (not b!1861725) (not b!1861753) (not b!1861727) (not b!1861788) (not b!1861740) (not b!1861736) (not d!568178) (not b!1861729) (not b!1861689) (not b!1861666) (not b!1861721) (not b!1861797) (not b!1861723) (not d!568158) (not b!1861742))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!532338 () Bool)

(assert start!532338)

(declare-fun res!2144557 () Bool)

(declare-fun e!3143733 () Bool)

(assert (=> start!532338 (=> (not res!2144557) (not e!3143733))))

(declare-datatypes ((T!103844 0))(
  ( (T!103845 (val!23466 Int)) )
))
(declare-datatypes ((List!58376 0))(
  ( (Nil!58252) (Cons!58252 (h!64700 T!103844) (t!370803 List!58376)) )
))
(declare-datatypes ((IArray!30989 0))(
  ( (IArray!30990 (innerList!15552 List!58376)) )
))
(declare-datatypes ((Conc!15464 0))(
  ( (Node!15464 (left!42625 Conc!15464) (right!42955 Conc!15464) (csize!31158 Int) (cheight!15675 Int)) (Leaf!25660 (xs!18790 IArray!30989) (csize!31159 Int)) (Empty!15464) )
))
(declare-datatypes ((BalanceConc!30358 0))(
  ( (BalanceConc!30359 (c!861737 Conc!15464)) )
))
(declare-fun thiss!5840 () BalanceConc!30358)

(declare-fun isBalanced!4326 (Conc!15464) Bool)

(assert (=> start!532338 (= res!2144557 (isBalanced!4326 (c!861737 thiss!5840)))))

(assert (=> start!532338 e!3143733))

(declare-fun e!3143734 () Bool)

(declare-fun inv!76903 (BalanceConc!30358) Bool)

(assert (=> start!532338 (and (inv!76903 thiss!5840) e!3143734)))

(assert (=> start!532338 true))

(declare-fun b!5032488 () Bool)

(declare-fun res!2144556 () Bool)

(assert (=> b!5032488 (=> (not res!2144556) (not e!3143733))))

(declare-fun i!595 () Int)

(assert (=> b!5032488 (= res!2144556 (<= 0 i!595))))

(declare-fun b!5032489 () Bool)

(assert (=> b!5032489 (= e!3143733 false)))

(declare-fun lt!2082464 () Int)

(declare-fun size!38792 (BalanceConc!30358) Int)

(assert (=> b!5032489 (= lt!2082464 (size!38792 thiss!5840))))

(declare-fun b!5032490 () Bool)

(declare-fun tp!1409822 () Bool)

(declare-fun inv!76904 (Conc!15464) Bool)

(assert (=> b!5032490 (= e!3143734 (and (inv!76904 (c!861737 thiss!5840)) tp!1409822))))

(assert (= (and start!532338 res!2144557) b!5032488))

(assert (= (and b!5032488 res!2144556) b!5032489))

(assert (= start!532338 b!5032490))

(declare-fun m!6067512 () Bool)

(assert (=> start!532338 m!6067512))

(declare-fun m!6067514 () Bool)

(assert (=> start!532338 m!6067514))

(declare-fun m!6067516 () Bool)

(assert (=> b!5032489 m!6067516))

(declare-fun m!6067518 () Bool)

(assert (=> b!5032490 m!6067518))

(check-sat (not b!5032490) (not start!532338) (not b!5032489))
(check-sat)

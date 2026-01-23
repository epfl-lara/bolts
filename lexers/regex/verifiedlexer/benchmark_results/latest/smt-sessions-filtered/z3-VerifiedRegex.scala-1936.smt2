; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95434 () Bool)

(assert start!95434)

(declare-fun lt!375707 () Int)

(declare-datatypes ((T!19898 0))(
  ( (T!19899 (val!3574 Int)) )
))
(declare-datatypes ((List!10786 0))(
  ( (Nil!10765) (Cons!10765 (h!16166 T!19898) (t!105345 List!10786)) )
))
(declare-fun lt!375706 () List!10786)

(declare-fun size!8375 (List!10786) Int)

(assert (=> start!95434 (= lt!375707 (size!8375 lt!375706))))

(declare-datatypes ((IArray!6811 0) (List!10788 0) (Object!1943 0) (BalanceConc!6826 0) (Conc!3403 0))(
  ( (IArray!6812 (innerList!3463 List!10788)) )
  ( (Nil!10766) (Cons!10766 (h!16167 Object!1943) (t!105346 List!10788)) )
  ( (BalanceConc!6825 (value!60879 BalanceConc!6826)) (List!10787 (value!60880 List!10788)) (Character!20 (value!60881 (_ BitVec 16))) (Open!20 (value!60882 Int)) )
  ( (BalanceConc!6827 (c!187791 Conc!3403)) )
  ( (Node!3403 (left!9365 Conc!3403) (right!9695 Conc!3403) (csize!7036 Int) (cheight!3614 Int)) (Leaf!5340 (xs!6096 IArray!6811) (csize!7037 Int)) (Empty!3403) )
))
(declare-datatypes ((Vector!44 0))(
  ( (Vector!45 (underlying!2714 Object!1943) (overflowing!79 List!10786)) )
))
(declare-fun other!25 () Vector!44)

(declare-fun list!3888 (Vector!44) List!10786)

(assert (=> start!95434 (= lt!375706 (list!3888 other!25))))

(declare-fun size!8376 (Vector!44) Int)

(assert (=> start!95434 (= lt!375707 (size!8376 other!25))))

(declare-fun lt!375709 () Int)

(declare-fun lt!375708 () List!10786)

(assert (=> start!95434 (= lt!375709 (size!8375 lt!375708))))

(declare-fun thiss!9530 () Vector!44)

(assert (=> start!95434 (= lt!375708 (list!3888 thiss!9530))))

(assert (=> start!95434 (= lt!375709 (size!8376 thiss!9530))))

(assert (=> start!95434 (not (or (= lt!375709 lt!375707) (not (= lt!375708 lt!375706))))))

(declare-fun e!700855 () Bool)

(assert (=> start!95434 e!700855))

(declare-fun e!700856 () Bool)

(assert (=> start!95434 e!700856))

(declare-fun b!1105840 () Bool)

(declare-fun tp!327426 () Bool)

(declare-fun tp!327428 () Bool)

(assert (=> b!1105840 (= e!700855 (and tp!327426 tp!327428))))

(declare-fun b!1105841 () Bool)

(declare-fun tp!327427 () Bool)

(declare-fun tp!327425 () Bool)

(assert (=> b!1105841 (= e!700856 (and tp!327427 tp!327425))))

(assert (= start!95434 b!1105840))

(assert (= start!95434 b!1105841))

(declare-fun m!1263431 () Bool)

(assert (=> start!95434 m!1263431))

(declare-fun m!1263433 () Bool)

(assert (=> start!95434 m!1263433))

(declare-fun m!1263435 () Bool)

(assert (=> start!95434 m!1263435))

(declare-fun m!1263437 () Bool)

(assert (=> start!95434 m!1263437))

(declare-fun m!1263439 () Bool)

(assert (=> start!95434 m!1263439))

(declare-fun m!1263441 () Bool)

(assert (=> start!95434 m!1263441))

(check-sat (not start!95434) (not b!1105841) (not b!1105840))
(check-sat)

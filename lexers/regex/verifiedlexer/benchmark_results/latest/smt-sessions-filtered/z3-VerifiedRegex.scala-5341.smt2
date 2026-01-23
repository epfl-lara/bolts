; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!272864 () Bool)

(assert start!272864)

(declare-fun res!1171842 () Bool)

(declare-fun e!1780500 () Bool)

(assert (=> start!272864 (=> (not res!1171842) (not e!1780500))))

(declare-fun i!1825 () Int)

(assert (=> start!272864 (= res!1171842 (>= i!1825 0))))

(assert (=> start!272864 e!1780500))

(assert (=> start!272864 true))

(declare-datatypes ((C!16780 0))(
  ( (C!16781 (val!10370 Int)) )
))
(declare-datatypes ((List!33037 0))(
  ( (Nil!32913) (Cons!32913 (h!38333 C!16780) (t!230041 List!33037)) )
))
(declare-datatypes ((IArray!20413 0))(
  ( (IArray!20414 (innerList!10264 List!33037)) )
))
(declare-datatypes ((Conc!10204 0))(
  ( (Node!10204 (left!24837 Conc!10204) (right!25167 Conc!10204) (csize!20638 Int) (cheight!10415 Int)) (Leaf!15546 (xs!13316 IArray!20413) (csize!20639 Int)) (Empty!10204) )
))
(declare-datatypes ((BalanceConc!20046 0))(
  ( (BalanceConc!20047 (c!456462 Conc!10204)) )
))
(declare-fun input!3732 () BalanceConc!20046)

(declare-fun e!1780499 () Bool)

(declare-fun inv!44762 (BalanceConc!20046) Bool)

(assert (=> start!272864 (and (inv!44762 input!3732) e!1780499)))

(declare-fun b!2815627 () Bool)

(declare-fun e!1780501 () Bool)

(assert (=> b!2815627 (= e!1780500 e!1780501)))

(declare-fun res!1171841 () Bool)

(assert (=> b!2815627 (=> (not res!1171841) (not e!1780501))))

(declare-fun lt!1005730 () Int)

(assert (=> b!2815627 (= res!1171841 (and (<= i!1825 lt!1005730) (not (= i!1825 lt!1005730))))))

(declare-fun size!25660 (BalanceConc!20046) Int)

(assert (=> b!2815627 (= lt!1005730 (size!25660 input!3732))))

(declare-fun b!2815628 () Bool)

(assert (=> b!2815628 (= e!1780501 (or (< (+ 1 i!1825) 0) (> (+ 1 i!1825) lt!1005730)))))

(declare-fun lt!1005731 () C!16780)

(declare-fun apply!7689 (BalanceConc!20046 Int) C!16780)

(assert (=> b!2815628 (= lt!1005731 (apply!7689 input!3732 i!1825))))

(declare-fun b!2815629 () Bool)

(declare-fun tp!898862 () Bool)

(declare-fun inv!44763 (Conc!10204) Bool)

(assert (=> b!2815629 (= e!1780499 (and (inv!44763 (c!456462 input!3732)) tp!898862))))

(assert (= (and start!272864 res!1171842) b!2815627))

(assert (= (and b!2815627 res!1171841) b!2815628))

(assert (= start!272864 b!2815629))

(declare-fun m!3246609 () Bool)

(assert (=> start!272864 m!3246609))

(declare-fun m!3246611 () Bool)

(assert (=> b!2815627 m!3246611))

(declare-fun m!3246613 () Bool)

(assert (=> b!2815628 m!3246613))

(declare-fun m!3246615 () Bool)

(assert (=> b!2815629 m!3246615))

(check-sat (not b!2815629) (not b!2815628) (not start!272864) (not b!2815627))
(check-sat)

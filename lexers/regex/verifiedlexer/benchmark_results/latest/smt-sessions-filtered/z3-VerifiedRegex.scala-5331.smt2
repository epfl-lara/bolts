; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!272432 () Bool)

(assert start!272432)

(declare-fun res!1171111 () Bool)

(declare-fun e!1779132 () Bool)

(assert (=> start!272432 (=> (not res!1171111) (not e!1779132))))

(declare-fun i!1825 () Int)

(assert (=> start!272432 (= res!1171111 (>= i!1825 0))))

(assert (=> start!272432 e!1779132))

(assert (=> start!272432 true))

(declare-datatypes ((C!16740 0))(
  ( (C!16741 (val!10350 Int)) )
))
(declare-datatypes ((List!33001 0))(
  ( (Nil!32877) (Cons!32877 (h!38297 C!16740) (t!229975 List!33001)) )
))
(declare-datatypes ((IArray!20373 0))(
  ( (IArray!20374 (innerList!10244 List!33001)) )
))
(declare-datatypes ((Conc!10184 0))(
  ( (Node!10184 (left!24799 Conc!10184) (right!25129 Conc!10184) (csize!20598 Int) (cheight!10395 Int)) (Leaf!15516 (xs!13296 IArray!20373) (csize!20599 Int)) (Empty!10184) )
))
(declare-datatypes ((BalanceConc!20006 0))(
  ( (BalanceConc!20007 (c!455876 Conc!10184)) )
))
(declare-fun input!3732 () BalanceConc!20006)

(declare-fun e!1779133 () Bool)

(declare-fun inv!44652 (BalanceConc!20006) Bool)

(assert (=> start!272432 (and (inv!44652 input!3732) e!1779133)))

(declare-fun b!2813339 () Bool)

(declare-fun e!1779131 () Bool)

(assert (=> b!2813339 (= e!1779132 e!1779131)))

(declare-fun res!1171112 () Bool)

(assert (=> b!2813339 (=> (not res!1171112) (not e!1779131))))

(declare-fun lt!1005062 () Int)

(assert (=> b!2813339 (= res!1171112 (and (<= i!1825 lt!1005062) (not (= i!1825 lt!1005062))))))

(declare-fun size!25620 (BalanceConc!20006) Int)

(assert (=> b!2813339 (= lt!1005062 (size!25620 input!3732))))

(declare-fun b!2813340 () Bool)

(assert (=> b!2813340 (= e!1779131 false)))

(declare-fun lt!1005063 () C!16740)

(declare-fun apply!7651 (BalanceConc!20006 Int) C!16740)

(assert (=> b!2813340 (= lt!1005063 (apply!7651 input!3732 i!1825))))

(declare-fun b!2813341 () Bool)

(declare-fun tp!898332 () Bool)

(declare-fun inv!44653 (Conc!10184) Bool)

(assert (=> b!2813341 (= e!1779133 (and (inv!44653 (c!455876 input!3732)) tp!898332))))

(assert (= (and start!272432 res!1171111) b!2813339))

(assert (= (and b!2813339 res!1171112) b!2813340))

(assert (= start!272432 b!2813341))

(declare-fun m!3243713 () Bool)

(assert (=> start!272432 m!3243713))

(declare-fun m!3243715 () Bool)

(assert (=> b!2813339 m!3243715))

(declare-fun m!3243717 () Bool)

(assert (=> b!2813340 m!3243717))

(declare-fun m!3243719 () Bool)

(assert (=> b!2813341 m!3243719))

(check-sat (not b!2813340) (not start!272432) (not b!2813339) (not b!2813341))
(check-sat)

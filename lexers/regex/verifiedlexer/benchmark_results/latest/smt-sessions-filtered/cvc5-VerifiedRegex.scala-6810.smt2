; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!358466 () Bool)

(assert start!358466)

(declare-fun res!1550915 () Bool)

(declare-fun e!2365835 () Bool)

(assert (=> start!358466 (=> (not res!1550915) (not e!2365835))))

(declare-datatypes ((T!69748 0))(
  ( (T!69749 (val!13299 Int)) )
))
(declare-datatypes ((List!40552 0))(
  ( (Nil!40428) (Cons!40428 (h!45848 T!69748) (t!309125 List!40552)) )
))
(declare-datatypes ((IArray!24853 0))(
  ( (IArray!24854 (innerList!12484 List!40552)) )
))
(declare-datatypes ((Conc!12424 0))(
  ( (Node!12424 (left!31282 Conc!12424) (right!31612 Conc!12424) (csize!25078 Int) (cheight!12635 Int)) (Leaf!19235 (xs!15724 IArray!24853) (csize!25079 Int)) (Empty!12424) )
))
(declare-datatypes ((BalanceConc!24442 0))(
  ( (BalanceConc!24443 (c!668034 Conc!12424)) )
))
(declare-fun thiss!5815 () BalanceConc!24442)

(declare-fun isBalanced!3603 (Conc!12424) Bool)

(assert (=> start!358466 (= res!1550915 (isBalanced!3603 (c!668034 thiss!5815)))))

(assert (=> start!358466 e!2365835))

(declare-fun e!2365837 () Bool)

(declare-fun inv!54506 (BalanceConc!24442) Bool)

(assert (=> start!358466 (and (inv!54506 thiss!5815) e!2365837)))

(declare-fun ys!29 () BalanceConc!24442)

(declare-fun e!2365836 () Bool)

(assert (=> start!358466 (and (inv!54506 ys!29) e!2365836)))

(declare-fun b!3831035 () Bool)

(assert (=> b!3831035 (= e!2365835 false)))

(declare-fun lt!1330264 () Bool)

(assert (=> b!3831035 (= lt!1330264 (isBalanced!3603 (c!668034 ys!29)))))

(declare-fun b!3831036 () Bool)

(declare-fun tp!1159207 () Bool)

(declare-fun inv!54507 (Conc!12424) Bool)

(assert (=> b!3831036 (= e!2365837 (and (inv!54507 (c!668034 thiss!5815)) tp!1159207))))

(declare-fun b!3831037 () Bool)

(declare-fun tp!1159208 () Bool)

(assert (=> b!3831037 (= e!2365836 (and (inv!54507 (c!668034 ys!29)) tp!1159208))))

(assert (= (and start!358466 res!1550915) b!3831035))

(assert (= start!358466 b!3831036))

(assert (= start!358466 b!3831037))

(declare-fun m!4385757 () Bool)

(assert (=> start!358466 m!4385757))

(declare-fun m!4385759 () Bool)

(assert (=> start!358466 m!4385759))

(declare-fun m!4385761 () Bool)

(assert (=> start!358466 m!4385761))

(declare-fun m!4385763 () Bool)

(assert (=> b!3831035 m!4385763))

(declare-fun m!4385765 () Bool)

(assert (=> b!3831036 m!4385765))

(declare-fun m!4385767 () Bool)

(assert (=> b!3831037 m!4385767))

(push 1)

(assert (not b!3831035))

(assert (not b!3831037))

(assert (not b!3831036))

(assert (not start!358466))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


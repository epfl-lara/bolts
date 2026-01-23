; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!272868 () Bool)

(assert start!272868)

(declare-fun res!1171853 () Bool)

(declare-fun e!1780519 () Bool)

(assert (=> start!272868 (=> (not res!1171853) (not e!1780519))))

(declare-fun i!1825 () Int)

(assert (=> start!272868 (= res!1171853 (>= i!1825 0))))

(assert (=> start!272868 e!1780519))

(assert (=> start!272868 true))

(declare-datatypes ((C!16784 0))(
  ( (C!16785 (val!10372 Int)) )
))
(declare-datatypes ((List!33039 0))(
  ( (Nil!32915) (Cons!32915 (h!38335 C!16784) (t!230043 List!33039)) )
))
(declare-datatypes ((IArray!20417 0))(
  ( (IArray!20418 (innerList!10266 List!33039)) )
))
(declare-datatypes ((Conc!10206 0))(
  ( (Node!10206 (left!24840 Conc!10206) (right!25170 Conc!10206) (csize!20642 Int) (cheight!10417 Int)) (Leaf!15549 (xs!13318 IArray!20417) (csize!20643 Int)) (Empty!10206) )
))
(declare-datatypes ((BalanceConc!20050 0))(
  ( (BalanceConc!20051 (c!456464 Conc!10206)) )
))
(declare-fun input!3732 () BalanceConc!20050)

(declare-fun e!1780518 () Bool)

(declare-fun inv!44769 (BalanceConc!20050) Bool)

(assert (=> start!272868 (and (inv!44769 input!3732) e!1780518)))

(declare-fun b!2815645 () Bool)

(declare-fun e!1780517 () Bool)

(assert (=> b!2815645 (= e!1780519 e!1780517)))

(declare-fun res!1171854 () Bool)

(assert (=> b!2815645 (=> (not res!1171854) (not e!1780517))))

(declare-fun lt!1005743 () Int)

(assert (=> b!2815645 (= res!1171854 (and (<= i!1825 lt!1005743) (not (= i!1825 lt!1005743))))))

(declare-fun size!25662 (BalanceConc!20050) Int)

(assert (=> b!2815645 (= lt!1005743 (size!25662 input!3732))))

(declare-fun b!2815646 () Bool)

(assert (=> b!2815646 (= e!1780517 (and (>= (+ 1 i!1825) 0) (<= (+ 1 i!1825) lt!1005743) (>= (- lt!1005743 (+ 1 i!1825)) (- lt!1005743 i!1825))))))

(declare-fun lt!1005742 () C!16784)

(declare-fun apply!7691 (BalanceConc!20050 Int) C!16784)

(assert (=> b!2815646 (= lt!1005742 (apply!7691 input!3732 i!1825))))

(declare-fun b!2815647 () Bool)

(declare-fun tp!898868 () Bool)

(declare-fun inv!44770 (Conc!10206) Bool)

(assert (=> b!2815647 (= e!1780518 (and (inv!44770 (c!456464 input!3732)) tp!898868))))

(assert (= (and start!272868 res!1171853) b!2815645))

(assert (= (and b!2815645 res!1171854) b!2815646))

(assert (= start!272868 b!2815647))

(declare-fun m!3246625 () Bool)

(assert (=> start!272868 m!3246625))

(declare-fun m!3246627 () Bool)

(assert (=> b!2815645 m!3246627))

(declare-fun m!3246629 () Bool)

(assert (=> b!2815646 m!3246629))

(declare-fun m!3246631 () Bool)

(assert (=> b!2815647 m!3246631))

(check-sat (not b!2815645) (not b!2815647) (not b!2815646) (not start!272868))
(check-sat)

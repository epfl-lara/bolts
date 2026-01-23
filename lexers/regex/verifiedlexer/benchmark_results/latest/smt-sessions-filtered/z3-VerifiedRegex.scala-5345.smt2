; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!272992 () Bool)

(assert start!272992)

(declare-fun res!1171944 () Bool)

(declare-fun e!1780763 () Bool)

(assert (=> start!272992 (=> (not res!1171944) (not e!1780763))))

(declare-fun i!1809 () Int)

(assert (=> start!272992 (= res!1171944 (>= i!1809 0))))

(assert (=> start!272992 e!1780763))

(assert (=> start!272992 true))

(declare-datatypes ((C!16796 0))(
  ( (C!16797 (val!10378 Int)) )
))
(declare-datatypes ((List!33049 0))(
  ( (Nil!32925) (Cons!32925 (h!38345 C!16796) (t!230053 List!33049)) )
))
(declare-datatypes ((IArray!20429 0))(
  ( (IArray!20430 (innerList!10272 List!33049)) )
))
(declare-datatypes ((Conc!10212 0))(
  ( (Node!10212 (left!24857 Conc!10212) (right!25187 Conc!10212) (csize!20654 Int) (cheight!10423 Int)) (Leaf!15558 (xs!13324 IArray!20429) (csize!20655 Int)) (Empty!10212) )
))
(declare-datatypes ((BalanceConc!20062 0))(
  ( (BalanceConc!20063 (c!456560 Conc!10212)) )
))
(declare-fun input!3720 () BalanceConc!20062)

(declare-fun e!1780765 () Bool)

(declare-fun inv!44805 (BalanceConc!20062) Bool)

(assert (=> start!272992 (and (inv!44805 input!3720) e!1780765)))

(declare-fun b!2816013 () Bool)

(declare-fun e!1780764 () Bool)

(assert (=> b!2816013 (= e!1780763 e!1780764)))

(declare-fun res!1171943 () Bool)

(assert (=> b!2816013 (=> (not res!1171943) (not e!1780764))))

(declare-fun lt!1005869 () Int)

(assert (=> b!2816013 (= res!1171943 (and (<= i!1809 lt!1005869) (not (= i!1809 lt!1005869))))))

(declare-fun size!25676 (BalanceConc!20062) Int)

(assert (=> b!2816013 (= lt!1005869 (size!25676 input!3720))))

(declare-fun b!2816014 () Bool)

(assert (=> b!2816014 (= e!1780764 (>= (- lt!1005869 (+ 1 i!1809)) (- lt!1005869 i!1809)))))

(declare-fun lt!1005868 () C!16796)

(declare-fun apply!7705 (BalanceConc!20062 Int) C!16796)

(assert (=> b!2816014 (= lt!1005868 (apply!7705 input!3720 i!1809))))

(declare-fun b!2816015 () Bool)

(declare-fun tp!898994 () Bool)

(declare-fun inv!44806 (Conc!10212) Bool)

(assert (=> b!2816015 (= e!1780765 (and (inv!44806 (c!456560 input!3720)) tp!898994))))

(assert (= (and start!272992 res!1171944) b!2816013))

(assert (= (and b!2816013 res!1171943) b!2816014))

(assert (= start!272992 b!2816015))

(declare-fun m!3246993 () Bool)

(assert (=> start!272992 m!3246993))

(declare-fun m!3246995 () Bool)

(assert (=> b!2816013 m!3246995))

(declare-fun m!3246997 () Bool)

(assert (=> b!2816014 m!3246997))

(declare-fun m!3246999 () Bool)

(assert (=> b!2816015 m!3246999))

(check-sat (not b!2816013) (not b!2816015) (not start!272992) (not b!2816014))
(check-sat)

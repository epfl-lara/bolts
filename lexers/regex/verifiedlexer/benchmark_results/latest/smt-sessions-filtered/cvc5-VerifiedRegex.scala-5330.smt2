; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!272426 () Bool)

(assert start!272426)

(declare-fun res!1171094 () Bool)

(declare-fun e!1779106 () Bool)

(assert (=> start!272426 (=> (not res!1171094) (not e!1779106))))

(declare-fun i!1825 () Int)

(assert (=> start!272426 (= res!1171094 (>= i!1825 0))))

(assert (=> start!272426 e!1779106))

(assert (=> start!272426 true))

(declare-datatypes ((C!16734 0))(
  ( (C!16735 (val!10347 Int)) )
))
(declare-datatypes ((List!32998 0))(
  ( (Nil!32874) (Cons!32874 (h!38294 C!16734) (t!229972 List!32998)) )
))
(declare-datatypes ((IArray!20367 0))(
  ( (IArray!20368 (innerList!10241 List!32998)) )
))
(declare-datatypes ((Conc!10181 0))(
  ( (Node!10181 (left!24795 Conc!10181) (right!25125 Conc!10181) (csize!20592 Int) (cheight!10392 Int)) (Leaf!15512 (xs!13293 IArray!20367) (csize!20593 Int)) (Empty!10181) )
))
(declare-datatypes ((BalanceConc!20000 0))(
  ( (BalanceConc!20001 (c!455873 Conc!10181)) )
))
(declare-fun input!3732 () BalanceConc!20000)

(declare-fun e!1779105 () Bool)

(declare-fun inv!44643 (BalanceConc!20000) Bool)

(assert (=> start!272426 (and (inv!44643 input!3732) e!1779105)))

(declare-fun b!2813312 () Bool)

(declare-fun e!1779104 () Bool)

(assert (=> b!2813312 (= e!1779106 e!1779104)))

(declare-fun res!1171093 () Bool)

(assert (=> b!2813312 (=> (not res!1171093) (not e!1779104))))

(declare-fun lt!1005045 () Int)

(assert (=> b!2813312 (= res!1171093 (and (<= i!1825 lt!1005045) (= i!1825 lt!1005045)))))

(declare-fun size!25617 (BalanceConc!20000) Int)

(assert (=> b!2813312 (= lt!1005045 (size!25617 input!3732))))

(declare-fun b!2813313 () Bool)

(assert (=> b!2813313 (= e!1779104 false)))

(declare-fun lt!1005044 () List!32998)

(declare-fun dropList!979 (BalanceConc!20000 Int) List!32998)

(assert (=> b!2813313 (= lt!1005044 (dropList!979 input!3732 i!1825))))

(declare-fun b!2813314 () Bool)

(declare-fun tp!898323 () Bool)

(declare-fun inv!44644 (Conc!10181) Bool)

(assert (=> b!2813314 (= e!1779105 (and (inv!44644 (c!455873 input!3732)) tp!898323))))

(assert (= (and start!272426 res!1171094) b!2813312))

(assert (= (and b!2813312 res!1171093) b!2813313))

(assert (= start!272426 b!2813314))

(declare-fun m!3243689 () Bool)

(assert (=> start!272426 m!3243689))

(declare-fun m!3243691 () Bool)

(assert (=> b!2813312 m!3243691))

(declare-fun m!3243693 () Bool)

(assert (=> b!2813313 m!3243693))

(declare-fun m!3243695 () Bool)

(assert (=> b!2813314 m!3243695))

(push 1)

(assert (not b!2813313))

(assert (not start!272426))

(assert (not b!2813312))

(assert (not b!2813314))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


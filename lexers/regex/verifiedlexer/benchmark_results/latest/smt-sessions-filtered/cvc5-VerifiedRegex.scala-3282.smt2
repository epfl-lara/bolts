; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!188746 () Bool)

(assert start!188746)

(declare-fun res!841605 () Bool)

(declare-fun e!1202543 () Bool)

(assert (=> start!188746 (=> (not res!841605) (not e!1202543))))

(declare-fun i!1815 () Int)

(assert (=> start!188746 (= res!841605 (>= i!1815 0))))

(assert (=> start!188746 e!1202543))

(assert (=> start!188746 true))

(declare-datatypes ((C!10422 0))(
  ( (C!10423 (val!6099 Int)) )
))
(declare-datatypes ((List!21038 0))(
  ( (Nil!20956) (Cons!20956 (h!26357 C!10422) (t!175037 List!21038)) )
))
(declare-datatypes ((IArray!13939 0))(
  ( (IArray!13940 (innerList!7027 List!21038)) )
))
(declare-datatypes ((Conc!6967 0))(
  ( (Node!6967 (left!16845 Conc!6967) (right!17175 Conc!6967) (csize!14164 Int) (cheight!7178 Int)) (Leaf!10250 (xs!9857 IArray!13939) (csize!14165 Int)) (Empty!6967) )
))
(declare-datatypes ((BalanceConc!13750 0))(
  ( (BalanceConc!13751 (c!308004 Conc!6967)) )
))
(declare-fun input!3724 () BalanceConc!13750)

(declare-fun e!1202542 () Bool)

(declare-fun inv!27919 (BalanceConc!13750) Bool)

(assert (=> start!188746 (and (inv!27919 input!3724) e!1202542)))

(declare-fun b!1885150 () Bool)

(declare-fun lt!723280 () Int)

(assert (=> b!1885150 (= e!1202543 (and (<= i!1815 lt!723280) (not (= i!1815 lt!723280)) (or (> 0 i!1815) (>= i!1815 lt!723280))))))

(declare-fun size!16644 (BalanceConc!13750) Int)

(assert (=> b!1885150 (= lt!723280 (size!16644 input!3724))))

(declare-fun b!1885151 () Bool)

(declare-fun tp!537018 () Bool)

(declare-fun inv!27920 (Conc!6967) Bool)

(assert (=> b!1885151 (= e!1202542 (and (inv!27920 (c!308004 input!3724)) tp!537018))))

(assert (= (and start!188746 res!841605) b!1885150))

(assert (= start!188746 b!1885151))

(declare-fun m!2318249 () Bool)

(assert (=> start!188746 m!2318249))

(declare-fun m!2318251 () Bool)

(assert (=> b!1885150 m!2318251))

(declare-fun m!2318253 () Bool)

(assert (=> b!1885151 m!2318253))

(push 1)

(assert (not b!1885150))

(assert (not b!1885151))

(assert (not start!188746))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


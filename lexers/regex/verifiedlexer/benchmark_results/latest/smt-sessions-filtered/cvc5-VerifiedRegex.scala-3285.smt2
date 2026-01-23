; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!188758 () Bool)

(assert start!188758)

(declare-fun res!841635 () Bool)

(declare-fun e!1202795 () Bool)

(assert (=> start!188758 (=> (not res!841635) (not e!1202795))))

(declare-fun i!1815 () Int)

(assert (=> start!188758 (= res!841635 (>= i!1815 0))))

(assert (=> start!188758 e!1202795))

(assert (=> start!188758 true))

(declare-datatypes ((C!10434 0))(
  ( (C!10435 (val!6105 Int)) )
))
(declare-datatypes ((List!21055 0))(
  ( (Nil!20973) (Cons!20973 (h!26374 C!10434) (t!175054 List!21055)) )
))
(declare-datatypes ((IArray!13949 0))(
  ( (IArray!13950 (innerList!7032 List!21055)) )
))
(declare-datatypes ((Conc!6972 0))(
  ( (Node!6972 (left!16853 Conc!6972) (right!17183 Conc!6972) (csize!14174 Int) (cheight!7183 Int)) (Leaf!10258 (xs!9862 IArray!13949) (csize!14175 Int)) (Empty!6972) )
))
(declare-datatypes ((BalanceConc!13760 0))(
  ( (BalanceConc!13761 (c!308013 Conc!6972)) )
))
(declare-fun input!3724 () BalanceConc!13760)

(declare-fun e!1202794 () Bool)

(declare-fun inv!27943 (BalanceConc!13760) Bool)

(assert (=> start!188758 (and (inv!27943 input!3724) e!1202794)))

(declare-fun b!1885378 () Bool)

(declare-fun lt!723340 () Int)

(assert (=> b!1885378 (= e!1202795 (and (<= i!1815 lt!723340) (< (- lt!723340 i!1815) 0)))))

(declare-fun size!16660 (BalanceConc!13760) Int)

(assert (=> b!1885378 (= lt!723340 (size!16660 input!3724))))

(declare-fun b!1885379 () Bool)

(declare-fun tp!537228 () Bool)

(declare-fun inv!27944 (Conc!6972) Bool)

(assert (=> b!1885379 (= e!1202794 (and (inv!27944 (c!308013 input!3724)) tp!537228))))

(assert (= (and start!188758 res!841635) b!1885378))

(assert (= start!188758 b!1885379))

(declare-fun m!2318377 () Bool)

(assert (=> start!188758 m!2318377))

(declare-fun m!2318379 () Bool)

(assert (=> b!1885378 m!2318379))

(declare-fun m!2318381 () Bool)

(assert (=> b!1885379 m!2318381))

(push 1)

(assert (not start!188758))

(assert (not b!1885379))

(assert (not b!1885378))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


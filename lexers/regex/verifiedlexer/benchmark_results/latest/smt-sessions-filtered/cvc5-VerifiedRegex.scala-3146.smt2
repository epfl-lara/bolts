; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!184908 () Bool)

(assert start!184908)

(declare-fun res!831251 () Bool)

(declare-fun e!1184178 () Bool)

(assert (=> start!184908 (=> (not res!831251) (not e!1184178))))

(declare-fun i!1029 () Int)

(assert (=> start!184908 (= res!831251 (<= 0 i!1029))))

(assert (=> start!184908 e!1184178))

(assert (=> start!184908 true))

(declare-fun e!1184179 () Bool)

(assert (=> start!184908 e!1184179))

(declare-fun b!1852671 () Bool)

(declare-fun e!1184177 () Bool)

(assert (=> b!1852671 (= e!1184178 (not e!1184177))))

(declare-fun res!831252 () Bool)

(assert (=> b!1852671 (=> res!831252 e!1184177)))

(declare-fun lt!716280 () Int)

(assert (=> b!1852671 (= res!831252 (>= i!1029 lt!716280))))

(declare-datatypes ((Conc!6797 0) (Object!3868 0) (IArray!13599 0) (BalanceConc!13519 0) (List!20625 0))(
  ( (Node!6797 (left!16485 Conc!6797) (right!16815 Conc!6797) (csize!13824 Int) (cheight!7008 Int)) (Leaf!9944 (xs!9673 IArray!13599) (csize!13825 Int)) (Empty!6797) )
  ( (BalanceConc!13518 (value!115418 BalanceConc!13519)) (List!20624 (value!115419 List!20625)) (Character!73 (value!115420 (_ BitVec 16))) (Open!73 (value!115421 Int)) )
  ( (IArray!13600 (innerList!6857 List!20625)) )
  ( (BalanceConc!13520 (c!302204 Conc!6797)) )
  ( (Nil!20550) (Cons!20550 (h!25951 Object!3868) (t!172439 List!20625)) )
))
(declare-datatypes ((T!32452 0))(
  ( (T!32453 (val!5845 Int)) )
))
(declare-datatypes ((List!20626 0))(
  ( (Nil!20551) (Cons!20551 (h!25952 T!32452) (t!172440 List!20626)) )
))
(declare-datatypes ((Vector!150 0))(
  ( (Vector!151 (underlying!4005 Object!3868) (overflowing!132 List!20626)) )
))
(declare-fun v!5955 () Vector!150)

(declare-fun size!16229 (List!20626) Int)

(declare-fun list!8327 (Vector!150) List!20626)

(assert (=> b!1852671 (= lt!716280 (size!16229 (list!8327 v!5955)))))

(declare-fun size!16230 (Vector!150) Int)

(assert (=> b!1852671 (= lt!716280 (size!16230 v!5955))))

(declare-fun b!1852672 () Bool)

(assert (=> b!1852672 (= e!1184177 true)))

(declare-datatypes ((Unit!35162 0))(
  ( (Unit!35163) )
))
(declare-fun lt!716279 () Unit!35162)

(declare-fun choose!11653 (Vector!150 Int) Unit!35162)

(assert (=> b!1852672 (= lt!716279 (choose!11653 v!5955 i!1029))))

(declare-fun b!1852673 () Bool)

(declare-fun tp!525192 () Bool)

(declare-fun tp!525191 () Bool)

(assert (=> b!1852673 (= e!1184179 (and tp!525192 tp!525191))))

(assert (= (and start!184908 res!831251) b!1852671))

(assert (= (and b!1852671 (not res!831252)) b!1852672))

(assert (= start!184908 b!1852673))

(declare-fun m!2279509 () Bool)

(assert (=> b!1852671 m!2279509))

(assert (=> b!1852671 m!2279509))

(declare-fun m!2279511 () Bool)

(assert (=> b!1852671 m!2279511))

(declare-fun m!2279513 () Bool)

(assert (=> b!1852671 m!2279513))

(declare-fun m!2279515 () Bool)

(assert (=> b!1852672 m!2279515))

(push 1)

(assert (not b!1852671))

(assert (not b!1852672))

(assert (not b!1852673))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


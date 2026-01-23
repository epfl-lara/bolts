; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!228098 () Bool)

(assert start!228098)

(declare-fun res!988505 () Bool)

(declare-fun e!1481979 () Bool)

(assert (=> start!228098 (=> (not res!988505) (not e!1481979))))

(declare-datatypes ((C!13674 0))(
  ( (C!13675 (val!7893 Int)) )
))
(declare-datatypes ((List!27624 0))(
  ( (Nil!27526) (Cons!27526 (h!32927 C!13674) (t!207216 List!27624)) )
))
(declare-datatypes ((IArray!17989 0))(
  ( (IArray!17990 (innerList!9052 List!27624)) )
))
(declare-datatypes ((Conc!8992 0))(
  ( (Node!8992 (left!20882 Conc!8992) (right!21212 Conc!8992) (csize!18214 Int) (cheight!9203 Int)) (Leaf!13195 (xs!11934 IArray!17989) (csize!18215 Int)) (Empty!8992) )
))
(declare-datatypes ((BalanceConc!17716 0))(
  ( (BalanceConc!17717 (c!366666 Conc!8992)) )
))
(declare-fun input!5503 () BalanceConc!17716)

(declare-fun totalInput!803 () BalanceConc!17716)

(declare-fun isSuffix!792 (List!27624 List!27624) Bool)

(declare-fun list!10904 (BalanceConc!17716) List!27624)

(assert (=> start!228098 (= res!988505 (isSuffix!792 (list!10904 input!5503) (list!10904 totalInput!803)))))

(assert (=> start!228098 e!1481979))

(declare-fun e!1481978 () Bool)

(declare-fun inv!37245 (BalanceConc!17716) Bool)

(assert (=> start!228098 (and (inv!37245 input!5503) e!1481978)))

(declare-fun e!1481980 () Bool)

(assert (=> start!228098 (and (inv!37245 totalInput!803) e!1481980)))

(declare-fun b!2312380 () Bool)

(assert (=> b!2312380 (= e!1481979 false)))

(declare-fun lt!857653 () Int)

(declare-fun size!21735 (BalanceConc!17716) Int)

(assert (=> b!2312380 (= lt!857653 (size!21735 input!5503))))

(declare-fun lt!857654 () Int)

(assert (=> b!2312380 (= lt!857654 (size!21735 totalInput!803))))

(declare-fun b!2312381 () Bool)

(declare-fun tp!733549 () Bool)

(declare-fun inv!37246 (Conc!8992) Bool)

(assert (=> b!2312381 (= e!1481978 (and (inv!37246 (c!366666 input!5503)) tp!733549))))

(declare-fun b!2312382 () Bool)

(declare-fun tp!733548 () Bool)

(assert (=> b!2312382 (= e!1481980 (and (inv!37246 (c!366666 totalInput!803)) tp!733548))))

(assert (= (and start!228098 res!988505) b!2312380))

(assert (= start!228098 b!2312381))

(assert (= start!228098 b!2312382))

(declare-fun m!2739857 () Bool)

(assert (=> start!228098 m!2739857))

(declare-fun m!2739859 () Bool)

(assert (=> start!228098 m!2739859))

(declare-fun m!2739861 () Bool)

(assert (=> start!228098 m!2739861))

(assert (=> start!228098 m!2739857))

(declare-fun m!2739863 () Bool)

(assert (=> start!228098 m!2739863))

(declare-fun m!2739865 () Bool)

(assert (=> start!228098 m!2739865))

(assert (=> start!228098 m!2739861))

(declare-fun m!2739867 () Bool)

(assert (=> b!2312380 m!2739867))

(declare-fun m!2739869 () Bool)

(assert (=> b!2312380 m!2739869))

(declare-fun m!2739871 () Bool)

(assert (=> b!2312381 m!2739871))

(declare-fun m!2739873 () Bool)

(assert (=> b!2312382 m!2739873))

(push 1)

(assert (not b!2312382))

(assert (not start!228098))

(assert (not b!2312381))

(assert (not b!2312380))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!95428 () Bool)

(assert start!95428)

(declare-fun e!700833 () Bool)

(assert (=> start!95428 e!700833))

(declare-fun res!490108 () Bool)

(assert (=> start!95428 (=> (not res!490108) (not e!700833))))

(declare-datatypes ((IArray!6805 0) (Conc!3400 0) (List!10778 0) (BalanceConc!6817 0) (Object!1940 0))(
  ( (IArray!6806 (innerList!3460 List!10778)) )
  ( (Node!3400 (left!9361 Conc!3400) (right!9691 Conc!3400) (csize!7030 Int) (cheight!3611 Int)) (Leaf!5336 (xs!6093 IArray!6805) (csize!7031 Int)) (Empty!3400) )
  ( (Nil!10759) (Cons!10759 (h!16160 Object!1940) (t!105339 List!10778)) )
  ( (BalanceConc!6818 (c!187788 Conc!3400)) )
  ( (BalanceConc!6816 (value!60864 BalanceConc!6817)) (List!10777 (value!60865 List!10778)) (Character!17 (value!60866 (_ BitVec 16))) (Open!17 (value!60867 Int)) )
))
(declare-datatypes ((T!19882 0))(
  ( (T!19883 (val!3571 Int)) )
))
(declare-datatypes ((List!10779 0))(
  ( (Nil!10760) (Cons!10760 (h!16161 T!19882) (t!105340 List!10779)) )
))
(declare-datatypes ((Vector!38 0))(
  ( (Vector!39 (underlying!2711 Object!1940) (overflowing!76 List!10779)) )
))
(declare-fun thiss!9530 () Vector!38)

(declare-fun size!8369 (Vector!38) Int)

(declare-fun size!8370 (List!10779) Int)

(declare-fun list!3885 (Vector!38) List!10779)

(assert (=> start!95428 (= res!490108 (= (size!8369 thiss!9530) (size!8370 (list!3885 thiss!9530))))))

(assert (=> start!95428 (not true)))

(declare-fun e!700834 () Bool)

(assert (=> start!95428 e!700834))

(declare-fun e!700835 () Bool)

(assert (=> start!95428 e!700835))

(declare-fun b!1105818 () Bool)

(declare-fun other!25 () Vector!38)

(assert (=> b!1105818 (= e!700833 (= (size!8369 other!25) (size!8370 (list!3885 other!25))))))

(declare-fun b!1105819 () Bool)

(declare-fun tp!327389 () Bool)

(declare-fun tp!327391 () Bool)

(assert (=> b!1105819 (= e!700834 (and tp!327389 tp!327391))))

(declare-fun b!1105820 () Bool)

(declare-fun tp!327392 () Bool)

(declare-fun tp!327390 () Bool)

(assert (=> b!1105820 (= e!700835 (and tp!327392 tp!327390))))

(assert (= (and start!95428 res!490108) b!1105818))

(assert (= start!95428 b!1105819))

(assert (= start!95428 b!1105820))

(declare-fun m!1263395 () Bool)

(assert (=> start!95428 m!1263395))

(declare-fun m!1263397 () Bool)

(assert (=> start!95428 m!1263397))

(assert (=> start!95428 m!1263397))

(declare-fun m!1263399 () Bool)

(assert (=> start!95428 m!1263399))

(declare-fun m!1263401 () Bool)

(assert (=> b!1105818 m!1263401))

(declare-fun m!1263403 () Bool)

(assert (=> b!1105818 m!1263403))

(assert (=> b!1105818 m!1263403))

(declare-fun m!1263405 () Bool)

(assert (=> b!1105818 m!1263405))

(push 1)

(assert (not start!95428))

(assert (not b!1105818))

(assert (not b!1105819))

(assert (not b!1105820))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


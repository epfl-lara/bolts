; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!228288 () Bool)

(assert start!228288)

(declare-fun res!988933 () Bool)

(declare-fun e!1483392 () Bool)

(assert (=> start!228288 (=> (not res!988933) (not e!1483392))))

(declare-fun from!1022 () Int)

(assert (=> start!228288 (= res!988933 (>= from!1022 0))))

(assert (=> start!228288 e!1483392))

(assert (=> start!228288 true))

(declare-datatypes ((C!13714 0))(
  ( (C!13715 (val!7913 Int)) )
))
(declare-datatypes ((List!27676 0))(
  ( (Nil!27578) (Cons!27578 (h!32979 C!13714) (t!207276 List!27676)) )
))
(declare-datatypes ((IArray!18021 0))(
  ( (IArray!18022 (innerList!9068 List!27676)) )
))
(declare-datatypes ((Conc!9008 0))(
  ( (Node!9008 (left!20908 Conc!9008) (right!21238 Conc!9008) (csize!18246 Int) (cheight!9219 Int)) (Leaf!13221 (xs!11950 IArray!18021) (csize!18247 Int)) (Empty!9008) )
))
(declare-datatypes ((BalanceConc!17748 0))(
  ( (BalanceConc!17749 (c!366813 Conc!9008)) )
))
(declare-fun totalInput!830 () BalanceConc!17748)

(declare-fun e!1483391 () Bool)

(declare-fun inv!37346 (BalanceConc!17748) Bool)

(assert (=> start!228288 (and (inv!37346 totalInput!830) e!1483391)))

(declare-fun b!2314060 () Bool)

(declare-fun totalInputSize!275 () Int)

(declare-fun lt!857990 () Int)

(assert (=> b!2314060 (= e!1483392 (and (<= from!1022 lt!857990) (= totalInputSize!275 lt!857990) (< (- lt!857990 from!1022) 0)))))

(declare-fun size!21793 (BalanceConc!17748) Int)

(assert (=> b!2314060 (= lt!857990 (size!21793 totalInput!830))))

(declare-fun b!2314061 () Bool)

(declare-fun tp!734712 () Bool)

(declare-fun inv!37347 (Conc!9008) Bool)

(assert (=> b!2314061 (= e!1483391 (and (inv!37347 (c!366813 totalInput!830)) tp!734712))))

(assert (= (and start!228288 res!988933) b!2314060))

(assert (= start!228288 b!2314061))

(declare-fun m!2741185 () Bool)

(assert (=> start!228288 m!2741185))

(declare-fun m!2741187 () Bool)

(assert (=> b!2314060 m!2741187))

(declare-fun m!2741189 () Bool)

(assert (=> b!2314061 m!2741189))

(push 1)

(assert (not b!2314061))

(assert (not b!2314060))

(assert (not start!228288))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


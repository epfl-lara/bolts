; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75054 () Bool)

(assert start!75054)

(assert (=> start!75054 false))

(declare-datatypes ((B!1224 0))(
  ( (B!1225 (val!8918 Int)) )
))
(declare-datatypes ((tuple2!11856 0))(
  ( (tuple2!11857 (_1!5938 (_ BitVec 64)) (_2!5938 B!1224)) )
))
(declare-datatypes ((List!17718 0))(
  ( (Nil!17715) (Cons!17714 (h!18845 tuple2!11856) (t!25003 List!17718)) )
))
(declare-datatypes ((ListLongMap!10639 0))(
  ( (ListLongMap!10640 (toList!5335 List!17718)) )
))
(declare-fun lm!210 () ListLongMap!10639)

(declare-fun e!492452 () Bool)

(declare-fun inv!29355 (ListLongMap!10639) Bool)

(assert (=> start!75054 (and (inv!29355 lm!210) e!492452)))

(declare-fun b!884824 () Bool)

(declare-fun tp!54192 () Bool)

(assert (=> b!884824 (= e!492452 tp!54192)))

(assert (= start!75054 b!884824))

(declare-fun m!825189 () Bool)

(assert (=> start!75054 m!825189))

(push 1)

(assert (not start!75054))

(assert (not b!884824))

(check-sat)

(pop 1)


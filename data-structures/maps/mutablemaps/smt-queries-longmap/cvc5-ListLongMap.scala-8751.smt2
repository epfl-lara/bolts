; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106240 () Bool)

(assert start!106240)

(declare-fun res!842116 () Bool)

(declare-fun e!719994 () Bool)

(assert (=> start!106240 (=> (not res!842116) (not e!719994))))

(declare-datatypes ((B!1898 0))(
  ( (B!1899 (val!16284 Int)) )
))
(declare-datatypes ((tuple2!21236 0))(
  ( (tuple2!21237 (_1!10628 (_ BitVec 64)) (_2!10628 B!1898)) )
))
(declare-datatypes ((List!28451 0))(
  ( (Nil!28448) (Cons!28447 (h!29656 tuple2!21236) (t!41979 List!28451)) )
))
(declare-datatypes ((ListLongMap!19121 0))(
  ( (ListLongMap!19122 (toList!9576 List!28451)) )
))
(declare-fun lm!212 () ListLongMap!19121)

(declare-fun a1!67 () (_ BitVec 64))

(declare-fun contains!7634 (ListLongMap!19121 (_ BitVec 64)) Bool)

(assert (=> start!106240 (= res!842116 (not (contains!7634 lm!212 a1!67)))))

(assert (=> start!106240 e!719994))

(declare-fun e!719995 () Bool)

(declare-fun inv!44056 (ListLongMap!19121) Bool)

(assert (=> start!106240 (and (inv!44056 lm!212) e!719995)))

(assert (=> start!106240 true))

(declare-fun b!1264369 () Bool)

(assert (=> b!1264369 (= e!719994 false)))

(declare-fun b!1264370 () Bool)

(declare-fun tp!96186 () Bool)

(assert (=> b!1264370 (= e!719995 tp!96186)))

(assert (= (and start!106240 res!842116) b!1264369))

(assert (= start!106240 b!1264370))

(declare-fun m!1164993 () Bool)

(assert (=> start!106240 m!1164993))

(declare-fun m!1164995 () Bool)

(assert (=> start!106240 m!1164995))

(push 1)

(assert (not start!106240))

(assert (not b!1264370))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


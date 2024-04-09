; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133446 () Bool)

(assert start!133446)

(declare-fun b!1559528 () Bool)

(declare-fun e!869010 () Bool)

(declare-fun tp_is_empty!38497 () Bool)

(assert (=> b!1559528 (= e!869010 tp_is_empty!38497)))

(declare-fun b!1559529 () Bool)

(declare-fun res!1066544 () Bool)

(declare-fun e!869011 () Bool)

(assert (=> b!1559529 (=> (not res!1066544) (not e!869011))))

(declare-datatypes ((V!59537 0))(
  ( (V!59538 (val!19332 Int)) )
))
(declare-datatypes ((tuple2!25142 0))(
  ( (tuple2!25143 (_1!12581 (_ BitVec 64)) (_2!12581 V!59537)) )
))
(declare-datatypes ((List!36500 0))(
  ( (Nil!36497) (Cons!36496 (h!37943 tuple2!25142) (t!51240 List!36500)) )
))
(declare-datatypes ((ListLongMap!22589 0))(
  ( (ListLongMap!22590 (toList!11310 List!36500)) )
))
(declare-fun contains!10230 (ListLongMap!22589 (_ BitVec 64)) Bool)

(assert (=> b!1559529 (= res!1066544 (not (contains!10230 (ListLongMap!22590 Nil!36497) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1559530 () Bool)

(declare-fun e!869008 () Bool)

(declare-fun e!869012 () Bool)

(declare-fun mapRes!59121 () Bool)

(assert (=> b!1559530 (= e!869008 (and e!869012 mapRes!59121))))

(declare-fun condMapEmpty!59121 () Bool)

(declare-datatypes ((ValueCell!18218 0))(
  ( (ValueCellFull!18218 (v!22081 V!59537)) (EmptyCell!18218) )
))
(declare-datatypes ((array!103675 0))(
  ( (array!103676 (arr!50025 (Array (_ BitVec 32) ValueCell!18218)) (size!50576 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103675)

(declare-fun mapDefault!59121 () ValueCell!18218)


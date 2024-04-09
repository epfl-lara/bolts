; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78752 () Bool)

(assert start!78752)

(declare-fun b_free!16937 () Bool)

(declare-fun b_next!16937 () Bool)

(assert (=> start!78752 (= b_free!16937 (not b_next!16937))))

(declare-fun tp!59252 () Bool)

(declare-fun b_and!27629 () Bool)

(assert (=> start!78752 (= tp!59252 b_and!27629)))

(declare-fun b!918139 () Bool)

(declare-fun res!619135 () Bool)

(declare-fun e!515450 () Bool)

(assert (=> b!918139 (=> (not res!619135) (not e!515450))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!54882 0))(
  ( (array!54883 (arr!26382 (Array (_ BitVec 32) (_ BitVec 64))) (size!26842 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54882)

(assert (=> b!918139 (= res!619135 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26842 _keys!1487))))))

(declare-fun b!918140 () Bool)

(declare-fun res!619136 () Bool)

(declare-fun e!515445 () Bool)

(assert (=> b!918140 (=> (not res!619136) (not e!515445))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!918140 (= res!619136 (validKeyInArray!0 k!1099))))

(declare-fun b!918141 () Bool)

(assert (=> b!918141 (= e!515450 e!515445)))

(declare-fun res!619133 () Bool)

(assert (=> b!918141 (=> (not res!619133) (not e!515445))))

(declare-datatypes ((V!30891 0))(
  ( (V!30892 (val!9773 Int)) )
))
(declare-datatypes ((tuple2!12772 0))(
  ( (tuple2!12773 (_1!6396 (_ BitVec 64)) (_2!6396 V!30891)) )
))
(declare-datatypes ((List!18618 0))(
  ( (Nil!18615) (Cons!18614 (h!19760 tuple2!12772) (t!26293 List!18618)) )
))
(declare-datatypes ((ListLongMap!11483 0))(
  ( (ListLongMap!11484 (toList!5757 List!18618)) )
))
(declare-fun lt!412145 () ListLongMap!11483)

(declare-fun contains!4771 (ListLongMap!11483 (_ BitVec 64)) Bool)

(assert (=> b!918141 (= res!619133 (contains!4771 lt!412145 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9241 0))(
  ( (ValueCellFull!9241 (v!12291 V!30891)) (EmptyCell!9241) )
))
(declare-datatypes ((array!54884 0))(
  ( (array!54885 (arr!26383 (Array (_ BitVec 32) ValueCell!9241)) (size!26843 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54884)

(declare-fun defaultEntry!1235 () Int)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!30891)

(declare-fun minValue!1173 () V!30891)

(declare-fun getCurrentListMap!2983 (array!54882 array!54884 (_ BitVec 32) (_ BitVec 32) V!30891 V!30891 (_ BitVec 32) Int) ListLongMap!11483)

(assert (=> b!918141 (= lt!412145 (getCurrentListMap!2983 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!918142 () Bool)

(declare-fun res!619141 () Bool)

(assert (=> b!918142 (=> (not res!619141) (not e!515445))))

(assert (=> b!918142 (= res!619141 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!918143 () Bool)

(declare-fun e!515448 () Bool)

(declare-fun e!515446 () Bool)

(declare-fun mapRes!30924 () Bool)

(assert (=> b!918143 (= e!515448 (and e!515446 mapRes!30924))))

(declare-fun condMapEmpty!30924 () Bool)

(declare-fun mapDefault!30924 () ValueCell!9241)


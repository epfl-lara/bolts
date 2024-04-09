; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78584 () Bool)

(assert start!78584)

(declare-fun b_free!16769 () Bool)

(declare-fun b_next!16769 () Bool)

(assert (=> start!78584 (= b_free!16769 (not b_next!16769))))

(declare-fun tp!58748 () Bool)

(declare-fun b_and!27409 () Bool)

(assert (=> start!78584 (= tp!58748 b_and!27409)))

(declare-fun b!915571 () Bool)

(declare-fun res!617374 () Bool)

(declare-fun e!513938 () Bool)

(assert (=> b!915571 (=> (not res!617374) (not e!513938))))

(declare-datatypes ((array!54558 0))(
  ( (array!54559 (arr!26220 (Array (_ BitVec 32) (_ BitVec 64))) (size!26680 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54558)

(declare-datatypes ((List!18493 0))(
  ( (Nil!18490) (Cons!18489 (h!19635 (_ BitVec 64)) (t!26114 List!18493)) )
))
(declare-fun arrayNoDuplicates!0 (array!54558 (_ BitVec 32) List!18493) Bool)

(assert (=> b!915571 (= res!617374 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18490))))

(declare-fun mapIsEmpty!30672 () Bool)

(declare-fun mapRes!30672 () Bool)

(assert (=> mapIsEmpty!30672 mapRes!30672))

(declare-fun b!915572 () Bool)

(assert (=> b!915572 (= e!513938 false)))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun lt!411651 () Bool)

(declare-datatypes ((V!30667 0))(
  ( (V!30668 (val!9689 Int)) )
))
(declare-datatypes ((ValueCell!9157 0))(
  ( (ValueCellFull!9157 (v!12207 V!30667)) (EmptyCell!9157) )
))
(declare-datatypes ((array!54560 0))(
  ( (array!54561 (arr!26221 (Array (_ BitVec 32) ValueCell!9157)) (size!26681 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54560)

(declare-fun defaultEntry!1235 () Int)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun zeroValue!1173 () V!30667)

(declare-fun minValue!1173 () V!30667)

(declare-datatypes ((tuple2!12634 0))(
  ( (tuple2!12635 (_1!6327 (_ BitVec 64)) (_2!6327 V!30667)) )
))
(declare-datatypes ((List!18494 0))(
  ( (Nil!18491) (Cons!18490 (h!19636 tuple2!12634) (t!26115 List!18494)) )
))
(declare-datatypes ((ListLongMap!11345 0))(
  ( (ListLongMap!11346 (toList!5688 List!18494)) )
))
(declare-fun contains!4708 (ListLongMap!11345 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2917 (array!54558 array!54560 (_ BitVec 32) (_ BitVec 32) V!30667 V!30667 (_ BitVec 32) Int) ListLongMap!11345)

(assert (=> b!915572 (= lt!411651 (contains!4708 (getCurrentListMap!2917 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) k!1099))))

(declare-fun res!617378 () Bool)

(assert (=> start!78584 (=> (not res!617378) (not e!513938))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78584 (= res!617378 (validMask!0 mask!1881))))

(assert (=> start!78584 e!513938))

(assert (=> start!78584 true))

(declare-fun e!513935 () Bool)

(declare-fun array_inv!20452 (array!54560) Bool)

(assert (=> start!78584 (and (array_inv!20452 _values!1231) e!513935)))

(assert (=> start!78584 tp!58748))

(declare-fun array_inv!20453 (array!54558) Bool)

(assert (=> start!78584 (array_inv!20453 _keys!1487)))

(declare-fun tp_is_empty!19277 () Bool)

(assert (=> start!78584 tp_is_empty!19277))

(declare-fun b!915573 () Bool)

(declare-fun res!617375 () Bool)

(assert (=> b!915573 (=> (not res!617375) (not e!513938))))

(assert (=> b!915573 (= res!617375 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26680 _keys!1487))))))

(declare-fun b!915574 () Bool)

(declare-fun e!513939 () Bool)

(assert (=> b!915574 (= e!513939 tp_is_empty!19277)))

(declare-fun b!915575 () Bool)

(declare-fun e!513937 () Bool)

(assert (=> b!915575 (= e!513935 (and e!513937 mapRes!30672))))

(declare-fun condMapEmpty!30672 () Bool)

(declare-fun mapDefault!30672 () ValueCell!9157)


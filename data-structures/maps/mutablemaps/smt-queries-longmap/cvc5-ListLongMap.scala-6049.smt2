; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78242 () Bool)

(assert start!78242)

(declare-fun b_free!16705 () Bool)

(declare-fun b_next!16705 () Bool)

(assert (=> start!78242 (= b_free!16705 (not b_next!16705))))

(declare-fun tp!58392 () Bool)

(declare-fun b_and!27299 () Bool)

(assert (=> start!78242 (= tp!58392 b_and!27299)))

(declare-fun b!912683 () Bool)

(declare-fun e!511974 () Bool)

(declare-fun tp_is_empty!19123 () Bool)

(assert (=> b!912683 (= e!511974 tp_is_empty!19123)))

(declare-fun mapIsEmpty!30412 () Bool)

(declare-fun mapRes!30412 () Bool)

(assert (=> mapIsEmpty!30412 mapRes!30412))

(declare-fun b!912684 () Bool)

(declare-fun res!615792 () Bool)

(declare-fun e!511973 () Bool)

(assert (=> b!912684 (=> (not res!615792) (not e!511973))))

(declare-datatypes ((V!30463 0))(
  ( (V!30464 (val!9612 Int)) )
))
(declare-datatypes ((ValueCell!9080 0))(
  ( (ValueCellFull!9080 (v!12123 V!30463)) (EmptyCell!9080) )
))
(declare-datatypes ((array!54248 0))(
  ( (array!54249 (arr!26074 (Array (_ BitVec 32) ValueCell!9080)) (size!26534 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54248)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30463)

(declare-datatypes ((array!54250 0))(
  ( (array!54251 (arr!26075 (Array (_ BitVec 32) (_ BitVec 64))) (size!26535 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54250)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30463)

(declare-datatypes ((tuple2!12582 0))(
  ( (tuple2!12583 (_1!6301 (_ BitVec 64)) (_2!6301 V!30463)) )
))
(declare-datatypes ((List!18423 0))(
  ( (Nil!18420) (Cons!18419 (h!19565 tuple2!12582) (t!26020 List!18423)) )
))
(declare-datatypes ((ListLongMap!11293 0))(
  ( (ListLongMap!11294 (toList!5662 List!18423)) )
))
(declare-fun contains!4673 (ListLongMap!11293 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2892 (array!54250 array!54248 (_ BitVec 32) (_ BitVec 32) V!30463 V!30463 (_ BitVec 32) Int) ListLongMap!11293)

(assert (=> b!912684 (= res!615792 (contains!4673 (getCurrentListMap!2892 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun res!615793 () Bool)

(assert (=> start!78242 (=> (not res!615793) (not e!511973))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78242 (= res!615793 (validMask!0 mask!1756))))

(assert (=> start!78242 e!511973))

(declare-fun e!511976 () Bool)

(declare-fun array_inv!20358 (array!54248) Bool)

(assert (=> start!78242 (and (array_inv!20358 _values!1152) e!511976)))

(assert (=> start!78242 tp!58392))

(assert (=> start!78242 true))

(assert (=> start!78242 tp_is_empty!19123))

(declare-fun array_inv!20359 (array!54250) Bool)

(assert (=> start!78242 (array_inv!20359 _keys!1386)))

(declare-fun b!912685 () Bool)

(declare-fun e!511975 () Bool)

(assert (=> b!912685 (= e!511975 tp_is_empty!19123)))

(declare-fun b!912686 () Bool)

(declare-fun res!615788 () Bool)

(assert (=> b!912686 (=> (not res!615788) (not e!511973))))

(assert (=> b!912686 (= res!615788 (and (= (size!26534 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26535 _keys!1386) (size!26534 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!912687 () Bool)

(assert (=> b!912687 (= e!511973 (not true))))

(declare-fun arrayContainsKey!0 (array!54250 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!912687 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30867 0))(
  ( (Unit!30868) )
))
(declare-fun lt!410653 () Unit!30867)

(declare-fun lemmaKeyInListMapIsInArray!279 (array!54250 array!54248 (_ BitVec 32) (_ BitVec 32) V!30463 V!30463 (_ BitVec 64) Int) Unit!30867)

(assert (=> b!912687 (= lt!410653 (lemmaKeyInListMapIsInArray!279 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!912688 () Bool)

(declare-fun res!615790 () Bool)

(assert (=> b!912688 (=> (not res!615790) (not e!511973))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54250 (_ BitVec 32)) Bool)

(assert (=> b!912688 (= res!615790 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!912689 () Bool)

(declare-fun res!615791 () Bool)

(assert (=> b!912689 (=> (not res!615791) (not e!511973))))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!912689 (= res!615791 (and (= (select (arr!26075 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!912690 () Bool)

(declare-fun res!615789 () Bool)

(assert (=> b!912690 (=> (not res!615789) (not e!511973))))

(declare-datatypes ((List!18424 0))(
  ( (Nil!18421) (Cons!18420 (h!19566 (_ BitVec 64)) (t!26021 List!18424)) )
))
(declare-fun arrayNoDuplicates!0 (array!54250 (_ BitVec 32) List!18424) Bool)

(assert (=> b!912690 (= res!615789 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18421))))

(declare-fun mapNonEmpty!30412 () Bool)

(declare-fun tp!58393 () Bool)

(assert (=> mapNonEmpty!30412 (= mapRes!30412 (and tp!58393 e!511974))))

(declare-fun mapValue!30412 () ValueCell!9080)

(declare-fun mapKey!30412 () (_ BitVec 32))

(declare-fun mapRest!30412 () (Array (_ BitVec 32) ValueCell!9080))

(assert (=> mapNonEmpty!30412 (= (arr!26074 _values!1152) (store mapRest!30412 mapKey!30412 mapValue!30412))))

(declare-fun b!912691 () Bool)

(assert (=> b!912691 (= e!511976 (and e!511975 mapRes!30412))))

(declare-fun condMapEmpty!30412 () Bool)

(declare-fun mapDefault!30412 () ValueCell!9080)


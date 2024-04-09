; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78166 () Bool)

(assert start!78166)

(declare-fun b_free!16649 () Bool)

(declare-fun b_next!16649 () Bool)

(assert (=> start!78166 (= b_free!16649 (not b_next!16649))))

(declare-fun tp!58221 () Bool)

(declare-fun b_and!27241 () Bool)

(assert (=> start!78166 (= tp!58221 b_and!27241)))

(declare-fun res!615234 () Bool)

(declare-fun e!511472 () Bool)

(assert (=> start!78166 (=> (not res!615234) (not e!511472))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78166 (= res!615234 (validMask!0 mask!1756))))

(assert (=> start!78166 e!511472))

(declare-datatypes ((V!30387 0))(
  ( (V!30388 (val!9584 Int)) )
))
(declare-datatypes ((ValueCell!9052 0))(
  ( (ValueCellFull!9052 (v!12094 V!30387)) (EmptyCell!9052) )
))
(declare-datatypes ((array!54142 0))(
  ( (array!54143 (arr!26022 (Array (_ BitVec 32) ValueCell!9052)) (size!26482 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54142)

(declare-fun e!511474 () Bool)

(declare-fun array_inv!20320 (array!54142) Bool)

(assert (=> start!78166 (and (array_inv!20320 _values!1152) e!511474)))

(assert (=> start!78166 tp!58221))

(assert (=> start!78166 true))

(declare-fun tp_is_empty!19067 () Bool)

(assert (=> start!78166 tp_is_empty!19067))

(declare-datatypes ((array!54144 0))(
  ( (array!54145 (arr!26023 (Array (_ BitVec 32) (_ BitVec 64))) (size!26483 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54144)

(declare-fun array_inv!20321 (array!54144) Bool)

(assert (=> start!78166 (array_inv!20321 _keys!1386)))

(declare-fun b!911806 () Bool)

(declare-fun res!615235 () Bool)

(assert (=> b!911806 (=> (not res!615235) (not e!511472))))

(declare-datatypes ((List!18383 0))(
  ( (Nil!18380) (Cons!18379 (h!19525 (_ BitVec 64)) (t!25978 List!18383)) )
))
(declare-fun arrayNoDuplicates!0 (array!54144 (_ BitVec 32) List!18383) Bool)

(assert (=> b!911806 (= res!615235 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18380))))

(declare-fun mapIsEmpty!30325 () Bool)

(declare-fun mapRes!30325 () Bool)

(assert (=> mapIsEmpty!30325 mapRes!30325))

(declare-fun b!911807 () Bool)

(declare-fun res!615232 () Bool)

(assert (=> b!911807 (=> (not res!615232) (not e!511472))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!911807 (= res!615232 (and (= (size!26482 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26483 _keys!1386) (size!26482 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!911808 () Bool)

(declare-fun e!511475 () Bool)

(assert (=> b!911808 (= e!511475 tp_is_empty!19067)))

(declare-fun b!911809 () Bool)

(declare-fun e!511473 () Bool)

(assert (=> b!911809 (= e!511473 tp_is_empty!19067)))

(declare-fun b!911810 () Bool)

(assert (=> b!911810 (= e!511472 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!410479 () Bool)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30387)

(declare-fun zeroValue!1094 () V!30387)

(declare-datatypes ((tuple2!12540 0))(
  ( (tuple2!12541 (_1!6280 (_ BitVec 64)) (_2!6280 V!30387)) )
))
(declare-datatypes ((List!18384 0))(
  ( (Nil!18381) (Cons!18380 (h!19526 tuple2!12540) (t!25979 List!18384)) )
))
(declare-datatypes ((ListLongMap!11251 0))(
  ( (ListLongMap!11252 (toList!5641 List!18384)) )
))
(declare-fun contains!4651 (ListLongMap!11251 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2871 (array!54144 array!54142 (_ BitVec 32) (_ BitVec 32) V!30387 V!30387 (_ BitVec 32) Int) ListLongMap!11251)

(assert (=> b!911810 (= lt!410479 (contains!4651 (getCurrentListMap!2871 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!911811 () Bool)

(assert (=> b!911811 (= e!511474 (and e!511473 mapRes!30325))))

(declare-fun condMapEmpty!30325 () Bool)

(declare-fun mapDefault!30325 () ValueCell!9052)


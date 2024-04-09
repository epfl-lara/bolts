; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78142 () Bool)

(assert start!78142)

(declare-fun b_free!16625 () Bool)

(declare-fun b_next!16625 () Bool)

(assert (=> start!78142 (= b_free!16625 (not b_next!16625))))

(declare-fun tp!58150 () Bool)

(declare-fun b_and!27217 () Bool)

(assert (=> start!78142 (= tp!58150 b_and!27217)))

(declare-fun b!911554 () Bool)

(declare-fun e!511291 () Bool)

(declare-fun tp_is_empty!19043 () Bool)

(assert (=> b!911554 (= e!511291 tp_is_empty!19043)))

(declare-fun b!911555 () Bool)

(declare-fun e!511295 () Bool)

(assert (=> b!911555 (= e!511295 false)))

(declare-datatypes ((V!30355 0))(
  ( (V!30356 (val!9572 Int)) )
))
(declare-datatypes ((ValueCell!9040 0))(
  ( (ValueCellFull!9040 (v!12082 V!30355)) (EmptyCell!9040) )
))
(declare-datatypes ((array!54094 0))(
  ( (array!54095 (arr!25998 (Array (_ BitVec 32) ValueCell!9040)) (size!26458 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54094)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30355)

(declare-datatypes ((array!54096 0))(
  ( (array!54097 (arr!25999 (Array (_ BitVec 32) (_ BitVec 64))) (size!26459 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54096)

(declare-fun lt!410443 () Bool)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30355)

(declare-datatypes ((tuple2!12522 0))(
  ( (tuple2!12523 (_1!6271 (_ BitVec 64)) (_2!6271 V!30355)) )
))
(declare-datatypes ((List!18366 0))(
  ( (Nil!18363) (Cons!18362 (h!19508 tuple2!12522) (t!25961 List!18366)) )
))
(declare-datatypes ((ListLongMap!11233 0))(
  ( (ListLongMap!11234 (toList!5632 List!18366)) )
))
(declare-fun contains!4642 (ListLongMap!11233 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2862 (array!54096 array!54094 (_ BitVec 32) (_ BitVec 32) V!30355 V!30355 (_ BitVec 32) Int) ListLongMap!11233)

(assert (=> b!911555 (= lt!410443 (contains!4642 (getCurrentListMap!2862 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!911556 () Bool)

(declare-fun e!511292 () Bool)

(assert (=> b!911556 (= e!511292 tp_is_empty!19043)))

(declare-fun b!911557 () Bool)

(declare-fun res!615089 () Bool)

(assert (=> b!911557 (=> (not res!615089) (not e!511295))))

(declare-datatypes ((List!18367 0))(
  ( (Nil!18364) (Cons!18363 (h!19509 (_ BitVec 64)) (t!25962 List!18367)) )
))
(declare-fun arrayNoDuplicates!0 (array!54096 (_ BitVec 32) List!18367) Bool)

(assert (=> b!911557 (= res!615089 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18364))))

(declare-fun mapIsEmpty!30289 () Bool)

(declare-fun mapRes!30289 () Bool)

(assert (=> mapIsEmpty!30289 mapRes!30289))

(declare-fun res!615091 () Bool)

(assert (=> start!78142 (=> (not res!615091) (not e!511295))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78142 (= res!615091 (validMask!0 mask!1756))))

(assert (=> start!78142 e!511295))

(declare-fun e!511293 () Bool)

(declare-fun array_inv!20302 (array!54094) Bool)

(assert (=> start!78142 (and (array_inv!20302 _values!1152) e!511293)))

(assert (=> start!78142 tp!58150))

(assert (=> start!78142 true))

(assert (=> start!78142 tp_is_empty!19043))

(declare-fun array_inv!20303 (array!54096) Bool)

(assert (=> start!78142 (array_inv!20303 _keys!1386)))

(declare-fun b!911558 () Bool)

(assert (=> b!911558 (= e!511293 (and e!511291 mapRes!30289))))

(declare-fun condMapEmpty!30289 () Bool)

(declare-fun mapDefault!30289 () ValueCell!9040)


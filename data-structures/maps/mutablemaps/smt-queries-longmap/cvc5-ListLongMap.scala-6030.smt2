; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78092 () Bool)

(assert start!78092)

(declare-fun b_free!16591 () Bool)

(declare-fun b_next!16591 () Bool)

(assert (=> start!78092 (= b_free!16591 (not b_next!16591))))

(declare-fun tp!58044 () Bool)

(declare-fun b_and!27181 () Bool)

(assert (=> start!78092 (= tp!58044 b_and!27181)))

(declare-fun b!911070 () Bool)

(declare-fun res!614821 () Bool)

(declare-fun e!510966 () Bool)

(assert (=> b!911070 (=> (not res!614821) (not e!510966))))

(declare-datatypes ((array!54026 0))(
  ( (array!54027 (arr!25965 (Array (_ BitVec 32) (_ BitVec 64))) (size!26425 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54026)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54026 (_ BitVec 32)) Bool)

(assert (=> b!911070 (= res!614821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!911071 () Bool)

(declare-fun e!510968 () Bool)

(declare-fun tp_is_empty!19009 () Bool)

(assert (=> b!911071 (= e!510968 tp_is_empty!19009)))

(declare-fun b!911072 () Bool)

(declare-fun res!614823 () Bool)

(assert (=> b!911072 (=> (not res!614823) (not e!510966))))

(declare-datatypes ((List!18344 0))(
  ( (Nil!18341) (Cons!18340 (h!19486 (_ BitVec 64)) (t!25937 List!18344)) )
))
(declare-fun arrayNoDuplicates!0 (array!54026 (_ BitVec 32) List!18344) Bool)

(assert (=> b!911072 (= res!614823 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18341))))

(declare-fun res!614822 () Bool)

(assert (=> start!78092 (=> (not res!614822) (not e!510966))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78092 (= res!614822 (validMask!0 mask!1756))))

(assert (=> start!78092 e!510966))

(declare-datatypes ((V!30311 0))(
  ( (V!30312 (val!9555 Int)) )
))
(declare-datatypes ((ValueCell!9023 0))(
  ( (ValueCellFull!9023 (v!12064 V!30311)) (EmptyCell!9023) )
))
(declare-datatypes ((array!54028 0))(
  ( (array!54029 (arr!25966 (Array (_ BitVec 32) ValueCell!9023)) (size!26426 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54028)

(declare-fun e!510964 () Bool)

(declare-fun array_inv!20282 (array!54028) Bool)

(assert (=> start!78092 (and (array_inv!20282 _values!1152) e!510964)))

(assert (=> start!78092 tp!58044))

(assert (=> start!78092 true))

(assert (=> start!78092 tp_is_empty!19009))

(declare-fun array_inv!20283 (array!54026) Bool)

(assert (=> start!78092 (array_inv!20283 _keys!1386)))

(declare-fun mapIsEmpty!30235 () Bool)

(declare-fun mapRes!30235 () Bool)

(assert (=> mapIsEmpty!30235 mapRes!30235))

(declare-fun b!911073 () Bool)

(assert (=> b!911073 (= e!510966 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30311)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30311)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun lt!410314 () Bool)

(declare-datatypes ((tuple2!12496 0))(
  ( (tuple2!12497 (_1!6258 (_ BitVec 64)) (_2!6258 V!30311)) )
))
(declare-datatypes ((List!18345 0))(
  ( (Nil!18342) (Cons!18341 (h!19487 tuple2!12496) (t!25938 List!18345)) )
))
(declare-datatypes ((ListLongMap!11207 0))(
  ( (ListLongMap!11208 (toList!5619 List!18345)) )
))
(declare-fun contains!4628 (ListLongMap!11207 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2849 (array!54026 array!54028 (_ BitVec 32) (_ BitVec 32) V!30311 V!30311 (_ BitVec 32) Int) ListLongMap!11207)

(assert (=> b!911073 (= lt!410314 (contains!4628 (getCurrentListMap!2849 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!911074 () Bool)

(declare-fun e!510967 () Bool)

(assert (=> b!911074 (= e!510967 tp_is_empty!19009)))

(declare-fun b!911075 () Bool)

(assert (=> b!911075 (= e!510964 (and e!510967 mapRes!30235))))

(declare-fun condMapEmpty!30235 () Bool)

(declare-fun mapDefault!30235 () ValueCell!9023)


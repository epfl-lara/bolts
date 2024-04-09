; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77844 () Bool)

(assert start!77844)

(declare-fun b_free!16375 () Bool)

(declare-fun b_next!16375 () Bool)

(assert (=> start!77844 (= b_free!16375 (not b_next!16375))))

(declare-fun tp!57390 () Bool)

(declare-fun b_and!26925 () Bool)

(assert (=> start!77844 (= tp!57390 b_and!26925)))

(declare-fun res!613090 () Bool)

(declare-fun e!509050 () Bool)

(assert (=> start!77844 (=> (not res!613090) (not e!509050))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77844 (= res!613090 (validMask!0 mask!1756))))

(assert (=> start!77844 e!509050))

(declare-datatypes ((V!30023 0))(
  ( (V!30024 (val!9447 Int)) )
))
(declare-datatypes ((ValueCell!8915 0))(
  ( (ValueCellFull!8915 (v!11954 V!30023)) (EmptyCell!8915) )
))
(declare-datatypes ((array!53612 0))(
  ( (array!53613 (arr!25760 (Array (_ BitVec 32) ValueCell!8915)) (size!26220 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53612)

(declare-fun e!509045 () Bool)

(declare-fun array_inv!20142 (array!53612) Bool)

(assert (=> start!77844 (and (array_inv!20142 _values!1152) e!509045)))

(assert (=> start!77844 tp!57390))

(assert (=> start!77844 true))

(declare-fun tp_is_empty!18793 () Bool)

(assert (=> start!77844 tp_is_empty!18793))

(declare-datatypes ((array!53614 0))(
  ( (array!53615 (arr!25761 (Array (_ BitVec 32) (_ BitVec 64))) (size!26221 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53614)

(declare-fun array_inv!20143 (array!53614) Bool)

(assert (=> start!77844 (array_inv!20143 _keys!1386)))

(declare-fun mapNonEmpty!29905 () Bool)

(declare-fun mapRes!29905 () Bool)

(declare-fun tp!57391 () Bool)

(declare-fun e!509046 () Bool)

(assert (=> mapNonEmpty!29905 (= mapRes!29905 (and tp!57391 e!509046))))

(declare-fun mapKey!29905 () (_ BitVec 32))

(declare-fun mapValue!29905 () ValueCell!8915)

(declare-fun mapRest!29905 () (Array (_ BitVec 32) ValueCell!8915))

(assert (=> mapNonEmpty!29905 (= (arr!25760 _values!1152) (store mapRest!29905 mapKey!29905 mapValue!29905))))

(declare-fun b!908200 () Bool)

(declare-fun res!613096 () Bool)

(assert (=> b!908200 (=> (not res!613096) (not e!509050))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53614 (_ BitVec 32)) Bool)

(assert (=> b!908200 (= res!613096 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!908201 () Bool)

(declare-fun res!613094 () Bool)

(assert (=> b!908201 (=> (not res!613094) (not e!509050))))

(declare-datatypes ((List!18192 0))(
  ( (Nil!18189) (Cons!18188 (h!19334 (_ BitVec 64)) (t!25747 List!18192)) )
))
(declare-fun arrayNoDuplicates!0 (array!53614 (_ BitVec 32) List!18192) Bool)

(assert (=> b!908201 (= res!613094 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18189))))

(declare-fun b!908202 () Bool)

(declare-fun e!509051 () Bool)

(assert (=> b!908202 (= e!509051 tp_is_empty!18793)))

(declare-fun b!908203 () Bool)

(declare-fun res!613089 () Bool)

(declare-fun e!509044 () Bool)

(assert (=> b!908203 (=> (not res!613089) (not e!509044))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!908203 (= res!613089 (inRange!0 i!717 mask!1756))))

(declare-fun b!908204 () Bool)

(assert (=> b!908204 (= e!509050 e!509044)))

(declare-fun res!613087 () Bool)

(assert (=> b!908204 (=> (not res!613087) (not e!509044))))

(declare-datatypes ((tuple2!12336 0))(
  ( (tuple2!12337 (_1!6178 (_ BitVec 64)) (_2!6178 V!30023)) )
))
(declare-datatypes ((List!18193 0))(
  ( (Nil!18190) (Cons!18189 (h!19335 tuple2!12336) (t!25748 List!18193)) )
))
(declare-datatypes ((ListLongMap!11047 0))(
  ( (ListLongMap!11048 (toList!5539 List!18193)) )
))
(declare-fun lt!409627 () ListLongMap!11047)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun contains!4548 (ListLongMap!11047 (_ BitVec 64)) Bool)

(assert (=> b!908204 (= res!613087 (contains!4548 lt!409627 k!1033))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30023)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30023)

(declare-fun getCurrentListMap!2771 (array!53614 array!53612 (_ BitVec 32) (_ BitVec 32) V!30023 V!30023 (_ BitVec 32) Int) ListLongMap!11047)

(assert (=> b!908204 (= lt!409627 (getCurrentListMap!2771 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun mapIsEmpty!29905 () Bool)

(assert (=> mapIsEmpty!29905 mapRes!29905))

(declare-fun b!908205 () Bool)

(assert (=> b!908205 (= e!509046 tp_is_empty!18793)))

(declare-fun b!908206 () Bool)

(assert (=> b!908206 (= e!509045 (and e!509051 mapRes!29905))))

(declare-fun condMapEmpty!29905 () Bool)

(declare-fun mapDefault!29905 () ValueCell!8915)


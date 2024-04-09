; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77856 () Bool)

(assert start!77856)

(declare-fun b_free!16387 () Bool)

(declare-fun b_next!16387 () Bool)

(assert (=> start!77856 (= b_free!16387 (not b_next!16387))))

(declare-fun tp!57426 () Bool)

(declare-fun b_and!26949 () Bool)

(assert (=> start!77856 (= tp!57426 b_and!26949)))

(declare-fun b!908446 () Bool)

(declare-fun res!613275 () Bool)

(declare-fun e!509191 () Bool)

(assert (=> b!908446 (=> (not res!613275) (not e!509191))))

(declare-datatypes ((array!53634 0))(
  ( (array!53635 (arr!25771 (Array (_ BitVec 32) (_ BitVec 64))) (size!26231 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53634)

(declare-datatypes ((List!18201 0))(
  ( (Nil!18198) (Cons!18197 (h!19343 (_ BitVec 64)) (t!25768 List!18201)) )
))
(declare-fun arrayNoDuplicates!0 (array!53634 (_ BitVec 32) List!18201) Bool)

(assert (=> b!908446 (= res!613275 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18198))))

(declare-fun b!908447 () Bool)

(declare-fun res!613272 () Bool)

(declare-fun e!509193 () Bool)

(assert (=> b!908447 (=> res!613272 e!509193)))

(declare-datatypes ((V!30039 0))(
  ( (V!30040 (val!9453 Int)) )
))
(declare-fun lt!409717 () V!30039)

(declare-datatypes ((tuple2!12346 0))(
  ( (tuple2!12347 (_1!6183 (_ BitVec 64)) (_2!6183 V!30039)) )
))
(declare-datatypes ((List!18202 0))(
  ( (Nil!18199) (Cons!18198 (h!19344 tuple2!12346) (t!25769 List!18202)) )
))
(declare-datatypes ((ListLongMap!11057 0))(
  ( (ListLongMap!11058 (toList!5544 List!18202)) )
))
(declare-fun lt!409718 () ListLongMap!11057)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun apply!517 (ListLongMap!11057 (_ BitVec 64)) V!30039)

(assert (=> b!908447 (= res!613272 (not (= (apply!517 lt!409718 k!1033) lt!409717)))))

(declare-fun b!908448 () Bool)

(declare-fun e!509192 () Bool)

(declare-fun tp_is_empty!18805 () Bool)

(assert (=> b!908448 (= e!509192 tp_is_empty!18805)))

(declare-fun b!908449 () Bool)

(declare-fun e!509194 () Bool)

(declare-fun e!509188 () Bool)

(assert (=> b!908449 (= e!509194 (not e!509188))))

(declare-fun res!613270 () Bool)

(assert (=> b!908449 (=> res!613270 e!509188)))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!908449 (= res!613270 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26231 _keys!1386))))))

(declare-datatypes ((ValueCell!8921 0))(
  ( (ValueCellFull!8921 (v!11960 V!30039)) (EmptyCell!8921) )
))
(declare-datatypes ((array!53636 0))(
  ( (array!53637 (arr!25772 (Array (_ BitVec 32) ValueCell!8921)) (size!26232 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53636)

(declare-fun defaultEntry!1160 () Int)

(declare-fun get!13584 (ValueCell!8921 V!30039) V!30039)

(declare-fun dynLambda!1385 (Int (_ BitVec 64)) V!30039)

(assert (=> b!908449 (= lt!409717 (get!13584 (select (arr!25772 _values!1152) i!717) (dynLambda!1385 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53634 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!908449 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30039)

(declare-datatypes ((Unit!30811 0))(
  ( (Unit!30812) )
))
(declare-fun lt!409716 () Unit!30811)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30039)

(declare-fun lemmaKeyInListMapIsInArray!258 (array!53634 array!53636 (_ BitVec 32) (_ BitVec 32) V!30039 V!30039 (_ BitVec 64) Int) Unit!30811)

(assert (=> b!908449 (= lt!409716 (lemmaKeyInListMapIsInArray!258 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!908450 () Bool)

(declare-fun res!613273 () Bool)

(assert (=> b!908450 (=> (not res!613273) (not e!509191))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53634 (_ BitVec 32)) Bool)

(assert (=> b!908450 (= res!613273 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!908451 () Bool)

(declare-fun res!613271 () Bool)

(assert (=> b!908451 (=> (not res!613271) (not e!509191))))

(assert (=> b!908451 (= res!613271 (and (= (size!26232 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26231 _keys!1386) (size!26232 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun res!613274 () Bool)

(assert (=> start!77856 (=> (not res!613274) (not e!509191))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77856 (= res!613274 (validMask!0 mask!1756))))

(assert (=> start!77856 e!509191))

(declare-fun e!509195 () Bool)

(declare-fun array_inv!20150 (array!53636) Bool)

(assert (=> start!77856 (and (array_inv!20150 _values!1152) e!509195)))

(assert (=> start!77856 tp!57426))

(assert (=> start!77856 true))

(assert (=> start!77856 tp_is_empty!18805))

(declare-fun array_inv!20151 (array!53634) Bool)

(assert (=> start!77856 (array_inv!20151 _keys!1386)))

(declare-fun b!908452 () Bool)

(assert (=> b!908452 (= e!509188 e!509193)))

(declare-fun res!613268 () Bool)

(assert (=> b!908452 (=> res!613268 e!509193)))

(declare-fun contains!4553 (ListLongMap!11057 (_ BitVec 64)) Bool)

(assert (=> b!908452 (= res!613268 (not (contains!4553 lt!409718 k!1033)))))

(declare-fun getCurrentListMap!2776 (array!53634 array!53636 (_ BitVec 32) (_ BitVec 32) V!30039 V!30039 (_ BitVec 32) Int) ListLongMap!11057)

(assert (=> b!908452 (= lt!409718 (getCurrentListMap!2776 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!908453 () Bool)

(assert (=> b!908453 (= e!509191 e!509194)))

(declare-fun res!613276 () Bool)

(assert (=> b!908453 (=> (not res!613276) (not e!509194))))

(declare-fun lt!409720 () ListLongMap!11057)

(assert (=> b!908453 (= res!613276 (contains!4553 lt!409720 k!1033))))

(assert (=> b!908453 (= lt!409720 (getCurrentListMap!2776 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!908454 () Bool)

(declare-fun res!613267 () Bool)

(assert (=> b!908454 (=> (not res!613267) (not e!509194))))

(assert (=> b!908454 (= res!613267 (and (= (select (arr!25771 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!908455 () Bool)

(declare-fun e!509189 () Bool)

(declare-fun mapRes!29923 () Bool)

(assert (=> b!908455 (= e!509195 (and e!509189 mapRes!29923))))

(declare-fun condMapEmpty!29923 () Bool)

(declare-fun mapDefault!29923 () ValueCell!8921)


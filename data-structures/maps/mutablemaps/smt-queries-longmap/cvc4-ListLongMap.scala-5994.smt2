; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77848 () Bool)

(assert start!77848)

(declare-fun b_free!16379 () Bool)

(declare-fun b_next!16379 () Bool)

(assert (=> start!77848 (= b_free!16379 (not b_next!16379))))

(declare-fun tp!57403 () Bool)

(declare-fun b_and!26933 () Bool)

(assert (=> start!77848 (= tp!57403 b_and!26933)))

(declare-fun mapIsEmpty!29911 () Bool)

(declare-fun mapRes!29911 () Bool)

(assert (=> mapIsEmpty!29911 mapRes!29911))

(declare-fun b!908282 () Bool)

(declare-fun res!613150 () Bool)

(declare-fun e!509098 () Bool)

(assert (=> b!908282 (=> (not res!613150) (not e!509098))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!908282 (= res!613150 (inRange!0 i!717 mask!1756))))

(declare-fun b!908283 () Bool)

(declare-fun e!509093 () Bool)

(declare-fun tp_is_empty!18797 () Bool)

(assert (=> b!908283 (= e!509093 tp_is_empty!18797)))

(declare-fun b!908284 () Bool)

(declare-fun res!613152 () Bool)

(declare-fun e!509096 () Bool)

(assert (=> b!908284 (=> res!613152 e!509096)))

(declare-datatypes ((V!30027 0))(
  ( (V!30028 (val!9449 Int)) )
))
(declare-fun lt!409660 () V!30027)

(declare-datatypes ((tuple2!12340 0))(
  ( (tuple2!12341 (_1!6180 (_ BitVec 64)) (_2!6180 V!30027)) )
))
(declare-datatypes ((List!18196 0))(
  ( (Nil!18193) (Cons!18192 (h!19338 tuple2!12340) (t!25755 List!18196)) )
))
(declare-datatypes ((ListLongMap!11051 0))(
  ( (ListLongMap!11052 (toList!5541 List!18196)) )
))
(declare-fun lt!409658 () ListLongMap!11051)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun apply!514 (ListLongMap!11051 (_ BitVec 64)) V!30027)

(assert (=> b!908284 (= res!613152 (not (= (apply!514 lt!409658 k!1033) lt!409660)))))

(declare-fun b!908285 () Bool)

(declare-fun e!509099 () Bool)

(assert (=> b!908285 (= e!509098 (not e!509099))))

(declare-fun res!613155 () Bool)

(assert (=> b!908285 (=> res!613155 e!509099)))

(declare-datatypes ((array!53620 0))(
  ( (array!53621 (arr!25764 (Array (_ BitVec 32) (_ BitVec 64))) (size!26224 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53620)

(assert (=> b!908285 (= res!613155 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26224 _keys!1386))))))

(declare-datatypes ((ValueCell!8917 0))(
  ( (ValueCellFull!8917 (v!11956 V!30027)) (EmptyCell!8917) )
))
(declare-datatypes ((array!53622 0))(
  ( (array!53623 (arr!25765 (Array (_ BitVec 32) ValueCell!8917)) (size!26225 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53622)

(declare-fun defaultEntry!1160 () Int)

(declare-fun get!13577 (ValueCell!8917 V!30027) V!30027)

(declare-fun dynLambda!1382 (Int (_ BitVec 64)) V!30027)

(assert (=> b!908285 (= lt!409660 (get!13577 (select (arr!25765 _values!1152) i!717) (dynLambda!1382 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53620 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!908285 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-fun zeroValue!1094 () V!30027)

(declare-datatypes ((Unit!30805 0))(
  ( (Unit!30806) )
))
(declare-fun lt!409659 () Unit!30805)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30027)

(declare-fun lemmaKeyInListMapIsInArray!255 (array!53620 array!53622 (_ BitVec 32) (_ BitVec 32) V!30027 V!30027 (_ BitVec 64) Int) Unit!30805)

(assert (=> b!908285 (= lt!409659 (lemmaKeyInListMapIsInArray!255 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!908286 () Bool)

(declare-fun res!613156 () Bool)

(declare-fun e!509097 () Bool)

(assert (=> b!908286 (=> (not res!613156) (not e!509097))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53620 (_ BitVec 32)) Bool)

(assert (=> b!908286 (= res!613156 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!908287 () Bool)

(assert (=> b!908287 (= e!509099 e!509096)))

(declare-fun res!613149 () Bool)

(assert (=> b!908287 (=> res!613149 e!509096)))

(declare-fun contains!4550 (ListLongMap!11051 (_ BitVec 64)) Bool)

(assert (=> b!908287 (= res!613149 (not (contains!4550 lt!409658 k!1033)))))

(declare-fun getCurrentListMap!2773 (array!53620 array!53622 (_ BitVec 32) (_ BitVec 32) V!30027 V!30027 (_ BitVec 32) Int) ListLongMap!11051)

(assert (=> b!908287 (= lt!409658 (getCurrentListMap!2773 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun res!613151 () Bool)

(assert (=> start!77848 (=> (not res!613151) (not e!509097))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77848 (= res!613151 (validMask!0 mask!1756))))

(assert (=> start!77848 e!509097))

(declare-fun e!509095 () Bool)

(declare-fun array_inv!20146 (array!53622) Bool)

(assert (=> start!77848 (and (array_inv!20146 _values!1152) e!509095)))

(assert (=> start!77848 tp!57403))

(assert (=> start!77848 true))

(assert (=> start!77848 tp_is_empty!18797))

(declare-fun array_inv!20147 (array!53620) Bool)

(assert (=> start!77848 (array_inv!20147 _keys!1386)))

(declare-fun b!908288 () Bool)

(assert (=> b!908288 (= e!509096 true)))

(declare-fun lt!409657 () ListLongMap!11051)

(assert (=> b!908288 (= (apply!514 lt!409657 k!1033) lt!409660)))

(declare-fun lt!409656 () Unit!30805)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!58 (array!53620 array!53622 (_ BitVec 32) (_ BitVec 32) V!30027 V!30027 (_ BitVec 64) V!30027 (_ BitVec 32) Int) Unit!30805)

(assert (=> b!908288 (= lt!409656 (lemmaListMapApplyFromThenApplyFromZero!58 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 lt!409660 i!717 defaultEntry!1160))))

(declare-fun b!908289 () Bool)

(assert (=> b!908289 (= e!509095 (and e!509093 mapRes!29911))))

(declare-fun condMapEmpty!29911 () Bool)

(declare-fun mapDefault!29911 () ValueCell!8917)


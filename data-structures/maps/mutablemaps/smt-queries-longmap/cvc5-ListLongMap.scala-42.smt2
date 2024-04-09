; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!724 () Bool)

(assert start!724)

(declare-fun b_free!157 () Bool)

(declare-fun b_next!157 () Bool)

(assert (=> start!724 (= b_free!157 (not b_next!157))))

(declare-fun tp!695 () Bool)

(declare-fun b_and!299 () Bool)

(assert (=> start!724 (= tp!695 b_and!299)))

(declare-fun b!5059 () Bool)

(declare-fun e!2705 () Bool)

(declare-fun e!2708 () Bool)

(assert (=> b!5059 (= e!2705 (not e!2708))))

(declare-fun res!6051 () Bool)

(assert (=> b!5059 (=> res!6051 e!2708)))

(declare-datatypes ((array!403 0))(
  ( (array!404 (arr!192 (Array (_ BitVec 32) (_ BitVec 64))) (size!254 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!403)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!403 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!5059 (= res!6051 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(declare-fun e!2709 () Bool)

(assert (=> b!5059 e!2709))

(declare-fun c!308 () Bool)

(assert (=> b!5059 (= c!308 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((Unit!57 0))(
  ( (Unit!58) )
))
(declare-fun lt!816 () Unit!57)

(declare-datatypes ((V!491 0))(
  ( (V!492 (val!123 Int)) )
))
(declare-datatypes ((ValueCell!101 0))(
  ( (ValueCellFull!101 (v!1212 V!491)) (EmptyCell!101) )
))
(declare-datatypes ((array!405 0))(
  ( (array!406 (arr!193 (Array (_ BitVec 32) ValueCell!101)) (size!255 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!405)

(declare-fun minValue!1434 () V!491)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!491)

(declare-fun lemmaKeyInListMapIsInArray!16 (array!403 array!405 (_ BitVec 32) (_ BitVec 32) V!491 V!491 (_ BitVec 64) Int) Unit!57)

(assert (=> b!5059 (= lt!816 (lemmaKeyInListMapIsInArray!16 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!5060 () Bool)

(declare-fun res!6050 () Bool)

(assert (=> b!5060 (=> (not res!6050) (not e!2705))))

(declare-datatypes ((tuple2!112 0))(
  ( (tuple2!113 (_1!56 (_ BitVec 64)) (_2!56 V!491)) )
))
(declare-datatypes ((List!121 0))(
  ( (Nil!118) (Cons!117 (h!683 tuple2!112) (t!2252 List!121)) )
))
(declare-datatypes ((ListLongMap!117 0))(
  ( (ListLongMap!118 (toList!74 List!121)) )
))
(declare-fun contains!46 (ListLongMap!117 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!33 (array!403 array!405 (_ BitVec 32) (_ BitVec 32) V!491 V!491 (_ BitVec 32) Int) ListLongMap!117)

(assert (=> b!5060 (= res!6050 (contains!46 (getCurrentListMap!33 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun mapIsEmpty!317 () Bool)

(declare-fun mapRes!317 () Bool)

(assert (=> mapIsEmpty!317 mapRes!317))

(declare-fun b!5061 () Bool)

(assert (=> b!5061 (= e!2709 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!317 () Bool)

(declare-fun tp!694 () Bool)

(declare-fun e!2707 () Bool)

(assert (=> mapNonEmpty!317 (= mapRes!317 (and tp!694 e!2707))))

(declare-fun mapKey!317 () (_ BitVec 32))

(declare-fun mapRest!317 () (Array (_ BitVec 32) ValueCell!101))

(declare-fun mapValue!317 () ValueCell!101)

(assert (=> mapNonEmpty!317 (= (arr!193 _values!1492) (store mapRest!317 mapKey!317 mapValue!317))))

(declare-fun b!5062 () Bool)

(declare-fun res!6049 () Bool)

(assert (=> b!5062 (=> (not res!6049) (not e!2705))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!403 (_ BitVec 32)) Bool)

(assert (=> b!5062 (= res!6049 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!5063 () Bool)

(assert (=> b!5063 (= e!2708 (or (not (= (size!254 _keys!1806) (bvadd #b00000000000000000000000000000001 mask!2250))) (bvsle #b00000000000000000000000000000000 (size!254 _keys!1806))))))

(declare-fun b!5064 () Bool)

(declare-fun tp_is_empty!235 () Bool)

(assert (=> b!5064 (= e!2707 tp_is_empty!235)))

(declare-fun b!5065 () Bool)

(declare-fun res!6047 () Bool)

(assert (=> b!5065 (=> (not res!6047) (not e!2705))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!5065 (= res!6047 (validKeyInArray!0 k!1278))))

(declare-fun b!5066 () Bool)

(assert (=> b!5066 (= e!2709 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!5068 () Bool)

(declare-fun res!6048 () Bool)

(assert (=> b!5068 (=> (not res!6048) (not e!2705))))

(assert (=> b!5068 (= res!6048 (and (= (size!255 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!254 _keys!1806) (size!255 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun res!6046 () Bool)

(assert (=> start!724 (=> (not res!6046) (not e!2705))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!724 (= res!6046 (validMask!0 mask!2250))))

(assert (=> start!724 e!2705))

(assert (=> start!724 tp!695))

(assert (=> start!724 true))

(declare-fun e!2711 () Bool)

(declare-fun array_inv!135 (array!405) Bool)

(assert (=> start!724 (and (array_inv!135 _values!1492) e!2711)))

(assert (=> start!724 tp_is_empty!235))

(declare-fun array_inv!136 (array!403) Bool)

(assert (=> start!724 (array_inv!136 _keys!1806)))

(declare-fun b!5067 () Bool)

(declare-fun res!6052 () Bool)

(assert (=> b!5067 (=> (not res!6052) (not e!2705))))

(declare-datatypes ((List!122 0))(
  ( (Nil!119) (Cons!118 (h!684 (_ BitVec 64)) (t!2253 List!122)) )
))
(declare-fun arrayNoDuplicates!0 (array!403 (_ BitVec 32) List!122) Bool)

(assert (=> b!5067 (= res!6052 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!119))))

(declare-fun b!5069 () Bool)

(declare-fun e!2710 () Bool)

(assert (=> b!5069 (= e!2710 tp_is_empty!235)))

(declare-fun b!5070 () Bool)

(assert (=> b!5070 (= e!2711 (and e!2710 mapRes!317))))

(declare-fun condMapEmpty!317 () Bool)

(declare-fun mapDefault!317 () ValueCell!101)


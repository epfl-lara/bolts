; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111770 () Bool)

(assert start!111770)

(declare-fun b_free!30391 () Bool)

(declare-fun b_next!30391 () Bool)

(assert (=> start!111770 (= b_free!30391 (not b_next!30391))))

(declare-fun tp!106650 () Bool)

(declare-fun b_and!48939 () Bool)

(assert (=> start!111770 (= tp!106650 b_and!48939)))

(declare-fun b!1323887 () Bool)

(declare-fun e!754747 () Bool)

(declare-fun tp_is_empty!36211 () Bool)

(assert (=> b!1323887 (= e!754747 tp_is_empty!36211)))

(declare-fun b!1323888 () Bool)

(declare-fun e!754744 () Bool)

(assert (=> b!1323888 (= e!754744 false)))

(declare-datatypes ((array!89291 0))(
  ( (array!89292 (arr!43115 (Array (_ BitVec 32) (_ BitVec 64))) (size!43666 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89291)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53385 0))(
  ( (V!53386 (val!18180 Int)) )
))
(declare-fun zeroValue!1279 () V!53385)

(declare-datatypes ((ValueCell!17207 0))(
  ( (ValueCellFull!17207 (v!20808 V!53385)) (EmptyCell!17207) )
))
(declare-datatypes ((array!89293 0))(
  ( (array!89294 (arr!43116 (Array (_ BitVec 32) ValueCell!17207)) (size!43667 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89293)

(declare-fun minValue!1279 () V!53385)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun lt!589351 () Bool)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23586 0))(
  ( (tuple2!23587 (_1!11803 (_ BitVec 64)) (_2!11803 V!53385)) )
))
(declare-datatypes ((List!30759 0))(
  ( (Nil!30756) (Cons!30755 (h!31964 tuple2!23586) (t!44692 List!30759)) )
))
(declare-datatypes ((ListLongMap!21255 0))(
  ( (ListLongMap!21256 (toList!10643 List!30759)) )
))
(declare-fun contains!8734 (ListLongMap!21255 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5580 (array!89291 array!89293 (_ BitVec 32) (_ BitVec 32) V!53385 V!53385 (_ BitVec 32) Int) ListLongMap!21255)

(assert (=> b!1323888 (= lt!589351 (contains!8734 (getCurrentListMap!5580 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun mapNonEmpty!55964 () Bool)

(declare-fun mapRes!55964 () Bool)

(declare-fun tp!106649 () Bool)

(assert (=> mapNonEmpty!55964 (= mapRes!55964 (and tp!106649 e!754747))))

(declare-fun mapRest!55964 () (Array (_ BitVec 32) ValueCell!17207))

(declare-fun mapKey!55964 () (_ BitVec 32))

(declare-fun mapValue!55964 () ValueCell!17207)

(assert (=> mapNonEmpty!55964 (= (arr!43116 _values!1337) (store mapRest!55964 mapKey!55964 mapValue!55964))))

(declare-fun b!1323889 () Bool)

(declare-fun res!878830 () Bool)

(assert (=> b!1323889 (=> (not res!878830) (not e!754744))))

(declare-datatypes ((List!30760 0))(
  ( (Nil!30757) (Cons!30756 (h!31965 (_ BitVec 64)) (t!44693 List!30760)) )
))
(declare-fun arrayNoDuplicates!0 (array!89291 (_ BitVec 32) List!30760) Bool)

(assert (=> b!1323889 (= res!878830 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30757))))

(declare-fun b!1323890 () Bool)

(declare-fun e!754746 () Bool)

(assert (=> b!1323890 (= e!754746 tp_is_empty!36211)))

(declare-fun b!1323891 () Bool)

(declare-fun e!754745 () Bool)

(assert (=> b!1323891 (= e!754745 (and e!754746 mapRes!55964))))

(declare-fun condMapEmpty!55964 () Bool)

(declare-fun mapDefault!55964 () ValueCell!17207)


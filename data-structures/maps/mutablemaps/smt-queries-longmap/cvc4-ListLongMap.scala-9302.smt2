; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111200 () Bool)

(assert start!111200)

(declare-fun b_free!29999 () Bool)

(declare-fun b_next!29999 () Bool)

(assert (=> start!111200 (= b_free!29999 (not b_next!29999))))

(declare-fun tp!105319 () Bool)

(declare-fun b_and!48217 () Bool)

(assert (=> start!111200 (= tp!105319 b_and!48217)))

(declare-fun b!1316129 () Bool)

(declare-fun res!873802 () Bool)

(declare-fun e!750826 () Bool)

(assert (=> b!1316129 (=> (not res!873802) (not e!750826))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1316129 (= res!873802 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1316130 () Bool)

(declare-fun res!873801 () Bool)

(assert (=> b!1316130 (=> (not res!873801) (not e!750826))))

(declare-datatypes ((array!88375 0))(
  ( (array!88376 (arr!42663 (Array (_ BitVec 32) (_ BitVec 64))) (size!43214 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88375)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88375 (_ BitVec 32)) Bool)

(assert (=> b!1316130 (= res!873801 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1316132 () Bool)

(declare-fun res!873806 () Bool)

(assert (=> b!1316132 (=> (not res!873806) (not e!750826))))

(declare-datatypes ((V!52741 0))(
  ( (V!52742 (val!17939 Int)) )
))
(declare-datatypes ((ValueCell!16966 0))(
  ( (ValueCellFull!16966 (v!20564 V!52741)) (EmptyCell!16966) )
))
(declare-datatypes ((array!88377 0))(
  ( (array!88378 (arr!42664 (Array (_ BitVec 32) ValueCell!16966)) (size!43215 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88377)

(assert (=> b!1316132 (= res!873806 (and (= (size!43215 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43214 _keys!1628) (size!43215 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1316133 () Bool)

(declare-fun res!873798 () Bool)

(assert (=> b!1316133 (=> (not res!873798) (not e!750826))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1316133 (= res!873798 (not (= (select (arr!42663 _keys!1628) from!2020) k!1175)))))

(declare-fun mapIsEmpty!55222 () Bool)

(declare-fun mapRes!55222 () Bool)

(assert (=> mapIsEmpty!55222 mapRes!55222))

(declare-fun b!1316134 () Bool)

(declare-fun e!750828 () Bool)

(declare-fun tp_is_empty!35729 () Bool)

(assert (=> b!1316134 (= e!750828 tp_is_empty!35729)))

(declare-fun b!1316135 () Bool)

(declare-fun res!873805 () Bool)

(assert (=> b!1316135 (=> (not res!873805) (not e!750826))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1316135 (= res!873805 (validKeyInArray!0 (select (arr!42663 _keys!1628) from!2020)))))

(declare-fun b!1316136 () Bool)

(declare-fun res!873803 () Bool)

(assert (=> b!1316136 (=> (not res!873803) (not e!750826))))

(assert (=> b!1316136 (= res!873803 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43214 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1316131 () Bool)

(declare-fun e!750829 () Bool)

(assert (=> b!1316131 (= e!750829 tp_is_empty!35729)))

(declare-fun res!873804 () Bool)

(assert (=> start!111200 (=> (not res!873804) (not e!750826))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111200 (= res!873804 (validMask!0 mask!2040))))

(assert (=> start!111200 e!750826))

(assert (=> start!111200 tp!105319))

(declare-fun array_inv!32189 (array!88375) Bool)

(assert (=> start!111200 (array_inv!32189 _keys!1628)))

(assert (=> start!111200 true))

(assert (=> start!111200 tp_is_empty!35729))

(declare-fun e!750827 () Bool)

(declare-fun array_inv!32190 (array!88377) Bool)

(assert (=> start!111200 (and (array_inv!32190 _values!1354) e!750827)))

(declare-fun b!1316137 () Bool)

(declare-fun res!873799 () Bool)

(assert (=> b!1316137 (=> (not res!873799) (not e!750826))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun zeroValue!1296 () V!52741)

(declare-fun minValue!1296 () V!52741)

(declare-datatypes ((tuple2!23292 0))(
  ( (tuple2!23293 (_1!11656 (_ BitVec 64)) (_2!11656 V!52741)) )
))
(declare-datatypes ((List!30461 0))(
  ( (Nil!30458) (Cons!30457 (h!31666 tuple2!23292) (t!44074 List!30461)) )
))
(declare-datatypes ((ListLongMap!20961 0))(
  ( (ListLongMap!20962 (toList!10496 List!30461)) )
))
(declare-fun contains!8582 (ListLongMap!20961 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5452 (array!88375 array!88377 (_ BitVec 32) (_ BitVec 32) V!52741 V!52741 (_ BitVec 32) Int) ListLongMap!20961)

(assert (=> b!1316137 (= res!873799 (contains!8582 (getCurrentListMap!5452 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun mapNonEmpty!55222 () Bool)

(declare-fun tp!105320 () Bool)

(assert (=> mapNonEmpty!55222 (= mapRes!55222 (and tp!105320 e!750828))))

(declare-fun mapKey!55222 () (_ BitVec 32))

(declare-fun mapRest!55222 () (Array (_ BitVec 32) ValueCell!16966))

(declare-fun mapValue!55222 () ValueCell!16966)

(assert (=> mapNonEmpty!55222 (= (arr!42664 _values!1354) (store mapRest!55222 mapKey!55222 mapValue!55222))))

(declare-fun b!1316138 () Bool)

(assert (=> b!1316138 (= e!750826 (not true))))

(assert (=> b!1316138 (contains!8582 (getCurrentListMap!5452 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43340 0))(
  ( (Unit!43341) )
))
(declare-fun lt!585940 () Unit!43340)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!21 (array!88375 array!88377 (_ BitVec 32) (_ BitVec 32) V!52741 V!52741 (_ BitVec 64) (_ BitVec 32) Int) Unit!43340)

(assert (=> b!1316138 (= lt!585940 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!21 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1316139 () Bool)

(assert (=> b!1316139 (= e!750827 (and e!750829 mapRes!55222))))

(declare-fun condMapEmpty!55222 () Bool)

(declare-fun mapDefault!55222 () ValueCell!16966)


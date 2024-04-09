; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113490 () Bool)

(assert start!113490)

(declare-fun b_free!31505 () Bool)

(declare-fun b_next!31505 () Bool)

(assert (=> start!113490 (= b_free!31505 (not b_next!31505))))

(declare-fun tp!110321 () Bool)

(declare-fun b_and!50803 () Bool)

(assert (=> start!113490 (= tp!110321 b_and!50803)))

(declare-fun b!1346761 () Bool)

(declare-fun res!893736 () Bool)

(declare-fun e!766322 () Bool)

(assert (=> b!1346761 (=> (not res!893736) (not e!766322))))

(declare-datatypes ((array!91799 0))(
  ( (array!91800 (arr!44351 (Array (_ BitVec 32) (_ BitVec 64))) (size!44902 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91799)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1346761 (= res!893736 (validKeyInArray!0 (select (arr!44351 _keys!1571) from!1960)))))

(declare-fun b!1346762 () Bool)

(declare-fun e!766318 () Bool)

(declare-fun tp_is_empty!37505 () Bool)

(assert (=> b!1346762 (= e!766318 tp_is_empty!37505)))

(declare-fun b!1346763 () Bool)

(declare-fun res!893733 () Bool)

(assert (=> b!1346763 (=> (not res!893733) (not e!766322))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1346763 (= res!893733 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1346764 () Bool)

(declare-fun res!893735 () Bool)

(assert (=> b!1346764 (=> (not res!893735) (not e!766322))))

(declare-datatypes ((List!31579 0))(
  ( (Nil!31576) (Cons!31575 (h!32784 (_ BitVec 64)) (t!46176 List!31579)) )
))
(declare-fun arrayNoDuplicates!0 (array!91799 (_ BitVec 32) List!31579) Bool)

(assert (=> b!1346764 (= res!893735 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31576))))

(declare-fun b!1346765 () Bool)

(declare-fun e!766321 () Bool)

(assert (=> b!1346765 (= e!766321 tp_is_empty!37505)))

(declare-fun b!1346766 () Bool)

(declare-fun res!893737 () Bool)

(assert (=> b!1346766 (=> (not res!893737) (not e!766322))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((V!55109 0))(
  ( (V!55110 (val!18827 Int)) )
))
(declare-datatypes ((ValueCell!17854 0))(
  ( (ValueCellFull!17854 (v!21473 V!55109)) (EmptyCell!17854) )
))
(declare-datatypes ((array!91801 0))(
  ( (array!91802 (arr!44352 (Array (_ BitVec 32) ValueCell!17854)) (size!44903 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91801)

(assert (=> b!1346766 (= res!893737 (and (= (size!44903 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44902 _keys!1571) (size!44903 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!57964 () Bool)

(declare-fun mapRes!57964 () Bool)

(assert (=> mapIsEmpty!57964 mapRes!57964))

(declare-fun res!893734 () Bool)

(assert (=> start!113490 (=> (not res!893734) (not e!766322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113490 (= res!893734 (validMask!0 mask!1977))))

(assert (=> start!113490 e!766322))

(assert (=> start!113490 tp_is_empty!37505))

(assert (=> start!113490 true))

(declare-fun array_inv!33329 (array!91799) Bool)

(assert (=> start!113490 (array_inv!33329 _keys!1571)))

(declare-fun e!766320 () Bool)

(declare-fun array_inv!33330 (array!91801) Bool)

(assert (=> start!113490 (and (array_inv!33330 _values!1303) e!766320)))

(assert (=> start!113490 tp!110321))

(declare-fun b!1346760 () Bool)

(declare-fun res!893731 () Bool)

(assert (=> b!1346760 (=> (not res!893731) (not e!766322))))

(declare-fun k!1142 () (_ BitVec 64))

(assert (=> b!1346760 (= res!893731 (not (= (select (arr!44351 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1346767 () Bool)

(declare-fun res!893732 () Bool)

(assert (=> b!1346767 (=> (not res!893732) (not e!766322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91799 (_ BitVec 32)) Bool)

(assert (=> b!1346767 (= res!893732 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1346768 () Bool)

(assert (=> b!1346768 (= e!766322 false)))

(declare-fun minValue!1245 () V!55109)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24406 0))(
  ( (tuple2!24407 (_1!12213 (_ BitVec 64)) (_2!12213 V!55109)) )
))
(declare-datatypes ((List!31580 0))(
  ( (Nil!31577) (Cons!31576 (h!32785 tuple2!24406) (t!46177 List!31580)) )
))
(declare-datatypes ((ListLongMap!22075 0))(
  ( (ListLongMap!22076 (toList!11053 List!31580)) )
))
(declare-fun lt!595483 () ListLongMap!22075)

(declare-fun zeroValue!1245 () V!55109)

(declare-fun getCurrentListMapNoExtraKeys!6536 (array!91799 array!91801 (_ BitVec 32) (_ BitVec 32) V!55109 V!55109 (_ BitVec 32) Int) ListLongMap!22075)

(assert (=> b!1346768 (= lt!595483 (getCurrentListMapNoExtraKeys!6536 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1346769 () Bool)

(assert (=> b!1346769 (= e!766320 (and e!766321 mapRes!57964))))

(declare-fun condMapEmpty!57964 () Bool)

(declare-fun mapDefault!57964 () ValueCell!17854)


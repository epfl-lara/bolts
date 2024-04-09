; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111436 () Bool)

(assert start!111436)

(declare-fun b_free!30057 () Bool)

(declare-fun b_next!30057 () Bool)

(assert (=> start!111436 (= b_free!30057 (not b_next!30057))))

(declare-fun tp!105648 () Bool)

(declare-fun b_and!48287 () Bool)

(assert (=> start!111436 (= tp!105648 b_and!48287)))

(declare-fun b!1318118 () Bool)

(declare-fun res!874887 () Bool)

(declare-fun e!752242 () Bool)

(assert (=> b!1318118 (=> (not res!874887) (not e!752242))))

(declare-datatypes ((array!88657 0))(
  ( (array!88658 (arr!42798 (Array (_ BitVec 32) (_ BitVec 64))) (size!43349 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88657)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!52939 0))(
  ( (V!52940 (val!18013 Int)) )
))
(declare-fun zeroValue!1279 () V!52939)

(declare-fun minValue!1279 () V!52939)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17040 0))(
  ( (ValueCellFull!17040 (v!20641 V!52939)) (EmptyCell!17040) )
))
(declare-datatypes ((array!88659 0))(
  ( (array!88660 (arr!42799 (Array (_ BitVec 32) ValueCell!17040)) (size!43350 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88659)

(declare-datatypes ((tuple2!23332 0))(
  ( (tuple2!23333 (_1!11676 (_ BitVec 64)) (_2!11676 V!52939)) )
))
(declare-datatypes ((List!30523 0))(
  ( (Nil!30520) (Cons!30519 (h!31728 tuple2!23332) (t!44138 List!30523)) )
))
(declare-datatypes ((ListLongMap!21001 0))(
  ( (ListLongMap!21002 (toList!10516 List!30523)) )
))
(declare-fun contains!8607 (ListLongMap!21001 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5472 (array!88657 array!88659 (_ BitVec 32) (_ BitVec 32) V!52939 V!52939 (_ BitVec 32) Int) ListLongMap!21001)

(assert (=> b!1318118 (= res!874887 (contains!8607 (getCurrentListMap!5472 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1318119 () Bool)

(declare-fun res!874882 () Bool)

(assert (=> b!1318119 (=> (not res!874882) (not e!752242))))

(assert (=> b!1318119 (= res!874882 (not (= (select (arr!42798 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1318120 () Bool)

(assert (=> b!1318120 (= e!752242 (bvslt (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!55463 () Bool)

(declare-fun mapRes!55463 () Bool)

(assert (=> mapIsEmpty!55463 mapRes!55463))

(declare-fun b!1318121 () Bool)

(declare-fun e!752240 () Bool)

(declare-fun e!752238 () Bool)

(assert (=> b!1318121 (= e!752240 (and e!752238 mapRes!55463))))

(declare-fun condMapEmpty!55463 () Bool)

(declare-fun mapDefault!55463 () ValueCell!17040)

(assert (=> b!1318121 (= condMapEmpty!55463 (= (arr!42799 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17040)) mapDefault!55463)))))

(declare-fun b!1318122 () Bool)

(declare-fun res!874881 () Bool)

(assert (=> b!1318122 (=> (not res!874881) (not e!752242))))

(assert (=> b!1318122 (= res!874881 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43349 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1318123 () Bool)

(declare-fun res!874886 () Bool)

(assert (=> b!1318123 (=> (not res!874886) (not e!752242))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1318123 (= res!874886 (validKeyInArray!0 (select (arr!42798 _keys!1609) from!2000)))))

(declare-fun b!1318124 () Bool)

(declare-fun res!874884 () Bool)

(assert (=> b!1318124 (=> (not res!874884) (not e!752242))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88657 (_ BitVec 32)) Bool)

(assert (=> b!1318124 (= res!874884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1318125 () Bool)

(declare-fun e!752241 () Bool)

(declare-fun tp_is_empty!35877 () Bool)

(assert (=> b!1318125 (= e!752241 tp_is_empty!35877)))

(declare-fun res!874888 () Bool)

(assert (=> start!111436 (=> (not res!874888) (not e!752242))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111436 (= res!874888 (validMask!0 mask!2019))))

(assert (=> start!111436 e!752242))

(declare-fun array_inv!32275 (array!88657) Bool)

(assert (=> start!111436 (array_inv!32275 _keys!1609)))

(assert (=> start!111436 true))

(assert (=> start!111436 tp_is_empty!35877))

(declare-fun array_inv!32276 (array!88659) Bool)

(assert (=> start!111436 (and (array_inv!32276 _values!1337) e!752240)))

(assert (=> start!111436 tp!105648))

(declare-fun b!1318126 () Bool)

(declare-fun res!874883 () Bool)

(assert (=> b!1318126 (=> (not res!874883) (not e!752242))))

(assert (=> b!1318126 (= res!874883 (and (= (size!43350 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43349 _keys!1609) (size!43350 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1318127 () Bool)

(assert (=> b!1318127 (= e!752238 tp_is_empty!35877)))

(declare-fun mapNonEmpty!55463 () Bool)

(declare-fun tp!105647 () Bool)

(assert (=> mapNonEmpty!55463 (= mapRes!55463 (and tp!105647 e!752241))))

(declare-fun mapKey!55463 () (_ BitVec 32))

(declare-fun mapValue!55463 () ValueCell!17040)

(declare-fun mapRest!55463 () (Array (_ BitVec 32) ValueCell!17040))

(assert (=> mapNonEmpty!55463 (= (arr!42799 _values!1337) (store mapRest!55463 mapKey!55463 mapValue!55463))))

(declare-fun b!1318128 () Bool)

(declare-fun res!874885 () Bool)

(assert (=> b!1318128 (=> (not res!874885) (not e!752242))))

(declare-datatypes ((List!30524 0))(
  ( (Nil!30521) (Cons!30520 (h!31729 (_ BitVec 64)) (t!44139 List!30524)) )
))
(declare-fun arrayNoDuplicates!0 (array!88657 (_ BitVec 32) List!30524) Bool)

(assert (=> b!1318128 (= res!874885 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30521))))

(assert (= (and start!111436 res!874888) b!1318126))

(assert (= (and b!1318126 res!874883) b!1318124))

(assert (= (and b!1318124 res!874884) b!1318128))

(assert (= (and b!1318128 res!874885) b!1318122))

(assert (= (and b!1318122 res!874881) b!1318118))

(assert (= (and b!1318118 res!874887) b!1318119))

(assert (= (and b!1318119 res!874882) b!1318123))

(assert (= (and b!1318123 res!874886) b!1318120))

(assert (= (and b!1318121 condMapEmpty!55463) mapIsEmpty!55463))

(assert (= (and b!1318121 (not condMapEmpty!55463)) mapNonEmpty!55463))

(get-info :version)

(assert (= (and mapNonEmpty!55463 ((_ is ValueCellFull!17040) mapValue!55463)) b!1318125))

(assert (= (and b!1318121 ((_ is ValueCellFull!17040) mapDefault!55463)) b!1318127))

(assert (= start!111436 b!1318121))

(declare-fun m!1205747 () Bool)

(assert (=> b!1318123 m!1205747))

(assert (=> b!1318123 m!1205747))

(declare-fun m!1205749 () Bool)

(assert (=> b!1318123 m!1205749))

(declare-fun m!1205751 () Bool)

(assert (=> b!1318124 m!1205751))

(declare-fun m!1205753 () Bool)

(assert (=> mapNonEmpty!55463 m!1205753))

(declare-fun m!1205755 () Bool)

(assert (=> b!1318118 m!1205755))

(assert (=> b!1318118 m!1205755))

(declare-fun m!1205757 () Bool)

(assert (=> b!1318118 m!1205757))

(declare-fun m!1205759 () Bool)

(assert (=> b!1318128 m!1205759))

(declare-fun m!1205761 () Bool)

(assert (=> start!111436 m!1205761))

(declare-fun m!1205763 () Bool)

(assert (=> start!111436 m!1205763))

(declare-fun m!1205765 () Bool)

(assert (=> start!111436 m!1205765))

(assert (=> b!1318119 m!1205747))

(check-sat (not b_next!30057) (not b!1318128) b_and!48287 (not start!111436) (not b!1318118) tp_is_empty!35877 (not mapNonEmpty!55463) (not b!1318123) (not b!1318124))
(check-sat b_and!48287 (not b_next!30057))

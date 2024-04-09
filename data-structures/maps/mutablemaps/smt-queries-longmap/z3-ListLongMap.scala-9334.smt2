; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111478 () Bool)

(assert start!111478)

(declare-fun b_free!30099 () Bool)

(declare-fun b_next!30099 () Bool)

(assert (=> start!111478 (= b_free!30099 (not b_next!30099))))

(declare-fun tp!105773 () Bool)

(declare-fun b_and!48367 () Bool)

(assert (=> start!111478 (= tp!105773 b_and!48367)))

(declare-fun b!1318849 () Bool)

(declare-fun e!752554 () Bool)

(declare-fun tp_is_empty!35919 () Bool)

(assert (=> b!1318849 (= e!752554 tp_is_empty!35919)))

(declare-fun b!1318850 () Bool)

(declare-fun res!875390 () Bool)

(declare-fun e!752557 () Bool)

(assert (=> b!1318850 (=> (not res!875390) (not e!752557))))

(declare-datatypes ((array!88737 0))(
  ( (array!88738 (arr!42838 (Array (_ BitVec 32) (_ BitVec 64))) (size!43389 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88737)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!52995 0))(
  ( (V!52996 (val!18034 Int)) )
))
(declare-datatypes ((ValueCell!17061 0))(
  ( (ValueCellFull!17061 (v!20662 V!52995)) (EmptyCell!17061) )
))
(declare-datatypes ((array!88739 0))(
  ( (array!88740 (arr!42839 (Array (_ BitVec 32) ValueCell!17061)) (size!43390 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88739)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1318850 (= res!875390 (and (= (size!43390 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43389 _keys!1609) (size!43390 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun res!875385 () Bool)

(assert (=> start!111478 (=> (not res!875385) (not e!752557))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111478 (= res!875385 (validMask!0 mask!2019))))

(assert (=> start!111478 e!752557))

(declare-fun array_inv!32297 (array!88737) Bool)

(assert (=> start!111478 (array_inv!32297 _keys!1609)))

(assert (=> start!111478 true))

(assert (=> start!111478 tp_is_empty!35919))

(declare-fun e!752553 () Bool)

(declare-fun array_inv!32298 (array!88739) Bool)

(assert (=> start!111478 (and (array_inv!32298 _values!1337) e!752553)))

(assert (=> start!111478 tp!105773))

(declare-fun mapIsEmpty!55526 () Bool)

(declare-fun mapRes!55526 () Bool)

(assert (=> mapIsEmpty!55526 mapRes!55526))

(declare-fun b!1318851 () Bool)

(declare-fun res!875386 () Bool)

(assert (=> b!1318851 (=> (not res!875386) (not e!752557))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1318851 (= res!875386 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43389 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1318852 () Bool)

(declare-fun res!875387 () Bool)

(assert (=> b!1318852 (=> (not res!875387) (not e!752557))))

(declare-datatypes ((List!30552 0))(
  ( (Nil!30549) (Cons!30548 (h!31757 (_ BitVec 64)) (t!44207 List!30552)) )
))
(declare-fun arrayNoDuplicates!0 (array!88737 (_ BitVec 32) List!30552) Bool)

(assert (=> b!1318852 (= res!875387 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30549))))

(declare-fun b!1318853 () Bool)

(declare-fun res!875391 () Bool)

(assert (=> b!1318853 (=> (not res!875391) (not e!752557))))

(declare-fun zeroValue!1279 () V!52995)

(declare-fun minValue!1279 () V!52995)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23362 0))(
  ( (tuple2!23363 (_1!11691 (_ BitVec 64)) (_2!11691 V!52995)) )
))
(declare-datatypes ((List!30553 0))(
  ( (Nil!30550) (Cons!30549 (h!31758 tuple2!23362) (t!44208 List!30553)) )
))
(declare-datatypes ((ListLongMap!21031 0))(
  ( (ListLongMap!21032 (toList!10531 List!30553)) )
))
(declare-fun contains!8622 (ListLongMap!21031 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5485 (array!88737 array!88739 (_ BitVec 32) (_ BitVec 32) V!52995 V!52995 (_ BitVec 32) Int) ListLongMap!21031)

(assert (=> b!1318853 (= res!875391 (contains!8622 (getCurrentListMap!5485 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1318854 () Bool)

(declare-fun res!875388 () Bool)

(assert (=> b!1318854 (=> (not res!875388) (not e!752557))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1318854 (= res!875388 (validKeyInArray!0 (select (arr!42838 _keys!1609) from!2000)))))

(declare-fun b!1318855 () Bool)

(declare-fun res!875389 () Bool)

(assert (=> b!1318855 (=> (not res!875389) (not e!752557))))

(assert (=> b!1318855 (= res!875389 (not (= (select (arr!42838 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1318856 () Bool)

(declare-fun e!752556 () Bool)

(assert (=> b!1318856 (= e!752553 (and e!752556 mapRes!55526))))

(declare-fun condMapEmpty!55526 () Bool)

(declare-fun mapDefault!55526 () ValueCell!17061)

(assert (=> b!1318856 (= condMapEmpty!55526 (= (arr!42839 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17061)) mapDefault!55526)))))

(declare-fun b!1318857 () Bool)

(assert (=> b!1318857 (= e!752556 tp_is_empty!35919)))

(declare-fun b!1318858 () Bool)

(assert (=> b!1318858 (= e!752557 (not true))))

(declare-fun lt!586489 () ListLongMap!21031)

(assert (=> b!1318858 (contains!8622 lt!586489 k0!1164)))

(declare-datatypes ((Unit!43380 0))(
  ( (Unit!43381) )
))
(declare-fun lt!586488 () Unit!43380)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!105 ((_ BitVec 64) (_ BitVec 64) V!52995 ListLongMap!21031) Unit!43380)

(assert (=> b!1318858 (= lt!586488 (lemmaInListMapAfterAddingDiffThenInBefore!105 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586489))))

(declare-fun +!4490 (ListLongMap!21031 tuple2!23362) ListLongMap!21031)

(declare-fun getCurrentListMapNoExtraKeys!6205 (array!88737 array!88739 (_ BitVec 32) (_ BitVec 32) V!52995 V!52995 (_ BitVec 32) Int) ListLongMap!21031)

(declare-fun get!21570 (ValueCell!17061 V!52995) V!52995)

(declare-fun dynLambda!3527 (Int (_ BitVec 64)) V!52995)

(assert (=> b!1318858 (= lt!586489 (+!4490 (+!4490 (getCurrentListMapNoExtraKeys!6205 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23363 (select (arr!42838 _keys!1609) from!2000) (get!21570 (select (arr!42839 _values!1337) from!2000) (dynLambda!3527 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23363 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun mapNonEmpty!55526 () Bool)

(declare-fun tp!105774 () Bool)

(assert (=> mapNonEmpty!55526 (= mapRes!55526 (and tp!105774 e!752554))))

(declare-fun mapRest!55526 () (Array (_ BitVec 32) ValueCell!17061))

(declare-fun mapKey!55526 () (_ BitVec 32))

(declare-fun mapValue!55526 () ValueCell!17061)

(assert (=> mapNonEmpty!55526 (= (arr!42839 _values!1337) (store mapRest!55526 mapKey!55526 mapValue!55526))))

(declare-fun b!1318859 () Bool)

(declare-fun res!875392 () Bool)

(assert (=> b!1318859 (=> (not res!875392) (not e!752557))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88737 (_ BitVec 32)) Bool)

(assert (=> b!1318859 (= res!875392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(assert (= (and start!111478 res!875385) b!1318850))

(assert (= (and b!1318850 res!875390) b!1318859))

(assert (= (and b!1318859 res!875392) b!1318852))

(assert (= (and b!1318852 res!875387) b!1318851))

(assert (= (and b!1318851 res!875386) b!1318853))

(assert (= (and b!1318853 res!875391) b!1318855))

(assert (= (and b!1318855 res!875389) b!1318854))

(assert (= (and b!1318854 res!875388) b!1318858))

(assert (= (and b!1318856 condMapEmpty!55526) mapIsEmpty!55526))

(assert (= (and b!1318856 (not condMapEmpty!55526)) mapNonEmpty!55526))

(get-info :version)

(assert (= (and mapNonEmpty!55526 ((_ is ValueCellFull!17061) mapValue!55526)) b!1318849))

(assert (= (and b!1318856 ((_ is ValueCellFull!17061) mapDefault!55526)) b!1318857))

(assert (= start!111478 b!1318856))

(declare-fun b_lambda!23435 () Bool)

(assert (=> (not b_lambda!23435) (not b!1318858)))

(declare-fun t!44206 () Bool)

(declare-fun tb!11459 () Bool)

(assert (=> (and start!111478 (= defaultEntry!1340 defaultEntry!1340) t!44206) tb!11459))

(declare-fun result!23965 () Bool)

(assert (=> tb!11459 (= result!23965 tp_is_empty!35919)))

(assert (=> b!1318858 t!44206))

(declare-fun b_and!48369 () Bool)

(assert (= b_and!48367 (and (=> t!44206 result!23965) b_and!48369)))

(declare-fun m!1206471 () Bool)

(assert (=> b!1318855 m!1206471))

(declare-fun m!1206473 () Bool)

(assert (=> mapNonEmpty!55526 m!1206473))

(declare-fun m!1206475 () Bool)

(assert (=> b!1318853 m!1206475))

(assert (=> b!1318853 m!1206475))

(declare-fun m!1206477 () Bool)

(assert (=> b!1318853 m!1206477))

(assert (=> b!1318854 m!1206471))

(assert (=> b!1318854 m!1206471))

(declare-fun m!1206479 () Bool)

(assert (=> b!1318854 m!1206479))

(declare-fun m!1206481 () Bool)

(assert (=> b!1318858 m!1206481))

(assert (=> b!1318858 m!1206481))

(declare-fun m!1206483 () Bool)

(assert (=> b!1318858 m!1206483))

(declare-fun m!1206485 () Bool)

(assert (=> b!1318858 m!1206485))

(declare-fun m!1206487 () Bool)

(assert (=> b!1318858 m!1206487))

(assert (=> b!1318858 m!1206483))

(declare-fun m!1206489 () Bool)

(assert (=> b!1318858 m!1206489))

(assert (=> b!1318858 m!1206487))

(declare-fun m!1206491 () Bool)

(assert (=> b!1318858 m!1206491))

(declare-fun m!1206493 () Bool)

(assert (=> b!1318858 m!1206493))

(assert (=> b!1318858 m!1206471))

(assert (=> b!1318858 m!1206491))

(declare-fun m!1206495 () Bool)

(assert (=> b!1318858 m!1206495))

(declare-fun m!1206497 () Bool)

(assert (=> b!1318852 m!1206497))

(declare-fun m!1206499 () Bool)

(assert (=> b!1318859 m!1206499))

(declare-fun m!1206501 () Bool)

(assert (=> start!111478 m!1206501))

(declare-fun m!1206503 () Bool)

(assert (=> start!111478 m!1206503))

(declare-fun m!1206505 () Bool)

(assert (=> start!111478 m!1206505))

(check-sat (not start!111478) (not b!1318858) b_and!48369 tp_is_empty!35919 (not b_lambda!23435) (not b!1318854) (not mapNonEmpty!55526) (not b!1318852) (not b_next!30099) (not b!1318859) (not b!1318853))
(check-sat b_and!48369 (not b_next!30099))

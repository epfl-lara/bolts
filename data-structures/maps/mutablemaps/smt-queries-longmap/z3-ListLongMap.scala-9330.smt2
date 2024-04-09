; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111454 () Bool)

(assert start!111454)

(declare-fun b_free!30075 () Bool)

(declare-fun b_next!30075 () Bool)

(assert (=> start!111454 (= b_free!30075 (not b_next!30075))))

(declare-fun tp!105701 () Bool)

(declare-fun b_and!48319 () Bool)

(assert (=> start!111454 (= tp!105701 b_and!48319)))

(declare-fun mapIsEmpty!55490 () Bool)

(declare-fun mapRes!55490 () Bool)

(assert (=> mapIsEmpty!55490 mapRes!55490))

(declare-fun b!1318429 () Bool)

(declare-fun res!875104 () Bool)

(declare-fun e!752375 () Bool)

(assert (=> b!1318429 (=> (not res!875104) (not e!752375))))

(declare-datatypes ((array!88691 0))(
  ( (array!88692 (arr!42815 (Array (_ BitVec 32) (_ BitVec 64))) (size!43366 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88691)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88691 (_ BitVec 32)) Bool)

(assert (=> b!1318429 (= res!875104 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun res!875103 () Bool)

(assert (=> start!111454 (=> (not res!875103) (not e!752375))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111454 (= res!875103 (validMask!0 mask!2019))))

(assert (=> start!111454 e!752375))

(declare-fun array_inv!32283 (array!88691) Bool)

(assert (=> start!111454 (array_inv!32283 _keys!1609)))

(assert (=> start!111454 true))

(declare-fun tp_is_empty!35895 () Bool)

(assert (=> start!111454 tp_is_empty!35895))

(declare-datatypes ((V!52963 0))(
  ( (V!52964 (val!18022 Int)) )
))
(declare-datatypes ((ValueCell!17049 0))(
  ( (ValueCellFull!17049 (v!20650 V!52963)) (EmptyCell!17049) )
))
(declare-datatypes ((array!88693 0))(
  ( (array!88694 (arr!42816 (Array (_ BitVec 32) ValueCell!17049)) (size!43367 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88693)

(declare-fun e!752376 () Bool)

(declare-fun array_inv!32284 (array!88693) Bool)

(assert (=> start!111454 (and (array_inv!32284 _values!1337) e!752376)))

(assert (=> start!111454 tp!105701))

(declare-fun b!1318430 () Bool)

(declare-fun e!752373 () Bool)

(assert (=> b!1318430 (= e!752373 tp_is_empty!35895)))

(declare-fun b!1318431 () Bool)

(declare-fun res!875100 () Bool)

(assert (=> b!1318431 (=> (not res!875100) (not e!752375))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1318431 (= res!875100 (and (= (size!43367 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43366 _keys!1609) (size!43367 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!55490 () Bool)

(declare-fun tp!105702 () Bool)

(declare-fun e!752374 () Bool)

(assert (=> mapNonEmpty!55490 (= mapRes!55490 (and tp!105702 e!752374))))

(declare-fun mapValue!55490 () ValueCell!17049)

(declare-fun mapKey!55490 () (_ BitVec 32))

(declare-fun mapRest!55490 () (Array (_ BitVec 32) ValueCell!17049))

(assert (=> mapNonEmpty!55490 (= (arr!42816 _values!1337) (store mapRest!55490 mapKey!55490 mapValue!55490))))

(declare-fun b!1318432 () Bool)

(declare-fun res!875097 () Bool)

(assert (=> b!1318432 (=> (not res!875097) (not e!752375))))

(declare-datatypes ((List!30537 0))(
  ( (Nil!30534) (Cons!30533 (h!31742 (_ BitVec 64)) (t!44168 List!30537)) )
))
(declare-fun arrayNoDuplicates!0 (array!88691 (_ BitVec 32) List!30537) Bool)

(assert (=> b!1318432 (= res!875097 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30534))))

(declare-fun b!1318433 () Bool)

(assert (=> b!1318433 (= e!752374 tp_is_empty!35895)))

(declare-fun b!1318434 () Bool)

(assert (=> b!1318434 (= e!752375 (not true))))

(declare-datatypes ((tuple2!23346 0))(
  ( (tuple2!23347 (_1!11683 (_ BitVec 64)) (_2!11683 V!52963)) )
))
(declare-datatypes ((List!30538 0))(
  ( (Nil!30535) (Cons!30534 (h!31743 tuple2!23346) (t!44169 List!30538)) )
))
(declare-datatypes ((ListLongMap!21015 0))(
  ( (ListLongMap!21016 (toList!10523 List!30538)) )
))
(declare-fun lt!586417 () ListLongMap!21015)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun contains!8614 (ListLongMap!21015 (_ BitVec 64)) Bool)

(assert (=> b!1318434 (contains!8614 lt!586417 k0!1164)))

(declare-datatypes ((Unit!43366 0))(
  ( (Unit!43367) )
))
(declare-fun lt!586416 () Unit!43366)

(declare-fun minValue!1279 () V!52963)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!98 ((_ BitVec 64) (_ BitVec 64) V!52963 ListLongMap!21015) Unit!43366)

(assert (=> b!1318434 (= lt!586416 (lemmaInListMapAfterAddingDiffThenInBefore!98 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586417))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!52963)

(declare-fun defaultEntry!1340 () Int)

(declare-fun +!4483 (ListLongMap!21015 tuple2!23346) ListLongMap!21015)

(declare-fun getCurrentListMapNoExtraKeys!6198 (array!88691 array!88693 (_ BitVec 32) (_ BitVec 32) V!52963 V!52963 (_ BitVec 32) Int) ListLongMap!21015)

(declare-fun get!21555 (ValueCell!17049 V!52963) V!52963)

(declare-fun dynLambda!3520 (Int (_ BitVec 64)) V!52963)

(assert (=> b!1318434 (= lt!586417 (+!4483 (+!4483 (getCurrentListMapNoExtraKeys!6198 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23347 (select (arr!42815 _keys!1609) from!2000) (get!21555 (select (arr!42816 _values!1337) from!2000) (dynLambda!3520 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23347 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun b!1318435 () Bool)

(declare-fun res!875102 () Bool)

(assert (=> b!1318435 (=> (not res!875102) (not e!752375))))

(declare-fun getCurrentListMap!5478 (array!88691 array!88693 (_ BitVec 32) (_ BitVec 32) V!52963 V!52963 (_ BitVec 32) Int) ListLongMap!21015)

(assert (=> b!1318435 (= res!875102 (contains!8614 (getCurrentListMap!5478 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1318436 () Bool)

(declare-fun res!875098 () Bool)

(assert (=> b!1318436 (=> (not res!875098) (not e!752375))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1318436 (= res!875098 (validKeyInArray!0 (select (arr!42815 _keys!1609) from!2000)))))

(declare-fun b!1318437 () Bool)

(assert (=> b!1318437 (= e!752376 (and e!752373 mapRes!55490))))

(declare-fun condMapEmpty!55490 () Bool)

(declare-fun mapDefault!55490 () ValueCell!17049)

(assert (=> b!1318437 (= condMapEmpty!55490 (= (arr!42816 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17049)) mapDefault!55490)))))

(declare-fun b!1318438 () Bool)

(declare-fun res!875101 () Bool)

(assert (=> b!1318438 (=> (not res!875101) (not e!752375))))

(assert (=> b!1318438 (= res!875101 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43366 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1318439 () Bool)

(declare-fun res!875099 () Bool)

(assert (=> b!1318439 (=> (not res!875099) (not e!752375))))

(assert (=> b!1318439 (= res!875099 (not (= (select (arr!42815 _keys!1609) from!2000) k0!1164)))))

(assert (= (and start!111454 res!875103) b!1318431))

(assert (= (and b!1318431 res!875100) b!1318429))

(assert (= (and b!1318429 res!875104) b!1318432))

(assert (= (and b!1318432 res!875097) b!1318438))

(assert (= (and b!1318438 res!875101) b!1318435))

(assert (= (and b!1318435 res!875102) b!1318439))

(assert (= (and b!1318439 res!875099) b!1318436))

(assert (= (and b!1318436 res!875098) b!1318434))

(assert (= (and b!1318437 condMapEmpty!55490) mapIsEmpty!55490))

(assert (= (and b!1318437 (not condMapEmpty!55490)) mapNonEmpty!55490))

(get-info :version)

(assert (= (and mapNonEmpty!55490 ((_ is ValueCellFull!17049) mapValue!55490)) b!1318433))

(assert (= (and b!1318437 ((_ is ValueCellFull!17049) mapDefault!55490)) b!1318430))

(assert (= start!111454 b!1318437))

(declare-fun b_lambda!23411 () Bool)

(assert (=> (not b_lambda!23411) (not b!1318434)))

(declare-fun t!44167 () Bool)

(declare-fun tb!11435 () Bool)

(assert (=> (and start!111454 (= defaultEntry!1340 defaultEntry!1340) t!44167) tb!11435))

(declare-fun result!23917 () Bool)

(assert (=> tb!11435 (= result!23917 tp_is_empty!35895)))

(assert (=> b!1318434 t!44167))

(declare-fun b_and!48321 () Bool)

(assert (= b_and!48319 (and (=> t!44167 result!23917) b_and!48321)))

(declare-fun m!1206039 () Bool)

(assert (=> b!1318434 m!1206039))

(declare-fun m!1206041 () Bool)

(assert (=> b!1318434 m!1206041))

(declare-fun m!1206043 () Bool)

(assert (=> b!1318434 m!1206043))

(assert (=> b!1318434 m!1206041))

(declare-fun m!1206045 () Bool)

(assert (=> b!1318434 m!1206045))

(declare-fun m!1206047 () Bool)

(assert (=> b!1318434 m!1206047))

(declare-fun m!1206049 () Bool)

(assert (=> b!1318434 m!1206049))

(assert (=> b!1318434 m!1206045))

(declare-fun m!1206051 () Bool)

(assert (=> b!1318434 m!1206051))

(assert (=> b!1318434 m!1206049))

(assert (=> b!1318434 m!1206043))

(declare-fun m!1206053 () Bool)

(assert (=> b!1318434 m!1206053))

(declare-fun m!1206055 () Bool)

(assert (=> b!1318434 m!1206055))

(declare-fun m!1206057 () Bool)

(assert (=> start!111454 m!1206057))

(declare-fun m!1206059 () Bool)

(assert (=> start!111454 m!1206059))

(declare-fun m!1206061 () Bool)

(assert (=> start!111454 m!1206061))

(assert (=> b!1318436 m!1206055))

(assert (=> b!1318436 m!1206055))

(declare-fun m!1206063 () Bool)

(assert (=> b!1318436 m!1206063))

(declare-fun m!1206065 () Bool)

(assert (=> b!1318435 m!1206065))

(assert (=> b!1318435 m!1206065))

(declare-fun m!1206067 () Bool)

(assert (=> b!1318435 m!1206067))

(declare-fun m!1206069 () Bool)

(assert (=> b!1318429 m!1206069))

(declare-fun m!1206071 () Bool)

(assert (=> mapNonEmpty!55490 m!1206071))

(assert (=> b!1318439 m!1206055))

(declare-fun m!1206073 () Bool)

(assert (=> b!1318432 m!1206073))

(check-sat (not b!1318429) b_and!48321 (not b_lambda!23411) (not b!1318432) (not b!1318436) (not b!1318434) (not b!1318435) (not mapNonEmpty!55490) (not start!111454) (not b_next!30075) tp_is_empty!35895)
(check-sat b_and!48321 (not b_next!30075))

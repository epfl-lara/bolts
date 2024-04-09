; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111832 () Bool)

(assert start!111832)

(declare-fun b_free!30453 () Bool)

(declare-fun b_next!30453 () Bool)

(assert (=> start!111832 (= b_free!30453 (not b_next!30453))))

(declare-fun tp!106835 () Bool)

(declare-fun b_and!49001 () Bool)

(assert (=> start!111832 (= tp!106835 b_and!49001)))

(declare-fun b!1324700 () Bool)

(declare-fun e!755210 () Bool)

(declare-fun e!755209 () Bool)

(declare-fun mapRes!56057 () Bool)

(assert (=> b!1324700 (= e!755210 (and e!755209 mapRes!56057))))

(declare-fun condMapEmpty!56057 () Bool)

(declare-datatypes ((V!53467 0))(
  ( (V!53468 (val!18211 Int)) )
))
(declare-datatypes ((ValueCell!17238 0))(
  ( (ValueCellFull!17238 (v!20839 V!53467)) (EmptyCell!17238) )
))
(declare-datatypes ((array!89415 0))(
  ( (array!89416 (arr!43177 (Array (_ BitVec 32) ValueCell!17238)) (size!43728 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89415)

(declare-fun mapDefault!56057 () ValueCell!17238)

(assert (=> b!1324700 (= condMapEmpty!56057 (= (arr!43177 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17238)) mapDefault!56057)))))

(declare-fun b!1324701 () Bool)

(declare-fun res!879366 () Bool)

(declare-fun e!755211 () Bool)

(assert (=> b!1324701 (=> (not res!879366) (not e!755211))))

(declare-datatypes ((array!89417 0))(
  ( (array!89418 (arr!43178 (Array (_ BitVec 32) (_ BitVec 64))) (size!43729 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89417)

(declare-datatypes ((List!30807 0))(
  ( (Nil!30804) (Cons!30803 (h!32012 (_ BitVec 64)) (t!44740 List!30807)) )
))
(declare-fun arrayNoDuplicates!0 (array!89417 (_ BitVec 32) List!30807) Bool)

(assert (=> b!1324701 (= res!879366 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30804))))

(declare-fun b!1324702 () Bool)

(declare-fun res!879364 () Bool)

(assert (=> b!1324702 (=> (not res!879364) (not e!755211))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89417 (_ BitVec 32)) Bool)

(assert (=> b!1324702 (= res!879364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1324703 () Bool)

(declare-fun tp_is_empty!36273 () Bool)

(assert (=> b!1324703 (= e!755209 tp_is_empty!36273)))

(declare-fun b!1324704 () Bool)

(declare-fun res!879367 () Bool)

(assert (=> b!1324704 (=> (not res!879367) (not e!755211))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1324704 (= res!879367 (not (= (select (arr!43178 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1324705 () Bool)

(declare-fun res!879368 () Bool)

(assert (=> b!1324705 (=> (not res!879368) (not e!755211))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1324705 (= res!879368 (validKeyInArray!0 (select (arr!43178 _keys!1609) from!2000)))))

(declare-fun b!1324706 () Bool)

(declare-fun e!755212 () Bool)

(assert (=> b!1324706 (= e!755212 tp_is_empty!36273)))

(declare-fun b!1324707 () Bool)

(declare-fun res!879369 () Bool)

(assert (=> b!1324707 (=> (not res!879369) (not e!755211))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1324707 (= res!879369 (and (= (size!43728 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43729 _keys!1609) (size!43728 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!56057 () Bool)

(declare-fun tp!106836 () Bool)

(assert (=> mapNonEmpty!56057 (= mapRes!56057 (and tp!106836 e!755212))))

(declare-fun mapValue!56057 () ValueCell!17238)

(declare-fun mapRest!56057 () (Array (_ BitVec 32) ValueCell!17238))

(declare-fun mapKey!56057 () (_ BitVec 32))

(assert (=> mapNonEmpty!56057 (= (arr!43177 _values!1337) (store mapRest!56057 mapKey!56057 mapValue!56057))))

(declare-fun b!1324708 () Bool)

(assert (=> b!1324708 (= e!755211 (bvsge from!2000 (size!43728 _values!1337)))))

(declare-fun zeroValue!1279 () V!53467)

(declare-fun minValue!1279 () V!53467)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23638 0))(
  ( (tuple2!23639 (_1!11829 (_ BitVec 64)) (_2!11829 V!53467)) )
))
(declare-datatypes ((List!30808 0))(
  ( (Nil!30805) (Cons!30804 (h!32013 tuple2!23638) (t!44741 List!30808)) )
))
(declare-datatypes ((ListLongMap!21307 0))(
  ( (ListLongMap!21308 (toList!10669 List!30808)) )
))
(declare-fun lt!589435 () ListLongMap!21307)

(declare-fun getCurrentListMapNoExtraKeys!6303 (array!89417 array!89415 (_ BitVec 32) (_ BitVec 32) V!53467 V!53467 (_ BitVec 32) Int) ListLongMap!21307)

(assert (=> b!1324708 (= lt!589435 (getCurrentListMapNoExtraKeys!6303 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1324709 () Bool)

(declare-fun res!879365 () Bool)

(assert (=> b!1324709 (=> (not res!879365) (not e!755211))))

(declare-fun contains!8760 (ListLongMap!21307 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5606 (array!89417 array!89415 (_ BitVec 32) (_ BitVec 32) V!53467 V!53467 (_ BitVec 32) Int) ListLongMap!21307)

(assert (=> b!1324709 (= res!879365 (contains!8760 (getCurrentListMap!5606 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun res!879363 () Bool)

(assert (=> start!111832 (=> (not res!879363) (not e!755211))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111832 (= res!879363 (validMask!0 mask!2019))))

(assert (=> start!111832 e!755211))

(declare-fun array_inv!32535 (array!89417) Bool)

(assert (=> start!111832 (array_inv!32535 _keys!1609)))

(assert (=> start!111832 true))

(assert (=> start!111832 tp_is_empty!36273))

(declare-fun array_inv!32536 (array!89415) Bool)

(assert (=> start!111832 (and (array_inv!32536 _values!1337) e!755210)))

(assert (=> start!111832 tp!106835))

(declare-fun mapIsEmpty!56057 () Bool)

(assert (=> mapIsEmpty!56057 mapRes!56057))

(declare-fun b!1324710 () Bool)

(declare-fun res!879370 () Bool)

(assert (=> b!1324710 (=> (not res!879370) (not e!755211))))

(assert (=> b!1324710 (= res!879370 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43729 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!111832 res!879363) b!1324707))

(assert (= (and b!1324707 res!879369) b!1324702))

(assert (= (and b!1324702 res!879364) b!1324701))

(assert (= (and b!1324701 res!879366) b!1324710))

(assert (= (and b!1324710 res!879370) b!1324709))

(assert (= (and b!1324709 res!879365) b!1324704))

(assert (= (and b!1324704 res!879367) b!1324705))

(assert (= (and b!1324705 res!879368) b!1324708))

(assert (= (and b!1324700 condMapEmpty!56057) mapIsEmpty!56057))

(assert (= (and b!1324700 (not condMapEmpty!56057)) mapNonEmpty!56057))

(get-info :version)

(assert (= (and mapNonEmpty!56057 ((_ is ValueCellFull!17238) mapValue!56057)) b!1324706))

(assert (= (and b!1324700 ((_ is ValueCellFull!17238) mapDefault!56057)) b!1324703))

(assert (= start!111832 b!1324700))

(declare-fun m!1213471 () Bool)

(assert (=> b!1324704 m!1213471))

(declare-fun m!1213473 () Bool)

(assert (=> mapNonEmpty!56057 m!1213473))

(declare-fun m!1213475 () Bool)

(assert (=> b!1324708 m!1213475))

(declare-fun m!1213477 () Bool)

(assert (=> b!1324709 m!1213477))

(assert (=> b!1324709 m!1213477))

(declare-fun m!1213479 () Bool)

(assert (=> b!1324709 m!1213479))

(declare-fun m!1213481 () Bool)

(assert (=> b!1324701 m!1213481))

(assert (=> b!1324705 m!1213471))

(assert (=> b!1324705 m!1213471))

(declare-fun m!1213483 () Bool)

(assert (=> b!1324705 m!1213483))

(declare-fun m!1213485 () Bool)

(assert (=> b!1324702 m!1213485))

(declare-fun m!1213487 () Bool)

(assert (=> start!111832 m!1213487))

(declare-fun m!1213489 () Bool)

(assert (=> start!111832 m!1213489))

(declare-fun m!1213491 () Bool)

(assert (=> start!111832 m!1213491))

(check-sat b_and!49001 (not b!1324701) (not mapNonEmpty!56057) (not b_next!30453) (not b!1324702) tp_is_empty!36273 (not b!1324708) (not b!1324705) (not b!1324709) (not start!111832))
(check-sat b_and!49001 (not b_next!30453))

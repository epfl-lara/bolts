; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111742 () Bool)

(assert start!111742)

(declare-fun b_free!30363 () Bool)

(declare-fun b_next!30363 () Bool)

(assert (=> start!111742 (= b_free!30363 (not b_next!30363))))

(declare-fun tp!106566 () Bool)

(declare-fun b_and!48895 () Bool)

(assert (=> start!111742 (= tp!106566 b_and!48895)))

(declare-fun b!1323469 () Bool)

(declare-fun res!878560 () Bool)

(declare-fun e!754535 () Bool)

(assert (=> b!1323469 (=> (not res!878560) (not e!754535))))

(declare-datatypes ((array!89241 0))(
  ( (array!89242 (arr!43090 (Array (_ BitVec 32) (_ BitVec 64))) (size!43641 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89241)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53347 0))(
  ( (V!53348 (val!18166 Int)) )
))
(declare-datatypes ((ValueCell!17193 0))(
  ( (ValueCellFull!17193 (v!20794 V!53347)) (EmptyCell!17193) )
))
(declare-datatypes ((array!89243 0))(
  ( (array!89244 (arr!43091 (Array (_ BitVec 32) ValueCell!17193)) (size!43642 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89243)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1323469 (= res!878560 (and (= (size!43642 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43641 _keys!1609) (size!43642 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1323470 () Bool)

(declare-fun res!878555 () Bool)

(assert (=> b!1323470 (=> (not res!878555) (not e!754535))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1323470 (= res!878555 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43641 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1323472 () Bool)

(declare-fun res!878553 () Bool)

(assert (=> b!1323472 (=> (not res!878553) (not e!754535))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1323472 (= res!878553 (validKeyInArray!0 (select (arr!43090 _keys!1609) from!2000)))))

(declare-fun b!1323473 () Bool)

(declare-fun e!754537 () Bool)

(declare-fun tp_is_empty!36183 () Bool)

(assert (=> b!1323473 (= e!754537 tp_is_empty!36183)))

(declare-fun mapNonEmpty!55922 () Bool)

(declare-fun mapRes!55922 () Bool)

(declare-fun tp!106565 () Bool)

(declare-fun e!754536 () Bool)

(assert (=> mapNonEmpty!55922 (= mapRes!55922 (and tp!106565 e!754536))))

(declare-fun mapValue!55922 () ValueCell!17193)

(declare-fun mapRest!55922 () (Array (_ BitVec 32) ValueCell!17193))

(declare-fun mapKey!55922 () (_ BitVec 32))

(assert (=> mapNonEmpty!55922 (= (arr!43091 _values!1337) (store mapRest!55922 mapKey!55922 mapValue!55922))))

(declare-fun b!1323474 () Bool)

(assert (=> b!1323474 (= e!754535 (not true))))

(declare-datatypes ((tuple2!23570 0))(
  ( (tuple2!23571 (_1!11795 (_ BitVec 64)) (_2!11795 V!53347)) )
))
(declare-datatypes ((List!30744 0))(
  ( (Nil!30741) (Cons!30740 (h!31949 tuple2!23570) (t!44663 List!30744)) )
))
(declare-datatypes ((ListLongMap!21239 0))(
  ( (ListLongMap!21240 (toList!10635 List!30744)) )
))
(declare-fun lt!589099 () ListLongMap!21239)

(declare-fun minValue!1279 () V!53347)

(declare-fun contains!8726 (ListLongMap!21239 (_ BitVec 64)) Bool)

(declare-fun +!4582 (ListLongMap!21239 tuple2!23570) ListLongMap!21239)

(assert (=> b!1323474 (contains!8726 (+!4582 lt!589099 (tuple2!23571 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k0!1164)))

(declare-datatypes ((Unit!43564 0))(
  ( (Unit!43565) )
))
(declare-fun lt!589090 () Unit!43564)

(declare-fun addStillContains!1163 (ListLongMap!21239 (_ BitVec 64) V!53347 (_ BitVec 64)) Unit!43564)

(assert (=> b!1323474 (= lt!589090 (addStillContains!1163 lt!589099 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 k0!1164))))

(assert (=> b!1323474 (contains!8726 lt!589099 k0!1164)))

(declare-fun lt!589096 () ListLongMap!21239)

(declare-fun lt!589093 () tuple2!23570)

(assert (=> b!1323474 (= lt!589099 (+!4582 lt!589096 lt!589093))))

(declare-fun zeroValue!1279 () V!53347)

(declare-fun lt!589089 () Unit!43564)

(assert (=> b!1323474 (= lt!589089 (addStillContains!1163 lt!589096 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k0!1164))))

(assert (=> b!1323474 (contains!8726 lt!589096 k0!1164)))

(declare-fun lt!589098 () Unit!43564)

(declare-fun lt!589091 () V!53347)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!197 ((_ BitVec 64) (_ BitVec 64) V!53347 ListLongMap!21239) Unit!43564)

(assert (=> b!1323474 (= lt!589098 (lemmaInListMapAfterAddingDiffThenInBefore!197 k0!1164 (select (arr!43090 _keys!1609) from!2000) lt!589091 lt!589096))))

(declare-fun lt!589094 () ListLongMap!21239)

(assert (=> b!1323474 (contains!8726 lt!589094 k0!1164)))

(declare-fun lt!589092 () Unit!43564)

(assert (=> b!1323474 (= lt!589092 (lemmaInListMapAfterAddingDiffThenInBefore!197 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!589094))))

(declare-fun lt!589095 () ListLongMap!21239)

(assert (=> b!1323474 (contains!8726 lt!589095 k0!1164)))

(declare-fun lt!589097 () Unit!43564)

(assert (=> b!1323474 (= lt!589097 (lemmaInListMapAfterAddingDiffThenInBefore!197 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!589095))))

(assert (=> b!1323474 (= lt!589095 (+!4582 lt!589094 lt!589093))))

(assert (=> b!1323474 (= lt!589093 (tuple2!23571 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1323474 (= lt!589094 (+!4582 lt!589096 (tuple2!23571 (select (arr!43090 _keys!1609) from!2000) lt!589091)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21750 (ValueCell!17193 V!53347) V!53347)

(declare-fun dynLambda!3619 (Int (_ BitVec 64)) V!53347)

(assert (=> b!1323474 (= lt!589091 (get!21750 (select (arr!43091 _values!1337) from!2000) (dynLambda!3619 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6297 (array!89241 array!89243 (_ BitVec 32) (_ BitVec 32) V!53347 V!53347 (_ BitVec 32) Int) ListLongMap!21239)

(assert (=> b!1323474 (= lt!589096 (getCurrentListMapNoExtraKeys!6297 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1323475 () Bool)

(declare-fun res!878556 () Bool)

(assert (=> b!1323475 (=> (not res!878556) (not e!754535))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89241 (_ BitVec 32)) Bool)

(assert (=> b!1323475 (= res!878556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1323476 () Bool)

(declare-fun res!878558 () Bool)

(assert (=> b!1323476 (=> (not res!878558) (not e!754535))))

(declare-fun getCurrentListMap!5573 (array!89241 array!89243 (_ BitVec 32) (_ BitVec 32) V!53347 V!53347 (_ BitVec 32) Int) ListLongMap!21239)

(assert (=> b!1323476 (= res!878558 (contains!8726 (getCurrentListMap!5573 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1323477 () Bool)

(declare-fun e!754533 () Bool)

(assert (=> b!1323477 (= e!754533 (and e!754537 mapRes!55922))))

(declare-fun condMapEmpty!55922 () Bool)

(declare-fun mapDefault!55922 () ValueCell!17193)

(assert (=> b!1323477 (= condMapEmpty!55922 (= (arr!43091 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17193)) mapDefault!55922)))))

(declare-fun b!1323478 () Bool)

(declare-fun res!878559 () Bool)

(assert (=> b!1323478 (=> (not res!878559) (not e!754535))))

(assert (=> b!1323478 (= res!878559 (not (= (select (arr!43090 _keys!1609) from!2000) k0!1164)))))

(declare-fun res!878557 () Bool)

(assert (=> start!111742 (=> (not res!878557) (not e!754535))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111742 (= res!878557 (validMask!0 mask!2019))))

(assert (=> start!111742 e!754535))

(declare-fun array_inv!32485 (array!89241) Bool)

(assert (=> start!111742 (array_inv!32485 _keys!1609)))

(assert (=> start!111742 true))

(assert (=> start!111742 tp_is_empty!36183))

(declare-fun array_inv!32486 (array!89243) Bool)

(assert (=> start!111742 (and (array_inv!32486 _values!1337) e!754533)))

(assert (=> start!111742 tp!106566))

(declare-fun b!1323471 () Bool)

(assert (=> b!1323471 (= e!754536 tp_is_empty!36183)))

(declare-fun mapIsEmpty!55922 () Bool)

(assert (=> mapIsEmpty!55922 mapRes!55922))

(declare-fun b!1323479 () Bool)

(declare-fun res!878554 () Bool)

(assert (=> b!1323479 (=> (not res!878554) (not e!754535))))

(declare-datatypes ((List!30745 0))(
  ( (Nil!30742) (Cons!30741 (h!31950 (_ BitVec 64)) (t!44664 List!30745)) )
))
(declare-fun arrayNoDuplicates!0 (array!89241 (_ BitVec 32) List!30745) Bool)

(assert (=> b!1323479 (= res!878554 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30742))))

(assert (= (and start!111742 res!878557) b!1323469))

(assert (= (and b!1323469 res!878560) b!1323475))

(assert (= (and b!1323475 res!878556) b!1323479))

(assert (= (and b!1323479 res!878554) b!1323470))

(assert (= (and b!1323470 res!878555) b!1323476))

(assert (= (and b!1323476 res!878558) b!1323478))

(assert (= (and b!1323478 res!878559) b!1323472))

(assert (= (and b!1323472 res!878553) b!1323474))

(assert (= (and b!1323477 condMapEmpty!55922) mapIsEmpty!55922))

(assert (= (and b!1323477 (not condMapEmpty!55922)) mapNonEmpty!55922))

(get-info :version)

(assert (= (and mapNonEmpty!55922 ((_ is ValueCellFull!17193) mapValue!55922)) b!1323471))

(assert (= (and b!1323477 ((_ is ValueCellFull!17193) mapDefault!55922)) b!1323473))

(assert (= start!111742 b!1323477))

(declare-fun b_lambda!23699 () Bool)

(assert (=> (not b_lambda!23699) (not b!1323474)))

(declare-fun t!44662 () Bool)

(declare-fun tb!11723 () Bool)

(assert (=> (and start!111742 (= defaultEntry!1340 defaultEntry!1340) t!44662) tb!11723))

(declare-fun result!24493 () Bool)

(assert (=> tb!11723 (= result!24493 tp_is_empty!36183)))

(assert (=> b!1323474 t!44662))

(declare-fun b_and!48897 () Bool)

(assert (= b_and!48895 (and (=> t!44662 result!24493) b_and!48897)))

(declare-fun m!1212395 () Bool)

(assert (=> start!111742 m!1212395))

(declare-fun m!1212397 () Bool)

(assert (=> start!111742 m!1212397))

(declare-fun m!1212399 () Bool)

(assert (=> start!111742 m!1212399))

(declare-fun m!1212401 () Bool)

(assert (=> b!1323476 m!1212401))

(assert (=> b!1323476 m!1212401))

(declare-fun m!1212403 () Bool)

(assert (=> b!1323476 m!1212403))

(declare-fun m!1212405 () Bool)

(assert (=> b!1323472 m!1212405))

(assert (=> b!1323472 m!1212405))

(declare-fun m!1212407 () Bool)

(assert (=> b!1323472 m!1212407))

(assert (=> b!1323478 m!1212405))

(declare-fun m!1212409 () Bool)

(assert (=> b!1323479 m!1212409))

(declare-fun m!1212411 () Bool)

(assert (=> b!1323474 m!1212411))

(declare-fun m!1212413 () Bool)

(assert (=> b!1323474 m!1212413))

(declare-fun m!1212415 () Bool)

(assert (=> b!1323474 m!1212415))

(declare-fun m!1212417 () Bool)

(assert (=> b!1323474 m!1212417))

(declare-fun m!1212419 () Bool)

(assert (=> b!1323474 m!1212419))

(declare-fun m!1212421 () Bool)

(assert (=> b!1323474 m!1212421))

(declare-fun m!1212423 () Bool)

(assert (=> b!1323474 m!1212423))

(declare-fun m!1212425 () Bool)

(assert (=> b!1323474 m!1212425))

(assert (=> b!1323474 m!1212405))

(declare-fun m!1212427 () Bool)

(assert (=> b!1323474 m!1212427))

(declare-fun m!1212429 () Bool)

(assert (=> b!1323474 m!1212429))

(declare-fun m!1212431 () Bool)

(assert (=> b!1323474 m!1212431))

(declare-fun m!1212433 () Bool)

(assert (=> b!1323474 m!1212433))

(declare-fun m!1212435 () Bool)

(assert (=> b!1323474 m!1212435))

(assert (=> b!1323474 m!1212421))

(assert (=> b!1323474 m!1212433))

(declare-fun m!1212437 () Bool)

(assert (=> b!1323474 m!1212437))

(declare-fun m!1212439 () Bool)

(assert (=> b!1323474 m!1212439))

(declare-fun m!1212441 () Bool)

(assert (=> b!1323474 m!1212441))

(assert (=> b!1323474 m!1212405))

(declare-fun m!1212443 () Bool)

(assert (=> b!1323474 m!1212443))

(declare-fun m!1212445 () Bool)

(assert (=> b!1323474 m!1212445))

(assert (=> b!1323474 m!1212439))

(declare-fun m!1212447 () Bool)

(assert (=> b!1323475 m!1212447))

(declare-fun m!1212449 () Bool)

(assert (=> mapNonEmpty!55922 m!1212449))

(check-sat (not b_next!30363) (not b!1323476) (not b!1323472) (not b!1323479) tp_is_empty!36183 b_and!48897 (not b!1323474) (not b!1323475) (not b_lambda!23699) (not start!111742) (not mapNonEmpty!55922))
(check-sat b_and!48897 (not b_next!30363))

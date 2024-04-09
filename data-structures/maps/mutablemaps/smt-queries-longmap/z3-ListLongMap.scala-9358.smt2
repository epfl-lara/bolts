; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111622 () Bool)

(assert start!111622)

(declare-fun b_free!30243 () Bool)

(declare-fun b_next!30243 () Bool)

(assert (=> start!111622 (= b_free!30243 (not b_next!30243))))

(declare-fun tp!106205 () Bool)

(declare-fun b_and!48655 () Bool)

(assert (=> start!111622 (= tp!106205 b_and!48655)))

(declare-fun b!1321369 () Bool)

(declare-fun res!877119 () Bool)

(declare-fun e!753636 () Bool)

(assert (=> b!1321369 (=> (not res!877119) (not e!753636))))

(declare-datatypes ((array!89015 0))(
  ( (array!89016 (arr!42977 (Array (_ BitVec 32) (_ BitVec 64))) (size!43528 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89015)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53187 0))(
  ( (V!53188 (val!18106 Int)) )
))
(declare-fun zeroValue!1279 () V!53187)

(declare-datatypes ((ValueCell!17133 0))(
  ( (ValueCellFull!17133 (v!20734 V!53187)) (EmptyCell!17133) )
))
(declare-datatypes ((array!89017 0))(
  ( (array!89018 (arr!42978 (Array (_ BitVec 32) ValueCell!17133)) (size!43529 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89017)

(declare-fun minValue!1279 () V!53187)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23482 0))(
  ( (tuple2!23483 (_1!11751 (_ BitVec 64)) (_2!11751 V!53187)) )
))
(declare-datatypes ((List!30661 0))(
  ( (Nil!30658) (Cons!30657 (h!31866 tuple2!23482) (t!44460 List!30661)) )
))
(declare-datatypes ((ListLongMap!21151 0))(
  ( (ListLongMap!21152 (toList!10591 List!30661)) )
))
(declare-fun contains!8682 (ListLongMap!21151 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5532 (array!89015 array!89017 (_ BitVec 32) (_ BitVec 32) V!53187 V!53187 (_ BitVec 32) Int) ListLongMap!21151)

(assert (=> b!1321369 (= res!877119 (contains!8682 (getCurrentListMap!5532 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1321370 () Bool)

(declare-fun res!877113 () Bool)

(assert (=> b!1321370 (=> (not res!877113) (not e!753636))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1321370 (= res!877113 (validKeyInArray!0 (select (arr!42977 _keys!1609) from!2000)))))

(declare-fun b!1321371 () Bool)

(declare-fun res!877117 () Bool)

(assert (=> b!1321371 (=> (not res!877117) (not e!753636))))

(assert (=> b!1321371 (= res!877117 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43528 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1321372 () Bool)

(declare-fun res!877116 () Bool)

(assert (=> b!1321372 (=> (not res!877116) (not e!753636))))

(declare-datatypes ((List!30662 0))(
  ( (Nil!30659) (Cons!30658 (h!31867 (_ BitVec 64)) (t!44461 List!30662)) )
))
(declare-fun arrayNoDuplicates!0 (array!89015 (_ BitVec 32) List!30662) Bool)

(assert (=> b!1321372 (= res!877116 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30659))))

(declare-fun b!1321373 () Bool)

(declare-fun e!753637 () Bool)

(declare-fun tp_is_empty!36063 () Bool)

(assert (=> b!1321373 (= e!753637 tp_is_empty!36063)))

(declare-fun mapNonEmpty!55742 () Bool)

(declare-fun mapRes!55742 () Bool)

(declare-fun tp!106206 () Bool)

(declare-fun e!753634 () Bool)

(assert (=> mapNonEmpty!55742 (= mapRes!55742 (and tp!106206 e!753634))))

(declare-fun mapValue!55742 () ValueCell!17133)

(declare-fun mapRest!55742 () (Array (_ BitVec 32) ValueCell!17133))

(declare-fun mapKey!55742 () (_ BitVec 32))

(assert (=> mapNonEmpty!55742 (= (arr!42978 _values!1337) (store mapRest!55742 mapKey!55742 mapValue!55742))))

(declare-fun b!1321374 () Bool)

(declare-fun res!877120 () Bool)

(assert (=> b!1321374 (=> (not res!877120) (not e!753636))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89015 (_ BitVec 32)) Bool)

(assert (=> b!1321374 (= res!877120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1321375 () Bool)

(declare-fun e!753635 () Bool)

(assert (=> b!1321375 (= e!753635 (and e!753637 mapRes!55742))))

(declare-fun condMapEmpty!55742 () Bool)

(declare-fun mapDefault!55742 () ValueCell!17133)

(assert (=> b!1321375 (= condMapEmpty!55742 (= (arr!42978 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17133)) mapDefault!55742)))))

(declare-fun b!1321376 () Bool)

(assert (=> b!1321376 (= e!753634 tp_is_empty!36063)))

(declare-fun b!1321377 () Bool)

(declare-fun res!877114 () Bool)

(assert (=> b!1321377 (=> (not res!877114) (not e!753636))))

(assert (=> b!1321377 (= res!877114 (not (= (select (arr!42977 _keys!1609) from!2000) k0!1164)))))

(declare-fun mapIsEmpty!55742 () Bool)

(assert (=> mapIsEmpty!55742 mapRes!55742))

(declare-fun res!877118 () Bool)

(assert (=> start!111622 (=> (not res!877118) (not e!753636))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111622 (= res!877118 (validMask!0 mask!2019))))

(assert (=> start!111622 e!753636))

(declare-fun array_inv!32405 (array!89015) Bool)

(assert (=> start!111622 (array_inv!32405 _keys!1609)))

(assert (=> start!111622 true))

(assert (=> start!111622 tp_is_empty!36063))

(declare-fun array_inv!32406 (array!89017) Bool)

(assert (=> start!111622 (and (array_inv!32406 _values!1337) e!753635)))

(assert (=> start!111622 tp!106205))

(declare-fun b!1321378 () Bool)

(declare-fun res!877115 () Bool)

(assert (=> b!1321378 (=> (not res!877115) (not e!753636))))

(assert (=> b!1321378 (= res!877115 (and (= (size!43529 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43528 _keys!1609) (size!43529 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1321379 () Bool)

(assert (=> b!1321379 (= e!753636 (not true))))

(declare-fun lt!587418 () ListLongMap!21151)

(assert (=> b!1321379 (contains!8682 lt!587418 k0!1164)))

(declare-datatypes ((Unit!43488 0))(
  ( (Unit!43489) )
))
(declare-fun lt!587414 () Unit!43488)

(declare-fun lt!587415 () V!53187)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!159 ((_ BitVec 64) (_ BitVec 64) V!53187 ListLongMap!21151) Unit!43488)

(assert (=> b!1321379 (= lt!587414 (lemmaInListMapAfterAddingDiffThenInBefore!159 k0!1164 (select (arr!42977 _keys!1609) from!2000) lt!587415 lt!587418))))

(declare-fun lt!587419 () ListLongMap!21151)

(assert (=> b!1321379 (contains!8682 lt!587419 k0!1164)))

(declare-fun lt!587416 () Unit!43488)

(assert (=> b!1321379 (= lt!587416 (lemmaInListMapAfterAddingDiffThenInBefore!159 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587419))))

(declare-fun lt!587417 () ListLongMap!21151)

(assert (=> b!1321379 (contains!8682 lt!587417 k0!1164)))

(declare-fun lt!587413 () Unit!43488)

(assert (=> b!1321379 (= lt!587413 (lemmaInListMapAfterAddingDiffThenInBefore!159 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587417))))

(declare-fun +!4544 (ListLongMap!21151 tuple2!23482) ListLongMap!21151)

(assert (=> b!1321379 (= lt!587417 (+!4544 lt!587419 (tuple2!23483 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (=> b!1321379 (= lt!587419 (+!4544 lt!587418 (tuple2!23483 (select (arr!42977 _keys!1609) from!2000) lt!587415)))))

(declare-fun get!21672 (ValueCell!17133 V!53187) V!53187)

(declare-fun dynLambda!3581 (Int (_ BitVec 64)) V!53187)

(assert (=> b!1321379 (= lt!587415 (get!21672 (select (arr!42978 _values!1337) from!2000) (dynLambda!3581 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6259 (array!89015 array!89017 (_ BitVec 32) (_ BitVec 32) V!53187 V!53187 (_ BitVec 32) Int) ListLongMap!21151)

(assert (=> b!1321379 (= lt!587418 (getCurrentListMapNoExtraKeys!6259 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(assert (= (and start!111622 res!877118) b!1321378))

(assert (= (and b!1321378 res!877115) b!1321374))

(assert (= (and b!1321374 res!877120) b!1321372))

(assert (= (and b!1321372 res!877116) b!1321371))

(assert (= (and b!1321371 res!877117) b!1321369))

(assert (= (and b!1321369 res!877119) b!1321377))

(assert (= (and b!1321377 res!877114) b!1321370))

(assert (= (and b!1321370 res!877113) b!1321379))

(assert (= (and b!1321375 condMapEmpty!55742) mapIsEmpty!55742))

(assert (= (and b!1321375 (not condMapEmpty!55742)) mapNonEmpty!55742))

(get-info :version)

(assert (= (and mapNonEmpty!55742 ((_ is ValueCellFull!17133) mapValue!55742)) b!1321376))

(assert (= (and b!1321375 ((_ is ValueCellFull!17133) mapDefault!55742)) b!1321373))

(assert (= start!111622 b!1321375))

(declare-fun b_lambda!23579 () Bool)

(assert (=> (not b_lambda!23579) (not b!1321379)))

(declare-fun t!44459 () Bool)

(declare-fun tb!11603 () Bool)

(assert (=> (and start!111622 (= defaultEntry!1340 defaultEntry!1340) t!44459) tb!11603))

(declare-fun result!24253 () Bool)

(assert (=> tb!11603 (= result!24253 tp_is_empty!36063)))

(assert (=> b!1321379 t!44459))

(declare-fun b_and!48657 () Bool)

(assert (= b_and!48655 (and (=> t!44459 result!24253) b_and!48657)))

(declare-fun m!1209347 () Bool)

(assert (=> b!1321377 m!1209347))

(declare-fun m!1209349 () Bool)

(assert (=> b!1321374 m!1209349))

(declare-fun m!1209351 () Bool)

(assert (=> b!1321369 m!1209351))

(assert (=> b!1321369 m!1209351))

(declare-fun m!1209353 () Bool)

(assert (=> b!1321369 m!1209353))

(assert (=> b!1321370 m!1209347))

(assert (=> b!1321370 m!1209347))

(declare-fun m!1209355 () Bool)

(assert (=> b!1321370 m!1209355))

(declare-fun m!1209357 () Bool)

(assert (=> mapNonEmpty!55742 m!1209357))

(declare-fun m!1209359 () Bool)

(assert (=> b!1321372 m!1209359))

(declare-fun m!1209361 () Bool)

(assert (=> start!111622 m!1209361))

(declare-fun m!1209363 () Bool)

(assert (=> start!111622 m!1209363))

(declare-fun m!1209365 () Bool)

(assert (=> start!111622 m!1209365))

(declare-fun m!1209367 () Bool)

(assert (=> b!1321379 m!1209367))

(declare-fun m!1209369 () Bool)

(assert (=> b!1321379 m!1209369))

(declare-fun m!1209371 () Bool)

(assert (=> b!1321379 m!1209371))

(declare-fun m!1209373 () Bool)

(assert (=> b!1321379 m!1209373))

(assert (=> b!1321379 m!1209347))

(declare-fun m!1209375 () Bool)

(assert (=> b!1321379 m!1209375))

(assert (=> b!1321379 m!1209347))

(declare-fun m!1209377 () Bool)

(assert (=> b!1321379 m!1209377))

(declare-fun m!1209379 () Bool)

(assert (=> b!1321379 m!1209379))

(declare-fun m!1209381 () Bool)

(assert (=> b!1321379 m!1209381))

(declare-fun m!1209383 () Bool)

(assert (=> b!1321379 m!1209383))

(declare-fun m!1209385 () Bool)

(assert (=> b!1321379 m!1209385))

(declare-fun m!1209387 () Bool)

(assert (=> b!1321379 m!1209387))

(assert (=> b!1321379 m!1209379))

(assert (=> b!1321379 m!1209371))

(declare-fun m!1209389 () Bool)

(assert (=> b!1321379 m!1209389))

(check-sat (not b!1321370) (not mapNonEmpty!55742) b_and!48657 (not b!1321369) (not b!1321372) (not b_next!30243) (not b!1321374) (not b!1321379) (not start!111622) (not b_lambda!23579) tp_is_empty!36063)
(check-sat b_and!48657 (not b_next!30243))

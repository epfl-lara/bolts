; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111908 () Bool)

(assert start!111908)

(declare-fun b_free!30471 () Bool)

(declare-fun b_next!30471 () Bool)

(assert (=> start!111908 (= b_free!30471 (not b_next!30471))))

(declare-fun tp!106894 () Bool)

(declare-fun b_and!49047 () Bool)

(assert (=> start!111908 (= tp!106894 b_and!49047)))

(declare-fun b!1325422 () Bool)

(declare-fun e!755605 () Bool)

(declare-fun tp_is_empty!36291 () Bool)

(assert (=> b!1325422 (= e!755605 tp_is_empty!36291)))

(declare-fun b!1325423 () Bool)

(declare-fun res!879754 () Bool)

(declare-fun e!755604 () Bool)

(assert (=> b!1325423 (=> (not res!879754) (not e!755604))))

(declare-datatypes ((array!89451 0))(
  ( (array!89452 (arr!43194 (Array (_ BitVec 32) (_ BitVec 64))) (size!43745 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89451)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1325423 (= res!879754 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43745 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1325424 () Bool)

(declare-fun res!879751 () Bool)

(assert (=> b!1325424 (=> (not res!879751) (not e!755604))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1325424 (= res!879751 (validKeyInArray!0 (select (arr!43194 _keys!1609) from!2000)))))

(declare-fun b!1325425 () Bool)

(declare-fun res!879749 () Bool)

(assert (=> b!1325425 (=> (not res!879749) (not e!755604))))

(declare-datatypes ((V!53491 0))(
  ( (V!53492 (val!18220 Int)) )
))
(declare-datatypes ((ValueCell!17247 0))(
  ( (ValueCellFull!17247 (v!20851 V!53491)) (EmptyCell!17247) )
))
(declare-datatypes ((array!89453 0))(
  ( (array!89454 (arr!43195 (Array (_ BitVec 32) ValueCell!17247)) (size!43746 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89453)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1325425 (= res!879749 (and (= (size!43746 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43745 _keys!1609) (size!43746 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!56088 () Bool)

(declare-fun mapRes!56088 () Bool)

(declare-fun tp!106893 () Bool)

(declare-fun e!755603 () Bool)

(assert (=> mapNonEmpty!56088 (= mapRes!56088 (and tp!106893 e!755603))))

(declare-fun mapValue!56088 () ValueCell!17247)

(declare-fun mapKey!56088 () (_ BitVec 32))

(declare-fun mapRest!56088 () (Array (_ BitVec 32) ValueCell!17247))

(assert (=> mapNonEmpty!56088 (= (arr!43195 _values!1337) (store mapRest!56088 mapKey!56088 mapValue!56088))))

(declare-fun b!1325426 () Bool)

(assert (=> b!1325426 (= e!755603 tp_is_empty!36291)))

(declare-fun res!879752 () Bool)

(assert (=> start!111908 (=> (not res!879752) (not e!755604))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111908 (= res!879752 (validMask!0 mask!2019))))

(assert (=> start!111908 e!755604))

(declare-fun array_inv!32549 (array!89451) Bool)

(assert (=> start!111908 (array_inv!32549 _keys!1609)))

(assert (=> start!111908 true))

(assert (=> start!111908 tp_is_empty!36291))

(declare-fun e!755602 () Bool)

(declare-fun array_inv!32550 (array!89453) Bool)

(assert (=> start!111908 (and (array_inv!32550 _values!1337) e!755602)))

(assert (=> start!111908 tp!106894))

(declare-fun b!1325427 () Bool)

(assert (=> b!1325427 (= e!755602 (and e!755605 mapRes!56088))))

(declare-fun condMapEmpty!56088 () Bool)

(declare-fun mapDefault!56088 () ValueCell!17247)

(assert (=> b!1325427 (= condMapEmpty!56088 (= (arr!43195 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17247)) mapDefault!56088)))))

(declare-fun b!1325428 () Bool)

(declare-fun res!879756 () Bool)

(assert (=> b!1325428 (=> (not res!879756) (not e!755604))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89451 (_ BitVec 32)) Bool)

(assert (=> b!1325428 (= res!879756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1325429 () Bool)

(declare-fun res!879750 () Bool)

(assert (=> b!1325429 (=> (not res!879750) (not e!755604))))

(assert (=> b!1325429 (= res!879750 (not (= (select (arr!43194 _keys!1609) from!2000) k0!1164)))))

(declare-fun mapIsEmpty!56088 () Bool)

(assert (=> mapIsEmpty!56088 mapRes!56088))

(declare-fun b!1325430 () Bool)

(declare-fun res!879755 () Bool)

(assert (=> b!1325430 (=> (not res!879755) (not e!755604))))

(declare-fun zeroValue!1279 () V!53491)

(declare-fun minValue!1279 () V!53491)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23652 0))(
  ( (tuple2!23653 (_1!11836 (_ BitVec 64)) (_2!11836 V!53491)) )
))
(declare-datatypes ((List!30820 0))(
  ( (Nil!30817) (Cons!30816 (h!32025 tuple2!23652) (t!44769 List!30820)) )
))
(declare-datatypes ((ListLongMap!21321 0))(
  ( (ListLongMap!21322 (toList!10676 List!30820)) )
))
(declare-fun contains!8769 (ListLongMap!21321 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5610 (array!89451 array!89453 (_ BitVec 32) (_ BitVec 32) V!53491 V!53491 (_ BitVec 32) Int) ListLongMap!21321)

(assert (=> b!1325430 (= res!879755 (contains!8769 (getCurrentListMap!5610 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1325431 () Bool)

(declare-fun res!879753 () Bool)

(assert (=> b!1325431 (=> (not res!879753) (not e!755604))))

(declare-datatypes ((List!30821 0))(
  ( (Nil!30818) (Cons!30817 (h!32026 (_ BitVec 64)) (t!44770 List!30821)) )
))
(declare-fun arrayNoDuplicates!0 (array!89451 (_ BitVec 32) List!30821) Bool)

(assert (=> b!1325431 (= res!879753 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30818))))

(declare-fun b!1325432 () Bool)

(assert (=> b!1325432 (= e!755604 (not true))))

(declare-fun lt!589728 () ListLongMap!21321)

(assert (=> b!1325432 (contains!8769 lt!589728 k0!1164)))

(declare-datatypes ((Unit!43590 0))(
  ( (Unit!43591) )
))
(declare-fun lt!589729 () Unit!43590)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!202 ((_ BitVec 64) (_ BitVec 64) V!53491 ListLongMap!21321) Unit!43590)

(assert (=> b!1325432 (= lt!589729 (lemmaInListMapAfterAddingDiffThenInBefore!202 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!589728))))

(declare-fun +!4592 (ListLongMap!21321 tuple2!23652) ListLongMap!21321)

(declare-fun getCurrentListMapNoExtraKeys!6310 (array!89451 array!89453 (_ BitVec 32) (_ BitVec 32) V!53491 V!53491 (_ BitVec 32) Int) ListLongMap!21321)

(declare-fun get!21799 (ValueCell!17247 V!53491) V!53491)

(declare-fun dynLambda!3629 (Int (_ BitVec 64)) V!53491)

(assert (=> b!1325432 (= lt!589728 (+!4592 (+!4592 (getCurrentListMapNoExtraKeys!6310 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23653 (select (arr!43194 _keys!1609) from!2000) (get!21799 (select (arr!43195 _values!1337) from!2000) (dynLambda!3629 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23653 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (= (and start!111908 res!879752) b!1325425))

(assert (= (and b!1325425 res!879749) b!1325428))

(assert (= (and b!1325428 res!879756) b!1325431))

(assert (= (and b!1325431 res!879753) b!1325423))

(assert (= (and b!1325423 res!879754) b!1325430))

(assert (= (and b!1325430 res!879755) b!1325429))

(assert (= (and b!1325429 res!879750) b!1325424))

(assert (= (and b!1325424 res!879751) b!1325432))

(assert (= (and b!1325427 condMapEmpty!56088) mapIsEmpty!56088))

(assert (= (and b!1325427 (not condMapEmpty!56088)) mapNonEmpty!56088))

(get-info :version)

(assert (= (and mapNonEmpty!56088 ((_ is ValueCellFull!17247) mapValue!56088)) b!1325426))

(assert (= (and b!1325427 ((_ is ValueCellFull!17247) mapDefault!56088)) b!1325422))

(assert (= start!111908 b!1325427))

(declare-fun b_lambda!23759 () Bool)

(assert (=> (not b_lambda!23759) (not b!1325432)))

(declare-fun t!44768 () Bool)

(declare-fun tb!11753 () Bool)

(assert (=> (and start!111908 (= defaultEntry!1340 defaultEntry!1340) t!44768) tb!11753))

(declare-fun result!24555 () Bool)

(assert (=> tb!11753 (= result!24555 tp_is_empty!36291)))

(assert (=> b!1325432 t!44768))

(declare-fun b_and!49049 () Bool)

(assert (= b_and!49047 (and (=> t!44768 result!24555) b_and!49049)))

(declare-fun m!1214353 () Bool)

(assert (=> b!1325429 m!1214353))

(assert (=> b!1325424 m!1214353))

(assert (=> b!1325424 m!1214353))

(declare-fun m!1214355 () Bool)

(assert (=> b!1325424 m!1214355))

(declare-fun m!1214357 () Bool)

(assert (=> b!1325428 m!1214357))

(declare-fun m!1214359 () Bool)

(assert (=> start!111908 m!1214359))

(declare-fun m!1214361 () Bool)

(assert (=> start!111908 m!1214361))

(declare-fun m!1214363 () Bool)

(assert (=> start!111908 m!1214363))

(declare-fun m!1214365 () Bool)

(assert (=> b!1325430 m!1214365))

(assert (=> b!1325430 m!1214365))

(declare-fun m!1214367 () Bool)

(assert (=> b!1325430 m!1214367))

(declare-fun m!1214369 () Bool)

(assert (=> mapNonEmpty!56088 m!1214369))

(declare-fun m!1214371 () Bool)

(assert (=> b!1325431 m!1214371))

(declare-fun m!1214373 () Bool)

(assert (=> b!1325432 m!1214373))

(declare-fun m!1214375 () Bool)

(assert (=> b!1325432 m!1214375))

(assert (=> b!1325432 m!1214373))

(declare-fun m!1214377 () Bool)

(assert (=> b!1325432 m!1214377))

(declare-fun m!1214379 () Bool)

(assert (=> b!1325432 m!1214379))

(declare-fun m!1214381 () Bool)

(assert (=> b!1325432 m!1214381))

(assert (=> b!1325432 m!1214377))

(declare-fun m!1214383 () Bool)

(assert (=> b!1325432 m!1214383))

(assert (=> b!1325432 m!1214381))

(assert (=> b!1325432 m!1214375))

(declare-fun m!1214385 () Bool)

(assert (=> b!1325432 m!1214385))

(assert (=> b!1325432 m!1214353))

(declare-fun m!1214387 () Bool)

(assert (=> b!1325432 m!1214387))

(check-sat (not b!1325428) (not b!1325424) (not b_next!30471) tp_is_empty!36291 b_and!49049 (not b_lambda!23759) (not b!1325432) (not mapNonEmpty!56088) (not start!111908) (not b!1325431) (not b!1325430))
(check-sat b_and!49049 (not b_next!30471))

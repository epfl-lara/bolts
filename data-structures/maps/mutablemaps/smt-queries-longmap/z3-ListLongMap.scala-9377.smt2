; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111736 () Bool)

(assert start!111736)

(declare-fun b_free!30357 () Bool)

(declare-fun b_next!30357 () Bool)

(assert (=> start!111736 (= b_free!30357 (not b_next!30357))))

(declare-fun tp!106548 () Bool)

(declare-fun b_and!48883 () Bool)

(assert (=> start!111736 (= tp!106548 b_and!48883)))

(declare-fun b!1323364 () Bool)

(declare-fun res!878487 () Bool)

(declare-fun e!754489 () Bool)

(assert (=> b!1323364 (=> (not res!878487) (not e!754489))))

(declare-datatypes ((array!89229 0))(
  ( (array!89230 (arr!43084 (Array (_ BitVec 32) (_ BitVec 64))) (size!43635 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89229)

(declare-datatypes ((List!30740 0))(
  ( (Nil!30737) (Cons!30736 (h!31945 (_ BitVec 64)) (t!44653 List!30740)) )
))
(declare-fun arrayNoDuplicates!0 (array!89229 (_ BitVec 32) List!30740) Bool)

(assert (=> b!1323364 (= res!878487 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30737))))

(declare-fun b!1323365 () Bool)

(declare-fun res!878488 () Bool)

(assert (=> b!1323365 (=> (not res!878488) (not e!754489))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1323365 (= res!878488 (not (= (select (arr!43084 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1323366 () Bool)

(declare-fun e!754490 () Bool)

(declare-fun e!754488 () Bool)

(declare-fun mapRes!55913 () Bool)

(assert (=> b!1323366 (= e!754490 (and e!754488 mapRes!55913))))

(declare-fun condMapEmpty!55913 () Bool)

(declare-datatypes ((V!53339 0))(
  ( (V!53340 (val!18163 Int)) )
))
(declare-datatypes ((ValueCell!17190 0))(
  ( (ValueCellFull!17190 (v!20791 V!53339)) (EmptyCell!17190) )
))
(declare-datatypes ((array!89231 0))(
  ( (array!89232 (arr!43085 (Array (_ BitVec 32) ValueCell!17190)) (size!43636 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89231)

(declare-fun mapDefault!55913 () ValueCell!17190)

(assert (=> b!1323366 (= condMapEmpty!55913 (= (arr!43085 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17190)) mapDefault!55913)))))

(declare-fun b!1323367 () Bool)

(declare-fun res!878484 () Bool)

(assert (=> b!1323367 (=> (not res!878484) (not e!754489))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1323367 (= res!878484 (and (= (size!43636 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43635 _keys!1609) (size!43636 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1323369 () Bool)

(declare-fun res!878483 () Bool)

(assert (=> b!1323369 (=> (not res!878483) (not e!754489))))

(assert (=> b!1323369 (= res!878483 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43635 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1323370 () Bool)

(declare-fun e!754492 () Bool)

(declare-fun tp_is_empty!36177 () Bool)

(assert (=> b!1323370 (= e!754492 tp_is_empty!36177)))

(declare-fun mapNonEmpty!55913 () Bool)

(declare-fun tp!106547 () Bool)

(assert (=> mapNonEmpty!55913 (= mapRes!55913 (and tp!106547 e!754492))))

(declare-fun mapRest!55913 () (Array (_ BitVec 32) ValueCell!17190))

(declare-fun mapValue!55913 () ValueCell!17190)

(declare-fun mapKey!55913 () (_ BitVec 32))

(assert (=> mapNonEmpty!55913 (= (arr!43085 _values!1337) (store mapRest!55913 mapKey!55913 mapValue!55913))))

(declare-fun mapIsEmpty!55913 () Bool)

(assert (=> mapIsEmpty!55913 mapRes!55913))

(declare-fun b!1323371 () Bool)

(declare-fun res!878486 () Bool)

(assert (=> b!1323371 (=> (not res!878486) (not e!754489))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1323371 (= res!878486 (validKeyInArray!0 (select (arr!43084 _keys!1609) from!2000)))))

(declare-fun b!1323372 () Bool)

(assert (=> b!1323372 (= e!754489 (not true))))

(declare-datatypes ((tuple2!23566 0))(
  ( (tuple2!23567 (_1!11793 (_ BitVec 64)) (_2!11793 V!53339)) )
))
(declare-datatypes ((List!30741 0))(
  ( (Nil!30738) (Cons!30737 (h!31946 tuple2!23566) (t!44654 List!30741)) )
))
(declare-datatypes ((ListLongMap!21235 0))(
  ( (ListLongMap!21236 (toList!10633 List!30741)) )
))
(declare-fun lt!588993 () ListLongMap!21235)

(declare-fun minValue!1279 () V!53339)

(declare-fun contains!8724 (ListLongMap!21235 (_ BitVec 64)) Bool)

(declare-fun +!4580 (ListLongMap!21235 tuple2!23566) ListLongMap!21235)

(assert (=> b!1323372 (contains!8724 (+!4580 lt!588993 (tuple2!23567 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k0!1164)))

(declare-datatypes ((Unit!43560 0))(
  ( (Unit!43561) )
))
(declare-fun lt!588994 () Unit!43560)

(declare-fun addStillContains!1161 (ListLongMap!21235 (_ BitVec 64) V!53339 (_ BitVec 64)) Unit!43560)

(assert (=> b!1323372 (= lt!588994 (addStillContains!1161 lt!588993 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 k0!1164))))

(assert (=> b!1323372 (contains!8724 lt!588993 k0!1164)))

(declare-fun lt!588992 () ListLongMap!21235)

(declare-fun lt!588998 () tuple2!23566)

(assert (=> b!1323372 (= lt!588993 (+!4580 lt!588992 lt!588998))))

(declare-fun zeroValue!1279 () V!53339)

(declare-fun lt!588999 () Unit!43560)

(assert (=> b!1323372 (= lt!588999 (addStillContains!1161 lt!588992 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k0!1164))))

(assert (=> b!1323372 (contains!8724 lt!588992 k0!1164)))

(declare-fun lt!588990 () V!53339)

(declare-fun lt!589000 () Unit!43560)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!195 ((_ BitVec 64) (_ BitVec 64) V!53339 ListLongMap!21235) Unit!43560)

(assert (=> b!1323372 (= lt!589000 (lemmaInListMapAfterAddingDiffThenInBefore!195 k0!1164 (select (arr!43084 _keys!1609) from!2000) lt!588990 lt!588992))))

(declare-fun lt!588991 () ListLongMap!21235)

(assert (=> b!1323372 (contains!8724 lt!588991 k0!1164)))

(declare-fun lt!588995 () Unit!43560)

(assert (=> b!1323372 (= lt!588995 (lemmaInListMapAfterAddingDiffThenInBefore!195 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!588991))))

(declare-fun lt!588997 () ListLongMap!21235)

(assert (=> b!1323372 (contains!8724 lt!588997 k0!1164)))

(declare-fun lt!588996 () Unit!43560)

(assert (=> b!1323372 (= lt!588996 (lemmaInListMapAfterAddingDiffThenInBefore!195 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!588997))))

(assert (=> b!1323372 (= lt!588997 (+!4580 lt!588991 lt!588998))))

(assert (=> b!1323372 (= lt!588998 (tuple2!23567 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1323372 (= lt!588991 (+!4580 lt!588992 (tuple2!23567 (select (arr!43084 _keys!1609) from!2000) lt!588990)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21746 (ValueCell!17190 V!53339) V!53339)

(declare-fun dynLambda!3617 (Int (_ BitVec 64)) V!53339)

(assert (=> b!1323372 (= lt!588990 (get!21746 (select (arr!43085 _values!1337) from!2000) (dynLambda!3617 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6295 (array!89229 array!89231 (_ BitVec 32) (_ BitVec 32) V!53339 V!53339 (_ BitVec 32) Int) ListLongMap!21235)

(assert (=> b!1323372 (= lt!588992 (getCurrentListMapNoExtraKeys!6295 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1323368 () Bool)

(assert (=> b!1323368 (= e!754488 tp_is_empty!36177)))

(declare-fun res!878485 () Bool)

(assert (=> start!111736 (=> (not res!878485) (not e!754489))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111736 (= res!878485 (validMask!0 mask!2019))))

(assert (=> start!111736 e!754489))

(declare-fun array_inv!32483 (array!89229) Bool)

(assert (=> start!111736 (array_inv!32483 _keys!1609)))

(assert (=> start!111736 true))

(assert (=> start!111736 tp_is_empty!36177))

(declare-fun array_inv!32484 (array!89231) Bool)

(assert (=> start!111736 (and (array_inv!32484 _values!1337) e!754490)))

(assert (=> start!111736 tp!106548))

(declare-fun b!1323373 () Bool)

(declare-fun res!878481 () Bool)

(assert (=> b!1323373 (=> (not res!878481) (not e!754489))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89229 (_ BitVec 32)) Bool)

(assert (=> b!1323373 (= res!878481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1323374 () Bool)

(declare-fun res!878482 () Bool)

(assert (=> b!1323374 (=> (not res!878482) (not e!754489))))

(declare-fun getCurrentListMap!5572 (array!89229 array!89231 (_ BitVec 32) (_ BitVec 32) V!53339 V!53339 (_ BitVec 32) Int) ListLongMap!21235)

(assert (=> b!1323374 (= res!878482 (contains!8724 (getCurrentListMap!5572 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(assert (= (and start!111736 res!878485) b!1323367))

(assert (= (and b!1323367 res!878484) b!1323373))

(assert (= (and b!1323373 res!878481) b!1323364))

(assert (= (and b!1323364 res!878487) b!1323369))

(assert (= (and b!1323369 res!878483) b!1323374))

(assert (= (and b!1323374 res!878482) b!1323365))

(assert (= (and b!1323365 res!878488) b!1323371))

(assert (= (and b!1323371 res!878486) b!1323372))

(assert (= (and b!1323366 condMapEmpty!55913) mapIsEmpty!55913))

(assert (= (and b!1323366 (not condMapEmpty!55913)) mapNonEmpty!55913))

(get-info :version)

(assert (= (and mapNonEmpty!55913 ((_ is ValueCellFull!17190) mapValue!55913)) b!1323370))

(assert (= (and b!1323366 ((_ is ValueCellFull!17190) mapDefault!55913)) b!1323368))

(assert (= start!111736 b!1323366))

(declare-fun b_lambda!23693 () Bool)

(assert (=> (not b_lambda!23693) (not b!1323372)))

(declare-fun t!44652 () Bool)

(declare-fun tb!11717 () Bool)

(assert (=> (and start!111736 (= defaultEntry!1340 defaultEntry!1340) t!44652) tb!11717))

(declare-fun result!24481 () Bool)

(assert (=> tb!11717 (= result!24481 tp_is_empty!36177)))

(assert (=> b!1323372 t!44652))

(declare-fun b_and!48885 () Bool)

(assert (= b_and!48883 (and (=> t!44652 result!24481) b_and!48885)))

(declare-fun m!1212227 () Bool)

(assert (=> b!1323374 m!1212227))

(assert (=> b!1323374 m!1212227))

(declare-fun m!1212229 () Bool)

(assert (=> b!1323374 m!1212229))

(declare-fun m!1212231 () Bool)

(assert (=> b!1323372 m!1212231))

(declare-fun m!1212233 () Bool)

(assert (=> b!1323372 m!1212233))

(declare-fun m!1212235 () Bool)

(assert (=> b!1323372 m!1212235))

(declare-fun m!1212237 () Bool)

(assert (=> b!1323372 m!1212237))

(declare-fun m!1212239 () Bool)

(assert (=> b!1323372 m!1212239))

(declare-fun m!1212241 () Bool)

(assert (=> b!1323372 m!1212241))

(declare-fun m!1212243 () Bool)

(assert (=> b!1323372 m!1212243))

(assert (=> b!1323372 m!1212241))

(declare-fun m!1212245 () Bool)

(assert (=> b!1323372 m!1212245))

(declare-fun m!1212247 () Bool)

(assert (=> b!1323372 m!1212247))

(assert (=> b!1323372 m!1212235))

(declare-fun m!1212249 () Bool)

(assert (=> b!1323372 m!1212249))

(declare-fun m!1212251 () Bool)

(assert (=> b!1323372 m!1212251))

(declare-fun m!1212253 () Bool)

(assert (=> b!1323372 m!1212253))

(assert (=> b!1323372 m!1212245))

(declare-fun m!1212255 () Bool)

(assert (=> b!1323372 m!1212255))

(declare-fun m!1212257 () Bool)

(assert (=> b!1323372 m!1212257))

(declare-fun m!1212259 () Bool)

(assert (=> b!1323372 m!1212259))

(declare-fun m!1212261 () Bool)

(assert (=> b!1323372 m!1212261))

(declare-fun m!1212263 () Bool)

(assert (=> b!1323372 m!1212263))

(assert (=> b!1323372 m!1212239))

(declare-fun m!1212265 () Bool)

(assert (=> b!1323372 m!1212265))

(declare-fun m!1212267 () Bool)

(assert (=> b!1323372 m!1212267))

(assert (=> b!1323365 m!1212235))

(assert (=> b!1323371 m!1212235))

(assert (=> b!1323371 m!1212235))

(declare-fun m!1212269 () Bool)

(assert (=> b!1323371 m!1212269))

(declare-fun m!1212271 () Bool)

(assert (=> mapNonEmpty!55913 m!1212271))

(declare-fun m!1212273 () Bool)

(assert (=> b!1323364 m!1212273))

(declare-fun m!1212275 () Bool)

(assert (=> start!111736 m!1212275))

(declare-fun m!1212277 () Bool)

(assert (=> start!111736 m!1212277))

(declare-fun m!1212279 () Bool)

(assert (=> start!111736 m!1212279))

(declare-fun m!1212281 () Bool)

(assert (=> b!1323373 m!1212281))

(check-sat (not b_lambda!23693) (not b!1323373) (not b!1323374) (not b!1323371) (not mapNonEmpty!55913) (not b!1323372) (not start!111736) b_and!48885 (not b_next!30357) (not b!1323364) tp_is_empty!36177)
(check-sat b_and!48885 (not b_next!30357))

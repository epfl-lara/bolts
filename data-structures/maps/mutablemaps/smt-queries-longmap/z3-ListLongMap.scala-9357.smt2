; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111616 () Bool)

(assert start!111616)

(declare-fun b_free!30237 () Bool)

(declare-fun b_next!30237 () Bool)

(assert (=> start!111616 (= b_free!30237 (not b_next!30237))))

(declare-fun tp!106188 () Bool)

(declare-fun b_and!48643 () Bool)

(assert (=> start!111616 (= tp!106188 b_and!48643)))

(declare-fun b!1321264 () Bool)

(declare-fun e!753589 () Bool)

(assert (=> b!1321264 (= e!753589 (not true))))

(declare-datatypes ((V!53179 0))(
  ( (V!53180 (val!18103 Int)) )
))
(declare-datatypes ((tuple2!23478 0))(
  ( (tuple2!23479 (_1!11749 (_ BitVec 64)) (_2!11749 V!53179)) )
))
(declare-datatypes ((List!30658 0))(
  ( (Nil!30655) (Cons!30654 (h!31863 tuple2!23478) (t!44451 List!30658)) )
))
(declare-datatypes ((ListLongMap!21147 0))(
  ( (ListLongMap!21148 (toList!10589 List!30658)) )
))
(declare-fun lt!587354 () ListLongMap!21147)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun contains!8680 (ListLongMap!21147 (_ BitVec 64)) Bool)

(assert (=> b!1321264 (contains!8680 lt!587354 k0!1164)))

(declare-datatypes ((array!89003 0))(
  ( (array!89004 (arr!42971 (Array (_ BitVec 32) (_ BitVec 64))) (size!43522 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89003)

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((Unit!43484 0))(
  ( (Unit!43485) )
))
(declare-fun lt!587355 () Unit!43484)

(declare-fun lt!587351 () V!53179)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!157 ((_ BitVec 64) (_ BitVec 64) V!53179 ListLongMap!21147) Unit!43484)

(assert (=> b!1321264 (= lt!587355 (lemmaInListMapAfterAddingDiffThenInBefore!157 k0!1164 (select (arr!42971 _keys!1609) from!2000) lt!587351 lt!587354))))

(declare-fun lt!587356 () ListLongMap!21147)

(assert (=> b!1321264 (contains!8680 lt!587356 k0!1164)))

(declare-fun lt!587350 () Unit!43484)

(declare-fun zeroValue!1279 () V!53179)

(assert (=> b!1321264 (= lt!587350 (lemmaInListMapAfterAddingDiffThenInBefore!157 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587356))))

(declare-fun lt!587353 () ListLongMap!21147)

(assert (=> b!1321264 (contains!8680 lt!587353 k0!1164)))

(declare-fun minValue!1279 () V!53179)

(declare-fun lt!587352 () Unit!43484)

(assert (=> b!1321264 (= lt!587352 (lemmaInListMapAfterAddingDiffThenInBefore!157 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587353))))

(declare-fun +!4542 (ListLongMap!21147 tuple2!23478) ListLongMap!21147)

(assert (=> b!1321264 (= lt!587353 (+!4542 lt!587356 (tuple2!23479 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (=> b!1321264 (= lt!587356 (+!4542 lt!587354 (tuple2!23479 (select (arr!42971 _keys!1609) from!2000) lt!587351)))))

(declare-datatypes ((ValueCell!17130 0))(
  ( (ValueCellFull!17130 (v!20731 V!53179)) (EmptyCell!17130) )
))
(declare-datatypes ((array!89005 0))(
  ( (array!89006 (arr!42972 (Array (_ BitVec 32) ValueCell!17130)) (size!43523 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89005)

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21668 (ValueCell!17130 V!53179) V!53179)

(declare-fun dynLambda!3579 (Int (_ BitVec 64)) V!53179)

(assert (=> b!1321264 (= lt!587351 (get!21668 (select (arr!42972 _values!1337) from!2000) (dynLambda!3579 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6257 (array!89003 array!89005 (_ BitVec 32) (_ BitVec 32) V!53179 V!53179 (_ BitVec 32) Int) ListLongMap!21147)

(assert (=> b!1321264 (= lt!587354 (getCurrentListMapNoExtraKeys!6257 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun mapNonEmpty!55733 () Bool)

(declare-fun mapRes!55733 () Bool)

(declare-fun tp!106187 () Bool)

(declare-fun e!753590 () Bool)

(assert (=> mapNonEmpty!55733 (= mapRes!55733 (and tp!106187 e!753590))))

(declare-fun mapKey!55733 () (_ BitVec 32))

(declare-fun mapValue!55733 () ValueCell!17130)

(declare-fun mapRest!55733 () (Array (_ BitVec 32) ValueCell!17130))

(assert (=> mapNonEmpty!55733 (= (arr!42972 _values!1337) (store mapRest!55733 mapKey!55733 mapValue!55733))))

(declare-fun b!1321265 () Bool)

(declare-fun e!753592 () Bool)

(declare-fun e!753591 () Bool)

(assert (=> b!1321265 (= e!753592 (and e!753591 mapRes!55733))))

(declare-fun condMapEmpty!55733 () Bool)

(declare-fun mapDefault!55733 () ValueCell!17130)

(assert (=> b!1321265 (= condMapEmpty!55733 (= (arr!42972 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17130)) mapDefault!55733)))))

(declare-fun b!1321266 () Bool)

(declare-fun res!877047 () Bool)

(assert (=> b!1321266 (=> (not res!877047) (not e!753589))))

(assert (=> b!1321266 (= res!877047 (and (= (size!43523 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43522 _keys!1609) (size!43523 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1321267 () Bool)

(declare-fun res!877041 () Bool)

(assert (=> b!1321267 (=> (not res!877041) (not e!753589))))

(assert (=> b!1321267 (= res!877041 (not (= (select (arr!42971 _keys!1609) from!2000) k0!1164)))))

(declare-fun mapIsEmpty!55733 () Bool)

(assert (=> mapIsEmpty!55733 mapRes!55733))

(declare-fun b!1321268 () Bool)

(declare-fun res!877043 () Bool)

(assert (=> b!1321268 (=> (not res!877043) (not e!753589))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89003 (_ BitVec 32)) Bool)

(assert (=> b!1321268 (= res!877043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1321269 () Bool)

(declare-fun tp_is_empty!36057 () Bool)

(assert (=> b!1321269 (= e!753591 tp_is_empty!36057)))

(declare-fun b!1321270 () Bool)

(assert (=> b!1321270 (= e!753590 tp_is_empty!36057)))

(declare-fun res!877046 () Bool)

(assert (=> start!111616 (=> (not res!877046) (not e!753589))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111616 (= res!877046 (validMask!0 mask!2019))))

(assert (=> start!111616 e!753589))

(declare-fun array_inv!32399 (array!89003) Bool)

(assert (=> start!111616 (array_inv!32399 _keys!1609)))

(assert (=> start!111616 true))

(assert (=> start!111616 tp_is_empty!36057))

(declare-fun array_inv!32400 (array!89005) Bool)

(assert (=> start!111616 (and (array_inv!32400 _values!1337) e!753592)))

(assert (=> start!111616 tp!106188))

(declare-fun b!1321271 () Bool)

(declare-fun res!877044 () Bool)

(assert (=> b!1321271 (=> (not res!877044) (not e!753589))))

(assert (=> b!1321271 (= res!877044 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43522 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1321272 () Bool)

(declare-fun res!877042 () Bool)

(assert (=> b!1321272 (=> (not res!877042) (not e!753589))))

(declare-datatypes ((List!30659 0))(
  ( (Nil!30656) (Cons!30655 (h!31864 (_ BitVec 64)) (t!44452 List!30659)) )
))
(declare-fun arrayNoDuplicates!0 (array!89003 (_ BitVec 32) List!30659) Bool)

(assert (=> b!1321272 (= res!877042 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30656))))

(declare-fun b!1321273 () Bool)

(declare-fun res!877045 () Bool)

(assert (=> b!1321273 (=> (not res!877045) (not e!753589))))

(declare-fun getCurrentListMap!5530 (array!89003 array!89005 (_ BitVec 32) (_ BitVec 32) V!53179 V!53179 (_ BitVec 32) Int) ListLongMap!21147)

(assert (=> b!1321273 (= res!877045 (contains!8680 (getCurrentListMap!5530 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1321274 () Bool)

(declare-fun res!877048 () Bool)

(assert (=> b!1321274 (=> (not res!877048) (not e!753589))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1321274 (= res!877048 (validKeyInArray!0 (select (arr!42971 _keys!1609) from!2000)))))

(assert (= (and start!111616 res!877046) b!1321266))

(assert (= (and b!1321266 res!877047) b!1321268))

(assert (= (and b!1321268 res!877043) b!1321272))

(assert (= (and b!1321272 res!877042) b!1321271))

(assert (= (and b!1321271 res!877044) b!1321273))

(assert (= (and b!1321273 res!877045) b!1321267))

(assert (= (and b!1321267 res!877041) b!1321274))

(assert (= (and b!1321274 res!877048) b!1321264))

(assert (= (and b!1321265 condMapEmpty!55733) mapIsEmpty!55733))

(assert (= (and b!1321265 (not condMapEmpty!55733)) mapNonEmpty!55733))

(get-info :version)

(assert (= (and mapNonEmpty!55733 ((_ is ValueCellFull!17130) mapValue!55733)) b!1321270))

(assert (= (and b!1321265 ((_ is ValueCellFull!17130) mapDefault!55733)) b!1321269))

(assert (= start!111616 b!1321265))

(declare-fun b_lambda!23573 () Bool)

(assert (=> (not b_lambda!23573) (not b!1321264)))

(declare-fun t!44450 () Bool)

(declare-fun tb!11597 () Bool)

(assert (=> (and start!111616 (= defaultEntry!1340 defaultEntry!1340) t!44450) tb!11597))

(declare-fun result!24241 () Bool)

(assert (=> tb!11597 (= result!24241 tp_is_empty!36057)))

(assert (=> b!1321264 t!44450))

(declare-fun b_and!48645 () Bool)

(assert (= b_and!48643 (and (=> t!44450 result!24241) b_and!48645)))

(declare-fun m!1209215 () Bool)

(assert (=> b!1321272 m!1209215))

(declare-fun m!1209217 () Bool)

(assert (=> mapNonEmpty!55733 m!1209217))

(declare-fun m!1209219 () Bool)

(assert (=> b!1321264 m!1209219))

(declare-fun m!1209221 () Bool)

(assert (=> b!1321264 m!1209221))

(declare-fun m!1209223 () Bool)

(assert (=> b!1321264 m!1209223))

(declare-fun m!1209225 () Bool)

(assert (=> b!1321264 m!1209225))

(declare-fun m!1209227 () Bool)

(assert (=> b!1321264 m!1209227))

(declare-fun m!1209229 () Bool)

(assert (=> b!1321264 m!1209229))

(declare-fun m!1209231 () Bool)

(assert (=> b!1321264 m!1209231))

(declare-fun m!1209233 () Bool)

(assert (=> b!1321264 m!1209233))

(declare-fun m!1209235 () Bool)

(assert (=> b!1321264 m!1209235))

(declare-fun m!1209237 () Bool)

(assert (=> b!1321264 m!1209237))

(assert (=> b!1321264 m!1209229))

(assert (=> b!1321264 m!1209223))

(declare-fun m!1209239 () Bool)

(assert (=> b!1321264 m!1209239))

(declare-fun m!1209241 () Bool)

(assert (=> b!1321264 m!1209241))

(declare-fun m!1209243 () Bool)

(assert (=> b!1321264 m!1209243))

(assert (=> b!1321264 m!1209235))

(declare-fun m!1209245 () Bool)

(assert (=> b!1321273 m!1209245))

(assert (=> b!1321273 m!1209245))

(declare-fun m!1209247 () Bool)

(assert (=> b!1321273 m!1209247))

(declare-fun m!1209249 () Bool)

(assert (=> b!1321268 m!1209249))

(assert (=> b!1321267 m!1209235))

(assert (=> b!1321274 m!1209235))

(assert (=> b!1321274 m!1209235))

(declare-fun m!1209251 () Bool)

(assert (=> b!1321274 m!1209251))

(declare-fun m!1209253 () Bool)

(assert (=> start!111616 m!1209253))

(declare-fun m!1209255 () Bool)

(assert (=> start!111616 m!1209255))

(declare-fun m!1209257 () Bool)

(assert (=> start!111616 m!1209257))

(check-sat tp_is_empty!36057 (not b!1321273) (not b!1321272) (not b!1321264) b_and!48645 (not start!111616) (not mapNonEmpty!55733) (not b_next!30237) (not b!1321274) (not b!1321268) (not b_lambda!23573))
(check-sat b_and!48645 (not b_next!30237))
